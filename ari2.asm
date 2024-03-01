#Calcula la suma de todos los números positivos menores que el valor almacenado en el registro t0. En caso de que el registro contega un valor negativo el resultado, obviamente es 0.
		or s0, zero, zero #ACUM = 0	s0 = 0
		slti t1, t0, 2 #if t0<2		(Set if less than), pone en t1, 1 si es t0 <2, y pone 0 si t0>2
		bne t1, zero, FIN #break	En caso de que t1 no es igual a zero salta a FIN
		addi t1, t0, -1 #Cont = t0-1	t1 <- t0-1
	LOOP:	add s0, s0, t1 #ACUM = ACUM+Cont	s0 <- s0 t1
		addi t1, t1, -1 #Cont = Cont-1		t1 <- t1-1
		bne t1, zero, LOOP #While cont !=0
	FIN: