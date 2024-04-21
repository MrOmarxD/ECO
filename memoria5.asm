# Desarrolla un programa en ensamblador RV32I capaz de modificar el modo de almacenamiento de un vector de 
# halfwords, el vector original se encuentra en modo little endian y debes convertirlo a big endian (intercambiar el 
# orden de los dos bytes del halfword).
.data
vector:     .half   1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
                    17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32,
                    33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48,
                    49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64
.text
		li	a0,	0x10010000
		
loop:		lhu	t0, (a0)
		beqz	t0, fin
		add	t1, t0, zero
		srli	t0, t0, 8
		slli	t1, t1, 8
		or	t2, t1, t0
		sh	t2, (a0)
		addi	a0, a0, 2
		j	loop
		
fin:		ebreak