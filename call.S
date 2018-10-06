.globl __start

.text

__start:
__main:
		addi	$gr5, $sp, 0x0
#		call	$ra0, ($gr2)
		#la		$gr0, label
		#lui		$gr0,	__main
		slli 	$gr0,	$gr0,	0x10
		li		$gr2,	__main
		or		$gr2,	$gr2,	$gr0
		jrl		0($gr2)
		add 	$zero, $zero, $gr4
		nop
		nop
		nop
		nop
		nop
label:
		add 	$zero, $zero, $gr4
		add 	$zero, $zero, $gr4
		add 	$zero, $zero, $gr4
