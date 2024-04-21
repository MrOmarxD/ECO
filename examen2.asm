.data
cadena:	.asciz 	"0010010120101"
.text

		la	a0,	cadena
		li	t1,	0		#Resultado
		
loop:		lbu	t0,	0(a0)
		beqz	t0,	fin
		
		li	t2,	'0'
		beq	t0, t2, bin
		li	t2,	'1'
		beq	t0, t2, bin
		
		j	fin
		
bin:		li	t4, '0'
		sub	t0, t0, t4
		slli	t1, t1, 1
		or	t1, t1, t0
		addi	a0, a0, 1
		j	loop
		
fin:
		ebreak
