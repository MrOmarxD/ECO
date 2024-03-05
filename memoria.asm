#Alamcenar en t0 el numero de posiscion de un vector cuyo valor almacenado es par
#El vector comienza en 0x10010000 y termina en 0x100101FF
		li a0 0x10010000 #V0, Las a son addresses, direcciones de memoria
		li a1 0x100101FF #Vf
		add t0, zero, zero #t0 contador
		
	loop:	lw t1, (a0) # 0(a0) == (a0)
		andi t1, t1, 0x1
		bne t1, zero, sig #Si par t1=0, si impar t1=0
		addi t0, t0, 1 #cont++
	sig:	addi a0, a0, 4 #sig. posicion de memoria
		slt t1, a0, a1 #si a0<a1 en t1=1, sino es t1=0
		bne t1, zero, loop
	FIN: