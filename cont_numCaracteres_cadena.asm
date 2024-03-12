#Desarrolla un programam que cuente el numero de caracteres de una cadena
.data
cadena: .string "Hace mucho tiempo en una galaxia muy muy lejana"
cadena_resultado: .string "El número de caracteres es "

.text
		la	a0, cadena	#carga en a0 di
		add	t5, zero, zero	#t5 contador que inicializamos a cero
		
	loop:	lb	t0, (a0)	#leo caracter de cadenas
		beq	t0, zero, fin	#El fin 
		addi	t5, t5, 1	#cont = cont++
		
		addi	a0, a0, 1	#paso a siguinete posicion
		beq zero, zero, loop	#Nueva itecacion del bucle
		
	fin:	#Mostrar en pantalla la cadena_resultado
		la a0, cadena_resultado #a0 puntero 
		addi a7, zero, 4	#a7 es 4 -> 
		ecall
		addi a0, t5, 0	#cargo contador en a0 para que se visualice
		addi  a7, zero, 1
		ecall
		