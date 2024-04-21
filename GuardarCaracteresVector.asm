.data
vector1: .string "Hola@_%Caracola-s€000000000"

.text
	li	a0, 0x10010000	#a0 dir vector inicial
	li	a1, 0x10010080	#a1 dir vector final
	add	t0, zero, zero	#t0 cont byts
	
LOOP:	lb	t1, (a0)
	addi	t2, zero, 'A'	# t2 = 'A'
	blt	t1, t2, SIG	# si < 'A' no caracter
	addi	t2, zero, 'Z'	# t2 = 'Z'
	blt	t2, t1, NOMAY	# si > 'Z' no mayuscula
	beq	zero, zero, ESCV2 # es mayuscula
	
NOMAY:	addi	t2, zero, 'a'	# t2 = 'a'
	blt	t1, t2, SIG	# si < 'a' no caracter
	addi	t2, zero, 'z'	# t2 = 'z'
	blt	t2, t1, SIG	# si > 'z' no caracter

ESCV2:	sb	t1, (a1)	# Escribir caracter en v2
	addi	a1, a1, 1	# Incrementamos puntero a v2
	
SIG:	addi	 a0, a0, 1	# Incrementar puntero a v1
	addi	t0, t0, 1	# cont++
	slti	t2, t0, 100	# si contador menor que 100
	bne	t2, zero, LOOP	# Bucle

FIN:
