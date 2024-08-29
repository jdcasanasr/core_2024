#Codigo Burbuja
#Ordenamiento de n�meros

#Carga de datos

.data
_data: 
.word 0000
.word 0000
.word 0000
.word 0000
.word 0000
.word 0000
.word 0000
.word 0000

.text
#li	s9, 0x10000000
addi t0, zero, 30
addi t1, zero, 15
addi t2, zero, 20
addi t3, zero, 7
addi t4, zero, 31
addi t5, zero, 3
addi t6, zero, 10
#Almacenar datos
sw 	t0, 0(x0)
sw 	t1, 8(x0)
sw 	t2, 16(x0)
sw 	t3, 24(x0)
sw 	t4, 32(x0)
sw 	t5, 40(x0)
sw 	t6, 48(x0)
# C�digo C => ensamblador
addi 	s0, x0, 0	# i = 0
addi 	s1, x0, 6	# n = 6, l�mite
for_i:
addi 	s2, x0, 0 	# j = 0
for_j:
slli 	t0, s2, 3 	# offset j
addi 	t1, t0, 8 	# offset j + 1
lw   	t2, 0(t0)
lw   	t3, 0(t1)
slt	t4, t3, t2
beq	t4, x0, fin_if
sw   	t3, 0(t0)
sw   	t2, 0(t1)
fin_if:
addi 	s2, s2, 1	# j = j + 1
bne	s2, s1, for_j
addi 	s0, s0, 1    	# i = i + 1
bne	s0, s1, for_i
fin:	b fin
