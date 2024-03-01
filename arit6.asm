		add t1, zero, zero
		addi t2, zero, 32
inicio:	andi t4, t0, 1
		srli t0, t0, 1
		beq t2, zero, fin
		beq t4, zero, inicio
		addi t1, t1, 1
		beq zero, zero, inicio
fin:		ebreak