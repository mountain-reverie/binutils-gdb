# Test file for SH/GAS -- J-core (sh-jcore) specific instructions

	.text
	.align
	.globl jcore_tests
jcore_tests:
	! Compare-and-swap
	cas.l r1,r2,@r0

	! Background debug
	bgnd

	! CP0 coprocessor moves
	lds r3,cp0_com
	sts cp0_com,r2
	clds cp0_r5,cp0_com
	csts cp0_com,cp0_r6

	! CPI coprocessor moves (reuse FP encodings)
	lds r3,cpi_com
	sts cpi_com,r2
	clds cpi_r5,cpi_com
	csts cpi_com,cpi_r7

	! LDC to the MMU registers (kept: writes have no MMIO alias)
	ldc r1,pteh
	ldc r1,ptel
	ldc r1,asidr
