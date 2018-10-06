 .EQU RAM_START_ADDR,  0x1000000
.globl __start

.text
__start :
	#config insns go here	
	add		gr1,	gr2,	gr3 #placeholder for now

__mv_2_ram:
	#get address values for the size of the data blocks
	la		tmp2,	__data_start__
#	la		tmp1,	__data_end__
	lui		tmp0,	RAM_START_ADDR
	lni		tmp0,	RAM_START_ADDR

	#now to loop byte by byte for loading everything
ram_loop:
	#first load data from program
	lw		tmp3,	0x0(tmp2)
	lw		tmp4,	0x4(tmp2)
	lw		tmp5,	0x8(tmp2)
	lw		tmp6,	0xc(tmp2)
	lw		tmp7,	0x10(tmp2)
	#now increment tmp2 to go to next part to read
	addi	tmp2,	tmp2,	0x14
	#actually write loaded memory to RAM
	sw 		tmp3,	0x0(tmp0)
	sw		tmp4,	0x4(tmp0)
	sw		tmp5,	0x8(tmp0)
	sw		tmp6,	0xc(tmp0)
	sw		tmp7,	0x10(tmp0)
	#again increase offset from base ram address
	addi	tmp0,	tmp0,	0x14
	bne		tmp1,	tmp2,	ram_loop
	nop
	nop
	#clear data so no memory leaks to main program
clear_tmp_reg:
	xor		tmp0,	tmp0,	tmp0
	xor		tmp1,	tmp1,	tmp1
	xor		tmp2,	tmp2,	tmp2
	xor		tmp3,	tmp3,	tmp3
	xor		tmp4,	tmp4,	tmp4
	xor		tmp5,	tmp5,	tmp5
	xor		tmp6,	tmp6,	tmp6
	xor		tmp7,	tmp7,	tmp7
#update offsets to be able to read from memory addresses in ram



__alloc_bss:
	#get our static variables up and running
	#la		$tmp

__prgm_start:
	#anything else to do?
	la		sp,	__stack_top__ + RAM_START_ADDR
	la		fp,	__stack_top__ + RAM_START_ADDR

	call	main
	#and awaaaaay we go!

	
main_call_trap:
#if we so happen to not get out of here,	
	nop
	nop
	beq	zero, zero, main_call_trap
	nop
	nop
#better make sure nothing gets out
