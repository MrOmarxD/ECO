Addi t0, zero, 14
Addi t1, zero, 3
sw t0, 24(a0)
sw t1, 40(a0)
lw t2, 24(a0)
lw t3, 40(a0)
sub t4, t2, t3
sw t4, 56(a0)