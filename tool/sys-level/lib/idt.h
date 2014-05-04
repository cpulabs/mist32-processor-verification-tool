#include "malloc.h"

inline void idt_set(idt_entry *idt);

inline void idt_store();

idt_entry *idt_init(void);

void idt_entry_setup(idt_entry *idt, unsigned int num, void (*handler)(void));

void idt_entry_enable(idt_entry *idt, unsigned int num);
