#define MEM_MAX_ADDR 0x04000000


/************************************
For IDT
************************************/
#define IDT_NUM_DPS_UTIM64 36

typedef unsigned int uint32;

typedef volatile struct _idt_entry {
	volatile uint32 flags;
	void (*handler)(void);
}idt_entry;


/************************************
For DPS
************************************/
#define UTIM64MCFG_ENA 0x1
#define UTIM64CFG_ENA 0x1
#define UTIM64CFG_IE 0x2
#define UTIM64CFG_BIT 0x4
#define UTIM64CFG_MODE 0x8
#define UTIM64FLAGS_A0 0x01
#define UTIM64FLAGS_A1 0x02
#define UTIM64FLAGS_A2 0x04
#define UTIM64FLAGS_A3 0x08
#define UTIM64FLAGS_B0 0x10
#define UTIM64FLAGS_B1 0x20
#define UTIM64FLAGS_B2 0x40
#define UTIM64FLAGS_B3 0x80

typedef volatile struct _dps_utim64 {
	volatile unsigned int mcfg;
	volatile unsigned int mc[2];
	volatile unsigned int cc[4][2];
	volatile unsigned int cccfg[4];
}dps_utim64;


