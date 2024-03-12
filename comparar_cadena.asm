#Desarrolla una funcion strcmp que active el registro t0 si la cadena cuyo caracter inicial esta almacenado en a0 contiene la subcadena
#cuyo caracter inical se almacena en a1

.data
cadena: .string "Hola que hases"
subcadena: .string "que"
cadena_resultado_si: .string "Subcadena encontrada"
cadena_resultado_no: .string "Subcadena no encontrada"

.text

	programa_ppal:	la	a0, cadena	#cargo en a0
			jal	ra, strlen	#llama a la subrutina
			add	t1, t5, zero
			la	a0, subcadena	#cargo en a0
			jal	ra, strlen	#llama a la subrutina
			sub	t1, t1, t5
			addi	t1, t1, 1	#t1 es el ultimo caracter de cadena en el que puede estar la subcadena
			
			la	a0, cadena
			la	a1, subcadena
			lb	t4, (a1)	#Primer caracter de subcadena
			
			add	t2, zero, zero #es la posicion es la posicion que estroy evaluado con subcadena
		loop1:	lb	t3, (a0)
			beq	t3, t4, comparar _resto	
			addi	a0, a0, 1
			addi	t2, t2, 1
			bne	t2, t1, loop1
			
			la a0, cadena_resultado #a0 puntero 
			addi a7, zero, 4	#a7 es 4 -> 
			ecall
			addi a0, t5, 0	#cargo contador en a0 para que se visualice
			addi  a7, zero, 1
			ecall
			ebreak
	
	
	strcmp:	add	t5, zero, zero	#t5 contador que inicializamos a cero
		
	loop:	lb	t1, (a0)	#leo caracter de cadenas
		beq	t1, zero, fin_strcmp	#El fin 
		addi	t5, t5, 1	#cont = cont++
		
		addi	a0, a0, 1	#paso a siguinete posicion
		beq zero, zero, loop	#Nueva itecacion del bucle
	fin_strcmp:	jalr zero, ra, 0
	
	strlen:		add	t5, zero, zero	#t5 contador que inicializamos a cero
		
	loop:	lb	t0, (a0)	#leo caracter de cadenas
		beq	t0, zero, fin_strlen	#El fin 
		addi	t5, t5, 1	#cont = cont++
		
		addi	a0, a0, 1	#paso a siguinete posicion
		beq zero, zero, loop	#Nueva itecacion del bucle
	fin_strlen:	jalr zero, ra, 0