SECTIONS
{
	.init : {
		_ftext = . ;
		__INIT_START = . ;
		KEEP (*(.init))
		__INIT_END = . ;
		_etext = . ;
	}
	.text : {
		__TEXT_START = . ;
		*(.text)
		*(.text.*)
		*(.gnu.linkonce.t.*)
		__TEXT_END = . ;
	}

	.rdata : {
		__RODATA_START = . ;	
		*(.rodata)
		__RODATA_END = . ;
	}

	.data ALIGN(4) : {
		__DATA_START = . ;
		*(.data)
		*(.gnu.linkonce.d.*)
		__DATA_END = . ;
	} 
	.bss (NOLOAD) : {
		__BSS_START = . ;
		*(.bss)
		*(COMMON)
		__BSS_END = . ;
	}

	.heap (NOLOAD) : {
		. = ALIGN(4);
		__HEAP_START = . ;
		. += 0x2000;
		__HEAP_MAX = . ;
	} 
	.stack (NOLOAD) : {
		. = ALIGN(4);
		. +=0x10000;
		__STACK_START = .;
	}
	.comment 0 : {
		*(.comment)
	}
}
EOF
