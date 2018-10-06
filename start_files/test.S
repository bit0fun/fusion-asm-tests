#this is a test file for data segments
.globl test
.data

var4:	.word 0xdeafbead
var5:	.half 0xcafe
.ALIGN 4
var6:	.byte 0x55
.ALIGN 4


.text

test:
	lui	$gp,	var4
	lw	$gr0,	0x00($gp)	
	sw	$gr0,	var5($gp)
	lh	$gr1,	var5($gp)
	lb  $gr2,	var6($gp)
	la	$fp,	__data_end__

