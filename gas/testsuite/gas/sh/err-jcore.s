! { dg-do assemble }
! { dg-options "-isa=sh2" }

	.text
	.p2align 2

	cas.l r1,r2,@r0		! { dg-error "not valid for this cpu|invalid operands" }
	bgnd			! { dg-error "not valid for this cpu|invalid operands" }
	ldc r1,pteh		! { dg-error "not valid for this cpu|invalid operands" }
