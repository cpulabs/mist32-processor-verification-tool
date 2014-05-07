#include "../common.h"
#include "../lib/malloc.h"
#include "../lib/dps.h"
#include "../lib/idt.h"
#include "../lib/io.h"

uint32 flag = 0;

void __attribute__((interrupt)) int36_utim64(void){
	flag = 1;
}


void main(){
	idt_entry *idt;
	dps_utim64 *timer;

	/* Stack Allocate */
	malloc(STACK_SIZE);

	/* IDT Config */
	idt = idt_init();
	idt_entry_setup(idt, IDT_NUM_DPS_UTIM64, &int36_utim64);
	idt_entry_enable(idt, IDT_NUM_DPS_UTIM64);

	/* IDT Set & Load */
	idt_set(idt);
	idt_store();

	/* UTIM64 Setup */
	timer = dps_utim64_init(0);
	dps_utim64_disable(timer);
	timer->mc[0] = 0;
	timer->mc[1] = 0;
	timer->cc[0][0] = 4096;
	timer->cc[0][1] = 0;
	timer->cccfg[0] = UTIM64CFG_ENA | UTIM64CFG_IE | UTIM64CFG_MODE;
	dps_utim64_enable(timer);

	/* Wait for Flag */
	while(flag == 0);

	return;
}
