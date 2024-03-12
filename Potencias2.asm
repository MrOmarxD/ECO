#Almacena palabras contiguas de 32bits las potencias de 2 almacenadas en este ancho de palabra ordenadas de menor a mayor.
#s0 deberá de almacenar el número de valores almacenados en memoria. Las potencias de 2 se almacenarán a partir de la posición 0x10010000 (.data)
		addi t0, zero, 0 #t0 es un contador
		addi t1, zero, 1 #t1=1 es 2^0 (primera potencia)
		li a0, 0x10010000 #v0
		
	loop:	sw t1, (a0) #Escribimos potencia en memoria
		addi a0, a0, 4 #Sig posicion
		slli t1, t1, 1 #sig potencia
		bne t1, zero, loop
	FIN: