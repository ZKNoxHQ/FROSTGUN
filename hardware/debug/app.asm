
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f007 fad9 	bl	c0de75bc <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f007 f85b 	bl	c0de70d0 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f007 f822 	bl	c0de7064 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f007 f813 	bl	c0de704e <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 ff75 	bl	c0de7f24 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f007 fa53 	bl	c0de74e8 <assert_exit>
c0de0042:	2e14      	cmp	r6, #20
c0de0044:	d30a      	bcc.n	c0de005c <address_from_pubkey+0x34>
c0de0046:	2040      	movs	r0, #64	@ 0x40
c0de0048:	2101      	movs	r1, #1
c0de004a:	9009      	str	r0, [sp, #36]	@ 0x24
c0de004c:	1c68      	adds	r0, r5, #1
c0de004e:	466d      	mov	r5, sp
c0de0050:	9008      	str	r0, [sp, #32]
c0de0052:	a808      	add	r0, sp, #32
c0de0054:	462a      	mov	r2, r5
c0de0056:	f007 fa01 	bl	c0de745c <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 ff52 	bl	c0de7f10 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f007 fa35 	bl	c0de74e8 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d160      	bne.n	c0de0146 <apdu_dispatcher+0xd4>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2802      	cmp	r0, #2
c0de0090:	d05c      	beq.n	c0de014c <apdu_dispatcher+0xda>
c0de0092:	2820      	cmp	r0, #32
c0de0094:	d064      	beq.n	c0de0160 <apdu_dispatcher+0xee>
c0de0096:	2804      	cmp	r0, #4
c0de0098:	d06c      	beq.n	c0de0174 <apdu_dispatcher+0x102>
c0de009a:	2805      	cmp	r0, #5
c0de009c:	d076      	beq.n	c0de018c <apdu_dispatcher+0x11a>
c0de009e:	2806      	cmp	r0, #6
c0de00a0:	f000 808a 	beq.w	c0de01b8 <apdu_dispatcher+0x146>
c0de00a4:	2807      	cmp	r0, #7
c0de00a6:	f000 8095 	beq.w	c0de01d4 <apdu_dispatcher+0x162>
c0de00aa:	2808      	cmp	r0, #8
c0de00ac:	f000 809c 	beq.w	c0de01e8 <apdu_dispatcher+0x176>
c0de00b0:	2809      	cmp	r0, #9
c0de00b2:	f000 80a3 	beq.w	c0de01fc <apdu_dispatcher+0x18a>
c0de00b6:	280a      	cmp	r0, #10
c0de00b8:	f000 80aa 	beq.w	c0de0210 <apdu_dispatcher+0x19e>
c0de00bc:	280b      	cmp	r0, #11
c0de00be:	f000 80b1 	beq.w	c0de0224 <apdu_dispatcher+0x1b2>
c0de00c2:	280c      	cmp	r0, #12
c0de00c4:	f000 80b8 	beq.w	c0de0238 <apdu_dispatcher+0x1c6>
c0de00c8:	280d      	cmp	r0, #13
c0de00ca:	f000 80bf 	beq.w	c0de024c <apdu_dispatcher+0x1da>
c0de00ce:	280e      	cmp	r0, #14
c0de00d0:	f000 80c6 	beq.w	c0de0260 <apdu_dispatcher+0x1ee>
c0de00d4:	280f      	cmp	r0, #15
c0de00d6:	f000 80cd 	beq.w	c0de0274 <apdu_dispatcher+0x202>
c0de00da:	2810      	cmp	r0, #16
c0de00dc:	f000 80d4 	beq.w	c0de0288 <apdu_dispatcher+0x216>
c0de00e0:	2811      	cmp	r0, #17
c0de00e2:	f000 80db 	beq.w	c0de029c <apdu_dispatcher+0x22a>
c0de00e6:	2812      	cmp	r0, #18
c0de00e8:	f000 80e1 	beq.w	c0de02ae <apdu_dispatcher+0x23c>
c0de00ec:	2813      	cmp	r0, #19
c0de00ee:	f000 80e7 	beq.w	c0de02c0 <apdu_dispatcher+0x24e>
c0de00f2:	2814      	cmp	r0, #20
c0de00f4:	f000 80ed 	beq.w	c0de02d2 <apdu_dispatcher+0x260>
c0de00f8:	2815      	cmp	r0, #21
c0de00fa:	f000 80f3 	beq.w	c0de02e4 <apdu_dispatcher+0x272>
c0de00fe:	2817      	cmp	r0, #23
c0de0100:	f000 80f9 	beq.w	c0de02f6 <apdu_dispatcher+0x284>
c0de0104:	2818      	cmp	r0, #24
c0de0106:	f000 80ff 	beq.w	c0de0308 <apdu_dispatcher+0x296>
c0de010a:	2819      	cmp	r0, #25
c0de010c:	f000 810b 	beq.w	c0de0326 <apdu_dispatcher+0x2b4>
c0de0110:	281a      	cmp	r0, #26
c0de0112:	f000 8110 	beq.w	c0de0336 <apdu_dispatcher+0x2c4>
c0de0116:	281b      	cmp	r0, #27
c0de0118:	f000 8115 	beq.w	c0de0346 <apdu_dispatcher+0x2d4>
c0de011c:	281c      	cmp	r0, #28
c0de011e:	f000 811a 	beq.w	c0de0356 <apdu_dispatcher+0x2e4>
c0de0122:	281d      	cmp	r0, #29
c0de0124:	f000 811f 	beq.w	c0de0366 <apdu_dispatcher+0x2f4>
c0de0128:	2803      	cmp	r0, #3
c0de012a:	f040 8124 	bne.w	c0de0376 <apdu_dispatcher+0x304>
c0de012e:	78a0      	ldrb	r0, [r4, #2]
c0de0130:	2800      	cmp	r0, #0
c0de0132:	f040 8135 	bne.w	c0de03a0 <apdu_dispatcher+0x32e>
c0de0136:	78e0      	ldrb	r0, [r4, #3]
c0de0138:	2800      	cmp	r0, #0
c0de013a:	f040 8131 	bne.w	c0de03a0 <apdu_dispatcher+0x32e>
c0de013e:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0142:	f000 b9f0 	b.w	c0de0526 <handler_get_version>
c0de0146:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de014a:	e12b      	b.n	c0de03a4 <apdu_dispatcher+0x332>
c0de014c:	68a0      	ldr	r0, [r4, #8]
c0de014e:	2800      	cmp	r0, #0
c0de0150:	f000 8123 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de0154:	f000 f932 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de0158:	a801      	add	r0, sp, #4
c0de015a:	f001 f96d 	bl	c0de1438 <handler_cmd_PartialSig>
c0de015e:	e11a      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0160:	68a0      	ldr	r0, [r4, #8]
c0de0162:	2800      	cmp	r0, #0
c0de0164:	f000 8119 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de0168:	f000 f928 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de016c:	a801      	add	r0, sp, #4
c0de016e:	f001 fb3d 	bl	c0de17ec <handler_cmd_inject_nonces>
c0de0172:	e110      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0174:	78a0      	ldrb	r0, [r4, #2]
c0de0176:	2800      	cmp	r0, #0
c0de0178:	f040 8112 	bne.w	c0de03a0 <apdu_dispatcher+0x32e>
c0de017c:	78e0      	ldrb	r0, [r4, #3]
c0de017e:	2800      	cmp	r0, #0
c0de0180:	f040 810e 	bne.w	c0de03a0 <apdu_dispatcher+0x32e>
c0de0184:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0188:	f000 b966 	b.w	c0de0458 <handler_get_app_name>
c0de018c:	78a1      	ldrb	r1, [r4, #2]
c0de018e:	2901      	cmp	r1, #1
c0de0190:	f200 8106 	bhi.w	c0de03a0 <apdu_dispatcher+0x32e>
c0de0194:	78e0      	ldrb	r0, [r4, #3]
c0de0196:	2800      	cmp	r0, #0
c0de0198:	f040 8102 	bne.w	c0de03a0 <apdu_dispatcher+0x32e>
c0de019c:	68a0      	ldr	r0, [r4, #8]
c0de019e:	2800      	cmp	r0, #0
c0de01a0:	f000 80fb 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de01a4:	9001      	str	r0, [sp, #4]
c0de01a6:	7920      	ldrb	r0, [r4, #4]
c0de01a8:	2900      	cmp	r1, #0
c0de01aa:	9002      	str	r0, [sp, #8]
c0de01ac:	bf18      	it	ne
c0de01ae:	2101      	movne	r1, #1
c0de01b0:	a801      	add	r0, sp, #4
c0de01b2:	f000 f965 	bl	c0de0480 <handler_get_public_key>
c0de01b6:	e0ee      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de01b8:	78a1      	ldrb	r1, [r4, #2]
c0de01ba:	2900      	cmp	r1, #0
c0de01bc:	f000 80de 	beq.w	c0de037c <apdu_dispatcher+0x30a>
c0de01c0:	2903      	cmp	r1, #3
c0de01c2:	f200 80ed 	bhi.w	c0de03a0 <apdu_dispatcher+0x32e>
c0de01c6:	78e0      	ldrb	r0, [r4, #3]
c0de01c8:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de01cc:	2a80      	cmp	r2, #128	@ 0x80
c0de01ce:	f000 80d9 	beq.w	c0de0384 <apdu_dispatcher+0x312>
c0de01d2:	e0e5      	b.n	c0de03a0 <apdu_dispatcher+0x32e>
c0de01d4:	68a0      	ldr	r0, [r4, #8]
c0de01d6:	2800      	cmp	r0, #0
c0de01d8:	f000 80df 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de01dc:	f000 f8ee 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de01e0:	a801      	add	r0, sp, #4
c0de01e2:	f000 faab 	bl	c0de073c <handler_cmd_keccakH>
c0de01e6:	e0d6      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de01e8:	68a0      	ldr	r0, [r4, #8]
c0de01ea:	2800      	cmp	r0, #0
c0de01ec:	f000 80d5 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de01f0:	f000 f8e4 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de01f4:	a801      	add	r0, sp, #4
c0de01f6:	f000 fa68 	bl	c0de06ca <handler_cmd_blake2b512>
c0de01fa:	e0cc      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de01fc:	68a0      	ldr	r0, [r4, #8]
c0de01fe:	2800      	cmp	r0, #0
c0de0200:	f000 80cb 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de0204:	f000 f8da 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de0208:	a801      	add	r0, sp, #4
c0de020a:	f000 fafd 	bl	c0de0808 <handler_cmd_Poseidon>
c0de020e:	e0c2      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0210:	68a0      	ldr	r0, [r4, #8]
c0de0212:	2800      	cmp	r0, #0
c0de0214:	f000 80c1 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de0218:	f000 f8d0 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de021c:	a801      	add	r0, sp, #4
c0de021e:	f000 fc57 	bl	c0de0ad0 <handler_cmd_tEddsaPoseidon>
c0de0222:	e0b8      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0224:	68a0      	ldr	r0, [r4, #8]
c0de0226:	2800      	cmp	r0, #0
c0de0228:	f000 80b7 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de022c:	f000 f8c6 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de0230:	a801      	add	r0, sp, #4
c0de0232:	f000 fbb3 	bl	c0de099c <handler_cmd_tEddsaPoseidon_Kpub>
c0de0236:	e0ae      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0238:	68a0      	ldr	r0, [r4, #8]
c0de023a:	2800      	cmp	r0, #0
c0de023c:	f000 80ad 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de0240:	f000 f8bc 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de0244:	a801      	add	r0, sp, #4
c0de0246:	f000 fbea 	bl	c0de0a1e <handler_cmd_tEddsaPoseidon_Sign>
c0de024a:	e0a4      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de024c:	68a0      	ldr	r0, [r4, #8]
c0de024e:	2800      	cmp	r0, #0
c0de0250:	f000 80a3 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de0254:	f000 f8b2 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de0258:	a801      	add	r0, sp, #4
c0de025a:	f000 fb59 	bl	c0de0910 <handler_cmd_Poseidon_ithRC>
c0de025e:	e09a      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0260:	68a0      	ldr	r0, [r4, #8]
c0de0262:	2800      	cmp	r0, #0
c0de0264:	f000 8099 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de0268:	f000 f8a8 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de026c:	a801      	add	r0, sp, #4
c0de026e:	f000 fca3 	bl	c0de0bb8 <handler_cmd_tEdwards>
c0de0272:	e090      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0274:	68a0      	ldr	r0, [r4, #8]
c0de0276:	2800      	cmp	r0, #0
c0de0278:	f000 808f 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de027c:	f000 f89e 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de0280:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0284:	f000 ba78 	b.w	c0de0778 <handler_cmd_bolos_stretch>
c0de0288:	68a0      	ldr	r0, [r4, #8]
c0de028a:	2800      	cmp	r0, #0
c0de028c:	f000 8085 	beq.w	c0de039a <apdu_dispatcher+0x328>
c0de0290:	f000 f894 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de0294:	a801      	add	r0, sp, #4
c0de0296:	f000 fd45 	bl	c0de0d24 <handler_cmd_Interpolate>
c0de029a:	e07c      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de029c:	68a0      	ldr	r0, [r4, #8]
c0de029e:	2800      	cmp	r0, #0
c0de02a0:	d07b      	beq.n	c0de039a <apdu_dispatcher+0x328>
c0de02a2:	f000 f88b 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de02a6:	a801      	add	r0, sp, #4
c0de02a8:	f000 fdf1 	bl	c0de0e8e <handler_cmd_Split>
c0de02ac:	e073      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de02ae:	68a0      	ldr	r0, [r4, #8]
c0de02b0:	2800      	cmp	r0, #0
c0de02b2:	d072      	beq.n	c0de039a <apdu_dispatcher+0x328>
c0de02b4:	f000 f882 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de02b8:	a801      	add	r0, sp, #4
c0de02ba:	f000 feb0 	bl	c0de101e <handler_cmd_frostH>
c0de02be:	e06a      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de02c0:	68a0      	ldr	r0, [r4, #8]
c0de02c2:	2800      	cmp	r0, #0
c0de02c4:	d069      	beq.n	c0de039a <apdu_dispatcher+0x328>
c0de02c6:	f000 f879 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de02ca:	a801      	add	r0, sp, #4
c0de02cc:	f000 fef8 	bl	c0de10c0 <handler_cmd_encodeCommitment>
c0de02d0:	e061      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de02d2:	68a0      	ldr	r0, [r4, #8]
c0de02d4:	2800      	cmp	r0, #0
c0de02d6:	d060      	beq.n	c0de039a <apdu_dispatcher+0x328>
c0de02d8:	f000 f870 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de02dc:	a801      	add	r0, sp, #4
c0de02de:	f000 ff25 	bl	c0de112c <handler_cmd_GroupCommitment>
c0de02e2:	e058      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de02e4:	68a0      	ldr	r0, [r4, #8]
c0de02e6:	2800      	cmp	r0, #0
c0de02e8:	d057      	beq.n	c0de039a <apdu_dispatcher+0x328>
c0de02ea:	f000 f867 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de02ee:	a801      	add	r0, sp, #4
c0de02f0:	f000 ff60 	bl	c0de11b4 <handler_cmd_BindingFactors>
c0de02f4:	e04f      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de02f6:	68a0      	ldr	r0, [r4, #8]
c0de02f8:	2800      	cmp	r0, #0
c0de02fa:	d04e      	beq.n	c0de039a <apdu_dispatcher+0x328>
c0de02fc:	f000 f85e 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de0300:	a801      	add	r0, sp, #4
c0de0302:	f001 f945 	bl	c0de1590 <handler_cmd_tEddsaPoseidon_Sign_with_secret>
c0de0306:	e046      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0308:	78a0      	ldrb	r0, [r4, #2]
c0de030a:	2801      	cmp	r0, #1
c0de030c:	d848      	bhi.n	c0de03a0 <apdu_dispatcher+0x32e>
c0de030e:	78e0      	ldrb	r0, [r4, #3]
c0de0310:	2800      	cmp	r0, #0
c0de0312:	d145      	bne.n	c0de03a0 <apdu_dispatcher+0x32e>
c0de0314:	68a0      	ldr	r0, [r4, #8]
c0de0316:	2800      	cmp	r0, #0
c0de0318:	d03f      	beq.n	c0de039a <apdu_dispatcher+0x328>
c0de031a:	f000 f84f 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de031e:	a801      	add	r0, sp, #4
c0de0320:	f001 f8fe 	bl	c0de1520 <handler_get_insecure_public>
c0de0324:	e037      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0326:	68a0      	ldr	r0, [r4, #8]
c0de0328:	b3b8      	cbz	r0, c0de039a <apdu_dispatcher+0x328>
c0de032a:	f000 f847 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de032e:	a801      	add	r0, sp, #4
c0de0330:	f001 f974 	bl	c0de161c <handler_cmd_frost_inject>
c0de0334:	e02f      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0336:	68a0      	ldr	r0, [r4, #8]
c0de0338:	b378      	cbz	r0, c0de039a <apdu_dispatcher+0x328>
c0de033a:	f000 f83f 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de033e:	a801      	add	r0, sp, #4
c0de0340:	f001 f996 	bl	c0de1670 <handler_cmd_frost_commit>
c0de0344:	e027      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0346:	68a0      	ldr	r0, [r4, #8]
c0de0348:	b338      	cbz	r0, c0de039a <apdu_dispatcher+0x328>
c0de034a:	f000 f837 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de034e:	a801      	add	r0, sp, #4
c0de0350:	f001 f9d4 	bl	c0de16fc <handler_cmd_frost_inject_com1>
c0de0354:	e01f      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0356:	68a0      	ldr	r0, [r4, #8]
c0de0358:	b1f8      	cbz	r0, c0de039a <apdu_dispatcher+0x328>
c0de035a:	f000 f82f 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de035e:	a801      	add	r0, sp, #4
c0de0360:	f001 f9e0 	bl	c0de1724 <handler_cmd_frost_inject_com2>
c0de0364:	e017      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0366:	68a0      	ldr	r0, [r4, #8]
c0de0368:	b1b8      	cbz	r0, c0de039a <apdu_dispatcher+0x328>
c0de036a:	f000 f827 	bl	c0de03bc <OUTLINED_FUNCTION_0>
c0de036e:	a801      	add	r0, sp, #4
c0de0370:	f001 f9ee 	bl	c0de1750 <handler_cmd_frost_partial_sign>
c0de0374:	e00f      	b.n	c0de0396 <apdu_dispatcher+0x324>
c0de0376:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de037a:	e013      	b.n	c0de03a4 <apdu_dispatcher+0x332>
c0de037c:	78e0      	ldrb	r0, [r4, #3]
c0de037e:	2880      	cmp	r0, #128	@ 0x80
c0de0380:	d10e      	bne.n	c0de03a0 <apdu_dispatcher+0x32e>
c0de0382:	2080      	movs	r0, #128	@ 0x80
c0de0384:	68a2      	ldr	r2, [r4, #8]
c0de0386:	b142      	cbz	r2, c0de039a <apdu_dispatcher+0x328>
c0de0388:	9201      	str	r2, [sp, #4]
c0de038a:	7922      	ldrb	r2, [r4, #4]
c0de038c:	9202      	str	r2, [sp, #8]
c0de038e:	09c2      	lsrs	r2, r0, #7
c0de0390:	a801      	add	r0, sp, #4
c0de0392:	f000 f8df 	bl	c0de0554 <handler_sign_tx>
c0de0396:	b004      	add	sp, #16
c0de0398:	bd10      	pop	{r4, pc}
c0de039a:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de039e:	e001      	b.n	c0de03a4 <apdu_dispatcher+0x332>
c0de03a0:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de03a4:	b004      	add	sp, #16
c0de03a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de03aa:	f000 b800 	b.w	c0de03ae <io_send_sw>

c0de03ae <io_send_sw>:
c0de03ae:	b580      	push	{r7, lr}
c0de03b0:	4602      	mov	r2, r0
c0de03b2:	2000      	movs	r0, #0
c0de03b4:	2100      	movs	r1, #0
c0de03b6:	f006 fdf1 	bl	c0de6f9c <io_send_response_buffers>
c0de03ba:	bd80      	pop	{r7, pc}

c0de03bc <OUTLINED_FUNCTION_0>:
c0de03bc:	9001      	str	r0, [sp, #4]
c0de03be:	7920      	ldrb	r0, [r4, #4]
c0de03c0:	9002      	str	r0, [sp, #8]
c0de03c2:	4770      	bx	lr

c0de03c4 <app_main>:
c0de03c4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de03c6:	f006 fdcb 	bl	c0de6f60 <io_init>
c0de03ca:	481e      	ldr	r0, [pc, #120]	@ (c0de0444 <app_main+0x80>)
c0de03cc:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de03d0:	b908      	cbnz	r0, c0de03d6 <app_main+0x12>
c0de03d2:	f001 fc8f 	bl	c0de1cf4 <ui_menu_main>
c0de03d6:	481c      	ldr	r0, [pc, #112]	@ (c0de0448 <app_main+0x84>)
c0de03d8:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de03dc:	4448      	add	r0, r9
c0de03de:	f007 fdaf 	bl	c0de7f40 <explicit_bzero>
c0de03e2:	481b      	ldr	r0, [pc, #108]	@ (c0de0450 <app_main+0x8c>)
c0de03e4:	4478      	add	r0, pc
c0de03e6:	f007 fa91 	bl	c0de790c <pic>
c0de03ea:	7880      	ldrb	r0, [r0, #2]
c0de03ec:	2801      	cmp	r0, #1
c0de03ee:	d00d      	beq.n	c0de040c <app_main+0x48>
c0de03f0:	2001      	movs	r0, #1
c0de03f2:	f88d 0002 	strb.w	r0, [sp, #2]
c0de03f6:	2000      	movs	r0, #0
c0de03f8:	f8ad 0000 	strh.w	r0, [sp]
c0de03fc:	4815      	ldr	r0, [pc, #84]	@ (c0de0454 <app_main+0x90>)
c0de03fe:	4478      	add	r0, pc
c0de0400:	f007 fa84 	bl	c0de790c <pic>
c0de0404:	4669      	mov	r1, sp
c0de0406:	2203      	movs	r2, #3
c0de0408:	f007 fab0 	bl	c0de796c <nvm_write>
c0de040c:	4d0f      	ldr	r5, [pc, #60]	@ (c0de044c <app_main+0x88>)
c0de040e:	ac01      	add	r4, sp, #4
c0de0410:	f006 fdae 	bl	c0de6f70 <io_recv_command>
c0de0414:	2800      	cmp	r0, #0
c0de0416:	d414      	bmi.n	c0de0442 <app_main+0x7e>
c0de0418:	4602      	mov	r2, r0
c0de041a:	eb09 0105 	add.w	r1, r9, r5
c0de041e:	4620      	mov	r0, r4
c0de0420:	f006 fea6 	bl	c0de7170 <apdu_parser>
c0de0424:	b130      	cbz	r0, c0de0434 <app_main+0x70>
c0de0426:	4620      	mov	r0, r4
c0de0428:	f7ff fe23 	bl	c0de0072 <apdu_dispatcher>
c0de042c:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0430:	dcee      	bgt.n	c0de0410 <app_main+0x4c>
c0de0432:	e006      	b.n	c0de0442 <app_main+0x7e>
c0de0434:	2000      	movs	r0, #0
c0de0436:	2100      	movs	r1, #0
c0de0438:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de043c:	f006 fdae 	bl	c0de6f9c <io_send_response_buffers>
c0de0440:	e7e6      	b.n	c0de0410 <app_main+0x4c>
c0de0442:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0444:	00000b5c 	.word	0x00000b5c
c0de0448:	00000000 	.word	0x00000000
c0de044c:	00000694 	.word	0x00000694
c0de0450:	00009218 	.word	0x00009218
c0de0454:	000091fe 	.word	0x000091fe

c0de0458 <handler_get_app_name>:
c0de0458:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de045a:	4808      	ldr	r0, [pc, #32]	@ (c0de047c <handler_get_app_name+0x24>)
c0de045c:	4478      	add	r0, pc
c0de045e:	f007 fa55 	bl	c0de790c <pic>
c0de0462:	2100      	movs	r1, #0
c0de0464:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0468:	9103      	str	r1, [sp, #12]
c0de046a:	2107      	movs	r1, #7
c0de046c:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0470:	a801      	add	r0, sp, #4
c0de0472:	2101      	movs	r1, #1
c0de0474:	f006 fd92 	bl	c0de6f9c <io_send_response_buffers>
c0de0478:	b004      	add	sp, #16
c0de047a:	bd80      	pop	{r7, pc}
c0de047c:	000080c6 	.word	0x000080c6

c0de0480 <handler_get_public_key>:
c0de0480:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0482:	b085      	sub	sp, #20
c0de0484:	4f23      	ldr	r7, [pc, #140]	@ (c0de0514 <handler_get_public_key+0x94>)
c0de0486:	460c      	mov	r4, r1
c0de0488:	4605      	mov	r5, r0
c0de048a:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de048e:	eb09 0607 	add.w	r6, r9, r7
c0de0492:	4630      	mov	r0, r6
c0de0494:	f007 fd54 	bl	c0de7f40 <explicit_bzero>
c0de0498:	2000      	movs	r0, #0
c0de049a:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de049e:	f809 0007 	strb.w	r0, [r9, r7]
c0de04a2:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de04a6:	4628      	mov	r0, r5
c0de04a8:	f006 fb26 	bl	c0de6af8 <buffer_read_u8>
c0de04ac:	b308      	cbz	r0, c0de04f2 <handler_get_public_key+0x72>
c0de04ae:	eb09 0007 	add.w	r0, r9, r7
c0de04b2:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de04b6:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de04ba:	4628      	mov	r0, r5
c0de04bc:	f006 fb6f 	bl	c0de6b9e <buffer_read_bip32_path>
c0de04c0:	b1b8      	cbz	r0, c0de04f2 <handler_get_public_key+0x72>
c0de04c2:	eb09 0007 	add.w	r0, r9, r7
c0de04c6:	2100      	movs	r1, #0
c0de04c8:	2205      	movs	r2, #5
c0de04ca:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de04ce:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de04d2:	9104      	str	r1, [sp, #16]
c0de04d4:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de04d8:	f100 0608 	add.w	r6, r0, #8
c0de04dc:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de04e0:	2000      	movs	r0, #0
c0de04e2:	2121      	movs	r1, #33	@ 0x21
c0de04e4:	e9cd 6500 	strd	r6, r5, [sp]
c0de04e8:	f006 fc1a 	bl	c0de6d20 <bip32_derive_with_seed_get_pubkey_256>
c0de04ec:	b140      	cbz	r0, c0de0500 <handler_get_public_key+0x80>
c0de04ee:	b280      	uxth	r0, r0
c0de04f0:	e001      	b.n	c0de04f6 <handler_get_public_key+0x76>
c0de04f2:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de04f6:	b005      	add	sp, #20
c0de04f8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de04fc:	f000 b80c 	b.w	c0de0518 <io_send_sw>
c0de0500:	2c00      	cmp	r4, #0
c0de0502:	b005      	add	sp, #20
c0de0504:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0508:	bf08      	it	eq
c0de050a:	f001 b9b9 	beq.w	c0de1880 <helper_send_response_pubkey>
c0de050e:	f001 bcd5 	b.w	c0de1ebc <ui_display_address>
c0de0512:	bf00      	nop
c0de0514:	00000000 	.word	0x00000000

c0de0518 <io_send_sw>:
c0de0518:	b580      	push	{r7, lr}
c0de051a:	4602      	mov	r2, r0
c0de051c:	2000      	movs	r0, #0
c0de051e:	2100      	movs	r1, #0
c0de0520:	f006 fd3c 	bl	c0de6f9c <io_send_response_buffers>
c0de0524:	bd80      	pop	{r7, pc}

c0de0526 <handler_get_version>:
c0de0526:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0528:	2000      	movs	r0, #0
c0de052a:	2101      	movs	r1, #1
c0de052c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0530:	f88d 0002 	strb.w	r0, [sp, #2]
c0de0534:	f88d 0001 	strb.w	r0, [sp, #1]
c0de0538:	9003      	str	r0, [sp, #12]
c0de053a:	2003      	movs	r0, #3
c0de053c:	f88d 1003 	strb.w	r1, [sp, #3]
c0de0540:	2101      	movs	r1, #1
c0de0542:	9002      	str	r0, [sp, #8]
c0de0544:	f10d 0001 	add.w	r0, sp, #1
c0de0548:	9001      	str	r0, [sp, #4]
c0de054a:	a801      	add	r0, sp, #4
c0de054c:	f006 fd26 	bl	c0de6f9c <io_send_response_buffers>
c0de0550:	b004      	add	sp, #16
c0de0552:	bd80      	pop	{r7, pc}

c0de0554 <handler_sign_tx>:
c0de0554:	b570      	push	{r4, r5, r6, lr}
c0de0556:	b086      	sub	sp, #24
c0de0558:	4e54      	ldr	r6, [pc, #336]	@ (c0de06ac <handler_sign_tx+0x158>)
c0de055a:	4604      	mov	r4, r0
c0de055c:	b191      	cbz	r1, c0de0584 <handler_sign_tx+0x30>
c0de055e:	eb09 0006 	add.w	r0, r9, r6
c0de0562:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de0566:	2801      	cmp	r0, #1
c0de0568:	d12c      	bne.n	c0de05c4 <handler_sign_tx+0x70>
c0de056a:	eb09 0006 	add.w	r0, r9, r6
c0de056e:	4615      	mov	r5, r2
c0de0570:	6862      	ldr	r2, [r4, #4]
c0de0572:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de0576:	1811      	adds	r1, r2, r0
c0de0578:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de057c:	d925      	bls.n	c0de05ca <handler_sign_tx+0x76>
c0de057e:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de0582:	e039      	b.n	c0de05f8 <handler_sign_tx+0xa4>
c0de0584:	eb09 0506 	add.w	r5, r9, r6
c0de0588:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de058c:	4628      	mov	r0, r5
c0de058e:	f007 fcd7 	bl	c0de7f40 <explicit_bzero>
c0de0592:	2000      	movs	r0, #0
c0de0594:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de0598:	f809 0006 	strb.w	r0, [r9, r6]
c0de059c:	2001      	movs	r0, #1
c0de059e:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de05a2:	4620      	mov	r0, r4
c0de05a4:	f006 faa8 	bl	c0de6af8 <buffer_read_u8>
c0de05a8:	b148      	cbz	r0, c0de05be <handler_sign_tx+0x6a>
c0de05aa:	eb09 0006 	add.w	r0, r9, r6
c0de05ae:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de05b2:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de05b6:	4620      	mov	r0, r4
c0de05b8:	f006 faf1 	bl	c0de6b9e <buffer_read_bip32_path>
c0de05bc:	b9b8      	cbnz	r0, c0de05ee <handler_sign_tx+0x9a>
c0de05be:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de05c2:	e019      	b.n	c0de05f8 <handler_sign_tx+0xa4>
c0de05c4:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de05c8:	e016      	b.n	c0de05f8 <handler_sign_tx+0xa4>
c0de05ca:	eb09 0106 	add.w	r1, r9, r6
c0de05ce:	4408      	add	r0, r1
c0de05d0:	f100 0108 	add.w	r1, r0, #8
c0de05d4:	4620      	mov	r0, r4
c0de05d6:	f006 fb0c 	bl	c0de6bf2 <buffer_move>
c0de05da:	b158      	cbz	r0, c0de05f4 <handler_sign_tx+0xa0>
c0de05dc:	eb09 0106 	add.w	r1, r9, r6
c0de05e0:	6862      	ldr	r2, [r4, #4]
c0de05e2:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de05e6:	4410      	add	r0, r2
c0de05e8:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de05ec:	b14d      	cbz	r5, c0de0602 <handler_sign_tx+0xae>
c0de05ee:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de05f2:	e001      	b.n	c0de05f8 <handler_sign_tx+0xa4>
c0de05f4:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de05f8:	b006      	add	sp, #24
c0de05fa:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de05fe:	f000 b85d 	b.w	c0de06bc <io_send_sw>
c0de0602:	2100      	movs	r1, #0
c0de0604:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de0608:	eb09 0006 	add.w	r0, r9, r6
c0de060c:	f100 0108 	add.w	r1, r0, #8
c0de0610:	9101      	str	r1, [sp, #4]
c0de0612:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de0616:	a801      	add	r0, sp, #4
c0de0618:	f001 fa8c 	bl	c0de1b34 <transaction_deserialize>
c0de061c:	2801      	cmp	r0, #1
c0de061e:	d114      	bne.n	c0de064a <handler_sign_tx+0xf6>
c0de0620:	2001      	movs	r0, #1
c0de0622:	f809 0006 	strb.w	r0, [r9, r6]
c0de0626:	eb09 0006 	add.w	r0, r9, r6
c0de062a:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de062e:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de0632:	9105      	str	r1, [sp, #20]
c0de0634:	f100 0108 	add.w	r1, r0, #8
c0de0638:	9104      	str	r1, [sp, #16]
c0de063a:	a804      	add	r0, sp, #16
c0de063c:	2101      	movs	r1, #1
c0de063e:	f006 ff0d 	bl	c0de745c <cx_keccak_256_hash_iovec>
c0de0642:	b140      	cbz	r0, c0de0656 <handler_sign_tx+0x102>
c0de0644:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de0648:	e001      	b.n	c0de064e <handler_sign_tx+0xfa>
c0de064a:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de064e:	f000 f835 	bl	c0de06bc <io_send_sw>
c0de0652:	b006      	add	sp, #24
c0de0654:	bd70      	pop	{r4, r5, r6, pc}
c0de0656:	4816      	ldr	r0, [pc, #88]	@ (c0de06b0 <handler_sign_tx+0x15c>)
c0de0658:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de065c:	b1a0      	cbz	r0, c0de0688 <handler_sign_tx+0x134>
c0de065e:	4815      	ldr	r0, [pc, #84]	@ (c0de06b4 <handler_sign_tx+0x160>)
c0de0660:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de0664:	b9f9      	cbnz	r1, c0de06a6 <handler_sign_tx+0x152>
c0de0666:	eb09 0406 	add.w	r4, r9, r6
c0de066a:	2101      	movs	r1, #1
c0de066c:	f809 1000 	strb.w	r1, [r9, r0]
c0de0670:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de0674:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de0676:	9400      	str	r4, [sp, #0]
c0de0678:	f001 fa1c 	bl	c0de1ab4 <swap_check_validity>
c0de067c:	b110      	cbz	r0, c0de0684 <handler_sign_tx+0x130>
c0de067e:	2001      	movs	r0, #1
c0de0680:	f001 fae2 	bl	c0de1c48 <validate_transaction>
c0de0684:	2000      	movs	r0, #0
c0de0686:	e7e4      	b.n	c0de0652 <handler_sign_tx+0xfe>
c0de0688:	eb09 0006 	add.w	r0, r9, r6
c0de068c:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0690:	4909      	ldr	r1, [pc, #36]	@ (c0de06b8 <handler_sign_tx+0x164>)
c0de0692:	4479      	add	r1, pc
c0de0694:	f007 fc98 	bl	c0de7fc8 <strcmp>
c0de0698:	b110      	cbz	r0, c0de06a0 <handler_sign_tx+0x14c>
c0de069a:	f001 fd00 	bl	c0de209e <ui_display_transaction>
c0de069e:	e7d8      	b.n	c0de0652 <handler_sign_tx+0xfe>
c0de06a0:	f001 fcfa 	bl	c0de2098 <ui_display_blind_signed_transaction>
c0de06a4:	e7d5      	b.n	c0de0652 <handler_sign_tx+0xfe>
c0de06a6:	20ff      	movs	r0, #255	@ 0xff
c0de06a8:	f007 faf6 	bl	c0de7c98 <os_sched_exit>
c0de06ac:	00000000 	.word	0x00000000
c0de06b0:	00000b5c 	.word	0x00000b5c
c0de06b4:	00000b5d 	.word	0x00000b5d
c0de06b8:	00007b84 	.word	0x00007b84

c0de06bc <io_send_sw>:
c0de06bc:	b580      	push	{r7, lr}
c0de06be:	4602      	mov	r2, r0
c0de06c0:	2000      	movs	r0, #0
c0de06c2:	2100      	movs	r1, #0
c0de06c4:	f006 fc6a 	bl	c0de6f9c <io_send_response_buffers>
c0de06c8:	bd80      	pop	{r7, pc}

c0de06ca <handler_cmd_blake2b512>:
c0de06ca:	b510      	push	{r4, lr}
c0de06cc:	b0d0      	sub	sp, #320	@ 0x140
c0de06ce:	4604      	mov	r4, r0
c0de06d0:	6840      	ldr	r0, [r0, #4]
c0de06d2:	2820      	cmp	r0, #32
c0de06d4:	d10b      	bne.n	c0de06ee <handler_cmd_blake2b512+0x24>
c0de06d6:	6820      	ldr	r0, [r4, #0]
c0de06d8:	a940      	add	r1, sp, #256	@ 0x100
c0de06da:	2220      	movs	r2, #32
c0de06dc:	f001 fce2 	bl	c0de20a4 <zkn_prv_hash>
c0de06e0:	b988      	cbnz	r0, c0de0706 <handler_cmd_blake2b512+0x3c>
c0de06e2:	a840      	add	r0, sp, #256	@ 0x100
c0de06e4:	2140      	movs	r1, #64	@ 0x40
c0de06e6:	f000 f817 	bl	c0de0718 <io_send_response_pointer>
c0de06ea:	2000      	movs	r0, #0
c0de06ec:	e00d      	b.n	c0de070a <handler_cmd_blake2b512+0x40>
c0de06ee:	4668      	mov	r0, sp
c0de06f0:	2109      	movs	r1, #9
c0de06f2:	2240      	movs	r2, #64	@ 0x40
c0de06f4:	f006 fee0 	bl	c0de74b8 <cx_hash_init_ex>
c0de06f8:	b928      	cbnz	r0, c0de0706 <handler_cmd_blake2b512+0x3c>
c0de06fa:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06fe:	4668      	mov	r0, sp
c0de0700:	f006 fedf 	bl	c0de74c2 <cx_hash_update>
c0de0704:	b118      	cbz	r0, c0de070e <handler_cmd_blake2b512+0x44>
c0de0706:	f001 f88d 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de070a:	b050      	add	sp, #320	@ 0x140
c0de070c:	bd10      	pop	{r4, pc}
c0de070e:	4668      	mov	r0, sp
c0de0710:	a940      	add	r1, sp, #256	@ 0x100
c0de0712:	f006 fecc 	bl	c0de74ae <cx_hash_final>
c0de0716:	e7e3      	b.n	c0de06e0 <handler_cmd_blake2b512+0x16>

c0de0718 <io_send_response_pointer>:
c0de0718:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de071a:	2200      	movs	r2, #0
c0de071c:	ab01      	add	r3, sp, #4
c0de071e:	c307      	stmia	r3!, {r0, r1, r2}
c0de0720:	a801      	add	r0, sp, #4
c0de0722:	2101      	movs	r1, #1
c0de0724:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0728:	f006 fc38 	bl	c0de6f9c <io_send_response_buffers>
c0de072c:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de072e <io_send_sw>:
c0de072e:	b580      	push	{r7, lr}
c0de0730:	4602      	mov	r2, r0
c0de0732:	2000      	movs	r0, #0
c0de0734:	2100      	movs	r1, #0
c0de0736:	f006 fc31 	bl	c0de6f9c <io_send_response_buffers>
c0de073a:	bd80      	pop	{r7, pc}

c0de073c <handler_cmd_keccakH>:
c0de073c:	b510      	push	{r4, lr}
c0de073e:	b0f2      	sub	sp, #456	@ 0x1c8
c0de0740:	4604      	mov	r4, r0
c0de0742:	4668      	mov	r0, sp
c0de0744:	2106      	movs	r1, #6
c0de0746:	2220      	movs	r2, #32
c0de0748:	f006 feb6 	bl	c0de74b8 <cx_hash_init_ex>
c0de074c:	b950      	cbnz	r0, c0de0764 <handler_cmd_keccakH+0x28>
c0de074e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0752:	4668      	mov	r0, sp
c0de0754:	f006 feb5 	bl	c0de74c2 <cx_hash_update>
c0de0758:	b920      	cbnz	r0, c0de0764 <handler_cmd_keccakH+0x28>
c0de075a:	4668      	mov	r0, sp
c0de075c:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de075e:	f006 fea6 	bl	c0de74ae <cx_hash_final>
c0de0762:	b118      	cbz	r0, c0de076c <handler_cmd_keccakH+0x30>
c0de0764:	f001 f85e 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de0768:	b072      	add	sp, #456	@ 0x1c8
c0de076a:	bd10      	pop	{r4, pc}
c0de076c:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de076e:	f001 f878 	bl	c0de1862 <OUTLINED_FUNCTION_9>
c0de0772:	2000      	movs	r0, #0
c0de0774:	e7f8      	b.n	c0de0768 <handler_cmd_keccakH+0x2c>
	...

c0de0778 <handler_cmd_bolos_stretch>:
c0de0778:	b510      	push	{r4, lr}
c0de077a:	b0a4      	sub	sp, #144	@ 0x90
c0de077c:	f001 f84e 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de0780:	bb90      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de0782:	ac14      	add	r4, sp, #80	@ 0x50
c0de0784:	491d      	ldr	r1, [pc, #116]	@ (c0de07fc <handler_cmd_bolos_stretch+0x84>)
c0de0786:	2220      	movs	r2, #32
c0de0788:	4620      	mov	r0, r4
c0de078a:	4479      	add	r1, pc
c0de078c:	f007 fbc0 	bl	c0de7f10 <__aeabi_memcpy>
c0de0790:	a80c      	add	r0, sp, #48	@ 0x30
c0de0792:	491b      	ldr	r1, [pc, #108]	@ (c0de0800 <handler_cmd_bolos_stretch+0x88>)
c0de0794:	2220      	movs	r2, #32
c0de0796:	4479      	add	r1, pc
c0de0798:	f007 fbba 	bl	c0de7f10 <__aeabi_memcpy>
c0de079c:	a804      	add	r0, sp, #16
c0de079e:	4919      	ldr	r1, [pc, #100]	@ (c0de0804 <handler_cmd_bolos_stretch+0x8c>)
c0de07a0:	2220      	movs	r2, #32
c0de07a2:	4479      	add	r1, pc
c0de07a4:	f007 fbb4 	bl	c0de7f10 <__aeabi_memcpy>
c0de07a8:	a803      	add	r0, sp, #12
c0de07aa:	2120      	movs	r1, #32
c0de07ac:	4622      	mov	r2, r4
c0de07ae:	f001 f846 	bl	c0de183e <OUTLINED_FUNCTION_5>
c0de07b2:	b9c8      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07b4:	a802      	add	r0, sp, #8
c0de07b6:	aa0c      	add	r2, sp, #48	@ 0x30
c0de07b8:	f001 f837 	bl	c0de182a <OUTLINED_FUNCTION_2>
c0de07bc:	b9a0      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07be:	a801      	add	r0, sp, #4
c0de07c0:	aa04      	add	r2, sp, #16
c0de07c2:	f001 f832 	bl	c0de182a <OUTLINED_FUNCTION_2>
c0de07c6:	b978      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07c8:	4668      	mov	r0, sp
c0de07ca:	f001 f835 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de07ce:	b958      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07d0:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de07d4:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de07d8:	f007 f95e 	bl	c0de7a98 <cx_bn_mod_add>
c0de07dc:	b920      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07de:	9800      	ldr	r0, [sp, #0]
c0de07e0:	a91c      	add	r1, sp, #112	@ 0x70
c0de07e2:	f001 f826 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de07e6:	b118      	cbz	r0, c0de07f0 <handler_cmd_bolos_stretch+0x78>
c0de07e8:	f001 f81c 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de07ec:	b024      	add	sp, #144	@ 0x90
c0de07ee:	bd10      	pop	{r4, pc}
c0de07f0:	a81c      	add	r0, sp, #112	@ 0x70
c0de07f2:	f001 f836 	bl	c0de1862 <OUTLINED_FUNCTION_9>
c0de07f6:	2000      	movs	r0, #0
c0de07f8:	e7f8      	b.n	c0de07ec <handler_cmd_bolos_stretch+0x74>
c0de07fa:	bf00      	nop
c0de07fc:	00007f02 	.word	0x00007f02
c0de0800:	00007e76 	.word	0x00007e76
c0de0804:	00007fea 	.word	0x00007fea

c0de0808 <handler_cmd_Poseidon>:
c0de0808:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de080c:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0810:	4604      	mov	r4, r0
c0de0812:	a860      	add	r0, sp, #384	@ 0x180
c0de0814:	493c      	ldr	r1, [pc, #240]	@ (c0de0908 <handler_cmd_Poseidon+0x100>)
c0de0816:	22a0      	movs	r2, #160	@ 0xa0
c0de0818:	4479      	add	r1, pc
c0de081a:	f007 fb79 	bl	c0de7f10 <__aeabi_memcpy>
c0de081e:	f000 fffd 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de0822:	bb60      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de0824:	2000      	movs	r0, #0
c0de0826:	a948      	add	r1, sp, #288	@ 0x120
c0de0828:	22ff      	movs	r2, #255	@ 0xff
c0de082a:	2860      	cmp	r0, #96	@ 0x60
c0de082c:	d002      	beq.n	c0de0834 <handler_cmd_Poseidon+0x2c>
c0de082e:	540a      	strb	r2, [r1, r0]
c0de0830:	3001      	adds	r0, #1
c0de0832:	e7fa      	b.n	c0de082a <handler_cmd_Poseidon+0x22>
c0de0834:	4935      	ldr	r1, [pc, #212]	@ (c0de090c <handler_cmd_Poseidon+0x104>)
c0de0836:	466d      	mov	r5, sp
c0de0838:	2220      	movs	r2, #32
c0de083a:	4628      	mov	r0, r5
c0de083c:	4479      	add	r1, pc
c0de083e:	f007 fb67 	bl	c0de7f10 <__aeabi_memcpy>
c0de0842:	a809      	add	r0, sp, #36	@ 0x24
c0de0844:	2120      	movs	r1, #32
c0de0846:	462a      	mov	r2, r5
c0de0848:	f000 fff9 	bl	c0de183e <OUTLINED_FUNCTION_5>
c0de084c:	b9b8      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de084e:	a808      	add	r0, sp, #32
c0de0850:	466a      	mov	r2, sp
c0de0852:	f000 ffea 	bl	c0de182a <OUTLINED_FUNCTION_2>
c0de0856:	b990      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de0858:	a80a      	add	r0, sp, #40	@ 0x28
c0de085a:	2120      	movs	r1, #32
c0de085c:	f007 f962 	bl	c0de7b24 <cx_mont_alloc>
c0de0860:	b968      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de0862:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de0864:	a80a      	add	r0, sp, #40	@ 0x28
c0de0866:	f007 f967 	bl	c0de7b38 <cx_mont_init>
c0de086a:	b940      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de086c:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de0870:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0872:	2105      	movs	r1, #5
c0de0874:	2205      	movs	r2, #5
c0de0876:	4640      	mov	r0, r8
c0de0878:	f002 fed4 	bl	c0de3624 <Poseidon_alloc_init>
c0de087c:	b128      	cbz	r0, c0de088a <handler_cmd_Poseidon+0x82>
c0de087e:	f000 ffd1 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de0882:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de0886:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de088a:	2700      	movs	r7, #0
c0de088c:	ae60      	add	r6, sp, #384	@ 0x180
c0de088e:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de0890:	4287      	cmp	r7, r0
c0de0892:	d212      	bcs.n	c0de08ba <handler_cmd_Poseidon+0xb2>
c0de0894:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de0898:	4631      	mov	r1, r6
c0de089a:	2220      	movs	r2, #32
c0de089c:	69e8      	ldr	r0, [r5, #28]
c0de089e:	f007 f8ab 	bl	c0de79f8 <cx_bn_init>
c0de08a2:	2800      	cmp	r0, #0
c0de08a4:	d1eb      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08a6:	69e8      	ldr	r0, [r5, #28]
c0de08a8:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de08aa:	4601      	mov	r1, r0
c0de08ac:	f007 f94e 	bl	c0de7b4c <cx_mont_to_montgomery>
c0de08b0:	3701      	adds	r7, #1
c0de08b2:	3620      	adds	r6, #32
c0de08b4:	2800      	cmp	r0, #0
c0de08b6:	d0ea      	beq.n	c0de088e <handler_cmd_Poseidon+0x86>
c0de08b8:	e7e1      	b.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08ba:	aa08      	add	r2, sp, #32
c0de08bc:	4640      	mov	r0, r8
c0de08be:	2100      	movs	r1, #0
c0de08c0:	2301      	movs	r3, #1
c0de08c2:	f002 ff15 	bl	c0de36f0 <Poseidon>
c0de08c6:	6820      	ldr	r0, [r4, #0]
c0de08c8:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de08ca:	7800      	ldrb	r0, [r0, #0]
c0de08cc:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de08d0:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de08d4:	4601      	mov	r1, r0
c0de08d6:	f007 f945 	bl	c0de7b64 <cx_mont_from_montgomery>
c0de08da:	2800      	cmp	r0, #0
c0de08dc:	d1cf      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08de:	6820      	ldr	r0, [r4, #0]
c0de08e0:	a948      	add	r1, sp, #288	@ 0x120
c0de08e2:	f000 ffa6 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de08e6:	2800      	cmp	r0, #0
c0de08e8:	d1c9      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08ea:	a848      	add	r0, sp, #288	@ 0x120
c0de08ec:	2160      	movs	r1, #96	@ 0x60
c0de08ee:	f7ff ff13 	bl	c0de0718 <io_send_response_pointer>
c0de08f2:	a808      	add	r0, sp, #32
c0de08f4:	f007 f86c 	bl	c0de79d0 <cx_bn_destroy>
c0de08f8:	2800      	cmp	r0, #0
c0de08fa:	d1c0      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08fc:	f007 f84a 	bl	c0de7994 <cx_bn_unlock>
c0de0900:	2800      	cmp	r0, #0
c0de0902:	d1bc      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de0904:	2000      	movs	r0, #0
c0de0906:	e7bc      	b.n	c0de0882 <handler_cmd_Poseidon+0x7a>
c0de0908:	00008054 	.word	0x00008054
c0de090c:	00007fb0 	.word	0x00007fb0

c0de0910 <handler_cmd_Poseidon_ithRC>:
c0de0910:	b570      	push	{r4, r5, r6, lr}
c0de0912:	b0d0      	sub	sp, #320	@ 0x140
c0de0914:	4604      	mov	r4, r0
c0de0916:	f000 ff81 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de091a:	bba0      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de091c:	a848      	add	r0, sp, #288	@ 0x120
c0de091e:	491d      	ldr	r1, [pc, #116]	@ (c0de0994 <handler_cmd_Poseidon_ithRC+0x84>)
c0de0920:	2220      	movs	r2, #32
c0de0922:	4479      	add	r1, pc
c0de0924:	f007 faf4 	bl	c0de7f10 <__aeabi_memcpy>
c0de0928:	ad01      	add	r5, sp, #4
c0de092a:	491b      	ldr	r1, [pc, #108]	@ (c0de0998 <handler_cmd_Poseidon_ithRC+0x88>)
c0de092c:	2220      	movs	r2, #32
c0de092e:	4628      	mov	r0, r5
c0de0930:	4479      	add	r1, pc
c0de0932:	f007 faed 	bl	c0de7f10 <__aeabi_memcpy>
c0de0936:	a809      	add	r0, sp, #36	@ 0x24
c0de0938:	2120      	movs	r1, #32
c0de093a:	462a      	mov	r2, r5
c0de093c:	f000 ff7f 	bl	c0de183e <OUTLINED_FUNCTION_5>
c0de0940:	bb08      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de0942:	a80a      	add	r0, sp, #40	@ 0x28
c0de0944:	2120      	movs	r1, #32
c0de0946:	f007 f8ed 	bl	c0de7b24 <cx_mont_alloc>
c0de094a:	b9e0      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de094c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de094e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0950:	f007 f8f2 	bl	c0de7b38 <cx_mont_init>
c0de0954:	b9b8      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de0956:	a80c      	add	r0, sp, #48	@ 0x30
c0de0958:	ab0a      	add	r3, sp, #40	@ 0x28
c0de095a:	2105      	movs	r1, #5
c0de095c:	2205      	movs	r2, #5
c0de095e:	f002 fe61 	bl	c0de3624 <Poseidon_alloc_init>
c0de0962:	b980      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de0964:	6820      	ldr	r0, [r4, #0]
c0de0966:	7806      	ldrb	r6, [r0, #0]
c0de0968:	ac0c      	add	r4, sp, #48	@ 0x30
c0de096a:	ad48      	add	r5, sp, #288	@ 0x120
c0de096c:	b12e      	cbz	r6, c0de097a <handler_cmd_Poseidon_ithRC+0x6a>
c0de096e:	4620      	mov	r0, r4
c0de0970:	4629      	mov	r1, r5
c0de0972:	f002 fe53 	bl	c0de361c <Poseidon_getNext_RC>
c0de0976:	3e01      	subs	r6, #1
c0de0978:	e7f8      	b.n	c0de096c <handler_cmd_Poseidon_ithRC+0x5c>
c0de097a:	a848      	add	r0, sp, #288	@ 0x120
c0de097c:	f000 ff71 	bl	c0de1862 <OUTLINED_FUNCTION_9>
c0de0980:	f007 f808 	bl	c0de7994 <cx_bn_unlock>
c0de0984:	b118      	cbz	r0, c0de098e <handler_cmd_Poseidon_ithRC+0x7e>
c0de0986:	f000 ff4d 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de098a:	b050      	add	sp, #320	@ 0x140
c0de098c:	bd70      	pop	{r4, r5, r6, pc}
c0de098e:	2000      	movs	r0, #0
c0de0990:	e7fb      	b.n	c0de098a <handler_cmd_Poseidon_ithRC+0x7a>
c0de0992:	bf00      	nop
c0de0994:	00007caa 	.word	0x00007caa
c0de0998:	00007ebc 	.word	0x00007ebc

c0de099c <handler_cmd_tEddsaPoseidon_Kpub>:
c0de099c:	b5b0      	push	{r4, r5, r7, lr}
c0de099e:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de09a2:	6801      	ldr	r1, [r0, #0]
c0de09a4:	2200      	movs	r2, #0
c0de09a6:	23ff      	movs	r3, #255	@ 0xff
c0de09a8:	780d      	ldrb	r5, [r1, #0]
c0de09aa:	ac5a      	add	r4, sp, #360	@ 0x168
c0de09ac:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de09b0:	d002      	beq.n	c0de09b8 <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de09b2:	54a3      	strb	r3, [r4, r2]
c0de09b4:	3201      	adds	r2, #1
c0de09b6:	e7f9      	b.n	c0de09ac <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de09b8:	6840      	ldr	r0, [r0, #4]
c0de09ba:	3101      	adds	r1, #1
c0de09bc:	aa1a      	add	r2, sp, #104	@ 0x68
c0de09be:	3801      	subs	r0, #1
c0de09c0:	b128      	cbz	r0, c0de09ce <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de09c2:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de09c6:	3801      	subs	r0, #1
c0de09c8:	f802 3b01 	strb.w	r3, [r2], #1
c0de09cc:	e7f8      	b.n	c0de09c0 <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de09ce:	f000 ff25 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de09d2:	b9e8      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09d4:	a804      	add	r0, sp, #16
c0de09d6:	f000 ff50 	bl	c0de187a <OUTLINED_FUNCTION_12>
c0de09da:	b9c8      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09dc:	a804      	add	r0, sp, #16
c0de09de:	a901      	add	r1, sp, #4
c0de09e0:	f002 f904 	bl	c0de2bec <tEdwards_alloc>
c0de09e4:	b9a0      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09e6:	a804      	add	r0, sp, #16
c0de09e8:	a91a      	add	r1, sp, #104	@ 0x68
c0de09ea:	aa01      	add	r2, sp, #4
c0de09ec:	f001 fb90 	bl	c0de2110 <zkn_prv2pub>
c0de09f0:	b970      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09f2:	a804      	add	r0, sp, #16
c0de09f4:	f104 0320 	add.w	r3, r4, #32
c0de09f8:	a901      	add	r1, sp, #4
c0de09fa:	f000 ff35 	bl	c0de1868 <OUTLINED_FUNCTION_10>
c0de09fe:	b938      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0a00:	9804      	ldr	r0, [sp, #16]
c0de0a02:	0041      	lsls	r1, r0, #1
c0de0a04:	a85a      	add	r0, sp, #360	@ 0x168
c0de0a06:	f7ff fe87 	bl	c0de0718 <io_send_response_pointer>
c0de0a0a:	f006 ffc3 	bl	c0de7994 <cx_bn_unlock>
c0de0a0e:	b120      	cbz	r0, c0de0a1a <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de0a10:	f000 ff08 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de0a14:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de0a18:	bdb0      	pop	{r4, r5, r7, pc}
c0de0a1a:	2000      	movs	r0, #0
c0de0a1c:	e7fa      	b.n	c0de0a14 <handler_cmd_tEddsaPoseidon_Kpub+0x78>

c0de0a1e <handler_cmd_tEddsaPoseidon_Sign>:
c0de0a1e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0a20:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de0a24:	4606      	mov	r6, r0
c0de0a26:	6800      	ldr	r0, [r0, #0]
c0de0a28:	2100      	movs	r1, #0
c0de0a2a:	22ff      	movs	r2, #255	@ 0xff
c0de0a2c:	7805      	ldrb	r5, [r0, #0]
c0de0a2e:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de0a30:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de0a34:	d002      	beq.n	c0de0a3c <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de0a36:	5462      	strb	r2, [r4, r1]
c0de0a38:	3101      	adds	r1, #1
c0de0a3a:	e7f9      	b.n	c0de0a30 <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de0a3c:	6871      	ldr	r1, [r6, #4]
c0de0a3e:	3001      	adds	r0, #1
c0de0a40:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0a42:	3901      	subs	r1, #1
c0de0a44:	b129      	cbz	r1, c0de0a52 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de0a46:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de0a4a:	3901      	subs	r1, #1
c0de0a4c:	f802 3b01 	strb.w	r3, [r2], #1
c0de0a50:	e7f8      	b.n	c0de0a44 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de0a52:	f000 fee3 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de0a56:	bba0      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a58:	6830      	ldr	r0, [r6, #0]
c0de0a5a:	aa0a      	add	r2, sp, #40	@ 0x28
c0de0a5c:	2100      	movs	r1, #0
c0de0a5e:	ab02      	add	r3, sp, #8
c0de0a60:	2920      	cmp	r1, #32
c0de0a62:	d007      	beq.n	c0de0a74 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de0a64:	1846      	adds	r6, r0, r1
c0de0a66:	7877      	ldrb	r7, [r6, #1]
c0de0a68:	5457      	strb	r7, [r2, r1]
c0de0a6a:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de0a6e:	545e      	strb	r6, [r3, r1]
c0de0a70:	3101      	adds	r1, #1
c0de0a72:	e7f5      	b.n	c0de0a60 <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de0a74:	a815      	add	r0, sp, #84	@ 0x54
c0de0a76:	f000 ff00 	bl	c0de187a <OUTLINED_FUNCTION_12>
c0de0a7a:	bb10      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a7c:	a815      	add	r0, sp, #84	@ 0x54
c0de0a7e:	a912      	add	r1, sp, #72	@ 0x48
c0de0a80:	f002 f8b4 	bl	c0de2bec <tEdwards_alloc>
c0de0a84:	b9e8      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a86:	a815      	add	r0, sp, #84	@ 0x54
c0de0a88:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a8a:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a8c:	f001 fb40 	bl	c0de2110 <zkn_prv2pub>
c0de0a90:	b9b8      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a92:	a815      	add	r0, sp, #84	@ 0x54
c0de0a94:	f104 0320 	add.w	r3, r4, #32
c0de0a98:	a912      	add	r1, sp, #72	@ 0x48
c0de0a9a:	f000 fee5 	bl	c0de1868 <OUTLINED_FUNCTION_10>
c0de0a9e:	b980      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0aa0:	2020      	movs	r0, #32
c0de0aa2:	e9cd 0400 	strd	r0, r4, [sp]
c0de0aa6:	a815      	add	r0, sp, #84	@ 0x54
c0de0aa8:	a90a      	add	r1, sp, #40	@ 0x28
c0de0aaa:	aa12      	add	r2, sp, #72	@ 0x48
c0de0aac:	ab02      	add	r3, sp, #8
c0de0aae:	f001 fb57 	bl	c0de2160 <EddsaPoseidon_Sign_final>
c0de0ab2:	b930      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0ab4:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0ab6:	2160      	movs	r1, #96	@ 0x60
c0de0ab8:	f7ff fe2e 	bl	c0de0718 <io_send_response_pointer>
c0de0abc:	f006 ff6a 	bl	c0de7994 <cx_bn_unlock>
c0de0ac0:	b120      	cbz	r0, c0de0acc <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0ac2:	f000 feaf 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de0ac6:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de0aca:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0acc:	2000      	movs	r0, #0
c0de0ace:	e7fa      	b.n	c0de0ac6 <handler_cmd_tEddsaPoseidon_Sign+0xa8>

c0de0ad0 <handler_cmd_tEddsaPoseidon>:
c0de0ad0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0ad4:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0ad6:	4605      	mov	r5, r0
c0de0ad8:	6800      	ldr	r0, [r0, #0]
c0de0ada:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de0ade:	21ff      	movs	r1, #255	@ 0xff
c0de0ae0:	7806      	ldrb	r6, [r0, #0]
c0de0ae2:	2000      	movs	r0, #0
c0de0ae4:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0ae8:	d002      	beq.n	c0de0af0 <handler_cmd_tEddsaPoseidon+0x20>
c0de0aea:	5421      	strb	r1, [r4, r0]
c0de0aec:	3001      	adds	r0, #1
c0de0aee:	e7f9      	b.n	c0de0ae4 <handler_cmd_tEddsaPoseidon+0x14>
c0de0af0:	f000 fe94 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de0af4:	2800      	cmp	r0, #0
c0de0af6:	d154      	bne.n	c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0af8:	af14      	add	r7, sp, #80	@ 0x50
c0de0afa:	4631      	mov	r1, r6
c0de0afc:	4638      	mov	r0, r7
c0de0afe:	f002 f9f5 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de0b02:	2800      	cmp	r0, #0
c0de0b04:	d14d      	bne.n	c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b06:	f107 060c 	add.w	r6, r7, #12
c0de0b0a:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0b0e:	4638      	mov	r0, r7
c0de0b10:	4631      	mov	r1, r6
c0de0b12:	f002 f994 	bl	c0de2e3e <tEdwards_IsOnCurve>
c0de0b16:	2800      	cmp	r0, #0
c0de0b18:	d143      	bne.n	c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b1a:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0b1e:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0b22:	2901      	cmp	r1, #1
c0de0b24:	d13d      	bne.n	c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b26:	4922      	ldr	r1, [pc, #136]	@ (c0de0bb0 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0b28:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0b2c:	2220      	movs	r2, #32
c0de0b2e:	4650      	mov	r0, sl
c0de0b30:	4479      	add	r1, pc
c0de0b32:	f007 f9ed 	bl	c0de7f10 <__aeabi_memcpy>
c0de0b36:	af01      	add	r7, sp, #4
c0de0b38:	491e      	ldr	r1, [pc, #120]	@ (c0de0bb4 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0b3a:	2220      	movs	r2, #32
c0de0b3c:	4638      	mov	r0, r7
c0de0b3e:	4479      	add	r1, pc
c0de0b40:	f007 f9e6 	bl	c0de7f10 <__aeabi_memcpy>
c0de0b44:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0b48:	a814      	add	r0, sp, #80	@ 0x50
c0de0b4a:	4651      	mov	r1, sl
c0de0b4c:	463a      	mov	r2, r7
c0de0b4e:	4643      	mov	r3, r8
c0de0b50:	f002 fbbd 	bl	c0de32ce <tEdwards_alloc_init>
c0de0b54:	bb28      	cbnz	r0, c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b56:	a814      	add	r0, sp, #80	@ 0x50
c0de0b58:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0b5c:	4631      	mov	r1, r6
c0de0b5e:	f002 f96e 	bl	c0de2e3e <tEdwards_IsOnCurve>
c0de0b62:	b9f0      	cbnz	r0, c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b64:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0b68:	2801      	cmp	r0, #1
c0de0b6a:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0b6e:	d118      	bne.n	c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b70:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0b74:	f8cd 8000 	str.w	r8, [sp]
c0de0b78:	1c42      	adds	r2, r0, #1
c0de0b7a:	1e4b      	subs	r3, r1, #1
c0de0b7c:	a814      	add	r0, sp, #80	@ 0x50
c0de0b7e:	4631      	mov	r1, r6
c0de0b80:	f002 fc2a 	bl	c0de33d8 <tEdwards_scalarMul>
c0de0b84:	b968      	cbnz	r0, c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b86:	a814      	add	r0, sp, #80	@ 0x50
c0de0b88:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b8c:	a911      	add	r1, sp, #68	@ 0x44
c0de0b8e:	f000 fe6b 	bl	c0de1868 <OUTLINED_FUNCTION_10>
c0de0b92:	b930      	cbnz	r0, c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b94:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b98:	f000 fe5b 	bl	c0de1852 <OUTLINED_FUNCTION_7>
c0de0b9c:	f006 fefa 	bl	c0de7994 <cx_bn_unlock>
c0de0ba0:	b120      	cbz	r0, c0de0bac <handler_cmd_tEddsaPoseidon+0xdc>
c0de0ba2:	f000 fe3f 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de0ba6:	b06b      	add	sp, #428	@ 0x1ac
c0de0ba8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0bac:	2000      	movs	r0, #0
c0de0bae:	e7fa      	b.n	c0de0ba6 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0bb0:	00007cdc 	.word	0x00007cdc
c0de0bb4:	00007cee 	.word	0x00007cee

c0de0bb8 <handler_cmd_tEdwards>:
c0de0bb8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0bba:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0bbc:	4605      	mov	r5, r0
c0de0bbe:	6840      	ldr	r0, [r0, #4]
c0de0bc0:	2841      	cmp	r0, #65	@ 0x41
c0de0bc2:	d801      	bhi.n	c0de0bc8 <handler_cmd_tEdwards+0x10>
c0de0bc4:	2802      	cmp	r0, #2
c0de0bc6:	d202      	bcs.n	c0de0bce <handler_cmd_tEdwards+0x16>
c0de0bc8:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0bcc:	e015      	b.n	c0de0bfa <handler_cmd_tEdwards+0x42>
c0de0bce:	6828      	ldr	r0, [r5, #0]
c0de0bd0:	21ff      	movs	r1, #255	@ 0xff
c0de0bd2:	7806      	ldrb	r6, [r0, #0]
c0de0bd4:	2000      	movs	r0, #0
c0de0bd6:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0bd8:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0bdc:	d002      	beq.n	c0de0be4 <handler_cmd_tEdwards+0x2c>
c0de0bde:	5421      	strb	r1, [r4, r0]
c0de0be0:	3001      	adds	r0, #1
c0de0be2:	e7f9      	b.n	c0de0bd8 <handler_cmd_tEdwards+0x20>
c0de0be4:	f000 fe1a 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de0be8:	b920      	cbnz	r0, c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0bea:	a819      	add	r0, sp, #100	@ 0x64
c0de0bec:	4631      	mov	r1, r6
c0de0bee:	f002 f97d 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de0bf2:	b120      	cbz	r0, c0de0bfe <handler_cmd_tEdwards+0x46>
c0de0bf4:	b280      	uxth	r0, r0
c0de0bf6:	f7ff fd9a 	bl	c0de072e <io_send_sw>
c0de0bfa:	b06f      	add	sp, #444	@ 0x1bc
c0de0bfc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0bfe:	2e02      	cmp	r6, #2
c0de0c00:	d00c      	beq.n	c0de0c1c <handler_cmd_tEdwards+0x64>
c0de0c02:	2e01      	cmp	r6, #1
c0de0c04:	d128      	bne.n	c0de0c58 <handler_cmd_tEdwards+0xa0>
c0de0c06:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0c08:	4942      	ldr	r1, [pc, #264]	@ (c0de0d14 <handler_cmd_tEdwards+0x15c>)
c0de0c0a:	2220      	movs	r2, #32
c0de0c0c:	4630      	mov	r0, r6
c0de0c0e:	4479      	add	r1, pc
c0de0c10:	f007 f97e 	bl	c0de7f10 <__aeabi_memcpy>
c0de0c14:	af03      	add	r7, sp, #12
c0de0c16:	4940      	ldr	r1, [pc, #256]	@ (c0de0d18 <handler_cmd_tEdwards+0x160>)
c0de0c18:	4479      	add	r1, pc
c0de0c1a:	e009      	b.n	c0de0c30 <handler_cmd_tEdwards+0x78>
c0de0c1c:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0c1e:	493f      	ldr	r1, [pc, #252]	@ (c0de0d1c <handler_cmd_tEdwards+0x164>)
c0de0c20:	2220      	movs	r2, #32
c0de0c22:	4630      	mov	r0, r6
c0de0c24:	4479      	add	r1, pc
c0de0c26:	f007 f973 	bl	c0de7f10 <__aeabi_memcpy>
c0de0c2a:	af03      	add	r7, sp, #12
c0de0c2c:	493c      	ldr	r1, [pc, #240]	@ (c0de0d20 <handler_cmd_tEdwards+0x168>)
c0de0c2e:	4479      	add	r1, pc
c0de0c30:	4638      	mov	r0, r7
c0de0c32:	2220      	movs	r2, #32
c0de0c34:	f007 f96c 	bl	c0de7f10 <__aeabi_memcpy>
c0de0c38:	a819      	add	r0, sp, #100	@ 0x64
c0de0c3a:	ab16      	add	r3, sp, #88	@ 0x58
c0de0c3c:	4631      	mov	r1, r6
c0de0c3e:	463a      	mov	r2, r7
c0de0c40:	f002 fb45 	bl	c0de32ce <tEdwards_alloc_init>
c0de0c44:	2800      	cmp	r0, #0
c0de0c46:	d1d5      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c48:	a819      	add	r0, sp, #100	@ 0x64
c0de0c4a:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0c4c:	aa03      	add	r2, sp, #12
c0de0c4e:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0c50:	f002 fb3d 	bl	c0de32ce <tEdwards_alloc_init>
c0de0c54:	2800      	cmp	r0, #0
c0de0c56:	d1cd      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c58:	2000      	movs	r0, #0
c0de0c5a:	f10d 020b 	add.w	r2, sp, #11
c0de0c5e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0c62:	a819      	add	r0, sp, #100	@ 0x64
c0de0c64:	a916      	add	r1, sp, #88	@ 0x58
c0de0c66:	f002 f8ea 	bl	c0de2e3e <tEdwards_IsOnCurve>
c0de0c6a:	2800      	cmp	r0, #0
c0de0c6c:	d1c2      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c6e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c72:	2801      	cmp	r0, #1
c0de0c74:	d142      	bne.n	c0de0cfc <handler_cmd_tEdwards+0x144>
c0de0c76:	a819      	add	r0, sp, #100	@ 0x64
c0de0c78:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c7a:	f10d 020b 	add.w	r2, sp, #11
c0de0c7e:	4631      	mov	r1, r6
c0de0c80:	f002 f8dd 	bl	c0de2e3e <tEdwards_IsOnCurve>
c0de0c84:	2800      	cmp	r0, #0
c0de0c86:	d1b5      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c88:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c8c:	2801      	cmp	r0, #1
c0de0c8e:	d138      	bne.n	c0de0d02 <handler_cmd_tEdwards+0x14a>
c0de0c90:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c92:	f10d 010b 	add.w	r1, sp, #11
c0de0c96:	f006 ff3b 	bl	c0de7b10 <cx_bn_is_prime>
c0de0c9a:	2800      	cmp	r0, #0
c0de0c9c:	d1aa      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c9e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0ca2:	2801      	cmp	r0, #1
c0de0ca4:	d130      	bne.n	c0de0d08 <handler_cmd_tEdwards+0x150>
c0de0ca6:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0ca8:	f10d 010b 	add.w	r1, sp, #11
c0de0cac:	f006 ff30 	bl	c0de7b10 <cx_bn_is_prime>
c0de0cb0:	2800      	cmp	r0, #0
c0de0cb2:	d19f      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0cb4:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0cb8:	2801      	cmp	r0, #1
c0de0cba:	d128      	bne.n	c0de0d0e <handler_cmd_tEdwards+0x156>
c0de0cbc:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0cc0:	9600      	str	r6, [sp, #0]
c0de0cc2:	1c42      	adds	r2, r0, #1
c0de0cc4:	1e4b      	subs	r3, r1, #1
c0de0cc6:	a819      	add	r0, sp, #100	@ 0x64
c0de0cc8:	a916      	add	r1, sp, #88	@ 0x58
c0de0cca:	f002 fb85 	bl	c0de33d8 <tEdwards_scalarMul>
c0de0cce:	2800      	cmp	r0, #0
c0de0cd0:	d190      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0cd2:	a819      	add	r0, sp, #100	@ 0x64
c0de0cd4:	f104 0320 	add.w	r3, r4, #32
c0de0cd8:	a913      	add	r1, sp, #76	@ 0x4c
c0de0cda:	f000 fdc5 	bl	c0de1868 <OUTLINED_FUNCTION_10>
c0de0cde:	2800      	cmp	r0, #0
c0de0ce0:	f47f af88 	bne.w	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0ce4:	f006 fe56 	bl	c0de7994 <cx_bn_unlock>
c0de0ce8:	2800      	cmp	r0, #0
c0de0cea:	f47f af83 	bne.w	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0cee:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0cf0:	0041      	lsls	r1, r0, #1
c0de0cf2:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0cf4:	f7ff fd10 	bl	c0de0718 <io_send_response_pointer>
c0de0cf8:	2000      	movs	r0, #0
c0de0cfa:	e77e      	b.n	c0de0bfa <handler_cmd_tEdwards+0x42>
c0de0cfc:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0d00:	e779      	b.n	c0de0bf6 <handler_cmd_tEdwards+0x3e>
c0de0d02:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0d06:	e776      	b.n	c0de0bf6 <handler_cmd_tEdwards+0x3e>
c0de0d08:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0d0c:	e773      	b.n	c0de0bf6 <handler_cmd_tEdwards+0x3e>
c0de0d0e:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0d12:	e770      	b.n	c0de0bf6 <handler_cmd_tEdwards+0x3e>
c0de0d14:	00007a1e 	.word	0x00007a1e
c0de0d18:	00007a94 	.word	0x00007a94
c0de0d1c:	00007a28 	.word	0x00007a28
c0de0d20:	0000795e 	.word	0x0000795e

c0de0d24 <handler_cmd_Interpolate>:
c0de0d24:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0d28:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0d2c:	4605      	mov	r5, r0
c0de0d2e:	6800      	ldr	r0, [r0, #0]
c0de0d30:	22ff      	movs	r2, #255	@ 0xff
c0de0d32:	7804      	ldrb	r4, [r0, #0]
c0de0d34:	2000      	movs	r0, #0
c0de0d36:	a944      	add	r1, sp, #272	@ 0x110
c0de0d38:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0d3c:	d002      	beq.n	c0de0d44 <handler_cmd_Interpolate+0x20>
c0de0d3e:	540a      	strb	r2, [r1, r0]
c0de0d40:	3001      	adds	r0, #1
c0de0d42:	e7f9      	b.n	c0de0d38 <handler_cmd_Interpolate+0x14>
c0de0d44:	f000 fd6a 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de0d48:	bb28      	cbnz	r0, c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0d4a:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0d4e:	4621      	mov	r1, r4
c0de0d50:	4640      	mov	r0, r8
c0de0d52:	f002 f8cb 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de0d56:	b9f0      	cbnz	r0, c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0d58:	a827      	add	r0, sp, #156	@ 0x9c
c0de0d5a:	f000 fd6d 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de0d5e:	b9d0      	cbnz	r0, c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0d60:	6828      	ldr	r0, [r5, #0]
c0de0d62:	2100      	movs	r1, #0
c0de0d64:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d66:	3001      	adds	r0, #1
c0de0d68:	2960      	cmp	r1, #96	@ 0x60
c0de0d6a:	d003      	beq.n	c0de0d74 <handler_cmd_Interpolate+0x50>
c0de0d6c:	5c43      	ldrb	r3, [r0, r1]
c0de0d6e:	5453      	strb	r3, [r2, r1]
c0de0d70:	3101      	adds	r1, #1
c0de0d72:	e7f9      	b.n	c0de0d68 <handler_cmd_Interpolate+0x44>
c0de0d74:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d76:	2100      	movs	r1, #0
c0de0d78:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d7a:	1d0c      	adds	r4, r1, #4
c0de0d7c:	2c10      	cmp	r4, #16
c0de0d7e:	d010      	beq.n	c0de0da2 <handler_cmd_Interpolate+0x7e>
c0de0d80:	1878      	adds	r0, r7, r1
c0de0d82:	2120      	movs	r1, #32
c0de0d84:	2320      	movs	r3, #32
c0de0d86:	f102 0520 	add.w	r5, r2, #32
c0de0d8a:	f006 fe15 	bl	c0de79b8 <cx_bn_alloc_init>
c0de0d8e:	2800      	cmp	r0, #0
c0de0d90:	462a      	mov	r2, r5
c0de0d92:	4621      	mov	r1, r4
c0de0d94:	d0f1      	beq.n	c0de0d7a <handler_cmd_Interpolate+0x56>
c0de0d96:	f000 fd45 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de0d9a:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0d9e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0da2:	f108 000c 	add.w	r0, r8, #12
c0de0da6:	f04f 0a00 	mov.w	sl, #0
c0de0daa:	2601      	movs	r6, #1
c0de0dac:	f10d 0b0c 	add.w	fp, sp, #12
c0de0db0:	9001      	str	r0, [sp, #4]
c0de0db2:	ad44      	add	r5, sp, #272	@ 0x110
c0de0db4:	f1ba 0f0c 	cmp.w	sl, #12
c0de0db8:	d03b      	beq.n	c0de0e32 <handler_cmd_Interpolate+0x10e>
c0de0dba:	a828      	add	r0, sp, #160	@ 0xa0
c0de0dbc:	2120      	movs	r1, #32
c0de0dbe:	eb00 040a 	add.w	r4, r0, sl
c0de0dc2:	4620      	mov	r0, r4
c0de0dc4:	f006 fdee 	bl	c0de79a4 <cx_bn_alloc>
c0de0dc8:	2800      	cmp	r0, #0
c0de0dca:	d1e4      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0dcc:	6820      	ldr	r0, [r4, #0]
c0de0dce:	4631      	mov	r1, r6
c0de0dd0:	f006 fe28 	bl	c0de7a24 <cx_bn_set_u32>
c0de0dd4:	2800      	cmp	r0, #0
c0de0dd6:	d1de      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0dd8:	4640      	mov	r0, r8
c0de0dda:	4659      	mov	r1, fp
c0de0ddc:	f001 ff06 	bl	c0de2bec <tEdwards_alloc>
c0de0de0:	2800      	cmp	r0, #0
c0de0de2:	d1d8      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0de4:	9602      	str	r6, [sp, #8]
c0de0de6:	eb07 060a 	add.w	r6, r7, sl
c0de0dea:	9901      	ldr	r1, [sp, #4]
c0de0dec:	4640      	mov	r0, r8
c0de0dee:	465b      	mov	r3, fp
c0de0df0:	4632      	mov	r2, r6
c0de0df2:	f002 fa8b 	bl	c0de330c <tEdwards_scalarMul_bn>
c0de0df6:	2800      	cmp	r0, #0
c0de0df8:	d1cd      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0dfa:	6820      	ldr	r0, [r4, #0]
c0de0dfc:	4629      	mov	r1, r5
c0de0dfe:	f000 fd18 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de0e02:	2800      	cmp	r0, #0
c0de0e04:	d1c7      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e06:	6830      	ldr	r0, [r6, #0]
c0de0e08:	f105 0120 	add.w	r1, r5, #32
c0de0e0c:	f000 fd11 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de0e10:	2800      	cmp	r0, #0
c0de0e12:	d1c0      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e14:	4640      	mov	r0, r8
c0de0e16:	4659      	mov	r1, fp
c0de0e18:	f002 fa19 	bl	c0de324e <tEdwards_normalize>
c0de0e1c:	9e02      	ldr	r6, [sp, #8]
c0de0e1e:	3540      	adds	r5, #64	@ 0x40
c0de0e20:	f10b 0b0c 	add.w	fp, fp, #12
c0de0e24:	f10a 0a04 	add.w	sl, sl, #4
c0de0e28:	af2b      	add	r7, sp, #172	@ 0xac
c0de0e2a:	3601      	adds	r6, #1
c0de0e2c:	2800      	cmp	r0, #0
c0de0e2e:	d0c1      	beq.n	c0de0db4 <handler_cmd_Interpolate+0x90>
c0de0e30:	e7b1      	b.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e32:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0e34:	2303      	movs	r3, #3
c0de0e36:	9000      	str	r0, [sp, #0]
c0de0e38:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e3a:	a928      	add	r1, sp, #160	@ 0xa0
c0de0e3c:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0e3e:	f001 fb46 	bl	c0de24ce <zkn_frost_interpolate_secrets>
c0de0e42:	2800      	cmp	r0, #0
c0de0e44:	d1a7      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e46:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0e48:	a944      	add	r1, sp, #272	@ 0x110
c0de0e4a:	2220      	movs	r2, #32
c0de0e4c:	31c0      	adds	r1, #192	@ 0xc0
c0de0e4e:	f006 fdf3 	bl	c0de7a38 <cx_bn_export>
c0de0e52:	2800      	cmp	r0, #0
c0de0e54:	d19f      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e56:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e58:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0e5a:	ab03      	add	r3, sp, #12
c0de0e5c:	9901      	ldr	r1, [sp, #4]
c0de0e5e:	f002 fa55 	bl	c0de330c <tEdwards_scalarMul_bn>
c0de0e62:	2800      	cmp	r0, #0
c0de0e64:	d197      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e66:	a844      	add	r0, sp, #272	@ 0x110
c0de0e68:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e6c:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e6e:	a903      	add	r1, sp, #12
c0de0e70:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e72:	f002 f9c6 	bl	c0de3202 <tEdwards_export>
c0de0e76:	2800      	cmp	r0, #0
c0de0e78:	d18d      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e7a:	a844      	add	r0, sp, #272	@ 0x110
c0de0e7c:	f000 fce9 	bl	c0de1852 <OUTLINED_FUNCTION_7>
c0de0e80:	f006 fd88 	bl	c0de7994 <cx_bn_unlock>
c0de0e84:	2800      	cmp	r0, #0
c0de0e86:	f47f af86 	bne.w	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e8a:	2000      	movs	r0, #0
c0de0e8c:	e785      	b.n	c0de0d9a <handler_cmd_Interpolate+0x76>

c0de0e8e <handler_cmd_Split>:
c0de0e8e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0e92:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0e96:	4604      	mov	r4, r0
c0de0e98:	6800      	ldr	r0, [r0, #0]
c0de0e9a:	22ff      	movs	r2, #255	@ 0xff
c0de0e9c:	7805      	ldrb	r5, [r0, #0]
c0de0e9e:	2000      	movs	r0, #0
c0de0ea0:	a948      	add	r1, sp, #288	@ 0x120
c0de0ea2:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0ea6:	d002      	beq.n	c0de0eae <handler_cmd_Split+0x20>
c0de0ea8:	540a      	strb	r2, [r1, r0]
c0de0eaa:	3001      	adds	r0, #1
c0de0eac:	e7f9      	b.n	c0de0ea2 <handler_cmd_Split+0x14>
c0de0eae:	f000 fcb5 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de0eb2:	bb90      	cbnz	r0, c0de0f1a <handler_cmd_Split+0x8c>
c0de0eb4:	a832      	add	r0, sp, #200	@ 0xc8
c0de0eb6:	f000 fce0 	bl	c0de187a <OUTLINED_FUNCTION_12>
c0de0eba:	bb70      	cbnz	r0, c0de0f1a <handler_cmd_Split+0x8c>
c0de0ebc:	6820      	ldr	r0, [r4, #0]
c0de0ebe:	2200      	movs	r2, #0
c0de0ec0:	a91a      	add	r1, sp, #104	@ 0x68
c0de0ec2:	3002      	adds	r0, #2
c0de0ec4:	2a20      	cmp	r2, #32
c0de0ec6:	d003      	beq.n	c0de0ed0 <handler_cmd_Split+0x42>
c0de0ec8:	5c83      	ldrb	r3, [r0, r2]
c0de0eca:	548b      	strb	r3, [r1, r2]
c0de0ecc:	3201      	adds	r2, #1
c0de0ece:	e7f9      	b.n	c0de0ec4 <handler_cmd_Split+0x36>
c0de0ed0:	6862      	ldr	r2, [r4, #4]
c0de0ed2:	3a02      	subs	r2, #2
c0de0ed4:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0ed8:	f101 0220 	add.w	r2, r1, #32
c0de0edc:	a888      	add	r0, sp, #544	@ 0x220
c0de0ede:	2101      	movs	r1, #1
c0de0ee0:	f006 fac9 	bl	c0de7476 <cx_blake2b_512_hash_iovec>
c0de0ee4:	b9c8      	cbnz	r0, c0de0f1a <handler_cmd_Split+0x8c>
c0de0ee6:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0ee8:	2100      	movs	r1, #0
c0de0eea:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0eec:	1d0d      	adds	r5, r1, #4
c0de0eee:	2d10      	cmp	r5, #16
c0de0ef0:	d00b      	beq.n	c0de0f0a <handler_cmd_Split+0x7c>
c0de0ef2:	1860      	adds	r0, r4, r1
c0de0ef4:	2120      	movs	r1, #32
c0de0ef6:	2320      	movs	r3, #32
c0de0ef8:	f102 0620 	add.w	r6, r2, #32
c0de0efc:	f006 fd5c 	bl	c0de79b8 <cx_bn_alloc_init>
c0de0f00:	2800      	cmp	r0, #0
c0de0f02:	4632      	mov	r2, r6
c0de0f04:	4629      	mov	r1, r5
c0de0f06:	d0f1      	beq.n	c0de0eec <handler_cmd_Split+0x5e>
c0de0f08:	e007      	b.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f0a:	a80a      	add	r0, sp, #40	@ 0x28
c0de0f0c:	f000 fc94 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de0f10:	b918      	cbnz	r0, c0de0f1a <handler_cmd_Split+0x8c>
c0de0f12:	a809      	add	r0, sp, #36	@ 0x24
c0de0f14:	f000 fc90 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de0f18:	b128      	cbz	r0, c0de0f26 <handler_cmd_Split+0x98>
c0de0f1a:	f000 fc83 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de0f1e:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0f22:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0f26:	f04f 0800 	mov.w	r8, #0
c0de0f2a:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0f2e:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0f30:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0f34:	2400      	movs	r4, #0
c0de0f36:	f1b8 0f10 	cmp.w	r8, #16
c0de0f3a:	d04d      	beq.n	c0de0fd8 <handler_cmd_Split+0x14a>
c0de0f3c:	a805      	add	r0, sp, #20
c0de0f3e:	2120      	movs	r1, #32
c0de0f40:	eb00 0708 	add.w	r7, r0, r8
c0de0f44:	4638      	mov	r0, r7
c0de0f46:	f006 fd2d 	bl	c0de79a4 <cx_bn_alloc>
c0de0f4a:	2800      	cmp	r0, #0
c0de0f4c:	d1e5      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f4e:	a801      	add	r0, sp, #4
c0de0f50:	2120      	movs	r1, #32
c0de0f52:	eb00 0508 	add.w	r5, r0, r8
c0de0f56:	4628      	mov	r0, r5
c0de0f58:	f006 fd24 	bl	c0de79a4 <cx_bn_alloc>
c0de0f5c:	2800      	cmp	r0, #0
c0de0f5e:	d1dc      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f60:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f62:	4621      	mov	r1, r4
c0de0f64:	f006 fd5e 	bl	c0de7a24 <cx_bn_set_u32>
c0de0f68:	2800      	cmp	r0, #0
c0de0f6a:	d1d6      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f6c:	6828      	ldr	r0, [r5, #0]
c0de0f6e:	4621      	mov	r1, r4
c0de0f70:	f006 fd58 	bl	c0de7a24 <cx_bn_set_u32>
c0de0f74:	2800      	cmp	r0, #0
c0de0f76:	d1d0      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f78:	4650      	mov	r0, sl
c0de0f7a:	4631      	mov	r1, r6
c0de0f7c:	f001 fe36 	bl	c0de2bec <tEdwards_alloc>
c0de0f80:	2800      	cmp	r0, #0
c0de0f82:	d1ca      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f84:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f88:	2202      	movs	r2, #2
c0de0f8a:	9000      	str	r0, [sp, #0]
c0de0f8c:	4650      	mov	r0, sl
c0de0f8e:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f90:	f001 fadf 	bl	c0de2552 <zkn_evalshare>
c0de0f94:	2800      	cmp	r0, #0
c0de0f96:	d1c0      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f98:	6838      	ldr	r0, [r7, #0]
c0de0f9a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f9c:	f006 fd38 	bl	c0de7a10 <cx_bn_copy>
c0de0fa0:	2800      	cmp	r0, #0
c0de0fa2:	d1ba      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0fa4:	4650      	mov	r0, sl
c0de0fa6:	4631      	mov	r1, r6
c0de0fa8:	f002 f951 	bl	c0de324e <tEdwards_normalize>
c0de0fac:	2800      	cmp	r0, #0
c0de0fae:	d1b4      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0fb0:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0fb2:	4659      	mov	r1, fp
c0de0fb4:	f000 fc3d 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de0fb8:	2800      	cmp	r0, #0
c0de0fba:	d1ae      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0fbc:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0fbe:	f10b 0120 	add.w	r1, fp, #32
c0de0fc2:	f000 fc36 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de0fc6:	360c      	adds	r6, #12
c0de0fc8:	3401      	adds	r4, #1
c0de0fca:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0fce:	f108 0804 	add.w	r8, r8, #4
c0de0fd2:	2800      	cmp	r0, #0
c0de0fd4:	d0af      	beq.n	c0de0f36 <handler_cmd_Split+0xa8>
c0de0fd6:	e7a0      	b.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0fd8:	2100      	movs	r1, #0
c0de0fda:	1d0c      	adds	r4, r1, #4
c0de0fdc:	2c10      	cmp	r4, #16
c0de0fde:	d007      	beq.n	c0de0ff0 <handler_cmd_Split+0x162>
c0de0fe0:	a817      	add	r0, sp, #92	@ 0x5c
c0de0fe2:	4408      	add	r0, r1
c0de0fe4:	f006 fcf4 	bl	c0de79d0 <cx_bn_destroy>
c0de0fe8:	2800      	cmp	r0, #0
c0de0fea:	4621      	mov	r1, r4
c0de0fec:	d0f5      	beq.n	c0de0fda <handler_cmd_Split+0x14c>
c0de0fee:	e794      	b.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0ff0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0ff2:	2303      	movs	r3, #3
c0de0ff4:	9000      	str	r0, [sp, #0]
c0de0ff6:	a801      	add	r0, sp, #4
c0de0ff8:	1d01      	adds	r1, r0, #4
c0de0ffa:	a805      	add	r0, sp, #20
c0de0ffc:	1d02      	adds	r2, r0, #4
c0de0ffe:	a832      	add	r0, sp, #200	@ 0xc8
c0de1000:	f001 fa65 	bl	c0de24ce <zkn_frost_interpolate_secrets>
c0de1004:	2800      	cmp	r0, #0
c0de1006:	f47f af88 	bne.w	c0de0f1a <handler_cmd_Split+0x8c>
c0de100a:	a848      	add	r0, sp, #288	@ 0x120
c0de100c:	f000 fc21 	bl	c0de1852 <OUTLINED_FUNCTION_7>
c0de1010:	f006 fcc0 	bl	c0de7994 <cx_bn_unlock>
c0de1014:	2800      	cmp	r0, #0
c0de1016:	f47f af80 	bne.w	c0de0f1a <handler_cmd_Split+0x8c>
c0de101a:	2000      	movs	r0, #0
c0de101c:	e77f      	b.n	c0de0f1e <handler_cmd_Split+0x90>

c0de101e <handler_cmd_frostH>:
c0de101e:	b5b0      	push	{r4, r5, r7, lr}
c0de1020:	b0d8      	sub	sp, #352	@ 0x160
c0de1022:	4604      	mov	r4, r0
c0de1024:	f000 fbfa 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de1028:	2800      	cmp	r0, #0
c0de102a:	d142      	bne.n	c0de10b2 <handler_cmd_frostH+0x94>
c0de102c:	6820      	ldr	r0, [r4, #0]
c0de102e:	7801      	ldrb	r1, [r0, #0]
c0de1030:	a802      	add	r0, sp, #8
c0de1032:	f001 ff5b 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de1036:	bbe0      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1038:	a801      	add	r0, sp, #4
c0de103a:	f000 fbfd 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de103e:	bbc0      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1040:	f000 fc00 	bl	c0de1844 <OUTLINED_FUNCTION_6>
c0de1044:	f002 fc70 	bl	c0de3928 <Babyfrost_H1>
c0de1048:	bb98      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de104a:	9801      	ldr	r0, [sp, #4]
c0de104c:	ad18      	add	r5, sp, #96	@ 0x60
c0de104e:	2220      	movs	r2, #32
c0de1050:	4629      	mov	r1, r5
c0de1052:	f006 fcf1 	bl	c0de7a38 <cx_bn_export>
c0de1056:	bb60      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1058:	f000 fbf4 	bl	c0de1844 <OUTLINED_FUNCTION_6>
c0de105c:	f002 fc72 	bl	c0de3944 <Babyfrost_H3>
c0de1060:	bb38      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1062:	9801      	ldr	r0, [sp, #4]
c0de1064:	f105 0120 	add.w	r1, r5, #32
c0de1068:	f000 fbe3 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de106c:	bb08      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de106e:	f000 fbe9 	bl	c0de1844 <OUTLINED_FUNCTION_6>
c0de1072:	f002 fc7b 	bl	c0de396c <Babyfrost_H4>
c0de1076:	b9e0      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1078:	9801      	ldr	r0, [sp, #4]
c0de107a:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de107e:	f000 fbd8 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de1082:	b9b0      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1084:	f000 fbde 	bl	c0de1844 <OUTLINED_FUNCTION_6>
c0de1088:	f002 fc7e 	bl	c0de3988 <Babyfrost_H5>
c0de108c:	b988      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de108e:	9801      	ldr	r0, [sp, #4]
c0de1090:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1094:	f000 fbcd 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de1098:	b958      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de109a:	9804      	ldr	r0, [sp, #16]
c0de109c:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de10a0:	f000 fbc7 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de10a4:	b928      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de10a6:	a818      	add	r0, sp, #96	@ 0x60
c0de10a8:	f000 fbd3 	bl	c0de1852 <OUTLINED_FUNCTION_7>
c0de10ac:	f006 fc72 	bl	c0de7994 <cx_bn_unlock>
c0de10b0:	b118      	cbz	r0, c0de10ba <handler_cmd_frostH+0x9c>
c0de10b2:	f000 fbb7 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de10b6:	b058      	add	sp, #352	@ 0x160
c0de10b8:	bdb0      	pop	{r4, r5, r7, pc}
c0de10ba:	2000      	movs	r0, #0
c0de10bc:	e7fb      	b.n	c0de10b6 <handler_cmd_frostH+0x98>
	...

c0de10c0 <handler_cmd_encodeCommitment>:
c0de10c0:	b510      	push	{r4, lr}
c0de10c2:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de10c6:	4604      	mov	r4, r0
c0de10c8:	f000 fba8 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de10cc:	bb10      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de10ce:	6820      	ldr	r0, [r4, #0]
c0de10d0:	7801      	ldrb	r1, [r0, #0]
c0de10d2:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de10d4:	f001 ff0a 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de10d8:	b9e0      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de10da:	a879      	add	r0, sp, #484	@ 0x1e4
c0de10dc:	f000 fbac 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de10e0:	b9c0      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de10e2:	ac01      	add	r4, sp, #4
c0de10e4:	4910      	ldr	r1, [pc, #64]	@ (c0de1128 <handler_cmd_encodeCommitment+0x68>)
c0de10e6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10ea:	4620      	mov	r0, r4
c0de10ec:	4479      	add	r1, pc
c0de10ee:	f006 ff0f 	bl	c0de7f10 <__aeabi_memcpy>
c0de10f2:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de10f4:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de10f6:	4621      	mov	r1, r4
c0de10f8:	2203      	movs	r2, #3
c0de10fa:	f001 fabb 	bl	c0de2674 <zkn_encode_group_commitmentHash>
c0de10fe:	b948      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de1100:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de1102:	a990      	add	r1, sp, #576	@ 0x240
c0de1104:	2220      	movs	r2, #32
c0de1106:	3120      	adds	r1, #32
c0de1108:	f006 fc96 	bl	c0de7a38 <cx_bn_export>
c0de110c:	b910      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de110e:	f006 fc41 	bl	c0de7994 <cx_bn_unlock>
c0de1112:	b120      	cbz	r0, c0de111e <handler_cmd_encodeCommitment+0x5e>
c0de1114:	f000 fb86 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de1118:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de111c:	bd10      	pop	{r4, pc}
c0de111e:	a890      	add	r0, sp, #576	@ 0x240
c0de1120:	f000 fb9f 	bl	c0de1862 <OUTLINED_FUNCTION_9>
c0de1124:	2000      	movs	r0, #0
c0de1126:	e7f7      	b.n	c0de1118 <handler_cmd_encodeCommitment+0x58>
c0de1128:	00007820 	.word	0x00007820

c0de112c <handler_cmd_GroupCommitment>:
c0de112c:	b570      	push	{r4, r5, r6, lr}
c0de112e:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de1132:	4604      	mov	r4, r0
c0de1134:	f000 fb72 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de1138:	bb68      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de113a:	6820      	ldr	r0, [r4, #0]
c0de113c:	7801      	ldrb	r1, [r0, #0]
c0de113e:	a894      	add	r0, sp, #592	@ 0x250
c0de1140:	f001 fed4 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de1144:	bb38      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de1146:	a894      	add	r0, sp, #592	@ 0x250
c0de1148:	ac91      	add	r4, sp, #580	@ 0x244
c0de114a:	4621      	mov	r1, r4
c0de114c:	f001 fd4e 	bl	c0de2bec <tEdwards_alloc>
c0de1150:	bb08      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de1152:	ad19      	add	r5, sp, #100	@ 0x64
c0de1154:	4915      	ldr	r1, [pc, #84]	@ (c0de11ac <handler_cmd_GroupCommitment+0x80>)
c0de1156:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de115a:	4628      	mov	r0, r5
c0de115c:	4479      	add	r1, pc
c0de115e:	f006 fed7 	bl	c0de7f10 <__aeabi_memcpy>
c0de1162:	ae01      	add	r6, sp, #4
c0de1164:	4912      	ldr	r1, [pc, #72]	@ (c0de11b0 <handler_cmd_GroupCommitment+0x84>)
c0de1166:	2260      	movs	r2, #96	@ 0x60
c0de1168:	4630      	mov	r0, r6
c0de116a:	4479      	add	r1, pc
c0de116c:	f006 fed0 	bl	c0de7f10 <__aeabi_memcpy>
c0de1170:	9400      	str	r4, [sp, #0]
c0de1172:	a894      	add	r0, sp, #592	@ 0x250
c0de1174:	4629      	mov	r1, r5
c0de1176:	4632      	mov	r2, r6
c0de1178:	2303      	movs	r3, #3
c0de117a:	f001 faf8 	bl	c0de276e <zkn_compute_group_commitment>
c0de117e:	b950      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de1180:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de1182:	a894      	add	r0, sp, #592	@ 0x250
c0de1184:	a991      	add	r1, sp, #580	@ 0x244
c0de1186:	f102 0320 	add.w	r3, r2, #32
c0de118a:	f002 f83a 	bl	c0de3202 <tEdwards_export>
c0de118e:	b910      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de1190:	f006 fc00 	bl	c0de7994 <cx_bn_unlock>
c0de1194:	b120      	cbz	r0, c0de11a0 <handler_cmd_GroupCommitment+0x74>
c0de1196:	f000 fb45 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de119a:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de119e:	bd70      	pop	{r4, r5, r6, pc}
c0de11a0:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de11a2:	2140      	movs	r1, #64	@ 0x40
c0de11a4:	f7ff fab8 	bl	c0de0718 <io_send_response_pointer>
c0de11a8:	2000      	movs	r0, #0
c0de11aa:	e7f6      	b.n	c0de119a <handler_cmd_GroupCommitment+0x6e>
c0de11ac:	00007990 	.word	0x00007990
c0de11b0:	00007b62 	.word	0x00007b62

c0de11b4 <handler_cmd_BindingFactors>:
c0de11b4:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de11b8:	f2ad 4dd4 	subw	sp, sp, #1236	@ 0x4d4
c0de11bc:	4604      	mov	r4, r0
c0de11be:	f000 fb2d 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de11c2:	2800      	cmp	r0, #0
c0de11c4:	f040 8119 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de11c8:	6820      	ldr	r0, [r4, #0]
c0de11ca:	7801      	ldrb	r1, [r0, #0]
c0de11cc:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11ce:	f001 fe8d 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de11d2:	2800      	cmp	r0, #0
c0de11d4:	f040 8111 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de11d8:	a8de      	add	r0, sp, #888	@ 0x378
c0de11da:	f000 fb2d 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de11de:	2800      	cmp	r0, #0
c0de11e0:	f040 810b 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de11e4:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11e6:	addb      	add	r5, sp, #876	@ 0x36c
c0de11e8:	4629      	mov	r1, r5
c0de11ea:	f001 fcff 	bl	c0de2bec <tEdwards_alloc>
c0de11ee:	2800      	cmp	r0, #0
c0de11f0:	f040 8103 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de11f4:	ac63      	add	r4, sp, #396	@ 0x18c
c0de11f6:	4985      	ldr	r1, [pc, #532]	@ (c0de140c <handler_cmd_BindingFactors+0x258>)
c0de11f8:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de11fc:	4620      	mov	r0, r4
c0de11fe:	4479      	add	r1, pc
c0de1200:	f006 fe86 	bl	c0de7f10 <__aeabi_memcpy>
c0de1204:	9bde      	ldr	r3, [sp, #888]	@ 0x378
c0de1206:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1208:	4621      	mov	r1, r4
c0de120a:	2203      	movs	r2, #3
c0de120c:	f001 fa32 	bl	c0de2674 <zkn_encode_group_commitmentHash>
c0de1210:	2800      	cmp	r0, #0
c0de1212:	f040 80f2 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1216:	f50d 7875 	add.w	r8, sp, #980	@ 0x3d4
c0de121a:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de121c:	2220      	movs	r2, #32
c0de121e:	2620      	movs	r6, #32
c0de1220:	4641      	mov	r1, r8
c0de1222:	f006 fc09 	bl	c0de7a38 <cx_bn_export>
c0de1226:	2800      	cmp	r0, #0
c0de1228:	f040 80e7 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de122c:	4978      	ldr	r1, [pc, #480]	@ (c0de1410 <handler_cmd_BindingFactors+0x25c>)
c0de122e:	f50d 7ab6 	add.w	sl, sp, #364	@ 0x16c
c0de1232:	2220      	movs	r2, #32
c0de1234:	4650      	mov	r0, sl
c0de1236:	4479      	add	r1, pc
c0de1238:	f006 fe6a 	bl	c0de7f10 <__aeabi_memcpy>
c0de123c:	a853      	add	r0, sp, #332	@ 0x14c
c0de123e:	4975      	ldr	r1, [pc, #468]	@ (c0de1414 <handler_cmd_BindingFactors+0x260>)
c0de1240:	2220      	movs	r2, #32
c0de1242:	4479      	add	r1, pc
c0de1244:	f006 fe64 	bl	c0de7f10 <__aeabi_memcpy>
c0de1248:	ac4b      	add	r4, sp, #300	@ 0x12c
c0de124a:	4973      	ldr	r1, [pc, #460]	@ (c0de1418 <handler_cmd_BindingFactors+0x264>)
c0de124c:	2220      	movs	r2, #32
c0de124e:	4620      	mov	r0, r4
c0de1250:	4479      	add	r1, pc
c0de1252:	f006 fe5d 	bl	c0de7f10 <__aeabi_memcpy>
c0de1256:	f108 0720 	add.w	r7, r8, #32
c0de125a:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de125e:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1260:	aa63      	add	r2, sp, #396	@ 0x18c
c0de1262:	4651      	mov	r1, sl
c0de1264:	2303      	movs	r3, #3
c0de1266:	f001 faf3 	bl	c0de2850 <zkn_compute_binding_factors>
c0de126a:	2800      	cmp	r0, #0
c0de126c:	f040 80c5 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1270:	9500      	str	r5, [sp, #0]
c0de1272:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1274:	a963      	add	r1, sp, #396	@ 0x18c
c0de1276:	463a      	mov	r2, r7
c0de1278:	2303      	movs	r3, #3
c0de127a:	f001 fa78 	bl	c0de276e <zkn_compute_group_commitment>
c0de127e:	2800      	cmp	r0, #0
c0de1280:	f040 80bb 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1284:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1286:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de128a:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de128e:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1290:	f001 ffb7 	bl	c0de3202 <tEdwards_export>
c0de1294:	2800      	cmp	r0, #0
c0de1296:	f040 80b0 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de129a:	ad3b      	add	r5, sp, #236	@ 0xec
c0de129c:	495f      	ldr	r1, [pc, #380]	@ (c0de141c <handler_cmd_BindingFactors+0x268>)
c0de129e:	2240      	movs	r2, #64	@ 0x40
c0de12a0:	4628      	mov	r0, r5
c0de12a2:	4479      	add	r1, pc
c0de12a4:	f006 fe34 	bl	c0de7f10 <__aeabi_memcpy>
c0de12a8:	a833      	add	r0, sp, #204	@ 0xcc
c0de12aa:	495d      	ldr	r1, [pc, #372]	@ (c0de1420 <handler_cmd_BindingFactors+0x26c>)
c0de12ac:	2220      	movs	r2, #32
c0de12ae:	2420      	movs	r4, #32
c0de12b0:	4479      	add	r1, pc
c0de12b2:	f006 fe2d 	bl	c0de7f10 <__aeabi_memcpy>
c0de12b6:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de12b8:	462a      	mov	r2, r5
c0de12ba:	e9cd 4000 	strd	r4, r0, [sp]
c0de12be:	a8df      	add	r0, sp, #892	@ 0x37c
c0de12c0:	a9db      	add	r1, sp, #876	@ 0x36c
c0de12c2:	ab53      	add	r3, sp, #332	@ 0x14c
c0de12c4:	f001 fb50 	bl	c0de2968 <compute_challenge>
c0de12c8:	2800      	cmp	r0, #0
c0de12ca:	f040 8096 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de12ce:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de12d0:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de12d4:	f000 faad 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de12d8:	2800      	cmp	r0, #0
c0de12da:	f040 808e 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de12de:	a829      	add	r0, sp, #164	@ 0xa4
c0de12e0:	4950      	ldr	r1, [pc, #320]	@ (c0de1424 <handler_cmd_BindingFactors+0x270>)
c0de12e2:	2220      	movs	r2, #32
c0de12e4:	4479      	add	r1, pc
c0de12e6:	f006 fe13 	bl	c0de7f10 <__aeabi_memcpy>
c0de12ea:	a832      	add	r0, sp, #200	@ 0xc8
c0de12ec:	f000 faa4 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de12f0:	2800      	cmp	r0, #0
c0de12f2:	f040 8082 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de12f6:	a831      	add	r0, sp, #196	@ 0xc4
c0de12f8:	aa29      	add	r2, sp, #164	@ 0xa4
c0de12fa:	f000 fa96 	bl	c0de182a <OUTLINED_FUNCTION_2>
c0de12fe:	2800      	cmp	r0, #0
c0de1300:	d17b      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1302:	99de      	ldr	r1, [sp, #888]	@ 0x378
c0de1304:	e9dd 2031 	ldrd	r2, r0, [sp, #196]	@ 0xc4
c0de1308:	f006 fbea 	bl	c0de7ae0 <cx_bn_reduce>
c0de130c:	2800      	cmp	r0, #0
c0de130e:	d174      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1310:	9832      	ldr	r0, [sp, #200]	@ 0xc8
c0de1312:	f108 01e0 	add.w	r1, r8, #224	@ 0xe0
c0de1316:	f000 fa8c 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de131a:	2800      	cmp	r0, #0
c0de131c:	d16d      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de131e:	ac21      	add	r4, sp, #132	@ 0x84
c0de1320:	4941      	ldr	r1, [pc, #260]	@ (c0de1428 <handler_cmd_BindingFactors+0x274>)
c0de1322:	2220      	movs	r2, #32
c0de1324:	4620      	mov	r0, r4
c0de1326:	4479      	add	r1, pc
c0de1328:	f006 fdf2 	bl	c0de7f10 <__aeabi_memcpy>
c0de132c:	a819      	add	r0, sp, #100	@ 0x64
c0de132e:	493f      	ldr	r1, [pc, #252]	@ (c0de142c <handler_cmd_BindingFactors+0x278>)
c0de1330:	2220      	movs	r2, #32
c0de1332:	4479      	add	r1, pc
c0de1334:	f006 fdec 	bl	c0de7f10 <__aeabi_memcpy>
c0de1338:	a811      	add	r0, sp, #68	@ 0x44
c0de133a:	493d      	ldr	r1, [pc, #244]	@ (c0de1430 <handler_cmd_BindingFactors+0x27c>)
c0de133c:	2220      	movs	r2, #32
c0de133e:	4479      	add	r1, pc
c0de1340:	f006 fde6 	bl	c0de7f10 <__aeabi_memcpy>
c0de1344:	a809      	add	r0, sp, #36	@ 0x24
c0de1346:	493b      	ldr	r1, [pc, #236]	@ (c0de1434 <handler_cmd_BindingFactors+0x280>)
c0de1348:	2220      	movs	r2, #32
c0de134a:	4479      	add	r1, pc
c0de134c:	f006 fde0 	bl	c0de7f10 <__aeabi_memcpy>
c0de1350:	a808      	add	r0, sp, #32
c0de1352:	2120      	movs	r1, #32
c0de1354:	4622      	mov	r2, r4
c0de1356:	f000 fa72 	bl	c0de183e <OUTLINED_FUNCTION_5>
c0de135a:	2800      	cmp	r0, #0
c0de135c:	d14d      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de135e:	a807      	add	r0, sp, #28
c0de1360:	aa19      	add	r2, sp, #100	@ 0x64
c0de1362:	f000 fa62 	bl	c0de182a <OUTLINED_FUNCTION_2>
c0de1366:	2800      	cmp	r0, #0
c0de1368:	d147      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de136a:	a806      	add	r0, sp, #24
c0de136c:	aa09      	add	r2, sp, #36	@ 0x24
c0de136e:	f000 fa5c 	bl	c0de182a <OUTLINED_FUNCTION_2>
c0de1372:	2800      	cmp	r0, #0
c0de1374:	d141      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1376:	a805      	add	r0, sp, #20
c0de1378:	aa11      	add	r2, sp, #68	@ 0x44
c0de137a:	f000 fa56 	bl	c0de182a <OUTLINED_FUNCTION_2>
c0de137e:	bbe0      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1380:	a803      	add	r0, sp, #12
c0de1382:	aa33      	add	r2, sp, #204	@ 0xcc
c0de1384:	f000 fa51 	bl	c0de182a <OUTLINED_FUNCTION_2>
c0de1388:	bbb8      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de138a:	a804      	add	r0, sp, #16
c0de138c:	f000 fa54 	bl	c0de1838 <OUTLINED_FUNCTION_4>
c0de1390:	bb98      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1392:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1394:	9907      	ldr	r1, [sp, #28]
c0de1396:	e9dd 2003 	ldrd	r2, r0, [sp, #12]
c0de139a:	f006 fb95 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de139e:	bb60      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13a0:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de13a2:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de13a6:	9807      	ldr	r0, [sp, #28]
c0de13a8:	f006 fb8e 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de13ac:	bb28      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13ae:	e9dd 3231 	ldrd	r3, r2, [sp, #196]	@ 0xc4
c0de13b2:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de13b6:	f006 fb87 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de13ba:	b9f0      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13bc:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de13be:	9a06      	ldr	r2, [sp, #24]
c0de13c0:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
c0de13c4:	f006 fb68 	bl	c0de7a98 <cx_bn_mod_add>
c0de13c8:	b9b8      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13ca:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de13cc:	9a08      	ldr	r2, [sp, #32]
c0de13ce:	e9dd 1003 	ldrd	r1, r0, [sp, #12]
c0de13d2:	f006 fb61 	bl	c0de7a98 <cx_bn_mod_add>
c0de13d6:	b980      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13d8:	9a31      	ldr	r2, [sp, #196]	@ 0xc4
c0de13da:	9904      	ldr	r1, [sp, #16]
c0de13dc:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de13de:	f006 fb7f 	bl	c0de7ae0 <cx_bn_reduce>
c0de13e2:	b950      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13e4:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de13e6:	a9f5      	add	r1, sp, #980	@ 0x3d4
c0de13e8:	f000 fa23 	bl	c0de1832 <OUTLINED_FUNCTION_3>
c0de13ec:	b928      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13ee:	a8f5      	add	r0, sp, #980	@ 0x3d4
c0de13f0:	f000 fa2f 	bl	c0de1852 <OUTLINED_FUNCTION_7>
c0de13f4:	f006 face 	bl	c0de7994 <cx_bn_unlock>
c0de13f8:	b128      	cbz	r0, c0de1406 <handler_cmd_BindingFactors+0x252>
c0de13fa:	f000 fa13 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de13fe:	f20d 4dd4 	addw	sp, sp, #1236	@ 0x4d4
c0de1402:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1406:	2000      	movs	r0, #0
c0de1408:	e7f9      	b.n	c0de13fe <handler_cmd_BindingFactors+0x24a>
c0de140a:	bf00      	nop
c0de140c:	00007b2e 	.word	0x00007b2e
c0de1410:	00007496 	.word	0x00007496
c0de1414:	0000730a 	.word	0x0000730a
c0de1418:	000074dc 	.word	0x000074dc
c0de141c:	00007c6a 	.word	0x00007c6a
c0de1420:	0000743c 	.word	0x0000743c
c0de1424:	000073a8 	.word	0x000073a8
c0de1428:	000072c6 	.word	0x000072c6
c0de142c:	000073da 	.word	0x000073da
c0de1430:	0000750e 	.word	0x0000750e
c0de1434:	00007262 	.word	0x00007262

c0de1438 <handler_cmd_PartialSig>:
c0de1438:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de143c:	f5ad 6d87 	sub.w	sp, sp, #1080	@ 0x438
c0de1440:	4604      	mov	r4, r0
c0de1442:	f000 f9eb 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de1446:	2800      	cmp	r0, #0
c0de1448:	d154      	bne.n	c0de14f4 <handler_cmd_PartialSig+0xbc>
c0de144a:	6820      	ldr	r0, [r4, #0]
c0de144c:	7801      	ldrb	r1, [r0, #0]
c0de144e:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de1450:	f001 fd4c 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de1454:	2800      	cmp	r0, #0
c0de1456:	d14d      	bne.n	c0de14f4 <handler_cmd_PartialSig+0xbc>
c0de1458:	492a      	ldr	r1, [pc, #168]	@ (c0de1504 <handler_cmd_PartialSig+0xcc>)
c0de145a:	f50d 7880 	add.w	r8, sp, #256	@ 0x100
c0de145e:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1462:	4640      	mov	r0, r8
c0de1464:	4479      	add	r1, pc
c0de1466:	f006 fd53 	bl	c0de7f10 <__aeabi_memcpy>
c0de146a:	4927      	ldr	r1, [pc, #156]	@ (c0de1508 <handler_cmd_PartialSig+0xd0>)
c0de146c:	f10d 0ae0 	add.w	sl, sp, #224	@ 0xe0
c0de1470:	2220      	movs	r2, #32
c0de1472:	4650      	mov	r0, sl
c0de1474:	4479      	add	r1, pc
c0de1476:	f006 fd4b 	bl	c0de7f10 <__aeabi_memcpy>
c0de147a:	4924      	ldr	r1, [pc, #144]	@ (c0de150c <handler_cmd_PartialSig+0xd4>)
c0de147c:	f10d 0bc0 	add.w	fp, sp, #192	@ 0xc0
c0de1480:	2220      	movs	r2, #32
c0de1482:	4658      	mov	r0, fp
c0de1484:	4479      	add	r1, pc
c0de1486:	f006 fd43 	bl	c0de7f10 <__aeabi_memcpy>
c0de148a:	ac28      	add	r4, sp, #160	@ 0xa0
c0de148c:	4920      	ldr	r1, [pc, #128]	@ (c0de1510 <handler_cmd_PartialSig+0xd8>)
c0de148e:	2220      	movs	r2, #32
c0de1490:	4620      	mov	r0, r4
c0de1492:	4479      	add	r1, pc
c0de1494:	f006 fd3c 	bl	c0de7f10 <__aeabi_memcpy>
c0de1498:	af18      	add	r7, sp, #96	@ 0x60
c0de149a:	491e      	ldr	r1, [pc, #120]	@ (c0de1514 <handler_cmd_PartialSig+0xdc>)
c0de149c:	2240      	movs	r2, #64	@ 0x40
c0de149e:	4638      	mov	r0, r7
c0de14a0:	4479      	add	r1, pc
c0de14a2:	f006 fd35 	bl	c0de7f10 <__aeabi_memcpy>
c0de14a6:	ad10      	add	r5, sp, #64	@ 0x40
c0de14a8:	491b      	ldr	r1, [pc, #108]	@ (c0de1518 <handler_cmd_PartialSig+0xe0>)
c0de14aa:	2220      	movs	r2, #32
c0de14ac:	4628      	mov	r0, r5
c0de14ae:	4479      	add	r1, pc
c0de14b0:	f006 fd2e 	bl	c0de7f10 <__aeabi_memcpy>
c0de14b4:	ae08      	add	r6, sp, #32
c0de14b6:	4919      	ldr	r1, [pc, #100]	@ (c0de151c <handler_cmd_PartialSig+0xe4>)
c0de14b8:	2220      	movs	r2, #32
c0de14ba:	4630      	mov	r0, r6
c0de14bc:	4479      	add	r1, pc
c0de14be:	f006 fd27 	bl	c0de7f10 <__aeabi_memcpy>
c0de14c2:	2103      	movs	r1, #3
c0de14c4:	a8ce      	add	r0, sp, #824	@ 0x338
c0de14c6:	e9cd b400 	strd	fp, r4, [sp]
c0de14ca:	f8cd a010 	str.w	sl, [sp, #16]
c0de14ce:	462a      	mov	r2, r5
c0de14d0:	463b      	mov	r3, r7
c0de14d2:	e9cd 8102 	strd	r8, r1, [sp, #8]
c0de14d6:	2120      	movs	r1, #32
c0de14d8:	9007      	str	r0, [sp, #28]
c0de14da:	e9cd 1605 	strd	r1, r6, [sp, #20]
c0de14de:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de14e0:	2101      	movs	r1, #1
c0de14e2:	f001 fa9b 	bl	c0de2a1c <zkn_partial_sig>
c0de14e6:	b928      	cbnz	r0, c0de14f4 <handler_cmd_PartialSig+0xbc>
c0de14e8:	a8ce      	add	r0, sp, #824	@ 0x338
c0de14ea:	f000 f9ba 	bl	c0de1862 <OUTLINED_FUNCTION_9>
c0de14ee:	f006 fa51 	bl	c0de7994 <cx_bn_unlock>
c0de14f2:	b128      	cbz	r0, c0de1500 <handler_cmd_PartialSig+0xc8>
c0de14f4:	f000 f996 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de14f8:	f50d 6d87 	add.w	sp, sp, #1080	@ 0x438
c0de14fc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1500:	2000      	movs	r0, #0
c0de1502:	e7f9      	b.n	c0de14f8 <handler_cmd_PartialSig+0xc0>
c0de1504:	000078c8 	.word	0x000078c8
c0de1508:	000070d8 	.word	0x000070d8
c0de150c:	00007168 	.word	0x00007168
c0de1510:	0000727a 	.word	0x0000727a
c0de1514:	00007a6c 	.word	0x00007a6c
c0de1518:	0000739e 	.word	0x0000739e
c0de151c:	000070f0 	.word	0x000070f0

c0de1520 <handler_get_insecure_public>:
c0de1520:	b5b0      	push	{r4, r5, r7, lr}
c0de1522:	b0aa      	sub	sp, #168	@ 0xa8
c0de1524:	6800      	ldr	r0, [r0, #0]
c0de1526:	21ff      	movs	r1, #255	@ 0xff
c0de1528:	7805      	ldrb	r5, [r0, #0]
c0de152a:	2000      	movs	r0, #0
c0de152c:	ac1a      	add	r4, sp, #104	@ 0x68
c0de152e:	2840      	cmp	r0, #64	@ 0x40
c0de1530:	d002      	beq.n	c0de1538 <handler_get_insecure_public+0x18>
c0de1532:	5421      	strb	r1, [r4, r0]
c0de1534:	3001      	adds	r0, #1
c0de1536:	e7fa      	b.n	c0de152e <handler_get_insecure_public+0xe>
c0de1538:	f000 f970 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de153c:	b9f8      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de153e:	a804      	add	r0, sp, #16
c0de1540:	f000 f99b 	bl	c0de187a <OUTLINED_FUNCTION_12>
c0de1544:	b9d8      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de1546:	a804      	add	r0, sp, #16
c0de1548:	a901      	add	r1, sp, #4
c0de154a:	f001 fb4f 	bl	c0de2bec <tEdwards_alloc>
c0de154e:	b9b0      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de1550:	480e      	ldr	r0, [pc, #56]	@ (c0de158c <handler_get_insecure_public+0x6c>)
c0de1552:	eb09 0100 	add.w	r1, r9, r0
c0de1556:	a804      	add	r0, sp, #16
c0de1558:	aa01      	add	r2, sp, #4
c0de155a:	f000 fdd9 	bl	c0de2110 <zkn_prv2pub>
c0de155e:	b970      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de1560:	a804      	add	r0, sp, #16
c0de1562:	f104 0320 	add.w	r3, r4, #32
c0de1566:	a901      	add	r1, sp, #4
c0de1568:	f000 f97e 	bl	c0de1868 <OUTLINED_FUNCTION_10>
c0de156c:	b938      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de156e:	9804      	ldr	r0, [sp, #16]
c0de1570:	0041      	lsls	r1, r0, #1
c0de1572:	a81a      	add	r0, sp, #104	@ 0x68
c0de1574:	f7ff f8d0 	bl	c0de0718 <io_send_response_pointer>
c0de1578:	f006 fa0c 	bl	c0de7994 <cx_bn_unlock>
c0de157c:	b118      	cbz	r0, c0de1586 <handler_get_insecure_public+0x66>
c0de157e:	f000 f951 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de1582:	b02a      	add	sp, #168	@ 0xa8
c0de1584:	bdb0      	pop	{r4, r5, r7, pc}
c0de1586:	2000      	movs	r0, #0
c0de1588:	e7fb      	b.n	c0de1582 <handler_get_insecure_public+0x62>
c0de158a:	bf00      	nop
c0de158c:	00000350 	.word	0x00000350

c0de1590 <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de1590:	b570      	push	{r4, r5, r6, lr}
c0de1592:	b0bc      	sub	sp, #240	@ 0xf0
c0de1594:	4605      	mov	r5, r0
c0de1596:	6800      	ldr	r0, [r0, #0]
c0de1598:	21ff      	movs	r1, #255	@ 0xff
c0de159a:	7804      	ldrb	r4, [r0, #0]
c0de159c:	2000      	movs	r0, #0
c0de159e:	ae24      	add	r6, sp, #144	@ 0x90
c0de15a0:	2860      	cmp	r0, #96	@ 0x60
c0de15a2:	d002      	beq.n	c0de15aa <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1a>
c0de15a4:	5431      	strb	r1, [r6, r0]
c0de15a6:	3001      	adds	r0, #1
c0de15a8:	e7fa      	b.n	c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x10>
c0de15aa:	f000 f937 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de15ae:	bb68      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15b0:	6828      	ldr	r0, [r5, #0]
c0de15b2:	2100      	movs	r1, #0
c0de15b4:	aa03      	add	r2, sp, #12
c0de15b6:	3001      	adds	r0, #1
c0de15b8:	2920      	cmp	r1, #32
c0de15ba:	d003      	beq.n	c0de15c4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x34>
c0de15bc:	5c43      	ldrb	r3, [r0, r1]
c0de15be:	5453      	strb	r3, [r2, r1]
c0de15c0:	3101      	adds	r1, #1
c0de15c2:	e7f9      	b.n	c0de15b8 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x28>
c0de15c4:	a80e      	add	r0, sp, #56	@ 0x38
c0de15c6:	4621      	mov	r1, r4
c0de15c8:	f001 fc90 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de15cc:	b9f0      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15ce:	a80e      	add	r0, sp, #56	@ 0x38
c0de15d0:	a90b      	add	r1, sp, #44	@ 0x2c
c0de15d2:	f001 fb0b 	bl	c0de2bec <tEdwards_alloc>
c0de15d6:	b9c8      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15d8:	4c0f      	ldr	r4, [pc, #60]	@ (c0de1618 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x88>)
c0de15da:	a80e      	add	r0, sp, #56	@ 0x38
c0de15dc:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de15de:	eb09 0104 	add.w	r1, r9, r4
c0de15e2:	f000 fd95 	bl	c0de2110 <zkn_prv2pub>
c0de15e6:	b988      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15e8:	2020      	movs	r0, #32
c0de15ea:	eb09 0104 	add.w	r1, r9, r4
c0de15ee:	e9cd 0600 	strd	r0, r6, [sp]
c0de15f2:	a80e      	add	r0, sp, #56	@ 0x38
c0de15f4:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de15f6:	ab03      	add	r3, sp, #12
c0de15f8:	f000 fdb2 	bl	c0de2160 <EddsaPoseidon_Sign_final>
c0de15fc:	b930      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15fe:	a824      	add	r0, sp, #144	@ 0x90
c0de1600:	2160      	movs	r1, #96	@ 0x60
c0de1602:	f7ff f889 	bl	c0de0718 <io_send_response_pointer>
c0de1606:	f006 f9c5 	bl	c0de7994 <cx_bn_unlock>
c0de160a:	b118      	cbz	r0, c0de1614 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x84>
c0de160c:	f000 f90a 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de1610:	b03c      	add	sp, #240	@ 0xf0
c0de1612:	bd70      	pop	{r4, r5, r6, pc}
c0de1614:	2000      	movs	r0, #0
c0de1616:	e7fb      	b.n	c0de1610 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x80>
c0de1618:	00000350 	.word	0x00000350

c0de161c <handler_cmd_frost_inject>:
c0de161c:	b5b0      	push	{r4, r5, r7, lr}
c0de161e:	4604      	mov	r4, r0
c0de1620:	4810      	ldr	r0, [pc, #64]	@ (c0de1664 <handler_cmd_frost_inject+0x48>)
c0de1622:	2240      	movs	r2, #64	@ 0x40
c0de1624:	e9d4 1500 	ldrd	r1, r5, [r4]
c0de1628:	4448      	add	r0, r9
c0de162a:	f006 fc71 	bl	c0de7f10 <__aeabi_memcpy>
c0de162e:	480e      	ldr	r0, [pc, #56]	@ (c0de1668 <handler_cmd_frost_inject+0x4c>)
c0de1630:	6821      	ldr	r1, [r4, #0]
c0de1632:	2220      	movs	r2, #32
c0de1634:	4448      	add	r0, r9
c0de1636:	3140      	adds	r1, #64	@ 0x40
c0de1638:	f006 fc6a 	bl	c0de7f10 <__aeabi_memcpy>
c0de163c:	480b      	ldr	r0, [pc, #44]	@ (c0de166c <handler_cmd_frost_inject+0x50>)
c0de163e:	6821      	ldr	r1, [r4, #0]
c0de1640:	2220      	movs	r2, #32
c0de1642:	4448      	add	r0, r9
c0de1644:	3160      	adds	r1, #96	@ 0x60
c0de1646:	f006 fc63 	bl	c0de7f10 <__aeabi_memcpy>
c0de164a:	f000 f906 	bl	c0de185a <OUTLINED_FUNCTION_8>
c0de164e:	2d80      	cmp	r5, #128	@ 0x80
c0de1650:	bf04      	itt	eq
c0de1652:	2000      	moveq	r0, #0
c0de1654:	bdb0      	popeq	{r4, r5, r7, pc}
c0de1656:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de165a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de165e:	f7ff b866 	b.w	c0de072e <io_send_sw>
c0de1662:	bf00      	nop
c0de1664:	000002f0 	.word	0x000002f0
c0de1668:	00000330 	.word	0x00000330
c0de166c:	00000350 	.word	0x00000350

c0de1670 <handler_cmd_frost_commit>:
c0de1670:	b570      	push	{r4, r5, r6, lr}
c0de1672:	b0bc      	sub	sp, #240	@ 0xf0
c0de1674:	4604      	mov	r4, r0
c0de1676:	f000 f8d1 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de167a:	bba8      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de167c:	6820      	ldr	r0, [r4, #0]
c0de167e:	7801      	ldrb	r1, [r0, #0]
c0de1680:	a806      	add	r0, sp, #24
c0de1682:	f001 fc33 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de1686:	bb78      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de1688:	ad06      	add	r5, sp, #24
c0de168a:	466e      	mov	r6, sp
c0de168c:	4628      	mov	r0, r5
c0de168e:	4631      	mov	r1, r6
c0de1690:	f001 faac 	bl	c0de2bec <tEdwards_alloc>
c0de1694:	f106 040c 	add.w	r4, r6, #12
c0de1698:	4628      	mov	r0, r5
c0de169a:	4621      	mov	r1, r4
c0de169c:	f001 faa6 	bl	c0de2bec <tEdwards_alloc>
c0de16a0:	4814      	ldr	r0, [pc, #80]	@ (c0de16f4 <handler_cmd_frost_commit+0x84>)
c0de16a2:	4633      	mov	r3, r6
c0de16a4:	eb09 0100 	add.w	r1, r9, r0
c0de16a8:	4813      	ldr	r0, [pc, #76]	@ (c0de16f8 <handler_cmd_frost_commit+0x88>)
c0de16aa:	eb09 0200 	add.w	r2, r9, r0
c0de16ae:	4628      	mov	r0, r5
c0de16b0:	f000 ffaf 	bl	c0de2612 <zkn_frost_commit>
c0de16b4:	b9c0      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de16b6:	ad1c      	add	r5, sp, #112	@ 0x70
c0de16b8:	a806      	add	r0, sp, #24
c0de16ba:	4669      	mov	r1, sp
c0de16bc:	f105 0320 	add.w	r3, r5, #32
c0de16c0:	462a      	mov	r2, r5
c0de16c2:	f001 fd9e 	bl	c0de3202 <tEdwards_export>
c0de16c6:	b978      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de16c8:	f105 0240 	add.w	r2, r5, #64	@ 0x40
c0de16cc:	f105 0360 	add.w	r3, r5, #96	@ 0x60
c0de16d0:	a806      	add	r0, sp, #24
c0de16d2:	4621      	mov	r1, r4
c0de16d4:	f001 fd95 	bl	c0de3202 <tEdwards_export>
c0de16d8:	b930      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de16da:	a81c      	add	r0, sp, #112	@ 0x70
c0de16dc:	2180      	movs	r1, #128	@ 0x80
c0de16de:	f7ff f81b 	bl	c0de0718 <io_send_response_pointer>
c0de16e2:	f006 f957 	bl	c0de7994 <cx_bn_unlock>
c0de16e6:	b118      	cbz	r0, c0de16f0 <handler_cmd_frost_commit+0x80>
c0de16e8:	f000 f89c 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de16ec:	b03c      	add	sp, #240	@ 0xf0
c0de16ee:	bd70      	pop	{r4, r5, r6, pc}
c0de16f0:	2000      	movs	r0, #0
c0de16f2:	e7fb      	b.n	c0de16ec <handler_cmd_frost_commit+0x7c>
c0de16f4:	00000350 	.word	0x00000350
c0de16f8:	00000370 	.word	0x00000370

c0de16fc <handler_cmd_frost_inject_com1>:
c0de16fc:	b510      	push	{r4, lr}
c0de16fe:	4908      	ldr	r1, [pc, #32]	@ (c0de1720 <handler_cmd_frost_inject_com1+0x24>)
c0de1700:	eb09 0201 	add.w	r2, r9, r1
c0de1704:	f000 f8b3 	bl	c0de186e <OUTLINED_FUNCTION_11>
c0de1708:	f000 f8a7 	bl	c0de185a <OUTLINED_FUNCTION_8>
c0de170c:	2cf0      	cmp	r4, #240	@ 0xf0
c0de170e:	bf04      	itt	eq
c0de1710:	2000      	moveq	r0, #0
c0de1712:	bd10      	popeq	{r4, pc}
c0de1714:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de1718:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de171c:	f7ff b807 	b.w	c0de072e <io_send_sw>
c0de1720:	000003b0 	.word	0x000003b0

c0de1724 <handler_cmd_frost_inject_com2>:
c0de1724:	b510      	push	{r4, lr}
c0de1726:	4909      	ldr	r1, [pc, #36]	@ (c0de174c <handler_cmd_frost_inject_com2+0x28>)
c0de1728:	4449      	add	r1, r9
c0de172a:	f101 02f0 	add.w	r2, r1, #240	@ 0xf0
c0de172e:	f000 f89e 	bl	c0de186e <OUTLINED_FUNCTION_11>
c0de1732:	f000 f892 	bl	c0de185a <OUTLINED_FUNCTION_8>
c0de1736:	2cf0      	cmp	r4, #240	@ 0xf0
c0de1738:	bf04      	itt	eq
c0de173a:	2000      	moveq	r0, #0
c0de173c:	bd10      	popeq	{r4, pc}
c0de173e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de1742:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1746:	f7fe bff2 	b.w	c0de072e <io_send_sw>
c0de174a:	bf00      	nop
c0de174c:	000003b0 	.word	0x000003b0

c0de1750 <handler_cmd_frost_partial_sign>:
c0de1750:	b570      	push	{r4, r5, r6, lr}
c0de1752:	b0b6      	sub	sp, #216	@ 0xd8
c0de1754:	6800      	ldr	r0, [r0, #0]
c0de1756:	2100      	movs	r1, #0
c0de1758:	ad2e      	add	r5, sp, #184	@ 0xb8
c0de175a:	2920      	cmp	r1, #32
c0de175c:	d003      	beq.n	c0de1766 <handler_cmd_frost_partial_sign+0x16>
c0de175e:	5c42      	ldrb	r2, [r0, r1]
c0de1760:	546a      	strb	r2, [r5, r1]
c0de1762:	3101      	adds	r1, #1
c0de1764:	e7f9      	b.n	c0de175a <handler_cmd_frost_partial_sign+0xa>
c0de1766:	f000 f859 	bl	c0de181c <OUTLINED_FUNCTION_0>
c0de176a:	bb48      	cbnz	r0, c0de17c0 <handler_cmd_frost_partial_sign+0x70>
c0de176c:	a810      	add	r0, sp, #64	@ 0x40
c0de176e:	2102      	movs	r1, #2
c0de1770:	f001 fbbc 	bl	c0de2eec <tEdwards_Curve_alloc_init>
c0de1774:	bb20      	cbnz	r0, c0de17c0 <handler_cmd_frost_partial_sign+0x70>
c0de1776:	ac08      	add	r4, sp, #32
c0de1778:	491b      	ldr	r1, [pc, #108]	@ (c0de17e8 <handler_cmd_frost_partial_sign+0x98>)
c0de177a:	2220      	movs	r2, #32
c0de177c:	2620      	movs	r6, #32
c0de177e:	4620      	mov	r0, r4
c0de1780:	4479      	add	r1, pc
c0de1782:	f006 fbc5 	bl	c0de7f10 <__aeabi_memcpy>
c0de1786:	4813      	ldr	r0, [pc, #76]	@ (c0de17d4 <handler_cmd_frost_partial_sign+0x84>)
c0de1788:	4448      	add	r0, r9
c0de178a:	7fc1      	ldrb	r1, [r0, #31]
c0de178c:	a826      	add	r0, sp, #152	@ 0x98
c0de178e:	e9cd 5604 	strd	r5, r6, [sp, #16]
c0de1792:	e9cd 4006 	strd	r4, r0, [sp, #24]
c0de1796:	2003      	movs	r0, #3
c0de1798:	9003      	str	r0, [sp, #12]
c0de179a:	480f      	ldr	r0, [pc, #60]	@ (c0de17d8 <handler_cmd_frost_partial_sign+0x88>)
c0de179c:	4448      	add	r0, r9
c0de179e:	9002      	str	r0, [sp, #8]
c0de17a0:	480e      	ldr	r0, [pc, #56]	@ (c0de17dc <handler_cmd_frost_partial_sign+0x8c>)
c0de17a2:	4448      	add	r0, r9
c0de17a4:	f100 0220 	add.w	r2, r0, #32
c0de17a8:	e9cd 0200 	strd	r0, r2, [sp]
c0de17ac:	480c      	ldr	r0, [pc, #48]	@ (c0de17e0 <handler_cmd_frost_partial_sign+0x90>)
c0de17ae:	eb09 0200 	add.w	r2, r9, r0
c0de17b2:	480c      	ldr	r0, [pc, #48]	@ (c0de17e4 <handler_cmd_frost_partial_sign+0x94>)
c0de17b4:	eb09 0300 	add.w	r3, r9, r0
c0de17b8:	a810      	add	r0, sp, #64	@ 0x40
c0de17ba:	f001 f92f 	bl	c0de2a1c <zkn_partial_sig>
c0de17be:	b118      	cbz	r0, c0de17c8 <handler_cmd_frost_partial_sign+0x78>
c0de17c0:	f000 f830 	bl	c0de1824 <OUTLINED_FUNCTION_1>
c0de17c4:	b036      	add	sp, #216	@ 0xd8
c0de17c6:	bd70      	pop	{r4, r5, r6, pc}
c0de17c8:	a826      	add	r0, sp, #152	@ 0x98
c0de17ca:	f000 f84a 	bl	c0de1862 <OUTLINED_FUNCTION_9>
c0de17ce:	2000      	movs	r0, #0
c0de17d0:	e7f8      	b.n	c0de17c4 <handler_cmd_frost_partial_sign+0x74>
c0de17d2:	bf00      	nop
c0de17d4:	00000330 	.word	0x00000330
c0de17d8:	000003b0 	.word	0x000003b0
c0de17dc:	00000370 	.word	0x00000370
c0de17e0:	00000350 	.word	0x00000350
c0de17e4:	000002f0 	.word	0x000002f0
c0de17e8:	00006e2c 	.word	0x00006e2c

c0de17ec <handler_cmd_inject_nonces>:
c0de17ec:	b510      	push	{r4, lr}
c0de17ee:	490a      	ldr	r1, [pc, #40]	@ (c0de1818 <handler_cmd_inject_nonces+0x2c>)
c0de17f0:	eb09 0201 	add.w	r2, r9, r1
c0de17f4:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de17f8:	4610      	mov	r0, r2
c0de17fa:	2240      	movs	r2, #64	@ 0x40
c0de17fc:	f006 fb88 	bl	c0de7f10 <__aeabi_memcpy>
c0de1800:	f000 f82b 	bl	c0de185a <OUTLINED_FUNCTION_8>
c0de1804:	2c40      	cmp	r4, #64	@ 0x40
c0de1806:	bf04      	itt	eq
c0de1808:	2000      	moveq	r0, #0
c0de180a:	bd10      	popeq	{r4, pc}
c0de180c:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de1810:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1814:	f7fe bf8b 	b.w	c0de072e <io_send_sw>
c0de1818:	00000370 	.word	0x00000370

c0de181c <OUTLINED_FUNCTION_0>:
c0de181c:	2020      	movs	r0, #32
c0de181e:	2100      	movs	r1, #0
c0de1820:	f006 b8ae 	b.w	c0de7980 <cx_bn_lock>

c0de1824 <OUTLINED_FUNCTION_1>:
c0de1824:	b280      	uxth	r0, r0
c0de1826:	f7fe bf82 	b.w	c0de072e <io_send_sw>

c0de182a <OUTLINED_FUNCTION_2>:
c0de182a:	2120      	movs	r1, #32
c0de182c:	2320      	movs	r3, #32
c0de182e:	f006 b8c3 	b.w	c0de79b8 <cx_bn_alloc_init>

c0de1832 <OUTLINED_FUNCTION_3>:
c0de1832:	2220      	movs	r2, #32
c0de1834:	f006 b900 	b.w	c0de7a38 <cx_bn_export>

c0de1838 <OUTLINED_FUNCTION_4>:
c0de1838:	2120      	movs	r1, #32
c0de183a:	f006 b8b3 	b.w	c0de79a4 <cx_bn_alloc>

c0de183e <OUTLINED_FUNCTION_5>:
c0de183e:	2320      	movs	r3, #32
c0de1840:	f006 b8ba 	b.w	c0de79b8 <cx_bn_alloc_init>

c0de1844 <OUTLINED_FUNCTION_6>:
c0de1844:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1848:	9b01      	ldr	r3, [sp, #4]
c0de184a:	9a04      	ldr	r2, [sp, #16]
c0de184c:	3001      	adds	r0, #1
c0de184e:	3901      	subs	r1, #1
c0de1850:	4770      	bx	lr

c0de1852 <OUTLINED_FUNCTION_7>:
c0de1852:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de1856:	f7fe bf5f 	b.w	c0de0718 <io_send_response_pointer>

c0de185a <OUTLINED_FUNCTION_8>:
c0de185a:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de185e:	f7fe bf66 	b.w	c0de072e <io_send_sw>

c0de1862 <OUTLINED_FUNCTION_9>:
c0de1862:	2120      	movs	r1, #32
c0de1864:	f7fe bf58 	b.w	c0de0718 <io_send_response_pointer>

c0de1868 <OUTLINED_FUNCTION_10>:
c0de1868:	4622      	mov	r2, r4
c0de186a:	f001 bcca 	b.w	c0de3202 <tEdwards_export>

c0de186e <OUTLINED_FUNCTION_11>:
c0de186e:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de1872:	4610      	mov	r0, r2
c0de1874:	22f0      	movs	r2, #240	@ 0xf0
c0de1876:	f006 bb4b 	b.w	c0de7f10 <__aeabi_memcpy>

c0de187a <OUTLINED_FUNCTION_12>:
c0de187a:	4629      	mov	r1, r5
c0de187c:	f001 bb36 	b.w	c0de2eec <tEdwards_Curve_alloc_init>

c0de1880 <helper_send_response_pubkey>:
c0de1880:	b5b0      	push	{r4, r5, r7, lr}
c0de1882:	b09a      	sub	sp, #104	@ 0x68
c0de1884:	2041      	movs	r0, #65	@ 0x41
c0de1886:	f10d 0405 	add.w	r4, sp, #5
c0de188a:	2241      	movs	r2, #65	@ 0x41
c0de188c:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1890:	480b      	ldr	r0, [pc, #44]	@ (c0de18c0 <helper_send_response_pubkey+0x40>)
c0de1892:	eb09 0500 	add.w	r5, r9, r0
c0de1896:	1c60      	adds	r0, r4, #1
c0de1898:	f105 0108 	add.w	r1, r5, #8
c0de189c:	f006 fb38 	bl	c0de7f10 <__aeabi_memcpy>
c0de18a0:	2020      	movs	r0, #32
c0de18a2:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de18a6:	2220      	movs	r2, #32
c0de18a8:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de18ac:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de18b0:	f006 fb2e 	bl	c0de7f10 <__aeabi_memcpy>
c0de18b4:	4620      	mov	r0, r4
c0de18b6:	2163      	movs	r1, #99	@ 0x63
c0de18b8:	f000 f804 	bl	c0de18c4 <io_send_response_pointer>
c0de18bc:	b01a      	add	sp, #104	@ 0x68
c0de18be:	bdb0      	pop	{r4, r5, r7, pc}
c0de18c0:	00000000 	.word	0x00000000

c0de18c4 <io_send_response_pointer>:
c0de18c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de18c6:	2200      	movs	r2, #0
c0de18c8:	ab01      	add	r3, sp, #4
c0de18ca:	c307      	stmia	r3!, {r0, r1, r2}
c0de18cc:	a801      	add	r0, sp, #4
c0de18ce:	2101      	movs	r1, #1
c0de18d0:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de18d4:	f005 fb62 	bl	c0de6f9c <io_send_response_buffers>
c0de18d8:	b004      	add	sp, #16
c0de18da:	bd80      	pop	{r7, pc}

c0de18dc <helper_send_response_sig>:
c0de18dc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de18de:	b099      	sub	sp, #100	@ 0x64
c0de18e0:	f10d 0402 	add.w	r4, sp, #2
c0de18e4:	2161      	movs	r1, #97	@ 0x61
c0de18e6:	1c65      	adds	r5, r4, #1
c0de18e8:	4628      	mov	r0, r5
c0de18ea:	f006 fb1b 	bl	c0de7f24 <__aeabi_memclr>
c0de18ee:	4808      	ldr	r0, [pc, #32]	@ (c0de1910 <helper_send_response_sig+0x34>)
c0de18f0:	f000 f810 	bl	c0de1914 <OUTLINED_FUNCTION_0>
c0de18f4:	f88d 6002 	strb.w	r6, [sp, #2]
c0de18f8:	f006 fb0a 	bl	c0de7f10 <__aeabi_memcpy>
c0de18fc:	f897 12b9 	ldrb.w	r1, [r7, #697]	@ 0x2b9
c0de1900:	1930      	adds	r0, r6, r4
c0de1902:	7041      	strb	r1, [r0, #1]
c0de1904:	1cb1      	adds	r1, r6, #2
c0de1906:	4620      	mov	r0, r4
c0de1908:	f7ff ffdc 	bl	c0de18c4 <io_send_response_pointer>
c0de190c:	b019      	add	sp, #100	@ 0x64
c0de190e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1910:	00000000 	.word	0x00000000

c0de1914 <OUTLINED_FUNCTION_0>:
c0de1914:	eb09 0700 	add.w	r7, r9, r0
c0de1918:	4628      	mov	r0, r5
c0de191a:	f897 62b8 	ldrb.w	r6, [r7, #696]	@ 0x2b8
c0de191e:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de1922:	4632      	mov	r2, r6
c0de1924:	4770      	bx	lr

c0de1926 <swap_handle_check_address>:
c0de1926:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de192a:	b0bc      	sub	sp, #240	@ 0xf0
c0de192c:	4604      	mov	r4, r0
c0de192e:	2000      	movs	r0, #0
c0de1930:	68a5      	ldr	r5, [r4, #8]
c0de1932:	61a0      	str	r0, [r4, #24]
c0de1934:	2d00      	cmp	r5, #0
c0de1936:	d04d      	beq.n	c0de19d4 <swap_handle_check_address+0xae>
c0de1938:	6920      	ldr	r0, [r4, #16]
c0de193a:	2800      	cmp	r0, #0
c0de193c:	d04a      	beq.n	c0de19d4 <swap_handle_check_address+0xae>
c0de193e:	f006 fb4d 	bl	c0de7fdc <strlen>
c0de1942:	2828      	cmp	r0, #40	@ 0x28
c0de1944:	d146      	bne.n	c0de19d4 <swap_handle_check_address+0xae>
c0de1946:	7b20      	ldrb	r0, [r4, #12]
c0de1948:	f04f 0800 	mov.w	r8, #0
c0de194c:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de194e:	2161      	movs	r1, #97	@ 0x61
c0de1950:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de1954:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de1956:	ad15      	add	r5, sp, #84	@ 0x54
c0de1958:	4628      	mov	r0, r5
c0de195a:	f006 fae3 	bl	c0de7f24 <__aeabi_memclr>
c0de195e:	ae39      	add	r6, sp, #228	@ 0xe4
c0de1960:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de1964:	4630      	mov	r0, r6
c0de1966:	f005 f8c7 	bl	c0de6af8 <buffer_read_u8>
c0de196a:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de196e:	af2e      	add	r7, sp, #184	@ 0xb8
c0de1970:	4630      	mov	r0, r6
c0de1972:	4639      	mov	r1, r7
c0de1974:	f005 f913 	bl	c0de6b9e <buffer_read_bip32_path>
c0de1978:	2005      	movs	r0, #5
c0de197a:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de197e:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de1982:	463a      	mov	r2, r7
c0de1984:	f8cd 8010 	str.w	r8, [sp, #16]
c0de1988:	e9cd 5100 	strd	r5, r1, [sp]
c0de198c:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de1990:	2000      	movs	r0, #0
c0de1992:	2121      	movs	r1, #33	@ 0x21
c0de1994:	f005 f9c4 	bl	c0de6d20 <bip32_derive_with_seed_get_pubkey_256>
c0de1998:	b9e0      	cbnz	r0, c0de19d4 <swap_handle_check_address+0xae>
c0de199a:	ad10      	add	r5, sp, #64	@ 0x40
c0de199c:	2114      	movs	r1, #20
c0de199e:	4628      	mov	r0, r5
c0de19a0:	f006 fac0 	bl	c0de7f24 <__aeabi_memclr>
c0de19a4:	a815      	add	r0, sp, #84	@ 0x54
c0de19a6:	4629      	mov	r1, r5
c0de19a8:	2214      	movs	r2, #20
c0de19aa:	f7fe fb3d 	bl	c0de0028 <address_from_pubkey>
c0de19ae:	ae05      	add	r6, sp, #20
c0de19b0:	2129      	movs	r1, #41	@ 0x29
c0de19b2:	4630      	mov	r0, r6
c0de19b4:	f006 fab6 	bl	c0de7f24 <__aeabi_memclr>
c0de19b8:	4628      	mov	r0, r5
c0de19ba:	2114      	movs	r1, #20
c0de19bc:	4632      	mov	r2, r6
c0de19be:	2329      	movs	r3, #41	@ 0x29
c0de19c0:	f005 fa8c 	bl	c0de6edc <format_hex>
c0de19c4:	6921      	ldr	r1, [r4, #16]
c0de19c6:	4630      	mov	r0, r6
c0de19c8:	2229      	movs	r2, #41	@ 0x29
c0de19ca:	f006 fb0f 	bl	c0de7fec <strncmp>
c0de19ce:	b908      	cbnz	r0, c0de19d4 <swap_handle_check_address+0xae>
c0de19d0:	2001      	movs	r0, #1
c0de19d2:	61a0      	str	r0, [r4, #24]
c0de19d4:	b03c      	add	sp, #240	@ 0xf0
c0de19d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de19dc <swap_handle_get_printable_amount>:
c0de19dc:	b570      	push	{r4, r5, r6, lr}
c0de19de:	b08c      	sub	sp, #48	@ 0x30
c0de19e0:	ac04      	add	r4, sp, #16
c0de19e2:	4606      	mov	r6, r0
c0de19e4:	211e      	movs	r1, #30
c0de19e6:	4620      	mov	r0, r4
c0de19e8:	f006 fa9c 	bl	c0de7f24 <__aeabi_memclr>
c0de19ec:	f106 050e 	add.w	r5, r6, #14
c0de19f0:	2132      	movs	r1, #50	@ 0x32
c0de19f2:	4628      	mov	r0, r5
c0de19f4:	f006 fa96 	bl	c0de7f24 <__aeabi_memclr>
c0de19f8:	2000      	movs	r0, #0
c0de19fa:	7b31      	ldrb	r1, [r6, #12]
c0de19fc:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1a00:	68b0      	ldr	r0, [r6, #8]
c0de1a02:	aa02      	add	r2, sp, #8
c0de1a04:	f005 fc56 	bl	c0de72b4 <swap_str_to_u64>
c0de1a08:	b178      	cbz	r0, c0de1a2a <swap_handle_get_printable_amount+0x4e>
c0de1a0a:	2003      	movs	r0, #3
c0de1a0c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1a10:	211e      	movs	r1, #30
c0de1a12:	9000      	str	r0, [sp, #0]
c0de1a14:	4620      	mov	r0, r4
c0de1a16:	f005 fa1a 	bl	c0de6e4e <format_fpu64>
c0de1a1a:	9400      	str	r4, [sp, #0]
c0de1a1c:	4628      	mov	r0, r5
c0de1a1e:	2132      	movs	r1, #50	@ 0x32
c0de1a20:	231e      	movs	r3, #30
c0de1a22:	4a03      	ldr	r2, [pc, #12]	@ (c0de1a30 <swap_handle_get_printable_amount+0x54>)
c0de1a24:	447a      	add	r2, pc
c0de1a26:	f005 fddf 	bl	c0de75e8 <snprintf>
c0de1a2a:	b00c      	add	sp, #48	@ 0x30
c0de1a2c:	bd70      	pop	{r4, r5, r6, pc}
c0de1a2e:	bf00      	nop
c0de1a30:	00006a38 	.word	0x00006a38

c0de1a34 <swap_copy_transaction_parameters>:
c0de1a34:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1a36:	b093      	sub	sp, #76	@ 0x4c
c0de1a38:	6985      	ldr	r5, [r0, #24]
c0de1a3a:	b3ad      	cbz	r5, c0de1aa8 <swap_copy_transaction_parameters+0x74>
c0de1a3c:	4604      	mov	r4, r0
c0de1a3e:	4628      	mov	r0, r5
c0de1a40:	f006 facc 	bl	c0de7fdc <strlen>
c0de1a44:	2828      	cmp	r0, #40	@ 0x28
c0de1a46:	d12f      	bne.n	c0de1aa8 <swap_copy_transaction_parameters+0x74>
c0de1a48:	68a7      	ldr	r7, [r4, #8]
c0de1a4a:	b36f      	cbz	r7, c0de1aa8 <swap_copy_transaction_parameters+0x74>
c0de1a4c:	466e      	mov	r6, sp
c0de1a4e:	2148      	movs	r1, #72	@ 0x48
c0de1a50:	4630      	mov	r0, r6
c0de1a52:	f006 fa67 	bl	c0de7f24 <__aeabi_memclr>
c0de1a56:	f106 0018 	add.w	r0, r6, #24
c0de1a5a:	2100      	movs	r1, #0
c0de1a5c:	2928      	cmp	r1, #40	@ 0x28
c0de1a5e:	d009      	beq.n	c0de1a74 <swap_copy_transaction_parameters+0x40>
c0de1a60:	5c6a      	ldrb	r2, [r5, r1]
c0de1a62:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de1a66:	b2db      	uxtb	r3, r3
c0de1a68:	2b1a      	cmp	r3, #26
c0de1a6a:	bf38      	it	cc
c0de1a6c:	3a20      	subcc	r2, #32
c0de1a6e:	5442      	strb	r2, [r0, r1]
c0de1a70:	3101      	adds	r1, #1
c0de1a72:	e7f3      	b.n	c0de1a5c <swap_copy_transaction_parameters+0x28>
c0de1a74:	7b21      	ldrb	r1, [r4, #12]
c0de1a76:	f106 0208 	add.w	r2, r6, #8
c0de1a7a:	4638      	mov	r0, r7
c0de1a7c:	f005 fc1a 	bl	c0de72b4 <swap_str_to_u64>
c0de1a80:	b190      	cbz	r0, c0de1aa8 <swap_copy_transaction_parameters+0x74>
c0de1a82:	7d21      	ldrb	r1, [r4, #20]
c0de1a84:	6920      	ldr	r0, [r4, #16]
c0de1a86:	f106 0210 	add.w	r2, r6, #16
c0de1a8a:	f005 fc13 	bl	c0de72b4 <swap_str_to_u64>
c0de1a8e:	b158      	cbz	r0, c0de1aa8 <swap_copy_transaction_parameters+0x74>
c0de1a90:	2401      	movs	r4, #1
c0de1a92:	f88d 4000 	strb.w	r4, [sp]
c0de1a96:	f005 fd9b 	bl	c0de75d0 <os_explicit_zero_BSS_segment>
c0de1a9a:	4805      	ldr	r0, [pc, #20]	@ (c0de1ab0 <swap_copy_transaction_parameters+0x7c>)
c0de1a9c:	4669      	mov	r1, sp
c0de1a9e:	2248      	movs	r2, #72	@ 0x48
c0de1aa0:	4448      	add	r0, r9
c0de1aa2:	f006 fa35 	bl	c0de7f10 <__aeabi_memcpy>
c0de1aa6:	e000      	b.n	c0de1aaa <swap_copy_transaction_parameters+0x76>
c0de1aa8:	2400      	movs	r4, #0
c0de1aaa:	4620      	mov	r0, r4
c0de1aac:	b013      	add	sp, #76	@ 0x4c
c0de1aae:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1ab0:	00000590 	.word	0x00000590

c0de1ab4 <swap_check_validity>:
c0de1ab4:	b570      	push	{r4, r5, r6, lr}
c0de1ab6:	b08c      	sub	sp, #48	@ 0x30
c0de1ab8:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1b30 <swap_check_validity+0x7c>)
c0de1aba:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1abe:	b32c      	cbz	r4, c0de1b0c <swap_check_validity+0x58>
c0de1ac0:	eb09 0406 	add.w	r4, r9, r6
c0de1ac4:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1ac8:	4069      	eors	r1, r5
c0de1aca:	4060      	eors	r0, r4
c0de1acc:	4308      	orrs	r0, r1
c0de1ace:	d121      	bne.n	c0de1b14 <swap_check_validity+0x60>
c0de1ad0:	eb09 0006 	add.w	r0, r9, r6
c0de1ad4:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1ad8:	4059      	eors	r1, r3
c0de1ada:	4050      	eors	r0, r2
c0de1adc:	4308      	orrs	r0, r1
c0de1ade:	d11d      	bne.n	c0de1b1c <swap_check_validity+0x68>
c0de1ae0:	ad01      	add	r5, sp, #4
c0de1ae2:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de1ae4:	2129      	movs	r1, #41	@ 0x29
c0de1ae6:	4628      	mov	r0, r5
c0de1ae8:	f006 fa1c 	bl	c0de7f24 <__aeabi_memclr>
c0de1aec:	4620      	mov	r0, r4
c0de1aee:	2114      	movs	r1, #20
c0de1af0:	462a      	mov	r2, r5
c0de1af2:	2329      	movs	r3, #41	@ 0x29
c0de1af4:	f005 f9f2 	bl	c0de6edc <format_hex>
c0de1af8:	eb09 0006 	add.w	r0, r9, r6
c0de1afc:	4629      	mov	r1, r5
c0de1afe:	3018      	adds	r0, #24
c0de1b00:	f006 fa62 	bl	c0de7fc8 <strcmp>
c0de1b04:	b970      	cbnz	r0, c0de1b24 <swap_check_validity+0x70>
c0de1b06:	2001      	movs	r0, #1
c0de1b08:	b00c      	add	sp, #48	@ 0x30
c0de1b0a:	bd70      	pop	{r4, r5, r6, pc}
c0de1b0c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1b10:	21ff      	movs	r1, #255	@ 0xff
c0de1b12:	e00a      	b.n	c0de1b2a <swap_check_validity+0x76>
c0de1b14:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1b18:	2101      	movs	r1, #1
c0de1b1a:	e006      	b.n	c0de1b2a <swap_check_validity+0x76>
c0de1b1c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1b20:	2103      	movs	r1, #3
c0de1b22:	e002      	b.n	c0de1b2a <swap_check_validity+0x76>
c0de1b24:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1b28:	2102      	movs	r1, #2
c0de1b2a:	2200      	movs	r2, #0
c0de1b2c:	f005 fb89 	bl	c0de7242 <send_swap_error_simple>
c0de1b30:	00000590 	.word	0x00000590

c0de1b34 <transaction_deserialize>:
c0de1b34:	b570      	push	{r4, r5, r6, lr}
c0de1b36:	460d      	mov	r5, r1
c0de1b38:	4604      	mov	r4, r0
c0de1b3a:	b910      	cbnz	r0, c0de1b42 <transaction_deserialize+0xe>
c0de1b3c:	2001      	movs	r0, #1
c0de1b3e:	f005 fcd3 	bl	c0de74e8 <assert_exit>
c0de1b42:	b915      	cbnz	r5, c0de1b4a <transaction_deserialize+0x16>
c0de1b44:	2001      	movs	r0, #1
c0de1b46:	f005 fccf 	bl	c0de74e8 <assert_exit>
c0de1b4a:	6860      	ldr	r0, [r4, #4]
c0de1b4c:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de1b50:	d901      	bls.n	c0de1b56 <transaction_deserialize+0x22>
c0de1b52:	20f9      	movs	r0, #249	@ 0xf9
c0de1b54:	e04b      	b.n	c0de1bee <transaction_deserialize+0xba>
c0de1b56:	4620      	mov	r0, r4
c0de1b58:	4629      	mov	r1, r5
c0de1b5a:	2200      	movs	r2, #0
c0de1b5c:	f004 ffe2 	bl	c0de6b24 <buffer_read_u64>
c0de1b60:	b330      	cbz	r0, c0de1bb0 <transaction_deserialize+0x7c>
c0de1b62:	6820      	ldr	r0, [r4, #0]
c0de1b64:	68a1      	ldr	r1, [r4, #8]
c0de1b66:	4408      	add	r0, r1
c0de1b68:	2114      	movs	r1, #20
c0de1b6a:	61a8      	str	r0, [r5, #24]
c0de1b6c:	4620      	mov	r0, r4
c0de1b6e:	f004 ffb8 	bl	c0de6ae2 <buffer_seek_cur>
c0de1b72:	b1f8      	cbz	r0, c0de1bb4 <transaction_deserialize+0x80>
c0de1b74:	f105 0108 	add.w	r1, r5, #8
c0de1b78:	4620      	mov	r0, r4
c0de1b7a:	2200      	movs	r2, #0
c0de1b7c:	2600      	movs	r6, #0
c0de1b7e:	f004 ffd1 	bl	c0de6b24 <buffer_read_u64>
c0de1b82:	b1c8      	cbz	r0, c0de1bb8 <transaction_deserialize+0x84>
c0de1b84:	f105 0120 	add.w	r1, r5, #32
c0de1b88:	4620      	mov	r0, r4
c0de1b8a:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1b8e:	f004 ffe9 	bl	c0de6b64 <buffer_read_varint>
c0de1b92:	6a29      	ldr	r1, [r5, #32]
c0de1b94:	b990      	cbnz	r0, c0de1bbc <transaction_deserialize+0x88>
c0de1b96:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1b98:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1b9c:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1ba0:	2300      	movs	r3, #0
c0de1ba2:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de1ba6:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1baa:	d207      	bcs.n	c0de1bbc <transaction_deserialize+0x88>
c0de1bac:	20fc      	movs	r0, #252	@ 0xfc
c0de1bae:	e01e      	b.n	c0de1bee <transaction_deserialize+0xba>
c0de1bb0:	20ff      	movs	r0, #255	@ 0xff
c0de1bb2:	e01c      	b.n	c0de1bee <transaction_deserialize+0xba>
c0de1bb4:	20fe      	movs	r0, #254	@ 0xfe
c0de1bb6:	e01a      	b.n	c0de1bee <transaction_deserialize+0xba>
c0de1bb8:	20fd      	movs	r0, #253	@ 0xfd
c0de1bba:	e018      	b.n	c0de1bee <transaction_deserialize+0xba>
c0de1bbc:	6820      	ldr	r0, [r4, #0]
c0de1bbe:	68a2      	ldr	r2, [r4, #8]
c0de1bc0:	4410      	add	r0, r2
c0de1bc2:	61e8      	str	r0, [r5, #28]
c0de1bc4:	4620      	mov	r0, r4
c0de1bc6:	f004 ff8c 	bl	c0de6ae2 <buffer_seek_cur>
c0de1bca:	b168      	cbz	r0, c0de1be8 <transaction_deserialize+0xb4>
c0de1bcc:	f105 031c 	add.w	r3, r5, #28
c0de1bd0:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de1bd2:	f000 f80e 	bl	c0de1bf2 <transaction_utils_check_encoding>
c0de1bd6:	b148      	cbz	r0, c0de1bec <transaction_deserialize+0xb8>
c0de1bd8:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1bdc:	f06f 0006 	mvn.w	r0, #6
c0de1be0:	428a      	cmp	r2, r1
c0de1be2:	bf08      	it	eq
c0de1be4:	2001      	moveq	r0, #1
c0de1be6:	e002      	b.n	c0de1bee <transaction_deserialize+0xba>
c0de1be8:	20fb      	movs	r0, #251	@ 0xfb
c0de1bea:	e000      	b.n	c0de1bee <transaction_deserialize+0xba>
c0de1bec:	20fa      	movs	r0, #250	@ 0xfa
c0de1bee:	b240      	sxtb	r0, r0
c0de1bf0:	bd70      	pop	{r4, r5, r6, pc}

c0de1bf2 <transaction_utils_check_encoding>:
c0de1bf2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1bf4:	461c      	mov	r4, r3
c0de1bf6:	4615      	mov	r5, r2
c0de1bf8:	4606      	mov	r6, r0
c0de1bfa:	b910      	cbnz	r0, c0de1c02 <transaction_utils_check_encoding+0x10>
c0de1bfc:	2001      	movs	r0, #1
c0de1bfe:	f005 fc73 	bl	c0de74e8 <assert_exit>
c0de1c02:	2000      	movs	r0, #0
c0de1c04:	2300      	movs	r3, #0
c0de1c06:	4602      	mov	r2, r0
c0de1c08:	1b40      	subs	r0, r0, r5
c0de1c0a:	4619      	mov	r1, r3
c0de1c0c:	eb73 0004 	sbcs.w	r0, r3, r4
c0de1c10:	d206      	bcs.n	c0de1c20 <transaction_utils_check_encoding+0x2e>
c0de1c12:	56b7      	ldrsb	r7, [r6, r2]
c0de1c14:	1c50      	adds	r0, r2, #1
c0de1c16:	f141 0300 	adc.w	r3, r1, #0
c0de1c1a:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de1c1e:	dcf2      	bgt.n	c0de1c06 <transaction_utils_check_encoding+0x14>
c0de1c20:	2000      	movs	r0, #0
c0de1c22:	1b52      	subs	r2, r2, r5
c0de1c24:	41a1      	sbcs	r1, r4
c0de1c26:	bf28      	it	cs
c0de1c28:	2001      	movcs	r0, #1
c0de1c2a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1c2c <validate_pubkey>:
c0de1c2c:	b108      	cbz	r0, c0de1c32 <validate_pubkey+0x6>
c0de1c2e:	f7ff be27 	b.w	c0de1880 <helper_send_response_pubkey>
c0de1c32:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1c36:	f000 b800 	b.w	c0de1c3a <io_send_sw>

c0de1c3a <io_send_sw>:
c0de1c3a:	b580      	push	{r7, lr}
c0de1c3c:	4602      	mov	r2, r0
c0de1c3e:	2000      	movs	r0, #0
c0de1c40:	2100      	movs	r1, #0
c0de1c42:	f005 f9ab 	bl	c0de6f9c <io_send_response_buffers>
c0de1c46:	bd80      	pop	{r7, pc}

c0de1c48 <validate_transaction>:
c0de1c48:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1c4c:	b08c      	sub	sp, #48	@ 0x30
c0de1c4e:	b378      	cbz	r0, c0de1cb0 <validate_transaction+0x68>
c0de1c50:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1ce8 <validate_transaction+0xa0>
c0de1c54:	2002      	movs	r0, #2
c0de1c56:	2500      	movs	r5, #0
c0de1c58:	2720      	movs	r7, #32
c0de1c5a:	2203      	movs	r2, #3
c0de1c5c:	f240 6401 	movw	r4, #1537	@ 0x601
c0de1c60:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de1c64:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de1c68:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de1c6a:	f809 0008 	strb.w	r0, [r9, r8]
c0de1c6e:	2060      	movs	r0, #96	@ 0x60
c0de1c70:	900a      	str	r0, [sp, #40]	@ 0x28
c0de1c72:	eb09 0008 	add.w	r0, r9, r8
c0de1c76:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de1c7a:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1c7e:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1c82:	e9cd 4200 	strd	r4, r2, [sp]
c0de1c86:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de1c8a:	2000      	movs	r0, #0
c0de1c8c:	9508      	str	r5, [sp, #32]
c0de1c8e:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1c92:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de1c96:	2121      	movs	r1, #33	@ 0x21
c0de1c98:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1c9c:	f005 f874 	bl	c0de6d88 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1ca0:	b188      	cbz	r0, c0de1cc6 <validate_transaction+0x7e>
c0de1ca2:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de1ca6:	f809 5008 	strb.w	r5, [r9, r8]
c0de1caa:	f7ff ffc6 	bl	c0de1c3a <io_send_sw>
c0de1cae:	e017      	b.n	c0de1ce0 <validate_transaction+0x98>
c0de1cb0:	480d      	ldr	r0, [pc, #52]	@ (c0de1ce8 <validate_transaction+0xa0>)
c0de1cb2:	2100      	movs	r1, #0
c0de1cb4:	f809 1000 	strb.w	r1, [r9, r0]
c0de1cb8:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1cbc:	b00c      	add	sp, #48	@ 0x30
c0de1cbe:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1cc2:	f7ff bfba 	b.w	c0de1c3a <io_send_sw>
c0de1cc6:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1cc8:	eb09 0008 	add.w	r0, r9, r8
c0de1ccc:	f880 12b8 	strb.w	r1, [r0, #696]	@ 0x2b8
c0de1cd0:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1cd4:	f001 0101 	and.w	r1, r1, #1
c0de1cd8:	f880 12b9 	strb.w	r1, [r0, #697]	@ 0x2b9
c0de1cdc:	f7ff fdfe 	bl	c0de18dc <helper_send_response_sig>
c0de1ce0:	b00c      	add	sp, #48	@ 0x30
c0de1ce2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1ce6:	bf00      	nop
c0de1ce8:	00000000 	.word	0x00000000

c0de1cec <app_quit>:
c0de1cec:	20ff      	movs	r0, #255	@ 0xff
c0de1cee:	f005 ffd3 	bl	c0de7c98 <os_sched_exit>
	...

c0de1cf4 <ui_menu_main>:
c0de1cf4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1cf6:	4c19      	ldr	r4, [pc, #100]	@ (c0de1d5c <ui_menu_main+0x68>)
c0de1cf8:	4817      	ldr	r0, [pc, #92]	@ (c0de1d58 <ui_menu_main+0x64>)
c0de1cfa:	447c      	add	r4, pc
c0de1cfc:	eb09 0500 	add.w	r5, r9, r0
c0de1d00:	f000 f8d8 	bl	c0de1eb4 <OUTLINED_FUNCTION_0>
c0de1d04:	2114      	movs	r1, #20
c0de1d06:	7369      	strb	r1, [r5, #13]
c0de1d08:	4915      	ldr	r1, [pc, #84]	@ (c0de1d60 <ui_menu_main+0x6c>)
c0de1d0a:	4a16      	ldr	r2, [pc, #88]	@ (c0de1d64 <ui_menu_main+0x70>)
c0de1d0c:	4479      	add	r1, pc
c0de1d0e:	447a      	add	r2, pc
c0de1d10:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1d14:	7800      	ldrb	r0, [r0, #0]
c0de1d16:	7328      	strb	r0, [r5, #12]
c0de1d18:	f000 f8cc 	bl	c0de1eb4 <OUTLINED_FUNCTION_0>
c0de1d1c:	2115      	movs	r1, #21
c0de1d1e:	7669      	strb	r1, [r5, #25]
c0de1d20:	4911      	ldr	r1, [pc, #68]	@ (c0de1d68 <ui_menu_main+0x74>)
c0de1d22:	4a12      	ldr	r2, [pc, #72]	@ (c0de1d6c <ui_menu_main+0x78>)
c0de1d24:	4479      	add	r1, pc
c0de1d26:	447a      	add	r2, pc
c0de1d28:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1d2c:	2100      	movs	r1, #0
c0de1d2e:	7840      	ldrb	r0, [r0, #1]
c0de1d30:	7628      	strb	r0, [r5, #24]
c0de1d32:	480f      	ldr	r0, [pc, #60]	@ (c0de1d70 <ui_menu_main+0x7c>)
c0de1d34:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1d74 <ui_menu_main+0x80>)
c0de1d36:	4b10      	ldr	r3, [pc, #64]	@ (c0de1d78 <ui_menu_main+0x84>)
c0de1d38:	4478      	add	r0, pc
c0de1d3a:	447a      	add	r2, pc
c0de1d3c:	447b      	add	r3, pc
c0de1d3e:	e9cd 3200 	strd	r3, r2, [sp]
c0de1d42:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1d46:	2200      	movs	r2, #0
c0de1d48:	23ff      	movs	r3, #255	@ 0xff
c0de1d4a:	480c      	ldr	r0, [pc, #48]	@ (c0de1d7c <ui_menu_main+0x88>)
c0de1d4c:	490c      	ldr	r1, [pc, #48]	@ (c0de1d80 <ui_menu_main+0x8c>)
c0de1d4e:	4478      	add	r0, pc
c0de1d50:	4479      	add	r1, pc
c0de1d52:	f003 f93b 	bl	c0de4fcc <nbgl_useCaseHomeAndSettings>
c0de1d56:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1d58:	000005d8 	.word	0x000005d8
c0de1d5c:	00007902 	.word	0x00007902
c0de1d60:	000065fd 	.word	0x000065fd
c0de1d64:	00006764 	.word	0x00006764
c0de1d68:	00006660 	.word	0x00006660
c0de1d6c:	000064cc 	.word	0x000064cc
c0de1d70:	ffffffb1 	.word	0xffffffb1
c0de1d74:	0000721e 	.word	0x0000721e
c0de1d78:	00007210 	.word	0x00007210
c0de1d7c:	000067d4 	.word	0x000067d4
c0de1d80:	000062fb 	.word	0x000062fb

c0de1d84 <controls_callback>:
c0de1d84:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1d86:	4c22      	ldr	r4, [pc, #136]	@ (c0de1e10 <controls_callback+0x8c>)
c0de1d88:	2815      	cmp	r0, #21
c0de1d8a:	f809 2004 	strb.w	r2, [r9, r4]
c0de1d8e:	d011      	beq.n	c0de1db4 <controls_callback+0x30>
c0de1d90:	2814      	cmp	r0, #20
c0de1d92:	d12a      	bne.n	c0de1dea <controls_callback+0x66>
c0de1d94:	eb09 0504 	add.w	r5, r9, r4
c0de1d98:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1e14 <controls_callback+0x90>)
c0de1d9a:	447c      	add	r4, pc
c0de1d9c:	f000 f88a 	bl	c0de1eb4 <OUTLINED_FUNCTION_0>
c0de1da0:	7800      	ldrb	r0, [r0, #0]
c0de1da2:	fab0 f080 	clz	r0, r0
c0de1da6:	0940      	lsrs	r0, r0, #5
c0de1da8:	7328      	strb	r0, [r5, #12]
c0de1daa:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1dae:	f000 f881 	bl	c0de1eb4 <OUTLINED_FUNCTION_0>
c0de1db2:	e015      	b.n	c0de1de0 <controls_callback+0x5c>
c0de1db4:	4818      	ldr	r0, [pc, #96]	@ (c0de1e18 <controls_callback+0x94>)
c0de1db6:	4478      	add	r0, pc
c0de1db8:	f005 fda8 	bl	c0de790c <pic>
c0de1dbc:	7840      	ldrb	r0, [r0, #1]
c0de1dbe:	b1a8      	cbz	r0, c0de1dec <controls_callback+0x68>
c0de1dc0:	eb09 0504 	add.w	r5, r9, r4
c0de1dc4:	4c15      	ldr	r4, [pc, #84]	@ (c0de1e1c <controls_callback+0x98>)
c0de1dc6:	447c      	add	r4, pc
c0de1dc8:	f000 f874 	bl	c0de1eb4 <OUTLINED_FUNCTION_0>
c0de1dcc:	7840      	ldrb	r0, [r0, #1]
c0de1dce:	fab0 f080 	clz	r0, r0
c0de1dd2:	0940      	lsrs	r0, r0, #5
c0de1dd4:	7628      	strb	r0, [r5, #24]
c0de1dd6:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1dda:	f000 f86b 	bl	c0de1eb4 <OUTLINED_FUNCTION_0>
c0de1dde:	3001      	adds	r0, #1
c0de1de0:	f10d 010f 	add.w	r1, sp, #15
c0de1de4:	2201      	movs	r2, #1
c0de1de6:	f005 fdc1 	bl	c0de796c <nvm_write>
c0de1dea:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1dec:	480c      	ldr	r0, [pc, #48]	@ (c0de1e20 <controls_callback+0x9c>)
c0de1dee:	490d      	ldr	r1, [pc, #52]	@ (c0de1e24 <controls_callback+0xa0>)
c0de1df0:	4478      	add	r0, pc
c0de1df2:	4479      	add	r1, pc
c0de1df4:	e9cd 1000 	strd	r1, r0, [sp]
c0de1df8:	480b      	ldr	r0, [pc, #44]	@ (c0de1e28 <controls_callback+0xa4>)
c0de1dfa:	490c      	ldr	r1, [pc, #48]	@ (c0de1e2c <controls_callback+0xa8>)
c0de1dfc:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1e30 <controls_callback+0xac>)
c0de1dfe:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1e34 <controls_callback+0xb0>)
c0de1e00:	4478      	add	r0, pc
c0de1e02:	4479      	add	r1, pc
c0de1e04:	447a      	add	r2, pc
c0de1e06:	447b      	add	r3, pc
c0de1e08:	f003 fd76 	bl	c0de58f8 <nbgl_useCaseChoice>
c0de1e0c:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1e0e:	bf00      	nop
c0de1e10:	000005d8 	.word	0x000005d8
c0de1e14:	00007862 	.word	0x00007862
c0de1e18:	00007846 	.word	0x00007846
c0de1e1c:	00007836 	.word	0x00007836
c0de1e20:	00000045 	.word	0x00000045
c0de1e24:	000065b8 	.word	0x000065b8
c0de1e28:	000063c5 	.word	0x000063c5
c0de1e2c:	000063f0 	.word	0x000063f0
c0de1e30:	0000648e 	.word	0x0000648e
c0de1e34:	00006674 	.word	0x00006674

c0de1e38 <review_warning_choice>:
c0de1e38:	b5b0      	push	{r4, r5, r7, lr}
c0de1e3a:	b086      	sub	sp, #24
c0de1e3c:	b1a8      	cbz	r0, c0de1e6a <review_warning_choice+0x32>
c0de1e3e:	4c17      	ldr	r4, [pc, #92]	@ (c0de1e9c <review_warning_choice+0x64>)
c0de1e40:	4815      	ldr	r0, [pc, #84]	@ (c0de1e98 <review_warning_choice+0x60>)
c0de1e42:	447c      	add	r4, pc
c0de1e44:	eb09 0500 	add.w	r5, r9, r0
c0de1e48:	f000 f834 	bl	c0de1eb4 <OUTLINED_FUNCTION_0>
c0de1e4c:	7840      	ldrb	r0, [r0, #1]
c0de1e4e:	fab0 f080 	clz	r0, r0
c0de1e52:	0940      	lsrs	r0, r0, #5
c0de1e54:	7628      	strb	r0, [r5, #24]
c0de1e56:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1e5a:	f000 f82b 	bl	c0de1eb4 <OUTLINED_FUNCTION_0>
c0de1e5e:	3001      	adds	r0, #1
c0de1e60:	f10d 0117 	add.w	r1, sp, #23
c0de1e64:	2201      	movs	r2, #1
c0de1e66:	f005 fd81 	bl	c0de796c <nvm_write>
c0de1e6a:	480b      	ldr	r0, [pc, #44]	@ (c0de1e98 <review_warning_choice+0x60>)
c0de1e6c:	2100      	movs	r1, #0
c0de1e6e:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1e72:	480b      	ldr	r0, [pc, #44]	@ (c0de1ea0 <review_warning_choice+0x68>)
c0de1e74:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1ea4 <review_warning_choice+0x6c>)
c0de1e76:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1ea8 <review_warning_choice+0x70>)
c0de1e78:	4478      	add	r0, pc
c0de1e7a:	447a      	add	r2, pc
c0de1e7c:	447c      	add	r4, pc
c0de1e7e:	e9cd 4200 	strd	r4, r2, [sp]
c0de1e82:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1e86:	2200      	movs	r2, #0
c0de1e88:	4808      	ldr	r0, [pc, #32]	@ (c0de1eac <review_warning_choice+0x74>)
c0de1e8a:	4909      	ldr	r1, [pc, #36]	@ (c0de1eb0 <review_warning_choice+0x78>)
c0de1e8c:	4478      	add	r0, pc
c0de1e8e:	4479      	add	r1, pc
c0de1e90:	f003 f89c 	bl	c0de4fcc <nbgl_useCaseHomeAndSettings>
c0de1e94:	b006      	add	sp, #24
c0de1e96:	bdb0      	pop	{r4, r5, r7, pc}
c0de1e98:	000005d8 	.word	0x000005d8
c0de1e9c:	000077ba 	.word	0x000077ba
c0de1ea0:	fffffe71 	.word	0xfffffe71
c0de1ea4:	000070de 	.word	0x000070de
c0de1ea8:	000070d0 	.word	0x000070d0
c0de1eac:	00006696 	.word	0x00006696
c0de1eb0:	000061bd 	.word	0x000061bd

c0de1eb4 <OUTLINED_FUNCTION_0>:
c0de1eb4:	4620      	mov	r0, r4
c0de1eb6:	f005 bd29 	b.w	c0de790c <pic>
	...

c0de1ebc <ui_display_address>:
c0de1ebc:	b570      	push	{r4, r5, r6, lr}
c0de1ebe:	b088      	sub	sp, #32
c0de1ec0:	4e22      	ldr	r6, [pc, #136]	@ (c0de1f4c <ui_display_address+0x90>)
c0de1ec2:	eb09 0106 	add.w	r1, r9, r6
c0de1ec6:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1eca:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1ece:	4308      	orrs	r0, r1
c0de1ed0:	d12a      	bne.n	c0de1f28 <ui_display_address+0x6c>
c0de1ed2:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1f50 <ui_display_address+0x94>)
c0de1ed4:	212b      	movs	r1, #43	@ 0x2b
c0de1ed6:	eb09 0005 	add.w	r0, r9, r5
c0de1eda:	f006 f823 	bl	c0de7f24 <__aeabi_memclr>
c0de1ede:	ac03      	add	r4, sp, #12
c0de1ee0:	2114      	movs	r1, #20
c0de1ee2:	4620      	mov	r0, r4
c0de1ee4:	f006 f81e 	bl	c0de7f24 <__aeabi_memclr>
c0de1ee8:	eb09 0006 	add.w	r0, r9, r6
c0de1eec:	4621      	mov	r1, r4
c0de1eee:	2214      	movs	r2, #20
c0de1ef0:	3008      	adds	r0, #8
c0de1ef2:	f7fe f899 	bl	c0de0028 <address_from_pubkey>
c0de1ef6:	b308      	cbz	r0, c0de1f3c <ui_display_address+0x80>
c0de1ef8:	eb09 0205 	add.w	r2, r9, r5
c0de1efc:	a803      	add	r0, sp, #12
c0de1efe:	2114      	movs	r1, #20
c0de1f00:	232b      	movs	r3, #43	@ 0x2b
c0de1f02:	f004 ffeb 	bl	c0de6edc <format_hex>
c0de1f06:	3001      	adds	r0, #1
c0de1f08:	d018      	beq.n	c0de1f3c <ui_display_address+0x80>
c0de1f0a:	4812      	ldr	r0, [pc, #72]	@ (c0de1f54 <ui_display_address+0x98>)
c0de1f0c:	2400      	movs	r4, #0
c0de1f0e:	2100      	movs	r1, #0
c0de1f10:	4478      	add	r0, pc
c0de1f12:	e9cd 4000 	strd	r4, r0, [sp]
c0de1f16:	eb09 0005 	add.w	r0, r9, r5
c0de1f1a:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1f58 <ui_display_address+0x9c>)
c0de1f1c:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1f5c <ui_display_address+0xa0>)
c0de1f1e:	447a      	add	r2, pc
c0de1f20:	447b      	add	r3, pc
c0de1f22:	f003 f9cd 	bl	c0de52c0 <nbgl_useCaseAddressReview>
c0de1f26:	e00e      	b.n	c0de1f46 <ui_display_address+0x8a>
c0de1f28:	2000      	movs	r0, #0
c0de1f2a:	f809 0006 	strb.w	r0, [r9, r6]
c0de1f2e:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1f32:	b008      	add	sp, #32
c0de1f34:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1f38:	f000 b812 	b.w	c0de1f60 <io_send_sw>
c0de1f3c:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1f40:	f000 f80e 	bl	c0de1f60 <io_send_sw>
c0de1f44:	4604      	mov	r4, r0
c0de1f46:	4620      	mov	r0, r4
c0de1f48:	b008      	add	sp, #32
c0de1f4a:	bd70      	pop	{r4, r5, r6, pc}
c0de1f4c:	00000000 	.word	0x00000000
c0de1f50:	000005f4 	.word	0x000005f4
c0de1f54:	0000005d 	.word	0x0000005d
c0de1f58:	000062ca 	.word	0x000062ca
c0de1f5c:	000065ca 	.word	0x000065ca

c0de1f60 <io_send_sw>:
c0de1f60:	b580      	push	{r7, lr}
c0de1f62:	4602      	mov	r2, r0
c0de1f64:	2000      	movs	r0, #0
c0de1f66:	2100      	movs	r1, #0
c0de1f68:	f005 f818 	bl	c0de6f9c <io_send_response_buffers>
c0de1f6c:	bd80      	pop	{r7, pc}
	...

c0de1f70 <review_choice>:
c0de1f70:	b510      	push	{r4, lr}
c0de1f72:	4604      	mov	r4, r0
c0de1f74:	f7ff fe5a 	bl	c0de1c2c <validate_pubkey>
c0de1f78:	2007      	movs	r0, #7
c0de1f7a:	2c00      	cmp	r4, #0
c0de1f7c:	bf18      	it	ne
c0de1f7e:	2006      	movne	r0, #6
c0de1f80:	4902      	ldr	r1, [pc, #8]	@ (c0de1f8c <review_choice+0x1c>)
c0de1f82:	4479      	add	r1, pc
c0de1f84:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1f88:	f003 bb8c 	b.w	c0de56a4 <nbgl_useCaseReviewStatus>
c0de1f8c:	fffffd6f 	.word	0xfffffd6f

c0de1f90 <ui_display_transaction_bs_choice>:
c0de1f90:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1f92:	b085      	sub	sp, #20
c0de1f94:	4f2d      	ldr	r7, [pc, #180]	@ (c0de204c <ui_display_transaction_bs_choice+0xbc>)
c0de1f96:	4604      	mov	r4, r0
c0de1f98:	eb09 0007 	add.w	r0, r9, r7
c0de1f9c:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1fa0:	2801      	cmp	r0, #1
c0de1fa2:	d137      	bne.n	c0de2014 <ui_display_transaction_bs_choice+0x84>
c0de1fa4:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1fa8:	2801      	cmp	r0, #1
c0de1faa:	d133      	bne.n	c0de2014 <ui_display_transaction_bs_choice+0x84>
c0de1fac:	4e28      	ldr	r6, [pc, #160]	@ (c0de2050 <ui_display_transaction_bs_choice+0xc0>)
c0de1fae:	2140      	movs	r1, #64	@ 0x40
c0de1fb0:	eb09 0006 	add.w	r0, r9, r6
c0de1fb4:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1fb8:	4628      	mov	r0, r5
c0de1fba:	f005 ffb3 	bl	c0de7f24 <__aeabi_memclr>
c0de1fbe:	eb09 0007 	add.w	r0, r9, r7
c0de1fc2:	2114      	movs	r1, #20
c0de1fc4:	462a      	mov	r2, r5
c0de1fc6:	2340      	movs	r3, #64	@ 0x40
c0de1fc8:	302d      	adds	r0, #45	@ 0x2d
c0de1fca:	f004 ff87 	bl	c0de6edc <format_hex>
c0de1fce:	3001      	adds	r0, #1
c0de1fd0:	d026      	beq.n	c0de2020 <ui_display_transaction_bs_choice+0x90>
c0de1fd2:	4920      	ldr	r1, [pc, #128]	@ (c0de2054 <ui_display_transaction_bs_choice+0xc4>)
c0de1fd4:	eb09 0006 	add.w	r0, r9, r6
c0de1fd8:	4602      	mov	r2, r0
c0de1fda:	4479      	add	r1, pc
c0de1fdc:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1fe0:	2101      	movs	r1, #1
c0de1fe2:	72c1      	strb	r1, [r0, #11]
c0de1fe4:	7201      	strb	r1, [r0, #8]
c0de1fe6:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1fea:	f849 2006 	str.w	r2, [r9, r6]
c0de1fee:	6181      	str	r1, [r0, #24]
c0de1ff0:	2100      	movs	r1, #0
c0de1ff2:	4819      	ldr	r0, [pc, #100]	@ (c0de2058 <ui_display_transaction_bs_choice+0xc8>)
c0de1ff4:	4478      	add	r0, pc
c0de1ff6:	b1d4      	cbz	r4, c0de202e <ui_display_transaction_bs_choice+0x9e>
c0de1ff8:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1ffc:	e9cd 1100 	strd	r1, r1, [sp]
c0de2000:	eb09 0106 	add.w	r1, r9, r6
c0de2004:	2000      	movs	r0, #0
c0de2006:	4a15      	ldr	r2, [pc, #84]	@ (c0de205c <ui_display_transaction_bs_choice+0xcc>)
c0de2008:	4b15      	ldr	r3, [pc, #84]	@ (c0de2060 <ui_display_transaction_bs_choice+0xd0>)
c0de200a:	447a      	add	r2, pc
c0de200c:	447b      	add	r3, pc
c0de200e:	f003 f945 	bl	c0de529c <nbgl_useCaseReviewBlindSigning>
c0de2012:	e018      	b.n	c0de2046 <ui_display_transaction_bs_choice+0xb6>
c0de2014:	2000      	movs	r0, #0
c0de2016:	f809 0007 	strb.w	r0, [r9, r7]
c0de201a:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de201e:	e001      	b.n	c0de2024 <ui_display_transaction_bs_choice+0x94>
c0de2020:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de2024:	b005      	add	sp, #20
c0de2026:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de202a:	f000 b81f 	b.w	c0de206c <io_send_sw>
c0de202e:	e9cd 1100 	strd	r1, r1, [sp]
c0de2032:	9002      	str	r0, [sp, #8]
c0de2034:	eb09 0106 	add.w	r1, r9, r6
c0de2038:	2000      	movs	r0, #0
c0de203a:	4a0a      	ldr	r2, [pc, #40]	@ (c0de2064 <ui_display_transaction_bs_choice+0xd4>)
c0de203c:	4b0a      	ldr	r3, [pc, #40]	@ (c0de2068 <ui_display_transaction_bs_choice+0xd8>)
c0de203e:	447a      	add	r2, pc
c0de2040:	447b      	add	r3, pc
c0de2042:	f003 f86b 	bl	c0de511c <nbgl_useCaseReview>
c0de2046:	2000      	movs	r0, #0
c0de2048:	b005      	add	sp, #20
c0de204a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de204c:	00000000 	.word	0x00000000
c0de2050:	00000620 	.word	0x00000620
c0de2054:	000064b6 	.word	0x000064b6
c0de2058:	00000085 	.word	0x00000085
c0de205c:	000061de 	.word	0x000061de
c0de2060:	000064f1 	.word	0x000064f1
c0de2064:	000061aa 	.word	0x000061aa
c0de2068:	000064bd 	.word	0x000064bd

c0de206c <io_send_sw>:
c0de206c:	b580      	push	{r7, lr}
c0de206e:	4602      	mov	r2, r0
c0de2070:	2000      	movs	r0, #0
c0de2072:	2100      	movs	r1, #0
c0de2074:	f004 ff92 	bl	c0de6f9c <io_send_response_buffers>
c0de2078:	bd80      	pop	{r7, pc}
	...

c0de207c <review_choice>:
c0de207c:	b510      	push	{r4, lr}
c0de207e:	4604      	mov	r4, r0
c0de2080:	f7ff fde2 	bl	c0de1c48 <validate_transaction>
c0de2084:	4903      	ldr	r1, [pc, #12]	@ (c0de2094 <review_choice+0x18>)
c0de2086:	f084 0001 	eor.w	r0, r4, #1
c0de208a:	4479      	add	r1, pc
c0de208c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2090:	f003 bb08 	b.w	c0de56a4 <nbgl_useCaseReviewStatus>
c0de2094:	fffffc67 	.word	0xfffffc67

c0de2098 <ui_display_blind_signed_transaction>:
c0de2098:	2001      	movs	r0, #1
c0de209a:	f7ff bf79 	b.w	c0de1f90 <ui_display_transaction_bs_choice>

c0de209e <ui_display_transaction>:
c0de209e:	2000      	movs	r0, #0
c0de20a0:	f7ff bf76 	b.w	c0de1f90 <ui_display_transaction_bs_choice>

c0de20a4 <zkn_prv_hash>:
c0de20a4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de20a8:	460c      	mov	r4, r1
c0de20aa:	e9cd 0200 	strd	r0, r2, [sp]
c0de20ae:	4668      	mov	r0, sp
c0de20b0:	2101      	movs	r1, #1
c0de20b2:	2601      	movs	r6, #1
c0de20b4:	4622      	mov	r2, r4
c0de20b6:	f005 f9de 	bl	c0de7476 <cx_blake2b_512_hash_iovec>
c0de20ba:	4605      	mov	r5, r0
c0de20bc:	bb18      	cbnz	r0, c0de2106 <zkn_prv_hash+0x62>
c0de20be:	7820      	ldrb	r0, [r4, #0]
c0de20c0:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de20c4:	7020      	strb	r0, [r4, #0]
c0de20c6:	7fe0      	ldrb	r0, [r4, #31]
c0de20c8:	f366 109f 	bfi	r0, r6, #6, #26
c0de20cc:	77e0      	strb	r0, [r4, #31]
c0de20ce:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de20d2:	4e0e      	ldr	r6, [pc, #56]	@ (c0de210c <zkn_prv_hash+0x68>)
c0de20d4:	447e      	add	r6, pc
c0de20d6:	47b0      	blx	r6
c0de20d8:	4680      	mov	r8, r0
c0de20da:	468a      	mov	sl, r1
c0de20dc:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de20e0:	47b0      	blx	r6
c0de20e2:	4683      	mov	fp, r0
c0de20e4:	460f      	mov	r7, r1
c0de20e6:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de20ea:	47b0      	blx	r6
c0de20ec:	e9c4 0100 	strd	r0, r1, [r4]
c0de20f0:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de20f4:	47b0      	blx	r6
c0de20f6:	f104 0208 	add.w	r2, r4, #8
c0de20fa:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de20fe:	f104 0014 	add.w	r0, r4, #20
c0de2102:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de2106:	4628      	mov	r0, r5
c0de2108:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de210c:	00000325 	.word	0x00000325

c0de2110 <zkn_prv2pub>:
c0de2110:	b570      	push	{r4, r5, r6, lr}
c0de2112:	b092      	sub	sp, #72	@ 0x48
c0de2114:	4614      	mov	r4, r2
c0de2116:	6802      	ldr	r2, [r0, #0]
c0de2118:	ae02      	add	r6, sp, #8
c0de211a:	4605      	mov	r5, r0
c0de211c:	4608      	mov	r0, r1
c0de211e:	4631      	mov	r1, r6
c0de2120:	f7ff ffc0 	bl	c0de20a4 <zkn_prv_hash>
c0de2124:	2000      	movs	r0, #0
c0de2126:	2100      	movs	r1, #0
c0de2128:	2820      	cmp	r0, #32
c0de212a:	d009      	beq.n	c0de2140 <zkn_prv2pub+0x30>
c0de212c:	5c32      	ldrb	r2, [r6, r0]
c0de212e:	0149      	lsls	r1, r1, #5
c0de2130:	0613      	lsls	r3, r2, #24
c0de2132:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de2136:	5431      	strb	r1, [r6, r0]
c0de2138:	f002 0107 	and.w	r1, r2, #7
c0de213c:	3001      	adds	r0, #1
c0de213e:	e7f3      	b.n	c0de2128 <zkn_prv2pub+0x18>
c0de2140:	4629      	mov	r1, r5
c0de2142:	4628      	mov	r0, r5
c0de2144:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de2148:	9400      	str	r4, [sp, #0]
c0de214a:	aa02      	add	r2, sp, #8
c0de214c:	f001 f944 	bl	c0de33d8 <tEdwards_scalarMul>
c0de2150:	b918      	cbnz	r0, c0de215a <zkn_prv2pub+0x4a>
c0de2152:	4628      	mov	r0, r5
c0de2154:	4621      	mov	r1, r4
c0de2156:	f001 f87a 	bl	c0de324e <tEdwards_normalize>
c0de215a:	b012      	add	sp, #72	@ 0x48
c0de215c:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de2160 <EddsaPoseidon_Sign_final>:
c0de2160:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2164:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de2168:	4605      	mov	r5, r0
c0de216a:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de216c:	2820      	cmp	r0, #32
c0de216e:	d118      	bne.n	c0de21a2 <EddsaPoseidon_Sign_final+0x42>
c0de2170:	460e      	mov	r6, r1
c0de2172:	a982      	add	r1, sp, #520	@ 0x208
c0de2174:	4628      	mov	r0, r5
c0de2176:	461f      	mov	r7, r3
c0de2178:	4692      	mov	sl, r2
c0de217a:	f000 fd37 	bl	c0de2bec <tEdwards_alloc>
c0de217e:	b988      	cbnz	r0, c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2180:	682a      	ldr	r2, [r5, #0]
c0de2182:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de2184:	4630      	mov	r0, r6
c0de2186:	4621      	mov	r1, r4
c0de2188:	f7ff ff8c 	bl	c0de20a4 <zkn_prv_hash>
c0de218c:	b950      	cbnz	r0, c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de218e:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de2192:	2000      	movs	r0, #0
c0de2194:	a95a      	add	r1, sp, #360	@ 0x168
c0de2196:	2820      	cmp	r0, #32
c0de2198:	d008      	beq.n	c0de21ac <EddsaPoseidon_Sign_final+0x4c>
c0de219a:	5c22      	ldrb	r2, [r4, r0]
c0de219c:	540a      	strb	r2, [r1, r0]
c0de219e:	3001      	adds	r0, #1
c0de21a0:	e7f9      	b.n	c0de2196 <EddsaPoseidon_Sign_final+0x36>
c0de21a2:	4894      	ldr	r0, [pc, #592]	@ (c0de23f4 <EddsaPoseidon_Sign_final+0x294>)
c0de21a4:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de21a8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de21ac:	a812      	add	r0, sp, #72	@ 0x48
c0de21ae:	2109      	movs	r1, #9
c0de21b0:	2240      	movs	r2, #64	@ 0x40
c0de21b2:	f005 f981 	bl	c0de74b8 <cx_hash_init_ex>
c0de21b6:	2800      	cmp	r0, #0
c0de21b8:	d1f4      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de21ba:	f104 0120 	add.w	r1, r4, #32
c0de21be:	a812      	add	r0, sp, #72	@ 0x48
c0de21c0:	2220      	movs	r2, #32
c0de21c2:	f005 f97e 	bl	c0de74c2 <cx_hash_update>
c0de21c6:	2800      	cmp	r0, #0
c0de21c8:	d1ec      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de21ca:	a812      	add	r0, sp, #72	@ 0x48
c0de21cc:	4639      	mov	r1, r7
c0de21ce:	2220      	movs	r2, #32
c0de21d0:	f005 f977 	bl	c0de74c2 <cx_hash_update>
c0de21d4:	2800      	cmp	r0, #0
c0de21d6:	d1e5      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de21d8:	a812      	add	r0, sp, #72	@ 0x48
c0de21da:	ac62      	add	r4, sp, #392	@ 0x188
c0de21dc:	4621      	mov	r1, r4
c0de21de:	f005 f966 	bl	c0de74ae <cx_hash_final>
c0de21e2:	2800      	cmp	r0, #0
c0de21e4:	d1de      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de21e6:	203f      	movs	r0, #63	@ 0x3f
c0de21e8:	a972      	add	r1, sp, #456	@ 0x1c8
c0de21ea:	1c42      	adds	r2, r0, #1
c0de21ec:	d004      	beq.n	c0de21f8 <EddsaPoseidon_Sign_final+0x98>
c0de21ee:	5c22      	ldrb	r2, [r4, r0]
c0de21f0:	3801      	subs	r0, #1
c0de21f2:	f801 2b01 	strb.w	r2, [r1], #1
c0de21f6:	e7f8      	b.n	c0de21ea <EddsaPoseidon_Sign_final+0x8a>
c0de21f8:	a889      	add	r0, sp, #548	@ 0x224
c0de21fa:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de21fc:	2140      	movs	r1, #64	@ 0x40
c0de21fe:	2340      	movs	r3, #64	@ 0x40
c0de2200:	f005 fbda 	bl	c0de79b8 <cx_bn_alloc_init>
c0de2204:	2800      	cmp	r0, #0
c0de2206:	d1cd      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2208:	a887      	add	r0, sp, #540	@ 0x21c
c0de220a:	2140      	movs	r1, #64	@ 0x40
c0de220c:	f005 fbca 	bl	c0de79a4 <cx_bn_alloc>
c0de2210:	2800      	cmp	r0, #0
c0de2212:	d1c7      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2214:	4978      	ldr	r1, [pc, #480]	@ (c0de23f8 <EddsaPoseidon_Sign_final+0x298>)
c0de2216:	f10d 0808 	add.w	r8, sp, #8
c0de221a:	2240      	movs	r2, #64	@ 0x40
c0de221c:	4640      	mov	r0, r8
c0de221e:	4479      	add	r1, pc
c0de2220:	f005 fe76 	bl	c0de7f10 <__aeabi_memcpy>
c0de2224:	a888      	add	r0, sp, #544	@ 0x220
c0de2226:	2140      	movs	r1, #64	@ 0x40
c0de2228:	4642      	mov	r2, r8
c0de222a:	2340      	movs	r3, #64	@ 0x40
c0de222c:	f005 fbc4 	bl	c0de79b8 <cx_bn_alloc_init>
c0de2230:	2800      	cmp	r0, #0
c0de2232:	d1b7      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2234:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de2236:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de223a:	f005 fc51 	bl	c0de7ae0 <cx_bn_reduce>
c0de223e:	2800      	cmp	r0, #0
c0de2240:	d1b0      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2242:	aa87      	add	r2, sp, #540	@ 0x21c
c0de2244:	f105 010c 	add.w	r1, r5, #12
c0de2248:	ab82      	add	r3, sp, #520	@ 0x208
c0de224a:	4628      	mov	r0, r5
c0de224c:	f001 f85e 	bl	c0de330c <tEdwards_scalarMul_bn>
c0de2250:	2800      	cmp	r0, #0
c0de2252:	d1a7      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2254:	a982      	add	r1, sp, #520	@ 0x208
c0de2256:	4628      	mov	r0, r5
c0de2258:	f000 fff9 	bl	c0de324e <tEdwards_normalize>
c0de225c:	2800      	cmp	r0, #0
c0de225e:	d1a1      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2260:	f10b 0320 	add.w	r3, fp, #32
c0de2264:	a982      	add	r1, sp, #520	@ 0x208
c0de2266:	4628      	mov	r0, r5
c0de2268:	465a      	mov	r2, fp
c0de226a:	f000 ffca 	bl	c0de3202 <tEdwards_export>
c0de226e:	2800      	cmp	r0, #0
c0de2270:	d198      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2272:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de2274:	a952      	add	r1, sp, #328	@ 0x148
c0de2276:	2220      	movs	r2, #32
c0de2278:	f005 fbde 	bl	c0de7a38 <cx_bn_export>
c0de227c:	2800      	cmp	r0, #0
c0de227e:	d191      	bne.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2280:	a888      	add	r0, sp, #544	@ 0x220
c0de2282:	f005 fba5 	bl	c0de79d0 <cx_bn_destroy>
c0de2286:	2800      	cmp	r0, #0
c0de2288:	f47f af8c 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de228c:	a889      	add	r0, sp, #548	@ 0x224
c0de228e:	f005 fb9f 	bl	c0de79d0 <cx_bn_destroy>
c0de2292:	2800      	cmp	r0, #0
c0de2294:	f47f af86 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de2298:	a887      	add	r0, sp, #540	@ 0x21c
c0de229a:	f005 fb99 	bl	c0de79d0 <cx_bn_destroy>
c0de229e:	2800      	cmp	r0, #0
c0de22a0:	f47f af80 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de22a4:	4628      	mov	r0, r5
c0de22a6:	f000 ff50 	bl	c0de314a <tEdwards_Curve_partial_destroy>
c0de22aa:	2800      	cmp	r0, #0
c0de22ac:	f47f af7a 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de22b0:	f105 0420 	add.w	r4, r5, #32
c0de22b4:	a88a      	add	r0, sp, #552	@ 0x228
c0de22b6:	f000 f8a5 	bl	c0de2404 <OUTLINED_FUNCTION_0>
c0de22ba:	2800      	cmp	r0, #0
c0de22bc:	f47f af72 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de22c0:	201f      	movs	r0, #31
c0de22c2:	a962      	add	r1, sp, #392	@ 0x188
c0de22c4:	1c42      	adds	r2, r0, #1
c0de22c6:	d004      	beq.n	c0de22d2 <EddsaPoseidon_Sign_final+0x172>
c0de22c8:	5c3a      	ldrb	r2, [r7, r0]
c0de22ca:	3801      	subs	r0, #1
c0de22cc:	f801 2b01 	strb.w	r2, [r1], #1
c0de22d0:	e7f8      	b.n	c0de22c4 <EddsaPoseidon_Sign_final+0x164>
c0de22d2:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de22d4:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de22d6:	f005 fb9b 	bl	c0de7a10 <cx_bn_copy>
c0de22da:	2800      	cmp	r0, #0
c0de22dc:	f47f af62 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de22e0:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de22e2:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de22e4:	f005 fb94 	bl	c0de7a10 <cx_bn_copy>
c0de22e8:	2800      	cmp	r0, #0
c0de22ea:	f47f af5b 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de22ee:	f8da 1000 	ldr.w	r1, [sl]
c0de22f2:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de22f4:	f005 fb8c 	bl	c0de7a10 <cx_bn_copy>
c0de22f8:	2800      	cmp	r0, #0
c0de22fa:	f47f af53 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de22fe:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de2302:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de2304:	f005 fb84 	bl	c0de7a10 <cx_bn_copy>
c0de2308:	2800      	cmp	r0, #0
c0de230a:	f47f af4b 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de230e:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de2310:	a962      	add	r1, sp, #392	@ 0x188
c0de2312:	2220      	movs	r2, #32
c0de2314:	f005 fb70 	bl	c0de79f8 <cx_bn_init>
c0de2318:	2800      	cmp	r0, #0
c0de231a:	f47f af43 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de231e:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de2320:	4622      	mov	r2, r4
c0de2322:	4601      	mov	r1, r0
c0de2324:	f005 fc12 	bl	c0de7b4c <cx_mont_to_montgomery>
c0de2328:	2800      	cmp	r0, #0
c0de232a:	f47f af3b 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de232e:	a982      	add	r1, sp, #520	@ 0x208
c0de2330:	4628      	mov	r0, r5
c0de2332:	f000 fc70 	bl	c0de2c16 <tEdwards_destroy>
c0de2336:	2800      	cmp	r0, #0
c0de2338:	f47f af34 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de233c:	a885      	add	r0, sp, #532	@ 0x214
c0de233e:	2120      	movs	r1, #32
c0de2340:	f005 fb30 	bl	c0de79a4 <cx_bn_alloc>
c0de2344:	2800      	cmp	r0, #0
c0de2346:	f47f af2d 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de234a:	a88a      	add	r0, sp, #552	@ 0x228
c0de234c:	aa85      	add	r2, sp, #532	@ 0x214
c0de234e:	2100      	movs	r1, #0
c0de2350:	2301      	movs	r3, #1
c0de2352:	f001 f9cd 	bl	c0de36f0 <Poseidon>
c0de2356:	2800      	cmp	r0, #0
c0de2358:	f47f af24 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de235c:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de235e:	4622      	mov	r2, r4
c0de2360:	4601      	mov	r1, r0
c0de2362:	f005 fbff 	bl	c0de7b64 <cx_mont_from_montgomery>
c0de2366:	2800      	cmp	r0, #0
c0de2368:	f47f af1c 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de236c:	a886      	add	r0, sp, #536	@ 0x218
c0de236e:	aa5a      	add	r2, sp, #360	@ 0x168
c0de2370:	2120      	movs	r1, #32
c0de2372:	2320      	movs	r3, #32
c0de2374:	f005 fb20 	bl	c0de79b8 <cx_bn_alloc_init>
c0de2378:	2800      	cmp	r0, #0
c0de237a:	f47f af13 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de237e:	a801      	add	r0, sp, #4
c0de2380:	2120      	movs	r1, #32
c0de2382:	f005 fb0f 	bl	c0de79a4 <cx_bn_alloc>
c0de2386:	2800      	cmp	r0, #0
c0de2388:	f47f af0c 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de238c:	f108 0220 	add.w	r2, r8, #32
c0de2390:	a888      	add	r0, sp, #544	@ 0x220
c0de2392:	2120      	movs	r1, #32
c0de2394:	2320      	movs	r3, #32
c0de2396:	f005 fb0f 	bl	c0de79b8 <cx_bn_alloc_init>
c0de239a:	2800      	cmp	r0, #0
c0de239c:	f47f af02 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de23a0:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de23a2:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de23a6:	9801      	ldr	r0, [sp, #4]
c0de23a8:	f005 fb8e 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de23ac:	2800      	cmp	r0, #0
c0de23ae:	f47f aef9 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de23b2:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de23b4:	a952      	add	r1, sp, #328	@ 0x148
c0de23b6:	2220      	movs	r2, #32
c0de23b8:	f005 fb1e 	bl	c0de79f8 <cx_bn_init>
c0de23bc:	2800      	cmp	r0, #0
c0de23be:	f47f aef1 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de23c2:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de23c4:	9a01      	ldr	r2, [sp, #4]
c0de23c6:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de23ca:	f005 fb65 	bl	c0de7a98 <cx_bn_mod_add>
c0de23ce:	2800      	cmp	r0, #0
c0de23d0:	f47f aee8 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de23d4:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de23d6:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de23da:	f005 fb81 	bl	c0de7ae0 <cx_bn_reduce>
c0de23de:	2800      	cmp	r0, #0
c0de23e0:	f47f aee0 	bne.w	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de23e4:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de23e6:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de23ea:	2220      	movs	r2, #32
c0de23ec:	f005 fb24 	bl	c0de7a38 <cx_bn_export>
c0de23f0:	e6d8      	b.n	c0de21a4 <EddsaPoseidon_Sign_final+0x44>
c0de23f2:	bf00      	nop
c0de23f4:	5a4b4e03 	.word	0x5a4b4e03
c0de23f8:	00006d92 	.word	0x00006d92

c0de23fc <rev64>:
c0de23fc:	ba0a      	rev	r2, r1
c0de23fe:	ba01      	rev	r1, r0
c0de2400:	4610      	mov	r0, r2
c0de2402:	4770      	bx	lr

c0de2404 <OUTLINED_FUNCTION_0>:
c0de2404:	2105      	movs	r1, #5
c0de2406:	2205      	movs	r2, #5
c0de2408:	4623      	mov	r3, r4
c0de240a:	f001 b90b 	b.w	c0de3624 <Poseidon_alloc_init>

c0de240e <zkn_frost_interpolate>:
c0de240e:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de2412:	b085      	sub	sp, #20
c0de2414:	460e      	mov	r6, r1
c0de2416:	4607      	mov	r7, r0
c0de2418:	a803      	add	r0, sp, #12
c0de241a:	2120      	movs	r1, #32
c0de241c:	f000 fbda 	bl	c0de2bd4 <OUTLINED_FUNCTION_4>
c0de2420:	b988      	cbnz	r0, c0de2446 <zkn_frost_interpolate+0x38>
c0de2422:	a802      	add	r0, sp, #8
c0de2424:	f000 fbcf 	bl	c0de2bc6 <OUTLINED_FUNCTION_2>
c0de2428:	b968      	cbnz	r0, c0de2446 <zkn_frost_interpolate+0x38>
c0de242a:	a801      	add	r0, sp, #4
c0de242c:	f000 fbcb 	bl	c0de2bc6 <OUTLINED_FUNCTION_2>
c0de2430:	b948      	cbnz	r0, c0de2446 <zkn_frost_interpolate+0x38>
c0de2432:	9803      	ldr	r0, [sp, #12]
c0de2434:	2101      	movs	r1, #1
c0de2436:	f005 faf5 	bl	c0de7a24 <cx_bn_set_u32>
c0de243a:	b920      	cbnz	r0, c0de2446 <zkn_frost_interpolate+0x38>
c0de243c:	9802      	ldr	r0, [sp, #8]
c0de243e:	2101      	movs	r1, #1
c0de2440:	f005 faf0 	bl	c0de7a24 <cx_bn_set_u32>
c0de2444:	b110      	cbz	r0, c0de244c <zkn_frost_interpolate+0x3e>
c0de2446:	b005      	add	sp, #20
c0de2448:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de244c:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de2450:	f10d 0a10 	add.w	sl, sp, #16
c0de2454:	b31e      	cbz	r6, c0de249e <zkn_frost_interpolate+0x90>
c0de2456:	6838      	ldr	r0, [r7, #0]
c0de2458:	4629      	mov	r1, r5
c0de245a:	4652      	mov	r2, sl
c0de245c:	f005 faf8 	bl	c0de7a50 <cx_bn_cmp>
c0de2460:	2800      	cmp	r0, #0
c0de2462:	d1f0      	bne.n	c0de2446 <zkn_frost_interpolate+0x38>
c0de2464:	9804      	ldr	r0, [sp, #16]
c0de2466:	b1b8      	cbz	r0, c0de2498 <zkn_frost_interpolate+0x8a>
c0de2468:	9802      	ldr	r0, [sp, #8]
c0de246a:	683a      	ldr	r2, [r7, #0]
c0de246c:	4623      	mov	r3, r4
c0de246e:	4601      	mov	r1, r0
c0de2470:	f005 fb2a 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de2474:	2800      	cmp	r0, #0
c0de2476:	d1e6      	bne.n	c0de2446 <zkn_frost_interpolate+0x38>
c0de2478:	6839      	ldr	r1, [r7, #0]
c0de247a:	9801      	ldr	r0, [sp, #4]
c0de247c:	462a      	mov	r2, r5
c0de247e:	4623      	mov	r3, r4
c0de2480:	f005 fb16 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2484:	2800      	cmp	r0, #0
c0de2486:	d1de      	bne.n	c0de2446 <zkn_frost_interpolate+0x38>
c0de2488:	9803      	ldr	r0, [sp, #12]
c0de248a:	9a01      	ldr	r2, [sp, #4]
c0de248c:	4623      	mov	r3, r4
c0de248e:	4601      	mov	r1, r0
c0de2490:	f005 fb1a 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de2494:	2800      	cmp	r0, #0
c0de2496:	d1d6      	bne.n	c0de2446 <zkn_frost_interpolate+0x38>
c0de2498:	3704      	adds	r7, #4
c0de249a:	3e01      	subs	r6, #1
c0de249c:	e7da      	b.n	c0de2454 <zkn_frost_interpolate+0x46>
c0de249e:	9903      	ldr	r1, [sp, #12]
c0de24a0:	4640      	mov	r0, r8
c0de24a2:	4622      	mov	r2, r4
c0de24a4:	f005 fb28 	bl	c0de7af8 <cx_bn_mod_invert_nprime>
c0de24a8:	2800      	cmp	r0, #0
c0de24aa:	d1cc      	bne.n	c0de2446 <zkn_frost_interpolate+0x38>
c0de24ac:	9a02      	ldr	r2, [sp, #8]
c0de24ae:	4640      	mov	r0, r8
c0de24b0:	4641      	mov	r1, r8
c0de24b2:	4623      	mov	r3, r4
c0de24b4:	f005 fb08 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de24b8:	2800      	cmp	r0, #0
c0de24ba:	d1c4      	bne.n	c0de2446 <zkn_frost_interpolate+0x38>
c0de24bc:	a803      	add	r0, sp, #12
c0de24be:	f005 fa87 	bl	c0de79d0 <cx_bn_destroy>
c0de24c2:	2800      	cmp	r0, #0
c0de24c4:	d1bf      	bne.n	c0de2446 <zkn_frost_interpolate+0x38>
c0de24c6:	a802      	add	r0, sp, #8
c0de24c8:	f005 fa82 	bl	c0de79d0 <cx_bn_destroy>
c0de24cc:	e7bb      	b.n	c0de2446 <zkn_frost_interpolate+0x38>

c0de24ce <zkn_frost_interpolate_secrets>:
c0de24ce:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de24d2:	460f      	mov	r7, r1
c0de24d4:	4606      	mov	r6, r0
c0de24d6:	a802      	add	r0, sp, #8
c0de24d8:	2120      	movs	r1, #32
c0de24da:	461c      	mov	r4, r3
c0de24dc:	4692      	mov	sl, r2
c0de24de:	f005 fa61 	bl	c0de79a4 <cx_bn_alloc>
c0de24e2:	b108      	cbz	r0, c0de24e8 <zkn_frost_interpolate_secrets+0x1a>
c0de24e4:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de24e8:	a801      	add	r0, sp, #4
c0de24ea:	f000 fb6c 	bl	c0de2bc6 <OUTLINED_FUNCTION_2>
c0de24ee:	2800      	cmp	r0, #0
c0de24f0:	d1f8      	bne.n	c0de24e4 <zkn_frost_interpolate_secrets+0x16>
c0de24f2:	9802      	ldr	r0, [sp, #8]
c0de24f4:	2100      	movs	r1, #0
c0de24f6:	f005 fa95 	bl	c0de7a24 <cx_bn_set_u32>
c0de24fa:	2800      	cmp	r0, #0
c0de24fc:	d1f2      	bne.n	c0de24e4 <zkn_frost_interpolate_secrets+0x16>
c0de24fe:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de2502:	2500      	movs	r5, #0
c0de2504:	42ac      	cmp	r4, r5
c0de2506:	d01d      	beq.n	c0de2544 <zkn_frost_interpolate_secrets+0x76>
c0de2508:	9801      	ldr	r0, [sp, #4]
c0de250a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de250e:	68b3      	ldr	r3, [r6, #8]
c0de2510:	4621      	mov	r1, r4
c0de2512:	9000      	str	r0, [sp, #0]
c0de2514:	4638      	mov	r0, r7
c0de2516:	f7ff ff7a 	bl	c0de240e <zkn_frost_interpolate>
c0de251a:	2800      	cmp	r0, #0
c0de251c:	d1e2      	bne.n	c0de24e4 <zkn_frost_interpolate_secrets+0x16>
c0de251e:	9801      	ldr	r0, [sp, #4]
c0de2520:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de2524:	68b3      	ldr	r3, [r6, #8]
c0de2526:	4601      	mov	r1, r0
c0de2528:	f005 face 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de252c:	2800      	cmp	r0, #0
c0de252e:	d1d9      	bne.n	c0de24e4 <zkn_frost_interpolate_secrets+0x16>
c0de2530:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de2534:	68b3      	ldr	r3, [r6, #8]
c0de2536:	4601      	mov	r1, r0
c0de2538:	f005 faae 	bl	c0de7a98 <cx_bn_mod_add>
c0de253c:	3501      	adds	r5, #1
c0de253e:	2800      	cmp	r0, #0
c0de2540:	d0e0      	beq.n	c0de2504 <zkn_frost_interpolate_secrets+0x36>
c0de2542:	e7cf      	b.n	c0de24e4 <zkn_frost_interpolate_secrets+0x16>
c0de2544:	68b2      	ldr	r2, [r6, #8]
c0de2546:	9902      	ldr	r1, [sp, #8]
c0de2548:	4640      	mov	r0, r8
c0de254a:	f005 fac9 	bl	c0de7ae0 <cx_bn_reduce>
c0de254e:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de2552 <zkn_evalshare>:
c0de2552:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de2556:	460e      	mov	r6, r1
c0de2558:	6801      	ldr	r1, [r0, #0]
c0de255a:	4607      	mov	r7, r0
c0de255c:	a801      	add	r0, sp, #4
c0de255e:	f000 fb39 	bl	c0de2bd4 <OUTLINED_FUNCTION_4>
c0de2562:	b108      	cbz	r0, c0de2568 <zkn_evalshare+0x16>
c0de2564:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de2568:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de256c:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2570:	4640      	mov	r0, r8
c0de2572:	f005 fa4d 	bl	c0de7a10 <cx_bn_copy>
c0de2576:	2800      	cmp	r0, #0
c0de2578:	d1f4      	bne.n	c0de2564 <zkn_evalshare+0x12>
c0de257a:	3e04      	subs	r6, #4
c0de257c:	68bb      	ldr	r3, [r7, #8]
c0de257e:	9801      	ldr	r0, [sp, #4]
c0de2580:	4641      	mov	r1, r8
c0de2582:	b17d      	cbz	r5, c0de25a4 <zkn_evalshare+0x52>
c0de2584:	4622      	mov	r2, r4
c0de2586:	f005 fa9f 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de258a:	2800      	cmp	r0, #0
c0de258c:	d1ea      	bne.n	c0de2564 <zkn_evalshare+0x12>
c0de258e:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de2592:	68bb      	ldr	r3, [r7, #8]
c0de2594:	9901      	ldr	r1, [sp, #4]
c0de2596:	4640      	mov	r0, r8
c0de2598:	f005 fa7e 	bl	c0de7a98 <cx_bn_mod_add>
c0de259c:	3d01      	subs	r5, #1
c0de259e:	2800      	cmp	r0, #0
c0de25a0:	d0ec      	beq.n	c0de257c <zkn_evalshare+0x2a>
c0de25a2:	e7df      	b.n	c0de2564 <zkn_evalshare+0x12>
c0de25a4:	461a      	mov	r2, r3
c0de25a6:	f005 fa9b 	bl	c0de7ae0 <cx_bn_reduce>
c0de25aa:	2800      	cmp	r0, #0
c0de25ac:	d1da      	bne.n	c0de2564 <zkn_evalshare+0x12>
c0de25ae:	9901      	ldr	r1, [sp, #4]
c0de25b0:	4640      	mov	r0, r8
c0de25b2:	f005 fa2d 	bl	c0de7a10 <cx_bn_copy>
c0de25b6:	2800      	cmp	r0, #0
c0de25b8:	d1d4      	bne.n	c0de2564 <zkn_evalshare+0x12>
c0de25ba:	a801      	add	r0, sp, #4
c0de25bc:	f005 fa08 	bl	c0de79d0 <cx_bn_destroy>
c0de25c0:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de25c4 <zkn_frost_nonce_generate>:
c0de25c4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de25c6:	b091      	sub	sp, #68	@ 0x44
c0de25c8:	af01      	add	r7, sp, #4
c0de25ca:	460e      	mov	r6, r1
c0de25cc:	4605      	mov	r5, r0
c0de25ce:	2120      	movs	r1, #32
c0de25d0:	4614      	mov	r4, r2
c0de25d2:	4638      	mov	r0, r7
c0de25d4:	f004 ff7a 	bl	c0de74cc <cx_rng_no_throw>
c0de25d8:	f107 0020 	add.w	r0, r7, #32
c0de25dc:	4631      	mov	r1, r6
c0de25de:	2220      	movs	r2, #32
c0de25e0:	f005 fc96 	bl	c0de7f10 <__aeabi_memcpy>
c0de25e4:	6829      	ldr	r1, [r5, #0]
c0de25e6:	4668      	mov	r0, sp
c0de25e8:	f005 f9dc 	bl	c0de79a4 <cx_bn_alloc>
c0de25ec:	b978      	cbnz	r0, c0de260e <zkn_frost_nonce_generate+0x4a>
c0de25ee:	68aa      	ldr	r2, [r5, #8]
c0de25f0:	9b00      	ldr	r3, [sp, #0]
c0de25f2:	a801      	add	r0, sp, #4
c0de25f4:	2140      	movs	r1, #64	@ 0x40
c0de25f6:	f001 f9a5 	bl	c0de3944 <Babyfrost_H3>
c0de25fa:	b940      	cbnz	r0, c0de260e <zkn_frost_nonce_generate+0x4a>
c0de25fc:	682a      	ldr	r2, [r5, #0]
c0de25fe:	9800      	ldr	r0, [sp, #0]
c0de2600:	4621      	mov	r1, r4
c0de2602:	f005 fa19 	bl	c0de7a38 <cx_bn_export>
c0de2606:	b910      	cbnz	r0, c0de260e <zkn_frost_nonce_generate+0x4a>
c0de2608:	4668      	mov	r0, sp
c0de260a:	f005 f9e1 	bl	c0de79d0 <cx_bn_destroy>
c0de260e:	b011      	add	sp, #68	@ 0x44
c0de2610:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de2612 <zkn_frost_commit>:
c0de2612:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2616:	461d      	mov	r5, r3
c0de2618:	4617      	mov	r7, r2
c0de261a:	460e      	mov	r6, r1
c0de261c:	4604      	mov	r4, r0
c0de261e:	f7ff ffd1 	bl	c0de25c4 <zkn_frost_nonce_generate>
c0de2622:	b9f8      	cbnz	r0, c0de2664 <zkn_frost_commit+0x52>
c0de2624:	f107 0a20 	add.w	sl, r7, #32
c0de2628:	4620      	mov	r0, r4
c0de262a:	4631      	mov	r1, r6
c0de262c:	4652      	mov	r2, sl
c0de262e:	f7ff ffc9 	bl	c0de25c4 <zkn_frost_nonce_generate>
c0de2632:	b9b8      	cbnz	r0, c0de2664 <zkn_frost_commit+0x52>
c0de2634:	46a0      	mov	r8, r4
c0de2636:	4620      	mov	r0, r4
c0de2638:	463a      	mov	r2, r7
c0de263a:	f858 3b0c 	ldr.w	r3, [r8], #12
c0de263e:	9500      	str	r5, [sp, #0]
c0de2640:	4641      	mov	r1, r8
c0de2642:	f000 fec9 	bl	c0de33d8 <tEdwards_scalarMul>
c0de2646:	b968      	cbnz	r0, c0de2664 <zkn_frost_commit+0x52>
c0de2648:	4620      	mov	r0, r4
c0de264a:	4629      	mov	r1, r5
c0de264c:	f000 fdff 	bl	c0de324e <tEdwards_normalize>
c0de2650:	b940      	cbnz	r0, c0de2664 <zkn_frost_commit+0x52>
c0de2652:	6823      	ldr	r3, [r4, #0]
c0de2654:	350c      	adds	r5, #12
c0de2656:	4620      	mov	r0, r4
c0de2658:	4641      	mov	r1, r8
c0de265a:	4652      	mov	r2, sl
c0de265c:	9500      	str	r5, [sp, #0]
c0de265e:	f000 febb 	bl	c0de33d8 <tEdwards_scalarMul>
c0de2662:	b108      	cbz	r0, c0de2668 <zkn_frost_commit+0x56>
c0de2664:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de2668:	4620      	mov	r0, r4
c0de266a:	4629      	mov	r1, r5
c0de266c:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2670:	f000 bded 	b.w	c0de324e <tEdwards_normalize>

c0de2674 <zkn_encode_group_commitmentHash>:
c0de2674:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2678:	b0d6      	sub	sp, #344	@ 0x158
c0de267a:	4606      	mov	r6, r0
c0de267c:	a816      	add	r0, sp, #88	@ 0x58
c0de267e:	461c      	mov	r4, r3
c0de2680:	4615      	mov	r5, r2
c0de2682:	460f      	mov	r7, r1
c0de2684:	f001 f9be 	bl	c0de3a04 <zkn_frost_H5_init>
c0de2688:	b110      	cbz	r0, c0de2690 <zkn_encode_group_commitmentHash+0x1c>
c0de268a:	b056      	add	sp, #344	@ 0x158
c0de268c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2690:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de2694:	9401      	str	r4, [sp, #4]
c0de2696:	a806      	add	r0, sp, #24
c0de2698:	f04f 0a00 	mov.w	sl, #0
c0de269c:	f04f 0b02 	mov.w	fp, #2
c0de26a0:	2604      	movs	r6, #4
c0de26a2:	2400      	movs	r4, #0
c0de26a4:	9502      	str	r5, [sp, #8]
c0de26a6:	f1a0 0801 	sub.w	r8, r0, #1
c0de26aa:	42ac      	cmp	r4, r5
c0de26ac:	d058      	beq.n	c0de2760 <zkn_encode_group_commitmentHash+0xec>
c0de26ae:	9805      	ldr	r0, [sp, #20]
c0de26b0:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de26b4:	9103      	str	r1, [sp, #12]
c0de26b6:	6805      	ldr	r5, [r0, #0]
c0de26b8:	9804      	ldr	r0, [sp, #16]
c0de26ba:	fb05 000a 	mla	r0, r5, sl, r0
c0de26be:	4629      	mov	r1, r5
c0de26c0:	b129      	cbz	r1, c0de26ce <zkn_encode_group_commitmentHash+0x5a>
c0de26c2:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de26c6:	f808 2001 	strb.w	r2, [r8, r1]
c0de26ca:	3901      	subs	r1, #1
c0de26cc:	e7f8      	b.n	c0de26c0 <zkn_encode_group_commitmentHash+0x4c>
c0de26ce:	a816      	add	r0, sp, #88	@ 0x58
c0de26d0:	a906      	add	r1, sp, #24
c0de26d2:	462a      	mov	r2, r5
c0de26d4:	f001 f9b0 	bl	c0de3a38 <zkn_frost_hash_update>
c0de26d8:	2800      	cmp	r0, #0
c0de26da:	d1d6      	bne.n	c0de268a <zkn_encode_group_commitmentHash+0x16>
c0de26dc:	9803      	ldr	r0, [sp, #12]
c0de26de:	9f04      	ldr	r7, [sp, #16]
c0de26e0:	1c43      	adds	r3, r0, #1
c0de26e2:	9805      	ldr	r0, [sp, #20]
c0de26e4:	fb05 710b 	mla	r1, r5, fp, r7
c0de26e8:	6802      	ldr	r2, [r0, #0]
c0de26ea:	1e50      	subs	r0, r2, #1
c0de26ec:	4615      	mov	r5, r2
c0de26ee:	fb02 0303 	mla	r3, r2, r3, r0
c0de26f2:	5cfb      	ldrb	r3, [r7, r3]
c0de26f4:	b12d      	cbz	r5, c0de2702 <zkn_encode_group_commitmentHash+0x8e>
c0de26f6:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de26fa:	f808 7005 	strb.w	r7, [r8, r5]
c0de26fe:	3d01      	subs	r5, #1
c0de2700:	e7f8      	b.n	c0de26f4 <zkn_encode_group_commitmentHash+0x80>
c0de2702:	a906      	add	r1, sp, #24
c0de2704:	5c0d      	ldrb	r5, [r1, r0]
c0de2706:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de270a:	540b      	strb	r3, [r1, r0]
c0de270c:	a816      	add	r0, sp, #88	@ 0x58
c0de270e:	f001 f993 	bl	c0de3a38 <zkn_frost_hash_update>
c0de2712:	2800      	cmp	r0, #0
c0de2714:	d1b9      	bne.n	c0de268a <zkn_encode_group_commitmentHash+0x16>
c0de2716:	9805      	ldr	r0, [sp, #20]
c0de2718:	9d04      	ldr	r5, [sp, #16]
c0de271a:	6802      	ldr	r2, [r0, #0]
c0de271c:	9803      	ldr	r0, [sp, #12]
c0de271e:	1cc3      	adds	r3, r0, #3
c0de2720:	1e50      	subs	r0, r2, #1
c0de2722:	fb02 5106 	mla	r1, r2, r6, r5
c0de2726:	fb02 0303 	mla	r3, r2, r3, r0
c0de272a:	5ceb      	ldrb	r3, [r5, r3]
c0de272c:	4615      	mov	r5, r2
c0de272e:	b12d      	cbz	r5, c0de273c <zkn_encode_group_commitmentHash+0xc8>
c0de2730:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2734:	f808 7005 	strb.w	r7, [r8, r5]
c0de2738:	3d01      	subs	r5, #1
c0de273a:	e7f8      	b.n	c0de272e <zkn_encode_group_commitmentHash+0xba>
c0de273c:	a906      	add	r1, sp, #24
c0de273e:	5c0d      	ldrb	r5, [r1, r0]
c0de2740:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2744:	540b      	strb	r3, [r1, r0]
c0de2746:	a816      	add	r0, sp, #88	@ 0x58
c0de2748:	f001 f976 	bl	c0de3a38 <zkn_frost_hash_update>
c0de274c:	3605      	adds	r6, #5
c0de274e:	3401      	adds	r4, #1
c0de2750:	9d02      	ldr	r5, [sp, #8]
c0de2752:	f10b 0b05 	add.w	fp, fp, #5
c0de2756:	f10a 0a05 	add.w	sl, sl, #5
c0de275a:	2800      	cmp	r0, #0
c0de275c:	d0a5      	beq.n	c0de26aa <zkn_encode_group_commitmentHash+0x36>
c0de275e:	e794      	b.n	c0de268a <zkn_encode_group_commitmentHash+0x16>
c0de2760:	9805      	ldr	r0, [sp, #20]
c0de2762:	6881      	ldr	r1, [r0, #8]
c0de2764:	a816      	add	r0, sp, #88	@ 0x58
c0de2766:	9a01      	ldr	r2, [sp, #4]
c0de2768:	f001 f968 	bl	c0de3a3c <zkn_frost_hash_final>
c0de276c:	e78d      	b.n	c0de268a <zkn_encode_group_commitmentHash+0x16>

c0de276e <zkn_compute_group_commitment>:
c0de276e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2772:	b088      	sub	sp, #32
c0de2774:	460d      	mov	r5, r1
c0de2776:	a905      	add	r1, sp, #20
c0de2778:	461f      	mov	r7, r3
c0de277a:	4693      	mov	fp, r2
c0de277c:	4604      	mov	r4, r0
c0de277e:	f000 fa35 	bl	c0de2bec <tEdwards_alloc>
c0de2782:	b948      	cbnz	r0, c0de2798 <zkn_compute_group_commitment+0x2a>
c0de2784:	a902      	add	r1, sp, #8
c0de2786:	4620      	mov	r0, r4
c0de2788:	f000 fa30 	bl	c0de2bec <tEdwards_alloc>
c0de278c:	b920      	cbnz	r0, c0de2798 <zkn_compute_group_commitment+0x2a>
c0de278e:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2790:	4620      	mov	r0, r4
c0de2792:	f000 fd23 	bl	c0de31dc <tEdwards_SetNeutral>
c0de2796:	b110      	cbz	r0, c0de279e <zkn_compute_group_commitment+0x30>
c0de2798:	b008      	add	sp, #32
c0de279a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de279e:	ae05      	add	r6, sp, #20
c0de27a0:	f04f 0800 	mov.w	r8, #0
c0de27a4:	f04f 0a04 	mov.w	sl, #4
c0de27a8:	9501      	str	r5, [sp, #4]
c0de27aa:	4547      	cmp	r7, r8
c0de27ac:	d041      	beq.n	c0de2832 <zkn_compute_group_commitment+0xc4>
c0de27ae:	6822      	ldr	r2, [r4, #0]
c0de27b0:	f1aa 0003 	sub.w	r0, sl, #3
c0de27b4:	4633      	mov	r3, r6
c0de27b6:	fb02 5100 	mla	r1, r2, r0, r5
c0de27ba:	f1aa 0002 	sub.w	r0, sl, #2
c0de27be:	fb02 5200 	mla	r2, r2, r0, r5
c0de27c2:	4620      	mov	r0, r4
c0de27c4:	f000 fc82 	bl	c0de30cc <tEdwards_init>
c0de27c8:	2800      	cmp	r0, #0
c0de27ca:	d1e5      	bne.n	c0de2798 <zkn_compute_group_commitment+0x2a>
c0de27cc:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de27ce:	4620      	mov	r0, r4
c0de27d0:	4632      	mov	r2, r6
c0de27d2:	460b      	mov	r3, r1
c0de27d4:	f000 fa9b 	bl	c0de2d0e <tEdwards_add>
c0de27d8:	2800      	cmp	r0, #0
c0de27da:	d1dd      	bne.n	c0de2798 <zkn_compute_group_commitment+0x2a>
c0de27dc:	6822      	ldr	r2, [r4, #0]
c0de27de:	f1aa 0001 	sub.w	r0, sl, #1
c0de27e2:	4633      	mov	r3, r6
c0de27e4:	fb02 5100 	mla	r1, r2, r0, r5
c0de27e8:	fb02 520a 	mla	r2, r2, sl, r5
c0de27ec:	4620      	mov	r0, r4
c0de27ee:	f000 fc6d 	bl	c0de30cc <tEdwards_init>
c0de27f2:	2800      	cmp	r0, #0
c0de27f4:	d1d0      	bne.n	c0de2798 <zkn_compute_group_commitment+0x2a>
c0de27f6:	6823      	ldr	r3, [r4, #0]
c0de27f8:	4658      	mov	r0, fp
c0de27fa:	f10d 0b08 	add.w	fp, sp, #8
c0de27fe:	4631      	mov	r1, r6
c0de2800:	4605      	mov	r5, r0
c0de2802:	f8cd b000 	str.w	fp, [sp]
c0de2806:	fb03 0208 	mla	r2, r3, r8, r0
c0de280a:	4620      	mov	r0, r4
c0de280c:	f000 fde4 	bl	c0de33d8 <tEdwards_scalarMul>
c0de2810:	2800      	cmp	r0, #0
c0de2812:	d1c1      	bne.n	c0de2798 <zkn_compute_group_commitment+0x2a>
c0de2814:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2816:	4620      	mov	r0, r4
c0de2818:	465a      	mov	r2, fp
c0de281a:	460b      	mov	r3, r1
c0de281c:	f000 fa77 	bl	c0de2d0e <tEdwards_add>
c0de2820:	46ab      	mov	fp, r5
c0de2822:	9d01      	ldr	r5, [sp, #4]
c0de2824:	f10a 0a05 	add.w	sl, sl, #5
c0de2828:	f108 0801 	add.w	r8, r8, #1
c0de282c:	2800      	cmp	r0, #0
c0de282e:	d0bc      	beq.n	c0de27aa <zkn_compute_group_commitment+0x3c>
c0de2830:	e7b2      	b.n	c0de2798 <zkn_compute_group_commitment+0x2a>
c0de2832:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2834:	4620      	mov	r0, r4
c0de2836:	f000 fd0a 	bl	c0de324e <tEdwards_normalize>
c0de283a:	2800      	cmp	r0, #0
c0de283c:	d1ac      	bne.n	c0de2798 <zkn_compute_group_commitment+0x2a>
c0de283e:	a905      	add	r1, sp, #20
c0de2840:	f000 f9d1 	bl	c0de2be6 <OUTLINED_FUNCTION_6>
c0de2844:	2800      	cmp	r0, #0
c0de2846:	d1a7      	bne.n	c0de2798 <zkn_compute_group_commitment+0x2a>
c0de2848:	a902      	add	r1, sp, #8
c0de284a:	f000 f9cc 	bl	c0de2be6 <OUTLINED_FUNCTION_6>
c0de284e:	e7a3      	b.n	c0de2798 <zkn_compute_group_commitment+0x2a>

c0de2850 <zkn_compute_binding_factors>:
c0de2850:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2854:	b0f4      	sub	sp, #464	@ 0x1d0
c0de2856:	460e      	mov	r6, r1
c0de2858:	6801      	ldr	r1, [r0, #0]
c0de285a:	4607      	mov	r7, r0
c0de285c:	a873      	add	r0, sp, #460	@ 0x1cc
c0de285e:	f000 f9b9 	bl	c0de2bd4 <OUTLINED_FUNCTION_4>
c0de2862:	b9f0      	cbnz	r0, c0de28a2 <zkn_compute_binding_factors+0x52>
c0de2864:	6839      	ldr	r1, [r7, #0]
c0de2866:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2868:	f005 f89c 	bl	c0de79a4 <cx_bn_alloc>
c0de286c:	b9c8      	cbnz	r0, c0de28a2 <zkn_compute_binding_factors+0x52>
c0de286e:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de2872:	68ba      	ldr	r2, [r7, #8]
c0de2874:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de2876:	f001 f879 	bl	c0de396c <Babyfrost_H4>
c0de287a:	b990      	cbnz	r0, c0de28a2 <zkn_compute_binding_factors+0x52>
c0de287c:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de287e:	4638      	mov	r0, r7
c0de2880:	4629      	mov	r1, r5
c0de2882:	4622      	mov	r2, r4
c0de2884:	f7ff fef6 	bl	c0de2674 <zkn_encode_group_commitmentHash>
c0de2888:	b958      	cbnz	r0, c0de28a2 <zkn_compute_binding_factors+0x52>
c0de288a:	683a      	ldr	r2, [r7, #0]
c0de288c:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de288e:	a912      	add	r1, sp, #72	@ 0x48
c0de2890:	f005 f8d2 	bl	c0de7a38 <cx_bn_export>
c0de2894:	b928      	cbnz	r0, c0de28a2 <zkn_compute_binding_factors+0x52>
c0de2896:	683a      	ldr	r2, [r7, #0]
c0de2898:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de289a:	a902      	add	r1, sp, #8
c0de289c:	f005 f8cc 	bl	c0de7a38 <cx_bn_export>
c0de28a0:	b110      	cbz	r0, c0de28a8 <zkn_compute_binding_factors+0x58>
c0de28a2:	b074      	add	sp, #464	@ 0x1d0
c0de28a4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de28a8:	2000      	movs	r0, #0
c0de28aa:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de28ae:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de28b2:	f04f 0800 	mov.w	r8, #0
c0de28b6:	9000      	str	r0, [sp, #0]
c0de28b8:	4544      	cmp	r4, r8
c0de28ba:	d043      	beq.n	c0de2944 <zkn_compute_binding_factors+0xf4>
c0de28bc:	6839      	ldr	r1, [r7, #0]
c0de28be:	a801      	add	r0, sp, #4
c0de28c0:	f005 f870 	bl	c0de79a4 <cx_bn_alloc>
c0de28c4:	2800      	cmp	r0, #0
c0de28c6:	d1ec      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de28c8:	4650      	mov	r0, sl
c0de28ca:	f001 f881 	bl	c0de39d0 <zkn_frost_H1_init>
c0de28ce:	2800      	cmp	r0, #0
c0de28d0:	d1e7      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de28d2:	6839      	ldr	r1, [r7, #0]
c0de28d4:	4630      	mov	r0, r6
c0de28d6:	465a      	mov	r2, fp
c0de28d8:	f000 f966 	bl	c0de2ba8 <OUTLINED_FUNCTION_0>
c0de28dc:	2800      	cmp	r0, #0
c0de28de:	d1e0      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de28e0:	6839      	ldr	r1, [r7, #0]
c0de28e2:	a812      	add	r0, sp, #72	@ 0x48
c0de28e4:	465a      	mov	r2, fp
c0de28e6:	f000 f95f 	bl	c0de2ba8 <OUTLINED_FUNCTION_0>
c0de28ea:	2800      	cmp	r0, #0
c0de28ec:	d1d9      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de28ee:	6839      	ldr	r1, [r7, #0]
c0de28f0:	a802      	add	r0, sp, #8
c0de28f2:	465a      	mov	r2, fp
c0de28f4:	f000 f958 	bl	c0de2ba8 <OUTLINED_FUNCTION_0>
c0de28f8:	2800      	cmp	r0, #0
c0de28fa:	d1d2      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de28fc:	6839      	ldr	r1, [r7, #0]
c0de28fe:	9800      	ldr	r0, [sp, #0]
c0de2900:	465a      	mov	r2, fp
c0de2902:	fb00 5001 	mla	r0, r0, r1, r5
c0de2906:	f000 f94f 	bl	c0de2ba8 <OUTLINED_FUNCTION_0>
c0de290a:	2800      	cmp	r0, #0
c0de290c:	d1c9      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de290e:	68b9      	ldr	r1, [r7, #8]
c0de2910:	9a01      	ldr	r2, [sp, #4]
c0de2912:	4650      	mov	r0, sl
c0de2914:	f001 f892 	bl	c0de3a3c <zkn_frost_hash_final>
c0de2918:	2800      	cmp	r0, #0
c0de291a:	d1c2      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de291c:	683a      	ldr	r2, [r7, #0]
c0de291e:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de2920:	fb02 0108 	mla	r1, r2, r8, r0
c0de2924:	9801      	ldr	r0, [sp, #4]
c0de2926:	f005 f887 	bl	c0de7a38 <cx_bn_export>
c0de292a:	2800      	cmp	r0, #0
c0de292c:	d1b9      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de292e:	a801      	add	r0, sp, #4
c0de2930:	f005 f84e 	bl	c0de79d0 <cx_bn_destroy>
c0de2934:	2800      	cmp	r0, #0
c0de2936:	d1b4      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de2938:	9800      	ldr	r0, [sp, #0]
c0de293a:	f108 0801 	add.w	r8, r8, #1
c0de293e:	3005      	adds	r0, #5
c0de2940:	9000      	str	r0, [sp, #0]
c0de2942:	e7b9      	b.n	c0de28b8 <zkn_compute_binding_factors+0x68>
c0de2944:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2946:	f005 f843 	bl	c0de79d0 <cx_bn_destroy>
c0de294a:	2800      	cmp	r0, #0
c0de294c:	d1a9      	bne.n	c0de28a2 <zkn_compute_binding_factors+0x52>
c0de294e:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2950:	f005 f83e 	bl	c0de79d0 <cx_bn_destroy>
c0de2954:	e7a5      	b.n	c0de28a2 <zkn_compute_binding_factors+0x52>

c0de2956 <zkn_serialize_scalar_for_hash>:
c0de2956:	3a01      	subs	r2, #1
c0de2958:	b121      	cbz	r1, c0de2964 <zkn_serialize_scalar_for_hash+0xe>
c0de295a:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de295e:	5453      	strb	r3, [r2, r1]
c0de2960:	3901      	subs	r1, #1
c0de2962:	e7f9      	b.n	c0de2958 <zkn_serialize_scalar_for_hash+0x2>
c0de2964:	4770      	bx	lr
	...

c0de2968 <compute_challenge>:
c0de2968:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de296c:	b0bc      	sub	sp, #240	@ 0xf0
c0de296e:	4606      	mov	r6, r0
c0de2970:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de2972:	2820      	cmp	r0, #32
c0de2974:	d14b      	bne.n	c0de2a0e <compute_challenge+0xa6>
c0de2976:	4630      	mov	r0, r6
c0de2978:	461f      	mov	r7, r3
c0de297a:	4614      	mov	r4, r2
c0de297c:	460d      	mov	r5, r1
c0de297e:	f000 fbe4 	bl	c0de314a <tEdwards_Curve_partial_destroy>
c0de2982:	2800      	cmp	r0, #0
c0de2984:	d144      	bne.n	c0de2a10 <compute_challenge+0xa8>
c0de2986:	f106 0820 	add.w	r8, r6, #32
c0de298a:	4668      	mov	r0, sp
c0de298c:	2105      	movs	r1, #5
c0de298e:	2205      	movs	r2, #5
c0de2990:	4643      	mov	r3, r8
c0de2992:	f000 fe47 	bl	c0de3624 <Poseidon_alloc_init>
c0de2996:	bbd8      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de2998:	6829      	ldr	r1, [r5, #0]
c0de299a:	9807      	ldr	r0, [sp, #28]
c0de299c:	f005 f838 	bl	c0de7a10 <cx_bn_copy>
c0de29a0:	bbb0      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29a2:	6869      	ldr	r1, [r5, #4]
c0de29a4:	9808      	ldr	r0, [sp, #32]
c0de29a6:	f005 f833 	bl	c0de7a10 <cx_bn_copy>
c0de29aa:	bb88      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29ac:	6832      	ldr	r2, [r6, #0]
c0de29ae:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de29b0:	4621      	mov	r1, r4
c0de29b2:	f005 f821 	bl	c0de79f8 <cx_bn_init>
c0de29b6:	bb58      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29b8:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de29ba:	f000 f907 	bl	c0de2bcc <OUTLINED_FUNCTION_3>
c0de29be:	bb38      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29c0:	6832      	ldr	r2, [r6, #0]
c0de29c2:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de29c4:	f104 0120 	add.w	r1, r4, #32
c0de29c8:	f005 f816 	bl	c0de79f8 <cx_bn_init>
c0de29cc:	bb00      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29ce:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de29d0:	f000 f8fc 	bl	c0de2bcc <OUTLINED_FUNCTION_3>
c0de29d4:	b9e0      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29d6:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de29d8:	4639      	mov	r1, r7
c0de29da:	2220      	movs	r2, #32
c0de29dc:	f005 f80c 	bl	c0de79f8 <cx_bn_init>
c0de29e0:	b9b0      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29e2:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de29e4:	f000 f8f2 	bl	c0de2bcc <OUTLINED_FUNCTION_3>
c0de29e8:	b990      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29ea:	4630      	mov	r0, r6
c0de29ec:	4629      	mov	r1, r5
c0de29ee:	f000 f912 	bl	c0de2c16 <tEdwards_destroy>
c0de29f2:	b968      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de29f4:	4668      	mov	r0, sp
c0de29f6:	aa43      	add	r2, sp, #268	@ 0x10c
c0de29f8:	2100      	movs	r1, #0
c0de29fa:	2301      	movs	r3, #1
c0de29fc:	f000 fe78 	bl	c0de36f0 <Poseidon>
c0de2a00:	b930      	cbnz	r0, c0de2a10 <compute_challenge+0xa8>
c0de2a02:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de2a04:	4642      	mov	r2, r8
c0de2a06:	4601      	mov	r1, r0
c0de2a08:	f005 f8ac 	bl	c0de7b64 <cx_mont_from_montgomery>
c0de2a0c:	e000      	b.n	c0de2a10 <compute_challenge+0xa8>
c0de2a0e:	4802      	ldr	r0, [pc, #8]	@ (c0de2a18 <compute_challenge+0xb0>)
c0de2a10:	b03c      	add	sp, #240	@ 0xf0
c0de2a12:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2a16:	bf00      	nop
c0de2a18:	5a4b4e03 	.word	0x5a4b4e03

c0de2a1c <zkn_partial_sig>:
c0de2a1c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2a20:	b0c2      	sub	sp, #264	@ 0x108
c0de2a22:	4680      	mov	r8, r0
c0de2a24:	7fd8      	ldrb	r0, [r3, #31]
c0de2a26:	e9dd a64e 	ldrd	sl, r6, [sp, #312]	@ 0x138
c0de2a2a:	9f4c      	ldr	r7, [sp, #304]	@ 0x130
c0de2a2c:	e9cd 1204 	strd	r1, r2, [sp, #16]
c0de2a30:	469b      	mov	fp, r3
c0de2a32:	ab16      	add	r3, sp, #88	@ 0x58
c0de2a34:	2100      	movs	r1, #0
c0de2a36:	221f      	movs	r2, #31
c0de2a38:	ac1e      	add	r4, sp, #120	@ 0x78
c0de2a3a:	f000 0001 	and.w	r0, r0, #1
c0de2a3e:	2920      	cmp	r1, #32
c0de2a40:	d00f      	beq.n	c0de2a62 <zkn_partial_sig+0x46>
c0de2a42:	eb0b 0501 	add.w	r5, fp, r1
c0de2a46:	f895 5020 	ldrb.w	r5, [r5, #32]
c0de2a4a:	545d      	strb	r5, [r3, r1]
c0de2a4c:	f81a 5002 	ldrb.w	r5, [sl, r2]
c0de2a50:	3a01      	subs	r2, #1
c0de2a52:	5465      	strb	r5, [r4, r1]
c0de2a54:	f89d 5058 	ldrb.w	r5, [sp, #88]	@ 0x58
c0de2a58:	3101      	adds	r1, #1
c0de2a5a:	4045      	eors	r5, r0
c0de2a5c:	f88d 5058 	strb.w	r5, [sp, #88]	@ 0x58
c0de2a60:	e7ed      	b.n	c0de2a3e <zkn_partial_sig+0x22>
c0de2a62:	a83e      	add	r0, sp, #248	@ 0xf8
c0de2a64:	f000 f8af 	bl	c0de2bc6 <OUTLINED_FUNCTION_2>
c0de2a68:	2800      	cmp	r0, #0
c0de2a6a:	f040 8098 	bne.w	c0de2b9e <zkn_partial_sig+0x182>
c0de2a6e:	ad3f      	add	r5, sp, #252	@ 0xfc
c0de2a70:	4640      	mov	r0, r8
c0de2a72:	4629      	mov	r1, r5
c0de2a74:	f000 f8ba 	bl	c0de2bec <tEdwards_alloc>
c0de2a78:	2800      	cmp	r0, #0
c0de2a7a:	f040 8090 	bne.w	c0de2b9e <zkn_partial_sig+0x182>
c0de2a7e:	a826      	add	r0, sp, #152	@ 0x98
c0de2a80:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2a82:	e9cd 4600 	strd	r4, r6, [sp]
c0de2a86:	463a      	mov	r2, r7
c0de2a88:	9002      	str	r0, [sp, #8]
c0de2a8a:	a916      	add	r1, sp, #88	@ 0x58
c0de2a8c:	4640      	mov	r0, r8
c0de2a8e:	f7ff fedf 	bl	c0de2850 <zkn_compute_binding_factors>
c0de2a92:	2800      	cmp	r0, #0
c0de2a94:	f040 8083 	bne.w	c0de2b9e <zkn_partial_sig+0x182>
c0de2a98:	9500      	str	r5, [sp, #0]
c0de2a9a:	ac26      	add	r4, sp, #152	@ 0x98
c0de2a9c:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2a9e:	4640      	mov	r0, r8
c0de2aa0:	4639      	mov	r1, r7
c0de2aa2:	4622      	mov	r2, r4
c0de2aa4:	f7ff fe63 	bl	c0de276e <zkn_compute_group_commitment>
c0de2aa8:	2800      	cmp	r0, #0
c0de2aaa:	d178      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2aac:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2aae:	2120      	movs	r1, #32
c0de2ab0:	465a      	mov	r2, fp
c0de2ab2:	4653      	mov	r3, sl
c0de2ab4:	e9cd 1000 	strd	r1, r0, [sp]
c0de2ab8:	a93f      	add	r1, sp, #252	@ 0xfc
c0de2aba:	4640      	mov	r0, r8
c0de2abc:	f7ff ff54 	bl	c0de2968 <compute_challenge>
c0de2ac0:	2800      	cmp	r0, #0
c0de2ac2:	d16c      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2ac4:	f000 f88a 	bl	c0de2bdc <OUTLINED_FUNCTION_5>
c0de2ac8:	2800      	cmp	r0, #0
c0de2aca:	d168      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2acc:	a80c      	add	r0, sp, #48	@ 0x30
c0de2ace:	4935      	ldr	r1, [pc, #212]	@ (c0de2ba4 <zkn_partial_sig+0x188>)
c0de2ad0:	2220      	movs	r2, #32
c0de2ad2:	4479      	add	r1, pc
c0de2ad4:	f005 fa1c 	bl	c0de7f10 <__aeabi_memcpy>
c0de2ad8:	a815      	add	r0, sp, #84	@ 0x54
c0de2ada:	f000 f874 	bl	c0de2bc6 <OUTLINED_FUNCTION_2>
c0de2ade:	2800      	cmp	r0, #0
c0de2ae0:	d15d      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2ae2:	a814      	add	r0, sp, #80	@ 0x50
c0de2ae4:	aa0c      	add	r2, sp, #48	@ 0x30
c0de2ae6:	f000 f86a 	bl	c0de2bbe <OUTLINED_FUNCTION_1>
c0de2aea:	2800      	cmp	r0, #0
c0de2aec:	d157      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2aee:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de2af0:	e9dd 2014 	ldrd	r2, r0, [sp, #80]	@ 0x50
c0de2af4:	f004 fff4 	bl	c0de7ae0 <cx_bn_reduce>
c0de2af8:	2800      	cmp	r0, #0
c0de2afa:	d150      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2afc:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de2afe:	a80b      	add	r0, sp, #44	@ 0x2c
c0de2b00:	f000 f85d 	bl	c0de2bbe <OUTLINED_FUNCTION_1>
c0de2b04:	2800      	cmp	r0, #0
c0de2b06:	d14a      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2b08:	9a4b      	ldr	r2, [sp, #300]	@ 0x12c
c0de2b0a:	a80a      	add	r0, sp, #40	@ 0x28
c0de2b0c:	f000 f857 	bl	c0de2bbe <OUTLINED_FUNCTION_1>
c0de2b10:	2800      	cmp	r0, #0
c0de2b12:	d144      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2b14:	9a50      	ldr	r2, [sp, #320]	@ 0x140
c0de2b16:	a809      	add	r0, sp, #36	@ 0x24
c0de2b18:	f000 f851 	bl	c0de2bbe <OUTLINED_FUNCTION_1>
c0de2b1c:	2800      	cmp	r0, #0
c0de2b1e:	d13e      	bne.n	c0de2b9e <zkn_partial_sig+0x182>
c0de2b20:	a808      	add	r0, sp, #32
c0de2b22:	9a05      	ldr	r2, [sp, #20]
c0de2b24:	f000 f84b 	bl	c0de2bbe <OUTLINED_FUNCTION_1>
c0de2b28:	bbc8      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b2a:	9804      	ldr	r0, [sp, #16]
c0de2b2c:	2120      	movs	r1, #32
c0de2b2e:	2320      	movs	r3, #32
c0de2b30:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de2b34:	f1a0 0220 	sub.w	r2, r0, #32
c0de2b38:	a806      	add	r0, sp, #24
c0de2b3a:	f004 ff3d 	bl	c0de79b8 <cx_bn_alloc_init>
c0de2b3e:	bb70      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b40:	a807      	add	r0, sp, #28
c0de2b42:	f000 f840 	bl	c0de2bc6 <OUTLINED_FUNCTION_2>
c0de2b46:	bb50      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b48:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b4a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de2b4c:	e9dd 2006 	ldrd	r2, r0, [sp, #24]
c0de2b50:	f004 ffba 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de2b54:	bb18      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b56:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b58:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de2b5c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2b5e:	f004 ffb3 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de2b62:	b9e0      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b64:	e9dd 3214 	ldrd	r3, r2, [sp, #80]	@ 0x50
c0de2b68:	e9dd 0109 	ldrd	r0, r1, [sp, #36]	@ 0x24
c0de2b6c:	f004 ffac 	bl	c0de7ac8 <cx_bn_mod_mul>
c0de2b70:	b9a8      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b72:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b74:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de2b76:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de2b7a:	f004 ff8d 	bl	c0de7a98 <cx_bn_mod_add>
c0de2b7e:	b970      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b80:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b82:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de2b84:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de2b88:	f004 ff86 	bl	c0de7a98 <cx_bn_mod_add>
c0de2b8c:	b938      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b8e:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de2b90:	9907      	ldr	r1, [sp, #28]
c0de2b92:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2b94:	f004 ffa4 	bl	c0de7ae0 <cx_bn_reduce>
c0de2b98:	b908      	cbnz	r0, c0de2b9e <zkn_partial_sig+0x182>
c0de2b9a:	f000 f81f 	bl	c0de2bdc <OUTLINED_FUNCTION_5>
c0de2b9e:	b042      	add	sp, #264	@ 0x108
c0de2ba0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2ba4:	00005bba 	.word	0x00005bba

c0de2ba8 <OUTLINED_FUNCTION_0>:
c0de2ba8:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2bac:	f7ff fed3 	bl	c0de2956 <zkn_serialize_scalar_for_hash>
c0de2bb0:	683a      	ldr	r2, [r7, #0]
c0de2bb2:	4650      	mov	r0, sl
c0de2bb4:	4659      	mov	r1, fp
c0de2bb6:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2bba:	f000 bf3d 	b.w	c0de3a38 <zkn_frost_hash_update>

c0de2bbe <OUTLINED_FUNCTION_1>:
c0de2bbe:	2120      	movs	r1, #32
c0de2bc0:	2320      	movs	r3, #32
c0de2bc2:	f004 bef9 	b.w	c0de79b8 <cx_bn_alloc_init>

c0de2bc6 <OUTLINED_FUNCTION_2>:
c0de2bc6:	2120      	movs	r1, #32
c0de2bc8:	f004 beec 	b.w	c0de79a4 <cx_bn_alloc>

c0de2bcc <OUTLINED_FUNCTION_3>:
c0de2bcc:	4642      	mov	r2, r8
c0de2bce:	4601      	mov	r1, r0
c0de2bd0:	f004 bfbc 	b.w	c0de7b4c <cx_mont_to_montgomery>

c0de2bd4 <OUTLINED_FUNCTION_4>:
c0de2bd4:	461c      	mov	r4, r3
c0de2bd6:	4615      	mov	r5, r2
c0de2bd8:	f004 bee4 	b.w	c0de79a4 <cx_bn_alloc>

c0de2bdc <OUTLINED_FUNCTION_5>:
c0de2bdc:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2bde:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de2be0:	2220      	movs	r2, #32
c0de2be2:	f004 bf29 	b.w	c0de7a38 <cx_bn_export>

c0de2be6 <OUTLINED_FUNCTION_6>:
c0de2be6:	4620      	mov	r0, r4
c0de2be8:	f000 b815 	b.w	c0de2c16 <tEdwards_destroy>

c0de2bec <tEdwards_alloc>:
c0de2bec:	b5b0      	push	{r4, r5, r7, lr}
c0de2bee:	460d      	mov	r5, r1
c0de2bf0:	6801      	ldr	r1, [r0, #0]
c0de2bf2:	4604      	mov	r4, r0
c0de2bf4:	4628      	mov	r0, r5
c0de2bf6:	f004 fed5 	bl	c0de79a4 <cx_bn_alloc>
c0de2bfa:	b920      	cbnz	r0, c0de2c06 <tEdwards_alloc+0x1a>
c0de2bfc:	6821      	ldr	r1, [r4, #0]
c0de2bfe:	1d28      	adds	r0, r5, #4
c0de2c00:	f004 fed0 	bl	c0de79a4 <cx_bn_alloc>
c0de2c04:	b100      	cbz	r0, c0de2c08 <tEdwards_alloc+0x1c>
c0de2c06:	bdb0      	pop	{r4, r5, r7, pc}
c0de2c08:	6821      	ldr	r1, [r4, #0]
c0de2c0a:	f105 0008 	add.w	r0, r5, #8
c0de2c0e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2c12:	f004 bec7 	b.w	c0de79a4 <cx_bn_alloc>

c0de2c16 <tEdwards_destroy>:
c0de2c16:	b510      	push	{r4, lr}
c0de2c18:	4608      	mov	r0, r1
c0de2c1a:	460c      	mov	r4, r1
c0de2c1c:	f004 fed8 	bl	c0de79d0 <cx_bn_destroy>
c0de2c20:	b918      	cbnz	r0, c0de2c2a <tEdwards_destroy+0x14>
c0de2c22:	1d20      	adds	r0, r4, #4
c0de2c24:	f004 fed4 	bl	c0de79d0 <cx_bn_destroy>
c0de2c28:	b100      	cbz	r0, c0de2c2c <tEdwards_destroy+0x16>
c0de2c2a:	bd10      	pop	{r4, pc}
c0de2c2c:	f104 0008 	add.w	r0, r4, #8
c0de2c30:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2c34:	f004 becc 	b.w	c0de79d0 <cx_bn_destroy>

c0de2c38 <tEdwards_double>:
c0de2c38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2c3a:	460f      	mov	r7, r1
c0de2c3c:	4614      	mov	r4, r2
c0de2c3e:	4605      	mov	r5, r0
c0de2c40:	6843      	ldr	r3, [r0, #4]
c0de2c42:	6809      	ldr	r1, [r1, #0]
c0de2c44:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2c46:	687a      	ldr	r2, [r7, #4]
c0de2c48:	f004 ff26 	bl	c0de7a98 <cx_bn_mod_add>
c0de2c4c:	2800      	cmp	r0, #0
c0de2c4e:	d154      	bne.n	c0de2cfa <tEdwards_double+0xc2>
c0de2c50:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2c54:	f105 0620 	add.w	r6, r5, #32
c0de2c58:	f000 fbe4 	bl	c0de3424 <OUTLINED_FUNCTION_2>
c0de2c5c:	2800      	cmp	r0, #0
c0de2c5e:	d14c      	bne.n	c0de2cfa <tEdwards_double+0xc2>
c0de2c60:	6839      	ldr	r1, [r7, #0]
c0de2c62:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2c64:	f000 fbde 	bl	c0de3424 <OUTLINED_FUNCTION_2>
c0de2c68:	2800      	cmp	r0, #0
c0de2c6a:	d146      	bne.n	c0de2cfa <tEdwards_double+0xc2>
c0de2c6c:	6879      	ldr	r1, [r7, #4]
c0de2c6e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2c70:	f000 fbd8 	bl	c0de3424 <OUTLINED_FUNCTION_2>
c0de2c74:	2800      	cmp	r0, #0
c0de2c76:	d140      	bne.n	c0de2cfa <tEdwards_double+0xc2>
c0de2c78:	69a9      	ldr	r1, [r5, #24]
c0de2c7a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2c7c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c7e:	f000 fbcb 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de2c82:	bbd0      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2c84:	686b      	ldr	r3, [r5, #4]
c0de2c86:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2c8a:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2c8c:	f004 ff04 	bl	c0de7a98 <cx_bn_mod_add>
c0de2c90:	bb98      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2c92:	68b9      	ldr	r1, [r7, #8]
c0de2c94:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2c96:	f000 fbc5 	bl	c0de3424 <OUTLINED_FUNCTION_2>
c0de2c9a:	bb70      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2c9c:	686b      	ldr	r3, [r5, #4]
c0de2c9e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2ca0:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2ca2:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2ca4:	f004 ff04 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2ca8:	bb38      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2caa:	686b      	ldr	r3, [r5, #4]
c0de2cac:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2cae:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2cb2:	f004 fefd 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2cb6:	bb00      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2cb8:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de2cbc:	686b      	ldr	r3, [r5, #4]
c0de2cbe:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2cc0:	f004 fef6 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2cc4:	b9c8      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2cc6:	686b      	ldr	r3, [r5, #4]
c0de2cc8:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2ccc:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de2cce:	f004 feef 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2cd2:	b990      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2cd4:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2cd6:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2cd8:	6820      	ldr	r0, [r4, #0]
c0de2cda:	f000 fb9d 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de2cde:	b960      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2ce0:	686b      	ldr	r3, [r5, #4]
c0de2ce2:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2ce6:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2ce8:	f004 fee2 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2cec:	b928      	cbnz	r0, c0de2cfa <tEdwards_double+0xc2>
c0de2cee:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2cf0:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2cf2:	6860      	ldr	r0, [r4, #4]
c0de2cf4:	f000 fb90 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de2cf8:	b100      	cbz	r0, c0de2cfc <tEdwards_double+0xc4>
c0de2cfa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2cfc:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2cfe:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2d00:	68a0      	ldr	r0, [r4, #8]
c0de2d02:	4633      	mov	r3, r6
c0de2d04:	b001      	add	sp, #4
c0de2d06:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2d0a:	f004 bf37 	b.w	c0de7b7c <cx_mont_mul>

c0de2d0e <tEdwards_add>:
c0de2d0e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2d12:	4606      	mov	r6, r0
c0de2d14:	4617      	mov	r7, r2
c0de2d16:	460c      	mov	r4, r1
c0de2d18:	6892      	ldr	r2, [r2, #8]
c0de2d1a:	6889      	ldr	r1, [r1, #8]
c0de2d1c:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2d1e:	4698      	mov	r8, r3
c0de2d20:	f106 0520 	add.w	r5, r6, #32
c0de2d24:	f000 fb7b 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2d28:	2800      	cmp	r0, #0
c0de2d2a:	d17d      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2d2c:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2d30:	462b      	mov	r3, r5
c0de2d32:	460a      	mov	r2, r1
c0de2d34:	f004 ff22 	bl	c0de7b7c <cx_mont_mul>
c0de2d38:	2800      	cmp	r0, #0
c0de2d3a:	d175      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2d3c:	683a      	ldr	r2, [r7, #0]
c0de2d3e:	6821      	ldr	r1, [r4, #0]
c0de2d40:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2d42:	f000 fb6c 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2d46:	2800      	cmp	r0, #0
c0de2d48:	d16e      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2d4a:	687a      	ldr	r2, [r7, #4]
c0de2d4c:	6861      	ldr	r1, [r4, #4]
c0de2d4e:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2d50:	f000 fb65 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2d54:	2800      	cmp	r0, #0
c0de2d56:	d167      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2d58:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2d5c:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2d5e:	f000 fb5e 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2d62:	2800      	cmp	r0, #0
c0de2d64:	d160      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2d66:	69f2      	ldr	r2, [r6, #28]
c0de2d68:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2d6a:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2d6c:	f000 fb57 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2d70:	2800      	cmp	r0, #0
c0de2d72:	d159      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2d74:	6873      	ldr	r3, [r6, #4]
c0de2d76:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2d78:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2d7c:	f004 fe98 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2d80:	2800      	cmp	r0, #0
c0de2d82:	d151      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2d84:	6873      	ldr	r3, [r6, #4]
c0de2d86:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2d88:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2d8a:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2d8c:	f004 fe84 	bl	c0de7a98 <cx_bn_mod_add>
c0de2d90:	2800      	cmp	r0, #0
c0de2d92:	d149      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2d94:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2d98:	6873      	ldr	r3, [r6, #4]
c0de2d9a:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2d9c:	f004 fe7c 	bl	c0de7a98 <cx_bn_mod_add>
c0de2da0:	2800      	cmp	r0, #0
c0de2da2:	d141      	bne.n	c0de2e28 <tEdwards_add+0x11a>
c0de2da4:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2da8:	6873      	ldr	r3, [r6, #4]
c0de2daa:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2dac:	f004 fe74 	bl	c0de7a98 <cx_bn_mod_add>
c0de2db0:	bbd0      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2db2:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2db4:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2db8:	f000 fb31 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2dbc:	bba0      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2dbe:	6873      	ldr	r3, [r6, #4]
c0de2dc0:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2dc4:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2dc6:	f004 fe73 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2dca:	bb68      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2dcc:	6873      	ldr	r3, [r6, #4]
c0de2dce:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2dd0:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2dd4:	f004 fe6c 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2dd8:	bb30      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2dda:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2dde:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2de0:	f000 fb1d 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2de4:	bb00      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2de6:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2de8:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2dea:	f8d8 0000 	ldr.w	r0, [r8]
c0de2dee:	f000 fb16 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2df2:	b9c8      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2df4:	69b1      	ldr	r1, [r6, #24]
c0de2df6:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2dfa:	f000 fb10 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2dfe:	b998      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2e00:	6873      	ldr	r3, [r6, #4]
c0de2e02:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2e04:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2e06:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2e08:	f004 fe52 	bl	c0de7ab0 <cx_bn_mod_sub>
c0de2e0c:	b960      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2e0e:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2e10:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2e12:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2e14:	f000 fb03 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2e18:	b930      	cbnz	r0, c0de2e28 <tEdwards_add+0x11a>
c0de2e1a:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2e1e:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2e22:	f000 fafc 	bl	c0de341e <OUTLINED_FUNCTION_1>
c0de2e26:	b108      	cbz	r0, c0de2e2c <tEdwards_add+0x11e>
c0de2e28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2e2c:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2e30:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2e34:	462b      	mov	r3, r5
c0de2e36:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e3a:	f004 be9f 	b.w	c0de7b7c <cx_mont_mul>

c0de2e3e <tEdwards_IsOnCurve>:
c0de2e3e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2e40:	4605      	mov	r5, r0
c0de2e42:	460f      	mov	r7, r1
c0de2e44:	2005      	movs	r0, #5
c0de2e46:	6809      	ldr	r1, [r1, #0]
c0de2e48:	4614      	mov	r4, r2
c0de2e4a:	9000      	str	r0, [sp, #0]
c0de2e4c:	f105 0620 	add.w	r6, r5, #32
c0de2e50:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2e52:	460a      	mov	r2, r1
c0de2e54:	f000 fae0 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de2e58:	b100      	cbz	r0, c0de2e5c <tEdwards_IsOnCurve+0x1e>
c0de2e5a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2e5c:	6879      	ldr	r1, [r7, #4]
c0de2e5e:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2e60:	f000 fae0 	bl	c0de3424 <OUTLINED_FUNCTION_2>
c0de2e64:	2800      	cmp	r0, #0
c0de2e66:	d1f8      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2e68:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2e6c:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2e6e:	f000 fad3 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de2e72:	2800      	cmp	r0, #0
c0de2e74:	d1f1      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2e76:	69a9      	ldr	r1, [r5, #24]
c0de2e78:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2e7a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2e7c:	f000 facc 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de2e80:	2800      	cmp	r0, #0
c0de2e82:	d1ea      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2e84:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2e86:	686b      	ldr	r3, [r5, #4]
c0de2e88:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2e8a:	4601      	mov	r1, r0
c0de2e8c:	f004 fe04 	bl	c0de7a98 <cx_bn_mod_add>
c0de2e90:	2800      	cmp	r0, #0
c0de2e92:	d1e2      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2e94:	69e9      	ldr	r1, [r5, #28]
c0de2e96:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2e98:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2e9a:	f000 fabd 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de2e9e:	2800      	cmp	r0, #0
c0de2ea0:	d1db      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2ea2:	686b      	ldr	r3, [r5, #4]
c0de2ea4:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2ea6:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2ea8:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2eaa:	f004 fdf5 	bl	c0de7a98 <cx_bn_mod_add>
c0de2eae:	2800      	cmp	r0, #0
c0de2eb0:	d1d3      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2eb2:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2eb4:	4632      	mov	r2, r6
c0de2eb6:	4601      	mov	r1, r0
c0de2eb8:	f004 fe54 	bl	c0de7b64 <cx_mont_from_montgomery>
c0de2ebc:	2800      	cmp	r0, #0
c0de2ebe:	d1cc      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2ec0:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2ec2:	4632      	mov	r2, r6
c0de2ec4:	4601      	mov	r1, r0
c0de2ec6:	f004 fe4d 	bl	c0de7b64 <cx_mont_from_montgomery>
c0de2eca:	2800      	cmp	r0, #0
c0de2ecc:	d1c5      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2ece:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2ed2:	466a      	mov	r2, sp
c0de2ed4:	f004 fdbc 	bl	c0de7a50 <cx_bn_cmp>
c0de2ed8:	2800      	cmp	r0, #0
c0de2eda:	d1be      	bne.n	c0de2e5a <tEdwards_IsOnCurve+0x1c>
c0de2edc:	9800      	ldr	r0, [sp, #0]
c0de2ede:	fab0 f080 	clz	r0, r0
c0de2ee2:	0940      	lsrs	r0, r0, #5
c0de2ee4:	7020      	strb	r0, [r4, #0]
c0de2ee6:	2000      	movs	r0, #0
c0de2ee8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2eec <tEdwards_Curve_alloc_init>:
c0de2eec:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ef0:	b0d2      	sub	sp, #328	@ 0x148
c0de2ef2:	4604      	mov	r4, r0
c0de2ef4:	2902      	cmp	r1, #2
c0de2ef6:	d022      	beq.n	c0de2f3e <tEdwards_Curve_alloc_init+0x52>
c0de2ef8:	2901      	cmp	r1, #1
c0de2efa:	f040 80cd 	bne.w	c0de3098 <tEdwards_Curve_alloc_init+0x1ac>
c0de2efe:	2020      	movs	r0, #32
c0de2f00:	2220      	movs	r2, #32
c0de2f02:	6020      	str	r0, [r4, #0]
c0de2f04:	af4a      	add	r7, sp, #296	@ 0x128
c0de2f06:	4967      	ldr	r1, [pc, #412]	@ (c0de30a4 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2f08:	4638      	mov	r0, r7
c0de2f0a:	4479      	add	r1, pc
c0de2f0c:	f005 f800 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f10:	ae42      	add	r6, sp, #264	@ 0x108
c0de2f12:	4965      	ldr	r1, [pc, #404]	@ (c0de30a8 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2f14:	2220      	movs	r2, #32
c0de2f16:	4630      	mov	r0, r6
c0de2f18:	4479      	add	r1, pc
c0de2f1a:	f004 fff9 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f1e:	4963      	ldr	r1, [pc, #396]	@ (c0de30ac <tEdwards_Curve_alloc_init+0x1c0>)
c0de2f20:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2f24:	2220      	movs	r2, #32
c0de2f26:	4650      	mov	r0, sl
c0de2f28:	4479      	add	r1, pc
c0de2f2a:	f004 fff1 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f2e:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2f30:	495f      	ldr	r1, [pc, #380]	@ (c0de30b0 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2f32:	2220      	movs	r2, #32
c0de2f34:	4628      	mov	r0, r5
c0de2f36:	4479      	add	r1, pc
c0de2f38:	f004 ffea 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f3c:	e02d      	b.n	c0de2f9a <tEdwards_Curve_alloc_init+0xae>
c0de2f3e:	2020      	movs	r0, #32
c0de2f40:	2220      	movs	r2, #32
c0de2f42:	6020      	str	r0, [r4, #0]
c0de2f44:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2f46:	495b      	ldr	r1, [pc, #364]	@ (c0de30b4 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2f48:	4638      	mov	r0, r7
c0de2f4a:	4479      	add	r1, pc
c0de2f4c:	f004 ffe0 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f50:	ae22      	add	r6, sp, #136	@ 0x88
c0de2f52:	4959      	ldr	r1, [pc, #356]	@ (c0de30b8 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2f54:	2220      	movs	r2, #32
c0de2f56:	4630      	mov	r0, r6
c0de2f58:	4479      	add	r1, pc
c0de2f5a:	f004 ffd9 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f5e:	4957      	ldr	r1, [pc, #348]	@ (c0de30bc <tEdwards_Curve_alloc_init+0x1d0>)
c0de2f60:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2f64:	2220      	movs	r2, #32
c0de2f66:	4650      	mov	r0, sl
c0de2f68:	4479      	add	r1, pc
c0de2f6a:	f004 ffd1 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f6e:	a812      	add	r0, sp, #72	@ 0x48
c0de2f70:	4953      	ldr	r1, [pc, #332]	@ (c0de30c0 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2f72:	2220      	movs	r2, #32
c0de2f74:	9001      	str	r0, [sp, #4]
c0de2f76:	4479      	add	r1, pc
c0de2f78:	f004 ffca 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f7c:	4951      	ldr	r1, [pc, #324]	@ (c0de30c4 <tEdwards_Curve_alloc_init+0x1d8>)
c0de2f7e:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2f82:	2220      	movs	r2, #32
c0de2f84:	4658      	mov	r0, fp
c0de2f86:	4479      	add	r1, pc
c0de2f88:	f004 ffc2 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f8c:	ad02      	add	r5, sp, #8
c0de2f8e:	494e      	ldr	r1, [pc, #312]	@ (c0de30c8 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2f90:	2220      	movs	r2, #32
c0de2f92:	4628      	mov	r0, r5
c0de2f94:	4479      	add	r1, pc
c0de2f96:	f004 ffbb 	bl	c0de7f10 <__aeabi_memcpy>
c0de2f9a:	f104 0804 	add.w	r8, r4, #4
c0de2f9e:	2120      	movs	r1, #32
c0de2fa0:	463a      	mov	r2, r7
c0de2fa2:	2320      	movs	r3, #32
c0de2fa4:	4640      	mov	r0, r8
c0de2fa6:	f004 fd07 	bl	c0de79b8 <cx_bn_alloc_init>
c0de2faa:	2800      	cmp	r0, #0
c0de2fac:	d175      	bne.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de2fae:	4620      	mov	r0, r4
c0de2fb0:	462a      	mov	r2, r5
c0de2fb2:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2fb6:	460b      	mov	r3, r1
c0de2fb8:	f004 fcfe 	bl	c0de79b8 <cx_bn_alloc_init>
c0de2fbc:	2800      	cmp	r0, #0
c0de2fbe:	d16c      	bne.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de2fc0:	f104 0520 	add.w	r5, r4, #32
c0de2fc4:	2120      	movs	r1, #32
c0de2fc6:	4628      	mov	r0, r5
c0de2fc8:	f004 fdac 	bl	c0de7b24 <cx_mont_alloc>
c0de2fcc:	2800      	cmp	r0, #0
c0de2fce:	d164      	bne.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de2fd0:	f8d8 1000 	ldr.w	r1, [r8]
c0de2fd4:	4628      	mov	r0, r5
c0de2fd6:	f004 fdaf 	bl	c0de7b38 <cx_mont_init>
c0de2fda:	2800      	cmp	r0, #0
c0de2fdc:	d15d      	bne.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de2fde:	4627      	mov	r7, r4
c0de2fe0:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2fe4:	4638      	mov	r0, r7
c0de2fe6:	f004 fcdd 	bl	c0de79a4 <cx_bn_alloc>
c0de2fea:	2800      	cmp	r0, #0
c0de2fec:	d155      	bne.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de2fee:	6838      	ldr	r0, [r7, #0]
c0de2ff0:	2101      	movs	r1, #1
c0de2ff2:	f004 fd17 	bl	c0de7a24 <cx_bn_set_u32>
c0de2ff6:	2800      	cmp	r0, #0
c0de2ff8:	d14f      	bne.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de2ffa:	6838      	ldr	r0, [r7, #0]
c0de2ffc:	f000 fa16 	bl	c0de342c <OUTLINED_FUNCTION_3>
c0de3000:	2800      	cmp	r0, #0
c0de3002:	d14a      	bne.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3004:	f104 070c 	add.w	r7, r4, #12
c0de3008:	4620      	mov	r0, r4
c0de300a:	4639      	mov	r1, r7
c0de300c:	f7ff fdee 	bl	c0de2bec <tEdwards_alloc>
c0de3010:	2800      	cmp	r0, #0
c0de3012:	d142      	bne.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3014:	9901      	ldr	r1, [sp, #4]
c0de3016:	4620      	mov	r0, r4
c0de3018:	465a      	mov	r2, fp
c0de301a:	463b      	mov	r3, r7
c0de301c:	f000 f856 	bl	c0de30cc <tEdwards_init>
c0de3020:	bbd8      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3022:	4627      	mov	r7, r4
c0de3024:	4632      	mov	r2, r6
c0de3026:	f857 1b18 	ldr.w	r1, [r7], #24
c0de302a:	4638      	mov	r0, r7
c0de302c:	460b      	mov	r3, r1
c0de302e:	f004 fcc3 	bl	c0de79b8 <cx_bn_alloc_init>
c0de3032:	bb90      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3034:	6838      	ldr	r0, [r7, #0]
c0de3036:	f000 f9f9 	bl	c0de342c <OUTLINED_FUNCTION_3>
c0de303a:	bb70      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de303c:	4626      	mov	r6, r4
c0de303e:	4652      	mov	r2, sl
c0de3040:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de3044:	4630      	mov	r0, r6
c0de3046:	460b      	mov	r3, r1
c0de3048:	f004 fcb6 	bl	c0de79b8 <cx_bn_alloc_init>
c0de304c:	bb28      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de304e:	6830      	ldr	r0, [r6, #0]
c0de3050:	f000 f9ec 	bl	c0de342c <OUTLINED_FUNCTION_3>
c0de3054:	bb08      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3056:	4620      	mov	r0, r4
c0de3058:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de305c:	f004 fca2 	bl	c0de79a4 <cx_bn_alloc>
c0de3060:	b9d8      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3062:	f000 f9fb 	bl	c0de345c <OUTLINED_FUNCTION_8>
c0de3066:	b9c0      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3068:	f000 f9e4 	bl	c0de3434 <OUTLINED_FUNCTION_4>
c0de306c:	b9a8      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de306e:	f000 f9f0 	bl	c0de3452 <OUTLINED_FUNCTION_7>
c0de3072:	b990      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3074:	f000 f9fc 	bl	c0de3470 <OUTLINED_FUNCTION_10>
c0de3078:	b978      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de307a:	f000 f9e5 	bl	c0de3448 <OUTLINED_FUNCTION_6>
c0de307e:	b960      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3080:	f000 f9f1 	bl	c0de3466 <OUTLINED_FUNCTION_9>
c0de3084:	b948      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3086:	f000 f9da 	bl	c0de343e <OUTLINED_FUNCTION_5>
c0de308a:	b930      	cbnz	r0, c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de308c:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de3090:	4620      	mov	r0, r4
c0de3092:	f004 fc87 	bl	c0de79a4 <cx_bn_alloc>
c0de3096:	e000      	b.n	c0de309a <tEdwards_Curve_alloc_init+0x1ae>
c0de3098:	4801      	ldr	r0, [pc, #4]	@ (c0de30a0 <tEdwards_Curve_alloc_init+0x1b4>)
c0de309a:	b052      	add	sp, #328	@ 0x148
c0de309c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de30a0:	5a4b4e01 	.word	0x5a4b4e01
c0de30a4:	00005662 	.word	0x00005662
c0de30a8:	00005894 	.word	0x00005894
c0de30ac:	00005844 	.word	0x00005844
c0de30b0:	00005736 	.word	0x00005736
c0de30b4:	000058a2 	.word	0x000058a2
c0de30b8:	000057f4 	.word	0x000057f4
c0de30bc:	00005864 	.word	0x00005864
c0de30c0:	00005896 	.word	0x00005896
c0de30c4:	000058a6 	.word	0x000058a6
c0de30c8:	000056f8 	.word	0x000056f8

c0de30cc <tEdwards_init>:
c0de30cc:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de30ce:	6806      	ldr	r6, [r0, #0]
c0de30d0:	461c      	mov	r4, r3
c0de30d2:	4617      	mov	r7, r2
c0de30d4:	460a      	mov	r2, r1
c0de30d6:	4605      	mov	r5, r0
c0de30d8:	a802      	add	r0, sp, #8
c0de30da:	4631      	mov	r1, r6
c0de30dc:	4633      	mov	r3, r6
c0de30de:	f004 fc6b 	bl	c0de79b8 <cx_bn_alloc_init>
c0de30e2:	b100      	cbz	r0, c0de30e6 <tEdwards_init+0x1a>
c0de30e4:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de30e6:	a801      	add	r0, sp, #4
c0de30e8:	4631      	mov	r1, r6
c0de30ea:	463a      	mov	r2, r7
c0de30ec:	4633      	mov	r3, r6
c0de30ee:	f004 fc63 	bl	c0de79b8 <cx_bn_alloc_init>
c0de30f2:	2800      	cmp	r0, #0
c0de30f4:	d1f6      	bne.n	c0de30e4 <tEdwards_init+0x18>
c0de30f6:	4668      	mov	r0, sp
c0de30f8:	4631      	mov	r1, r6
c0de30fa:	f004 fc53 	bl	c0de79a4 <cx_bn_alloc>
c0de30fe:	2800      	cmp	r0, #0
c0de3100:	d1f0      	bne.n	c0de30e4 <tEdwards_init+0x18>
c0de3102:	f105 0620 	add.w	r6, r5, #32
c0de3106:	6820      	ldr	r0, [r4, #0]
c0de3108:	9902      	ldr	r1, [sp, #8]
c0de310a:	4632      	mov	r2, r6
c0de310c:	f004 fd1e 	bl	c0de7b4c <cx_mont_to_montgomery>
c0de3110:	2800      	cmp	r0, #0
c0de3112:	d1e7      	bne.n	c0de30e4 <tEdwards_init+0x18>
c0de3114:	6860      	ldr	r0, [r4, #4]
c0de3116:	9901      	ldr	r1, [sp, #4]
c0de3118:	4632      	mov	r2, r6
c0de311a:	f004 fd17 	bl	c0de7b4c <cx_mont_to_montgomery>
c0de311e:	2800      	cmp	r0, #0
c0de3120:	d1e0      	bne.n	c0de30e4 <tEdwards_init+0x18>
c0de3122:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de3124:	68a0      	ldr	r0, [r4, #8]
c0de3126:	f004 fc73 	bl	c0de7a10 <cx_bn_copy>
c0de312a:	2800      	cmp	r0, #0
c0de312c:	d1da      	bne.n	c0de30e4 <tEdwards_init+0x18>
c0de312e:	a802      	add	r0, sp, #8
c0de3130:	f004 fc4e 	bl	c0de79d0 <cx_bn_destroy>
c0de3134:	2800      	cmp	r0, #0
c0de3136:	d1d5      	bne.n	c0de30e4 <tEdwards_init+0x18>
c0de3138:	a801      	add	r0, sp, #4
c0de313a:	f004 fc49 	bl	c0de79d0 <cx_bn_destroy>
c0de313e:	2800      	cmp	r0, #0
c0de3140:	d1d0      	bne.n	c0de30e4 <tEdwards_init+0x18>
c0de3142:	4668      	mov	r0, sp
c0de3144:	f004 fc44 	bl	c0de79d0 <cx_bn_destroy>
c0de3148:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de314a <tEdwards_Curve_partial_destroy>:
c0de314a:	b510      	push	{r4, lr}
c0de314c:	4604      	mov	r4, r0
c0de314e:	302c      	adds	r0, #44	@ 0x2c
c0de3150:	f004 fc3e 	bl	c0de79d0 <cx_bn_destroy>
c0de3154:	bbd8      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de3156:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de315a:	f004 fc39 	bl	c0de79d0 <cx_bn_destroy>
c0de315e:	bbb0      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de3160:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de3164:	f004 fc34 	bl	c0de79d0 <cx_bn_destroy>
c0de3168:	bb88      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de316a:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de316e:	f004 fc2f 	bl	c0de79d0 <cx_bn_destroy>
c0de3172:	bb60      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de3174:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de3178:	f004 fc2a 	bl	c0de79d0 <cx_bn_destroy>
c0de317c:	bb38      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de317e:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de3182:	f004 fc25 	bl	c0de79d0 <cx_bn_destroy>
c0de3186:	bb10      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de3188:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de318c:	f004 fc20 	bl	c0de79d0 <cx_bn_destroy>
c0de3190:	b9e8      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de3192:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de3196:	f004 fc1b 	bl	c0de79d0 <cx_bn_destroy>
c0de319a:	b9c0      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de319c:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de31a0:	f004 fc16 	bl	c0de79d0 <cx_bn_destroy>
c0de31a4:	b998      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de31a6:	f104 010c 	add.w	r1, r4, #12
c0de31aa:	f7ff fd34 	bl	c0de2c16 <tEdwards_destroy>
c0de31ae:	b970      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de31b0:	f104 0018 	add.w	r0, r4, #24
c0de31b4:	f004 fc0c 	bl	c0de79d0 <cx_bn_destroy>
c0de31b8:	b948      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de31ba:	f104 001c 	add.w	r0, r4, #28
c0de31be:	f004 fc07 	bl	c0de79d0 <cx_bn_destroy>
c0de31c2:	b920      	cbnz	r0, c0de31ce <tEdwards_Curve_partial_destroy+0x84>
c0de31c4:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de31c8:	f004 fc02 	bl	c0de79d0 <cx_bn_destroy>
c0de31cc:	b100      	cbz	r0, c0de31d0 <tEdwards_Curve_partial_destroy+0x86>
c0de31ce:	bd10      	pop	{r4, pc}
c0de31d0:	f104 0008 	add.w	r0, r4, #8
c0de31d4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de31d8:	f004 bbfa 	b.w	c0de79d0 <cx_bn_destroy>

c0de31dc <tEdwards_SetNeutral>:
c0de31dc:	b5b0      	push	{r4, r5, r7, lr}
c0de31de:	4605      	mov	r5, r0
c0de31e0:	6808      	ldr	r0, [r1, #0]
c0de31e2:	460c      	mov	r4, r1
c0de31e4:	2100      	movs	r1, #0
c0de31e6:	f004 fc1d 	bl	c0de7a24 <cx_bn_set_u32>
c0de31ea:	b918      	cbnz	r0, c0de31f4 <tEdwards_SetNeutral+0x18>
c0de31ec:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de31ee:	f000 f944 	bl	c0de347a <OUTLINED_FUNCTION_11>
c0de31f2:	b100      	cbz	r0, c0de31f6 <tEdwards_SetNeutral+0x1a>
c0de31f4:	bdb0      	pop	{r4, r5, r7, pc}
c0de31f6:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de31f8:	68a0      	ldr	r0, [r4, #8]
c0de31fa:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de31fe:	f004 bc07 	b.w	c0de7a10 <cx_bn_copy>

c0de3202 <tEdwards_export>:
c0de3202:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3206:	4698      	mov	r8, r3
c0de3208:	4616      	mov	r6, r2
c0de320a:	460f      	mov	r7, r1
c0de320c:	4605      	mov	r5, r0
c0de320e:	f000 f81e 	bl	c0de324e <tEdwards_normalize>
c0de3212:	b998      	cbnz	r0, c0de323c <tEdwards_export+0x3a>
c0de3214:	f105 0420 	add.w	r4, r5, #32
c0de3218:	6839      	ldr	r1, [r7, #0]
c0de321a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de321c:	4622      	mov	r2, r4
c0de321e:	f004 fca1 	bl	c0de7b64 <cx_mont_from_montgomery>
c0de3222:	b958      	cbnz	r0, c0de323c <tEdwards_export+0x3a>
c0de3224:	6879      	ldr	r1, [r7, #4]
c0de3226:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de3228:	4622      	mov	r2, r4
c0de322a:	f004 fc9b 	bl	c0de7b64 <cx_mont_from_montgomery>
c0de322e:	b928      	cbnz	r0, c0de323c <tEdwards_export+0x3a>
c0de3230:	682a      	ldr	r2, [r5, #0]
c0de3232:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de3234:	4631      	mov	r1, r6
c0de3236:	f004 fbff 	bl	c0de7a38 <cx_bn_export>
c0de323a:	b108      	cbz	r0, c0de3240 <tEdwards_export+0x3e>
c0de323c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3240:	682a      	ldr	r2, [r5, #0]
c0de3242:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de3244:	4641      	mov	r1, r8
c0de3246:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de324a:	f004 bbf5 	b.w	c0de7a38 <cx_bn_export>

c0de324e <tEdwards_normalize>:
c0de324e:	b570      	push	{r4, r5, r6, lr}
c0de3250:	4605      	mov	r5, r0
c0de3252:	460c      	mov	r4, r1
c0de3254:	6889      	ldr	r1, [r1, #8]
c0de3256:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de3258:	f105 0620 	add.w	r6, r5, #32
c0de325c:	4632      	mov	r2, r6
c0de325e:	f004 fca9 	bl	c0de7bb4 <cx_mont_invert_nprime>
c0de3262:	b9d0      	cbnz	r0, c0de329a <tEdwards_normalize+0x4c>
c0de3264:	6822      	ldr	r2, [r4, #0]
c0de3266:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de326a:	f000 f8d5 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de326e:	b9a0      	cbnz	r0, c0de329a <tEdwards_normalize+0x4c>
c0de3270:	6862      	ldr	r2, [r4, #4]
c0de3272:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3274:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de3276:	f000 f8cf 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de327a:	b970      	cbnz	r0, c0de329a <tEdwards_normalize+0x4c>
c0de327c:	68a2      	ldr	r2, [r4, #8]
c0de327e:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3280:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de3282:	f000 f8c9 	bl	c0de3418 <OUTLINED_FUNCTION_0>
c0de3286:	b940      	cbnz	r0, c0de329a <tEdwards_normalize+0x4c>
c0de3288:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de328a:	6820      	ldr	r0, [r4, #0]
c0de328c:	f004 fbc0 	bl	c0de7a10 <cx_bn_copy>
c0de3290:	b918      	cbnz	r0, c0de329a <tEdwards_normalize+0x4c>
c0de3292:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de3294:	f000 f8f1 	bl	c0de347a <OUTLINED_FUNCTION_11>
c0de3298:	b100      	cbz	r0, c0de329c <tEdwards_normalize+0x4e>
c0de329a:	bd70      	pop	{r4, r5, r6, pc}
c0de329c:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de329e:	68a0      	ldr	r0, [r4, #8]
c0de32a0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de32a4:	f004 bbb4 	b.w	c0de7a10 <cx_bn_copy>

c0de32a8 <tEdwards_copy>:
c0de32a8:	b5b0      	push	{r4, r5, r7, lr}
c0de32aa:	460c      	mov	r4, r1
c0de32ac:	4605      	mov	r5, r0
c0de32ae:	6801      	ldr	r1, [r0, #0]
c0de32b0:	6820      	ldr	r0, [r4, #0]
c0de32b2:	f004 fbad 	bl	c0de7a10 <cx_bn_copy>
c0de32b6:	b918      	cbnz	r0, c0de32c0 <tEdwards_copy+0x18>
c0de32b8:	6869      	ldr	r1, [r5, #4]
c0de32ba:	f000 f8de 	bl	c0de347a <OUTLINED_FUNCTION_11>
c0de32be:	b100      	cbz	r0, c0de32c2 <tEdwards_copy+0x1a>
c0de32c0:	bdb0      	pop	{r4, r5, r7, pc}
c0de32c2:	68a9      	ldr	r1, [r5, #8]
c0de32c4:	68a0      	ldr	r0, [r4, #8]
c0de32c6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de32ca:	f004 bba1 	b.w	c0de7a10 <cx_bn_copy>

c0de32ce <tEdwards_alloc_init>:
c0de32ce:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de32d0:	460e      	mov	r6, r1
c0de32d2:	6801      	ldr	r1, [r0, #0]
c0de32d4:	4607      	mov	r7, r0
c0de32d6:	4618      	mov	r0, r3
c0de32d8:	461c      	mov	r4, r3
c0de32da:	4615      	mov	r5, r2
c0de32dc:	f004 fb62 	bl	c0de79a4 <cx_bn_alloc>
c0de32e0:	b950      	cbnz	r0, c0de32f8 <tEdwards_alloc_init+0x2a>
c0de32e2:	6839      	ldr	r1, [r7, #0]
c0de32e4:	1d20      	adds	r0, r4, #4
c0de32e6:	f004 fb5d 	bl	c0de79a4 <cx_bn_alloc>
c0de32ea:	b928      	cbnz	r0, c0de32f8 <tEdwards_alloc_init+0x2a>
c0de32ec:	6839      	ldr	r1, [r7, #0]
c0de32ee:	f104 0008 	add.w	r0, r4, #8
c0de32f2:	f004 fb57 	bl	c0de79a4 <cx_bn_alloc>
c0de32f6:	b100      	cbz	r0, c0de32fa <tEdwards_alloc_init+0x2c>
c0de32f8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de32fa:	4638      	mov	r0, r7
c0de32fc:	4631      	mov	r1, r6
c0de32fe:	462a      	mov	r2, r5
c0de3300:	4623      	mov	r3, r4
c0de3302:	b001      	add	sp, #4
c0de3304:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3308:	f7ff bee0 	b.w	c0de30cc <tEdwards_init>

c0de330c <tEdwards_scalarMul_bn>:
c0de330c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3310:	4607      	mov	r7, r0
c0de3312:	2000      	movs	r0, #0
c0de3314:	4688      	mov	r8, r1
c0de3316:	4615      	mov	r5, r2
c0de3318:	2100      	movs	r1, #0
c0de331a:	469b      	mov	fp, r3
c0de331c:	9003      	str	r0, [sp, #12]
c0de331e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de3322:	6810      	ldr	r0, [r2, #0]
c0de3324:	aa03      	add	r2, sp, #12
c0de3326:	f004 fb9f 	bl	c0de7a68 <cx_bn_cmp_u32>
c0de332a:	bb38      	cbnz	r0, c0de337c <tEdwards_scalarMul_bn+0x70>
c0de332c:	9803      	ldr	r0, [sp, #12]
c0de332e:	b1d0      	cbz	r0, c0de3366 <tEdwards_scalarMul_bn+0x5a>
c0de3330:	6828      	ldr	r0, [r5, #0]
c0de3332:	a901      	add	r1, sp, #4
c0de3334:	f004 fb56 	bl	c0de79e4 <cx_bn_nbytes>
c0de3338:	bb00      	cbnz	r0, c0de337c <tEdwards_scalarMul_bn+0x70>
c0de333a:	2002      	movs	r0, #2
c0de333c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de3340:	f10d 040b 	add.w	r4, sp, #11
c0de3344:	6538      	str	r0, [r7, #80]	@ 0x50
c0de3346:	9801      	ldr	r0, [sp, #4]
c0de3348:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de334c:	2000      	movs	r0, #0
c0de334e:	2801      	cmp	r0, #1
c0de3350:	d00f      	beq.n	c0de3372 <tEdwards_scalarMul_bn+0x66>
c0de3352:	6828      	ldr	r0, [r5, #0]
c0de3354:	4631      	mov	r1, r6
c0de3356:	4622      	mov	r2, r4
c0de3358:	f004 fb92 	bl	c0de7a80 <cx_bn_tst_bit>
c0de335c:	b970      	cbnz	r0, c0de337c <tEdwards_scalarMul_bn+0x70>
c0de335e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de3362:	3e01      	subs	r6, #1
c0de3364:	e7f3      	b.n	c0de334e <tEdwards_scalarMul_bn+0x42>
c0de3366:	4638      	mov	r0, r7
c0de3368:	4659      	mov	r1, fp
c0de336a:	f7ff ff37 	bl	c0de31dc <tEdwards_SetNeutral>
c0de336e:	b928      	cbnz	r0, c0de337c <tEdwards_scalarMul_bn+0x70>
c0de3370:	e7de      	b.n	c0de3330 <tEdwards_scalarMul_bn+0x24>
c0de3372:	4640      	mov	r0, r8
c0de3374:	4659      	mov	r1, fp
c0de3376:	f7ff ff97 	bl	c0de32a8 <tEdwards_copy>
c0de337a:	b110      	cbz	r0, c0de3382 <tEdwards_scalarMul_bn+0x76>
c0de337c:	b004      	add	sp, #16
c0de337e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3382:	2001      	movs	r0, #1
c0de3384:	f10d 0a0b 	add.w	sl, sp, #11
c0de3388:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de338c:	2e00      	cmp	r6, #0
c0de338e:	d420      	bmi.n	c0de33d2 <tEdwards_scalarMul_bn+0xc6>
c0de3390:	4638      	mov	r0, r7
c0de3392:	4659      	mov	r1, fp
c0de3394:	465a      	mov	r2, fp
c0de3396:	f7ff fc4f 	bl	c0de2c38 <tEdwards_double>
c0de339a:	2800      	cmp	r0, #0
c0de339c:	d1ee      	bne.n	c0de337c <tEdwards_scalarMul_bn+0x70>
c0de339e:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de33a0:	4631      	mov	r1, r6
c0de33a2:	4652      	mov	r2, sl
c0de33a4:	0040      	lsls	r0, r0, #1
c0de33a6:	6538      	str	r0, [r7, #80]	@ 0x50
c0de33a8:	6828      	ldr	r0, [r5, #0]
c0de33aa:	f004 fb69 	bl	c0de7a80 <cx_bn_tst_bit>
c0de33ae:	2800      	cmp	r0, #0
c0de33b0:	d1e4      	bne.n	c0de337c <tEdwards_scalarMul_bn+0x70>
c0de33b2:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de33b6:	b150      	cbz	r0, c0de33ce <tEdwards_scalarMul_bn+0xc2>
c0de33b8:	4638      	mov	r0, r7
c0de33ba:	4659      	mov	r1, fp
c0de33bc:	4642      	mov	r2, r8
c0de33be:	465b      	mov	r3, fp
c0de33c0:	f7ff fca5 	bl	c0de2d0e <tEdwards_add>
c0de33c4:	2800      	cmp	r0, #0
c0de33c6:	d1d9      	bne.n	c0de337c <tEdwards_scalarMul_bn+0x70>
c0de33c8:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de33ca:	3001      	adds	r0, #1
c0de33cc:	6538      	str	r0, [r7, #80]	@ 0x50
c0de33ce:	3e01      	subs	r6, #1
c0de33d0:	e7dc      	b.n	c0de338c <tEdwards_scalarMul_bn+0x80>
c0de33d2:	2000      	movs	r0, #0
c0de33d4:	e7d2      	b.n	c0de337c <tEdwards_scalarMul_bn+0x70>
	...

c0de33d8 <tEdwards_scalarMul>:
c0de33d8:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de33da:	460c      	mov	r4, r1
c0de33dc:	6801      	ldr	r1, [r0, #0]
c0de33de:	4299      	cmp	r1, r3
c0de33e0:	bf3c      	itt	cc
c0de33e2:	480c      	ldrcc	r0, [pc, #48]	@ (c0de3414 <tEdwards_scalarMul+0x3c>)
c0de33e4:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de33e6:	4605      	mov	r5, r0
c0de33e8:	20ca      	movs	r0, #202	@ 0xca
c0de33ea:	6528      	str	r0, [r5, #80]	@ 0x50
c0de33ec:	a801      	add	r0, sp, #4
c0de33ee:	f004 fae3 	bl	c0de79b8 <cx_bn_alloc_init>
c0de33f2:	b100      	cbz	r0, c0de33f6 <tEdwards_scalarMul+0x1e>
c0de33f4:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de33f6:	20b3      	movs	r0, #179	@ 0xb3
c0de33f8:	9b06      	ldr	r3, [sp, #24]
c0de33fa:	4621      	mov	r1, r4
c0de33fc:	6528      	str	r0, [r5, #80]	@ 0x50
c0de33fe:	aa01      	add	r2, sp, #4
c0de3400:	4628      	mov	r0, r5
c0de3402:	f7ff ff83 	bl	c0de330c <tEdwards_scalarMul_bn>
c0de3406:	2800      	cmp	r0, #0
c0de3408:	d1f4      	bne.n	c0de33f4 <tEdwards_scalarMul+0x1c>
c0de340a:	a801      	add	r0, sp, #4
c0de340c:	f004 fae0 	bl	c0de79d0 <cx_bn_destroy>
c0de3410:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de3412:	bf00      	nop
c0de3414:	5a4b4e01 	.word	0x5a4b4e01

c0de3418 <OUTLINED_FUNCTION_0>:
c0de3418:	4633      	mov	r3, r6
c0de341a:	f004 bbaf 	b.w	c0de7b7c <cx_mont_mul>

c0de341e <OUTLINED_FUNCTION_1>:
c0de341e:	462b      	mov	r3, r5
c0de3420:	f004 bbac 	b.w	c0de7b7c <cx_mont_mul>

c0de3424 <OUTLINED_FUNCTION_2>:
c0de3424:	4633      	mov	r3, r6
c0de3426:	460a      	mov	r2, r1
c0de3428:	f004 bba8 	b.w	c0de7b7c <cx_mont_mul>

c0de342c <OUTLINED_FUNCTION_3>:
c0de342c:	462a      	mov	r2, r5
c0de342e:	4601      	mov	r1, r0
c0de3430:	f004 bb8c 	b.w	c0de7b4c <cx_mont_to_montgomery>

c0de3434 <OUTLINED_FUNCTION_4>:
c0de3434:	4620      	mov	r0, r4
c0de3436:	f850 1b34 	ldr.w	r1, [r0], #52
c0de343a:	f004 bab3 	b.w	c0de79a4 <cx_bn_alloc>

c0de343e <OUTLINED_FUNCTION_5>:
c0de343e:	4620      	mov	r0, r4
c0de3440:	f850 1b48 	ldr.w	r1, [r0], #72
c0de3444:	f004 baae 	b.w	c0de79a4 <cx_bn_alloc>

c0de3448 <OUTLINED_FUNCTION_6>:
c0de3448:	4620      	mov	r0, r4
c0de344a:	f850 1b40 	ldr.w	r1, [r0], #64
c0de344e:	f004 baa9 	b.w	c0de79a4 <cx_bn_alloc>

c0de3452 <OUTLINED_FUNCTION_7>:
c0de3452:	4620      	mov	r0, r4
c0de3454:	f850 1b38 	ldr.w	r1, [r0], #56
c0de3458:	f004 baa4 	b.w	c0de79a4 <cx_bn_alloc>

c0de345c <OUTLINED_FUNCTION_8>:
c0de345c:	4620      	mov	r0, r4
c0de345e:	f850 1b30 	ldr.w	r1, [r0], #48
c0de3462:	f004 ba9f 	b.w	c0de79a4 <cx_bn_alloc>

c0de3466 <OUTLINED_FUNCTION_9>:
c0de3466:	4620      	mov	r0, r4
c0de3468:	f850 1b44 	ldr.w	r1, [r0], #68
c0de346c:	f004 ba9a 	b.w	c0de79a4 <cx_bn_alloc>

c0de3470 <OUTLINED_FUNCTION_10>:
c0de3470:	4620      	mov	r0, r4
c0de3472:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de3476:	f004 ba95 	b.w	c0de79a4 <cx_bn_alloc>

c0de347a <OUTLINED_FUNCTION_11>:
c0de347a:	6860      	ldr	r0, [r4, #4]
c0de347c:	f004 bac8 	b.w	c0de7a10 <cx_bn_copy>

c0de3480 <grain_lfsr_advance>:
c0de3480:	b5b0      	push	{r4, r5, r7, lr}
c0de3482:	68c2      	ldr	r2, [r0, #12]
c0de3484:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de3488:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de348c:	ea4f 0234 	mov.w	r2, r4, rrx
c0de3490:	07e4      	lsls	r4, r4, #31
c0de3492:	60c5      	str	r5, [r0, #12]
c0de3494:	07dd      	lsls	r5, r3, #31
c0de3496:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de349a:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de349e:	6044      	str	r4, [r0, #4]
c0de34a0:	4c15      	ldr	r4, [pc, #84]	@ (c0de34f8 <grain_lfsr_advance+0x78>)
c0de34a2:	6005      	str	r5, [r0, #0]
c0de34a4:	4021      	ands	r1, r4
c0de34a6:	4c15      	ldr	r4, [pc, #84]	@ (c0de34fc <grain_lfsr_advance+0x7c>)
c0de34a8:	4023      	ands	r3, r4
c0de34aa:	4419      	add	r1, r3
c0de34ac:	0c0c      	lsrs	r4, r1, #16
c0de34ae:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de34b2:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de34b6:	4421      	add	r1, r4
c0de34b8:	0a0c      	lsrs	r4, r1, #8
c0de34ba:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de34be:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de34c2:	4061      	eors	r1, r4
c0de34c4:	090c      	lsrs	r4, r1, #4
c0de34c6:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de34ca:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de34ce:	4061      	eors	r1, r4
c0de34d0:	088c      	lsrs	r4, r1, #2
c0de34d2:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de34d6:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de34da:	4061      	eors	r1, r4
c0de34dc:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de34e0:	ea4f 0331 	mov.w	r3, r1, rrx
c0de34e4:	4059      	eors	r1, r3
c0de34e6:	f001 0101 	and.w	r1, r1, #1
c0de34ea:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de34ee:	6082      	str	r2, [r0, #8]
c0de34f0:	4608      	mov	r0, r1
c0de34f2:	2100      	movs	r1, #0
c0de34f4:	bdb0      	pop	{r4, r5, r7, pc}
c0de34f6:	bf00      	nop
c0de34f8:	00802001 	.word	0x00802001
c0de34fc:	40080040 	.word	0x40080040

c0de3500 <next64_graingen>:
c0de3500:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de3504:	460c      	mov	r4, r1
c0de3506:	4605      	mov	r5, r0
c0de3508:	f04f 0a00 	mov.w	sl, #0
c0de350c:	f04f 0800 	mov.w	r8, #0
c0de3510:	2700      	movs	r7, #0
c0de3512:	42a7      	cmp	r7, r4
c0de3514:	d215      	bcs.n	c0de3542 <next64_graingen+0x42>
c0de3516:	4628      	mov	r0, r5
c0de3518:	f7ff ffb2 	bl	c0de3480 <grain_lfsr_advance>
c0de351c:	4606      	mov	r6, r0
c0de351e:	4628      	mov	r0, r5
c0de3520:	f7ff ffae 	bl	c0de3480 <grain_lfsr_advance>
c0de3524:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de3528:	0781      	lsls	r1, r0, #30
c0de352a:	d5f2      	bpl.n	c0de3512 <next64_graingen+0x12>
c0de352c:	f000 0001 	and.w	r0, r0, #1
c0de3530:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de3534:	3701      	adds	r7, #1
c0de3536:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de353a:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de353e:	4682      	mov	sl, r0
c0de3540:	e7e7      	b.n	c0de3512 <next64_graingen+0x12>
c0de3542:	4650      	mov	r0, sl
c0de3544:	4641      	mov	r1, r8
c0de3546:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de354c <init_generator>:
c0de354c:	b5b0      	push	{r4, r5, r7, lr}
c0de354e:	4a09      	ldr	r2, [pc, #36]	@ (c0de3574 <init_generator+0x28>)
c0de3550:	4b09      	ldr	r3, [pc, #36]	@ (c0de3578 <init_generator+0x2c>)
c0de3552:	4604      	mov	r4, r0
c0de3554:	25a0      	movs	r5, #160	@ 0xa0
c0de3556:	2000      	movs	r0, #0
c0de3558:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de355c:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de3560:	e9c4 3200 	strd	r3, r2, [r4]
c0de3564:	b125      	cbz	r5, c0de3570 <init_generator+0x24>
c0de3566:	4620      	mov	r0, r4
c0de3568:	f7ff ff8a 	bl	c0de3480 <grain_lfsr_advance>
c0de356c:	3d01      	subs	r5, #1
c0de356e:	e7f9      	b.n	c0de3564 <init_generator+0x18>
c0de3570:	bdb0      	pop	{r4, r5, r7, pc}
c0de3572:	bf00      	nop
c0de3574:	fffcf010 	.word	0xfffcf010
c0de3578:	1801fc02 	.word	0x1801fc02

c0de357c <gen_integer>:
c0de357c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3580:	4f20      	ldr	r7, [pc, #128]	@ (c0de3604 <gen_integer+0x88>)
c0de3582:	4e22      	ldr	r6, [pc, #136]	@ (c0de360c <gen_integer+0x90>)
c0de3584:	4605      	mov	r5, r0
c0de3586:	460c      	mov	r4, r1
c0de3588:	2000      	movs	r0, #0
c0de358a:	46b8      	mov	r8, r7
c0de358c:	4f1e      	ldr	r7, [pc, #120]	@ (c0de3608 <gen_integer+0x8c>)
c0de358e:	447e      	add	r6, pc
c0de3590:	b9f8      	cbnz	r0, c0de35d2 <gen_integer+0x56>
c0de3592:	4628      	mov	r0, r5
c0de3594:	213e      	movs	r1, #62	@ 0x3e
c0de3596:	47b0      	blx	r6
c0de3598:	e9c4 0100 	strd	r0, r1, [r4]
c0de359c:	4628      	mov	r0, r5
c0de359e:	2140      	movs	r1, #64	@ 0x40
c0de35a0:	47b0      	blx	r6
c0de35a2:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de35a6:	4628      	mov	r0, r5
c0de35a8:	2140      	movs	r1, #64	@ 0x40
c0de35aa:	47b0      	blx	r6
c0de35ac:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de35b0:	4628      	mov	r0, r5
c0de35b2:	2140      	movs	r1, #64	@ 0x40
c0de35b4:	47b0      	blx	r6
c0de35b6:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de35ba:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de35be:	463a      	mov	r2, r7
c0de35c0:	1bc0      	subs	r0, r0, r7
c0de35c2:	4640      	mov	r0, r8
c0de35c4:	eb71 0008 	sbcs.w	r0, r1, r8
c0de35c8:	f04f 0000 	mov.w	r0, #0
c0de35cc:	bf38      	it	cc
c0de35ce:	2001      	movcc	r0, #1
c0de35d0:	e7de      	b.n	c0de3590 <gen_integer+0x14>
c0de35d2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de35d6:	4d0e      	ldr	r5, [pc, #56]	@ (c0de3610 <gen_integer+0x94>)
c0de35d8:	447d      	add	r5, pc
c0de35da:	47a8      	blx	r5
c0de35dc:	e9c4 0100 	strd	r0, r1, [r4]
c0de35e0:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de35e4:	47a8      	blx	r5
c0de35e6:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de35ea:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de35ee:	47a8      	blx	r5
c0de35f0:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de35f4:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de35f8:	47a8      	blx	r5
c0de35fa:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de35fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3602:	bf00      	nop
c0de3604:	305a4b4e 	.word	0x305a4b4e
c0de3608:	4f582122 	.word	0x4f582122
c0de360c:	ffffff6f 	.word	0xffffff6f
c0de3610:	00000039 	.word	0x00000039

c0de3614 <rev64>:
c0de3614:	ba0a      	rev	r2, r1
c0de3616:	ba01      	rev	r1, r0
c0de3618:	4610      	mov	r0, r2
c0de361a:	4770      	bx	lr

c0de361c <Poseidon_getNext_RC>:
c0de361c:	30c0      	adds	r0, #192	@ 0xc0
c0de361e:	f7ff bfad 	b.w	c0de357c <gen_integer>
	...

c0de3624 <Poseidon_alloc_init>:
c0de3624:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3628:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de362c:	4604      	mov	r4, r0
c0de362e:	30c0      	adds	r0, #192	@ 0xc0
c0de3630:	461e      	mov	r6, r3
c0de3632:	4617      	mov	r7, r2
c0de3634:	460d      	mov	r5, r1
c0de3636:	f7ff ff89 	bl	c0de354c <init_generator>
c0de363a:	492c      	ldr	r1, [pc, #176]	@ (c0de36ec <Poseidon_alloc_init+0xc8>)
c0de363c:	46e8      	mov	r8, sp
c0de363e:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de3642:	4640      	mov	r0, r8
c0de3644:	4479      	add	r1, pc
c0de3646:	f004 fc63 	bl	c0de7f10 <__aeabi_memcpy>
c0de364a:	2000      	movs	r0, #0
c0de364c:	7325      	strb	r5, [r4, #12]
c0de364e:	6166      	str	r6, [r4, #20]
c0de3650:	4621      	mov	r1, r4
c0de3652:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de3656:	1c78      	adds	r0, r7, #1
c0de3658:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de365c:	6830      	ldr	r0, [r6, #0]
c0de365e:	f004 f9c1 	bl	c0de79e4 <cx_bn_nbytes>
c0de3662:	b930      	cbnz	r0, c0de3672 <Poseidon_alloc_init+0x4e>
c0de3664:	4620      	mov	r0, r4
c0de3666:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de366a:	4631      	mov	r1, r6
c0de366c:	f004 f99a 	bl	c0de79a4 <cx_bn_alloc>
c0de3670:	b118      	cbz	r0, c0de367a <Poseidon_alloc_init+0x56>
c0de3672:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de3676:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de367a:	68a0      	ldr	r0, [r4, #8]
c0de367c:	2500      	movs	r5, #0
c0de367e:	4285      	cmp	r5, r0
c0de3680:	d230      	bcs.n	c0de36e4 <Poseidon_alloc_init+0xc0>
c0de3682:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de3686:	4631      	mov	r1, r6
c0de3688:	f107 0018 	add.w	r0, r7, #24
c0de368c:	f004 f98a 	bl	c0de79a4 <cx_bn_alloc>
c0de3690:	2800      	cmp	r0, #0
c0de3692:	d1ee      	bne.n	c0de3672 <Poseidon_alloc_init+0x4e>
c0de3694:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de3698:	4631      	mov	r1, r6
c0de369a:	f004 f983 	bl	c0de79a4 <cx_bn_alloc>
c0de369e:	2800      	cmp	r0, #0
c0de36a0:	d1e7      	bne.n	c0de3672 <Poseidon_alloc_init+0x4e>
c0de36a2:	2700      	movs	r7, #0
c0de36a4:	68a0      	ldr	r0, [r4, #8]
c0de36a6:	4287      	cmp	r7, r0
c0de36a8:	d21a      	bcs.n	c0de36e0 <Poseidon_alloc_init+0xbc>
c0de36aa:	fb05 7000 	mla	r0, r5, r0, r7
c0de36ae:	4631      	mov	r1, r6
c0de36b0:	4633      	mov	r3, r6
c0de36b2:	fb00 8206 	mla	r2, r0, r6, r8
c0de36b6:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de36ba:	3030      	adds	r0, #48	@ 0x30
c0de36bc:	f004 f97c 	bl	c0de79b8 <cx_bn_alloc_init>
c0de36c0:	2800      	cmp	r0, #0
c0de36c2:	d1d6      	bne.n	c0de3672 <Poseidon_alloc_init+0x4e>
c0de36c4:	68a0      	ldr	r0, [r4, #8]
c0de36c6:	6962      	ldr	r2, [r4, #20]
c0de36c8:	fb05 7000 	mla	r0, r5, r0, r7
c0de36cc:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de36d0:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de36d2:	4601      	mov	r1, r0
c0de36d4:	f004 fa3a 	bl	c0de7b4c <cx_mont_to_montgomery>
c0de36d8:	3701      	adds	r7, #1
c0de36da:	2800      	cmp	r0, #0
c0de36dc:	d0e2      	beq.n	c0de36a4 <Poseidon_alloc_init+0x80>
c0de36de:	e7c8      	b.n	c0de3672 <Poseidon_alloc_init+0x4e>
c0de36e0:	3501      	adds	r5, #1
c0de36e2:	e7cc      	b.n	c0de367e <Poseidon_alloc_init+0x5a>
c0de36e4:	2001      	movs	r0, #1
c0de36e6:	6120      	str	r0, [r4, #16]
c0de36e8:	2000      	movs	r0, #0
c0de36ea:	e7c2      	b.n	c0de3672 <Poseidon_alloc_init+0x4e>
c0de36ec:	000059ac 	.word	0x000059ac

c0de36f0 <Poseidon>:
c0de36f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de36f4:	b08c      	sub	sp, #48	@ 0x30
c0de36f6:	4606      	mov	r6, r0
c0de36f8:	6900      	ldr	r0, [r0, #16]
c0de36fa:	2801      	cmp	r0, #1
c0de36fc:	f040 80b4 	bne.w	c0de3868 <Poseidon+0x178>
c0de3700:	69b0      	ldr	r0, [r6, #24]
c0de3702:	461f      	mov	r7, r3
c0de3704:	4692      	mov	sl, r2
c0de3706:	f004 f98d 	bl	c0de7a24 <cx_bn_set_u32>
c0de370a:	2800      	cmp	r0, #0
c0de370c:	f040 80ad 	bne.w	c0de386a <Poseidon+0x17a>
c0de3710:	f106 000c 	add.w	r0, r6, #12
c0de3714:	f106 0818 	add.w	r8, r6, #24
c0de3718:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de371c:	9001      	str	r0, [sp, #4]
c0de371e:	2000      	movs	r0, #0
c0de3720:	2844      	cmp	r0, #68	@ 0x44
c0de3722:	f000 80ae 	beq.w	c0de3882 <Poseidon+0x192>
c0de3726:	6834      	ldr	r4, [r6, #0]
c0de3728:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de372c:	f04f 0a00 	mov.w	sl, #0
c0de3730:	68b0      	ldr	r0, [r6, #8]
c0de3732:	4582      	cmp	sl, r0
c0de3734:	d224      	bcs.n	c0de3780 <Poseidon+0x90>
c0de3736:	ad04      	add	r5, sp, #16
c0de3738:	4658      	mov	r0, fp
c0de373a:	4629      	mov	r1, r5
c0de373c:	f7ff ff1e 	bl	c0de357c <gen_integer>
c0de3740:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3744:	4629      	mov	r1, r5
c0de3746:	4622      	mov	r2, r4
c0de3748:	f004 f956 	bl	c0de79f8 <cx_bn_init>
c0de374c:	2800      	cmp	r0, #0
c0de374e:	f040 808c 	bne.w	c0de386a <Poseidon+0x17a>
c0de3752:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3756:	6972      	ldr	r2, [r6, #20]
c0de3758:	4601      	mov	r1, r0
c0de375a:	f004 f9f7 	bl	c0de7b4c <cx_mont_to_montgomery>
c0de375e:	2800      	cmp	r0, #0
c0de3760:	f040 8083 	bne.w	c0de386a <Poseidon+0x17a>
c0de3764:	6972      	ldr	r2, [r6, #20]
c0de3766:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de376a:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de376e:	6813      	ldr	r3, [r2, #0]
c0de3770:	4602      	mov	r2, r0
c0de3772:	f004 f991 	bl	c0de7a98 <cx_bn_mod_add>
c0de3776:	f10a 0a01 	add.w	sl, sl, #1
c0de377a:	2800      	cmp	r0, #0
c0de377c:	d0d8      	beq.n	c0de3730 <Poseidon+0x40>
c0de377e:	e074      	b.n	c0de386a <Poseidon+0x17a>
c0de3780:	9902      	ldr	r1, [sp, #8]
c0de3782:	2904      	cmp	r1, #4
c0de3784:	d301      	bcc.n	c0de378a <Poseidon+0x9a>
c0de3786:	2940      	cmp	r1, #64	@ 0x40
c0de3788:	d323      	bcc.n	c0de37d2 <Poseidon+0xe2>
c0de378a:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de378e:	2400      	movs	r4, #0
c0de3790:	4284      	cmp	r4, r0
c0de3792:	d22b      	bcs.n	c0de37ec <Poseidon+0xfc>
c0de3794:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de3798:	6973      	ldr	r3, [r6, #20]
c0de379a:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de379e:	460a      	mov	r2, r1
c0de37a0:	f004 f9ec 	bl	c0de7b7c <cx_mont_mul>
c0de37a4:	2800      	cmp	r0, #0
c0de37a6:	d160      	bne.n	c0de386a <Poseidon+0x17a>
c0de37a8:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de37ac:	6973      	ldr	r3, [r6, #20]
c0de37ae:	460a      	mov	r2, r1
c0de37b0:	f004 f9e4 	bl	c0de7b7c <cx_mont_mul>
c0de37b4:	2800      	cmp	r0, #0
c0de37b6:	d158      	bne.n	c0de386a <Poseidon+0x17a>
c0de37b8:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de37bc:	6973      	ldr	r3, [r6, #20]
c0de37be:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de37c2:	4601      	mov	r1, r0
c0de37c4:	f004 f9da 	bl	c0de7b7c <cx_mont_mul>
c0de37c8:	2800      	cmp	r0, #0
c0de37ca:	d14e      	bne.n	c0de386a <Poseidon+0x17a>
c0de37cc:	68b0      	ldr	r0, [r6, #8]
c0de37ce:	3401      	adds	r4, #1
c0de37d0:	e7de      	b.n	c0de3790 <Poseidon+0xa0>
c0de37d2:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de37d6:	9a01      	ldr	r2, [sp, #4]
c0de37d8:	2301      	movs	r3, #1
c0de37da:	9100      	str	r1, [sp, #0]
c0de37dc:	4601      	mov	r1, r0
c0de37de:	f004 f9d9 	bl	c0de7b94 <cx_mont_pow>
c0de37e2:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de37e6:	2800      	cmp	r0, #0
c0de37e8:	d13f      	bne.n	c0de386a <Poseidon+0x17a>
c0de37ea:	68b0      	ldr	r0, [r6, #8]
c0de37ec:	2500      	movs	r5, #0
c0de37ee:	4285      	cmp	r5, r0
c0de37f0:	d229      	bcs.n	c0de3846 <Poseidon+0x156>
c0de37f2:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de37f6:	2100      	movs	r1, #0
c0de37f8:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de37fc:	f004 f912 	bl	c0de7a24 <cx_bn_set_u32>
c0de3800:	bb98      	cbnz	r0, c0de386a <Poseidon+0x17a>
c0de3802:	9503      	str	r5, [sp, #12]
c0de3804:	2500      	movs	r5, #0
c0de3806:	68b0      	ldr	r0, [r6, #8]
c0de3808:	4285      	cmp	r5, r0
c0de380a:	d219      	bcs.n	c0de3840 <Poseidon+0x150>
c0de380c:	9903      	ldr	r1, [sp, #12]
c0de380e:	6973      	ldr	r3, [r6, #20]
c0de3810:	fb01 5000 	mla	r0, r1, r0, r5
c0de3814:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3818:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de381c:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de381e:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de3822:	f004 f9ab 	bl	c0de7b7c <cx_mont_mul>
c0de3826:	bb00      	cbnz	r0, c0de386a <Poseidon+0x17a>
c0de3828:	6971      	ldr	r1, [r6, #20]
c0de382a:	6820      	ldr	r0, [r4, #0]
c0de382c:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de3830:	680b      	ldr	r3, [r1, #0]
c0de3832:	4601      	mov	r1, r0
c0de3834:	f004 f930 	bl	c0de7a98 <cx_bn_mod_add>
c0de3838:	3501      	adds	r5, #1
c0de383a:	2800      	cmp	r0, #0
c0de383c:	d0e3      	beq.n	c0de3806 <Poseidon+0x116>
c0de383e:	e014      	b.n	c0de386a <Poseidon+0x17a>
c0de3840:	9d03      	ldr	r5, [sp, #12]
c0de3842:	3501      	adds	r5, #1
c0de3844:	e7d3      	b.n	c0de37ee <Poseidon+0xfe>
c0de3846:	2400      	movs	r4, #0
c0de3848:	4284      	cmp	r4, r0
c0de384a:	d20a      	bcs.n	c0de3862 <Poseidon+0x172>
c0de384c:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de3850:	6988      	ldr	r0, [r1, #24]
c0de3852:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de3856:	f004 f8db 	bl	c0de7a10 <cx_bn_copy>
c0de385a:	b930      	cbnz	r0, c0de386a <Poseidon+0x17a>
c0de385c:	68b0      	ldr	r0, [r6, #8]
c0de385e:	3401      	adds	r4, #1
c0de3860:	e7f2      	b.n	c0de3848 <Poseidon+0x158>
c0de3862:	9802      	ldr	r0, [sp, #8]
c0de3864:	3001      	adds	r0, #1
c0de3866:	e75b      	b.n	c0de3720 <Poseidon+0x30>
c0de3868:	4808      	ldr	r0, [pc, #32]	@ (c0de388c <Poseidon+0x19c>)
c0de386a:	b00c      	add	sp, #48	@ 0x30
c0de386c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3870:	f858 1b04 	ldr.w	r1, [r8], #4
c0de3874:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de3878:	f004 f8ca 	bl	c0de7a10 <cx_bn_copy>
c0de387c:	3f01      	subs	r7, #1
c0de387e:	2800      	cmp	r0, #0
c0de3880:	d1f3      	bne.n	c0de386a <Poseidon+0x17a>
c0de3882:	2f00      	cmp	r7, #0
c0de3884:	d1f4      	bne.n	c0de3870 <Poseidon+0x180>
c0de3886:	2000      	movs	r0, #0
c0de3888:	e7ef      	b.n	c0de386a <Poseidon+0x17a>
c0de388a:	bf00      	nop
c0de388c:	5a4b4e02 	.word	0x5a4b4e02

c0de3890 <RFC9591_taggedHash>:
c0de3890:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3892:	b0d9      	sub	sp, #356	@ 0x164
c0de3894:	460e      	mov	r6, r1
c0de3896:	4607      	mov	r7, r0
c0de3898:	a858      	add	r0, sp, #352	@ 0x160
c0de389a:	2140      	movs	r1, #64	@ 0x40
c0de389c:	461c      	mov	r4, r3
c0de389e:	4615      	mov	r5, r2
c0de38a0:	f004 f880 	bl	c0de79a4 <cx_bn_alloc>
c0de38a4:	bbd8      	cbnz	r0, c0de391e <RFC9591_taggedHash+0x8e>
c0de38a6:	491f      	ldr	r1, [pc, #124]	@ (c0de3924 <RFC9591_taggedHash+0x94>)
c0de38a8:	4668      	mov	r0, sp
c0de38aa:	221d      	movs	r2, #29
c0de38ac:	4479      	add	r1, pc
c0de38ae:	f004 fb2f 	bl	c0de7f10 <__aeabi_memcpy>
c0de38b2:	a808      	add	r0, sp, #32
c0de38b4:	2109      	movs	r1, #9
c0de38b6:	2240      	movs	r2, #64	@ 0x40
c0de38b8:	f003 fdfe 	bl	c0de74b8 <cx_hash_init_ex>
c0de38bc:	bb78      	cbnz	r0, c0de391e <RFC9591_taggedHash+0x8e>
c0de38be:	a808      	add	r0, sp, #32
c0de38c0:	4669      	mov	r1, sp
c0de38c2:	221d      	movs	r2, #29
c0de38c4:	f003 fdfd 	bl	c0de74c2 <cx_hash_update>
c0de38c8:	bb48      	cbnz	r0, c0de391e <RFC9591_taggedHash+0x8e>
c0de38ca:	a808      	add	r0, sp, #32
c0de38cc:	4639      	mov	r1, r7
c0de38ce:	4632      	mov	r2, r6
c0de38d0:	f003 fdf7 	bl	c0de74c2 <cx_hash_update>
c0de38d4:	bb18      	cbnz	r0, c0de391e <RFC9591_taggedHash+0x8e>
c0de38d6:	a808      	add	r0, sp, #32
c0de38d8:	4629      	mov	r1, r5
c0de38da:	4622      	mov	r2, r4
c0de38dc:	f003 fdf1 	bl	c0de74c2 <cx_hash_update>
c0de38e0:	b9e8      	cbnz	r0, c0de391e <RFC9591_taggedHash+0x8e>
c0de38e2:	a808      	add	r0, sp, #32
c0de38e4:	ae48      	add	r6, sp, #288	@ 0x120
c0de38e6:	4631      	mov	r1, r6
c0de38e8:	f003 fde1 	bl	c0de74ae <cx_hash_final>
c0de38ec:	b9b8      	cbnz	r0, c0de391e <RFC9591_taggedHash+0x8e>
c0de38ee:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de38f2:	2000      	movs	r0, #0
c0de38f4:	213f      	movs	r1, #63	@ 0x3f
c0de38f6:	2820      	cmp	r0, #32
c0de38f8:	d002      	beq.n	c0de3900 <RFC9591_taggedHash+0x70>
c0de38fa:	f000 f8dd 	bl	c0de3ab8 <OUTLINED_FUNCTION_3>
c0de38fe:	e7fa      	b.n	c0de38f6 <RFC9591_taggedHash+0x66>
c0de3900:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de3902:	a948      	add	r1, sp, #288	@ 0x120
c0de3904:	2240      	movs	r2, #64	@ 0x40
c0de3906:	f004 f877 	bl	c0de79f8 <cx_bn_init>
c0de390a:	b940      	cbnz	r0, c0de391e <RFC9591_taggedHash+0x8e>
c0de390c:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de390e:	4628      	mov	r0, r5
c0de3910:	4622      	mov	r2, r4
c0de3912:	f004 f8e5 	bl	c0de7ae0 <cx_bn_reduce>
c0de3916:	b910      	cbnz	r0, c0de391e <RFC9591_taggedHash+0x8e>
c0de3918:	a858      	add	r0, sp, #352	@ 0x160
c0de391a:	f004 f859 	bl	c0de79d0 <cx_bn_destroy>
c0de391e:	b059      	add	sp, #356	@ 0x164
c0de3920:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3922:	bf00      	nop
c0de3924:	00005bc4 	.word	0x00005bc4

c0de3928 <Babyfrost_H1>:
c0de3928:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de392a:	4605      	mov	r5, r0
c0de392c:	206f      	movs	r0, #111	@ 0x6f
c0de392e:	f000 f8b7 	bl	c0de3aa0 <OUTLINED_FUNCTION_1>
c0de3932:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3936:	f000 f8ba 	bl	c0de3aae <OUTLINED_FUNCTION_2>
c0de393a:	a803      	add	r0, sp, #12
c0de393c:	f7ff ffa8 	bl	c0de3890 <RFC9591_taggedHash>
c0de3940:	b004      	add	sp, #16
c0de3942:	bdb0      	pop	{r4, r5, r7, pc}

c0de3944 <Babyfrost_H3>:
c0de3944:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3946:	4605      	mov	r5, r0
c0de3948:	2065      	movs	r0, #101	@ 0x65
c0de394a:	460c      	mov	r4, r1
c0de394c:	e9cd 2300 	strd	r2, r3, [sp]
c0de3950:	2105      	movs	r1, #5
c0de3952:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3956:	4804      	ldr	r0, [pc, #16]	@ (c0de3968 <Babyfrost_H3+0x24>)
c0de3958:	462a      	mov	r2, r5
c0de395a:	4623      	mov	r3, r4
c0de395c:	9002      	str	r0, [sp, #8]
c0de395e:	a802      	add	r0, sp, #8
c0de3960:	f7ff ff96 	bl	c0de3890 <RFC9591_taggedHash>
c0de3964:	b004      	add	sp, #16
c0de3966:	bdb0      	pop	{r4, r5, r7, pc}
c0de3968:	636e6f6e 	.word	0x636e6f6e

c0de396c <Babyfrost_H4>:
c0de396c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de396e:	4605      	mov	r5, r0
c0de3970:	2067      	movs	r0, #103	@ 0x67
c0de3972:	f000 f895 	bl	c0de3aa0 <OUTLINED_FUNCTION_1>
c0de3976:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de397a:	f000 f898 	bl	c0de3aae <OUTLINED_FUNCTION_2>
c0de397e:	a803      	add	r0, sp, #12
c0de3980:	f7ff ff86 	bl	c0de3890 <RFC9591_taggedHash>
c0de3984:	b004      	add	sp, #16
c0de3986:	bdb0      	pop	{r4, r5, r7, pc}

c0de3988 <Babyfrost_H5>:
c0de3988:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de398a:	4605      	mov	r5, r0
c0de398c:	206d      	movs	r0, #109	@ 0x6d
c0de398e:	f000 f887 	bl	c0de3aa0 <OUTLINED_FUNCTION_1>
c0de3992:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3996:	f000 f88a 	bl	c0de3aae <OUTLINED_FUNCTION_2>
c0de399a:	a803      	add	r0, sp, #12
c0de399c:	f7ff ff78 	bl	c0de3890 <RFC9591_taggedHash>
c0de39a0:	b004      	add	sp, #16
c0de39a2:	bdb0      	pop	{r4, r5, r7, pc}

c0de39a4 <zkn_frost_hash_init>:
c0de39a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de39a6:	461d      	mov	r5, r3
c0de39a8:	4604      	mov	r4, r0
c0de39aa:	f003 fd85 	bl	c0de74b8 <cx_hash_init_ex>
c0de39ae:	b938      	cbnz	r0, c0de39c0 <zkn_frost_hash_init+0x1c>
c0de39b0:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de39b4:	9e08      	ldr	r6, [sp, #32]
c0de39b6:	4620      	mov	r0, r4
c0de39b8:	4629      	mov	r1, r5
c0de39ba:	f003 fd82 	bl	c0de74c2 <cx_hash_update>
c0de39be:	b100      	cbz	r0, c0de39c2 <zkn_frost_hash_init+0x1e>
c0de39c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de39c2:	4620      	mov	r0, r4
c0de39c4:	4639      	mov	r1, r7
c0de39c6:	4632      	mov	r2, r6
c0de39c8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de39cc:	f003 bd79 	b.w	c0de74c2 <cx_hash_update>

c0de39d0 <zkn_frost_H1_init>:
c0de39d0:	b570      	push	{r4, r5, r6, lr}
c0de39d2:	b08c      	sub	sp, #48	@ 0x30
c0de39d4:	4604      	mov	r4, r0
c0de39d6:	206f      	movs	r0, #111	@ 0x6f
c0de39d8:	221d      	movs	r2, #29
c0de39da:	261d      	movs	r6, #29
c0de39dc:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de39e0:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de39e4:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de39e8:	ad03      	add	r5, sp, #12
c0de39ea:	4905      	ldr	r1, [pc, #20]	@ (c0de3a00 <zkn_frost_H1_init+0x30>)
c0de39ec:	4628      	mov	r0, r5
c0de39ee:	4479      	add	r1, pc
c0de39f0:	f004 fa8e 	bl	c0de7f10 <__aeabi_memcpy>
c0de39f4:	a90b      	add	r1, sp, #44	@ 0x2c
c0de39f6:	f000 f849 	bl	c0de3a8c <OUTLINED_FUNCTION_0>
c0de39fa:	b00c      	add	sp, #48	@ 0x30
c0de39fc:	bd70      	pop	{r4, r5, r6, pc}
c0de39fe:	bf00      	nop
c0de3a00:	00005a82 	.word	0x00005a82

c0de3a04 <zkn_frost_H5_init>:
c0de3a04:	b570      	push	{r4, r5, r6, lr}
c0de3a06:	b08c      	sub	sp, #48	@ 0x30
c0de3a08:	4604      	mov	r4, r0
c0de3a0a:	206d      	movs	r0, #109	@ 0x6d
c0de3a0c:	221d      	movs	r2, #29
c0de3a0e:	261d      	movs	r6, #29
c0de3a10:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3a14:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3a18:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3a1c:	ad03      	add	r5, sp, #12
c0de3a1e:	4905      	ldr	r1, [pc, #20]	@ (c0de3a34 <zkn_frost_H5_init+0x30>)
c0de3a20:	4628      	mov	r0, r5
c0de3a22:	4479      	add	r1, pc
c0de3a24:	f004 fa74 	bl	c0de7f10 <__aeabi_memcpy>
c0de3a28:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3a2a:	f000 f82f 	bl	c0de3a8c <OUTLINED_FUNCTION_0>
c0de3a2e:	b00c      	add	sp, #48	@ 0x30
c0de3a30:	bd70      	pop	{r4, r5, r6, pc}
c0de3a32:	bf00      	nop
c0de3a34:	00005a4e 	.word	0x00005a4e

c0de3a38 <zkn_frost_hash_update>:
c0de3a38:	f003 bd43 	b.w	c0de74c2 <cx_hash_update>

c0de3a3c <zkn_frost_hash_final>:
c0de3a3c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3a3e:	b091      	sub	sp, #68	@ 0x44
c0de3a40:	460c      	mov	r4, r1
c0de3a42:	4607      	mov	r7, r0
c0de3a44:	a810      	add	r0, sp, #64	@ 0x40
c0de3a46:	2140      	movs	r1, #64	@ 0x40
c0de3a48:	4615      	mov	r5, r2
c0de3a4a:	f003 ffab 	bl	c0de79a4 <cx_bn_alloc>
c0de3a4e:	b9d8      	cbnz	r0, c0de3a88 <zkn_frost_hash_final+0x4c>
c0de3a50:	466e      	mov	r6, sp
c0de3a52:	4638      	mov	r0, r7
c0de3a54:	4631      	mov	r1, r6
c0de3a56:	f003 fd2a 	bl	c0de74ae <cx_hash_final>
c0de3a5a:	b9a8      	cbnz	r0, c0de3a88 <zkn_frost_hash_final+0x4c>
c0de3a5c:	2000      	movs	r0, #0
c0de3a5e:	213f      	movs	r1, #63	@ 0x3f
c0de3a60:	2820      	cmp	r0, #32
c0de3a62:	d002      	beq.n	c0de3a6a <zkn_frost_hash_final+0x2e>
c0de3a64:	f000 f828 	bl	c0de3ab8 <OUTLINED_FUNCTION_3>
c0de3a68:	e7fa      	b.n	c0de3a60 <zkn_frost_hash_final+0x24>
c0de3a6a:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de3a6c:	4669      	mov	r1, sp
c0de3a6e:	2240      	movs	r2, #64	@ 0x40
c0de3a70:	f003 ffc2 	bl	c0de79f8 <cx_bn_init>
c0de3a74:	b940      	cbnz	r0, c0de3a88 <zkn_frost_hash_final+0x4c>
c0de3a76:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3a78:	4628      	mov	r0, r5
c0de3a7a:	4622      	mov	r2, r4
c0de3a7c:	f004 f830 	bl	c0de7ae0 <cx_bn_reduce>
c0de3a80:	b910      	cbnz	r0, c0de3a88 <zkn_frost_hash_final+0x4c>
c0de3a82:	a810      	add	r0, sp, #64	@ 0x40
c0de3a84:	f003 ffa4 	bl	c0de79d0 <cx_bn_destroy>
c0de3a88:	b011      	add	sp, #68	@ 0x44
c0de3a8a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3a8c <OUTLINED_FUNCTION_0>:
c0de3a8c:	2003      	movs	r0, #3
c0de3a8e:	2240      	movs	r2, #64	@ 0x40
c0de3a90:	462b      	mov	r3, r5
c0de3a92:	e9cd 6100 	strd	r6, r1, [sp]
c0de3a96:	9002      	str	r0, [sp, #8]
c0de3a98:	4620      	mov	r0, r4
c0de3a9a:	2109      	movs	r1, #9
c0de3a9c:	f7ff bf82 	b.w	c0de39a4 <zkn_frost_hash_init>

c0de3aa0 <OUTLINED_FUNCTION_1>:
c0de3aa0:	460c      	mov	r4, r1
c0de3aa2:	e9cd 2300 	strd	r2, r3, [sp]
c0de3aa6:	2103      	movs	r1, #3
c0de3aa8:	f88d 000e 	strb.w	r0, [sp, #14]
c0de3aac:	4770      	bx	lr

c0de3aae <OUTLINED_FUNCTION_2>:
c0de3aae:	462a      	mov	r2, r5
c0de3ab0:	4623      	mov	r3, r4
c0de3ab2:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de3ab6:	4770      	bx	lr

c0de3ab8 <OUTLINED_FUNCTION_3>:
c0de3ab8:	5c32      	ldrb	r2, [r6, r0]
c0de3aba:	5c73      	ldrb	r3, [r6, r1]
c0de3abc:	5433      	strb	r3, [r6, r0]
c0de3abe:	5472      	strb	r2, [r6, r1]
c0de3ac0:	3901      	subs	r1, #1
c0de3ac2:	3001      	adds	r0, #1
c0de3ac4:	4770      	bx	lr

c0de3ac6 <os_io_handle_default_apdu>:
c0de3ac6:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3ac8:	b09d      	sub	sp, #116	@ 0x74
c0de3aca:	4615      	mov	r5, r2
c0de3acc:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de3ace:	b3c8      	cbz	r0, c0de3b44 <os_io_handle_default_apdu+0x7e>
c0de3ad0:	b3c1      	cbz	r1, c0de3b44 <os_io_handle_default_apdu+0x7e>
c0de3ad2:	b3bd      	cbz	r5, c0de3b44 <os_io_handle_default_apdu+0x7e>
c0de3ad4:	461c      	mov	r4, r3
c0de3ad6:	b3ab      	cbz	r3, c0de3b44 <os_io_handle_default_apdu+0x7e>
c0de3ad8:	b10a      	cbz	r2, c0de3ade <os_io_handle_default_apdu+0x18>
c0de3ada:	2100      	movs	r1, #0
c0de3adc:	7011      	strb	r1, [r2, #0]
c0de3ade:	7801      	ldrb	r1, [r0, #0]
c0de3ae0:	29b0      	cmp	r1, #176	@ 0xb0
c0de3ae2:	d131      	bne.n	c0de3b48 <os_io_handle_default_apdu+0x82>
c0de3ae4:	7841      	ldrb	r1, [r0, #1]
c0de3ae6:	29a7      	cmp	r1, #167	@ 0xa7
c0de3ae8:	d031      	beq.n	c0de3b4e <os_io_handle_default_apdu+0x88>
c0de3aea:	2906      	cmp	r1, #6
c0de3aec:	d036      	beq.n	c0de3b5c <os_io_handle_default_apdu+0x96>
c0de3aee:	2901      	cmp	r1, #1
c0de3af0:	d131      	bne.n	c0de3b56 <os_io_handle_default_apdu+0x90>
c0de3af2:	7881      	ldrb	r1, [r0, #2]
c0de3af4:	bb79      	cbnz	r1, c0de3b56 <os_io_handle_default_apdu+0x90>
c0de3af6:	78c0      	ldrb	r0, [r0, #3]
c0de3af8:	bb68      	cbnz	r0, c0de3b56 <os_io_handle_default_apdu+0x90>
c0de3afa:	6820      	ldr	r0, [r4, #0]
c0de3afc:	2100      	movs	r1, #0
c0de3afe:	6021      	str	r1, [r4, #0]
c0de3b00:	2803      	cmp	r0, #3
c0de3b02:	d321      	bcc.n	c0de3b48 <os_io_handle_default_apdu+0x82>
c0de3b04:	2601      	movs	r6, #1
c0de3b06:	1ec7      	subs	r7, r0, #3
c0de3b08:	6026      	str	r6, [r4, #0]
c0de3b0a:	702e      	strb	r6, [r5, #0]
c0de3b0c:	6820      	ldr	r0, [r4, #0]
c0de3b0e:	1a3a      	subs	r2, r7, r0
c0de3b10:	4428      	add	r0, r5
c0de3b12:	1c41      	adds	r1, r0, #1
c0de3b14:	2001      	movs	r0, #1
c0de3b16:	f004 f8b3 	bl	c0de7c80 <os_registry_get_current_app_tag>
c0de3b1a:	f000 f83f 	bl	c0de3b9c <OUTLINED_FUNCTION_0>
c0de3b1e:	6020      	str	r0, [r4, #0]
c0de3b20:	1a3a      	subs	r2, r7, r0
c0de3b22:	4428      	add	r0, r5
c0de3b24:	1c41      	adds	r1, r0, #1
c0de3b26:	2002      	movs	r0, #2
c0de3b28:	f004 f8aa 	bl	c0de7c80 <os_registry_get_current_app_tag>
c0de3b2c:	f000 f836 	bl	c0de3b9c <OUTLINED_FUNCTION_0>
c0de3b30:	1c41      	adds	r1, r0, #1
c0de3b32:	6021      	str	r1, [r4, #0]
c0de3b34:	542e      	strb	r6, [r5, r0]
c0de3b36:	f004 f89b 	bl	c0de7c70 <os_flags>
c0de3b3a:	6821      	ldr	r1, [r4, #0]
c0de3b3c:	1c4a      	adds	r2, r1, #1
c0de3b3e:	6022      	str	r2, [r4, #0]
c0de3b40:	5468      	strb	r0, [r5, r1]
c0de3b42:	e028      	b.n	c0de3b96 <os_io_handle_default_apdu+0xd0>
c0de3b44:	7814      	ldrb	r4, [r2, #0]
c0de3b46:	e01e      	b.n	c0de3b86 <os_io_handle_default_apdu+0xc0>
c0de3b48:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de3b4c:	e01b      	b.n	c0de3b86 <os_io_handle_default_apdu+0xc0>
c0de3b4e:	7881      	ldrb	r1, [r0, #2]
c0de3b50:	b909      	cbnz	r1, c0de3b56 <os_io_handle_default_apdu+0x90>
c0de3b52:	78c0      	ldrb	r0, [r0, #3]
c0de3b54:	b1d0      	cbz	r0, c0de3b8c <os_io_handle_default_apdu+0xc6>
c0de3b56:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de3b5a:	e014      	b.n	c0de3b86 <os_io_handle_default_apdu+0xc0>
c0de3b5c:	2100      	movs	r1, #0
c0de3b5e:	6021      	str	r1, [r4, #0]
c0de3b60:	7883      	ldrb	r3, [r0, #2]
c0de3b62:	7902      	ldrb	r2, [r0, #4]
c0de3b64:	ad02      	add	r5, sp, #8
c0de3b66:	e9cd 1500 	strd	r1, r5, [sp]
c0de3b6a:	1d41      	adds	r1, r0, #5
c0de3b6c:	4618      	mov	r0, r3
c0de3b6e:	2300      	movs	r3, #0
c0de3b70:	f004 f84a 	bl	c0de7c08 <os_pki_load_certificate>
c0de3b74:	4604      	mov	r4, r0
c0de3b76:	4628      	mov	r0, r5
c0de3b78:	216c      	movs	r1, #108	@ 0x6c
c0de3b7a:	f004 f9e1 	bl	c0de7f40 <explicit_bzero>
c0de3b7e:	2c00      	cmp	r4, #0
c0de3b80:	bf08      	it	eq
c0de3b82:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de3b86:	4620      	mov	r0, r4
c0de3b88:	b01d      	add	sp, #116	@ 0x74
c0de3b8a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3b8c:	2000      	movs	r0, #0
c0de3b8e:	6020      	str	r0, [r4, #0]
c0de3b90:	b10a      	cbz	r2, c0de3b96 <os_io_handle_default_apdu+0xd0>
c0de3b92:	2001      	movs	r0, #1
c0de3b94:	7010      	strb	r0, [r2, #0]
c0de3b96:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de3b9a:	e7f4      	b.n	c0de3b86 <os_io_handle_default_apdu+0xc0>

c0de3b9c <OUTLINED_FUNCTION_0>:
c0de3b9c:	6821      	ldr	r1, [r4, #0]
c0de3b9e:	1c4a      	adds	r2, r1, #1
c0de3ba0:	6022      	str	r2, [r4, #0]
c0de3ba2:	5468      	strb	r0, [r5, r1]
c0de3ba4:	6821      	ldr	r1, [r4, #0]
c0de3ba6:	4408      	add	r0, r1
c0de3ba8:	4770      	bx	lr

c0de3baa <io_process_itc_ux_event>:
c0de3baa:	b580      	push	{r7, lr}
c0de3bac:	78c0      	ldrb	r0, [r0, #3]
c0de3bae:	2820      	cmp	r0, #32
c0de3bb0:	d107      	bne.n	c0de3bc2 <io_process_itc_ux_event+0x18>
c0de3bb2:	2001      	movs	r0, #1
c0de3bb4:	f003 fca5 	bl	c0de7502 <nbgl_objAllowDrawing>
c0de3bb8:	f003 fcb2 	bl	c0de7520 <nbgl_screenRedraw>
c0de3bbc:	f003 fc97 	bl	c0de74ee <nbgl_refresh>
c0de3bc0:	2100      	movs	r1, #0
c0de3bc2:	4608      	mov	r0, r1
c0de3bc4:	bd80      	pop	{r7, pc}
	...

c0de3bc8 <io_legacy_apdu_tx>:
c0de3bc8:	b5b0      	push	{r4, r5, r7, lr}
c0de3bca:	460a      	mov	r2, r1
c0de3bcc:	4601      	mov	r1, r0
c0de3bce:	4806      	ldr	r0, [pc, #24]	@ (c0de3be8 <io_legacy_apdu_tx+0x20>)
c0de3bd0:	2300      	movs	r3, #0
c0de3bd2:	2500      	movs	r5, #0
c0de3bd4:	eb09 0400 	add.w	r4, r9, r0
c0de3bd8:	7860      	ldrb	r0, [r4, #1]
c0de3bda:	f004 f87b 	bl	c0de7cd4 <os_io_tx_cmd>
c0de3bde:	4903      	ldr	r1, [pc, #12]	@ (c0de3bec <io_legacy_apdu_tx+0x24>)
c0de3be0:	7065      	strb	r5, [r4, #1]
c0de3be2:	4449      	add	r1, r9
c0de3be4:	718d      	strb	r5, [r1, #6]
c0de3be6:	bdb0      	pop	{r4, r5, r7, pc}
c0de3be8:	000008be 	.word	0x000008be
c0de3bec:	000008b6 	.word	0x000008b6

c0de3bf0 <io_legacy_apdu_rx>:
c0de3bf0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3bf2:	4e66      	ldr	r6, [pc, #408]	@ (c0de3d8c <io_legacy_apdu_rx+0x19c>)
c0de3bf4:	2100      	movs	r1, #0
c0de3bf6:	4605      	mov	r5, r0
c0de3bf8:	2200      	movs	r2, #0
c0de3bfa:	2301      	movs	r3, #1
c0de3bfc:	f88d 100b 	strb.w	r1, [sp, #11]
c0de3c00:	f240 1111 	movw	r1, #273	@ 0x111
c0de3c04:	eb09 0006 	add.w	r0, r9, r6
c0de3c08:	f004 f870 	bl	c0de7cec <os_io_rx_evt>
c0de3c0c:	4604      	mov	r4, r0
c0de3c0e:	2801      	cmp	r0, #1
c0de3c10:	f2c0 80ab 	blt.w	c0de3d6a <io_legacy_apdu_rx+0x17a>
c0de3c14:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3c18:	f1a0 0110 	sub.w	r1, r0, #16
c0de3c1c:	2916      	cmp	r1, #22
c0de3c1e:	d805      	bhi.n	c0de3c2c <io_legacy_apdu_rx+0x3c>
c0de3c20:	2201      	movs	r2, #1
c0de3c22:	fa02 f101 	lsl.w	r1, r2, r1
c0de3c26:	4a5a      	ldr	r2, [pc, #360]	@ (c0de3d90 <io_legacy_apdu_rx+0x1a0>)
c0de3c28:	4211      	tst	r1, r2
c0de3c2a:	d106      	bne.n	c0de3c3a <io_legacy_apdu_rx+0x4a>
c0de3c2c:	1e41      	subs	r1, r0, #1
c0de3c2e:	2902      	cmp	r1, #2
c0de3c30:	d367      	bcc.n	c0de3d02 <io_legacy_apdu_rx+0x112>
c0de3c32:	2830      	cmp	r0, #48	@ 0x30
c0de3c34:	bf18      	it	ne
c0de3c36:	2840      	cmpne	r0, #64	@ 0x40
c0de3c38:	d177      	bne.n	c0de3d2a <io_legacy_apdu_rx+0x13a>
c0de3c3a:	4f56      	ldr	r7, [pc, #344]	@ (c0de3d94 <io_legacy_apdu_rx+0x1a4>)
c0de3c3c:	eb09 0107 	add.w	r1, r9, r7
c0de3c40:	7048      	strb	r0, [r1, #1]
c0de3c42:	f003 fff1 	bl	c0de7c28 <os_perso_is_pin_set>
c0de3c46:	28aa      	cmp	r0, #170	@ 0xaa
c0de3c48:	d103      	bne.n	c0de3c52 <io_legacy_apdu_rx+0x62>
c0de3c4a:	f003 fff6 	bl	c0de7c3a <os_global_pin_is_validated>
c0de3c4e:	28aa      	cmp	r0, #170	@ 0xaa
c0de3c50:	d145      	bne.n	c0de3cde <io_legacy_apdu_rx+0xee>
c0de3c52:	eb09 0006 	add.w	r0, r9, r6
c0de3c56:	7840      	ldrb	r0, [r0, #1]
c0de3c58:	28b0      	cmp	r0, #176	@ 0xb0
c0de3c5a:	d12c      	bne.n	c0de3cb6 <io_legacy_apdu_rx+0xc6>
c0de3c5c:	f240 1011 	movw	r0, #273	@ 0x111
c0de3c60:	1e61      	subs	r1, r4, #1
c0de3c62:	9001      	str	r0, [sp, #4]
c0de3c64:	f10d 000b 	add.w	r0, sp, #11
c0de3c68:	9000      	str	r0, [sp, #0]
c0de3c6a:	484b      	ldr	r0, [pc, #300]	@ (c0de3d98 <io_legacy_apdu_rx+0x1a8>)
c0de3c6c:	ab01      	add	r3, sp, #4
c0de3c6e:	eb09 0500 	add.w	r5, r9, r0
c0de3c72:	eb09 0006 	add.w	r0, r9, r6
c0de3c76:	3001      	adds	r0, #1
c0de3c78:	462a      	mov	r2, r5
c0de3c7a:	f7ff ff24 	bl	c0de3ac6 <os_io_handle_default_apdu>
c0de3c7e:	2400      	movs	r4, #0
c0de3c80:	9901      	ldr	r1, [sp, #4]
c0de3c82:	eb09 0607 	add.w	r6, r9, r7
c0de3c86:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de3c8a:	bf18      	it	ne
c0de3c8c:	4621      	movne	r1, r4
c0de3c8e:	0a02      	lsrs	r2, r0, #8
c0de3c90:	2300      	movs	r3, #0
c0de3c92:	546a      	strb	r2, [r5, r1]
c0de3c94:	186a      	adds	r2, r5, r1
c0de3c96:	7050      	strb	r0, [r2, #1]
c0de3c98:	1c88      	adds	r0, r1, #2
c0de3c9a:	4629      	mov	r1, r5
c0de3c9c:	9001      	str	r0, [sp, #4]
c0de3c9e:	b282      	uxth	r2, r0
c0de3ca0:	7870      	ldrb	r0, [r6, #1]
c0de3ca2:	f004 f817 	bl	c0de7cd4 <os_io_tx_cmd>
c0de3ca6:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de3caa:	7074      	strb	r4, [r6, #1]
c0de3cac:	2901      	cmp	r1, #1
c0de3cae:	d06a      	beq.n	c0de3d86 <io_legacy_apdu_rx+0x196>
c0de3cb0:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3cb4:	e059      	b.n	c0de3d6a <io_legacy_apdu_rx+0x17a>
c0de3cb6:	eb09 0007 	add.w	r0, r9, r7
c0de3cba:	7840      	ldrb	r0, [r0, #1]
c0de3cbc:	2810      	cmp	r0, #16
c0de3cbe:	d043      	beq.n	c0de3d48 <io_legacy_apdu_rx+0x158>
c0de3cc0:	2840      	cmp	r0, #64	@ 0x40
c0de3cc2:	d043      	beq.n	c0de3d4c <io_legacy_apdu_rx+0x15c>
c0de3cc4:	2821      	cmp	r0, #33	@ 0x21
c0de3cc6:	d043      	beq.n	c0de3d50 <io_legacy_apdu_rx+0x160>
c0de3cc8:	2822      	cmp	r0, #34	@ 0x22
c0de3cca:	d037      	beq.n	c0de3d3c <io_legacy_apdu_rx+0x14c>
c0de3ccc:	2823      	cmp	r0, #35	@ 0x23
c0de3cce:	d037      	beq.n	c0de3d40 <io_legacy_apdu_rx+0x150>
c0de3cd0:	2830      	cmp	r0, #48	@ 0x30
c0de3cd2:	d037      	beq.n	c0de3d44 <io_legacy_apdu_rx+0x154>
c0de3cd4:	2820      	cmp	r0, #32
c0de3cd6:	bf14      	ite	ne
c0de3cd8:	2000      	movne	r0, #0
c0de3cda:	2001      	moveq	r0, #1
c0de3cdc:	e039      	b.n	c0de3d52 <io_legacy_apdu_rx+0x162>
c0de3cde:	482e      	ldr	r0, [pc, #184]	@ (c0de3d98 <io_legacy_apdu_rx+0x1a8>)
c0de3ce0:	2155      	movs	r1, #85	@ 0x55
c0de3ce2:	2202      	movs	r2, #2
c0de3ce4:	2300      	movs	r3, #0
c0de3ce6:	f809 1000 	strb.w	r1, [r9, r0]
c0de3cea:	eb09 0100 	add.w	r1, r9, r0
c0de3cee:	2015      	movs	r0, #21
c0de3cf0:	7048      	strb	r0, [r1, #1]
c0de3cf2:	eb09 0007 	add.w	r0, r9, r7
c0de3cf6:	7840      	ldrb	r0, [r0, #1]
c0de3cf8:	b003      	add	sp, #12
c0de3cfa:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3cfe:	f003 bfe9 	b.w	c0de7cd4 <os_io_tx_cmd>
c0de3d02:	4f27      	ldr	r7, [pc, #156]	@ (c0de3da0 <io_legacy_apdu_rx+0x1b0>)
c0de3d04:	444e      	add	r6, r9
c0de3d06:	3c01      	subs	r4, #1
c0de3d08:	1c71      	adds	r1, r6, #1
c0de3d0a:	4622      	mov	r2, r4
c0de3d0c:	eb09 0007 	add.w	r0, r9, r7
c0de3d10:	f004 f8fe 	bl	c0de7f10 <__aeabi_memcpy>
c0de3d14:	7870      	ldrb	r0, [r6, #1]
c0de3d16:	281a      	cmp	r0, #26
c0de3d18:	d10a      	bne.n	c0de3d30 <io_legacy_apdu_rx+0x140>
c0de3d1a:	eb09 0007 	add.w	r0, r9, r7
c0de3d1e:	4621      	mov	r1, r4
c0de3d20:	b003      	add	sp, #12
c0de3d22:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3d26:	f7ff bf40 	b.w	c0de3baa <io_process_itc_ux_event>
c0de3d2a:	2842      	cmp	r0, #66	@ 0x42
c0de3d2c:	d01d      	beq.n	c0de3d6a <io_legacy_apdu_rx+0x17a>
c0de3d2e:	e028      	b.n	c0de3d82 <io_legacy_apdu_rx+0x192>
c0de3d30:	b1ed      	cbz	r5, c0de3d6e <io_legacy_apdu_rx+0x17e>
c0de3d32:	2000      	movs	r0, #0
c0de3d34:	2400      	movs	r4, #0
c0de3d36:	f003 f8fb 	bl	c0de6f30 <io_event>
c0de3d3a:	e016      	b.n	c0de3d6a <io_legacy_apdu_rx+0x17a>
c0de3d3c:	2004      	movs	r0, #4
c0de3d3e:	e008      	b.n	c0de3d52 <io_legacy_apdu_rx+0x162>
c0de3d40:	2007      	movs	r0, #7
c0de3d42:	e006      	b.n	c0de3d52 <io_legacy_apdu_rx+0x162>
c0de3d44:	2002      	movs	r0, #2
c0de3d46:	e004      	b.n	c0de3d52 <io_legacy_apdu_rx+0x162>
c0de3d48:	2006      	movs	r0, #6
c0de3d4a:	e002      	b.n	c0de3d52 <io_legacy_apdu_rx+0x162>
c0de3d4c:	2003      	movs	r0, #3
c0de3d4e:	e000      	b.n	c0de3d52 <io_legacy_apdu_rx+0x162>
c0de3d50:	2005      	movs	r0, #5
c0de3d52:	4912      	ldr	r1, [pc, #72]	@ (c0de3d9c <io_legacy_apdu_rx+0x1ac>)
c0de3d54:	3c01      	subs	r4, #1
c0de3d56:	4622      	mov	r2, r4
c0de3d58:	4449      	add	r1, r9
c0de3d5a:	7188      	strb	r0, [r1, #6]
c0de3d5c:	480e      	ldr	r0, [pc, #56]	@ (c0de3d98 <io_legacy_apdu_rx+0x1a8>)
c0de3d5e:	eb09 0106 	add.w	r1, r9, r6
c0de3d62:	3101      	adds	r1, #1
c0de3d64:	4448      	add	r0, r9
c0de3d66:	f004 f8d3 	bl	c0de7f10 <__aeabi_memcpy>
c0de3d6a:	4620      	mov	r0, r4
c0de3d6c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3d6e:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3d72:	2815      	cmp	r0, #21
c0de3d74:	d8dd      	bhi.n	c0de3d32 <io_legacy_apdu_rx+0x142>
c0de3d76:	2101      	movs	r1, #1
c0de3d78:	fa01 f000 	lsl.w	r0, r1, r0
c0de3d7c:	4909      	ldr	r1, [pc, #36]	@ (c0de3da4 <io_legacy_apdu_rx+0x1b4>)
c0de3d7e:	4208      	tst	r0, r1
c0de3d80:	d0d7      	beq.n	c0de3d32 <io_legacy_apdu_rx+0x142>
c0de3d82:	2400      	movs	r4, #0
c0de3d84:	e7f1      	b.n	c0de3d6a <io_legacy_apdu_rx+0x17a>
c0de3d86:	20ff      	movs	r0, #255	@ 0xff
c0de3d88:	f003 ff86 	bl	c0de7c98 <os_sched_exit>
c0de3d8c:	000007a5 	.word	0x000007a5
c0de3d90:	007f0001 	.word	0x007f0001
c0de3d94:	000008be 	.word	0x000008be
c0de3d98:	00000694 	.word	0x00000694
c0de3d9c:	000008b6 	.word	0x000008b6
c0de3da0:	00000a3c 	.word	0x00000a3c
c0de3da4:	00205020 	.word	0x00205020

c0de3da8 <io_seproxyhal_init>:
c0de3da8:	b570      	push	{r4, r5, r6, lr}
c0de3daa:	b08a      	sub	sp, #40	@ 0x28
c0de3dac:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3ddc <io_seproxyhal_init+0x34>)
c0de3dae:	2600      	movs	r6, #0
c0de3db0:	2118      	movs	r1, #24
c0de3db2:	eb09 0005 	add.w	r0, r9, r5
c0de3db6:	7046      	strb	r6, [r0, #1]
c0de3db8:	ac01      	add	r4, sp, #4
c0de3dba:	4620      	mov	r0, r4
c0de3dbc:	f004 f8b2 	bl	c0de7f24 <__aeabi_memclr>
c0de3dc0:	2011      	movs	r0, #17
c0de3dc2:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3dc6:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3dca:	4620      	mov	r0, r4
c0de3dcc:	f003 ff6e 	bl	c0de7cac <os_io_init>
c0de3dd0:	2001      	movs	r0, #1
c0de3dd2:	f809 0005 	strb.w	r0, [r9, r5]
c0de3dd6:	b00a      	add	sp, #40	@ 0x28
c0de3dd8:	bd70      	pop	{r4, r5, r6, pc}
c0de3dda:	bf00      	nop
c0de3ddc:	000008be 	.word	0x000008be

c0de3de0 <nbgl_layoutGet>:
c0de3de0:	b570      	push	{r4, r5, r6, lr}
c0de3de2:	4605      	mov	r5, r0
c0de3de4:	7800      	ldrb	r0, [r0, #0]
c0de3de6:	b148      	cbz	r0, c0de3dfc <nbgl_layoutGet+0x1c>
c0de3de8:	4819      	ldr	r0, [pc, #100]	@ (c0de3e50 <nbgl_layoutGet+0x70>)
c0de3dea:	eb09 0100 	add.w	r1, r9, r0
c0de3dee:	7b8a      	ldrb	r2, [r1, #14]
c0de3df0:	b152      	cbz	r2, c0de3e08 <nbgl_layoutGet+0x28>
c0de3df2:	4448      	add	r0, r9
c0de3df4:	7e81      	ldrb	r1, [r0, #26]
c0de3df6:	b151      	cbz	r1, c0de3e0e <nbgl_layoutGet+0x2e>
c0de3df8:	2400      	movs	r4, #0
c0de3dfa:	e026      	b.n	c0de3e4a <nbgl_layoutGet+0x6a>
c0de3dfc:	4814      	ldr	r0, [pc, #80]	@ (c0de3e50 <nbgl_layoutGet+0x70>)
c0de3dfe:	eb09 0400 	add.w	r4, r9, r0
c0de3e02:	2000      	movs	r0, #0
c0de3e04:	70a0      	strb	r0, [r4, #2]
c0de3e06:	e004      	b.n	c0de3e12 <nbgl_layoutGet+0x32>
c0de3e08:	f101 040c 	add.w	r4, r1, #12
c0de3e0c:	e001      	b.n	c0de3e12 <nbgl_layoutGet+0x32>
c0de3e0e:	f100 0418 	add.w	r4, r0, #24
c0de3e12:	2000      	movs	r0, #0
c0de3e14:	4626      	mov	r6, r4
c0de3e16:	60a0      	str	r0, [r4, #8]
c0de3e18:	6020      	str	r0, [r4, #0]
c0de3e1a:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3e1e:	6868      	ldr	r0, [r5, #4]
c0de3e20:	f003 fd74 	bl	c0de790c <pic>
c0de3e24:	60a0      	str	r0, [r4, #8]
c0de3e26:	7828      	ldrb	r0, [r5, #0]
c0de3e28:	f105 0208 	add.w	r2, r5, #8
c0de3e2c:	7020      	strb	r0, [r4, #0]
c0de3e2e:	4b09      	ldr	r3, [pc, #36]	@ (c0de3e54 <nbgl_layoutGet+0x74>)
c0de3e30:	447b      	add	r3, pc
c0de3e32:	b120      	cbz	r0, c0de3e3e <nbgl_layoutGet+0x5e>
c0de3e34:	4630      	mov	r0, r6
c0de3e36:	2107      	movs	r1, #7
c0de3e38:	f003 fb6d 	bl	c0de7516 <nbgl_screenPush>
c0de3e3c:	e004      	b.n	c0de3e48 <nbgl_layoutGet+0x68>
c0de3e3e:	4630      	mov	r0, r6
c0de3e40:	2107      	movs	r1, #7
c0de3e42:	f003 fb63 	bl	c0de750c <nbgl_screenSet>
c0de3e46:	2000      	movs	r0, #0
c0de3e48:	7060      	strb	r0, [r4, #1]
c0de3e4a:	4620      	mov	r0, r4
c0de3e4c:	bd70      	pop	{r4, r5, r6, pc}
c0de3e4e:	bf00      	nop
c0de3e50:	000008c0 	.word	0x000008c0
c0de3e54:	00000025 	.word	0x00000025

c0de3e58 <buttonCallback>:
c0de3e58:	b5b0      	push	{r4, r5, r7, lr}
c0de3e5a:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3e5e:	4811      	ldr	r0, [pc, #68]	@ (c0de3ea4 <buttonCallback+0x4c>)
c0de3e60:	2302      	movs	r3, #2
c0de3e62:	1c5c      	adds	r4, r3, #1
c0de3e64:	d01d      	beq.n	c0de3ea2 <buttonCallback+0x4a>
c0de3e66:	b2dc      	uxtb	r4, r3
c0de3e68:	eb09 0500 	add.w	r5, r9, r0
c0de3e6c:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3e70:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3e74:	786d      	ldrb	r5, [r5, #1]
c0de3e76:	42aa      	cmp	r2, r5
c0de3e78:	d105      	bne.n	c0de3e86 <buttonCallback+0x2e>
c0de3e7a:	eb09 0500 	add.w	r5, r9, r0
c0de3e7e:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3e82:	78ad      	ldrb	r5, [r5, #2]
c0de3e84:	b90d      	cbnz	r5, c0de3e8a <buttonCallback+0x32>
c0de3e86:	3b01      	subs	r3, #1
c0de3e88:	e7eb      	b.n	c0de3e62 <buttonCallback+0xa>
c0de3e8a:	eb09 0200 	add.w	r2, r9, r0
c0de3e8e:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3e92:	6892      	ldr	r2, [r2, #8]
c0de3e94:	b12a      	cbz	r2, c0de3ea2 <buttonCallback+0x4a>
c0de3e96:	4448      	add	r0, r9
c0de3e98:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3e9c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3ea0:	4710      	bx	r2
c0de3ea2:	bdb0      	pop	{r4, r5, r7, pc}
c0de3ea4:	000008c0 	.word	0x000008c0

c0de3ea8 <nbgl_layoutAddNavigation>:
c0de3ea8:	b570      	push	{r4, r5, r6, lr}
c0de3eaa:	2800      	cmp	r0, #0
c0de3eac:	d04d      	beq.n	c0de3f4a <nbgl_layoutAddNavigation+0xa2>
c0de3eae:	460d      	mov	r5, r1
c0de3eb0:	7849      	ldrb	r1, [r1, #1]
c0de3eb2:	4604      	mov	r4, r0
c0de3eb4:	07c8      	lsls	r0, r1, #31
c0de3eb6:	d022      	beq.n	c0de3efe <nbgl_layoutAddNavigation+0x56>
c0de3eb8:	7861      	ldrb	r1, [r4, #1]
c0de3eba:	2002      	movs	r0, #2
c0de3ebc:	f003 fb3f 	bl	c0de753e <nbgl_objPoolGet>
c0de3ec0:	782a      	ldrb	r2, [r5, #0]
c0de3ec2:	7869      	ldrb	r1, [r5, #1]
c0de3ec4:	4b23      	ldr	r3, [pc, #140]	@ (c0de3f54 <nbgl_layoutAddNavigation+0xac>)
c0de3ec6:	4e24      	ldr	r6, [pc, #144]	@ (c0de3f58 <nbgl_layoutAddNavigation+0xb0>)
c0de3ec8:	2a00      	cmp	r2, #0
c0de3eca:	447b      	add	r3, pc
c0de3ecc:	447e      	add	r6, pc
c0de3ece:	4602      	mov	r2, r0
c0de3ed0:	bf08      	it	eq
c0de3ed2:	461e      	moveq	r6, r3
c0de3ed4:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3ed8:	0e33      	lsrs	r3, r6, #24
c0de3eda:	70d3      	strb	r3, [r2, #3]
c0de3edc:	0c33      	lsrs	r3, r6, #16
c0de3ede:	7093      	strb	r3, [r2, #2]
c0de3ee0:	0a32      	lsrs	r2, r6, #8
c0de3ee2:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de3ee6:	6862      	ldr	r2, [r4, #4]
c0de3ee8:	78a3      	ldrb	r3, [r4, #2]
c0de3eea:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3eee:	2203      	movs	r2, #3
c0de3ef0:	77c2      	strb	r2, [r0, #31]
c0de3ef2:	2204      	movs	r2, #4
c0de3ef4:	7582      	strb	r2, [r0, #22]
c0de3ef6:	2200      	movs	r2, #0
c0de3ef8:	7242      	strb	r2, [r0, #9]
c0de3efa:	1c58      	adds	r0, r3, #1
c0de3efc:	70a0      	strb	r0, [r4, #2]
c0de3efe:	0788      	lsls	r0, r1, #30
c0de3f00:	f04f 0600 	mov.w	r6, #0
c0de3f04:	d523      	bpl.n	c0de3f4e <nbgl_layoutAddNavigation+0xa6>
c0de3f06:	7861      	ldrb	r1, [r4, #1]
c0de3f08:	2002      	movs	r0, #2
c0de3f0a:	f003 fb18 	bl	c0de753e <nbgl_objPoolGet>
c0de3f0e:	7829      	ldrb	r1, [r5, #0]
c0de3f10:	4a12      	ldr	r2, [pc, #72]	@ (c0de3f5c <nbgl_layoutAddNavigation+0xb4>)
c0de3f12:	4b13      	ldr	r3, [pc, #76]	@ (c0de3f60 <nbgl_layoutAddNavigation+0xb8>)
c0de3f14:	2900      	cmp	r1, #0
c0de3f16:	447a      	add	r2, pc
c0de3f18:	447b      	add	r3, pc
c0de3f1a:	4601      	mov	r1, r0
c0de3f1c:	bf08      	it	eq
c0de3f1e:	4613      	moveq	r3, r2
c0de3f20:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3f24:	0e1a      	lsrs	r2, r3, #24
c0de3f26:	7246      	strb	r6, [r0, #9]
c0de3f28:	70ca      	strb	r2, [r1, #3]
c0de3f2a:	0c1a      	lsrs	r2, r3, #16
c0de3f2c:	708a      	strb	r2, [r1, #2]
c0de3f2e:	0a19      	lsrs	r1, r3, #8
c0de3f30:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3f34:	6861      	ldr	r1, [r4, #4]
c0de3f36:	78a2      	ldrb	r2, [r4, #2]
c0de3f38:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3f3c:	2103      	movs	r1, #3
c0de3f3e:	77c1      	strb	r1, [r0, #31]
c0de3f40:	2106      	movs	r1, #6
c0de3f42:	7581      	strb	r1, [r0, #22]
c0de3f44:	1c50      	adds	r0, r2, #1
c0de3f46:	70a0      	strb	r0, [r4, #2]
c0de3f48:	e001      	b.n	c0de3f4e <nbgl_layoutAddNavigation+0xa6>
c0de3f4a:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3f4e:	4630      	mov	r0, r6
c0de3f50:	bd70      	pop	{r4, r5, r6, pc}
c0de3f52:	bf00      	nop
c0de3f54:	00004278 	.word	0x00004278
c0de3f58:	000042b5 	.word	0x000042b5
c0de3f5c:	0000425d 	.word	0x0000425d
c0de3f60:	0000421c 	.word	0x0000421c

c0de3f64 <nbgl_layoutAddText>:
c0de3f64:	2800      	cmp	r0, #0
c0de3f66:	f000 8143 	beq.w	c0de41f0 <nbgl_layoutAddText+0x28c>
c0de3f6a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f6e:	b088      	sub	sp, #32
c0de3f70:	460e      	mov	r6, r1
c0de3f72:	7841      	ldrb	r1, [r0, #1]
c0de3f74:	4605      	mov	r5, r0
c0de3f76:	2001      	movs	r0, #1
c0de3f78:	4617      	mov	r7, r2
c0de3f7a:	461c      	mov	r4, r3
c0de3f7c:	f003 fadf 	bl	c0de753e <nbgl_objPoolGet>
c0de3f80:	4680      	mov	r8, r0
c0de3f82:	2003      	movs	r0, #3
c0de3f84:	2f00      	cmp	r7, #0
c0de3f86:	bf08      	it	eq
c0de3f88:	2001      	moveq	r0, #1
c0de3f8a:	7869      	ldrb	r1, [r5, #1]
c0de3f8c:	f888 0020 	strb.w	r0, [r8, #32]
c0de3f90:	f003 fada 	bl	c0de7548 <nbgl_containerPoolGet>
c0de3f94:	4641      	mov	r1, r8
c0de3f96:	0e02      	lsrs	r2, r0, #24
c0de3f98:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3f9c:	f04f 0b00 	mov.w	fp, #0
c0de3fa0:	9704      	str	r7, [sp, #16]
c0de3fa2:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3fa6:	f888 a004 	strb.w	sl, [r8, #4]
c0de3faa:	f888 b005 	strb.w	fp, [r8, #5]
c0de3fae:	70ca      	strb	r2, [r1, #3]
c0de3fb0:	0c02      	lsrs	r2, r0, #16
c0de3fb2:	0a00      	lsrs	r0, r0, #8
c0de3fb4:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3fb8:	708a      	strb	r2, [r1, #2]
c0de3fba:	2004      	movs	r0, #4
c0de3fbc:	7869      	ldrb	r1, [r5, #1]
c0de3fbe:	f003 fabe 	bl	c0de753e <nbgl_objPoolGet>
c0de3fc2:	4607      	mov	r7, r0
c0de3fc4:	2003      	movs	r0, #3
c0de3fc6:	77f8      	strb	r0, [r7, #31]
c0de3fc8:	4630      	mov	r0, r6
c0de3fca:	f003 fc9f 	bl	c0de790c <pic>
c0de3fce:	4601      	mov	r1, r0
c0de3fd0:	2008      	movs	r0, #8
c0de3fd2:	f887 b005 	strb.w	fp, [r7, #5]
c0de3fd6:	f887 a004 	strb.w	sl, [r7, #4]
c0de3fda:	9403      	str	r4, [sp, #12]
c0de3fdc:	2c00      	cmp	r4, #0
c0de3fde:	bf08      	it	eq
c0de3fe0:	200a      	moveq	r0, #10
c0de3fe2:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3fe6:	2205      	movs	r2, #5
c0de3fe8:	0e0b      	lsrs	r3, r1, #24
c0de3fea:	f887 2020 	strb.w	r2, [r7, #32]
c0de3fee:	463a      	mov	r2, r7
c0de3ff0:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3ff4:	70d3      	strb	r3, [r2, #3]
c0de3ff6:	0c0b      	lsrs	r3, r1, #16
c0de3ff8:	7093      	strb	r3, [r2, #2]
c0de3ffa:	0a0a      	lsrs	r2, r1, #8
c0de3ffc:	2301      	movs	r3, #1
c0de3ffe:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de4002:	2272      	movs	r2, #114	@ 0x72
c0de4004:	f003 fab4 	bl	c0de7570 <nbgl_getTextNbLinesInWidth>
c0de4008:	4606      	mov	r6, r0
c0de400a:	2805      	cmp	r0, #5
c0de400c:	9505      	str	r5, [sp, #20]
c0de400e:	d31d      	bcc.n	c0de404c <nbgl_layoutAddText+0xe8>
c0de4010:	463e      	mov	r6, r7
c0de4012:	2004      	movs	r0, #4
c0de4014:	2101      	movs	r1, #1
c0de4016:	f10d 051e 	add.w	r5, sp, #30
c0de401a:	f816 cf26 	ldrb.w	ip, [r6, #38]!
c0de401e:	7872      	ldrb	r2, [r6, #1]
c0de4020:	78b3      	ldrb	r3, [r6, #2]
c0de4022:	78f4      	ldrb	r4, [r6, #3]
c0de4024:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de4028:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de402c:	9101      	str	r1, [sp, #4]
c0de402e:	9500      	str	r5, [sp, #0]
c0de4030:	9d05      	ldr	r5, [sp, #20]
c0de4032:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de4036:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de403a:	2304      	movs	r3, #4
c0de403c:	f000 fc78 	bl	c0de4930 <OUTLINED_FUNCTION_4>
c0de4040:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de4044:	7130      	strb	r0, [r6, #4]
c0de4046:	0a00      	lsrs	r0, r0, #8
c0de4048:	7170      	strb	r0, [r6, #5]
c0de404a:	2604      	movs	r6, #4
c0de404c:	f000 fc78 	bl	c0de4940 <OUTLINED_FUNCTION_6>
c0de4050:	4683      	mov	fp, r0
c0de4052:	79c0      	ldrb	r0, [r0, #7]
c0de4054:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de4058:	9c04      	ldr	r4, [sp, #16]
c0de405a:	fb06 fa00 	mul.w	sl, r6, r0
c0de405e:	f041 0101 	orr.w	r1, r1, #1
c0de4062:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de4066:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de406a:	2102      	movs	r1, #2
c0de406c:	f887 a006 	strb.w	sl, [r7, #6]
c0de4070:	71f8      	strb	r0, [r7, #7]
c0de4072:	4640      	mov	r0, r8
c0de4074:	75b9      	strb	r1, [r7, #22]
c0de4076:	2c00      	cmp	r4, #0
c0de4078:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de407c:	7842      	ldrb	r2, [r0, #1]
c0de407e:	7883      	ldrb	r3, [r0, #2]
c0de4080:	78c0      	ldrb	r0, [r0, #3]
c0de4082:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4086:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de408a:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de408e:	6007      	str	r7, [r0, #0]
c0de4090:	f000 8110 	beq.w	c0de42b4 <nbgl_layoutAddText+0x350>
c0de4094:	9803      	ldr	r0, [sp, #12]
c0de4096:	7869      	ldrb	r1, [r5, #1]
c0de4098:	2802      	cmp	r0, #2
c0de409a:	f040 80ab 	bne.w	c0de41f4 <nbgl_layoutAddText+0x290>
c0de409e:	2005      	movs	r0, #5
c0de40a0:	2505      	movs	r5, #5
c0de40a2:	f003 fa4c 	bl	c0de753e <nbgl_objPoolGet>
c0de40a6:	2600      	movs	r6, #0
c0de40a8:	4607      	mov	r7, r0
c0de40aa:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de40ae:	2001      	movs	r0, #1
c0de40b0:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de40b4:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de40b8:	f000 fc51 	bl	c0de495e <OUTLINED_FUNCTION_9>
c0de40bc:	4620      	mov	r0, r4
c0de40be:	f003 fc25 	bl	c0de790c <pic>
c0de40c2:	4601      	mov	r1, r0
c0de40c4:	200e      	movs	r0, #14
c0de40c6:	71fe      	strb	r6, [r7, #7]
c0de40c8:	75bd      	strb	r5, [r7, #22]
c0de40ca:	71b8      	strb	r0, [r7, #6]
c0de40cc:	2008      	movs	r0, #8
c0de40ce:	0e0a      	lsrs	r2, r1, #24
c0de40d0:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de40d4:	4638      	mov	r0, r7
c0de40d6:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de40da:	f000 fc20 	bl	c0de491e <OUTLINED_FUNCTION_3>
c0de40de:	2865      	cmp	r0, #101	@ 0x65
c0de40e0:	f240 80d8 	bls.w	c0de4294 <nbgl_layoutAddText+0x330>
c0de40e4:	46bb      	mov	fp, r7
c0de40e6:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de40ea:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de40ee:	2401      	movs	r4, #1
c0de40f0:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de40f4:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de40f8:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de40fc:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de4100:	ae06      	add	r6, sp, #24
c0de4102:	e9cd 6400 	strd	r6, r4, [sp]
c0de4106:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de410a:	f10d 031a 	add.w	r3, sp, #26
c0de410e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4112:	2266      	movs	r2, #102	@ 0x66
c0de4114:	f003 fa27 	bl	c0de7566 <nbgl_getTextMaxLenAndWidth>
c0de4118:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de411c:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de4120:	300c      	adds	r0, #12
c0de4122:	7138      	strb	r0, [r7, #4]
c0de4124:	0a00      	lsrs	r0, r0, #8
c0de4126:	7178      	strb	r0, [r7, #5]
c0de4128:	486d      	ldr	r0, [pc, #436]	@ (c0de42e0 <nbgl_layoutAddText+0x37c>)
c0de412a:	2e13      	cmp	r6, #19
c0de412c:	bf28      	it	cs
c0de412e:	2613      	movcs	r6, #19
c0de4130:	f89b 1000 	ldrb.w	r1, [fp]
c0de4134:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de4138:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de413c:	eb09 0400 	add.w	r4, r9, r0
c0de4140:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de4144:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4148:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de414c:	4632      	mov	r2, r6
c0de414e:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de4152:	4620      	mov	r0, r4
c0de4154:	f003 fedc 	bl	c0de7f10 <__aeabi_memcpy>
c0de4158:	2500      	movs	r5, #0
c0de415a:	4620      	mov	r0, r4
c0de415c:	55a5      	strb	r5, [r4, r6]
c0de415e:	f003 fbd5 	bl	c0de790c <pic>
c0de4162:	2101      	movs	r1, #1
c0de4164:	f88b 0000 	strb.w	r0, [fp]
c0de4168:	76bd      	strb	r5, [r7, #26]
c0de416a:	9d05      	ldr	r5, [sp, #20]
c0de416c:	7679      	strb	r1, [r7, #25]
c0de416e:	0e01      	lsrs	r1, r0, #24
c0de4170:	f88b 1003 	strb.w	r1, [fp, #3]
c0de4174:	0c01      	lsrs	r1, r0, #16
c0de4176:	0a00      	lsrs	r0, r0, #8
c0de4178:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de417c:	f88b 1002 	strb.w	r1, [fp, #2]
c0de4180:	4640      	mov	r0, r8
c0de4182:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4186:	7842      	ldrb	r2, [r0, #1]
c0de4188:	7883      	ldrb	r3, [r0, #2]
c0de418a:	78c0      	ldrb	r0, [r0, #3]
c0de418c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4190:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4194:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4198:	6047      	str	r7, [r0, #4]
c0de419a:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de419e:	2800      	cmp	r0, #0
c0de41a0:	f000 8086 	beq.w	c0de42b0 <nbgl_layoutAddText+0x34c>
c0de41a4:	7869      	ldrb	r1, [r5, #1]
c0de41a6:	2005      	movs	r0, #5
c0de41a8:	2605      	movs	r6, #5
c0de41aa:	f003 f9c8 	bl	c0de753e <nbgl_objPoolGet>
c0de41ae:	2500      	movs	r5, #0
c0de41b0:	4607      	mov	r7, r0
c0de41b2:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de41b6:	2001      	movs	r0, #1
c0de41b8:	f000 fbd1 	bl	c0de495e <OUTLINED_FUNCTION_9>
c0de41bc:	9804      	ldr	r0, [sp, #16]
c0de41be:	f003 fba5 	bl	c0de790c <pic>
c0de41c2:	210e      	movs	r1, #14
c0de41c4:	71fd      	strb	r5, [r7, #7]
c0de41c6:	71b9      	strb	r1, [r7, #6]
c0de41c8:	2108      	movs	r1, #8
c0de41ca:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de41ce:	f8bd 101a 	ldrh.w	r1, [sp, #26]
c0de41d2:	4401      	add	r1, r0
c0de41d4:	4638      	mov	r0, r7
c0de41d6:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de41da:	0e0a      	lsrs	r2, r1, #24
c0de41dc:	f000 fb9f 	bl	c0de491e <OUTLINED_FUNCTION_3>
c0de41e0:	300c      	adds	r0, #12
c0de41e2:	210f      	movs	r1, #15
c0de41e4:	75be      	strb	r6, [r7, #22]
c0de41e6:	7138      	strb	r0, [r7, #4]
c0de41e8:	0a00      	lsrs	r0, r0, #8
c0de41ea:	7178      	strb	r0, [r7, #5]
c0de41ec:	2002      	movs	r0, #2
c0de41ee:	e057      	b.n	c0de42a0 <nbgl_layoutAddText+0x33c>
c0de41f0:	f000 bbb2 	b.w	c0de4958 <OUTLINED_FUNCTION_8>
c0de41f4:	f000 fba1 	bl	c0de493a <OUTLINED_FUNCTION_5>
c0de41f8:	2603      	movs	r6, #3
c0de41fa:	4607      	mov	r7, r0
c0de41fc:	77c6      	strb	r6, [r0, #31]
c0de41fe:	4620      	mov	r0, r4
c0de4200:	f003 fb84 	bl	c0de790c <pic>
c0de4204:	4601      	mov	r1, r0
c0de4206:	2072      	movs	r0, #114	@ 0x72
c0de4208:	2400      	movs	r4, #0
c0de420a:	2301      	movs	r3, #1
c0de420c:	7138      	strb	r0, [r7, #4]
c0de420e:	200a      	movs	r0, #10
c0de4210:	0e0a      	lsrs	r2, r1, #24
c0de4212:	717c      	strb	r4, [r7, #5]
c0de4214:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4218:	f000 fb61 	bl	c0de48de <OUTLINED_FUNCTION_0>
c0de421c:	2804      	cmp	r0, #4
c0de421e:	d31e      	bcc.n	c0de425e <nbgl_layoutAddText+0x2fa>
c0de4220:	463d      	mov	r5, r7
c0de4222:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4226:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de422a:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de422e:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de4232:	78ab      	ldrb	r3, [r5, #2]
c0de4234:	78e9      	ldrb	r1, [r5, #3]
c0de4236:	aa07      	add	r2, sp, #28
c0de4238:	9200      	str	r2, [sp, #0]
c0de423a:	2201      	movs	r2, #1
c0de423c:	9201      	str	r2, [sp, #4]
c0de423e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4242:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de4246:	2303      	movs	r3, #3
c0de4248:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de424c:	2272      	movs	r2, #114	@ 0x72
c0de424e:	f003 f99e 	bl	c0de758e <nbgl_getTextMaxLenInNbLines>
c0de4252:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de4256:	7128      	strb	r0, [r5, #4]
c0de4258:	0a00      	lsrs	r0, r0, #8
c0de425a:	7168      	strb	r0, [r5, #5]
c0de425c:	2003      	movs	r0, #3
c0de425e:	9903      	ldr	r1, [sp, #12]
c0de4260:	2900      	cmp	r1, #0
c0de4262:	bf08      	it	eq
c0de4264:	4606      	moveq	r6, r0
c0de4266:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de426a:	76bc      	strb	r4, [r7, #26]
c0de426c:	75bc      	strb	r4, [r7, #22]
c0de426e:	fb06 f100 	mul.w	r1, r6, r0
c0de4272:	fb06 a000 	mla	r0, r6, r0, sl
c0de4276:	71b9      	strb	r1, [r7, #6]
c0de4278:	0a09      	lsrs	r1, r1, #8
c0de427a:	71f9      	strb	r1, [r7, #7]
c0de427c:	2102      	movs	r1, #2
c0de427e:	f100 0a02 	add.w	sl, r0, #2
c0de4282:	7679      	strb	r1, [r7, #25]
c0de4284:	2105      	movs	r1, #5
c0de4286:	f887 1020 	strb.w	r1, [r7, #32]
c0de428a:	4641      	mov	r1, r8
c0de428c:	f000 fb3a 	bl	c0de4904 <OUTLINED_FUNCTION_2>
c0de4290:	604f      	str	r7, [r1, #4]
c0de4292:	e00f      	b.n	c0de42b4 <nbgl_layoutAddText+0x350>
c0de4294:	300c      	adds	r0, #12
c0de4296:	2108      	movs	r1, #8
c0de4298:	7138      	strb	r0, [r7, #4]
c0de429a:	0a00      	lsrs	r0, r0, #8
c0de429c:	7178      	strb	r0, [r7, #5]
c0de429e:	2001      	movs	r0, #1
c0de42a0:	2200      	movs	r2, #0
c0de42a2:	7679      	strb	r1, [r7, #25]
c0de42a4:	4641      	mov	r1, r8
c0de42a6:	76ba      	strb	r2, [r7, #26]
c0de42a8:	f000 fb2c 	bl	c0de4904 <OUTLINED_FUNCTION_2>
c0de42ac:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de42b0:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de42b4:	6868      	ldr	r0, [r5, #4]
c0de42b6:	78a9      	ldrb	r1, [r5, #2]
c0de42b8:	2205      	movs	r2, #5
c0de42ba:	f888 2016 	strb.w	r2, [r8, #22]
c0de42be:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de42c2:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de42c6:	2000      	movs	r0, #0
c0de42c8:	3101      	adds	r1, #1
c0de42ca:	f888 a006 	strb.w	sl, [r8, #6]
c0de42ce:	f888 2007 	strb.w	r2, [r8, #7]
c0de42d2:	f888 001f 	strb.w	r0, [r8, #31]
c0de42d6:	70a9      	strb	r1, [r5, #2]
c0de42d8:	b008      	add	sp, #32
c0de42da:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de42de:	bf00      	nop
c0de42e0:	000008e4 	.word	0x000008e4

c0de42e4 <nbgl_layoutAddMenuList>:
c0de42e4:	2800      	cmp	r0, #0
c0de42e6:	d04f      	beq.n	c0de4388 <nbgl_layoutAddMenuList+0xa4>
c0de42e8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de42ec:	460c      	mov	r4, r1
c0de42ee:	4605      	mov	r5, r0
c0de42f0:	2700      	movs	r7, #0
c0de42f2:	f04f 0b05 	mov.w	fp, #5
c0de42f6:	f04f 0803 	mov.w	r8, #3
c0de42fa:	f04f 0a00 	mov.w	sl, #0
c0de42fe:	7920      	ldrb	r0, [r4, #4]
c0de4300:	4582      	cmp	sl, r0
c0de4302:	d23e      	bcs.n	c0de4382 <nbgl_layoutAddMenuList+0x9e>
c0de4304:	7960      	ldrb	r0, [r4, #5]
c0de4306:	2803      	cmp	r0, #3
c0de4308:	d302      	bcc.n	c0de4310 <nbgl_layoutAddMenuList+0x2c>
c0de430a:	1e81      	subs	r1, r0, #2
c0de430c:	4551      	cmp	r1, sl
c0de430e:	dc35      	bgt.n	c0de437c <nbgl_layoutAddMenuList+0x98>
c0de4310:	3002      	adds	r0, #2
c0de4312:	4550      	cmp	r0, sl
c0de4314:	d332      	bcc.n	c0de437c <nbgl_layoutAddMenuList+0x98>
c0de4316:	7869      	ldrb	r1, [r5, #1]
c0de4318:	f000 fb0f 	bl	c0de493a <OUTLINED_FUNCTION_5>
c0de431c:	6821      	ldr	r1, [r4, #0]
c0de431e:	4606      	mov	r6, r0
c0de4320:	fa5f f08a 	uxtb.w	r0, sl
c0de4324:	4788      	blx	r1
c0de4326:	7961      	ldrb	r1, [r4, #5]
c0de4328:	220a      	movs	r2, #10
c0de432a:	458a      	cmp	sl, r1
c0de432c:	bf08      	it	eq
c0de432e:	2208      	moveq	r2, #8
c0de4330:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de4334:	71f7      	strb	r7, [r6, #7]
c0de4336:	7177      	strb	r7, [r6, #5]
c0de4338:	f886 b020 	strb.w	fp, [r6, #32]
c0de433c:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de4340:	f886 b016 	strb.w	fp, [r6, #22]
c0de4344:	f886 801f 	strb.w	r8, [r6, #31]
c0de4348:	4632      	mov	r2, r6
c0de434a:	0e03      	lsrs	r3, r0, #24
c0de434c:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de4350:	70d3      	strb	r3, [r2, #3]
c0de4352:	0c03      	lsrs	r3, r0, #16
c0de4354:	0a00      	lsrs	r0, r0, #8
c0de4356:	7093      	strb	r3, [r2, #2]
c0de4358:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de435c:	6868      	ldr	r0, [r5, #4]
c0de435e:	78aa      	ldrb	r2, [r5, #2]
c0de4360:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de4364:	200c      	movs	r0, #12
c0de4366:	71b0      	strb	r0, [r6, #6]
c0de4368:	2072      	movs	r0, #114	@ 0x72
c0de436a:	7130      	strb	r0, [r6, #4]
c0de436c:	ebaa 0001 	sub.w	r0, sl, r1
c0de4370:	0901      	lsrs	r1, r0, #4
c0de4372:	0100      	lsls	r0, r0, #4
c0de4374:	7670      	strb	r0, [r6, #25]
c0de4376:	1c50      	adds	r0, r2, #1
c0de4378:	76b1      	strb	r1, [r6, #26]
c0de437a:	70a8      	strb	r0, [r5, #2]
c0de437c:	f10a 0a01 	add.w	sl, sl, #1
c0de4380:	e7bd      	b.n	c0de42fe <nbgl_layoutAddMenuList+0x1a>
c0de4382:	2000      	movs	r0, #0
c0de4384:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4388:	f000 bae6 	b.w	c0de4958 <OUTLINED_FUNCTION_8>

c0de438c <nbgl_layoutAddCenteredInfo>:
c0de438c:	2800      	cmp	r0, #0
c0de438e:	f000 80dc 	beq.w	c0de454a <nbgl_layoutAddCenteredInfo+0x1be>
c0de4392:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4396:	b086      	sub	sp, #24
c0de4398:	460d      	mov	r5, r1
c0de439a:	7841      	ldrb	r1, [r0, #1]
c0de439c:	4682      	mov	sl, r0
c0de439e:	2001      	movs	r0, #1
c0de43a0:	f003 f8cd 	bl	c0de753e <nbgl_objPoolGet>
c0de43a4:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de43a8:	4680      	mov	r8, r0
c0de43aa:	2003      	movs	r0, #3
c0de43ac:	2703      	movs	r7, #3
c0de43ae:	f003 f8cb 	bl	c0de7548 <nbgl_containerPoolGet>
c0de43b2:	4641      	mov	r1, r8
c0de43b4:	0e02      	lsrs	r2, r0, #24
c0de43b6:	f04f 0b00 	mov.w	fp, #0
c0de43ba:	9504      	str	r5, [sp, #16]
c0de43bc:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de43c0:	f888 b020 	strb.w	fp, [r8, #32]
c0de43c4:	70ca      	strb	r2, [r1, #3]
c0de43c6:	0c02      	lsrs	r2, r0, #16
c0de43c8:	0a00      	lsrs	r0, r0, #8
c0de43ca:	708a      	strb	r2, [r1, #2]
c0de43cc:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de43d0:	68a8      	ldr	r0, [r5, #8]
c0de43d2:	b3c0      	cbz	r0, c0de4446 <nbgl_layoutAddCenteredInfo+0xba>
c0de43d4:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de43d8:	2002      	movs	r0, #2
c0de43da:	f003 f8b0 	bl	c0de753e <nbgl_objPoolGet>
c0de43de:	4606      	mov	r6, r0
c0de43e0:	77c7      	strb	r7, [r0, #31]
c0de43e2:	68a8      	ldr	r0, [r5, #8]
c0de43e4:	f003 fa92 	bl	c0de790c <pic>
c0de43e8:	4631      	mov	r1, r6
c0de43ea:	0e02      	lsrs	r2, r0, #24
c0de43ec:	f886 b013 	strb.w	fp, [r6, #19]
c0de43f0:	f886 b009 	strb.w	fp, [r6, #9]
c0de43f4:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de43f8:	70ca      	strb	r2, [r1, #3]
c0de43fa:	0c02      	lsrs	r2, r0, #16
c0de43fc:	708a      	strb	r2, [r1, #2]
c0de43fe:	0a01      	lsrs	r1, r0, #8
c0de4400:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4404:	4631      	mov	r1, r6
c0de4406:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de440a:	f881 b003 	strb.w	fp, [r1, #3]
c0de440e:	f881 b002 	strb.w	fp, [r1, #2]
c0de4412:	4641      	mov	r1, r8
c0de4414:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4418:	784f      	ldrb	r7, [r1, #1]
c0de441a:	788c      	ldrb	r4, [r1, #2]
c0de441c:	78cd      	ldrb	r5, [r1, #3]
c0de441e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4422:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4426:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de442a:	9d04      	ldr	r5, [sp, #16]
c0de442c:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4430:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4434:	2202      	movs	r2, #2
c0de4436:	75b2      	strb	r2, [r6, #22]
c0de4438:	1c5a      	adds	r2, r3, #1
c0de443a:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de443e:	7881      	ldrb	r1, [r0, #2]
c0de4440:	78c0      	ldrb	r0, [r0, #3]
c0de4442:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de4446:	6828      	ldr	r0, [r5, #0]
c0de4448:	2800      	cmp	r0, #0
c0de444a:	f000 80a5 	beq.w	c0de4598 <nbgl_layoutAddCenteredInfo+0x20c>
c0de444e:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4452:	f000 fa72 	bl	c0de493a <OUTLINED_FUNCTION_5>
c0de4456:	4607      	mov	r7, r0
c0de4458:	2003      	movs	r0, #3
c0de445a:	77f8      	strb	r0, [r7, #31]
c0de445c:	6828      	ldr	r0, [r5, #0]
c0de445e:	f003 fa55 	bl	c0de790c <pic>
c0de4462:	4601      	mov	r1, r0
c0de4464:	2072      	movs	r0, #114	@ 0x72
c0de4466:	2400      	movs	r4, #0
c0de4468:	7138      	strb	r0, [r7, #4]
c0de446a:	2005      	movs	r0, #5
c0de446c:	0e0a      	lsrs	r2, r1, #24
c0de446e:	717c      	strb	r4, [r7, #5]
c0de4470:	f887 0020 	strb.w	r0, [r7, #32]
c0de4474:	4638      	mov	r0, r7
c0de4476:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de447a:	70c2      	strb	r2, [r0, #3]
c0de447c:	0c0a      	lsrs	r2, r1, #16
c0de447e:	7082      	strb	r2, [r0, #2]
c0de4480:	0a08      	lsrs	r0, r1, #8
c0de4482:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de4486:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de448a:	7b6a      	ldrb	r2, [r5, #13]
c0de448c:	f040 0001 	orr.w	r0, r0, #1
c0de4490:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4494:	2008      	movs	r0, #8
c0de4496:	2a00      	cmp	r2, #0
c0de4498:	bf08      	it	eq
c0de449a:	200a      	moveq	r0, #10
c0de449c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de44a0:	2272      	movs	r2, #114	@ 0x72
c0de44a2:	2301      	movs	r3, #1
c0de44a4:	f003 f864 	bl	c0de7570 <nbgl_getTextNbLinesInWidth>
c0de44a8:	4606      	mov	r6, r0
c0de44aa:	2805      	cmp	r0, #5
c0de44ac:	d31e      	bcc.n	c0de44ec <nbgl_layoutAddCenteredInfo+0x160>
c0de44ae:	463d      	mov	r5, r7
c0de44b0:	2004      	movs	r0, #4
c0de44b2:	2101      	movs	r1, #1
c0de44b4:	f10d 0416 	add.w	r4, sp, #22
c0de44b8:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de44bc:	786a      	ldrb	r2, [r5, #1]
c0de44be:	78ab      	ldrb	r3, [r5, #2]
c0de44c0:	78ee      	ldrb	r6, [r5, #3]
c0de44c2:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de44c6:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de44ca:	9101      	str	r1, [sp, #4]
c0de44cc:	9400      	str	r4, [sp, #0]
c0de44ce:	2400      	movs	r4, #0
c0de44d0:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de44d4:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de44d8:	2304      	movs	r3, #4
c0de44da:	f000 fa29 	bl	c0de4930 <OUTLINED_FUNCTION_4>
c0de44de:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de44e2:	2604      	movs	r6, #4
c0de44e4:	7128      	strb	r0, [r5, #4]
c0de44e6:	0a00      	lsrs	r0, r0, #8
c0de44e8:	7168      	strb	r0, [r5, #5]
c0de44ea:	9d04      	ldr	r5, [sp, #16]
c0de44ec:	f000 fa28 	bl	c0de4940 <OUTLINED_FUNCTION_6>
c0de44f0:	79c0      	ldrb	r0, [r0, #7]
c0de44f2:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de44f6:	4370      	muls	r0, r6
c0de44f8:	0a01      	lsrs	r1, r0, #8
c0de44fa:	71b8      	strb	r0, [r7, #6]
c0de44fc:	71f9      	strb	r1, [r7, #7]
c0de44fe:	68a9      	ldr	r1, [r5, #8]
c0de4500:	b329      	cbz	r1, c0de454e <nbgl_layoutAddCenteredInfo+0x1c2>
c0de4502:	4641      	mov	r1, r8
c0de4504:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4508:	784c      	ldrb	r4, [r1, #1]
c0de450a:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de450e:	788d      	ldrb	r5, [r1, #2]
c0de4510:	78c9      	ldrb	r1, [r1, #3]
c0de4512:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4516:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de451a:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de451e:	463a      	mov	r2, r7
c0de4520:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de4524:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de4528:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de452c:	0e0b      	lsrs	r3, r1, #24
c0de452e:	70d3      	strb	r3, [r2, #3]
c0de4530:	0c0b      	lsrs	r3, r1, #16
c0de4532:	0a09      	lsrs	r1, r1, #8
c0de4534:	7051      	strb	r1, [r2, #1]
c0de4536:	2100      	movs	r1, #0
c0de4538:	7093      	strb	r3, [r2, #2]
c0de453a:	7211      	strb	r1, [r2, #8]
c0de453c:	2e03      	cmp	r6, #3
c0de453e:	bf38      	it	cc
c0de4540:	2101      	movcc	r1, #1
c0de4542:	0089      	lsls	r1, r1, #2
c0de4544:	71d1      	strb	r1, [r2, #7]
c0de4546:	2108      	movs	r1, #8
c0de4548:	e00a      	b.n	c0de4560 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de454a:	f000 ba05 	b.w	c0de4958 <OUTLINED_FUNCTION_8>
c0de454e:	6869      	ldr	r1, [r5, #4]
c0de4550:	b119      	cbz	r1, c0de455a <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4552:	f000 f9f9 	bl	c0de4948 <OUTLINED_FUNCTION_7>
c0de4556:	2102      	movs	r1, #2
c0de4558:	e002      	b.n	c0de4560 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de455a:	f000 f9f5 	bl	c0de4948 <OUTLINED_FUNCTION_7>
c0de455e:	2105      	movs	r1, #5
c0de4560:	7111      	strb	r1, [r2, #4]
c0de4562:	4641      	mov	r1, r8
c0de4564:	4458      	add	r0, fp
c0de4566:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de456a:	784c      	ldrb	r4, [r1, #1]
c0de456c:	788d      	ldrb	r5, [r1, #2]
c0de456e:	78ce      	ldrb	r6, [r1, #3]
c0de4570:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4574:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4578:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de457c:	9d04      	ldr	r5, [sp, #16]
c0de457e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4582:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de4586:	1c5a      	adds	r2, r3, #1
c0de4588:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de458c:	7e79      	ldrb	r1, [r7, #25]
c0de458e:	7eba      	ldrb	r2, [r7, #26]
c0de4590:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4594:	eb00 0b01 	add.w	fp, r0, r1
c0de4598:	6868      	ldr	r0, [r5, #4]
c0de459a:	2800      	cmp	r0, #0
c0de459c:	d071      	beq.n	c0de4682 <nbgl_layoutAddCenteredInfo+0x2f6>
c0de459e:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de45a2:	2004      	movs	r0, #4
c0de45a4:	f8cd a00c 	str.w	sl, [sp, #12]
c0de45a8:	f002 ffc9 	bl	c0de753e <nbgl_objPoolGet>
c0de45ac:	2403      	movs	r4, #3
c0de45ae:	4607      	mov	r7, r0
c0de45b0:	77c4      	strb	r4, [r0, #31]
c0de45b2:	6868      	ldr	r0, [r5, #4]
c0de45b4:	f003 f9aa 	bl	c0de790c <pic>
c0de45b8:	4601      	mov	r1, r0
c0de45ba:	2000      	movs	r0, #0
c0de45bc:	2301      	movs	r3, #1
c0de45be:	7178      	strb	r0, [r7, #5]
c0de45c0:	2072      	movs	r0, #114	@ 0x72
c0de45c2:	0e0a      	lsrs	r2, r1, #24
c0de45c4:	7138      	strb	r0, [r7, #4]
c0de45c6:	200a      	movs	r0, #10
c0de45c8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de45cc:	2005      	movs	r0, #5
c0de45ce:	f887 0020 	strb.w	r0, [r7, #32]
c0de45d2:	f000 f984 	bl	c0de48de <OUTLINED_FUNCTION_0>
c0de45d6:	4682      	mov	sl, r0
c0de45d8:	2804      	cmp	r0, #4
c0de45da:	d31c      	bcc.n	c0de4616 <nbgl_layoutAddCenteredInfo+0x28a>
c0de45dc:	463d      	mov	r5, r7
c0de45de:	f04f 0c01 	mov.w	ip, #1
c0de45e2:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de45e6:	f805 4c01 	strb.w	r4, [r5, #-1]
c0de45ea:	786a      	ldrb	r2, [r5, #1]
c0de45ec:	78ab      	ldrb	r3, [r5, #2]
c0de45ee:	78ec      	ldrb	r4, [r5, #3]
c0de45f0:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de45f4:	ae05      	add	r6, sp, #20
c0de45f6:	e9cd 6c00 	strd	r6, ip, [sp]
c0de45fa:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de45fe:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de4602:	2303      	movs	r3, #3
c0de4604:	f000 f994 	bl	c0de4930 <OUTLINED_FUNCTION_4>
c0de4608:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de460c:	f04f 0a03 	mov.w	sl, #3
c0de4610:	7128      	strb	r0, [r5, #4]
c0de4612:	0a00      	lsrs	r0, r0, #8
c0de4614:	7168      	strb	r0, [r5, #5]
c0de4616:	f000 f993 	bl	c0de4940 <OUTLINED_FUNCTION_6>
c0de461a:	4641      	mov	r1, r8
c0de461c:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de4620:	784c      	ldrb	r4, [r1, #1]
c0de4622:	788d      	ldrb	r5, [r1, #2]
c0de4624:	78ce      	ldrb	r6, [r1, #3]
c0de4626:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de462a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de462e:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4632:	463d      	mov	r5, r7
c0de4634:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de4638:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de463c:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4640:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4644:	0e26      	lsrs	r6, r4, #24
c0de4646:	70ee      	strb	r6, [r5, #3]
c0de4648:	0c26      	lsrs	r6, r4, #16
c0de464a:	0a24      	lsrs	r4, r4, #8
c0de464c:	74fc      	strb	r4, [r7, #19]
c0de464e:	70ae      	strb	r6, [r5, #2]
c0de4650:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4654:	2302      	movs	r3, #2
c0de4656:	2400      	movs	r4, #0
c0de4658:	3201      	adds	r2, #1
c0de465a:	767b      	strb	r3, [r7, #25]
c0de465c:	2308      	movs	r3, #8
c0de465e:	76bc      	strb	r4, [r7, #26]
c0de4660:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4664:	79c0      	ldrb	r0, [r0, #7]
c0de4666:	75bb      	strb	r3, [r7, #22]
c0de4668:	fb0a f300 	mul.w	r3, sl, r0
c0de466c:	fb0a b000 	mla	r0, sl, r0, fp
c0de4670:	e9dd a503 	ldrd	sl, r5, [sp, #12]
c0de4674:	71bb      	strb	r3, [r7, #6]
c0de4676:	0a1b      	lsrs	r3, r3, #8
c0de4678:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de467c:	f100 0b02 	add.w	fp, r0, #2
c0de4680:	71fb      	strb	r3, [r7, #7]
c0de4682:	7b28      	ldrb	r0, [r5, #12]
c0de4684:	2102      	movs	r1, #2
c0de4686:	2800      	cmp	r0, #0
c0de4688:	bf08      	it	eq
c0de468a:	2105      	moveq	r1, #5
c0de468c:	f888 1016 	strb.w	r1, [r8, #22]
c0de4690:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de4694:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de4698:	2272      	movs	r2, #114	@ 0x72
c0de469a:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de469e:	2000      	movs	r0, #0
c0de46a0:	f888 2004 	strb.w	r2, [r8, #4]
c0de46a4:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de46a8:	3101      	adds	r1, #1
c0de46aa:	f888 b006 	strb.w	fp, [r8, #6]
c0de46ae:	f888 0019 	strb.w	r0, [r8, #25]
c0de46b2:	f888 001a 	strb.w	r0, [r8, #26]
c0de46b6:	f888 0005 	strb.w	r0, [r8, #5]
c0de46ba:	f888 001f 	strb.w	r0, [r8, #31]
c0de46be:	f888 2007 	strb.w	r2, [r8, #7]
c0de46c2:	f88a 1002 	strb.w	r1, [sl, #2]
c0de46c6:	b006      	add	sp, #24
c0de46c8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de46cc <nbgl_layoutAddSwitch>:
c0de46cc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de46d0:	2800      	cmp	r0, #0
c0de46d2:	f000 8084 	beq.w	c0de47de <nbgl_layoutAddSwitch+0x112>
c0de46d6:	460d      	mov	r5, r1
c0de46d8:	7841      	ldrb	r1, [r0, #1]
c0de46da:	4604      	mov	r4, r0
c0de46dc:	f000 f92d 	bl	c0de493a <OUTLINED_FUNCTION_5>
c0de46e0:	f04f 0803 	mov.w	r8, #3
c0de46e4:	4606      	mov	r6, r0
c0de46e6:	f880 801f 	strb.w	r8, [r0, #31]
c0de46ea:	6828      	ldr	r0, [r5, #0]
c0de46ec:	f003 f90e 	bl	c0de790c <pic>
c0de46f0:	4601      	mov	r1, r0
c0de46f2:	2072      	movs	r0, #114	@ 0x72
c0de46f4:	2700      	movs	r7, #0
c0de46f6:	2301      	movs	r3, #1
c0de46f8:	7130      	strb	r0, [r6, #4]
c0de46fa:	2008      	movs	r0, #8
c0de46fc:	0e0a      	lsrs	r2, r1, #24
c0de46fe:	7177      	strb	r7, [r6, #5]
c0de4700:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4704:	2005      	movs	r0, #5
c0de4706:	f886 0020 	strb.w	r0, [r6, #32]
c0de470a:	4630      	mov	r0, r6
c0de470c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4710:	70c2      	strb	r2, [r0, #3]
c0de4712:	0c0a      	lsrs	r2, r1, #16
c0de4714:	7082      	strb	r2, [r0, #2]
c0de4716:	0a08      	lsrs	r0, r1, #8
c0de4718:	2272      	movs	r2, #114	@ 0x72
c0de471a:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de471e:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de4722:	f040 0001 	orr.w	r0, r0, #1
c0de4726:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de472a:	2008      	movs	r0, #8
c0de472c:	f002 ff20 	bl	c0de7570 <nbgl_getTextNbLinesInWidth>
c0de4730:	2801      	cmp	r0, #1
c0de4732:	d854      	bhi.n	c0de47de <nbgl_layoutAddSwitch+0x112>
c0de4734:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4738:	f002 ff10 	bl	c0de755c <nbgl_getFontLineHeight>
c0de473c:	6861      	ldr	r1, [r4, #4]
c0de473e:	78a2      	ldrb	r2, [r4, #2]
c0de4740:	76b7      	strb	r7, [r6, #26]
c0de4742:	71f7      	strb	r7, [r6, #7]
c0de4744:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de4748:	71b0      	strb	r0, [r6, #6]
c0de474a:	2002      	movs	r0, #2
c0de474c:	f886 8019 	strb.w	r8, [r6, #25]
c0de4750:	75b0      	strb	r0, [r6, #22]
c0de4752:	1c50      	adds	r0, r2, #1
c0de4754:	70a0      	strb	r0, [r4, #2]
c0de4756:	6868      	ldr	r0, [r5, #4]
c0de4758:	2800      	cmp	r0, #0
c0de475a:	d04e      	beq.n	c0de47fa <nbgl_layoutAddSwitch+0x12e>
c0de475c:	7861      	ldrb	r1, [r4, #1]
c0de475e:	f000 f8ec 	bl	c0de493a <OUTLINED_FUNCTION_5>
c0de4762:	4606      	mov	r6, r0
c0de4764:	2003      	movs	r0, #3
c0de4766:	77f0      	strb	r0, [r6, #31]
c0de4768:	6868      	ldr	r0, [r5, #4]
c0de476a:	f003 f8cf 	bl	c0de790c <pic>
c0de476e:	2172      	movs	r1, #114	@ 0x72
c0de4770:	4637      	mov	r7, r6
c0de4772:	f04f 0800 	mov.w	r8, #0
c0de4776:	f04f 0a05 	mov.w	sl, #5
c0de477a:	7131      	strb	r1, [r6, #4]
c0de477c:	210a      	movs	r1, #10
c0de477e:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de4782:	f886 8005 	strb.w	r8, [r6, #5]
c0de4786:	f886 a020 	strb.w	sl, [r6, #32]
c0de478a:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de478e:	0e01      	lsrs	r1, r0, #24
c0de4790:	70f9      	strb	r1, [r7, #3]
c0de4792:	0c01      	lsrs	r1, r0, #16
c0de4794:	0a00      	lsrs	r0, r0, #8
c0de4796:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de479a:	200a      	movs	r0, #10
c0de479c:	70b9      	strb	r1, [r7, #2]
c0de479e:	f002 fedd 	bl	c0de755c <nbgl_getFontLineHeight>
c0de47a2:	09c1      	lsrs	r1, r0, #7
c0de47a4:	f896 2027 	ldrb.w	r2, [r6, #39]	@ 0x27
c0de47a8:	78bb      	ldrb	r3, [r7, #2]
c0de47aa:	0040      	lsls	r0, r0, #1
c0de47ac:	71f1      	strb	r1, [r6, #7]
c0de47ae:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de47b2:	71b0      	strb	r0, [r6, #6]
c0de47b4:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de47b8:	f041 0101 	orr.w	r1, r1, #1
c0de47bc:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de47c0:	7839      	ldrb	r1, [r7, #0]
c0de47c2:	78ff      	ldrb	r7, [r7, #3]
c0de47c4:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de47c8:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de47cc:	2301      	movs	r3, #1
c0de47ce:	2701      	movs	r7, #1
c0de47d0:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de47d4:	2272      	movs	r2, #114	@ 0x72
c0de47d6:	f002 fecb 	bl	c0de7570 <nbgl_getTextNbLinesInWidth>
c0de47da:	2802      	cmp	r0, #2
c0de47dc:	d902      	bls.n	c0de47e4 <nbgl_layoutAddSwitch+0x118>
c0de47de:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de47e2:	e05c      	b.n	c0de489e <nbgl_layoutAddSwitch+0x1d2>
c0de47e4:	6860      	ldr	r0, [r4, #4]
c0de47e6:	78a1      	ldrb	r1, [r4, #2]
c0de47e8:	f886 801a 	strb.w	r8, [r6, #26]
c0de47ec:	f886 a016 	strb.w	sl, [r6, #22]
c0de47f0:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de47f4:	1c48      	adds	r0, r1, #1
c0de47f6:	7677      	strb	r7, [r6, #25]
c0de47f8:	70a0      	strb	r0, [r4, #2]
c0de47fa:	7861      	ldrb	r1, [r4, #1]
c0de47fc:	2005      	movs	r0, #5
c0de47fe:	f002 fe9e 	bl	c0de753e <nbgl_objPoolGet>
c0de4802:	2600      	movs	r6, #0
c0de4804:	4607      	mov	r7, r0
c0de4806:	f04f 0a03 	mov.w	sl, #3
c0de480a:	f04f 0808 	mov.w	r8, #8
c0de480e:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de4812:	2001      	movs	r0, #1
c0de4814:	f887 a020 	strb.w	sl, [r7, #32]
c0de4818:	f887 a01f 	strb.w	sl, [r7, #31]
c0de481c:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de4820:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4824:	7a28      	ldrb	r0, [r5, #8]
c0de4826:	4a1f      	ldr	r2, [pc, #124]	@ (c0de48a4 <nbgl_layoutAddSwitch+0x1d8>)
c0de4828:	491f      	ldr	r1, [pc, #124]	@ (c0de48a8 <nbgl_layoutAddSwitch+0x1dc>)
c0de482a:	2801      	cmp	r0, #1
c0de482c:	447a      	add	r2, pc
c0de482e:	4479      	add	r1, pc
c0de4830:	bf08      	it	eq
c0de4832:	4611      	moveq	r1, r2
c0de4834:	463a      	mov	r2, r7
c0de4836:	0e0b      	lsrs	r3, r1, #24
c0de4838:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de483c:	70d3      	strb	r3, [r2, #3]
c0de483e:	0c0b      	lsrs	r3, r1, #16
c0de4840:	7093      	strb	r3, [r2, #2]
c0de4842:	0a0a      	lsrs	r2, r1, #8
c0de4844:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4848:	2801      	cmp	r0, #1
c0de484a:	4638      	mov	r0, r7
c0de484c:	4a17      	ldr	r2, [pc, #92]	@ (c0de48ac <nbgl_layoutAddSwitch+0x1e0>)
c0de484e:	4d18      	ldr	r5, [pc, #96]	@ (c0de48b0 <nbgl_layoutAddSwitch+0x1e4>)
c0de4850:	447a      	add	r2, pc
c0de4852:	447d      	add	r5, pc
c0de4854:	bf18      	it	ne
c0de4856:	462a      	movne	r2, r5
c0de4858:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de485c:	0e13      	lsrs	r3, r2, #24
c0de485e:	70c3      	strb	r3, [r0, #3]
c0de4860:	0c13      	lsrs	r3, r2, #16
c0de4862:	7083      	strb	r3, [r0, #2]
c0de4864:	0a10      	lsrs	r0, r2, #8
c0de4866:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de486a:	2008      	movs	r0, #8
c0de486c:	f002 fe8a 	bl	c0de7584 <nbgl_getTextWidth>
c0de4870:	6861      	ldr	r1, [r4, #4]
c0de4872:	78a2      	ldrb	r2, [r4, #2]
c0de4874:	786b      	ldrb	r3, [r5, #1]
c0de4876:	76be      	strb	r6, [r7, #26]
c0de4878:	71fe      	strb	r6, [r7, #7]
c0de487a:	f887 8016 	strb.w	r8, [r7, #22]
c0de487e:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de4882:	210c      	movs	r1, #12
c0de4884:	f887 a019 	strb.w	sl, [r7, #25]
c0de4888:	71b9      	strb	r1, [r7, #6]
c0de488a:	7829      	ldrb	r1, [r5, #0]
c0de488c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4890:	4408      	add	r0, r1
c0de4892:	1c51      	adds	r1, r2, #1
c0de4894:	300a      	adds	r0, #10
c0de4896:	7138      	strb	r0, [r7, #4]
c0de4898:	0a00      	lsrs	r0, r0, #8
c0de489a:	70a1      	strb	r1, [r4, #2]
c0de489c:	7178      	strb	r0, [r7, #5]
c0de489e:	4630      	mov	r0, r6
c0de48a0:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de48a4:	00003ad5 	.word	0x00003ad5
c0de48a8:	00003ba2 	.word	0x00003ba2
c0de48ac:	0000386d 	.word	0x0000386d
c0de48b0:	00003855 	.word	0x00003855

c0de48b4 <nbgl_layoutDraw>:
c0de48b4:	b120      	cbz	r0, c0de48c0 <nbgl_layoutDraw+0xc>
c0de48b6:	b580      	push	{r7, lr}
c0de48b8:	f002 fe32 	bl	c0de7520 <nbgl_screenRedraw>
c0de48bc:	2000      	movs	r0, #0
c0de48be:	bd80      	pop	{r7, pc}
c0de48c0:	f000 b84a 	b.w	c0de4958 <OUTLINED_FUNCTION_8>

c0de48c4 <nbgl_layoutRelease>:
c0de48c4:	b148      	cbz	r0, c0de48da <nbgl_layoutRelease+0x16>
c0de48c6:	b510      	push	{r4, lr}
c0de48c8:	4604      	mov	r4, r0
c0de48ca:	7800      	ldrb	r0, [r0, #0]
c0de48cc:	b110      	cbz	r0, c0de48d4 <nbgl_layoutRelease+0x10>
c0de48ce:	7860      	ldrb	r0, [r4, #1]
c0de48d0:	f002 fe2b 	bl	c0de752a <nbgl_screenPop>
c0de48d4:	2000      	movs	r0, #0
c0de48d6:	70a0      	strb	r0, [r4, #2]
c0de48d8:	bd10      	pop	{r4, pc}
c0de48da:	f000 b83d 	b.w	c0de4958 <OUTLINED_FUNCTION_8>

c0de48de <OUTLINED_FUNCTION_0>:
c0de48de:	4638      	mov	r0, r7
c0de48e0:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de48e4:	70c2      	strb	r2, [r0, #3]
c0de48e6:	0c0a      	lsrs	r2, r1, #16
c0de48e8:	7082      	strb	r2, [r0, #2]
c0de48ea:	0a08      	lsrs	r0, r1, #8
c0de48ec:	2272      	movs	r2, #114	@ 0x72
c0de48ee:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de48f2:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de48f6:	f040 0001 	orr.w	r0, r0, #1
c0de48fa:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de48fe:	200a      	movs	r0, #10
c0de4900:	f002 be36 	b.w	c0de7570 <nbgl_getTextNbLinesInWidth>

c0de4904 <OUTLINED_FUNCTION_2>:
c0de4904:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4908:	784b      	ldrb	r3, [r1, #1]
c0de490a:	788d      	ldrb	r5, [r1, #2]
c0de490c:	78c9      	ldrb	r1, [r1, #3]
c0de490e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4912:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4916:	9d05      	ldr	r5, [sp, #20]
c0de4918:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de491c:	4770      	bx	lr

c0de491e <OUTLINED_FUNCTION_3>:
c0de491e:	70c2      	strb	r2, [r0, #3]
c0de4920:	0c0a      	lsrs	r2, r1, #16
c0de4922:	7082      	strb	r2, [r0, #2]
c0de4924:	0a08      	lsrs	r0, r1, #8
c0de4926:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de492a:	2008      	movs	r0, #8
c0de492c:	f002 be2a 	b.w	c0de7584 <nbgl_getTextWidth>

c0de4930 <OUTLINED_FUNCTION_4>:
c0de4930:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4934:	2272      	movs	r2, #114	@ 0x72
c0de4936:	f002 be2a 	b.w	c0de758e <nbgl_getTextMaxLenInNbLines>

c0de493a <OUTLINED_FUNCTION_5>:
c0de493a:	2004      	movs	r0, #4
c0de493c:	f002 bdff 	b.w	c0de753e <nbgl_objPoolGet>

c0de4940 <OUTLINED_FUNCTION_6>:
c0de4940:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4944:	f002 be05 	b.w	c0de7552 <nbgl_getFont>

c0de4948 <OUTLINED_FUNCTION_7>:
c0de4948:	2100      	movs	r1, #0
c0de494a:	463a      	mov	r2, r7
c0de494c:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4950:	70d1      	strb	r1, [r2, #3]
c0de4952:	7091      	strb	r1, [r2, #2]
c0de4954:	7051      	strb	r1, [r2, #1]
c0de4956:	4770      	bx	lr

c0de4958 <OUTLINED_FUNCTION_8>:
c0de4958:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de495c:	4770      	bx	lr

c0de495e <OUTLINED_FUNCTION_9>:
c0de495e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4962:	2003      	movs	r0, #3
c0de4964:	f887 0020 	strb.w	r0, [r7, #32]
c0de4968:	77f8      	strb	r0, [r7, #31]
c0de496a:	4770      	bx	lr

c0de496c <nbgl_stepDrawText>:
c0de496c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4970:	460e      	mov	r6, r1
c0de4972:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de4974:	4605      	mov	r5, r0
c0de4976:	2000      	movs	r0, #0
c0de4978:	469a      	mov	sl, r3
c0de497a:	4617      	mov	r7, r2
c0de497c:	f000 f830 	bl	c0de49e0 <getFreeContext>
c0de4980:	b348      	cbz	r0, c0de49d6 <nbgl_stepDrawText+0x6a>
c0de4982:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de4986:	4604      	mov	r4, r0
c0de4988:	6146      	str	r6, [r0, #20]
c0de498a:	b10f      	cbz	r7, c0de4990 <nbgl_stepDrawText+0x24>
c0de498c:	f000 fae1 	bl	c0de4f52 <OUTLINED_FUNCTION_1>
c0de4990:	200a      	movs	r0, #10
c0de4992:	f1b8 0f00 	cmp.w	r8, #0
c0de4996:	bf19      	ittee	ne
c0de4998:	4641      	movne	r1, r8
c0de499a:	2203      	movne	r2, #3
c0de499c:	4651      	moveq	r1, sl
c0de499e:	2204      	moveq	r2, #4
c0de49a0:	2372      	movs	r3, #114	@ 0x72
c0de49a2:	f002 fdea 	bl	c0de757a <nbgl_getTextNbPagesInWidth>
c0de49a6:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de49a8:	7020      	strb	r0, [r4, #0]
c0de49aa:	072a      	lsls	r2, r5, #28
c0de49ac:	bf46      	itte	mi
c0de49ae:	3801      	submi	r0, #1
c0de49b0:	7060      	strbmi	r0, [r4, #1]
c0de49b2:	7860      	ldrbpl	r0, [r4, #1]
c0de49b4:	f8c4 800c 	str.w	r8, [r4, #12]
c0de49b8:	f8c4 a004 	str.w	sl, [r4, #4]
c0de49bc:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de49c0:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de49c4:	7461      	strb	r1, [r4, #17]
c0de49c6:	f005 0103 	and.w	r1, r5, #3
c0de49ca:	7421      	strb	r1, [r4, #16]
c0de49cc:	b2c1      	uxtb	r1, r0
c0de49ce:	4620      	mov	r0, r4
c0de49d0:	f000 f82c 	bl	c0de4a2c <displayTextPage>
c0de49d4:	e000      	b.n	c0de49d8 <nbgl_stepDrawText+0x6c>
c0de49d6:	2400      	movs	r4, #0
c0de49d8:	4620      	mov	r0, r4
c0de49da:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de49e0 <getFreeContext>:
c0de49e0:	b570      	push	{r4, r5, r6, lr}
c0de49e2:	4604      	mov	r4, r0
c0de49e4:	4810      	ldr	r0, [pc, #64]	@ (c0de4a28 <getFreeContext+0x48>)
c0de49e6:	460d      	mov	r5, r1
c0de49e8:	b151      	cbz	r1, c0de4a00 <getFreeContext+0x20>
c0de49ea:	2100      	movs	r1, #0
c0de49ec:	2990      	cmp	r1, #144	@ 0x90
c0de49ee:	d00a      	beq.n	c0de4a06 <getFreeContext+0x26>
c0de49f0:	eb09 0200 	add.w	r2, r9, r0
c0de49f4:	440a      	add	r2, r1
c0de49f6:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de49fa:	b132      	cbz	r2, c0de4a0a <getFreeContext+0x2a>
c0de49fc:	3148      	adds	r1, #72	@ 0x48
c0de49fe:	e7f5      	b.n	c0de49ec <getFreeContext+0xc>
c0de4a00:	eb09 0600 	add.w	r6, r9, r0
c0de4a04:	e005      	b.n	c0de4a12 <getFreeContext+0x32>
c0de4a06:	2600      	movs	r6, #0
c0de4a08:	e00b      	b.n	c0de4a22 <getFreeContext+0x42>
c0de4a0a:	4448      	add	r0, r9
c0de4a0c:	4408      	add	r0, r1
c0de4a0e:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de4a12:	4630      	mov	r0, r6
c0de4a14:	2148      	movs	r1, #72	@ 0x48
c0de4a16:	f003 fa85 	bl	c0de7f24 <__aeabi_memclr>
c0de4a1a:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de4a1e:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de4a22:	4630      	mov	r0, r6
c0de4a24:	bd70      	pop	{r4, r5, r6, pc}
c0de4a26:	bf00      	nop
c0de4a28:	000008f8 	.word	0x000008f8

c0de4a2c <displayTextPage>:
c0de4a2c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4a30:	b091      	sub	sp, #68	@ 0x44
c0de4a32:	4604      	mov	r4, r0
c0de4a34:	7840      	ldrb	r0, [r0, #1]
c0de4a36:	460e      	mov	r6, r1
c0de4a38:	4288      	cmp	r0, r1
c0de4a3a:	d21c      	bcs.n	c0de4a76 <displayTextPage+0x4a>
c0de4a3c:	68a5      	ldr	r5, [r4, #8]
c0de4a3e:	7820      	ldrb	r0, [r4, #0]
c0de4a40:	7066      	strb	r6, [r4, #1]
c0de4a42:	3801      	subs	r0, #1
c0de4a44:	42b0      	cmp	r0, r6
c0de4a46:	dd31      	ble.n	c0de4aac <displayTextPage+0x80>
c0de4a48:	68e0      	ldr	r0, [r4, #12]
c0de4a4a:	2101      	movs	r1, #1
c0de4a4c:	2303      	movs	r3, #3
c0de4a4e:	aa08      	add	r2, sp, #32
c0de4a50:	e9cd 2100 	strd	r2, r1, [sp]
c0de4a54:	4629      	mov	r1, r5
c0de4a56:	2800      	cmp	r0, #0
c0de4a58:	bf08      	it	eq
c0de4a5a:	2304      	moveq	r3, #4
c0de4a5c:	200a      	movs	r0, #10
c0de4a5e:	2272      	movs	r2, #114	@ 0x72
c0de4a60:	f002 fd95 	bl	c0de758e <nbgl_getTextMaxLenInNbLines>
c0de4a64:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de4a68:	1868      	adds	r0, r5, r1
c0de4a6a:	60a0      	str	r0, [r4, #8]
c0de4a6c:	5c69      	ldrb	r1, [r5, r1]
c0de4a6e:	290a      	cmp	r1, #10
c0de4a70:	d11e      	bne.n	c0de4ab0 <displayTextPage+0x84>
c0de4a72:	3001      	adds	r0, #1
c0de4a74:	e01b      	b.n	c0de4aae <displayTextPage+0x82>
c0de4a76:	68e5      	ldr	r5, [r4, #12]
c0de4a78:	2d00      	cmp	r5, #0
c0de4a7a:	d074      	beq.n	c0de4b66 <displayTextPage+0x13a>
c0de4a7c:	2700      	movs	r7, #0
c0de4a7e:	f04f 0801 	mov.w	r8, #1
c0de4a82:	f10d 0a20 	add.w	sl, sp, #32
c0de4a86:	42be      	cmp	r6, r7
c0de4a88:	d0d9      	beq.n	c0de4a3e <displayTextPage+0x12>
c0de4a8a:	7820      	ldrb	r0, [r4, #0]
c0de4a8c:	3801      	subs	r0, #1
c0de4a8e:	42b8      	cmp	r0, r7
c0de4a90:	dd0a      	ble.n	c0de4aa8 <displayTextPage+0x7c>
c0de4a92:	200a      	movs	r0, #10
c0de4a94:	4629      	mov	r1, r5
c0de4a96:	2272      	movs	r2, #114	@ 0x72
c0de4a98:	2303      	movs	r3, #3
c0de4a9a:	e9cd a800 	strd	sl, r8, [sp]
c0de4a9e:	f002 fd76 	bl	c0de758e <nbgl_getTextMaxLenInNbLines>
c0de4aa2:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4aa6:	4405      	add	r5, r0
c0de4aa8:	3701      	adds	r7, #1
c0de4aaa:	e7ec      	b.n	c0de4a86 <displayTextPage+0x5a>
c0de4aac:	2000      	movs	r0, #0
c0de4aae:	60a0      	str	r0, [r4, #8]
c0de4ab0:	484f      	ldr	r0, [pc, #316]	@ (c0de4bf0 <displayTextPage+0x1c4>)
c0de4ab2:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4ab6:	4478      	add	r0, pc
c0de4ab8:	9004      	str	r0, [sp, #16]
c0de4aba:	2000      	movs	r0, #0
c0de4abc:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4ac0:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4ac4:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4ac8:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4aca:	ab05      	add	r3, sp, #20
c0de4acc:	c307      	stmia	r3!, {r0, r1, r2}
c0de4ace:	a803      	add	r0, sp, #12
c0de4ad0:	f7ff f986 	bl	c0de3de0 <nbgl_layoutGet>
c0de4ad4:	7827      	ldrb	r7, [r4, #0]
c0de4ad6:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de4ada:	4606      	mov	r6, r0
c0de4adc:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4ade:	7c20      	ldrb	r0, [r4, #16]
c0de4ae0:	4639      	mov	r1, r7
c0de4ae2:	4652      	mov	r2, sl
c0de4ae4:	f000 f8fc 	bl	c0de4ce0 <getNavigationInfo>
c0de4ae8:	4680      	mov	r8, r0
c0de4aea:	f88d 000b 	strb.w	r0, [sp, #11]
c0de4aee:	68e0      	ldr	r0, [r4, #12]
c0de4af0:	b188      	cbz	r0, c0de4b16 <displayTextPage+0xea>
c0de4af2:	2f01      	cmp	r7, #1
c0de4af4:	d115      	bne.n	c0de4b22 <displayTextPage+0xf6>
c0de4af6:	6861      	ldr	r1, [r4, #4]
c0de4af8:	2008      	movs	r0, #8
c0de4afa:	2272      	movs	r2, #114	@ 0x72
c0de4afc:	2300      	movs	r3, #0
c0de4afe:	2600      	movs	r6, #0
c0de4b00:	f002 fd36 	bl	c0de7570 <nbgl_getTextNbLinesInWidth>
c0de4b04:	2802      	cmp	r0, #2
c0de4b06:	d348      	bcc.n	c0de4b9a <displayTextPage+0x16e>
c0de4b08:	6861      	ldr	r1, [r4, #4]
c0de4b0a:	2018      	movs	r0, #24
c0de4b0c:	f104 0218 	add.w	r2, r4, #24
c0de4b10:	e9cd 2000 	strd	r2, r0, [sp]
c0de4b14:	e021      	b.n	c0de4b5a <displayTextPage+0x12e>
c0de4b16:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4b1a:	4630      	mov	r0, r6
c0de4b1c:	4629      	mov	r1, r5
c0de4b1e:	2200      	movs	r2, #0
c0de4b20:	e055      	b.n	c0de4bce <displayTextPage+0x1a2>
c0de4b22:	f10a 0001 	add.w	r0, sl, #1
c0de4b26:	6863      	ldr	r3, [r4, #4]
c0de4b28:	2124      	movs	r1, #36	@ 0x24
c0de4b2a:	e9cd 0700 	strd	r0, r7, [sp]
c0de4b2e:	af08      	add	r7, sp, #32
c0de4b30:	4a30      	ldr	r2, [pc, #192]	@ (c0de4bf4 <displayTextPage+0x1c8>)
c0de4b32:	4638      	mov	r0, r7
c0de4b34:	447a      	add	r2, pc
c0de4b36:	f002 fd57 	bl	c0de75e8 <snprintf>
c0de4b3a:	2008      	movs	r0, #8
c0de4b3c:	4639      	mov	r1, r7
c0de4b3e:	2272      	movs	r2, #114	@ 0x72
c0de4b40:	2300      	movs	r3, #0
c0de4b42:	f04f 0a00 	mov.w	sl, #0
c0de4b46:	f002 fd13 	bl	c0de7570 <nbgl_getTextNbLinesInWidth>
c0de4b4a:	f104 0c18 	add.w	ip, r4, #24
c0de4b4e:	2802      	cmp	r0, #2
c0de4b50:	d32c      	bcc.n	c0de4bac <displayTextPage+0x180>
c0de4b52:	2018      	movs	r0, #24
c0de4b54:	e9cd c000 	strd	ip, r0, [sp]
c0de4b58:	a908      	add	r1, sp, #32
c0de4b5a:	2008      	movs	r0, #8
c0de4b5c:	2272      	movs	r2, #114	@ 0x72
c0de4b5e:	2301      	movs	r3, #1
c0de4b60:	f002 fd1a 	bl	c0de7598 <nbgl_textReduceOnNbLines>
c0de4b64:	e02d      	b.n	c0de4bc2 <displayTextPage+0x196>
c0de4b66:	6865      	ldr	r5, [r4, #4]
c0de4b68:	2700      	movs	r7, #0
c0de4b6a:	f04f 0801 	mov.w	r8, #1
c0de4b6e:	f10d 0a20 	add.w	sl, sp, #32
c0de4b72:	42be      	cmp	r6, r7
c0de4b74:	f43f af63 	beq.w	c0de4a3e <displayTextPage+0x12>
c0de4b78:	7820      	ldrb	r0, [r4, #0]
c0de4b7a:	3801      	subs	r0, #1
c0de4b7c:	42b8      	cmp	r0, r7
c0de4b7e:	dd0a      	ble.n	c0de4b96 <displayTextPage+0x16a>
c0de4b80:	200a      	movs	r0, #10
c0de4b82:	4629      	mov	r1, r5
c0de4b84:	2272      	movs	r2, #114	@ 0x72
c0de4b86:	2304      	movs	r3, #4
c0de4b88:	e9cd a800 	strd	sl, r8, [sp]
c0de4b8c:	f002 fcff 	bl	c0de758e <nbgl_getTextMaxLenInNbLines>
c0de4b90:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4b94:	4405      	add	r5, r0
c0de4b96:	3701      	adds	r7, #1
c0de4b98:	e7eb      	b.n	c0de4b72 <displayTextPage+0x146>
c0de4b9a:	6861      	ldr	r1, [r4, #4]
c0de4b9c:	f104 0018 	add.w	r0, r4, #24
c0de4ba0:	2217      	movs	r2, #23
c0de4ba2:	f003 f9b5 	bl	c0de7f10 <__aeabi_memcpy>
c0de4ba6:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de4baa:	e00a      	b.n	c0de4bc2 <displayTextPage+0x196>
c0de4bac:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de4bae:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de4bb2:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4bb6:	8838      	ldrh	r0, [r7, #0]
c0de4bb8:	f8ac 0000 	strh.w	r0, [ip]
c0de4bbc:	78b8      	ldrb	r0, [r7, #2]
c0de4bbe:	f88c 0002 	strb.w	r0, [ip, #2]
c0de4bc2:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4bc6:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bc8:	f104 0118 	add.w	r1, r4, #24
c0de4bcc:	462a      	mov	r2, r5
c0de4bce:	f7ff f9c9 	bl	c0de3f64 <nbgl_layoutAddText>
c0de4bd2:	f1b8 0f00 	cmp.w	r8, #0
c0de4bd6:	d004      	beq.n	c0de4be2 <displayTextPage+0x1b6>
c0de4bd8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bda:	f10d 010a 	add.w	r1, sp, #10
c0de4bde:	f7ff f963 	bl	c0de3ea8 <nbgl_layoutAddNavigation>
c0de4be2:	f000 f9e9 	bl	c0de4fb8 <OUTLINED_FUNCTION_4>
c0de4be6:	f002 fc82 	bl	c0de74ee <nbgl_refresh>
c0de4bea:	b011      	add	sp, #68	@ 0x44
c0de4bec:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4bf0:	000001bb 	.word	0x000001bb
c0de4bf4:	000036c6 	.word	0x000036c6

c0de4bf8 <nbgl_stepDrawCenteredInfo>:
c0de4bf8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4bfc:	b087      	sub	sp, #28
c0de4bfe:	460d      	mov	r5, r1
c0de4c00:	4682      	mov	sl, r0
c0de4c02:	a802      	add	r0, sp, #8
c0de4c04:	f000 f9d3 	bl	c0de4fae <OUTLINED_FUNCTION_3>
c0de4c08:	4819      	ldr	r0, [pc, #100]	@ (c0de4c70 <nbgl_stepDrawCenteredInfo+0x78>)
c0de4c0a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4c0c:	4478      	add	r0, pc
c0de4c0e:	f000 f9c5 	bl	c0de4f9c <OUTLINED_FUNCTION_2>
c0de4c12:	b168      	cbz	r0, c0de4c30 <nbgl_stepDrawCenteredInfo+0x38>
c0de4c14:	4604      	mov	r4, r0
c0de4c16:	6145      	str	r5, [r0, #20]
c0de4c18:	b10f      	cbz	r7, c0de4c1e <nbgl_stepDrawCenteredInfo+0x26>
c0de4c1a:	f000 f953 	bl	c0de4ec4 <OUTLINED_FUNCTION_0>
c0de4c1e:	f000 f9ce 	bl	c0de4fbe <OUTLINED_FUNCTION_5>
c0de4c22:	d007      	beq.n	c0de4c34 <nbgl_stepDrawCenteredInfo+0x3c>
c0de4c24:	2802      	cmp	r0, #2
c0de4c26:	d007      	beq.n	c0de4c38 <nbgl_stepDrawCenteredInfo+0x40>
c0de4c28:	2801      	cmp	r0, #1
c0de4c2a:	d108      	bne.n	c0de4c3e <nbgl_stepDrawCenteredInfo+0x46>
c0de4c2c:	2002      	movs	r0, #2
c0de4c2e:	e004      	b.n	c0de4c3a <nbgl_stepDrawCenteredInfo+0x42>
c0de4c30:	2400      	movs	r4, #0
c0de4c32:	e018      	b.n	c0de4c66 <nbgl_stepDrawCenteredInfo+0x6e>
c0de4c34:	2003      	movs	r0, #3
c0de4c36:	e000      	b.n	c0de4c3a <nbgl_stepDrawCenteredInfo+0x42>
c0de4c38:	2001      	movs	r0, #1
c0de4c3a:	2500      	movs	r5, #0
c0de4c3c:	e000      	b.n	c0de4c40 <nbgl_stepDrawCenteredInfo+0x48>
c0de4c3e:	2000      	movs	r0, #0
c0de4c40:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4c44:	a802      	add	r0, sp, #8
c0de4c46:	f7ff f8cb 	bl	c0de3de0 <nbgl_layoutGet>
c0de4c4a:	4641      	mov	r1, r8
c0de4c4c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4c4e:	f7ff fb9d 	bl	c0de438c <nbgl_layoutAddCenteredInfo>
c0de4c52:	b925      	cbnz	r5, c0de4c5e <nbgl_stepDrawCenteredInfo+0x66>
c0de4c54:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4c56:	f10d 0106 	add.w	r1, sp, #6
c0de4c5a:	f7ff f925 	bl	c0de3ea8 <nbgl_layoutAddNavigation>
c0de4c5e:	f000 f9ab 	bl	c0de4fb8 <OUTLINED_FUNCTION_4>
c0de4c62:	f002 fc44 	bl	c0de74ee <nbgl_refresh>
c0de4c66:	4620      	mov	r0, r4
c0de4c68:	b007      	add	sp, #28
c0de4c6a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4c6e:	bf00      	nop
c0de4c70:	00000065 	.word	0x00000065

c0de4c74 <actionCallback>:
c0de4c74:	b510      	push	{r4, lr}
c0de4c76:	460c      	mov	r4, r1
c0de4c78:	f000 f8f0 	bl	c0de4e5c <getContextFromLayout>
c0de4c7c:	b378      	cbz	r0, c0de4cde <actionCallback+0x6a>
c0de4c7e:	2c04      	cmp	r4, #4
c0de4c80:	d006      	beq.n	c0de4c90 <actionCallback+0x1c>
c0de4c82:	2c01      	cmp	r4, #1
c0de4c84:	d008      	beq.n	c0de4c98 <actionCallback+0x24>
c0de4c86:	bb54      	cbnz	r4, c0de4cde <actionCallback+0x6a>
c0de4c88:	7841      	ldrb	r1, [r0, #1]
c0de4c8a:	b1d9      	cbz	r1, c0de4cc4 <actionCallback+0x50>
c0de4c8c:	3901      	subs	r1, #1
c0de4c8e:	e009      	b.n	c0de4ca4 <actionCallback+0x30>
c0de4c90:	6942      	ldr	r2, [r0, #20]
c0de4c92:	b322      	cbz	r2, c0de4cde <actionCallback+0x6a>
c0de4c94:	2104      	movs	r1, #4
c0de4c96:	e01f      	b.n	c0de4cd8 <actionCallback+0x64>
c0de4c98:	7802      	ldrb	r2, [r0, #0]
c0de4c9a:	7841      	ldrb	r1, [r0, #1]
c0de4c9c:	3a01      	subs	r2, #1
c0de4c9e:	428a      	cmp	r2, r1
c0de4ca0:	dd05      	ble.n	c0de4cae <actionCallback+0x3a>
c0de4ca2:	3101      	adds	r1, #1
c0de4ca4:	b2c9      	uxtb	r1, r1
c0de4ca6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4caa:	f7ff bebf 	b.w	c0de4a2c <displayTextPage>
c0de4cae:	7c01      	ldrb	r1, [r0, #16]
c0de4cb0:	f041 0102 	orr.w	r1, r1, #2
c0de4cb4:	2903      	cmp	r1, #3
c0de4cb6:	d001      	beq.n	c0de4cbc <actionCallback+0x48>
c0de4cb8:	7c41      	ldrb	r1, [r0, #17]
c0de4cba:	b181      	cbz	r1, c0de4cde <actionCallback+0x6a>
c0de4cbc:	6942      	ldr	r2, [r0, #20]
c0de4cbe:	b172      	cbz	r2, c0de4cde <actionCallback+0x6a>
c0de4cc0:	2101      	movs	r1, #1
c0de4cc2:	e009      	b.n	c0de4cd8 <actionCallback+0x64>
c0de4cc4:	7c01      	ldrb	r1, [r0, #16]
c0de4cc6:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de4cca:	2902      	cmp	r1, #2
c0de4ccc:	d001      	beq.n	c0de4cd2 <actionCallback+0x5e>
c0de4cce:	7c41      	ldrb	r1, [r0, #17]
c0de4cd0:	b129      	cbz	r1, c0de4cde <actionCallback+0x6a>
c0de4cd2:	6942      	ldr	r2, [r0, #20]
c0de4cd4:	b11a      	cbz	r2, c0de4cde <actionCallback+0x6a>
c0de4cd6:	2100      	movs	r1, #0
c0de4cd8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4cdc:	4710      	bx	r2
c0de4cde:	bd10      	pop	{r4, pc}

c0de4ce0 <getNavigationInfo>:
c0de4ce0:	4603      	mov	r3, r0
c0de4ce2:	2902      	cmp	r1, #2
c0de4ce4:	d308      	bcc.n	c0de4cf8 <getNavigationInfo+0x18>
c0de4ce6:	3901      	subs	r1, #1
c0de4ce8:	4610      	mov	r0, r2
c0de4cea:	2a00      	cmp	r2, #0
c0de4cec:	bf18      	it	ne
c0de4cee:	2001      	movne	r0, #1
c0de4cf0:	4291      	cmp	r1, r2
c0de4cf2:	bf88      	it	hi
c0de4cf4:	3002      	addhi	r0, #2
c0de4cf6:	e000      	b.n	c0de4cfa <getNavigationInfo+0x1a>
c0de4cf8:	2000      	movs	r0, #0
c0de4cfa:	2b03      	cmp	r3, #3
c0de4cfc:	d00a      	beq.n	c0de4d14 <getNavigationInfo+0x34>
c0de4cfe:	2b02      	cmp	r3, #2
c0de4d00:	bf04      	itt	eq
c0de4d02:	f040 0001 	orreq.w	r0, r0, #1
c0de4d06:	4770      	bxeq	lr
c0de4d08:	2b01      	cmp	r3, #1
c0de4d0a:	bf04      	itt	eq
c0de4d0c:	f040 0002 	orreq.w	r0, r0, #2
c0de4d10:	4770      	bxeq	lr
c0de4d12:	4770      	bx	lr
c0de4d14:	2003      	movs	r0, #3
c0de4d16:	4770      	bx	lr

c0de4d18 <nbgl_stepDrawMenuList>:
c0de4d18:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4d1a:	460f      	mov	r7, r1
c0de4d1c:	4606      	mov	r6, r0
c0de4d1e:	2002      	movs	r0, #2
c0de4d20:	4619      	mov	r1, r3
c0de4d22:	4615      	mov	r5, r2
c0de4d24:	f7ff fe5c 	bl	c0de49e0 <getFreeContext>
c0de4d28:	b170      	cbz	r0, c0de4d48 <nbgl_stepDrawMenuList+0x30>
c0de4d2a:	4604      	mov	r4, r0
c0de4d2c:	b10f      	cbz	r7, c0de4d32 <nbgl_stepDrawMenuList+0x1a>
c0de4d2e:	f000 f910 	bl	c0de4f52 <OUTLINED_FUNCTION_1>
c0de4d32:	7928      	ldrb	r0, [r5, #4]
c0de4d34:	7220      	strb	r0, [r4, #8]
c0de4d36:	7968      	ldrb	r0, [r5, #5]
c0de4d38:	7260      	strb	r0, [r4, #9]
c0de4d3a:	6828      	ldr	r0, [r5, #0]
c0de4d3c:	e9c4 6000 	strd	r6, r0, [r4]
c0de4d40:	4620      	mov	r0, r4
c0de4d42:	f000 f805 	bl	c0de4d50 <displayMenuList>
c0de4d46:	e000      	b.n	c0de4d4a <nbgl_stepDrawMenuList+0x32>
c0de4d48:	2400      	movs	r4, #0
c0de4d4a:	4620      	mov	r0, r4
c0de4d4c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de4d50 <displayMenuList>:
c0de4d50:	b5b0      	push	{r4, r5, r7, lr}
c0de4d52:	b086      	sub	sp, #24
c0de4d54:	4604      	mov	r4, r0
c0de4d56:	2000      	movs	r0, #0
c0de4d58:	9001      	str	r0, [sp, #4]
c0de4d5a:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4d5e:	4819      	ldr	r0, [pc, #100]	@ (c0de4dc4 <displayMenuList+0x74>)
c0de4d60:	4478      	add	r0, pc
c0de4d62:	9002      	str	r0, [sp, #8]
c0de4d64:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4d68:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4d6c:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4d6e:	ab03      	add	r3, sp, #12
c0de4d70:	c307      	stmia	r3!, {r0, r1, r2}
c0de4d72:	a801      	add	r0, sp, #4
c0de4d74:	f7ff f834 	bl	c0de3de0 <nbgl_layoutGet>
c0de4d78:	1d25      	adds	r5, r4, #4
c0de4d7a:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4d7c:	4629      	mov	r1, r5
c0de4d7e:	f7ff fab1 	bl	c0de42e4 <nbgl_layoutAddMenuList>
c0de4d82:	7a20      	ldrb	r0, [r4, #8]
c0de4d84:	2802      	cmp	r0, #2
c0de4d86:	d316      	bcc.n	c0de4db6 <displayMenuList+0x66>
c0de4d88:	2101      	movs	r1, #1
c0de4d8a:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de4d8e:	7969      	ldrb	r1, [r5, #5]
c0de4d90:	2900      	cmp	r1, #0
c0de4d92:	460a      	mov	r2, r1
c0de4d94:	bf18      	it	ne
c0de4d96:	2201      	movne	r2, #1
c0de4d98:	3801      	subs	r0, #1
c0de4d9a:	f88d 2003 	strb.w	r2, [sp, #3]
c0de4d9e:	4288      	cmp	r0, r1
c0de4da0:	d903      	bls.n	c0de4daa <displayMenuList+0x5a>
c0de4da2:	1c90      	adds	r0, r2, #2
c0de4da4:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4da8:	e000      	b.n	c0de4dac <displayMenuList+0x5c>
c0de4daa:	b121      	cbz	r1, c0de4db6 <displayMenuList+0x66>
c0de4dac:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4dae:	f10d 0102 	add.w	r1, sp, #2
c0de4db2:	f7ff f879 	bl	c0de3ea8 <nbgl_layoutAddNavigation>
c0de4db6:	f000 f8ff 	bl	c0de4fb8 <OUTLINED_FUNCTION_4>
c0de4dba:	f002 fb98 	bl	c0de74ee <nbgl_refresh>
c0de4dbe:	b006      	add	sp, #24
c0de4dc0:	bdb0      	pop	{r4, r5, r7, pc}
c0de4dc2:	bf00      	nop
c0de4dc4:	00000121 	.word	0x00000121

c0de4dc8 <nbgl_stepDrawSwitch>:
c0de4dc8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4dcc:	b087      	sub	sp, #28
c0de4dce:	460d      	mov	r5, r1
c0de4dd0:	4682      	mov	sl, r0
c0de4dd2:	a802      	add	r0, sp, #8
c0de4dd4:	f000 f8eb 	bl	c0de4fae <OUTLINED_FUNCTION_3>
c0de4dd8:	4819      	ldr	r0, [pc, #100]	@ (c0de4e40 <nbgl_stepDrawSwitch+0x78>)
c0de4dda:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4ddc:	4478      	add	r0, pc
c0de4dde:	f000 f8dd 	bl	c0de4f9c <OUTLINED_FUNCTION_2>
c0de4de2:	b168      	cbz	r0, c0de4e00 <nbgl_stepDrawSwitch+0x38>
c0de4de4:	4604      	mov	r4, r0
c0de4de6:	6145      	str	r5, [r0, #20]
c0de4de8:	b10f      	cbz	r7, c0de4dee <nbgl_stepDrawSwitch+0x26>
c0de4dea:	f000 f86b 	bl	c0de4ec4 <OUTLINED_FUNCTION_0>
c0de4dee:	f000 f8e6 	bl	c0de4fbe <OUTLINED_FUNCTION_5>
c0de4df2:	d007      	beq.n	c0de4e04 <nbgl_stepDrawSwitch+0x3c>
c0de4df4:	2802      	cmp	r0, #2
c0de4df6:	d007      	beq.n	c0de4e08 <nbgl_stepDrawSwitch+0x40>
c0de4df8:	2801      	cmp	r0, #1
c0de4dfa:	d108      	bne.n	c0de4e0e <nbgl_stepDrawSwitch+0x46>
c0de4dfc:	2002      	movs	r0, #2
c0de4dfe:	e004      	b.n	c0de4e0a <nbgl_stepDrawSwitch+0x42>
c0de4e00:	2400      	movs	r4, #0
c0de4e02:	e018      	b.n	c0de4e36 <nbgl_stepDrawSwitch+0x6e>
c0de4e04:	2003      	movs	r0, #3
c0de4e06:	e000      	b.n	c0de4e0a <nbgl_stepDrawSwitch+0x42>
c0de4e08:	2001      	movs	r0, #1
c0de4e0a:	2500      	movs	r5, #0
c0de4e0c:	e000      	b.n	c0de4e10 <nbgl_stepDrawSwitch+0x48>
c0de4e0e:	2000      	movs	r0, #0
c0de4e10:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4e14:	a802      	add	r0, sp, #8
c0de4e16:	f7fe ffe3 	bl	c0de3de0 <nbgl_layoutGet>
c0de4e1a:	4641      	mov	r1, r8
c0de4e1c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4e1e:	f7ff fc55 	bl	c0de46cc <nbgl_layoutAddSwitch>
c0de4e22:	b925      	cbnz	r5, c0de4e2e <nbgl_stepDrawSwitch+0x66>
c0de4e24:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4e26:	f10d 0106 	add.w	r1, sp, #6
c0de4e2a:	f7ff f83d 	bl	c0de3ea8 <nbgl_layoutAddNavigation>
c0de4e2e:	f000 f8c3 	bl	c0de4fb8 <OUTLINED_FUNCTION_4>
c0de4e32:	f002 fb5c 	bl	c0de74ee <nbgl_refresh>
c0de4e36:	4620      	mov	r0, r4
c0de4e38:	b007      	add	sp, #28
c0de4e3a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4e3e:	bf00      	nop
c0de4e40:	fffffe95 	.word	0xfffffe95

c0de4e44 <nbgl_stepRelease>:
c0de4e44:	b138      	cbz	r0, c0de4e56 <nbgl_stepRelease+0x12>
c0de4e46:	b510      	push	{r4, lr}
c0de4e48:	4604      	mov	r4, r0
c0de4e4a:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4e4c:	f7ff fd3a 	bl	c0de48c4 <nbgl_layoutRelease>
c0de4e50:	2100      	movs	r1, #0
c0de4e52:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4e54:	bd10      	pop	{r4, pc}
c0de4e56:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4e5a:	4770      	bx	lr

c0de4e5c <getContextFromLayout>:
c0de4e5c:	4a08      	ldr	r2, [pc, #32]	@ (c0de4e80 <getContextFromLayout+0x24>)
c0de4e5e:	2100      	movs	r1, #0
c0de4e60:	29d8      	cmp	r1, #216	@ 0xd8
c0de4e62:	bf04      	itt	eq
c0de4e64:	2000      	moveq	r0, #0
c0de4e66:	4770      	bxeq	lr
c0de4e68:	eb09 0302 	add.w	r3, r9, r2
c0de4e6c:	440b      	add	r3, r1
c0de4e6e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4e70:	4283      	cmp	r3, r0
c0de4e72:	d001      	beq.n	c0de4e78 <getContextFromLayout+0x1c>
c0de4e74:	3148      	adds	r1, #72	@ 0x48
c0de4e76:	e7f3      	b.n	c0de4e60 <getContextFromLayout+0x4>
c0de4e78:	eb09 0002 	add.w	r0, r9, r2
c0de4e7c:	4408      	add	r0, r1
c0de4e7e:	4770      	bx	lr
c0de4e80:	000008f8 	.word	0x000008f8

c0de4e84 <menuListActionCallback>:
c0de4e84:	b510      	push	{r4, lr}
c0de4e86:	460c      	mov	r4, r1
c0de4e88:	f7ff ffe8 	bl	c0de4e5c <getContextFromLayout>
c0de4e8c:	b1c8      	cbz	r0, c0de4ec2 <menuListActionCallback+0x3e>
c0de4e8e:	2c04      	cmp	r4, #4
c0de4e90:	d006      	beq.n	c0de4ea0 <menuListActionCallback+0x1c>
c0de4e92:	2c01      	cmp	r4, #1
c0de4e94:	d00a      	beq.n	c0de4eac <menuListActionCallback+0x28>
c0de4e96:	b9a4      	cbnz	r4, c0de4ec2 <menuListActionCallback+0x3e>
c0de4e98:	7a41      	ldrb	r1, [r0, #9]
c0de4e9a:	b191      	cbz	r1, c0de4ec2 <menuListActionCallback+0x3e>
c0de4e9c:	3901      	subs	r1, #1
c0de4e9e:	e00b      	b.n	c0de4eb8 <menuListActionCallback+0x34>
c0de4ea0:	7a41      	ldrb	r1, [r0, #9]
c0de4ea2:	6802      	ldr	r2, [r0, #0]
c0de4ea4:	4608      	mov	r0, r1
c0de4ea6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4eaa:	4710      	bx	r2
c0de4eac:	7a02      	ldrb	r2, [r0, #8]
c0de4eae:	7a41      	ldrb	r1, [r0, #9]
c0de4eb0:	3a01      	subs	r2, #1
c0de4eb2:	428a      	cmp	r2, r1
c0de4eb4:	dd05      	ble.n	c0de4ec2 <menuListActionCallback+0x3e>
c0de4eb6:	3101      	adds	r1, #1
c0de4eb8:	7241      	strb	r1, [r0, #9]
c0de4eba:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4ebe:	f7ff bf47 	b.w	c0de4d50 <displayMenuList>
c0de4ec2:	bd10      	pop	{r4, pc}

c0de4ec4 <OUTLINED_FUNCTION_0>:
c0de4ec4:	7838      	ldrb	r0, [r7, #0]
c0de4ec6:	7879      	ldrb	r1, [r7, #1]
c0de4ec8:	78ba      	ldrb	r2, [r7, #2]
c0de4eca:	78fb      	ldrb	r3, [r7, #3]
c0de4ecc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4ed0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4ed4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4ed8:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4eda:	4638      	mov	r0, r7
c0de4edc:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4ee0:	7a79      	ldrb	r1, [r7, #9]
c0de4ee2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4ee6:	7882      	ldrb	r2, [r0, #2]
c0de4ee8:	78c3      	ldrb	r3, [r0, #3]
c0de4eea:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4eee:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4ef2:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4ef4:	4639      	mov	r1, r7
c0de4ef6:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de4efa:	797a      	ldrb	r2, [r7, #5]
c0de4efc:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4f00:	788b      	ldrb	r3, [r1, #2]
c0de4f02:	78cd      	ldrb	r5, [r1, #3]
c0de4f04:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4f08:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de4f0c:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de4f0e:	783a      	ldrb	r2, [r7, #0]
c0de4f10:	787b      	ldrb	r3, [r7, #1]
c0de4f12:	78bd      	ldrb	r5, [r7, #2]
c0de4f14:	78fe      	ldrb	r6, [r7, #3]
c0de4f16:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4f1a:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de4f1e:	7803      	ldrb	r3, [r0, #0]
c0de4f20:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4f24:	7885      	ldrb	r5, [r0, #2]
c0de4f26:	78c0      	ldrb	r0, [r0, #3]
c0de4f28:	9204      	str	r2, [sp, #16]
c0de4f2a:	7a7a      	ldrb	r2, [r7, #9]
c0de4f2c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4f30:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4f34:	788b      	ldrb	r3, [r1, #2]
c0de4f36:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4f3a:	780a      	ldrb	r2, [r1, #0]
c0de4f3c:	78c9      	ldrb	r1, [r1, #3]
c0de4f3e:	9006      	str	r0, [sp, #24]
c0de4f40:	7978      	ldrb	r0, [r7, #5]
c0de4f42:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4f46:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4f4a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4f4e:	9005      	str	r0, [sp, #20]
c0de4f50:	4770      	bx	lr

c0de4f52 <OUTLINED_FUNCTION_1>:
c0de4f52:	7838      	ldrb	r0, [r7, #0]
c0de4f54:	7879      	ldrb	r1, [r7, #1]
c0de4f56:	78ba      	ldrb	r2, [r7, #2]
c0de4f58:	78fb      	ldrb	r3, [r7, #3]
c0de4f5a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4f5e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4f62:	4639      	mov	r1, r7
c0de4f64:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4f68:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4f6c:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4f6e:	7a78      	ldrb	r0, [r7, #9]
c0de4f70:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4f74:	788a      	ldrb	r2, [r1, #2]
c0de4f76:	78c9      	ldrb	r1, [r1, #3]
c0de4f78:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4f7c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4f80:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4f82:	7978      	ldrb	r0, [r7, #5]
c0de4f84:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4f88:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4f8c:	78b9      	ldrb	r1, [r7, #2]
c0de4f8e:	78fa      	ldrb	r2, [r7, #3]
c0de4f90:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4f94:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4f98:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4f9a:	4770      	bx	lr

c0de4f9c <OUTLINED_FUNCTION_2>:
c0de4f9c:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4fa0:	9003      	str	r0, [sp, #12]
c0de4fa2:	2000      	movs	r0, #0
c0de4fa4:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4fa8:	2001      	movs	r0, #1
c0de4faa:	f7ff bd19 	b.w	c0de49e0 <getFreeContext>

c0de4fae <OUTLINED_FUNCTION_3>:
c0de4fae:	2114      	movs	r1, #20
c0de4fb0:	4698      	mov	r8, r3
c0de4fb2:	4617      	mov	r7, r2
c0de4fb4:	f002 bfb6 	b.w	c0de7f24 <__aeabi_memclr>

c0de4fb8 <OUTLINED_FUNCTION_4>:
c0de4fb8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4fba:	f7ff bc7b 	b.w	c0de48b4 <nbgl_layoutDraw>

c0de4fbe <OUTLINED_FUNCTION_5>:
c0de4fbe:	2501      	movs	r5, #1
c0de4fc0:	f00a 0003 	and.w	r0, sl, #3
c0de4fc4:	2803      	cmp	r0, #3
c0de4fc6:	7025      	strb	r5, [r4, #0]
c0de4fc8:	7420      	strb	r0, [r4, #16]
c0de4fca:	4770      	bx	lr

c0de4fcc <nbgl_useCaseHomeAndSettings>:
c0de4fcc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4fd0:	4607      	mov	r7, r0
c0de4fd2:	4810      	ldr	r0, [pc, #64]	@ (c0de5014 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4fd4:	f001 fd31 	bl	c0de6a3a <OUTLINED_FUNCTION_3>
c0de4fd8:	e9c4 760f 	strd	r7, r6, [r4, #60]	@ 0x3c
c0de4fdc:	6465      	str	r5, [r4, #68]	@ 0x44
c0de4fde:	9d06      	ldr	r5, [sp, #24]
c0de4fe0:	4628      	mov	r0, r5
c0de4fe2:	f002 fc93 	bl	c0de790c <pic>
c0de4fe6:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de4fe8:	9807      	ldr	r0, [sp, #28]
c0de4fea:	f002 fc8f 	bl	c0de790c <pic>
c0de4fee:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4ff0:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4ff4:	6561      	str	r1, [r4, #84]	@ 0x54
c0de4ff6:	9908      	ldr	r1, [sp, #32]
c0de4ff8:	e9c4 0113 	strd	r0, r1, [r4, #76]	@ 0x4c
c0de4ffc:	bf18      	it	ne
c0de4ffe:	2d00      	cmpne	r5, #0
c0de5000:	d103      	bne.n	c0de500a <nbgl_useCaseHomeAndSettings+0x3e>
c0de5002:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5006:	f000 b843 	b.w	c0de5090 <startUseCaseHome>
c0de500a:	4640      	mov	r0, r8
c0de500c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5010:	f000 b802 	b.w	c0de5018 <startUseCaseSettingsAtPage>
c0de5014:	000009d0 	.word	0x000009d0

c0de5018 <startUseCaseSettingsAtPage>:
c0de5018:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de501a:	b08f      	sub	sp, #60	@ 0x3c
c0de501c:	4604      	mov	r4, r0
c0de501e:	a801      	add	r0, sp, #4
c0de5020:	2138      	movs	r1, #56	@ 0x38
c0de5022:	f002 ff7f 	bl	c0de7f24 <__aeabi_memclr>
c0de5026:	4e19      	ldr	r6, [pc, #100]	@ (c0de508c <startUseCaseSettingsAtPage+0x74>)
c0de5028:	eb09 0006 	add.w	r0, r9, r6
c0de502c:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5030:	280f      	cmp	r0, #15
c0de5032:	bf1e      	ittt	ne
c0de5034:	eb09 0006 	addne.w	r0, r9, r6
c0de5038:	210e      	movne	r1, #14
c0de503a:	f880 102c 	strbne.w	r1, [r0, #44]	@ 0x2c
c0de503e:	eb09 0006 	add.w	r0, r9, r6
c0de5042:	2101      	movs	r1, #1
c0de5044:	2700      	movs	r7, #0
c0de5046:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de504a:	ad01      	add	r5, sp, #4
c0de504c:	eb09 0006 	add.w	r0, r9, r6
c0de5050:	6c80      	ldr	r0, [r0, #72]	@ 0x48
c0de5052:	7a01      	ldrb	r1, [r0, #8]
c0de5054:	428f      	cmp	r7, r1
c0de5056:	d20e      	bcs.n	c0de5076 <startUseCaseSettingsAtPage+0x5e>
c0de5058:	b279      	sxtb	r1, r7
c0de505a:	462a      	mov	r2, r5
c0de505c:	f000 fd06 	bl	c0de5a6c <getContentAtIdx>
c0de5060:	f000 fd5e 	bl	c0de5b20 <getContentNbElement>
c0de5064:	eb09 0106 	add.w	r1, r9, r6
c0de5068:	3701      	adds	r7, #1
c0de506a:	f891 2034 	ldrb.w	r2, [r1, #52]	@ 0x34
c0de506e:	4410      	add	r0, r2
c0de5070:	f881 0034 	strb.w	r0, [r1, #52]	@ 0x34
c0de5074:	e7ea      	b.n	c0de504c <startUseCaseSettingsAtPage+0x34>
c0de5076:	eb09 0006 	add.w	r0, r9, r6
c0de507a:	2100      	movs	r1, #0
c0de507c:	f880 4035 	strb.w	r4, [r0, #53]	@ 0x35
c0de5080:	2000      	movs	r0, #0
c0de5082:	f000 ff57 	bl	c0de5f34 <displaySettingsPage>
c0de5086:	b00f      	add	sp, #60	@ 0x3c
c0de5088:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de508a:	bf00      	nop
c0de508c:	000009d0 	.word	0x000009d0

c0de5090 <startUseCaseHome>:
c0de5090:	b510      	push	{r4, lr}
c0de5092:	4821      	ldr	r0, [pc, #132]	@ (c0de5118 <startUseCaseHome+0x88>)
c0de5094:	eb09 0100 	add.w	r1, r9, r0
c0de5098:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de509c:	290d      	cmp	r1, #13
c0de509e:	d009      	beq.n	c0de50b4 <startUseCaseHome+0x24>
c0de50a0:	290e      	cmp	r1, #14
c0de50a2:	d114      	bne.n	c0de50ce <startUseCaseHome+0x3e>
c0de50a4:	eb09 0100 	add.w	r1, r9, r0
c0de50a8:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de50aa:	2102      	movs	r1, #2
c0de50ac:	2a00      	cmp	r2, #0
c0de50ae:	bf08      	it	eq
c0de50b0:	2101      	moveq	r1, #1
c0de50b2:	e00d      	b.n	c0de50d0 <startUseCaseHome+0x40>
c0de50b4:	eb09 0200 	add.w	r2, r9, r0
c0de50b8:	2102      	movs	r1, #2
c0de50ba:	6d14      	ldr	r4, [r2, #80]	@ 0x50
c0de50bc:	6c93      	ldr	r3, [r2, #72]	@ 0x48
c0de50be:	2c00      	cmp	r4, #0
c0de50c0:	bf08      	it	eq
c0de50c2:	2101      	moveq	r1, #1
c0de50c4:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de50c8:	b133      	cbz	r3, c0de50d8 <startUseCaseHome+0x48>
c0de50ca:	3101      	adds	r1, #1
c0de50cc:	e000      	b.n	c0de50d0 <startUseCaseHome+0x40>
c0de50ce:	2100      	movs	r1, #0
c0de50d0:	eb09 0200 	add.w	r2, r9, r0
c0de50d4:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de50d8:	eb09 0200 	add.w	r2, r9, r0
c0de50dc:	210c      	movs	r1, #12
c0de50de:	e9d2 3412 	ldrd	r3, r4, [r2, #72]	@ 0x48
c0de50e2:	f882 102c 	strb.w	r1, [r2, #44]	@ 0x2c
c0de50e6:	2103      	movs	r1, #3
c0de50e8:	2b00      	cmp	r3, #0
c0de50ea:	bf08      	it	eq
c0de50ec:	2102      	moveq	r1, #2
c0de50ee:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de50f2:	b124      	cbz	r4, c0de50fe <startUseCaseHome+0x6e>
c0de50f4:	3101      	adds	r1, #1
c0de50f6:	eb09 0200 	add.w	r2, r9, r0
c0de50fa:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de50fe:	eb09 0200 	add.w	r2, r9, r0
c0de5102:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de5104:	b11a      	cbz	r2, c0de510e <startUseCaseHome+0x7e>
c0de5106:	4448      	add	r0, r9
c0de5108:	3101      	adds	r1, #1
c0de510a:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de510e:	2000      	movs	r0, #0
c0de5110:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5114:	f000 bffe 	b.w	c0de6114 <displayHomePage>
c0de5118:	000009d0 	.word	0x000009d0

c0de511c <nbgl_useCaseReview>:
c0de511c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de511e:	4614      	mov	r4, r2
c0de5120:	460a      	mov	r2, r1
c0de5122:	4601      	mov	r1, r0
c0de5124:	9808      	ldr	r0, [sp, #32]
c0de5126:	9003      	str	r0, [sp, #12]
c0de5128:	9807      	ldr	r0, [sp, #28]
c0de512a:	9002      	str	r0, [sp, #8]
c0de512c:	9806      	ldr	r0, [sp, #24]
c0de512e:	e9cd 3000 	strd	r3, r0, [sp]
c0de5132:	2002      	movs	r0, #2
c0de5134:	4623      	mov	r3, r4
c0de5136:	f000 f801 	bl	c0de513c <useCaseReview>
c0de513a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de513c <useCaseReview>:
c0de513c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5140:	4607      	mov	r7, r0
c0de5142:	4811      	ldr	r0, [pc, #68]	@ (c0de5188 <useCaseReview+0x4c>)
c0de5144:	4688      	mov	r8, r1
c0de5146:	2140      	movs	r1, #64	@ 0x40
c0de5148:	461d      	mov	r5, r3
c0de514a:	4614      	mov	r4, r2
c0de514c:	f001 fc6f 	bl	c0de6a2e <OUTLINED_FUNCTION_2>
c0de5150:	9808      	ldr	r0, [sp, #32]
c0de5152:	6530      	str	r0, [r6, #80]	@ 0x50
c0de5154:	9807      	ldr	r0, [sp, #28]
c0de5156:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de5158:	9906      	ldr	r1, [sp, #24]
c0de515a:	e9c6 4510 	strd	r4, r5, [r6, #64]	@ 0x40
c0de515e:	64b1      	str	r1, [r6, #72]	@ 0x48
c0de5160:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5162:	f8c6 8030 	str.w	r8, [r6, #48]	@ 0x30
c0de5166:	f886 702c 	strb.w	r7, [r6, #44]	@ 0x2c
c0de516a:	63f1      	str	r1, [r6, #60]	@ 0x3c
c0de516c:	2104      	movs	r1, #4
c0de516e:	2800      	cmp	r0, #0
c0de5170:	bf08      	it	eq
c0de5172:	2103      	moveq	r1, #3
c0de5174:	7a20      	ldrb	r0, [r4, #8]
c0de5176:	4408      	add	r0, r1
c0de5178:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de517c:	2000      	movs	r0, #0
c0de517e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5182:	f000 b8d1 	b.w	c0de5328 <displayReviewPage>
c0de5186:	bf00      	nop
c0de5188:	000009d0 	.word	0x000009d0

c0de518c <nbgl_useCaseAdvancedReview>:
c0de518c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5190:	b088      	sub	sp, #32
c0de5192:	4617      	mov	r7, r2
c0de5194:	460a      	mov	r2, r1
c0de5196:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de519a:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	@ 0x40
c0de519e:	4606      	mov	r6, r0
c0de51a0:	f1ba 0f00 	cmp.w	sl, #0
c0de51a4:	d013      	beq.n	c0de51ce <nbgl_useCaseAdvancedReview+0x42>
c0de51a6:	f8da 0000 	ldr.w	r0, [sl]
c0de51aa:	9107      	str	r1, [sp, #28]
c0de51ac:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de51b0:	2808      	cmp	r0, #8
c0de51b2:	d018      	beq.n	c0de51e6 <nbgl_useCaseAdvancedReview+0x5a>
c0de51b4:	b9e0      	cbnz	r0, c0de51f0 <nbgl_useCaseAdvancedReview+0x64>
c0de51b6:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de51ba:	b928      	cbnz	r0, c0de51c8 <nbgl_useCaseAdvancedReview+0x3c>
c0de51bc:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de51c0:	b910      	cbnz	r0, c0de51c8 <nbgl_useCaseAdvancedReview+0x3c>
c0de51c2:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de51c6:	b110      	cbz	r0, c0de51ce <nbgl_useCaseAdvancedReview+0x42>
c0de51c8:	4698      	mov	r8, r3
c0de51ca:	4615      	mov	r5, r2
c0de51cc:	e014      	b.n	c0de51f8 <nbgl_useCaseAdvancedReview+0x6c>
c0de51ce:	e9cd 3500 	strd	r3, r5, [sp]
c0de51d2:	e9cd 4102 	strd	r4, r1, [sp, #8]
c0de51d6:	2002      	movs	r0, #2
c0de51d8:	4631      	mov	r1, r6
c0de51da:	463b      	mov	r3, r7
c0de51dc:	f7ff ffae 	bl	c0de513c <useCaseReview>
c0de51e0:	b008      	add	sp, #32
c0de51e2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de51e6:	4698      	mov	r8, r3
c0de51e8:	4615      	mov	r5, r2
c0de51ea:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de51ee:	e003      	b.n	c0de51f8 <nbgl_useCaseAdvancedReview+0x6c>
c0de51f0:	4698      	mov	r8, r3
c0de51f2:	4615      	mov	r5, r2
c0de51f4:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de51f8:	f8df b06c 	ldr.w	fp, [pc, #108]	@ c0de5268 <nbgl_useCaseAdvancedReview+0xdc>
c0de51fc:	212c      	movs	r1, #44	@ 0x2c
c0de51fe:	eb09 040b 	add.w	r4, r9, fp
c0de5202:	4620      	mov	r0, r4
c0de5204:	f002 fe8e 	bl	c0de7f24 <__aeabi_memclr>
c0de5208:	2002      	movs	r0, #2
c0de520a:	462a      	mov	r2, r5
c0de520c:	60a5      	str	r5, [r4, #8]
c0de520e:	9d06      	ldr	r5, [sp, #24]
c0de5210:	463b      	mov	r3, r7
c0de5212:	60e7      	str	r7, [r4, #12]
c0de5214:	9f05      	ldr	r7, [sp, #20]
c0de5216:	4641      	mov	r1, r8
c0de5218:	f8c4 8010 	str.w	r8, [r4, #16]
c0de521c:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de5220:	6066      	str	r6, [r4, #4]
c0de5222:	f809 000b 	strb.w	r0, [r9, fp]
c0de5226:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de522a:	6167      	str	r7, [r4, #20]
c0de522c:	e9c4 5a06 	strd	r5, sl, [r4, #24]
c0de5230:	f8c4 8020 	str.w	r8, [r4, #32]
c0de5234:	b120      	cbz	r0, c0de5240 <nbgl_useCaseAdvancedReview+0xb4>
c0de5236:	b008      	add	sp, #32
c0de5238:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de523c:	f000 b816 	b.w	c0de526c <displayPrelude>
c0de5240:	f89a 0000 	ldrb.w	r0, [sl]
c0de5244:	f010 0f16 	tst.w	r0, #22
c0de5248:	d102      	bne.n	c0de5250 <nbgl_useCaseAdvancedReview+0xc4>
c0de524a:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de524e:	b120      	cbz	r0, c0de525a <nbgl_useCaseAdvancedReview+0xce>
c0de5250:	b008      	add	sp, #32
c0de5252:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5256:	f000 b815 	b.w	c0de5284 <displayInitialWarning>
c0de525a:	e9cd 1700 	strd	r1, r7, [sp]
c0de525e:	2002      	movs	r0, #2
c0de5260:	4631      	mov	r1, r6
c0de5262:	e9cd 5802 	strd	r5, r8, [sp, #8]
c0de5266:	e7b9      	b.n	c0de51dc <nbgl_useCaseAdvancedReview+0x50>
c0de5268:	000009d0 	.word	0x000009d0

c0de526c <displayPrelude>:
c0de526c:	4804      	ldr	r0, [pc, #16]	@ (c0de5280 <displayPrelude+0x14>)
c0de526e:	2101      	movs	r1, #1
c0de5270:	4448      	add	r0, r9
c0de5272:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5276:	f44f 7140 	mov.w	r1, #768	@ 0x300
c0de527a:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de527c:	f001 b836 	b.w	c0de62ec <displayWarningStep>
c0de5280:	000009d0 	.word	0x000009d0

c0de5284 <displayInitialWarning>:
c0de5284:	4804      	ldr	r0, [pc, #16]	@ (c0de5298 <displayInitialWarning+0x14>)
c0de5286:	2100      	movs	r1, #0
c0de5288:	4448      	add	r0, r9
c0de528a:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de528e:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de5292:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de5294:	f001 b82a 	b.w	c0de62ec <displayWarningStep>
c0de5298:	000009d0 	.word	0x000009d0

c0de529c <nbgl_useCaseReviewBlindSigning>:
c0de529c:	b5b0      	push	{r4, r5, r7, lr}
c0de529e:	b086      	sub	sp, #24
c0de52a0:	4d06      	ldr	r5, [pc, #24]	@ (c0de52bc <nbgl_useCaseReviewBlindSigning+0x20>)
c0de52a2:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de52a4:	447d      	add	r5, pc
c0de52a6:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de52aa:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de52ac:	9401      	str	r4, [sp, #4]
c0de52ae:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de52b0:	9400      	str	r4, [sp, #0]
c0de52b2:	f7ff ff6b 	bl	c0de518c <nbgl_useCaseAdvancedReview>
c0de52b6:	b006      	add	sp, #24
c0de52b8:	bdb0      	pop	{r4, r5, r7, pc}
c0de52ba:	bf00      	nop
c0de52bc:	000041ec 	.word	0x000041ec

c0de52c0 <nbgl_useCaseAddressReview>:
c0de52c0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de52c4:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de5324 <nbgl_useCaseAddressReview+0x64>
c0de52c8:	460c      	mov	r4, r1
c0de52ca:	4607      	mov	r7, r0
c0de52cc:	2140      	movs	r1, #64	@ 0x40
c0de52ce:	469a      	mov	sl, r3
c0de52d0:	4616      	mov	r6, r2
c0de52d2:	eb09 0508 	add.w	r5, r9, r8
c0de52d6:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de52da:	f002 fe23 	bl	c0de7f24 <__aeabi_memclr>
c0de52de:	2004      	movs	r0, #4
c0de52e0:	656f      	str	r7, [r5, #84]	@ 0x54
c0de52e2:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de52e6:	9808      	ldr	r0, [sp, #32]
c0de52e8:	e9c5 6a11 	strd	r6, sl, [r5, #68]	@ 0x44
c0de52ec:	64e8      	str	r0, [r5, #76]	@ 0x4c
c0de52ee:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de52f0:	63e9      	str	r1, [r5, #60]	@ 0x3c
c0de52f2:	2105      	movs	r1, #5
c0de52f4:	2800      	cmp	r0, #0
c0de52f6:	bf08      	it	eq
c0de52f8:	2104      	moveq	r1, #4
c0de52fa:	f885 1034 	strb.w	r1, [r5, #52]	@ 0x34
c0de52fe:	b15c      	cbz	r4, c0de5318 <nbgl_useCaseAddressReview+0x58>
c0de5300:	4620      	mov	r0, r4
c0de5302:	eb09 0508 	add.w	r5, r9, r8
c0de5306:	f002 fb01 	bl	c0de790c <pic>
c0de530a:	6428      	str	r0, [r5, #64]	@ 0x40
c0de530c:	f895 0034 	ldrb.w	r0, [r5, #52]	@ 0x34
c0de5310:	7a21      	ldrb	r1, [r4, #8]
c0de5312:	4408      	add	r0, r1
c0de5314:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de5318:	2000      	movs	r0, #0
c0de531a:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de531e:	f000 b803 	b.w	c0de5328 <displayReviewPage>
c0de5322:	bf00      	nop
c0de5324:	000009d0 	.word	0x000009d0

c0de5328 <displayReviewPage>:
c0de5328:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de532a:	b08b      	sub	sp, #44	@ 0x2c
c0de532c:	4e5d      	ldr	r6, [pc, #372]	@ (c0de54a4 <displayReviewPage+0x17c>)
c0de532e:	4604      	mov	r4, r0
c0de5330:	2000      	movs	r0, #0
c0de5332:	2201      	movs	r2, #1
c0de5334:	2702      	movs	r7, #2
c0de5336:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de533a:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de533e:	eb09 0306 	add.w	r3, r9, r6
c0de5342:	6398      	str	r0, [r3, #56]	@ 0x38
c0de5344:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
c0de5346:	2800      	cmp	r0, #0
c0de5348:	bf08      	it	eq
c0de534a:	22ff      	moveq	r2, #255	@ 0xff
c0de534c:	bf08      	it	eq
c0de534e:	2701      	moveq	r7, #1
c0de5350:	f993 1035 	ldrsb.w	r1, [r3, #53]	@ 0x35
c0de5354:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
c0de5358:	1e9d      	subs	r5, r3, #2
c0de535a:	b2ed      	uxtb	r5, r5
c0de535c:	42a9      	cmp	r1, r5
c0de535e:	da06      	bge.n	c0de536e <displayReviewPage+0x46>
c0de5360:	42b9      	cmp	r1, r7
c0de5362:	da0b      	bge.n	c0de537c <displayReviewPage+0x54>
c0de5364:	2900      	cmp	r1, #0
c0de5366:	d041      	beq.n	c0de53ec <displayReviewPage+0xc4>
c0de5368:	428a      	cmp	r2, r1
c0de536a:	d044      	beq.n	c0de53f6 <displayReviewPage+0xce>
c0de536c:	e044      	b.n	c0de53f8 <displayReviewPage+0xd0>
c0de536e:	d110      	bne.n	c0de5392 <displayReviewPage+0x6a>
c0de5370:	a908      	add	r1, sp, #32
c0de5372:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5374:	2001      	movs	r0, #1
c0de5376:	f001 f885 	bl	c0de6484 <getLastPageInfo>
c0de537a:	e03d      	b.n	c0de53f8 <displayReviewPage+0xd0>
c0de537c:	eb09 0006 	add.w	r0, r9, r6
c0de5380:	6d45      	ldr	r5, [r0, #84]	@ 0x54
c0de5382:	b18d      	cbz	r5, c0de53a8 <displayReviewPage+0x80>
c0de5384:	42b9      	cmp	r1, r7
c0de5386:	d10f      	bne.n	c0de53a8 <displayReviewPage+0x80>
c0de5388:	9509      	str	r5, [sp, #36]	@ 0x24
c0de538a:	4847      	ldr	r0, [pc, #284]	@ (c0de54a8 <displayReviewPage+0x180>)
c0de538c:	4478      	add	r0, pc
c0de538e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5390:	e033      	b.n	c0de53fa <displayReviewPage+0xd2>
c0de5392:	1e58      	subs	r0, r3, #1
c0de5394:	b2c0      	uxtb	r0, r0
c0de5396:	4281      	cmp	r1, r0
c0de5398:	d12e      	bne.n	c0de53f8 <displayReviewPage+0xd0>
c0de539a:	a908      	add	r1, sp, #32
c0de539c:	aa0a      	add	r2, sp, #40	@ 0x28
c0de539e:	2000      	movs	r0, #0
c0de53a0:	2500      	movs	r5, #0
c0de53a2:	f001 f86f 	bl	c0de6484 <getLastPageInfo>
c0de53a6:	e028      	b.n	c0de53fa <displayReviewPage+0xd2>
c0de53a8:	eb09 0006 	add.w	r0, r9, r6
c0de53ac:	f890 2030 	ldrb.w	r2, [r0, #48]	@ 0x30
c0de53b0:	06d2      	lsls	r2, r2, #27
c0de53b2:	d535      	bpl.n	c0de5420 <displayReviewPage+0xf8>
c0de53b4:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de53b8:	bb90      	cbnz	r0, c0de5420 <displayReviewPage+0xf8>
c0de53ba:	42b9      	cmp	r1, r7
c0de53bc:	dc05      	bgt.n	c0de53ca <displayReviewPage+0xa2>
c0de53be:	eb09 0006 	add.w	r0, r9, r6
c0de53c2:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de53c6:	2808      	cmp	r0, #8
c0de53c8:	d12a      	bne.n	c0de5420 <displayReviewPage+0xf8>
c0de53ca:	2000      	movs	r0, #0
c0de53cc:	9006      	str	r0, [sp, #24]
c0de53ce:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de53d2:	eb09 0006 	add.w	r0, r9, r6
c0de53d6:	f890 205c 	ldrb.w	r2, [r0, #92]	@ 0x5c
c0de53da:	f004 0008 	and.w	r0, r4, #8
c0de53de:	2a01      	cmp	r2, #1
c0de53e0:	d001      	beq.n	c0de53e6 <displayReviewPage+0xbe>
c0de53e2:	2901      	cmp	r1, #1
c0de53e4:	db43      	blt.n	c0de546e <displayReviewPage+0x146>
c0de53e6:	f040 0003 	orr.w	r0, r0, #3
c0de53ea:	e042      	b.n	c0de5472 <displayReviewPage+0x14a>
c0de53ec:	eb09 0006 	add.w	r0, r9, r6
c0de53f0:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de53f4:	9108      	str	r1, [sp, #32]
c0de53f6:	900a      	str	r0, [sp, #40]	@ 0x28
c0de53f8:	2500      	movs	r5, #0
c0de53fa:	2000      	movs	r0, #0
c0de53fc:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de53fe:	9908      	ldr	r1, [sp, #32]
c0de5400:	4e2e      	ldr	r6, [pc, #184]	@ (c0de54bc <displayReviewPage+0x194>)
c0de5402:	b2c0      	uxtb	r0, r0
c0de5404:	2300      	movs	r3, #0
c0de5406:	9002      	str	r0, [sp, #8]
c0de5408:	4620      	mov	r0, r4
c0de540a:	447e      	add	r6, pc
c0de540c:	e9cd 6300 	strd	r6, r3, [sp]
c0de5410:	462b      	mov	r3, r5
c0de5412:	f000 f875 	bl	c0de5500 <drawStep>
c0de5416:	b00b      	add	sp, #44	@ 0x2c
c0de5418:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de541c:	f002 b867 	b.w	c0de74ee <nbgl_refresh>
c0de5420:	2200      	movs	r2, #0
c0de5422:	eb09 0006 	add.w	r0, r9, r6
c0de5426:	1bcf      	subs	r7, r1, r7
c0de5428:	f10d 0c0c 	add.w	ip, sp, #12
c0de542c:	f880 205d 	strb.w	r2, [r0, #93]	@ 0x5d
c0de5430:	f88d 200c 	strb.w	r2, [sp, #12]
c0de5434:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5436:	ab08      	add	r3, sp, #32
c0de5438:	aa07      	add	r2, sp, #28
c0de543a:	2d00      	cmp	r5, #0
c0de543c:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de5440:	bf18      	it	ne
c0de5442:	3f01      	subne	r7, #1
c0de5444:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5446:	b2f9      	uxtb	r1, r7
c0de5448:	ab09      	add	r3, sp, #36	@ 0x24
c0de544a:	f000 fcf7 	bl	c0de5e3c <getPairData>
c0de544e:	9807      	ldr	r0, [sp, #28]
c0de5450:	b140      	cbz	r0, c0de5464 <displayReviewPage+0x13c>
c0de5452:	eb09 0006 	add.w	r0, r9, r6
c0de5456:	f880 705f 	strb.w	r7, [r0, #95]	@ 0x5f
c0de545a:	4917      	ldr	r1, [pc, #92]	@ (c0de54b8 <displayReviewPage+0x190>)
c0de545c:	4479      	add	r1, pc
c0de545e:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5460:	2001      	movs	r0, #1
c0de5462:	e002      	b.n	c0de546a <displayReviewPage+0x142>
c0de5464:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de5468:	0040      	lsls	r0, r0, #1
c0de546a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de546c:	e7c6      	b.n	c0de53fc <displayReviewPage+0xd4>
c0de546e:	f040 0001 	orr.w	r0, r0, #1
c0de5472:	490e      	ldr	r1, [pc, #56]	@ (c0de54ac <displayReviewPage+0x184>)
c0de5474:	2200      	movs	r2, #0
c0de5476:	4479      	add	r1, pc
c0de5478:	9103      	str	r1, [sp, #12]
c0de547a:	490d      	ldr	r1, [pc, #52]	@ (c0de54b0 <displayReviewPage+0x188>)
c0de547c:	4479      	add	r1, pc
c0de547e:	9105      	str	r1, [sp, #20]
c0de5480:	2100      	movs	r1, #0
c0de5482:	9100      	str	r1, [sp, #0]
c0de5484:	490b      	ldr	r1, [pc, #44]	@ (c0de54b4 <displayReviewPage+0x18c>)
c0de5486:	ab03      	add	r3, sp, #12
c0de5488:	4479      	add	r1, pc
c0de548a:	f7ff fbb5 	bl	c0de4bf8 <nbgl_stepDrawCenteredInfo>
c0de548e:	eb09 0406 	add.w	r4, r9, r6
c0de5492:	f002 f82c 	bl	c0de74ee <nbgl_refresh>
c0de5496:	2001      	movs	r0, #1
c0de5498:	f884 7036 	strb.w	r7, [r4, #54]	@ 0x36
c0de549c:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de54a0:	b00b      	add	sp, #44	@ 0x2c
c0de54a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de54a4:	000009d0 	.word	0x000009d0
c0de54a8:	000030de 	.word	0x000030de
c0de54ac:	00002dc4 	.word	0x00002dc4
c0de54b0:	00002bf2 	.word	0x00002bf2
c0de54b4:	00001181 	.word	0x00001181
c0de54b8:	00001265 	.word	0x00001265
c0de54bc:	0000132b 	.word	0x0000132b

c0de54c0 <nbgl_useCaseStatus>:
c0de54c0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de54c2:	4605      	mov	r5, r0
c0de54c4:	480c      	ldr	r0, [pc, #48]	@ (c0de54f8 <nbgl_useCaseStatus+0x38>)
c0de54c6:	2140      	movs	r1, #64	@ 0x40
c0de54c8:	4614      	mov	r4, r2
c0de54ca:	f001 fab0 	bl	c0de6a2e <OUTLINED_FUNCTION_2>
c0de54ce:	2009      	movs	r0, #9
c0de54d0:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de54d2:	462a      	mov	r2, r5
c0de54d4:	2300      	movs	r3, #0
c0de54d6:	f886 002c 	strb.w	r0, [r6, #44]	@ 0x2c
c0de54da:	2001      	movs	r0, #1
c0de54dc:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de54e0:	2000      	movs	r0, #0
c0de54e2:	4906      	ldr	r1, [pc, #24]	@ (c0de54fc <nbgl_useCaseStatus+0x3c>)
c0de54e4:	9002      	str	r0, [sp, #8]
c0de54e6:	4479      	add	r1, pc
c0de54e8:	e9cd 1000 	strd	r1, r0, [sp]
c0de54ec:	2040      	movs	r0, #64	@ 0x40
c0de54ee:	2100      	movs	r1, #0
c0de54f0:	f000 f806 	bl	c0de5500 <drawStep>
c0de54f4:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de54f6:	bf00      	nop
c0de54f8:	000009d0 	.word	0x000009d0
c0de54fc:	0000019f 	.word	0x0000019f

c0de5500 <drawStep>:
c0de5500:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5504:	b09a      	sub	sp, #104	@ 0x68
c0de5506:	4688      	mov	r8, r1
c0de5508:	4604      	mov	r4, r0
c0de550a:	a80c      	add	r0, sp, #48	@ 0x30
c0de550c:	2138      	movs	r1, #56	@ 0x38
c0de550e:	461d      	mov	r5, r3
c0de5510:	4616      	mov	r6, r2
c0de5512:	f002 fd07 	bl	c0de7f24 <__aeabi_memclr>
c0de5516:	2700      	movs	r7, #0
c0de5518:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de551c:	4856      	ldr	r0, [pc, #344]	@ (c0de5678 <drawStep+0x178>)
c0de551e:	4478      	add	r0, pc
c0de5520:	f002 f9f4 	bl	c0de790c <pic>
c0de5524:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de5674 <drawStep+0x174>
c0de5528:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de552c:	9709      	str	r7, [sp, #36]	@ 0x24
c0de552e:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de5532:	eb09 000b 	add.w	r0, r9, fp
c0de5536:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de553a:	2802      	cmp	r0, #2
c0de553c:	d30b      	bcc.n	c0de5556 <drawStep+0x56>
c0de553e:	eb09 010b 	add.w	r1, r9, fp
c0de5542:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5546:	b129      	cbz	r1, c0de5554 <drawStep+0x54>
c0de5548:	3801      	subs	r0, #1
c0de554a:	2703      	movs	r7, #3
c0de554c:	4288      	cmp	r0, r1
c0de554e:	bf08      	it	eq
c0de5550:	2702      	moveq	r7, #2
c0de5552:	e000      	b.n	c0de5556 <drawStep+0x56>
c0de5554:	2701      	movs	r7, #1
c0de5556:	eb09 000b 	add.w	r0, r9, fp
c0de555a:	ea47 0204 	orr.w	r2, r7, r4
c0de555e:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de5562:	4614      	mov	r4, r2
c0de5564:	2901      	cmp	r1, #1
c0de5566:	bf88      	it	hi
c0de5568:	f044 0402 	orrhi.w	r4, r4, #2
c0de556c:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de556e:	2900      	cmp	r1, #0
c0de5570:	bf08      	it	eq
c0de5572:	4614      	moveq	r4, r2
c0de5574:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5578:	2806      	cmp	r0, #6
c0de557a:	f040 0108 	orr.w	r1, r0, #8
c0de557e:	bf18      	it	ne
c0de5580:	4614      	movne	r4, r2
c0de5582:	2909      	cmp	r1, #9
c0de5584:	bf0c      	ite	eq
c0de5586:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de558a:	f04f 0a00 	movne.w	sl, #0
c0de558e:	280a      	cmp	r0, #10
c0de5590:	d105      	bne.n	c0de559e <drawStep+0x9e>
c0de5592:	eb09 000b 	add.w	r0, r9, fp
c0de5596:	6d00      	ldr	r0, [r0, #80]	@ 0x50
c0de5598:	b108      	cbz	r0, c0de559e <drawStep+0x9e>
c0de559a:	f7ff fc53 	bl	c0de4e44 <nbgl_stepRelease>
c0de559e:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de55a0:	b1b6      	cbz	r6, c0de55d0 <drawStep+0xd0>
c0de55a2:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de55a4:	f1b8 0f00 	cmp.w	r8, #0
c0de55a8:	d12c      	bne.n	c0de5604 <drawStep+0x104>
c0de55aa:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de55ac:	2802      	cmp	r0, #2
c0de55ae:	d029      	beq.n	c0de5604 <drawStep+0x104>
c0de55b0:	2201      	movs	r2, #1
c0de55b2:	4633      	mov	r3, r6
c0de55b4:	2801      	cmp	r0, #1
c0de55b6:	bf08      	it	eq
c0de55b8:	2202      	moveq	r2, #2
c0de55ba:	4620      	mov	r0, r4
c0de55bc:	2d00      	cmp	r5, #0
c0de55be:	bf08      	it	eq
c0de55c0:	462a      	moveq	r2, r5
c0de55c2:	e9cd 5200 	strd	r5, r2, [sp]
c0de55c6:	9702      	str	r7, [sp, #8]
c0de55c8:	4652      	mov	r2, sl
c0de55ca:	f7ff f9cf 	bl	c0de496c <nbgl_stepDrawText>
c0de55ce:	e043      	b.n	c0de5658 <drawStep+0x158>
c0de55d0:	eb09 000b 	add.w	r0, r9, fp
c0de55d4:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de55d8:	a903      	add	r1, sp, #12
c0de55da:	aa0c      	add	r2, sp, #48	@ 0x30
c0de55dc:	f000 fbea 	bl	c0de5db4 <getContentElemAtIdx>
c0de55e0:	b330      	cbz	r0, c0de5630 <drawStep+0x130>
c0de55e2:	7801      	ldrb	r1, [r0, #0]
c0de55e4:	2400      	movs	r4, #0
c0de55e6:	290a      	cmp	r1, #10
c0de55e8:	d024      	beq.n	c0de5634 <drawStep+0x134>
c0de55ea:	2909      	cmp	r1, #9
c0de55ec:	d135      	bne.n	c0de565a <drawStep+0x15a>
c0de55ee:	f001 fa32 	bl	c0de6a56 <OUTLINED_FUNCTION_5>
c0de55f2:	4922      	ldr	r1, [pc, #136]	@ (c0de567c <drawStep+0x17c>)
c0de55f4:	4479      	add	r1, pc
c0de55f6:	910a      	str	r1, [sp, #40]	@ 0x28
c0de55f8:	7941      	ldrb	r1, [r0, #5]
c0de55fa:	7980      	ldrb	r0, [r0, #6]
c0de55fc:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de5600:	1c48      	adds	r0, r1, #1
c0de5602:	e020      	b.n	c0de5646 <drawStep+0x146>
c0de5604:	2000      	movs	r0, #0
c0de5606:	9603      	str	r6, [sp, #12]
c0de5608:	f8cd 8014 	str.w	r8, [sp, #20]
c0de560c:	9504      	str	r5, [sp, #16]
c0de560e:	4652      	mov	r2, sl
c0de5610:	f88d 0018 	strb.w	r0, [sp, #24]
c0de5614:	eb09 000b 	add.w	r0, r9, fp
c0de5618:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de561a:	4328      	orrs	r0, r5
c0de561c:	bf18      	it	ne
c0de561e:	2001      	movne	r0, #1
c0de5620:	f88d 0019 	strb.w	r0, [sp, #25]
c0de5624:	9700      	str	r7, [sp, #0]
c0de5626:	ab03      	add	r3, sp, #12
c0de5628:	4620      	mov	r0, r4
c0de562a:	f7ff fae5 	bl	c0de4bf8 <nbgl_stepDrawCenteredInfo>
c0de562e:	e013      	b.n	c0de5658 <drawStep+0x158>
c0de5630:	2400      	movs	r4, #0
c0de5632:	e012      	b.n	c0de565a <drawStep+0x15a>
c0de5634:	f001 fa0f 	bl	c0de6a56 <OUTLINED_FUNCTION_5>
c0de5638:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de563c:	4910      	ldr	r1, [pc, #64]	@ (c0de5680 <drawStep+0x180>)
c0de563e:	7a00      	ldrb	r0, [r0, #8]
c0de5640:	4479      	add	r1, pc
c0de5642:	3001      	adds	r0, #1
c0de5644:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5646:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de564a:	4651      	mov	r1, sl
c0de564c:	463b      	mov	r3, r7
c0de564e:	480d      	ldr	r0, [pc, #52]	@ (c0de5684 <drawStep+0x184>)
c0de5650:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5652:	4478      	add	r0, pc
c0de5654:	f7ff fb60 	bl	c0de4d18 <nbgl_stepDrawMenuList>
c0de5658:	4604      	mov	r4, r0
c0de565a:	eb09 000b 	add.w	r0, r9, fp
c0de565e:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5662:	280a      	cmp	r0, #10
c0de5664:	bf04      	itt	eq
c0de5666:	eb09 000b 	addeq.w	r0, r9, fp
c0de566a:	6504      	streq	r4, [r0, #80]	@ 0x50
c0de566c:	b01a      	add	sp, #104	@ 0x68
c0de566e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5672:	bf00      	nop
c0de5674:	000009d0 	.word	0x000009d0
c0de5678:	000013a3 	.word	0x000013a3
c0de567c:	000012dd 	.word	0x000012dd
c0de5680:	00001291 	.word	0x00001291
c0de5684:	000012e3 	.word	0x000012e3

c0de5688 <statusButtonCallback>:
c0de5688:	f041 0004 	orr.w	r0, r1, #4
c0de568c:	2804      	cmp	r0, #4
c0de568e:	d001      	beq.n	c0de5694 <statusButtonCallback+0xc>
c0de5690:	2901      	cmp	r1, #1
c0de5692:	d104      	bne.n	c0de569e <statusButtonCallback+0x16>
c0de5694:	4802      	ldr	r0, [pc, #8]	@ (c0de56a0 <statusButtonCallback+0x18>)
c0de5696:	4448      	add	r0, r9
c0de5698:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de569a:	b100      	cbz	r0, c0de569e <statusButtonCallback+0x16>
c0de569c:	4700      	bx	r0
c0de569e:	4770      	bx	lr
c0de56a0:	000009d0 	.word	0x000009d0

c0de56a4 <nbgl_useCaseReviewStatus>:
c0de56a4:	460a      	mov	r2, r1
c0de56a6:	b198      	cbz	r0, c0de56d0 <nbgl_useCaseReviewStatus+0x2c>
c0de56a8:	2801      	cmp	r0, #1
c0de56aa:	d016      	beq.n	c0de56da <nbgl_useCaseReviewStatus+0x36>
c0de56ac:	2802      	cmp	r0, #2
c0de56ae:	d019      	beq.n	c0de56e4 <nbgl_useCaseReviewStatus+0x40>
c0de56b0:	2803      	cmp	r0, #3
c0de56b2:	d01c      	beq.n	c0de56ee <nbgl_useCaseReviewStatus+0x4a>
c0de56b4:	2804      	cmp	r0, #4
c0de56b6:	d01f      	beq.n	c0de56f8 <nbgl_useCaseReviewStatus+0x54>
c0de56b8:	2807      	cmp	r0, #7
c0de56ba:	d022      	beq.n	c0de5702 <nbgl_useCaseReviewStatus+0x5e>
c0de56bc:	2806      	cmp	r0, #6
c0de56be:	d025      	beq.n	c0de570c <nbgl_useCaseReviewStatus+0x68>
c0de56c0:	2805      	cmp	r0, #5
c0de56c2:	bf18      	it	ne
c0de56c4:	4770      	bxne	lr
c0de56c6:	4815      	ldr	r0, [pc, #84]	@ (c0de571c <nbgl_useCaseReviewStatus+0x78>)
c0de56c8:	2100      	movs	r1, #0
c0de56ca:	4478      	add	r0, pc
c0de56cc:	f7ff bef8 	b.w	c0de54c0 <nbgl_useCaseStatus>
c0de56d0:	4813      	ldr	r0, [pc, #76]	@ (c0de5720 <nbgl_useCaseReviewStatus+0x7c>)
c0de56d2:	2101      	movs	r1, #1
c0de56d4:	4478      	add	r0, pc
c0de56d6:	f7ff bef3 	b.w	c0de54c0 <nbgl_useCaseStatus>
c0de56da:	4812      	ldr	r0, [pc, #72]	@ (c0de5724 <nbgl_useCaseReviewStatus+0x80>)
c0de56dc:	2100      	movs	r1, #0
c0de56de:	4478      	add	r0, pc
c0de56e0:	f7ff beee 	b.w	c0de54c0 <nbgl_useCaseStatus>
c0de56e4:	4810      	ldr	r0, [pc, #64]	@ (c0de5728 <nbgl_useCaseReviewStatus+0x84>)
c0de56e6:	2101      	movs	r1, #1
c0de56e8:	4478      	add	r0, pc
c0de56ea:	f7ff bee9 	b.w	c0de54c0 <nbgl_useCaseStatus>
c0de56ee:	480f      	ldr	r0, [pc, #60]	@ (c0de572c <nbgl_useCaseReviewStatus+0x88>)
c0de56f0:	2100      	movs	r1, #0
c0de56f2:	4478      	add	r0, pc
c0de56f4:	f7ff bee4 	b.w	c0de54c0 <nbgl_useCaseStatus>
c0de56f8:	4807      	ldr	r0, [pc, #28]	@ (c0de5718 <nbgl_useCaseReviewStatus+0x74>)
c0de56fa:	2101      	movs	r1, #1
c0de56fc:	4478      	add	r0, pc
c0de56fe:	f7ff bedf 	b.w	c0de54c0 <nbgl_useCaseStatus>
c0de5702:	480c      	ldr	r0, [pc, #48]	@ (c0de5734 <nbgl_useCaseReviewStatus+0x90>)
c0de5704:	2100      	movs	r1, #0
c0de5706:	4478      	add	r0, pc
c0de5708:	f7ff beda 	b.w	c0de54c0 <nbgl_useCaseStatus>
c0de570c:	4808      	ldr	r0, [pc, #32]	@ (c0de5730 <nbgl_useCaseReviewStatus+0x8c>)
c0de570e:	2101      	movs	r1, #1
c0de5710:	4478      	add	r0, pc
c0de5712:	f7ff bed5 	b.w	c0de54c0 <nbgl_useCaseStatus>
c0de5716:	bf00      	nop
c0de5718:	00002b09 	.word	0x00002b09
c0de571c:	00002b5d 	.word	0x00002b5d
c0de5720:	00002bed 	.word	0x00002bed
c0de5724:	00002db9 	.word	0x00002db9
c0de5728:	00002c4c 	.word	0x00002c4c
c0de572c:	00002d48 	.word	0x00002d48
c0de5730:	00002b71 	.word	0x00002b71
c0de5734:	00002cab 	.word	0x00002cab

c0de5738 <displayStreamingReviewPage>:
c0de5738:	b570      	push	{r4, r5, r6, lr}
c0de573a:	b08c      	sub	sp, #48	@ 0x30
c0de573c:	4d5a      	ldr	r5, [pc, #360]	@ (c0de58a8 <displayStreamingReviewPage+0x170>)
c0de573e:	2100      	movs	r1, #0
c0de5740:	4604      	mov	r4, r0
c0de5742:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de5746:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de574a:	eb09 0005 	add.w	r0, r9, r5
c0de574e:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5750:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5754:	2806      	cmp	r0, #6
c0de5756:	d015      	beq.n	c0de5784 <displayStreamingReviewPage+0x4c>
c0de5758:	2805      	cmp	r0, #5
c0de575a:	d13d      	bne.n	c0de57d8 <displayStreamingReviewPage+0xa0>
c0de575c:	eb09 0205 	add.w	r2, r9, r5
c0de5760:	2101      	movs	r1, #1
c0de5762:	2302      	movs	r3, #2
c0de5764:	6cd0      	ldr	r0, [r2, #76]	@ 0x4c
c0de5766:	2800      	cmp	r0, #0
c0de5768:	bf08      	it	eq
c0de576a:	21ff      	moveq	r1, #255	@ 0xff
c0de576c:	bf08      	it	eq
c0de576e:	2301      	moveq	r3, #1
c0de5770:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5774:	4293      	cmp	r3, r2
c0de5776:	dd3b      	ble.n	c0de57f0 <displayStreamingReviewPage+0xb8>
c0de5778:	b2d3      	uxtb	r3, r2
c0de577a:	2b00      	cmp	r3, #0
c0de577c:	d063      	beq.n	c0de5846 <displayStreamingReviewPage+0x10e>
c0de577e:	4291      	cmp	r1, r2
c0de5780:	d066      	beq.n	c0de5850 <displayStreamingReviewPage+0x118>
c0de5782:	e066      	b.n	c0de5852 <displayStreamingReviewPage+0x11a>
c0de5784:	eb09 0005 	add.w	r0, r9, r5
c0de5788:	f990 1035 	ldrsb.w	r1, [r0, #53]	@ 0x35
c0de578c:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de578e:	7a02      	ldrb	r2, [r0, #8]
c0de5790:	4291      	cmp	r1, r2
c0de5792:	da2d      	bge.n	c0de57f0 <displayStreamingReviewPage+0xb8>
c0de5794:	eb09 0205 	add.w	r2, r9, r5
c0de5798:	6d93      	ldr	r3, [r2, #88]	@ 0x58
c0de579a:	b3cb      	cbz	r3, c0de5810 <displayStreamingReviewPage+0xd8>
c0de579c:	f892 205d 	ldrb.w	r2, [r2, #93]	@ 0x5d
c0de57a0:	bbb2      	cbnz	r2, c0de5810 <displayStreamingReviewPage+0xd8>
c0de57a2:	eb09 0205 	add.w	r2, r9, r5
c0de57a6:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de57aa:	2a01      	cmp	r2, #1
c0de57ac:	d807      	bhi.n	c0de57be <displayStreamingReviewPage+0x86>
c0de57ae:	2900      	cmp	r1, #0
c0de57b0:	dc05      	bgt.n	c0de57be <displayStreamingReviewPage+0x86>
c0de57b2:	eb09 0305 	add.w	r3, r9, r5
c0de57b6:	f893 305e 	ldrb.w	r3, [r3, #94]	@ 0x5e
c0de57ba:	2b08      	cmp	r3, #8
c0de57bc:	d128      	bne.n	c0de5810 <displayStreamingReviewPage+0xd8>
c0de57be:	2000      	movs	r0, #0
c0de57c0:	9007      	str	r0, [sp, #28]
c0de57c2:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de57c6:	f004 0008 	and.w	r0, r4, #8
c0de57ca:	2a01      	cmp	r2, #1
c0de57cc:	d001      	beq.n	c0de57d2 <displayStreamingReviewPage+0x9a>
c0de57ce:	2901      	cmp	r1, #1
c0de57d0:	db50      	blt.n	c0de5874 <displayStreamingReviewPage+0x13c>
c0de57d2:	f040 0003 	orr.w	r0, r0, #3
c0de57d6:	e04f      	b.n	c0de5878 <displayStreamingReviewPage+0x140>
c0de57d8:	eb09 0005 	add.w	r0, r9, r5
c0de57dc:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de57e0:	b180      	cbz	r0, c0de5804 <displayStreamingReviewPage+0xcc>
c0de57e2:	a909      	add	r1, sp, #36	@ 0x24
c0de57e4:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de57e6:	2000      	movs	r0, #0
c0de57e8:	2500      	movs	r5, #0
c0de57ea:	f000 fe4b 	bl	c0de6484 <getLastPageInfo>
c0de57ee:	e031      	b.n	c0de5854 <displayStreamingReviewPage+0x11c>
c0de57f0:	eb09 0005 	add.w	r0, r9, r5
c0de57f4:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de57f6:	2900      	cmp	r1, #0
c0de57f8:	d053      	beq.n	c0de58a2 <displayStreamingReviewPage+0x16a>
c0de57fa:	2001      	movs	r0, #1
c0de57fc:	b00c      	add	sp, #48	@ 0x30
c0de57fe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5802:	4708      	bx	r1
c0de5804:	a909      	add	r1, sp, #36	@ 0x24
c0de5806:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5808:	2001      	movs	r0, #1
c0de580a:	f000 fe3b 	bl	c0de6484 <getLastPageInfo>
c0de580e:	e020      	b.n	c0de5852 <displayStreamingReviewPage+0x11a>
c0de5810:	2300      	movs	r3, #0
c0de5812:	eb09 0205 	add.w	r2, r9, r5
c0de5816:	b2c9      	uxtb	r1, r1
c0de5818:	f882 305d 	strb.w	r3, [r2, #93]	@ 0x5d
c0de581c:	f88d 300f 	strb.w	r3, [sp, #15]
c0de5820:	ab09      	add	r3, sp, #36	@ 0x24
c0de5822:	ad08      	add	r5, sp, #32
c0de5824:	f10d 020f 	add.w	r2, sp, #15
c0de5828:	e9cd 5300 	strd	r5, r3, [sp]
c0de582c:	9202      	str	r2, [sp, #8]
c0de582e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5830:	ab0a      	add	r3, sp, #40	@ 0x28
c0de5832:	f000 fb03 	bl	c0de5e3c <getPairData>
c0de5836:	9808      	ldr	r0, [sp, #32]
c0de5838:	2800      	cmp	r0, #0
c0de583a:	bf12      	itee	ne
c0de583c:	2501      	movne	r5, #1
c0de583e:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de5842:	0045      	lsleq	r5, r0, #1
c0de5844:	e006      	b.n	c0de5854 <displayStreamingReviewPage+0x11c>
c0de5846:	eb09 0005 	add.w	r0, r9, r5
c0de584a:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de584e:	9109      	str	r1, [sp, #36]	@ 0x24
c0de5850:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de5852:	2500      	movs	r5, #0
c0de5854:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de5856:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de585a:	4e17      	ldr	r6, [pc, #92]	@ (c0de58b8 <displayStreamingReviewPage+0x180>)
c0de585c:	b2e8      	uxtb	r0, r5
c0de585e:	2500      	movs	r5, #0
c0de5860:	9002      	str	r0, [sp, #8]
c0de5862:	4620      	mov	r0, r4
c0de5864:	447e      	add	r6, pc
c0de5866:	f001 f8f9 	bl	c0de6a5c <OUTLINED_FUNCTION_6>
c0de586a:	b00c      	add	sp, #48	@ 0x30
c0de586c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5870:	f001 be3d 	b.w	c0de74ee <nbgl_refresh>
c0de5874:	f040 0001 	orr.w	r0, r0, #1
c0de5878:	490c      	ldr	r1, [pc, #48]	@ (c0de58ac <displayStreamingReviewPage+0x174>)
c0de587a:	2200      	movs	r2, #0
c0de587c:	4479      	add	r1, pc
c0de587e:	9104      	str	r1, [sp, #16]
c0de5880:	490b      	ldr	r1, [pc, #44]	@ (c0de58b0 <displayStreamingReviewPage+0x178>)
c0de5882:	4479      	add	r1, pc
c0de5884:	9106      	str	r1, [sp, #24]
c0de5886:	2100      	movs	r1, #0
c0de5888:	9100      	str	r1, [sp, #0]
c0de588a:	490a      	ldr	r1, [pc, #40]	@ (c0de58b4 <displayStreamingReviewPage+0x17c>)
c0de588c:	ab04      	add	r3, sp, #16
c0de588e:	4479      	add	r1, pc
c0de5890:	f7ff f9b2 	bl	c0de4bf8 <nbgl_stepDrawCenteredInfo>
c0de5894:	eb09 0405 	add.w	r4, r9, r5
c0de5898:	f001 fe29 	bl	c0de74ee <nbgl_refresh>
c0de589c:	2001      	movs	r0, #1
c0de589e:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de58a2:	b00c      	add	sp, #48	@ 0x30
c0de58a4:	bd70      	pop	{r4, r5, r6, pc}
c0de58a6:	bf00      	nop
c0de58a8:	000009d0 	.word	0x000009d0
c0de58ac:	000029be 	.word	0x000029be
c0de58b0:	000027ec 	.word	0x000027ec
c0de58b4:	00000d7b 	.word	0x00000d7b
c0de58b8:	0000113d 	.word	0x0000113d

c0de58bc <nbgl_useCaseSpinner>:
c0de58bc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de58be:	4604      	mov	r4, r0
c0de58c0:	480b      	ldr	r0, [pc, #44]	@ (c0de58f0 <nbgl_useCaseSpinner+0x34>)
c0de58c2:	2140      	movs	r1, #64	@ 0x40
c0de58c4:	f001 f8a2 	bl	c0de6a0c <OUTLINED_FUNCTION_0>
c0de58c8:	2001      	movs	r0, #1
c0de58ca:	4622      	mov	r2, r4
c0de58cc:	2300      	movs	r3, #0
c0de58ce:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de58d2:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de58d6:	2000      	movs	r0, #0
c0de58d8:	e9cd 0000 	strd	r0, r0, [sp]
c0de58dc:	9002      	str	r0, [sp, #8]
c0de58de:	2000      	movs	r0, #0
c0de58e0:	4904      	ldr	r1, [pc, #16]	@ (c0de58f4 <nbgl_useCaseSpinner+0x38>)
c0de58e2:	4479      	add	r1, pc
c0de58e4:	f7ff fe0c 	bl	c0de5500 <drawStep>
c0de58e8:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de58ec:	f001 bdff 	b.w	c0de74ee <nbgl_refresh>
c0de58f0:	000009d0 	.word	0x000009d0
c0de58f4:	00002883 	.word	0x00002883

c0de58f8 <nbgl_useCaseChoice>:
c0de58f8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de58fa:	9c07      	ldr	r4, [sp, #28]
c0de58fc:	9402      	str	r4, [sp, #8]
c0de58fe:	2400      	movs	r4, #0
c0de5900:	9401      	str	r4, [sp, #4]
c0de5902:	9c06      	ldr	r4, [sp, #24]
c0de5904:	9400      	str	r4, [sp, #0]
c0de5906:	f000 f801 	bl	c0de590c <nbgl_useCaseChoiceWithDetails>
c0de590a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de590c <nbgl_useCaseChoiceWithDetails>:
c0de590c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5910:	f8df 806c 	ldr.w	r8, [pc, #108]	@ c0de5980 <nbgl_useCaseChoiceWithDetails+0x74>
c0de5914:	460c      	mov	r4, r1
c0de5916:	4605      	mov	r5, r0
c0de5918:	2140      	movs	r1, #64	@ 0x40
c0de591a:	469a      	mov	sl, r3
c0de591c:	4617      	mov	r7, r2
c0de591e:	eb09 0608 	add.w	r6, r9, r8
c0de5922:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de5926:	f002 fafd 	bl	c0de7f24 <__aeabi_memclr>
c0de592a:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de592c:	2203      	movs	r2, #3
c0de592e:	6570      	str	r0, [r6, #84]	@ 0x54
c0de5930:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de5932:	6531      	str	r1, [r6, #80]	@ 0x50
c0de5934:	9908      	ldr	r1, [sp, #32]
c0de5936:	e9c6 7a11 	strd	r7, sl, [r6, #68]	@ 0x44
c0de593a:	e9c6 540f 	strd	r5, r4, [r6, #60]	@ 0x3c
c0de593e:	64f1      	str	r1, [r6, #76]	@ 0x4c
c0de5940:	2108      	movs	r1, #8
c0de5942:	f886 102c 	strb.w	r1, [r6, #44]	@ 0x2c
c0de5946:	2f00      	cmp	r7, #0
c0de5948:	f04f 0103 	mov.w	r1, #3
c0de594c:	bf18      	it	ne
c0de594e:	2104      	movne	r1, #4
c0de5950:	2d00      	cmp	r5, #0
c0de5952:	bf08      	it	eq
c0de5954:	4611      	moveq	r1, r2
c0de5956:	2c00      	cmp	r4, #0
c0de5958:	bf08      	it	eq
c0de595a:	2102      	moveq	r1, #2
c0de595c:	f886 1034 	strb.w	r1, [r6, #52]	@ 0x34
c0de5960:	b140      	cbz	r0, c0de5974 <nbgl_useCaseChoiceWithDetails+0x68>
c0de5962:	7902      	ldrb	r2, [r0, #4]
c0de5964:	2a03      	cmp	r2, #3
c0de5966:	d105      	bne.n	c0de5974 <nbgl_useCaseChoiceWithDetails+0x68>
c0de5968:	7a00      	ldrb	r0, [r0, #8]
c0de596a:	eb09 0208 	add.w	r2, r9, r8
c0de596e:	4408      	add	r0, r1
c0de5970:	f882 0034 	strb.w	r0, [r2, #52]	@ 0x34
c0de5974:	2000      	movs	r0, #0
c0de5976:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de597a:	f000 b803 	b.w	c0de5984 <displayChoicePage>
c0de597e:	bf00      	nop
c0de5980:	000009d0 	.word	0x000009d0

c0de5984 <displayChoicePage>:
c0de5984:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5986:	4b33      	ldr	r3, [pc, #204]	@ (c0de5a54 <displayChoicePage+0xd0>)
c0de5988:	2400      	movs	r4, #0
c0de598a:	eb09 0103 	add.w	r1, r9, r3
c0de598e:	6c0a      	ldr	r2, [r1, #64]	@ 0x40
c0de5990:	b16a      	cbz	r2, c0de59ae <displayChoicePage+0x2a>
c0de5992:	eb09 0103 	add.w	r1, r9, r3
c0de5996:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de5998:	b131      	cbz	r1, c0de59a8 <displayChoicePage+0x24>
c0de599a:	eb09 0103 	add.w	r1, r9, r3
c0de599e:	6c49      	ldr	r1, [r1, #68]	@ 0x44
c0de59a0:	b111      	cbz	r1, c0de59a8 <displayChoicePage+0x24>
c0de59a2:	2102      	movs	r1, #2
c0de59a4:	2501      	movs	r5, #1
c0de59a6:	e004      	b.n	c0de59b2 <displayChoicePage+0x2e>
c0de59a8:	2101      	movs	r1, #1
c0de59aa:	2500      	movs	r5, #0
c0de59ac:	e001      	b.n	c0de59b2 <displayChoicePage+0x2e>
c0de59ae:	2500      	movs	r5, #0
c0de59b0:	2100      	movs	r1, #0
c0de59b2:	eb09 0603 	add.w	r6, r9, r3
c0de59b6:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de59b8:	f896 6035 	ldrb.w	r6, [r6, #53]	@ 0x35
c0de59bc:	b274      	sxtb	r4, r6
c0de59be:	42a1      	cmp	r1, r4
c0de59c0:	dd08      	ble.n	c0de59d4 <displayChoicePage+0x50>
c0de59c2:	b1ee      	cbz	r6, c0de5a00 <displayChoicePage+0x7c>
c0de59c4:	1e71      	subs	r1, r6, #1
c0de59c6:	fab1 f181 	clz	r1, r1
c0de59ca:	0949      	lsrs	r1, r1, #5
c0de59cc:	4029      	ands	r1, r5
c0de59ce:	2901      	cmp	r1, #1
c0de59d0:	d01c      	beq.n	c0de5a0c <displayChoicePage+0x88>
c0de59d2:	e030      	b.n	c0de5a36 <displayChoicePage+0xb2>
c0de59d4:	d108      	bne.n	c0de59e8 <displayChoicePage+0x64>
c0de59d6:	4a20      	ldr	r2, [pc, #128]	@ (c0de5a58 <displayChoicePage+0xd4>)
c0de59d8:	eb09 0103 	add.w	r1, r9, r3
c0de59dc:	447a      	add	r2, pc
c0de59de:	638a      	str	r2, [r1, #56]	@ 0x38
c0de59e0:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de59e2:	491e      	ldr	r1, [pc, #120]	@ (c0de5a5c <displayChoicePage+0xd8>)
c0de59e4:	4479      	add	r1, pc
c0de59e6:	e00f      	b.n	c0de5a08 <displayChoicePage+0x84>
c0de59e8:	1c4a      	adds	r2, r1, #1
c0de59ea:	42a2      	cmp	r2, r4
c0de59ec:	d112      	bne.n	c0de5a14 <displayChoicePage+0x90>
c0de59ee:	4a1c      	ldr	r2, [pc, #112]	@ (c0de5a60 <displayChoicePage+0xdc>)
c0de59f0:	eb09 0103 	add.w	r1, r9, r3
c0de59f4:	447a      	add	r2, pc
c0de59f6:	638a      	str	r2, [r1, #56]	@ 0x38
c0de59f8:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de59fa:	491a      	ldr	r1, [pc, #104]	@ (c0de5a64 <displayChoicePage+0xe0>)
c0de59fc:	4479      	add	r1, pc
c0de59fe:	e003      	b.n	c0de5a08 <displayChoicePage+0x84>
c0de5a00:	eb09 0103 	add.w	r1, r9, r3
c0de5a04:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de5a06:	b109      	cbz	r1, c0de5a0c <displayChoicePage+0x88>
c0de5a08:	2300      	movs	r3, #0
c0de5a0a:	e017      	b.n	c0de5a3c <displayChoicePage+0xb8>
c0de5a0c:	eb09 0103 	add.w	r1, r9, r3
c0de5a10:	6c4b      	ldr	r3, [r1, #68]	@ 0x44
c0de5a12:	e012      	b.n	c0de5a3a <displayChoicePage+0xb6>
c0de5a14:	eb09 0203 	add.w	r2, r9, r3
c0de5a18:	6d52      	ldr	r2, [r2, #84]	@ 0x54
c0de5a1a:	b162      	cbz	r2, c0de5a36 <displayChoicePage+0xb2>
c0de5a1c:	7913      	ldrb	r3, [r2, #4]
c0de5a1e:	2b03      	cmp	r3, #3
c0de5a20:	d109      	bne.n	c0de5a36 <displayChoicePage+0xb2>
c0de5a22:	1a61      	subs	r1, r4, r1
c0de5a24:	f06f 0307 	mvn.w	r3, #7
c0de5a28:	e9d2 4203 	ldrd	r4, r2, [r2, #12]
c0de5a2c:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de5a30:	5853      	ldr	r3, [r2, r1]
c0de5a32:	5862      	ldr	r2, [r4, r1]
c0de5a34:	e001      	b.n	c0de5a3a <displayChoicePage+0xb6>
c0de5a36:	2200      	movs	r2, #0
c0de5a38:	2300      	movs	r3, #0
c0de5a3a:	2100      	movs	r1, #0
c0de5a3c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5a68 <displayChoicePage+0xe4>)
c0de5a3e:	2400      	movs	r4, #0
c0de5a40:	9402      	str	r4, [sp, #8]
c0de5a42:	447d      	add	r5, pc
c0de5a44:	e9cd 5400 	strd	r5, r4, [sp]
c0de5a48:	f7ff fd5a 	bl	c0de5500 <drawStep>
c0de5a4c:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de5a50:	f001 bd4d 	b.w	c0de74ee <nbgl_refresh>
c0de5a54:	000009d0 	.word	0x000009d0
c0de5a58:	00000fe9 	.word	0x00000fe9
c0de5a5c:	000027be 	.word	0x000027be
c0de5a60:	00000fe5 	.word	0x00000fe5
c0de5a64:	0000272a 	.word	0x0000272a
c0de5a68:	00000fab 	.word	0x00000fab

c0de5a6c <getContentAtIdx>:
c0de5a6c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5a6e:	b087      	sub	sp, #28
c0de5a70:	460d      	mov	r5, r1
c0de5a72:	4606      	mov	r6, r0
c0de5a74:	a801      	add	r0, sp, #4
c0de5a76:	2118      	movs	r1, #24
c0de5a78:	4614      	mov	r4, r2
c0de5a7a:	f002 fa53 	bl	c0de7f24 <__aeabi_memclr>
c0de5a7e:	2d00      	cmp	r5, #0
c0de5a80:	d428      	bmi.n	c0de5ad4 <getContentAtIdx+0x68>
c0de5a82:	7a30      	ldrb	r0, [r6, #8]
c0de5a84:	4285      	cmp	r5, r0
c0de5a86:	da25      	bge.n	c0de5ad4 <getContentAtIdx+0x68>
c0de5a88:	7830      	ldrb	r0, [r6, #0]
c0de5a8a:	b338      	cbz	r0, c0de5adc <getContentAtIdx+0x70>
c0de5a8c:	b314      	cbz	r4, c0de5ad4 <getContentAtIdx+0x68>
c0de5a8e:	4620      	mov	r0, r4
c0de5a90:	2138      	movs	r1, #56	@ 0x38
c0de5a92:	f002 fa47 	bl	c0de7f24 <__aeabi_memclr>
c0de5a96:	4821      	ldr	r0, [pc, #132]	@ (c0de5b1c <getContentAtIdx+0xb0>)
c0de5a98:	4448      	add	r0, r9
c0de5a9a:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5a9c:	b342      	cbz	r2, c0de5af0 <getContentAtIdx+0x84>
c0de5a9e:	b2e8      	uxtb	r0, r5
c0de5aa0:	ad01      	add	r5, sp, #4
c0de5aa2:	4629      	mov	r1, r5
c0de5aa4:	4790      	blx	r2
c0de5aa6:	b1a8      	cbz	r0, c0de5ad4 <getContentAtIdx+0x68>
c0de5aa8:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de5aac:	280a      	cmp	r0, #10
c0de5aae:	7020      	strb	r0, [r4, #0]
c0de5ab0:	d023      	beq.n	c0de5afa <getContentAtIdx+0x8e>
c0de5ab2:	2803      	cmp	r0, #3
c0de5ab4:	d008      	beq.n	c0de5ac8 <getContentAtIdx+0x5c>
c0de5ab6:	2804      	cmp	r0, #4
c0de5ab8:	d025      	beq.n	c0de5b06 <getContentAtIdx+0x9a>
c0de5aba:	2807      	cmp	r0, #7
c0de5abc:	d029      	beq.n	c0de5b12 <getContentAtIdx+0xa6>
c0de5abe:	2808      	cmp	r0, #8
c0de5ac0:	d002      	beq.n	c0de5ac8 <getContentAtIdx+0x5c>
c0de5ac2:	2809      	cmp	r0, #9
c0de5ac4:	d019      	beq.n	c0de5afa <getContentAtIdx+0x8e>
c0de5ac6:	b928      	cbnz	r0, c0de5ad4 <getContentAtIdx+0x68>
c0de5ac8:	1d28      	adds	r0, r5, #4
c0de5aca:	1d21      	adds	r1, r4, #4
c0de5acc:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de5ad0:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de5ad2:	e000      	b.n	c0de5ad6 <getContentAtIdx+0x6a>
c0de5ad4:	2400      	movs	r4, #0
c0de5ad6:	4620      	mov	r0, r4
c0de5ad8:	b007      	add	sp, #28
c0de5ada:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5adc:	6871      	ldr	r1, [r6, #4]
c0de5ade:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de5ae2:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5ae6:	b007      	add	sp, #28
c0de5ae8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5aec:	f001 bf0e 	b.w	c0de790c <pic>
c0de5af0:	6872      	ldr	r2, [r6, #4]
c0de5af2:	b2e8      	uxtb	r0, r5
c0de5af4:	4621      	mov	r1, r4
c0de5af6:	4790      	blx	r2
c0de5af8:	e7ed      	b.n	c0de5ad6 <getContentAtIdx+0x6a>
c0de5afa:	1d28      	adds	r0, r5, #4
c0de5afc:	1d21      	adds	r1, r4, #4
c0de5afe:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de5b02:	c12c      	stmia	r1!, {r2, r3, r5}
c0de5b04:	e7e7      	b.n	c0de5ad6 <getContentAtIdx+0x6a>
c0de5b06:	1d28      	adds	r0, r5, #4
c0de5b08:	1d21      	adds	r1, r4, #4
c0de5b0a:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de5b0e:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de5b10:	e7e1      	b.n	c0de5ad6 <getContentAtIdx+0x6a>
c0de5b12:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de5b16:	e9c4 0101 	strd	r0, r1, [r4, #4]
c0de5b1a:	e7dc      	b.n	c0de5ad6 <getContentAtIdx+0x6a>
c0de5b1c:	000009d0 	.word	0x000009d0

c0de5b20 <getContentNbElement>:
c0de5b20:	7802      	ldrb	r2, [r0, #0]
c0de5b22:	2101      	movs	r1, #1
c0de5b24:	b1a2      	cbz	r2, c0de5b50 <getContentNbElement+0x30>
c0de5b26:	2a03      	cmp	r2, #3
c0de5b28:	d012      	beq.n	c0de5b50 <getContentNbElement+0x30>
c0de5b2a:	2a0a      	cmp	r2, #10
c0de5b2c:	d007      	beq.n	c0de5b3e <getContentNbElement+0x1e>
c0de5b2e:	2a07      	cmp	r2, #7
c0de5b30:	d007      	beq.n	c0de5b42 <getContentNbElement+0x22>
c0de5b32:	2a08      	cmp	r2, #8
c0de5b34:	d007      	beq.n	c0de5b46 <getContentNbElement+0x26>
c0de5b36:	2a09      	cmp	r2, #9
c0de5b38:	d007      	beq.n	c0de5b4a <getContentNbElement+0x2a>
c0de5b3a:	2a04      	cmp	r2, #4
c0de5b3c:	d107      	bne.n	c0de5b4e <getContentNbElement+0x2e>
c0de5b3e:	7b01      	ldrb	r1, [r0, #12]
c0de5b40:	e006      	b.n	c0de5b50 <getContentNbElement+0x30>
c0de5b42:	7a01      	ldrb	r1, [r0, #8]
c0de5b44:	e004      	b.n	c0de5b50 <getContentNbElement+0x30>
c0de5b46:	7c01      	ldrb	r1, [r0, #16]
c0de5b48:	e002      	b.n	c0de5b50 <getContentNbElement+0x30>
c0de5b4a:	7a41      	ldrb	r1, [r0, #9]
c0de5b4c:	e000      	b.n	c0de5b50 <getContentNbElement+0x30>
c0de5b4e:	2100      	movs	r1, #0
c0de5b50:	4608      	mov	r0, r1
c0de5b52:	4770      	bx	lr

c0de5b54 <displayContent>:
c0de5b54:	b570      	push	{r4, r5, r6, lr}
c0de5b56:	b08a      	sub	sp, #40	@ 0x28
c0de5b58:	460d      	mov	r5, r1
c0de5b5a:	4604      	mov	r4, r0
c0de5b5c:	a804      	add	r0, sp, #16
c0de5b5e:	2118      	movs	r1, #24
c0de5b60:	f002 f9e0 	bl	c0de7f24 <__aeabi_memclr>
c0de5b64:	4820      	ldr	r0, [pc, #128]	@ (c0de5be8 <displayContent+0x94>)
c0de5b66:	f000 ff57 	bl	c0de6a18 <OUTLINED_FUNCTION_1>
c0de5b6a:	dd14      	ble.n	c0de5b96 <displayContent+0x42>
c0de5b6c:	a904      	add	r1, sp, #16
c0de5b6e:	4628      	mov	r0, r5
c0de5b70:	f000 f846 	bl	c0de5c00 <getContentPage>
c0de5b74:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5b78:	b318      	cbz	r0, c0de5bc2 <displayContent+0x6e>
c0de5b7a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5b7e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5b82:	481e      	ldr	r0, [pc, #120]	@ (c0de5bfc <displayContent+0xa8>)
c0de5b84:	4478      	add	r0, pc
c0de5b86:	2b00      	cmp	r3, #0
c0de5b88:	9000      	str	r0, [sp, #0]
c0de5b8a:	4620      	mov	r0, r4
c0de5b8c:	bf18      	it	ne
c0de5b8e:	2301      	movne	r3, #1
c0de5b90:	f000 f8d8 	bl	c0de5d44 <drawSwitchStep>
c0de5b94:	e023      	b.n	c0de5bde <displayContent+0x8a>
c0de5b96:	4448      	add	r0, r9
c0de5b98:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de5b9a:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5b9c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de5b9e:	4a13      	ldr	r2, [pc, #76]	@ (c0de5bec <displayContent+0x98>)
c0de5ba0:	2900      	cmp	r1, #0
c0de5ba2:	447a      	add	r2, pc
c0de5ba4:	bf18      	it	ne
c0de5ba6:	460a      	movne	r2, r1
c0de5ba8:	9205      	str	r2, [sp, #20]
c0de5baa:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5bae:	4910      	ldr	r1, [pc, #64]	@ (c0de5bf0 <displayContent+0x9c>)
c0de5bb0:	4a10      	ldr	r2, [pc, #64]	@ (c0de5bf4 <displayContent+0xa0>)
c0de5bb2:	2803      	cmp	r0, #3
c0de5bb4:	447a      	add	r2, pc
c0de5bb6:	4479      	add	r1, pc
c0de5bb8:	bf08      	it	eq
c0de5bba:	460a      	moveq	r2, r1
c0de5bbc:	9207      	str	r2, [sp, #28]
c0de5bbe:	2000      	movs	r0, #0
c0de5bc0:	e002      	b.n	c0de5bc8 <displayContent+0x74>
c0de5bc2:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5bc6:	0040      	lsls	r0, r0, #1
c0de5bc8:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5bcc:	9907      	ldr	r1, [sp, #28]
c0de5bce:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5bf8 <displayContent+0xa4>)
c0de5bd0:	b2c0      	uxtb	r0, r0
c0de5bd2:	2500      	movs	r5, #0
c0de5bd4:	9002      	str	r0, [sp, #8]
c0de5bd6:	4620      	mov	r0, r4
c0de5bd8:	447e      	add	r6, pc
c0de5bda:	f000 ff3f 	bl	c0de6a5c <OUTLINED_FUNCTION_6>
c0de5bde:	f001 fc86 	bl	c0de74ee <nbgl_refresh>
c0de5be2:	b00a      	add	sp, #40	@ 0x28
c0de5be4:	bd70      	pop	{r4, r5, r6, pc}
c0de5be6:	bf00      	nop
c0de5be8:	000009d0 	.word	0x000009d0
c0de5bec:	000028c3 	.word	0x000028c3
c0de5bf0:	00002570 	.word	0x00002570
c0de5bf4:	0000252c 	.word	0x0000252c
c0de5bf8:	000001b9 	.word	0x000001b9
c0de5bfc:	0000020d 	.word	0x0000020d

c0de5c00 <getContentPage>:
c0de5c00:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5c02:	b093      	sub	sp, #76	@ 0x4c
c0de5c04:	4606      	mov	r6, r0
c0de5c06:	2000      	movs	r0, #0
c0de5c08:	460c      	mov	r4, r1
c0de5c0a:	2138      	movs	r1, #56	@ 0x38
c0de5c0c:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de5c10:	ad04      	add	r5, sp, #16
c0de5c12:	4628      	mov	r0, r5
c0de5c14:	f002 f986 	bl	c0de7f24 <__aeabi_memclr>
c0de5c18:	4f47      	ldr	r7, [pc, #284]	@ (c0de5d38 <getContentPage+0x138>)
c0de5c1a:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de5c1e:	462a      	mov	r2, r5
c0de5c20:	eb09 0007 	add.w	r0, r9, r7
c0de5c24:	f000 ff13 	bl	c0de6a4e <OUTLINED_FUNCTION_4>
c0de5c28:	2800      	cmp	r0, #0
c0de5c2a:	d07a      	beq.n	c0de5d22 <getContentPage+0x122>
c0de5c2c:	4605      	mov	r5, r0
c0de5c2e:	7800      	ldrb	r0, [r0, #0]
c0de5c30:	280a      	cmp	r0, #10
c0de5c32:	d011      	beq.n	c0de5c58 <getContentPage+0x58>
c0de5c34:	2803      	cmp	r0, #3
c0de5c36:	d02c      	beq.n	c0de5c92 <getContentPage+0x92>
c0de5c38:	2804      	cmp	r0, #4
c0de5c3a:	d035      	beq.n	c0de5ca8 <getContentPage+0xa8>
c0de5c3c:	2807      	cmp	r0, #7
c0de5c3e:	d045      	beq.n	c0de5ccc <getContentPage+0xcc>
c0de5c40:	2808      	cmp	r0, #8
c0de5c42:	d060      	beq.n	c0de5d06 <getContentPage+0x106>
c0de5c44:	2809      	cmp	r0, #9
c0de5c46:	d007      	beq.n	c0de5c58 <getContentPage+0x58>
c0de5c48:	2800      	cmp	r0, #0
c0de5c4a:	d16a      	bne.n	c0de5d22 <getContentPage+0x122>
c0de5c4c:	6868      	ldr	r0, [r5, #4]
c0de5c4e:	f001 fe5d 	bl	c0de790c <pic>
c0de5c52:	6060      	str	r0, [r4, #4]
c0de5c54:	68a8      	ldr	r0, [r5, #8]
c0de5c56:	e019      	b.n	c0de5c8c <getContentPage+0x8c>
c0de5c58:	1d28      	adds	r0, r5, #4
c0de5c5a:	eb09 0607 	add.w	r6, r9, r7
c0de5c5e:	f001 fe55 	bl	c0de790c <pic>
c0de5c62:	6800      	ldr	r0, [r0, #0]
c0de5c64:	f001 fe52 	bl	c0de790c <pic>
c0de5c68:	f896 102c 	ldrb.w	r1, [r6, #44]	@ 0x2c
c0de5c6c:	4605      	mov	r5, r0
c0de5c6e:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de5c70:	2910      	cmp	r1, #16
c0de5c72:	d100      	bne.n	c0de5c76 <getContentPage+0x76>
c0de5c74:	b918      	cbnz	r0, c0de5c7e <getContentPage+0x7e>
c0de5c76:	290f      	cmp	r1, #15
c0de5c78:	d155      	bne.n	c0de5d26 <getContentPage+0x126>
c0de5c7a:	2800      	cmp	r0, #0
c0de5c7c:	d053      	beq.n	c0de5d26 <getContentPage+0x126>
c0de5c7e:	f001 fe45 	bl	c0de790c <pic>
c0de5c82:	6060      	str	r0, [r4, #4]
c0de5c84:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5c88:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5c8c:	f001 fe3e 	bl	c0de790c <pic>
c0de5c90:	e046      	b.n	c0de5d20 <getContentPage+0x120>
c0de5c92:	68a8      	ldr	r0, [r5, #8]
c0de5c94:	4e29      	ldr	r6, [pc, #164]	@ (c0de5d3c <getContentPage+0x13c>)
c0de5c96:	447e      	add	r6, pc
c0de5c98:	47b0      	blx	r6
c0de5c9a:	60e0      	str	r0, [r4, #12]
c0de5c9c:	6868      	ldr	r0, [r5, #4]
c0de5c9e:	47b0      	blx	r6
c0de5ca0:	6060      	str	r0, [r4, #4]
c0de5ca2:	68e8      	ldr	r0, [r5, #12]
c0de5ca4:	47b0      	blx	r6
c0de5ca6:	e03b      	b.n	c0de5d20 <getContentPage+0x120>
c0de5ca8:	f104 0015 	add.w	r0, r4, #21
c0de5cac:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5cb0:	f104 020c 	add.w	r2, r4, #12
c0de5cb4:	f104 0310 	add.w	r3, r4, #16
c0de5cb8:	e9cd 3200 	strd	r3, r2, [sp]
c0de5cbc:	9002      	str	r0, [sp, #8]
c0de5cbe:	1d28      	adds	r0, r5, #4
c0de5cc0:	1d22      	adds	r2, r4, #4
c0de5cc2:	f104 0308 	add.w	r3, r4, #8
c0de5cc6:	f000 f8b9 	bl	c0de5e3c <getPairData>
c0de5cca:	e02a      	b.n	c0de5d22 <getContentPage+0x122>
c0de5ccc:	2001      	movs	r0, #1
c0de5cce:	444f      	add	r7, r9
c0de5cd0:	7020      	strb	r0, [r4, #0]
c0de5cd2:	6868      	ldr	r0, [r5, #4]
c0de5cd4:	f001 fe1a 	bl	c0de790c <pic>
c0de5cd8:	4919      	ldr	r1, [pc, #100]	@ (c0de5d40 <getContentPage+0x140>)
c0de5cda:	4479      	add	r1, pc
c0de5cdc:	63b9      	str	r1, [r7, #56]	@ 0x38
c0de5cde:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5ce2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5ce6:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de5cea:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5cee:	6062      	str	r2, [r4, #4]
c0de5cf0:	6841      	ldr	r1, [r0, #4]
c0de5cf2:	60a1      	str	r1, [r4, #8]
c0de5cf4:	7a00      	ldrb	r0, [r0, #8]
c0de5cf6:	1e41      	subs	r1, r0, #1
c0de5cf8:	bf18      	it	ne
c0de5cfa:	2101      	movne	r1, #1
c0de5cfc:	2e00      	cmp	r6, #0
c0de5cfe:	bf08      	it	eq
c0de5d00:	4601      	moveq	r1, r0
c0de5d02:	7521      	strb	r1, [r4, #20]
c0de5d04:	e00d      	b.n	c0de5d22 <getContentPage+0x122>
c0de5d06:	6868      	ldr	r0, [r5, #4]
c0de5d08:	f001 fe00 	bl	c0de790c <pic>
c0de5d0c:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de5d10:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5d14:	6060      	str	r0, [r4, #4]
c0de5d16:	68a8      	ldr	r0, [r5, #8]
c0de5d18:	f001 fdf8 	bl	c0de790c <pic>
c0de5d1c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5d20:	60a0      	str	r0, [r4, #8]
c0de5d22:	b013      	add	sp, #76	@ 0x4c
c0de5d24:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5d26:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5d2a:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5d2e:	f001 fded 	bl	c0de790c <pic>
c0de5d32:	6060      	str	r0, [r4, #4]
c0de5d34:	e7f5      	b.n	c0de5d22 <getContentPage+0x122>
c0de5d36:	bf00      	nop
c0de5d38:	000009d0 	.word	0x000009d0
c0de5d3c:	00001c73 	.word	0x00001c73
c0de5d40:	000001a7 	.word	0x000001a7

c0de5d44 <drawSwitchStep>:
c0de5d44:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5d46:	b085      	sub	sp, #20
c0de5d48:	4c11      	ldr	r4, [pc, #68]	@ (c0de5d90 <drawSwitchStep+0x4c>)
c0de5d4a:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de5d4e:	2600      	movs	r6, #0
c0de5d50:	eb09 0504 	add.w	r5, r9, r4
c0de5d54:	f895 7034 	ldrb.w	r7, [r5, #52]	@ 0x34
c0de5d58:	2500      	movs	r5, #0
c0de5d5a:	2f02      	cmp	r7, #2
c0de5d5c:	d30a      	bcc.n	c0de5d74 <drawSwitchStep+0x30>
c0de5d5e:	444c      	add	r4, r9
c0de5d60:	f994 4035 	ldrsb.w	r4, [r4, #53]	@ 0x35
c0de5d64:	b12c      	cbz	r4, c0de5d72 <drawSwitchStep+0x2e>
c0de5d66:	3f01      	subs	r7, #1
c0de5d68:	2603      	movs	r6, #3
c0de5d6a:	42a7      	cmp	r7, r4
c0de5d6c:	bf08      	it	eq
c0de5d6e:	2602      	moveq	r6, #2
c0de5d70:	e000      	b.n	c0de5d74 <drawSwitchStep+0x30>
c0de5d72:	2601      	movs	r6, #1
c0de5d74:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5d78:	f88d 3010 	strb.w	r3, [sp, #16]
c0de5d7c:	9500      	str	r5, [sp, #0]
c0de5d7e:	4330      	orrs	r0, r6
c0de5d80:	ab02      	add	r3, sp, #8
c0de5d82:	4661      	mov	r1, ip
c0de5d84:	2200      	movs	r2, #0
c0de5d86:	f7ff f81f 	bl	c0de4dc8 <nbgl_stepDrawSwitch>
c0de5d8a:	b005      	add	sp, #20
c0de5d8c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5d8e:	bf00      	nop
c0de5d90:	000009d0 	.word	0x000009d0

c0de5d94 <contentCallback>:
c0de5d94:	b5e0      	push	{r5, r6, r7, lr}
c0de5d96:	4608      	mov	r0, r1
c0de5d98:	f10d 0107 	add.w	r1, sp, #7
c0de5d9c:	f000 f928 	bl	c0de5ff0 <buttonGenericCallback>
c0de5da0:	b130      	cbz	r0, c0de5db0 <contentCallback+0x1c>
c0de5da2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5da6:	2100      	movs	r1, #0
c0de5da8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5dac:	f7ff bed2 	b.w	c0de5b54 <displayContent>
c0de5db0:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5db4 <getContentElemAtIdx>:
c0de5db4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5db8:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5e34 <getContentElemAtIdx+0x80>)
c0de5dba:	4606      	mov	r6, r0
c0de5dbc:	2700      	movs	r7, #0
c0de5dbe:	eb09 0004 	add.w	r0, r9, r4
c0de5dc2:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
c0de5dc6:	2b10      	cmp	r3, #16
c0de5dc8:	d830      	bhi.n	c0de5e2c <getContentElemAtIdx+0x78>
c0de5dca:	4693      	mov	fp, r2
c0de5dcc:	2201      	movs	r2, #1
c0de5dce:	9101      	str	r1, [sp, #4]
c0de5dd0:	fa02 f303 	lsl.w	r3, r2, r3
c0de5dd4:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5dd8:	d004      	beq.n	c0de5de4 <getContentElemAtIdx+0x30>
c0de5dda:	eb09 0004 	add.w	r0, r9, r4
c0de5dde:	46a2      	mov	sl, r4
c0de5de0:	6c84      	ldr	r4, [r0, #72]	@ 0x48
c0de5de2:	e005      	b.n	c0de5df0 <getContentElemAtIdx+0x3c>
c0de5de4:	4a14      	ldr	r2, [pc, #80]	@ (c0de5e38 <getContentElemAtIdx+0x84>)
c0de5de6:	4213      	tst	r3, r2
c0de5de8:	d020      	beq.n	c0de5e2c <getContentElemAtIdx+0x78>
c0de5dea:	46a2      	mov	sl, r4
c0de5dec:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0de5df0:	2700      	movs	r7, #0
c0de5df2:	2000      	movs	r0, #0
c0de5df4:	f04f 0800 	mov.w	r8, #0
c0de5df8:	4605      	mov	r5, r0
c0de5dfa:	7a20      	ldrb	r0, [r4, #8]
c0de5dfc:	4580      	cmp	r8, r0
c0de5dfe:	d215      	bcs.n	c0de5e2c <getContentElemAtIdx+0x78>
c0de5e00:	fa4f f188 	sxtb.w	r1, r8
c0de5e04:	4620      	mov	r0, r4
c0de5e06:	465a      	mov	r2, fp
c0de5e08:	f7ff fe30 	bl	c0de5a6c <getContentAtIdx>
c0de5e0c:	4607      	mov	r7, r0
c0de5e0e:	f7ff fe87 	bl	c0de5b20 <getContentNbElement>
c0de5e12:	b2e9      	uxtb	r1, r5
c0de5e14:	f108 0801 	add.w	r8, r8, #1
c0de5e18:	4408      	add	r0, r1
c0de5e1a:	42b0      	cmp	r0, r6
c0de5e1c:	d9ec      	bls.n	c0de5df8 <getContentElemAtIdx+0x44>
c0de5e1e:	eb09 000a 	add.w	r0, r9, sl
c0de5e22:	9901      	ldr	r1, [sp, #4]
c0de5e24:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5e28:	1b40      	subs	r0, r0, r5
c0de5e2a:	7008      	strb	r0, [r1, #0]
c0de5e2c:	4638      	mov	r0, r7
c0de5e2e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5e32:	bf00      	nop
c0de5e34:	000009d0 	.word	0x000009d0
c0de5e38:	00010008 	.word	0x00010008

c0de5e3c <getPairData>:
c0de5e3c:	b5b0      	push	{r4, r5, r7, lr}
c0de5e3e:	4615      	mov	r5, r2
c0de5e40:	6802      	ldr	r2, [r0, #0]
c0de5e42:	461c      	mov	r4, r3
c0de5e44:	b112      	cbz	r2, c0de5e4c <getPairData+0x10>
c0de5e46:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5e4a:	e002      	b.n	c0de5e52 <getPairData+0x16>
c0de5e4c:	6842      	ldr	r2, [r0, #4]
c0de5e4e:	4608      	mov	r0, r1
c0de5e50:	4790      	blx	r2
c0de5e52:	f001 fd5b 	bl	c0de790c <pic>
c0de5e56:	6802      	ldr	r2, [r0, #0]
c0de5e58:	9904      	ldr	r1, [sp, #16]
c0de5e5a:	602a      	str	r2, [r5, #0]
c0de5e5c:	6842      	ldr	r2, [r0, #4]
c0de5e5e:	6022      	str	r2, [r4, #0]
c0de5e60:	7b02      	ldrb	r2, [r0, #12]
c0de5e62:	0753      	lsls	r3, r2, #29
c0de5e64:	d403      	bmi.n	c0de5e6e <getPairData+0x32>
c0de5e66:	0792      	lsls	r2, r2, #30
c0de5e68:	d404      	bmi.n	c0de5e74 <getPairData+0x38>
c0de5e6a:	2000      	movs	r0, #0
c0de5e6c:	e000      	b.n	c0de5e70 <getPairData+0x34>
c0de5e6e:	6880      	ldr	r0, [r0, #8]
c0de5e70:	6008      	str	r0, [r1, #0]
c0de5e72:	bdb0      	pop	{r4, r5, r7, pc}
c0de5e74:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5e78:	2301      	movs	r3, #1
c0de5e7a:	700b      	strb	r3, [r1, #0]
c0de5e7c:	6880      	ldr	r0, [r0, #8]
c0de5e7e:	6010      	str	r0, [r2, #0]
c0de5e80:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5e84 <onSwitchAction>:
c0de5e84:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5e86:	b08f      	sub	sp, #60	@ 0x3c
c0de5e88:	ac01      	add	r4, sp, #4
c0de5e8a:	2138      	movs	r1, #56	@ 0x38
c0de5e8c:	4620      	mov	r0, r4
c0de5e8e:	f002 f849 	bl	c0de7f24 <__aeabi_memclr>
c0de5e92:	4e26      	ldr	r6, [pc, #152]	@ (c0de5f2c <onSwitchAction+0xa8>)
c0de5e94:	f10d 0103 	add.w	r1, sp, #3
c0de5e98:	4622      	mov	r2, r4
c0de5e9a:	eb09 0006 	add.w	r0, r9, r6
c0de5e9e:	f000 fdd6 	bl	c0de6a4e <OUTLINED_FUNCTION_4>
c0de5ea2:	2800      	cmp	r0, #0
c0de5ea4:	d040      	beq.n	c0de5f28 <onSwitchAction+0xa4>
c0de5ea6:	4604      	mov	r4, r0
c0de5ea8:	7800      	ldrb	r0, [r0, #0]
c0de5eaa:	2807      	cmp	r0, #7
c0de5eac:	d13c      	bne.n	c0de5f28 <onSwitchAction+0xa4>
c0de5eae:	6860      	ldr	r0, [r4, #4]
c0de5eb0:	eb09 0706 	add.w	r7, r9, r6
c0de5eb4:	f001 fd2a 	bl	c0de790c <pic>
c0de5eb8:	4605      	mov	r5, r0
c0de5eba:	f897 002c 	ldrb.w	r0, [r7, #44]	@ 0x2c
c0de5ebe:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5ec2:	2810      	cmp	r0, #16
c0de5ec4:	d811      	bhi.n	c0de5eea <onSwitchAction+0x66>
c0de5ec6:	2101      	movs	r1, #1
c0de5ec8:	fa01 f000 	lsl.w	r0, r1, r0
c0de5ecc:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5ed0:	d004      	beq.n	c0de5edc <onSwitchAction+0x58>
c0de5ed2:	2000      	movs	r0, #0
c0de5ed4:	2101      	movs	r1, #1
c0de5ed6:	f000 f82d 	bl	c0de5f34 <displaySettingsPage>
c0de5eda:	e006      	b.n	c0de5eea <onSwitchAction+0x66>
c0de5edc:	4914      	ldr	r1, [pc, #80]	@ (c0de5f30 <onSwitchAction+0xac>)
c0de5ede:	4208      	tst	r0, r1
c0de5ee0:	d003      	beq.n	c0de5eea <onSwitchAction+0x66>
c0de5ee2:	2000      	movs	r0, #0
c0de5ee4:	2101      	movs	r1, #1
c0de5ee6:	f7ff fe35 	bl	c0de5b54 <displayContent>
c0de5eea:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de5eec:	b188      	cbz	r0, c0de5f12 <onSwitchAction+0x8e>
c0de5eee:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5ef2:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5ef6:	f001 fd09 	bl	c0de790c <pic>
c0de5efa:	7a21      	ldrb	r1, [r4, #8]
c0de5efc:	eb09 0206 	add.w	r2, r9, r6
c0de5f00:	4603      	mov	r3, r0
c0de5f02:	7a60      	ldrb	r0, [r4, #9]
c0de5f04:	3901      	subs	r1, #1
c0de5f06:	bf18      	it	ne
c0de5f08:	2101      	movne	r1, #1
c0de5f0a:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5f0e:	4798      	blx	r3
c0de5f10:	e00a      	b.n	c0de5f28 <onSwitchAction+0xa4>
c0de5f12:	eb09 0006 	add.w	r0, r9, r6
c0de5f16:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5f18:	b132      	cbz	r2, c0de5f28 <onSwitchAction+0xa4>
c0de5f1a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de5f1e:	2100      	movs	r1, #0
c0de5f20:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5f24:	7a40      	ldrb	r0, [r0, #9]
c0de5f26:	4790      	blx	r2
c0de5f28:	b00f      	add	sp, #60	@ 0x3c
c0de5f2a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5f2c:	000009d0 	.word	0x000009d0
c0de5f30:	00010008 	.word	0x00010008

c0de5f34 <displaySettingsPage>:
c0de5f34:	b5b0      	push	{r4, r5, r7, lr}
c0de5f36:	b08a      	sub	sp, #40	@ 0x28
c0de5f38:	460d      	mov	r5, r1
c0de5f3a:	4604      	mov	r4, r0
c0de5f3c:	a804      	add	r0, sp, #16
c0de5f3e:	2118      	movs	r1, #24
c0de5f40:	f001 fff0 	bl	c0de7f24 <__aeabi_memclr>
c0de5f44:	481c      	ldr	r0, [pc, #112]	@ (c0de5fb8 <displaySettingsPage+0x84>)
c0de5f46:	f000 fd67 	bl	c0de6a18 <OUTLINED_FUNCTION_1>
c0de5f4a:	dd14      	ble.n	c0de5f76 <displaySettingsPage+0x42>
c0de5f4c:	a904      	add	r1, sp, #16
c0de5f4e:	4628      	mov	r0, r5
c0de5f50:	f7ff fe56 	bl	c0de5c00 <getContentPage>
c0de5f54:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5f58:	b1e8      	cbz	r0, c0de5f96 <displaySettingsPage+0x62>
c0de5f5a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5f5e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5f62:	481a      	ldr	r0, [pc, #104]	@ (c0de5fcc <displaySettingsPage+0x98>)
c0de5f64:	4478      	add	r0, pc
c0de5f66:	2b00      	cmp	r3, #0
c0de5f68:	9000      	str	r0, [sp, #0]
c0de5f6a:	4620      	mov	r0, r4
c0de5f6c:	bf18      	it	ne
c0de5f6e:	2301      	movne	r3, #1
c0de5f70:	f7ff fee8 	bl	c0de5d44 <drawSwitchStep>
c0de5f74:	e01b      	b.n	c0de5fae <displaySettingsPage+0x7a>
c0de5f76:	4448      	add	r0, r9
c0de5f78:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5f7c:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5f7e:	4b0f      	ldr	r3, [pc, #60]	@ (c0de5fbc <displaySettingsPage+0x88>)
c0de5f80:	447b      	add	r3, pc
c0de5f82:	290f      	cmp	r1, #15
c0de5f84:	bf08      	it	eq
c0de5f86:	4613      	moveq	r3, r2
c0de5f88:	6383      	str	r3, [r0, #56]	@ 0x38
c0de5f8a:	480d      	ldr	r0, [pc, #52]	@ (c0de5fc0 <displaySettingsPage+0x8c>)
c0de5f8c:	4478      	add	r0, pc
c0de5f8e:	9005      	str	r0, [sp, #20]
c0de5f90:	480c      	ldr	r0, [pc, #48]	@ (c0de5fc4 <displaySettingsPage+0x90>)
c0de5f92:	4478      	add	r0, pc
c0de5f94:	9007      	str	r0, [sp, #28]
c0de5f96:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5f9a:	9907      	ldr	r1, [sp, #28]
c0de5f9c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5fc8 <displaySettingsPage+0x94>)
c0de5f9e:	2000      	movs	r0, #0
c0de5fa0:	9002      	str	r0, [sp, #8]
c0de5fa2:	447d      	add	r5, pc
c0de5fa4:	e9cd 5000 	strd	r5, r0, [sp]
c0de5fa8:	4620      	mov	r0, r4
c0de5faa:	f7ff faa9 	bl	c0de5500 <drawStep>
c0de5fae:	f001 fa9e 	bl	c0de74ee <nbgl_refresh>
c0de5fb2:	b00a      	add	sp, #40	@ 0x28
c0de5fb4:	bdb0      	pop	{r4, r5, r7, pc}
c0de5fb6:	bf00      	nop
c0de5fb8:	000009d0 	.word	0x000009d0
c0de5fbc:	fffff10d 	.word	0xfffff10d
c0de5fc0:	000024d9 	.word	0x000024d9
c0de5fc4:	0000214e 	.word	0x0000214e
c0de5fc8:	0000002b 	.word	0x0000002b
c0de5fcc:	00000069 	.word	0x00000069

c0de5fd0 <settingsCallback>:
c0de5fd0:	b5e0      	push	{r5, r6, r7, lr}
c0de5fd2:	4608      	mov	r0, r1
c0de5fd4:	f10d 0107 	add.w	r1, sp, #7
c0de5fd8:	f000 f80a 	bl	c0de5ff0 <buttonGenericCallback>
c0de5fdc:	b130      	cbz	r0, c0de5fec <settingsCallback+0x1c>
c0de5fde:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5fe2:	2100      	movs	r1, #0
c0de5fe4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5fe8:	f7ff bfa4 	b.w	c0de5f34 <displaySettingsPage>
c0de5fec:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5ff0 <buttonGenericCallback>:
c0de5ff0:	b5b0      	push	{r4, r5, r7, lr}
c0de5ff2:	b090      	sub	sp, #64	@ 0x40
c0de5ff4:	460c      	mov	r4, r1
c0de5ff6:	4605      	mov	r5, r0
c0de5ff8:	a801      	add	r0, sp, #4
c0de5ffa:	2138      	movs	r1, #56	@ 0x38
c0de5ffc:	f001 ff92 	bl	c0de7f24 <__aeabi_memclr>
c0de6000:	2d04      	cmp	r5, #4
c0de6002:	d00d      	beq.n	c0de6020 <buttonGenericCallback+0x30>
c0de6004:	2d01      	cmp	r5, #1
c0de6006:	d012      	beq.n	c0de602e <buttonGenericCallback+0x3e>
c0de6008:	2d00      	cmp	r5, #0
c0de600a:	d17c      	bne.n	c0de6106 <buttonGenericCallback+0x116>
c0de600c:	483f      	ldr	r0, [pc, #252]	@ (c0de610c <buttonGenericCallback+0x11c>)
c0de600e:	eb09 0100 	add.w	r1, r9, r0
c0de6012:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de6016:	2901      	cmp	r1, #1
c0de6018:	db1d      	blt.n	c0de6056 <buttonGenericCallback+0x66>
c0de601a:	3901      	subs	r1, #1
c0de601c:	2008      	movs	r0, #8
c0de601e:	e013      	b.n	c0de6048 <buttonGenericCallback+0x58>
c0de6020:	4c3a      	ldr	r4, [pc, #232]	@ (c0de610c <buttonGenericCallback+0x11c>)
c0de6022:	eb09 0004 	add.w	r0, r9, r4
c0de6026:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de6028:	b338      	cbz	r0, c0de607a <buttonGenericCallback+0x8a>
c0de602a:	4780      	blx	r0
c0de602c:	e06b      	b.n	c0de6106 <buttonGenericCallback+0x116>
c0de602e:	4837      	ldr	r0, [pc, #220]	@ (c0de610c <buttonGenericCallback+0x11c>)
c0de6030:	eb09 0100 	add.w	r1, r9, r0
c0de6034:	f991 0035 	ldrsb.w	r0, [r1, #53]	@ 0x35
c0de6038:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de603c:	3901      	subs	r1, #1
c0de603e:	4281      	cmp	r1, r0
c0de6040:	dd61      	ble.n	c0de6106 <buttonGenericCallback+0x116>
c0de6042:	b2c0      	uxtb	r0, r0
c0de6044:	1c41      	adds	r1, r0, #1
c0de6046:	2000      	movs	r0, #0
c0de6048:	4a30      	ldr	r2, [pc, #192]	@ (c0de610c <buttonGenericCallback+0x11c>)
c0de604a:	444a      	add	r2, r9
c0de604c:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de6050:	7020      	strb	r0, [r4, #0]
c0de6052:	2001      	movs	r0, #1
c0de6054:	e058      	b.n	c0de6108 <buttonGenericCallback+0x118>
c0de6056:	eb09 0100 	add.w	r1, r9, r0
c0de605a:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de605e:	2906      	cmp	r1, #6
c0de6060:	d151      	bne.n	c0de6106 <buttonGenericCallback+0x116>
c0de6062:	eb09 0100 	add.w	r1, r9, r0
c0de6066:	6d89      	ldr	r1, [r1, #88]	@ 0x58
c0de6068:	2900      	cmp	r1, #0
c0de606a:	d04c      	beq.n	c0de6106 <buttonGenericCallback+0x116>
c0de606c:	4448      	add	r0, r9
c0de606e:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6072:	2801      	cmp	r0, #1
c0de6074:	d047      	beq.n	c0de6106 <buttonGenericCallback+0x116>
c0de6076:	2008      	movs	r0, #8
c0de6078:	e7ea      	b.n	c0de6050 <buttonGenericCallback+0x60>
c0de607a:	eb09 0004 	add.w	r0, r9, r4
c0de607e:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de6082:	2000      	movs	r0, #0
c0de6084:	2910      	cmp	r1, #16
c0de6086:	d83f      	bhi.n	c0de6108 <buttonGenericCallback+0x118>
c0de6088:	2201      	movs	r2, #1
c0de608a:	fa02 f101 	lsl.w	r1, r2, r1
c0de608e:	4a20      	ldr	r2, [pc, #128]	@ (c0de6110 <buttonGenericCallback+0x120>)
c0de6090:	4211      	tst	r1, r2
c0de6092:	d039      	beq.n	c0de6108 <buttonGenericCallback+0x118>
c0de6094:	eb09 0004 	add.w	r0, r9, r4
c0de6098:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de609c:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de60a0:	aa01      	add	r2, sp, #4
c0de60a2:	f7ff fe87 	bl	c0de5db4 <getContentElemAtIdx>
c0de60a6:	b370      	cbz	r0, c0de6106 <buttonGenericCallback+0x116>
c0de60a8:	7801      	ldrb	r1, [r0, #0]
c0de60aa:	4602      	mov	r2, r0
c0de60ac:	2000      	movs	r0, #0
c0de60ae:	b359      	cbz	r1, c0de6108 <buttonGenericCallback+0x118>
c0de60b0:	290a      	cmp	r1, #10
c0de60b2:	d009      	beq.n	c0de60c8 <buttonGenericCallback+0xd8>
c0de60b4:	2907      	cmp	r1, #7
c0de60b6:	d00f      	beq.n	c0de60d8 <buttonGenericCallback+0xe8>
c0de60b8:	2909      	cmp	r1, #9
c0de60ba:	d011      	beq.n	c0de60e0 <buttonGenericCallback+0xf0>
c0de60bc:	2903      	cmp	r1, #3
c0de60be:	f04f 0100 	mov.w	r1, #0
c0de60c2:	d112      	bne.n	c0de60ea <buttonGenericCallback+0xfa>
c0de60c4:	7c10      	ldrb	r0, [r2, #16]
c0de60c6:	e005      	b.n	c0de60d4 <buttonGenericCallback+0xe4>
c0de60c8:	eb09 0004 	add.w	r0, r9, r4
c0de60cc:	6891      	ldr	r1, [r2, #8]
c0de60ce:	f990 0035 	ldrsb.w	r0, [r0, #53]	@ 0x35
c0de60d2:	5c08      	ldrb	r0, [r1, r0]
c0de60d4:	2100      	movs	r1, #0
c0de60d6:	e008      	b.n	c0de60ea <buttonGenericCallback+0xfa>
c0de60d8:	6850      	ldr	r0, [r2, #4]
c0de60da:	2100      	movs	r1, #0
c0de60dc:	7a40      	ldrb	r0, [r0, #9]
c0de60de:	e004      	b.n	c0de60ea <buttonGenericCallback+0xfa>
c0de60e0:	eb09 0004 	add.w	r0, r9, r4
c0de60e4:	f890 1035 	ldrb.w	r1, [r0, #53]	@ 0x35
c0de60e8:	7ad0      	ldrb	r0, [r2, #11]
c0de60ea:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de60ec:	b133      	cbz	r3, c0de60fc <buttonGenericCallback+0x10c>
c0de60ee:	eb09 0104 	add.w	r1, r9, r4
c0de60f2:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de60f6:	2100      	movs	r1, #0
c0de60f8:	4798      	blx	r3
c0de60fa:	e004      	b.n	c0de6106 <buttonGenericCallback+0x116>
c0de60fc:	eb09 0204 	add.w	r2, r9, r4
c0de6100:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de6102:	b102      	cbz	r2, c0de6106 <buttonGenericCallback+0x116>
c0de6104:	4790      	blx	r2
c0de6106:	2000      	movs	r0, #0
c0de6108:	b010      	add	sp, #64	@ 0x40
c0de610a:	bdb0      	pop	{r4, r5, r7, pc}
c0de610c:	000009d0 	.word	0x000009d0
c0de6110:	0001c008 	.word	0x0001c008

c0de6114 <displayHomePage>:
c0de6114:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de6118:	4680      	mov	r8, r0
c0de611a:	4832      	ldr	r0, [pc, #200]	@ (c0de61e4 <displayHomePage+0xd0>)
c0de611c:	2200      	movs	r2, #0
c0de611e:	eb09 0100 	add.w	r1, r9, r0
c0de6122:	6c8f      	ldr	r7, [r1, #72]	@ 0x48
c0de6124:	6d0d      	ldr	r5, [r1, #80]	@ 0x50
c0de6126:	638a      	str	r2, [r1, #56]	@ 0x38
c0de6128:	2202      	movs	r2, #2
c0de612a:	2d00      	cmp	r5, #0
c0de612c:	463e      	mov	r6, r7
c0de612e:	bf08      	it	eq
c0de6130:	2201      	moveq	r2, #1
c0de6132:	2f00      	cmp	r7, #0
c0de6134:	bf18      	it	ne
c0de6136:	2601      	movne	r6, #1
c0de6138:	f991 3035 	ldrsb.w	r3, [r1, #53]	@ 0x35
c0de613c:	b183      	cbz	r3, c0de6160 <displayHomePage+0x4c>
c0de613e:	2401      	movs	r4, #1
c0de6140:	2d00      	cmp	r5, #0
c0de6142:	bf08      	it	eq
c0de6144:	24ff      	moveq	r4, #255	@ 0xff
c0de6146:	429c      	cmp	r4, r3
c0de6148:	d111      	bne.n	c0de616e <displayHomePage+0x5a>
c0de614a:	eb09 0400 	add.w	r4, r9, r0
c0de614e:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de6152:	f001 fbdb 	bl	c0de790c <pic>
c0de6156:	4602      	mov	r2, r0
c0de6158:	6d20      	ldr	r0, [r4, #80]	@ 0x50
c0de615a:	6880      	ldr	r0, [r0, #8]
c0de615c:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de615e:	e004      	b.n	c0de616a <displayHomePage+0x56>
c0de6160:	eb09 0100 	add.w	r1, r9, r0
c0de6164:	e9d1 5210 	ldrd	r5, r2, [r1, #64]	@ 0x40
c0de6168:	b312      	cbz	r2, c0de61b0 <displayHomePage+0x9c>
c0de616a:	2300      	movs	r3, #0
c0de616c:	e02c      	b.n	c0de61c8 <displayHomePage+0xb4>
c0de616e:	2f00      	cmp	r7, #0
c0de6170:	4614      	mov	r4, r2
c0de6172:	bf08      	it	eq
c0de6174:	24ff      	moveq	r4, #255	@ 0xff
c0de6176:	429c      	cmp	r4, r3
c0de6178:	d109      	bne.n	c0de618e <displayHomePage+0x7a>
c0de617a:	491c      	ldr	r1, [pc, #112]	@ (c0de61ec <displayHomePage+0xd8>)
c0de617c:	4448      	add	r0, r9
c0de617e:	2300      	movs	r3, #0
c0de6180:	4479      	add	r1, pc
c0de6182:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6184:	4d1a      	ldr	r5, [pc, #104]	@ (c0de61f0 <displayHomePage+0xdc>)
c0de6186:	4a1b      	ldr	r2, [pc, #108]	@ (c0de61f4 <displayHomePage+0xe0>)
c0de6188:	447d      	add	r5, pc
c0de618a:	447a      	add	r2, pc
c0de618c:	e01c      	b.n	c0de61c8 <displayHomePage+0xb4>
c0de618e:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de6190:	4432      	add	r2, r6
c0de6192:	4448      	add	r0, r9
c0de6194:	2900      	cmp	r1, #0
c0de6196:	bf08      	it	eq
c0de6198:	22ff      	moveq	r2, #255	@ 0xff
c0de619a:	429a      	cmp	r2, r3
c0de619c:	d10d      	bne.n	c0de61ba <displayHomePage+0xa6>
c0de619e:	4916      	ldr	r1, [pc, #88]	@ (c0de61f8 <displayHomePage+0xe4>)
c0de61a0:	2300      	movs	r3, #0
c0de61a2:	4479      	add	r1, pc
c0de61a4:	6381      	str	r1, [r0, #56]	@ 0x38
c0de61a6:	4d15      	ldr	r5, [pc, #84]	@ (c0de61fc <displayHomePage+0xe8>)
c0de61a8:	4a15      	ldr	r2, [pc, #84]	@ (c0de6200 <displayHomePage+0xec>)
c0de61aa:	447d      	add	r5, pc
c0de61ac:	447a      	add	r2, pc
c0de61ae:	e00b      	b.n	c0de61c8 <displayHomePage+0xb4>
c0de61b0:	4448      	add	r0, r9
c0de61b2:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
c0de61b4:	4b0c      	ldr	r3, [pc, #48]	@ (c0de61e8 <displayHomePage+0xd4>)
c0de61b6:	447b      	add	r3, pc
c0de61b8:	e006      	b.n	c0de61c8 <displayHomePage+0xb4>
c0de61ba:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de61bc:	2300      	movs	r3, #0
c0de61be:	6381      	str	r1, [r0, #56]	@ 0x38
c0de61c0:	4d10      	ldr	r5, [pc, #64]	@ (c0de6204 <displayHomePage+0xf0>)
c0de61c2:	4a11      	ldr	r2, [pc, #68]	@ (c0de6208 <displayHomePage+0xf4>)
c0de61c4:	447d      	add	r5, pc
c0de61c6:	447a      	add	r2, pc
c0de61c8:	4910      	ldr	r1, [pc, #64]	@ (c0de620c <displayHomePage+0xf8>)
c0de61ca:	2000      	movs	r0, #0
c0de61cc:	9002      	str	r0, [sp, #8]
c0de61ce:	4479      	add	r1, pc
c0de61d0:	e9cd 1000 	strd	r1, r0, [sp]
c0de61d4:	4640      	mov	r0, r8
c0de61d6:	4629      	mov	r1, r5
c0de61d8:	f7ff f992 	bl	c0de5500 <drawStep>
c0de61dc:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de61e0:	f001 b985 	b.w	c0de74ee <nbgl_refresh>
c0de61e4:	000009d0 	.word	0x000009d0
c0de61e8:	00002374 	.word	0x00002374
c0de61ec:	0000008d 	.word	0x0000008d
c0de61f0:	00001f7b 	.word	0x00001f7b
c0de61f4:	0000224f 	.word	0x0000224f
c0de61f8:	00000073 	.word	0x00000073
c0de61fc:	00001ec4 	.word	0x00001ec4
c0de6200:	00002300 	.word	0x00002300
c0de6204:	00001ecd 	.word	0x00001ecd
c0de6208:	00002371 	.word	0x00002371
c0de620c:	0000006b 	.word	0x0000006b

c0de6210 <startUseCaseSettings>:
c0de6210:	2000      	movs	r0, #0
c0de6212:	f7fe bf01 	b.w	c0de5018 <startUseCaseSettingsAtPage>
	...

c0de6218 <startUseCaseInfo>:
c0de6218:	4807      	ldr	r0, [pc, #28]	@ (c0de6238 <startUseCaseInfo+0x20>)
c0de621a:	210d      	movs	r1, #13
c0de621c:	4448      	add	r0, r9
c0de621e:	f880 102c 	strb.w	r1, [r0, #44]	@ 0x2c
c0de6222:	2100      	movs	r1, #0
c0de6224:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6228:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de622a:	7b09      	ldrb	r1, [r1, #12]
c0de622c:	3101      	adds	r1, #1
c0de622e:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de6232:	2000      	movs	r0, #0
c0de6234:	f000 b810 	b.w	c0de6258 <displayInfoPage>
c0de6238:	000009d0 	.word	0x000009d0

c0de623c <homeCallback>:
c0de623c:	b5e0      	push	{r5, r6, r7, lr}
c0de623e:	4608      	mov	r0, r1
c0de6240:	f10d 0107 	add.w	r1, sp, #7
c0de6244:	f7ff fed4 	bl	c0de5ff0 <buttonGenericCallback>
c0de6248:	b128      	cbz	r0, c0de6256 <homeCallback+0x1a>
c0de624a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de624e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6252:	f7ff bf5f 	b.w	c0de6114 <displayHomePage>
c0de6256:	bd8c      	pop	{r2, r3, r7, pc}

c0de6258 <displayInfoPage>:
c0de6258:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de625a:	4604      	mov	r4, r0
c0de625c:	4816      	ldr	r0, [pc, #88]	@ (c0de62b8 <displayInfoPage+0x60>)
c0de625e:	f000 fbdb 	bl	c0de6a18 <OUTLINED_FUNCTION_1>
c0de6262:	dd11      	ble.n	c0de6288 <displayInfoPage+0x30>
c0de6264:	eb09 0700 	add.w	r7, r9, r0
c0de6268:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de626a:	6800      	ldr	r0, [r0, #0]
c0de626c:	4e13      	ldr	r6, [pc, #76]	@ (c0de62bc <displayInfoPage+0x64>)
c0de626e:	447e      	add	r6, pc
c0de6270:	47b0      	blx	r6
c0de6272:	f000 fc0a 	bl	c0de6a8a <OUTLINED_FUNCTION_10>
c0de6276:	4605      	mov	r5, r0
c0de6278:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de627a:	6840      	ldr	r0, [r0, #4]
c0de627c:	47b0      	blx	r6
c0de627e:	f000 fc04 	bl	c0de6a8a <OUTLINED_FUNCTION_10>
c0de6282:	4603      	mov	r3, r0
c0de6284:	2100      	movs	r1, #0
c0de6286:	e008      	b.n	c0de629a <displayInfoPage+0x42>
c0de6288:	490d      	ldr	r1, [pc, #52]	@ (c0de62c0 <displayInfoPage+0x68>)
c0de628a:	4448      	add	r0, r9
c0de628c:	2300      	movs	r3, #0
c0de628e:	4479      	add	r1, pc
c0de6290:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6292:	490c      	ldr	r1, [pc, #48]	@ (c0de62c4 <displayInfoPage+0x6c>)
c0de6294:	4d0c      	ldr	r5, [pc, #48]	@ (c0de62c8 <displayInfoPage+0x70>)
c0de6296:	4479      	add	r1, pc
c0de6298:	447d      	add	r5, pc
c0de629a:	4e0c      	ldr	r6, [pc, #48]	@ (c0de62cc <displayInfoPage+0x74>)
c0de629c:	2002      	movs	r0, #2
c0de629e:	2200      	movs	r2, #0
c0de62a0:	9002      	str	r0, [sp, #8]
c0de62a2:	4620      	mov	r0, r4
c0de62a4:	447e      	add	r6, pc
c0de62a6:	e9cd 6200 	strd	r6, r2, [sp]
c0de62aa:	462a      	mov	r2, r5
c0de62ac:	f7ff f928 	bl	c0de5500 <drawStep>
c0de62b0:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de62b4:	f001 b91b 	b.w	c0de74ee <nbgl_refresh>
c0de62b8:	000009d0 	.word	0x000009d0
c0de62bc:	0000169b 	.word	0x0000169b
c0de62c0:	ffffedff 	.word	0xffffedff
c0de62c4:	00001e4a 	.word	0x00001e4a
c0de62c8:	000021cd 	.word	0x000021cd
c0de62cc:	00000029 	.word	0x00000029

c0de62d0 <infoCallback>:
c0de62d0:	b5e0      	push	{r5, r6, r7, lr}
c0de62d2:	4608      	mov	r0, r1
c0de62d4:	f10d 0107 	add.w	r1, sp, #7
c0de62d8:	f7ff fe8a 	bl	c0de5ff0 <buttonGenericCallback>
c0de62dc:	b128      	cbz	r0, c0de62ea <infoCallback+0x1a>
c0de62de:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de62e2:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de62e6:	f7ff bfb7 	b.w	c0de6258 <displayInfoPage>
c0de62ea:	bd8c      	pop	{r2, r3, r7, pc}

c0de62ec <displayWarningStep>:
c0de62ec:	b510      	push	{r4, lr}
c0de62ee:	b088      	sub	sp, #32
c0de62f0:	2000      	movs	r0, #0
c0de62f2:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de62f6:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de62fa:	4839      	ldr	r0, [pc, #228]	@ (c0de63e0 <displayWarningStep+0xf4>)
c0de62fc:	eb09 0200 	add.w	r2, r9, r0
c0de6300:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6304:	69d2      	ldr	r2, [r2, #28]
c0de6306:	6a93      	ldr	r3, [r2, #40]	@ 0x28
c0de6308:	b183      	cbz	r3, c0de632c <displayWarningStep+0x40>
c0de630a:	b979      	cbnz	r1, c0de632c <displayWarningStep+0x40>
c0de630c:	2000      	movs	r0, #0
c0de630e:	685b      	ldr	r3, [r3, #4]
c0de6310:	2200      	movs	r2, #0
c0de6312:	e9cd 0000 	strd	r0, r0, [sp]
c0de6316:	9002      	str	r0, [sp, #8]
c0de6318:	2001      	movs	r0, #1
c0de631a:	4936      	ldr	r1, [pc, #216]	@ (c0de63f4 <displayWarningStep+0x108>)
c0de631c:	4479      	add	r1, pc
c0de631e:	f7fe fb25 	bl	c0de496c <nbgl_stepDrawText>
c0de6322:	b008      	add	sp, #32
c0de6324:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6328:	f001 b8e1 	b.w	c0de74ee <nbgl_refresh>
c0de632c:	6813      	ldr	r3, [r2, #0]
c0de632e:	06dc      	lsls	r4, r3, #27
c0de6330:	d411      	bmi.n	c0de6356 <displayWarningStep+0x6a>
c0de6332:	2b00      	cmp	r3, #0
c0de6334:	d151      	bne.n	c0de63da <displayWarningStep+0xee>
c0de6336:	69d3      	ldr	r3, [r2, #28]
c0de6338:	2b00      	cmp	r3, #0
c0de633a:	d04e      	beq.n	c0de63da <displayWarningStep+0xee>
c0de633c:	eb09 0400 	add.w	r4, r9, r0
c0de6340:	f894 4028 	ldrb.w	r4, [r4, #40]	@ 0x28
c0de6344:	42a1      	cmp	r1, r4
c0de6346:	d128      	bne.n	c0de639a <displayWarningStep+0xae>
c0de6348:	6858      	ldr	r0, [r3, #4]
c0de634a:	691a      	ldr	r2, [r3, #16]
c0de634c:	699b      	ldr	r3, [r3, #24]
c0de634e:	9006      	str	r0, [sp, #24]
c0de6350:	e9cd 2304 	strd	r2, r3, [sp, #16]
c0de6354:	e00e      	b.n	c0de6374 <displayWarningStep+0x88>
c0de6356:	eb09 0200 	add.w	r2, r9, r0
c0de635a:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de635e:	4291      	cmp	r1, r2
c0de6360:	d10d      	bne.n	c0de637e <displayWarningStep+0x92>
c0de6362:	4820      	ldr	r0, [pc, #128]	@ (c0de63e4 <displayWarningStep+0xf8>)
c0de6364:	4478      	add	r0, pc
c0de6366:	9005      	str	r0, [sp, #20]
c0de6368:	481f      	ldr	r0, [pc, #124]	@ (c0de63e8 <displayWarningStep+0xfc>)
c0de636a:	4478      	add	r0, pc
c0de636c:	9004      	str	r0, [sp, #16]
c0de636e:	481f      	ldr	r0, [pc, #124]	@ (c0de63ec <displayWarningStep+0x100>)
c0de6370:	4478      	add	r0, pc
c0de6372:	9006      	str	r0, [sp, #24]
c0de6374:	2003      	movs	r0, #3
c0de6376:	2900      	cmp	r1, #0
c0de6378:	bf08      	it	eq
c0de637a:	2001      	moveq	r0, #1
c0de637c:	e020      	b.n	c0de63c0 <displayWarningStep+0xd4>
c0de637e:	4448      	add	r0, r9
c0de6380:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de6384:	3801      	subs	r0, #1
c0de6386:	4288      	cmp	r0, r1
c0de6388:	d119      	bne.n	c0de63be <displayWarningStep+0xd2>
c0de638a:	aa04      	add	r2, sp, #16
c0de638c:	2000      	movs	r0, #0
c0de638e:	f102 0108 	add.w	r1, r2, #8
c0de6392:	f000 f877 	bl	c0de6484 <getLastPageInfo>
c0de6396:	200a      	movs	r0, #10
c0de6398:	e012      	b.n	c0de63c0 <displayWarningStep+0xd4>
c0de639a:	4448      	add	r0, r9
c0de639c:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de63a0:	3801      	subs	r0, #1
c0de63a2:	4288      	cmp	r0, r1
c0de63a4:	d10b      	bne.n	c0de63be <displayWarningStep+0xd2>
c0de63a6:	6950      	ldr	r0, [r2, #20]
c0de63a8:	7901      	ldrb	r1, [r0, #4]
c0de63aa:	2901      	cmp	r1, #1
c0de63ac:	d115      	bne.n	c0de63da <displayWarningStep+0xee>
c0de63ae:	68c1      	ldr	r1, [r0, #12]
c0de63b0:	6982      	ldr	r2, [r0, #24]
c0de63b2:	6a00      	ldr	r0, [r0, #32]
c0de63b4:	e9cd 2004 	strd	r2, r0, [sp, #16]
c0de63b8:	2003      	movs	r0, #3
c0de63ba:	9106      	str	r1, [sp, #24]
c0de63bc:	e000      	b.n	c0de63c0 <displayWarningStep+0xd4>
c0de63be:	2000      	movs	r0, #0
c0de63c0:	2101      	movs	r1, #1
c0de63c2:	2200      	movs	r2, #0
c0de63c4:	f88d 101d 	strb.w	r1, [sp, #29]
c0de63c8:	2100      	movs	r1, #0
c0de63ca:	9100      	str	r1, [sp, #0]
c0de63cc:	4908      	ldr	r1, [pc, #32]	@ (c0de63f0 <displayWarningStep+0x104>)
c0de63ce:	ab04      	add	r3, sp, #16
c0de63d0:	4479      	add	r1, pc
c0de63d2:	f7fe fc11 	bl	c0de4bf8 <nbgl_stepDrawCenteredInfo>
c0de63d6:	f001 f88a 	bl	c0de74ee <nbgl_refresh>
c0de63da:	b008      	add	sp, #32
c0de63dc:	bd10      	pop	{r4, pc}
c0de63de:	bf00      	nop
c0de63e0:	000009d0 	.word	0x000009d0
c0de63e4:	00001f70 	.word	0x00001f70
c0de63e8:	0000209d 	.word	0x0000209d
c0de63ec:	00001e55 	.word	0x00001e55
c0de63f0:	00000025 	.word	0x00000025
c0de63f4:	000000d9 	.word	0x000000d9

c0de63f8 <warningNavigate>:
c0de63f8:	2904      	cmp	r1, #4
c0de63fa:	d009      	beq.n	c0de6410 <warningNavigate+0x18>
c0de63fc:	2901      	cmp	r1, #1
c0de63fe:	d024      	beq.n	c0de644a <warningNavigate+0x52>
c0de6400:	bb11      	cbnz	r1, c0de6448 <warningNavigate+0x50>
c0de6402:	481f      	ldr	r0, [pc, #124]	@ (c0de6480 <warningNavigate+0x88>)
c0de6404:	4448      	add	r0, r9
c0de6406:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de640a:	b390      	cbz	r0, c0de6472 <warningNavigate+0x7a>
c0de640c:	3801      	subs	r0, #1
c0de640e:	e027      	b.n	c0de6460 <warningNavigate+0x68>
c0de6410:	481b      	ldr	r0, [pc, #108]	@ (c0de6480 <warningNavigate+0x88>)
c0de6412:	eb09 0100 	add.w	r1, r9, r0
c0de6416:	69c9      	ldr	r1, [r1, #28]
c0de6418:	7809      	ldrb	r1, [r1, #0]
c0de641a:	06c9      	lsls	r1, r1, #27
c0de641c:	d514      	bpl.n	c0de6448 <warningNavigate+0x50>
c0de641e:	eb09 0200 	add.w	r2, r9, r0
c0de6422:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6426:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de642a:	4291      	cmp	r1, r2
c0de642c:	bf08      	it	eq
c0de642e:	f000 b8bd 	beq.w	c0de65ac <launchReviewAfterWarning>
c0de6432:	eb09 0200 	add.w	r2, r9, r0
c0de6436:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de643a:	3a01      	subs	r2, #1
c0de643c:	428a      	cmp	r2, r1
c0de643e:	d103      	bne.n	c0de6448 <warningNavigate+0x50>
c0de6440:	4448      	add	r0, r9
c0de6442:	6a01      	ldr	r1, [r0, #32]
c0de6444:	2000      	movs	r0, #0
c0de6446:	4708      	bx	r1
c0de6448:	4770      	bx	lr
c0de644a:	480d      	ldr	r0, [pc, #52]	@ (c0de6480 <warningNavigate+0x88>)
c0de644c:	eb09 0200 	add.w	r2, r9, r0
c0de6450:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6454:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de6458:	3a01      	subs	r2, #1
c0de645a:	428a      	cmp	r2, r1
c0de645c:	dd05      	ble.n	c0de646a <warningNavigate+0x72>
c0de645e:	1c48      	adds	r0, r1, #1
c0de6460:	4907      	ldr	r1, [pc, #28]	@ (c0de6480 <warningNavigate+0x88>)
c0de6462:	4449      	add	r1, r9
c0de6464:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de6468:	e003      	b.n	c0de6472 <warningNavigate+0x7a>
c0de646a:	4448      	add	r0, r9
c0de646c:	69c0      	ldr	r0, [r0, #28]
c0de646e:	6801      	ldr	r1, [r0, #0]
c0de6470:	b109      	cbz	r1, c0de6476 <warningNavigate+0x7e>
c0de6472:	f7ff bf3b 	b.w	c0de62ec <displayWarningStep>
c0de6476:	69c0      	ldr	r0, [r0, #28]
c0de6478:	2800      	cmp	r0, #0
c0de647a:	d0fa      	beq.n	c0de6472 <warningNavigate+0x7a>
c0de647c:	f000 b896 	b.w	c0de65ac <launchReviewAfterWarning>
c0de6480:	000009d0 	.word	0x000009d0

c0de6484 <getLastPageInfo>:
c0de6484:	b170      	cbz	r0, c0de64a4 <getLastPageInfo+0x20>
c0de6486:	4833      	ldr	r0, [pc, #204]	@ (c0de6554 <getLastPageInfo+0xd0>)
c0de6488:	4478      	add	r0, pc
c0de648a:	6008      	str	r0, [r1, #0]
c0de648c:	4830      	ldr	r0, [pc, #192]	@ (c0de6550 <getLastPageInfo+0xcc>)
c0de648e:	eb09 0100 	add.w	r1, r9, r0
c0de6492:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de6496:	2904      	cmp	r1, #4
c0de6498:	d113      	bne.n	c0de64c2 <getLastPageInfo+0x3e>
c0de649a:	482f      	ldr	r0, [pc, #188]	@ (c0de6558 <getLastPageInfo+0xd4>)
c0de649c:	492f      	ldr	r1, [pc, #188]	@ (c0de655c <getLastPageInfo+0xd8>)
c0de649e:	4478      	add	r0, pc
c0de64a0:	4479      	add	r1, pc
c0de64a2:	e04f      	b.n	c0de6544 <getLastPageInfo+0xc0>
c0de64a4:	4838      	ldr	r0, [pc, #224]	@ (c0de6588 <getLastPageInfo+0x104>)
c0de64a6:	4478      	add	r0, pc
c0de64a8:	6008      	str	r0, [r1, #0]
c0de64aa:	4829      	ldr	r0, [pc, #164]	@ (c0de6550 <getLastPageInfo+0xcc>)
c0de64ac:	eb09 0100 	add.w	r1, r9, r0
c0de64b0:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de64b4:	2904      	cmp	r1, #4
c0de64b6:	d10b      	bne.n	c0de64d0 <getLastPageInfo+0x4c>
c0de64b8:	4834      	ldr	r0, [pc, #208]	@ (c0de658c <getLastPageInfo+0x108>)
c0de64ba:	4935      	ldr	r1, [pc, #212]	@ (c0de6590 <getLastPageInfo+0x10c>)
c0de64bc:	4478      	add	r0, pc
c0de64be:	4479      	add	r1, pc
c0de64c0:	e040      	b.n	c0de6544 <getLastPageInfo+0xc0>
c0de64c2:	eb09 0100 	add.w	r1, r9, r0
c0de64c6:	6d09      	ldr	r1, [r1, #80]	@ 0x50
c0de64c8:	b171      	cbz	r1, c0de64e8 <getLastPageInfo+0x64>
c0de64ca:	4825      	ldr	r0, [pc, #148]	@ (c0de6560 <getLastPageInfo+0xdc>)
c0de64cc:	4478      	add	r0, pc
c0de64ce:	e039      	b.n	c0de6544 <getLastPageInfo+0xc0>
c0de64d0:	4448      	add	r0, r9
c0de64d2:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de64d4:	f010 0007 	ands.w	r0, r0, #7
c0de64d8:	d017      	beq.n	c0de650a <getLastPageInfo+0x86>
c0de64da:	2801      	cmp	r0, #1
c0de64dc:	d11a      	bne.n	c0de6514 <getLastPageInfo+0x90>
c0de64de:	482f      	ldr	r0, [pc, #188]	@ (c0de659c <getLastPageInfo+0x118>)
c0de64e0:	492f      	ldr	r1, [pc, #188]	@ (c0de65a0 <getLastPageInfo+0x11c>)
c0de64e2:	4478      	add	r0, pc
c0de64e4:	4479      	add	r1, pc
c0de64e6:	e02d      	b.n	c0de6544 <getLastPageInfo+0xc0>
c0de64e8:	4448      	add	r0, r9
c0de64ea:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de64ec:	f000 0107 	and.w	r1, r0, #7
c0de64f0:	2901      	cmp	r1, #1
c0de64f2:	d014      	beq.n	c0de651e <getLastPageInfo+0x9a>
c0de64f4:	b9e9      	cbnz	r1, c0de6532 <getLastPageInfo+0xae>
c0de64f6:	0640      	lsls	r0, r0, #25
c0de64f8:	481a      	ldr	r0, [pc, #104]	@ (c0de6564 <getLastPageInfo+0xe0>)
c0de64fa:	491b      	ldr	r1, [pc, #108]	@ (c0de6568 <getLastPageInfo+0xe4>)
c0de64fc:	4478      	add	r0, pc
c0de64fe:	4479      	add	r1, pc
c0de6500:	bf58      	it	pl
c0de6502:	4601      	movpl	r1, r0
c0de6504:	4819      	ldr	r0, [pc, #100]	@ (c0de656c <getLastPageInfo+0xe8>)
c0de6506:	4478      	add	r0, pc
c0de6508:	e01c      	b.n	c0de6544 <getLastPageInfo+0xc0>
c0de650a:	4822      	ldr	r0, [pc, #136]	@ (c0de6594 <getLastPageInfo+0x110>)
c0de650c:	4922      	ldr	r1, [pc, #136]	@ (c0de6598 <getLastPageInfo+0x114>)
c0de650e:	4478      	add	r0, pc
c0de6510:	4479      	add	r1, pc
c0de6512:	e017      	b.n	c0de6544 <getLastPageInfo+0xc0>
c0de6514:	4823      	ldr	r0, [pc, #140]	@ (c0de65a4 <getLastPageInfo+0x120>)
c0de6516:	4924      	ldr	r1, [pc, #144]	@ (c0de65a8 <getLastPageInfo+0x124>)
c0de6518:	4478      	add	r0, pc
c0de651a:	4479      	add	r1, pc
c0de651c:	e012      	b.n	c0de6544 <getLastPageInfo+0xc0>
c0de651e:	0640      	lsls	r0, r0, #25
c0de6520:	4813      	ldr	r0, [pc, #76]	@ (c0de6570 <getLastPageInfo+0xec>)
c0de6522:	4914      	ldr	r1, [pc, #80]	@ (c0de6574 <getLastPageInfo+0xf0>)
c0de6524:	4478      	add	r0, pc
c0de6526:	4479      	add	r1, pc
c0de6528:	bf58      	it	pl
c0de652a:	4601      	movpl	r1, r0
c0de652c:	4812      	ldr	r0, [pc, #72]	@ (c0de6578 <getLastPageInfo+0xf4>)
c0de652e:	4478      	add	r0, pc
c0de6530:	e008      	b.n	c0de6544 <getLastPageInfo+0xc0>
c0de6532:	0640      	lsls	r0, r0, #25
c0de6534:	4811      	ldr	r0, [pc, #68]	@ (c0de657c <getLastPageInfo+0xf8>)
c0de6536:	4912      	ldr	r1, [pc, #72]	@ (c0de6580 <getLastPageInfo+0xfc>)
c0de6538:	4478      	add	r0, pc
c0de653a:	4479      	add	r1, pc
c0de653c:	bf58      	it	pl
c0de653e:	4601      	movpl	r1, r0
c0de6540:	4810      	ldr	r0, [pc, #64]	@ (c0de6584 <getLastPageInfo+0x100>)
c0de6542:	4478      	add	r0, pc
c0de6544:	6011      	str	r1, [r2, #0]
c0de6546:	4902      	ldr	r1, [pc, #8]	@ (c0de6550 <getLastPageInfo+0xcc>)
c0de6548:	4449      	add	r1, r9
c0de654a:	6388      	str	r0, [r1, #56]	@ 0x38
c0de654c:	4770      	bx	lr
c0de654e:	bf00      	nop
c0de6550:	000009d0 	.word	0x000009d0
c0de6554:	00001d1a 	.word	0x00001d1a
c0de6558:	00000143 	.word	0x00000143
c0de655c:	000020a0 	.word	0x000020a0
c0de6560:	00000115 	.word	0x00000115
c0de6564:	00001e47 	.word	0x00001e47
c0de6568:	00001ee8 	.word	0x00001ee8
c0de656c:	000000db 	.word	0x000000db
c0de6570:	00001e03 	.word	0x00001e03
c0de6574:	00001e41 	.word	0x00001e41
c0de6578:	000000b3 	.word	0x000000b3
c0de657c:	00001f7d 	.word	0x00001f7d
c0de6580:	00001ee1 	.word	0x00001ee1
c0de6584:	0000009f 	.word	0x0000009f
c0de6588:	00001c80 	.word	0x00001c80
c0de658c:	00000139 	.word	0x00000139
c0de6590:	00001eec 	.word	0x00001eec
c0de6594:	000000e7 	.word	0x000000e7
c0de6598:	00001e44 	.word	0x00001e44
c0de659c:	00000113 	.word	0x00000113
c0de65a0:	00001fe0 	.word	0x00001fe0
c0de65a4:	000000dd 	.word	0x000000dd
c0de65a8:	00001fb9 	.word	0x00001fb9

c0de65ac <launchReviewAfterWarning>:
c0de65ac:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de65ae:	480c      	ldr	r0, [pc, #48]	@ (c0de65e0 <launchReviewAfterWarning+0x34>)
c0de65b0:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de65b4:	2905      	cmp	r1, #5
c0de65b6:	d00d      	beq.n	c0de65d4 <launchReviewAfterWarning+0x28>
c0de65b8:	2902      	cmp	r1, #2
c0de65ba:	bf18      	it	ne
c0de65bc:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de65be:	4448      	add	r0, r9
c0de65c0:	1d06      	adds	r6, r0, #4
c0de65c2:	6a00      	ldr	r0, [r0, #32]
c0de65c4:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de65c6:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de65ca:	9003      	str	r0, [sp, #12]
c0de65cc:	2002      	movs	r0, #2
c0de65ce:	f7fe fdb5 	bl	c0de513c <useCaseReview>
c0de65d2:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de65d4:	2000      	movs	r0, #0
c0de65d6:	b004      	add	sp, #16
c0de65d8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de65dc:	f7ff b8ac 	b.w	c0de5738 <displayStreamingReviewPage>
c0de65e0:	000009d0 	.word	0x000009d0

c0de65e4 <onReviewAccept>:
c0de65e4:	4803      	ldr	r0, [pc, #12]	@ (c0de65f4 <onReviewAccept+0x10>)
c0de65e6:	4448      	add	r0, r9
c0de65e8:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de65ea:	b109      	cbz	r1, c0de65f0 <onReviewAccept+0xc>
c0de65ec:	2001      	movs	r0, #1
c0de65ee:	4708      	bx	r1
c0de65f0:	4770      	bx	lr
c0de65f2:	bf00      	nop
c0de65f4:	000009d0 	.word	0x000009d0

c0de65f8 <onReviewReject>:
c0de65f8:	4803      	ldr	r0, [pc, #12]	@ (c0de6608 <onReviewReject+0x10>)
c0de65fa:	4448      	add	r0, r9
c0de65fc:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de65fe:	b109      	cbz	r1, c0de6604 <onReviewReject+0xc>
c0de6600:	2000      	movs	r0, #0
c0de6602:	4708      	bx	r1
c0de6604:	4770      	bx	lr
c0de6606:	bf00      	nop
c0de6608:	000009d0 	.word	0x000009d0

c0de660c <buttonSkipCallback>:
c0de660c:	b5b0      	push	{r4, r5, r7, lr}
c0de660e:	2904      	cmp	r1, #4
c0de6610:	d00a      	beq.n	c0de6628 <buttonSkipCallback+0x1c>
c0de6612:	2901      	cmp	r1, #1
c0de6614:	d017      	beq.n	c0de6646 <buttonSkipCallback+0x3a>
c0de6616:	bbb9      	cbnz	r1, c0de6688 <buttonSkipCallback+0x7c>
c0de6618:	4829      	ldr	r0, [pc, #164]	@ (c0de66c0 <buttonSkipCallback+0xb4>)
c0de661a:	eb09 0100 	add.w	r1, r9, r0
c0de661e:	f891 105e 	ldrb.w	r1, [r1, #94]	@ 0x5e
c0de6622:	b391      	cbz	r1, c0de668a <buttonSkipCallback+0x7e>
c0de6624:	2008      	movs	r0, #8
c0de6626:	e02a      	b.n	c0de667e <buttonSkipCallback+0x72>
c0de6628:	4825      	ldr	r0, [pc, #148]	@ (c0de66c0 <buttonSkipCallback+0xb4>)
c0de662a:	eb09 0100 	add.w	r1, r9, r0
c0de662e:	4448      	add	r0, r9
c0de6630:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de6634:	2900      	cmp	r1, #0
c0de6636:	d03f      	beq.n	c0de66b8 <buttonSkipCallback+0xac>
c0de6638:	f890 1034 	ldrb.w	r1, [r0, #52]	@ 0x34
c0de663c:	3902      	subs	r1, #2
c0de663e:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6642:	2000      	movs	r0, #0
c0de6644:	e030      	b.n	c0de66a8 <buttonSkipCallback+0x9c>
c0de6646:	4a1e      	ldr	r2, [pc, #120]	@ (c0de66c0 <buttonSkipCallback+0xb4>)
c0de6648:	eb09 0002 	add.w	r0, r9, r2
c0de664c:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de6650:	2808      	cmp	r0, #8
c0de6652:	d113      	bne.n	c0de667c <buttonSkipCallback+0x70>
c0de6654:	eb09 0002 	add.w	r0, r9, r2
c0de6658:	f990 4036 	ldrsb.w	r4, [r0, #54]	@ 0x36
c0de665c:	f990 3035 	ldrsb.w	r3, [r0, #53]	@ 0x35
c0de6660:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de6664:	1e45      	subs	r5, r0, #1
c0de6666:	2000      	movs	r0, #0
c0de6668:	b2e1      	uxtb	r1, r4
c0de666a:	429d      	cmp	r5, r3
c0de666c:	bfc8      	it	gt
c0de666e:	42a3      	cmpgt	r3, r4
c0de6670:	dd19      	ble.n	c0de66a6 <buttonSkipCallback+0x9a>
c0de6672:	eb09 0002 	add.w	r0, r9, r2
c0de6676:	1c59      	adds	r1, r3, #1
c0de6678:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de667c:	2000      	movs	r0, #0
c0de667e:	4910      	ldr	r1, [pc, #64]	@ (c0de66c0 <buttonSkipCallback+0xb4>)
c0de6680:	4449      	add	r1, r9
c0de6682:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de6686:	e00e      	b.n	c0de66a6 <buttonSkipCallback+0x9a>
c0de6688:	bdb0      	pop	{r4, r5, r7, pc}
c0de668a:	eb09 0100 	add.w	r1, r9, r0
c0de668e:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6692:	f991 3036 	ldrsb.w	r3, [r1, #54]	@ 0x36
c0de6696:	b2d9      	uxtb	r1, r3
c0de6698:	429a      	cmp	r2, r3
c0de669a:	dd03      	ble.n	c0de66a4 <buttonSkipCallback+0x98>
c0de669c:	4448      	add	r0, r9
c0de669e:	3a01      	subs	r2, #1
c0de66a0:	f880 2035 	strb.w	r2, [r0, #53]	@ 0x35
c0de66a4:	2008      	movs	r0, #8
c0de66a6:	b119      	cbz	r1, c0de66b0 <buttonSkipCallback+0xa4>
c0de66a8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de66ac:	f7fe be3c 	b.w	c0de5328 <displayReviewPage>
c0de66b0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de66b4:	f7ff b840 	b.w	c0de5738 <displayStreamingReviewPage>
c0de66b8:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de66ba:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de66be:	4700      	bx	r0
c0de66c0:	000009d0 	.word	0x000009d0

c0de66c4 <displayAliasFullValue>:
c0de66c4:	b570      	push	{r4, r5, r6, lr}
c0de66c6:	b088      	sub	sp, #32
c0de66c8:	4c1a      	ldr	r4, [pc, #104]	@ (c0de6734 <displayAliasFullValue+0x70>)
c0de66ca:	f10d 0213 	add.w	r2, sp, #19
c0de66ce:	eb09 0504 	add.w	r5, r9, r4
c0de66d2:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de66d4:	f895 105f 	ldrb.w	r1, [r5, #95]	@ 0x5f
c0de66d8:	ab05      	add	r3, sp, #20
c0de66da:	f105 0664 	add.w	r6, r5, #100	@ 0x64
c0de66de:	9202      	str	r2, [sp, #8]
c0de66e0:	e9cd 6300 	strd	r6, r3, [sp]
c0de66e4:	aa07      	add	r2, sp, #28
c0de66e6:	ab06      	add	r3, sp, #24
c0de66e8:	f7ff fba8 	bl	c0de5e3c <getPairData>
c0de66ec:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0de66ee:	b178      	cbz	r0, c0de6710 <displayAliasFullValue+0x4c>
c0de66f0:	eb09 0104 	add.w	r1, r9, r4
c0de66f4:	2200      	movs	r2, #0
c0de66f6:	668a      	str	r2, [r1, #104]	@ 0x68
c0de66f8:	f881 2060 	strb.w	r2, [r1, #96]	@ 0x60
c0de66fc:	7d01      	ldrb	r1, [r0, #20]
c0de66fe:	2901      	cmp	r1, #1
c0de6700:	d008      	beq.n	c0de6714 <displayAliasFullValue+0x50>
c0de6702:	2905      	cmp	r1, #5
c0de6704:	d008      	beq.n	c0de6718 <displayAliasFullValue+0x54>
c0de6706:	2904      	cmp	r1, #4
c0de6708:	d102      	bne.n	c0de6710 <displayAliasFullValue+0x4c>
c0de670a:	6900      	ldr	r0, [r0, #16]
c0de670c:	300c      	adds	r0, #12
c0de670e:	e005      	b.n	c0de671c <displayAliasFullValue+0x58>
c0de6710:	b008      	add	sp, #32
c0de6712:	bd70      	pop	{r4, r5, r6, pc}
c0de6714:	2002      	movs	r0, #2
c0de6716:	e003      	b.n	c0de6720 <displayAliasFullValue+0x5c>
c0de6718:	6900      	ldr	r0, [r0, #16]
c0de671a:	3008      	adds	r0, #8
c0de671c:	7800      	ldrb	r0, [r0, #0]
c0de671e:	3001      	adds	r0, #1
c0de6720:	eb09 0104 	add.w	r1, r9, r4
c0de6724:	f881 0061 	strb.w	r0, [r1, #97]	@ 0x61
c0de6728:	2000      	movs	r0, #0
c0de672a:	b008      	add	sp, #32
c0de672c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6730:	f000 b814 	b.w	c0de675c <displayExtensionStep>
c0de6734:	000009d0 	.word	0x000009d0

c0de6738 <reviewCallback>:
c0de6738:	b5e0      	push	{r5, r6, r7, lr}
c0de673a:	4608      	mov	r0, r1
c0de673c:	f10d 0107 	add.w	r1, sp, #7
c0de6740:	f7ff fc56 	bl	c0de5ff0 <buttonGenericCallback>
c0de6744:	b130      	cbz	r0, c0de6754 <reviewCallback+0x1c>
c0de6746:	4804      	ldr	r0, [pc, #16]	@ (c0de6758 <reviewCallback+0x20>)
c0de6748:	f000 f993 	bl	c0de6a72 <OUTLINED_FUNCTION_8>
c0de674c:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6750:	f7fe bdea 	b.w	c0de5328 <displayReviewPage>
c0de6754:	bd8c      	pop	{r2, r3, r7, pc}
c0de6756:	bf00      	nop
c0de6758:	000009d0 	.word	0x000009d0

c0de675c <displayExtensionStep>:
c0de675c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6760:	b088      	sub	sp, #32
c0de6762:	4e36      	ldr	r6, [pc, #216]	@ (c0de683c <displayExtensionStep+0xe0>)
c0de6764:	4680      	mov	r8, r0
c0de6766:	2000      	movs	r0, #0
c0de6768:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de676c:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de6770:	eb09 0006 	add.w	r0, r9, r6
c0de6774:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de6776:	b108      	cbz	r0, c0de677c <displayExtensionStep+0x20>
c0de6778:	f7fe fb64 	bl	c0de4e44 <nbgl_stepRelease>
c0de677c:	eb09 0106 	add.w	r1, r9, r6
c0de6780:	f000 f970 	bl	c0de6a64 <OUTLINED_FUNCTION_7>
c0de6784:	dd10      	ble.n	c0de67a8 <displayExtensionStep+0x4c>
c0de6786:	2703      	movs	r7, #3
c0de6788:	eb09 0106 	add.w	r1, r9, r6
c0de678c:	2800      	cmp	r0, #0
c0de678e:	bf08      	it	eq
c0de6790:	2701      	moveq	r7, #1
c0de6792:	6e49      	ldr	r1, [r1, #100]	@ 0x64
c0de6794:	7d0a      	ldrb	r2, [r1, #20]
c0de6796:	2a05      	cmp	r2, #5
c0de6798:	d01a      	beq.n	c0de67d0 <displayExtensionStep+0x74>
c0de679a:	2a04      	cmp	r2, #4
c0de679c:	d028      	beq.n	c0de67f0 <displayExtensionStep+0x94>
c0de679e:	2a01      	cmp	r2, #1
c0de67a0:	d147      	bne.n	c0de6832 <displayExtensionStep+0xd6>
c0de67a2:	6808      	ldr	r0, [r1, #0]
c0de67a4:	688d      	ldr	r5, [r1, #8]
c0de67a6:	e033      	b.n	c0de6810 <displayExtensionStep+0xb4>
c0de67a8:	d143      	bne.n	c0de6832 <displayExtensionStep+0xd6>
c0de67aa:	2001      	movs	r0, #1
c0de67ac:	2200      	movs	r2, #0
c0de67ae:	f88d 001d 	strb.w	r0, [sp, #29]
c0de67b2:	4924      	ldr	r1, [pc, #144]	@ (c0de6844 <displayExtensionStep+0xe8>)
c0de67b4:	4479      	add	r1, pc
c0de67b6:	9104      	str	r1, [sp, #16]
c0de67b8:	4923      	ldr	r1, [pc, #140]	@ (c0de6848 <displayExtensionStep+0xec>)
c0de67ba:	9000      	str	r0, [sp, #0]
c0de67bc:	f048 0002 	orr.w	r0, r8, #2
c0de67c0:	4479      	add	r1, pc
c0de67c2:	9106      	str	r1, [sp, #24]
c0de67c4:	4921      	ldr	r1, [pc, #132]	@ (c0de684c <displayExtensionStep+0xf0>)
c0de67c6:	ab04      	add	r3, sp, #16
c0de67c8:	4479      	add	r1, pc
c0de67ca:	f7fe fa15 	bl	c0de4bf8 <nbgl_stepDrawCenteredInfo>
c0de67ce:	e02d      	b.n	c0de682c <displayExtensionStep+0xd0>
c0de67d0:	690c      	ldr	r4, [r1, #16]
c0de67d2:	0100      	lsls	r0, r0, #4
c0de67d4:	6821      	ldr	r1, [r4, #0]
c0de67d6:	5808      	ldr	r0, [r1, r0]
c0de67d8:	f001 f898 	bl	c0de790c <pic>
c0de67dc:	4605      	mov	r5, r0
c0de67de:	eb09 0006 	add.w	r0, r9, r6
c0de67e2:	6821      	ldr	r1, [r4, #0]
c0de67e4:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de67e8:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de67ec:	6840      	ldr	r0, [r0, #4]
c0de67ee:	e00d      	b.n	c0de680c <displayExtensionStep+0xb0>
c0de67f0:	690c      	ldr	r4, [r1, #16]
c0de67f2:	6821      	ldr	r1, [r4, #0]
c0de67f4:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de67f8:	f001 f888 	bl	c0de790c <pic>
c0de67fc:	4605      	mov	r5, r0
c0de67fe:	eb09 0006 	add.w	r0, r9, r6
c0de6802:	6861      	ldr	r1, [r4, #4]
c0de6804:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6808:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de680c:	f001 f87e 	bl	c0de790c <pic>
c0de6810:	b17d      	cbz	r5, c0de6832 <displayExtensionStep+0xd6>
c0de6812:	2101      	movs	r1, #1
c0de6814:	ea47 0208 	orr.w	r2, r7, r8
c0de6818:	462b      	mov	r3, r5
c0de681a:	e9cd 0100 	strd	r0, r1, [sp]
c0de681e:	9102      	str	r1, [sp, #8]
c0de6820:	4610      	mov	r0, r2
c0de6822:	2200      	movs	r2, #0
c0de6824:	4906      	ldr	r1, [pc, #24]	@ (c0de6840 <displayExtensionStep+0xe4>)
c0de6826:	4479      	add	r1, pc
c0de6828:	f7fe f8a0 	bl	c0de496c <nbgl_stepDrawText>
c0de682c:	eb09 0106 	add.w	r1, r9, r6
c0de6830:	6688      	str	r0, [r1, #104]	@ 0x68
c0de6832:	f000 fe5c 	bl	c0de74ee <nbgl_refresh>
c0de6836:	b008      	add	sp, #32
c0de6838:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de683c:	000009d0 	.word	0x000009d0
c0de6840:	00000027 	.word	0x00000027
c0de6844:	00001cb1 	.word	0x00001cb1
c0de6848:	00001920 	.word	0x00001920
c0de684c:	00000085 	.word	0x00000085

c0de6850 <extensionNavigate>:
c0de6850:	b580      	push	{r7, lr}
c0de6852:	2904      	cmp	r1, #4
c0de6854:	d00a      	beq.n	c0de686c <extensionNavigate+0x1c>
c0de6856:	2901      	cmp	r1, #1
c0de6858:	d01d      	beq.n	c0de6896 <extensionNavigate+0x46>
c0de685a:	b9d9      	cbnz	r1, c0de6894 <extensionNavigate+0x44>
c0de685c:	4818      	ldr	r0, [pc, #96]	@ (c0de68c0 <extensionNavigate+0x70>)
c0de685e:	4448      	add	r0, r9
c0de6860:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6864:	b330      	cbz	r0, c0de68b4 <extensionNavigate+0x64>
c0de6866:	1e41      	subs	r1, r0, #1
c0de6868:	2008      	movs	r0, #8
c0de686a:	e01c      	b.n	c0de68a6 <extensionNavigate+0x56>
c0de686c:	4814      	ldr	r0, [pc, #80]	@ (c0de68c0 <extensionNavigate+0x70>)
c0de686e:	eb09 0100 	add.w	r1, r9, r0
c0de6872:	f891 2060 	ldrb.w	r2, [r1, #96]	@ 0x60
c0de6876:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de687a:	3901      	subs	r1, #1
c0de687c:	4291      	cmp	r1, r2
c0de687e:	d109      	bne.n	c0de6894 <extensionNavigate+0x44>
c0de6880:	4448      	add	r0, r9
c0de6882:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de6884:	f7fe fade 	bl	c0de4e44 <nbgl_stepRelease>
c0de6888:	f000 fe4a 	bl	c0de7520 <nbgl_screenRedraw>
c0de688c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6890:	f000 be2d 	b.w	c0de74ee <nbgl_refresh>
c0de6894:	bd80      	pop	{r7, pc}
c0de6896:	480a      	ldr	r0, [pc, #40]	@ (c0de68c0 <extensionNavigate+0x70>)
c0de6898:	eb09 0100 	add.w	r1, r9, r0
c0de689c:	f000 f8e2 	bl	c0de6a64 <OUTLINED_FUNCTION_7>
c0de68a0:	dd06      	ble.n	c0de68b0 <extensionNavigate+0x60>
c0de68a2:	1c41      	adds	r1, r0, #1
c0de68a4:	2000      	movs	r0, #0
c0de68a6:	4a06      	ldr	r2, [pc, #24]	@ (c0de68c0 <extensionNavigate+0x70>)
c0de68a8:	444a      	add	r2, r9
c0de68aa:	f882 1060 	strb.w	r1, [r2, #96]	@ 0x60
c0de68ae:	e002      	b.n	c0de68b6 <extensionNavigate+0x66>
c0de68b0:	2000      	movs	r0, #0
c0de68b2:	e000      	b.n	c0de68b6 <extensionNavigate+0x66>
c0de68b4:	2008      	movs	r0, #8
c0de68b6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de68ba:	f7ff bf4f 	b.w	c0de675c <displayExtensionStep>
c0de68be:	bf00      	nop
c0de68c0:	000009d0 	.word	0x000009d0

c0de68c4 <statusTickerCallback>:
c0de68c4:	4802      	ldr	r0, [pc, #8]	@ (c0de68d0 <statusTickerCallback+0xc>)
c0de68c6:	4448      	add	r0, r9
c0de68c8:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de68ca:	b100      	cbz	r0, c0de68ce <statusTickerCallback+0xa>
c0de68cc:	4700      	bx	r0
c0de68ce:	4770      	bx	lr
c0de68d0:	000009d0 	.word	0x000009d0

c0de68d4 <getChoiceName>:
c0de68d4:	b5b0      	push	{r4, r5, r7, lr}
c0de68d6:	b090      	sub	sp, #64	@ 0x40
c0de68d8:	ad01      	add	r5, sp, #4
c0de68da:	f000 f8d1 	bl	c0de6a80 <OUTLINED_FUNCTION_9>
c0de68de:	4814      	ldr	r0, [pc, #80]	@ (c0de6930 <getChoiceName+0x5c>)
c0de68e0:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de68e4:	462a      	mov	r2, r5
c0de68e6:	4448      	add	r0, r9
c0de68e8:	f000 f8b1 	bl	c0de6a4e <OUTLINED_FUNCTION_4>
c0de68ec:	b150      	cbz	r0, c0de6904 <getChoiceName+0x30>
c0de68ee:	7801      	ldrb	r1, [r0, #0]
c0de68f0:	290a      	cmp	r1, #10
c0de68f2:	d009      	beq.n	c0de6908 <getChoiceName+0x34>
c0de68f4:	2909      	cmp	r1, #9
c0de68f6:	d105      	bne.n	c0de6904 <getChoiceName+0x30>
c0de68f8:	f000 f8ad 	bl	c0de6a56 <OUTLINED_FUNCTION_5>
c0de68fc:	4605      	mov	r5, r0
c0de68fe:	f855 0b05 	ldr.w	r0, [r5], #5
c0de6902:	e006      	b.n	c0de6912 <getChoiceName+0x3e>
c0de6904:	2000      	movs	r0, #0
c0de6906:	e010      	b.n	c0de692a <getChoiceName+0x56>
c0de6908:	f000 f8a5 	bl	c0de6a56 <OUTLINED_FUNCTION_5>
c0de690c:	4605      	mov	r5, r0
c0de690e:	f855 0b08 	ldr.w	r0, [r5], #8
c0de6912:	f000 fffb 	bl	c0de790c <pic>
c0de6916:	7829      	ldrb	r1, [r5, #0]
c0de6918:	42a1      	cmp	r1, r4
c0de691a:	d904      	bls.n	c0de6926 <getChoiceName+0x52>
c0de691c:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de6920:	f000 fff4 	bl	c0de790c <pic>
c0de6924:	e001      	b.n	c0de692a <getChoiceName+0x56>
c0de6926:	4803      	ldr	r0, [pc, #12]	@ (c0de6934 <getChoiceName+0x60>)
c0de6928:	4478      	add	r0, pc
c0de692a:	b010      	add	sp, #64	@ 0x40
c0de692c:	bdb0      	pop	{r4, r5, r7, pc}
c0de692e:	bf00      	nop
c0de6930:	000009d0 	.word	0x000009d0
c0de6934:	00001b3d 	.word	0x00001b3d

c0de6938 <onChoiceSelected>:
c0de6938:	b570      	push	{r4, r5, r6, lr}
c0de693a:	b090      	sub	sp, #64	@ 0x40
c0de693c:	ad01      	add	r5, sp, #4
c0de693e:	f000 f89f 	bl	c0de6a80 <OUTLINED_FUNCTION_9>
c0de6942:	4e17      	ldr	r6, [pc, #92]	@ (c0de69a0 <onChoiceSelected+0x68>)
c0de6944:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6948:	462a      	mov	r2, r5
c0de694a:	eb09 0006 	add.w	r0, r9, r6
c0de694e:	f000 f87e 	bl	c0de6a4e <OUTLINED_FUNCTION_4>
c0de6952:	b318      	cbz	r0, c0de699c <onChoiceSelected+0x64>
c0de6954:	7801      	ldrb	r1, [r0, #0]
c0de6956:	290a      	cmp	r1, #10
c0de6958:	d008      	beq.n	c0de696c <onChoiceSelected+0x34>
c0de695a:	2909      	cmp	r1, #9
c0de695c:	d10f      	bne.n	c0de697e <onChoiceSelected+0x46>
c0de695e:	f000 f87a 	bl	c0de6a56 <OUTLINED_FUNCTION_5>
c0de6962:	7941      	ldrb	r1, [r0, #5]
c0de6964:	42a1      	cmp	r1, r4
c0de6966:	d90a      	bls.n	c0de697e <onChoiceSelected+0x46>
c0de6968:	3007      	adds	r0, #7
c0de696a:	e006      	b.n	c0de697a <onChoiceSelected+0x42>
c0de696c:	f000 f873 	bl	c0de6a56 <OUTLINED_FUNCTION_5>
c0de6970:	7a01      	ldrb	r1, [r0, #8]
c0de6972:	42a1      	cmp	r1, r4
c0de6974:	d903      	bls.n	c0de697e <onChoiceSelected+0x46>
c0de6976:	6840      	ldr	r0, [r0, #4]
c0de6978:	4420      	add	r0, r4
c0de697a:	7800      	ldrb	r0, [r0, #0]
c0de697c:	e000      	b.n	c0de6980 <onChoiceSelected+0x48>
c0de697e:	20ff      	movs	r0, #255	@ 0xff
c0de6980:	28ff      	cmp	r0, #255	@ 0xff
c0de6982:	d006      	beq.n	c0de6992 <onChoiceSelected+0x5a>
c0de6984:	eb09 0106 	add.w	r1, r9, r6
c0de6988:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de698a:	b112      	cbz	r2, c0de6992 <onChoiceSelected+0x5a>
c0de698c:	2100      	movs	r1, #0
c0de698e:	4790      	blx	r2
c0de6990:	e004      	b.n	c0de699c <onChoiceSelected+0x64>
c0de6992:	eb09 0006 	add.w	r0, r9, r6
c0de6996:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de6998:	b100      	cbz	r0, c0de699c <onChoiceSelected+0x64>
c0de699a:	4780      	blx	r0
c0de699c:	b010      	add	sp, #64	@ 0x40
c0de699e:	bd70      	pop	{r4, r5, r6, pc}
c0de69a0:	000009d0 	.word	0x000009d0

c0de69a4 <streamingReviewCallback>:
c0de69a4:	b5e0      	push	{r5, r6, r7, lr}
c0de69a6:	4608      	mov	r0, r1
c0de69a8:	f10d 0107 	add.w	r1, sp, #7
c0de69ac:	f7ff fb20 	bl	c0de5ff0 <buttonGenericCallback>
c0de69b0:	b130      	cbz	r0, c0de69c0 <streamingReviewCallback+0x1c>
c0de69b2:	4804      	ldr	r0, [pc, #16]	@ (c0de69c4 <streamingReviewCallback+0x20>)
c0de69b4:	f000 f85d 	bl	c0de6a72 <OUTLINED_FUNCTION_8>
c0de69b8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de69bc:	f7fe bebc 	b.w	c0de5738 <displayStreamingReviewPage>
c0de69c0:	bd8c      	pop	{r2, r3, r7, pc}
c0de69c2:	bf00      	nop
c0de69c4:	000009d0 	.word	0x000009d0

c0de69c8 <onChoiceAccept>:
c0de69c8:	4803      	ldr	r0, [pc, #12]	@ (c0de69d8 <onChoiceAccept+0x10>)
c0de69ca:	4448      	add	r0, r9
c0de69cc:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de69ce:	b109      	cbz	r1, c0de69d4 <onChoiceAccept+0xc>
c0de69d0:	2001      	movs	r0, #1
c0de69d2:	4708      	bx	r1
c0de69d4:	4770      	bx	lr
c0de69d6:	bf00      	nop
c0de69d8:	000009d0 	.word	0x000009d0

c0de69dc <onChoiceReject>:
c0de69dc:	4803      	ldr	r0, [pc, #12]	@ (c0de69ec <onChoiceReject+0x10>)
c0de69de:	4448      	add	r0, r9
c0de69e0:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de69e2:	b109      	cbz	r1, c0de69e8 <onChoiceReject+0xc>
c0de69e4:	2000      	movs	r0, #0
c0de69e6:	4708      	bx	r1
c0de69e8:	4770      	bx	lr
c0de69ea:	bf00      	nop
c0de69ec:	000009d0 	.word	0x000009d0

c0de69f0 <genericChoiceCallback>:
c0de69f0:	b5e0      	push	{r5, r6, r7, lr}
c0de69f2:	4608      	mov	r0, r1
c0de69f4:	f10d 0107 	add.w	r1, sp, #7
c0de69f8:	f7ff fafa 	bl	c0de5ff0 <buttonGenericCallback>
c0de69fc:	b128      	cbz	r0, c0de6a0a <genericChoiceCallback+0x1a>
c0de69fe:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6a02:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6a06:	f7fe bfbd 	b.w	c0de5984 <displayChoicePage>
c0de6a0a:	bd8c      	pop	{r2, r3, r7, pc}

c0de6a0c <OUTLINED_FUNCTION_0>:
c0de6a0c:	eb09 0500 	add.w	r5, r9, r0
c0de6a10:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de6a14:	f001 ba86 	b.w	c0de7f24 <__aeabi_memclr>

c0de6a18 <OUTLINED_FUNCTION_1>:
c0de6a18:	2200      	movs	r2, #0
c0de6a1a:	eb09 0100 	add.w	r1, r9, r0
c0de6a1e:	638a      	str	r2, [r1, #56]	@ 0x38
c0de6a20:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6a24:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de6a28:	3901      	subs	r1, #1
c0de6a2a:	4291      	cmp	r1, r2
c0de6a2c:	4770      	bx	lr

c0de6a2e <OUTLINED_FUNCTION_2>:
c0de6a2e:	eb09 0600 	add.w	r6, r9, r0
c0de6a32:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de6a36:	f001 ba75 	b.w	c0de7f24 <__aeabi_memclr>

c0de6a3a <OUTLINED_FUNCTION_3>:
c0de6a3a:	460e      	mov	r6, r1
c0de6a3c:	2140      	movs	r1, #64	@ 0x40
c0de6a3e:	4698      	mov	r8, r3
c0de6a40:	4615      	mov	r5, r2
c0de6a42:	eb09 0400 	add.w	r4, r9, r0
c0de6a46:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
c0de6a4a:	f001 ba6b 	b.w	c0de7f24 <__aeabi_memclr>

c0de6a4e <OUTLINED_FUNCTION_4>:
c0de6a4e:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de6a52:	f7ff b9af 	b.w	c0de5db4 <getContentElemAtIdx>

c0de6a56 <OUTLINED_FUNCTION_5>:
c0de6a56:	3004      	adds	r0, #4
c0de6a58:	f000 bf58 	b.w	c0de790c <pic>

c0de6a5c <OUTLINED_FUNCTION_6>:
c0de6a5c:	e9cd 6500 	strd	r6, r5, [sp]
c0de6a60:	f7fe bd4e 	b.w	c0de5500 <drawStep>

c0de6a64 <OUTLINED_FUNCTION_7>:
c0de6a64:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de6a68:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de6a6c:	3901      	subs	r1, #1
c0de6a6e:	4281      	cmp	r1, r0
c0de6a70:	4770      	bx	lr

c0de6a72 <OUTLINED_FUNCTION_8>:
c0de6a72:	eb09 0100 	add.w	r1, r9, r0
c0de6a76:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6a7a:	f881 005e 	strb.w	r0, [r1, #94]	@ 0x5e
c0de6a7e:	4770      	bx	lr

c0de6a80 <OUTLINED_FUNCTION_9>:
c0de6a80:	4604      	mov	r4, r0
c0de6a82:	2138      	movs	r1, #56	@ 0x38
c0de6a84:	4628      	mov	r0, r5
c0de6a86:	f001 ba4d 	b.w	c0de7f24 <__aeabi_memclr>

c0de6a8a <OUTLINED_FUNCTION_10>:
c0de6a8a:	f997 1035 	ldrsb.w	r1, [r7, #53]	@ 0x35
c0de6a8e:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de6a92:	4730      	bx	r6

c0de6a94 <bip32_path_read>:
c0de6a94:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6a98:	b10b      	cbz	r3, c0de6a9e <bip32_path_read+0xa>
c0de6a9a:	2b0a      	cmp	r3, #10
c0de6a9c:	d902      	bls.n	c0de6aa4 <bip32_path_read+0x10>
c0de6a9e:	2000      	movs	r0, #0
c0de6aa0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6aa4:	4692      	mov	sl, r2
c0de6aa6:	460e      	mov	r6, r1
c0de6aa8:	4683      	mov	fp, r0
c0de6aaa:	425f      	negs	r7, r3
c0de6aac:	2500      	movs	r5, #0
c0de6aae:	f04f 0800 	mov.w	r8, #0
c0de6ab2:	9301      	str	r3, [sp, #4]
c0de6ab4:	42af      	cmp	r7, r5
c0de6ab6:	d00c      	beq.n	c0de6ad2 <bip32_path_read+0x3e>
c0de6ab8:	f108 0404 	add.w	r4, r8, #4
c0de6abc:	42b4      	cmp	r4, r6
c0de6abe:	d808      	bhi.n	c0de6ad2 <bip32_path_read+0x3e>
c0de6ac0:	4658      	mov	r0, fp
c0de6ac2:	4641      	mov	r1, r8
c0de6ac4:	f000 fb6f 	bl	c0de71a6 <read_u32_be>
c0de6ac8:	f84a 0008 	str.w	r0, [sl, r8]
c0de6acc:	3d01      	subs	r5, #1
c0de6ace:	46a0      	mov	r8, r4
c0de6ad0:	e7f0      	b.n	c0de6ab4 <bip32_path_read+0x20>
c0de6ad2:	9a01      	ldr	r2, [sp, #4]
c0de6ad4:	4269      	negs	r1, r5
c0de6ad6:	2000      	movs	r0, #0
c0de6ad8:	4291      	cmp	r1, r2
c0de6ada:	bf28      	it	cs
c0de6adc:	2001      	movcs	r0, #1
c0de6ade:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de6ae2 <buffer_seek_cur>:
c0de6ae2:	6882      	ldr	r2, [r0, #8]
c0de6ae4:	1889      	adds	r1, r1, r2
c0de6ae6:	d205      	bcs.n	c0de6af4 <buffer_seek_cur+0x12>
c0de6ae8:	6842      	ldr	r2, [r0, #4]
c0de6aea:	4291      	cmp	r1, r2
c0de6aec:	bf9e      	ittt	ls
c0de6aee:	6081      	strls	r1, [r0, #8]
c0de6af0:	2001      	movls	r0, #1
c0de6af2:	4770      	bxls	lr
c0de6af4:	2000      	movs	r0, #0
c0de6af6:	4770      	bx	lr

c0de6af8 <buffer_read_u8>:
c0de6af8:	b510      	push	{r4, lr}
c0de6afa:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de6afe:	429a      	cmp	r2, r3
c0de6b00:	d00a      	beq.n	c0de6b18 <buffer_read_u8+0x20>
c0de6b02:	6804      	ldr	r4, [r0, #0]
c0de6b04:	5ce4      	ldrb	r4, [r4, r3]
c0de6b06:	700c      	strb	r4, [r1, #0]
c0de6b08:	6881      	ldr	r1, [r0, #8]
c0de6b0a:	3101      	adds	r1, #1
c0de6b0c:	d206      	bcs.n	c0de6b1c <buffer_read_u8+0x24>
c0de6b0e:	6844      	ldr	r4, [r0, #4]
c0de6b10:	42a1      	cmp	r1, r4
c0de6b12:	bf98      	it	ls
c0de6b14:	6081      	strls	r1, [r0, #8]
c0de6b16:	e001      	b.n	c0de6b1c <buffer_read_u8+0x24>
c0de6b18:	2000      	movs	r0, #0
c0de6b1a:	7008      	strb	r0, [r1, #0]
c0de6b1c:	1ad0      	subs	r0, r2, r3
c0de6b1e:	bf18      	it	ne
c0de6b20:	2001      	movne	r0, #1
c0de6b22:	bd10      	pop	{r4, pc}

c0de6b24 <buffer_read_u64>:
c0de6b24:	b570      	push	{r4, r5, r6, lr}
c0de6b26:	f000 f87d 	bl	c0de6c24 <OUTLINED_FUNCTION_0>
c0de6b2a:	2e07      	cmp	r6, #7
c0de6b2c:	d904      	bls.n	c0de6b38 <buffer_read_u64+0x14>
c0de6b2e:	6820      	ldr	r0, [r4, #0]
c0de6b30:	b132      	cbz	r2, c0de6b40 <buffer_read_u64+0x1c>
c0de6b32:	f000 fb6f 	bl	c0de7214 <read_u64_le>
c0de6b36:	e005      	b.n	c0de6b44 <buffer_read_u64+0x20>
c0de6b38:	2000      	movs	r0, #0
c0de6b3a:	e9c5 0000 	strd	r0, r0, [r5]
c0de6b3e:	e00c      	b.n	c0de6b5a <buffer_read_u64+0x36>
c0de6b40:	f000 fb3d 	bl	c0de71be <read_u64_be>
c0de6b44:	e9c5 0100 	strd	r0, r1, [r5]
c0de6b48:	68a0      	ldr	r0, [r4, #8]
c0de6b4a:	f110 0f09 	cmn.w	r0, #9
c0de6b4e:	d804      	bhi.n	c0de6b5a <buffer_read_u64+0x36>
c0de6b50:	6861      	ldr	r1, [r4, #4]
c0de6b52:	3008      	adds	r0, #8
c0de6b54:	4288      	cmp	r0, r1
c0de6b56:	bf98      	it	ls
c0de6b58:	60a0      	strls	r0, [r4, #8]
c0de6b5a:	2000      	movs	r0, #0
c0de6b5c:	2e07      	cmp	r6, #7
c0de6b5e:	bf88      	it	hi
c0de6b60:	2001      	movhi	r0, #1
c0de6b62:	bd70      	pop	{r4, r5, r6, pc}

c0de6b64 <buffer_read_varint>:
c0de6b64:	b5b0      	push	{r4, r5, r7, lr}
c0de6b66:	4604      	mov	r4, r0
c0de6b68:	460d      	mov	r5, r1
c0de6b6a:	6800      	ldr	r0, [r0, #0]
c0de6b6c:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de6b70:	4410      	add	r0, r2
c0de6b72:	1a89      	subs	r1, r1, r2
c0de6b74:	462a      	mov	r2, r5
c0de6b76:	f000 fbb7 	bl	c0de72e8 <varint_read>
c0de6b7a:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de6b7e:	dd0a      	ble.n	c0de6b96 <buffer_read_varint+0x32>
c0de6b80:	68a1      	ldr	r1, [r4, #8]
c0de6b82:	1840      	adds	r0, r0, r1
c0de6b84:	d205      	bcs.n	c0de6b92 <buffer_read_varint+0x2e>
c0de6b86:	6861      	ldr	r1, [r4, #4]
c0de6b88:	4288      	cmp	r0, r1
c0de6b8a:	bf9e      	ittt	ls
c0de6b8c:	60a0      	strls	r0, [r4, #8]
c0de6b8e:	2001      	movls	r0, #1
c0de6b90:	bdb0      	popls	{r4, r5, r7, pc}
c0de6b92:	2000      	movs	r0, #0
c0de6b94:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b96:	2000      	movs	r0, #0
c0de6b98:	e9c5 0000 	strd	r0, r0, [r5]
c0de6b9c:	bdb0      	pop	{r4, r5, r7, pc}

c0de6b9e <buffer_read_bip32_path>:
c0de6b9e:	b5b0      	push	{r4, r5, r7, lr}
c0de6ba0:	4604      	mov	r4, r0
c0de6ba2:	4615      	mov	r5, r2
c0de6ba4:	460a      	mov	r2, r1
c0de6ba6:	6800      	ldr	r0, [r0, #0]
c0de6ba8:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de6bac:	4418      	add	r0, r3
c0de6bae:	1ac9      	subs	r1, r1, r3
c0de6bb0:	462b      	mov	r3, r5
c0de6bb2:	f7ff ff6f 	bl	c0de6a94 <bip32_path_read>
c0de6bb6:	b140      	cbz	r0, c0de6bca <buffer_read_bip32_path+0x2c>
c0de6bb8:	68a2      	ldr	r2, [r4, #8]
c0de6bba:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de6bbe:	4291      	cmp	r1, r2
c0de6bc0:	d303      	bcc.n	c0de6bca <buffer_read_bip32_path+0x2c>
c0de6bc2:	6862      	ldr	r2, [r4, #4]
c0de6bc4:	4291      	cmp	r1, r2
c0de6bc6:	bf98      	it	ls
c0de6bc8:	60a1      	strls	r1, [r4, #8]
c0de6bca:	bdb0      	pop	{r4, r5, r7, pc}

c0de6bcc <buffer_copy>:
c0de6bcc:	b5b0      	push	{r4, r5, r7, lr}
c0de6bce:	4614      	mov	r4, r2
c0de6bd0:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6bd4:	1a9d      	subs	r5, r3, r2
c0de6bd6:	42a5      	cmp	r5, r4
c0de6bd8:	d806      	bhi.n	c0de6be8 <buffer_copy+0x1c>
c0de6bda:	6800      	ldr	r0, [r0, #0]
c0de6bdc:	4402      	add	r2, r0
c0de6bde:	4608      	mov	r0, r1
c0de6be0:	4611      	mov	r1, r2
c0de6be2:	462a      	mov	r2, r5
c0de6be4:	f001 f996 	bl	c0de7f14 <__aeabi_memmove>
c0de6be8:	2000      	movs	r0, #0
c0de6bea:	42a5      	cmp	r5, r4
c0de6bec:	bf98      	it	ls
c0de6bee:	2001      	movls	r0, #1
c0de6bf0:	bdb0      	pop	{r4, r5, r7, pc}

c0de6bf2 <buffer_move>:
c0de6bf2:	b5b0      	push	{r4, r5, r7, lr}
c0de6bf4:	4615      	mov	r5, r2
c0de6bf6:	4604      	mov	r4, r0
c0de6bf8:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6bfc:	1a12      	subs	r2, r2, r0
c0de6bfe:	42aa      	cmp	r2, r5
c0de6c00:	bf84      	itt	hi
c0de6c02:	2000      	movhi	r0, #0
c0de6c04:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6c06:	6823      	ldr	r3, [r4, #0]
c0de6c08:	4403      	add	r3, r0
c0de6c0a:	4608      	mov	r0, r1
c0de6c0c:	4619      	mov	r1, r3
c0de6c0e:	f001 f981 	bl	c0de7f14 <__aeabi_memmove>
c0de6c12:	68a0      	ldr	r0, [r4, #8]
c0de6c14:	1940      	adds	r0, r0, r5
c0de6c16:	d203      	bcs.n	c0de6c20 <buffer_move+0x2e>
c0de6c18:	6861      	ldr	r1, [r4, #4]
c0de6c1a:	4288      	cmp	r0, r1
c0de6c1c:	bf98      	it	ls
c0de6c1e:	60a0      	strls	r0, [r4, #8]
c0de6c20:	2001      	movs	r0, #1
c0de6c22:	bdb0      	pop	{r4, r5, r7, pc}

c0de6c24 <OUTLINED_FUNCTION_0>:
c0de6c24:	4604      	mov	r4, r0
c0de6c26:	460d      	mov	r5, r1
c0de6c28:	6840      	ldr	r0, [r0, #4]
c0de6c2a:	68a1      	ldr	r1, [r4, #8]
c0de6c2c:	1a46      	subs	r6, r0, r1
c0de6c2e:	4770      	bx	lr

c0de6c30 <bip32_derive_with_seed_init_privkey_256>:
c0de6c30:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6c34:	b095      	sub	sp, #84	@ 0x54
c0de6c36:	460d      	mov	r5, r1
c0de6c38:	4607      	mov	r7, r0
c0de6c3a:	a904      	add	r1, sp, #16
c0de6c3c:	469a      	mov	sl, r3
c0de6c3e:	4614      	mov	r4, r2
c0de6c40:	4628      	mov	r0, r5
c0de6c42:	f000 ffc3 	bl	c0de7bcc <cx_ecdomain_parameters_length>
c0de6c46:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6c4a:	4606      	mov	r6, r0
c0de6c4c:	b9e0      	cbnz	r0, c0de6c88 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6c4e:	9804      	ldr	r0, [sp, #16]
c0de6c50:	2820      	cmp	r0, #32
c0de6c52:	d117      	bne.n	c0de6c84 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de6c54:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de6c56:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de6c5a:	ab05      	add	r3, sp, #20
c0de6c5c:	e9cd 3200 	strd	r3, r2, [sp]
c0de6c60:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de6c64:	4638      	mov	r0, r7
c0de6c66:	4629      	mov	r1, r5
c0de6c68:	4622      	mov	r2, r4
c0de6c6a:	4653      	mov	r3, sl
c0de6c6c:	f000 f818 	bl	c0de6ca0 <os_derive_bip32_with_seed_no_throw>
c0de6c70:	4606      	mov	r6, r0
c0de6c72:	b948      	cbnz	r0, c0de6c88 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6c74:	9a04      	ldr	r2, [sp, #16]
c0de6c76:	a905      	add	r1, sp, #20
c0de6c78:	4628      	mov	r0, r5
c0de6c7a:	4643      	mov	r3, r8
c0de6c7c:	f000 fc12 	bl	c0de74a4 <cx_ecfp_init_private_key_no_throw>
c0de6c80:	4606      	mov	r6, r0
c0de6c82:	e001      	b.n	c0de6c88 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6c84:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6c88:	a805      	add	r0, sp, #20
c0de6c8a:	2140      	movs	r1, #64	@ 0x40
c0de6c8c:	f001 f958 	bl	c0de7f40 <explicit_bzero>
c0de6c90:	b116      	cbz	r6, c0de6c98 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de6c92:	4640      	mov	r0, r8
c0de6c94:	f000 f89f 	bl	c0de6dd6 <OUTLINED_FUNCTION_0>
c0de6c98:	4630      	mov	r0, r6
c0de6c9a:	b015      	add	sp, #84	@ 0x54
c0de6c9c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de6ca0 <os_derive_bip32_with_seed_no_throw>:
c0de6ca0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6ca4:	b090      	sub	sp, #64	@ 0x40
c0de6ca6:	f10d 0810 	add.w	r8, sp, #16
c0de6caa:	4607      	mov	r7, r0
c0de6cac:	469b      	mov	fp, r3
c0de6cae:	4616      	mov	r6, r2
c0de6cb0:	460c      	mov	r4, r1
c0de6cb2:	4640      	mov	r0, r8
c0de6cb4:	f001 f97a 	bl	c0de7fac <setjmp>
c0de6cb8:	b285      	uxth	r5, r0
c0de6cba:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de6cbe:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6cc2:	b155      	cbz	r5, c0de6cda <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6cc4:	2000      	movs	r0, #0
c0de6cc6:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6cca:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6ccc:	f001 f822 	bl	c0de7d14 <try_context_set>
c0de6cd0:	2140      	movs	r1, #64	@ 0x40
c0de6cd2:	4650      	mov	r0, sl
c0de6cd4:	f001 f934 	bl	c0de7f40 <explicit_bzero>
c0de6cd8:	e012      	b.n	c0de6d00 <os_derive_bip32_with_seed_no_throw+0x60>
c0de6cda:	a804      	add	r0, sp, #16
c0de6cdc:	f001 f81a 	bl	c0de7d14 <try_context_set>
c0de6ce0:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de6ce2:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6ce4:	4668      	mov	r0, sp
c0de6ce6:	4632      	mov	r2, r6
c0de6ce8:	465b      	mov	r3, fp
c0de6cea:	f8c0 a000 	str.w	sl, [r0]
c0de6cee:	6041      	str	r1, [r0, #4]
c0de6cf0:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de6cf2:	6081      	str	r1, [r0, #8]
c0de6cf4:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6cf6:	60c1      	str	r1, [r0, #12]
c0de6cf8:	4638      	mov	r0, r7
c0de6cfa:	4621      	mov	r1, r4
c0de6cfc:	f000 ff70 	bl	c0de7be0 <os_perso_derive_node_with_seed_key>
c0de6d00:	f001 f800 	bl	c0de7d04 <try_context_get>
c0de6d04:	4540      	cmp	r0, r8
c0de6d06:	d102      	bne.n	c0de6d0e <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6d08:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6d0a:	f001 f803 	bl	c0de7d14 <try_context_set>
c0de6d0e:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de6d12:	b918      	cbnz	r0, c0de6d1c <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6d14:	4628      	mov	r0, r5
c0de6d16:	b010      	add	sp, #64	@ 0x40
c0de6d18:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6d1c:	f000 fc51 	bl	c0de75c2 <os_longjmp>

c0de6d20 <bip32_derive_with_seed_get_pubkey_256>:
c0de6d20:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d22:	b0a1      	sub	sp, #132	@ 0x84
c0de6d24:	460e      	mov	r6, r1
c0de6d26:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6d28:	9103      	str	r1, [sp, #12]
c0de6d2a:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6d2c:	9102      	str	r1, [sp, #8]
c0de6d2e:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de6d30:	9101      	str	r1, [sp, #4]
c0de6d32:	a917      	add	r1, sp, #92	@ 0x5c
c0de6d34:	9100      	str	r1, [sp, #0]
c0de6d36:	4631      	mov	r1, r6
c0de6d38:	f7ff ff7a 	bl	c0de6c30 <bip32_derive_with_seed_init_privkey_256>
c0de6d3c:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de6d3e:	4605      	mov	r5, r0
c0de6d40:	b9b8      	cbnz	r0, c0de6d72 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6d42:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6d44:	2301      	movs	r3, #1
c0de6d46:	9000      	str	r0, [sp, #0]
c0de6d48:	af04      	add	r7, sp, #16
c0de6d4a:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6d4c:	4630      	mov	r0, r6
c0de6d4e:	4639      	mov	r1, r7
c0de6d50:	f000 fba3 	bl	c0de749a <cx_ecfp_generate_pair2_no_throw>
c0de6d54:	4605      	mov	r5, r0
c0de6d56:	b960      	cbnz	r0, c0de6d72 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6d58:	9805      	ldr	r0, [sp, #20]
c0de6d5a:	2841      	cmp	r0, #65	@ 0x41
c0de6d5c:	d107      	bne.n	c0de6d6e <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de6d5e:	f107 0108 	add.w	r1, r7, #8
c0de6d62:	4620      	mov	r0, r4
c0de6d64:	2241      	movs	r2, #65	@ 0x41
c0de6d66:	f001 f8d3 	bl	c0de7f10 <__aeabi_memcpy>
c0de6d6a:	2500      	movs	r5, #0
c0de6d6c:	e001      	b.n	c0de6d72 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6d6e:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de6d72:	a817      	add	r0, sp, #92	@ 0x5c
c0de6d74:	f000 f82f 	bl	c0de6dd6 <OUTLINED_FUNCTION_0>
c0de6d78:	b11d      	cbz	r5, c0de6d82 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de6d7a:	4620      	mov	r0, r4
c0de6d7c:	2141      	movs	r1, #65	@ 0x41
c0de6d7e:	f001 f8df 	bl	c0de7f40 <explicit_bzero>
c0de6d82:	4628      	mov	r0, r5
c0de6d84:	b021      	add	sp, #132	@ 0x84
c0de6d86:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6d88 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6d88:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d8a:	b08f      	sub	sp, #60	@ 0x3c
c0de6d8c:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de6d8e:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de6d90:	683c      	ldr	r4, [r7, #0]
c0de6d92:	9503      	str	r5, [sp, #12]
c0de6d94:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de6d96:	9502      	str	r5, [sp, #8]
c0de6d98:	2500      	movs	r5, #0
c0de6d9a:	9501      	str	r5, [sp, #4]
c0de6d9c:	ad05      	add	r5, sp, #20
c0de6d9e:	9500      	str	r5, [sp, #0]
c0de6da0:	f7ff ff46 	bl	c0de6c30 <bip32_derive_with_seed_init_privkey_256>
c0de6da4:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de6da6:	4606      	mov	r6, r0
c0de6da8:	b950      	cbnz	r0, c0de6dc0 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6daa:	ae14      	add	r6, sp, #80	@ 0x50
c0de6dac:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de6dae:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de6db0:	e9cd 6500 	strd	r6, r5, [sp]
c0de6db4:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6db8:	a805      	add	r0, sp, #20
c0de6dba:	f000 fb69 	bl	c0de7490 <cx_ecdsa_sign_no_throw>
c0de6dbe:	4606      	mov	r6, r0
c0de6dc0:	a805      	add	r0, sp, #20
c0de6dc2:	f000 f808 	bl	c0de6dd6 <OUTLINED_FUNCTION_0>
c0de6dc6:	b11e      	cbz	r6, c0de6dd0 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6dc8:	4628      	mov	r0, r5
c0de6dca:	4621      	mov	r1, r4
c0de6dcc:	f001 f8b8 	bl	c0de7f40 <explicit_bzero>
c0de6dd0:	4630      	mov	r0, r6
c0de6dd2:	b00f      	add	sp, #60	@ 0x3c
c0de6dd4:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6dd6 <OUTLINED_FUNCTION_0>:
c0de6dd6:	2128      	movs	r1, #40	@ 0x28
c0de6dd8:	f001 b8b2 	b.w	c0de7f40 <explicit_bzero>

c0de6ddc <format_u64>:
c0de6ddc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6de0:	b1f9      	cbz	r1, c0de6e22 <format_u64+0x46>
c0de6de2:	4615      	mov	r5, r2
c0de6de4:	4604      	mov	r4, r0
c0de6de6:	f1a1 0801 	sub.w	r8, r1, #1
c0de6dea:	2700      	movs	r7, #0
c0de6dec:	2600      	movs	r6, #0
c0de6dee:	f1b5 000a 	subs.w	r0, r5, #10
c0de6df2:	f173 0000 	sbcs.w	r0, r3, #0
c0de6df6:	d316      	bcc.n	c0de6e26 <format_u64+0x4a>
c0de6df8:	4619      	mov	r1, r3
c0de6dfa:	4628      	mov	r0, r5
c0de6dfc:	220a      	movs	r2, #10
c0de6dfe:	2300      	movs	r3, #0
c0de6e00:	f001 f894 	bl	c0de7f2c <__aeabi_uldivmod>
c0de6e04:	460b      	mov	r3, r1
c0de6e06:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6e0a:	1cba      	adds	r2, r7, #2
c0de6e0c:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de6e10:	4605      	mov	r5, r0
c0de6e12:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6e16:	55e1      	strb	r1, [r4, r7]
c0de6e18:	1c79      	adds	r1, r7, #1
c0de6e1a:	4542      	cmp	r2, r8
c0de6e1c:	460f      	mov	r7, r1
c0de6e1e:	d9e6      	bls.n	c0de6dee <format_u64+0x12>
c0de6e20:	e012      	b.n	c0de6e48 <format_u64+0x6c>
c0de6e22:	2600      	movs	r6, #0
c0de6e24:	e010      	b.n	c0de6e48 <format_u64+0x6c>
c0de6e26:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6e2a:	19e1      	adds	r1, r4, r7
c0de6e2c:	55e0      	strb	r0, [r4, r7]
c0de6e2e:	2000      	movs	r0, #0
c0de6e30:	7048      	strb	r0, [r1, #1]
c0de6e32:	b2c1      	uxtb	r1, r0
c0de6e34:	428f      	cmp	r7, r1
c0de6e36:	d906      	bls.n	c0de6e46 <format_u64+0x6a>
c0de6e38:	5c62      	ldrb	r2, [r4, r1]
c0de6e3a:	5de3      	ldrb	r3, [r4, r7]
c0de6e3c:	3001      	adds	r0, #1
c0de6e3e:	5463      	strb	r3, [r4, r1]
c0de6e40:	55e2      	strb	r2, [r4, r7]
c0de6e42:	3f01      	subs	r7, #1
c0de6e44:	e7f5      	b.n	c0de6e32 <format_u64+0x56>
c0de6e46:	2601      	movs	r6, #1
c0de6e48:	4630      	mov	r0, r6
c0de6e4a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6e4e <format_fpu64>:
c0de6e4e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6e52:	b086      	sub	sp, #24
c0de6e54:	466c      	mov	r4, sp
c0de6e56:	4688      	mov	r8, r1
c0de6e58:	4605      	mov	r5, r0
c0de6e5a:	2115      	movs	r1, #21
c0de6e5c:	461e      	mov	r6, r3
c0de6e5e:	4617      	mov	r7, r2
c0de6e60:	4620      	mov	r0, r4
c0de6e62:	f001 f85f 	bl	c0de7f24 <__aeabi_memclr>
c0de6e66:	4620      	mov	r0, r4
c0de6e68:	2115      	movs	r1, #21
c0de6e6a:	463a      	mov	r2, r7
c0de6e6c:	4633      	mov	r3, r6
c0de6e6e:	f7ff ffb5 	bl	c0de6ddc <format_u64>
c0de6e72:	b340      	cbz	r0, c0de6ec6 <format_fpu64+0x78>
c0de6e74:	466f      	mov	r7, sp
c0de6e76:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6e78:	4638      	mov	r0, r7
c0de6e7a:	f001 f8af 	bl	c0de7fdc <strlen>
c0de6e7e:	42b0      	cmp	r0, r6
c0de6e80:	d910      	bls.n	c0de6ea4 <format_fpu64+0x56>
c0de6e82:	1831      	adds	r1, r6, r0
c0de6e84:	3101      	adds	r1, #1
c0de6e86:	4541      	cmp	r1, r8
c0de6e88:	d21d      	bcs.n	c0de6ec6 <format_fpu64+0x78>
c0de6e8a:	1b84      	subs	r4, r0, r6
c0de6e8c:	4628      	mov	r0, r5
c0de6e8e:	4639      	mov	r1, r7
c0de6e90:	4622      	mov	r2, r4
c0de6e92:	f001 f83d 	bl	c0de7f10 <__aeabi_memcpy>
c0de6e96:	1928      	adds	r0, r5, r4
c0de6e98:	212e      	movs	r1, #46	@ 0x2e
c0de6e9a:	4632      	mov	r2, r6
c0de6e9c:	f800 1b01 	strb.w	r1, [r0], #1
c0de6ea0:	1939      	adds	r1, r7, r4
c0de6ea2:	e015      	b.n	c0de6ed0 <format_fpu64+0x82>
c0de6ea4:	1a32      	subs	r2, r6, r0
c0de6ea6:	1c91      	adds	r1, r2, #2
c0de6ea8:	4541      	cmp	r1, r8
c0de6eaa:	d20c      	bcs.n	c0de6ec6 <format_fpu64+0x78>
c0de6eac:	202e      	movs	r0, #46	@ 0x2e
c0de6eae:	2330      	movs	r3, #48	@ 0x30
c0de6eb0:	2400      	movs	r4, #0
c0de6eb2:	7068      	strb	r0, [r5, #1]
c0de6eb4:	1ca8      	adds	r0, r5, #2
c0de6eb6:	702b      	strb	r3, [r5, #0]
c0de6eb8:	b2a5      	uxth	r5, r4
c0de6eba:	42aa      	cmp	r2, r5
c0de6ebc:	d905      	bls.n	c0de6eca <format_fpu64+0x7c>
c0de6ebe:	f800 3b01 	strb.w	r3, [r0], #1
c0de6ec2:	3401      	adds	r4, #1
c0de6ec4:	e7f8      	b.n	c0de6eb8 <format_fpu64+0x6a>
c0de6ec6:	2000      	movs	r0, #0
c0de6ec8:	e005      	b.n	c0de6ed6 <format_fpu64+0x88>
c0de6eca:	eba8 0201 	sub.w	r2, r8, r1
c0de6ece:	4669      	mov	r1, sp
c0de6ed0:	f001 f89e 	bl	c0de8010 <strncpy>
c0de6ed4:	2001      	movs	r0, #1
c0de6ed6:	b006      	add	sp, #24
c0de6ed8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6edc <format_hex>:
c0de6edc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6ede:	4604      	mov	r4, r0
c0de6ee0:	0048      	lsls	r0, r1, #1
c0de6ee2:	f100 0c01 	add.w	ip, r0, #1
c0de6ee6:	459c      	cmp	ip, r3
c0de6ee8:	d902      	bls.n	c0de6ef0 <format_hex+0x14>
c0de6eea:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de6eee:	e018      	b.n	c0de6f22 <format_hex+0x46>
c0de6ef0:	480d      	ldr	r0, [pc, #52]	@ (c0de6f28 <format_hex+0x4c>)
c0de6ef2:	2500      	movs	r5, #0
c0de6ef4:	4478      	add	r0, pc
c0de6ef6:	b191      	cbz	r1, c0de6f1e <format_hex+0x42>
c0de6ef8:	1cef      	adds	r7, r5, #3
c0de6efa:	429f      	cmp	r7, r3
c0de6efc:	d80d      	bhi.n	c0de6f1a <format_hex+0x3e>
c0de6efe:	7827      	ldrb	r7, [r4, #0]
c0de6f00:	3901      	subs	r1, #1
c0de6f02:	093f      	lsrs	r7, r7, #4
c0de6f04:	5dc7      	ldrb	r7, [r0, r7]
c0de6f06:	5557      	strb	r7, [r2, r5]
c0de6f08:	1957      	adds	r7, r2, r5
c0de6f0a:	3502      	adds	r5, #2
c0de6f0c:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de6f10:	f006 060f 	and.w	r6, r6, #15
c0de6f14:	5d86      	ldrb	r6, [r0, r6]
c0de6f16:	707e      	strb	r6, [r7, #1]
c0de6f18:	e7ed      	b.n	c0de6ef6 <format_hex+0x1a>
c0de6f1a:	f105 0c01 	add.w	ip, r5, #1
c0de6f1e:	2000      	movs	r0, #0
c0de6f20:	5550      	strb	r0, [r2, r5]
c0de6f22:	4660      	mov	r0, ip
c0de6f24:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6f26:	bf00      	nop
c0de6f28:	00001557 	.word	0x00001557

c0de6f2c <app_ticker_event_callback>:
c0de6f2c:	4770      	bx	lr
	...

c0de6f30 <io_event>:
c0de6f30:	b580      	push	{r7, lr}
c0de6f32:	480a      	ldr	r0, [pc, #40]	@ (c0de6f5c <io_event+0x2c>)
c0de6f34:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6f38:	290e      	cmp	r1, #14
c0de6f3a:	d005      	beq.n	c0de6f48 <io_event+0x18>
c0de6f3c:	2905      	cmp	r1, #5
c0de6f3e:	d108      	bne.n	c0de6f52 <io_event+0x22>
c0de6f40:	4448      	add	r0, r9
c0de6f42:	f000 fa05 	bl	c0de7350 <ux_process_button_event>
c0de6f46:	e006      	b.n	c0de6f56 <io_event+0x26>
c0de6f48:	f7ff fff0 	bl	c0de6f2c <app_ticker_event_callback>
c0de6f4c:	f000 fa44 	bl	c0de73d8 <ux_process_ticker_event>
c0de6f50:	e001      	b.n	c0de6f56 <io_event+0x26>
c0de6f52:	f000 fa59 	bl	c0de7408 <ux_process_default_event>
c0de6f56:	2001      	movs	r0, #1
c0de6f58:	bd80      	pop	{r7, pc}
c0de6f5a:	bf00      	nop
c0de6f5c:	00000a3c 	.word	0x00000a3c

c0de6f60 <io_init>:
c0de6f60:	4802      	ldr	r0, [pc, #8]	@ (c0de6f6c <io_init+0xc>)
c0de6f62:	2101      	movs	r1, #1
c0de6f64:	f809 1000 	strb.w	r1, [r9, r0]
c0de6f68:	4770      	bx	lr
c0de6f6a:	bf00      	nop
c0de6f6c:	00000b4c 	.word	0x00000b4c

c0de6f70 <io_recv_command>:
c0de6f70:	b510      	push	{r4, lr}
c0de6f72:	4c09      	ldr	r4, [pc, #36]	@ (c0de6f98 <io_recv_command+0x28>)
c0de6f74:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6f78:	2801      	cmp	r0, #1
c0de6f7a:	d104      	bne.n	c0de6f86 <io_recv_command+0x16>
c0de6f7c:	f000 fea0 	bl	c0de7cc0 <os_io_start>
c0de6f80:	2000      	movs	r0, #0
c0de6f82:	f809 0004 	strb.w	r0, [r9, r4]
c0de6f86:	2000      	movs	r0, #0
c0de6f88:	2800      	cmp	r0, #0
c0de6f8a:	dc03      	bgt.n	c0de6f94 <io_recv_command+0x24>
c0de6f8c:	2001      	movs	r0, #1
c0de6f8e:	f7fc fe2f 	bl	c0de3bf0 <io_legacy_apdu_rx>
c0de6f92:	e7f9      	b.n	c0de6f88 <io_recv_command+0x18>
c0de6f94:	bd10      	pop	{r4, pc}
c0de6f96:	bf00      	nop
c0de6f98:	00000b4c 	.word	0x00000b4c

c0de6f9c <io_send_response_buffers>:
c0de6f9c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6fa0:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de7034 <io_send_response_buffers+0x98>
c0de6fa4:	4690      	mov	r8, r2
c0de6fa6:	460f      	mov	r7, r1
c0de6fa8:	4606      	mov	r6, r0
c0de6faa:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6fae:	2500      	movs	r5, #0
c0de6fb0:	b1b6      	cbz	r6, c0de6fe0 <io_send_response_buffers+0x44>
c0de6fb2:	b1af      	cbz	r7, c0de6fe0 <io_send_response_buffers+0x44>
c0de6fb4:	2500      	movs	r5, #0
c0de6fb6:	b19f      	cbz	r7, c0de6fe0 <io_send_response_buffers+0x44>
c0de6fb8:	eb09 000a 	add.w	r0, r9, sl
c0de6fbc:	1b62      	subs	r2, r4, r5
c0de6fbe:	1941      	adds	r1, r0, r5
c0de6fc0:	4630      	mov	r0, r6
c0de6fc2:	f7ff fe03 	bl	c0de6bcc <buffer_copy>
c0de6fc6:	b130      	cbz	r0, c0de6fd6 <io_send_response_buffers+0x3a>
c0de6fc8:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6fcc:	360c      	adds	r6, #12
c0de6fce:	3f01      	subs	r7, #1
c0de6fd0:	4428      	add	r0, r5
c0de6fd2:	1a45      	subs	r5, r0, r1
c0de6fd4:	e7ef      	b.n	c0de6fb6 <io_send_response_buffers+0x1a>
c0de6fd6:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6fda:	2600      	movs	r6, #0
c0de6fdc:	2700      	movs	r7, #0
c0de6fde:	e7e6      	b.n	c0de6fae <io_send_response_buffers+0x12>
c0de6fe0:	fa1f f688 	uxth.w	r6, r8
c0de6fe4:	eb09 000a 	add.w	r0, r9, sl
c0de6fe8:	4629      	mov	r1, r5
c0de6fea:	4632      	mov	r2, r6
c0de6fec:	f000 f9aa 	bl	c0de7344 <write_u16_be>
c0de6ff0:	4811      	ldr	r0, [pc, #68]	@ (c0de7038 <io_send_response_buffers+0x9c>)
c0de6ff2:	1ca9      	adds	r1, r5, #2
c0de6ff4:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6ff8:	b118      	cbz	r0, c0de7002 <io_send_response_buffers+0x66>
c0de6ffa:	4810      	ldr	r0, [pc, #64]	@ (c0de703c <io_send_response_buffers+0xa0>)
c0de6ffc:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de7000:	b928      	cbnz	r0, c0de700e <io_send_response_buffers+0x72>
c0de7002:	f000 f81f 	bl	c0de7044 <OUTLINED_FUNCTION_0>
c0de7006:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de700a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de700e:	f000 f819 	bl	c0de7044 <OUTLINED_FUNCTION_0>
c0de7012:	2800      	cmp	r0, #0
c0de7014:	d40a      	bmi.n	c0de702c <io_send_response_buffers+0x90>
c0de7016:	480a      	ldr	r0, [pc, #40]	@ (c0de7040 <io_send_response_buffers+0xa4>)
c0de7018:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de701c:	fab1 f181 	clz	r1, r1
c0de7020:	f859 0000 	ldr.w	r0, [r9, r0]
c0de7024:	0949      	lsrs	r1, r1, #5
c0de7026:	7001      	strb	r1, [r0, #0]
c0de7028:	f000 fe1a 	bl	c0de7c60 <os_lib_end>
c0de702c:	20ff      	movs	r0, #255	@ 0xff
c0de702e:	f000 fe33 	bl	c0de7c98 <os_sched_exit>
c0de7032:	bf00      	nop
c0de7034:	00000694 	.word	0x00000694
c0de7038:	00000b5c 	.word	0x00000b5c
c0de703c:	00000b5d 	.word	0x00000b5d
c0de7040:	00000b60 	.word	0x00000b60

c0de7044 <OUTLINED_FUNCTION_0>:
c0de7044:	eb09 000a 	add.w	r0, r9, sl
c0de7048:	b289      	uxth	r1, r1
c0de704a:	f7fc bdbd 	b.w	c0de3bc8 <io_legacy_apdu_tx>

c0de704e <app_exit>:
c0de704e:	20ff      	movs	r0, #255	@ 0xff
c0de7050:	f000 fe22 	bl	c0de7c98 <os_sched_exit>

c0de7054 <common_app_init>:
c0de7054:	b580      	push	{r7, lr}
c0de7056:	f000 fa4f 	bl	c0de74f8 <nbgl_objInit>
c0de705a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de705e:	f7fc bea3 	b.w	c0de3da8 <io_seproxyhal_init>
	...

c0de7064 <standalone_app_main>:
c0de7064:	b5b0      	push	{r4, r5, r7, lr}
c0de7066:	b08c      	sub	sp, #48	@ 0x30
c0de7068:	4816      	ldr	r0, [pc, #88]	@ (c0de70c4 <standalone_app_main+0x60>)
c0de706a:	2500      	movs	r5, #0
c0de706c:	466c      	mov	r4, sp
c0de706e:	f809 5000 	strb.w	r5, [r9, r0]
c0de7072:	4815      	ldr	r0, [pc, #84]	@ (c0de70c8 <standalone_app_main+0x64>)
c0de7074:	f849 5000 	str.w	r5, [r9, r0]
c0de7078:	4814      	ldr	r0, [pc, #80]	@ (c0de70cc <standalone_app_main+0x68>)
c0de707a:	f809 5000 	strb.w	r5, [r9, r0]
c0de707e:	4620      	mov	r0, r4
c0de7080:	f000 ff94 	bl	c0de7fac <setjmp>
c0de7084:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de7088:	0400      	lsls	r0, r0, #16
c0de708a:	d108      	bne.n	c0de709e <standalone_app_main+0x3a>
c0de708c:	4668      	mov	r0, sp
c0de708e:	f000 fe41 	bl	c0de7d14 <try_context_set>
c0de7092:	900a      	str	r0, [sp, #40]	@ 0x28
c0de7094:	f7ff ffde 	bl	c0de7054 <common_app_init>
c0de7098:	f7f9 f994 	bl	c0de03c4 <app_main>
c0de709c:	e004      	b.n	c0de70a8 <standalone_app_main+0x44>
c0de709e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de70a0:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de70a4:	f000 fe36 	bl	c0de7d14 <try_context_set>
c0de70a8:	f000 fe2c 	bl	c0de7d04 <try_context_get>
c0de70ac:	42a0      	cmp	r0, r4
c0de70ae:	d102      	bne.n	c0de70b6 <standalone_app_main+0x52>
c0de70b0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de70b2:	f000 fe2f 	bl	c0de7d14 <try_context_set>
c0de70b6:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de70ba:	b908      	cbnz	r0, c0de70c0 <standalone_app_main+0x5c>
c0de70bc:	f7ff ffc7 	bl	c0de704e <app_exit>
c0de70c0:	f000 fa7f 	bl	c0de75c2 <os_longjmp>
c0de70c4:	00000b5c 	.word	0x00000b5c
c0de70c8:	00000b60 	.word	0x00000b60
c0de70cc:	00000b5d 	.word	0x00000b5d

c0de70d0 <library_app_main>:
c0de70d0:	b5b0      	push	{r4, r5, r7, lr}
c0de70d2:	b08c      	sub	sp, #48	@ 0x30
c0de70d4:	466c      	mov	r4, sp
c0de70d6:	4605      	mov	r5, r0
c0de70d8:	4620      	mov	r0, r4
c0de70da:	f000 ff67 	bl	c0de7fac <setjmp>
c0de70de:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de70e2:	0400      	lsls	r0, r0, #16
c0de70e4:	d124      	bne.n	c0de7130 <library_app_main+0x60>
c0de70e6:	4668      	mov	r0, sp
c0de70e8:	f000 fe14 	bl	c0de7d14 <try_context_set>
c0de70ec:	900a      	str	r0, [sp, #40]	@ 0x28
c0de70ee:	6868      	ldr	r0, [r5, #4]
c0de70f0:	2804      	cmp	r0, #4
c0de70f2:	d024      	beq.n	c0de713e <library_app_main+0x6e>
c0de70f4:	2803      	cmp	r0, #3
c0de70f6:	d026      	beq.n	c0de7146 <library_app_main+0x76>
c0de70f8:	2802      	cmp	r0, #2
c0de70fa:	d127      	bne.n	c0de714c <library_app_main+0x7c>
c0de70fc:	68e8      	ldr	r0, [r5, #12]
c0de70fe:	f7fa fc99 	bl	c0de1a34 <swap_copy_transaction_parameters>
c0de7102:	b318      	cbz	r0, c0de714c <library_app_main+0x7c>
c0de7104:	4816      	ldr	r0, [pc, #88]	@ (c0de7160 <library_app_main+0x90>)
c0de7106:	2201      	movs	r2, #1
c0de7108:	f809 2000 	strb.w	r2, [r9, r0]
c0de710c:	4815      	ldr	r0, [pc, #84]	@ (c0de7164 <library_app_main+0x94>)
c0de710e:	2200      	movs	r2, #0
c0de7110:	f809 2000 	strb.w	r2, [r9, r0]
c0de7114:	4a14      	ldr	r2, [pc, #80]	@ (c0de7168 <library_app_main+0x98>)
c0de7116:	68e8      	ldr	r0, [r5, #12]
c0de7118:	3020      	adds	r0, #32
c0de711a:	f849 0002 	str.w	r0, [r9, r2]
c0de711e:	f7ff ff99 	bl	c0de7054 <common_app_init>
c0de7122:	4812      	ldr	r0, [pc, #72]	@ (c0de716c <library_app_main+0x9c>)
c0de7124:	4478      	add	r0, pc
c0de7126:	f7fe fbc9 	bl	c0de58bc <nbgl_useCaseSpinner>
c0de712a:	f7f9 f94b 	bl	c0de03c4 <app_main>
c0de712e:	e00d      	b.n	c0de714c <library_app_main+0x7c>
c0de7130:	2000      	movs	r0, #0
c0de7132:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de7136:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de7138:	f000 fdec 	bl	c0de7d14 <try_context_set>
c0de713c:	e006      	b.n	c0de714c <library_app_main+0x7c>
c0de713e:	68e8      	ldr	r0, [r5, #12]
c0de7140:	f7fa fc4c 	bl	c0de19dc <swap_handle_get_printable_amount>
c0de7144:	e002      	b.n	c0de714c <library_app_main+0x7c>
c0de7146:	68e8      	ldr	r0, [r5, #12]
c0de7148:	f7fa fbed 	bl	c0de1926 <swap_handle_check_address>
c0de714c:	f000 fdda 	bl	c0de7d04 <try_context_get>
c0de7150:	42a0      	cmp	r0, r4
c0de7152:	d102      	bne.n	c0de715a <library_app_main+0x8a>
c0de7154:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de7156:	f000 fddd 	bl	c0de7d14 <try_context_set>
c0de715a:	f000 fd81 	bl	c0de7c60 <os_lib_end>
c0de715e:	bf00      	nop
c0de7160:	00000b5c 	.word	0x00000b5c
c0de7164:	00000b5d 	.word	0x00000b5d
c0de7168:	00000b60 	.word	0x00000b60
c0de716c:	00001155 	.word	0x00001155

c0de7170 <apdu_parser>:
c0de7170:	2a04      	cmp	r2, #4
c0de7172:	d316      	bcc.n	c0de71a2 <apdu_parser+0x32>
c0de7174:	d102      	bne.n	c0de717c <apdu_parser+0xc>
c0de7176:	2300      	movs	r3, #0
c0de7178:	7103      	strb	r3, [r0, #4]
c0de717a:	e004      	b.n	c0de7186 <apdu_parser+0x16>
c0de717c:	790b      	ldrb	r3, [r1, #4]
c0de717e:	3a05      	subs	r2, #5
c0de7180:	429a      	cmp	r2, r3
c0de7182:	7103      	strb	r3, [r0, #4]
c0de7184:	d10d      	bne.n	c0de71a2 <apdu_parser+0x32>
c0de7186:	780a      	ldrb	r2, [r1, #0]
c0de7188:	2b00      	cmp	r3, #0
c0de718a:	7002      	strb	r2, [r0, #0]
c0de718c:	784a      	ldrb	r2, [r1, #1]
c0de718e:	7042      	strb	r2, [r0, #1]
c0de7190:	788a      	ldrb	r2, [r1, #2]
c0de7192:	7082      	strb	r2, [r0, #2]
c0de7194:	bf18      	it	ne
c0de7196:	1d4b      	addne	r3, r1, #5
c0de7198:	78c9      	ldrb	r1, [r1, #3]
c0de719a:	6083      	str	r3, [r0, #8]
c0de719c:	70c1      	strb	r1, [r0, #3]
c0de719e:	2001      	movs	r0, #1
c0de71a0:	4770      	bx	lr
c0de71a2:	2000      	movs	r0, #0
c0de71a4:	4770      	bx	lr

c0de71a6 <read_u32_be>:
c0de71a6:	5c42      	ldrb	r2, [r0, r1]
c0de71a8:	4408      	add	r0, r1
c0de71aa:	7841      	ldrb	r1, [r0, #1]
c0de71ac:	7883      	ldrb	r3, [r0, #2]
c0de71ae:	78c0      	ldrb	r0, [r0, #3]
c0de71b0:	0409      	lsls	r1, r1, #16
c0de71b2:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de71b6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de71ba:	4408      	add	r0, r1
c0de71bc:	4770      	bx	lr

c0de71be <read_u64_be>:
c0de71be:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de71c0:	1842      	adds	r2, r0, r1
c0de71c2:	5c40      	ldrb	r0, [r0, r1]
c0de71c4:	7917      	ldrb	r7, [r2, #4]
c0de71c6:	7953      	ldrb	r3, [r2, #5]
c0de71c8:	7854      	ldrb	r4, [r2, #1]
c0de71ca:	7895      	ldrb	r5, [r2, #2]
c0de71cc:	78d6      	ldrb	r6, [r2, #3]
c0de71ce:	063f      	lsls	r7, r7, #24
c0de71d0:	0421      	lsls	r1, r4, #16
c0de71d2:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de71d6:	7997      	ldrb	r7, [r2, #6]
c0de71d8:	79d2      	ldrb	r2, [r2, #7]
c0de71da:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de71de:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de71e2:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de71e6:	1981      	adds	r1, r0, r6
c0de71e8:	441a      	add	r2, r3
c0de71ea:	4610      	mov	r0, r2
c0de71ec:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de71ee <read_u16_le>:
c0de71ee:	5c42      	ldrb	r2, [r0, r1]
c0de71f0:	4408      	add	r0, r1
c0de71f2:	7840      	ldrb	r0, [r0, #1]
c0de71f4:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de71f8:	b280      	uxth	r0, r0
c0de71fa:	4770      	bx	lr

c0de71fc <read_u32_le>:
c0de71fc:	5c42      	ldrb	r2, [r0, r1]
c0de71fe:	4408      	add	r0, r1
c0de7200:	7841      	ldrb	r1, [r0, #1]
c0de7202:	7883      	ldrb	r3, [r0, #2]
c0de7204:	78c0      	ldrb	r0, [r0, #3]
c0de7206:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de720a:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de720e:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de7212:	4770      	bx	lr

c0de7214 <read_u64_le>:
c0de7214:	b5b0      	push	{r4, r5, r7, lr}
c0de7216:	5c42      	ldrb	r2, [r0, r1]
c0de7218:	4401      	add	r1, r0
c0de721a:	7848      	ldrb	r0, [r1, #1]
c0de721c:	788b      	ldrb	r3, [r1, #2]
c0de721e:	790d      	ldrb	r5, [r1, #4]
c0de7220:	78cc      	ldrb	r4, [r1, #3]
c0de7222:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7226:	794a      	ldrb	r2, [r1, #5]
c0de7228:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de722c:	798b      	ldrb	r3, [r1, #6]
c0de722e:	79c9      	ldrb	r1, [r1, #7]
c0de7230:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de7234:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de7238:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de723c:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de7240:	bdb0      	pop	{r4, r5, r7, pc}

c0de7242 <send_swap_error_simple>:
c0de7242:	b082      	sub	sp, #8
c0de7244:	2300      	movs	r3, #0
c0de7246:	9300      	str	r3, [sp, #0]
c0de7248:	2300      	movs	r3, #0
c0de724a:	f000 f801 	bl	c0de7250 <send_swap_error_with_buffers>
	...

c0de7250 <send_swap_error_with_buffers>:
c0de7250:	b09c      	sub	sp, #112	@ 0x70
c0de7252:	4604      	mov	r4, r0
c0de7254:	4815      	ldr	r0, [pc, #84]	@ (c0de72ac <send_swap_error_with_buffers+0x5c>)
c0de7256:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de725a:	b320      	cbz	r0, c0de72a6 <send_swap_error_with_buffers+0x56>
c0de725c:	4814      	ldr	r0, [pc, #80]	@ (c0de72b0 <send_swap_error_with_buffers+0x60>)
c0de725e:	461d      	mov	r5, r3
c0de7260:	2301      	movs	r3, #1
c0de7262:	466e      	mov	r6, sp
c0de7264:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de7266:	f809 3000 	strb.w	r3, [r9, r0]
c0de726a:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de726e:	f106 0008 	add.w	r0, r6, #8
c0de7272:	2164      	movs	r1, #100	@ 0x64
c0de7274:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de7278:	f000 fe54 	bl	c0de7f24 <__aeabi_memclr>
c0de727c:	2002      	movs	r0, #2
c0de727e:	4629      	mov	r1, r5
c0de7280:	9001      	str	r0, [sp, #4]
c0de7282:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de7286:	2f08      	cmp	r7, #8
c0de7288:	9000      	str	r0, [sp, #0]
c0de728a:	bf28      	it	cs
c0de728c:	2708      	movcs	r7, #8
c0de728e:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de7292:	0082      	lsls	r2, r0, #2
c0de7294:	f106 000c 	add.w	r0, r6, #12
c0de7298:	f000 fe3a 	bl	c0de7f10 <__aeabi_memcpy>
c0de729c:	1c79      	adds	r1, r7, #1
c0de729e:	4630      	mov	r0, r6
c0de72a0:	4622      	mov	r2, r4
c0de72a2:	f7ff fe7b 	bl	c0de6f9c <io_send_response_buffers>
c0de72a6:	2000      	movs	r0, #0
c0de72a8:	f000 fcf6 	bl	c0de7c98 <os_sched_exit>
c0de72ac:	00000b5c 	.word	0x00000b5c
c0de72b0:	00000b5d 	.word	0x00000b5d

c0de72b4 <swap_str_to_u64>:
c0de72b4:	2908      	cmp	r1, #8
c0de72b6:	d812      	bhi.n	c0de72de <swap_str_to_u64+0x2a>
c0de72b8:	b570      	push	{r4, r5, r6, lr}
c0de72ba:	2500      	movs	r5, #0
c0de72bc:	460b      	mov	r3, r1
c0de72be:	2400      	movs	r4, #0
c0de72c0:	b14b      	cbz	r3, c0de72d6 <swap_str_to_u64+0x22>
c0de72c2:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de72c6:	0224      	lsls	r4, r4, #8
c0de72c8:	3b01      	subs	r3, #1
c0de72ca:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de72ce:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de72d2:	4635      	mov	r5, r6
c0de72d4:	e7f4      	b.n	c0de72c0 <swap_str_to_u64+0xc>
c0de72d6:	e9c2 5400 	strd	r5, r4, [r2]
c0de72da:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de72de:	2000      	movs	r0, #0
c0de72e0:	2909      	cmp	r1, #9
c0de72e2:	bf38      	it	cc
c0de72e4:	2001      	movcc	r0, #1
c0de72e6:	4770      	bx	lr

c0de72e8 <varint_read>:
c0de72e8:	b510      	push	{r4, lr}
c0de72ea:	b1d9      	cbz	r1, c0de7324 <varint_read+0x3c>
c0de72ec:	4614      	mov	r4, r2
c0de72ee:	4602      	mov	r2, r0
c0de72f0:	7800      	ldrb	r0, [r0, #0]
c0de72f2:	28ff      	cmp	r0, #255	@ 0xff
c0de72f4:	d00c      	beq.n	c0de7310 <varint_read+0x28>
c0de72f6:	28fe      	cmp	r0, #254	@ 0xfe
c0de72f8:	d012      	beq.n	c0de7320 <varint_read+0x38>
c0de72fa:	28fd      	cmp	r0, #253	@ 0xfd
c0de72fc:	d115      	bne.n	c0de732a <varint_read+0x42>
c0de72fe:	2903      	cmp	r1, #3
c0de7300:	d310      	bcc.n	c0de7324 <varint_read+0x3c>
c0de7302:	4610      	mov	r0, r2
c0de7304:	2101      	movs	r1, #1
c0de7306:	f7ff ff72 	bl	c0de71ee <read_u16_le>
c0de730a:	2100      	movs	r1, #0
c0de730c:	2203      	movs	r2, #3
c0de730e:	e015      	b.n	c0de733c <varint_read+0x54>
c0de7310:	2909      	cmp	r1, #9
c0de7312:	d307      	bcc.n	c0de7324 <varint_read+0x3c>
c0de7314:	4610      	mov	r0, r2
c0de7316:	2101      	movs	r1, #1
c0de7318:	f7ff ff7c 	bl	c0de7214 <read_u64_le>
c0de731c:	2209      	movs	r2, #9
c0de731e:	e00d      	b.n	c0de733c <varint_read+0x54>
c0de7320:	2905      	cmp	r1, #5
c0de7322:	d205      	bcs.n	c0de7330 <varint_read+0x48>
c0de7324:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de7328:	e00a      	b.n	c0de7340 <varint_read+0x58>
c0de732a:	2100      	movs	r1, #0
c0de732c:	2201      	movs	r2, #1
c0de732e:	e005      	b.n	c0de733c <varint_read+0x54>
c0de7330:	4610      	mov	r0, r2
c0de7332:	2101      	movs	r1, #1
c0de7334:	f7ff ff62 	bl	c0de71fc <read_u32_le>
c0de7338:	2100      	movs	r1, #0
c0de733a:	2205      	movs	r2, #5
c0de733c:	e9c4 0100 	strd	r0, r1, [r4]
c0de7340:	4610      	mov	r0, r2
c0de7342:	bd10      	pop	{r4, pc}

c0de7344 <write_u16_be>:
c0de7344:	0a13      	lsrs	r3, r2, #8
c0de7346:	5443      	strb	r3, [r0, r1]
c0de7348:	4408      	add	r0, r1
c0de734a:	7042      	strb	r2, [r0, #1]
c0de734c:	4770      	bx	lr
	...

c0de7350 <ux_process_button_event>:
c0de7350:	b5b0      	push	{r4, r5, r7, lr}
c0de7352:	4604      	mov	r4, r0
c0de7354:	2001      	movs	r0, #1
c0de7356:	f000 f815 	bl	c0de7384 <ux_forward_event>
c0de735a:	4605      	mov	r5, r0
c0de735c:	f000 f8d1 	bl	c0de7502 <nbgl_objAllowDrawing>
c0de7360:	b165      	cbz	r5, c0de737c <ux_process_button_event+0x2c>
c0de7362:	4807      	ldr	r0, [pc, #28]	@ (c0de7380 <ux_process_button_event+0x30>)
c0de7364:	2164      	movs	r1, #100	@ 0x64
c0de7366:	f859 0000 	ldr.w	r0, [r9, r0]
c0de736a:	4341      	muls	r1, r0
c0de736c:	78e0      	ldrb	r0, [r4, #3]
c0de736e:	0840      	lsrs	r0, r0, #1
c0de7370:	f000 f917 	bl	c0de75a2 <nbgl_buttonsHandler>
c0de7374:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7378:	f000 b8b9 	b.w	c0de74ee <nbgl_refresh>
c0de737c:	bdb0      	pop	{r4, r5, r7, pc}
c0de737e:	bf00      	nop
c0de7380:	00000b64 	.word	0x00000b64

c0de7384 <ux_forward_event>:
c0de7384:	b5b0      	push	{r4, r5, r7, lr}
c0de7386:	4604      	mov	r4, r0
c0de7388:	4812      	ldr	r0, [pc, #72]	@ (c0de73d4 <ux_forward_event+0x50>)
c0de738a:	2101      	movs	r1, #1
c0de738c:	f809 1000 	strb.w	r1, [r9, r0]
c0de7390:	eb09 0500 	add.w	r5, r9, r0
c0de7394:	2000      	movs	r0, #0
c0de7396:	6068      	str	r0, [r5, #4]
c0de7398:	4628      	mov	r0, r5
c0de739a:	f000 fc57 	bl	c0de7c4c <os_ux>
c0de739e:	2004      	movs	r0, #4
c0de73a0:	f000 fcc2 	bl	c0de7d28 <os_sched_last_status>
c0de73a4:	2869      	cmp	r0, #105	@ 0x69
c0de73a6:	6068      	str	r0, [r5, #4]
c0de73a8:	d108      	bne.n	c0de73bc <ux_forward_event+0x38>
c0de73aa:	2001      	movs	r0, #1
c0de73ac:	f000 f8a9 	bl	c0de7502 <nbgl_objAllowDrawing>
c0de73b0:	f000 f8b6 	bl	c0de7520 <nbgl_screenRedraw>
c0de73b4:	f000 f89b 	bl	c0de74ee <nbgl_refresh>
c0de73b8:	2000      	movs	r0, #0
c0de73ba:	bdb0      	pop	{r4, r5, r7, pc}
c0de73bc:	b144      	cbz	r4, c0de73d0 <ux_forward_event+0x4c>
c0de73be:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de73c2:	bf18      	it	ne
c0de73c4:	2101      	movne	r1, #1
c0de73c6:	2800      	cmp	r0, #0
c0de73c8:	bf18      	it	ne
c0de73ca:	2001      	movne	r0, #1
c0de73cc:	4008      	ands	r0, r1
c0de73ce:	bdb0      	pop	{r4, r5, r7, pc}
c0de73d0:	2001      	movs	r0, #1
c0de73d2:	bdb0      	pop	{r4, r5, r7, pc}
c0de73d4:	00000b50 	.word	0x00000b50

c0de73d8 <ux_process_ticker_event>:
c0de73d8:	b510      	push	{r4, lr}
c0de73da:	480a      	ldr	r0, [pc, #40]	@ (c0de7404 <ux_process_ticker_event+0x2c>)
c0de73dc:	f859 1000 	ldr.w	r1, [r9, r0]
c0de73e0:	3101      	adds	r1, #1
c0de73e2:	f849 1000 	str.w	r1, [r9, r0]
c0de73e6:	2001      	movs	r0, #1
c0de73e8:	f7ff ffcc 	bl	c0de7384 <ux_forward_event>
c0de73ec:	4604      	mov	r4, r0
c0de73ee:	f000 f888 	bl	c0de7502 <nbgl_objAllowDrawing>
c0de73f2:	b134      	cbz	r4, c0de7402 <ux_process_ticker_event+0x2a>
c0de73f4:	2064      	movs	r0, #100	@ 0x64
c0de73f6:	f000 f89d 	bl	c0de7534 <nbgl_screenHandler>
c0de73fa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de73fe:	f000 b876 	b.w	c0de74ee <nbgl_refresh>
c0de7402:	bd10      	pop	{r4, pc}
c0de7404:	00000b64 	.word	0x00000b64

c0de7408 <ux_process_default_event>:
c0de7408:	2000      	movs	r0, #0
c0de740a:	f7ff bfbb 	b.w	c0de7384 <ux_forward_event>

c0de740e <hash_iovec_ex>:
c0de740e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7412:	468a      	mov	sl, r1
c0de7414:	4611      	mov	r1, r2
c0de7416:	461a      	mov	r2, r3
c0de7418:	4605      	mov	r5, r0
c0de741a:	f000 f84d 	bl	c0de74b8 <cx_hash_init_ex>
c0de741e:	4607      	mov	r7, r0
c0de7420:	b9a8      	cbnz	r0, c0de744e <hash_iovec_ex+0x40>
c0de7422:	f10d 0820 	add.w	r8, sp, #32
c0de7426:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de742a:	1d04      	adds	r4, r0, #4
c0de742c:	b156      	cbz	r6, c0de7444 <hash_iovec_ex+0x36>
c0de742e:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de7432:	f854 2b08 	ldr.w	r2, [r4], #8
c0de7436:	4628      	mov	r0, r5
c0de7438:	f000 f843 	bl	c0de74c2 <cx_hash_update>
c0de743c:	3e01      	subs	r6, #1
c0de743e:	2800      	cmp	r0, #0
c0de7440:	d0f4      	beq.n	c0de742c <hash_iovec_ex+0x1e>
c0de7442:	e003      	b.n	c0de744c <hash_iovec_ex+0x3e>
c0de7444:	4628      	mov	r0, r5
c0de7446:	4641      	mov	r1, r8
c0de7448:	f000 f831 	bl	c0de74ae <cx_hash_final>
c0de744c:	4607      	mov	r7, r0
c0de744e:	4628      	mov	r0, r5
c0de7450:	4651      	mov	r1, sl
c0de7452:	f000 fd75 	bl	c0de7f40 <explicit_bzero>
c0de7456:	4638      	mov	r0, r7
c0de7458:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de745c <cx_keccak_256_hash_iovec>:
c0de745c:	b580      	push	{r7, lr}
c0de745e:	b0ee      	sub	sp, #440	@ 0x1b8
c0de7460:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de7464:	a804      	add	r0, sp, #16
c0de7466:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de746a:	2206      	movs	r2, #6
c0de746c:	2320      	movs	r3, #32
c0de746e:	f7ff ffce 	bl	c0de740e <hash_iovec_ex>
c0de7472:	b06e      	add	sp, #440	@ 0x1b8
c0de7474:	bd80      	pop	{r7, pc}

c0de7476 <cx_blake2b_512_hash_iovec>:
c0de7476:	b580      	push	{r7, lr}
c0de7478:	b0c4      	sub	sp, #272	@ 0x110
c0de747a:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de747e:	a804      	add	r0, sp, #16
c0de7480:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de7484:	2209      	movs	r2, #9
c0de7486:	2340      	movs	r3, #64	@ 0x40
c0de7488:	f7ff ffc1 	bl	c0de740e <hash_iovec_ex>
c0de748c:	b044      	add	sp, #272	@ 0x110
c0de748e:	bd80      	pop	{r7, pc}

c0de7490 <cx_ecdsa_sign_no_throw>:
c0de7490:	b403      	push	{r0, r1}
c0de7492:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de7496:	f000 b823 	b.w	c0de74e0 <cx_trampoline_helper>

c0de749a <cx_ecfp_generate_pair2_no_throw>:
c0de749a:	b403      	push	{r0, r1}
c0de749c:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de74a0:	f000 b81e 	b.w	c0de74e0 <cx_trampoline_helper>

c0de74a4 <cx_ecfp_init_private_key_no_throw>:
c0de74a4:	b403      	push	{r0, r1}
c0de74a6:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de74aa:	f000 b819 	b.w	c0de74e0 <cx_trampoline_helper>

c0de74ae <cx_hash_final>:
c0de74ae:	b403      	push	{r0, r1}
c0de74b0:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de74b4:	f000 b814 	b.w	c0de74e0 <cx_trampoline_helper>

c0de74b8 <cx_hash_init_ex>:
c0de74b8:	b403      	push	{r0, r1}
c0de74ba:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de74be:	f000 b80f 	b.w	c0de74e0 <cx_trampoline_helper>

c0de74c2 <cx_hash_update>:
c0de74c2:	b403      	push	{r0, r1}
c0de74c4:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de74c8:	f000 b80a 	b.w	c0de74e0 <cx_trampoline_helper>

c0de74cc <cx_rng_no_throw>:
c0de74cc:	b403      	push	{r0, r1}
c0de74ce:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de74d2:	f000 b805 	b.w	c0de74e0 <cx_trampoline_helper>
	...

c0de74d8 <cx_aes_siv_reset>:
c0de74d8:	b403      	push	{r0, r1}
c0de74da:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de74de:	e7ff      	b.n	c0de74e0 <cx_trampoline_helper>

c0de74e0 <cx_trampoline_helper>:
c0de74e0:	4900      	ldr	r1, [pc, #0]	@ (c0de74e4 <cx_trampoline_helper+0x4>)
c0de74e2:	4708      	bx	r1
c0de74e4:	00808001 	.word	0x00808001

c0de74e8 <assert_exit>:
c0de74e8:	20ff      	movs	r0, #255	@ 0xff
c0de74ea:	f000 fbd5 	bl	c0de7c98 <os_sched_exit>

c0de74ee <nbgl_refresh>:
c0de74ee:	b403      	push	{r0, r1}
c0de74f0:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de74f4:	f000 b85e 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de74f8 <nbgl_objInit>:
c0de74f8:	b403      	push	{r0, r1}
c0de74fa:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de74fe:	f000 b859 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7502 <nbgl_objAllowDrawing>:
c0de7502:	b403      	push	{r0, r1}
c0de7504:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de7508:	f000 b854 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de750c <nbgl_screenSet>:
c0de750c:	b403      	push	{r0, r1}
c0de750e:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de7512:	f000 b84f 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7516 <nbgl_screenPush>:
c0de7516:	b403      	push	{r0, r1}
c0de7518:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de751c:	f000 b84a 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7520 <nbgl_screenRedraw>:
c0de7520:	b403      	push	{r0, r1}
c0de7522:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de7526:	f000 b845 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de752a <nbgl_screenPop>:
c0de752a:	b403      	push	{r0, r1}
c0de752c:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de7530:	f000 b840 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7534 <nbgl_screenHandler>:
c0de7534:	b403      	push	{r0, r1}
c0de7536:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de753a:	f000 b83b 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de753e <nbgl_objPoolGet>:
c0de753e:	b403      	push	{r0, r1}
c0de7540:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de7544:	f000 b836 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7548 <nbgl_containerPoolGet>:
c0de7548:	b403      	push	{r0, r1}
c0de754a:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de754e:	f000 b831 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7552 <nbgl_getFont>:
c0de7552:	b403      	push	{r0, r1}
c0de7554:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de7558:	f000 b82c 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de755c <nbgl_getFontLineHeight>:
c0de755c:	b403      	push	{r0, r1}
c0de755e:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de7562:	f000 b827 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7566 <nbgl_getTextMaxLenAndWidth>:
c0de7566:	b403      	push	{r0, r1}
c0de7568:	f04f 00b3 	mov.w	r0, #179	@ 0xb3
c0de756c:	f000 b822 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7570 <nbgl_getTextNbLinesInWidth>:
c0de7570:	b403      	push	{r0, r1}
c0de7572:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de7576:	f000 b81d 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de757a <nbgl_getTextNbPagesInWidth>:
c0de757a:	b403      	push	{r0, r1}
c0de757c:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de7580:	f000 b818 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7584 <nbgl_getTextWidth>:
c0de7584:	b403      	push	{r0, r1}
c0de7586:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de758a:	f000 b813 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de758e <nbgl_getTextMaxLenInNbLines>:
c0de758e:	b403      	push	{r0, r1}
c0de7590:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de7594:	f000 b80e 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de7598 <nbgl_textReduceOnNbLines>:
c0de7598:	b403      	push	{r0, r1}
c0de759a:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de759e:	f000 b809 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de75a2 <nbgl_buttonsHandler>:
c0de75a2:	b403      	push	{r0, r1}
c0de75a4:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de75a8:	f000 b804 	b.w	c0de75b4 <nbgl_trampoline_helper>

c0de75ac <pic_init>:
c0de75ac:	b403      	push	{r0, r1}
c0de75ae:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de75b2:	e7ff      	b.n	c0de75b4 <nbgl_trampoline_helper>

c0de75b4 <nbgl_trampoline_helper>:
c0de75b4:	4900      	ldr	r1, [pc, #0]	@ (c0de75b8 <nbgl_trampoline_helper+0x4>)
c0de75b6:	4708      	bx	r1
c0de75b8:	00808001 	.word	0x00808001

c0de75bc <os_boot>:
c0de75bc:	2000      	movs	r0, #0
c0de75be:	f000 bba9 	b.w	c0de7d14 <try_context_set>

c0de75c2 <os_longjmp>:
c0de75c2:	4604      	mov	r4, r0
c0de75c4:	f000 fb9e 	bl	c0de7d04 <try_context_get>
c0de75c8:	4621      	mov	r1, r4
c0de75ca:	f000 fcf5 	bl	c0de7fb8 <longjmp>
	...

c0de75d0 <os_explicit_zero_BSS_segment>:
c0de75d0:	4803      	ldr	r0, [pc, #12]	@ (c0de75e0 <os_explicit_zero_BSS_segment+0x10>)
c0de75d2:	4904      	ldr	r1, [pc, #16]	@ (c0de75e4 <os_explicit_zero_BSS_segment+0x14>)
c0de75d4:	4448      	add	r0, r9
c0de75d6:	4449      	add	r1, r9
c0de75d8:	1a09      	subs	r1, r1, r0
c0de75da:	f000 bcb1 	b.w	c0de7f40 <explicit_bzero>
c0de75de:	bf00      	nop
c0de75e0:	00000000 	.word	0x00000000
c0de75e4:	00000b68 	.word	0x00000b68

c0de75e8 <snprintf>:
c0de75e8:	b081      	sub	sp, #4
c0de75ea:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de75ee:	b087      	sub	sp, #28
c0de75f0:	2800      	cmp	r0, #0
c0de75f2:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de75f4:	f000 817a 	beq.w	c0de78ec <snprintf+0x304>
c0de75f8:	460d      	mov	r5, r1
c0de75fa:	2900      	cmp	r1, #0
c0de75fc:	f000 8176 	beq.w	c0de78ec <snprintf+0x304>
c0de7600:	4629      	mov	r1, r5
c0de7602:	4616      	mov	r6, r2
c0de7604:	4604      	mov	r4, r0
c0de7606:	f000 fc8d 	bl	c0de7f24 <__aeabi_memclr>
c0de760a:	f1b5 0801 	subs.w	r8, r5, #1
c0de760e:	f000 816d 	beq.w	c0de78ec <snprintf+0x304>
c0de7612:	a80f      	add	r0, sp, #60	@ 0x3c
c0de7614:	9002      	str	r0, [sp, #8]
c0de7616:	7830      	ldrb	r0, [r6, #0]
c0de7618:	2800      	cmp	r0, #0
c0de761a:	f000 8167 	beq.w	c0de78ec <snprintf+0x304>
c0de761e:	2700      	movs	r7, #0
c0de7620:	b128      	cbz	r0, c0de762e <snprintf+0x46>
c0de7622:	2825      	cmp	r0, #37	@ 0x25
c0de7624:	d003      	beq.n	c0de762e <snprintf+0x46>
c0de7626:	19f0      	adds	r0, r6, r7
c0de7628:	3701      	adds	r7, #1
c0de762a:	7840      	ldrb	r0, [r0, #1]
c0de762c:	e7f8      	b.n	c0de7620 <snprintf+0x38>
c0de762e:	4547      	cmp	r7, r8
c0de7630:	bf28      	it	cs
c0de7632:	4647      	movcs	r7, r8
c0de7634:	4620      	mov	r0, r4
c0de7636:	4631      	mov	r1, r6
c0de7638:	463a      	mov	r2, r7
c0de763a:	f000 fc6b 	bl	c0de7f14 <__aeabi_memmove>
c0de763e:	ebb8 0807 	subs.w	r8, r8, r7
c0de7642:	f000 8153 	beq.w	c0de78ec <snprintf+0x304>
c0de7646:	5df1      	ldrb	r1, [r6, r7]
c0de7648:	19f0      	adds	r0, r6, r7
c0de764a:	443c      	add	r4, r7
c0de764c:	4606      	mov	r6, r0
c0de764e:	2925      	cmp	r1, #37	@ 0x25
c0de7650:	d1e1      	bne.n	c0de7616 <snprintf+0x2e>
c0de7652:	1c41      	adds	r1, r0, #1
c0de7654:	f04f 0b00 	mov.w	fp, #0
c0de7658:	f04f 0e20 	mov.w	lr, #32
c0de765c:	2500      	movs	r5, #0
c0de765e:	2600      	movs	r6, #0
c0de7660:	3101      	adds	r1, #1
c0de7662:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de7666:	4632      	mov	r2, r6
c0de7668:	3101      	adds	r1, #1
c0de766a:	2600      	movs	r6, #0
c0de766c:	2b2d      	cmp	r3, #45	@ 0x2d
c0de766e:	d0f8      	beq.n	c0de7662 <snprintf+0x7a>
c0de7670:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de7674:	2e0a      	cmp	r6, #10
c0de7676:	d313      	bcc.n	c0de76a0 <snprintf+0xb8>
c0de7678:	2b25      	cmp	r3, #37	@ 0x25
c0de767a:	d046      	beq.n	c0de770a <snprintf+0x122>
c0de767c:	2b2a      	cmp	r3, #42	@ 0x2a
c0de767e:	d01f      	beq.n	c0de76c0 <snprintf+0xd8>
c0de7680:	2b2e      	cmp	r3, #46	@ 0x2e
c0de7682:	d129      	bne.n	c0de76d8 <snprintf+0xf0>
c0de7684:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de7688:	2a2a      	cmp	r2, #42	@ 0x2a
c0de768a:	d13c      	bne.n	c0de7706 <snprintf+0x11e>
c0de768c:	780a      	ldrb	r2, [r1, #0]
c0de768e:	2a48      	cmp	r2, #72	@ 0x48
c0de7690:	d003      	beq.n	c0de769a <snprintf+0xb2>
c0de7692:	2a73      	cmp	r2, #115	@ 0x73
c0de7694:	d001      	beq.n	c0de769a <snprintf+0xb2>
c0de7696:	2a68      	cmp	r2, #104	@ 0x68
c0de7698:	d135      	bne.n	c0de7706 <snprintf+0x11e>
c0de769a:	9a02      	ldr	r2, [sp, #8]
c0de769c:	2601      	movs	r6, #1
c0de769e:	e017      	b.n	c0de76d0 <snprintf+0xe8>
c0de76a0:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de76a4:	ea56 060b 	orrs.w	r6, r6, fp
c0de76a8:	bf08      	it	eq
c0de76aa:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de76ae:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de76b2:	3901      	subs	r1, #1
c0de76b4:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de76b8:	4616      	mov	r6, r2
c0de76ba:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de76be:	e7cf      	b.n	c0de7660 <snprintf+0x78>
c0de76c0:	460b      	mov	r3, r1
c0de76c2:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de76c6:	2a73      	cmp	r2, #115	@ 0x73
c0de76c8:	d11d      	bne.n	c0de7706 <snprintf+0x11e>
c0de76ca:	9a02      	ldr	r2, [sp, #8]
c0de76cc:	2602      	movs	r6, #2
c0de76ce:	4619      	mov	r1, r3
c0de76d0:	1d13      	adds	r3, r2, #4
c0de76d2:	9302      	str	r3, [sp, #8]
c0de76d4:	6815      	ldr	r5, [r2, #0]
c0de76d6:	e7c3      	b.n	c0de7660 <snprintf+0x78>
c0de76d8:	2b48      	cmp	r3, #72	@ 0x48
c0de76da:	d018      	beq.n	c0de770e <snprintf+0x126>
c0de76dc:	2b58      	cmp	r3, #88	@ 0x58
c0de76de:	d019      	beq.n	c0de7714 <snprintf+0x12c>
c0de76e0:	2b63      	cmp	r3, #99	@ 0x63
c0de76e2:	d020      	beq.n	c0de7726 <snprintf+0x13e>
c0de76e4:	2b64      	cmp	r3, #100	@ 0x64
c0de76e6:	d02a      	beq.n	c0de773e <snprintf+0x156>
c0de76e8:	2b68      	cmp	r3, #104	@ 0x68
c0de76ea:	d036      	beq.n	c0de775a <snprintf+0x172>
c0de76ec:	2b70      	cmp	r3, #112	@ 0x70
c0de76ee:	d006      	beq.n	c0de76fe <snprintf+0x116>
c0de76f0:	2b73      	cmp	r3, #115	@ 0x73
c0de76f2:	d037      	beq.n	c0de7764 <snprintf+0x17c>
c0de76f4:	2b75      	cmp	r3, #117	@ 0x75
c0de76f6:	f000 8081 	beq.w	c0de77fc <snprintf+0x214>
c0de76fa:	2b78      	cmp	r3, #120	@ 0x78
c0de76fc:	d103      	bne.n	c0de7706 <snprintf+0x11e>
c0de76fe:	9400      	str	r4, [sp, #0]
c0de7700:	f04f 0c00 	mov.w	ip, #0
c0de7704:	e009      	b.n	c0de771a <snprintf+0x132>
c0de7706:	1e4e      	subs	r6, r1, #1
c0de7708:	e785      	b.n	c0de7616 <snprintf+0x2e>
c0de770a:	2025      	movs	r0, #37	@ 0x25
c0de770c:	e00f      	b.n	c0de772e <snprintf+0x146>
c0de770e:	487b      	ldr	r0, [pc, #492]	@ (c0de78fc <snprintf+0x314>)
c0de7710:	4478      	add	r0, pc
c0de7712:	e024      	b.n	c0de775e <snprintf+0x176>
c0de7714:	f04f 0c01 	mov.w	ip, #1
c0de7718:	9400      	str	r4, [sp, #0]
c0de771a:	9a02      	ldr	r2, [sp, #8]
c0de771c:	2400      	movs	r4, #0
c0de771e:	1d13      	adds	r3, r2, #4
c0de7720:	9302      	str	r3, [sp, #8]
c0de7722:	2310      	movs	r3, #16
c0de7724:	e072      	b.n	c0de780c <snprintf+0x224>
c0de7726:	9802      	ldr	r0, [sp, #8]
c0de7728:	1d02      	adds	r2, r0, #4
c0de772a:	9202      	str	r2, [sp, #8]
c0de772c:	6800      	ldr	r0, [r0, #0]
c0de772e:	1e4e      	subs	r6, r1, #1
c0de7730:	f804 0b01 	strb.w	r0, [r4], #1
c0de7734:	f1b8 0801 	subs.w	r8, r8, #1
c0de7738:	f47f af6d 	bne.w	c0de7616 <snprintf+0x2e>
c0de773c:	e0d6      	b.n	c0de78ec <snprintf+0x304>
c0de773e:	9a02      	ldr	r2, [sp, #8]
c0de7740:	9400      	str	r4, [sp, #0]
c0de7742:	1d13      	adds	r3, r2, #4
c0de7744:	9302      	str	r3, [sp, #8]
c0de7746:	6813      	ldr	r3, [r2, #0]
c0de7748:	2b00      	cmp	r3, #0
c0de774a:	461a      	mov	r2, r3
c0de774c:	d500      	bpl.n	c0de7750 <snprintf+0x168>
c0de774e:	425a      	negs	r2, r3
c0de7750:	0fdc      	lsrs	r4, r3, #31
c0de7752:	f04f 0c00 	mov.w	ip, #0
c0de7756:	230a      	movs	r3, #10
c0de7758:	e059      	b.n	c0de780e <snprintf+0x226>
c0de775a:	4869      	ldr	r0, [pc, #420]	@ (c0de7900 <snprintf+0x318>)
c0de775c:	4478      	add	r0, pc
c0de775e:	f04f 0c01 	mov.w	ip, #1
c0de7762:	e003      	b.n	c0de776c <snprintf+0x184>
c0de7764:	4864      	ldr	r0, [pc, #400]	@ (c0de78f8 <snprintf+0x310>)
c0de7766:	f04f 0c00 	mov.w	ip, #0
c0de776a:	4478      	add	r0, pc
c0de776c:	9b02      	ldr	r3, [sp, #8]
c0de776e:	b2d2      	uxtb	r2, r2
c0de7770:	1d1e      	adds	r6, r3, #4
c0de7772:	9602      	str	r6, [sp, #8]
c0de7774:	1e4e      	subs	r6, r1, #1
c0de7776:	6819      	ldr	r1, [r3, #0]
c0de7778:	2a02      	cmp	r2, #2
c0de777a:	f000 80a7 	beq.w	c0de78cc <snprintf+0x2e4>
c0de777e:	2a01      	cmp	r2, #1
c0de7780:	d007      	beq.n	c0de7792 <snprintf+0x1aa>
c0de7782:	463d      	mov	r5, r7
c0de7784:	b92a      	cbnz	r2, c0de7792 <snprintf+0x1aa>
c0de7786:	2200      	movs	r2, #0
c0de7788:	5c8b      	ldrb	r3, [r1, r2]
c0de778a:	3201      	adds	r2, #1
c0de778c:	2b00      	cmp	r3, #0
c0de778e:	d1fb      	bne.n	c0de7788 <snprintf+0x1a0>
c0de7790:	1e55      	subs	r5, r2, #1
c0de7792:	f1bc 0f00 	cmp.w	ip, #0
c0de7796:	d016      	beq.n	c0de77c6 <snprintf+0x1de>
c0de7798:	2d00      	cmp	r5, #0
c0de779a:	f43f af3c 	beq.w	c0de7616 <snprintf+0x2e>
c0de779e:	f1b8 0f02 	cmp.w	r8, #2
c0de77a2:	f0c0 80a3 	bcc.w	c0de78ec <snprintf+0x304>
c0de77a6:	780a      	ldrb	r2, [r1, #0]
c0de77a8:	0913      	lsrs	r3, r2, #4
c0de77aa:	f002 020f 	and.w	r2, r2, #15
c0de77ae:	5cc3      	ldrb	r3, [r0, r3]
c0de77b0:	f1b8 0802 	subs.w	r8, r8, #2
c0de77b4:	7023      	strb	r3, [r4, #0]
c0de77b6:	5c82      	ldrb	r2, [r0, r2]
c0de77b8:	7062      	strb	r2, [r4, #1]
c0de77ba:	f000 8097 	beq.w	c0de78ec <snprintf+0x304>
c0de77be:	3101      	adds	r1, #1
c0de77c0:	3d01      	subs	r5, #1
c0de77c2:	3402      	adds	r4, #2
c0de77c4:	e7e8      	b.n	c0de7798 <snprintf+0x1b0>
c0de77c6:	4545      	cmp	r5, r8
c0de77c8:	bf28      	it	cs
c0de77ca:	4645      	movcs	r5, r8
c0de77cc:	4620      	mov	r0, r4
c0de77ce:	462a      	mov	r2, r5
c0de77d0:	f000 fba0 	bl	c0de7f14 <__aeabi_memmove>
c0de77d4:	ebb8 0805 	subs.w	r8, r8, r5
c0de77d8:	f000 8088 	beq.w	c0de78ec <snprintf+0x304>
c0de77dc:	462f      	mov	r7, r5
c0de77de:	442c      	add	r4, r5
c0de77e0:	45bb      	cmp	fp, r7
c0de77e2:	f67f af18 	bls.w	c0de7616 <snprintf+0x2e>
c0de77e6:	ebab 0507 	sub.w	r5, fp, r7
c0de77ea:	4620      	mov	r0, r4
c0de77ec:	4545      	cmp	r5, r8
c0de77ee:	bf28      	it	cs
c0de77f0:	4645      	movcs	r5, r8
c0de77f2:	4629      	mov	r1, r5
c0de77f4:	2220      	movs	r2, #32
c0de77f6:	f000 fb8f 	bl	c0de7f18 <__aeabi_memset>
c0de77fa:	e061      	b.n	c0de78c0 <snprintf+0x2d8>
c0de77fc:	9a02      	ldr	r2, [sp, #8]
c0de77fe:	9400      	str	r4, [sp, #0]
c0de7800:	2400      	movs	r4, #0
c0de7802:	f04f 0c00 	mov.w	ip, #0
c0de7806:	1d13      	adds	r3, r2, #4
c0de7808:	9302      	str	r3, [sp, #8]
c0de780a:	230a      	movs	r3, #10
c0de780c:	6812      	ldr	r2, [r2, #0]
c0de780e:	483d      	ldr	r0, [pc, #244]	@ (c0de7904 <snprintf+0x31c>)
c0de7810:	1e4e      	subs	r6, r1, #1
c0de7812:	f04f 0a01 	mov.w	sl, #1
c0de7816:	4478      	add	r0, pc
c0de7818:	9001      	str	r0, [sp, #4]
c0de781a:	fba3 570a 	umull	r5, r7, r3, sl
c0de781e:	2f00      	cmp	r7, #0
c0de7820:	bf18      	it	ne
c0de7822:	2701      	movne	r7, #1
c0de7824:	4295      	cmp	r5, r2
c0de7826:	d804      	bhi.n	c0de7832 <snprintf+0x24a>
c0de7828:	b91f      	cbnz	r7, c0de7832 <snprintf+0x24a>
c0de782a:	f1ab 0b01 	sub.w	fp, fp, #1
c0de782e:	46aa      	mov	sl, r5
c0de7830:	e7f3      	b.n	c0de781a <snprintf+0x232>
c0de7832:	2c00      	cmp	r4, #0
c0de7834:	4627      	mov	r7, r4
c0de7836:	f04f 0500 	mov.w	r5, #0
c0de783a:	bf18      	it	ne
c0de783c:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de7840:	d00d      	beq.n	c0de785e <snprintf+0x276>
c0de7842:	4660      	mov	r0, ip
c0de7844:	fa5f fc8e 	uxtb.w	ip, lr
c0de7848:	a903      	add	r1, sp, #12
c0de784a:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de784e:	4684      	mov	ip, r0
c0de7850:	d106      	bne.n	c0de7860 <snprintf+0x278>
c0de7852:	202d      	movs	r0, #45	@ 0x2d
c0de7854:	2400      	movs	r4, #0
c0de7856:	2501      	movs	r5, #1
c0de7858:	f88d 000c 	strb.w	r0, [sp, #12]
c0de785c:	e000      	b.n	c0de7860 <snprintf+0x278>
c0de785e:	a903      	add	r1, sp, #12
c0de7860:	eb07 000b 	add.w	r0, r7, fp
c0de7864:	3802      	subs	r0, #2
c0de7866:	280d      	cmp	r0, #13
c0de7868:	d808      	bhi.n	c0de787c <snprintf+0x294>
c0de786a:	f1c7 0701 	rsb	r7, r7, #1
c0de786e:	45bb      	cmp	fp, r7
c0de7870:	d004      	beq.n	c0de787c <snprintf+0x294>
c0de7872:	f801 e005 	strb.w	lr, [r1, r5]
c0de7876:	3701      	adds	r7, #1
c0de7878:	3501      	adds	r5, #1
c0de787a:	e7f8      	b.n	c0de786e <snprintf+0x286>
c0de787c:	9f01      	ldr	r7, [sp, #4]
c0de787e:	b114      	cbz	r4, c0de7886 <snprintf+0x29e>
c0de7880:	202d      	movs	r0, #45	@ 0x2d
c0de7882:	5548      	strb	r0, [r1, r5]
c0de7884:	3501      	adds	r5, #1
c0de7886:	4820      	ldr	r0, [pc, #128]	@ (c0de7908 <snprintf+0x320>)
c0de7888:	f1bc 0f00 	cmp.w	ip, #0
c0de788c:	4478      	add	r0, pc
c0de788e:	bf08      	it	eq
c0de7890:	4638      	moveq	r0, r7
c0de7892:	f1ba 0f00 	cmp.w	sl, #0
c0de7896:	d00b      	beq.n	c0de78b0 <snprintf+0x2c8>
c0de7898:	fbb2 f7fa 	udiv	r7, r2, sl
c0de789c:	fbba faf3 	udiv	sl, sl, r3
c0de78a0:	fbb7 f4f3 	udiv	r4, r7, r3
c0de78a4:	fb04 7413 	mls	r4, r4, r3, r7
c0de78a8:	5d04      	ldrb	r4, [r0, r4]
c0de78aa:	554c      	strb	r4, [r1, r5]
c0de78ac:	3501      	adds	r5, #1
c0de78ae:	e7f0      	b.n	c0de7892 <snprintf+0x2aa>
c0de78b0:	4545      	cmp	r5, r8
c0de78b2:	bf28      	it	cs
c0de78b4:	4645      	movcs	r5, r8
c0de78b6:	9c00      	ldr	r4, [sp, #0]
c0de78b8:	462a      	mov	r2, r5
c0de78ba:	4620      	mov	r0, r4
c0de78bc:	f000 fb2a 	bl	c0de7f14 <__aeabi_memmove>
c0de78c0:	ebb8 0805 	subs.w	r8, r8, r5
c0de78c4:	442c      	add	r4, r5
c0de78c6:	f47f aea6 	bne.w	c0de7616 <snprintf+0x2e>
c0de78ca:	e00f      	b.n	c0de78ec <snprintf+0x304>
c0de78cc:	7808      	ldrb	r0, [r1, #0]
c0de78ce:	2800      	cmp	r0, #0
c0de78d0:	f47f aea1 	bne.w	c0de7616 <snprintf+0x2e>
c0de78d4:	4545      	cmp	r5, r8
c0de78d6:	bf28      	it	cs
c0de78d8:	4645      	movcs	r5, r8
c0de78da:	4620      	mov	r0, r4
c0de78dc:	4629      	mov	r1, r5
c0de78de:	2220      	movs	r2, #32
c0de78e0:	f000 fb1a 	bl	c0de7f18 <__aeabi_memset>
c0de78e4:	ebb8 0805 	subs.w	r8, r8, r5
c0de78e8:	f47f af79 	bne.w	c0de77de <snprintf+0x1f6>
c0de78ec:	2000      	movs	r0, #0
c0de78ee:	b007      	add	sp, #28
c0de78f0:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de78f4:	b001      	add	sp, #4
c0de78f6:	4770      	bx	lr
c0de78f8:	00001d52 	.word	0x00001d52
c0de78fc:	00001dbc 	.word	0x00001dbc
c0de7900:	00001d60 	.word	0x00001d60
c0de7904:	00001ca6 	.word	0x00001ca6
c0de7908:	00001c40 	.word	0x00001c40

c0de790c <pic>:
c0de790c:	4a0a      	ldr	r2, [pc, #40]	@ (c0de7938 <pic+0x2c>)
c0de790e:	4282      	cmp	r2, r0
c0de7910:	490a      	ldr	r1, [pc, #40]	@ (c0de793c <pic+0x30>)
c0de7912:	d806      	bhi.n	c0de7922 <pic+0x16>
c0de7914:	4281      	cmp	r1, r0
c0de7916:	d304      	bcc.n	c0de7922 <pic+0x16>
c0de7918:	b580      	push	{r7, lr}
c0de791a:	f000 f815 	bl	c0de7948 <pic_internal>
c0de791e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7922:	4907      	ldr	r1, [pc, #28]	@ (c0de7940 <pic+0x34>)
c0de7924:	4288      	cmp	r0, r1
c0de7926:	4a07      	ldr	r2, [pc, #28]	@ (c0de7944 <pic+0x38>)
c0de7928:	d304      	bcc.n	c0de7934 <pic+0x28>
c0de792a:	4290      	cmp	r0, r2
c0de792c:	d802      	bhi.n	c0de7934 <pic+0x28>
c0de792e:	1a40      	subs	r0, r0, r1
c0de7930:	4649      	mov	r1, r9
c0de7932:	4408      	add	r0, r1
c0de7934:	4770      	bx	lr
c0de7936:	0000      	movs	r0, r0
c0de7938:	c0de0000 	.word	0xc0de0000
c0de793c:	c0de983f 	.word	0xc0de983f
c0de7940:	da7a0000 	.word	0xda7a0000
c0de7944:	da7aa000 	.word	0xda7aa000

c0de7948 <pic_internal>:
c0de7948:	467a      	mov	r2, pc
c0de794a:	4902      	ldr	r1, [pc, #8]	@ (c0de7954 <pic_internal+0xc>)
c0de794c:	1cc9      	adds	r1, r1, #3
c0de794e:	1a89      	subs	r1, r1, r2
c0de7950:	1a40      	subs	r0, r0, r1
c0de7952:	4770      	bx	lr
c0de7954:	c0de7949 	.word	0xc0de7949

c0de7958 <SVC_Call>:
c0de7958:	df01      	svc	1
c0de795a:	2900      	cmp	r1, #0
c0de795c:	d100      	bne.n	c0de7960 <exception>
c0de795e:	4770      	bx	lr

c0de7960 <exception>:
c0de7960:	4608      	mov	r0, r1
c0de7962:	f7ff fe2e 	bl	c0de75c2 <os_longjmp>
	...

c0de7968 <SVC_cx_call>:
c0de7968:	df01      	svc	1
c0de796a:	4770      	bx	lr

c0de796c <nvm_write>:
c0de796c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de796e:	ab01      	add	r3, sp, #4
c0de7970:	c307      	stmia	r3!, {r0, r1, r2}
c0de7972:	4802      	ldr	r0, [pc, #8]	@ (c0de797c <nvm_write+0x10>)
c0de7974:	a901      	add	r1, sp, #4
c0de7976:	f7ff ffef 	bl	c0de7958 <SVC_Call>
c0de797a:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de797c:	03000003 	.word	0x03000003

c0de7980 <cx_bn_lock>:
c0de7980:	b5e0      	push	{r5, r6, r7, lr}
c0de7982:	e9cd 0100 	strd	r0, r1, [sp]
c0de7986:	4802      	ldr	r0, [pc, #8]	@ (c0de7990 <cx_bn_lock+0x10>)
c0de7988:	4669      	mov	r1, sp
c0de798a:	f7ff ffed 	bl	c0de7968 <SVC_cx_call>
c0de798e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7990:	02000112 	.word	0x02000112

c0de7994 <cx_bn_unlock>:
c0de7994:	b5e0      	push	{r5, r6, r7, lr}
c0de7996:	2000      	movs	r0, #0
c0de7998:	4669      	mov	r1, sp
c0de799a:	9001      	str	r0, [sp, #4]
c0de799c:	20b6      	movs	r0, #182	@ 0xb6
c0de799e:	f7ff ffe3 	bl	c0de7968 <SVC_cx_call>
c0de79a2:	bd8c      	pop	{r2, r3, r7, pc}

c0de79a4 <cx_bn_alloc>:
c0de79a4:	b5e0      	push	{r5, r6, r7, lr}
c0de79a6:	e9cd 0100 	strd	r0, r1, [sp]
c0de79aa:	4802      	ldr	r0, [pc, #8]	@ (c0de79b4 <cx_bn_alloc+0x10>)
c0de79ac:	4669      	mov	r1, sp
c0de79ae:	f7ff ffdb 	bl	c0de7968 <SVC_cx_call>
c0de79b2:	bd8c      	pop	{r2, r3, r7, pc}
c0de79b4:	02000113 	.word	0x02000113

c0de79b8 <cx_bn_alloc_init>:
c0de79b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79ba:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de79be:	4803      	ldr	r0, [pc, #12]	@ (c0de79cc <cx_bn_alloc_init+0x14>)
c0de79c0:	4669      	mov	r1, sp
c0de79c2:	f7ff ffd1 	bl	c0de7968 <SVC_cx_call>
c0de79c6:	b004      	add	sp, #16
c0de79c8:	bd80      	pop	{r7, pc}
c0de79ca:	bf00      	nop
c0de79cc:	04000114 	.word	0x04000114

c0de79d0 <cx_bn_destroy>:
c0de79d0:	b5e0      	push	{r5, r6, r7, lr}
c0de79d2:	f000 f9b5 	bl	c0de7d40 <OUTLINED_FUNCTION_0>
c0de79d6:	4802      	ldr	r0, [pc, #8]	@ (c0de79e0 <cx_bn_destroy+0x10>)
c0de79d8:	4669      	mov	r1, sp
c0de79da:	f7ff ffc5 	bl	c0de7968 <SVC_cx_call>
c0de79de:	bd8c      	pop	{r2, r3, r7, pc}
c0de79e0:	010000bc 	.word	0x010000bc

c0de79e4 <cx_bn_nbytes>:
c0de79e4:	b5e0      	push	{r5, r6, r7, lr}
c0de79e6:	e9cd 0100 	strd	r0, r1, [sp]
c0de79ea:	4802      	ldr	r0, [pc, #8]	@ (c0de79f4 <cx_bn_nbytes+0x10>)
c0de79ec:	4669      	mov	r1, sp
c0de79ee:	f7ff ffbb 	bl	c0de7968 <SVC_cx_call>
c0de79f2:	bd8c      	pop	{r2, r3, r7, pc}
c0de79f4:	0200010d 	.word	0x0200010d

c0de79f8 <cx_bn_init>:
c0de79f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79fa:	ab01      	add	r3, sp, #4
c0de79fc:	c307      	stmia	r3!, {r0, r1, r2}
c0de79fe:	4803      	ldr	r0, [pc, #12]	@ (c0de7a0c <cx_bn_init+0x14>)
c0de7a00:	a901      	add	r1, sp, #4
c0de7a02:	f7ff ffb1 	bl	c0de7968 <SVC_cx_call>
c0de7a06:	b004      	add	sp, #16
c0de7a08:	bd80      	pop	{r7, pc}
c0de7a0a:	bf00      	nop
c0de7a0c:	03000115 	.word	0x03000115

c0de7a10 <cx_bn_copy>:
c0de7a10:	b5e0      	push	{r5, r6, r7, lr}
c0de7a12:	e9cd 0100 	strd	r0, r1, [sp]
c0de7a16:	4802      	ldr	r0, [pc, #8]	@ (c0de7a20 <cx_bn_copy+0x10>)
c0de7a18:	4669      	mov	r1, sp
c0de7a1a:	f7ff ffa5 	bl	c0de7968 <SVC_cx_call>
c0de7a1e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7a20:	020000c0 	.word	0x020000c0

c0de7a24 <cx_bn_set_u32>:
c0de7a24:	b5e0      	push	{r5, r6, r7, lr}
c0de7a26:	e9cd 0100 	strd	r0, r1, [sp]
c0de7a2a:	4802      	ldr	r0, [pc, #8]	@ (c0de7a34 <cx_bn_set_u32+0x10>)
c0de7a2c:	4669      	mov	r1, sp
c0de7a2e:	f7ff ff9b 	bl	c0de7968 <SVC_cx_call>
c0de7a32:	bd8c      	pop	{r2, r3, r7, pc}
c0de7a34:	020000c1 	.word	0x020000c1

c0de7a38 <cx_bn_export>:
c0de7a38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a3a:	ab01      	add	r3, sp, #4
c0de7a3c:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a3e:	4803      	ldr	r0, [pc, #12]	@ (c0de7a4c <cx_bn_export+0x14>)
c0de7a40:	a901      	add	r1, sp, #4
c0de7a42:	f7ff ff91 	bl	c0de7968 <SVC_cx_call>
c0de7a46:	b004      	add	sp, #16
c0de7a48:	bd80      	pop	{r7, pc}
c0de7a4a:	bf00      	nop
c0de7a4c:	030000c3 	.word	0x030000c3

c0de7a50 <cx_bn_cmp>:
c0de7a50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a52:	ab01      	add	r3, sp, #4
c0de7a54:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a56:	4803      	ldr	r0, [pc, #12]	@ (c0de7a64 <cx_bn_cmp+0x14>)
c0de7a58:	a901      	add	r1, sp, #4
c0de7a5a:	f7ff ff85 	bl	c0de7968 <SVC_cx_call>
c0de7a5e:	b004      	add	sp, #16
c0de7a60:	bd80      	pop	{r7, pc}
c0de7a62:	bf00      	nop
c0de7a64:	030000c4 	.word	0x030000c4

c0de7a68 <cx_bn_cmp_u32>:
c0de7a68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a6a:	ab01      	add	r3, sp, #4
c0de7a6c:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a6e:	4803      	ldr	r0, [pc, #12]	@ (c0de7a7c <cx_bn_cmp_u32+0x14>)
c0de7a70:	a901      	add	r1, sp, #4
c0de7a72:	f7ff ff79 	bl	c0de7968 <SVC_cx_call>
c0de7a76:	b004      	add	sp, #16
c0de7a78:	bd80      	pop	{r7, pc}
c0de7a7a:	bf00      	nop
c0de7a7c:	030000c5 	.word	0x030000c5

c0de7a80 <cx_bn_tst_bit>:
c0de7a80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a82:	ab01      	add	r3, sp, #4
c0de7a84:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a86:	4803      	ldr	r0, [pc, #12]	@ (c0de7a94 <cx_bn_tst_bit+0x14>)
c0de7a88:	a901      	add	r1, sp, #4
c0de7a8a:	f7ff ff6d 	bl	c0de7968 <SVC_cx_call>
c0de7a8e:	b004      	add	sp, #16
c0de7a90:	bd80      	pop	{r7, pc}
c0de7a92:	bf00      	nop
c0de7a94:	030000cb 	.word	0x030000cb

c0de7a98 <cx_bn_mod_add>:
c0de7a98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a9a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7a9e:	4803      	ldr	r0, [pc, #12]	@ (c0de7aac <cx_bn_mod_add+0x14>)
c0de7aa0:	4669      	mov	r1, sp
c0de7aa2:	f7ff ff61 	bl	c0de7968 <SVC_cx_call>
c0de7aa6:	b004      	add	sp, #16
c0de7aa8:	bd80      	pop	{r7, pc}
c0de7aaa:	bf00      	nop
c0de7aac:	040000d3 	.word	0x040000d3

c0de7ab0 <cx_bn_mod_sub>:
c0de7ab0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7ab2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7ab6:	4803      	ldr	r0, [pc, #12]	@ (c0de7ac4 <cx_bn_mod_sub+0x14>)
c0de7ab8:	4669      	mov	r1, sp
c0de7aba:	f7ff ff55 	bl	c0de7968 <SVC_cx_call>
c0de7abe:	b004      	add	sp, #16
c0de7ac0:	bd80      	pop	{r7, pc}
c0de7ac2:	bf00      	nop
c0de7ac4:	040000d4 	.word	0x040000d4

c0de7ac8 <cx_bn_mod_mul>:
c0de7ac8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7aca:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7ace:	4803      	ldr	r0, [pc, #12]	@ (c0de7adc <cx_bn_mod_mul+0x14>)
c0de7ad0:	4669      	mov	r1, sp
c0de7ad2:	f7ff ff49 	bl	c0de7968 <SVC_cx_call>
c0de7ad6:	b004      	add	sp, #16
c0de7ad8:	bd80      	pop	{r7, pc}
c0de7ada:	bf00      	nop
c0de7adc:	040000d5 	.word	0x040000d5

c0de7ae0 <cx_bn_reduce>:
c0de7ae0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7ae2:	ab01      	add	r3, sp, #4
c0de7ae4:	c307      	stmia	r3!, {r0, r1, r2}
c0de7ae6:	4803      	ldr	r0, [pc, #12]	@ (c0de7af4 <cx_bn_reduce+0x14>)
c0de7ae8:	a901      	add	r1, sp, #4
c0de7aea:	f7ff ff3d 	bl	c0de7968 <SVC_cx_call>
c0de7aee:	b004      	add	sp, #16
c0de7af0:	bd80      	pop	{r7, pc}
c0de7af2:	bf00      	nop
c0de7af4:	030000d6 	.word	0x030000d6

c0de7af8 <cx_bn_mod_invert_nprime>:
c0de7af8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7afa:	ab01      	add	r3, sp, #4
c0de7afc:	c307      	stmia	r3!, {r0, r1, r2}
c0de7afe:	4803      	ldr	r0, [pc, #12]	@ (c0de7b0c <cx_bn_mod_invert_nprime+0x14>)
c0de7b00:	a901      	add	r1, sp, #4
c0de7b02:	f7ff ff31 	bl	c0de7968 <SVC_cx_call>
c0de7b06:	b004      	add	sp, #16
c0de7b08:	bd80      	pop	{r7, pc}
c0de7b0a:	bf00      	nop
c0de7b0c:	030000da 	.word	0x030000da

c0de7b10 <cx_bn_is_prime>:
c0de7b10:	b5e0      	push	{r5, r6, r7, lr}
c0de7b12:	e9cd 0100 	strd	r0, r1, [sp]
c0de7b16:	4802      	ldr	r0, [pc, #8]	@ (c0de7b20 <cx_bn_is_prime+0x10>)
c0de7b18:	4669      	mov	r1, sp
c0de7b1a:	f7ff ff25 	bl	c0de7968 <SVC_cx_call>
c0de7b1e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b20:	020000ef 	.word	0x020000ef

c0de7b24 <cx_mont_alloc>:
c0de7b24:	b5e0      	push	{r5, r6, r7, lr}
c0de7b26:	e9cd 0100 	strd	r0, r1, [sp]
c0de7b2a:	4802      	ldr	r0, [pc, #8]	@ (c0de7b34 <cx_mont_alloc+0x10>)
c0de7b2c:	4669      	mov	r1, sp
c0de7b2e:	f7ff ff1b 	bl	c0de7968 <SVC_cx_call>
c0de7b32:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b34:	020000dc 	.word	0x020000dc

c0de7b38 <cx_mont_init>:
c0de7b38:	b5e0      	push	{r5, r6, r7, lr}
c0de7b3a:	e9cd 0100 	strd	r0, r1, [sp]
c0de7b3e:	4802      	ldr	r0, [pc, #8]	@ (c0de7b48 <cx_mont_init+0x10>)
c0de7b40:	4669      	mov	r1, sp
c0de7b42:	f7ff ff11 	bl	c0de7968 <SVC_cx_call>
c0de7b46:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b48:	020000dd 	.word	0x020000dd

c0de7b4c <cx_mont_to_montgomery>:
c0de7b4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b4e:	ab01      	add	r3, sp, #4
c0de7b50:	c307      	stmia	r3!, {r0, r1, r2}
c0de7b52:	4803      	ldr	r0, [pc, #12]	@ (c0de7b60 <cx_mont_to_montgomery+0x14>)
c0de7b54:	a901      	add	r1, sp, #4
c0de7b56:	f7ff ff07 	bl	c0de7968 <SVC_cx_call>
c0de7b5a:	b004      	add	sp, #16
c0de7b5c:	bd80      	pop	{r7, pc}
c0de7b5e:	bf00      	nop
c0de7b60:	030000df 	.word	0x030000df

c0de7b64 <cx_mont_from_montgomery>:
c0de7b64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b66:	ab01      	add	r3, sp, #4
c0de7b68:	c307      	stmia	r3!, {r0, r1, r2}
c0de7b6a:	4803      	ldr	r0, [pc, #12]	@ (c0de7b78 <cx_mont_from_montgomery+0x14>)
c0de7b6c:	a901      	add	r1, sp, #4
c0de7b6e:	f7ff fefb 	bl	c0de7968 <SVC_cx_call>
c0de7b72:	b004      	add	sp, #16
c0de7b74:	bd80      	pop	{r7, pc}
c0de7b76:	bf00      	nop
c0de7b78:	030000e0 	.word	0x030000e0

c0de7b7c <cx_mont_mul>:
c0de7b7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b7e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7b82:	4803      	ldr	r0, [pc, #12]	@ (c0de7b90 <cx_mont_mul+0x14>)
c0de7b84:	4669      	mov	r1, sp
c0de7b86:	f7ff feef 	bl	c0de7968 <SVC_cx_call>
c0de7b8a:	b004      	add	sp, #16
c0de7b8c:	bd80      	pop	{r7, pc}
c0de7b8e:	bf00      	nop
c0de7b90:	040000e1 	.word	0x040000e1

c0de7b94 <cx_mont_pow>:
c0de7b94:	b510      	push	{r4, lr}
c0de7b96:	b086      	sub	sp, #24
c0de7b98:	f10d 0c04 	add.w	ip, sp, #4
c0de7b9c:	9c08      	ldr	r4, [sp, #32]
c0de7b9e:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de7ba2:	4803      	ldr	r0, [pc, #12]	@ (c0de7bb0 <cx_mont_pow+0x1c>)
c0de7ba4:	a901      	add	r1, sp, #4
c0de7ba6:	f7ff fedf 	bl	c0de7968 <SVC_cx_call>
c0de7baa:	b006      	add	sp, #24
c0de7bac:	bd10      	pop	{r4, pc}
c0de7bae:	bf00      	nop
c0de7bb0:	050000e2 	.word	0x050000e2

c0de7bb4 <cx_mont_invert_nprime>:
c0de7bb4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7bb6:	ab01      	add	r3, sp, #4
c0de7bb8:	c307      	stmia	r3!, {r0, r1, r2}
c0de7bba:	4803      	ldr	r0, [pc, #12]	@ (c0de7bc8 <cx_mont_invert_nprime+0x14>)
c0de7bbc:	a901      	add	r1, sp, #4
c0de7bbe:	f7ff fed3 	bl	c0de7968 <SVC_cx_call>
c0de7bc2:	b004      	add	sp, #16
c0de7bc4:	bd80      	pop	{r7, pc}
c0de7bc6:	bf00      	nop
c0de7bc8:	030000e4 	.word	0x030000e4

c0de7bcc <cx_ecdomain_parameters_length>:
c0de7bcc:	b5e0      	push	{r5, r6, r7, lr}
c0de7bce:	e9cd 0100 	strd	r0, r1, [sp]
c0de7bd2:	4802      	ldr	r0, [pc, #8]	@ (c0de7bdc <cx_ecdomain_parameters_length+0x10>)
c0de7bd4:	4669      	mov	r1, sp
c0de7bd6:	f7ff fec7 	bl	c0de7968 <SVC_cx_call>
c0de7bda:	bd8c      	pop	{r2, r3, r7, pc}
c0de7bdc:	0200012f 	.word	0x0200012f

c0de7be0 <os_perso_derive_node_with_seed_key>:
c0de7be0:	b510      	push	{r4, lr}
c0de7be2:	b088      	sub	sp, #32
c0de7be4:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7be6:	9407      	str	r4, [sp, #28]
c0de7be8:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7bea:	9406      	str	r4, [sp, #24]
c0de7bec:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de7bee:	9405      	str	r4, [sp, #20]
c0de7bf0:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de7bf2:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7bf6:	4803      	ldr	r0, [pc, #12]	@ (c0de7c04 <os_perso_derive_node_with_seed_key+0x24>)
c0de7bf8:	4669      	mov	r1, sp
c0de7bfa:	f7ff fead 	bl	c0de7958 <SVC_Call>
c0de7bfe:	b008      	add	sp, #32
c0de7c00:	bd10      	pop	{r4, pc}
c0de7c02:	bf00      	nop
c0de7c04:	080000a6 	.word	0x080000a6

c0de7c08 <os_pki_load_certificate>:
c0de7c08:	b510      	push	{r4, lr}
c0de7c0a:	b086      	sub	sp, #24
c0de7c0c:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de7c0e:	9405      	str	r4, [sp, #20]
c0de7c10:	9c08      	ldr	r4, [sp, #32]
c0de7c12:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7c16:	4803      	ldr	r0, [pc, #12]	@ (c0de7c24 <os_pki_load_certificate+0x1c>)
c0de7c18:	4669      	mov	r1, sp
c0de7c1a:	f7ff fe9d 	bl	c0de7958 <SVC_Call>
c0de7c1e:	b006      	add	sp, #24
c0de7c20:	bd10      	pop	{r4, pc}
c0de7c22:	bf00      	nop
c0de7c24:	060000aa 	.word	0x060000aa

c0de7c28 <os_perso_is_pin_set>:
c0de7c28:	b5e0      	push	{r5, r6, r7, lr}
c0de7c2a:	2000      	movs	r0, #0
c0de7c2c:	4669      	mov	r1, sp
c0de7c2e:	9001      	str	r0, [sp, #4]
c0de7c30:	209e      	movs	r0, #158	@ 0x9e
c0de7c32:	f7ff fe91 	bl	c0de7958 <SVC_Call>
c0de7c36:	b2c0      	uxtb	r0, r0
c0de7c38:	bd8c      	pop	{r2, r3, r7, pc}

c0de7c3a <os_global_pin_is_validated>:
c0de7c3a:	b5e0      	push	{r5, r6, r7, lr}
c0de7c3c:	2000      	movs	r0, #0
c0de7c3e:	4669      	mov	r1, sp
c0de7c40:	9001      	str	r0, [sp, #4]
c0de7c42:	20a0      	movs	r0, #160	@ 0xa0
c0de7c44:	f7ff fe88 	bl	c0de7958 <SVC_Call>
c0de7c48:	b2c0      	uxtb	r0, r0
c0de7c4a:	bd8c      	pop	{r2, r3, r7, pc}

c0de7c4c <os_ux>:
c0de7c4c:	b5e0      	push	{r5, r6, r7, lr}
c0de7c4e:	f000 f877 	bl	c0de7d40 <OUTLINED_FUNCTION_0>
c0de7c52:	4802      	ldr	r0, [pc, #8]	@ (c0de7c5c <os_ux+0x10>)
c0de7c54:	4669      	mov	r1, sp
c0de7c56:	f7ff fe7f 	bl	c0de7958 <SVC_Call>
c0de7c5a:	bd8c      	pop	{r2, r3, r7, pc}
c0de7c5c:	01000064 	.word	0x01000064

c0de7c60 <os_lib_end>:
c0de7c60:	b082      	sub	sp, #8
c0de7c62:	2000      	movs	r0, #0
c0de7c64:	4669      	mov	r1, sp
c0de7c66:	9001      	str	r0, [sp, #4]
c0de7c68:	2068      	movs	r0, #104	@ 0x68
c0de7c6a:	f7ff fe75 	bl	c0de7958 <SVC_Call>
c0de7c6e:	deff      	udf	#255	@ 0xff

c0de7c70 <os_flags>:
c0de7c70:	b5e0      	push	{r5, r6, r7, lr}
c0de7c72:	2000      	movs	r0, #0
c0de7c74:	4669      	mov	r1, sp
c0de7c76:	9001      	str	r0, [sp, #4]
c0de7c78:	206a      	movs	r0, #106	@ 0x6a
c0de7c7a:	f7ff fe6d 	bl	c0de7958 <SVC_Call>
c0de7c7e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7c80 <os_registry_get_current_app_tag>:
c0de7c80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7c82:	ab01      	add	r3, sp, #4
c0de7c84:	c307      	stmia	r3!, {r0, r1, r2}
c0de7c86:	4803      	ldr	r0, [pc, #12]	@ (c0de7c94 <os_registry_get_current_app_tag+0x14>)
c0de7c88:	a901      	add	r1, sp, #4
c0de7c8a:	f7ff fe65 	bl	c0de7958 <SVC_Call>
c0de7c8e:	b004      	add	sp, #16
c0de7c90:	bd80      	pop	{r7, pc}
c0de7c92:	bf00      	nop
c0de7c94:	03000074 	.word	0x03000074

c0de7c98 <os_sched_exit>:
c0de7c98:	b082      	sub	sp, #8
c0de7c9a:	f000 f851 	bl	c0de7d40 <OUTLINED_FUNCTION_0>
c0de7c9e:	4802      	ldr	r0, [pc, #8]	@ (c0de7ca8 <os_sched_exit+0x10>)
c0de7ca0:	4669      	mov	r1, sp
c0de7ca2:	f7ff fe59 	bl	c0de7958 <SVC_Call>
c0de7ca6:	deff      	udf	#255	@ 0xff
c0de7ca8:	0100009a 	.word	0x0100009a

c0de7cac <os_io_init>:
c0de7cac:	b5e0      	push	{r5, r6, r7, lr}
c0de7cae:	9001      	str	r0, [sp, #4]
c0de7cb0:	4802      	ldr	r0, [pc, #8]	@ (c0de7cbc <os_io_init+0x10>)
c0de7cb2:	a901      	add	r1, sp, #4
c0de7cb4:	f7ff fe50 	bl	c0de7958 <SVC_Call>
c0de7cb8:	bd8c      	pop	{r2, r3, r7, pc}
c0de7cba:	bf00      	nop
c0de7cbc:	01000084 	.word	0x01000084

c0de7cc0 <os_io_start>:
c0de7cc0:	b5e0      	push	{r5, r6, r7, lr}
c0de7cc2:	2000      	movs	r0, #0
c0de7cc4:	4669      	mov	r1, sp
c0de7cc6:	9001      	str	r0, [sp, #4]
c0de7cc8:	4801      	ldr	r0, [pc, #4]	@ (c0de7cd0 <os_io_start+0x10>)
c0de7cca:	f7ff fe45 	bl	c0de7958 <SVC_Call>
c0de7cce:	bd8c      	pop	{r2, r3, r7, pc}
c0de7cd0:	01000085 	.word	0x01000085

c0de7cd4 <os_io_tx_cmd>:
c0de7cd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7cd6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7cda:	4803      	ldr	r0, [pc, #12]	@ (c0de7ce8 <os_io_tx_cmd+0x14>)
c0de7cdc:	4669      	mov	r1, sp
c0de7cde:	f7ff fe3b 	bl	c0de7958 <SVC_Call>
c0de7ce2:	b004      	add	sp, #16
c0de7ce4:	bd80      	pop	{r7, pc}
c0de7ce6:	bf00      	nop
c0de7ce8:	04000088 	.word	0x04000088

c0de7cec <os_io_rx_evt>:
c0de7cec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7cee:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7cf2:	4803      	ldr	r0, [pc, #12]	@ (c0de7d00 <os_io_rx_evt+0x14>)
c0de7cf4:	4669      	mov	r1, sp
c0de7cf6:	f7ff fe2f 	bl	c0de7958 <SVC_Call>
c0de7cfa:	b004      	add	sp, #16
c0de7cfc:	bd80      	pop	{r7, pc}
c0de7cfe:	bf00      	nop
c0de7d00:	03000089 	.word	0x03000089

c0de7d04 <try_context_get>:
c0de7d04:	b5e0      	push	{r5, r6, r7, lr}
c0de7d06:	2000      	movs	r0, #0
c0de7d08:	4669      	mov	r1, sp
c0de7d0a:	9001      	str	r0, [sp, #4]
c0de7d0c:	2087      	movs	r0, #135	@ 0x87
c0de7d0e:	f7ff fe23 	bl	c0de7958 <SVC_Call>
c0de7d12:	bd8c      	pop	{r2, r3, r7, pc}

c0de7d14 <try_context_set>:
c0de7d14:	b5e0      	push	{r5, r6, r7, lr}
c0de7d16:	f000 f813 	bl	c0de7d40 <OUTLINED_FUNCTION_0>
c0de7d1a:	4802      	ldr	r0, [pc, #8]	@ (c0de7d24 <try_context_set+0x10>)
c0de7d1c:	4669      	mov	r1, sp
c0de7d1e:	f7ff fe1b 	bl	c0de7958 <SVC_Call>
c0de7d22:	bd8c      	pop	{r2, r3, r7, pc}
c0de7d24:	0100010b 	.word	0x0100010b

c0de7d28 <os_sched_last_status>:
c0de7d28:	b5e0      	push	{r5, r6, r7, lr}
c0de7d2a:	f000 f809 	bl	c0de7d40 <OUTLINED_FUNCTION_0>
c0de7d2e:	4803      	ldr	r0, [pc, #12]	@ (c0de7d3c <os_sched_last_status+0x14>)
c0de7d30:	4669      	mov	r1, sp
c0de7d32:	f7ff fe11 	bl	c0de7958 <SVC_Call>
c0de7d36:	b2c0      	uxtb	r0, r0
c0de7d38:	bd8c      	pop	{r2, r3, r7, pc}
c0de7d3a:	bf00      	nop
c0de7d3c:	0100009c 	.word	0x0100009c

c0de7d40 <OUTLINED_FUNCTION_0>:
c0de7d40:	2100      	movs	r1, #0
c0de7d42:	e9cd 0100 	strd	r0, r1, [sp]
c0de7d46:	4770      	bx	lr

c0de7d48 <__udivmoddi4>:
c0de7d48:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7d4c:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de7d50:	4604      	mov	r4, r0
c0de7d52:	b179      	cbz	r1, c0de7d74 <__udivmoddi4+0x2c>
c0de7d54:	b1ba      	cbz	r2, c0de7d86 <__udivmoddi4+0x3e>
c0de7d56:	b35b      	cbz	r3, c0de7db0 <__udivmoddi4+0x68>
c0de7d58:	fab1 f581 	clz	r5, r1
c0de7d5c:	fab3 f683 	clz	r6, r3
c0de7d60:	1b75      	subs	r5, r6, r5
c0de7d62:	2d20      	cmp	r5, #32
c0de7d64:	d34a      	bcc.n	c0de7dfc <__udivmoddi4+0xb4>
c0de7d66:	f1bc 0f00 	cmp.w	ip, #0
c0de7d6a:	bf18      	it	ne
c0de7d6c:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7d70:	2400      	movs	r4, #0
c0de7d72:	e066      	b.n	c0de7e42 <__udivmoddi4+0xfa>
c0de7d74:	b3cb      	cbz	r3, c0de7dea <__udivmoddi4+0xa2>
c0de7d76:	2100      	movs	r1, #0
c0de7d78:	f1bc 0f00 	cmp.w	ip, #0
c0de7d7c:	bf18      	it	ne
c0de7d7e:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7d82:	2400      	movs	r4, #0
c0de7d84:	e0a6      	b.n	c0de7ed4 <__udivmoddi4+0x18c>
c0de7d86:	2b00      	cmp	r3, #0
c0de7d88:	d03e      	beq.n	c0de7e08 <__udivmoddi4+0xc0>
c0de7d8a:	2800      	cmp	r0, #0
c0de7d8c:	d04f      	beq.n	c0de7e2e <__udivmoddi4+0xe6>
c0de7d8e:	1e5d      	subs	r5, r3, #1
c0de7d90:	422b      	tst	r3, r5
c0de7d92:	d158      	bne.n	c0de7e46 <__udivmoddi4+0xfe>
c0de7d94:	f1bc 0f00 	cmp.w	ip, #0
c0de7d98:	bf1c      	itt	ne
c0de7d9a:	ea05 0001 	andne.w	r0, r5, r1
c0de7d9e:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7da2:	fa93 f0a3 	rbit	r0, r3
c0de7da6:	fab0 f080 	clz	r0, r0
c0de7daa:	fa21 f400 	lsr.w	r4, r1, r0
c0de7dae:	e048      	b.n	c0de7e42 <__udivmoddi4+0xfa>
c0de7db0:	1e55      	subs	r5, r2, #1
c0de7db2:	422a      	tst	r2, r5
c0de7db4:	d129      	bne.n	c0de7e0a <__udivmoddi4+0xc2>
c0de7db6:	f1bc 0f00 	cmp.w	ip, #0
c0de7dba:	bf1e      	ittt	ne
c0de7dbc:	2300      	movne	r3, #0
c0de7dbe:	4005      	andne	r5, r0
c0de7dc0:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7dc4:	2a01      	cmp	r2, #1
c0de7dc6:	f000 8085 	beq.w	c0de7ed4 <__udivmoddi4+0x18c>
c0de7dca:	fa92 f2a2 	rbit	r2, r2
c0de7dce:	004c      	lsls	r4, r1, #1
c0de7dd0:	fab2 f282 	clz	r2, r2
c0de7dd4:	f002 031f 	and.w	r3, r2, #31
c0de7dd8:	40d1      	lsrs	r1, r2
c0de7dda:	40d8      	lsrs	r0, r3
c0de7ddc:	231f      	movs	r3, #31
c0de7dde:	4393      	bics	r3, r2
c0de7de0:	fa04 f303 	lsl.w	r3, r4, r3
c0de7de4:	ea43 0400 	orr.w	r4, r3, r0
c0de7de8:	e074      	b.n	c0de7ed4 <__udivmoddi4+0x18c>
c0de7dea:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7dee:	f1bc 0f00 	cmp.w	ip, #0
c0de7df2:	d026      	beq.n	c0de7e42 <__udivmoddi4+0xfa>
c0de7df4:	fb04 0012 	mls	r0, r4, r2, r0
c0de7df8:	2100      	movs	r1, #0
c0de7dfa:	e020      	b.n	c0de7e3e <__udivmoddi4+0xf6>
c0de7dfc:	f105 0e01 	add.w	lr, r5, #1
c0de7e00:	f1be 0f20 	cmp.w	lr, #32
c0de7e04:	d00b      	beq.n	c0de7e1e <__udivmoddi4+0xd6>
c0de7e06:	e028      	b.n	c0de7e5a <__udivmoddi4+0x112>
c0de7e08:	e064      	b.n	c0de7ed4 <__udivmoddi4+0x18c>
c0de7e0a:	fab1 f481 	clz	r4, r1
c0de7e0e:	fab2 f582 	clz	r5, r2
c0de7e12:	1b2c      	subs	r4, r5, r4
c0de7e14:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7e18:	f1be 0f20 	cmp.w	lr, #32
c0de7e1c:	d15d      	bne.n	c0de7eda <__udivmoddi4+0x192>
c0de7e1e:	f04f 0e20 	mov.w	lr, #32
c0de7e22:	f04f 0a00 	mov.w	sl, #0
c0de7e26:	f04f 0b00 	mov.w	fp, #0
c0de7e2a:	460e      	mov	r6, r1
c0de7e2c:	e021      	b.n	c0de7e72 <__udivmoddi4+0x12a>
c0de7e2e:	fbb1 f4f3 	udiv	r4, r1, r3
c0de7e32:	f1bc 0f00 	cmp.w	ip, #0
c0de7e36:	d004      	beq.n	c0de7e42 <__udivmoddi4+0xfa>
c0de7e38:	2000      	movs	r0, #0
c0de7e3a:	fb04 1113 	mls	r1, r4, r3, r1
c0de7e3e:	e9cc 0100 	strd	r0, r1, [ip]
c0de7e42:	2100      	movs	r1, #0
c0de7e44:	e046      	b.n	c0de7ed4 <__udivmoddi4+0x18c>
c0de7e46:	fab1 f581 	clz	r5, r1
c0de7e4a:	fab3 f683 	clz	r6, r3
c0de7e4e:	1b75      	subs	r5, r6, r5
c0de7e50:	2d1f      	cmp	r5, #31
c0de7e52:	f4bf af88 	bcs.w	c0de7d66 <__udivmoddi4+0x1e>
c0de7e56:	f105 0e01 	add.w	lr, r5, #1
c0de7e5a:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7e5e:	f1c5 051f 	rsb	r5, r5, #31
c0de7e62:	fa01 f605 	lsl.w	r6, r1, r5
c0de7e66:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de7e6a:	40a8      	lsls	r0, r5
c0de7e6c:	f04f 0a00 	mov.w	sl, #0
c0de7e70:	4326      	orrs	r6, r4
c0de7e72:	f04f 0800 	mov.w	r8, #0
c0de7e76:	f1be 0f00 	cmp.w	lr, #0
c0de7e7a:	d01c      	beq.n	c0de7eb6 <__udivmoddi4+0x16e>
c0de7e7c:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7e80:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7e84:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de7e88:	0076      	lsls	r6, r6, #1
c0de7e8a:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7e8e:	1aae      	subs	r6, r5, r2
c0de7e90:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7e94:	43cf      	mvns	r7, r1
c0de7e96:	43ec      	mvns	r4, r5
c0de7e98:	18a4      	adds	r4, r4, r2
c0de7e9a:	eb57 0403 	adcs.w	r4, r7, r3
c0de7e9e:	bf5c      	itt	pl
c0de7ea0:	468b      	movpl	fp, r1
c0de7ea2:	462e      	movpl	r6, r5
c0de7ea4:	0040      	lsls	r0, r0, #1
c0de7ea6:	0fe1      	lsrs	r1, r4, #31
c0de7ea8:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7eac:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7eb0:	46a2      	mov	sl, r4
c0de7eb2:	4688      	mov	r8, r1
c0de7eb4:	e7df      	b.n	c0de7e76 <__udivmoddi4+0x12e>
c0de7eb6:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7eba:	f1bc 0f00 	cmp.w	ip, #0
c0de7ebe:	bf18      	it	ne
c0de7ec0:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7ec4:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7ec8:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7ecc:	f020 0001 	bic.w	r0, r0, #1
c0de7ed0:	ea40 0408 	orr.w	r4, r0, r8
c0de7ed4:	4620      	mov	r0, r4
c0de7ed6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7eda:	f1be 0f1f 	cmp.w	lr, #31
c0de7ede:	d804      	bhi.n	c0de7eea <__udivmoddi4+0x1a2>
c0de7ee0:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7ee4:	f1ce 0520 	rsb	r5, lr, #32
c0de7ee8:	e7bb      	b.n	c0de7e62 <__udivmoddi4+0x11a>
c0de7eea:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7eee:	f1ae 0420 	sub.w	r4, lr, #32
c0de7ef2:	f04f 0b00 	mov.w	fp, #0
c0de7ef6:	fa20 f504 	lsr.w	r5, r0, r4
c0de7efa:	fa01 f607 	lsl.w	r6, r1, r7
c0de7efe:	fa00 fa07 	lsl.w	sl, r0, r7
c0de7f02:	ea46 0805 	orr.w	r8, r6, r5
c0de7f06:	fa21 f604 	lsr.w	r6, r1, r4
c0de7f0a:	4640      	mov	r0, r8
c0de7f0c:	e7b1      	b.n	c0de7e72 <__udivmoddi4+0x12a>
	...

c0de7f10 <__aeabi_memcpy>:
c0de7f10:	f000 b81c 	b.w	c0de7f4c <memcpy>

c0de7f14 <__aeabi_memmove>:
c0de7f14:	f000 b828 	b.w	c0de7f68 <memmove>

c0de7f18 <__aeabi_memset>:
c0de7f18:	460b      	mov	r3, r1
c0de7f1a:	4611      	mov	r1, r2
c0de7f1c:	461a      	mov	r2, r3
c0de7f1e:	f000 b83d 	b.w	c0de7f9c <memset>
c0de7f22:	bf00      	nop

c0de7f24 <__aeabi_memclr>:
c0de7f24:	460a      	mov	r2, r1
c0de7f26:	2100      	movs	r1, #0
c0de7f28:	f000 b838 	b.w	c0de7f9c <memset>

c0de7f2c <__aeabi_uldivmod>:
c0de7f2c:	b540      	push	{r6, lr}
c0de7f2e:	b084      	sub	sp, #16
c0de7f30:	ae02      	add	r6, sp, #8
c0de7f32:	9600      	str	r6, [sp, #0]
c0de7f34:	f7ff ff08 	bl	c0de7d48 <__udivmoddi4>
c0de7f38:	9a02      	ldr	r2, [sp, #8]
c0de7f3a:	9b03      	ldr	r3, [sp, #12]
c0de7f3c:	b004      	add	sp, #16
c0de7f3e:	bd40      	pop	{r6, pc}

c0de7f40 <explicit_bzero>:
c0de7f40:	f000 b800 	b.w	c0de7f44 <bzero>

c0de7f44 <bzero>:
c0de7f44:	460a      	mov	r2, r1
c0de7f46:	2100      	movs	r1, #0
c0de7f48:	f000 b828 	b.w	c0de7f9c <memset>

c0de7f4c <memcpy>:
c0de7f4c:	440a      	add	r2, r1
c0de7f4e:	4291      	cmp	r1, r2
c0de7f50:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de7f54:	d100      	bne.n	c0de7f58 <memcpy+0xc>
c0de7f56:	4770      	bx	lr
c0de7f58:	b510      	push	{r4, lr}
c0de7f5a:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7f5e:	4291      	cmp	r1, r2
c0de7f60:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7f64:	d1f9      	bne.n	c0de7f5a <memcpy+0xe>
c0de7f66:	bd10      	pop	{r4, pc}

c0de7f68 <memmove>:
c0de7f68:	4288      	cmp	r0, r1
c0de7f6a:	b510      	push	{r4, lr}
c0de7f6c:	eb01 0402 	add.w	r4, r1, r2
c0de7f70:	d902      	bls.n	c0de7f78 <memmove+0x10>
c0de7f72:	4284      	cmp	r4, r0
c0de7f74:	4623      	mov	r3, r4
c0de7f76:	d807      	bhi.n	c0de7f88 <memmove+0x20>
c0de7f78:	1e43      	subs	r3, r0, #1
c0de7f7a:	42a1      	cmp	r1, r4
c0de7f7c:	d008      	beq.n	c0de7f90 <memmove+0x28>
c0de7f7e:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7f82:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de7f86:	e7f8      	b.n	c0de7f7a <memmove+0x12>
c0de7f88:	4601      	mov	r1, r0
c0de7f8a:	4402      	add	r2, r0
c0de7f8c:	428a      	cmp	r2, r1
c0de7f8e:	d100      	bne.n	c0de7f92 <memmove+0x2a>
c0de7f90:	bd10      	pop	{r4, pc}
c0de7f92:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de7f96:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7f9a:	e7f7      	b.n	c0de7f8c <memmove+0x24>

c0de7f9c <memset>:
c0de7f9c:	4603      	mov	r3, r0
c0de7f9e:	4402      	add	r2, r0
c0de7fa0:	4293      	cmp	r3, r2
c0de7fa2:	d100      	bne.n	c0de7fa6 <memset+0xa>
c0de7fa4:	4770      	bx	lr
c0de7fa6:	f803 1b01 	strb.w	r1, [r3], #1
c0de7faa:	e7f9      	b.n	c0de7fa0 <memset+0x4>

c0de7fac <setjmp>:
c0de7fac:	46ec      	mov	ip, sp
c0de7fae:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7fb2:	f04f 0000 	mov.w	r0, #0
c0de7fb6:	4770      	bx	lr

c0de7fb8 <longjmp>:
c0de7fb8:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7fbc:	46e5      	mov	sp, ip
c0de7fbe:	0008      	movs	r0, r1
c0de7fc0:	bf08      	it	eq
c0de7fc2:	2001      	moveq	r0, #1
c0de7fc4:	4770      	bx	lr
c0de7fc6:	bf00      	nop

c0de7fc8 <strcmp>:
c0de7fc8:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7fcc:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7fd0:	2a01      	cmp	r2, #1
c0de7fd2:	bf28      	it	cs
c0de7fd4:	429a      	cmpcs	r2, r3
c0de7fd6:	d0f7      	beq.n	c0de7fc8 <strcmp>
c0de7fd8:	1ad0      	subs	r0, r2, r3
c0de7fda:	4770      	bx	lr

c0de7fdc <strlen>:
c0de7fdc:	4603      	mov	r3, r0
c0de7fde:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de7fe2:	2a00      	cmp	r2, #0
c0de7fe4:	d1fb      	bne.n	c0de7fde <strlen+0x2>
c0de7fe6:	1a18      	subs	r0, r3, r0
c0de7fe8:	3801      	subs	r0, #1
c0de7fea:	4770      	bx	lr

c0de7fec <strncmp>:
c0de7fec:	b510      	push	{r4, lr}
c0de7fee:	b16a      	cbz	r2, c0de800c <strncmp+0x20>
c0de7ff0:	3901      	subs	r1, #1
c0de7ff2:	1884      	adds	r4, r0, r2
c0de7ff4:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7ff8:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de7ffc:	429a      	cmp	r2, r3
c0de7ffe:	d103      	bne.n	c0de8008 <strncmp+0x1c>
c0de8000:	42a0      	cmp	r0, r4
c0de8002:	d001      	beq.n	c0de8008 <strncmp+0x1c>
c0de8004:	2a00      	cmp	r2, #0
c0de8006:	d1f5      	bne.n	c0de7ff4 <strncmp+0x8>
c0de8008:	1ad0      	subs	r0, r2, r3
c0de800a:	bd10      	pop	{r4, pc}
c0de800c:	4610      	mov	r0, r2
c0de800e:	e7fc      	b.n	c0de800a <strncmp+0x1e>

c0de8010 <strncpy>:
c0de8010:	4603      	mov	r3, r0
c0de8012:	b510      	push	{r4, lr}
c0de8014:	3901      	subs	r1, #1
c0de8016:	b132      	cbz	r2, c0de8026 <strncpy+0x16>
c0de8018:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de801c:	3a01      	subs	r2, #1
c0de801e:	f803 4b01 	strb.w	r4, [r3], #1
c0de8022:	2c00      	cmp	r4, #0
c0de8024:	d1f7      	bne.n	c0de8016 <strncpy+0x6>
c0de8026:	2100      	movs	r1, #0
c0de8028:	441a      	add	r2, r3
c0de802a:	4293      	cmp	r3, r2
c0de802c:	d100      	bne.n	c0de8030 <strncpy+0x20>
c0de802e:	bd10      	pop	{r4, pc}
c0de8030:	f803 1b01 	strb.w	r1, [r3], #1
c0de8034:	e7f9      	b.n	c0de802a <strncpy+0x1a>

c0de8036 <C_home_boilerplate_14px_bitmap>:
c0de8036:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de8046:	fc7b df0f 7ffe 7ff8                          {........

c0de804f <C_home_boilerplate_14px>:
c0de804f:	000e 000e 0000 8036 c0de                    ......6...

c0de8059 <C_Information_circle_14px_bitmap>:
c0de8059:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de8069:	e7ff 8fff 1ffc 1ee0                          .........

c0de8072 <C_Information_circle_14px>:
c0de8072:	000e 000e 0000 8059 c0de                    ......Y...

c0de807c <C_Quit_14px_bitmap>:
c0de807c:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de808c:	6680 9801 7f06 fff9                          .f.......

c0de8095 <C_Quit_14px>:
c0de8095:	000e 000e 0000 807c c0de                    ......|...

c0de809f <C_Switch_Off_8px_bitmap>:
c0de809f:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de80ab <C_Switch_Off_8px>:
c0de80ab:	000c 0008 0000 809f c0de                    ..........

c0de80b5 <C_Switch_On_8px_bitmap>:
c0de80b5:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de80c1 <C_Switch_On_8px>:
c0de80c1:	000c 0008 0000 80b5 c0de                    ..........

c0de80cb <C_icon_back_x_bitmap>:
c0de80cb:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de80db:	003f 0078 00c0 0000                          ?.x......

c0de80e4 <C_icon_back_x>:
c0de80e4:	000e 000e 0000 80cb c0de                    ..........

c0de80ee <C_icon_coggle_bitmap>:
c0de80ee:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de80fe:	807f 00b4 00c0 0000                          .........

c0de8107 <C_icon_coggle>:
c0de8107:	000e 000e 0000 80ee c0de                    ..........

c0de8111 <C_icon_crossmark_bitmap>:
c0de8111:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de8121:	8373 1c87 600e 0018                          s....`...

c0de812a <C_icon_crossmark>:
c0de812a:	000e 000e 0000 8111 c0de                    ..........

c0de8134 <C_icon_down_bitmap>:
c0de8134:	2184 8024                                   .!$.

c0de8138 <C_icon_down>:
c0de8138:	0007 0004 0000 8134 c0de                    ......4...

c0de8142 <C_icon_left_bitmap>:
c0de8142:	8882 80a0                                   ....

c0de8146 <C_icon_left>:
c0de8146:	0004 0007 0000 8142 c0de                    ......B...

c0de8150 <C_icon_processing_bitmap>:
c0de8150:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de8160:	8361 04b7 03c8 0000                          a........

c0de8169 <C_icon_processing>:
c0de8169:	000e 000e 0000 8150 c0de                    ......P...

c0de8173 <C_icon_right_bitmap>:
c0de8173:	5110 1014                                   .Q..

c0de8177 <C_icon_right>:
c0de8177:	0004 0007 0000 8173 c0de                    ......s...

c0de8181 <C_icon_up_bitmap>:
c0de8181:	4812 1042                                   .HB.

c0de8185 <C_icon_up>:
c0de8185:	0007 0004 0000 8181 c0de                    ..........

c0de818f <C_icon_validate_14_bitmap>:
c0de818f:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de819f:	a3b3 a3a3 f0b2                               ......P

c0de81a6 <C_icon_validate_14>:
c0de81a6:	000e 000e 0100 818f c0de                    ..........

c0de81b0 <C_icon_warning_bitmap>:
c0de81b0:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de81c0:	e01f 801f 001e 0018                          .........

c0de81c9 <C_icon_warning>:
c0de81c9:	000e 000e 0000 81b0 c0de                    ..........

c0de81d3 <C_app_boilerplate_14px_bitmap>:
c0de81d3:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de81e3:	0384 00f0 0000 0000                          .........

c0de81ec <C_app_boilerplate_14px>:
c0de81ec:	000e 000e 0000 81d3 c0de 7544 6d6d 2079     ..........Dummy 
c0de81fc:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de820c:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de821c:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de822c:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de823c:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de824c:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de825c:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de826c:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de827c:	5300 6769 696e 676e 4100 6464 6572 7373     .Signing.Address
c0de828c:	7620 7265 6669 6569 0064 7241 2065 6f79      verified.Are yo
c0de829c:	2075 7573 6572 7420 0a6f 6c61 6f6c 2077     u sure to.allow 
c0de82ac:	7564 6d6d 2079 0a32 6e69 7420 6172 736e     dummy 2.in trans
c0de82bc:	6361 6974 6e6f 3f73 5400 6172 736e 6361     actions?.Transac
c0de82cc:	6974 6e6f 7320 6769 656e 0064 6f54 6120     tion signed.To a
c0de82dc:	6363 7065 2074 6972 6b73 202c 7270 7365     ccept risk, pres
c0de82ec:	2073 6f62 6874 6220 7475 6f74 736e 4400     s both buttons.D
c0de82fc:	7665 6c65 706f 7265 4500 616e 6c62 6465     eveloper.Enabled
c0de830c:	4100 6c6c 776f 6420 6d75 796d 3120 690a     .Allow dummy 1.i
c0de831c:	206e 7274 6e61 6173 7463 6f69 736e 5300     n transactions.S
c0de832c:	6769 206e 656d 7373 6761 0065 654d 7373     ign message.Mess
c0de833c:	6761 2065 6973 6e67 6465 5300 6769 206e     age signed.Sign 
c0de834c:	7274 6e61 6173 7463 6f69 006e 6552 656a     transaction.Reje
c0de835c:	7463 7420 6172 736e 6361 6974 6e6f 4100     ct transaction.A
c0de836c:	6363 7065 2074 6972 6b73 6120 646e 7320     ccept risk and s
c0de837c:	6769 206e 656d 7373 6761 0065 6c41 6f6c     ign message.Allo
c0de838c:	2077 7564 6d6d 2079 0a32 6e69 7420 6172     w dummy 2.in tra
c0de839c:	736e 6361 6974 6e6f 0073 6556 7372 6f69     nsactions.Versio
c0de83ac:	006e 6143 636e 6c65 4100 6464 6572 7373     n.Cancel.Address
c0de83bc:	7620 7265 6669 6369 7461 6f69 206e 6163      verification ca
c0de83cc:	636e 6c65 656c 0064 6944 6173 6c62 6465     ncelled.Disabled
c0de83dc:	4100 7070 7320 7465 6974 676e 0073 6341     .App settings.Ac
c0de83ec:	6563 7470 7220 7369 206b 6e61 2064 6973     cept risk and si
c0de83fc:	6e67 7420 6172 736e 6361 6974 6e6f 4200     gn transaction.B
c0de840c:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0de841c:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0de842c:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0de843c:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0de844c:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0de845c:	4544 0046 4f42 204c 2e25 732a 4200 6361     DEF.BOL %.*s.Bac
c0de846c:	006b 6441 7264 7365 0073 7544 6d6d 2079     k.Address.Dummy 
c0de847c:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0de848c:	6f63 666e 7269 006d 7854 6148 6873 5400     confirm.TxHash.T
c0de849c:	6172 736e 6361 6974 6e6f 7220 6a65 6365     ransaction rejec
c0de84ac:	6574 0064 7041 2070 6e69 6f66 5300 6769     ted.App info.Sig
c0de84bc:	206e 706f 7265 7461 6f69 006e 6552 656a     n operation.Reje
c0de84cc:	7463 6d20 7365 6173 6567 5200 6a65 6365     ct message.Rejec
c0de84dc:	2074 706f 7265 7461 6f69 006e 4b5a 4f4e     t operation.ZKNO
c0de84ec:	0058 6556 6972 7966 4220 4c4f 6120 6464     X.Verify BOL add
c0de84fc:	6572 7373 5200 7665 6569 2077 7274 6e61     ress.Review tran
c0de850c:	6173 7463 6f69 0a6e 6f74 2820 6170 7472     saction.to (part
c0de851c:	6169 296c 7320 6769 006e 4b5a 4f4e 4858     ial) sign.ZKNOXH
c0de852c:	0057 7061 2070 7369 7220 6165 7964 5100     W.app is ready.Q
c0de853c:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0de854c:	0000 0000 6501 d5c4 445f b317 e968 545a     .....e.._D..h.ZT
c0de855c:	1a00 3230 b03c e84f 3e34 d45a 4584 6323     ..02<.O.4>Z..E#c
c0de856c:	98a5 59d0 ed73 53a7 9d29 487d 3933 08d8     ...Ys..S).}H39..
c0de857c:	a109 05d8 bd53 02a4 feff fe5b ffff ffff     ....S.....[.....
c0de858c:	0000 0100 ce05 c698 051b 7ff4 eae2 a5e9     ................
c0de859c:	bd42 f699 e7b2 4682 1623 b540 9545 bffe     B......F#.@.E...
c0de85ac:	1ed5 53b8 0000 0000 0000 0000 0000 0000     ...S............
	...
c0de85cc:	0000 0300 0001 0000 0000 0000 0002 0000     ................
c0de85dc:	0000 0000 0003 0000 0000 0000 0004 0000     ................
c0de85ec:	0000 0000 d600 b746 deed 18a5 d083 3f88     ......F........?
c0de85fc:	4964 2dda 9fa0 c7c3 53f4 490a 696d ee29     dI.-.....S.Imi).
c0de860c:	9b64 7f4c a005 91c0 8356 988b af28 123f     d.L.....V...(.?.
c0de861c:	e167 e675 84e2 9dc7 6d1b d08a 0acd d9e0     g.u......m......
c0de862c:	9057 6e33 c61c 38ee 9c13 111c 2302 7a53     W.3n...8.....#Sz
c0de863c:	e78c 069d 587e 10cc c667 b7fb b3d8 b0a1     ....~X..g.......
c0de864c:	fc8d 088f 4d27 e8bc 51d1 9679 c09b 9fd4     ....'M...Qy.....
c0de865c:	25a7 dfbd e59d e055 6aba 3c69 db6a fc52     .%....U..ji<j.R.
c0de866c:	e79e 2ca8 fb1c d469 67ca 525f ce0c 0276     ...,..i..g_R..v.
c0de867c:	6802 0076 8fff 0087 1974 7104 fd74 b506     .hv.....t..qt...
c0de868c:	7628 e1e7 0c06 ce89 265c 0534 0a37 b608     (v......\&4.7...
c0de869c:	30d0 0b2b 3eab b8ed 2039 0aee 7267 dc97     .0+..>..9 ..gr..
c0de86ac:	2139 f126 a570 4a89 4464 3854 15d0 32ac     9!&.p..JdDT8...2
c0de86bc:	36ba 090f de2c ba44 1fb1 b7c2 b5d4 d2c0     .6..,.D.........
c0de86cc:	2216 ce8c 820b 39b7 8de7 57da 5ae7 80c6     .".....9...W.Z..
c0de86dc:	68ef f19d 8f15 eee3 09d8 6d5c d14b c7b2     .h........\mK...
c0de86ec:	66c1 fdee 4a03 6fe2 49fb 6644 4563 7bec     .f...J.o.IDfcE.{
c0de86fc:	3f44 92cc 36bb da52 4fa9 92f9 77e1 a629     D?...6R..O...w).
c0de870c:	d3fe 736c 7104 de2f 1782 e713 026d fd5d     ..ls.q/.....m.].
c0de871c:	bde4 2c8c 68f3 7a02 34c1 7075 3983 c57b     ...,.h.z.4up.9{.
c0de872c:	16f1 fc60 d059 a598 2363 8445 5ad4 343e     ..`.Y...c#E..Z>4
c0de873c:	4fe8 3cb0 3032 001a 5a54 68e9 17b3 5f44     .O.<20..TZ.h..D_
c0de874c:	c4d5 0165 0000 0000 0000 0000 0000 0000     ..e.............
	...
c0de876c:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de877c:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de878c:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de879c:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de87ac:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de87bc:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de87cc:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de87ec:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de87fc:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de880c:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de881c:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de882c:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de883c:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de884c:	2d87 8b7d 8802 641c ea76 fcc0 c158 734b     .-}....dv...X.Ks
c0de885c:	685c 6ec7 e5f3 c19b 40ad e4b3 4d5a f15b     \h.n.....@..ZM[.
c0de886c:	5736 3e72                                   6Wr>

c0de8870 <.L__const.handler_cmd_Poseidon.input>:
c0de8870:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de8880:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de8890:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de88a0:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de88b0:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de88c0:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de88d0:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de88e0:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de88f0:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de8900:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8910 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de892c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de893c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de894c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de895c:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de896c:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de897c:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de898c:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de899c:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de89ac:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de89cc:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de89dc:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de89ec:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de89fc:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de8a0c:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de8a1c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de8a2c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de8a3c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de8a4c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de8a6c:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de8a7c:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de8a8c:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de8a9c:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de8aac:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de8abc:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de8acc:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de8adc:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de8aec:	9b44 9ffb                                   D...

c0de8af0 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de8b0c:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de8b1c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de8b2c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de8b3c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de8b4c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de8b5c:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de8b6c:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de8b7c:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de8b8c:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de8bac:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de8bbc:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de8bcc:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de8bdc:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de8bec:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de8bfc:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de8c0c:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de8c1c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de8c2c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de8c4c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de8c5c:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de8c6c:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de8c7c:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de8c8c:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de8c9c:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de8cac:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de8cbc:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de8ccc:	8132 74b1                                   2..t

c0de8cd0 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de8cd0:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de8ce0:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de8cf0:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de8d00:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8d10:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8d20:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8d30 <.L__const.handler_cmd_PartialSig.commitmentlist_be>:
	...
c0de8d4c:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0de8d5c:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0de8d6c:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0de8d7c:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0de8d8c:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0de8d9c:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0de8dac:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0de8dbc:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0de8dcc:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0de8dec:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0de8dfc:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0de8e0c:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0de8e1c:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0de8e2c:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0de8e3c:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0de8e4c:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0de8e5c:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0de8e6c:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0de8e8c:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0de8e9c:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0de8eac:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0de8ebc:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0de8ecc:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0de8edc:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0de8eec:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0de8efc:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0de8f0c:	b87c 6a30                                   |.0j

c0de8f10 <.L__const.handler_cmd_PartialSig.groupkey_be>:
c0de8f10:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0de8f20:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0de8f30:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de8f40:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0de8f50 <settingContents>:
c0de8f50:	0000 0000 8f6c c0de 0001 0000               ....l.......

c0de8f5c <infoList>:
c0de8f5c:	8fa4 c0de 8fac c0de 0000 0000 0002 0000     ................

c0de8f6c <contents>:
c0de8f6c:	0007 0000 05dc da7a 0002 0000 0000 0000     ......z.........
	...
c0de8fa0:	1d85 c0de                                   ....

c0de8fa4 <INFO_TYPES>:
c0de8fa4:	83a6 c0de 82fb c0de                         ........

c0de8fac <INFO_CONTENTS>:
c0de8fac:	8225 c0de 84e8 c0de                         %.......

c0de8fb4 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8fd4:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8fe4:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8ff4 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8ff4:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de9004:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de9014:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de9024:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de9034:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de9044:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de9054:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de9064:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de9074:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de9084:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de9094:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de90a4:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de90b4:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de90c4:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de90d4:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de90e4:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de90f4:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de9104:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de9114:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de9124:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de9134:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de9144:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de9154:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de9164:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de9174:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de9184:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de9194:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de91a4:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de91b4:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de91c4:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de91d4:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de91e4:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de91f4:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de9204:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de9214:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de9224:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de9234:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de9244:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de9254:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de9264:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de9274:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de9284:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de9294:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de92a4:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de92b4:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de92c4:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de92d4:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de92e4:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de92f4:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de9304:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de9314:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de9324:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de9334:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de9344:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de9354:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de9364:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de9374:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de9384:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de9394:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de93a4:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de93b4:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de93c4:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de93d4:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de93e4:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de93f4:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de9404:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de9414:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de9424:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de9434:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de9444:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de9454:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de9464:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de9474 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de9474:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de9484:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de9494 <blindSigningWarning>:
c0de9494:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de94c0 <g_pcHex>:
c0de94c0:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de94d0 <g_pcHex_cap>:
c0de94d0:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de94e0 <_etext>:
	...

c0de9600 <N_storage_real>:
	...

c0de9800 <install_parameters>:
c0de9800:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9810:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9820:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9830:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
