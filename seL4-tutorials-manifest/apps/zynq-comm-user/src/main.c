/*******

Created by Neelesh Vemula
User application that works as a prodcution controller"

******/

#include <stdio.h>
#include <assert.h>

#include <simple/simple.h>
#include <simple-default/simple-default.h>
#include <vka/object.h>

#include <allocman/allocman.h>
#include <allocman/bootstrap.h>
#include <allocman/vka.h>

#include <vspace/vspace.h>
#include <sel4/sel4.h>
#include <sel4utils/process.h>

#include <sel4platsupport/timer.h>
#include <platsupport/plat/timer.h>



/* static memory for the allocator to bootstrap with */
#define ALLOCATOR_STATIC_POOL_SIZE ((1 << seL4_PageBits) * 10)
UNUSED static char allocator_mem_pool[ALLOCATOR_STATIC_POOL_SIZE];

/* dimensions of virtual memory for the allocator to use */
#define ALLOCATOR_VIRTUAL_POOL_SIZE ((1 << seL4_PageBits) * 100)

#define READ_COMMAND 0
#define WRITE_COMMAND 1

#define EP_CPTR SELUTIL_FIRST_FREE // The endpoint capability placed by driver process

seL4_BootInfo *info;
vka_t vka;
simple_t simple;
allocman_t *allocman;
vspace_t vspace;
seL4_timer_t *timer;

int main(int argc, char **argv)
{
    int error;
    seL4_Word sender;
    seL4_Word msg;
    
    printf("Starting of the production controller\n");
 

    info = seL4_GetBootInfo();
    simple_default_init_bootinfo(&simple, info);

    /* initialise allocator */
    allocman_t *allocator = bootstrap_use_current_1level(SEL4UTILS_CNODE_SLOT,
                                                         CONFIG_SEL4UTILS_CSPACE_SIZE_BITS, FREE_SLOT,
                                                         (1u << CONFIG_SEL4UTILS_CSPACE_SIZE_BITS), 
                                                         ALLOCATOR_STATIC_POOL_SIZE,
                                                         allocator_mem_pool);

    assert(allocator);

    allocman_make_vka(&vka,allocator);

    vka_object_t aep_object = {0};
    error = vka_alloc_notification(&vka, &aep_object);
    assert(error == 0);

    // Initialize the timer with the existing zynq timer driver
    timer = sel4platsupport_get_default_timer(&vka, &vspace, &simple, aep_object.cptr);
    assert(timer != NULL);

    while(1)
    {
	
    	int count = 0;
	//Infinte Loop for the controller
        tag = seL4_MessageInfo_new(0, 0, 0, 1);
	seL4_SetMR(0, READ_COMMAND);
	
	/* send and wait for a reply */
        tag = seL4_Call(EP_CPTR, tag);

	assert(seL4_MessageInfo_get_length(tag) == 1);
	msg = seL4_GetMR(1);

	
	//Do the needed calculation on the read values, mock just increment by 10

	tag = seL4_MessageInfo_new(0,0,0,1);
        seL4_SetMR(0,WRITE_COMMAND);
	seL4_SetMR(1,msg);
	
	/* send and wait for a reply */
        tag = seL4_Call(EP_CPTR, tag);


	assert(seL4_MessageInfo_get_length(tag) == 1);  //Assume Read Succesfully
	msg = seL4_GetMR(1);
	
	while(1) //Loop for delay of 1 sec
	{
	
        	timer_oneshot_relative(timer->timer, 1000 * 1000);
	        seL4_Wait(aep_object.cptr, &sender);
        	sel4_timer_handle_single_irq(timer);
	        count++;
        	if (count == 1000 ) break;
	}

    /* get the current time to see the performance of time it takes to complete one loop*/
    msg = timer_get_time(timer->timer);
    printf("%p",msg);

    }

    return 0;
}
