.globl __start

.text

__start:
		la	gr3,	label
		li	gr3,	label
		nop
		nop
label:
		add	zero,	zero,	gr10
