/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */

#ifndef __VKA_OBJECT_H__
#define __VKA_OBJECT_H__

#include <assert.h>
#include <vka/vka.h>
#include <vka/kobject_t.h>
#include <stdio.h>
#include <utils/util.h>

/*
 * A wrapper to hold all the allocation information for an 'object'
 * An object here is just combination of cptr and untyped allocation
 * The type and size of the allocation is also stored to make free
 * more convenient.
 */

typedef struct vka_object {
    seL4_CPtr cptr;
    uint32_t ut;
    seL4_Word type;
    seL4_Word size_bits;
} vka_object_t;

/*
 * Generic object allocator used by functions below, can also be used directly
 */
static inline int
vka_alloc_object(vka_t *vka, seL4_Word type, seL4_Word size_bits, vka_object_t *result)
{
    seL4_CPtr cptr;
    uint32_t ut;
    int error;
    cspacepath_t path;

    if ( (error = vka_cspace_alloc(vka, &cptr)) != 0) {
        return error;
    }

    vka_cspace_make_path(vka, cptr, &path);
    if ( (error = vka_utspace_alloc(vka, &path, type, size_bits, &ut)) != 0) {
        ZF_LOGE("Failed to allocate object of size %lu, error %d\n", BIT(size_bits), error);
        vka_cspace_free(vka, cptr);
        return error;
    }
    result->cptr = cptr;
    result->ut = ut;
    result->type = type;
    result->size_bits = size_bits;
    return 0;
}

/* convenient wrapper that throws away the vka_object_t and just returns the cptr -
 * note you cannot use this if you intend to free the object */
static inline seL4_CPtr vka_alloc_object_leaky(vka_t *vka, seL4_Word type, seL4_Word size_bits) WARN_UNUSED_RESULT;
static inline seL4_CPtr
vka_alloc_object_leaky(vka_t *vka, seL4_Word type, seL4_Word size_bits)
{
    vka_object_t result = {.cptr = 0, .ut = 0, .type = 0, size_bits = 0};
    return vka_alloc_object(vka, type, size_bits, &result) == -1 ? 0 : result.cptr;
}

static inline void
vka_free_object(vka_t *vka, vka_object_t *object)
{
    cspacepath_t path;

    vka_cspace_make_path(vka, object->cptr, &path);
    if (path.capPtr == 0) {
        ZF_LOGE("Failed to create cspace path to object");
        return;
    }

    /* ignore any errors */
    seL4_CNode_Delete(path.root, path.capPtr, path.capDepth);

    vka_cspace_free(vka, object->cptr);
    vka_utspace_free(vka, object->type, object->size_bits, object->ut);
}

static inline uintptr_t
vka_object_paddr(vka_t *vka, vka_object_t *object)
{
    return vka_utspace_paddr(vka, object->ut, object->type, object->size_bits);
}

/* Convenience wrappers for allocating objects */
static inline int vka_alloc_untyped(vka_t *vka, uint32_t size_bits, vka_object_t *result)
{
    return vka_alloc_object(vka, seL4_UntypedObject, size_bits, result);
}
static inline int vka_alloc_tcb(vka_t *vka, vka_object_t *result)
{
    return vka_alloc_object(vka, seL4_TCBObject, seL4_TCBBits, result);
}
static inline int vka_alloc_endpoint(vka_t *vka, vka_object_t *result)
{
    return vka_alloc_object(vka, seL4_EndpointObject, seL4_EndpointBits, result);
}

static inline int vka_alloc_notification(vka_t *vka, vka_object_t *result)
{
    return vka_alloc_object(vka, seL4_NotificationObject, seL4_NotificationBits, result);
}

/* @deprecated use vka_alloc_notification */
static inline int DEPRECATED("Use vka_alloc_notification") 
vka_alloc_async_endpoint(vka_t *vka, vka_object_t *result)
{
    return vka_alloc_notification(vka, result);
}
static inline int vka_alloc_cnode_object(vka_t *vka, uint32_t slot_bits, vka_object_t *result)
{
    return vka_alloc_object(vka, seL4_CapTableObject, slot_bits, result);
}

/* For arch specific allocations we call upon kobject to avoid code duplication */
static inline int vka_alloc_frame(vka_t *vka, uint32_t size_bits, vka_object_t *result)
{
    return vka_alloc_object(vka, kobject_get_type(KOBJECT_FRAME, size_bits), size_bits, result);
}

static inline int vka_alloc_page_directory(vka_t *vka, vka_object_t *result)
{
    return vka_alloc_object(vka, kobject_get_type(KOBJECT_PAGE_DIRECTORY, 0), seL4_PageDirBits, result);
}

static inline int vka_alloc_page_table(vka_t *vka, vka_object_t *result)
{
    return vka_alloc_object(vka, kobject_get_type(KOBJECT_PAGE_TABLE, 0), seL4_PageTableBits, result);
}

#ifdef CONFIG_CACHE_COLORING

static inline int vka_alloc_kernel_image(vka_t *vka, vka_object_t *result)
{
    return vka_alloc_object(vka, kobject_get_type(KOBJECT_KERNEL_IMAGE, 0), seL4_KernelImageBits, result);
}


#endif


/* Implement a kobject interface */
static inline int vka_alloc_kobject(vka_t *vka, kobject_t type, seL4_Word size_bits,
                                    vka_object_t *result)
{
    return vka_alloc_object(vka, kobject_get_type(type, size_bits), size_bits, result);
}


/* leaky versions of the object allocation functions - throws away the kobject_t */

#define LEAKY(name) \
    static inline seL4_CPtr vka_alloc_##name##_leaky(vka_t *vka) WARN_UNUSED_RESULT; \
    static inline seL4_CPtr vka_alloc_##name##_leaky(vka_t *vka) \
{\
    vka_object_t object;\
    if (vka_alloc_##name(vka, &object) != 0) {\
        return 0;\
    }\
    return object.cptr;\
}

LEAKY(tcb)
LEAKY(endpoint)
LEAKY(notification)
LEAKY(page_directory)
LEAKY(page_table)

static inline DEPRECATED("use vka_alloc_notification_leaky") seL4_CPtr
vka_alloc_async_endpoint_leaky(vka_t *vka)
{
    return vka_alloc_notification_leaky(vka);
}


#define LEAKY_SIZE_BITS(name) \
    static inline seL4_CPtr vka_alloc_##name##_leaky(vka_t *vka, uint32_t size_bits) WARN_UNUSED_RESULT; \
    static inline seL4_CPtr vka_alloc_##name##_leaky(vka_t *vka, uint32_t size_bits) \
{\
    vka_object_t object;\
    if (vka_alloc_##name(vka, size_bits, &object) != 0) {\
        return 0;\
    }\
    return object.cptr;\
}

LEAKY_SIZE_BITS(untyped)
LEAKY_SIZE_BITS(frame)
LEAKY_SIZE_BITS(cnode_object)

#include <vka/arch/object.h>

/* The name of the object that defines a vspace root can vary, this provides
 * an abstraction for code that doesn't want to care about the type and
 * just wants whatever object fills this role */
static inline int vka_alloc_vspace_root(vka_t *vka, vka_object_t *result)
{
#ifdef CONFIG_PAE_PAGING
    return vka_alloc_pdpt(vka, result);
#else
    return vka_alloc_page_directory(vka, result);
#endif
}

/*
 * Get the size (in bits) of the untyped memory required to create an object of
 * the given size.
 */
static inline unsigned long
vka_get_object_size(seL4_Word objectType, seL4_Word objectSize)
{
    switch (objectType) {
        /* Generic objects. */
    case seL4_UntypedObject:
        return objectSize;
    case seL4_TCBObject:
        return seL4_TCBBits;
    case seL4_EndpointObject:
        return seL4_EndpointBits;
    case seL4_NotificationObject:
        return seL4_NotificationBits;
    case seL4_CapTableObject:
        return (seL4_SlotBits + objectSize);
#ifdef CONFIG_CACHE_COLORING
    case seL4_KernelImageObject:
        return seL4_KernelImageBits;
#endif
    default:
        return vka_arch_get_object_size(objectType);
    }
}

#endif /* __VKA_OBJECT_H__ */
