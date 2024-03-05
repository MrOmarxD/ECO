#Mirar si el valor almacenado en t0 es divisible entre 4
#Para que un numero sea divisible engtre cuantro los 2 bits de menos peso deben de ser 0
		addi t1, zero, 1
		andi t3, t0, 0x3
		beq t3, zero, FIN
		addi t0, zero, 0
	FIN:
		