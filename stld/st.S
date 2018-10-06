.globl __start

.data
	var1:	.word 0xcafebabe
	var2:	.word 0xdeadbeef

.text
__start:
	la	gr1,	var1
#	lui gr1,	var1
	sw	gr0,	var1(gr1)
	sw	gr0,	var1(gr1)
	sw	gr0,	var1(gr1)
	sw	gr0,	var1(gr1)
	nop
	nop
	sw	gr0,	var2(gr1)
	sw	gr0,	var2(gr1)
	sw	gr0,	var2(gr1)
	sw	gr0,	var2(gr1)
