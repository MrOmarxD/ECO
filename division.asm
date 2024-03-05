#Programa que hace una division y de t0/t1=t2 y el resto en t3
#En caso de que t1=0; t2 y t3 = -1
		beq t1, zero, t1es0
		addi t2, zero, 0 #t2=0 [Cte]
		add t3, zero, t0 #t3=t0 [rto]
	loop:	blt t3, t1, FIN
		sub t3, t3, t1 #t3=t3-t1
		addi t2, t2, 1 #t2=t2+1
		beq a3, a3, loop
	t1es0:
		addi t2, zero, -1 #t2=-1
		add t3, zero, t2 #t3=-1
	FIN: