# Bubble Sort Implementation in RISC-V Assembly.
# Daniel Casañas, Irving Vallarta.

.text
# Load "Array"'s Base Address.
lui     a0, 0x10011000

# Load "n - 1" (Number of Iterations) and Indeces (i and j).
addi    a1, zero, 4     # a1 = n.
and     a2, zero, a2    # a2 = i.
and     a3, zero, a3    # a3 = j.

# Use Basic Instructions to Load Immediate Values.
# We'll Use "t0" as a Temporary Register for Value Swapping.
addi    t1, zero, 30
addi    t2, zero, 15
addi    t3, zero, 20
addi    t4, zero, 7
addi    t5, zero, 3

# Store Array in Memory.
# After This Operation, Registers t1-t6 are Free to Use.
sw      t1, 0(a0)
sw      t2, 4(a0)
sw      t3, 8(a0)
sw      t4, 12(a0)
sw      t5, 16(a0)

# Bubble Sort.
outer_loop:
    # Test Outer Loop's Condition.
    addi    a2, a2, 1
    bge     a1, a2, end 

inner_loop:
    # Test Inner Loop's Condition.
    addi    a3, a3, 1
    bge     a2, a3, outer_loop

    #



end:
# Load Array in Memory.

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
