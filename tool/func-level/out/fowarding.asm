
./out/fowarding.out:     ファイル形式 elf32-mist32


セクション .text の逆アセンブル:

00000000 <_start>:
   0:	0d 40 00 00 	wl16	r0,0x0
   4:	0d 60 00 0f 	wh16	r0,0xf
   8:	1c 00 00 00 	srspw	r0
   c:	14 30 00 1a 	br	74 <target>,#al

00000010 <mem_print>:
  10:	0d 40 02 08 	wl16	r16,0x8
  14:	0d 60 02 02 	wh16	r16,0x2
  18:	10 a0 00 10 	st32	r0,r16
  1c:	14 40 03 e0 	b	rret,#al

00000020 <error>:
  20:	0d 40 03 20 	wl16	r25,0x0
  24:	0d 60 03 22 	wh16	r25,0x2
  28:	0e c0 03 40 	lil	r26,0
  2c:	10 a0 03 59 	st32	r26,r25
  30:	0d 40 03 30 	wl16	r25,0x10
  34:	0d 60 03 22 	wh16	r25,0x2
  38:	10 a0 03 79 	st32	r27,r25
  3c:	0d 40 03 2c 	wl16	r25,0xc
  40:	0d 60 03 22 	wh16	r25,0x2
  44:	10 a0 03 99 	st32	r28,r25
  48:	0d 40 03 34 	wl16	r25,0x14
  4c:	0d 60 03 22 	wh16	r25,0x2
  50:	10 a0 03 b9 	st32	rglobl,r25
  54:	0d 40 03 38 	wl16	r25,0x18
  58:	0d 60 03 22 	wh16	r25,0x2
  5c:	10 a0 03 d9 	st32	rbase,r25

00000060 <finish>:
  60:	0d 40 03 24 	wl16	r25,0x4
  64:	0d 60 03 22 	wh16	r25,0x2
  68:	0e c0 03 41 	lil	r26,1
  6c:	10 a0 03 59 	st32	r26,r25
  70:	14 30 00 00 	br	70 <finish+0x10>,#al

00000074 <target>:
  74:	0d c0 00 00 	clr	r0
  78:	0d c0 00 20 	clr	r1
  7c:	0d c0 00 40 	clr	r2
  80:	0d c0 00 60 	clr	r3
  84:	0d c0 00 80 	clr	r4
  88:	0d c0 00 a0 	clr	r5
  8c:	0d c0 00 c0 	clr	r6
  90:	0d c0 00 e0 	clr	rtmp
  94:	0d c0 01 00 	clr	r8
  98:	0d c0 01 20 	clr	r9
  9c:	0d c0 01 40 	clr	r10
  a0:	0d c0 01 60 	clr	r11
  a4:	0d c0 01 80 	clr	r12
  a8:	0d c0 01 a0 	clr	r13
  ac:	0d c0 01 c0 	clr	r14
  b0:	0d c0 01 e0 	clr	r15
  b4:	0d c0 02 00 	clr	r16
  b8:	0d c0 02 20 	clr	r17
  bc:	0d c0 02 40 	clr	r18
  c0:	0d c0 02 60 	clr	r19
  c4:	0d c0 02 80 	clr	r20
  c8:	0d c0 02 a0 	clr	r21
  cc:	0d c0 02 c0 	clr	r22
  d0:	0d c0 02 e0 	clr	r23
  d4:	0d c0 03 00 	clr	r24
  d8:	0d c0 03 20 	clr	r25
  dc:	0d c0 03 40 	clr	r26
  e0:	0d c0 03 60 	clr	r27
  e4:	0d c0 03 80 	clr	r28
  e8:	0d c0 03 a0 	clr	rglobl
  ec:	0d c0 03 c0 	clr	rbase
  f0:	0d c0 03 e0 	clr	rret
  f4:	0d c0 03 c0 	clr	rbase
  f8:	0e c0 03 c1 	lil	rbase,1
  fc:	20 40 00 1e 	move	r0,rbase
 100:	00 10 00 00 	add	r0,0
 104:	00 00 00 20 	add	r1,r0
 108:	00 00 00 41 	add	r2,r1
 10c:	00 00 00 62 	add	r3,r2
 110:	00 00 00 83 	add	r4,r3
 114:	00 00 00 a4 	add	r5,r4
 118:	00 00 00 c5 	add	r6,r5
 11c:	00 00 00 e6 	add	rtmp,r6
 120:	00 00 01 07 	add	r8,rtmp
 124:	00 00 01 28 	add	r9,r8
 128:	00 00 01 49 	add	r10,r9
 12c:	00 00 01 6a 	add	r11,r10
 130:	00 00 01 8b 	add	r12,r11
 134:	00 00 01 ac 	add	r13,r12
 138:	00 00 01 cd 	add	r14,r13
 13c:	00 00 01 ee 	add	r15,r14
 140:	20 40 03 af 	move	rglobl,r15
 144:	20 70 03 e3 	movepc	rret,12
 148:	00 c0 03 be 	cmp	rglobl,rbase
 14c:	14 32 ff b5 	br	20 <error>,#ne
 150:	00 10 03 61 	add	r27,1
 154:	0d c0 00 00 	clr	r0
 158:	0d c0 00 20 	clr	r1
 15c:	0d c0 00 40 	clr	r2
 160:	0d c0 00 60 	clr	r3
 164:	0d c0 00 80 	clr	r4
 168:	0d c0 00 a0 	clr	r5
 16c:	0d c0 00 c0 	clr	r6
 170:	0d c0 00 e0 	clr	rtmp
 174:	0d c0 01 00 	clr	r8
 178:	0d c0 01 20 	clr	r9
 17c:	0d c0 01 40 	clr	r10
 180:	0d c0 01 60 	clr	r11
 184:	0d c0 01 80 	clr	r12
 188:	0d c0 01 a0 	clr	r13
 18c:	0d c0 01 c0 	clr	r14
 190:	0d c0 01 e0 	clr	r15
 194:	0d c0 03 c0 	clr	rbase
 198:	0e c0 03 d0 	lil	rbase,16
 19c:	00 10 00 01 	add	r0,1
 1a0:	00 10 00 21 	add	r1,1
 1a4:	00 10 00 41 	add	r2,1
 1a8:	00 10 00 61 	add	r3,1
 1ac:	00 10 00 81 	add	r4,1
 1b0:	00 10 00 a1 	add	r5,1
 1b4:	00 10 00 c1 	add	r6,1
 1b8:	00 10 00 e1 	add	rtmp,1
 1bc:	00 10 01 01 	add	r8,1
 1c0:	00 10 01 21 	add	r9,1
 1c4:	00 10 01 41 	add	r10,1
 1c8:	00 10 01 61 	add	r11,1
 1cc:	00 10 01 81 	add	r12,1
 1d0:	00 10 01 a1 	add	r13,1
 1d4:	00 10 01 c1 	add	r14,1
 1d8:	00 10 01 e1 	add	r15,1
 1dc:	20 40 03 af 	move	rglobl,r15
 1e0:	20 70 03 e3 	movepc	rret,12
 1e4:	00 c0 03 be 	cmp	rglobl,rbase
 1e8:	14 32 ff 8e 	br	20 <error>,#ne
 1ec:	00 10 03 61 	add	r27,1
 1f0:	0d c0 00 00 	clr	r0
 1f4:	0d c0 00 20 	clr	r1
 1f8:	0d c0 00 40 	clr	r2
 1fc:	0d c0 00 60 	clr	r3
 200:	0d c0 00 80 	clr	r4
 204:	0d c0 00 a0 	clr	r5
 208:	0d c0 00 c0 	clr	r6
 20c:	0d c0 00 e0 	clr	rtmp
 210:	0d c0 01 00 	clr	r8
 214:	0d c0 01 20 	clr	r9
 218:	0d c0 01 40 	clr	r10
 21c:	0d c0 01 60 	clr	r11
 220:	0d c0 01 80 	clr	r12
 224:	0d c0 01 a0 	clr	r13
 228:	0d c0 01 c0 	clr	r14
 22c:	0d c0 01 e0 	clr	r15
 230:	0d c0 03 60 	clr	r27
 234:	0e c0 03 81 	lil	r28,1
 238:	18 00 03 c0 	srspr	rbase
 23c:	00 30 03 c4 	sub	rbase,4
 240:	1c 00 03 c0 	srspw	rbase
 244:	18 00 03 a0 	srspr	rglobl
 248:	20 70 03 e3 	movepc	rret,12
 24c:	00 c0 03 be 	cmp	rglobl,rbase
 250:	14 32 ff 74 	br	20 <error>,#ne
 254:	00 10 03 61 	add	r27,1
 258:	0d c0 00 00 	clr	r0
 25c:	0d c0 00 20 	clr	r1
 260:	0d c0 00 40 	clr	r2
 264:	0d c0 00 60 	clr	r3
 268:	0d c0 00 80 	clr	r4
 26c:	0d c0 00 a0 	clr	r5
 270:	0d c0 00 c0 	clr	r6
 274:	0d c0 00 e0 	clr	rtmp
 278:	0d c0 01 00 	clr	r8
 27c:	0d c0 01 20 	clr	r9
 280:	0d c0 01 40 	clr	r10
 284:	0d c0 01 60 	clr	r11
 288:	0d c0 01 80 	clr	r12
 28c:	0d c0 01 a0 	clr	r13
 290:	0d c0 01 c0 	clr	r14
 294:	0d c0 01 e0 	clr	r15
 298:	18 00 03 c0 	srspr	rbase
 29c:	11 00 03 c0 	push	rbase
 2a0:	11 00 03 c0 	push	rbase
 2a4:	11 00 03 c0 	push	rbase
 2a8:	11 00 03 c0 	push	rbase
 2ac:	00 30 03 d0 	sub	rbase,16
 2b0:	18 00 03 a0 	srspr	rglobl
 2b4:	20 70 03 e3 	movepc	rret,12
 2b8:	00 c0 03 be 	cmp	rglobl,rbase
 2bc:	14 32 ff 59 	br	20 <error>,#ne
 2c0:	00 10 03 61 	add	r27,1
 2c4:	14 30 ff 67 	br	60 <finish>,#al

セクション .assert の逆アセンブル:

00020000 <CHECK_FLAG>:
   20000:	00 00 00 01 	add	r0,r1

00020004 <CHECK_FINISH>:
   20004:	00 00 00 00 	add	r0,r0

00020008 <CHECK_LOG>:
   20008:	00 00 00 00 	add	r0,r0

0002000c <ERROR_TYPE>:
   2000c:	00 00 00 00 	add	r0,r0

00020010 <ERROR_NUMBER>:
   20010:	00 00 00 00 	add	r0,r0

00020014 <ERROR_RESULT>:
   20014:	00 00 00 00 	add	r0,r0

00020018 <ERROR_EXPECT>:
   20018:	00 00 00 00 	add	r0,r0

セクション .stack の逆アセンブル:

000f0000 <STACK_INDEX>:
   f0000:	00 00 00 00 	add	r0,r0
