#Desarrolla un programa en RV32I capaz de convertir a mayúsculas todos los caracteres incluidos en la cadena de caracteres almacenada a partir de
#la posición 0x10010000 de la memoria de datos.
.data
cadena:	.string "Cadena de ejemplo"

.text
    # Inicializar variables
    la a0, cadena       # Dirección de inicio de la cadena de caracteres
    add t1, zero, zero  # Índice para recorrer la cadena

loop:
    lbu t2, 0(a0)       # Cargar un byte de la cadena
    beq	t2, zero, FIN   # Si es el carácter nulo, terminar el bucle

    # Convertir a mayúscula si es una letra minúscula
    addi t3, zero, 'a'	# t3 = 'a'
    bltu t2, t3, no_es_minus
    addi t3, zero, 'z'	# t3 = 'z'
    bgeu t2, t3, no_es_minus
    addi t2, t2, -32    # Convertir a mayúscula sumando la diferencia

no_es_minus:
    sb t2, 0(a0)        # Almacenar el byte modificado en la misma dirección
    addi a0, a0, 1      # Avanzar al siguiente byte de la cadena
    addi t1, t1, 1      # Incrementar el índice

    # Volver al inicio del bucle
    j loop

FIN:
    # Fin del programa
    # Aquí se han convertido todas las letras minúsculas a mayúsculas en la cadena

    # Detener el programa
    ebreak