#Desarrolla un programa en asm RV32 capaz de mostrar por pantalla el numero de espacios contenidos en una cadena de caracteres
#alamacenada en memoria a partir de la psoicion 0x
.data
cadena: .string "Hace mucho tiempo en una galaxia muy muy lejana"
cadena_resultado: .string "El número de espacios es "

.text
		la	a0, cadena	#carga en a0 di
		add	t5, zero, zero	#t5 contador que inicializamos a cero
		addi	t6, zero, ' '	#guardo el espacio (0x20) en t6
		
	loop:	lb	t0, (a0)	#leo caracter de cadenas
		beq	t0, zero, fin	#El fin 
		bne	t6, t0, sigPos	#Si no es un espacio -> paso directamente a la siguiente posicion de cadena
		addi	t5, t5, 1	#cont = cont++
		
	sigPos:	addi	a0, a0, 1	#paso a siguinete posicion
		beq zero, zero, loop	#Nueva itecacion del bucle
		
	fin:	#Mostrar en pantalla la cadena_resultado
		la a0, cadena_resultado #a0 puntero 
		addi a7, zero, 4	#a7 es 4 -> 
		ecall
		addi a0, t5, 0	#cargo contador en a0 para que se visualice
		addi  a7, zero, 1
		ecall
		