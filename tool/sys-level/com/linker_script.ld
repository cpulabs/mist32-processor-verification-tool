SECTIONS
{
	. = 0x0;
	.text : { *(.text) }

	. = 0x04000000;
	.assert : { *(.assert) }

}
