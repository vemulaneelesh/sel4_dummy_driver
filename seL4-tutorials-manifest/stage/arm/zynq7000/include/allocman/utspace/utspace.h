/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */

#ifndef _ALLOCMAN_UTSPACE_H_
#define _ALLOCMAN_UTSPACE_H_

#include <sel4/types.h>
#include <allocman/properties.h>
#include <allocman/cspace/cspace.h>
#include <vka/vka.h>
#include <vka/object.h>

/* Convert from size of an untyped object in bytes, to the size as acceptable to a call to
 * untyped retype */
static inline size_t get_sel4_object_size(seL4_Word type, size_t size_bits) {
    if (type == seL4_CapTableObject) {
        return size_bits - seL4_SlotBits;
    } else {
        return vka_get_object_size(type, size_bits);
    }
}

struct allocman;

typedef struct utspace_interface {
    /* size_bits is always the size in memory of allocated object. This differs to the untypedretype
       semantics of size_bits when cnodes are involved */
    seL4_Word (*alloc)(struct allocman *alloc, void *utspace, size_t size_bits, seL4_Word object_type, const cspacepath_t *slot, int *error);
    void (*free)(struct allocman *alloc, void *utspace, seL4_Word cookie, size_t size_bits);
    int (*add_uts)(struct allocman *alloc, void *utspace, size_t num, const cspacepath_t *uts, size_t *size_bits, uintptr_t *paddr);
    uintptr_t (*paddr)(void *utspace, seL4_Word cookie, size_t size_bits);
    struct allocman_properties properties;
    void *utspace;
}utspace_interface_t;

#endif
