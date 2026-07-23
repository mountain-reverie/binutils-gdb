#objdump: -dr --prefix-addresses --show-raw-insn
#name: SH J-core instructions
#as: -isa=sh-jcore

.*: +file format .*sh.*

Disassembly of section \.text:
0+000 <[^>]*> 22 13 [ 	]*cas\.l	r1,r2,@r0
0+002 <[^>]*> 00 3b [ 	]*bgnd
0+004 <[^>]*> 01 53 [ 	]*stc	pteh,r1
0+006 <[^>]*> 01 63 [ 	]*movli\.l	@r1,r0
0+008 <[^>]*> 01 73 [ 	]*movco\.l	r0,@r1
0+00a <[^>]*> 01 43 [ 	]*stc	tsbptr,r1
0+00c <[^>]*> 00 78 [ 	]*ldtlb\.rn
0+00e <[^>]*> 43 88 [ 	]*lds	r3,cp0_com
0+010 <[^>]*> 42 c8 [ 	]*sts	cp0_com,r2
0+012 <[^>]*> 45 89 [ 	]*clds	cp0_r5,cp0_com
0+014 <[^>]*> 46 c9 [ 	]*csts	cp0_com,cp0_r6
0+016 <[^>]*> 43 5a [ 	]*lds	r3,fpul
0+018 <[^>]*> 02 5a [ 	]*sts	fpul,r2
0+01a <[^>]*> f5 1d [ 	]*clds	cpi_r5,cpi_com
0+01c <[^>]*> f7 0d [ 	]*csts	cpi_com,cpi_r7
0\+01e <[^>]*> 01 d3 [ 	]*cmp/eq	pteh,r1
0\+020 <[^>]*> 01 f3 [ 	]*cmp/eq	asidr,r1
0\+022 <[^>]*> 05 fb [ 	]*ldtlb\.rn	r5
