OUTPUT_FORMAT("elf32-fusion")
OUTPUT_ARCH("fusion")

SECTIONS
{
	.text : {
		__text_start__ = . ;
		*(.init);
		*(.text);
		*(.text.*)
		__text_end__ = . ;
	}
	.data ALIGN(32) : {
		. = ALIGN(32);
		__data_start__ = . ;
		*(.data);
		__data_end__ = . ;
	}
	.bss (NOLOAD) : {
		. = ALIGN(32);
		__bss_start__ = . ;
		*(.bss)
		*(COMMON)
		__bss_end__ = . ;
	}
	.heap (NOLOAD) : {
		. = ALIGN(32);
		__heap_start__ = . ;
		. += 2M;
		__heap_top__ = . ;
	}
	.stack (NOLOAD) : {
		. = ALIGN(32);
		__stack_bottom__ = . ;
		. += 64M;
		__stack_top__ = . ;
	}
	.comment 0 : {
		*(.comment)
	}

}
