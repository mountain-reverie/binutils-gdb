! Retired TLB-install encodings must not assemble for J-core.
!
! The J4 hardware TSB walker is the sole TLB installer (jcore-cpu
! 1cbb4d9): both install encodings were dropped from the decoder and
! now raise General Illegal.  ldtlb.rn (0000000001111000) was a J-core
! invention and is gone entirely; ldtlb (0000000000111000) survives as
! the genuine SH-3/SH-4 instruction it has always been, and is checked
! for under sh3/sh4 by gas/testsuite/gas/sh/arch/*.s.
!
! { dg-do assemble }
! { dg-options "-isa=sh-jcore" }

	.text
	.p2align 2

	ldtlb.rn		! { dg-error "unknown opcode" }
	ldtlb			! { dg-error "not valid for this cpu|invalid operands" }
