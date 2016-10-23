/**************

Created by Neelesh Vemula

The Driver Process that communicates with the axi mapped space.


*************/


#include <stdio.h>
#include <assert.h>

#include <sel4/sel4.h>


#include <vka/object.h>

#include <allocman/allocman.h>
#include <allocman/bootstrap.h>
#include <allocman/vka.h>

#include <vspace/vspace.h>

#include <sel4utils/vspace.h>
#include <sel4utils/mapping.h>
#include <sel4utils/process.h>





// My variables
#define AXI_PADDR 0x43C00000
#define LED 0x03
#define LED_DELAY 100000000
#define WORD_SIZE       4
#define READ_COMAND 0x0
#define WRITE_COMMAND 0x1
#define ACKNOWLEDGE 0x2


/* Register offset definitions. Unless otherwise noted, register access is
 * 32 bit.
 */

/** @name Registers
 *  @{
 */
#define XLLF_ISR_OFFSET  0x00000000  /**< Interrupt Status */
#define XLLF_IER_OFFSET  0x00000004  /**< Interrupt Enable */

#define XLLF_TDFR_OFFSET 0x00000008  /**< Transmit Reset */
#define XLLF_TDFV_OFFSET 0x0000000c  /**< Transmit Vacancy */
#define XLLF_TDFD_OFFSET 0x00000010  /**< Transmit Data */
#define XLLF_TLF_OFFSET  0x00000014  /**< Transmit Length */

#define XLLF_RDFR_OFFSET 0x00000018  /**< Receive Reset */
#define XLLF_RDFO_OFFSET 0x0000001c  /**< Receive Occupancy */
#define XLLF_RDFD_OFFSET 0x00000020  /**< Receive Data */
#define XLLF_RLF_OFFSET  0x00000024  /**< Receive Length */
#define XLLF_LLR_OFFSET  0x00000028  /**< Local Link Reset */
#define XLLF_TDR_OFFSET  0x0000002C  /**< Transmit Destination  */
#define XLLF_RDR_OFFSET  0x00000030  /**< Receive Destination  */




/* Register masks. The following constants define bit locations of various
 * control bits in the registers. Constants are not defined for those registers
 * that have a single bit field representing all 32 bits. For further
 * information on the meaning of the various bit masks, refer to the HW spec.
 */

/** @name Interrupt bits
 *  These bits are associated with the XLLF_IER_OFFSET and XLLF_ISR_OFFSET
 *  registers.
 * @{
 */
#define XLLF_INT_RPURE_MASK       0x80000000 /**< Receive under-read */
#define XLLF_INT_RPORE_MASK       0x40000000 /**< Receive over-read */
#define XLLF_INT_RPUE_MASK        0x20000000 /**< Receive underrun (empty) */
#define XLLF_INT_TPOE_MASK        0x10000000 /**< Transmit overrun */
#define XLLF_INT_TC_MASK          0x08000000 /**< Transmit complete */
#define XLLF_INT_RC_MASK          0x04000000 /**< Receive complete */
#define XLLF_INT_TSE_MASK         0x02000000 /**< Transmit length mismatch */
#define XLLF_INT_TRC_MASK         0x01000000 /**< Transmit reset complete */
#define XLLF_INT_RRC_MASK         0x00800000 /**< Receive reset complete */
#define XLLF_INT_TFPF_MASK        0x00400000 /**< Tx FIFO Programmable Full,
                        * AXI FIFO MM2S Only */
#define XLLF_INT_TFPE_MASK        0x00200000 /**< Tx FIFO Programmable Empty
                        * AXI FIFO MM2S Only */
#define XLLF_INT_RFPF_MASK        0x00100000 /**< Rx FIFO Programmable Full
                        * AXI FIFO MM2S Only */
#define XLLF_INT_RFPE_MASK        0x00080000 /**< Rx FIFO Programmable Empty
                        * AXI FIFO MM2S Only */
#define XLLF_INT_ALL_MASK         0xfff80000 /**< All the ints */
#define XLLF_INT_ERROR_MASK       0xf2000000 /**< Error status ints */
#define XLLF_INT_RXERROR_MASK     0xe0000000 /**< Receive Error status ints */
#define XLLF_INT_TXERROR_MASK     0x12000000 /**< Transmit Error status ints */
/*@}*/

/** @name Reset register values
 *  These bits are associated with the XLLF_TDFR_OFFSET and XLLF_RDFR_OFFSET
 *  reset registers.
 * @{
 */
#define XLLF_RDFR_RESET_MASK        0x000000a5 /**< receive reset value */
#define XLLF_TDFR_RESET_MASK        0x000000a5 /**< Transmit reset value */
#define XLLF_LLR_RESET_MASK         0x000000a5 /**< Local Link reset value */
/*@}*/


// function definitions
extern void name_thread(seL4_CPtr tcb, char *name);
void Initalize_Fifo();
void TxReset();
void RxReset();
void Reset();
int CheckStatus();
void InteruptClear(unsigned int Mask);
unsigned int CheckVacancy();
void PutWord(unsigned int data);
void SetLength(unsigned int len);
int CheckTransmissionComplete();



/* static memory for the allocator to bootstrap with */
#define ALLOCATOR_STATIC_POOL_SIZE ((1 << seL4_PageBits) * 10)
UNUSED static char allocator_mem_pool[ALLOCATOR_STATIC_POOL_SIZE];

UNUSED static sel4utils_alloc_data_t data;

vka_t vka;
allocman_t *allocman;
vspace_t vspace;


int main(int argc, char **argv) 
    {
    
    printf("Inside the driver process\n");
    int error;

    allocman = bootstrap_use_current_1level(SEL4UTILS_CNODE_SLOT,CONFIG_SEL4UTILS_CSPACE_SIZE_BITS,
    										FREE_SLOT,(1U << CONFIG_SEL4UTILS_CSPACE_SIZE_BITS),
    										ALLOCATOR_STATIC_POOL_SIZE,
    										allocator_mem_pool);

    allocman_make_vka(&vka,allocman);

    sel4utils_bootstrap_vspace(&vspace,&data,SEL4UTILS_PD_SLOT,&vka,NULL,NULL,NULL);
	
	sel4utils_process_t user_process;
    error = sel4utils_configure_process(&user_process, &vka, &vspace, USER_PRIORITY, USER_IMAGE_NAME);
    assert(error == 0);


    /////////// Setup of IPC
    vka_object_t ep_object = {0};
    error = vka_alloc_endpoint(&vka, &ep_object);
    assert(error == 0);

    cspacepath_t ep_cap_path;
    vka_cspace_make_path(&vka, ep_object.cptr, &ep_cap_path);

    seL4_CPtr new_ep_cap;
    new_ep_cap = sel4utils_copy_cap_to_process(&user_process, ep_cap_path);
    assert(new_ep_cap != 0);

    /////////// Setup of Mapping of Pages

    static const uintptr_t paddr = AXI_PADDR;


    error = sel4utils_bootstrap_vspace_with_bootinfo_leaky(&vspace, &data, simple_get_pd(&simple), &vka, info);


    //printf("The address of gpio is %c " *gpio_addr);

    seL4_CPtr frame_cap;
    error = vka_cspace_alloc(&vka, &frame_cap);
    if (error) {
        ZF_LOGE("Failed to allocate cslot for frame cap\n");
        return error;
    }

    cspacepath_t ep_cap_path;
    /* find the physical frame */
    vka_cspace_make_path(&vka, frame_cap, &ep_cap_path);
    error = simple_get_frame_cap(&simple, (void*)paddr, 20, &ep_cap_path);
    if (error) {
        ZF_LOGE("Failed to find frame at paddr %p\n", paddr);
        return error;
    }
    axi_vaddr = vspace_map_pages(&vspace, &ep_cap_path.capPtr, NULL, seL4_CanRead | seL4_CanWrite , 1 , 20 , 0 );


    ////////// Init of the Fifos

    int status;
    unsigned int data = 3;
    Initalize_Fifo();
    status = CheckStatus();
    if(status !=0x01D00000)
    {
        printf("Error Initializing the Fifo \n");
        printf("The Value of status after Initializing is %d \n", status);
    }

    printf("Clearing Interupt Register Next \n");
    InteruptClear(0xffffffff);
    status = CheckStatus();
    if(status !=0)
    {
        printf("Error Clearing Interupts \n");
        printf("The Value of status after Interupt clear is %d \n", status);
    }
    
    int temp = *(axi_vaddr + 0x4);
    printf("The value of ier is %d \n",temp);

    /////////////////////// Wait for IPC from User, actual device driver 

    while(1)
    {
        seL4_Word sender_badge;
        seL4_MessageInfo_t tag;
        seL4_Word msg;

        //wait for a message 
        tag = seL4_Recv(ep_cap_path.capPtr, &sender_badge);

        // make sure it is what we expected 
        assert(sender_badge == EP_BADGE);
        assert(seL4_MessageInfo_get_length(tag) == 1);

        // get the message stored in the first message register 
        msg = seL4_GetMR(0);
        printf("main: got a message from user prodcution controller");
        if(msg == READ_COMAND)
        {
            //get the reading from hardware  
            seL4_SetMR(0,ACKNOWLEDGE);
            seL4_SetMR(1, msg);
            seL4_ReplyRecv(ep_cap_path.capPtr, tag, &sender_badge);
        }
        if(msg = WRITE_COMMAND)
        {
            seL4_Word dataToWrite = seL4_GetMR(1);
            printf("Going to check Vacancy Code \n");
            unsigned int temp2 = CheckVacancy();
            printf("The value of temp2 with CheckVacancy is %d\n",temp2);
            while(CheckVacancy() == 0);
            PutWord(data);
            printf("Finished writing data \n");
            PutWord(data);
            SetLength(WORD_SIZE);
            printf("Length set, waiting for transmission complete \n");
            while(!CheckTransmissionComplete());

            seL4_SetMR(0,ACKNOWLEDGE);
            seL4_SetMR(1, msg);
            seL4_ReplyRecv(ep_cap_path.capPtr, tag, &sender_badge);

        }


    }
    return 0;
}


void Initalize_Fifo()
{
    TxReset();
    RxReset();
    Reset();

}

void TxReset()
{
    *(axi_vaddr+XLLF_TDFR_OFFSET) = XLLF_TDFR_RESET_MASK; /// XLlFifo_WriteReg((InstancePtr)->BaseAddress, XLLF_TDFR_OFFSET, XLLF_TDFR_RESET_MASK)
    printf("Tx Reset Done \n");
}

void RxReset()
{
        *(axi_vaddr+XLLF_RDFR_OFFSET) = XLLF_RDFR_RESET_MASK; // XLlFifo_WriteReg((InstancePtr)->BaseAddress, XLLF_RDFR_OFFSET, XLLF_RDFR_RESET_MASK)
        printf("Rx Reset Done \n");
}

void Reset()
{
    *(axi_vaddr + XLLF_LLR_OFFSET) = XLLF_RDFR_RESET_MASK;    //* Reset the core and generate the external reset by writing to * the Local Link/AXI Streaming Reset Register.
                                                             //     XLlFifo_WriteReg((InstancePtr)->BaseAddress, XLLF_LLR_OFFSET,XLLF_RDFR_RESET_MASK);
    printf("Reset Done \n");
}


int CheckStatus()
{
    int status = 10;
    status = *(axi_vaddr+XLLF_ISR_OFFSET); // XLlFifo_ReadReg((InstancePtr)->BaseAddress, XLLF_ISR_OFFSET)
    printf("The status from status function is %d \n",status);
    return status;
}

void InteruptClear(unsigned int Mask)
{
    *(axi_vaddr + XLLF_ISR_OFFSET) = (Mask) & XLLF_INT_ALL_MASK;  // XLlFifo_WriteReg((InstancePtr)->BaseAddress, XLLF_ISR_OFFSET, ((Mask) & XLLF_INT_ALL_MASK))
}

unsigned int CheckVacancy()
{
    unsigned int vacancy = 10;
    printf("The vacancy now is %d \n",vacancy);
    vacancy = *(axi_vaddr +  0xC); /// XLlFifo_ReadReg(InstancePtr->BaseAddress,XLLF_TDFV_OFFSET);
    printf("The vacancy is %d\n",vacancy );
    return vacancy;
}

void PutWord(uint32_t data)
{
    *(axi_vaddr + XLLF_TDFD_OFFSET) = data;

}

void SetLength(uint32_t size)
{
    *(axi_vaddr + XLLF_TLF_OFFSET) = size ; // XLlFifo_WriteReg(InstancePtr->BaseAddress, XLLF_TLF_OFFSET,Bytes);
}

int CheckTransmissionComplete()
{
    unsigned int temp_read = *(axi_vaddr + XLLF_ISR_OFFSET);
    unsigned int check = temp_read & XLLF_INT_TC_MASK;
    int complete;
    if(check == 1)
    {
        complete = 1;
    }
    else
    {
        complete = 0;
    }

    return complete;


    //////////  ((XLlFifo_ReadReg((InstancePtr)->BaseAddress, XLLF_ISR_OFFSET) & XLLF_INT_TC_MASK) ? TRUE : FALSE)

}

