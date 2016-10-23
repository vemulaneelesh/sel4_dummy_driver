/****

2016 Created by Neelesh Vemula



*************/

#include <autoconf.h>
#include <stdio.h>
#include <assert.h>

#include <sel4/sel4.h>

#include <simple/simple.h>
#include <simple-default/simple-default.h>

#include <vka/object.h>

#include <allocman/allocman.h>
#include <allocman/bootstrap.h>
#include <allocman/vka.h>

#include <vspace/vspace.h>

#include <sel4utils/vspace.h>
#include <sel4utils/mapping.h>
#include <sel4utils/process.h>

#define USER_PRIORITY seL4_MaxPrio
#define USER_IMAGE_NAME "zynq-comm-user"
#define DRIVER_PRIORITY seL4_MaxPrio
#define DRIVER_IMAGE_NAME "zynq-comm-driver"

/* global environment variables */
seL4_BootInfo *info;
simple_t simple;
vka_t vka;
allocman_t *allocman;
vspace_t vspace;

/* static memory for the allocator to bootstrap with */
#define ALLOCATOR_STATIC_POOL_SIZE ((1 << seL4_PageBits) * 10)
UNUSED static char allocator_mem_pool[ALLOCATOR_STATIC_POOL_SIZE];

/* dimensions of virtual memory for the allocator to use */
#define ALLOCATOR_VIRTUAL_POOL_SIZE ((1 << seL4_PageBits) * 100)

/* static memory for virtual memory bootstrapping */
UNUSED static sel4utils_alloc_data_t data;

/* stack for the new thread */
#define THREAD_2_STACK_SIZE 4096
UNUSED static int thread_2_stack[THREAD_2_STACK_SIZE];

extern void name_thread(seL4_CPtr tcb, char *name);

int main(void)
{
    UNUSED int error;

    name_thread(seL4_CapInitThreadTCB, "hello-timer");

    info = seL4_GetBootInfo();

    simple_default_init_bootinfo(&simple, info);

    simple_print(&simple);

    /* create an allocator */
    allocman = bootstrap_use_current_simple(&simple, ALLOCATOR_STATIC_POOL_SIZE,
        allocator_mem_pool);
    assert(allocman);

    /* create a vka (interface for interacting with the underlying allocator) */
    allocman_make_vka(&vka, allocman);

   /* create a vspace object to manage our vspace */
    error = sel4utils_bootstrap_vspace_with_bootinfo_leaky(&vspace,
        &data, simple_get_pd(&simple), &vka, info);


    /* fill the allocator with virtual memory */
    void *vaddr;
    UNUSED reservation_t virtual_reservation;
    virtual_reservation = vspace_reserve_range(&vspace,
        ALLOCATOR_VIRTUAL_POOL_SIZE, seL4_AllRights, 1, &vaddr);
    assert(virtual_reservation.res);
    bootstrap_configure_virtual_pool(allocman, vaddr,
        ALLOCATOR_VIRTUAL_POOL_SIZE, simple_get_pd(&simple));


    //User Process
    sel4utils_process_t user_process;
    error = sel4utils_configure_process(&user_process, &vka, &vspace, USER_PRIORITY, USER_IMAGE_NAME);
    assert(error == 0);
    name_thread(user_process.thread.tcb.cptr, "user-app: Production Controller");
    error = sel4utils_spawn_process_v(&user_process, &vka, &vspace, 0, NULL, 1);
    assert(error == 0);
    //Driver Process
    
    sel4utils_process_t driver_process;
    error = sel4utils_configure_process(&driver_process, &vka , &vspace, DRIVER_PRIORITY , DRIVER_IMAGE_NAME);
    name_thread(driver_process.thread.tcb.cptr, "driver: Device Driver");
    assert(error == 0);
    error = sel4utils_spawn_process_v(&driver_process, &vka, &vspace, 0, NULL, 1);
    assert(error == 0);
    
    printf ("Root Task : Terminating Now \n");

    return 0;
}
