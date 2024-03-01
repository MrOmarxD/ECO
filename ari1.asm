		add s0, t0, zero #reg T0 es máximo
		blt s0, t1, compt2 # si s0 es >= t1 comprobamos t2
		add s0, t0, zero #reg T0 es máximo
compt2:		blt t2, s0, compt3 # si s0 es >= t2 comprobamos t3
		add s0, t2, zero #reg T2 es máximo
compt3:		blt t3, s0, compt4 # si s0 es >= t3 comprobamos t4
		add s0, t3, zero #reg T3 es máximo
compt4:		blt t4, s0, compt5 # si s0 es >= t4 comprobamos t5
		add s0, t4, zero #reg T4 es máximo
compt5:		blt t5, s0, compt6 # si s0 es >= t5 comprobamos t6
		add s0, t5, zero #reg T5 es máximo
compt6:		blt t6, s0, fin # si s0 es >= t26fin
		add s0, t6, zero #reg T6 es máximo
fin: