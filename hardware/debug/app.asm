
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f007 fadb 	bl	c0de75c0 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f007 f85d 	bl	c0de70d4 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f007 f824 	bl	c0de7068 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f007 f815 	bl	c0de7052 <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 ff77 	bl	c0de7f28 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f007 fa55 	bl	c0de74ec <assert_exit>
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
c0de0056:	f007 fa03 	bl	c0de7460 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 ff54 	bl	c0de7f14 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f007 fa37 	bl	c0de74ec <assert_exit>
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
c0de016e:	f001 fb3f 	bl	c0de17f0 <handler_cmd_inject_nonces>
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
c0de03b6:	f006 fdf3 	bl	c0de6fa0 <io_send_response_buffers>
c0de03ba:	bd80      	pop	{r7, pc}

c0de03bc <OUTLINED_FUNCTION_0>:
c0de03bc:	9001      	str	r0, [sp, #4]
c0de03be:	7920      	ldrb	r0, [r4, #4]
c0de03c0:	9002      	str	r0, [sp, #8]
c0de03c2:	4770      	bx	lr

c0de03c4 <app_main>:
c0de03c4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de03c6:	f006 fdcd 	bl	c0de6f64 <io_init>
c0de03ca:	481e      	ldr	r0, [pc, #120]	@ (c0de0444 <app_main+0x80>)
c0de03cc:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de03d0:	b908      	cbnz	r0, c0de03d6 <app_main+0x12>
c0de03d2:	f001 fc91 	bl	c0de1cf8 <ui_menu_main>
c0de03d6:	481c      	ldr	r0, [pc, #112]	@ (c0de0448 <app_main+0x84>)
c0de03d8:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de03dc:	4448      	add	r0, r9
c0de03de:	f007 fdb1 	bl	c0de7f44 <explicit_bzero>
c0de03e2:	481b      	ldr	r0, [pc, #108]	@ (c0de0450 <app_main+0x8c>)
c0de03e4:	4478      	add	r0, pc
c0de03e6:	f007 fa93 	bl	c0de7910 <pic>
c0de03ea:	7880      	ldrb	r0, [r0, #2]
c0de03ec:	2801      	cmp	r0, #1
c0de03ee:	d00d      	beq.n	c0de040c <app_main+0x48>
c0de03f0:	2001      	movs	r0, #1
c0de03f2:	f88d 0002 	strb.w	r0, [sp, #2]
c0de03f6:	2000      	movs	r0, #0
c0de03f8:	f8ad 0000 	strh.w	r0, [sp]
c0de03fc:	4815      	ldr	r0, [pc, #84]	@ (c0de0454 <app_main+0x90>)
c0de03fe:	4478      	add	r0, pc
c0de0400:	f007 fa86 	bl	c0de7910 <pic>
c0de0404:	4669      	mov	r1, sp
c0de0406:	2203      	movs	r2, #3
c0de0408:	f007 fab2 	bl	c0de7970 <nvm_write>
c0de040c:	4d0f      	ldr	r5, [pc, #60]	@ (c0de044c <app_main+0x88>)
c0de040e:	ac01      	add	r4, sp, #4
c0de0410:	f006 fdb0 	bl	c0de6f74 <io_recv_command>
c0de0414:	2800      	cmp	r0, #0
c0de0416:	d414      	bmi.n	c0de0442 <app_main+0x7e>
c0de0418:	4602      	mov	r2, r0
c0de041a:	eb09 0105 	add.w	r1, r9, r5
c0de041e:	4620      	mov	r0, r4
c0de0420:	f006 fea8 	bl	c0de7174 <apdu_parser>
c0de0424:	b130      	cbz	r0, c0de0434 <app_main+0x70>
c0de0426:	4620      	mov	r0, r4
c0de0428:	f7ff fe23 	bl	c0de0072 <apdu_dispatcher>
c0de042c:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0430:	dcee      	bgt.n	c0de0410 <app_main+0x4c>
c0de0432:	e006      	b.n	c0de0442 <app_main+0x7e>
c0de0434:	2000      	movs	r0, #0
c0de0436:	2100      	movs	r1, #0
c0de0438:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de043c:	f006 fdb0 	bl	c0de6fa0 <io_send_response_buffers>
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
c0de045e:	f007 fa57 	bl	c0de7910 <pic>
c0de0462:	2100      	movs	r1, #0
c0de0464:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0468:	9103      	str	r1, [sp, #12]
c0de046a:	2107      	movs	r1, #7
c0de046c:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0470:	a801      	add	r0, sp, #4
c0de0472:	2101      	movs	r1, #1
c0de0474:	f006 fd94 	bl	c0de6fa0 <io_send_response_buffers>
c0de0478:	b004      	add	sp, #16
c0de047a:	bd80      	pop	{r7, pc}
c0de047c:	000080ca 	.word	0x000080ca

c0de0480 <handler_get_public_key>:
c0de0480:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0482:	b085      	sub	sp, #20
c0de0484:	4f23      	ldr	r7, [pc, #140]	@ (c0de0514 <handler_get_public_key+0x94>)
c0de0486:	460c      	mov	r4, r1
c0de0488:	4605      	mov	r5, r0
c0de048a:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de048e:	eb09 0607 	add.w	r6, r9, r7
c0de0492:	4630      	mov	r0, r6
c0de0494:	f007 fd56 	bl	c0de7f44 <explicit_bzero>
c0de0498:	2000      	movs	r0, #0
c0de049a:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de049e:	f809 0007 	strb.w	r0, [r9, r7]
c0de04a2:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de04a6:	4628      	mov	r0, r5
c0de04a8:	f006 fb28 	bl	c0de6afc <buffer_read_u8>
c0de04ac:	b308      	cbz	r0, c0de04f2 <handler_get_public_key+0x72>
c0de04ae:	eb09 0007 	add.w	r0, r9, r7
c0de04b2:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de04b6:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de04ba:	4628      	mov	r0, r5
c0de04bc:	f006 fb71 	bl	c0de6ba2 <buffer_read_bip32_path>
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
c0de04e8:	f006 fc1c 	bl	c0de6d24 <bip32_derive_with_seed_get_pubkey_256>
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
c0de050a:	f001 b9bb 	beq.w	c0de1884 <helper_send_response_pubkey>
c0de050e:	f001 bcd7 	b.w	c0de1ec0 <ui_display_address>
c0de0512:	bf00      	nop
c0de0514:	00000000 	.word	0x00000000

c0de0518 <io_send_sw>:
c0de0518:	b580      	push	{r7, lr}
c0de051a:	4602      	mov	r2, r0
c0de051c:	2000      	movs	r0, #0
c0de051e:	2100      	movs	r1, #0
c0de0520:	f006 fd3e 	bl	c0de6fa0 <io_send_response_buffers>
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
c0de054c:	f006 fd28 	bl	c0de6fa0 <io_send_response_buffers>
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
c0de058e:	f007 fcd9 	bl	c0de7f44 <explicit_bzero>
c0de0592:	2000      	movs	r0, #0
c0de0594:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de0598:	f809 0006 	strb.w	r0, [r9, r6]
c0de059c:	2001      	movs	r0, #1
c0de059e:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de05a2:	4620      	mov	r0, r4
c0de05a4:	f006 faaa 	bl	c0de6afc <buffer_read_u8>
c0de05a8:	b148      	cbz	r0, c0de05be <handler_sign_tx+0x6a>
c0de05aa:	eb09 0006 	add.w	r0, r9, r6
c0de05ae:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de05b2:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de05b6:	4620      	mov	r0, r4
c0de05b8:	f006 faf3 	bl	c0de6ba2 <buffer_read_bip32_path>
c0de05bc:	b9b8      	cbnz	r0, c0de05ee <handler_sign_tx+0x9a>
c0de05be:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de05c2:	e019      	b.n	c0de05f8 <handler_sign_tx+0xa4>
c0de05c4:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de05c8:	e016      	b.n	c0de05f8 <handler_sign_tx+0xa4>
c0de05ca:	eb09 0106 	add.w	r1, r9, r6
c0de05ce:	4408      	add	r0, r1
c0de05d0:	f100 0108 	add.w	r1, r0, #8
c0de05d4:	4620      	mov	r0, r4
c0de05d6:	f006 fb0e 	bl	c0de6bf6 <buffer_move>
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
c0de0618:	f001 fa8e 	bl	c0de1b38 <transaction_deserialize>
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
c0de063e:	f006 ff0f 	bl	c0de7460 <cx_keccak_256_hash_iovec>
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
c0de0678:	f001 fa1e 	bl	c0de1ab8 <swap_check_validity>
c0de067c:	b110      	cbz	r0, c0de0684 <handler_sign_tx+0x130>
c0de067e:	2001      	movs	r0, #1
c0de0680:	f001 fae4 	bl	c0de1c4c <validate_transaction>
c0de0684:	2000      	movs	r0, #0
c0de0686:	e7e4      	b.n	c0de0652 <handler_sign_tx+0xfe>
c0de0688:	eb09 0006 	add.w	r0, r9, r6
c0de068c:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0690:	4909      	ldr	r1, [pc, #36]	@ (c0de06b8 <handler_sign_tx+0x164>)
c0de0692:	4479      	add	r1, pc
c0de0694:	f007 fc9a 	bl	c0de7fcc <strcmp>
c0de0698:	b110      	cbz	r0, c0de06a0 <handler_sign_tx+0x14c>
c0de069a:	f001 fd02 	bl	c0de20a2 <ui_display_transaction>
c0de069e:	e7d8      	b.n	c0de0652 <handler_sign_tx+0xfe>
c0de06a0:	f001 fcfc 	bl	c0de209c <ui_display_blind_signed_transaction>
c0de06a4:	e7d5      	b.n	c0de0652 <handler_sign_tx+0xfe>
c0de06a6:	20ff      	movs	r0, #255	@ 0xff
c0de06a8:	f007 faf8 	bl	c0de7c9c <os_sched_exit>
c0de06ac:	00000000 	.word	0x00000000
c0de06b0:	00000b5c 	.word	0x00000b5c
c0de06b4:	00000b5d 	.word	0x00000b5d
c0de06b8:	00007b88 	.word	0x00007b88

c0de06bc <io_send_sw>:
c0de06bc:	b580      	push	{r7, lr}
c0de06be:	4602      	mov	r2, r0
c0de06c0:	2000      	movs	r0, #0
c0de06c2:	2100      	movs	r1, #0
c0de06c4:	f006 fc6c 	bl	c0de6fa0 <io_send_response_buffers>
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
c0de06dc:	f001 fce4 	bl	c0de20a8 <zkn_prv_hash>
c0de06e0:	b988      	cbnz	r0, c0de0706 <handler_cmd_blake2b512+0x3c>
c0de06e2:	a840      	add	r0, sp, #256	@ 0x100
c0de06e4:	2140      	movs	r1, #64	@ 0x40
c0de06e6:	f000 f817 	bl	c0de0718 <io_send_response_pointer>
c0de06ea:	2000      	movs	r0, #0
c0de06ec:	e00d      	b.n	c0de070a <handler_cmd_blake2b512+0x40>
c0de06ee:	4668      	mov	r0, sp
c0de06f0:	2109      	movs	r1, #9
c0de06f2:	2240      	movs	r2, #64	@ 0x40
c0de06f4:	f006 fee2 	bl	c0de74bc <cx_hash_init_ex>
c0de06f8:	b928      	cbnz	r0, c0de0706 <handler_cmd_blake2b512+0x3c>
c0de06fa:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06fe:	4668      	mov	r0, sp
c0de0700:	f006 fee1 	bl	c0de74c6 <cx_hash_update>
c0de0704:	b118      	cbz	r0, c0de070e <handler_cmd_blake2b512+0x44>
c0de0706:	f001 f88f 	bl	c0de1828 <OUTLINED_FUNCTION_1>
c0de070a:	b050      	add	sp, #320	@ 0x140
c0de070c:	bd10      	pop	{r4, pc}
c0de070e:	4668      	mov	r0, sp
c0de0710:	a940      	add	r1, sp, #256	@ 0x100
c0de0712:	f006 fece 	bl	c0de74b2 <cx_hash_final>
c0de0716:	e7e3      	b.n	c0de06e0 <handler_cmd_blake2b512+0x16>

c0de0718 <io_send_response_pointer>:
c0de0718:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de071a:	2200      	movs	r2, #0
c0de071c:	ab01      	add	r3, sp, #4
c0de071e:	c307      	stmia	r3!, {r0, r1, r2}
c0de0720:	a801      	add	r0, sp, #4
c0de0722:	2101      	movs	r1, #1
c0de0724:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0728:	f006 fc3a 	bl	c0de6fa0 <io_send_response_buffers>
c0de072c:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de072e <io_send_sw>:
c0de072e:	b580      	push	{r7, lr}
c0de0730:	4602      	mov	r2, r0
c0de0732:	2000      	movs	r0, #0
c0de0734:	2100      	movs	r1, #0
c0de0736:	f006 fc33 	bl	c0de6fa0 <io_send_response_buffers>
c0de073a:	bd80      	pop	{r7, pc}

c0de073c <handler_cmd_keccakH>:
c0de073c:	b510      	push	{r4, lr}
c0de073e:	b0f2      	sub	sp, #456	@ 0x1c8
c0de0740:	4604      	mov	r4, r0
c0de0742:	4668      	mov	r0, sp
c0de0744:	2106      	movs	r1, #6
c0de0746:	2220      	movs	r2, #32
c0de0748:	f006 feb8 	bl	c0de74bc <cx_hash_init_ex>
c0de074c:	b950      	cbnz	r0, c0de0764 <handler_cmd_keccakH+0x28>
c0de074e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0752:	4668      	mov	r0, sp
c0de0754:	f006 feb7 	bl	c0de74c6 <cx_hash_update>
c0de0758:	b920      	cbnz	r0, c0de0764 <handler_cmd_keccakH+0x28>
c0de075a:	4668      	mov	r0, sp
c0de075c:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de075e:	f006 fea8 	bl	c0de74b2 <cx_hash_final>
c0de0762:	b118      	cbz	r0, c0de076c <handler_cmd_keccakH+0x30>
c0de0764:	f001 f860 	bl	c0de1828 <OUTLINED_FUNCTION_1>
c0de0768:	b072      	add	sp, #456	@ 0x1c8
c0de076a:	bd10      	pop	{r4, pc}
c0de076c:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de076e:	f001 f87a 	bl	c0de1866 <OUTLINED_FUNCTION_9>
c0de0772:	2000      	movs	r0, #0
c0de0774:	e7f8      	b.n	c0de0768 <handler_cmd_keccakH+0x2c>
	...

c0de0778 <handler_cmd_bolos_stretch>:
c0de0778:	b510      	push	{r4, lr}
c0de077a:	b0a4      	sub	sp, #144	@ 0x90
c0de077c:	f001 f850 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de0780:	bb90      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de0782:	ac14      	add	r4, sp, #80	@ 0x50
c0de0784:	491d      	ldr	r1, [pc, #116]	@ (c0de07fc <handler_cmd_bolos_stretch+0x84>)
c0de0786:	2220      	movs	r2, #32
c0de0788:	4620      	mov	r0, r4
c0de078a:	4479      	add	r1, pc
c0de078c:	f007 fbc2 	bl	c0de7f14 <__aeabi_memcpy>
c0de0790:	a80c      	add	r0, sp, #48	@ 0x30
c0de0792:	491b      	ldr	r1, [pc, #108]	@ (c0de0800 <handler_cmd_bolos_stretch+0x88>)
c0de0794:	2220      	movs	r2, #32
c0de0796:	4479      	add	r1, pc
c0de0798:	f007 fbbc 	bl	c0de7f14 <__aeabi_memcpy>
c0de079c:	a804      	add	r0, sp, #16
c0de079e:	4919      	ldr	r1, [pc, #100]	@ (c0de0804 <handler_cmd_bolos_stretch+0x8c>)
c0de07a0:	2220      	movs	r2, #32
c0de07a2:	4479      	add	r1, pc
c0de07a4:	f007 fbb6 	bl	c0de7f14 <__aeabi_memcpy>
c0de07a8:	a803      	add	r0, sp, #12
c0de07aa:	2120      	movs	r1, #32
c0de07ac:	4622      	mov	r2, r4
c0de07ae:	f001 f848 	bl	c0de1842 <OUTLINED_FUNCTION_5>
c0de07b2:	b9c8      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07b4:	a802      	add	r0, sp, #8
c0de07b6:	aa0c      	add	r2, sp, #48	@ 0x30
c0de07b8:	f001 f839 	bl	c0de182e <OUTLINED_FUNCTION_2>
c0de07bc:	b9a0      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07be:	a801      	add	r0, sp, #4
c0de07c0:	aa04      	add	r2, sp, #16
c0de07c2:	f001 f834 	bl	c0de182e <OUTLINED_FUNCTION_2>
c0de07c6:	b978      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07c8:	4668      	mov	r0, sp
c0de07ca:	f001 f837 	bl	c0de183c <OUTLINED_FUNCTION_4>
c0de07ce:	b958      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07d0:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de07d4:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de07d8:	f007 f960 	bl	c0de7a9c <cx_bn_mod_add>
c0de07dc:	b920      	cbnz	r0, c0de07e8 <handler_cmd_bolos_stretch+0x70>
c0de07de:	9800      	ldr	r0, [sp, #0]
c0de07e0:	a91c      	add	r1, sp, #112	@ 0x70
c0de07e2:	f001 f828 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de07e6:	b118      	cbz	r0, c0de07f0 <handler_cmd_bolos_stretch+0x78>
c0de07e8:	f001 f81e 	bl	c0de1828 <OUTLINED_FUNCTION_1>
c0de07ec:	b024      	add	sp, #144	@ 0x90
c0de07ee:	bd10      	pop	{r4, pc}
c0de07f0:	a81c      	add	r0, sp, #112	@ 0x70
c0de07f2:	f001 f838 	bl	c0de1866 <OUTLINED_FUNCTION_9>
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
c0de081a:	f007 fb7b 	bl	c0de7f14 <__aeabi_memcpy>
c0de081e:	f000 ffff 	bl	c0de1820 <OUTLINED_FUNCTION_0>
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
c0de083e:	f007 fb69 	bl	c0de7f14 <__aeabi_memcpy>
c0de0842:	a809      	add	r0, sp, #36	@ 0x24
c0de0844:	2120      	movs	r1, #32
c0de0846:	462a      	mov	r2, r5
c0de0848:	f000 fffb 	bl	c0de1842 <OUTLINED_FUNCTION_5>
c0de084c:	b9b8      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de084e:	a808      	add	r0, sp, #32
c0de0850:	466a      	mov	r2, sp
c0de0852:	f000 ffec 	bl	c0de182e <OUTLINED_FUNCTION_2>
c0de0856:	b990      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de0858:	a80a      	add	r0, sp, #40	@ 0x28
c0de085a:	2120      	movs	r1, #32
c0de085c:	f007 f964 	bl	c0de7b28 <cx_mont_alloc>
c0de0860:	b968      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de0862:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de0864:	a80a      	add	r0, sp, #40	@ 0x28
c0de0866:	f007 f969 	bl	c0de7b3c <cx_mont_init>
c0de086a:	b940      	cbnz	r0, c0de087e <handler_cmd_Poseidon+0x76>
c0de086c:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de0870:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0872:	2105      	movs	r1, #5
c0de0874:	2205      	movs	r2, #5
c0de0876:	4640      	mov	r0, r8
c0de0878:	f002 fed6 	bl	c0de3628 <Poseidon_alloc_init>
c0de087c:	b128      	cbz	r0, c0de088a <handler_cmd_Poseidon+0x82>
c0de087e:	f000 ffd3 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de089e:	f007 f8ad 	bl	c0de79fc <cx_bn_init>
c0de08a2:	2800      	cmp	r0, #0
c0de08a4:	d1eb      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08a6:	69e8      	ldr	r0, [r5, #28]
c0de08a8:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de08aa:	4601      	mov	r1, r0
c0de08ac:	f007 f950 	bl	c0de7b50 <cx_mont_to_montgomery>
c0de08b0:	3701      	adds	r7, #1
c0de08b2:	3620      	adds	r6, #32
c0de08b4:	2800      	cmp	r0, #0
c0de08b6:	d0ea      	beq.n	c0de088e <handler_cmd_Poseidon+0x86>
c0de08b8:	e7e1      	b.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08ba:	aa08      	add	r2, sp, #32
c0de08bc:	4640      	mov	r0, r8
c0de08be:	2100      	movs	r1, #0
c0de08c0:	2301      	movs	r3, #1
c0de08c2:	f002 ff17 	bl	c0de36f4 <Poseidon>
c0de08c6:	6820      	ldr	r0, [r4, #0]
c0de08c8:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de08ca:	7800      	ldrb	r0, [r0, #0]
c0de08cc:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de08d0:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de08d4:	4601      	mov	r1, r0
c0de08d6:	f007 f947 	bl	c0de7b68 <cx_mont_from_montgomery>
c0de08da:	2800      	cmp	r0, #0
c0de08dc:	d1cf      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08de:	6820      	ldr	r0, [r4, #0]
c0de08e0:	a948      	add	r1, sp, #288	@ 0x120
c0de08e2:	f000 ffa8 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de08e6:	2800      	cmp	r0, #0
c0de08e8:	d1c9      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08ea:	a848      	add	r0, sp, #288	@ 0x120
c0de08ec:	2160      	movs	r1, #96	@ 0x60
c0de08ee:	f7ff ff13 	bl	c0de0718 <io_send_response_pointer>
c0de08f2:	a808      	add	r0, sp, #32
c0de08f4:	f007 f86e 	bl	c0de79d4 <cx_bn_destroy>
c0de08f8:	2800      	cmp	r0, #0
c0de08fa:	d1c0      	bne.n	c0de087e <handler_cmd_Poseidon+0x76>
c0de08fc:	f007 f84c 	bl	c0de7998 <cx_bn_unlock>
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
c0de0916:	f000 ff83 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de091a:	bba0      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de091c:	a848      	add	r0, sp, #288	@ 0x120
c0de091e:	491d      	ldr	r1, [pc, #116]	@ (c0de0994 <handler_cmd_Poseidon_ithRC+0x84>)
c0de0920:	2220      	movs	r2, #32
c0de0922:	4479      	add	r1, pc
c0de0924:	f007 faf6 	bl	c0de7f14 <__aeabi_memcpy>
c0de0928:	ad01      	add	r5, sp, #4
c0de092a:	491b      	ldr	r1, [pc, #108]	@ (c0de0998 <handler_cmd_Poseidon_ithRC+0x88>)
c0de092c:	2220      	movs	r2, #32
c0de092e:	4628      	mov	r0, r5
c0de0930:	4479      	add	r1, pc
c0de0932:	f007 faef 	bl	c0de7f14 <__aeabi_memcpy>
c0de0936:	a809      	add	r0, sp, #36	@ 0x24
c0de0938:	2120      	movs	r1, #32
c0de093a:	462a      	mov	r2, r5
c0de093c:	f000 ff81 	bl	c0de1842 <OUTLINED_FUNCTION_5>
c0de0940:	bb08      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de0942:	a80a      	add	r0, sp, #40	@ 0x28
c0de0944:	2120      	movs	r1, #32
c0de0946:	f007 f8ef 	bl	c0de7b28 <cx_mont_alloc>
c0de094a:	b9e0      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de094c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de094e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0950:	f007 f8f4 	bl	c0de7b3c <cx_mont_init>
c0de0954:	b9b8      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de0956:	a80c      	add	r0, sp, #48	@ 0x30
c0de0958:	ab0a      	add	r3, sp, #40	@ 0x28
c0de095a:	2105      	movs	r1, #5
c0de095c:	2205      	movs	r2, #5
c0de095e:	f002 fe63 	bl	c0de3628 <Poseidon_alloc_init>
c0de0962:	b980      	cbnz	r0, c0de0986 <handler_cmd_Poseidon_ithRC+0x76>
c0de0964:	6820      	ldr	r0, [r4, #0]
c0de0966:	7806      	ldrb	r6, [r0, #0]
c0de0968:	ac0c      	add	r4, sp, #48	@ 0x30
c0de096a:	ad48      	add	r5, sp, #288	@ 0x120
c0de096c:	b12e      	cbz	r6, c0de097a <handler_cmd_Poseidon_ithRC+0x6a>
c0de096e:	4620      	mov	r0, r4
c0de0970:	4629      	mov	r1, r5
c0de0972:	f002 fe55 	bl	c0de3620 <Poseidon_getNext_RC>
c0de0976:	3e01      	subs	r6, #1
c0de0978:	e7f8      	b.n	c0de096c <handler_cmd_Poseidon_ithRC+0x5c>
c0de097a:	a848      	add	r0, sp, #288	@ 0x120
c0de097c:	f000 ff73 	bl	c0de1866 <OUTLINED_FUNCTION_9>
c0de0980:	f007 f80a 	bl	c0de7998 <cx_bn_unlock>
c0de0984:	b118      	cbz	r0, c0de098e <handler_cmd_Poseidon_ithRC+0x7e>
c0de0986:	f000 ff4f 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de09ce:	f000 ff27 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de09d2:	b9e8      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09d4:	a804      	add	r0, sp, #16
c0de09d6:	f000 ff52 	bl	c0de187e <OUTLINED_FUNCTION_12>
c0de09da:	b9c8      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09dc:	a804      	add	r0, sp, #16
c0de09de:	a901      	add	r1, sp, #4
c0de09e0:	f002 f906 	bl	c0de2bf0 <tEdwards_alloc>
c0de09e4:	b9a0      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09e6:	a804      	add	r0, sp, #16
c0de09e8:	a91a      	add	r1, sp, #104	@ 0x68
c0de09ea:	aa01      	add	r2, sp, #4
c0de09ec:	f001 fb92 	bl	c0de2114 <zkn_prv2pub>
c0de09f0:	b970      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09f2:	a804      	add	r0, sp, #16
c0de09f4:	f104 0320 	add.w	r3, r4, #32
c0de09f8:	a901      	add	r1, sp, #4
c0de09fa:	f000 ff37 	bl	c0de186c <OUTLINED_FUNCTION_10>
c0de09fe:	b938      	cbnz	r0, c0de0a10 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0a00:	9804      	ldr	r0, [sp, #16]
c0de0a02:	0041      	lsls	r1, r0, #1
c0de0a04:	a85a      	add	r0, sp, #360	@ 0x168
c0de0a06:	f7ff fe87 	bl	c0de0718 <io_send_response_pointer>
c0de0a0a:	f006 ffc5 	bl	c0de7998 <cx_bn_unlock>
c0de0a0e:	b120      	cbz	r0, c0de0a1a <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de0a10:	f000 ff0a 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de0a52:	f000 fee5 	bl	c0de1820 <OUTLINED_FUNCTION_0>
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
c0de0a76:	f000 ff02 	bl	c0de187e <OUTLINED_FUNCTION_12>
c0de0a7a:	bb10      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a7c:	a815      	add	r0, sp, #84	@ 0x54
c0de0a7e:	a912      	add	r1, sp, #72	@ 0x48
c0de0a80:	f002 f8b6 	bl	c0de2bf0 <tEdwards_alloc>
c0de0a84:	b9e8      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a86:	a815      	add	r0, sp, #84	@ 0x54
c0de0a88:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a8a:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a8c:	f001 fb42 	bl	c0de2114 <zkn_prv2pub>
c0de0a90:	b9b8      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a92:	a815      	add	r0, sp, #84	@ 0x54
c0de0a94:	f104 0320 	add.w	r3, r4, #32
c0de0a98:	a912      	add	r1, sp, #72	@ 0x48
c0de0a9a:	f000 fee7 	bl	c0de186c <OUTLINED_FUNCTION_10>
c0de0a9e:	b980      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0aa0:	2020      	movs	r0, #32
c0de0aa2:	e9cd 0400 	strd	r0, r4, [sp]
c0de0aa6:	a815      	add	r0, sp, #84	@ 0x54
c0de0aa8:	a90a      	add	r1, sp, #40	@ 0x28
c0de0aaa:	aa12      	add	r2, sp, #72	@ 0x48
c0de0aac:	ab02      	add	r3, sp, #8
c0de0aae:	f001 fb59 	bl	c0de2164 <EddsaPoseidon_Sign_final>
c0de0ab2:	b930      	cbnz	r0, c0de0ac2 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0ab4:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0ab6:	2160      	movs	r1, #96	@ 0x60
c0de0ab8:	f7ff fe2e 	bl	c0de0718 <io_send_response_pointer>
c0de0abc:	f006 ff6c 	bl	c0de7998 <cx_bn_unlock>
c0de0ac0:	b120      	cbz	r0, c0de0acc <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0ac2:	f000 feb1 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de0af0:	f000 fe96 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de0af4:	2800      	cmp	r0, #0
c0de0af6:	d154      	bne.n	c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0af8:	af14      	add	r7, sp, #80	@ 0x50
c0de0afa:	4631      	mov	r1, r6
c0de0afc:	4638      	mov	r0, r7
c0de0afe:	f002 f9f7 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de0b02:	2800      	cmp	r0, #0
c0de0b04:	d14d      	bne.n	c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b06:	f107 060c 	add.w	r6, r7, #12
c0de0b0a:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0b0e:	4638      	mov	r0, r7
c0de0b10:	4631      	mov	r1, r6
c0de0b12:	f002 f996 	bl	c0de2e42 <tEdwards_IsOnCurve>
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
c0de0b32:	f007 f9ef 	bl	c0de7f14 <__aeabi_memcpy>
c0de0b36:	af01      	add	r7, sp, #4
c0de0b38:	491e      	ldr	r1, [pc, #120]	@ (c0de0bb4 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0b3a:	2220      	movs	r2, #32
c0de0b3c:	4638      	mov	r0, r7
c0de0b3e:	4479      	add	r1, pc
c0de0b40:	f007 f9e8 	bl	c0de7f14 <__aeabi_memcpy>
c0de0b44:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0b48:	a814      	add	r0, sp, #80	@ 0x50
c0de0b4a:	4651      	mov	r1, sl
c0de0b4c:	463a      	mov	r2, r7
c0de0b4e:	4643      	mov	r3, r8
c0de0b50:	f002 fbbf 	bl	c0de32d2 <tEdwards_alloc_init>
c0de0b54:	bb28      	cbnz	r0, c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b56:	a814      	add	r0, sp, #80	@ 0x50
c0de0b58:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0b5c:	4631      	mov	r1, r6
c0de0b5e:	f002 f970 	bl	c0de2e42 <tEdwards_IsOnCurve>
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
c0de0b80:	f002 fc2c 	bl	c0de33dc <tEdwards_scalarMul>
c0de0b84:	b968      	cbnz	r0, c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b86:	a814      	add	r0, sp, #80	@ 0x50
c0de0b88:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b8c:	a911      	add	r1, sp, #68	@ 0x44
c0de0b8e:	f000 fe6d 	bl	c0de186c <OUTLINED_FUNCTION_10>
c0de0b92:	b930      	cbnz	r0, c0de0ba2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b94:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b98:	f000 fe5d 	bl	c0de1856 <OUTLINED_FUNCTION_7>
c0de0b9c:	f006 fefc 	bl	c0de7998 <cx_bn_unlock>
c0de0ba0:	b120      	cbz	r0, c0de0bac <handler_cmd_tEddsaPoseidon+0xdc>
c0de0ba2:	f000 fe41 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de0be4:	f000 fe1c 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de0be8:	b920      	cbnz	r0, c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0bea:	a819      	add	r0, sp, #100	@ 0x64
c0de0bec:	4631      	mov	r1, r6
c0de0bee:	f002 f97f 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
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
c0de0c10:	f007 f980 	bl	c0de7f14 <__aeabi_memcpy>
c0de0c14:	af03      	add	r7, sp, #12
c0de0c16:	4940      	ldr	r1, [pc, #256]	@ (c0de0d18 <handler_cmd_tEdwards+0x160>)
c0de0c18:	4479      	add	r1, pc
c0de0c1a:	e009      	b.n	c0de0c30 <handler_cmd_tEdwards+0x78>
c0de0c1c:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0c1e:	493f      	ldr	r1, [pc, #252]	@ (c0de0d1c <handler_cmd_tEdwards+0x164>)
c0de0c20:	2220      	movs	r2, #32
c0de0c22:	4630      	mov	r0, r6
c0de0c24:	4479      	add	r1, pc
c0de0c26:	f007 f975 	bl	c0de7f14 <__aeabi_memcpy>
c0de0c2a:	af03      	add	r7, sp, #12
c0de0c2c:	493c      	ldr	r1, [pc, #240]	@ (c0de0d20 <handler_cmd_tEdwards+0x168>)
c0de0c2e:	4479      	add	r1, pc
c0de0c30:	4638      	mov	r0, r7
c0de0c32:	2220      	movs	r2, #32
c0de0c34:	f007 f96e 	bl	c0de7f14 <__aeabi_memcpy>
c0de0c38:	a819      	add	r0, sp, #100	@ 0x64
c0de0c3a:	ab16      	add	r3, sp, #88	@ 0x58
c0de0c3c:	4631      	mov	r1, r6
c0de0c3e:	463a      	mov	r2, r7
c0de0c40:	f002 fb47 	bl	c0de32d2 <tEdwards_alloc_init>
c0de0c44:	2800      	cmp	r0, #0
c0de0c46:	d1d5      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c48:	a819      	add	r0, sp, #100	@ 0x64
c0de0c4a:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0c4c:	aa03      	add	r2, sp, #12
c0de0c4e:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0c50:	f002 fb3f 	bl	c0de32d2 <tEdwards_alloc_init>
c0de0c54:	2800      	cmp	r0, #0
c0de0c56:	d1cd      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c58:	2000      	movs	r0, #0
c0de0c5a:	f10d 020b 	add.w	r2, sp, #11
c0de0c5e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0c62:	a819      	add	r0, sp, #100	@ 0x64
c0de0c64:	a916      	add	r1, sp, #88	@ 0x58
c0de0c66:	f002 f8ec 	bl	c0de2e42 <tEdwards_IsOnCurve>
c0de0c6a:	2800      	cmp	r0, #0
c0de0c6c:	d1c2      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c6e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c72:	2801      	cmp	r0, #1
c0de0c74:	d142      	bne.n	c0de0cfc <handler_cmd_tEdwards+0x144>
c0de0c76:	a819      	add	r0, sp, #100	@ 0x64
c0de0c78:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c7a:	f10d 020b 	add.w	r2, sp, #11
c0de0c7e:	4631      	mov	r1, r6
c0de0c80:	f002 f8df 	bl	c0de2e42 <tEdwards_IsOnCurve>
c0de0c84:	2800      	cmp	r0, #0
c0de0c86:	d1b5      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c88:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c8c:	2801      	cmp	r0, #1
c0de0c8e:	d138      	bne.n	c0de0d02 <handler_cmd_tEdwards+0x14a>
c0de0c90:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c92:	f10d 010b 	add.w	r1, sp, #11
c0de0c96:	f006 ff3d 	bl	c0de7b14 <cx_bn_is_prime>
c0de0c9a:	2800      	cmp	r0, #0
c0de0c9c:	d1aa      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0c9e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0ca2:	2801      	cmp	r0, #1
c0de0ca4:	d130      	bne.n	c0de0d08 <handler_cmd_tEdwards+0x150>
c0de0ca6:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0ca8:	f10d 010b 	add.w	r1, sp, #11
c0de0cac:	f006 ff32 	bl	c0de7b14 <cx_bn_is_prime>
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
c0de0cca:	f002 fb87 	bl	c0de33dc <tEdwards_scalarMul>
c0de0cce:	2800      	cmp	r0, #0
c0de0cd0:	d190      	bne.n	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0cd2:	a819      	add	r0, sp, #100	@ 0x64
c0de0cd4:	f104 0320 	add.w	r3, r4, #32
c0de0cd8:	a913      	add	r1, sp, #76	@ 0x4c
c0de0cda:	f000 fdc7 	bl	c0de186c <OUTLINED_FUNCTION_10>
c0de0cde:	2800      	cmp	r0, #0
c0de0ce0:	f47f af88 	bne.w	c0de0bf4 <handler_cmd_tEdwards+0x3c>
c0de0ce4:	f006 fe58 	bl	c0de7998 <cx_bn_unlock>
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
c0de0d44:	f000 fd6c 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de0d48:	bb28      	cbnz	r0, c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0d4a:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0d4e:	4621      	mov	r1, r4
c0de0d50:	4640      	mov	r0, r8
c0de0d52:	f002 f8cd 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de0d56:	b9f0      	cbnz	r0, c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0d58:	a827      	add	r0, sp, #156	@ 0x9c
c0de0d5a:	f000 fd6f 	bl	c0de183c <OUTLINED_FUNCTION_4>
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
c0de0d8a:	f006 fe17 	bl	c0de79bc <cx_bn_alloc_init>
c0de0d8e:	2800      	cmp	r0, #0
c0de0d90:	462a      	mov	r2, r5
c0de0d92:	4621      	mov	r1, r4
c0de0d94:	d0f1      	beq.n	c0de0d7a <handler_cmd_Interpolate+0x56>
c0de0d96:	f000 fd47 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de0dc4:	f006 fdf0 	bl	c0de79a8 <cx_bn_alloc>
c0de0dc8:	2800      	cmp	r0, #0
c0de0dca:	d1e4      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0dcc:	6820      	ldr	r0, [r4, #0]
c0de0dce:	4631      	mov	r1, r6
c0de0dd0:	f006 fe2a 	bl	c0de7a28 <cx_bn_set_u32>
c0de0dd4:	2800      	cmp	r0, #0
c0de0dd6:	d1de      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0dd8:	4640      	mov	r0, r8
c0de0dda:	4659      	mov	r1, fp
c0de0ddc:	f001 ff08 	bl	c0de2bf0 <tEdwards_alloc>
c0de0de0:	2800      	cmp	r0, #0
c0de0de2:	d1d8      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0de4:	9602      	str	r6, [sp, #8]
c0de0de6:	eb07 060a 	add.w	r6, r7, sl
c0de0dea:	9901      	ldr	r1, [sp, #4]
c0de0dec:	4640      	mov	r0, r8
c0de0dee:	465b      	mov	r3, fp
c0de0df0:	4632      	mov	r2, r6
c0de0df2:	f002 fa8d 	bl	c0de3310 <tEdwards_scalarMul_bn>
c0de0df6:	2800      	cmp	r0, #0
c0de0df8:	d1cd      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0dfa:	6820      	ldr	r0, [r4, #0]
c0de0dfc:	4629      	mov	r1, r5
c0de0dfe:	f000 fd1a 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de0e02:	2800      	cmp	r0, #0
c0de0e04:	d1c7      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e06:	6830      	ldr	r0, [r6, #0]
c0de0e08:	f105 0120 	add.w	r1, r5, #32
c0de0e0c:	f000 fd13 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de0e10:	2800      	cmp	r0, #0
c0de0e12:	d1c0      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e14:	4640      	mov	r0, r8
c0de0e16:	4659      	mov	r1, fp
c0de0e18:	f002 fa1b 	bl	c0de3252 <tEdwards_normalize>
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
c0de0e3e:	f001 fb48 	bl	c0de24d2 <zkn_frost_interpolate_secrets>
c0de0e42:	2800      	cmp	r0, #0
c0de0e44:	d1a7      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e46:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0e48:	a944      	add	r1, sp, #272	@ 0x110
c0de0e4a:	2220      	movs	r2, #32
c0de0e4c:	31c0      	adds	r1, #192	@ 0xc0
c0de0e4e:	f006 fdf5 	bl	c0de7a3c <cx_bn_export>
c0de0e52:	2800      	cmp	r0, #0
c0de0e54:	d19f      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e56:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e58:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0e5a:	ab03      	add	r3, sp, #12
c0de0e5c:	9901      	ldr	r1, [sp, #4]
c0de0e5e:	f002 fa57 	bl	c0de3310 <tEdwards_scalarMul_bn>
c0de0e62:	2800      	cmp	r0, #0
c0de0e64:	d197      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e66:	a844      	add	r0, sp, #272	@ 0x110
c0de0e68:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e6c:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e6e:	a903      	add	r1, sp, #12
c0de0e70:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e72:	f002 f9c8 	bl	c0de3206 <tEdwards_export>
c0de0e76:	2800      	cmp	r0, #0
c0de0e78:	d18d      	bne.n	c0de0d96 <handler_cmd_Interpolate+0x72>
c0de0e7a:	a844      	add	r0, sp, #272	@ 0x110
c0de0e7c:	f000 fceb 	bl	c0de1856 <OUTLINED_FUNCTION_7>
c0de0e80:	f006 fd8a 	bl	c0de7998 <cx_bn_unlock>
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
c0de0eae:	f000 fcb7 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de0eb2:	bb90      	cbnz	r0, c0de0f1a <handler_cmd_Split+0x8c>
c0de0eb4:	a832      	add	r0, sp, #200	@ 0xc8
c0de0eb6:	f000 fce2 	bl	c0de187e <OUTLINED_FUNCTION_12>
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
c0de0ee0:	f006 facb 	bl	c0de747a <cx_blake2b_512_hash_iovec>
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
c0de0efc:	f006 fd5e 	bl	c0de79bc <cx_bn_alloc_init>
c0de0f00:	2800      	cmp	r0, #0
c0de0f02:	4632      	mov	r2, r6
c0de0f04:	4629      	mov	r1, r5
c0de0f06:	d0f1      	beq.n	c0de0eec <handler_cmd_Split+0x5e>
c0de0f08:	e007      	b.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f0a:	a80a      	add	r0, sp, #40	@ 0x28
c0de0f0c:	f000 fc96 	bl	c0de183c <OUTLINED_FUNCTION_4>
c0de0f10:	b918      	cbnz	r0, c0de0f1a <handler_cmd_Split+0x8c>
c0de0f12:	a809      	add	r0, sp, #36	@ 0x24
c0de0f14:	f000 fc92 	bl	c0de183c <OUTLINED_FUNCTION_4>
c0de0f18:	b128      	cbz	r0, c0de0f26 <handler_cmd_Split+0x98>
c0de0f1a:	f000 fc85 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de0f46:	f006 fd2f 	bl	c0de79a8 <cx_bn_alloc>
c0de0f4a:	2800      	cmp	r0, #0
c0de0f4c:	d1e5      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f4e:	a801      	add	r0, sp, #4
c0de0f50:	2120      	movs	r1, #32
c0de0f52:	eb00 0508 	add.w	r5, r0, r8
c0de0f56:	4628      	mov	r0, r5
c0de0f58:	f006 fd26 	bl	c0de79a8 <cx_bn_alloc>
c0de0f5c:	2800      	cmp	r0, #0
c0de0f5e:	d1dc      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f60:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f62:	4621      	mov	r1, r4
c0de0f64:	f006 fd60 	bl	c0de7a28 <cx_bn_set_u32>
c0de0f68:	2800      	cmp	r0, #0
c0de0f6a:	d1d6      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f6c:	6828      	ldr	r0, [r5, #0]
c0de0f6e:	4621      	mov	r1, r4
c0de0f70:	f006 fd5a 	bl	c0de7a28 <cx_bn_set_u32>
c0de0f74:	2800      	cmp	r0, #0
c0de0f76:	d1d0      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f78:	4650      	mov	r0, sl
c0de0f7a:	4631      	mov	r1, r6
c0de0f7c:	f001 fe38 	bl	c0de2bf0 <tEdwards_alloc>
c0de0f80:	2800      	cmp	r0, #0
c0de0f82:	d1ca      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f84:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f88:	2202      	movs	r2, #2
c0de0f8a:	9000      	str	r0, [sp, #0]
c0de0f8c:	4650      	mov	r0, sl
c0de0f8e:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f90:	f001 fae1 	bl	c0de2556 <zkn_evalshare>
c0de0f94:	2800      	cmp	r0, #0
c0de0f96:	d1c0      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0f98:	6838      	ldr	r0, [r7, #0]
c0de0f9a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f9c:	f006 fd3a 	bl	c0de7a14 <cx_bn_copy>
c0de0fa0:	2800      	cmp	r0, #0
c0de0fa2:	d1ba      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0fa4:	4650      	mov	r0, sl
c0de0fa6:	4631      	mov	r1, r6
c0de0fa8:	f002 f953 	bl	c0de3252 <tEdwards_normalize>
c0de0fac:	2800      	cmp	r0, #0
c0de0fae:	d1b4      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0fb0:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0fb2:	4659      	mov	r1, fp
c0de0fb4:	f000 fc3f 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de0fb8:	2800      	cmp	r0, #0
c0de0fba:	d1ae      	bne.n	c0de0f1a <handler_cmd_Split+0x8c>
c0de0fbc:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0fbe:	f10b 0120 	add.w	r1, fp, #32
c0de0fc2:	f000 fc38 	bl	c0de1836 <OUTLINED_FUNCTION_3>
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
c0de0fe4:	f006 fcf6 	bl	c0de79d4 <cx_bn_destroy>
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
c0de1000:	f001 fa67 	bl	c0de24d2 <zkn_frost_interpolate_secrets>
c0de1004:	2800      	cmp	r0, #0
c0de1006:	f47f af88 	bne.w	c0de0f1a <handler_cmd_Split+0x8c>
c0de100a:	a848      	add	r0, sp, #288	@ 0x120
c0de100c:	f000 fc23 	bl	c0de1856 <OUTLINED_FUNCTION_7>
c0de1010:	f006 fcc2 	bl	c0de7998 <cx_bn_unlock>
c0de1014:	2800      	cmp	r0, #0
c0de1016:	f47f af80 	bne.w	c0de0f1a <handler_cmd_Split+0x8c>
c0de101a:	2000      	movs	r0, #0
c0de101c:	e77f      	b.n	c0de0f1e <handler_cmd_Split+0x90>

c0de101e <handler_cmd_frostH>:
c0de101e:	b5b0      	push	{r4, r5, r7, lr}
c0de1020:	b0d8      	sub	sp, #352	@ 0x160
c0de1022:	4604      	mov	r4, r0
c0de1024:	f000 fbfc 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de1028:	2800      	cmp	r0, #0
c0de102a:	d142      	bne.n	c0de10b2 <handler_cmd_frostH+0x94>
c0de102c:	6820      	ldr	r0, [r4, #0]
c0de102e:	7801      	ldrb	r1, [r0, #0]
c0de1030:	a802      	add	r0, sp, #8
c0de1032:	f001 ff5d 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de1036:	bbe0      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1038:	a801      	add	r0, sp, #4
c0de103a:	f000 fbff 	bl	c0de183c <OUTLINED_FUNCTION_4>
c0de103e:	bbc0      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1040:	f000 fc02 	bl	c0de1848 <OUTLINED_FUNCTION_6>
c0de1044:	f002 fc72 	bl	c0de392c <Babyfrost_H1>
c0de1048:	bb98      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de104a:	9801      	ldr	r0, [sp, #4]
c0de104c:	ad18      	add	r5, sp, #96	@ 0x60
c0de104e:	2220      	movs	r2, #32
c0de1050:	4629      	mov	r1, r5
c0de1052:	f006 fcf3 	bl	c0de7a3c <cx_bn_export>
c0de1056:	bb60      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1058:	f000 fbf6 	bl	c0de1848 <OUTLINED_FUNCTION_6>
c0de105c:	f002 fc74 	bl	c0de3948 <Babyfrost_H3>
c0de1060:	bb38      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1062:	9801      	ldr	r0, [sp, #4]
c0de1064:	f105 0120 	add.w	r1, r5, #32
c0de1068:	f000 fbe5 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de106c:	bb08      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de106e:	f000 fbeb 	bl	c0de1848 <OUTLINED_FUNCTION_6>
c0de1072:	f002 fc7d 	bl	c0de3970 <Babyfrost_H4>
c0de1076:	b9e0      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1078:	9801      	ldr	r0, [sp, #4]
c0de107a:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de107e:	f000 fbda 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de1082:	b9b0      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de1084:	f000 fbe0 	bl	c0de1848 <OUTLINED_FUNCTION_6>
c0de1088:	f002 fc80 	bl	c0de398c <Babyfrost_H5>
c0de108c:	b988      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de108e:	9801      	ldr	r0, [sp, #4]
c0de1090:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1094:	f000 fbcf 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de1098:	b958      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de109a:	9804      	ldr	r0, [sp, #16]
c0de109c:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de10a0:	f000 fbc9 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de10a4:	b928      	cbnz	r0, c0de10b2 <handler_cmd_frostH+0x94>
c0de10a6:	a818      	add	r0, sp, #96	@ 0x60
c0de10a8:	f000 fbd5 	bl	c0de1856 <OUTLINED_FUNCTION_7>
c0de10ac:	f006 fc74 	bl	c0de7998 <cx_bn_unlock>
c0de10b0:	b118      	cbz	r0, c0de10ba <handler_cmd_frostH+0x9c>
c0de10b2:	f000 fbb9 	bl	c0de1828 <OUTLINED_FUNCTION_1>
c0de10b6:	b058      	add	sp, #352	@ 0x160
c0de10b8:	bdb0      	pop	{r4, r5, r7, pc}
c0de10ba:	2000      	movs	r0, #0
c0de10bc:	e7fb      	b.n	c0de10b6 <handler_cmd_frostH+0x98>
	...

c0de10c0 <handler_cmd_encodeCommitment>:
c0de10c0:	b510      	push	{r4, lr}
c0de10c2:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de10c6:	4604      	mov	r4, r0
c0de10c8:	f000 fbaa 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de10cc:	bb10      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de10ce:	6820      	ldr	r0, [r4, #0]
c0de10d0:	7801      	ldrb	r1, [r0, #0]
c0de10d2:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de10d4:	f001 ff0c 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de10d8:	b9e0      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de10da:	a879      	add	r0, sp, #484	@ 0x1e4
c0de10dc:	f000 fbae 	bl	c0de183c <OUTLINED_FUNCTION_4>
c0de10e0:	b9c0      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de10e2:	ac01      	add	r4, sp, #4
c0de10e4:	4910      	ldr	r1, [pc, #64]	@ (c0de1128 <handler_cmd_encodeCommitment+0x68>)
c0de10e6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10ea:	4620      	mov	r0, r4
c0de10ec:	4479      	add	r1, pc
c0de10ee:	f006 ff11 	bl	c0de7f14 <__aeabi_memcpy>
c0de10f2:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de10f4:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de10f6:	4621      	mov	r1, r4
c0de10f8:	2203      	movs	r2, #3
c0de10fa:	f001 fabd 	bl	c0de2678 <zkn_encode_group_commitmentHash>
c0de10fe:	b948      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de1100:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de1102:	a990      	add	r1, sp, #576	@ 0x240
c0de1104:	2220      	movs	r2, #32
c0de1106:	3120      	adds	r1, #32
c0de1108:	f006 fc98 	bl	c0de7a3c <cx_bn_export>
c0de110c:	b910      	cbnz	r0, c0de1114 <handler_cmd_encodeCommitment+0x54>
c0de110e:	f006 fc43 	bl	c0de7998 <cx_bn_unlock>
c0de1112:	b120      	cbz	r0, c0de111e <handler_cmd_encodeCommitment+0x5e>
c0de1114:	f000 fb88 	bl	c0de1828 <OUTLINED_FUNCTION_1>
c0de1118:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de111c:	bd10      	pop	{r4, pc}
c0de111e:	a890      	add	r0, sp, #576	@ 0x240
c0de1120:	f000 fba1 	bl	c0de1866 <OUTLINED_FUNCTION_9>
c0de1124:	2000      	movs	r0, #0
c0de1126:	e7f7      	b.n	c0de1118 <handler_cmd_encodeCommitment+0x58>
c0de1128:	00007820 	.word	0x00007820

c0de112c <handler_cmd_GroupCommitment>:
c0de112c:	b570      	push	{r4, r5, r6, lr}
c0de112e:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de1132:	4604      	mov	r4, r0
c0de1134:	f000 fb74 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de1138:	bb68      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de113a:	6820      	ldr	r0, [r4, #0]
c0de113c:	7801      	ldrb	r1, [r0, #0]
c0de113e:	a894      	add	r0, sp, #592	@ 0x250
c0de1140:	f001 fed6 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de1144:	bb38      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de1146:	a894      	add	r0, sp, #592	@ 0x250
c0de1148:	ac91      	add	r4, sp, #580	@ 0x244
c0de114a:	4621      	mov	r1, r4
c0de114c:	f001 fd50 	bl	c0de2bf0 <tEdwards_alloc>
c0de1150:	bb08      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de1152:	ad19      	add	r5, sp, #100	@ 0x64
c0de1154:	4915      	ldr	r1, [pc, #84]	@ (c0de11ac <handler_cmd_GroupCommitment+0x80>)
c0de1156:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de115a:	4628      	mov	r0, r5
c0de115c:	4479      	add	r1, pc
c0de115e:	f006 fed9 	bl	c0de7f14 <__aeabi_memcpy>
c0de1162:	ae01      	add	r6, sp, #4
c0de1164:	4912      	ldr	r1, [pc, #72]	@ (c0de11b0 <handler_cmd_GroupCommitment+0x84>)
c0de1166:	2260      	movs	r2, #96	@ 0x60
c0de1168:	4630      	mov	r0, r6
c0de116a:	4479      	add	r1, pc
c0de116c:	f006 fed2 	bl	c0de7f14 <__aeabi_memcpy>
c0de1170:	9400      	str	r4, [sp, #0]
c0de1172:	a894      	add	r0, sp, #592	@ 0x250
c0de1174:	4629      	mov	r1, r5
c0de1176:	4632      	mov	r2, r6
c0de1178:	2303      	movs	r3, #3
c0de117a:	f001 fafa 	bl	c0de2772 <zkn_compute_group_commitment>
c0de117e:	b950      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de1180:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de1182:	a894      	add	r0, sp, #592	@ 0x250
c0de1184:	a991      	add	r1, sp, #580	@ 0x244
c0de1186:	f102 0320 	add.w	r3, r2, #32
c0de118a:	f002 f83c 	bl	c0de3206 <tEdwards_export>
c0de118e:	b910      	cbnz	r0, c0de1196 <handler_cmd_GroupCommitment+0x6a>
c0de1190:	f006 fc02 	bl	c0de7998 <cx_bn_unlock>
c0de1194:	b120      	cbz	r0, c0de11a0 <handler_cmd_GroupCommitment+0x74>
c0de1196:	f000 fb47 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de11be:	f000 fb2f 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de11c2:	2800      	cmp	r0, #0
c0de11c4:	f040 8119 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de11c8:	6820      	ldr	r0, [r4, #0]
c0de11ca:	7801      	ldrb	r1, [r0, #0]
c0de11cc:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11ce:	f001 fe8f 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de11d2:	2800      	cmp	r0, #0
c0de11d4:	f040 8111 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de11d8:	a8de      	add	r0, sp, #888	@ 0x378
c0de11da:	f000 fb2f 	bl	c0de183c <OUTLINED_FUNCTION_4>
c0de11de:	2800      	cmp	r0, #0
c0de11e0:	f040 810b 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de11e4:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11e6:	addb      	add	r5, sp, #876	@ 0x36c
c0de11e8:	4629      	mov	r1, r5
c0de11ea:	f001 fd01 	bl	c0de2bf0 <tEdwards_alloc>
c0de11ee:	2800      	cmp	r0, #0
c0de11f0:	f040 8103 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de11f4:	ac63      	add	r4, sp, #396	@ 0x18c
c0de11f6:	4985      	ldr	r1, [pc, #532]	@ (c0de140c <handler_cmd_BindingFactors+0x258>)
c0de11f8:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de11fc:	4620      	mov	r0, r4
c0de11fe:	4479      	add	r1, pc
c0de1200:	f006 fe88 	bl	c0de7f14 <__aeabi_memcpy>
c0de1204:	9bde      	ldr	r3, [sp, #888]	@ 0x378
c0de1206:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1208:	4621      	mov	r1, r4
c0de120a:	2203      	movs	r2, #3
c0de120c:	f001 fa34 	bl	c0de2678 <zkn_encode_group_commitmentHash>
c0de1210:	2800      	cmp	r0, #0
c0de1212:	f040 80f2 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1216:	f50d 7875 	add.w	r8, sp, #980	@ 0x3d4
c0de121a:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de121c:	2220      	movs	r2, #32
c0de121e:	2620      	movs	r6, #32
c0de1220:	4641      	mov	r1, r8
c0de1222:	f006 fc0b 	bl	c0de7a3c <cx_bn_export>
c0de1226:	2800      	cmp	r0, #0
c0de1228:	f040 80e7 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de122c:	4978      	ldr	r1, [pc, #480]	@ (c0de1410 <handler_cmd_BindingFactors+0x25c>)
c0de122e:	f50d 7ab6 	add.w	sl, sp, #364	@ 0x16c
c0de1232:	2220      	movs	r2, #32
c0de1234:	4650      	mov	r0, sl
c0de1236:	4479      	add	r1, pc
c0de1238:	f006 fe6c 	bl	c0de7f14 <__aeabi_memcpy>
c0de123c:	a853      	add	r0, sp, #332	@ 0x14c
c0de123e:	4975      	ldr	r1, [pc, #468]	@ (c0de1414 <handler_cmd_BindingFactors+0x260>)
c0de1240:	2220      	movs	r2, #32
c0de1242:	4479      	add	r1, pc
c0de1244:	f006 fe66 	bl	c0de7f14 <__aeabi_memcpy>
c0de1248:	ac4b      	add	r4, sp, #300	@ 0x12c
c0de124a:	4973      	ldr	r1, [pc, #460]	@ (c0de1418 <handler_cmd_BindingFactors+0x264>)
c0de124c:	2220      	movs	r2, #32
c0de124e:	4620      	mov	r0, r4
c0de1250:	4479      	add	r1, pc
c0de1252:	f006 fe5f 	bl	c0de7f14 <__aeabi_memcpy>
c0de1256:	f108 0720 	add.w	r7, r8, #32
c0de125a:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de125e:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1260:	aa63      	add	r2, sp, #396	@ 0x18c
c0de1262:	4651      	mov	r1, sl
c0de1264:	2303      	movs	r3, #3
c0de1266:	f001 faf5 	bl	c0de2854 <zkn_compute_binding_factors>
c0de126a:	2800      	cmp	r0, #0
c0de126c:	f040 80c5 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1270:	9500      	str	r5, [sp, #0]
c0de1272:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1274:	a963      	add	r1, sp, #396	@ 0x18c
c0de1276:	463a      	mov	r2, r7
c0de1278:	2303      	movs	r3, #3
c0de127a:	f001 fa7a 	bl	c0de2772 <zkn_compute_group_commitment>
c0de127e:	2800      	cmp	r0, #0
c0de1280:	f040 80bb 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1284:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1286:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de128a:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de128e:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1290:	f001 ffb9 	bl	c0de3206 <tEdwards_export>
c0de1294:	2800      	cmp	r0, #0
c0de1296:	f040 80b0 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de129a:	ad3b      	add	r5, sp, #236	@ 0xec
c0de129c:	495f      	ldr	r1, [pc, #380]	@ (c0de141c <handler_cmd_BindingFactors+0x268>)
c0de129e:	2240      	movs	r2, #64	@ 0x40
c0de12a0:	4628      	mov	r0, r5
c0de12a2:	4479      	add	r1, pc
c0de12a4:	f006 fe36 	bl	c0de7f14 <__aeabi_memcpy>
c0de12a8:	a833      	add	r0, sp, #204	@ 0xcc
c0de12aa:	495d      	ldr	r1, [pc, #372]	@ (c0de1420 <handler_cmd_BindingFactors+0x26c>)
c0de12ac:	2220      	movs	r2, #32
c0de12ae:	2420      	movs	r4, #32
c0de12b0:	4479      	add	r1, pc
c0de12b2:	f006 fe2f 	bl	c0de7f14 <__aeabi_memcpy>
c0de12b6:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de12b8:	462a      	mov	r2, r5
c0de12ba:	e9cd 4000 	strd	r4, r0, [sp]
c0de12be:	a8df      	add	r0, sp, #892	@ 0x37c
c0de12c0:	a9db      	add	r1, sp, #876	@ 0x36c
c0de12c2:	ab53      	add	r3, sp, #332	@ 0x14c
c0de12c4:	f001 fb52 	bl	c0de296c <compute_challenge>
c0de12c8:	2800      	cmp	r0, #0
c0de12ca:	f040 8096 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de12ce:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de12d0:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de12d4:	f000 faaf 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de12d8:	2800      	cmp	r0, #0
c0de12da:	f040 808e 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de12de:	a829      	add	r0, sp, #164	@ 0xa4
c0de12e0:	4950      	ldr	r1, [pc, #320]	@ (c0de1424 <handler_cmd_BindingFactors+0x270>)
c0de12e2:	2220      	movs	r2, #32
c0de12e4:	4479      	add	r1, pc
c0de12e6:	f006 fe15 	bl	c0de7f14 <__aeabi_memcpy>
c0de12ea:	a832      	add	r0, sp, #200	@ 0xc8
c0de12ec:	f000 faa6 	bl	c0de183c <OUTLINED_FUNCTION_4>
c0de12f0:	2800      	cmp	r0, #0
c0de12f2:	f040 8082 	bne.w	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de12f6:	a831      	add	r0, sp, #196	@ 0xc4
c0de12f8:	aa29      	add	r2, sp, #164	@ 0xa4
c0de12fa:	f000 fa98 	bl	c0de182e <OUTLINED_FUNCTION_2>
c0de12fe:	2800      	cmp	r0, #0
c0de1300:	d17b      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1302:	99de      	ldr	r1, [sp, #888]	@ 0x378
c0de1304:	e9dd 2031 	ldrd	r2, r0, [sp, #196]	@ 0xc4
c0de1308:	f006 fbec 	bl	c0de7ae4 <cx_bn_reduce>
c0de130c:	2800      	cmp	r0, #0
c0de130e:	d174      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1310:	9832      	ldr	r0, [sp, #200]	@ 0xc8
c0de1312:	f108 01e0 	add.w	r1, r8, #224	@ 0xe0
c0de1316:	f000 fa8e 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de131a:	2800      	cmp	r0, #0
c0de131c:	d16d      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de131e:	ac21      	add	r4, sp, #132	@ 0x84
c0de1320:	4941      	ldr	r1, [pc, #260]	@ (c0de1428 <handler_cmd_BindingFactors+0x274>)
c0de1322:	2220      	movs	r2, #32
c0de1324:	4620      	mov	r0, r4
c0de1326:	4479      	add	r1, pc
c0de1328:	f006 fdf4 	bl	c0de7f14 <__aeabi_memcpy>
c0de132c:	a819      	add	r0, sp, #100	@ 0x64
c0de132e:	493f      	ldr	r1, [pc, #252]	@ (c0de142c <handler_cmd_BindingFactors+0x278>)
c0de1330:	2220      	movs	r2, #32
c0de1332:	4479      	add	r1, pc
c0de1334:	f006 fdee 	bl	c0de7f14 <__aeabi_memcpy>
c0de1338:	a811      	add	r0, sp, #68	@ 0x44
c0de133a:	493d      	ldr	r1, [pc, #244]	@ (c0de1430 <handler_cmd_BindingFactors+0x27c>)
c0de133c:	2220      	movs	r2, #32
c0de133e:	4479      	add	r1, pc
c0de1340:	f006 fde8 	bl	c0de7f14 <__aeabi_memcpy>
c0de1344:	a809      	add	r0, sp, #36	@ 0x24
c0de1346:	493b      	ldr	r1, [pc, #236]	@ (c0de1434 <handler_cmd_BindingFactors+0x280>)
c0de1348:	2220      	movs	r2, #32
c0de134a:	4479      	add	r1, pc
c0de134c:	f006 fde2 	bl	c0de7f14 <__aeabi_memcpy>
c0de1350:	a808      	add	r0, sp, #32
c0de1352:	2120      	movs	r1, #32
c0de1354:	4622      	mov	r2, r4
c0de1356:	f000 fa74 	bl	c0de1842 <OUTLINED_FUNCTION_5>
c0de135a:	2800      	cmp	r0, #0
c0de135c:	d14d      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de135e:	a807      	add	r0, sp, #28
c0de1360:	aa19      	add	r2, sp, #100	@ 0x64
c0de1362:	f000 fa64 	bl	c0de182e <OUTLINED_FUNCTION_2>
c0de1366:	2800      	cmp	r0, #0
c0de1368:	d147      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de136a:	a806      	add	r0, sp, #24
c0de136c:	aa09      	add	r2, sp, #36	@ 0x24
c0de136e:	f000 fa5e 	bl	c0de182e <OUTLINED_FUNCTION_2>
c0de1372:	2800      	cmp	r0, #0
c0de1374:	d141      	bne.n	c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1376:	a805      	add	r0, sp, #20
c0de1378:	aa11      	add	r2, sp, #68	@ 0x44
c0de137a:	f000 fa58 	bl	c0de182e <OUTLINED_FUNCTION_2>
c0de137e:	bbe0      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1380:	a803      	add	r0, sp, #12
c0de1382:	aa33      	add	r2, sp, #204	@ 0xcc
c0de1384:	f000 fa53 	bl	c0de182e <OUTLINED_FUNCTION_2>
c0de1388:	bbb8      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de138a:	a804      	add	r0, sp, #16
c0de138c:	f000 fa56 	bl	c0de183c <OUTLINED_FUNCTION_4>
c0de1390:	bb98      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de1392:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1394:	9907      	ldr	r1, [sp, #28]
c0de1396:	e9dd 2003 	ldrd	r2, r0, [sp, #12]
c0de139a:	f006 fb97 	bl	c0de7acc <cx_bn_mod_mul>
c0de139e:	bb60      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13a0:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de13a2:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de13a6:	9807      	ldr	r0, [sp, #28]
c0de13a8:	f006 fb90 	bl	c0de7acc <cx_bn_mod_mul>
c0de13ac:	bb28      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13ae:	e9dd 3231 	ldrd	r3, r2, [sp, #196]	@ 0xc4
c0de13b2:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de13b6:	f006 fb89 	bl	c0de7acc <cx_bn_mod_mul>
c0de13ba:	b9f0      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13bc:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de13be:	9a06      	ldr	r2, [sp, #24]
c0de13c0:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
c0de13c4:	f006 fb6a 	bl	c0de7a9c <cx_bn_mod_add>
c0de13c8:	b9b8      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13ca:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de13cc:	9a08      	ldr	r2, [sp, #32]
c0de13ce:	e9dd 1003 	ldrd	r1, r0, [sp, #12]
c0de13d2:	f006 fb63 	bl	c0de7a9c <cx_bn_mod_add>
c0de13d6:	b980      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13d8:	9a31      	ldr	r2, [sp, #196]	@ 0xc4
c0de13da:	9904      	ldr	r1, [sp, #16]
c0de13dc:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de13de:	f006 fb81 	bl	c0de7ae4 <cx_bn_reduce>
c0de13e2:	b950      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13e4:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de13e6:	a9f5      	add	r1, sp, #980	@ 0x3d4
c0de13e8:	f000 fa25 	bl	c0de1836 <OUTLINED_FUNCTION_3>
c0de13ec:	b928      	cbnz	r0, c0de13fa <handler_cmd_BindingFactors+0x246>
c0de13ee:	a8f5      	add	r0, sp, #980	@ 0x3d4
c0de13f0:	f000 fa31 	bl	c0de1856 <OUTLINED_FUNCTION_7>
c0de13f4:	f006 fad0 	bl	c0de7998 <cx_bn_unlock>
c0de13f8:	b128      	cbz	r0, c0de1406 <handler_cmd_BindingFactors+0x252>
c0de13fa:	f000 fa15 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de1442:	f000 f9ed 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de1446:	2800      	cmp	r0, #0
c0de1448:	d154      	bne.n	c0de14f4 <handler_cmd_PartialSig+0xbc>
c0de144a:	6820      	ldr	r0, [r4, #0]
c0de144c:	7801      	ldrb	r1, [r0, #0]
c0de144e:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de1450:	f001 fd4e 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de1454:	2800      	cmp	r0, #0
c0de1456:	d14d      	bne.n	c0de14f4 <handler_cmd_PartialSig+0xbc>
c0de1458:	492a      	ldr	r1, [pc, #168]	@ (c0de1504 <handler_cmd_PartialSig+0xcc>)
c0de145a:	f50d 7880 	add.w	r8, sp, #256	@ 0x100
c0de145e:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1462:	4640      	mov	r0, r8
c0de1464:	4479      	add	r1, pc
c0de1466:	f006 fd55 	bl	c0de7f14 <__aeabi_memcpy>
c0de146a:	4927      	ldr	r1, [pc, #156]	@ (c0de1508 <handler_cmd_PartialSig+0xd0>)
c0de146c:	f10d 0ae0 	add.w	sl, sp, #224	@ 0xe0
c0de1470:	2220      	movs	r2, #32
c0de1472:	4650      	mov	r0, sl
c0de1474:	4479      	add	r1, pc
c0de1476:	f006 fd4d 	bl	c0de7f14 <__aeabi_memcpy>
c0de147a:	4924      	ldr	r1, [pc, #144]	@ (c0de150c <handler_cmd_PartialSig+0xd4>)
c0de147c:	f10d 0bc0 	add.w	fp, sp, #192	@ 0xc0
c0de1480:	2220      	movs	r2, #32
c0de1482:	4658      	mov	r0, fp
c0de1484:	4479      	add	r1, pc
c0de1486:	f006 fd45 	bl	c0de7f14 <__aeabi_memcpy>
c0de148a:	ac28      	add	r4, sp, #160	@ 0xa0
c0de148c:	4920      	ldr	r1, [pc, #128]	@ (c0de1510 <handler_cmd_PartialSig+0xd8>)
c0de148e:	2220      	movs	r2, #32
c0de1490:	4620      	mov	r0, r4
c0de1492:	4479      	add	r1, pc
c0de1494:	f006 fd3e 	bl	c0de7f14 <__aeabi_memcpy>
c0de1498:	af18      	add	r7, sp, #96	@ 0x60
c0de149a:	491e      	ldr	r1, [pc, #120]	@ (c0de1514 <handler_cmd_PartialSig+0xdc>)
c0de149c:	2240      	movs	r2, #64	@ 0x40
c0de149e:	4638      	mov	r0, r7
c0de14a0:	4479      	add	r1, pc
c0de14a2:	f006 fd37 	bl	c0de7f14 <__aeabi_memcpy>
c0de14a6:	ad10      	add	r5, sp, #64	@ 0x40
c0de14a8:	491b      	ldr	r1, [pc, #108]	@ (c0de1518 <handler_cmd_PartialSig+0xe0>)
c0de14aa:	2220      	movs	r2, #32
c0de14ac:	4628      	mov	r0, r5
c0de14ae:	4479      	add	r1, pc
c0de14b0:	f006 fd30 	bl	c0de7f14 <__aeabi_memcpy>
c0de14b4:	ae08      	add	r6, sp, #32
c0de14b6:	4919      	ldr	r1, [pc, #100]	@ (c0de151c <handler_cmd_PartialSig+0xe4>)
c0de14b8:	2220      	movs	r2, #32
c0de14ba:	4630      	mov	r0, r6
c0de14bc:	4479      	add	r1, pc
c0de14be:	f006 fd29 	bl	c0de7f14 <__aeabi_memcpy>
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
c0de14e2:	f001 fa9d 	bl	c0de2a20 <zkn_partial_sig>
c0de14e6:	b928      	cbnz	r0, c0de14f4 <handler_cmd_PartialSig+0xbc>
c0de14e8:	a8ce      	add	r0, sp, #824	@ 0x338
c0de14ea:	f000 f9bc 	bl	c0de1866 <OUTLINED_FUNCTION_9>
c0de14ee:	f006 fa53 	bl	c0de7998 <cx_bn_unlock>
c0de14f2:	b128      	cbz	r0, c0de1500 <handler_cmd_PartialSig+0xc8>
c0de14f4:	f000 f998 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de1538:	f000 f972 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de153c:	b9f8      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de153e:	a804      	add	r0, sp, #16
c0de1540:	f000 f99d 	bl	c0de187e <OUTLINED_FUNCTION_12>
c0de1544:	b9d8      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de1546:	a804      	add	r0, sp, #16
c0de1548:	a901      	add	r1, sp, #4
c0de154a:	f001 fb51 	bl	c0de2bf0 <tEdwards_alloc>
c0de154e:	b9b0      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de1550:	480e      	ldr	r0, [pc, #56]	@ (c0de158c <handler_get_insecure_public+0x6c>)
c0de1552:	eb09 0100 	add.w	r1, r9, r0
c0de1556:	a804      	add	r0, sp, #16
c0de1558:	aa01      	add	r2, sp, #4
c0de155a:	f000 fddb 	bl	c0de2114 <zkn_prv2pub>
c0de155e:	b970      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de1560:	a804      	add	r0, sp, #16
c0de1562:	f104 0320 	add.w	r3, r4, #32
c0de1566:	a901      	add	r1, sp, #4
c0de1568:	f000 f980 	bl	c0de186c <OUTLINED_FUNCTION_10>
c0de156c:	b938      	cbnz	r0, c0de157e <handler_get_insecure_public+0x5e>
c0de156e:	9804      	ldr	r0, [sp, #16]
c0de1570:	0041      	lsls	r1, r0, #1
c0de1572:	a81a      	add	r0, sp, #104	@ 0x68
c0de1574:	f7ff f8d0 	bl	c0de0718 <io_send_response_pointer>
c0de1578:	f006 fa0e 	bl	c0de7998 <cx_bn_unlock>
c0de157c:	b118      	cbz	r0, c0de1586 <handler_get_insecure_public+0x66>
c0de157e:	f000 f953 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de15aa:	f000 f939 	bl	c0de1820 <OUTLINED_FUNCTION_0>
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
c0de15c8:	f001 fc92 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de15cc:	b9f0      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15ce:	a80e      	add	r0, sp, #56	@ 0x38
c0de15d0:	a90b      	add	r1, sp, #44	@ 0x2c
c0de15d2:	f001 fb0d 	bl	c0de2bf0 <tEdwards_alloc>
c0de15d6:	b9c8      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15d8:	4c0f      	ldr	r4, [pc, #60]	@ (c0de1618 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x88>)
c0de15da:	a80e      	add	r0, sp, #56	@ 0x38
c0de15dc:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de15de:	eb09 0104 	add.w	r1, r9, r4
c0de15e2:	f000 fd97 	bl	c0de2114 <zkn_prv2pub>
c0de15e6:	b988      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15e8:	2020      	movs	r0, #32
c0de15ea:	eb09 0104 	add.w	r1, r9, r4
c0de15ee:	e9cd 0600 	strd	r0, r6, [sp]
c0de15f2:	a80e      	add	r0, sp, #56	@ 0x38
c0de15f4:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de15f6:	ab03      	add	r3, sp, #12
c0de15f8:	f000 fdb4 	bl	c0de2164 <EddsaPoseidon_Sign_final>
c0de15fc:	b930      	cbnz	r0, c0de160c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15fe:	a824      	add	r0, sp, #144	@ 0x90
c0de1600:	2160      	movs	r1, #96	@ 0x60
c0de1602:	f7ff f889 	bl	c0de0718 <io_send_response_pointer>
c0de1606:	f006 f9c7 	bl	c0de7998 <cx_bn_unlock>
c0de160a:	b118      	cbz	r0, c0de1614 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x84>
c0de160c:	f000 f90c 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de162a:	f006 fc73 	bl	c0de7f14 <__aeabi_memcpy>
c0de162e:	480e      	ldr	r0, [pc, #56]	@ (c0de1668 <handler_cmd_frost_inject+0x4c>)
c0de1630:	6821      	ldr	r1, [r4, #0]
c0de1632:	2220      	movs	r2, #32
c0de1634:	4448      	add	r0, r9
c0de1636:	3140      	adds	r1, #64	@ 0x40
c0de1638:	f006 fc6c 	bl	c0de7f14 <__aeabi_memcpy>
c0de163c:	480b      	ldr	r0, [pc, #44]	@ (c0de166c <handler_cmd_frost_inject+0x50>)
c0de163e:	6821      	ldr	r1, [r4, #0]
c0de1640:	2220      	movs	r2, #32
c0de1642:	4448      	add	r0, r9
c0de1644:	3160      	adds	r1, #96	@ 0x60
c0de1646:	f006 fc65 	bl	c0de7f14 <__aeabi_memcpy>
c0de164a:	f000 f908 	bl	c0de185e <OUTLINED_FUNCTION_8>
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
c0de1676:	f000 f8d3 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de167a:	bba8      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de167c:	6820      	ldr	r0, [r4, #0]
c0de167e:	7801      	ldrb	r1, [r0, #0]
c0de1680:	a806      	add	r0, sp, #24
c0de1682:	f001 fc35 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de1686:	bb78      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de1688:	ad06      	add	r5, sp, #24
c0de168a:	466e      	mov	r6, sp
c0de168c:	4628      	mov	r0, r5
c0de168e:	4631      	mov	r1, r6
c0de1690:	f001 faae 	bl	c0de2bf0 <tEdwards_alloc>
c0de1694:	f106 040c 	add.w	r4, r6, #12
c0de1698:	4628      	mov	r0, r5
c0de169a:	4621      	mov	r1, r4
c0de169c:	f001 faa8 	bl	c0de2bf0 <tEdwards_alloc>
c0de16a0:	4814      	ldr	r0, [pc, #80]	@ (c0de16f4 <handler_cmd_frost_commit+0x84>)
c0de16a2:	4633      	mov	r3, r6
c0de16a4:	eb09 0100 	add.w	r1, r9, r0
c0de16a8:	4813      	ldr	r0, [pc, #76]	@ (c0de16f8 <handler_cmd_frost_commit+0x88>)
c0de16aa:	eb09 0200 	add.w	r2, r9, r0
c0de16ae:	4628      	mov	r0, r5
c0de16b0:	f000 ffb1 	bl	c0de2616 <zkn_frost_commit>
c0de16b4:	b9c0      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de16b6:	ad1c      	add	r5, sp, #112	@ 0x70
c0de16b8:	a806      	add	r0, sp, #24
c0de16ba:	4669      	mov	r1, sp
c0de16bc:	f105 0320 	add.w	r3, r5, #32
c0de16c0:	462a      	mov	r2, r5
c0de16c2:	f001 fda0 	bl	c0de3206 <tEdwards_export>
c0de16c6:	b978      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de16c8:	f105 0240 	add.w	r2, r5, #64	@ 0x40
c0de16cc:	f105 0360 	add.w	r3, r5, #96	@ 0x60
c0de16d0:	a806      	add	r0, sp, #24
c0de16d2:	4621      	mov	r1, r4
c0de16d4:	f001 fd97 	bl	c0de3206 <tEdwards_export>
c0de16d8:	b930      	cbnz	r0, c0de16e8 <handler_cmd_frost_commit+0x78>
c0de16da:	a81c      	add	r0, sp, #112	@ 0x70
c0de16dc:	2180      	movs	r1, #128	@ 0x80
c0de16de:	f7ff f81b 	bl	c0de0718 <io_send_response_pointer>
c0de16e2:	f006 f959 	bl	c0de7998 <cx_bn_unlock>
c0de16e6:	b118      	cbz	r0, c0de16f0 <handler_cmd_frost_commit+0x80>
c0de16e8:	f000 f89e 	bl	c0de1828 <OUTLINED_FUNCTION_1>
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
c0de1704:	f000 f8b5 	bl	c0de1872 <OUTLINED_FUNCTION_11>
c0de1708:	f000 f8a9 	bl	c0de185e <OUTLINED_FUNCTION_8>
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
c0de172e:	f000 f8a0 	bl	c0de1872 <OUTLINED_FUNCTION_11>
c0de1732:	f000 f894 	bl	c0de185e <OUTLINED_FUNCTION_8>
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
c0de1766:	f000 f85b 	bl	c0de1820 <OUTLINED_FUNCTION_0>
c0de176a:	bb60      	cbnz	r0, c0de17c6 <handler_cmd_frost_partial_sign+0x76>
c0de176c:	a810      	add	r0, sp, #64	@ 0x40
c0de176e:	2102      	movs	r1, #2
c0de1770:	f001 fbbe 	bl	c0de2ef0 <tEdwards_Curve_alloc_init>
c0de1774:	bb38      	cbnz	r0, c0de17c6 <handler_cmd_frost_partial_sign+0x76>
c0de1776:	ac08      	add	r4, sp, #32
c0de1778:	491c      	ldr	r1, [pc, #112]	@ (c0de17ec <handler_cmd_frost_partial_sign+0x9c>)
c0de177a:	2220      	movs	r2, #32
c0de177c:	2620      	movs	r6, #32
c0de177e:	4620      	mov	r0, r4
c0de1780:	4479      	add	r1, pc
c0de1782:	f006 fbc7 	bl	c0de7f14 <__aeabi_memcpy>
c0de1786:	4814      	ldr	r0, [pc, #80]	@ (c0de17d8 <handler_cmd_frost_partial_sign+0x88>)
c0de1788:	4448      	add	r0, r9
c0de178a:	7fc1      	ldrb	r1, [r0, #31]
c0de178c:	a826      	add	r0, sp, #152	@ 0x98
c0de178e:	e9cd 5604 	strd	r5, r6, [sp, #16]
c0de1792:	e9cd 4006 	strd	r4, r0, [sp, #24]
c0de1796:	2003      	movs	r0, #3
c0de1798:	9003      	str	r0, [sp, #12]
c0de179a:	4810      	ldr	r0, [pc, #64]	@ (c0de17dc <handler_cmd_frost_partial_sign+0x8c>)
c0de179c:	4448      	add	r0, r9
c0de179e:	9002      	str	r0, [sp, #8]
c0de17a0:	480f      	ldr	r0, [pc, #60]	@ (c0de17e0 <handler_cmd_frost_partial_sign+0x90>)
c0de17a2:	4448      	add	r0, r9
c0de17a4:	f100 0220 	add.w	r2, r0, #32
c0de17a8:	e9cd 0200 	strd	r0, r2, [sp]
c0de17ac:	480d      	ldr	r0, [pc, #52]	@ (c0de17e4 <handler_cmd_frost_partial_sign+0x94>)
c0de17ae:	eb09 0200 	add.w	r2, r9, r0
c0de17b2:	480d      	ldr	r0, [pc, #52]	@ (c0de17e8 <handler_cmd_frost_partial_sign+0x98>)
c0de17b4:	eb09 0300 	add.w	r3, r9, r0
c0de17b8:	a810      	add	r0, sp, #64	@ 0x40
c0de17ba:	f001 f931 	bl	c0de2a20 <zkn_partial_sig>
c0de17be:	b910      	cbnz	r0, c0de17c6 <handler_cmd_frost_partial_sign+0x76>
c0de17c0:	f006 f8ea 	bl	c0de7998 <cx_bn_unlock>
c0de17c4:	b118      	cbz	r0, c0de17ce <handler_cmd_frost_partial_sign+0x7e>
c0de17c6:	f000 f82f 	bl	c0de1828 <OUTLINED_FUNCTION_1>
c0de17ca:	b036      	add	sp, #216	@ 0xd8
c0de17cc:	bd70      	pop	{r4, r5, r6, pc}
c0de17ce:	a826      	add	r0, sp, #152	@ 0x98
c0de17d0:	f000 f849 	bl	c0de1866 <OUTLINED_FUNCTION_9>
c0de17d4:	2000      	movs	r0, #0
c0de17d6:	e7f8      	b.n	c0de17ca <handler_cmd_frost_partial_sign+0x7a>
c0de17d8:	00000330 	.word	0x00000330
c0de17dc:	000003b0 	.word	0x000003b0
c0de17e0:	00000370 	.word	0x00000370
c0de17e4:	00000350 	.word	0x00000350
c0de17e8:	000002f0 	.word	0x000002f0
c0de17ec:	00006e2c 	.word	0x00006e2c

c0de17f0 <handler_cmd_inject_nonces>:
c0de17f0:	b510      	push	{r4, lr}
c0de17f2:	490a      	ldr	r1, [pc, #40]	@ (c0de181c <handler_cmd_inject_nonces+0x2c>)
c0de17f4:	eb09 0201 	add.w	r2, r9, r1
c0de17f8:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de17fc:	4610      	mov	r0, r2
c0de17fe:	2240      	movs	r2, #64	@ 0x40
c0de1800:	f006 fb88 	bl	c0de7f14 <__aeabi_memcpy>
c0de1804:	f000 f82b 	bl	c0de185e <OUTLINED_FUNCTION_8>
c0de1808:	2c40      	cmp	r4, #64	@ 0x40
c0de180a:	bf04      	itt	eq
c0de180c:	2000      	moveq	r0, #0
c0de180e:	bd10      	popeq	{r4, pc}
c0de1810:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de1814:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1818:	f7fe bf89 	b.w	c0de072e <io_send_sw>
c0de181c:	00000370 	.word	0x00000370

c0de1820 <OUTLINED_FUNCTION_0>:
c0de1820:	2020      	movs	r0, #32
c0de1822:	2100      	movs	r1, #0
c0de1824:	f006 b8ae 	b.w	c0de7984 <cx_bn_lock>

c0de1828 <OUTLINED_FUNCTION_1>:
c0de1828:	b280      	uxth	r0, r0
c0de182a:	f7fe bf80 	b.w	c0de072e <io_send_sw>

c0de182e <OUTLINED_FUNCTION_2>:
c0de182e:	2120      	movs	r1, #32
c0de1830:	2320      	movs	r3, #32
c0de1832:	f006 b8c3 	b.w	c0de79bc <cx_bn_alloc_init>

c0de1836 <OUTLINED_FUNCTION_3>:
c0de1836:	2220      	movs	r2, #32
c0de1838:	f006 b900 	b.w	c0de7a3c <cx_bn_export>

c0de183c <OUTLINED_FUNCTION_4>:
c0de183c:	2120      	movs	r1, #32
c0de183e:	f006 b8b3 	b.w	c0de79a8 <cx_bn_alloc>

c0de1842 <OUTLINED_FUNCTION_5>:
c0de1842:	2320      	movs	r3, #32
c0de1844:	f006 b8ba 	b.w	c0de79bc <cx_bn_alloc_init>

c0de1848 <OUTLINED_FUNCTION_6>:
c0de1848:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de184c:	9b01      	ldr	r3, [sp, #4]
c0de184e:	9a04      	ldr	r2, [sp, #16]
c0de1850:	3001      	adds	r0, #1
c0de1852:	3901      	subs	r1, #1
c0de1854:	4770      	bx	lr

c0de1856 <OUTLINED_FUNCTION_7>:
c0de1856:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de185a:	f7fe bf5d 	b.w	c0de0718 <io_send_response_pointer>

c0de185e <OUTLINED_FUNCTION_8>:
c0de185e:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de1862:	f7fe bf64 	b.w	c0de072e <io_send_sw>

c0de1866 <OUTLINED_FUNCTION_9>:
c0de1866:	2120      	movs	r1, #32
c0de1868:	f7fe bf56 	b.w	c0de0718 <io_send_response_pointer>

c0de186c <OUTLINED_FUNCTION_10>:
c0de186c:	4622      	mov	r2, r4
c0de186e:	f001 bcca 	b.w	c0de3206 <tEdwards_export>

c0de1872 <OUTLINED_FUNCTION_11>:
c0de1872:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de1876:	4610      	mov	r0, r2
c0de1878:	22f0      	movs	r2, #240	@ 0xf0
c0de187a:	f006 bb4b 	b.w	c0de7f14 <__aeabi_memcpy>

c0de187e <OUTLINED_FUNCTION_12>:
c0de187e:	4629      	mov	r1, r5
c0de1880:	f001 bb36 	b.w	c0de2ef0 <tEdwards_Curve_alloc_init>

c0de1884 <helper_send_response_pubkey>:
c0de1884:	b5b0      	push	{r4, r5, r7, lr}
c0de1886:	b09a      	sub	sp, #104	@ 0x68
c0de1888:	2041      	movs	r0, #65	@ 0x41
c0de188a:	f10d 0405 	add.w	r4, sp, #5
c0de188e:	2241      	movs	r2, #65	@ 0x41
c0de1890:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1894:	480b      	ldr	r0, [pc, #44]	@ (c0de18c4 <helper_send_response_pubkey+0x40>)
c0de1896:	eb09 0500 	add.w	r5, r9, r0
c0de189a:	1c60      	adds	r0, r4, #1
c0de189c:	f105 0108 	add.w	r1, r5, #8
c0de18a0:	f006 fb38 	bl	c0de7f14 <__aeabi_memcpy>
c0de18a4:	2020      	movs	r0, #32
c0de18a6:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de18aa:	2220      	movs	r2, #32
c0de18ac:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de18b0:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de18b4:	f006 fb2e 	bl	c0de7f14 <__aeabi_memcpy>
c0de18b8:	4620      	mov	r0, r4
c0de18ba:	2163      	movs	r1, #99	@ 0x63
c0de18bc:	f000 f804 	bl	c0de18c8 <io_send_response_pointer>
c0de18c0:	b01a      	add	sp, #104	@ 0x68
c0de18c2:	bdb0      	pop	{r4, r5, r7, pc}
c0de18c4:	00000000 	.word	0x00000000

c0de18c8 <io_send_response_pointer>:
c0de18c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de18ca:	2200      	movs	r2, #0
c0de18cc:	ab01      	add	r3, sp, #4
c0de18ce:	c307      	stmia	r3!, {r0, r1, r2}
c0de18d0:	a801      	add	r0, sp, #4
c0de18d2:	2101      	movs	r1, #1
c0de18d4:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de18d8:	f005 fb62 	bl	c0de6fa0 <io_send_response_buffers>
c0de18dc:	b004      	add	sp, #16
c0de18de:	bd80      	pop	{r7, pc}

c0de18e0 <helper_send_response_sig>:
c0de18e0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de18e2:	b099      	sub	sp, #100	@ 0x64
c0de18e4:	f10d 0402 	add.w	r4, sp, #2
c0de18e8:	2161      	movs	r1, #97	@ 0x61
c0de18ea:	1c65      	adds	r5, r4, #1
c0de18ec:	4628      	mov	r0, r5
c0de18ee:	f006 fb1b 	bl	c0de7f28 <__aeabi_memclr>
c0de18f2:	4808      	ldr	r0, [pc, #32]	@ (c0de1914 <helper_send_response_sig+0x34>)
c0de18f4:	f000 f810 	bl	c0de1918 <OUTLINED_FUNCTION_0>
c0de18f8:	f88d 6002 	strb.w	r6, [sp, #2]
c0de18fc:	f006 fb0a 	bl	c0de7f14 <__aeabi_memcpy>
c0de1900:	f897 12b9 	ldrb.w	r1, [r7, #697]	@ 0x2b9
c0de1904:	1930      	adds	r0, r6, r4
c0de1906:	7041      	strb	r1, [r0, #1]
c0de1908:	1cb1      	adds	r1, r6, #2
c0de190a:	4620      	mov	r0, r4
c0de190c:	f7ff ffdc 	bl	c0de18c8 <io_send_response_pointer>
c0de1910:	b019      	add	sp, #100	@ 0x64
c0de1912:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1914:	00000000 	.word	0x00000000

c0de1918 <OUTLINED_FUNCTION_0>:
c0de1918:	eb09 0700 	add.w	r7, r9, r0
c0de191c:	4628      	mov	r0, r5
c0de191e:	f897 62b8 	ldrb.w	r6, [r7, #696]	@ 0x2b8
c0de1922:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de1926:	4632      	mov	r2, r6
c0de1928:	4770      	bx	lr

c0de192a <swap_handle_check_address>:
c0de192a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de192e:	b0bc      	sub	sp, #240	@ 0xf0
c0de1930:	4604      	mov	r4, r0
c0de1932:	2000      	movs	r0, #0
c0de1934:	68a5      	ldr	r5, [r4, #8]
c0de1936:	61a0      	str	r0, [r4, #24]
c0de1938:	2d00      	cmp	r5, #0
c0de193a:	d04d      	beq.n	c0de19d8 <swap_handle_check_address+0xae>
c0de193c:	6920      	ldr	r0, [r4, #16]
c0de193e:	2800      	cmp	r0, #0
c0de1940:	d04a      	beq.n	c0de19d8 <swap_handle_check_address+0xae>
c0de1942:	f006 fb4d 	bl	c0de7fe0 <strlen>
c0de1946:	2828      	cmp	r0, #40	@ 0x28
c0de1948:	d146      	bne.n	c0de19d8 <swap_handle_check_address+0xae>
c0de194a:	7b20      	ldrb	r0, [r4, #12]
c0de194c:	f04f 0800 	mov.w	r8, #0
c0de1950:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de1952:	2161      	movs	r1, #97	@ 0x61
c0de1954:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de1958:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de195a:	ad15      	add	r5, sp, #84	@ 0x54
c0de195c:	4628      	mov	r0, r5
c0de195e:	f006 fae3 	bl	c0de7f28 <__aeabi_memclr>
c0de1962:	ae39      	add	r6, sp, #228	@ 0xe4
c0de1964:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de1968:	4630      	mov	r0, r6
c0de196a:	f005 f8c7 	bl	c0de6afc <buffer_read_u8>
c0de196e:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de1972:	af2e      	add	r7, sp, #184	@ 0xb8
c0de1974:	4630      	mov	r0, r6
c0de1976:	4639      	mov	r1, r7
c0de1978:	f005 f913 	bl	c0de6ba2 <buffer_read_bip32_path>
c0de197c:	2005      	movs	r0, #5
c0de197e:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de1982:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de1986:	463a      	mov	r2, r7
c0de1988:	f8cd 8010 	str.w	r8, [sp, #16]
c0de198c:	e9cd 5100 	strd	r5, r1, [sp]
c0de1990:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de1994:	2000      	movs	r0, #0
c0de1996:	2121      	movs	r1, #33	@ 0x21
c0de1998:	f005 f9c4 	bl	c0de6d24 <bip32_derive_with_seed_get_pubkey_256>
c0de199c:	b9e0      	cbnz	r0, c0de19d8 <swap_handle_check_address+0xae>
c0de199e:	ad10      	add	r5, sp, #64	@ 0x40
c0de19a0:	2114      	movs	r1, #20
c0de19a2:	4628      	mov	r0, r5
c0de19a4:	f006 fac0 	bl	c0de7f28 <__aeabi_memclr>
c0de19a8:	a815      	add	r0, sp, #84	@ 0x54
c0de19aa:	4629      	mov	r1, r5
c0de19ac:	2214      	movs	r2, #20
c0de19ae:	f7fe fb3b 	bl	c0de0028 <address_from_pubkey>
c0de19b2:	ae05      	add	r6, sp, #20
c0de19b4:	2129      	movs	r1, #41	@ 0x29
c0de19b6:	4630      	mov	r0, r6
c0de19b8:	f006 fab6 	bl	c0de7f28 <__aeabi_memclr>
c0de19bc:	4628      	mov	r0, r5
c0de19be:	2114      	movs	r1, #20
c0de19c0:	4632      	mov	r2, r6
c0de19c2:	2329      	movs	r3, #41	@ 0x29
c0de19c4:	f005 fa8c 	bl	c0de6ee0 <format_hex>
c0de19c8:	6921      	ldr	r1, [r4, #16]
c0de19ca:	4630      	mov	r0, r6
c0de19cc:	2229      	movs	r2, #41	@ 0x29
c0de19ce:	f006 fb0f 	bl	c0de7ff0 <strncmp>
c0de19d2:	b908      	cbnz	r0, c0de19d8 <swap_handle_check_address+0xae>
c0de19d4:	2001      	movs	r0, #1
c0de19d6:	61a0      	str	r0, [r4, #24]
c0de19d8:	b03c      	add	sp, #240	@ 0xf0
c0de19da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de19e0 <swap_handle_get_printable_amount>:
c0de19e0:	b570      	push	{r4, r5, r6, lr}
c0de19e2:	b08c      	sub	sp, #48	@ 0x30
c0de19e4:	ac04      	add	r4, sp, #16
c0de19e6:	4606      	mov	r6, r0
c0de19e8:	211e      	movs	r1, #30
c0de19ea:	4620      	mov	r0, r4
c0de19ec:	f006 fa9c 	bl	c0de7f28 <__aeabi_memclr>
c0de19f0:	f106 050e 	add.w	r5, r6, #14
c0de19f4:	2132      	movs	r1, #50	@ 0x32
c0de19f6:	4628      	mov	r0, r5
c0de19f8:	f006 fa96 	bl	c0de7f28 <__aeabi_memclr>
c0de19fc:	2000      	movs	r0, #0
c0de19fe:	7b31      	ldrb	r1, [r6, #12]
c0de1a00:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1a04:	68b0      	ldr	r0, [r6, #8]
c0de1a06:	aa02      	add	r2, sp, #8
c0de1a08:	f005 fc56 	bl	c0de72b8 <swap_str_to_u64>
c0de1a0c:	b178      	cbz	r0, c0de1a2e <swap_handle_get_printable_amount+0x4e>
c0de1a0e:	2003      	movs	r0, #3
c0de1a10:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1a14:	211e      	movs	r1, #30
c0de1a16:	9000      	str	r0, [sp, #0]
c0de1a18:	4620      	mov	r0, r4
c0de1a1a:	f005 fa1a 	bl	c0de6e52 <format_fpu64>
c0de1a1e:	9400      	str	r4, [sp, #0]
c0de1a20:	4628      	mov	r0, r5
c0de1a22:	2132      	movs	r1, #50	@ 0x32
c0de1a24:	231e      	movs	r3, #30
c0de1a26:	4a03      	ldr	r2, [pc, #12]	@ (c0de1a34 <swap_handle_get_printable_amount+0x54>)
c0de1a28:	447a      	add	r2, pc
c0de1a2a:	f005 fddf 	bl	c0de75ec <snprintf>
c0de1a2e:	b00c      	add	sp, #48	@ 0x30
c0de1a30:	bd70      	pop	{r4, r5, r6, pc}
c0de1a32:	bf00      	nop
c0de1a34:	00006a38 	.word	0x00006a38

c0de1a38 <swap_copy_transaction_parameters>:
c0de1a38:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1a3a:	b093      	sub	sp, #76	@ 0x4c
c0de1a3c:	6985      	ldr	r5, [r0, #24]
c0de1a3e:	b3ad      	cbz	r5, c0de1aac <swap_copy_transaction_parameters+0x74>
c0de1a40:	4604      	mov	r4, r0
c0de1a42:	4628      	mov	r0, r5
c0de1a44:	f006 facc 	bl	c0de7fe0 <strlen>
c0de1a48:	2828      	cmp	r0, #40	@ 0x28
c0de1a4a:	d12f      	bne.n	c0de1aac <swap_copy_transaction_parameters+0x74>
c0de1a4c:	68a7      	ldr	r7, [r4, #8]
c0de1a4e:	b36f      	cbz	r7, c0de1aac <swap_copy_transaction_parameters+0x74>
c0de1a50:	466e      	mov	r6, sp
c0de1a52:	2148      	movs	r1, #72	@ 0x48
c0de1a54:	4630      	mov	r0, r6
c0de1a56:	f006 fa67 	bl	c0de7f28 <__aeabi_memclr>
c0de1a5a:	f106 0018 	add.w	r0, r6, #24
c0de1a5e:	2100      	movs	r1, #0
c0de1a60:	2928      	cmp	r1, #40	@ 0x28
c0de1a62:	d009      	beq.n	c0de1a78 <swap_copy_transaction_parameters+0x40>
c0de1a64:	5c6a      	ldrb	r2, [r5, r1]
c0de1a66:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de1a6a:	b2db      	uxtb	r3, r3
c0de1a6c:	2b1a      	cmp	r3, #26
c0de1a6e:	bf38      	it	cc
c0de1a70:	3a20      	subcc	r2, #32
c0de1a72:	5442      	strb	r2, [r0, r1]
c0de1a74:	3101      	adds	r1, #1
c0de1a76:	e7f3      	b.n	c0de1a60 <swap_copy_transaction_parameters+0x28>
c0de1a78:	7b21      	ldrb	r1, [r4, #12]
c0de1a7a:	f106 0208 	add.w	r2, r6, #8
c0de1a7e:	4638      	mov	r0, r7
c0de1a80:	f005 fc1a 	bl	c0de72b8 <swap_str_to_u64>
c0de1a84:	b190      	cbz	r0, c0de1aac <swap_copy_transaction_parameters+0x74>
c0de1a86:	7d21      	ldrb	r1, [r4, #20]
c0de1a88:	6920      	ldr	r0, [r4, #16]
c0de1a8a:	f106 0210 	add.w	r2, r6, #16
c0de1a8e:	f005 fc13 	bl	c0de72b8 <swap_str_to_u64>
c0de1a92:	b158      	cbz	r0, c0de1aac <swap_copy_transaction_parameters+0x74>
c0de1a94:	2401      	movs	r4, #1
c0de1a96:	f88d 4000 	strb.w	r4, [sp]
c0de1a9a:	f005 fd9b 	bl	c0de75d4 <os_explicit_zero_BSS_segment>
c0de1a9e:	4805      	ldr	r0, [pc, #20]	@ (c0de1ab4 <swap_copy_transaction_parameters+0x7c>)
c0de1aa0:	4669      	mov	r1, sp
c0de1aa2:	2248      	movs	r2, #72	@ 0x48
c0de1aa4:	4448      	add	r0, r9
c0de1aa6:	f006 fa35 	bl	c0de7f14 <__aeabi_memcpy>
c0de1aaa:	e000      	b.n	c0de1aae <swap_copy_transaction_parameters+0x76>
c0de1aac:	2400      	movs	r4, #0
c0de1aae:	4620      	mov	r0, r4
c0de1ab0:	b013      	add	sp, #76	@ 0x4c
c0de1ab2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1ab4:	00000590 	.word	0x00000590

c0de1ab8 <swap_check_validity>:
c0de1ab8:	b570      	push	{r4, r5, r6, lr}
c0de1aba:	b08c      	sub	sp, #48	@ 0x30
c0de1abc:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1b34 <swap_check_validity+0x7c>)
c0de1abe:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1ac2:	b32c      	cbz	r4, c0de1b10 <swap_check_validity+0x58>
c0de1ac4:	eb09 0406 	add.w	r4, r9, r6
c0de1ac8:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1acc:	4069      	eors	r1, r5
c0de1ace:	4060      	eors	r0, r4
c0de1ad0:	4308      	orrs	r0, r1
c0de1ad2:	d121      	bne.n	c0de1b18 <swap_check_validity+0x60>
c0de1ad4:	eb09 0006 	add.w	r0, r9, r6
c0de1ad8:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1adc:	4059      	eors	r1, r3
c0de1ade:	4050      	eors	r0, r2
c0de1ae0:	4308      	orrs	r0, r1
c0de1ae2:	d11d      	bne.n	c0de1b20 <swap_check_validity+0x68>
c0de1ae4:	ad01      	add	r5, sp, #4
c0de1ae6:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de1ae8:	2129      	movs	r1, #41	@ 0x29
c0de1aea:	4628      	mov	r0, r5
c0de1aec:	f006 fa1c 	bl	c0de7f28 <__aeabi_memclr>
c0de1af0:	4620      	mov	r0, r4
c0de1af2:	2114      	movs	r1, #20
c0de1af4:	462a      	mov	r2, r5
c0de1af6:	2329      	movs	r3, #41	@ 0x29
c0de1af8:	f005 f9f2 	bl	c0de6ee0 <format_hex>
c0de1afc:	eb09 0006 	add.w	r0, r9, r6
c0de1b00:	4629      	mov	r1, r5
c0de1b02:	3018      	adds	r0, #24
c0de1b04:	f006 fa62 	bl	c0de7fcc <strcmp>
c0de1b08:	b970      	cbnz	r0, c0de1b28 <swap_check_validity+0x70>
c0de1b0a:	2001      	movs	r0, #1
c0de1b0c:	b00c      	add	sp, #48	@ 0x30
c0de1b0e:	bd70      	pop	{r4, r5, r6, pc}
c0de1b10:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1b14:	21ff      	movs	r1, #255	@ 0xff
c0de1b16:	e00a      	b.n	c0de1b2e <swap_check_validity+0x76>
c0de1b18:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1b1c:	2101      	movs	r1, #1
c0de1b1e:	e006      	b.n	c0de1b2e <swap_check_validity+0x76>
c0de1b20:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1b24:	2103      	movs	r1, #3
c0de1b26:	e002      	b.n	c0de1b2e <swap_check_validity+0x76>
c0de1b28:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1b2c:	2102      	movs	r1, #2
c0de1b2e:	2200      	movs	r2, #0
c0de1b30:	f005 fb89 	bl	c0de7246 <send_swap_error_simple>
c0de1b34:	00000590 	.word	0x00000590

c0de1b38 <transaction_deserialize>:
c0de1b38:	b570      	push	{r4, r5, r6, lr}
c0de1b3a:	460d      	mov	r5, r1
c0de1b3c:	4604      	mov	r4, r0
c0de1b3e:	b910      	cbnz	r0, c0de1b46 <transaction_deserialize+0xe>
c0de1b40:	2001      	movs	r0, #1
c0de1b42:	f005 fcd3 	bl	c0de74ec <assert_exit>
c0de1b46:	b915      	cbnz	r5, c0de1b4e <transaction_deserialize+0x16>
c0de1b48:	2001      	movs	r0, #1
c0de1b4a:	f005 fccf 	bl	c0de74ec <assert_exit>
c0de1b4e:	6860      	ldr	r0, [r4, #4]
c0de1b50:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de1b54:	d901      	bls.n	c0de1b5a <transaction_deserialize+0x22>
c0de1b56:	20f9      	movs	r0, #249	@ 0xf9
c0de1b58:	e04b      	b.n	c0de1bf2 <transaction_deserialize+0xba>
c0de1b5a:	4620      	mov	r0, r4
c0de1b5c:	4629      	mov	r1, r5
c0de1b5e:	2200      	movs	r2, #0
c0de1b60:	f004 ffe2 	bl	c0de6b28 <buffer_read_u64>
c0de1b64:	b330      	cbz	r0, c0de1bb4 <transaction_deserialize+0x7c>
c0de1b66:	6820      	ldr	r0, [r4, #0]
c0de1b68:	68a1      	ldr	r1, [r4, #8]
c0de1b6a:	4408      	add	r0, r1
c0de1b6c:	2114      	movs	r1, #20
c0de1b6e:	61a8      	str	r0, [r5, #24]
c0de1b70:	4620      	mov	r0, r4
c0de1b72:	f004 ffb8 	bl	c0de6ae6 <buffer_seek_cur>
c0de1b76:	b1f8      	cbz	r0, c0de1bb8 <transaction_deserialize+0x80>
c0de1b78:	f105 0108 	add.w	r1, r5, #8
c0de1b7c:	4620      	mov	r0, r4
c0de1b7e:	2200      	movs	r2, #0
c0de1b80:	2600      	movs	r6, #0
c0de1b82:	f004 ffd1 	bl	c0de6b28 <buffer_read_u64>
c0de1b86:	b1c8      	cbz	r0, c0de1bbc <transaction_deserialize+0x84>
c0de1b88:	f105 0120 	add.w	r1, r5, #32
c0de1b8c:	4620      	mov	r0, r4
c0de1b8e:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1b92:	f004 ffe9 	bl	c0de6b68 <buffer_read_varint>
c0de1b96:	6a29      	ldr	r1, [r5, #32]
c0de1b98:	b990      	cbnz	r0, c0de1bc0 <transaction_deserialize+0x88>
c0de1b9a:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1b9c:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1ba0:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1ba4:	2300      	movs	r3, #0
c0de1ba6:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de1baa:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1bae:	d207      	bcs.n	c0de1bc0 <transaction_deserialize+0x88>
c0de1bb0:	20fc      	movs	r0, #252	@ 0xfc
c0de1bb2:	e01e      	b.n	c0de1bf2 <transaction_deserialize+0xba>
c0de1bb4:	20ff      	movs	r0, #255	@ 0xff
c0de1bb6:	e01c      	b.n	c0de1bf2 <transaction_deserialize+0xba>
c0de1bb8:	20fe      	movs	r0, #254	@ 0xfe
c0de1bba:	e01a      	b.n	c0de1bf2 <transaction_deserialize+0xba>
c0de1bbc:	20fd      	movs	r0, #253	@ 0xfd
c0de1bbe:	e018      	b.n	c0de1bf2 <transaction_deserialize+0xba>
c0de1bc0:	6820      	ldr	r0, [r4, #0]
c0de1bc2:	68a2      	ldr	r2, [r4, #8]
c0de1bc4:	4410      	add	r0, r2
c0de1bc6:	61e8      	str	r0, [r5, #28]
c0de1bc8:	4620      	mov	r0, r4
c0de1bca:	f004 ff8c 	bl	c0de6ae6 <buffer_seek_cur>
c0de1bce:	b168      	cbz	r0, c0de1bec <transaction_deserialize+0xb4>
c0de1bd0:	f105 031c 	add.w	r3, r5, #28
c0de1bd4:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de1bd6:	f000 f80e 	bl	c0de1bf6 <transaction_utils_check_encoding>
c0de1bda:	b148      	cbz	r0, c0de1bf0 <transaction_deserialize+0xb8>
c0de1bdc:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1be0:	f06f 0006 	mvn.w	r0, #6
c0de1be4:	428a      	cmp	r2, r1
c0de1be6:	bf08      	it	eq
c0de1be8:	2001      	moveq	r0, #1
c0de1bea:	e002      	b.n	c0de1bf2 <transaction_deserialize+0xba>
c0de1bec:	20fb      	movs	r0, #251	@ 0xfb
c0de1bee:	e000      	b.n	c0de1bf2 <transaction_deserialize+0xba>
c0de1bf0:	20fa      	movs	r0, #250	@ 0xfa
c0de1bf2:	b240      	sxtb	r0, r0
c0de1bf4:	bd70      	pop	{r4, r5, r6, pc}

c0de1bf6 <transaction_utils_check_encoding>:
c0de1bf6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1bf8:	461c      	mov	r4, r3
c0de1bfa:	4615      	mov	r5, r2
c0de1bfc:	4606      	mov	r6, r0
c0de1bfe:	b910      	cbnz	r0, c0de1c06 <transaction_utils_check_encoding+0x10>
c0de1c00:	2001      	movs	r0, #1
c0de1c02:	f005 fc73 	bl	c0de74ec <assert_exit>
c0de1c06:	2000      	movs	r0, #0
c0de1c08:	2300      	movs	r3, #0
c0de1c0a:	4602      	mov	r2, r0
c0de1c0c:	1b40      	subs	r0, r0, r5
c0de1c0e:	4619      	mov	r1, r3
c0de1c10:	eb73 0004 	sbcs.w	r0, r3, r4
c0de1c14:	d206      	bcs.n	c0de1c24 <transaction_utils_check_encoding+0x2e>
c0de1c16:	56b7      	ldrsb	r7, [r6, r2]
c0de1c18:	1c50      	adds	r0, r2, #1
c0de1c1a:	f141 0300 	adc.w	r3, r1, #0
c0de1c1e:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de1c22:	dcf2      	bgt.n	c0de1c0a <transaction_utils_check_encoding+0x14>
c0de1c24:	2000      	movs	r0, #0
c0de1c26:	1b52      	subs	r2, r2, r5
c0de1c28:	41a1      	sbcs	r1, r4
c0de1c2a:	bf28      	it	cs
c0de1c2c:	2001      	movcs	r0, #1
c0de1c2e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1c30 <validate_pubkey>:
c0de1c30:	b108      	cbz	r0, c0de1c36 <validate_pubkey+0x6>
c0de1c32:	f7ff be27 	b.w	c0de1884 <helper_send_response_pubkey>
c0de1c36:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1c3a:	f000 b800 	b.w	c0de1c3e <io_send_sw>

c0de1c3e <io_send_sw>:
c0de1c3e:	b580      	push	{r7, lr}
c0de1c40:	4602      	mov	r2, r0
c0de1c42:	2000      	movs	r0, #0
c0de1c44:	2100      	movs	r1, #0
c0de1c46:	f005 f9ab 	bl	c0de6fa0 <io_send_response_buffers>
c0de1c4a:	bd80      	pop	{r7, pc}

c0de1c4c <validate_transaction>:
c0de1c4c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1c50:	b08c      	sub	sp, #48	@ 0x30
c0de1c52:	b378      	cbz	r0, c0de1cb4 <validate_transaction+0x68>
c0de1c54:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1cec <validate_transaction+0xa0>
c0de1c58:	2002      	movs	r0, #2
c0de1c5a:	2500      	movs	r5, #0
c0de1c5c:	2720      	movs	r7, #32
c0de1c5e:	2203      	movs	r2, #3
c0de1c60:	f240 6401 	movw	r4, #1537	@ 0x601
c0de1c64:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de1c68:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de1c6c:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de1c6e:	f809 0008 	strb.w	r0, [r9, r8]
c0de1c72:	2060      	movs	r0, #96	@ 0x60
c0de1c74:	900a      	str	r0, [sp, #40]	@ 0x28
c0de1c76:	eb09 0008 	add.w	r0, r9, r8
c0de1c7a:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de1c7e:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1c82:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1c86:	e9cd 4200 	strd	r4, r2, [sp]
c0de1c8a:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de1c8e:	2000      	movs	r0, #0
c0de1c90:	9508      	str	r5, [sp, #32]
c0de1c92:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1c96:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de1c9a:	2121      	movs	r1, #33	@ 0x21
c0de1c9c:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1ca0:	f005 f874 	bl	c0de6d8c <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1ca4:	b188      	cbz	r0, c0de1cca <validate_transaction+0x7e>
c0de1ca6:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de1caa:	f809 5008 	strb.w	r5, [r9, r8]
c0de1cae:	f7ff ffc6 	bl	c0de1c3e <io_send_sw>
c0de1cb2:	e017      	b.n	c0de1ce4 <validate_transaction+0x98>
c0de1cb4:	480d      	ldr	r0, [pc, #52]	@ (c0de1cec <validate_transaction+0xa0>)
c0de1cb6:	2100      	movs	r1, #0
c0de1cb8:	f809 1000 	strb.w	r1, [r9, r0]
c0de1cbc:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1cc0:	b00c      	add	sp, #48	@ 0x30
c0de1cc2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1cc6:	f7ff bfba 	b.w	c0de1c3e <io_send_sw>
c0de1cca:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1ccc:	eb09 0008 	add.w	r0, r9, r8
c0de1cd0:	f880 12b8 	strb.w	r1, [r0, #696]	@ 0x2b8
c0de1cd4:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1cd8:	f001 0101 	and.w	r1, r1, #1
c0de1cdc:	f880 12b9 	strb.w	r1, [r0, #697]	@ 0x2b9
c0de1ce0:	f7ff fdfe 	bl	c0de18e0 <helper_send_response_sig>
c0de1ce4:	b00c      	add	sp, #48	@ 0x30
c0de1ce6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1cea:	bf00      	nop
c0de1cec:	00000000 	.word	0x00000000

c0de1cf0 <app_quit>:
c0de1cf0:	20ff      	movs	r0, #255	@ 0xff
c0de1cf2:	f005 ffd3 	bl	c0de7c9c <os_sched_exit>
	...

c0de1cf8 <ui_menu_main>:
c0de1cf8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1cfa:	4c19      	ldr	r4, [pc, #100]	@ (c0de1d60 <ui_menu_main+0x68>)
c0de1cfc:	4817      	ldr	r0, [pc, #92]	@ (c0de1d5c <ui_menu_main+0x64>)
c0de1cfe:	447c      	add	r4, pc
c0de1d00:	eb09 0500 	add.w	r5, r9, r0
c0de1d04:	f000 f8d8 	bl	c0de1eb8 <OUTLINED_FUNCTION_0>
c0de1d08:	2114      	movs	r1, #20
c0de1d0a:	7369      	strb	r1, [r5, #13]
c0de1d0c:	4915      	ldr	r1, [pc, #84]	@ (c0de1d64 <ui_menu_main+0x6c>)
c0de1d0e:	4a16      	ldr	r2, [pc, #88]	@ (c0de1d68 <ui_menu_main+0x70>)
c0de1d10:	4479      	add	r1, pc
c0de1d12:	447a      	add	r2, pc
c0de1d14:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1d18:	7800      	ldrb	r0, [r0, #0]
c0de1d1a:	7328      	strb	r0, [r5, #12]
c0de1d1c:	f000 f8cc 	bl	c0de1eb8 <OUTLINED_FUNCTION_0>
c0de1d20:	2115      	movs	r1, #21
c0de1d22:	7669      	strb	r1, [r5, #25]
c0de1d24:	4911      	ldr	r1, [pc, #68]	@ (c0de1d6c <ui_menu_main+0x74>)
c0de1d26:	4a12      	ldr	r2, [pc, #72]	@ (c0de1d70 <ui_menu_main+0x78>)
c0de1d28:	4479      	add	r1, pc
c0de1d2a:	447a      	add	r2, pc
c0de1d2c:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1d30:	2100      	movs	r1, #0
c0de1d32:	7840      	ldrb	r0, [r0, #1]
c0de1d34:	7628      	strb	r0, [r5, #24]
c0de1d36:	480f      	ldr	r0, [pc, #60]	@ (c0de1d74 <ui_menu_main+0x7c>)
c0de1d38:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1d78 <ui_menu_main+0x80>)
c0de1d3a:	4b10      	ldr	r3, [pc, #64]	@ (c0de1d7c <ui_menu_main+0x84>)
c0de1d3c:	4478      	add	r0, pc
c0de1d3e:	447a      	add	r2, pc
c0de1d40:	447b      	add	r3, pc
c0de1d42:	e9cd 3200 	strd	r3, r2, [sp]
c0de1d46:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1d4a:	2200      	movs	r2, #0
c0de1d4c:	23ff      	movs	r3, #255	@ 0xff
c0de1d4e:	480c      	ldr	r0, [pc, #48]	@ (c0de1d80 <ui_menu_main+0x88>)
c0de1d50:	490c      	ldr	r1, [pc, #48]	@ (c0de1d84 <ui_menu_main+0x8c>)
c0de1d52:	4478      	add	r0, pc
c0de1d54:	4479      	add	r1, pc
c0de1d56:	f003 f93b 	bl	c0de4fd0 <nbgl_useCaseHomeAndSettings>
c0de1d5a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1d5c:	000005d8 	.word	0x000005d8
c0de1d60:	000078fe 	.word	0x000078fe
c0de1d64:	000065fd 	.word	0x000065fd
c0de1d68:	00006764 	.word	0x00006764
c0de1d6c:	00006660 	.word	0x00006660
c0de1d70:	000064cc 	.word	0x000064cc
c0de1d74:	ffffffb1 	.word	0xffffffb1
c0de1d78:	0000721a 	.word	0x0000721a
c0de1d7c:	0000720c 	.word	0x0000720c
c0de1d80:	000067d4 	.word	0x000067d4
c0de1d84:	000062fb 	.word	0x000062fb

c0de1d88 <controls_callback>:
c0de1d88:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1d8a:	4c22      	ldr	r4, [pc, #136]	@ (c0de1e14 <controls_callback+0x8c>)
c0de1d8c:	2815      	cmp	r0, #21
c0de1d8e:	f809 2004 	strb.w	r2, [r9, r4]
c0de1d92:	d011      	beq.n	c0de1db8 <controls_callback+0x30>
c0de1d94:	2814      	cmp	r0, #20
c0de1d96:	d12a      	bne.n	c0de1dee <controls_callback+0x66>
c0de1d98:	eb09 0504 	add.w	r5, r9, r4
c0de1d9c:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1e18 <controls_callback+0x90>)
c0de1d9e:	447c      	add	r4, pc
c0de1da0:	f000 f88a 	bl	c0de1eb8 <OUTLINED_FUNCTION_0>
c0de1da4:	7800      	ldrb	r0, [r0, #0]
c0de1da6:	fab0 f080 	clz	r0, r0
c0de1daa:	0940      	lsrs	r0, r0, #5
c0de1dac:	7328      	strb	r0, [r5, #12]
c0de1dae:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1db2:	f000 f881 	bl	c0de1eb8 <OUTLINED_FUNCTION_0>
c0de1db6:	e015      	b.n	c0de1de4 <controls_callback+0x5c>
c0de1db8:	4818      	ldr	r0, [pc, #96]	@ (c0de1e1c <controls_callback+0x94>)
c0de1dba:	4478      	add	r0, pc
c0de1dbc:	f005 fda8 	bl	c0de7910 <pic>
c0de1dc0:	7840      	ldrb	r0, [r0, #1]
c0de1dc2:	b1a8      	cbz	r0, c0de1df0 <controls_callback+0x68>
c0de1dc4:	eb09 0504 	add.w	r5, r9, r4
c0de1dc8:	4c15      	ldr	r4, [pc, #84]	@ (c0de1e20 <controls_callback+0x98>)
c0de1dca:	447c      	add	r4, pc
c0de1dcc:	f000 f874 	bl	c0de1eb8 <OUTLINED_FUNCTION_0>
c0de1dd0:	7840      	ldrb	r0, [r0, #1]
c0de1dd2:	fab0 f080 	clz	r0, r0
c0de1dd6:	0940      	lsrs	r0, r0, #5
c0de1dd8:	7628      	strb	r0, [r5, #24]
c0de1dda:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1dde:	f000 f86b 	bl	c0de1eb8 <OUTLINED_FUNCTION_0>
c0de1de2:	3001      	adds	r0, #1
c0de1de4:	f10d 010f 	add.w	r1, sp, #15
c0de1de8:	2201      	movs	r2, #1
c0de1dea:	f005 fdc1 	bl	c0de7970 <nvm_write>
c0de1dee:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1df0:	480c      	ldr	r0, [pc, #48]	@ (c0de1e24 <controls_callback+0x9c>)
c0de1df2:	490d      	ldr	r1, [pc, #52]	@ (c0de1e28 <controls_callback+0xa0>)
c0de1df4:	4478      	add	r0, pc
c0de1df6:	4479      	add	r1, pc
c0de1df8:	e9cd 1000 	strd	r1, r0, [sp]
c0de1dfc:	480b      	ldr	r0, [pc, #44]	@ (c0de1e2c <controls_callback+0xa4>)
c0de1dfe:	490c      	ldr	r1, [pc, #48]	@ (c0de1e30 <controls_callback+0xa8>)
c0de1e00:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1e34 <controls_callback+0xac>)
c0de1e02:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1e38 <controls_callback+0xb0>)
c0de1e04:	4478      	add	r0, pc
c0de1e06:	4479      	add	r1, pc
c0de1e08:	447a      	add	r2, pc
c0de1e0a:	447b      	add	r3, pc
c0de1e0c:	f003 fd76 	bl	c0de58fc <nbgl_useCaseChoice>
c0de1e10:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1e12:	bf00      	nop
c0de1e14:	000005d8 	.word	0x000005d8
c0de1e18:	0000785e 	.word	0x0000785e
c0de1e1c:	00007842 	.word	0x00007842
c0de1e20:	00007832 	.word	0x00007832
c0de1e24:	00000045 	.word	0x00000045
c0de1e28:	000065b8 	.word	0x000065b8
c0de1e2c:	000063c5 	.word	0x000063c5
c0de1e30:	000063f0 	.word	0x000063f0
c0de1e34:	0000648e 	.word	0x0000648e
c0de1e38:	00006674 	.word	0x00006674

c0de1e3c <review_warning_choice>:
c0de1e3c:	b5b0      	push	{r4, r5, r7, lr}
c0de1e3e:	b086      	sub	sp, #24
c0de1e40:	b1a8      	cbz	r0, c0de1e6e <review_warning_choice+0x32>
c0de1e42:	4c17      	ldr	r4, [pc, #92]	@ (c0de1ea0 <review_warning_choice+0x64>)
c0de1e44:	4815      	ldr	r0, [pc, #84]	@ (c0de1e9c <review_warning_choice+0x60>)
c0de1e46:	447c      	add	r4, pc
c0de1e48:	eb09 0500 	add.w	r5, r9, r0
c0de1e4c:	f000 f834 	bl	c0de1eb8 <OUTLINED_FUNCTION_0>
c0de1e50:	7840      	ldrb	r0, [r0, #1]
c0de1e52:	fab0 f080 	clz	r0, r0
c0de1e56:	0940      	lsrs	r0, r0, #5
c0de1e58:	7628      	strb	r0, [r5, #24]
c0de1e5a:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1e5e:	f000 f82b 	bl	c0de1eb8 <OUTLINED_FUNCTION_0>
c0de1e62:	3001      	adds	r0, #1
c0de1e64:	f10d 0117 	add.w	r1, sp, #23
c0de1e68:	2201      	movs	r2, #1
c0de1e6a:	f005 fd81 	bl	c0de7970 <nvm_write>
c0de1e6e:	480b      	ldr	r0, [pc, #44]	@ (c0de1e9c <review_warning_choice+0x60>)
c0de1e70:	2100      	movs	r1, #0
c0de1e72:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1e76:	480b      	ldr	r0, [pc, #44]	@ (c0de1ea4 <review_warning_choice+0x68>)
c0de1e78:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1ea8 <review_warning_choice+0x6c>)
c0de1e7a:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1eac <review_warning_choice+0x70>)
c0de1e7c:	4478      	add	r0, pc
c0de1e7e:	447a      	add	r2, pc
c0de1e80:	447c      	add	r4, pc
c0de1e82:	e9cd 4200 	strd	r4, r2, [sp]
c0de1e86:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1e8a:	2200      	movs	r2, #0
c0de1e8c:	4808      	ldr	r0, [pc, #32]	@ (c0de1eb0 <review_warning_choice+0x74>)
c0de1e8e:	4909      	ldr	r1, [pc, #36]	@ (c0de1eb4 <review_warning_choice+0x78>)
c0de1e90:	4478      	add	r0, pc
c0de1e92:	4479      	add	r1, pc
c0de1e94:	f003 f89c 	bl	c0de4fd0 <nbgl_useCaseHomeAndSettings>
c0de1e98:	b006      	add	sp, #24
c0de1e9a:	bdb0      	pop	{r4, r5, r7, pc}
c0de1e9c:	000005d8 	.word	0x000005d8
c0de1ea0:	000077b6 	.word	0x000077b6
c0de1ea4:	fffffe71 	.word	0xfffffe71
c0de1ea8:	000070da 	.word	0x000070da
c0de1eac:	000070cc 	.word	0x000070cc
c0de1eb0:	00006696 	.word	0x00006696
c0de1eb4:	000061bd 	.word	0x000061bd

c0de1eb8 <OUTLINED_FUNCTION_0>:
c0de1eb8:	4620      	mov	r0, r4
c0de1eba:	f005 bd29 	b.w	c0de7910 <pic>
	...

c0de1ec0 <ui_display_address>:
c0de1ec0:	b570      	push	{r4, r5, r6, lr}
c0de1ec2:	b088      	sub	sp, #32
c0de1ec4:	4e22      	ldr	r6, [pc, #136]	@ (c0de1f50 <ui_display_address+0x90>)
c0de1ec6:	eb09 0106 	add.w	r1, r9, r6
c0de1eca:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1ece:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1ed2:	4308      	orrs	r0, r1
c0de1ed4:	d12a      	bne.n	c0de1f2c <ui_display_address+0x6c>
c0de1ed6:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1f54 <ui_display_address+0x94>)
c0de1ed8:	212b      	movs	r1, #43	@ 0x2b
c0de1eda:	eb09 0005 	add.w	r0, r9, r5
c0de1ede:	f006 f823 	bl	c0de7f28 <__aeabi_memclr>
c0de1ee2:	ac03      	add	r4, sp, #12
c0de1ee4:	2114      	movs	r1, #20
c0de1ee6:	4620      	mov	r0, r4
c0de1ee8:	f006 f81e 	bl	c0de7f28 <__aeabi_memclr>
c0de1eec:	eb09 0006 	add.w	r0, r9, r6
c0de1ef0:	4621      	mov	r1, r4
c0de1ef2:	2214      	movs	r2, #20
c0de1ef4:	3008      	adds	r0, #8
c0de1ef6:	f7fe f897 	bl	c0de0028 <address_from_pubkey>
c0de1efa:	b308      	cbz	r0, c0de1f40 <ui_display_address+0x80>
c0de1efc:	eb09 0205 	add.w	r2, r9, r5
c0de1f00:	a803      	add	r0, sp, #12
c0de1f02:	2114      	movs	r1, #20
c0de1f04:	232b      	movs	r3, #43	@ 0x2b
c0de1f06:	f004 ffeb 	bl	c0de6ee0 <format_hex>
c0de1f0a:	3001      	adds	r0, #1
c0de1f0c:	d018      	beq.n	c0de1f40 <ui_display_address+0x80>
c0de1f0e:	4812      	ldr	r0, [pc, #72]	@ (c0de1f58 <ui_display_address+0x98>)
c0de1f10:	2400      	movs	r4, #0
c0de1f12:	2100      	movs	r1, #0
c0de1f14:	4478      	add	r0, pc
c0de1f16:	e9cd 4000 	strd	r4, r0, [sp]
c0de1f1a:	eb09 0005 	add.w	r0, r9, r5
c0de1f1e:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1f5c <ui_display_address+0x9c>)
c0de1f20:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1f60 <ui_display_address+0xa0>)
c0de1f22:	447a      	add	r2, pc
c0de1f24:	447b      	add	r3, pc
c0de1f26:	f003 f9cd 	bl	c0de52c4 <nbgl_useCaseAddressReview>
c0de1f2a:	e00e      	b.n	c0de1f4a <ui_display_address+0x8a>
c0de1f2c:	2000      	movs	r0, #0
c0de1f2e:	f809 0006 	strb.w	r0, [r9, r6]
c0de1f32:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1f36:	b008      	add	sp, #32
c0de1f38:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1f3c:	f000 b812 	b.w	c0de1f64 <io_send_sw>
c0de1f40:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1f44:	f000 f80e 	bl	c0de1f64 <io_send_sw>
c0de1f48:	4604      	mov	r4, r0
c0de1f4a:	4620      	mov	r0, r4
c0de1f4c:	b008      	add	sp, #32
c0de1f4e:	bd70      	pop	{r4, r5, r6, pc}
c0de1f50:	00000000 	.word	0x00000000
c0de1f54:	000005f4 	.word	0x000005f4
c0de1f58:	0000005d 	.word	0x0000005d
c0de1f5c:	000062ca 	.word	0x000062ca
c0de1f60:	000065ca 	.word	0x000065ca

c0de1f64 <io_send_sw>:
c0de1f64:	b580      	push	{r7, lr}
c0de1f66:	4602      	mov	r2, r0
c0de1f68:	2000      	movs	r0, #0
c0de1f6a:	2100      	movs	r1, #0
c0de1f6c:	f005 f818 	bl	c0de6fa0 <io_send_response_buffers>
c0de1f70:	bd80      	pop	{r7, pc}
	...

c0de1f74 <review_choice>:
c0de1f74:	b510      	push	{r4, lr}
c0de1f76:	4604      	mov	r4, r0
c0de1f78:	f7ff fe5a 	bl	c0de1c30 <validate_pubkey>
c0de1f7c:	2007      	movs	r0, #7
c0de1f7e:	2c00      	cmp	r4, #0
c0de1f80:	bf18      	it	ne
c0de1f82:	2006      	movne	r0, #6
c0de1f84:	4902      	ldr	r1, [pc, #8]	@ (c0de1f90 <review_choice+0x1c>)
c0de1f86:	4479      	add	r1, pc
c0de1f88:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1f8c:	f003 bb8c 	b.w	c0de56a8 <nbgl_useCaseReviewStatus>
c0de1f90:	fffffd6f 	.word	0xfffffd6f

c0de1f94 <ui_display_transaction_bs_choice>:
c0de1f94:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1f96:	b085      	sub	sp, #20
c0de1f98:	4f2d      	ldr	r7, [pc, #180]	@ (c0de2050 <ui_display_transaction_bs_choice+0xbc>)
c0de1f9a:	4604      	mov	r4, r0
c0de1f9c:	eb09 0007 	add.w	r0, r9, r7
c0de1fa0:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1fa4:	2801      	cmp	r0, #1
c0de1fa6:	d137      	bne.n	c0de2018 <ui_display_transaction_bs_choice+0x84>
c0de1fa8:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1fac:	2801      	cmp	r0, #1
c0de1fae:	d133      	bne.n	c0de2018 <ui_display_transaction_bs_choice+0x84>
c0de1fb0:	4e28      	ldr	r6, [pc, #160]	@ (c0de2054 <ui_display_transaction_bs_choice+0xc0>)
c0de1fb2:	2140      	movs	r1, #64	@ 0x40
c0de1fb4:	eb09 0006 	add.w	r0, r9, r6
c0de1fb8:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1fbc:	4628      	mov	r0, r5
c0de1fbe:	f005 ffb3 	bl	c0de7f28 <__aeabi_memclr>
c0de1fc2:	eb09 0007 	add.w	r0, r9, r7
c0de1fc6:	2114      	movs	r1, #20
c0de1fc8:	462a      	mov	r2, r5
c0de1fca:	2340      	movs	r3, #64	@ 0x40
c0de1fcc:	302d      	adds	r0, #45	@ 0x2d
c0de1fce:	f004 ff87 	bl	c0de6ee0 <format_hex>
c0de1fd2:	3001      	adds	r0, #1
c0de1fd4:	d026      	beq.n	c0de2024 <ui_display_transaction_bs_choice+0x90>
c0de1fd6:	4920      	ldr	r1, [pc, #128]	@ (c0de2058 <ui_display_transaction_bs_choice+0xc4>)
c0de1fd8:	eb09 0006 	add.w	r0, r9, r6
c0de1fdc:	4602      	mov	r2, r0
c0de1fde:	4479      	add	r1, pc
c0de1fe0:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1fe4:	2101      	movs	r1, #1
c0de1fe6:	72c1      	strb	r1, [r0, #11]
c0de1fe8:	7201      	strb	r1, [r0, #8]
c0de1fea:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1fee:	f849 2006 	str.w	r2, [r9, r6]
c0de1ff2:	6181      	str	r1, [r0, #24]
c0de1ff4:	2100      	movs	r1, #0
c0de1ff6:	4819      	ldr	r0, [pc, #100]	@ (c0de205c <ui_display_transaction_bs_choice+0xc8>)
c0de1ff8:	4478      	add	r0, pc
c0de1ffa:	b1d4      	cbz	r4, c0de2032 <ui_display_transaction_bs_choice+0x9e>
c0de1ffc:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de2000:	e9cd 1100 	strd	r1, r1, [sp]
c0de2004:	eb09 0106 	add.w	r1, r9, r6
c0de2008:	2000      	movs	r0, #0
c0de200a:	4a15      	ldr	r2, [pc, #84]	@ (c0de2060 <ui_display_transaction_bs_choice+0xcc>)
c0de200c:	4b15      	ldr	r3, [pc, #84]	@ (c0de2064 <ui_display_transaction_bs_choice+0xd0>)
c0de200e:	447a      	add	r2, pc
c0de2010:	447b      	add	r3, pc
c0de2012:	f003 f945 	bl	c0de52a0 <nbgl_useCaseReviewBlindSigning>
c0de2016:	e018      	b.n	c0de204a <ui_display_transaction_bs_choice+0xb6>
c0de2018:	2000      	movs	r0, #0
c0de201a:	f809 0007 	strb.w	r0, [r9, r7]
c0de201e:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de2022:	e001      	b.n	c0de2028 <ui_display_transaction_bs_choice+0x94>
c0de2024:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de2028:	b005      	add	sp, #20
c0de202a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de202e:	f000 b81f 	b.w	c0de2070 <io_send_sw>
c0de2032:	e9cd 1100 	strd	r1, r1, [sp]
c0de2036:	9002      	str	r0, [sp, #8]
c0de2038:	eb09 0106 	add.w	r1, r9, r6
c0de203c:	2000      	movs	r0, #0
c0de203e:	4a0a      	ldr	r2, [pc, #40]	@ (c0de2068 <ui_display_transaction_bs_choice+0xd4>)
c0de2040:	4b0a      	ldr	r3, [pc, #40]	@ (c0de206c <ui_display_transaction_bs_choice+0xd8>)
c0de2042:	447a      	add	r2, pc
c0de2044:	447b      	add	r3, pc
c0de2046:	f003 f86b 	bl	c0de5120 <nbgl_useCaseReview>
c0de204a:	2000      	movs	r0, #0
c0de204c:	b005      	add	sp, #20
c0de204e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2050:	00000000 	.word	0x00000000
c0de2054:	00000620 	.word	0x00000620
c0de2058:	000064b6 	.word	0x000064b6
c0de205c:	00000085 	.word	0x00000085
c0de2060:	000061de 	.word	0x000061de
c0de2064:	000064f1 	.word	0x000064f1
c0de2068:	000061aa 	.word	0x000061aa
c0de206c:	000064bd 	.word	0x000064bd

c0de2070 <io_send_sw>:
c0de2070:	b580      	push	{r7, lr}
c0de2072:	4602      	mov	r2, r0
c0de2074:	2000      	movs	r0, #0
c0de2076:	2100      	movs	r1, #0
c0de2078:	f004 ff92 	bl	c0de6fa0 <io_send_response_buffers>
c0de207c:	bd80      	pop	{r7, pc}
	...

c0de2080 <review_choice>:
c0de2080:	b510      	push	{r4, lr}
c0de2082:	4604      	mov	r4, r0
c0de2084:	f7ff fde2 	bl	c0de1c4c <validate_transaction>
c0de2088:	4903      	ldr	r1, [pc, #12]	@ (c0de2098 <review_choice+0x18>)
c0de208a:	f084 0001 	eor.w	r0, r4, #1
c0de208e:	4479      	add	r1, pc
c0de2090:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2094:	f003 bb08 	b.w	c0de56a8 <nbgl_useCaseReviewStatus>
c0de2098:	fffffc67 	.word	0xfffffc67

c0de209c <ui_display_blind_signed_transaction>:
c0de209c:	2001      	movs	r0, #1
c0de209e:	f7ff bf79 	b.w	c0de1f94 <ui_display_transaction_bs_choice>

c0de20a2 <ui_display_transaction>:
c0de20a2:	2000      	movs	r0, #0
c0de20a4:	f7ff bf76 	b.w	c0de1f94 <ui_display_transaction_bs_choice>

c0de20a8 <zkn_prv_hash>:
c0de20a8:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de20ac:	460c      	mov	r4, r1
c0de20ae:	e9cd 0200 	strd	r0, r2, [sp]
c0de20b2:	4668      	mov	r0, sp
c0de20b4:	2101      	movs	r1, #1
c0de20b6:	2601      	movs	r6, #1
c0de20b8:	4622      	mov	r2, r4
c0de20ba:	f005 f9de 	bl	c0de747a <cx_blake2b_512_hash_iovec>
c0de20be:	4605      	mov	r5, r0
c0de20c0:	bb18      	cbnz	r0, c0de210a <zkn_prv_hash+0x62>
c0de20c2:	7820      	ldrb	r0, [r4, #0]
c0de20c4:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de20c8:	7020      	strb	r0, [r4, #0]
c0de20ca:	7fe0      	ldrb	r0, [r4, #31]
c0de20cc:	f366 109f 	bfi	r0, r6, #6, #26
c0de20d0:	77e0      	strb	r0, [r4, #31]
c0de20d2:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de20d6:	4e0e      	ldr	r6, [pc, #56]	@ (c0de2110 <zkn_prv_hash+0x68>)
c0de20d8:	447e      	add	r6, pc
c0de20da:	47b0      	blx	r6
c0de20dc:	4680      	mov	r8, r0
c0de20de:	468a      	mov	sl, r1
c0de20e0:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de20e4:	47b0      	blx	r6
c0de20e6:	4683      	mov	fp, r0
c0de20e8:	460f      	mov	r7, r1
c0de20ea:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de20ee:	47b0      	blx	r6
c0de20f0:	e9c4 0100 	strd	r0, r1, [r4]
c0de20f4:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de20f8:	47b0      	blx	r6
c0de20fa:	f104 0208 	add.w	r2, r4, #8
c0de20fe:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de2102:	f104 0014 	add.w	r0, r4, #20
c0de2106:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de210a:	4628      	mov	r0, r5
c0de210c:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de2110:	00000325 	.word	0x00000325

c0de2114 <zkn_prv2pub>:
c0de2114:	b570      	push	{r4, r5, r6, lr}
c0de2116:	b092      	sub	sp, #72	@ 0x48
c0de2118:	4614      	mov	r4, r2
c0de211a:	6802      	ldr	r2, [r0, #0]
c0de211c:	ae02      	add	r6, sp, #8
c0de211e:	4605      	mov	r5, r0
c0de2120:	4608      	mov	r0, r1
c0de2122:	4631      	mov	r1, r6
c0de2124:	f7ff ffc0 	bl	c0de20a8 <zkn_prv_hash>
c0de2128:	2000      	movs	r0, #0
c0de212a:	2100      	movs	r1, #0
c0de212c:	2820      	cmp	r0, #32
c0de212e:	d009      	beq.n	c0de2144 <zkn_prv2pub+0x30>
c0de2130:	5c32      	ldrb	r2, [r6, r0]
c0de2132:	0149      	lsls	r1, r1, #5
c0de2134:	0613      	lsls	r3, r2, #24
c0de2136:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de213a:	5431      	strb	r1, [r6, r0]
c0de213c:	f002 0107 	and.w	r1, r2, #7
c0de2140:	3001      	adds	r0, #1
c0de2142:	e7f3      	b.n	c0de212c <zkn_prv2pub+0x18>
c0de2144:	4629      	mov	r1, r5
c0de2146:	4628      	mov	r0, r5
c0de2148:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de214c:	9400      	str	r4, [sp, #0]
c0de214e:	aa02      	add	r2, sp, #8
c0de2150:	f001 f944 	bl	c0de33dc <tEdwards_scalarMul>
c0de2154:	b918      	cbnz	r0, c0de215e <zkn_prv2pub+0x4a>
c0de2156:	4628      	mov	r0, r5
c0de2158:	4621      	mov	r1, r4
c0de215a:	f001 f87a 	bl	c0de3252 <tEdwards_normalize>
c0de215e:	b012      	add	sp, #72	@ 0x48
c0de2160:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de2164 <EddsaPoseidon_Sign_final>:
c0de2164:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2168:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de216c:	4605      	mov	r5, r0
c0de216e:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de2170:	2820      	cmp	r0, #32
c0de2172:	d118      	bne.n	c0de21a6 <EddsaPoseidon_Sign_final+0x42>
c0de2174:	460e      	mov	r6, r1
c0de2176:	a982      	add	r1, sp, #520	@ 0x208
c0de2178:	4628      	mov	r0, r5
c0de217a:	461f      	mov	r7, r3
c0de217c:	4692      	mov	sl, r2
c0de217e:	f000 fd37 	bl	c0de2bf0 <tEdwards_alloc>
c0de2182:	b988      	cbnz	r0, c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2184:	682a      	ldr	r2, [r5, #0]
c0de2186:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de2188:	4630      	mov	r0, r6
c0de218a:	4621      	mov	r1, r4
c0de218c:	f7ff ff8c 	bl	c0de20a8 <zkn_prv_hash>
c0de2190:	b950      	cbnz	r0, c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2192:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de2196:	2000      	movs	r0, #0
c0de2198:	a95a      	add	r1, sp, #360	@ 0x168
c0de219a:	2820      	cmp	r0, #32
c0de219c:	d008      	beq.n	c0de21b0 <EddsaPoseidon_Sign_final+0x4c>
c0de219e:	5c22      	ldrb	r2, [r4, r0]
c0de21a0:	540a      	strb	r2, [r1, r0]
c0de21a2:	3001      	adds	r0, #1
c0de21a4:	e7f9      	b.n	c0de219a <EddsaPoseidon_Sign_final+0x36>
c0de21a6:	4894      	ldr	r0, [pc, #592]	@ (c0de23f8 <EddsaPoseidon_Sign_final+0x294>)
c0de21a8:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de21ac:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de21b0:	a812      	add	r0, sp, #72	@ 0x48
c0de21b2:	2109      	movs	r1, #9
c0de21b4:	2240      	movs	r2, #64	@ 0x40
c0de21b6:	f005 f981 	bl	c0de74bc <cx_hash_init_ex>
c0de21ba:	2800      	cmp	r0, #0
c0de21bc:	d1f4      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de21be:	f104 0120 	add.w	r1, r4, #32
c0de21c2:	a812      	add	r0, sp, #72	@ 0x48
c0de21c4:	2220      	movs	r2, #32
c0de21c6:	f005 f97e 	bl	c0de74c6 <cx_hash_update>
c0de21ca:	2800      	cmp	r0, #0
c0de21cc:	d1ec      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de21ce:	a812      	add	r0, sp, #72	@ 0x48
c0de21d0:	4639      	mov	r1, r7
c0de21d2:	2220      	movs	r2, #32
c0de21d4:	f005 f977 	bl	c0de74c6 <cx_hash_update>
c0de21d8:	2800      	cmp	r0, #0
c0de21da:	d1e5      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de21dc:	a812      	add	r0, sp, #72	@ 0x48
c0de21de:	ac62      	add	r4, sp, #392	@ 0x188
c0de21e0:	4621      	mov	r1, r4
c0de21e2:	f005 f966 	bl	c0de74b2 <cx_hash_final>
c0de21e6:	2800      	cmp	r0, #0
c0de21e8:	d1de      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de21ea:	203f      	movs	r0, #63	@ 0x3f
c0de21ec:	a972      	add	r1, sp, #456	@ 0x1c8
c0de21ee:	1c42      	adds	r2, r0, #1
c0de21f0:	d004      	beq.n	c0de21fc <EddsaPoseidon_Sign_final+0x98>
c0de21f2:	5c22      	ldrb	r2, [r4, r0]
c0de21f4:	3801      	subs	r0, #1
c0de21f6:	f801 2b01 	strb.w	r2, [r1], #1
c0de21fa:	e7f8      	b.n	c0de21ee <EddsaPoseidon_Sign_final+0x8a>
c0de21fc:	a889      	add	r0, sp, #548	@ 0x224
c0de21fe:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de2200:	2140      	movs	r1, #64	@ 0x40
c0de2202:	2340      	movs	r3, #64	@ 0x40
c0de2204:	f005 fbda 	bl	c0de79bc <cx_bn_alloc_init>
c0de2208:	2800      	cmp	r0, #0
c0de220a:	d1cd      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de220c:	a887      	add	r0, sp, #540	@ 0x21c
c0de220e:	2140      	movs	r1, #64	@ 0x40
c0de2210:	f005 fbca 	bl	c0de79a8 <cx_bn_alloc>
c0de2214:	2800      	cmp	r0, #0
c0de2216:	d1c7      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2218:	4978      	ldr	r1, [pc, #480]	@ (c0de23fc <EddsaPoseidon_Sign_final+0x298>)
c0de221a:	f10d 0808 	add.w	r8, sp, #8
c0de221e:	2240      	movs	r2, #64	@ 0x40
c0de2220:	4640      	mov	r0, r8
c0de2222:	4479      	add	r1, pc
c0de2224:	f005 fe76 	bl	c0de7f14 <__aeabi_memcpy>
c0de2228:	a888      	add	r0, sp, #544	@ 0x220
c0de222a:	2140      	movs	r1, #64	@ 0x40
c0de222c:	4642      	mov	r2, r8
c0de222e:	2340      	movs	r3, #64	@ 0x40
c0de2230:	f005 fbc4 	bl	c0de79bc <cx_bn_alloc_init>
c0de2234:	2800      	cmp	r0, #0
c0de2236:	d1b7      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2238:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de223a:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de223e:	f005 fc51 	bl	c0de7ae4 <cx_bn_reduce>
c0de2242:	2800      	cmp	r0, #0
c0de2244:	d1b0      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2246:	aa87      	add	r2, sp, #540	@ 0x21c
c0de2248:	f105 010c 	add.w	r1, r5, #12
c0de224c:	ab82      	add	r3, sp, #520	@ 0x208
c0de224e:	4628      	mov	r0, r5
c0de2250:	f001 f85e 	bl	c0de3310 <tEdwards_scalarMul_bn>
c0de2254:	2800      	cmp	r0, #0
c0de2256:	d1a7      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2258:	a982      	add	r1, sp, #520	@ 0x208
c0de225a:	4628      	mov	r0, r5
c0de225c:	f000 fff9 	bl	c0de3252 <tEdwards_normalize>
c0de2260:	2800      	cmp	r0, #0
c0de2262:	d1a1      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2264:	f10b 0320 	add.w	r3, fp, #32
c0de2268:	a982      	add	r1, sp, #520	@ 0x208
c0de226a:	4628      	mov	r0, r5
c0de226c:	465a      	mov	r2, fp
c0de226e:	f000 ffca 	bl	c0de3206 <tEdwards_export>
c0de2272:	2800      	cmp	r0, #0
c0de2274:	d198      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2276:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de2278:	a952      	add	r1, sp, #328	@ 0x148
c0de227a:	2220      	movs	r2, #32
c0de227c:	f005 fbde 	bl	c0de7a3c <cx_bn_export>
c0de2280:	2800      	cmp	r0, #0
c0de2282:	d191      	bne.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2284:	a888      	add	r0, sp, #544	@ 0x220
c0de2286:	f005 fba5 	bl	c0de79d4 <cx_bn_destroy>
c0de228a:	2800      	cmp	r0, #0
c0de228c:	f47f af8c 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2290:	a889      	add	r0, sp, #548	@ 0x224
c0de2292:	f005 fb9f 	bl	c0de79d4 <cx_bn_destroy>
c0de2296:	2800      	cmp	r0, #0
c0de2298:	f47f af86 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de229c:	a887      	add	r0, sp, #540	@ 0x21c
c0de229e:	f005 fb99 	bl	c0de79d4 <cx_bn_destroy>
c0de22a2:	2800      	cmp	r0, #0
c0de22a4:	f47f af80 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de22a8:	4628      	mov	r0, r5
c0de22aa:	f000 ff50 	bl	c0de314e <tEdwards_Curve_partial_destroy>
c0de22ae:	2800      	cmp	r0, #0
c0de22b0:	f47f af7a 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de22b4:	f105 0420 	add.w	r4, r5, #32
c0de22b8:	a88a      	add	r0, sp, #552	@ 0x228
c0de22ba:	f000 f8a5 	bl	c0de2408 <OUTLINED_FUNCTION_0>
c0de22be:	2800      	cmp	r0, #0
c0de22c0:	f47f af72 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de22c4:	201f      	movs	r0, #31
c0de22c6:	a962      	add	r1, sp, #392	@ 0x188
c0de22c8:	1c42      	adds	r2, r0, #1
c0de22ca:	d004      	beq.n	c0de22d6 <EddsaPoseidon_Sign_final+0x172>
c0de22cc:	5c3a      	ldrb	r2, [r7, r0]
c0de22ce:	3801      	subs	r0, #1
c0de22d0:	f801 2b01 	strb.w	r2, [r1], #1
c0de22d4:	e7f8      	b.n	c0de22c8 <EddsaPoseidon_Sign_final+0x164>
c0de22d6:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de22d8:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de22da:	f005 fb9b 	bl	c0de7a14 <cx_bn_copy>
c0de22de:	2800      	cmp	r0, #0
c0de22e0:	f47f af62 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de22e4:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de22e6:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de22e8:	f005 fb94 	bl	c0de7a14 <cx_bn_copy>
c0de22ec:	2800      	cmp	r0, #0
c0de22ee:	f47f af5b 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de22f2:	f8da 1000 	ldr.w	r1, [sl]
c0de22f6:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de22f8:	f005 fb8c 	bl	c0de7a14 <cx_bn_copy>
c0de22fc:	2800      	cmp	r0, #0
c0de22fe:	f47f af53 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2302:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de2306:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de2308:	f005 fb84 	bl	c0de7a14 <cx_bn_copy>
c0de230c:	2800      	cmp	r0, #0
c0de230e:	f47f af4b 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2312:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de2314:	a962      	add	r1, sp, #392	@ 0x188
c0de2316:	2220      	movs	r2, #32
c0de2318:	f005 fb70 	bl	c0de79fc <cx_bn_init>
c0de231c:	2800      	cmp	r0, #0
c0de231e:	f47f af43 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2322:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de2324:	4622      	mov	r2, r4
c0de2326:	4601      	mov	r1, r0
c0de2328:	f005 fc12 	bl	c0de7b50 <cx_mont_to_montgomery>
c0de232c:	2800      	cmp	r0, #0
c0de232e:	f47f af3b 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2332:	a982      	add	r1, sp, #520	@ 0x208
c0de2334:	4628      	mov	r0, r5
c0de2336:	f000 fc70 	bl	c0de2c1a <tEdwards_destroy>
c0de233a:	2800      	cmp	r0, #0
c0de233c:	f47f af34 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2340:	a885      	add	r0, sp, #532	@ 0x214
c0de2342:	2120      	movs	r1, #32
c0de2344:	f005 fb30 	bl	c0de79a8 <cx_bn_alloc>
c0de2348:	2800      	cmp	r0, #0
c0de234a:	f47f af2d 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de234e:	a88a      	add	r0, sp, #552	@ 0x228
c0de2350:	aa85      	add	r2, sp, #532	@ 0x214
c0de2352:	2100      	movs	r1, #0
c0de2354:	2301      	movs	r3, #1
c0de2356:	f001 f9cd 	bl	c0de36f4 <Poseidon>
c0de235a:	2800      	cmp	r0, #0
c0de235c:	f47f af24 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2360:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2362:	4622      	mov	r2, r4
c0de2364:	4601      	mov	r1, r0
c0de2366:	f005 fbff 	bl	c0de7b68 <cx_mont_from_montgomery>
c0de236a:	2800      	cmp	r0, #0
c0de236c:	f47f af1c 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2370:	a886      	add	r0, sp, #536	@ 0x218
c0de2372:	aa5a      	add	r2, sp, #360	@ 0x168
c0de2374:	2120      	movs	r1, #32
c0de2376:	2320      	movs	r3, #32
c0de2378:	f005 fb20 	bl	c0de79bc <cx_bn_alloc_init>
c0de237c:	2800      	cmp	r0, #0
c0de237e:	f47f af13 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2382:	a801      	add	r0, sp, #4
c0de2384:	2120      	movs	r1, #32
c0de2386:	f005 fb0f 	bl	c0de79a8 <cx_bn_alloc>
c0de238a:	2800      	cmp	r0, #0
c0de238c:	f47f af0c 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de2390:	f108 0220 	add.w	r2, r8, #32
c0de2394:	a888      	add	r0, sp, #544	@ 0x220
c0de2396:	2120      	movs	r1, #32
c0de2398:	2320      	movs	r3, #32
c0de239a:	f005 fb0f 	bl	c0de79bc <cx_bn_alloc_init>
c0de239e:	2800      	cmp	r0, #0
c0de23a0:	f47f af02 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de23a4:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de23a6:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de23aa:	9801      	ldr	r0, [sp, #4]
c0de23ac:	f005 fb8e 	bl	c0de7acc <cx_bn_mod_mul>
c0de23b0:	2800      	cmp	r0, #0
c0de23b2:	f47f aef9 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de23b6:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de23b8:	a952      	add	r1, sp, #328	@ 0x148
c0de23ba:	2220      	movs	r2, #32
c0de23bc:	f005 fb1e 	bl	c0de79fc <cx_bn_init>
c0de23c0:	2800      	cmp	r0, #0
c0de23c2:	f47f aef1 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de23c6:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de23c8:	9a01      	ldr	r2, [sp, #4]
c0de23ca:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de23ce:	f005 fb65 	bl	c0de7a9c <cx_bn_mod_add>
c0de23d2:	2800      	cmp	r0, #0
c0de23d4:	f47f aee8 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de23d8:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de23da:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de23de:	f005 fb81 	bl	c0de7ae4 <cx_bn_reduce>
c0de23e2:	2800      	cmp	r0, #0
c0de23e4:	f47f aee0 	bne.w	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de23e8:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de23ea:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de23ee:	2220      	movs	r2, #32
c0de23f0:	f005 fb24 	bl	c0de7a3c <cx_bn_export>
c0de23f4:	e6d8      	b.n	c0de21a8 <EddsaPoseidon_Sign_final+0x44>
c0de23f6:	bf00      	nop
c0de23f8:	5a4b4e03 	.word	0x5a4b4e03
c0de23fc:	00006d8e 	.word	0x00006d8e

c0de2400 <rev64>:
c0de2400:	ba0a      	rev	r2, r1
c0de2402:	ba01      	rev	r1, r0
c0de2404:	4610      	mov	r0, r2
c0de2406:	4770      	bx	lr

c0de2408 <OUTLINED_FUNCTION_0>:
c0de2408:	2105      	movs	r1, #5
c0de240a:	2205      	movs	r2, #5
c0de240c:	4623      	mov	r3, r4
c0de240e:	f001 b90b 	b.w	c0de3628 <Poseidon_alloc_init>

c0de2412 <zkn_frost_interpolate>:
c0de2412:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de2416:	b085      	sub	sp, #20
c0de2418:	460e      	mov	r6, r1
c0de241a:	4607      	mov	r7, r0
c0de241c:	a803      	add	r0, sp, #12
c0de241e:	2120      	movs	r1, #32
c0de2420:	f000 fbda 	bl	c0de2bd8 <OUTLINED_FUNCTION_4>
c0de2424:	b988      	cbnz	r0, c0de244a <zkn_frost_interpolate+0x38>
c0de2426:	a802      	add	r0, sp, #8
c0de2428:	f000 fbcf 	bl	c0de2bca <OUTLINED_FUNCTION_2>
c0de242c:	b968      	cbnz	r0, c0de244a <zkn_frost_interpolate+0x38>
c0de242e:	a801      	add	r0, sp, #4
c0de2430:	f000 fbcb 	bl	c0de2bca <OUTLINED_FUNCTION_2>
c0de2434:	b948      	cbnz	r0, c0de244a <zkn_frost_interpolate+0x38>
c0de2436:	9803      	ldr	r0, [sp, #12]
c0de2438:	2101      	movs	r1, #1
c0de243a:	f005 faf5 	bl	c0de7a28 <cx_bn_set_u32>
c0de243e:	b920      	cbnz	r0, c0de244a <zkn_frost_interpolate+0x38>
c0de2440:	9802      	ldr	r0, [sp, #8]
c0de2442:	2101      	movs	r1, #1
c0de2444:	f005 faf0 	bl	c0de7a28 <cx_bn_set_u32>
c0de2448:	b110      	cbz	r0, c0de2450 <zkn_frost_interpolate+0x3e>
c0de244a:	b005      	add	sp, #20
c0de244c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de2450:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de2454:	f10d 0a10 	add.w	sl, sp, #16
c0de2458:	b31e      	cbz	r6, c0de24a2 <zkn_frost_interpolate+0x90>
c0de245a:	6838      	ldr	r0, [r7, #0]
c0de245c:	4629      	mov	r1, r5
c0de245e:	4652      	mov	r2, sl
c0de2460:	f005 faf8 	bl	c0de7a54 <cx_bn_cmp>
c0de2464:	2800      	cmp	r0, #0
c0de2466:	d1f0      	bne.n	c0de244a <zkn_frost_interpolate+0x38>
c0de2468:	9804      	ldr	r0, [sp, #16]
c0de246a:	b1b8      	cbz	r0, c0de249c <zkn_frost_interpolate+0x8a>
c0de246c:	9802      	ldr	r0, [sp, #8]
c0de246e:	683a      	ldr	r2, [r7, #0]
c0de2470:	4623      	mov	r3, r4
c0de2472:	4601      	mov	r1, r0
c0de2474:	f005 fb2a 	bl	c0de7acc <cx_bn_mod_mul>
c0de2478:	2800      	cmp	r0, #0
c0de247a:	d1e6      	bne.n	c0de244a <zkn_frost_interpolate+0x38>
c0de247c:	6839      	ldr	r1, [r7, #0]
c0de247e:	9801      	ldr	r0, [sp, #4]
c0de2480:	462a      	mov	r2, r5
c0de2482:	4623      	mov	r3, r4
c0de2484:	f005 fb16 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2488:	2800      	cmp	r0, #0
c0de248a:	d1de      	bne.n	c0de244a <zkn_frost_interpolate+0x38>
c0de248c:	9803      	ldr	r0, [sp, #12]
c0de248e:	9a01      	ldr	r2, [sp, #4]
c0de2490:	4623      	mov	r3, r4
c0de2492:	4601      	mov	r1, r0
c0de2494:	f005 fb1a 	bl	c0de7acc <cx_bn_mod_mul>
c0de2498:	2800      	cmp	r0, #0
c0de249a:	d1d6      	bne.n	c0de244a <zkn_frost_interpolate+0x38>
c0de249c:	3704      	adds	r7, #4
c0de249e:	3e01      	subs	r6, #1
c0de24a0:	e7da      	b.n	c0de2458 <zkn_frost_interpolate+0x46>
c0de24a2:	9903      	ldr	r1, [sp, #12]
c0de24a4:	4640      	mov	r0, r8
c0de24a6:	4622      	mov	r2, r4
c0de24a8:	f005 fb28 	bl	c0de7afc <cx_bn_mod_invert_nprime>
c0de24ac:	2800      	cmp	r0, #0
c0de24ae:	d1cc      	bne.n	c0de244a <zkn_frost_interpolate+0x38>
c0de24b0:	9a02      	ldr	r2, [sp, #8]
c0de24b2:	4640      	mov	r0, r8
c0de24b4:	4641      	mov	r1, r8
c0de24b6:	4623      	mov	r3, r4
c0de24b8:	f005 fb08 	bl	c0de7acc <cx_bn_mod_mul>
c0de24bc:	2800      	cmp	r0, #0
c0de24be:	d1c4      	bne.n	c0de244a <zkn_frost_interpolate+0x38>
c0de24c0:	a803      	add	r0, sp, #12
c0de24c2:	f005 fa87 	bl	c0de79d4 <cx_bn_destroy>
c0de24c6:	2800      	cmp	r0, #0
c0de24c8:	d1bf      	bne.n	c0de244a <zkn_frost_interpolate+0x38>
c0de24ca:	a802      	add	r0, sp, #8
c0de24cc:	f005 fa82 	bl	c0de79d4 <cx_bn_destroy>
c0de24d0:	e7bb      	b.n	c0de244a <zkn_frost_interpolate+0x38>

c0de24d2 <zkn_frost_interpolate_secrets>:
c0de24d2:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de24d6:	460f      	mov	r7, r1
c0de24d8:	4606      	mov	r6, r0
c0de24da:	a802      	add	r0, sp, #8
c0de24dc:	2120      	movs	r1, #32
c0de24de:	461c      	mov	r4, r3
c0de24e0:	4692      	mov	sl, r2
c0de24e2:	f005 fa61 	bl	c0de79a8 <cx_bn_alloc>
c0de24e6:	b108      	cbz	r0, c0de24ec <zkn_frost_interpolate_secrets+0x1a>
c0de24e8:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de24ec:	a801      	add	r0, sp, #4
c0de24ee:	f000 fb6c 	bl	c0de2bca <OUTLINED_FUNCTION_2>
c0de24f2:	2800      	cmp	r0, #0
c0de24f4:	d1f8      	bne.n	c0de24e8 <zkn_frost_interpolate_secrets+0x16>
c0de24f6:	9802      	ldr	r0, [sp, #8]
c0de24f8:	2100      	movs	r1, #0
c0de24fa:	f005 fa95 	bl	c0de7a28 <cx_bn_set_u32>
c0de24fe:	2800      	cmp	r0, #0
c0de2500:	d1f2      	bne.n	c0de24e8 <zkn_frost_interpolate_secrets+0x16>
c0de2502:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de2506:	2500      	movs	r5, #0
c0de2508:	42ac      	cmp	r4, r5
c0de250a:	d01d      	beq.n	c0de2548 <zkn_frost_interpolate_secrets+0x76>
c0de250c:	9801      	ldr	r0, [sp, #4]
c0de250e:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de2512:	68b3      	ldr	r3, [r6, #8]
c0de2514:	4621      	mov	r1, r4
c0de2516:	9000      	str	r0, [sp, #0]
c0de2518:	4638      	mov	r0, r7
c0de251a:	f7ff ff7a 	bl	c0de2412 <zkn_frost_interpolate>
c0de251e:	2800      	cmp	r0, #0
c0de2520:	d1e2      	bne.n	c0de24e8 <zkn_frost_interpolate_secrets+0x16>
c0de2522:	9801      	ldr	r0, [sp, #4]
c0de2524:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de2528:	68b3      	ldr	r3, [r6, #8]
c0de252a:	4601      	mov	r1, r0
c0de252c:	f005 face 	bl	c0de7acc <cx_bn_mod_mul>
c0de2530:	2800      	cmp	r0, #0
c0de2532:	d1d9      	bne.n	c0de24e8 <zkn_frost_interpolate_secrets+0x16>
c0de2534:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de2538:	68b3      	ldr	r3, [r6, #8]
c0de253a:	4601      	mov	r1, r0
c0de253c:	f005 faae 	bl	c0de7a9c <cx_bn_mod_add>
c0de2540:	3501      	adds	r5, #1
c0de2542:	2800      	cmp	r0, #0
c0de2544:	d0e0      	beq.n	c0de2508 <zkn_frost_interpolate_secrets+0x36>
c0de2546:	e7cf      	b.n	c0de24e8 <zkn_frost_interpolate_secrets+0x16>
c0de2548:	68b2      	ldr	r2, [r6, #8]
c0de254a:	9902      	ldr	r1, [sp, #8]
c0de254c:	4640      	mov	r0, r8
c0de254e:	f005 fac9 	bl	c0de7ae4 <cx_bn_reduce>
c0de2552:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de2556 <zkn_evalshare>:
c0de2556:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de255a:	460e      	mov	r6, r1
c0de255c:	6801      	ldr	r1, [r0, #0]
c0de255e:	4607      	mov	r7, r0
c0de2560:	a801      	add	r0, sp, #4
c0de2562:	f000 fb39 	bl	c0de2bd8 <OUTLINED_FUNCTION_4>
c0de2566:	b108      	cbz	r0, c0de256c <zkn_evalshare+0x16>
c0de2568:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de256c:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2570:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2574:	4640      	mov	r0, r8
c0de2576:	f005 fa4d 	bl	c0de7a14 <cx_bn_copy>
c0de257a:	2800      	cmp	r0, #0
c0de257c:	d1f4      	bne.n	c0de2568 <zkn_evalshare+0x12>
c0de257e:	3e04      	subs	r6, #4
c0de2580:	68bb      	ldr	r3, [r7, #8]
c0de2582:	9801      	ldr	r0, [sp, #4]
c0de2584:	4641      	mov	r1, r8
c0de2586:	b17d      	cbz	r5, c0de25a8 <zkn_evalshare+0x52>
c0de2588:	4622      	mov	r2, r4
c0de258a:	f005 fa9f 	bl	c0de7acc <cx_bn_mod_mul>
c0de258e:	2800      	cmp	r0, #0
c0de2590:	d1ea      	bne.n	c0de2568 <zkn_evalshare+0x12>
c0de2592:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de2596:	68bb      	ldr	r3, [r7, #8]
c0de2598:	9901      	ldr	r1, [sp, #4]
c0de259a:	4640      	mov	r0, r8
c0de259c:	f005 fa7e 	bl	c0de7a9c <cx_bn_mod_add>
c0de25a0:	3d01      	subs	r5, #1
c0de25a2:	2800      	cmp	r0, #0
c0de25a4:	d0ec      	beq.n	c0de2580 <zkn_evalshare+0x2a>
c0de25a6:	e7df      	b.n	c0de2568 <zkn_evalshare+0x12>
c0de25a8:	461a      	mov	r2, r3
c0de25aa:	f005 fa9b 	bl	c0de7ae4 <cx_bn_reduce>
c0de25ae:	2800      	cmp	r0, #0
c0de25b0:	d1da      	bne.n	c0de2568 <zkn_evalshare+0x12>
c0de25b2:	9901      	ldr	r1, [sp, #4]
c0de25b4:	4640      	mov	r0, r8
c0de25b6:	f005 fa2d 	bl	c0de7a14 <cx_bn_copy>
c0de25ba:	2800      	cmp	r0, #0
c0de25bc:	d1d4      	bne.n	c0de2568 <zkn_evalshare+0x12>
c0de25be:	a801      	add	r0, sp, #4
c0de25c0:	f005 fa08 	bl	c0de79d4 <cx_bn_destroy>
c0de25c4:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de25c8 <zkn_frost_nonce_generate>:
c0de25c8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de25ca:	b091      	sub	sp, #68	@ 0x44
c0de25cc:	af01      	add	r7, sp, #4
c0de25ce:	460e      	mov	r6, r1
c0de25d0:	4605      	mov	r5, r0
c0de25d2:	2120      	movs	r1, #32
c0de25d4:	4614      	mov	r4, r2
c0de25d6:	4638      	mov	r0, r7
c0de25d8:	f004 ff7a 	bl	c0de74d0 <cx_rng_no_throw>
c0de25dc:	f107 0020 	add.w	r0, r7, #32
c0de25e0:	4631      	mov	r1, r6
c0de25e2:	2220      	movs	r2, #32
c0de25e4:	f005 fc96 	bl	c0de7f14 <__aeabi_memcpy>
c0de25e8:	6829      	ldr	r1, [r5, #0]
c0de25ea:	4668      	mov	r0, sp
c0de25ec:	f005 f9dc 	bl	c0de79a8 <cx_bn_alloc>
c0de25f0:	b978      	cbnz	r0, c0de2612 <zkn_frost_nonce_generate+0x4a>
c0de25f2:	68aa      	ldr	r2, [r5, #8]
c0de25f4:	9b00      	ldr	r3, [sp, #0]
c0de25f6:	a801      	add	r0, sp, #4
c0de25f8:	2140      	movs	r1, #64	@ 0x40
c0de25fa:	f001 f9a5 	bl	c0de3948 <Babyfrost_H3>
c0de25fe:	b940      	cbnz	r0, c0de2612 <zkn_frost_nonce_generate+0x4a>
c0de2600:	682a      	ldr	r2, [r5, #0]
c0de2602:	9800      	ldr	r0, [sp, #0]
c0de2604:	4621      	mov	r1, r4
c0de2606:	f005 fa19 	bl	c0de7a3c <cx_bn_export>
c0de260a:	b910      	cbnz	r0, c0de2612 <zkn_frost_nonce_generate+0x4a>
c0de260c:	4668      	mov	r0, sp
c0de260e:	f005 f9e1 	bl	c0de79d4 <cx_bn_destroy>
c0de2612:	b011      	add	sp, #68	@ 0x44
c0de2614:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de2616 <zkn_frost_commit>:
c0de2616:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de261a:	461d      	mov	r5, r3
c0de261c:	4617      	mov	r7, r2
c0de261e:	460e      	mov	r6, r1
c0de2620:	4604      	mov	r4, r0
c0de2622:	f7ff ffd1 	bl	c0de25c8 <zkn_frost_nonce_generate>
c0de2626:	b9f8      	cbnz	r0, c0de2668 <zkn_frost_commit+0x52>
c0de2628:	f107 0a20 	add.w	sl, r7, #32
c0de262c:	4620      	mov	r0, r4
c0de262e:	4631      	mov	r1, r6
c0de2630:	4652      	mov	r2, sl
c0de2632:	f7ff ffc9 	bl	c0de25c8 <zkn_frost_nonce_generate>
c0de2636:	b9b8      	cbnz	r0, c0de2668 <zkn_frost_commit+0x52>
c0de2638:	46a0      	mov	r8, r4
c0de263a:	4620      	mov	r0, r4
c0de263c:	463a      	mov	r2, r7
c0de263e:	f858 3b0c 	ldr.w	r3, [r8], #12
c0de2642:	9500      	str	r5, [sp, #0]
c0de2644:	4641      	mov	r1, r8
c0de2646:	f000 fec9 	bl	c0de33dc <tEdwards_scalarMul>
c0de264a:	b968      	cbnz	r0, c0de2668 <zkn_frost_commit+0x52>
c0de264c:	4620      	mov	r0, r4
c0de264e:	4629      	mov	r1, r5
c0de2650:	f000 fdff 	bl	c0de3252 <tEdwards_normalize>
c0de2654:	b940      	cbnz	r0, c0de2668 <zkn_frost_commit+0x52>
c0de2656:	6823      	ldr	r3, [r4, #0]
c0de2658:	350c      	adds	r5, #12
c0de265a:	4620      	mov	r0, r4
c0de265c:	4641      	mov	r1, r8
c0de265e:	4652      	mov	r2, sl
c0de2660:	9500      	str	r5, [sp, #0]
c0de2662:	f000 febb 	bl	c0de33dc <tEdwards_scalarMul>
c0de2666:	b108      	cbz	r0, c0de266c <zkn_frost_commit+0x56>
c0de2668:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de266c:	4620      	mov	r0, r4
c0de266e:	4629      	mov	r1, r5
c0de2670:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2674:	f000 bded 	b.w	c0de3252 <tEdwards_normalize>

c0de2678 <zkn_encode_group_commitmentHash>:
c0de2678:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de267c:	b0d6      	sub	sp, #344	@ 0x158
c0de267e:	4606      	mov	r6, r0
c0de2680:	a816      	add	r0, sp, #88	@ 0x58
c0de2682:	461c      	mov	r4, r3
c0de2684:	4615      	mov	r5, r2
c0de2686:	460f      	mov	r7, r1
c0de2688:	f001 f9be 	bl	c0de3a08 <zkn_frost_H5_init>
c0de268c:	b110      	cbz	r0, c0de2694 <zkn_encode_group_commitmentHash+0x1c>
c0de268e:	b056      	add	sp, #344	@ 0x158
c0de2690:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2694:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de2698:	9401      	str	r4, [sp, #4]
c0de269a:	a806      	add	r0, sp, #24
c0de269c:	f04f 0a00 	mov.w	sl, #0
c0de26a0:	f04f 0b02 	mov.w	fp, #2
c0de26a4:	2604      	movs	r6, #4
c0de26a6:	2400      	movs	r4, #0
c0de26a8:	9502      	str	r5, [sp, #8]
c0de26aa:	f1a0 0801 	sub.w	r8, r0, #1
c0de26ae:	42ac      	cmp	r4, r5
c0de26b0:	d058      	beq.n	c0de2764 <zkn_encode_group_commitmentHash+0xec>
c0de26b2:	9805      	ldr	r0, [sp, #20]
c0de26b4:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de26b8:	9103      	str	r1, [sp, #12]
c0de26ba:	6805      	ldr	r5, [r0, #0]
c0de26bc:	9804      	ldr	r0, [sp, #16]
c0de26be:	fb05 000a 	mla	r0, r5, sl, r0
c0de26c2:	4629      	mov	r1, r5
c0de26c4:	b129      	cbz	r1, c0de26d2 <zkn_encode_group_commitmentHash+0x5a>
c0de26c6:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de26ca:	f808 2001 	strb.w	r2, [r8, r1]
c0de26ce:	3901      	subs	r1, #1
c0de26d0:	e7f8      	b.n	c0de26c4 <zkn_encode_group_commitmentHash+0x4c>
c0de26d2:	a816      	add	r0, sp, #88	@ 0x58
c0de26d4:	a906      	add	r1, sp, #24
c0de26d6:	462a      	mov	r2, r5
c0de26d8:	f001 f9b0 	bl	c0de3a3c <zkn_frost_hash_update>
c0de26dc:	2800      	cmp	r0, #0
c0de26de:	d1d6      	bne.n	c0de268e <zkn_encode_group_commitmentHash+0x16>
c0de26e0:	9803      	ldr	r0, [sp, #12]
c0de26e2:	9f04      	ldr	r7, [sp, #16]
c0de26e4:	1c43      	adds	r3, r0, #1
c0de26e6:	9805      	ldr	r0, [sp, #20]
c0de26e8:	fb05 710b 	mla	r1, r5, fp, r7
c0de26ec:	6802      	ldr	r2, [r0, #0]
c0de26ee:	1e50      	subs	r0, r2, #1
c0de26f0:	4615      	mov	r5, r2
c0de26f2:	fb02 0303 	mla	r3, r2, r3, r0
c0de26f6:	5cfb      	ldrb	r3, [r7, r3]
c0de26f8:	b12d      	cbz	r5, c0de2706 <zkn_encode_group_commitmentHash+0x8e>
c0de26fa:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de26fe:	f808 7005 	strb.w	r7, [r8, r5]
c0de2702:	3d01      	subs	r5, #1
c0de2704:	e7f8      	b.n	c0de26f8 <zkn_encode_group_commitmentHash+0x80>
c0de2706:	a906      	add	r1, sp, #24
c0de2708:	5c0d      	ldrb	r5, [r1, r0]
c0de270a:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de270e:	540b      	strb	r3, [r1, r0]
c0de2710:	a816      	add	r0, sp, #88	@ 0x58
c0de2712:	f001 f993 	bl	c0de3a3c <zkn_frost_hash_update>
c0de2716:	2800      	cmp	r0, #0
c0de2718:	d1b9      	bne.n	c0de268e <zkn_encode_group_commitmentHash+0x16>
c0de271a:	9805      	ldr	r0, [sp, #20]
c0de271c:	9d04      	ldr	r5, [sp, #16]
c0de271e:	6802      	ldr	r2, [r0, #0]
c0de2720:	9803      	ldr	r0, [sp, #12]
c0de2722:	1cc3      	adds	r3, r0, #3
c0de2724:	1e50      	subs	r0, r2, #1
c0de2726:	fb02 5106 	mla	r1, r2, r6, r5
c0de272a:	fb02 0303 	mla	r3, r2, r3, r0
c0de272e:	5ceb      	ldrb	r3, [r5, r3]
c0de2730:	4615      	mov	r5, r2
c0de2732:	b12d      	cbz	r5, c0de2740 <zkn_encode_group_commitmentHash+0xc8>
c0de2734:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2738:	f808 7005 	strb.w	r7, [r8, r5]
c0de273c:	3d01      	subs	r5, #1
c0de273e:	e7f8      	b.n	c0de2732 <zkn_encode_group_commitmentHash+0xba>
c0de2740:	a906      	add	r1, sp, #24
c0de2742:	5c0d      	ldrb	r5, [r1, r0]
c0de2744:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2748:	540b      	strb	r3, [r1, r0]
c0de274a:	a816      	add	r0, sp, #88	@ 0x58
c0de274c:	f001 f976 	bl	c0de3a3c <zkn_frost_hash_update>
c0de2750:	3605      	adds	r6, #5
c0de2752:	3401      	adds	r4, #1
c0de2754:	9d02      	ldr	r5, [sp, #8]
c0de2756:	f10b 0b05 	add.w	fp, fp, #5
c0de275a:	f10a 0a05 	add.w	sl, sl, #5
c0de275e:	2800      	cmp	r0, #0
c0de2760:	d0a5      	beq.n	c0de26ae <zkn_encode_group_commitmentHash+0x36>
c0de2762:	e794      	b.n	c0de268e <zkn_encode_group_commitmentHash+0x16>
c0de2764:	9805      	ldr	r0, [sp, #20]
c0de2766:	6881      	ldr	r1, [r0, #8]
c0de2768:	a816      	add	r0, sp, #88	@ 0x58
c0de276a:	9a01      	ldr	r2, [sp, #4]
c0de276c:	f001 f968 	bl	c0de3a40 <zkn_frost_hash_final>
c0de2770:	e78d      	b.n	c0de268e <zkn_encode_group_commitmentHash+0x16>

c0de2772 <zkn_compute_group_commitment>:
c0de2772:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2776:	b088      	sub	sp, #32
c0de2778:	460d      	mov	r5, r1
c0de277a:	a905      	add	r1, sp, #20
c0de277c:	461f      	mov	r7, r3
c0de277e:	4693      	mov	fp, r2
c0de2780:	4604      	mov	r4, r0
c0de2782:	f000 fa35 	bl	c0de2bf0 <tEdwards_alloc>
c0de2786:	b948      	cbnz	r0, c0de279c <zkn_compute_group_commitment+0x2a>
c0de2788:	a902      	add	r1, sp, #8
c0de278a:	4620      	mov	r0, r4
c0de278c:	f000 fa30 	bl	c0de2bf0 <tEdwards_alloc>
c0de2790:	b920      	cbnz	r0, c0de279c <zkn_compute_group_commitment+0x2a>
c0de2792:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2794:	4620      	mov	r0, r4
c0de2796:	f000 fd23 	bl	c0de31e0 <tEdwards_SetNeutral>
c0de279a:	b110      	cbz	r0, c0de27a2 <zkn_compute_group_commitment+0x30>
c0de279c:	b008      	add	sp, #32
c0de279e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de27a2:	ae05      	add	r6, sp, #20
c0de27a4:	f04f 0800 	mov.w	r8, #0
c0de27a8:	f04f 0a04 	mov.w	sl, #4
c0de27ac:	9501      	str	r5, [sp, #4]
c0de27ae:	4547      	cmp	r7, r8
c0de27b0:	d041      	beq.n	c0de2836 <zkn_compute_group_commitment+0xc4>
c0de27b2:	6822      	ldr	r2, [r4, #0]
c0de27b4:	f1aa 0003 	sub.w	r0, sl, #3
c0de27b8:	4633      	mov	r3, r6
c0de27ba:	fb02 5100 	mla	r1, r2, r0, r5
c0de27be:	f1aa 0002 	sub.w	r0, sl, #2
c0de27c2:	fb02 5200 	mla	r2, r2, r0, r5
c0de27c6:	4620      	mov	r0, r4
c0de27c8:	f000 fc82 	bl	c0de30d0 <tEdwards_init>
c0de27cc:	2800      	cmp	r0, #0
c0de27ce:	d1e5      	bne.n	c0de279c <zkn_compute_group_commitment+0x2a>
c0de27d0:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de27d2:	4620      	mov	r0, r4
c0de27d4:	4632      	mov	r2, r6
c0de27d6:	460b      	mov	r3, r1
c0de27d8:	f000 fa9b 	bl	c0de2d12 <tEdwards_add>
c0de27dc:	2800      	cmp	r0, #0
c0de27de:	d1dd      	bne.n	c0de279c <zkn_compute_group_commitment+0x2a>
c0de27e0:	6822      	ldr	r2, [r4, #0]
c0de27e2:	f1aa 0001 	sub.w	r0, sl, #1
c0de27e6:	4633      	mov	r3, r6
c0de27e8:	fb02 5100 	mla	r1, r2, r0, r5
c0de27ec:	fb02 520a 	mla	r2, r2, sl, r5
c0de27f0:	4620      	mov	r0, r4
c0de27f2:	f000 fc6d 	bl	c0de30d0 <tEdwards_init>
c0de27f6:	2800      	cmp	r0, #0
c0de27f8:	d1d0      	bne.n	c0de279c <zkn_compute_group_commitment+0x2a>
c0de27fa:	6823      	ldr	r3, [r4, #0]
c0de27fc:	4658      	mov	r0, fp
c0de27fe:	f10d 0b08 	add.w	fp, sp, #8
c0de2802:	4631      	mov	r1, r6
c0de2804:	4605      	mov	r5, r0
c0de2806:	f8cd b000 	str.w	fp, [sp]
c0de280a:	fb03 0208 	mla	r2, r3, r8, r0
c0de280e:	4620      	mov	r0, r4
c0de2810:	f000 fde4 	bl	c0de33dc <tEdwards_scalarMul>
c0de2814:	2800      	cmp	r0, #0
c0de2816:	d1c1      	bne.n	c0de279c <zkn_compute_group_commitment+0x2a>
c0de2818:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de281a:	4620      	mov	r0, r4
c0de281c:	465a      	mov	r2, fp
c0de281e:	460b      	mov	r3, r1
c0de2820:	f000 fa77 	bl	c0de2d12 <tEdwards_add>
c0de2824:	46ab      	mov	fp, r5
c0de2826:	9d01      	ldr	r5, [sp, #4]
c0de2828:	f10a 0a05 	add.w	sl, sl, #5
c0de282c:	f108 0801 	add.w	r8, r8, #1
c0de2830:	2800      	cmp	r0, #0
c0de2832:	d0bc      	beq.n	c0de27ae <zkn_compute_group_commitment+0x3c>
c0de2834:	e7b2      	b.n	c0de279c <zkn_compute_group_commitment+0x2a>
c0de2836:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2838:	4620      	mov	r0, r4
c0de283a:	f000 fd0a 	bl	c0de3252 <tEdwards_normalize>
c0de283e:	2800      	cmp	r0, #0
c0de2840:	d1ac      	bne.n	c0de279c <zkn_compute_group_commitment+0x2a>
c0de2842:	a905      	add	r1, sp, #20
c0de2844:	f000 f9d1 	bl	c0de2bea <OUTLINED_FUNCTION_6>
c0de2848:	2800      	cmp	r0, #0
c0de284a:	d1a7      	bne.n	c0de279c <zkn_compute_group_commitment+0x2a>
c0de284c:	a902      	add	r1, sp, #8
c0de284e:	f000 f9cc 	bl	c0de2bea <OUTLINED_FUNCTION_6>
c0de2852:	e7a3      	b.n	c0de279c <zkn_compute_group_commitment+0x2a>

c0de2854 <zkn_compute_binding_factors>:
c0de2854:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2858:	b0f4      	sub	sp, #464	@ 0x1d0
c0de285a:	460e      	mov	r6, r1
c0de285c:	6801      	ldr	r1, [r0, #0]
c0de285e:	4607      	mov	r7, r0
c0de2860:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2862:	f000 f9b9 	bl	c0de2bd8 <OUTLINED_FUNCTION_4>
c0de2866:	b9f0      	cbnz	r0, c0de28a6 <zkn_compute_binding_factors+0x52>
c0de2868:	6839      	ldr	r1, [r7, #0]
c0de286a:	a872      	add	r0, sp, #456	@ 0x1c8
c0de286c:	f005 f89c 	bl	c0de79a8 <cx_bn_alloc>
c0de2870:	b9c8      	cbnz	r0, c0de28a6 <zkn_compute_binding_factors+0x52>
c0de2872:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de2876:	68ba      	ldr	r2, [r7, #8]
c0de2878:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de287a:	f001 f879 	bl	c0de3970 <Babyfrost_H4>
c0de287e:	b990      	cbnz	r0, c0de28a6 <zkn_compute_binding_factors+0x52>
c0de2880:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de2882:	4638      	mov	r0, r7
c0de2884:	4629      	mov	r1, r5
c0de2886:	4622      	mov	r2, r4
c0de2888:	f7ff fef6 	bl	c0de2678 <zkn_encode_group_commitmentHash>
c0de288c:	b958      	cbnz	r0, c0de28a6 <zkn_compute_binding_factors+0x52>
c0de288e:	683a      	ldr	r2, [r7, #0]
c0de2890:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de2892:	a912      	add	r1, sp, #72	@ 0x48
c0de2894:	f005 f8d2 	bl	c0de7a3c <cx_bn_export>
c0de2898:	b928      	cbnz	r0, c0de28a6 <zkn_compute_binding_factors+0x52>
c0de289a:	683a      	ldr	r2, [r7, #0]
c0de289c:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de289e:	a902      	add	r1, sp, #8
c0de28a0:	f005 f8cc 	bl	c0de7a3c <cx_bn_export>
c0de28a4:	b110      	cbz	r0, c0de28ac <zkn_compute_binding_factors+0x58>
c0de28a6:	b074      	add	sp, #464	@ 0x1d0
c0de28a8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de28ac:	2000      	movs	r0, #0
c0de28ae:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de28b2:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de28b6:	f04f 0800 	mov.w	r8, #0
c0de28ba:	9000      	str	r0, [sp, #0]
c0de28bc:	4544      	cmp	r4, r8
c0de28be:	d043      	beq.n	c0de2948 <zkn_compute_binding_factors+0xf4>
c0de28c0:	6839      	ldr	r1, [r7, #0]
c0de28c2:	a801      	add	r0, sp, #4
c0de28c4:	f005 f870 	bl	c0de79a8 <cx_bn_alloc>
c0de28c8:	2800      	cmp	r0, #0
c0de28ca:	d1ec      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de28cc:	4650      	mov	r0, sl
c0de28ce:	f001 f881 	bl	c0de39d4 <zkn_frost_H1_init>
c0de28d2:	2800      	cmp	r0, #0
c0de28d4:	d1e7      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de28d6:	6839      	ldr	r1, [r7, #0]
c0de28d8:	4630      	mov	r0, r6
c0de28da:	465a      	mov	r2, fp
c0de28dc:	f000 f966 	bl	c0de2bac <OUTLINED_FUNCTION_0>
c0de28e0:	2800      	cmp	r0, #0
c0de28e2:	d1e0      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de28e4:	6839      	ldr	r1, [r7, #0]
c0de28e6:	a812      	add	r0, sp, #72	@ 0x48
c0de28e8:	465a      	mov	r2, fp
c0de28ea:	f000 f95f 	bl	c0de2bac <OUTLINED_FUNCTION_0>
c0de28ee:	2800      	cmp	r0, #0
c0de28f0:	d1d9      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de28f2:	6839      	ldr	r1, [r7, #0]
c0de28f4:	a802      	add	r0, sp, #8
c0de28f6:	465a      	mov	r2, fp
c0de28f8:	f000 f958 	bl	c0de2bac <OUTLINED_FUNCTION_0>
c0de28fc:	2800      	cmp	r0, #0
c0de28fe:	d1d2      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de2900:	6839      	ldr	r1, [r7, #0]
c0de2902:	9800      	ldr	r0, [sp, #0]
c0de2904:	465a      	mov	r2, fp
c0de2906:	fb00 5001 	mla	r0, r0, r1, r5
c0de290a:	f000 f94f 	bl	c0de2bac <OUTLINED_FUNCTION_0>
c0de290e:	2800      	cmp	r0, #0
c0de2910:	d1c9      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de2912:	68b9      	ldr	r1, [r7, #8]
c0de2914:	9a01      	ldr	r2, [sp, #4]
c0de2916:	4650      	mov	r0, sl
c0de2918:	f001 f892 	bl	c0de3a40 <zkn_frost_hash_final>
c0de291c:	2800      	cmp	r0, #0
c0de291e:	d1c2      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de2920:	683a      	ldr	r2, [r7, #0]
c0de2922:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de2924:	fb02 0108 	mla	r1, r2, r8, r0
c0de2928:	9801      	ldr	r0, [sp, #4]
c0de292a:	f005 f887 	bl	c0de7a3c <cx_bn_export>
c0de292e:	2800      	cmp	r0, #0
c0de2930:	d1b9      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de2932:	a801      	add	r0, sp, #4
c0de2934:	f005 f84e 	bl	c0de79d4 <cx_bn_destroy>
c0de2938:	2800      	cmp	r0, #0
c0de293a:	d1b4      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de293c:	9800      	ldr	r0, [sp, #0]
c0de293e:	f108 0801 	add.w	r8, r8, #1
c0de2942:	3005      	adds	r0, #5
c0de2944:	9000      	str	r0, [sp, #0]
c0de2946:	e7b9      	b.n	c0de28bc <zkn_compute_binding_factors+0x68>
c0de2948:	a873      	add	r0, sp, #460	@ 0x1cc
c0de294a:	f005 f843 	bl	c0de79d4 <cx_bn_destroy>
c0de294e:	2800      	cmp	r0, #0
c0de2950:	d1a9      	bne.n	c0de28a6 <zkn_compute_binding_factors+0x52>
c0de2952:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2954:	f005 f83e 	bl	c0de79d4 <cx_bn_destroy>
c0de2958:	e7a5      	b.n	c0de28a6 <zkn_compute_binding_factors+0x52>

c0de295a <zkn_serialize_scalar_for_hash>:
c0de295a:	3a01      	subs	r2, #1
c0de295c:	b121      	cbz	r1, c0de2968 <zkn_serialize_scalar_for_hash+0xe>
c0de295e:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de2962:	5453      	strb	r3, [r2, r1]
c0de2964:	3901      	subs	r1, #1
c0de2966:	e7f9      	b.n	c0de295c <zkn_serialize_scalar_for_hash+0x2>
c0de2968:	4770      	bx	lr
	...

c0de296c <compute_challenge>:
c0de296c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2970:	b0bc      	sub	sp, #240	@ 0xf0
c0de2972:	4606      	mov	r6, r0
c0de2974:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de2976:	2820      	cmp	r0, #32
c0de2978:	d14b      	bne.n	c0de2a12 <compute_challenge+0xa6>
c0de297a:	4630      	mov	r0, r6
c0de297c:	461f      	mov	r7, r3
c0de297e:	4614      	mov	r4, r2
c0de2980:	460d      	mov	r5, r1
c0de2982:	f000 fbe4 	bl	c0de314e <tEdwards_Curve_partial_destroy>
c0de2986:	2800      	cmp	r0, #0
c0de2988:	d144      	bne.n	c0de2a14 <compute_challenge+0xa8>
c0de298a:	f106 0820 	add.w	r8, r6, #32
c0de298e:	4668      	mov	r0, sp
c0de2990:	2105      	movs	r1, #5
c0de2992:	2205      	movs	r2, #5
c0de2994:	4643      	mov	r3, r8
c0de2996:	f000 fe47 	bl	c0de3628 <Poseidon_alloc_init>
c0de299a:	bbd8      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de299c:	6829      	ldr	r1, [r5, #0]
c0de299e:	9807      	ldr	r0, [sp, #28]
c0de29a0:	f005 f838 	bl	c0de7a14 <cx_bn_copy>
c0de29a4:	bbb0      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29a6:	6869      	ldr	r1, [r5, #4]
c0de29a8:	9808      	ldr	r0, [sp, #32]
c0de29aa:	f005 f833 	bl	c0de7a14 <cx_bn_copy>
c0de29ae:	bb88      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29b0:	6832      	ldr	r2, [r6, #0]
c0de29b2:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de29b4:	4621      	mov	r1, r4
c0de29b6:	f005 f821 	bl	c0de79fc <cx_bn_init>
c0de29ba:	bb58      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29bc:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de29be:	f000 f907 	bl	c0de2bd0 <OUTLINED_FUNCTION_3>
c0de29c2:	bb38      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29c4:	6832      	ldr	r2, [r6, #0]
c0de29c6:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de29c8:	f104 0120 	add.w	r1, r4, #32
c0de29cc:	f005 f816 	bl	c0de79fc <cx_bn_init>
c0de29d0:	bb00      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29d2:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de29d4:	f000 f8fc 	bl	c0de2bd0 <OUTLINED_FUNCTION_3>
c0de29d8:	b9e0      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29da:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de29dc:	4639      	mov	r1, r7
c0de29de:	2220      	movs	r2, #32
c0de29e0:	f005 f80c 	bl	c0de79fc <cx_bn_init>
c0de29e4:	b9b0      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29e6:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de29e8:	f000 f8f2 	bl	c0de2bd0 <OUTLINED_FUNCTION_3>
c0de29ec:	b990      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29ee:	4630      	mov	r0, r6
c0de29f0:	4629      	mov	r1, r5
c0de29f2:	f000 f912 	bl	c0de2c1a <tEdwards_destroy>
c0de29f6:	b968      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de29f8:	4668      	mov	r0, sp
c0de29fa:	aa43      	add	r2, sp, #268	@ 0x10c
c0de29fc:	2100      	movs	r1, #0
c0de29fe:	2301      	movs	r3, #1
c0de2a00:	f000 fe78 	bl	c0de36f4 <Poseidon>
c0de2a04:	b930      	cbnz	r0, c0de2a14 <compute_challenge+0xa8>
c0de2a06:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de2a08:	4642      	mov	r2, r8
c0de2a0a:	4601      	mov	r1, r0
c0de2a0c:	f005 f8ac 	bl	c0de7b68 <cx_mont_from_montgomery>
c0de2a10:	e000      	b.n	c0de2a14 <compute_challenge+0xa8>
c0de2a12:	4802      	ldr	r0, [pc, #8]	@ (c0de2a1c <compute_challenge+0xb0>)
c0de2a14:	b03c      	add	sp, #240	@ 0xf0
c0de2a16:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2a1a:	bf00      	nop
c0de2a1c:	5a4b4e03 	.word	0x5a4b4e03

c0de2a20 <zkn_partial_sig>:
c0de2a20:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2a24:	b0c2      	sub	sp, #264	@ 0x108
c0de2a26:	4680      	mov	r8, r0
c0de2a28:	7fd8      	ldrb	r0, [r3, #31]
c0de2a2a:	e9dd a64e 	ldrd	sl, r6, [sp, #312]	@ 0x138
c0de2a2e:	9f4c      	ldr	r7, [sp, #304]	@ 0x130
c0de2a30:	e9cd 1204 	strd	r1, r2, [sp, #16]
c0de2a34:	469b      	mov	fp, r3
c0de2a36:	ab16      	add	r3, sp, #88	@ 0x58
c0de2a38:	2100      	movs	r1, #0
c0de2a3a:	221f      	movs	r2, #31
c0de2a3c:	ac1e      	add	r4, sp, #120	@ 0x78
c0de2a3e:	f000 0001 	and.w	r0, r0, #1
c0de2a42:	2920      	cmp	r1, #32
c0de2a44:	d00f      	beq.n	c0de2a66 <zkn_partial_sig+0x46>
c0de2a46:	eb0b 0501 	add.w	r5, fp, r1
c0de2a4a:	f895 5020 	ldrb.w	r5, [r5, #32]
c0de2a4e:	545d      	strb	r5, [r3, r1]
c0de2a50:	f81a 5002 	ldrb.w	r5, [sl, r2]
c0de2a54:	3a01      	subs	r2, #1
c0de2a56:	5465      	strb	r5, [r4, r1]
c0de2a58:	f89d 5058 	ldrb.w	r5, [sp, #88]	@ 0x58
c0de2a5c:	3101      	adds	r1, #1
c0de2a5e:	4045      	eors	r5, r0
c0de2a60:	f88d 5058 	strb.w	r5, [sp, #88]	@ 0x58
c0de2a64:	e7ed      	b.n	c0de2a42 <zkn_partial_sig+0x22>
c0de2a66:	a83e      	add	r0, sp, #248	@ 0xf8
c0de2a68:	f000 f8af 	bl	c0de2bca <OUTLINED_FUNCTION_2>
c0de2a6c:	2800      	cmp	r0, #0
c0de2a6e:	f040 8098 	bne.w	c0de2ba2 <zkn_partial_sig+0x182>
c0de2a72:	ad3f      	add	r5, sp, #252	@ 0xfc
c0de2a74:	4640      	mov	r0, r8
c0de2a76:	4629      	mov	r1, r5
c0de2a78:	f000 f8ba 	bl	c0de2bf0 <tEdwards_alloc>
c0de2a7c:	2800      	cmp	r0, #0
c0de2a7e:	f040 8090 	bne.w	c0de2ba2 <zkn_partial_sig+0x182>
c0de2a82:	a826      	add	r0, sp, #152	@ 0x98
c0de2a84:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2a86:	e9cd 4600 	strd	r4, r6, [sp]
c0de2a8a:	463a      	mov	r2, r7
c0de2a8c:	9002      	str	r0, [sp, #8]
c0de2a8e:	a916      	add	r1, sp, #88	@ 0x58
c0de2a90:	4640      	mov	r0, r8
c0de2a92:	f7ff fedf 	bl	c0de2854 <zkn_compute_binding_factors>
c0de2a96:	2800      	cmp	r0, #0
c0de2a98:	f040 8083 	bne.w	c0de2ba2 <zkn_partial_sig+0x182>
c0de2a9c:	9500      	str	r5, [sp, #0]
c0de2a9e:	ac26      	add	r4, sp, #152	@ 0x98
c0de2aa0:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2aa2:	4640      	mov	r0, r8
c0de2aa4:	4639      	mov	r1, r7
c0de2aa6:	4622      	mov	r2, r4
c0de2aa8:	f7ff fe63 	bl	c0de2772 <zkn_compute_group_commitment>
c0de2aac:	2800      	cmp	r0, #0
c0de2aae:	d178      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2ab0:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2ab2:	2120      	movs	r1, #32
c0de2ab4:	465a      	mov	r2, fp
c0de2ab6:	4653      	mov	r3, sl
c0de2ab8:	e9cd 1000 	strd	r1, r0, [sp]
c0de2abc:	a93f      	add	r1, sp, #252	@ 0xfc
c0de2abe:	4640      	mov	r0, r8
c0de2ac0:	f7ff ff54 	bl	c0de296c <compute_challenge>
c0de2ac4:	2800      	cmp	r0, #0
c0de2ac6:	d16c      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2ac8:	f000 f88a 	bl	c0de2be0 <OUTLINED_FUNCTION_5>
c0de2acc:	2800      	cmp	r0, #0
c0de2ace:	d168      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2ad0:	a80c      	add	r0, sp, #48	@ 0x30
c0de2ad2:	4935      	ldr	r1, [pc, #212]	@ (c0de2ba8 <zkn_partial_sig+0x188>)
c0de2ad4:	2220      	movs	r2, #32
c0de2ad6:	4479      	add	r1, pc
c0de2ad8:	f005 fa1c 	bl	c0de7f14 <__aeabi_memcpy>
c0de2adc:	a815      	add	r0, sp, #84	@ 0x54
c0de2ade:	f000 f874 	bl	c0de2bca <OUTLINED_FUNCTION_2>
c0de2ae2:	2800      	cmp	r0, #0
c0de2ae4:	d15d      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2ae6:	a814      	add	r0, sp, #80	@ 0x50
c0de2ae8:	aa0c      	add	r2, sp, #48	@ 0x30
c0de2aea:	f000 f86a 	bl	c0de2bc2 <OUTLINED_FUNCTION_1>
c0de2aee:	2800      	cmp	r0, #0
c0de2af0:	d157      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2af2:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de2af4:	e9dd 2014 	ldrd	r2, r0, [sp, #80]	@ 0x50
c0de2af8:	f004 fff4 	bl	c0de7ae4 <cx_bn_reduce>
c0de2afc:	2800      	cmp	r0, #0
c0de2afe:	d150      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2b00:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de2b02:	a80b      	add	r0, sp, #44	@ 0x2c
c0de2b04:	f000 f85d 	bl	c0de2bc2 <OUTLINED_FUNCTION_1>
c0de2b08:	2800      	cmp	r0, #0
c0de2b0a:	d14a      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2b0c:	9a4b      	ldr	r2, [sp, #300]	@ 0x12c
c0de2b0e:	a80a      	add	r0, sp, #40	@ 0x28
c0de2b10:	f000 f857 	bl	c0de2bc2 <OUTLINED_FUNCTION_1>
c0de2b14:	2800      	cmp	r0, #0
c0de2b16:	d144      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2b18:	9a50      	ldr	r2, [sp, #320]	@ 0x140
c0de2b1a:	a809      	add	r0, sp, #36	@ 0x24
c0de2b1c:	f000 f851 	bl	c0de2bc2 <OUTLINED_FUNCTION_1>
c0de2b20:	2800      	cmp	r0, #0
c0de2b22:	d13e      	bne.n	c0de2ba2 <zkn_partial_sig+0x182>
c0de2b24:	a808      	add	r0, sp, #32
c0de2b26:	9a05      	ldr	r2, [sp, #20]
c0de2b28:	f000 f84b 	bl	c0de2bc2 <OUTLINED_FUNCTION_1>
c0de2b2c:	bbc8      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b2e:	9804      	ldr	r0, [sp, #16]
c0de2b30:	2120      	movs	r1, #32
c0de2b32:	2320      	movs	r3, #32
c0de2b34:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de2b38:	f1a0 0220 	sub.w	r2, r0, #32
c0de2b3c:	a806      	add	r0, sp, #24
c0de2b3e:	f004 ff3d 	bl	c0de79bc <cx_bn_alloc_init>
c0de2b42:	bb70      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b44:	a807      	add	r0, sp, #28
c0de2b46:	f000 f840 	bl	c0de2bca <OUTLINED_FUNCTION_2>
c0de2b4a:	bb50      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b4c:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b4e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de2b50:	e9dd 2006 	ldrd	r2, r0, [sp, #24]
c0de2b54:	f004 ffba 	bl	c0de7acc <cx_bn_mod_mul>
c0de2b58:	bb18      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b5a:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b5c:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de2b60:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2b62:	f004 ffb3 	bl	c0de7acc <cx_bn_mod_mul>
c0de2b66:	b9e0      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b68:	e9dd 3214 	ldrd	r3, r2, [sp, #80]	@ 0x50
c0de2b6c:	e9dd 0109 	ldrd	r0, r1, [sp, #36]	@ 0x24
c0de2b70:	f004 ffac 	bl	c0de7acc <cx_bn_mod_mul>
c0de2b74:	b9a8      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b76:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b78:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de2b7a:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de2b7e:	f004 ff8d 	bl	c0de7a9c <cx_bn_mod_add>
c0de2b82:	b970      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b84:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b86:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de2b88:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de2b8c:	f004 ff86 	bl	c0de7a9c <cx_bn_mod_add>
c0de2b90:	b938      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b92:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de2b94:	9907      	ldr	r1, [sp, #28]
c0de2b96:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2b98:	f004 ffa4 	bl	c0de7ae4 <cx_bn_reduce>
c0de2b9c:	b908      	cbnz	r0, c0de2ba2 <zkn_partial_sig+0x182>
c0de2b9e:	f000 f81f 	bl	c0de2be0 <OUTLINED_FUNCTION_5>
c0de2ba2:	b042      	add	sp, #264	@ 0x108
c0de2ba4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2ba8:	00005bb6 	.word	0x00005bb6

c0de2bac <OUTLINED_FUNCTION_0>:
c0de2bac:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2bb0:	f7ff fed3 	bl	c0de295a <zkn_serialize_scalar_for_hash>
c0de2bb4:	683a      	ldr	r2, [r7, #0]
c0de2bb6:	4650      	mov	r0, sl
c0de2bb8:	4659      	mov	r1, fp
c0de2bba:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2bbe:	f000 bf3d 	b.w	c0de3a3c <zkn_frost_hash_update>

c0de2bc2 <OUTLINED_FUNCTION_1>:
c0de2bc2:	2120      	movs	r1, #32
c0de2bc4:	2320      	movs	r3, #32
c0de2bc6:	f004 bef9 	b.w	c0de79bc <cx_bn_alloc_init>

c0de2bca <OUTLINED_FUNCTION_2>:
c0de2bca:	2120      	movs	r1, #32
c0de2bcc:	f004 beec 	b.w	c0de79a8 <cx_bn_alloc>

c0de2bd0 <OUTLINED_FUNCTION_3>:
c0de2bd0:	4642      	mov	r2, r8
c0de2bd2:	4601      	mov	r1, r0
c0de2bd4:	f004 bfbc 	b.w	c0de7b50 <cx_mont_to_montgomery>

c0de2bd8 <OUTLINED_FUNCTION_4>:
c0de2bd8:	461c      	mov	r4, r3
c0de2bda:	4615      	mov	r5, r2
c0de2bdc:	f004 bee4 	b.w	c0de79a8 <cx_bn_alloc>

c0de2be0 <OUTLINED_FUNCTION_5>:
c0de2be0:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2be2:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de2be4:	2220      	movs	r2, #32
c0de2be6:	f004 bf29 	b.w	c0de7a3c <cx_bn_export>

c0de2bea <OUTLINED_FUNCTION_6>:
c0de2bea:	4620      	mov	r0, r4
c0de2bec:	f000 b815 	b.w	c0de2c1a <tEdwards_destroy>

c0de2bf0 <tEdwards_alloc>:
c0de2bf0:	b5b0      	push	{r4, r5, r7, lr}
c0de2bf2:	460d      	mov	r5, r1
c0de2bf4:	6801      	ldr	r1, [r0, #0]
c0de2bf6:	4604      	mov	r4, r0
c0de2bf8:	4628      	mov	r0, r5
c0de2bfa:	f004 fed5 	bl	c0de79a8 <cx_bn_alloc>
c0de2bfe:	b920      	cbnz	r0, c0de2c0a <tEdwards_alloc+0x1a>
c0de2c00:	6821      	ldr	r1, [r4, #0]
c0de2c02:	1d28      	adds	r0, r5, #4
c0de2c04:	f004 fed0 	bl	c0de79a8 <cx_bn_alloc>
c0de2c08:	b100      	cbz	r0, c0de2c0c <tEdwards_alloc+0x1c>
c0de2c0a:	bdb0      	pop	{r4, r5, r7, pc}
c0de2c0c:	6821      	ldr	r1, [r4, #0]
c0de2c0e:	f105 0008 	add.w	r0, r5, #8
c0de2c12:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2c16:	f004 bec7 	b.w	c0de79a8 <cx_bn_alloc>

c0de2c1a <tEdwards_destroy>:
c0de2c1a:	b510      	push	{r4, lr}
c0de2c1c:	4608      	mov	r0, r1
c0de2c1e:	460c      	mov	r4, r1
c0de2c20:	f004 fed8 	bl	c0de79d4 <cx_bn_destroy>
c0de2c24:	b918      	cbnz	r0, c0de2c2e <tEdwards_destroy+0x14>
c0de2c26:	1d20      	adds	r0, r4, #4
c0de2c28:	f004 fed4 	bl	c0de79d4 <cx_bn_destroy>
c0de2c2c:	b100      	cbz	r0, c0de2c30 <tEdwards_destroy+0x16>
c0de2c2e:	bd10      	pop	{r4, pc}
c0de2c30:	f104 0008 	add.w	r0, r4, #8
c0de2c34:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2c38:	f004 becc 	b.w	c0de79d4 <cx_bn_destroy>

c0de2c3c <tEdwards_double>:
c0de2c3c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2c3e:	460f      	mov	r7, r1
c0de2c40:	4614      	mov	r4, r2
c0de2c42:	4605      	mov	r5, r0
c0de2c44:	6843      	ldr	r3, [r0, #4]
c0de2c46:	6809      	ldr	r1, [r1, #0]
c0de2c48:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2c4a:	687a      	ldr	r2, [r7, #4]
c0de2c4c:	f004 ff26 	bl	c0de7a9c <cx_bn_mod_add>
c0de2c50:	2800      	cmp	r0, #0
c0de2c52:	d154      	bne.n	c0de2cfe <tEdwards_double+0xc2>
c0de2c54:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2c58:	f105 0620 	add.w	r6, r5, #32
c0de2c5c:	f000 fbe4 	bl	c0de3428 <OUTLINED_FUNCTION_2>
c0de2c60:	2800      	cmp	r0, #0
c0de2c62:	d14c      	bne.n	c0de2cfe <tEdwards_double+0xc2>
c0de2c64:	6839      	ldr	r1, [r7, #0]
c0de2c66:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2c68:	f000 fbde 	bl	c0de3428 <OUTLINED_FUNCTION_2>
c0de2c6c:	2800      	cmp	r0, #0
c0de2c6e:	d146      	bne.n	c0de2cfe <tEdwards_double+0xc2>
c0de2c70:	6879      	ldr	r1, [r7, #4]
c0de2c72:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2c74:	f000 fbd8 	bl	c0de3428 <OUTLINED_FUNCTION_2>
c0de2c78:	2800      	cmp	r0, #0
c0de2c7a:	d140      	bne.n	c0de2cfe <tEdwards_double+0xc2>
c0de2c7c:	69a9      	ldr	r1, [r5, #24]
c0de2c7e:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2c80:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c82:	f000 fbcb 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de2c86:	bbd0      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2c88:	686b      	ldr	r3, [r5, #4]
c0de2c8a:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2c8e:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2c90:	f004 ff04 	bl	c0de7a9c <cx_bn_mod_add>
c0de2c94:	bb98      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2c96:	68b9      	ldr	r1, [r7, #8]
c0de2c98:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2c9a:	f000 fbc5 	bl	c0de3428 <OUTLINED_FUNCTION_2>
c0de2c9e:	bb70      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2ca0:	686b      	ldr	r3, [r5, #4]
c0de2ca2:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2ca4:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2ca6:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2ca8:	f004 ff04 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2cac:	bb38      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2cae:	686b      	ldr	r3, [r5, #4]
c0de2cb0:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2cb2:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2cb6:	f004 fefd 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2cba:	bb00      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2cbc:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de2cc0:	686b      	ldr	r3, [r5, #4]
c0de2cc2:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2cc4:	f004 fef6 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2cc8:	b9c8      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2cca:	686b      	ldr	r3, [r5, #4]
c0de2ccc:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2cd0:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de2cd2:	f004 feef 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2cd6:	b990      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2cd8:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2cda:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2cdc:	6820      	ldr	r0, [r4, #0]
c0de2cde:	f000 fb9d 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de2ce2:	b960      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2ce4:	686b      	ldr	r3, [r5, #4]
c0de2ce6:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2cea:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2cec:	f004 fee2 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2cf0:	b928      	cbnz	r0, c0de2cfe <tEdwards_double+0xc2>
c0de2cf2:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2cf4:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2cf6:	6860      	ldr	r0, [r4, #4]
c0de2cf8:	f000 fb90 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de2cfc:	b100      	cbz	r0, c0de2d00 <tEdwards_double+0xc4>
c0de2cfe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2d00:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2d02:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2d04:	68a0      	ldr	r0, [r4, #8]
c0de2d06:	4633      	mov	r3, r6
c0de2d08:	b001      	add	sp, #4
c0de2d0a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2d0e:	f004 bf37 	b.w	c0de7b80 <cx_mont_mul>

c0de2d12 <tEdwards_add>:
c0de2d12:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2d16:	4606      	mov	r6, r0
c0de2d18:	4617      	mov	r7, r2
c0de2d1a:	460c      	mov	r4, r1
c0de2d1c:	6892      	ldr	r2, [r2, #8]
c0de2d1e:	6889      	ldr	r1, [r1, #8]
c0de2d20:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2d22:	4698      	mov	r8, r3
c0de2d24:	f106 0520 	add.w	r5, r6, #32
c0de2d28:	f000 fb7b 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2d2c:	2800      	cmp	r0, #0
c0de2d2e:	d17d      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2d30:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2d34:	462b      	mov	r3, r5
c0de2d36:	460a      	mov	r2, r1
c0de2d38:	f004 ff22 	bl	c0de7b80 <cx_mont_mul>
c0de2d3c:	2800      	cmp	r0, #0
c0de2d3e:	d175      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2d40:	683a      	ldr	r2, [r7, #0]
c0de2d42:	6821      	ldr	r1, [r4, #0]
c0de2d44:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2d46:	f000 fb6c 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2d4a:	2800      	cmp	r0, #0
c0de2d4c:	d16e      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2d4e:	687a      	ldr	r2, [r7, #4]
c0de2d50:	6861      	ldr	r1, [r4, #4]
c0de2d52:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2d54:	f000 fb65 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2d58:	2800      	cmp	r0, #0
c0de2d5a:	d167      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2d5c:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2d60:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2d62:	f000 fb5e 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2d66:	2800      	cmp	r0, #0
c0de2d68:	d160      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2d6a:	69f2      	ldr	r2, [r6, #28]
c0de2d6c:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2d6e:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2d70:	f000 fb57 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2d74:	2800      	cmp	r0, #0
c0de2d76:	d159      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2d78:	6873      	ldr	r3, [r6, #4]
c0de2d7a:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2d7c:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2d80:	f004 fe98 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2d84:	2800      	cmp	r0, #0
c0de2d86:	d151      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2d88:	6873      	ldr	r3, [r6, #4]
c0de2d8a:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2d8c:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2d8e:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2d90:	f004 fe84 	bl	c0de7a9c <cx_bn_mod_add>
c0de2d94:	2800      	cmp	r0, #0
c0de2d96:	d149      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2d98:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2d9c:	6873      	ldr	r3, [r6, #4]
c0de2d9e:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2da0:	f004 fe7c 	bl	c0de7a9c <cx_bn_mod_add>
c0de2da4:	2800      	cmp	r0, #0
c0de2da6:	d141      	bne.n	c0de2e2c <tEdwards_add+0x11a>
c0de2da8:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2dac:	6873      	ldr	r3, [r6, #4]
c0de2dae:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2db0:	f004 fe74 	bl	c0de7a9c <cx_bn_mod_add>
c0de2db4:	bbd0      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2db6:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2db8:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2dbc:	f000 fb31 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2dc0:	bba0      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2dc2:	6873      	ldr	r3, [r6, #4]
c0de2dc4:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2dc8:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2dca:	f004 fe73 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2dce:	bb68      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2dd0:	6873      	ldr	r3, [r6, #4]
c0de2dd2:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2dd4:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2dd8:	f004 fe6c 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2ddc:	bb30      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2dde:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2de2:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2de4:	f000 fb1d 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2de8:	bb00      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2dea:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2dec:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2dee:	f8d8 0000 	ldr.w	r0, [r8]
c0de2df2:	f000 fb16 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2df6:	b9c8      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2df8:	69b1      	ldr	r1, [r6, #24]
c0de2dfa:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2dfe:	f000 fb10 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2e02:	b998      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2e04:	6873      	ldr	r3, [r6, #4]
c0de2e06:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2e08:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2e0a:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2e0c:	f004 fe52 	bl	c0de7ab4 <cx_bn_mod_sub>
c0de2e10:	b960      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2e12:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2e14:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2e16:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2e18:	f000 fb03 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2e1c:	b930      	cbnz	r0, c0de2e2c <tEdwards_add+0x11a>
c0de2e1e:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2e22:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2e26:	f000 fafc 	bl	c0de3422 <OUTLINED_FUNCTION_1>
c0de2e2a:	b108      	cbz	r0, c0de2e30 <tEdwards_add+0x11e>
c0de2e2c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2e30:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2e34:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2e38:	462b      	mov	r3, r5
c0de2e3a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e3e:	f004 be9f 	b.w	c0de7b80 <cx_mont_mul>

c0de2e42 <tEdwards_IsOnCurve>:
c0de2e42:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2e44:	4605      	mov	r5, r0
c0de2e46:	460f      	mov	r7, r1
c0de2e48:	2005      	movs	r0, #5
c0de2e4a:	6809      	ldr	r1, [r1, #0]
c0de2e4c:	4614      	mov	r4, r2
c0de2e4e:	9000      	str	r0, [sp, #0]
c0de2e50:	f105 0620 	add.w	r6, r5, #32
c0de2e54:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2e56:	460a      	mov	r2, r1
c0de2e58:	f000 fae0 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de2e5c:	b100      	cbz	r0, c0de2e60 <tEdwards_IsOnCurve+0x1e>
c0de2e5e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2e60:	6879      	ldr	r1, [r7, #4]
c0de2e62:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2e64:	f000 fae0 	bl	c0de3428 <OUTLINED_FUNCTION_2>
c0de2e68:	2800      	cmp	r0, #0
c0de2e6a:	d1f8      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2e6c:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2e70:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2e72:	f000 fad3 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de2e76:	2800      	cmp	r0, #0
c0de2e78:	d1f1      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2e7a:	69a9      	ldr	r1, [r5, #24]
c0de2e7c:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2e7e:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2e80:	f000 facc 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de2e84:	2800      	cmp	r0, #0
c0de2e86:	d1ea      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2e88:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2e8a:	686b      	ldr	r3, [r5, #4]
c0de2e8c:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2e8e:	4601      	mov	r1, r0
c0de2e90:	f004 fe04 	bl	c0de7a9c <cx_bn_mod_add>
c0de2e94:	2800      	cmp	r0, #0
c0de2e96:	d1e2      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2e98:	69e9      	ldr	r1, [r5, #28]
c0de2e9a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2e9c:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2e9e:	f000 fabd 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de2ea2:	2800      	cmp	r0, #0
c0de2ea4:	d1db      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2ea6:	686b      	ldr	r3, [r5, #4]
c0de2ea8:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2eaa:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2eac:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2eae:	f004 fdf5 	bl	c0de7a9c <cx_bn_mod_add>
c0de2eb2:	2800      	cmp	r0, #0
c0de2eb4:	d1d3      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2eb6:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2eb8:	4632      	mov	r2, r6
c0de2eba:	4601      	mov	r1, r0
c0de2ebc:	f004 fe54 	bl	c0de7b68 <cx_mont_from_montgomery>
c0de2ec0:	2800      	cmp	r0, #0
c0de2ec2:	d1cc      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2ec4:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2ec6:	4632      	mov	r2, r6
c0de2ec8:	4601      	mov	r1, r0
c0de2eca:	f004 fe4d 	bl	c0de7b68 <cx_mont_from_montgomery>
c0de2ece:	2800      	cmp	r0, #0
c0de2ed0:	d1c5      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2ed2:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2ed6:	466a      	mov	r2, sp
c0de2ed8:	f004 fdbc 	bl	c0de7a54 <cx_bn_cmp>
c0de2edc:	2800      	cmp	r0, #0
c0de2ede:	d1be      	bne.n	c0de2e5e <tEdwards_IsOnCurve+0x1c>
c0de2ee0:	9800      	ldr	r0, [sp, #0]
c0de2ee2:	fab0 f080 	clz	r0, r0
c0de2ee6:	0940      	lsrs	r0, r0, #5
c0de2ee8:	7020      	strb	r0, [r4, #0]
c0de2eea:	2000      	movs	r0, #0
c0de2eec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2ef0 <tEdwards_Curve_alloc_init>:
c0de2ef0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ef4:	b0d2      	sub	sp, #328	@ 0x148
c0de2ef6:	4604      	mov	r4, r0
c0de2ef8:	2902      	cmp	r1, #2
c0de2efa:	d022      	beq.n	c0de2f42 <tEdwards_Curve_alloc_init+0x52>
c0de2efc:	2901      	cmp	r1, #1
c0de2efe:	f040 80cd 	bne.w	c0de309c <tEdwards_Curve_alloc_init+0x1ac>
c0de2f02:	2020      	movs	r0, #32
c0de2f04:	2220      	movs	r2, #32
c0de2f06:	6020      	str	r0, [r4, #0]
c0de2f08:	af4a      	add	r7, sp, #296	@ 0x128
c0de2f0a:	4967      	ldr	r1, [pc, #412]	@ (c0de30a8 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2f0c:	4638      	mov	r0, r7
c0de2f0e:	4479      	add	r1, pc
c0de2f10:	f005 f800 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f14:	ae42      	add	r6, sp, #264	@ 0x108
c0de2f16:	4965      	ldr	r1, [pc, #404]	@ (c0de30ac <tEdwards_Curve_alloc_init+0x1bc>)
c0de2f18:	2220      	movs	r2, #32
c0de2f1a:	4630      	mov	r0, r6
c0de2f1c:	4479      	add	r1, pc
c0de2f1e:	f004 fff9 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f22:	4963      	ldr	r1, [pc, #396]	@ (c0de30b0 <tEdwards_Curve_alloc_init+0x1c0>)
c0de2f24:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2f28:	2220      	movs	r2, #32
c0de2f2a:	4650      	mov	r0, sl
c0de2f2c:	4479      	add	r1, pc
c0de2f2e:	f004 fff1 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f32:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2f34:	495f      	ldr	r1, [pc, #380]	@ (c0de30b4 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2f36:	2220      	movs	r2, #32
c0de2f38:	4628      	mov	r0, r5
c0de2f3a:	4479      	add	r1, pc
c0de2f3c:	f004 ffea 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f40:	e02d      	b.n	c0de2f9e <tEdwards_Curve_alloc_init+0xae>
c0de2f42:	2020      	movs	r0, #32
c0de2f44:	2220      	movs	r2, #32
c0de2f46:	6020      	str	r0, [r4, #0]
c0de2f48:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2f4a:	495b      	ldr	r1, [pc, #364]	@ (c0de30b8 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2f4c:	4638      	mov	r0, r7
c0de2f4e:	4479      	add	r1, pc
c0de2f50:	f004 ffe0 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f54:	ae22      	add	r6, sp, #136	@ 0x88
c0de2f56:	4959      	ldr	r1, [pc, #356]	@ (c0de30bc <tEdwards_Curve_alloc_init+0x1cc>)
c0de2f58:	2220      	movs	r2, #32
c0de2f5a:	4630      	mov	r0, r6
c0de2f5c:	4479      	add	r1, pc
c0de2f5e:	f004 ffd9 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f62:	4957      	ldr	r1, [pc, #348]	@ (c0de30c0 <tEdwards_Curve_alloc_init+0x1d0>)
c0de2f64:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2f68:	2220      	movs	r2, #32
c0de2f6a:	4650      	mov	r0, sl
c0de2f6c:	4479      	add	r1, pc
c0de2f6e:	f004 ffd1 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f72:	a812      	add	r0, sp, #72	@ 0x48
c0de2f74:	4953      	ldr	r1, [pc, #332]	@ (c0de30c4 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2f76:	2220      	movs	r2, #32
c0de2f78:	9001      	str	r0, [sp, #4]
c0de2f7a:	4479      	add	r1, pc
c0de2f7c:	f004 ffca 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f80:	4951      	ldr	r1, [pc, #324]	@ (c0de30c8 <tEdwards_Curve_alloc_init+0x1d8>)
c0de2f82:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2f86:	2220      	movs	r2, #32
c0de2f88:	4658      	mov	r0, fp
c0de2f8a:	4479      	add	r1, pc
c0de2f8c:	f004 ffc2 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f90:	ad02      	add	r5, sp, #8
c0de2f92:	494e      	ldr	r1, [pc, #312]	@ (c0de30cc <tEdwards_Curve_alloc_init+0x1dc>)
c0de2f94:	2220      	movs	r2, #32
c0de2f96:	4628      	mov	r0, r5
c0de2f98:	4479      	add	r1, pc
c0de2f9a:	f004 ffbb 	bl	c0de7f14 <__aeabi_memcpy>
c0de2f9e:	f104 0804 	add.w	r8, r4, #4
c0de2fa2:	2120      	movs	r1, #32
c0de2fa4:	463a      	mov	r2, r7
c0de2fa6:	2320      	movs	r3, #32
c0de2fa8:	4640      	mov	r0, r8
c0de2faa:	f004 fd07 	bl	c0de79bc <cx_bn_alloc_init>
c0de2fae:	2800      	cmp	r0, #0
c0de2fb0:	d175      	bne.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de2fb2:	4620      	mov	r0, r4
c0de2fb4:	462a      	mov	r2, r5
c0de2fb6:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2fba:	460b      	mov	r3, r1
c0de2fbc:	f004 fcfe 	bl	c0de79bc <cx_bn_alloc_init>
c0de2fc0:	2800      	cmp	r0, #0
c0de2fc2:	d16c      	bne.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de2fc4:	f104 0520 	add.w	r5, r4, #32
c0de2fc8:	2120      	movs	r1, #32
c0de2fca:	4628      	mov	r0, r5
c0de2fcc:	f004 fdac 	bl	c0de7b28 <cx_mont_alloc>
c0de2fd0:	2800      	cmp	r0, #0
c0de2fd2:	d164      	bne.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de2fd4:	f8d8 1000 	ldr.w	r1, [r8]
c0de2fd8:	4628      	mov	r0, r5
c0de2fda:	f004 fdaf 	bl	c0de7b3c <cx_mont_init>
c0de2fde:	2800      	cmp	r0, #0
c0de2fe0:	d15d      	bne.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de2fe2:	4627      	mov	r7, r4
c0de2fe4:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2fe8:	4638      	mov	r0, r7
c0de2fea:	f004 fcdd 	bl	c0de79a8 <cx_bn_alloc>
c0de2fee:	2800      	cmp	r0, #0
c0de2ff0:	d155      	bne.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de2ff2:	6838      	ldr	r0, [r7, #0]
c0de2ff4:	2101      	movs	r1, #1
c0de2ff6:	f004 fd17 	bl	c0de7a28 <cx_bn_set_u32>
c0de2ffa:	2800      	cmp	r0, #0
c0de2ffc:	d14f      	bne.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de2ffe:	6838      	ldr	r0, [r7, #0]
c0de3000:	f000 fa16 	bl	c0de3430 <OUTLINED_FUNCTION_3>
c0de3004:	2800      	cmp	r0, #0
c0de3006:	d14a      	bne.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3008:	f104 070c 	add.w	r7, r4, #12
c0de300c:	4620      	mov	r0, r4
c0de300e:	4639      	mov	r1, r7
c0de3010:	f7ff fdee 	bl	c0de2bf0 <tEdwards_alloc>
c0de3014:	2800      	cmp	r0, #0
c0de3016:	d142      	bne.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3018:	9901      	ldr	r1, [sp, #4]
c0de301a:	4620      	mov	r0, r4
c0de301c:	465a      	mov	r2, fp
c0de301e:	463b      	mov	r3, r7
c0de3020:	f000 f856 	bl	c0de30d0 <tEdwards_init>
c0de3024:	bbd8      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3026:	4627      	mov	r7, r4
c0de3028:	4632      	mov	r2, r6
c0de302a:	f857 1b18 	ldr.w	r1, [r7], #24
c0de302e:	4638      	mov	r0, r7
c0de3030:	460b      	mov	r3, r1
c0de3032:	f004 fcc3 	bl	c0de79bc <cx_bn_alloc_init>
c0de3036:	bb90      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3038:	6838      	ldr	r0, [r7, #0]
c0de303a:	f000 f9f9 	bl	c0de3430 <OUTLINED_FUNCTION_3>
c0de303e:	bb70      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3040:	4626      	mov	r6, r4
c0de3042:	4652      	mov	r2, sl
c0de3044:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de3048:	4630      	mov	r0, r6
c0de304a:	460b      	mov	r3, r1
c0de304c:	f004 fcb6 	bl	c0de79bc <cx_bn_alloc_init>
c0de3050:	bb28      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3052:	6830      	ldr	r0, [r6, #0]
c0de3054:	f000 f9ec 	bl	c0de3430 <OUTLINED_FUNCTION_3>
c0de3058:	bb08      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de305a:	4620      	mov	r0, r4
c0de305c:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de3060:	f004 fca2 	bl	c0de79a8 <cx_bn_alloc>
c0de3064:	b9d8      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3066:	f000 f9fb 	bl	c0de3460 <OUTLINED_FUNCTION_8>
c0de306a:	b9c0      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de306c:	f000 f9e4 	bl	c0de3438 <OUTLINED_FUNCTION_4>
c0de3070:	b9a8      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3072:	f000 f9f0 	bl	c0de3456 <OUTLINED_FUNCTION_7>
c0de3076:	b990      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3078:	f000 f9fc 	bl	c0de3474 <OUTLINED_FUNCTION_10>
c0de307c:	b978      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de307e:	f000 f9e5 	bl	c0de344c <OUTLINED_FUNCTION_6>
c0de3082:	b960      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3084:	f000 f9f1 	bl	c0de346a <OUTLINED_FUNCTION_9>
c0de3088:	b948      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de308a:	f000 f9da 	bl	c0de3442 <OUTLINED_FUNCTION_5>
c0de308e:	b930      	cbnz	r0, c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de3090:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de3094:	4620      	mov	r0, r4
c0de3096:	f004 fc87 	bl	c0de79a8 <cx_bn_alloc>
c0de309a:	e000      	b.n	c0de309e <tEdwards_Curve_alloc_init+0x1ae>
c0de309c:	4801      	ldr	r0, [pc, #4]	@ (c0de30a4 <tEdwards_Curve_alloc_init+0x1b4>)
c0de309e:	b052      	add	sp, #328	@ 0x148
c0de30a0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de30a4:	5a4b4e01 	.word	0x5a4b4e01
c0de30a8:	0000565e 	.word	0x0000565e
c0de30ac:	00005890 	.word	0x00005890
c0de30b0:	00005840 	.word	0x00005840
c0de30b4:	00005732 	.word	0x00005732
c0de30b8:	0000589e 	.word	0x0000589e
c0de30bc:	000057f0 	.word	0x000057f0
c0de30c0:	00005860 	.word	0x00005860
c0de30c4:	00005892 	.word	0x00005892
c0de30c8:	000058a2 	.word	0x000058a2
c0de30cc:	000056f4 	.word	0x000056f4

c0de30d0 <tEdwards_init>:
c0de30d0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de30d2:	6806      	ldr	r6, [r0, #0]
c0de30d4:	461c      	mov	r4, r3
c0de30d6:	4617      	mov	r7, r2
c0de30d8:	460a      	mov	r2, r1
c0de30da:	4605      	mov	r5, r0
c0de30dc:	a802      	add	r0, sp, #8
c0de30de:	4631      	mov	r1, r6
c0de30e0:	4633      	mov	r3, r6
c0de30e2:	f004 fc6b 	bl	c0de79bc <cx_bn_alloc_init>
c0de30e6:	b100      	cbz	r0, c0de30ea <tEdwards_init+0x1a>
c0de30e8:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de30ea:	a801      	add	r0, sp, #4
c0de30ec:	4631      	mov	r1, r6
c0de30ee:	463a      	mov	r2, r7
c0de30f0:	4633      	mov	r3, r6
c0de30f2:	f004 fc63 	bl	c0de79bc <cx_bn_alloc_init>
c0de30f6:	2800      	cmp	r0, #0
c0de30f8:	d1f6      	bne.n	c0de30e8 <tEdwards_init+0x18>
c0de30fa:	4668      	mov	r0, sp
c0de30fc:	4631      	mov	r1, r6
c0de30fe:	f004 fc53 	bl	c0de79a8 <cx_bn_alloc>
c0de3102:	2800      	cmp	r0, #0
c0de3104:	d1f0      	bne.n	c0de30e8 <tEdwards_init+0x18>
c0de3106:	f105 0620 	add.w	r6, r5, #32
c0de310a:	6820      	ldr	r0, [r4, #0]
c0de310c:	9902      	ldr	r1, [sp, #8]
c0de310e:	4632      	mov	r2, r6
c0de3110:	f004 fd1e 	bl	c0de7b50 <cx_mont_to_montgomery>
c0de3114:	2800      	cmp	r0, #0
c0de3116:	d1e7      	bne.n	c0de30e8 <tEdwards_init+0x18>
c0de3118:	6860      	ldr	r0, [r4, #4]
c0de311a:	9901      	ldr	r1, [sp, #4]
c0de311c:	4632      	mov	r2, r6
c0de311e:	f004 fd17 	bl	c0de7b50 <cx_mont_to_montgomery>
c0de3122:	2800      	cmp	r0, #0
c0de3124:	d1e0      	bne.n	c0de30e8 <tEdwards_init+0x18>
c0de3126:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de3128:	68a0      	ldr	r0, [r4, #8]
c0de312a:	f004 fc73 	bl	c0de7a14 <cx_bn_copy>
c0de312e:	2800      	cmp	r0, #0
c0de3130:	d1da      	bne.n	c0de30e8 <tEdwards_init+0x18>
c0de3132:	a802      	add	r0, sp, #8
c0de3134:	f004 fc4e 	bl	c0de79d4 <cx_bn_destroy>
c0de3138:	2800      	cmp	r0, #0
c0de313a:	d1d5      	bne.n	c0de30e8 <tEdwards_init+0x18>
c0de313c:	a801      	add	r0, sp, #4
c0de313e:	f004 fc49 	bl	c0de79d4 <cx_bn_destroy>
c0de3142:	2800      	cmp	r0, #0
c0de3144:	d1d0      	bne.n	c0de30e8 <tEdwards_init+0x18>
c0de3146:	4668      	mov	r0, sp
c0de3148:	f004 fc44 	bl	c0de79d4 <cx_bn_destroy>
c0de314c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de314e <tEdwards_Curve_partial_destroy>:
c0de314e:	b510      	push	{r4, lr}
c0de3150:	4604      	mov	r4, r0
c0de3152:	302c      	adds	r0, #44	@ 0x2c
c0de3154:	f004 fc3e 	bl	c0de79d4 <cx_bn_destroy>
c0de3158:	bbd8      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de315a:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de315e:	f004 fc39 	bl	c0de79d4 <cx_bn_destroy>
c0de3162:	bbb0      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de3164:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de3168:	f004 fc34 	bl	c0de79d4 <cx_bn_destroy>
c0de316c:	bb88      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de316e:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de3172:	f004 fc2f 	bl	c0de79d4 <cx_bn_destroy>
c0de3176:	bb60      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de3178:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de317c:	f004 fc2a 	bl	c0de79d4 <cx_bn_destroy>
c0de3180:	bb38      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de3182:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de3186:	f004 fc25 	bl	c0de79d4 <cx_bn_destroy>
c0de318a:	bb10      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de318c:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de3190:	f004 fc20 	bl	c0de79d4 <cx_bn_destroy>
c0de3194:	b9e8      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de3196:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de319a:	f004 fc1b 	bl	c0de79d4 <cx_bn_destroy>
c0de319e:	b9c0      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de31a0:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de31a4:	f004 fc16 	bl	c0de79d4 <cx_bn_destroy>
c0de31a8:	b998      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de31aa:	f104 010c 	add.w	r1, r4, #12
c0de31ae:	f7ff fd34 	bl	c0de2c1a <tEdwards_destroy>
c0de31b2:	b970      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de31b4:	f104 0018 	add.w	r0, r4, #24
c0de31b8:	f004 fc0c 	bl	c0de79d4 <cx_bn_destroy>
c0de31bc:	b948      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de31be:	f104 001c 	add.w	r0, r4, #28
c0de31c2:	f004 fc07 	bl	c0de79d4 <cx_bn_destroy>
c0de31c6:	b920      	cbnz	r0, c0de31d2 <tEdwards_Curve_partial_destroy+0x84>
c0de31c8:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de31cc:	f004 fc02 	bl	c0de79d4 <cx_bn_destroy>
c0de31d0:	b100      	cbz	r0, c0de31d4 <tEdwards_Curve_partial_destroy+0x86>
c0de31d2:	bd10      	pop	{r4, pc}
c0de31d4:	f104 0008 	add.w	r0, r4, #8
c0de31d8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de31dc:	f004 bbfa 	b.w	c0de79d4 <cx_bn_destroy>

c0de31e0 <tEdwards_SetNeutral>:
c0de31e0:	b5b0      	push	{r4, r5, r7, lr}
c0de31e2:	4605      	mov	r5, r0
c0de31e4:	6808      	ldr	r0, [r1, #0]
c0de31e6:	460c      	mov	r4, r1
c0de31e8:	2100      	movs	r1, #0
c0de31ea:	f004 fc1d 	bl	c0de7a28 <cx_bn_set_u32>
c0de31ee:	b918      	cbnz	r0, c0de31f8 <tEdwards_SetNeutral+0x18>
c0de31f0:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de31f2:	f000 f944 	bl	c0de347e <OUTLINED_FUNCTION_11>
c0de31f6:	b100      	cbz	r0, c0de31fa <tEdwards_SetNeutral+0x1a>
c0de31f8:	bdb0      	pop	{r4, r5, r7, pc}
c0de31fa:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de31fc:	68a0      	ldr	r0, [r4, #8]
c0de31fe:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3202:	f004 bc07 	b.w	c0de7a14 <cx_bn_copy>

c0de3206 <tEdwards_export>:
c0de3206:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de320a:	4698      	mov	r8, r3
c0de320c:	4616      	mov	r6, r2
c0de320e:	460f      	mov	r7, r1
c0de3210:	4605      	mov	r5, r0
c0de3212:	f000 f81e 	bl	c0de3252 <tEdwards_normalize>
c0de3216:	b998      	cbnz	r0, c0de3240 <tEdwards_export+0x3a>
c0de3218:	f105 0420 	add.w	r4, r5, #32
c0de321c:	6839      	ldr	r1, [r7, #0]
c0de321e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de3220:	4622      	mov	r2, r4
c0de3222:	f004 fca1 	bl	c0de7b68 <cx_mont_from_montgomery>
c0de3226:	b958      	cbnz	r0, c0de3240 <tEdwards_export+0x3a>
c0de3228:	6879      	ldr	r1, [r7, #4]
c0de322a:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de322c:	4622      	mov	r2, r4
c0de322e:	f004 fc9b 	bl	c0de7b68 <cx_mont_from_montgomery>
c0de3232:	b928      	cbnz	r0, c0de3240 <tEdwards_export+0x3a>
c0de3234:	682a      	ldr	r2, [r5, #0]
c0de3236:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de3238:	4631      	mov	r1, r6
c0de323a:	f004 fbff 	bl	c0de7a3c <cx_bn_export>
c0de323e:	b108      	cbz	r0, c0de3244 <tEdwards_export+0x3e>
c0de3240:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3244:	682a      	ldr	r2, [r5, #0]
c0de3246:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de3248:	4641      	mov	r1, r8
c0de324a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de324e:	f004 bbf5 	b.w	c0de7a3c <cx_bn_export>

c0de3252 <tEdwards_normalize>:
c0de3252:	b570      	push	{r4, r5, r6, lr}
c0de3254:	4605      	mov	r5, r0
c0de3256:	460c      	mov	r4, r1
c0de3258:	6889      	ldr	r1, [r1, #8]
c0de325a:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de325c:	f105 0620 	add.w	r6, r5, #32
c0de3260:	4632      	mov	r2, r6
c0de3262:	f004 fca9 	bl	c0de7bb8 <cx_mont_invert_nprime>
c0de3266:	b9d0      	cbnz	r0, c0de329e <tEdwards_normalize+0x4c>
c0de3268:	6822      	ldr	r2, [r4, #0]
c0de326a:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de326e:	f000 f8d5 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de3272:	b9a0      	cbnz	r0, c0de329e <tEdwards_normalize+0x4c>
c0de3274:	6862      	ldr	r2, [r4, #4]
c0de3276:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3278:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de327a:	f000 f8cf 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de327e:	b970      	cbnz	r0, c0de329e <tEdwards_normalize+0x4c>
c0de3280:	68a2      	ldr	r2, [r4, #8]
c0de3282:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3284:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de3286:	f000 f8c9 	bl	c0de341c <OUTLINED_FUNCTION_0>
c0de328a:	b940      	cbnz	r0, c0de329e <tEdwards_normalize+0x4c>
c0de328c:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de328e:	6820      	ldr	r0, [r4, #0]
c0de3290:	f004 fbc0 	bl	c0de7a14 <cx_bn_copy>
c0de3294:	b918      	cbnz	r0, c0de329e <tEdwards_normalize+0x4c>
c0de3296:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de3298:	f000 f8f1 	bl	c0de347e <OUTLINED_FUNCTION_11>
c0de329c:	b100      	cbz	r0, c0de32a0 <tEdwards_normalize+0x4e>
c0de329e:	bd70      	pop	{r4, r5, r6, pc}
c0de32a0:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de32a2:	68a0      	ldr	r0, [r4, #8]
c0de32a4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de32a8:	f004 bbb4 	b.w	c0de7a14 <cx_bn_copy>

c0de32ac <tEdwards_copy>:
c0de32ac:	b5b0      	push	{r4, r5, r7, lr}
c0de32ae:	460c      	mov	r4, r1
c0de32b0:	4605      	mov	r5, r0
c0de32b2:	6801      	ldr	r1, [r0, #0]
c0de32b4:	6820      	ldr	r0, [r4, #0]
c0de32b6:	f004 fbad 	bl	c0de7a14 <cx_bn_copy>
c0de32ba:	b918      	cbnz	r0, c0de32c4 <tEdwards_copy+0x18>
c0de32bc:	6869      	ldr	r1, [r5, #4]
c0de32be:	f000 f8de 	bl	c0de347e <OUTLINED_FUNCTION_11>
c0de32c2:	b100      	cbz	r0, c0de32c6 <tEdwards_copy+0x1a>
c0de32c4:	bdb0      	pop	{r4, r5, r7, pc}
c0de32c6:	68a9      	ldr	r1, [r5, #8]
c0de32c8:	68a0      	ldr	r0, [r4, #8]
c0de32ca:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de32ce:	f004 bba1 	b.w	c0de7a14 <cx_bn_copy>

c0de32d2 <tEdwards_alloc_init>:
c0de32d2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de32d4:	460e      	mov	r6, r1
c0de32d6:	6801      	ldr	r1, [r0, #0]
c0de32d8:	4607      	mov	r7, r0
c0de32da:	4618      	mov	r0, r3
c0de32dc:	461c      	mov	r4, r3
c0de32de:	4615      	mov	r5, r2
c0de32e0:	f004 fb62 	bl	c0de79a8 <cx_bn_alloc>
c0de32e4:	b950      	cbnz	r0, c0de32fc <tEdwards_alloc_init+0x2a>
c0de32e6:	6839      	ldr	r1, [r7, #0]
c0de32e8:	1d20      	adds	r0, r4, #4
c0de32ea:	f004 fb5d 	bl	c0de79a8 <cx_bn_alloc>
c0de32ee:	b928      	cbnz	r0, c0de32fc <tEdwards_alloc_init+0x2a>
c0de32f0:	6839      	ldr	r1, [r7, #0]
c0de32f2:	f104 0008 	add.w	r0, r4, #8
c0de32f6:	f004 fb57 	bl	c0de79a8 <cx_bn_alloc>
c0de32fa:	b100      	cbz	r0, c0de32fe <tEdwards_alloc_init+0x2c>
c0de32fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de32fe:	4638      	mov	r0, r7
c0de3300:	4631      	mov	r1, r6
c0de3302:	462a      	mov	r2, r5
c0de3304:	4623      	mov	r3, r4
c0de3306:	b001      	add	sp, #4
c0de3308:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de330c:	f7ff bee0 	b.w	c0de30d0 <tEdwards_init>

c0de3310 <tEdwards_scalarMul_bn>:
c0de3310:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3314:	4607      	mov	r7, r0
c0de3316:	2000      	movs	r0, #0
c0de3318:	4688      	mov	r8, r1
c0de331a:	4615      	mov	r5, r2
c0de331c:	2100      	movs	r1, #0
c0de331e:	469b      	mov	fp, r3
c0de3320:	9003      	str	r0, [sp, #12]
c0de3322:	f88d 000b 	strb.w	r0, [sp, #11]
c0de3326:	6810      	ldr	r0, [r2, #0]
c0de3328:	aa03      	add	r2, sp, #12
c0de332a:	f004 fb9f 	bl	c0de7a6c <cx_bn_cmp_u32>
c0de332e:	bb38      	cbnz	r0, c0de3380 <tEdwards_scalarMul_bn+0x70>
c0de3330:	9803      	ldr	r0, [sp, #12]
c0de3332:	b1d0      	cbz	r0, c0de336a <tEdwards_scalarMul_bn+0x5a>
c0de3334:	6828      	ldr	r0, [r5, #0]
c0de3336:	a901      	add	r1, sp, #4
c0de3338:	f004 fb56 	bl	c0de79e8 <cx_bn_nbytes>
c0de333c:	bb00      	cbnz	r0, c0de3380 <tEdwards_scalarMul_bn+0x70>
c0de333e:	2002      	movs	r0, #2
c0de3340:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de3344:	f10d 040b 	add.w	r4, sp, #11
c0de3348:	6538      	str	r0, [r7, #80]	@ 0x50
c0de334a:	9801      	ldr	r0, [sp, #4]
c0de334c:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de3350:	2000      	movs	r0, #0
c0de3352:	2801      	cmp	r0, #1
c0de3354:	d00f      	beq.n	c0de3376 <tEdwards_scalarMul_bn+0x66>
c0de3356:	6828      	ldr	r0, [r5, #0]
c0de3358:	4631      	mov	r1, r6
c0de335a:	4622      	mov	r2, r4
c0de335c:	f004 fb92 	bl	c0de7a84 <cx_bn_tst_bit>
c0de3360:	b970      	cbnz	r0, c0de3380 <tEdwards_scalarMul_bn+0x70>
c0de3362:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de3366:	3e01      	subs	r6, #1
c0de3368:	e7f3      	b.n	c0de3352 <tEdwards_scalarMul_bn+0x42>
c0de336a:	4638      	mov	r0, r7
c0de336c:	4659      	mov	r1, fp
c0de336e:	f7ff ff37 	bl	c0de31e0 <tEdwards_SetNeutral>
c0de3372:	b928      	cbnz	r0, c0de3380 <tEdwards_scalarMul_bn+0x70>
c0de3374:	e7de      	b.n	c0de3334 <tEdwards_scalarMul_bn+0x24>
c0de3376:	4640      	mov	r0, r8
c0de3378:	4659      	mov	r1, fp
c0de337a:	f7ff ff97 	bl	c0de32ac <tEdwards_copy>
c0de337e:	b110      	cbz	r0, c0de3386 <tEdwards_scalarMul_bn+0x76>
c0de3380:	b004      	add	sp, #16
c0de3382:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3386:	2001      	movs	r0, #1
c0de3388:	f10d 0a0b 	add.w	sl, sp, #11
c0de338c:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de3390:	2e00      	cmp	r6, #0
c0de3392:	d420      	bmi.n	c0de33d6 <tEdwards_scalarMul_bn+0xc6>
c0de3394:	4638      	mov	r0, r7
c0de3396:	4659      	mov	r1, fp
c0de3398:	465a      	mov	r2, fp
c0de339a:	f7ff fc4f 	bl	c0de2c3c <tEdwards_double>
c0de339e:	2800      	cmp	r0, #0
c0de33a0:	d1ee      	bne.n	c0de3380 <tEdwards_scalarMul_bn+0x70>
c0de33a2:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de33a4:	4631      	mov	r1, r6
c0de33a6:	4652      	mov	r2, sl
c0de33a8:	0040      	lsls	r0, r0, #1
c0de33aa:	6538      	str	r0, [r7, #80]	@ 0x50
c0de33ac:	6828      	ldr	r0, [r5, #0]
c0de33ae:	f004 fb69 	bl	c0de7a84 <cx_bn_tst_bit>
c0de33b2:	2800      	cmp	r0, #0
c0de33b4:	d1e4      	bne.n	c0de3380 <tEdwards_scalarMul_bn+0x70>
c0de33b6:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de33ba:	b150      	cbz	r0, c0de33d2 <tEdwards_scalarMul_bn+0xc2>
c0de33bc:	4638      	mov	r0, r7
c0de33be:	4659      	mov	r1, fp
c0de33c0:	4642      	mov	r2, r8
c0de33c2:	465b      	mov	r3, fp
c0de33c4:	f7ff fca5 	bl	c0de2d12 <tEdwards_add>
c0de33c8:	2800      	cmp	r0, #0
c0de33ca:	d1d9      	bne.n	c0de3380 <tEdwards_scalarMul_bn+0x70>
c0de33cc:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de33ce:	3001      	adds	r0, #1
c0de33d0:	6538      	str	r0, [r7, #80]	@ 0x50
c0de33d2:	3e01      	subs	r6, #1
c0de33d4:	e7dc      	b.n	c0de3390 <tEdwards_scalarMul_bn+0x80>
c0de33d6:	2000      	movs	r0, #0
c0de33d8:	e7d2      	b.n	c0de3380 <tEdwards_scalarMul_bn+0x70>
	...

c0de33dc <tEdwards_scalarMul>:
c0de33dc:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de33de:	460c      	mov	r4, r1
c0de33e0:	6801      	ldr	r1, [r0, #0]
c0de33e2:	4299      	cmp	r1, r3
c0de33e4:	bf3c      	itt	cc
c0de33e6:	480c      	ldrcc	r0, [pc, #48]	@ (c0de3418 <tEdwards_scalarMul+0x3c>)
c0de33e8:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de33ea:	4605      	mov	r5, r0
c0de33ec:	20ca      	movs	r0, #202	@ 0xca
c0de33ee:	6528      	str	r0, [r5, #80]	@ 0x50
c0de33f0:	a801      	add	r0, sp, #4
c0de33f2:	f004 fae3 	bl	c0de79bc <cx_bn_alloc_init>
c0de33f6:	b100      	cbz	r0, c0de33fa <tEdwards_scalarMul+0x1e>
c0de33f8:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de33fa:	20b3      	movs	r0, #179	@ 0xb3
c0de33fc:	9b06      	ldr	r3, [sp, #24]
c0de33fe:	4621      	mov	r1, r4
c0de3400:	6528      	str	r0, [r5, #80]	@ 0x50
c0de3402:	aa01      	add	r2, sp, #4
c0de3404:	4628      	mov	r0, r5
c0de3406:	f7ff ff83 	bl	c0de3310 <tEdwards_scalarMul_bn>
c0de340a:	2800      	cmp	r0, #0
c0de340c:	d1f4      	bne.n	c0de33f8 <tEdwards_scalarMul+0x1c>
c0de340e:	a801      	add	r0, sp, #4
c0de3410:	f004 fae0 	bl	c0de79d4 <cx_bn_destroy>
c0de3414:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de3416:	bf00      	nop
c0de3418:	5a4b4e01 	.word	0x5a4b4e01

c0de341c <OUTLINED_FUNCTION_0>:
c0de341c:	4633      	mov	r3, r6
c0de341e:	f004 bbaf 	b.w	c0de7b80 <cx_mont_mul>

c0de3422 <OUTLINED_FUNCTION_1>:
c0de3422:	462b      	mov	r3, r5
c0de3424:	f004 bbac 	b.w	c0de7b80 <cx_mont_mul>

c0de3428 <OUTLINED_FUNCTION_2>:
c0de3428:	4633      	mov	r3, r6
c0de342a:	460a      	mov	r2, r1
c0de342c:	f004 bba8 	b.w	c0de7b80 <cx_mont_mul>

c0de3430 <OUTLINED_FUNCTION_3>:
c0de3430:	462a      	mov	r2, r5
c0de3432:	4601      	mov	r1, r0
c0de3434:	f004 bb8c 	b.w	c0de7b50 <cx_mont_to_montgomery>

c0de3438 <OUTLINED_FUNCTION_4>:
c0de3438:	4620      	mov	r0, r4
c0de343a:	f850 1b34 	ldr.w	r1, [r0], #52
c0de343e:	f004 bab3 	b.w	c0de79a8 <cx_bn_alloc>

c0de3442 <OUTLINED_FUNCTION_5>:
c0de3442:	4620      	mov	r0, r4
c0de3444:	f850 1b48 	ldr.w	r1, [r0], #72
c0de3448:	f004 baae 	b.w	c0de79a8 <cx_bn_alloc>

c0de344c <OUTLINED_FUNCTION_6>:
c0de344c:	4620      	mov	r0, r4
c0de344e:	f850 1b40 	ldr.w	r1, [r0], #64
c0de3452:	f004 baa9 	b.w	c0de79a8 <cx_bn_alloc>

c0de3456 <OUTLINED_FUNCTION_7>:
c0de3456:	4620      	mov	r0, r4
c0de3458:	f850 1b38 	ldr.w	r1, [r0], #56
c0de345c:	f004 baa4 	b.w	c0de79a8 <cx_bn_alloc>

c0de3460 <OUTLINED_FUNCTION_8>:
c0de3460:	4620      	mov	r0, r4
c0de3462:	f850 1b30 	ldr.w	r1, [r0], #48
c0de3466:	f004 ba9f 	b.w	c0de79a8 <cx_bn_alloc>

c0de346a <OUTLINED_FUNCTION_9>:
c0de346a:	4620      	mov	r0, r4
c0de346c:	f850 1b44 	ldr.w	r1, [r0], #68
c0de3470:	f004 ba9a 	b.w	c0de79a8 <cx_bn_alloc>

c0de3474 <OUTLINED_FUNCTION_10>:
c0de3474:	4620      	mov	r0, r4
c0de3476:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de347a:	f004 ba95 	b.w	c0de79a8 <cx_bn_alloc>

c0de347e <OUTLINED_FUNCTION_11>:
c0de347e:	6860      	ldr	r0, [r4, #4]
c0de3480:	f004 bac8 	b.w	c0de7a14 <cx_bn_copy>

c0de3484 <grain_lfsr_advance>:
c0de3484:	b5b0      	push	{r4, r5, r7, lr}
c0de3486:	68c2      	ldr	r2, [r0, #12]
c0de3488:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de348c:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de3490:	ea4f 0234 	mov.w	r2, r4, rrx
c0de3494:	07e4      	lsls	r4, r4, #31
c0de3496:	60c5      	str	r5, [r0, #12]
c0de3498:	07dd      	lsls	r5, r3, #31
c0de349a:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de349e:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de34a2:	6044      	str	r4, [r0, #4]
c0de34a4:	4c15      	ldr	r4, [pc, #84]	@ (c0de34fc <grain_lfsr_advance+0x78>)
c0de34a6:	6005      	str	r5, [r0, #0]
c0de34a8:	4021      	ands	r1, r4
c0de34aa:	4c15      	ldr	r4, [pc, #84]	@ (c0de3500 <grain_lfsr_advance+0x7c>)
c0de34ac:	4023      	ands	r3, r4
c0de34ae:	4419      	add	r1, r3
c0de34b0:	0c0c      	lsrs	r4, r1, #16
c0de34b2:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de34b6:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de34ba:	4421      	add	r1, r4
c0de34bc:	0a0c      	lsrs	r4, r1, #8
c0de34be:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de34c2:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de34c6:	4061      	eors	r1, r4
c0de34c8:	090c      	lsrs	r4, r1, #4
c0de34ca:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de34ce:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de34d2:	4061      	eors	r1, r4
c0de34d4:	088c      	lsrs	r4, r1, #2
c0de34d6:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de34da:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de34de:	4061      	eors	r1, r4
c0de34e0:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de34e4:	ea4f 0331 	mov.w	r3, r1, rrx
c0de34e8:	4059      	eors	r1, r3
c0de34ea:	f001 0101 	and.w	r1, r1, #1
c0de34ee:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de34f2:	6082      	str	r2, [r0, #8]
c0de34f4:	4608      	mov	r0, r1
c0de34f6:	2100      	movs	r1, #0
c0de34f8:	bdb0      	pop	{r4, r5, r7, pc}
c0de34fa:	bf00      	nop
c0de34fc:	00802001 	.word	0x00802001
c0de3500:	40080040 	.word	0x40080040

c0de3504 <next64_graingen>:
c0de3504:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de3508:	460c      	mov	r4, r1
c0de350a:	4605      	mov	r5, r0
c0de350c:	f04f 0a00 	mov.w	sl, #0
c0de3510:	f04f 0800 	mov.w	r8, #0
c0de3514:	2700      	movs	r7, #0
c0de3516:	42a7      	cmp	r7, r4
c0de3518:	d215      	bcs.n	c0de3546 <next64_graingen+0x42>
c0de351a:	4628      	mov	r0, r5
c0de351c:	f7ff ffb2 	bl	c0de3484 <grain_lfsr_advance>
c0de3520:	4606      	mov	r6, r0
c0de3522:	4628      	mov	r0, r5
c0de3524:	f7ff ffae 	bl	c0de3484 <grain_lfsr_advance>
c0de3528:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de352c:	0781      	lsls	r1, r0, #30
c0de352e:	d5f2      	bpl.n	c0de3516 <next64_graingen+0x12>
c0de3530:	f000 0001 	and.w	r0, r0, #1
c0de3534:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de3538:	3701      	adds	r7, #1
c0de353a:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de353e:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de3542:	4682      	mov	sl, r0
c0de3544:	e7e7      	b.n	c0de3516 <next64_graingen+0x12>
c0de3546:	4650      	mov	r0, sl
c0de3548:	4641      	mov	r1, r8
c0de354a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de3550 <init_generator>:
c0de3550:	b5b0      	push	{r4, r5, r7, lr}
c0de3552:	4a09      	ldr	r2, [pc, #36]	@ (c0de3578 <init_generator+0x28>)
c0de3554:	4b09      	ldr	r3, [pc, #36]	@ (c0de357c <init_generator+0x2c>)
c0de3556:	4604      	mov	r4, r0
c0de3558:	25a0      	movs	r5, #160	@ 0xa0
c0de355a:	2000      	movs	r0, #0
c0de355c:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de3560:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de3564:	e9c4 3200 	strd	r3, r2, [r4]
c0de3568:	b125      	cbz	r5, c0de3574 <init_generator+0x24>
c0de356a:	4620      	mov	r0, r4
c0de356c:	f7ff ff8a 	bl	c0de3484 <grain_lfsr_advance>
c0de3570:	3d01      	subs	r5, #1
c0de3572:	e7f9      	b.n	c0de3568 <init_generator+0x18>
c0de3574:	bdb0      	pop	{r4, r5, r7, pc}
c0de3576:	bf00      	nop
c0de3578:	fffcf010 	.word	0xfffcf010
c0de357c:	1801fc02 	.word	0x1801fc02

c0de3580 <gen_integer>:
c0de3580:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3584:	4f20      	ldr	r7, [pc, #128]	@ (c0de3608 <gen_integer+0x88>)
c0de3586:	4e22      	ldr	r6, [pc, #136]	@ (c0de3610 <gen_integer+0x90>)
c0de3588:	4605      	mov	r5, r0
c0de358a:	460c      	mov	r4, r1
c0de358c:	2000      	movs	r0, #0
c0de358e:	46b8      	mov	r8, r7
c0de3590:	4f1e      	ldr	r7, [pc, #120]	@ (c0de360c <gen_integer+0x8c>)
c0de3592:	447e      	add	r6, pc
c0de3594:	b9f8      	cbnz	r0, c0de35d6 <gen_integer+0x56>
c0de3596:	4628      	mov	r0, r5
c0de3598:	213e      	movs	r1, #62	@ 0x3e
c0de359a:	47b0      	blx	r6
c0de359c:	e9c4 0100 	strd	r0, r1, [r4]
c0de35a0:	4628      	mov	r0, r5
c0de35a2:	2140      	movs	r1, #64	@ 0x40
c0de35a4:	47b0      	blx	r6
c0de35a6:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de35aa:	4628      	mov	r0, r5
c0de35ac:	2140      	movs	r1, #64	@ 0x40
c0de35ae:	47b0      	blx	r6
c0de35b0:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de35b4:	4628      	mov	r0, r5
c0de35b6:	2140      	movs	r1, #64	@ 0x40
c0de35b8:	47b0      	blx	r6
c0de35ba:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de35be:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de35c2:	463a      	mov	r2, r7
c0de35c4:	1bc0      	subs	r0, r0, r7
c0de35c6:	4640      	mov	r0, r8
c0de35c8:	eb71 0008 	sbcs.w	r0, r1, r8
c0de35cc:	f04f 0000 	mov.w	r0, #0
c0de35d0:	bf38      	it	cc
c0de35d2:	2001      	movcc	r0, #1
c0de35d4:	e7de      	b.n	c0de3594 <gen_integer+0x14>
c0de35d6:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de35da:	4d0e      	ldr	r5, [pc, #56]	@ (c0de3614 <gen_integer+0x94>)
c0de35dc:	447d      	add	r5, pc
c0de35de:	47a8      	blx	r5
c0de35e0:	e9c4 0100 	strd	r0, r1, [r4]
c0de35e4:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de35e8:	47a8      	blx	r5
c0de35ea:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de35ee:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de35f2:	47a8      	blx	r5
c0de35f4:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de35f8:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de35fc:	47a8      	blx	r5
c0de35fe:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de3602:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3606:	bf00      	nop
c0de3608:	305a4b4e 	.word	0x305a4b4e
c0de360c:	4f582122 	.word	0x4f582122
c0de3610:	ffffff6f 	.word	0xffffff6f
c0de3614:	00000039 	.word	0x00000039

c0de3618 <rev64>:
c0de3618:	ba0a      	rev	r2, r1
c0de361a:	ba01      	rev	r1, r0
c0de361c:	4610      	mov	r0, r2
c0de361e:	4770      	bx	lr

c0de3620 <Poseidon_getNext_RC>:
c0de3620:	30c0      	adds	r0, #192	@ 0xc0
c0de3622:	f7ff bfad 	b.w	c0de3580 <gen_integer>
	...

c0de3628 <Poseidon_alloc_init>:
c0de3628:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de362c:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de3630:	4604      	mov	r4, r0
c0de3632:	30c0      	adds	r0, #192	@ 0xc0
c0de3634:	461e      	mov	r6, r3
c0de3636:	4617      	mov	r7, r2
c0de3638:	460d      	mov	r5, r1
c0de363a:	f7ff ff89 	bl	c0de3550 <init_generator>
c0de363e:	492c      	ldr	r1, [pc, #176]	@ (c0de36f0 <Poseidon_alloc_init+0xc8>)
c0de3640:	46e8      	mov	r8, sp
c0de3642:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de3646:	4640      	mov	r0, r8
c0de3648:	4479      	add	r1, pc
c0de364a:	f004 fc63 	bl	c0de7f14 <__aeabi_memcpy>
c0de364e:	2000      	movs	r0, #0
c0de3650:	7325      	strb	r5, [r4, #12]
c0de3652:	6166      	str	r6, [r4, #20]
c0de3654:	4621      	mov	r1, r4
c0de3656:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de365a:	1c78      	adds	r0, r7, #1
c0de365c:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de3660:	6830      	ldr	r0, [r6, #0]
c0de3662:	f004 f9c1 	bl	c0de79e8 <cx_bn_nbytes>
c0de3666:	b930      	cbnz	r0, c0de3676 <Poseidon_alloc_init+0x4e>
c0de3668:	4620      	mov	r0, r4
c0de366a:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de366e:	4631      	mov	r1, r6
c0de3670:	f004 f99a 	bl	c0de79a8 <cx_bn_alloc>
c0de3674:	b118      	cbz	r0, c0de367e <Poseidon_alloc_init+0x56>
c0de3676:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de367a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de367e:	68a0      	ldr	r0, [r4, #8]
c0de3680:	2500      	movs	r5, #0
c0de3682:	4285      	cmp	r5, r0
c0de3684:	d230      	bcs.n	c0de36e8 <Poseidon_alloc_init+0xc0>
c0de3686:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de368a:	4631      	mov	r1, r6
c0de368c:	f107 0018 	add.w	r0, r7, #24
c0de3690:	f004 f98a 	bl	c0de79a8 <cx_bn_alloc>
c0de3694:	2800      	cmp	r0, #0
c0de3696:	d1ee      	bne.n	c0de3676 <Poseidon_alloc_init+0x4e>
c0de3698:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de369c:	4631      	mov	r1, r6
c0de369e:	f004 f983 	bl	c0de79a8 <cx_bn_alloc>
c0de36a2:	2800      	cmp	r0, #0
c0de36a4:	d1e7      	bne.n	c0de3676 <Poseidon_alloc_init+0x4e>
c0de36a6:	2700      	movs	r7, #0
c0de36a8:	68a0      	ldr	r0, [r4, #8]
c0de36aa:	4287      	cmp	r7, r0
c0de36ac:	d21a      	bcs.n	c0de36e4 <Poseidon_alloc_init+0xbc>
c0de36ae:	fb05 7000 	mla	r0, r5, r0, r7
c0de36b2:	4631      	mov	r1, r6
c0de36b4:	4633      	mov	r3, r6
c0de36b6:	fb00 8206 	mla	r2, r0, r6, r8
c0de36ba:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de36be:	3030      	adds	r0, #48	@ 0x30
c0de36c0:	f004 f97c 	bl	c0de79bc <cx_bn_alloc_init>
c0de36c4:	2800      	cmp	r0, #0
c0de36c6:	d1d6      	bne.n	c0de3676 <Poseidon_alloc_init+0x4e>
c0de36c8:	68a0      	ldr	r0, [r4, #8]
c0de36ca:	6962      	ldr	r2, [r4, #20]
c0de36cc:	fb05 7000 	mla	r0, r5, r0, r7
c0de36d0:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de36d4:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de36d6:	4601      	mov	r1, r0
c0de36d8:	f004 fa3a 	bl	c0de7b50 <cx_mont_to_montgomery>
c0de36dc:	3701      	adds	r7, #1
c0de36de:	2800      	cmp	r0, #0
c0de36e0:	d0e2      	beq.n	c0de36a8 <Poseidon_alloc_init+0x80>
c0de36e2:	e7c8      	b.n	c0de3676 <Poseidon_alloc_init+0x4e>
c0de36e4:	3501      	adds	r5, #1
c0de36e6:	e7cc      	b.n	c0de3682 <Poseidon_alloc_init+0x5a>
c0de36e8:	2001      	movs	r0, #1
c0de36ea:	6120      	str	r0, [r4, #16]
c0de36ec:	2000      	movs	r0, #0
c0de36ee:	e7c2      	b.n	c0de3676 <Poseidon_alloc_init+0x4e>
c0de36f0:	000059a8 	.word	0x000059a8

c0de36f4 <Poseidon>:
c0de36f4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de36f8:	b08c      	sub	sp, #48	@ 0x30
c0de36fa:	4606      	mov	r6, r0
c0de36fc:	6900      	ldr	r0, [r0, #16]
c0de36fe:	2801      	cmp	r0, #1
c0de3700:	f040 80b4 	bne.w	c0de386c <Poseidon+0x178>
c0de3704:	69b0      	ldr	r0, [r6, #24]
c0de3706:	461f      	mov	r7, r3
c0de3708:	4692      	mov	sl, r2
c0de370a:	f004 f98d 	bl	c0de7a28 <cx_bn_set_u32>
c0de370e:	2800      	cmp	r0, #0
c0de3710:	f040 80ad 	bne.w	c0de386e <Poseidon+0x17a>
c0de3714:	f106 000c 	add.w	r0, r6, #12
c0de3718:	f106 0818 	add.w	r8, r6, #24
c0de371c:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de3720:	9001      	str	r0, [sp, #4]
c0de3722:	2000      	movs	r0, #0
c0de3724:	2844      	cmp	r0, #68	@ 0x44
c0de3726:	f000 80ae 	beq.w	c0de3886 <Poseidon+0x192>
c0de372a:	6834      	ldr	r4, [r6, #0]
c0de372c:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de3730:	f04f 0a00 	mov.w	sl, #0
c0de3734:	68b0      	ldr	r0, [r6, #8]
c0de3736:	4582      	cmp	sl, r0
c0de3738:	d224      	bcs.n	c0de3784 <Poseidon+0x90>
c0de373a:	ad04      	add	r5, sp, #16
c0de373c:	4658      	mov	r0, fp
c0de373e:	4629      	mov	r1, r5
c0de3740:	f7ff ff1e 	bl	c0de3580 <gen_integer>
c0de3744:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3748:	4629      	mov	r1, r5
c0de374a:	4622      	mov	r2, r4
c0de374c:	f004 f956 	bl	c0de79fc <cx_bn_init>
c0de3750:	2800      	cmp	r0, #0
c0de3752:	f040 808c 	bne.w	c0de386e <Poseidon+0x17a>
c0de3756:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de375a:	6972      	ldr	r2, [r6, #20]
c0de375c:	4601      	mov	r1, r0
c0de375e:	f004 f9f7 	bl	c0de7b50 <cx_mont_to_montgomery>
c0de3762:	2800      	cmp	r0, #0
c0de3764:	f040 8083 	bne.w	c0de386e <Poseidon+0x17a>
c0de3768:	6972      	ldr	r2, [r6, #20]
c0de376a:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de376e:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de3772:	6813      	ldr	r3, [r2, #0]
c0de3774:	4602      	mov	r2, r0
c0de3776:	f004 f991 	bl	c0de7a9c <cx_bn_mod_add>
c0de377a:	f10a 0a01 	add.w	sl, sl, #1
c0de377e:	2800      	cmp	r0, #0
c0de3780:	d0d8      	beq.n	c0de3734 <Poseidon+0x40>
c0de3782:	e074      	b.n	c0de386e <Poseidon+0x17a>
c0de3784:	9902      	ldr	r1, [sp, #8]
c0de3786:	2904      	cmp	r1, #4
c0de3788:	d301      	bcc.n	c0de378e <Poseidon+0x9a>
c0de378a:	2940      	cmp	r1, #64	@ 0x40
c0de378c:	d323      	bcc.n	c0de37d6 <Poseidon+0xe2>
c0de378e:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3792:	2400      	movs	r4, #0
c0de3794:	4284      	cmp	r4, r0
c0de3796:	d22b      	bcs.n	c0de37f0 <Poseidon+0xfc>
c0de3798:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de379c:	6973      	ldr	r3, [r6, #20]
c0de379e:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de37a2:	460a      	mov	r2, r1
c0de37a4:	f004 f9ec 	bl	c0de7b80 <cx_mont_mul>
c0de37a8:	2800      	cmp	r0, #0
c0de37aa:	d160      	bne.n	c0de386e <Poseidon+0x17a>
c0de37ac:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de37b0:	6973      	ldr	r3, [r6, #20]
c0de37b2:	460a      	mov	r2, r1
c0de37b4:	f004 f9e4 	bl	c0de7b80 <cx_mont_mul>
c0de37b8:	2800      	cmp	r0, #0
c0de37ba:	d158      	bne.n	c0de386e <Poseidon+0x17a>
c0de37bc:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de37c0:	6973      	ldr	r3, [r6, #20]
c0de37c2:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de37c6:	4601      	mov	r1, r0
c0de37c8:	f004 f9da 	bl	c0de7b80 <cx_mont_mul>
c0de37cc:	2800      	cmp	r0, #0
c0de37ce:	d14e      	bne.n	c0de386e <Poseidon+0x17a>
c0de37d0:	68b0      	ldr	r0, [r6, #8]
c0de37d2:	3401      	adds	r4, #1
c0de37d4:	e7de      	b.n	c0de3794 <Poseidon+0xa0>
c0de37d6:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de37da:	9a01      	ldr	r2, [sp, #4]
c0de37dc:	2301      	movs	r3, #1
c0de37de:	9100      	str	r1, [sp, #0]
c0de37e0:	4601      	mov	r1, r0
c0de37e2:	f004 f9d9 	bl	c0de7b98 <cx_mont_pow>
c0de37e6:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de37ea:	2800      	cmp	r0, #0
c0de37ec:	d13f      	bne.n	c0de386e <Poseidon+0x17a>
c0de37ee:	68b0      	ldr	r0, [r6, #8]
c0de37f0:	2500      	movs	r5, #0
c0de37f2:	4285      	cmp	r5, r0
c0de37f4:	d229      	bcs.n	c0de384a <Poseidon+0x156>
c0de37f6:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de37fa:	2100      	movs	r1, #0
c0de37fc:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de3800:	f004 f912 	bl	c0de7a28 <cx_bn_set_u32>
c0de3804:	bb98      	cbnz	r0, c0de386e <Poseidon+0x17a>
c0de3806:	9503      	str	r5, [sp, #12]
c0de3808:	2500      	movs	r5, #0
c0de380a:	68b0      	ldr	r0, [r6, #8]
c0de380c:	4285      	cmp	r5, r0
c0de380e:	d219      	bcs.n	c0de3844 <Poseidon+0x150>
c0de3810:	9903      	ldr	r1, [sp, #12]
c0de3812:	6973      	ldr	r3, [r6, #20]
c0de3814:	fb01 5000 	mla	r0, r1, r0, r5
c0de3818:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de381c:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de3820:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de3822:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de3826:	f004 f9ab 	bl	c0de7b80 <cx_mont_mul>
c0de382a:	bb00      	cbnz	r0, c0de386e <Poseidon+0x17a>
c0de382c:	6971      	ldr	r1, [r6, #20]
c0de382e:	6820      	ldr	r0, [r4, #0]
c0de3830:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de3834:	680b      	ldr	r3, [r1, #0]
c0de3836:	4601      	mov	r1, r0
c0de3838:	f004 f930 	bl	c0de7a9c <cx_bn_mod_add>
c0de383c:	3501      	adds	r5, #1
c0de383e:	2800      	cmp	r0, #0
c0de3840:	d0e3      	beq.n	c0de380a <Poseidon+0x116>
c0de3842:	e014      	b.n	c0de386e <Poseidon+0x17a>
c0de3844:	9d03      	ldr	r5, [sp, #12]
c0de3846:	3501      	adds	r5, #1
c0de3848:	e7d3      	b.n	c0de37f2 <Poseidon+0xfe>
c0de384a:	2400      	movs	r4, #0
c0de384c:	4284      	cmp	r4, r0
c0de384e:	d20a      	bcs.n	c0de3866 <Poseidon+0x172>
c0de3850:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de3854:	6988      	ldr	r0, [r1, #24]
c0de3856:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de385a:	f004 f8db 	bl	c0de7a14 <cx_bn_copy>
c0de385e:	b930      	cbnz	r0, c0de386e <Poseidon+0x17a>
c0de3860:	68b0      	ldr	r0, [r6, #8]
c0de3862:	3401      	adds	r4, #1
c0de3864:	e7f2      	b.n	c0de384c <Poseidon+0x158>
c0de3866:	9802      	ldr	r0, [sp, #8]
c0de3868:	3001      	adds	r0, #1
c0de386a:	e75b      	b.n	c0de3724 <Poseidon+0x30>
c0de386c:	4808      	ldr	r0, [pc, #32]	@ (c0de3890 <Poseidon+0x19c>)
c0de386e:	b00c      	add	sp, #48	@ 0x30
c0de3870:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3874:	f858 1b04 	ldr.w	r1, [r8], #4
c0de3878:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de387c:	f004 f8ca 	bl	c0de7a14 <cx_bn_copy>
c0de3880:	3f01      	subs	r7, #1
c0de3882:	2800      	cmp	r0, #0
c0de3884:	d1f3      	bne.n	c0de386e <Poseidon+0x17a>
c0de3886:	2f00      	cmp	r7, #0
c0de3888:	d1f4      	bne.n	c0de3874 <Poseidon+0x180>
c0de388a:	2000      	movs	r0, #0
c0de388c:	e7ef      	b.n	c0de386e <Poseidon+0x17a>
c0de388e:	bf00      	nop
c0de3890:	5a4b4e02 	.word	0x5a4b4e02

c0de3894 <RFC9591_taggedHash>:
c0de3894:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3896:	b0d9      	sub	sp, #356	@ 0x164
c0de3898:	460e      	mov	r6, r1
c0de389a:	4607      	mov	r7, r0
c0de389c:	a858      	add	r0, sp, #352	@ 0x160
c0de389e:	2140      	movs	r1, #64	@ 0x40
c0de38a0:	461c      	mov	r4, r3
c0de38a2:	4615      	mov	r5, r2
c0de38a4:	f004 f880 	bl	c0de79a8 <cx_bn_alloc>
c0de38a8:	bbd8      	cbnz	r0, c0de3922 <RFC9591_taggedHash+0x8e>
c0de38aa:	491f      	ldr	r1, [pc, #124]	@ (c0de3928 <RFC9591_taggedHash+0x94>)
c0de38ac:	4668      	mov	r0, sp
c0de38ae:	221d      	movs	r2, #29
c0de38b0:	4479      	add	r1, pc
c0de38b2:	f004 fb2f 	bl	c0de7f14 <__aeabi_memcpy>
c0de38b6:	a808      	add	r0, sp, #32
c0de38b8:	2109      	movs	r1, #9
c0de38ba:	2240      	movs	r2, #64	@ 0x40
c0de38bc:	f003 fdfe 	bl	c0de74bc <cx_hash_init_ex>
c0de38c0:	bb78      	cbnz	r0, c0de3922 <RFC9591_taggedHash+0x8e>
c0de38c2:	a808      	add	r0, sp, #32
c0de38c4:	4669      	mov	r1, sp
c0de38c6:	221d      	movs	r2, #29
c0de38c8:	f003 fdfd 	bl	c0de74c6 <cx_hash_update>
c0de38cc:	bb48      	cbnz	r0, c0de3922 <RFC9591_taggedHash+0x8e>
c0de38ce:	a808      	add	r0, sp, #32
c0de38d0:	4639      	mov	r1, r7
c0de38d2:	4632      	mov	r2, r6
c0de38d4:	f003 fdf7 	bl	c0de74c6 <cx_hash_update>
c0de38d8:	bb18      	cbnz	r0, c0de3922 <RFC9591_taggedHash+0x8e>
c0de38da:	a808      	add	r0, sp, #32
c0de38dc:	4629      	mov	r1, r5
c0de38de:	4622      	mov	r2, r4
c0de38e0:	f003 fdf1 	bl	c0de74c6 <cx_hash_update>
c0de38e4:	b9e8      	cbnz	r0, c0de3922 <RFC9591_taggedHash+0x8e>
c0de38e6:	a808      	add	r0, sp, #32
c0de38e8:	ae48      	add	r6, sp, #288	@ 0x120
c0de38ea:	4631      	mov	r1, r6
c0de38ec:	f003 fde1 	bl	c0de74b2 <cx_hash_final>
c0de38f0:	b9b8      	cbnz	r0, c0de3922 <RFC9591_taggedHash+0x8e>
c0de38f2:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de38f6:	2000      	movs	r0, #0
c0de38f8:	213f      	movs	r1, #63	@ 0x3f
c0de38fa:	2820      	cmp	r0, #32
c0de38fc:	d002      	beq.n	c0de3904 <RFC9591_taggedHash+0x70>
c0de38fe:	f000 f8dd 	bl	c0de3abc <OUTLINED_FUNCTION_3>
c0de3902:	e7fa      	b.n	c0de38fa <RFC9591_taggedHash+0x66>
c0de3904:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de3906:	a948      	add	r1, sp, #288	@ 0x120
c0de3908:	2240      	movs	r2, #64	@ 0x40
c0de390a:	f004 f877 	bl	c0de79fc <cx_bn_init>
c0de390e:	b940      	cbnz	r0, c0de3922 <RFC9591_taggedHash+0x8e>
c0de3910:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de3912:	4628      	mov	r0, r5
c0de3914:	4622      	mov	r2, r4
c0de3916:	f004 f8e5 	bl	c0de7ae4 <cx_bn_reduce>
c0de391a:	b910      	cbnz	r0, c0de3922 <RFC9591_taggedHash+0x8e>
c0de391c:	a858      	add	r0, sp, #352	@ 0x160
c0de391e:	f004 f859 	bl	c0de79d4 <cx_bn_destroy>
c0de3922:	b059      	add	sp, #356	@ 0x164
c0de3924:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3926:	bf00      	nop
c0de3928:	00005bc0 	.word	0x00005bc0

c0de392c <Babyfrost_H1>:
c0de392c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de392e:	4605      	mov	r5, r0
c0de3930:	206f      	movs	r0, #111	@ 0x6f
c0de3932:	f000 f8b7 	bl	c0de3aa4 <OUTLINED_FUNCTION_1>
c0de3936:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de393a:	f000 f8ba 	bl	c0de3ab2 <OUTLINED_FUNCTION_2>
c0de393e:	a803      	add	r0, sp, #12
c0de3940:	f7ff ffa8 	bl	c0de3894 <RFC9591_taggedHash>
c0de3944:	b004      	add	sp, #16
c0de3946:	bdb0      	pop	{r4, r5, r7, pc}

c0de3948 <Babyfrost_H3>:
c0de3948:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de394a:	4605      	mov	r5, r0
c0de394c:	2065      	movs	r0, #101	@ 0x65
c0de394e:	460c      	mov	r4, r1
c0de3950:	e9cd 2300 	strd	r2, r3, [sp]
c0de3954:	2105      	movs	r1, #5
c0de3956:	f88d 000c 	strb.w	r0, [sp, #12]
c0de395a:	4804      	ldr	r0, [pc, #16]	@ (c0de396c <Babyfrost_H3+0x24>)
c0de395c:	462a      	mov	r2, r5
c0de395e:	4623      	mov	r3, r4
c0de3960:	9002      	str	r0, [sp, #8]
c0de3962:	a802      	add	r0, sp, #8
c0de3964:	f7ff ff96 	bl	c0de3894 <RFC9591_taggedHash>
c0de3968:	b004      	add	sp, #16
c0de396a:	bdb0      	pop	{r4, r5, r7, pc}
c0de396c:	636e6f6e 	.word	0x636e6f6e

c0de3970 <Babyfrost_H4>:
c0de3970:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3972:	4605      	mov	r5, r0
c0de3974:	2067      	movs	r0, #103	@ 0x67
c0de3976:	f000 f895 	bl	c0de3aa4 <OUTLINED_FUNCTION_1>
c0de397a:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de397e:	f000 f898 	bl	c0de3ab2 <OUTLINED_FUNCTION_2>
c0de3982:	a803      	add	r0, sp, #12
c0de3984:	f7ff ff86 	bl	c0de3894 <RFC9591_taggedHash>
c0de3988:	b004      	add	sp, #16
c0de398a:	bdb0      	pop	{r4, r5, r7, pc}

c0de398c <Babyfrost_H5>:
c0de398c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de398e:	4605      	mov	r5, r0
c0de3990:	206d      	movs	r0, #109	@ 0x6d
c0de3992:	f000 f887 	bl	c0de3aa4 <OUTLINED_FUNCTION_1>
c0de3996:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de399a:	f000 f88a 	bl	c0de3ab2 <OUTLINED_FUNCTION_2>
c0de399e:	a803      	add	r0, sp, #12
c0de39a0:	f7ff ff78 	bl	c0de3894 <RFC9591_taggedHash>
c0de39a4:	b004      	add	sp, #16
c0de39a6:	bdb0      	pop	{r4, r5, r7, pc}

c0de39a8 <zkn_frost_hash_init>:
c0de39a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de39aa:	461d      	mov	r5, r3
c0de39ac:	4604      	mov	r4, r0
c0de39ae:	f003 fd85 	bl	c0de74bc <cx_hash_init_ex>
c0de39b2:	b938      	cbnz	r0, c0de39c4 <zkn_frost_hash_init+0x1c>
c0de39b4:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de39b8:	9e08      	ldr	r6, [sp, #32]
c0de39ba:	4620      	mov	r0, r4
c0de39bc:	4629      	mov	r1, r5
c0de39be:	f003 fd82 	bl	c0de74c6 <cx_hash_update>
c0de39c2:	b100      	cbz	r0, c0de39c6 <zkn_frost_hash_init+0x1e>
c0de39c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de39c6:	4620      	mov	r0, r4
c0de39c8:	4639      	mov	r1, r7
c0de39ca:	4632      	mov	r2, r6
c0de39cc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de39d0:	f003 bd79 	b.w	c0de74c6 <cx_hash_update>

c0de39d4 <zkn_frost_H1_init>:
c0de39d4:	b570      	push	{r4, r5, r6, lr}
c0de39d6:	b08c      	sub	sp, #48	@ 0x30
c0de39d8:	4604      	mov	r4, r0
c0de39da:	206f      	movs	r0, #111	@ 0x6f
c0de39dc:	221d      	movs	r2, #29
c0de39de:	261d      	movs	r6, #29
c0de39e0:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de39e4:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de39e8:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de39ec:	ad03      	add	r5, sp, #12
c0de39ee:	4905      	ldr	r1, [pc, #20]	@ (c0de3a04 <zkn_frost_H1_init+0x30>)
c0de39f0:	4628      	mov	r0, r5
c0de39f2:	4479      	add	r1, pc
c0de39f4:	f004 fa8e 	bl	c0de7f14 <__aeabi_memcpy>
c0de39f8:	a90b      	add	r1, sp, #44	@ 0x2c
c0de39fa:	f000 f849 	bl	c0de3a90 <OUTLINED_FUNCTION_0>
c0de39fe:	b00c      	add	sp, #48	@ 0x30
c0de3a00:	bd70      	pop	{r4, r5, r6, pc}
c0de3a02:	bf00      	nop
c0de3a04:	00005a7e 	.word	0x00005a7e

c0de3a08 <zkn_frost_H5_init>:
c0de3a08:	b570      	push	{r4, r5, r6, lr}
c0de3a0a:	b08c      	sub	sp, #48	@ 0x30
c0de3a0c:	4604      	mov	r4, r0
c0de3a0e:	206d      	movs	r0, #109	@ 0x6d
c0de3a10:	221d      	movs	r2, #29
c0de3a12:	261d      	movs	r6, #29
c0de3a14:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3a18:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3a1c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3a20:	ad03      	add	r5, sp, #12
c0de3a22:	4905      	ldr	r1, [pc, #20]	@ (c0de3a38 <zkn_frost_H5_init+0x30>)
c0de3a24:	4628      	mov	r0, r5
c0de3a26:	4479      	add	r1, pc
c0de3a28:	f004 fa74 	bl	c0de7f14 <__aeabi_memcpy>
c0de3a2c:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3a2e:	f000 f82f 	bl	c0de3a90 <OUTLINED_FUNCTION_0>
c0de3a32:	b00c      	add	sp, #48	@ 0x30
c0de3a34:	bd70      	pop	{r4, r5, r6, pc}
c0de3a36:	bf00      	nop
c0de3a38:	00005a4a 	.word	0x00005a4a

c0de3a3c <zkn_frost_hash_update>:
c0de3a3c:	f003 bd43 	b.w	c0de74c6 <cx_hash_update>

c0de3a40 <zkn_frost_hash_final>:
c0de3a40:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3a42:	b091      	sub	sp, #68	@ 0x44
c0de3a44:	460c      	mov	r4, r1
c0de3a46:	4607      	mov	r7, r0
c0de3a48:	a810      	add	r0, sp, #64	@ 0x40
c0de3a4a:	2140      	movs	r1, #64	@ 0x40
c0de3a4c:	4615      	mov	r5, r2
c0de3a4e:	f003 ffab 	bl	c0de79a8 <cx_bn_alloc>
c0de3a52:	b9d8      	cbnz	r0, c0de3a8c <zkn_frost_hash_final+0x4c>
c0de3a54:	466e      	mov	r6, sp
c0de3a56:	4638      	mov	r0, r7
c0de3a58:	4631      	mov	r1, r6
c0de3a5a:	f003 fd2a 	bl	c0de74b2 <cx_hash_final>
c0de3a5e:	b9a8      	cbnz	r0, c0de3a8c <zkn_frost_hash_final+0x4c>
c0de3a60:	2000      	movs	r0, #0
c0de3a62:	213f      	movs	r1, #63	@ 0x3f
c0de3a64:	2820      	cmp	r0, #32
c0de3a66:	d002      	beq.n	c0de3a6e <zkn_frost_hash_final+0x2e>
c0de3a68:	f000 f828 	bl	c0de3abc <OUTLINED_FUNCTION_3>
c0de3a6c:	e7fa      	b.n	c0de3a64 <zkn_frost_hash_final+0x24>
c0de3a6e:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de3a70:	4669      	mov	r1, sp
c0de3a72:	2240      	movs	r2, #64	@ 0x40
c0de3a74:	f003 ffc2 	bl	c0de79fc <cx_bn_init>
c0de3a78:	b940      	cbnz	r0, c0de3a8c <zkn_frost_hash_final+0x4c>
c0de3a7a:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3a7c:	4628      	mov	r0, r5
c0de3a7e:	4622      	mov	r2, r4
c0de3a80:	f004 f830 	bl	c0de7ae4 <cx_bn_reduce>
c0de3a84:	b910      	cbnz	r0, c0de3a8c <zkn_frost_hash_final+0x4c>
c0de3a86:	a810      	add	r0, sp, #64	@ 0x40
c0de3a88:	f003 ffa4 	bl	c0de79d4 <cx_bn_destroy>
c0de3a8c:	b011      	add	sp, #68	@ 0x44
c0de3a8e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3a90 <OUTLINED_FUNCTION_0>:
c0de3a90:	2003      	movs	r0, #3
c0de3a92:	2240      	movs	r2, #64	@ 0x40
c0de3a94:	462b      	mov	r3, r5
c0de3a96:	e9cd 6100 	strd	r6, r1, [sp]
c0de3a9a:	9002      	str	r0, [sp, #8]
c0de3a9c:	4620      	mov	r0, r4
c0de3a9e:	2109      	movs	r1, #9
c0de3aa0:	f7ff bf82 	b.w	c0de39a8 <zkn_frost_hash_init>

c0de3aa4 <OUTLINED_FUNCTION_1>:
c0de3aa4:	460c      	mov	r4, r1
c0de3aa6:	e9cd 2300 	strd	r2, r3, [sp]
c0de3aaa:	2103      	movs	r1, #3
c0de3aac:	f88d 000e 	strb.w	r0, [sp, #14]
c0de3ab0:	4770      	bx	lr

c0de3ab2 <OUTLINED_FUNCTION_2>:
c0de3ab2:	462a      	mov	r2, r5
c0de3ab4:	4623      	mov	r3, r4
c0de3ab6:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de3aba:	4770      	bx	lr

c0de3abc <OUTLINED_FUNCTION_3>:
c0de3abc:	5c32      	ldrb	r2, [r6, r0]
c0de3abe:	5c73      	ldrb	r3, [r6, r1]
c0de3ac0:	5433      	strb	r3, [r6, r0]
c0de3ac2:	5472      	strb	r2, [r6, r1]
c0de3ac4:	3901      	subs	r1, #1
c0de3ac6:	3001      	adds	r0, #1
c0de3ac8:	4770      	bx	lr

c0de3aca <os_io_handle_default_apdu>:
c0de3aca:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3acc:	b09d      	sub	sp, #116	@ 0x74
c0de3ace:	4615      	mov	r5, r2
c0de3ad0:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de3ad2:	b3c8      	cbz	r0, c0de3b48 <os_io_handle_default_apdu+0x7e>
c0de3ad4:	b3c1      	cbz	r1, c0de3b48 <os_io_handle_default_apdu+0x7e>
c0de3ad6:	b3bd      	cbz	r5, c0de3b48 <os_io_handle_default_apdu+0x7e>
c0de3ad8:	461c      	mov	r4, r3
c0de3ada:	b3ab      	cbz	r3, c0de3b48 <os_io_handle_default_apdu+0x7e>
c0de3adc:	b10a      	cbz	r2, c0de3ae2 <os_io_handle_default_apdu+0x18>
c0de3ade:	2100      	movs	r1, #0
c0de3ae0:	7011      	strb	r1, [r2, #0]
c0de3ae2:	7801      	ldrb	r1, [r0, #0]
c0de3ae4:	29b0      	cmp	r1, #176	@ 0xb0
c0de3ae6:	d131      	bne.n	c0de3b4c <os_io_handle_default_apdu+0x82>
c0de3ae8:	7841      	ldrb	r1, [r0, #1]
c0de3aea:	29a7      	cmp	r1, #167	@ 0xa7
c0de3aec:	d031      	beq.n	c0de3b52 <os_io_handle_default_apdu+0x88>
c0de3aee:	2906      	cmp	r1, #6
c0de3af0:	d036      	beq.n	c0de3b60 <os_io_handle_default_apdu+0x96>
c0de3af2:	2901      	cmp	r1, #1
c0de3af4:	d131      	bne.n	c0de3b5a <os_io_handle_default_apdu+0x90>
c0de3af6:	7881      	ldrb	r1, [r0, #2]
c0de3af8:	bb79      	cbnz	r1, c0de3b5a <os_io_handle_default_apdu+0x90>
c0de3afa:	78c0      	ldrb	r0, [r0, #3]
c0de3afc:	bb68      	cbnz	r0, c0de3b5a <os_io_handle_default_apdu+0x90>
c0de3afe:	6820      	ldr	r0, [r4, #0]
c0de3b00:	2100      	movs	r1, #0
c0de3b02:	6021      	str	r1, [r4, #0]
c0de3b04:	2803      	cmp	r0, #3
c0de3b06:	d321      	bcc.n	c0de3b4c <os_io_handle_default_apdu+0x82>
c0de3b08:	2601      	movs	r6, #1
c0de3b0a:	1ec7      	subs	r7, r0, #3
c0de3b0c:	6026      	str	r6, [r4, #0]
c0de3b0e:	702e      	strb	r6, [r5, #0]
c0de3b10:	6820      	ldr	r0, [r4, #0]
c0de3b12:	1a3a      	subs	r2, r7, r0
c0de3b14:	4428      	add	r0, r5
c0de3b16:	1c41      	adds	r1, r0, #1
c0de3b18:	2001      	movs	r0, #1
c0de3b1a:	f004 f8b3 	bl	c0de7c84 <os_registry_get_current_app_tag>
c0de3b1e:	f000 f83f 	bl	c0de3ba0 <OUTLINED_FUNCTION_0>
c0de3b22:	6020      	str	r0, [r4, #0]
c0de3b24:	1a3a      	subs	r2, r7, r0
c0de3b26:	4428      	add	r0, r5
c0de3b28:	1c41      	adds	r1, r0, #1
c0de3b2a:	2002      	movs	r0, #2
c0de3b2c:	f004 f8aa 	bl	c0de7c84 <os_registry_get_current_app_tag>
c0de3b30:	f000 f836 	bl	c0de3ba0 <OUTLINED_FUNCTION_0>
c0de3b34:	1c41      	adds	r1, r0, #1
c0de3b36:	6021      	str	r1, [r4, #0]
c0de3b38:	542e      	strb	r6, [r5, r0]
c0de3b3a:	f004 f89b 	bl	c0de7c74 <os_flags>
c0de3b3e:	6821      	ldr	r1, [r4, #0]
c0de3b40:	1c4a      	adds	r2, r1, #1
c0de3b42:	6022      	str	r2, [r4, #0]
c0de3b44:	5468      	strb	r0, [r5, r1]
c0de3b46:	e028      	b.n	c0de3b9a <os_io_handle_default_apdu+0xd0>
c0de3b48:	7814      	ldrb	r4, [r2, #0]
c0de3b4a:	e01e      	b.n	c0de3b8a <os_io_handle_default_apdu+0xc0>
c0de3b4c:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de3b50:	e01b      	b.n	c0de3b8a <os_io_handle_default_apdu+0xc0>
c0de3b52:	7881      	ldrb	r1, [r0, #2]
c0de3b54:	b909      	cbnz	r1, c0de3b5a <os_io_handle_default_apdu+0x90>
c0de3b56:	78c0      	ldrb	r0, [r0, #3]
c0de3b58:	b1d0      	cbz	r0, c0de3b90 <os_io_handle_default_apdu+0xc6>
c0de3b5a:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de3b5e:	e014      	b.n	c0de3b8a <os_io_handle_default_apdu+0xc0>
c0de3b60:	2100      	movs	r1, #0
c0de3b62:	6021      	str	r1, [r4, #0]
c0de3b64:	7883      	ldrb	r3, [r0, #2]
c0de3b66:	7902      	ldrb	r2, [r0, #4]
c0de3b68:	ad02      	add	r5, sp, #8
c0de3b6a:	e9cd 1500 	strd	r1, r5, [sp]
c0de3b6e:	1d41      	adds	r1, r0, #5
c0de3b70:	4618      	mov	r0, r3
c0de3b72:	2300      	movs	r3, #0
c0de3b74:	f004 f84a 	bl	c0de7c0c <os_pki_load_certificate>
c0de3b78:	4604      	mov	r4, r0
c0de3b7a:	4628      	mov	r0, r5
c0de3b7c:	216c      	movs	r1, #108	@ 0x6c
c0de3b7e:	f004 f9e1 	bl	c0de7f44 <explicit_bzero>
c0de3b82:	2c00      	cmp	r4, #0
c0de3b84:	bf08      	it	eq
c0de3b86:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de3b8a:	4620      	mov	r0, r4
c0de3b8c:	b01d      	add	sp, #116	@ 0x74
c0de3b8e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3b90:	2000      	movs	r0, #0
c0de3b92:	6020      	str	r0, [r4, #0]
c0de3b94:	b10a      	cbz	r2, c0de3b9a <os_io_handle_default_apdu+0xd0>
c0de3b96:	2001      	movs	r0, #1
c0de3b98:	7010      	strb	r0, [r2, #0]
c0de3b9a:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de3b9e:	e7f4      	b.n	c0de3b8a <os_io_handle_default_apdu+0xc0>

c0de3ba0 <OUTLINED_FUNCTION_0>:
c0de3ba0:	6821      	ldr	r1, [r4, #0]
c0de3ba2:	1c4a      	adds	r2, r1, #1
c0de3ba4:	6022      	str	r2, [r4, #0]
c0de3ba6:	5468      	strb	r0, [r5, r1]
c0de3ba8:	6821      	ldr	r1, [r4, #0]
c0de3baa:	4408      	add	r0, r1
c0de3bac:	4770      	bx	lr

c0de3bae <io_process_itc_ux_event>:
c0de3bae:	b580      	push	{r7, lr}
c0de3bb0:	78c0      	ldrb	r0, [r0, #3]
c0de3bb2:	2820      	cmp	r0, #32
c0de3bb4:	d107      	bne.n	c0de3bc6 <io_process_itc_ux_event+0x18>
c0de3bb6:	2001      	movs	r0, #1
c0de3bb8:	f003 fca5 	bl	c0de7506 <nbgl_objAllowDrawing>
c0de3bbc:	f003 fcb2 	bl	c0de7524 <nbgl_screenRedraw>
c0de3bc0:	f003 fc97 	bl	c0de74f2 <nbgl_refresh>
c0de3bc4:	2100      	movs	r1, #0
c0de3bc6:	4608      	mov	r0, r1
c0de3bc8:	bd80      	pop	{r7, pc}
	...

c0de3bcc <io_legacy_apdu_tx>:
c0de3bcc:	b5b0      	push	{r4, r5, r7, lr}
c0de3bce:	460a      	mov	r2, r1
c0de3bd0:	4601      	mov	r1, r0
c0de3bd2:	4806      	ldr	r0, [pc, #24]	@ (c0de3bec <io_legacy_apdu_tx+0x20>)
c0de3bd4:	2300      	movs	r3, #0
c0de3bd6:	2500      	movs	r5, #0
c0de3bd8:	eb09 0400 	add.w	r4, r9, r0
c0de3bdc:	7860      	ldrb	r0, [r4, #1]
c0de3bde:	f004 f87b 	bl	c0de7cd8 <os_io_tx_cmd>
c0de3be2:	4903      	ldr	r1, [pc, #12]	@ (c0de3bf0 <io_legacy_apdu_tx+0x24>)
c0de3be4:	7065      	strb	r5, [r4, #1]
c0de3be6:	4449      	add	r1, r9
c0de3be8:	718d      	strb	r5, [r1, #6]
c0de3bea:	bdb0      	pop	{r4, r5, r7, pc}
c0de3bec:	000008be 	.word	0x000008be
c0de3bf0:	000008b6 	.word	0x000008b6

c0de3bf4 <io_legacy_apdu_rx>:
c0de3bf4:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3bf6:	4e66      	ldr	r6, [pc, #408]	@ (c0de3d90 <io_legacy_apdu_rx+0x19c>)
c0de3bf8:	2100      	movs	r1, #0
c0de3bfa:	4605      	mov	r5, r0
c0de3bfc:	2200      	movs	r2, #0
c0de3bfe:	2301      	movs	r3, #1
c0de3c00:	f88d 100b 	strb.w	r1, [sp, #11]
c0de3c04:	f240 1111 	movw	r1, #273	@ 0x111
c0de3c08:	eb09 0006 	add.w	r0, r9, r6
c0de3c0c:	f004 f870 	bl	c0de7cf0 <os_io_rx_evt>
c0de3c10:	4604      	mov	r4, r0
c0de3c12:	2801      	cmp	r0, #1
c0de3c14:	f2c0 80ab 	blt.w	c0de3d6e <io_legacy_apdu_rx+0x17a>
c0de3c18:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3c1c:	f1a0 0110 	sub.w	r1, r0, #16
c0de3c20:	2916      	cmp	r1, #22
c0de3c22:	d805      	bhi.n	c0de3c30 <io_legacy_apdu_rx+0x3c>
c0de3c24:	2201      	movs	r2, #1
c0de3c26:	fa02 f101 	lsl.w	r1, r2, r1
c0de3c2a:	4a5a      	ldr	r2, [pc, #360]	@ (c0de3d94 <io_legacy_apdu_rx+0x1a0>)
c0de3c2c:	4211      	tst	r1, r2
c0de3c2e:	d106      	bne.n	c0de3c3e <io_legacy_apdu_rx+0x4a>
c0de3c30:	1e41      	subs	r1, r0, #1
c0de3c32:	2902      	cmp	r1, #2
c0de3c34:	d367      	bcc.n	c0de3d06 <io_legacy_apdu_rx+0x112>
c0de3c36:	2830      	cmp	r0, #48	@ 0x30
c0de3c38:	bf18      	it	ne
c0de3c3a:	2840      	cmpne	r0, #64	@ 0x40
c0de3c3c:	d177      	bne.n	c0de3d2e <io_legacy_apdu_rx+0x13a>
c0de3c3e:	4f56      	ldr	r7, [pc, #344]	@ (c0de3d98 <io_legacy_apdu_rx+0x1a4>)
c0de3c40:	eb09 0107 	add.w	r1, r9, r7
c0de3c44:	7048      	strb	r0, [r1, #1]
c0de3c46:	f003 fff1 	bl	c0de7c2c <os_perso_is_pin_set>
c0de3c4a:	28aa      	cmp	r0, #170	@ 0xaa
c0de3c4c:	d103      	bne.n	c0de3c56 <io_legacy_apdu_rx+0x62>
c0de3c4e:	f003 fff6 	bl	c0de7c3e <os_global_pin_is_validated>
c0de3c52:	28aa      	cmp	r0, #170	@ 0xaa
c0de3c54:	d145      	bne.n	c0de3ce2 <io_legacy_apdu_rx+0xee>
c0de3c56:	eb09 0006 	add.w	r0, r9, r6
c0de3c5a:	7840      	ldrb	r0, [r0, #1]
c0de3c5c:	28b0      	cmp	r0, #176	@ 0xb0
c0de3c5e:	d12c      	bne.n	c0de3cba <io_legacy_apdu_rx+0xc6>
c0de3c60:	f240 1011 	movw	r0, #273	@ 0x111
c0de3c64:	1e61      	subs	r1, r4, #1
c0de3c66:	9001      	str	r0, [sp, #4]
c0de3c68:	f10d 000b 	add.w	r0, sp, #11
c0de3c6c:	9000      	str	r0, [sp, #0]
c0de3c6e:	484b      	ldr	r0, [pc, #300]	@ (c0de3d9c <io_legacy_apdu_rx+0x1a8>)
c0de3c70:	ab01      	add	r3, sp, #4
c0de3c72:	eb09 0500 	add.w	r5, r9, r0
c0de3c76:	eb09 0006 	add.w	r0, r9, r6
c0de3c7a:	3001      	adds	r0, #1
c0de3c7c:	462a      	mov	r2, r5
c0de3c7e:	f7ff ff24 	bl	c0de3aca <os_io_handle_default_apdu>
c0de3c82:	2400      	movs	r4, #0
c0de3c84:	9901      	ldr	r1, [sp, #4]
c0de3c86:	eb09 0607 	add.w	r6, r9, r7
c0de3c8a:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de3c8e:	bf18      	it	ne
c0de3c90:	4621      	movne	r1, r4
c0de3c92:	0a02      	lsrs	r2, r0, #8
c0de3c94:	2300      	movs	r3, #0
c0de3c96:	546a      	strb	r2, [r5, r1]
c0de3c98:	186a      	adds	r2, r5, r1
c0de3c9a:	7050      	strb	r0, [r2, #1]
c0de3c9c:	1c88      	adds	r0, r1, #2
c0de3c9e:	4629      	mov	r1, r5
c0de3ca0:	9001      	str	r0, [sp, #4]
c0de3ca2:	b282      	uxth	r2, r0
c0de3ca4:	7870      	ldrb	r0, [r6, #1]
c0de3ca6:	f004 f817 	bl	c0de7cd8 <os_io_tx_cmd>
c0de3caa:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de3cae:	7074      	strb	r4, [r6, #1]
c0de3cb0:	2901      	cmp	r1, #1
c0de3cb2:	d06a      	beq.n	c0de3d8a <io_legacy_apdu_rx+0x196>
c0de3cb4:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3cb8:	e059      	b.n	c0de3d6e <io_legacy_apdu_rx+0x17a>
c0de3cba:	eb09 0007 	add.w	r0, r9, r7
c0de3cbe:	7840      	ldrb	r0, [r0, #1]
c0de3cc0:	2810      	cmp	r0, #16
c0de3cc2:	d043      	beq.n	c0de3d4c <io_legacy_apdu_rx+0x158>
c0de3cc4:	2840      	cmp	r0, #64	@ 0x40
c0de3cc6:	d043      	beq.n	c0de3d50 <io_legacy_apdu_rx+0x15c>
c0de3cc8:	2821      	cmp	r0, #33	@ 0x21
c0de3cca:	d043      	beq.n	c0de3d54 <io_legacy_apdu_rx+0x160>
c0de3ccc:	2822      	cmp	r0, #34	@ 0x22
c0de3cce:	d037      	beq.n	c0de3d40 <io_legacy_apdu_rx+0x14c>
c0de3cd0:	2823      	cmp	r0, #35	@ 0x23
c0de3cd2:	d037      	beq.n	c0de3d44 <io_legacy_apdu_rx+0x150>
c0de3cd4:	2830      	cmp	r0, #48	@ 0x30
c0de3cd6:	d037      	beq.n	c0de3d48 <io_legacy_apdu_rx+0x154>
c0de3cd8:	2820      	cmp	r0, #32
c0de3cda:	bf14      	ite	ne
c0de3cdc:	2000      	movne	r0, #0
c0de3cde:	2001      	moveq	r0, #1
c0de3ce0:	e039      	b.n	c0de3d56 <io_legacy_apdu_rx+0x162>
c0de3ce2:	482e      	ldr	r0, [pc, #184]	@ (c0de3d9c <io_legacy_apdu_rx+0x1a8>)
c0de3ce4:	2155      	movs	r1, #85	@ 0x55
c0de3ce6:	2202      	movs	r2, #2
c0de3ce8:	2300      	movs	r3, #0
c0de3cea:	f809 1000 	strb.w	r1, [r9, r0]
c0de3cee:	eb09 0100 	add.w	r1, r9, r0
c0de3cf2:	2015      	movs	r0, #21
c0de3cf4:	7048      	strb	r0, [r1, #1]
c0de3cf6:	eb09 0007 	add.w	r0, r9, r7
c0de3cfa:	7840      	ldrb	r0, [r0, #1]
c0de3cfc:	b003      	add	sp, #12
c0de3cfe:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3d02:	f003 bfe9 	b.w	c0de7cd8 <os_io_tx_cmd>
c0de3d06:	4f27      	ldr	r7, [pc, #156]	@ (c0de3da4 <io_legacy_apdu_rx+0x1b0>)
c0de3d08:	444e      	add	r6, r9
c0de3d0a:	3c01      	subs	r4, #1
c0de3d0c:	1c71      	adds	r1, r6, #1
c0de3d0e:	4622      	mov	r2, r4
c0de3d10:	eb09 0007 	add.w	r0, r9, r7
c0de3d14:	f004 f8fe 	bl	c0de7f14 <__aeabi_memcpy>
c0de3d18:	7870      	ldrb	r0, [r6, #1]
c0de3d1a:	281a      	cmp	r0, #26
c0de3d1c:	d10a      	bne.n	c0de3d34 <io_legacy_apdu_rx+0x140>
c0de3d1e:	eb09 0007 	add.w	r0, r9, r7
c0de3d22:	4621      	mov	r1, r4
c0de3d24:	b003      	add	sp, #12
c0de3d26:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3d2a:	f7ff bf40 	b.w	c0de3bae <io_process_itc_ux_event>
c0de3d2e:	2842      	cmp	r0, #66	@ 0x42
c0de3d30:	d01d      	beq.n	c0de3d6e <io_legacy_apdu_rx+0x17a>
c0de3d32:	e028      	b.n	c0de3d86 <io_legacy_apdu_rx+0x192>
c0de3d34:	b1ed      	cbz	r5, c0de3d72 <io_legacy_apdu_rx+0x17e>
c0de3d36:	2000      	movs	r0, #0
c0de3d38:	2400      	movs	r4, #0
c0de3d3a:	f003 f8fb 	bl	c0de6f34 <io_event>
c0de3d3e:	e016      	b.n	c0de3d6e <io_legacy_apdu_rx+0x17a>
c0de3d40:	2004      	movs	r0, #4
c0de3d42:	e008      	b.n	c0de3d56 <io_legacy_apdu_rx+0x162>
c0de3d44:	2007      	movs	r0, #7
c0de3d46:	e006      	b.n	c0de3d56 <io_legacy_apdu_rx+0x162>
c0de3d48:	2002      	movs	r0, #2
c0de3d4a:	e004      	b.n	c0de3d56 <io_legacy_apdu_rx+0x162>
c0de3d4c:	2006      	movs	r0, #6
c0de3d4e:	e002      	b.n	c0de3d56 <io_legacy_apdu_rx+0x162>
c0de3d50:	2003      	movs	r0, #3
c0de3d52:	e000      	b.n	c0de3d56 <io_legacy_apdu_rx+0x162>
c0de3d54:	2005      	movs	r0, #5
c0de3d56:	4912      	ldr	r1, [pc, #72]	@ (c0de3da0 <io_legacy_apdu_rx+0x1ac>)
c0de3d58:	3c01      	subs	r4, #1
c0de3d5a:	4622      	mov	r2, r4
c0de3d5c:	4449      	add	r1, r9
c0de3d5e:	7188      	strb	r0, [r1, #6]
c0de3d60:	480e      	ldr	r0, [pc, #56]	@ (c0de3d9c <io_legacy_apdu_rx+0x1a8>)
c0de3d62:	eb09 0106 	add.w	r1, r9, r6
c0de3d66:	3101      	adds	r1, #1
c0de3d68:	4448      	add	r0, r9
c0de3d6a:	f004 f8d3 	bl	c0de7f14 <__aeabi_memcpy>
c0de3d6e:	4620      	mov	r0, r4
c0de3d70:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3d72:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3d76:	2815      	cmp	r0, #21
c0de3d78:	d8dd      	bhi.n	c0de3d36 <io_legacy_apdu_rx+0x142>
c0de3d7a:	2101      	movs	r1, #1
c0de3d7c:	fa01 f000 	lsl.w	r0, r1, r0
c0de3d80:	4909      	ldr	r1, [pc, #36]	@ (c0de3da8 <io_legacy_apdu_rx+0x1b4>)
c0de3d82:	4208      	tst	r0, r1
c0de3d84:	d0d7      	beq.n	c0de3d36 <io_legacy_apdu_rx+0x142>
c0de3d86:	2400      	movs	r4, #0
c0de3d88:	e7f1      	b.n	c0de3d6e <io_legacy_apdu_rx+0x17a>
c0de3d8a:	20ff      	movs	r0, #255	@ 0xff
c0de3d8c:	f003 ff86 	bl	c0de7c9c <os_sched_exit>
c0de3d90:	000007a5 	.word	0x000007a5
c0de3d94:	007f0001 	.word	0x007f0001
c0de3d98:	000008be 	.word	0x000008be
c0de3d9c:	00000694 	.word	0x00000694
c0de3da0:	000008b6 	.word	0x000008b6
c0de3da4:	00000a3c 	.word	0x00000a3c
c0de3da8:	00205020 	.word	0x00205020

c0de3dac <io_seproxyhal_init>:
c0de3dac:	b570      	push	{r4, r5, r6, lr}
c0de3dae:	b08a      	sub	sp, #40	@ 0x28
c0de3db0:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3de0 <io_seproxyhal_init+0x34>)
c0de3db2:	2600      	movs	r6, #0
c0de3db4:	2118      	movs	r1, #24
c0de3db6:	eb09 0005 	add.w	r0, r9, r5
c0de3dba:	7046      	strb	r6, [r0, #1]
c0de3dbc:	ac01      	add	r4, sp, #4
c0de3dbe:	4620      	mov	r0, r4
c0de3dc0:	f004 f8b2 	bl	c0de7f28 <__aeabi_memclr>
c0de3dc4:	2011      	movs	r0, #17
c0de3dc6:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3dca:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3dce:	4620      	mov	r0, r4
c0de3dd0:	f003 ff6e 	bl	c0de7cb0 <os_io_init>
c0de3dd4:	2001      	movs	r0, #1
c0de3dd6:	f809 0005 	strb.w	r0, [r9, r5]
c0de3dda:	b00a      	add	sp, #40	@ 0x28
c0de3ddc:	bd70      	pop	{r4, r5, r6, pc}
c0de3dde:	bf00      	nop
c0de3de0:	000008be 	.word	0x000008be

c0de3de4 <nbgl_layoutGet>:
c0de3de4:	b570      	push	{r4, r5, r6, lr}
c0de3de6:	4605      	mov	r5, r0
c0de3de8:	7800      	ldrb	r0, [r0, #0]
c0de3dea:	b148      	cbz	r0, c0de3e00 <nbgl_layoutGet+0x1c>
c0de3dec:	4819      	ldr	r0, [pc, #100]	@ (c0de3e54 <nbgl_layoutGet+0x70>)
c0de3dee:	eb09 0100 	add.w	r1, r9, r0
c0de3df2:	7b8a      	ldrb	r2, [r1, #14]
c0de3df4:	b152      	cbz	r2, c0de3e0c <nbgl_layoutGet+0x28>
c0de3df6:	4448      	add	r0, r9
c0de3df8:	7e81      	ldrb	r1, [r0, #26]
c0de3dfa:	b151      	cbz	r1, c0de3e12 <nbgl_layoutGet+0x2e>
c0de3dfc:	2400      	movs	r4, #0
c0de3dfe:	e026      	b.n	c0de3e4e <nbgl_layoutGet+0x6a>
c0de3e00:	4814      	ldr	r0, [pc, #80]	@ (c0de3e54 <nbgl_layoutGet+0x70>)
c0de3e02:	eb09 0400 	add.w	r4, r9, r0
c0de3e06:	2000      	movs	r0, #0
c0de3e08:	70a0      	strb	r0, [r4, #2]
c0de3e0a:	e004      	b.n	c0de3e16 <nbgl_layoutGet+0x32>
c0de3e0c:	f101 040c 	add.w	r4, r1, #12
c0de3e10:	e001      	b.n	c0de3e16 <nbgl_layoutGet+0x32>
c0de3e12:	f100 0418 	add.w	r4, r0, #24
c0de3e16:	2000      	movs	r0, #0
c0de3e18:	4626      	mov	r6, r4
c0de3e1a:	60a0      	str	r0, [r4, #8]
c0de3e1c:	6020      	str	r0, [r4, #0]
c0de3e1e:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3e22:	6868      	ldr	r0, [r5, #4]
c0de3e24:	f003 fd74 	bl	c0de7910 <pic>
c0de3e28:	60a0      	str	r0, [r4, #8]
c0de3e2a:	7828      	ldrb	r0, [r5, #0]
c0de3e2c:	f105 0208 	add.w	r2, r5, #8
c0de3e30:	7020      	strb	r0, [r4, #0]
c0de3e32:	4b09      	ldr	r3, [pc, #36]	@ (c0de3e58 <nbgl_layoutGet+0x74>)
c0de3e34:	447b      	add	r3, pc
c0de3e36:	b120      	cbz	r0, c0de3e42 <nbgl_layoutGet+0x5e>
c0de3e38:	4630      	mov	r0, r6
c0de3e3a:	2107      	movs	r1, #7
c0de3e3c:	f003 fb6d 	bl	c0de751a <nbgl_screenPush>
c0de3e40:	e004      	b.n	c0de3e4c <nbgl_layoutGet+0x68>
c0de3e42:	4630      	mov	r0, r6
c0de3e44:	2107      	movs	r1, #7
c0de3e46:	f003 fb63 	bl	c0de7510 <nbgl_screenSet>
c0de3e4a:	2000      	movs	r0, #0
c0de3e4c:	7060      	strb	r0, [r4, #1]
c0de3e4e:	4620      	mov	r0, r4
c0de3e50:	bd70      	pop	{r4, r5, r6, pc}
c0de3e52:	bf00      	nop
c0de3e54:	000008c0 	.word	0x000008c0
c0de3e58:	00000025 	.word	0x00000025

c0de3e5c <buttonCallback>:
c0de3e5c:	b5b0      	push	{r4, r5, r7, lr}
c0de3e5e:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3e62:	4811      	ldr	r0, [pc, #68]	@ (c0de3ea8 <buttonCallback+0x4c>)
c0de3e64:	2302      	movs	r3, #2
c0de3e66:	1c5c      	adds	r4, r3, #1
c0de3e68:	d01d      	beq.n	c0de3ea6 <buttonCallback+0x4a>
c0de3e6a:	b2dc      	uxtb	r4, r3
c0de3e6c:	eb09 0500 	add.w	r5, r9, r0
c0de3e70:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3e74:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3e78:	786d      	ldrb	r5, [r5, #1]
c0de3e7a:	42aa      	cmp	r2, r5
c0de3e7c:	d105      	bne.n	c0de3e8a <buttonCallback+0x2e>
c0de3e7e:	eb09 0500 	add.w	r5, r9, r0
c0de3e82:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3e86:	78ad      	ldrb	r5, [r5, #2]
c0de3e88:	b90d      	cbnz	r5, c0de3e8e <buttonCallback+0x32>
c0de3e8a:	3b01      	subs	r3, #1
c0de3e8c:	e7eb      	b.n	c0de3e66 <buttonCallback+0xa>
c0de3e8e:	eb09 0200 	add.w	r2, r9, r0
c0de3e92:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3e96:	6892      	ldr	r2, [r2, #8]
c0de3e98:	b12a      	cbz	r2, c0de3ea6 <buttonCallback+0x4a>
c0de3e9a:	4448      	add	r0, r9
c0de3e9c:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3ea0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3ea4:	4710      	bx	r2
c0de3ea6:	bdb0      	pop	{r4, r5, r7, pc}
c0de3ea8:	000008c0 	.word	0x000008c0

c0de3eac <nbgl_layoutAddNavigation>:
c0de3eac:	b570      	push	{r4, r5, r6, lr}
c0de3eae:	2800      	cmp	r0, #0
c0de3eb0:	d04d      	beq.n	c0de3f4e <nbgl_layoutAddNavigation+0xa2>
c0de3eb2:	460d      	mov	r5, r1
c0de3eb4:	7849      	ldrb	r1, [r1, #1]
c0de3eb6:	4604      	mov	r4, r0
c0de3eb8:	07c8      	lsls	r0, r1, #31
c0de3eba:	d022      	beq.n	c0de3f02 <nbgl_layoutAddNavigation+0x56>
c0de3ebc:	7861      	ldrb	r1, [r4, #1]
c0de3ebe:	2002      	movs	r0, #2
c0de3ec0:	f003 fb3f 	bl	c0de7542 <nbgl_objPoolGet>
c0de3ec4:	782a      	ldrb	r2, [r5, #0]
c0de3ec6:	7869      	ldrb	r1, [r5, #1]
c0de3ec8:	4b23      	ldr	r3, [pc, #140]	@ (c0de3f58 <nbgl_layoutAddNavigation+0xac>)
c0de3eca:	4e24      	ldr	r6, [pc, #144]	@ (c0de3f5c <nbgl_layoutAddNavigation+0xb0>)
c0de3ecc:	2a00      	cmp	r2, #0
c0de3ece:	447b      	add	r3, pc
c0de3ed0:	447e      	add	r6, pc
c0de3ed2:	4602      	mov	r2, r0
c0de3ed4:	bf08      	it	eq
c0de3ed6:	461e      	moveq	r6, r3
c0de3ed8:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3edc:	0e33      	lsrs	r3, r6, #24
c0de3ede:	70d3      	strb	r3, [r2, #3]
c0de3ee0:	0c33      	lsrs	r3, r6, #16
c0de3ee2:	7093      	strb	r3, [r2, #2]
c0de3ee4:	0a32      	lsrs	r2, r6, #8
c0de3ee6:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de3eea:	6862      	ldr	r2, [r4, #4]
c0de3eec:	78a3      	ldrb	r3, [r4, #2]
c0de3eee:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3ef2:	2203      	movs	r2, #3
c0de3ef4:	77c2      	strb	r2, [r0, #31]
c0de3ef6:	2204      	movs	r2, #4
c0de3ef8:	7582      	strb	r2, [r0, #22]
c0de3efa:	2200      	movs	r2, #0
c0de3efc:	7242      	strb	r2, [r0, #9]
c0de3efe:	1c58      	adds	r0, r3, #1
c0de3f00:	70a0      	strb	r0, [r4, #2]
c0de3f02:	0788      	lsls	r0, r1, #30
c0de3f04:	f04f 0600 	mov.w	r6, #0
c0de3f08:	d523      	bpl.n	c0de3f52 <nbgl_layoutAddNavigation+0xa6>
c0de3f0a:	7861      	ldrb	r1, [r4, #1]
c0de3f0c:	2002      	movs	r0, #2
c0de3f0e:	f003 fb18 	bl	c0de7542 <nbgl_objPoolGet>
c0de3f12:	7829      	ldrb	r1, [r5, #0]
c0de3f14:	4a12      	ldr	r2, [pc, #72]	@ (c0de3f60 <nbgl_layoutAddNavigation+0xb4>)
c0de3f16:	4b13      	ldr	r3, [pc, #76]	@ (c0de3f64 <nbgl_layoutAddNavigation+0xb8>)
c0de3f18:	2900      	cmp	r1, #0
c0de3f1a:	447a      	add	r2, pc
c0de3f1c:	447b      	add	r3, pc
c0de3f1e:	4601      	mov	r1, r0
c0de3f20:	bf08      	it	eq
c0de3f22:	4613      	moveq	r3, r2
c0de3f24:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3f28:	0e1a      	lsrs	r2, r3, #24
c0de3f2a:	7246      	strb	r6, [r0, #9]
c0de3f2c:	70ca      	strb	r2, [r1, #3]
c0de3f2e:	0c1a      	lsrs	r2, r3, #16
c0de3f30:	708a      	strb	r2, [r1, #2]
c0de3f32:	0a19      	lsrs	r1, r3, #8
c0de3f34:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3f38:	6861      	ldr	r1, [r4, #4]
c0de3f3a:	78a2      	ldrb	r2, [r4, #2]
c0de3f3c:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3f40:	2103      	movs	r1, #3
c0de3f42:	77c1      	strb	r1, [r0, #31]
c0de3f44:	2106      	movs	r1, #6
c0de3f46:	7581      	strb	r1, [r0, #22]
c0de3f48:	1c50      	adds	r0, r2, #1
c0de3f4a:	70a0      	strb	r0, [r4, #2]
c0de3f4c:	e001      	b.n	c0de3f52 <nbgl_layoutAddNavigation+0xa6>
c0de3f4e:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3f52:	4630      	mov	r0, r6
c0de3f54:	bd70      	pop	{r4, r5, r6, pc}
c0de3f56:	bf00      	nop
c0de3f58:	00004278 	.word	0x00004278
c0de3f5c:	000042b5 	.word	0x000042b5
c0de3f60:	0000425d 	.word	0x0000425d
c0de3f64:	0000421c 	.word	0x0000421c

c0de3f68 <nbgl_layoutAddText>:
c0de3f68:	2800      	cmp	r0, #0
c0de3f6a:	f000 8143 	beq.w	c0de41f4 <nbgl_layoutAddText+0x28c>
c0de3f6e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f72:	b088      	sub	sp, #32
c0de3f74:	460e      	mov	r6, r1
c0de3f76:	7841      	ldrb	r1, [r0, #1]
c0de3f78:	4605      	mov	r5, r0
c0de3f7a:	2001      	movs	r0, #1
c0de3f7c:	4617      	mov	r7, r2
c0de3f7e:	461c      	mov	r4, r3
c0de3f80:	f003 fadf 	bl	c0de7542 <nbgl_objPoolGet>
c0de3f84:	4680      	mov	r8, r0
c0de3f86:	2003      	movs	r0, #3
c0de3f88:	2f00      	cmp	r7, #0
c0de3f8a:	bf08      	it	eq
c0de3f8c:	2001      	moveq	r0, #1
c0de3f8e:	7869      	ldrb	r1, [r5, #1]
c0de3f90:	f888 0020 	strb.w	r0, [r8, #32]
c0de3f94:	f003 fada 	bl	c0de754c <nbgl_containerPoolGet>
c0de3f98:	4641      	mov	r1, r8
c0de3f9a:	0e02      	lsrs	r2, r0, #24
c0de3f9c:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3fa0:	f04f 0b00 	mov.w	fp, #0
c0de3fa4:	9704      	str	r7, [sp, #16]
c0de3fa6:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3faa:	f888 a004 	strb.w	sl, [r8, #4]
c0de3fae:	f888 b005 	strb.w	fp, [r8, #5]
c0de3fb2:	70ca      	strb	r2, [r1, #3]
c0de3fb4:	0c02      	lsrs	r2, r0, #16
c0de3fb6:	0a00      	lsrs	r0, r0, #8
c0de3fb8:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3fbc:	708a      	strb	r2, [r1, #2]
c0de3fbe:	2004      	movs	r0, #4
c0de3fc0:	7869      	ldrb	r1, [r5, #1]
c0de3fc2:	f003 fabe 	bl	c0de7542 <nbgl_objPoolGet>
c0de3fc6:	4607      	mov	r7, r0
c0de3fc8:	2003      	movs	r0, #3
c0de3fca:	77f8      	strb	r0, [r7, #31]
c0de3fcc:	4630      	mov	r0, r6
c0de3fce:	f003 fc9f 	bl	c0de7910 <pic>
c0de3fd2:	4601      	mov	r1, r0
c0de3fd4:	2008      	movs	r0, #8
c0de3fd6:	f887 b005 	strb.w	fp, [r7, #5]
c0de3fda:	f887 a004 	strb.w	sl, [r7, #4]
c0de3fde:	9403      	str	r4, [sp, #12]
c0de3fe0:	2c00      	cmp	r4, #0
c0de3fe2:	bf08      	it	eq
c0de3fe4:	200a      	moveq	r0, #10
c0de3fe6:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3fea:	2205      	movs	r2, #5
c0de3fec:	0e0b      	lsrs	r3, r1, #24
c0de3fee:	f887 2020 	strb.w	r2, [r7, #32]
c0de3ff2:	463a      	mov	r2, r7
c0de3ff4:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3ff8:	70d3      	strb	r3, [r2, #3]
c0de3ffa:	0c0b      	lsrs	r3, r1, #16
c0de3ffc:	7093      	strb	r3, [r2, #2]
c0de3ffe:	0a0a      	lsrs	r2, r1, #8
c0de4000:	2301      	movs	r3, #1
c0de4002:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de4006:	2272      	movs	r2, #114	@ 0x72
c0de4008:	f003 fab4 	bl	c0de7574 <nbgl_getTextNbLinesInWidth>
c0de400c:	4606      	mov	r6, r0
c0de400e:	2805      	cmp	r0, #5
c0de4010:	9505      	str	r5, [sp, #20]
c0de4012:	d31d      	bcc.n	c0de4050 <nbgl_layoutAddText+0xe8>
c0de4014:	463e      	mov	r6, r7
c0de4016:	2004      	movs	r0, #4
c0de4018:	2101      	movs	r1, #1
c0de401a:	f10d 051e 	add.w	r5, sp, #30
c0de401e:	f816 cf26 	ldrb.w	ip, [r6, #38]!
c0de4022:	7872      	ldrb	r2, [r6, #1]
c0de4024:	78b3      	ldrb	r3, [r6, #2]
c0de4026:	78f4      	ldrb	r4, [r6, #3]
c0de4028:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de402c:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de4030:	9101      	str	r1, [sp, #4]
c0de4032:	9500      	str	r5, [sp, #0]
c0de4034:	9d05      	ldr	r5, [sp, #20]
c0de4036:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de403a:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de403e:	2304      	movs	r3, #4
c0de4040:	f000 fc78 	bl	c0de4934 <OUTLINED_FUNCTION_4>
c0de4044:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de4048:	7130      	strb	r0, [r6, #4]
c0de404a:	0a00      	lsrs	r0, r0, #8
c0de404c:	7170      	strb	r0, [r6, #5]
c0de404e:	2604      	movs	r6, #4
c0de4050:	f000 fc78 	bl	c0de4944 <OUTLINED_FUNCTION_6>
c0de4054:	4683      	mov	fp, r0
c0de4056:	79c0      	ldrb	r0, [r0, #7]
c0de4058:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de405c:	9c04      	ldr	r4, [sp, #16]
c0de405e:	fb06 fa00 	mul.w	sl, r6, r0
c0de4062:	f041 0101 	orr.w	r1, r1, #1
c0de4066:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de406a:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de406e:	2102      	movs	r1, #2
c0de4070:	f887 a006 	strb.w	sl, [r7, #6]
c0de4074:	71f8      	strb	r0, [r7, #7]
c0de4076:	4640      	mov	r0, r8
c0de4078:	75b9      	strb	r1, [r7, #22]
c0de407a:	2c00      	cmp	r4, #0
c0de407c:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4080:	7842      	ldrb	r2, [r0, #1]
c0de4082:	7883      	ldrb	r3, [r0, #2]
c0de4084:	78c0      	ldrb	r0, [r0, #3]
c0de4086:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de408a:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de408e:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4092:	6007      	str	r7, [r0, #0]
c0de4094:	f000 8110 	beq.w	c0de42b8 <nbgl_layoutAddText+0x350>
c0de4098:	9803      	ldr	r0, [sp, #12]
c0de409a:	7869      	ldrb	r1, [r5, #1]
c0de409c:	2802      	cmp	r0, #2
c0de409e:	f040 80ab 	bne.w	c0de41f8 <nbgl_layoutAddText+0x290>
c0de40a2:	2005      	movs	r0, #5
c0de40a4:	2505      	movs	r5, #5
c0de40a6:	f003 fa4c 	bl	c0de7542 <nbgl_objPoolGet>
c0de40aa:	2600      	movs	r6, #0
c0de40ac:	4607      	mov	r7, r0
c0de40ae:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de40b2:	2001      	movs	r0, #1
c0de40b4:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de40b8:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de40bc:	f000 fc51 	bl	c0de4962 <OUTLINED_FUNCTION_9>
c0de40c0:	4620      	mov	r0, r4
c0de40c2:	f003 fc25 	bl	c0de7910 <pic>
c0de40c6:	4601      	mov	r1, r0
c0de40c8:	200e      	movs	r0, #14
c0de40ca:	71fe      	strb	r6, [r7, #7]
c0de40cc:	75bd      	strb	r5, [r7, #22]
c0de40ce:	71b8      	strb	r0, [r7, #6]
c0de40d0:	2008      	movs	r0, #8
c0de40d2:	0e0a      	lsrs	r2, r1, #24
c0de40d4:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de40d8:	4638      	mov	r0, r7
c0de40da:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de40de:	f000 fc20 	bl	c0de4922 <OUTLINED_FUNCTION_3>
c0de40e2:	2865      	cmp	r0, #101	@ 0x65
c0de40e4:	f240 80d8 	bls.w	c0de4298 <nbgl_layoutAddText+0x330>
c0de40e8:	46bb      	mov	fp, r7
c0de40ea:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de40ee:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de40f2:	2401      	movs	r4, #1
c0de40f4:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de40f8:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de40fc:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de4100:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de4104:	ae06      	add	r6, sp, #24
c0de4106:	e9cd 6400 	strd	r6, r4, [sp]
c0de410a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de410e:	f10d 031a 	add.w	r3, sp, #26
c0de4112:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4116:	2266      	movs	r2, #102	@ 0x66
c0de4118:	f003 fa27 	bl	c0de756a <nbgl_getTextMaxLenAndWidth>
c0de411c:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de4120:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de4124:	300c      	adds	r0, #12
c0de4126:	7138      	strb	r0, [r7, #4]
c0de4128:	0a00      	lsrs	r0, r0, #8
c0de412a:	7178      	strb	r0, [r7, #5]
c0de412c:	486d      	ldr	r0, [pc, #436]	@ (c0de42e4 <nbgl_layoutAddText+0x37c>)
c0de412e:	2e13      	cmp	r6, #19
c0de4130:	bf28      	it	cs
c0de4132:	2613      	movcs	r6, #19
c0de4134:	f89b 1000 	ldrb.w	r1, [fp]
c0de4138:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de413c:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de4140:	eb09 0400 	add.w	r4, r9, r0
c0de4144:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de4148:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de414c:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de4150:	4632      	mov	r2, r6
c0de4152:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de4156:	4620      	mov	r0, r4
c0de4158:	f003 fedc 	bl	c0de7f14 <__aeabi_memcpy>
c0de415c:	2500      	movs	r5, #0
c0de415e:	4620      	mov	r0, r4
c0de4160:	55a5      	strb	r5, [r4, r6]
c0de4162:	f003 fbd5 	bl	c0de7910 <pic>
c0de4166:	2101      	movs	r1, #1
c0de4168:	f88b 0000 	strb.w	r0, [fp]
c0de416c:	76bd      	strb	r5, [r7, #26]
c0de416e:	9d05      	ldr	r5, [sp, #20]
c0de4170:	7679      	strb	r1, [r7, #25]
c0de4172:	0e01      	lsrs	r1, r0, #24
c0de4174:	f88b 1003 	strb.w	r1, [fp, #3]
c0de4178:	0c01      	lsrs	r1, r0, #16
c0de417a:	0a00      	lsrs	r0, r0, #8
c0de417c:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4180:	f88b 1002 	strb.w	r1, [fp, #2]
c0de4184:	4640      	mov	r0, r8
c0de4186:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de418a:	7842      	ldrb	r2, [r0, #1]
c0de418c:	7883      	ldrb	r3, [r0, #2]
c0de418e:	78c0      	ldrb	r0, [r0, #3]
c0de4190:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4194:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4198:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de419c:	6047      	str	r7, [r0, #4]
c0de419e:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de41a2:	2800      	cmp	r0, #0
c0de41a4:	f000 8086 	beq.w	c0de42b4 <nbgl_layoutAddText+0x34c>
c0de41a8:	7869      	ldrb	r1, [r5, #1]
c0de41aa:	2005      	movs	r0, #5
c0de41ac:	2605      	movs	r6, #5
c0de41ae:	f003 f9c8 	bl	c0de7542 <nbgl_objPoolGet>
c0de41b2:	2500      	movs	r5, #0
c0de41b4:	4607      	mov	r7, r0
c0de41b6:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de41ba:	2001      	movs	r0, #1
c0de41bc:	f000 fbd1 	bl	c0de4962 <OUTLINED_FUNCTION_9>
c0de41c0:	9804      	ldr	r0, [sp, #16]
c0de41c2:	f003 fba5 	bl	c0de7910 <pic>
c0de41c6:	210e      	movs	r1, #14
c0de41c8:	71fd      	strb	r5, [r7, #7]
c0de41ca:	71b9      	strb	r1, [r7, #6]
c0de41cc:	2108      	movs	r1, #8
c0de41ce:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de41d2:	f8bd 101a 	ldrh.w	r1, [sp, #26]
c0de41d6:	4401      	add	r1, r0
c0de41d8:	4638      	mov	r0, r7
c0de41da:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de41de:	0e0a      	lsrs	r2, r1, #24
c0de41e0:	f000 fb9f 	bl	c0de4922 <OUTLINED_FUNCTION_3>
c0de41e4:	300c      	adds	r0, #12
c0de41e6:	210f      	movs	r1, #15
c0de41e8:	75be      	strb	r6, [r7, #22]
c0de41ea:	7138      	strb	r0, [r7, #4]
c0de41ec:	0a00      	lsrs	r0, r0, #8
c0de41ee:	7178      	strb	r0, [r7, #5]
c0de41f0:	2002      	movs	r0, #2
c0de41f2:	e057      	b.n	c0de42a4 <nbgl_layoutAddText+0x33c>
c0de41f4:	f000 bbb2 	b.w	c0de495c <OUTLINED_FUNCTION_8>
c0de41f8:	f000 fba1 	bl	c0de493e <OUTLINED_FUNCTION_5>
c0de41fc:	2603      	movs	r6, #3
c0de41fe:	4607      	mov	r7, r0
c0de4200:	77c6      	strb	r6, [r0, #31]
c0de4202:	4620      	mov	r0, r4
c0de4204:	f003 fb84 	bl	c0de7910 <pic>
c0de4208:	4601      	mov	r1, r0
c0de420a:	2072      	movs	r0, #114	@ 0x72
c0de420c:	2400      	movs	r4, #0
c0de420e:	2301      	movs	r3, #1
c0de4210:	7138      	strb	r0, [r7, #4]
c0de4212:	200a      	movs	r0, #10
c0de4214:	0e0a      	lsrs	r2, r1, #24
c0de4216:	717c      	strb	r4, [r7, #5]
c0de4218:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de421c:	f000 fb61 	bl	c0de48e2 <OUTLINED_FUNCTION_0>
c0de4220:	2804      	cmp	r0, #4
c0de4222:	d31e      	bcc.n	c0de4262 <nbgl_layoutAddText+0x2fa>
c0de4224:	463d      	mov	r5, r7
c0de4226:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de422a:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de422e:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4232:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de4236:	78ab      	ldrb	r3, [r5, #2]
c0de4238:	78e9      	ldrb	r1, [r5, #3]
c0de423a:	aa07      	add	r2, sp, #28
c0de423c:	9200      	str	r2, [sp, #0]
c0de423e:	2201      	movs	r2, #1
c0de4240:	9201      	str	r2, [sp, #4]
c0de4242:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4246:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de424a:	2303      	movs	r3, #3
c0de424c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4250:	2272      	movs	r2, #114	@ 0x72
c0de4252:	f003 f99e 	bl	c0de7592 <nbgl_getTextMaxLenInNbLines>
c0de4256:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de425a:	7128      	strb	r0, [r5, #4]
c0de425c:	0a00      	lsrs	r0, r0, #8
c0de425e:	7168      	strb	r0, [r5, #5]
c0de4260:	2003      	movs	r0, #3
c0de4262:	9903      	ldr	r1, [sp, #12]
c0de4264:	2900      	cmp	r1, #0
c0de4266:	bf08      	it	eq
c0de4268:	4606      	moveq	r6, r0
c0de426a:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de426e:	76bc      	strb	r4, [r7, #26]
c0de4270:	75bc      	strb	r4, [r7, #22]
c0de4272:	fb06 f100 	mul.w	r1, r6, r0
c0de4276:	fb06 a000 	mla	r0, r6, r0, sl
c0de427a:	71b9      	strb	r1, [r7, #6]
c0de427c:	0a09      	lsrs	r1, r1, #8
c0de427e:	71f9      	strb	r1, [r7, #7]
c0de4280:	2102      	movs	r1, #2
c0de4282:	f100 0a02 	add.w	sl, r0, #2
c0de4286:	7679      	strb	r1, [r7, #25]
c0de4288:	2105      	movs	r1, #5
c0de428a:	f887 1020 	strb.w	r1, [r7, #32]
c0de428e:	4641      	mov	r1, r8
c0de4290:	f000 fb3a 	bl	c0de4908 <OUTLINED_FUNCTION_2>
c0de4294:	604f      	str	r7, [r1, #4]
c0de4296:	e00f      	b.n	c0de42b8 <nbgl_layoutAddText+0x350>
c0de4298:	300c      	adds	r0, #12
c0de429a:	2108      	movs	r1, #8
c0de429c:	7138      	strb	r0, [r7, #4]
c0de429e:	0a00      	lsrs	r0, r0, #8
c0de42a0:	7178      	strb	r0, [r7, #5]
c0de42a2:	2001      	movs	r0, #1
c0de42a4:	2200      	movs	r2, #0
c0de42a6:	7679      	strb	r1, [r7, #25]
c0de42a8:	4641      	mov	r1, r8
c0de42aa:	76ba      	strb	r2, [r7, #26]
c0de42ac:	f000 fb2c 	bl	c0de4908 <OUTLINED_FUNCTION_2>
c0de42b0:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de42b4:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de42b8:	6868      	ldr	r0, [r5, #4]
c0de42ba:	78a9      	ldrb	r1, [r5, #2]
c0de42bc:	2205      	movs	r2, #5
c0de42be:	f888 2016 	strb.w	r2, [r8, #22]
c0de42c2:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de42c6:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de42ca:	2000      	movs	r0, #0
c0de42cc:	3101      	adds	r1, #1
c0de42ce:	f888 a006 	strb.w	sl, [r8, #6]
c0de42d2:	f888 2007 	strb.w	r2, [r8, #7]
c0de42d6:	f888 001f 	strb.w	r0, [r8, #31]
c0de42da:	70a9      	strb	r1, [r5, #2]
c0de42dc:	b008      	add	sp, #32
c0de42de:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de42e2:	bf00      	nop
c0de42e4:	000008e4 	.word	0x000008e4

c0de42e8 <nbgl_layoutAddMenuList>:
c0de42e8:	2800      	cmp	r0, #0
c0de42ea:	d04f      	beq.n	c0de438c <nbgl_layoutAddMenuList+0xa4>
c0de42ec:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de42f0:	460c      	mov	r4, r1
c0de42f2:	4605      	mov	r5, r0
c0de42f4:	2700      	movs	r7, #0
c0de42f6:	f04f 0b05 	mov.w	fp, #5
c0de42fa:	f04f 0803 	mov.w	r8, #3
c0de42fe:	f04f 0a00 	mov.w	sl, #0
c0de4302:	7920      	ldrb	r0, [r4, #4]
c0de4304:	4582      	cmp	sl, r0
c0de4306:	d23e      	bcs.n	c0de4386 <nbgl_layoutAddMenuList+0x9e>
c0de4308:	7960      	ldrb	r0, [r4, #5]
c0de430a:	2803      	cmp	r0, #3
c0de430c:	d302      	bcc.n	c0de4314 <nbgl_layoutAddMenuList+0x2c>
c0de430e:	1e81      	subs	r1, r0, #2
c0de4310:	4551      	cmp	r1, sl
c0de4312:	dc35      	bgt.n	c0de4380 <nbgl_layoutAddMenuList+0x98>
c0de4314:	3002      	adds	r0, #2
c0de4316:	4550      	cmp	r0, sl
c0de4318:	d332      	bcc.n	c0de4380 <nbgl_layoutAddMenuList+0x98>
c0de431a:	7869      	ldrb	r1, [r5, #1]
c0de431c:	f000 fb0f 	bl	c0de493e <OUTLINED_FUNCTION_5>
c0de4320:	6821      	ldr	r1, [r4, #0]
c0de4322:	4606      	mov	r6, r0
c0de4324:	fa5f f08a 	uxtb.w	r0, sl
c0de4328:	4788      	blx	r1
c0de432a:	7961      	ldrb	r1, [r4, #5]
c0de432c:	220a      	movs	r2, #10
c0de432e:	458a      	cmp	sl, r1
c0de4330:	bf08      	it	eq
c0de4332:	2208      	moveq	r2, #8
c0de4334:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de4338:	71f7      	strb	r7, [r6, #7]
c0de433a:	7177      	strb	r7, [r6, #5]
c0de433c:	f886 b020 	strb.w	fp, [r6, #32]
c0de4340:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de4344:	f886 b016 	strb.w	fp, [r6, #22]
c0de4348:	f886 801f 	strb.w	r8, [r6, #31]
c0de434c:	4632      	mov	r2, r6
c0de434e:	0e03      	lsrs	r3, r0, #24
c0de4350:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de4354:	70d3      	strb	r3, [r2, #3]
c0de4356:	0c03      	lsrs	r3, r0, #16
c0de4358:	0a00      	lsrs	r0, r0, #8
c0de435a:	7093      	strb	r3, [r2, #2]
c0de435c:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4360:	6868      	ldr	r0, [r5, #4]
c0de4362:	78aa      	ldrb	r2, [r5, #2]
c0de4364:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de4368:	200c      	movs	r0, #12
c0de436a:	71b0      	strb	r0, [r6, #6]
c0de436c:	2072      	movs	r0, #114	@ 0x72
c0de436e:	7130      	strb	r0, [r6, #4]
c0de4370:	ebaa 0001 	sub.w	r0, sl, r1
c0de4374:	0901      	lsrs	r1, r0, #4
c0de4376:	0100      	lsls	r0, r0, #4
c0de4378:	7670      	strb	r0, [r6, #25]
c0de437a:	1c50      	adds	r0, r2, #1
c0de437c:	76b1      	strb	r1, [r6, #26]
c0de437e:	70a8      	strb	r0, [r5, #2]
c0de4380:	f10a 0a01 	add.w	sl, sl, #1
c0de4384:	e7bd      	b.n	c0de4302 <nbgl_layoutAddMenuList+0x1a>
c0de4386:	2000      	movs	r0, #0
c0de4388:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de438c:	f000 bae6 	b.w	c0de495c <OUTLINED_FUNCTION_8>

c0de4390 <nbgl_layoutAddCenteredInfo>:
c0de4390:	2800      	cmp	r0, #0
c0de4392:	f000 80dc 	beq.w	c0de454e <nbgl_layoutAddCenteredInfo+0x1be>
c0de4396:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de439a:	b086      	sub	sp, #24
c0de439c:	460d      	mov	r5, r1
c0de439e:	7841      	ldrb	r1, [r0, #1]
c0de43a0:	4682      	mov	sl, r0
c0de43a2:	2001      	movs	r0, #1
c0de43a4:	f003 f8cd 	bl	c0de7542 <nbgl_objPoolGet>
c0de43a8:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de43ac:	4680      	mov	r8, r0
c0de43ae:	2003      	movs	r0, #3
c0de43b0:	2703      	movs	r7, #3
c0de43b2:	f003 f8cb 	bl	c0de754c <nbgl_containerPoolGet>
c0de43b6:	4641      	mov	r1, r8
c0de43b8:	0e02      	lsrs	r2, r0, #24
c0de43ba:	f04f 0b00 	mov.w	fp, #0
c0de43be:	9504      	str	r5, [sp, #16]
c0de43c0:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de43c4:	f888 b020 	strb.w	fp, [r8, #32]
c0de43c8:	70ca      	strb	r2, [r1, #3]
c0de43ca:	0c02      	lsrs	r2, r0, #16
c0de43cc:	0a00      	lsrs	r0, r0, #8
c0de43ce:	708a      	strb	r2, [r1, #2]
c0de43d0:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de43d4:	68a8      	ldr	r0, [r5, #8]
c0de43d6:	b3c0      	cbz	r0, c0de444a <nbgl_layoutAddCenteredInfo+0xba>
c0de43d8:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de43dc:	2002      	movs	r0, #2
c0de43de:	f003 f8b0 	bl	c0de7542 <nbgl_objPoolGet>
c0de43e2:	4606      	mov	r6, r0
c0de43e4:	77c7      	strb	r7, [r0, #31]
c0de43e6:	68a8      	ldr	r0, [r5, #8]
c0de43e8:	f003 fa92 	bl	c0de7910 <pic>
c0de43ec:	4631      	mov	r1, r6
c0de43ee:	0e02      	lsrs	r2, r0, #24
c0de43f0:	f886 b013 	strb.w	fp, [r6, #19]
c0de43f4:	f886 b009 	strb.w	fp, [r6, #9]
c0de43f8:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de43fc:	70ca      	strb	r2, [r1, #3]
c0de43fe:	0c02      	lsrs	r2, r0, #16
c0de4400:	708a      	strb	r2, [r1, #2]
c0de4402:	0a01      	lsrs	r1, r0, #8
c0de4404:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4408:	4631      	mov	r1, r6
c0de440a:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de440e:	f881 b003 	strb.w	fp, [r1, #3]
c0de4412:	f881 b002 	strb.w	fp, [r1, #2]
c0de4416:	4641      	mov	r1, r8
c0de4418:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de441c:	784f      	ldrb	r7, [r1, #1]
c0de441e:	788c      	ldrb	r4, [r1, #2]
c0de4420:	78cd      	ldrb	r5, [r1, #3]
c0de4422:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4426:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de442a:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de442e:	9d04      	ldr	r5, [sp, #16]
c0de4430:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4434:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4438:	2202      	movs	r2, #2
c0de443a:	75b2      	strb	r2, [r6, #22]
c0de443c:	1c5a      	adds	r2, r3, #1
c0de443e:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4442:	7881      	ldrb	r1, [r0, #2]
c0de4444:	78c0      	ldrb	r0, [r0, #3]
c0de4446:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de444a:	6828      	ldr	r0, [r5, #0]
c0de444c:	2800      	cmp	r0, #0
c0de444e:	f000 80a5 	beq.w	c0de459c <nbgl_layoutAddCenteredInfo+0x20c>
c0de4452:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4456:	f000 fa72 	bl	c0de493e <OUTLINED_FUNCTION_5>
c0de445a:	4607      	mov	r7, r0
c0de445c:	2003      	movs	r0, #3
c0de445e:	77f8      	strb	r0, [r7, #31]
c0de4460:	6828      	ldr	r0, [r5, #0]
c0de4462:	f003 fa55 	bl	c0de7910 <pic>
c0de4466:	4601      	mov	r1, r0
c0de4468:	2072      	movs	r0, #114	@ 0x72
c0de446a:	2400      	movs	r4, #0
c0de446c:	7138      	strb	r0, [r7, #4]
c0de446e:	2005      	movs	r0, #5
c0de4470:	0e0a      	lsrs	r2, r1, #24
c0de4472:	717c      	strb	r4, [r7, #5]
c0de4474:	f887 0020 	strb.w	r0, [r7, #32]
c0de4478:	4638      	mov	r0, r7
c0de447a:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de447e:	70c2      	strb	r2, [r0, #3]
c0de4480:	0c0a      	lsrs	r2, r1, #16
c0de4482:	7082      	strb	r2, [r0, #2]
c0de4484:	0a08      	lsrs	r0, r1, #8
c0de4486:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de448a:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de448e:	7b6a      	ldrb	r2, [r5, #13]
c0de4490:	f040 0001 	orr.w	r0, r0, #1
c0de4494:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4498:	2008      	movs	r0, #8
c0de449a:	2a00      	cmp	r2, #0
c0de449c:	bf08      	it	eq
c0de449e:	200a      	moveq	r0, #10
c0de44a0:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de44a4:	2272      	movs	r2, #114	@ 0x72
c0de44a6:	2301      	movs	r3, #1
c0de44a8:	f003 f864 	bl	c0de7574 <nbgl_getTextNbLinesInWidth>
c0de44ac:	4606      	mov	r6, r0
c0de44ae:	2805      	cmp	r0, #5
c0de44b0:	d31e      	bcc.n	c0de44f0 <nbgl_layoutAddCenteredInfo+0x160>
c0de44b2:	463d      	mov	r5, r7
c0de44b4:	2004      	movs	r0, #4
c0de44b6:	2101      	movs	r1, #1
c0de44b8:	f10d 0416 	add.w	r4, sp, #22
c0de44bc:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de44c0:	786a      	ldrb	r2, [r5, #1]
c0de44c2:	78ab      	ldrb	r3, [r5, #2]
c0de44c4:	78ee      	ldrb	r6, [r5, #3]
c0de44c6:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de44ca:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de44ce:	9101      	str	r1, [sp, #4]
c0de44d0:	9400      	str	r4, [sp, #0]
c0de44d2:	2400      	movs	r4, #0
c0de44d4:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de44d8:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de44dc:	2304      	movs	r3, #4
c0de44de:	f000 fa29 	bl	c0de4934 <OUTLINED_FUNCTION_4>
c0de44e2:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de44e6:	2604      	movs	r6, #4
c0de44e8:	7128      	strb	r0, [r5, #4]
c0de44ea:	0a00      	lsrs	r0, r0, #8
c0de44ec:	7168      	strb	r0, [r5, #5]
c0de44ee:	9d04      	ldr	r5, [sp, #16]
c0de44f0:	f000 fa28 	bl	c0de4944 <OUTLINED_FUNCTION_6>
c0de44f4:	79c0      	ldrb	r0, [r0, #7]
c0de44f6:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de44fa:	4370      	muls	r0, r6
c0de44fc:	0a01      	lsrs	r1, r0, #8
c0de44fe:	71b8      	strb	r0, [r7, #6]
c0de4500:	71f9      	strb	r1, [r7, #7]
c0de4502:	68a9      	ldr	r1, [r5, #8]
c0de4504:	b329      	cbz	r1, c0de4552 <nbgl_layoutAddCenteredInfo+0x1c2>
c0de4506:	4641      	mov	r1, r8
c0de4508:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de450c:	784c      	ldrb	r4, [r1, #1]
c0de450e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4512:	788d      	ldrb	r5, [r1, #2]
c0de4514:	78c9      	ldrb	r1, [r1, #3]
c0de4516:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de451a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de451e:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4522:	463a      	mov	r2, r7
c0de4524:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de4528:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de452c:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4530:	0e0b      	lsrs	r3, r1, #24
c0de4532:	70d3      	strb	r3, [r2, #3]
c0de4534:	0c0b      	lsrs	r3, r1, #16
c0de4536:	0a09      	lsrs	r1, r1, #8
c0de4538:	7051      	strb	r1, [r2, #1]
c0de453a:	2100      	movs	r1, #0
c0de453c:	7093      	strb	r3, [r2, #2]
c0de453e:	7211      	strb	r1, [r2, #8]
c0de4540:	2e03      	cmp	r6, #3
c0de4542:	bf38      	it	cc
c0de4544:	2101      	movcc	r1, #1
c0de4546:	0089      	lsls	r1, r1, #2
c0de4548:	71d1      	strb	r1, [r2, #7]
c0de454a:	2108      	movs	r1, #8
c0de454c:	e00a      	b.n	c0de4564 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de454e:	f000 ba05 	b.w	c0de495c <OUTLINED_FUNCTION_8>
c0de4552:	6869      	ldr	r1, [r5, #4]
c0de4554:	b119      	cbz	r1, c0de455e <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4556:	f000 f9f9 	bl	c0de494c <OUTLINED_FUNCTION_7>
c0de455a:	2102      	movs	r1, #2
c0de455c:	e002      	b.n	c0de4564 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de455e:	f000 f9f5 	bl	c0de494c <OUTLINED_FUNCTION_7>
c0de4562:	2105      	movs	r1, #5
c0de4564:	7111      	strb	r1, [r2, #4]
c0de4566:	4641      	mov	r1, r8
c0de4568:	4458      	add	r0, fp
c0de456a:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de456e:	784c      	ldrb	r4, [r1, #1]
c0de4570:	788d      	ldrb	r5, [r1, #2]
c0de4572:	78ce      	ldrb	r6, [r1, #3]
c0de4574:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4578:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de457c:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4580:	9d04      	ldr	r5, [sp, #16]
c0de4582:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4586:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de458a:	1c5a      	adds	r2, r3, #1
c0de458c:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4590:	7e79      	ldrb	r1, [r7, #25]
c0de4592:	7eba      	ldrb	r2, [r7, #26]
c0de4594:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4598:	eb00 0b01 	add.w	fp, r0, r1
c0de459c:	6868      	ldr	r0, [r5, #4]
c0de459e:	2800      	cmp	r0, #0
c0de45a0:	d071      	beq.n	c0de4686 <nbgl_layoutAddCenteredInfo+0x2f6>
c0de45a2:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de45a6:	2004      	movs	r0, #4
c0de45a8:	f8cd a00c 	str.w	sl, [sp, #12]
c0de45ac:	f002 ffc9 	bl	c0de7542 <nbgl_objPoolGet>
c0de45b0:	2403      	movs	r4, #3
c0de45b2:	4607      	mov	r7, r0
c0de45b4:	77c4      	strb	r4, [r0, #31]
c0de45b6:	6868      	ldr	r0, [r5, #4]
c0de45b8:	f003 f9aa 	bl	c0de7910 <pic>
c0de45bc:	4601      	mov	r1, r0
c0de45be:	2000      	movs	r0, #0
c0de45c0:	2301      	movs	r3, #1
c0de45c2:	7178      	strb	r0, [r7, #5]
c0de45c4:	2072      	movs	r0, #114	@ 0x72
c0de45c6:	0e0a      	lsrs	r2, r1, #24
c0de45c8:	7138      	strb	r0, [r7, #4]
c0de45ca:	200a      	movs	r0, #10
c0de45cc:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de45d0:	2005      	movs	r0, #5
c0de45d2:	f887 0020 	strb.w	r0, [r7, #32]
c0de45d6:	f000 f984 	bl	c0de48e2 <OUTLINED_FUNCTION_0>
c0de45da:	4682      	mov	sl, r0
c0de45dc:	2804      	cmp	r0, #4
c0de45de:	d31c      	bcc.n	c0de461a <nbgl_layoutAddCenteredInfo+0x28a>
c0de45e0:	463d      	mov	r5, r7
c0de45e2:	f04f 0c01 	mov.w	ip, #1
c0de45e6:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de45ea:	f805 4c01 	strb.w	r4, [r5, #-1]
c0de45ee:	786a      	ldrb	r2, [r5, #1]
c0de45f0:	78ab      	ldrb	r3, [r5, #2]
c0de45f2:	78ec      	ldrb	r4, [r5, #3]
c0de45f4:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de45f8:	ae05      	add	r6, sp, #20
c0de45fa:	e9cd 6c00 	strd	r6, ip, [sp]
c0de45fe:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4602:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de4606:	2303      	movs	r3, #3
c0de4608:	f000 f994 	bl	c0de4934 <OUTLINED_FUNCTION_4>
c0de460c:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de4610:	f04f 0a03 	mov.w	sl, #3
c0de4614:	7128      	strb	r0, [r5, #4]
c0de4616:	0a00      	lsrs	r0, r0, #8
c0de4618:	7168      	strb	r0, [r5, #5]
c0de461a:	f000 f993 	bl	c0de4944 <OUTLINED_FUNCTION_6>
c0de461e:	4641      	mov	r1, r8
c0de4620:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de4624:	784c      	ldrb	r4, [r1, #1]
c0de4626:	788d      	ldrb	r5, [r1, #2]
c0de4628:	78ce      	ldrb	r6, [r1, #3]
c0de462a:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de462e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4632:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4636:	463d      	mov	r5, r7
c0de4638:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de463c:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de4640:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4644:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4648:	0e26      	lsrs	r6, r4, #24
c0de464a:	70ee      	strb	r6, [r5, #3]
c0de464c:	0c26      	lsrs	r6, r4, #16
c0de464e:	0a24      	lsrs	r4, r4, #8
c0de4650:	74fc      	strb	r4, [r7, #19]
c0de4652:	70ae      	strb	r6, [r5, #2]
c0de4654:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4658:	2302      	movs	r3, #2
c0de465a:	2400      	movs	r4, #0
c0de465c:	3201      	adds	r2, #1
c0de465e:	767b      	strb	r3, [r7, #25]
c0de4660:	2308      	movs	r3, #8
c0de4662:	76bc      	strb	r4, [r7, #26]
c0de4664:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4668:	79c0      	ldrb	r0, [r0, #7]
c0de466a:	75bb      	strb	r3, [r7, #22]
c0de466c:	fb0a f300 	mul.w	r3, sl, r0
c0de4670:	fb0a b000 	mla	r0, sl, r0, fp
c0de4674:	e9dd a503 	ldrd	sl, r5, [sp, #12]
c0de4678:	71bb      	strb	r3, [r7, #6]
c0de467a:	0a1b      	lsrs	r3, r3, #8
c0de467c:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4680:	f100 0b02 	add.w	fp, r0, #2
c0de4684:	71fb      	strb	r3, [r7, #7]
c0de4686:	7b28      	ldrb	r0, [r5, #12]
c0de4688:	2102      	movs	r1, #2
c0de468a:	2800      	cmp	r0, #0
c0de468c:	bf08      	it	eq
c0de468e:	2105      	moveq	r1, #5
c0de4690:	f888 1016 	strb.w	r1, [r8, #22]
c0de4694:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de4698:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de469c:	2272      	movs	r2, #114	@ 0x72
c0de469e:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de46a2:	2000      	movs	r0, #0
c0de46a4:	f888 2004 	strb.w	r2, [r8, #4]
c0de46a8:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de46ac:	3101      	adds	r1, #1
c0de46ae:	f888 b006 	strb.w	fp, [r8, #6]
c0de46b2:	f888 0019 	strb.w	r0, [r8, #25]
c0de46b6:	f888 001a 	strb.w	r0, [r8, #26]
c0de46ba:	f888 0005 	strb.w	r0, [r8, #5]
c0de46be:	f888 001f 	strb.w	r0, [r8, #31]
c0de46c2:	f888 2007 	strb.w	r2, [r8, #7]
c0de46c6:	f88a 1002 	strb.w	r1, [sl, #2]
c0de46ca:	b006      	add	sp, #24
c0de46cc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de46d0 <nbgl_layoutAddSwitch>:
c0de46d0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de46d4:	2800      	cmp	r0, #0
c0de46d6:	f000 8084 	beq.w	c0de47e2 <nbgl_layoutAddSwitch+0x112>
c0de46da:	460d      	mov	r5, r1
c0de46dc:	7841      	ldrb	r1, [r0, #1]
c0de46de:	4604      	mov	r4, r0
c0de46e0:	f000 f92d 	bl	c0de493e <OUTLINED_FUNCTION_5>
c0de46e4:	f04f 0803 	mov.w	r8, #3
c0de46e8:	4606      	mov	r6, r0
c0de46ea:	f880 801f 	strb.w	r8, [r0, #31]
c0de46ee:	6828      	ldr	r0, [r5, #0]
c0de46f0:	f003 f90e 	bl	c0de7910 <pic>
c0de46f4:	4601      	mov	r1, r0
c0de46f6:	2072      	movs	r0, #114	@ 0x72
c0de46f8:	2700      	movs	r7, #0
c0de46fa:	2301      	movs	r3, #1
c0de46fc:	7130      	strb	r0, [r6, #4]
c0de46fe:	2008      	movs	r0, #8
c0de4700:	0e0a      	lsrs	r2, r1, #24
c0de4702:	7177      	strb	r7, [r6, #5]
c0de4704:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4708:	2005      	movs	r0, #5
c0de470a:	f886 0020 	strb.w	r0, [r6, #32]
c0de470e:	4630      	mov	r0, r6
c0de4710:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4714:	70c2      	strb	r2, [r0, #3]
c0de4716:	0c0a      	lsrs	r2, r1, #16
c0de4718:	7082      	strb	r2, [r0, #2]
c0de471a:	0a08      	lsrs	r0, r1, #8
c0de471c:	2272      	movs	r2, #114	@ 0x72
c0de471e:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4722:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de4726:	f040 0001 	orr.w	r0, r0, #1
c0de472a:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de472e:	2008      	movs	r0, #8
c0de4730:	f002 ff20 	bl	c0de7574 <nbgl_getTextNbLinesInWidth>
c0de4734:	2801      	cmp	r0, #1
c0de4736:	d854      	bhi.n	c0de47e2 <nbgl_layoutAddSwitch+0x112>
c0de4738:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de473c:	f002 ff10 	bl	c0de7560 <nbgl_getFontLineHeight>
c0de4740:	6861      	ldr	r1, [r4, #4]
c0de4742:	78a2      	ldrb	r2, [r4, #2]
c0de4744:	76b7      	strb	r7, [r6, #26]
c0de4746:	71f7      	strb	r7, [r6, #7]
c0de4748:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de474c:	71b0      	strb	r0, [r6, #6]
c0de474e:	2002      	movs	r0, #2
c0de4750:	f886 8019 	strb.w	r8, [r6, #25]
c0de4754:	75b0      	strb	r0, [r6, #22]
c0de4756:	1c50      	adds	r0, r2, #1
c0de4758:	70a0      	strb	r0, [r4, #2]
c0de475a:	6868      	ldr	r0, [r5, #4]
c0de475c:	2800      	cmp	r0, #0
c0de475e:	d04e      	beq.n	c0de47fe <nbgl_layoutAddSwitch+0x12e>
c0de4760:	7861      	ldrb	r1, [r4, #1]
c0de4762:	f000 f8ec 	bl	c0de493e <OUTLINED_FUNCTION_5>
c0de4766:	4606      	mov	r6, r0
c0de4768:	2003      	movs	r0, #3
c0de476a:	77f0      	strb	r0, [r6, #31]
c0de476c:	6868      	ldr	r0, [r5, #4]
c0de476e:	f003 f8cf 	bl	c0de7910 <pic>
c0de4772:	2172      	movs	r1, #114	@ 0x72
c0de4774:	4637      	mov	r7, r6
c0de4776:	f04f 0800 	mov.w	r8, #0
c0de477a:	f04f 0a05 	mov.w	sl, #5
c0de477e:	7131      	strb	r1, [r6, #4]
c0de4780:	210a      	movs	r1, #10
c0de4782:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de4786:	f886 8005 	strb.w	r8, [r6, #5]
c0de478a:	f886 a020 	strb.w	sl, [r6, #32]
c0de478e:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4792:	0e01      	lsrs	r1, r0, #24
c0de4794:	70f9      	strb	r1, [r7, #3]
c0de4796:	0c01      	lsrs	r1, r0, #16
c0de4798:	0a00      	lsrs	r0, r0, #8
c0de479a:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de479e:	200a      	movs	r0, #10
c0de47a0:	70b9      	strb	r1, [r7, #2]
c0de47a2:	f002 fedd 	bl	c0de7560 <nbgl_getFontLineHeight>
c0de47a6:	09c1      	lsrs	r1, r0, #7
c0de47a8:	f896 2027 	ldrb.w	r2, [r6, #39]	@ 0x27
c0de47ac:	78bb      	ldrb	r3, [r7, #2]
c0de47ae:	0040      	lsls	r0, r0, #1
c0de47b0:	71f1      	strb	r1, [r6, #7]
c0de47b2:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de47b6:	71b0      	strb	r0, [r6, #6]
c0de47b8:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de47bc:	f041 0101 	orr.w	r1, r1, #1
c0de47c0:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de47c4:	7839      	ldrb	r1, [r7, #0]
c0de47c6:	78ff      	ldrb	r7, [r7, #3]
c0de47c8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de47cc:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de47d0:	2301      	movs	r3, #1
c0de47d2:	2701      	movs	r7, #1
c0de47d4:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de47d8:	2272      	movs	r2, #114	@ 0x72
c0de47da:	f002 fecb 	bl	c0de7574 <nbgl_getTextNbLinesInWidth>
c0de47de:	2802      	cmp	r0, #2
c0de47e0:	d902      	bls.n	c0de47e8 <nbgl_layoutAddSwitch+0x118>
c0de47e2:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de47e6:	e05c      	b.n	c0de48a2 <nbgl_layoutAddSwitch+0x1d2>
c0de47e8:	6860      	ldr	r0, [r4, #4]
c0de47ea:	78a1      	ldrb	r1, [r4, #2]
c0de47ec:	f886 801a 	strb.w	r8, [r6, #26]
c0de47f0:	f886 a016 	strb.w	sl, [r6, #22]
c0de47f4:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de47f8:	1c48      	adds	r0, r1, #1
c0de47fa:	7677      	strb	r7, [r6, #25]
c0de47fc:	70a0      	strb	r0, [r4, #2]
c0de47fe:	7861      	ldrb	r1, [r4, #1]
c0de4800:	2005      	movs	r0, #5
c0de4802:	f002 fe9e 	bl	c0de7542 <nbgl_objPoolGet>
c0de4806:	2600      	movs	r6, #0
c0de4808:	4607      	mov	r7, r0
c0de480a:	f04f 0a03 	mov.w	sl, #3
c0de480e:	f04f 0808 	mov.w	r8, #8
c0de4812:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de4816:	2001      	movs	r0, #1
c0de4818:	f887 a020 	strb.w	sl, [r7, #32]
c0de481c:	f887 a01f 	strb.w	sl, [r7, #31]
c0de4820:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de4824:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4828:	7a28      	ldrb	r0, [r5, #8]
c0de482a:	4a1f      	ldr	r2, [pc, #124]	@ (c0de48a8 <nbgl_layoutAddSwitch+0x1d8>)
c0de482c:	491f      	ldr	r1, [pc, #124]	@ (c0de48ac <nbgl_layoutAddSwitch+0x1dc>)
c0de482e:	2801      	cmp	r0, #1
c0de4830:	447a      	add	r2, pc
c0de4832:	4479      	add	r1, pc
c0de4834:	bf08      	it	eq
c0de4836:	4611      	moveq	r1, r2
c0de4838:	463a      	mov	r2, r7
c0de483a:	0e0b      	lsrs	r3, r1, #24
c0de483c:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de4840:	70d3      	strb	r3, [r2, #3]
c0de4842:	0c0b      	lsrs	r3, r1, #16
c0de4844:	7093      	strb	r3, [r2, #2]
c0de4846:	0a0a      	lsrs	r2, r1, #8
c0de4848:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de484c:	2801      	cmp	r0, #1
c0de484e:	4638      	mov	r0, r7
c0de4850:	4a17      	ldr	r2, [pc, #92]	@ (c0de48b0 <nbgl_layoutAddSwitch+0x1e0>)
c0de4852:	4d18      	ldr	r5, [pc, #96]	@ (c0de48b4 <nbgl_layoutAddSwitch+0x1e4>)
c0de4854:	447a      	add	r2, pc
c0de4856:	447d      	add	r5, pc
c0de4858:	bf18      	it	ne
c0de485a:	462a      	movne	r2, r5
c0de485c:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de4860:	0e13      	lsrs	r3, r2, #24
c0de4862:	70c3      	strb	r3, [r0, #3]
c0de4864:	0c13      	lsrs	r3, r2, #16
c0de4866:	7083      	strb	r3, [r0, #2]
c0de4868:	0a10      	lsrs	r0, r2, #8
c0de486a:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de486e:	2008      	movs	r0, #8
c0de4870:	f002 fe8a 	bl	c0de7588 <nbgl_getTextWidth>
c0de4874:	6861      	ldr	r1, [r4, #4]
c0de4876:	78a2      	ldrb	r2, [r4, #2]
c0de4878:	786b      	ldrb	r3, [r5, #1]
c0de487a:	76be      	strb	r6, [r7, #26]
c0de487c:	71fe      	strb	r6, [r7, #7]
c0de487e:	f887 8016 	strb.w	r8, [r7, #22]
c0de4882:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de4886:	210c      	movs	r1, #12
c0de4888:	f887 a019 	strb.w	sl, [r7, #25]
c0de488c:	71b9      	strb	r1, [r7, #6]
c0de488e:	7829      	ldrb	r1, [r5, #0]
c0de4890:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4894:	4408      	add	r0, r1
c0de4896:	1c51      	adds	r1, r2, #1
c0de4898:	300a      	adds	r0, #10
c0de489a:	7138      	strb	r0, [r7, #4]
c0de489c:	0a00      	lsrs	r0, r0, #8
c0de489e:	70a1      	strb	r1, [r4, #2]
c0de48a0:	7178      	strb	r0, [r7, #5]
c0de48a2:	4630      	mov	r0, r6
c0de48a4:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de48a8:	00003ad5 	.word	0x00003ad5
c0de48ac:	00003ba2 	.word	0x00003ba2
c0de48b0:	0000386d 	.word	0x0000386d
c0de48b4:	00003855 	.word	0x00003855

c0de48b8 <nbgl_layoutDraw>:
c0de48b8:	b120      	cbz	r0, c0de48c4 <nbgl_layoutDraw+0xc>
c0de48ba:	b580      	push	{r7, lr}
c0de48bc:	f002 fe32 	bl	c0de7524 <nbgl_screenRedraw>
c0de48c0:	2000      	movs	r0, #0
c0de48c2:	bd80      	pop	{r7, pc}
c0de48c4:	f000 b84a 	b.w	c0de495c <OUTLINED_FUNCTION_8>

c0de48c8 <nbgl_layoutRelease>:
c0de48c8:	b148      	cbz	r0, c0de48de <nbgl_layoutRelease+0x16>
c0de48ca:	b510      	push	{r4, lr}
c0de48cc:	4604      	mov	r4, r0
c0de48ce:	7800      	ldrb	r0, [r0, #0]
c0de48d0:	b110      	cbz	r0, c0de48d8 <nbgl_layoutRelease+0x10>
c0de48d2:	7860      	ldrb	r0, [r4, #1]
c0de48d4:	f002 fe2b 	bl	c0de752e <nbgl_screenPop>
c0de48d8:	2000      	movs	r0, #0
c0de48da:	70a0      	strb	r0, [r4, #2]
c0de48dc:	bd10      	pop	{r4, pc}
c0de48de:	f000 b83d 	b.w	c0de495c <OUTLINED_FUNCTION_8>

c0de48e2 <OUTLINED_FUNCTION_0>:
c0de48e2:	4638      	mov	r0, r7
c0de48e4:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de48e8:	70c2      	strb	r2, [r0, #3]
c0de48ea:	0c0a      	lsrs	r2, r1, #16
c0de48ec:	7082      	strb	r2, [r0, #2]
c0de48ee:	0a08      	lsrs	r0, r1, #8
c0de48f0:	2272      	movs	r2, #114	@ 0x72
c0de48f2:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de48f6:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de48fa:	f040 0001 	orr.w	r0, r0, #1
c0de48fe:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4902:	200a      	movs	r0, #10
c0de4904:	f002 be36 	b.w	c0de7574 <nbgl_getTextNbLinesInWidth>

c0de4908 <OUTLINED_FUNCTION_2>:
c0de4908:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de490c:	784b      	ldrb	r3, [r1, #1]
c0de490e:	788d      	ldrb	r5, [r1, #2]
c0de4910:	78c9      	ldrb	r1, [r1, #3]
c0de4912:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4916:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de491a:	9d05      	ldr	r5, [sp, #20]
c0de491c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4920:	4770      	bx	lr

c0de4922 <OUTLINED_FUNCTION_3>:
c0de4922:	70c2      	strb	r2, [r0, #3]
c0de4924:	0c0a      	lsrs	r2, r1, #16
c0de4926:	7082      	strb	r2, [r0, #2]
c0de4928:	0a08      	lsrs	r0, r1, #8
c0de492a:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de492e:	2008      	movs	r0, #8
c0de4930:	f002 be2a 	b.w	c0de7588 <nbgl_getTextWidth>

c0de4934 <OUTLINED_FUNCTION_4>:
c0de4934:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4938:	2272      	movs	r2, #114	@ 0x72
c0de493a:	f002 be2a 	b.w	c0de7592 <nbgl_getTextMaxLenInNbLines>

c0de493e <OUTLINED_FUNCTION_5>:
c0de493e:	2004      	movs	r0, #4
c0de4940:	f002 bdff 	b.w	c0de7542 <nbgl_objPoolGet>

c0de4944 <OUTLINED_FUNCTION_6>:
c0de4944:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4948:	f002 be05 	b.w	c0de7556 <nbgl_getFont>

c0de494c <OUTLINED_FUNCTION_7>:
c0de494c:	2100      	movs	r1, #0
c0de494e:	463a      	mov	r2, r7
c0de4950:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4954:	70d1      	strb	r1, [r2, #3]
c0de4956:	7091      	strb	r1, [r2, #2]
c0de4958:	7051      	strb	r1, [r2, #1]
c0de495a:	4770      	bx	lr

c0de495c <OUTLINED_FUNCTION_8>:
c0de495c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4960:	4770      	bx	lr

c0de4962 <OUTLINED_FUNCTION_9>:
c0de4962:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4966:	2003      	movs	r0, #3
c0de4968:	f887 0020 	strb.w	r0, [r7, #32]
c0de496c:	77f8      	strb	r0, [r7, #31]
c0de496e:	4770      	bx	lr

c0de4970 <nbgl_stepDrawText>:
c0de4970:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4974:	460e      	mov	r6, r1
c0de4976:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de4978:	4605      	mov	r5, r0
c0de497a:	2000      	movs	r0, #0
c0de497c:	469a      	mov	sl, r3
c0de497e:	4617      	mov	r7, r2
c0de4980:	f000 f830 	bl	c0de49e4 <getFreeContext>
c0de4984:	b348      	cbz	r0, c0de49da <nbgl_stepDrawText+0x6a>
c0de4986:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de498a:	4604      	mov	r4, r0
c0de498c:	6146      	str	r6, [r0, #20]
c0de498e:	b10f      	cbz	r7, c0de4994 <nbgl_stepDrawText+0x24>
c0de4990:	f000 fae1 	bl	c0de4f56 <OUTLINED_FUNCTION_1>
c0de4994:	200a      	movs	r0, #10
c0de4996:	f1b8 0f00 	cmp.w	r8, #0
c0de499a:	bf19      	ittee	ne
c0de499c:	4641      	movne	r1, r8
c0de499e:	2203      	movne	r2, #3
c0de49a0:	4651      	moveq	r1, sl
c0de49a2:	2204      	moveq	r2, #4
c0de49a4:	2372      	movs	r3, #114	@ 0x72
c0de49a6:	f002 fdea 	bl	c0de757e <nbgl_getTextNbPagesInWidth>
c0de49aa:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de49ac:	7020      	strb	r0, [r4, #0]
c0de49ae:	072a      	lsls	r2, r5, #28
c0de49b0:	bf46      	itte	mi
c0de49b2:	3801      	submi	r0, #1
c0de49b4:	7060      	strbmi	r0, [r4, #1]
c0de49b6:	7860      	ldrbpl	r0, [r4, #1]
c0de49b8:	f8c4 800c 	str.w	r8, [r4, #12]
c0de49bc:	f8c4 a004 	str.w	sl, [r4, #4]
c0de49c0:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de49c4:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de49c8:	7461      	strb	r1, [r4, #17]
c0de49ca:	f005 0103 	and.w	r1, r5, #3
c0de49ce:	7421      	strb	r1, [r4, #16]
c0de49d0:	b2c1      	uxtb	r1, r0
c0de49d2:	4620      	mov	r0, r4
c0de49d4:	f000 f82c 	bl	c0de4a30 <displayTextPage>
c0de49d8:	e000      	b.n	c0de49dc <nbgl_stepDrawText+0x6c>
c0de49da:	2400      	movs	r4, #0
c0de49dc:	4620      	mov	r0, r4
c0de49de:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de49e4 <getFreeContext>:
c0de49e4:	b570      	push	{r4, r5, r6, lr}
c0de49e6:	4604      	mov	r4, r0
c0de49e8:	4810      	ldr	r0, [pc, #64]	@ (c0de4a2c <getFreeContext+0x48>)
c0de49ea:	460d      	mov	r5, r1
c0de49ec:	b151      	cbz	r1, c0de4a04 <getFreeContext+0x20>
c0de49ee:	2100      	movs	r1, #0
c0de49f0:	2990      	cmp	r1, #144	@ 0x90
c0de49f2:	d00a      	beq.n	c0de4a0a <getFreeContext+0x26>
c0de49f4:	eb09 0200 	add.w	r2, r9, r0
c0de49f8:	440a      	add	r2, r1
c0de49fa:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de49fe:	b132      	cbz	r2, c0de4a0e <getFreeContext+0x2a>
c0de4a00:	3148      	adds	r1, #72	@ 0x48
c0de4a02:	e7f5      	b.n	c0de49f0 <getFreeContext+0xc>
c0de4a04:	eb09 0600 	add.w	r6, r9, r0
c0de4a08:	e005      	b.n	c0de4a16 <getFreeContext+0x32>
c0de4a0a:	2600      	movs	r6, #0
c0de4a0c:	e00b      	b.n	c0de4a26 <getFreeContext+0x42>
c0de4a0e:	4448      	add	r0, r9
c0de4a10:	4408      	add	r0, r1
c0de4a12:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de4a16:	4630      	mov	r0, r6
c0de4a18:	2148      	movs	r1, #72	@ 0x48
c0de4a1a:	f003 fa85 	bl	c0de7f28 <__aeabi_memclr>
c0de4a1e:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de4a22:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de4a26:	4630      	mov	r0, r6
c0de4a28:	bd70      	pop	{r4, r5, r6, pc}
c0de4a2a:	bf00      	nop
c0de4a2c:	000008f8 	.word	0x000008f8

c0de4a30 <displayTextPage>:
c0de4a30:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4a34:	b091      	sub	sp, #68	@ 0x44
c0de4a36:	4604      	mov	r4, r0
c0de4a38:	7840      	ldrb	r0, [r0, #1]
c0de4a3a:	460e      	mov	r6, r1
c0de4a3c:	4288      	cmp	r0, r1
c0de4a3e:	d21c      	bcs.n	c0de4a7a <displayTextPage+0x4a>
c0de4a40:	68a5      	ldr	r5, [r4, #8]
c0de4a42:	7820      	ldrb	r0, [r4, #0]
c0de4a44:	7066      	strb	r6, [r4, #1]
c0de4a46:	3801      	subs	r0, #1
c0de4a48:	42b0      	cmp	r0, r6
c0de4a4a:	dd31      	ble.n	c0de4ab0 <displayTextPage+0x80>
c0de4a4c:	68e0      	ldr	r0, [r4, #12]
c0de4a4e:	2101      	movs	r1, #1
c0de4a50:	2303      	movs	r3, #3
c0de4a52:	aa08      	add	r2, sp, #32
c0de4a54:	e9cd 2100 	strd	r2, r1, [sp]
c0de4a58:	4629      	mov	r1, r5
c0de4a5a:	2800      	cmp	r0, #0
c0de4a5c:	bf08      	it	eq
c0de4a5e:	2304      	moveq	r3, #4
c0de4a60:	200a      	movs	r0, #10
c0de4a62:	2272      	movs	r2, #114	@ 0x72
c0de4a64:	f002 fd95 	bl	c0de7592 <nbgl_getTextMaxLenInNbLines>
c0de4a68:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de4a6c:	1868      	adds	r0, r5, r1
c0de4a6e:	60a0      	str	r0, [r4, #8]
c0de4a70:	5c69      	ldrb	r1, [r5, r1]
c0de4a72:	290a      	cmp	r1, #10
c0de4a74:	d11e      	bne.n	c0de4ab4 <displayTextPage+0x84>
c0de4a76:	3001      	adds	r0, #1
c0de4a78:	e01b      	b.n	c0de4ab2 <displayTextPage+0x82>
c0de4a7a:	68e5      	ldr	r5, [r4, #12]
c0de4a7c:	2d00      	cmp	r5, #0
c0de4a7e:	d074      	beq.n	c0de4b6a <displayTextPage+0x13a>
c0de4a80:	2700      	movs	r7, #0
c0de4a82:	f04f 0801 	mov.w	r8, #1
c0de4a86:	f10d 0a20 	add.w	sl, sp, #32
c0de4a8a:	42be      	cmp	r6, r7
c0de4a8c:	d0d9      	beq.n	c0de4a42 <displayTextPage+0x12>
c0de4a8e:	7820      	ldrb	r0, [r4, #0]
c0de4a90:	3801      	subs	r0, #1
c0de4a92:	42b8      	cmp	r0, r7
c0de4a94:	dd0a      	ble.n	c0de4aac <displayTextPage+0x7c>
c0de4a96:	200a      	movs	r0, #10
c0de4a98:	4629      	mov	r1, r5
c0de4a9a:	2272      	movs	r2, #114	@ 0x72
c0de4a9c:	2303      	movs	r3, #3
c0de4a9e:	e9cd a800 	strd	sl, r8, [sp]
c0de4aa2:	f002 fd76 	bl	c0de7592 <nbgl_getTextMaxLenInNbLines>
c0de4aa6:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4aaa:	4405      	add	r5, r0
c0de4aac:	3701      	adds	r7, #1
c0de4aae:	e7ec      	b.n	c0de4a8a <displayTextPage+0x5a>
c0de4ab0:	2000      	movs	r0, #0
c0de4ab2:	60a0      	str	r0, [r4, #8]
c0de4ab4:	484f      	ldr	r0, [pc, #316]	@ (c0de4bf4 <displayTextPage+0x1c4>)
c0de4ab6:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4aba:	4478      	add	r0, pc
c0de4abc:	9004      	str	r0, [sp, #16]
c0de4abe:	2000      	movs	r0, #0
c0de4ac0:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4ac4:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4ac8:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4acc:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4ace:	ab05      	add	r3, sp, #20
c0de4ad0:	c307      	stmia	r3!, {r0, r1, r2}
c0de4ad2:	a803      	add	r0, sp, #12
c0de4ad4:	f7ff f986 	bl	c0de3de4 <nbgl_layoutGet>
c0de4ad8:	7827      	ldrb	r7, [r4, #0]
c0de4ada:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de4ade:	4606      	mov	r6, r0
c0de4ae0:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4ae2:	7c20      	ldrb	r0, [r4, #16]
c0de4ae4:	4639      	mov	r1, r7
c0de4ae6:	4652      	mov	r2, sl
c0de4ae8:	f000 f8fc 	bl	c0de4ce4 <getNavigationInfo>
c0de4aec:	4680      	mov	r8, r0
c0de4aee:	f88d 000b 	strb.w	r0, [sp, #11]
c0de4af2:	68e0      	ldr	r0, [r4, #12]
c0de4af4:	b188      	cbz	r0, c0de4b1a <displayTextPage+0xea>
c0de4af6:	2f01      	cmp	r7, #1
c0de4af8:	d115      	bne.n	c0de4b26 <displayTextPage+0xf6>
c0de4afa:	6861      	ldr	r1, [r4, #4]
c0de4afc:	2008      	movs	r0, #8
c0de4afe:	2272      	movs	r2, #114	@ 0x72
c0de4b00:	2300      	movs	r3, #0
c0de4b02:	2600      	movs	r6, #0
c0de4b04:	f002 fd36 	bl	c0de7574 <nbgl_getTextNbLinesInWidth>
c0de4b08:	2802      	cmp	r0, #2
c0de4b0a:	d348      	bcc.n	c0de4b9e <displayTextPage+0x16e>
c0de4b0c:	6861      	ldr	r1, [r4, #4]
c0de4b0e:	2018      	movs	r0, #24
c0de4b10:	f104 0218 	add.w	r2, r4, #24
c0de4b14:	e9cd 2000 	strd	r2, r0, [sp]
c0de4b18:	e021      	b.n	c0de4b5e <displayTextPage+0x12e>
c0de4b1a:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4b1e:	4630      	mov	r0, r6
c0de4b20:	4629      	mov	r1, r5
c0de4b22:	2200      	movs	r2, #0
c0de4b24:	e055      	b.n	c0de4bd2 <displayTextPage+0x1a2>
c0de4b26:	f10a 0001 	add.w	r0, sl, #1
c0de4b2a:	6863      	ldr	r3, [r4, #4]
c0de4b2c:	2124      	movs	r1, #36	@ 0x24
c0de4b2e:	e9cd 0700 	strd	r0, r7, [sp]
c0de4b32:	af08      	add	r7, sp, #32
c0de4b34:	4a30      	ldr	r2, [pc, #192]	@ (c0de4bf8 <displayTextPage+0x1c8>)
c0de4b36:	4638      	mov	r0, r7
c0de4b38:	447a      	add	r2, pc
c0de4b3a:	f002 fd57 	bl	c0de75ec <snprintf>
c0de4b3e:	2008      	movs	r0, #8
c0de4b40:	4639      	mov	r1, r7
c0de4b42:	2272      	movs	r2, #114	@ 0x72
c0de4b44:	2300      	movs	r3, #0
c0de4b46:	f04f 0a00 	mov.w	sl, #0
c0de4b4a:	f002 fd13 	bl	c0de7574 <nbgl_getTextNbLinesInWidth>
c0de4b4e:	f104 0c18 	add.w	ip, r4, #24
c0de4b52:	2802      	cmp	r0, #2
c0de4b54:	d32c      	bcc.n	c0de4bb0 <displayTextPage+0x180>
c0de4b56:	2018      	movs	r0, #24
c0de4b58:	e9cd c000 	strd	ip, r0, [sp]
c0de4b5c:	a908      	add	r1, sp, #32
c0de4b5e:	2008      	movs	r0, #8
c0de4b60:	2272      	movs	r2, #114	@ 0x72
c0de4b62:	2301      	movs	r3, #1
c0de4b64:	f002 fd1a 	bl	c0de759c <nbgl_textReduceOnNbLines>
c0de4b68:	e02d      	b.n	c0de4bc6 <displayTextPage+0x196>
c0de4b6a:	6865      	ldr	r5, [r4, #4]
c0de4b6c:	2700      	movs	r7, #0
c0de4b6e:	f04f 0801 	mov.w	r8, #1
c0de4b72:	f10d 0a20 	add.w	sl, sp, #32
c0de4b76:	42be      	cmp	r6, r7
c0de4b78:	f43f af63 	beq.w	c0de4a42 <displayTextPage+0x12>
c0de4b7c:	7820      	ldrb	r0, [r4, #0]
c0de4b7e:	3801      	subs	r0, #1
c0de4b80:	42b8      	cmp	r0, r7
c0de4b82:	dd0a      	ble.n	c0de4b9a <displayTextPage+0x16a>
c0de4b84:	200a      	movs	r0, #10
c0de4b86:	4629      	mov	r1, r5
c0de4b88:	2272      	movs	r2, #114	@ 0x72
c0de4b8a:	2304      	movs	r3, #4
c0de4b8c:	e9cd a800 	strd	sl, r8, [sp]
c0de4b90:	f002 fcff 	bl	c0de7592 <nbgl_getTextMaxLenInNbLines>
c0de4b94:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4b98:	4405      	add	r5, r0
c0de4b9a:	3701      	adds	r7, #1
c0de4b9c:	e7eb      	b.n	c0de4b76 <displayTextPage+0x146>
c0de4b9e:	6861      	ldr	r1, [r4, #4]
c0de4ba0:	f104 0018 	add.w	r0, r4, #24
c0de4ba4:	2217      	movs	r2, #23
c0de4ba6:	f003 f9b5 	bl	c0de7f14 <__aeabi_memcpy>
c0de4baa:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de4bae:	e00a      	b.n	c0de4bc6 <displayTextPage+0x196>
c0de4bb0:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de4bb2:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de4bb6:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4bba:	8838      	ldrh	r0, [r7, #0]
c0de4bbc:	f8ac 0000 	strh.w	r0, [ip]
c0de4bc0:	78b8      	ldrb	r0, [r7, #2]
c0de4bc2:	f88c 0002 	strb.w	r0, [ip, #2]
c0de4bc6:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4bca:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bcc:	f104 0118 	add.w	r1, r4, #24
c0de4bd0:	462a      	mov	r2, r5
c0de4bd2:	f7ff f9c9 	bl	c0de3f68 <nbgl_layoutAddText>
c0de4bd6:	f1b8 0f00 	cmp.w	r8, #0
c0de4bda:	d004      	beq.n	c0de4be6 <displayTextPage+0x1b6>
c0de4bdc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bde:	f10d 010a 	add.w	r1, sp, #10
c0de4be2:	f7ff f963 	bl	c0de3eac <nbgl_layoutAddNavigation>
c0de4be6:	f000 f9e9 	bl	c0de4fbc <OUTLINED_FUNCTION_4>
c0de4bea:	f002 fc82 	bl	c0de74f2 <nbgl_refresh>
c0de4bee:	b011      	add	sp, #68	@ 0x44
c0de4bf0:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4bf4:	000001bb 	.word	0x000001bb
c0de4bf8:	000036c6 	.word	0x000036c6

c0de4bfc <nbgl_stepDrawCenteredInfo>:
c0de4bfc:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4c00:	b087      	sub	sp, #28
c0de4c02:	460d      	mov	r5, r1
c0de4c04:	4682      	mov	sl, r0
c0de4c06:	a802      	add	r0, sp, #8
c0de4c08:	f000 f9d3 	bl	c0de4fb2 <OUTLINED_FUNCTION_3>
c0de4c0c:	4819      	ldr	r0, [pc, #100]	@ (c0de4c74 <nbgl_stepDrawCenteredInfo+0x78>)
c0de4c0e:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4c10:	4478      	add	r0, pc
c0de4c12:	f000 f9c5 	bl	c0de4fa0 <OUTLINED_FUNCTION_2>
c0de4c16:	b168      	cbz	r0, c0de4c34 <nbgl_stepDrawCenteredInfo+0x38>
c0de4c18:	4604      	mov	r4, r0
c0de4c1a:	6145      	str	r5, [r0, #20]
c0de4c1c:	b10f      	cbz	r7, c0de4c22 <nbgl_stepDrawCenteredInfo+0x26>
c0de4c1e:	f000 f953 	bl	c0de4ec8 <OUTLINED_FUNCTION_0>
c0de4c22:	f000 f9ce 	bl	c0de4fc2 <OUTLINED_FUNCTION_5>
c0de4c26:	d007      	beq.n	c0de4c38 <nbgl_stepDrawCenteredInfo+0x3c>
c0de4c28:	2802      	cmp	r0, #2
c0de4c2a:	d007      	beq.n	c0de4c3c <nbgl_stepDrawCenteredInfo+0x40>
c0de4c2c:	2801      	cmp	r0, #1
c0de4c2e:	d108      	bne.n	c0de4c42 <nbgl_stepDrawCenteredInfo+0x46>
c0de4c30:	2002      	movs	r0, #2
c0de4c32:	e004      	b.n	c0de4c3e <nbgl_stepDrawCenteredInfo+0x42>
c0de4c34:	2400      	movs	r4, #0
c0de4c36:	e018      	b.n	c0de4c6a <nbgl_stepDrawCenteredInfo+0x6e>
c0de4c38:	2003      	movs	r0, #3
c0de4c3a:	e000      	b.n	c0de4c3e <nbgl_stepDrawCenteredInfo+0x42>
c0de4c3c:	2001      	movs	r0, #1
c0de4c3e:	2500      	movs	r5, #0
c0de4c40:	e000      	b.n	c0de4c44 <nbgl_stepDrawCenteredInfo+0x48>
c0de4c42:	2000      	movs	r0, #0
c0de4c44:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4c48:	a802      	add	r0, sp, #8
c0de4c4a:	f7ff f8cb 	bl	c0de3de4 <nbgl_layoutGet>
c0de4c4e:	4641      	mov	r1, r8
c0de4c50:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4c52:	f7ff fb9d 	bl	c0de4390 <nbgl_layoutAddCenteredInfo>
c0de4c56:	b925      	cbnz	r5, c0de4c62 <nbgl_stepDrawCenteredInfo+0x66>
c0de4c58:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4c5a:	f10d 0106 	add.w	r1, sp, #6
c0de4c5e:	f7ff f925 	bl	c0de3eac <nbgl_layoutAddNavigation>
c0de4c62:	f000 f9ab 	bl	c0de4fbc <OUTLINED_FUNCTION_4>
c0de4c66:	f002 fc44 	bl	c0de74f2 <nbgl_refresh>
c0de4c6a:	4620      	mov	r0, r4
c0de4c6c:	b007      	add	sp, #28
c0de4c6e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4c72:	bf00      	nop
c0de4c74:	00000065 	.word	0x00000065

c0de4c78 <actionCallback>:
c0de4c78:	b510      	push	{r4, lr}
c0de4c7a:	460c      	mov	r4, r1
c0de4c7c:	f000 f8f0 	bl	c0de4e60 <getContextFromLayout>
c0de4c80:	b378      	cbz	r0, c0de4ce2 <actionCallback+0x6a>
c0de4c82:	2c04      	cmp	r4, #4
c0de4c84:	d006      	beq.n	c0de4c94 <actionCallback+0x1c>
c0de4c86:	2c01      	cmp	r4, #1
c0de4c88:	d008      	beq.n	c0de4c9c <actionCallback+0x24>
c0de4c8a:	bb54      	cbnz	r4, c0de4ce2 <actionCallback+0x6a>
c0de4c8c:	7841      	ldrb	r1, [r0, #1]
c0de4c8e:	b1d9      	cbz	r1, c0de4cc8 <actionCallback+0x50>
c0de4c90:	3901      	subs	r1, #1
c0de4c92:	e009      	b.n	c0de4ca8 <actionCallback+0x30>
c0de4c94:	6942      	ldr	r2, [r0, #20]
c0de4c96:	b322      	cbz	r2, c0de4ce2 <actionCallback+0x6a>
c0de4c98:	2104      	movs	r1, #4
c0de4c9a:	e01f      	b.n	c0de4cdc <actionCallback+0x64>
c0de4c9c:	7802      	ldrb	r2, [r0, #0]
c0de4c9e:	7841      	ldrb	r1, [r0, #1]
c0de4ca0:	3a01      	subs	r2, #1
c0de4ca2:	428a      	cmp	r2, r1
c0de4ca4:	dd05      	ble.n	c0de4cb2 <actionCallback+0x3a>
c0de4ca6:	3101      	adds	r1, #1
c0de4ca8:	b2c9      	uxtb	r1, r1
c0de4caa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4cae:	f7ff bebf 	b.w	c0de4a30 <displayTextPage>
c0de4cb2:	7c01      	ldrb	r1, [r0, #16]
c0de4cb4:	f041 0102 	orr.w	r1, r1, #2
c0de4cb8:	2903      	cmp	r1, #3
c0de4cba:	d001      	beq.n	c0de4cc0 <actionCallback+0x48>
c0de4cbc:	7c41      	ldrb	r1, [r0, #17]
c0de4cbe:	b181      	cbz	r1, c0de4ce2 <actionCallback+0x6a>
c0de4cc0:	6942      	ldr	r2, [r0, #20]
c0de4cc2:	b172      	cbz	r2, c0de4ce2 <actionCallback+0x6a>
c0de4cc4:	2101      	movs	r1, #1
c0de4cc6:	e009      	b.n	c0de4cdc <actionCallback+0x64>
c0de4cc8:	7c01      	ldrb	r1, [r0, #16]
c0de4cca:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de4cce:	2902      	cmp	r1, #2
c0de4cd0:	d001      	beq.n	c0de4cd6 <actionCallback+0x5e>
c0de4cd2:	7c41      	ldrb	r1, [r0, #17]
c0de4cd4:	b129      	cbz	r1, c0de4ce2 <actionCallback+0x6a>
c0de4cd6:	6942      	ldr	r2, [r0, #20]
c0de4cd8:	b11a      	cbz	r2, c0de4ce2 <actionCallback+0x6a>
c0de4cda:	2100      	movs	r1, #0
c0de4cdc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4ce0:	4710      	bx	r2
c0de4ce2:	bd10      	pop	{r4, pc}

c0de4ce4 <getNavigationInfo>:
c0de4ce4:	4603      	mov	r3, r0
c0de4ce6:	2902      	cmp	r1, #2
c0de4ce8:	d308      	bcc.n	c0de4cfc <getNavigationInfo+0x18>
c0de4cea:	3901      	subs	r1, #1
c0de4cec:	4610      	mov	r0, r2
c0de4cee:	2a00      	cmp	r2, #0
c0de4cf0:	bf18      	it	ne
c0de4cf2:	2001      	movne	r0, #1
c0de4cf4:	4291      	cmp	r1, r2
c0de4cf6:	bf88      	it	hi
c0de4cf8:	3002      	addhi	r0, #2
c0de4cfa:	e000      	b.n	c0de4cfe <getNavigationInfo+0x1a>
c0de4cfc:	2000      	movs	r0, #0
c0de4cfe:	2b03      	cmp	r3, #3
c0de4d00:	d00a      	beq.n	c0de4d18 <getNavigationInfo+0x34>
c0de4d02:	2b02      	cmp	r3, #2
c0de4d04:	bf04      	itt	eq
c0de4d06:	f040 0001 	orreq.w	r0, r0, #1
c0de4d0a:	4770      	bxeq	lr
c0de4d0c:	2b01      	cmp	r3, #1
c0de4d0e:	bf04      	itt	eq
c0de4d10:	f040 0002 	orreq.w	r0, r0, #2
c0de4d14:	4770      	bxeq	lr
c0de4d16:	4770      	bx	lr
c0de4d18:	2003      	movs	r0, #3
c0de4d1a:	4770      	bx	lr

c0de4d1c <nbgl_stepDrawMenuList>:
c0de4d1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4d1e:	460f      	mov	r7, r1
c0de4d20:	4606      	mov	r6, r0
c0de4d22:	2002      	movs	r0, #2
c0de4d24:	4619      	mov	r1, r3
c0de4d26:	4615      	mov	r5, r2
c0de4d28:	f7ff fe5c 	bl	c0de49e4 <getFreeContext>
c0de4d2c:	b170      	cbz	r0, c0de4d4c <nbgl_stepDrawMenuList+0x30>
c0de4d2e:	4604      	mov	r4, r0
c0de4d30:	b10f      	cbz	r7, c0de4d36 <nbgl_stepDrawMenuList+0x1a>
c0de4d32:	f000 f910 	bl	c0de4f56 <OUTLINED_FUNCTION_1>
c0de4d36:	7928      	ldrb	r0, [r5, #4]
c0de4d38:	7220      	strb	r0, [r4, #8]
c0de4d3a:	7968      	ldrb	r0, [r5, #5]
c0de4d3c:	7260      	strb	r0, [r4, #9]
c0de4d3e:	6828      	ldr	r0, [r5, #0]
c0de4d40:	e9c4 6000 	strd	r6, r0, [r4]
c0de4d44:	4620      	mov	r0, r4
c0de4d46:	f000 f805 	bl	c0de4d54 <displayMenuList>
c0de4d4a:	e000      	b.n	c0de4d4e <nbgl_stepDrawMenuList+0x32>
c0de4d4c:	2400      	movs	r4, #0
c0de4d4e:	4620      	mov	r0, r4
c0de4d50:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de4d54 <displayMenuList>:
c0de4d54:	b5b0      	push	{r4, r5, r7, lr}
c0de4d56:	b086      	sub	sp, #24
c0de4d58:	4604      	mov	r4, r0
c0de4d5a:	2000      	movs	r0, #0
c0de4d5c:	9001      	str	r0, [sp, #4]
c0de4d5e:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4d62:	4819      	ldr	r0, [pc, #100]	@ (c0de4dc8 <displayMenuList+0x74>)
c0de4d64:	4478      	add	r0, pc
c0de4d66:	9002      	str	r0, [sp, #8]
c0de4d68:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4d6c:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4d70:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4d72:	ab03      	add	r3, sp, #12
c0de4d74:	c307      	stmia	r3!, {r0, r1, r2}
c0de4d76:	a801      	add	r0, sp, #4
c0de4d78:	f7ff f834 	bl	c0de3de4 <nbgl_layoutGet>
c0de4d7c:	1d25      	adds	r5, r4, #4
c0de4d7e:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4d80:	4629      	mov	r1, r5
c0de4d82:	f7ff fab1 	bl	c0de42e8 <nbgl_layoutAddMenuList>
c0de4d86:	7a20      	ldrb	r0, [r4, #8]
c0de4d88:	2802      	cmp	r0, #2
c0de4d8a:	d316      	bcc.n	c0de4dba <displayMenuList+0x66>
c0de4d8c:	2101      	movs	r1, #1
c0de4d8e:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de4d92:	7969      	ldrb	r1, [r5, #5]
c0de4d94:	2900      	cmp	r1, #0
c0de4d96:	460a      	mov	r2, r1
c0de4d98:	bf18      	it	ne
c0de4d9a:	2201      	movne	r2, #1
c0de4d9c:	3801      	subs	r0, #1
c0de4d9e:	f88d 2003 	strb.w	r2, [sp, #3]
c0de4da2:	4288      	cmp	r0, r1
c0de4da4:	d903      	bls.n	c0de4dae <displayMenuList+0x5a>
c0de4da6:	1c90      	adds	r0, r2, #2
c0de4da8:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4dac:	e000      	b.n	c0de4db0 <displayMenuList+0x5c>
c0de4dae:	b121      	cbz	r1, c0de4dba <displayMenuList+0x66>
c0de4db0:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4db2:	f10d 0102 	add.w	r1, sp, #2
c0de4db6:	f7ff f879 	bl	c0de3eac <nbgl_layoutAddNavigation>
c0de4dba:	f000 f8ff 	bl	c0de4fbc <OUTLINED_FUNCTION_4>
c0de4dbe:	f002 fb98 	bl	c0de74f2 <nbgl_refresh>
c0de4dc2:	b006      	add	sp, #24
c0de4dc4:	bdb0      	pop	{r4, r5, r7, pc}
c0de4dc6:	bf00      	nop
c0de4dc8:	00000121 	.word	0x00000121

c0de4dcc <nbgl_stepDrawSwitch>:
c0de4dcc:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4dd0:	b087      	sub	sp, #28
c0de4dd2:	460d      	mov	r5, r1
c0de4dd4:	4682      	mov	sl, r0
c0de4dd6:	a802      	add	r0, sp, #8
c0de4dd8:	f000 f8eb 	bl	c0de4fb2 <OUTLINED_FUNCTION_3>
c0de4ddc:	4819      	ldr	r0, [pc, #100]	@ (c0de4e44 <nbgl_stepDrawSwitch+0x78>)
c0de4dde:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4de0:	4478      	add	r0, pc
c0de4de2:	f000 f8dd 	bl	c0de4fa0 <OUTLINED_FUNCTION_2>
c0de4de6:	b168      	cbz	r0, c0de4e04 <nbgl_stepDrawSwitch+0x38>
c0de4de8:	4604      	mov	r4, r0
c0de4dea:	6145      	str	r5, [r0, #20]
c0de4dec:	b10f      	cbz	r7, c0de4df2 <nbgl_stepDrawSwitch+0x26>
c0de4dee:	f000 f86b 	bl	c0de4ec8 <OUTLINED_FUNCTION_0>
c0de4df2:	f000 f8e6 	bl	c0de4fc2 <OUTLINED_FUNCTION_5>
c0de4df6:	d007      	beq.n	c0de4e08 <nbgl_stepDrawSwitch+0x3c>
c0de4df8:	2802      	cmp	r0, #2
c0de4dfa:	d007      	beq.n	c0de4e0c <nbgl_stepDrawSwitch+0x40>
c0de4dfc:	2801      	cmp	r0, #1
c0de4dfe:	d108      	bne.n	c0de4e12 <nbgl_stepDrawSwitch+0x46>
c0de4e00:	2002      	movs	r0, #2
c0de4e02:	e004      	b.n	c0de4e0e <nbgl_stepDrawSwitch+0x42>
c0de4e04:	2400      	movs	r4, #0
c0de4e06:	e018      	b.n	c0de4e3a <nbgl_stepDrawSwitch+0x6e>
c0de4e08:	2003      	movs	r0, #3
c0de4e0a:	e000      	b.n	c0de4e0e <nbgl_stepDrawSwitch+0x42>
c0de4e0c:	2001      	movs	r0, #1
c0de4e0e:	2500      	movs	r5, #0
c0de4e10:	e000      	b.n	c0de4e14 <nbgl_stepDrawSwitch+0x48>
c0de4e12:	2000      	movs	r0, #0
c0de4e14:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4e18:	a802      	add	r0, sp, #8
c0de4e1a:	f7fe ffe3 	bl	c0de3de4 <nbgl_layoutGet>
c0de4e1e:	4641      	mov	r1, r8
c0de4e20:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4e22:	f7ff fc55 	bl	c0de46d0 <nbgl_layoutAddSwitch>
c0de4e26:	b925      	cbnz	r5, c0de4e32 <nbgl_stepDrawSwitch+0x66>
c0de4e28:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4e2a:	f10d 0106 	add.w	r1, sp, #6
c0de4e2e:	f7ff f83d 	bl	c0de3eac <nbgl_layoutAddNavigation>
c0de4e32:	f000 f8c3 	bl	c0de4fbc <OUTLINED_FUNCTION_4>
c0de4e36:	f002 fb5c 	bl	c0de74f2 <nbgl_refresh>
c0de4e3a:	4620      	mov	r0, r4
c0de4e3c:	b007      	add	sp, #28
c0de4e3e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4e42:	bf00      	nop
c0de4e44:	fffffe95 	.word	0xfffffe95

c0de4e48 <nbgl_stepRelease>:
c0de4e48:	b138      	cbz	r0, c0de4e5a <nbgl_stepRelease+0x12>
c0de4e4a:	b510      	push	{r4, lr}
c0de4e4c:	4604      	mov	r4, r0
c0de4e4e:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4e50:	f7ff fd3a 	bl	c0de48c8 <nbgl_layoutRelease>
c0de4e54:	2100      	movs	r1, #0
c0de4e56:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4e58:	bd10      	pop	{r4, pc}
c0de4e5a:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4e5e:	4770      	bx	lr

c0de4e60 <getContextFromLayout>:
c0de4e60:	4a08      	ldr	r2, [pc, #32]	@ (c0de4e84 <getContextFromLayout+0x24>)
c0de4e62:	2100      	movs	r1, #0
c0de4e64:	29d8      	cmp	r1, #216	@ 0xd8
c0de4e66:	bf04      	itt	eq
c0de4e68:	2000      	moveq	r0, #0
c0de4e6a:	4770      	bxeq	lr
c0de4e6c:	eb09 0302 	add.w	r3, r9, r2
c0de4e70:	440b      	add	r3, r1
c0de4e72:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4e74:	4283      	cmp	r3, r0
c0de4e76:	d001      	beq.n	c0de4e7c <getContextFromLayout+0x1c>
c0de4e78:	3148      	adds	r1, #72	@ 0x48
c0de4e7a:	e7f3      	b.n	c0de4e64 <getContextFromLayout+0x4>
c0de4e7c:	eb09 0002 	add.w	r0, r9, r2
c0de4e80:	4408      	add	r0, r1
c0de4e82:	4770      	bx	lr
c0de4e84:	000008f8 	.word	0x000008f8

c0de4e88 <menuListActionCallback>:
c0de4e88:	b510      	push	{r4, lr}
c0de4e8a:	460c      	mov	r4, r1
c0de4e8c:	f7ff ffe8 	bl	c0de4e60 <getContextFromLayout>
c0de4e90:	b1c8      	cbz	r0, c0de4ec6 <menuListActionCallback+0x3e>
c0de4e92:	2c04      	cmp	r4, #4
c0de4e94:	d006      	beq.n	c0de4ea4 <menuListActionCallback+0x1c>
c0de4e96:	2c01      	cmp	r4, #1
c0de4e98:	d00a      	beq.n	c0de4eb0 <menuListActionCallback+0x28>
c0de4e9a:	b9a4      	cbnz	r4, c0de4ec6 <menuListActionCallback+0x3e>
c0de4e9c:	7a41      	ldrb	r1, [r0, #9]
c0de4e9e:	b191      	cbz	r1, c0de4ec6 <menuListActionCallback+0x3e>
c0de4ea0:	3901      	subs	r1, #1
c0de4ea2:	e00b      	b.n	c0de4ebc <menuListActionCallback+0x34>
c0de4ea4:	7a41      	ldrb	r1, [r0, #9]
c0de4ea6:	6802      	ldr	r2, [r0, #0]
c0de4ea8:	4608      	mov	r0, r1
c0de4eaa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4eae:	4710      	bx	r2
c0de4eb0:	7a02      	ldrb	r2, [r0, #8]
c0de4eb2:	7a41      	ldrb	r1, [r0, #9]
c0de4eb4:	3a01      	subs	r2, #1
c0de4eb6:	428a      	cmp	r2, r1
c0de4eb8:	dd05      	ble.n	c0de4ec6 <menuListActionCallback+0x3e>
c0de4eba:	3101      	adds	r1, #1
c0de4ebc:	7241      	strb	r1, [r0, #9]
c0de4ebe:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4ec2:	f7ff bf47 	b.w	c0de4d54 <displayMenuList>
c0de4ec6:	bd10      	pop	{r4, pc}

c0de4ec8 <OUTLINED_FUNCTION_0>:
c0de4ec8:	7838      	ldrb	r0, [r7, #0]
c0de4eca:	7879      	ldrb	r1, [r7, #1]
c0de4ecc:	78ba      	ldrb	r2, [r7, #2]
c0de4ece:	78fb      	ldrb	r3, [r7, #3]
c0de4ed0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4ed4:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4ed8:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4edc:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4ede:	4638      	mov	r0, r7
c0de4ee0:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4ee4:	7a79      	ldrb	r1, [r7, #9]
c0de4ee6:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4eea:	7882      	ldrb	r2, [r0, #2]
c0de4eec:	78c3      	ldrb	r3, [r0, #3]
c0de4eee:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4ef2:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4ef6:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4ef8:	4639      	mov	r1, r7
c0de4efa:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de4efe:	797a      	ldrb	r2, [r7, #5]
c0de4f00:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4f04:	788b      	ldrb	r3, [r1, #2]
c0de4f06:	78cd      	ldrb	r5, [r1, #3]
c0de4f08:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4f0c:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de4f10:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de4f12:	783a      	ldrb	r2, [r7, #0]
c0de4f14:	787b      	ldrb	r3, [r7, #1]
c0de4f16:	78bd      	ldrb	r5, [r7, #2]
c0de4f18:	78fe      	ldrb	r6, [r7, #3]
c0de4f1a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4f1e:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de4f22:	7803      	ldrb	r3, [r0, #0]
c0de4f24:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4f28:	7885      	ldrb	r5, [r0, #2]
c0de4f2a:	78c0      	ldrb	r0, [r0, #3]
c0de4f2c:	9204      	str	r2, [sp, #16]
c0de4f2e:	7a7a      	ldrb	r2, [r7, #9]
c0de4f30:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4f34:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4f38:	788b      	ldrb	r3, [r1, #2]
c0de4f3a:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4f3e:	780a      	ldrb	r2, [r1, #0]
c0de4f40:	78c9      	ldrb	r1, [r1, #3]
c0de4f42:	9006      	str	r0, [sp, #24]
c0de4f44:	7978      	ldrb	r0, [r7, #5]
c0de4f46:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4f4a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4f4e:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4f52:	9005      	str	r0, [sp, #20]
c0de4f54:	4770      	bx	lr

c0de4f56 <OUTLINED_FUNCTION_1>:
c0de4f56:	7838      	ldrb	r0, [r7, #0]
c0de4f58:	7879      	ldrb	r1, [r7, #1]
c0de4f5a:	78ba      	ldrb	r2, [r7, #2]
c0de4f5c:	78fb      	ldrb	r3, [r7, #3]
c0de4f5e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4f62:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4f66:	4639      	mov	r1, r7
c0de4f68:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4f6c:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4f70:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4f72:	7a78      	ldrb	r0, [r7, #9]
c0de4f74:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4f78:	788a      	ldrb	r2, [r1, #2]
c0de4f7a:	78c9      	ldrb	r1, [r1, #3]
c0de4f7c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4f80:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4f84:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4f86:	7978      	ldrb	r0, [r7, #5]
c0de4f88:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4f8c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4f90:	78b9      	ldrb	r1, [r7, #2]
c0de4f92:	78fa      	ldrb	r2, [r7, #3]
c0de4f94:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4f98:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4f9c:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4f9e:	4770      	bx	lr

c0de4fa0 <OUTLINED_FUNCTION_2>:
c0de4fa0:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4fa4:	9003      	str	r0, [sp, #12]
c0de4fa6:	2000      	movs	r0, #0
c0de4fa8:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4fac:	2001      	movs	r0, #1
c0de4fae:	f7ff bd19 	b.w	c0de49e4 <getFreeContext>

c0de4fb2 <OUTLINED_FUNCTION_3>:
c0de4fb2:	2114      	movs	r1, #20
c0de4fb4:	4698      	mov	r8, r3
c0de4fb6:	4617      	mov	r7, r2
c0de4fb8:	f002 bfb6 	b.w	c0de7f28 <__aeabi_memclr>

c0de4fbc <OUTLINED_FUNCTION_4>:
c0de4fbc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4fbe:	f7ff bc7b 	b.w	c0de48b8 <nbgl_layoutDraw>

c0de4fc2 <OUTLINED_FUNCTION_5>:
c0de4fc2:	2501      	movs	r5, #1
c0de4fc4:	f00a 0003 	and.w	r0, sl, #3
c0de4fc8:	2803      	cmp	r0, #3
c0de4fca:	7025      	strb	r5, [r4, #0]
c0de4fcc:	7420      	strb	r0, [r4, #16]
c0de4fce:	4770      	bx	lr

c0de4fd0 <nbgl_useCaseHomeAndSettings>:
c0de4fd0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4fd4:	4607      	mov	r7, r0
c0de4fd6:	4810      	ldr	r0, [pc, #64]	@ (c0de5018 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4fd8:	f001 fd31 	bl	c0de6a3e <OUTLINED_FUNCTION_3>
c0de4fdc:	e9c4 760f 	strd	r7, r6, [r4, #60]	@ 0x3c
c0de4fe0:	6465      	str	r5, [r4, #68]	@ 0x44
c0de4fe2:	9d06      	ldr	r5, [sp, #24]
c0de4fe4:	4628      	mov	r0, r5
c0de4fe6:	f002 fc93 	bl	c0de7910 <pic>
c0de4fea:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de4fec:	9807      	ldr	r0, [sp, #28]
c0de4fee:	f002 fc8f 	bl	c0de7910 <pic>
c0de4ff2:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4ff4:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4ff8:	6561      	str	r1, [r4, #84]	@ 0x54
c0de4ffa:	9908      	ldr	r1, [sp, #32]
c0de4ffc:	e9c4 0113 	strd	r0, r1, [r4, #76]	@ 0x4c
c0de5000:	bf18      	it	ne
c0de5002:	2d00      	cmpne	r5, #0
c0de5004:	d103      	bne.n	c0de500e <nbgl_useCaseHomeAndSettings+0x3e>
c0de5006:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de500a:	f000 b843 	b.w	c0de5094 <startUseCaseHome>
c0de500e:	4640      	mov	r0, r8
c0de5010:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5014:	f000 b802 	b.w	c0de501c <startUseCaseSettingsAtPage>
c0de5018:	000009d0 	.word	0x000009d0

c0de501c <startUseCaseSettingsAtPage>:
c0de501c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de501e:	b08f      	sub	sp, #60	@ 0x3c
c0de5020:	4604      	mov	r4, r0
c0de5022:	a801      	add	r0, sp, #4
c0de5024:	2138      	movs	r1, #56	@ 0x38
c0de5026:	f002 ff7f 	bl	c0de7f28 <__aeabi_memclr>
c0de502a:	4e19      	ldr	r6, [pc, #100]	@ (c0de5090 <startUseCaseSettingsAtPage+0x74>)
c0de502c:	eb09 0006 	add.w	r0, r9, r6
c0de5030:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5034:	280f      	cmp	r0, #15
c0de5036:	bf1e      	ittt	ne
c0de5038:	eb09 0006 	addne.w	r0, r9, r6
c0de503c:	210e      	movne	r1, #14
c0de503e:	f880 102c 	strbne.w	r1, [r0, #44]	@ 0x2c
c0de5042:	eb09 0006 	add.w	r0, r9, r6
c0de5046:	2101      	movs	r1, #1
c0de5048:	2700      	movs	r7, #0
c0de504a:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de504e:	ad01      	add	r5, sp, #4
c0de5050:	eb09 0006 	add.w	r0, r9, r6
c0de5054:	6c80      	ldr	r0, [r0, #72]	@ 0x48
c0de5056:	7a01      	ldrb	r1, [r0, #8]
c0de5058:	428f      	cmp	r7, r1
c0de505a:	d20e      	bcs.n	c0de507a <startUseCaseSettingsAtPage+0x5e>
c0de505c:	b279      	sxtb	r1, r7
c0de505e:	462a      	mov	r2, r5
c0de5060:	f000 fd06 	bl	c0de5a70 <getContentAtIdx>
c0de5064:	f000 fd5e 	bl	c0de5b24 <getContentNbElement>
c0de5068:	eb09 0106 	add.w	r1, r9, r6
c0de506c:	3701      	adds	r7, #1
c0de506e:	f891 2034 	ldrb.w	r2, [r1, #52]	@ 0x34
c0de5072:	4410      	add	r0, r2
c0de5074:	f881 0034 	strb.w	r0, [r1, #52]	@ 0x34
c0de5078:	e7ea      	b.n	c0de5050 <startUseCaseSettingsAtPage+0x34>
c0de507a:	eb09 0006 	add.w	r0, r9, r6
c0de507e:	2100      	movs	r1, #0
c0de5080:	f880 4035 	strb.w	r4, [r0, #53]	@ 0x35
c0de5084:	2000      	movs	r0, #0
c0de5086:	f000 ff57 	bl	c0de5f38 <displaySettingsPage>
c0de508a:	b00f      	add	sp, #60	@ 0x3c
c0de508c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de508e:	bf00      	nop
c0de5090:	000009d0 	.word	0x000009d0

c0de5094 <startUseCaseHome>:
c0de5094:	b510      	push	{r4, lr}
c0de5096:	4821      	ldr	r0, [pc, #132]	@ (c0de511c <startUseCaseHome+0x88>)
c0de5098:	eb09 0100 	add.w	r1, r9, r0
c0de509c:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de50a0:	290d      	cmp	r1, #13
c0de50a2:	d009      	beq.n	c0de50b8 <startUseCaseHome+0x24>
c0de50a4:	290e      	cmp	r1, #14
c0de50a6:	d114      	bne.n	c0de50d2 <startUseCaseHome+0x3e>
c0de50a8:	eb09 0100 	add.w	r1, r9, r0
c0de50ac:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de50ae:	2102      	movs	r1, #2
c0de50b0:	2a00      	cmp	r2, #0
c0de50b2:	bf08      	it	eq
c0de50b4:	2101      	moveq	r1, #1
c0de50b6:	e00d      	b.n	c0de50d4 <startUseCaseHome+0x40>
c0de50b8:	eb09 0200 	add.w	r2, r9, r0
c0de50bc:	2102      	movs	r1, #2
c0de50be:	6d14      	ldr	r4, [r2, #80]	@ 0x50
c0de50c0:	6c93      	ldr	r3, [r2, #72]	@ 0x48
c0de50c2:	2c00      	cmp	r4, #0
c0de50c4:	bf08      	it	eq
c0de50c6:	2101      	moveq	r1, #1
c0de50c8:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de50cc:	b133      	cbz	r3, c0de50dc <startUseCaseHome+0x48>
c0de50ce:	3101      	adds	r1, #1
c0de50d0:	e000      	b.n	c0de50d4 <startUseCaseHome+0x40>
c0de50d2:	2100      	movs	r1, #0
c0de50d4:	eb09 0200 	add.w	r2, r9, r0
c0de50d8:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de50dc:	eb09 0200 	add.w	r2, r9, r0
c0de50e0:	210c      	movs	r1, #12
c0de50e2:	e9d2 3412 	ldrd	r3, r4, [r2, #72]	@ 0x48
c0de50e6:	f882 102c 	strb.w	r1, [r2, #44]	@ 0x2c
c0de50ea:	2103      	movs	r1, #3
c0de50ec:	2b00      	cmp	r3, #0
c0de50ee:	bf08      	it	eq
c0de50f0:	2102      	moveq	r1, #2
c0de50f2:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de50f6:	b124      	cbz	r4, c0de5102 <startUseCaseHome+0x6e>
c0de50f8:	3101      	adds	r1, #1
c0de50fa:	eb09 0200 	add.w	r2, r9, r0
c0de50fe:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de5102:	eb09 0200 	add.w	r2, r9, r0
c0de5106:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de5108:	b11a      	cbz	r2, c0de5112 <startUseCaseHome+0x7e>
c0de510a:	4448      	add	r0, r9
c0de510c:	3101      	adds	r1, #1
c0de510e:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de5112:	2000      	movs	r0, #0
c0de5114:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5118:	f000 bffe 	b.w	c0de6118 <displayHomePage>
c0de511c:	000009d0 	.word	0x000009d0

c0de5120 <nbgl_useCaseReview>:
c0de5120:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de5122:	4614      	mov	r4, r2
c0de5124:	460a      	mov	r2, r1
c0de5126:	4601      	mov	r1, r0
c0de5128:	9808      	ldr	r0, [sp, #32]
c0de512a:	9003      	str	r0, [sp, #12]
c0de512c:	9807      	ldr	r0, [sp, #28]
c0de512e:	9002      	str	r0, [sp, #8]
c0de5130:	9806      	ldr	r0, [sp, #24]
c0de5132:	e9cd 3000 	strd	r3, r0, [sp]
c0de5136:	2002      	movs	r0, #2
c0de5138:	4623      	mov	r3, r4
c0de513a:	f000 f801 	bl	c0de5140 <useCaseReview>
c0de513e:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de5140 <useCaseReview>:
c0de5140:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5144:	4607      	mov	r7, r0
c0de5146:	4811      	ldr	r0, [pc, #68]	@ (c0de518c <useCaseReview+0x4c>)
c0de5148:	4688      	mov	r8, r1
c0de514a:	2140      	movs	r1, #64	@ 0x40
c0de514c:	461d      	mov	r5, r3
c0de514e:	4614      	mov	r4, r2
c0de5150:	f001 fc6f 	bl	c0de6a32 <OUTLINED_FUNCTION_2>
c0de5154:	9808      	ldr	r0, [sp, #32]
c0de5156:	6530      	str	r0, [r6, #80]	@ 0x50
c0de5158:	9807      	ldr	r0, [sp, #28]
c0de515a:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de515c:	9906      	ldr	r1, [sp, #24]
c0de515e:	e9c6 4510 	strd	r4, r5, [r6, #64]	@ 0x40
c0de5162:	64b1      	str	r1, [r6, #72]	@ 0x48
c0de5164:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5166:	f8c6 8030 	str.w	r8, [r6, #48]	@ 0x30
c0de516a:	f886 702c 	strb.w	r7, [r6, #44]	@ 0x2c
c0de516e:	63f1      	str	r1, [r6, #60]	@ 0x3c
c0de5170:	2104      	movs	r1, #4
c0de5172:	2800      	cmp	r0, #0
c0de5174:	bf08      	it	eq
c0de5176:	2103      	moveq	r1, #3
c0de5178:	7a20      	ldrb	r0, [r4, #8]
c0de517a:	4408      	add	r0, r1
c0de517c:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de5180:	2000      	movs	r0, #0
c0de5182:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5186:	f000 b8d1 	b.w	c0de532c <displayReviewPage>
c0de518a:	bf00      	nop
c0de518c:	000009d0 	.word	0x000009d0

c0de5190 <nbgl_useCaseAdvancedReview>:
c0de5190:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5194:	b088      	sub	sp, #32
c0de5196:	4617      	mov	r7, r2
c0de5198:	460a      	mov	r2, r1
c0de519a:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de519e:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	@ 0x40
c0de51a2:	4606      	mov	r6, r0
c0de51a4:	f1ba 0f00 	cmp.w	sl, #0
c0de51a8:	d013      	beq.n	c0de51d2 <nbgl_useCaseAdvancedReview+0x42>
c0de51aa:	f8da 0000 	ldr.w	r0, [sl]
c0de51ae:	9107      	str	r1, [sp, #28]
c0de51b0:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de51b4:	2808      	cmp	r0, #8
c0de51b6:	d018      	beq.n	c0de51ea <nbgl_useCaseAdvancedReview+0x5a>
c0de51b8:	b9e0      	cbnz	r0, c0de51f4 <nbgl_useCaseAdvancedReview+0x64>
c0de51ba:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de51be:	b928      	cbnz	r0, c0de51cc <nbgl_useCaseAdvancedReview+0x3c>
c0de51c0:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de51c4:	b910      	cbnz	r0, c0de51cc <nbgl_useCaseAdvancedReview+0x3c>
c0de51c6:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de51ca:	b110      	cbz	r0, c0de51d2 <nbgl_useCaseAdvancedReview+0x42>
c0de51cc:	4698      	mov	r8, r3
c0de51ce:	4615      	mov	r5, r2
c0de51d0:	e014      	b.n	c0de51fc <nbgl_useCaseAdvancedReview+0x6c>
c0de51d2:	e9cd 3500 	strd	r3, r5, [sp]
c0de51d6:	e9cd 4102 	strd	r4, r1, [sp, #8]
c0de51da:	2002      	movs	r0, #2
c0de51dc:	4631      	mov	r1, r6
c0de51de:	463b      	mov	r3, r7
c0de51e0:	f7ff ffae 	bl	c0de5140 <useCaseReview>
c0de51e4:	b008      	add	sp, #32
c0de51e6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de51ea:	4698      	mov	r8, r3
c0de51ec:	4615      	mov	r5, r2
c0de51ee:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de51f2:	e003      	b.n	c0de51fc <nbgl_useCaseAdvancedReview+0x6c>
c0de51f4:	4698      	mov	r8, r3
c0de51f6:	4615      	mov	r5, r2
c0de51f8:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de51fc:	f8df b06c 	ldr.w	fp, [pc, #108]	@ c0de526c <nbgl_useCaseAdvancedReview+0xdc>
c0de5200:	212c      	movs	r1, #44	@ 0x2c
c0de5202:	eb09 040b 	add.w	r4, r9, fp
c0de5206:	4620      	mov	r0, r4
c0de5208:	f002 fe8e 	bl	c0de7f28 <__aeabi_memclr>
c0de520c:	2002      	movs	r0, #2
c0de520e:	462a      	mov	r2, r5
c0de5210:	60a5      	str	r5, [r4, #8]
c0de5212:	9d06      	ldr	r5, [sp, #24]
c0de5214:	463b      	mov	r3, r7
c0de5216:	60e7      	str	r7, [r4, #12]
c0de5218:	9f05      	ldr	r7, [sp, #20]
c0de521a:	4641      	mov	r1, r8
c0de521c:	f8c4 8010 	str.w	r8, [r4, #16]
c0de5220:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de5224:	6066      	str	r6, [r4, #4]
c0de5226:	f809 000b 	strb.w	r0, [r9, fp]
c0de522a:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de522e:	6167      	str	r7, [r4, #20]
c0de5230:	e9c4 5a06 	strd	r5, sl, [r4, #24]
c0de5234:	f8c4 8020 	str.w	r8, [r4, #32]
c0de5238:	b120      	cbz	r0, c0de5244 <nbgl_useCaseAdvancedReview+0xb4>
c0de523a:	b008      	add	sp, #32
c0de523c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5240:	f000 b816 	b.w	c0de5270 <displayPrelude>
c0de5244:	f89a 0000 	ldrb.w	r0, [sl]
c0de5248:	f010 0f16 	tst.w	r0, #22
c0de524c:	d102      	bne.n	c0de5254 <nbgl_useCaseAdvancedReview+0xc4>
c0de524e:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de5252:	b120      	cbz	r0, c0de525e <nbgl_useCaseAdvancedReview+0xce>
c0de5254:	b008      	add	sp, #32
c0de5256:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de525a:	f000 b815 	b.w	c0de5288 <displayInitialWarning>
c0de525e:	e9cd 1700 	strd	r1, r7, [sp]
c0de5262:	2002      	movs	r0, #2
c0de5264:	4631      	mov	r1, r6
c0de5266:	e9cd 5802 	strd	r5, r8, [sp, #8]
c0de526a:	e7b9      	b.n	c0de51e0 <nbgl_useCaseAdvancedReview+0x50>
c0de526c:	000009d0 	.word	0x000009d0

c0de5270 <displayPrelude>:
c0de5270:	4804      	ldr	r0, [pc, #16]	@ (c0de5284 <displayPrelude+0x14>)
c0de5272:	2101      	movs	r1, #1
c0de5274:	4448      	add	r0, r9
c0de5276:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de527a:	f44f 7140 	mov.w	r1, #768	@ 0x300
c0de527e:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de5280:	f001 b836 	b.w	c0de62f0 <displayWarningStep>
c0de5284:	000009d0 	.word	0x000009d0

c0de5288 <displayInitialWarning>:
c0de5288:	4804      	ldr	r0, [pc, #16]	@ (c0de529c <displayInitialWarning+0x14>)
c0de528a:	2100      	movs	r1, #0
c0de528c:	4448      	add	r0, r9
c0de528e:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5292:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de5296:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de5298:	f001 b82a 	b.w	c0de62f0 <displayWarningStep>
c0de529c:	000009d0 	.word	0x000009d0

c0de52a0 <nbgl_useCaseReviewBlindSigning>:
c0de52a0:	b5b0      	push	{r4, r5, r7, lr}
c0de52a2:	b086      	sub	sp, #24
c0de52a4:	4d06      	ldr	r5, [pc, #24]	@ (c0de52c0 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de52a6:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de52a8:	447d      	add	r5, pc
c0de52aa:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de52ae:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de52b0:	9401      	str	r4, [sp, #4]
c0de52b2:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de52b4:	9400      	str	r4, [sp, #0]
c0de52b6:	f7ff ff6b 	bl	c0de5190 <nbgl_useCaseAdvancedReview>
c0de52ba:	b006      	add	sp, #24
c0de52bc:	bdb0      	pop	{r4, r5, r7, pc}
c0de52be:	bf00      	nop
c0de52c0:	000041e8 	.word	0x000041e8

c0de52c4 <nbgl_useCaseAddressReview>:
c0de52c4:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de52c8:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de5328 <nbgl_useCaseAddressReview+0x64>
c0de52cc:	460c      	mov	r4, r1
c0de52ce:	4607      	mov	r7, r0
c0de52d0:	2140      	movs	r1, #64	@ 0x40
c0de52d2:	469a      	mov	sl, r3
c0de52d4:	4616      	mov	r6, r2
c0de52d6:	eb09 0508 	add.w	r5, r9, r8
c0de52da:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de52de:	f002 fe23 	bl	c0de7f28 <__aeabi_memclr>
c0de52e2:	2004      	movs	r0, #4
c0de52e4:	656f      	str	r7, [r5, #84]	@ 0x54
c0de52e6:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de52ea:	9808      	ldr	r0, [sp, #32]
c0de52ec:	e9c5 6a11 	strd	r6, sl, [r5, #68]	@ 0x44
c0de52f0:	64e8      	str	r0, [r5, #76]	@ 0x4c
c0de52f2:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de52f4:	63e9      	str	r1, [r5, #60]	@ 0x3c
c0de52f6:	2105      	movs	r1, #5
c0de52f8:	2800      	cmp	r0, #0
c0de52fa:	bf08      	it	eq
c0de52fc:	2104      	moveq	r1, #4
c0de52fe:	f885 1034 	strb.w	r1, [r5, #52]	@ 0x34
c0de5302:	b15c      	cbz	r4, c0de531c <nbgl_useCaseAddressReview+0x58>
c0de5304:	4620      	mov	r0, r4
c0de5306:	eb09 0508 	add.w	r5, r9, r8
c0de530a:	f002 fb01 	bl	c0de7910 <pic>
c0de530e:	6428      	str	r0, [r5, #64]	@ 0x40
c0de5310:	f895 0034 	ldrb.w	r0, [r5, #52]	@ 0x34
c0de5314:	7a21      	ldrb	r1, [r4, #8]
c0de5316:	4408      	add	r0, r1
c0de5318:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de531c:	2000      	movs	r0, #0
c0de531e:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5322:	f000 b803 	b.w	c0de532c <displayReviewPage>
c0de5326:	bf00      	nop
c0de5328:	000009d0 	.word	0x000009d0

c0de532c <displayReviewPage>:
c0de532c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de532e:	b08b      	sub	sp, #44	@ 0x2c
c0de5330:	4e5d      	ldr	r6, [pc, #372]	@ (c0de54a8 <displayReviewPage+0x17c>)
c0de5332:	4604      	mov	r4, r0
c0de5334:	2000      	movs	r0, #0
c0de5336:	2201      	movs	r2, #1
c0de5338:	2702      	movs	r7, #2
c0de533a:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de533e:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de5342:	eb09 0306 	add.w	r3, r9, r6
c0de5346:	6398      	str	r0, [r3, #56]	@ 0x38
c0de5348:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
c0de534a:	2800      	cmp	r0, #0
c0de534c:	bf08      	it	eq
c0de534e:	22ff      	moveq	r2, #255	@ 0xff
c0de5350:	bf08      	it	eq
c0de5352:	2701      	moveq	r7, #1
c0de5354:	f993 1035 	ldrsb.w	r1, [r3, #53]	@ 0x35
c0de5358:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
c0de535c:	1e9d      	subs	r5, r3, #2
c0de535e:	b2ed      	uxtb	r5, r5
c0de5360:	42a9      	cmp	r1, r5
c0de5362:	da06      	bge.n	c0de5372 <displayReviewPage+0x46>
c0de5364:	42b9      	cmp	r1, r7
c0de5366:	da0b      	bge.n	c0de5380 <displayReviewPage+0x54>
c0de5368:	2900      	cmp	r1, #0
c0de536a:	d041      	beq.n	c0de53f0 <displayReviewPage+0xc4>
c0de536c:	428a      	cmp	r2, r1
c0de536e:	d044      	beq.n	c0de53fa <displayReviewPage+0xce>
c0de5370:	e044      	b.n	c0de53fc <displayReviewPage+0xd0>
c0de5372:	d110      	bne.n	c0de5396 <displayReviewPage+0x6a>
c0de5374:	a908      	add	r1, sp, #32
c0de5376:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5378:	2001      	movs	r0, #1
c0de537a:	f001 f885 	bl	c0de6488 <getLastPageInfo>
c0de537e:	e03d      	b.n	c0de53fc <displayReviewPage+0xd0>
c0de5380:	eb09 0006 	add.w	r0, r9, r6
c0de5384:	6d45      	ldr	r5, [r0, #84]	@ 0x54
c0de5386:	b18d      	cbz	r5, c0de53ac <displayReviewPage+0x80>
c0de5388:	42b9      	cmp	r1, r7
c0de538a:	d10f      	bne.n	c0de53ac <displayReviewPage+0x80>
c0de538c:	9509      	str	r5, [sp, #36]	@ 0x24
c0de538e:	4847      	ldr	r0, [pc, #284]	@ (c0de54ac <displayReviewPage+0x180>)
c0de5390:	4478      	add	r0, pc
c0de5392:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5394:	e033      	b.n	c0de53fe <displayReviewPage+0xd2>
c0de5396:	1e58      	subs	r0, r3, #1
c0de5398:	b2c0      	uxtb	r0, r0
c0de539a:	4281      	cmp	r1, r0
c0de539c:	d12e      	bne.n	c0de53fc <displayReviewPage+0xd0>
c0de539e:	a908      	add	r1, sp, #32
c0de53a0:	aa0a      	add	r2, sp, #40	@ 0x28
c0de53a2:	2000      	movs	r0, #0
c0de53a4:	2500      	movs	r5, #0
c0de53a6:	f001 f86f 	bl	c0de6488 <getLastPageInfo>
c0de53aa:	e028      	b.n	c0de53fe <displayReviewPage+0xd2>
c0de53ac:	eb09 0006 	add.w	r0, r9, r6
c0de53b0:	f890 2030 	ldrb.w	r2, [r0, #48]	@ 0x30
c0de53b4:	06d2      	lsls	r2, r2, #27
c0de53b6:	d535      	bpl.n	c0de5424 <displayReviewPage+0xf8>
c0de53b8:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de53bc:	bb90      	cbnz	r0, c0de5424 <displayReviewPage+0xf8>
c0de53be:	42b9      	cmp	r1, r7
c0de53c0:	dc05      	bgt.n	c0de53ce <displayReviewPage+0xa2>
c0de53c2:	eb09 0006 	add.w	r0, r9, r6
c0de53c6:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de53ca:	2808      	cmp	r0, #8
c0de53cc:	d12a      	bne.n	c0de5424 <displayReviewPage+0xf8>
c0de53ce:	2000      	movs	r0, #0
c0de53d0:	9006      	str	r0, [sp, #24]
c0de53d2:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de53d6:	eb09 0006 	add.w	r0, r9, r6
c0de53da:	f890 205c 	ldrb.w	r2, [r0, #92]	@ 0x5c
c0de53de:	f004 0008 	and.w	r0, r4, #8
c0de53e2:	2a01      	cmp	r2, #1
c0de53e4:	d001      	beq.n	c0de53ea <displayReviewPage+0xbe>
c0de53e6:	2901      	cmp	r1, #1
c0de53e8:	db43      	blt.n	c0de5472 <displayReviewPage+0x146>
c0de53ea:	f040 0003 	orr.w	r0, r0, #3
c0de53ee:	e042      	b.n	c0de5476 <displayReviewPage+0x14a>
c0de53f0:	eb09 0006 	add.w	r0, r9, r6
c0de53f4:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de53f8:	9108      	str	r1, [sp, #32]
c0de53fa:	900a      	str	r0, [sp, #40]	@ 0x28
c0de53fc:	2500      	movs	r5, #0
c0de53fe:	2000      	movs	r0, #0
c0de5400:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de5402:	9908      	ldr	r1, [sp, #32]
c0de5404:	4e2e      	ldr	r6, [pc, #184]	@ (c0de54c0 <displayReviewPage+0x194>)
c0de5406:	b2c0      	uxtb	r0, r0
c0de5408:	2300      	movs	r3, #0
c0de540a:	9002      	str	r0, [sp, #8]
c0de540c:	4620      	mov	r0, r4
c0de540e:	447e      	add	r6, pc
c0de5410:	e9cd 6300 	strd	r6, r3, [sp]
c0de5414:	462b      	mov	r3, r5
c0de5416:	f000 f875 	bl	c0de5504 <drawStep>
c0de541a:	b00b      	add	sp, #44	@ 0x2c
c0de541c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5420:	f002 b867 	b.w	c0de74f2 <nbgl_refresh>
c0de5424:	2200      	movs	r2, #0
c0de5426:	eb09 0006 	add.w	r0, r9, r6
c0de542a:	1bcf      	subs	r7, r1, r7
c0de542c:	f10d 0c0c 	add.w	ip, sp, #12
c0de5430:	f880 205d 	strb.w	r2, [r0, #93]	@ 0x5d
c0de5434:	f88d 200c 	strb.w	r2, [sp, #12]
c0de5438:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de543a:	ab08      	add	r3, sp, #32
c0de543c:	aa07      	add	r2, sp, #28
c0de543e:	2d00      	cmp	r5, #0
c0de5440:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de5444:	bf18      	it	ne
c0de5446:	3f01      	subne	r7, #1
c0de5448:	aa0a      	add	r2, sp, #40	@ 0x28
c0de544a:	b2f9      	uxtb	r1, r7
c0de544c:	ab09      	add	r3, sp, #36	@ 0x24
c0de544e:	f000 fcf7 	bl	c0de5e40 <getPairData>
c0de5452:	9807      	ldr	r0, [sp, #28]
c0de5454:	b140      	cbz	r0, c0de5468 <displayReviewPage+0x13c>
c0de5456:	eb09 0006 	add.w	r0, r9, r6
c0de545a:	f880 705f 	strb.w	r7, [r0, #95]	@ 0x5f
c0de545e:	4917      	ldr	r1, [pc, #92]	@ (c0de54bc <displayReviewPage+0x190>)
c0de5460:	4479      	add	r1, pc
c0de5462:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5464:	2001      	movs	r0, #1
c0de5466:	e002      	b.n	c0de546e <displayReviewPage+0x142>
c0de5468:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de546c:	0040      	lsls	r0, r0, #1
c0de546e:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de5470:	e7c6      	b.n	c0de5400 <displayReviewPage+0xd4>
c0de5472:	f040 0001 	orr.w	r0, r0, #1
c0de5476:	490e      	ldr	r1, [pc, #56]	@ (c0de54b0 <displayReviewPage+0x184>)
c0de5478:	2200      	movs	r2, #0
c0de547a:	4479      	add	r1, pc
c0de547c:	9103      	str	r1, [sp, #12]
c0de547e:	490d      	ldr	r1, [pc, #52]	@ (c0de54b4 <displayReviewPage+0x188>)
c0de5480:	4479      	add	r1, pc
c0de5482:	9105      	str	r1, [sp, #20]
c0de5484:	2100      	movs	r1, #0
c0de5486:	9100      	str	r1, [sp, #0]
c0de5488:	490b      	ldr	r1, [pc, #44]	@ (c0de54b8 <displayReviewPage+0x18c>)
c0de548a:	ab03      	add	r3, sp, #12
c0de548c:	4479      	add	r1, pc
c0de548e:	f7ff fbb5 	bl	c0de4bfc <nbgl_stepDrawCenteredInfo>
c0de5492:	eb09 0406 	add.w	r4, r9, r6
c0de5496:	f002 f82c 	bl	c0de74f2 <nbgl_refresh>
c0de549a:	2001      	movs	r0, #1
c0de549c:	f884 7036 	strb.w	r7, [r4, #54]	@ 0x36
c0de54a0:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de54a4:	b00b      	add	sp, #44	@ 0x2c
c0de54a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de54a8:	000009d0 	.word	0x000009d0
c0de54ac:	000030de 	.word	0x000030de
c0de54b0:	00002dc4 	.word	0x00002dc4
c0de54b4:	00002bf2 	.word	0x00002bf2
c0de54b8:	00001181 	.word	0x00001181
c0de54bc:	00001265 	.word	0x00001265
c0de54c0:	0000132b 	.word	0x0000132b

c0de54c4 <nbgl_useCaseStatus>:
c0de54c4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de54c6:	4605      	mov	r5, r0
c0de54c8:	480c      	ldr	r0, [pc, #48]	@ (c0de54fc <nbgl_useCaseStatus+0x38>)
c0de54ca:	2140      	movs	r1, #64	@ 0x40
c0de54cc:	4614      	mov	r4, r2
c0de54ce:	f001 fab0 	bl	c0de6a32 <OUTLINED_FUNCTION_2>
c0de54d2:	2009      	movs	r0, #9
c0de54d4:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de54d6:	462a      	mov	r2, r5
c0de54d8:	2300      	movs	r3, #0
c0de54da:	f886 002c 	strb.w	r0, [r6, #44]	@ 0x2c
c0de54de:	2001      	movs	r0, #1
c0de54e0:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de54e4:	2000      	movs	r0, #0
c0de54e6:	4906      	ldr	r1, [pc, #24]	@ (c0de5500 <nbgl_useCaseStatus+0x3c>)
c0de54e8:	9002      	str	r0, [sp, #8]
c0de54ea:	4479      	add	r1, pc
c0de54ec:	e9cd 1000 	strd	r1, r0, [sp]
c0de54f0:	2040      	movs	r0, #64	@ 0x40
c0de54f2:	2100      	movs	r1, #0
c0de54f4:	f000 f806 	bl	c0de5504 <drawStep>
c0de54f8:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de54fa:	bf00      	nop
c0de54fc:	000009d0 	.word	0x000009d0
c0de5500:	0000019f 	.word	0x0000019f

c0de5504 <drawStep>:
c0de5504:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5508:	b09a      	sub	sp, #104	@ 0x68
c0de550a:	4688      	mov	r8, r1
c0de550c:	4604      	mov	r4, r0
c0de550e:	a80c      	add	r0, sp, #48	@ 0x30
c0de5510:	2138      	movs	r1, #56	@ 0x38
c0de5512:	461d      	mov	r5, r3
c0de5514:	4616      	mov	r6, r2
c0de5516:	f002 fd07 	bl	c0de7f28 <__aeabi_memclr>
c0de551a:	2700      	movs	r7, #0
c0de551c:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de5520:	4856      	ldr	r0, [pc, #344]	@ (c0de567c <drawStep+0x178>)
c0de5522:	4478      	add	r0, pc
c0de5524:	f002 f9f4 	bl	c0de7910 <pic>
c0de5528:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de5678 <drawStep+0x174>
c0de552c:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de5530:	9709      	str	r7, [sp, #36]	@ 0x24
c0de5532:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de5536:	eb09 000b 	add.w	r0, r9, fp
c0de553a:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de553e:	2802      	cmp	r0, #2
c0de5540:	d30b      	bcc.n	c0de555a <drawStep+0x56>
c0de5542:	eb09 010b 	add.w	r1, r9, fp
c0de5546:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de554a:	b129      	cbz	r1, c0de5558 <drawStep+0x54>
c0de554c:	3801      	subs	r0, #1
c0de554e:	2703      	movs	r7, #3
c0de5550:	4288      	cmp	r0, r1
c0de5552:	bf08      	it	eq
c0de5554:	2702      	moveq	r7, #2
c0de5556:	e000      	b.n	c0de555a <drawStep+0x56>
c0de5558:	2701      	movs	r7, #1
c0de555a:	eb09 000b 	add.w	r0, r9, fp
c0de555e:	ea47 0204 	orr.w	r2, r7, r4
c0de5562:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de5566:	4614      	mov	r4, r2
c0de5568:	2901      	cmp	r1, #1
c0de556a:	bf88      	it	hi
c0de556c:	f044 0402 	orrhi.w	r4, r4, #2
c0de5570:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de5572:	2900      	cmp	r1, #0
c0de5574:	bf08      	it	eq
c0de5576:	4614      	moveq	r4, r2
c0de5578:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de557c:	2806      	cmp	r0, #6
c0de557e:	f040 0108 	orr.w	r1, r0, #8
c0de5582:	bf18      	it	ne
c0de5584:	4614      	movne	r4, r2
c0de5586:	2909      	cmp	r1, #9
c0de5588:	bf0c      	ite	eq
c0de558a:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de558e:	f04f 0a00 	movne.w	sl, #0
c0de5592:	280a      	cmp	r0, #10
c0de5594:	d105      	bne.n	c0de55a2 <drawStep+0x9e>
c0de5596:	eb09 000b 	add.w	r0, r9, fp
c0de559a:	6d00      	ldr	r0, [r0, #80]	@ 0x50
c0de559c:	b108      	cbz	r0, c0de55a2 <drawStep+0x9e>
c0de559e:	f7ff fc53 	bl	c0de4e48 <nbgl_stepRelease>
c0de55a2:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de55a4:	b1b6      	cbz	r6, c0de55d4 <drawStep+0xd0>
c0de55a6:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de55a8:	f1b8 0f00 	cmp.w	r8, #0
c0de55ac:	d12c      	bne.n	c0de5608 <drawStep+0x104>
c0de55ae:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de55b0:	2802      	cmp	r0, #2
c0de55b2:	d029      	beq.n	c0de5608 <drawStep+0x104>
c0de55b4:	2201      	movs	r2, #1
c0de55b6:	4633      	mov	r3, r6
c0de55b8:	2801      	cmp	r0, #1
c0de55ba:	bf08      	it	eq
c0de55bc:	2202      	moveq	r2, #2
c0de55be:	4620      	mov	r0, r4
c0de55c0:	2d00      	cmp	r5, #0
c0de55c2:	bf08      	it	eq
c0de55c4:	462a      	moveq	r2, r5
c0de55c6:	e9cd 5200 	strd	r5, r2, [sp]
c0de55ca:	9702      	str	r7, [sp, #8]
c0de55cc:	4652      	mov	r2, sl
c0de55ce:	f7ff f9cf 	bl	c0de4970 <nbgl_stepDrawText>
c0de55d2:	e043      	b.n	c0de565c <drawStep+0x158>
c0de55d4:	eb09 000b 	add.w	r0, r9, fp
c0de55d8:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de55dc:	a903      	add	r1, sp, #12
c0de55de:	aa0c      	add	r2, sp, #48	@ 0x30
c0de55e0:	f000 fbea 	bl	c0de5db8 <getContentElemAtIdx>
c0de55e4:	b330      	cbz	r0, c0de5634 <drawStep+0x130>
c0de55e6:	7801      	ldrb	r1, [r0, #0]
c0de55e8:	2400      	movs	r4, #0
c0de55ea:	290a      	cmp	r1, #10
c0de55ec:	d024      	beq.n	c0de5638 <drawStep+0x134>
c0de55ee:	2909      	cmp	r1, #9
c0de55f0:	d135      	bne.n	c0de565e <drawStep+0x15a>
c0de55f2:	f001 fa32 	bl	c0de6a5a <OUTLINED_FUNCTION_5>
c0de55f6:	4922      	ldr	r1, [pc, #136]	@ (c0de5680 <drawStep+0x17c>)
c0de55f8:	4479      	add	r1, pc
c0de55fa:	910a      	str	r1, [sp, #40]	@ 0x28
c0de55fc:	7941      	ldrb	r1, [r0, #5]
c0de55fe:	7980      	ldrb	r0, [r0, #6]
c0de5600:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de5604:	1c48      	adds	r0, r1, #1
c0de5606:	e020      	b.n	c0de564a <drawStep+0x146>
c0de5608:	2000      	movs	r0, #0
c0de560a:	9603      	str	r6, [sp, #12]
c0de560c:	f8cd 8014 	str.w	r8, [sp, #20]
c0de5610:	9504      	str	r5, [sp, #16]
c0de5612:	4652      	mov	r2, sl
c0de5614:	f88d 0018 	strb.w	r0, [sp, #24]
c0de5618:	eb09 000b 	add.w	r0, r9, fp
c0de561c:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de561e:	4328      	orrs	r0, r5
c0de5620:	bf18      	it	ne
c0de5622:	2001      	movne	r0, #1
c0de5624:	f88d 0019 	strb.w	r0, [sp, #25]
c0de5628:	9700      	str	r7, [sp, #0]
c0de562a:	ab03      	add	r3, sp, #12
c0de562c:	4620      	mov	r0, r4
c0de562e:	f7ff fae5 	bl	c0de4bfc <nbgl_stepDrawCenteredInfo>
c0de5632:	e013      	b.n	c0de565c <drawStep+0x158>
c0de5634:	2400      	movs	r4, #0
c0de5636:	e012      	b.n	c0de565e <drawStep+0x15a>
c0de5638:	f001 fa0f 	bl	c0de6a5a <OUTLINED_FUNCTION_5>
c0de563c:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de5640:	4910      	ldr	r1, [pc, #64]	@ (c0de5684 <drawStep+0x180>)
c0de5642:	7a00      	ldrb	r0, [r0, #8]
c0de5644:	4479      	add	r1, pc
c0de5646:	3001      	adds	r0, #1
c0de5648:	910a      	str	r1, [sp, #40]	@ 0x28
c0de564a:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de564e:	4651      	mov	r1, sl
c0de5650:	463b      	mov	r3, r7
c0de5652:	480d      	ldr	r0, [pc, #52]	@ (c0de5688 <drawStep+0x184>)
c0de5654:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5656:	4478      	add	r0, pc
c0de5658:	f7ff fb60 	bl	c0de4d1c <nbgl_stepDrawMenuList>
c0de565c:	4604      	mov	r4, r0
c0de565e:	eb09 000b 	add.w	r0, r9, fp
c0de5662:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5666:	280a      	cmp	r0, #10
c0de5668:	bf04      	itt	eq
c0de566a:	eb09 000b 	addeq.w	r0, r9, fp
c0de566e:	6504      	streq	r4, [r0, #80]	@ 0x50
c0de5670:	b01a      	add	sp, #104	@ 0x68
c0de5672:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5676:	bf00      	nop
c0de5678:	000009d0 	.word	0x000009d0
c0de567c:	000013a3 	.word	0x000013a3
c0de5680:	000012dd 	.word	0x000012dd
c0de5684:	00001291 	.word	0x00001291
c0de5688:	000012e3 	.word	0x000012e3

c0de568c <statusButtonCallback>:
c0de568c:	f041 0004 	orr.w	r0, r1, #4
c0de5690:	2804      	cmp	r0, #4
c0de5692:	d001      	beq.n	c0de5698 <statusButtonCallback+0xc>
c0de5694:	2901      	cmp	r1, #1
c0de5696:	d104      	bne.n	c0de56a2 <statusButtonCallback+0x16>
c0de5698:	4802      	ldr	r0, [pc, #8]	@ (c0de56a4 <statusButtonCallback+0x18>)
c0de569a:	4448      	add	r0, r9
c0de569c:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de569e:	b100      	cbz	r0, c0de56a2 <statusButtonCallback+0x16>
c0de56a0:	4700      	bx	r0
c0de56a2:	4770      	bx	lr
c0de56a4:	000009d0 	.word	0x000009d0

c0de56a8 <nbgl_useCaseReviewStatus>:
c0de56a8:	460a      	mov	r2, r1
c0de56aa:	b198      	cbz	r0, c0de56d4 <nbgl_useCaseReviewStatus+0x2c>
c0de56ac:	2801      	cmp	r0, #1
c0de56ae:	d016      	beq.n	c0de56de <nbgl_useCaseReviewStatus+0x36>
c0de56b0:	2802      	cmp	r0, #2
c0de56b2:	d019      	beq.n	c0de56e8 <nbgl_useCaseReviewStatus+0x40>
c0de56b4:	2803      	cmp	r0, #3
c0de56b6:	d01c      	beq.n	c0de56f2 <nbgl_useCaseReviewStatus+0x4a>
c0de56b8:	2804      	cmp	r0, #4
c0de56ba:	d01f      	beq.n	c0de56fc <nbgl_useCaseReviewStatus+0x54>
c0de56bc:	2807      	cmp	r0, #7
c0de56be:	d022      	beq.n	c0de5706 <nbgl_useCaseReviewStatus+0x5e>
c0de56c0:	2806      	cmp	r0, #6
c0de56c2:	d025      	beq.n	c0de5710 <nbgl_useCaseReviewStatus+0x68>
c0de56c4:	2805      	cmp	r0, #5
c0de56c6:	bf18      	it	ne
c0de56c8:	4770      	bxne	lr
c0de56ca:	4815      	ldr	r0, [pc, #84]	@ (c0de5720 <nbgl_useCaseReviewStatus+0x78>)
c0de56cc:	2100      	movs	r1, #0
c0de56ce:	4478      	add	r0, pc
c0de56d0:	f7ff bef8 	b.w	c0de54c4 <nbgl_useCaseStatus>
c0de56d4:	4813      	ldr	r0, [pc, #76]	@ (c0de5724 <nbgl_useCaseReviewStatus+0x7c>)
c0de56d6:	2101      	movs	r1, #1
c0de56d8:	4478      	add	r0, pc
c0de56da:	f7ff bef3 	b.w	c0de54c4 <nbgl_useCaseStatus>
c0de56de:	4812      	ldr	r0, [pc, #72]	@ (c0de5728 <nbgl_useCaseReviewStatus+0x80>)
c0de56e0:	2100      	movs	r1, #0
c0de56e2:	4478      	add	r0, pc
c0de56e4:	f7ff beee 	b.w	c0de54c4 <nbgl_useCaseStatus>
c0de56e8:	4810      	ldr	r0, [pc, #64]	@ (c0de572c <nbgl_useCaseReviewStatus+0x84>)
c0de56ea:	2101      	movs	r1, #1
c0de56ec:	4478      	add	r0, pc
c0de56ee:	f7ff bee9 	b.w	c0de54c4 <nbgl_useCaseStatus>
c0de56f2:	480f      	ldr	r0, [pc, #60]	@ (c0de5730 <nbgl_useCaseReviewStatus+0x88>)
c0de56f4:	2100      	movs	r1, #0
c0de56f6:	4478      	add	r0, pc
c0de56f8:	f7ff bee4 	b.w	c0de54c4 <nbgl_useCaseStatus>
c0de56fc:	4807      	ldr	r0, [pc, #28]	@ (c0de571c <nbgl_useCaseReviewStatus+0x74>)
c0de56fe:	2101      	movs	r1, #1
c0de5700:	4478      	add	r0, pc
c0de5702:	f7ff bedf 	b.w	c0de54c4 <nbgl_useCaseStatus>
c0de5706:	480c      	ldr	r0, [pc, #48]	@ (c0de5738 <nbgl_useCaseReviewStatus+0x90>)
c0de5708:	2100      	movs	r1, #0
c0de570a:	4478      	add	r0, pc
c0de570c:	f7ff beda 	b.w	c0de54c4 <nbgl_useCaseStatus>
c0de5710:	4808      	ldr	r0, [pc, #32]	@ (c0de5734 <nbgl_useCaseReviewStatus+0x8c>)
c0de5712:	2101      	movs	r1, #1
c0de5714:	4478      	add	r0, pc
c0de5716:	f7ff bed5 	b.w	c0de54c4 <nbgl_useCaseStatus>
c0de571a:	bf00      	nop
c0de571c:	00002b09 	.word	0x00002b09
c0de5720:	00002b5d 	.word	0x00002b5d
c0de5724:	00002bed 	.word	0x00002bed
c0de5728:	00002db9 	.word	0x00002db9
c0de572c:	00002c4c 	.word	0x00002c4c
c0de5730:	00002d48 	.word	0x00002d48
c0de5734:	00002b71 	.word	0x00002b71
c0de5738:	00002cab 	.word	0x00002cab

c0de573c <displayStreamingReviewPage>:
c0de573c:	b570      	push	{r4, r5, r6, lr}
c0de573e:	b08c      	sub	sp, #48	@ 0x30
c0de5740:	4d5a      	ldr	r5, [pc, #360]	@ (c0de58ac <displayStreamingReviewPage+0x170>)
c0de5742:	2100      	movs	r1, #0
c0de5744:	4604      	mov	r4, r0
c0de5746:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de574a:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de574e:	eb09 0005 	add.w	r0, r9, r5
c0de5752:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5754:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5758:	2806      	cmp	r0, #6
c0de575a:	d015      	beq.n	c0de5788 <displayStreamingReviewPage+0x4c>
c0de575c:	2805      	cmp	r0, #5
c0de575e:	d13d      	bne.n	c0de57dc <displayStreamingReviewPage+0xa0>
c0de5760:	eb09 0205 	add.w	r2, r9, r5
c0de5764:	2101      	movs	r1, #1
c0de5766:	2302      	movs	r3, #2
c0de5768:	6cd0      	ldr	r0, [r2, #76]	@ 0x4c
c0de576a:	2800      	cmp	r0, #0
c0de576c:	bf08      	it	eq
c0de576e:	21ff      	moveq	r1, #255	@ 0xff
c0de5770:	bf08      	it	eq
c0de5772:	2301      	moveq	r3, #1
c0de5774:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5778:	4293      	cmp	r3, r2
c0de577a:	dd3b      	ble.n	c0de57f4 <displayStreamingReviewPage+0xb8>
c0de577c:	b2d3      	uxtb	r3, r2
c0de577e:	2b00      	cmp	r3, #0
c0de5780:	d063      	beq.n	c0de584a <displayStreamingReviewPage+0x10e>
c0de5782:	4291      	cmp	r1, r2
c0de5784:	d066      	beq.n	c0de5854 <displayStreamingReviewPage+0x118>
c0de5786:	e066      	b.n	c0de5856 <displayStreamingReviewPage+0x11a>
c0de5788:	eb09 0005 	add.w	r0, r9, r5
c0de578c:	f990 1035 	ldrsb.w	r1, [r0, #53]	@ 0x35
c0de5790:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5792:	7a02      	ldrb	r2, [r0, #8]
c0de5794:	4291      	cmp	r1, r2
c0de5796:	da2d      	bge.n	c0de57f4 <displayStreamingReviewPage+0xb8>
c0de5798:	eb09 0205 	add.w	r2, r9, r5
c0de579c:	6d93      	ldr	r3, [r2, #88]	@ 0x58
c0de579e:	b3cb      	cbz	r3, c0de5814 <displayStreamingReviewPage+0xd8>
c0de57a0:	f892 205d 	ldrb.w	r2, [r2, #93]	@ 0x5d
c0de57a4:	bbb2      	cbnz	r2, c0de5814 <displayStreamingReviewPage+0xd8>
c0de57a6:	eb09 0205 	add.w	r2, r9, r5
c0de57aa:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de57ae:	2a01      	cmp	r2, #1
c0de57b0:	d807      	bhi.n	c0de57c2 <displayStreamingReviewPage+0x86>
c0de57b2:	2900      	cmp	r1, #0
c0de57b4:	dc05      	bgt.n	c0de57c2 <displayStreamingReviewPage+0x86>
c0de57b6:	eb09 0305 	add.w	r3, r9, r5
c0de57ba:	f893 305e 	ldrb.w	r3, [r3, #94]	@ 0x5e
c0de57be:	2b08      	cmp	r3, #8
c0de57c0:	d128      	bne.n	c0de5814 <displayStreamingReviewPage+0xd8>
c0de57c2:	2000      	movs	r0, #0
c0de57c4:	9007      	str	r0, [sp, #28]
c0de57c6:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de57ca:	f004 0008 	and.w	r0, r4, #8
c0de57ce:	2a01      	cmp	r2, #1
c0de57d0:	d001      	beq.n	c0de57d6 <displayStreamingReviewPage+0x9a>
c0de57d2:	2901      	cmp	r1, #1
c0de57d4:	db50      	blt.n	c0de5878 <displayStreamingReviewPage+0x13c>
c0de57d6:	f040 0003 	orr.w	r0, r0, #3
c0de57da:	e04f      	b.n	c0de587c <displayStreamingReviewPage+0x140>
c0de57dc:	eb09 0005 	add.w	r0, r9, r5
c0de57e0:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de57e4:	b180      	cbz	r0, c0de5808 <displayStreamingReviewPage+0xcc>
c0de57e6:	a909      	add	r1, sp, #36	@ 0x24
c0de57e8:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de57ea:	2000      	movs	r0, #0
c0de57ec:	2500      	movs	r5, #0
c0de57ee:	f000 fe4b 	bl	c0de6488 <getLastPageInfo>
c0de57f2:	e031      	b.n	c0de5858 <displayStreamingReviewPage+0x11c>
c0de57f4:	eb09 0005 	add.w	r0, r9, r5
c0de57f8:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de57fa:	2900      	cmp	r1, #0
c0de57fc:	d053      	beq.n	c0de58a6 <displayStreamingReviewPage+0x16a>
c0de57fe:	2001      	movs	r0, #1
c0de5800:	b00c      	add	sp, #48	@ 0x30
c0de5802:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5806:	4708      	bx	r1
c0de5808:	a909      	add	r1, sp, #36	@ 0x24
c0de580a:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de580c:	2001      	movs	r0, #1
c0de580e:	f000 fe3b 	bl	c0de6488 <getLastPageInfo>
c0de5812:	e020      	b.n	c0de5856 <displayStreamingReviewPage+0x11a>
c0de5814:	2300      	movs	r3, #0
c0de5816:	eb09 0205 	add.w	r2, r9, r5
c0de581a:	b2c9      	uxtb	r1, r1
c0de581c:	f882 305d 	strb.w	r3, [r2, #93]	@ 0x5d
c0de5820:	f88d 300f 	strb.w	r3, [sp, #15]
c0de5824:	ab09      	add	r3, sp, #36	@ 0x24
c0de5826:	ad08      	add	r5, sp, #32
c0de5828:	f10d 020f 	add.w	r2, sp, #15
c0de582c:	e9cd 5300 	strd	r5, r3, [sp]
c0de5830:	9202      	str	r2, [sp, #8]
c0de5832:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5834:	ab0a      	add	r3, sp, #40	@ 0x28
c0de5836:	f000 fb03 	bl	c0de5e40 <getPairData>
c0de583a:	9808      	ldr	r0, [sp, #32]
c0de583c:	2800      	cmp	r0, #0
c0de583e:	bf12      	itee	ne
c0de5840:	2501      	movne	r5, #1
c0de5842:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de5846:	0045      	lsleq	r5, r0, #1
c0de5848:	e006      	b.n	c0de5858 <displayStreamingReviewPage+0x11c>
c0de584a:	eb09 0005 	add.w	r0, r9, r5
c0de584e:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de5852:	9109      	str	r1, [sp, #36]	@ 0x24
c0de5854:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de5856:	2500      	movs	r5, #0
c0de5858:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de585a:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de585e:	4e17      	ldr	r6, [pc, #92]	@ (c0de58bc <displayStreamingReviewPage+0x180>)
c0de5860:	b2e8      	uxtb	r0, r5
c0de5862:	2500      	movs	r5, #0
c0de5864:	9002      	str	r0, [sp, #8]
c0de5866:	4620      	mov	r0, r4
c0de5868:	447e      	add	r6, pc
c0de586a:	f001 f8f9 	bl	c0de6a60 <OUTLINED_FUNCTION_6>
c0de586e:	b00c      	add	sp, #48	@ 0x30
c0de5870:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5874:	f001 be3d 	b.w	c0de74f2 <nbgl_refresh>
c0de5878:	f040 0001 	orr.w	r0, r0, #1
c0de587c:	490c      	ldr	r1, [pc, #48]	@ (c0de58b0 <displayStreamingReviewPage+0x174>)
c0de587e:	2200      	movs	r2, #0
c0de5880:	4479      	add	r1, pc
c0de5882:	9104      	str	r1, [sp, #16]
c0de5884:	490b      	ldr	r1, [pc, #44]	@ (c0de58b4 <displayStreamingReviewPage+0x178>)
c0de5886:	4479      	add	r1, pc
c0de5888:	9106      	str	r1, [sp, #24]
c0de588a:	2100      	movs	r1, #0
c0de588c:	9100      	str	r1, [sp, #0]
c0de588e:	490a      	ldr	r1, [pc, #40]	@ (c0de58b8 <displayStreamingReviewPage+0x17c>)
c0de5890:	ab04      	add	r3, sp, #16
c0de5892:	4479      	add	r1, pc
c0de5894:	f7ff f9b2 	bl	c0de4bfc <nbgl_stepDrawCenteredInfo>
c0de5898:	eb09 0405 	add.w	r4, r9, r5
c0de589c:	f001 fe29 	bl	c0de74f2 <nbgl_refresh>
c0de58a0:	2001      	movs	r0, #1
c0de58a2:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de58a6:	b00c      	add	sp, #48	@ 0x30
c0de58a8:	bd70      	pop	{r4, r5, r6, pc}
c0de58aa:	bf00      	nop
c0de58ac:	000009d0 	.word	0x000009d0
c0de58b0:	000029be 	.word	0x000029be
c0de58b4:	000027ec 	.word	0x000027ec
c0de58b8:	00000d7b 	.word	0x00000d7b
c0de58bc:	0000113d 	.word	0x0000113d

c0de58c0 <nbgl_useCaseSpinner>:
c0de58c0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de58c2:	4604      	mov	r4, r0
c0de58c4:	480b      	ldr	r0, [pc, #44]	@ (c0de58f4 <nbgl_useCaseSpinner+0x34>)
c0de58c6:	2140      	movs	r1, #64	@ 0x40
c0de58c8:	f001 f8a2 	bl	c0de6a10 <OUTLINED_FUNCTION_0>
c0de58cc:	2001      	movs	r0, #1
c0de58ce:	4622      	mov	r2, r4
c0de58d0:	2300      	movs	r3, #0
c0de58d2:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de58d6:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de58da:	2000      	movs	r0, #0
c0de58dc:	e9cd 0000 	strd	r0, r0, [sp]
c0de58e0:	9002      	str	r0, [sp, #8]
c0de58e2:	2000      	movs	r0, #0
c0de58e4:	4904      	ldr	r1, [pc, #16]	@ (c0de58f8 <nbgl_useCaseSpinner+0x38>)
c0de58e6:	4479      	add	r1, pc
c0de58e8:	f7ff fe0c 	bl	c0de5504 <drawStep>
c0de58ec:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de58f0:	f001 bdff 	b.w	c0de74f2 <nbgl_refresh>
c0de58f4:	000009d0 	.word	0x000009d0
c0de58f8:	00002883 	.word	0x00002883

c0de58fc <nbgl_useCaseChoice>:
c0de58fc:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de58fe:	9c07      	ldr	r4, [sp, #28]
c0de5900:	9402      	str	r4, [sp, #8]
c0de5902:	2400      	movs	r4, #0
c0de5904:	9401      	str	r4, [sp, #4]
c0de5906:	9c06      	ldr	r4, [sp, #24]
c0de5908:	9400      	str	r4, [sp, #0]
c0de590a:	f000 f801 	bl	c0de5910 <nbgl_useCaseChoiceWithDetails>
c0de590e:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de5910 <nbgl_useCaseChoiceWithDetails>:
c0de5910:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5914:	f8df 806c 	ldr.w	r8, [pc, #108]	@ c0de5984 <nbgl_useCaseChoiceWithDetails+0x74>
c0de5918:	460c      	mov	r4, r1
c0de591a:	4605      	mov	r5, r0
c0de591c:	2140      	movs	r1, #64	@ 0x40
c0de591e:	469a      	mov	sl, r3
c0de5920:	4617      	mov	r7, r2
c0de5922:	eb09 0608 	add.w	r6, r9, r8
c0de5926:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de592a:	f002 fafd 	bl	c0de7f28 <__aeabi_memclr>
c0de592e:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de5930:	2203      	movs	r2, #3
c0de5932:	6570      	str	r0, [r6, #84]	@ 0x54
c0de5934:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de5936:	6531      	str	r1, [r6, #80]	@ 0x50
c0de5938:	9908      	ldr	r1, [sp, #32]
c0de593a:	e9c6 7a11 	strd	r7, sl, [r6, #68]	@ 0x44
c0de593e:	e9c6 540f 	strd	r5, r4, [r6, #60]	@ 0x3c
c0de5942:	64f1      	str	r1, [r6, #76]	@ 0x4c
c0de5944:	2108      	movs	r1, #8
c0de5946:	f886 102c 	strb.w	r1, [r6, #44]	@ 0x2c
c0de594a:	2f00      	cmp	r7, #0
c0de594c:	f04f 0103 	mov.w	r1, #3
c0de5950:	bf18      	it	ne
c0de5952:	2104      	movne	r1, #4
c0de5954:	2d00      	cmp	r5, #0
c0de5956:	bf08      	it	eq
c0de5958:	4611      	moveq	r1, r2
c0de595a:	2c00      	cmp	r4, #0
c0de595c:	bf08      	it	eq
c0de595e:	2102      	moveq	r1, #2
c0de5960:	f886 1034 	strb.w	r1, [r6, #52]	@ 0x34
c0de5964:	b140      	cbz	r0, c0de5978 <nbgl_useCaseChoiceWithDetails+0x68>
c0de5966:	7902      	ldrb	r2, [r0, #4]
c0de5968:	2a03      	cmp	r2, #3
c0de596a:	d105      	bne.n	c0de5978 <nbgl_useCaseChoiceWithDetails+0x68>
c0de596c:	7a00      	ldrb	r0, [r0, #8]
c0de596e:	eb09 0208 	add.w	r2, r9, r8
c0de5972:	4408      	add	r0, r1
c0de5974:	f882 0034 	strb.w	r0, [r2, #52]	@ 0x34
c0de5978:	2000      	movs	r0, #0
c0de597a:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de597e:	f000 b803 	b.w	c0de5988 <displayChoicePage>
c0de5982:	bf00      	nop
c0de5984:	000009d0 	.word	0x000009d0

c0de5988 <displayChoicePage>:
c0de5988:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de598a:	4b33      	ldr	r3, [pc, #204]	@ (c0de5a58 <displayChoicePage+0xd0>)
c0de598c:	2400      	movs	r4, #0
c0de598e:	eb09 0103 	add.w	r1, r9, r3
c0de5992:	6c0a      	ldr	r2, [r1, #64]	@ 0x40
c0de5994:	b16a      	cbz	r2, c0de59b2 <displayChoicePage+0x2a>
c0de5996:	eb09 0103 	add.w	r1, r9, r3
c0de599a:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de599c:	b131      	cbz	r1, c0de59ac <displayChoicePage+0x24>
c0de599e:	eb09 0103 	add.w	r1, r9, r3
c0de59a2:	6c49      	ldr	r1, [r1, #68]	@ 0x44
c0de59a4:	b111      	cbz	r1, c0de59ac <displayChoicePage+0x24>
c0de59a6:	2102      	movs	r1, #2
c0de59a8:	2501      	movs	r5, #1
c0de59aa:	e004      	b.n	c0de59b6 <displayChoicePage+0x2e>
c0de59ac:	2101      	movs	r1, #1
c0de59ae:	2500      	movs	r5, #0
c0de59b0:	e001      	b.n	c0de59b6 <displayChoicePage+0x2e>
c0de59b2:	2500      	movs	r5, #0
c0de59b4:	2100      	movs	r1, #0
c0de59b6:	eb09 0603 	add.w	r6, r9, r3
c0de59ba:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de59bc:	f896 6035 	ldrb.w	r6, [r6, #53]	@ 0x35
c0de59c0:	b274      	sxtb	r4, r6
c0de59c2:	42a1      	cmp	r1, r4
c0de59c4:	dd08      	ble.n	c0de59d8 <displayChoicePage+0x50>
c0de59c6:	b1ee      	cbz	r6, c0de5a04 <displayChoicePage+0x7c>
c0de59c8:	1e71      	subs	r1, r6, #1
c0de59ca:	fab1 f181 	clz	r1, r1
c0de59ce:	0949      	lsrs	r1, r1, #5
c0de59d0:	4029      	ands	r1, r5
c0de59d2:	2901      	cmp	r1, #1
c0de59d4:	d01c      	beq.n	c0de5a10 <displayChoicePage+0x88>
c0de59d6:	e030      	b.n	c0de5a3a <displayChoicePage+0xb2>
c0de59d8:	d108      	bne.n	c0de59ec <displayChoicePage+0x64>
c0de59da:	4a20      	ldr	r2, [pc, #128]	@ (c0de5a5c <displayChoicePage+0xd4>)
c0de59dc:	eb09 0103 	add.w	r1, r9, r3
c0de59e0:	447a      	add	r2, pc
c0de59e2:	638a      	str	r2, [r1, #56]	@ 0x38
c0de59e4:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de59e6:	491e      	ldr	r1, [pc, #120]	@ (c0de5a60 <displayChoicePage+0xd8>)
c0de59e8:	4479      	add	r1, pc
c0de59ea:	e00f      	b.n	c0de5a0c <displayChoicePage+0x84>
c0de59ec:	1c4a      	adds	r2, r1, #1
c0de59ee:	42a2      	cmp	r2, r4
c0de59f0:	d112      	bne.n	c0de5a18 <displayChoicePage+0x90>
c0de59f2:	4a1c      	ldr	r2, [pc, #112]	@ (c0de5a64 <displayChoicePage+0xdc>)
c0de59f4:	eb09 0103 	add.w	r1, r9, r3
c0de59f8:	447a      	add	r2, pc
c0de59fa:	638a      	str	r2, [r1, #56]	@ 0x38
c0de59fc:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de59fe:	491a      	ldr	r1, [pc, #104]	@ (c0de5a68 <displayChoicePage+0xe0>)
c0de5a00:	4479      	add	r1, pc
c0de5a02:	e003      	b.n	c0de5a0c <displayChoicePage+0x84>
c0de5a04:	eb09 0103 	add.w	r1, r9, r3
c0de5a08:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de5a0a:	b109      	cbz	r1, c0de5a10 <displayChoicePage+0x88>
c0de5a0c:	2300      	movs	r3, #0
c0de5a0e:	e017      	b.n	c0de5a40 <displayChoicePage+0xb8>
c0de5a10:	eb09 0103 	add.w	r1, r9, r3
c0de5a14:	6c4b      	ldr	r3, [r1, #68]	@ 0x44
c0de5a16:	e012      	b.n	c0de5a3e <displayChoicePage+0xb6>
c0de5a18:	eb09 0203 	add.w	r2, r9, r3
c0de5a1c:	6d52      	ldr	r2, [r2, #84]	@ 0x54
c0de5a1e:	b162      	cbz	r2, c0de5a3a <displayChoicePage+0xb2>
c0de5a20:	7913      	ldrb	r3, [r2, #4]
c0de5a22:	2b03      	cmp	r3, #3
c0de5a24:	d109      	bne.n	c0de5a3a <displayChoicePage+0xb2>
c0de5a26:	1a61      	subs	r1, r4, r1
c0de5a28:	f06f 0307 	mvn.w	r3, #7
c0de5a2c:	e9d2 4203 	ldrd	r4, r2, [r2, #12]
c0de5a30:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de5a34:	5853      	ldr	r3, [r2, r1]
c0de5a36:	5862      	ldr	r2, [r4, r1]
c0de5a38:	e001      	b.n	c0de5a3e <displayChoicePage+0xb6>
c0de5a3a:	2200      	movs	r2, #0
c0de5a3c:	2300      	movs	r3, #0
c0de5a3e:	2100      	movs	r1, #0
c0de5a40:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5a6c <displayChoicePage+0xe4>)
c0de5a42:	2400      	movs	r4, #0
c0de5a44:	9402      	str	r4, [sp, #8]
c0de5a46:	447d      	add	r5, pc
c0de5a48:	e9cd 5400 	strd	r5, r4, [sp]
c0de5a4c:	f7ff fd5a 	bl	c0de5504 <drawStep>
c0de5a50:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de5a54:	f001 bd4d 	b.w	c0de74f2 <nbgl_refresh>
c0de5a58:	000009d0 	.word	0x000009d0
c0de5a5c:	00000fe9 	.word	0x00000fe9
c0de5a60:	000027be 	.word	0x000027be
c0de5a64:	00000fe5 	.word	0x00000fe5
c0de5a68:	0000272a 	.word	0x0000272a
c0de5a6c:	00000fab 	.word	0x00000fab

c0de5a70 <getContentAtIdx>:
c0de5a70:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5a72:	b087      	sub	sp, #28
c0de5a74:	460d      	mov	r5, r1
c0de5a76:	4606      	mov	r6, r0
c0de5a78:	a801      	add	r0, sp, #4
c0de5a7a:	2118      	movs	r1, #24
c0de5a7c:	4614      	mov	r4, r2
c0de5a7e:	f002 fa53 	bl	c0de7f28 <__aeabi_memclr>
c0de5a82:	2d00      	cmp	r5, #0
c0de5a84:	d428      	bmi.n	c0de5ad8 <getContentAtIdx+0x68>
c0de5a86:	7a30      	ldrb	r0, [r6, #8]
c0de5a88:	4285      	cmp	r5, r0
c0de5a8a:	da25      	bge.n	c0de5ad8 <getContentAtIdx+0x68>
c0de5a8c:	7830      	ldrb	r0, [r6, #0]
c0de5a8e:	b338      	cbz	r0, c0de5ae0 <getContentAtIdx+0x70>
c0de5a90:	b314      	cbz	r4, c0de5ad8 <getContentAtIdx+0x68>
c0de5a92:	4620      	mov	r0, r4
c0de5a94:	2138      	movs	r1, #56	@ 0x38
c0de5a96:	f002 fa47 	bl	c0de7f28 <__aeabi_memclr>
c0de5a9a:	4821      	ldr	r0, [pc, #132]	@ (c0de5b20 <getContentAtIdx+0xb0>)
c0de5a9c:	4448      	add	r0, r9
c0de5a9e:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5aa0:	b342      	cbz	r2, c0de5af4 <getContentAtIdx+0x84>
c0de5aa2:	b2e8      	uxtb	r0, r5
c0de5aa4:	ad01      	add	r5, sp, #4
c0de5aa6:	4629      	mov	r1, r5
c0de5aa8:	4790      	blx	r2
c0de5aaa:	b1a8      	cbz	r0, c0de5ad8 <getContentAtIdx+0x68>
c0de5aac:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de5ab0:	280a      	cmp	r0, #10
c0de5ab2:	7020      	strb	r0, [r4, #0]
c0de5ab4:	d023      	beq.n	c0de5afe <getContentAtIdx+0x8e>
c0de5ab6:	2803      	cmp	r0, #3
c0de5ab8:	d008      	beq.n	c0de5acc <getContentAtIdx+0x5c>
c0de5aba:	2804      	cmp	r0, #4
c0de5abc:	d025      	beq.n	c0de5b0a <getContentAtIdx+0x9a>
c0de5abe:	2807      	cmp	r0, #7
c0de5ac0:	d029      	beq.n	c0de5b16 <getContentAtIdx+0xa6>
c0de5ac2:	2808      	cmp	r0, #8
c0de5ac4:	d002      	beq.n	c0de5acc <getContentAtIdx+0x5c>
c0de5ac6:	2809      	cmp	r0, #9
c0de5ac8:	d019      	beq.n	c0de5afe <getContentAtIdx+0x8e>
c0de5aca:	b928      	cbnz	r0, c0de5ad8 <getContentAtIdx+0x68>
c0de5acc:	1d28      	adds	r0, r5, #4
c0de5ace:	1d21      	adds	r1, r4, #4
c0de5ad0:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de5ad4:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de5ad6:	e000      	b.n	c0de5ada <getContentAtIdx+0x6a>
c0de5ad8:	2400      	movs	r4, #0
c0de5ada:	4620      	mov	r0, r4
c0de5adc:	b007      	add	sp, #28
c0de5ade:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5ae0:	6871      	ldr	r1, [r6, #4]
c0de5ae2:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de5ae6:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5aea:	b007      	add	sp, #28
c0de5aec:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5af0:	f001 bf0e 	b.w	c0de7910 <pic>
c0de5af4:	6872      	ldr	r2, [r6, #4]
c0de5af6:	b2e8      	uxtb	r0, r5
c0de5af8:	4621      	mov	r1, r4
c0de5afa:	4790      	blx	r2
c0de5afc:	e7ed      	b.n	c0de5ada <getContentAtIdx+0x6a>
c0de5afe:	1d28      	adds	r0, r5, #4
c0de5b00:	1d21      	adds	r1, r4, #4
c0de5b02:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de5b06:	c12c      	stmia	r1!, {r2, r3, r5}
c0de5b08:	e7e7      	b.n	c0de5ada <getContentAtIdx+0x6a>
c0de5b0a:	1d28      	adds	r0, r5, #4
c0de5b0c:	1d21      	adds	r1, r4, #4
c0de5b0e:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de5b12:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de5b14:	e7e1      	b.n	c0de5ada <getContentAtIdx+0x6a>
c0de5b16:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de5b1a:	e9c4 0101 	strd	r0, r1, [r4, #4]
c0de5b1e:	e7dc      	b.n	c0de5ada <getContentAtIdx+0x6a>
c0de5b20:	000009d0 	.word	0x000009d0

c0de5b24 <getContentNbElement>:
c0de5b24:	7802      	ldrb	r2, [r0, #0]
c0de5b26:	2101      	movs	r1, #1
c0de5b28:	b1a2      	cbz	r2, c0de5b54 <getContentNbElement+0x30>
c0de5b2a:	2a03      	cmp	r2, #3
c0de5b2c:	d012      	beq.n	c0de5b54 <getContentNbElement+0x30>
c0de5b2e:	2a0a      	cmp	r2, #10
c0de5b30:	d007      	beq.n	c0de5b42 <getContentNbElement+0x1e>
c0de5b32:	2a07      	cmp	r2, #7
c0de5b34:	d007      	beq.n	c0de5b46 <getContentNbElement+0x22>
c0de5b36:	2a08      	cmp	r2, #8
c0de5b38:	d007      	beq.n	c0de5b4a <getContentNbElement+0x26>
c0de5b3a:	2a09      	cmp	r2, #9
c0de5b3c:	d007      	beq.n	c0de5b4e <getContentNbElement+0x2a>
c0de5b3e:	2a04      	cmp	r2, #4
c0de5b40:	d107      	bne.n	c0de5b52 <getContentNbElement+0x2e>
c0de5b42:	7b01      	ldrb	r1, [r0, #12]
c0de5b44:	e006      	b.n	c0de5b54 <getContentNbElement+0x30>
c0de5b46:	7a01      	ldrb	r1, [r0, #8]
c0de5b48:	e004      	b.n	c0de5b54 <getContentNbElement+0x30>
c0de5b4a:	7c01      	ldrb	r1, [r0, #16]
c0de5b4c:	e002      	b.n	c0de5b54 <getContentNbElement+0x30>
c0de5b4e:	7a41      	ldrb	r1, [r0, #9]
c0de5b50:	e000      	b.n	c0de5b54 <getContentNbElement+0x30>
c0de5b52:	2100      	movs	r1, #0
c0de5b54:	4608      	mov	r0, r1
c0de5b56:	4770      	bx	lr

c0de5b58 <displayContent>:
c0de5b58:	b570      	push	{r4, r5, r6, lr}
c0de5b5a:	b08a      	sub	sp, #40	@ 0x28
c0de5b5c:	460d      	mov	r5, r1
c0de5b5e:	4604      	mov	r4, r0
c0de5b60:	a804      	add	r0, sp, #16
c0de5b62:	2118      	movs	r1, #24
c0de5b64:	f002 f9e0 	bl	c0de7f28 <__aeabi_memclr>
c0de5b68:	4820      	ldr	r0, [pc, #128]	@ (c0de5bec <displayContent+0x94>)
c0de5b6a:	f000 ff57 	bl	c0de6a1c <OUTLINED_FUNCTION_1>
c0de5b6e:	dd14      	ble.n	c0de5b9a <displayContent+0x42>
c0de5b70:	a904      	add	r1, sp, #16
c0de5b72:	4628      	mov	r0, r5
c0de5b74:	f000 f846 	bl	c0de5c04 <getContentPage>
c0de5b78:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5b7c:	b318      	cbz	r0, c0de5bc6 <displayContent+0x6e>
c0de5b7e:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5b82:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5b86:	481e      	ldr	r0, [pc, #120]	@ (c0de5c00 <displayContent+0xa8>)
c0de5b88:	4478      	add	r0, pc
c0de5b8a:	2b00      	cmp	r3, #0
c0de5b8c:	9000      	str	r0, [sp, #0]
c0de5b8e:	4620      	mov	r0, r4
c0de5b90:	bf18      	it	ne
c0de5b92:	2301      	movne	r3, #1
c0de5b94:	f000 f8d8 	bl	c0de5d48 <drawSwitchStep>
c0de5b98:	e023      	b.n	c0de5be2 <displayContent+0x8a>
c0de5b9a:	4448      	add	r0, r9
c0de5b9c:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de5b9e:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5ba0:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de5ba2:	4a13      	ldr	r2, [pc, #76]	@ (c0de5bf0 <displayContent+0x98>)
c0de5ba4:	2900      	cmp	r1, #0
c0de5ba6:	447a      	add	r2, pc
c0de5ba8:	bf18      	it	ne
c0de5baa:	460a      	movne	r2, r1
c0de5bac:	9205      	str	r2, [sp, #20]
c0de5bae:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5bb2:	4910      	ldr	r1, [pc, #64]	@ (c0de5bf4 <displayContent+0x9c>)
c0de5bb4:	4a10      	ldr	r2, [pc, #64]	@ (c0de5bf8 <displayContent+0xa0>)
c0de5bb6:	2803      	cmp	r0, #3
c0de5bb8:	447a      	add	r2, pc
c0de5bba:	4479      	add	r1, pc
c0de5bbc:	bf08      	it	eq
c0de5bbe:	460a      	moveq	r2, r1
c0de5bc0:	9207      	str	r2, [sp, #28]
c0de5bc2:	2000      	movs	r0, #0
c0de5bc4:	e002      	b.n	c0de5bcc <displayContent+0x74>
c0de5bc6:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5bca:	0040      	lsls	r0, r0, #1
c0de5bcc:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5bd0:	9907      	ldr	r1, [sp, #28]
c0de5bd2:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5bfc <displayContent+0xa4>)
c0de5bd4:	b2c0      	uxtb	r0, r0
c0de5bd6:	2500      	movs	r5, #0
c0de5bd8:	9002      	str	r0, [sp, #8]
c0de5bda:	4620      	mov	r0, r4
c0de5bdc:	447e      	add	r6, pc
c0de5bde:	f000 ff3f 	bl	c0de6a60 <OUTLINED_FUNCTION_6>
c0de5be2:	f001 fc86 	bl	c0de74f2 <nbgl_refresh>
c0de5be6:	b00a      	add	sp, #40	@ 0x28
c0de5be8:	bd70      	pop	{r4, r5, r6, pc}
c0de5bea:	bf00      	nop
c0de5bec:	000009d0 	.word	0x000009d0
c0de5bf0:	000028c3 	.word	0x000028c3
c0de5bf4:	00002570 	.word	0x00002570
c0de5bf8:	0000252c 	.word	0x0000252c
c0de5bfc:	000001b9 	.word	0x000001b9
c0de5c00:	0000020d 	.word	0x0000020d

c0de5c04 <getContentPage>:
c0de5c04:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5c06:	b093      	sub	sp, #76	@ 0x4c
c0de5c08:	4606      	mov	r6, r0
c0de5c0a:	2000      	movs	r0, #0
c0de5c0c:	460c      	mov	r4, r1
c0de5c0e:	2138      	movs	r1, #56	@ 0x38
c0de5c10:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de5c14:	ad04      	add	r5, sp, #16
c0de5c16:	4628      	mov	r0, r5
c0de5c18:	f002 f986 	bl	c0de7f28 <__aeabi_memclr>
c0de5c1c:	4f47      	ldr	r7, [pc, #284]	@ (c0de5d3c <getContentPage+0x138>)
c0de5c1e:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de5c22:	462a      	mov	r2, r5
c0de5c24:	eb09 0007 	add.w	r0, r9, r7
c0de5c28:	f000 ff13 	bl	c0de6a52 <OUTLINED_FUNCTION_4>
c0de5c2c:	2800      	cmp	r0, #0
c0de5c2e:	d07a      	beq.n	c0de5d26 <getContentPage+0x122>
c0de5c30:	4605      	mov	r5, r0
c0de5c32:	7800      	ldrb	r0, [r0, #0]
c0de5c34:	280a      	cmp	r0, #10
c0de5c36:	d011      	beq.n	c0de5c5c <getContentPage+0x58>
c0de5c38:	2803      	cmp	r0, #3
c0de5c3a:	d02c      	beq.n	c0de5c96 <getContentPage+0x92>
c0de5c3c:	2804      	cmp	r0, #4
c0de5c3e:	d035      	beq.n	c0de5cac <getContentPage+0xa8>
c0de5c40:	2807      	cmp	r0, #7
c0de5c42:	d045      	beq.n	c0de5cd0 <getContentPage+0xcc>
c0de5c44:	2808      	cmp	r0, #8
c0de5c46:	d060      	beq.n	c0de5d0a <getContentPage+0x106>
c0de5c48:	2809      	cmp	r0, #9
c0de5c4a:	d007      	beq.n	c0de5c5c <getContentPage+0x58>
c0de5c4c:	2800      	cmp	r0, #0
c0de5c4e:	d16a      	bne.n	c0de5d26 <getContentPage+0x122>
c0de5c50:	6868      	ldr	r0, [r5, #4]
c0de5c52:	f001 fe5d 	bl	c0de7910 <pic>
c0de5c56:	6060      	str	r0, [r4, #4]
c0de5c58:	68a8      	ldr	r0, [r5, #8]
c0de5c5a:	e019      	b.n	c0de5c90 <getContentPage+0x8c>
c0de5c5c:	1d28      	adds	r0, r5, #4
c0de5c5e:	eb09 0607 	add.w	r6, r9, r7
c0de5c62:	f001 fe55 	bl	c0de7910 <pic>
c0de5c66:	6800      	ldr	r0, [r0, #0]
c0de5c68:	f001 fe52 	bl	c0de7910 <pic>
c0de5c6c:	f896 102c 	ldrb.w	r1, [r6, #44]	@ 0x2c
c0de5c70:	4605      	mov	r5, r0
c0de5c72:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de5c74:	2910      	cmp	r1, #16
c0de5c76:	d100      	bne.n	c0de5c7a <getContentPage+0x76>
c0de5c78:	b918      	cbnz	r0, c0de5c82 <getContentPage+0x7e>
c0de5c7a:	290f      	cmp	r1, #15
c0de5c7c:	d155      	bne.n	c0de5d2a <getContentPage+0x126>
c0de5c7e:	2800      	cmp	r0, #0
c0de5c80:	d053      	beq.n	c0de5d2a <getContentPage+0x126>
c0de5c82:	f001 fe45 	bl	c0de7910 <pic>
c0de5c86:	6060      	str	r0, [r4, #4]
c0de5c88:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5c8c:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5c90:	f001 fe3e 	bl	c0de7910 <pic>
c0de5c94:	e046      	b.n	c0de5d24 <getContentPage+0x120>
c0de5c96:	68a8      	ldr	r0, [r5, #8]
c0de5c98:	4e29      	ldr	r6, [pc, #164]	@ (c0de5d40 <getContentPage+0x13c>)
c0de5c9a:	447e      	add	r6, pc
c0de5c9c:	47b0      	blx	r6
c0de5c9e:	60e0      	str	r0, [r4, #12]
c0de5ca0:	6868      	ldr	r0, [r5, #4]
c0de5ca2:	47b0      	blx	r6
c0de5ca4:	6060      	str	r0, [r4, #4]
c0de5ca6:	68e8      	ldr	r0, [r5, #12]
c0de5ca8:	47b0      	blx	r6
c0de5caa:	e03b      	b.n	c0de5d24 <getContentPage+0x120>
c0de5cac:	f104 0015 	add.w	r0, r4, #21
c0de5cb0:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5cb4:	f104 020c 	add.w	r2, r4, #12
c0de5cb8:	f104 0310 	add.w	r3, r4, #16
c0de5cbc:	e9cd 3200 	strd	r3, r2, [sp]
c0de5cc0:	9002      	str	r0, [sp, #8]
c0de5cc2:	1d28      	adds	r0, r5, #4
c0de5cc4:	1d22      	adds	r2, r4, #4
c0de5cc6:	f104 0308 	add.w	r3, r4, #8
c0de5cca:	f000 f8b9 	bl	c0de5e40 <getPairData>
c0de5cce:	e02a      	b.n	c0de5d26 <getContentPage+0x122>
c0de5cd0:	2001      	movs	r0, #1
c0de5cd2:	444f      	add	r7, r9
c0de5cd4:	7020      	strb	r0, [r4, #0]
c0de5cd6:	6868      	ldr	r0, [r5, #4]
c0de5cd8:	f001 fe1a 	bl	c0de7910 <pic>
c0de5cdc:	4919      	ldr	r1, [pc, #100]	@ (c0de5d44 <getContentPage+0x140>)
c0de5cde:	4479      	add	r1, pc
c0de5ce0:	63b9      	str	r1, [r7, #56]	@ 0x38
c0de5ce2:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5ce6:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5cea:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de5cee:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5cf2:	6062      	str	r2, [r4, #4]
c0de5cf4:	6841      	ldr	r1, [r0, #4]
c0de5cf6:	60a1      	str	r1, [r4, #8]
c0de5cf8:	7a00      	ldrb	r0, [r0, #8]
c0de5cfa:	1e41      	subs	r1, r0, #1
c0de5cfc:	bf18      	it	ne
c0de5cfe:	2101      	movne	r1, #1
c0de5d00:	2e00      	cmp	r6, #0
c0de5d02:	bf08      	it	eq
c0de5d04:	4601      	moveq	r1, r0
c0de5d06:	7521      	strb	r1, [r4, #20]
c0de5d08:	e00d      	b.n	c0de5d26 <getContentPage+0x122>
c0de5d0a:	6868      	ldr	r0, [r5, #4]
c0de5d0c:	f001 fe00 	bl	c0de7910 <pic>
c0de5d10:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de5d14:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5d18:	6060      	str	r0, [r4, #4]
c0de5d1a:	68a8      	ldr	r0, [r5, #8]
c0de5d1c:	f001 fdf8 	bl	c0de7910 <pic>
c0de5d20:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5d24:	60a0      	str	r0, [r4, #8]
c0de5d26:	b013      	add	sp, #76	@ 0x4c
c0de5d28:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5d2a:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5d2e:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5d32:	f001 fded 	bl	c0de7910 <pic>
c0de5d36:	6060      	str	r0, [r4, #4]
c0de5d38:	e7f5      	b.n	c0de5d26 <getContentPage+0x122>
c0de5d3a:	bf00      	nop
c0de5d3c:	000009d0 	.word	0x000009d0
c0de5d40:	00001c73 	.word	0x00001c73
c0de5d44:	000001a7 	.word	0x000001a7

c0de5d48 <drawSwitchStep>:
c0de5d48:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5d4a:	b085      	sub	sp, #20
c0de5d4c:	4c11      	ldr	r4, [pc, #68]	@ (c0de5d94 <drawSwitchStep+0x4c>)
c0de5d4e:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de5d52:	2600      	movs	r6, #0
c0de5d54:	eb09 0504 	add.w	r5, r9, r4
c0de5d58:	f895 7034 	ldrb.w	r7, [r5, #52]	@ 0x34
c0de5d5c:	2500      	movs	r5, #0
c0de5d5e:	2f02      	cmp	r7, #2
c0de5d60:	d30a      	bcc.n	c0de5d78 <drawSwitchStep+0x30>
c0de5d62:	444c      	add	r4, r9
c0de5d64:	f994 4035 	ldrsb.w	r4, [r4, #53]	@ 0x35
c0de5d68:	b12c      	cbz	r4, c0de5d76 <drawSwitchStep+0x2e>
c0de5d6a:	3f01      	subs	r7, #1
c0de5d6c:	2603      	movs	r6, #3
c0de5d6e:	42a7      	cmp	r7, r4
c0de5d70:	bf08      	it	eq
c0de5d72:	2602      	moveq	r6, #2
c0de5d74:	e000      	b.n	c0de5d78 <drawSwitchStep+0x30>
c0de5d76:	2601      	movs	r6, #1
c0de5d78:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5d7c:	f88d 3010 	strb.w	r3, [sp, #16]
c0de5d80:	9500      	str	r5, [sp, #0]
c0de5d82:	4330      	orrs	r0, r6
c0de5d84:	ab02      	add	r3, sp, #8
c0de5d86:	4661      	mov	r1, ip
c0de5d88:	2200      	movs	r2, #0
c0de5d8a:	f7ff f81f 	bl	c0de4dcc <nbgl_stepDrawSwitch>
c0de5d8e:	b005      	add	sp, #20
c0de5d90:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5d92:	bf00      	nop
c0de5d94:	000009d0 	.word	0x000009d0

c0de5d98 <contentCallback>:
c0de5d98:	b5e0      	push	{r5, r6, r7, lr}
c0de5d9a:	4608      	mov	r0, r1
c0de5d9c:	f10d 0107 	add.w	r1, sp, #7
c0de5da0:	f000 f928 	bl	c0de5ff4 <buttonGenericCallback>
c0de5da4:	b130      	cbz	r0, c0de5db4 <contentCallback+0x1c>
c0de5da6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5daa:	2100      	movs	r1, #0
c0de5dac:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5db0:	f7ff bed2 	b.w	c0de5b58 <displayContent>
c0de5db4:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5db8 <getContentElemAtIdx>:
c0de5db8:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5dbc:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5e38 <getContentElemAtIdx+0x80>)
c0de5dbe:	4606      	mov	r6, r0
c0de5dc0:	2700      	movs	r7, #0
c0de5dc2:	eb09 0004 	add.w	r0, r9, r4
c0de5dc6:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
c0de5dca:	2b10      	cmp	r3, #16
c0de5dcc:	d830      	bhi.n	c0de5e30 <getContentElemAtIdx+0x78>
c0de5dce:	4693      	mov	fp, r2
c0de5dd0:	2201      	movs	r2, #1
c0de5dd2:	9101      	str	r1, [sp, #4]
c0de5dd4:	fa02 f303 	lsl.w	r3, r2, r3
c0de5dd8:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5ddc:	d004      	beq.n	c0de5de8 <getContentElemAtIdx+0x30>
c0de5dde:	eb09 0004 	add.w	r0, r9, r4
c0de5de2:	46a2      	mov	sl, r4
c0de5de4:	6c84      	ldr	r4, [r0, #72]	@ 0x48
c0de5de6:	e005      	b.n	c0de5df4 <getContentElemAtIdx+0x3c>
c0de5de8:	4a14      	ldr	r2, [pc, #80]	@ (c0de5e3c <getContentElemAtIdx+0x84>)
c0de5dea:	4213      	tst	r3, r2
c0de5dec:	d020      	beq.n	c0de5e30 <getContentElemAtIdx+0x78>
c0de5dee:	46a2      	mov	sl, r4
c0de5df0:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0de5df4:	2700      	movs	r7, #0
c0de5df6:	2000      	movs	r0, #0
c0de5df8:	f04f 0800 	mov.w	r8, #0
c0de5dfc:	4605      	mov	r5, r0
c0de5dfe:	7a20      	ldrb	r0, [r4, #8]
c0de5e00:	4580      	cmp	r8, r0
c0de5e02:	d215      	bcs.n	c0de5e30 <getContentElemAtIdx+0x78>
c0de5e04:	fa4f f188 	sxtb.w	r1, r8
c0de5e08:	4620      	mov	r0, r4
c0de5e0a:	465a      	mov	r2, fp
c0de5e0c:	f7ff fe30 	bl	c0de5a70 <getContentAtIdx>
c0de5e10:	4607      	mov	r7, r0
c0de5e12:	f7ff fe87 	bl	c0de5b24 <getContentNbElement>
c0de5e16:	b2e9      	uxtb	r1, r5
c0de5e18:	f108 0801 	add.w	r8, r8, #1
c0de5e1c:	4408      	add	r0, r1
c0de5e1e:	42b0      	cmp	r0, r6
c0de5e20:	d9ec      	bls.n	c0de5dfc <getContentElemAtIdx+0x44>
c0de5e22:	eb09 000a 	add.w	r0, r9, sl
c0de5e26:	9901      	ldr	r1, [sp, #4]
c0de5e28:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5e2c:	1b40      	subs	r0, r0, r5
c0de5e2e:	7008      	strb	r0, [r1, #0]
c0de5e30:	4638      	mov	r0, r7
c0de5e32:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5e36:	bf00      	nop
c0de5e38:	000009d0 	.word	0x000009d0
c0de5e3c:	00010008 	.word	0x00010008

c0de5e40 <getPairData>:
c0de5e40:	b5b0      	push	{r4, r5, r7, lr}
c0de5e42:	4615      	mov	r5, r2
c0de5e44:	6802      	ldr	r2, [r0, #0]
c0de5e46:	461c      	mov	r4, r3
c0de5e48:	b112      	cbz	r2, c0de5e50 <getPairData+0x10>
c0de5e4a:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5e4e:	e002      	b.n	c0de5e56 <getPairData+0x16>
c0de5e50:	6842      	ldr	r2, [r0, #4]
c0de5e52:	4608      	mov	r0, r1
c0de5e54:	4790      	blx	r2
c0de5e56:	f001 fd5b 	bl	c0de7910 <pic>
c0de5e5a:	6802      	ldr	r2, [r0, #0]
c0de5e5c:	9904      	ldr	r1, [sp, #16]
c0de5e5e:	602a      	str	r2, [r5, #0]
c0de5e60:	6842      	ldr	r2, [r0, #4]
c0de5e62:	6022      	str	r2, [r4, #0]
c0de5e64:	7b02      	ldrb	r2, [r0, #12]
c0de5e66:	0753      	lsls	r3, r2, #29
c0de5e68:	d403      	bmi.n	c0de5e72 <getPairData+0x32>
c0de5e6a:	0792      	lsls	r2, r2, #30
c0de5e6c:	d404      	bmi.n	c0de5e78 <getPairData+0x38>
c0de5e6e:	2000      	movs	r0, #0
c0de5e70:	e000      	b.n	c0de5e74 <getPairData+0x34>
c0de5e72:	6880      	ldr	r0, [r0, #8]
c0de5e74:	6008      	str	r0, [r1, #0]
c0de5e76:	bdb0      	pop	{r4, r5, r7, pc}
c0de5e78:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5e7c:	2301      	movs	r3, #1
c0de5e7e:	700b      	strb	r3, [r1, #0]
c0de5e80:	6880      	ldr	r0, [r0, #8]
c0de5e82:	6010      	str	r0, [r2, #0]
c0de5e84:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5e88 <onSwitchAction>:
c0de5e88:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5e8a:	b08f      	sub	sp, #60	@ 0x3c
c0de5e8c:	ac01      	add	r4, sp, #4
c0de5e8e:	2138      	movs	r1, #56	@ 0x38
c0de5e90:	4620      	mov	r0, r4
c0de5e92:	f002 f849 	bl	c0de7f28 <__aeabi_memclr>
c0de5e96:	4e26      	ldr	r6, [pc, #152]	@ (c0de5f30 <onSwitchAction+0xa8>)
c0de5e98:	f10d 0103 	add.w	r1, sp, #3
c0de5e9c:	4622      	mov	r2, r4
c0de5e9e:	eb09 0006 	add.w	r0, r9, r6
c0de5ea2:	f000 fdd6 	bl	c0de6a52 <OUTLINED_FUNCTION_4>
c0de5ea6:	2800      	cmp	r0, #0
c0de5ea8:	d040      	beq.n	c0de5f2c <onSwitchAction+0xa4>
c0de5eaa:	4604      	mov	r4, r0
c0de5eac:	7800      	ldrb	r0, [r0, #0]
c0de5eae:	2807      	cmp	r0, #7
c0de5eb0:	d13c      	bne.n	c0de5f2c <onSwitchAction+0xa4>
c0de5eb2:	6860      	ldr	r0, [r4, #4]
c0de5eb4:	eb09 0706 	add.w	r7, r9, r6
c0de5eb8:	f001 fd2a 	bl	c0de7910 <pic>
c0de5ebc:	4605      	mov	r5, r0
c0de5ebe:	f897 002c 	ldrb.w	r0, [r7, #44]	@ 0x2c
c0de5ec2:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5ec6:	2810      	cmp	r0, #16
c0de5ec8:	d811      	bhi.n	c0de5eee <onSwitchAction+0x66>
c0de5eca:	2101      	movs	r1, #1
c0de5ecc:	fa01 f000 	lsl.w	r0, r1, r0
c0de5ed0:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5ed4:	d004      	beq.n	c0de5ee0 <onSwitchAction+0x58>
c0de5ed6:	2000      	movs	r0, #0
c0de5ed8:	2101      	movs	r1, #1
c0de5eda:	f000 f82d 	bl	c0de5f38 <displaySettingsPage>
c0de5ede:	e006      	b.n	c0de5eee <onSwitchAction+0x66>
c0de5ee0:	4914      	ldr	r1, [pc, #80]	@ (c0de5f34 <onSwitchAction+0xac>)
c0de5ee2:	4208      	tst	r0, r1
c0de5ee4:	d003      	beq.n	c0de5eee <onSwitchAction+0x66>
c0de5ee6:	2000      	movs	r0, #0
c0de5ee8:	2101      	movs	r1, #1
c0de5eea:	f7ff fe35 	bl	c0de5b58 <displayContent>
c0de5eee:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de5ef0:	b188      	cbz	r0, c0de5f16 <onSwitchAction+0x8e>
c0de5ef2:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5ef6:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5efa:	f001 fd09 	bl	c0de7910 <pic>
c0de5efe:	7a21      	ldrb	r1, [r4, #8]
c0de5f00:	eb09 0206 	add.w	r2, r9, r6
c0de5f04:	4603      	mov	r3, r0
c0de5f06:	7a60      	ldrb	r0, [r4, #9]
c0de5f08:	3901      	subs	r1, #1
c0de5f0a:	bf18      	it	ne
c0de5f0c:	2101      	movne	r1, #1
c0de5f0e:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5f12:	4798      	blx	r3
c0de5f14:	e00a      	b.n	c0de5f2c <onSwitchAction+0xa4>
c0de5f16:	eb09 0006 	add.w	r0, r9, r6
c0de5f1a:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5f1c:	b132      	cbz	r2, c0de5f2c <onSwitchAction+0xa4>
c0de5f1e:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de5f22:	2100      	movs	r1, #0
c0de5f24:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5f28:	7a40      	ldrb	r0, [r0, #9]
c0de5f2a:	4790      	blx	r2
c0de5f2c:	b00f      	add	sp, #60	@ 0x3c
c0de5f2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5f30:	000009d0 	.word	0x000009d0
c0de5f34:	00010008 	.word	0x00010008

c0de5f38 <displaySettingsPage>:
c0de5f38:	b5b0      	push	{r4, r5, r7, lr}
c0de5f3a:	b08a      	sub	sp, #40	@ 0x28
c0de5f3c:	460d      	mov	r5, r1
c0de5f3e:	4604      	mov	r4, r0
c0de5f40:	a804      	add	r0, sp, #16
c0de5f42:	2118      	movs	r1, #24
c0de5f44:	f001 fff0 	bl	c0de7f28 <__aeabi_memclr>
c0de5f48:	481c      	ldr	r0, [pc, #112]	@ (c0de5fbc <displaySettingsPage+0x84>)
c0de5f4a:	f000 fd67 	bl	c0de6a1c <OUTLINED_FUNCTION_1>
c0de5f4e:	dd14      	ble.n	c0de5f7a <displaySettingsPage+0x42>
c0de5f50:	a904      	add	r1, sp, #16
c0de5f52:	4628      	mov	r0, r5
c0de5f54:	f7ff fe56 	bl	c0de5c04 <getContentPage>
c0de5f58:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5f5c:	b1e8      	cbz	r0, c0de5f9a <displaySettingsPage+0x62>
c0de5f5e:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5f62:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5f66:	481a      	ldr	r0, [pc, #104]	@ (c0de5fd0 <displaySettingsPage+0x98>)
c0de5f68:	4478      	add	r0, pc
c0de5f6a:	2b00      	cmp	r3, #0
c0de5f6c:	9000      	str	r0, [sp, #0]
c0de5f6e:	4620      	mov	r0, r4
c0de5f70:	bf18      	it	ne
c0de5f72:	2301      	movne	r3, #1
c0de5f74:	f7ff fee8 	bl	c0de5d48 <drawSwitchStep>
c0de5f78:	e01b      	b.n	c0de5fb2 <displaySettingsPage+0x7a>
c0de5f7a:	4448      	add	r0, r9
c0de5f7c:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5f80:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5f82:	4b0f      	ldr	r3, [pc, #60]	@ (c0de5fc0 <displaySettingsPage+0x88>)
c0de5f84:	447b      	add	r3, pc
c0de5f86:	290f      	cmp	r1, #15
c0de5f88:	bf08      	it	eq
c0de5f8a:	4613      	moveq	r3, r2
c0de5f8c:	6383      	str	r3, [r0, #56]	@ 0x38
c0de5f8e:	480d      	ldr	r0, [pc, #52]	@ (c0de5fc4 <displaySettingsPage+0x8c>)
c0de5f90:	4478      	add	r0, pc
c0de5f92:	9005      	str	r0, [sp, #20]
c0de5f94:	480c      	ldr	r0, [pc, #48]	@ (c0de5fc8 <displaySettingsPage+0x90>)
c0de5f96:	4478      	add	r0, pc
c0de5f98:	9007      	str	r0, [sp, #28]
c0de5f9a:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5f9e:	9907      	ldr	r1, [sp, #28]
c0de5fa0:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5fcc <displaySettingsPage+0x94>)
c0de5fa2:	2000      	movs	r0, #0
c0de5fa4:	9002      	str	r0, [sp, #8]
c0de5fa6:	447d      	add	r5, pc
c0de5fa8:	e9cd 5000 	strd	r5, r0, [sp]
c0de5fac:	4620      	mov	r0, r4
c0de5fae:	f7ff faa9 	bl	c0de5504 <drawStep>
c0de5fb2:	f001 fa9e 	bl	c0de74f2 <nbgl_refresh>
c0de5fb6:	b00a      	add	sp, #40	@ 0x28
c0de5fb8:	bdb0      	pop	{r4, r5, r7, pc}
c0de5fba:	bf00      	nop
c0de5fbc:	000009d0 	.word	0x000009d0
c0de5fc0:	fffff10d 	.word	0xfffff10d
c0de5fc4:	000024d9 	.word	0x000024d9
c0de5fc8:	0000214e 	.word	0x0000214e
c0de5fcc:	0000002b 	.word	0x0000002b
c0de5fd0:	00000069 	.word	0x00000069

c0de5fd4 <settingsCallback>:
c0de5fd4:	b5e0      	push	{r5, r6, r7, lr}
c0de5fd6:	4608      	mov	r0, r1
c0de5fd8:	f10d 0107 	add.w	r1, sp, #7
c0de5fdc:	f000 f80a 	bl	c0de5ff4 <buttonGenericCallback>
c0de5fe0:	b130      	cbz	r0, c0de5ff0 <settingsCallback+0x1c>
c0de5fe2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5fe6:	2100      	movs	r1, #0
c0de5fe8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5fec:	f7ff bfa4 	b.w	c0de5f38 <displaySettingsPage>
c0de5ff0:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5ff4 <buttonGenericCallback>:
c0de5ff4:	b5b0      	push	{r4, r5, r7, lr}
c0de5ff6:	b090      	sub	sp, #64	@ 0x40
c0de5ff8:	460c      	mov	r4, r1
c0de5ffa:	4605      	mov	r5, r0
c0de5ffc:	a801      	add	r0, sp, #4
c0de5ffe:	2138      	movs	r1, #56	@ 0x38
c0de6000:	f001 ff92 	bl	c0de7f28 <__aeabi_memclr>
c0de6004:	2d04      	cmp	r5, #4
c0de6006:	d00d      	beq.n	c0de6024 <buttonGenericCallback+0x30>
c0de6008:	2d01      	cmp	r5, #1
c0de600a:	d012      	beq.n	c0de6032 <buttonGenericCallback+0x3e>
c0de600c:	2d00      	cmp	r5, #0
c0de600e:	d17c      	bne.n	c0de610a <buttonGenericCallback+0x116>
c0de6010:	483f      	ldr	r0, [pc, #252]	@ (c0de6110 <buttonGenericCallback+0x11c>)
c0de6012:	eb09 0100 	add.w	r1, r9, r0
c0de6016:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de601a:	2901      	cmp	r1, #1
c0de601c:	db1d      	blt.n	c0de605a <buttonGenericCallback+0x66>
c0de601e:	3901      	subs	r1, #1
c0de6020:	2008      	movs	r0, #8
c0de6022:	e013      	b.n	c0de604c <buttonGenericCallback+0x58>
c0de6024:	4c3a      	ldr	r4, [pc, #232]	@ (c0de6110 <buttonGenericCallback+0x11c>)
c0de6026:	eb09 0004 	add.w	r0, r9, r4
c0de602a:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de602c:	b338      	cbz	r0, c0de607e <buttonGenericCallback+0x8a>
c0de602e:	4780      	blx	r0
c0de6030:	e06b      	b.n	c0de610a <buttonGenericCallback+0x116>
c0de6032:	4837      	ldr	r0, [pc, #220]	@ (c0de6110 <buttonGenericCallback+0x11c>)
c0de6034:	eb09 0100 	add.w	r1, r9, r0
c0de6038:	f991 0035 	ldrsb.w	r0, [r1, #53]	@ 0x35
c0de603c:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de6040:	3901      	subs	r1, #1
c0de6042:	4281      	cmp	r1, r0
c0de6044:	dd61      	ble.n	c0de610a <buttonGenericCallback+0x116>
c0de6046:	b2c0      	uxtb	r0, r0
c0de6048:	1c41      	adds	r1, r0, #1
c0de604a:	2000      	movs	r0, #0
c0de604c:	4a30      	ldr	r2, [pc, #192]	@ (c0de6110 <buttonGenericCallback+0x11c>)
c0de604e:	444a      	add	r2, r9
c0de6050:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de6054:	7020      	strb	r0, [r4, #0]
c0de6056:	2001      	movs	r0, #1
c0de6058:	e058      	b.n	c0de610c <buttonGenericCallback+0x118>
c0de605a:	eb09 0100 	add.w	r1, r9, r0
c0de605e:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de6062:	2906      	cmp	r1, #6
c0de6064:	d151      	bne.n	c0de610a <buttonGenericCallback+0x116>
c0de6066:	eb09 0100 	add.w	r1, r9, r0
c0de606a:	6d89      	ldr	r1, [r1, #88]	@ 0x58
c0de606c:	2900      	cmp	r1, #0
c0de606e:	d04c      	beq.n	c0de610a <buttonGenericCallback+0x116>
c0de6070:	4448      	add	r0, r9
c0de6072:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6076:	2801      	cmp	r0, #1
c0de6078:	d047      	beq.n	c0de610a <buttonGenericCallback+0x116>
c0de607a:	2008      	movs	r0, #8
c0de607c:	e7ea      	b.n	c0de6054 <buttonGenericCallback+0x60>
c0de607e:	eb09 0004 	add.w	r0, r9, r4
c0de6082:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de6086:	2000      	movs	r0, #0
c0de6088:	2910      	cmp	r1, #16
c0de608a:	d83f      	bhi.n	c0de610c <buttonGenericCallback+0x118>
c0de608c:	2201      	movs	r2, #1
c0de608e:	fa02 f101 	lsl.w	r1, r2, r1
c0de6092:	4a20      	ldr	r2, [pc, #128]	@ (c0de6114 <buttonGenericCallback+0x120>)
c0de6094:	4211      	tst	r1, r2
c0de6096:	d039      	beq.n	c0de610c <buttonGenericCallback+0x118>
c0de6098:	eb09 0004 	add.w	r0, r9, r4
c0de609c:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de60a0:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de60a4:	aa01      	add	r2, sp, #4
c0de60a6:	f7ff fe87 	bl	c0de5db8 <getContentElemAtIdx>
c0de60aa:	b370      	cbz	r0, c0de610a <buttonGenericCallback+0x116>
c0de60ac:	7801      	ldrb	r1, [r0, #0]
c0de60ae:	4602      	mov	r2, r0
c0de60b0:	2000      	movs	r0, #0
c0de60b2:	b359      	cbz	r1, c0de610c <buttonGenericCallback+0x118>
c0de60b4:	290a      	cmp	r1, #10
c0de60b6:	d009      	beq.n	c0de60cc <buttonGenericCallback+0xd8>
c0de60b8:	2907      	cmp	r1, #7
c0de60ba:	d00f      	beq.n	c0de60dc <buttonGenericCallback+0xe8>
c0de60bc:	2909      	cmp	r1, #9
c0de60be:	d011      	beq.n	c0de60e4 <buttonGenericCallback+0xf0>
c0de60c0:	2903      	cmp	r1, #3
c0de60c2:	f04f 0100 	mov.w	r1, #0
c0de60c6:	d112      	bne.n	c0de60ee <buttonGenericCallback+0xfa>
c0de60c8:	7c10      	ldrb	r0, [r2, #16]
c0de60ca:	e005      	b.n	c0de60d8 <buttonGenericCallback+0xe4>
c0de60cc:	eb09 0004 	add.w	r0, r9, r4
c0de60d0:	6891      	ldr	r1, [r2, #8]
c0de60d2:	f990 0035 	ldrsb.w	r0, [r0, #53]	@ 0x35
c0de60d6:	5c08      	ldrb	r0, [r1, r0]
c0de60d8:	2100      	movs	r1, #0
c0de60da:	e008      	b.n	c0de60ee <buttonGenericCallback+0xfa>
c0de60dc:	6850      	ldr	r0, [r2, #4]
c0de60de:	2100      	movs	r1, #0
c0de60e0:	7a40      	ldrb	r0, [r0, #9]
c0de60e2:	e004      	b.n	c0de60ee <buttonGenericCallback+0xfa>
c0de60e4:	eb09 0004 	add.w	r0, r9, r4
c0de60e8:	f890 1035 	ldrb.w	r1, [r0, #53]	@ 0x35
c0de60ec:	7ad0      	ldrb	r0, [r2, #11]
c0de60ee:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de60f0:	b133      	cbz	r3, c0de6100 <buttonGenericCallback+0x10c>
c0de60f2:	eb09 0104 	add.w	r1, r9, r4
c0de60f6:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de60fa:	2100      	movs	r1, #0
c0de60fc:	4798      	blx	r3
c0de60fe:	e004      	b.n	c0de610a <buttonGenericCallback+0x116>
c0de6100:	eb09 0204 	add.w	r2, r9, r4
c0de6104:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de6106:	b102      	cbz	r2, c0de610a <buttonGenericCallback+0x116>
c0de6108:	4790      	blx	r2
c0de610a:	2000      	movs	r0, #0
c0de610c:	b010      	add	sp, #64	@ 0x40
c0de610e:	bdb0      	pop	{r4, r5, r7, pc}
c0de6110:	000009d0 	.word	0x000009d0
c0de6114:	0001c008 	.word	0x0001c008

c0de6118 <displayHomePage>:
c0de6118:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de611c:	4680      	mov	r8, r0
c0de611e:	4832      	ldr	r0, [pc, #200]	@ (c0de61e8 <displayHomePage+0xd0>)
c0de6120:	2200      	movs	r2, #0
c0de6122:	eb09 0100 	add.w	r1, r9, r0
c0de6126:	6c8f      	ldr	r7, [r1, #72]	@ 0x48
c0de6128:	6d0d      	ldr	r5, [r1, #80]	@ 0x50
c0de612a:	638a      	str	r2, [r1, #56]	@ 0x38
c0de612c:	2202      	movs	r2, #2
c0de612e:	2d00      	cmp	r5, #0
c0de6130:	463e      	mov	r6, r7
c0de6132:	bf08      	it	eq
c0de6134:	2201      	moveq	r2, #1
c0de6136:	2f00      	cmp	r7, #0
c0de6138:	bf18      	it	ne
c0de613a:	2601      	movne	r6, #1
c0de613c:	f991 3035 	ldrsb.w	r3, [r1, #53]	@ 0x35
c0de6140:	b183      	cbz	r3, c0de6164 <displayHomePage+0x4c>
c0de6142:	2401      	movs	r4, #1
c0de6144:	2d00      	cmp	r5, #0
c0de6146:	bf08      	it	eq
c0de6148:	24ff      	moveq	r4, #255	@ 0xff
c0de614a:	429c      	cmp	r4, r3
c0de614c:	d111      	bne.n	c0de6172 <displayHomePage+0x5a>
c0de614e:	eb09 0400 	add.w	r4, r9, r0
c0de6152:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de6156:	f001 fbdb 	bl	c0de7910 <pic>
c0de615a:	4602      	mov	r2, r0
c0de615c:	6d20      	ldr	r0, [r4, #80]	@ 0x50
c0de615e:	6880      	ldr	r0, [r0, #8]
c0de6160:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de6162:	e004      	b.n	c0de616e <displayHomePage+0x56>
c0de6164:	eb09 0100 	add.w	r1, r9, r0
c0de6168:	e9d1 5210 	ldrd	r5, r2, [r1, #64]	@ 0x40
c0de616c:	b312      	cbz	r2, c0de61b4 <displayHomePage+0x9c>
c0de616e:	2300      	movs	r3, #0
c0de6170:	e02c      	b.n	c0de61cc <displayHomePage+0xb4>
c0de6172:	2f00      	cmp	r7, #0
c0de6174:	4614      	mov	r4, r2
c0de6176:	bf08      	it	eq
c0de6178:	24ff      	moveq	r4, #255	@ 0xff
c0de617a:	429c      	cmp	r4, r3
c0de617c:	d109      	bne.n	c0de6192 <displayHomePage+0x7a>
c0de617e:	491c      	ldr	r1, [pc, #112]	@ (c0de61f0 <displayHomePage+0xd8>)
c0de6180:	4448      	add	r0, r9
c0de6182:	2300      	movs	r3, #0
c0de6184:	4479      	add	r1, pc
c0de6186:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6188:	4d1a      	ldr	r5, [pc, #104]	@ (c0de61f4 <displayHomePage+0xdc>)
c0de618a:	4a1b      	ldr	r2, [pc, #108]	@ (c0de61f8 <displayHomePage+0xe0>)
c0de618c:	447d      	add	r5, pc
c0de618e:	447a      	add	r2, pc
c0de6190:	e01c      	b.n	c0de61cc <displayHomePage+0xb4>
c0de6192:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de6194:	4432      	add	r2, r6
c0de6196:	4448      	add	r0, r9
c0de6198:	2900      	cmp	r1, #0
c0de619a:	bf08      	it	eq
c0de619c:	22ff      	moveq	r2, #255	@ 0xff
c0de619e:	429a      	cmp	r2, r3
c0de61a0:	d10d      	bne.n	c0de61be <displayHomePage+0xa6>
c0de61a2:	4916      	ldr	r1, [pc, #88]	@ (c0de61fc <displayHomePage+0xe4>)
c0de61a4:	2300      	movs	r3, #0
c0de61a6:	4479      	add	r1, pc
c0de61a8:	6381      	str	r1, [r0, #56]	@ 0x38
c0de61aa:	4d15      	ldr	r5, [pc, #84]	@ (c0de6200 <displayHomePage+0xe8>)
c0de61ac:	4a15      	ldr	r2, [pc, #84]	@ (c0de6204 <displayHomePage+0xec>)
c0de61ae:	447d      	add	r5, pc
c0de61b0:	447a      	add	r2, pc
c0de61b2:	e00b      	b.n	c0de61cc <displayHomePage+0xb4>
c0de61b4:	4448      	add	r0, r9
c0de61b6:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
c0de61b8:	4b0c      	ldr	r3, [pc, #48]	@ (c0de61ec <displayHomePage+0xd4>)
c0de61ba:	447b      	add	r3, pc
c0de61bc:	e006      	b.n	c0de61cc <displayHomePage+0xb4>
c0de61be:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de61c0:	2300      	movs	r3, #0
c0de61c2:	6381      	str	r1, [r0, #56]	@ 0x38
c0de61c4:	4d10      	ldr	r5, [pc, #64]	@ (c0de6208 <displayHomePage+0xf0>)
c0de61c6:	4a11      	ldr	r2, [pc, #68]	@ (c0de620c <displayHomePage+0xf4>)
c0de61c8:	447d      	add	r5, pc
c0de61ca:	447a      	add	r2, pc
c0de61cc:	4910      	ldr	r1, [pc, #64]	@ (c0de6210 <displayHomePage+0xf8>)
c0de61ce:	2000      	movs	r0, #0
c0de61d0:	9002      	str	r0, [sp, #8]
c0de61d2:	4479      	add	r1, pc
c0de61d4:	e9cd 1000 	strd	r1, r0, [sp]
c0de61d8:	4640      	mov	r0, r8
c0de61da:	4629      	mov	r1, r5
c0de61dc:	f7ff f992 	bl	c0de5504 <drawStep>
c0de61e0:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de61e4:	f001 b985 	b.w	c0de74f2 <nbgl_refresh>
c0de61e8:	000009d0 	.word	0x000009d0
c0de61ec:	00002374 	.word	0x00002374
c0de61f0:	0000008d 	.word	0x0000008d
c0de61f4:	00001f7b 	.word	0x00001f7b
c0de61f8:	0000224f 	.word	0x0000224f
c0de61fc:	00000073 	.word	0x00000073
c0de6200:	00001ec4 	.word	0x00001ec4
c0de6204:	00002300 	.word	0x00002300
c0de6208:	00001ecd 	.word	0x00001ecd
c0de620c:	00002371 	.word	0x00002371
c0de6210:	0000006b 	.word	0x0000006b

c0de6214 <startUseCaseSettings>:
c0de6214:	2000      	movs	r0, #0
c0de6216:	f7fe bf01 	b.w	c0de501c <startUseCaseSettingsAtPage>
	...

c0de621c <startUseCaseInfo>:
c0de621c:	4807      	ldr	r0, [pc, #28]	@ (c0de623c <startUseCaseInfo+0x20>)
c0de621e:	210d      	movs	r1, #13
c0de6220:	4448      	add	r0, r9
c0de6222:	f880 102c 	strb.w	r1, [r0, #44]	@ 0x2c
c0de6226:	2100      	movs	r1, #0
c0de6228:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de622c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de622e:	7b09      	ldrb	r1, [r1, #12]
c0de6230:	3101      	adds	r1, #1
c0de6232:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de6236:	2000      	movs	r0, #0
c0de6238:	f000 b810 	b.w	c0de625c <displayInfoPage>
c0de623c:	000009d0 	.word	0x000009d0

c0de6240 <homeCallback>:
c0de6240:	b5e0      	push	{r5, r6, r7, lr}
c0de6242:	4608      	mov	r0, r1
c0de6244:	f10d 0107 	add.w	r1, sp, #7
c0de6248:	f7ff fed4 	bl	c0de5ff4 <buttonGenericCallback>
c0de624c:	b128      	cbz	r0, c0de625a <homeCallback+0x1a>
c0de624e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6252:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6256:	f7ff bf5f 	b.w	c0de6118 <displayHomePage>
c0de625a:	bd8c      	pop	{r2, r3, r7, pc}

c0de625c <displayInfoPage>:
c0de625c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de625e:	4604      	mov	r4, r0
c0de6260:	4816      	ldr	r0, [pc, #88]	@ (c0de62bc <displayInfoPage+0x60>)
c0de6262:	f000 fbdb 	bl	c0de6a1c <OUTLINED_FUNCTION_1>
c0de6266:	dd11      	ble.n	c0de628c <displayInfoPage+0x30>
c0de6268:	eb09 0700 	add.w	r7, r9, r0
c0de626c:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de626e:	6800      	ldr	r0, [r0, #0]
c0de6270:	4e13      	ldr	r6, [pc, #76]	@ (c0de62c0 <displayInfoPage+0x64>)
c0de6272:	447e      	add	r6, pc
c0de6274:	47b0      	blx	r6
c0de6276:	f000 fc0a 	bl	c0de6a8e <OUTLINED_FUNCTION_10>
c0de627a:	4605      	mov	r5, r0
c0de627c:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de627e:	6840      	ldr	r0, [r0, #4]
c0de6280:	47b0      	blx	r6
c0de6282:	f000 fc04 	bl	c0de6a8e <OUTLINED_FUNCTION_10>
c0de6286:	4603      	mov	r3, r0
c0de6288:	2100      	movs	r1, #0
c0de628a:	e008      	b.n	c0de629e <displayInfoPage+0x42>
c0de628c:	490d      	ldr	r1, [pc, #52]	@ (c0de62c4 <displayInfoPage+0x68>)
c0de628e:	4448      	add	r0, r9
c0de6290:	2300      	movs	r3, #0
c0de6292:	4479      	add	r1, pc
c0de6294:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6296:	490c      	ldr	r1, [pc, #48]	@ (c0de62c8 <displayInfoPage+0x6c>)
c0de6298:	4d0c      	ldr	r5, [pc, #48]	@ (c0de62cc <displayInfoPage+0x70>)
c0de629a:	4479      	add	r1, pc
c0de629c:	447d      	add	r5, pc
c0de629e:	4e0c      	ldr	r6, [pc, #48]	@ (c0de62d0 <displayInfoPage+0x74>)
c0de62a0:	2002      	movs	r0, #2
c0de62a2:	2200      	movs	r2, #0
c0de62a4:	9002      	str	r0, [sp, #8]
c0de62a6:	4620      	mov	r0, r4
c0de62a8:	447e      	add	r6, pc
c0de62aa:	e9cd 6200 	strd	r6, r2, [sp]
c0de62ae:	462a      	mov	r2, r5
c0de62b0:	f7ff f928 	bl	c0de5504 <drawStep>
c0de62b4:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de62b8:	f001 b91b 	b.w	c0de74f2 <nbgl_refresh>
c0de62bc:	000009d0 	.word	0x000009d0
c0de62c0:	0000169b 	.word	0x0000169b
c0de62c4:	ffffedff 	.word	0xffffedff
c0de62c8:	00001e4a 	.word	0x00001e4a
c0de62cc:	000021cd 	.word	0x000021cd
c0de62d0:	00000029 	.word	0x00000029

c0de62d4 <infoCallback>:
c0de62d4:	b5e0      	push	{r5, r6, r7, lr}
c0de62d6:	4608      	mov	r0, r1
c0de62d8:	f10d 0107 	add.w	r1, sp, #7
c0de62dc:	f7ff fe8a 	bl	c0de5ff4 <buttonGenericCallback>
c0de62e0:	b128      	cbz	r0, c0de62ee <infoCallback+0x1a>
c0de62e2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de62e6:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de62ea:	f7ff bfb7 	b.w	c0de625c <displayInfoPage>
c0de62ee:	bd8c      	pop	{r2, r3, r7, pc}

c0de62f0 <displayWarningStep>:
c0de62f0:	b510      	push	{r4, lr}
c0de62f2:	b088      	sub	sp, #32
c0de62f4:	2000      	movs	r0, #0
c0de62f6:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de62fa:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de62fe:	4839      	ldr	r0, [pc, #228]	@ (c0de63e4 <displayWarningStep+0xf4>)
c0de6300:	eb09 0200 	add.w	r2, r9, r0
c0de6304:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6308:	69d2      	ldr	r2, [r2, #28]
c0de630a:	6a93      	ldr	r3, [r2, #40]	@ 0x28
c0de630c:	b183      	cbz	r3, c0de6330 <displayWarningStep+0x40>
c0de630e:	b979      	cbnz	r1, c0de6330 <displayWarningStep+0x40>
c0de6310:	2000      	movs	r0, #0
c0de6312:	685b      	ldr	r3, [r3, #4]
c0de6314:	2200      	movs	r2, #0
c0de6316:	e9cd 0000 	strd	r0, r0, [sp]
c0de631a:	9002      	str	r0, [sp, #8]
c0de631c:	2001      	movs	r0, #1
c0de631e:	4936      	ldr	r1, [pc, #216]	@ (c0de63f8 <displayWarningStep+0x108>)
c0de6320:	4479      	add	r1, pc
c0de6322:	f7fe fb25 	bl	c0de4970 <nbgl_stepDrawText>
c0de6326:	b008      	add	sp, #32
c0de6328:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de632c:	f001 b8e1 	b.w	c0de74f2 <nbgl_refresh>
c0de6330:	6813      	ldr	r3, [r2, #0]
c0de6332:	06dc      	lsls	r4, r3, #27
c0de6334:	d411      	bmi.n	c0de635a <displayWarningStep+0x6a>
c0de6336:	2b00      	cmp	r3, #0
c0de6338:	d151      	bne.n	c0de63de <displayWarningStep+0xee>
c0de633a:	69d3      	ldr	r3, [r2, #28]
c0de633c:	2b00      	cmp	r3, #0
c0de633e:	d04e      	beq.n	c0de63de <displayWarningStep+0xee>
c0de6340:	eb09 0400 	add.w	r4, r9, r0
c0de6344:	f894 4028 	ldrb.w	r4, [r4, #40]	@ 0x28
c0de6348:	42a1      	cmp	r1, r4
c0de634a:	d128      	bne.n	c0de639e <displayWarningStep+0xae>
c0de634c:	6858      	ldr	r0, [r3, #4]
c0de634e:	691a      	ldr	r2, [r3, #16]
c0de6350:	699b      	ldr	r3, [r3, #24]
c0de6352:	9006      	str	r0, [sp, #24]
c0de6354:	e9cd 2304 	strd	r2, r3, [sp, #16]
c0de6358:	e00e      	b.n	c0de6378 <displayWarningStep+0x88>
c0de635a:	eb09 0200 	add.w	r2, r9, r0
c0de635e:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de6362:	4291      	cmp	r1, r2
c0de6364:	d10d      	bne.n	c0de6382 <displayWarningStep+0x92>
c0de6366:	4820      	ldr	r0, [pc, #128]	@ (c0de63e8 <displayWarningStep+0xf8>)
c0de6368:	4478      	add	r0, pc
c0de636a:	9005      	str	r0, [sp, #20]
c0de636c:	481f      	ldr	r0, [pc, #124]	@ (c0de63ec <displayWarningStep+0xfc>)
c0de636e:	4478      	add	r0, pc
c0de6370:	9004      	str	r0, [sp, #16]
c0de6372:	481f      	ldr	r0, [pc, #124]	@ (c0de63f0 <displayWarningStep+0x100>)
c0de6374:	4478      	add	r0, pc
c0de6376:	9006      	str	r0, [sp, #24]
c0de6378:	2003      	movs	r0, #3
c0de637a:	2900      	cmp	r1, #0
c0de637c:	bf08      	it	eq
c0de637e:	2001      	moveq	r0, #1
c0de6380:	e020      	b.n	c0de63c4 <displayWarningStep+0xd4>
c0de6382:	4448      	add	r0, r9
c0de6384:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de6388:	3801      	subs	r0, #1
c0de638a:	4288      	cmp	r0, r1
c0de638c:	d119      	bne.n	c0de63c2 <displayWarningStep+0xd2>
c0de638e:	aa04      	add	r2, sp, #16
c0de6390:	2000      	movs	r0, #0
c0de6392:	f102 0108 	add.w	r1, r2, #8
c0de6396:	f000 f877 	bl	c0de6488 <getLastPageInfo>
c0de639a:	200a      	movs	r0, #10
c0de639c:	e012      	b.n	c0de63c4 <displayWarningStep+0xd4>
c0de639e:	4448      	add	r0, r9
c0de63a0:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de63a4:	3801      	subs	r0, #1
c0de63a6:	4288      	cmp	r0, r1
c0de63a8:	d10b      	bne.n	c0de63c2 <displayWarningStep+0xd2>
c0de63aa:	6950      	ldr	r0, [r2, #20]
c0de63ac:	7901      	ldrb	r1, [r0, #4]
c0de63ae:	2901      	cmp	r1, #1
c0de63b0:	d115      	bne.n	c0de63de <displayWarningStep+0xee>
c0de63b2:	68c1      	ldr	r1, [r0, #12]
c0de63b4:	6982      	ldr	r2, [r0, #24]
c0de63b6:	6a00      	ldr	r0, [r0, #32]
c0de63b8:	e9cd 2004 	strd	r2, r0, [sp, #16]
c0de63bc:	2003      	movs	r0, #3
c0de63be:	9106      	str	r1, [sp, #24]
c0de63c0:	e000      	b.n	c0de63c4 <displayWarningStep+0xd4>
c0de63c2:	2000      	movs	r0, #0
c0de63c4:	2101      	movs	r1, #1
c0de63c6:	2200      	movs	r2, #0
c0de63c8:	f88d 101d 	strb.w	r1, [sp, #29]
c0de63cc:	2100      	movs	r1, #0
c0de63ce:	9100      	str	r1, [sp, #0]
c0de63d0:	4908      	ldr	r1, [pc, #32]	@ (c0de63f4 <displayWarningStep+0x104>)
c0de63d2:	ab04      	add	r3, sp, #16
c0de63d4:	4479      	add	r1, pc
c0de63d6:	f7fe fc11 	bl	c0de4bfc <nbgl_stepDrawCenteredInfo>
c0de63da:	f001 f88a 	bl	c0de74f2 <nbgl_refresh>
c0de63de:	b008      	add	sp, #32
c0de63e0:	bd10      	pop	{r4, pc}
c0de63e2:	bf00      	nop
c0de63e4:	000009d0 	.word	0x000009d0
c0de63e8:	00001f70 	.word	0x00001f70
c0de63ec:	0000209d 	.word	0x0000209d
c0de63f0:	00001e55 	.word	0x00001e55
c0de63f4:	00000025 	.word	0x00000025
c0de63f8:	000000d9 	.word	0x000000d9

c0de63fc <warningNavigate>:
c0de63fc:	2904      	cmp	r1, #4
c0de63fe:	d009      	beq.n	c0de6414 <warningNavigate+0x18>
c0de6400:	2901      	cmp	r1, #1
c0de6402:	d024      	beq.n	c0de644e <warningNavigate+0x52>
c0de6404:	bb11      	cbnz	r1, c0de644c <warningNavigate+0x50>
c0de6406:	481f      	ldr	r0, [pc, #124]	@ (c0de6484 <warningNavigate+0x88>)
c0de6408:	4448      	add	r0, r9
c0de640a:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de640e:	b390      	cbz	r0, c0de6476 <warningNavigate+0x7a>
c0de6410:	3801      	subs	r0, #1
c0de6412:	e027      	b.n	c0de6464 <warningNavigate+0x68>
c0de6414:	481b      	ldr	r0, [pc, #108]	@ (c0de6484 <warningNavigate+0x88>)
c0de6416:	eb09 0100 	add.w	r1, r9, r0
c0de641a:	69c9      	ldr	r1, [r1, #28]
c0de641c:	7809      	ldrb	r1, [r1, #0]
c0de641e:	06c9      	lsls	r1, r1, #27
c0de6420:	d514      	bpl.n	c0de644c <warningNavigate+0x50>
c0de6422:	eb09 0200 	add.w	r2, r9, r0
c0de6426:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de642a:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de642e:	4291      	cmp	r1, r2
c0de6430:	bf08      	it	eq
c0de6432:	f000 b8bd 	beq.w	c0de65b0 <launchReviewAfterWarning>
c0de6436:	eb09 0200 	add.w	r2, r9, r0
c0de643a:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de643e:	3a01      	subs	r2, #1
c0de6440:	428a      	cmp	r2, r1
c0de6442:	d103      	bne.n	c0de644c <warningNavigate+0x50>
c0de6444:	4448      	add	r0, r9
c0de6446:	6a01      	ldr	r1, [r0, #32]
c0de6448:	2000      	movs	r0, #0
c0de644a:	4708      	bx	r1
c0de644c:	4770      	bx	lr
c0de644e:	480d      	ldr	r0, [pc, #52]	@ (c0de6484 <warningNavigate+0x88>)
c0de6450:	eb09 0200 	add.w	r2, r9, r0
c0de6454:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6458:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de645c:	3a01      	subs	r2, #1
c0de645e:	428a      	cmp	r2, r1
c0de6460:	dd05      	ble.n	c0de646e <warningNavigate+0x72>
c0de6462:	1c48      	adds	r0, r1, #1
c0de6464:	4907      	ldr	r1, [pc, #28]	@ (c0de6484 <warningNavigate+0x88>)
c0de6466:	4449      	add	r1, r9
c0de6468:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de646c:	e003      	b.n	c0de6476 <warningNavigate+0x7a>
c0de646e:	4448      	add	r0, r9
c0de6470:	69c0      	ldr	r0, [r0, #28]
c0de6472:	6801      	ldr	r1, [r0, #0]
c0de6474:	b109      	cbz	r1, c0de647a <warningNavigate+0x7e>
c0de6476:	f7ff bf3b 	b.w	c0de62f0 <displayWarningStep>
c0de647a:	69c0      	ldr	r0, [r0, #28]
c0de647c:	2800      	cmp	r0, #0
c0de647e:	d0fa      	beq.n	c0de6476 <warningNavigate+0x7a>
c0de6480:	f000 b896 	b.w	c0de65b0 <launchReviewAfterWarning>
c0de6484:	000009d0 	.word	0x000009d0

c0de6488 <getLastPageInfo>:
c0de6488:	b170      	cbz	r0, c0de64a8 <getLastPageInfo+0x20>
c0de648a:	4833      	ldr	r0, [pc, #204]	@ (c0de6558 <getLastPageInfo+0xd0>)
c0de648c:	4478      	add	r0, pc
c0de648e:	6008      	str	r0, [r1, #0]
c0de6490:	4830      	ldr	r0, [pc, #192]	@ (c0de6554 <getLastPageInfo+0xcc>)
c0de6492:	eb09 0100 	add.w	r1, r9, r0
c0de6496:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de649a:	2904      	cmp	r1, #4
c0de649c:	d113      	bne.n	c0de64c6 <getLastPageInfo+0x3e>
c0de649e:	482f      	ldr	r0, [pc, #188]	@ (c0de655c <getLastPageInfo+0xd4>)
c0de64a0:	492f      	ldr	r1, [pc, #188]	@ (c0de6560 <getLastPageInfo+0xd8>)
c0de64a2:	4478      	add	r0, pc
c0de64a4:	4479      	add	r1, pc
c0de64a6:	e04f      	b.n	c0de6548 <getLastPageInfo+0xc0>
c0de64a8:	4838      	ldr	r0, [pc, #224]	@ (c0de658c <getLastPageInfo+0x104>)
c0de64aa:	4478      	add	r0, pc
c0de64ac:	6008      	str	r0, [r1, #0]
c0de64ae:	4829      	ldr	r0, [pc, #164]	@ (c0de6554 <getLastPageInfo+0xcc>)
c0de64b0:	eb09 0100 	add.w	r1, r9, r0
c0de64b4:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de64b8:	2904      	cmp	r1, #4
c0de64ba:	d10b      	bne.n	c0de64d4 <getLastPageInfo+0x4c>
c0de64bc:	4834      	ldr	r0, [pc, #208]	@ (c0de6590 <getLastPageInfo+0x108>)
c0de64be:	4935      	ldr	r1, [pc, #212]	@ (c0de6594 <getLastPageInfo+0x10c>)
c0de64c0:	4478      	add	r0, pc
c0de64c2:	4479      	add	r1, pc
c0de64c4:	e040      	b.n	c0de6548 <getLastPageInfo+0xc0>
c0de64c6:	eb09 0100 	add.w	r1, r9, r0
c0de64ca:	6d09      	ldr	r1, [r1, #80]	@ 0x50
c0de64cc:	b171      	cbz	r1, c0de64ec <getLastPageInfo+0x64>
c0de64ce:	4825      	ldr	r0, [pc, #148]	@ (c0de6564 <getLastPageInfo+0xdc>)
c0de64d0:	4478      	add	r0, pc
c0de64d2:	e039      	b.n	c0de6548 <getLastPageInfo+0xc0>
c0de64d4:	4448      	add	r0, r9
c0de64d6:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de64d8:	f010 0007 	ands.w	r0, r0, #7
c0de64dc:	d017      	beq.n	c0de650e <getLastPageInfo+0x86>
c0de64de:	2801      	cmp	r0, #1
c0de64e0:	d11a      	bne.n	c0de6518 <getLastPageInfo+0x90>
c0de64e2:	482f      	ldr	r0, [pc, #188]	@ (c0de65a0 <getLastPageInfo+0x118>)
c0de64e4:	492f      	ldr	r1, [pc, #188]	@ (c0de65a4 <getLastPageInfo+0x11c>)
c0de64e6:	4478      	add	r0, pc
c0de64e8:	4479      	add	r1, pc
c0de64ea:	e02d      	b.n	c0de6548 <getLastPageInfo+0xc0>
c0de64ec:	4448      	add	r0, r9
c0de64ee:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de64f0:	f000 0107 	and.w	r1, r0, #7
c0de64f4:	2901      	cmp	r1, #1
c0de64f6:	d014      	beq.n	c0de6522 <getLastPageInfo+0x9a>
c0de64f8:	b9e9      	cbnz	r1, c0de6536 <getLastPageInfo+0xae>
c0de64fa:	0640      	lsls	r0, r0, #25
c0de64fc:	481a      	ldr	r0, [pc, #104]	@ (c0de6568 <getLastPageInfo+0xe0>)
c0de64fe:	491b      	ldr	r1, [pc, #108]	@ (c0de656c <getLastPageInfo+0xe4>)
c0de6500:	4478      	add	r0, pc
c0de6502:	4479      	add	r1, pc
c0de6504:	bf58      	it	pl
c0de6506:	4601      	movpl	r1, r0
c0de6508:	4819      	ldr	r0, [pc, #100]	@ (c0de6570 <getLastPageInfo+0xe8>)
c0de650a:	4478      	add	r0, pc
c0de650c:	e01c      	b.n	c0de6548 <getLastPageInfo+0xc0>
c0de650e:	4822      	ldr	r0, [pc, #136]	@ (c0de6598 <getLastPageInfo+0x110>)
c0de6510:	4922      	ldr	r1, [pc, #136]	@ (c0de659c <getLastPageInfo+0x114>)
c0de6512:	4478      	add	r0, pc
c0de6514:	4479      	add	r1, pc
c0de6516:	e017      	b.n	c0de6548 <getLastPageInfo+0xc0>
c0de6518:	4823      	ldr	r0, [pc, #140]	@ (c0de65a8 <getLastPageInfo+0x120>)
c0de651a:	4924      	ldr	r1, [pc, #144]	@ (c0de65ac <getLastPageInfo+0x124>)
c0de651c:	4478      	add	r0, pc
c0de651e:	4479      	add	r1, pc
c0de6520:	e012      	b.n	c0de6548 <getLastPageInfo+0xc0>
c0de6522:	0640      	lsls	r0, r0, #25
c0de6524:	4813      	ldr	r0, [pc, #76]	@ (c0de6574 <getLastPageInfo+0xec>)
c0de6526:	4914      	ldr	r1, [pc, #80]	@ (c0de6578 <getLastPageInfo+0xf0>)
c0de6528:	4478      	add	r0, pc
c0de652a:	4479      	add	r1, pc
c0de652c:	bf58      	it	pl
c0de652e:	4601      	movpl	r1, r0
c0de6530:	4812      	ldr	r0, [pc, #72]	@ (c0de657c <getLastPageInfo+0xf4>)
c0de6532:	4478      	add	r0, pc
c0de6534:	e008      	b.n	c0de6548 <getLastPageInfo+0xc0>
c0de6536:	0640      	lsls	r0, r0, #25
c0de6538:	4811      	ldr	r0, [pc, #68]	@ (c0de6580 <getLastPageInfo+0xf8>)
c0de653a:	4912      	ldr	r1, [pc, #72]	@ (c0de6584 <getLastPageInfo+0xfc>)
c0de653c:	4478      	add	r0, pc
c0de653e:	4479      	add	r1, pc
c0de6540:	bf58      	it	pl
c0de6542:	4601      	movpl	r1, r0
c0de6544:	4810      	ldr	r0, [pc, #64]	@ (c0de6588 <getLastPageInfo+0x100>)
c0de6546:	4478      	add	r0, pc
c0de6548:	6011      	str	r1, [r2, #0]
c0de654a:	4902      	ldr	r1, [pc, #8]	@ (c0de6554 <getLastPageInfo+0xcc>)
c0de654c:	4449      	add	r1, r9
c0de654e:	6388      	str	r0, [r1, #56]	@ 0x38
c0de6550:	4770      	bx	lr
c0de6552:	bf00      	nop
c0de6554:	000009d0 	.word	0x000009d0
c0de6558:	00001d1a 	.word	0x00001d1a
c0de655c:	00000143 	.word	0x00000143
c0de6560:	000020a0 	.word	0x000020a0
c0de6564:	00000115 	.word	0x00000115
c0de6568:	00001e47 	.word	0x00001e47
c0de656c:	00001ee8 	.word	0x00001ee8
c0de6570:	000000db 	.word	0x000000db
c0de6574:	00001e03 	.word	0x00001e03
c0de6578:	00001e41 	.word	0x00001e41
c0de657c:	000000b3 	.word	0x000000b3
c0de6580:	00001f7d 	.word	0x00001f7d
c0de6584:	00001ee1 	.word	0x00001ee1
c0de6588:	0000009f 	.word	0x0000009f
c0de658c:	00001c80 	.word	0x00001c80
c0de6590:	00000139 	.word	0x00000139
c0de6594:	00001eec 	.word	0x00001eec
c0de6598:	000000e7 	.word	0x000000e7
c0de659c:	00001e44 	.word	0x00001e44
c0de65a0:	00000113 	.word	0x00000113
c0de65a4:	00001fe0 	.word	0x00001fe0
c0de65a8:	000000dd 	.word	0x000000dd
c0de65ac:	00001fb9 	.word	0x00001fb9

c0de65b0 <launchReviewAfterWarning>:
c0de65b0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de65b2:	480c      	ldr	r0, [pc, #48]	@ (c0de65e4 <launchReviewAfterWarning+0x34>)
c0de65b4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de65b8:	2905      	cmp	r1, #5
c0de65ba:	d00d      	beq.n	c0de65d8 <launchReviewAfterWarning+0x28>
c0de65bc:	2902      	cmp	r1, #2
c0de65be:	bf18      	it	ne
c0de65c0:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de65c2:	4448      	add	r0, r9
c0de65c4:	1d06      	adds	r6, r0, #4
c0de65c6:	6a00      	ldr	r0, [r0, #32]
c0de65c8:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de65ca:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de65ce:	9003      	str	r0, [sp, #12]
c0de65d0:	2002      	movs	r0, #2
c0de65d2:	f7fe fdb5 	bl	c0de5140 <useCaseReview>
c0de65d6:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de65d8:	2000      	movs	r0, #0
c0de65da:	b004      	add	sp, #16
c0de65dc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de65e0:	f7ff b8ac 	b.w	c0de573c <displayStreamingReviewPage>
c0de65e4:	000009d0 	.word	0x000009d0

c0de65e8 <onReviewAccept>:
c0de65e8:	4803      	ldr	r0, [pc, #12]	@ (c0de65f8 <onReviewAccept+0x10>)
c0de65ea:	4448      	add	r0, r9
c0de65ec:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de65ee:	b109      	cbz	r1, c0de65f4 <onReviewAccept+0xc>
c0de65f0:	2001      	movs	r0, #1
c0de65f2:	4708      	bx	r1
c0de65f4:	4770      	bx	lr
c0de65f6:	bf00      	nop
c0de65f8:	000009d0 	.word	0x000009d0

c0de65fc <onReviewReject>:
c0de65fc:	4803      	ldr	r0, [pc, #12]	@ (c0de660c <onReviewReject+0x10>)
c0de65fe:	4448      	add	r0, r9
c0de6600:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de6602:	b109      	cbz	r1, c0de6608 <onReviewReject+0xc>
c0de6604:	2000      	movs	r0, #0
c0de6606:	4708      	bx	r1
c0de6608:	4770      	bx	lr
c0de660a:	bf00      	nop
c0de660c:	000009d0 	.word	0x000009d0

c0de6610 <buttonSkipCallback>:
c0de6610:	b5b0      	push	{r4, r5, r7, lr}
c0de6612:	2904      	cmp	r1, #4
c0de6614:	d00a      	beq.n	c0de662c <buttonSkipCallback+0x1c>
c0de6616:	2901      	cmp	r1, #1
c0de6618:	d017      	beq.n	c0de664a <buttonSkipCallback+0x3a>
c0de661a:	bbb9      	cbnz	r1, c0de668c <buttonSkipCallback+0x7c>
c0de661c:	4829      	ldr	r0, [pc, #164]	@ (c0de66c4 <buttonSkipCallback+0xb4>)
c0de661e:	eb09 0100 	add.w	r1, r9, r0
c0de6622:	f891 105e 	ldrb.w	r1, [r1, #94]	@ 0x5e
c0de6626:	b391      	cbz	r1, c0de668e <buttonSkipCallback+0x7e>
c0de6628:	2008      	movs	r0, #8
c0de662a:	e02a      	b.n	c0de6682 <buttonSkipCallback+0x72>
c0de662c:	4825      	ldr	r0, [pc, #148]	@ (c0de66c4 <buttonSkipCallback+0xb4>)
c0de662e:	eb09 0100 	add.w	r1, r9, r0
c0de6632:	4448      	add	r0, r9
c0de6634:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de6638:	2900      	cmp	r1, #0
c0de663a:	d03f      	beq.n	c0de66bc <buttonSkipCallback+0xac>
c0de663c:	f890 1034 	ldrb.w	r1, [r0, #52]	@ 0x34
c0de6640:	3902      	subs	r1, #2
c0de6642:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6646:	2000      	movs	r0, #0
c0de6648:	e030      	b.n	c0de66ac <buttonSkipCallback+0x9c>
c0de664a:	4a1e      	ldr	r2, [pc, #120]	@ (c0de66c4 <buttonSkipCallback+0xb4>)
c0de664c:	eb09 0002 	add.w	r0, r9, r2
c0de6650:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de6654:	2808      	cmp	r0, #8
c0de6656:	d113      	bne.n	c0de6680 <buttonSkipCallback+0x70>
c0de6658:	eb09 0002 	add.w	r0, r9, r2
c0de665c:	f990 4036 	ldrsb.w	r4, [r0, #54]	@ 0x36
c0de6660:	f990 3035 	ldrsb.w	r3, [r0, #53]	@ 0x35
c0de6664:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de6668:	1e45      	subs	r5, r0, #1
c0de666a:	2000      	movs	r0, #0
c0de666c:	b2e1      	uxtb	r1, r4
c0de666e:	429d      	cmp	r5, r3
c0de6670:	bfc8      	it	gt
c0de6672:	42a3      	cmpgt	r3, r4
c0de6674:	dd19      	ble.n	c0de66aa <buttonSkipCallback+0x9a>
c0de6676:	eb09 0002 	add.w	r0, r9, r2
c0de667a:	1c59      	adds	r1, r3, #1
c0de667c:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6680:	2000      	movs	r0, #0
c0de6682:	4910      	ldr	r1, [pc, #64]	@ (c0de66c4 <buttonSkipCallback+0xb4>)
c0de6684:	4449      	add	r1, r9
c0de6686:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de668a:	e00e      	b.n	c0de66aa <buttonSkipCallback+0x9a>
c0de668c:	bdb0      	pop	{r4, r5, r7, pc}
c0de668e:	eb09 0100 	add.w	r1, r9, r0
c0de6692:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6696:	f991 3036 	ldrsb.w	r3, [r1, #54]	@ 0x36
c0de669a:	b2d9      	uxtb	r1, r3
c0de669c:	429a      	cmp	r2, r3
c0de669e:	dd03      	ble.n	c0de66a8 <buttonSkipCallback+0x98>
c0de66a0:	4448      	add	r0, r9
c0de66a2:	3a01      	subs	r2, #1
c0de66a4:	f880 2035 	strb.w	r2, [r0, #53]	@ 0x35
c0de66a8:	2008      	movs	r0, #8
c0de66aa:	b119      	cbz	r1, c0de66b4 <buttonSkipCallback+0xa4>
c0de66ac:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de66b0:	f7fe be3c 	b.w	c0de532c <displayReviewPage>
c0de66b4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de66b8:	f7ff b840 	b.w	c0de573c <displayStreamingReviewPage>
c0de66bc:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de66be:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de66c2:	4700      	bx	r0
c0de66c4:	000009d0 	.word	0x000009d0

c0de66c8 <displayAliasFullValue>:
c0de66c8:	b570      	push	{r4, r5, r6, lr}
c0de66ca:	b088      	sub	sp, #32
c0de66cc:	4c1a      	ldr	r4, [pc, #104]	@ (c0de6738 <displayAliasFullValue+0x70>)
c0de66ce:	f10d 0213 	add.w	r2, sp, #19
c0de66d2:	eb09 0504 	add.w	r5, r9, r4
c0de66d6:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de66d8:	f895 105f 	ldrb.w	r1, [r5, #95]	@ 0x5f
c0de66dc:	ab05      	add	r3, sp, #20
c0de66de:	f105 0664 	add.w	r6, r5, #100	@ 0x64
c0de66e2:	9202      	str	r2, [sp, #8]
c0de66e4:	e9cd 6300 	strd	r6, r3, [sp]
c0de66e8:	aa07      	add	r2, sp, #28
c0de66ea:	ab06      	add	r3, sp, #24
c0de66ec:	f7ff fba8 	bl	c0de5e40 <getPairData>
c0de66f0:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0de66f2:	b178      	cbz	r0, c0de6714 <displayAliasFullValue+0x4c>
c0de66f4:	eb09 0104 	add.w	r1, r9, r4
c0de66f8:	2200      	movs	r2, #0
c0de66fa:	668a      	str	r2, [r1, #104]	@ 0x68
c0de66fc:	f881 2060 	strb.w	r2, [r1, #96]	@ 0x60
c0de6700:	7d01      	ldrb	r1, [r0, #20]
c0de6702:	2901      	cmp	r1, #1
c0de6704:	d008      	beq.n	c0de6718 <displayAliasFullValue+0x50>
c0de6706:	2905      	cmp	r1, #5
c0de6708:	d008      	beq.n	c0de671c <displayAliasFullValue+0x54>
c0de670a:	2904      	cmp	r1, #4
c0de670c:	d102      	bne.n	c0de6714 <displayAliasFullValue+0x4c>
c0de670e:	6900      	ldr	r0, [r0, #16]
c0de6710:	300c      	adds	r0, #12
c0de6712:	e005      	b.n	c0de6720 <displayAliasFullValue+0x58>
c0de6714:	b008      	add	sp, #32
c0de6716:	bd70      	pop	{r4, r5, r6, pc}
c0de6718:	2002      	movs	r0, #2
c0de671a:	e003      	b.n	c0de6724 <displayAliasFullValue+0x5c>
c0de671c:	6900      	ldr	r0, [r0, #16]
c0de671e:	3008      	adds	r0, #8
c0de6720:	7800      	ldrb	r0, [r0, #0]
c0de6722:	3001      	adds	r0, #1
c0de6724:	eb09 0104 	add.w	r1, r9, r4
c0de6728:	f881 0061 	strb.w	r0, [r1, #97]	@ 0x61
c0de672c:	2000      	movs	r0, #0
c0de672e:	b008      	add	sp, #32
c0de6730:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6734:	f000 b814 	b.w	c0de6760 <displayExtensionStep>
c0de6738:	000009d0 	.word	0x000009d0

c0de673c <reviewCallback>:
c0de673c:	b5e0      	push	{r5, r6, r7, lr}
c0de673e:	4608      	mov	r0, r1
c0de6740:	f10d 0107 	add.w	r1, sp, #7
c0de6744:	f7ff fc56 	bl	c0de5ff4 <buttonGenericCallback>
c0de6748:	b130      	cbz	r0, c0de6758 <reviewCallback+0x1c>
c0de674a:	4804      	ldr	r0, [pc, #16]	@ (c0de675c <reviewCallback+0x20>)
c0de674c:	f000 f993 	bl	c0de6a76 <OUTLINED_FUNCTION_8>
c0de6750:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6754:	f7fe bdea 	b.w	c0de532c <displayReviewPage>
c0de6758:	bd8c      	pop	{r2, r3, r7, pc}
c0de675a:	bf00      	nop
c0de675c:	000009d0 	.word	0x000009d0

c0de6760 <displayExtensionStep>:
c0de6760:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6764:	b088      	sub	sp, #32
c0de6766:	4e36      	ldr	r6, [pc, #216]	@ (c0de6840 <displayExtensionStep+0xe0>)
c0de6768:	4680      	mov	r8, r0
c0de676a:	2000      	movs	r0, #0
c0de676c:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de6770:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de6774:	eb09 0006 	add.w	r0, r9, r6
c0de6778:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de677a:	b108      	cbz	r0, c0de6780 <displayExtensionStep+0x20>
c0de677c:	f7fe fb64 	bl	c0de4e48 <nbgl_stepRelease>
c0de6780:	eb09 0106 	add.w	r1, r9, r6
c0de6784:	f000 f970 	bl	c0de6a68 <OUTLINED_FUNCTION_7>
c0de6788:	dd10      	ble.n	c0de67ac <displayExtensionStep+0x4c>
c0de678a:	2703      	movs	r7, #3
c0de678c:	eb09 0106 	add.w	r1, r9, r6
c0de6790:	2800      	cmp	r0, #0
c0de6792:	bf08      	it	eq
c0de6794:	2701      	moveq	r7, #1
c0de6796:	6e49      	ldr	r1, [r1, #100]	@ 0x64
c0de6798:	7d0a      	ldrb	r2, [r1, #20]
c0de679a:	2a05      	cmp	r2, #5
c0de679c:	d01a      	beq.n	c0de67d4 <displayExtensionStep+0x74>
c0de679e:	2a04      	cmp	r2, #4
c0de67a0:	d028      	beq.n	c0de67f4 <displayExtensionStep+0x94>
c0de67a2:	2a01      	cmp	r2, #1
c0de67a4:	d147      	bne.n	c0de6836 <displayExtensionStep+0xd6>
c0de67a6:	6808      	ldr	r0, [r1, #0]
c0de67a8:	688d      	ldr	r5, [r1, #8]
c0de67aa:	e033      	b.n	c0de6814 <displayExtensionStep+0xb4>
c0de67ac:	d143      	bne.n	c0de6836 <displayExtensionStep+0xd6>
c0de67ae:	2001      	movs	r0, #1
c0de67b0:	2200      	movs	r2, #0
c0de67b2:	f88d 001d 	strb.w	r0, [sp, #29]
c0de67b6:	4924      	ldr	r1, [pc, #144]	@ (c0de6848 <displayExtensionStep+0xe8>)
c0de67b8:	4479      	add	r1, pc
c0de67ba:	9104      	str	r1, [sp, #16]
c0de67bc:	4923      	ldr	r1, [pc, #140]	@ (c0de684c <displayExtensionStep+0xec>)
c0de67be:	9000      	str	r0, [sp, #0]
c0de67c0:	f048 0002 	orr.w	r0, r8, #2
c0de67c4:	4479      	add	r1, pc
c0de67c6:	9106      	str	r1, [sp, #24]
c0de67c8:	4921      	ldr	r1, [pc, #132]	@ (c0de6850 <displayExtensionStep+0xf0>)
c0de67ca:	ab04      	add	r3, sp, #16
c0de67cc:	4479      	add	r1, pc
c0de67ce:	f7fe fa15 	bl	c0de4bfc <nbgl_stepDrawCenteredInfo>
c0de67d2:	e02d      	b.n	c0de6830 <displayExtensionStep+0xd0>
c0de67d4:	690c      	ldr	r4, [r1, #16]
c0de67d6:	0100      	lsls	r0, r0, #4
c0de67d8:	6821      	ldr	r1, [r4, #0]
c0de67da:	5808      	ldr	r0, [r1, r0]
c0de67dc:	f001 f898 	bl	c0de7910 <pic>
c0de67e0:	4605      	mov	r5, r0
c0de67e2:	eb09 0006 	add.w	r0, r9, r6
c0de67e6:	6821      	ldr	r1, [r4, #0]
c0de67e8:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de67ec:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de67f0:	6840      	ldr	r0, [r0, #4]
c0de67f2:	e00d      	b.n	c0de6810 <displayExtensionStep+0xb0>
c0de67f4:	690c      	ldr	r4, [r1, #16]
c0de67f6:	6821      	ldr	r1, [r4, #0]
c0de67f8:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de67fc:	f001 f888 	bl	c0de7910 <pic>
c0de6800:	4605      	mov	r5, r0
c0de6802:	eb09 0006 	add.w	r0, r9, r6
c0de6806:	6861      	ldr	r1, [r4, #4]
c0de6808:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de680c:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6810:	f001 f87e 	bl	c0de7910 <pic>
c0de6814:	b17d      	cbz	r5, c0de6836 <displayExtensionStep+0xd6>
c0de6816:	2101      	movs	r1, #1
c0de6818:	ea47 0208 	orr.w	r2, r7, r8
c0de681c:	462b      	mov	r3, r5
c0de681e:	e9cd 0100 	strd	r0, r1, [sp]
c0de6822:	9102      	str	r1, [sp, #8]
c0de6824:	4610      	mov	r0, r2
c0de6826:	2200      	movs	r2, #0
c0de6828:	4906      	ldr	r1, [pc, #24]	@ (c0de6844 <displayExtensionStep+0xe4>)
c0de682a:	4479      	add	r1, pc
c0de682c:	f7fe f8a0 	bl	c0de4970 <nbgl_stepDrawText>
c0de6830:	eb09 0106 	add.w	r1, r9, r6
c0de6834:	6688      	str	r0, [r1, #104]	@ 0x68
c0de6836:	f000 fe5c 	bl	c0de74f2 <nbgl_refresh>
c0de683a:	b008      	add	sp, #32
c0de683c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de6840:	000009d0 	.word	0x000009d0
c0de6844:	00000027 	.word	0x00000027
c0de6848:	00001cb1 	.word	0x00001cb1
c0de684c:	00001920 	.word	0x00001920
c0de6850:	00000085 	.word	0x00000085

c0de6854 <extensionNavigate>:
c0de6854:	b580      	push	{r7, lr}
c0de6856:	2904      	cmp	r1, #4
c0de6858:	d00a      	beq.n	c0de6870 <extensionNavigate+0x1c>
c0de685a:	2901      	cmp	r1, #1
c0de685c:	d01d      	beq.n	c0de689a <extensionNavigate+0x46>
c0de685e:	b9d9      	cbnz	r1, c0de6898 <extensionNavigate+0x44>
c0de6860:	4818      	ldr	r0, [pc, #96]	@ (c0de68c4 <extensionNavigate+0x70>)
c0de6862:	4448      	add	r0, r9
c0de6864:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6868:	b330      	cbz	r0, c0de68b8 <extensionNavigate+0x64>
c0de686a:	1e41      	subs	r1, r0, #1
c0de686c:	2008      	movs	r0, #8
c0de686e:	e01c      	b.n	c0de68aa <extensionNavigate+0x56>
c0de6870:	4814      	ldr	r0, [pc, #80]	@ (c0de68c4 <extensionNavigate+0x70>)
c0de6872:	eb09 0100 	add.w	r1, r9, r0
c0de6876:	f891 2060 	ldrb.w	r2, [r1, #96]	@ 0x60
c0de687a:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de687e:	3901      	subs	r1, #1
c0de6880:	4291      	cmp	r1, r2
c0de6882:	d109      	bne.n	c0de6898 <extensionNavigate+0x44>
c0de6884:	4448      	add	r0, r9
c0de6886:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de6888:	f7fe fade 	bl	c0de4e48 <nbgl_stepRelease>
c0de688c:	f000 fe4a 	bl	c0de7524 <nbgl_screenRedraw>
c0de6890:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6894:	f000 be2d 	b.w	c0de74f2 <nbgl_refresh>
c0de6898:	bd80      	pop	{r7, pc}
c0de689a:	480a      	ldr	r0, [pc, #40]	@ (c0de68c4 <extensionNavigate+0x70>)
c0de689c:	eb09 0100 	add.w	r1, r9, r0
c0de68a0:	f000 f8e2 	bl	c0de6a68 <OUTLINED_FUNCTION_7>
c0de68a4:	dd06      	ble.n	c0de68b4 <extensionNavigate+0x60>
c0de68a6:	1c41      	adds	r1, r0, #1
c0de68a8:	2000      	movs	r0, #0
c0de68aa:	4a06      	ldr	r2, [pc, #24]	@ (c0de68c4 <extensionNavigate+0x70>)
c0de68ac:	444a      	add	r2, r9
c0de68ae:	f882 1060 	strb.w	r1, [r2, #96]	@ 0x60
c0de68b2:	e002      	b.n	c0de68ba <extensionNavigate+0x66>
c0de68b4:	2000      	movs	r0, #0
c0de68b6:	e000      	b.n	c0de68ba <extensionNavigate+0x66>
c0de68b8:	2008      	movs	r0, #8
c0de68ba:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de68be:	f7ff bf4f 	b.w	c0de6760 <displayExtensionStep>
c0de68c2:	bf00      	nop
c0de68c4:	000009d0 	.word	0x000009d0

c0de68c8 <statusTickerCallback>:
c0de68c8:	4802      	ldr	r0, [pc, #8]	@ (c0de68d4 <statusTickerCallback+0xc>)
c0de68ca:	4448      	add	r0, r9
c0de68cc:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de68ce:	b100      	cbz	r0, c0de68d2 <statusTickerCallback+0xa>
c0de68d0:	4700      	bx	r0
c0de68d2:	4770      	bx	lr
c0de68d4:	000009d0 	.word	0x000009d0

c0de68d8 <getChoiceName>:
c0de68d8:	b5b0      	push	{r4, r5, r7, lr}
c0de68da:	b090      	sub	sp, #64	@ 0x40
c0de68dc:	ad01      	add	r5, sp, #4
c0de68de:	f000 f8d1 	bl	c0de6a84 <OUTLINED_FUNCTION_9>
c0de68e2:	4814      	ldr	r0, [pc, #80]	@ (c0de6934 <getChoiceName+0x5c>)
c0de68e4:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de68e8:	462a      	mov	r2, r5
c0de68ea:	4448      	add	r0, r9
c0de68ec:	f000 f8b1 	bl	c0de6a52 <OUTLINED_FUNCTION_4>
c0de68f0:	b150      	cbz	r0, c0de6908 <getChoiceName+0x30>
c0de68f2:	7801      	ldrb	r1, [r0, #0]
c0de68f4:	290a      	cmp	r1, #10
c0de68f6:	d009      	beq.n	c0de690c <getChoiceName+0x34>
c0de68f8:	2909      	cmp	r1, #9
c0de68fa:	d105      	bne.n	c0de6908 <getChoiceName+0x30>
c0de68fc:	f000 f8ad 	bl	c0de6a5a <OUTLINED_FUNCTION_5>
c0de6900:	4605      	mov	r5, r0
c0de6902:	f855 0b05 	ldr.w	r0, [r5], #5
c0de6906:	e006      	b.n	c0de6916 <getChoiceName+0x3e>
c0de6908:	2000      	movs	r0, #0
c0de690a:	e010      	b.n	c0de692e <getChoiceName+0x56>
c0de690c:	f000 f8a5 	bl	c0de6a5a <OUTLINED_FUNCTION_5>
c0de6910:	4605      	mov	r5, r0
c0de6912:	f855 0b08 	ldr.w	r0, [r5], #8
c0de6916:	f000 fffb 	bl	c0de7910 <pic>
c0de691a:	7829      	ldrb	r1, [r5, #0]
c0de691c:	42a1      	cmp	r1, r4
c0de691e:	d904      	bls.n	c0de692a <getChoiceName+0x52>
c0de6920:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de6924:	f000 fff4 	bl	c0de7910 <pic>
c0de6928:	e001      	b.n	c0de692e <getChoiceName+0x56>
c0de692a:	4803      	ldr	r0, [pc, #12]	@ (c0de6938 <getChoiceName+0x60>)
c0de692c:	4478      	add	r0, pc
c0de692e:	b010      	add	sp, #64	@ 0x40
c0de6930:	bdb0      	pop	{r4, r5, r7, pc}
c0de6932:	bf00      	nop
c0de6934:	000009d0 	.word	0x000009d0
c0de6938:	00001b3d 	.word	0x00001b3d

c0de693c <onChoiceSelected>:
c0de693c:	b570      	push	{r4, r5, r6, lr}
c0de693e:	b090      	sub	sp, #64	@ 0x40
c0de6940:	ad01      	add	r5, sp, #4
c0de6942:	f000 f89f 	bl	c0de6a84 <OUTLINED_FUNCTION_9>
c0de6946:	4e17      	ldr	r6, [pc, #92]	@ (c0de69a4 <onChoiceSelected+0x68>)
c0de6948:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de694c:	462a      	mov	r2, r5
c0de694e:	eb09 0006 	add.w	r0, r9, r6
c0de6952:	f000 f87e 	bl	c0de6a52 <OUTLINED_FUNCTION_4>
c0de6956:	b318      	cbz	r0, c0de69a0 <onChoiceSelected+0x64>
c0de6958:	7801      	ldrb	r1, [r0, #0]
c0de695a:	290a      	cmp	r1, #10
c0de695c:	d008      	beq.n	c0de6970 <onChoiceSelected+0x34>
c0de695e:	2909      	cmp	r1, #9
c0de6960:	d10f      	bne.n	c0de6982 <onChoiceSelected+0x46>
c0de6962:	f000 f87a 	bl	c0de6a5a <OUTLINED_FUNCTION_5>
c0de6966:	7941      	ldrb	r1, [r0, #5]
c0de6968:	42a1      	cmp	r1, r4
c0de696a:	d90a      	bls.n	c0de6982 <onChoiceSelected+0x46>
c0de696c:	3007      	adds	r0, #7
c0de696e:	e006      	b.n	c0de697e <onChoiceSelected+0x42>
c0de6970:	f000 f873 	bl	c0de6a5a <OUTLINED_FUNCTION_5>
c0de6974:	7a01      	ldrb	r1, [r0, #8]
c0de6976:	42a1      	cmp	r1, r4
c0de6978:	d903      	bls.n	c0de6982 <onChoiceSelected+0x46>
c0de697a:	6840      	ldr	r0, [r0, #4]
c0de697c:	4420      	add	r0, r4
c0de697e:	7800      	ldrb	r0, [r0, #0]
c0de6980:	e000      	b.n	c0de6984 <onChoiceSelected+0x48>
c0de6982:	20ff      	movs	r0, #255	@ 0xff
c0de6984:	28ff      	cmp	r0, #255	@ 0xff
c0de6986:	d006      	beq.n	c0de6996 <onChoiceSelected+0x5a>
c0de6988:	eb09 0106 	add.w	r1, r9, r6
c0de698c:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de698e:	b112      	cbz	r2, c0de6996 <onChoiceSelected+0x5a>
c0de6990:	2100      	movs	r1, #0
c0de6992:	4790      	blx	r2
c0de6994:	e004      	b.n	c0de69a0 <onChoiceSelected+0x64>
c0de6996:	eb09 0006 	add.w	r0, r9, r6
c0de699a:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de699c:	b100      	cbz	r0, c0de69a0 <onChoiceSelected+0x64>
c0de699e:	4780      	blx	r0
c0de69a0:	b010      	add	sp, #64	@ 0x40
c0de69a2:	bd70      	pop	{r4, r5, r6, pc}
c0de69a4:	000009d0 	.word	0x000009d0

c0de69a8 <streamingReviewCallback>:
c0de69a8:	b5e0      	push	{r5, r6, r7, lr}
c0de69aa:	4608      	mov	r0, r1
c0de69ac:	f10d 0107 	add.w	r1, sp, #7
c0de69b0:	f7ff fb20 	bl	c0de5ff4 <buttonGenericCallback>
c0de69b4:	b130      	cbz	r0, c0de69c4 <streamingReviewCallback+0x1c>
c0de69b6:	4804      	ldr	r0, [pc, #16]	@ (c0de69c8 <streamingReviewCallback+0x20>)
c0de69b8:	f000 f85d 	bl	c0de6a76 <OUTLINED_FUNCTION_8>
c0de69bc:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de69c0:	f7fe bebc 	b.w	c0de573c <displayStreamingReviewPage>
c0de69c4:	bd8c      	pop	{r2, r3, r7, pc}
c0de69c6:	bf00      	nop
c0de69c8:	000009d0 	.word	0x000009d0

c0de69cc <onChoiceAccept>:
c0de69cc:	4803      	ldr	r0, [pc, #12]	@ (c0de69dc <onChoiceAccept+0x10>)
c0de69ce:	4448      	add	r0, r9
c0de69d0:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de69d2:	b109      	cbz	r1, c0de69d8 <onChoiceAccept+0xc>
c0de69d4:	2001      	movs	r0, #1
c0de69d6:	4708      	bx	r1
c0de69d8:	4770      	bx	lr
c0de69da:	bf00      	nop
c0de69dc:	000009d0 	.word	0x000009d0

c0de69e0 <onChoiceReject>:
c0de69e0:	4803      	ldr	r0, [pc, #12]	@ (c0de69f0 <onChoiceReject+0x10>)
c0de69e2:	4448      	add	r0, r9
c0de69e4:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de69e6:	b109      	cbz	r1, c0de69ec <onChoiceReject+0xc>
c0de69e8:	2000      	movs	r0, #0
c0de69ea:	4708      	bx	r1
c0de69ec:	4770      	bx	lr
c0de69ee:	bf00      	nop
c0de69f0:	000009d0 	.word	0x000009d0

c0de69f4 <genericChoiceCallback>:
c0de69f4:	b5e0      	push	{r5, r6, r7, lr}
c0de69f6:	4608      	mov	r0, r1
c0de69f8:	f10d 0107 	add.w	r1, sp, #7
c0de69fc:	f7ff fafa 	bl	c0de5ff4 <buttonGenericCallback>
c0de6a00:	b128      	cbz	r0, c0de6a0e <genericChoiceCallback+0x1a>
c0de6a02:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6a06:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6a0a:	f7fe bfbd 	b.w	c0de5988 <displayChoicePage>
c0de6a0e:	bd8c      	pop	{r2, r3, r7, pc}

c0de6a10 <OUTLINED_FUNCTION_0>:
c0de6a10:	eb09 0500 	add.w	r5, r9, r0
c0de6a14:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de6a18:	f001 ba86 	b.w	c0de7f28 <__aeabi_memclr>

c0de6a1c <OUTLINED_FUNCTION_1>:
c0de6a1c:	2200      	movs	r2, #0
c0de6a1e:	eb09 0100 	add.w	r1, r9, r0
c0de6a22:	638a      	str	r2, [r1, #56]	@ 0x38
c0de6a24:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6a28:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de6a2c:	3901      	subs	r1, #1
c0de6a2e:	4291      	cmp	r1, r2
c0de6a30:	4770      	bx	lr

c0de6a32 <OUTLINED_FUNCTION_2>:
c0de6a32:	eb09 0600 	add.w	r6, r9, r0
c0de6a36:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de6a3a:	f001 ba75 	b.w	c0de7f28 <__aeabi_memclr>

c0de6a3e <OUTLINED_FUNCTION_3>:
c0de6a3e:	460e      	mov	r6, r1
c0de6a40:	2140      	movs	r1, #64	@ 0x40
c0de6a42:	4698      	mov	r8, r3
c0de6a44:	4615      	mov	r5, r2
c0de6a46:	eb09 0400 	add.w	r4, r9, r0
c0de6a4a:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
c0de6a4e:	f001 ba6b 	b.w	c0de7f28 <__aeabi_memclr>

c0de6a52 <OUTLINED_FUNCTION_4>:
c0de6a52:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de6a56:	f7ff b9af 	b.w	c0de5db8 <getContentElemAtIdx>

c0de6a5a <OUTLINED_FUNCTION_5>:
c0de6a5a:	3004      	adds	r0, #4
c0de6a5c:	f000 bf58 	b.w	c0de7910 <pic>

c0de6a60 <OUTLINED_FUNCTION_6>:
c0de6a60:	e9cd 6500 	strd	r6, r5, [sp]
c0de6a64:	f7fe bd4e 	b.w	c0de5504 <drawStep>

c0de6a68 <OUTLINED_FUNCTION_7>:
c0de6a68:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de6a6c:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de6a70:	3901      	subs	r1, #1
c0de6a72:	4281      	cmp	r1, r0
c0de6a74:	4770      	bx	lr

c0de6a76 <OUTLINED_FUNCTION_8>:
c0de6a76:	eb09 0100 	add.w	r1, r9, r0
c0de6a7a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6a7e:	f881 005e 	strb.w	r0, [r1, #94]	@ 0x5e
c0de6a82:	4770      	bx	lr

c0de6a84 <OUTLINED_FUNCTION_9>:
c0de6a84:	4604      	mov	r4, r0
c0de6a86:	2138      	movs	r1, #56	@ 0x38
c0de6a88:	4628      	mov	r0, r5
c0de6a8a:	f001 ba4d 	b.w	c0de7f28 <__aeabi_memclr>

c0de6a8e <OUTLINED_FUNCTION_10>:
c0de6a8e:	f997 1035 	ldrsb.w	r1, [r7, #53]	@ 0x35
c0de6a92:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de6a96:	4730      	bx	r6

c0de6a98 <bip32_path_read>:
c0de6a98:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6a9c:	b10b      	cbz	r3, c0de6aa2 <bip32_path_read+0xa>
c0de6a9e:	2b0a      	cmp	r3, #10
c0de6aa0:	d902      	bls.n	c0de6aa8 <bip32_path_read+0x10>
c0de6aa2:	2000      	movs	r0, #0
c0de6aa4:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6aa8:	4692      	mov	sl, r2
c0de6aaa:	460e      	mov	r6, r1
c0de6aac:	4683      	mov	fp, r0
c0de6aae:	425f      	negs	r7, r3
c0de6ab0:	2500      	movs	r5, #0
c0de6ab2:	f04f 0800 	mov.w	r8, #0
c0de6ab6:	9301      	str	r3, [sp, #4]
c0de6ab8:	42af      	cmp	r7, r5
c0de6aba:	d00c      	beq.n	c0de6ad6 <bip32_path_read+0x3e>
c0de6abc:	f108 0404 	add.w	r4, r8, #4
c0de6ac0:	42b4      	cmp	r4, r6
c0de6ac2:	d808      	bhi.n	c0de6ad6 <bip32_path_read+0x3e>
c0de6ac4:	4658      	mov	r0, fp
c0de6ac6:	4641      	mov	r1, r8
c0de6ac8:	f000 fb6f 	bl	c0de71aa <read_u32_be>
c0de6acc:	f84a 0008 	str.w	r0, [sl, r8]
c0de6ad0:	3d01      	subs	r5, #1
c0de6ad2:	46a0      	mov	r8, r4
c0de6ad4:	e7f0      	b.n	c0de6ab8 <bip32_path_read+0x20>
c0de6ad6:	9a01      	ldr	r2, [sp, #4]
c0de6ad8:	4269      	negs	r1, r5
c0de6ada:	2000      	movs	r0, #0
c0de6adc:	4291      	cmp	r1, r2
c0de6ade:	bf28      	it	cs
c0de6ae0:	2001      	movcs	r0, #1
c0de6ae2:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de6ae6 <buffer_seek_cur>:
c0de6ae6:	6882      	ldr	r2, [r0, #8]
c0de6ae8:	1889      	adds	r1, r1, r2
c0de6aea:	d205      	bcs.n	c0de6af8 <buffer_seek_cur+0x12>
c0de6aec:	6842      	ldr	r2, [r0, #4]
c0de6aee:	4291      	cmp	r1, r2
c0de6af0:	bf9e      	ittt	ls
c0de6af2:	6081      	strls	r1, [r0, #8]
c0de6af4:	2001      	movls	r0, #1
c0de6af6:	4770      	bxls	lr
c0de6af8:	2000      	movs	r0, #0
c0de6afa:	4770      	bx	lr

c0de6afc <buffer_read_u8>:
c0de6afc:	b510      	push	{r4, lr}
c0de6afe:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de6b02:	429a      	cmp	r2, r3
c0de6b04:	d00a      	beq.n	c0de6b1c <buffer_read_u8+0x20>
c0de6b06:	6804      	ldr	r4, [r0, #0]
c0de6b08:	5ce4      	ldrb	r4, [r4, r3]
c0de6b0a:	700c      	strb	r4, [r1, #0]
c0de6b0c:	6881      	ldr	r1, [r0, #8]
c0de6b0e:	3101      	adds	r1, #1
c0de6b10:	d206      	bcs.n	c0de6b20 <buffer_read_u8+0x24>
c0de6b12:	6844      	ldr	r4, [r0, #4]
c0de6b14:	42a1      	cmp	r1, r4
c0de6b16:	bf98      	it	ls
c0de6b18:	6081      	strls	r1, [r0, #8]
c0de6b1a:	e001      	b.n	c0de6b20 <buffer_read_u8+0x24>
c0de6b1c:	2000      	movs	r0, #0
c0de6b1e:	7008      	strb	r0, [r1, #0]
c0de6b20:	1ad0      	subs	r0, r2, r3
c0de6b22:	bf18      	it	ne
c0de6b24:	2001      	movne	r0, #1
c0de6b26:	bd10      	pop	{r4, pc}

c0de6b28 <buffer_read_u64>:
c0de6b28:	b570      	push	{r4, r5, r6, lr}
c0de6b2a:	f000 f87d 	bl	c0de6c28 <OUTLINED_FUNCTION_0>
c0de6b2e:	2e07      	cmp	r6, #7
c0de6b30:	d904      	bls.n	c0de6b3c <buffer_read_u64+0x14>
c0de6b32:	6820      	ldr	r0, [r4, #0]
c0de6b34:	b132      	cbz	r2, c0de6b44 <buffer_read_u64+0x1c>
c0de6b36:	f000 fb6f 	bl	c0de7218 <read_u64_le>
c0de6b3a:	e005      	b.n	c0de6b48 <buffer_read_u64+0x20>
c0de6b3c:	2000      	movs	r0, #0
c0de6b3e:	e9c5 0000 	strd	r0, r0, [r5]
c0de6b42:	e00c      	b.n	c0de6b5e <buffer_read_u64+0x36>
c0de6b44:	f000 fb3d 	bl	c0de71c2 <read_u64_be>
c0de6b48:	e9c5 0100 	strd	r0, r1, [r5]
c0de6b4c:	68a0      	ldr	r0, [r4, #8]
c0de6b4e:	f110 0f09 	cmn.w	r0, #9
c0de6b52:	d804      	bhi.n	c0de6b5e <buffer_read_u64+0x36>
c0de6b54:	6861      	ldr	r1, [r4, #4]
c0de6b56:	3008      	adds	r0, #8
c0de6b58:	4288      	cmp	r0, r1
c0de6b5a:	bf98      	it	ls
c0de6b5c:	60a0      	strls	r0, [r4, #8]
c0de6b5e:	2000      	movs	r0, #0
c0de6b60:	2e07      	cmp	r6, #7
c0de6b62:	bf88      	it	hi
c0de6b64:	2001      	movhi	r0, #1
c0de6b66:	bd70      	pop	{r4, r5, r6, pc}

c0de6b68 <buffer_read_varint>:
c0de6b68:	b5b0      	push	{r4, r5, r7, lr}
c0de6b6a:	4604      	mov	r4, r0
c0de6b6c:	460d      	mov	r5, r1
c0de6b6e:	6800      	ldr	r0, [r0, #0]
c0de6b70:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de6b74:	4410      	add	r0, r2
c0de6b76:	1a89      	subs	r1, r1, r2
c0de6b78:	462a      	mov	r2, r5
c0de6b7a:	f000 fbb7 	bl	c0de72ec <varint_read>
c0de6b7e:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de6b82:	dd0a      	ble.n	c0de6b9a <buffer_read_varint+0x32>
c0de6b84:	68a1      	ldr	r1, [r4, #8]
c0de6b86:	1840      	adds	r0, r0, r1
c0de6b88:	d205      	bcs.n	c0de6b96 <buffer_read_varint+0x2e>
c0de6b8a:	6861      	ldr	r1, [r4, #4]
c0de6b8c:	4288      	cmp	r0, r1
c0de6b8e:	bf9e      	ittt	ls
c0de6b90:	60a0      	strls	r0, [r4, #8]
c0de6b92:	2001      	movls	r0, #1
c0de6b94:	bdb0      	popls	{r4, r5, r7, pc}
c0de6b96:	2000      	movs	r0, #0
c0de6b98:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b9a:	2000      	movs	r0, #0
c0de6b9c:	e9c5 0000 	strd	r0, r0, [r5]
c0de6ba0:	bdb0      	pop	{r4, r5, r7, pc}

c0de6ba2 <buffer_read_bip32_path>:
c0de6ba2:	b5b0      	push	{r4, r5, r7, lr}
c0de6ba4:	4604      	mov	r4, r0
c0de6ba6:	4615      	mov	r5, r2
c0de6ba8:	460a      	mov	r2, r1
c0de6baa:	6800      	ldr	r0, [r0, #0]
c0de6bac:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de6bb0:	4418      	add	r0, r3
c0de6bb2:	1ac9      	subs	r1, r1, r3
c0de6bb4:	462b      	mov	r3, r5
c0de6bb6:	f7ff ff6f 	bl	c0de6a98 <bip32_path_read>
c0de6bba:	b140      	cbz	r0, c0de6bce <buffer_read_bip32_path+0x2c>
c0de6bbc:	68a2      	ldr	r2, [r4, #8]
c0de6bbe:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de6bc2:	4291      	cmp	r1, r2
c0de6bc4:	d303      	bcc.n	c0de6bce <buffer_read_bip32_path+0x2c>
c0de6bc6:	6862      	ldr	r2, [r4, #4]
c0de6bc8:	4291      	cmp	r1, r2
c0de6bca:	bf98      	it	ls
c0de6bcc:	60a1      	strls	r1, [r4, #8]
c0de6bce:	bdb0      	pop	{r4, r5, r7, pc}

c0de6bd0 <buffer_copy>:
c0de6bd0:	b5b0      	push	{r4, r5, r7, lr}
c0de6bd2:	4614      	mov	r4, r2
c0de6bd4:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6bd8:	1a9d      	subs	r5, r3, r2
c0de6bda:	42a5      	cmp	r5, r4
c0de6bdc:	d806      	bhi.n	c0de6bec <buffer_copy+0x1c>
c0de6bde:	6800      	ldr	r0, [r0, #0]
c0de6be0:	4402      	add	r2, r0
c0de6be2:	4608      	mov	r0, r1
c0de6be4:	4611      	mov	r1, r2
c0de6be6:	462a      	mov	r2, r5
c0de6be8:	f001 f996 	bl	c0de7f18 <__aeabi_memmove>
c0de6bec:	2000      	movs	r0, #0
c0de6bee:	42a5      	cmp	r5, r4
c0de6bf0:	bf98      	it	ls
c0de6bf2:	2001      	movls	r0, #1
c0de6bf4:	bdb0      	pop	{r4, r5, r7, pc}

c0de6bf6 <buffer_move>:
c0de6bf6:	b5b0      	push	{r4, r5, r7, lr}
c0de6bf8:	4615      	mov	r5, r2
c0de6bfa:	4604      	mov	r4, r0
c0de6bfc:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6c00:	1a12      	subs	r2, r2, r0
c0de6c02:	42aa      	cmp	r2, r5
c0de6c04:	bf84      	itt	hi
c0de6c06:	2000      	movhi	r0, #0
c0de6c08:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6c0a:	6823      	ldr	r3, [r4, #0]
c0de6c0c:	4403      	add	r3, r0
c0de6c0e:	4608      	mov	r0, r1
c0de6c10:	4619      	mov	r1, r3
c0de6c12:	f001 f981 	bl	c0de7f18 <__aeabi_memmove>
c0de6c16:	68a0      	ldr	r0, [r4, #8]
c0de6c18:	1940      	adds	r0, r0, r5
c0de6c1a:	d203      	bcs.n	c0de6c24 <buffer_move+0x2e>
c0de6c1c:	6861      	ldr	r1, [r4, #4]
c0de6c1e:	4288      	cmp	r0, r1
c0de6c20:	bf98      	it	ls
c0de6c22:	60a0      	strls	r0, [r4, #8]
c0de6c24:	2001      	movs	r0, #1
c0de6c26:	bdb0      	pop	{r4, r5, r7, pc}

c0de6c28 <OUTLINED_FUNCTION_0>:
c0de6c28:	4604      	mov	r4, r0
c0de6c2a:	460d      	mov	r5, r1
c0de6c2c:	6840      	ldr	r0, [r0, #4]
c0de6c2e:	68a1      	ldr	r1, [r4, #8]
c0de6c30:	1a46      	subs	r6, r0, r1
c0de6c32:	4770      	bx	lr

c0de6c34 <bip32_derive_with_seed_init_privkey_256>:
c0de6c34:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6c38:	b095      	sub	sp, #84	@ 0x54
c0de6c3a:	460d      	mov	r5, r1
c0de6c3c:	4607      	mov	r7, r0
c0de6c3e:	a904      	add	r1, sp, #16
c0de6c40:	469a      	mov	sl, r3
c0de6c42:	4614      	mov	r4, r2
c0de6c44:	4628      	mov	r0, r5
c0de6c46:	f000 ffc3 	bl	c0de7bd0 <cx_ecdomain_parameters_length>
c0de6c4a:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6c4e:	4606      	mov	r6, r0
c0de6c50:	b9e0      	cbnz	r0, c0de6c8c <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6c52:	9804      	ldr	r0, [sp, #16]
c0de6c54:	2820      	cmp	r0, #32
c0de6c56:	d117      	bne.n	c0de6c88 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de6c58:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de6c5a:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de6c5e:	ab05      	add	r3, sp, #20
c0de6c60:	e9cd 3200 	strd	r3, r2, [sp]
c0de6c64:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de6c68:	4638      	mov	r0, r7
c0de6c6a:	4629      	mov	r1, r5
c0de6c6c:	4622      	mov	r2, r4
c0de6c6e:	4653      	mov	r3, sl
c0de6c70:	f000 f818 	bl	c0de6ca4 <os_derive_bip32_with_seed_no_throw>
c0de6c74:	4606      	mov	r6, r0
c0de6c76:	b948      	cbnz	r0, c0de6c8c <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6c78:	9a04      	ldr	r2, [sp, #16]
c0de6c7a:	a905      	add	r1, sp, #20
c0de6c7c:	4628      	mov	r0, r5
c0de6c7e:	4643      	mov	r3, r8
c0de6c80:	f000 fc12 	bl	c0de74a8 <cx_ecfp_init_private_key_no_throw>
c0de6c84:	4606      	mov	r6, r0
c0de6c86:	e001      	b.n	c0de6c8c <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6c88:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6c8c:	a805      	add	r0, sp, #20
c0de6c8e:	2140      	movs	r1, #64	@ 0x40
c0de6c90:	f001 f958 	bl	c0de7f44 <explicit_bzero>
c0de6c94:	b116      	cbz	r6, c0de6c9c <bip32_derive_with_seed_init_privkey_256+0x68>
c0de6c96:	4640      	mov	r0, r8
c0de6c98:	f000 f89f 	bl	c0de6dda <OUTLINED_FUNCTION_0>
c0de6c9c:	4630      	mov	r0, r6
c0de6c9e:	b015      	add	sp, #84	@ 0x54
c0de6ca0:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de6ca4 <os_derive_bip32_with_seed_no_throw>:
c0de6ca4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6ca8:	b090      	sub	sp, #64	@ 0x40
c0de6caa:	f10d 0810 	add.w	r8, sp, #16
c0de6cae:	4607      	mov	r7, r0
c0de6cb0:	469b      	mov	fp, r3
c0de6cb2:	4616      	mov	r6, r2
c0de6cb4:	460c      	mov	r4, r1
c0de6cb6:	4640      	mov	r0, r8
c0de6cb8:	f001 f97a 	bl	c0de7fb0 <setjmp>
c0de6cbc:	b285      	uxth	r5, r0
c0de6cbe:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de6cc2:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6cc6:	b155      	cbz	r5, c0de6cde <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6cc8:	2000      	movs	r0, #0
c0de6cca:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6cce:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6cd0:	f001 f822 	bl	c0de7d18 <try_context_set>
c0de6cd4:	2140      	movs	r1, #64	@ 0x40
c0de6cd6:	4650      	mov	r0, sl
c0de6cd8:	f001 f934 	bl	c0de7f44 <explicit_bzero>
c0de6cdc:	e012      	b.n	c0de6d04 <os_derive_bip32_with_seed_no_throw+0x60>
c0de6cde:	a804      	add	r0, sp, #16
c0de6ce0:	f001 f81a 	bl	c0de7d18 <try_context_set>
c0de6ce4:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de6ce6:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6ce8:	4668      	mov	r0, sp
c0de6cea:	4632      	mov	r2, r6
c0de6cec:	465b      	mov	r3, fp
c0de6cee:	f8c0 a000 	str.w	sl, [r0]
c0de6cf2:	6041      	str	r1, [r0, #4]
c0de6cf4:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de6cf6:	6081      	str	r1, [r0, #8]
c0de6cf8:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6cfa:	60c1      	str	r1, [r0, #12]
c0de6cfc:	4638      	mov	r0, r7
c0de6cfe:	4621      	mov	r1, r4
c0de6d00:	f000 ff70 	bl	c0de7be4 <os_perso_derive_node_with_seed_key>
c0de6d04:	f001 f800 	bl	c0de7d08 <try_context_get>
c0de6d08:	4540      	cmp	r0, r8
c0de6d0a:	d102      	bne.n	c0de6d12 <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6d0c:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6d0e:	f001 f803 	bl	c0de7d18 <try_context_set>
c0de6d12:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de6d16:	b918      	cbnz	r0, c0de6d20 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6d18:	4628      	mov	r0, r5
c0de6d1a:	b010      	add	sp, #64	@ 0x40
c0de6d1c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6d20:	f000 fc51 	bl	c0de75c6 <os_longjmp>

c0de6d24 <bip32_derive_with_seed_get_pubkey_256>:
c0de6d24:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d26:	b0a1      	sub	sp, #132	@ 0x84
c0de6d28:	460e      	mov	r6, r1
c0de6d2a:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6d2c:	9103      	str	r1, [sp, #12]
c0de6d2e:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6d30:	9102      	str	r1, [sp, #8]
c0de6d32:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de6d34:	9101      	str	r1, [sp, #4]
c0de6d36:	a917      	add	r1, sp, #92	@ 0x5c
c0de6d38:	9100      	str	r1, [sp, #0]
c0de6d3a:	4631      	mov	r1, r6
c0de6d3c:	f7ff ff7a 	bl	c0de6c34 <bip32_derive_with_seed_init_privkey_256>
c0de6d40:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de6d42:	4605      	mov	r5, r0
c0de6d44:	b9b8      	cbnz	r0, c0de6d76 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6d46:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6d48:	2301      	movs	r3, #1
c0de6d4a:	9000      	str	r0, [sp, #0]
c0de6d4c:	af04      	add	r7, sp, #16
c0de6d4e:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6d50:	4630      	mov	r0, r6
c0de6d52:	4639      	mov	r1, r7
c0de6d54:	f000 fba3 	bl	c0de749e <cx_ecfp_generate_pair2_no_throw>
c0de6d58:	4605      	mov	r5, r0
c0de6d5a:	b960      	cbnz	r0, c0de6d76 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6d5c:	9805      	ldr	r0, [sp, #20]
c0de6d5e:	2841      	cmp	r0, #65	@ 0x41
c0de6d60:	d107      	bne.n	c0de6d72 <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de6d62:	f107 0108 	add.w	r1, r7, #8
c0de6d66:	4620      	mov	r0, r4
c0de6d68:	2241      	movs	r2, #65	@ 0x41
c0de6d6a:	f001 f8d3 	bl	c0de7f14 <__aeabi_memcpy>
c0de6d6e:	2500      	movs	r5, #0
c0de6d70:	e001      	b.n	c0de6d76 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6d72:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de6d76:	a817      	add	r0, sp, #92	@ 0x5c
c0de6d78:	f000 f82f 	bl	c0de6dda <OUTLINED_FUNCTION_0>
c0de6d7c:	b11d      	cbz	r5, c0de6d86 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de6d7e:	4620      	mov	r0, r4
c0de6d80:	2141      	movs	r1, #65	@ 0x41
c0de6d82:	f001 f8df 	bl	c0de7f44 <explicit_bzero>
c0de6d86:	4628      	mov	r0, r5
c0de6d88:	b021      	add	sp, #132	@ 0x84
c0de6d8a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6d8c <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6d8c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d8e:	b08f      	sub	sp, #60	@ 0x3c
c0de6d90:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de6d92:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de6d94:	683c      	ldr	r4, [r7, #0]
c0de6d96:	9503      	str	r5, [sp, #12]
c0de6d98:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de6d9a:	9502      	str	r5, [sp, #8]
c0de6d9c:	2500      	movs	r5, #0
c0de6d9e:	9501      	str	r5, [sp, #4]
c0de6da0:	ad05      	add	r5, sp, #20
c0de6da2:	9500      	str	r5, [sp, #0]
c0de6da4:	f7ff ff46 	bl	c0de6c34 <bip32_derive_with_seed_init_privkey_256>
c0de6da8:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de6daa:	4606      	mov	r6, r0
c0de6dac:	b950      	cbnz	r0, c0de6dc4 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6dae:	ae14      	add	r6, sp, #80	@ 0x50
c0de6db0:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de6db2:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de6db4:	e9cd 6500 	strd	r6, r5, [sp]
c0de6db8:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6dbc:	a805      	add	r0, sp, #20
c0de6dbe:	f000 fb69 	bl	c0de7494 <cx_ecdsa_sign_no_throw>
c0de6dc2:	4606      	mov	r6, r0
c0de6dc4:	a805      	add	r0, sp, #20
c0de6dc6:	f000 f808 	bl	c0de6dda <OUTLINED_FUNCTION_0>
c0de6dca:	b11e      	cbz	r6, c0de6dd4 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6dcc:	4628      	mov	r0, r5
c0de6dce:	4621      	mov	r1, r4
c0de6dd0:	f001 f8b8 	bl	c0de7f44 <explicit_bzero>
c0de6dd4:	4630      	mov	r0, r6
c0de6dd6:	b00f      	add	sp, #60	@ 0x3c
c0de6dd8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6dda <OUTLINED_FUNCTION_0>:
c0de6dda:	2128      	movs	r1, #40	@ 0x28
c0de6ddc:	f001 b8b2 	b.w	c0de7f44 <explicit_bzero>

c0de6de0 <format_u64>:
c0de6de0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6de4:	b1f9      	cbz	r1, c0de6e26 <format_u64+0x46>
c0de6de6:	4615      	mov	r5, r2
c0de6de8:	4604      	mov	r4, r0
c0de6dea:	f1a1 0801 	sub.w	r8, r1, #1
c0de6dee:	2700      	movs	r7, #0
c0de6df0:	2600      	movs	r6, #0
c0de6df2:	f1b5 000a 	subs.w	r0, r5, #10
c0de6df6:	f173 0000 	sbcs.w	r0, r3, #0
c0de6dfa:	d316      	bcc.n	c0de6e2a <format_u64+0x4a>
c0de6dfc:	4619      	mov	r1, r3
c0de6dfe:	4628      	mov	r0, r5
c0de6e00:	220a      	movs	r2, #10
c0de6e02:	2300      	movs	r3, #0
c0de6e04:	f001 f894 	bl	c0de7f30 <__aeabi_uldivmod>
c0de6e08:	460b      	mov	r3, r1
c0de6e0a:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6e0e:	1cba      	adds	r2, r7, #2
c0de6e10:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de6e14:	4605      	mov	r5, r0
c0de6e16:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6e1a:	55e1      	strb	r1, [r4, r7]
c0de6e1c:	1c79      	adds	r1, r7, #1
c0de6e1e:	4542      	cmp	r2, r8
c0de6e20:	460f      	mov	r7, r1
c0de6e22:	d9e6      	bls.n	c0de6df2 <format_u64+0x12>
c0de6e24:	e012      	b.n	c0de6e4c <format_u64+0x6c>
c0de6e26:	2600      	movs	r6, #0
c0de6e28:	e010      	b.n	c0de6e4c <format_u64+0x6c>
c0de6e2a:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6e2e:	19e1      	adds	r1, r4, r7
c0de6e30:	55e0      	strb	r0, [r4, r7]
c0de6e32:	2000      	movs	r0, #0
c0de6e34:	7048      	strb	r0, [r1, #1]
c0de6e36:	b2c1      	uxtb	r1, r0
c0de6e38:	428f      	cmp	r7, r1
c0de6e3a:	d906      	bls.n	c0de6e4a <format_u64+0x6a>
c0de6e3c:	5c62      	ldrb	r2, [r4, r1]
c0de6e3e:	5de3      	ldrb	r3, [r4, r7]
c0de6e40:	3001      	adds	r0, #1
c0de6e42:	5463      	strb	r3, [r4, r1]
c0de6e44:	55e2      	strb	r2, [r4, r7]
c0de6e46:	3f01      	subs	r7, #1
c0de6e48:	e7f5      	b.n	c0de6e36 <format_u64+0x56>
c0de6e4a:	2601      	movs	r6, #1
c0de6e4c:	4630      	mov	r0, r6
c0de6e4e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6e52 <format_fpu64>:
c0de6e52:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6e56:	b086      	sub	sp, #24
c0de6e58:	466c      	mov	r4, sp
c0de6e5a:	4688      	mov	r8, r1
c0de6e5c:	4605      	mov	r5, r0
c0de6e5e:	2115      	movs	r1, #21
c0de6e60:	461e      	mov	r6, r3
c0de6e62:	4617      	mov	r7, r2
c0de6e64:	4620      	mov	r0, r4
c0de6e66:	f001 f85f 	bl	c0de7f28 <__aeabi_memclr>
c0de6e6a:	4620      	mov	r0, r4
c0de6e6c:	2115      	movs	r1, #21
c0de6e6e:	463a      	mov	r2, r7
c0de6e70:	4633      	mov	r3, r6
c0de6e72:	f7ff ffb5 	bl	c0de6de0 <format_u64>
c0de6e76:	b340      	cbz	r0, c0de6eca <format_fpu64+0x78>
c0de6e78:	466f      	mov	r7, sp
c0de6e7a:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6e7c:	4638      	mov	r0, r7
c0de6e7e:	f001 f8af 	bl	c0de7fe0 <strlen>
c0de6e82:	42b0      	cmp	r0, r6
c0de6e84:	d910      	bls.n	c0de6ea8 <format_fpu64+0x56>
c0de6e86:	1831      	adds	r1, r6, r0
c0de6e88:	3101      	adds	r1, #1
c0de6e8a:	4541      	cmp	r1, r8
c0de6e8c:	d21d      	bcs.n	c0de6eca <format_fpu64+0x78>
c0de6e8e:	1b84      	subs	r4, r0, r6
c0de6e90:	4628      	mov	r0, r5
c0de6e92:	4639      	mov	r1, r7
c0de6e94:	4622      	mov	r2, r4
c0de6e96:	f001 f83d 	bl	c0de7f14 <__aeabi_memcpy>
c0de6e9a:	1928      	adds	r0, r5, r4
c0de6e9c:	212e      	movs	r1, #46	@ 0x2e
c0de6e9e:	4632      	mov	r2, r6
c0de6ea0:	f800 1b01 	strb.w	r1, [r0], #1
c0de6ea4:	1939      	adds	r1, r7, r4
c0de6ea6:	e015      	b.n	c0de6ed4 <format_fpu64+0x82>
c0de6ea8:	1a32      	subs	r2, r6, r0
c0de6eaa:	1c91      	adds	r1, r2, #2
c0de6eac:	4541      	cmp	r1, r8
c0de6eae:	d20c      	bcs.n	c0de6eca <format_fpu64+0x78>
c0de6eb0:	202e      	movs	r0, #46	@ 0x2e
c0de6eb2:	2330      	movs	r3, #48	@ 0x30
c0de6eb4:	2400      	movs	r4, #0
c0de6eb6:	7068      	strb	r0, [r5, #1]
c0de6eb8:	1ca8      	adds	r0, r5, #2
c0de6eba:	702b      	strb	r3, [r5, #0]
c0de6ebc:	b2a5      	uxth	r5, r4
c0de6ebe:	42aa      	cmp	r2, r5
c0de6ec0:	d905      	bls.n	c0de6ece <format_fpu64+0x7c>
c0de6ec2:	f800 3b01 	strb.w	r3, [r0], #1
c0de6ec6:	3401      	adds	r4, #1
c0de6ec8:	e7f8      	b.n	c0de6ebc <format_fpu64+0x6a>
c0de6eca:	2000      	movs	r0, #0
c0de6ecc:	e005      	b.n	c0de6eda <format_fpu64+0x88>
c0de6ece:	eba8 0201 	sub.w	r2, r8, r1
c0de6ed2:	4669      	mov	r1, sp
c0de6ed4:	f001 f89e 	bl	c0de8014 <strncpy>
c0de6ed8:	2001      	movs	r0, #1
c0de6eda:	b006      	add	sp, #24
c0de6edc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6ee0 <format_hex>:
c0de6ee0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6ee2:	4604      	mov	r4, r0
c0de6ee4:	0048      	lsls	r0, r1, #1
c0de6ee6:	f100 0c01 	add.w	ip, r0, #1
c0de6eea:	459c      	cmp	ip, r3
c0de6eec:	d902      	bls.n	c0de6ef4 <format_hex+0x14>
c0de6eee:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de6ef2:	e018      	b.n	c0de6f26 <format_hex+0x46>
c0de6ef4:	480d      	ldr	r0, [pc, #52]	@ (c0de6f2c <format_hex+0x4c>)
c0de6ef6:	2500      	movs	r5, #0
c0de6ef8:	4478      	add	r0, pc
c0de6efa:	b191      	cbz	r1, c0de6f22 <format_hex+0x42>
c0de6efc:	1cef      	adds	r7, r5, #3
c0de6efe:	429f      	cmp	r7, r3
c0de6f00:	d80d      	bhi.n	c0de6f1e <format_hex+0x3e>
c0de6f02:	7827      	ldrb	r7, [r4, #0]
c0de6f04:	3901      	subs	r1, #1
c0de6f06:	093f      	lsrs	r7, r7, #4
c0de6f08:	5dc7      	ldrb	r7, [r0, r7]
c0de6f0a:	5557      	strb	r7, [r2, r5]
c0de6f0c:	1957      	adds	r7, r2, r5
c0de6f0e:	3502      	adds	r5, #2
c0de6f10:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de6f14:	f006 060f 	and.w	r6, r6, #15
c0de6f18:	5d86      	ldrb	r6, [r0, r6]
c0de6f1a:	707e      	strb	r6, [r7, #1]
c0de6f1c:	e7ed      	b.n	c0de6efa <format_hex+0x1a>
c0de6f1e:	f105 0c01 	add.w	ip, r5, #1
c0de6f22:	2000      	movs	r0, #0
c0de6f24:	5550      	strb	r0, [r2, r5]
c0de6f26:	4660      	mov	r0, ip
c0de6f28:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6f2a:	bf00      	nop
c0de6f2c:	00001557 	.word	0x00001557

c0de6f30 <app_ticker_event_callback>:
c0de6f30:	4770      	bx	lr
	...

c0de6f34 <io_event>:
c0de6f34:	b580      	push	{r7, lr}
c0de6f36:	480a      	ldr	r0, [pc, #40]	@ (c0de6f60 <io_event+0x2c>)
c0de6f38:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6f3c:	290e      	cmp	r1, #14
c0de6f3e:	d005      	beq.n	c0de6f4c <io_event+0x18>
c0de6f40:	2905      	cmp	r1, #5
c0de6f42:	d108      	bne.n	c0de6f56 <io_event+0x22>
c0de6f44:	4448      	add	r0, r9
c0de6f46:	f000 fa05 	bl	c0de7354 <ux_process_button_event>
c0de6f4a:	e006      	b.n	c0de6f5a <io_event+0x26>
c0de6f4c:	f7ff fff0 	bl	c0de6f30 <app_ticker_event_callback>
c0de6f50:	f000 fa44 	bl	c0de73dc <ux_process_ticker_event>
c0de6f54:	e001      	b.n	c0de6f5a <io_event+0x26>
c0de6f56:	f000 fa59 	bl	c0de740c <ux_process_default_event>
c0de6f5a:	2001      	movs	r0, #1
c0de6f5c:	bd80      	pop	{r7, pc}
c0de6f5e:	bf00      	nop
c0de6f60:	00000a3c 	.word	0x00000a3c

c0de6f64 <io_init>:
c0de6f64:	4802      	ldr	r0, [pc, #8]	@ (c0de6f70 <io_init+0xc>)
c0de6f66:	2101      	movs	r1, #1
c0de6f68:	f809 1000 	strb.w	r1, [r9, r0]
c0de6f6c:	4770      	bx	lr
c0de6f6e:	bf00      	nop
c0de6f70:	00000b4c 	.word	0x00000b4c

c0de6f74 <io_recv_command>:
c0de6f74:	b510      	push	{r4, lr}
c0de6f76:	4c09      	ldr	r4, [pc, #36]	@ (c0de6f9c <io_recv_command+0x28>)
c0de6f78:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6f7c:	2801      	cmp	r0, #1
c0de6f7e:	d104      	bne.n	c0de6f8a <io_recv_command+0x16>
c0de6f80:	f000 fea0 	bl	c0de7cc4 <os_io_start>
c0de6f84:	2000      	movs	r0, #0
c0de6f86:	f809 0004 	strb.w	r0, [r9, r4]
c0de6f8a:	2000      	movs	r0, #0
c0de6f8c:	2800      	cmp	r0, #0
c0de6f8e:	dc03      	bgt.n	c0de6f98 <io_recv_command+0x24>
c0de6f90:	2001      	movs	r0, #1
c0de6f92:	f7fc fe2f 	bl	c0de3bf4 <io_legacy_apdu_rx>
c0de6f96:	e7f9      	b.n	c0de6f8c <io_recv_command+0x18>
c0de6f98:	bd10      	pop	{r4, pc}
c0de6f9a:	bf00      	nop
c0de6f9c:	00000b4c 	.word	0x00000b4c

c0de6fa0 <io_send_response_buffers>:
c0de6fa0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6fa4:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de7038 <io_send_response_buffers+0x98>
c0de6fa8:	4690      	mov	r8, r2
c0de6faa:	460f      	mov	r7, r1
c0de6fac:	4606      	mov	r6, r0
c0de6fae:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6fb2:	2500      	movs	r5, #0
c0de6fb4:	b1b6      	cbz	r6, c0de6fe4 <io_send_response_buffers+0x44>
c0de6fb6:	b1af      	cbz	r7, c0de6fe4 <io_send_response_buffers+0x44>
c0de6fb8:	2500      	movs	r5, #0
c0de6fba:	b19f      	cbz	r7, c0de6fe4 <io_send_response_buffers+0x44>
c0de6fbc:	eb09 000a 	add.w	r0, r9, sl
c0de6fc0:	1b62      	subs	r2, r4, r5
c0de6fc2:	1941      	adds	r1, r0, r5
c0de6fc4:	4630      	mov	r0, r6
c0de6fc6:	f7ff fe03 	bl	c0de6bd0 <buffer_copy>
c0de6fca:	b130      	cbz	r0, c0de6fda <io_send_response_buffers+0x3a>
c0de6fcc:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6fd0:	360c      	adds	r6, #12
c0de6fd2:	3f01      	subs	r7, #1
c0de6fd4:	4428      	add	r0, r5
c0de6fd6:	1a45      	subs	r5, r0, r1
c0de6fd8:	e7ef      	b.n	c0de6fba <io_send_response_buffers+0x1a>
c0de6fda:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6fde:	2600      	movs	r6, #0
c0de6fe0:	2700      	movs	r7, #0
c0de6fe2:	e7e6      	b.n	c0de6fb2 <io_send_response_buffers+0x12>
c0de6fe4:	fa1f f688 	uxth.w	r6, r8
c0de6fe8:	eb09 000a 	add.w	r0, r9, sl
c0de6fec:	4629      	mov	r1, r5
c0de6fee:	4632      	mov	r2, r6
c0de6ff0:	f000 f9aa 	bl	c0de7348 <write_u16_be>
c0de6ff4:	4811      	ldr	r0, [pc, #68]	@ (c0de703c <io_send_response_buffers+0x9c>)
c0de6ff6:	1ca9      	adds	r1, r5, #2
c0de6ff8:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6ffc:	b118      	cbz	r0, c0de7006 <io_send_response_buffers+0x66>
c0de6ffe:	4810      	ldr	r0, [pc, #64]	@ (c0de7040 <io_send_response_buffers+0xa0>)
c0de7000:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de7004:	b928      	cbnz	r0, c0de7012 <io_send_response_buffers+0x72>
c0de7006:	f000 f81f 	bl	c0de7048 <OUTLINED_FUNCTION_0>
c0de700a:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de700e:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de7012:	f000 f819 	bl	c0de7048 <OUTLINED_FUNCTION_0>
c0de7016:	2800      	cmp	r0, #0
c0de7018:	d40a      	bmi.n	c0de7030 <io_send_response_buffers+0x90>
c0de701a:	480a      	ldr	r0, [pc, #40]	@ (c0de7044 <io_send_response_buffers+0xa4>)
c0de701c:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de7020:	fab1 f181 	clz	r1, r1
c0de7024:	f859 0000 	ldr.w	r0, [r9, r0]
c0de7028:	0949      	lsrs	r1, r1, #5
c0de702a:	7001      	strb	r1, [r0, #0]
c0de702c:	f000 fe1a 	bl	c0de7c64 <os_lib_end>
c0de7030:	20ff      	movs	r0, #255	@ 0xff
c0de7032:	f000 fe33 	bl	c0de7c9c <os_sched_exit>
c0de7036:	bf00      	nop
c0de7038:	00000694 	.word	0x00000694
c0de703c:	00000b5c 	.word	0x00000b5c
c0de7040:	00000b5d 	.word	0x00000b5d
c0de7044:	00000b60 	.word	0x00000b60

c0de7048 <OUTLINED_FUNCTION_0>:
c0de7048:	eb09 000a 	add.w	r0, r9, sl
c0de704c:	b289      	uxth	r1, r1
c0de704e:	f7fc bdbd 	b.w	c0de3bcc <io_legacy_apdu_tx>

c0de7052 <app_exit>:
c0de7052:	20ff      	movs	r0, #255	@ 0xff
c0de7054:	f000 fe22 	bl	c0de7c9c <os_sched_exit>

c0de7058 <common_app_init>:
c0de7058:	b580      	push	{r7, lr}
c0de705a:	f000 fa4f 	bl	c0de74fc <nbgl_objInit>
c0de705e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7062:	f7fc bea3 	b.w	c0de3dac <io_seproxyhal_init>
	...

c0de7068 <standalone_app_main>:
c0de7068:	b5b0      	push	{r4, r5, r7, lr}
c0de706a:	b08c      	sub	sp, #48	@ 0x30
c0de706c:	4816      	ldr	r0, [pc, #88]	@ (c0de70c8 <standalone_app_main+0x60>)
c0de706e:	2500      	movs	r5, #0
c0de7070:	466c      	mov	r4, sp
c0de7072:	f809 5000 	strb.w	r5, [r9, r0]
c0de7076:	4815      	ldr	r0, [pc, #84]	@ (c0de70cc <standalone_app_main+0x64>)
c0de7078:	f849 5000 	str.w	r5, [r9, r0]
c0de707c:	4814      	ldr	r0, [pc, #80]	@ (c0de70d0 <standalone_app_main+0x68>)
c0de707e:	f809 5000 	strb.w	r5, [r9, r0]
c0de7082:	4620      	mov	r0, r4
c0de7084:	f000 ff94 	bl	c0de7fb0 <setjmp>
c0de7088:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de708c:	0400      	lsls	r0, r0, #16
c0de708e:	d108      	bne.n	c0de70a2 <standalone_app_main+0x3a>
c0de7090:	4668      	mov	r0, sp
c0de7092:	f000 fe41 	bl	c0de7d18 <try_context_set>
c0de7096:	900a      	str	r0, [sp, #40]	@ 0x28
c0de7098:	f7ff ffde 	bl	c0de7058 <common_app_init>
c0de709c:	f7f9 f992 	bl	c0de03c4 <app_main>
c0de70a0:	e004      	b.n	c0de70ac <standalone_app_main+0x44>
c0de70a2:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de70a4:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de70a8:	f000 fe36 	bl	c0de7d18 <try_context_set>
c0de70ac:	f000 fe2c 	bl	c0de7d08 <try_context_get>
c0de70b0:	42a0      	cmp	r0, r4
c0de70b2:	d102      	bne.n	c0de70ba <standalone_app_main+0x52>
c0de70b4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de70b6:	f000 fe2f 	bl	c0de7d18 <try_context_set>
c0de70ba:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de70be:	b908      	cbnz	r0, c0de70c4 <standalone_app_main+0x5c>
c0de70c0:	f7ff ffc7 	bl	c0de7052 <app_exit>
c0de70c4:	f000 fa7f 	bl	c0de75c6 <os_longjmp>
c0de70c8:	00000b5c 	.word	0x00000b5c
c0de70cc:	00000b60 	.word	0x00000b60
c0de70d0:	00000b5d 	.word	0x00000b5d

c0de70d4 <library_app_main>:
c0de70d4:	b5b0      	push	{r4, r5, r7, lr}
c0de70d6:	b08c      	sub	sp, #48	@ 0x30
c0de70d8:	466c      	mov	r4, sp
c0de70da:	4605      	mov	r5, r0
c0de70dc:	4620      	mov	r0, r4
c0de70de:	f000 ff67 	bl	c0de7fb0 <setjmp>
c0de70e2:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de70e6:	0400      	lsls	r0, r0, #16
c0de70e8:	d124      	bne.n	c0de7134 <library_app_main+0x60>
c0de70ea:	4668      	mov	r0, sp
c0de70ec:	f000 fe14 	bl	c0de7d18 <try_context_set>
c0de70f0:	900a      	str	r0, [sp, #40]	@ 0x28
c0de70f2:	6868      	ldr	r0, [r5, #4]
c0de70f4:	2804      	cmp	r0, #4
c0de70f6:	d024      	beq.n	c0de7142 <library_app_main+0x6e>
c0de70f8:	2803      	cmp	r0, #3
c0de70fa:	d026      	beq.n	c0de714a <library_app_main+0x76>
c0de70fc:	2802      	cmp	r0, #2
c0de70fe:	d127      	bne.n	c0de7150 <library_app_main+0x7c>
c0de7100:	68e8      	ldr	r0, [r5, #12]
c0de7102:	f7fa fc99 	bl	c0de1a38 <swap_copy_transaction_parameters>
c0de7106:	b318      	cbz	r0, c0de7150 <library_app_main+0x7c>
c0de7108:	4816      	ldr	r0, [pc, #88]	@ (c0de7164 <library_app_main+0x90>)
c0de710a:	2201      	movs	r2, #1
c0de710c:	f809 2000 	strb.w	r2, [r9, r0]
c0de7110:	4815      	ldr	r0, [pc, #84]	@ (c0de7168 <library_app_main+0x94>)
c0de7112:	2200      	movs	r2, #0
c0de7114:	f809 2000 	strb.w	r2, [r9, r0]
c0de7118:	4a14      	ldr	r2, [pc, #80]	@ (c0de716c <library_app_main+0x98>)
c0de711a:	68e8      	ldr	r0, [r5, #12]
c0de711c:	3020      	adds	r0, #32
c0de711e:	f849 0002 	str.w	r0, [r9, r2]
c0de7122:	f7ff ff99 	bl	c0de7058 <common_app_init>
c0de7126:	4812      	ldr	r0, [pc, #72]	@ (c0de7170 <library_app_main+0x9c>)
c0de7128:	4478      	add	r0, pc
c0de712a:	f7fe fbc9 	bl	c0de58c0 <nbgl_useCaseSpinner>
c0de712e:	f7f9 f949 	bl	c0de03c4 <app_main>
c0de7132:	e00d      	b.n	c0de7150 <library_app_main+0x7c>
c0de7134:	2000      	movs	r0, #0
c0de7136:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de713a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de713c:	f000 fdec 	bl	c0de7d18 <try_context_set>
c0de7140:	e006      	b.n	c0de7150 <library_app_main+0x7c>
c0de7142:	68e8      	ldr	r0, [r5, #12]
c0de7144:	f7fa fc4c 	bl	c0de19e0 <swap_handle_get_printable_amount>
c0de7148:	e002      	b.n	c0de7150 <library_app_main+0x7c>
c0de714a:	68e8      	ldr	r0, [r5, #12]
c0de714c:	f7fa fbed 	bl	c0de192a <swap_handle_check_address>
c0de7150:	f000 fdda 	bl	c0de7d08 <try_context_get>
c0de7154:	42a0      	cmp	r0, r4
c0de7156:	d102      	bne.n	c0de715e <library_app_main+0x8a>
c0de7158:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de715a:	f000 fddd 	bl	c0de7d18 <try_context_set>
c0de715e:	f000 fd81 	bl	c0de7c64 <os_lib_end>
c0de7162:	bf00      	nop
c0de7164:	00000b5c 	.word	0x00000b5c
c0de7168:	00000b5d 	.word	0x00000b5d
c0de716c:	00000b60 	.word	0x00000b60
c0de7170:	00001155 	.word	0x00001155

c0de7174 <apdu_parser>:
c0de7174:	2a04      	cmp	r2, #4
c0de7176:	d316      	bcc.n	c0de71a6 <apdu_parser+0x32>
c0de7178:	d102      	bne.n	c0de7180 <apdu_parser+0xc>
c0de717a:	2300      	movs	r3, #0
c0de717c:	7103      	strb	r3, [r0, #4]
c0de717e:	e004      	b.n	c0de718a <apdu_parser+0x16>
c0de7180:	790b      	ldrb	r3, [r1, #4]
c0de7182:	3a05      	subs	r2, #5
c0de7184:	429a      	cmp	r2, r3
c0de7186:	7103      	strb	r3, [r0, #4]
c0de7188:	d10d      	bne.n	c0de71a6 <apdu_parser+0x32>
c0de718a:	780a      	ldrb	r2, [r1, #0]
c0de718c:	2b00      	cmp	r3, #0
c0de718e:	7002      	strb	r2, [r0, #0]
c0de7190:	784a      	ldrb	r2, [r1, #1]
c0de7192:	7042      	strb	r2, [r0, #1]
c0de7194:	788a      	ldrb	r2, [r1, #2]
c0de7196:	7082      	strb	r2, [r0, #2]
c0de7198:	bf18      	it	ne
c0de719a:	1d4b      	addne	r3, r1, #5
c0de719c:	78c9      	ldrb	r1, [r1, #3]
c0de719e:	6083      	str	r3, [r0, #8]
c0de71a0:	70c1      	strb	r1, [r0, #3]
c0de71a2:	2001      	movs	r0, #1
c0de71a4:	4770      	bx	lr
c0de71a6:	2000      	movs	r0, #0
c0de71a8:	4770      	bx	lr

c0de71aa <read_u32_be>:
c0de71aa:	5c42      	ldrb	r2, [r0, r1]
c0de71ac:	4408      	add	r0, r1
c0de71ae:	7841      	ldrb	r1, [r0, #1]
c0de71b0:	7883      	ldrb	r3, [r0, #2]
c0de71b2:	78c0      	ldrb	r0, [r0, #3]
c0de71b4:	0409      	lsls	r1, r1, #16
c0de71b6:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de71ba:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de71be:	4408      	add	r0, r1
c0de71c0:	4770      	bx	lr

c0de71c2 <read_u64_be>:
c0de71c2:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de71c4:	1842      	adds	r2, r0, r1
c0de71c6:	5c40      	ldrb	r0, [r0, r1]
c0de71c8:	7917      	ldrb	r7, [r2, #4]
c0de71ca:	7953      	ldrb	r3, [r2, #5]
c0de71cc:	7854      	ldrb	r4, [r2, #1]
c0de71ce:	7895      	ldrb	r5, [r2, #2]
c0de71d0:	78d6      	ldrb	r6, [r2, #3]
c0de71d2:	063f      	lsls	r7, r7, #24
c0de71d4:	0421      	lsls	r1, r4, #16
c0de71d6:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de71da:	7997      	ldrb	r7, [r2, #6]
c0de71dc:	79d2      	ldrb	r2, [r2, #7]
c0de71de:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de71e2:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de71e6:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de71ea:	1981      	adds	r1, r0, r6
c0de71ec:	441a      	add	r2, r3
c0de71ee:	4610      	mov	r0, r2
c0de71f0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de71f2 <read_u16_le>:
c0de71f2:	5c42      	ldrb	r2, [r0, r1]
c0de71f4:	4408      	add	r0, r1
c0de71f6:	7840      	ldrb	r0, [r0, #1]
c0de71f8:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de71fc:	b280      	uxth	r0, r0
c0de71fe:	4770      	bx	lr

c0de7200 <read_u32_le>:
c0de7200:	5c42      	ldrb	r2, [r0, r1]
c0de7202:	4408      	add	r0, r1
c0de7204:	7841      	ldrb	r1, [r0, #1]
c0de7206:	7883      	ldrb	r3, [r0, #2]
c0de7208:	78c0      	ldrb	r0, [r0, #3]
c0de720a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de720e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de7212:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de7216:	4770      	bx	lr

c0de7218 <read_u64_le>:
c0de7218:	b5b0      	push	{r4, r5, r7, lr}
c0de721a:	5c42      	ldrb	r2, [r0, r1]
c0de721c:	4401      	add	r1, r0
c0de721e:	7848      	ldrb	r0, [r1, #1]
c0de7220:	788b      	ldrb	r3, [r1, #2]
c0de7222:	790d      	ldrb	r5, [r1, #4]
c0de7224:	78cc      	ldrb	r4, [r1, #3]
c0de7226:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de722a:	794a      	ldrb	r2, [r1, #5]
c0de722c:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de7230:	798b      	ldrb	r3, [r1, #6]
c0de7232:	79c9      	ldrb	r1, [r1, #7]
c0de7234:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de7238:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de723c:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de7240:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de7244:	bdb0      	pop	{r4, r5, r7, pc}

c0de7246 <send_swap_error_simple>:
c0de7246:	b082      	sub	sp, #8
c0de7248:	2300      	movs	r3, #0
c0de724a:	9300      	str	r3, [sp, #0]
c0de724c:	2300      	movs	r3, #0
c0de724e:	f000 f801 	bl	c0de7254 <send_swap_error_with_buffers>
	...

c0de7254 <send_swap_error_with_buffers>:
c0de7254:	b09c      	sub	sp, #112	@ 0x70
c0de7256:	4604      	mov	r4, r0
c0de7258:	4815      	ldr	r0, [pc, #84]	@ (c0de72b0 <send_swap_error_with_buffers+0x5c>)
c0de725a:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de725e:	b320      	cbz	r0, c0de72aa <send_swap_error_with_buffers+0x56>
c0de7260:	4814      	ldr	r0, [pc, #80]	@ (c0de72b4 <send_swap_error_with_buffers+0x60>)
c0de7262:	461d      	mov	r5, r3
c0de7264:	2301      	movs	r3, #1
c0de7266:	466e      	mov	r6, sp
c0de7268:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de726a:	f809 3000 	strb.w	r3, [r9, r0]
c0de726e:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de7272:	f106 0008 	add.w	r0, r6, #8
c0de7276:	2164      	movs	r1, #100	@ 0x64
c0de7278:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de727c:	f000 fe54 	bl	c0de7f28 <__aeabi_memclr>
c0de7280:	2002      	movs	r0, #2
c0de7282:	4629      	mov	r1, r5
c0de7284:	9001      	str	r0, [sp, #4]
c0de7286:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de728a:	2f08      	cmp	r7, #8
c0de728c:	9000      	str	r0, [sp, #0]
c0de728e:	bf28      	it	cs
c0de7290:	2708      	movcs	r7, #8
c0de7292:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de7296:	0082      	lsls	r2, r0, #2
c0de7298:	f106 000c 	add.w	r0, r6, #12
c0de729c:	f000 fe3a 	bl	c0de7f14 <__aeabi_memcpy>
c0de72a0:	1c79      	adds	r1, r7, #1
c0de72a2:	4630      	mov	r0, r6
c0de72a4:	4622      	mov	r2, r4
c0de72a6:	f7ff fe7b 	bl	c0de6fa0 <io_send_response_buffers>
c0de72aa:	2000      	movs	r0, #0
c0de72ac:	f000 fcf6 	bl	c0de7c9c <os_sched_exit>
c0de72b0:	00000b5c 	.word	0x00000b5c
c0de72b4:	00000b5d 	.word	0x00000b5d

c0de72b8 <swap_str_to_u64>:
c0de72b8:	2908      	cmp	r1, #8
c0de72ba:	d812      	bhi.n	c0de72e2 <swap_str_to_u64+0x2a>
c0de72bc:	b570      	push	{r4, r5, r6, lr}
c0de72be:	2500      	movs	r5, #0
c0de72c0:	460b      	mov	r3, r1
c0de72c2:	2400      	movs	r4, #0
c0de72c4:	b14b      	cbz	r3, c0de72da <swap_str_to_u64+0x22>
c0de72c6:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de72ca:	0224      	lsls	r4, r4, #8
c0de72cc:	3b01      	subs	r3, #1
c0de72ce:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de72d2:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de72d6:	4635      	mov	r5, r6
c0de72d8:	e7f4      	b.n	c0de72c4 <swap_str_to_u64+0xc>
c0de72da:	e9c2 5400 	strd	r5, r4, [r2]
c0de72de:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de72e2:	2000      	movs	r0, #0
c0de72e4:	2909      	cmp	r1, #9
c0de72e6:	bf38      	it	cc
c0de72e8:	2001      	movcc	r0, #1
c0de72ea:	4770      	bx	lr

c0de72ec <varint_read>:
c0de72ec:	b510      	push	{r4, lr}
c0de72ee:	b1d9      	cbz	r1, c0de7328 <varint_read+0x3c>
c0de72f0:	4614      	mov	r4, r2
c0de72f2:	4602      	mov	r2, r0
c0de72f4:	7800      	ldrb	r0, [r0, #0]
c0de72f6:	28ff      	cmp	r0, #255	@ 0xff
c0de72f8:	d00c      	beq.n	c0de7314 <varint_read+0x28>
c0de72fa:	28fe      	cmp	r0, #254	@ 0xfe
c0de72fc:	d012      	beq.n	c0de7324 <varint_read+0x38>
c0de72fe:	28fd      	cmp	r0, #253	@ 0xfd
c0de7300:	d115      	bne.n	c0de732e <varint_read+0x42>
c0de7302:	2903      	cmp	r1, #3
c0de7304:	d310      	bcc.n	c0de7328 <varint_read+0x3c>
c0de7306:	4610      	mov	r0, r2
c0de7308:	2101      	movs	r1, #1
c0de730a:	f7ff ff72 	bl	c0de71f2 <read_u16_le>
c0de730e:	2100      	movs	r1, #0
c0de7310:	2203      	movs	r2, #3
c0de7312:	e015      	b.n	c0de7340 <varint_read+0x54>
c0de7314:	2909      	cmp	r1, #9
c0de7316:	d307      	bcc.n	c0de7328 <varint_read+0x3c>
c0de7318:	4610      	mov	r0, r2
c0de731a:	2101      	movs	r1, #1
c0de731c:	f7ff ff7c 	bl	c0de7218 <read_u64_le>
c0de7320:	2209      	movs	r2, #9
c0de7322:	e00d      	b.n	c0de7340 <varint_read+0x54>
c0de7324:	2905      	cmp	r1, #5
c0de7326:	d205      	bcs.n	c0de7334 <varint_read+0x48>
c0de7328:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de732c:	e00a      	b.n	c0de7344 <varint_read+0x58>
c0de732e:	2100      	movs	r1, #0
c0de7330:	2201      	movs	r2, #1
c0de7332:	e005      	b.n	c0de7340 <varint_read+0x54>
c0de7334:	4610      	mov	r0, r2
c0de7336:	2101      	movs	r1, #1
c0de7338:	f7ff ff62 	bl	c0de7200 <read_u32_le>
c0de733c:	2100      	movs	r1, #0
c0de733e:	2205      	movs	r2, #5
c0de7340:	e9c4 0100 	strd	r0, r1, [r4]
c0de7344:	4610      	mov	r0, r2
c0de7346:	bd10      	pop	{r4, pc}

c0de7348 <write_u16_be>:
c0de7348:	0a13      	lsrs	r3, r2, #8
c0de734a:	5443      	strb	r3, [r0, r1]
c0de734c:	4408      	add	r0, r1
c0de734e:	7042      	strb	r2, [r0, #1]
c0de7350:	4770      	bx	lr
	...

c0de7354 <ux_process_button_event>:
c0de7354:	b5b0      	push	{r4, r5, r7, lr}
c0de7356:	4604      	mov	r4, r0
c0de7358:	2001      	movs	r0, #1
c0de735a:	f000 f815 	bl	c0de7388 <ux_forward_event>
c0de735e:	4605      	mov	r5, r0
c0de7360:	f000 f8d1 	bl	c0de7506 <nbgl_objAllowDrawing>
c0de7364:	b165      	cbz	r5, c0de7380 <ux_process_button_event+0x2c>
c0de7366:	4807      	ldr	r0, [pc, #28]	@ (c0de7384 <ux_process_button_event+0x30>)
c0de7368:	2164      	movs	r1, #100	@ 0x64
c0de736a:	f859 0000 	ldr.w	r0, [r9, r0]
c0de736e:	4341      	muls	r1, r0
c0de7370:	78e0      	ldrb	r0, [r4, #3]
c0de7372:	0840      	lsrs	r0, r0, #1
c0de7374:	f000 f917 	bl	c0de75a6 <nbgl_buttonsHandler>
c0de7378:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de737c:	f000 b8b9 	b.w	c0de74f2 <nbgl_refresh>
c0de7380:	bdb0      	pop	{r4, r5, r7, pc}
c0de7382:	bf00      	nop
c0de7384:	00000b64 	.word	0x00000b64

c0de7388 <ux_forward_event>:
c0de7388:	b5b0      	push	{r4, r5, r7, lr}
c0de738a:	4604      	mov	r4, r0
c0de738c:	4812      	ldr	r0, [pc, #72]	@ (c0de73d8 <ux_forward_event+0x50>)
c0de738e:	2101      	movs	r1, #1
c0de7390:	f809 1000 	strb.w	r1, [r9, r0]
c0de7394:	eb09 0500 	add.w	r5, r9, r0
c0de7398:	2000      	movs	r0, #0
c0de739a:	6068      	str	r0, [r5, #4]
c0de739c:	4628      	mov	r0, r5
c0de739e:	f000 fc57 	bl	c0de7c50 <os_ux>
c0de73a2:	2004      	movs	r0, #4
c0de73a4:	f000 fcc2 	bl	c0de7d2c <os_sched_last_status>
c0de73a8:	2869      	cmp	r0, #105	@ 0x69
c0de73aa:	6068      	str	r0, [r5, #4]
c0de73ac:	d108      	bne.n	c0de73c0 <ux_forward_event+0x38>
c0de73ae:	2001      	movs	r0, #1
c0de73b0:	f000 f8a9 	bl	c0de7506 <nbgl_objAllowDrawing>
c0de73b4:	f000 f8b6 	bl	c0de7524 <nbgl_screenRedraw>
c0de73b8:	f000 f89b 	bl	c0de74f2 <nbgl_refresh>
c0de73bc:	2000      	movs	r0, #0
c0de73be:	bdb0      	pop	{r4, r5, r7, pc}
c0de73c0:	b144      	cbz	r4, c0de73d4 <ux_forward_event+0x4c>
c0de73c2:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de73c6:	bf18      	it	ne
c0de73c8:	2101      	movne	r1, #1
c0de73ca:	2800      	cmp	r0, #0
c0de73cc:	bf18      	it	ne
c0de73ce:	2001      	movne	r0, #1
c0de73d0:	4008      	ands	r0, r1
c0de73d2:	bdb0      	pop	{r4, r5, r7, pc}
c0de73d4:	2001      	movs	r0, #1
c0de73d6:	bdb0      	pop	{r4, r5, r7, pc}
c0de73d8:	00000b50 	.word	0x00000b50

c0de73dc <ux_process_ticker_event>:
c0de73dc:	b510      	push	{r4, lr}
c0de73de:	480a      	ldr	r0, [pc, #40]	@ (c0de7408 <ux_process_ticker_event+0x2c>)
c0de73e0:	f859 1000 	ldr.w	r1, [r9, r0]
c0de73e4:	3101      	adds	r1, #1
c0de73e6:	f849 1000 	str.w	r1, [r9, r0]
c0de73ea:	2001      	movs	r0, #1
c0de73ec:	f7ff ffcc 	bl	c0de7388 <ux_forward_event>
c0de73f0:	4604      	mov	r4, r0
c0de73f2:	f000 f888 	bl	c0de7506 <nbgl_objAllowDrawing>
c0de73f6:	b134      	cbz	r4, c0de7406 <ux_process_ticker_event+0x2a>
c0de73f8:	2064      	movs	r0, #100	@ 0x64
c0de73fa:	f000 f89d 	bl	c0de7538 <nbgl_screenHandler>
c0de73fe:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7402:	f000 b876 	b.w	c0de74f2 <nbgl_refresh>
c0de7406:	bd10      	pop	{r4, pc}
c0de7408:	00000b64 	.word	0x00000b64

c0de740c <ux_process_default_event>:
c0de740c:	2000      	movs	r0, #0
c0de740e:	f7ff bfbb 	b.w	c0de7388 <ux_forward_event>

c0de7412 <hash_iovec_ex>:
c0de7412:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7416:	468a      	mov	sl, r1
c0de7418:	4611      	mov	r1, r2
c0de741a:	461a      	mov	r2, r3
c0de741c:	4605      	mov	r5, r0
c0de741e:	f000 f84d 	bl	c0de74bc <cx_hash_init_ex>
c0de7422:	4607      	mov	r7, r0
c0de7424:	b9a8      	cbnz	r0, c0de7452 <hash_iovec_ex+0x40>
c0de7426:	f10d 0820 	add.w	r8, sp, #32
c0de742a:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de742e:	1d04      	adds	r4, r0, #4
c0de7430:	b156      	cbz	r6, c0de7448 <hash_iovec_ex+0x36>
c0de7432:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de7436:	f854 2b08 	ldr.w	r2, [r4], #8
c0de743a:	4628      	mov	r0, r5
c0de743c:	f000 f843 	bl	c0de74c6 <cx_hash_update>
c0de7440:	3e01      	subs	r6, #1
c0de7442:	2800      	cmp	r0, #0
c0de7444:	d0f4      	beq.n	c0de7430 <hash_iovec_ex+0x1e>
c0de7446:	e003      	b.n	c0de7450 <hash_iovec_ex+0x3e>
c0de7448:	4628      	mov	r0, r5
c0de744a:	4641      	mov	r1, r8
c0de744c:	f000 f831 	bl	c0de74b2 <cx_hash_final>
c0de7450:	4607      	mov	r7, r0
c0de7452:	4628      	mov	r0, r5
c0de7454:	4651      	mov	r1, sl
c0de7456:	f000 fd75 	bl	c0de7f44 <explicit_bzero>
c0de745a:	4638      	mov	r0, r7
c0de745c:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de7460 <cx_keccak_256_hash_iovec>:
c0de7460:	b580      	push	{r7, lr}
c0de7462:	b0ee      	sub	sp, #440	@ 0x1b8
c0de7464:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de7468:	a804      	add	r0, sp, #16
c0de746a:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de746e:	2206      	movs	r2, #6
c0de7470:	2320      	movs	r3, #32
c0de7472:	f7ff ffce 	bl	c0de7412 <hash_iovec_ex>
c0de7476:	b06e      	add	sp, #440	@ 0x1b8
c0de7478:	bd80      	pop	{r7, pc}

c0de747a <cx_blake2b_512_hash_iovec>:
c0de747a:	b580      	push	{r7, lr}
c0de747c:	b0c4      	sub	sp, #272	@ 0x110
c0de747e:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de7482:	a804      	add	r0, sp, #16
c0de7484:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de7488:	2209      	movs	r2, #9
c0de748a:	2340      	movs	r3, #64	@ 0x40
c0de748c:	f7ff ffc1 	bl	c0de7412 <hash_iovec_ex>
c0de7490:	b044      	add	sp, #272	@ 0x110
c0de7492:	bd80      	pop	{r7, pc}

c0de7494 <cx_ecdsa_sign_no_throw>:
c0de7494:	b403      	push	{r0, r1}
c0de7496:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de749a:	f000 b823 	b.w	c0de74e4 <cx_trampoline_helper>

c0de749e <cx_ecfp_generate_pair2_no_throw>:
c0de749e:	b403      	push	{r0, r1}
c0de74a0:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de74a4:	f000 b81e 	b.w	c0de74e4 <cx_trampoline_helper>

c0de74a8 <cx_ecfp_init_private_key_no_throw>:
c0de74a8:	b403      	push	{r0, r1}
c0de74aa:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de74ae:	f000 b819 	b.w	c0de74e4 <cx_trampoline_helper>

c0de74b2 <cx_hash_final>:
c0de74b2:	b403      	push	{r0, r1}
c0de74b4:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de74b8:	f000 b814 	b.w	c0de74e4 <cx_trampoline_helper>

c0de74bc <cx_hash_init_ex>:
c0de74bc:	b403      	push	{r0, r1}
c0de74be:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de74c2:	f000 b80f 	b.w	c0de74e4 <cx_trampoline_helper>

c0de74c6 <cx_hash_update>:
c0de74c6:	b403      	push	{r0, r1}
c0de74c8:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de74cc:	f000 b80a 	b.w	c0de74e4 <cx_trampoline_helper>

c0de74d0 <cx_rng_no_throw>:
c0de74d0:	b403      	push	{r0, r1}
c0de74d2:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de74d6:	f000 b805 	b.w	c0de74e4 <cx_trampoline_helper>
	...

c0de74dc <cx_aes_siv_reset>:
c0de74dc:	b403      	push	{r0, r1}
c0de74de:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de74e2:	e7ff      	b.n	c0de74e4 <cx_trampoline_helper>

c0de74e4 <cx_trampoline_helper>:
c0de74e4:	4900      	ldr	r1, [pc, #0]	@ (c0de74e8 <cx_trampoline_helper+0x4>)
c0de74e6:	4708      	bx	r1
c0de74e8:	00808001 	.word	0x00808001

c0de74ec <assert_exit>:
c0de74ec:	20ff      	movs	r0, #255	@ 0xff
c0de74ee:	f000 fbd5 	bl	c0de7c9c <os_sched_exit>

c0de74f2 <nbgl_refresh>:
c0de74f2:	b403      	push	{r0, r1}
c0de74f4:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de74f8:	f000 b85e 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de74fc <nbgl_objInit>:
c0de74fc:	b403      	push	{r0, r1}
c0de74fe:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de7502:	f000 b859 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7506 <nbgl_objAllowDrawing>:
c0de7506:	b403      	push	{r0, r1}
c0de7508:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de750c:	f000 b854 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7510 <nbgl_screenSet>:
c0de7510:	b403      	push	{r0, r1}
c0de7512:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de7516:	f000 b84f 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de751a <nbgl_screenPush>:
c0de751a:	b403      	push	{r0, r1}
c0de751c:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de7520:	f000 b84a 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7524 <nbgl_screenRedraw>:
c0de7524:	b403      	push	{r0, r1}
c0de7526:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de752a:	f000 b845 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de752e <nbgl_screenPop>:
c0de752e:	b403      	push	{r0, r1}
c0de7530:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de7534:	f000 b840 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7538 <nbgl_screenHandler>:
c0de7538:	b403      	push	{r0, r1}
c0de753a:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de753e:	f000 b83b 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7542 <nbgl_objPoolGet>:
c0de7542:	b403      	push	{r0, r1}
c0de7544:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de7548:	f000 b836 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de754c <nbgl_containerPoolGet>:
c0de754c:	b403      	push	{r0, r1}
c0de754e:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de7552:	f000 b831 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7556 <nbgl_getFont>:
c0de7556:	b403      	push	{r0, r1}
c0de7558:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de755c:	f000 b82c 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7560 <nbgl_getFontLineHeight>:
c0de7560:	b403      	push	{r0, r1}
c0de7562:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de7566:	f000 b827 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de756a <nbgl_getTextMaxLenAndWidth>:
c0de756a:	b403      	push	{r0, r1}
c0de756c:	f04f 00b3 	mov.w	r0, #179	@ 0xb3
c0de7570:	f000 b822 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7574 <nbgl_getTextNbLinesInWidth>:
c0de7574:	b403      	push	{r0, r1}
c0de7576:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de757a:	f000 b81d 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de757e <nbgl_getTextNbPagesInWidth>:
c0de757e:	b403      	push	{r0, r1}
c0de7580:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de7584:	f000 b818 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7588 <nbgl_getTextWidth>:
c0de7588:	b403      	push	{r0, r1}
c0de758a:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de758e:	f000 b813 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de7592 <nbgl_getTextMaxLenInNbLines>:
c0de7592:	b403      	push	{r0, r1}
c0de7594:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de7598:	f000 b80e 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de759c <nbgl_textReduceOnNbLines>:
c0de759c:	b403      	push	{r0, r1}
c0de759e:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de75a2:	f000 b809 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de75a6 <nbgl_buttonsHandler>:
c0de75a6:	b403      	push	{r0, r1}
c0de75a8:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de75ac:	f000 b804 	b.w	c0de75b8 <nbgl_trampoline_helper>

c0de75b0 <pic_init>:
c0de75b0:	b403      	push	{r0, r1}
c0de75b2:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de75b6:	e7ff      	b.n	c0de75b8 <nbgl_trampoline_helper>

c0de75b8 <nbgl_trampoline_helper>:
c0de75b8:	4900      	ldr	r1, [pc, #0]	@ (c0de75bc <nbgl_trampoline_helper+0x4>)
c0de75ba:	4708      	bx	r1
c0de75bc:	00808001 	.word	0x00808001

c0de75c0 <os_boot>:
c0de75c0:	2000      	movs	r0, #0
c0de75c2:	f000 bba9 	b.w	c0de7d18 <try_context_set>

c0de75c6 <os_longjmp>:
c0de75c6:	4604      	mov	r4, r0
c0de75c8:	f000 fb9e 	bl	c0de7d08 <try_context_get>
c0de75cc:	4621      	mov	r1, r4
c0de75ce:	f000 fcf5 	bl	c0de7fbc <longjmp>
	...

c0de75d4 <os_explicit_zero_BSS_segment>:
c0de75d4:	4803      	ldr	r0, [pc, #12]	@ (c0de75e4 <os_explicit_zero_BSS_segment+0x10>)
c0de75d6:	4904      	ldr	r1, [pc, #16]	@ (c0de75e8 <os_explicit_zero_BSS_segment+0x14>)
c0de75d8:	4448      	add	r0, r9
c0de75da:	4449      	add	r1, r9
c0de75dc:	1a09      	subs	r1, r1, r0
c0de75de:	f000 bcb1 	b.w	c0de7f44 <explicit_bzero>
c0de75e2:	bf00      	nop
c0de75e4:	00000000 	.word	0x00000000
c0de75e8:	00000b68 	.word	0x00000b68

c0de75ec <snprintf>:
c0de75ec:	b081      	sub	sp, #4
c0de75ee:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de75f2:	b087      	sub	sp, #28
c0de75f4:	2800      	cmp	r0, #0
c0de75f6:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de75f8:	f000 817a 	beq.w	c0de78f0 <snprintf+0x304>
c0de75fc:	460d      	mov	r5, r1
c0de75fe:	2900      	cmp	r1, #0
c0de7600:	f000 8176 	beq.w	c0de78f0 <snprintf+0x304>
c0de7604:	4629      	mov	r1, r5
c0de7606:	4616      	mov	r6, r2
c0de7608:	4604      	mov	r4, r0
c0de760a:	f000 fc8d 	bl	c0de7f28 <__aeabi_memclr>
c0de760e:	f1b5 0801 	subs.w	r8, r5, #1
c0de7612:	f000 816d 	beq.w	c0de78f0 <snprintf+0x304>
c0de7616:	a80f      	add	r0, sp, #60	@ 0x3c
c0de7618:	9002      	str	r0, [sp, #8]
c0de761a:	7830      	ldrb	r0, [r6, #0]
c0de761c:	2800      	cmp	r0, #0
c0de761e:	f000 8167 	beq.w	c0de78f0 <snprintf+0x304>
c0de7622:	2700      	movs	r7, #0
c0de7624:	b128      	cbz	r0, c0de7632 <snprintf+0x46>
c0de7626:	2825      	cmp	r0, #37	@ 0x25
c0de7628:	d003      	beq.n	c0de7632 <snprintf+0x46>
c0de762a:	19f0      	adds	r0, r6, r7
c0de762c:	3701      	adds	r7, #1
c0de762e:	7840      	ldrb	r0, [r0, #1]
c0de7630:	e7f8      	b.n	c0de7624 <snprintf+0x38>
c0de7632:	4547      	cmp	r7, r8
c0de7634:	bf28      	it	cs
c0de7636:	4647      	movcs	r7, r8
c0de7638:	4620      	mov	r0, r4
c0de763a:	4631      	mov	r1, r6
c0de763c:	463a      	mov	r2, r7
c0de763e:	f000 fc6b 	bl	c0de7f18 <__aeabi_memmove>
c0de7642:	ebb8 0807 	subs.w	r8, r8, r7
c0de7646:	f000 8153 	beq.w	c0de78f0 <snprintf+0x304>
c0de764a:	5df1      	ldrb	r1, [r6, r7]
c0de764c:	19f0      	adds	r0, r6, r7
c0de764e:	443c      	add	r4, r7
c0de7650:	4606      	mov	r6, r0
c0de7652:	2925      	cmp	r1, #37	@ 0x25
c0de7654:	d1e1      	bne.n	c0de761a <snprintf+0x2e>
c0de7656:	1c41      	adds	r1, r0, #1
c0de7658:	f04f 0b00 	mov.w	fp, #0
c0de765c:	f04f 0e20 	mov.w	lr, #32
c0de7660:	2500      	movs	r5, #0
c0de7662:	2600      	movs	r6, #0
c0de7664:	3101      	adds	r1, #1
c0de7666:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de766a:	4632      	mov	r2, r6
c0de766c:	3101      	adds	r1, #1
c0de766e:	2600      	movs	r6, #0
c0de7670:	2b2d      	cmp	r3, #45	@ 0x2d
c0de7672:	d0f8      	beq.n	c0de7666 <snprintf+0x7a>
c0de7674:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de7678:	2e0a      	cmp	r6, #10
c0de767a:	d313      	bcc.n	c0de76a4 <snprintf+0xb8>
c0de767c:	2b25      	cmp	r3, #37	@ 0x25
c0de767e:	d046      	beq.n	c0de770e <snprintf+0x122>
c0de7680:	2b2a      	cmp	r3, #42	@ 0x2a
c0de7682:	d01f      	beq.n	c0de76c4 <snprintf+0xd8>
c0de7684:	2b2e      	cmp	r3, #46	@ 0x2e
c0de7686:	d129      	bne.n	c0de76dc <snprintf+0xf0>
c0de7688:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de768c:	2a2a      	cmp	r2, #42	@ 0x2a
c0de768e:	d13c      	bne.n	c0de770a <snprintf+0x11e>
c0de7690:	780a      	ldrb	r2, [r1, #0]
c0de7692:	2a48      	cmp	r2, #72	@ 0x48
c0de7694:	d003      	beq.n	c0de769e <snprintf+0xb2>
c0de7696:	2a73      	cmp	r2, #115	@ 0x73
c0de7698:	d001      	beq.n	c0de769e <snprintf+0xb2>
c0de769a:	2a68      	cmp	r2, #104	@ 0x68
c0de769c:	d135      	bne.n	c0de770a <snprintf+0x11e>
c0de769e:	9a02      	ldr	r2, [sp, #8]
c0de76a0:	2601      	movs	r6, #1
c0de76a2:	e017      	b.n	c0de76d4 <snprintf+0xe8>
c0de76a4:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de76a8:	ea56 060b 	orrs.w	r6, r6, fp
c0de76ac:	bf08      	it	eq
c0de76ae:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de76b2:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de76b6:	3901      	subs	r1, #1
c0de76b8:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de76bc:	4616      	mov	r6, r2
c0de76be:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de76c2:	e7cf      	b.n	c0de7664 <snprintf+0x78>
c0de76c4:	460b      	mov	r3, r1
c0de76c6:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de76ca:	2a73      	cmp	r2, #115	@ 0x73
c0de76cc:	d11d      	bne.n	c0de770a <snprintf+0x11e>
c0de76ce:	9a02      	ldr	r2, [sp, #8]
c0de76d0:	2602      	movs	r6, #2
c0de76d2:	4619      	mov	r1, r3
c0de76d4:	1d13      	adds	r3, r2, #4
c0de76d6:	9302      	str	r3, [sp, #8]
c0de76d8:	6815      	ldr	r5, [r2, #0]
c0de76da:	e7c3      	b.n	c0de7664 <snprintf+0x78>
c0de76dc:	2b48      	cmp	r3, #72	@ 0x48
c0de76de:	d018      	beq.n	c0de7712 <snprintf+0x126>
c0de76e0:	2b58      	cmp	r3, #88	@ 0x58
c0de76e2:	d019      	beq.n	c0de7718 <snprintf+0x12c>
c0de76e4:	2b63      	cmp	r3, #99	@ 0x63
c0de76e6:	d020      	beq.n	c0de772a <snprintf+0x13e>
c0de76e8:	2b64      	cmp	r3, #100	@ 0x64
c0de76ea:	d02a      	beq.n	c0de7742 <snprintf+0x156>
c0de76ec:	2b68      	cmp	r3, #104	@ 0x68
c0de76ee:	d036      	beq.n	c0de775e <snprintf+0x172>
c0de76f0:	2b70      	cmp	r3, #112	@ 0x70
c0de76f2:	d006      	beq.n	c0de7702 <snprintf+0x116>
c0de76f4:	2b73      	cmp	r3, #115	@ 0x73
c0de76f6:	d037      	beq.n	c0de7768 <snprintf+0x17c>
c0de76f8:	2b75      	cmp	r3, #117	@ 0x75
c0de76fa:	f000 8081 	beq.w	c0de7800 <snprintf+0x214>
c0de76fe:	2b78      	cmp	r3, #120	@ 0x78
c0de7700:	d103      	bne.n	c0de770a <snprintf+0x11e>
c0de7702:	9400      	str	r4, [sp, #0]
c0de7704:	f04f 0c00 	mov.w	ip, #0
c0de7708:	e009      	b.n	c0de771e <snprintf+0x132>
c0de770a:	1e4e      	subs	r6, r1, #1
c0de770c:	e785      	b.n	c0de761a <snprintf+0x2e>
c0de770e:	2025      	movs	r0, #37	@ 0x25
c0de7710:	e00f      	b.n	c0de7732 <snprintf+0x146>
c0de7712:	487b      	ldr	r0, [pc, #492]	@ (c0de7900 <snprintf+0x314>)
c0de7714:	4478      	add	r0, pc
c0de7716:	e024      	b.n	c0de7762 <snprintf+0x176>
c0de7718:	f04f 0c01 	mov.w	ip, #1
c0de771c:	9400      	str	r4, [sp, #0]
c0de771e:	9a02      	ldr	r2, [sp, #8]
c0de7720:	2400      	movs	r4, #0
c0de7722:	1d13      	adds	r3, r2, #4
c0de7724:	9302      	str	r3, [sp, #8]
c0de7726:	2310      	movs	r3, #16
c0de7728:	e072      	b.n	c0de7810 <snprintf+0x224>
c0de772a:	9802      	ldr	r0, [sp, #8]
c0de772c:	1d02      	adds	r2, r0, #4
c0de772e:	9202      	str	r2, [sp, #8]
c0de7730:	6800      	ldr	r0, [r0, #0]
c0de7732:	1e4e      	subs	r6, r1, #1
c0de7734:	f804 0b01 	strb.w	r0, [r4], #1
c0de7738:	f1b8 0801 	subs.w	r8, r8, #1
c0de773c:	f47f af6d 	bne.w	c0de761a <snprintf+0x2e>
c0de7740:	e0d6      	b.n	c0de78f0 <snprintf+0x304>
c0de7742:	9a02      	ldr	r2, [sp, #8]
c0de7744:	9400      	str	r4, [sp, #0]
c0de7746:	1d13      	adds	r3, r2, #4
c0de7748:	9302      	str	r3, [sp, #8]
c0de774a:	6813      	ldr	r3, [r2, #0]
c0de774c:	2b00      	cmp	r3, #0
c0de774e:	461a      	mov	r2, r3
c0de7750:	d500      	bpl.n	c0de7754 <snprintf+0x168>
c0de7752:	425a      	negs	r2, r3
c0de7754:	0fdc      	lsrs	r4, r3, #31
c0de7756:	f04f 0c00 	mov.w	ip, #0
c0de775a:	230a      	movs	r3, #10
c0de775c:	e059      	b.n	c0de7812 <snprintf+0x226>
c0de775e:	4869      	ldr	r0, [pc, #420]	@ (c0de7904 <snprintf+0x318>)
c0de7760:	4478      	add	r0, pc
c0de7762:	f04f 0c01 	mov.w	ip, #1
c0de7766:	e003      	b.n	c0de7770 <snprintf+0x184>
c0de7768:	4864      	ldr	r0, [pc, #400]	@ (c0de78fc <snprintf+0x310>)
c0de776a:	f04f 0c00 	mov.w	ip, #0
c0de776e:	4478      	add	r0, pc
c0de7770:	9b02      	ldr	r3, [sp, #8]
c0de7772:	b2d2      	uxtb	r2, r2
c0de7774:	1d1e      	adds	r6, r3, #4
c0de7776:	9602      	str	r6, [sp, #8]
c0de7778:	1e4e      	subs	r6, r1, #1
c0de777a:	6819      	ldr	r1, [r3, #0]
c0de777c:	2a02      	cmp	r2, #2
c0de777e:	f000 80a7 	beq.w	c0de78d0 <snprintf+0x2e4>
c0de7782:	2a01      	cmp	r2, #1
c0de7784:	d007      	beq.n	c0de7796 <snprintf+0x1aa>
c0de7786:	463d      	mov	r5, r7
c0de7788:	b92a      	cbnz	r2, c0de7796 <snprintf+0x1aa>
c0de778a:	2200      	movs	r2, #0
c0de778c:	5c8b      	ldrb	r3, [r1, r2]
c0de778e:	3201      	adds	r2, #1
c0de7790:	2b00      	cmp	r3, #0
c0de7792:	d1fb      	bne.n	c0de778c <snprintf+0x1a0>
c0de7794:	1e55      	subs	r5, r2, #1
c0de7796:	f1bc 0f00 	cmp.w	ip, #0
c0de779a:	d016      	beq.n	c0de77ca <snprintf+0x1de>
c0de779c:	2d00      	cmp	r5, #0
c0de779e:	f43f af3c 	beq.w	c0de761a <snprintf+0x2e>
c0de77a2:	f1b8 0f02 	cmp.w	r8, #2
c0de77a6:	f0c0 80a3 	bcc.w	c0de78f0 <snprintf+0x304>
c0de77aa:	780a      	ldrb	r2, [r1, #0]
c0de77ac:	0913      	lsrs	r3, r2, #4
c0de77ae:	f002 020f 	and.w	r2, r2, #15
c0de77b2:	5cc3      	ldrb	r3, [r0, r3]
c0de77b4:	f1b8 0802 	subs.w	r8, r8, #2
c0de77b8:	7023      	strb	r3, [r4, #0]
c0de77ba:	5c82      	ldrb	r2, [r0, r2]
c0de77bc:	7062      	strb	r2, [r4, #1]
c0de77be:	f000 8097 	beq.w	c0de78f0 <snprintf+0x304>
c0de77c2:	3101      	adds	r1, #1
c0de77c4:	3d01      	subs	r5, #1
c0de77c6:	3402      	adds	r4, #2
c0de77c8:	e7e8      	b.n	c0de779c <snprintf+0x1b0>
c0de77ca:	4545      	cmp	r5, r8
c0de77cc:	bf28      	it	cs
c0de77ce:	4645      	movcs	r5, r8
c0de77d0:	4620      	mov	r0, r4
c0de77d2:	462a      	mov	r2, r5
c0de77d4:	f000 fba0 	bl	c0de7f18 <__aeabi_memmove>
c0de77d8:	ebb8 0805 	subs.w	r8, r8, r5
c0de77dc:	f000 8088 	beq.w	c0de78f0 <snprintf+0x304>
c0de77e0:	462f      	mov	r7, r5
c0de77e2:	442c      	add	r4, r5
c0de77e4:	45bb      	cmp	fp, r7
c0de77e6:	f67f af18 	bls.w	c0de761a <snprintf+0x2e>
c0de77ea:	ebab 0507 	sub.w	r5, fp, r7
c0de77ee:	4620      	mov	r0, r4
c0de77f0:	4545      	cmp	r5, r8
c0de77f2:	bf28      	it	cs
c0de77f4:	4645      	movcs	r5, r8
c0de77f6:	4629      	mov	r1, r5
c0de77f8:	2220      	movs	r2, #32
c0de77fa:	f000 fb8f 	bl	c0de7f1c <__aeabi_memset>
c0de77fe:	e061      	b.n	c0de78c4 <snprintf+0x2d8>
c0de7800:	9a02      	ldr	r2, [sp, #8]
c0de7802:	9400      	str	r4, [sp, #0]
c0de7804:	2400      	movs	r4, #0
c0de7806:	f04f 0c00 	mov.w	ip, #0
c0de780a:	1d13      	adds	r3, r2, #4
c0de780c:	9302      	str	r3, [sp, #8]
c0de780e:	230a      	movs	r3, #10
c0de7810:	6812      	ldr	r2, [r2, #0]
c0de7812:	483d      	ldr	r0, [pc, #244]	@ (c0de7908 <snprintf+0x31c>)
c0de7814:	1e4e      	subs	r6, r1, #1
c0de7816:	f04f 0a01 	mov.w	sl, #1
c0de781a:	4478      	add	r0, pc
c0de781c:	9001      	str	r0, [sp, #4]
c0de781e:	fba3 570a 	umull	r5, r7, r3, sl
c0de7822:	2f00      	cmp	r7, #0
c0de7824:	bf18      	it	ne
c0de7826:	2701      	movne	r7, #1
c0de7828:	4295      	cmp	r5, r2
c0de782a:	d804      	bhi.n	c0de7836 <snprintf+0x24a>
c0de782c:	b91f      	cbnz	r7, c0de7836 <snprintf+0x24a>
c0de782e:	f1ab 0b01 	sub.w	fp, fp, #1
c0de7832:	46aa      	mov	sl, r5
c0de7834:	e7f3      	b.n	c0de781e <snprintf+0x232>
c0de7836:	2c00      	cmp	r4, #0
c0de7838:	4627      	mov	r7, r4
c0de783a:	f04f 0500 	mov.w	r5, #0
c0de783e:	bf18      	it	ne
c0de7840:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de7844:	d00d      	beq.n	c0de7862 <snprintf+0x276>
c0de7846:	4660      	mov	r0, ip
c0de7848:	fa5f fc8e 	uxtb.w	ip, lr
c0de784c:	a903      	add	r1, sp, #12
c0de784e:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de7852:	4684      	mov	ip, r0
c0de7854:	d106      	bne.n	c0de7864 <snprintf+0x278>
c0de7856:	202d      	movs	r0, #45	@ 0x2d
c0de7858:	2400      	movs	r4, #0
c0de785a:	2501      	movs	r5, #1
c0de785c:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7860:	e000      	b.n	c0de7864 <snprintf+0x278>
c0de7862:	a903      	add	r1, sp, #12
c0de7864:	eb07 000b 	add.w	r0, r7, fp
c0de7868:	3802      	subs	r0, #2
c0de786a:	280d      	cmp	r0, #13
c0de786c:	d808      	bhi.n	c0de7880 <snprintf+0x294>
c0de786e:	f1c7 0701 	rsb	r7, r7, #1
c0de7872:	45bb      	cmp	fp, r7
c0de7874:	d004      	beq.n	c0de7880 <snprintf+0x294>
c0de7876:	f801 e005 	strb.w	lr, [r1, r5]
c0de787a:	3701      	adds	r7, #1
c0de787c:	3501      	adds	r5, #1
c0de787e:	e7f8      	b.n	c0de7872 <snprintf+0x286>
c0de7880:	9f01      	ldr	r7, [sp, #4]
c0de7882:	b114      	cbz	r4, c0de788a <snprintf+0x29e>
c0de7884:	202d      	movs	r0, #45	@ 0x2d
c0de7886:	5548      	strb	r0, [r1, r5]
c0de7888:	3501      	adds	r5, #1
c0de788a:	4820      	ldr	r0, [pc, #128]	@ (c0de790c <snprintf+0x320>)
c0de788c:	f1bc 0f00 	cmp.w	ip, #0
c0de7890:	4478      	add	r0, pc
c0de7892:	bf08      	it	eq
c0de7894:	4638      	moveq	r0, r7
c0de7896:	f1ba 0f00 	cmp.w	sl, #0
c0de789a:	d00b      	beq.n	c0de78b4 <snprintf+0x2c8>
c0de789c:	fbb2 f7fa 	udiv	r7, r2, sl
c0de78a0:	fbba faf3 	udiv	sl, sl, r3
c0de78a4:	fbb7 f4f3 	udiv	r4, r7, r3
c0de78a8:	fb04 7413 	mls	r4, r4, r3, r7
c0de78ac:	5d04      	ldrb	r4, [r0, r4]
c0de78ae:	554c      	strb	r4, [r1, r5]
c0de78b0:	3501      	adds	r5, #1
c0de78b2:	e7f0      	b.n	c0de7896 <snprintf+0x2aa>
c0de78b4:	4545      	cmp	r5, r8
c0de78b6:	bf28      	it	cs
c0de78b8:	4645      	movcs	r5, r8
c0de78ba:	9c00      	ldr	r4, [sp, #0]
c0de78bc:	462a      	mov	r2, r5
c0de78be:	4620      	mov	r0, r4
c0de78c0:	f000 fb2a 	bl	c0de7f18 <__aeabi_memmove>
c0de78c4:	ebb8 0805 	subs.w	r8, r8, r5
c0de78c8:	442c      	add	r4, r5
c0de78ca:	f47f aea6 	bne.w	c0de761a <snprintf+0x2e>
c0de78ce:	e00f      	b.n	c0de78f0 <snprintf+0x304>
c0de78d0:	7808      	ldrb	r0, [r1, #0]
c0de78d2:	2800      	cmp	r0, #0
c0de78d4:	f47f aea1 	bne.w	c0de761a <snprintf+0x2e>
c0de78d8:	4545      	cmp	r5, r8
c0de78da:	bf28      	it	cs
c0de78dc:	4645      	movcs	r5, r8
c0de78de:	4620      	mov	r0, r4
c0de78e0:	4629      	mov	r1, r5
c0de78e2:	2220      	movs	r2, #32
c0de78e4:	f000 fb1a 	bl	c0de7f1c <__aeabi_memset>
c0de78e8:	ebb8 0805 	subs.w	r8, r8, r5
c0de78ec:	f47f af79 	bne.w	c0de77e2 <snprintf+0x1f6>
c0de78f0:	2000      	movs	r0, #0
c0de78f2:	b007      	add	sp, #28
c0de78f4:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de78f8:	b001      	add	sp, #4
c0de78fa:	4770      	bx	lr
c0de78fc:	00001d4e 	.word	0x00001d4e
c0de7900:	00001db8 	.word	0x00001db8
c0de7904:	00001d5c 	.word	0x00001d5c
c0de7908:	00001ca2 	.word	0x00001ca2
c0de790c:	00001c3c 	.word	0x00001c3c

c0de7910 <pic>:
c0de7910:	4a0a      	ldr	r2, [pc, #40]	@ (c0de793c <pic+0x2c>)
c0de7912:	4282      	cmp	r2, r0
c0de7914:	490a      	ldr	r1, [pc, #40]	@ (c0de7940 <pic+0x30>)
c0de7916:	d806      	bhi.n	c0de7926 <pic+0x16>
c0de7918:	4281      	cmp	r1, r0
c0de791a:	d304      	bcc.n	c0de7926 <pic+0x16>
c0de791c:	b580      	push	{r7, lr}
c0de791e:	f000 f815 	bl	c0de794c <pic_internal>
c0de7922:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7926:	4907      	ldr	r1, [pc, #28]	@ (c0de7944 <pic+0x34>)
c0de7928:	4288      	cmp	r0, r1
c0de792a:	4a07      	ldr	r2, [pc, #28]	@ (c0de7948 <pic+0x38>)
c0de792c:	d304      	bcc.n	c0de7938 <pic+0x28>
c0de792e:	4290      	cmp	r0, r2
c0de7930:	d802      	bhi.n	c0de7938 <pic+0x28>
c0de7932:	1a40      	subs	r0, r0, r1
c0de7934:	4649      	mov	r1, r9
c0de7936:	4408      	add	r0, r1
c0de7938:	4770      	bx	lr
c0de793a:	0000      	movs	r0, r0
c0de793c:	c0de0000 	.word	0xc0de0000
c0de7940:	c0de983f 	.word	0xc0de983f
c0de7944:	da7a0000 	.word	0xda7a0000
c0de7948:	da7aa000 	.word	0xda7aa000

c0de794c <pic_internal>:
c0de794c:	467a      	mov	r2, pc
c0de794e:	4902      	ldr	r1, [pc, #8]	@ (c0de7958 <pic_internal+0xc>)
c0de7950:	1cc9      	adds	r1, r1, #3
c0de7952:	1a89      	subs	r1, r1, r2
c0de7954:	1a40      	subs	r0, r0, r1
c0de7956:	4770      	bx	lr
c0de7958:	c0de794d 	.word	0xc0de794d

c0de795c <SVC_Call>:
c0de795c:	df01      	svc	1
c0de795e:	2900      	cmp	r1, #0
c0de7960:	d100      	bne.n	c0de7964 <exception>
c0de7962:	4770      	bx	lr

c0de7964 <exception>:
c0de7964:	4608      	mov	r0, r1
c0de7966:	f7ff fe2e 	bl	c0de75c6 <os_longjmp>
	...

c0de796c <SVC_cx_call>:
c0de796c:	df01      	svc	1
c0de796e:	4770      	bx	lr

c0de7970 <nvm_write>:
c0de7970:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7972:	ab01      	add	r3, sp, #4
c0de7974:	c307      	stmia	r3!, {r0, r1, r2}
c0de7976:	4802      	ldr	r0, [pc, #8]	@ (c0de7980 <nvm_write+0x10>)
c0de7978:	a901      	add	r1, sp, #4
c0de797a:	f7ff ffef 	bl	c0de795c <SVC_Call>
c0de797e:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7980:	03000003 	.word	0x03000003

c0de7984 <cx_bn_lock>:
c0de7984:	b5e0      	push	{r5, r6, r7, lr}
c0de7986:	e9cd 0100 	strd	r0, r1, [sp]
c0de798a:	4802      	ldr	r0, [pc, #8]	@ (c0de7994 <cx_bn_lock+0x10>)
c0de798c:	4669      	mov	r1, sp
c0de798e:	f7ff ffed 	bl	c0de796c <SVC_cx_call>
c0de7992:	bd8c      	pop	{r2, r3, r7, pc}
c0de7994:	02000112 	.word	0x02000112

c0de7998 <cx_bn_unlock>:
c0de7998:	b5e0      	push	{r5, r6, r7, lr}
c0de799a:	2000      	movs	r0, #0
c0de799c:	4669      	mov	r1, sp
c0de799e:	9001      	str	r0, [sp, #4]
c0de79a0:	20b6      	movs	r0, #182	@ 0xb6
c0de79a2:	f7ff ffe3 	bl	c0de796c <SVC_cx_call>
c0de79a6:	bd8c      	pop	{r2, r3, r7, pc}

c0de79a8 <cx_bn_alloc>:
c0de79a8:	b5e0      	push	{r5, r6, r7, lr}
c0de79aa:	e9cd 0100 	strd	r0, r1, [sp]
c0de79ae:	4802      	ldr	r0, [pc, #8]	@ (c0de79b8 <cx_bn_alloc+0x10>)
c0de79b0:	4669      	mov	r1, sp
c0de79b2:	f7ff ffdb 	bl	c0de796c <SVC_cx_call>
c0de79b6:	bd8c      	pop	{r2, r3, r7, pc}
c0de79b8:	02000113 	.word	0x02000113

c0de79bc <cx_bn_alloc_init>:
c0de79bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79be:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de79c2:	4803      	ldr	r0, [pc, #12]	@ (c0de79d0 <cx_bn_alloc_init+0x14>)
c0de79c4:	4669      	mov	r1, sp
c0de79c6:	f7ff ffd1 	bl	c0de796c <SVC_cx_call>
c0de79ca:	b004      	add	sp, #16
c0de79cc:	bd80      	pop	{r7, pc}
c0de79ce:	bf00      	nop
c0de79d0:	04000114 	.word	0x04000114

c0de79d4 <cx_bn_destroy>:
c0de79d4:	b5e0      	push	{r5, r6, r7, lr}
c0de79d6:	f000 f9b5 	bl	c0de7d44 <OUTLINED_FUNCTION_0>
c0de79da:	4802      	ldr	r0, [pc, #8]	@ (c0de79e4 <cx_bn_destroy+0x10>)
c0de79dc:	4669      	mov	r1, sp
c0de79de:	f7ff ffc5 	bl	c0de796c <SVC_cx_call>
c0de79e2:	bd8c      	pop	{r2, r3, r7, pc}
c0de79e4:	010000bc 	.word	0x010000bc

c0de79e8 <cx_bn_nbytes>:
c0de79e8:	b5e0      	push	{r5, r6, r7, lr}
c0de79ea:	e9cd 0100 	strd	r0, r1, [sp]
c0de79ee:	4802      	ldr	r0, [pc, #8]	@ (c0de79f8 <cx_bn_nbytes+0x10>)
c0de79f0:	4669      	mov	r1, sp
c0de79f2:	f7ff ffbb 	bl	c0de796c <SVC_cx_call>
c0de79f6:	bd8c      	pop	{r2, r3, r7, pc}
c0de79f8:	0200010d 	.word	0x0200010d

c0de79fc <cx_bn_init>:
c0de79fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79fe:	ab01      	add	r3, sp, #4
c0de7a00:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a02:	4803      	ldr	r0, [pc, #12]	@ (c0de7a10 <cx_bn_init+0x14>)
c0de7a04:	a901      	add	r1, sp, #4
c0de7a06:	f7ff ffb1 	bl	c0de796c <SVC_cx_call>
c0de7a0a:	b004      	add	sp, #16
c0de7a0c:	bd80      	pop	{r7, pc}
c0de7a0e:	bf00      	nop
c0de7a10:	03000115 	.word	0x03000115

c0de7a14 <cx_bn_copy>:
c0de7a14:	b5e0      	push	{r5, r6, r7, lr}
c0de7a16:	e9cd 0100 	strd	r0, r1, [sp]
c0de7a1a:	4802      	ldr	r0, [pc, #8]	@ (c0de7a24 <cx_bn_copy+0x10>)
c0de7a1c:	4669      	mov	r1, sp
c0de7a1e:	f7ff ffa5 	bl	c0de796c <SVC_cx_call>
c0de7a22:	bd8c      	pop	{r2, r3, r7, pc}
c0de7a24:	020000c0 	.word	0x020000c0

c0de7a28 <cx_bn_set_u32>:
c0de7a28:	b5e0      	push	{r5, r6, r7, lr}
c0de7a2a:	e9cd 0100 	strd	r0, r1, [sp]
c0de7a2e:	4802      	ldr	r0, [pc, #8]	@ (c0de7a38 <cx_bn_set_u32+0x10>)
c0de7a30:	4669      	mov	r1, sp
c0de7a32:	f7ff ff9b 	bl	c0de796c <SVC_cx_call>
c0de7a36:	bd8c      	pop	{r2, r3, r7, pc}
c0de7a38:	020000c1 	.word	0x020000c1

c0de7a3c <cx_bn_export>:
c0de7a3c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a3e:	ab01      	add	r3, sp, #4
c0de7a40:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a42:	4803      	ldr	r0, [pc, #12]	@ (c0de7a50 <cx_bn_export+0x14>)
c0de7a44:	a901      	add	r1, sp, #4
c0de7a46:	f7ff ff91 	bl	c0de796c <SVC_cx_call>
c0de7a4a:	b004      	add	sp, #16
c0de7a4c:	bd80      	pop	{r7, pc}
c0de7a4e:	bf00      	nop
c0de7a50:	030000c3 	.word	0x030000c3

c0de7a54 <cx_bn_cmp>:
c0de7a54:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a56:	ab01      	add	r3, sp, #4
c0de7a58:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a5a:	4803      	ldr	r0, [pc, #12]	@ (c0de7a68 <cx_bn_cmp+0x14>)
c0de7a5c:	a901      	add	r1, sp, #4
c0de7a5e:	f7ff ff85 	bl	c0de796c <SVC_cx_call>
c0de7a62:	b004      	add	sp, #16
c0de7a64:	bd80      	pop	{r7, pc}
c0de7a66:	bf00      	nop
c0de7a68:	030000c4 	.word	0x030000c4

c0de7a6c <cx_bn_cmp_u32>:
c0de7a6c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a6e:	ab01      	add	r3, sp, #4
c0de7a70:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a72:	4803      	ldr	r0, [pc, #12]	@ (c0de7a80 <cx_bn_cmp_u32+0x14>)
c0de7a74:	a901      	add	r1, sp, #4
c0de7a76:	f7ff ff79 	bl	c0de796c <SVC_cx_call>
c0de7a7a:	b004      	add	sp, #16
c0de7a7c:	bd80      	pop	{r7, pc}
c0de7a7e:	bf00      	nop
c0de7a80:	030000c5 	.word	0x030000c5

c0de7a84 <cx_bn_tst_bit>:
c0de7a84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a86:	ab01      	add	r3, sp, #4
c0de7a88:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a8a:	4803      	ldr	r0, [pc, #12]	@ (c0de7a98 <cx_bn_tst_bit+0x14>)
c0de7a8c:	a901      	add	r1, sp, #4
c0de7a8e:	f7ff ff6d 	bl	c0de796c <SVC_cx_call>
c0de7a92:	b004      	add	sp, #16
c0de7a94:	bd80      	pop	{r7, pc}
c0de7a96:	bf00      	nop
c0de7a98:	030000cb 	.word	0x030000cb

c0de7a9c <cx_bn_mod_add>:
c0de7a9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a9e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7aa2:	4803      	ldr	r0, [pc, #12]	@ (c0de7ab0 <cx_bn_mod_add+0x14>)
c0de7aa4:	4669      	mov	r1, sp
c0de7aa6:	f7ff ff61 	bl	c0de796c <SVC_cx_call>
c0de7aaa:	b004      	add	sp, #16
c0de7aac:	bd80      	pop	{r7, pc}
c0de7aae:	bf00      	nop
c0de7ab0:	040000d3 	.word	0x040000d3

c0de7ab4 <cx_bn_mod_sub>:
c0de7ab4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7ab6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7aba:	4803      	ldr	r0, [pc, #12]	@ (c0de7ac8 <cx_bn_mod_sub+0x14>)
c0de7abc:	4669      	mov	r1, sp
c0de7abe:	f7ff ff55 	bl	c0de796c <SVC_cx_call>
c0de7ac2:	b004      	add	sp, #16
c0de7ac4:	bd80      	pop	{r7, pc}
c0de7ac6:	bf00      	nop
c0de7ac8:	040000d4 	.word	0x040000d4

c0de7acc <cx_bn_mod_mul>:
c0de7acc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7ace:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7ad2:	4803      	ldr	r0, [pc, #12]	@ (c0de7ae0 <cx_bn_mod_mul+0x14>)
c0de7ad4:	4669      	mov	r1, sp
c0de7ad6:	f7ff ff49 	bl	c0de796c <SVC_cx_call>
c0de7ada:	b004      	add	sp, #16
c0de7adc:	bd80      	pop	{r7, pc}
c0de7ade:	bf00      	nop
c0de7ae0:	040000d5 	.word	0x040000d5

c0de7ae4 <cx_bn_reduce>:
c0de7ae4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7ae6:	ab01      	add	r3, sp, #4
c0de7ae8:	c307      	stmia	r3!, {r0, r1, r2}
c0de7aea:	4803      	ldr	r0, [pc, #12]	@ (c0de7af8 <cx_bn_reduce+0x14>)
c0de7aec:	a901      	add	r1, sp, #4
c0de7aee:	f7ff ff3d 	bl	c0de796c <SVC_cx_call>
c0de7af2:	b004      	add	sp, #16
c0de7af4:	bd80      	pop	{r7, pc}
c0de7af6:	bf00      	nop
c0de7af8:	030000d6 	.word	0x030000d6

c0de7afc <cx_bn_mod_invert_nprime>:
c0de7afc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7afe:	ab01      	add	r3, sp, #4
c0de7b00:	c307      	stmia	r3!, {r0, r1, r2}
c0de7b02:	4803      	ldr	r0, [pc, #12]	@ (c0de7b10 <cx_bn_mod_invert_nprime+0x14>)
c0de7b04:	a901      	add	r1, sp, #4
c0de7b06:	f7ff ff31 	bl	c0de796c <SVC_cx_call>
c0de7b0a:	b004      	add	sp, #16
c0de7b0c:	bd80      	pop	{r7, pc}
c0de7b0e:	bf00      	nop
c0de7b10:	030000da 	.word	0x030000da

c0de7b14 <cx_bn_is_prime>:
c0de7b14:	b5e0      	push	{r5, r6, r7, lr}
c0de7b16:	e9cd 0100 	strd	r0, r1, [sp]
c0de7b1a:	4802      	ldr	r0, [pc, #8]	@ (c0de7b24 <cx_bn_is_prime+0x10>)
c0de7b1c:	4669      	mov	r1, sp
c0de7b1e:	f7ff ff25 	bl	c0de796c <SVC_cx_call>
c0de7b22:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b24:	020000ef 	.word	0x020000ef

c0de7b28 <cx_mont_alloc>:
c0de7b28:	b5e0      	push	{r5, r6, r7, lr}
c0de7b2a:	e9cd 0100 	strd	r0, r1, [sp]
c0de7b2e:	4802      	ldr	r0, [pc, #8]	@ (c0de7b38 <cx_mont_alloc+0x10>)
c0de7b30:	4669      	mov	r1, sp
c0de7b32:	f7ff ff1b 	bl	c0de796c <SVC_cx_call>
c0de7b36:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b38:	020000dc 	.word	0x020000dc

c0de7b3c <cx_mont_init>:
c0de7b3c:	b5e0      	push	{r5, r6, r7, lr}
c0de7b3e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7b42:	4802      	ldr	r0, [pc, #8]	@ (c0de7b4c <cx_mont_init+0x10>)
c0de7b44:	4669      	mov	r1, sp
c0de7b46:	f7ff ff11 	bl	c0de796c <SVC_cx_call>
c0de7b4a:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b4c:	020000dd 	.word	0x020000dd

c0de7b50 <cx_mont_to_montgomery>:
c0de7b50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b52:	ab01      	add	r3, sp, #4
c0de7b54:	c307      	stmia	r3!, {r0, r1, r2}
c0de7b56:	4803      	ldr	r0, [pc, #12]	@ (c0de7b64 <cx_mont_to_montgomery+0x14>)
c0de7b58:	a901      	add	r1, sp, #4
c0de7b5a:	f7ff ff07 	bl	c0de796c <SVC_cx_call>
c0de7b5e:	b004      	add	sp, #16
c0de7b60:	bd80      	pop	{r7, pc}
c0de7b62:	bf00      	nop
c0de7b64:	030000df 	.word	0x030000df

c0de7b68 <cx_mont_from_montgomery>:
c0de7b68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b6a:	ab01      	add	r3, sp, #4
c0de7b6c:	c307      	stmia	r3!, {r0, r1, r2}
c0de7b6e:	4803      	ldr	r0, [pc, #12]	@ (c0de7b7c <cx_mont_from_montgomery+0x14>)
c0de7b70:	a901      	add	r1, sp, #4
c0de7b72:	f7ff fefb 	bl	c0de796c <SVC_cx_call>
c0de7b76:	b004      	add	sp, #16
c0de7b78:	bd80      	pop	{r7, pc}
c0de7b7a:	bf00      	nop
c0de7b7c:	030000e0 	.word	0x030000e0

c0de7b80 <cx_mont_mul>:
c0de7b80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b82:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7b86:	4803      	ldr	r0, [pc, #12]	@ (c0de7b94 <cx_mont_mul+0x14>)
c0de7b88:	4669      	mov	r1, sp
c0de7b8a:	f7ff feef 	bl	c0de796c <SVC_cx_call>
c0de7b8e:	b004      	add	sp, #16
c0de7b90:	bd80      	pop	{r7, pc}
c0de7b92:	bf00      	nop
c0de7b94:	040000e1 	.word	0x040000e1

c0de7b98 <cx_mont_pow>:
c0de7b98:	b510      	push	{r4, lr}
c0de7b9a:	b086      	sub	sp, #24
c0de7b9c:	f10d 0c04 	add.w	ip, sp, #4
c0de7ba0:	9c08      	ldr	r4, [sp, #32]
c0de7ba2:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de7ba6:	4803      	ldr	r0, [pc, #12]	@ (c0de7bb4 <cx_mont_pow+0x1c>)
c0de7ba8:	a901      	add	r1, sp, #4
c0de7baa:	f7ff fedf 	bl	c0de796c <SVC_cx_call>
c0de7bae:	b006      	add	sp, #24
c0de7bb0:	bd10      	pop	{r4, pc}
c0de7bb2:	bf00      	nop
c0de7bb4:	050000e2 	.word	0x050000e2

c0de7bb8 <cx_mont_invert_nprime>:
c0de7bb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7bba:	ab01      	add	r3, sp, #4
c0de7bbc:	c307      	stmia	r3!, {r0, r1, r2}
c0de7bbe:	4803      	ldr	r0, [pc, #12]	@ (c0de7bcc <cx_mont_invert_nprime+0x14>)
c0de7bc0:	a901      	add	r1, sp, #4
c0de7bc2:	f7ff fed3 	bl	c0de796c <SVC_cx_call>
c0de7bc6:	b004      	add	sp, #16
c0de7bc8:	bd80      	pop	{r7, pc}
c0de7bca:	bf00      	nop
c0de7bcc:	030000e4 	.word	0x030000e4

c0de7bd0 <cx_ecdomain_parameters_length>:
c0de7bd0:	b5e0      	push	{r5, r6, r7, lr}
c0de7bd2:	e9cd 0100 	strd	r0, r1, [sp]
c0de7bd6:	4802      	ldr	r0, [pc, #8]	@ (c0de7be0 <cx_ecdomain_parameters_length+0x10>)
c0de7bd8:	4669      	mov	r1, sp
c0de7bda:	f7ff fec7 	bl	c0de796c <SVC_cx_call>
c0de7bde:	bd8c      	pop	{r2, r3, r7, pc}
c0de7be0:	0200012f 	.word	0x0200012f

c0de7be4 <os_perso_derive_node_with_seed_key>:
c0de7be4:	b510      	push	{r4, lr}
c0de7be6:	b088      	sub	sp, #32
c0de7be8:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7bea:	9407      	str	r4, [sp, #28]
c0de7bec:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7bee:	9406      	str	r4, [sp, #24]
c0de7bf0:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de7bf2:	9405      	str	r4, [sp, #20]
c0de7bf4:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de7bf6:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7bfa:	4803      	ldr	r0, [pc, #12]	@ (c0de7c08 <os_perso_derive_node_with_seed_key+0x24>)
c0de7bfc:	4669      	mov	r1, sp
c0de7bfe:	f7ff fead 	bl	c0de795c <SVC_Call>
c0de7c02:	b008      	add	sp, #32
c0de7c04:	bd10      	pop	{r4, pc}
c0de7c06:	bf00      	nop
c0de7c08:	080000a6 	.word	0x080000a6

c0de7c0c <os_pki_load_certificate>:
c0de7c0c:	b510      	push	{r4, lr}
c0de7c0e:	b086      	sub	sp, #24
c0de7c10:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de7c12:	9405      	str	r4, [sp, #20]
c0de7c14:	9c08      	ldr	r4, [sp, #32]
c0de7c16:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7c1a:	4803      	ldr	r0, [pc, #12]	@ (c0de7c28 <os_pki_load_certificate+0x1c>)
c0de7c1c:	4669      	mov	r1, sp
c0de7c1e:	f7ff fe9d 	bl	c0de795c <SVC_Call>
c0de7c22:	b006      	add	sp, #24
c0de7c24:	bd10      	pop	{r4, pc}
c0de7c26:	bf00      	nop
c0de7c28:	060000aa 	.word	0x060000aa

c0de7c2c <os_perso_is_pin_set>:
c0de7c2c:	b5e0      	push	{r5, r6, r7, lr}
c0de7c2e:	2000      	movs	r0, #0
c0de7c30:	4669      	mov	r1, sp
c0de7c32:	9001      	str	r0, [sp, #4]
c0de7c34:	209e      	movs	r0, #158	@ 0x9e
c0de7c36:	f7ff fe91 	bl	c0de795c <SVC_Call>
c0de7c3a:	b2c0      	uxtb	r0, r0
c0de7c3c:	bd8c      	pop	{r2, r3, r7, pc}

c0de7c3e <os_global_pin_is_validated>:
c0de7c3e:	b5e0      	push	{r5, r6, r7, lr}
c0de7c40:	2000      	movs	r0, #0
c0de7c42:	4669      	mov	r1, sp
c0de7c44:	9001      	str	r0, [sp, #4]
c0de7c46:	20a0      	movs	r0, #160	@ 0xa0
c0de7c48:	f7ff fe88 	bl	c0de795c <SVC_Call>
c0de7c4c:	b2c0      	uxtb	r0, r0
c0de7c4e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7c50 <os_ux>:
c0de7c50:	b5e0      	push	{r5, r6, r7, lr}
c0de7c52:	f000 f877 	bl	c0de7d44 <OUTLINED_FUNCTION_0>
c0de7c56:	4802      	ldr	r0, [pc, #8]	@ (c0de7c60 <os_ux+0x10>)
c0de7c58:	4669      	mov	r1, sp
c0de7c5a:	f7ff fe7f 	bl	c0de795c <SVC_Call>
c0de7c5e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7c60:	01000064 	.word	0x01000064

c0de7c64 <os_lib_end>:
c0de7c64:	b082      	sub	sp, #8
c0de7c66:	2000      	movs	r0, #0
c0de7c68:	4669      	mov	r1, sp
c0de7c6a:	9001      	str	r0, [sp, #4]
c0de7c6c:	2068      	movs	r0, #104	@ 0x68
c0de7c6e:	f7ff fe75 	bl	c0de795c <SVC_Call>
c0de7c72:	deff      	udf	#255	@ 0xff

c0de7c74 <os_flags>:
c0de7c74:	b5e0      	push	{r5, r6, r7, lr}
c0de7c76:	2000      	movs	r0, #0
c0de7c78:	4669      	mov	r1, sp
c0de7c7a:	9001      	str	r0, [sp, #4]
c0de7c7c:	206a      	movs	r0, #106	@ 0x6a
c0de7c7e:	f7ff fe6d 	bl	c0de795c <SVC_Call>
c0de7c82:	bd8c      	pop	{r2, r3, r7, pc}

c0de7c84 <os_registry_get_current_app_tag>:
c0de7c84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7c86:	ab01      	add	r3, sp, #4
c0de7c88:	c307      	stmia	r3!, {r0, r1, r2}
c0de7c8a:	4803      	ldr	r0, [pc, #12]	@ (c0de7c98 <os_registry_get_current_app_tag+0x14>)
c0de7c8c:	a901      	add	r1, sp, #4
c0de7c8e:	f7ff fe65 	bl	c0de795c <SVC_Call>
c0de7c92:	b004      	add	sp, #16
c0de7c94:	bd80      	pop	{r7, pc}
c0de7c96:	bf00      	nop
c0de7c98:	03000074 	.word	0x03000074

c0de7c9c <os_sched_exit>:
c0de7c9c:	b082      	sub	sp, #8
c0de7c9e:	f000 f851 	bl	c0de7d44 <OUTLINED_FUNCTION_0>
c0de7ca2:	4802      	ldr	r0, [pc, #8]	@ (c0de7cac <os_sched_exit+0x10>)
c0de7ca4:	4669      	mov	r1, sp
c0de7ca6:	f7ff fe59 	bl	c0de795c <SVC_Call>
c0de7caa:	deff      	udf	#255	@ 0xff
c0de7cac:	0100009a 	.word	0x0100009a

c0de7cb0 <os_io_init>:
c0de7cb0:	b5e0      	push	{r5, r6, r7, lr}
c0de7cb2:	9001      	str	r0, [sp, #4]
c0de7cb4:	4802      	ldr	r0, [pc, #8]	@ (c0de7cc0 <os_io_init+0x10>)
c0de7cb6:	a901      	add	r1, sp, #4
c0de7cb8:	f7ff fe50 	bl	c0de795c <SVC_Call>
c0de7cbc:	bd8c      	pop	{r2, r3, r7, pc}
c0de7cbe:	bf00      	nop
c0de7cc0:	01000084 	.word	0x01000084

c0de7cc4 <os_io_start>:
c0de7cc4:	b5e0      	push	{r5, r6, r7, lr}
c0de7cc6:	2000      	movs	r0, #0
c0de7cc8:	4669      	mov	r1, sp
c0de7cca:	9001      	str	r0, [sp, #4]
c0de7ccc:	4801      	ldr	r0, [pc, #4]	@ (c0de7cd4 <os_io_start+0x10>)
c0de7cce:	f7ff fe45 	bl	c0de795c <SVC_Call>
c0de7cd2:	bd8c      	pop	{r2, r3, r7, pc}
c0de7cd4:	01000085 	.word	0x01000085

c0de7cd8 <os_io_tx_cmd>:
c0de7cd8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7cda:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7cde:	4803      	ldr	r0, [pc, #12]	@ (c0de7cec <os_io_tx_cmd+0x14>)
c0de7ce0:	4669      	mov	r1, sp
c0de7ce2:	f7ff fe3b 	bl	c0de795c <SVC_Call>
c0de7ce6:	b004      	add	sp, #16
c0de7ce8:	bd80      	pop	{r7, pc}
c0de7cea:	bf00      	nop
c0de7cec:	04000088 	.word	0x04000088

c0de7cf0 <os_io_rx_evt>:
c0de7cf0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7cf2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7cf6:	4803      	ldr	r0, [pc, #12]	@ (c0de7d04 <os_io_rx_evt+0x14>)
c0de7cf8:	4669      	mov	r1, sp
c0de7cfa:	f7ff fe2f 	bl	c0de795c <SVC_Call>
c0de7cfe:	b004      	add	sp, #16
c0de7d00:	bd80      	pop	{r7, pc}
c0de7d02:	bf00      	nop
c0de7d04:	03000089 	.word	0x03000089

c0de7d08 <try_context_get>:
c0de7d08:	b5e0      	push	{r5, r6, r7, lr}
c0de7d0a:	2000      	movs	r0, #0
c0de7d0c:	4669      	mov	r1, sp
c0de7d0e:	9001      	str	r0, [sp, #4]
c0de7d10:	2087      	movs	r0, #135	@ 0x87
c0de7d12:	f7ff fe23 	bl	c0de795c <SVC_Call>
c0de7d16:	bd8c      	pop	{r2, r3, r7, pc}

c0de7d18 <try_context_set>:
c0de7d18:	b5e0      	push	{r5, r6, r7, lr}
c0de7d1a:	f000 f813 	bl	c0de7d44 <OUTLINED_FUNCTION_0>
c0de7d1e:	4802      	ldr	r0, [pc, #8]	@ (c0de7d28 <try_context_set+0x10>)
c0de7d20:	4669      	mov	r1, sp
c0de7d22:	f7ff fe1b 	bl	c0de795c <SVC_Call>
c0de7d26:	bd8c      	pop	{r2, r3, r7, pc}
c0de7d28:	0100010b 	.word	0x0100010b

c0de7d2c <os_sched_last_status>:
c0de7d2c:	b5e0      	push	{r5, r6, r7, lr}
c0de7d2e:	f000 f809 	bl	c0de7d44 <OUTLINED_FUNCTION_0>
c0de7d32:	4803      	ldr	r0, [pc, #12]	@ (c0de7d40 <os_sched_last_status+0x14>)
c0de7d34:	4669      	mov	r1, sp
c0de7d36:	f7ff fe11 	bl	c0de795c <SVC_Call>
c0de7d3a:	b2c0      	uxtb	r0, r0
c0de7d3c:	bd8c      	pop	{r2, r3, r7, pc}
c0de7d3e:	bf00      	nop
c0de7d40:	0100009c 	.word	0x0100009c

c0de7d44 <OUTLINED_FUNCTION_0>:
c0de7d44:	2100      	movs	r1, #0
c0de7d46:	e9cd 0100 	strd	r0, r1, [sp]
c0de7d4a:	4770      	bx	lr

c0de7d4c <__udivmoddi4>:
c0de7d4c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7d50:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de7d54:	4604      	mov	r4, r0
c0de7d56:	b179      	cbz	r1, c0de7d78 <__udivmoddi4+0x2c>
c0de7d58:	b1ba      	cbz	r2, c0de7d8a <__udivmoddi4+0x3e>
c0de7d5a:	b35b      	cbz	r3, c0de7db4 <__udivmoddi4+0x68>
c0de7d5c:	fab1 f581 	clz	r5, r1
c0de7d60:	fab3 f683 	clz	r6, r3
c0de7d64:	1b75      	subs	r5, r6, r5
c0de7d66:	2d20      	cmp	r5, #32
c0de7d68:	d34a      	bcc.n	c0de7e00 <__udivmoddi4+0xb4>
c0de7d6a:	f1bc 0f00 	cmp.w	ip, #0
c0de7d6e:	bf18      	it	ne
c0de7d70:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7d74:	2400      	movs	r4, #0
c0de7d76:	e066      	b.n	c0de7e46 <__udivmoddi4+0xfa>
c0de7d78:	b3cb      	cbz	r3, c0de7dee <__udivmoddi4+0xa2>
c0de7d7a:	2100      	movs	r1, #0
c0de7d7c:	f1bc 0f00 	cmp.w	ip, #0
c0de7d80:	bf18      	it	ne
c0de7d82:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7d86:	2400      	movs	r4, #0
c0de7d88:	e0a6      	b.n	c0de7ed8 <__udivmoddi4+0x18c>
c0de7d8a:	2b00      	cmp	r3, #0
c0de7d8c:	d03e      	beq.n	c0de7e0c <__udivmoddi4+0xc0>
c0de7d8e:	2800      	cmp	r0, #0
c0de7d90:	d04f      	beq.n	c0de7e32 <__udivmoddi4+0xe6>
c0de7d92:	1e5d      	subs	r5, r3, #1
c0de7d94:	422b      	tst	r3, r5
c0de7d96:	d158      	bne.n	c0de7e4a <__udivmoddi4+0xfe>
c0de7d98:	f1bc 0f00 	cmp.w	ip, #0
c0de7d9c:	bf1c      	itt	ne
c0de7d9e:	ea05 0001 	andne.w	r0, r5, r1
c0de7da2:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7da6:	fa93 f0a3 	rbit	r0, r3
c0de7daa:	fab0 f080 	clz	r0, r0
c0de7dae:	fa21 f400 	lsr.w	r4, r1, r0
c0de7db2:	e048      	b.n	c0de7e46 <__udivmoddi4+0xfa>
c0de7db4:	1e55      	subs	r5, r2, #1
c0de7db6:	422a      	tst	r2, r5
c0de7db8:	d129      	bne.n	c0de7e0e <__udivmoddi4+0xc2>
c0de7dba:	f1bc 0f00 	cmp.w	ip, #0
c0de7dbe:	bf1e      	ittt	ne
c0de7dc0:	2300      	movne	r3, #0
c0de7dc2:	4005      	andne	r5, r0
c0de7dc4:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7dc8:	2a01      	cmp	r2, #1
c0de7dca:	f000 8085 	beq.w	c0de7ed8 <__udivmoddi4+0x18c>
c0de7dce:	fa92 f2a2 	rbit	r2, r2
c0de7dd2:	004c      	lsls	r4, r1, #1
c0de7dd4:	fab2 f282 	clz	r2, r2
c0de7dd8:	f002 031f 	and.w	r3, r2, #31
c0de7ddc:	40d1      	lsrs	r1, r2
c0de7dde:	40d8      	lsrs	r0, r3
c0de7de0:	231f      	movs	r3, #31
c0de7de2:	4393      	bics	r3, r2
c0de7de4:	fa04 f303 	lsl.w	r3, r4, r3
c0de7de8:	ea43 0400 	orr.w	r4, r3, r0
c0de7dec:	e074      	b.n	c0de7ed8 <__udivmoddi4+0x18c>
c0de7dee:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7df2:	f1bc 0f00 	cmp.w	ip, #0
c0de7df6:	d026      	beq.n	c0de7e46 <__udivmoddi4+0xfa>
c0de7df8:	fb04 0012 	mls	r0, r4, r2, r0
c0de7dfc:	2100      	movs	r1, #0
c0de7dfe:	e020      	b.n	c0de7e42 <__udivmoddi4+0xf6>
c0de7e00:	f105 0e01 	add.w	lr, r5, #1
c0de7e04:	f1be 0f20 	cmp.w	lr, #32
c0de7e08:	d00b      	beq.n	c0de7e22 <__udivmoddi4+0xd6>
c0de7e0a:	e028      	b.n	c0de7e5e <__udivmoddi4+0x112>
c0de7e0c:	e064      	b.n	c0de7ed8 <__udivmoddi4+0x18c>
c0de7e0e:	fab1 f481 	clz	r4, r1
c0de7e12:	fab2 f582 	clz	r5, r2
c0de7e16:	1b2c      	subs	r4, r5, r4
c0de7e18:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7e1c:	f1be 0f20 	cmp.w	lr, #32
c0de7e20:	d15d      	bne.n	c0de7ede <__udivmoddi4+0x192>
c0de7e22:	f04f 0e20 	mov.w	lr, #32
c0de7e26:	f04f 0a00 	mov.w	sl, #0
c0de7e2a:	f04f 0b00 	mov.w	fp, #0
c0de7e2e:	460e      	mov	r6, r1
c0de7e30:	e021      	b.n	c0de7e76 <__udivmoddi4+0x12a>
c0de7e32:	fbb1 f4f3 	udiv	r4, r1, r3
c0de7e36:	f1bc 0f00 	cmp.w	ip, #0
c0de7e3a:	d004      	beq.n	c0de7e46 <__udivmoddi4+0xfa>
c0de7e3c:	2000      	movs	r0, #0
c0de7e3e:	fb04 1113 	mls	r1, r4, r3, r1
c0de7e42:	e9cc 0100 	strd	r0, r1, [ip]
c0de7e46:	2100      	movs	r1, #0
c0de7e48:	e046      	b.n	c0de7ed8 <__udivmoddi4+0x18c>
c0de7e4a:	fab1 f581 	clz	r5, r1
c0de7e4e:	fab3 f683 	clz	r6, r3
c0de7e52:	1b75      	subs	r5, r6, r5
c0de7e54:	2d1f      	cmp	r5, #31
c0de7e56:	f4bf af88 	bcs.w	c0de7d6a <__udivmoddi4+0x1e>
c0de7e5a:	f105 0e01 	add.w	lr, r5, #1
c0de7e5e:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7e62:	f1c5 051f 	rsb	r5, r5, #31
c0de7e66:	fa01 f605 	lsl.w	r6, r1, r5
c0de7e6a:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de7e6e:	40a8      	lsls	r0, r5
c0de7e70:	f04f 0a00 	mov.w	sl, #0
c0de7e74:	4326      	orrs	r6, r4
c0de7e76:	f04f 0800 	mov.w	r8, #0
c0de7e7a:	f1be 0f00 	cmp.w	lr, #0
c0de7e7e:	d01c      	beq.n	c0de7eba <__udivmoddi4+0x16e>
c0de7e80:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7e84:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7e88:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de7e8c:	0076      	lsls	r6, r6, #1
c0de7e8e:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7e92:	1aae      	subs	r6, r5, r2
c0de7e94:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7e98:	43cf      	mvns	r7, r1
c0de7e9a:	43ec      	mvns	r4, r5
c0de7e9c:	18a4      	adds	r4, r4, r2
c0de7e9e:	eb57 0403 	adcs.w	r4, r7, r3
c0de7ea2:	bf5c      	itt	pl
c0de7ea4:	468b      	movpl	fp, r1
c0de7ea6:	462e      	movpl	r6, r5
c0de7ea8:	0040      	lsls	r0, r0, #1
c0de7eaa:	0fe1      	lsrs	r1, r4, #31
c0de7eac:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7eb0:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7eb4:	46a2      	mov	sl, r4
c0de7eb6:	4688      	mov	r8, r1
c0de7eb8:	e7df      	b.n	c0de7e7a <__udivmoddi4+0x12e>
c0de7eba:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7ebe:	f1bc 0f00 	cmp.w	ip, #0
c0de7ec2:	bf18      	it	ne
c0de7ec4:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7ec8:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7ecc:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7ed0:	f020 0001 	bic.w	r0, r0, #1
c0de7ed4:	ea40 0408 	orr.w	r4, r0, r8
c0de7ed8:	4620      	mov	r0, r4
c0de7eda:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7ede:	f1be 0f1f 	cmp.w	lr, #31
c0de7ee2:	d804      	bhi.n	c0de7eee <__udivmoddi4+0x1a2>
c0de7ee4:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7ee8:	f1ce 0520 	rsb	r5, lr, #32
c0de7eec:	e7bb      	b.n	c0de7e66 <__udivmoddi4+0x11a>
c0de7eee:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7ef2:	f1ae 0420 	sub.w	r4, lr, #32
c0de7ef6:	f04f 0b00 	mov.w	fp, #0
c0de7efa:	fa20 f504 	lsr.w	r5, r0, r4
c0de7efe:	fa01 f607 	lsl.w	r6, r1, r7
c0de7f02:	fa00 fa07 	lsl.w	sl, r0, r7
c0de7f06:	ea46 0805 	orr.w	r8, r6, r5
c0de7f0a:	fa21 f604 	lsr.w	r6, r1, r4
c0de7f0e:	4640      	mov	r0, r8
c0de7f10:	e7b1      	b.n	c0de7e76 <__udivmoddi4+0x12a>
	...

c0de7f14 <__aeabi_memcpy>:
c0de7f14:	f000 b81c 	b.w	c0de7f50 <memcpy>

c0de7f18 <__aeabi_memmove>:
c0de7f18:	f000 b828 	b.w	c0de7f6c <memmove>

c0de7f1c <__aeabi_memset>:
c0de7f1c:	460b      	mov	r3, r1
c0de7f1e:	4611      	mov	r1, r2
c0de7f20:	461a      	mov	r2, r3
c0de7f22:	f000 b83d 	b.w	c0de7fa0 <memset>
c0de7f26:	bf00      	nop

c0de7f28 <__aeabi_memclr>:
c0de7f28:	460a      	mov	r2, r1
c0de7f2a:	2100      	movs	r1, #0
c0de7f2c:	f000 b838 	b.w	c0de7fa0 <memset>

c0de7f30 <__aeabi_uldivmod>:
c0de7f30:	b540      	push	{r6, lr}
c0de7f32:	b084      	sub	sp, #16
c0de7f34:	ae02      	add	r6, sp, #8
c0de7f36:	9600      	str	r6, [sp, #0]
c0de7f38:	f7ff ff08 	bl	c0de7d4c <__udivmoddi4>
c0de7f3c:	9a02      	ldr	r2, [sp, #8]
c0de7f3e:	9b03      	ldr	r3, [sp, #12]
c0de7f40:	b004      	add	sp, #16
c0de7f42:	bd40      	pop	{r6, pc}

c0de7f44 <explicit_bzero>:
c0de7f44:	f000 b800 	b.w	c0de7f48 <bzero>

c0de7f48 <bzero>:
c0de7f48:	460a      	mov	r2, r1
c0de7f4a:	2100      	movs	r1, #0
c0de7f4c:	f000 b828 	b.w	c0de7fa0 <memset>

c0de7f50 <memcpy>:
c0de7f50:	440a      	add	r2, r1
c0de7f52:	4291      	cmp	r1, r2
c0de7f54:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de7f58:	d100      	bne.n	c0de7f5c <memcpy+0xc>
c0de7f5a:	4770      	bx	lr
c0de7f5c:	b510      	push	{r4, lr}
c0de7f5e:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7f62:	4291      	cmp	r1, r2
c0de7f64:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7f68:	d1f9      	bne.n	c0de7f5e <memcpy+0xe>
c0de7f6a:	bd10      	pop	{r4, pc}

c0de7f6c <memmove>:
c0de7f6c:	4288      	cmp	r0, r1
c0de7f6e:	b510      	push	{r4, lr}
c0de7f70:	eb01 0402 	add.w	r4, r1, r2
c0de7f74:	d902      	bls.n	c0de7f7c <memmove+0x10>
c0de7f76:	4284      	cmp	r4, r0
c0de7f78:	4623      	mov	r3, r4
c0de7f7a:	d807      	bhi.n	c0de7f8c <memmove+0x20>
c0de7f7c:	1e43      	subs	r3, r0, #1
c0de7f7e:	42a1      	cmp	r1, r4
c0de7f80:	d008      	beq.n	c0de7f94 <memmove+0x28>
c0de7f82:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7f86:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de7f8a:	e7f8      	b.n	c0de7f7e <memmove+0x12>
c0de7f8c:	4601      	mov	r1, r0
c0de7f8e:	4402      	add	r2, r0
c0de7f90:	428a      	cmp	r2, r1
c0de7f92:	d100      	bne.n	c0de7f96 <memmove+0x2a>
c0de7f94:	bd10      	pop	{r4, pc}
c0de7f96:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de7f9a:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7f9e:	e7f7      	b.n	c0de7f90 <memmove+0x24>

c0de7fa0 <memset>:
c0de7fa0:	4603      	mov	r3, r0
c0de7fa2:	4402      	add	r2, r0
c0de7fa4:	4293      	cmp	r3, r2
c0de7fa6:	d100      	bne.n	c0de7faa <memset+0xa>
c0de7fa8:	4770      	bx	lr
c0de7faa:	f803 1b01 	strb.w	r1, [r3], #1
c0de7fae:	e7f9      	b.n	c0de7fa4 <memset+0x4>

c0de7fb0 <setjmp>:
c0de7fb0:	46ec      	mov	ip, sp
c0de7fb2:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7fb6:	f04f 0000 	mov.w	r0, #0
c0de7fba:	4770      	bx	lr

c0de7fbc <longjmp>:
c0de7fbc:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7fc0:	46e5      	mov	sp, ip
c0de7fc2:	0008      	movs	r0, r1
c0de7fc4:	bf08      	it	eq
c0de7fc6:	2001      	moveq	r0, #1
c0de7fc8:	4770      	bx	lr
c0de7fca:	bf00      	nop

c0de7fcc <strcmp>:
c0de7fcc:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7fd0:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7fd4:	2a01      	cmp	r2, #1
c0de7fd6:	bf28      	it	cs
c0de7fd8:	429a      	cmpcs	r2, r3
c0de7fda:	d0f7      	beq.n	c0de7fcc <strcmp>
c0de7fdc:	1ad0      	subs	r0, r2, r3
c0de7fde:	4770      	bx	lr

c0de7fe0 <strlen>:
c0de7fe0:	4603      	mov	r3, r0
c0de7fe2:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de7fe6:	2a00      	cmp	r2, #0
c0de7fe8:	d1fb      	bne.n	c0de7fe2 <strlen+0x2>
c0de7fea:	1a18      	subs	r0, r3, r0
c0de7fec:	3801      	subs	r0, #1
c0de7fee:	4770      	bx	lr

c0de7ff0 <strncmp>:
c0de7ff0:	b510      	push	{r4, lr}
c0de7ff2:	b16a      	cbz	r2, c0de8010 <strncmp+0x20>
c0de7ff4:	3901      	subs	r1, #1
c0de7ff6:	1884      	adds	r4, r0, r2
c0de7ff8:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7ffc:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de8000:	429a      	cmp	r2, r3
c0de8002:	d103      	bne.n	c0de800c <strncmp+0x1c>
c0de8004:	42a0      	cmp	r0, r4
c0de8006:	d001      	beq.n	c0de800c <strncmp+0x1c>
c0de8008:	2a00      	cmp	r2, #0
c0de800a:	d1f5      	bne.n	c0de7ff8 <strncmp+0x8>
c0de800c:	1ad0      	subs	r0, r2, r3
c0de800e:	bd10      	pop	{r4, pc}
c0de8010:	4610      	mov	r0, r2
c0de8012:	e7fc      	b.n	c0de800e <strncmp+0x1e>

c0de8014 <strncpy>:
c0de8014:	4603      	mov	r3, r0
c0de8016:	b510      	push	{r4, lr}
c0de8018:	3901      	subs	r1, #1
c0de801a:	b132      	cbz	r2, c0de802a <strncpy+0x16>
c0de801c:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de8020:	3a01      	subs	r2, #1
c0de8022:	f803 4b01 	strb.w	r4, [r3], #1
c0de8026:	2c00      	cmp	r4, #0
c0de8028:	d1f7      	bne.n	c0de801a <strncpy+0x6>
c0de802a:	2100      	movs	r1, #0
c0de802c:	441a      	add	r2, r3
c0de802e:	4293      	cmp	r3, r2
c0de8030:	d100      	bne.n	c0de8034 <strncpy+0x20>
c0de8032:	bd10      	pop	{r4, pc}
c0de8034:	f803 1b01 	strb.w	r1, [r3], #1
c0de8038:	e7f9      	b.n	c0de802e <strncpy+0x1a>

c0de803a <C_home_boilerplate_14px_bitmap>:
c0de803a:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de804a:	fc7b df0f 7ffe 7ff8                          {........

c0de8053 <C_home_boilerplate_14px>:
c0de8053:	000e 000e 0000 803a c0de                    ......:...

c0de805d <C_Information_circle_14px_bitmap>:
c0de805d:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de806d:	e7ff 8fff 1ffc 1ee0                          .........

c0de8076 <C_Information_circle_14px>:
c0de8076:	000e 000e 0000 805d c0de                    ......]...

c0de8080 <C_Quit_14px_bitmap>:
c0de8080:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de8090:	6680 9801 7f06 fff9                          .f.......

c0de8099 <C_Quit_14px>:
c0de8099:	000e 000e 0000 8080 c0de                    ..........

c0de80a3 <C_Switch_Off_8px_bitmap>:
c0de80a3:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de80af <C_Switch_Off_8px>:
c0de80af:	000c 0008 0000 80a3 c0de                    ..........

c0de80b9 <C_Switch_On_8px_bitmap>:
c0de80b9:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de80c5 <C_Switch_On_8px>:
c0de80c5:	000c 0008 0000 80b9 c0de                    ..........

c0de80cf <C_icon_back_x_bitmap>:
c0de80cf:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de80df:	003f 0078 00c0 0000                          ?.x......

c0de80e8 <C_icon_back_x>:
c0de80e8:	000e 000e 0000 80cf c0de                    ..........

c0de80f2 <C_icon_coggle_bitmap>:
c0de80f2:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de8102:	807f 00b4 00c0 0000                          .........

c0de810b <C_icon_coggle>:
c0de810b:	000e 000e 0000 80f2 c0de                    ..........

c0de8115 <C_icon_crossmark_bitmap>:
c0de8115:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de8125:	8373 1c87 600e 0018                          s....`...

c0de812e <C_icon_crossmark>:
c0de812e:	000e 000e 0000 8115 c0de                    ..........

c0de8138 <C_icon_down_bitmap>:
c0de8138:	2184 8024                                   .!$.

c0de813c <C_icon_down>:
c0de813c:	0007 0004 0000 8138 c0de                    ......8...

c0de8146 <C_icon_left_bitmap>:
c0de8146:	8882 80a0                                   ....

c0de814a <C_icon_left>:
c0de814a:	0004 0007 0000 8146 c0de                    ......F...

c0de8154 <C_icon_processing_bitmap>:
c0de8154:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de8164:	8361 04b7 03c8 0000                          a........

c0de816d <C_icon_processing>:
c0de816d:	000e 000e 0000 8154 c0de                    ......T...

c0de8177 <C_icon_right_bitmap>:
c0de8177:	5110 1014                                   .Q..

c0de817b <C_icon_right>:
c0de817b:	0004 0007 0000 8177 c0de                    ......w...

c0de8185 <C_icon_up_bitmap>:
c0de8185:	4812 1042                                   .HB.

c0de8189 <C_icon_up>:
c0de8189:	0007 0004 0000 8185 c0de                    ..........

c0de8193 <C_icon_validate_14_bitmap>:
c0de8193:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de81a3:	a3b3 a3a3 f0b2                               ......P

c0de81aa <C_icon_validate_14>:
c0de81aa:	000e 000e 0100 8193 c0de                    ..........

c0de81b4 <C_icon_warning_bitmap>:
c0de81b4:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de81c4:	e01f 801f 001e 0018                          .........

c0de81cd <C_icon_warning>:
c0de81cd:	000e 000e 0000 81b4 c0de                    ..........

c0de81d7 <C_app_boilerplate_14px_bitmap>:
c0de81d7:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de81e7:	0384 00f0 0000 0000                          .........

c0de81f0 <C_app_boilerplate_14px>:
c0de81f0:	000e 000e 0000 81d7 c0de 7544 6d6d 2079     ..........Dummy 
c0de8200:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de8210:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de8220:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de8230:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de8240:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de8250:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de8260:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de8270:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de8280:	5300 6769 696e 676e 4100 6464 6572 7373     .Signing.Address
c0de8290:	7620 7265 6669 6569 0064 7241 2065 6f79      verified.Are yo
c0de82a0:	2075 7573 6572 7420 0a6f 6c61 6f6c 2077     u sure to.allow 
c0de82b0:	7564 6d6d 2079 0a32 6e69 7420 6172 736e     dummy 2.in trans
c0de82c0:	6361 6974 6e6f 3f73 5400 6172 736e 6361     actions?.Transac
c0de82d0:	6974 6e6f 7320 6769 656e 0064 6f54 6120     tion signed.To a
c0de82e0:	6363 7065 2074 6972 6b73 202c 7270 7365     ccept risk, pres
c0de82f0:	2073 6f62 6874 6220 7475 6f74 736e 4400     s both buttons.D
c0de8300:	7665 6c65 706f 7265 4500 616e 6c62 6465     eveloper.Enabled
c0de8310:	4100 6c6c 776f 6420 6d75 796d 3120 690a     .Allow dummy 1.i
c0de8320:	206e 7274 6e61 6173 7463 6f69 736e 5300     n transactions.S
c0de8330:	6769 206e 656d 7373 6761 0065 654d 7373     ign message.Mess
c0de8340:	6761 2065 6973 6e67 6465 5300 6769 206e     age signed.Sign 
c0de8350:	7274 6e61 6173 7463 6f69 006e 6552 656a     transaction.Reje
c0de8360:	7463 7420 6172 736e 6361 6974 6e6f 4100     ct transaction.A
c0de8370:	6363 7065 2074 6972 6b73 6120 646e 7320     ccept risk and s
c0de8380:	6769 206e 656d 7373 6761 0065 6c41 6f6c     ign message.Allo
c0de8390:	2077 7564 6d6d 2079 0a32 6e69 7420 6172     w dummy 2.in tra
c0de83a0:	736e 6361 6974 6e6f 0073 6556 7372 6f69     nsactions.Versio
c0de83b0:	006e 6143 636e 6c65 4100 6464 6572 7373     n.Cancel.Address
c0de83c0:	7620 7265 6669 6369 7461 6f69 206e 6163      verification ca
c0de83d0:	636e 6c65 656c 0064 6944 6173 6c62 6465     ncelled.Disabled
c0de83e0:	4100 7070 7320 7465 6974 676e 0073 6341     .App settings.Ac
c0de83f0:	6563 7470 7220 7369 206b 6e61 2064 6973     cept risk and si
c0de8400:	6e67 7420 6172 736e 6361 6974 6e6f 4200     gn transaction.B
c0de8410:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0de8420:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0de8430:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0de8440:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0de8450:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0de8460:	4544 0046 4f42 204c 2e25 732a 4200 6361     DEF.BOL %.*s.Bac
c0de8470:	006b 6441 7264 7365 0073 7544 6d6d 2079     k.Address.Dummy 
c0de8480:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0de8490:	6f63 666e 7269 006d 7854 6148 6873 5400     confirm.TxHash.T
c0de84a0:	6172 736e 6361 6974 6e6f 7220 6a65 6365     ransaction rejec
c0de84b0:	6574 0064 7041 2070 6e69 6f66 5300 6769     ted.App info.Sig
c0de84c0:	206e 706f 7265 7461 6f69 006e 6552 656a     n operation.Reje
c0de84d0:	7463 6d20 7365 6173 6567 5200 6a65 6365     ct message.Rejec
c0de84e0:	2074 706f 7265 7461 6f69 006e 4b5a 4f4e     t operation.ZKNO
c0de84f0:	0058 6556 6972 7966 4220 4c4f 6120 6464     X.Verify BOL add
c0de8500:	6572 7373 5200 7665 6569 2077 7274 6e61     ress.Review tran
c0de8510:	6173 7463 6f69 0a6e 6f74 2820 6170 7472     saction.to (part
c0de8520:	6169 296c 7320 6769 006e 4b5a 4f4e 4858     ial) sign.ZKNOXH
c0de8530:	0057 7061 2070 7369 7220 6165 7964 5100     W.app is ready.Q
c0de8540:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0de8550:	6501 d5c4 445f b317 e968 545a 1a00 3230     .e.._D..h.ZT..02
c0de8560:	b03c e84f 3e34 d45a 4584 6323 98a5 59d0     <.O.4>Z..E#c...Y
c0de8570:	ed73 53a7 9d29 487d 3933 08d8 a109 05d8     s..S).}H39......
c0de8580:	bd53 02a4 feff fe5b ffff ffff 0000 0100     S.....[.........
c0de8590:	ce05 c698 051b 7ff4 eae2 a5e9 bd42 f699     ............B...
c0de85a0:	e7b2 4682 1623 b540 9545 bffe 1ed5 53b8     ...F#.@.E......S
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
c0de8fa0:	1d89 c0de                                   ....

c0de8fa4 <INFO_TYPES>:
c0de8fa4:	83aa c0de 82ff c0de                         ........

c0de8fac <INFO_CONTENTS>:
c0de8fac:	8229 c0de 84ec c0de                         ).......

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
