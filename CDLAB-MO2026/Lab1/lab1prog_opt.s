	.file	"lab1prog.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	" a = %d x[7] = %d d = %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# lab1prog.c:4:   int x[11] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110};
	movl	$10, %r10d	#, ivtmp_11
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movl	$3123612579, %r9d	#, tmp117
	movl	$2147483644, %ebp	#, tmp160
# lab1prog.c:3: { int a, b, c, d, i, j, k;
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 96
# lab1prog.c:4:   int x[11] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110};
	movdqa	.LC0(%rip), %xmm0	#, tmp108
	movq	.LC3(%rip), %xmm1	#, tmp162
# lab1prog.c:3: { int a, b, c, d, i, j, k;
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp165
	movq	%rax, 56(%rsp)	# tmp165, D.3463
	xorl	%eax, %eax	# tmp165
# lab1prog.c:4:   int x[11] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110};
	movq	.LC2(%rip), %rax	#, tmp110
	movq	%rsp, %rbx	#, ivtmp.25
	leaq	40(%rsp), %r11	#, _36
	movaps	%xmm0, (%rsp)	# tmp108, MEM <vector(4) int> [(int *)&x]
	movdqa	.LC1(%rip), %xmm0	#, tmp109
	movq	%rax, 32(%rsp)	# tmp110, MEM <vector(2) int> [(int *)&x + 32B]
	movl	$110, 40(%rsp)	#, x[10]
	movaps	%xmm0, 16(%rsp)	# tmp109, MEM <vector(4) int> [(int *)&x + 16B]
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rbx, %r8	# ivtmp.25, ivtmp.25
# lab1prog.c:3: { int a, b, c, d, i, j, k;
	movq	%rbx, %rcx	# ivtmp.25, ivtmp.35
	movl	$1600, %edx	#, ivtmp.36
# lab1prog.c:6:   { a = 2; b = 3; c = 40; d = 5;
	movl	$2, %edi	#, a
	.p2align 4,,10
	.p2align 3
.L3:
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movl	%edx, %eax	# ivtmp.36, ivtmp.36
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	leal	3(%rdi,%rdi,2), %edi	#, a
# lab1prog.c:7:     for ( i = 0; i < 11; i+=2 )
	addq	$8, %rcx	#, ivtmp.35
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	imulq	%r9, %rax	# tmp117, tmp116
	shrq	$35, %rax	#, tmp114
	leal	(%rax,%rax,4), %esi	#, tmp121
	leal	(%rax,%rsi,2), %esi	#, tmp123
	movl	%edx, %eax	# ivtmp.36, tmp124
# lab1prog.c:7:     for ( i = 0; i < 11; i+=2 )
	addl	$2, %edx	#, ivtmp.36
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	subl	%esi, %eax	# tmp123, tmp124
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movl	-12(%rcx), %esi	# MEM[(int *)_30 + -4B], MEM[(int *)_30 + -4B]
	addl	-8(%rcx), %esi	# MEM[(int *)_30], tmp141
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	cltq
	movl	%esi, (%rsp,%rax,4)	# tmp141, x[_5]
# lab1prog.c:7:     for ( i = 0; i < 11; i+=2 )
	cmpl	$1612, %edx	#, ivtmp.36
	jne	.L3	#,
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	cmpl	$1, %edi	#, a
	jle	.L5	#,
# lab1prog.c:13:     else {  x[5]+= d;
	addl	$1600, 20(%rsp)	#, x[5]
# lab1prog.c:14:             while (a + b > 10) {a++; b++;}
	cmpl	$7, %edi	#, a
	jle	.L7	#,
	movl	%ebp, %eax	# tmp160, tmp147
	subl	%edi, %eax	# a, tmp147
	shrl	%eax	# tmp149
	leal	1(%rdi,%rax), %edi	#, a
.L7:
# lab1prog.c:5:   for (int k = 0; k < 10; k++)
	subl	$1, %r10d	#, ivtmp_11
	jne	.L2	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	28(%rsp), %ecx	# x[7],
	movl	%edi, %edx	# a,
	xorl	%eax, %eax	#
	movl	$1600, %r8d	#,
	leaq	.LC4(%rip), %rsi	#, tmp152
	movl	$2, %edi	#,
	call	__printf_chk@PLT	#
# lab1prog.c:19: }
	movq	56(%rsp), %rax	# D.3463, tmp166
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp166
	jne	.L14	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	movq	4(%r8), %xmm0	# MEM <vector(2) int> [(int *)_75 + 4B], vect__7.10
	addq	$8, %r8	#, ivtmp.25
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	paddd	%xmm1, %xmm0	# tmp162, vect__8.11
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	movq	%xmm0, -4(%r8)	# vect__8.11, MEM <vector(2) int> [(int *)_75 + 4B]
	cmpq	%r8, %r11	# ivtmp.25, _36
	jne	.L5	#,
	jmp	.L7	#
.L14:
# lab1prog.c:19: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	10
	.long	20
	.long	30
	.long	40
	.align 16
.LC1:
	.long	50
	.long	60
	.long	70
	.long	80
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	90
	.long	100
	.align 8
.LC3:
	.long	5
	.long	5
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
