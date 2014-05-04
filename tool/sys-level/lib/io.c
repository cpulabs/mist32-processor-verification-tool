#include "common.h"

inline void iosr_load(){
	__asm__("");
}

inline uint32 *iosr_load(void){
	void *iosr;
	__asm__("sriosr %0" : "=r"(iosr));
	return iosr;
}