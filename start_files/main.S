#this is a test file for data segments
.globl main
.globl _ftext
.data

var1:	.word 0xdeafbead
var2:	.half 0xcafe
.ALIGN 4
var3:	.byte 0x55
.ALIGN 4


.text

main:
	lui	gp,		var1
	lw	gr0,	0x00(gp)	
	sw	gr0,	var2(gp)
	lh	gr1,	var2(gp)
	lb  gr2,	var3(gp)

#store imm:
#74 03 58 18
#011101 00 000 00011 01011 000 0001 1000
#011101 00 000 00011 01011 000 1100 0000

#79 83 40 20
#011110 01100 00011 01 00 0000 0010 0000
#011110 01100 00011 01 00 0000 1100 1000
