SECTIONS
{
	. = 0x0;
	.text : { *(.text) }

	. = 0x20000;
	.assert : { *(.assert) }

	. = 0x40000;
	.idt : { *(.idt) }

	. = 0x60000;
	.user0 : { *(.user0) }

	. = 0x80000;
	.user1 : { *(.user1) }

	. = 0xf0000;
	.stack : { *(.stack) }
}
