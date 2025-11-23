
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f007 f82b 	bl	c0de7060 <os_boot>
c0de000a:	b90c      	cbnz	r4, c0de0010 <main+0x10>
c0de000c:	f006 fe2e 	bl	c0de6c6c <standalone_app_main>
c0de0010:	2000      	movs	r0, #0
c0de0012:	bd10      	pop	{r4, pc}

c0de0014 <address_from_pubkey>:
c0de0014:	b570      	push	{r4, r5, r6, lr}
c0de0016:	b08a      	sub	sp, #40	@ 0x28
c0de0018:	460c      	mov	r4, r1
c0de001a:	4605      	mov	r5, r0
c0de001c:	4668      	mov	r0, sp
c0de001e:	2120      	movs	r1, #32
c0de0020:	4616      	mov	r6, r2
c0de0022:	f007 fbd9 	bl	c0de77d8 <__aeabi_memclr>
c0de0026:	b914      	cbnz	r4, c0de002e <address_from_pubkey+0x1a>
c0de0028:	2001      	movs	r0, #1
c0de002a:	f006 ffaf 	bl	c0de6f8c <assert_exit>
c0de002e:	2e14      	cmp	r6, #20
c0de0030:	d30a      	bcc.n	c0de0048 <address_from_pubkey+0x34>
c0de0032:	2040      	movs	r0, #64	@ 0x40
c0de0034:	2101      	movs	r1, #1
c0de0036:	9009      	str	r0, [sp, #36]	@ 0x24
c0de0038:	1c68      	adds	r0, r5, #1
c0de003a:	466d      	mov	r5, sp
c0de003c:	9008      	str	r0, [sp, #32]
c0de003e:	a808      	add	r0, sp, #32
c0de0040:	462a      	mov	r2, r5
c0de0042:	f006 ff5d 	bl	c0de6f00 <cx_keccak_256_hash_iovec>
c0de0046:	b108      	cbz	r0, c0de004c <address_from_pubkey+0x38>
c0de0048:	2000      	movs	r0, #0
c0de004a:	e006      	b.n	c0de005a <address_from_pubkey+0x46>
c0de004c:	f105 010c 	add.w	r1, r5, #12
c0de0050:	4620      	mov	r0, r4
c0de0052:	2214      	movs	r2, #20
c0de0054:	f007 fbb6 	bl	c0de77c4 <__aeabi_memcpy>
c0de0058:	2001      	movs	r0, #1
c0de005a:	b00a      	add	sp, #40	@ 0x28
c0de005c:	bd70      	pop	{r4, r5, r6, pc}

c0de005e <apdu_dispatcher>:
c0de005e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0060:	4604      	mov	r4, r0
c0de0062:	b910      	cbnz	r0, c0de006a <apdu_dispatcher+0xc>
c0de0064:	2001      	movs	r0, #1
c0de0066:	f006 ff91 	bl	c0de6f8c <assert_exit>
c0de006a:	7820      	ldrb	r0, [r4, #0]
c0de006c:	28e0      	cmp	r0, #224	@ 0xe0
c0de006e:	d160      	bne.n	c0de0132 <apdu_dispatcher+0xd4>
c0de0070:	2000      	movs	r0, #0
c0de0072:	9003      	str	r0, [sp, #12]
c0de0074:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de0078:	7860      	ldrb	r0, [r4, #1]
c0de007a:	2802      	cmp	r0, #2
c0de007c:	d05c      	beq.n	c0de0138 <apdu_dispatcher+0xda>
c0de007e:	2820      	cmp	r0, #32
c0de0080:	d064      	beq.n	c0de014c <apdu_dispatcher+0xee>
c0de0082:	2804      	cmp	r0, #4
c0de0084:	d06c      	beq.n	c0de0160 <apdu_dispatcher+0x102>
c0de0086:	2805      	cmp	r0, #5
c0de0088:	d076      	beq.n	c0de0178 <apdu_dispatcher+0x11a>
c0de008a:	2806      	cmp	r0, #6
c0de008c:	f000 808a 	beq.w	c0de01a4 <apdu_dispatcher+0x146>
c0de0090:	2807      	cmp	r0, #7
c0de0092:	f000 8095 	beq.w	c0de01c0 <apdu_dispatcher+0x162>
c0de0096:	2808      	cmp	r0, #8
c0de0098:	f000 809c 	beq.w	c0de01d4 <apdu_dispatcher+0x176>
c0de009c:	2809      	cmp	r0, #9
c0de009e:	f000 80a3 	beq.w	c0de01e8 <apdu_dispatcher+0x18a>
c0de00a2:	280a      	cmp	r0, #10
c0de00a4:	f000 80aa 	beq.w	c0de01fc <apdu_dispatcher+0x19e>
c0de00a8:	280b      	cmp	r0, #11
c0de00aa:	f000 80b1 	beq.w	c0de0210 <apdu_dispatcher+0x1b2>
c0de00ae:	280c      	cmp	r0, #12
c0de00b0:	f000 80b8 	beq.w	c0de0224 <apdu_dispatcher+0x1c6>
c0de00b4:	280d      	cmp	r0, #13
c0de00b6:	f000 80bf 	beq.w	c0de0238 <apdu_dispatcher+0x1da>
c0de00ba:	280e      	cmp	r0, #14
c0de00bc:	f000 80c6 	beq.w	c0de024c <apdu_dispatcher+0x1ee>
c0de00c0:	280f      	cmp	r0, #15
c0de00c2:	f000 80cd 	beq.w	c0de0260 <apdu_dispatcher+0x202>
c0de00c6:	2810      	cmp	r0, #16
c0de00c8:	f000 80d4 	beq.w	c0de0274 <apdu_dispatcher+0x216>
c0de00cc:	2811      	cmp	r0, #17
c0de00ce:	f000 80db 	beq.w	c0de0288 <apdu_dispatcher+0x22a>
c0de00d2:	2812      	cmp	r0, #18
c0de00d4:	f000 80e1 	beq.w	c0de029a <apdu_dispatcher+0x23c>
c0de00d8:	2813      	cmp	r0, #19
c0de00da:	f000 80e7 	beq.w	c0de02ac <apdu_dispatcher+0x24e>
c0de00de:	2814      	cmp	r0, #20
c0de00e0:	f000 80ed 	beq.w	c0de02be <apdu_dispatcher+0x260>
c0de00e4:	2815      	cmp	r0, #21
c0de00e6:	f000 80f3 	beq.w	c0de02d0 <apdu_dispatcher+0x272>
c0de00ea:	2817      	cmp	r0, #23
c0de00ec:	f000 80f9 	beq.w	c0de02e2 <apdu_dispatcher+0x284>
c0de00f0:	2818      	cmp	r0, #24
c0de00f2:	f000 80ff 	beq.w	c0de02f4 <apdu_dispatcher+0x296>
c0de00f6:	2819      	cmp	r0, #25
c0de00f8:	f000 810b 	beq.w	c0de0312 <apdu_dispatcher+0x2b4>
c0de00fc:	281a      	cmp	r0, #26
c0de00fe:	f000 8110 	beq.w	c0de0322 <apdu_dispatcher+0x2c4>
c0de0102:	281b      	cmp	r0, #27
c0de0104:	f000 8115 	beq.w	c0de0332 <apdu_dispatcher+0x2d4>
c0de0108:	281c      	cmp	r0, #28
c0de010a:	f000 811a 	beq.w	c0de0342 <apdu_dispatcher+0x2e4>
c0de010e:	281d      	cmp	r0, #29
c0de0110:	f000 811f 	beq.w	c0de0352 <apdu_dispatcher+0x2f4>
c0de0114:	2803      	cmp	r0, #3
c0de0116:	f040 8124 	bne.w	c0de0362 <apdu_dispatcher+0x304>
c0de011a:	78a0      	ldrb	r0, [r4, #2]
c0de011c:	2800      	cmp	r0, #0
c0de011e:	f040 8135 	bne.w	c0de038c <apdu_dispatcher+0x32e>
c0de0122:	78e0      	ldrb	r0, [r4, #3]
c0de0124:	2800      	cmp	r0, #0
c0de0126:	f040 8131 	bne.w	c0de038c <apdu_dispatcher+0x32e>
c0de012a:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de012e:	f000 b9ea 	b.w	c0de0506 <handler_get_version>
c0de0132:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de0136:	e12b      	b.n	c0de0390 <apdu_dispatcher+0x332>
c0de0138:	68a0      	ldr	r0, [r4, #8]
c0de013a:	2800      	cmp	r0, #0
c0de013c:	f000 8123 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de0140:	f000 f932 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de0144:	a801      	add	r0, sp, #4
c0de0146:	f001 f947 	bl	c0de13d8 <handler_cmd_PartialSig>
c0de014a:	e11a      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de014c:	68a0      	ldr	r0, [r4, #8]
c0de014e:	2800      	cmp	r0, #0
c0de0150:	f000 8119 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de0154:	f000 f928 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de0158:	a801      	add	r0, sp, #4
c0de015a:	f001 fb19 	bl	c0de1790 <handler_cmd_inject_nonces>
c0de015e:	e110      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0160:	78a0      	ldrb	r0, [r4, #2]
c0de0162:	2800      	cmp	r0, #0
c0de0164:	f040 8112 	bne.w	c0de038c <apdu_dispatcher+0x32e>
c0de0168:	78e0      	ldrb	r0, [r4, #3]
c0de016a:	2800      	cmp	r0, #0
c0de016c:	f040 810e 	bne.w	c0de038c <apdu_dispatcher+0x32e>
c0de0170:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0174:	f000 b960 	b.w	c0de0438 <handler_get_app_name>
c0de0178:	78a1      	ldrb	r1, [r4, #2]
c0de017a:	2901      	cmp	r1, #1
c0de017c:	f200 8106 	bhi.w	c0de038c <apdu_dispatcher+0x32e>
c0de0180:	78e0      	ldrb	r0, [r4, #3]
c0de0182:	2800      	cmp	r0, #0
c0de0184:	f040 8102 	bne.w	c0de038c <apdu_dispatcher+0x32e>
c0de0188:	68a0      	ldr	r0, [r4, #8]
c0de018a:	2800      	cmp	r0, #0
c0de018c:	f000 80fb 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de0190:	9001      	str	r0, [sp, #4]
c0de0192:	7920      	ldrb	r0, [r4, #4]
c0de0194:	2900      	cmp	r1, #0
c0de0196:	9002      	str	r0, [sp, #8]
c0de0198:	bf18      	it	ne
c0de019a:	2101      	movne	r1, #1
c0de019c:	a801      	add	r0, sp, #4
c0de019e:	f000 f95f 	bl	c0de0460 <handler_get_public_key>
c0de01a2:	e0ee      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de01a4:	78a1      	ldrb	r1, [r4, #2]
c0de01a6:	2900      	cmp	r1, #0
c0de01a8:	f000 80de 	beq.w	c0de0368 <apdu_dispatcher+0x30a>
c0de01ac:	2903      	cmp	r1, #3
c0de01ae:	f200 80ed 	bhi.w	c0de038c <apdu_dispatcher+0x32e>
c0de01b2:	78e0      	ldrb	r0, [r4, #3]
c0de01b4:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de01b8:	2a80      	cmp	r2, #128	@ 0x80
c0de01ba:	f000 80d9 	beq.w	c0de0370 <apdu_dispatcher+0x312>
c0de01be:	e0e5      	b.n	c0de038c <apdu_dispatcher+0x32e>
c0de01c0:	68a0      	ldr	r0, [r4, #8]
c0de01c2:	2800      	cmp	r0, #0
c0de01c4:	f000 80df 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de01c8:	f000 f8ee 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de01cc:	a801      	add	r0, sp, #4
c0de01ce:	f000 fa85 	bl	c0de06dc <handler_cmd_keccakH>
c0de01d2:	e0d6      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de01d4:	68a0      	ldr	r0, [r4, #8]
c0de01d6:	2800      	cmp	r0, #0
c0de01d8:	f000 80d5 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de01dc:	f000 f8e4 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de01e0:	a801      	add	r0, sp, #4
c0de01e2:	f000 fa42 	bl	c0de066a <handler_cmd_blake2b512>
c0de01e6:	e0cc      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de01e8:	68a0      	ldr	r0, [r4, #8]
c0de01ea:	2800      	cmp	r0, #0
c0de01ec:	f000 80cb 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de01f0:	f000 f8da 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de01f4:	a801      	add	r0, sp, #4
c0de01f6:	f000 fad7 	bl	c0de07a8 <handler_cmd_Poseidon>
c0de01fa:	e0c2      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de01fc:	68a0      	ldr	r0, [r4, #8]
c0de01fe:	2800      	cmp	r0, #0
c0de0200:	f000 80c1 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de0204:	f000 f8d0 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de0208:	a801      	add	r0, sp, #4
c0de020a:	f000 fc31 	bl	c0de0a70 <handler_cmd_tEddsaPoseidon>
c0de020e:	e0b8      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0210:	68a0      	ldr	r0, [r4, #8]
c0de0212:	2800      	cmp	r0, #0
c0de0214:	f000 80b7 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de0218:	f000 f8c6 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de021c:	a801      	add	r0, sp, #4
c0de021e:	f000 fb8d 	bl	c0de093c <handler_cmd_tEddsaPoseidon_Kpub>
c0de0222:	e0ae      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0224:	68a0      	ldr	r0, [r4, #8]
c0de0226:	2800      	cmp	r0, #0
c0de0228:	f000 80ad 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de022c:	f000 f8bc 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de0230:	a801      	add	r0, sp, #4
c0de0232:	f000 fbc4 	bl	c0de09be <handler_cmd_tEddsaPoseidon_Sign>
c0de0236:	e0a4      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0238:	68a0      	ldr	r0, [r4, #8]
c0de023a:	2800      	cmp	r0, #0
c0de023c:	f000 80a3 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de0240:	f000 f8b2 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de0244:	a801      	add	r0, sp, #4
c0de0246:	f000 fb33 	bl	c0de08b0 <handler_cmd_Poseidon_ithRC>
c0de024a:	e09a      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de024c:	68a0      	ldr	r0, [r4, #8]
c0de024e:	2800      	cmp	r0, #0
c0de0250:	f000 8099 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de0254:	f000 f8a8 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de0258:	a801      	add	r0, sp, #4
c0de025a:	f000 fc7d 	bl	c0de0b58 <handler_cmd_tEdwards>
c0de025e:	e090      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0260:	68a0      	ldr	r0, [r4, #8]
c0de0262:	2800      	cmp	r0, #0
c0de0264:	f000 808f 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de0268:	f000 f89e 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de026c:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0270:	f000 ba52 	b.w	c0de0718 <handler_cmd_bolos_stretch>
c0de0274:	68a0      	ldr	r0, [r4, #8]
c0de0276:	2800      	cmp	r0, #0
c0de0278:	f000 8085 	beq.w	c0de0386 <apdu_dispatcher+0x328>
c0de027c:	f000 f894 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de0280:	a801      	add	r0, sp, #4
c0de0282:	f000 fd1f 	bl	c0de0cc4 <handler_cmd_Interpolate>
c0de0286:	e07c      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0288:	68a0      	ldr	r0, [r4, #8]
c0de028a:	2800      	cmp	r0, #0
c0de028c:	d07b      	beq.n	c0de0386 <apdu_dispatcher+0x328>
c0de028e:	f000 f88b 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de0292:	a801      	add	r0, sp, #4
c0de0294:	f000 fdcb 	bl	c0de0e2e <handler_cmd_Split>
c0de0298:	e073      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de029a:	68a0      	ldr	r0, [r4, #8]
c0de029c:	2800      	cmp	r0, #0
c0de029e:	d072      	beq.n	c0de0386 <apdu_dispatcher+0x328>
c0de02a0:	f000 f882 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de02a4:	a801      	add	r0, sp, #4
c0de02a6:	f000 fe8a 	bl	c0de0fbe <handler_cmd_frostH>
c0de02aa:	e06a      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de02ac:	68a0      	ldr	r0, [r4, #8]
c0de02ae:	2800      	cmp	r0, #0
c0de02b0:	d069      	beq.n	c0de0386 <apdu_dispatcher+0x328>
c0de02b2:	f000 f879 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de02b6:	a801      	add	r0, sp, #4
c0de02b8:	f000 fed2 	bl	c0de1060 <handler_cmd_encodeCommitment>
c0de02bc:	e061      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de02be:	68a0      	ldr	r0, [r4, #8]
c0de02c0:	2800      	cmp	r0, #0
c0de02c2:	d060      	beq.n	c0de0386 <apdu_dispatcher+0x328>
c0de02c4:	f000 f870 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de02c8:	a801      	add	r0, sp, #4
c0de02ca:	f000 feff 	bl	c0de10cc <handler_cmd_GroupCommitment>
c0de02ce:	e058      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de02d0:	68a0      	ldr	r0, [r4, #8]
c0de02d2:	2800      	cmp	r0, #0
c0de02d4:	d057      	beq.n	c0de0386 <apdu_dispatcher+0x328>
c0de02d6:	f000 f867 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de02da:	a801      	add	r0, sp, #4
c0de02dc:	f000 ff3a 	bl	c0de1154 <handler_cmd_BindingFactors>
c0de02e0:	e04f      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de02e2:	68a0      	ldr	r0, [r4, #8]
c0de02e4:	2800      	cmp	r0, #0
c0de02e6:	d04e      	beq.n	c0de0386 <apdu_dispatcher+0x328>
c0de02e8:	f000 f85e 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de02ec:	a801      	add	r0, sp, #4
c0de02ee:	f001 f91f 	bl	c0de1530 <handler_cmd_tEddsaPoseidon_Sign_with_secret>
c0de02f2:	e046      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de02f4:	78a0      	ldrb	r0, [r4, #2]
c0de02f6:	2801      	cmp	r0, #1
c0de02f8:	d848      	bhi.n	c0de038c <apdu_dispatcher+0x32e>
c0de02fa:	78e0      	ldrb	r0, [r4, #3]
c0de02fc:	2800      	cmp	r0, #0
c0de02fe:	d145      	bne.n	c0de038c <apdu_dispatcher+0x32e>
c0de0300:	68a0      	ldr	r0, [r4, #8]
c0de0302:	2800      	cmp	r0, #0
c0de0304:	d03f      	beq.n	c0de0386 <apdu_dispatcher+0x328>
c0de0306:	f000 f84f 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de030a:	a801      	add	r0, sp, #4
c0de030c:	f001 f8d8 	bl	c0de14c0 <handler_get_insecure_public>
c0de0310:	e037      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0312:	68a0      	ldr	r0, [r4, #8]
c0de0314:	b3b8      	cbz	r0, c0de0386 <apdu_dispatcher+0x328>
c0de0316:	f000 f847 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de031a:	a801      	add	r0, sp, #4
c0de031c:	f001 f94e 	bl	c0de15bc <handler_cmd_frost_inject>
c0de0320:	e02f      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0322:	68a0      	ldr	r0, [r4, #8]
c0de0324:	b378      	cbz	r0, c0de0386 <apdu_dispatcher+0x328>
c0de0326:	f000 f83f 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de032a:	a801      	add	r0, sp, #4
c0de032c:	f001 f970 	bl	c0de1610 <handler_cmd_frost_commit>
c0de0330:	e027      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0332:	68a0      	ldr	r0, [r4, #8]
c0de0334:	b338      	cbz	r0, c0de0386 <apdu_dispatcher+0x328>
c0de0336:	f000 f837 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de033a:	a801      	add	r0, sp, #4
c0de033c:	f001 f9ae 	bl	c0de169c <handler_cmd_frost_inject_com1>
c0de0340:	e01f      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0342:	68a0      	ldr	r0, [r4, #8]
c0de0344:	b1f8      	cbz	r0, c0de0386 <apdu_dispatcher+0x328>
c0de0346:	f000 f82f 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de034a:	a801      	add	r0, sp, #4
c0de034c:	f001 f9ba 	bl	c0de16c4 <handler_cmd_frost_inject_com2>
c0de0350:	e017      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0352:	68a0      	ldr	r0, [r4, #8]
c0de0354:	b1b8      	cbz	r0, c0de0386 <apdu_dispatcher+0x328>
c0de0356:	f000 f827 	bl	c0de03a8 <OUTLINED_FUNCTION_0>
c0de035a:	a801      	add	r0, sp, #4
c0de035c:	f001 f9c8 	bl	c0de16f0 <handler_cmd_frost_partial_sign>
c0de0360:	e00f      	b.n	c0de0382 <apdu_dispatcher+0x324>
c0de0362:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de0366:	e013      	b.n	c0de0390 <apdu_dispatcher+0x332>
c0de0368:	78e0      	ldrb	r0, [r4, #3]
c0de036a:	2880      	cmp	r0, #128	@ 0x80
c0de036c:	d10e      	bne.n	c0de038c <apdu_dispatcher+0x32e>
c0de036e:	2080      	movs	r0, #128	@ 0x80
c0de0370:	68a2      	ldr	r2, [r4, #8]
c0de0372:	b142      	cbz	r2, c0de0386 <apdu_dispatcher+0x328>
c0de0374:	9201      	str	r2, [sp, #4]
c0de0376:	7922      	ldrb	r2, [r4, #4]
c0de0378:	9202      	str	r2, [sp, #8]
c0de037a:	09c2      	lsrs	r2, r0, #7
c0de037c:	a801      	add	r0, sp, #4
c0de037e:	f000 f8d9 	bl	c0de0534 <handler_sign_tx>
c0de0382:	b004      	add	sp, #16
c0de0384:	bd10      	pop	{r4, pc}
c0de0386:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de038a:	e001      	b.n	c0de0390 <apdu_dispatcher+0x332>
c0de038c:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de0390:	b004      	add	sp, #16
c0de0392:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de0396:	f000 b800 	b.w	c0de039a <io_send_sw>

c0de039a <io_send_sw>:
c0de039a:	b580      	push	{r7, lr}
c0de039c:	4602      	mov	r2, r0
c0de039e:	2000      	movs	r0, #0
c0de03a0:	2100      	movs	r1, #0
c0de03a2:	f006 fc23 	bl	c0de6bec <io_send_response_buffers>
c0de03a6:	bd80      	pop	{r7, pc}

c0de03a8 <OUTLINED_FUNCTION_0>:
c0de03a8:	9001      	str	r0, [sp, #4]
c0de03aa:	7920      	ldrb	r0, [r4, #4]
c0de03ac:	9002      	str	r0, [sp, #8]
c0de03ae:	4770      	bx	lr

c0de03b0 <app_main>:
c0de03b0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de03b2:	f006 fbfd 	bl	c0de6bb0 <io_init>
c0de03b6:	f001 fb69 	bl	c0de1a8c <ui_menu_main>
c0de03ba:	481b      	ldr	r0, [pc, #108]	@ (c0de0428 <app_main+0x78>)
c0de03bc:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de03c0:	4448      	add	r0, r9
c0de03c2:	f007 fa0d 	bl	c0de77e0 <explicit_bzero>
c0de03c6:	481a      	ldr	r0, [pc, #104]	@ (c0de0430 <app_main+0x80>)
c0de03c8:	4478      	add	r0, pc
c0de03ca:	f006 ffe5 	bl	c0de7398 <pic>
c0de03ce:	7880      	ldrb	r0, [r0, #2]
c0de03d0:	2801      	cmp	r0, #1
c0de03d2:	d00d      	beq.n	c0de03f0 <app_main+0x40>
c0de03d4:	2001      	movs	r0, #1
c0de03d6:	f88d 0002 	strb.w	r0, [sp, #2]
c0de03da:	2000      	movs	r0, #0
c0de03dc:	f8ad 0000 	strh.w	r0, [sp]
c0de03e0:	4814      	ldr	r0, [pc, #80]	@ (c0de0434 <app_main+0x84>)
c0de03e2:	4478      	add	r0, pc
c0de03e4:	f006 ffd8 	bl	c0de7398 <pic>
c0de03e8:	4669      	mov	r1, sp
c0de03ea:	2203      	movs	r2, #3
c0de03ec:	f007 f804 	bl	c0de73f8 <nvm_write>
c0de03f0:	4d0e      	ldr	r5, [pc, #56]	@ (c0de042c <app_main+0x7c>)
c0de03f2:	ac01      	add	r4, sp, #4
c0de03f4:	f006 fbe4 	bl	c0de6bc0 <io_recv_command>
c0de03f8:	2800      	cmp	r0, #0
c0de03fa:	d414      	bmi.n	c0de0426 <app_main+0x76>
c0de03fc:	4602      	mov	r2, r0
c0de03fe:	eb09 0105 	add.w	r1, r9, r5
c0de0402:	4620      	mov	r0, r4
c0de0404:	f006 fc59 	bl	c0de6cba <apdu_parser>
c0de0408:	b130      	cbz	r0, c0de0418 <app_main+0x68>
c0de040a:	4620      	mov	r0, r4
c0de040c:	f7ff fe27 	bl	c0de005e <apdu_dispatcher>
c0de0410:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0414:	dcee      	bgt.n	c0de03f4 <app_main+0x44>
c0de0416:	e006      	b.n	c0de0426 <app_main+0x76>
c0de0418:	2000      	movs	r0, #0
c0de041a:	2100      	movs	r1, #0
c0de041c:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de0420:	f006 fbe4 	bl	c0de6bec <io_send_response_buffers>
c0de0424:	e7e6      	b.n	c0de03f4 <app_main+0x44>
c0de0426:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0428:	00000000 	.word	0x00000000
c0de042c:	0000064c 	.word	0x0000064c
c0de0430:	00008a34 	.word	0x00008a34
c0de0434:	00008a1a 	.word	0x00008a1a

c0de0438 <handler_get_app_name>:
c0de0438:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de043a:	4808      	ldr	r0, [pc, #32]	@ (c0de045c <handler_get_app_name+0x24>)
c0de043c:	4478      	add	r0, pc
c0de043e:	f006 ffab 	bl	c0de7398 <pic>
c0de0442:	2100      	movs	r1, #0
c0de0444:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0448:	9103      	str	r1, [sp, #12]
c0de044a:	2108      	movs	r1, #8
c0de044c:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0450:	a801      	add	r0, sp, #4
c0de0452:	2101      	movs	r1, #1
c0de0454:	f006 fbca 	bl	c0de6bec <io_send_response_buffers>
c0de0458:	b004      	add	sp, #16
c0de045a:	bd80      	pop	{r7, pc}
c0de045c:	000077e6 	.word	0x000077e6

c0de0460 <handler_get_public_key>:
c0de0460:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0462:	b085      	sub	sp, #20
c0de0464:	4f23      	ldr	r7, [pc, #140]	@ (c0de04f4 <handler_get_public_key+0x94>)
c0de0466:	460c      	mov	r4, r1
c0de0468:	4605      	mov	r5, r0
c0de046a:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de046e:	eb09 0607 	add.w	r6, r9, r7
c0de0472:	4630      	mov	r0, r6
c0de0474:	f007 f9b4 	bl	c0de77e0 <explicit_bzero>
c0de0478:	2000      	movs	r0, #0
c0de047a:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de047e:	f809 0007 	strb.w	r0, [r9, r7]
c0de0482:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de0486:	4628      	mov	r0, r5
c0de0488:	f006 f9de 	bl	c0de6848 <buffer_read_u8>
c0de048c:	b308      	cbz	r0, c0de04d2 <handler_get_public_key+0x72>
c0de048e:	eb09 0007 	add.w	r0, r9, r7
c0de0492:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0496:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de049a:	4628      	mov	r0, r5
c0de049c:	f006 fa27 	bl	c0de68ee <buffer_read_bip32_path>
c0de04a0:	b1b8      	cbz	r0, c0de04d2 <handler_get_public_key+0x72>
c0de04a2:	eb09 0007 	add.w	r0, r9, r7
c0de04a6:	2100      	movs	r1, #0
c0de04a8:	2205      	movs	r2, #5
c0de04aa:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de04ae:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de04b2:	9104      	str	r1, [sp, #16]
c0de04b4:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de04b8:	f100 0608 	add.w	r6, r0, #8
c0de04bc:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de04c0:	2000      	movs	r0, #0
c0de04c2:	2121      	movs	r1, #33	@ 0x21
c0de04c4:	e9cd 6500 	strd	r6, r5, [sp]
c0de04c8:	f006 fad2 	bl	c0de6a70 <bip32_derive_with_seed_get_pubkey_256>
c0de04cc:	b140      	cbz	r0, c0de04e0 <handler_get_public_key+0x80>
c0de04ce:	b280      	uxth	r0, r0
c0de04d0:	e001      	b.n	c0de04d6 <handler_get_public_key+0x76>
c0de04d2:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de04d6:	b005      	add	sp, #20
c0de04d8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de04dc:	f000 b80c 	b.w	c0de04f8 <io_send_sw>
c0de04e0:	2c00      	cmp	r4, #0
c0de04e2:	b005      	add	sp, #20
c0de04e4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de04e8:	bf08      	it	eq
c0de04ea:	f001 b99b 	beq.w	c0de1824 <helper_send_response_pubkey>
c0de04ee:	f001 bbb1 	b.w	c0de1c54 <ui_display_address>
c0de04f2:	bf00      	nop
c0de04f4:	00000000 	.word	0x00000000

c0de04f8 <io_send_sw>:
c0de04f8:	b580      	push	{r7, lr}
c0de04fa:	4602      	mov	r2, r0
c0de04fc:	2000      	movs	r0, #0
c0de04fe:	2100      	movs	r1, #0
c0de0500:	f006 fb74 	bl	c0de6bec <io_send_response_buffers>
c0de0504:	bd80      	pop	{r7, pc}

c0de0506 <handler_get_version>:
c0de0506:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0508:	2000      	movs	r0, #0
c0de050a:	2101      	movs	r1, #1
c0de050c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0510:	f88d 0002 	strb.w	r0, [sp, #2]
c0de0514:	f88d 0001 	strb.w	r0, [sp, #1]
c0de0518:	9003      	str	r0, [sp, #12]
c0de051a:	2003      	movs	r0, #3
c0de051c:	f88d 1003 	strb.w	r1, [sp, #3]
c0de0520:	2101      	movs	r1, #1
c0de0522:	9002      	str	r0, [sp, #8]
c0de0524:	f10d 0001 	add.w	r0, sp, #1
c0de0528:	9001      	str	r0, [sp, #4]
c0de052a:	a801      	add	r0, sp, #4
c0de052c:	f006 fb5e 	bl	c0de6bec <io_send_response_buffers>
c0de0530:	b004      	add	sp, #16
c0de0532:	bd80      	pop	{r7, pc}

c0de0534 <handler_sign_tx>:
c0de0534:	b570      	push	{r4, r5, r6, lr}
c0de0536:	b086      	sub	sp, #24
c0de0538:	4e46      	ldr	r6, [pc, #280]	@ (c0de0654 <handler_sign_tx+0x120>)
c0de053a:	4604      	mov	r4, r0
c0de053c:	b191      	cbz	r1, c0de0564 <handler_sign_tx+0x30>
c0de053e:	eb09 0006 	add.w	r0, r9, r6
c0de0542:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de0546:	2801      	cmp	r0, #1
c0de0548:	d12c      	bne.n	c0de05a4 <handler_sign_tx+0x70>
c0de054a:	eb09 0006 	add.w	r0, r9, r6
c0de054e:	4615      	mov	r5, r2
c0de0550:	6862      	ldr	r2, [r4, #4]
c0de0552:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de0556:	1811      	adds	r1, r2, r0
c0de0558:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de055c:	d925      	bls.n	c0de05aa <handler_sign_tx+0x76>
c0de055e:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de0562:	e039      	b.n	c0de05d8 <handler_sign_tx+0xa4>
c0de0564:	eb09 0506 	add.w	r5, r9, r6
c0de0568:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de056c:	4628      	mov	r0, r5
c0de056e:	f007 f937 	bl	c0de77e0 <explicit_bzero>
c0de0572:	2000      	movs	r0, #0
c0de0574:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de0578:	f809 0006 	strb.w	r0, [r9, r6]
c0de057c:	2001      	movs	r0, #1
c0de057e:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0582:	4620      	mov	r0, r4
c0de0584:	f006 f960 	bl	c0de6848 <buffer_read_u8>
c0de0588:	b148      	cbz	r0, c0de059e <handler_sign_tx+0x6a>
c0de058a:	eb09 0006 	add.w	r0, r9, r6
c0de058e:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0592:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de0596:	4620      	mov	r0, r4
c0de0598:	f006 f9a9 	bl	c0de68ee <buffer_read_bip32_path>
c0de059c:	b9b8      	cbnz	r0, c0de05ce <handler_sign_tx+0x9a>
c0de059e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de05a2:	e019      	b.n	c0de05d8 <handler_sign_tx+0xa4>
c0de05a4:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de05a8:	e016      	b.n	c0de05d8 <handler_sign_tx+0xa4>
c0de05aa:	eb09 0106 	add.w	r1, r9, r6
c0de05ae:	4408      	add	r0, r1
c0de05b0:	f100 0108 	add.w	r1, r0, #8
c0de05b4:	4620      	mov	r0, r4
c0de05b6:	f006 f9c4 	bl	c0de6942 <buffer_move>
c0de05ba:	b158      	cbz	r0, c0de05d4 <handler_sign_tx+0xa0>
c0de05bc:	eb09 0106 	add.w	r1, r9, r6
c0de05c0:	6862      	ldr	r2, [r4, #4]
c0de05c2:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de05c6:	4410      	add	r0, r2
c0de05c8:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de05cc:	b14d      	cbz	r5, c0de05e2 <handler_sign_tx+0xae>
c0de05ce:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de05d2:	e001      	b.n	c0de05d8 <handler_sign_tx+0xa4>
c0de05d4:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de05d8:	b006      	add	sp, #24
c0de05da:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de05de:	f000 b83d 	b.w	c0de065c <io_send_sw>
c0de05e2:	2100      	movs	r1, #0
c0de05e4:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de05e8:	eb09 0006 	add.w	r0, r9, r6
c0de05ec:	f100 0108 	add.w	r1, r0, #8
c0de05f0:	9101      	str	r1, [sp, #4]
c0de05f2:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de05f6:	a801      	add	r0, sp, #4
c0de05f8:	f001 f967 	bl	c0de18ca <transaction_deserialize>
c0de05fc:	2801      	cmp	r0, #1
c0de05fe:	d114      	bne.n	c0de062a <handler_sign_tx+0xf6>
c0de0600:	2001      	movs	r0, #1
c0de0602:	f809 0006 	strb.w	r0, [r9, r6]
c0de0606:	eb09 0006 	add.w	r0, r9, r6
c0de060a:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de060e:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de0612:	9105      	str	r1, [sp, #20]
c0de0614:	f100 0108 	add.w	r1, r0, #8
c0de0618:	9104      	str	r1, [sp, #16]
c0de061a:	a804      	add	r0, sp, #16
c0de061c:	2101      	movs	r1, #1
c0de061e:	f006 fc6f 	bl	c0de6f00 <cx_keccak_256_hash_iovec>
c0de0622:	b140      	cbz	r0, c0de0636 <handler_sign_tx+0x102>
c0de0624:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de0628:	e001      	b.n	c0de062e <handler_sign_tx+0xfa>
c0de062a:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de062e:	f000 f815 	bl	c0de065c <io_send_sw>
c0de0632:	b006      	add	sp, #24
c0de0634:	bd70      	pop	{r4, r5, r6, pc}
c0de0636:	eb09 0006 	add.w	r0, r9, r6
c0de063a:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de063e:	4906      	ldr	r1, [pc, #24]	@ (c0de0658 <handler_sign_tx+0x124>)
c0de0640:	4479      	add	r1, pc
c0de0642:	f007 f911 	bl	c0de7868 <strcmp>
c0de0646:	b110      	cbz	r0, c0de064e <handler_sign_tx+0x11a>
c0de0648:	f001 fbf5 	bl	c0de1e36 <ui_display_transaction>
c0de064c:	e7f1      	b.n	c0de0632 <handler_sign_tx+0xfe>
c0de064e:	f001 fbef 	bl	c0de1e30 <ui_display_blind_signed_transaction>
c0de0652:	e7ee      	b.n	c0de0632 <handler_sign_tx+0xfe>
c0de0654:	00000000 	.word	0x00000000
c0de0658:	000073f9 	.word	0x000073f9

c0de065c <io_send_sw>:
c0de065c:	b580      	push	{r7, lr}
c0de065e:	4602      	mov	r2, r0
c0de0660:	2000      	movs	r0, #0
c0de0662:	2100      	movs	r1, #0
c0de0664:	f006 fac2 	bl	c0de6bec <io_send_response_buffers>
c0de0668:	bd80      	pop	{r7, pc}

c0de066a <handler_cmd_blake2b512>:
c0de066a:	b510      	push	{r4, lr}
c0de066c:	b0d0      	sub	sp, #320	@ 0x140
c0de066e:	4604      	mov	r4, r0
c0de0670:	6840      	ldr	r0, [r0, #4]
c0de0672:	2820      	cmp	r0, #32
c0de0674:	d10b      	bne.n	c0de068e <handler_cmd_blake2b512+0x24>
c0de0676:	6820      	ldr	r0, [r4, #0]
c0de0678:	a940      	add	r1, sp, #256	@ 0x100
c0de067a:	2220      	movs	r2, #32
c0de067c:	f001 fbde 	bl	c0de1e3c <zkn_prv_hash>
c0de0680:	b988      	cbnz	r0, c0de06a6 <handler_cmd_blake2b512+0x3c>
c0de0682:	a840      	add	r0, sp, #256	@ 0x100
c0de0684:	2140      	movs	r1, #64	@ 0x40
c0de0686:	f000 f817 	bl	c0de06b8 <io_send_response_pointer>
c0de068a:	2000      	movs	r0, #0
c0de068c:	e00d      	b.n	c0de06aa <handler_cmd_blake2b512+0x40>
c0de068e:	4668      	mov	r0, sp
c0de0690:	2109      	movs	r1, #9
c0de0692:	2240      	movs	r2, #64	@ 0x40
c0de0694:	f006 fc62 	bl	c0de6f5c <cx_hash_init_ex>
c0de0698:	b928      	cbnz	r0, c0de06a6 <handler_cmd_blake2b512+0x3c>
c0de069a:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de069e:	4668      	mov	r0, sp
c0de06a0:	f006 fc61 	bl	c0de6f66 <cx_hash_update>
c0de06a4:	b118      	cbz	r0, c0de06ae <handler_cmd_blake2b512+0x44>
c0de06a6:	f001 f88f 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de06aa:	b050      	add	sp, #320	@ 0x140
c0de06ac:	bd10      	pop	{r4, pc}
c0de06ae:	4668      	mov	r0, sp
c0de06b0:	a940      	add	r1, sp, #256	@ 0x100
c0de06b2:	f006 fc4e 	bl	c0de6f52 <cx_hash_final>
c0de06b6:	e7e3      	b.n	c0de0680 <handler_cmd_blake2b512+0x16>

c0de06b8 <io_send_response_pointer>:
c0de06b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de06ba:	2200      	movs	r2, #0
c0de06bc:	ab01      	add	r3, sp, #4
c0de06be:	c307      	stmia	r3!, {r0, r1, r2}
c0de06c0:	a801      	add	r0, sp, #4
c0de06c2:	2101      	movs	r1, #1
c0de06c4:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de06c8:	f006 fa90 	bl	c0de6bec <io_send_response_buffers>
c0de06cc:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06ce <io_send_sw>:
c0de06ce:	b580      	push	{r7, lr}
c0de06d0:	4602      	mov	r2, r0
c0de06d2:	2000      	movs	r0, #0
c0de06d4:	2100      	movs	r1, #0
c0de06d6:	f006 fa89 	bl	c0de6bec <io_send_response_buffers>
c0de06da:	bd80      	pop	{r7, pc}

c0de06dc <handler_cmd_keccakH>:
c0de06dc:	b510      	push	{r4, lr}
c0de06de:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06e0:	4604      	mov	r4, r0
c0de06e2:	4668      	mov	r0, sp
c0de06e4:	2106      	movs	r1, #6
c0de06e6:	2220      	movs	r2, #32
c0de06e8:	f006 fc38 	bl	c0de6f5c <cx_hash_init_ex>
c0de06ec:	b950      	cbnz	r0, c0de0704 <handler_cmd_keccakH+0x28>
c0de06ee:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06f2:	4668      	mov	r0, sp
c0de06f4:	f006 fc37 	bl	c0de6f66 <cx_hash_update>
c0de06f8:	b920      	cbnz	r0, c0de0704 <handler_cmd_keccakH+0x28>
c0de06fa:	4668      	mov	r0, sp
c0de06fc:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06fe:	f006 fc28 	bl	c0de6f52 <cx_hash_final>
c0de0702:	b118      	cbz	r0, c0de070c <handler_cmd_keccakH+0x30>
c0de0704:	f001 f860 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0708:	b072      	add	sp, #456	@ 0x1c8
c0de070a:	bd10      	pop	{r4, pc}
c0de070c:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de070e:	f001 f87a 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de0712:	2000      	movs	r0, #0
c0de0714:	e7f8      	b.n	c0de0708 <handler_cmd_keccakH+0x2c>
	...

c0de0718 <handler_cmd_bolos_stretch>:
c0de0718:	b510      	push	{r4, lr}
c0de071a:	b0a4      	sub	sp, #144	@ 0x90
c0de071c:	f001 f850 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0720:	bb90      	cbnz	r0, c0de0788 <handler_cmd_bolos_stretch+0x70>
c0de0722:	ac14      	add	r4, sp, #80	@ 0x50
c0de0724:	491d      	ldr	r1, [pc, #116]	@ (c0de079c <handler_cmd_bolos_stretch+0x84>)
c0de0726:	2220      	movs	r2, #32
c0de0728:	4620      	mov	r0, r4
c0de072a:	4479      	add	r1, pc
c0de072c:	f007 f84a 	bl	c0de77c4 <__aeabi_memcpy>
c0de0730:	a80c      	add	r0, sp, #48	@ 0x30
c0de0732:	491b      	ldr	r1, [pc, #108]	@ (c0de07a0 <handler_cmd_bolos_stretch+0x88>)
c0de0734:	2220      	movs	r2, #32
c0de0736:	4479      	add	r1, pc
c0de0738:	f007 f844 	bl	c0de77c4 <__aeabi_memcpy>
c0de073c:	a804      	add	r0, sp, #16
c0de073e:	4919      	ldr	r1, [pc, #100]	@ (c0de07a4 <handler_cmd_bolos_stretch+0x8c>)
c0de0740:	2220      	movs	r2, #32
c0de0742:	4479      	add	r1, pc
c0de0744:	f007 f83e 	bl	c0de77c4 <__aeabi_memcpy>
c0de0748:	a803      	add	r0, sp, #12
c0de074a:	2120      	movs	r1, #32
c0de074c:	4622      	mov	r2, r4
c0de074e:	f001 f848 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de0752:	b9c8      	cbnz	r0, c0de0788 <handler_cmd_bolos_stretch+0x70>
c0de0754:	a802      	add	r0, sp, #8
c0de0756:	aa0c      	add	r2, sp, #48	@ 0x30
c0de0758:	f001 f839 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de075c:	b9a0      	cbnz	r0, c0de0788 <handler_cmd_bolos_stretch+0x70>
c0de075e:	a801      	add	r0, sp, #4
c0de0760:	aa04      	add	r2, sp, #16
c0de0762:	f001 f834 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de0766:	b978      	cbnz	r0, c0de0788 <handler_cmd_bolos_stretch+0x70>
c0de0768:	4668      	mov	r0, sp
c0de076a:	f001 f837 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de076e:	b958      	cbnz	r0, c0de0788 <handler_cmd_bolos_stretch+0x70>
c0de0770:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de0774:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de0778:	f006 fed4 	bl	c0de7524 <cx_bn_mod_add>
c0de077c:	b920      	cbnz	r0, c0de0788 <handler_cmd_bolos_stretch+0x70>
c0de077e:	9800      	ldr	r0, [sp, #0]
c0de0780:	a91c      	add	r1, sp, #112	@ 0x70
c0de0782:	f001 f828 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0786:	b118      	cbz	r0, c0de0790 <handler_cmd_bolos_stretch+0x78>
c0de0788:	f001 f81e 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de078c:	b024      	add	sp, #144	@ 0x90
c0de078e:	bd10      	pop	{r4, pc}
c0de0790:	a81c      	add	r0, sp, #112	@ 0x70
c0de0792:	f001 f838 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de0796:	2000      	movs	r0, #0
c0de0798:	e7f8      	b.n	c0de078c <handler_cmd_bolos_stretch+0x74>
c0de079a:	bf00      	nop
c0de079c:	00007772 	.word	0x00007772
c0de07a0:	000076e6 	.word	0x000076e6
c0de07a4:	0000785a 	.word	0x0000785a

c0de07a8 <handler_cmd_Poseidon>:
c0de07a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de07ac:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de07b0:	4604      	mov	r4, r0
c0de07b2:	a860      	add	r0, sp, #384	@ 0x180
c0de07b4:	493c      	ldr	r1, [pc, #240]	@ (c0de08a8 <handler_cmd_Poseidon+0x100>)
c0de07b6:	22a0      	movs	r2, #160	@ 0xa0
c0de07b8:	4479      	add	r1, pc
c0de07ba:	f007 f803 	bl	c0de77c4 <__aeabi_memcpy>
c0de07be:	f000 ffff 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de07c2:	bb60      	cbnz	r0, c0de081e <handler_cmd_Poseidon+0x76>
c0de07c4:	2000      	movs	r0, #0
c0de07c6:	a948      	add	r1, sp, #288	@ 0x120
c0de07c8:	22ff      	movs	r2, #255	@ 0xff
c0de07ca:	2860      	cmp	r0, #96	@ 0x60
c0de07cc:	d002      	beq.n	c0de07d4 <handler_cmd_Poseidon+0x2c>
c0de07ce:	540a      	strb	r2, [r1, r0]
c0de07d0:	3001      	adds	r0, #1
c0de07d2:	e7fa      	b.n	c0de07ca <handler_cmd_Poseidon+0x22>
c0de07d4:	4935      	ldr	r1, [pc, #212]	@ (c0de08ac <handler_cmd_Poseidon+0x104>)
c0de07d6:	466d      	mov	r5, sp
c0de07d8:	2220      	movs	r2, #32
c0de07da:	4628      	mov	r0, r5
c0de07dc:	4479      	add	r1, pc
c0de07de:	f006 fff1 	bl	c0de77c4 <__aeabi_memcpy>
c0de07e2:	a809      	add	r0, sp, #36	@ 0x24
c0de07e4:	2120      	movs	r1, #32
c0de07e6:	462a      	mov	r2, r5
c0de07e8:	f000 fffb 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de07ec:	b9b8      	cbnz	r0, c0de081e <handler_cmd_Poseidon+0x76>
c0de07ee:	a808      	add	r0, sp, #32
c0de07f0:	466a      	mov	r2, sp
c0de07f2:	f000 ffec 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de07f6:	b990      	cbnz	r0, c0de081e <handler_cmd_Poseidon+0x76>
c0de07f8:	a80a      	add	r0, sp, #40	@ 0x28
c0de07fa:	2120      	movs	r1, #32
c0de07fc:	f006 fed8 	bl	c0de75b0 <cx_mont_alloc>
c0de0800:	b968      	cbnz	r0, c0de081e <handler_cmd_Poseidon+0x76>
c0de0802:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de0804:	a80a      	add	r0, sp, #40	@ 0x28
c0de0806:	f006 fedd 	bl	c0de75c4 <cx_mont_init>
c0de080a:	b940      	cbnz	r0, c0de081e <handler_cmd_Poseidon+0x76>
c0de080c:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de0810:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0812:	2105      	movs	r1, #5
c0de0814:	2205      	movs	r2, #5
c0de0816:	4640      	mov	r0, r8
c0de0818:	f002 fdd0 	bl	c0de33bc <Poseidon_alloc_init>
c0de081c:	b128      	cbz	r0, c0de082a <handler_cmd_Poseidon+0x82>
c0de081e:	f000 ffd3 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0822:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de0826:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de082a:	2700      	movs	r7, #0
c0de082c:	ae60      	add	r6, sp, #384	@ 0x180
c0de082e:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de0830:	4287      	cmp	r7, r0
c0de0832:	d212      	bcs.n	c0de085a <handler_cmd_Poseidon+0xb2>
c0de0834:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de0838:	4631      	mov	r1, r6
c0de083a:	2220      	movs	r2, #32
c0de083c:	69e8      	ldr	r0, [r5, #28]
c0de083e:	f006 fe21 	bl	c0de7484 <cx_bn_init>
c0de0842:	2800      	cmp	r0, #0
c0de0844:	d1eb      	bne.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de0846:	69e8      	ldr	r0, [r5, #28]
c0de0848:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de084a:	4601      	mov	r1, r0
c0de084c:	f006 fec4 	bl	c0de75d8 <cx_mont_to_montgomery>
c0de0850:	3701      	adds	r7, #1
c0de0852:	3620      	adds	r6, #32
c0de0854:	2800      	cmp	r0, #0
c0de0856:	d0ea      	beq.n	c0de082e <handler_cmd_Poseidon+0x86>
c0de0858:	e7e1      	b.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de085a:	aa08      	add	r2, sp, #32
c0de085c:	4640      	mov	r0, r8
c0de085e:	2100      	movs	r1, #0
c0de0860:	2301      	movs	r3, #1
c0de0862:	f002 fe11 	bl	c0de3488 <Poseidon>
c0de0866:	6820      	ldr	r0, [r4, #0]
c0de0868:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de086a:	7800      	ldrb	r0, [r0, #0]
c0de086c:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de0870:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de0874:	4601      	mov	r1, r0
c0de0876:	f006 febb 	bl	c0de75f0 <cx_mont_from_montgomery>
c0de087a:	2800      	cmp	r0, #0
c0de087c:	d1cf      	bne.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de087e:	6820      	ldr	r0, [r4, #0]
c0de0880:	a948      	add	r1, sp, #288	@ 0x120
c0de0882:	f000 ffa8 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0886:	2800      	cmp	r0, #0
c0de0888:	d1c9      	bne.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de088a:	a848      	add	r0, sp, #288	@ 0x120
c0de088c:	2160      	movs	r1, #96	@ 0x60
c0de088e:	f7ff ff13 	bl	c0de06b8 <io_send_response_pointer>
c0de0892:	a808      	add	r0, sp, #32
c0de0894:	f006 fde2 	bl	c0de745c <cx_bn_destroy>
c0de0898:	2800      	cmp	r0, #0
c0de089a:	d1c0      	bne.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de089c:	f006 fdc0 	bl	c0de7420 <cx_bn_unlock>
c0de08a0:	2800      	cmp	r0, #0
c0de08a2:	d1bc      	bne.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de08a4:	2000      	movs	r0, #0
c0de08a6:	e7bc      	b.n	c0de0822 <handler_cmd_Poseidon+0x7a>
c0de08a8:	000078c4 	.word	0x000078c4
c0de08ac:	00007820 	.word	0x00007820

c0de08b0 <handler_cmd_Poseidon_ithRC>:
c0de08b0:	b570      	push	{r4, r5, r6, lr}
c0de08b2:	b0d0      	sub	sp, #320	@ 0x140
c0de08b4:	4604      	mov	r4, r0
c0de08b6:	f000 ff83 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de08ba:	bba0      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de08bc:	a848      	add	r0, sp, #288	@ 0x120
c0de08be:	491d      	ldr	r1, [pc, #116]	@ (c0de0934 <handler_cmd_Poseidon_ithRC+0x84>)
c0de08c0:	2220      	movs	r2, #32
c0de08c2:	4479      	add	r1, pc
c0de08c4:	f006 ff7e 	bl	c0de77c4 <__aeabi_memcpy>
c0de08c8:	ad01      	add	r5, sp, #4
c0de08ca:	491b      	ldr	r1, [pc, #108]	@ (c0de0938 <handler_cmd_Poseidon_ithRC+0x88>)
c0de08cc:	2220      	movs	r2, #32
c0de08ce:	4628      	mov	r0, r5
c0de08d0:	4479      	add	r1, pc
c0de08d2:	f006 ff77 	bl	c0de77c4 <__aeabi_memcpy>
c0de08d6:	a809      	add	r0, sp, #36	@ 0x24
c0de08d8:	2120      	movs	r1, #32
c0de08da:	462a      	mov	r2, r5
c0de08dc:	f000 ff81 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de08e0:	bb08      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de08e2:	a80a      	add	r0, sp, #40	@ 0x28
c0de08e4:	2120      	movs	r1, #32
c0de08e6:	f006 fe63 	bl	c0de75b0 <cx_mont_alloc>
c0de08ea:	b9e0      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de08ec:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08ee:	a80a      	add	r0, sp, #40	@ 0x28
c0de08f0:	f006 fe68 	bl	c0de75c4 <cx_mont_init>
c0de08f4:	b9b8      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de08f6:	a80c      	add	r0, sp, #48	@ 0x30
c0de08f8:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08fa:	2105      	movs	r1, #5
c0de08fc:	2205      	movs	r2, #5
c0de08fe:	f002 fd5d 	bl	c0de33bc <Poseidon_alloc_init>
c0de0902:	b980      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de0904:	6820      	ldr	r0, [r4, #0]
c0de0906:	7806      	ldrb	r6, [r0, #0]
c0de0908:	ac0c      	add	r4, sp, #48	@ 0x30
c0de090a:	ad48      	add	r5, sp, #288	@ 0x120
c0de090c:	b12e      	cbz	r6, c0de091a <handler_cmd_Poseidon_ithRC+0x6a>
c0de090e:	4620      	mov	r0, r4
c0de0910:	4629      	mov	r1, r5
c0de0912:	f002 fd4f 	bl	c0de33b4 <Poseidon_getNext_RC>
c0de0916:	3e01      	subs	r6, #1
c0de0918:	e7f8      	b.n	c0de090c <handler_cmd_Poseidon_ithRC+0x5c>
c0de091a:	a848      	add	r0, sp, #288	@ 0x120
c0de091c:	f000 ff73 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de0920:	f006 fd7e 	bl	c0de7420 <cx_bn_unlock>
c0de0924:	b118      	cbz	r0, c0de092e <handler_cmd_Poseidon_ithRC+0x7e>
c0de0926:	f000 ff4f 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de092a:	b050      	add	sp, #320	@ 0x140
c0de092c:	bd70      	pop	{r4, r5, r6, pc}
c0de092e:	2000      	movs	r0, #0
c0de0930:	e7fb      	b.n	c0de092a <handler_cmd_Poseidon_ithRC+0x7a>
c0de0932:	bf00      	nop
c0de0934:	0000751a 	.word	0x0000751a
c0de0938:	0000772c 	.word	0x0000772c

c0de093c <handler_cmd_tEddsaPoseidon_Kpub>:
c0de093c:	b5b0      	push	{r4, r5, r7, lr}
c0de093e:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de0942:	6801      	ldr	r1, [r0, #0]
c0de0944:	2200      	movs	r2, #0
c0de0946:	23ff      	movs	r3, #255	@ 0xff
c0de0948:	780d      	ldrb	r5, [r1, #0]
c0de094a:	ac5a      	add	r4, sp, #360	@ 0x168
c0de094c:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de0950:	d002      	beq.n	c0de0958 <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de0952:	54a3      	strb	r3, [r4, r2]
c0de0954:	3201      	adds	r2, #1
c0de0956:	e7f9      	b.n	c0de094c <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de0958:	6840      	ldr	r0, [r0, #4]
c0de095a:	3101      	adds	r1, #1
c0de095c:	aa1a      	add	r2, sp, #104	@ 0x68
c0de095e:	3801      	subs	r0, #1
c0de0960:	b128      	cbz	r0, c0de096e <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de0962:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de0966:	3801      	subs	r0, #1
c0de0968:	f802 3b01 	strb.w	r3, [r2], #1
c0de096c:	e7f8      	b.n	c0de0960 <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de096e:	f000 ff27 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0972:	b9e8      	cbnz	r0, c0de09b0 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0974:	a804      	add	r0, sp, #16
c0de0976:	f000 ff52 	bl	c0de181e <OUTLINED_FUNCTION_12>
c0de097a:	b9c8      	cbnz	r0, c0de09b0 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de097c:	a804      	add	r0, sp, #16
c0de097e:	a901      	add	r1, sp, #4
c0de0980:	f002 f800 	bl	c0de2984 <tEdwards_alloc>
c0de0984:	b9a0      	cbnz	r0, c0de09b0 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0986:	a804      	add	r0, sp, #16
c0de0988:	a91a      	add	r1, sp, #104	@ 0x68
c0de098a:	aa01      	add	r2, sp, #4
c0de098c:	f001 fa8c 	bl	c0de1ea8 <zkn_prv2pub>
c0de0990:	b970      	cbnz	r0, c0de09b0 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0992:	a804      	add	r0, sp, #16
c0de0994:	f104 0320 	add.w	r3, r4, #32
c0de0998:	a901      	add	r1, sp, #4
c0de099a:	f000 ff37 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de099e:	b938      	cbnz	r0, c0de09b0 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09a0:	9804      	ldr	r0, [sp, #16]
c0de09a2:	0041      	lsls	r1, r0, #1
c0de09a4:	a85a      	add	r0, sp, #360	@ 0x168
c0de09a6:	f7ff fe87 	bl	c0de06b8 <io_send_response_pointer>
c0de09aa:	f006 fd39 	bl	c0de7420 <cx_bn_unlock>
c0de09ae:	b120      	cbz	r0, c0de09ba <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de09b0:	f000 ff0a 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de09b4:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de09b8:	bdb0      	pop	{r4, r5, r7, pc}
c0de09ba:	2000      	movs	r0, #0
c0de09bc:	e7fa      	b.n	c0de09b4 <handler_cmd_tEddsaPoseidon_Kpub+0x78>

c0de09be <handler_cmd_tEddsaPoseidon_Sign>:
c0de09be:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de09c0:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de09c4:	4606      	mov	r6, r0
c0de09c6:	6800      	ldr	r0, [r0, #0]
c0de09c8:	2100      	movs	r1, #0
c0de09ca:	22ff      	movs	r2, #255	@ 0xff
c0de09cc:	7805      	ldrb	r5, [r0, #0]
c0de09ce:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de09d0:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de09d4:	d002      	beq.n	c0de09dc <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de09d6:	5462      	strb	r2, [r4, r1]
c0de09d8:	3101      	adds	r1, #1
c0de09da:	e7f9      	b.n	c0de09d0 <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de09dc:	6871      	ldr	r1, [r6, #4]
c0de09de:	3001      	adds	r0, #1
c0de09e0:	aa2b      	add	r2, sp, #172	@ 0xac
c0de09e2:	3901      	subs	r1, #1
c0de09e4:	b129      	cbz	r1, c0de09f2 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de09e6:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de09ea:	3901      	subs	r1, #1
c0de09ec:	f802 3b01 	strb.w	r3, [r2], #1
c0de09f0:	e7f8      	b.n	c0de09e4 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de09f2:	f000 fee5 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de09f6:	bba0      	cbnz	r0, c0de0a62 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09f8:	6830      	ldr	r0, [r6, #0]
c0de09fa:	aa0a      	add	r2, sp, #40	@ 0x28
c0de09fc:	2100      	movs	r1, #0
c0de09fe:	ab02      	add	r3, sp, #8
c0de0a00:	2920      	cmp	r1, #32
c0de0a02:	d007      	beq.n	c0de0a14 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de0a04:	1846      	adds	r6, r0, r1
c0de0a06:	7877      	ldrb	r7, [r6, #1]
c0de0a08:	5457      	strb	r7, [r2, r1]
c0de0a0a:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de0a0e:	545e      	strb	r6, [r3, r1]
c0de0a10:	3101      	adds	r1, #1
c0de0a12:	e7f5      	b.n	c0de0a00 <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de0a14:	a815      	add	r0, sp, #84	@ 0x54
c0de0a16:	f000 ff02 	bl	c0de181e <OUTLINED_FUNCTION_12>
c0de0a1a:	bb10      	cbnz	r0, c0de0a62 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a1c:	a815      	add	r0, sp, #84	@ 0x54
c0de0a1e:	a912      	add	r1, sp, #72	@ 0x48
c0de0a20:	f001 ffb0 	bl	c0de2984 <tEdwards_alloc>
c0de0a24:	b9e8      	cbnz	r0, c0de0a62 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a26:	a815      	add	r0, sp, #84	@ 0x54
c0de0a28:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a2a:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a2c:	f001 fa3c 	bl	c0de1ea8 <zkn_prv2pub>
c0de0a30:	b9b8      	cbnz	r0, c0de0a62 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a32:	a815      	add	r0, sp, #84	@ 0x54
c0de0a34:	f104 0320 	add.w	r3, r4, #32
c0de0a38:	a912      	add	r1, sp, #72	@ 0x48
c0de0a3a:	f000 fee7 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de0a3e:	b980      	cbnz	r0, c0de0a62 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a40:	2020      	movs	r0, #32
c0de0a42:	e9cd 0400 	strd	r0, r4, [sp]
c0de0a46:	a815      	add	r0, sp, #84	@ 0x54
c0de0a48:	a90a      	add	r1, sp, #40	@ 0x28
c0de0a4a:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a4c:	ab02      	add	r3, sp, #8
c0de0a4e:	f001 fa53 	bl	c0de1ef8 <EddsaPoseidon_Sign_final>
c0de0a52:	b930      	cbnz	r0, c0de0a62 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a54:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a56:	2160      	movs	r1, #96	@ 0x60
c0de0a58:	f7ff fe2e 	bl	c0de06b8 <io_send_response_pointer>
c0de0a5c:	f006 fce0 	bl	c0de7420 <cx_bn_unlock>
c0de0a60:	b120      	cbz	r0, c0de0a6c <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0a62:	f000 feb1 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0a66:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de0a6a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0a6c:	2000      	movs	r0, #0
c0de0a6e:	e7fa      	b.n	c0de0a66 <handler_cmd_tEddsaPoseidon_Sign+0xa8>

c0de0a70 <handler_cmd_tEddsaPoseidon>:
c0de0a70:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0a74:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0a76:	4605      	mov	r5, r0
c0de0a78:	6800      	ldr	r0, [r0, #0]
c0de0a7a:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de0a7e:	21ff      	movs	r1, #255	@ 0xff
c0de0a80:	7806      	ldrb	r6, [r0, #0]
c0de0a82:	2000      	movs	r0, #0
c0de0a84:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0a88:	d002      	beq.n	c0de0a90 <handler_cmd_tEddsaPoseidon+0x20>
c0de0a8a:	5421      	strb	r1, [r4, r0]
c0de0a8c:	3001      	adds	r0, #1
c0de0a8e:	e7f9      	b.n	c0de0a84 <handler_cmd_tEddsaPoseidon+0x14>
c0de0a90:	f000 fe96 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0a94:	2800      	cmp	r0, #0
c0de0a96:	d154      	bne.n	c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a98:	af14      	add	r7, sp, #80	@ 0x50
c0de0a9a:	4631      	mov	r1, r6
c0de0a9c:	4638      	mov	r0, r7
c0de0a9e:	f002 f8f1 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de0aa2:	2800      	cmp	r0, #0
c0de0aa4:	d14d      	bne.n	c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aa6:	f107 060c 	add.w	r6, r7, #12
c0de0aaa:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0aae:	4638      	mov	r0, r7
c0de0ab0:	4631      	mov	r1, r6
c0de0ab2:	f002 f890 	bl	c0de2bd6 <tEdwards_IsOnCurve>
c0de0ab6:	2800      	cmp	r0, #0
c0de0ab8:	d143      	bne.n	c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aba:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0abe:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0ac2:	2901      	cmp	r1, #1
c0de0ac4:	d13d      	bne.n	c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ac6:	4922      	ldr	r1, [pc, #136]	@ (c0de0b50 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0ac8:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0acc:	2220      	movs	r2, #32
c0de0ace:	4650      	mov	r0, sl
c0de0ad0:	4479      	add	r1, pc
c0de0ad2:	f006 fe77 	bl	c0de77c4 <__aeabi_memcpy>
c0de0ad6:	af01      	add	r7, sp, #4
c0de0ad8:	491e      	ldr	r1, [pc, #120]	@ (c0de0b54 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ada:	2220      	movs	r2, #32
c0de0adc:	4638      	mov	r0, r7
c0de0ade:	4479      	add	r1, pc
c0de0ae0:	f006 fe70 	bl	c0de77c4 <__aeabi_memcpy>
c0de0ae4:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0ae8:	a814      	add	r0, sp, #80	@ 0x50
c0de0aea:	4651      	mov	r1, sl
c0de0aec:	463a      	mov	r2, r7
c0de0aee:	4643      	mov	r3, r8
c0de0af0:	f002 fab9 	bl	c0de3066 <tEdwards_alloc_init>
c0de0af4:	bb28      	cbnz	r0, c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0af6:	a814      	add	r0, sp, #80	@ 0x50
c0de0af8:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0afc:	4631      	mov	r1, r6
c0de0afe:	f002 f86a 	bl	c0de2bd6 <tEdwards_IsOnCurve>
c0de0b02:	b9f0      	cbnz	r0, c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b04:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0b08:	2801      	cmp	r0, #1
c0de0b0a:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0b0e:	d118      	bne.n	c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b10:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0b14:	f8cd 8000 	str.w	r8, [sp]
c0de0b18:	1c42      	adds	r2, r0, #1
c0de0b1a:	1e4b      	subs	r3, r1, #1
c0de0b1c:	a814      	add	r0, sp, #80	@ 0x50
c0de0b1e:	4631      	mov	r1, r6
c0de0b20:	f002 fb26 	bl	c0de3170 <tEdwards_scalarMul>
c0de0b24:	b968      	cbnz	r0, c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b26:	a814      	add	r0, sp, #80	@ 0x50
c0de0b28:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b2c:	a911      	add	r1, sp, #68	@ 0x44
c0de0b2e:	f000 fe6d 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de0b32:	b930      	cbnz	r0, c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b34:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b38:	f000 fe5d 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0b3c:	f006 fc70 	bl	c0de7420 <cx_bn_unlock>
c0de0b40:	b120      	cbz	r0, c0de0b4c <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b42:	f000 fe41 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0b46:	b06b      	add	sp, #428	@ 0x1ac
c0de0b48:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b4c:	2000      	movs	r0, #0
c0de0b4e:	e7fa      	b.n	c0de0b46 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b50:	0000754c 	.word	0x0000754c
c0de0b54:	0000755e 	.word	0x0000755e

c0de0b58 <handler_cmd_tEdwards>:
c0de0b58:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0b5a:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0b5c:	4605      	mov	r5, r0
c0de0b5e:	6840      	ldr	r0, [r0, #4]
c0de0b60:	2841      	cmp	r0, #65	@ 0x41
c0de0b62:	d801      	bhi.n	c0de0b68 <handler_cmd_tEdwards+0x10>
c0de0b64:	2802      	cmp	r0, #2
c0de0b66:	d202      	bcs.n	c0de0b6e <handler_cmd_tEdwards+0x16>
c0de0b68:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0b6c:	e015      	b.n	c0de0b9a <handler_cmd_tEdwards+0x42>
c0de0b6e:	6828      	ldr	r0, [r5, #0]
c0de0b70:	21ff      	movs	r1, #255	@ 0xff
c0de0b72:	7806      	ldrb	r6, [r0, #0]
c0de0b74:	2000      	movs	r0, #0
c0de0b76:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0b78:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0b7c:	d002      	beq.n	c0de0b84 <handler_cmd_tEdwards+0x2c>
c0de0b7e:	5421      	strb	r1, [r4, r0]
c0de0b80:	3001      	adds	r0, #1
c0de0b82:	e7f9      	b.n	c0de0b78 <handler_cmd_tEdwards+0x20>
c0de0b84:	f000 fe1c 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0b88:	b920      	cbnz	r0, c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0b8a:	a819      	add	r0, sp, #100	@ 0x64
c0de0b8c:	4631      	mov	r1, r6
c0de0b8e:	f002 f879 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de0b92:	b120      	cbz	r0, c0de0b9e <handler_cmd_tEdwards+0x46>
c0de0b94:	b280      	uxth	r0, r0
c0de0b96:	f7ff fd9a 	bl	c0de06ce <io_send_sw>
c0de0b9a:	b06f      	add	sp, #444	@ 0x1bc
c0de0b9c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0b9e:	2e02      	cmp	r6, #2
c0de0ba0:	d00c      	beq.n	c0de0bbc <handler_cmd_tEdwards+0x64>
c0de0ba2:	2e01      	cmp	r6, #1
c0de0ba4:	d128      	bne.n	c0de0bf8 <handler_cmd_tEdwards+0xa0>
c0de0ba6:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0ba8:	4942      	ldr	r1, [pc, #264]	@ (c0de0cb4 <handler_cmd_tEdwards+0x15c>)
c0de0baa:	2220      	movs	r2, #32
c0de0bac:	4630      	mov	r0, r6
c0de0bae:	4479      	add	r1, pc
c0de0bb0:	f006 fe08 	bl	c0de77c4 <__aeabi_memcpy>
c0de0bb4:	af03      	add	r7, sp, #12
c0de0bb6:	4940      	ldr	r1, [pc, #256]	@ (c0de0cb8 <handler_cmd_tEdwards+0x160>)
c0de0bb8:	4479      	add	r1, pc
c0de0bba:	e009      	b.n	c0de0bd0 <handler_cmd_tEdwards+0x78>
c0de0bbc:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0bbe:	493f      	ldr	r1, [pc, #252]	@ (c0de0cbc <handler_cmd_tEdwards+0x164>)
c0de0bc0:	2220      	movs	r2, #32
c0de0bc2:	4630      	mov	r0, r6
c0de0bc4:	4479      	add	r1, pc
c0de0bc6:	f006 fdfd 	bl	c0de77c4 <__aeabi_memcpy>
c0de0bca:	af03      	add	r7, sp, #12
c0de0bcc:	493c      	ldr	r1, [pc, #240]	@ (c0de0cc0 <handler_cmd_tEdwards+0x168>)
c0de0bce:	4479      	add	r1, pc
c0de0bd0:	4638      	mov	r0, r7
c0de0bd2:	2220      	movs	r2, #32
c0de0bd4:	f006 fdf6 	bl	c0de77c4 <__aeabi_memcpy>
c0de0bd8:	a819      	add	r0, sp, #100	@ 0x64
c0de0bda:	ab16      	add	r3, sp, #88	@ 0x58
c0de0bdc:	4631      	mov	r1, r6
c0de0bde:	463a      	mov	r2, r7
c0de0be0:	f002 fa41 	bl	c0de3066 <tEdwards_alloc_init>
c0de0be4:	2800      	cmp	r0, #0
c0de0be6:	d1d5      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0be8:	a819      	add	r0, sp, #100	@ 0x64
c0de0bea:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bec:	aa03      	add	r2, sp, #12
c0de0bee:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bf0:	f002 fa39 	bl	c0de3066 <tEdwards_alloc_init>
c0de0bf4:	2800      	cmp	r0, #0
c0de0bf6:	d1cd      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0bf8:	2000      	movs	r0, #0
c0de0bfa:	f10d 020b 	add.w	r2, sp, #11
c0de0bfe:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0c02:	a819      	add	r0, sp, #100	@ 0x64
c0de0c04:	a916      	add	r1, sp, #88	@ 0x58
c0de0c06:	f001 ffe6 	bl	c0de2bd6 <tEdwards_IsOnCurve>
c0de0c0a:	2800      	cmp	r0, #0
c0de0c0c:	d1c2      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c0e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c12:	2801      	cmp	r0, #1
c0de0c14:	d142      	bne.n	c0de0c9c <handler_cmd_tEdwards+0x144>
c0de0c16:	a819      	add	r0, sp, #100	@ 0x64
c0de0c18:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c1a:	f10d 020b 	add.w	r2, sp, #11
c0de0c1e:	4631      	mov	r1, r6
c0de0c20:	f001 ffd9 	bl	c0de2bd6 <tEdwards_IsOnCurve>
c0de0c24:	2800      	cmp	r0, #0
c0de0c26:	d1b5      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c28:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c2c:	2801      	cmp	r0, #1
c0de0c2e:	d138      	bne.n	c0de0ca2 <handler_cmd_tEdwards+0x14a>
c0de0c30:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c32:	f10d 010b 	add.w	r1, sp, #11
c0de0c36:	f006 fcb1 	bl	c0de759c <cx_bn_is_prime>
c0de0c3a:	2800      	cmp	r0, #0
c0de0c3c:	d1aa      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c3e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c42:	2801      	cmp	r0, #1
c0de0c44:	d130      	bne.n	c0de0ca8 <handler_cmd_tEdwards+0x150>
c0de0c46:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c48:	f10d 010b 	add.w	r1, sp, #11
c0de0c4c:	f006 fca6 	bl	c0de759c <cx_bn_is_prime>
c0de0c50:	2800      	cmp	r0, #0
c0de0c52:	d19f      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c54:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c58:	2801      	cmp	r0, #1
c0de0c5a:	d128      	bne.n	c0de0cae <handler_cmd_tEdwards+0x156>
c0de0c5c:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0c60:	9600      	str	r6, [sp, #0]
c0de0c62:	1c42      	adds	r2, r0, #1
c0de0c64:	1e4b      	subs	r3, r1, #1
c0de0c66:	a819      	add	r0, sp, #100	@ 0x64
c0de0c68:	a916      	add	r1, sp, #88	@ 0x58
c0de0c6a:	f002 fa81 	bl	c0de3170 <tEdwards_scalarMul>
c0de0c6e:	2800      	cmp	r0, #0
c0de0c70:	d190      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c72:	a819      	add	r0, sp, #100	@ 0x64
c0de0c74:	f104 0320 	add.w	r3, r4, #32
c0de0c78:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c7a:	f000 fdc7 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de0c7e:	2800      	cmp	r0, #0
c0de0c80:	f47f af88 	bne.w	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c84:	f006 fbcc 	bl	c0de7420 <cx_bn_unlock>
c0de0c88:	2800      	cmp	r0, #0
c0de0c8a:	f47f af83 	bne.w	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c8e:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0c90:	0041      	lsls	r1, r0, #1
c0de0c92:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0c94:	f7ff fd10 	bl	c0de06b8 <io_send_response_pointer>
c0de0c98:	2000      	movs	r0, #0
c0de0c9a:	e77e      	b.n	c0de0b9a <handler_cmd_tEdwards+0x42>
c0de0c9c:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0ca0:	e779      	b.n	c0de0b96 <handler_cmd_tEdwards+0x3e>
c0de0ca2:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0ca6:	e776      	b.n	c0de0b96 <handler_cmd_tEdwards+0x3e>
c0de0ca8:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0cac:	e773      	b.n	c0de0b96 <handler_cmd_tEdwards+0x3e>
c0de0cae:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0cb2:	e770      	b.n	c0de0b96 <handler_cmd_tEdwards+0x3e>
c0de0cb4:	0000728e 	.word	0x0000728e
c0de0cb8:	00007304 	.word	0x00007304
c0de0cbc:	00007298 	.word	0x00007298
c0de0cc0:	000071ce 	.word	0x000071ce

c0de0cc4 <handler_cmd_Interpolate>:
c0de0cc4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0cc8:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0ccc:	4605      	mov	r5, r0
c0de0cce:	6800      	ldr	r0, [r0, #0]
c0de0cd0:	22ff      	movs	r2, #255	@ 0xff
c0de0cd2:	7804      	ldrb	r4, [r0, #0]
c0de0cd4:	2000      	movs	r0, #0
c0de0cd6:	a944      	add	r1, sp, #272	@ 0x110
c0de0cd8:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0cdc:	d002      	beq.n	c0de0ce4 <handler_cmd_Interpolate+0x20>
c0de0cde:	540a      	strb	r2, [r1, r0]
c0de0ce0:	3001      	adds	r0, #1
c0de0ce2:	e7f9      	b.n	c0de0cd8 <handler_cmd_Interpolate+0x14>
c0de0ce4:	f000 fd6c 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0ce8:	bb28      	cbnz	r0, c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0cea:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0cee:	4621      	mov	r1, r4
c0de0cf0:	4640      	mov	r0, r8
c0de0cf2:	f001 ffc7 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de0cf6:	b9f0      	cbnz	r0, c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0cf8:	a827      	add	r0, sp, #156	@ 0x9c
c0de0cfa:	f000 fd6f 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de0cfe:	b9d0      	cbnz	r0, c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0d00:	6828      	ldr	r0, [r5, #0]
c0de0d02:	2100      	movs	r1, #0
c0de0d04:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d06:	3001      	adds	r0, #1
c0de0d08:	2960      	cmp	r1, #96	@ 0x60
c0de0d0a:	d003      	beq.n	c0de0d14 <handler_cmd_Interpolate+0x50>
c0de0d0c:	5c43      	ldrb	r3, [r0, r1]
c0de0d0e:	5453      	strb	r3, [r2, r1]
c0de0d10:	3101      	adds	r1, #1
c0de0d12:	e7f9      	b.n	c0de0d08 <handler_cmd_Interpolate+0x44>
c0de0d14:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d16:	2100      	movs	r1, #0
c0de0d18:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d1a:	1d0c      	adds	r4, r1, #4
c0de0d1c:	2c10      	cmp	r4, #16
c0de0d1e:	d010      	beq.n	c0de0d42 <handler_cmd_Interpolate+0x7e>
c0de0d20:	1878      	adds	r0, r7, r1
c0de0d22:	2120      	movs	r1, #32
c0de0d24:	2320      	movs	r3, #32
c0de0d26:	f102 0520 	add.w	r5, r2, #32
c0de0d2a:	f006 fb8b 	bl	c0de7444 <cx_bn_alloc_init>
c0de0d2e:	2800      	cmp	r0, #0
c0de0d30:	462a      	mov	r2, r5
c0de0d32:	4621      	mov	r1, r4
c0de0d34:	d0f1      	beq.n	c0de0d1a <handler_cmd_Interpolate+0x56>
c0de0d36:	f000 fd47 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0d3a:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0d3e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0d42:	f108 000c 	add.w	r0, r8, #12
c0de0d46:	f04f 0a00 	mov.w	sl, #0
c0de0d4a:	2601      	movs	r6, #1
c0de0d4c:	f10d 0b0c 	add.w	fp, sp, #12
c0de0d50:	9001      	str	r0, [sp, #4]
c0de0d52:	ad44      	add	r5, sp, #272	@ 0x110
c0de0d54:	f1ba 0f0c 	cmp.w	sl, #12
c0de0d58:	d03b      	beq.n	c0de0dd2 <handler_cmd_Interpolate+0x10e>
c0de0d5a:	a828      	add	r0, sp, #160	@ 0xa0
c0de0d5c:	2120      	movs	r1, #32
c0de0d5e:	eb00 040a 	add.w	r4, r0, sl
c0de0d62:	4620      	mov	r0, r4
c0de0d64:	f006 fb64 	bl	c0de7430 <cx_bn_alloc>
c0de0d68:	2800      	cmp	r0, #0
c0de0d6a:	d1e4      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0d6c:	6820      	ldr	r0, [r4, #0]
c0de0d6e:	4631      	mov	r1, r6
c0de0d70:	f006 fb9e 	bl	c0de74b0 <cx_bn_set_u32>
c0de0d74:	2800      	cmp	r0, #0
c0de0d76:	d1de      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0d78:	4640      	mov	r0, r8
c0de0d7a:	4659      	mov	r1, fp
c0de0d7c:	f001 fe02 	bl	c0de2984 <tEdwards_alloc>
c0de0d80:	2800      	cmp	r0, #0
c0de0d82:	d1d8      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0d84:	9602      	str	r6, [sp, #8]
c0de0d86:	eb07 060a 	add.w	r6, r7, sl
c0de0d8a:	9901      	ldr	r1, [sp, #4]
c0de0d8c:	4640      	mov	r0, r8
c0de0d8e:	465b      	mov	r3, fp
c0de0d90:	4632      	mov	r2, r6
c0de0d92:	f002 f987 	bl	c0de30a4 <tEdwards_scalarMul_bn>
c0de0d96:	2800      	cmp	r0, #0
c0de0d98:	d1cd      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0d9a:	6820      	ldr	r0, [r4, #0]
c0de0d9c:	4629      	mov	r1, r5
c0de0d9e:	f000 fd1a 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0da2:	2800      	cmp	r0, #0
c0de0da4:	d1c7      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0da6:	6830      	ldr	r0, [r6, #0]
c0de0da8:	f105 0120 	add.w	r1, r5, #32
c0de0dac:	f000 fd13 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0db0:	2800      	cmp	r0, #0
c0de0db2:	d1c0      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0db4:	4640      	mov	r0, r8
c0de0db6:	4659      	mov	r1, fp
c0de0db8:	f002 f915 	bl	c0de2fe6 <tEdwards_normalize>
c0de0dbc:	9e02      	ldr	r6, [sp, #8]
c0de0dbe:	3540      	adds	r5, #64	@ 0x40
c0de0dc0:	f10b 0b0c 	add.w	fp, fp, #12
c0de0dc4:	f10a 0a04 	add.w	sl, sl, #4
c0de0dc8:	af2b      	add	r7, sp, #172	@ 0xac
c0de0dca:	3601      	adds	r6, #1
c0de0dcc:	2800      	cmp	r0, #0
c0de0dce:	d0c1      	beq.n	c0de0d54 <handler_cmd_Interpolate+0x90>
c0de0dd0:	e7b1      	b.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0dd2:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0dd4:	2303      	movs	r3, #3
c0de0dd6:	9000      	str	r0, [sp, #0]
c0de0dd8:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dda:	a928      	add	r1, sp, #160	@ 0xa0
c0de0ddc:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0dde:	f001 fa42 	bl	c0de2266 <zkn_frost_interpolate_secrets>
c0de0de2:	2800      	cmp	r0, #0
c0de0de4:	d1a7      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0de6:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0de8:	a944      	add	r1, sp, #272	@ 0x110
c0de0dea:	2220      	movs	r2, #32
c0de0dec:	31c0      	adds	r1, #192	@ 0xc0
c0de0dee:	f006 fb69 	bl	c0de74c4 <cx_bn_export>
c0de0df2:	2800      	cmp	r0, #0
c0de0df4:	d19f      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0df6:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0df8:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dfa:	ab03      	add	r3, sp, #12
c0de0dfc:	9901      	ldr	r1, [sp, #4]
c0de0dfe:	f002 f951 	bl	c0de30a4 <tEdwards_scalarMul_bn>
c0de0e02:	2800      	cmp	r0, #0
c0de0e04:	d197      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0e06:	a844      	add	r0, sp, #272	@ 0x110
c0de0e08:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e0c:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e0e:	a903      	add	r1, sp, #12
c0de0e10:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e12:	f002 f8c2 	bl	c0de2f9a <tEdwards_export>
c0de0e16:	2800      	cmp	r0, #0
c0de0e18:	d18d      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0e1a:	a844      	add	r0, sp, #272	@ 0x110
c0de0e1c:	f000 fceb 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0e20:	f006 fafe 	bl	c0de7420 <cx_bn_unlock>
c0de0e24:	2800      	cmp	r0, #0
c0de0e26:	f47f af86 	bne.w	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0e2a:	2000      	movs	r0, #0
c0de0e2c:	e785      	b.n	c0de0d3a <handler_cmd_Interpolate+0x76>

c0de0e2e <handler_cmd_Split>:
c0de0e2e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0e32:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0e36:	4604      	mov	r4, r0
c0de0e38:	6800      	ldr	r0, [r0, #0]
c0de0e3a:	22ff      	movs	r2, #255	@ 0xff
c0de0e3c:	7805      	ldrb	r5, [r0, #0]
c0de0e3e:	2000      	movs	r0, #0
c0de0e40:	a948      	add	r1, sp, #288	@ 0x120
c0de0e42:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0e46:	d002      	beq.n	c0de0e4e <handler_cmd_Split+0x20>
c0de0e48:	540a      	strb	r2, [r1, r0]
c0de0e4a:	3001      	adds	r0, #1
c0de0e4c:	e7f9      	b.n	c0de0e42 <handler_cmd_Split+0x14>
c0de0e4e:	f000 fcb7 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0e52:	bb90      	cbnz	r0, c0de0eba <handler_cmd_Split+0x8c>
c0de0e54:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e56:	f000 fce2 	bl	c0de181e <OUTLINED_FUNCTION_12>
c0de0e5a:	bb70      	cbnz	r0, c0de0eba <handler_cmd_Split+0x8c>
c0de0e5c:	6820      	ldr	r0, [r4, #0]
c0de0e5e:	2200      	movs	r2, #0
c0de0e60:	a91a      	add	r1, sp, #104	@ 0x68
c0de0e62:	3002      	adds	r0, #2
c0de0e64:	2a20      	cmp	r2, #32
c0de0e66:	d003      	beq.n	c0de0e70 <handler_cmd_Split+0x42>
c0de0e68:	5c83      	ldrb	r3, [r0, r2]
c0de0e6a:	548b      	strb	r3, [r1, r2]
c0de0e6c:	3201      	adds	r2, #1
c0de0e6e:	e7f9      	b.n	c0de0e64 <handler_cmd_Split+0x36>
c0de0e70:	6862      	ldr	r2, [r4, #4]
c0de0e72:	3a02      	subs	r2, #2
c0de0e74:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0e78:	f101 0220 	add.w	r2, r1, #32
c0de0e7c:	a888      	add	r0, sp, #544	@ 0x220
c0de0e7e:	2101      	movs	r1, #1
c0de0e80:	f006 f84b 	bl	c0de6f1a <cx_blake2b_512_hash_iovec>
c0de0e84:	b9c8      	cbnz	r0, c0de0eba <handler_cmd_Split+0x8c>
c0de0e86:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0e88:	2100      	movs	r1, #0
c0de0e8a:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0e8c:	1d0d      	adds	r5, r1, #4
c0de0e8e:	2d10      	cmp	r5, #16
c0de0e90:	d00b      	beq.n	c0de0eaa <handler_cmd_Split+0x7c>
c0de0e92:	1860      	adds	r0, r4, r1
c0de0e94:	2120      	movs	r1, #32
c0de0e96:	2320      	movs	r3, #32
c0de0e98:	f102 0620 	add.w	r6, r2, #32
c0de0e9c:	f006 fad2 	bl	c0de7444 <cx_bn_alloc_init>
c0de0ea0:	2800      	cmp	r0, #0
c0de0ea2:	4632      	mov	r2, r6
c0de0ea4:	4629      	mov	r1, r5
c0de0ea6:	d0f1      	beq.n	c0de0e8c <handler_cmd_Split+0x5e>
c0de0ea8:	e007      	b.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0eaa:	a80a      	add	r0, sp, #40	@ 0x28
c0de0eac:	f000 fc96 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de0eb0:	b918      	cbnz	r0, c0de0eba <handler_cmd_Split+0x8c>
c0de0eb2:	a809      	add	r0, sp, #36	@ 0x24
c0de0eb4:	f000 fc92 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de0eb8:	b128      	cbz	r0, c0de0ec6 <handler_cmd_Split+0x98>
c0de0eba:	f000 fc85 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0ebe:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0ec2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0ec6:	f04f 0800 	mov.w	r8, #0
c0de0eca:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0ece:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0ed0:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0ed4:	2400      	movs	r4, #0
c0de0ed6:	f1b8 0f10 	cmp.w	r8, #16
c0de0eda:	d04d      	beq.n	c0de0f78 <handler_cmd_Split+0x14a>
c0de0edc:	a805      	add	r0, sp, #20
c0de0ede:	2120      	movs	r1, #32
c0de0ee0:	eb00 0708 	add.w	r7, r0, r8
c0de0ee4:	4638      	mov	r0, r7
c0de0ee6:	f006 faa3 	bl	c0de7430 <cx_bn_alloc>
c0de0eea:	2800      	cmp	r0, #0
c0de0eec:	d1e5      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0eee:	a801      	add	r0, sp, #4
c0de0ef0:	2120      	movs	r1, #32
c0de0ef2:	eb00 0508 	add.w	r5, r0, r8
c0de0ef6:	4628      	mov	r0, r5
c0de0ef8:	f006 fa9a 	bl	c0de7430 <cx_bn_alloc>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1dc      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f00:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f02:	4621      	mov	r1, r4
c0de0f04:	f006 fad4 	bl	c0de74b0 <cx_bn_set_u32>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d1d6      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f0c:	6828      	ldr	r0, [r5, #0]
c0de0f0e:	4621      	mov	r1, r4
c0de0f10:	f006 face 	bl	c0de74b0 <cx_bn_set_u32>
c0de0f14:	2800      	cmp	r0, #0
c0de0f16:	d1d0      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f18:	4650      	mov	r0, sl
c0de0f1a:	4631      	mov	r1, r6
c0de0f1c:	f001 fd32 	bl	c0de2984 <tEdwards_alloc>
c0de0f20:	2800      	cmp	r0, #0
c0de0f22:	d1ca      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f24:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f28:	2202      	movs	r2, #2
c0de0f2a:	9000      	str	r0, [sp, #0]
c0de0f2c:	4650      	mov	r0, sl
c0de0f2e:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f30:	f001 f9db 	bl	c0de22ea <zkn_evalshare>
c0de0f34:	2800      	cmp	r0, #0
c0de0f36:	d1c0      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f38:	6838      	ldr	r0, [r7, #0]
c0de0f3a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f3c:	f006 faae 	bl	c0de749c <cx_bn_copy>
c0de0f40:	2800      	cmp	r0, #0
c0de0f42:	d1ba      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f44:	4650      	mov	r0, sl
c0de0f46:	4631      	mov	r1, r6
c0de0f48:	f002 f84d 	bl	c0de2fe6 <tEdwards_normalize>
c0de0f4c:	2800      	cmp	r0, #0
c0de0f4e:	d1b4      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f50:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f52:	4659      	mov	r1, fp
c0de0f54:	f000 fc3f 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0f58:	2800      	cmp	r0, #0
c0de0f5a:	d1ae      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f5c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f5e:	f10b 0120 	add.w	r1, fp, #32
c0de0f62:	f000 fc38 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0f66:	360c      	adds	r6, #12
c0de0f68:	3401      	adds	r4, #1
c0de0f6a:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0f6e:	f108 0804 	add.w	r8, r8, #4
c0de0f72:	2800      	cmp	r0, #0
c0de0f74:	d0af      	beq.n	c0de0ed6 <handler_cmd_Split+0xa8>
c0de0f76:	e7a0      	b.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f78:	2100      	movs	r1, #0
c0de0f7a:	1d0c      	adds	r4, r1, #4
c0de0f7c:	2c10      	cmp	r4, #16
c0de0f7e:	d007      	beq.n	c0de0f90 <handler_cmd_Split+0x162>
c0de0f80:	a817      	add	r0, sp, #92	@ 0x5c
c0de0f82:	4408      	add	r0, r1
c0de0f84:	f006 fa6a 	bl	c0de745c <cx_bn_destroy>
c0de0f88:	2800      	cmp	r0, #0
c0de0f8a:	4621      	mov	r1, r4
c0de0f8c:	d0f5      	beq.n	c0de0f7a <handler_cmd_Split+0x14c>
c0de0f8e:	e794      	b.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f90:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f92:	2303      	movs	r3, #3
c0de0f94:	9000      	str	r0, [sp, #0]
c0de0f96:	a801      	add	r0, sp, #4
c0de0f98:	1d01      	adds	r1, r0, #4
c0de0f9a:	a805      	add	r0, sp, #20
c0de0f9c:	1d02      	adds	r2, r0, #4
c0de0f9e:	a832      	add	r0, sp, #200	@ 0xc8
c0de0fa0:	f001 f961 	bl	c0de2266 <zkn_frost_interpolate_secrets>
c0de0fa4:	2800      	cmp	r0, #0
c0de0fa6:	f47f af88 	bne.w	c0de0eba <handler_cmd_Split+0x8c>
c0de0faa:	a848      	add	r0, sp, #288	@ 0x120
c0de0fac:	f000 fc23 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0fb0:	f006 fa36 	bl	c0de7420 <cx_bn_unlock>
c0de0fb4:	2800      	cmp	r0, #0
c0de0fb6:	f47f af80 	bne.w	c0de0eba <handler_cmd_Split+0x8c>
c0de0fba:	2000      	movs	r0, #0
c0de0fbc:	e77f      	b.n	c0de0ebe <handler_cmd_Split+0x90>

c0de0fbe <handler_cmd_frostH>:
c0de0fbe:	b5b0      	push	{r4, r5, r7, lr}
c0de0fc0:	b0d8      	sub	sp, #352	@ 0x160
c0de0fc2:	4604      	mov	r4, r0
c0de0fc4:	f000 fbfc 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0fc8:	2800      	cmp	r0, #0
c0de0fca:	d142      	bne.n	c0de1052 <handler_cmd_frostH+0x94>
c0de0fcc:	6820      	ldr	r0, [r4, #0]
c0de0fce:	7801      	ldrb	r1, [r0, #0]
c0de0fd0:	a802      	add	r0, sp, #8
c0de0fd2:	f001 fe57 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de0fd6:	bbe0      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de0fd8:	a801      	add	r0, sp, #4
c0de0fda:	f000 fbff 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de0fde:	bbc0      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de0fe0:	f000 fc02 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de0fe4:	f002 fb6c 	bl	c0de36c0 <Babyfrost_H1>
c0de0fe8:	bb98      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de0fea:	9801      	ldr	r0, [sp, #4]
c0de0fec:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fee:	2220      	movs	r2, #32
c0de0ff0:	4629      	mov	r1, r5
c0de0ff2:	f006 fa67 	bl	c0de74c4 <cx_bn_export>
c0de0ff6:	bb60      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de0ff8:	f000 fbf6 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de0ffc:	f002 fb6e 	bl	c0de36dc <Babyfrost_H3>
c0de1000:	bb38      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de1002:	9801      	ldr	r0, [sp, #4]
c0de1004:	f105 0120 	add.w	r1, r5, #32
c0de1008:	f000 fbe5 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de100c:	bb08      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de100e:	f000 fbeb 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de1012:	f002 fb77 	bl	c0de3704 <Babyfrost_H4>
c0de1016:	b9e0      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de1018:	9801      	ldr	r0, [sp, #4]
c0de101a:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de101e:	f000 fbda 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de1022:	b9b0      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de1024:	f000 fbe0 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de1028:	f002 fb7a 	bl	c0de3720 <Babyfrost_H5>
c0de102c:	b988      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de102e:	9801      	ldr	r0, [sp, #4]
c0de1030:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1034:	f000 fbcf 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de1038:	b958      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de103a:	9804      	ldr	r0, [sp, #16]
c0de103c:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de1040:	f000 fbc9 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de1044:	b928      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de1046:	a818      	add	r0, sp, #96	@ 0x60
c0de1048:	f000 fbd5 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de104c:	f006 f9e8 	bl	c0de7420 <cx_bn_unlock>
c0de1050:	b118      	cbz	r0, c0de105a <handler_cmd_frostH+0x9c>
c0de1052:	f000 fbb9 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de1056:	b058      	add	sp, #352	@ 0x160
c0de1058:	bdb0      	pop	{r4, r5, r7, pc}
c0de105a:	2000      	movs	r0, #0
c0de105c:	e7fb      	b.n	c0de1056 <handler_cmd_frostH+0x98>
	...

c0de1060 <handler_cmd_encodeCommitment>:
c0de1060:	b510      	push	{r4, lr}
c0de1062:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de1066:	4604      	mov	r4, r0
c0de1068:	f000 fbaa 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de106c:	bb10      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de106e:	6820      	ldr	r0, [r4, #0]
c0de1070:	7801      	ldrb	r1, [r0, #0]
c0de1072:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1074:	f001 fe06 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de1078:	b9e0      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de107a:	a879      	add	r0, sp, #484	@ 0x1e4
c0de107c:	f000 fbae 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de1080:	b9c0      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de1082:	ac01      	add	r4, sp, #4
c0de1084:	4910      	ldr	r1, [pc, #64]	@ (c0de10c8 <handler_cmd_encodeCommitment+0x68>)
c0de1086:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de108a:	4620      	mov	r0, r4
c0de108c:	4479      	add	r1, pc
c0de108e:	f006 fb99 	bl	c0de77c4 <__aeabi_memcpy>
c0de1092:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1094:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1096:	4621      	mov	r1, r4
c0de1098:	2203      	movs	r2, #3
c0de109a:	f001 f9b7 	bl	c0de240c <zkn_encode_group_commitmentHash>
c0de109e:	b948      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de10a0:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de10a2:	a990      	add	r1, sp, #576	@ 0x240
c0de10a4:	2220      	movs	r2, #32
c0de10a6:	3120      	adds	r1, #32
c0de10a8:	f006 fa0c 	bl	c0de74c4 <cx_bn_export>
c0de10ac:	b910      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de10ae:	f006 f9b7 	bl	c0de7420 <cx_bn_unlock>
c0de10b2:	b120      	cbz	r0, c0de10be <handler_cmd_encodeCommitment+0x5e>
c0de10b4:	f000 fb88 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de10b8:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de10bc:	bd10      	pop	{r4, pc}
c0de10be:	a890      	add	r0, sp, #576	@ 0x240
c0de10c0:	f000 fba1 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de10c4:	2000      	movs	r0, #0
c0de10c6:	e7f7      	b.n	c0de10b8 <handler_cmd_encodeCommitment+0x58>
c0de10c8:	00007090 	.word	0x00007090

c0de10cc <handler_cmd_GroupCommitment>:
c0de10cc:	b570      	push	{r4, r5, r6, lr}
c0de10ce:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10d2:	4604      	mov	r4, r0
c0de10d4:	f000 fb74 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de10d8:	bb68      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de10da:	6820      	ldr	r0, [r4, #0]
c0de10dc:	7801      	ldrb	r1, [r0, #0]
c0de10de:	a894      	add	r0, sp, #592	@ 0x250
c0de10e0:	f001 fdd0 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de10e4:	bb38      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de10e6:	a894      	add	r0, sp, #592	@ 0x250
c0de10e8:	ac91      	add	r4, sp, #580	@ 0x244
c0de10ea:	4621      	mov	r1, r4
c0de10ec:	f001 fc4a 	bl	c0de2984 <tEdwards_alloc>
c0de10f0:	bb08      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de10f2:	ad19      	add	r5, sp, #100	@ 0x64
c0de10f4:	4915      	ldr	r1, [pc, #84]	@ (c0de114c <handler_cmd_GroupCommitment+0x80>)
c0de10f6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10fa:	4628      	mov	r0, r5
c0de10fc:	4479      	add	r1, pc
c0de10fe:	f006 fb61 	bl	c0de77c4 <__aeabi_memcpy>
c0de1102:	ae01      	add	r6, sp, #4
c0de1104:	4912      	ldr	r1, [pc, #72]	@ (c0de1150 <handler_cmd_GroupCommitment+0x84>)
c0de1106:	2260      	movs	r2, #96	@ 0x60
c0de1108:	4630      	mov	r0, r6
c0de110a:	4479      	add	r1, pc
c0de110c:	f006 fb5a 	bl	c0de77c4 <__aeabi_memcpy>
c0de1110:	9400      	str	r4, [sp, #0]
c0de1112:	a894      	add	r0, sp, #592	@ 0x250
c0de1114:	4629      	mov	r1, r5
c0de1116:	4632      	mov	r2, r6
c0de1118:	2303      	movs	r3, #3
c0de111a:	f001 f9f4 	bl	c0de2506 <zkn_compute_group_commitment>
c0de111e:	b950      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de1120:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de1122:	a894      	add	r0, sp, #592	@ 0x250
c0de1124:	a991      	add	r1, sp, #580	@ 0x244
c0de1126:	f102 0320 	add.w	r3, r2, #32
c0de112a:	f001 ff36 	bl	c0de2f9a <tEdwards_export>
c0de112e:	b910      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de1130:	f006 f976 	bl	c0de7420 <cx_bn_unlock>
c0de1134:	b120      	cbz	r0, c0de1140 <handler_cmd_GroupCommitment+0x74>
c0de1136:	f000 fb47 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de113a:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de113e:	bd70      	pop	{r4, r5, r6, pc}
c0de1140:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de1142:	2140      	movs	r1, #64	@ 0x40
c0de1144:	f7ff fab8 	bl	c0de06b8 <io_send_response_pointer>
c0de1148:	2000      	movs	r0, #0
c0de114a:	e7f6      	b.n	c0de113a <handler_cmd_GroupCommitment+0x6e>
c0de114c:	00007200 	.word	0x00007200
c0de1150:	000073d2 	.word	0x000073d2

c0de1154 <handler_cmd_BindingFactors>:
c0de1154:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1158:	f2ad 4dd4 	subw	sp, sp, #1236	@ 0x4d4
c0de115c:	4604      	mov	r4, r0
c0de115e:	f000 fb2f 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de1162:	2800      	cmp	r0, #0
c0de1164:	f040 8119 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1168:	6820      	ldr	r0, [r4, #0]
c0de116a:	7801      	ldrb	r1, [r0, #0]
c0de116c:	a8df      	add	r0, sp, #892	@ 0x37c
c0de116e:	f001 fd89 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de1172:	2800      	cmp	r0, #0
c0de1174:	f040 8111 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1178:	a8de      	add	r0, sp, #888	@ 0x378
c0de117a:	f000 fb2f 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de117e:	2800      	cmp	r0, #0
c0de1180:	f040 810b 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1184:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1186:	addb      	add	r5, sp, #876	@ 0x36c
c0de1188:	4629      	mov	r1, r5
c0de118a:	f001 fbfb 	bl	c0de2984 <tEdwards_alloc>
c0de118e:	2800      	cmp	r0, #0
c0de1190:	f040 8103 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1194:	ac63      	add	r4, sp, #396	@ 0x18c
c0de1196:	4985      	ldr	r1, [pc, #532]	@ (c0de13ac <handler_cmd_BindingFactors+0x258>)
c0de1198:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de119c:	4620      	mov	r0, r4
c0de119e:	4479      	add	r1, pc
c0de11a0:	f006 fb10 	bl	c0de77c4 <__aeabi_memcpy>
c0de11a4:	9bde      	ldr	r3, [sp, #888]	@ 0x378
c0de11a6:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11a8:	4621      	mov	r1, r4
c0de11aa:	2203      	movs	r2, #3
c0de11ac:	f001 f92e 	bl	c0de240c <zkn_encode_group_commitmentHash>
c0de11b0:	2800      	cmp	r0, #0
c0de11b2:	f040 80f2 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de11b6:	f50d 7875 	add.w	r8, sp, #980	@ 0x3d4
c0de11ba:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de11bc:	2220      	movs	r2, #32
c0de11be:	2620      	movs	r6, #32
c0de11c0:	4641      	mov	r1, r8
c0de11c2:	f006 f97f 	bl	c0de74c4 <cx_bn_export>
c0de11c6:	2800      	cmp	r0, #0
c0de11c8:	f040 80e7 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de11cc:	4978      	ldr	r1, [pc, #480]	@ (c0de13b0 <handler_cmd_BindingFactors+0x25c>)
c0de11ce:	f50d 7ab6 	add.w	sl, sp, #364	@ 0x16c
c0de11d2:	2220      	movs	r2, #32
c0de11d4:	4650      	mov	r0, sl
c0de11d6:	4479      	add	r1, pc
c0de11d8:	f006 faf4 	bl	c0de77c4 <__aeabi_memcpy>
c0de11dc:	a853      	add	r0, sp, #332	@ 0x14c
c0de11de:	4975      	ldr	r1, [pc, #468]	@ (c0de13b4 <handler_cmd_BindingFactors+0x260>)
c0de11e0:	2220      	movs	r2, #32
c0de11e2:	4479      	add	r1, pc
c0de11e4:	f006 faee 	bl	c0de77c4 <__aeabi_memcpy>
c0de11e8:	ac4b      	add	r4, sp, #300	@ 0x12c
c0de11ea:	4973      	ldr	r1, [pc, #460]	@ (c0de13b8 <handler_cmd_BindingFactors+0x264>)
c0de11ec:	2220      	movs	r2, #32
c0de11ee:	4620      	mov	r0, r4
c0de11f0:	4479      	add	r1, pc
c0de11f2:	f006 fae7 	bl	c0de77c4 <__aeabi_memcpy>
c0de11f6:	f108 0720 	add.w	r7, r8, #32
c0de11fa:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de11fe:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1200:	aa63      	add	r2, sp, #396	@ 0x18c
c0de1202:	4651      	mov	r1, sl
c0de1204:	2303      	movs	r3, #3
c0de1206:	f001 f9ef 	bl	c0de25e8 <zkn_compute_binding_factors>
c0de120a:	2800      	cmp	r0, #0
c0de120c:	f040 80c5 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1210:	9500      	str	r5, [sp, #0]
c0de1212:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1214:	a963      	add	r1, sp, #396	@ 0x18c
c0de1216:	463a      	mov	r2, r7
c0de1218:	2303      	movs	r3, #3
c0de121a:	f001 f974 	bl	c0de2506 <zkn_compute_group_commitment>
c0de121e:	2800      	cmp	r0, #0
c0de1220:	f040 80bb 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1224:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1226:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de122a:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de122e:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1230:	f001 feb3 	bl	c0de2f9a <tEdwards_export>
c0de1234:	2800      	cmp	r0, #0
c0de1236:	f040 80b0 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de123a:	ad3b      	add	r5, sp, #236	@ 0xec
c0de123c:	495f      	ldr	r1, [pc, #380]	@ (c0de13bc <handler_cmd_BindingFactors+0x268>)
c0de123e:	2240      	movs	r2, #64	@ 0x40
c0de1240:	4628      	mov	r0, r5
c0de1242:	4479      	add	r1, pc
c0de1244:	f006 fabe 	bl	c0de77c4 <__aeabi_memcpy>
c0de1248:	a833      	add	r0, sp, #204	@ 0xcc
c0de124a:	495d      	ldr	r1, [pc, #372]	@ (c0de13c0 <handler_cmd_BindingFactors+0x26c>)
c0de124c:	2220      	movs	r2, #32
c0de124e:	2420      	movs	r4, #32
c0de1250:	4479      	add	r1, pc
c0de1252:	f006 fab7 	bl	c0de77c4 <__aeabi_memcpy>
c0de1256:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1258:	462a      	mov	r2, r5
c0de125a:	e9cd 4000 	strd	r4, r0, [sp]
c0de125e:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1260:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1262:	ab53      	add	r3, sp, #332	@ 0x14c
c0de1264:	f001 fa4c 	bl	c0de2700 <compute_challenge>
c0de1268:	2800      	cmp	r0, #0
c0de126a:	f040 8096 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de126e:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1270:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de1274:	f000 faaf 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de1278:	2800      	cmp	r0, #0
c0de127a:	f040 808e 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de127e:	a829      	add	r0, sp, #164	@ 0xa4
c0de1280:	4950      	ldr	r1, [pc, #320]	@ (c0de13c4 <handler_cmd_BindingFactors+0x270>)
c0de1282:	2220      	movs	r2, #32
c0de1284:	4479      	add	r1, pc
c0de1286:	f006 fa9d 	bl	c0de77c4 <__aeabi_memcpy>
c0de128a:	a832      	add	r0, sp, #200	@ 0xc8
c0de128c:	f000 faa6 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de1290:	2800      	cmp	r0, #0
c0de1292:	f040 8082 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1296:	a831      	add	r0, sp, #196	@ 0xc4
c0de1298:	aa29      	add	r2, sp, #164	@ 0xa4
c0de129a:	f000 fa98 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de129e:	2800      	cmp	r0, #0
c0de12a0:	d17b      	bne.n	c0de139a <handler_cmd_BindingFactors+0x246>
c0de12a2:	99de      	ldr	r1, [sp, #888]	@ 0x378
c0de12a4:	e9dd 2031 	ldrd	r2, r0, [sp, #196]	@ 0xc4
c0de12a8:	f006 f960 	bl	c0de756c <cx_bn_reduce>
c0de12ac:	2800      	cmp	r0, #0
c0de12ae:	d174      	bne.n	c0de139a <handler_cmd_BindingFactors+0x246>
c0de12b0:	9832      	ldr	r0, [sp, #200]	@ 0xc8
c0de12b2:	f108 01e0 	add.w	r1, r8, #224	@ 0xe0
c0de12b6:	f000 fa8e 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de12ba:	2800      	cmp	r0, #0
c0de12bc:	d16d      	bne.n	c0de139a <handler_cmd_BindingFactors+0x246>
c0de12be:	ac21      	add	r4, sp, #132	@ 0x84
c0de12c0:	4941      	ldr	r1, [pc, #260]	@ (c0de13c8 <handler_cmd_BindingFactors+0x274>)
c0de12c2:	2220      	movs	r2, #32
c0de12c4:	4620      	mov	r0, r4
c0de12c6:	4479      	add	r1, pc
c0de12c8:	f006 fa7c 	bl	c0de77c4 <__aeabi_memcpy>
c0de12cc:	a819      	add	r0, sp, #100	@ 0x64
c0de12ce:	493f      	ldr	r1, [pc, #252]	@ (c0de13cc <handler_cmd_BindingFactors+0x278>)
c0de12d0:	2220      	movs	r2, #32
c0de12d2:	4479      	add	r1, pc
c0de12d4:	f006 fa76 	bl	c0de77c4 <__aeabi_memcpy>
c0de12d8:	a811      	add	r0, sp, #68	@ 0x44
c0de12da:	493d      	ldr	r1, [pc, #244]	@ (c0de13d0 <handler_cmd_BindingFactors+0x27c>)
c0de12dc:	2220      	movs	r2, #32
c0de12de:	4479      	add	r1, pc
c0de12e0:	f006 fa70 	bl	c0de77c4 <__aeabi_memcpy>
c0de12e4:	a809      	add	r0, sp, #36	@ 0x24
c0de12e6:	493b      	ldr	r1, [pc, #236]	@ (c0de13d4 <handler_cmd_BindingFactors+0x280>)
c0de12e8:	2220      	movs	r2, #32
c0de12ea:	4479      	add	r1, pc
c0de12ec:	f006 fa6a 	bl	c0de77c4 <__aeabi_memcpy>
c0de12f0:	a808      	add	r0, sp, #32
c0de12f2:	2120      	movs	r1, #32
c0de12f4:	4622      	mov	r2, r4
c0de12f6:	f000 fa74 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de12fa:	2800      	cmp	r0, #0
c0de12fc:	d14d      	bne.n	c0de139a <handler_cmd_BindingFactors+0x246>
c0de12fe:	a807      	add	r0, sp, #28
c0de1300:	aa19      	add	r2, sp, #100	@ 0x64
c0de1302:	f000 fa64 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de1306:	2800      	cmp	r0, #0
c0de1308:	d147      	bne.n	c0de139a <handler_cmd_BindingFactors+0x246>
c0de130a:	a806      	add	r0, sp, #24
c0de130c:	aa09      	add	r2, sp, #36	@ 0x24
c0de130e:	f000 fa5e 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de1312:	2800      	cmp	r0, #0
c0de1314:	d141      	bne.n	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1316:	a805      	add	r0, sp, #20
c0de1318:	aa11      	add	r2, sp, #68	@ 0x44
c0de131a:	f000 fa58 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de131e:	bbe0      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de1320:	a803      	add	r0, sp, #12
c0de1322:	aa33      	add	r2, sp, #204	@ 0xcc
c0de1324:	f000 fa53 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de1328:	bbb8      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de132a:	a804      	add	r0, sp, #16
c0de132c:	f000 fa56 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de1330:	bb98      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de1332:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1334:	9907      	ldr	r1, [sp, #28]
c0de1336:	e9dd 2003 	ldrd	r2, r0, [sp, #12]
c0de133a:	f006 f90b 	bl	c0de7554 <cx_bn_mod_mul>
c0de133e:	bb60      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de1340:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1342:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de1346:	9807      	ldr	r0, [sp, #28]
c0de1348:	f006 f904 	bl	c0de7554 <cx_bn_mod_mul>
c0de134c:	bb28      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de134e:	e9dd 3231 	ldrd	r3, r2, [sp, #196]	@ 0xc4
c0de1352:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de1356:	f006 f8fd 	bl	c0de7554 <cx_bn_mod_mul>
c0de135a:	b9f0      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de135c:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de135e:	9a06      	ldr	r2, [sp, #24]
c0de1360:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
c0de1364:	f006 f8de 	bl	c0de7524 <cx_bn_mod_add>
c0de1368:	b9b8      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de136a:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de136c:	9a08      	ldr	r2, [sp, #32]
c0de136e:	e9dd 1003 	ldrd	r1, r0, [sp, #12]
c0de1372:	f006 f8d7 	bl	c0de7524 <cx_bn_mod_add>
c0de1376:	b980      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de1378:	9a31      	ldr	r2, [sp, #196]	@ 0xc4
c0de137a:	9904      	ldr	r1, [sp, #16]
c0de137c:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de137e:	f006 f8f5 	bl	c0de756c <cx_bn_reduce>
c0de1382:	b950      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de1384:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1386:	a9f5      	add	r1, sp, #980	@ 0x3d4
c0de1388:	f000 fa25 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de138c:	b928      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de138e:	a8f5      	add	r0, sp, #980	@ 0x3d4
c0de1390:	f000 fa31 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de1394:	f006 f844 	bl	c0de7420 <cx_bn_unlock>
c0de1398:	b128      	cbz	r0, c0de13a6 <handler_cmd_BindingFactors+0x252>
c0de139a:	f000 fa15 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de139e:	f20d 4dd4 	addw	sp, sp, #1236	@ 0x4d4
c0de13a2:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de13a6:	2000      	movs	r0, #0
c0de13a8:	e7f9      	b.n	c0de139e <handler_cmd_BindingFactors+0x24a>
c0de13aa:	bf00      	nop
c0de13ac:	0000739e 	.word	0x0000739e
c0de13b0:	00006d06 	.word	0x00006d06
c0de13b4:	00006b7a 	.word	0x00006b7a
c0de13b8:	00006d4c 	.word	0x00006d4c
c0de13bc:	000074da 	.word	0x000074da
c0de13c0:	00006cac 	.word	0x00006cac
c0de13c4:	00006c18 	.word	0x00006c18
c0de13c8:	00006b36 	.word	0x00006b36
c0de13cc:	00006c4a 	.word	0x00006c4a
c0de13d0:	00006d7e 	.word	0x00006d7e
c0de13d4:	00006ad2 	.word	0x00006ad2

c0de13d8 <handler_cmd_PartialSig>:
c0de13d8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de13dc:	f5ad 6d87 	sub.w	sp, sp, #1080	@ 0x438
c0de13e0:	4604      	mov	r4, r0
c0de13e2:	f000 f9ed 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de13e6:	2800      	cmp	r0, #0
c0de13e8:	d154      	bne.n	c0de1494 <handler_cmd_PartialSig+0xbc>
c0de13ea:	6820      	ldr	r0, [r4, #0]
c0de13ec:	7801      	ldrb	r1, [r0, #0]
c0de13ee:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de13f0:	f001 fc48 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de13f4:	2800      	cmp	r0, #0
c0de13f6:	d14d      	bne.n	c0de1494 <handler_cmd_PartialSig+0xbc>
c0de13f8:	492a      	ldr	r1, [pc, #168]	@ (c0de14a4 <handler_cmd_PartialSig+0xcc>)
c0de13fa:	f50d 7880 	add.w	r8, sp, #256	@ 0x100
c0de13fe:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1402:	4640      	mov	r0, r8
c0de1404:	4479      	add	r1, pc
c0de1406:	f006 f9dd 	bl	c0de77c4 <__aeabi_memcpy>
c0de140a:	4927      	ldr	r1, [pc, #156]	@ (c0de14a8 <handler_cmd_PartialSig+0xd0>)
c0de140c:	f10d 0ae0 	add.w	sl, sp, #224	@ 0xe0
c0de1410:	2220      	movs	r2, #32
c0de1412:	4650      	mov	r0, sl
c0de1414:	4479      	add	r1, pc
c0de1416:	f006 f9d5 	bl	c0de77c4 <__aeabi_memcpy>
c0de141a:	4924      	ldr	r1, [pc, #144]	@ (c0de14ac <handler_cmd_PartialSig+0xd4>)
c0de141c:	f10d 0bc0 	add.w	fp, sp, #192	@ 0xc0
c0de1420:	2220      	movs	r2, #32
c0de1422:	4658      	mov	r0, fp
c0de1424:	4479      	add	r1, pc
c0de1426:	f006 f9cd 	bl	c0de77c4 <__aeabi_memcpy>
c0de142a:	ac28      	add	r4, sp, #160	@ 0xa0
c0de142c:	4920      	ldr	r1, [pc, #128]	@ (c0de14b0 <handler_cmd_PartialSig+0xd8>)
c0de142e:	2220      	movs	r2, #32
c0de1430:	4620      	mov	r0, r4
c0de1432:	4479      	add	r1, pc
c0de1434:	f006 f9c6 	bl	c0de77c4 <__aeabi_memcpy>
c0de1438:	af18      	add	r7, sp, #96	@ 0x60
c0de143a:	491e      	ldr	r1, [pc, #120]	@ (c0de14b4 <handler_cmd_PartialSig+0xdc>)
c0de143c:	2240      	movs	r2, #64	@ 0x40
c0de143e:	4638      	mov	r0, r7
c0de1440:	4479      	add	r1, pc
c0de1442:	f006 f9bf 	bl	c0de77c4 <__aeabi_memcpy>
c0de1446:	ad10      	add	r5, sp, #64	@ 0x40
c0de1448:	491b      	ldr	r1, [pc, #108]	@ (c0de14b8 <handler_cmd_PartialSig+0xe0>)
c0de144a:	2220      	movs	r2, #32
c0de144c:	4628      	mov	r0, r5
c0de144e:	4479      	add	r1, pc
c0de1450:	f006 f9b8 	bl	c0de77c4 <__aeabi_memcpy>
c0de1454:	ae08      	add	r6, sp, #32
c0de1456:	4919      	ldr	r1, [pc, #100]	@ (c0de14bc <handler_cmd_PartialSig+0xe4>)
c0de1458:	2220      	movs	r2, #32
c0de145a:	4630      	mov	r0, r6
c0de145c:	4479      	add	r1, pc
c0de145e:	f006 f9b1 	bl	c0de77c4 <__aeabi_memcpy>
c0de1462:	2103      	movs	r1, #3
c0de1464:	a8ce      	add	r0, sp, #824	@ 0x338
c0de1466:	e9cd b400 	strd	fp, r4, [sp]
c0de146a:	f8cd a010 	str.w	sl, [sp, #16]
c0de146e:	462a      	mov	r2, r5
c0de1470:	463b      	mov	r3, r7
c0de1472:	e9cd 8102 	strd	r8, r1, [sp, #8]
c0de1476:	2120      	movs	r1, #32
c0de1478:	9007      	str	r0, [sp, #28]
c0de147a:	e9cd 1605 	strd	r1, r6, [sp, #20]
c0de147e:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de1480:	2101      	movs	r1, #1
c0de1482:	f001 f997 	bl	c0de27b4 <zkn_partial_sig>
c0de1486:	b928      	cbnz	r0, c0de1494 <handler_cmd_PartialSig+0xbc>
c0de1488:	a8ce      	add	r0, sp, #824	@ 0x338
c0de148a:	f000 f9bc 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de148e:	f005 ffc7 	bl	c0de7420 <cx_bn_unlock>
c0de1492:	b128      	cbz	r0, c0de14a0 <handler_cmd_PartialSig+0xc8>
c0de1494:	f000 f998 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de1498:	f50d 6d87 	add.w	sp, sp, #1080	@ 0x438
c0de149c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de14a0:	2000      	movs	r0, #0
c0de14a2:	e7f9      	b.n	c0de1498 <handler_cmd_PartialSig+0xc0>
c0de14a4:	00007138 	.word	0x00007138
c0de14a8:	00006948 	.word	0x00006948
c0de14ac:	000069d8 	.word	0x000069d8
c0de14b0:	00006aea 	.word	0x00006aea
c0de14b4:	000072dc 	.word	0x000072dc
c0de14b8:	00006c0e 	.word	0x00006c0e
c0de14bc:	00006960 	.word	0x00006960

c0de14c0 <handler_get_insecure_public>:
c0de14c0:	b5b0      	push	{r4, r5, r7, lr}
c0de14c2:	b0aa      	sub	sp, #168	@ 0xa8
c0de14c4:	6800      	ldr	r0, [r0, #0]
c0de14c6:	21ff      	movs	r1, #255	@ 0xff
c0de14c8:	7805      	ldrb	r5, [r0, #0]
c0de14ca:	2000      	movs	r0, #0
c0de14cc:	ac1a      	add	r4, sp, #104	@ 0x68
c0de14ce:	2840      	cmp	r0, #64	@ 0x40
c0de14d0:	d002      	beq.n	c0de14d8 <handler_get_insecure_public+0x18>
c0de14d2:	5421      	strb	r1, [r4, r0]
c0de14d4:	3001      	adds	r0, #1
c0de14d6:	e7fa      	b.n	c0de14ce <handler_get_insecure_public+0xe>
c0de14d8:	f000 f972 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de14dc:	b9f8      	cbnz	r0, c0de151e <handler_get_insecure_public+0x5e>
c0de14de:	a804      	add	r0, sp, #16
c0de14e0:	f000 f99d 	bl	c0de181e <OUTLINED_FUNCTION_12>
c0de14e4:	b9d8      	cbnz	r0, c0de151e <handler_get_insecure_public+0x5e>
c0de14e6:	a804      	add	r0, sp, #16
c0de14e8:	a901      	add	r1, sp, #4
c0de14ea:	f001 fa4b 	bl	c0de2984 <tEdwards_alloc>
c0de14ee:	b9b0      	cbnz	r0, c0de151e <handler_get_insecure_public+0x5e>
c0de14f0:	480e      	ldr	r0, [pc, #56]	@ (c0de152c <handler_get_insecure_public+0x6c>)
c0de14f2:	eb09 0100 	add.w	r1, r9, r0
c0de14f6:	a804      	add	r0, sp, #16
c0de14f8:	aa01      	add	r2, sp, #4
c0de14fa:	f000 fcd5 	bl	c0de1ea8 <zkn_prv2pub>
c0de14fe:	b970      	cbnz	r0, c0de151e <handler_get_insecure_public+0x5e>
c0de1500:	a804      	add	r0, sp, #16
c0de1502:	f104 0320 	add.w	r3, r4, #32
c0de1506:	a901      	add	r1, sp, #4
c0de1508:	f000 f980 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de150c:	b938      	cbnz	r0, c0de151e <handler_get_insecure_public+0x5e>
c0de150e:	9804      	ldr	r0, [sp, #16]
c0de1510:	0041      	lsls	r1, r0, #1
c0de1512:	a81a      	add	r0, sp, #104	@ 0x68
c0de1514:	f7ff f8d0 	bl	c0de06b8 <io_send_response_pointer>
c0de1518:	f005 ff82 	bl	c0de7420 <cx_bn_unlock>
c0de151c:	b118      	cbz	r0, c0de1526 <handler_get_insecure_public+0x66>
c0de151e:	f000 f953 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de1522:	b02a      	add	sp, #168	@ 0xa8
c0de1524:	bdb0      	pop	{r4, r5, r7, pc}
c0de1526:	2000      	movs	r0, #0
c0de1528:	e7fb      	b.n	c0de1522 <handler_get_insecure_public+0x62>
c0de152a:	bf00      	nop
c0de152c:	00000350 	.word	0x00000350

c0de1530 <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de1530:	b570      	push	{r4, r5, r6, lr}
c0de1532:	b0bc      	sub	sp, #240	@ 0xf0
c0de1534:	4605      	mov	r5, r0
c0de1536:	6800      	ldr	r0, [r0, #0]
c0de1538:	21ff      	movs	r1, #255	@ 0xff
c0de153a:	7804      	ldrb	r4, [r0, #0]
c0de153c:	2000      	movs	r0, #0
c0de153e:	ae24      	add	r6, sp, #144	@ 0x90
c0de1540:	2860      	cmp	r0, #96	@ 0x60
c0de1542:	d002      	beq.n	c0de154a <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1a>
c0de1544:	5431      	strb	r1, [r6, r0]
c0de1546:	3001      	adds	r0, #1
c0de1548:	e7fa      	b.n	c0de1540 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x10>
c0de154a:	f000 f939 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de154e:	bb68      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1550:	6828      	ldr	r0, [r5, #0]
c0de1552:	2100      	movs	r1, #0
c0de1554:	aa03      	add	r2, sp, #12
c0de1556:	3001      	adds	r0, #1
c0de1558:	2920      	cmp	r1, #32
c0de155a:	d003      	beq.n	c0de1564 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x34>
c0de155c:	5c43      	ldrb	r3, [r0, r1]
c0de155e:	5453      	strb	r3, [r2, r1]
c0de1560:	3101      	adds	r1, #1
c0de1562:	e7f9      	b.n	c0de1558 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x28>
c0de1564:	a80e      	add	r0, sp, #56	@ 0x38
c0de1566:	4621      	mov	r1, r4
c0de1568:	f001 fb8c 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de156c:	b9f0      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de156e:	a80e      	add	r0, sp, #56	@ 0x38
c0de1570:	a90b      	add	r1, sp, #44	@ 0x2c
c0de1572:	f001 fa07 	bl	c0de2984 <tEdwards_alloc>
c0de1576:	b9c8      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1578:	4c0f      	ldr	r4, [pc, #60]	@ (c0de15b8 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x88>)
c0de157a:	a80e      	add	r0, sp, #56	@ 0x38
c0de157c:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de157e:	eb09 0104 	add.w	r1, r9, r4
c0de1582:	f000 fc91 	bl	c0de1ea8 <zkn_prv2pub>
c0de1586:	b988      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1588:	2020      	movs	r0, #32
c0de158a:	eb09 0104 	add.w	r1, r9, r4
c0de158e:	e9cd 0600 	strd	r0, r6, [sp]
c0de1592:	a80e      	add	r0, sp, #56	@ 0x38
c0de1594:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de1596:	ab03      	add	r3, sp, #12
c0de1598:	f000 fcae 	bl	c0de1ef8 <EddsaPoseidon_Sign_final>
c0de159c:	b930      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de159e:	a824      	add	r0, sp, #144	@ 0x90
c0de15a0:	2160      	movs	r1, #96	@ 0x60
c0de15a2:	f7ff f889 	bl	c0de06b8 <io_send_response_pointer>
c0de15a6:	f005 ff3b 	bl	c0de7420 <cx_bn_unlock>
c0de15aa:	b118      	cbz	r0, c0de15b4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x84>
c0de15ac:	f000 f90c 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de15b0:	b03c      	add	sp, #240	@ 0xf0
c0de15b2:	bd70      	pop	{r4, r5, r6, pc}
c0de15b4:	2000      	movs	r0, #0
c0de15b6:	e7fb      	b.n	c0de15b0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x80>
c0de15b8:	00000350 	.word	0x00000350

c0de15bc <handler_cmd_frost_inject>:
c0de15bc:	b5b0      	push	{r4, r5, r7, lr}
c0de15be:	4604      	mov	r4, r0
c0de15c0:	4810      	ldr	r0, [pc, #64]	@ (c0de1604 <handler_cmd_frost_inject+0x48>)
c0de15c2:	2240      	movs	r2, #64	@ 0x40
c0de15c4:	e9d4 1500 	ldrd	r1, r5, [r4]
c0de15c8:	4448      	add	r0, r9
c0de15ca:	f006 f8fb 	bl	c0de77c4 <__aeabi_memcpy>
c0de15ce:	480e      	ldr	r0, [pc, #56]	@ (c0de1608 <handler_cmd_frost_inject+0x4c>)
c0de15d0:	6821      	ldr	r1, [r4, #0]
c0de15d2:	2220      	movs	r2, #32
c0de15d4:	4448      	add	r0, r9
c0de15d6:	3140      	adds	r1, #64	@ 0x40
c0de15d8:	f006 f8f4 	bl	c0de77c4 <__aeabi_memcpy>
c0de15dc:	480b      	ldr	r0, [pc, #44]	@ (c0de160c <handler_cmd_frost_inject+0x50>)
c0de15de:	6821      	ldr	r1, [r4, #0]
c0de15e0:	2220      	movs	r2, #32
c0de15e2:	4448      	add	r0, r9
c0de15e4:	3160      	adds	r1, #96	@ 0x60
c0de15e6:	f006 f8ed 	bl	c0de77c4 <__aeabi_memcpy>
c0de15ea:	f000 f908 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de15ee:	2d80      	cmp	r5, #128	@ 0x80
c0de15f0:	bf04      	itt	eq
c0de15f2:	2000      	moveq	r0, #0
c0de15f4:	bdb0      	popeq	{r4, r5, r7, pc}
c0de15f6:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de15fa:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de15fe:	f7ff b866 	b.w	c0de06ce <io_send_sw>
c0de1602:	bf00      	nop
c0de1604:	000002f0 	.word	0x000002f0
c0de1608:	00000330 	.word	0x00000330
c0de160c:	00000350 	.word	0x00000350

c0de1610 <handler_cmd_frost_commit>:
c0de1610:	b570      	push	{r4, r5, r6, lr}
c0de1612:	b0bc      	sub	sp, #240	@ 0xf0
c0de1614:	4604      	mov	r4, r0
c0de1616:	f000 f8d3 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de161a:	bba8      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de161c:	6820      	ldr	r0, [r4, #0]
c0de161e:	7801      	ldrb	r1, [r0, #0]
c0de1620:	a806      	add	r0, sp, #24
c0de1622:	f001 fb2f 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de1626:	bb78      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de1628:	ad06      	add	r5, sp, #24
c0de162a:	466e      	mov	r6, sp
c0de162c:	4628      	mov	r0, r5
c0de162e:	4631      	mov	r1, r6
c0de1630:	f001 f9a8 	bl	c0de2984 <tEdwards_alloc>
c0de1634:	f106 040c 	add.w	r4, r6, #12
c0de1638:	4628      	mov	r0, r5
c0de163a:	4621      	mov	r1, r4
c0de163c:	f001 f9a2 	bl	c0de2984 <tEdwards_alloc>
c0de1640:	4814      	ldr	r0, [pc, #80]	@ (c0de1694 <handler_cmd_frost_commit+0x84>)
c0de1642:	4633      	mov	r3, r6
c0de1644:	eb09 0100 	add.w	r1, r9, r0
c0de1648:	4813      	ldr	r0, [pc, #76]	@ (c0de1698 <handler_cmd_frost_commit+0x88>)
c0de164a:	eb09 0200 	add.w	r2, r9, r0
c0de164e:	4628      	mov	r0, r5
c0de1650:	f000 feab 	bl	c0de23aa <zkn_frost_commit>
c0de1654:	b9c0      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de1656:	ad1c      	add	r5, sp, #112	@ 0x70
c0de1658:	a806      	add	r0, sp, #24
c0de165a:	4669      	mov	r1, sp
c0de165c:	f105 0320 	add.w	r3, r5, #32
c0de1660:	462a      	mov	r2, r5
c0de1662:	f001 fc9a 	bl	c0de2f9a <tEdwards_export>
c0de1666:	b978      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de1668:	f105 0240 	add.w	r2, r5, #64	@ 0x40
c0de166c:	f105 0360 	add.w	r3, r5, #96	@ 0x60
c0de1670:	a806      	add	r0, sp, #24
c0de1672:	4621      	mov	r1, r4
c0de1674:	f001 fc91 	bl	c0de2f9a <tEdwards_export>
c0de1678:	b930      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de167a:	a81c      	add	r0, sp, #112	@ 0x70
c0de167c:	2180      	movs	r1, #128	@ 0x80
c0de167e:	f7ff f81b 	bl	c0de06b8 <io_send_response_pointer>
c0de1682:	f005 fecd 	bl	c0de7420 <cx_bn_unlock>
c0de1686:	b118      	cbz	r0, c0de1690 <handler_cmd_frost_commit+0x80>
c0de1688:	f000 f89e 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de168c:	b03c      	add	sp, #240	@ 0xf0
c0de168e:	bd70      	pop	{r4, r5, r6, pc}
c0de1690:	2000      	movs	r0, #0
c0de1692:	e7fb      	b.n	c0de168c <handler_cmd_frost_commit+0x7c>
c0de1694:	00000350 	.word	0x00000350
c0de1698:	00000370 	.word	0x00000370

c0de169c <handler_cmd_frost_inject_com1>:
c0de169c:	b510      	push	{r4, lr}
c0de169e:	4908      	ldr	r1, [pc, #32]	@ (c0de16c0 <handler_cmd_frost_inject_com1+0x24>)
c0de16a0:	eb09 0201 	add.w	r2, r9, r1
c0de16a4:	f000 f8b5 	bl	c0de1812 <OUTLINED_FUNCTION_11>
c0de16a8:	f000 f8a9 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de16ac:	2cf0      	cmp	r4, #240	@ 0xf0
c0de16ae:	bf04      	itt	eq
c0de16b0:	2000      	moveq	r0, #0
c0de16b2:	bd10      	popeq	{r4, pc}
c0de16b4:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de16b8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de16bc:	f7ff b807 	b.w	c0de06ce <io_send_sw>
c0de16c0:	000003b0 	.word	0x000003b0

c0de16c4 <handler_cmd_frost_inject_com2>:
c0de16c4:	b510      	push	{r4, lr}
c0de16c6:	4909      	ldr	r1, [pc, #36]	@ (c0de16ec <handler_cmd_frost_inject_com2+0x28>)
c0de16c8:	4449      	add	r1, r9
c0de16ca:	f101 02f0 	add.w	r2, r1, #240	@ 0xf0
c0de16ce:	f000 f8a0 	bl	c0de1812 <OUTLINED_FUNCTION_11>
c0de16d2:	f000 f894 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de16d6:	2cf0      	cmp	r4, #240	@ 0xf0
c0de16d8:	bf04      	itt	eq
c0de16da:	2000      	moveq	r0, #0
c0de16dc:	bd10      	popeq	{r4, pc}
c0de16de:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de16e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de16e6:	f7fe bff2 	b.w	c0de06ce <io_send_sw>
c0de16ea:	bf00      	nop
c0de16ec:	000003b0 	.word	0x000003b0

c0de16f0 <handler_cmd_frost_partial_sign>:
c0de16f0:	b570      	push	{r4, r5, r6, lr}
c0de16f2:	b0b6      	sub	sp, #216	@ 0xd8
c0de16f4:	6800      	ldr	r0, [r0, #0]
c0de16f6:	2100      	movs	r1, #0
c0de16f8:	ad2e      	add	r5, sp, #184	@ 0xb8
c0de16fa:	2920      	cmp	r1, #32
c0de16fc:	d003      	beq.n	c0de1706 <handler_cmd_frost_partial_sign+0x16>
c0de16fe:	5c42      	ldrb	r2, [r0, r1]
c0de1700:	546a      	strb	r2, [r5, r1]
c0de1702:	3101      	adds	r1, #1
c0de1704:	e7f9      	b.n	c0de16fa <handler_cmd_frost_partial_sign+0xa>
c0de1706:	f000 f85b 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de170a:	bb60      	cbnz	r0, c0de1766 <handler_cmd_frost_partial_sign+0x76>
c0de170c:	a810      	add	r0, sp, #64	@ 0x40
c0de170e:	2102      	movs	r1, #2
c0de1710:	f001 fab8 	bl	c0de2c84 <tEdwards_Curve_alloc_init>
c0de1714:	bb38      	cbnz	r0, c0de1766 <handler_cmd_frost_partial_sign+0x76>
c0de1716:	ac08      	add	r4, sp, #32
c0de1718:	491c      	ldr	r1, [pc, #112]	@ (c0de178c <handler_cmd_frost_partial_sign+0x9c>)
c0de171a:	2220      	movs	r2, #32
c0de171c:	2620      	movs	r6, #32
c0de171e:	4620      	mov	r0, r4
c0de1720:	4479      	add	r1, pc
c0de1722:	f006 f84f 	bl	c0de77c4 <__aeabi_memcpy>
c0de1726:	4814      	ldr	r0, [pc, #80]	@ (c0de1778 <handler_cmd_frost_partial_sign+0x88>)
c0de1728:	4448      	add	r0, r9
c0de172a:	7fc1      	ldrb	r1, [r0, #31]
c0de172c:	a826      	add	r0, sp, #152	@ 0x98
c0de172e:	e9cd 5604 	strd	r5, r6, [sp, #16]
c0de1732:	e9cd 4006 	strd	r4, r0, [sp, #24]
c0de1736:	2003      	movs	r0, #3
c0de1738:	9003      	str	r0, [sp, #12]
c0de173a:	4810      	ldr	r0, [pc, #64]	@ (c0de177c <handler_cmd_frost_partial_sign+0x8c>)
c0de173c:	4448      	add	r0, r9
c0de173e:	9002      	str	r0, [sp, #8]
c0de1740:	480f      	ldr	r0, [pc, #60]	@ (c0de1780 <handler_cmd_frost_partial_sign+0x90>)
c0de1742:	4448      	add	r0, r9
c0de1744:	f100 0220 	add.w	r2, r0, #32
c0de1748:	e9cd 0200 	strd	r0, r2, [sp]
c0de174c:	480d      	ldr	r0, [pc, #52]	@ (c0de1784 <handler_cmd_frost_partial_sign+0x94>)
c0de174e:	eb09 0200 	add.w	r2, r9, r0
c0de1752:	480d      	ldr	r0, [pc, #52]	@ (c0de1788 <handler_cmd_frost_partial_sign+0x98>)
c0de1754:	eb09 0300 	add.w	r3, r9, r0
c0de1758:	a810      	add	r0, sp, #64	@ 0x40
c0de175a:	f001 f82b 	bl	c0de27b4 <zkn_partial_sig>
c0de175e:	b910      	cbnz	r0, c0de1766 <handler_cmd_frost_partial_sign+0x76>
c0de1760:	f005 fe5e 	bl	c0de7420 <cx_bn_unlock>
c0de1764:	b118      	cbz	r0, c0de176e <handler_cmd_frost_partial_sign+0x7e>
c0de1766:	f000 f82f 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de176a:	b036      	add	sp, #216	@ 0xd8
c0de176c:	bd70      	pop	{r4, r5, r6, pc}
c0de176e:	a826      	add	r0, sp, #152	@ 0x98
c0de1770:	f000 f849 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de1774:	2000      	movs	r0, #0
c0de1776:	e7f8      	b.n	c0de176a <handler_cmd_frost_partial_sign+0x7a>
c0de1778:	00000330 	.word	0x00000330
c0de177c:	000003b0 	.word	0x000003b0
c0de1780:	00000370 	.word	0x00000370
c0de1784:	00000350 	.word	0x00000350
c0de1788:	000002f0 	.word	0x000002f0
c0de178c:	0000669c 	.word	0x0000669c

c0de1790 <handler_cmd_inject_nonces>:
c0de1790:	b510      	push	{r4, lr}
c0de1792:	490a      	ldr	r1, [pc, #40]	@ (c0de17bc <handler_cmd_inject_nonces+0x2c>)
c0de1794:	eb09 0201 	add.w	r2, r9, r1
c0de1798:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de179c:	4610      	mov	r0, r2
c0de179e:	2240      	movs	r2, #64	@ 0x40
c0de17a0:	f006 f810 	bl	c0de77c4 <__aeabi_memcpy>
c0de17a4:	f000 f82b 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de17a8:	2c40      	cmp	r4, #64	@ 0x40
c0de17aa:	bf04      	itt	eq
c0de17ac:	2000      	moveq	r0, #0
c0de17ae:	bd10      	popeq	{r4, pc}
c0de17b0:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de17b4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de17b8:	f7fe bf89 	b.w	c0de06ce <io_send_sw>
c0de17bc:	00000370 	.word	0x00000370

c0de17c0 <OUTLINED_FUNCTION_0>:
c0de17c0:	2020      	movs	r0, #32
c0de17c2:	2100      	movs	r1, #0
c0de17c4:	f005 be22 	b.w	c0de740c <cx_bn_lock>

c0de17c8 <OUTLINED_FUNCTION_1>:
c0de17c8:	b280      	uxth	r0, r0
c0de17ca:	f7fe bf80 	b.w	c0de06ce <io_send_sw>

c0de17ce <OUTLINED_FUNCTION_2>:
c0de17ce:	2120      	movs	r1, #32
c0de17d0:	2320      	movs	r3, #32
c0de17d2:	f005 be37 	b.w	c0de7444 <cx_bn_alloc_init>

c0de17d6 <OUTLINED_FUNCTION_3>:
c0de17d6:	2220      	movs	r2, #32
c0de17d8:	f005 be74 	b.w	c0de74c4 <cx_bn_export>

c0de17dc <OUTLINED_FUNCTION_4>:
c0de17dc:	2120      	movs	r1, #32
c0de17de:	f005 be27 	b.w	c0de7430 <cx_bn_alloc>

c0de17e2 <OUTLINED_FUNCTION_5>:
c0de17e2:	2320      	movs	r3, #32
c0de17e4:	f005 be2e 	b.w	c0de7444 <cx_bn_alloc_init>

c0de17e8 <OUTLINED_FUNCTION_6>:
c0de17e8:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de17ec:	9b01      	ldr	r3, [sp, #4]
c0de17ee:	9a04      	ldr	r2, [sp, #16]
c0de17f0:	3001      	adds	r0, #1
c0de17f2:	3901      	subs	r1, #1
c0de17f4:	4770      	bx	lr

c0de17f6 <OUTLINED_FUNCTION_7>:
c0de17f6:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de17fa:	f7fe bf5d 	b.w	c0de06b8 <io_send_response_pointer>

c0de17fe <OUTLINED_FUNCTION_8>:
c0de17fe:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de1802:	f7fe bf64 	b.w	c0de06ce <io_send_sw>

c0de1806 <OUTLINED_FUNCTION_9>:
c0de1806:	2120      	movs	r1, #32
c0de1808:	f7fe bf56 	b.w	c0de06b8 <io_send_response_pointer>

c0de180c <OUTLINED_FUNCTION_10>:
c0de180c:	4622      	mov	r2, r4
c0de180e:	f001 bbc4 	b.w	c0de2f9a <tEdwards_export>

c0de1812 <OUTLINED_FUNCTION_11>:
c0de1812:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de1816:	4610      	mov	r0, r2
c0de1818:	22f0      	movs	r2, #240	@ 0xf0
c0de181a:	f005 bfd3 	b.w	c0de77c4 <__aeabi_memcpy>

c0de181e <OUTLINED_FUNCTION_12>:
c0de181e:	4629      	mov	r1, r5
c0de1820:	f001 ba30 	b.w	c0de2c84 <tEdwards_Curve_alloc_init>

c0de1824 <helper_send_response_pubkey>:
c0de1824:	b5b0      	push	{r4, r5, r7, lr}
c0de1826:	b09a      	sub	sp, #104	@ 0x68
c0de1828:	2041      	movs	r0, #65	@ 0x41
c0de182a:	f10d 0405 	add.w	r4, sp, #5
c0de182e:	2241      	movs	r2, #65	@ 0x41
c0de1830:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1834:	480b      	ldr	r0, [pc, #44]	@ (c0de1864 <helper_send_response_pubkey+0x40>)
c0de1836:	eb09 0500 	add.w	r5, r9, r0
c0de183a:	1c60      	adds	r0, r4, #1
c0de183c:	f105 0108 	add.w	r1, r5, #8
c0de1840:	f005 ffc0 	bl	c0de77c4 <__aeabi_memcpy>
c0de1844:	2020      	movs	r0, #32
c0de1846:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de184a:	2220      	movs	r2, #32
c0de184c:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de1850:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1854:	f005 ffb6 	bl	c0de77c4 <__aeabi_memcpy>
c0de1858:	4620      	mov	r0, r4
c0de185a:	2163      	movs	r1, #99	@ 0x63
c0de185c:	f000 f804 	bl	c0de1868 <io_send_response_pointer>
c0de1860:	b01a      	add	sp, #104	@ 0x68
c0de1862:	bdb0      	pop	{r4, r5, r7, pc}
c0de1864:	00000000 	.word	0x00000000

c0de1868 <io_send_response_pointer>:
c0de1868:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de186a:	2200      	movs	r2, #0
c0de186c:	ab01      	add	r3, sp, #4
c0de186e:	c307      	stmia	r3!, {r0, r1, r2}
c0de1870:	a801      	add	r0, sp, #4
c0de1872:	2101      	movs	r1, #1
c0de1874:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de1878:	f005 f9b8 	bl	c0de6bec <io_send_response_buffers>
c0de187c:	b004      	add	sp, #16
c0de187e:	bd80      	pop	{r7, pc}

c0de1880 <helper_send_response_sig>:
c0de1880:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1882:	b099      	sub	sp, #100	@ 0x64
c0de1884:	f10d 0402 	add.w	r4, sp, #2
c0de1888:	2161      	movs	r1, #97	@ 0x61
c0de188a:	1c65      	adds	r5, r4, #1
c0de188c:	4628      	mov	r0, r5
c0de188e:	f005 ffa3 	bl	c0de77d8 <__aeabi_memclr>
c0de1892:	4808      	ldr	r0, [pc, #32]	@ (c0de18b4 <helper_send_response_sig+0x34>)
c0de1894:	f000 f810 	bl	c0de18b8 <OUTLINED_FUNCTION_0>
c0de1898:	f88d 6002 	strb.w	r6, [sp, #2]
c0de189c:	f005 ff92 	bl	c0de77c4 <__aeabi_memcpy>
c0de18a0:	f897 12b9 	ldrb.w	r1, [r7, #697]	@ 0x2b9
c0de18a4:	1930      	adds	r0, r6, r4
c0de18a6:	7041      	strb	r1, [r0, #1]
c0de18a8:	1cb1      	adds	r1, r6, #2
c0de18aa:	4620      	mov	r0, r4
c0de18ac:	f7ff ffdc 	bl	c0de1868 <io_send_response_pointer>
c0de18b0:	b019      	add	sp, #100	@ 0x64
c0de18b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de18b4:	00000000 	.word	0x00000000

c0de18b8 <OUTLINED_FUNCTION_0>:
c0de18b8:	eb09 0700 	add.w	r7, r9, r0
c0de18bc:	4628      	mov	r0, r5
c0de18be:	f897 62b8 	ldrb.w	r6, [r7, #696]	@ 0x2b8
c0de18c2:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de18c6:	4632      	mov	r2, r6
c0de18c8:	4770      	bx	lr

c0de18ca <transaction_deserialize>:
c0de18ca:	b570      	push	{r4, r5, r6, lr}
c0de18cc:	460d      	mov	r5, r1
c0de18ce:	4604      	mov	r4, r0
c0de18d0:	b910      	cbnz	r0, c0de18d8 <transaction_deserialize+0xe>
c0de18d2:	2001      	movs	r0, #1
c0de18d4:	f005 fb5a 	bl	c0de6f8c <assert_exit>
c0de18d8:	b915      	cbnz	r5, c0de18e0 <transaction_deserialize+0x16>
c0de18da:	2001      	movs	r0, #1
c0de18dc:	f005 fb56 	bl	c0de6f8c <assert_exit>
c0de18e0:	6860      	ldr	r0, [r4, #4]
c0de18e2:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de18e6:	d901      	bls.n	c0de18ec <transaction_deserialize+0x22>
c0de18e8:	20f9      	movs	r0, #249	@ 0xf9
c0de18ea:	e04b      	b.n	c0de1984 <transaction_deserialize+0xba>
c0de18ec:	4620      	mov	r0, r4
c0de18ee:	4629      	mov	r1, r5
c0de18f0:	2200      	movs	r2, #0
c0de18f2:	f004 ffbf 	bl	c0de6874 <buffer_read_u64>
c0de18f6:	b330      	cbz	r0, c0de1946 <transaction_deserialize+0x7c>
c0de18f8:	6820      	ldr	r0, [r4, #0]
c0de18fa:	68a1      	ldr	r1, [r4, #8]
c0de18fc:	4408      	add	r0, r1
c0de18fe:	2114      	movs	r1, #20
c0de1900:	61a8      	str	r0, [r5, #24]
c0de1902:	4620      	mov	r0, r4
c0de1904:	f004 ff95 	bl	c0de6832 <buffer_seek_cur>
c0de1908:	b1f8      	cbz	r0, c0de194a <transaction_deserialize+0x80>
c0de190a:	f105 0108 	add.w	r1, r5, #8
c0de190e:	4620      	mov	r0, r4
c0de1910:	2200      	movs	r2, #0
c0de1912:	2600      	movs	r6, #0
c0de1914:	f004 ffae 	bl	c0de6874 <buffer_read_u64>
c0de1918:	b1c8      	cbz	r0, c0de194e <transaction_deserialize+0x84>
c0de191a:	f105 0120 	add.w	r1, r5, #32
c0de191e:	4620      	mov	r0, r4
c0de1920:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1924:	f004 ffc6 	bl	c0de68b4 <buffer_read_varint>
c0de1928:	6a29      	ldr	r1, [r5, #32]
c0de192a:	b990      	cbnz	r0, c0de1952 <transaction_deserialize+0x88>
c0de192c:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de192e:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1932:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1936:	2300      	movs	r3, #0
c0de1938:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de193c:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1940:	d207      	bcs.n	c0de1952 <transaction_deserialize+0x88>
c0de1942:	20fc      	movs	r0, #252	@ 0xfc
c0de1944:	e01e      	b.n	c0de1984 <transaction_deserialize+0xba>
c0de1946:	20ff      	movs	r0, #255	@ 0xff
c0de1948:	e01c      	b.n	c0de1984 <transaction_deserialize+0xba>
c0de194a:	20fe      	movs	r0, #254	@ 0xfe
c0de194c:	e01a      	b.n	c0de1984 <transaction_deserialize+0xba>
c0de194e:	20fd      	movs	r0, #253	@ 0xfd
c0de1950:	e018      	b.n	c0de1984 <transaction_deserialize+0xba>
c0de1952:	6820      	ldr	r0, [r4, #0]
c0de1954:	68a2      	ldr	r2, [r4, #8]
c0de1956:	4410      	add	r0, r2
c0de1958:	61e8      	str	r0, [r5, #28]
c0de195a:	4620      	mov	r0, r4
c0de195c:	f004 ff69 	bl	c0de6832 <buffer_seek_cur>
c0de1960:	b168      	cbz	r0, c0de197e <transaction_deserialize+0xb4>
c0de1962:	f105 031c 	add.w	r3, r5, #28
c0de1966:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de1968:	f000 f80e 	bl	c0de1988 <transaction_utils_check_encoding>
c0de196c:	b148      	cbz	r0, c0de1982 <transaction_deserialize+0xb8>
c0de196e:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1972:	f06f 0006 	mvn.w	r0, #6
c0de1976:	428a      	cmp	r2, r1
c0de1978:	bf08      	it	eq
c0de197a:	2001      	moveq	r0, #1
c0de197c:	e002      	b.n	c0de1984 <transaction_deserialize+0xba>
c0de197e:	20fb      	movs	r0, #251	@ 0xfb
c0de1980:	e000      	b.n	c0de1984 <transaction_deserialize+0xba>
c0de1982:	20fa      	movs	r0, #250	@ 0xfa
c0de1984:	b240      	sxtb	r0, r0
c0de1986:	bd70      	pop	{r4, r5, r6, pc}

c0de1988 <transaction_utils_check_encoding>:
c0de1988:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de198a:	461c      	mov	r4, r3
c0de198c:	4615      	mov	r5, r2
c0de198e:	4606      	mov	r6, r0
c0de1990:	b910      	cbnz	r0, c0de1998 <transaction_utils_check_encoding+0x10>
c0de1992:	2001      	movs	r0, #1
c0de1994:	f005 fafa 	bl	c0de6f8c <assert_exit>
c0de1998:	2000      	movs	r0, #0
c0de199a:	2300      	movs	r3, #0
c0de199c:	4602      	mov	r2, r0
c0de199e:	1b40      	subs	r0, r0, r5
c0de19a0:	4619      	mov	r1, r3
c0de19a2:	eb73 0004 	sbcs.w	r0, r3, r4
c0de19a6:	d206      	bcs.n	c0de19b6 <transaction_utils_check_encoding+0x2e>
c0de19a8:	56b7      	ldrsb	r7, [r6, r2]
c0de19aa:	1c50      	adds	r0, r2, #1
c0de19ac:	f141 0300 	adc.w	r3, r1, #0
c0de19b0:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de19b4:	dcf2      	bgt.n	c0de199c <transaction_utils_check_encoding+0x14>
c0de19b6:	2000      	movs	r0, #0
c0de19b8:	1b52      	subs	r2, r2, r5
c0de19ba:	41a1      	sbcs	r1, r4
c0de19bc:	bf28      	it	cs
c0de19be:	2001      	movcs	r0, #1
c0de19c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de19c2 <validate_pubkey>:
c0de19c2:	b108      	cbz	r0, c0de19c8 <validate_pubkey+0x6>
c0de19c4:	f7ff bf2e 	b.w	c0de1824 <helper_send_response_pubkey>
c0de19c8:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de19cc:	f000 b800 	b.w	c0de19d0 <io_send_sw>

c0de19d0 <io_send_sw>:
c0de19d0:	b580      	push	{r7, lr}
c0de19d2:	4602      	mov	r2, r0
c0de19d4:	2000      	movs	r0, #0
c0de19d6:	2100      	movs	r1, #0
c0de19d8:	f005 f908 	bl	c0de6bec <io_send_response_buffers>
c0de19dc:	bd80      	pop	{r7, pc}
	...

c0de19e0 <validate_transaction>:
c0de19e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de19e4:	b08c      	sub	sp, #48	@ 0x30
c0de19e6:	b378      	cbz	r0, c0de1a48 <validate_transaction+0x68>
c0de19e8:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1a80 <validate_transaction+0xa0>
c0de19ec:	2002      	movs	r0, #2
c0de19ee:	2500      	movs	r5, #0
c0de19f0:	2720      	movs	r7, #32
c0de19f2:	2203      	movs	r2, #3
c0de19f4:	f240 6401 	movw	r4, #1537	@ 0x601
c0de19f8:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de19fc:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de1a00:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de1a02:	f809 0008 	strb.w	r0, [r9, r8]
c0de1a06:	2060      	movs	r0, #96	@ 0x60
c0de1a08:	900a      	str	r0, [sp, #40]	@ 0x28
c0de1a0a:	eb09 0008 	add.w	r0, r9, r8
c0de1a0e:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de1a12:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1a16:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1a1a:	e9cd 4200 	strd	r4, r2, [sp]
c0de1a1e:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de1a22:	2000      	movs	r0, #0
c0de1a24:	9508      	str	r5, [sp, #32]
c0de1a26:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1a2a:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de1a2e:	2121      	movs	r1, #33	@ 0x21
c0de1a30:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1a34:	f005 f850 	bl	c0de6ad8 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1a38:	b188      	cbz	r0, c0de1a5e <validate_transaction+0x7e>
c0de1a3a:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de1a3e:	f809 5008 	strb.w	r5, [r9, r8]
c0de1a42:	f7ff ffc5 	bl	c0de19d0 <io_send_sw>
c0de1a46:	e017      	b.n	c0de1a78 <validate_transaction+0x98>
c0de1a48:	480d      	ldr	r0, [pc, #52]	@ (c0de1a80 <validate_transaction+0xa0>)
c0de1a4a:	2100      	movs	r1, #0
c0de1a4c:	f809 1000 	strb.w	r1, [r9, r0]
c0de1a50:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1a54:	b00c      	add	sp, #48	@ 0x30
c0de1a56:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1a5a:	f7ff bfb9 	b.w	c0de19d0 <io_send_sw>
c0de1a5e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1a60:	eb09 0008 	add.w	r0, r9, r8
c0de1a64:	f880 12b8 	strb.w	r1, [r0, #696]	@ 0x2b8
c0de1a68:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1a6c:	f001 0101 	and.w	r1, r1, #1
c0de1a70:	f880 12b9 	strb.w	r1, [r0, #697]	@ 0x2b9
c0de1a74:	f7ff ff04 	bl	c0de1880 <helper_send_response_sig>
c0de1a78:	b00c      	add	sp, #48	@ 0x30
c0de1a7a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1a7e:	bf00      	nop
c0de1a80:	00000000 	.word	0x00000000

c0de1a84 <app_quit>:
c0de1a84:	20ff      	movs	r0, #255	@ 0xff
c0de1a86:	f005 fe45 	bl	c0de7714 <os_sched_exit>
	...

c0de1a8c <ui_menu_main>:
c0de1a8c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1a8e:	4c19      	ldr	r4, [pc, #100]	@ (c0de1af4 <ui_menu_main+0x68>)
c0de1a90:	4817      	ldr	r0, [pc, #92]	@ (c0de1af0 <ui_menu_main+0x64>)
c0de1a92:	447c      	add	r4, pc
c0de1a94:	eb09 0500 	add.w	r5, r9, r0
c0de1a98:	f000 f8d8 	bl	c0de1c4c <OUTLINED_FUNCTION_0>
c0de1a9c:	2114      	movs	r1, #20
c0de1a9e:	7369      	strb	r1, [r5, #13]
c0de1aa0:	4915      	ldr	r1, [pc, #84]	@ (c0de1af8 <ui_menu_main+0x6c>)
c0de1aa2:	4a16      	ldr	r2, [pc, #88]	@ (c0de1afc <ui_menu_main+0x70>)
c0de1aa4:	4479      	add	r1, pc
c0de1aa6:	447a      	add	r2, pc
c0de1aa8:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1aac:	7800      	ldrb	r0, [r0, #0]
c0de1aae:	7328      	strb	r0, [r5, #12]
c0de1ab0:	f000 f8cc 	bl	c0de1c4c <OUTLINED_FUNCTION_0>
c0de1ab4:	2115      	movs	r1, #21
c0de1ab6:	7669      	strb	r1, [r5, #25]
c0de1ab8:	4911      	ldr	r1, [pc, #68]	@ (c0de1b00 <ui_menu_main+0x74>)
c0de1aba:	4a12      	ldr	r2, [pc, #72]	@ (c0de1b04 <ui_menu_main+0x78>)
c0de1abc:	4479      	add	r1, pc
c0de1abe:	447a      	add	r2, pc
c0de1ac0:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1ac4:	2100      	movs	r1, #0
c0de1ac6:	7840      	ldrb	r0, [r0, #1]
c0de1ac8:	7628      	strb	r0, [r5, #24]
c0de1aca:	480f      	ldr	r0, [pc, #60]	@ (c0de1b08 <ui_menu_main+0x7c>)
c0de1acc:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1b0c <ui_menu_main+0x80>)
c0de1ace:	4b10      	ldr	r3, [pc, #64]	@ (c0de1b10 <ui_menu_main+0x84>)
c0de1ad0:	4478      	add	r0, pc
c0de1ad2:	447a      	add	r2, pc
c0de1ad4:	447b      	add	r3, pc
c0de1ad6:	e9cd 3200 	strd	r3, r2, [sp]
c0de1ada:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1ade:	2200      	movs	r2, #0
c0de1ae0:	23ff      	movs	r3, #255	@ 0xff
c0de1ae2:	480c      	ldr	r0, [pc, #48]	@ (c0de1b14 <ui_menu_main+0x88>)
c0de1ae4:	490c      	ldr	r1, [pc, #48]	@ (c0de1b18 <ui_menu_main+0x8c>)
c0de1ae6:	4478      	add	r0, pc
c0de1ae8:	4479      	add	r1, pc
c0de1aea:	f003 f93b 	bl	c0de4d64 <nbgl_useCaseHomeAndSettings>
c0de1aee:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1af0:	00000590 	.word	0x00000590
c0de1af4:	0000736a 	.word	0x0000736a
c0de1af8:	00006080 	.word	0x00006080
c0de1afc:	000061e7 	.word	0x000061e7
c0de1b00:	000060e3 	.word	0x000060e3
c0de1b04:	00005f57 	.word	0x00005f57
c0de1b08:	ffffffb1 	.word	0xffffffb1
c0de1b0c:	00006c96 	.word	0x00006c96
c0de1b10:	00006c88 	.word	0x00006c88
c0de1b14:	0000613c 	.word	0x0000613c
c0de1b18:	00005da9 	.word	0x00005da9

c0de1b1c <controls_callback>:
c0de1b1c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1b1e:	4c22      	ldr	r4, [pc, #136]	@ (c0de1ba8 <controls_callback+0x8c>)
c0de1b20:	2815      	cmp	r0, #21
c0de1b22:	f809 2004 	strb.w	r2, [r9, r4]
c0de1b26:	d011      	beq.n	c0de1b4c <controls_callback+0x30>
c0de1b28:	2814      	cmp	r0, #20
c0de1b2a:	d12a      	bne.n	c0de1b82 <controls_callback+0x66>
c0de1b2c:	eb09 0504 	add.w	r5, r9, r4
c0de1b30:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1bac <controls_callback+0x90>)
c0de1b32:	447c      	add	r4, pc
c0de1b34:	f000 f88a 	bl	c0de1c4c <OUTLINED_FUNCTION_0>
c0de1b38:	7800      	ldrb	r0, [r0, #0]
c0de1b3a:	fab0 f080 	clz	r0, r0
c0de1b3e:	0940      	lsrs	r0, r0, #5
c0de1b40:	7328      	strb	r0, [r5, #12]
c0de1b42:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1b46:	f000 f881 	bl	c0de1c4c <OUTLINED_FUNCTION_0>
c0de1b4a:	e015      	b.n	c0de1b78 <controls_callback+0x5c>
c0de1b4c:	4818      	ldr	r0, [pc, #96]	@ (c0de1bb0 <controls_callback+0x94>)
c0de1b4e:	4478      	add	r0, pc
c0de1b50:	f005 fc22 	bl	c0de7398 <pic>
c0de1b54:	7840      	ldrb	r0, [r0, #1]
c0de1b56:	b1a8      	cbz	r0, c0de1b84 <controls_callback+0x68>
c0de1b58:	eb09 0504 	add.w	r5, r9, r4
c0de1b5c:	4c15      	ldr	r4, [pc, #84]	@ (c0de1bb4 <controls_callback+0x98>)
c0de1b5e:	447c      	add	r4, pc
c0de1b60:	f000 f874 	bl	c0de1c4c <OUTLINED_FUNCTION_0>
c0de1b64:	7840      	ldrb	r0, [r0, #1]
c0de1b66:	fab0 f080 	clz	r0, r0
c0de1b6a:	0940      	lsrs	r0, r0, #5
c0de1b6c:	7628      	strb	r0, [r5, #24]
c0de1b6e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1b72:	f000 f86b 	bl	c0de1c4c <OUTLINED_FUNCTION_0>
c0de1b76:	3001      	adds	r0, #1
c0de1b78:	f10d 010f 	add.w	r1, sp, #15
c0de1b7c:	2201      	movs	r2, #1
c0de1b7e:	f005 fc3b 	bl	c0de73f8 <nvm_write>
c0de1b82:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1b84:	480c      	ldr	r0, [pc, #48]	@ (c0de1bb8 <controls_callback+0x9c>)
c0de1b86:	490d      	ldr	r1, [pc, #52]	@ (c0de1bbc <controls_callback+0xa0>)
c0de1b88:	4478      	add	r0, pc
c0de1b8a:	4479      	add	r1, pc
c0de1b8c:	e9cd 1000 	strd	r1, r0, [sp]
c0de1b90:	480b      	ldr	r0, [pc, #44]	@ (c0de1bc0 <controls_callback+0xa4>)
c0de1b92:	490c      	ldr	r1, [pc, #48]	@ (c0de1bc4 <controls_callback+0xa8>)
c0de1b94:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1bc8 <controls_callback+0xac>)
c0de1b96:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1bcc <controls_callback+0xb0>)
c0de1b98:	4478      	add	r0, pc
c0de1b9a:	4479      	add	r1, pc
c0de1b9c:	447a      	add	r2, pc
c0de1b9e:	447b      	add	r3, pc
c0de1ba0:	f003 fd58 	bl	c0de5654 <nbgl_useCaseChoice>
c0de1ba4:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1ba6:	bf00      	nop
c0de1ba8:	00000590 	.word	0x00000590
c0de1bac:	000072ca 	.word	0x000072ca
c0de1bb0:	000072ae 	.word	0x000072ae
c0de1bb4:	0000729e 	.word	0x0000729e
c0de1bb8:	00000045 	.word	0x00000045
c0de1bbc:	0000603b 	.word	0x0000603b
c0de1bc0:	00005e50 	.word	0x00005e50
c0de1bc4:	00005e7b 	.word	0x00005e7b
c0de1bc8:	00005f11 	.word	0x00005f11
c0de1bcc:	000060f7 	.word	0x000060f7

c0de1bd0 <review_warning_choice>:
c0de1bd0:	b5b0      	push	{r4, r5, r7, lr}
c0de1bd2:	b086      	sub	sp, #24
c0de1bd4:	b1a8      	cbz	r0, c0de1c02 <review_warning_choice+0x32>
c0de1bd6:	4c17      	ldr	r4, [pc, #92]	@ (c0de1c34 <review_warning_choice+0x64>)
c0de1bd8:	4815      	ldr	r0, [pc, #84]	@ (c0de1c30 <review_warning_choice+0x60>)
c0de1bda:	447c      	add	r4, pc
c0de1bdc:	eb09 0500 	add.w	r5, r9, r0
c0de1be0:	f000 f834 	bl	c0de1c4c <OUTLINED_FUNCTION_0>
c0de1be4:	7840      	ldrb	r0, [r0, #1]
c0de1be6:	fab0 f080 	clz	r0, r0
c0de1bea:	0940      	lsrs	r0, r0, #5
c0de1bec:	7628      	strb	r0, [r5, #24]
c0de1bee:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1bf2:	f000 f82b 	bl	c0de1c4c <OUTLINED_FUNCTION_0>
c0de1bf6:	3001      	adds	r0, #1
c0de1bf8:	f10d 0117 	add.w	r1, sp, #23
c0de1bfc:	2201      	movs	r2, #1
c0de1bfe:	f005 fbfb 	bl	c0de73f8 <nvm_write>
c0de1c02:	480b      	ldr	r0, [pc, #44]	@ (c0de1c30 <review_warning_choice+0x60>)
c0de1c04:	2100      	movs	r1, #0
c0de1c06:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1c0a:	480b      	ldr	r0, [pc, #44]	@ (c0de1c38 <review_warning_choice+0x68>)
c0de1c0c:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1c3c <review_warning_choice+0x6c>)
c0de1c0e:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1c40 <review_warning_choice+0x70>)
c0de1c10:	4478      	add	r0, pc
c0de1c12:	447a      	add	r2, pc
c0de1c14:	447c      	add	r4, pc
c0de1c16:	e9cd 4200 	strd	r4, r2, [sp]
c0de1c1a:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1c1e:	2200      	movs	r2, #0
c0de1c20:	4808      	ldr	r0, [pc, #32]	@ (c0de1c44 <review_warning_choice+0x74>)
c0de1c22:	4909      	ldr	r1, [pc, #36]	@ (c0de1c48 <review_warning_choice+0x78>)
c0de1c24:	4478      	add	r0, pc
c0de1c26:	4479      	add	r1, pc
c0de1c28:	f003 f89c 	bl	c0de4d64 <nbgl_useCaseHomeAndSettings>
c0de1c2c:	b006      	add	sp, #24
c0de1c2e:	bdb0      	pop	{r4, r5, r7, pc}
c0de1c30:	00000590 	.word	0x00000590
c0de1c34:	00007222 	.word	0x00007222
c0de1c38:	fffffe71 	.word	0xfffffe71
c0de1c3c:	00006b56 	.word	0x00006b56
c0de1c40:	00006b48 	.word	0x00006b48
c0de1c44:	00005ffe 	.word	0x00005ffe
c0de1c48:	00005c6b 	.word	0x00005c6b

c0de1c4c <OUTLINED_FUNCTION_0>:
c0de1c4c:	4620      	mov	r0, r4
c0de1c4e:	f005 bba3 	b.w	c0de7398 <pic>
	...

c0de1c54 <ui_display_address>:
c0de1c54:	b570      	push	{r4, r5, r6, lr}
c0de1c56:	b088      	sub	sp, #32
c0de1c58:	4e22      	ldr	r6, [pc, #136]	@ (c0de1ce4 <ui_display_address+0x90>)
c0de1c5a:	eb09 0106 	add.w	r1, r9, r6
c0de1c5e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1c62:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1c66:	4308      	orrs	r0, r1
c0de1c68:	d12a      	bne.n	c0de1cc0 <ui_display_address+0x6c>
c0de1c6a:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1ce8 <ui_display_address+0x94>)
c0de1c6c:	212b      	movs	r1, #43	@ 0x2b
c0de1c6e:	eb09 0005 	add.w	r0, r9, r5
c0de1c72:	f005 fdb1 	bl	c0de77d8 <__aeabi_memclr>
c0de1c76:	ac03      	add	r4, sp, #12
c0de1c78:	2114      	movs	r1, #20
c0de1c7a:	4620      	mov	r0, r4
c0de1c7c:	f005 fdac 	bl	c0de77d8 <__aeabi_memclr>
c0de1c80:	eb09 0006 	add.w	r0, r9, r6
c0de1c84:	4621      	mov	r1, r4
c0de1c86:	2214      	movs	r2, #20
c0de1c88:	3008      	adds	r0, #8
c0de1c8a:	f7fe f9c3 	bl	c0de0014 <address_from_pubkey>
c0de1c8e:	b308      	cbz	r0, c0de1cd4 <ui_display_address+0x80>
c0de1c90:	eb09 0205 	add.w	r2, r9, r5
c0de1c94:	a803      	add	r0, sp, #12
c0de1c96:	2114      	movs	r1, #20
c0de1c98:	232b      	movs	r3, #43	@ 0x2b
c0de1c9a:	f004 ff47 	bl	c0de6b2c <format_hex>
c0de1c9e:	3001      	adds	r0, #1
c0de1ca0:	d018      	beq.n	c0de1cd4 <ui_display_address+0x80>
c0de1ca2:	4812      	ldr	r0, [pc, #72]	@ (c0de1cec <ui_display_address+0x98>)
c0de1ca4:	2400      	movs	r4, #0
c0de1ca6:	2100      	movs	r1, #0
c0de1ca8:	4478      	add	r0, pc
c0de1caa:	e9cd 4000 	strd	r4, r0, [sp]
c0de1cae:	eb09 0005 	add.w	r0, r9, r5
c0de1cb2:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1cf0 <ui_display_address+0x9c>)
c0de1cb4:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1cf4 <ui_display_address+0xa0>)
c0de1cb6:	447a      	add	r2, pc
c0de1cb8:	447b      	add	r3, pc
c0de1cba:	f003 f9cd 	bl	c0de5058 <nbgl_useCaseAddressReview>
c0de1cbe:	e00e      	b.n	c0de1cde <ui_display_address+0x8a>
c0de1cc0:	2000      	movs	r0, #0
c0de1cc2:	f809 0006 	strb.w	r0, [r9, r6]
c0de1cc6:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1cca:	b008      	add	sp, #32
c0de1ccc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1cd0:	f000 b812 	b.w	c0de1cf8 <io_send_sw>
c0de1cd4:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1cd8:	f000 f80e 	bl	c0de1cf8 <io_send_sw>
c0de1cdc:	4604      	mov	r4, r0
c0de1cde:	4620      	mov	r0, r4
c0de1ce0:	b008      	add	sp, #32
c0de1ce2:	bd70      	pop	{r4, r5, r6, pc}
c0de1ce4:	00000000 	.word	0x00000000
c0de1ce8:	000005ac 	.word	0x000005ac
c0de1cec:	0000005d 	.word	0x0000005d
c0de1cf0:	00005d55 	.word	0x00005d55
c0de1cf4:	0000604d 	.word	0x0000604d

c0de1cf8 <io_send_sw>:
c0de1cf8:	b580      	push	{r7, lr}
c0de1cfa:	4602      	mov	r2, r0
c0de1cfc:	2000      	movs	r0, #0
c0de1cfe:	2100      	movs	r1, #0
c0de1d00:	f004 ff74 	bl	c0de6bec <io_send_response_buffers>
c0de1d04:	bd80      	pop	{r7, pc}
	...

c0de1d08 <review_choice>:
c0de1d08:	b510      	push	{r4, lr}
c0de1d0a:	4604      	mov	r4, r0
c0de1d0c:	f7ff fe59 	bl	c0de19c2 <validate_pubkey>
c0de1d10:	2007      	movs	r0, #7
c0de1d12:	2c00      	cmp	r4, #0
c0de1d14:	bf18      	it	ne
c0de1d16:	2006      	movne	r0, #6
c0de1d18:	4902      	ldr	r1, [pc, #8]	@ (c0de1d24 <review_choice+0x1c>)
c0de1d1a:	4479      	add	r1, pc
c0de1d1c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1d20:	f003 bb8c 	b.w	c0de543c <nbgl_useCaseReviewStatus>
c0de1d24:	fffffd6f 	.word	0xfffffd6f

c0de1d28 <ui_display_transaction_bs_choice>:
c0de1d28:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1d2a:	b085      	sub	sp, #20
c0de1d2c:	4f2d      	ldr	r7, [pc, #180]	@ (c0de1de4 <ui_display_transaction_bs_choice+0xbc>)
c0de1d2e:	4604      	mov	r4, r0
c0de1d30:	eb09 0007 	add.w	r0, r9, r7
c0de1d34:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1d38:	2801      	cmp	r0, #1
c0de1d3a:	d137      	bne.n	c0de1dac <ui_display_transaction_bs_choice+0x84>
c0de1d3c:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1d40:	2801      	cmp	r0, #1
c0de1d42:	d133      	bne.n	c0de1dac <ui_display_transaction_bs_choice+0x84>
c0de1d44:	4e28      	ldr	r6, [pc, #160]	@ (c0de1de8 <ui_display_transaction_bs_choice+0xc0>)
c0de1d46:	2140      	movs	r1, #64	@ 0x40
c0de1d48:	eb09 0006 	add.w	r0, r9, r6
c0de1d4c:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1d50:	4628      	mov	r0, r5
c0de1d52:	f005 fd41 	bl	c0de77d8 <__aeabi_memclr>
c0de1d56:	eb09 0007 	add.w	r0, r9, r7
c0de1d5a:	2114      	movs	r1, #20
c0de1d5c:	462a      	mov	r2, r5
c0de1d5e:	2340      	movs	r3, #64	@ 0x40
c0de1d60:	302d      	adds	r0, #45	@ 0x2d
c0de1d62:	f004 fee3 	bl	c0de6b2c <format_hex>
c0de1d66:	3001      	adds	r0, #1
c0de1d68:	d026      	beq.n	c0de1db8 <ui_display_transaction_bs_choice+0x90>
c0de1d6a:	4920      	ldr	r1, [pc, #128]	@ (c0de1dec <ui_display_transaction_bs_choice+0xc4>)
c0de1d6c:	eb09 0006 	add.w	r0, r9, r6
c0de1d70:	4602      	mov	r2, r0
c0de1d72:	4479      	add	r1, pc
c0de1d74:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1d78:	2101      	movs	r1, #1
c0de1d7a:	72c1      	strb	r1, [r0, #11]
c0de1d7c:	7201      	strb	r1, [r0, #8]
c0de1d7e:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1d82:	f849 2006 	str.w	r2, [r9, r6]
c0de1d86:	6181      	str	r1, [r0, #24]
c0de1d88:	2100      	movs	r1, #0
c0de1d8a:	4819      	ldr	r0, [pc, #100]	@ (c0de1df0 <ui_display_transaction_bs_choice+0xc8>)
c0de1d8c:	4478      	add	r0, pc
c0de1d8e:	b1d4      	cbz	r4, c0de1dc6 <ui_display_transaction_bs_choice+0x9e>
c0de1d90:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1d94:	e9cd 1100 	strd	r1, r1, [sp]
c0de1d98:	eb09 0106 	add.w	r1, r9, r6
c0de1d9c:	2000      	movs	r0, #0
c0de1d9e:	4a15      	ldr	r2, [pc, #84]	@ (c0de1df4 <ui_display_transaction_bs_choice+0xcc>)
c0de1da0:	4b15      	ldr	r3, [pc, #84]	@ (c0de1df8 <ui_display_transaction_bs_choice+0xd0>)
c0de1da2:	447a      	add	r2, pc
c0de1da4:	447b      	add	r3, pc
c0de1da6:	f003 f945 	bl	c0de5034 <nbgl_useCaseReviewBlindSigning>
c0de1daa:	e018      	b.n	c0de1dde <ui_display_transaction_bs_choice+0xb6>
c0de1dac:	2000      	movs	r0, #0
c0de1dae:	f809 0007 	strb.w	r0, [r9, r7]
c0de1db2:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1db6:	e001      	b.n	c0de1dbc <ui_display_transaction_bs_choice+0x94>
c0de1db8:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1dbc:	b005      	add	sp, #20
c0de1dbe:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1dc2:	f000 b81f 	b.w	c0de1e04 <io_send_sw>
c0de1dc6:	e9cd 1100 	strd	r1, r1, [sp]
c0de1dca:	9002      	str	r0, [sp, #8]
c0de1dcc:	eb09 0106 	add.w	r1, r9, r6
c0de1dd0:	2000      	movs	r0, #0
c0de1dd2:	4a0a      	ldr	r2, [pc, #40]	@ (c0de1dfc <ui_display_transaction_bs_choice+0xd4>)
c0de1dd4:	4b0a      	ldr	r3, [pc, #40]	@ (c0de1e00 <ui_display_transaction_bs_choice+0xd8>)
c0de1dd6:	447a      	add	r2, pc
c0de1dd8:	447b      	add	r3, pc
c0de1dda:	f003 f86b 	bl	c0de4eb4 <nbgl_useCaseReview>
c0de1dde:	2000      	movs	r0, #0
c0de1de0:	b005      	add	sp, #20
c0de1de2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1de4:	00000000 	.word	0x00000000
c0de1de8:	000005d8 	.word	0x000005d8
c0de1dec:	00005f39 	.word	0x00005f39
c0de1df0:	00000085 	.word	0x00000085
c0de1df4:	00005c69 	.word	0x00005c69
c0de1df8:	00005f74 	.word	0x00005f74
c0de1dfc:	00005c35 	.word	0x00005c35
c0de1e00:	00005f40 	.word	0x00005f40

c0de1e04 <io_send_sw>:
c0de1e04:	b580      	push	{r7, lr}
c0de1e06:	4602      	mov	r2, r0
c0de1e08:	2000      	movs	r0, #0
c0de1e0a:	2100      	movs	r1, #0
c0de1e0c:	f004 feee 	bl	c0de6bec <io_send_response_buffers>
c0de1e10:	bd80      	pop	{r7, pc}
	...

c0de1e14 <review_choice>:
c0de1e14:	b510      	push	{r4, lr}
c0de1e16:	4604      	mov	r4, r0
c0de1e18:	f7ff fde2 	bl	c0de19e0 <validate_transaction>
c0de1e1c:	4903      	ldr	r1, [pc, #12]	@ (c0de1e2c <review_choice+0x18>)
c0de1e1e:	f084 0001 	eor.w	r0, r4, #1
c0de1e22:	4479      	add	r1, pc
c0de1e24:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1e28:	f003 bb08 	b.w	c0de543c <nbgl_useCaseReviewStatus>
c0de1e2c:	fffffc67 	.word	0xfffffc67

c0de1e30 <ui_display_blind_signed_transaction>:
c0de1e30:	2001      	movs	r0, #1
c0de1e32:	f7ff bf79 	b.w	c0de1d28 <ui_display_transaction_bs_choice>

c0de1e36 <ui_display_transaction>:
c0de1e36:	2000      	movs	r0, #0
c0de1e38:	f7ff bf76 	b.w	c0de1d28 <ui_display_transaction_bs_choice>

c0de1e3c <zkn_prv_hash>:
c0de1e3c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1e40:	460c      	mov	r4, r1
c0de1e42:	e9cd 0200 	strd	r0, r2, [sp]
c0de1e46:	4668      	mov	r0, sp
c0de1e48:	2101      	movs	r1, #1
c0de1e4a:	2601      	movs	r6, #1
c0de1e4c:	4622      	mov	r2, r4
c0de1e4e:	f005 f864 	bl	c0de6f1a <cx_blake2b_512_hash_iovec>
c0de1e52:	4605      	mov	r5, r0
c0de1e54:	bb18      	cbnz	r0, c0de1e9e <zkn_prv_hash+0x62>
c0de1e56:	7820      	ldrb	r0, [r4, #0]
c0de1e58:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1e5c:	7020      	strb	r0, [r4, #0]
c0de1e5e:	7fe0      	ldrb	r0, [r4, #31]
c0de1e60:	f366 109f 	bfi	r0, r6, #6, #26
c0de1e64:	77e0      	strb	r0, [r4, #31]
c0de1e66:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1e6a:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1ea4 <zkn_prv_hash+0x68>)
c0de1e6c:	447e      	add	r6, pc
c0de1e6e:	47b0      	blx	r6
c0de1e70:	4680      	mov	r8, r0
c0de1e72:	468a      	mov	sl, r1
c0de1e74:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1e78:	47b0      	blx	r6
c0de1e7a:	4683      	mov	fp, r0
c0de1e7c:	460f      	mov	r7, r1
c0de1e7e:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1e82:	47b0      	blx	r6
c0de1e84:	e9c4 0100 	strd	r0, r1, [r4]
c0de1e88:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1e8c:	47b0      	blx	r6
c0de1e8e:	f104 0208 	add.w	r2, r4, #8
c0de1e92:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1e96:	f104 0014 	add.w	r0, r4, #20
c0de1e9a:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1e9e:	4628      	mov	r0, r5
c0de1ea0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1ea4:	00000325 	.word	0x00000325

c0de1ea8 <zkn_prv2pub>:
c0de1ea8:	b570      	push	{r4, r5, r6, lr}
c0de1eaa:	b092      	sub	sp, #72	@ 0x48
c0de1eac:	4614      	mov	r4, r2
c0de1eae:	6802      	ldr	r2, [r0, #0]
c0de1eb0:	ae02      	add	r6, sp, #8
c0de1eb2:	4605      	mov	r5, r0
c0de1eb4:	4608      	mov	r0, r1
c0de1eb6:	4631      	mov	r1, r6
c0de1eb8:	f7ff ffc0 	bl	c0de1e3c <zkn_prv_hash>
c0de1ebc:	2000      	movs	r0, #0
c0de1ebe:	2100      	movs	r1, #0
c0de1ec0:	2820      	cmp	r0, #32
c0de1ec2:	d009      	beq.n	c0de1ed8 <zkn_prv2pub+0x30>
c0de1ec4:	5c32      	ldrb	r2, [r6, r0]
c0de1ec6:	0149      	lsls	r1, r1, #5
c0de1ec8:	0613      	lsls	r3, r2, #24
c0de1eca:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1ece:	5431      	strb	r1, [r6, r0]
c0de1ed0:	f002 0107 	and.w	r1, r2, #7
c0de1ed4:	3001      	adds	r0, #1
c0de1ed6:	e7f3      	b.n	c0de1ec0 <zkn_prv2pub+0x18>
c0de1ed8:	4629      	mov	r1, r5
c0de1eda:	4628      	mov	r0, r5
c0de1edc:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1ee0:	9400      	str	r4, [sp, #0]
c0de1ee2:	aa02      	add	r2, sp, #8
c0de1ee4:	f001 f944 	bl	c0de3170 <tEdwards_scalarMul>
c0de1ee8:	b918      	cbnz	r0, c0de1ef2 <zkn_prv2pub+0x4a>
c0de1eea:	4628      	mov	r0, r5
c0de1eec:	4621      	mov	r1, r4
c0de1eee:	f001 f87a 	bl	c0de2fe6 <tEdwards_normalize>
c0de1ef2:	b012      	add	sp, #72	@ 0x48
c0de1ef4:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1ef8 <EddsaPoseidon_Sign_final>:
c0de1ef8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1efc:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1f00:	4605      	mov	r5, r0
c0de1f02:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1f04:	2820      	cmp	r0, #32
c0de1f06:	d118      	bne.n	c0de1f3a <EddsaPoseidon_Sign_final+0x42>
c0de1f08:	460e      	mov	r6, r1
c0de1f0a:	a982      	add	r1, sp, #520	@ 0x208
c0de1f0c:	4628      	mov	r0, r5
c0de1f0e:	461f      	mov	r7, r3
c0de1f10:	4692      	mov	sl, r2
c0de1f12:	f000 fd37 	bl	c0de2984 <tEdwards_alloc>
c0de1f16:	b988      	cbnz	r0, c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1f18:	682a      	ldr	r2, [r5, #0]
c0de1f1a:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1f1c:	4630      	mov	r0, r6
c0de1f1e:	4621      	mov	r1, r4
c0de1f20:	f7ff ff8c 	bl	c0de1e3c <zkn_prv_hash>
c0de1f24:	b950      	cbnz	r0, c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1f26:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1f2a:	2000      	movs	r0, #0
c0de1f2c:	a95a      	add	r1, sp, #360	@ 0x168
c0de1f2e:	2820      	cmp	r0, #32
c0de1f30:	d008      	beq.n	c0de1f44 <EddsaPoseidon_Sign_final+0x4c>
c0de1f32:	5c22      	ldrb	r2, [r4, r0]
c0de1f34:	540a      	strb	r2, [r1, r0]
c0de1f36:	3001      	adds	r0, #1
c0de1f38:	e7f9      	b.n	c0de1f2e <EddsaPoseidon_Sign_final+0x36>
c0de1f3a:	4894      	ldr	r0, [pc, #592]	@ (c0de218c <EddsaPoseidon_Sign_final+0x294>)
c0de1f3c:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1f40:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1f44:	a812      	add	r0, sp, #72	@ 0x48
c0de1f46:	2109      	movs	r1, #9
c0de1f48:	2240      	movs	r2, #64	@ 0x40
c0de1f4a:	f005 f807 	bl	c0de6f5c <cx_hash_init_ex>
c0de1f4e:	2800      	cmp	r0, #0
c0de1f50:	d1f4      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1f52:	f104 0120 	add.w	r1, r4, #32
c0de1f56:	a812      	add	r0, sp, #72	@ 0x48
c0de1f58:	2220      	movs	r2, #32
c0de1f5a:	f005 f804 	bl	c0de6f66 <cx_hash_update>
c0de1f5e:	2800      	cmp	r0, #0
c0de1f60:	d1ec      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1f62:	a812      	add	r0, sp, #72	@ 0x48
c0de1f64:	4639      	mov	r1, r7
c0de1f66:	2220      	movs	r2, #32
c0de1f68:	f004 fffd 	bl	c0de6f66 <cx_hash_update>
c0de1f6c:	2800      	cmp	r0, #0
c0de1f6e:	d1e5      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1f70:	a812      	add	r0, sp, #72	@ 0x48
c0de1f72:	ac62      	add	r4, sp, #392	@ 0x188
c0de1f74:	4621      	mov	r1, r4
c0de1f76:	f004 ffec 	bl	c0de6f52 <cx_hash_final>
c0de1f7a:	2800      	cmp	r0, #0
c0de1f7c:	d1de      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1f7e:	203f      	movs	r0, #63	@ 0x3f
c0de1f80:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1f82:	1c42      	adds	r2, r0, #1
c0de1f84:	d004      	beq.n	c0de1f90 <EddsaPoseidon_Sign_final+0x98>
c0de1f86:	5c22      	ldrb	r2, [r4, r0]
c0de1f88:	3801      	subs	r0, #1
c0de1f8a:	f801 2b01 	strb.w	r2, [r1], #1
c0de1f8e:	e7f8      	b.n	c0de1f82 <EddsaPoseidon_Sign_final+0x8a>
c0de1f90:	a889      	add	r0, sp, #548	@ 0x224
c0de1f92:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1f94:	2140      	movs	r1, #64	@ 0x40
c0de1f96:	2340      	movs	r3, #64	@ 0x40
c0de1f98:	f005 fa54 	bl	c0de7444 <cx_bn_alloc_init>
c0de1f9c:	2800      	cmp	r0, #0
c0de1f9e:	d1cd      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1fa0:	a887      	add	r0, sp, #540	@ 0x21c
c0de1fa2:	2140      	movs	r1, #64	@ 0x40
c0de1fa4:	f005 fa44 	bl	c0de7430 <cx_bn_alloc>
c0de1fa8:	2800      	cmp	r0, #0
c0de1faa:	d1c7      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1fac:	4978      	ldr	r1, [pc, #480]	@ (c0de2190 <EddsaPoseidon_Sign_final+0x298>)
c0de1fae:	f10d 0808 	add.w	r8, sp, #8
c0de1fb2:	2240      	movs	r2, #64	@ 0x40
c0de1fb4:	4640      	mov	r0, r8
c0de1fb6:	4479      	add	r1, pc
c0de1fb8:	f005 fc04 	bl	c0de77c4 <__aeabi_memcpy>
c0de1fbc:	a888      	add	r0, sp, #544	@ 0x220
c0de1fbe:	2140      	movs	r1, #64	@ 0x40
c0de1fc0:	4642      	mov	r2, r8
c0de1fc2:	2340      	movs	r3, #64	@ 0x40
c0de1fc4:	f005 fa3e 	bl	c0de7444 <cx_bn_alloc_init>
c0de1fc8:	2800      	cmp	r0, #0
c0de1fca:	d1b7      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1fcc:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1fce:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1fd2:	f005 facb 	bl	c0de756c <cx_bn_reduce>
c0de1fd6:	2800      	cmp	r0, #0
c0de1fd8:	d1b0      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1fda:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1fdc:	f105 010c 	add.w	r1, r5, #12
c0de1fe0:	ab82      	add	r3, sp, #520	@ 0x208
c0de1fe2:	4628      	mov	r0, r5
c0de1fe4:	f001 f85e 	bl	c0de30a4 <tEdwards_scalarMul_bn>
c0de1fe8:	2800      	cmp	r0, #0
c0de1fea:	d1a7      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1fec:	a982      	add	r1, sp, #520	@ 0x208
c0de1fee:	4628      	mov	r0, r5
c0de1ff0:	f000 fff9 	bl	c0de2fe6 <tEdwards_normalize>
c0de1ff4:	2800      	cmp	r0, #0
c0de1ff6:	d1a1      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de1ff8:	f10b 0320 	add.w	r3, fp, #32
c0de1ffc:	a982      	add	r1, sp, #520	@ 0x208
c0de1ffe:	4628      	mov	r0, r5
c0de2000:	465a      	mov	r2, fp
c0de2002:	f000 ffca 	bl	c0de2f9a <tEdwards_export>
c0de2006:	2800      	cmp	r0, #0
c0de2008:	d198      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de200a:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de200c:	a952      	add	r1, sp, #328	@ 0x148
c0de200e:	2220      	movs	r2, #32
c0de2010:	f005 fa58 	bl	c0de74c4 <cx_bn_export>
c0de2014:	2800      	cmp	r0, #0
c0de2016:	d191      	bne.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2018:	a888      	add	r0, sp, #544	@ 0x220
c0de201a:	f005 fa1f 	bl	c0de745c <cx_bn_destroy>
c0de201e:	2800      	cmp	r0, #0
c0de2020:	f47f af8c 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2024:	a889      	add	r0, sp, #548	@ 0x224
c0de2026:	f005 fa19 	bl	c0de745c <cx_bn_destroy>
c0de202a:	2800      	cmp	r0, #0
c0de202c:	f47f af86 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2030:	a887      	add	r0, sp, #540	@ 0x21c
c0de2032:	f005 fa13 	bl	c0de745c <cx_bn_destroy>
c0de2036:	2800      	cmp	r0, #0
c0de2038:	f47f af80 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de203c:	4628      	mov	r0, r5
c0de203e:	f000 ff50 	bl	c0de2ee2 <tEdwards_Curve_partial_destroy>
c0de2042:	2800      	cmp	r0, #0
c0de2044:	f47f af7a 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2048:	f105 0420 	add.w	r4, r5, #32
c0de204c:	a88a      	add	r0, sp, #552	@ 0x228
c0de204e:	f000 f8a5 	bl	c0de219c <OUTLINED_FUNCTION_0>
c0de2052:	2800      	cmp	r0, #0
c0de2054:	f47f af72 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2058:	201f      	movs	r0, #31
c0de205a:	a962      	add	r1, sp, #392	@ 0x188
c0de205c:	1c42      	adds	r2, r0, #1
c0de205e:	d004      	beq.n	c0de206a <EddsaPoseidon_Sign_final+0x172>
c0de2060:	5c3a      	ldrb	r2, [r7, r0]
c0de2062:	3801      	subs	r0, #1
c0de2064:	f801 2b01 	strb.w	r2, [r1], #1
c0de2068:	e7f8      	b.n	c0de205c <EddsaPoseidon_Sign_final+0x164>
c0de206a:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de206c:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de206e:	f005 fa15 	bl	c0de749c <cx_bn_copy>
c0de2072:	2800      	cmp	r0, #0
c0de2074:	f47f af62 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2078:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de207a:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de207c:	f005 fa0e 	bl	c0de749c <cx_bn_copy>
c0de2080:	2800      	cmp	r0, #0
c0de2082:	f47f af5b 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2086:	f8da 1000 	ldr.w	r1, [sl]
c0de208a:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de208c:	f005 fa06 	bl	c0de749c <cx_bn_copy>
c0de2090:	2800      	cmp	r0, #0
c0de2092:	f47f af53 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2096:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de209a:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de209c:	f005 f9fe 	bl	c0de749c <cx_bn_copy>
c0de20a0:	2800      	cmp	r0, #0
c0de20a2:	f47f af4b 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de20a6:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de20a8:	a962      	add	r1, sp, #392	@ 0x188
c0de20aa:	2220      	movs	r2, #32
c0de20ac:	f005 f9ea 	bl	c0de7484 <cx_bn_init>
c0de20b0:	2800      	cmp	r0, #0
c0de20b2:	f47f af43 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de20b6:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de20b8:	4622      	mov	r2, r4
c0de20ba:	4601      	mov	r1, r0
c0de20bc:	f005 fa8c 	bl	c0de75d8 <cx_mont_to_montgomery>
c0de20c0:	2800      	cmp	r0, #0
c0de20c2:	f47f af3b 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de20c6:	a982      	add	r1, sp, #520	@ 0x208
c0de20c8:	4628      	mov	r0, r5
c0de20ca:	f000 fc70 	bl	c0de29ae <tEdwards_destroy>
c0de20ce:	2800      	cmp	r0, #0
c0de20d0:	f47f af34 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de20d4:	a885      	add	r0, sp, #532	@ 0x214
c0de20d6:	2120      	movs	r1, #32
c0de20d8:	f005 f9aa 	bl	c0de7430 <cx_bn_alloc>
c0de20dc:	2800      	cmp	r0, #0
c0de20de:	f47f af2d 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de20e2:	a88a      	add	r0, sp, #552	@ 0x228
c0de20e4:	aa85      	add	r2, sp, #532	@ 0x214
c0de20e6:	2100      	movs	r1, #0
c0de20e8:	2301      	movs	r3, #1
c0de20ea:	f001 f9cd 	bl	c0de3488 <Poseidon>
c0de20ee:	2800      	cmp	r0, #0
c0de20f0:	f47f af24 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de20f4:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de20f6:	4622      	mov	r2, r4
c0de20f8:	4601      	mov	r1, r0
c0de20fa:	f005 fa79 	bl	c0de75f0 <cx_mont_from_montgomery>
c0de20fe:	2800      	cmp	r0, #0
c0de2100:	f47f af1c 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2104:	a886      	add	r0, sp, #536	@ 0x218
c0de2106:	aa5a      	add	r2, sp, #360	@ 0x168
c0de2108:	2120      	movs	r1, #32
c0de210a:	2320      	movs	r3, #32
c0de210c:	f005 f99a 	bl	c0de7444 <cx_bn_alloc_init>
c0de2110:	2800      	cmp	r0, #0
c0de2112:	f47f af13 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2116:	a801      	add	r0, sp, #4
c0de2118:	2120      	movs	r1, #32
c0de211a:	f005 f989 	bl	c0de7430 <cx_bn_alloc>
c0de211e:	2800      	cmp	r0, #0
c0de2120:	f47f af0c 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2124:	f108 0220 	add.w	r2, r8, #32
c0de2128:	a888      	add	r0, sp, #544	@ 0x220
c0de212a:	2120      	movs	r1, #32
c0de212c:	2320      	movs	r3, #32
c0de212e:	f005 f989 	bl	c0de7444 <cx_bn_alloc_init>
c0de2132:	2800      	cmp	r0, #0
c0de2134:	f47f af02 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de2138:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de213a:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de213e:	9801      	ldr	r0, [sp, #4]
c0de2140:	f005 fa08 	bl	c0de7554 <cx_bn_mod_mul>
c0de2144:	2800      	cmp	r0, #0
c0de2146:	f47f aef9 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de214a:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de214c:	a952      	add	r1, sp, #328	@ 0x148
c0de214e:	2220      	movs	r2, #32
c0de2150:	f005 f998 	bl	c0de7484 <cx_bn_init>
c0de2154:	2800      	cmp	r0, #0
c0de2156:	f47f aef1 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de215a:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de215c:	9a01      	ldr	r2, [sp, #4]
c0de215e:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de2162:	f005 f9df 	bl	c0de7524 <cx_bn_mod_add>
c0de2166:	2800      	cmp	r0, #0
c0de2168:	f47f aee8 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de216c:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de216e:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de2172:	f005 f9fb 	bl	c0de756c <cx_bn_reduce>
c0de2176:	2800      	cmp	r0, #0
c0de2178:	f47f aee0 	bne.w	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de217c:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de217e:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de2182:	2220      	movs	r2, #32
c0de2184:	f005 f99e 	bl	c0de74c4 <cx_bn_export>
c0de2188:	e6d8      	b.n	c0de1f3c <EddsaPoseidon_Sign_final+0x44>
c0de218a:	bf00      	nop
c0de218c:	5a4b4e03 	.word	0x5a4b4e03
c0de2190:	0000680a 	.word	0x0000680a

c0de2194 <rev64>:
c0de2194:	ba0a      	rev	r2, r1
c0de2196:	ba01      	rev	r1, r0
c0de2198:	4610      	mov	r0, r2
c0de219a:	4770      	bx	lr

c0de219c <OUTLINED_FUNCTION_0>:
c0de219c:	2105      	movs	r1, #5
c0de219e:	2205      	movs	r2, #5
c0de21a0:	4623      	mov	r3, r4
c0de21a2:	f001 b90b 	b.w	c0de33bc <Poseidon_alloc_init>

c0de21a6 <zkn_frost_interpolate>:
c0de21a6:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de21aa:	b085      	sub	sp, #20
c0de21ac:	460e      	mov	r6, r1
c0de21ae:	4607      	mov	r7, r0
c0de21b0:	a803      	add	r0, sp, #12
c0de21b2:	2120      	movs	r1, #32
c0de21b4:	f000 fbda 	bl	c0de296c <OUTLINED_FUNCTION_4>
c0de21b8:	b988      	cbnz	r0, c0de21de <zkn_frost_interpolate+0x38>
c0de21ba:	a802      	add	r0, sp, #8
c0de21bc:	f000 fbcf 	bl	c0de295e <OUTLINED_FUNCTION_2>
c0de21c0:	b968      	cbnz	r0, c0de21de <zkn_frost_interpolate+0x38>
c0de21c2:	a801      	add	r0, sp, #4
c0de21c4:	f000 fbcb 	bl	c0de295e <OUTLINED_FUNCTION_2>
c0de21c8:	b948      	cbnz	r0, c0de21de <zkn_frost_interpolate+0x38>
c0de21ca:	9803      	ldr	r0, [sp, #12]
c0de21cc:	2101      	movs	r1, #1
c0de21ce:	f005 f96f 	bl	c0de74b0 <cx_bn_set_u32>
c0de21d2:	b920      	cbnz	r0, c0de21de <zkn_frost_interpolate+0x38>
c0de21d4:	9802      	ldr	r0, [sp, #8]
c0de21d6:	2101      	movs	r1, #1
c0de21d8:	f005 f96a 	bl	c0de74b0 <cx_bn_set_u32>
c0de21dc:	b110      	cbz	r0, c0de21e4 <zkn_frost_interpolate+0x3e>
c0de21de:	b005      	add	sp, #20
c0de21e0:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de21e4:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de21e8:	f10d 0a10 	add.w	sl, sp, #16
c0de21ec:	b31e      	cbz	r6, c0de2236 <zkn_frost_interpolate+0x90>
c0de21ee:	6838      	ldr	r0, [r7, #0]
c0de21f0:	4629      	mov	r1, r5
c0de21f2:	4652      	mov	r2, sl
c0de21f4:	f005 f972 	bl	c0de74dc <cx_bn_cmp>
c0de21f8:	2800      	cmp	r0, #0
c0de21fa:	d1f0      	bne.n	c0de21de <zkn_frost_interpolate+0x38>
c0de21fc:	9804      	ldr	r0, [sp, #16]
c0de21fe:	b1b8      	cbz	r0, c0de2230 <zkn_frost_interpolate+0x8a>
c0de2200:	9802      	ldr	r0, [sp, #8]
c0de2202:	683a      	ldr	r2, [r7, #0]
c0de2204:	4623      	mov	r3, r4
c0de2206:	4601      	mov	r1, r0
c0de2208:	f005 f9a4 	bl	c0de7554 <cx_bn_mod_mul>
c0de220c:	2800      	cmp	r0, #0
c0de220e:	d1e6      	bne.n	c0de21de <zkn_frost_interpolate+0x38>
c0de2210:	6839      	ldr	r1, [r7, #0]
c0de2212:	9801      	ldr	r0, [sp, #4]
c0de2214:	462a      	mov	r2, r5
c0de2216:	4623      	mov	r3, r4
c0de2218:	f005 f990 	bl	c0de753c <cx_bn_mod_sub>
c0de221c:	2800      	cmp	r0, #0
c0de221e:	d1de      	bne.n	c0de21de <zkn_frost_interpolate+0x38>
c0de2220:	9803      	ldr	r0, [sp, #12]
c0de2222:	9a01      	ldr	r2, [sp, #4]
c0de2224:	4623      	mov	r3, r4
c0de2226:	4601      	mov	r1, r0
c0de2228:	f005 f994 	bl	c0de7554 <cx_bn_mod_mul>
c0de222c:	2800      	cmp	r0, #0
c0de222e:	d1d6      	bne.n	c0de21de <zkn_frost_interpolate+0x38>
c0de2230:	3704      	adds	r7, #4
c0de2232:	3e01      	subs	r6, #1
c0de2234:	e7da      	b.n	c0de21ec <zkn_frost_interpolate+0x46>
c0de2236:	9903      	ldr	r1, [sp, #12]
c0de2238:	4640      	mov	r0, r8
c0de223a:	4622      	mov	r2, r4
c0de223c:	f005 f9a2 	bl	c0de7584 <cx_bn_mod_invert_nprime>
c0de2240:	2800      	cmp	r0, #0
c0de2242:	d1cc      	bne.n	c0de21de <zkn_frost_interpolate+0x38>
c0de2244:	9a02      	ldr	r2, [sp, #8]
c0de2246:	4640      	mov	r0, r8
c0de2248:	4641      	mov	r1, r8
c0de224a:	4623      	mov	r3, r4
c0de224c:	f005 f982 	bl	c0de7554 <cx_bn_mod_mul>
c0de2250:	2800      	cmp	r0, #0
c0de2252:	d1c4      	bne.n	c0de21de <zkn_frost_interpolate+0x38>
c0de2254:	a803      	add	r0, sp, #12
c0de2256:	f005 f901 	bl	c0de745c <cx_bn_destroy>
c0de225a:	2800      	cmp	r0, #0
c0de225c:	d1bf      	bne.n	c0de21de <zkn_frost_interpolate+0x38>
c0de225e:	a802      	add	r0, sp, #8
c0de2260:	f005 f8fc 	bl	c0de745c <cx_bn_destroy>
c0de2264:	e7bb      	b.n	c0de21de <zkn_frost_interpolate+0x38>

c0de2266 <zkn_frost_interpolate_secrets>:
c0de2266:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de226a:	460f      	mov	r7, r1
c0de226c:	4606      	mov	r6, r0
c0de226e:	a802      	add	r0, sp, #8
c0de2270:	2120      	movs	r1, #32
c0de2272:	461c      	mov	r4, r3
c0de2274:	4692      	mov	sl, r2
c0de2276:	f005 f8db 	bl	c0de7430 <cx_bn_alloc>
c0de227a:	b108      	cbz	r0, c0de2280 <zkn_frost_interpolate_secrets+0x1a>
c0de227c:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de2280:	a801      	add	r0, sp, #4
c0de2282:	f000 fb6c 	bl	c0de295e <OUTLINED_FUNCTION_2>
c0de2286:	2800      	cmp	r0, #0
c0de2288:	d1f8      	bne.n	c0de227c <zkn_frost_interpolate_secrets+0x16>
c0de228a:	9802      	ldr	r0, [sp, #8]
c0de228c:	2100      	movs	r1, #0
c0de228e:	f005 f90f 	bl	c0de74b0 <cx_bn_set_u32>
c0de2292:	2800      	cmp	r0, #0
c0de2294:	d1f2      	bne.n	c0de227c <zkn_frost_interpolate_secrets+0x16>
c0de2296:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de229a:	2500      	movs	r5, #0
c0de229c:	42ac      	cmp	r4, r5
c0de229e:	d01d      	beq.n	c0de22dc <zkn_frost_interpolate_secrets+0x76>
c0de22a0:	9801      	ldr	r0, [sp, #4]
c0de22a2:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de22a6:	68b3      	ldr	r3, [r6, #8]
c0de22a8:	4621      	mov	r1, r4
c0de22aa:	9000      	str	r0, [sp, #0]
c0de22ac:	4638      	mov	r0, r7
c0de22ae:	f7ff ff7a 	bl	c0de21a6 <zkn_frost_interpolate>
c0de22b2:	2800      	cmp	r0, #0
c0de22b4:	d1e2      	bne.n	c0de227c <zkn_frost_interpolate_secrets+0x16>
c0de22b6:	9801      	ldr	r0, [sp, #4]
c0de22b8:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de22bc:	68b3      	ldr	r3, [r6, #8]
c0de22be:	4601      	mov	r1, r0
c0de22c0:	f005 f948 	bl	c0de7554 <cx_bn_mod_mul>
c0de22c4:	2800      	cmp	r0, #0
c0de22c6:	d1d9      	bne.n	c0de227c <zkn_frost_interpolate_secrets+0x16>
c0de22c8:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de22cc:	68b3      	ldr	r3, [r6, #8]
c0de22ce:	4601      	mov	r1, r0
c0de22d0:	f005 f928 	bl	c0de7524 <cx_bn_mod_add>
c0de22d4:	3501      	adds	r5, #1
c0de22d6:	2800      	cmp	r0, #0
c0de22d8:	d0e0      	beq.n	c0de229c <zkn_frost_interpolate_secrets+0x36>
c0de22da:	e7cf      	b.n	c0de227c <zkn_frost_interpolate_secrets+0x16>
c0de22dc:	68b2      	ldr	r2, [r6, #8]
c0de22de:	9902      	ldr	r1, [sp, #8]
c0de22e0:	4640      	mov	r0, r8
c0de22e2:	f005 f943 	bl	c0de756c <cx_bn_reduce>
c0de22e6:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de22ea <zkn_evalshare>:
c0de22ea:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de22ee:	460e      	mov	r6, r1
c0de22f0:	6801      	ldr	r1, [r0, #0]
c0de22f2:	4607      	mov	r7, r0
c0de22f4:	a801      	add	r0, sp, #4
c0de22f6:	f000 fb39 	bl	c0de296c <OUTLINED_FUNCTION_4>
c0de22fa:	b108      	cbz	r0, c0de2300 <zkn_evalshare+0x16>
c0de22fc:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de2300:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2304:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2308:	4640      	mov	r0, r8
c0de230a:	f005 f8c7 	bl	c0de749c <cx_bn_copy>
c0de230e:	2800      	cmp	r0, #0
c0de2310:	d1f4      	bne.n	c0de22fc <zkn_evalshare+0x12>
c0de2312:	3e04      	subs	r6, #4
c0de2314:	68bb      	ldr	r3, [r7, #8]
c0de2316:	9801      	ldr	r0, [sp, #4]
c0de2318:	4641      	mov	r1, r8
c0de231a:	b17d      	cbz	r5, c0de233c <zkn_evalshare+0x52>
c0de231c:	4622      	mov	r2, r4
c0de231e:	f005 f919 	bl	c0de7554 <cx_bn_mod_mul>
c0de2322:	2800      	cmp	r0, #0
c0de2324:	d1ea      	bne.n	c0de22fc <zkn_evalshare+0x12>
c0de2326:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de232a:	68bb      	ldr	r3, [r7, #8]
c0de232c:	9901      	ldr	r1, [sp, #4]
c0de232e:	4640      	mov	r0, r8
c0de2330:	f005 f8f8 	bl	c0de7524 <cx_bn_mod_add>
c0de2334:	3d01      	subs	r5, #1
c0de2336:	2800      	cmp	r0, #0
c0de2338:	d0ec      	beq.n	c0de2314 <zkn_evalshare+0x2a>
c0de233a:	e7df      	b.n	c0de22fc <zkn_evalshare+0x12>
c0de233c:	461a      	mov	r2, r3
c0de233e:	f005 f915 	bl	c0de756c <cx_bn_reduce>
c0de2342:	2800      	cmp	r0, #0
c0de2344:	d1da      	bne.n	c0de22fc <zkn_evalshare+0x12>
c0de2346:	9901      	ldr	r1, [sp, #4]
c0de2348:	4640      	mov	r0, r8
c0de234a:	f005 f8a7 	bl	c0de749c <cx_bn_copy>
c0de234e:	2800      	cmp	r0, #0
c0de2350:	d1d4      	bne.n	c0de22fc <zkn_evalshare+0x12>
c0de2352:	a801      	add	r0, sp, #4
c0de2354:	f005 f882 	bl	c0de745c <cx_bn_destroy>
c0de2358:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de235c <zkn_frost_nonce_generate>:
c0de235c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de235e:	b091      	sub	sp, #68	@ 0x44
c0de2360:	af01      	add	r7, sp, #4
c0de2362:	460e      	mov	r6, r1
c0de2364:	4605      	mov	r5, r0
c0de2366:	2120      	movs	r1, #32
c0de2368:	4614      	mov	r4, r2
c0de236a:	4638      	mov	r0, r7
c0de236c:	f004 fe00 	bl	c0de6f70 <cx_rng_no_throw>
c0de2370:	f107 0020 	add.w	r0, r7, #32
c0de2374:	4631      	mov	r1, r6
c0de2376:	2220      	movs	r2, #32
c0de2378:	f005 fa24 	bl	c0de77c4 <__aeabi_memcpy>
c0de237c:	6829      	ldr	r1, [r5, #0]
c0de237e:	4668      	mov	r0, sp
c0de2380:	f005 f856 	bl	c0de7430 <cx_bn_alloc>
c0de2384:	b978      	cbnz	r0, c0de23a6 <zkn_frost_nonce_generate+0x4a>
c0de2386:	68aa      	ldr	r2, [r5, #8]
c0de2388:	9b00      	ldr	r3, [sp, #0]
c0de238a:	a801      	add	r0, sp, #4
c0de238c:	2140      	movs	r1, #64	@ 0x40
c0de238e:	f001 f9a5 	bl	c0de36dc <Babyfrost_H3>
c0de2392:	b940      	cbnz	r0, c0de23a6 <zkn_frost_nonce_generate+0x4a>
c0de2394:	682a      	ldr	r2, [r5, #0]
c0de2396:	9800      	ldr	r0, [sp, #0]
c0de2398:	4621      	mov	r1, r4
c0de239a:	f005 f893 	bl	c0de74c4 <cx_bn_export>
c0de239e:	b910      	cbnz	r0, c0de23a6 <zkn_frost_nonce_generate+0x4a>
c0de23a0:	4668      	mov	r0, sp
c0de23a2:	f005 f85b 	bl	c0de745c <cx_bn_destroy>
c0de23a6:	b011      	add	sp, #68	@ 0x44
c0de23a8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de23aa <zkn_frost_commit>:
c0de23aa:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de23ae:	461d      	mov	r5, r3
c0de23b0:	4617      	mov	r7, r2
c0de23b2:	460e      	mov	r6, r1
c0de23b4:	4604      	mov	r4, r0
c0de23b6:	f7ff ffd1 	bl	c0de235c <zkn_frost_nonce_generate>
c0de23ba:	b9f8      	cbnz	r0, c0de23fc <zkn_frost_commit+0x52>
c0de23bc:	f107 0a20 	add.w	sl, r7, #32
c0de23c0:	4620      	mov	r0, r4
c0de23c2:	4631      	mov	r1, r6
c0de23c4:	4652      	mov	r2, sl
c0de23c6:	f7ff ffc9 	bl	c0de235c <zkn_frost_nonce_generate>
c0de23ca:	b9b8      	cbnz	r0, c0de23fc <zkn_frost_commit+0x52>
c0de23cc:	46a0      	mov	r8, r4
c0de23ce:	4620      	mov	r0, r4
c0de23d0:	463a      	mov	r2, r7
c0de23d2:	f858 3b0c 	ldr.w	r3, [r8], #12
c0de23d6:	9500      	str	r5, [sp, #0]
c0de23d8:	4641      	mov	r1, r8
c0de23da:	f000 fec9 	bl	c0de3170 <tEdwards_scalarMul>
c0de23de:	b968      	cbnz	r0, c0de23fc <zkn_frost_commit+0x52>
c0de23e0:	4620      	mov	r0, r4
c0de23e2:	4629      	mov	r1, r5
c0de23e4:	f000 fdff 	bl	c0de2fe6 <tEdwards_normalize>
c0de23e8:	b940      	cbnz	r0, c0de23fc <zkn_frost_commit+0x52>
c0de23ea:	6823      	ldr	r3, [r4, #0]
c0de23ec:	350c      	adds	r5, #12
c0de23ee:	4620      	mov	r0, r4
c0de23f0:	4641      	mov	r1, r8
c0de23f2:	4652      	mov	r2, sl
c0de23f4:	9500      	str	r5, [sp, #0]
c0de23f6:	f000 febb 	bl	c0de3170 <tEdwards_scalarMul>
c0de23fa:	b108      	cbz	r0, c0de2400 <zkn_frost_commit+0x56>
c0de23fc:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de2400:	4620      	mov	r0, r4
c0de2402:	4629      	mov	r1, r5
c0de2404:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2408:	f000 bded 	b.w	c0de2fe6 <tEdwards_normalize>

c0de240c <zkn_encode_group_commitmentHash>:
c0de240c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2410:	b0d6      	sub	sp, #344	@ 0x158
c0de2412:	4606      	mov	r6, r0
c0de2414:	a816      	add	r0, sp, #88	@ 0x58
c0de2416:	461c      	mov	r4, r3
c0de2418:	4615      	mov	r5, r2
c0de241a:	460f      	mov	r7, r1
c0de241c:	f001 f9be 	bl	c0de379c <zkn_frost_H5_init>
c0de2420:	b110      	cbz	r0, c0de2428 <zkn_encode_group_commitmentHash+0x1c>
c0de2422:	b056      	add	sp, #344	@ 0x158
c0de2424:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2428:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de242c:	9401      	str	r4, [sp, #4]
c0de242e:	a806      	add	r0, sp, #24
c0de2430:	f04f 0a00 	mov.w	sl, #0
c0de2434:	f04f 0b02 	mov.w	fp, #2
c0de2438:	2604      	movs	r6, #4
c0de243a:	2400      	movs	r4, #0
c0de243c:	9502      	str	r5, [sp, #8]
c0de243e:	f1a0 0801 	sub.w	r8, r0, #1
c0de2442:	42ac      	cmp	r4, r5
c0de2444:	d058      	beq.n	c0de24f8 <zkn_encode_group_commitmentHash+0xec>
c0de2446:	9805      	ldr	r0, [sp, #20]
c0de2448:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de244c:	9103      	str	r1, [sp, #12]
c0de244e:	6805      	ldr	r5, [r0, #0]
c0de2450:	9804      	ldr	r0, [sp, #16]
c0de2452:	fb05 000a 	mla	r0, r5, sl, r0
c0de2456:	4629      	mov	r1, r5
c0de2458:	b129      	cbz	r1, c0de2466 <zkn_encode_group_commitmentHash+0x5a>
c0de245a:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de245e:	f808 2001 	strb.w	r2, [r8, r1]
c0de2462:	3901      	subs	r1, #1
c0de2464:	e7f8      	b.n	c0de2458 <zkn_encode_group_commitmentHash+0x4c>
c0de2466:	a816      	add	r0, sp, #88	@ 0x58
c0de2468:	a906      	add	r1, sp, #24
c0de246a:	462a      	mov	r2, r5
c0de246c:	f001 f9b0 	bl	c0de37d0 <zkn_frost_hash_update>
c0de2470:	2800      	cmp	r0, #0
c0de2472:	d1d6      	bne.n	c0de2422 <zkn_encode_group_commitmentHash+0x16>
c0de2474:	9803      	ldr	r0, [sp, #12]
c0de2476:	9f04      	ldr	r7, [sp, #16]
c0de2478:	1c43      	adds	r3, r0, #1
c0de247a:	9805      	ldr	r0, [sp, #20]
c0de247c:	fb05 710b 	mla	r1, r5, fp, r7
c0de2480:	6802      	ldr	r2, [r0, #0]
c0de2482:	1e50      	subs	r0, r2, #1
c0de2484:	4615      	mov	r5, r2
c0de2486:	fb02 0303 	mla	r3, r2, r3, r0
c0de248a:	5cfb      	ldrb	r3, [r7, r3]
c0de248c:	b12d      	cbz	r5, c0de249a <zkn_encode_group_commitmentHash+0x8e>
c0de248e:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2492:	f808 7005 	strb.w	r7, [r8, r5]
c0de2496:	3d01      	subs	r5, #1
c0de2498:	e7f8      	b.n	c0de248c <zkn_encode_group_commitmentHash+0x80>
c0de249a:	a906      	add	r1, sp, #24
c0de249c:	5c0d      	ldrb	r5, [r1, r0]
c0de249e:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de24a2:	540b      	strb	r3, [r1, r0]
c0de24a4:	a816      	add	r0, sp, #88	@ 0x58
c0de24a6:	f001 f993 	bl	c0de37d0 <zkn_frost_hash_update>
c0de24aa:	2800      	cmp	r0, #0
c0de24ac:	d1b9      	bne.n	c0de2422 <zkn_encode_group_commitmentHash+0x16>
c0de24ae:	9805      	ldr	r0, [sp, #20]
c0de24b0:	9d04      	ldr	r5, [sp, #16]
c0de24b2:	6802      	ldr	r2, [r0, #0]
c0de24b4:	9803      	ldr	r0, [sp, #12]
c0de24b6:	1cc3      	adds	r3, r0, #3
c0de24b8:	1e50      	subs	r0, r2, #1
c0de24ba:	fb02 5106 	mla	r1, r2, r6, r5
c0de24be:	fb02 0303 	mla	r3, r2, r3, r0
c0de24c2:	5ceb      	ldrb	r3, [r5, r3]
c0de24c4:	4615      	mov	r5, r2
c0de24c6:	b12d      	cbz	r5, c0de24d4 <zkn_encode_group_commitmentHash+0xc8>
c0de24c8:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de24cc:	f808 7005 	strb.w	r7, [r8, r5]
c0de24d0:	3d01      	subs	r5, #1
c0de24d2:	e7f8      	b.n	c0de24c6 <zkn_encode_group_commitmentHash+0xba>
c0de24d4:	a906      	add	r1, sp, #24
c0de24d6:	5c0d      	ldrb	r5, [r1, r0]
c0de24d8:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de24dc:	540b      	strb	r3, [r1, r0]
c0de24de:	a816      	add	r0, sp, #88	@ 0x58
c0de24e0:	f001 f976 	bl	c0de37d0 <zkn_frost_hash_update>
c0de24e4:	3605      	adds	r6, #5
c0de24e6:	3401      	adds	r4, #1
c0de24e8:	9d02      	ldr	r5, [sp, #8]
c0de24ea:	f10b 0b05 	add.w	fp, fp, #5
c0de24ee:	f10a 0a05 	add.w	sl, sl, #5
c0de24f2:	2800      	cmp	r0, #0
c0de24f4:	d0a5      	beq.n	c0de2442 <zkn_encode_group_commitmentHash+0x36>
c0de24f6:	e794      	b.n	c0de2422 <zkn_encode_group_commitmentHash+0x16>
c0de24f8:	9805      	ldr	r0, [sp, #20]
c0de24fa:	6881      	ldr	r1, [r0, #8]
c0de24fc:	a816      	add	r0, sp, #88	@ 0x58
c0de24fe:	9a01      	ldr	r2, [sp, #4]
c0de2500:	f001 f968 	bl	c0de37d4 <zkn_frost_hash_final>
c0de2504:	e78d      	b.n	c0de2422 <zkn_encode_group_commitmentHash+0x16>

c0de2506 <zkn_compute_group_commitment>:
c0de2506:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de250a:	b088      	sub	sp, #32
c0de250c:	460d      	mov	r5, r1
c0de250e:	a905      	add	r1, sp, #20
c0de2510:	461f      	mov	r7, r3
c0de2512:	4693      	mov	fp, r2
c0de2514:	4604      	mov	r4, r0
c0de2516:	f000 fa35 	bl	c0de2984 <tEdwards_alloc>
c0de251a:	b948      	cbnz	r0, c0de2530 <zkn_compute_group_commitment+0x2a>
c0de251c:	a902      	add	r1, sp, #8
c0de251e:	4620      	mov	r0, r4
c0de2520:	f000 fa30 	bl	c0de2984 <tEdwards_alloc>
c0de2524:	b920      	cbnz	r0, c0de2530 <zkn_compute_group_commitment+0x2a>
c0de2526:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2528:	4620      	mov	r0, r4
c0de252a:	f000 fd23 	bl	c0de2f74 <tEdwards_SetNeutral>
c0de252e:	b110      	cbz	r0, c0de2536 <zkn_compute_group_commitment+0x30>
c0de2530:	b008      	add	sp, #32
c0de2532:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2536:	ae05      	add	r6, sp, #20
c0de2538:	f04f 0800 	mov.w	r8, #0
c0de253c:	f04f 0a04 	mov.w	sl, #4
c0de2540:	9501      	str	r5, [sp, #4]
c0de2542:	4547      	cmp	r7, r8
c0de2544:	d041      	beq.n	c0de25ca <zkn_compute_group_commitment+0xc4>
c0de2546:	6822      	ldr	r2, [r4, #0]
c0de2548:	f1aa 0003 	sub.w	r0, sl, #3
c0de254c:	4633      	mov	r3, r6
c0de254e:	fb02 5100 	mla	r1, r2, r0, r5
c0de2552:	f1aa 0002 	sub.w	r0, sl, #2
c0de2556:	fb02 5200 	mla	r2, r2, r0, r5
c0de255a:	4620      	mov	r0, r4
c0de255c:	f000 fc82 	bl	c0de2e64 <tEdwards_init>
c0de2560:	2800      	cmp	r0, #0
c0de2562:	d1e5      	bne.n	c0de2530 <zkn_compute_group_commitment+0x2a>
c0de2564:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2566:	4620      	mov	r0, r4
c0de2568:	4632      	mov	r2, r6
c0de256a:	460b      	mov	r3, r1
c0de256c:	f000 fa9b 	bl	c0de2aa6 <tEdwards_add>
c0de2570:	2800      	cmp	r0, #0
c0de2572:	d1dd      	bne.n	c0de2530 <zkn_compute_group_commitment+0x2a>
c0de2574:	6822      	ldr	r2, [r4, #0]
c0de2576:	f1aa 0001 	sub.w	r0, sl, #1
c0de257a:	4633      	mov	r3, r6
c0de257c:	fb02 5100 	mla	r1, r2, r0, r5
c0de2580:	fb02 520a 	mla	r2, r2, sl, r5
c0de2584:	4620      	mov	r0, r4
c0de2586:	f000 fc6d 	bl	c0de2e64 <tEdwards_init>
c0de258a:	2800      	cmp	r0, #0
c0de258c:	d1d0      	bne.n	c0de2530 <zkn_compute_group_commitment+0x2a>
c0de258e:	6823      	ldr	r3, [r4, #0]
c0de2590:	4658      	mov	r0, fp
c0de2592:	f10d 0b08 	add.w	fp, sp, #8
c0de2596:	4631      	mov	r1, r6
c0de2598:	4605      	mov	r5, r0
c0de259a:	f8cd b000 	str.w	fp, [sp]
c0de259e:	fb03 0208 	mla	r2, r3, r8, r0
c0de25a2:	4620      	mov	r0, r4
c0de25a4:	f000 fde4 	bl	c0de3170 <tEdwards_scalarMul>
c0de25a8:	2800      	cmp	r0, #0
c0de25aa:	d1c1      	bne.n	c0de2530 <zkn_compute_group_commitment+0x2a>
c0de25ac:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de25ae:	4620      	mov	r0, r4
c0de25b0:	465a      	mov	r2, fp
c0de25b2:	460b      	mov	r3, r1
c0de25b4:	f000 fa77 	bl	c0de2aa6 <tEdwards_add>
c0de25b8:	46ab      	mov	fp, r5
c0de25ba:	9d01      	ldr	r5, [sp, #4]
c0de25bc:	f10a 0a05 	add.w	sl, sl, #5
c0de25c0:	f108 0801 	add.w	r8, r8, #1
c0de25c4:	2800      	cmp	r0, #0
c0de25c6:	d0bc      	beq.n	c0de2542 <zkn_compute_group_commitment+0x3c>
c0de25c8:	e7b2      	b.n	c0de2530 <zkn_compute_group_commitment+0x2a>
c0de25ca:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de25cc:	4620      	mov	r0, r4
c0de25ce:	f000 fd0a 	bl	c0de2fe6 <tEdwards_normalize>
c0de25d2:	2800      	cmp	r0, #0
c0de25d4:	d1ac      	bne.n	c0de2530 <zkn_compute_group_commitment+0x2a>
c0de25d6:	a905      	add	r1, sp, #20
c0de25d8:	f000 f9d1 	bl	c0de297e <OUTLINED_FUNCTION_6>
c0de25dc:	2800      	cmp	r0, #0
c0de25de:	d1a7      	bne.n	c0de2530 <zkn_compute_group_commitment+0x2a>
c0de25e0:	a902      	add	r1, sp, #8
c0de25e2:	f000 f9cc 	bl	c0de297e <OUTLINED_FUNCTION_6>
c0de25e6:	e7a3      	b.n	c0de2530 <zkn_compute_group_commitment+0x2a>

c0de25e8 <zkn_compute_binding_factors>:
c0de25e8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de25ec:	b0f4      	sub	sp, #464	@ 0x1d0
c0de25ee:	460e      	mov	r6, r1
c0de25f0:	6801      	ldr	r1, [r0, #0]
c0de25f2:	4607      	mov	r7, r0
c0de25f4:	a873      	add	r0, sp, #460	@ 0x1cc
c0de25f6:	f000 f9b9 	bl	c0de296c <OUTLINED_FUNCTION_4>
c0de25fa:	b9f0      	cbnz	r0, c0de263a <zkn_compute_binding_factors+0x52>
c0de25fc:	6839      	ldr	r1, [r7, #0]
c0de25fe:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2600:	f004 ff16 	bl	c0de7430 <cx_bn_alloc>
c0de2604:	b9c8      	cbnz	r0, c0de263a <zkn_compute_binding_factors+0x52>
c0de2606:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de260a:	68ba      	ldr	r2, [r7, #8]
c0de260c:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de260e:	f001 f879 	bl	c0de3704 <Babyfrost_H4>
c0de2612:	b990      	cbnz	r0, c0de263a <zkn_compute_binding_factors+0x52>
c0de2614:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de2616:	4638      	mov	r0, r7
c0de2618:	4629      	mov	r1, r5
c0de261a:	4622      	mov	r2, r4
c0de261c:	f7ff fef6 	bl	c0de240c <zkn_encode_group_commitmentHash>
c0de2620:	b958      	cbnz	r0, c0de263a <zkn_compute_binding_factors+0x52>
c0de2622:	683a      	ldr	r2, [r7, #0]
c0de2624:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de2626:	a912      	add	r1, sp, #72	@ 0x48
c0de2628:	f004 ff4c 	bl	c0de74c4 <cx_bn_export>
c0de262c:	b928      	cbnz	r0, c0de263a <zkn_compute_binding_factors+0x52>
c0de262e:	683a      	ldr	r2, [r7, #0]
c0de2630:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de2632:	a902      	add	r1, sp, #8
c0de2634:	f004 ff46 	bl	c0de74c4 <cx_bn_export>
c0de2638:	b110      	cbz	r0, c0de2640 <zkn_compute_binding_factors+0x58>
c0de263a:	b074      	add	sp, #464	@ 0x1d0
c0de263c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2640:	2000      	movs	r0, #0
c0de2642:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de2646:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de264a:	f04f 0800 	mov.w	r8, #0
c0de264e:	9000      	str	r0, [sp, #0]
c0de2650:	4544      	cmp	r4, r8
c0de2652:	d043      	beq.n	c0de26dc <zkn_compute_binding_factors+0xf4>
c0de2654:	6839      	ldr	r1, [r7, #0]
c0de2656:	a801      	add	r0, sp, #4
c0de2658:	f004 feea 	bl	c0de7430 <cx_bn_alloc>
c0de265c:	2800      	cmp	r0, #0
c0de265e:	d1ec      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de2660:	4650      	mov	r0, sl
c0de2662:	f001 f881 	bl	c0de3768 <zkn_frost_H1_init>
c0de2666:	2800      	cmp	r0, #0
c0de2668:	d1e7      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de266a:	6839      	ldr	r1, [r7, #0]
c0de266c:	4630      	mov	r0, r6
c0de266e:	465a      	mov	r2, fp
c0de2670:	f000 f966 	bl	c0de2940 <OUTLINED_FUNCTION_0>
c0de2674:	2800      	cmp	r0, #0
c0de2676:	d1e0      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de2678:	6839      	ldr	r1, [r7, #0]
c0de267a:	a812      	add	r0, sp, #72	@ 0x48
c0de267c:	465a      	mov	r2, fp
c0de267e:	f000 f95f 	bl	c0de2940 <OUTLINED_FUNCTION_0>
c0de2682:	2800      	cmp	r0, #0
c0de2684:	d1d9      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de2686:	6839      	ldr	r1, [r7, #0]
c0de2688:	a802      	add	r0, sp, #8
c0de268a:	465a      	mov	r2, fp
c0de268c:	f000 f958 	bl	c0de2940 <OUTLINED_FUNCTION_0>
c0de2690:	2800      	cmp	r0, #0
c0de2692:	d1d2      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de2694:	6839      	ldr	r1, [r7, #0]
c0de2696:	9800      	ldr	r0, [sp, #0]
c0de2698:	465a      	mov	r2, fp
c0de269a:	fb00 5001 	mla	r0, r0, r1, r5
c0de269e:	f000 f94f 	bl	c0de2940 <OUTLINED_FUNCTION_0>
c0de26a2:	2800      	cmp	r0, #0
c0de26a4:	d1c9      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de26a6:	68b9      	ldr	r1, [r7, #8]
c0de26a8:	9a01      	ldr	r2, [sp, #4]
c0de26aa:	4650      	mov	r0, sl
c0de26ac:	f001 f892 	bl	c0de37d4 <zkn_frost_hash_final>
c0de26b0:	2800      	cmp	r0, #0
c0de26b2:	d1c2      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de26b4:	683a      	ldr	r2, [r7, #0]
c0de26b6:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de26b8:	fb02 0108 	mla	r1, r2, r8, r0
c0de26bc:	9801      	ldr	r0, [sp, #4]
c0de26be:	f004 ff01 	bl	c0de74c4 <cx_bn_export>
c0de26c2:	2800      	cmp	r0, #0
c0de26c4:	d1b9      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de26c6:	a801      	add	r0, sp, #4
c0de26c8:	f004 fec8 	bl	c0de745c <cx_bn_destroy>
c0de26cc:	2800      	cmp	r0, #0
c0de26ce:	d1b4      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de26d0:	9800      	ldr	r0, [sp, #0]
c0de26d2:	f108 0801 	add.w	r8, r8, #1
c0de26d6:	3005      	adds	r0, #5
c0de26d8:	9000      	str	r0, [sp, #0]
c0de26da:	e7b9      	b.n	c0de2650 <zkn_compute_binding_factors+0x68>
c0de26dc:	a873      	add	r0, sp, #460	@ 0x1cc
c0de26de:	f004 febd 	bl	c0de745c <cx_bn_destroy>
c0de26e2:	2800      	cmp	r0, #0
c0de26e4:	d1a9      	bne.n	c0de263a <zkn_compute_binding_factors+0x52>
c0de26e6:	a872      	add	r0, sp, #456	@ 0x1c8
c0de26e8:	f004 feb8 	bl	c0de745c <cx_bn_destroy>
c0de26ec:	e7a5      	b.n	c0de263a <zkn_compute_binding_factors+0x52>

c0de26ee <zkn_serialize_scalar_for_hash>:
c0de26ee:	3a01      	subs	r2, #1
c0de26f0:	b121      	cbz	r1, c0de26fc <zkn_serialize_scalar_for_hash+0xe>
c0de26f2:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de26f6:	5453      	strb	r3, [r2, r1]
c0de26f8:	3901      	subs	r1, #1
c0de26fa:	e7f9      	b.n	c0de26f0 <zkn_serialize_scalar_for_hash+0x2>
c0de26fc:	4770      	bx	lr
	...

c0de2700 <compute_challenge>:
c0de2700:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2704:	b0bc      	sub	sp, #240	@ 0xf0
c0de2706:	4606      	mov	r6, r0
c0de2708:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de270a:	2820      	cmp	r0, #32
c0de270c:	d14b      	bne.n	c0de27a6 <compute_challenge+0xa6>
c0de270e:	4630      	mov	r0, r6
c0de2710:	461f      	mov	r7, r3
c0de2712:	4614      	mov	r4, r2
c0de2714:	460d      	mov	r5, r1
c0de2716:	f000 fbe4 	bl	c0de2ee2 <tEdwards_Curve_partial_destroy>
c0de271a:	2800      	cmp	r0, #0
c0de271c:	d144      	bne.n	c0de27a8 <compute_challenge+0xa8>
c0de271e:	f106 0820 	add.w	r8, r6, #32
c0de2722:	4668      	mov	r0, sp
c0de2724:	2105      	movs	r1, #5
c0de2726:	2205      	movs	r2, #5
c0de2728:	4643      	mov	r3, r8
c0de272a:	f000 fe47 	bl	c0de33bc <Poseidon_alloc_init>
c0de272e:	bbd8      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de2730:	6829      	ldr	r1, [r5, #0]
c0de2732:	9807      	ldr	r0, [sp, #28]
c0de2734:	f004 feb2 	bl	c0de749c <cx_bn_copy>
c0de2738:	bbb0      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de273a:	6869      	ldr	r1, [r5, #4]
c0de273c:	9808      	ldr	r0, [sp, #32]
c0de273e:	f004 fead 	bl	c0de749c <cx_bn_copy>
c0de2742:	bb88      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de2744:	6832      	ldr	r2, [r6, #0]
c0de2746:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de2748:	4621      	mov	r1, r4
c0de274a:	f004 fe9b 	bl	c0de7484 <cx_bn_init>
c0de274e:	bb58      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de2750:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de2752:	f000 f907 	bl	c0de2964 <OUTLINED_FUNCTION_3>
c0de2756:	bb38      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de2758:	6832      	ldr	r2, [r6, #0]
c0de275a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de275c:	f104 0120 	add.w	r1, r4, #32
c0de2760:	f004 fe90 	bl	c0de7484 <cx_bn_init>
c0de2764:	bb00      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de2766:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2768:	f000 f8fc 	bl	c0de2964 <OUTLINED_FUNCTION_3>
c0de276c:	b9e0      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de276e:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2770:	4639      	mov	r1, r7
c0de2772:	2220      	movs	r2, #32
c0de2774:	f004 fe86 	bl	c0de7484 <cx_bn_init>
c0de2778:	b9b0      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de277a:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de277c:	f000 f8f2 	bl	c0de2964 <OUTLINED_FUNCTION_3>
c0de2780:	b990      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de2782:	4630      	mov	r0, r6
c0de2784:	4629      	mov	r1, r5
c0de2786:	f000 f912 	bl	c0de29ae <tEdwards_destroy>
c0de278a:	b968      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de278c:	4668      	mov	r0, sp
c0de278e:	aa43      	add	r2, sp, #268	@ 0x10c
c0de2790:	2100      	movs	r1, #0
c0de2792:	2301      	movs	r3, #1
c0de2794:	f000 fe78 	bl	c0de3488 <Poseidon>
c0de2798:	b930      	cbnz	r0, c0de27a8 <compute_challenge+0xa8>
c0de279a:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de279c:	4642      	mov	r2, r8
c0de279e:	4601      	mov	r1, r0
c0de27a0:	f004 ff26 	bl	c0de75f0 <cx_mont_from_montgomery>
c0de27a4:	e000      	b.n	c0de27a8 <compute_challenge+0xa8>
c0de27a6:	4802      	ldr	r0, [pc, #8]	@ (c0de27b0 <compute_challenge+0xb0>)
c0de27a8:	b03c      	add	sp, #240	@ 0xf0
c0de27aa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de27ae:	bf00      	nop
c0de27b0:	5a4b4e03 	.word	0x5a4b4e03

c0de27b4 <zkn_partial_sig>:
c0de27b4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de27b8:	b0c2      	sub	sp, #264	@ 0x108
c0de27ba:	4680      	mov	r8, r0
c0de27bc:	7fd8      	ldrb	r0, [r3, #31]
c0de27be:	e9dd a64e 	ldrd	sl, r6, [sp, #312]	@ 0x138
c0de27c2:	9f4c      	ldr	r7, [sp, #304]	@ 0x130
c0de27c4:	e9cd 1204 	strd	r1, r2, [sp, #16]
c0de27c8:	469b      	mov	fp, r3
c0de27ca:	ab16      	add	r3, sp, #88	@ 0x58
c0de27cc:	2100      	movs	r1, #0
c0de27ce:	221f      	movs	r2, #31
c0de27d0:	ac1e      	add	r4, sp, #120	@ 0x78
c0de27d2:	f000 0001 	and.w	r0, r0, #1
c0de27d6:	2920      	cmp	r1, #32
c0de27d8:	d00f      	beq.n	c0de27fa <zkn_partial_sig+0x46>
c0de27da:	eb0b 0501 	add.w	r5, fp, r1
c0de27de:	f895 5020 	ldrb.w	r5, [r5, #32]
c0de27e2:	545d      	strb	r5, [r3, r1]
c0de27e4:	f81a 5002 	ldrb.w	r5, [sl, r2]
c0de27e8:	3a01      	subs	r2, #1
c0de27ea:	5465      	strb	r5, [r4, r1]
c0de27ec:	f89d 5058 	ldrb.w	r5, [sp, #88]	@ 0x58
c0de27f0:	3101      	adds	r1, #1
c0de27f2:	4045      	eors	r5, r0
c0de27f4:	f88d 5058 	strb.w	r5, [sp, #88]	@ 0x58
c0de27f8:	e7ed      	b.n	c0de27d6 <zkn_partial_sig+0x22>
c0de27fa:	a83e      	add	r0, sp, #248	@ 0xf8
c0de27fc:	f000 f8af 	bl	c0de295e <OUTLINED_FUNCTION_2>
c0de2800:	2800      	cmp	r0, #0
c0de2802:	f040 8098 	bne.w	c0de2936 <zkn_partial_sig+0x182>
c0de2806:	ad3f      	add	r5, sp, #252	@ 0xfc
c0de2808:	4640      	mov	r0, r8
c0de280a:	4629      	mov	r1, r5
c0de280c:	f000 f8ba 	bl	c0de2984 <tEdwards_alloc>
c0de2810:	2800      	cmp	r0, #0
c0de2812:	f040 8090 	bne.w	c0de2936 <zkn_partial_sig+0x182>
c0de2816:	a826      	add	r0, sp, #152	@ 0x98
c0de2818:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de281a:	e9cd 4600 	strd	r4, r6, [sp]
c0de281e:	463a      	mov	r2, r7
c0de2820:	9002      	str	r0, [sp, #8]
c0de2822:	a916      	add	r1, sp, #88	@ 0x58
c0de2824:	4640      	mov	r0, r8
c0de2826:	f7ff fedf 	bl	c0de25e8 <zkn_compute_binding_factors>
c0de282a:	2800      	cmp	r0, #0
c0de282c:	f040 8083 	bne.w	c0de2936 <zkn_partial_sig+0x182>
c0de2830:	9500      	str	r5, [sp, #0]
c0de2832:	ac26      	add	r4, sp, #152	@ 0x98
c0de2834:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2836:	4640      	mov	r0, r8
c0de2838:	4639      	mov	r1, r7
c0de283a:	4622      	mov	r2, r4
c0de283c:	f7ff fe63 	bl	c0de2506 <zkn_compute_group_commitment>
c0de2840:	2800      	cmp	r0, #0
c0de2842:	d178      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de2844:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2846:	2120      	movs	r1, #32
c0de2848:	465a      	mov	r2, fp
c0de284a:	4653      	mov	r3, sl
c0de284c:	e9cd 1000 	strd	r1, r0, [sp]
c0de2850:	a93f      	add	r1, sp, #252	@ 0xfc
c0de2852:	4640      	mov	r0, r8
c0de2854:	f7ff ff54 	bl	c0de2700 <compute_challenge>
c0de2858:	2800      	cmp	r0, #0
c0de285a:	d16c      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de285c:	f000 f88a 	bl	c0de2974 <OUTLINED_FUNCTION_5>
c0de2860:	2800      	cmp	r0, #0
c0de2862:	d168      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de2864:	a80c      	add	r0, sp, #48	@ 0x30
c0de2866:	4935      	ldr	r1, [pc, #212]	@ (c0de293c <zkn_partial_sig+0x188>)
c0de2868:	2220      	movs	r2, #32
c0de286a:	4479      	add	r1, pc
c0de286c:	f004 ffaa 	bl	c0de77c4 <__aeabi_memcpy>
c0de2870:	a815      	add	r0, sp, #84	@ 0x54
c0de2872:	f000 f874 	bl	c0de295e <OUTLINED_FUNCTION_2>
c0de2876:	2800      	cmp	r0, #0
c0de2878:	d15d      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de287a:	a814      	add	r0, sp, #80	@ 0x50
c0de287c:	aa0c      	add	r2, sp, #48	@ 0x30
c0de287e:	f000 f86a 	bl	c0de2956 <OUTLINED_FUNCTION_1>
c0de2882:	2800      	cmp	r0, #0
c0de2884:	d157      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de2886:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de2888:	e9dd 2014 	ldrd	r2, r0, [sp, #80]	@ 0x50
c0de288c:	f004 fe6e 	bl	c0de756c <cx_bn_reduce>
c0de2890:	2800      	cmp	r0, #0
c0de2892:	d150      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de2894:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de2896:	a80b      	add	r0, sp, #44	@ 0x2c
c0de2898:	f000 f85d 	bl	c0de2956 <OUTLINED_FUNCTION_1>
c0de289c:	2800      	cmp	r0, #0
c0de289e:	d14a      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de28a0:	9a4b      	ldr	r2, [sp, #300]	@ 0x12c
c0de28a2:	a80a      	add	r0, sp, #40	@ 0x28
c0de28a4:	f000 f857 	bl	c0de2956 <OUTLINED_FUNCTION_1>
c0de28a8:	2800      	cmp	r0, #0
c0de28aa:	d144      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de28ac:	9a50      	ldr	r2, [sp, #320]	@ 0x140
c0de28ae:	a809      	add	r0, sp, #36	@ 0x24
c0de28b0:	f000 f851 	bl	c0de2956 <OUTLINED_FUNCTION_1>
c0de28b4:	2800      	cmp	r0, #0
c0de28b6:	d13e      	bne.n	c0de2936 <zkn_partial_sig+0x182>
c0de28b8:	a808      	add	r0, sp, #32
c0de28ba:	9a05      	ldr	r2, [sp, #20]
c0de28bc:	f000 f84b 	bl	c0de2956 <OUTLINED_FUNCTION_1>
c0de28c0:	bbc8      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de28c2:	9804      	ldr	r0, [sp, #16]
c0de28c4:	2120      	movs	r1, #32
c0de28c6:	2320      	movs	r3, #32
c0de28c8:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de28cc:	f1a0 0220 	sub.w	r2, r0, #32
c0de28d0:	a806      	add	r0, sp, #24
c0de28d2:	f004 fdb7 	bl	c0de7444 <cx_bn_alloc_init>
c0de28d6:	bb70      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de28d8:	a807      	add	r0, sp, #28
c0de28da:	f000 f840 	bl	c0de295e <OUTLINED_FUNCTION_2>
c0de28de:	bb50      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de28e0:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de28e2:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de28e4:	e9dd 2006 	ldrd	r2, r0, [sp, #24]
c0de28e8:	f004 fe34 	bl	c0de7554 <cx_bn_mod_mul>
c0de28ec:	bb18      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de28ee:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de28f0:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de28f4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de28f6:	f004 fe2d 	bl	c0de7554 <cx_bn_mod_mul>
c0de28fa:	b9e0      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de28fc:	e9dd 3214 	ldrd	r3, r2, [sp, #80]	@ 0x50
c0de2900:	e9dd 0109 	ldrd	r0, r1, [sp, #36]	@ 0x24
c0de2904:	f004 fe26 	bl	c0de7554 <cx_bn_mod_mul>
c0de2908:	b9a8      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de290a:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de290c:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de290e:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de2912:	f004 fe07 	bl	c0de7524 <cx_bn_mod_add>
c0de2916:	b970      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de2918:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de291a:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de291c:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de2920:	f004 fe00 	bl	c0de7524 <cx_bn_mod_add>
c0de2924:	b938      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de2926:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de2928:	9907      	ldr	r1, [sp, #28]
c0de292a:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de292c:	f004 fe1e 	bl	c0de756c <cx_bn_reduce>
c0de2930:	b908      	cbnz	r0, c0de2936 <zkn_partial_sig+0x182>
c0de2932:	f000 f81f 	bl	c0de2974 <OUTLINED_FUNCTION_5>
c0de2936:	b042      	add	sp, #264	@ 0x108
c0de2938:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de293c:	00005632 	.word	0x00005632

c0de2940 <OUTLINED_FUNCTION_0>:
c0de2940:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2944:	f7ff fed3 	bl	c0de26ee <zkn_serialize_scalar_for_hash>
c0de2948:	683a      	ldr	r2, [r7, #0]
c0de294a:	4650      	mov	r0, sl
c0de294c:	4659      	mov	r1, fp
c0de294e:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2952:	f000 bf3d 	b.w	c0de37d0 <zkn_frost_hash_update>

c0de2956 <OUTLINED_FUNCTION_1>:
c0de2956:	2120      	movs	r1, #32
c0de2958:	2320      	movs	r3, #32
c0de295a:	f004 bd73 	b.w	c0de7444 <cx_bn_alloc_init>

c0de295e <OUTLINED_FUNCTION_2>:
c0de295e:	2120      	movs	r1, #32
c0de2960:	f004 bd66 	b.w	c0de7430 <cx_bn_alloc>

c0de2964 <OUTLINED_FUNCTION_3>:
c0de2964:	4642      	mov	r2, r8
c0de2966:	4601      	mov	r1, r0
c0de2968:	f004 be36 	b.w	c0de75d8 <cx_mont_to_montgomery>

c0de296c <OUTLINED_FUNCTION_4>:
c0de296c:	461c      	mov	r4, r3
c0de296e:	4615      	mov	r5, r2
c0de2970:	f004 bd5e 	b.w	c0de7430 <cx_bn_alloc>

c0de2974 <OUTLINED_FUNCTION_5>:
c0de2974:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2976:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de2978:	2220      	movs	r2, #32
c0de297a:	f004 bda3 	b.w	c0de74c4 <cx_bn_export>

c0de297e <OUTLINED_FUNCTION_6>:
c0de297e:	4620      	mov	r0, r4
c0de2980:	f000 b815 	b.w	c0de29ae <tEdwards_destroy>

c0de2984 <tEdwards_alloc>:
c0de2984:	b5b0      	push	{r4, r5, r7, lr}
c0de2986:	460d      	mov	r5, r1
c0de2988:	6801      	ldr	r1, [r0, #0]
c0de298a:	4604      	mov	r4, r0
c0de298c:	4628      	mov	r0, r5
c0de298e:	f004 fd4f 	bl	c0de7430 <cx_bn_alloc>
c0de2992:	b920      	cbnz	r0, c0de299e <tEdwards_alloc+0x1a>
c0de2994:	6821      	ldr	r1, [r4, #0]
c0de2996:	1d28      	adds	r0, r5, #4
c0de2998:	f004 fd4a 	bl	c0de7430 <cx_bn_alloc>
c0de299c:	b100      	cbz	r0, c0de29a0 <tEdwards_alloc+0x1c>
c0de299e:	bdb0      	pop	{r4, r5, r7, pc}
c0de29a0:	6821      	ldr	r1, [r4, #0]
c0de29a2:	f105 0008 	add.w	r0, r5, #8
c0de29a6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de29aa:	f004 bd41 	b.w	c0de7430 <cx_bn_alloc>

c0de29ae <tEdwards_destroy>:
c0de29ae:	b510      	push	{r4, lr}
c0de29b0:	4608      	mov	r0, r1
c0de29b2:	460c      	mov	r4, r1
c0de29b4:	f004 fd52 	bl	c0de745c <cx_bn_destroy>
c0de29b8:	b918      	cbnz	r0, c0de29c2 <tEdwards_destroy+0x14>
c0de29ba:	1d20      	adds	r0, r4, #4
c0de29bc:	f004 fd4e 	bl	c0de745c <cx_bn_destroy>
c0de29c0:	b100      	cbz	r0, c0de29c4 <tEdwards_destroy+0x16>
c0de29c2:	bd10      	pop	{r4, pc}
c0de29c4:	f104 0008 	add.w	r0, r4, #8
c0de29c8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de29cc:	f004 bd46 	b.w	c0de745c <cx_bn_destroy>

c0de29d0 <tEdwards_double>:
c0de29d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de29d2:	460f      	mov	r7, r1
c0de29d4:	4614      	mov	r4, r2
c0de29d6:	4605      	mov	r5, r0
c0de29d8:	6843      	ldr	r3, [r0, #4]
c0de29da:	6809      	ldr	r1, [r1, #0]
c0de29dc:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de29de:	687a      	ldr	r2, [r7, #4]
c0de29e0:	f004 fda0 	bl	c0de7524 <cx_bn_mod_add>
c0de29e4:	2800      	cmp	r0, #0
c0de29e6:	d154      	bne.n	c0de2a92 <tEdwards_double+0xc2>
c0de29e8:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de29ec:	f105 0620 	add.w	r6, r5, #32
c0de29f0:	f000 fbe4 	bl	c0de31bc <OUTLINED_FUNCTION_2>
c0de29f4:	2800      	cmp	r0, #0
c0de29f6:	d14c      	bne.n	c0de2a92 <tEdwards_double+0xc2>
c0de29f8:	6839      	ldr	r1, [r7, #0]
c0de29fa:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de29fc:	f000 fbde 	bl	c0de31bc <OUTLINED_FUNCTION_2>
c0de2a00:	2800      	cmp	r0, #0
c0de2a02:	d146      	bne.n	c0de2a92 <tEdwards_double+0xc2>
c0de2a04:	6879      	ldr	r1, [r7, #4]
c0de2a06:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2a08:	f000 fbd8 	bl	c0de31bc <OUTLINED_FUNCTION_2>
c0de2a0c:	2800      	cmp	r0, #0
c0de2a0e:	d140      	bne.n	c0de2a92 <tEdwards_double+0xc2>
c0de2a10:	69a9      	ldr	r1, [r5, #24]
c0de2a12:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2a14:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2a16:	f000 fbcb 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de2a1a:	bbd0      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a1c:	686b      	ldr	r3, [r5, #4]
c0de2a1e:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2a22:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2a24:	f004 fd7e 	bl	c0de7524 <cx_bn_mod_add>
c0de2a28:	bb98      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a2a:	68b9      	ldr	r1, [r7, #8]
c0de2a2c:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2a2e:	f000 fbc5 	bl	c0de31bc <OUTLINED_FUNCTION_2>
c0de2a32:	bb70      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a34:	686b      	ldr	r3, [r5, #4]
c0de2a36:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2a38:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2a3a:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2a3c:	f004 fd7e 	bl	c0de753c <cx_bn_mod_sub>
c0de2a40:	bb38      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a42:	686b      	ldr	r3, [r5, #4]
c0de2a44:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2a46:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2a4a:	f004 fd77 	bl	c0de753c <cx_bn_mod_sub>
c0de2a4e:	bb00      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a50:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de2a54:	686b      	ldr	r3, [r5, #4]
c0de2a56:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2a58:	f004 fd70 	bl	c0de753c <cx_bn_mod_sub>
c0de2a5c:	b9c8      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a5e:	686b      	ldr	r3, [r5, #4]
c0de2a60:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2a64:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de2a66:	f004 fd69 	bl	c0de753c <cx_bn_mod_sub>
c0de2a6a:	b990      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a6c:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2a6e:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2a70:	6820      	ldr	r0, [r4, #0]
c0de2a72:	f000 fb9d 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de2a76:	b960      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a78:	686b      	ldr	r3, [r5, #4]
c0de2a7a:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2a7e:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2a80:	f004 fd5c 	bl	c0de753c <cx_bn_mod_sub>
c0de2a84:	b928      	cbnz	r0, c0de2a92 <tEdwards_double+0xc2>
c0de2a86:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2a88:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2a8a:	6860      	ldr	r0, [r4, #4]
c0de2a8c:	f000 fb90 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de2a90:	b100      	cbz	r0, c0de2a94 <tEdwards_double+0xc4>
c0de2a92:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2a94:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2a96:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2a98:	68a0      	ldr	r0, [r4, #8]
c0de2a9a:	4633      	mov	r3, r6
c0de2a9c:	b001      	add	sp, #4
c0de2a9e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2aa2:	f004 bdb1 	b.w	c0de7608 <cx_mont_mul>

c0de2aa6 <tEdwards_add>:
c0de2aa6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2aaa:	4606      	mov	r6, r0
c0de2aac:	4617      	mov	r7, r2
c0de2aae:	460c      	mov	r4, r1
c0de2ab0:	6892      	ldr	r2, [r2, #8]
c0de2ab2:	6889      	ldr	r1, [r1, #8]
c0de2ab4:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2ab6:	4698      	mov	r8, r3
c0de2ab8:	f106 0520 	add.w	r5, r6, #32
c0de2abc:	f000 fb7b 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2ac0:	2800      	cmp	r0, #0
c0de2ac2:	d17d      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2ac4:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2ac8:	462b      	mov	r3, r5
c0de2aca:	460a      	mov	r2, r1
c0de2acc:	f004 fd9c 	bl	c0de7608 <cx_mont_mul>
c0de2ad0:	2800      	cmp	r0, #0
c0de2ad2:	d175      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2ad4:	683a      	ldr	r2, [r7, #0]
c0de2ad6:	6821      	ldr	r1, [r4, #0]
c0de2ad8:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2ada:	f000 fb6c 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2ade:	2800      	cmp	r0, #0
c0de2ae0:	d16e      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2ae2:	687a      	ldr	r2, [r7, #4]
c0de2ae4:	6861      	ldr	r1, [r4, #4]
c0de2ae6:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2ae8:	f000 fb65 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2aec:	2800      	cmp	r0, #0
c0de2aee:	d167      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2af0:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2af4:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2af6:	f000 fb5e 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2afa:	2800      	cmp	r0, #0
c0de2afc:	d160      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2afe:	69f2      	ldr	r2, [r6, #28]
c0de2b00:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2b02:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2b04:	f000 fb57 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2b08:	2800      	cmp	r0, #0
c0de2b0a:	d159      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2b0c:	6873      	ldr	r3, [r6, #4]
c0de2b0e:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2b10:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2b14:	f004 fd12 	bl	c0de753c <cx_bn_mod_sub>
c0de2b18:	2800      	cmp	r0, #0
c0de2b1a:	d151      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2b1c:	6873      	ldr	r3, [r6, #4]
c0de2b1e:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2b20:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2b22:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2b24:	f004 fcfe 	bl	c0de7524 <cx_bn_mod_add>
c0de2b28:	2800      	cmp	r0, #0
c0de2b2a:	d149      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2b2c:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2b30:	6873      	ldr	r3, [r6, #4]
c0de2b32:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2b34:	f004 fcf6 	bl	c0de7524 <cx_bn_mod_add>
c0de2b38:	2800      	cmp	r0, #0
c0de2b3a:	d141      	bne.n	c0de2bc0 <tEdwards_add+0x11a>
c0de2b3c:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2b40:	6873      	ldr	r3, [r6, #4]
c0de2b42:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2b44:	f004 fcee 	bl	c0de7524 <cx_bn_mod_add>
c0de2b48:	bbd0      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2b4a:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2b4c:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2b50:	f000 fb31 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2b54:	bba0      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2b56:	6873      	ldr	r3, [r6, #4]
c0de2b58:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2b5c:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2b5e:	f004 fced 	bl	c0de753c <cx_bn_mod_sub>
c0de2b62:	bb68      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2b64:	6873      	ldr	r3, [r6, #4]
c0de2b66:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2b68:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2b6c:	f004 fce6 	bl	c0de753c <cx_bn_mod_sub>
c0de2b70:	bb30      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2b72:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2b76:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2b78:	f000 fb1d 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2b7c:	bb00      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2b7e:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2b80:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2b82:	f8d8 0000 	ldr.w	r0, [r8]
c0de2b86:	f000 fb16 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2b8a:	b9c8      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2b8c:	69b1      	ldr	r1, [r6, #24]
c0de2b8e:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2b92:	f000 fb10 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2b96:	b998      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2b98:	6873      	ldr	r3, [r6, #4]
c0de2b9a:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2b9c:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2b9e:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2ba0:	f004 fccc 	bl	c0de753c <cx_bn_mod_sub>
c0de2ba4:	b960      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2ba6:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2ba8:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2baa:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2bac:	f000 fb03 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2bb0:	b930      	cbnz	r0, c0de2bc0 <tEdwards_add+0x11a>
c0de2bb2:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2bb6:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2bba:	f000 fafc 	bl	c0de31b6 <OUTLINED_FUNCTION_1>
c0de2bbe:	b108      	cbz	r0, c0de2bc4 <tEdwards_add+0x11e>
c0de2bc0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2bc4:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2bc8:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2bcc:	462b      	mov	r3, r5
c0de2bce:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2bd2:	f004 bd19 	b.w	c0de7608 <cx_mont_mul>

c0de2bd6 <tEdwards_IsOnCurve>:
c0de2bd6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2bd8:	4605      	mov	r5, r0
c0de2bda:	460f      	mov	r7, r1
c0de2bdc:	2005      	movs	r0, #5
c0de2bde:	6809      	ldr	r1, [r1, #0]
c0de2be0:	4614      	mov	r4, r2
c0de2be2:	9000      	str	r0, [sp, #0]
c0de2be4:	f105 0620 	add.w	r6, r5, #32
c0de2be8:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2bea:	460a      	mov	r2, r1
c0de2bec:	f000 fae0 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de2bf0:	b100      	cbz	r0, c0de2bf4 <tEdwards_IsOnCurve+0x1e>
c0de2bf2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2bf4:	6879      	ldr	r1, [r7, #4]
c0de2bf6:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2bf8:	f000 fae0 	bl	c0de31bc <OUTLINED_FUNCTION_2>
c0de2bfc:	2800      	cmp	r0, #0
c0de2bfe:	d1f8      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c00:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2c04:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2c06:	f000 fad3 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de2c0a:	2800      	cmp	r0, #0
c0de2c0c:	d1f1      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c0e:	69a9      	ldr	r1, [r5, #24]
c0de2c10:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2c12:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c14:	f000 facc 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de2c18:	2800      	cmp	r0, #0
c0de2c1a:	d1ea      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c1c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c1e:	686b      	ldr	r3, [r5, #4]
c0de2c20:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2c22:	4601      	mov	r1, r0
c0de2c24:	f004 fc7e 	bl	c0de7524 <cx_bn_mod_add>
c0de2c28:	2800      	cmp	r0, #0
c0de2c2a:	d1e2      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c2c:	69e9      	ldr	r1, [r5, #28]
c0de2c2e:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2c30:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2c32:	f000 fabd 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de2c36:	2800      	cmp	r0, #0
c0de2c38:	d1db      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c3a:	686b      	ldr	r3, [r5, #4]
c0de2c3c:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2c3e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2c40:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2c42:	f004 fc6f 	bl	c0de7524 <cx_bn_mod_add>
c0de2c46:	2800      	cmp	r0, #0
c0de2c48:	d1d3      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c4a:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2c4c:	4632      	mov	r2, r6
c0de2c4e:	4601      	mov	r1, r0
c0de2c50:	f004 fcce 	bl	c0de75f0 <cx_mont_from_montgomery>
c0de2c54:	2800      	cmp	r0, #0
c0de2c56:	d1cc      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c58:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c5a:	4632      	mov	r2, r6
c0de2c5c:	4601      	mov	r1, r0
c0de2c5e:	f004 fcc7 	bl	c0de75f0 <cx_mont_from_montgomery>
c0de2c62:	2800      	cmp	r0, #0
c0de2c64:	d1c5      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c66:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2c6a:	466a      	mov	r2, sp
c0de2c6c:	f004 fc36 	bl	c0de74dc <cx_bn_cmp>
c0de2c70:	2800      	cmp	r0, #0
c0de2c72:	d1be      	bne.n	c0de2bf2 <tEdwards_IsOnCurve+0x1c>
c0de2c74:	9800      	ldr	r0, [sp, #0]
c0de2c76:	fab0 f080 	clz	r0, r0
c0de2c7a:	0940      	lsrs	r0, r0, #5
c0de2c7c:	7020      	strb	r0, [r4, #0]
c0de2c7e:	2000      	movs	r0, #0
c0de2c80:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2c84 <tEdwards_Curve_alloc_init>:
c0de2c84:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c88:	b0d2      	sub	sp, #328	@ 0x148
c0de2c8a:	4604      	mov	r4, r0
c0de2c8c:	2902      	cmp	r1, #2
c0de2c8e:	d022      	beq.n	c0de2cd6 <tEdwards_Curve_alloc_init+0x52>
c0de2c90:	2901      	cmp	r1, #1
c0de2c92:	f040 80cd 	bne.w	c0de2e30 <tEdwards_Curve_alloc_init+0x1ac>
c0de2c96:	2020      	movs	r0, #32
c0de2c98:	2220      	movs	r2, #32
c0de2c9a:	6020      	str	r0, [r4, #0]
c0de2c9c:	af4a      	add	r7, sp, #296	@ 0x128
c0de2c9e:	4967      	ldr	r1, [pc, #412]	@ (c0de2e3c <tEdwards_Curve_alloc_init+0x1b8>)
c0de2ca0:	4638      	mov	r0, r7
c0de2ca2:	4479      	add	r1, pc
c0de2ca4:	f004 fd8e 	bl	c0de77c4 <__aeabi_memcpy>
c0de2ca8:	ae42      	add	r6, sp, #264	@ 0x108
c0de2caa:	4965      	ldr	r1, [pc, #404]	@ (c0de2e40 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2cac:	2220      	movs	r2, #32
c0de2cae:	4630      	mov	r0, r6
c0de2cb0:	4479      	add	r1, pc
c0de2cb2:	f004 fd87 	bl	c0de77c4 <__aeabi_memcpy>
c0de2cb6:	4963      	ldr	r1, [pc, #396]	@ (c0de2e44 <tEdwards_Curve_alloc_init+0x1c0>)
c0de2cb8:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2cbc:	2220      	movs	r2, #32
c0de2cbe:	4650      	mov	r0, sl
c0de2cc0:	4479      	add	r1, pc
c0de2cc2:	f004 fd7f 	bl	c0de77c4 <__aeabi_memcpy>
c0de2cc6:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2cc8:	495f      	ldr	r1, [pc, #380]	@ (c0de2e48 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2cca:	2220      	movs	r2, #32
c0de2ccc:	4628      	mov	r0, r5
c0de2cce:	4479      	add	r1, pc
c0de2cd0:	f004 fd78 	bl	c0de77c4 <__aeabi_memcpy>
c0de2cd4:	e02d      	b.n	c0de2d32 <tEdwards_Curve_alloc_init+0xae>
c0de2cd6:	2020      	movs	r0, #32
c0de2cd8:	2220      	movs	r2, #32
c0de2cda:	6020      	str	r0, [r4, #0]
c0de2cdc:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2cde:	495b      	ldr	r1, [pc, #364]	@ (c0de2e4c <tEdwards_Curve_alloc_init+0x1c8>)
c0de2ce0:	4638      	mov	r0, r7
c0de2ce2:	4479      	add	r1, pc
c0de2ce4:	f004 fd6e 	bl	c0de77c4 <__aeabi_memcpy>
c0de2ce8:	ae22      	add	r6, sp, #136	@ 0x88
c0de2cea:	4959      	ldr	r1, [pc, #356]	@ (c0de2e50 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2cec:	2220      	movs	r2, #32
c0de2cee:	4630      	mov	r0, r6
c0de2cf0:	4479      	add	r1, pc
c0de2cf2:	f004 fd67 	bl	c0de77c4 <__aeabi_memcpy>
c0de2cf6:	4957      	ldr	r1, [pc, #348]	@ (c0de2e54 <tEdwards_Curve_alloc_init+0x1d0>)
c0de2cf8:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2cfc:	2220      	movs	r2, #32
c0de2cfe:	4650      	mov	r0, sl
c0de2d00:	4479      	add	r1, pc
c0de2d02:	f004 fd5f 	bl	c0de77c4 <__aeabi_memcpy>
c0de2d06:	a812      	add	r0, sp, #72	@ 0x48
c0de2d08:	4953      	ldr	r1, [pc, #332]	@ (c0de2e58 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2d0a:	2220      	movs	r2, #32
c0de2d0c:	9001      	str	r0, [sp, #4]
c0de2d0e:	4479      	add	r1, pc
c0de2d10:	f004 fd58 	bl	c0de77c4 <__aeabi_memcpy>
c0de2d14:	4951      	ldr	r1, [pc, #324]	@ (c0de2e5c <tEdwards_Curve_alloc_init+0x1d8>)
c0de2d16:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2d1a:	2220      	movs	r2, #32
c0de2d1c:	4658      	mov	r0, fp
c0de2d1e:	4479      	add	r1, pc
c0de2d20:	f004 fd50 	bl	c0de77c4 <__aeabi_memcpy>
c0de2d24:	ad02      	add	r5, sp, #8
c0de2d26:	494e      	ldr	r1, [pc, #312]	@ (c0de2e60 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2d28:	2220      	movs	r2, #32
c0de2d2a:	4628      	mov	r0, r5
c0de2d2c:	4479      	add	r1, pc
c0de2d2e:	f004 fd49 	bl	c0de77c4 <__aeabi_memcpy>
c0de2d32:	f104 0804 	add.w	r8, r4, #4
c0de2d36:	2120      	movs	r1, #32
c0de2d38:	463a      	mov	r2, r7
c0de2d3a:	2320      	movs	r3, #32
c0de2d3c:	4640      	mov	r0, r8
c0de2d3e:	f004 fb81 	bl	c0de7444 <cx_bn_alloc_init>
c0de2d42:	2800      	cmp	r0, #0
c0de2d44:	d175      	bne.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2d46:	4620      	mov	r0, r4
c0de2d48:	462a      	mov	r2, r5
c0de2d4a:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2d4e:	460b      	mov	r3, r1
c0de2d50:	f004 fb78 	bl	c0de7444 <cx_bn_alloc_init>
c0de2d54:	2800      	cmp	r0, #0
c0de2d56:	d16c      	bne.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2d58:	f104 0520 	add.w	r5, r4, #32
c0de2d5c:	2120      	movs	r1, #32
c0de2d5e:	4628      	mov	r0, r5
c0de2d60:	f004 fc26 	bl	c0de75b0 <cx_mont_alloc>
c0de2d64:	2800      	cmp	r0, #0
c0de2d66:	d164      	bne.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2d68:	f8d8 1000 	ldr.w	r1, [r8]
c0de2d6c:	4628      	mov	r0, r5
c0de2d6e:	f004 fc29 	bl	c0de75c4 <cx_mont_init>
c0de2d72:	2800      	cmp	r0, #0
c0de2d74:	d15d      	bne.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2d76:	4627      	mov	r7, r4
c0de2d78:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2d7c:	4638      	mov	r0, r7
c0de2d7e:	f004 fb57 	bl	c0de7430 <cx_bn_alloc>
c0de2d82:	2800      	cmp	r0, #0
c0de2d84:	d155      	bne.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2d86:	6838      	ldr	r0, [r7, #0]
c0de2d88:	2101      	movs	r1, #1
c0de2d8a:	f004 fb91 	bl	c0de74b0 <cx_bn_set_u32>
c0de2d8e:	2800      	cmp	r0, #0
c0de2d90:	d14f      	bne.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2d92:	6838      	ldr	r0, [r7, #0]
c0de2d94:	f000 fa16 	bl	c0de31c4 <OUTLINED_FUNCTION_3>
c0de2d98:	2800      	cmp	r0, #0
c0de2d9a:	d14a      	bne.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2d9c:	f104 070c 	add.w	r7, r4, #12
c0de2da0:	4620      	mov	r0, r4
c0de2da2:	4639      	mov	r1, r7
c0de2da4:	f7ff fdee 	bl	c0de2984 <tEdwards_alloc>
c0de2da8:	2800      	cmp	r0, #0
c0de2daa:	d142      	bne.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2dac:	9901      	ldr	r1, [sp, #4]
c0de2dae:	4620      	mov	r0, r4
c0de2db0:	465a      	mov	r2, fp
c0de2db2:	463b      	mov	r3, r7
c0de2db4:	f000 f856 	bl	c0de2e64 <tEdwards_init>
c0de2db8:	bbd8      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2dba:	4627      	mov	r7, r4
c0de2dbc:	4632      	mov	r2, r6
c0de2dbe:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2dc2:	4638      	mov	r0, r7
c0de2dc4:	460b      	mov	r3, r1
c0de2dc6:	f004 fb3d 	bl	c0de7444 <cx_bn_alloc_init>
c0de2dca:	bb90      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2dcc:	6838      	ldr	r0, [r7, #0]
c0de2dce:	f000 f9f9 	bl	c0de31c4 <OUTLINED_FUNCTION_3>
c0de2dd2:	bb70      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2dd4:	4626      	mov	r6, r4
c0de2dd6:	4652      	mov	r2, sl
c0de2dd8:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2ddc:	4630      	mov	r0, r6
c0de2dde:	460b      	mov	r3, r1
c0de2de0:	f004 fb30 	bl	c0de7444 <cx_bn_alloc_init>
c0de2de4:	bb28      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2de6:	6830      	ldr	r0, [r6, #0]
c0de2de8:	f000 f9ec 	bl	c0de31c4 <OUTLINED_FUNCTION_3>
c0de2dec:	bb08      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2dee:	4620      	mov	r0, r4
c0de2df0:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2df4:	f004 fb1c 	bl	c0de7430 <cx_bn_alloc>
c0de2df8:	b9d8      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2dfa:	f000 f9fb 	bl	c0de31f4 <OUTLINED_FUNCTION_8>
c0de2dfe:	b9c0      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e00:	f000 f9e4 	bl	c0de31cc <OUTLINED_FUNCTION_4>
c0de2e04:	b9a8      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e06:	f000 f9f0 	bl	c0de31ea <OUTLINED_FUNCTION_7>
c0de2e0a:	b990      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e0c:	f000 f9fc 	bl	c0de3208 <OUTLINED_FUNCTION_10>
c0de2e10:	b978      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e12:	f000 f9e5 	bl	c0de31e0 <OUTLINED_FUNCTION_6>
c0de2e16:	b960      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e18:	f000 f9f1 	bl	c0de31fe <OUTLINED_FUNCTION_9>
c0de2e1c:	b948      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e1e:	f000 f9da 	bl	c0de31d6 <OUTLINED_FUNCTION_5>
c0de2e22:	b930      	cbnz	r0, c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e24:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2e28:	4620      	mov	r0, r4
c0de2e2a:	f004 fb01 	bl	c0de7430 <cx_bn_alloc>
c0de2e2e:	e000      	b.n	c0de2e32 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e30:	4801      	ldr	r0, [pc, #4]	@ (c0de2e38 <tEdwards_Curve_alloc_init+0x1b4>)
c0de2e32:	b052      	add	sp, #328	@ 0x148
c0de2e34:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2e38:	5a4b4e01 	.word	0x5a4b4e01
c0de2e3c:	000050da 	.word	0x000050da
c0de2e40:	0000530c 	.word	0x0000530c
c0de2e44:	000052bc 	.word	0x000052bc
c0de2e48:	000051ae 	.word	0x000051ae
c0de2e4c:	0000531a 	.word	0x0000531a
c0de2e50:	0000526c 	.word	0x0000526c
c0de2e54:	000052dc 	.word	0x000052dc
c0de2e58:	0000530e 	.word	0x0000530e
c0de2e5c:	0000531e 	.word	0x0000531e
c0de2e60:	00005170 	.word	0x00005170

c0de2e64 <tEdwards_init>:
c0de2e64:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de2e66:	6806      	ldr	r6, [r0, #0]
c0de2e68:	461c      	mov	r4, r3
c0de2e6a:	4617      	mov	r7, r2
c0de2e6c:	460a      	mov	r2, r1
c0de2e6e:	4605      	mov	r5, r0
c0de2e70:	a802      	add	r0, sp, #8
c0de2e72:	4631      	mov	r1, r6
c0de2e74:	4633      	mov	r3, r6
c0de2e76:	f004 fae5 	bl	c0de7444 <cx_bn_alloc_init>
c0de2e7a:	b100      	cbz	r0, c0de2e7e <tEdwards_init+0x1a>
c0de2e7c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2e7e:	a801      	add	r0, sp, #4
c0de2e80:	4631      	mov	r1, r6
c0de2e82:	463a      	mov	r2, r7
c0de2e84:	4633      	mov	r3, r6
c0de2e86:	f004 fadd 	bl	c0de7444 <cx_bn_alloc_init>
c0de2e8a:	2800      	cmp	r0, #0
c0de2e8c:	d1f6      	bne.n	c0de2e7c <tEdwards_init+0x18>
c0de2e8e:	4668      	mov	r0, sp
c0de2e90:	4631      	mov	r1, r6
c0de2e92:	f004 facd 	bl	c0de7430 <cx_bn_alloc>
c0de2e96:	2800      	cmp	r0, #0
c0de2e98:	d1f0      	bne.n	c0de2e7c <tEdwards_init+0x18>
c0de2e9a:	f105 0620 	add.w	r6, r5, #32
c0de2e9e:	6820      	ldr	r0, [r4, #0]
c0de2ea0:	9902      	ldr	r1, [sp, #8]
c0de2ea2:	4632      	mov	r2, r6
c0de2ea4:	f004 fb98 	bl	c0de75d8 <cx_mont_to_montgomery>
c0de2ea8:	2800      	cmp	r0, #0
c0de2eaa:	d1e7      	bne.n	c0de2e7c <tEdwards_init+0x18>
c0de2eac:	6860      	ldr	r0, [r4, #4]
c0de2eae:	9901      	ldr	r1, [sp, #4]
c0de2eb0:	4632      	mov	r2, r6
c0de2eb2:	f004 fb91 	bl	c0de75d8 <cx_mont_to_montgomery>
c0de2eb6:	2800      	cmp	r0, #0
c0de2eb8:	d1e0      	bne.n	c0de2e7c <tEdwards_init+0x18>
c0de2eba:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2ebc:	68a0      	ldr	r0, [r4, #8]
c0de2ebe:	f004 faed 	bl	c0de749c <cx_bn_copy>
c0de2ec2:	2800      	cmp	r0, #0
c0de2ec4:	d1da      	bne.n	c0de2e7c <tEdwards_init+0x18>
c0de2ec6:	a802      	add	r0, sp, #8
c0de2ec8:	f004 fac8 	bl	c0de745c <cx_bn_destroy>
c0de2ecc:	2800      	cmp	r0, #0
c0de2ece:	d1d5      	bne.n	c0de2e7c <tEdwards_init+0x18>
c0de2ed0:	a801      	add	r0, sp, #4
c0de2ed2:	f004 fac3 	bl	c0de745c <cx_bn_destroy>
c0de2ed6:	2800      	cmp	r0, #0
c0de2ed8:	d1d0      	bne.n	c0de2e7c <tEdwards_init+0x18>
c0de2eda:	4668      	mov	r0, sp
c0de2edc:	f004 fabe 	bl	c0de745c <cx_bn_destroy>
c0de2ee0:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2ee2 <tEdwards_Curve_partial_destroy>:
c0de2ee2:	b510      	push	{r4, lr}
c0de2ee4:	4604      	mov	r4, r0
c0de2ee6:	302c      	adds	r0, #44	@ 0x2c
c0de2ee8:	f004 fab8 	bl	c0de745c <cx_bn_destroy>
c0de2eec:	bbd8      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2eee:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2ef2:	f004 fab3 	bl	c0de745c <cx_bn_destroy>
c0de2ef6:	bbb0      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2ef8:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2efc:	f004 faae 	bl	c0de745c <cx_bn_destroy>
c0de2f00:	bb88      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f02:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2f06:	f004 faa9 	bl	c0de745c <cx_bn_destroy>
c0de2f0a:	bb60      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f0c:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2f10:	f004 faa4 	bl	c0de745c <cx_bn_destroy>
c0de2f14:	bb38      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f16:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2f1a:	f004 fa9f 	bl	c0de745c <cx_bn_destroy>
c0de2f1e:	bb10      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f20:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2f24:	f004 fa9a 	bl	c0de745c <cx_bn_destroy>
c0de2f28:	b9e8      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f2a:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2f2e:	f004 fa95 	bl	c0de745c <cx_bn_destroy>
c0de2f32:	b9c0      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f34:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2f38:	f004 fa90 	bl	c0de745c <cx_bn_destroy>
c0de2f3c:	b998      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f3e:	f104 010c 	add.w	r1, r4, #12
c0de2f42:	f7ff fd34 	bl	c0de29ae <tEdwards_destroy>
c0de2f46:	b970      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f48:	f104 0018 	add.w	r0, r4, #24
c0de2f4c:	f004 fa86 	bl	c0de745c <cx_bn_destroy>
c0de2f50:	b948      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f52:	f104 001c 	add.w	r0, r4, #28
c0de2f56:	f004 fa81 	bl	c0de745c <cx_bn_destroy>
c0de2f5a:	b920      	cbnz	r0, c0de2f66 <tEdwards_Curve_partial_destroy+0x84>
c0de2f5c:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2f60:	f004 fa7c 	bl	c0de745c <cx_bn_destroy>
c0de2f64:	b100      	cbz	r0, c0de2f68 <tEdwards_Curve_partial_destroy+0x86>
c0de2f66:	bd10      	pop	{r4, pc}
c0de2f68:	f104 0008 	add.w	r0, r4, #8
c0de2f6c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2f70:	f004 ba74 	b.w	c0de745c <cx_bn_destroy>

c0de2f74 <tEdwards_SetNeutral>:
c0de2f74:	b5b0      	push	{r4, r5, r7, lr}
c0de2f76:	4605      	mov	r5, r0
c0de2f78:	6808      	ldr	r0, [r1, #0]
c0de2f7a:	460c      	mov	r4, r1
c0de2f7c:	2100      	movs	r1, #0
c0de2f7e:	f004 fa97 	bl	c0de74b0 <cx_bn_set_u32>
c0de2f82:	b918      	cbnz	r0, c0de2f8c <tEdwards_SetNeutral+0x18>
c0de2f84:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2f86:	f000 f944 	bl	c0de3212 <OUTLINED_FUNCTION_11>
c0de2f8a:	b100      	cbz	r0, c0de2f8e <tEdwards_SetNeutral+0x1a>
c0de2f8c:	bdb0      	pop	{r4, r5, r7, pc}
c0de2f8e:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2f90:	68a0      	ldr	r0, [r4, #8]
c0de2f92:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2f96:	f004 ba81 	b.w	c0de749c <cx_bn_copy>

c0de2f9a <tEdwards_export>:
c0de2f9a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2f9e:	4698      	mov	r8, r3
c0de2fa0:	4616      	mov	r6, r2
c0de2fa2:	460f      	mov	r7, r1
c0de2fa4:	4605      	mov	r5, r0
c0de2fa6:	f000 f81e 	bl	c0de2fe6 <tEdwards_normalize>
c0de2faa:	b998      	cbnz	r0, c0de2fd4 <tEdwards_export+0x3a>
c0de2fac:	f105 0420 	add.w	r4, r5, #32
c0de2fb0:	6839      	ldr	r1, [r7, #0]
c0de2fb2:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2fb4:	4622      	mov	r2, r4
c0de2fb6:	f004 fb1b 	bl	c0de75f0 <cx_mont_from_montgomery>
c0de2fba:	b958      	cbnz	r0, c0de2fd4 <tEdwards_export+0x3a>
c0de2fbc:	6879      	ldr	r1, [r7, #4]
c0de2fbe:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2fc0:	4622      	mov	r2, r4
c0de2fc2:	f004 fb15 	bl	c0de75f0 <cx_mont_from_montgomery>
c0de2fc6:	b928      	cbnz	r0, c0de2fd4 <tEdwards_export+0x3a>
c0de2fc8:	682a      	ldr	r2, [r5, #0]
c0de2fca:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2fcc:	4631      	mov	r1, r6
c0de2fce:	f004 fa79 	bl	c0de74c4 <cx_bn_export>
c0de2fd2:	b108      	cbz	r0, c0de2fd8 <tEdwards_export+0x3e>
c0de2fd4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2fd8:	682a      	ldr	r2, [r5, #0]
c0de2fda:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2fdc:	4641      	mov	r1, r8
c0de2fde:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2fe2:	f004 ba6f 	b.w	c0de74c4 <cx_bn_export>

c0de2fe6 <tEdwards_normalize>:
c0de2fe6:	b570      	push	{r4, r5, r6, lr}
c0de2fe8:	4605      	mov	r5, r0
c0de2fea:	460c      	mov	r4, r1
c0de2fec:	6889      	ldr	r1, [r1, #8]
c0de2fee:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2ff0:	f105 0620 	add.w	r6, r5, #32
c0de2ff4:	4632      	mov	r2, r6
c0de2ff6:	f004 fb23 	bl	c0de7640 <cx_mont_invert_nprime>
c0de2ffa:	b9d0      	cbnz	r0, c0de3032 <tEdwards_normalize+0x4c>
c0de2ffc:	6822      	ldr	r2, [r4, #0]
c0de2ffe:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de3002:	f000 f8d5 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de3006:	b9a0      	cbnz	r0, c0de3032 <tEdwards_normalize+0x4c>
c0de3008:	6862      	ldr	r2, [r4, #4]
c0de300a:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de300c:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de300e:	f000 f8cf 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de3012:	b970      	cbnz	r0, c0de3032 <tEdwards_normalize+0x4c>
c0de3014:	68a2      	ldr	r2, [r4, #8]
c0de3016:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3018:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de301a:	f000 f8c9 	bl	c0de31b0 <OUTLINED_FUNCTION_0>
c0de301e:	b940      	cbnz	r0, c0de3032 <tEdwards_normalize+0x4c>
c0de3020:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de3022:	6820      	ldr	r0, [r4, #0]
c0de3024:	f004 fa3a 	bl	c0de749c <cx_bn_copy>
c0de3028:	b918      	cbnz	r0, c0de3032 <tEdwards_normalize+0x4c>
c0de302a:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de302c:	f000 f8f1 	bl	c0de3212 <OUTLINED_FUNCTION_11>
c0de3030:	b100      	cbz	r0, c0de3034 <tEdwards_normalize+0x4e>
c0de3032:	bd70      	pop	{r4, r5, r6, pc}
c0de3034:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de3036:	68a0      	ldr	r0, [r4, #8]
c0de3038:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de303c:	f004 ba2e 	b.w	c0de749c <cx_bn_copy>

c0de3040 <tEdwards_copy>:
c0de3040:	b5b0      	push	{r4, r5, r7, lr}
c0de3042:	460c      	mov	r4, r1
c0de3044:	4605      	mov	r5, r0
c0de3046:	6801      	ldr	r1, [r0, #0]
c0de3048:	6820      	ldr	r0, [r4, #0]
c0de304a:	f004 fa27 	bl	c0de749c <cx_bn_copy>
c0de304e:	b918      	cbnz	r0, c0de3058 <tEdwards_copy+0x18>
c0de3050:	6869      	ldr	r1, [r5, #4]
c0de3052:	f000 f8de 	bl	c0de3212 <OUTLINED_FUNCTION_11>
c0de3056:	b100      	cbz	r0, c0de305a <tEdwards_copy+0x1a>
c0de3058:	bdb0      	pop	{r4, r5, r7, pc}
c0de305a:	68a9      	ldr	r1, [r5, #8]
c0de305c:	68a0      	ldr	r0, [r4, #8]
c0de305e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3062:	f004 ba1b 	b.w	c0de749c <cx_bn_copy>

c0de3066 <tEdwards_alloc_init>:
c0de3066:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3068:	460e      	mov	r6, r1
c0de306a:	6801      	ldr	r1, [r0, #0]
c0de306c:	4607      	mov	r7, r0
c0de306e:	4618      	mov	r0, r3
c0de3070:	461c      	mov	r4, r3
c0de3072:	4615      	mov	r5, r2
c0de3074:	f004 f9dc 	bl	c0de7430 <cx_bn_alloc>
c0de3078:	b950      	cbnz	r0, c0de3090 <tEdwards_alloc_init+0x2a>
c0de307a:	6839      	ldr	r1, [r7, #0]
c0de307c:	1d20      	adds	r0, r4, #4
c0de307e:	f004 f9d7 	bl	c0de7430 <cx_bn_alloc>
c0de3082:	b928      	cbnz	r0, c0de3090 <tEdwards_alloc_init+0x2a>
c0de3084:	6839      	ldr	r1, [r7, #0]
c0de3086:	f104 0008 	add.w	r0, r4, #8
c0de308a:	f004 f9d1 	bl	c0de7430 <cx_bn_alloc>
c0de308e:	b100      	cbz	r0, c0de3092 <tEdwards_alloc_init+0x2c>
c0de3090:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3092:	4638      	mov	r0, r7
c0de3094:	4631      	mov	r1, r6
c0de3096:	462a      	mov	r2, r5
c0de3098:	4623      	mov	r3, r4
c0de309a:	b001      	add	sp, #4
c0de309c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de30a0:	f7ff bee0 	b.w	c0de2e64 <tEdwards_init>

c0de30a4 <tEdwards_scalarMul_bn>:
c0de30a4:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de30a8:	4607      	mov	r7, r0
c0de30aa:	2000      	movs	r0, #0
c0de30ac:	4688      	mov	r8, r1
c0de30ae:	4615      	mov	r5, r2
c0de30b0:	2100      	movs	r1, #0
c0de30b2:	469b      	mov	fp, r3
c0de30b4:	9003      	str	r0, [sp, #12]
c0de30b6:	f88d 000b 	strb.w	r0, [sp, #11]
c0de30ba:	6810      	ldr	r0, [r2, #0]
c0de30bc:	aa03      	add	r2, sp, #12
c0de30be:	f004 fa19 	bl	c0de74f4 <cx_bn_cmp_u32>
c0de30c2:	bb38      	cbnz	r0, c0de3114 <tEdwards_scalarMul_bn+0x70>
c0de30c4:	9803      	ldr	r0, [sp, #12]
c0de30c6:	b1d0      	cbz	r0, c0de30fe <tEdwards_scalarMul_bn+0x5a>
c0de30c8:	6828      	ldr	r0, [r5, #0]
c0de30ca:	a901      	add	r1, sp, #4
c0de30cc:	f004 f9d0 	bl	c0de7470 <cx_bn_nbytes>
c0de30d0:	bb00      	cbnz	r0, c0de3114 <tEdwards_scalarMul_bn+0x70>
c0de30d2:	2002      	movs	r0, #2
c0de30d4:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de30d8:	f10d 040b 	add.w	r4, sp, #11
c0de30dc:	6538      	str	r0, [r7, #80]	@ 0x50
c0de30de:	9801      	ldr	r0, [sp, #4]
c0de30e0:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de30e4:	2000      	movs	r0, #0
c0de30e6:	2801      	cmp	r0, #1
c0de30e8:	d00f      	beq.n	c0de310a <tEdwards_scalarMul_bn+0x66>
c0de30ea:	6828      	ldr	r0, [r5, #0]
c0de30ec:	4631      	mov	r1, r6
c0de30ee:	4622      	mov	r2, r4
c0de30f0:	f004 fa0c 	bl	c0de750c <cx_bn_tst_bit>
c0de30f4:	b970      	cbnz	r0, c0de3114 <tEdwards_scalarMul_bn+0x70>
c0de30f6:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de30fa:	3e01      	subs	r6, #1
c0de30fc:	e7f3      	b.n	c0de30e6 <tEdwards_scalarMul_bn+0x42>
c0de30fe:	4638      	mov	r0, r7
c0de3100:	4659      	mov	r1, fp
c0de3102:	f7ff ff37 	bl	c0de2f74 <tEdwards_SetNeutral>
c0de3106:	b928      	cbnz	r0, c0de3114 <tEdwards_scalarMul_bn+0x70>
c0de3108:	e7de      	b.n	c0de30c8 <tEdwards_scalarMul_bn+0x24>
c0de310a:	4640      	mov	r0, r8
c0de310c:	4659      	mov	r1, fp
c0de310e:	f7ff ff97 	bl	c0de3040 <tEdwards_copy>
c0de3112:	b110      	cbz	r0, c0de311a <tEdwards_scalarMul_bn+0x76>
c0de3114:	b004      	add	sp, #16
c0de3116:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de311a:	2001      	movs	r0, #1
c0de311c:	f10d 0a0b 	add.w	sl, sp, #11
c0de3120:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de3124:	2e00      	cmp	r6, #0
c0de3126:	d420      	bmi.n	c0de316a <tEdwards_scalarMul_bn+0xc6>
c0de3128:	4638      	mov	r0, r7
c0de312a:	4659      	mov	r1, fp
c0de312c:	465a      	mov	r2, fp
c0de312e:	f7ff fc4f 	bl	c0de29d0 <tEdwards_double>
c0de3132:	2800      	cmp	r0, #0
c0de3134:	d1ee      	bne.n	c0de3114 <tEdwards_scalarMul_bn+0x70>
c0de3136:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de3138:	4631      	mov	r1, r6
c0de313a:	4652      	mov	r2, sl
c0de313c:	0040      	lsls	r0, r0, #1
c0de313e:	6538      	str	r0, [r7, #80]	@ 0x50
c0de3140:	6828      	ldr	r0, [r5, #0]
c0de3142:	f004 f9e3 	bl	c0de750c <cx_bn_tst_bit>
c0de3146:	2800      	cmp	r0, #0
c0de3148:	d1e4      	bne.n	c0de3114 <tEdwards_scalarMul_bn+0x70>
c0de314a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de314e:	b150      	cbz	r0, c0de3166 <tEdwards_scalarMul_bn+0xc2>
c0de3150:	4638      	mov	r0, r7
c0de3152:	4659      	mov	r1, fp
c0de3154:	4642      	mov	r2, r8
c0de3156:	465b      	mov	r3, fp
c0de3158:	f7ff fca5 	bl	c0de2aa6 <tEdwards_add>
c0de315c:	2800      	cmp	r0, #0
c0de315e:	d1d9      	bne.n	c0de3114 <tEdwards_scalarMul_bn+0x70>
c0de3160:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de3162:	3001      	adds	r0, #1
c0de3164:	6538      	str	r0, [r7, #80]	@ 0x50
c0de3166:	3e01      	subs	r6, #1
c0de3168:	e7dc      	b.n	c0de3124 <tEdwards_scalarMul_bn+0x80>
c0de316a:	2000      	movs	r0, #0
c0de316c:	e7d2      	b.n	c0de3114 <tEdwards_scalarMul_bn+0x70>
	...

c0de3170 <tEdwards_scalarMul>:
c0de3170:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de3172:	460c      	mov	r4, r1
c0de3174:	6801      	ldr	r1, [r0, #0]
c0de3176:	4299      	cmp	r1, r3
c0de3178:	bf3c      	itt	cc
c0de317a:	480c      	ldrcc	r0, [pc, #48]	@ (c0de31ac <tEdwards_scalarMul+0x3c>)
c0de317c:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de317e:	4605      	mov	r5, r0
c0de3180:	20ca      	movs	r0, #202	@ 0xca
c0de3182:	6528      	str	r0, [r5, #80]	@ 0x50
c0de3184:	a801      	add	r0, sp, #4
c0de3186:	f004 f95d 	bl	c0de7444 <cx_bn_alloc_init>
c0de318a:	b100      	cbz	r0, c0de318e <tEdwards_scalarMul+0x1e>
c0de318c:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de318e:	20b3      	movs	r0, #179	@ 0xb3
c0de3190:	9b06      	ldr	r3, [sp, #24]
c0de3192:	4621      	mov	r1, r4
c0de3194:	6528      	str	r0, [r5, #80]	@ 0x50
c0de3196:	aa01      	add	r2, sp, #4
c0de3198:	4628      	mov	r0, r5
c0de319a:	f7ff ff83 	bl	c0de30a4 <tEdwards_scalarMul_bn>
c0de319e:	2800      	cmp	r0, #0
c0de31a0:	d1f4      	bne.n	c0de318c <tEdwards_scalarMul+0x1c>
c0de31a2:	a801      	add	r0, sp, #4
c0de31a4:	f004 f95a 	bl	c0de745c <cx_bn_destroy>
c0de31a8:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de31aa:	bf00      	nop
c0de31ac:	5a4b4e01 	.word	0x5a4b4e01

c0de31b0 <OUTLINED_FUNCTION_0>:
c0de31b0:	4633      	mov	r3, r6
c0de31b2:	f004 ba29 	b.w	c0de7608 <cx_mont_mul>

c0de31b6 <OUTLINED_FUNCTION_1>:
c0de31b6:	462b      	mov	r3, r5
c0de31b8:	f004 ba26 	b.w	c0de7608 <cx_mont_mul>

c0de31bc <OUTLINED_FUNCTION_2>:
c0de31bc:	4633      	mov	r3, r6
c0de31be:	460a      	mov	r2, r1
c0de31c0:	f004 ba22 	b.w	c0de7608 <cx_mont_mul>

c0de31c4 <OUTLINED_FUNCTION_3>:
c0de31c4:	462a      	mov	r2, r5
c0de31c6:	4601      	mov	r1, r0
c0de31c8:	f004 ba06 	b.w	c0de75d8 <cx_mont_to_montgomery>

c0de31cc <OUTLINED_FUNCTION_4>:
c0de31cc:	4620      	mov	r0, r4
c0de31ce:	f850 1b34 	ldr.w	r1, [r0], #52
c0de31d2:	f004 b92d 	b.w	c0de7430 <cx_bn_alloc>

c0de31d6 <OUTLINED_FUNCTION_5>:
c0de31d6:	4620      	mov	r0, r4
c0de31d8:	f850 1b48 	ldr.w	r1, [r0], #72
c0de31dc:	f004 b928 	b.w	c0de7430 <cx_bn_alloc>

c0de31e0 <OUTLINED_FUNCTION_6>:
c0de31e0:	4620      	mov	r0, r4
c0de31e2:	f850 1b40 	ldr.w	r1, [r0], #64
c0de31e6:	f004 b923 	b.w	c0de7430 <cx_bn_alloc>

c0de31ea <OUTLINED_FUNCTION_7>:
c0de31ea:	4620      	mov	r0, r4
c0de31ec:	f850 1b38 	ldr.w	r1, [r0], #56
c0de31f0:	f004 b91e 	b.w	c0de7430 <cx_bn_alloc>

c0de31f4 <OUTLINED_FUNCTION_8>:
c0de31f4:	4620      	mov	r0, r4
c0de31f6:	f850 1b30 	ldr.w	r1, [r0], #48
c0de31fa:	f004 b919 	b.w	c0de7430 <cx_bn_alloc>

c0de31fe <OUTLINED_FUNCTION_9>:
c0de31fe:	4620      	mov	r0, r4
c0de3200:	f850 1b44 	ldr.w	r1, [r0], #68
c0de3204:	f004 b914 	b.w	c0de7430 <cx_bn_alloc>

c0de3208 <OUTLINED_FUNCTION_10>:
c0de3208:	4620      	mov	r0, r4
c0de320a:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de320e:	f004 b90f 	b.w	c0de7430 <cx_bn_alloc>

c0de3212 <OUTLINED_FUNCTION_11>:
c0de3212:	6860      	ldr	r0, [r4, #4]
c0de3214:	f004 b942 	b.w	c0de749c <cx_bn_copy>

c0de3218 <grain_lfsr_advance>:
c0de3218:	b5b0      	push	{r4, r5, r7, lr}
c0de321a:	68c2      	ldr	r2, [r0, #12]
c0de321c:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de3220:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de3224:	ea4f 0234 	mov.w	r2, r4, rrx
c0de3228:	07e4      	lsls	r4, r4, #31
c0de322a:	60c5      	str	r5, [r0, #12]
c0de322c:	07dd      	lsls	r5, r3, #31
c0de322e:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de3232:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de3236:	6044      	str	r4, [r0, #4]
c0de3238:	4c15      	ldr	r4, [pc, #84]	@ (c0de3290 <grain_lfsr_advance+0x78>)
c0de323a:	6005      	str	r5, [r0, #0]
c0de323c:	4021      	ands	r1, r4
c0de323e:	4c15      	ldr	r4, [pc, #84]	@ (c0de3294 <grain_lfsr_advance+0x7c>)
c0de3240:	4023      	ands	r3, r4
c0de3242:	4419      	add	r1, r3
c0de3244:	0c0c      	lsrs	r4, r1, #16
c0de3246:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de324a:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de324e:	4421      	add	r1, r4
c0de3250:	0a0c      	lsrs	r4, r1, #8
c0de3252:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de3256:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de325a:	4061      	eors	r1, r4
c0de325c:	090c      	lsrs	r4, r1, #4
c0de325e:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de3262:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de3266:	4061      	eors	r1, r4
c0de3268:	088c      	lsrs	r4, r1, #2
c0de326a:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de326e:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de3272:	4061      	eors	r1, r4
c0de3274:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de3278:	ea4f 0331 	mov.w	r3, r1, rrx
c0de327c:	4059      	eors	r1, r3
c0de327e:	f001 0101 	and.w	r1, r1, #1
c0de3282:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de3286:	6082      	str	r2, [r0, #8]
c0de3288:	4608      	mov	r0, r1
c0de328a:	2100      	movs	r1, #0
c0de328c:	bdb0      	pop	{r4, r5, r7, pc}
c0de328e:	bf00      	nop
c0de3290:	00802001 	.word	0x00802001
c0de3294:	40080040 	.word	0x40080040

c0de3298 <next64_graingen>:
c0de3298:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de329c:	460c      	mov	r4, r1
c0de329e:	4605      	mov	r5, r0
c0de32a0:	f04f 0a00 	mov.w	sl, #0
c0de32a4:	f04f 0800 	mov.w	r8, #0
c0de32a8:	2700      	movs	r7, #0
c0de32aa:	42a7      	cmp	r7, r4
c0de32ac:	d215      	bcs.n	c0de32da <next64_graingen+0x42>
c0de32ae:	4628      	mov	r0, r5
c0de32b0:	f7ff ffb2 	bl	c0de3218 <grain_lfsr_advance>
c0de32b4:	4606      	mov	r6, r0
c0de32b6:	4628      	mov	r0, r5
c0de32b8:	f7ff ffae 	bl	c0de3218 <grain_lfsr_advance>
c0de32bc:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de32c0:	0781      	lsls	r1, r0, #30
c0de32c2:	d5f2      	bpl.n	c0de32aa <next64_graingen+0x12>
c0de32c4:	f000 0001 	and.w	r0, r0, #1
c0de32c8:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de32cc:	3701      	adds	r7, #1
c0de32ce:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de32d2:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de32d6:	4682      	mov	sl, r0
c0de32d8:	e7e7      	b.n	c0de32aa <next64_graingen+0x12>
c0de32da:	4650      	mov	r0, sl
c0de32dc:	4641      	mov	r1, r8
c0de32de:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de32e4 <init_generator>:
c0de32e4:	b5b0      	push	{r4, r5, r7, lr}
c0de32e6:	4a09      	ldr	r2, [pc, #36]	@ (c0de330c <init_generator+0x28>)
c0de32e8:	4b09      	ldr	r3, [pc, #36]	@ (c0de3310 <init_generator+0x2c>)
c0de32ea:	4604      	mov	r4, r0
c0de32ec:	25a0      	movs	r5, #160	@ 0xa0
c0de32ee:	2000      	movs	r0, #0
c0de32f0:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de32f4:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de32f8:	e9c4 3200 	strd	r3, r2, [r4]
c0de32fc:	b125      	cbz	r5, c0de3308 <init_generator+0x24>
c0de32fe:	4620      	mov	r0, r4
c0de3300:	f7ff ff8a 	bl	c0de3218 <grain_lfsr_advance>
c0de3304:	3d01      	subs	r5, #1
c0de3306:	e7f9      	b.n	c0de32fc <init_generator+0x18>
c0de3308:	bdb0      	pop	{r4, r5, r7, pc}
c0de330a:	bf00      	nop
c0de330c:	fffcf010 	.word	0xfffcf010
c0de3310:	1801fc02 	.word	0x1801fc02

c0de3314 <gen_integer>:
c0de3314:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3318:	4f20      	ldr	r7, [pc, #128]	@ (c0de339c <gen_integer+0x88>)
c0de331a:	4e22      	ldr	r6, [pc, #136]	@ (c0de33a4 <gen_integer+0x90>)
c0de331c:	4605      	mov	r5, r0
c0de331e:	460c      	mov	r4, r1
c0de3320:	2000      	movs	r0, #0
c0de3322:	46b8      	mov	r8, r7
c0de3324:	4f1e      	ldr	r7, [pc, #120]	@ (c0de33a0 <gen_integer+0x8c>)
c0de3326:	447e      	add	r6, pc
c0de3328:	b9f8      	cbnz	r0, c0de336a <gen_integer+0x56>
c0de332a:	4628      	mov	r0, r5
c0de332c:	213e      	movs	r1, #62	@ 0x3e
c0de332e:	47b0      	blx	r6
c0de3330:	e9c4 0100 	strd	r0, r1, [r4]
c0de3334:	4628      	mov	r0, r5
c0de3336:	2140      	movs	r1, #64	@ 0x40
c0de3338:	47b0      	blx	r6
c0de333a:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de333e:	4628      	mov	r0, r5
c0de3340:	2140      	movs	r1, #64	@ 0x40
c0de3342:	47b0      	blx	r6
c0de3344:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3348:	4628      	mov	r0, r5
c0de334a:	2140      	movs	r1, #64	@ 0x40
c0de334c:	47b0      	blx	r6
c0de334e:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de3352:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de3356:	463a      	mov	r2, r7
c0de3358:	1bc0      	subs	r0, r0, r7
c0de335a:	4640      	mov	r0, r8
c0de335c:	eb71 0008 	sbcs.w	r0, r1, r8
c0de3360:	f04f 0000 	mov.w	r0, #0
c0de3364:	bf38      	it	cc
c0de3366:	2001      	movcc	r0, #1
c0de3368:	e7de      	b.n	c0de3328 <gen_integer+0x14>
c0de336a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de336e:	4d0e      	ldr	r5, [pc, #56]	@ (c0de33a8 <gen_integer+0x94>)
c0de3370:	447d      	add	r5, pc
c0de3372:	47a8      	blx	r5
c0de3374:	e9c4 0100 	strd	r0, r1, [r4]
c0de3378:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de337c:	47a8      	blx	r5
c0de337e:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de3382:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de3386:	47a8      	blx	r5
c0de3388:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de338c:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de3390:	47a8      	blx	r5
c0de3392:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de3396:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de339a:	bf00      	nop
c0de339c:	305a4b4e 	.word	0x305a4b4e
c0de33a0:	4f582122 	.word	0x4f582122
c0de33a4:	ffffff6f 	.word	0xffffff6f
c0de33a8:	00000039 	.word	0x00000039

c0de33ac <rev64>:
c0de33ac:	ba0a      	rev	r2, r1
c0de33ae:	ba01      	rev	r1, r0
c0de33b0:	4610      	mov	r0, r2
c0de33b2:	4770      	bx	lr

c0de33b4 <Poseidon_getNext_RC>:
c0de33b4:	30c0      	adds	r0, #192	@ 0xc0
c0de33b6:	f7ff bfad 	b.w	c0de3314 <gen_integer>
	...

c0de33bc <Poseidon_alloc_init>:
c0de33bc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de33c0:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de33c4:	4604      	mov	r4, r0
c0de33c6:	30c0      	adds	r0, #192	@ 0xc0
c0de33c8:	461e      	mov	r6, r3
c0de33ca:	4617      	mov	r7, r2
c0de33cc:	460d      	mov	r5, r1
c0de33ce:	f7ff ff89 	bl	c0de32e4 <init_generator>
c0de33d2:	492c      	ldr	r1, [pc, #176]	@ (c0de3484 <Poseidon_alloc_init+0xc8>)
c0de33d4:	46e8      	mov	r8, sp
c0de33d6:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de33da:	4640      	mov	r0, r8
c0de33dc:	4479      	add	r1, pc
c0de33de:	f004 f9f1 	bl	c0de77c4 <__aeabi_memcpy>
c0de33e2:	2000      	movs	r0, #0
c0de33e4:	7325      	strb	r5, [r4, #12]
c0de33e6:	6166      	str	r6, [r4, #20]
c0de33e8:	4621      	mov	r1, r4
c0de33ea:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de33ee:	1c78      	adds	r0, r7, #1
c0de33f0:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de33f4:	6830      	ldr	r0, [r6, #0]
c0de33f6:	f004 f83b 	bl	c0de7470 <cx_bn_nbytes>
c0de33fa:	b930      	cbnz	r0, c0de340a <Poseidon_alloc_init+0x4e>
c0de33fc:	4620      	mov	r0, r4
c0de33fe:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de3402:	4631      	mov	r1, r6
c0de3404:	f004 f814 	bl	c0de7430 <cx_bn_alloc>
c0de3408:	b118      	cbz	r0, c0de3412 <Poseidon_alloc_init+0x56>
c0de340a:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de340e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3412:	68a0      	ldr	r0, [r4, #8]
c0de3414:	2500      	movs	r5, #0
c0de3416:	4285      	cmp	r5, r0
c0de3418:	d230      	bcs.n	c0de347c <Poseidon_alloc_init+0xc0>
c0de341a:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de341e:	4631      	mov	r1, r6
c0de3420:	f107 0018 	add.w	r0, r7, #24
c0de3424:	f004 f804 	bl	c0de7430 <cx_bn_alloc>
c0de3428:	2800      	cmp	r0, #0
c0de342a:	d1ee      	bne.n	c0de340a <Poseidon_alloc_init+0x4e>
c0de342c:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de3430:	4631      	mov	r1, r6
c0de3432:	f003 fffd 	bl	c0de7430 <cx_bn_alloc>
c0de3436:	2800      	cmp	r0, #0
c0de3438:	d1e7      	bne.n	c0de340a <Poseidon_alloc_init+0x4e>
c0de343a:	2700      	movs	r7, #0
c0de343c:	68a0      	ldr	r0, [r4, #8]
c0de343e:	4287      	cmp	r7, r0
c0de3440:	d21a      	bcs.n	c0de3478 <Poseidon_alloc_init+0xbc>
c0de3442:	fb05 7000 	mla	r0, r5, r0, r7
c0de3446:	4631      	mov	r1, r6
c0de3448:	4633      	mov	r3, r6
c0de344a:	fb00 8206 	mla	r2, r0, r6, r8
c0de344e:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de3452:	3030      	adds	r0, #48	@ 0x30
c0de3454:	f003 fff6 	bl	c0de7444 <cx_bn_alloc_init>
c0de3458:	2800      	cmp	r0, #0
c0de345a:	d1d6      	bne.n	c0de340a <Poseidon_alloc_init+0x4e>
c0de345c:	68a0      	ldr	r0, [r4, #8]
c0de345e:	6962      	ldr	r2, [r4, #20]
c0de3460:	fb05 7000 	mla	r0, r5, r0, r7
c0de3464:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de3468:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de346a:	4601      	mov	r1, r0
c0de346c:	f004 f8b4 	bl	c0de75d8 <cx_mont_to_montgomery>
c0de3470:	3701      	adds	r7, #1
c0de3472:	2800      	cmp	r0, #0
c0de3474:	d0e2      	beq.n	c0de343c <Poseidon_alloc_init+0x80>
c0de3476:	e7c8      	b.n	c0de340a <Poseidon_alloc_init+0x4e>
c0de3478:	3501      	adds	r5, #1
c0de347a:	e7cc      	b.n	c0de3416 <Poseidon_alloc_init+0x5a>
c0de347c:	2001      	movs	r0, #1
c0de347e:	6120      	str	r0, [r4, #16]
c0de3480:	2000      	movs	r0, #0
c0de3482:	e7c2      	b.n	c0de340a <Poseidon_alloc_init+0x4e>
c0de3484:	00005424 	.word	0x00005424

c0de3488 <Poseidon>:
c0de3488:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de348c:	b08c      	sub	sp, #48	@ 0x30
c0de348e:	4606      	mov	r6, r0
c0de3490:	6900      	ldr	r0, [r0, #16]
c0de3492:	2801      	cmp	r0, #1
c0de3494:	f040 80b4 	bne.w	c0de3600 <Poseidon+0x178>
c0de3498:	69b0      	ldr	r0, [r6, #24]
c0de349a:	461f      	mov	r7, r3
c0de349c:	4692      	mov	sl, r2
c0de349e:	f004 f807 	bl	c0de74b0 <cx_bn_set_u32>
c0de34a2:	2800      	cmp	r0, #0
c0de34a4:	f040 80ad 	bne.w	c0de3602 <Poseidon+0x17a>
c0de34a8:	f106 000c 	add.w	r0, r6, #12
c0de34ac:	f106 0818 	add.w	r8, r6, #24
c0de34b0:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de34b4:	9001      	str	r0, [sp, #4]
c0de34b6:	2000      	movs	r0, #0
c0de34b8:	2844      	cmp	r0, #68	@ 0x44
c0de34ba:	f000 80ae 	beq.w	c0de361a <Poseidon+0x192>
c0de34be:	6834      	ldr	r4, [r6, #0]
c0de34c0:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de34c4:	f04f 0a00 	mov.w	sl, #0
c0de34c8:	68b0      	ldr	r0, [r6, #8]
c0de34ca:	4582      	cmp	sl, r0
c0de34cc:	d224      	bcs.n	c0de3518 <Poseidon+0x90>
c0de34ce:	ad04      	add	r5, sp, #16
c0de34d0:	4658      	mov	r0, fp
c0de34d2:	4629      	mov	r1, r5
c0de34d4:	f7ff ff1e 	bl	c0de3314 <gen_integer>
c0de34d8:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de34dc:	4629      	mov	r1, r5
c0de34de:	4622      	mov	r2, r4
c0de34e0:	f003 ffd0 	bl	c0de7484 <cx_bn_init>
c0de34e4:	2800      	cmp	r0, #0
c0de34e6:	f040 808c 	bne.w	c0de3602 <Poseidon+0x17a>
c0de34ea:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de34ee:	6972      	ldr	r2, [r6, #20]
c0de34f0:	4601      	mov	r1, r0
c0de34f2:	f004 f871 	bl	c0de75d8 <cx_mont_to_montgomery>
c0de34f6:	2800      	cmp	r0, #0
c0de34f8:	f040 8083 	bne.w	c0de3602 <Poseidon+0x17a>
c0de34fc:	6972      	ldr	r2, [r6, #20]
c0de34fe:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de3502:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de3506:	6813      	ldr	r3, [r2, #0]
c0de3508:	4602      	mov	r2, r0
c0de350a:	f004 f80b 	bl	c0de7524 <cx_bn_mod_add>
c0de350e:	f10a 0a01 	add.w	sl, sl, #1
c0de3512:	2800      	cmp	r0, #0
c0de3514:	d0d8      	beq.n	c0de34c8 <Poseidon+0x40>
c0de3516:	e074      	b.n	c0de3602 <Poseidon+0x17a>
c0de3518:	9902      	ldr	r1, [sp, #8]
c0de351a:	2904      	cmp	r1, #4
c0de351c:	d301      	bcc.n	c0de3522 <Poseidon+0x9a>
c0de351e:	2940      	cmp	r1, #64	@ 0x40
c0de3520:	d323      	bcc.n	c0de356a <Poseidon+0xe2>
c0de3522:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3526:	2400      	movs	r4, #0
c0de3528:	4284      	cmp	r4, r0
c0de352a:	d22b      	bcs.n	c0de3584 <Poseidon+0xfc>
c0de352c:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de3530:	6973      	ldr	r3, [r6, #20]
c0de3532:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3536:	460a      	mov	r2, r1
c0de3538:	f004 f866 	bl	c0de7608 <cx_mont_mul>
c0de353c:	2800      	cmp	r0, #0
c0de353e:	d160      	bne.n	c0de3602 <Poseidon+0x17a>
c0de3540:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de3544:	6973      	ldr	r3, [r6, #20]
c0de3546:	460a      	mov	r2, r1
c0de3548:	f004 f85e 	bl	c0de7608 <cx_mont_mul>
c0de354c:	2800      	cmp	r0, #0
c0de354e:	d158      	bne.n	c0de3602 <Poseidon+0x17a>
c0de3550:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de3554:	6973      	ldr	r3, [r6, #20]
c0de3556:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de355a:	4601      	mov	r1, r0
c0de355c:	f004 f854 	bl	c0de7608 <cx_mont_mul>
c0de3560:	2800      	cmp	r0, #0
c0de3562:	d14e      	bne.n	c0de3602 <Poseidon+0x17a>
c0de3564:	68b0      	ldr	r0, [r6, #8]
c0de3566:	3401      	adds	r4, #1
c0de3568:	e7de      	b.n	c0de3528 <Poseidon+0xa0>
c0de356a:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de356e:	9a01      	ldr	r2, [sp, #4]
c0de3570:	2301      	movs	r3, #1
c0de3572:	9100      	str	r1, [sp, #0]
c0de3574:	4601      	mov	r1, r0
c0de3576:	f004 f853 	bl	c0de7620 <cx_mont_pow>
c0de357a:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de357e:	2800      	cmp	r0, #0
c0de3580:	d13f      	bne.n	c0de3602 <Poseidon+0x17a>
c0de3582:	68b0      	ldr	r0, [r6, #8]
c0de3584:	2500      	movs	r5, #0
c0de3586:	4285      	cmp	r5, r0
c0de3588:	d229      	bcs.n	c0de35de <Poseidon+0x156>
c0de358a:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de358e:	2100      	movs	r1, #0
c0de3590:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de3594:	f003 ff8c 	bl	c0de74b0 <cx_bn_set_u32>
c0de3598:	bb98      	cbnz	r0, c0de3602 <Poseidon+0x17a>
c0de359a:	9503      	str	r5, [sp, #12]
c0de359c:	2500      	movs	r5, #0
c0de359e:	68b0      	ldr	r0, [r6, #8]
c0de35a0:	4285      	cmp	r5, r0
c0de35a2:	d219      	bcs.n	c0de35d8 <Poseidon+0x150>
c0de35a4:	9903      	ldr	r1, [sp, #12]
c0de35a6:	6973      	ldr	r3, [r6, #20]
c0de35a8:	fb01 5000 	mla	r0, r1, r0, r5
c0de35ac:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de35b0:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de35b4:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de35b6:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de35ba:	f004 f825 	bl	c0de7608 <cx_mont_mul>
c0de35be:	bb00      	cbnz	r0, c0de3602 <Poseidon+0x17a>
c0de35c0:	6971      	ldr	r1, [r6, #20]
c0de35c2:	6820      	ldr	r0, [r4, #0]
c0de35c4:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de35c8:	680b      	ldr	r3, [r1, #0]
c0de35ca:	4601      	mov	r1, r0
c0de35cc:	f003 ffaa 	bl	c0de7524 <cx_bn_mod_add>
c0de35d0:	3501      	adds	r5, #1
c0de35d2:	2800      	cmp	r0, #0
c0de35d4:	d0e3      	beq.n	c0de359e <Poseidon+0x116>
c0de35d6:	e014      	b.n	c0de3602 <Poseidon+0x17a>
c0de35d8:	9d03      	ldr	r5, [sp, #12]
c0de35da:	3501      	adds	r5, #1
c0de35dc:	e7d3      	b.n	c0de3586 <Poseidon+0xfe>
c0de35de:	2400      	movs	r4, #0
c0de35e0:	4284      	cmp	r4, r0
c0de35e2:	d20a      	bcs.n	c0de35fa <Poseidon+0x172>
c0de35e4:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de35e8:	6988      	ldr	r0, [r1, #24]
c0de35ea:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de35ee:	f003 ff55 	bl	c0de749c <cx_bn_copy>
c0de35f2:	b930      	cbnz	r0, c0de3602 <Poseidon+0x17a>
c0de35f4:	68b0      	ldr	r0, [r6, #8]
c0de35f6:	3401      	adds	r4, #1
c0de35f8:	e7f2      	b.n	c0de35e0 <Poseidon+0x158>
c0de35fa:	9802      	ldr	r0, [sp, #8]
c0de35fc:	3001      	adds	r0, #1
c0de35fe:	e75b      	b.n	c0de34b8 <Poseidon+0x30>
c0de3600:	4808      	ldr	r0, [pc, #32]	@ (c0de3624 <Poseidon+0x19c>)
c0de3602:	b00c      	add	sp, #48	@ 0x30
c0de3604:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3608:	f858 1b04 	ldr.w	r1, [r8], #4
c0de360c:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de3610:	f003 ff44 	bl	c0de749c <cx_bn_copy>
c0de3614:	3f01      	subs	r7, #1
c0de3616:	2800      	cmp	r0, #0
c0de3618:	d1f3      	bne.n	c0de3602 <Poseidon+0x17a>
c0de361a:	2f00      	cmp	r7, #0
c0de361c:	d1f4      	bne.n	c0de3608 <Poseidon+0x180>
c0de361e:	2000      	movs	r0, #0
c0de3620:	e7ef      	b.n	c0de3602 <Poseidon+0x17a>
c0de3622:	bf00      	nop
c0de3624:	5a4b4e02 	.word	0x5a4b4e02

c0de3628 <RFC9591_taggedHash>:
c0de3628:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de362a:	b0d9      	sub	sp, #356	@ 0x164
c0de362c:	460e      	mov	r6, r1
c0de362e:	4607      	mov	r7, r0
c0de3630:	a858      	add	r0, sp, #352	@ 0x160
c0de3632:	2140      	movs	r1, #64	@ 0x40
c0de3634:	461c      	mov	r4, r3
c0de3636:	4615      	mov	r5, r2
c0de3638:	f003 fefa 	bl	c0de7430 <cx_bn_alloc>
c0de363c:	bbd8      	cbnz	r0, c0de36b6 <RFC9591_taggedHash+0x8e>
c0de363e:	491f      	ldr	r1, [pc, #124]	@ (c0de36bc <RFC9591_taggedHash+0x94>)
c0de3640:	4668      	mov	r0, sp
c0de3642:	221d      	movs	r2, #29
c0de3644:	4479      	add	r1, pc
c0de3646:	f004 f8bd 	bl	c0de77c4 <__aeabi_memcpy>
c0de364a:	a808      	add	r0, sp, #32
c0de364c:	2109      	movs	r1, #9
c0de364e:	2240      	movs	r2, #64	@ 0x40
c0de3650:	f003 fc84 	bl	c0de6f5c <cx_hash_init_ex>
c0de3654:	bb78      	cbnz	r0, c0de36b6 <RFC9591_taggedHash+0x8e>
c0de3656:	a808      	add	r0, sp, #32
c0de3658:	4669      	mov	r1, sp
c0de365a:	221d      	movs	r2, #29
c0de365c:	f003 fc83 	bl	c0de6f66 <cx_hash_update>
c0de3660:	bb48      	cbnz	r0, c0de36b6 <RFC9591_taggedHash+0x8e>
c0de3662:	a808      	add	r0, sp, #32
c0de3664:	4639      	mov	r1, r7
c0de3666:	4632      	mov	r2, r6
c0de3668:	f003 fc7d 	bl	c0de6f66 <cx_hash_update>
c0de366c:	bb18      	cbnz	r0, c0de36b6 <RFC9591_taggedHash+0x8e>
c0de366e:	a808      	add	r0, sp, #32
c0de3670:	4629      	mov	r1, r5
c0de3672:	4622      	mov	r2, r4
c0de3674:	f003 fc77 	bl	c0de6f66 <cx_hash_update>
c0de3678:	b9e8      	cbnz	r0, c0de36b6 <RFC9591_taggedHash+0x8e>
c0de367a:	a808      	add	r0, sp, #32
c0de367c:	ae48      	add	r6, sp, #288	@ 0x120
c0de367e:	4631      	mov	r1, r6
c0de3680:	f003 fc67 	bl	c0de6f52 <cx_hash_final>
c0de3684:	b9b8      	cbnz	r0, c0de36b6 <RFC9591_taggedHash+0x8e>
c0de3686:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de368a:	2000      	movs	r0, #0
c0de368c:	213f      	movs	r1, #63	@ 0x3f
c0de368e:	2820      	cmp	r0, #32
c0de3690:	d002      	beq.n	c0de3698 <RFC9591_taggedHash+0x70>
c0de3692:	f000 f8dd 	bl	c0de3850 <OUTLINED_FUNCTION_3>
c0de3696:	e7fa      	b.n	c0de368e <RFC9591_taggedHash+0x66>
c0de3698:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de369a:	a948      	add	r1, sp, #288	@ 0x120
c0de369c:	2240      	movs	r2, #64	@ 0x40
c0de369e:	f003 fef1 	bl	c0de7484 <cx_bn_init>
c0de36a2:	b940      	cbnz	r0, c0de36b6 <RFC9591_taggedHash+0x8e>
c0de36a4:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de36a6:	4628      	mov	r0, r5
c0de36a8:	4622      	mov	r2, r4
c0de36aa:	f003 ff5f 	bl	c0de756c <cx_bn_reduce>
c0de36ae:	b910      	cbnz	r0, c0de36b6 <RFC9591_taggedHash+0x8e>
c0de36b0:	a858      	add	r0, sp, #352	@ 0x160
c0de36b2:	f003 fed3 	bl	c0de745c <cx_bn_destroy>
c0de36b6:	b059      	add	sp, #356	@ 0x164
c0de36b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de36ba:	bf00      	nop
c0de36bc:	0000563c 	.word	0x0000563c

c0de36c0 <Babyfrost_H1>:
c0de36c0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de36c2:	4605      	mov	r5, r0
c0de36c4:	206f      	movs	r0, #111	@ 0x6f
c0de36c6:	f000 f8b7 	bl	c0de3838 <OUTLINED_FUNCTION_1>
c0de36ca:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de36ce:	f000 f8ba 	bl	c0de3846 <OUTLINED_FUNCTION_2>
c0de36d2:	a803      	add	r0, sp, #12
c0de36d4:	f7ff ffa8 	bl	c0de3628 <RFC9591_taggedHash>
c0de36d8:	b004      	add	sp, #16
c0de36da:	bdb0      	pop	{r4, r5, r7, pc}

c0de36dc <Babyfrost_H3>:
c0de36dc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de36de:	4605      	mov	r5, r0
c0de36e0:	2065      	movs	r0, #101	@ 0x65
c0de36e2:	460c      	mov	r4, r1
c0de36e4:	e9cd 2300 	strd	r2, r3, [sp]
c0de36e8:	2105      	movs	r1, #5
c0de36ea:	f88d 000c 	strb.w	r0, [sp, #12]
c0de36ee:	4804      	ldr	r0, [pc, #16]	@ (c0de3700 <Babyfrost_H3+0x24>)
c0de36f0:	462a      	mov	r2, r5
c0de36f2:	4623      	mov	r3, r4
c0de36f4:	9002      	str	r0, [sp, #8]
c0de36f6:	a802      	add	r0, sp, #8
c0de36f8:	f7ff ff96 	bl	c0de3628 <RFC9591_taggedHash>
c0de36fc:	b004      	add	sp, #16
c0de36fe:	bdb0      	pop	{r4, r5, r7, pc}
c0de3700:	636e6f6e 	.word	0x636e6f6e

c0de3704 <Babyfrost_H4>:
c0de3704:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3706:	4605      	mov	r5, r0
c0de3708:	2067      	movs	r0, #103	@ 0x67
c0de370a:	f000 f895 	bl	c0de3838 <OUTLINED_FUNCTION_1>
c0de370e:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de3712:	f000 f898 	bl	c0de3846 <OUTLINED_FUNCTION_2>
c0de3716:	a803      	add	r0, sp, #12
c0de3718:	f7ff ff86 	bl	c0de3628 <RFC9591_taggedHash>
c0de371c:	b004      	add	sp, #16
c0de371e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3720 <Babyfrost_H5>:
c0de3720:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3722:	4605      	mov	r5, r0
c0de3724:	206d      	movs	r0, #109	@ 0x6d
c0de3726:	f000 f887 	bl	c0de3838 <OUTLINED_FUNCTION_1>
c0de372a:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de372e:	f000 f88a 	bl	c0de3846 <OUTLINED_FUNCTION_2>
c0de3732:	a803      	add	r0, sp, #12
c0de3734:	f7ff ff78 	bl	c0de3628 <RFC9591_taggedHash>
c0de3738:	b004      	add	sp, #16
c0de373a:	bdb0      	pop	{r4, r5, r7, pc}

c0de373c <zkn_frost_hash_init>:
c0de373c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de373e:	461d      	mov	r5, r3
c0de3740:	4604      	mov	r4, r0
c0de3742:	f003 fc0b 	bl	c0de6f5c <cx_hash_init_ex>
c0de3746:	b938      	cbnz	r0, c0de3758 <zkn_frost_hash_init+0x1c>
c0de3748:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de374c:	9e08      	ldr	r6, [sp, #32]
c0de374e:	4620      	mov	r0, r4
c0de3750:	4629      	mov	r1, r5
c0de3752:	f003 fc08 	bl	c0de6f66 <cx_hash_update>
c0de3756:	b100      	cbz	r0, c0de375a <zkn_frost_hash_init+0x1e>
c0de3758:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de375a:	4620      	mov	r0, r4
c0de375c:	4639      	mov	r1, r7
c0de375e:	4632      	mov	r2, r6
c0de3760:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de3764:	f003 bbff 	b.w	c0de6f66 <cx_hash_update>

c0de3768 <zkn_frost_H1_init>:
c0de3768:	b570      	push	{r4, r5, r6, lr}
c0de376a:	b08c      	sub	sp, #48	@ 0x30
c0de376c:	4604      	mov	r4, r0
c0de376e:	206f      	movs	r0, #111	@ 0x6f
c0de3770:	221d      	movs	r2, #29
c0de3772:	261d      	movs	r6, #29
c0de3774:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3778:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de377c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3780:	ad03      	add	r5, sp, #12
c0de3782:	4905      	ldr	r1, [pc, #20]	@ (c0de3798 <zkn_frost_H1_init+0x30>)
c0de3784:	4628      	mov	r0, r5
c0de3786:	4479      	add	r1, pc
c0de3788:	f004 f81c 	bl	c0de77c4 <__aeabi_memcpy>
c0de378c:	a90b      	add	r1, sp, #44	@ 0x2c
c0de378e:	f000 f849 	bl	c0de3824 <OUTLINED_FUNCTION_0>
c0de3792:	b00c      	add	sp, #48	@ 0x30
c0de3794:	bd70      	pop	{r4, r5, r6, pc}
c0de3796:	bf00      	nop
c0de3798:	000054fa 	.word	0x000054fa

c0de379c <zkn_frost_H5_init>:
c0de379c:	b570      	push	{r4, r5, r6, lr}
c0de379e:	b08c      	sub	sp, #48	@ 0x30
c0de37a0:	4604      	mov	r4, r0
c0de37a2:	206d      	movs	r0, #109	@ 0x6d
c0de37a4:	221d      	movs	r2, #29
c0de37a6:	261d      	movs	r6, #29
c0de37a8:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de37ac:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de37b0:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de37b4:	ad03      	add	r5, sp, #12
c0de37b6:	4905      	ldr	r1, [pc, #20]	@ (c0de37cc <zkn_frost_H5_init+0x30>)
c0de37b8:	4628      	mov	r0, r5
c0de37ba:	4479      	add	r1, pc
c0de37bc:	f004 f802 	bl	c0de77c4 <__aeabi_memcpy>
c0de37c0:	a90b      	add	r1, sp, #44	@ 0x2c
c0de37c2:	f000 f82f 	bl	c0de3824 <OUTLINED_FUNCTION_0>
c0de37c6:	b00c      	add	sp, #48	@ 0x30
c0de37c8:	bd70      	pop	{r4, r5, r6, pc}
c0de37ca:	bf00      	nop
c0de37cc:	000054c6 	.word	0x000054c6

c0de37d0 <zkn_frost_hash_update>:
c0de37d0:	f003 bbc9 	b.w	c0de6f66 <cx_hash_update>

c0de37d4 <zkn_frost_hash_final>:
c0de37d4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de37d6:	b091      	sub	sp, #68	@ 0x44
c0de37d8:	460c      	mov	r4, r1
c0de37da:	4607      	mov	r7, r0
c0de37dc:	a810      	add	r0, sp, #64	@ 0x40
c0de37de:	2140      	movs	r1, #64	@ 0x40
c0de37e0:	4615      	mov	r5, r2
c0de37e2:	f003 fe25 	bl	c0de7430 <cx_bn_alloc>
c0de37e6:	b9d8      	cbnz	r0, c0de3820 <zkn_frost_hash_final+0x4c>
c0de37e8:	466e      	mov	r6, sp
c0de37ea:	4638      	mov	r0, r7
c0de37ec:	4631      	mov	r1, r6
c0de37ee:	f003 fbb0 	bl	c0de6f52 <cx_hash_final>
c0de37f2:	b9a8      	cbnz	r0, c0de3820 <zkn_frost_hash_final+0x4c>
c0de37f4:	2000      	movs	r0, #0
c0de37f6:	213f      	movs	r1, #63	@ 0x3f
c0de37f8:	2820      	cmp	r0, #32
c0de37fa:	d002      	beq.n	c0de3802 <zkn_frost_hash_final+0x2e>
c0de37fc:	f000 f828 	bl	c0de3850 <OUTLINED_FUNCTION_3>
c0de3800:	e7fa      	b.n	c0de37f8 <zkn_frost_hash_final+0x24>
c0de3802:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de3804:	4669      	mov	r1, sp
c0de3806:	2240      	movs	r2, #64	@ 0x40
c0de3808:	f003 fe3c 	bl	c0de7484 <cx_bn_init>
c0de380c:	b940      	cbnz	r0, c0de3820 <zkn_frost_hash_final+0x4c>
c0de380e:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3810:	4628      	mov	r0, r5
c0de3812:	4622      	mov	r2, r4
c0de3814:	f003 feaa 	bl	c0de756c <cx_bn_reduce>
c0de3818:	b910      	cbnz	r0, c0de3820 <zkn_frost_hash_final+0x4c>
c0de381a:	a810      	add	r0, sp, #64	@ 0x40
c0de381c:	f003 fe1e 	bl	c0de745c <cx_bn_destroy>
c0de3820:	b011      	add	sp, #68	@ 0x44
c0de3822:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3824 <OUTLINED_FUNCTION_0>:
c0de3824:	2003      	movs	r0, #3
c0de3826:	2240      	movs	r2, #64	@ 0x40
c0de3828:	462b      	mov	r3, r5
c0de382a:	e9cd 6100 	strd	r6, r1, [sp]
c0de382e:	9002      	str	r0, [sp, #8]
c0de3830:	4620      	mov	r0, r4
c0de3832:	2109      	movs	r1, #9
c0de3834:	f7ff bf82 	b.w	c0de373c <zkn_frost_hash_init>

c0de3838 <OUTLINED_FUNCTION_1>:
c0de3838:	460c      	mov	r4, r1
c0de383a:	e9cd 2300 	strd	r2, r3, [sp]
c0de383e:	2103      	movs	r1, #3
c0de3840:	f88d 000e 	strb.w	r0, [sp, #14]
c0de3844:	4770      	bx	lr

c0de3846 <OUTLINED_FUNCTION_2>:
c0de3846:	462a      	mov	r2, r5
c0de3848:	4623      	mov	r3, r4
c0de384a:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de384e:	4770      	bx	lr

c0de3850 <OUTLINED_FUNCTION_3>:
c0de3850:	5c32      	ldrb	r2, [r6, r0]
c0de3852:	5c73      	ldrb	r3, [r6, r1]
c0de3854:	5433      	strb	r3, [r6, r0]
c0de3856:	5472      	strb	r2, [r6, r1]
c0de3858:	3901      	subs	r1, #1
c0de385a:	3001      	adds	r0, #1
c0de385c:	4770      	bx	lr

c0de385e <os_io_handle_default_apdu>:
c0de385e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3860:	b09d      	sub	sp, #116	@ 0x74
c0de3862:	4615      	mov	r5, r2
c0de3864:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de3866:	b3c8      	cbz	r0, c0de38dc <os_io_handle_default_apdu+0x7e>
c0de3868:	b3c1      	cbz	r1, c0de38dc <os_io_handle_default_apdu+0x7e>
c0de386a:	b3bd      	cbz	r5, c0de38dc <os_io_handle_default_apdu+0x7e>
c0de386c:	461c      	mov	r4, r3
c0de386e:	b3ab      	cbz	r3, c0de38dc <os_io_handle_default_apdu+0x7e>
c0de3870:	b10a      	cbz	r2, c0de3876 <os_io_handle_default_apdu+0x18>
c0de3872:	2100      	movs	r1, #0
c0de3874:	7011      	strb	r1, [r2, #0]
c0de3876:	7801      	ldrb	r1, [r0, #0]
c0de3878:	29b0      	cmp	r1, #176	@ 0xb0
c0de387a:	d131      	bne.n	c0de38e0 <os_io_handle_default_apdu+0x82>
c0de387c:	7841      	ldrb	r1, [r0, #1]
c0de387e:	29a7      	cmp	r1, #167	@ 0xa7
c0de3880:	d031      	beq.n	c0de38e6 <os_io_handle_default_apdu+0x88>
c0de3882:	2906      	cmp	r1, #6
c0de3884:	d036      	beq.n	c0de38f4 <os_io_handle_default_apdu+0x96>
c0de3886:	2901      	cmp	r1, #1
c0de3888:	d131      	bne.n	c0de38ee <os_io_handle_default_apdu+0x90>
c0de388a:	7881      	ldrb	r1, [r0, #2]
c0de388c:	bb79      	cbnz	r1, c0de38ee <os_io_handle_default_apdu+0x90>
c0de388e:	78c0      	ldrb	r0, [r0, #3]
c0de3890:	bb68      	cbnz	r0, c0de38ee <os_io_handle_default_apdu+0x90>
c0de3892:	6820      	ldr	r0, [r4, #0]
c0de3894:	2100      	movs	r1, #0
c0de3896:	6021      	str	r1, [r4, #0]
c0de3898:	2803      	cmp	r0, #3
c0de389a:	d321      	bcc.n	c0de38e0 <os_io_handle_default_apdu+0x82>
c0de389c:	2601      	movs	r6, #1
c0de389e:	1ec7      	subs	r7, r0, #3
c0de38a0:	6026      	str	r6, [r4, #0]
c0de38a2:	702e      	strb	r6, [r5, #0]
c0de38a4:	6820      	ldr	r0, [r4, #0]
c0de38a6:	1a3a      	subs	r2, r7, r0
c0de38a8:	4428      	add	r0, r5
c0de38aa:	1c41      	adds	r1, r0, #1
c0de38ac:	2001      	movs	r0, #1
c0de38ae:	f003 ff25 	bl	c0de76fc <os_registry_get_current_app_tag>
c0de38b2:	f000 f83f 	bl	c0de3934 <OUTLINED_FUNCTION_0>
c0de38b6:	6020      	str	r0, [r4, #0]
c0de38b8:	1a3a      	subs	r2, r7, r0
c0de38ba:	4428      	add	r0, r5
c0de38bc:	1c41      	adds	r1, r0, #1
c0de38be:	2002      	movs	r0, #2
c0de38c0:	f003 ff1c 	bl	c0de76fc <os_registry_get_current_app_tag>
c0de38c4:	f000 f836 	bl	c0de3934 <OUTLINED_FUNCTION_0>
c0de38c8:	1c41      	adds	r1, r0, #1
c0de38ca:	6021      	str	r1, [r4, #0]
c0de38cc:	542e      	strb	r6, [r5, r0]
c0de38ce:	f003 ff0d 	bl	c0de76ec <os_flags>
c0de38d2:	6821      	ldr	r1, [r4, #0]
c0de38d4:	1c4a      	adds	r2, r1, #1
c0de38d6:	6022      	str	r2, [r4, #0]
c0de38d8:	5468      	strb	r0, [r5, r1]
c0de38da:	e028      	b.n	c0de392e <os_io_handle_default_apdu+0xd0>
c0de38dc:	7814      	ldrb	r4, [r2, #0]
c0de38de:	e01e      	b.n	c0de391e <os_io_handle_default_apdu+0xc0>
c0de38e0:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de38e4:	e01b      	b.n	c0de391e <os_io_handle_default_apdu+0xc0>
c0de38e6:	7881      	ldrb	r1, [r0, #2]
c0de38e8:	b909      	cbnz	r1, c0de38ee <os_io_handle_default_apdu+0x90>
c0de38ea:	78c0      	ldrb	r0, [r0, #3]
c0de38ec:	b1d0      	cbz	r0, c0de3924 <os_io_handle_default_apdu+0xc6>
c0de38ee:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de38f2:	e014      	b.n	c0de391e <os_io_handle_default_apdu+0xc0>
c0de38f4:	2100      	movs	r1, #0
c0de38f6:	6021      	str	r1, [r4, #0]
c0de38f8:	7883      	ldrb	r3, [r0, #2]
c0de38fa:	7902      	ldrb	r2, [r0, #4]
c0de38fc:	ad02      	add	r5, sp, #8
c0de38fe:	e9cd 1500 	strd	r1, r5, [sp]
c0de3902:	1d41      	adds	r1, r0, #5
c0de3904:	4618      	mov	r0, r3
c0de3906:	2300      	movs	r3, #0
c0de3908:	f003 fec4 	bl	c0de7694 <os_pki_load_certificate>
c0de390c:	4604      	mov	r4, r0
c0de390e:	4628      	mov	r0, r5
c0de3910:	216c      	movs	r1, #108	@ 0x6c
c0de3912:	f003 ff65 	bl	c0de77e0 <explicit_bzero>
c0de3916:	2c00      	cmp	r4, #0
c0de3918:	bf08      	it	eq
c0de391a:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de391e:	4620      	mov	r0, r4
c0de3920:	b01d      	add	sp, #116	@ 0x74
c0de3922:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3924:	2000      	movs	r0, #0
c0de3926:	6020      	str	r0, [r4, #0]
c0de3928:	b10a      	cbz	r2, c0de392e <os_io_handle_default_apdu+0xd0>
c0de392a:	2001      	movs	r0, #1
c0de392c:	7010      	strb	r0, [r2, #0]
c0de392e:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de3932:	e7f4      	b.n	c0de391e <os_io_handle_default_apdu+0xc0>

c0de3934 <OUTLINED_FUNCTION_0>:
c0de3934:	6821      	ldr	r1, [r4, #0]
c0de3936:	1c4a      	adds	r2, r1, #1
c0de3938:	6022      	str	r2, [r4, #0]
c0de393a:	5468      	strb	r0, [r5, r1]
c0de393c:	6821      	ldr	r1, [r4, #0]
c0de393e:	4408      	add	r0, r1
c0de3940:	4770      	bx	lr

c0de3942 <io_process_itc_ux_event>:
c0de3942:	b580      	push	{r7, lr}
c0de3944:	78c0      	ldrb	r0, [r0, #3]
c0de3946:	2820      	cmp	r0, #32
c0de3948:	d107      	bne.n	c0de395a <io_process_itc_ux_event+0x18>
c0de394a:	2001      	movs	r0, #1
c0de394c:	f003 fb2b 	bl	c0de6fa6 <nbgl_objAllowDrawing>
c0de3950:	f003 fb38 	bl	c0de6fc4 <nbgl_screenRedraw>
c0de3954:	f003 fb1d 	bl	c0de6f92 <nbgl_refresh>
c0de3958:	2100      	movs	r1, #0
c0de395a:	4608      	mov	r0, r1
c0de395c:	bd80      	pop	{r7, pc}
	...

c0de3960 <io_legacy_apdu_tx>:
c0de3960:	b5b0      	push	{r4, r5, r7, lr}
c0de3962:	460a      	mov	r2, r1
c0de3964:	4601      	mov	r1, r0
c0de3966:	4806      	ldr	r0, [pc, #24]	@ (c0de3980 <io_legacy_apdu_tx+0x20>)
c0de3968:	2300      	movs	r3, #0
c0de396a:	2500      	movs	r5, #0
c0de396c:	eb09 0400 	add.w	r4, r9, r0
c0de3970:	7860      	ldrb	r0, [r4, #1]
c0de3972:	f003 feed 	bl	c0de7750 <os_io_tx_cmd>
c0de3976:	4903      	ldr	r1, [pc, #12]	@ (c0de3984 <io_legacy_apdu_tx+0x24>)
c0de3978:	7065      	strb	r5, [r4, #1]
c0de397a:	4449      	add	r1, r9
c0de397c:	718d      	strb	r5, [r1, #6]
c0de397e:	bdb0      	pop	{r4, r5, r7, pc}
c0de3980:	00000876 	.word	0x00000876
c0de3984:	0000086e 	.word	0x0000086e

c0de3988 <io_legacy_apdu_rx>:
c0de3988:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de398a:	4e66      	ldr	r6, [pc, #408]	@ (c0de3b24 <io_legacy_apdu_rx+0x19c>)
c0de398c:	2100      	movs	r1, #0
c0de398e:	4605      	mov	r5, r0
c0de3990:	2200      	movs	r2, #0
c0de3992:	2301      	movs	r3, #1
c0de3994:	f88d 100b 	strb.w	r1, [sp, #11]
c0de3998:	f240 1111 	movw	r1, #273	@ 0x111
c0de399c:	eb09 0006 	add.w	r0, r9, r6
c0de39a0:	f003 fee2 	bl	c0de7768 <os_io_rx_evt>
c0de39a4:	4604      	mov	r4, r0
c0de39a6:	2801      	cmp	r0, #1
c0de39a8:	f2c0 80ab 	blt.w	c0de3b02 <io_legacy_apdu_rx+0x17a>
c0de39ac:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de39b0:	f1a0 0110 	sub.w	r1, r0, #16
c0de39b4:	2916      	cmp	r1, #22
c0de39b6:	d805      	bhi.n	c0de39c4 <io_legacy_apdu_rx+0x3c>
c0de39b8:	2201      	movs	r2, #1
c0de39ba:	fa02 f101 	lsl.w	r1, r2, r1
c0de39be:	4a5a      	ldr	r2, [pc, #360]	@ (c0de3b28 <io_legacy_apdu_rx+0x1a0>)
c0de39c0:	4211      	tst	r1, r2
c0de39c2:	d106      	bne.n	c0de39d2 <io_legacy_apdu_rx+0x4a>
c0de39c4:	1e41      	subs	r1, r0, #1
c0de39c6:	2902      	cmp	r1, #2
c0de39c8:	d367      	bcc.n	c0de3a9a <io_legacy_apdu_rx+0x112>
c0de39ca:	2830      	cmp	r0, #48	@ 0x30
c0de39cc:	bf18      	it	ne
c0de39ce:	2840      	cmpne	r0, #64	@ 0x40
c0de39d0:	d177      	bne.n	c0de3ac2 <io_legacy_apdu_rx+0x13a>
c0de39d2:	4f56      	ldr	r7, [pc, #344]	@ (c0de3b2c <io_legacy_apdu_rx+0x1a4>)
c0de39d4:	eb09 0107 	add.w	r1, r9, r7
c0de39d8:	7048      	strb	r0, [r1, #1]
c0de39da:	f003 fe6b 	bl	c0de76b4 <os_perso_is_pin_set>
c0de39de:	28aa      	cmp	r0, #170	@ 0xaa
c0de39e0:	d103      	bne.n	c0de39ea <io_legacy_apdu_rx+0x62>
c0de39e2:	f003 fe70 	bl	c0de76c6 <os_global_pin_is_validated>
c0de39e6:	28aa      	cmp	r0, #170	@ 0xaa
c0de39e8:	d145      	bne.n	c0de3a76 <io_legacy_apdu_rx+0xee>
c0de39ea:	eb09 0006 	add.w	r0, r9, r6
c0de39ee:	7840      	ldrb	r0, [r0, #1]
c0de39f0:	28b0      	cmp	r0, #176	@ 0xb0
c0de39f2:	d12c      	bne.n	c0de3a4e <io_legacy_apdu_rx+0xc6>
c0de39f4:	f240 1011 	movw	r0, #273	@ 0x111
c0de39f8:	1e61      	subs	r1, r4, #1
c0de39fa:	9001      	str	r0, [sp, #4]
c0de39fc:	f10d 000b 	add.w	r0, sp, #11
c0de3a00:	9000      	str	r0, [sp, #0]
c0de3a02:	484b      	ldr	r0, [pc, #300]	@ (c0de3b30 <io_legacy_apdu_rx+0x1a8>)
c0de3a04:	ab01      	add	r3, sp, #4
c0de3a06:	eb09 0500 	add.w	r5, r9, r0
c0de3a0a:	eb09 0006 	add.w	r0, r9, r6
c0de3a0e:	3001      	adds	r0, #1
c0de3a10:	462a      	mov	r2, r5
c0de3a12:	f7ff ff24 	bl	c0de385e <os_io_handle_default_apdu>
c0de3a16:	2400      	movs	r4, #0
c0de3a18:	9901      	ldr	r1, [sp, #4]
c0de3a1a:	eb09 0607 	add.w	r6, r9, r7
c0de3a1e:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de3a22:	bf18      	it	ne
c0de3a24:	4621      	movne	r1, r4
c0de3a26:	0a02      	lsrs	r2, r0, #8
c0de3a28:	2300      	movs	r3, #0
c0de3a2a:	546a      	strb	r2, [r5, r1]
c0de3a2c:	186a      	adds	r2, r5, r1
c0de3a2e:	7050      	strb	r0, [r2, #1]
c0de3a30:	1c88      	adds	r0, r1, #2
c0de3a32:	4629      	mov	r1, r5
c0de3a34:	9001      	str	r0, [sp, #4]
c0de3a36:	b282      	uxth	r2, r0
c0de3a38:	7870      	ldrb	r0, [r6, #1]
c0de3a3a:	f003 fe89 	bl	c0de7750 <os_io_tx_cmd>
c0de3a3e:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de3a42:	7074      	strb	r4, [r6, #1]
c0de3a44:	2901      	cmp	r1, #1
c0de3a46:	d06a      	beq.n	c0de3b1e <io_legacy_apdu_rx+0x196>
c0de3a48:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3a4c:	e059      	b.n	c0de3b02 <io_legacy_apdu_rx+0x17a>
c0de3a4e:	eb09 0007 	add.w	r0, r9, r7
c0de3a52:	7840      	ldrb	r0, [r0, #1]
c0de3a54:	2810      	cmp	r0, #16
c0de3a56:	d043      	beq.n	c0de3ae0 <io_legacy_apdu_rx+0x158>
c0de3a58:	2840      	cmp	r0, #64	@ 0x40
c0de3a5a:	d043      	beq.n	c0de3ae4 <io_legacy_apdu_rx+0x15c>
c0de3a5c:	2821      	cmp	r0, #33	@ 0x21
c0de3a5e:	d043      	beq.n	c0de3ae8 <io_legacy_apdu_rx+0x160>
c0de3a60:	2822      	cmp	r0, #34	@ 0x22
c0de3a62:	d037      	beq.n	c0de3ad4 <io_legacy_apdu_rx+0x14c>
c0de3a64:	2823      	cmp	r0, #35	@ 0x23
c0de3a66:	d037      	beq.n	c0de3ad8 <io_legacy_apdu_rx+0x150>
c0de3a68:	2830      	cmp	r0, #48	@ 0x30
c0de3a6a:	d037      	beq.n	c0de3adc <io_legacy_apdu_rx+0x154>
c0de3a6c:	2820      	cmp	r0, #32
c0de3a6e:	bf14      	ite	ne
c0de3a70:	2000      	movne	r0, #0
c0de3a72:	2001      	moveq	r0, #1
c0de3a74:	e039      	b.n	c0de3aea <io_legacy_apdu_rx+0x162>
c0de3a76:	482e      	ldr	r0, [pc, #184]	@ (c0de3b30 <io_legacy_apdu_rx+0x1a8>)
c0de3a78:	2155      	movs	r1, #85	@ 0x55
c0de3a7a:	2202      	movs	r2, #2
c0de3a7c:	2300      	movs	r3, #0
c0de3a7e:	f809 1000 	strb.w	r1, [r9, r0]
c0de3a82:	eb09 0100 	add.w	r1, r9, r0
c0de3a86:	2015      	movs	r0, #21
c0de3a88:	7048      	strb	r0, [r1, #1]
c0de3a8a:	eb09 0007 	add.w	r0, r9, r7
c0de3a8e:	7840      	ldrb	r0, [r0, #1]
c0de3a90:	b003      	add	sp, #12
c0de3a92:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3a96:	f003 be5b 	b.w	c0de7750 <os_io_tx_cmd>
c0de3a9a:	4f27      	ldr	r7, [pc, #156]	@ (c0de3b38 <io_legacy_apdu_rx+0x1b0>)
c0de3a9c:	444e      	add	r6, r9
c0de3a9e:	3c01      	subs	r4, #1
c0de3aa0:	1c71      	adds	r1, r6, #1
c0de3aa2:	4622      	mov	r2, r4
c0de3aa4:	eb09 0007 	add.w	r0, r9, r7
c0de3aa8:	f003 fe8c 	bl	c0de77c4 <__aeabi_memcpy>
c0de3aac:	7870      	ldrb	r0, [r6, #1]
c0de3aae:	281a      	cmp	r0, #26
c0de3ab0:	d10a      	bne.n	c0de3ac8 <io_legacy_apdu_rx+0x140>
c0de3ab2:	eb09 0007 	add.w	r0, r9, r7
c0de3ab6:	4621      	mov	r1, r4
c0de3ab8:	b003      	add	sp, #12
c0de3aba:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3abe:	f7ff bf40 	b.w	c0de3942 <io_process_itc_ux_event>
c0de3ac2:	2842      	cmp	r0, #66	@ 0x42
c0de3ac4:	d01d      	beq.n	c0de3b02 <io_legacy_apdu_rx+0x17a>
c0de3ac6:	e028      	b.n	c0de3b1a <io_legacy_apdu_rx+0x192>
c0de3ac8:	b1ed      	cbz	r5, c0de3b06 <io_legacy_apdu_rx+0x17e>
c0de3aca:	2000      	movs	r0, #0
c0de3acc:	2400      	movs	r4, #0
c0de3ace:	f003 f857 	bl	c0de6b80 <io_event>
c0de3ad2:	e016      	b.n	c0de3b02 <io_legacy_apdu_rx+0x17a>
c0de3ad4:	2004      	movs	r0, #4
c0de3ad6:	e008      	b.n	c0de3aea <io_legacy_apdu_rx+0x162>
c0de3ad8:	2007      	movs	r0, #7
c0de3ada:	e006      	b.n	c0de3aea <io_legacy_apdu_rx+0x162>
c0de3adc:	2002      	movs	r0, #2
c0de3ade:	e004      	b.n	c0de3aea <io_legacy_apdu_rx+0x162>
c0de3ae0:	2006      	movs	r0, #6
c0de3ae2:	e002      	b.n	c0de3aea <io_legacy_apdu_rx+0x162>
c0de3ae4:	2003      	movs	r0, #3
c0de3ae6:	e000      	b.n	c0de3aea <io_legacy_apdu_rx+0x162>
c0de3ae8:	2005      	movs	r0, #5
c0de3aea:	4912      	ldr	r1, [pc, #72]	@ (c0de3b34 <io_legacy_apdu_rx+0x1ac>)
c0de3aec:	3c01      	subs	r4, #1
c0de3aee:	4622      	mov	r2, r4
c0de3af0:	4449      	add	r1, r9
c0de3af2:	7188      	strb	r0, [r1, #6]
c0de3af4:	480e      	ldr	r0, [pc, #56]	@ (c0de3b30 <io_legacy_apdu_rx+0x1a8>)
c0de3af6:	eb09 0106 	add.w	r1, r9, r6
c0de3afa:	3101      	adds	r1, #1
c0de3afc:	4448      	add	r0, r9
c0de3afe:	f003 fe61 	bl	c0de77c4 <__aeabi_memcpy>
c0de3b02:	4620      	mov	r0, r4
c0de3b04:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3b06:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3b0a:	2815      	cmp	r0, #21
c0de3b0c:	d8dd      	bhi.n	c0de3aca <io_legacy_apdu_rx+0x142>
c0de3b0e:	2101      	movs	r1, #1
c0de3b10:	fa01 f000 	lsl.w	r0, r1, r0
c0de3b14:	4909      	ldr	r1, [pc, #36]	@ (c0de3b3c <io_legacy_apdu_rx+0x1b4>)
c0de3b16:	4208      	tst	r0, r1
c0de3b18:	d0d7      	beq.n	c0de3aca <io_legacy_apdu_rx+0x142>
c0de3b1a:	2400      	movs	r4, #0
c0de3b1c:	e7f1      	b.n	c0de3b02 <io_legacy_apdu_rx+0x17a>
c0de3b1e:	20ff      	movs	r0, #255	@ 0xff
c0de3b20:	f003 fdf8 	bl	c0de7714 <os_sched_exit>
c0de3b24:	0000075d 	.word	0x0000075d
c0de3b28:	007f0001 	.word	0x007f0001
c0de3b2c:	00000876 	.word	0x00000876
c0de3b30:	0000064c 	.word	0x0000064c
c0de3b34:	0000086e 	.word	0x0000086e
c0de3b38:	000009f4 	.word	0x000009f4
c0de3b3c:	00205020 	.word	0x00205020

c0de3b40 <io_seproxyhal_init>:
c0de3b40:	b570      	push	{r4, r5, r6, lr}
c0de3b42:	b08a      	sub	sp, #40	@ 0x28
c0de3b44:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3b74 <io_seproxyhal_init+0x34>)
c0de3b46:	2600      	movs	r6, #0
c0de3b48:	2118      	movs	r1, #24
c0de3b4a:	eb09 0005 	add.w	r0, r9, r5
c0de3b4e:	7046      	strb	r6, [r0, #1]
c0de3b50:	ac01      	add	r4, sp, #4
c0de3b52:	4620      	mov	r0, r4
c0de3b54:	f003 fe40 	bl	c0de77d8 <__aeabi_memclr>
c0de3b58:	2011      	movs	r0, #17
c0de3b5a:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3b5e:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3b62:	4620      	mov	r0, r4
c0de3b64:	f003 fde0 	bl	c0de7728 <os_io_init>
c0de3b68:	2001      	movs	r0, #1
c0de3b6a:	f809 0005 	strb.w	r0, [r9, r5]
c0de3b6e:	b00a      	add	sp, #40	@ 0x28
c0de3b70:	bd70      	pop	{r4, r5, r6, pc}
c0de3b72:	bf00      	nop
c0de3b74:	00000876 	.word	0x00000876

c0de3b78 <nbgl_layoutGet>:
c0de3b78:	b570      	push	{r4, r5, r6, lr}
c0de3b7a:	4605      	mov	r5, r0
c0de3b7c:	7800      	ldrb	r0, [r0, #0]
c0de3b7e:	b148      	cbz	r0, c0de3b94 <nbgl_layoutGet+0x1c>
c0de3b80:	4819      	ldr	r0, [pc, #100]	@ (c0de3be8 <nbgl_layoutGet+0x70>)
c0de3b82:	eb09 0100 	add.w	r1, r9, r0
c0de3b86:	7b8a      	ldrb	r2, [r1, #14]
c0de3b88:	b152      	cbz	r2, c0de3ba0 <nbgl_layoutGet+0x28>
c0de3b8a:	4448      	add	r0, r9
c0de3b8c:	7e81      	ldrb	r1, [r0, #26]
c0de3b8e:	b151      	cbz	r1, c0de3ba6 <nbgl_layoutGet+0x2e>
c0de3b90:	2400      	movs	r4, #0
c0de3b92:	e026      	b.n	c0de3be2 <nbgl_layoutGet+0x6a>
c0de3b94:	4814      	ldr	r0, [pc, #80]	@ (c0de3be8 <nbgl_layoutGet+0x70>)
c0de3b96:	eb09 0400 	add.w	r4, r9, r0
c0de3b9a:	2000      	movs	r0, #0
c0de3b9c:	70a0      	strb	r0, [r4, #2]
c0de3b9e:	e004      	b.n	c0de3baa <nbgl_layoutGet+0x32>
c0de3ba0:	f101 040c 	add.w	r4, r1, #12
c0de3ba4:	e001      	b.n	c0de3baa <nbgl_layoutGet+0x32>
c0de3ba6:	f100 0418 	add.w	r4, r0, #24
c0de3baa:	2000      	movs	r0, #0
c0de3bac:	4626      	mov	r6, r4
c0de3bae:	60a0      	str	r0, [r4, #8]
c0de3bb0:	6020      	str	r0, [r4, #0]
c0de3bb2:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3bb6:	6868      	ldr	r0, [r5, #4]
c0de3bb8:	f003 fbee 	bl	c0de7398 <pic>
c0de3bbc:	60a0      	str	r0, [r4, #8]
c0de3bbe:	7828      	ldrb	r0, [r5, #0]
c0de3bc0:	f105 0208 	add.w	r2, r5, #8
c0de3bc4:	7020      	strb	r0, [r4, #0]
c0de3bc6:	4b09      	ldr	r3, [pc, #36]	@ (c0de3bec <nbgl_layoutGet+0x74>)
c0de3bc8:	447b      	add	r3, pc
c0de3bca:	b120      	cbz	r0, c0de3bd6 <nbgl_layoutGet+0x5e>
c0de3bcc:	4630      	mov	r0, r6
c0de3bce:	2107      	movs	r1, #7
c0de3bd0:	f003 f9f3 	bl	c0de6fba <nbgl_screenPush>
c0de3bd4:	e004      	b.n	c0de3be0 <nbgl_layoutGet+0x68>
c0de3bd6:	4630      	mov	r0, r6
c0de3bd8:	2107      	movs	r1, #7
c0de3bda:	f003 f9e9 	bl	c0de6fb0 <nbgl_screenSet>
c0de3bde:	2000      	movs	r0, #0
c0de3be0:	7060      	strb	r0, [r4, #1]
c0de3be2:	4620      	mov	r0, r4
c0de3be4:	bd70      	pop	{r4, r5, r6, pc}
c0de3be6:	bf00      	nop
c0de3be8:	00000878 	.word	0x00000878
c0de3bec:	00000025 	.word	0x00000025

c0de3bf0 <buttonCallback>:
c0de3bf0:	b5b0      	push	{r4, r5, r7, lr}
c0de3bf2:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3bf6:	4811      	ldr	r0, [pc, #68]	@ (c0de3c3c <buttonCallback+0x4c>)
c0de3bf8:	2302      	movs	r3, #2
c0de3bfa:	1c5c      	adds	r4, r3, #1
c0de3bfc:	d01d      	beq.n	c0de3c3a <buttonCallback+0x4a>
c0de3bfe:	b2dc      	uxtb	r4, r3
c0de3c00:	eb09 0500 	add.w	r5, r9, r0
c0de3c04:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3c08:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3c0c:	786d      	ldrb	r5, [r5, #1]
c0de3c0e:	42aa      	cmp	r2, r5
c0de3c10:	d105      	bne.n	c0de3c1e <buttonCallback+0x2e>
c0de3c12:	eb09 0500 	add.w	r5, r9, r0
c0de3c16:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3c1a:	78ad      	ldrb	r5, [r5, #2]
c0de3c1c:	b90d      	cbnz	r5, c0de3c22 <buttonCallback+0x32>
c0de3c1e:	3b01      	subs	r3, #1
c0de3c20:	e7eb      	b.n	c0de3bfa <buttonCallback+0xa>
c0de3c22:	eb09 0200 	add.w	r2, r9, r0
c0de3c26:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3c2a:	6892      	ldr	r2, [r2, #8]
c0de3c2c:	b12a      	cbz	r2, c0de3c3a <buttonCallback+0x4a>
c0de3c2e:	4448      	add	r0, r9
c0de3c30:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3c34:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3c38:	4710      	bx	r2
c0de3c3a:	bdb0      	pop	{r4, r5, r7, pc}
c0de3c3c:	00000878 	.word	0x00000878

c0de3c40 <nbgl_layoutAddNavigation>:
c0de3c40:	b570      	push	{r4, r5, r6, lr}
c0de3c42:	2800      	cmp	r0, #0
c0de3c44:	d04d      	beq.n	c0de3ce2 <nbgl_layoutAddNavigation+0xa2>
c0de3c46:	460d      	mov	r5, r1
c0de3c48:	7849      	ldrb	r1, [r1, #1]
c0de3c4a:	4604      	mov	r4, r0
c0de3c4c:	07c8      	lsls	r0, r1, #31
c0de3c4e:	d022      	beq.n	c0de3c96 <nbgl_layoutAddNavigation+0x56>
c0de3c50:	7861      	ldrb	r1, [r4, #1]
c0de3c52:	2002      	movs	r0, #2
c0de3c54:	f003 f9c5 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de3c58:	782a      	ldrb	r2, [r5, #0]
c0de3c5a:	7869      	ldrb	r1, [r5, #1]
c0de3c5c:	4b23      	ldr	r3, [pc, #140]	@ (c0de3cec <nbgl_layoutAddNavigation+0xac>)
c0de3c5e:	4e24      	ldr	r6, [pc, #144]	@ (c0de3cf0 <nbgl_layoutAddNavigation+0xb0>)
c0de3c60:	2a00      	cmp	r2, #0
c0de3c62:	447b      	add	r3, pc
c0de3c64:	447e      	add	r6, pc
c0de3c66:	4602      	mov	r2, r0
c0de3c68:	bf08      	it	eq
c0de3c6a:	461e      	moveq	r6, r3
c0de3c6c:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3c70:	0e33      	lsrs	r3, r6, #24
c0de3c72:	70d3      	strb	r3, [r2, #3]
c0de3c74:	0c33      	lsrs	r3, r6, #16
c0de3c76:	7093      	strb	r3, [r2, #2]
c0de3c78:	0a32      	lsrs	r2, r6, #8
c0de3c7a:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de3c7e:	6862      	ldr	r2, [r4, #4]
c0de3c80:	78a3      	ldrb	r3, [r4, #2]
c0de3c82:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3c86:	2203      	movs	r2, #3
c0de3c88:	77c2      	strb	r2, [r0, #31]
c0de3c8a:	2204      	movs	r2, #4
c0de3c8c:	7582      	strb	r2, [r0, #22]
c0de3c8e:	2200      	movs	r2, #0
c0de3c90:	7242      	strb	r2, [r0, #9]
c0de3c92:	1c58      	adds	r0, r3, #1
c0de3c94:	70a0      	strb	r0, [r4, #2]
c0de3c96:	0788      	lsls	r0, r1, #30
c0de3c98:	f04f 0600 	mov.w	r6, #0
c0de3c9c:	d523      	bpl.n	c0de3ce6 <nbgl_layoutAddNavigation+0xa6>
c0de3c9e:	7861      	ldrb	r1, [r4, #1]
c0de3ca0:	2002      	movs	r0, #2
c0de3ca2:	f003 f99e 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de3ca6:	7829      	ldrb	r1, [r5, #0]
c0de3ca8:	4a12      	ldr	r2, [pc, #72]	@ (c0de3cf4 <nbgl_layoutAddNavigation+0xb4>)
c0de3caa:	4b13      	ldr	r3, [pc, #76]	@ (c0de3cf8 <nbgl_layoutAddNavigation+0xb8>)
c0de3cac:	2900      	cmp	r1, #0
c0de3cae:	447a      	add	r2, pc
c0de3cb0:	447b      	add	r3, pc
c0de3cb2:	4601      	mov	r1, r0
c0de3cb4:	bf08      	it	eq
c0de3cb6:	4613      	moveq	r3, r2
c0de3cb8:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3cbc:	0e1a      	lsrs	r2, r3, #24
c0de3cbe:	7246      	strb	r6, [r0, #9]
c0de3cc0:	70ca      	strb	r2, [r1, #3]
c0de3cc2:	0c1a      	lsrs	r2, r3, #16
c0de3cc4:	708a      	strb	r2, [r1, #2]
c0de3cc6:	0a19      	lsrs	r1, r3, #8
c0de3cc8:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3ccc:	6861      	ldr	r1, [r4, #4]
c0de3cce:	78a2      	ldrb	r2, [r4, #2]
c0de3cd0:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3cd4:	2103      	movs	r1, #3
c0de3cd6:	77c1      	strb	r1, [r0, #31]
c0de3cd8:	2106      	movs	r1, #6
c0de3cda:	7581      	strb	r1, [r0, #22]
c0de3cdc:	1c50      	adds	r0, r2, #1
c0de3cde:	70a0      	strb	r0, [r4, #2]
c0de3ce0:	e001      	b.n	c0de3ce6 <nbgl_layoutAddNavigation+0xa6>
c0de3ce2:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3ce6:	4630      	mov	r0, r6
c0de3ce8:	bd70      	pop	{r4, r5, r6, pc}
c0de3cea:	bf00      	nop
c0de3cec:	00003d26 	.word	0x00003d26
c0de3cf0:	00003d40 	.word	0x00003d40
c0de3cf4:	00003ce8 	.word	0x00003ce8
c0de3cf8:	00003cca 	.word	0x00003cca

c0de3cfc <nbgl_layoutAddText>:
c0de3cfc:	2800      	cmp	r0, #0
c0de3cfe:	f000 8143 	beq.w	c0de3f88 <nbgl_layoutAddText+0x28c>
c0de3d02:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3d06:	b088      	sub	sp, #32
c0de3d08:	460e      	mov	r6, r1
c0de3d0a:	7841      	ldrb	r1, [r0, #1]
c0de3d0c:	4605      	mov	r5, r0
c0de3d0e:	2001      	movs	r0, #1
c0de3d10:	4617      	mov	r7, r2
c0de3d12:	461c      	mov	r4, r3
c0de3d14:	f003 f965 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de3d18:	4680      	mov	r8, r0
c0de3d1a:	2003      	movs	r0, #3
c0de3d1c:	2f00      	cmp	r7, #0
c0de3d1e:	bf08      	it	eq
c0de3d20:	2001      	moveq	r0, #1
c0de3d22:	7869      	ldrb	r1, [r5, #1]
c0de3d24:	f888 0020 	strb.w	r0, [r8, #32]
c0de3d28:	f003 f960 	bl	c0de6fec <nbgl_containerPoolGet>
c0de3d2c:	4641      	mov	r1, r8
c0de3d2e:	0e02      	lsrs	r2, r0, #24
c0de3d30:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3d34:	f04f 0b00 	mov.w	fp, #0
c0de3d38:	9704      	str	r7, [sp, #16]
c0de3d3a:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3d3e:	f888 a004 	strb.w	sl, [r8, #4]
c0de3d42:	f888 b005 	strb.w	fp, [r8, #5]
c0de3d46:	70ca      	strb	r2, [r1, #3]
c0de3d48:	0c02      	lsrs	r2, r0, #16
c0de3d4a:	0a00      	lsrs	r0, r0, #8
c0de3d4c:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3d50:	708a      	strb	r2, [r1, #2]
c0de3d52:	2004      	movs	r0, #4
c0de3d54:	7869      	ldrb	r1, [r5, #1]
c0de3d56:	f003 f944 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de3d5a:	4607      	mov	r7, r0
c0de3d5c:	2003      	movs	r0, #3
c0de3d5e:	77f8      	strb	r0, [r7, #31]
c0de3d60:	4630      	mov	r0, r6
c0de3d62:	f003 fb19 	bl	c0de7398 <pic>
c0de3d66:	4601      	mov	r1, r0
c0de3d68:	2008      	movs	r0, #8
c0de3d6a:	f887 b005 	strb.w	fp, [r7, #5]
c0de3d6e:	f887 a004 	strb.w	sl, [r7, #4]
c0de3d72:	9403      	str	r4, [sp, #12]
c0de3d74:	2c00      	cmp	r4, #0
c0de3d76:	bf08      	it	eq
c0de3d78:	200a      	moveq	r0, #10
c0de3d7a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3d7e:	2205      	movs	r2, #5
c0de3d80:	0e0b      	lsrs	r3, r1, #24
c0de3d82:	f887 2020 	strb.w	r2, [r7, #32]
c0de3d86:	463a      	mov	r2, r7
c0de3d88:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3d8c:	70d3      	strb	r3, [r2, #3]
c0de3d8e:	0c0b      	lsrs	r3, r1, #16
c0de3d90:	7093      	strb	r3, [r2, #2]
c0de3d92:	0a0a      	lsrs	r2, r1, #8
c0de3d94:	2301      	movs	r3, #1
c0de3d96:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de3d9a:	2272      	movs	r2, #114	@ 0x72
c0de3d9c:	f003 f93a 	bl	c0de7014 <nbgl_getTextNbLinesInWidth>
c0de3da0:	4606      	mov	r6, r0
c0de3da2:	2805      	cmp	r0, #5
c0de3da4:	9505      	str	r5, [sp, #20]
c0de3da6:	d31d      	bcc.n	c0de3de4 <nbgl_layoutAddText+0xe8>
c0de3da8:	463e      	mov	r6, r7
c0de3daa:	2004      	movs	r0, #4
c0de3dac:	2101      	movs	r1, #1
c0de3dae:	f10d 051e 	add.w	r5, sp, #30
c0de3db2:	f816 cf26 	ldrb.w	ip, [r6, #38]!
c0de3db6:	7872      	ldrb	r2, [r6, #1]
c0de3db8:	78b3      	ldrb	r3, [r6, #2]
c0de3dba:	78f4      	ldrb	r4, [r6, #3]
c0de3dbc:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de3dc0:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3dc4:	9101      	str	r1, [sp, #4]
c0de3dc6:	9500      	str	r5, [sp, #0]
c0de3dc8:	9d05      	ldr	r5, [sp, #20]
c0de3dca:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3dce:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3dd2:	2304      	movs	r3, #4
c0de3dd4:	f000 fc78 	bl	c0de46c8 <OUTLINED_FUNCTION_4>
c0de3dd8:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3ddc:	7130      	strb	r0, [r6, #4]
c0de3dde:	0a00      	lsrs	r0, r0, #8
c0de3de0:	7170      	strb	r0, [r6, #5]
c0de3de2:	2604      	movs	r6, #4
c0de3de4:	f000 fc78 	bl	c0de46d8 <OUTLINED_FUNCTION_6>
c0de3de8:	4683      	mov	fp, r0
c0de3dea:	79c0      	ldrb	r0, [r0, #7]
c0de3dec:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de3df0:	9c04      	ldr	r4, [sp, #16]
c0de3df2:	fb06 fa00 	mul.w	sl, r6, r0
c0de3df6:	f041 0101 	orr.w	r1, r1, #1
c0de3dfa:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3dfe:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de3e02:	2102      	movs	r1, #2
c0de3e04:	f887 a006 	strb.w	sl, [r7, #6]
c0de3e08:	71f8      	strb	r0, [r7, #7]
c0de3e0a:	4640      	mov	r0, r8
c0de3e0c:	75b9      	strb	r1, [r7, #22]
c0de3e0e:	2c00      	cmp	r4, #0
c0de3e10:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3e14:	7842      	ldrb	r2, [r0, #1]
c0de3e16:	7883      	ldrb	r3, [r0, #2]
c0de3e18:	78c0      	ldrb	r0, [r0, #3]
c0de3e1a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3e1e:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3e22:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3e26:	6007      	str	r7, [r0, #0]
c0de3e28:	f000 8110 	beq.w	c0de404c <nbgl_layoutAddText+0x350>
c0de3e2c:	9803      	ldr	r0, [sp, #12]
c0de3e2e:	7869      	ldrb	r1, [r5, #1]
c0de3e30:	2802      	cmp	r0, #2
c0de3e32:	f040 80ab 	bne.w	c0de3f8c <nbgl_layoutAddText+0x290>
c0de3e36:	2005      	movs	r0, #5
c0de3e38:	2505      	movs	r5, #5
c0de3e3a:	f003 f8d2 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de3e3e:	2600      	movs	r6, #0
c0de3e40:	4607      	mov	r7, r0
c0de3e42:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3e46:	2001      	movs	r0, #1
c0de3e48:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3e4c:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3e50:	f000 fc51 	bl	c0de46f6 <OUTLINED_FUNCTION_9>
c0de3e54:	4620      	mov	r0, r4
c0de3e56:	f003 fa9f 	bl	c0de7398 <pic>
c0de3e5a:	4601      	mov	r1, r0
c0de3e5c:	200e      	movs	r0, #14
c0de3e5e:	71fe      	strb	r6, [r7, #7]
c0de3e60:	75bd      	strb	r5, [r7, #22]
c0de3e62:	71b8      	strb	r0, [r7, #6]
c0de3e64:	2008      	movs	r0, #8
c0de3e66:	0e0a      	lsrs	r2, r1, #24
c0de3e68:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3e6c:	4638      	mov	r0, r7
c0de3e6e:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3e72:	f000 fc20 	bl	c0de46b6 <OUTLINED_FUNCTION_3>
c0de3e76:	2865      	cmp	r0, #101	@ 0x65
c0de3e78:	f240 80d8 	bls.w	c0de402c <nbgl_layoutAddText+0x330>
c0de3e7c:	46bb      	mov	fp, r7
c0de3e7e:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3e82:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3e86:	2401      	movs	r4, #1
c0de3e88:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3e8c:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3e90:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3e94:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3e98:	ae06      	add	r6, sp, #24
c0de3e9a:	e9cd 6400 	strd	r6, r4, [sp]
c0de3e9e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3ea2:	f10d 031a 	add.w	r3, sp, #26
c0de3ea6:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3eaa:	2266      	movs	r2, #102	@ 0x66
c0de3eac:	f003 f8ad 	bl	c0de700a <nbgl_getTextMaxLenAndWidth>
c0de3eb0:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3eb4:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3eb8:	300c      	adds	r0, #12
c0de3eba:	7138      	strb	r0, [r7, #4]
c0de3ebc:	0a00      	lsrs	r0, r0, #8
c0de3ebe:	7178      	strb	r0, [r7, #5]
c0de3ec0:	486d      	ldr	r0, [pc, #436]	@ (c0de4078 <nbgl_layoutAddText+0x37c>)
c0de3ec2:	2e13      	cmp	r6, #19
c0de3ec4:	bf28      	it	cs
c0de3ec6:	2613      	movcs	r6, #19
c0de3ec8:	f89b 1000 	ldrb.w	r1, [fp]
c0de3ecc:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3ed0:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3ed4:	eb09 0400 	add.w	r4, r9, r0
c0de3ed8:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3edc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3ee0:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3ee4:	4632      	mov	r2, r6
c0de3ee6:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3eea:	4620      	mov	r0, r4
c0de3eec:	f003 fc6a 	bl	c0de77c4 <__aeabi_memcpy>
c0de3ef0:	2500      	movs	r5, #0
c0de3ef2:	4620      	mov	r0, r4
c0de3ef4:	55a5      	strb	r5, [r4, r6]
c0de3ef6:	f003 fa4f 	bl	c0de7398 <pic>
c0de3efa:	2101      	movs	r1, #1
c0de3efc:	f88b 0000 	strb.w	r0, [fp]
c0de3f00:	76bd      	strb	r5, [r7, #26]
c0de3f02:	9d05      	ldr	r5, [sp, #20]
c0de3f04:	7679      	strb	r1, [r7, #25]
c0de3f06:	0e01      	lsrs	r1, r0, #24
c0de3f08:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3f0c:	0c01      	lsrs	r1, r0, #16
c0de3f0e:	0a00      	lsrs	r0, r0, #8
c0de3f10:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3f14:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3f18:	4640      	mov	r0, r8
c0de3f1a:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3f1e:	7842      	ldrb	r2, [r0, #1]
c0de3f20:	7883      	ldrb	r3, [r0, #2]
c0de3f22:	78c0      	ldrb	r0, [r0, #3]
c0de3f24:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3f28:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3f2c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3f30:	6047      	str	r7, [r0, #4]
c0de3f32:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3f36:	2800      	cmp	r0, #0
c0de3f38:	f000 8086 	beq.w	c0de4048 <nbgl_layoutAddText+0x34c>
c0de3f3c:	7869      	ldrb	r1, [r5, #1]
c0de3f3e:	2005      	movs	r0, #5
c0de3f40:	2605      	movs	r6, #5
c0de3f42:	f003 f84e 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de3f46:	2500      	movs	r5, #0
c0de3f48:	4607      	mov	r7, r0
c0de3f4a:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3f4e:	2001      	movs	r0, #1
c0de3f50:	f000 fbd1 	bl	c0de46f6 <OUTLINED_FUNCTION_9>
c0de3f54:	9804      	ldr	r0, [sp, #16]
c0de3f56:	f003 fa1f 	bl	c0de7398 <pic>
c0de3f5a:	210e      	movs	r1, #14
c0de3f5c:	71fd      	strb	r5, [r7, #7]
c0de3f5e:	71b9      	strb	r1, [r7, #6]
c0de3f60:	2108      	movs	r1, #8
c0de3f62:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3f66:	f8bd 101a 	ldrh.w	r1, [sp, #26]
c0de3f6a:	4401      	add	r1, r0
c0de3f6c:	4638      	mov	r0, r7
c0de3f6e:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3f72:	0e0a      	lsrs	r2, r1, #24
c0de3f74:	f000 fb9f 	bl	c0de46b6 <OUTLINED_FUNCTION_3>
c0de3f78:	300c      	adds	r0, #12
c0de3f7a:	210f      	movs	r1, #15
c0de3f7c:	75be      	strb	r6, [r7, #22]
c0de3f7e:	7138      	strb	r0, [r7, #4]
c0de3f80:	0a00      	lsrs	r0, r0, #8
c0de3f82:	7178      	strb	r0, [r7, #5]
c0de3f84:	2002      	movs	r0, #2
c0de3f86:	e057      	b.n	c0de4038 <nbgl_layoutAddText+0x33c>
c0de3f88:	f000 bbb2 	b.w	c0de46f0 <OUTLINED_FUNCTION_8>
c0de3f8c:	f000 fba1 	bl	c0de46d2 <OUTLINED_FUNCTION_5>
c0de3f90:	2603      	movs	r6, #3
c0de3f92:	4607      	mov	r7, r0
c0de3f94:	77c6      	strb	r6, [r0, #31]
c0de3f96:	4620      	mov	r0, r4
c0de3f98:	f003 f9fe 	bl	c0de7398 <pic>
c0de3f9c:	4601      	mov	r1, r0
c0de3f9e:	2072      	movs	r0, #114	@ 0x72
c0de3fa0:	2400      	movs	r4, #0
c0de3fa2:	2301      	movs	r3, #1
c0de3fa4:	7138      	strb	r0, [r7, #4]
c0de3fa6:	200a      	movs	r0, #10
c0de3fa8:	0e0a      	lsrs	r2, r1, #24
c0de3faa:	717c      	strb	r4, [r7, #5]
c0de3fac:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3fb0:	f000 fb61 	bl	c0de4676 <OUTLINED_FUNCTION_0>
c0de3fb4:	2804      	cmp	r0, #4
c0de3fb6:	d31e      	bcc.n	c0de3ff6 <nbgl_layoutAddText+0x2fa>
c0de3fb8:	463d      	mov	r5, r7
c0de3fba:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3fbe:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3fc2:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3fc6:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3fca:	78ab      	ldrb	r3, [r5, #2]
c0de3fcc:	78e9      	ldrb	r1, [r5, #3]
c0de3fce:	aa07      	add	r2, sp, #28
c0de3fd0:	9200      	str	r2, [sp, #0]
c0de3fd2:	2201      	movs	r2, #1
c0de3fd4:	9201      	str	r2, [sp, #4]
c0de3fd6:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3fda:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3fde:	2303      	movs	r3, #3
c0de3fe0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3fe4:	2272      	movs	r2, #114	@ 0x72
c0de3fe6:	f003 f824 	bl	c0de7032 <nbgl_getTextMaxLenInNbLines>
c0de3fea:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3fee:	7128      	strb	r0, [r5, #4]
c0de3ff0:	0a00      	lsrs	r0, r0, #8
c0de3ff2:	7168      	strb	r0, [r5, #5]
c0de3ff4:	2003      	movs	r0, #3
c0de3ff6:	9903      	ldr	r1, [sp, #12]
c0de3ff8:	2900      	cmp	r1, #0
c0de3ffa:	bf08      	it	eq
c0de3ffc:	4606      	moveq	r6, r0
c0de3ffe:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de4002:	76bc      	strb	r4, [r7, #26]
c0de4004:	75bc      	strb	r4, [r7, #22]
c0de4006:	fb06 f100 	mul.w	r1, r6, r0
c0de400a:	fb06 a000 	mla	r0, r6, r0, sl
c0de400e:	71b9      	strb	r1, [r7, #6]
c0de4010:	0a09      	lsrs	r1, r1, #8
c0de4012:	71f9      	strb	r1, [r7, #7]
c0de4014:	2102      	movs	r1, #2
c0de4016:	f100 0a02 	add.w	sl, r0, #2
c0de401a:	7679      	strb	r1, [r7, #25]
c0de401c:	2105      	movs	r1, #5
c0de401e:	f887 1020 	strb.w	r1, [r7, #32]
c0de4022:	4641      	mov	r1, r8
c0de4024:	f000 fb3a 	bl	c0de469c <OUTLINED_FUNCTION_2>
c0de4028:	604f      	str	r7, [r1, #4]
c0de402a:	e00f      	b.n	c0de404c <nbgl_layoutAddText+0x350>
c0de402c:	300c      	adds	r0, #12
c0de402e:	2108      	movs	r1, #8
c0de4030:	7138      	strb	r0, [r7, #4]
c0de4032:	0a00      	lsrs	r0, r0, #8
c0de4034:	7178      	strb	r0, [r7, #5]
c0de4036:	2001      	movs	r0, #1
c0de4038:	2200      	movs	r2, #0
c0de403a:	7679      	strb	r1, [r7, #25]
c0de403c:	4641      	mov	r1, r8
c0de403e:	76ba      	strb	r2, [r7, #26]
c0de4040:	f000 fb2c 	bl	c0de469c <OUTLINED_FUNCTION_2>
c0de4044:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de4048:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de404c:	6868      	ldr	r0, [r5, #4]
c0de404e:	78a9      	ldrb	r1, [r5, #2]
c0de4050:	2205      	movs	r2, #5
c0de4052:	f888 2016 	strb.w	r2, [r8, #22]
c0de4056:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de405a:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de405e:	2000      	movs	r0, #0
c0de4060:	3101      	adds	r1, #1
c0de4062:	f888 a006 	strb.w	sl, [r8, #6]
c0de4066:	f888 2007 	strb.w	r2, [r8, #7]
c0de406a:	f888 001f 	strb.w	r0, [r8, #31]
c0de406e:	70a9      	strb	r1, [r5, #2]
c0de4070:	b008      	add	sp, #32
c0de4072:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4076:	bf00      	nop
c0de4078:	0000089c 	.word	0x0000089c

c0de407c <nbgl_layoutAddMenuList>:
c0de407c:	2800      	cmp	r0, #0
c0de407e:	d04f      	beq.n	c0de4120 <nbgl_layoutAddMenuList+0xa4>
c0de4080:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4084:	460c      	mov	r4, r1
c0de4086:	4605      	mov	r5, r0
c0de4088:	2700      	movs	r7, #0
c0de408a:	f04f 0b05 	mov.w	fp, #5
c0de408e:	f04f 0803 	mov.w	r8, #3
c0de4092:	f04f 0a00 	mov.w	sl, #0
c0de4096:	7920      	ldrb	r0, [r4, #4]
c0de4098:	4582      	cmp	sl, r0
c0de409a:	d23e      	bcs.n	c0de411a <nbgl_layoutAddMenuList+0x9e>
c0de409c:	7960      	ldrb	r0, [r4, #5]
c0de409e:	2803      	cmp	r0, #3
c0de40a0:	d302      	bcc.n	c0de40a8 <nbgl_layoutAddMenuList+0x2c>
c0de40a2:	1e81      	subs	r1, r0, #2
c0de40a4:	4551      	cmp	r1, sl
c0de40a6:	dc35      	bgt.n	c0de4114 <nbgl_layoutAddMenuList+0x98>
c0de40a8:	3002      	adds	r0, #2
c0de40aa:	4550      	cmp	r0, sl
c0de40ac:	d332      	bcc.n	c0de4114 <nbgl_layoutAddMenuList+0x98>
c0de40ae:	7869      	ldrb	r1, [r5, #1]
c0de40b0:	f000 fb0f 	bl	c0de46d2 <OUTLINED_FUNCTION_5>
c0de40b4:	6821      	ldr	r1, [r4, #0]
c0de40b6:	4606      	mov	r6, r0
c0de40b8:	fa5f f08a 	uxtb.w	r0, sl
c0de40bc:	4788      	blx	r1
c0de40be:	7961      	ldrb	r1, [r4, #5]
c0de40c0:	220a      	movs	r2, #10
c0de40c2:	458a      	cmp	sl, r1
c0de40c4:	bf08      	it	eq
c0de40c6:	2208      	moveq	r2, #8
c0de40c8:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de40cc:	71f7      	strb	r7, [r6, #7]
c0de40ce:	7177      	strb	r7, [r6, #5]
c0de40d0:	f886 b020 	strb.w	fp, [r6, #32]
c0de40d4:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de40d8:	f886 b016 	strb.w	fp, [r6, #22]
c0de40dc:	f886 801f 	strb.w	r8, [r6, #31]
c0de40e0:	4632      	mov	r2, r6
c0de40e2:	0e03      	lsrs	r3, r0, #24
c0de40e4:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de40e8:	70d3      	strb	r3, [r2, #3]
c0de40ea:	0c03      	lsrs	r3, r0, #16
c0de40ec:	0a00      	lsrs	r0, r0, #8
c0de40ee:	7093      	strb	r3, [r2, #2]
c0de40f0:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de40f4:	6868      	ldr	r0, [r5, #4]
c0de40f6:	78aa      	ldrb	r2, [r5, #2]
c0de40f8:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de40fc:	200c      	movs	r0, #12
c0de40fe:	71b0      	strb	r0, [r6, #6]
c0de4100:	2072      	movs	r0, #114	@ 0x72
c0de4102:	7130      	strb	r0, [r6, #4]
c0de4104:	ebaa 0001 	sub.w	r0, sl, r1
c0de4108:	0901      	lsrs	r1, r0, #4
c0de410a:	0100      	lsls	r0, r0, #4
c0de410c:	7670      	strb	r0, [r6, #25]
c0de410e:	1c50      	adds	r0, r2, #1
c0de4110:	76b1      	strb	r1, [r6, #26]
c0de4112:	70a8      	strb	r0, [r5, #2]
c0de4114:	f10a 0a01 	add.w	sl, sl, #1
c0de4118:	e7bd      	b.n	c0de4096 <nbgl_layoutAddMenuList+0x1a>
c0de411a:	2000      	movs	r0, #0
c0de411c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4120:	f000 bae6 	b.w	c0de46f0 <OUTLINED_FUNCTION_8>

c0de4124 <nbgl_layoutAddCenteredInfo>:
c0de4124:	2800      	cmp	r0, #0
c0de4126:	f000 80dc 	beq.w	c0de42e2 <nbgl_layoutAddCenteredInfo+0x1be>
c0de412a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de412e:	b086      	sub	sp, #24
c0de4130:	460d      	mov	r5, r1
c0de4132:	7841      	ldrb	r1, [r0, #1]
c0de4134:	4682      	mov	sl, r0
c0de4136:	2001      	movs	r0, #1
c0de4138:	f002 ff53 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de413c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4140:	4680      	mov	r8, r0
c0de4142:	2003      	movs	r0, #3
c0de4144:	2703      	movs	r7, #3
c0de4146:	f002 ff51 	bl	c0de6fec <nbgl_containerPoolGet>
c0de414a:	4641      	mov	r1, r8
c0de414c:	0e02      	lsrs	r2, r0, #24
c0de414e:	f04f 0b00 	mov.w	fp, #0
c0de4152:	9504      	str	r5, [sp, #16]
c0de4154:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4158:	f888 b020 	strb.w	fp, [r8, #32]
c0de415c:	70ca      	strb	r2, [r1, #3]
c0de415e:	0c02      	lsrs	r2, r0, #16
c0de4160:	0a00      	lsrs	r0, r0, #8
c0de4162:	708a      	strb	r2, [r1, #2]
c0de4164:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de4168:	68a8      	ldr	r0, [r5, #8]
c0de416a:	b3c0      	cbz	r0, c0de41de <nbgl_layoutAddCenteredInfo+0xba>
c0de416c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4170:	2002      	movs	r0, #2
c0de4172:	f002 ff36 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de4176:	4606      	mov	r6, r0
c0de4178:	77c7      	strb	r7, [r0, #31]
c0de417a:	68a8      	ldr	r0, [r5, #8]
c0de417c:	f003 f90c 	bl	c0de7398 <pic>
c0de4180:	4631      	mov	r1, r6
c0de4182:	0e02      	lsrs	r2, r0, #24
c0de4184:	f886 b013 	strb.w	fp, [r6, #19]
c0de4188:	f886 b009 	strb.w	fp, [r6, #9]
c0de418c:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de4190:	70ca      	strb	r2, [r1, #3]
c0de4192:	0c02      	lsrs	r2, r0, #16
c0de4194:	708a      	strb	r2, [r1, #2]
c0de4196:	0a01      	lsrs	r1, r0, #8
c0de4198:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de419c:	4631      	mov	r1, r6
c0de419e:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de41a2:	f881 b003 	strb.w	fp, [r1, #3]
c0de41a6:	f881 b002 	strb.w	fp, [r1, #2]
c0de41aa:	4641      	mov	r1, r8
c0de41ac:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de41b0:	784f      	ldrb	r7, [r1, #1]
c0de41b2:	788c      	ldrb	r4, [r1, #2]
c0de41b4:	78cd      	ldrb	r5, [r1, #3]
c0de41b6:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de41ba:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de41be:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de41c2:	9d04      	ldr	r5, [sp, #16]
c0de41c4:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de41c8:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de41cc:	2202      	movs	r2, #2
c0de41ce:	75b2      	strb	r2, [r6, #22]
c0de41d0:	1c5a      	adds	r2, r3, #1
c0de41d2:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de41d6:	7881      	ldrb	r1, [r0, #2]
c0de41d8:	78c0      	ldrb	r0, [r0, #3]
c0de41da:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de41de:	6828      	ldr	r0, [r5, #0]
c0de41e0:	2800      	cmp	r0, #0
c0de41e2:	f000 80a5 	beq.w	c0de4330 <nbgl_layoutAddCenteredInfo+0x20c>
c0de41e6:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de41ea:	f000 fa72 	bl	c0de46d2 <OUTLINED_FUNCTION_5>
c0de41ee:	4607      	mov	r7, r0
c0de41f0:	2003      	movs	r0, #3
c0de41f2:	77f8      	strb	r0, [r7, #31]
c0de41f4:	6828      	ldr	r0, [r5, #0]
c0de41f6:	f003 f8cf 	bl	c0de7398 <pic>
c0de41fa:	4601      	mov	r1, r0
c0de41fc:	2072      	movs	r0, #114	@ 0x72
c0de41fe:	2400      	movs	r4, #0
c0de4200:	7138      	strb	r0, [r7, #4]
c0de4202:	2005      	movs	r0, #5
c0de4204:	0e0a      	lsrs	r2, r1, #24
c0de4206:	717c      	strb	r4, [r7, #5]
c0de4208:	f887 0020 	strb.w	r0, [r7, #32]
c0de420c:	4638      	mov	r0, r7
c0de420e:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4212:	70c2      	strb	r2, [r0, #3]
c0de4214:	0c0a      	lsrs	r2, r1, #16
c0de4216:	7082      	strb	r2, [r0, #2]
c0de4218:	0a08      	lsrs	r0, r1, #8
c0de421a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de421e:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de4222:	7b6a      	ldrb	r2, [r5, #13]
c0de4224:	f040 0001 	orr.w	r0, r0, #1
c0de4228:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de422c:	2008      	movs	r0, #8
c0de422e:	2a00      	cmp	r2, #0
c0de4230:	bf08      	it	eq
c0de4232:	200a      	moveq	r0, #10
c0de4234:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4238:	2272      	movs	r2, #114	@ 0x72
c0de423a:	2301      	movs	r3, #1
c0de423c:	f002 feea 	bl	c0de7014 <nbgl_getTextNbLinesInWidth>
c0de4240:	4606      	mov	r6, r0
c0de4242:	2805      	cmp	r0, #5
c0de4244:	d31e      	bcc.n	c0de4284 <nbgl_layoutAddCenteredInfo+0x160>
c0de4246:	463d      	mov	r5, r7
c0de4248:	2004      	movs	r0, #4
c0de424a:	2101      	movs	r1, #1
c0de424c:	f10d 0416 	add.w	r4, sp, #22
c0de4250:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4254:	786a      	ldrb	r2, [r5, #1]
c0de4256:	78ab      	ldrb	r3, [r5, #2]
c0de4258:	78ee      	ldrb	r6, [r5, #3]
c0de425a:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de425e:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4262:	9101      	str	r1, [sp, #4]
c0de4264:	9400      	str	r4, [sp, #0]
c0de4266:	2400      	movs	r4, #0
c0de4268:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de426c:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4270:	2304      	movs	r3, #4
c0de4272:	f000 fa29 	bl	c0de46c8 <OUTLINED_FUNCTION_4>
c0de4276:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de427a:	2604      	movs	r6, #4
c0de427c:	7128      	strb	r0, [r5, #4]
c0de427e:	0a00      	lsrs	r0, r0, #8
c0de4280:	7168      	strb	r0, [r5, #5]
c0de4282:	9d04      	ldr	r5, [sp, #16]
c0de4284:	f000 fa28 	bl	c0de46d8 <OUTLINED_FUNCTION_6>
c0de4288:	79c0      	ldrb	r0, [r0, #7]
c0de428a:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de428e:	4370      	muls	r0, r6
c0de4290:	0a01      	lsrs	r1, r0, #8
c0de4292:	71b8      	strb	r0, [r7, #6]
c0de4294:	71f9      	strb	r1, [r7, #7]
c0de4296:	68a9      	ldr	r1, [r5, #8]
c0de4298:	b329      	cbz	r1, c0de42e6 <nbgl_layoutAddCenteredInfo+0x1c2>
c0de429a:	4641      	mov	r1, r8
c0de429c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de42a0:	784c      	ldrb	r4, [r1, #1]
c0de42a2:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de42a6:	788d      	ldrb	r5, [r1, #2]
c0de42a8:	78c9      	ldrb	r1, [r1, #3]
c0de42aa:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de42ae:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de42b2:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de42b6:	463a      	mov	r2, r7
c0de42b8:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de42bc:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de42c0:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de42c4:	0e0b      	lsrs	r3, r1, #24
c0de42c6:	70d3      	strb	r3, [r2, #3]
c0de42c8:	0c0b      	lsrs	r3, r1, #16
c0de42ca:	0a09      	lsrs	r1, r1, #8
c0de42cc:	7051      	strb	r1, [r2, #1]
c0de42ce:	2100      	movs	r1, #0
c0de42d0:	7093      	strb	r3, [r2, #2]
c0de42d2:	7211      	strb	r1, [r2, #8]
c0de42d4:	2e03      	cmp	r6, #3
c0de42d6:	bf38      	it	cc
c0de42d8:	2101      	movcc	r1, #1
c0de42da:	0089      	lsls	r1, r1, #2
c0de42dc:	71d1      	strb	r1, [r2, #7]
c0de42de:	2108      	movs	r1, #8
c0de42e0:	e00a      	b.n	c0de42f8 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de42e2:	f000 ba05 	b.w	c0de46f0 <OUTLINED_FUNCTION_8>
c0de42e6:	6869      	ldr	r1, [r5, #4]
c0de42e8:	b119      	cbz	r1, c0de42f2 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de42ea:	f000 f9f9 	bl	c0de46e0 <OUTLINED_FUNCTION_7>
c0de42ee:	2102      	movs	r1, #2
c0de42f0:	e002      	b.n	c0de42f8 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de42f2:	f000 f9f5 	bl	c0de46e0 <OUTLINED_FUNCTION_7>
c0de42f6:	2105      	movs	r1, #5
c0de42f8:	7111      	strb	r1, [r2, #4]
c0de42fa:	4641      	mov	r1, r8
c0de42fc:	4458      	add	r0, fp
c0de42fe:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4302:	784c      	ldrb	r4, [r1, #1]
c0de4304:	788d      	ldrb	r5, [r1, #2]
c0de4306:	78ce      	ldrb	r6, [r1, #3]
c0de4308:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de430c:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4310:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4314:	9d04      	ldr	r5, [sp, #16]
c0de4316:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de431a:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de431e:	1c5a      	adds	r2, r3, #1
c0de4320:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4324:	7e79      	ldrb	r1, [r7, #25]
c0de4326:	7eba      	ldrb	r2, [r7, #26]
c0de4328:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de432c:	eb00 0b01 	add.w	fp, r0, r1
c0de4330:	6868      	ldr	r0, [r5, #4]
c0de4332:	2800      	cmp	r0, #0
c0de4334:	d071      	beq.n	c0de441a <nbgl_layoutAddCenteredInfo+0x2f6>
c0de4336:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de433a:	2004      	movs	r0, #4
c0de433c:	f8cd a00c 	str.w	sl, [sp, #12]
c0de4340:	f002 fe4f 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de4344:	2403      	movs	r4, #3
c0de4346:	4607      	mov	r7, r0
c0de4348:	77c4      	strb	r4, [r0, #31]
c0de434a:	6868      	ldr	r0, [r5, #4]
c0de434c:	f003 f824 	bl	c0de7398 <pic>
c0de4350:	4601      	mov	r1, r0
c0de4352:	2000      	movs	r0, #0
c0de4354:	2301      	movs	r3, #1
c0de4356:	7178      	strb	r0, [r7, #5]
c0de4358:	2072      	movs	r0, #114	@ 0x72
c0de435a:	0e0a      	lsrs	r2, r1, #24
c0de435c:	7138      	strb	r0, [r7, #4]
c0de435e:	200a      	movs	r0, #10
c0de4360:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4364:	2005      	movs	r0, #5
c0de4366:	f887 0020 	strb.w	r0, [r7, #32]
c0de436a:	f000 f984 	bl	c0de4676 <OUTLINED_FUNCTION_0>
c0de436e:	4682      	mov	sl, r0
c0de4370:	2804      	cmp	r0, #4
c0de4372:	d31c      	bcc.n	c0de43ae <nbgl_layoutAddCenteredInfo+0x28a>
c0de4374:	463d      	mov	r5, r7
c0de4376:	f04f 0c01 	mov.w	ip, #1
c0de437a:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de437e:	f805 4c01 	strb.w	r4, [r5, #-1]
c0de4382:	786a      	ldrb	r2, [r5, #1]
c0de4384:	78ab      	ldrb	r3, [r5, #2]
c0de4386:	78ec      	ldrb	r4, [r5, #3]
c0de4388:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de438c:	ae05      	add	r6, sp, #20
c0de438e:	e9cd 6c00 	strd	r6, ip, [sp]
c0de4392:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4396:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de439a:	2303      	movs	r3, #3
c0de439c:	f000 f994 	bl	c0de46c8 <OUTLINED_FUNCTION_4>
c0de43a0:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de43a4:	f04f 0a03 	mov.w	sl, #3
c0de43a8:	7128      	strb	r0, [r5, #4]
c0de43aa:	0a00      	lsrs	r0, r0, #8
c0de43ac:	7168      	strb	r0, [r5, #5]
c0de43ae:	f000 f993 	bl	c0de46d8 <OUTLINED_FUNCTION_6>
c0de43b2:	4641      	mov	r1, r8
c0de43b4:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de43b8:	784c      	ldrb	r4, [r1, #1]
c0de43ba:	788d      	ldrb	r5, [r1, #2]
c0de43bc:	78ce      	ldrb	r6, [r1, #3]
c0de43be:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de43c2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de43c6:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de43ca:	463d      	mov	r5, r7
c0de43cc:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de43d0:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de43d4:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de43d8:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de43dc:	0e26      	lsrs	r6, r4, #24
c0de43de:	70ee      	strb	r6, [r5, #3]
c0de43e0:	0c26      	lsrs	r6, r4, #16
c0de43e2:	0a24      	lsrs	r4, r4, #8
c0de43e4:	74fc      	strb	r4, [r7, #19]
c0de43e6:	70ae      	strb	r6, [r5, #2]
c0de43e8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de43ec:	2302      	movs	r3, #2
c0de43ee:	2400      	movs	r4, #0
c0de43f0:	3201      	adds	r2, #1
c0de43f2:	767b      	strb	r3, [r7, #25]
c0de43f4:	2308      	movs	r3, #8
c0de43f6:	76bc      	strb	r4, [r7, #26]
c0de43f8:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de43fc:	79c0      	ldrb	r0, [r0, #7]
c0de43fe:	75bb      	strb	r3, [r7, #22]
c0de4400:	fb0a f300 	mul.w	r3, sl, r0
c0de4404:	fb0a b000 	mla	r0, sl, r0, fp
c0de4408:	e9dd a503 	ldrd	sl, r5, [sp, #12]
c0de440c:	71bb      	strb	r3, [r7, #6]
c0de440e:	0a1b      	lsrs	r3, r3, #8
c0de4410:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4414:	f100 0b02 	add.w	fp, r0, #2
c0de4418:	71fb      	strb	r3, [r7, #7]
c0de441a:	7b28      	ldrb	r0, [r5, #12]
c0de441c:	2102      	movs	r1, #2
c0de441e:	2800      	cmp	r0, #0
c0de4420:	bf08      	it	eq
c0de4422:	2105      	moveq	r1, #5
c0de4424:	f888 1016 	strb.w	r1, [r8, #22]
c0de4428:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de442c:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de4430:	2272      	movs	r2, #114	@ 0x72
c0de4432:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4436:	2000      	movs	r0, #0
c0de4438:	f888 2004 	strb.w	r2, [r8, #4]
c0de443c:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de4440:	3101      	adds	r1, #1
c0de4442:	f888 b006 	strb.w	fp, [r8, #6]
c0de4446:	f888 0019 	strb.w	r0, [r8, #25]
c0de444a:	f888 001a 	strb.w	r0, [r8, #26]
c0de444e:	f888 0005 	strb.w	r0, [r8, #5]
c0de4452:	f888 001f 	strb.w	r0, [r8, #31]
c0de4456:	f888 2007 	strb.w	r2, [r8, #7]
c0de445a:	f88a 1002 	strb.w	r1, [sl, #2]
c0de445e:	b006      	add	sp, #24
c0de4460:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4464 <nbgl_layoutAddSwitch>:
c0de4464:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4468:	2800      	cmp	r0, #0
c0de446a:	f000 8084 	beq.w	c0de4576 <nbgl_layoutAddSwitch+0x112>
c0de446e:	460d      	mov	r5, r1
c0de4470:	7841      	ldrb	r1, [r0, #1]
c0de4472:	4604      	mov	r4, r0
c0de4474:	f000 f92d 	bl	c0de46d2 <OUTLINED_FUNCTION_5>
c0de4478:	f04f 0803 	mov.w	r8, #3
c0de447c:	4606      	mov	r6, r0
c0de447e:	f880 801f 	strb.w	r8, [r0, #31]
c0de4482:	6828      	ldr	r0, [r5, #0]
c0de4484:	f002 ff88 	bl	c0de7398 <pic>
c0de4488:	4601      	mov	r1, r0
c0de448a:	2072      	movs	r0, #114	@ 0x72
c0de448c:	2700      	movs	r7, #0
c0de448e:	2301      	movs	r3, #1
c0de4490:	7130      	strb	r0, [r6, #4]
c0de4492:	2008      	movs	r0, #8
c0de4494:	0e0a      	lsrs	r2, r1, #24
c0de4496:	7177      	strb	r7, [r6, #5]
c0de4498:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de449c:	2005      	movs	r0, #5
c0de449e:	f886 0020 	strb.w	r0, [r6, #32]
c0de44a2:	4630      	mov	r0, r6
c0de44a4:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de44a8:	70c2      	strb	r2, [r0, #3]
c0de44aa:	0c0a      	lsrs	r2, r1, #16
c0de44ac:	7082      	strb	r2, [r0, #2]
c0de44ae:	0a08      	lsrs	r0, r1, #8
c0de44b0:	2272      	movs	r2, #114	@ 0x72
c0de44b2:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de44b6:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de44ba:	f040 0001 	orr.w	r0, r0, #1
c0de44be:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de44c2:	2008      	movs	r0, #8
c0de44c4:	f002 fda6 	bl	c0de7014 <nbgl_getTextNbLinesInWidth>
c0de44c8:	2801      	cmp	r0, #1
c0de44ca:	d854      	bhi.n	c0de4576 <nbgl_layoutAddSwitch+0x112>
c0de44cc:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de44d0:	f002 fd96 	bl	c0de7000 <nbgl_getFontLineHeight>
c0de44d4:	6861      	ldr	r1, [r4, #4]
c0de44d6:	78a2      	ldrb	r2, [r4, #2]
c0de44d8:	76b7      	strb	r7, [r6, #26]
c0de44da:	71f7      	strb	r7, [r6, #7]
c0de44dc:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de44e0:	71b0      	strb	r0, [r6, #6]
c0de44e2:	2002      	movs	r0, #2
c0de44e4:	f886 8019 	strb.w	r8, [r6, #25]
c0de44e8:	75b0      	strb	r0, [r6, #22]
c0de44ea:	1c50      	adds	r0, r2, #1
c0de44ec:	70a0      	strb	r0, [r4, #2]
c0de44ee:	6868      	ldr	r0, [r5, #4]
c0de44f0:	2800      	cmp	r0, #0
c0de44f2:	d04e      	beq.n	c0de4592 <nbgl_layoutAddSwitch+0x12e>
c0de44f4:	7861      	ldrb	r1, [r4, #1]
c0de44f6:	f000 f8ec 	bl	c0de46d2 <OUTLINED_FUNCTION_5>
c0de44fa:	4606      	mov	r6, r0
c0de44fc:	2003      	movs	r0, #3
c0de44fe:	77f0      	strb	r0, [r6, #31]
c0de4500:	6868      	ldr	r0, [r5, #4]
c0de4502:	f002 ff49 	bl	c0de7398 <pic>
c0de4506:	2172      	movs	r1, #114	@ 0x72
c0de4508:	4637      	mov	r7, r6
c0de450a:	f04f 0800 	mov.w	r8, #0
c0de450e:	f04f 0a05 	mov.w	sl, #5
c0de4512:	7131      	strb	r1, [r6, #4]
c0de4514:	210a      	movs	r1, #10
c0de4516:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de451a:	f886 8005 	strb.w	r8, [r6, #5]
c0de451e:	f886 a020 	strb.w	sl, [r6, #32]
c0de4522:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4526:	0e01      	lsrs	r1, r0, #24
c0de4528:	70f9      	strb	r1, [r7, #3]
c0de452a:	0c01      	lsrs	r1, r0, #16
c0de452c:	0a00      	lsrs	r0, r0, #8
c0de452e:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4532:	200a      	movs	r0, #10
c0de4534:	70b9      	strb	r1, [r7, #2]
c0de4536:	f002 fd63 	bl	c0de7000 <nbgl_getFontLineHeight>
c0de453a:	09c1      	lsrs	r1, r0, #7
c0de453c:	f896 2027 	ldrb.w	r2, [r6, #39]	@ 0x27
c0de4540:	78bb      	ldrb	r3, [r7, #2]
c0de4542:	0040      	lsls	r0, r0, #1
c0de4544:	71f1      	strb	r1, [r6, #7]
c0de4546:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de454a:	71b0      	strb	r0, [r6, #6]
c0de454c:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4550:	f041 0101 	orr.w	r1, r1, #1
c0de4554:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de4558:	7839      	ldrb	r1, [r7, #0]
c0de455a:	78ff      	ldrb	r7, [r7, #3]
c0de455c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4560:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de4564:	2301      	movs	r3, #1
c0de4566:	2701      	movs	r7, #1
c0de4568:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de456c:	2272      	movs	r2, #114	@ 0x72
c0de456e:	f002 fd51 	bl	c0de7014 <nbgl_getTextNbLinesInWidth>
c0de4572:	2802      	cmp	r0, #2
c0de4574:	d902      	bls.n	c0de457c <nbgl_layoutAddSwitch+0x118>
c0de4576:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de457a:	e05c      	b.n	c0de4636 <nbgl_layoutAddSwitch+0x1d2>
c0de457c:	6860      	ldr	r0, [r4, #4]
c0de457e:	78a1      	ldrb	r1, [r4, #2]
c0de4580:	f886 801a 	strb.w	r8, [r6, #26]
c0de4584:	f886 a016 	strb.w	sl, [r6, #22]
c0de4588:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de458c:	1c48      	adds	r0, r1, #1
c0de458e:	7677      	strb	r7, [r6, #25]
c0de4590:	70a0      	strb	r0, [r4, #2]
c0de4592:	7861      	ldrb	r1, [r4, #1]
c0de4594:	2005      	movs	r0, #5
c0de4596:	f002 fd24 	bl	c0de6fe2 <nbgl_objPoolGet>
c0de459a:	2600      	movs	r6, #0
c0de459c:	4607      	mov	r7, r0
c0de459e:	f04f 0a03 	mov.w	sl, #3
c0de45a2:	f04f 0808 	mov.w	r8, #8
c0de45a6:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de45aa:	2001      	movs	r0, #1
c0de45ac:	f887 a020 	strb.w	sl, [r7, #32]
c0de45b0:	f887 a01f 	strb.w	sl, [r7, #31]
c0de45b4:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de45b8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de45bc:	7a28      	ldrb	r0, [r5, #8]
c0de45be:	4a1f      	ldr	r2, [pc, #124]	@ (c0de463c <nbgl_layoutAddSwitch+0x1d8>)
c0de45c0:	491f      	ldr	r1, [pc, #124]	@ (c0de4640 <nbgl_layoutAddSwitch+0x1dc>)
c0de45c2:	2801      	cmp	r0, #1
c0de45c4:	447a      	add	r2, pc
c0de45c6:	4479      	add	r1, pc
c0de45c8:	bf08      	it	eq
c0de45ca:	4611      	moveq	r1, r2
c0de45cc:	463a      	mov	r2, r7
c0de45ce:	0e0b      	lsrs	r3, r1, #24
c0de45d0:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de45d4:	70d3      	strb	r3, [r2, #3]
c0de45d6:	0c0b      	lsrs	r3, r1, #16
c0de45d8:	7093      	strb	r3, [r2, #2]
c0de45da:	0a0a      	lsrs	r2, r1, #8
c0de45dc:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de45e0:	2801      	cmp	r0, #1
c0de45e2:	4638      	mov	r0, r7
c0de45e4:	4a17      	ldr	r2, [pc, #92]	@ (c0de4644 <nbgl_layoutAddSwitch+0x1e0>)
c0de45e6:	4d18      	ldr	r5, [pc, #96]	@ (c0de4648 <nbgl_layoutAddSwitch+0x1e4>)
c0de45e8:	447a      	add	r2, pc
c0de45ea:	447d      	add	r5, pc
c0de45ec:	bf18      	it	ne
c0de45ee:	462a      	movne	r2, r5
c0de45f0:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de45f4:	0e13      	lsrs	r3, r2, #24
c0de45f6:	70c3      	strb	r3, [r0, #3]
c0de45f8:	0c13      	lsrs	r3, r2, #16
c0de45fa:	7083      	strb	r3, [r0, #2]
c0de45fc:	0a10      	lsrs	r0, r2, #8
c0de45fe:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de4602:	2008      	movs	r0, #8
c0de4604:	f002 fd10 	bl	c0de7028 <nbgl_getTextWidth>
c0de4608:	6861      	ldr	r1, [r4, #4]
c0de460a:	78a2      	ldrb	r2, [r4, #2]
c0de460c:	786b      	ldrb	r3, [r5, #1]
c0de460e:	76be      	strb	r6, [r7, #26]
c0de4610:	71fe      	strb	r6, [r7, #7]
c0de4612:	f887 8016 	strb.w	r8, [r7, #22]
c0de4616:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de461a:	210c      	movs	r1, #12
c0de461c:	f887 a019 	strb.w	sl, [r7, #25]
c0de4620:	71b9      	strb	r1, [r7, #6]
c0de4622:	7829      	ldrb	r1, [r5, #0]
c0de4624:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4628:	4408      	add	r0, r1
c0de462a:	1c51      	adds	r1, r2, #1
c0de462c:	300a      	adds	r0, #10
c0de462e:	7138      	strb	r0, [r7, #4]
c0de4630:	0a00      	lsrs	r0, r0, #8
c0de4632:	70a1      	strb	r1, [r4, #2]
c0de4634:	7178      	strb	r0, [r7, #5]
c0de4636:	4630      	mov	r0, r6
c0de4638:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de463c:	00003558 	.word	0x00003558
c0de4640:	00003625 	.word	0x00003625
c0de4644:	0000331b 	.word	0x0000331b
c0de4648:	00003303 	.word	0x00003303

c0de464c <nbgl_layoutDraw>:
c0de464c:	b120      	cbz	r0, c0de4658 <nbgl_layoutDraw+0xc>
c0de464e:	b580      	push	{r7, lr}
c0de4650:	f002 fcb8 	bl	c0de6fc4 <nbgl_screenRedraw>
c0de4654:	2000      	movs	r0, #0
c0de4656:	bd80      	pop	{r7, pc}
c0de4658:	f000 b84a 	b.w	c0de46f0 <OUTLINED_FUNCTION_8>

c0de465c <nbgl_layoutRelease>:
c0de465c:	b148      	cbz	r0, c0de4672 <nbgl_layoutRelease+0x16>
c0de465e:	b510      	push	{r4, lr}
c0de4660:	4604      	mov	r4, r0
c0de4662:	7800      	ldrb	r0, [r0, #0]
c0de4664:	b110      	cbz	r0, c0de466c <nbgl_layoutRelease+0x10>
c0de4666:	7860      	ldrb	r0, [r4, #1]
c0de4668:	f002 fcb1 	bl	c0de6fce <nbgl_screenPop>
c0de466c:	2000      	movs	r0, #0
c0de466e:	70a0      	strb	r0, [r4, #2]
c0de4670:	bd10      	pop	{r4, pc}
c0de4672:	f000 b83d 	b.w	c0de46f0 <OUTLINED_FUNCTION_8>

c0de4676 <OUTLINED_FUNCTION_0>:
c0de4676:	4638      	mov	r0, r7
c0de4678:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de467c:	70c2      	strb	r2, [r0, #3]
c0de467e:	0c0a      	lsrs	r2, r1, #16
c0de4680:	7082      	strb	r2, [r0, #2]
c0de4682:	0a08      	lsrs	r0, r1, #8
c0de4684:	2272      	movs	r2, #114	@ 0x72
c0de4686:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de468a:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de468e:	f040 0001 	orr.w	r0, r0, #1
c0de4692:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4696:	200a      	movs	r0, #10
c0de4698:	f002 bcbc 	b.w	c0de7014 <nbgl_getTextNbLinesInWidth>

c0de469c <OUTLINED_FUNCTION_2>:
c0de469c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de46a0:	784b      	ldrb	r3, [r1, #1]
c0de46a2:	788d      	ldrb	r5, [r1, #2]
c0de46a4:	78c9      	ldrb	r1, [r1, #3]
c0de46a6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de46aa:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de46ae:	9d05      	ldr	r5, [sp, #20]
c0de46b0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de46b4:	4770      	bx	lr

c0de46b6 <OUTLINED_FUNCTION_3>:
c0de46b6:	70c2      	strb	r2, [r0, #3]
c0de46b8:	0c0a      	lsrs	r2, r1, #16
c0de46ba:	7082      	strb	r2, [r0, #2]
c0de46bc:	0a08      	lsrs	r0, r1, #8
c0de46be:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de46c2:	2008      	movs	r0, #8
c0de46c4:	f002 bcb0 	b.w	c0de7028 <nbgl_getTextWidth>

c0de46c8 <OUTLINED_FUNCTION_4>:
c0de46c8:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de46cc:	2272      	movs	r2, #114	@ 0x72
c0de46ce:	f002 bcb0 	b.w	c0de7032 <nbgl_getTextMaxLenInNbLines>

c0de46d2 <OUTLINED_FUNCTION_5>:
c0de46d2:	2004      	movs	r0, #4
c0de46d4:	f002 bc85 	b.w	c0de6fe2 <nbgl_objPoolGet>

c0de46d8 <OUTLINED_FUNCTION_6>:
c0de46d8:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de46dc:	f002 bc8b 	b.w	c0de6ff6 <nbgl_getFont>

c0de46e0 <OUTLINED_FUNCTION_7>:
c0de46e0:	2100      	movs	r1, #0
c0de46e2:	463a      	mov	r2, r7
c0de46e4:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de46e8:	70d1      	strb	r1, [r2, #3]
c0de46ea:	7091      	strb	r1, [r2, #2]
c0de46ec:	7051      	strb	r1, [r2, #1]
c0de46ee:	4770      	bx	lr

c0de46f0 <OUTLINED_FUNCTION_8>:
c0de46f0:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de46f4:	4770      	bx	lr

c0de46f6 <OUTLINED_FUNCTION_9>:
c0de46f6:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de46fa:	2003      	movs	r0, #3
c0de46fc:	f887 0020 	strb.w	r0, [r7, #32]
c0de4700:	77f8      	strb	r0, [r7, #31]
c0de4702:	4770      	bx	lr

c0de4704 <nbgl_stepDrawText>:
c0de4704:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4708:	460e      	mov	r6, r1
c0de470a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de470c:	4605      	mov	r5, r0
c0de470e:	2000      	movs	r0, #0
c0de4710:	469a      	mov	sl, r3
c0de4712:	4617      	mov	r7, r2
c0de4714:	f000 f830 	bl	c0de4778 <getFreeContext>
c0de4718:	b348      	cbz	r0, c0de476e <nbgl_stepDrawText+0x6a>
c0de471a:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de471e:	4604      	mov	r4, r0
c0de4720:	6146      	str	r6, [r0, #20]
c0de4722:	b10f      	cbz	r7, c0de4728 <nbgl_stepDrawText+0x24>
c0de4724:	f000 fae1 	bl	c0de4cea <OUTLINED_FUNCTION_1>
c0de4728:	200a      	movs	r0, #10
c0de472a:	f1b8 0f00 	cmp.w	r8, #0
c0de472e:	bf19      	ittee	ne
c0de4730:	4641      	movne	r1, r8
c0de4732:	2203      	movne	r2, #3
c0de4734:	4651      	moveq	r1, sl
c0de4736:	2204      	moveq	r2, #4
c0de4738:	2372      	movs	r3, #114	@ 0x72
c0de473a:	f002 fc70 	bl	c0de701e <nbgl_getTextNbPagesInWidth>
c0de473e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4740:	7020      	strb	r0, [r4, #0]
c0de4742:	072a      	lsls	r2, r5, #28
c0de4744:	bf46      	itte	mi
c0de4746:	3801      	submi	r0, #1
c0de4748:	7060      	strbmi	r0, [r4, #1]
c0de474a:	7860      	ldrbpl	r0, [r4, #1]
c0de474c:	f8c4 800c 	str.w	r8, [r4, #12]
c0de4750:	f8c4 a004 	str.w	sl, [r4, #4]
c0de4754:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de4758:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de475c:	7461      	strb	r1, [r4, #17]
c0de475e:	f005 0103 	and.w	r1, r5, #3
c0de4762:	7421      	strb	r1, [r4, #16]
c0de4764:	b2c1      	uxtb	r1, r0
c0de4766:	4620      	mov	r0, r4
c0de4768:	f000 f82c 	bl	c0de47c4 <displayTextPage>
c0de476c:	e000      	b.n	c0de4770 <nbgl_stepDrawText+0x6c>
c0de476e:	2400      	movs	r4, #0
c0de4770:	4620      	mov	r0, r4
c0de4772:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de4778 <getFreeContext>:
c0de4778:	b570      	push	{r4, r5, r6, lr}
c0de477a:	4604      	mov	r4, r0
c0de477c:	4810      	ldr	r0, [pc, #64]	@ (c0de47c0 <getFreeContext+0x48>)
c0de477e:	460d      	mov	r5, r1
c0de4780:	b151      	cbz	r1, c0de4798 <getFreeContext+0x20>
c0de4782:	2100      	movs	r1, #0
c0de4784:	2990      	cmp	r1, #144	@ 0x90
c0de4786:	d00a      	beq.n	c0de479e <getFreeContext+0x26>
c0de4788:	eb09 0200 	add.w	r2, r9, r0
c0de478c:	440a      	add	r2, r1
c0de478e:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de4792:	b132      	cbz	r2, c0de47a2 <getFreeContext+0x2a>
c0de4794:	3148      	adds	r1, #72	@ 0x48
c0de4796:	e7f5      	b.n	c0de4784 <getFreeContext+0xc>
c0de4798:	eb09 0600 	add.w	r6, r9, r0
c0de479c:	e005      	b.n	c0de47aa <getFreeContext+0x32>
c0de479e:	2600      	movs	r6, #0
c0de47a0:	e00b      	b.n	c0de47ba <getFreeContext+0x42>
c0de47a2:	4448      	add	r0, r9
c0de47a4:	4408      	add	r0, r1
c0de47a6:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de47aa:	4630      	mov	r0, r6
c0de47ac:	2148      	movs	r1, #72	@ 0x48
c0de47ae:	f003 f813 	bl	c0de77d8 <__aeabi_memclr>
c0de47b2:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de47b6:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de47ba:	4630      	mov	r0, r6
c0de47bc:	bd70      	pop	{r4, r5, r6, pc}
c0de47be:	bf00      	nop
c0de47c0:	000008b0 	.word	0x000008b0

c0de47c4 <displayTextPage>:
c0de47c4:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de47c8:	b091      	sub	sp, #68	@ 0x44
c0de47ca:	4604      	mov	r4, r0
c0de47cc:	7840      	ldrb	r0, [r0, #1]
c0de47ce:	460e      	mov	r6, r1
c0de47d0:	4288      	cmp	r0, r1
c0de47d2:	d21c      	bcs.n	c0de480e <displayTextPage+0x4a>
c0de47d4:	68a5      	ldr	r5, [r4, #8]
c0de47d6:	7820      	ldrb	r0, [r4, #0]
c0de47d8:	7066      	strb	r6, [r4, #1]
c0de47da:	3801      	subs	r0, #1
c0de47dc:	42b0      	cmp	r0, r6
c0de47de:	dd31      	ble.n	c0de4844 <displayTextPage+0x80>
c0de47e0:	68e0      	ldr	r0, [r4, #12]
c0de47e2:	2101      	movs	r1, #1
c0de47e4:	2303      	movs	r3, #3
c0de47e6:	aa08      	add	r2, sp, #32
c0de47e8:	e9cd 2100 	strd	r2, r1, [sp]
c0de47ec:	4629      	mov	r1, r5
c0de47ee:	2800      	cmp	r0, #0
c0de47f0:	bf08      	it	eq
c0de47f2:	2304      	moveq	r3, #4
c0de47f4:	200a      	movs	r0, #10
c0de47f6:	2272      	movs	r2, #114	@ 0x72
c0de47f8:	f002 fc1b 	bl	c0de7032 <nbgl_getTextMaxLenInNbLines>
c0de47fc:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de4800:	1868      	adds	r0, r5, r1
c0de4802:	60a0      	str	r0, [r4, #8]
c0de4804:	5c69      	ldrb	r1, [r5, r1]
c0de4806:	290a      	cmp	r1, #10
c0de4808:	d11e      	bne.n	c0de4848 <displayTextPage+0x84>
c0de480a:	3001      	adds	r0, #1
c0de480c:	e01b      	b.n	c0de4846 <displayTextPage+0x82>
c0de480e:	68e5      	ldr	r5, [r4, #12]
c0de4810:	2d00      	cmp	r5, #0
c0de4812:	d074      	beq.n	c0de48fe <displayTextPage+0x13a>
c0de4814:	2700      	movs	r7, #0
c0de4816:	f04f 0801 	mov.w	r8, #1
c0de481a:	f10d 0a20 	add.w	sl, sp, #32
c0de481e:	42be      	cmp	r6, r7
c0de4820:	d0d9      	beq.n	c0de47d6 <displayTextPage+0x12>
c0de4822:	7820      	ldrb	r0, [r4, #0]
c0de4824:	3801      	subs	r0, #1
c0de4826:	42b8      	cmp	r0, r7
c0de4828:	dd0a      	ble.n	c0de4840 <displayTextPage+0x7c>
c0de482a:	200a      	movs	r0, #10
c0de482c:	4629      	mov	r1, r5
c0de482e:	2272      	movs	r2, #114	@ 0x72
c0de4830:	2303      	movs	r3, #3
c0de4832:	e9cd a800 	strd	sl, r8, [sp]
c0de4836:	f002 fbfc 	bl	c0de7032 <nbgl_getTextMaxLenInNbLines>
c0de483a:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de483e:	4405      	add	r5, r0
c0de4840:	3701      	adds	r7, #1
c0de4842:	e7ec      	b.n	c0de481e <displayTextPage+0x5a>
c0de4844:	2000      	movs	r0, #0
c0de4846:	60a0      	str	r0, [r4, #8]
c0de4848:	484f      	ldr	r0, [pc, #316]	@ (c0de4988 <displayTextPage+0x1c4>)
c0de484a:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de484e:	4478      	add	r0, pc
c0de4850:	9004      	str	r0, [sp, #16]
c0de4852:	2000      	movs	r0, #0
c0de4854:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4858:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de485c:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4860:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4862:	ab05      	add	r3, sp, #20
c0de4864:	c307      	stmia	r3!, {r0, r1, r2}
c0de4866:	a803      	add	r0, sp, #12
c0de4868:	f7ff f986 	bl	c0de3b78 <nbgl_layoutGet>
c0de486c:	7827      	ldrb	r7, [r4, #0]
c0de486e:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de4872:	4606      	mov	r6, r0
c0de4874:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4876:	7c20      	ldrb	r0, [r4, #16]
c0de4878:	4639      	mov	r1, r7
c0de487a:	4652      	mov	r2, sl
c0de487c:	f000 f8fc 	bl	c0de4a78 <getNavigationInfo>
c0de4880:	4680      	mov	r8, r0
c0de4882:	f88d 000b 	strb.w	r0, [sp, #11]
c0de4886:	68e0      	ldr	r0, [r4, #12]
c0de4888:	b188      	cbz	r0, c0de48ae <displayTextPage+0xea>
c0de488a:	2f01      	cmp	r7, #1
c0de488c:	d115      	bne.n	c0de48ba <displayTextPage+0xf6>
c0de488e:	6861      	ldr	r1, [r4, #4]
c0de4890:	2008      	movs	r0, #8
c0de4892:	2272      	movs	r2, #114	@ 0x72
c0de4894:	2300      	movs	r3, #0
c0de4896:	2600      	movs	r6, #0
c0de4898:	f002 fbbc 	bl	c0de7014 <nbgl_getTextNbLinesInWidth>
c0de489c:	2802      	cmp	r0, #2
c0de489e:	d348      	bcc.n	c0de4932 <displayTextPage+0x16e>
c0de48a0:	6861      	ldr	r1, [r4, #4]
c0de48a2:	2018      	movs	r0, #24
c0de48a4:	f104 0218 	add.w	r2, r4, #24
c0de48a8:	e9cd 2000 	strd	r2, r0, [sp]
c0de48ac:	e021      	b.n	c0de48f2 <displayTextPage+0x12e>
c0de48ae:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de48b2:	4630      	mov	r0, r6
c0de48b4:	4629      	mov	r1, r5
c0de48b6:	2200      	movs	r2, #0
c0de48b8:	e055      	b.n	c0de4966 <displayTextPage+0x1a2>
c0de48ba:	f10a 0001 	add.w	r0, sl, #1
c0de48be:	6863      	ldr	r3, [r4, #4]
c0de48c0:	2124      	movs	r1, #36	@ 0x24
c0de48c2:	e9cd 0700 	strd	r0, r7, [sp]
c0de48c6:	af08      	add	r7, sp, #32
c0de48c8:	4a30      	ldr	r2, [pc, #192]	@ (c0de498c <displayTextPage+0x1c8>)
c0de48ca:	4638      	mov	r0, r7
c0de48cc:	447a      	add	r2, pc
c0de48ce:	f002 fbd1 	bl	c0de7074 <snprintf>
c0de48d2:	2008      	movs	r0, #8
c0de48d4:	4639      	mov	r1, r7
c0de48d6:	2272      	movs	r2, #114	@ 0x72
c0de48d8:	2300      	movs	r3, #0
c0de48da:	f04f 0a00 	mov.w	sl, #0
c0de48de:	f002 fb99 	bl	c0de7014 <nbgl_getTextNbLinesInWidth>
c0de48e2:	f104 0c18 	add.w	ip, r4, #24
c0de48e6:	2802      	cmp	r0, #2
c0de48e8:	d32c      	bcc.n	c0de4944 <displayTextPage+0x180>
c0de48ea:	2018      	movs	r0, #24
c0de48ec:	e9cd c000 	strd	ip, r0, [sp]
c0de48f0:	a908      	add	r1, sp, #32
c0de48f2:	2008      	movs	r0, #8
c0de48f4:	2272      	movs	r2, #114	@ 0x72
c0de48f6:	2301      	movs	r3, #1
c0de48f8:	f002 fba0 	bl	c0de703c <nbgl_textReduceOnNbLines>
c0de48fc:	e02d      	b.n	c0de495a <displayTextPage+0x196>
c0de48fe:	6865      	ldr	r5, [r4, #4]
c0de4900:	2700      	movs	r7, #0
c0de4902:	f04f 0801 	mov.w	r8, #1
c0de4906:	f10d 0a20 	add.w	sl, sp, #32
c0de490a:	42be      	cmp	r6, r7
c0de490c:	f43f af63 	beq.w	c0de47d6 <displayTextPage+0x12>
c0de4910:	7820      	ldrb	r0, [r4, #0]
c0de4912:	3801      	subs	r0, #1
c0de4914:	42b8      	cmp	r0, r7
c0de4916:	dd0a      	ble.n	c0de492e <displayTextPage+0x16a>
c0de4918:	200a      	movs	r0, #10
c0de491a:	4629      	mov	r1, r5
c0de491c:	2272      	movs	r2, #114	@ 0x72
c0de491e:	2304      	movs	r3, #4
c0de4920:	e9cd a800 	strd	sl, r8, [sp]
c0de4924:	f002 fb85 	bl	c0de7032 <nbgl_getTextMaxLenInNbLines>
c0de4928:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de492c:	4405      	add	r5, r0
c0de492e:	3701      	adds	r7, #1
c0de4930:	e7eb      	b.n	c0de490a <displayTextPage+0x146>
c0de4932:	6861      	ldr	r1, [r4, #4]
c0de4934:	f104 0018 	add.w	r0, r4, #24
c0de4938:	2217      	movs	r2, #23
c0de493a:	f002 ff43 	bl	c0de77c4 <__aeabi_memcpy>
c0de493e:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de4942:	e00a      	b.n	c0de495a <displayTextPage+0x196>
c0de4944:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de4946:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de494a:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de494e:	8838      	ldrh	r0, [r7, #0]
c0de4950:	f8ac 0000 	strh.w	r0, [ip]
c0de4954:	78b8      	ldrb	r0, [r7, #2]
c0de4956:	f88c 0002 	strb.w	r0, [ip, #2]
c0de495a:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de495e:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4960:	f104 0118 	add.w	r1, r4, #24
c0de4964:	462a      	mov	r2, r5
c0de4966:	f7ff f9c9 	bl	c0de3cfc <nbgl_layoutAddText>
c0de496a:	f1b8 0f00 	cmp.w	r8, #0
c0de496e:	d004      	beq.n	c0de497a <displayTextPage+0x1b6>
c0de4970:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4972:	f10d 010a 	add.w	r1, sp, #10
c0de4976:	f7ff f963 	bl	c0de3c40 <nbgl_layoutAddNavigation>
c0de497a:	f000 f9e9 	bl	c0de4d50 <OUTLINED_FUNCTION_4>
c0de497e:	f002 fb08 	bl	c0de6f92 <nbgl_refresh>
c0de4982:	b011      	add	sp, #68	@ 0x44
c0de4984:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4988:	000001bb 	.word	0x000001bb
c0de498c:	00003151 	.word	0x00003151

c0de4990 <nbgl_stepDrawCenteredInfo>:
c0de4990:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4994:	b087      	sub	sp, #28
c0de4996:	460d      	mov	r5, r1
c0de4998:	4682      	mov	sl, r0
c0de499a:	a802      	add	r0, sp, #8
c0de499c:	f000 f9d3 	bl	c0de4d46 <OUTLINED_FUNCTION_3>
c0de49a0:	4819      	ldr	r0, [pc, #100]	@ (c0de4a08 <nbgl_stepDrawCenteredInfo+0x78>)
c0de49a2:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de49a4:	4478      	add	r0, pc
c0de49a6:	f000 f9c5 	bl	c0de4d34 <OUTLINED_FUNCTION_2>
c0de49aa:	b168      	cbz	r0, c0de49c8 <nbgl_stepDrawCenteredInfo+0x38>
c0de49ac:	4604      	mov	r4, r0
c0de49ae:	6145      	str	r5, [r0, #20]
c0de49b0:	b10f      	cbz	r7, c0de49b6 <nbgl_stepDrawCenteredInfo+0x26>
c0de49b2:	f000 f953 	bl	c0de4c5c <OUTLINED_FUNCTION_0>
c0de49b6:	f000 f9ce 	bl	c0de4d56 <OUTLINED_FUNCTION_5>
c0de49ba:	d007      	beq.n	c0de49cc <nbgl_stepDrawCenteredInfo+0x3c>
c0de49bc:	2802      	cmp	r0, #2
c0de49be:	d007      	beq.n	c0de49d0 <nbgl_stepDrawCenteredInfo+0x40>
c0de49c0:	2801      	cmp	r0, #1
c0de49c2:	d108      	bne.n	c0de49d6 <nbgl_stepDrawCenteredInfo+0x46>
c0de49c4:	2002      	movs	r0, #2
c0de49c6:	e004      	b.n	c0de49d2 <nbgl_stepDrawCenteredInfo+0x42>
c0de49c8:	2400      	movs	r4, #0
c0de49ca:	e018      	b.n	c0de49fe <nbgl_stepDrawCenteredInfo+0x6e>
c0de49cc:	2003      	movs	r0, #3
c0de49ce:	e000      	b.n	c0de49d2 <nbgl_stepDrawCenteredInfo+0x42>
c0de49d0:	2001      	movs	r0, #1
c0de49d2:	2500      	movs	r5, #0
c0de49d4:	e000      	b.n	c0de49d8 <nbgl_stepDrawCenteredInfo+0x48>
c0de49d6:	2000      	movs	r0, #0
c0de49d8:	f88d 0007 	strb.w	r0, [sp, #7]
c0de49dc:	a802      	add	r0, sp, #8
c0de49de:	f7ff f8cb 	bl	c0de3b78 <nbgl_layoutGet>
c0de49e2:	4641      	mov	r1, r8
c0de49e4:	6420      	str	r0, [r4, #64]	@ 0x40
c0de49e6:	f7ff fb9d 	bl	c0de4124 <nbgl_layoutAddCenteredInfo>
c0de49ea:	b925      	cbnz	r5, c0de49f6 <nbgl_stepDrawCenteredInfo+0x66>
c0de49ec:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de49ee:	f10d 0106 	add.w	r1, sp, #6
c0de49f2:	f7ff f925 	bl	c0de3c40 <nbgl_layoutAddNavigation>
c0de49f6:	f000 f9ab 	bl	c0de4d50 <OUTLINED_FUNCTION_4>
c0de49fa:	f002 faca 	bl	c0de6f92 <nbgl_refresh>
c0de49fe:	4620      	mov	r0, r4
c0de4a00:	b007      	add	sp, #28
c0de4a02:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4a06:	bf00      	nop
c0de4a08:	00000065 	.word	0x00000065

c0de4a0c <actionCallback>:
c0de4a0c:	b510      	push	{r4, lr}
c0de4a0e:	460c      	mov	r4, r1
c0de4a10:	f000 f8f0 	bl	c0de4bf4 <getContextFromLayout>
c0de4a14:	b378      	cbz	r0, c0de4a76 <actionCallback+0x6a>
c0de4a16:	2c04      	cmp	r4, #4
c0de4a18:	d006      	beq.n	c0de4a28 <actionCallback+0x1c>
c0de4a1a:	2c01      	cmp	r4, #1
c0de4a1c:	d008      	beq.n	c0de4a30 <actionCallback+0x24>
c0de4a1e:	bb54      	cbnz	r4, c0de4a76 <actionCallback+0x6a>
c0de4a20:	7841      	ldrb	r1, [r0, #1]
c0de4a22:	b1d9      	cbz	r1, c0de4a5c <actionCallback+0x50>
c0de4a24:	3901      	subs	r1, #1
c0de4a26:	e009      	b.n	c0de4a3c <actionCallback+0x30>
c0de4a28:	6942      	ldr	r2, [r0, #20]
c0de4a2a:	b322      	cbz	r2, c0de4a76 <actionCallback+0x6a>
c0de4a2c:	2104      	movs	r1, #4
c0de4a2e:	e01f      	b.n	c0de4a70 <actionCallback+0x64>
c0de4a30:	7802      	ldrb	r2, [r0, #0]
c0de4a32:	7841      	ldrb	r1, [r0, #1]
c0de4a34:	3a01      	subs	r2, #1
c0de4a36:	428a      	cmp	r2, r1
c0de4a38:	dd05      	ble.n	c0de4a46 <actionCallback+0x3a>
c0de4a3a:	3101      	adds	r1, #1
c0de4a3c:	b2c9      	uxtb	r1, r1
c0de4a3e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4a42:	f7ff bebf 	b.w	c0de47c4 <displayTextPage>
c0de4a46:	7c01      	ldrb	r1, [r0, #16]
c0de4a48:	f041 0102 	orr.w	r1, r1, #2
c0de4a4c:	2903      	cmp	r1, #3
c0de4a4e:	d001      	beq.n	c0de4a54 <actionCallback+0x48>
c0de4a50:	7c41      	ldrb	r1, [r0, #17]
c0de4a52:	b181      	cbz	r1, c0de4a76 <actionCallback+0x6a>
c0de4a54:	6942      	ldr	r2, [r0, #20]
c0de4a56:	b172      	cbz	r2, c0de4a76 <actionCallback+0x6a>
c0de4a58:	2101      	movs	r1, #1
c0de4a5a:	e009      	b.n	c0de4a70 <actionCallback+0x64>
c0de4a5c:	7c01      	ldrb	r1, [r0, #16]
c0de4a5e:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de4a62:	2902      	cmp	r1, #2
c0de4a64:	d001      	beq.n	c0de4a6a <actionCallback+0x5e>
c0de4a66:	7c41      	ldrb	r1, [r0, #17]
c0de4a68:	b129      	cbz	r1, c0de4a76 <actionCallback+0x6a>
c0de4a6a:	6942      	ldr	r2, [r0, #20]
c0de4a6c:	b11a      	cbz	r2, c0de4a76 <actionCallback+0x6a>
c0de4a6e:	2100      	movs	r1, #0
c0de4a70:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4a74:	4710      	bx	r2
c0de4a76:	bd10      	pop	{r4, pc}

c0de4a78 <getNavigationInfo>:
c0de4a78:	4603      	mov	r3, r0
c0de4a7a:	2902      	cmp	r1, #2
c0de4a7c:	d308      	bcc.n	c0de4a90 <getNavigationInfo+0x18>
c0de4a7e:	3901      	subs	r1, #1
c0de4a80:	4610      	mov	r0, r2
c0de4a82:	2a00      	cmp	r2, #0
c0de4a84:	bf18      	it	ne
c0de4a86:	2001      	movne	r0, #1
c0de4a88:	4291      	cmp	r1, r2
c0de4a8a:	bf88      	it	hi
c0de4a8c:	3002      	addhi	r0, #2
c0de4a8e:	e000      	b.n	c0de4a92 <getNavigationInfo+0x1a>
c0de4a90:	2000      	movs	r0, #0
c0de4a92:	2b03      	cmp	r3, #3
c0de4a94:	d00a      	beq.n	c0de4aac <getNavigationInfo+0x34>
c0de4a96:	2b02      	cmp	r3, #2
c0de4a98:	bf04      	itt	eq
c0de4a9a:	f040 0001 	orreq.w	r0, r0, #1
c0de4a9e:	4770      	bxeq	lr
c0de4aa0:	2b01      	cmp	r3, #1
c0de4aa2:	bf04      	itt	eq
c0de4aa4:	f040 0002 	orreq.w	r0, r0, #2
c0de4aa8:	4770      	bxeq	lr
c0de4aaa:	4770      	bx	lr
c0de4aac:	2003      	movs	r0, #3
c0de4aae:	4770      	bx	lr

c0de4ab0 <nbgl_stepDrawMenuList>:
c0de4ab0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4ab2:	460f      	mov	r7, r1
c0de4ab4:	4606      	mov	r6, r0
c0de4ab6:	2002      	movs	r0, #2
c0de4ab8:	4619      	mov	r1, r3
c0de4aba:	4615      	mov	r5, r2
c0de4abc:	f7ff fe5c 	bl	c0de4778 <getFreeContext>
c0de4ac0:	b170      	cbz	r0, c0de4ae0 <nbgl_stepDrawMenuList+0x30>
c0de4ac2:	4604      	mov	r4, r0
c0de4ac4:	b10f      	cbz	r7, c0de4aca <nbgl_stepDrawMenuList+0x1a>
c0de4ac6:	f000 f910 	bl	c0de4cea <OUTLINED_FUNCTION_1>
c0de4aca:	7928      	ldrb	r0, [r5, #4]
c0de4acc:	7220      	strb	r0, [r4, #8]
c0de4ace:	7968      	ldrb	r0, [r5, #5]
c0de4ad0:	7260      	strb	r0, [r4, #9]
c0de4ad2:	6828      	ldr	r0, [r5, #0]
c0de4ad4:	e9c4 6000 	strd	r6, r0, [r4]
c0de4ad8:	4620      	mov	r0, r4
c0de4ada:	f000 f805 	bl	c0de4ae8 <displayMenuList>
c0de4ade:	e000      	b.n	c0de4ae2 <nbgl_stepDrawMenuList+0x32>
c0de4ae0:	2400      	movs	r4, #0
c0de4ae2:	4620      	mov	r0, r4
c0de4ae4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de4ae8 <displayMenuList>:
c0de4ae8:	b5b0      	push	{r4, r5, r7, lr}
c0de4aea:	b086      	sub	sp, #24
c0de4aec:	4604      	mov	r4, r0
c0de4aee:	2000      	movs	r0, #0
c0de4af0:	9001      	str	r0, [sp, #4]
c0de4af2:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4af6:	4819      	ldr	r0, [pc, #100]	@ (c0de4b5c <displayMenuList+0x74>)
c0de4af8:	4478      	add	r0, pc
c0de4afa:	9002      	str	r0, [sp, #8]
c0de4afc:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4b00:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4b04:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4b06:	ab03      	add	r3, sp, #12
c0de4b08:	c307      	stmia	r3!, {r0, r1, r2}
c0de4b0a:	a801      	add	r0, sp, #4
c0de4b0c:	f7ff f834 	bl	c0de3b78 <nbgl_layoutGet>
c0de4b10:	1d25      	adds	r5, r4, #4
c0de4b12:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4b14:	4629      	mov	r1, r5
c0de4b16:	f7ff fab1 	bl	c0de407c <nbgl_layoutAddMenuList>
c0de4b1a:	7a20      	ldrb	r0, [r4, #8]
c0de4b1c:	2802      	cmp	r0, #2
c0de4b1e:	d316      	bcc.n	c0de4b4e <displayMenuList+0x66>
c0de4b20:	2101      	movs	r1, #1
c0de4b22:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de4b26:	7969      	ldrb	r1, [r5, #5]
c0de4b28:	2900      	cmp	r1, #0
c0de4b2a:	460a      	mov	r2, r1
c0de4b2c:	bf18      	it	ne
c0de4b2e:	2201      	movne	r2, #1
c0de4b30:	3801      	subs	r0, #1
c0de4b32:	f88d 2003 	strb.w	r2, [sp, #3]
c0de4b36:	4288      	cmp	r0, r1
c0de4b38:	d903      	bls.n	c0de4b42 <displayMenuList+0x5a>
c0de4b3a:	1c90      	adds	r0, r2, #2
c0de4b3c:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4b40:	e000      	b.n	c0de4b44 <displayMenuList+0x5c>
c0de4b42:	b121      	cbz	r1, c0de4b4e <displayMenuList+0x66>
c0de4b44:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4b46:	f10d 0102 	add.w	r1, sp, #2
c0de4b4a:	f7ff f879 	bl	c0de3c40 <nbgl_layoutAddNavigation>
c0de4b4e:	f000 f8ff 	bl	c0de4d50 <OUTLINED_FUNCTION_4>
c0de4b52:	f002 fa1e 	bl	c0de6f92 <nbgl_refresh>
c0de4b56:	b006      	add	sp, #24
c0de4b58:	bdb0      	pop	{r4, r5, r7, pc}
c0de4b5a:	bf00      	nop
c0de4b5c:	00000121 	.word	0x00000121

c0de4b60 <nbgl_stepDrawSwitch>:
c0de4b60:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4b64:	b087      	sub	sp, #28
c0de4b66:	460d      	mov	r5, r1
c0de4b68:	4682      	mov	sl, r0
c0de4b6a:	a802      	add	r0, sp, #8
c0de4b6c:	f000 f8eb 	bl	c0de4d46 <OUTLINED_FUNCTION_3>
c0de4b70:	4819      	ldr	r0, [pc, #100]	@ (c0de4bd8 <nbgl_stepDrawSwitch+0x78>)
c0de4b72:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4b74:	4478      	add	r0, pc
c0de4b76:	f000 f8dd 	bl	c0de4d34 <OUTLINED_FUNCTION_2>
c0de4b7a:	b168      	cbz	r0, c0de4b98 <nbgl_stepDrawSwitch+0x38>
c0de4b7c:	4604      	mov	r4, r0
c0de4b7e:	6145      	str	r5, [r0, #20]
c0de4b80:	b10f      	cbz	r7, c0de4b86 <nbgl_stepDrawSwitch+0x26>
c0de4b82:	f000 f86b 	bl	c0de4c5c <OUTLINED_FUNCTION_0>
c0de4b86:	f000 f8e6 	bl	c0de4d56 <OUTLINED_FUNCTION_5>
c0de4b8a:	d007      	beq.n	c0de4b9c <nbgl_stepDrawSwitch+0x3c>
c0de4b8c:	2802      	cmp	r0, #2
c0de4b8e:	d007      	beq.n	c0de4ba0 <nbgl_stepDrawSwitch+0x40>
c0de4b90:	2801      	cmp	r0, #1
c0de4b92:	d108      	bne.n	c0de4ba6 <nbgl_stepDrawSwitch+0x46>
c0de4b94:	2002      	movs	r0, #2
c0de4b96:	e004      	b.n	c0de4ba2 <nbgl_stepDrawSwitch+0x42>
c0de4b98:	2400      	movs	r4, #0
c0de4b9a:	e018      	b.n	c0de4bce <nbgl_stepDrawSwitch+0x6e>
c0de4b9c:	2003      	movs	r0, #3
c0de4b9e:	e000      	b.n	c0de4ba2 <nbgl_stepDrawSwitch+0x42>
c0de4ba0:	2001      	movs	r0, #1
c0de4ba2:	2500      	movs	r5, #0
c0de4ba4:	e000      	b.n	c0de4ba8 <nbgl_stepDrawSwitch+0x48>
c0de4ba6:	2000      	movs	r0, #0
c0de4ba8:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4bac:	a802      	add	r0, sp, #8
c0de4bae:	f7fe ffe3 	bl	c0de3b78 <nbgl_layoutGet>
c0de4bb2:	4641      	mov	r1, r8
c0de4bb4:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4bb6:	f7ff fc55 	bl	c0de4464 <nbgl_layoutAddSwitch>
c0de4bba:	b925      	cbnz	r5, c0de4bc6 <nbgl_stepDrawSwitch+0x66>
c0de4bbc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bbe:	f10d 0106 	add.w	r1, sp, #6
c0de4bc2:	f7ff f83d 	bl	c0de3c40 <nbgl_layoutAddNavigation>
c0de4bc6:	f000 f8c3 	bl	c0de4d50 <OUTLINED_FUNCTION_4>
c0de4bca:	f002 f9e2 	bl	c0de6f92 <nbgl_refresh>
c0de4bce:	4620      	mov	r0, r4
c0de4bd0:	b007      	add	sp, #28
c0de4bd2:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4bd6:	bf00      	nop
c0de4bd8:	fffffe95 	.word	0xfffffe95

c0de4bdc <nbgl_stepRelease>:
c0de4bdc:	b138      	cbz	r0, c0de4bee <nbgl_stepRelease+0x12>
c0de4bde:	b510      	push	{r4, lr}
c0de4be0:	4604      	mov	r4, r0
c0de4be2:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4be4:	f7ff fd3a 	bl	c0de465c <nbgl_layoutRelease>
c0de4be8:	2100      	movs	r1, #0
c0de4bea:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4bec:	bd10      	pop	{r4, pc}
c0de4bee:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4bf2:	4770      	bx	lr

c0de4bf4 <getContextFromLayout>:
c0de4bf4:	4a08      	ldr	r2, [pc, #32]	@ (c0de4c18 <getContextFromLayout+0x24>)
c0de4bf6:	2100      	movs	r1, #0
c0de4bf8:	29d8      	cmp	r1, #216	@ 0xd8
c0de4bfa:	bf04      	itt	eq
c0de4bfc:	2000      	moveq	r0, #0
c0de4bfe:	4770      	bxeq	lr
c0de4c00:	eb09 0302 	add.w	r3, r9, r2
c0de4c04:	440b      	add	r3, r1
c0de4c06:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4c08:	4283      	cmp	r3, r0
c0de4c0a:	d001      	beq.n	c0de4c10 <getContextFromLayout+0x1c>
c0de4c0c:	3148      	adds	r1, #72	@ 0x48
c0de4c0e:	e7f3      	b.n	c0de4bf8 <getContextFromLayout+0x4>
c0de4c10:	eb09 0002 	add.w	r0, r9, r2
c0de4c14:	4408      	add	r0, r1
c0de4c16:	4770      	bx	lr
c0de4c18:	000008b0 	.word	0x000008b0

c0de4c1c <menuListActionCallback>:
c0de4c1c:	b510      	push	{r4, lr}
c0de4c1e:	460c      	mov	r4, r1
c0de4c20:	f7ff ffe8 	bl	c0de4bf4 <getContextFromLayout>
c0de4c24:	b1c8      	cbz	r0, c0de4c5a <menuListActionCallback+0x3e>
c0de4c26:	2c04      	cmp	r4, #4
c0de4c28:	d006      	beq.n	c0de4c38 <menuListActionCallback+0x1c>
c0de4c2a:	2c01      	cmp	r4, #1
c0de4c2c:	d00a      	beq.n	c0de4c44 <menuListActionCallback+0x28>
c0de4c2e:	b9a4      	cbnz	r4, c0de4c5a <menuListActionCallback+0x3e>
c0de4c30:	7a41      	ldrb	r1, [r0, #9]
c0de4c32:	b191      	cbz	r1, c0de4c5a <menuListActionCallback+0x3e>
c0de4c34:	3901      	subs	r1, #1
c0de4c36:	e00b      	b.n	c0de4c50 <menuListActionCallback+0x34>
c0de4c38:	7a41      	ldrb	r1, [r0, #9]
c0de4c3a:	6802      	ldr	r2, [r0, #0]
c0de4c3c:	4608      	mov	r0, r1
c0de4c3e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4c42:	4710      	bx	r2
c0de4c44:	7a02      	ldrb	r2, [r0, #8]
c0de4c46:	7a41      	ldrb	r1, [r0, #9]
c0de4c48:	3a01      	subs	r2, #1
c0de4c4a:	428a      	cmp	r2, r1
c0de4c4c:	dd05      	ble.n	c0de4c5a <menuListActionCallback+0x3e>
c0de4c4e:	3101      	adds	r1, #1
c0de4c50:	7241      	strb	r1, [r0, #9]
c0de4c52:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4c56:	f7ff bf47 	b.w	c0de4ae8 <displayMenuList>
c0de4c5a:	bd10      	pop	{r4, pc}

c0de4c5c <OUTLINED_FUNCTION_0>:
c0de4c5c:	7838      	ldrb	r0, [r7, #0]
c0de4c5e:	7879      	ldrb	r1, [r7, #1]
c0de4c60:	78ba      	ldrb	r2, [r7, #2]
c0de4c62:	78fb      	ldrb	r3, [r7, #3]
c0de4c64:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4c68:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4c6c:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4c70:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4c72:	4638      	mov	r0, r7
c0de4c74:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4c78:	7a79      	ldrb	r1, [r7, #9]
c0de4c7a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4c7e:	7882      	ldrb	r2, [r0, #2]
c0de4c80:	78c3      	ldrb	r3, [r0, #3]
c0de4c82:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4c86:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4c8a:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4c8c:	4639      	mov	r1, r7
c0de4c8e:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de4c92:	797a      	ldrb	r2, [r7, #5]
c0de4c94:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4c98:	788b      	ldrb	r3, [r1, #2]
c0de4c9a:	78cd      	ldrb	r5, [r1, #3]
c0de4c9c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4ca0:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de4ca4:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de4ca6:	783a      	ldrb	r2, [r7, #0]
c0de4ca8:	787b      	ldrb	r3, [r7, #1]
c0de4caa:	78bd      	ldrb	r5, [r7, #2]
c0de4cac:	78fe      	ldrb	r6, [r7, #3]
c0de4cae:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4cb2:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de4cb6:	7803      	ldrb	r3, [r0, #0]
c0de4cb8:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4cbc:	7885      	ldrb	r5, [r0, #2]
c0de4cbe:	78c0      	ldrb	r0, [r0, #3]
c0de4cc0:	9204      	str	r2, [sp, #16]
c0de4cc2:	7a7a      	ldrb	r2, [r7, #9]
c0de4cc4:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4cc8:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4ccc:	788b      	ldrb	r3, [r1, #2]
c0de4cce:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4cd2:	780a      	ldrb	r2, [r1, #0]
c0de4cd4:	78c9      	ldrb	r1, [r1, #3]
c0de4cd6:	9006      	str	r0, [sp, #24]
c0de4cd8:	7978      	ldrb	r0, [r7, #5]
c0de4cda:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4cde:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4ce2:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4ce6:	9005      	str	r0, [sp, #20]
c0de4ce8:	4770      	bx	lr

c0de4cea <OUTLINED_FUNCTION_1>:
c0de4cea:	7838      	ldrb	r0, [r7, #0]
c0de4cec:	7879      	ldrb	r1, [r7, #1]
c0de4cee:	78ba      	ldrb	r2, [r7, #2]
c0de4cf0:	78fb      	ldrb	r3, [r7, #3]
c0de4cf2:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4cf6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4cfa:	4639      	mov	r1, r7
c0de4cfc:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4d00:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4d04:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4d06:	7a78      	ldrb	r0, [r7, #9]
c0de4d08:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4d0c:	788a      	ldrb	r2, [r1, #2]
c0de4d0e:	78c9      	ldrb	r1, [r1, #3]
c0de4d10:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4d14:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4d18:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4d1a:	7978      	ldrb	r0, [r7, #5]
c0de4d1c:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4d20:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4d24:	78b9      	ldrb	r1, [r7, #2]
c0de4d26:	78fa      	ldrb	r2, [r7, #3]
c0de4d28:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4d2c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4d30:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4d32:	4770      	bx	lr

c0de4d34 <OUTLINED_FUNCTION_2>:
c0de4d34:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4d38:	9003      	str	r0, [sp, #12]
c0de4d3a:	2000      	movs	r0, #0
c0de4d3c:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4d40:	2001      	movs	r0, #1
c0de4d42:	f7ff bd19 	b.w	c0de4778 <getFreeContext>

c0de4d46 <OUTLINED_FUNCTION_3>:
c0de4d46:	2114      	movs	r1, #20
c0de4d48:	4698      	mov	r8, r3
c0de4d4a:	4617      	mov	r7, r2
c0de4d4c:	f002 bd44 	b.w	c0de77d8 <__aeabi_memclr>

c0de4d50 <OUTLINED_FUNCTION_4>:
c0de4d50:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4d52:	f7ff bc7b 	b.w	c0de464c <nbgl_layoutDraw>

c0de4d56 <OUTLINED_FUNCTION_5>:
c0de4d56:	2501      	movs	r5, #1
c0de4d58:	f00a 0003 	and.w	r0, sl, #3
c0de4d5c:	2803      	cmp	r0, #3
c0de4d5e:	7025      	strb	r5, [r4, #0]
c0de4d60:	7420      	strb	r0, [r4, #16]
c0de4d62:	4770      	bx	lr

c0de4d64 <nbgl_useCaseHomeAndSettings>:
c0de4d64:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4d68:	4607      	mov	r7, r0
c0de4d6a:	4810      	ldr	r0, [pc, #64]	@ (c0de4dac <nbgl_useCaseHomeAndSettings+0x48>)
c0de4d6c:	f001 fd0d 	bl	c0de678a <OUTLINED_FUNCTION_3>
c0de4d70:	e9c4 760f 	strd	r7, r6, [r4, #60]	@ 0x3c
c0de4d74:	6465      	str	r5, [r4, #68]	@ 0x44
c0de4d76:	9d06      	ldr	r5, [sp, #24]
c0de4d78:	4628      	mov	r0, r5
c0de4d7a:	f002 fb0d 	bl	c0de7398 <pic>
c0de4d7e:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de4d80:	9807      	ldr	r0, [sp, #28]
c0de4d82:	f002 fb09 	bl	c0de7398 <pic>
c0de4d86:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4d88:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4d8c:	6561      	str	r1, [r4, #84]	@ 0x54
c0de4d8e:	9908      	ldr	r1, [sp, #32]
c0de4d90:	e9c4 0113 	strd	r0, r1, [r4, #76]	@ 0x4c
c0de4d94:	bf18      	it	ne
c0de4d96:	2d00      	cmpne	r5, #0
c0de4d98:	d103      	bne.n	c0de4da2 <nbgl_useCaseHomeAndSettings+0x3e>
c0de4d9a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4d9e:	f000 b843 	b.w	c0de4e28 <startUseCaseHome>
c0de4da2:	4640      	mov	r0, r8
c0de4da4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4da8:	f000 b802 	b.w	c0de4db0 <startUseCaseSettingsAtPage>
c0de4dac:	00000988 	.word	0x00000988

c0de4db0 <startUseCaseSettingsAtPage>:
c0de4db0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4db2:	b08f      	sub	sp, #60	@ 0x3c
c0de4db4:	4604      	mov	r4, r0
c0de4db6:	a801      	add	r0, sp, #4
c0de4db8:	2138      	movs	r1, #56	@ 0x38
c0de4dba:	f002 fd0d 	bl	c0de77d8 <__aeabi_memclr>
c0de4dbe:	4e19      	ldr	r6, [pc, #100]	@ (c0de4e24 <startUseCaseSettingsAtPage+0x74>)
c0de4dc0:	eb09 0006 	add.w	r0, r9, r6
c0de4dc4:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de4dc8:	280f      	cmp	r0, #15
c0de4dca:	bf1e      	ittt	ne
c0de4dcc:	eb09 0006 	addne.w	r0, r9, r6
c0de4dd0:	210e      	movne	r1, #14
c0de4dd2:	f880 102c 	strbne.w	r1, [r0, #44]	@ 0x2c
c0de4dd6:	eb09 0006 	add.w	r0, r9, r6
c0de4dda:	2101      	movs	r1, #1
c0de4ddc:	2700      	movs	r7, #0
c0de4dde:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4de2:	ad01      	add	r5, sp, #4
c0de4de4:	eb09 0006 	add.w	r0, r9, r6
c0de4de8:	6c80      	ldr	r0, [r0, #72]	@ 0x48
c0de4dea:	7a01      	ldrb	r1, [r0, #8]
c0de4dec:	428f      	cmp	r7, r1
c0de4dee:	d20e      	bcs.n	c0de4e0e <startUseCaseSettingsAtPage+0x5e>
c0de4df0:	b279      	sxtb	r1, r7
c0de4df2:	462a      	mov	r2, r5
c0de4df4:	f000 fce8 	bl	c0de57c8 <getContentAtIdx>
c0de4df8:	f000 fd40 	bl	c0de587c <getContentNbElement>
c0de4dfc:	eb09 0106 	add.w	r1, r9, r6
c0de4e00:	3701      	adds	r7, #1
c0de4e02:	f891 2034 	ldrb.w	r2, [r1, #52]	@ 0x34
c0de4e06:	4410      	add	r0, r2
c0de4e08:	f881 0034 	strb.w	r0, [r1, #52]	@ 0x34
c0de4e0c:	e7ea      	b.n	c0de4de4 <startUseCaseSettingsAtPage+0x34>
c0de4e0e:	eb09 0006 	add.w	r0, r9, r6
c0de4e12:	2100      	movs	r1, #0
c0de4e14:	f880 4035 	strb.w	r4, [r0, #53]	@ 0x35
c0de4e18:	2000      	movs	r0, #0
c0de4e1a:	f000 ff39 	bl	c0de5c90 <displaySettingsPage>
c0de4e1e:	b00f      	add	sp, #60	@ 0x3c
c0de4e20:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4e22:	bf00      	nop
c0de4e24:	00000988 	.word	0x00000988

c0de4e28 <startUseCaseHome>:
c0de4e28:	b510      	push	{r4, lr}
c0de4e2a:	4821      	ldr	r0, [pc, #132]	@ (c0de4eb0 <startUseCaseHome+0x88>)
c0de4e2c:	eb09 0100 	add.w	r1, r9, r0
c0de4e30:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de4e34:	290d      	cmp	r1, #13
c0de4e36:	d009      	beq.n	c0de4e4c <startUseCaseHome+0x24>
c0de4e38:	290e      	cmp	r1, #14
c0de4e3a:	d114      	bne.n	c0de4e66 <startUseCaseHome+0x3e>
c0de4e3c:	eb09 0100 	add.w	r1, r9, r0
c0de4e40:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de4e42:	2102      	movs	r1, #2
c0de4e44:	2a00      	cmp	r2, #0
c0de4e46:	bf08      	it	eq
c0de4e48:	2101      	moveq	r1, #1
c0de4e4a:	e00d      	b.n	c0de4e68 <startUseCaseHome+0x40>
c0de4e4c:	eb09 0200 	add.w	r2, r9, r0
c0de4e50:	2102      	movs	r1, #2
c0de4e52:	6d14      	ldr	r4, [r2, #80]	@ 0x50
c0de4e54:	6c93      	ldr	r3, [r2, #72]	@ 0x48
c0de4e56:	2c00      	cmp	r4, #0
c0de4e58:	bf08      	it	eq
c0de4e5a:	2101      	moveq	r1, #1
c0de4e5c:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de4e60:	b133      	cbz	r3, c0de4e70 <startUseCaseHome+0x48>
c0de4e62:	3101      	adds	r1, #1
c0de4e64:	e000      	b.n	c0de4e68 <startUseCaseHome+0x40>
c0de4e66:	2100      	movs	r1, #0
c0de4e68:	eb09 0200 	add.w	r2, r9, r0
c0de4e6c:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de4e70:	eb09 0200 	add.w	r2, r9, r0
c0de4e74:	210c      	movs	r1, #12
c0de4e76:	e9d2 3412 	ldrd	r3, r4, [r2, #72]	@ 0x48
c0de4e7a:	f882 102c 	strb.w	r1, [r2, #44]	@ 0x2c
c0de4e7e:	2103      	movs	r1, #3
c0de4e80:	2b00      	cmp	r3, #0
c0de4e82:	bf08      	it	eq
c0de4e84:	2102      	moveq	r1, #2
c0de4e86:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de4e8a:	b124      	cbz	r4, c0de4e96 <startUseCaseHome+0x6e>
c0de4e8c:	3101      	adds	r1, #1
c0de4e8e:	eb09 0200 	add.w	r2, r9, r0
c0de4e92:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de4e96:	eb09 0200 	add.w	r2, r9, r0
c0de4e9a:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de4e9c:	b11a      	cbz	r2, c0de4ea6 <startUseCaseHome+0x7e>
c0de4e9e:	4448      	add	r0, r9
c0de4ea0:	3101      	adds	r1, #1
c0de4ea2:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4ea6:	2000      	movs	r0, #0
c0de4ea8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4eac:	f000 bfe0 	b.w	c0de5e70 <displayHomePage>
c0de4eb0:	00000988 	.word	0x00000988

c0de4eb4 <nbgl_useCaseReview>:
c0de4eb4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4eb6:	4614      	mov	r4, r2
c0de4eb8:	460a      	mov	r2, r1
c0de4eba:	4601      	mov	r1, r0
c0de4ebc:	9808      	ldr	r0, [sp, #32]
c0de4ebe:	9003      	str	r0, [sp, #12]
c0de4ec0:	9807      	ldr	r0, [sp, #28]
c0de4ec2:	9002      	str	r0, [sp, #8]
c0de4ec4:	9806      	ldr	r0, [sp, #24]
c0de4ec6:	e9cd 3000 	strd	r3, r0, [sp]
c0de4eca:	2002      	movs	r0, #2
c0de4ecc:	4623      	mov	r3, r4
c0de4ece:	f000 f801 	bl	c0de4ed4 <useCaseReview>
c0de4ed2:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4ed4 <useCaseReview>:
c0de4ed4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4ed8:	4607      	mov	r7, r0
c0de4eda:	4811      	ldr	r0, [pc, #68]	@ (c0de4f20 <useCaseReview+0x4c>)
c0de4edc:	4688      	mov	r8, r1
c0de4ede:	2140      	movs	r1, #64	@ 0x40
c0de4ee0:	461d      	mov	r5, r3
c0de4ee2:	4614      	mov	r4, r2
c0de4ee4:	f001 fc4b 	bl	c0de677e <OUTLINED_FUNCTION_2>
c0de4ee8:	9808      	ldr	r0, [sp, #32]
c0de4eea:	6530      	str	r0, [r6, #80]	@ 0x50
c0de4eec:	9807      	ldr	r0, [sp, #28]
c0de4eee:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4ef0:	9906      	ldr	r1, [sp, #24]
c0de4ef2:	e9c6 4510 	strd	r4, r5, [r6, #64]	@ 0x40
c0de4ef6:	64b1      	str	r1, [r6, #72]	@ 0x48
c0de4ef8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4efa:	f8c6 8030 	str.w	r8, [r6, #48]	@ 0x30
c0de4efe:	f886 702c 	strb.w	r7, [r6, #44]	@ 0x2c
c0de4f02:	63f1      	str	r1, [r6, #60]	@ 0x3c
c0de4f04:	2104      	movs	r1, #4
c0de4f06:	2800      	cmp	r0, #0
c0de4f08:	bf08      	it	eq
c0de4f0a:	2103      	moveq	r1, #3
c0de4f0c:	7a20      	ldrb	r0, [r4, #8]
c0de4f0e:	4408      	add	r0, r1
c0de4f10:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de4f14:	2000      	movs	r0, #0
c0de4f16:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4f1a:	f000 b8d1 	b.w	c0de50c0 <displayReviewPage>
c0de4f1e:	bf00      	nop
c0de4f20:	00000988 	.word	0x00000988

c0de4f24 <nbgl_useCaseAdvancedReview>:
c0de4f24:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4f28:	b088      	sub	sp, #32
c0de4f2a:	4617      	mov	r7, r2
c0de4f2c:	460a      	mov	r2, r1
c0de4f2e:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4f32:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	@ 0x40
c0de4f36:	4606      	mov	r6, r0
c0de4f38:	f1ba 0f00 	cmp.w	sl, #0
c0de4f3c:	d013      	beq.n	c0de4f66 <nbgl_useCaseAdvancedReview+0x42>
c0de4f3e:	f8da 0000 	ldr.w	r0, [sl]
c0de4f42:	9107      	str	r1, [sp, #28]
c0de4f44:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de4f48:	2808      	cmp	r0, #8
c0de4f4a:	d018      	beq.n	c0de4f7e <nbgl_useCaseAdvancedReview+0x5a>
c0de4f4c:	b9e0      	cbnz	r0, c0de4f88 <nbgl_useCaseAdvancedReview+0x64>
c0de4f4e:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4f52:	b928      	cbnz	r0, c0de4f60 <nbgl_useCaseAdvancedReview+0x3c>
c0de4f54:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4f58:	b910      	cbnz	r0, c0de4f60 <nbgl_useCaseAdvancedReview+0x3c>
c0de4f5a:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de4f5e:	b110      	cbz	r0, c0de4f66 <nbgl_useCaseAdvancedReview+0x42>
c0de4f60:	4698      	mov	r8, r3
c0de4f62:	4615      	mov	r5, r2
c0de4f64:	e014      	b.n	c0de4f90 <nbgl_useCaseAdvancedReview+0x6c>
c0de4f66:	e9cd 3500 	strd	r3, r5, [sp]
c0de4f6a:	e9cd 4102 	strd	r4, r1, [sp, #8]
c0de4f6e:	2002      	movs	r0, #2
c0de4f70:	4631      	mov	r1, r6
c0de4f72:	463b      	mov	r3, r7
c0de4f74:	f7ff ffae 	bl	c0de4ed4 <useCaseReview>
c0de4f78:	b008      	add	sp, #32
c0de4f7a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4f7e:	4698      	mov	r8, r3
c0de4f80:	4615      	mov	r5, r2
c0de4f82:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de4f86:	e003      	b.n	c0de4f90 <nbgl_useCaseAdvancedReview+0x6c>
c0de4f88:	4698      	mov	r8, r3
c0de4f8a:	4615      	mov	r5, r2
c0de4f8c:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de4f90:	f8df b06c 	ldr.w	fp, [pc, #108]	@ c0de5000 <nbgl_useCaseAdvancedReview+0xdc>
c0de4f94:	212c      	movs	r1, #44	@ 0x2c
c0de4f96:	eb09 040b 	add.w	r4, r9, fp
c0de4f9a:	4620      	mov	r0, r4
c0de4f9c:	f002 fc1c 	bl	c0de77d8 <__aeabi_memclr>
c0de4fa0:	2002      	movs	r0, #2
c0de4fa2:	462a      	mov	r2, r5
c0de4fa4:	60a5      	str	r5, [r4, #8]
c0de4fa6:	9d06      	ldr	r5, [sp, #24]
c0de4fa8:	463b      	mov	r3, r7
c0de4faa:	60e7      	str	r7, [r4, #12]
c0de4fac:	9f05      	ldr	r7, [sp, #20]
c0de4fae:	4641      	mov	r1, r8
c0de4fb0:	f8c4 8010 	str.w	r8, [r4, #16]
c0de4fb4:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de4fb8:	6066      	str	r6, [r4, #4]
c0de4fba:	f809 000b 	strb.w	r0, [r9, fp]
c0de4fbe:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de4fc2:	6167      	str	r7, [r4, #20]
c0de4fc4:	e9c4 5a06 	strd	r5, sl, [r4, #24]
c0de4fc8:	f8c4 8020 	str.w	r8, [r4, #32]
c0de4fcc:	b120      	cbz	r0, c0de4fd8 <nbgl_useCaseAdvancedReview+0xb4>
c0de4fce:	b008      	add	sp, #32
c0de4fd0:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4fd4:	f000 b816 	b.w	c0de5004 <displayPrelude>
c0de4fd8:	f89a 0000 	ldrb.w	r0, [sl]
c0de4fdc:	f010 0f16 	tst.w	r0, #22
c0de4fe0:	d102      	bne.n	c0de4fe8 <nbgl_useCaseAdvancedReview+0xc4>
c0de4fe2:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4fe6:	b120      	cbz	r0, c0de4ff2 <nbgl_useCaseAdvancedReview+0xce>
c0de4fe8:	b008      	add	sp, #32
c0de4fea:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4fee:	f000 b815 	b.w	c0de501c <displayInitialWarning>
c0de4ff2:	e9cd 1700 	strd	r1, r7, [sp]
c0de4ff6:	2002      	movs	r0, #2
c0de4ff8:	4631      	mov	r1, r6
c0de4ffa:	e9cd 5802 	strd	r5, r8, [sp, #8]
c0de4ffe:	e7b9      	b.n	c0de4f74 <nbgl_useCaseAdvancedReview+0x50>
c0de5000:	00000988 	.word	0x00000988

c0de5004 <displayPrelude>:
c0de5004:	4804      	ldr	r0, [pc, #16]	@ (c0de5018 <displayPrelude+0x14>)
c0de5006:	2101      	movs	r1, #1
c0de5008:	4448      	add	r0, r9
c0de500a:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de500e:	f44f 7140 	mov.w	r1, #768	@ 0x300
c0de5012:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de5014:	f001 b818 	b.w	c0de6048 <displayWarningStep>
c0de5018:	00000988 	.word	0x00000988

c0de501c <displayInitialWarning>:
c0de501c:	4804      	ldr	r0, [pc, #16]	@ (c0de5030 <displayInitialWarning+0x14>)
c0de501e:	2100      	movs	r1, #0
c0de5020:	4448      	add	r0, r9
c0de5022:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5026:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de502a:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de502c:	f001 b80c 	b.w	c0de6048 <displayWarningStep>
c0de5030:	00000988 	.word	0x00000988

c0de5034 <nbgl_useCaseReviewBlindSigning>:
c0de5034:	b5b0      	push	{r4, r5, r7, lr}
c0de5036:	b086      	sub	sp, #24
c0de5038:	4d06      	ldr	r5, [pc, #24]	@ (c0de5054 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de503a:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de503c:	447d      	add	r5, pc
c0de503e:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de5042:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de5044:	9401      	str	r4, [sp, #4]
c0de5046:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de5048:	9400      	str	r4, [sp, #0]
c0de504a:	f7ff ff6b 	bl	c0de4f24 <nbgl_useCaseAdvancedReview>
c0de504e:	b006      	add	sp, #24
c0de5050:	bdb0      	pop	{r4, r5, r7, pc}
c0de5052:	bf00      	nop
c0de5054:	00003c64 	.word	0x00003c64

c0de5058 <nbgl_useCaseAddressReview>:
c0de5058:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de505c:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de50bc <nbgl_useCaseAddressReview+0x64>
c0de5060:	460c      	mov	r4, r1
c0de5062:	4607      	mov	r7, r0
c0de5064:	2140      	movs	r1, #64	@ 0x40
c0de5066:	469a      	mov	sl, r3
c0de5068:	4616      	mov	r6, r2
c0de506a:	eb09 0508 	add.w	r5, r9, r8
c0de506e:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de5072:	f002 fbb1 	bl	c0de77d8 <__aeabi_memclr>
c0de5076:	2004      	movs	r0, #4
c0de5078:	656f      	str	r7, [r5, #84]	@ 0x54
c0de507a:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de507e:	9808      	ldr	r0, [sp, #32]
c0de5080:	e9c5 6a11 	strd	r6, sl, [r5, #68]	@ 0x44
c0de5084:	64e8      	str	r0, [r5, #76]	@ 0x4c
c0de5086:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5088:	63e9      	str	r1, [r5, #60]	@ 0x3c
c0de508a:	2105      	movs	r1, #5
c0de508c:	2800      	cmp	r0, #0
c0de508e:	bf08      	it	eq
c0de5090:	2104      	moveq	r1, #4
c0de5092:	f885 1034 	strb.w	r1, [r5, #52]	@ 0x34
c0de5096:	b15c      	cbz	r4, c0de50b0 <nbgl_useCaseAddressReview+0x58>
c0de5098:	4620      	mov	r0, r4
c0de509a:	eb09 0508 	add.w	r5, r9, r8
c0de509e:	f002 f97b 	bl	c0de7398 <pic>
c0de50a2:	6428      	str	r0, [r5, #64]	@ 0x40
c0de50a4:	f895 0034 	ldrb.w	r0, [r5, #52]	@ 0x34
c0de50a8:	7a21      	ldrb	r1, [r4, #8]
c0de50aa:	4408      	add	r0, r1
c0de50ac:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de50b0:	2000      	movs	r0, #0
c0de50b2:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de50b6:	f000 b803 	b.w	c0de50c0 <displayReviewPage>
c0de50ba:	bf00      	nop
c0de50bc:	00000988 	.word	0x00000988

c0de50c0 <displayReviewPage>:
c0de50c0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de50c2:	b08b      	sub	sp, #44	@ 0x2c
c0de50c4:	4e5d      	ldr	r6, [pc, #372]	@ (c0de523c <displayReviewPage+0x17c>)
c0de50c6:	4604      	mov	r4, r0
c0de50c8:	2000      	movs	r0, #0
c0de50ca:	2201      	movs	r2, #1
c0de50cc:	2702      	movs	r7, #2
c0de50ce:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de50d2:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de50d6:	eb09 0306 	add.w	r3, r9, r6
c0de50da:	6398      	str	r0, [r3, #56]	@ 0x38
c0de50dc:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
c0de50de:	2800      	cmp	r0, #0
c0de50e0:	bf08      	it	eq
c0de50e2:	22ff      	moveq	r2, #255	@ 0xff
c0de50e4:	bf08      	it	eq
c0de50e6:	2701      	moveq	r7, #1
c0de50e8:	f993 1035 	ldrsb.w	r1, [r3, #53]	@ 0x35
c0de50ec:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
c0de50f0:	1e9d      	subs	r5, r3, #2
c0de50f2:	b2ed      	uxtb	r5, r5
c0de50f4:	42a9      	cmp	r1, r5
c0de50f6:	da06      	bge.n	c0de5106 <displayReviewPage+0x46>
c0de50f8:	42b9      	cmp	r1, r7
c0de50fa:	da0b      	bge.n	c0de5114 <displayReviewPage+0x54>
c0de50fc:	2900      	cmp	r1, #0
c0de50fe:	d041      	beq.n	c0de5184 <displayReviewPage+0xc4>
c0de5100:	428a      	cmp	r2, r1
c0de5102:	d044      	beq.n	c0de518e <displayReviewPage+0xce>
c0de5104:	e044      	b.n	c0de5190 <displayReviewPage+0xd0>
c0de5106:	d110      	bne.n	c0de512a <displayReviewPage+0x6a>
c0de5108:	a908      	add	r1, sp, #32
c0de510a:	aa0a      	add	r2, sp, #40	@ 0x28
c0de510c:	2001      	movs	r0, #1
c0de510e:	f001 f867 	bl	c0de61e0 <getLastPageInfo>
c0de5112:	e03d      	b.n	c0de5190 <displayReviewPage+0xd0>
c0de5114:	eb09 0006 	add.w	r0, r9, r6
c0de5118:	6d45      	ldr	r5, [r0, #84]	@ 0x54
c0de511a:	b18d      	cbz	r5, c0de5140 <displayReviewPage+0x80>
c0de511c:	42b9      	cmp	r1, r7
c0de511e:	d10f      	bne.n	c0de5140 <displayReviewPage+0x80>
c0de5120:	9509      	str	r5, [sp, #36]	@ 0x24
c0de5122:	4847      	ldr	r0, [pc, #284]	@ (c0de5240 <displayReviewPage+0x180>)
c0de5124:	4478      	add	r0, pc
c0de5126:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5128:	e033      	b.n	c0de5192 <displayReviewPage+0xd2>
c0de512a:	1e58      	subs	r0, r3, #1
c0de512c:	b2c0      	uxtb	r0, r0
c0de512e:	4281      	cmp	r1, r0
c0de5130:	d12e      	bne.n	c0de5190 <displayReviewPage+0xd0>
c0de5132:	a908      	add	r1, sp, #32
c0de5134:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5136:	2000      	movs	r0, #0
c0de5138:	2500      	movs	r5, #0
c0de513a:	f001 f851 	bl	c0de61e0 <getLastPageInfo>
c0de513e:	e028      	b.n	c0de5192 <displayReviewPage+0xd2>
c0de5140:	eb09 0006 	add.w	r0, r9, r6
c0de5144:	f890 2030 	ldrb.w	r2, [r0, #48]	@ 0x30
c0de5148:	06d2      	lsls	r2, r2, #27
c0de514a:	d535      	bpl.n	c0de51b8 <displayReviewPage+0xf8>
c0de514c:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de5150:	bb90      	cbnz	r0, c0de51b8 <displayReviewPage+0xf8>
c0de5152:	42b9      	cmp	r1, r7
c0de5154:	dc05      	bgt.n	c0de5162 <displayReviewPage+0xa2>
c0de5156:	eb09 0006 	add.w	r0, r9, r6
c0de515a:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de515e:	2808      	cmp	r0, #8
c0de5160:	d12a      	bne.n	c0de51b8 <displayReviewPage+0xf8>
c0de5162:	2000      	movs	r0, #0
c0de5164:	9006      	str	r0, [sp, #24]
c0de5166:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de516a:	eb09 0006 	add.w	r0, r9, r6
c0de516e:	f890 205c 	ldrb.w	r2, [r0, #92]	@ 0x5c
c0de5172:	f004 0008 	and.w	r0, r4, #8
c0de5176:	2a01      	cmp	r2, #1
c0de5178:	d001      	beq.n	c0de517e <displayReviewPage+0xbe>
c0de517a:	2901      	cmp	r1, #1
c0de517c:	db43      	blt.n	c0de5206 <displayReviewPage+0x146>
c0de517e:	f040 0003 	orr.w	r0, r0, #3
c0de5182:	e042      	b.n	c0de520a <displayReviewPage+0x14a>
c0de5184:	eb09 0006 	add.w	r0, r9, r6
c0de5188:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de518c:	9108      	str	r1, [sp, #32]
c0de518e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5190:	2500      	movs	r5, #0
c0de5192:	2000      	movs	r0, #0
c0de5194:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de5196:	9908      	ldr	r1, [sp, #32]
c0de5198:	4e2e      	ldr	r6, [pc, #184]	@ (c0de5254 <displayReviewPage+0x194>)
c0de519a:	b2c0      	uxtb	r0, r0
c0de519c:	2300      	movs	r3, #0
c0de519e:	9002      	str	r0, [sp, #8]
c0de51a0:	4620      	mov	r0, r4
c0de51a2:	447e      	add	r6, pc
c0de51a4:	e9cd 6300 	strd	r6, r3, [sp]
c0de51a8:	462b      	mov	r3, r5
c0de51aa:	f000 f875 	bl	c0de5298 <drawStep>
c0de51ae:	b00b      	add	sp, #44	@ 0x2c
c0de51b0:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de51b4:	f001 beed 	b.w	c0de6f92 <nbgl_refresh>
c0de51b8:	2200      	movs	r2, #0
c0de51ba:	eb09 0006 	add.w	r0, r9, r6
c0de51be:	1bcf      	subs	r7, r1, r7
c0de51c0:	f10d 0c0c 	add.w	ip, sp, #12
c0de51c4:	f880 205d 	strb.w	r2, [r0, #93]	@ 0x5d
c0de51c8:	f88d 200c 	strb.w	r2, [sp, #12]
c0de51cc:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de51ce:	ab08      	add	r3, sp, #32
c0de51d0:	aa07      	add	r2, sp, #28
c0de51d2:	2d00      	cmp	r5, #0
c0de51d4:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de51d8:	bf18      	it	ne
c0de51da:	3f01      	subne	r7, #1
c0de51dc:	aa0a      	add	r2, sp, #40	@ 0x28
c0de51de:	b2f9      	uxtb	r1, r7
c0de51e0:	ab09      	add	r3, sp, #36	@ 0x24
c0de51e2:	f000 fcd9 	bl	c0de5b98 <getPairData>
c0de51e6:	9807      	ldr	r0, [sp, #28]
c0de51e8:	b140      	cbz	r0, c0de51fc <displayReviewPage+0x13c>
c0de51ea:	eb09 0006 	add.w	r0, r9, r6
c0de51ee:	f880 705f 	strb.w	r7, [r0, #95]	@ 0x5f
c0de51f2:	4917      	ldr	r1, [pc, #92]	@ (c0de5250 <displayReviewPage+0x190>)
c0de51f4:	4479      	add	r1, pc
c0de51f6:	6381      	str	r1, [r0, #56]	@ 0x38
c0de51f8:	2001      	movs	r0, #1
c0de51fa:	e002      	b.n	c0de5202 <displayReviewPage+0x142>
c0de51fc:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de5200:	0040      	lsls	r0, r0, #1
c0de5202:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de5204:	e7c6      	b.n	c0de5194 <displayReviewPage+0xd4>
c0de5206:	f040 0001 	orr.w	r0, r0, #1
c0de520a:	490e      	ldr	r1, [pc, #56]	@ (c0de5244 <displayReviewPage+0x184>)
c0de520c:	2200      	movs	r2, #0
c0de520e:	4479      	add	r1, pc
c0de5210:	9103      	str	r1, [sp, #12]
c0de5212:	490d      	ldr	r1, [pc, #52]	@ (c0de5248 <displayReviewPage+0x188>)
c0de5214:	4479      	add	r1, pc
c0de5216:	9105      	str	r1, [sp, #20]
c0de5218:	2100      	movs	r1, #0
c0de521a:	9100      	str	r1, [sp, #0]
c0de521c:	490b      	ldr	r1, [pc, #44]	@ (c0de524c <displayReviewPage+0x18c>)
c0de521e:	ab03      	add	r3, sp, #12
c0de5220:	4479      	add	r1, pc
c0de5222:	f7ff fbb5 	bl	c0de4990 <nbgl_stepDrawCenteredInfo>
c0de5226:	eb09 0406 	add.w	r4, r9, r6
c0de522a:	f001 feb2 	bl	c0de6f92 <nbgl_refresh>
c0de522e:	2001      	movs	r0, #1
c0de5230:	f884 7036 	strb.w	r7, [r4, #54]	@ 0x36
c0de5234:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de5238:	b00b      	add	sp, #44	@ 0x2c
c0de523a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de523c:	00000988 	.word	0x00000988
c0de5240:	00002b61 	.word	0x00002b61
c0de5244:	0000284f 	.word	0x0000284f
c0de5248:	000026a0 	.word	0x000026a0
c0de524c:	00001145 	.word	0x00001145
c0de5250:	00001229 	.word	0x00001229
c0de5254:	000012ef 	.word	0x000012ef

c0de5258 <nbgl_useCaseStatus>:
c0de5258:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de525a:	4605      	mov	r5, r0
c0de525c:	480c      	ldr	r0, [pc, #48]	@ (c0de5290 <nbgl_useCaseStatus+0x38>)
c0de525e:	2140      	movs	r1, #64	@ 0x40
c0de5260:	4614      	mov	r4, r2
c0de5262:	f001 fa8c 	bl	c0de677e <OUTLINED_FUNCTION_2>
c0de5266:	2009      	movs	r0, #9
c0de5268:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de526a:	462a      	mov	r2, r5
c0de526c:	2300      	movs	r3, #0
c0de526e:	f886 002c 	strb.w	r0, [r6, #44]	@ 0x2c
c0de5272:	2001      	movs	r0, #1
c0de5274:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de5278:	2000      	movs	r0, #0
c0de527a:	4906      	ldr	r1, [pc, #24]	@ (c0de5294 <nbgl_useCaseStatus+0x3c>)
c0de527c:	9002      	str	r0, [sp, #8]
c0de527e:	4479      	add	r1, pc
c0de5280:	e9cd 1000 	strd	r1, r0, [sp]
c0de5284:	2040      	movs	r0, #64	@ 0x40
c0de5286:	2100      	movs	r1, #0
c0de5288:	f000 f806 	bl	c0de5298 <drawStep>
c0de528c:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de528e:	bf00      	nop
c0de5290:	00000988 	.word	0x00000988
c0de5294:	0000019f 	.word	0x0000019f

c0de5298 <drawStep>:
c0de5298:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de529c:	b09a      	sub	sp, #104	@ 0x68
c0de529e:	4688      	mov	r8, r1
c0de52a0:	4604      	mov	r4, r0
c0de52a2:	a80c      	add	r0, sp, #48	@ 0x30
c0de52a4:	2138      	movs	r1, #56	@ 0x38
c0de52a6:	461d      	mov	r5, r3
c0de52a8:	4616      	mov	r6, r2
c0de52aa:	f002 fa95 	bl	c0de77d8 <__aeabi_memclr>
c0de52ae:	2700      	movs	r7, #0
c0de52b0:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de52b4:	4856      	ldr	r0, [pc, #344]	@ (c0de5410 <drawStep+0x178>)
c0de52b6:	4478      	add	r0, pc
c0de52b8:	f002 f86e 	bl	c0de7398 <pic>
c0de52bc:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de540c <drawStep+0x174>
c0de52c0:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de52c4:	9709      	str	r7, [sp, #36]	@ 0x24
c0de52c6:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de52ca:	eb09 000b 	add.w	r0, r9, fp
c0de52ce:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de52d2:	2802      	cmp	r0, #2
c0de52d4:	d30b      	bcc.n	c0de52ee <drawStep+0x56>
c0de52d6:	eb09 010b 	add.w	r1, r9, fp
c0de52da:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de52de:	b129      	cbz	r1, c0de52ec <drawStep+0x54>
c0de52e0:	3801      	subs	r0, #1
c0de52e2:	2703      	movs	r7, #3
c0de52e4:	4288      	cmp	r0, r1
c0de52e6:	bf08      	it	eq
c0de52e8:	2702      	moveq	r7, #2
c0de52ea:	e000      	b.n	c0de52ee <drawStep+0x56>
c0de52ec:	2701      	movs	r7, #1
c0de52ee:	eb09 000b 	add.w	r0, r9, fp
c0de52f2:	ea47 0204 	orr.w	r2, r7, r4
c0de52f6:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de52fa:	4614      	mov	r4, r2
c0de52fc:	2901      	cmp	r1, #1
c0de52fe:	bf88      	it	hi
c0de5300:	f044 0402 	orrhi.w	r4, r4, #2
c0de5304:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de5306:	2900      	cmp	r1, #0
c0de5308:	bf08      	it	eq
c0de530a:	4614      	moveq	r4, r2
c0de530c:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5310:	2806      	cmp	r0, #6
c0de5312:	f040 0108 	orr.w	r1, r0, #8
c0de5316:	bf18      	it	ne
c0de5318:	4614      	movne	r4, r2
c0de531a:	2909      	cmp	r1, #9
c0de531c:	bf0c      	ite	eq
c0de531e:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de5322:	f04f 0a00 	movne.w	sl, #0
c0de5326:	280a      	cmp	r0, #10
c0de5328:	d105      	bne.n	c0de5336 <drawStep+0x9e>
c0de532a:	eb09 000b 	add.w	r0, r9, fp
c0de532e:	6d00      	ldr	r0, [r0, #80]	@ 0x50
c0de5330:	b108      	cbz	r0, c0de5336 <drawStep+0x9e>
c0de5332:	f7ff fc53 	bl	c0de4bdc <nbgl_stepRelease>
c0de5336:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de5338:	b1b6      	cbz	r6, c0de5368 <drawStep+0xd0>
c0de533a:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de533c:	f1b8 0f00 	cmp.w	r8, #0
c0de5340:	d12c      	bne.n	c0de539c <drawStep+0x104>
c0de5342:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de5344:	2802      	cmp	r0, #2
c0de5346:	d029      	beq.n	c0de539c <drawStep+0x104>
c0de5348:	2201      	movs	r2, #1
c0de534a:	4633      	mov	r3, r6
c0de534c:	2801      	cmp	r0, #1
c0de534e:	bf08      	it	eq
c0de5350:	2202      	moveq	r2, #2
c0de5352:	4620      	mov	r0, r4
c0de5354:	2d00      	cmp	r5, #0
c0de5356:	bf08      	it	eq
c0de5358:	462a      	moveq	r2, r5
c0de535a:	e9cd 5200 	strd	r5, r2, [sp]
c0de535e:	9702      	str	r7, [sp, #8]
c0de5360:	4652      	mov	r2, sl
c0de5362:	f7ff f9cf 	bl	c0de4704 <nbgl_stepDrawText>
c0de5366:	e043      	b.n	c0de53f0 <drawStep+0x158>
c0de5368:	eb09 000b 	add.w	r0, r9, fp
c0de536c:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5370:	a903      	add	r1, sp, #12
c0de5372:	aa0c      	add	r2, sp, #48	@ 0x30
c0de5374:	f000 fbcc 	bl	c0de5b10 <getContentElemAtIdx>
c0de5378:	b330      	cbz	r0, c0de53c8 <drawStep+0x130>
c0de537a:	7801      	ldrb	r1, [r0, #0]
c0de537c:	2400      	movs	r4, #0
c0de537e:	290a      	cmp	r1, #10
c0de5380:	d024      	beq.n	c0de53cc <drawStep+0x134>
c0de5382:	2909      	cmp	r1, #9
c0de5384:	d135      	bne.n	c0de53f2 <drawStep+0x15a>
c0de5386:	f001 fa0e 	bl	c0de67a6 <OUTLINED_FUNCTION_5>
c0de538a:	4922      	ldr	r1, [pc, #136]	@ (c0de5414 <drawStep+0x17c>)
c0de538c:	4479      	add	r1, pc
c0de538e:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5390:	7941      	ldrb	r1, [r0, #5]
c0de5392:	7980      	ldrb	r0, [r0, #6]
c0de5394:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de5398:	1c48      	adds	r0, r1, #1
c0de539a:	e020      	b.n	c0de53de <drawStep+0x146>
c0de539c:	2000      	movs	r0, #0
c0de539e:	9603      	str	r6, [sp, #12]
c0de53a0:	f8cd 8014 	str.w	r8, [sp, #20]
c0de53a4:	9504      	str	r5, [sp, #16]
c0de53a6:	4652      	mov	r2, sl
c0de53a8:	f88d 0018 	strb.w	r0, [sp, #24]
c0de53ac:	eb09 000b 	add.w	r0, r9, fp
c0de53b0:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de53b2:	4328      	orrs	r0, r5
c0de53b4:	bf18      	it	ne
c0de53b6:	2001      	movne	r0, #1
c0de53b8:	f88d 0019 	strb.w	r0, [sp, #25]
c0de53bc:	9700      	str	r7, [sp, #0]
c0de53be:	ab03      	add	r3, sp, #12
c0de53c0:	4620      	mov	r0, r4
c0de53c2:	f7ff fae5 	bl	c0de4990 <nbgl_stepDrawCenteredInfo>
c0de53c6:	e013      	b.n	c0de53f0 <drawStep+0x158>
c0de53c8:	2400      	movs	r4, #0
c0de53ca:	e012      	b.n	c0de53f2 <drawStep+0x15a>
c0de53cc:	f001 f9eb 	bl	c0de67a6 <OUTLINED_FUNCTION_5>
c0de53d0:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de53d4:	4910      	ldr	r1, [pc, #64]	@ (c0de5418 <drawStep+0x180>)
c0de53d6:	7a00      	ldrb	r0, [r0, #8]
c0de53d8:	4479      	add	r1, pc
c0de53da:	3001      	adds	r0, #1
c0de53dc:	910a      	str	r1, [sp, #40]	@ 0x28
c0de53de:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de53e2:	4651      	mov	r1, sl
c0de53e4:	463b      	mov	r3, r7
c0de53e6:	480d      	ldr	r0, [pc, #52]	@ (c0de541c <drawStep+0x184>)
c0de53e8:	aa0a      	add	r2, sp, #40	@ 0x28
c0de53ea:	4478      	add	r0, pc
c0de53ec:	f7ff fb60 	bl	c0de4ab0 <nbgl_stepDrawMenuList>
c0de53f0:	4604      	mov	r4, r0
c0de53f2:	eb09 000b 	add.w	r0, r9, fp
c0de53f6:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de53fa:	280a      	cmp	r0, #10
c0de53fc:	bf04      	itt	eq
c0de53fe:	eb09 000b 	addeq.w	r0, r9, fp
c0de5402:	6504      	streq	r4, [r0, #80]	@ 0x50
c0de5404:	b01a      	add	sp, #104	@ 0x68
c0de5406:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de540a:	bf00      	nop
c0de540c:	00000988 	.word	0x00000988
c0de5410:	00001367 	.word	0x00001367
c0de5414:	000012a1 	.word	0x000012a1
c0de5418:	00001255 	.word	0x00001255
c0de541c:	000012a7 	.word	0x000012a7

c0de5420 <statusButtonCallback>:
c0de5420:	f041 0004 	orr.w	r0, r1, #4
c0de5424:	2804      	cmp	r0, #4
c0de5426:	d001      	beq.n	c0de542c <statusButtonCallback+0xc>
c0de5428:	2901      	cmp	r1, #1
c0de542a:	d104      	bne.n	c0de5436 <statusButtonCallback+0x16>
c0de542c:	4802      	ldr	r0, [pc, #8]	@ (c0de5438 <statusButtonCallback+0x18>)
c0de542e:	4448      	add	r0, r9
c0de5430:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de5432:	b100      	cbz	r0, c0de5436 <statusButtonCallback+0x16>
c0de5434:	4700      	bx	r0
c0de5436:	4770      	bx	lr
c0de5438:	00000988 	.word	0x00000988

c0de543c <nbgl_useCaseReviewStatus>:
c0de543c:	460a      	mov	r2, r1
c0de543e:	b198      	cbz	r0, c0de5468 <nbgl_useCaseReviewStatus+0x2c>
c0de5440:	2801      	cmp	r0, #1
c0de5442:	d016      	beq.n	c0de5472 <nbgl_useCaseReviewStatus+0x36>
c0de5444:	2802      	cmp	r0, #2
c0de5446:	d019      	beq.n	c0de547c <nbgl_useCaseReviewStatus+0x40>
c0de5448:	2803      	cmp	r0, #3
c0de544a:	d01c      	beq.n	c0de5486 <nbgl_useCaseReviewStatus+0x4a>
c0de544c:	2804      	cmp	r0, #4
c0de544e:	d01f      	beq.n	c0de5490 <nbgl_useCaseReviewStatus+0x54>
c0de5450:	2807      	cmp	r0, #7
c0de5452:	d022      	beq.n	c0de549a <nbgl_useCaseReviewStatus+0x5e>
c0de5454:	2806      	cmp	r0, #6
c0de5456:	d025      	beq.n	c0de54a4 <nbgl_useCaseReviewStatus+0x68>
c0de5458:	2805      	cmp	r0, #5
c0de545a:	bf18      	it	ne
c0de545c:	4770      	bxne	lr
c0de545e:	4815      	ldr	r0, [pc, #84]	@ (c0de54b4 <nbgl_useCaseReviewStatus+0x78>)
c0de5460:	2100      	movs	r1, #0
c0de5462:	4478      	add	r0, pc
c0de5464:	f7ff bef8 	b.w	c0de5258 <nbgl_useCaseStatus>
c0de5468:	4813      	ldr	r0, [pc, #76]	@ (c0de54b8 <nbgl_useCaseReviewStatus+0x7c>)
c0de546a:	2101      	movs	r1, #1
c0de546c:	4478      	add	r0, pc
c0de546e:	f7ff bef3 	b.w	c0de5258 <nbgl_useCaseStatus>
c0de5472:	4812      	ldr	r0, [pc, #72]	@ (c0de54bc <nbgl_useCaseReviewStatus+0x80>)
c0de5474:	2100      	movs	r1, #0
c0de5476:	4478      	add	r0, pc
c0de5478:	f7ff beee 	b.w	c0de5258 <nbgl_useCaseStatus>
c0de547c:	4810      	ldr	r0, [pc, #64]	@ (c0de54c0 <nbgl_useCaseReviewStatus+0x84>)
c0de547e:	2101      	movs	r1, #1
c0de5480:	4478      	add	r0, pc
c0de5482:	f7ff bee9 	b.w	c0de5258 <nbgl_useCaseStatus>
c0de5486:	480f      	ldr	r0, [pc, #60]	@ (c0de54c4 <nbgl_useCaseReviewStatus+0x88>)
c0de5488:	2100      	movs	r1, #0
c0de548a:	4478      	add	r0, pc
c0de548c:	f7ff bee4 	b.w	c0de5258 <nbgl_useCaseStatus>
c0de5490:	4807      	ldr	r0, [pc, #28]	@ (c0de54b0 <nbgl_useCaseReviewStatus+0x74>)
c0de5492:	2101      	movs	r1, #1
c0de5494:	4478      	add	r0, pc
c0de5496:	f7ff bedf 	b.w	c0de5258 <nbgl_useCaseStatus>
c0de549a:	480c      	ldr	r0, [pc, #48]	@ (c0de54cc <nbgl_useCaseReviewStatus+0x90>)
c0de549c:	2100      	movs	r1, #0
c0de549e:	4478      	add	r0, pc
c0de54a0:	f7ff beda 	b.w	c0de5258 <nbgl_useCaseStatus>
c0de54a4:	4808      	ldr	r0, [pc, #32]	@ (c0de54c8 <nbgl_useCaseReviewStatus+0x8c>)
c0de54a6:	2101      	movs	r1, #1
c0de54a8:	4478      	add	r0, pc
c0de54aa:	f7ff bed5 	b.w	c0de5258 <nbgl_useCaseStatus>
c0de54ae:	bf00      	nop
c0de54b0:	00002594 	.word	0x00002594
c0de54b4:	000025e8 	.word	0x000025e8
c0de54b8:	00002670 	.word	0x00002670
c0de54bc:	0000283c 	.word	0x0000283c
c0de54c0:	000026cf 	.word	0x000026cf
c0de54c4:	000027d4 	.word	0x000027d4
c0de54c8:	000025f4 	.word	0x000025f4
c0de54cc:	0000272e 	.word	0x0000272e

c0de54d0 <displayStreamingReviewPage>:
c0de54d0:	b570      	push	{r4, r5, r6, lr}
c0de54d2:	b08c      	sub	sp, #48	@ 0x30
c0de54d4:	4d5a      	ldr	r5, [pc, #360]	@ (c0de5640 <displayStreamingReviewPage+0x170>)
c0de54d6:	2100      	movs	r1, #0
c0de54d8:	4604      	mov	r4, r0
c0de54da:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de54de:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de54e2:	eb09 0005 	add.w	r0, r9, r5
c0de54e6:	6381      	str	r1, [r0, #56]	@ 0x38
c0de54e8:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de54ec:	2806      	cmp	r0, #6
c0de54ee:	d015      	beq.n	c0de551c <displayStreamingReviewPage+0x4c>
c0de54f0:	2805      	cmp	r0, #5
c0de54f2:	d13d      	bne.n	c0de5570 <displayStreamingReviewPage+0xa0>
c0de54f4:	eb09 0205 	add.w	r2, r9, r5
c0de54f8:	2101      	movs	r1, #1
c0de54fa:	2302      	movs	r3, #2
c0de54fc:	6cd0      	ldr	r0, [r2, #76]	@ 0x4c
c0de54fe:	2800      	cmp	r0, #0
c0de5500:	bf08      	it	eq
c0de5502:	21ff      	moveq	r1, #255	@ 0xff
c0de5504:	bf08      	it	eq
c0de5506:	2301      	moveq	r3, #1
c0de5508:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de550c:	4293      	cmp	r3, r2
c0de550e:	dd3b      	ble.n	c0de5588 <displayStreamingReviewPage+0xb8>
c0de5510:	b2d3      	uxtb	r3, r2
c0de5512:	2b00      	cmp	r3, #0
c0de5514:	d063      	beq.n	c0de55de <displayStreamingReviewPage+0x10e>
c0de5516:	4291      	cmp	r1, r2
c0de5518:	d066      	beq.n	c0de55e8 <displayStreamingReviewPage+0x118>
c0de551a:	e066      	b.n	c0de55ea <displayStreamingReviewPage+0x11a>
c0de551c:	eb09 0005 	add.w	r0, r9, r5
c0de5520:	f990 1035 	ldrsb.w	r1, [r0, #53]	@ 0x35
c0de5524:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5526:	7a02      	ldrb	r2, [r0, #8]
c0de5528:	4291      	cmp	r1, r2
c0de552a:	da2d      	bge.n	c0de5588 <displayStreamingReviewPage+0xb8>
c0de552c:	eb09 0205 	add.w	r2, r9, r5
c0de5530:	6d93      	ldr	r3, [r2, #88]	@ 0x58
c0de5532:	b3cb      	cbz	r3, c0de55a8 <displayStreamingReviewPage+0xd8>
c0de5534:	f892 205d 	ldrb.w	r2, [r2, #93]	@ 0x5d
c0de5538:	bbb2      	cbnz	r2, c0de55a8 <displayStreamingReviewPage+0xd8>
c0de553a:	eb09 0205 	add.w	r2, r9, r5
c0de553e:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de5542:	2a01      	cmp	r2, #1
c0de5544:	d807      	bhi.n	c0de5556 <displayStreamingReviewPage+0x86>
c0de5546:	2900      	cmp	r1, #0
c0de5548:	dc05      	bgt.n	c0de5556 <displayStreamingReviewPage+0x86>
c0de554a:	eb09 0305 	add.w	r3, r9, r5
c0de554e:	f893 305e 	ldrb.w	r3, [r3, #94]	@ 0x5e
c0de5552:	2b08      	cmp	r3, #8
c0de5554:	d128      	bne.n	c0de55a8 <displayStreamingReviewPage+0xd8>
c0de5556:	2000      	movs	r0, #0
c0de5558:	9007      	str	r0, [sp, #28]
c0de555a:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de555e:	f004 0008 	and.w	r0, r4, #8
c0de5562:	2a01      	cmp	r2, #1
c0de5564:	d001      	beq.n	c0de556a <displayStreamingReviewPage+0x9a>
c0de5566:	2901      	cmp	r1, #1
c0de5568:	db50      	blt.n	c0de560c <displayStreamingReviewPage+0x13c>
c0de556a:	f040 0003 	orr.w	r0, r0, #3
c0de556e:	e04f      	b.n	c0de5610 <displayStreamingReviewPage+0x140>
c0de5570:	eb09 0005 	add.w	r0, r9, r5
c0de5574:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5578:	b180      	cbz	r0, c0de559c <displayStreamingReviewPage+0xcc>
c0de557a:	a909      	add	r1, sp, #36	@ 0x24
c0de557c:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de557e:	2000      	movs	r0, #0
c0de5580:	2500      	movs	r5, #0
c0de5582:	f000 fe2d 	bl	c0de61e0 <getLastPageInfo>
c0de5586:	e031      	b.n	c0de55ec <displayStreamingReviewPage+0x11c>
c0de5588:	eb09 0005 	add.w	r0, r9, r5
c0de558c:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de558e:	2900      	cmp	r1, #0
c0de5590:	d053      	beq.n	c0de563a <displayStreamingReviewPage+0x16a>
c0de5592:	2001      	movs	r0, #1
c0de5594:	b00c      	add	sp, #48	@ 0x30
c0de5596:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de559a:	4708      	bx	r1
c0de559c:	a909      	add	r1, sp, #36	@ 0x24
c0de559e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de55a0:	2001      	movs	r0, #1
c0de55a2:	f000 fe1d 	bl	c0de61e0 <getLastPageInfo>
c0de55a6:	e020      	b.n	c0de55ea <displayStreamingReviewPage+0x11a>
c0de55a8:	2300      	movs	r3, #0
c0de55aa:	eb09 0205 	add.w	r2, r9, r5
c0de55ae:	b2c9      	uxtb	r1, r1
c0de55b0:	f882 305d 	strb.w	r3, [r2, #93]	@ 0x5d
c0de55b4:	f88d 300f 	strb.w	r3, [sp, #15]
c0de55b8:	ab09      	add	r3, sp, #36	@ 0x24
c0de55ba:	ad08      	add	r5, sp, #32
c0de55bc:	f10d 020f 	add.w	r2, sp, #15
c0de55c0:	e9cd 5300 	strd	r5, r3, [sp]
c0de55c4:	9202      	str	r2, [sp, #8]
c0de55c6:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de55c8:	ab0a      	add	r3, sp, #40	@ 0x28
c0de55ca:	f000 fae5 	bl	c0de5b98 <getPairData>
c0de55ce:	9808      	ldr	r0, [sp, #32]
c0de55d0:	2800      	cmp	r0, #0
c0de55d2:	bf12      	itee	ne
c0de55d4:	2501      	movne	r5, #1
c0de55d6:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de55da:	0045      	lsleq	r5, r0, #1
c0de55dc:	e006      	b.n	c0de55ec <displayStreamingReviewPage+0x11c>
c0de55de:	eb09 0005 	add.w	r0, r9, r5
c0de55e2:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de55e6:	9109      	str	r1, [sp, #36]	@ 0x24
c0de55e8:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de55ea:	2500      	movs	r5, #0
c0de55ec:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de55ee:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de55f2:	4e17      	ldr	r6, [pc, #92]	@ (c0de5650 <displayStreamingReviewPage+0x180>)
c0de55f4:	b2e8      	uxtb	r0, r5
c0de55f6:	2500      	movs	r5, #0
c0de55f8:	9002      	str	r0, [sp, #8]
c0de55fa:	4620      	mov	r0, r4
c0de55fc:	447e      	add	r6, pc
c0de55fe:	f001 f8d5 	bl	c0de67ac <OUTLINED_FUNCTION_6>
c0de5602:	b00c      	add	sp, #48	@ 0x30
c0de5604:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5608:	f001 bcc3 	b.w	c0de6f92 <nbgl_refresh>
c0de560c:	f040 0001 	orr.w	r0, r0, #1
c0de5610:	490c      	ldr	r1, [pc, #48]	@ (c0de5644 <displayStreamingReviewPage+0x174>)
c0de5612:	2200      	movs	r2, #0
c0de5614:	4479      	add	r1, pc
c0de5616:	9104      	str	r1, [sp, #16]
c0de5618:	490b      	ldr	r1, [pc, #44]	@ (c0de5648 <displayStreamingReviewPage+0x178>)
c0de561a:	4479      	add	r1, pc
c0de561c:	9106      	str	r1, [sp, #24]
c0de561e:	2100      	movs	r1, #0
c0de5620:	9100      	str	r1, [sp, #0]
c0de5622:	490a      	ldr	r1, [pc, #40]	@ (c0de564c <displayStreamingReviewPage+0x17c>)
c0de5624:	ab04      	add	r3, sp, #16
c0de5626:	4479      	add	r1, pc
c0de5628:	f7ff f9b2 	bl	c0de4990 <nbgl_stepDrawCenteredInfo>
c0de562c:	eb09 0405 	add.w	r4, r9, r5
c0de5630:	f001 fcaf 	bl	c0de6f92 <nbgl_refresh>
c0de5634:	2001      	movs	r0, #1
c0de5636:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de563a:	b00c      	add	sp, #48	@ 0x30
c0de563c:	bd70      	pop	{r4, r5, r6, pc}
c0de563e:	bf00      	nop
c0de5640:	00000988 	.word	0x00000988
c0de5644:	00002449 	.word	0x00002449
c0de5648:	0000229a 	.word	0x0000229a
c0de564c:	00000d3f 	.word	0x00000d3f
c0de5650:	00001101 	.word	0x00001101

c0de5654 <nbgl_useCaseChoice>:
c0de5654:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de5656:	9c07      	ldr	r4, [sp, #28]
c0de5658:	9402      	str	r4, [sp, #8]
c0de565a:	2400      	movs	r4, #0
c0de565c:	9401      	str	r4, [sp, #4]
c0de565e:	9c06      	ldr	r4, [sp, #24]
c0de5660:	9400      	str	r4, [sp, #0]
c0de5662:	f000 f801 	bl	c0de5668 <nbgl_useCaseChoiceWithDetails>
c0de5666:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de5668 <nbgl_useCaseChoiceWithDetails>:
c0de5668:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de566c:	f8df 806c 	ldr.w	r8, [pc, #108]	@ c0de56dc <nbgl_useCaseChoiceWithDetails+0x74>
c0de5670:	460c      	mov	r4, r1
c0de5672:	4605      	mov	r5, r0
c0de5674:	2140      	movs	r1, #64	@ 0x40
c0de5676:	469a      	mov	sl, r3
c0de5678:	4617      	mov	r7, r2
c0de567a:	eb09 0608 	add.w	r6, r9, r8
c0de567e:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de5682:	f002 f8a9 	bl	c0de77d8 <__aeabi_memclr>
c0de5686:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de5688:	2203      	movs	r2, #3
c0de568a:	6570      	str	r0, [r6, #84]	@ 0x54
c0de568c:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de568e:	6531      	str	r1, [r6, #80]	@ 0x50
c0de5690:	9908      	ldr	r1, [sp, #32]
c0de5692:	e9c6 7a11 	strd	r7, sl, [r6, #68]	@ 0x44
c0de5696:	e9c6 540f 	strd	r5, r4, [r6, #60]	@ 0x3c
c0de569a:	64f1      	str	r1, [r6, #76]	@ 0x4c
c0de569c:	2108      	movs	r1, #8
c0de569e:	f886 102c 	strb.w	r1, [r6, #44]	@ 0x2c
c0de56a2:	2f00      	cmp	r7, #0
c0de56a4:	f04f 0103 	mov.w	r1, #3
c0de56a8:	bf18      	it	ne
c0de56aa:	2104      	movne	r1, #4
c0de56ac:	2d00      	cmp	r5, #0
c0de56ae:	bf08      	it	eq
c0de56b0:	4611      	moveq	r1, r2
c0de56b2:	2c00      	cmp	r4, #0
c0de56b4:	bf08      	it	eq
c0de56b6:	2102      	moveq	r1, #2
c0de56b8:	f886 1034 	strb.w	r1, [r6, #52]	@ 0x34
c0de56bc:	b140      	cbz	r0, c0de56d0 <nbgl_useCaseChoiceWithDetails+0x68>
c0de56be:	7902      	ldrb	r2, [r0, #4]
c0de56c0:	2a03      	cmp	r2, #3
c0de56c2:	d105      	bne.n	c0de56d0 <nbgl_useCaseChoiceWithDetails+0x68>
c0de56c4:	7a00      	ldrb	r0, [r0, #8]
c0de56c6:	eb09 0208 	add.w	r2, r9, r8
c0de56ca:	4408      	add	r0, r1
c0de56cc:	f882 0034 	strb.w	r0, [r2, #52]	@ 0x34
c0de56d0:	2000      	movs	r0, #0
c0de56d2:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de56d6:	f000 b803 	b.w	c0de56e0 <displayChoicePage>
c0de56da:	bf00      	nop
c0de56dc:	00000988 	.word	0x00000988

c0de56e0 <displayChoicePage>:
c0de56e0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de56e2:	4b33      	ldr	r3, [pc, #204]	@ (c0de57b0 <displayChoicePage+0xd0>)
c0de56e4:	2400      	movs	r4, #0
c0de56e6:	eb09 0103 	add.w	r1, r9, r3
c0de56ea:	6c0a      	ldr	r2, [r1, #64]	@ 0x40
c0de56ec:	b16a      	cbz	r2, c0de570a <displayChoicePage+0x2a>
c0de56ee:	eb09 0103 	add.w	r1, r9, r3
c0de56f2:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de56f4:	b131      	cbz	r1, c0de5704 <displayChoicePage+0x24>
c0de56f6:	eb09 0103 	add.w	r1, r9, r3
c0de56fa:	6c49      	ldr	r1, [r1, #68]	@ 0x44
c0de56fc:	b111      	cbz	r1, c0de5704 <displayChoicePage+0x24>
c0de56fe:	2102      	movs	r1, #2
c0de5700:	2501      	movs	r5, #1
c0de5702:	e004      	b.n	c0de570e <displayChoicePage+0x2e>
c0de5704:	2101      	movs	r1, #1
c0de5706:	2500      	movs	r5, #0
c0de5708:	e001      	b.n	c0de570e <displayChoicePage+0x2e>
c0de570a:	2500      	movs	r5, #0
c0de570c:	2100      	movs	r1, #0
c0de570e:	eb09 0603 	add.w	r6, r9, r3
c0de5712:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de5714:	f896 6035 	ldrb.w	r6, [r6, #53]	@ 0x35
c0de5718:	b274      	sxtb	r4, r6
c0de571a:	42a1      	cmp	r1, r4
c0de571c:	dd08      	ble.n	c0de5730 <displayChoicePage+0x50>
c0de571e:	b1ee      	cbz	r6, c0de575c <displayChoicePage+0x7c>
c0de5720:	1e71      	subs	r1, r6, #1
c0de5722:	fab1 f181 	clz	r1, r1
c0de5726:	0949      	lsrs	r1, r1, #5
c0de5728:	4029      	ands	r1, r5
c0de572a:	2901      	cmp	r1, #1
c0de572c:	d01c      	beq.n	c0de5768 <displayChoicePage+0x88>
c0de572e:	e030      	b.n	c0de5792 <displayChoicePage+0xb2>
c0de5730:	d108      	bne.n	c0de5744 <displayChoicePage+0x64>
c0de5732:	4a20      	ldr	r2, [pc, #128]	@ (c0de57b4 <displayChoicePage+0xd4>)
c0de5734:	eb09 0103 	add.w	r1, r9, r3
c0de5738:	447a      	add	r2, pc
c0de573a:	638a      	str	r2, [r1, #56]	@ 0x38
c0de573c:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de573e:	491e      	ldr	r1, [pc, #120]	@ (c0de57b8 <displayChoicePage+0xd8>)
c0de5740:	4479      	add	r1, pc
c0de5742:	e00f      	b.n	c0de5764 <displayChoicePage+0x84>
c0de5744:	1c4a      	adds	r2, r1, #1
c0de5746:	42a2      	cmp	r2, r4
c0de5748:	d112      	bne.n	c0de5770 <displayChoicePage+0x90>
c0de574a:	4a1c      	ldr	r2, [pc, #112]	@ (c0de57bc <displayChoicePage+0xdc>)
c0de574c:	eb09 0103 	add.w	r1, r9, r3
c0de5750:	447a      	add	r2, pc
c0de5752:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5754:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de5756:	491a      	ldr	r1, [pc, #104]	@ (c0de57c0 <displayChoicePage+0xe0>)
c0de5758:	4479      	add	r1, pc
c0de575a:	e003      	b.n	c0de5764 <displayChoicePage+0x84>
c0de575c:	eb09 0103 	add.w	r1, r9, r3
c0de5760:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de5762:	b109      	cbz	r1, c0de5768 <displayChoicePage+0x88>
c0de5764:	2300      	movs	r3, #0
c0de5766:	e017      	b.n	c0de5798 <displayChoicePage+0xb8>
c0de5768:	eb09 0103 	add.w	r1, r9, r3
c0de576c:	6c4b      	ldr	r3, [r1, #68]	@ 0x44
c0de576e:	e012      	b.n	c0de5796 <displayChoicePage+0xb6>
c0de5770:	eb09 0203 	add.w	r2, r9, r3
c0de5774:	6d52      	ldr	r2, [r2, #84]	@ 0x54
c0de5776:	b162      	cbz	r2, c0de5792 <displayChoicePage+0xb2>
c0de5778:	7913      	ldrb	r3, [r2, #4]
c0de577a:	2b03      	cmp	r3, #3
c0de577c:	d109      	bne.n	c0de5792 <displayChoicePage+0xb2>
c0de577e:	1a61      	subs	r1, r4, r1
c0de5780:	f06f 0307 	mvn.w	r3, #7
c0de5784:	e9d2 4203 	ldrd	r4, r2, [r2, #12]
c0de5788:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de578c:	5853      	ldr	r3, [r2, r1]
c0de578e:	5862      	ldr	r2, [r4, r1]
c0de5790:	e001      	b.n	c0de5796 <displayChoicePage+0xb6>
c0de5792:	2200      	movs	r2, #0
c0de5794:	2300      	movs	r3, #0
c0de5796:	2100      	movs	r1, #0
c0de5798:	4d0a      	ldr	r5, [pc, #40]	@ (c0de57c4 <displayChoicePage+0xe4>)
c0de579a:	2400      	movs	r4, #0
c0de579c:	9402      	str	r4, [sp, #8]
c0de579e:	447d      	add	r5, pc
c0de57a0:	e9cd 5400 	strd	r5, r4, [sp]
c0de57a4:	f7ff fd78 	bl	c0de5298 <drawStep>
c0de57a8:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de57ac:	f001 bbf1 	b.w	c0de6f92 <nbgl_refresh>
c0de57b0:	00000988 	.word	0x00000988
c0de57b4:	00000fe9 	.word	0x00000fe9
c0de57b8:	00002285 	.word	0x00002285
c0de57bc:	00000fe5 	.word	0x00000fe5
c0de57c0:	00002214 	.word	0x00002214
c0de57c4:	00000fab 	.word	0x00000fab

c0de57c8 <getContentAtIdx>:
c0de57c8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de57ca:	b087      	sub	sp, #28
c0de57cc:	460d      	mov	r5, r1
c0de57ce:	4606      	mov	r6, r0
c0de57d0:	a801      	add	r0, sp, #4
c0de57d2:	2118      	movs	r1, #24
c0de57d4:	4614      	mov	r4, r2
c0de57d6:	f001 ffff 	bl	c0de77d8 <__aeabi_memclr>
c0de57da:	2d00      	cmp	r5, #0
c0de57dc:	d428      	bmi.n	c0de5830 <getContentAtIdx+0x68>
c0de57de:	7a30      	ldrb	r0, [r6, #8]
c0de57e0:	4285      	cmp	r5, r0
c0de57e2:	da25      	bge.n	c0de5830 <getContentAtIdx+0x68>
c0de57e4:	7830      	ldrb	r0, [r6, #0]
c0de57e6:	b338      	cbz	r0, c0de5838 <getContentAtIdx+0x70>
c0de57e8:	b314      	cbz	r4, c0de5830 <getContentAtIdx+0x68>
c0de57ea:	4620      	mov	r0, r4
c0de57ec:	2138      	movs	r1, #56	@ 0x38
c0de57ee:	f001 fff3 	bl	c0de77d8 <__aeabi_memclr>
c0de57f2:	4821      	ldr	r0, [pc, #132]	@ (c0de5878 <getContentAtIdx+0xb0>)
c0de57f4:	4448      	add	r0, r9
c0de57f6:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de57f8:	b342      	cbz	r2, c0de584c <getContentAtIdx+0x84>
c0de57fa:	b2e8      	uxtb	r0, r5
c0de57fc:	ad01      	add	r5, sp, #4
c0de57fe:	4629      	mov	r1, r5
c0de5800:	4790      	blx	r2
c0de5802:	b1a8      	cbz	r0, c0de5830 <getContentAtIdx+0x68>
c0de5804:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de5808:	280a      	cmp	r0, #10
c0de580a:	7020      	strb	r0, [r4, #0]
c0de580c:	d023      	beq.n	c0de5856 <getContentAtIdx+0x8e>
c0de580e:	2803      	cmp	r0, #3
c0de5810:	d008      	beq.n	c0de5824 <getContentAtIdx+0x5c>
c0de5812:	2804      	cmp	r0, #4
c0de5814:	d025      	beq.n	c0de5862 <getContentAtIdx+0x9a>
c0de5816:	2807      	cmp	r0, #7
c0de5818:	d029      	beq.n	c0de586e <getContentAtIdx+0xa6>
c0de581a:	2808      	cmp	r0, #8
c0de581c:	d002      	beq.n	c0de5824 <getContentAtIdx+0x5c>
c0de581e:	2809      	cmp	r0, #9
c0de5820:	d019      	beq.n	c0de5856 <getContentAtIdx+0x8e>
c0de5822:	b928      	cbnz	r0, c0de5830 <getContentAtIdx+0x68>
c0de5824:	1d28      	adds	r0, r5, #4
c0de5826:	1d21      	adds	r1, r4, #4
c0de5828:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de582c:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de582e:	e000      	b.n	c0de5832 <getContentAtIdx+0x6a>
c0de5830:	2400      	movs	r4, #0
c0de5832:	4620      	mov	r0, r4
c0de5834:	b007      	add	sp, #28
c0de5836:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5838:	6871      	ldr	r1, [r6, #4]
c0de583a:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de583e:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5842:	b007      	add	sp, #28
c0de5844:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5848:	f001 bda6 	b.w	c0de7398 <pic>
c0de584c:	6872      	ldr	r2, [r6, #4]
c0de584e:	b2e8      	uxtb	r0, r5
c0de5850:	4621      	mov	r1, r4
c0de5852:	4790      	blx	r2
c0de5854:	e7ed      	b.n	c0de5832 <getContentAtIdx+0x6a>
c0de5856:	1d28      	adds	r0, r5, #4
c0de5858:	1d21      	adds	r1, r4, #4
c0de585a:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de585e:	c12c      	stmia	r1!, {r2, r3, r5}
c0de5860:	e7e7      	b.n	c0de5832 <getContentAtIdx+0x6a>
c0de5862:	1d28      	adds	r0, r5, #4
c0de5864:	1d21      	adds	r1, r4, #4
c0de5866:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de586a:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de586c:	e7e1      	b.n	c0de5832 <getContentAtIdx+0x6a>
c0de586e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de5872:	e9c4 0101 	strd	r0, r1, [r4, #4]
c0de5876:	e7dc      	b.n	c0de5832 <getContentAtIdx+0x6a>
c0de5878:	00000988 	.word	0x00000988

c0de587c <getContentNbElement>:
c0de587c:	7802      	ldrb	r2, [r0, #0]
c0de587e:	2101      	movs	r1, #1
c0de5880:	b1a2      	cbz	r2, c0de58ac <getContentNbElement+0x30>
c0de5882:	2a03      	cmp	r2, #3
c0de5884:	d012      	beq.n	c0de58ac <getContentNbElement+0x30>
c0de5886:	2a0a      	cmp	r2, #10
c0de5888:	d007      	beq.n	c0de589a <getContentNbElement+0x1e>
c0de588a:	2a07      	cmp	r2, #7
c0de588c:	d007      	beq.n	c0de589e <getContentNbElement+0x22>
c0de588e:	2a08      	cmp	r2, #8
c0de5890:	d007      	beq.n	c0de58a2 <getContentNbElement+0x26>
c0de5892:	2a09      	cmp	r2, #9
c0de5894:	d007      	beq.n	c0de58a6 <getContentNbElement+0x2a>
c0de5896:	2a04      	cmp	r2, #4
c0de5898:	d107      	bne.n	c0de58aa <getContentNbElement+0x2e>
c0de589a:	7b01      	ldrb	r1, [r0, #12]
c0de589c:	e006      	b.n	c0de58ac <getContentNbElement+0x30>
c0de589e:	7a01      	ldrb	r1, [r0, #8]
c0de58a0:	e004      	b.n	c0de58ac <getContentNbElement+0x30>
c0de58a2:	7c01      	ldrb	r1, [r0, #16]
c0de58a4:	e002      	b.n	c0de58ac <getContentNbElement+0x30>
c0de58a6:	7a41      	ldrb	r1, [r0, #9]
c0de58a8:	e000      	b.n	c0de58ac <getContentNbElement+0x30>
c0de58aa:	2100      	movs	r1, #0
c0de58ac:	4608      	mov	r0, r1
c0de58ae:	4770      	bx	lr

c0de58b0 <displayContent>:
c0de58b0:	b570      	push	{r4, r5, r6, lr}
c0de58b2:	b08a      	sub	sp, #40	@ 0x28
c0de58b4:	460d      	mov	r5, r1
c0de58b6:	4604      	mov	r4, r0
c0de58b8:	a804      	add	r0, sp, #16
c0de58ba:	2118      	movs	r1, #24
c0de58bc:	f001 ff8c 	bl	c0de77d8 <__aeabi_memclr>
c0de58c0:	4820      	ldr	r0, [pc, #128]	@ (c0de5944 <displayContent+0x94>)
c0de58c2:	f000 ff51 	bl	c0de6768 <OUTLINED_FUNCTION_1>
c0de58c6:	dd14      	ble.n	c0de58f2 <displayContent+0x42>
c0de58c8:	a904      	add	r1, sp, #16
c0de58ca:	4628      	mov	r0, r5
c0de58cc:	f000 f846 	bl	c0de595c <getContentPage>
c0de58d0:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de58d4:	b318      	cbz	r0, c0de591e <displayContent+0x6e>
c0de58d6:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de58da:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de58de:	481e      	ldr	r0, [pc, #120]	@ (c0de5958 <displayContent+0xa8>)
c0de58e0:	4478      	add	r0, pc
c0de58e2:	2b00      	cmp	r3, #0
c0de58e4:	9000      	str	r0, [sp, #0]
c0de58e6:	4620      	mov	r0, r4
c0de58e8:	bf18      	it	ne
c0de58ea:	2301      	movne	r3, #1
c0de58ec:	f000 f8d8 	bl	c0de5aa0 <drawSwitchStep>
c0de58f0:	e023      	b.n	c0de593a <displayContent+0x8a>
c0de58f2:	4448      	add	r0, r9
c0de58f4:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de58f6:	6381      	str	r1, [r0, #56]	@ 0x38
c0de58f8:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de58fa:	4a13      	ldr	r2, [pc, #76]	@ (c0de5948 <displayContent+0x98>)
c0de58fc:	2900      	cmp	r1, #0
c0de58fe:	447a      	add	r2, pc
c0de5900:	bf18      	it	ne
c0de5902:	460a      	movne	r2, r1
c0de5904:	9205      	str	r2, [sp, #20]
c0de5906:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de590a:	4910      	ldr	r1, [pc, #64]	@ (c0de594c <displayContent+0x9c>)
c0de590c:	4a10      	ldr	r2, [pc, #64]	@ (c0de5950 <displayContent+0xa0>)
c0de590e:	2803      	cmp	r0, #3
c0de5910:	447a      	add	r2, pc
c0de5912:	4479      	add	r1, pc
c0de5914:	bf08      	it	eq
c0de5916:	460a      	moveq	r2, r1
c0de5918:	9207      	str	r2, [sp, #28]
c0de591a:	2000      	movs	r0, #0
c0de591c:	e002      	b.n	c0de5924 <displayContent+0x74>
c0de591e:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5922:	0040      	lsls	r0, r0, #1
c0de5924:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5928:	9907      	ldr	r1, [sp, #28]
c0de592a:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5954 <displayContent+0xa4>)
c0de592c:	b2c0      	uxtb	r0, r0
c0de592e:	2500      	movs	r5, #0
c0de5930:	9002      	str	r0, [sp, #8]
c0de5932:	4620      	mov	r0, r4
c0de5934:	447e      	add	r6, pc
c0de5936:	f000 ff39 	bl	c0de67ac <OUTLINED_FUNCTION_6>
c0de593a:	f001 fb2a 	bl	c0de6f92 <nbgl_refresh>
c0de593e:	b00a      	add	sp, #40	@ 0x28
c0de5940:	bd70      	pop	{r4, r5, r6, pc}
c0de5942:	bf00      	nop
c0de5944:	00000988 	.word	0x00000988
c0de5948:	00002382 	.word	0x00002382
c0de594c:	0000205a 	.word	0x0000205a
c0de5950:	00002016 	.word	0x00002016
c0de5954:	000001b9 	.word	0x000001b9
c0de5958:	0000020d 	.word	0x0000020d

c0de595c <getContentPage>:
c0de595c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de595e:	b093      	sub	sp, #76	@ 0x4c
c0de5960:	4606      	mov	r6, r0
c0de5962:	2000      	movs	r0, #0
c0de5964:	460c      	mov	r4, r1
c0de5966:	2138      	movs	r1, #56	@ 0x38
c0de5968:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de596c:	ad04      	add	r5, sp, #16
c0de596e:	4628      	mov	r0, r5
c0de5970:	f001 ff32 	bl	c0de77d8 <__aeabi_memclr>
c0de5974:	4f47      	ldr	r7, [pc, #284]	@ (c0de5a94 <getContentPage+0x138>)
c0de5976:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de597a:	462a      	mov	r2, r5
c0de597c:	eb09 0007 	add.w	r0, r9, r7
c0de5980:	f000 ff0d 	bl	c0de679e <OUTLINED_FUNCTION_4>
c0de5984:	2800      	cmp	r0, #0
c0de5986:	d07a      	beq.n	c0de5a7e <getContentPage+0x122>
c0de5988:	4605      	mov	r5, r0
c0de598a:	7800      	ldrb	r0, [r0, #0]
c0de598c:	280a      	cmp	r0, #10
c0de598e:	d011      	beq.n	c0de59b4 <getContentPage+0x58>
c0de5990:	2803      	cmp	r0, #3
c0de5992:	d02c      	beq.n	c0de59ee <getContentPage+0x92>
c0de5994:	2804      	cmp	r0, #4
c0de5996:	d035      	beq.n	c0de5a04 <getContentPage+0xa8>
c0de5998:	2807      	cmp	r0, #7
c0de599a:	d045      	beq.n	c0de5a28 <getContentPage+0xcc>
c0de599c:	2808      	cmp	r0, #8
c0de599e:	d060      	beq.n	c0de5a62 <getContentPage+0x106>
c0de59a0:	2809      	cmp	r0, #9
c0de59a2:	d007      	beq.n	c0de59b4 <getContentPage+0x58>
c0de59a4:	2800      	cmp	r0, #0
c0de59a6:	d16a      	bne.n	c0de5a7e <getContentPage+0x122>
c0de59a8:	6868      	ldr	r0, [r5, #4]
c0de59aa:	f001 fcf5 	bl	c0de7398 <pic>
c0de59ae:	6060      	str	r0, [r4, #4]
c0de59b0:	68a8      	ldr	r0, [r5, #8]
c0de59b2:	e019      	b.n	c0de59e8 <getContentPage+0x8c>
c0de59b4:	1d28      	adds	r0, r5, #4
c0de59b6:	eb09 0607 	add.w	r6, r9, r7
c0de59ba:	f001 fced 	bl	c0de7398 <pic>
c0de59be:	6800      	ldr	r0, [r0, #0]
c0de59c0:	f001 fcea 	bl	c0de7398 <pic>
c0de59c4:	f896 102c 	ldrb.w	r1, [r6, #44]	@ 0x2c
c0de59c8:	4605      	mov	r5, r0
c0de59ca:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de59cc:	2910      	cmp	r1, #16
c0de59ce:	d100      	bne.n	c0de59d2 <getContentPage+0x76>
c0de59d0:	b918      	cbnz	r0, c0de59da <getContentPage+0x7e>
c0de59d2:	290f      	cmp	r1, #15
c0de59d4:	d155      	bne.n	c0de5a82 <getContentPage+0x126>
c0de59d6:	2800      	cmp	r0, #0
c0de59d8:	d053      	beq.n	c0de5a82 <getContentPage+0x126>
c0de59da:	f001 fcdd 	bl	c0de7398 <pic>
c0de59de:	6060      	str	r0, [r4, #4]
c0de59e0:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de59e4:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de59e8:	f001 fcd6 	bl	c0de7398 <pic>
c0de59ec:	e046      	b.n	c0de5a7c <getContentPage+0x120>
c0de59ee:	68a8      	ldr	r0, [r5, #8]
c0de59f0:	4e29      	ldr	r6, [pc, #164]	@ (c0de5a98 <getContentPage+0x13c>)
c0de59f2:	447e      	add	r6, pc
c0de59f4:	47b0      	blx	r6
c0de59f6:	60e0      	str	r0, [r4, #12]
c0de59f8:	6868      	ldr	r0, [r5, #4]
c0de59fa:	47b0      	blx	r6
c0de59fc:	6060      	str	r0, [r4, #4]
c0de59fe:	68e8      	ldr	r0, [r5, #12]
c0de5a00:	47b0      	blx	r6
c0de5a02:	e03b      	b.n	c0de5a7c <getContentPage+0x120>
c0de5a04:	f104 0015 	add.w	r0, r4, #21
c0de5a08:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5a0c:	f104 020c 	add.w	r2, r4, #12
c0de5a10:	f104 0310 	add.w	r3, r4, #16
c0de5a14:	e9cd 3200 	strd	r3, r2, [sp]
c0de5a18:	9002      	str	r0, [sp, #8]
c0de5a1a:	1d28      	adds	r0, r5, #4
c0de5a1c:	1d22      	adds	r2, r4, #4
c0de5a1e:	f104 0308 	add.w	r3, r4, #8
c0de5a22:	f000 f8b9 	bl	c0de5b98 <getPairData>
c0de5a26:	e02a      	b.n	c0de5a7e <getContentPage+0x122>
c0de5a28:	2001      	movs	r0, #1
c0de5a2a:	444f      	add	r7, r9
c0de5a2c:	7020      	strb	r0, [r4, #0]
c0de5a2e:	6868      	ldr	r0, [r5, #4]
c0de5a30:	f001 fcb2 	bl	c0de7398 <pic>
c0de5a34:	4919      	ldr	r1, [pc, #100]	@ (c0de5a9c <getContentPage+0x140>)
c0de5a36:	4479      	add	r1, pc
c0de5a38:	63b9      	str	r1, [r7, #56]	@ 0x38
c0de5a3a:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5a3e:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5a42:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de5a46:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5a4a:	6062      	str	r2, [r4, #4]
c0de5a4c:	6841      	ldr	r1, [r0, #4]
c0de5a4e:	60a1      	str	r1, [r4, #8]
c0de5a50:	7a00      	ldrb	r0, [r0, #8]
c0de5a52:	1e41      	subs	r1, r0, #1
c0de5a54:	bf18      	it	ne
c0de5a56:	2101      	movne	r1, #1
c0de5a58:	2e00      	cmp	r6, #0
c0de5a5a:	bf08      	it	eq
c0de5a5c:	4601      	moveq	r1, r0
c0de5a5e:	7521      	strb	r1, [r4, #20]
c0de5a60:	e00d      	b.n	c0de5a7e <getContentPage+0x122>
c0de5a62:	6868      	ldr	r0, [r5, #4]
c0de5a64:	f001 fc98 	bl	c0de7398 <pic>
c0de5a68:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de5a6c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5a70:	6060      	str	r0, [r4, #4]
c0de5a72:	68a8      	ldr	r0, [r5, #8]
c0de5a74:	f001 fc90 	bl	c0de7398 <pic>
c0de5a78:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5a7c:	60a0      	str	r0, [r4, #8]
c0de5a7e:	b013      	add	sp, #76	@ 0x4c
c0de5a80:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5a82:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5a86:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5a8a:	f001 fc85 	bl	c0de7398 <pic>
c0de5a8e:	6060      	str	r0, [r4, #4]
c0de5a90:	e7f5      	b.n	c0de5a7e <getContentPage+0x122>
c0de5a92:	bf00      	nop
c0de5a94:	00000988 	.word	0x00000988
c0de5a98:	000019a3 	.word	0x000019a3
c0de5a9c:	000001a7 	.word	0x000001a7

c0de5aa0 <drawSwitchStep>:
c0de5aa0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5aa2:	b085      	sub	sp, #20
c0de5aa4:	4c11      	ldr	r4, [pc, #68]	@ (c0de5aec <drawSwitchStep+0x4c>)
c0de5aa6:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de5aaa:	2600      	movs	r6, #0
c0de5aac:	eb09 0504 	add.w	r5, r9, r4
c0de5ab0:	f895 7034 	ldrb.w	r7, [r5, #52]	@ 0x34
c0de5ab4:	2500      	movs	r5, #0
c0de5ab6:	2f02      	cmp	r7, #2
c0de5ab8:	d30a      	bcc.n	c0de5ad0 <drawSwitchStep+0x30>
c0de5aba:	444c      	add	r4, r9
c0de5abc:	f994 4035 	ldrsb.w	r4, [r4, #53]	@ 0x35
c0de5ac0:	b12c      	cbz	r4, c0de5ace <drawSwitchStep+0x2e>
c0de5ac2:	3f01      	subs	r7, #1
c0de5ac4:	2603      	movs	r6, #3
c0de5ac6:	42a7      	cmp	r7, r4
c0de5ac8:	bf08      	it	eq
c0de5aca:	2602      	moveq	r6, #2
c0de5acc:	e000      	b.n	c0de5ad0 <drawSwitchStep+0x30>
c0de5ace:	2601      	movs	r6, #1
c0de5ad0:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5ad4:	f88d 3010 	strb.w	r3, [sp, #16]
c0de5ad8:	9500      	str	r5, [sp, #0]
c0de5ada:	4330      	orrs	r0, r6
c0de5adc:	ab02      	add	r3, sp, #8
c0de5ade:	4661      	mov	r1, ip
c0de5ae0:	2200      	movs	r2, #0
c0de5ae2:	f7ff f83d 	bl	c0de4b60 <nbgl_stepDrawSwitch>
c0de5ae6:	b005      	add	sp, #20
c0de5ae8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5aea:	bf00      	nop
c0de5aec:	00000988 	.word	0x00000988

c0de5af0 <contentCallback>:
c0de5af0:	b5e0      	push	{r5, r6, r7, lr}
c0de5af2:	4608      	mov	r0, r1
c0de5af4:	f10d 0107 	add.w	r1, sp, #7
c0de5af8:	f000 f928 	bl	c0de5d4c <buttonGenericCallback>
c0de5afc:	b130      	cbz	r0, c0de5b0c <contentCallback+0x1c>
c0de5afe:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5b02:	2100      	movs	r1, #0
c0de5b04:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5b08:	f7ff bed2 	b.w	c0de58b0 <displayContent>
c0de5b0c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5b10 <getContentElemAtIdx>:
c0de5b10:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5b14:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5b90 <getContentElemAtIdx+0x80>)
c0de5b16:	4606      	mov	r6, r0
c0de5b18:	2700      	movs	r7, #0
c0de5b1a:	eb09 0004 	add.w	r0, r9, r4
c0de5b1e:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
c0de5b22:	2b10      	cmp	r3, #16
c0de5b24:	d830      	bhi.n	c0de5b88 <getContentElemAtIdx+0x78>
c0de5b26:	4693      	mov	fp, r2
c0de5b28:	2201      	movs	r2, #1
c0de5b2a:	9101      	str	r1, [sp, #4]
c0de5b2c:	fa02 f303 	lsl.w	r3, r2, r3
c0de5b30:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5b34:	d004      	beq.n	c0de5b40 <getContentElemAtIdx+0x30>
c0de5b36:	eb09 0004 	add.w	r0, r9, r4
c0de5b3a:	46a2      	mov	sl, r4
c0de5b3c:	6c84      	ldr	r4, [r0, #72]	@ 0x48
c0de5b3e:	e005      	b.n	c0de5b4c <getContentElemAtIdx+0x3c>
c0de5b40:	4a14      	ldr	r2, [pc, #80]	@ (c0de5b94 <getContentElemAtIdx+0x84>)
c0de5b42:	4213      	tst	r3, r2
c0de5b44:	d020      	beq.n	c0de5b88 <getContentElemAtIdx+0x78>
c0de5b46:	46a2      	mov	sl, r4
c0de5b48:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0de5b4c:	2700      	movs	r7, #0
c0de5b4e:	2000      	movs	r0, #0
c0de5b50:	f04f 0800 	mov.w	r8, #0
c0de5b54:	4605      	mov	r5, r0
c0de5b56:	7a20      	ldrb	r0, [r4, #8]
c0de5b58:	4580      	cmp	r8, r0
c0de5b5a:	d215      	bcs.n	c0de5b88 <getContentElemAtIdx+0x78>
c0de5b5c:	fa4f f188 	sxtb.w	r1, r8
c0de5b60:	4620      	mov	r0, r4
c0de5b62:	465a      	mov	r2, fp
c0de5b64:	f7ff fe30 	bl	c0de57c8 <getContentAtIdx>
c0de5b68:	4607      	mov	r7, r0
c0de5b6a:	f7ff fe87 	bl	c0de587c <getContentNbElement>
c0de5b6e:	b2e9      	uxtb	r1, r5
c0de5b70:	f108 0801 	add.w	r8, r8, #1
c0de5b74:	4408      	add	r0, r1
c0de5b76:	42b0      	cmp	r0, r6
c0de5b78:	d9ec      	bls.n	c0de5b54 <getContentElemAtIdx+0x44>
c0de5b7a:	eb09 000a 	add.w	r0, r9, sl
c0de5b7e:	9901      	ldr	r1, [sp, #4]
c0de5b80:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5b84:	1b40      	subs	r0, r0, r5
c0de5b86:	7008      	strb	r0, [r1, #0]
c0de5b88:	4638      	mov	r0, r7
c0de5b8a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5b8e:	bf00      	nop
c0de5b90:	00000988 	.word	0x00000988
c0de5b94:	00010008 	.word	0x00010008

c0de5b98 <getPairData>:
c0de5b98:	b5b0      	push	{r4, r5, r7, lr}
c0de5b9a:	4615      	mov	r5, r2
c0de5b9c:	6802      	ldr	r2, [r0, #0]
c0de5b9e:	461c      	mov	r4, r3
c0de5ba0:	b112      	cbz	r2, c0de5ba8 <getPairData+0x10>
c0de5ba2:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5ba6:	e002      	b.n	c0de5bae <getPairData+0x16>
c0de5ba8:	6842      	ldr	r2, [r0, #4]
c0de5baa:	4608      	mov	r0, r1
c0de5bac:	4790      	blx	r2
c0de5bae:	f001 fbf3 	bl	c0de7398 <pic>
c0de5bb2:	6802      	ldr	r2, [r0, #0]
c0de5bb4:	9904      	ldr	r1, [sp, #16]
c0de5bb6:	602a      	str	r2, [r5, #0]
c0de5bb8:	6842      	ldr	r2, [r0, #4]
c0de5bba:	6022      	str	r2, [r4, #0]
c0de5bbc:	7b02      	ldrb	r2, [r0, #12]
c0de5bbe:	0753      	lsls	r3, r2, #29
c0de5bc0:	d403      	bmi.n	c0de5bca <getPairData+0x32>
c0de5bc2:	0792      	lsls	r2, r2, #30
c0de5bc4:	d404      	bmi.n	c0de5bd0 <getPairData+0x38>
c0de5bc6:	2000      	movs	r0, #0
c0de5bc8:	e000      	b.n	c0de5bcc <getPairData+0x34>
c0de5bca:	6880      	ldr	r0, [r0, #8]
c0de5bcc:	6008      	str	r0, [r1, #0]
c0de5bce:	bdb0      	pop	{r4, r5, r7, pc}
c0de5bd0:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5bd4:	2301      	movs	r3, #1
c0de5bd6:	700b      	strb	r3, [r1, #0]
c0de5bd8:	6880      	ldr	r0, [r0, #8]
c0de5bda:	6010      	str	r0, [r2, #0]
c0de5bdc:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5be0 <onSwitchAction>:
c0de5be0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5be2:	b08f      	sub	sp, #60	@ 0x3c
c0de5be4:	ac01      	add	r4, sp, #4
c0de5be6:	2138      	movs	r1, #56	@ 0x38
c0de5be8:	4620      	mov	r0, r4
c0de5bea:	f001 fdf5 	bl	c0de77d8 <__aeabi_memclr>
c0de5bee:	4e26      	ldr	r6, [pc, #152]	@ (c0de5c88 <onSwitchAction+0xa8>)
c0de5bf0:	f10d 0103 	add.w	r1, sp, #3
c0de5bf4:	4622      	mov	r2, r4
c0de5bf6:	eb09 0006 	add.w	r0, r9, r6
c0de5bfa:	f000 fdd0 	bl	c0de679e <OUTLINED_FUNCTION_4>
c0de5bfe:	2800      	cmp	r0, #0
c0de5c00:	d040      	beq.n	c0de5c84 <onSwitchAction+0xa4>
c0de5c02:	4604      	mov	r4, r0
c0de5c04:	7800      	ldrb	r0, [r0, #0]
c0de5c06:	2807      	cmp	r0, #7
c0de5c08:	d13c      	bne.n	c0de5c84 <onSwitchAction+0xa4>
c0de5c0a:	6860      	ldr	r0, [r4, #4]
c0de5c0c:	eb09 0706 	add.w	r7, r9, r6
c0de5c10:	f001 fbc2 	bl	c0de7398 <pic>
c0de5c14:	4605      	mov	r5, r0
c0de5c16:	f897 002c 	ldrb.w	r0, [r7, #44]	@ 0x2c
c0de5c1a:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5c1e:	2810      	cmp	r0, #16
c0de5c20:	d811      	bhi.n	c0de5c46 <onSwitchAction+0x66>
c0de5c22:	2101      	movs	r1, #1
c0de5c24:	fa01 f000 	lsl.w	r0, r1, r0
c0de5c28:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5c2c:	d004      	beq.n	c0de5c38 <onSwitchAction+0x58>
c0de5c2e:	2000      	movs	r0, #0
c0de5c30:	2101      	movs	r1, #1
c0de5c32:	f000 f82d 	bl	c0de5c90 <displaySettingsPage>
c0de5c36:	e006      	b.n	c0de5c46 <onSwitchAction+0x66>
c0de5c38:	4914      	ldr	r1, [pc, #80]	@ (c0de5c8c <onSwitchAction+0xac>)
c0de5c3a:	4208      	tst	r0, r1
c0de5c3c:	d003      	beq.n	c0de5c46 <onSwitchAction+0x66>
c0de5c3e:	2000      	movs	r0, #0
c0de5c40:	2101      	movs	r1, #1
c0de5c42:	f7ff fe35 	bl	c0de58b0 <displayContent>
c0de5c46:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de5c48:	b188      	cbz	r0, c0de5c6e <onSwitchAction+0x8e>
c0de5c4a:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5c4e:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5c52:	f001 fba1 	bl	c0de7398 <pic>
c0de5c56:	7a21      	ldrb	r1, [r4, #8]
c0de5c58:	eb09 0206 	add.w	r2, r9, r6
c0de5c5c:	4603      	mov	r3, r0
c0de5c5e:	7a60      	ldrb	r0, [r4, #9]
c0de5c60:	3901      	subs	r1, #1
c0de5c62:	bf18      	it	ne
c0de5c64:	2101      	movne	r1, #1
c0de5c66:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5c6a:	4798      	blx	r3
c0de5c6c:	e00a      	b.n	c0de5c84 <onSwitchAction+0xa4>
c0de5c6e:	eb09 0006 	add.w	r0, r9, r6
c0de5c72:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5c74:	b132      	cbz	r2, c0de5c84 <onSwitchAction+0xa4>
c0de5c76:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de5c7a:	2100      	movs	r1, #0
c0de5c7c:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5c80:	7a40      	ldrb	r0, [r0, #9]
c0de5c82:	4790      	blx	r2
c0de5c84:	b00f      	add	sp, #60	@ 0x3c
c0de5c86:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5c88:	00000988 	.word	0x00000988
c0de5c8c:	00010008 	.word	0x00010008

c0de5c90 <displaySettingsPage>:
c0de5c90:	b5b0      	push	{r4, r5, r7, lr}
c0de5c92:	b08a      	sub	sp, #40	@ 0x28
c0de5c94:	460d      	mov	r5, r1
c0de5c96:	4604      	mov	r4, r0
c0de5c98:	a804      	add	r0, sp, #16
c0de5c9a:	2118      	movs	r1, #24
c0de5c9c:	f001 fd9c 	bl	c0de77d8 <__aeabi_memclr>
c0de5ca0:	481c      	ldr	r0, [pc, #112]	@ (c0de5d14 <displaySettingsPage+0x84>)
c0de5ca2:	f000 fd61 	bl	c0de6768 <OUTLINED_FUNCTION_1>
c0de5ca6:	dd14      	ble.n	c0de5cd2 <displaySettingsPage+0x42>
c0de5ca8:	a904      	add	r1, sp, #16
c0de5caa:	4628      	mov	r0, r5
c0de5cac:	f7ff fe56 	bl	c0de595c <getContentPage>
c0de5cb0:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5cb4:	b1e8      	cbz	r0, c0de5cf2 <displaySettingsPage+0x62>
c0de5cb6:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5cba:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5cbe:	481a      	ldr	r0, [pc, #104]	@ (c0de5d28 <displaySettingsPage+0x98>)
c0de5cc0:	4478      	add	r0, pc
c0de5cc2:	2b00      	cmp	r3, #0
c0de5cc4:	9000      	str	r0, [sp, #0]
c0de5cc6:	4620      	mov	r0, r4
c0de5cc8:	bf18      	it	ne
c0de5cca:	2301      	movne	r3, #1
c0de5ccc:	f7ff fee8 	bl	c0de5aa0 <drawSwitchStep>
c0de5cd0:	e01b      	b.n	c0de5d0a <displaySettingsPage+0x7a>
c0de5cd2:	4448      	add	r0, r9
c0de5cd4:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5cd8:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5cda:	4b0f      	ldr	r3, [pc, #60]	@ (c0de5d18 <displaySettingsPage+0x88>)
c0de5cdc:	447b      	add	r3, pc
c0de5cde:	290f      	cmp	r1, #15
c0de5ce0:	bf08      	it	eq
c0de5ce2:	4613      	moveq	r3, r2
c0de5ce4:	6383      	str	r3, [r0, #56]	@ 0x38
c0de5ce6:	480d      	ldr	r0, [pc, #52]	@ (c0de5d1c <displaySettingsPage+0x8c>)
c0de5ce8:	4478      	add	r0, pc
c0de5cea:	9005      	str	r0, [sp, #20]
c0de5cec:	480c      	ldr	r0, [pc, #48]	@ (c0de5d20 <displaySettingsPage+0x90>)
c0de5cee:	4478      	add	r0, pc
c0de5cf0:	9007      	str	r0, [sp, #28]
c0de5cf2:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5cf6:	9907      	ldr	r1, [sp, #28]
c0de5cf8:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5d24 <displaySettingsPage+0x94>)
c0de5cfa:	2000      	movs	r0, #0
c0de5cfc:	9002      	str	r0, [sp, #8]
c0de5cfe:	447d      	add	r5, pc
c0de5d00:	e9cd 5000 	strd	r5, r0, [sp]
c0de5d04:	4620      	mov	r0, r4
c0de5d06:	f7ff fac7 	bl	c0de5298 <drawStep>
c0de5d0a:	f001 f942 	bl	c0de6f92 <nbgl_refresh>
c0de5d0e:	b00a      	add	sp, #40	@ 0x28
c0de5d10:	bdb0      	pop	{r4, r5, r7, pc}
c0de5d12:	bf00      	nop
c0de5d14:	00000988 	.word	0x00000988
c0de5d18:	fffff149 	.word	0xfffff149
c0de5d1c:	00001f98 	.word	0x00001f98
c0de5d20:	00001c38 	.word	0x00001c38
c0de5d24:	0000002b 	.word	0x0000002b
c0de5d28:	00000069 	.word	0x00000069

c0de5d2c <settingsCallback>:
c0de5d2c:	b5e0      	push	{r5, r6, r7, lr}
c0de5d2e:	4608      	mov	r0, r1
c0de5d30:	f10d 0107 	add.w	r1, sp, #7
c0de5d34:	f000 f80a 	bl	c0de5d4c <buttonGenericCallback>
c0de5d38:	b130      	cbz	r0, c0de5d48 <settingsCallback+0x1c>
c0de5d3a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5d3e:	2100      	movs	r1, #0
c0de5d40:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5d44:	f7ff bfa4 	b.w	c0de5c90 <displaySettingsPage>
c0de5d48:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5d4c <buttonGenericCallback>:
c0de5d4c:	b5b0      	push	{r4, r5, r7, lr}
c0de5d4e:	b090      	sub	sp, #64	@ 0x40
c0de5d50:	460c      	mov	r4, r1
c0de5d52:	4605      	mov	r5, r0
c0de5d54:	a801      	add	r0, sp, #4
c0de5d56:	2138      	movs	r1, #56	@ 0x38
c0de5d58:	f001 fd3e 	bl	c0de77d8 <__aeabi_memclr>
c0de5d5c:	2d04      	cmp	r5, #4
c0de5d5e:	d00d      	beq.n	c0de5d7c <buttonGenericCallback+0x30>
c0de5d60:	2d01      	cmp	r5, #1
c0de5d62:	d012      	beq.n	c0de5d8a <buttonGenericCallback+0x3e>
c0de5d64:	2d00      	cmp	r5, #0
c0de5d66:	d17c      	bne.n	c0de5e62 <buttonGenericCallback+0x116>
c0de5d68:	483f      	ldr	r0, [pc, #252]	@ (c0de5e68 <buttonGenericCallback+0x11c>)
c0de5d6a:	eb09 0100 	add.w	r1, r9, r0
c0de5d6e:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5d72:	2901      	cmp	r1, #1
c0de5d74:	db1d      	blt.n	c0de5db2 <buttonGenericCallback+0x66>
c0de5d76:	3901      	subs	r1, #1
c0de5d78:	2008      	movs	r0, #8
c0de5d7a:	e013      	b.n	c0de5da4 <buttonGenericCallback+0x58>
c0de5d7c:	4c3a      	ldr	r4, [pc, #232]	@ (c0de5e68 <buttonGenericCallback+0x11c>)
c0de5d7e:	eb09 0004 	add.w	r0, r9, r4
c0de5d82:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de5d84:	b338      	cbz	r0, c0de5dd6 <buttonGenericCallback+0x8a>
c0de5d86:	4780      	blx	r0
c0de5d88:	e06b      	b.n	c0de5e62 <buttonGenericCallback+0x116>
c0de5d8a:	4837      	ldr	r0, [pc, #220]	@ (c0de5e68 <buttonGenericCallback+0x11c>)
c0de5d8c:	eb09 0100 	add.w	r1, r9, r0
c0de5d90:	f991 0035 	ldrsb.w	r0, [r1, #53]	@ 0x35
c0de5d94:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de5d98:	3901      	subs	r1, #1
c0de5d9a:	4281      	cmp	r1, r0
c0de5d9c:	dd61      	ble.n	c0de5e62 <buttonGenericCallback+0x116>
c0de5d9e:	b2c0      	uxtb	r0, r0
c0de5da0:	1c41      	adds	r1, r0, #1
c0de5da2:	2000      	movs	r0, #0
c0de5da4:	4a30      	ldr	r2, [pc, #192]	@ (c0de5e68 <buttonGenericCallback+0x11c>)
c0de5da6:	444a      	add	r2, r9
c0de5da8:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5dac:	7020      	strb	r0, [r4, #0]
c0de5dae:	2001      	movs	r0, #1
c0de5db0:	e058      	b.n	c0de5e64 <buttonGenericCallback+0x118>
c0de5db2:	eb09 0100 	add.w	r1, r9, r0
c0de5db6:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de5dba:	2906      	cmp	r1, #6
c0de5dbc:	d151      	bne.n	c0de5e62 <buttonGenericCallback+0x116>
c0de5dbe:	eb09 0100 	add.w	r1, r9, r0
c0de5dc2:	6d89      	ldr	r1, [r1, #88]	@ 0x58
c0de5dc4:	2900      	cmp	r1, #0
c0de5dc6:	d04c      	beq.n	c0de5e62 <buttonGenericCallback+0x116>
c0de5dc8:	4448      	add	r0, r9
c0de5dca:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5dce:	2801      	cmp	r0, #1
c0de5dd0:	d047      	beq.n	c0de5e62 <buttonGenericCallback+0x116>
c0de5dd2:	2008      	movs	r0, #8
c0de5dd4:	e7ea      	b.n	c0de5dac <buttonGenericCallback+0x60>
c0de5dd6:	eb09 0004 	add.w	r0, r9, r4
c0de5dda:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5dde:	2000      	movs	r0, #0
c0de5de0:	2910      	cmp	r1, #16
c0de5de2:	d83f      	bhi.n	c0de5e64 <buttonGenericCallback+0x118>
c0de5de4:	2201      	movs	r2, #1
c0de5de6:	fa02 f101 	lsl.w	r1, r2, r1
c0de5dea:	4a20      	ldr	r2, [pc, #128]	@ (c0de5e6c <buttonGenericCallback+0x120>)
c0de5dec:	4211      	tst	r1, r2
c0de5dee:	d039      	beq.n	c0de5e64 <buttonGenericCallback+0x118>
c0de5df0:	eb09 0004 	add.w	r0, r9, r4
c0de5df4:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de5df8:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5dfc:	aa01      	add	r2, sp, #4
c0de5dfe:	f7ff fe87 	bl	c0de5b10 <getContentElemAtIdx>
c0de5e02:	b370      	cbz	r0, c0de5e62 <buttonGenericCallback+0x116>
c0de5e04:	7801      	ldrb	r1, [r0, #0]
c0de5e06:	4602      	mov	r2, r0
c0de5e08:	2000      	movs	r0, #0
c0de5e0a:	b359      	cbz	r1, c0de5e64 <buttonGenericCallback+0x118>
c0de5e0c:	290a      	cmp	r1, #10
c0de5e0e:	d009      	beq.n	c0de5e24 <buttonGenericCallback+0xd8>
c0de5e10:	2907      	cmp	r1, #7
c0de5e12:	d00f      	beq.n	c0de5e34 <buttonGenericCallback+0xe8>
c0de5e14:	2909      	cmp	r1, #9
c0de5e16:	d011      	beq.n	c0de5e3c <buttonGenericCallback+0xf0>
c0de5e18:	2903      	cmp	r1, #3
c0de5e1a:	f04f 0100 	mov.w	r1, #0
c0de5e1e:	d112      	bne.n	c0de5e46 <buttonGenericCallback+0xfa>
c0de5e20:	7c10      	ldrb	r0, [r2, #16]
c0de5e22:	e005      	b.n	c0de5e30 <buttonGenericCallback+0xe4>
c0de5e24:	eb09 0004 	add.w	r0, r9, r4
c0de5e28:	6891      	ldr	r1, [r2, #8]
c0de5e2a:	f990 0035 	ldrsb.w	r0, [r0, #53]	@ 0x35
c0de5e2e:	5c08      	ldrb	r0, [r1, r0]
c0de5e30:	2100      	movs	r1, #0
c0de5e32:	e008      	b.n	c0de5e46 <buttonGenericCallback+0xfa>
c0de5e34:	6850      	ldr	r0, [r2, #4]
c0de5e36:	2100      	movs	r1, #0
c0de5e38:	7a40      	ldrb	r0, [r0, #9]
c0de5e3a:	e004      	b.n	c0de5e46 <buttonGenericCallback+0xfa>
c0de5e3c:	eb09 0004 	add.w	r0, r9, r4
c0de5e40:	f890 1035 	ldrb.w	r1, [r0, #53]	@ 0x35
c0de5e44:	7ad0      	ldrb	r0, [r2, #11]
c0de5e46:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de5e48:	b133      	cbz	r3, c0de5e58 <buttonGenericCallback+0x10c>
c0de5e4a:	eb09 0104 	add.w	r1, r9, r4
c0de5e4e:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de5e52:	2100      	movs	r1, #0
c0de5e54:	4798      	blx	r3
c0de5e56:	e004      	b.n	c0de5e62 <buttonGenericCallback+0x116>
c0de5e58:	eb09 0204 	add.w	r2, r9, r4
c0de5e5c:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de5e5e:	b102      	cbz	r2, c0de5e62 <buttonGenericCallback+0x116>
c0de5e60:	4790      	blx	r2
c0de5e62:	2000      	movs	r0, #0
c0de5e64:	b010      	add	sp, #64	@ 0x40
c0de5e66:	bdb0      	pop	{r4, r5, r7, pc}
c0de5e68:	00000988 	.word	0x00000988
c0de5e6c:	0001c008 	.word	0x0001c008

c0de5e70 <displayHomePage>:
c0de5e70:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5e74:	4680      	mov	r8, r0
c0de5e76:	4832      	ldr	r0, [pc, #200]	@ (c0de5f40 <displayHomePage+0xd0>)
c0de5e78:	2200      	movs	r2, #0
c0de5e7a:	eb09 0100 	add.w	r1, r9, r0
c0de5e7e:	6c8f      	ldr	r7, [r1, #72]	@ 0x48
c0de5e80:	6d0d      	ldr	r5, [r1, #80]	@ 0x50
c0de5e82:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5e84:	2202      	movs	r2, #2
c0de5e86:	2d00      	cmp	r5, #0
c0de5e88:	463e      	mov	r6, r7
c0de5e8a:	bf08      	it	eq
c0de5e8c:	2201      	moveq	r2, #1
c0de5e8e:	2f00      	cmp	r7, #0
c0de5e90:	bf18      	it	ne
c0de5e92:	2601      	movne	r6, #1
c0de5e94:	f991 3035 	ldrsb.w	r3, [r1, #53]	@ 0x35
c0de5e98:	b183      	cbz	r3, c0de5ebc <displayHomePage+0x4c>
c0de5e9a:	2401      	movs	r4, #1
c0de5e9c:	2d00      	cmp	r5, #0
c0de5e9e:	bf08      	it	eq
c0de5ea0:	24ff      	moveq	r4, #255	@ 0xff
c0de5ea2:	429c      	cmp	r4, r3
c0de5ea4:	d111      	bne.n	c0de5eca <displayHomePage+0x5a>
c0de5ea6:	eb09 0400 	add.w	r4, r9, r0
c0de5eaa:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de5eae:	f001 fa73 	bl	c0de7398 <pic>
c0de5eb2:	4602      	mov	r2, r0
c0de5eb4:	6d20      	ldr	r0, [r4, #80]	@ 0x50
c0de5eb6:	6880      	ldr	r0, [r0, #8]
c0de5eb8:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de5eba:	e004      	b.n	c0de5ec6 <displayHomePage+0x56>
c0de5ebc:	eb09 0100 	add.w	r1, r9, r0
c0de5ec0:	e9d1 5210 	ldrd	r5, r2, [r1, #64]	@ 0x40
c0de5ec4:	b312      	cbz	r2, c0de5f0c <displayHomePage+0x9c>
c0de5ec6:	2300      	movs	r3, #0
c0de5ec8:	e02c      	b.n	c0de5f24 <displayHomePage+0xb4>
c0de5eca:	2f00      	cmp	r7, #0
c0de5ecc:	4614      	mov	r4, r2
c0de5ece:	bf08      	it	eq
c0de5ed0:	24ff      	moveq	r4, #255	@ 0xff
c0de5ed2:	429c      	cmp	r4, r3
c0de5ed4:	d109      	bne.n	c0de5eea <displayHomePage+0x7a>
c0de5ed6:	491c      	ldr	r1, [pc, #112]	@ (c0de5f48 <displayHomePage+0xd8>)
c0de5ed8:	4448      	add	r0, r9
c0de5eda:	2300      	movs	r3, #0
c0de5edc:	4479      	add	r1, pc
c0de5ede:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5ee0:	4d1a      	ldr	r5, [pc, #104]	@ (c0de5f4c <displayHomePage+0xdc>)
c0de5ee2:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5f50 <displayHomePage+0xe0>)
c0de5ee4:	447d      	add	r5, pc
c0de5ee6:	447a      	add	r2, pc
c0de5ee8:	e01c      	b.n	c0de5f24 <displayHomePage+0xb4>
c0de5eea:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5eec:	4432      	add	r2, r6
c0de5eee:	4448      	add	r0, r9
c0de5ef0:	2900      	cmp	r1, #0
c0de5ef2:	bf08      	it	eq
c0de5ef4:	22ff      	moveq	r2, #255	@ 0xff
c0de5ef6:	429a      	cmp	r2, r3
c0de5ef8:	d10d      	bne.n	c0de5f16 <displayHomePage+0xa6>
c0de5efa:	4916      	ldr	r1, [pc, #88]	@ (c0de5f54 <displayHomePage+0xe4>)
c0de5efc:	2300      	movs	r3, #0
c0de5efe:	4479      	add	r1, pc
c0de5f00:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5f02:	4d15      	ldr	r5, [pc, #84]	@ (c0de5f58 <displayHomePage+0xe8>)
c0de5f04:	4a15      	ldr	r2, [pc, #84]	@ (c0de5f5c <displayHomePage+0xec>)
c0de5f06:	447d      	add	r5, pc
c0de5f08:	447a      	add	r2, pc
c0de5f0a:	e00b      	b.n	c0de5f24 <displayHomePage+0xb4>
c0de5f0c:	4448      	add	r0, r9
c0de5f0e:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
c0de5f10:	4b0c      	ldr	r3, [pc, #48]	@ (c0de5f44 <displayHomePage+0xd4>)
c0de5f12:	447b      	add	r3, pc
c0de5f14:	e006      	b.n	c0de5f24 <displayHomePage+0xb4>
c0de5f16:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de5f18:	2300      	movs	r3, #0
c0de5f1a:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5f1c:	4d10      	ldr	r5, [pc, #64]	@ (c0de5f60 <displayHomePage+0xf0>)
c0de5f1e:	4a11      	ldr	r2, [pc, #68]	@ (c0de5f64 <displayHomePage+0xf4>)
c0de5f20:	447d      	add	r5, pc
c0de5f22:	447a      	add	r2, pc
c0de5f24:	4910      	ldr	r1, [pc, #64]	@ (c0de5f68 <displayHomePage+0xf8>)
c0de5f26:	2000      	movs	r0, #0
c0de5f28:	9002      	str	r0, [sp, #8]
c0de5f2a:	4479      	add	r1, pc
c0de5f2c:	e9cd 1000 	strd	r1, r0, [sp]
c0de5f30:	4640      	mov	r0, r8
c0de5f32:	4629      	mov	r1, r5
c0de5f34:	f7ff f9b0 	bl	c0de5298 <drawStep>
c0de5f38:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5f3c:	f001 b829 	b.w	c0de6f92 <nbgl_refresh>
c0de5f40:	00000988 	.word	0x00000988
c0de5f44:	00001e2b 	.word	0x00001e2b
c0de5f48:	0000008d 	.word	0x0000008d
c0de5f4c:	00001a65 	.word	0x00001a65
c0de5f50:	00001d0e 	.word	0x00001d0e
c0de5f54:	00000073 	.word	0x00000073
c0de5f58:	000019ae 	.word	0x000019ae
c0de5f5c:	00001dbf 	.word	0x00001dbf
c0de5f60:	000019b7 	.word	0x000019b7
c0de5f64:	00001e28 	.word	0x00001e28
c0de5f68:	0000006b 	.word	0x0000006b

c0de5f6c <startUseCaseSettings>:
c0de5f6c:	2000      	movs	r0, #0
c0de5f6e:	f7fe bf1f 	b.w	c0de4db0 <startUseCaseSettingsAtPage>
	...

c0de5f74 <startUseCaseInfo>:
c0de5f74:	4807      	ldr	r0, [pc, #28]	@ (c0de5f94 <startUseCaseInfo+0x20>)
c0de5f76:	210d      	movs	r1, #13
c0de5f78:	4448      	add	r0, r9
c0de5f7a:	f880 102c 	strb.w	r1, [r0, #44]	@ 0x2c
c0de5f7e:	2100      	movs	r1, #0
c0de5f80:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de5f84:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de5f86:	7b09      	ldrb	r1, [r1, #12]
c0de5f88:	3101      	adds	r1, #1
c0de5f8a:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de5f8e:	2000      	movs	r0, #0
c0de5f90:	f000 b810 	b.w	c0de5fb4 <displayInfoPage>
c0de5f94:	00000988 	.word	0x00000988

c0de5f98 <homeCallback>:
c0de5f98:	b5e0      	push	{r5, r6, r7, lr}
c0de5f9a:	4608      	mov	r0, r1
c0de5f9c:	f10d 0107 	add.w	r1, sp, #7
c0de5fa0:	f7ff fed4 	bl	c0de5d4c <buttonGenericCallback>
c0de5fa4:	b128      	cbz	r0, c0de5fb2 <homeCallback+0x1a>
c0de5fa6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5faa:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5fae:	f7ff bf5f 	b.w	c0de5e70 <displayHomePage>
c0de5fb2:	bd8c      	pop	{r2, r3, r7, pc}

c0de5fb4 <displayInfoPage>:
c0de5fb4:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5fb6:	4604      	mov	r4, r0
c0de5fb8:	4816      	ldr	r0, [pc, #88]	@ (c0de6014 <displayInfoPage+0x60>)
c0de5fba:	f000 fbd5 	bl	c0de6768 <OUTLINED_FUNCTION_1>
c0de5fbe:	dd11      	ble.n	c0de5fe4 <displayInfoPage+0x30>
c0de5fc0:	eb09 0700 	add.w	r7, r9, r0
c0de5fc4:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de5fc6:	6800      	ldr	r0, [r0, #0]
c0de5fc8:	4e13      	ldr	r6, [pc, #76]	@ (c0de6018 <displayInfoPage+0x64>)
c0de5fca:	447e      	add	r6, pc
c0de5fcc:	47b0      	blx	r6
c0de5fce:	f000 fc04 	bl	c0de67da <OUTLINED_FUNCTION_10>
c0de5fd2:	4605      	mov	r5, r0
c0de5fd4:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de5fd6:	6840      	ldr	r0, [r0, #4]
c0de5fd8:	47b0      	blx	r6
c0de5fda:	f000 fbfe 	bl	c0de67da <OUTLINED_FUNCTION_10>
c0de5fde:	4603      	mov	r3, r0
c0de5fe0:	2100      	movs	r1, #0
c0de5fe2:	e008      	b.n	c0de5ff6 <displayInfoPage+0x42>
c0de5fe4:	490d      	ldr	r1, [pc, #52]	@ (c0de601c <displayInfoPage+0x68>)
c0de5fe6:	4448      	add	r0, r9
c0de5fe8:	2300      	movs	r3, #0
c0de5fea:	4479      	add	r1, pc
c0de5fec:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5fee:	490c      	ldr	r1, [pc, #48]	@ (c0de6020 <displayInfoPage+0x6c>)
c0de5ff0:	4d0c      	ldr	r5, [pc, #48]	@ (c0de6024 <displayInfoPage+0x70>)
c0de5ff2:	4479      	add	r1, pc
c0de5ff4:	447d      	add	r5, pc
c0de5ff6:	4e0c      	ldr	r6, [pc, #48]	@ (c0de6028 <displayInfoPage+0x74>)
c0de5ff8:	2002      	movs	r0, #2
c0de5ffa:	2200      	movs	r2, #0
c0de5ffc:	9002      	str	r0, [sp, #8]
c0de5ffe:	4620      	mov	r0, r4
c0de6000:	447e      	add	r6, pc
c0de6002:	e9cd 6200 	strd	r6, r2, [sp]
c0de6006:	462a      	mov	r2, r5
c0de6008:	f7ff f946 	bl	c0de5298 <drawStep>
c0de600c:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de6010:	f000 bfbf 	b.w	c0de6f92 <nbgl_refresh>
c0de6014:	00000988 	.word	0x00000988
c0de6018:	000013cb 	.word	0x000013cb
c0de601c:	ffffee3b 	.word	0xffffee3b
c0de6020:	00001934 	.word	0x00001934
c0de6024:	00001c8c 	.word	0x00001c8c
c0de6028:	00000029 	.word	0x00000029

c0de602c <infoCallback>:
c0de602c:	b5e0      	push	{r5, r6, r7, lr}
c0de602e:	4608      	mov	r0, r1
c0de6030:	f10d 0107 	add.w	r1, sp, #7
c0de6034:	f7ff fe8a 	bl	c0de5d4c <buttonGenericCallback>
c0de6038:	b128      	cbz	r0, c0de6046 <infoCallback+0x1a>
c0de603a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de603e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6042:	f7ff bfb7 	b.w	c0de5fb4 <displayInfoPage>
c0de6046:	bd8c      	pop	{r2, r3, r7, pc}

c0de6048 <displayWarningStep>:
c0de6048:	b510      	push	{r4, lr}
c0de604a:	b088      	sub	sp, #32
c0de604c:	2000      	movs	r0, #0
c0de604e:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de6052:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de6056:	4839      	ldr	r0, [pc, #228]	@ (c0de613c <displayWarningStep+0xf4>)
c0de6058:	eb09 0200 	add.w	r2, r9, r0
c0de605c:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6060:	69d2      	ldr	r2, [r2, #28]
c0de6062:	6a93      	ldr	r3, [r2, #40]	@ 0x28
c0de6064:	b183      	cbz	r3, c0de6088 <displayWarningStep+0x40>
c0de6066:	b979      	cbnz	r1, c0de6088 <displayWarningStep+0x40>
c0de6068:	2000      	movs	r0, #0
c0de606a:	685b      	ldr	r3, [r3, #4]
c0de606c:	2200      	movs	r2, #0
c0de606e:	e9cd 0000 	strd	r0, r0, [sp]
c0de6072:	9002      	str	r0, [sp, #8]
c0de6074:	2001      	movs	r0, #1
c0de6076:	4936      	ldr	r1, [pc, #216]	@ (c0de6150 <displayWarningStep+0x108>)
c0de6078:	4479      	add	r1, pc
c0de607a:	f7fe fb43 	bl	c0de4704 <nbgl_stepDrawText>
c0de607e:	b008      	add	sp, #32
c0de6080:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6084:	f000 bf85 	b.w	c0de6f92 <nbgl_refresh>
c0de6088:	6813      	ldr	r3, [r2, #0]
c0de608a:	06dc      	lsls	r4, r3, #27
c0de608c:	d411      	bmi.n	c0de60b2 <displayWarningStep+0x6a>
c0de608e:	2b00      	cmp	r3, #0
c0de6090:	d151      	bne.n	c0de6136 <displayWarningStep+0xee>
c0de6092:	69d3      	ldr	r3, [r2, #28]
c0de6094:	2b00      	cmp	r3, #0
c0de6096:	d04e      	beq.n	c0de6136 <displayWarningStep+0xee>
c0de6098:	eb09 0400 	add.w	r4, r9, r0
c0de609c:	f894 4028 	ldrb.w	r4, [r4, #40]	@ 0x28
c0de60a0:	42a1      	cmp	r1, r4
c0de60a2:	d128      	bne.n	c0de60f6 <displayWarningStep+0xae>
c0de60a4:	6858      	ldr	r0, [r3, #4]
c0de60a6:	691a      	ldr	r2, [r3, #16]
c0de60a8:	699b      	ldr	r3, [r3, #24]
c0de60aa:	9006      	str	r0, [sp, #24]
c0de60ac:	e9cd 2304 	strd	r2, r3, [sp, #16]
c0de60b0:	e00e      	b.n	c0de60d0 <displayWarningStep+0x88>
c0de60b2:	eb09 0200 	add.w	r2, r9, r0
c0de60b6:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de60ba:	4291      	cmp	r1, r2
c0de60bc:	d10d      	bne.n	c0de60da <displayWarningStep+0x92>
c0de60be:	4820      	ldr	r0, [pc, #128]	@ (c0de6140 <displayWarningStep+0xf8>)
c0de60c0:	4478      	add	r0, pc
c0de60c2:	9005      	str	r0, [sp, #20]
c0de60c4:	481f      	ldr	r0, [pc, #124]	@ (c0de6144 <displayWarningStep+0xfc>)
c0de60c6:	4478      	add	r0, pc
c0de60c8:	9004      	str	r0, [sp, #16]
c0de60ca:	481f      	ldr	r0, [pc, #124]	@ (c0de6148 <displayWarningStep+0x100>)
c0de60cc:	4478      	add	r0, pc
c0de60ce:	9006      	str	r0, [sp, #24]
c0de60d0:	2003      	movs	r0, #3
c0de60d2:	2900      	cmp	r1, #0
c0de60d4:	bf08      	it	eq
c0de60d6:	2001      	moveq	r0, #1
c0de60d8:	e020      	b.n	c0de611c <displayWarningStep+0xd4>
c0de60da:	4448      	add	r0, r9
c0de60dc:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de60e0:	3801      	subs	r0, #1
c0de60e2:	4288      	cmp	r0, r1
c0de60e4:	d119      	bne.n	c0de611a <displayWarningStep+0xd2>
c0de60e6:	aa04      	add	r2, sp, #16
c0de60e8:	2000      	movs	r0, #0
c0de60ea:	f102 0108 	add.w	r1, r2, #8
c0de60ee:	f000 f877 	bl	c0de61e0 <getLastPageInfo>
c0de60f2:	200a      	movs	r0, #10
c0de60f4:	e012      	b.n	c0de611c <displayWarningStep+0xd4>
c0de60f6:	4448      	add	r0, r9
c0de60f8:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de60fc:	3801      	subs	r0, #1
c0de60fe:	4288      	cmp	r0, r1
c0de6100:	d10b      	bne.n	c0de611a <displayWarningStep+0xd2>
c0de6102:	6950      	ldr	r0, [r2, #20]
c0de6104:	7901      	ldrb	r1, [r0, #4]
c0de6106:	2901      	cmp	r1, #1
c0de6108:	d115      	bne.n	c0de6136 <displayWarningStep+0xee>
c0de610a:	68c1      	ldr	r1, [r0, #12]
c0de610c:	6982      	ldr	r2, [r0, #24]
c0de610e:	6a00      	ldr	r0, [r0, #32]
c0de6110:	e9cd 2004 	strd	r2, r0, [sp, #16]
c0de6114:	2003      	movs	r0, #3
c0de6116:	9106      	str	r1, [sp, #24]
c0de6118:	e000      	b.n	c0de611c <displayWarningStep+0xd4>
c0de611a:	2000      	movs	r0, #0
c0de611c:	2101      	movs	r1, #1
c0de611e:	2200      	movs	r2, #0
c0de6120:	f88d 101d 	strb.w	r1, [sp, #29]
c0de6124:	2100      	movs	r1, #0
c0de6126:	9100      	str	r1, [sp, #0]
c0de6128:	4908      	ldr	r1, [pc, #32]	@ (c0de614c <displayWarningStep+0x104>)
c0de612a:	ab04      	add	r3, sp, #16
c0de612c:	4479      	add	r1, pc
c0de612e:	f7fe fc2f 	bl	c0de4990 <nbgl_stepDrawCenteredInfo>
c0de6132:	f000 ff2e 	bl	c0de6f92 <nbgl_refresh>
c0de6136:	b008      	add	sp, #32
c0de6138:	bd10      	pop	{r4, pc}
c0de613a:	bf00      	nop
c0de613c:	00000988 	.word	0x00000988
c0de6140:	00001a2f 	.word	0x00001a2f
c0de6144:	00001b65 	.word	0x00001b65
c0de6148:	0000191c 	.word	0x0000191c
c0de614c:	00000025 	.word	0x00000025
c0de6150:	000000d9 	.word	0x000000d9

c0de6154 <warningNavigate>:
c0de6154:	2904      	cmp	r1, #4
c0de6156:	d009      	beq.n	c0de616c <warningNavigate+0x18>
c0de6158:	2901      	cmp	r1, #1
c0de615a:	d024      	beq.n	c0de61a6 <warningNavigate+0x52>
c0de615c:	bb11      	cbnz	r1, c0de61a4 <warningNavigate+0x50>
c0de615e:	481f      	ldr	r0, [pc, #124]	@ (c0de61dc <warningNavigate+0x88>)
c0de6160:	4448      	add	r0, r9
c0de6162:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de6166:	b390      	cbz	r0, c0de61ce <warningNavigate+0x7a>
c0de6168:	3801      	subs	r0, #1
c0de616a:	e027      	b.n	c0de61bc <warningNavigate+0x68>
c0de616c:	481b      	ldr	r0, [pc, #108]	@ (c0de61dc <warningNavigate+0x88>)
c0de616e:	eb09 0100 	add.w	r1, r9, r0
c0de6172:	69c9      	ldr	r1, [r1, #28]
c0de6174:	7809      	ldrb	r1, [r1, #0]
c0de6176:	06c9      	lsls	r1, r1, #27
c0de6178:	d514      	bpl.n	c0de61a4 <warningNavigate+0x50>
c0de617a:	eb09 0200 	add.w	r2, r9, r0
c0de617e:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6182:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de6186:	4291      	cmp	r1, r2
c0de6188:	bf08      	it	eq
c0de618a:	f000 b8bd 	beq.w	c0de6308 <launchReviewAfterWarning>
c0de618e:	eb09 0200 	add.w	r2, r9, r0
c0de6192:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de6196:	3a01      	subs	r2, #1
c0de6198:	428a      	cmp	r2, r1
c0de619a:	d103      	bne.n	c0de61a4 <warningNavigate+0x50>
c0de619c:	4448      	add	r0, r9
c0de619e:	6a01      	ldr	r1, [r0, #32]
c0de61a0:	2000      	movs	r0, #0
c0de61a2:	4708      	bx	r1
c0de61a4:	4770      	bx	lr
c0de61a6:	480d      	ldr	r0, [pc, #52]	@ (c0de61dc <warningNavigate+0x88>)
c0de61a8:	eb09 0200 	add.w	r2, r9, r0
c0de61ac:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de61b0:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de61b4:	3a01      	subs	r2, #1
c0de61b6:	428a      	cmp	r2, r1
c0de61b8:	dd05      	ble.n	c0de61c6 <warningNavigate+0x72>
c0de61ba:	1c48      	adds	r0, r1, #1
c0de61bc:	4907      	ldr	r1, [pc, #28]	@ (c0de61dc <warningNavigate+0x88>)
c0de61be:	4449      	add	r1, r9
c0de61c0:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de61c4:	e003      	b.n	c0de61ce <warningNavigate+0x7a>
c0de61c6:	4448      	add	r0, r9
c0de61c8:	69c0      	ldr	r0, [r0, #28]
c0de61ca:	6801      	ldr	r1, [r0, #0]
c0de61cc:	b109      	cbz	r1, c0de61d2 <warningNavigate+0x7e>
c0de61ce:	f7ff bf3b 	b.w	c0de6048 <displayWarningStep>
c0de61d2:	69c0      	ldr	r0, [r0, #28]
c0de61d4:	2800      	cmp	r0, #0
c0de61d6:	d0fa      	beq.n	c0de61ce <warningNavigate+0x7a>
c0de61d8:	f000 b896 	b.w	c0de6308 <launchReviewAfterWarning>
c0de61dc:	00000988 	.word	0x00000988

c0de61e0 <getLastPageInfo>:
c0de61e0:	b170      	cbz	r0, c0de6200 <getLastPageInfo+0x20>
c0de61e2:	4833      	ldr	r0, [pc, #204]	@ (c0de62b0 <getLastPageInfo+0xd0>)
c0de61e4:	4478      	add	r0, pc
c0de61e6:	6008      	str	r0, [r1, #0]
c0de61e8:	4830      	ldr	r0, [pc, #192]	@ (c0de62ac <getLastPageInfo+0xcc>)
c0de61ea:	eb09 0100 	add.w	r1, r9, r0
c0de61ee:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de61f2:	2904      	cmp	r1, #4
c0de61f4:	d113      	bne.n	c0de621e <getLastPageInfo+0x3e>
c0de61f6:	482f      	ldr	r0, [pc, #188]	@ (c0de62b4 <getLastPageInfo+0xd4>)
c0de61f8:	492f      	ldr	r1, [pc, #188]	@ (c0de62b8 <getLastPageInfo+0xd8>)
c0de61fa:	4478      	add	r0, pc
c0de61fc:	4479      	add	r1, pc
c0de61fe:	e04f      	b.n	c0de62a0 <getLastPageInfo+0xc0>
c0de6200:	4838      	ldr	r0, [pc, #224]	@ (c0de62e4 <getLastPageInfo+0x104>)
c0de6202:	4478      	add	r0, pc
c0de6204:	6008      	str	r0, [r1, #0]
c0de6206:	4829      	ldr	r0, [pc, #164]	@ (c0de62ac <getLastPageInfo+0xcc>)
c0de6208:	eb09 0100 	add.w	r1, r9, r0
c0de620c:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de6210:	2904      	cmp	r1, #4
c0de6212:	d10b      	bne.n	c0de622c <getLastPageInfo+0x4c>
c0de6214:	4834      	ldr	r0, [pc, #208]	@ (c0de62e8 <getLastPageInfo+0x108>)
c0de6216:	4935      	ldr	r1, [pc, #212]	@ (c0de62ec <getLastPageInfo+0x10c>)
c0de6218:	4478      	add	r0, pc
c0de621a:	4479      	add	r1, pc
c0de621c:	e040      	b.n	c0de62a0 <getLastPageInfo+0xc0>
c0de621e:	eb09 0100 	add.w	r1, r9, r0
c0de6222:	6d09      	ldr	r1, [r1, #80]	@ 0x50
c0de6224:	b171      	cbz	r1, c0de6244 <getLastPageInfo+0x64>
c0de6226:	4825      	ldr	r0, [pc, #148]	@ (c0de62bc <getLastPageInfo+0xdc>)
c0de6228:	4478      	add	r0, pc
c0de622a:	e039      	b.n	c0de62a0 <getLastPageInfo+0xc0>
c0de622c:	4448      	add	r0, r9
c0de622e:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de6230:	f010 0007 	ands.w	r0, r0, #7
c0de6234:	d017      	beq.n	c0de6266 <getLastPageInfo+0x86>
c0de6236:	2801      	cmp	r0, #1
c0de6238:	d11a      	bne.n	c0de6270 <getLastPageInfo+0x90>
c0de623a:	482f      	ldr	r0, [pc, #188]	@ (c0de62f8 <getLastPageInfo+0x118>)
c0de623c:	492f      	ldr	r1, [pc, #188]	@ (c0de62fc <getLastPageInfo+0x11c>)
c0de623e:	4478      	add	r0, pc
c0de6240:	4479      	add	r1, pc
c0de6242:	e02d      	b.n	c0de62a0 <getLastPageInfo+0xc0>
c0de6244:	4448      	add	r0, r9
c0de6246:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de6248:	f000 0107 	and.w	r1, r0, #7
c0de624c:	2901      	cmp	r1, #1
c0de624e:	d014      	beq.n	c0de627a <getLastPageInfo+0x9a>
c0de6250:	b9e9      	cbnz	r1, c0de628e <getLastPageInfo+0xae>
c0de6252:	0640      	lsls	r0, r0, #25
c0de6254:	481a      	ldr	r0, [pc, #104]	@ (c0de62c0 <getLastPageInfo+0xe0>)
c0de6256:	491b      	ldr	r1, [pc, #108]	@ (c0de62c4 <getLastPageInfo+0xe4>)
c0de6258:	4478      	add	r0, pc
c0de625a:	4479      	add	r1, pc
c0de625c:	bf58      	it	pl
c0de625e:	4601      	movpl	r1, r0
c0de6260:	4819      	ldr	r0, [pc, #100]	@ (c0de62c8 <getLastPageInfo+0xe8>)
c0de6262:	4478      	add	r0, pc
c0de6264:	e01c      	b.n	c0de62a0 <getLastPageInfo+0xc0>
c0de6266:	4822      	ldr	r0, [pc, #136]	@ (c0de62f0 <getLastPageInfo+0x110>)
c0de6268:	4922      	ldr	r1, [pc, #136]	@ (c0de62f4 <getLastPageInfo+0x114>)
c0de626a:	4478      	add	r0, pc
c0de626c:	4479      	add	r1, pc
c0de626e:	e017      	b.n	c0de62a0 <getLastPageInfo+0xc0>
c0de6270:	4823      	ldr	r0, [pc, #140]	@ (c0de6300 <getLastPageInfo+0x120>)
c0de6272:	4924      	ldr	r1, [pc, #144]	@ (c0de6304 <getLastPageInfo+0x124>)
c0de6274:	4478      	add	r0, pc
c0de6276:	4479      	add	r1, pc
c0de6278:	e012      	b.n	c0de62a0 <getLastPageInfo+0xc0>
c0de627a:	0640      	lsls	r0, r0, #25
c0de627c:	4813      	ldr	r0, [pc, #76]	@ (c0de62cc <getLastPageInfo+0xec>)
c0de627e:	4914      	ldr	r1, [pc, #80]	@ (c0de62d0 <getLastPageInfo+0xf0>)
c0de6280:	4478      	add	r0, pc
c0de6282:	4479      	add	r1, pc
c0de6284:	bf58      	it	pl
c0de6286:	4601      	movpl	r1, r0
c0de6288:	4812      	ldr	r0, [pc, #72]	@ (c0de62d4 <getLastPageInfo+0xf4>)
c0de628a:	4478      	add	r0, pc
c0de628c:	e008      	b.n	c0de62a0 <getLastPageInfo+0xc0>
c0de628e:	0640      	lsls	r0, r0, #25
c0de6290:	4811      	ldr	r0, [pc, #68]	@ (c0de62d8 <getLastPageInfo+0xf8>)
c0de6292:	4912      	ldr	r1, [pc, #72]	@ (c0de62dc <getLastPageInfo+0xfc>)
c0de6294:	4478      	add	r0, pc
c0de6296:	4479      	add	r1, pc
c0de6298:	bf58      	it	pl
c0de629a:	4601      	movpl	r1, r0
c0de629c:	4810      	ldr	r0, [pc, #64]	@ (c0de62e0 <getLastPageInfo+0x100>)
c0de629e:	4478      	add	r0, pc
c0de62a0:	6011      	str	r1, [r2, #0]
c0de62a2:	4902      	ldr	r1, [pc, #8]	@ (c0de62ac <getLastPageInfo+0xcc>)
c0de62a4:	4449      	add	r1, r9
c0de62a6:	6388      	str	r0, [r1, #56]	@ 0x38
c0de62a8:	4770      	bx	lr
c0de62aa:	bf00      	nop
c0de62ac:	00000988 	.word	0x00000988
c0de62b0:	000017e1 	.word	0x000017e1
c0de62b4:	00000143 	.word	0x00000143
c0de62b8:	00001b57 	.word	0x00001b57
c0de62bc:	00000115 	.word	0x00000115
c0de62c0:	00001906 	.word	0x00001906
c0de62c4:	000019a7 	.word	0x000019a7
c0de62c8:	000000db 	.word	0x000000db
c0de62cc:	000018c2 	.word	0x000018c2
c0de62d0:	00001900 	.word	0x00001900
c0de62d4:	000000b3 	.word	0x000000b3
c0de62d8:	00001a3c 	.word	0x00001a3c
c0de62dc:	000019a9 	.word	0x000019a9
c0de62e0:	0000009f 	.word	0x0000009f
c0de62e4:	0000176a 	.word	0x0000176a
c0de62e8:	00000139 	.word	0x00000139
c0de62ec:	000019ab 	.word	0x000019ab
c0de62f0:	000000e7 	.word	0x000000e7
c0de62f4:	00001903 	.word	0x00001903
c0de62f8:	00000113 	.word	0x00000113
c0de62fc:	00001a9f 	.word	0x00001a9f
c0de6300:	000000dd 	.word	0x000000dd
c0de6304:	00001a78 	.word	0x00001a78

c0de6308 <launchReviewAfterWarning>:
c0de6308:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de630a:	480c      	ldr	r0, [pc, #48]	@ (c0de633c <launchReviewAfterWarning+0x34>)
c0de630c:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6310:	2905      	cmp	r1, #5
c0de6312:	d00d      	beq.n	c0de6330 <launchReviewAfterWarning+0x28>
c0de6314:	2902      	cmp	r1, #2
c0de6316:	bf18      	it	ne
c0de6318:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de631a:	4448      	add	r0, r9
c0de631c:	1d06      	adds	r6, r0, #4
c0de631e:	6a00      	ldr	r0, [r0, #32]
c0de6320:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de6322:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de6326:	9003      	str	r0, [sp, #12]
c0de6328:	2002      	movs	r0, #2
c0de632a:	f7fe fdd3 	bl	c0de4ed4 <useCaseReview>
c0de632e:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de6330:	2000      	movs	r0, #0
c0de6332:	b004      	add	sp, #16
c0de6334:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6338:	f7ff b8ca 	b.w	c0de54d0 <displayStreamingReviewPage>
c0de633c:	00000988 	.word	0x00000988

c0de6340 <onReviewAccept>:
c0de6340:	4803      	ldr	r0, [pc, #12]	@ (c0de6350 <onReviewAccept+0x10>)
c0de6342:	4448      	add	r0, r9
c0de6344:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de6346:	b109      	cbz	r1, c0de634c <onReviewAccept+0xc>
c0de6348:	2001      	movs	r0, #1
c0de634a:	4708      	bx	r1
c0de634c:	4770      	bx	lr
c0de634e:	bf00      	nop
c0de6350:	00000988 	.word	0x00000988

c0de6354 <onReviewReject>:
c0de6354:	4803      	ldr	r0, [pc, #12]	@ (c0de6364 <onReviewReject+0x10>)
c0de6356:	4448      	add	r0, r9
c0de6358:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de635a:	b109      	cbz	r1, c0de6360 <onReviewReject+0xc>
c0de635c:	2000      	movs	r0, #0
c0de635e:	4708      	bx	r1
c0de6360:	4770      	bx	lr
c0de6362:	bf00      	nop
c0de6364:	00000988 	.word	0x00000988

c0de6368 <buttonSkipCallback>:
c0de6368:	b5b0      	push	{r4, r5, r7, lr}
c0de636a:	2904      	cmp	r1, #4
c0de636c:	d00a      	beq.n	c0de6384 <buttonSkipCallback+0x1c>
c0de636e:	2901      	cmp	r1, #1
c0de6370:	d017      	beq.n	c0de63a2 <buttonSkipCallback+0x3a>
c0de6372:	bbb9      	cbnz	r1, c0de63e4 <buttonSkipCallback+0x7c>
c0de6374:	4829      	ldr	r0, [pc, #164]	@ (c0de641c <buttonSkipCallback+0xb4>)
c0de6376:	eb09 0100 	add.w	r1, r9, r0
c0de637a:	f891 105e 	ldrb.w	r1, [r1, #94]	@ 0x5e
c0de637e:	b391      	cbz	r1, c0de63e6 <buttonSkipCallback+0x7e>
c0de6380:	2008      	movs	r0, #8
c0de6382:	e02a      	b.n	c0de63da <buttonSkipCallback+0x72>
c0de6384:	4825      	ldr	r0, [pc, #148]	@ (c0de641c <buttonSkipCallback+0xb4>)
c0de6386:	eb09 0100 	add.w	r1, r9, r0
c0de638a:	4448      	add	r0, r9
c0de638c:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de6390:	2900      	cmp	r1, #0
c0de6392:	d03f      	beq.n	c0de6414 <buttonSkipCallback+0xac>
c0de6394:	f890 1034 	ldrb.w	r1, [r0, #52]	@ 0x34
c0de6398:	3902      	subs	r1, #2
c0de639a:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de639e:	2000      	movs	r0, #0
c0de63a0:	e030      	b.n	c0de6404 <buttonSkipCallback+0x9c>
c0de63a2:	4a1e      	ldr	r2, [pc, #120]	@ (c0de641c <buttonSkipCallback+0xb4>)
c0de63a4:	eb09 0002 	add.w	r0, r9, r2
c0de63a8:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de63ac:	2808      	cmp	r0, #8
c0de63ae:	d113      	bne.n	c0de63d8 <buttonSkipCallback+0x70>
c0de63b0:	eb09 0002 	add.w	r0, r9, r2
c0de63b4:	f990 4036 	ldrsb.w	r4, [r0, #54]	@ 0x36
c0de63b8:	f990 3035 	ldrsb.w	r3, [r0, #53]	@ 0x35
c0de63bc:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de63c0:	1e45      	subs	r5, r0, #1
c0de63c2:	2000      	movs	r0, #0
c0de63c4:	b2e1      	uxtb	r1, r4
c0de63c6:	429d      	cmp	r5, r3
c0de63c8:	bfc8      	it	gt
c0de63ca:	42a3      	cmpgt	r3, r4
c0de63cc:	dd19      	ble.n	c0de6402 <buttonSkipCallback+0x9a>
c0de63ce:	eb09 0002 	add.w	r0, r9, r2
c0de63d2:	1c59      	adds	r1, r3, #1
c0de63d4:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de63d8:	2000      	movs	r0, #0
c0de63da:	4910      	ldr	r1, [pc, #64]	@ (c0de641c <buttonSkipCallback+0xb4>)
c0de63dc:	4449      	add	r1, r9
c0de63de:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de63e2:	e00e      	b.n	c0de6402 <buttonSkipCallback+0x9a>
c0de63e4:	bdb0      	pop	{r4, r5, r7, pc}
c0de63e6:	eb09 0100 	add.w	r1, r9, r0
c0de63ea:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de63ee:	f991 3036 	ldrsb.w	r3, [r1, #54]	@ 0x36
c0de63f2:	b2d9      	uxtb	r1, r3
c0de63f4:	429a      	cmp	r2, r3
c0de63f6:	dd03      	ble.n	c0de6400 <buttonSkipCallback+0x98>
c0de63f8:	4448      	add	r0, r9
c0de63fa:	3a01      	subs	r2, #1
c0de63fc:	f880 2035 	strb.w	r2, [r0, #53]	@ 0x35
c0de6400:	2008      	movs	r0, #8
c0de6402:	b119      	cbz	r1, c0de640c <buttonSkipCallback+0xa4>
c0de6404:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6408:	f7fe be5a 	b.w	c0de50c0 <displayReviewPage>
c0de640c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6410:	f7ff b85e 	b.w	c0de54d0 <displayStreamingReviewPage>
c0de6414:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de6416:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de641a:	4700      	bx	r0
c0de641c:	00000988 	.word	0x00000988

c0de6420 <displayAliasFullValue>:
c0de6420:	b570      	push	{r4, r5, r6, lr}
c0de6422:	b088      	sub	sp, #32
c0de6424:	4c1a      	ldr	r4, [pc, #104]	@ (c0de6490 <displayAliasFullValue+0x70>)
c0de6426:	f10d 0213 	add.w	r2, sp, #19
c0de642a:	eb09 0504 	add.w	r5, r9, r4
c0de642e:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de6430:	f895 105f 	ldrb.w	r1, [r5, #95]	@ 0x5f
c0de6434:	ab05      	add	r3, sp, #20
c0de6436:	f105 0664 	add.w	r6, r5, #100	@ 0x64
c0de643a:	9202      	str	r2, [sp, #8]
c0de643c:	e9cd 6300 	strd	r6, r3, [sp]
c0de6440:	aa07      	add	r2, sp, #28
c0de6442:	ab06      	add	r3, sp, #24
c0de6444:	f7ff fba8 	bl	c0de5b98 <getPairData>
c0de6448:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0de644a:	b178      	cbz	r0, c0de646c <displayAliasFullValue+0x4c>
c0de644c:	eb09 0104 	add.w	r1, r9, r4
c0de6450:	2200      	movs	r2, #0
c0de6452:	668a      	str	r2, [r1, #104]	@ 0x68
c0de6454:	f881 2060 	strb.w	r2, [r1, #96]	@ 0x60
c0de6458:	7d01      	ldrb	r1, [r0, #20]
c0de645a:	2901      	cmp	r1, #1
c0de645c:	d008      	beq.n	c0de6470 <displayAliasFullValue+0x50>
c0de645e:	2905      	cmp	r1, #5
c0de6460:	d008      	beq.n	c0de6474 <displayAliasFullValue+0x54>
c0de6462:	2904      	cmp	r1, #4
c0de6464:	d102      	bne.n	c0de646c <displayAliasFullValue+0x4c>
c0de6466:	6900      	ldr	r0, [r0, #16]
c0de6468:	300c      	adds	r0, #12
c0de646a:	e005      	b.n	c0de6478 <displayAliasFullValue+0x58>
c0de646c:	b008      	add	sp, #32
c0de646e:	bd70      	pop	{r4, r5, r6, pc}
c0de6470:	2002      	movs	r0, #2
c0de6472:	e003      	b.n	c0de647c <displayAliasFullValue+0x5c>
c0de6474:	6900      	ldr	r0, [r0, #16]
c0de6476:	3008      	adds	r0, #8
c0de6478:	7800      	ldrb	r0, [r0, #0]
c0de647a:	3001      	adds	r0, #1
c0de647c:	eb09 0104 	add.w	r1, r9, r4
c0de6480:	f881 0061 	strb.w	r0, [r1, #97]	@ 0x61
c0de6484:	2000      	movs	r0, #0
c0de6486:	b008      	add	sp, #32
c0de6488:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de648c:	f000 b814 	b.w	c0de64b8 <displayExtensionStep>
c0de6490:	00000988 	.word	0x00000988

c0de6494 <reviewCallback>:
c0de6494:	b5e0      	push	{r5, r6, r7, lr}
c0de6496:	4608      	mov	r0, r1
c0de6498:	f10d 0107 	add.w	r1, sp, #7
c0de649c:	f7ff fc56 	bl	c0de5d4c <buttonGenericCallback>
c0de64a0:	b130      	cbz	r0, c0de64b0 <reviewCallback+0x1c>
c0de64a2:	4804      	ldr	r0, [pc, #16]	@ (c0de64b4 <reviewCallback+0x20>)
c0de64a4:	f000 f98d 	bl	c0de67c2 <OUTLINED_FUNCTION_8>
c0de64a8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de64ac:	f7fe be08 	b.w	c0de50c0 <displayReviewPage>
c0de64b0:	bd8c      	pop	{r2, r3, r7, pc}
c0de64b2:	bf00      	nop
c0de64b4:	00000988 	.word	0x00000988

c0de64b8 <displayExtensionStep>:
c0de64b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de64bc:	b088      	sub	sp, #32
c0de64be:	4e36      	ldr	r6, [pc, #216]	@ (c0de6598 <displayExtensionStep+0xe0>)
c0de64c0:	4680      	mov	r8, r0
c0de64c2:	2000      	movs	r0, #0
c0de64c4:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de64c8:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de64cc:	eb09 0006 	add.w	r0, r9, r6
c0de64d0:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de64d2:	b108      	cbz	r0, c0de64d8 <displayExtensionStep+0x20>
c0de64d4:	f7fe fb82 	bl	c0de4bdc <nbgl_stepRelease>
c0de64d8:	eb09 0106 	add.w	r1, r9, r6
c0de64dc:	f000 f96a 	bl	c0de67b4 <OUTLINED_FUNCTION_7>
c0de64e0:	dd10      	ble.n	c0de6504 <displayExtensionStep+0x4c>
c0de64e2:	2703      	movs	r7, #3
c0de64e4:	eb09 0106 	add.w	r1, r9, r6
c0de64e8:	2800      	cmp	r0, #0
c0de64ea:	bf08      	it	eq
c0de64ec:	2701      	moveq	r7, #1
c0de64ee:	6e49      	ldr	r1, [r1, #100]	@ 0x64
c0de64f0:	7d0a      	ldrb	r2, [r1, #20]
c0de64f2:	2a05      	cmp	r2, #5
c0de64f4:	d01a      	beq.n	c0de652c <displayExtensionStep+0x74>
c0de64f6:	2a04      	cmp	r2, #4
c0de64f8:	d028      	beq.n	c0de654c <displayExtensionStep+0x94>
c0de64fa:	2a01      	cmp	r2, #1
c0de64fc:	d147      	bne.n	c0de658e <displayExtensionStep+0xd6>
c0de64fe:	6808      	ldr	r0, [r1, #0]
c0de6500:	688d      	ldr	r5, [r1, #8]
c0de6502:	e033      	b.n	c0de656c <displayExtensionStep+0xb4>
c0de6504:	d143      	bne.n	c0de658e <displayExtensionStep+0xd6>
c0de6506:	2001      	movs	r0, #1
c0de6508:	2200      	movs	r2, #0
c0de650a:	f88d 001d 	strb.w	r0, [sp, #29]
c0de650e:	4924      	ldr	r1, [pc, #144]	@ (c0de65a0 <displayExtensionStep+0xe8>)
c0de6510:	4479      	add	r1, pc
c0de6512:	9104      	str	r1, [sp, #16]
c0de6514:	4923      	ldr	r1, [pc, #140]	@ (c0de65a4 <displayExtensionStep+0xec>)
c0de6516:	9000      	str	r0, [sp, #0]
c0de6518:	f048 0002 	orr.w	r0, r8, #2
c0de651c:	4479      	add	r1, pc
c0de651e:	9106      	str	r1, [sp, #24]
c0de6520:	4921      	ldr	r1, [pc, #132]	@ (c0de65a8 <displayExtensionStep+0xf0>)
c0de6522:	ab04      	add	r3, sp, #16
c0de6524:	4479      	add	r1, pc
c0de6526:	f7fe fa33 	bl	c0de4990 <nbgl_stepDrawCenteredInfo>
c0de652a:	e02d      	b.n	c0de6588 <displayExtensionStep+0xd0>
c0de652c:	690c      	ldr	r4, [r1, #16]
c0de652e:	0100      	lsls	r0, r0, #4
c0de6530:	6821      	ldr	r1, [r4, #0]
c0de6532:	5808      	ldr	r0, [r1, r0]
c0de6534:	f000 ff30 	bl	c0de7398 <pic>
c0de6538:	4605      	mov	r5, r0
c0de653a:	eb09 0006 	add.w	r0, r9, r6
c0de653e:	6821      	ldr	r1, [r4, #0]
c0de6540:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6544:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de6548:	6840      	ldr	r0, [r0, #4]
c0de654a:	e00d      	b.n	c0de6568 <displayExtensionStep+0xb0>
c0de654c:	690c      	ldr	r4, [r1, #16]
c0de654e:	6821      	ldr	r1, [r4, #0]
c0de6550:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6554:	f000 ff20 	bl	c0de7398 <pic>
c0de6558:	4605      	mov	r5, r0
c0de655a:	eb09 0006 	add.w	r0, r9, r6
c0de655e:	6861      	ldr	r1, [r4, #4]
c0de6560:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6564:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6568:	f000 ff16 	bl	c0de7398 <pic>
c0de656c:	b17d      	cbz	r5, c0de658e <displayExtensionStep+0xd6>
c0de656e:	2101      	movs	r1, #1
c0de6570:	ea47 0208 	orr.w	r2, r7, r8
c0de6574:	462b      	mov	r3, r5
c0de6576:	e9cd 0100 	strd	r0, r1, [sp]
c0de657a:	9102      	str	r1, [sp, #8]
c0de657c:	4610      	mov	r0, r2
c0de657e:	2200      	movs	r2, #0
c0de6580:	4906      	ldr	r1, [pc, #24]	@ (c0de659c <displayExtensionStep+0xe4>)
c0de6582:	4479      	add	r1, pc
c0de6584:	f7fe f8be 	bl	c0de4704 <nbgl_stepDrawText>
c0de6588:	eb09 0106 	add.w	r1, r9, r6
c0de658c:	6688      	str	r0, [r1, #104]	@ 0x68
c0de658e:	f000 fd00 	bl	c0de6f92 <nbgl_refresh>
c0de6592:	b008      	add	sp, #32
c0de6594:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de6598:	00000988 	.word	0x00000988
c0de659c:	00000027 	.word	0x00000027
c0de65a0:	00001770 	.word	0x00001770
c0de65a4:	0000140a 	.word	0x0000140a
c0de65a8:	00000085 	.word	0x00000085

c0de65ac <extensionNavigate>:
c0de65ac:	b580      	push	{r7, lr}
c0de65ae:	2904      	cmp	r1, #4
c0de65b0:	d00a      	beq.n	c0de65c8 <extensionNavigate+0x1c>
c0de65b2:	2901      	cmp	r1, #1
c0de65b4:	d01d      	beq.n	c0de65f2 <extensionNavigate+0x46>
c0de65b6:	b9d9      	cbnz	r1, c0de65f0 <extensionNavigate+0x44>
c0de65b8:	4818      	ldr	r0, [pc, #96]	@ (c0de661c <extensionNavigate+0x70>)
c0de65ba:	4448      	add	r0, r9
c0de65bc:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de65c0:	b330      	cbz	r0, c0de6610 <extensionNavigate+0x64>
c0de65c2:	1e41      	subs	r1, r0, #1
c0de65c4:	2008      	movs	r0, #8
c0de65c6:	e01c      	b.n	c0de6602 <extensionNavigate+0x56>
c0de65c8:	4814      	ldr	r0, [pc, #80]	@ (c0de661c <extensionNavigate+0x70>)
c0de65ca:	eb09 0100 	add.w	r1, r9, r0
c0de65ce:	f891 2060 	ldrb.w	r2, [r1, #96]	@ 0x60
c0de65d2:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de65d6:	3901      	subs	r1, #1
c0de65d8:	4291      	cmp	r1, r2
c0de65da:	d109      	bne.n	c0de65f0 <extensionNavigate+0x44>
c0de65dc:	4448      	add	r0, r9
c0de65de:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de65e0:	f7fe fafc 	bl	c0de4bdc <nbgl_stepRelease>
c0de65e4:	f000 fcee 	bl	c0de6fc4 <nbgl_screenRedraw>
c0de65e8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de65ec:	f000 bcd1 	b.w	c0de6f92 <nbgl_refresh>
c0de65f0:	bd80      	pop	{r7, pc}
c0de65f2:	480a      	ldr	r0, [pc, #40]	@ (c0de661c <extensionNavigate+0x70>)
c0de65f4:	eb09 0100 	add.w	r1, r9, r0
c0de65f8:	f000 f8dc 	bl	c0de67b4 <OUTLINED_FUNCTION_7>
c0de65fc:	dd06      	ble.n	c0de660c <extensionNavigate+0x60>
c0de65fe:	1c41      	adds	r1, r0, #1
c0de6600:	2000      	movs	r0, #0
c0de6602:	4a06      	ldr	r2, [pc, #24]	@ (c0de661c <extensionNavigate+0x70>)
c0de6604:	444a      	add	r2, r9
c0de6606:	f882 1060 	strb.w	r1, [r2, #96]	@ 0x60
c0de660a:	e002      	b.n	c0de6612 <extensionNavigate+0x66>
c0de660c:	2000      	movs	r0, #0
c0de660e:	e000      	b.n	c0de6612 <extensionNavigate+0x66>
c0de6610:	2008      	movs	r0, #8
c0de6612:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6616:	f7ff bf4f 	b.w	c0de64b8 <displayExtensionStep>
c0de661a:	bf00      	nop
c0de661c:	00000988 	.word	0x00000988

c0de6620 <statusTickerCallback>:
c0de6620:	4802      	ldr	r0, [pc, #8]	@ (c0de662c <statusTickerCallback+0xc>)
c0de6622:	4448      	add	r0, r9
c0de6624:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de6626:	b100      	cbz	r0, c0de662a <statusTickerCallback+0xa>
c0de6628:	4700      	bx	r0
c0de662a:	4770      	bx	lr
c0de662c:	00000988 	.word	0x00000988

c0de6630 <getChoiceName>:
c0de6630:	b5b0      	push	{r4, r5, r7, lr}
c0de6632:	b090      	sub	sp, #64	@ 0x40
c0de6634:	ad01      	add	r5, sp, #4
c0de6636:	f000 f8cb 	bl	c0de67d0 <OUTLINED_FUNCTION_9>
c0de663a:	4814      	ldr	r0, [pc, #80]	@ (c0de668c <getChoiceName+0x5c>)
c0de663c:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6640:	462a      	mov	r2, r5
c0de6642:	4448      	add	r0, r9
c0de6644:	f000 f8ab 	bl	c0de679e <OUTLINED_FUNCTION_4>
c0de6648:	b150      	cbz	r0, c0de6660 <getChoiceName+0x30>
c0de664a:	7801      	ldrb	r1, [r0, #0]
c0de664c:	290a      	cmp	r1, #10
c0de664e:	d009      	beq.n	c0de6664 <getChoiceName+0x34>
c0de6650:	2909      	cmp	r1, #9
c0de6652:	d105      	bne.n	c0de6660 <getChoiceName+0x30>
c0de6654:	f000 f8a7 	bl	c0de67a6 <OUTLINED_FUNCTION_5>
c0de6658:	4605      	mov	r5, r0
c0de665a:	f855 0b05 	ldr.w	r0, [r5], #5
c0de665e:	e006      	b.n	c0de666e <getChoiceName+0x3e>
c0de6660:	2000      	movs	r0, #0
c0de6662:	e010      	b.n	c0de6686 <getChoiceName+0x56>
c0de6664:	f000 f89f 	bl	c0de67a6 <OUTLINED_FUNCTION_5>
c0de6668:	4605      	mov	r5, r0
c0de666a:	f855 0b08 	ldr.w	r0, [r5], #8
c0de666e:	f000 fe93 	bl	c0de7398 <pic>
c0de6672:	7829      	ldrb	r1, [r5, #0]
c0de6674:	42a1      	cmp	r1, r4
c0de6676:	d904      	bls.n	c0de6682 <getChoiceName+0x52>
c0de6678:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de667c:	f000 fe8c 	bl	c0de7398 <pic>
c0de6680:	e001      	b.n	c0de6686 <getChoiceName+0x56>
c0de6682:	4803      	ldr	r0, [pc, #12]	@ (c0de6690 <getChoiceName+0x60>)
c0de6684:	4478      	add	r0, pc
c0de6686:	b010      	add	sp, #64	@ 0x40
c0de6688:	bdb0      	pop	{r4, r5, r7, pc}
c0de668a:	bf00      	nop
c0de668c:	00000988 	.word	0x00000988
c0de6690:	000015fc 	.word	0x000015fc

c0de6694 <onChoiceSelected>:
c0de6694:	b570      	push	{r4, r5, r6, lr}
c0de6696:	b090      	sub	sp, #64	@ 0x40
c0de6698:	ad01      	add	r5, sp, #4
c0de669a:	f000 f899 	bl	c0de67d0 <OUTLINED_FUNCTION_9>
c0de669e:	4e17      	ldr	r6, [pc, #92]	@ (c0de66fc <onChoiceSelected+0x68>)
c0de66a0:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de66a4:	462a      	mov	r2, r5
c0de66a6:	eb09 0006 	add.w	r0, r9, r6
c0de66aa:	f000 f878 	bl	c0de679e <OUTLINED_FUNCTION_4>
c0de66ae:	b318      	cbz	r0, c0de66f8 <onChoiceSelected+0x64>
c0de66b0:	7801      	ldrb	r1, [r0, #0]
c0de66b2:	290a      	cmp	r1, #10
c0de66b4:	d008      	beq.n	c0de66c8 <onChoiceSelected+0x34>
c0de66b6:	2909      	cmp	r1, #9
c0de66b8:	d10f      	bne.n	c0de66da <onChoiceSelected+0x46>
c0de66ba:	f000 f874 	bl	c0de67a6 <OUTLINED_FUNCTION_5>
c0de66be:	7941      	ldrb	r1, [r0, #5]
c0de66c0:	42a1      	cmp	r1, r4
c0de66c2:	d90a      	bls.n	c0de66da <onChoiceSelected+0x46>
c0de66c4:	3007      	adds	r0, #7
c0de66c6:	e006      	b.n	c0de66d6 <onChoiceSelected+0x42>
c0de66c8:	f000 f86d 	bl	c0de67a6 <OUTLINED_FUNCTION_5>
c0de66cc:	7a01      	ldrb	r1, [r0, #8]
c0de66ce:	42a1      	cmp	r1, r4
c0de66d0:	d903      	bls.n	c0de66da <onChoiceSelected+0x46>
c0de66d2:	6840      	ldr	r0, [r0, #4]
c0de66d4:	4420      	add	r0, r4
c0de66d6:	7800      	ldrb	r0, [r0, #0]
c0de66d8:	e000      	b.n	c0de66dc <onChoiceSelected+0x48>
c0de66da:	20ff      	movs	r0, #255	@ 0xff
c0de66dc:	28ff      	cmp	r0, #255	@ 0xff
c0de66de:	d006      	beq.n	c0de66ee <onChoiceSelected+0x5a>
c0de66e0:	eb09 0106 	add.w	r1, r9, r6
c0de66e4:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de66e6:	b112      	cbz	r2, c0de66ee <onChoiceSelected+0x5a>
c0de66e8:	2100      	movs	r1, #0
c0de66ea:	4790      	blx	r2
c0de66ec:	e004      	b.n	c0de66f8 <onChoiceSelected+0x64>
c0de66ee:	eb09 0006 	add.w	r0, r9, r6
c0de66f2:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de66f4:	b100      	cbz	r0, c0de66f8 <onChoiceSelected+0x64>
c0de66f6:	4780      	blx	r0
c0de66f8:	b010      	add	sp, #64	@ 0x40
c0de66fa:	bd70      	pop	{r4, r5, r6, pc}
c0de66fc:	00000988 	.word	0x00000988

c0de6700 <streamingReviewCallback>:
c0de6700:	b5e0      	push	{r5, r6, r7, lr}
c0de6702:	4608      	mov	r0, r1
c0de6704:	f10d 0107 	add.w	r1, sp, #7
c0de6708:	f7ff fb20 	bl	c0de5d4c <buttonGenericCallback>
c0de670c:	b130      	cbz	r0, c0de671c <streamingReviewCallback+0x1c>
c0de670e:	4804      	ldr	r0, [pc, #16]	@ (c0de6720 <streamingReviewCallback+0x20>)
c0de6710:	f000 f857 	bl	c0de67c2 <OUTLINED_FUNCTION_8>
c0de6714:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6718:	f7fe beda 	b.w	c0de54d0 <displayStreamingReviewPage>
c0de671c:	bd8c      	pop	{r2, r3, r7, pc}
c0de671e:	bf00      	nop
c0de6720:	00000988 	.word	0x00000988

c0de6724 <onChoiceAccept>:
c0de6724:	4803      	ldr	r0, [pc, #12]	@ (c0de6734 <onChoiceAccept+0x10>)
c0de6726:	4448      	add	r0, r9
c0de6728:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de672a:	b109      	cbz	r1, c0de6730 <onChoiceAccept+0xc>
c0de672c:	2001      	movs	r0, #1
c0de672e:	4708      	bx	r1
c0de6730:	4770      	bx	lr
c0de6732:	bf00      	nop
c0de6734:	00000988 	.word	0x00000988

c0de6738 <onChoiceReject>:
c0de6738:	4803      	ldr	r0, [pc, #12]	@ (c0de6748 <onChoiceReject+0x10>)
c0de673a:	4448      	add	r0, r9
c0de673c:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de673e:	b109      	cbz	r1, c0de6744 <onChoiceReject+0xc>
c0de6740:	2000      	movs	r0, #0
c0de6742:	4708      	bx	r1
c0de6744:	4770      	bx	lr
c0de6746:	bf00      	nop
c0de6748:	00000988 	.word	0x00000988

c0de674c <genericChoiceCallback>:
c0de674c:	b5e0      	push	{r5, r6, r7, lr}
c0de674e:	4608      	mov	r0, r1
c0de6750:	f10d 0107 	add.w	r1, sp, #7
c0de6754:	f7ff fafa 	bl	c0de5d4c <buttonGenericCallback>
c0de6758:	b128      	cbz	r0, c0de6766 <genericChoiceCallback+0x1a>
c0de675a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de675e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6762:	f7fe bfbd 	b.w	c0de56e0 <displayChoicePage>
c0de6766:	bd8c      	pop	{r2, r3, r7, pc}

c0de6768 <OUTLINED_FUNCTION_1>:
c0de6768:	2200      	movs	r2, #0
c0de676a:	eb09 0100 	add.w	r1, r9, r0
c0de676e:	638a      	str	r2, [r1, #56]	@ 0x38
c0de6770:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6774:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de6778:	3901      	subs	r1, #1
c0de677a:	4291      	cmp	r1, r2
c0de677c:	4770      	bx	lr

c0de677e <OUTLINED_FUNCTION_2>:
c0de677e:	eb09 0600 	add.w	r6, r9, r0
c0de6782:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de6786:	f001 b827 	b.w	c0de77d8 <__aeabi_memclr>

c0de678a <OUTLINED_FUNCTION_3>:
c0de678a:	460e      	mov	r6, r1
c0de678c:	2140      	movs	r1, #64	@ 0x40
c0de678e:	4698      	mov	r8, r3
c0de6790:	4615      	mov	r5, r2
c0de6792:	eb09 0400 	add.w	r4, r9, r0
c0de6796:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
c0de679a:	f001 b81d 	b.w	c0de77d8 <__aeabi_memclr>

c0de679e <OUTLINED_FUNCTION_4>:
c0de679e:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de67a2:	f7ff b9b5 	b.w	c0de5b10 <getContentElemAtIdx>

c0de67a6 <OUTLINED_FUNCTION_5>:
c0de67a6:	3004      	adds	r0, #4
c0de67a8:	f000 bdf6 	b.w	c0de7398 <pic>

c0de67ac <OUTLINED_FUNCTION_6>:
c0de67ac:	e9cd 6500 	strd	r6, r5, [sp]
c0de67b0:	f7fe bd72 	b.w	c0de5298 <drawStep>

c0de67b4 <OUTLINED_FUNCTION_7>:
c0de67b4:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de67b8:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de67bc:	3901      	subs	r1, #1
c0de67be:	4281      	cmp	r1, r0
c0de67c0:	4770      	bx	lr

c0de67c2 <OUTLINED_FUNCTION_8>:
c0de67c2:	eb09 0100 	add.w	r1, r9, r0
c0de67c6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de67ca:	f881 005e 	strb.w	r0, [r1, #94]	@ 0x5e
c0de67ce:	4770      	bx	lr

c0de67d0 <OUTLINED_FUNCTION_9>:
c0de67d0:	4604      	mov	r4, r0
c0de67d2:	2138      	movs	r1, #56	@ 0x38
c0de67d4:	4628      	mov	r0, r5
c0de67d6:	f000 bfff 	b.w	c0de77d8 <__aeabi_memclr>

c0de67da <OUTLINED_FUNCTION_10>:
c0de67da:	f997 1035 	ldrsb.w	r1, [r7, #53]	@ 0x35
c0de67de:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de67e2:	4730      	bx	r6

c0de67e4 <bip32_path_read>:
c0de67e4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de67e8:	b10b      	cbz	r3, c0de67ee <bip32_path_read+0xa>
c0de67ea:	2b0a      	cmp	r3, #10
c0de67ec:	d902      	bls.n	c0de67f4 <bip32_path_read+0x10>
c0de67ee:	2000      	movs	r0, #0
c0de67f0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de67f4:	4692      	mov	sl, r2
c0de67f6:	460e      	mov	r6, r1
c0de67f8:	4683      	mov	fp, r0
c0de67fa:	425f      	negs	r7, r3
c0de67fc:	2500      	movs	r5, #0
c0de67fe:	f04f 0800 	mov.w	r8, #0
c0de6802:	9301      	str	r3, [sp, #4]
c0de6804:	42af      	cmp	r7, r5
c0de6806:	d00c      	beq.n	c0de6822 <bip32_path_read+0x3e>
c0de6808:	f108 0404 	add.w	r4, r8, #4
c0de680c:	42b4      	cmp	r4, r6
c0de680e:	d808      	bhi.n	c0de6822 <bip32_path_read+0x3e>
c0de6810:	4658      	mov	r0, fp
c0de6812:	4641      	mov	r1, r8
c0de6814:	f000 fa6c 	bl	c0de6cf0 <read_u32_be>
c0de6818:	f84a 0008 	str.w	r0, [sl, r8]
c0de681c:	3d01      	subs	r5, #1
c0de681e:	46a0      	mov	r8, r4
c0de6820:	e7f0      	b.n	c0de6804 <bip32_path_read+0x20>
c0de6822:	9a01      	ldr	r2, [sp, #4]
c0de6824:	4269      	negs	r1, r5
c0de6826:	2000      	movs	r0, #0
c0de6828:	4291      	cmp	r1, r2
c0de682a:	bf28      	it	cs
c0de682c:	2001      	movcs	r0, #1
c0de682e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de6832 <buffer_seek_cur>:
c0de6832:	6882      	ldr	r2, [r0, #8]
c0de6834:	1889      	adds	r1, r1, r2
c0de6836:	d205      	bcs.n	c0de6844 <buffer_seek_cur+0x12>
c0de6838:	6842      	ldr	r2, [r0, #4]
c0de683a:	4291      	cmp	r1, r2
c0de683c:	bf9e      	ittt	ls
c0de683e:	6081      	strls	r1, [r0, #8]
c0de6840:	2001      	movls	r0, #1
c0de6842:	4770      	bxls	lr
c0de6844:	2000      	movs	r0, #0
c0de6846:	4770      	bx	lr

c0de6848 <buffer_read_u8>:
c0de6848:	b510      	push	{r4, lr}
c0de684a:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de684e:	429a      	cmp	r2, r3
c0de6850:	d00a      	beq.n	c0de6868 <buffer_read_u8+0x20>
c0de6852:	6804      	ldr	r4, [r0, #0]
c0de6854:	5ce4      	ldrb	r4, [r4, r3]
c0de6856:	700c      	strb	r4, [r1, #0]
c0de6858:	6881      	ldr	r1, [r0, #8]
c0de685a:	3101      	adds	r1, #1
c0de685c:	d206      	bcs.n	c0de686c <buffer_read_u8+0x24>
c0de685e:	6844      	ldr	r4, [r0, #4]
c0de6860:	42a1      	cmp	r1, r4
c0de6862:	bf98      	it	ls
c0de6864:	6081      	strls	r1, [r0, #8]
c0de6866:	e001      	b.n	c0de686c <buffer_read_u8+0x24>
c0de6868:	2000      	movs	r0, #0
c0de686a:	7008      	strb	r0, [r1, #0]
c0de686c:	1ad0      	subs	r0, r2, r3
c0de686e:	bf18      	it	ne
c0de6870:	2001      	movne	r0, #1
c0de6872:	bd10      	pop	{r4, pc}

c0de6874 <buffer_read_u64>:
c0de6874:	b570      	push	{r4, r5, r6, lr}
c0de6876:	f000 f87d 	bl	c0de6974 <OUTLINED_FUNCTION_0>
c0de687a:	2e07      	cmp	r6, #7
c0de687c:	d904      	bls.n	c0de6888 <buffer_read_u64+0x14>
c0de687e:	6820      	ldr	r0, [r4, #0]
c0de6880:	b132      	cbz	r2, c0de6890 <buffer_read_u64+0x1c>
c0de6882:	f000 fa6c 	bl	c0de6d5e <read_u64_le>
c0de6886:	e005      	b.n	c0de6894 <buffer_read_u64+0x20>
c0de6888:	2000      	movs	r0, #0
c0de688a:	e9c5 0000 	strd	r0, r0, [r5]
c0de688e:	e00c      	b.n	c0de68aa <buffer_read_u64+0x36>
c0de6890:	f000 fa3a 	bl	c0de6d08 <read_u64_be>
c0de6894:	e9c5 0100 	strd	r0, r1, [r5]
c0de6898:	68a0      	ldr	r0, [r4, #8]
c0de689a:	f110 0f09 	cmn.w	r0, #9
c0de689e:	d804      	bhi.n	c0de68aa <buffer_read_u64+0x36>
c0de68a0:	6861      	ldr	r1, [r4, #4]
c0de68a2:	3008      	adds	r0, #8
c0de68a4:	4288      	cmp	r0, r1
c0de68a6:	bf98      	it	ls
c0de68a8:	60a0      	strls	r0, [r4, #8]
c0de68aa:	2000      	movs	r0, #0
c0de68ac:	2e07      	cmp	r6, #7
c0de68ae:	bf88      	it	hi
c0de68b0:	2001      	movhi	r0, #1
c0de68b2:	bd70      	pop	{r4, r5, r6, pc}

c0de68b4 <buffer_read_varint>:
c0de68b4:	b5b0      	push	{r4, r5, r7, lr}
c0de68b6:	4604      	mov	r4, r0
c0de68b8:	460d      	mov	r5, r1
c0de68ba:	6800      	ldr	r0, [r0, #0]
c0de68bc:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de68c0:	4410      	add	r0, r2
c0de68c2:	1a89      	subs	r1, r1, r2
c0de68c4:	462a      	mov	r2, r5
c0de68c6:	f000 fa61 	bl	c0de6d8c <varint_read>
c0de68ca:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de68ce:	dd0a      	ble.n	c0de68e6 <buffer_read_varint+0x32>
c0de68d0:	68a1      	ldr	r1, [r4, #8]
c0de68d2:	1840      	adds	r0, r0, r1
c0de68d4:	d205      	bcs.n	c0de68e2 <buffer_read_varint+0x2e>
c0de68d6:	6861      	ldr	r1, [r4, #4]
c0de68d8:	4288      	cmp	r0, r1
c0de68da:	bf9e      	ittt	ls
c0de68dc:	60a0      	strls	r0, [r4, #8]
c0de68de:	2001      	movls	r0, #1
c0de68e0:	bdb0      	popls	{r4, r5, r7, pc}
c0de68e2:	2000      	movs	r0, #0
c0de68e4:	bdb0      	pop	{r4, r5, r7, pc}
c0de68e6:	2000      	movs	r0, #0
c0de68e8:	e9c5 0000 	strd	r0, r0, [r5]
c0de68ec:	bdb0      	pop	{r4, r5, r7, pc}

c0de68ee <buffer_read_bip32_path>:
c0de68ee:	b5b0      	push	{r4, r5, r7, lr}
c0de68f0:	4604      	mov	r4, r0
c0de68f2:	4615      	mov	r5, r2
c0de68f4:	460a      	mov	r2, r1
c0de68f6:	6800      	ldr	r0, [r0, #0]
c0de68f8:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de68fc:	4418      	add	r0, r3
c0de68fe:	1ac9      	subs	r1, r1, r3
c0de6900:	462b      	mov	r3, r5
c0de6902:	f7ff ff6f 	bl	c0de67e4 <bip32_path_read>
c0de6906:	b140      	cbz	r0, c0de691a <buffer_read_bip32_path+0x2c>
c0de6908:	68a2      	ldr	r2, [r4, #8]
c0de690a:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de690e:	4291      	cmp	r1, r2
c0de6910:	d303      	bcc.n	c0de691a <buffer_read_bip32_path+0x2c>
c0de6912:	6862      	ldr	r2, [r4, #4]
c0de6914:	4291      	cmp	r1, r2
c0de6916:	bf98      	it	ls
c0de6918:	60a1      	strls	r1, [r4, #8]
c0de691a:	bdb0      	pop	{r4, r5, r7, pc}

c0de691c <buffer_copy>:
c0de691c:	b5b0      	push	{r4, r5, r7, lr}
c0de691e:	4614      	mov	r4, r2
c0de6920:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6924:	1a9d      	subs	r5, r3, r2
c0de6926:	42a5      	cmp	r5, r4
c0de6928:	d806      	bhi.n	c0de6938 <buffer_copy+0x1c>
c0de692a:	6800      	ldr	r0, [r0, #0]
c0de692c:	4402      	add	r2, r0
c0de692e:	4608      	mov	r0, r1
c0de6930:	4611      	mov	r1, r2
c0de6932:	462a      	mov	r2, r5
c0de6934:	f000 ff48 	bl	c0de77c8 <__aeabi_memmove>
c0de6938:	2000      	movs	r0, #0
c0de693a:	42a5      	cmp	r5, r4
c0de693c:	bf98      	it	ls
c0de693e:	2001      	movls	r0, #1
c0de6940:	bdb0      	pop	{r4, r5, r7, pc}

c0de6942 <buffer_move>:
c0de6942:	b5b0      	push	{r4, r5, r7, lr}
c0de6944:	4615      	mov	r5, r2
c0de6946:	4604      	mov	r4, r0
c0de6948:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de694c:	1a12      	subs	r2, r2, r0
c0de694e:	42aa      	cmp	r2, r5
c0de6950:	bf84      	itt	hi
c0de6952:	2000      	movhi	r0, #0
c0de6954:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6956:	6823      	ldr	r3, [r4, #0]
c0de6958:	4403      	add	r3, r0
c0de695a:	4608      	mov	r0, r1
c0de695c:	4619      	mov	r1, r3
c0de695e:	f000 ff33 	bl	c0de77c8 <__aeabi_memmove>
c0de6962:	68a0      	ldr	r0, [r4, #8]
c0de6964:	1940      	adds	r0, r0, r5
c0de6966:	d203      	bcs.n	c0de6970 <buffer_move+0x2e>
c0de6968:	6861      	ldr	r1, [r4, #4]
c0de696a:	4288      	cmp	r0, r1
c0de696c:	bf98      	it	ls
c0de696e:	60a0      	strls	r0, [r4, #8]
c0de6970:	2001      	movs	r0, #1
c0de6972:	bdb0      	pop	{r4, r5, r7, pc}

c0de6974 <OUTLINED_FUNCTION_0>:
c0de6974:	4604      	mov	r4, r0
c0de6976:	460d      	mov	r5, r1
c0de6978:	6840      	ldr	r0, [r0, #4]
c0de697a:	68a1      	ldr	r1, [r4, #8]
c0de697c:	1a46      	subs	r6, r0, r1
c0de697e:	4770      	bx	lr

c0de6980 <bip32_derive_with_seed_init_privkey_256>:
c0de6980:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6984:	b095      	sub	sp, #84	@ 0x54
c0de6986:	460d      	mov	r5, r1
c0de6988:	4607      	mov	r7, r0
c0de698a:	a904      	add	r1, sp, #16
c0de698c:	469a      	mov	sl, r3
c0de698e:	4614      	mov	r4, r2
c0de6990:	4628      	mov	r0, r5
c0de6992:	f000 fe61 	bl	c0de7658 <cx_ecdomain_parameters_length>
c0de6996:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de699a:	4606      	mov	r6, r0
c0de699c:	b9e0      	cbnz	r0, c0de69d8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de699e:	9804      	ldr	r0, [sp, #16]
c0de69a0:	2820      	cmp	r0, #32
c0de69a2:	d117      	bne.n	c0de69d4 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de69a4:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de69a6:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de69aa:	ab05      	add	r3, sp, #20
c0de69ac:	e9cd 3200 	strd	r3, r2, [sp]
c0de69b0:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de69b4:	4638      	mov	r0, r7
c0de69b6:	4629      	mov	r1, r5
c0de69b8:	4622      	mov	r2, r4
c0de69ba:	4653      	mov	r3, sl
c0de69bc:	f000 f818 	bl	c0de69f0 <os_derive_bip32_with_seed_no_throw>
c0de69c0:	4606      	mov	r6, r0
c0de69c2:	b948      	cbnz	r0, c0de69d8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de69c4:	9a04      	ldr	r2, [sp, #16]
c0de69c6:	a905      	add	r1, sp, #20
c0de69c8:	4628      	mov	r0, r5
c0de69ca:	4643      	mov	r3, r8
c0de69cc:	f000 fabc 	bl	c0de6f48 <cx_ecfp_init_private_key_no_throw>
c0de69d0:	4606      	mov	r6, r0
c0de69d2:	e001      	b.n	c0de69d8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de69d4:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de69d8:	a805      	add	r0, sp, #20
c0de69da:	2140      	movs	r1, #64	@ 0x40
c0de69dc:	f000 ff00 	bl	c0de77e0 <explicit_bzero>
c0de69e0:	b116      	cbz	r6, c0de69e8 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de69e2:	4640      	mov	r0, r8
c0de69e4:	f000 f89f 	bl	c0de6b26 <OUTLINED_FUNCTION_0>
c0de69e8:	4630      	mov	r0, r6
c0de69ea:	b015      	add	sp, #84	@ 0x54
c0de69ec:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de69f0 <os_derive_bip32_with_seed_no_throw>:
c0de69f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de69f4:	b090      	sub	sp, #64	@ 0x40
c0de69f6:	f10d 0810 	add.w	r8, sp, #16
c0de69fa:	4607      	mov	r7, r0
c0de69fc:	469b      	mov	fp, r3
c0de69fe:	4616      	mov	r6, r2
c0de6a00:	460c      	mov	r4, r1
c0de6a02:	4640      	mov	r0, r8
c0de6a04:	f000 ff22 	bl	c0de784c <setjmp>
c0de6a08:	b285      	uxth	r5, r0
c0de6a0a:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de6a0e:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6a12:	b155      	cbz	r5, c0de6a2a <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6a14:	2000      	movs	r0, #0
c0de6a16:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6a1a:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6a1c:	f000 feb8 	bl	c0de7790 <try_context_set>
c0de6a20:	2140      	movs	r1, #64	@ 0x40
c0de6a22:	4650      	mov	r0, sl
c0de6a24:	f000 fedc 	bl	c0de77e0 <explicit_bzero>
c0de6a28:	e012      	b.n	c0de6a50 <os_derive_bip32_with_seed_no_throw+0x60>
c0de6a2a:	a804      	add	r0, sp, #16
c0de6a2c:	f000 feb0 	bl	c0de7790 <try_context_set>
c0de6a30:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de6a32:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6a34:	4668      	mov	r0, sp
c0de6a36:	4632      	mov	r2, r6
c0de6a38:	465b      	mov	r3, fp
c0de6a3a:	f8c0 a000 	str.w	sl, [r0]
c0de6a3e:	6041      	str	r1, [r0, #4]
c0de6a40:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de6a42:	6081      	str	r1, [r0, #8]
c0de6a44:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6a46:	60c1      	str	r1, [r0, #12]
c0de6a48:	4638      	mov	r0, r7
c0de6a4a:	4621      	mov	r1, r4
c0de6a4c:	f000 fe0e 	bl	c0de766c <os_perso_derive_node_with_seed_key>
c0de6a50:	f000 fe96 	bl	c0de7780 <try_context_get>
c0de6a54:	4540      	cmp	r0, r8
c0de6a56:	d102      	bne.n	c0de6a5e <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6a58:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6a5a:	f000 fe99 	bl	c0de7790 <try_context_set>
c0de6a5e:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de6a62:	b918      	cbnz	r0, c0de6a6c <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6a64:	4628      	mov	r0, r5
c0de6a66:	b010      	add	sp, #64	@ 0x40
c0de6a68:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6a6c:	f000 fafb 	bl	c0de7066 <os_longjmp>

c0de6a70 <bip32_derive_with_seed_get_pubkey_256>:
c0de6a70:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6a72:	b0a1      	sub	sp, #132	@ 0x84
c0de6a74:	460e      	mov	r6, r1
c0de6a76:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6a78:	9103      	str	r1, [sp, #12]
c0de6a7a:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6a7c:	9102      	str	r1, [sp, #8]
c0de6a7e:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de6a80:	9101      	str	r1, [sp, #4]
c0de6a82:	a917      	add	r1, sp, #92	@ 0x5c
c0de6a84:	9100      	str	r1, [sp, #0]
c0de6a86:	4631      	mov	r1, r6
c0de6a88:	f7ff ff7a 	bl	c0de6980 <bip32_derive_with_seed_init_privkey_256>
c0de6a8c:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de6a8e:	4605      	mov	r5, r0
c0de6a90:	b9b8      	cbnz	r0, c0de6ac2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6a92:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6a94:	2301      	movs	r3, #1
c0de6a96:	9000      	str	r0, [sp, #0]
c0de6a98:	af04      	add	r7, sp, #16
c0de6a9a:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6a9c:	4630      	mov	r0, r6
c0de6a9e:	4639      	mov	r1, r7
c0de6aa0:	f000 fa4d 	bl	c0de6f3e <cx_ecfp_generate_pair2_no_throw>
c0de6aa4:	4605      	mov	r5, r0
c0de6aa6:	b960      	cbnz	r0, c0de6ac2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6aa8:	9805      	ldr	r0, [sp, #20]
c0de6aaa:	2841      	cmp	r0, #65	@ 0x41
c0de6aac:	d107      	bne.n	c0de6abe <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de6aae:	f107 0108 	add.w	r1, r7, #8
c0de6ab2:	4620      	mov	r0, r4
c0de6ab4:	2241      	movs	r2, #65	@ 0x41
c0de6ab6:	f000 fe85 	bl	c0de77c4 <__aeabi_memcpy>
c0de6aba:	2500      	movs	r5, #0
c0de6abc:	e001      	b.n	c0de6ac2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6abe:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de6ac2:	a817      	add	r0, sp, #92	@ 0x5c
c0de6ac4:	f000 f82f 	bl	c0de6b26 <OUTLINED_FUNCTION_0>
c0de6ac8:	b11d      	cbz	r5, c0de6ad2 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de6aca:	4620      	mov	r0, r4
c0de6acc:	2141      	movs	r1, #65	@ 0x41
c0de6ace:	f000 fe87 	bl	c0de77e0 <explicit_bzero>
c0de6ad2:	4628      	mov	r0, r5
c0de6ad4:	b021      	add	sp, #132	@ 0x84
c0de6ad6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6ad8 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6ad8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6ada:	b08f      	sub	sp, #60	@ 0x3c
c0de6adc:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de6ade:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de6ae0:	683c      	ldr	r4, [r7, #0]
c0de6ae2:	9503      	str	r5, [sp, #12]
c0de6ae4:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de6ae6:	9502      	str	r5, [sp, #8]
c0de6ae8:	2500      	movs	r5, #0
c0de6aea:	9501      	str	r5, [sp, #4]
c0de6aec:	ad05      	add	r5, sp, #20
c0de6aee:	9500      	str	r5, [sp, #0]
c0de6af0:	f7ff ff46 	bl	c0de6980 <bip32_derive_with_seed_init_privkey_256>
c0de6af4:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de6af6:	4606      	mov	r6, r0
c0de6af8:	b950      	cbnz	r0, c0de6b10 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6afa:	ae14      	add	r6, sp, #80	@ 0x50
c0de6afc:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de6afe:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de6b00:	e9cd 6500 	strd	r6, r5, [sp]
c0de6b04:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6b08:	a805      	add	r0, sp, #20
c0de6b0a:	f000 fa13 	bl	c0de6f34 <cx_ecdsa_sign_no_throw>
c0de6b0e:	4606      	mov	r6, r0
c0de6b10:	a805      	add	r0, sp, #20
c0de6b12:	f000 f808 	bl	c0de6b26 <OUTLINED_FUNCTION_0>
c0de6b16:	b11e      	cbz	r6, c0de6b20 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6b18:	4628      	mov	r0, r5
c0de6b1a:	4621      	mov	r1, r4
c0de6b1c:	f000 fe60 	bl	c0de77e0 <explicit_bzero>
c0de6b20:	4630      	mov	r0, r6
c0de6b22:	b00f      	add	sp, #60	@ 0x3c
c0de6b24:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6b26 <OUTLINED_FUNCTION_0>:
c0de6b26:	2128      	movs	r1, #40	@ 0x28
c0de6b28:	f000 be5a 	b.w	c0de77e0 <explicit_bzero>

c0de6b2c <format_hex>:
c0de6b2c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6b2e:	4604      	mov	r4, r0
c0de6b30:	0048      	lsls	r0, r1, #1
c0de6b32:	f100 0c01 	add.w	ip, r0, #1
c0de6b36:	459c      	cmp	ip, r3
c0de6b38:	d902      	bls.n	c0de6b40 <format_hex+0x14>
c0de6b3a:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de6b3e:	e018      	b.n	c0de6b72 <format_hex+0x46>
c0de6b40:	480d      	ldr	r0, [pc, #52]	@ (c0de6b78 <format_hex+0x4c>)
c0de6b42:	2500      	movs	r5, #0
c0de6b44:	4478      	add	r0, pc
c0de6b46:	b191      	cbz	r1, c0de6b6e <format_hex+0x42>
c0de6b48:	1cef      	adds	r7, r5, #3
c0de6b4a:	429f      	cmp	r7, r3
c0de6b4c:	d80d      	bhi.n	c0de6b6a <format_hex+0x3e>
c0de6b4e:	7827      	ldrb	r7, [r4, #0]
c0de6b50:	3901      	subs	r1, #1
c0de6b52:	093f      	lsrs	r7, r7, #4
c0de6b54:	5dc7      	ldrb	r7, [r0, r7]
c0de6b56:	5557      	strb	r7, [r2, r5]
c0de6b58:	1957      	adds	r7, r2, r5
c0de6b5a:	3502      	adds	r5, #2
c0de6b5c:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de6b60:	f006 060f 	and.w	r6, r6, #15
c0de6b64:	5d86      	ldrb	r6, [r0, r6]
c0de6b66:	707e      	strb	r6, [r7, #1]
c0de6b68:	e7ed      	b.n	c0de6b46 <format_hex+0x1a>
c0de6b6a:	f105 0c01 	add.w	ip, r5, #1
c0de6b6e:	2000      	movs	r0, #0
c0de6b70:	5550      	strb	r0, [r2, r5]
c0de6b72:	4660      	mov	r0, ip
c0de6b74:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6b76:	bf00      	nop
c0de6b78:	0000112b 	.word	0x0000112b

c0de6b7c <app_ticker_event_callback>:
c0de6b7c:	4770      	bx	lr
	...

c0de6b80 <io_event>:
c0de6b80:	b580      	push	{r7, lr}
c0de6b82:	480a      	ldr	r0, [pc, #40]	@ (c0de6bac <io_event+0x2c>)
c0de6b84:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6b88:	290e      	cmp	r1, #14
c0de6b8a:	d005      	beq.n	c0de6b98 <io_event+0x18>
c0de6b8c:	2905      	cmp	r1, #5
c0de6b8e:	d108      	bne.n	c0de6ba2 <io_event+0x22>
c0de6b90:	4448      	add	r0, r9
c0de6b92:	f000 f92f 	bl	c0de6df4 <ux_process_button_event>
c0de6b96:	e006      	b.n	c0de6ba6 <io_event+0x26>
c0de6b98:	f7ff fff0 	bl	c0de6b7c <app_ticker_event_callback>
c0de6b9c:	f000 f96e 	bl	c0de6e7c <ux_process_ticker_event>
c0de6ba0:	e001      	b.n	c0de6ba6 <io_event+0x26>
c0de6ba2:	f000 f983 	bl	c0de6eac <ux_process_default_event>
c0de6ba6:	2001      	movs	r0, #1
c0de6ba8:	bd80      	pop	{r7, pc}
c0de6baa:	bf00      	nop
c0de6bac:	000009f4 	.word	0x000009f4

c0de6bb0 <io_init>:
c0de6bb0:	4802      	ldr	r0, [pc, #8]	@ (c0de6bbc <io_init+0xc>)
c0de6bb2:	2101      	movs	r1, #1
c0de6bb4:	f809 1000 	strb.w	r1, [r9, r0]
c0de6bb8:	4770      	bx	lr
c0de6bba:	bf00      	nop
c0de6bbc:	00000b04 	.word	0x00000b04

c0de6bc0 <io_recv_command>:
c0de6bc0:	b510      	push	{r4, lr}
c0de6bc2:	4c09      	ldr	r4, [pc, #36]	@ (c0de6be8 <io_recv_command+0x28>)
c0de6bc4:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6bc8:	2801      	cmp	r0, #1
c0de6bca:	d104      	bne.n	c0de6bd6 <io_recv_command+0x16>
c0de6bcc:	f000 fdb6 	bl	c0de773c <os_io_start>
c0de6bd0:	2000      	movs	r0, #0
c0de6bd2:	f809 0004 	strb.w	r0, [r9, r4]
c0de6bd6:	2000      	movs	r0, #0
c0de6bd8:	2800      	cmp	r0, #0
c0de6bda:	dc03      	bgt.n	c0de6be4 <io_recv_command+0x24>
c0de6bdc:	2001      	movs	r0, #1
c0de6bde:	f7fc fed3 	bl	c0de3988 <io_legacy_apdu_rx>
c0de6be2:	e7f9      	b.n	c0de6bd8 <io_recv_command+0x18>
c0de6be4:	bd10      	pop	{r4, pc}
c0de6be6:	bf00      	nop
c0de6be8:	00000b04 	.word	0x00000b04

c0de6bec <io_send_response_buffers>:
c0de6bec:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6bf0:	f8df a060 	ldr.w	sl, [pc, #96]	@ c0de6c54 <io_send_response_buffers+0x68>
c0de6bf4:	4690      	mov	r8, r2
c0de6bf6:	460f      	mov	r7, r1
c0de6bf8:	4605      	mov	r5, r0
c0de6bfa:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6bfe:	2600      	movs	r6, #0
c0de6c00:	b1b5      	cbz	r5, c0de6c30 <io_send_response_buffers+0x44>
c0de6c02:	b1af      	cbz	r7, c0de6c30 <io_send_response_buffers+0x44>
c0de6c04:	2600      	movs	r6, #0
c0de6c06:	b19f      	cbz	r7, c0de6c30 <io_send_response_buffers+0x44>
c0de6c08:	eb09 000a 	add.w	r0, r9, sl
c0de6c0c:	1ba2      	subs	r2, r4, r6
c0de6c0e:	1981      	adds	r1, r0, r6
c0de6c10:	4628      	mov	r0, r5
c0de6c12:	f7ff fe83 	bl	c0de691c <buffer_copy>
c0de6c16:	b130      	cbz	r0, c0de6c26 <io_send_response_buffers+0x3a>
c0de6c18:	e9d5 0101 	ldrd	r0, r1, [r5, #4]
c0de6c1c:	350c      	adds	r5, #12
c0de6c1e:	3f01      	subs	r7, #1
c0de6c20:	4430      	add	r0, r6
c0de6c22:	1a46      	subs	r6, r0, r1
c0de6c24:	e7ef      	b.n	c0de6c06 <io_send_response_buffers+0x1a>
c0de6c26:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6c2a:	2500      	movs	r5, #0
c0de6c2c:	2700      	movs	r7, #0
c0de6c2e:	e7e6      	b.n	c0de6bfe <io_send_response_buffers+0x12>
c0de6c30:	eb09 050a 	add.w	r5, r9, sl
c0de6c34:	fa1f f288 	uxth.w	r2, r8
c0de6c38:	4631      	mov	r1, r6
c0de6c3a:	4628      	mov	r0, r5
c0de6c3c:	f000 f8d4 	bl	c0de6de8 <write_u16_be>
c0de6c40:	1cb0      	adds	r0, r6, #2
c0de6c42:	b281      	uxth	r1, r0
c0de6c44:	4628      	mov	r0, r5
c0de6c46:	f7fc fe8b 	bl	c0de3960 <io_legacy_apdu_tx>
c0de6c4a:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de6c4e:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de6c52:	bf00      	nop
c0de6c54:	0000064c 	.word	0x0000064c

c0de6c58 <app_exit>:
c0de6c58:	20ff      	movs	r0, #255	@ 0xff
c0de6c5a:	f000 fd5b 	bl	c0de7714 <os_sched_exit>

c0de6c5e <common_app_init>:
c0de6c5e:	b580      	push	{r7, lr}
c0de6c60:	f000 f99c 	bl	c0de6f9c <nbgl_objInit>
c0de6c64:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6c68:	f7fc bf6a 	b.w	c0de3b40 <io_seproxyhal_init>

c0de6c6c <standalone_app_main>:
c0de6c6c:	b510      	push	{r4, lr}
c0de6c6e:	b08c      	sub	sp, #48	@ 0x30
c0de6c70:	466c      	mov	r4, sp
c0de6c72:	4620      	mov	r0, r4
c0de6c74:	f000 fdea 	bl	c0de784c <setjmp>
c0de6c78:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6c7c:	0400      	lsls	r0, r0, #16
c0de6c7e:	d108      	bne.n	c0de6c92 <standalone_app_main+0x26>
c0de6c80:	4668      	mov	r0, sp
c0de6c82:	f000 fd85 	bl	c0de7790 <try_context_set>
c0de6c86:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6c88:	f7ff ffe9 	bl	c0de6c5e <common_app_init>
c0de6c8c:	f7f9 fb90 	bl	c0de03b0 <app_main>
c0de6c90:	e005      	b.n	c0de6c9e <standalone_app_main+0x32>
c0de6c92:	2000      	movs	r0, #0
c0de6c94:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6c98:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6c9a:	f000 fd79 	bl	c0de7790 <try_context_set>
c0de6c9e:	f000 fd6f 	bl	c0de7780 <try_context_get>
c0de6ca2:	42a0      	cmp	r0, r4
c0de6ca4:	d102      	bne.n	c0de6cac <standalone_app_main+0x40>
c0de6ca6:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6ca8:	f000 fd72 	bl	c0de7790 <try_context_set>
c0de6cac:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de6cb0:	b908      	cbnz	r0, c0de6cb6 <standalone_app_main+0x4a>
c0de6cb2:	f7ff ffd1 	bl	c0de6c58 <app_exit>
c0de6cb6:	f000 f9d6 	bl	c0de7066 <os_longjmp>

c0de6cba <apdu_parser>:
c0de6cba:	2a04      	cmp	r2, #4
c0de6cbc:	d316      	bcc.n	c0de6cec <apdu_parser+0x32>
c0de6cbe:	d102      	bne.n	c0de6cc6 <apdu_parser+0xc>
c0de6cc0:	2300      	movs	r3, #0
c0de6cc2:	7103      	strb	r3, [r0, #4]
c0de6cc4:	e004      	b.n	c0de6cd0 <apdu_parser+0x16>
c0de6cc6:	790b      	ldrb	r3, [r1, #4]
c0de6cc8:	3a05      	subs	r2, #5
c0de6cca:	429a      	cmp	r2, r3
c0de6ccc:	7103      	strb	r3, [r0, #4]
c0de6cce:	d10d      	bne.n	c0de6cec <apdu_parser+0x32>
c0de6cd0:	780a      	ldrb	r2, [r1, #0]
c0de6cd2:	2b00      	cmp	r3, #0
c0de6cd4:	7002      	strb	r2, [r0, #0]
c0de6cd6:	784a      	ldrb	r2, [r1, #1]
c0de6cd8:	7042      	strb	r2, [r0, #1]
c0de6cda:	788a      	ldrb	r2, [r1, #2]
c0de6cdc:	7082      	strb	r2, [r0, #2]
c0de6cde:	bf18      	it	ne
c0de6ce0:	1d4b      	addne	r3, r1, #5
c0de6ce2:	78c9      	ldrb	r1, [r1, #3]
c0de6ce4:	6083      	str	r3, [r0, #8]
c0de6ce6:	70c1      	strb	r1, [r0, #3]
c0de6ce8:	2001      	movs	r0, #1
c0de6cea:	4770      	bx	lr
c0de6cec:	2000      	movs	r0, #0
c0de6cee:	4770      	bx	lr

c0de6cf0 <read_u32_be>:
c0de6cf0:	5c42      	ldrb	r2, [r0, r1]
c0de6cf2:	4408      	add	r0, r1
c0de6cf4:	7841      	ldrb	r1, [r0, #1]
c0de6cf6:	7883      	ldrb	r3, [r0, #2]
c0de6cf8:	78c0      	ldrb	r0, [r0, #3]
c0de6cfa:	0409      	lsls	r1, r1, #16
c0de6cfc:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de6d00:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6d04:	4408      	add	r0, r1
c0de6d06:	4770      	bx	lr

c0de6d08 <read_u64_be>:
c0de6d08:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d0a:	1842      	adds	r2, r0, r1
c0de6d0c:	5c40      	ldrb	r0, [r0, r1]
c0de6d0e:	7917      	ldrb	r7, [r2, #4]
c0de6d10:	7953      	ldrb	r3, [r2, #5]
c0de6d12:	7854      	ldrb	r4, [r2, #1]
c0de6d14:	7895      	ldrb	r5, [r2, #2]
c0de6d16:	78d6      	ldrb	r6, [r2, #3]
c0de6d18:	063f      	lsls	r7, r7, #24
c0de6d1a:	0421      	lsls	r1, r4, #16
c0de6d1c:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de6d20:	7997      	ldrb	r7, [r2, #6]
c0de6d22:	79d2      	ldrb	r2, [r2, #7]
c0de6d24:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6d28:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6d2c:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de6d30:	1981      	adds	r1, r0, r6
c0de6d32:	441a      	add	r2, r3
c0de6d34:	4610      	mov	r0, r2
c0de6d36:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6d38 <read_u16_le>:
c0de6d38:	5c42      	ldrb	r2, [r0, r1]
c0de6d3a:	4408      	add	r0, r1
c0de6d3c:	7840      	ldrb	r0, [r0, #1]
c0de6d3e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6d42:	b280      	uxth	r0, r0
c0de6d44:	4770      	bx	lr

c0de6d46 <read_u32_le>:
c0de6d46:	5c42      	ldrb	r2, [r0, r1]
c0de6d48:	4408      	add	r0, r1
c0de6d4a:	7841      	ldrb	r1, [r0, #1]
c0de6d4c:	7883      	ldrb	r3, [r0, #2]
c0de6d4e:	78c0      	ldrb	r0, [r0, #3]
c0de6d50:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6d54:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6d58:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de6d5c:	4770      	bx	lr

c0de6d5e <read_u64_le>:
c0de6d5e:	b5b0      	push	{r4, r5, r7, lr}
c0de6d60:	5c42      	ldrb	r2, [r0, r1]
c0de6d62:	4401      	add	r1, r0
c0de6d64:	7848      	ldrb	r0, [r1, #1]
c0de6d66:	788b      	ldrb	r3, [r1, #2]
c0de6d68:	790d      	ldrb	r5, [r1, #4]
c0de6d6a:	78cc      	ldrb	r4, [r1, #3]
c0de6d6c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6d70:	794a      	ldrb	r2, [r1, #5]
c0de6d72:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6d76:	798b      	ldrb	r3, [r1, #6]
c0de6d78:	79c9      	ldrb	r1, [r1, #7]
c0de6d7a:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de6d7e:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6d82:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6d86:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6d8a:	bdb0      	pop	{r4, r5, r7, pc}

c0de6d8c <varint_read>:
c0de6d8c:	b510      	push	{r4, lr}
c0de6d8e:	b1d9      	cbz	r1, c0de6dc8 <varint_read+0x3c>
c0de6d90:	4614      	mov	r4, r2
c0de6d92:	4602      	mov	r2, r0
c0de6d94:	7800      	ldrb	r0, [r0, #0]
c0de6d96:	28ff      	cmp	r0, #255	@ 0xff
c0de6d98:	d00c      	beq.n	c0de6db4 <varint_read+0x28>
c0de6d9a:	28fe      	cmp	r0, #254	@ 0xfe
c0de6d9c:	d012      	beq.n	c0de6dc4 <varint_read+0x38>
c0de6d9e:	28fd      	cmp	r0, #253	@ 0xfd
c0de6da0:	d115      	bne.n	c0de6dce <varint_read+0x42>
c0de6da2:	2903      	cmp	r1, #3
c0de6da4:	d310      	bcc.n	c0de6dc8 <varint_read+0x3c>
c0de6da6:	4610      	mov	r0, r2
c0de6da8:	2101      	movs	r1, #1
c0de6daa:	f7ff ffc5 	bl	c0de6d38 <read_u16_le>
c0de6dae:	2100      	movs	r1, #0
c0de6db0:	2203      	movs	r2, #3
c0de6db2:	e015      	b.n	c0de6de0 <varint_read+0x54>
c0de6db4:	2909      	cmp	r1, #9
c0de6db6:	d307      	bcc.n	c0de6dc8 <varint_read+0x3c>
c0de6db8:	4610      	mov	r0, r2
c0de6dba:	2101      	movs	r1, #1
c0de6dbc:	f7ff ffcf 	bl	c0de6d5e <read_u64_le>
c0de6dc0:	2209      	movs	r2, #9
c0de6dc2:	e00d      	b.n	c0de6de0 <varint_read+0x54>
c0de6dc4:	2905      	cmp	r1, #5
c0de6dc6:	d205      	bcs.n	c0de6dd4 <varint_read+0x48>
c0de6dc8:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6dcc:	e00a      	b.n	c0de6de4 <varint_read+0x58>
c0de6dce:	2100      	movs	r1, #0
c0de6dd0:	2201      	movs	r2, #1
c0de6dd2:	e005      	b.n	c0de6de0 <varint_read+0x54>
c0de6dd4:	4610      	mov	r0, r2
c0de6dd6:	2101      	movs	r1, #1
c0de6dd8:	f7ff ffb5 	bl	c0de6d46 <read_u32_le>
c0de6ddc:	2100      	movs	r1, #0
c0de6dde:	2205      	movs	r2, #5
c0de6de0:	e9c4 0100 	strd	r0, r1, [r4]
c0de6de4:	4610      	mov	r0, r2
c0de6de6:	bd10      	pop	{r4, pc}

c0de6de8 <write_u16_be>:
c0de6de8:	0a13      	lsrs	r3, r2, #8
c0de6dea:	5443      	strb	r3, [r0, r1]
c0de6dec:	4408      	add	r0, r1
c0de6dee:	7042      	strb	r2, [r0, #1]
c0de6df0:	4770      	bx	lr
	...

c0de6df4 <ux_process_button_event>:
c0de6df4:	b5b0      	push	{r4, r5, r7, lr}
c0de6df6:	4604      	mov	r4, r0
c0de6df8:	2001      	movs	r0, #1
c0de6dfa:	f000 f815 	bl	c0de6e28 <ux_forward_event>
c0de6dfe:	4605      	mov	r5, r0
c0de6e00:	f000 f8d1 	bl	c0de6fa6 <nbgl_objAllowDrawing>
c0de6e04:	b165      	cbz	r5, c0de6e20 <ux_process_button_event+0x2c>
c0de6e06:	4807      	ldr	r0, [pc, #28]	@ (c0de6e24 <ux_process_button_event+0x30>)
c0de6e08:	2164      	movs	r1, #100	@ 0x64
c0de6e0a:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6e0e:	4341      	muls	r1, r0
c0de6e10:	78e0      	ldrb	r0, [r4, #3]
c0de6e12:	0840      	lsrs	r0, r0, #1
c0de6e14:	f000 f917 	bl	c0de7046 <nbgl_buttonsHandler>
c0de6e18:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6e1c:	f000 b8b9 	b.w	c0de6f92 <nbgl_refresh>
c0de6e20:	bdb0      	pop	{r4, r5, r7, pc}
c0de6e22:	bf00      	nop
c0de6e24:	00000b14 	.word	0x00000b14

c0de6e28 <ux_forward_event>:
c0de6e28:	b5b0      	push	{r4, r5, r7, lr}
c0de6e2a:	4604      	mov	r4, r0
c0de6e2c:	4812      	ldr	r0, [pc, #72]	@ (c0de6e78 <ux_forward_event+0x50>)
c0de6e2e:	2101      	movs	r1, #1
c0de6e30:	f809 1000 	strb.w	r1, [r9, r0]
c0de6e34:	eb09 0500 	add.w	r5, r9, r0
c0de6e38:	2000      	movs	r0, #0
c0de6e3a:	6068      	str	r0, [r5, #4]
c0de6e3c:	4628      	mov	r0, r5
c0de6e3e:	f000 fc4b 	bl	c0de76d8 <os_ux>
c0de6e42:	2004      	movs	r0, #4
c0de6e44:	f000 fcae 	bl	c0de77a4 <os_sched_last_status>
c0de6e48:	2869      	cmp	r0, #105	@ 0x69
c0de6e4a:	6068      	str	r0, [r5, #4]
c0de6e4c:	d108      	bne.n	c0de6e60 <ux_forward_event+0x38>
c0de6e4e:	2001      	movs	r0, #1
c0de6e50:	f000 f8a9 	bl	c0de6fa6 <nbgl_objAllowDrawing>
c0de6e54:	f000 f8b6 	bl	c0de6fc4 <nbgl_screenRedraw>
c0de6e58:	f000 f89b 	bl	c0de6f92 <nbgl_refresh>
c0de6e5c:	2000      	movs	r0, #0
c0de6e5e:	bdb0      	pop	{r4, r5, r7, pc}
c0de6e60:	b144      	cbz	r4, c0de6e74 <ux_forward_event+0x4c>
c0de6e62:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6e66:	bf18      	it	ne
c0de6e68:	2101      	movne	r1, #1
c0de6e6a:	2800      	cmp	r0, #0
c0de6e6c:	bf18      	it	ne
c0de6e6e:	2001      	movne	r0, #1
c0de6e70:	4008      	ands	r0, r1
c0de6e72:	bdb0      	pop	{r4, r5, r7, pc}
c0de6e74:	2001      	movs	r0, #1
c0de6e76:	bdb0      	pop	{r4, r5, r7, pc}
c0de6e78:	00000b08 	.word	0x00000b08

c0de6e7c <ux_process_ticker_event>:
c0de6e7c:	b510      	push	{r4, lr}
c0de6e7e:	480a      	ldr	r0, [pc, #40]	@ (c0de6ea8 <ux_process_ticker_event+0x2c>)
c0de6e80:	f859 1000 	ldr.w	r1, [r9, r0]
c0de6e84:	3101      	adds	r1, #1
c0de6e86:	f849 1000 	str.w	r1, [r9, r0]
c0de6e8a:	2001      	movs	r0, #1
c0de6e8c:	f7ff ffcc 	bl	c0de6e28 <ux_forward_event>
c0de6e90:	4604      	mov	r4, r0
c0de6e92:	f000 f888 	bl	c0de6fa6 <nbgl_objAllowDrawing>
c0de6e96:	b134      	cbz	r4, c0de6ea6 <ux_process_ticker_event+0x2a>
c0de6e98:	2064      	movs	r0, #100	@ 0x64
c0de6e9a:	f000 f89d 	bl	c0de6fd8 <nbgl_screenHandler>
c0de6e9e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6ea2:	f000 b876 	b.w	c0de6f92 <nbgl_refresh>
c0de6ea6:	bd10      	pop	{r4, pc}
c0de6ea8:	00000b14 	.word	0x00000b14

c0de6eac <ux_process_default_event>:
c0de6eac:	2000      	movs	r0, #0
c0de6eae:	f7ff bfbb 	b.w	c0de6e28 <ux_forward_event>

c0de6eb2 <hash_iovec_ex>:
c0de6eb2:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6eb6:	468a      	mov	sl, r1
c0de6eb8:	4611      	mov	r1, r2
c0de6eba:	461a      	mov	r2, r3
c0de6ebc:	4605      	mov	r5, r0
c0de6ebe:	f000 f84d 	bl	c0de6f5c <cx_hash_init_ex>
c0de6ec2:	4607      	mov	r7, r0
c0de6ec4:	b9a8      	cbnz	r0, c0de6ef2 <hash_iovec_ex+0x40>
c0de6ec6:	f10d 0820 	add.w	r8, sp, #32
c0de6eca:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de6ece:	1d04      	adds	r4, r0, #4
c0de6ed0:	b156      	cbz	r6, c0de6ee8 <hash_iovec_ex+0x36>
c0de6ed2:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de6ed6:	f854 2b08 	ldr.w	r2, [r4], #8
c0de6eda:	4628      	mov	r0, r5
c0de6edc:	f000 f843 	bl	c0de6f66 <cx_hash_update>
c0de6ee0:	3e01      	subs	r6, #1
c0de6ee2:	2800      	cmp	r0, #0
c0de6ee4:	d0f4      	beq.n	c0de6ed0 <hash_iovec_ex+0x1e>
c0de6ee6:	e003      	b.n	c0de6ef0 <hash_iovec_ex+0x3e>
c0de6ee8:	4628      	mov	r0, r5
c0de6eea:	4641      	mov	r1, r8
c0de6eec:	f000 f831 	bl	c0de6f52 <cx_hash_final>
c0de6ef0:	4607      	mov	r7, r0
c0de6ef2:	4628      	mov	r0, r5
c0de6ef4:	4651      	mov	r1, sl
c0de6ef6:	f000 fc73 	bl	c0de77e0 <explicit_bzero>
c0de6efa:	4638      	mov	r0, r7
c0de6efc:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6f00 <cx_keccak_256_hash_iovec>:
c0de6f00:	b580      	push	{r7, lr}
c0de6f02:	b0ee      	sub	sp, #440	@ 0x1b8
c0de6f04:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6f08:	a804      	add	r0, sp, #16
c0de6f0a:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de6f0e:	2206      	movs	r2, #6
c0de6f10:	2320      	movs	r3, #32
c0de6f12:	f7ff ffce 	bl	c0de6eb2 <hash_iovec_ex>
c0de6f16:	b06e      	add	sp, #440	@ 0x1b8
c0de6f18:	bd80      	pop	{r7, pc}

c0de6f1a <cx_blake2b_512_hash_iovec>:
c0de6f1a:	b580      	push	{r7, lr}
c0de6f1c:	b0c4      	sub	sp, #272	@ 0x110
c0de6f1e:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6f22:	a804      	add	r0, sp, #16
c0de6f24:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de6f28:	2209      	movs	r2, #9
c0de6f2a:	2340      	movs	r3, #64	@ 0x40
c0de6f2c:	f7ff ffc1 	bl	c0de6eb2 <hash_iovec_ex>
c0de6f30:	b044      	add	sp, #272	@ 0x110
c0de6f32:	bd80      	pop	{r7, pc}

c0de6f34 <cx_ecdsa_sign_no_throw>:
c0de6f34:	b403      	push	{r0, r1}
c0de6f36:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de6f3a:	f000 b823 	b.w	c0de6f84 <cx_trampoline_helper>

c0de6f3e <cx_ecfp_generate_pair2_no_throw>:
c0de6f3e:	b403      	push	{r0, r1}
c0de6f40:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de6f44:	f000 b81e 	b.w	c0de6f84 <cx_trampoline_helper>

c0de6f48 <cx_ecfp_init_private_key_no_throw>:
c0de6f48:	b403      	push	{r0, r1}
c0de6f4a:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6f4e:	f000 b819 	b.w	c0de6f84 <cx_trampoline_helper>

c0de6f52 <cx_hash_final>:
c0de6f52:	b403      	push	{r0, r1}
c0de6f54:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de6f58:	f000 b814 	b.w	c0de6f84 <cx_trampoline_helper>

c0de6f5c <cx_hash_init_ex>:
c0de6f5c:	b403      	push	{r0, r1}
c0de6f5e:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de6f62:	f000 b80f 	b.w	c0de6f84 <cx_trampoline_helper>

c0de6f66 <cx_hash_update>:
c0de6f66:	b403      	push	{r0, r1}
c0de6f68:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de6f6c:	f000 b80a 	b.w	c0de6f84 <cx_trampoline_helper>

c0de6f70 <cx_rng_no_throw>:
c0de6f70:	b403      	push	{r0, r1}
c0de6f72:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de6f76:	f000 b805 	b.w	c0de6f84 <cx_trampoline_helper>
	...

c0de6f7c <cx_aes_siv_reset>:
c0de6f7c:	b403      	push	{r0, r1}
c0de6f7e:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6f82:	e7ff      	b.n	c0de6f84 <cx_trampoline_helper>

c0de6f84 <cx_trampoline_helper>:
c0de6f84:	4900      	ldr	r1, [pc, #0]	@ (c0de6f88 <cx_trampoline_helper+0x4>)
c0de6f86:	4708      	bx	r1
c0de6f88:	00808001 	.word	0x00808001

c0de6f8c <assert_exit>:
c0de6f8c:	20ff      	movs	r0, #255	@ 0xff
c0de6f8e:	f000 fbc1 	bl	c0de7714 <os_sched_exit>

c0de6f92 <nbgl_refresh>:
c0de6f92:	b403      	push	{r0, r1}
c0de6f94:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de6f98:	f000 b85e 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6f9c <nbgl_objInit>:
c0de6f9c:	b403      	push	{r0, r1}
c0de6f9e:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de6fa2:	f000 b859 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6fa6 <nbgl_objAllowDrawing>:
c0de6fa6:	b403      	push	{r0, r1}
c0de6fa8:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de6fac:	f000 b854 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6fb0 <nbgl_screenSet>:
c0de6fb0:	b403      	push	{r0, r1}
c0de6fb2:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de6fb6:	f000 b84f 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6fba <nbgl_screenPush>:
c0de6fba:	b403      	push	{r0, r1}
c0de6fbc:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de6fc0:	f000 b84a 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6fc4 <nbgl_screenRedraw>:
c0de6fc4:	b403      	push	{r0, r1}
c0de6fc6:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de6fca:	f000 b845 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6fce <nbgl_screenPop>:
c0de6fce:	b403      	push	{r0, r1}
c0de6fd0:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de6fd4:	f000 b840 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6fd8 <nbgl_screenHandler>:
c0de6fd8:	b403      	push	{r0, r1}
c0de6fda:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de6fde:	f000 b83b 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6fe2 <nbgl_objPoolGet>:
c0de6fe2:	b403      	push	{r0, r1}
c0de6fe4:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de6fe8:	f000 b836 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6fec <nbgl_containerPoolGet>:
c0de6fec:	b403      	push	{r0, r1}
c0de6fee:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de6ff2:	f000 b831 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de6ff6 <nbgl_getFont>:
c0de6ff6:	b403      	push	{r0, r1}
c0de6ff8:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de6ffc:	f000 b82c 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de7000 <nbgl_getFontLineHeight>:
c0de7000:	b403      	push	{r0, r1}
c0de7002:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de7006:	f000 b827 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de700a <nbgl_getTextMaxLenAndWidth>:
c0de700a:	b403      	push	{r0, r1}
c0de700c:	f04f 00b3 	mov.w	r0, #179	@ 0xb3
c0de7010:	f000 b822 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de7014 <nbgl_getTextNbLinesInWidth>:
c0de7014:	b403      	push	{r0, r1}
c0de7016:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de701a:	f000 b81d 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de701e <nbgl_getTextNbPagesInWidth>:
c0de701e:	b403      	push	{r0, r1}
c0de7020:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de7024:	f000 b818 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de7028 <nbgl_getTextWidth>:
c0de7028:	b403      	push	{r0, r1}
c0de702a:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de702e:	f000 b813 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de7032 <nbgl_getTextMaxLenInNbLines>:
c0de7032:	b403      	push	{r0, r1}
c0de7034:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de7038:	f000 b80e 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de703c <nbgl_textReduceOnNbLines>:
c0de703c:	b403      	push	{r0, r1}
c0de703e:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de7042:	f000 b809 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de7046 <nbgl_buttonsHandler>:
c0de7046:	b403      	push	{r0, r1}
c0de7048:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de704c:	f000 b804 	b.w	c0de7058 <nbgl_trampoline_helper>

c0de7050 <pic_init>:
c0de7050:	b403      	push	{r0, r1}
c0de7052:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de7056:	e7ff      	b.n	c0de7058 <nbgl_trampoline_helper>

c0de7058 <nbgl_trampoline_helper>:
c0de7058:	4900      	ldr	r1, [pc, #0]	@ (c0de705c <nbgl_trampoline_helper+0x4>)
c0de705a:	4708      	bx	r1
c0de705c:	00808001 	.word	0x00808001

c0de7060 <os_boot>:
c0de7060:	2000      	movs	r0, #0
c0de7062:	f000 bb95 	b.w	c0de7790 <try_context_set>

c0de7066 <os_longjmp>:
c0de7066:	4604      	mov	r4, r0
c0de7068:	f000 fb8a 	bl	c0de7780 <try_context_get>
c0de706c:	4621      	mov	r1, r4
c0de706e:	f000 fbf3 	bl	c0de7858 <longjmp>
	...

c0de7074 <snprintf>:
c0de7074:	b081      	sub	sp, #4
c0de7076:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de707a:	b087      	sub	sp, #28
c0de707c:	2800      	cmp	r0, #0
c0de707e:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de7080:	f000 817a 	beq.w	c0de7378 <snprintf+0x304>
c0de7084:	460d      	mov	r5, r1
c0de7086:	2900      	cmp	r1, #0
c0de7088:	f000 8176 	beq.w	c0de7378 <snprintf+0x304>
c0de708c:	4629      	mov	r1, r5
c0de708e:	4616      	mov	r6, r2
c0de7090:	4604      	mov	r4, r0
c0de7092:	f000 fba1 	bl	c0de77d8 <__aeabi_memclr>
c0de7096:	f1b5 0801 	subs.w	r8, r5, #1
c0de709a:	f000 816d 	beq.w	c0de7378 <snprintf+0x304>
c0de709e:	a80f      	add	r0, sp, #60	@ 0x3c
c0de70a0:	9002      	str	r0, [sp, #8]
c0de70a2:	7830      	ldrb	r0, [r6, #0]
c0de70a4:	2800      	cmp	r0, #0
c0de70a6:	f000 8167 	beq.w	c0de7378 <snprintf+0x304>
c0de70aa:	2700      	movs	r7, #0
c0de70ac:	b128      	cbz	r0, c0de70ba <snprintf+0x46>
c0de70ae:	2825      	cmp	r0, #37	@ 0x25
c0de70b0:	d003      	beq.n	c0de70ba <snprintf+0x46>
c0de70b2:	19f0      	adds	r0, r6, r7
c0de70b4:	3701      	adds	r7, #1
c0de70b6:	7840      	ldrb	r0, [r0, #1]
c0de70b8:	e7f8      	b.n	c0de70ac <snprintf+0x38>
c0de70ba:	4547      	cmp	r7, r8
c0de70bc:	bf28      	it	cs
c0de70be:	4647      	movcs	r7, r8
c0de70c0:	4620      	mov	r0, r4
c0de70c2:	4631      	mov	r1, r6
c0de70c4:	463a      	mov	r2, r7
c0de70c6:	f000 fb7f 	bl	c0de77c8 <__aeabi_memmove>
c0de70ca:	ebb8 0807 	subs.w	r8, r8, r7
c0de70ce:	f000 8153 	beq.w	c0de7378 <snprintf+0x304>
c0de70d2:	5df1      	ldrb	r1, [r6, r7]
c0de70d4:	19f0      	adds	r0, r6, r7
c0de70d6:	443c      	add	r4, r7
c0de70d8:	4606      	mov	r6, r0
c0de70da:	2925      	cmp	r1, #37	@ 0x25
c0de70dc:	d1e1      	bne.n	c0de70a2 <snprintf+0x2e>
c0de70de:	1c41      	adds	r1, r0, #1
c0de70e0:	f04f 0b00 	mov.w	fp, #0
c0de70e4:	f04f 0e20 	mov.w	lr, #32
c0de70e8:	2500      	movs	r5, #0
c0de70ea:	2600      	movs	r6, #0
c0de70ec:	3101      	adds	r1, #1
c0de70ee:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de70f2:	4632      	mov	r2, r6
c0de70f4:	3101      	adds	r1, #1
c0de70f6:	2600      	movs	r6, #0
c0de70f8:	2b2d      	cmp	r3, #45	@ 0x2d
c0de70fa:	d0f8      	beq.n	c0de70ee <snprintf+0x7a>
c0de70fc:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de7100:	2e0a      	cmp	r6, #10
c0de7102:	d313      	bcc.n	c0de712c <snprintf+0xb8>
c0de7104:	2b25      	cmp	r3, #37	@ 0x25
c0de7106:	d046      	beq.n	c0de7196 <snprintf+0x122>
c0de7108:	2b2a      	cmp	r3, #42	@ 0x2a
c0de710a:	d01f      	beq.n	c0de714c <snprintf+0xd8>
c0de710c:	2b2e      	cmp	r3, #46	@ 0x2e
c0de710e:	d129      	bne.n	c0de7164 <snprintf+0xf0>
c0de7110:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de7114:	2a2a      	cmp	r2, #42	@ 0x2a
c0de7116:	d13c      	bne.n	c0de7192 <snprintf+0x11e>
c0de7118:	780a      	ldrb	r2, [r1, #0]
c0de711a:	2a48      	cmp	r2, #72	@ 0x48
c0de711c:	d003      	beq.n	c0de7126 <snprintf+0xb2>
c0de711e:	2a73      	cmp	r2, #115	@ 0x73
c0de7120:	d001      	beq.n	c0de7126 <snprintf+0xb2>
c0de7122:	2a68      	cmp	r2, #104	@ 0x68
c0de7124:	d135      	bne.n	c0de7192 <snprintf+0x11e>
c0de7126:	9a02      	ldr	r2, [sp, #8]
c0de7128:	2601      	movs	r6, #1
c0de712a:	e017      	b.n	c0de715c <snprintf+0xe8>
c0de712c:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de7130:	ea56 060b 	orrs.w	r6, r6, fp
c0de7134:	bf08      	it	eq
c0de7136:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de713a:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de713e:	3901      	subs	r1, #1
c0de7140:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de7144:	4616      	mov	r6, r2
c0de7146:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de714a:	e7cf      	b.n	c0de70ec <snprintf+0x78>
c0de714c:	460b      	mov	r3, r1
c0de714e:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de7152:	2a73      	cmp	r2, #115	@ 0x73
c0de7154:	d11d      	bne.n	c0de7192 <snprintf+0x11e>
c0de7156:	9a02      	ldr	r2, [sp, #8]
c0de7158:	2602      	movs	r6, #2
c0de715a:	4619      	mov	r1, r3
c0de715c:	1d13      	adds	r3, r2, #4
c0de715e:	9302      	str	r3, [sp, #8]
c0de7160:	6815      	ldr	r5, [r2, #0]
c0de7162:	e7c3      	b.n	c0de70ec <snprintf+0x78>
c0de7164:	2b48      	cmp	r3, #72	@ 0x48
c0de7166:	d018      	beq.n	c0de719a <snprintf+0x126>
c0de7168:	2b58      	cmp	r3, #88	@ 0x58
c0de716a:	d019      	beq.n	c0de71a0 <snprintf+0x12c>
c0de716c:	2b63      	cmp	r3, #99	@ 0x63
c0de716e:	d020      	beq.n	c0de71b2 <snprintf+0x13e>
c0de7170:	2b64      	cmp	r3, #100	@ 0x64
c0de7172:	d02a      	beq.n	c0de71ca <snprintf+0x156>
c0de7174:	2b68      	cmp	r3, #104	@ 0x68
c0de7176:	d036      	beq.n	c0de71e6 <snprintf+0x172>
c0de7178:	2b70      	cmp	r3, #112	@ 0x70
c0de717a:	d006      	beq.n	c0de718a <snprintf+0x116>
c0de717c:	2b73      	cmp	r3, #115	@ 0x73
c0de717e:	d037      	beq.n	c0de71f0 <snprintf+0x17c>
c0de7180:	2b75      	cmp	r3, #117	@ 0x75
c0de7182:	f000 8081 	beq.w	c0de7288 <snprintf+0x214>
c0de7186:	2b78      	cmp	r3, #120	@ 0x78
c0de7188:	d103      	bne.n	c0de7192 <snprintf+0x11e>
c0de718a:	9400      	str	r4, [sp, #0]
c0de718c:	f04f 0c00 	mov.w	ip, #0
c0de7190:	e009      	b.n	c0de71a6 <snprintf+0x132>
c0de7192:	1e4e      	subs	r6, r1, #1
c0de7194:	e785      	b.n	c0de70a2 <snprintf+0x2e>
c0de7196:	2025      	movs	r0, #37	@ 0x25
c0de7198:	e00f      	b.n	c0de71ba <snprintf+0x146>
c0de719a:	487b      	ldr	r0, [pc, #492]	@ (c0de7388 <snprintf+0x314>)
c0de719c:	4478      	add	r0, pc
c0de719e:	e024      	b.n	c0de71ea <snprintf+0x176>
c0de71a0:	f04f 0c01 	mov.w	ip, #1
c0de71a4:	9400      	str	r4, [sp, #0]
c0de71a6:	9a02      	ldr	r2, [sp, #8]
c0de71a8:	2400      	movs	r4, #0
c0de71aa:	1d13      	adds	r3, r2, #4
c0de71ac:	9302      	str	r3, [sp, #8]
c0de71ae:	2310      	movs	r3, #16
c0de71b0:	e072      	b.n	c0de7298 <snprintf+0x224>
c0de71b2:	9802      	ldr	r0, [sp, #8]
c0de71b4:	1d02      	adds	r2, r0, #4
c0de71b6:	9202      	str	r2, [sp, #8]
c0de71b8:	6800      	ldr	r0, [r0, #0]
c0de71ba:	1e4e      	subs	r6, r1, #1
c0de71bc:	f804 0b01 	strb.w	r0, [r4], #1
c0de71c0:	f1b8 0801 	subs.w	r8, r8, #1
c0de71c4:	f47f af6d 	bne.w	c0de70a2 <snprintf+0x2e>
c0de71c8:	e0d6      	b.n	c0de7378 <snprintf+0x304>
c0de71ca:	9a02      	ldr	r2, [sp, #8]
c0de71cc:	9400      	str	r4, [sp, #0]
c0de71ce:	1d13      	adds	r3, r2, #4
c0de71d0:	9302      	str	r3, [sp, #8]
c0de71d2:	6813      	ldr	r3, [r2, #0]
c0de71d4:	2b00      	cmp	r3, #0
c0de71d6:	461a      	mov	r2, r3
c0de71d8:	d500      	bpl.n	c0de71dc <snprintf+0x168>
c0de71da:	425a      	negs	r2, r3
c0de71dc:	0fdc      	lsrs	r4, r3, #31
c0de71de:	f04f 0c00 	mov.w	ip, #0
c0de71e2:	230a      	movs	r3, #10
c0de71e4:	e059      	b.n	c0de729a <snprintf+0x226>
c0de71e6:	4869      	ldr	r0, [pc, #420]	@ (c0de738c <snprintf+0x318>)
c0de71e8:	4478      	add	r0, pc
c0de71ea:	f04f 0c01 	mov.w	ip, #1
c0de71ee:	e003      	b.n	c0de71f8 <snprintf+0x184>
c0de71f0:	4864      	ldr	r0, [pc, #400]	@ (c0de7384 <snprintf+0x310>)
c0de71f2:	f04f 0c00 	mov.w	ip, #0
c0de71f6:	4478      	add	r0, pc
c0de71f8:	9b02      	ldr	r3, [sp, #8]
c0de71fa:	b2d2      	uxtb	r2, r2
c0de71fc:	1d1e      	adds	r6, r3, #4
c0de71fe:	9602      	str	r6, [sp, #8]
c0de7200:	1e4e      	subs	r6, r1, #1
c0de7202:	6819      	ldr	r1, [r3, #0]
c0de7204:	2a02      	cmp	r2, #2
c0de7206:	f000 80a7 	beq.w	c0de7358 <snprintf+0x2e4>
c0de720a:	2a01      	cmp	r2, #1
c0de720c:	d007      	beq.n	c0de721e <snprintf+0x1aa>
c0de720e:	463d      	mov	r5, r7
c0de7210:	b92a      	cbnz	r2, c0de721e <snprintf+0x1aa>
c0de7212:	2200      	movs	r2, #0
c0de7214:	5c8b      	ldrb	r3, [r1, r2]
c0de7216:	3201      	adds	r2, #1
c0de7218:	2b00      	cmp	r3, #0
c0de721a:	d1fb      	bne.n	c0de7214 <snprintf+0x1a0>
c0de721c:	1e55      	subs	r5, r2, #1
c0de721e:	f1bc 0f00 	cmp.w	ip, #0
c0de7222:	d016      	beq.n	c0de7252 <snprintf+0x1de>
c0de7224:	2d00      	cmp	r5, #0
c0de7226:	f43f af3c 	beq.w	c0de70a2 <snprintf+0x2e>
c0de722a:	f1b8 0f02 	cmp.w	r8, #2
c0de722e:	f0c0 80a3 	bcc.w	c0de7378 <snprintf+0x304>
c0de7232:	780a      	ldrb	r2, [r1, #0]
c0de7234:	0913      	lsrs	r3, r2, #4
c0de7236:	f002 020f 	and.w	r2, r2, #15
c0de723a:	5cc3      	ldrb	r3, [r0, r3]
c0de723c:	f1b8 0802 	subs.w	r8, r8, #2
c0de7240:	7023      	strb	r3, [r4, #0]
c0de7242:	5c82      	ldrb	r2, [r0, r2]
c0de7244:	7062      	strb	r2, [r4, #1]
c0de7246:	f000 8097 	beq.w	c0de7378 <snprintf+0x304>
c0de724a:	3101      	adds	r1, #1
c0de724c:	3d01      	subs	r5, #1
c0de724e:	3402      	adds	r4, #2
c0de7250:	e7e8      	b.n	c0de7224 <snprintf+0x1b0>
c0de7252:	4545      	cmp	r5, r8
c0de7254:	bf28      	it	cs
c0de7256:	4645      	movcs	r5, r8
c0de7258:	4620      	mov	r0, r4
c0de725a:	462a      	mov	r2, r5
c0de725c:	f000 fab4 	bl	c0de77c8 <__aeabi_memmove>
c0de7260:	ebb8 0805 	subs.w	r8, r8, r5
c0de7264:	f000 8088 	beq.w	c0de7378 <snprintf+0x304>
c0de7268:	462f      	mov	r7, r5
c0de726a:	442c      	add	r4, r5
c0de726c:	45bb      	cmp	fp, r7
c0de726e:	f67f af18 	bls.w	c0de70a2 <snprintf+0x2e>
c0de7272:	ebab 0507 	sub.w	r5, fp, r7
c0de7276:	4620      	mov	r0, r4
c0de7278:	4545      	cmp	r5, r8
c0de727a:	bf28      	it	cs
c0de727c:	4645      	movcs	r5, r8
c0de727e:	4629      	mov	r1, r5
c0de7280:	2220      	movs	r2, #32
c0de7282:	f000 faa3 	bl	c0de77cc <__aeabi_memset>
c0de7286:	e061      	b.n	c0de734c <snprintf+0x2d8>
c0de7288:	9a02      	ldr	r2, [sp, #8]
c0de728a:	9400      	str	r4, [sp, #0]
c0de728c:	2400      	movs	r4, #0
c0de728e:	f04f 0c00 	mov.w	ip, #0
c0de7292:	1d13      	adds	r3, r2, #4
c0de7294:	9302      	str	r3, [sp, #8]
c0de7296:	230a      	movs	r3, #10
c0de7298:	6812      	ldr	r2, [r2, #0]
c0de729a:	483d      	ldr	r0, [pc, #244]	@ (c0de7390 <snprintf+0x31c>)
c0de729c:	1e4e      	subs	r6, r1, #1
c0de729e:	f04f 0a01 	mov.w	sl, #1
c0de72a2:	4478      	add	r0, pc
c0de72a4:	9001      	str	r0, [sp, #4]
c0de72a6:	fba3 570a 	umull	r5, r7, r3, sl
c0de72aa:	2f00      	cmp	r7, #0
c0de72ac:	bf18      	it	ne
c0de72ae:	2701      	movne	r7, #1
c0de72b0:	4295      	cmp	r5, r2
c0de72b2:	d804      	bhi.n	c0de72be <snprintf+0x24a>
c0de72b4:	b91f      	cbnz	r7, c0de72be <snprintf+0x24a>
c0de72b6:	f1ab 0b01 	sub.w	fp, fp, #1
c0de72ba:	46aa      	mov	sl, r5
c0de72bc:	e7f3      	b.n	c0de72a6 <snprintf+0x232>
c0de72be:	2c00      	cmp	r4, #0
c0de72c0:	4627      	mov	r7, r4
c0de72c2:	f04f 0500 	mov.w	r5, #0
c0de72c6:	bf18      	it	ne
c0de72c8:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de72cc:	d00d      	beq.n	c0de72ea <snprintf+0x276>
c0de72ce:	4660      	mov	r0, ip
c0de72d0:	fa5f fc8e 	uxtb.w	ip, lr
c0de72d4:	a903      	add	r1, sp, #12
c0de72d6:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de72da:	4684      	mov	ip, r0
c0de72dc:	d106      	bne.n	c0de72ec <snprintf+0x278>
c0de72de:	202d      	movs	r0, #45	@ 0x2d
c0de72e0:	2400      	movs	r4, #0
c0de72e2:	2501      	movs	r5, #1
c0de72e4:	f88d 000c 	strb.w	r0, [sp, #12]
c0de72e8:	e000      	b.n	c0de72ec <snprintf+0x278>
c0de72ea:	a903      	add	r1, sp, #12
c0de72ec:	eb07 000b 	add.w	r0, r7, fp
c0de72f0:	3802      	subs	r0, #2
c0de72f2:	280d      	cmp	r0, #13
c0de72f4:	d808      	bhi.n	c0de7308 <snprintf+0x294>
c0de72f6:	f1c7 0701 	rsb	r7, r7, #1
c0de72fa:	45bb      	cmp	fp, r7
c0de72fc:	d004      	beq.n	c0de7308 <snprintf+0x294>
c0de72fe:	f801 e005 	strb.w	lr, [r1, r5]
c0de7302:	3701      	adds	r7, #1
c0de7304:	3501      	adds	r5, #1
c0de7306:	e7f8      	b.n	c0de72fa <snprintf+0x286>
c0de7308:	9f01      	ldr	r7, [sp, #4]
c0de730a:	b114      	cbz	r4, c0de7312 <snprintf+0x29e>
c0de730c:	202d      	movs	r0, #45	@ 0x2d
c0de730e:	5548      	strb	r0, [r1, r5]
c0de7310:	3501      	adds	r5, #1
c0de7312:	4820      	ldr	r0, [pc, #128]	@ (c0de7394 <snprintf+0x320>)
c0de7314:	f1bc 0f00 	cmp.w	ip, #0
c0de7318:	4478      	add	r0, pc
c0de731a:	bf08      	it	eq
c0de731c:	4638      	moveq	r0, r7
c0de731e:	f1ba 0f00 	cmp.w	sl, #0
c0de7322:	d00b      	beq.n	c0de733c <snprintf+0x2c8>
c0de7324:	fbb2 f7fa 	udiv	r7, r2, sl
c0de7328:	fbba faf3 	udiv	sl, sl, r3
c0de732c:	fbb7 f4f3 	udiv	r4, r7, r3
c0de7330:	fb04 7413 	mls	r4, r4, r3, r7
c0de7334:	5d04      	ldrb	r4, [r0, r4]
c0de7336:	554c      	strb	r4, [r1, r5]
c0de7338:	3501      	adds	r5, #1
c0de733a:	e7f0      	b.n	c0de731e <snprintf+0x2aa>
c0de733c:	4545      	cmp	r5, r8
c0de733e:	bf28      	it	cs
c0de7340:	4645      	movcs	r5, r8
c0de7342:	9c00      	ldr	r4, [sp, #0]
c0de7344:	462a      	mov	r2, r5
c0de7346:	4620      	mov	r0, r4
c0de7348:	f000 fa3e 	bl	c0de77c8 <__aeabi_memmove>
c0de734c:	ebb8 0805 	subs.w	r8, r8, r5
c0de7350:	442c      	add	r4, r5
c0de7352:	f47f aea6 	bne.w	c0de70a2 <snprintf+0x2e>
c0de7356:	e00f      	b.n	c0de7378 <snprintf+0x304>
c0de7358:	7808      	ldrb	r0, [r1, #0]
c0de735a:	2800      	cmp	r0, #0
c0de735c:	f47f aea1 	bne.w	c0de70a2 <snprintf+0x2e>
c0de7360:	4545      	cmp	r5, r8
c0de7362:	bf28      	it	cs
c0de7364:	4645      	movcs	r5, r8
c0de7366:	4620      	mov	r0, r4
c0de7368:	4629      	mov	r1, r5
c0de736a:	2220      	movs	r2, #32
c0de736c:	f000 fa2e 	bl	c0de77cc <__aeabi_memset>
c0de7370:	ebb8 0805 	subs.w	r8, r8, r5
c0de7374:	f47f af79 	bne.w	c0de726a <snprintf+0x1f6>
c0de7378:	2000      	movs	r0, #0
c0de737a:	b007      	add	sp, #28
c0de737c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7380:	b001      	add	sp, #4
c0de7382:	4770      	bx	lr
c0de7384:	00001ad6 	.word	0x00001ad6
c0de7388:	00001b40 	.word	0x00001b40
c0de738c:	00001ae4 	.word	0x00001ae4
c0de7390:	00001a2a 	.word	0x00001a2a
c0de7394:	000019c4 	.word	0x000019c4

c0de7398 <pic>:
c0de7398:	4a0a      	ldr	r2, [pc, #40]	@ (c0de73c4 <pic+0x2c>)
c0de739a:	4282      	cmp	r2, r0
c0de739c:	490a      	ldr	r1, [pc, #40]	@ (c0de73c8 <pic+0x30>)
c0de739e:	d806      	bhi.n	c0de73ae <pic+0x16>
c0de73a0:	4281      	cmp	r1, r0
c0de73a2:	d304      	bcc.n	c0de73ae <pic+0x16>
c0de73a4:	b580      	push	{r7, lr}
c0de73a6:	f000 f815 	bl	c0de73d4 <pic_internal>
c0de73aa:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de73ae:	4907      	ldr	r1, [pc, #28]	@ (c0de73cc <pic+0x34>)
c0de73b0:	4288      	cmp	r0, r1
c0de73b2:	4a07      	ldr	r2, [pc, #28]	@ (c0de73d0 <pic+0x38>)
c0de73b4:	d304      	bcc.n	c0de73c0 <pic+0x28>
c0de73b6:	4290      	cmp	r0, r2
c0de73b8:	d802      	bhi.n	c0de73c0 <pic+0x28>
c0de73ba:	1a40      	subs	r0, r0, r1
c0de73bc:	4649      	mov	r1, r9
c0de73be:	4408      	add	r0, r1
c0de73c0:	4770      	bx	lr
c0de73c2:	0000      	movs	r0, r0
c0de73c4:	c0de0000 	.word	0xc0de0000
c0de73c8:	c0de9040 	.word	0xc0de9040
c0de73cc:	da7a0000 	.word	0xda7a0000
c0de73d0:	da7aa000 	.word	0xda7aa000

c0de73d4 <pic_internal>:
c0de73d4:	467a      	mov	r2, pc
c0de73d6:	4902      	ldr	r1, [pc, #8]	@ (c0de73e0 <pic_internal+0xc>)
c0de73d8:	1cc9      	adds	r1, r1, #3
c0de73da:	1a89      	subs	r1, r1, r2
c0de73dc:	1a40      	subs	r0, r0, r1
c0de73de:	4770      	bx	lr
c0de73e0:	c0de73d5 	.word	0xc0de73d5

c0de73e4 <SVC_Call>:
c0de73e4:	df01      	svc	1
c0de73e6:	2900      	cmp	r1, #0
c0de73e8:	d100      	bne.n	c0de73ec <exception>
c0de73ea:	4770      	bx	lr

c0de73ec <exception>:
c0de73ec:	4608      	mov	r0, r1
c0de73ee:	f7ff fe3a 	bl	c0de7066 <os_longjmp>
	...

c0de73f4 <SVC_cx_call>:
c0de73f4:	df01      	svc	1
c0de73f6:	4770      	bx	lr

c0de73f8 <nvm_write>:
c0de73f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de73fa:	ab01      	add	r3, sp, #4
c0de73fc:	c307      	stmia	r3!, {r0, r1, r2}
c0de73fe:	4802      	ldr	r0, [pc, #8]	@ (c0de7408 <nvm_write+0x10>)
c0de7400:	a901      	add	r1, sp, #4
c0de7402:	f7ff ffef 	bl	c0de73e4 <SVC_Call>
c0de7406:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7408:	03000003 	.word	0x03000003

c0de740c <cx_bn_lock>:
c0de740c:	b5e0      	push	{r5, r6, r7, lr}
c0de740e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7412:	4802      	ldr	r0, [pc, #8]	@ (c0de741c <cx_bn_lock+0x10>)
c0de7414:	4669      	mov	r1, sp
c0de7416:	f7ff ffed 	bl	c0de73f4 <SVC_cx_call>
c0de741a:	bd8c      	pop	{r2, r3, r7, pc}
c0de741c:	02000112 	.word	0x02000112

c0de7420 <cx_bn_unlock>:
c0de7420:	b5e0      	push	{r5, r6, r7, lr}
c0de7422:	2000      	movs	r0, #0
c0de7424:	4669      	mov	r1, sp
c0de7426:	9001      	str	r0, [sp, #4]
c0de7428:	20b6      	movs	r0, #182	@ 0xb6
c0de742a:	f7ff ffe3 	bl	c0de73f4 <SVC_cx_call>
c0de742e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7430 <cx_bn_alloc>:
c0de7430:	b5e0      	push	{r5, r6, r7, lr}
c0de7432:	e9cd 0100 	strd	r0, r1, [sp]
c0de7436:	4802      	ldr	r0, [pc, #8]	@ (c0de7440 <cx_bn_alloc+0x10>)
c0de7438:	4669      	mov	r1, sp
c0de743a:	f7ff ffdb 	bl	c0de73f4 <SVC_cx_call>
c0de743e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7440:	02000113 	.word	0x02000113

c0de7444 <cx_bn_alloc_init>:
c0de7444:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7446:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de744a:	4803      	ldr	r0, [pc, #12]	@ (c0de7458 <cx_bn_alloc_init+0x14>)
c0de744c:	4669      	mov	r1, sp
c0de744e:	f7ff ffd1 	bl	c0de73f4 <SVC_cx_call>
c0de7452:	b004      	add	sp, #16
c0de7454:	bd80      	pop	{r7, pc}
c0de7456:	bf00      	nop
c0de7458:	04000114 	.word	0x04000114

c0de745c <cx_bn_destroy>:
c0de745c:	b5e0      	push	{r5, r6, r7, lr}
c0de745e:	f000 f9ad 	bl	c0de77bc <OUTLINED_FUNCTION_0>
c0de7462:	4802      	ldr	r0, [pc, #8]	@ (c0de746c <cx_bn_destroy+0x10>)
c0de7464:	4669      	mov	r1, sp
c0de7466:	f7ff ffc5 	bl	c0de73f4 <SVC_cx_call>
c0de746a:	bd8c      	pop	{r2, r3, r7, pc}
c0de746c:	010000bc 	.word	0x010000bc

c0de7470 <cx_bn_nbytes>:
c0de7470:	b5e0      	push	{r5, r6, r7, lr}
c0de7472:	e9cd 0100 	strd	r0, r1, [sp]
c0de7476:	4802      	ldr	r0, [pc, #8]	@ (c0de7480 <cx_bn_nbytes+0x10>)
c0de7478:	4669      	mov	r1, sp
c0de747a:	f7ff ffbb 	bl	c0de73f4 <SVC_cx_call>
c0de747e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7480:	0200010d 	.word	0x0200010d

c0de7484 <cx_bn_init>:
c0de7484:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7486:	ab01      	add	r3, sp, #4
c0de7488:	c307      	stmia	r3!, {r0, r1, r2}
c0de748a:	4803      	ldr	r0, [pc, #12]	@ (c0de7498 <cx_bn_init+0x14>)
c0de748c:	a901      	add	r1, sp, #4
c0de748e:	f7ff ffb1 	bl	c0de73f4 <SVC_cx_call>
c0de7492:	b004      	add	sp, #16
c0de7494:	bd80      	pop	{r7, pc}
c0de7496:	bf00      	nop
c0de7498:	03000115 	.word	0x03000115

c0de749c <cx_bn_copy>:
c0de749c:	b5e0      	push	{r5, r6, r7, lr}
c0de749e:	e9cd 0100 	strd	r0, r1, [sp]
c0de74a2:	4802      	ldr	r0, [pc, #8]	@ (c0de74ac <cx_bn_copy+0x10>)
c0de74a4:	4669      	mov	r1, sp
c0de74a6:	f7ff ffa5 	bl	c0de73f4 <SVC_cx_call>
c0de74aa:	bd8c      	pop	{r2, r3, r7, pc}
c0de74ac:	020000c0 	.word	0x020000c0

c0de74b0 <cx_bn_set_u32>:
c0de74b0:	b5e0      	push	{r5, r6, r7, lr}
c0de74b2:	e9cd 0100 	strd	r0, r1, [sp]
c0de74b6:	4802      	ldr	r0, [pc, #8]	@ (c0de74c0 <cx_bn_set_u32+0x10>)
c0de74b8:	4669      	mov	r1, sp
c0de74ba:	f7ff ff9b 	bl	c0de73f4 <SVC_cx_call>
c0de74be:	bd8c      	pop	{r2, r3, r7, pc}
c0de74c0:	020000c1 	.word	0x020000c1

c0de74c4 <cx_bn_export>:
c0de74c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de74c6:	ab01      	add	r3, sp, #4
c0de74c8:	c307      	stmia	r3!, {r0, r1, r2}
c0de74ca:	4803      	ldr	r0, [pc, #12]	@ (c0de74d8 <cx_bn_export+0x14>)
c0de74cc:	a901      	add	r1, sp, #4
c0de74ce:	f7ff ff91 	bl	c0de73f4 <SVC_cx_call>
c0de74d2:	b004      	add	sp, #16
c0de74d4:	bd80      	pop	{r7, pc}
c0de74d6:	bf00      	nop
c0de74d8:	030000c3 	.word	0x030000c3

c0de74dc <cx_bn_cmp>:
c0de74dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de74de:	ab01      	add	r3, sp, #4
c0de74e0:	c307      	stmia	r3!, {r0, r1, r2}
c0de74e2:	4803      	ldr	r0, [pc, #12]	@ (c0de74f0 <cx_bn_cmp+0x14>)
c0de74e4:	a901      	add	r1, sp, #4
c0de74e6:	f7ff ff85 	bl	c0de73f4 <SVC_cx_call>
c0de74ea:	b004      	add	sp, #16
c0de74ec:	bd80      	pop	{r7, pc}
c0de74ee:	bf00      	nop
c0de74f0:	030000c4 	.word	0x030000c4

c0de74f4 <cx_bn_cmp_u32>:
c0de74f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de74f6:	ab01      	add	r3, sp, #4
c0de74f8:	c307      	stmia	r3!, {r0, r1, r2}
c0de74fa:	4803      	ldr	r0, [pc, #12]	@ (c0de7508 <cx_bn_cmp_u32+0x14>)
c0de74fc:	a901      	add	r1, sp, #4
c0de74fe:	f7ff ff79 	bl	c0de73f4 <SVC_cx_call>
c0de7502:	b004      	add	sp, #16
c0de7504:	bd80      	pop	{r7, pc}
c0de7506:	bf00      	nop
c0de7508:	030000c5 	.word	0x030000c5

c0de750c <cx_bn_tst_bit>:
c0de750c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de750e:	ab01      	add	r3, sp, #4
c0de7510:	c307      	stmia	r3!, {r0, r1, r2}
c0de7512:	4803      	ldr	r0, [pc, #12]	@ (c0de7520 <cx_bn_tst_bit+0x14>)
c0de7514:	a901      	add	r1, sp, #4
c0de7516:	f7ff ff6d 	bl	c0de73f4 <SVC_cx_call>
c0de751a:	b004      	add	sp, #16
c0de751c:	bd80      	pop	{r7, pc}
c0de751e:	bf00      	nop
c0de7520:	030000cb 	.word	0x030000cb

c0de7524 <cx_bn_mod_add>:
c0de7524:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7526:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de752a:	4803      	ldr	r0, [pc, #12]	@ (c0de7538 <cx_bn_mod_add+0x14>)
c0de752c:	4669      	mov	r1, sp
c0de752e:	f7ff ff61 	bl	c0de73f4 <SVC_cx_call>
c0de7532:	b004      	add	sp, #16
c0de7534:	bd80      	pop	{r7, pc}
c0de7536:	bf00      	nop
c0de7538:	040000d3 	.word	0x040000d3

c0de753c <cx_bn_mod_sub>:
c0de753c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de753e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7542:	4803      	ldr	r0, [pc, #12]	@ (c0de7550 <cx_bn_mod_sub+0x14>)
c0de7544:	4669      	mov	r1, sp
c0de7546:	f7ff ff55 	bl	c0de73f4 <SVC_cx_call>
c0de754a:	b004      	add	sp, #16
c0de754c:	bd80      	pop	{r7, pc}
c0de754e:	bf00      	nop
c0de7550:	040000d4 	.word	0x040000d4

c0de7554 <cx_bn_mod_mul>:
c0de7554:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7556:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de755a:	4803      	ldr	r0, [pc, #12]	@ (c0de7568 <cx_bn_mod_mul+0x14>)
c0de755c:	4669      	mov	r1, sp
c0de755e:	f7ff ff49 	bl	c0de73f4 <SVC_cx_call>
c0de7562:	b004      	add	sp, #16
c0de7564:	bd80      	pop	{r7, pc}
c0de7566:	bf00      	nop
c0de7568:	040000d5 	.word	0x040000d5

c0de756c <cx_bn_reduce>:
c0de756c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de756e:	ab01      	add	r3, sp, #4
c0de7570:	c307      	stmia	r3!, {r0, r1, r2}
c0de7572:	4803      	ldr	r0, [pc, #12]	@ (c0de7580 <cx_bn_reduce+0x14>)
c0de7574:	a901      	add	r1, sp, #4
c0de7576:	f7ff ff3d 	bl	c0de73f4 <SVC_cx_call>
c0de757a:	b004      	add	sp, #16
c0de757c:	bd80      	pop	{r7, pc}
c0de757e:	bf00      	nop
c0de7580:	030000d6 	.word	0x030000d6

c0de7584 <cx_bn_mod_invert_nprime>:
c0de7584:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7586:	ab01      	add	r3, sp, #4
c0de7588:	c307      	stmia	r3!, {r0, r1, r2}
c0de758a:	4803      	ldr	r0, [pc, #12]	@ (c0de7598 <cx_bn_mod_invert_nprime+0x14>)
c0de758c:	a901      	add	r1, sp, #4
c0de758e:	f7ff ff31 	bl	c0de73f4 <SVC_cx_call>
c0de7592:	b004      	add	sp, #16
c0de7594:	bd80      	pop	{r7, pc}
c0de7596:	bf00      	nop
c0de7598:	030000da 	.word	0x030000da

c0de759c <cx_bn_is_prime>:
c0de759c:	b5e0      	push	{r5, r6, r7, lr}
c0de759e:	e9cd 0100 	strd	r0, r1, [sp]
c0de75a2:	4802      	ldr	r0, [pc, #8]	@ (c0de75ac <cx_bn_is_prime+0x10>)
c0de75a4:	4669      	mov	r1, sp
c0de75a6:	f7ff ff25 	bl	c0de73f4 <SVC_cx_call>
c0de75aa:	bd8c      	pop	{r2, r3, r7, pc}
c0de75ac:	020000ef 	.word	0x020000ef

c0de75b0 <cx_mont_alloc>:
c0de75b0:	b5e0      	push	{r5, r6, r7, lr}
c0de75b2:	e9cd 0100 	strd	r0, r1, [sp]
c0de75b6:	4802      	ldr	r0, [pc, #8]	@ (c0de75c0 <cx_mont_alloc+0x10>)
c0de75b8:	4669      	mov	r1, sp
c0de75ba:	f7ff ff1b 	bl	c0de73f4 <SVC_cx_call>
c0de75be:	bd8c      	pop	{r2, r3, r7, pc}
c0de75c0:	020000dc 	.word	0x020000dc

c0de75c4 <cx_mont_init>:
c0de75c4:	b5e0      	push	{r5, r6, r7, lr}
c0de75c6:	e9cd 0100 	strd	r0, r1, [sp]
c0de75ca:	4802      	ldr	r0, [pc, #8]	@ (c0de75d4 <cx_mont_init+0x10>)
c0de75cc:	4669      	mov	r1, sp
c0de75ce:	f7ff ff11 	bl	c0de73f4 <SVC_cx_call>
c0de75d2:	bd8c      	pop	{r2, r3, r7, pc}
c0de75d4:	020000dd 	.word	0x020000dd

c0de75d8 <cx_mont_to_montgomery>:
c0de75d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de75da:	ab01      	add	r3, sp, #4
c0de75dc:	c307      	stmia	r3!, {r0, r1, r2}
c0de75de:	4803      	ldr	r0, [pc, #12]	@ (c0de75ec <cx_mont_to_montgomery+0x14>)
c0de75e0:	a901      	add	r1, sp, #4
c0de75e2:	f7ff ff07 	bl	c0de73f4 <SVC_cx_call>
c0de75e6:	b004      	add	sp, #16
c0de75e8:	bd80      	pop	{r7, pc}
c0de75ea:	bf00      	nop
c0de75ec:	030000df 	.word	0x030000df

c0de75f0 <cx_mont_from_montgomery>:
c0de75f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de75f2:	ab01      	add	r3, sp, #4
c0de75f4:	c307      	stmia	r3!, {r0, r1, r2}
c0de75f6:	4803      	ldr	r0, [pc, #12]	@ (c0de7604 <cx_mont_from_montgomery+0x14>)
c0de75f8:	a901      	add	r1, sp, #4
c0de75fa:	f7ff fefb 	bl	c0de73f4 <SVC_cx_call>
c0de75fe:	b004      	add	sp, #16
c0de7600:	bd80      	pop	{r7, pc}
c0de7602:	bf00      	nop
c0de7604:	030000e0 	.word	0x030000e0

c0de7608 <cx_mont_mul>:
c0de7608:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de760a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de760e:	4803      	ldr	r0, [pc, #12]	@ (c0de761c <cx_mont_mul+0x14>)
c0de7610:	4669      	mov	r1, sp
c0de7612:	f7ff feef 	bl	c0de73f4 <SVC_cx_call>
c0de7616:	b004      	add	sp, #16
c0de7618:	bd80      	pop	{r7, pc}
c0de761a:	bf00      	nop
c0de761c:	040000e1 	.word	0x040000e1

c0de7620 <cx_mont_pow>:
c0de7620:	b510      	push	{r4, lr}
c0de7622:	b086      	sub	sp, #24
c0de7624:	f10d 0c04 	add.w	ip, sp, #4
c0de7628:	9c08      	ldr	r4, [sp, #32]
c0de762a:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de762e:	4803      	ldr	r0, [pc, #12]	@ (c0de763c <cx_mont_pow+0x1c>)
c0de7630:	a901      	add	r1, sp, #4
c0de7632:	f7ff fedf 	bl	c0de73f4 <SVC_cx_call>
c0de7636:	b006      	add	sp, #24
c0de7638:	bd10      	pop	{r4, pc}
c0de763a:	bf00      	nop
c0de763c:	050000e2 	.word	0x050000e2

c0de7640 <cx_mont_invert_nprime>:
c0de7640:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7642:	ab01      	add	r3, sp, #4
c0de7644:	c307      	stmia	r3!, {r0, r1, r2}
c0de7646:	4803      	ldr	r0, [pc, #12]	@ (c0de7654 <cx_mont_invert_nprime+0x14>)
c0de7648:	a901      	add	r1, sp, #4
c0de764a:	f7ff fed3 	bl	c0de73f4 <SVC_cx_call>
c0de764e:	b004      	add	sp, #16
c0de7650:	bd80      	pop	{r7, pc}
c0de7652:	bf00      	nop
c0de7654:	030000e4 	.word	0x030000e4

c0de7658 <cx_ecdomain_parameters_length>:
c0de7658:	b5e0      	push	{r5, r6, r7, lr}
c0de765a:	e9cd 0100 	strd	r0, r1, [sp]
c0de765e:	4802      	ldr	r0, [pc, #8]	@ (c0de7668 <cx_ecdomain_parameters_length+0x10>)
c0de7660:	4669      	mov	r1, sp
c0de7662:	f7ff fec7 	bl	c0de73f4 <SVC_cx_call>
c0de7666:	bd8c      	pop	{r2, r3, r7, pc}
c0de7668:	0200012f 	.word	0x0200012f

c0de766c <os_perso_derive_node_with_seed_key>:
c0de766c:	b510      	push	{r4, lr}
c0de766e:	b088      	sub	sp, #32
c0de7670:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7672:	9407      	str	r4, [sp, #28]
c0de7674:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7676:	9406      	str	r4, [sp, #24]
c0de7678:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de767a:	9405      	str	r4, [sp, #20]
c0de767c:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de767e:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7682:	4803      	ldr	r0, [pc, #12]	@ (c0de7690 <os_perso_derive_node_with_seed_key+0x24>)
c0de7684:	4669      	mov	r1, sp
c0de7686:	f7ff fead 	bl	c0de73e4 <SVC_Call>
c0de768a:	b008      	add	sp, #32
c0de768c:	bd10      	pop	{r4, pc}
c0de768e:	bf00      	nop
c0de7690:	080000a6 	.word	0x080000a6

c0de7694 <os_pki_load_certificate>:
c0de7694:	b510      	push	{r4, lr}
c0de7696:	b086      	sub	sp, #24
c0de7698:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de769a:	9405      	str	r4, [sp, #20]
c0de769c:	9c08      	ldr	r4, [sp, #32]
c0de769e:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de76a2:	4803      	ldr	r0, [pc, #12]	@ (c0de76b0 <os_pki_load_certificate+0x1c>)
c0de76a4:	4669      	mov	r1, sp
c0de76a6:	f7ff fe9d 	bl	c0de73e4 <SVC_Call>
c0de76aa:	b006      	add	sp, #24
c0de76ac:	bd10      	pop	{r4, pc}
c0de76ae:	bf00      	nop
c0de76b0:	060000aa 	.word	0x060000aa

c0de76b4 <os_perso_is_pin_set>:
c0de76b4:	b5e0      	push	{r5, r6, r7, lr}
c0de76b6:	2000      	movs	r0, #0
c0de76b8:	4669      	mov	r1, sp
c0de76ba:	9001      	str	r0, [sp, #4]
c0de76bc:	209e      	movs	r0, #158	@ 0x9e
c0de76be:	f7ff fe91 	bl	c0de73e4 <SVC_Call>
c0de76c2:	b2c0      	uxtb	r0, r0
c0de76c4:	bd8c      	pop	{r2, r3, r7, pc}

c0de76c6 <os_global_pin_is_validated>:
c0de76c6:	b5e0      	push	{r5, r6, r7, lr}
c0de76c8:	2000      	movs	r0, #0
c0de76ca:	4669      	mov	r1, sp
c0de76cc:	9001      	str	r0, [sp, #4]
c0de76ce:	20a0      	movs	r0, #160	@ 0xa0
c0de76d0:	f7ff fe88 	bl	c0de73e4 <SVC_Call>
c0de76d4:	b2c0      	uxtb	r0, r0
c0de76d6:	bd8c      	pop	{r2, r3, r7, pc}

c0de76d8 <os_ux>:
c0de76d8:	b5e0      	push	{r5, r6, r7, lr}
c0de76da:	f000 f86f 	bl	c0de77bc <OUTLINED_FUNCTION_0>
c0de76de:	4802      	ldr	r0, [pc, #8]	@ (c0de76e8 <os_ux+0x10>)
c0de76e0:	4669      	mov	r1, sp
c0de76e2:	f7ff fe7f 	bl	c0de73e4 <SVC_Call>
c0de76e6:	bd8c      	pop	{r2, r3, r7, pc}
c0de76e8:	01000064 	.word	0x01000064

c0de76ec <os_flags>:
c0de76ec:	b5e0      	push	{r5, r6, r7, lr}
c0de76ee:	2000      	movs	r0, #0
c0de76f0:	4669      	mov	r1, sp
c0de76f2:	9001      	str	r0, [sp, #4]
c0de76f4:	206a      	movs	r0, #106	@ 0x6a
c0de76f6:	f7ff fe75 	bl	c0de73e4 <SVC_Call>
c0de76fa:	bd8c      	pop	{r2, r3, r7, pc}

c0de76fc <os_registry_get_current_app_tag>:
c0de76fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de76fe:	ab01      	add	r3, sp, #4
c0de7700:	c307      	stmia	r3!, {r0, r1, r2}
c0de7702:	4803      	ldr	r0, [pc, #12]	@ (c0de7710 <os_registry_get_current_app_tag+0x14>)
c0de7704:	a901      	add	r1, sp, #4
c0de7706:	f7ff fe6d 	bl	c0de73e4 <SVC_Call>
c0de770a:	b004      	add	sp, #16
c0de770c:	bd80      	pop	{r7, pc}
c0de770e:	bf00      	nop
c0de7710:	03000074 	.word	0x03000074

c0de7714 <os_sched_exit>:
c0de7714:	b082      	sub	sp, #8
c0de7716:	f000 f851 	bl	c0de77bc <OUTLINED_FUNCTION_0>
c0de771a:	4802      	ldr	r0, [pc, #8]	@ (c0de7724 <os_sched_exit+0x10>)
c0de771c:	4669      	mov	r1, sp
c0de771e:	f7ff fe61 	bl	c0de73e4 <SVC_Call>
c0de7722:	deff      	udf	#255	@ 0xff
c0de7724:	0100009a 	.word	0x0100009a

c0de7728 <os_io_init>:
c0de7728:	b5e0      	push	{r5, r6, r7, lr}
c0de772a:	9001      	str	r0, [sp, #4]
c0de772c:	4802      	ldr	r0, [pc, #8]	@ (c0de7738 <os_io_init+0x10>)
c0de772e:	a901      	add	r1, sp, #4
c0de7730:	f7ff fe58 	bl	c0de73e4 <SVC_Call>
c0de7734:	bd8c      	pop	{r2, r3, r7, pc}
c0de7736:	bf00      	nop
c0de7738:	01000084 	.word	0x01000084

c0de773c <os_io_start>:
c0de773c:	b5e0      	push	{r5, r6, r7, lr}
c0de773e:	2000      	movs	r0, #0
c0de7740:	4669      	mov	r1, sp
c0de7742:	9001      	str	r0, [sp, #4]
c0de7744:	4801      	ldr	r0, [pc, #4]	@ (c0de774c <os_io_start+0x10>)
c0de7746:	f7ff fe4d 	bl	c0de73e4 <SVC_Call>
c0de774a:	bd8c      	pop	{r2, r3, r7, pc}
c0de774c:	01000085 	.word	0x01000085

c0de7750 <os_io_tx_cmd>:
c0de7750:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7752:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7756:	4803      	ldr	r0, [pc, #12]	@ (c0de7764 <os_io_tx_cmd+0x14>)
c0de7758:	4669      	mov	r1, sp
c0de775a:	f7ff fe43 	bl	c0de73e4 <SVC_Call>
c0de775e:	b004      	add	sp, #16
c0de7760:	bd80      	pop	{r7, pc}
c0de7762:	bf00      	nop
c0de7764:	04000088 	.word	0x04000088

c0de7768 <os_io_rx_evt>:
c0de7768:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de776a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de776e:	4803      	ldr	r0, [pc, #12]	@ (c0de777c <os_io_rx_evt+0x14>)
c0de7770:	4669      	mov	r1, sp
c0de7772:	f7ff fe37 	bl	c0de73e4 <SVC_Call>
c0de7776:	b004      	add	sp, #16
c0de7778:	bd80      	pop	{r7, pc}
c0de777a:	bf00      	nop
c0de777c:	03000089 	.word	0x03000089

c0de7780 <try_context_get>:
c0de7780:	b5e0      	push	{r5, r6, r7, lr}
c0de7782:	2000      	movs	r0, #0
c0de7784:	4669      	mov	r1, sp
c0de7786:	9001      	str	r0, [sp, #4]
c0de7788:	2087      	movs	r0, #135	@ 0x87
c0de778a:	f7ff fe2b 	bl	c0de73e4 <SVC_Call>
c0de778e:	bd8c      	pop	{r2, r3, r7, pc}

c0de7790 <try_context_set>:
c0de7790:	b5e0      	push	{r5, r6, r7, lr}
c0de7792:	f000 f813 	bl	c0de77bc <OUTLINED_FUNCTION_0>
c0de7796:	4802      	ldr	r0, [pc, #8]	@ (c0de77a0 <try_context_set+0x10>)
c0de7798:	4669      	mov	r1, sp
c0de779a:	f7ff fe23 	bl	c0de73e4 <SVC_Call>
c0de779e:	bd8c      	pop	{r2, r3, r7, pc}
c0de77a0:	0100010b 	.word	0x0100010b

c0de77a4 <os_sched_last_status>:
c0de77a4:	b5e0      	push	{r5, r6, r7, lr}
c0de77a6:	f000 f809 	bl	c0de77bc <OUTLINED_FUNCTION_0>
c0de77aa:	4803      	ldr	r0, [pc, #12]	@ (c0de77b8 <os_sched_last_status+0x14>)
c0de77ac:	4669      	mov	r1, sp
c0de77ae:	f7ff fe19 	bl	c0de73e4 <SVC_Call>
c0de77b2:	b2c0      	uxtb	r0, r0
c0de77b4:	bd8c      	pop	{r2, r3, r7, pc}
c0de77b6:	bf00      	nop
c0de77b8:	0100009c 	.word	0x0100009c

c0de77bc <OUTLINED_FUNCTION_0>:
c0de77bc:	2100      	movs	r1, #0
c0de77be:	e9cd 0100 	strd	r0, r1, [sp]
c0de77c2:	4770      	bx	lr

c0de77c4 <__aeabi_memcpy>:
c0de77c4:	f000 b812 	b.w	c0de77ec <memcpy>

c0de77c8 <__aeabi_memmove>:
c0de77c8:	f000 b81e 	b.w	c0de7808 <memmove>

c0de77cc <__aeabi_memset>:
c0de77cc:	460b      	mov	r3, r1
c0de77ce:	4611      	mov	r1, r2
c0de77d0:	461a      	mov	r2, r3
c0de77d2:	f000 b833 	b.w	c0de783c <memset>
c0de77d6:	bf00      	nop

c0de77d8 <__aeabi_memclr>:
c0de77d8:	460a      	mov	r2, r1
c0de77da:	2100      	movs	r1, #0
c0de77dc:	f000 b82e 	b.w	c0de783c <memset>

c0de77e0 <explicit_bzero>:
c0de77e0:	f000 b800 	b.w	c0de77e4 <bzero>

c0de77e4 <bzero>:
c0de77e4:	460a      	mov	r2, r1
c0de77e6:	2100      	movs	r1, #0
c0de77e8:	f000 b828 	b.w	c0de783c <memset>

c0de77ec <memcpy>:
c0de77ec:	440a      	add	r2, r1
c0de77ee:	4291      	cmp	r1, r2
c0de77f0:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de77f4:	d100      	bne.n	c0de77f8 <memcpy+0xc>
c0de77f6:	4770      	bx	lr
c0de77f8:	b510      	push	{r4, lr}
c0de77fa:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de77fe:	4291      	cmp	r1, r2
c0de7800:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7804:	d1f9      	bne.n	c0de77fa <memcpy+0xe>
c0de7806:	bd10      	pop	{r4, pc}

c0de7808 <memmove>:
c0de7808:	4288      	cmp	r0, r1
c0de780a:	b510      	push	{r4, lr}
c0de780c:	eb01 0402 	add.w	r4, r1, r2
c0de7810:	d902      	bls.n	c0de7818 <memmove+0x10>
c0de7812:	4284      	cmp	r4, r0
c0de7814:	4623      	mov	r3, r4
c0de7816:	d807      	bhi.n	c0de7828 <memmove+0x20>
c0de7818:	1e43      	subs	r3, r0, #1
c0de781a:	42a1      	cmp	r1, r4
c0de781c:	d008      	beq.n	c0de7830 <memmove+0x28>
c0de781e:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7822:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de7826:	e7f8      	b.n	c0de781a <memmove+0x12>
c0de7828:	4601      	mov	r1, r0
c0de782a:	4402      	add	r2, r0
c0de782c:	428a      	cmp	r2, r1
c0de782e:	d100      	bne.n	c0de7832 <memmove+0x2a>
c0de7830:	bd10      	pop	{r4, pc}
c0de7832:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de7836:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de783a:	e7f7      	b.n	c0de782c <memmove+0x24>

c0de783c <memset>:
c0de783c:	4603      	mov	r3, r0
c0de783e:	4402      	add	r2, r0
c0de7840:	4293      	cmp	r3, r2
c0de7842:	d100      	bne.n	c0de7846 <memset+0xa>
c0de7844:	4770      	bx	lr
c0de7846:	f803 1b01 	strb.w	r1, [r3], #1
c0de784a:	e7f9      	b.n	c0de7840 <memset+0x4>

c0de784c <setjmp>:
c0de784c:	46ec      	mov	ip, sp
c0de784e:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7852:	f04f 0000 	mov.w	r0, #0
c0de7856:	4770      	bx	lr

c0de7858 <longjmp>:
c0de7858:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de785c:	46e5      	mov	sp, ip
c0de785e:	0008      	movs	r0, r1
c0de7860:	bf08      	it	eq
c0de7862:	2001      	moveq	r0, #1
c0de7864:	4770      	bx	lr
c0de7866:	bf00      	nop

c0de7868 <strcmp>:
c0de7868:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de786c:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7870:	2a01      	cmp	r2, #1
c0de7872:	bf28      	it	cs
c0de7874:	429a      	cmpcs	r2, r3
c0de7876:	d0f7      	beq.n	c0de7868 <strcmp>
c0de7878:	1ad0      	subs	r0, r2, r3
c0de787a:	4770      	bx	lr

c0de787c <C_home_boilerplate_14px_bitmap>:
c0de787c:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de788c:	fc7b df0f 7ffe 7ff8                          {........

c0de7895 <C_home_boilerplate_14px>:
c0de7895:	000e 000e 0000 787c c0de                    ......|x..

c0de789f <C_Information_circle_14px_bitmap>:
c0de789f:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de78af:	e7ff 8fff 1ffc 1ee0                          .........

c0de78b8 <C_Information_circle_14px>:
c0de78b8:	000e 000e 0000 789f c0de                    .......x..

c0de78c2 <C_Quit_14px_bitmap>:
c0de78c2:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de78d2:	6680 9801 7f06 fff9                          .f.......

c0de78db <C_Quit_14px>:
c0de78db:	000e 000e 0000 78c2 c0de                    .......x..

c0de78e5 <C_Switch_Off_8px_bitmap>:
c0de78e5:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de78f1 <C_Switch_Off_8px>:
c0de78f1:	000c 0008 0000 78e5 c0de                    .......x..

c0de78fb <C_Switch_On_8px_bitmap>:
c0de78fb:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de7907 <C_Switch_On_8px>:
c0de7907:	000c 0008 0000 78fb c0de                    .......x..

c0de7911 <C_icon_back_x_bitmap>:
c0de7911:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de7921:	003f 0078 00c0 0000                          ?.x......

c0de792a <C_icon_back_x>:
c0de792a:	000e 000e 0000 7911 c0de                    .......y..

c0de7934 <C_icon_coggle_bitmap>:
c0de7934:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de7944:	807f 00b4 00c0 0000                          .........

c0de794d <C_icon_coggle>:
c0de794d:	000e 000e 0000 7934 c0de                    ......4y..

c0de7957 <C_icon_crossmark_bitmap>:
c0de7957:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de7967:	8373 1c87 600e 0018                          s....`...

c0de7970 <C_icon_crossmark>:
c0de7970:	000e 000e 0000 7957 c0de                    ......Wy..

c0de797a <C_icon_down_bitmap>:
c0de797a:	2184 8024                                   .!$.

c0de797e <C_icon_down>:
c0de797e:	0007 0004 0000 797a c0de                    ......zy..

c0de7988 <C_icon_left_bitmap>:
c0de7988:	8882 80a0                                   ....

c0de798c <C_icon_left>:
c0de798c:	0004 0007 0000 7988 c0de                    .......y..

c0de7996 <C_icon_right_bitmap>:
c0de7996:	5110 1014                                   .Q..

c0de799a <C_icon_right>:
c0de799a:	0004 0007 0000 7996 c0de                    .......y..

c0de79a4 <C_icon_up_bitmap>:
c0de79a4:	4812 1042                                   .HB.

c0de79a8 <C_icon_up>:
c0de79a8:	0007 0004 0000 79a4 c0de                    .......y..

c0de79b2 <C_icon_validate_14_bitmap>:
c0de79b2:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de79c2:	a3b3 a3a3 f0b2                               ......P

c0de79c9 <C_icon_validate_14>:
c0de79c9:	000e 000e 0100 79b2 c0de                    .......y..

c0de79d3 <C_icon_warning_bitmap>:
c0de79d3:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de79e3:	e01f 801f 001e 0018                          .........

c0de79ec <C_icon_warning>:
c0de79ec:	000e 000e 0000 79d3 c0de                    .......y..

c0de79f6 <C_app_boilerplate_14px_bitmap>:
c0de79f6:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de7a06:	0384 00f0 0000 0000                          .........

c0de7a0f <C_app_boilerplate_14px>:
c0de7a0f:	000e 000e 0000 79f6 c0de 7544 6d6d 2079     .......y..Dummy 
c0de7a1f:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de7a2f:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de7a3f:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de7a4f:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de7a5f:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de7a6f:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de7a7f:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de7a8f:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de7a9f:	4100 6464 6572 7373 7620 7265 6669 6569     .Address verifie
c0de7aaf:	0064 7241 2065 6f79 2075 7573 6572 7420     d.Are you sure t
c0de7abf:	0a6f 6c61 6f6c 2077 7564 6d6d 2079 0a32     o.allow dummy 2.
c0de7acf:	6e69 7420 6172 736e 6361 6974 6e6f 3f73     in transactions?
c0de7adf:	5400 6172 736e 6361 6974 6e6f 7320 6769     .Transaction sig
c0de7aef:	656e 0064 6f54 6120 6363 7065 2074 6972     ned.To accept ri
c0de7aff:	6b73 202c 7270 7365 2073 6f62 6874 6220     sk, press both b
c0de7b0f:	7475 6f74 736e 4400 7665 6c65 706f 7265     uttons.Developer
c0de7b1f:	4500 616e 6c62 6465 4100 6c6c 776f 6420     .Enabled.Allow d
c0de7b2f:	6d75 796d 3120 690a 206e 7274 6e61 6173     ummy 1.in transa
c0de7b3f:	7463 6f69 736e 5300 6769 206e 656d 7373     ctions.Sign mess
c0de7b4f:	6761 0065 654d 7373 6761 2065 6973 6e67     age.Message sign
c0de7b5f:	6465 5300 6769 206e 7274 6e61 6173 7463     ed.Sign transact
c0de7b6f:	6f69 006e 6552 656a 7463 7420 6172 736e     ion.Reject trans
c0de7b7f:	6361 6974 6e6f 4100 6363 7065 2074 6972     action.Accept ri
c0de7b8f:	6b73 6120 646e 7320 6769 206e 656d 7373     sk and sign mess
c0de7b9f:	6761 0065 6c41 6f6c 2077 7564 6d6d 2079     age.Allow dummy 
c0de7baf:	0a32 6e69 7420 6172 736e 6361 6974 6e6f     2.in transaction
c0de7bbf:	0073 6556 7372 6f69 006e 6143 636e 6c65     s.Version.Cancel
c0de7bcf:	4100 6464 6572 7373 7620 7265 6669 6369     .Address verific
c0de7bdf:	7461 6f69 206e 6163 636e 6c65 656c 0064     ation cancelled.
c0de7bef:	6944 6173 6c62 6465 4100 7070 7320 7465     Disabled.App set
c0de7bff:	6974 676e 0073 6341 6563 7470 7220 7369     tings.Accept ris
c0de7c0f:	206b 6e61 2064 6973 6e67 7420 6172 736e     k and sign trans
c0de7c1f:	6361 6974 6e6f 4600 4f52 5453 5547 004e     action.FROSTGUN.
c0de7c2f:	6c42 6e69 2064 6973 6e67 6e69 2067 6861     Blind signing ah
c0de7c3f:	6165 0064 6341 6563 7470 7220 7369 206b     ead.Accept risk 
c0de7c4f:	6e61 2064 6973 6e67 6f20 6570 6172 6974     and sign operati
c0de7c5f:	6e6f 4d00 7365 6173 6567 7220 6a65 6365     on.Message rejec
c0de7c6f:	6574 0064 3130 3332 3534 3736 3938 4241     ted.0123456789AB
c0de7c7f:	4443 4645 4200 6361 006b 6441 7264 7365     CDEF.Back.Addres
c0de7c8f:	0073 7544 6d6d 2079 0031 2049 6e75 6564     s.Dummy 1.I unde
c0de7c9f:	7372 6174 646e 202c 6f63 666e 7269 006d     rstand, confirm.
c0de7caf:	7854 6148 6873 5400 6172 736e 6361 6974     TxHash.Transacti
c0de7cbf:	6e6f 7220 6a65 6365 6574 0064 7041 2070     on rejected.App 
c0de7ccf:	6e69 6f66 5300 6769 206e 706f 7265 7461     info.Sign operat
c0de7cdf:	6f69 006e 6552 656a 7463 6d20 7365 6173     ion.Reject messa
c0de7cef:	6567 5200 6a65 6365 2074 706f 7265 7461     ge.Reject operat
c0de7cff:	6f69 006e 4b5a 4f4e 0058 6556 6972 7966     ion.ZKNOX.Verify
c0de7d0f:	4220 4c4f 6120 6464 6572 7373 5200 7665      BOL address.Rev
c0de7d1f:	6569 2077 7274 6e61 6173 7463 6f69 0a6e     iew transaction.
c0de7d2f:	6f74 2820 6170 7472 6169 296c 7320 6769     to (partial) sig
c0de7d3f:	006e 7061 2070 7369 7220 6165 7964 5100     n.app is ready.Q
c0de7d4f:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0de7d5f:	0100 c465 5fd5 1744 68b3 5ae9 0054 301a     ..e.._D..h.ZT..0
c0de7d6f:	3c32 4fb0 34e8 5a3e 84d4 2345 a563 d098     2<.O.4>Z..E#c...
c0de7d7f:	7359 a7ed 2953 7d9d 3348 d839 0908 d8a1     Ys..S).}H39.....
c0de7d8f:	5305 a4bd ff02 5bfe fffe ffff 00ff 0000     .S.....[........
c0de7d9f:	0501 98ce 1bc6 f405 e27f e9ea 42a5 99bd     .............B..
c0de7daf:	b2f6 82e7 2346 4016 45b5 fe95 d5bf b81e     ....F#.@.E......
c0de7dbf:	0053 0000 0000 0000 0000 0000 0000 0000     S...............
	...
c0de7ddf:	0103 0000 0000 0000 0200 0000 0000 0000     ................
c0de7def:	0300 0000 0000 0000 0400 0000 0000 0000     ................
c0de7dff:	0000 46d6 edb7 a5de 8318 88d0 643f da49     ...F........?dI.
c0de7e0f:	a02d c39f f4c7 0a53 6d49 2969 64ee 4c9b     -.....S.Imi).d.L
c0de7e1f:	057f c0a0 5691 8b83 2898 3faf 6712 75e1     .....V...(.?.g.u
c0de7e2f:	e2e6 c784 1b9d 8a6d cdd0 e00a 57d9 3390     ......m......W.3
c0de7e3f:	1c6e eec6 1338 1c9c 0211 5323 8c7a 9de7     n...8.....#Sz...
c0de7e4f:	7e06 cc58 6710 fbc6 d8b7 a1b3 8db0 8ffc     .~X..g..........
c0de7e5f:	2708 bc4d d1e8 7951 9b96 d4c0 a79f bd25     .'M...Qy......%.
c0de7e6f:	9ddf 55e5 bae0 696a 6a3c 52db 9efc a8e7     ...U..ji<j.R....
c0de7e7f:	1c2c 69fb cad4 5f67 0c52 76ce 0202 7668     ,..i..g_R..v..hv
c0de7e8f:	ff00 878f 7400 0419 7471 06fd 28b5 e776     .....t..qt...(v.
c0de7e9f:	06e1 890c 5cce 3426 3705 080a d0b6 2b30     .....\&4.7....0+
c0de7eaf:	ab0b ed3e 39b8 ee20 670a 9772 39dc 2621     ..>..9 ..gr..9!&
c0de7ebf:	70f1 89a5 644a 5444 d038 ac15 ba32 0f36     .p..JdDT8...2.6.
c0de7ecf:	2c09 44de b1ba c21f d4b7 c0b5 16d2 8c22     .,.D..........".
c0de7edf:	0bce b782 e739 da8d e757 c65a ef80 9d68     ....9...W.Z...h.
c0de7eef:	15f1 e38f d8ee 5c09 4b6d b2d1 c1c7 ee66     .......\mK....f.
c0de7eff:	03fd e24a fb6f 4449 6366 ec45 447b cc3f     ..J.o.IDfcE.{D?.
c0de7f0f:	bb92 5236 a9da f94f e192 2977 fea6 6cd3     ..6R..O...w)...l
c0de7f1f:	0473 2f71 82de 1317 6de7 5d02 e4fd 8cbd     s.q/.....m.]....
c0de7f2f:	f32c 0268 c17a 7534 8370 7b39 f1c5 6016     ,.h.z.4up.9{...`
c0de7f3f:	59fc 98d0 63a5 4523 d484 3e5a e834 b04f     .Y...c#E..Z>4.O.
c0de7f4f:	323c 1a30 5400 e95a b368 4417 d55f 65c4     <20..TZ.h..D_..e
c0de7f5f:	0001 0000 0000 0000 0000 0000 0000 0000     ................
	...
c0de7f7b:	0000 9202 63fc c189 3326 67c2 c6cb 3b6e     .....c..&3.g..n;
c0de7f8b:	6bf8 b6e3 cbd8 6766 7771 4fe5 b392 f269     .k....fgqw.O..i.
c0de7f9b:	18f5 588d 05e7 fb81 6e4a b54a 12a8 820b     ...X....JnJ.....
c0de7fab:	df26 1e95 d710 d894 70b7 1f5d 6bb3 8e99     &........p]..k..
c0de7fbb:	1ab9 384b 73e5 a7ed 2953 7d9d 3348 d839     ..K8.s..S).}H39.
c0de7fcb:	0908 d8a1 5305 a4bd ff02 5bfe fffe ffff     .....S.....[....
c0de7fdb:	fffe ffff 00fc 0000 0000 0000 0000 0000     ................
	...
c0de7ffb:	0000 9202 30f8 4e64 e172 a031 b829 4550     .....0dNr.1.).PE
c0de800b:	81b6 5881 285d e833 7948 70b9 4391 f5e1     ...X](3.Hy.p.C..
c0de801b:	f093 0000 0b01 7ab7 d66a 733e 4e9b b2ac     .......zj.>s.N..
c0de802b:	9de0 7762 2ac1 d8b8 0501 e034 28b6 f393     ..bw.*....4..(..
c0de803b:	bbf6 7095 2551 7279 f703 b2a0 2549 2e57     ...pQ%yr....I%W.
c0de804b:	d11c f96b fced 05e0 b91f 33e1 4b77 253c     ..k........3wK<%
c0de805b:	877a 7d2d 028b 1c88 7664 c0ea 58fc 4bc1     z.-}....dv...X.K
c0de806b:	5c73 c768 f36e 9be5 adc1 b340 5ae4 5b4d     s\h.n.....@..ZM[
c0de807b:	36f1 7257                                    .6Wr>

c0de8080 <.L__const.handler_cmd_Poseidon.input>:
c0de8080:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de8090:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de80a0:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de80b0:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de80c0:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de80d0:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de80e0:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de80f0:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de8100:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de8110:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8120 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de813c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de814c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de815c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de816c:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de817c:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de818c:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de819c:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de81ac:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de81bc:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de81dc:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de81ec:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de81fc:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de820c:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de821c:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de822c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de823c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de824c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de825c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de827c:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de828c:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de829c:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de82ac:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de82bc:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de82cc:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de82dc:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de82ec:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de82fc:	9b44 9ffb                                   D...

c0de8300 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de831c:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de832c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de833c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de834c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de835c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de836c:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de837c:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de838c:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de839c:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de83bc:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de83cc:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de83dc:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de83ec:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de83fc:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de840c:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de841c:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de842c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de843c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de845c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de846c:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de847c:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de848c:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de849c:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de84ac:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de84bc:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de84cc:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de84dc:	8132 74b1                                   2..t

c0de84e0 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de84e0:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de84f0:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de8500:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de8510:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8520:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8530:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8540 <.L__const.handler_cmd_PartialSig.commitmentlist_be>:
	...
c0de855c:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0de856c:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0de857c:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0de858c:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0de859c:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0de85ac:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0de85bc:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0de85cc:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0de85dc:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0de85fc:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0de860c:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0de861c:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0de862c:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0de863c:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0de864c:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0de865c:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0de866c:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0de867c:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0de869c:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0de86ac:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0de86bc:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0de86cc:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0de86dc:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0de86ec:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0de86fc:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0de870c:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0de871c:	b87c 6a30                                   |.0j

c0de8720 <.L__const.handler_cmd_PartialSig.groupkey_be>:
c0de8720:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0de8730:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0de8740:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de8750:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0de8760 <settingContents>:
c0de8760:	0000 0000 877c c0de 0001 0000               ....|.......

c0de876c <infoList>:
c0de876c:	87b4 c0de 87bc c0de 0000 0000 0002 0000     ................

c0de877c <contents>:
c0de877c:	0007 0000 0594 da7a 0002 0000 0000 0000     ......z.........
	...
c0de87b0:	1b1d c0de                                   ....

c0de87b4 <INFO_TYPES>:
c0de87b4:	7bc1 c0de 7b16 c0de                         .{...{..

c0de87bc <INFO_CONTENTS>:
c0de87bc:	7a48 c0de 7d03 c0de                         Hz...}..

c0de87c4 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de87e4:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de87f4:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8804 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8804:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de8814:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de8824:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de8834:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de8844:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de8854:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de8864:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de8874:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de8884:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de8894:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de88a4:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de88b4:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de88c4:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de88d4:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de88e4:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de88f4:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de8904:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de8914:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de8924:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de8934:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de8944:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de8954:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de8964:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de8974:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de8984:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de8994:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de89a4:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de89b4:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de89c4:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de89d4:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de89e4:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de89f4:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de8a04:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de8a14:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de8a24:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de8a34:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de8a44:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de8a54:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de8a64:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de8a74:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de8a84:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de8a94:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de8aa4:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8ab4:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8ac4:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8ad4:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8ae4:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8af4:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de8b04:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de8b14:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de8b24:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de8b34:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de8b44:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de8b54:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8b64:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8b74:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8b84:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8b94:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8ba4:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8bb4:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8bc4:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8bd4:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8be4:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8bf4:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8c04:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8c14:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de8c24:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de8c34:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de8c44:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de8c54:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de8c64:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de8c74:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de8c84 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de8c84:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de8c94:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de8ca4 <blindSigningWarning>:
c0de8ca4:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de8cd0 <g_pcHex>:
c0de8cd0:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de8ce0 <g_pcHex_cap>:
c0de8ce0:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8cf0 <_etext>:
	...

c0de8e00 <N_storage_real>:
	...

c0de9000 <install_parameters>:
c0de9000:	0801 5246 534f 4754 4e55 0502 2e30 2e30     ..FROSTGUN..0.0.
c0de9010:	0331 0e21 0e00 0000 0019 0000 0000 f003     1.!.............
c0de9020:	4008 814e a552 908f 40a0 8480 f003 0000     .@N.R....@......
c0de9030:	0000 0000 0a04 0201 0080 2c00 0080 7323     ...........,..#s
