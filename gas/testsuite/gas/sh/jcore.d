#objdump: -dr --prefix-addresses --show-raw-insn
#name: SH J-core instructions
#as: -isa=sh-jcore

.*: +file format .*sh.*

Disassembly of section \.text:
0+000 <[^>]*> 22 13 [ 	]*cas\.l	r1,r2,@r0
0+002 <[^>]*> 00 3b [ 	]*bgnd
0+004 <[^>]*> 00 78 [ 	]*ldtlb\.rn
0+006 <[^>]*> 43 88 [ 	]*lds	r3,cp0_com
0+008 <[^>]*> 42 c8 [ 	]*sts	cp0_com,r2
0+00a <[^>]*> 45 89 [ 	]*clds	cp0_r5,cp0_com
0+00c <[^>]*> 46 c9 [ 	]*csts	cp0_com,cp0_r6
0+00e <[^>]*> 43 5a [ 	]*lds	r3,cpi_com
0+010 <[^>]*> 02 5a [ 	]*sts	cpi_com,r2
0+012 <[^>]*> f5 1d [ 	]*clds	cpi_r5,cpi_com
0+014 <[^>]*> f7 0d [ 	]*csts	cpi_com,cpi_r7
0+016 <[^>]*> 41 5e [ 	]*ldc	r1,pteh
0+018 <[^>]*> 41 6e [ 	]*ldc	r1,ptel
0+01a <[^>]*> 41 7e [ 	]*ldc	r1,asidr
