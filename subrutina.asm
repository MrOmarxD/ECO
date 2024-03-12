#Desarrolla una subrutina que muestre por pantalla el numero de caracteres de una cadena
#alamcenada en memoria a apartir de la posicionn a0
.data
cadena: .string "Hace mucho tiempo en una galaxia muy muy lejana"
cadena_resultado: .string "El número de caracteres es "

.text

programa_ppal:	la	a0, cadena	#cargo en a0
		jal	ra, strlen	#llama a la subrutina
		#Mostrar en pantalla la cadena_resultado
		la a0, cadena_resultado #a0 puntero 
		addi a7, zero, 4	#a7 es 4 -> 
		ecall
		addi a0, t5, 0	#cargo contador en a0 para que se visualice
		addi  a7, zero, 1
		ecall
		ebreak
		
strlen:		add	t5, zero, zero	#t5 contador que inicializamos a cero
		
	loop:	lb	t0, (a0)	#leo caracter de cadenas
		beq	t0, zero, fin_strlen	#El fin 
		addi	t5, t5, 1	#cont = cont++
		
		addi	a0, a0, 1	#paso a siguinete posicion
		beq zero, zero, loop	#Nueva itecacion del bucle
	fin_strlen:	jalr zero, ra, 0
		