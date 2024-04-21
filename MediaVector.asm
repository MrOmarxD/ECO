#Recorer un vectro que empieza en posicion 0010000 y tamaño de 1k. Calcula la media aritmetica. Cada posicio tiene 16 bits (Half)
.data
.word	1000, 10000, 5000, 36000, 65000, 65000

.text
	li	a0, 0x10010000	# a0 dir vector inicial
	addi	t0, zero, 1024	# t0 cont
	add	t1, zero, zero	# t1 suma Acum
	
LOOP:	lh	t2, (a0)	# leer V
	add	t1, t1, t2	# Acum+=num
	addi	a0, a0, 2	# puntero++
	addi	t0, t0, -1	# cont--
	bne	t0, zero, LOOP	# Bucle
	
FIN:	srai	t1, t1, 10	# Acumm/=1024
