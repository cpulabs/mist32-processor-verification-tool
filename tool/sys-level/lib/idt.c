#include "malloc.h"

inline void idt_set(idt_entry *idt){
	__asm__(
	"
		sridtw %0
	"
	:
	:"r"(idt)
	);
}


inline void idt_store(){
	__asm__("idts");
}

idt_entry *idt_init(void){
	idt_entry *idt;
	int i;
	
	idt = malloc(sizeof(idt_entry) * 128);

	for(i = 0; i < 128; i++){
		idt[i].flags = 0;
		idt[i].handler = 0;
	}

	return idt;
}


void idt_entry_setup(idt_entry *idt, unsigned int num, void (*handler)(void)){
	idt[num].flags = 0x1;
	idt[num].handler = handler;
}

void idt_entry_enable(idt_entry *idt, unsigned int num){
	idt[num].flags |= 0x2;
}
