#Programa que compruebe si el valor almacenado en t5 es número primo
#Si es primo guardaremos 1 en t6, en caso contrario 0
#El valor almacenado en t5 estara entre 0 y 1000000
		add t6, zero, zero #t6=0 [suponemos que no es primo]
		slti t4, t5, 2 #Si t5<2 --> t4=1 else t4=0
		bne t4, zero, FIN
		#t5>=2 a comparar con todos los numeros desde 2 hasta t5-1
		addi s0, t5, -1 #Límite superior
		addi s1, zero, 2 #Límite inferior
		
	primo: bge s0, s1, bucle
		addi t6, zero, 1 #t6=1 es primo
		beq t6, t6, FIN
		
	bucle:	add t0, t5, zero #dividendo
		add t1, s1, zero #divisor	
		beq t0, t0, division
	resdiv: beq t3, zero, FIN #No es primo
		addi s1, s1, 1#siguiente
		beq zero, zero, primo
		
	division: beq t1, zero, t1es0
		addi t2, zero, 0 #t2=0 [Cte]
		add t3, zero, t0 #t3=t0 [rto]
	loop:	blt t3, t1, resdiv
		sub t3, t3, t1 #t3=t3-t1
		addi t2, t2, 1 #t2=t2+1
		beq a3, a3, loop
	t1es0:
		addi t2, zero, -1 #t2=-1
		add t3, zero, t2 #t3=-1
		beq t2, t2, resdiv
	FIN: