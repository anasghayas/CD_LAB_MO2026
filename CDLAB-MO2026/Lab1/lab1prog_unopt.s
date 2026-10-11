	.file	"lab1prog.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	" a = %d x[7] = %d d = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
# lab1prog.c:3: { int a, b, c, d, i, j, k;
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	movq	%rax, -8(%rbp)	# tmp144, D.3211
	xorl	%eax, %eax	# tmp144
# lab1prog.c:4:   int x[11] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110};
	movl	$10, -64(%rbp)	#, x[0]
	movl	$20, -60(%rbp)	#, x[1]
	movl	$30, -56(%rbp)	#, x[2]
	movl	$40, -52(%rbp)	#, x[3]
	movl	$50, -48(%rbp)	#, x[4]
	movl	$60, -44(%rbp)	#, x[5]
	movl	$70, -40(%rbp)	#, x[6]
	movl	$80, -36(%rbp)	#, x[7]
	movl	$90, -32(%rbp)	#, x[8]
	movl	$100, -28(%rbp)	#, x[9]
	movl	$110, -24(%rbp)	#, x[10]
# lab1prog.c:5:   for (int k = 0; k < 10; k++)
	movl	$0, -68(%rbp)	#, k
# lab1prog.c:5:   for (int k = 0; k < 10; k++)
	jmp	.L2	#
.L13:
# lab1prog.c:6:   { a = 2; b = 3; c = 40; d = 5;
	movl	$2, -92(%rbp)	#, a
# lab1prog.c:6:   { a = 2; b = 3; c = 40; d = 5;
	movl	$3, -88(%rbp)	#, b
# lab1prog.c:6:   { a = 2; b = 3; c = 40; d = 5;
	movl	$40, -84(%rbp)	#, c
# lab1prog.c:6:   { a = 2; b = 3; c = 40; d = 5;
	movl	$5, -80(%rbp)	#, d
# lab1prog.c:7:     for ( i = 0; i < 11; i+=2 )
	movl	$0, -76(%rbp)	#, i
# lab1prog.c:7:     for ( i = 0; i < 11; i+=2 )
	jmp	.L3	#
.L6:
# lab1prog.c:8:     { a++;
	addl	$1, -92(%rbp)	#, a
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	jmp	.L4	#
.L5:
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	movl	-92(%rbp), %eax	# a, tmp101
	imull	-88(%rbp), %eax	# b, tmp100
	movl	%eax, -92(%rbp)	# tmp100, a
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	movl	-76(%rbp), %eax	# i, tmp102
	addl	$1, %eax	#, _1
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	cltq
	movl	-64(%rbp,%rax,4), %edx	# x[_1], _2
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	movl	-80(%rbp), %eax	# d, tmp104
	addl	%eax, %edx	# tmp104, _3
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	movl	-76(%rbp), %eax	# i, tmp106
	cltq
	movl	%edx, -64(%rbp,%rax,4)	# _3, x[i_27]
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	movl	-88(%rbp), %edx	# b, tmp107
	movl	%edx, %eax	# tmp107, tmp108
	sall	$2, %eax	#, tmp108
	addl	%edx, %eax	# tmp107, tmp108
	addl	%eax, %eax	# tmp109
	movl	%eax, -84(%rbp)	# tmp108, c
.L4:
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	movl	-76(%rbp), %edx	# i, tmp110
	movl	%edx, %eax	# tmp110, tmp111
	sarl	$31, %eax	#, tmp111
	shrl	$31, %eax	#, tmp112
	addl	%eax, %edx	# tmp112, tmp113
	andl	$1, %edx	#, tmp114
	subl	%eax, %edx	# tmp112, tmp115
	movl	%edx, %eax	# tmp115, _4
# lab1prog.c:9:       while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
	cmpl	$1, %eax	#, _4
	je	.L5	#,
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movl	-92(%rbp), %eax	# a, tmp117
	imull	-88(%rbp), %eax	# b, tmp116
	movl	%eax, -92(%rbp)	# tmp116, a
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movl	-84(%rbp), %eax	# c, tmp119
	imull	%eax, %eax	# tmp119, tmp118
	movl	%eax, -80(%rbp)	# tmp118, d
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movl	-76(%rbp), %eax	# i, tmp121
	cltq
	movl	-64(%rbp,%rax,4), %edi	# x[i_27], _5
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movl	-76(%rbp), %eax	# i, tmp122
	subl	$1, %eax	#, _6
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	cltq
	movl	-64(%rbp,%rax,4), %esi	# x[_6], _7
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movl	-76(%rbp), %edx	# i, tmp124
	movl	-80(%rbp), %eax	# d, tmp125
	leal	(%rdx,%rax), %ecx	#, _8
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movslq	%ecx, %rax	# _8, tmp126
	imulq	$780903145, %rax, %rax	#, tmp126, tmp127
	shrq	$32, %rax	#, tmp128
	movl	%eax, %edx	# tmp128, tmp129
	sarl	%edx	# tmp129
	movl	%ecx, %eax	# _8, tmp130
	sarl	$31, %eax	#, tmp130
	subl	%eax, %edx	# tmp130, _9
	movl	%edx, %eax	# _9, tmp131
	sall	$2, %eax	#, tmp131
	addl	%edx, %eax	# _9, tmp131
	addl	%eax, %eax	# tmp131
	addl	%edx, %eax	# _9, tmp131
	subl	%eax, %ecx	# tmp131, _8
	movl	%ecx, %edx	# _8, _9
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	leal	(%rdi,%rsi), %ecx	#, _10
# lab1prog.c:10:       a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
	movslq	%edx, %rax	# _9, tmp132
	movl	%ecx, -64(%rbp,%rax,4)	# _10, x[_9]
# lab1prog.c:7:     for ( i = 0; i < 11; i+=2 )
	addl	$2, -76(%rbp)	#, i
.L3:
# lab1prog.c:7:     for ( i = 0; i < 11; i+=2 )
	cmpl	$10, -76(%rbp)	#, i
	jle	.L6	#,
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	cmpl	$1, -92(%rbp)	#, a
	jg	.L7	#,
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	movl	$1, -72(%rbp)	#, j
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	jmp	.L8	#
.L9:
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	movl	-72(%rbp), %eax	# j, tmp134
	cltq
	movl	-64(%rbp,%rax,4), %eax	# x[j_28], _11
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	leal	5(%rax), %edx	#, _12
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	movl	-72(%rbp), %eax	# j, tmp136
	cltq
	movl	%edx, -64(%rbp,%rax,4)	# _12, x[j_28]
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	addl	$1, -72(%rbp)	#, j
.L8:
# lab1prog.c:12:     if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
	cmpl	$10, -72(%rbp)	#, j
	jle	.L9	#,
	jmp	.L10	#
.L7:
# lab1prog.c:13:     else {  x[5]+= d;
	movl	-44(%rbp), %edx	# x[5], _13
# lab1prog.c:13:     else {  x[5]+= d;
	movl	-80(%rbp), %eax	# d, tmp137
	addl	%edx, %eax	# _13, _14
	movl	%eax, -44(%rbp)	# _14, x[5]
# lab1prog.c:14:             while (a + b > 10) {a++; b++;}
	jmp	.L11	#
.L12:
# lab1prog.c:14:             while (a + b > 10) {a++; b++;}
	addl	$1, -92(%rbp)	#, a
# lab1prog.c:14:             while (a + b > 10) {a++; b++;}
	addl	$1, -88(%rbp)	#, b
.L11:
# lab1prog.c:14:             while (a + b > 10) {a++; b++;}
	movl	-92(%rbp), %edx	# a, tmp138
	movl	-88(%rbp), %eax	# b, tmp139
	addl	%edx, %eax	# tmp138, _15
# lab1prog.c:14:             while (a + b > 10) {a++; b++;}
	cmpl	$10, %eax	#, _15
	jg	.L12	#,
.L10:
# lab1prog.c:5:   for (int k = 0; k < 10; k++)
	addl	$1, -68(%rbp)	#, k
.L2:
# lab1prog.c:5:   for (int k = 0; k < 10; k++)
	cmpl	$9, -68(%rbp)	#, k
	jle	.L13	#,
# lab1prog.c:17:    printf(" a = %d x[7] = %d d = %d\n", a, x[7], d);
	movl	-36(%rbp), %edx	# x[7], _16
	movl	-80(%rbp), %ecx	# d, tmp140
	movl	-92(%rbp), %eax	# a, tmp141
	movl	%eax, %esi	# tmp141,
	leaq	.LC0(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	movl	$0, %eax	#,
	call	printf@PLT	#
# lab1prog.c:18:    return 0;
	movl	$0, %eax	#, _51
# lab1prog.c:19: }
	movq	-8(%rbp), %rdx	# D.3211, tmp145
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
