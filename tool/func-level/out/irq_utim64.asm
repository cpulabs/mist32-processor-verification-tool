
./out/irq_utim64.out:     ファイル形式 elf32-mist32


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

0000007c <clr_idt_lp>:
  7c:	0d 40 02 00 	wl16	r16,0x0
  80:	0d 60 02 04 	wh16	r16,0x4
  84:	00 00 02 01 	add	r16,r1
  88:	0d 40 02 20 	wl16	r17,0x0
  8c:	0d 60 02 20 	wh16	r17,0x0
  90:	0d 40 02 40 	wl16	r18,0x0
  94:	0d 60 02 40 	wh16	r18,0x0
  98:	10 a0 02 30 	st32	r17,r16
  9c:	00 10 02 04 	add	r16,4
  a0:	10 a0 02 50 	st32	r18,r16
  a4:	00 10 00 28 	add	r1,8
  a8:	02 00 00 00 	inc	r0,r0
  ac:	00 d0 10 00 	cmp	r0,128
  b0:	14 3b ff f3 	br	7c <clr_idt_lp>,#leu
  b4:	0d c0 00 00 	clr	r0
  b8:	0d 40 24 00 	wl16	r0,0x120
  bc:	0d 40 02 00 	wl16	r16,0x0
  c0:	0d 60 02 04 	wh16	r16,0x4
  c4:	00 00 02 00 	add	r16,r0
  c8:	0d 40 02 23 	wl16	r17,0x3
  cc:	0d 60 02 20 	wh16	r17,0x0
  d0:	0d 40 2e 4c 	wl16	r18,0x16c
  d4:	0d 60 02 40 	wh16	r18,0x0
  d8:	10 a0 02 30 	st32	r17,r16
  dc:	00 10 02 04 	add	r16,4
  e0:	10 a0 02 50 	st32	r18,r16
  e4:	0d 40 00 00 	wl16	r0,0x0
  e8:	0d 60 00 04 	wh16	r0,0x4
  ec:	1e 40 00 00 	sridtw	r0
  f0:	24 40 00 00 	idts
  f4:	1c b0 00 01 	srieiw	0x1
  f8:	0d c0 00 40 	clr	r2
  fc:	00 10 00 43 	add	r2,3
 100:	19 60 00 20 	sriosr	r1
 104:	0d c0 00 e0 	clr	rtmp
 108:	10 a0 00 e1 	st32	rtmp,r1
 10c:	0d c0 00 e0 	clr	rtmp
 110:	20 40 00 01 	move	r0,r1
 114:	00 10 00 04 	add	r0,4
 118:	10 a0 00 e0 	st32	rtmp,r0
 11c:	00 10 00 04 	add	r0,4
 120:	10 a0 00 e0 	st32	rtmp,r0
 124:	0d c0 00 e0 	clr	rtmp
 128:	20 40 00 01 	move	r0,r1
 12c:	00 10 00 0c 	add	r0,12
 130:	00 10 04 e0 	add	rtmp,32
 134:	10 a0 00 e0 	st32	rtmp,r0
 138:	0d c0 00 e0 	clr	rtmp
 13c:	20 40 00 01 	move	r0,r1
 140:	00 10 00 10 	add	r0,16
 144:	10 a0 00 e0 	st32	rtmp,r0
 148:	0d c0 00 e0 	clr	rtmp
 14c:	20 40 00 01 	move	r0,r1
 150:	00 10 04 0c 	add	r0,44
 154:	00 00 00 e2 	add	rtmp,r2
 158:	10 a0 00 e0 	st32	rtmp,r0
 15c:	0d c0 00 e0 	clr	rtmp
 160:	00 10 00 e1 	add	rtmp,1
 164:	10 a0 00 e1 	st32	rtmp,r1
 168:	14 30 00 00 	br	168 <clr_idt_lp+0xec>,#al

0000016c <check0_hdl>:
 16c:	19 60 00 20 	sriosr	r1
 170:	20 40 00 01 	move	r0,r1
 174:	00 10 0c 1c 	add	r0,124
 178:	10 40 00 e0 	ld32	rtmp,r0
 17c:	20 40 00 07 	move	r0,rtmp
 180:	00 d0 00 21 	cmp	r1,1
 184:	14 32 ff a7 	br	20 <error>,#ne
 188:	0d c0 00 00 	clr	r0
 18c:	0d 40 24 00 	wl16	r0,0x120
 190:	0d 40 02 00 	wl16	r16,0x0
 194:	0d 60 02 04 	wh16	r16,0x4
 198:	00 00 02 00 	add	r16,r0
 19c:	0d 40 02 23 	wl16	r17,0x3
 1a0:	0d 60 02 20 	wh16	r17,0x0
 1a4:	0d 40 4a 4c 	wl16	r18,0x24c
 1a8:	0d 60 02 40 	wh16	r18,0x0
 1ac:	10 a0 02 30 	st32	r17,r16
 1b0:	00 10 02 04 	add	r16,4
 1b4:	10 a0 02 50 	st32	r18,r16
 1b8:	0d 40 00 00 	wl16	r0,0x0
 1bc:	0d 60 00 04 	wh16	r0,0x4
 1c0:	1e 40 00 00 	sridtw	r0
 1c4:	24 40 00 00 	idts
 1c8:	1c b0 00 01 	srieiw	0x1
 1cc:	0d c0 00 40 	clr	r2
 1d0:	00 10 00 43 	add	r2,3
 1d4:	19 60 00 20 	sriosr	r1
 1d8:	0d c0 00 e0 	clr	rtmp
 1dc:	10 a0 00 e1 	st32	rtmp,r1
 1e0:	0d c0 00 e0 	clr	rtmp
 1e4:	20 40 00 01 	move	r0,r1
 1e8:	00 10 00 04 	add	r0,4
 1ec:	10 a0 00 e0 	st32	rtmp,r0
 1f0:	00 10 00 04 	add	r0,4
 1f4:	10 a0 00 e0 	st32	rtmp,r0
 1f8:	0d c0 00 e0 	clr	rtmp
 1fc:	20 40 00 01 	move	r0,r1
 200:	00 10 00 0c 	add	r0,12
 204:	00 10 04 e0 	add	rtmp,32
 208:	10 a0 00 e0 	st32	rtmp,r0
 20c:	0d c0 00 e0 	clr	rtmp
 210:	20 40 00 01 	move	r0,r1
 214:	00 10 00 10 	add	r0,16
 218:	10 a0 00 e0 	st32	rtmp,r0
 21c:	0d c0 00 e0 	clr	rtmp
 220:	20 40 00 01 	move	r0,r1
 224:	00 10 04 0c 	add	r0,44
 228:	00 00 00 e2 	add	rtmp,r2
 22c:	10 a0 00 e0 	st32	rtmp,r0
 230:	0d c0 00 e0 	clr	rtmp
 234:	00 10 00 e1 	add	rtmp,1
 238:	10 a0 00 e1 	st32	rtmp,r1
 23c:	0d c0 01 00 	clr	r8

00000240 <check1_wait>:
 240:	00 d0 01 01 	cmp	r8,1
 244:	14 32 ff ff 	br	240 <check1_wait>,#ne
 248:	14 30 00 09 	br	26c <check1_ok>,#al

0000024c <check1_hdl>:
 24c:	19 60 00 20 	sriosr	r1
 250:	20 40 00 01 	move	r0,r1
 254:	00 10 0c 1c 	add	r0,124
 258:	10 40 00 e0 	ld32	rtmp,r0
 25c:	20 40 00 07 	move	r0,rtmp
 260:	00 d0 00 21 	cmp	r1,1
 264:	14 32 ff 6f 	br	20 <error>,#ne
 268:	14 60 00 00 	ib

0000026c <check1_ok>:
 26c:	20 00 00 00 	nop
 270:	0d c0 00 00 	clr	r0
 274:	0d 40 24 00 	wl16	r0,0x120
 278:	0d 40 02 00 	wl16	r16,0x0
 27c:	0d 60 02 04 	wh16	r16,0x4
 280:	00 00 02 00 	add	r16,r0
 284:	0d 40 02 23 	wl16	r17,0x3
 288:	0d 60 02 20 	wh16	r17,0x0
 28c:	0d 40 6a 40 	wl16	r18,0x340
 290:	0d 60 02 40 	wh16	r18,0x0
 294:	10 a0 02 30 	st32	r17,r16
 298:	00 10 02 04 	add	r16,4
 29c:	10 a0 02 50 	st32	r18,r16
 2a0:	0d 40 00 00 	wl16	r0,0x0
 2a4:	0d 60 00 04 	wh16	r0,0x4
 2a8:	1e 40 00 00 	sridtw	r0
 2ac:	24 40 00 00 	idts
 2b0:	1c b0 00 01 	srieiw	0x1
 2b4:	0d c0 00 40 	clr	r2
 2b8:	00 10 00 4b 	add	r2,11
 2bc:	19 60 00 20 	sriosr	r1
 2c0:	0d c0 00 e0 	clr	rtmp
 2c4:	10 a0 00 e1 	st32	rtmp,r1
 2c8:	0d c0 00 e0 	clr	rtmp
 2cc:	20 40 00 01 	move	r0,r1
 2d0:	00 10 00 04 	add	r0,4
 2d4:	10 a0 00 e0 	st32	rtmp,r0
 2d8:	00 10 00 04 	add	r0,4
 2dc:	10 a0 00 e0 	st32	rtmp,r0
 2e0:	0d c0 00 e0 	clr	rtmp
 2e4:	20 40 00 01 	move	r0,r1
 2e8:	00 10 00 0c 	add	r0,12
 2ec:	00 10 04 e0 	add	rtmp,32
 2f0:	10 a0 00 e0 	st32	rtmp,r0
 2f4:	0d c0 00 e0 	clr	rtmp
 2f8:	20 40 00 01 	move	r0,r1
 2fc:	00 10 00 10 	add	r0,16
 300:	10 a0 00 e0 	st32	rtmp,r0
 304:	0d c0 00 e0 	clr	rtmp
 308:	20 40 00 01 	move	r0,r1
 30c:	00 10 04 0c 	add	r0,44
 310:	00 00 00 e2 	add	rtmp,r2
 314:	10 a0 00 e0 	st32	rtmp,r0
 318:	0d c0 00 e0 	clr	rtmp
 31c:	00 10 00 e1 	add	rtmp,1
 320:	10 a0 00 e1 	st32	rtmp,r1
 324:	0d c0 01 00 	clr	r8

00000328 <check2_wait>:
 328:	00 d0 01 04 	cmp	r8,4
 32c:	14 32 ff ff 	br	328 <check2_wait>,#ne
 330:	19 60 00 20 	sriosr	r1
 334:	0d c0 00 e0 	clr	rtmp
 338:	10 a0 00 e1 	st32	rtmp,r1
 33c:	14 30 00 09 	br	360 <check2_ok>,#al

00000340 <check2_hdl>:
 340:	19 60 00 20 	sriosr	r1
 344:	20 40 00 01 	move	r0,r1
 348:	00 10 0c 1c 	add	r0,124
 34c:	10 40 00 e0 	ld32	rtmp,r0
 350:	20 40 00 07 	move	r0,rtmp
 354:	00 d0 00 21 	cmp	r1,1
 358:	14 32 ff 32 	br	20 <error>,#ne
 35c:	02 00 01 08 	inc	r8,r8

00000360 <check2_ok>:
 360:	20 00 00 00 	nop

00000364 <test_end>:
 364:	14 30 ff 3f 	br	60 <finish>,#al

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

セクション .idt の逆アセンブル:

00040000 <idt_label>:
   40000:	20 00 00 00 	nop
   40004:	20 00 00 00 	nop

セクション .stack の逆アセンブル:

000f0000 <STACK_INDEX>:
   f0000:	00 00 00 00 	add	r0,r0
