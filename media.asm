#Valor maximo, minimo y la media de los datos 16bits (half-word) almacenados en un vector
#Vector de 0x10010000 a 0x100100FF
		li a0 0x10010000 #V0, Las a son addresses, direcciones de memoria
		li a1 0x100101FF #Vf
		add t0, zero, zero #t0 acumulador
		li t1, 32767 #t1 minimo
		li t2, -32767 #t2 maximo
		
	loop:	lh t3, (a0)
		add t0, t0, t3
		bge t3, t1, esMayor
		add t1, t3, zero
	esMayor: bge t2, t3, sig
		add t2, t3, zero
	sig:	addi a0, a0, 2 #sig. posicion de memoria
		blt a0, a1, loop #Si a0 < a1 salta al loop
		srai t0, t0, 7
	FIN:
