.global __start

.data
	var1:	.word 0xdeadbeef

.text

__start:
	li	$gr0, 	0x4
	li	$gr1,	0x5
	add	$gr2,	$gr1,	$gr0
