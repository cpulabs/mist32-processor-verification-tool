SECTIONS
{
	. = 0x0;
	.text : { *(.text) }

	. = 0x20000;
	.assert : { *(.assert) }

	. = 0xf0000;
	.stack : { *(.stack) }
}
