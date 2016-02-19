``For this assignment, build an RTL specification for the ADD instruction. Remember that this instruction caused the move of data from one place in the machine to another place, so there will be steps in each transfer, and not all combinations are possible. For example, it is not possible to move data into a literal value that will be made available as something coming from the decode register.``


The ADD instruction can take place between:
	Register to Register

	Memory to Register

	Register to Memory

	Register to Constant Data

	Memory to Constant Data


.. code-block:: text

	ADD1: // This adds the operand of two General Purpose Registers and stores the result in our Data Register
		t0: DR <- AC + R2

	ADD2: // This adds the operand from memory with operand from a register
		t0: DR <- M[AR] // Get operand from MEMORY, store in data register.
		t1: AR <- IR1 // Stores instruction register into Address Register 
		t2: DR <- AR + DR // Add operand from the Data Register with the operand from the Address Register and store back into the Data Register.

	ADD3: // This adds the operand from register with an operand from memory.
		t0: AR <- IR1 // Stores IR1 into AR
		t1: DR <- M[AR] // Stores operand from memory into DR
		t2: DR <- DR + AR // Adds both of the previous values

	ADD4: // This adds the operand from a register with a literal
		t0: DR <- IR2 // Stores our literal into the Data Register
		t1: DR <- GR + DR // Adds our literal to our Data Register and stores it back in the data register.
	
	ADD5: // This adds a literal with an operand from memory
		t0: 
