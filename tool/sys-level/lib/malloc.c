#include "common.h"

void *malloc(uint32 size){
	static uint32 index_p = MEM_MAX_ADDR;
	index_p = (index_p-size) & ~(0x3);
	return (void *)index_p;
}


