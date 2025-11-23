
build/flex/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f00b f945 	bl	c0deb294 <os_boot>
c0de000a:	b90c      	cbnz	r4, c0de0010 <main+0x10>
c0de000c:	f00a fefe 	bl	c0deae0c <standalone_app_main>
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
c0de0022:	f00b fd13 	bl	c0deba4c <__aeabi_memclr>
c0de0026:	b914      	cbnz	r4, c0de002e <address_from_pubkey+0x1a>
c0de0028:	2001      	movs	r0, #1
c0de002a:	f00b f8af 	bl	c0deb18c <assert_exit>
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
c0de0042:	f00b f85d 	bl	c0deb100 <cx_keccak_256_hash_iovec>
c0de0046:	b108      	cbz	r0, c0de004c <address_from_pubkey+0x38>
c0de0048:	2000      	movs	r0, #0
c0de004a:	e006      	b.n	c0de005a <address_from_pubkey+0x46>
c0de004c:	f105 010c 	add.w	r1, r5, #12
c0de0050:	4620      	mov	r0, r4
c0de0052:	2214      	movs	r2, #20
c0de0054:	f00b fcf0 	bl	c0deba38 <__aeabi_memcpy>
c0de0058:	2001      	movs	r0, #1
c0de005a:	b00a      	add	sp, #40	@ 0x28
c0de005c:	bd70      	pop	{r4, r5, r6, pc}

c0de005e <apdu_dispatcher>:
c0de005e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0060:	4604      	mov	r4, r0
c0de0062:	b910      	cbnz	r0, c0de006a <apdu_dispatcher+0xc>
c0de0064:	2001      	movs	r0, #1
c0de0066:	f00b f891 	bl	c0deb18c <assert_exit>
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
c0de03a2:	f00a fcf3 	bl	c0dead8c <io_send_response_buffers>
c0de03a6:	bd80      	pop	{r7, pc}

c0de03a8 <OUTLINED_FUNCTION_0>:
c0de03a8:	9001      	str	r0, [sp, #4]
c0de03aa:	7920      	ldrb	r0, [r4, #4]
c0de03ac:	9002      	str	r0, [sp, #8]
c0de03ae:	4770      	bx	lr

c0de03b0 <app_main>:
c0de03b0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de03b2:	f00a fccd 	bl	c0dead50 <io_init>
c0de03b6:	f001 fb69 	bl	c0de1a8c <ui_menu_main>
c0de03ba:	481b      	ldr	r0, [pc, #108]	@ (c0de0428 <app_main+0x78>)
c0de03bc:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de03c0:	4448      	add	r0, r9
c0de03c2:	f00b fb47 	bl	c0deba54 <explicit_bzero>
c0de03c6:	481a      	ldr	r0, [pc, #104]	@ (c0de0430 <app_main+0x80>)
c0de03c8:	4478      	add	r0, pc
c0de03ca:	f00b f8ff 	bl	c0deb5cc <pic>
c0de03ce:	7880      	ldrb	r0, [r0, #2]
c0de03d0:	2801      	cmp	r0, #1
c0de03d2:	d00d      	beq.n	c0de03f0 <app_main+0x40>
c0de03d4:	2001      	movs	r0, #1
c0de03d6:	f88d 0002 	strb.w	r0, [sp, #2]
c0de03da:	2000      	movs	r0, #0
c0de03dc:	f8ad 0000 	strh.w	r0, [sp]
c0de03e0:	4814      	ldr	r0, [pc, #80]	@ (c0de0434 <app_main+0x84>)
c0de03e2:	4478      	add	r0, pc
c0de03e4:	f00b f8f2 	bl	c0deb5cc <pic>
c0de03e8:	4669      	mov	r1, sp
c0de03ea:	2203      	movs	r2, #3
c0de03ec:	f00b f928 	bl	c0deb640 <nvm_write>
c0de03f0:	4d0e      	ldr	r5, [pc, #56]	@ (c0de042c <app_main+0x7c>)
c0de03f2:	ac01      	add	r4, sp, #4
c0de03f4:	f00a fcb4 	bl	c0dead60 <io_recv_command>
c0de03f8:	2800      	cmp	r0, #0
c0de03fa:	d414      	bmi.n	c0de0426 <app_main+0x76>
c0de03fc:	4602      	mov	r2, r0
c0de03fe:	eb09 0105 	add.w	r1, r9, r5
c0de0402:	4620      	mov	r0, r4
c0de0404:	f00a fd29 	bl	c0deae5a <apdu_parser>
c0de0408:	b130      	cbz	r0, c0de0418 <app_main+0x68>
c0de040a:	4620      	mov	r0, r4
c0de040c:	f7ff fe27 	bl	c0de005e <apdu_dispatcher>
c0de0410:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0414:	dcee      	bgt.n	c0de03f4 <app_main+0x44>
c0de0416:	e006      	b.n	c0de0426 <app_main+0x76>
c0de0418:	2000      	movs	r0, #0
c0de041a:	2100      	movs	r1, #0
c0de041c:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de0420:	f00a fcb4 	bl	c0dead8c <io_send_response_buffers>
c0de0424:	e7e6      	b.n	c0de03f4 <app_main+0x44>
c0de0426:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0428:	00000000 	.word	0x00000000
c0de042c:	0000064c 	.word	0x0000064c
c0de0430:	0000e634 	.word	0x0000e634
c0de0434:	0000e61a 	.word	0x0000e61a

c0de0438 <handler_get_app_name>:
c0de0438:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de043a:	4808      	ldr	r0, [pc, #32]	@ (c0de045c <handler_get_app_name+0x24>)
c0de043c:	4478      	add	r0, pc
c0de043e:	f00b f8c5 	bl	c0deb5cc <pic>
c0de0442:	2100      	movs	r1, #0
c0de0444:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0448:	9103      	str	r1, [sp, #12]
c0de044a:	2108      	movs	r1, #8
c0de044c:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0450:	a801      	add	r0, sp, #4
c0de0452:	2101      	movs	r1, #1
c0de0454:	f00a fc9a 	bl	c0dead8c <io_send_response_buffers>
c0de0458:	b004      	add	sp, #16
c0de045a:	bd80      	pop	{r7, pc}
c0de045c:	0000cf35 	.word	0x0000cf35

c0de0460 <handler_get_public_key>:
c0de0460:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0462:	b085      	sub	sp, #20
c0de0464:	4f23      	ldr	r7, [pc, #140]	@ (c0de04f4 <handler_get_public_key+0x94>)
c0de0466:	460c      	mov	r4, r1
c0de0468:	4605      	mov	r5, r0
c0de046a:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de046e:	eb09 0607 	add.w	r6, r9, r7
c0de0472:	4630      	mov	r0, r6
c0de0474:	f00b faee 	bl	c0deba54 <explicit_bzero>
c0de0478:	2000      	movs	r0, #0
c0de047a:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de047e:	f809 0007 	strb.w	r0, [r9, r7]
c0de0482:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de0486:	4628      	mov	r0, r5
c0de0488:	f00a faac 	bl	c0dea9e4 <buffer_read_u8>
c0de048c:	b308      	cbz	r0, c0de04d2 <handler_get_public_key+0x72>
c0de048e:	eb09 0007 	add.w	r0, r9, r7
c0de0492:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0496:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de049a:	4628      	mov	r0, r5
c0de049c:	f00a faf5 	bl	c0deaa8a <buffer_read_bip32_path>
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
c0de04c8:	f00a fba0 	bl	c0deac0c <bip32_derive_with_seed_get_pubkey_256>
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
c0de04ee:	f001 bbb5 	b.w	c0de1c5c <ui_display_address>
c0de04f2:	bf00      	nop
c0de04f4:	00000000 	.word	0x00000000

c0de04f8 <io_send_sw>:
c0de04f8:	b580      	push	{r7, lr}
c0de04fa:	4602      	mov	r2, r0
c0de04fc:	2000      	movs	r0, #0
c0de04fe:	2100      	movs	r1, #0
c0de0500:	f00a fc44 	bl	c0dead8c <io_send_response_buffers>
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
c0de052c:	f00a fc2e 	bl	c0dead8c <io_send_response_buffers>
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
c0de056e:	f00b fa71 	bl	c0deba54 <explicit_bzero>
c0de0572:	2000      	movs	r0, #0
c0de0574:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de0578:	f809 0006 	strb.w	r0, [r9, r6]
c0de057c:	2001      	movs	r0, #1
c0de057e:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0582:	4620      	mov	r0, r4
c0de0584:	f00a fa2e 	bl	c0dea9e4 <buffer_read_u8>
c0de0588:	b148      	cbz	r0, c0de059e <handler_sign_tx+0x6a>
c0de058a:	eb09 0006 	add.w	r0, r9, r6
c0de058e:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0592:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de0596:	4620      	mov	r0, r4
c0de0598:	f00a fa77 	bl	c0deaa8a <buffer_read_bip32_path>
c0de059c:	b9b8      	cbnz	r0, c0de05ce <handler_sign_tx+0x9a>
c0de059e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de05a2:	e019      	b.n	c0de05d8 <handler_sign_tx+0xa4>
c0de05a4:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de05a8:	e016      	b.n	c0de05d8 <handler_sign_tx+0xa4>
c0de05aa:	eb09 0106 	add.w	r1, r9, r6
c0de05ae:	4408      	add	r0, r1
c0de05b0:	f100 0108 	add.w	r1, r0, #8
c0de05b4:	4620      	mov	r0, r4
c0de05b6:	f00a fa92 	bl	c0deaade <buffer_move>
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
c0de061e:	f00a fd6f 	bl	c0deb100 <cx_keccak_256_hash_iovec>
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
c0de0642:	f00b fa4b 	bl	c0debadc <strcmp>
c0de0646:	b110      	cbz	r0, c0de064e <handler_sign_tx+0x11a>
c0de0648:	f001 fc03 	bl	c0de1e52 <ui_display_transaction>
c0de064c:	e7f1      	b.n	c0de0632 <handler_sign_tx+0xfe>
c0de064e:	f001 fbfd 	bl	c0de1e4c <ui_display_blind_signed_transaction>
c0de0652:	e7ee      	b.n	c0de0632 <handler_sign_tx+0xfe>
c0de0654:	00000000 	.word	0x00000000
c0de0658:	0000c857 	.word	0x0000c857

c0de065c <io_send_sw>:
c0de065c:	b580      	push	{r7, lr}
c0de065e:	4602      	mov	r2, r0
c0de0660:	2000      	movs	r0, #0
c0de0662:	2100      	movs	r1, #0
c0de0664:	f00a fb92 	bl	c0dead8c <io_send_response_buffers>
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
c0de067c:	f001 fbec 	bl	c0de1e58 <zkn_prv_hash>
c0de0680:	b988      	cbnz	r0, c0de06a6 <handler_cmd_blake2b512+0x3c>
c0de0682:	a840      	add	r0, sp, #256	@ 0x100
c0de0684:	2140      	movs	r1, #64	@ 0x40
c0de0686:	f000 f817 	bl	c0de06b8 <io_send_response_pointer>
c0de068a:	2000      	movs	r0, #0
c0de068c:	e00d      	b.n	c0de06aa <handler_cmd_blake2b512+0x40>
c0de068e:	4668      	mov	r0, sp
c0de0690:	2109      	movs	r1, #9
c0de0692:	2240      	movs	r2, #64	@ 0x40
c0de0694:	f00a fd62 	bl	c0deb15c <cx_hash_init_ex>
c0de0698:	b928      	cbnz	r0, c0de06a6 <handler_cmd_blake2b512+0x3c>
c0de069a:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de069e:	4668      	mov	r0, sp
c0de06a0:	f00a fd61 	bl	c0deb166 <cx_hash_update>
c0de06a4:	b118      	cbz	r0, c0de06ae <handler_cmd_blake2b512+0x44>
c0de06a6:	f001 f88f 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de06aa:	b050      	add	sp, #320	@ 0x140
c0de06ac:	bd10      	pop	{r4, pc}
c0de06ae:	4668      	mov	r0, sp
c0de06b0:	a940      	add	r1, sp, #256	@ 0x100
c0de06b2:	f00a fd4e 	bl	c0deb152 <cx_hash_final>
c0de06b6:	e7e3      	b.n	c0de0680 <handler_cmd_blake2b512+0x16>

c0de06b8 <io_send_response_pointer>:
c0de06b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de06ba:	2200      	movs	r2, #0
c0de06bc:	ab01      	add	r3, sp, #4
c0de06be:	c307      	stmia	r3!, {r0, r1, r2}
c0de06c0:	a801      	add	r0, sp, #4
c0de06c2:	2101      	movs	r1, #1
c0de06c4:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de06c8:	f00a fb60 	bl	c0dead8c <io_send_response_buffers>
c0de06cc:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06ce <io_send_sw>:
c0de06ce:	b580      	push	{r7, lr}
c0de06d0:	4602      	mov	r2, r0
c0de06d2:	2000      	movs	r0, #0
c0de06d4:	2100      	movs	r1, #0
c0de06d6:	f00a fb59 	bl	c0dead8c <io_send_response_buffers>
c0de06da:	bd80      	pop	{r7, pc}

c0de06dc <handler_cmd_keccakH>:
c0de06dc:	b510      	push	{r4, lr}
c0de06de:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06e0:	4604      	mov	r4, r0
c0de06e2:	4668      	mov	r0, sp
c0de06e4:	2106      	movs	r1, #6
c0de06e6:	2220      	movs	r2, #32
c0de06e8:	f00a fd38 	bl	c0deb15c <cx_hash_init_ex>
c0de06ec:	b950      	cbnz	r0, c0de0704 <handler_cmd_keccakH+0x28>
c0de06ee:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06f2:	4668      	mov	r0, sp
c0de06f4:	f00a fd37 	bl	c0deb166 <cx_hash_update>
c0de06f8:	b920      	cbnz	r0, c0de0704 <handler_cmd_keccakH+0x28>
c0de06fa:	4668      	mov	r0, sp
c0de06fc:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06fe:	f00a fd28 	bl	c0deb152 <cx_hash_final>
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
c0de072c:	f00b f984 	bl	c0deba38 <__aeabi_memcpy>
c0de0730:	a80c      	add	r0, sp, #48	@ 0x30
c0de0732:	491b      	ldr	r1, [pc, #108]	@ (c0de07a0 <handler_cmd_bolos_stretch+0x88>)
c0de0734:	2220      	movs	r2, #32
c0de0736:	4479      	add	r1, pc
c0de0738:	f00b f97e 	bl	c0deba38 <__aeabi_memcpy>
c0de073c:	a804      	add	r0, sp, #16
c0de073e:	4919      	ldr	r1, [pc, #100]	@ (c0de07a4 <handler_cmd_bolos_stretch+0x8c>)
c0de0740:	2220      	movs	r2, #32
c0de0742:	4479      	add	r1, pc
c0de0744:	f00b f978 	bl	c0deba38 <__aeabi_memcpy>
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
c0de0778:	f00a fff8 	bl	c0deb76c <cx_bn_mod_add>
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
c0de079c:	0000d1f2 	.word	0x0000d1f2
c0de07a0:	0000d166 	.word	0x0000d166
c0de07a4:	0000d2da 	.word	0x0000d2da

c0de07a8 <handler_cmd_Poseidon>:
c0de07a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de07ac:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de07b0:	4604      	mov	r4, r0
c0de07b2:	a860      	add	r0, sp, #384	@ 0x180
c0de07b4:	493c      	ldr	r1, [pc, #240]	@ (c0de08a8 <handler_cmd_Poseidon+0x100>)
c0de07b6:	22a0      	movs	r2, #160	@ 0xa0
c0de07b8:	4479      	add	r1, pc
c0de07ba:	f00b f93d 	bl	c0deba38 <__aeabi_memcpy>
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
c0de07de:	f00b f92b 	bl	c0deba38 <__aeabi_memcpy>
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
c0de07fc:	f00a fffc 	bl	c0deb7f8 <cx_mont_alloc>
c0de0800:	b968      	cbnz	r0, c0de081e <handler_cmd_Poseidon+0x76>
c0de0802:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de0804:	a80a      	add	r0, sp, #40	@ 0x28
c0de0806:	f00b f801 	bl	c0deb80c <cx_mont_init>
c0de080a:	b940      	cbnz	r0, c0de081e <handler_cmd_Poseidon+0x76>
c0de080c:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de0810:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0812:	2105      	movs	r1, #5
c0de0814:	2205      	movs	r2, #5
c0de0816:	4640      	mov	r0, r8
c0de0818:	f002 fdde 	bl	c0de33d8 <Poseidon_alloc_init>
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
c0de083e:	f00a ff45 	bl	c0deb6cc <cx_bn_init>
c0de0842:	2800      	cmp	r0, #0
c0de0844:	d1eb      	bne.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de0846:	69e8      	ldr	r0, [r5, #28]
c0de0848:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de084a:	4601      	mov	r1, r0
c0de084c:	f00a ffe8 	bl	c0deb820 <cx_mont_to_montgomery>
c0de0850:	3701      	adds	r7, #1
c0de0852:	3620      	adds	r6, #32
c0de0854:	2800      	cmp	r0, #0
c0de0856:	d0ea      	beq.n	c0de082e <handler_cmd_Poseidon+0x86>
c0de0858:	e7e1      	b.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de085a:	aa08      	add	r2, sp, #32
c0de085c:	4640      	mov	r0, r8
c0de085e:	2100      	movs	r1, #0
c0de0860:	2301      	movs	r3, #1
c0de0862:	f002 fe1f 	bl	c0de34a4 <Poseidon>
c0de0866:	6820      	ldr	r0, [r4, #0]
c0de0868:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de086a:	7800      	ldrb	r0, [r0, #0]
c0de086c:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de0870:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de0874:	4601      	mov	r1, r0
c0de0876:	f00a ffdf 	bl	c0deb838 <cx_mont_from_montgomery>
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
c0de0894:	f00a ff06 	bl	c0deb6a4 <cx_bn_destroy>
c0de0898:	2800      	cmp	r0, #0
c0de089a:	d1c0      	bne.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de089c:	f00a fee4 	bl	c0deb668 <cx_bn_unlock>
c0de08a0:	2800      	cmp	r0, #0
c0de08a2:	d1bc      	bne.n	c0de081e <handler_cmd_Poseidon+0x76>
c0de08a4:	2000      	movs	r0, #0
c0de08a6:	e7bc      	b.n	c0de0822 <handler_cmd_Poseidon+0x7a>
c0de08a8:	0000d344 	.word	0x0000d344
c0de08ac:	0000d2a0 	.word	0x0000d2a0

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
c0de08c4:	f00b f8b8 	bl	c0deba38 <__aeabi_memcpy>
c0de08c8:	ad01      	add	r5, sp, #4
c0de08ca:	491b      	ldr	r1, [pc, #108]	@ (c0de0938 <handler_cmd_Poseidon_ithRC+0x88>)
c0de08cc:	2220      	movs	r2, #32
c0de08ce:	4628      	mov	r0, r5
c0de08d0:	4479      	add	r1, pc
c0de08d2:	f00b f8b1 	bl	c0deba38 <__aeabi_memcpy>
c0de08d6:	a809      	add	r0, sp, #36	@ 0x24
c0de08d8:	2120      	movs	r1, #32
c0de08da:	462a      	mov	r2, r5
c0de08dc:	f000 ff81 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de08e0:	bb08      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de08e2:	a80a      	add	r0, sp, #40	@ 0x28
c0de08e4:	2120      	movs	r1, #32
c0de08e6:	f00a ff87 	bl	c0deb7f8 <cx_mont_alloc>
c0de08ea:	b9e0      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de08ec:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08ee:	a80a      	add	r0, sp, #40	@ 0x28
c0de08f0:	f00a ff8c 	bl	c0deb80c <cx_mont_init>
c0de08f4:	b9b8      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de08f6:	a80c      	add	r0, sp, #48	@ 0x30
c0de08f8:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08fa:	2105      	movs	r1, #5
c0de08fc:	2205      	movs	r2, #5
c0de08fe:	f002 fd6b 	bl	c0de33d8 <Poseidon_alloc_init>
c0de0902:	b980      	cbnz	r0, c0de0926 <handler_cmd_Poseidon_ithRC+0x76>
c0de0904:	6820      	ldr	r0, [r4, #0]
c0de0906:	7806      	ldrb	r6, [r0, #0]
c0de0908:	ac0c      	add	r4, sp, #48	@ 0x30
c0de090a:	ad48      	add	r5, sp, #288	@ 0x120
c0de090c:	b12e      	cbz	r6, c0de091a <handler_cmd_Poseidon_ithRC+0x6a>
c0de090e:	4620      	mov	r0, r4
c0de0910:	4629      	mov	r1, r5
c0de0912:	f002 fd5d 	bl	c0de33d0 <Poseidon_getNext_RC>
c0de0916:	3e01      	subs	r6, #1
c0de0918:	e7f8      	b.n	c0de090c <handler_cmd_Poseidon_ithRC+0x5c>
c0de091a:	a848      	add	r0, sp, #288	@ 0x120
c0de091c:	f000 ff73 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de0920:	f00a fea2 	bl	c0deb668 <cx_bn_unlock>
c0de0924:	b118      	cbz	r0, c0de092e <handler_cmd_Poseidon_ithRC+0x7e>
c0de0926:	f000 ff4f 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de092a:	b050      	add	sp, #320	@ 0x140
c0de092c:	bd70      	pop	{r4, r5, r6, pc}
c0de092e:	2000      	movs	r0, #0
c0de0930:	e7fb      	b.n	c0de092a <handler_cmd_Poseidon_ithRC+0x7a>
c0de0932:	bf00      	nop
c0de0934:	0000cf9a 	.word	0x0000cf9a
c0de0938:	0000d1ac 	.word	0x0000d1ac

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
c0de0980:	f002 f80e 	bl	c0de29a0 <tEdwards_alloc>
c0de0984:	b9a0      	cbnz	r0, c0de09b0 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0986:	a804      	add	r0, sp, #16
c0de0988:	a91a      	add	r1, sp, #104	@ 0x68
c0de098a:	aa01      	add	r2, sp, #4
c0de098c:	f001 fa9a 	bl	c0de1ec4 <zkn_prv2pub>
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
c0de09aa:	f00a fe5d 	bl	c0deb668 <cx_bn_unlock>
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
c0de0a20:	f001 ffbe 	bl	c0de29a0 <tEdwards_alloc>
c0de0a24:	b9e8      	cbnz	r0, c0de0a62 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a26:	a815      	add	r0, sp, #84	@ 0x54
c0de0a28:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a2a:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a2c:	f001 fa4a 	bl	c0de1ec4 <zkn_prv2pub>
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
c0de0a4e:	f001 fa61 	bl	c0de1f14 <EddsaPoseidon_Sign_final>
c0de0a52:	b930      	cbnz	r0, c0de0a62 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a54:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a56:	2160      	movs	r1, #96	@ 0x60
c0de0a58:	f7ff fe2e 	bl	c0de06b8 <io_send_response_pointer>
c0de0a5c:	f00a fe04 	bl	c0deb668 <cx_bn_unlock>
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
c0de0a9e:	f002 f8ff 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de0aa2:	2800      	cmp	r0, #0
c0de0aa4:	d14d      	bne.n	c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aa6:	f107 060c 	add.w	r6, r7, #12
c0de0aaa:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0aae:	4638      	mov	r0, r7
c0de0ab0:	4631      	mov	r1, r6
c0de0ab2:	f002 f89e 	bl	c0de2bf2 <tEdwards_IsOnCurve>
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
c0de0ad2:	f00a ffb1 	bl	c0deba38 <__aeabi_memcpy>
c0de0ad6:	af01      	add	r7, sp, #4
c0de0ad8:	491e      	ldr	r1, [pc, #120]	@ (c0de0b54 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ada:	2220      	movs	r2, #32
c0de0adc:	4638      	mov	r0, r7
c0de0ade:	4479      	add	r1, pc
c0de0ae0:	f00a ffaa 	bl	c0deba38 <__aeabi_memcpy>
c0de0ae4:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0ae8:	a814      	add	r0, sp, #80	@ 0x50
c0de0aea:	4651      	mov	r1, sl
c0de0aec:	463a      	mov	r2, r7
c0de0aee:	4643      	mov	r3, r8
c0de0af0:	f002 fac7 	bl	c0de3082 <tEdwards_alloc_init>
c0de0af4:	bb28      	cbnz	r0, c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0af6:	a814      	add	r0, sp, #80	@ 0x50
c0de0af8:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0afc:	4631      	mov	r1, r6
c0de0afe:	f002 f878 	bl	c0de2bf2 <tEdwards_IsOnCurve>
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
c0de0b20:	f002 fb34 	bl	c0de318c <tEdwards_scalarMul>
c0de0b24:	b968      	cbnz	r0, c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b26:	a814      	add	r0, sp, #80	@ 0x50
c0de0b28:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b2c:	a911      	add	r1, sp, #68	@ 0x44
c0de0b2e:	f000 fe6d 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de0b32:	b930      	cbnz	r0, c0de0b42 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b34:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b38:	f000 fe5d 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0b3c:	f00a fd94 	bl	c0deb668 <cx_bn_unlock>
c0de0b40:	b120      	cbz	r0, c0de0b4c <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b42:	f000 fe41 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0b46:	b06b      	add	sp, #428	@ 0x1ac
c0de0b48:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b4c:	2000      	movs	r0, #0
c0de0b4e:	e7fa      	b.n	c0de0b46 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b50:	0000cfcc 	.word	0x0000cfcc
c0de0b54:	0000cfde 	.word	0x0000cfde

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
c0de0b8e:	f002 f887 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
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
c0de0bb0:	f00a ff42 	bl	c0deba38 <__aeabi_memcpy>
c0de0bb4:	af03      	add	r7, sp, #12
c0de0bb6:	4940      	ldr	r1, [pc, #256]	@ (c0de0cb8 <handler_cmd_tEdwards+0x160>)
c0de0bb8:	4479      	add	r1, pc
c0de0bba:	e009      	b.n	c0de0bd0 <handler_cmd_tEdwards+0x78>
c0de0bbc:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0bbe:	493f      	ldr	r1, [pc, #252]	@ (c0de0cbc <handler_cmd_tEdwards+0x164>)
c0de0bc0:	2220      	movs	r2, #32
c0de0bc2:	4630      	mov	r0, r6
c0de0bc4:	4479      	add	r1, pc
c0de0bc6:	f00a ff37 	bl	c0deba38 <__aeabi_memcpy>
c0de0bca:	af03      	add	r7, sp, #12
c0de0bcc:	493c      	ldr	r1, [pc, #240]	@ (c0de0cc0 <handler_cmd_tEdwards+0x168>)
c0de0bce:	4479      	add	r1, pc
c0de0bd0:	4638      	mov	r0, r7
c0de0bd2:	2220      	movs	r2, #32
c0de0bd4:	f00a ff30 	bl	c0deba38 <__aeabi_memcpy>
c0de0bd8:	a819      	add	r0, sp, #100	@ 0x64
c0de0bda:	ab16      	add	r3, sp, #88	@ 0x58
c0de0bdc:	4631      	mov	r1, r6
c0de0bde:	463a      	mov	r2, r7
c0de0be0:	f002 fa4f 	bl	c0de3082 <tEdwards_alloc_init>
c0de0be4:	2800      	cmp	r0, #0
c0de0be6:	d1d5      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0be8:	a819      	add	r0, sp, #100	@ 0x64
c0de0bea:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0bec:	aa03      	add	r2, sp, #12
c0de0bee:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0bf0:	f002 fa47 	bl	c0de3082 <tEdwards_alloc_init>
c0de0bf4:	2800      	cmp	r0, #0
c0de0bf6:	d1cd      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0bf8:	2000      	movs	r0, #0
c0de0bfa:	f10d 020b 	add.w	r2, sp, #11
c0de0bfe:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0c02:	a819      	add	r0, sp, #100	@ 0x64
c0de0c04:	a916      	add	r1, sp, #88	@ 0x58
c0de0c06:	f001 fff4 	bl	c0de2bf2 <tEdwards_IsOnCurve>
c0de0c0a:	2800      	cmp	r0, #0
c0de0c0c:	d1c2      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c0e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c12:	2801      	cmp	r0, #1
c0de0c14:	d142      	bne.n	c0de0c9c <handler_cmd_tEdwards+0x144>
c0de0c16:	a819      	add	r0, sp, #100	@ 0x64
c0de0c18:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c1a:	f10d 020b 	add.w	r2, sp, #11
c0de0c1e:	4631      	mov	r1, r6
c0de0c20:	f001 ffe7 	bl	c0de2bf2 <tEdwards_IsOnCurve>
c0de0c24:	2800      	cmp	r0, #0
c0de0c26:	d1b5      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c28:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c2c:	2801      	cmp	r0, #1
c0de0c2e:	d138      	bne.n	c0de0ca2 <handler_cmd_tEdwards+0x14a>
c0de0c30:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c32:	f10d 010b 	add.w	r1, sp, #11
c0de0c36:	f00a fdd5 	bl	c0deb7e4 <cx_bn_is_prime>
c0de0c3a:	2800      	cmp	r0, #0
c0de0c3c:	d1aa      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c3e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c42:	2801      	cmp	r0, #1
c0de0c44:	d130      	bne.n	c0de0ca8 <handler_cmd_tEdwards+0x150>
c0de0c46:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c48:	f10d 010b 	add.w	r1, sp, #11
c0de0c4c:	f00a fdca 	bl	c0deb7e4 <cx_bn_is_prime>
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
c0de0c6a:	f002 fa8f 	bl	c0de318c <tEdwards_scalarMul>
c0de0c6e:	2800      	cmp	r0, #0
c0de0c70:	d190      	bne.n	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c72:	a819      	add	r0, sp, #100	@ 0x64
c0de0c74:	f104 0320 	add.w	r3, r4, #32
c0de0c78:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c7a:	f000 fdc7 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de0c7e:	2800      	cmp	r0, #0
c0de0c80:	f47f af88 	bne.w	c0de0b94 <handler_cmd_tEdwards+0x3c>
c0de0c84:	f00a fcf0 	bl	c0deb668 <cx_bn_unlock>
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
c0de0cb4:	0000cd0e 	.word	0x0000cd0e
c0de0cb8:	0000cd84 	.word	0x0000cd84
c0de0cbc:	0000cd18 	.word	0x0000cd18
c0de0cc0:	0000cc4e 	.word	0x0000cc4e

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
c0de0cf2:	f001 ffd5 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
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
c0de0d2a:	f00a fcaf 	bl	c0deb68c <cx_bn_alloc_init>
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
c0de0d64:	f00a fc88 	bl	c0deb678 <cx_bn_alloc>
c0de0d68:	2800      	cmp	r0, #0
c0de0d6a:	d1e4      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0d6c:	6820      	ldr	r0, [r4, #0]
c0de0d6e:	4631      	mov	r1, r6
c0de0d70:	f00a fcc2 	bl	c0deb6f8 <cx_bn_set_u32>
c0de0d74:	2800      	cmp	r0, #0
c0de0d76:	d1de      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0d78:	4640      	mov	r0, r8
c0de0d7a:	4659      	mov	r1, fp
c0de0d7c:	f001 fe10 	bl	c0de29a0 <tEdwards_alloc>
c0de0d80:	2800      	cmp	r0, #0
c0de0d82:	d1d8      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0d84:	9602      	str	r6, [sp, #8]
c0de0d86:	eb07 060a 	add.w	r6, r7, sl
c0de0d8a:	9901      	ldr	r1, [sp, #4]
c0de0d8c:	4640      	mov	r0, r8
c0de0d8e:	465b      	mov	r3, fp
c0de0d90:	4632      	mov	r2, r6
c0de0d92:	f002 f995 	bl	c0de30c0 <tEdwards_scalarMul_bn>
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
c0de0db8:	f002 f923 	bl	c0de3002 <tEdwards_normalize>
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
c0de0dde:	f001 fa50 	bl	c0de2282 <zkn_frost_interpolate_secrets>
c0de0de2:	2800      	cmp	r0, #0
c0de0de4:	d1a7      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0de6:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0de8:	a944      	add	r1, sp, #272	@ 0x110
c0de0dea:	2220      	movs	r2, #32
c0de0dec:	31c0      	adds	r1, #192	@ 0xc0
c0de0dee:	f00a fc8d 	bl	c0deb70c <cx_bn_export>
c0de0df2:	2800      	cmp	r0, #0
c0de0df4:	d19f      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0df6:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0df8:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dfa:	ab03      	add	r3, sp, #12
c0de0dfc:	9901      	ldr	r1, [sp, #4]
c0de0dfe:	f002 f95f 	bl	c0de30c0 <tEdwards_scalarMul_bn>
c0de0e02:	2800      	cmp	r0, #0
c0de0e04:	d197      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0e06:	a844      	add	r0, sp, #272	@ 0x110
c0de0e08:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e0c:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e0e:	a903      	add	r1, sp, #12
c0de0e10:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e12:	f002 f8d0 	bl	c0de2fb6 <tEdwards_export>
c0de0e16:	2800      	cmp	r0, #0
c0de0e18:	d18d      	bne.n	c0de0d36 <handler_cmd_Interpolate+0x72>
c0de0e1a:	a844      	add	r0, sp, #272	@ 0x110
c0de0e1c:	f000 fceb 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0e20:	f00a fc22 	bl	c0deb668 <cx_bn_unlock>
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
c0de0e80:	f00a f94b 	bl	c0deb11a <cx_blake2b_512_hash_iovec>
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
c0de0e9c:	f00a fbf6 	bl	c0deb68c <cx_bn_alloc_init>
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
c0de0ee6:	f00a fbc7 	bl	c0deb678 <cx_bn_alloc>
c0de0eea:	2800      	cmp	r0, #0
c0de0eec:	d1e5      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0eee:	a801      	add	r0, sp, #4
c0de0ef0:	2120      	movs	r1, #32
c0de0ef2:	eb00 0508 	add.w	r5, r0, r8
c0de0ef6:	4628      	mov	r0, r5
c0de0ef8:	f00a fbbe 	bl	c0deb678 <cx_bn_alloc>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1dc      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f00:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f02:	4621      	mov	r1, r4
c0de0f04:	f00a fbf8 	bl	c0deb6f8 <cx_bn_set_u32>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d1d6      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f0c:	6828      	ldr	r0, [r5, #0]
c0de0f0e:	4621      	mov	r1, r4
c0de0f10:	f00a fbf2 	bl	c0deb6f8 <cx_bn_set_u32>
c0de0f14:	2800      	cmp	r0, #0
c0de0f16:	d1d0      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f18:	4650      	mov	r0, sl
c0de0f1a:	4631      	mov	r1, r6
c0de0f1c:	f001 fd40 	bl	c0de29a0 <tEdwards_alloc>
c0de0f20:	2800      	cmp	r0, #0
c0de0f22:	d1ca      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f24:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f28:	2202      	movs	r2, #2
c0de0f2a:	9000      	str	r0, [sp, #0]
c0de0f2c:	4650      	mov	r0, sl
c0de0f2e:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f30:	f001 f9e9 	bl	c0de2306 <zkn_evalshare>
c0de0f34:	2800      	cmp	r0, #0
c0de0f36:	d1c0      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f38:	6838      	ldr	r0, [r7, #0]
c0de0f3a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f3c:	f00a fbd2 	bl	c0deb6e4 <cx_bn_copy>
c0de0f40:	2800      	cmp	r0, #0
c0de0f42:	d1ba      	bne.n	c0de0eba <handler_cmd_Split+0x8c>
c0de0f44:	4650      	mov	r0, sl
c0de0f46:	4631      	mov	r1, r6
c0de0f48:	f002 f85b 	bl	c0de3002 <tEdwards_normalize>
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
c0de0f84:	f00a fb8e 	bl	c0deb6a4 <cx_bn_destroy>
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
c0de0fa0:	f001 f96f 	bl	c0de2282 <zkn_frost_interpolate_secrets>
c0de0fa4:	2800      	cmp	r0, #0
c0de0fa6:	f47f af88 	bne.w	c0de0eba <handler_cmd_Split+0x8c>
c0de0faa:	a848      	add	r0, sp, #288	@ 0x120
c0de0fac:	f000 fc23 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0fb0:	f00a fb5a 	bl	c0deb668 <cx_bn_unlock>
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
c0de0fd2:	f001 fe65 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de0fd6:	bbe0      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de0fd8:	a801      	add	r0, sp, #4
c0de0fda:	f000 fbff 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de0fde:	bbc0      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de0fe0:	f000 fc02 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de0fe4:	f002 fb7a 	bl	c0de36dc <Babyfrost_H1>
c0de0fe8:	bb98      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de0fea:	9801      	ldr	r0, [sp, #4]
c0de0fec:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fee:	2220      	movs	r2, #32
c0de0ff0:	4629      	mov	r1, r5
c0de0ff2:	f00a fb8b 	bl	c0deb70c <cx_bn_export>
c0de0ff6:	bb60      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de0ff8:	f000 fbf6 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de0ffc:	f002 fb7c 	bl	c0de36f8 <Babyfrost_H3>
c0de1000:	bb38      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de1002:	9801      	ldr	r0, [sp, #4]
c0de1004:	f105 0120 	add.w	r1, r5, #32
c0de1008:	f000 fbe5 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de100c:	bb08      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de100e:	f000 fbeb 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de1012:	f002 fb85 	bl	c0de3720 <Babyfrost_H4>
c0de1016:	b9e0      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de1018:	9801      	ldr	r0, [sp, #4]
c0de101a:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de101e:	f000 fbda 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de1022:	b9b0      	cbnz	r0, c0de1052 <handler_cmd_frostH+0x94>
c0de1024:	f000 fbe0 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de1028:	f002 fb88 	bl	c0de373c <Babyfrost_H5>
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
c0de104c:	f00a fb0c 	bl	c0deb668 <cx_bn_unlock>
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
c0de1074:	f001 fe14 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de1078:	b9e0      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de107a:	a879      	add	r0, sp, #484	@ 0x1e4
c0de107c:	f000 fbae 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de1080:	b9c0      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de1082:	ac01      	add	r4, sp, #4
c0de1084:	4910      	ldr	r1, [pc, #64]	@ (c0de10c8 <handler_cmd_encodeCommitment+0x68>)
c0de1086:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de108a:	4620      	mov	r0, r4
c0de108c:	4479      	add	r1, pc
c0de108e:	f00a fcd3 	bl	c0deba38 <__aeabi_memcpy>
c0de1092:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1094:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1096:	4621      	mov	r1, r4
c0de1098:	2203      	movs	r2, #3
c0de109a:	f001 f9c5 	bl	c0de2428 <zkn_encode_group_commitmentHash>
c0de109e:	b948      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de10a0:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de10a2:	a990      	add	r1, sp, #576	@ 0x240
c0de10a4:	2220      	movs	r2, #32
c0de10a6:	3120      	adds	r1, #32
c0de10a8:	f00a fb30 	bl	c0deb70c <cx_bn_export>
c0de10ac:	b910      	cbnz	r0, c0de10b4 <handler_cmd_encodeCommitment+0x54>
c0de10ae:	f00a fadb 	bl	c0deb668 <cx_bn_unlock>
c0de10b2:	b120      	cbz	r0, c0de10be <handler_cmd_encodeCommitment+0x5e>
c0de10b4:	f000 fb88 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de10b8:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de10bc:	bd10      	pop	{r4, pc}
c0de10be:	a890      	add	r0, sp, #576	@ 0x240
c0de10c0:	f000 fba1 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de10c4:	2000      	movs	r0, #0
c0de10c6:	e7f7      	b.n	c0de10b8 <handler_cmd_encodeCommitment+0x58>
c0de10c8:	0000cb10 	.word	0x0000cb10

c0de10cc <handler_cmd_GroupCommitment>:
c0de10cc:	b570      	push	{r4, r5, r6, lr}
c0de10ce:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10d2:	4604      	mov	r4, r0
c0de10d4:	f000 fb74 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de10d8:	bb68      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de10da:	6820      	ldr	r0, [r4, #0]
c0de10dc:	7801      	ldrb	r1, [r0, #0]
c0de10de:	a894      	add	r0, sp, #592	@ 0x250
c0de10e0:	f001 fdde 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de10e4:	bb38      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de10e6:	a894      	add	r0, sp, #592	@ 0x250
c0de10e8:	ac91      	add	r4, sp, #580	@ 0x244
c0de10ea:	4621      	mov	r1, r4
c0de10ec:	f001 fc58 	bl	c0de29a0 <tEdwards_alloc>
c0de10f0:	bb08      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de10f2:	ad19      	add	r5, sp, #100	@ 0x64
c0de10f4:	4915      	ldr	r1, [pc, #84]	@ (c0de114c <handler_cmd_GroupCommitment+0x80>)
c0de10f6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10fa:	4628      	mov	r0, r5
c0de10fc:	4479      	add	r1, pc
c0de10fe:	f00a fc9b 	bl	c0deba38 <__aeabi_memcpy>
c0de1102:	ae01      	add	r6, sp, #4
c0de1104:	4912      	ldr	r1, [pc, #72]	@ (c0de1150 <handler_cmd_GroupCommitment+0x84>)
c0de1106:	2260      	movs	r2, #96	@ 0x60
c0de1108:	4630      	mov	r0, r6
c0de110a:	4479      	add	r1, pc
c0de110c:	f00a fc94 	bl	c0deba38 <__aeabi_memcpy>
c0de1110:	9400      	str	r4, [sp, #0]
c0de1112:	a894      	add	r0, sp, #592	@ 0x250
c0de1114:	4629      	mov	r1, r5
c0de1116:	4632      	mov	r2, r6
c0de1118:	2303      	movs	r3, #3
c0de111a:	f001 fa02 	bl	c0de2522 <zkn_compute_group_commitment>
c0de111e:	b950      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de1120:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de1122:	a894      	add	r0, sp, #592	@ 0x250
c0de1124:	a991      	add	r1, sp, #580	@ 0x244
c0de1126:	f102 0320 	add.w	r3, r2, #32
c0de112a:	f001 ff44 	bl	c0de2fb6 <tEdwards_export>
c0de112e:	b910      	cbnz	r0, c0de1136 <handler_cmd_GroupCommitment+0x6a>
c0de1130:	f00a fa9a 	bl	c0deb668 <cx_bn_unlock>
c0de1134:	b120      	cbz	r0, c0de1140 <handler_cmd_GroupCommitment+0x74>
c0de1136:	f000 fb47 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de113a:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de113e:	bd70      	pop	{r4, r5, r6, pc}
c0de1140:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de1142:	2140      	movs	r1, #64	@ 0x40
c0de1144:	f7ff fab8 	bl	c0de06b8 <io_send_response_pointer>
c0de1148:	2000      	movs	r0, #0
c0de114a:	e7f6      	b.n	c0de113a <handler_cmd_GroupCommitment+0x6e>
c0de114c:	0000cc80 	.word	0x0000cc80
c0de1150:	0000ce52 	.word	0x0000ce52

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
c0de116e:	f001 fd97 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de1172:	2800      	cmp	r0, #0
c0de1174:	f040 8111 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1178:	a8de      	add	r0, sp, #888	@ 0x378
c0de117a:	f000 fb2f 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de117e:	2800      	cmp	r0, #0
c0de1180:	f040 810b 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1184:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1186:	addb      	add	r5, sp, #876	@ 0x36c
c0de1188:	4629      	mov	r1, r5
c0de118a:	f001 fc09 	bl	c0de29a0 <tEdwards_alloc>
c0de118e:	2800      	cmp	r0, #0
c0de1190:	f040 8103 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1194:	ac63      	add	r4, sp, #396	@ 0x18c
c0de1196:	4985      	ldr	r1, [pc, #532]	@ (c0de13ac <handler_cmd_BindingFactors+0x258>)
c0de1198:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de119c:	4620      	mov	r0, r4
c0de119e:	4479      	add	r1, pc
c0de11a0:	f00a fc4a 	bl	c0deba38 <__aeabi_memcpy>
c0de11a4:	9bde      	ldr	r3, [sp, #888]	@ 0x378
c0de11a6:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11a8:	4621      	mov	r1, r4
c0de11aa:	2203      	movs	r2, #3
c0de11ac:	f001 f93c 	bl	c0de2428 <zkn_encode_group_commitmentHash>
c0de11b0:	2800      	cmp	r0, #0
c0de11b2:	f040 80f2 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de11b6:	f50d 7875 	add.w	r8, sp, #980	@ 0x3d4
c0de11ba:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de11bc:	2220      	movs	r2, #32
c0de11be:	2620      	movs	r6, #32
c0de11c0:	4641      	mov	r1, r8
c0de11c2:	f00a faa3 	bl	c0deb70c <cx_bn_export>
c0de11c6:	2800      	cmp	r0, #0
c0de11c8:	f040 80e7 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de11cc:	4978      	ldr	r1, [pc, #480]	@ (c0de13b0 <handler_cmd_BindingFactors+0x25c>)
c0de11ce:	f50d 7ab6 	add.w	sl, sp, #364	@ 0x16c
c0de11d2:	2220      	movs	r2, #32
c0de11d4:	4650      	mov	r0, sl
c0de11d6:	4479      	add	r1, pc
c0de11d8:	f00a fc2e 	bl	c0deba38 <__aeabi_memcpy>
c0de11dc:	a853      	add	r0, sp, #332	@ 0x14c
c0de11de:	4975      	ldr	r1, [pc, #468]	@ (c0de13b4 <handler_cmd_BindingFactors+0x260>)
c0de11e0:	2220      	movs	r2, #32
c0de11e2:	4479      	add	r1, pc
c0de11e4:	f00a fc28 	bl	c0deba38 <__aeabi_memcpy>
c0de11e8:	ac4b      	add	r4, sp, #300	@ 0x12c
c0de11ea:	4973      	ldr	r1, [pc, #460]	@ (c0de13b8 <handler_cmd_BindingFactors+0x264>)
c0de11ec:	2220      	movs	r2, #32
c0de11ee:	4620      	mov	r0, r4
c0de11f0:	4479      	add	r1, pc
c0de11f2:	f00a fc21 	bl	c0deba38 <__aeabi_memcpy>
c0de11f6:	f108 0720 	add.w	r7, r8, #32
c0de11fa:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de11fe:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1200:	aa63      	add	r2, sp, #396	@ 0x18c
c0de1202:	4651      	mov	r1, sl
c0de1204:	2303      	movs	r3, #3
c0de1206:	f001 f9fd 	bl	c0de2604 <zkn_compute_binding_factors>
c0de120a:	2800      	cmp	r0, #0
c0de120c:	f040 80c5 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1210:	9500      	str	r5, [sp, #0]
c0de1212:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1214:	a963      	add	r1, sp, #396	@ 0x18c
c0de1216:	463a      	mov	r2, r7
c0de1218:	2303      	movs	r3, #3
c0de121a:	f001 f982 	bl	c0de2522 <zkn_compute_group_commitment>
c0de121e:	2800      	cmp	r0, #0
c0de1220:	f040 80bb 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de1224:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1226:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de122a:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de122e:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1230:	f001 fec1 	bl	c0de2fb6 <tEdwards_export>
c0de1234:	2800      	cmp	r0, #0
c0de1236:	f040 80b0 	bne.w	c0de139a <handler_cmd_BindingFactors+0x246>
c0de123a:	ad3b      	add	r5, sp, #236	@ 0xec
c0de123c:	495f      	ldr	r1, [pc, #380]	@ (c0de13bc <handler_cmd_BindingFactors+0x268>)
c0de123e:	2240      	movs	r2, #64	@ 0x40
c0de1240:	4628      	mov	r0, r5
c0de1242:	4479      	add	r1, pc
c0de1244:	f00a fbf8 	bl	c0deba38 <__aeabi_memcpy>
c0de1248:	a833      	add	r0, sp, #204	@ 0xcc
c0de124a:	495d      	ldr	r1, [pc, #372]	@ (c0de13c0 <handler_cmd_BindingFactors+0x26c>)
c0de124c:	2220      	movs	r2, #32
c0de124e:	2420      	movs	r4, #32
c0de1250:	4479      	add	r1, pc
c0de1252:	f00a fbf1 	bl	c0deba38 <__aeabi_memcpy>
c0de1256:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1258:	462a      	mov	r2, r5
c0de125a:	e9cd 4000 	strd	r4, r0, [sp]
c0de125e:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1260:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1262:	ab53      	add	r3, sp, #332	@ 0x14c
c0de1264:	f001 fa5a 	bl	c0de271c <compute_challenge>
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
c0de1286:	f00a fbd7 	bl	c0deba38 <__aeabi_memcpy>
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
c0de12a8:	f00a fa84 	bl	c0deb7b4 <cx_bn_reduce>
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
c0de12c8:	f00a fbb6 	bl	c0deba38 <__aeabi_memcpy>
c0de12cc:	a819      	add	r0, sp, #100	@ 0x64
c0de12ce:	493f      	ldr	r1, [pc, #252]	@ (c0de13cc <handler_cmd_BindingFactors+0x278>)
c0de12d0:	2220      	movs	r2, #32
c0de12d2:	4479      	add	r1, pc
c0de12d4:	f00a fbb0 	bl	c0deba38 <__aeabi_memcpy>
c0de12d8:	a811      	add	r0, sp, #68	@ 0x44
c0de12da:	493d      	ldr	r1, [pc, #244]	@ (c0de13d0 <handler_cmd_BindingFactors+0x27c>)
c0de12dc:	2220      	movs	r2, #32
c0de12de:	4479      	add	r1, pc
c0de12e0:	f00a fbaa 	bl	c0deba38 <__aeabi_memcpy>
c0de12e4:	a809      	add	r0, sp, #36	@ 0x24
c0de12e6:	493b      	ldr	r1, [pc, #236]	@ (c0de13d4 <handler_cmd_BindingFactors+0x280>)
c0de12e8:	2220      	movs	r2, #32
c0de12ea:	4479      	add	r1, pc
c0de12ec:	f00a fba4 	bl	c0deba38 <__aeabi_memcpy>
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
c0de133a:	f00a fa2f 	bl	c0deb79c <cx_bn_mod_mul>
c0de133e:	bb60      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de1340:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1342:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de1346:	9807      	ldr	r0, [sp, #28]
c0de1348:	f00a fa28 	bl	c0deb79c <cx_bn_mod_mul>
c0de134c:	bb28      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de134e:	e9dd 3231 	ldrd	r3, r2, [sp, #196]	@ 0xc4
c0de1352:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de1356:	f00a fa21 	bl	c0deb79c <cx_bn_mod_mul>
c0de135a:	b9f0      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de135c:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de135e:	9a06      	ldr	r2, [sp, #24]
c0de1360:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
c0de1364:	f00a fa02 	bl	c0deb76c <cx_bn_mod_add>
c0de1368:	b9b8      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de136a:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de136c:	9a08      	ldr	r2, [sp, #32]
c0de136e:	e9dd 1003 	ldrd	r1, r0, [sp, #12]
c0de1372:	f00a f9fb 	bl	c0deb76c <cx_bn_mod_add>
c0de1376:	b980      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de1378:	9a31      	ldr	r2, [sp, #196]	@ 0xc4
c0de137a:	9904      	ldr	r1, [sp, #16]
c0de137c:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de137e:	f00a fa19 	bl	c0deb7b4 <cx_bn_reduce>
c0de1382:	b950      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de1384:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1386:	a9f5      	add	r1, sp, #980	@ 0x3d4
c0de1388:	f000 fa25 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de138c:	b928      	cbnz	r0, c0de139a <handler_cmd_BindingFactors+0x246>
c0de138e:	a8f5      	add	r0, sp, #980	@ 0x3d4
c0de1390:	f000 fa31 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de1394:	f00a f968 	bl	c0deb668 <cx_bn_unlock>
c0de1398:	b128      	cbz	r0, c0de13a6 <handler_cmd_BindingFactors+0x252>
c0de139a:	f000 fa15 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de139e:	f20d 4dd4 	addw	sp, sp, #1236	@ 0x4d4
c0de13a2:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de13a6:	2000      	movs	r0, #0
c0de13a8:	e7f9      	b.n	c0de139e <handler_cmd_BindingFactors+0x24a>
c0de13aa:	bf00      	nop
c0de13ac:	0000ce1e 	.word	0x0000ce1e
c0de13b0:	0000c786 	.word	0x0000c786
c0de13b4:	0000c5fa 	.word	0x0000c5fa
c0de13b8:	0000c7cc 	.word	0x0000c7cc
c0de13bc:	0000cf5a 	.word	0x0000cf5a
c0de13c0:	0000c72c 	.word	0x0000c72c
c0de13c4:	0000c698 	.word	0x0000c698
c0de13c8:	0000c5b6 	.word	0x0000c5b6
c0de13cc:	0000c6ca 	.word	0x0000c6ca
c0de13d0:	0000c7fe 	.word	0x0000c7fe
c0de13d4:	0000c552 	.word	0x0000c552

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
c0de13f0:	f001 fc56 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de13f4:	2800      	cmp	r0, #0
c0de13f6:	d14d      	bne.n	c0de1494 <handler_cmd_PartialSig+0xbc>
c0de13f8:	492a      	ldr	r1, [pc, #168]	@ (c0de14a4 <handler_cmd_PartialSig+0xcc>)
c0de13fa:	f50d 7880 	add.w	r8, sp, #256	@ 0x100
c0de13fe:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1402:	4640      	mov	r0, r8
c0de1404:	4479      	add	r1, pc
c0de1406:	f00a fb17 	bl	c0deba38 <__aeabi_memcpy>
c0de140a:	4927      	ldr	r1, [pc, #156]	@ (c0de14a8 <handler_cmd_PartialSig+0xd0>)
c0de140c:	f10d 0ae0 	add.w	sl, sp, #224	@ 0xe0
c0de1410:	2220      	movs	r2, #32
c0de1412:	4650      	mov	r0, sl
c0de1414:	4479      	add	r1, pc
c0de1416:	f00a fb0f 	bl	c0deba38 <__aeabi_memcpy>
c0de141a:	4924      	ldr	r1, [pc, #144]	@ (c0de14ac <handler_cmd_PartialSig+0xd4>)
c0de141c:	f10d 0bc0 	add.w	fp, sp, #192	@ 0xc0
c0de1420:	2220      	movs	r2, #32
c0de1422:	4658      	mov	r0, fp
c0de1424:	4479      	add	r1, pc
c0de1426:	f00a fb07 	bl	c0deba38 <__aeabi_memcpy>
c0de142a:	ac28      	add	r4, sp, #160	@ 0xa0
c0de142c:	4920      	ldr	r1, [pc, #128]	@ (c0de14b0 <handler_cmd_PartialSig+0xd8>)
c0de142e:	2220      	movs	r2, #32
c0de1430:	4620      	mov	r0, r4
c0de1432:	4479      	add	r1, pc
c0de1434:	f00a fb00 	bl	c0deba38 <__aeabi_memcpy>
c0de1438:	af18      	add	r7, sp, #96	@ 0x60
c0de143a:	491e      	ldr	r1, [pc, #120]	@ (c0de14b4 <handler_cmd_PartialSig+0xdc>)
c0de143c:	2240      	movs	r2, #64	@ 0x40
c0de143e:	4638      	mov	r0, r7
c0de1440:	4479      	add	r1, pc
c0de1442:	f00a faf9 	bl	c0deba38 <__aeabi_memcpy>
c0de1446:	ad10      	add	r5, sp, #64	@ 0x40
c0de1448:	491b      	ldr	r1, [pc, #108]	@ (c0de14b8 <handler_cmd_PartialSig+0xe0>)
c0de144a:	2220      	movs	r2, #32
c0de144c:	4628      	mov	r0, r5
c0de144e:	4479      	add	r1, pc
c0de1450:	f00a faf2 	bl	c0deba38 <__aeabi_memcpy>
c0de1454:	ae08      	add	r6, sp, #32
c0de1456:	4919      	ldr	r1, [pc, #100]	@ (c0de14bc <handler_cmd_PartialSig+0xe4>)
c0de1458:	2220      	movs	r2, #32
c0de145a:	4630      	mov	r0, r6
c0de145c:	4479      	add	r1, pc
c0de145e:	f00a faeb 	bl	c0deba38 <__aeabi_memcpy>
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
c0de1482:	f001 f9a5 	bl	c0de27d0 <zkn_partial_sig>
c0de1486:	b928      	cbnz	r0, c0de1494 <handler_cmd_PartialSig+0xbc>
c0de1488:	a8ce      	add	r0, sp, #824	@ 0x338
c0de148a:	f000 f9bc 	bl	c0de1806 <OUTLINED_FUNCTION_9>
c0de148e:	f00a f8eb 	bl	c0deb668 <cx_bn_unlock>
c0de1492:	b128      	cbz	r0, c0de14a0 <handler_cmd_PartialSig+0xc8>
c0de1494:	f000 f998 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de1498:	f50d 6d87 	add.w	sp, sp, #1080	@ 0x438
c0de149c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de14a0:	2000      	movs	r0, #0
c0de14a2:	e7f9      	b.n	c0de1498 <handler_cmd_PartialSig+0xc0>
c0de14a4:	0000cbb8 	.word	0x0000cbb8
c0de14a8:	0000c3c8 	.word	0x0000c3c8
c0de14ac:	0000c458 	.word	0x0000c458
c0de14b0:	0000c56a 	.word	0x0000c56a
c0de14b4:	0000cd5c 	.word	0x0000cd5c
c0de14b8:	0000c68e 	.word	0x0000c68e
c0de14bc:	0000c3e0 	.word	0x0000c3e0

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
c0de14ea:	f001 fa59 	bl	c0de29a0 <tEdwards_alloc>
c0de14ee:	b9b0      	cbnz	r0, c0de151e <handler_get_insecure_public+0x5e>
c0de14f0:	480e      	ldr	r0, [pc, #56]	@ (c0de152c <handler_get_insecure_public+0x6c>)
c0de14f2:	eb09 0100 	add.w	r1, r9, r0
c0de14f6:	a804      	add	r0, sp, #16
c0de14f8:	aa01      	add	r2, sp, #4
c0de14fa:	f000 fce3 	bl	c0de1ec4 <zkn_prv2pub>
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
c0de1518:	f00a f8a6 	bl	c0deb668 <cx_bn_unlock>
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
c0de1568:	f001 fb9a 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de156c:	b9f0      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de156e:	a80e      	add	r0, sp, #56	@ 0x38
c0de1570:	a90b      	add	r1, sp, #44	@ 0x2c
c0de1572:	f001 fa15 	bl	c0de29a0 <tEdwards_alloc>
c0de1576:	b9c8      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1578:	4c0f      	ldr	r4, [pc, #60]	@ (c0de15b8 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x88>)
c0de157a:	a80e      	add	r0, sp, #56	@ 0x38
c0de157c:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de157e:	eb09 0104 	add.w	r1, r9, r4
c0de1582:	f000 fc9f 	bl	c0de1ec4 <zkn_prv2pub>
c0de1586:	b988      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1588:	2020      	movs	r0, #32
c0de158a:	eb09 0104 	add.w	r1, r9, r4
c0de158e:	e9cd 0600 	strd	r0, r6, [sp]
c0de1592:	a80e      	add	r0, sp, #56	@ 0x38
c0de1594:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de1596:	ab03      	add	r3, sp, #12
c0de1598:	f000 fcbc 	bl	c0de1f14 <EddsaPoseidon_Sign_final>
c0de159c:	b930      	cbnz	r0, c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de159e:	a824      	add	r0, sp, #144	@ 0x90
c0de15a0:	2160      	movs	r1, #96	@ 0x60
c0de15a2:	f7ff f889 	bl	c0de06b8 <io_send_response_pointer>
c0de15a6:	f00a f85f 	bl	c0deb668 <cx_bn_unlock>
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
c0de15ca:	f00a fa35 	bl	c0deba38 <__aeabi_memcpy>
c0de15ce:	480e      	ldr	r0, [pc, #56]	@ (c0de1608 <handler_cmd_frost_inject+0x4c>)
c0de15d0:	6821      	ldr	r1, [r4, #0]
c0de15d2:	2220      	movs	r2, #32
c0de15d4:	4448      	add	r0, r9
c0de15d6:	3140      	adds	r1, #64	@ 0x40
c0de15d8:	f00a fa2e 	bl	c0deba38 <__aeabi_memcpy>
c0de15dc:	480b      	ldr	r0, [pc, #44]	@ (c0de160c <handler_cmd_frost_inject+0x50>)
c0de15de:	6821      	ldr	r1, [r4, #0]
c0de15e0:	2220      	movs	r2, #32
c0de15e2:	4448      	add	r0, r9
c0de15e4:	3160      	adds	r1, #96	@ 0x60
c0de15e6:	f00a fa27 	bl	c0deba38 <__aeabi_memcpy>
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
c0de1622:	f001 fb3d 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de1626:	bb78      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de1628:	ad06      	add	r5, sp, #24
c0de162a:	466e      	mov	r6, sp
c0de162c:	4628      	mov	r0, r5
c0de162e:	4631      	mov	r1, r6
c0de1630:	f001 f9b6 	bl	c0de29a0 <tEdwards_alloc>
c0de1634:	f106 040c 	add.w	r4, r6, #12
c0de1638:	4628      	mov	r0, r5
c0de163a:	4621      	mov	r1, r4
c0de163c:	f001 f9b0 	bl	c0de29a0 <tEdwards_alloc>
c0de1640:	4814      	ldr	r0, [pc, #80]	@ (c0de1694 <handler_cmd_frost_commit+0x84>)
c0de1642:	4633      	mov	r3, r6
c0de1644:	eb09 0100 	add.w	r1, r9, r0
c0de1648:	4813      	ldr	r0, [pc, #76]	@ (c0de1698 <handler_cmd_frost_commit+0x88>)
c0de164a:	eb09 0200 	add.w	r2, r9, r0
c0de164e:	4628      	mov	r0, r5
c0de1650:	f000 feb9 	bl	c0de23c6 <zkn_frost_commit>
c0de1654:	b9c0      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de1656:	ad1c      	add	r5, sp, #112	@ 0x70
c0de1658:	a806      	add	r0, sp, #24
c0de165a:	4669      	mov	r1, sp
c0de165c:	f105 0320 	add.w	r3, r5, #32
c0de1660:	462a      	mov	r2, r5
c0de1662:	f001 fca8 	bl	c0de2fb6 <tEdwards_export>
c0de1666:	b978      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de1668:	f105 0240 	add.w	r2, r5, #64	@ 0x40
c0de166c:	f105 0360 	add.w	r3, r5, #96	@ 0x60
c0de1670:	a806      	add	r0, sp, #24
c0de1672:	4621      	mov	r1, r4
c0de1674:	f001 fc9f 	bl	c0de2fb6 <tEdwards_export>
c0de1678:	b930      	cbnz	r0, c0de1688 <handler_cmd_frost_commit+0x78>
c0de167a:	a81c      	add	r0, sp, #112	@ 0x70
c0de167c:	2180      	movs	r1, #128	@ 0x80
c0de167e:	f7ff f81b 	bl	c0de06b8 <io_send_response_pointer>
c0de1682:	f009 fff1 	bl	c0deb668 <cx_bn_unlock>
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
c0de1710:	f001 fac6 	bl	c0de2ca0 <tEdwards_Curve_alloc_init>
c0de1714:	bb38      	cbnz	r0, c0de1766 <handler_cmd_frost_partial_sign+0x76>
c0de1716:	ac08      	add	r4, sp, #32
c0de1718:	491c      	ldr	r1, [pc, #112]	@ (c0de178c <handler_cmd_frost_partial_sign+0x9c>)
c0de171a:	2220      	movs	r2, #32
c0de171c:	2620      	movs	r6, #32
c0de171e:	4620      	mov	r0, r4
c0de1720:	4479      	add	r1, pc
c0de1722:	f00a f989 	bl	c0deba38 <__aeabi_memcpy>
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
c0de175a:	f001 f839 	bl	c0de27d0 <zkn_partial_sig>
c0de175e:	b910      	cbnz	r0, c0de1766 <handler_cmd_frost_partial_sign+0x76>
c0de1760:	f009 ff82 	bl	c0deb668 <cx_bn_unlock>
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
c0de178c:	0000c11c 	.word	0x0000c11c

c0de1790 <handler_cmd_inject_nonces>:
c0de1790:	b510      	push	{r4, lr}
c0de1792:	490a      	ldr	r1, [pc, #40]	@ (c0de17bc <handler_cmd_inject_nonces+0x2c>)
c0de1794:	eb09 0201 	add.w	r2, r9, r1
c0de1798:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de179c:	4610      	mov	r0, r2
c0de179e:	2240      	movs	r2, #64	@ 0x40
c0de17a0:	f00a f94a 	bl	c0deba38 <__aeabi_memcpy>
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
c0de17c4:	f009 bf46 	b.w	c0deb654 <cx_bn_lock>

c0de17c8 <OUTLINED_FUNCTION_1>:
c0de17c8:	b280      	uxth	r0, r0
c0de17ca:	f7fe bf80 	b.w	c0de06ce <io_send_sw>

c0de17ce <OUTLINED_FUNCTION_2>:
c0de17ce:	2120      	movs	r1, #32
c0de17d0:	2320      	movs	r3, #32
c0de17d2:	f009 bf5b 	b.w	c0deb68c <cx_bn_alloc_init>

c0de17d6 <OUTLINED_FUNCTION_3>:
c0de17d6:	2220      	movs	r2, #32
c0de17d8:	f009 bf98 	b.w	c0deb70c <cx_bn_export>

c0de17dc <OUTLINED_FUNCTION_4>:
c0de17dc:	2120      	movs	r1, #32
c0de17de:	f009 bf4b 	b.w	c0deb678 <cx_bn_alloc>

c0de17e2 <OUTLINED_FUNCTION_5>:
c0de17e2:	2320      	movs	r3, #32
c0de17e4:	f009 bf52 	b.w	c0deb68c <cx_bn_alloc_init>

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
c0de180e:	f001 bbd2 	b.w	c0de2fb6 <tEdwards_export>

c0de1812 <OUTLINED_FUNCTION_11>:
c0de1812:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de1816:	4610      	mov	r0, r2
c0de1818:	22f0      	movs	r2, #240	@ 0xf0
c0de181a:	f00a b90d 	b.w	c0deba38 <__aeabi_memcpy>

c0de181e <OUTLINED_FUNCTION_12>:
c0de181e:	4629      	mov	r1, r5
c0de1820:	f001 ba3e 	b.w	c0de2ca0 <tEdwards_Curve_alloc_init>

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
c0de1840:	f00a f8fa 	bl	c0deba38 <__aeabi_memcpy>
c0de1844:	2020      	movs	r0, #32
c0de1846:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de184a:	2220      	movs	r2, #32
c0de184c:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de1850:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1854:	f00a f8f0 	bl	c0deba38 <__aeabi_memcpy>
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
c0de1878:	f009 fa88 	bl	c0dead8c <io_send_response_buffers>
c0de187c:	b004      	add	sp, #16
c0de187e:	bd80      	pop	{r7, pc}

c0de1880 <helper_send_response_sig>:
c0de1880:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1882:	b099      	sub	sp, #100	@ 0x64
c0de1884:	f10d 0402 	add.w	r4, sp, #2
c0de1888:	2161      	movs	r1, #97	@ 0x61
c0de188a:	1c65      	adds	r5, r4, #1
c0de188c:	4628      	mov	r0, r5
c0de188e:	f00a f8dd 	bl	c0deba4c <__aeabi_memclr>
c0de1892:	4808      	ldr	r0, [pc, #32]	@ (c0de18b4 <helper_send_response_sig+0x34>)
c0de1894:	f000 f810 	bl	c0de18b8 <OUTLINED_FUNCTION_0>
c0de1898:	f88d 6002 	strb.w	r6, [sp, #2]
c0de189c:	f00a f8cc 	bl	c0deba38 <__aeabi_memcpy>
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
c0de18d4:	f009 fc5a 	bl	c0deb18c <assert_exit>
c0de18d8:	b915      	cbnz	r5, c0de18e0 <transaction_deserialize+0x16>
c0de18da:	2001      	movs	r0, #1
c0de18dc:	f009 fc56 	bl	c0deb18c <assert_exit>
c0de18e0:	6860      	ldr	r0, [r4, #4]
c0de18e2:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de18e6:	d901      	bls.n	c0de18ec <transaction_deserialize+0x22>
c0de18e8:	20f9      	movs	r0, #249	@ 0xf9
c0de18ea:	e04b      	b.n	c0de1984 <transaction_deserialize+0xba>
c0de18ec:	4620      	mov	r0, r4
c0de18ee:	4629      	mov	r1, r5
c0de18f0:	2200      	movs	r2, #0
c0de18f2:	f009 f88d 	bl	c0deaa10 <buffer_read_u64>
c0de18f6:	b330      	cbz	r0, c0de1946 <transaction_deserialize+0x7c>
c0de18f8:	6820      	ldr	r0, [r4, #0]
c0de18fa:	68a1      	ldr	r1, [r4, #8]
c0de18fc:	4408      	add	r0, r1
c0de18fe:	2114      	movs	r1, #20
c0de1900:	61a8      	str	r0, [r5, #24]
c0de1902:	4620      	mov	r0, r4
c0de1904:	f009 f863 	bl	c0dea9ce <buffer_seek_cur>
c0de1908:	b1f8      	cbz	r0, c0de194a <transaction_deserialize+0x80>
c0de190a:	f105 0108 	add.w	r1, r5, #8
c0de190e:	4620      	mov	r0, r4
c0de1910:	2200      	movs	r2, #0
c0de1912:	2600      	movs	r6, #0
c0de1914:	f009 f87c 	bl	c0deaa10 <buffer_read_u64>
c0de1918:	b1c8      	cbz	r0, c0de194e <transaction_deserialize+0x84>
c0de191a:	f105 0120 	add.w	r1, r5, #32
c0de191e:	4620      	mov	r0, r4
c0de1920:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1924:	f009 f894 	bl	c0deaa50 <buffer_read_varint>
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
c0de195c:	f009 f837 	bl	c0dea9ce <buffer_seek_cur>
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
c0de1994:	f009 fbfa 	bl	c0deb18c <assert_exit>
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
c0de19d8:	f009 f9d8 	bl	c0dead8c <io_send_response_buffers>
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
c0de1a34:	f009 f91e 	bl	c0deac74 <bip32_derive_with_seed_ecdsa_sign_hash_256>
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
c0de1a86:	f009 ff75 	bl	c0deb974 <os_sched_exit>
	...

c0de1a8c <ui_menu_main>:
c0de1a8c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de1a8e:	4c1b      	ldr	r4, [pc, #108]	@ (c0de1afc <ui_menu_main+0x70>)
c0de1a90:	4819      	ldr	r0, [pc, #100]	@ (c0de1af8 <ui_menu_main+0x6c>)
c0de1a92:	447c      	add	r4, pc
c0de1a94:	eb09 0500 	add.w	r5, r9, r0
c0de1a98:	f000 f8dc 	bl	c0de1c54 <OUTLINED_FUNCTION_0>
c0de1a9c:	2609      	movs	r6, #9
c0de1a9e:	2114      	movs	r1, #20
c0de1aa0:	73ae      	strb	r6, [r5, #14]
c0de1aa2:	7369      	strb	r1, [r5, #13]
c0de1aa4:	4916      	ldr	r1, [pc, #88]	@ (c0de1b00 <ui_menu_main+0x74>)
c0de1aa6:	4a17      	ldr	r2, [pc, #92]	@ (c0de1b04 <ui_menu_main+0x78>)
c0de1aa8:	4479      	add	r1, pc
c0de1aaa:	447a      	add	r2, pc
c0de1aac:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1ab0:	7800      	ldrb	r0, [r0, #0]
c0de1ab2:	7328      	strb	r0, [r5, #12]
c0de1ab4:	f000 f8ce 	bl	c0de1c54 <OUTLINED_FUNCTION_0>
c0de1ab8:	2115      	movs	r1, #21
c0de1aba:	76ae      	strb	r6, [r5, #26]
c0de1abc:	7669      	strb	r1, [r5, #25]
c0de1abe:	4912      	ldr	r1, [pc, #72]	@ (c0de1b08 <ui_menu_main+0x7c>)
c0de1ac0:	4a12      	ldr	r2, [pc, #72]	@ (c0de1b0c <ui_menu_main+0x80>)
c0de1ac2:	4479      	add	r1, pc
c0de1ac4:	447a      	add	r2, pc
c0de1ac6:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1aca:	2100      	movs	r1, #0
c0de1acc:	7840      	ldrb	r0, [r0, #1]
c0de1ace:	7628      	strb	r0, [r5, #24]
c0de1ad0:	480f      	ldr	r0, [pc, #60]	@ (c0de1b10 <ui_menu_main+0x84>)
c0de1ad2:	4a10      	ldr	r2, [pc, #64]	@ (c0de1b14 <ui_menu_main+0x88>)
c0de1ad4:	4b10      	ldr	r3, [pc, #64]	@ (c0de1b18 <ui_menu_main+0x8c>)
c0de1ad6:	4478      	add	r0, pc
c0de1ad8:	447a      	add	r2, pc
c0de1ada:	447b      	add	r3, pc
c0de1adc:	e9cd 3200 	strd	r3, r2, [sp]
c0de1ae0:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1ae4:	2200      	movs	r2, #0
c0de1ae6:	23ff      	movs	r3, #255	@ 0xff
c0de1ae8:	480c      	ldr	r0, [pc, #48]	@ (c0de1b1c <ui_menu_main+0x90>)
c0de1aea:	490d      	ldr	r1, [pc, #52]	@ (c0de1b20 <ui_menu_main+0x94>)
c0de1aec:	4478      	add	r0, pc
c0de1aee:	4479      	add	r1, pc
c0de1af0:	f006 fff6 	bl	c0de8ae0 <nbgl_useCaseHomeAndSettings>
c0de1af4:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de1af6:	bf00      	nop
c0de1af8:	00000590 	.word	0x00000590
c0de1afc:	0000cf6a 	.word	0x0000cf6a
c0de1b00:	0000b64b 	.word	0x0000b64b
c0de1b04:	0000bb08 	.word	0x0000bb08
c0de1b08:	0000b79e 	.word	0x0000b79e
c0de1b0c:	0000b375 	.word	0x0000b375
c0de1b10:	ffffffab 	.word	0xffffffab
c0de1b14:	0000c710 	.word	0x0000c710
c0de1b18:	0000c702 	.word	0x0000c702
c0de1b1c:	0000b885 	.word	0x0000b885
c0de1b20:	0000a0c9 	.word	0x0000a0c9

c0de1b24 <controls_callback>:
c0de1b24:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1b26:	4c22      	ldr	r4, [pc, #136]	@ (c0de1bb0 <controls_callback+0x8c>)
c0de1b28:	2815      	cmp	r0, #21
c0de1b2a:	f809 2004 	strb.w	r2, [r9, r4]
c0de1b2e:	d011      	beq.n	c0de1b54 <controls_callback+0x30>
c0de1b30:	2814      	cmp	r0, #20
c0de1b32:	d12a      	bne.n	c0de1b8a <controls_callback+0x66>
c0de1b34:	eb09 0504 	add.w	r5, r9, r4
c0de1b38:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1bb4 <controls_callback+0x90>)
c0de1b3a:	447c      	add	r4, pc
c0de1b3c:	f000 f88a 	bl	c0de1c54 <OUTLINED_FUNCTION_0>
c0de1b40:	7800      	ldrb	r0, [r0, #0]
c0de1b42:	fab0 f080 	clz	r0, r0
c0de1b46:	0940      	lsrs	r0, r0, #5
c0de1b48:	7328      	strb	r0, [r5, #12]
c0de1b4a:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1b4e:	f000 f881 	bl	c0de1c54 <OUTLINED_FUNCTION_0>
c0de1b52:	e015      	b.n	c0de1b80 <controls_callback+0x5c>
c0de1b54:	4818      	ldr	r0, [pc, #96]	@ (c0de1bb8 <controls_callback+0x94>)
c0de1b56:	4478      	add	r0, pc
c0de1b58:	f009 fd38 	bl	c0deb5cc <pic>
c0de1b5c:	7840      	ldrb	r0, [r0, #1]
c0de1b5e:	b1a8      	cbz	r0, c0de1b8c <controls_callback+0x68>
c0de1b60:	eb09 0504 	add.w	r5, r9, r4
c0de1b64:	4c15      	ldr	r4, [pc, #84]	@ (c0de1bbc <controls_callback+0x98>)
c0de1b66:	447c      	add	r4, pc
c0de1b68:	f000 f874 	bl	c0de1c54 <OUTLINED_FUNCTION_0>
c0de1b6c:	7840      	ldrb	r0, [r0, #1]
c0de1b6e:	fab0 f080 	clz	r0, r0
c0de1b72:	0940      	lsrs	r0, r0, #5
c0de1b74:	7628      	strb	r0, [r5, #24]
c0de1b76:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1b7a:	f000 f86b 	bl	c0de1c54 <OUTLINED_FUNCTION_0>
c0de1b7e:	3001      	adds	r0, #1
c0de1b80:	f10d 010f 	add.w	r1, sp, #15
c0de1b84:	2201      	movs	r2, #1
c0de1b86:	f009 fd5b 	bl	c0deb640 <nvm_write>
c0de1b8a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1b8c:	480c      	ldr	r0, [pc, #48]	@ (c0de1bc0 <controls_callback+0x9c>)
c0de1b8e:	490d      	ldr	r1, [pc, #52]	@ (c0de1bc4 <controls_callback+0xa0>)
c0de1b90:	4478      	add	r0, pc
c0de1b92:	4479      	add	r1, pc
c0de1b94:	e9cd 1000 	strd	r1, r0, [sp]
c0de1b98:	480b      	ldr	r0, [pc, #44]	@ (c0de1bc8 <controls_callback+0xa4>)
c0de1b9a:	490c      	ldr	r1, [pc, #48]	@ (c0de1bcc <controls_callback+0xa8>)
c0de1b9c:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1bd0 <controls_callback+0xac>)
c0de1b9e:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1bd4 <controls_callback+0xb0>)
c0de1ba0:	4478      	add	r0, pc
c0de1ba2:	4479      	add	r1, pc
c0de1ba4:	447a      	add	r2, pc
c0de1ba6:	447b      	add	r3, pc
c0de1ba8:	f007 fa76 	bl	c0de9098 <nbgl_useCaseChoice>
c0de1bac:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1bae:	bf00      	nop
c0de1bb0:	00000590 	.word	0x00000590
c0de1bb4:	0000cec2 	.word	0x0000cec2
c0de1bb8:	0000cea6 	.word	0x0000cea6
c0de1bbc:	0000ce96 	.word	0x0000ce96
c0de1bc0:	00000045 	.word	0x00000045
c0de1bc4:	0000b72d 	.word	0x0000b72d
c0de1bc8:	0000a951 	.word	0x0000a951
c0de1bcc:	0000b297 	.word	0x0000b297
c0de1bd0:	0000b4c0 	.word	0x0000b4c0
c0de1bd4:	0000ba14 	.word	0x0000ba14

c0de1bd8 <review_warning_choice>:
c0de1bd8:	b5b0      	push	{r4, r5, r7, lr}
c0de1bda:	b086      	sub	sp, #24
c0de1bdc:	b1a8      	cbz	r0, c0de1c0a <review_warning_choice+0x32>
c0de1bde:	4c17      	ldr	r4, [pc, #92]	@ (c0de1c3c <review_warning_choice+0x64>)
c0de1be0:	4815      	ldr	r0, [pc, #84]	@ (c0de1c38 <review_warning_choice+0x60>)
c0de1be2:	447c      	add	r4, pc
c0de1be4:	eb09 0500 	add.w	r5, r9, r0
c0de1be8:	f000 f834 	bl	c0de1c54 <OUTLINED_FUNCTION_0>
c0de1bec:	7840      	ldrb	r0, [r0, #1]
c0de1bee:	fab0 f080 	clz	r0, r0
c0de1bf2:	0940      	lsrs	r0, r0, #5
c0de1bf4:	7628      	strb	r0, [r5, #24]
c0de1bf6:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1bfa:	f000 f82b 	bl	c0de1c54 <OUTLINED_FUNCTION_0>
c0de1bfe:	3001      	adds	r0, #1
c0de1c00:	f10d 0117 	add.w	r1, sp, #23
c0de1c04:	2201      	movs	r2, #1
c0de1c06:	f009 fd1b 	bl	c0deb640 <nvm_write>
c0de1c0a:	480b      	ldr	r0, [pc, #44]	@ (c0de1c38 <review_warning_choice+0x60>)
c0de1c0c:	2100      	movs	r1, #0
c0de1c0e:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1c12:	480b      	ldr	r0, [pc, #44]	@ (c0de1c40 <review_warning_choice+0x68>)
c0de1c14:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1c44 <review_warning_choice+0x6c>)
c0de1c16:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1c48 <review_warning_choice+0x70>)
c0de1c18:	4478      	add	r0, pc
c0de1c1a:	447a      	add	r2, pc
c0de1c1c:	447c      	add	r4, pc
c0de1c1e:	e9cd 4200 	strd	r4, r2, [sp]
c0de1c22:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1c26:	2200      	movs	r2, #0
c0de1c28:	4808      	ldr	r0, [pc, #32]	@ (c0de1c4c <review_warning_choice+0x74>)
c0de1c2a:	4909      	ldr	r1, [pc, #36]	@ (c0de1c50 <review_warning_choice+0x78>)
c0de1c2c:	4478      	add	r0, pc
c0de1c2e:	4479      	add	r1, pc
c0de1c30:	f006 ff56 	bl	c0de8ae0 <nbgl_useCaseHomeAndSettings>
c0de1c34:	b006      	add	sp, #24
c0de1c36:	bdb0      	pop	{r4, r5, r7, pc}
c0de1c38:	00000590 	.word	0x00000590
c0de1c3c:	0000ce1a 	.word	0x0000ce1a
c0de1c40:	fffffe69 	.word	0xfffffe69
c0de1c44:	0000c5ce 	.word	0x0000c5ce
c0de1c48:	0000c5c0 	.word	0x0000c5c0
c0de1c4c:	0000b745 	.word	0x0000b745
c0de1c50:	00009f89 	.word	0x00009f89

c0de1c54 <OUTLINED_FUNCTION_0>:
c0de1c54:	4620      	mov	r0, r4
c0de1c56:	f009 bcb9 	b.w	c0deb5cc <pic>
	...

c0de1c5c <ui_display_address>:
c0de1c5c:	b570      	push	{r4, r5, r6, lr}
c0de1c5e:	b088      	sub	sp, #32
c0de1c60:	4e22      	ldr	r6, [pc, #136]	@ (c0de1cec <ui_display_address+0x90>)
c0de1c62:	eb09 0106 	add.w	r1, r9, r6
c0de1c66:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1c6a:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1c6e:	4308      	orrs	r0, r1
c0de1c70:	d12a      	bne.n	c0de1cc8 <ui_display_address+0x6c>
c0de1c72:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1cf0 <ui_display_address+0x94>)
c0de1c74:	212b      	movs	r1, #43	@ 0x2b
c0de1c76:	eb09 0005 	add.w	r0, r9, r5
c0de1c7a:	f009 fee7 	bl	c0deba4c <__aeabi_memclr>
c0de1c7e:	ac03      	add	r4, sp, #12
c0de1c80:	2114      	movs	r1, #20
c0de1c82:	4620      	mov	r0, r4
c0de1c84:	f009 fee2 	bl	c0deba4c <__aeabi_memclr>
c0de1c88:	eb09 0006 	add.w	r0, r9, r6
c0de1c8c:	4621      	mov	r1, r4
c0de1c8e:	2214      	movs	r2, #20
c0de1c90:	3008      	adds	r0, #8
c0de1c92:	f7fe f9bf 	bl	c0de0014 <address_from_pubkey>
c0de1c96:	b308      	cbz	r0, c0de1cdc <ui_display_address+0x80>
c0de1c98:	eb09 0205 	add.w	r2, r9, r5
c0de1c9c:	a803      	add	r0, sp, #12
c0de1c9e:	2114      	movs	r1, #20
c0de1ca0:	232b      	movs	r3, #43	@ 0x2b
c0de1ca2:	f009 f811 	bl	c0deacc8 <format_hex>
c0de1ca6:	3001      	adds	r0, #1
c0de1ca8:	d018      	beq.n	c0de1cdc <ui_display_address+0x80>
c0de1caa:	4812      	ldr	r0, [pc, #72]	@ (c0de1cf4 <ui_display_address+0x98>)
c0de1cac:	2400      	movs	r4, #0
c0de1cae:	2100      	movs	r1, #0
c0de1cb0:	4478      	add	r0, pc
c0de1cb2:	e9cd 4000 	strd	r4, r0, [sp]
c0de1cb6:	eb09 0005 	add.w	r0, r9, r5
c0de1cba:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1cf8 <ui_display_address+0x9c>)
c0de1cbc:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1cfc <ui_display_address+0xa0>)
c0de1cbe:	447a      	add	r2, pc
c0de1cc0:	447b      	add	r3, pc
c0de1cc2:	f007 ff4b 	bl	c0de9b5c <nbgl_useCaseAddressReview>
c0de1cc6:	e00e      	b.n	c0de1ce6 <ui_display_address+0x8a>
c0de1cc8:	2000      	movs	r0, #0
c0de1cca:	f809 0006 	strb.w	r0, [r9, r6]
c0de1cce:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1cd2:	b008      	add	sp, #32
c0de1cd4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1cd8:	f000 b812 	b.w	c0de1d00 <io_send_sw>
c0de1cdc:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1ce0:	f000 f80e 	bl	c0de1d00 <io_send_sw>
c0de1ce4:	4604      	mov	r4, r0
c0de1ce6:	4620      	mov	r0, r4
c0de1ce8:	b008      	add	sp, #32
c0de1cea:	bd70      	pop	{r4, r5, r6, pc}
c0de1cec:	00000000 	.word	0x00000000
c0de1cf0:	000005ac 	.word	0x000005ac
c0de1cf4:	0000005d 	.word	0x0000005d
c0de1cf8:	00009ef9 	.word	0x00009ef9
c0de1cfc:	0000ba1a 	.word	0x0000ba1a

c0de1d00 <io_send_sw>:
c0de1d00:	b580      	push	{r7, lr}
c0de1d02:	4602      	mov	r2, r0
c0de1d04:	2000      	movs	r0, #0
c0de1d06:	2100      	movs	r1, #0
c0de1d08:	f009 f840 	bl	c0dead8c <io_send_response_buffers>
c0de1d0c:	bd80      	pop	{r7, pc}
	...

c0de1d10 <review_choice>:
c0de1d10:	b510      	push	{r4, lr}
c0de1d12:	4604      	mov	r4, r0
c0de1d14:	f7ff fe55 	bl	c0de19c2 <validate_pubkey>
c0de1d18:	2007      	movs	r0, #7
c0de1d1a:	2c00      	cmp	r4, #0
c0de1d1c:	bf18      	it	ne
c0de1d1e:	2006      	movne	r0, #6
c0de1d20:	4902      	ldr	r1, [pc, #8]	@ (c0de1d2c <review_choice+0x1c>)
c0de1d22:	4479      	add	r1, pc
c0de1d24:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1d28:	f007 b96c 	b.w	c0de9004 <nbgl_useCaseReviewStatus>
c0de1d2c:	fffffd67 	.word	0xfffffd67

c0de1d30 <ui_display_transaction_bs_choice>:
c0de1d30:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1d32:	b085      	sub	sp, #20
c0de1d34:	4f30      	ldr	r7, [pc, #192]	@ (c0de1df8 <ui_display_transaction_bs_choice+0xc8>)
c0de1d36:	4604      	mov	r4, r0
c0de1d38:	eb09 0007 	add.w	r0, r9, r7
c0de1d3c:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1d40:	2801      	cmp	r0, #1
c0de1d42:	d139      	bne.n	c0de1db8 <ui_display_transaction_bs_choice+0x88>
c0de1d44:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1d48:	2801      	cmp	r0, #1
c0de1d4a:	d135      	bne.n	c0de1db8 <ui_display_transaction_bs_choice+0x88>
c0de1d4c:	4e2b      	ldr	r6, [pc, #172]	@ (c0de1dfc <ui_display_transaction_bs_choice+0xcc>)
c0de1d4e:	2140      	movs	r1, #64	@ 0x40
c0de1d50:	eb09 0006 	add.w	r0, r9, r6
c0de1d54:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1d58:	4628      	mov	r0, r5
c0de1d5a:	f009 fe77 	bl	c0deba4c <__aeabi_memclr>
c0de1d5e:	eb09 0007 	add.w	r0, r9, r7
c0de1d62:	2114      	movs	r1, #20
c0de1d64:	462a      	mov	r2, r5
c0de1d66:	2340      	movs	r3, #64	@ 0x40
c0de1d68:	302d      	adds	r0, #45	@ 0x2d
c0de1d6a:	f008 ffad 	bl	c0deacc8 <format_hex>
c0de1d6e:	3001      	adds	r0, #1
c0de1d70:	d028      	beq.n	c0de1dc4 <ui_display_transaction_bs_choice+0x94>
c0de1d72:	4923      	ldr	r1, [pc, #140]	@ (c0de1e00 <ui_display_transaction_bs_choice+0xd0>)
c0de1d74:	eb09 0006 	add.w	r0, r9, r6
c0de1d78:	4602      	mov	r2, r0
c0de1d7a:	4479      	add	r1, pc
c0de1d7c:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1d80:	2101      	movs	r1, #1
c0de1d82:	72c1      	strb	r1, [r0, #11]
c0de1d84:	7201      	strb	r1, [r0, #8]
c0de1d86:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1d8a:	f849 2006 	str.w	r2, [r9, r6]
c0de1d8e:	6181      	str	r1, [r0, #24]
c0de1d90:	481c      	ldr	r0, [pc, #112]	@ (c0de1e04 <ui_display_transaction_bs_choice+0xd4>)
c0de1d92:	4478      	add	r0, pc
c0de1d94:	b1ec      	cbz	r4, c0de1dd2 <ui_display_transaction_bs_choice+0xa2>
c0de1d96:	4a1c      	ldr	r2, [pc, #112]	@ (c0de1e08 <ui_display_transaction_bs_choice+0xd8>)
c0de1d98:	2100      	movs	r1, #0
c0de1d9a:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1d9e:	2000      	movs	r0, #0
c0de1da0:	447a      	add	r2, pc
c0de1da2:	e9cd 1200 	strd	r1, r2, [sp]
c0de1da6:	eb09 0106 	add.w	r1, r9, r6
c0de1daa:	4a18      	ldr	r2, [pc, #96]	@ (c0de1e0c <ui_display_transaction_bs_choice+0xdc>)
c0de1dac:	4b18      	ldr	r3, [pc, #96]	@ (c0de1e10 <ui_display_transaction_bs_choice+0xe0>)
c0de1dae:	447a      	add	r2, pc
c0de1db0:	447b      	add	r3, pc
c0de1db2:	f007 fbe1 	bl	c0de9578 <nbgl_useCaseReviewBlindSigning>
c0de1db6:	e01b      	b.n	c0de1df0 <ui_display_transaction_bs_choice+0xc0>
c0de1db8:	2000      	movs	r0, #0
c0de1dba:	f809 0007 	strb.w	r0, [r9, r7]
c0de1dbe:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1dc2:	e001      	b.n	c0de1dc8 <ui_display_transaction_bs_choice+0x98>
c0de1dc4:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1dc8:	b005      	add	sp, #20
c0de1dca:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1dce:	f000 b827 	b.w	c0de1e20 <io_send_sw>
c0de1dd2:	4910      	ldr	r1, [pc, #64]	@ (c0de1e14 <ui_display_transaction_bs_choice+0xe4>)
c0de1dd4:	2200      	movs	r2, #0
c0de1dd6:	9002      	str	r0, [sp, #8]
c0de1dd8:	2000      	movs	r0, #0
c0de1dda:	4479      	add	r1, pc
c0de1ddc:	e9cd 2100 	strd	r2, r1, [sp]
c0de1de0:	eb09 0106 	add.w	r1, r9, r6
c0de1de4:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1e18 <ui_display_transaction_bs_choice+0xe8>)
c0de1de6:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1e1c <ui_display_transaction_bs_choice+0xec>)
c0de1de8:	447a      	add	r2, pc
c0de1dea:	447b      	add	r3, pc
c0de1dec:	f007 fb14 	bl	c0de9418 <nbgl_useCaseReview>
c0de1df0:	2000      	movs	r0, #0
c0de1df2:	b005      	add	sp, #20
c0de1df4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1df6:	bf00      	nop
c0de1df8:	00000000 	.word	0x00000000
c0de1dfc:	000005d8 	.word	0x000005d8
c0de1e00:	0000b869 	.word	0x0000b869
c0de1e04:	0000009b 	.word	0x0000009b
c0de1e08:	0000b89a 	.word	0x0000b89a
c0de1e0c:	00009e09 	.word	0x00009e09
c0de1e10:	0000b93d 	.word	0x0000b93d
c0de1e14:	0000b6ee 	.word	0x0000b6ee
c0de1e18:	00009dcf 	.word	0x00009dcf
c0de1e1c:	0000b903 	.word	0x0000b903

c0de1e20 <io_send_sw>:
c0de1e20:	b580      	push	{r7, lr}
c0de1e22:	4602      	mov	r2, r0
c0de1e24:	2000      	movs	r0, #0
c0de1e26:	2100      	movs	r1, #0
c0de1e28:	f008 ffb0 	bl	c0dead8c <io_send_response_buffers>
c0de1e2c:	bd80      	pop	{r7, pc}
	...

c0de1e30 <review_choice>:
c0de1e30:	b510      	push	{r4, lr}
c0de1e32:	4604      	mov	r4, r0
c0de1e34:	f7ff fdd4 	bl	c0de19e0 <validate_transaction>
c0de1e38:	4903      	ldr	r1, [pc, #12]	@ (c0de1e48 <review_choice+0x18>)
c0de1e3a:	f084 0001 	eor.w	r0, r4, #1
c0de1e3e:	4479      	add	r1, pc
c0de1e40:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1e44:	f007 b8de 	b.w	c0de9004 <nbgl_useCaseReviewStatus>
c0de1e48:	fffffc4b 	.word	0xfffffc4b

c0de1e4c <ui_display_blind_signed_transaction>:
c0de1e4c:	2001      	movs	r0, #1
c0de1e4e:	f7ff bf6f 	b.w	c0de1d30 <ui_display_transaction_bs_choice>

c0de1e52 <ui_display_transaction>:
c0de1e52:	2000      	movs	r0, #0
c0de1e54:	f7ff bf6c 	b.w	c0de1d30 <ui_display_transaction_bs_choice>

c0de1e58 <zkn_prv_hash>:
c0de1e58:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1e5c:	460c      	mov	r4, r1
c0de1e5e:	e9cd 0200 	strd	r0, r2, [sp]
c0de1e62:	4668      	mov	r0, sp
c0de1e64:	2101      	movs	r1, #1
c0de1e66:	2601      	movs	r6, #1
c0de1e68:	4622      	mov	r2, r4
c0de1e6a:	f009 f956 	bl	c0deb11a <cx_blake2b_512_hash_iovec>
c0de1e6e:	4605      	mov	r5, r0
c0de1e70:	bb18      	cbnz	r0, c0de1eba <zkn_prv_hash+0x62>
c0de1e72:	7820      	ldrb	r0, [r4, #0]
c0de1e74:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1e78:	7020      	strb	r0, [r4, #0]
c0de1e7a:	7fe0      	ldrb	r0, [r4, #31]
c0de1e7c:	f366 109f 	bfi	r0, r6, #6, #26
c0de1e80:	77e0      	strb	r0, [r4, #31]
c0de1e82:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1e86:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1ec0 <zkn_prv_hash+0x68>)
c0de1e88:	447e      	add	r6, pc
c0de1e8a:	47b0      	blx	r6
c0de1e8c:	4680      	mov	r8, r0
c0de1e8e:	468a      	mov	sl, r1
c0de1e90:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1e94:	47b0      	blx	r6
c0de1e96:	4683      	mov	fp, r0
c0de1e98:	460f      	mov	r7, r1
c0de1e9a:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1e9e:	47b0      	blx	r6
c0de1ea0:	e9c4 0100 	strd	r0, r1, [r4]
c0de1ea4:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1ea8:	47b0      	blx	r6
c0de1eaa:	f104 0208 	add.w	r2, r4, #8
c0de1eae:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1eb2:	f104 0014 	add.w	r0, r4, #20
c0de1eb6:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1eba:	4628      	mov	r0, r5
c0de1ebc:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1ec0:	00000325 	.word	0x00000325

c0de1ec4 <zkn_prv2pub>:
c0de1ec4:	b570      	push	{r4, r5, r6, lr}
c0de1ec6:	b092      	sub	sp, #72	@ 0x48
c0de1ec8:	4614      	mov	r4, r2
c0de1eca:	6802      	ldr	r2, [r0, #0]
c0de1ecc:	ae02      	add	r6, sp, #8
c0de1ece:	4605      	mov	r5, r0
c0de1ed0:	4608      	mov	r0, r1
c0de1ed2:	4631      	mov	r1, r6
c0de1ed4:	f7ff ffc0 	bl	c0de1e58 <zkn_prv_hash>
c0de1ed8:	2000      	movs	r0, #0
c0de1eda:	2100      	movs	r1, #0
c0de1edc:	2820      	cmp	r0, #32
c0de1ede:	d009      	beq.n	c0de1ef4 <zkn_prv2pub+0x30>
c0de1ee0:	5c32      	ldrb	r2, [r6, r0]
c0de1ee2:	0149      	lsls	r1, r1, #5
c0de1ee4:	0613      	lsls	r3, r2, #24
c0de1ee6:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1eea:	5431      	strb	r1, [r6, r0]
c0de1eec:	f002 0107 	and.w	r1, r2, #7
c0de1ef0:	3001      	adds	r0, #1
c0de1ef2:	e7f3      	b.n	c0de1edc <zkn_prv2pub+0x18>
c0de1ef4:	4629      	mov	r1, r5
c0de1ef6:	4628      	mov	r0, r5
c0de1ef8:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1efc:	9400      	str	r4, [sp, #0]
c0de1efe:	aa02      	add	r2, sp, #8
c0de1f00:	f001 f944 	bl	c0de318c <tEdwards_scalarMul>
c0de1f04:	b918      	cbnz	r0, c0de1f0e <zkn_prv2pub+0x4a>
c0de1f06:	4628      	mov	r0, r5
c0de1f08:	4621      	mov	r1, r4
c0de1f0a:	f001 f87a 	bl	c0de3002 <tEdwards_normalize>
c0de1f0e:	b012      	add	sp, #72	@ 0x48
c0de1f10:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1f14 <EddsaPoseidon_Sign_final>:
c0de1f14:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1f18:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1f1c:	4605      	mov	r5, r0
c0de1f1e:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1f20:	2820      	cmp	r0, #32
c0de1f22:	d118      	bne.n	c0de1f56 <EddsaPoseidon_Sign_final+0x42>
c0de1f24:	460e      	mov	r6, r1
c0de1f26:	a982      	add	r1, sp, #520	@ 0x208
c0de1f28:	4628      	mov	r0, r5
c0de1f2a:	461f      	mov	r7, r3
c0de1f2c:	4692      	mov	sl, r2
c0de1f2e:	f000 fd37 	bl	c0de29a0 <tEdwards_alloc>
c0de1f32:	b988      	cbnz	r0, c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1f34:	682a      	ldr	r2, [r5, #0]
c0de1f36:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1f38:	4630      	mov	r0, r6
c0de1f3a:	4621      	mov	r1, r4
c0de1f3c:	f7ff ff8c 	bl	c0de1e58 <zkn_prv_hash>
c0de1f40:	b950      	cbnz	r0, c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1f42:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1f46:	2000      	movs	r0, #0
c0de1f48:	a95a      	add	r1, sp, #360	@ 0x168
c0de1f4a:	2820      	cmp	r0, #32
c0de1f4c:	d008      	beq.n	c0de1f60 <EddsaPoseidon_Sign_final+0x4c>
c0de1f4e:	5c22      	ldrb	r2, [r4, r0]
c0de1f50:	540a      	strb	r2, [r1, r0]
c0de1f52:	3001      	adds	r0, #1
c0de1f54:	e7f9      	b.n	c0de1f4a <EddsaPoseidon_Sign_final+0x36>
c0de1f56:	4894      	ldr	r0, [pc, #592]	@ (c0de21a8 <EddsaPoseidon_Sign_final+0x294>)
c0de1f58:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1f5c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1f60:	a812      	add	r0, sp, #72	@ 0x48
c0de1f62:	2109      	movs	r1, #9
c0de1f64:	2240      	movs	r2, #64	@ 0x40
c0de1f66:	f009 f8f9 	bl	c0deb15c <cx_hash_init_ex>
c0de1f6a:	2800      	cmp	r0, #0
c0de1f6c:	d1f4      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1f6e:	f104 0120 	add.w	r1, r4, #32
c0de1f72:	a812      	add	r0, sp, #72	@ 0x48
c0de1f74:	2220      	movs	r2, #32
c0de1f76:	f009 f8f6 	bl	c0deb166 <cx_hash_update>
c0de1f7a:	2800      	cmp	r0, #0
c0de1f7c:	d1ec      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1f7e:	a812      	add	r0, sp, #72	@ 0x48
c0de1f80:	4639      	mov	r1, r7
c0de1f82:	2220      	movs	r2, #32
c0de1f84:	f009 f8ef 	bl	c0deb166 <cx_hash_update>
c0de1f88:	2800      	cmp	r0, #0
c0de1f8a:	d1e5      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1f8c:	a812      	add	r0, sp, #72	@ 0x48
c0de1f8e:	ac62      	add	r4, sp, #392	@ 0x188
c0de1f90:	4621      	mov	r1, r4
c0de1f92:	f009 f8de 	bl	c0deb152 <cx_hash_final>
c0de1f96:	2800      	cmp	r0, #0
c0de1f98:	d1de      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1f9a:	203f      	movs	r0, #63	@ 0x3f
c0de1f9c:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1f9e:	1c42      	adds	r2, r0, #1
c0de1fa0:	d004      	beq.n	c0de1fac <EddsaPoseidon_Sign_final+0x98>
c0de1fa2:	5c22      	ldrb	r2, [r4, r0]
c0de1fa4:	3801      	subs	r0, #1
c0de1fa6:	f801 2b01 	strb.w	r2, [r1], #1
c0de1faa:	e7f8      	b.n	c0de1f9e <EddsaPoseidon_Sign_final+0x8a>
c0de1fac:	a889      	add	r0, sp, #548	@ 0x224
c0de1fae:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1fb0:	2140      	movs	r1, #64	@ 0x40
c0de1fb2:	2340      	movs	r3, #64	@ 0x40
c0de1fb4:	f009 fb6a 	bl	c0deb68c <cx_bn_alloc_init>
c0de1fb8:	2800      	cmp	r0, #0
c0de1fba:	d1cd      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1fbc:	a887      	add	r0, sp, #540	@ 0x21c
c0de1fbe:	2140      	movs	r1, #64	@ 0x40
c0de1fc0:	f009 fb5a 	bl	c0deb678 <cx_bn_alloc>
c0de1fc4:	2800      	cmp	r0, #0
c0de1fc6:	d1c7      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1fc8:	4978      	ldr	r1, [pc, #480]	@ (c0de21ac <EddsaPoseidon_Sign_final+0x298>)
c0de1fca:	f10d 0808 	add.w	r8, sp, #8
c0de1fce:	2240      	movs	r2, #64	@ 0x40
c0de1fd0:	4640      	mov	r0, r8
c0de1fd2:	4479      	add	r1, pc
c0de1fd4:	f009 fd30 	bl	c0deba38 <__aeabi_memcpy>
c0de1fd8:	a888      	add	r0, sp, #544	@ 0x220
c0de1fda:	2140      	movs	r1, #64	@ 0x40
c0de1fdc:	4642      	mov	r2, r8
c0de1fde:	2340      	movs	r3, #64	@ 0x40
c0de1fe0:	f009 fb54 	bl	c0deb68c <cx_bn_alloc_init>
c0de1fe4:	2800      	cmp	r0, #0
c0de1fe6:	d1b7      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1fe8:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1fea:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1fee:	f009 fbe1 	bl	c0deb7b4 <cx_bn_reduce>
c0de1ff2:	2800      	cmp	r0, #0
c0de1ff4:	d1b0      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de1ff6:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1ff8:	f105 010c 	add.w	r1, r5, #12
c0de1ffc:	ab82      	add	r3, sp, #520	@ 0x208
c0de1ffe:	4628      	mov	r0, r5
c0de2000:	f001 f85e 	bl	c0de30c0 <tEdwards_scalarMul_bn>
c0de2004:	2800      	cmp	r0, #0
c0de2006:	d1a7      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2008:	a982      	add	r1, sp, #520	@ 0x208
c0de200a:	4628      	mov	r0, r5
c0de200c:	f000 fff9 	bl	c0de3002 <tEdwards_normalize>
c0de2010:	2800      	cmp	r0, #0
c0de2012:	d1a1      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2014:	f10b 0320 	add.w	r3, fp, #32
c0de2018:	a982      	add	r1, sp, #520	@ 0x208
c0de201a:	4628      	mov	r0, r5
c0de201c:	465a      	mov	r2, fp
c0de201e:	f000 ffca 	bl	c0de2fb6 <tEdwards_export>
c0de2022:	2800      	cmp	r0, #0
c0de2024:	d198      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2026:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de2028:	a952      	add	r1, sp, #328	@ 0x148
c0de202a:	2220      	movs	r2, #32
c0de202c:	f009 fb6e 	bl	c0deb70c <cx_bn_export>
c0de2030:	2800      	cmp	r0, #0
c0de2032:	d191      	bne.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2034:	a888      	add	r0, sp, #544	@ 0x220
c0de2036:	f009 fb35 	bl	c0deb6a4 <cx_bn_destroy>
c0de203a:	2800      	cmp	r0, #0
c0de203c:	f47f af8c 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2040:	a889      	add	r0, sp, #548	@ 0x224
c0de2042:	f009 fb2f 	bl	c0deb6a4 <cx_bn_destroy>
c0de2046:	2800      	cmp	r0, #0
c0de2048:	f47f af86 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de204c:	a887      	add	r0, sp, #540	@ 0x21c
c0de204e:	f009 fb29 	bl	c0deb6a4 <cx_bn_destroy>
c0de2052:	2800      	cmp	r0, #0
c0de2054:	f47f af80 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2058:	4628      	mov	r0, r5
c0de205a:	f000 ff50 	bl	c0de2efe <tEdwards_Curve_partial_destroy>
c0de205e:	2800      	cmp	r0, #0
c0de2060:	f47f af7a 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2064:	f105 0420 	add.w	r4, r5, #32
c0de2068:	a88a      	add	r0, sp, #552	@ 0x228
c0de206a:	f000 f8a5 	bl	c0de21b8 <OUTLINED_FUNCTION_0>
c0de206e:	2800      	cmp	r0, #0
c0de2070:	f47f af72 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2074:	201f      	movs	r0, #31
c0de2076:	a962      	add	r1, sp, #392	@ 0x188
c0de2078:	1c42      	adds	r2, r0, #1
c0de207a:	d004      	beq.n	c0de2086 <EddsaPoseidon_Sign_final+0x172>
c0de207c:	5c3a      	ldrb	r2, [r7, r0]
c0de207e:	3801      	subs	r0, #1
c0de2080:	f801 2b01 	strb.w	r2, [r1], #1
c0de2084:	e7f8      	b.n	c0de2078 <EddsaPoseidon_Sign_final+0x164>
c0de2086:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de2088:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de208a:	f009 fb2b 	bl	c0deb6e4 <cx_bn_copy>
c0de208e:	2800      	cmp	r0, #0
c0de2090:	f47f af62 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2094:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de2096:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de2098:	f009 fb24 	bl	c0deb6e4 <cx_bn_copy>
c0de209c:	2800      	cmp	r0, #0
c0de209e:	f47f af5b 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de20a2:	f8da 1000 	ldr.w	r1, [sl]
c0de20a6:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de20a8:	f009 fb1c 	bl	c0deb6e4 <cx_bn_copy>
c0de20ac:	2800      	cmp	r0, #0
c0de20ae:	f47f af53 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de20b2:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de20b6:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de20b8:	f009 fb14 	bl	c0deb6e4 <cx_bn_copy>
c0de20bc:	2800      	cmp	r0, #0
c0de20be:	f47f af4b 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de20c2:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de20c4:	a962      	add	r1, sp, #392	@ 0x188
c0de20c6:	2220      	movs	r2, #32
c0de20c8:	f009 fb00 	bl	c0deb6cc <cx_bn_init>
c0de20cc:	2800      	cmp	r0, #0
c0de20ce:	f47f af43 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de20d2:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de20d4:	4622      	mov	r2, r4
c0de20d6:	4601      	mov	r1, r0
c0de20d8:	f009 fba2 	bl	c0deb820 <cx_mont_to_montgomery>
c0de20dc:	2800      	cmp	r0, #0
c0de20de:	f47f af3b 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de20e2:	a982      	add	r1, sp, #520	@ 0x208
c0de20e4:	4628      	mov	r0, r5
c0de20e6:	f000 fc70 	bl	c0de29ca <tEdwards_destroy>
c0de20ea:	2800      	cmp	r0, #0
c0de20ec:	f47f af34 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de20f0:	a885      	add	r0, sp, #532	@ 0x214
c0de20f2:	2120      	movs	r1, #32
c0de20f4:	f009 fac0 	bl	c0deb678 <cx_bn_alloc>
c0de20f8:	2800      	cmp	r0, #0
c0de20fa:	f47f af2d 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de20fe:	a88a      	add	r0, sp, #552	@ 0x228
c0de2100:	aa85      	add	r2, sp, #532	@ 0x214
c0de2102:	2100      	movs	r1, #0
c0de2104:	2301      	movs	r3, #1
c0de2106:	f001 f9cd 	bl	c0de34a4 <Poseidon>
c0de210a:	2800      	cmp	r0, #0
c0de210c:	f47f af24 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2110:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2112:	4622      	mov	r2, r4
c0de2114:	4601      	mov	r1, r0
c0de2116:	f009 fb8f 	bl	c0deb838 <cx_mont_from_montgomery>
c0de211a:	2800      	cmp	r0, #0
c0de211c:	f47f af1c 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2120:	a886      	add	r0, sp, #536	@ 0x218
c0de2122:	aa5a      	add	r2, sp, #360	@ 0x168
c0de2124:	2120      	movs	r1, #32
c0de2126:	2320      	movs	r3, #32
c0de2128:	f009 fab0 	bl	c0deb68c <cx_bn_alloc_init>
c0de212c:	2800      	cmp	r0, #0
c0de212e:	f47f af13 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2132:	a801      	add	r0, sp, #4
c0de2134:	2120      	movs	r1, #32
c0de2136:	f009 fa9f 	bl	c0deb678 <cx_bn_alloc>
c0de213a:	2800      	cmp	r0, #0
c0de213c:	f47f af0c 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2140:	f108 0220 	add.w	r2, r8, #32
c0de2144:	a888      	add	r0, sp, #544	@ 0x220
c0de2146:	2120      	movs	r1, #32
c0de2148:	2320      	movs	r3, #32
c0de214a:	f009 fa9f 	bl	c0deb68c <cx_bn_alloc_init>
c0de214e:	2800      	cmp	r0, #0
c0de2150:	f47f af02 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2154:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de2156:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de215a:	9801      	ldr	r0, [sp, #4]
c0de215c:	f009 fb1e 	bl	c0deb79c <cx_bn_mod_mul>
c0de2160:	2800      	cmp	r0, #0
c0de2162:	f47f aef9 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2166:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2168:	a952      	add	r1, sp, #328	@ 0x148
c0de216a:	2220      	movs	r2, #32
c0de216c:	f009 faae 	bl	c0deb6cc <cx_bn_init>
c0de2170:	2800      	cmp	r0, #0
c0de2172:	f47f aef1 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2176:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de2178:	9a01      	ldr	r2, [sp, #4]
c0de217a:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de217e:	f009 faf5 	bl	c0deb76c <cx_bn_mod_add>
c0de2182:	2800      	cmp	r0, #0
c0de2184:	f47f aee8 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2188:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de218a:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de218e:	f009 fb11 	bl	c0deb7b4 <cx_bn_reduce>
c0de2192:	2800      	cmp	r0, #0
c0de2194:	f47f aee0 	bne.w	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de2198:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de219a:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de219e:	2220      	movs	r2, #32
c0de21a0:	f009 fab4 	bl	c0deb70c <cx_bn_export>
c0de21a4:	e6d8      	b.n	c0de1f58 <EddsaPoseidon_Sign_final+0x44>
c0de21a6:	bf00      	nop
c0de21a8:	5a4b4e03 	.word	0x5a4b4e03
c0de21ac:	0000c26e 	.word	0x0000c26e

c0de21b0 <rev64>:
c0de21b0:	ba0a      	rev	r2, r1
c0de21b2:	ba01      	rev	r1, r0
c0de21b4:	4610      	mov	r0, r2
c0de21b6:	4770      	bx	lr

c0de21b8 <OUTLINED_FUNCTION_0>:
c0de21b8:	2105      	movs	r1, #5
c0de21ba:	2205      	movs	r2, #5
c0de21bc:	4623      	mov	r3, r4
c0de21be:	f001 b90b 	b.w	c0de33d8 <Poseidon_alloc_init>

c0de21c2 <zkn_frost_interpolate>:
c0de21c2:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de21c6:	b085      	sub	sp, #20
c0de21c8:	460e      	mov	r6, r1
c0de21ca:	4607      	mov	r7, r0
c0de21cc:	a803      	add	r0, sp, #12
c0de21ce:	2120      	movs	r1, #32
c0de21d0:	f000 fbda 	bl	c0de2988 <OUTLINED_FUNCTION_4>
c0de21d4:	b988      	cbnz	r0, c0de21fa <zkn_frost_interpolate+0x38>
c0de21d6:	a802      	add	r0, sp, #8
c0de21d8:	f000 fbcf 	bl	c0de297a <OUTLINED_FUNCTION_2>
c0de21dc:	b968      	cbnz	r0, c0de21fa <zkn_frost_interpolate+0x38>
c0de21de:	a801      	add	r0, sp, #4
c0de21e0:	f000 fbcb 	bl	c0de297a <OUTLINED_FUNCTION_2>
c0de21e4:	b948      	cbnz	r0, c0de21fa <zkn_frost_interpolate+0x38>
c0de21e6:	9803      	ldr	r0, [sp, #12]
c0de21e8:	2101      	movs	r1, #1
c0de21ea:	f009 fa85 	bl	c0deb6f8 <cx_bn_set_u32>
c0de21ee:	b920      	cbnz	r0, c0de21fa <zkn_frost_interpolate+0x38>
c0de21f0:	9802      	ldr	r0, [sp, #8]
c0de21f2:	2101      	movs	r1, #1
c0de21f4:	f009 fa80 	bl	c0deb6f8 <cx_bn_set_u32>
c0de21f8:	b110      	cbz	r0, c0de2200 <zkn_frost_interpolate+0x3e>
c0de21fa:	b005      	add	sp, #20
c0de21fc:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de2200:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de2204:	f10d 0a10 	add.w	sl, sp, #16
c0de2208:	b31e      	cbz	r6, c0de2252 <zkn_frost_interpolate+0x90>
c0de220a:	6838      	ldr	r0, [r7, #0]
c0de220c:	4629      	mov	r1, r5
c0de220e:	4652      	mov	r2, sl
c0de2210:	f009 fa88 	bl	c0deb724 <cx_bn_cmp>
c0de2214:	2800      	cmp	r0, #0
c0de2216:	d1f0      	bne.n	c0de21fa <zkn_frost_interpolate+0x38>
c0de2218:	9804      	ldr	r0, [sp, #16]
c0de221a:	b1b8      	cbz	r0, c0de224c <zkn_frost_interpolate+0x8a>
c0de221c:	9802      	ldr	r0, [sp, #8]
c0de221e:	683a      	ldr	r2, [r7, #0]
c0de2220:	4623      	mov	r3, r4
c0de2222:	4601      	mov	r1, r0
c0de2224:	f009 faba 	bl	c0deb79c <cx_bn_mod_mul>
c0de2228:	2800      	cmp	r0, #0
c0de222a:	d1e6      	bne.n	c0de21fa <zkn_frost_interpolate+0x38>
c0de222c:	6839      	ldr	r1, [r7, #0]
c0de222e:	9801      	ldr	r0, [sp, #4]
c0de2230:	462a      	mov	r2, r5
c0de2232:	4623      	mov	r3, r4
c0de2234:	f009 faa6 	bl	c0deb784 <cx_bn_mod_sub>
c0de2238:	2800      	cmp	r0, #0
c0de223a:	d1de      	bne.n	c0de21fa <zkn_frost_interpolate+0x38>
c0de223c:	9803      	ldr	r0, [sp, #12]
c0de223e:	9a01      	ldr	r2, [sp, #4]
c0de2240:	4623      	mov	r3, r4
c0de2242:	4601      	mov	r1, r0
c0de2244:	f009 faaa 	bl	c0deb79c <cx_bn_mod_mul>
c0de2248:	2800      	cmp	r0, #0
c0de224a:	d1d6      	bne.n	c0de21fa <zkn_frost_interpolate+0x38>
c0de224c:	3704      	adds	r7, #4
c0de224e:	3e01      	subs	r6, #1
c0de2250:	e7da      	b.n	c0de2208 <zkn_frost_interpolate+0x46>
c0de2252:	9903      	ldr	r1, [sp, #12]
c0de2254:	4640      	mov	r0, r8
c0de2256:	4622      	mov	r2, r4
c0de2258:	f009 fab8 	bl	c0deb7cc <cx_bn_mod_invert_nprime>
c0de225c:	2800      	cmp	r0, #0
c0de225e:	d1cc      	bne.n	c0de21fa <zkn_frost_interpolate+0x38>
c0de2260:	9a02      	ldr	r2, [sp, #8]
c0de2262:	4640      	mov	r0, r8
c0de2264:	4641      	mov	r1, r8
c0de2266:	4623      	mov	r3, r4
c0de2268:	f009 fa98 	bl	c0deb79c <cx_bn_mod_mul>
c0de226c:	2800      	cmp	r0, #0
c0de226e:	d1c4      	bne.n	c0de21fa <zkn_frost_interpolate+0x38>
c0de2270:	a803      	add	r0, sp, #12
c0de2272:	f009 fa17 	bl	c0deb6a4 <cx_bn_destroy>
c0de2276:	2800      	cmp	r0, #0
c0de2278:	d1bf      	bne.n	c0de21fa <zkn_frost_interpolate+0x38>
c0de227a:	a802      	add	r0, sp, #8
c0de227c:	f009 fa12 	bl	c0deb6a4 <cx_bn_destroy>
c0de2280:	e7bb      	b.n	c0de21fa <zkn_frost_interpolate+0x38>

c0de2282 <zkn_frost_interpolate_secrets>:
c0de2282:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de2286:	460f      	mov	r7, r1
c0de2288:	4606      	mov	r6, r0
c0de228a:	a802      	add	r0, sp, #8
c0de228c:	2120      	movs	r1, #32
c0de228e:	461c      	mov	r4, r3
c0de2290:	4692      	mov	sl, r2
c0de2292:	f009 f9f1 	bl	c0deb678 <cx_bn_alloc>
c0de2296:	b108      	cbz	r0, c0de229c <zkn_frost_interpolate_secrets+0x1a>
c0de2298:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de229c:	a801      	add	r0, sp, #4
c0de229e:	f000 fb6c 	bl	c0de297a <OUTLINED_FUNCTION_2>
c0de22a2:	2800      	cmp	r0, #0
c0de22a4:	d1f8      	bne.n	c0de2298 <zkn_frost_interpolate_secrets+0x16>
c0de22a6:	9802      	ldr	r0, [sp, #8]
c0de22a8:	2100      	movs	r1, #0
c0de22aa:	f009 fa25 	bl	c0deb6f8 <cx_bn_set_u32>
c0de22ae:	2800      	cmp	r0, #0
c0de22b0:	d1f2      	bne.n	c0de2298 <zkn_frost_interpolate_secrets+0x16>
c0de22b2:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de22b6:	2500      	movs	r5, #0
c0de22b8:	42ac      	cmp	r4, r5
c0de22ba:	d01d      	beq.n	c0de22f8 <zkn_frost_interpolate_secrets+0x76>
c0de22bc:	9801      	ldr	r0, [sp, #4]
c0de22be:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de22c2:	68b3      	ldr	r3, [r6, #8]
c0de22c4:	4621      	mov	r1, r4
c0de22c6:	9000      	str	r0, [sp, #0]
c0de22c8:	4638      	mov	r0, r7
c0de22ca:	f7ff ff7a 	bl	c0de21c2 <zkn_frost_interpolate>
c0de22ce:	2800      	cmp	r0, #0
c0de22d0:	d1e2      	bne.n	c0de2298 <zkn_frost_interpolate_secrets+0x16>
c0de22d2:	9801      	ldr	r0, [sp, #4]
c0de22d4:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de22d8:	68b3      	ldr	r3, [r6, #8]
c0de22da:	4601      	mov	r1, r0
c0de22dc:	f009 fa5e 	bl	c0deb79c <cx_bn_mod_mul>
c0de22e0:	2800      	cmp	r0, #0
c0de22e2:	d1d9      	bne.n	c0de2298 <zkn_frost_interpolate_secrets+0x16>
c0de22e4:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de22e8:	68b3      	ldr	r3, [r6, #8]
c0de22ea:	4601      	mov	r1, r0
c0de22ec:	f009 fa3e 	bl	c0deb76c <cx_bn_mod_add>
c0de22f0:	3501      	adds	r5, #1
c0de22f2:	2800      	cmp	r0, #0
c0de22f4:	d0e0      	beq.n	c0de22b8 <zkn_frost_interpolate_secrets+0x36>
c0de22f6:	e7cf      	b.n	c0de2298 <zkn_frost_interpolate_secrets+0x16>
c0de22f8:	68b2      	ldr	r2, [r6, #8]
c0de22fa:	9902      	ldr	r1, [sp, #8]
c0de22fc:	4640      	mov	r0, r8
c0de22fe:	f009 fa59 	bl	c0deb7b4 <cx_bn_reduce>
c0de2302:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de2306 <zkn_evalshare>:
c0de2306:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de230a:	460e      	mov	r6, r1
c0de230c:	6801      	ldr	r1, [r0, #0]
c0de230e:	4607      	mov	r7, r0
c0de2310:	a801      	add	r0, sp, #4
c0de2312:	f000 fb39 	bl	c0de2988 <OUTLINED_FUNCTION_4>
c0de2316:	b108      	cbz	r0, c0de231c <zkn_evalshare+0x16>
c0de2318:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de231c:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2320:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2324:	4640      	mov	r0, r8
c0de2326:	f009 f9dd 	bl	c0deb6e4 <cx_bn_copy>
c0de232a:	2800      	cmp	r0, #0
c0de232c:	d1f4      	bne.n	c0de2318 <zkn_evalshare+0x12>
c0de232e:	3e04      	subs	r6, #4
c0de2330:	68bb      	ldr	r3, [r7, #8]
c0de2332:	9801      	ldr	r0, [sp, #4]
c0de2334:	4641      	mov	r1, r8
c0de2336:	b17d      	cbz	r5, c0de2358 <zkn_evalshare+0x52>
c0de2338:	4622      	mov	r2, r4
c0de233a:	f009 fa2f 	bl	c0deb79c <cx_bn_mod_mul>
c0de233e:	2800      	cmp	r0, #0
c0de2340:	d1ea      	bne.n	c0de2318 <zkn_evalshare+0x12>
c0de2342:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de2346:	68bb      	ldr	r3, [r7, #8]
c0de2348:	9901      	ldr	r1, [sp, #4]
c0de234a:	4640      	mov	r0, r8
c0de234c:	f009 fa0e 	bl	c0deb76c <cx_bn_mod_add>
c0de2350:	3d01      	subs	r5, #1
c0de2352:	2800      	cmp	r0, #0
c0de2354:	d0ec      	beq.n	c0de2330 <zkn_evalshare+0x2a>
c0de2356:	e7df      	b.n	c0de2318 <zkn_evalshare+0x12>
c0de2358:	461a      	mov	r2, r3
c0de235a:	f009 fa2b 	bl	c0deb7b4 <cx_bn_reduce>
c0de235e:	2800      	cmp	r0, #0
c0de2360:	d1da      	bne.n	c0de2318 <zkn_evalshare+0x12>
c0de2362:	9901      	ldr	r1, [sp, #4]
c0de2364:	4640      	mov	r0, r8
c0de2366:	f009 f9bd 	bl	c0deb6e4 <cx_bn_copy>
c0de236a:	2800      	cmp	r0, #0
c0de236c:	d1d4      	bne.n	c0de2318 <zkn_evalshare+0x12>
c0de236e:	a801      	add	r0, sp, #4
c0de2370:	f009 f998 	bl	c0deb6a4 <cx_bn_destroy>
c0de2374:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de2378 <zkn_frost_nonce_generate>:
c0de2378:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de237a:	b091      	sub	sp, #68	@ 0x44
c0de237c:	af01      	add	r7, sp, #4
c0de237e:	460e      	mov	r6, r1
c0de2380:	4605      	mov	r5, r0
c0de2382:	2120      	movs	r1, #32
c0de2384:	4614      	mov	r4, r2
c0de2386:	4638      	mov	r0, r7
c0de2388:	f008 fef2 	bl	c0deb170 <cx_rng_no_throw>
c0de238c:	f107 0020 	add.w	r0, r7, #32
c0de2390:	4631      	mov	r1, r6
c0de2392:	2220      	movs	r2, #32
c0de2394:	f009 fb50 	bl	c0deba38 <__aeabi_memcpy>
c0de2398:	6829      	ldr	r1, [r5, #0]
c0de239a:	4668      	mov	r0, sp
c0de239c:	f009 f96c 	bl	c0deb678 <cx_bn_alloc>
c0de23a0:	b978      	cbnz	r0, c0de23c2 <zkn_frost_nonce_generate+0x4a>
c0de23a2:	68aa      	ldr	r2, [r5, #8]
c0de23a4:	9b00      	ldr	r3, [sp, #0]
c0de23a6:	a801      	add	r0, sp, #4
c0de23a8:	2140      	movs	r1, #64	@ 0x40
c0de23aa:	f001 f9a5 	bl	c0de36f8 <Babyfrost_H3>
c0de23ae:	b940      	cbnz	r0, c0de23c2 <zkn_frost_nonce_generate+0x4a>
c0de23b0:	682a      	ldr	r2, [r5, #0]
c0de23b2:	9800      	ldr	r0, [sp, #0]
c0de23b4:	4621      	mov	r1, r4
c0de23b6:	f009 f9a9 	bl	c0deb70c <cx_bn_export>
c0de23ba:	b910      	cbnz	r0, c0de23c2 <zkn_frost_nonce_generate+0x4a>
c0de23bc:	4668      	mov	r0, sp
c0de23be:	f009 f971 	bl	c0deb6a4 <cx_bn_destroy>
c0de23c2:	b011      	add	sp, #68	@ 0x44
c0de23c4:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de23c6 <zkn_frost_commit>:
c0de23c6:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de23ca:	461d      	mov	r5, r3
c0de23cc:	4617      	mov	r7, r2
c0de23ce:	460e      	mov	r6, r1
c0de23d0:	4604      	mov	r4, r0
c0de23d2:	f7ff ffd1 	bl	c0de2378 <zkn_frost_nonce_generate>
c0de23d6:	b9f8      	cbnz	r0, c0de2418 <zkn_frost_commit+0x52>
c0de23d8:	f107 0a20 	add.w	sl, r7, #32
c0de23dc:	4620      	mov	r0, r4
c0de23de:	4631      	mov	r1, r6
c0de23e0:	4652      	mov	r2, sl
c0de23e2:	f7ff ffc9 	bl	c0de2378 <zkn_frost_nonce_generate>
c0de23e6:	b9b8      	cbnz	r0, c0de2418 <zkn_frost_commit+0x52>
c0de23e8:	46a0      	mov	r8, r4
c0de23ea:	4620      	mov	r0, r4
c0de23ec:	463a      	mov	r2, r7
c0de23ee:	f858 3b0c 	ldr.w	r3, [r8], #12
c0de23f2:	9500      	str	r5, [sp, #0]
c0de23f4:	4641      	mov	r1, r8
c0de23f6:	f000 fec9 	bl	c0de318c <tEdwards_scalarMul>
c0de23fa:	b968      	cbnz	r0, c0de2418 <zkn_frost_commit+0x52>
c0de23fc:	4620      	mov	r0, r4
c0de23fe:	4629      	mov	r1, r5
c0de2400:	f000 fdff 	bl	c0de3002 <tEdwards_normalize>
c0de2404:	b940      	cbnz	r0, c0de2418 <zkn_frost_commit+0x52>
c0de2406:	6823      	ldr	r3, [r4, #0]
c0de2408:	350c      	adds	r5, #12
c0de240a:	4620      	mov	r0, r4
c0de240c:	4641      	mov	r1, r8
c0de240e:	4652      	mov	r2, sl
c0de2410:	9500      	str	r5, [sp, #0]
c0de2412:	f000 febb 	bl	c0de318c <tEdwards_scalarMul>
c0de2416:	b108      	cbz	r0, c0de241c <zkn_frost_commit+0x56>
c0de2418:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de241c:	4620      	mov	r0, r4
c0de241e:	4629      	mov	r1, r5
c0de2420:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2424:	f000 bded 	b.w	c0de3002 <tEdwards_normalize>

c0de2428 <zkn_encode_group_commitmentHash>:
c0de2428:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de242c:	b0d6      	sub	sp, #344	@ 0x158
c0de242e:	4606      	mov	r6, r0
c0de2430:	a816      	add	r0, sp, #88	@ 0x58
c0de2432:	461c      	mov	r4, r3
c0de2434:	4615      	mov	r5, r2
c0de2436:	460f      	mov	r7, r1
c0de2438:	f001 f9be 	bl	c0de37b8 <zkn_frost_H5_init>
c0de243c:	b110      	cbz	r0, c0de2444 <zkn_encode_group_commitmentHash+0x1c>
c0de243e:	b056      	add	sp, #344	@ 0x158
c0de2440:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2444:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de2448:	9401      	str	r4, [sp, #4]
c0de244a:	a806      	add	r0, sp, #24
c0de244c:	f04f 0a00 	mov.w	sl, #0
c0de2450:	f04f 0b02 	mov.w	fp, #2
c0de2454:	2604      	movs	r6, #4
c0de2456:	2400      	movs	r4, #0
c0de2458:	9502      	str	r5, [sp, #8]
c0de245a:	f1a0 0801 	sub.w	r8, r0, #1
c0de245e:	42ac      	cmp	r4, r5
c0de2460:	d058      	beq.n	c0de2514 <zkn_encode_group_commitmentHash+0xec>
c0de2462:	9805      	ldr	r0, [sp, #20]
c0de2464:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de2468:	9103      	str	r1, [sp, #12]
c0de246a:	6805      	ldr	r5, [r0, #0]
c0de246c:	9804      	ldr	r0, [sp, #16]
c0de246e:	fb05 000a 	mla	r0, r5, sl, r0
c0de2472:	4629      	mov	r1, r5
c0de2474:	b129      	cbz	r1, c0de2482 <zkn_encode_group_commitmentHash+0x5a>
c0de2476:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de247a:	f808 2001 	strb.w	r2, [r8, r1]
c0de247e:	3901      	subs	r1, #1
c0de2480:	e7f8      	b.n	c0de2474 <zkn_encode_group_commitmentHash+0x4c>
c0de2482:	a816      	add	r0, sp, #88	@ 0x58
c0de2484:	a906      	add	r1, sp, #24
c0de2486:	462a      	mov	r2, r5
c0de2488:	f001 f9b0 	bl	c0de37ec <zkn_frost_hash_update>
c0de248c:	2800      	cmp	r0, #0
c0de248e:	d1d6      	bne.n	c0de243e <zkn_encode_group_commitmentHash+0x16>
c0de2490:	9803      	ldr	r0, [sp, #12]
c0de2492:	9f04      	ldr	r7, [sp, #16]
c0de2494:	1c43      	adds	r3, r0, #1
c0de2496:	9805      	ldr	r0, [sp, #20]
c0de2498:	fb05 710b 	mla	r1, r5, fp, r7
c0de249c:	6802      	ldr	r2, [r0, #0]
c0de249e:	1e50      	subs	r0, r2, #1
c0de24a0:	4615      	mov	r5, r2
c0de24a2:	fb02 0303 	mla	r3, r2, r3, r0
c0de24a6:	5cfb      	ldrb	r3, [r7, r3]
c0de24a8:	b12d      	cbz	r5, c0de24b6 <zkn_encode_group_commitmentHash+0x8e>
c0de24aa:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de24ae:	f808 7005 	strb.w	r7, [r8, r5]
c0de24b2:	3d01      	subs	r5, #1
c0de24b4:	e7f8      	b.n	c0de24a8 <zkn_encode_group_commitmentHash+0x80>
c0de24b6:	a906      	add	r1, sp, #24
c0de24b8:	5c0d      	ldrb	r5, [r1, r0]
c0de24ba:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de24be:	540b      	strb	r3, [r1, r0]
c0de24c0:	a816      	add	r0, sp, #88	@ 0x58
c0de24c2:	f001 f993 	bl	c0de37ec <zkn_frost_hash_update>
c0de24c6:	2800      	cmp	r0, #0
c0de24c8:	d1b9      	bne.n	c0de243e <zkn_encode_group_commitmentHash+0x16>
c0de24ca:	9805      	ldr	r0, [sp, #20]
c0de24cc:	9d04      	ldr	r5, [sp, #16]
c0de24ce:	6802      	ldr	r2, [r0, #0]
c0de24d0:	9803      	ldr	r0, [sp, #12]
c0de24d2:	1cc3      	adds	r3, r0, #3
c0de24d4:	1e50      	subs	r0, r2, #1
c0de24d6:	fb02 5106 	mla	r1, r2, r6, r5
c0de24da:	fb02 0303 	mla	r3, r2, r3, r0
c0de24de:	5ceb      	ldrb	r3, [r5, r3]
c0de24e0:	4615      	mov	r5, r2
c0de24e2:	b12d      	cbz	r5, c0de24f0 <zkn_encode_group_commitmentHash+0xc8>
c0de24e4:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de24e8:	f808 7005 	strb.w	r7, [r8, r5]
c0de24ec:	3d01      	subs	r5, #1
c0de24ee:	e7f8      	b.n	c0de24e2 <zkn_encode_group_commitmentHash+0xba>
c0de24f0:	a906      	add	r1, sp, #24
c0de24f2:	5c0d      	ldrb	r5, [r1, r0]
c0de24f4:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de24f8:	540b      	strb	r3, [r1, r0]
c0de24fa:	a816      	add	r0, sp, #88	@ 0x58
c0de24fc:	f001 f976 	bl	c0de37ec <zkn_frost_hash_update>
c0de2500:	3605      	adds	r6, #5
c0de2502:	3401      	adds	r4, #1
c0de2504:	9d02      	ldr	r5, [sp, #8]
c0de2506:	f10b 0b05 	add.w	fp, fp, #5
c0de250a:	f10a 0a05 	add.w	sl, sl, #5
c0de250e:	2800      	cmp	r0, #0
c0de2510:	d0a5      	beq.n	c0de245e <zkn_encode_group_commitmentHash+0x36>
c0de2512:	e794      	b.n	c0de243e <zkn_encode_group_commitmentHash+0x16>
c0de2514:	9805      	ldr	r0, [sp, #20]
c0de2516:	6881      	ldr	r1, [r0, #8]
c0de2518:	a816      	add	r0, sp, #88	@ 0x58
c0de251a:	9a01      	ldr	r2, [sp, #4]
c0de251c:	f001 f968 	bl	c0de37f0 <zkn_frost_hash_final>
c0de2520:	e78d      	b.n	c0de243e <zkn_encode_group_commitmentHash+0x16>

c0de2522 <zkn_compute_group_commitment>:
c0de2522:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2526:	b088      	sub	sp, #32
c0de2528:	460d      	mov	r5, r1
c0de252a:	a905      	add	r1, sp, #20
c0de252c:	461f      	mov	r7, r3
c0de252e:	4693      	mov	fp, r2
c0de2530:	4604      	mov	r4, r0
c0de2532:	f000 fa35 	bl	c0de29a0 <tEdwards_alloc>
c0de2536:	b948      	cbnz	r0, c0de254c <zkn_compute_group_commitment+0x2a>
c0de2538:	a902      	add	r1, sp, #8
c0de253a:	4620      	mov	r0, r4
c0de253c:	f000 fa30 	bl	c0de29a0 <tEdwards_alloc>
c0de2540:	b920      	cbnz	r0, c0de254c <zkn_compute_group_commitment+0x2a>
c0de2542:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2544:	4620      	mov	r0, r4
c0de2546:	f000 fd23 	bl	c0de2f90 <tEdwards_SetNeutral>
c0de254a:	b110      	cbz	r0, c0de2552 <zkn_compute_group_commitment+0x30>
c0de254c:	b008      	add	sp, #32
c0de254e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2552:	ae05      	add	r6, sp, #20
c0de2554:	f04f 0800 	mov.w	r8, #0
c0de2558:	f04f 0a04 	mov.w	sl, #4
c0de255c:	9501      	str	r5, [sp, #4]
c0de255e:	4547      	cmp	r7, r8
c0de2560:	d041      	beq.n	c0de25e6 <zkn_compute_group_commitment+0xc4>
c0de2562:	6822      	ldr	r2, [r4, #0]
c0de2564:	f1aa 0003 	sub.w	r0, sl, #3
c0de2568:	4633      	mov	r3, r6
c0de256a:	fb02 5100 	mla	r1, r2, r0, r5
c0de256e:	f1aa 0002 	sub.w	r0, sl, #2
c0de2572:	fb02 5200 	mla	r2, r2, r0, r5
c0de2576:	4620      	mov	r0, r4
c0de2578:	f000 fc82 	bl	c0de2e80 <tEdwards_init>
c0de257c:	2800      	cmp	r0, #0
c0de257e:	d1e5      	bne.n	c0de254c <zkn_compute_group_commitment+0x2a>
c0de2580:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2582:	4620      	mov	r0, r4
c0de2584:	4632      	mov	r2, r6
c0de2586:	460b      	mov	r3, r1
c0de2588:	f000 fa9b 	bl	c0de2ac2 <tEdwards_add>
c0de258c:	2800      	cmp	r0, #0
c0de258e:	d1dd      	bne.n	c0de254c <zkn_compute_group_commitment+0x2a>
c0de2590:	6822      	ldr	r2, [r4, #0]
c0de2592:	f1aa 0001 	sub.w	r0, sl, #1
c0de2596:	4633      	mov	r3, r6
c0de2598:	fb02 5100 	mla	r1, r2, r0, r5
c0de259c:	fb02 520a 	mla	r2, r2, sl, r5
c0de25a0:	4620      	mov	r0, r4
c0de25a2:	f000 fc6d 	bl	c0de2e80 <tEdwards_init>
c0de25a6:	2800      	cmp	r0, #0
c0de25a8:	d1d0      	bne.n	c0de254c <zkn_compute_group_commitment+0x2a>
c0de25aa:	6823      	ldr	r3, [r4, #0]
c0de25ac:	4658      	mov	r0, fp
c0de25ae:	f10d 0b08 	add.w	fp, sp, #8
c0de25b2:	4631      	mov	r1, r6
c0de25b4:	4605      	mov	r5, r0
c0de25b6:	f8cd b000 	str.w	fp, [sp]
c0de25ba:	fb03 0208 	mla	r2, r3, r8, r0
c0de25be:	4620      	mov	r0, r4
c0de25c0:	f000 fde4 	bl	c0de318c <tEdwards_scalarMul>
c0de25c4:	2800      	cmp	r0, #0
c0de25c6:	d1c1      	bne.n	c0de254c <zkn_compute_group_commitment+0x2a>
c0de25c8:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de25ca:	4620      	mov	r0, r4
c0de25cc:	465a      	mov	r2, fp
c0de25ce:	460b      	mov	r3, r1
c0de25d0:	f000 fa77 	bl	c0de2ac2 <tEdwards_add>
c0de25d4:	46ab      	mov	fp, r5
c0de25d6:	9d01      	ldr	r5, [sp, #4]
c0de25d8:	f10a 0a05 	add.w	sl, sl, #5
c0de25dc:	f108 0801 	add.w	r8, r8, #1
c0de25e0:	2800      	cmp	r0, #0
c0de25e2:	d0bc      	beq.n	c0de255e <zkn_compute_group_commitment+0x3c>
c0de25e4:	e7b2      	b.n	c0de254c <zkn_compute_group_commitment+0x2a>
c0de25e6:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de25e8:	4620      	mov	r0, r4
c0de25ea:	f000 fd0a 	bl	c0de3002 <tEdwards_normalize>
c0de25ee:	2800      	cmp	r0, #0
c0de25f0:	d1ac      	bne.n	c0de254c <zkn_compute_group_commitment+0x2a>
c0de25f2:	a905      	add	r1, sp, #20
c0de25f4:	f000 f9d1 	bl	c0de299a <OUTLINED_FUNCTION_6>
c0de25f8:	2800      	cmp	r0, #0
c0de25fa:	d1a7      	bne.n	c0de254c <zkn_compute_group_commitment+0x2a>
c0de25fc:	a902      	add	r1, sp, #8
c0de25fe:	f000 f9cc 	bl	c0de299a <OUTLINED_FUNCTION_6>
c0de2602:	e7a3      	b.n	c0de254c <zkn_compute_group_commitment+0x2a>

c0de2604 <zkn_compute_binding_factors>:
c0de2604:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2608:	b0f4      	sub	sp, #464	@ 0x1d0
c0de260a:	460e      	mov	r6, r1
c0de260c:	6801      	ldr	r1, [r0, #0]
c0de260e:	4607      	mov	r7, r0
c0de2610:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2612:	f000 f9b9 	bl	c0de2988 <OUTLINED_FUNCTION_4>
c0de2616:	b9f0      	cbnz	r0, c0de2656 <zkn_compute_binding_factors+0x52>
c0de2618:	6839      	ldr	r1, [r7, #0]
c0de261a:	a872      	add	r0, sp, #456	@ 0x1c8
c0de261c:	f009 f82c 	bl	c0deb678 <cx_bn_alloc>
c0de2620:	b9c8      	cbnz	r0, c0de2656 <zkn_compute_binding_factors+0x52>
c0de2622:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de2626:	68ba      	ldr	r2, [r7, #8]
c0de2628:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de262a:	f001 f879 	bl	c0de3720 <Babyfrost_H4>
c0de262e:	b990      	cbnz	r0, c0de2656 <zkn_compute_binding_factors+0x52>
c0de2630:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de2632:	4638      	mov	r0, r7
c0de2634:	4629      	mov	r1, r5
c0de2636:	4622      	mov	r2, r4
c0de2638:	f7ff fef6 	bl	c0de2428 <zkn_encode_group_commitmentHash>
c0de263c:	b958      	cbnz	r0, c0de2656 <zkn_compute_binding_factors+0x52>
c0de263e:	683a      	ldr	r2, [r7, #0]
c0de2640:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de2642:	a912      	add	r1, sp, #72	@ 0x48
c0de2644:	f009 f862 	bl	c0deb70c <cx_bn_export>
c0de2648:	b928      	cbnz	r0, c0de2656 <zkn_compute_binding_factors+0x52>
c0de264a:	683a      	ldr	r2, [r7, #0]
c0de264c:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de264e:	a902      	add	r1, sp, #8
c0de2650:	f009 f85c 	bl	c0deb70c <cx_bn_export>
c0de2654:	b110      	cbz	r0, c0de265c <zkn_compute_binding_factors+0x58>
c0de2656:	b074      	add	sp, #464	@ 0x1d0
c0de2658:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de265c:	2000      	movs	r0, #0
c0de265e:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de2662:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de2666:	f04f 0800 	mov.w	r8, #0
c0de266a:	9000      	str	r0, [sp, #0]
c0de266c:	4544      	cmp	r4, r8
c0de266e:	d043      	beq.n	c0de26f8 <zkn_compute_binding_factors+0xf4>
c0de2670:	6839      	ldr	r1, [r7, #0]
c0de2672:	a801      	add	r0, sp, #4
c0de2674:	f009 f800 	bl	c0deb678 <cx_bn_alloc>
c0de2678:	2800      	cmp	r0, #0
c0de267a:	d1ec      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de267c:	4650      	mov	r0, sl
c0de267e:	f001 f881 	bl	c0de3784 <zkn_frost_H1_init>
c0de2682:	2800      	cmp	r0, #0
c0de2684:	d1e7      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de2686:	6839      	ldr	r1, [r7, #0]
c0de2688:	4630      	mov	r0, r6
c0de268a:	465a      	mov	r2, fp
c0de268c:	f000 f966 	bl	c0de295c <OUTLINED_FUNCTION_0>
c0de2690:	2800      	cmp	r0, #0
c0de2692:	d1e0      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de2694:	6839      	ldr	r1, [r7, #0]
c0de2696:	a812      	add	r0, sp, #72	@ 0x48
c0de2698:	465a      	mov	r2, fp
c0de269a:	f000 f95f 	bl	c0de295c <OUTLINED_FUNCTION_0>
c0de269e:	2800      	cmp	r0, #0
c0de26a0:	d1d9      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de26a2:	6839      	ldr	r1, [r7, #0]
c0de26a4:	a802      	add	r0, sp, #8
c0de26a6:	465a      	mov	r2, fp
c0de26a8:	f000 f958 	bl	c0de295c <OUTLINED_FUNCTION_0>
c0de26ac:	2800      	cmp	r0, #0
c0de26ae:	d1d2      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de26b0:	6839      	ldr	r1, [r7, #0]
c0de26b2:	9800      	ldr	r0, [sp, #0]
c0de26b4:	465a      	mov	r2, fp
c0de26b6:	fb00 5001 	mla	r0, r0, r1, r5
c0de26ba:	f000 f94f 	bl	c0de295c <OUTLINED_FUNCTION_0>
c0de26be:	2800      	cmp	r0, #0
c0de26c0:	d1c9      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de26c2:	68b9      	ldr	r1, [r7, #8]
c0de26c4:	9a01      	ldr	r2, [sp, #4]
c0de26c6:	4650      	mov	r0, sl
c0de26c8:	f001 f892 	bl	c0de37f0 <zkn_frost_hash_final>
c0de26cc:	2800      	cmp	r0, #0
c0de26ce:	d1c2      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de26d0:	683a      	ldr	r2, [r7, #0]
c0de26d2:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de26d4:	fb02 0108 	mla	r1, r2, r8, r0
c0de26d8:	9801      	ldr	r0, [sp, #4]
c0de26da:	f009 f817 	bl	c0deb70c <cx_bn_export>
c0de26de:	2800      	cmp	r0, #0
c0de26e0:	d1b9      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de26e2:	a801      	add	r0, sp, #4
c0de26e4:	f008 ffde 	bl	c0deb6a4 <cx_bn_destroy>
c0de26e8:	2800      	cmp	r0, #0
c0de26ea:	d1b4      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de26ec:	9800      	ldr	r0, [sp, #0]
c0de26ee:	f108 0801 	add.w	r8, r8, #1
c0de26f2:	3005      	adds	r0, #5
c0de26f4:	9000      	str	r0, [sp, #0]
c0de26f6:	e7b9      	b.n	c0de266c <zkn_compute_binding_factors+0x68>
c0de26f8:	a873      	add	r0, sp, #460	@ 0x1cc
c0de26fa:	f008 ffd3 	bl	c0deb6a4 <cx_bn_destroy>
c0de26fe:	2800      	cmp	r0, #0
c0de2700:	d1a9      	bne.n	c0de2656 <zkn_compute_binding_factors+0x52>
c0de2702:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2704:	f008 ffce 	bl	c0deb6a4 <cx_bn_destroy>
c0de2708:	e7a5      	b.n	c0de2656 <zkn_compute_binding_factors+0x52>

c0de270a <zkn_serialize_scalar_for_hash>:
c0de270a:	3a01      	subs	r2, #1
c0de270c:	b121      	cbz	r1, c0de2718 <zkn_serialize_scalar_for_hash+0xe>
c0de270e:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de2712:	5453      	strb	r3, [r2, r1]
c0de2714:	3901      	subs	r1, #1
c0de2716:	e7f9      	b.n	c0de270c <zkn_serialize_scalar_for_hash+0x2>
c0de2718:	4770      	bx	lr
	...

c0de271c <compute_challenge>:
c0de271c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2720:	b0bc      	sub	sp, #240	@ 0xf0
c0de2722:	4606      	mov	r6, r0
c0de2724:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de2726:	2820      	cmp	r0, #32
c0de2728:	d14b      	bne.n	c0de27c2 <compute_challenge+0xa6>
c0de272a:	4630      	mov	r0, r6
c0de272c:	461f      	mov	r7, r3
c0de272e:	4614      	mov	r4, r2
c0de2730:	460d      	mov	r5, r1
c0de2732:	f000 fbe4 	bl	c0de2efe <tEdwards_Curve_partial_destroy>
c0de2736:	2800      	cmp	r0, #0
c0de2738:	d144      	bne.n	c0de27c4 <compute_challenge+0xa8>
c0de273a:	f106 0820 	add.w	r8, r6, #32
c0de273e:	4668      	mov	r0, sp
c0de2740:	2105      	movs	r1, #5
c0de2742:	2205      	movs	r2, #5
c0de2744:	4643      	mov	r3, r8
c0de2746:	f000 fe47 	bl	c0de33d8 <Poseidon_alloc_init>
c0de274a:	bbd8      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de274c:	6829      	ldr	r1, [r5, #0]
c0de274e:	9807      	ldr	r0, [sp, #28]
c0de2750:	f008 ffc8 	bl	c0deb6e4 <cx_bn_copy>
c0de2754:	bbb0      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de2756:	6869      	ldr	r1, [r5, #4]
c0de2758:	9808      	ldr	r0, [sp, #32]
c0de275a:	f008 ffc3 	bl	c0deb6e4 <cx_bn_copy>
c0de275e:	bb88      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de2760:	6832      	ldr	r2, [r6, #0]
c0de2762:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de2764:	4621      	mov	r1, r4
c0de2766:	f008 ffb1 	bl	c0deb6cc <cx_bn_init>
c0de276a:	bb58      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de276c:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de276e:	f000 f907 	bl	c0de2980 <OUTLINED_FUNCTION_3>
c0de2772:	bb38      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de2774:	6832      	ldr	r2, [r6, #0]
c0de2776:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2778:	f104 0120 	add.w	r1, r4, #32
c0de277c:	f008 ffa6 	bl	c0deb6cc <cx_bn_init>
c0de2780:	bb00      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de2782:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2784:	f000 f8fc 	bl	c0de2980 <OUTLINED_FUNCTION_3>
c0de2788:	b9e0      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de278a:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de278c:	4639      	mov	r1, r7
c0de278e:	2220      	movs	r2, #32
c0de2790:	f008 ff9c 	bl	c0deb6cc <cx_bn_init>
c0de2794:	b9b0      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de2796:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2798:	f000 f8f2 	bl	c0de2980 <OUTLINED_FUNCTION_3>
c0de279c:	b990      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de279e:	4630      	mov	r0, r6
c0de27a0:	4629      	mov	r1, r5
c0de27a2:	f000 f912 	bl	c0de29ca <tEdwards_destroy>
c0de27a6:	b968      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de27a8:	4668      	mov	r0, sp
c0de27aa:	aa43      	add	r2, sp, #268	@ 0x10c
c0de27ac:	2100      	movs	r1, #0
c0de27ae:	2301      	movs	r3, #1
c0de27b0:	f000 fe78 	bl	c0de34a4 <Poseidon>
c0de27b4:	b930      	cbnz	r0, c0de27c4 <compute_challenge+0xa8>
c0de27b6:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de27b8:	4642      	mov	r2, r8
c0de27ba:	4601      	mov	r1, r0
c0de27bc:	f009 f83c 	bl	c0deb838 <cx_mont_from_montgomery>
c0de27c0:	e000      	b.n	c0de27c4 <compute_challenge+0xa8>
c0de27c2:	4802      	ldr	r0, [pc, #8]	@ (c0de27cc <compute_challenge+0xb0>)
c0de27c4:	b03c      	add	sp, #240	@ 0xf0
c0de27c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de27ca:	bf00      	nop
c0de27cc:	5a4b4e03 	.word	0x5a4b4e03

c0de27d0 <zkn_partial_sig>:
c0de27d0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de27d4:	b0c2      	sub	sp, #264	@ 0x108
c0de27d6:	4680      	mov	r8, r0
c0de27d8:	7fd8      	ldrb	r0, [r3, #31]
c0de27da:	e9dd a64e 	ldrd	sl, r6, [sp, #312]	@ 0x138
c0de27de:	9f4c      	ldr	r7, [sp, #304]	@ 0x130
c0de27e0:	e9cd 1204 	strd	r1, r2, [sp, #16]
c0de27e4:	469b      	mov	fp, r3
c0de27e6:	ab16      	add	r3, sp, #88	@ 0x58
c0de27e8:	2100      	movs	r1, #0
c0de27ea:	221f      	movs	r2, #31
c0de27ec:	ac1e      	add	r4, sp, #120	@ 0x78
c0de27ee:	f000 0001 	and.w	r0, r0, #1
c0de27f2:	2920      	cmp	r1, #32
c0de27f4:	d00f      	beq.n	c0de2816 <zkn_partial_sig+0x46>
c0de27f6:	eb0b 0501 	add.w	r5, fp, r1
c0de27fa:	f895 5020 	ldrb.w	r5, [r5, #32]
c0de27fe:	545d      	strb	r5, [r3, r1]
c0de2800:	f81a 5002 	ldrb.w	r5, [sl, r2]
c0de2804:	3a01      	subs	r2, #1
c0de2806:	5465      	strb	r5, [r4, r1]
c0de2808:	f89d 5058 	ldrb.w	r5, [sp, #88]	@ 0x58
c0de280c:	3101      	adds	r1, #1
c0de280e:	4045      	eors	r5, r0
c0de2810:	f88d 5058 	strb.w	r5, [sp, #88]	@ 0x58
c0de2814:	e7ed      	b.n	c0de27f2 <zkn_partial_sig+0x22>
c0de2816:	a83e      	add	r0, sp, #248	@ 0xf8
c0de2818:	f000 f8af 	bl	c0de297a <OUTLINED_FUNCTION_2>
c0de281c:	2800      	cmp	r0, #0
c0de281e:	f040 8098 	bne.w	c0de2952 <zkn_partial_sig+0x182>
c0de2822:	ad3f      	add	r5, sp, #252	@ 0xfc
c0de2824:	4640      	mov	r0, r8
c0de2826:	4629      	mov	r1, r5
c0de2828:	f000 f8ba 	bl	c0de29a0 <tEdwards_alloc>
c0de282c:	2800      	cmp	r0, #0
c0de282e:	f040 8090 	bne.w	c0de2952 <zkn_partial_sig+0x182>
c0de2832:	a826      	add	r0, sp, #152	@ 0x98
c0de2834:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2836:	e9cd 4600 	strd	r4, r6, [sp]
c0de283a:	463a      	mov	r2, r7
c0de283c:	9002      	str	r0, [sp, #8]
c0de283e:	a916      	add	r1, sp, #88	@ 0x58
c0de2840:	4640      	mov	r0, r8
c0de2842:	f7ff fedf 	bl	c0de2604 <zkn_compute_binding_factors>
c0de2846:	2800      	cmp	r0, #0
c0de2848:	f040 8083 	bne.w	c0de2952 <zkn_partial_sig+0x182>
c0de284c:	9500      	str	r5, [sp, #0]
c0de284e:	ac26      	add	r4, sp, #152	@ 0x98
c0de2850:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2852:	4640      	mov	r0, r8
c0de2854:	4639      	mov	r1, r7
c0de2856:	4622      	mov	r2, r4
c0de2858:	f7ff fe63 	bl	c0de2522 <zkn_compute_group_commitment>
c0de285c:	2800      	cmp	r0, #0
c0de285e:	d178      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de2860:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2862:	2120      	movs	r1, #32
c0de2864:	465a      	mov	r2, fp
c0de2866:	4653      	mov	r3, sl
c0de2868:	e9cd 1000 	strd	r1, r0, [sp]
c0de286c:	a93f      	add	r1, sp, #252	@ 0xfc
c0de286e:	4640      	mov	r0, r8
c0de2870:	f7ff ff54 	bl	c0de271c <compute_challenge>
c0de2874:	2800      	cmp	r0, #0
c0de2876:	d16c      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de2878:	f000 f88a 	bl	c0de2990 <OUTLINED_FUNCTION_5>
c0de287c:	2800      	cmp	r0, #0
c0de287e:	d168      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de2880:	a80c      	add	r0, sp, #48	@ 0x30
c0de2882:	4935      	ldr	r1, [pc, #212]	@ (c0de2958 <zkn_partial_sig+0x188>)
c0de2884:	2220      	movs	r2, #32
c0de2886:	4479      	add	r1, pc
c0de2888:	f009 f8d6 	bl	c0deba38 <__aeabi_memcpy>
c0de288c:	a815      	add	r0, sp, #84	@ 0x54
c0de288e:	f000 f874 	bl	c0de297a <OUTLINED_FUNCTION_2>
c0de2892:	2800      	cmp	r0, #0
c0de2894:	d15d      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de2896:	a814      	add	r0, sp, #80	@ 0x50
c0de2898:	aa0c      	add	r2, sp, #48	@ 0x30
c0de289a:	f000 f86a 	bl	c0de2972 <OUTLINED_FUNCTION_1>
c0de289e:	2800      	cmp	r0, #0
c0de28a0:	d157      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de28a2:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de28a4:	e9dd 2014 	ldrd	r2, r0, [sp, #80]	@ 0x50
c0de28a8:	f008 ff84 	bl	c0deb7b4 <cx_bn_reduce>
c0de28ac:	2800      	cmp	r0, #0
c0de28ae:	d150      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de28b0:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de28b2:	a80b      	add	r0, sp, #44	@ 0x2c
c0de28b4:	f000 f85d 	bl	c0de2972 <OUTLINED_FUNCTION_1>
c0de28b8:	2800      	cmp	r0, #0
c0de28ba:	d14a      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de28bc:	9a4b      	ldr	r2, [sp, #300]	@ 0x12c
c0de28be:	a80a      	add	r0, sp, #40	@ 0x28
c0de28c0:	f000 f857 	bl	c0de2972 <OUTLINED_FUNCTION_1>
c0de28c4:	2800      	cmp	r0, #0
c0de28c6:	d144      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de28c8:	9a50      	ldr	r2, [sp, #320]	@ 0x140
c0de28ca:	a809      	add	r0, sp, #36	@ 0x24
c0de28cc:	f000 f851 	bl	c0de2972 <OUTLINED_FUNCTION_1>
c0de28d0:	2800      	cmp	r0, #0
c0de28d2:	d13e      	bne.n	c0de2952 <zkn_partial_sig+0x182>
c0de28d4:	a808      	add	r0, sp, #32
c0de28d6:	9a05      	ldr	r2, [sp, #20]
c0de28d8:	f000 f84b 	bl	c0de2972 <OUTLINED_FUNCTION_1>
c0de28dc:	bbc8      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de28de:	9804      	ldr	r0, [sp, #16]
c0de28e0:	2120      	movs	r1, #32
c0de28e2:	2320      	movs	r3, #32
c0de28e4:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de28e8:	f1a0 0220 	sub.w	r2, r0, #32
c0de28ec:	a806      	add	r0, sp, #24
c0de28ee:	f008 fecd 	bl	c0deb68c <cx_bn_alloc_init>
c0de28f2:	bb70      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de28f4:	a807      	add	r0, sp, #28
c0de28f6:	f000 f840 	bl	c0de297a <OUTLINED_FUNCTION_2>
c0de28fa:	bb50      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de28fc:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de28fe:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de2900:	e9dd 2006 	ldrd	r2, r0, [sp, #24]
c0de2904:	f008 ff4a 	bl	c0deb79c <cx_bn_mod_mul>
c0de2908:	bb18      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de290a:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de290c:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de2910:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2912:	f008 ff43 	bl	c0deb79c <cx_bn_mod_mul>
c0de2916:	b9e0      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de2918:	e9dd 3214 	ldrd	r3, r2, [sp, #80]	@ 0x50
c0de291c:	e9dd 0109 	ldrd	r0, r1, [sp, #36]	@ 0x24
c0de2920:	f008 ff3c 	bl	c0deb79c <cx_bn_mod_mul>
c0de2924:	b9a8      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de2926:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2928:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de292a:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de292e:	f008 ff1d 	bl	c0deb76c <cx_bn_mod_add>
c0de2932:	b970      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de2934:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2936:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de2938:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de293c:	f008 ff16 	bl	c0deb76c <cx_bn_mod_add>
c0de2940:	b938      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de2942:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de2944:	9907      	ldr	r1, [sp, #28]
c0de2946:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2948:	f008 ff34 	bl	c0deb7b4 <cx_bn_reduce>
c0de294c:	b908      	cbnz	r0, c0de2952 <zkn_partial_sig+0x182>
c0de294e:	f000 f81f 	bl	c0de2990 <OUTLINED_FUNCTION_5>
c0de2952:	b042      	add	sp, #264	@ 0x108
c0de2954:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2958:	0000b096 	.word	0x0000b096

c0de295c <OUTLINED_FUNCTION_0>:
c0de295c:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2960:	f7ff fed3 	bl	c0de270a <zkn_serialize_scalar_for_hash>
c0de2964:	683a      	ldr	r2, [r7, #0]
c0de2966:	4650      	mov	r0, sl
c0de2968:	4659      	mov	r1, fp
c0de296a:	f85d eb08 	ldr.w	lr, [sp], #8
c0de296e:	f000 bf3d 	b.w	c0de37ec <zkn_frost_hash_update>

c0de2972 <OUTLINED_FUNCTION_1>:
c0de2972:	2120      	movs	r1, #32
c0de2974:	2320      	movs	r3, #32
c0de2976:	f008 be89 	b.w	c0deb68c <cx_bn_alloc_init>

c0de297a <OUTLINED_FUNCTION_2>:
c0de297a:	2120      	movs	r1, #32
c0de297c:	f008 be7c 	b.w	c0deb678 <cx_bn_alloc>

c0de2980 <OUTLINED_FUNCTION_3>:
c0de2980:	4642      	mov	r2, r8
c0de2982:	4601      	mov	r1, r0
c0de2984:	f008 bf4c 	b.w	c0deb820 <cx_mont_to_montgomery>

c0de2988 <OUTLINED_FUNCTION_4>:
c0de2988:	461c      	mov	r4, r3
c0de298a:	4615      	mov	r5, r2
c0de298c:	f008 be74 	b.w	c0deb678 <cx_bn_alloc>

c0de2990 <OUTLINED_FUNCTION_5>:
c0de2990:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2992:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de2994:	2220      	movs	r2, #32
c0de2996:	f008 beb9 	b.w	c0deb70c <cx_bn_export>

c0de299a <OUTLINED_FUNCTION_6>:
c0de299a:	4620      	mov	r0, r4
c0de299c:	f000 b815 	b.w	c0de29ca <tEdwards_destroy>

c0de29a0 <tEdwards_alloc>:
c0de29a0:	b5b0      	push	{r4, r5, r7, lr}
c0de29a2:	460d      	mov	r5, r1
c0de29a4:	6801      	ldr	r1, [r0, #0]
c0de29a6:	4604      	mov	r4, r0
c0de29a8:	4628      	mov	r0, r5
c0de29aa:	f008 fe65 	bl	c0deb678 <cx_bn_alloc>
c0de29ae:	b920      	cbnz	r0, c0de29ba <tEdwards_alloc+0x1a>
c0de29b0:	6821      	ldr	r1, [r4, #0]
c0de29b2:	1d28      	adds	r0, r5, #4
c0de29b4:	f008 fe60 	bl	c0deb678 <cx_bn_alloc>
c0de29b8:	b100      	cbz	r0, c0de29bc <tEdwards_alloc+0x1c>
c0de29ba:	bdb0      	pop	{r4, r5, r7, pc}
c0de29bc:	6821      	ldr	r1, [r4, #0]
c0de29be:	f105 0008 	add.w	r0, r5, #8
c0de29c2:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de29c6:	f008 be57 	b.w	c0deb678 <cx_bn_alloc>

c0de29ca <tEdwards_destroy>:
c0de29ca:	b510      	push	{r4, lr}
c0de29cc:	4608      	mov	r0, r1
c0de29ce:	460c      	mov	r4, r1
c0de29d0:	f008 fe68 	bl	c0deb6a4 <cx_bn_destroy>
c0de29d4:	b918      	cbnz	r0, c0de29de <tEdwards_destroy+0x14>
c0de29d6:	1d20      	adds	r0, r4, #4
c0de29d8:	f008 fe64 	bl	c0deb6a4 <cx_bn_destroy>
c0de29dc:	b100      	cbz	r0, c0de29e0 <tEdwards_destroy+0x16>
c0de29de:	bd10      	pop	{r4, pc}
c0de29e0:	f104 0008 	add.w	r0, r4, #8
c0de29e4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de29e8:	f008 be5c 	b.w	c0deb6a4 <cx_bn_destroy>

c0de29ec <tEdwards_double>:
c0de29ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de29ee:	460f      	mov	r7, r1
c0de29f0:	4614      	mov	r4, r2
c0de29f2:	4605      	mov	r5, r0
c0de29f4:	6843      	ldr	r3, [r0, #4]
c0de29f6:	6809      	ldr	r1, [r1, #0]
c0de29f8:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de29fa:	687a      	ldr	r2, [r7, #4]
c0de29fc:	f008 feb6 	bl	c0deb76c <cx_bn_mod_add>
c0de2a00:	2800      	cmp	r0, #0
c0de2a02:	d154      	bne.n	c0de2aae <tEdwards_double+0xc2>
c0de2a04:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2a08:	f105 0620 	add.w	r6, r5, #32
c0de2a0c:	f000 fbe4 	bl	c0de31d8 <OUTLINED_FUNCTION_2>
c0de2a10:	2800      	cmp	r0, #0
c0de2a12:	d14c      	bne.n	c0de2aae <tEdwards_double+0xc2>
c0de2a14:	6839      	ldr	r1, [r7, #0]
c0de2a16:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2a18:	f000 fbde 	bl	c0de31d8 <OUTLINED_FUNCTION_2>
c0de2a1c:	2800      	cmp	r0, #0
c0de2a1e:	d146      	bne.n	c0de2aae <tEdwards_double+0xc2>
c0de2a20:	6879      	ldr	r1, [r7, #4]
c0de2a22:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2a24:	f000 fbd8 	bl	c0de31d8 <OUTLINED_FUNCTION_2>
c0de2a28:	2800      	cmp	r0, #0
c0de2a2a:	d140      	bne.n	c0de2aae <tEdwards_double+0xc2>
c0de2a2c:	69a9      	ldr	r1, [r5, #24]
c0de2a2e:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2a30:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2a32:	f000 fbcb 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de2a36:	bbd0      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2a38:	686b      	ldr	r3, [r5, #4]
c0de2a3a:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2a3e:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2a40:	f008 fe94 	bl	c0deb76c <cx_bn_mod_add>
c0de2a44:	bb98      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2a46:	68b9      	ldr	r1, [r7, #8]
c0de2a48:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2a4a:	f000 fbc5 	bl	c0de31d8 <OUTLINED_FUNCTION_2>
c0de2a4e:	bb70      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2a50:	686b      	ldr	r3, [r5, #4]
c0de2a52:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2a54:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2a56:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2a58:	f008 fe94 	bl	c0deb784 <cx_bn_mod_sub>
c0de2a5c:	bb38      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2a5e:	686b      	ldr	r3, [r5, #4]
c0de2a60:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2a62:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2a66:	f008 fe8d 	bl	c0deb784 <cx_bn_mod_sub>
c0de2a6a:	bb00      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2a6c:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de2a70:	686b      	ldr	r3, [r5, #4]
c0de2a72:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2a74:	f008 fe86 	bl	c0deb784 <cx_bn_mod_sub>
c0de2a78:	b9c8      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2a7a:	686b      	ldr	r3, [r5, #4]
c0de2a7c:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2a80:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de2a82:	f008 fe7f 	bl	c0deb784 <cx_bn_mod_sub>
c0de2a86:	b990      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2a88:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2a8a:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2a8c:	6820      	ldr	r0, [r4, #0]
c0de2a8e:	f000 fb9d 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de2a92:	b960      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2a94:	686b      	ldr	r3, [r5, #4]
c0de2a96:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2a9a:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2a9c:	f008 fe72 	bl	c0deb784 <cx_bn_mod_sub>
c0de2aa0:	b928      	cbnz	r0, c0de2aae <tEdwards_double+0xc2>
c0de2aa2:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2aa4:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2aa6:	6860      	ldr	r0, [r4, #4]
c0de2aa8:	f000 fb90 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de2aac:	b100      	cbz	r0, c0de2ab0 <tEdwards_double+0xc4>
c0de2aae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2ab0:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2ab2:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2ab4:	68a0      	ldr	r0, [r4, #8]
c0de2ab6:	4633      	mov	r3, r6
c0de2ab8:	b001      	add	sp, #4
c0de2aba:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2abe:	f008 bec7 	b.w	c0deb850 <cx_mont_mul>

c0de2ac2 <tEdwards_add>:
c0de2ac2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2ac6:	4606      	mov	r6, r0
c0de2ac8:	4617      	mov	r7, r2
c0de2aca:	460c      	mov	r4, r1
c0de2acc:	6892      	ldr	r2, [r2, #8]
c0de2ace:	6889      	ldr	r1, [r1, #8]
c0de2ad0:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2ad2:	4698      	mov	r8, r3
c0de2ad4:	f106 0520 	add.w	r5, r6, #32
c0de2ad8:	f000 fb7b 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2adc:	2800      	cmp	r0, #0
c0de2ade:	d17d      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2ae0:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2ae4:	462b      	mov	r3, r5
c0de2ae6:	460a      	mov	r2, r1
c0de2ae8:	f008 feb2 	bl	c0deb850 <cx_mont_mul>
c0de2aec:	2800      	cmp	r0, #0
c0de2aee:	d175      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2af0:	683a      	ldr	r2, [r7, #0]
c0de2af2:	6821      	ldr	r1, [r4, #0]
c0de2af4:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2af6:	f000 fb6c 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2afa:	2800      	cmp	r0, #0
c0de2afc:	d16e      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2afe:	687a      	ldr	r2, [r7, #4]
c0de2b00:	6861      	ldr	r1, [r4, #4]
c0de2b02:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2b04:	f000 fb65 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2b08:	2800      	cmp	r0, #0
c0de2b0a:	d167      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2b0c:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2b10:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2b12:	f000 fb5e 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2b16:	2800      	cmp	r0, #0
c0de2b18:	d160      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2b1a:	69f2      	ldr	r2, [r6, #28]
c0de2b1c:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2b1e:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2b20:	f000 fb57 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2b24:	2800      	cmp	r0, #0
c0de2b26:	d159      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2b28:	6873      	ldr	r3, [r6, #4]
c0de2b2a:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2b2c:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2b30:	f008 fe28 	bl	c0deb784 <cx_bn_mod_sub>
c0de2b34:	2800      	cmp	r0, #0
c0de2b36:	d151      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2b38:	6873      	ldr	r3, [r6, #4]
c0de2b3a:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2b3c:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2b3e:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2b40:	f008 fe14 	bl	c0deb76c <cx_bn_mod_add>
c0de2b44:	2800      	cmp	r0, #0
c0de2b46:	d149      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2b48:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2b4c:	6873      	ldr	r3, [r6, #4]
c0de2b4e:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2b50:	f008 fe0c 	bl	c0deb76c <cx_bn_mod_add>
c0de2b54:	2800      	cmp	r0, #0
c0de2b56:	d141      	bne.n	c0de2bdc <tEdwards_add+0x11a>
c0de2b58:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2b5c:	6873      	ldr	r3, [r6, #4]
c0de2b5e:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2b60:	f008 fe04 	bl	c0deb76c <cx_bn_mod_add>
c0de2b64:	bbd0      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2b66:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2b68:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2b6c:	f000 fb31 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2b70:	bba0      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2b72:	6873      	ldr	r3, [r6, #4]
c0de2b74:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2b78:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2b7a:	f008 fe03 	bl	c0deb784 <cx_bn_mod_sub>
c0de2b7e:	bb68      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2b80:	6873      	ldr	r3, [r6, #4]
c0de2b82:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2b84:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2b88:	f008 fdfc 	bl	c0deb784 <cx_bn_mod_sub>
c0de2b8c:	bb30      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2b8e:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2b92:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2b94:	f000 fb1d 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2b98:	bb00      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2b9a:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2b9c:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2b9e:	f8d8 0000 	ldr.w	r0, [r8]
c0de2ba2:	f000 fb16 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2ba6:	b9c8      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2ba8:	69b1      	ldr	r1, [r6, #24]
c0de2baa:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2bae:	f000 fb10 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2bb2:	b998      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2bb4:	6873      	ldr	r3, [r6, #4]
c0de2bb6:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2bb8:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2bba:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2bbc:	f008 fde2 	bl	c0deb784 <cx_bn_mod_sub>
c0de2bc0:	b960      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2bc2:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2bc4:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2bc6:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2bc8:	f000 fb03 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2bcc:	b930      	cbnz	r0, c0de2bdc <tEdwards_add+0x11a>
c0de2bce:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2bd2:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2bd6:	f000 fafc 	bl	c0de31d2 <OUTLINED_FUNCTION_1>
c0de2bda:	b108      	cbz	r0, c0de2be0 <tEdwards_add+0x11e>
c0de2bdc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2be0:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2be4:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2be8:	462b      	mov	r3, r5
c0de2bea:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2bee:	f008 be2f 	b.w	c0deb850 <cx_mont_mul>

c0de2bf2 <tEdwards_IsOnCurve>:
c0de2bf2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2bf4:	4605      	mov	r5, r0
c0de2bf6:	460f      	mov	r7, r1
c0de2bf8:	2005      	movs	r0, #5
c0de2bfa:	6809      	ldr	r1, [r1, #0]
c0de2bfc:	4614      	mov	r4, r2
c0de2bfe:	9000      	str	r0, [sp, #0]
c0de2c00:	f105 0620 	add.w	r6, r5, #32
c0de2c04:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2c06:	460a      	mov	r2, r1
c0de2c08:	f000 fae0 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de2c0c:	b100      	cbz	r0, c0de2c10 <tEdwards_IsOnCurve+0x1e>
c0de2c0e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2c10:	6879      	ldr	r1, [r7, #4]
c0de2c12:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2c14:	f000 fae0 	bl	c0de31d8 <OUTLINED_FUNCTION_2>
c0de2c18:	2800      	cmp	r0, #0
c0de2c1a:	d1f8      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c1c:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2c20:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2c22:	f000 fad3 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de2c26:	2800      	cmp	r0, #0
c0de2c28:	d1f1      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c2a:	69a9      	ldr	r1, [r5, #24]
c0de2c2c:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2c2e:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c30:	f000 facc 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de2c34:	2800      	cmp	r0, #0
c0de2c36:	d1ea      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c38:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c3a:	686b      	ldr	r3, [r5, #4]
c0de2c3c:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2c3e:	4601      	mov	r1, r0
c0de2c40:	f008 fd94 	bl	c0deb76c <cx_bn_mod_add>
c0de2c44:	2800      	cmp	r0, #0
c0de2c46:	d1e2      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c48:	69e9      	ldr	r1, [r5, #28]
c0de2c4a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2c4c:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2c4e:	f000 fabd 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de2c52:	2800      	cmp	r0, #0
c0de2c54:	d1db      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c56:	686b      	ldr	r3, [r5, #4]
c0de2c58:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2c5a:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2c5c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2c5e:	f008 fd85 	bl	c0deb76c <cx_bn_mod_add>
c0de2c62:	2800      	cmp	r0, #0
c0de2c64:	d1d3      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c66:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2c68:	4632      	mov	r2, r6
c0de2c6a:	4601      	mov	r1, r0
c0de2c6c:	f008 fde4 	bl	c0deb838 <cx_mont_from_montgomery>
c0de2c70:	2800      	cmp	r0, #0
c0de2c72:	d1cc      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c74:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c76:	4632      	mov	r2, r6
c0de2c78:	4601      	mov	r1, r0
c0de2c7a:	f008 fddd 	bl	c0deb838 <cx_mont_from_montgomery>
c0de2c7e:	2800      	cmp	r0, #0
c0de2c80:	d1c5      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c82:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2c86:	466a      	mov	r2, sp
c0de2c88:	f008 fd4c 	bl	c0deb724 <cx_bn_cmp>
c0de2c8c:	2800      	cmp	r0, #0
c0de2c8e:	d1be      	bne.n	c0de2c0e <tEdwards_IsOnCurve+0x1c>
c0de2c90:	9800      	ldr	r0, [sp, #0]
c0de2c92:	fab0 f080 	clz	r0, r0
c0de2c96:	0940      	lsrs	r0, r0, #5
c0de2c98:	7020      	strb	r0, [r4, #0]
c0de2c9a:	2000      	movs	r0, #0
c0de2c9c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2ca0 <tEdwards_Curve_alloc_init>:
c0de2ca0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ca4:	b0d2      	sub	sp, #328	@ 0x148
c0de2ca6:	4604      	mov	r4, r0
c0de2ca8:	2902      	cmp	r1, #2
c0de2caa:	d022      	beq.n	c0de2cf2 <tEdwards_Curve_alloc_init+0x52>
c0de2cac:	2901      	cmp	r1, #1
c0de2cae:	f040 80cd 	bne.w	c0de2e4c <tEdwards_Curve_alloc_init+0x1ac>
c0de2cb2:	2020      	movs	r0, #32
c0de2cb4:	2220      	movs	r2, #32
c0de2cb6:	6020      	str	r0, [r4, #0]
c0de2cb8:	af4a      	add	r7, sp, #296	@ 0x128
c0de2cba:	4967      	ldr	r1, [pc, #412]	@ (c0de2e58 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2cbc:	4638      	mov	r0, r7
c0de2cbe:	4479      	add	r1, pc
c0de2cc0:	f008 feba 	bl	c0deba38 <__aeabi_memcpy>
c0de2cc4:	ae42      	add	r6, sp, #264	@ 0x108
c0de2cc6:	4965      	ldr	r1, [pc, #404]	@ (c0de2e5c <tEdwards_Curve_alloc_init+0x1bc>)
c0de2cc8:	2220      	movs	r2, #32
c0de2cca:	4630      	mov	r0, r6
c0de2ccc:	4479      	add	r1, pc
c0de2cce:	f008 feb3 	bl	c0deba38 <__aeabi_memcpy>
c0de2cd2:	4963      	ldr	r1, [pc, #396]	@ (c0de2e60 <tEdwards_Curve_alloc_init+0x1c0>)
c0de2cd4:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2cd8:	2220      	movs	r2, #32
c0de2cda:	4650      	mov	r0, sl
c0de2cdc:	4479      	add	r1, pc
c0de2cde:	f008 feab 	bl	c0deba38 <__aeabi_memcpy>
c0de2ce2:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2ce4:	495f      	ldr	r1, [pc, #380]	@ (c0de2e64 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2ce6:	2220      	movs	r2, #32
c0de2ce8:	4628      	mov	r0, r5
c0de2cea:	4479      	add	r1, pc
c0de2cec:	f008 fea4 	bl	c0deba38 <__aeabi_memcpy>
c0de2cf0:	e02d      	b.n	c0de2d4e <tEdwards_Curve_alloc_init+0xae>
c0de2cf2:	2020      	movs	r0, #32
c0de2cf4:	2220      	movs	r2, #32
c0de2cf6:	6020      	str	r0, [r4, #0]
c0de2cf8:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2cfa:	495b      	ldr	r1, [pc, #364]	@ (c0de2e68 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2cfc:	4638      	mov	r0, r7
c0de2cfe:	4479      	add	r1, pc
c0de2d00:	f008 fe9a 	bl	c0deba38 <__aeabi_memcpy>
c0de2d04:	ae22      	add	r6, sp, #136	@ 0x88
c0de2d06:	4959      	ldr	r1, [pc, #356]	@ (c0de2e6c <tEdwards_Curve_alloc_init+0x1cc>)
c0de2d08:	2220      	movs	r2, #32
c0de2d0a:	4630      	mov	r0, r6
c0de2d0c:	4479      	add	r1, pc
c0de2d0e:	f008 fe93 	bl	c0deba38 <__aeabi_memcpy>
c0de2d12:	4957      	ldr	r1, [pc, #348]	@ (c0de2e70 <tEdwards_Curve_alloc_init+0x1d0>)
c0de2d14:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2d18:	2220      	movs	r2, #32
c0de2d1a:	4650      	mov	r0, sl
c0de2d1c:	4479      	add	r1, pc
c0de2d1e:	f008 fe8b 	bl	c0deba38 <__aeabi_memcpy>
c0de2d22:	a812      	add	r0, sp, #72	@ 0x48
c0de2d24:	4953      	ldr	r1, [pc, #332]	@ (c0de2e74 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2d26:	2220      	movs	r2, #32
c0de2d28:	9001      	str	r0, [sp, #4]
c0de2d2a:	4479      	add	r1, pc
c0de2d2c:	f008 fe84 	bl	c0deba38 <__aeabi_memcpy>
c0de2d30:	4951      	ldr	r1, [pc, #324]	@ (c0de2e78 <tEdwards_Curve_alloc_init+0x1d8>)
c0de2d32:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2d36:	2220      	movs	r2, #32
c0de2d38:	4658      	mov	r0, fp
c0de2d3a:	4479      	add	r1, pc
c0de2d3c:	f008 fe7c 	bl	c0deba38 <__aeabi_memcpy>
c0de2d40:	ad02      	add	r5, sp, #8
c0de2d42:	494e      	ldr	r1, [pc, #312]	@ (c0de2e7c <tEdwards_Curve_alloc_init+0x1dc>)
c0de2d44:	2220      	movs	r2, #32
c0de2d46:	4628      	mov	r0, r5
c0de2d48:	4479      	add	r1, pc
c0de2d4a:	f008 fe75 	bl	c0deba38 <__aeabi_memcpy>
c0de2d4e:	f104 0804 	add.w	r8, r4, #4
c0de2d52:	2120      	movs	r1, #32
c0de2d54:	463a      	mov	r2, r7
c0de2d56:	2320      	movs	r3, #32
c0de2d58:	4640      	mov	r0, r8
c0de2d5a:	f008 fc97 	bl	c0deb68c <cx_bn_alloc_init>
c0de2d5e:	2800      	cmp	r0, #0
c0de2d60:	d175      	bne.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2d62:	4620      	mov	r0, r4
c0de2d64:	462a      	mov	r2, r5
c0de2d66:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2d6a:	460b      	mov	r3, r1
c0de2d6c:	f008 fc8e 	bl	c0deb68c <cx_bn_alloc_init>
c0de2d70:	2800      	cmp	r0, #0
c0de2d72:	d16c      	bne.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2d74:	f104 0520 	add.w	r5, r4, #32
c0de2d78:	2120      	movs	r1, #32
c0de2d7a:	4628      	mov	r0, r5
c0de2d7c:	f008 fd3c 	bl	c0deb7f8 <cx_mont_alloc>
c0de2d80:	2800      	cmp	r0, #0
c0de2d82:	d164      	bne.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2d84:	f8d8 1000 	ldr.w	r1, [r8]
c0de2d88:	4628      	mov	r0, r5
c0de2d8a:	f008 fd3f 	bl	c0deb80c <cx_mont_init>
c0de2d8e:	2800      	cmp	r0, #0
c0de2d90:	d15d      	bne.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2d92:	4627      	mov	r7, r4
c0de2d94:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2d98:	4638      	mov	r0, r7
c0de2d9a:	f008 fc6d 	bl	c0deb678 <cx_bn_alloc>
c0de2d9e:	2800      	cmp	r0, #0
c0de2da0:	d155      	bne.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2da2:	6838      	ldr	r0, [r7, #0]
c0de2da4:	2101      	movs	r1, #1
c0de2da6:	f008 fca7 	bl	c0deb6f8 <cx_bn_set_u32>
c0de2daa:	2800      	cmp	r0, #0
c0de2dac:	d14f      	bne.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2dae:	6838      	ldr	r0, [r7, #0]
c0de2db0:	f000 fa16 	bl	c0de31e0 <OUTLINED_FUNCTION_3>
c0de2db4:	2800      	cmp	r0, #0
c0de2db6:	d14a      	bne.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2db8:	f104 070c 	add.w	r7, r4, #12
c0de2dbc:	4620      	mov	r0, r4
c0de2dbe:	4639      	mov	r1, r7
c0de2dc0:	f7ff fdee 	bl	c0de29a0 <tEdwards_alloc>
c0de2dc4:	2800      	cmp	r0, #0
c0de2dc6:	d142      	bne.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2dc8:	9901      	ldr	r1, [sp, #4]
c0de2dca:	4620      	mov	r0, r4
c0de2dcc:	465a      	mov	r2, fp
c0de2dce:	463b      	mov	r3, r7
c0de2dd0:	f000 f856 	bl	c0de2e80 <tEdwards_init>
c0de2dd4:	bbd8      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2dd6:	4627      	mov	r7, r4
c0de2dd8:	4632      	mov	r2, r6
c0de2dda:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2dde:	4638      	mov	r0, r7
c0de2de0:	460b      	mov	r3, r1
c0de2de2:	f008 fc53 	bl	c0deb68c <cx_bn_alloc_init>
c0de2de6:	bb90      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2de8:	6838      	ldr	r0, [r7, #0]
c0de2dea:	f000 f9f9 	bl	c0de31e0 <OUTLINED_FUNCTION_3>
c0de2dee:	bb70      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2df0:	4626      	mov	r6, r4
c0de2df2:	4652      	mov	r2, sl
c0de2df4:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2df8:	4630      	mov	r0, r6
c0de2dfa:	460b      	mov	r3, r1
c0de2dfc:	f008 fc46 	bl	c0deb68c <cx_bn_alloc_init>
c0de2e00:	bb28      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e02:	6830      	ldr	r0, [r6, #0]
c0de2e04:	f000 f9ec 	bl	c0de31e0 <OUTLINED_FUNCTION_3>
c0de2e08:	bb08      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e0a:	4620      	mov	r0, r4
c0de2e0c:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2e10:	f008 fc32 	bl	c0deb678 <cx_bn_alloc>
c0de2e14:	b9d8      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e16:	f000 f9fb 	bl	c0de3210 <OUTLINED_FUNCTION_8>
c0de2e1a:	b9c0      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e1c:	f000 f9e4 	bl	c0de31e8 <OUTLINED_FUNCTION_4>
c0de2e20:	b9a8      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e22:	f000 f9f0 	bl	c0de3206 <OUTLINED_FUNCTION_7>
c0de2e26:	b990      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e28:	f000 f9fc 	bl	c0de3224 <OUTLINED_FUNCTION_10>
c0de2e2c:	b978      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e2e:	f000 f9e5 	bl	c0de31fc <OUTLINED_FUNCTION_6>
c0de2e32:	b960      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e34:	f000 f9f1 	bl	c0de321a <OUTLINED_FUNCTION_9>
c0de2e38:	b948      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e3a:	f000 f9da 	bl	c0de31f2 <OUTLINED_FUNCTION_5>
c0de2e3e:	b930      	cbnz	r0, c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e40:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2e44:	4620      	mov	r0, r4
c0de2e46:	f008 fc17 	bl	c0deb678 <cx_bn_alloc>
c0de2e4a:	e000      	b.n	c0de2e4e <tEdwards_Curve_alloc_init+0x1ae>
c0de2e4c:	4801      	ldr	r0, [pc, #4]	@ (c0de2e54 <tEdwards_Curve_alloc_init+0x1b4>)
c0de2e4e:	b052      	add	sp, #328	@ 0x148
c0de2e50:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2e54:	5a4b4e01 	.word	0x5a4b4e01
c0de2e58:	0000ab3e 	.word	0x0000ab3e
c0de2e5c:	0000ad70 	.word	0x0000ad70
c0de2e60:	0000ad20 	.word	0x0000ad20
c0de2e64:	0000ac12 	.word	0x0000ac12
c0de2e68:	0000ad7e 	.word	0x0000ad7e
c0de2e6c:	0000acd0 	.word	0x0000acd0
c0de2e70:	0000ad40 	.word	0x0000ad40
c0de2e74:	0000ad72 	.word	0x0000ad72
c0de2e78:	0000ad82 	.word	0x0000ad82
c0de2e7c:	0000abd4 	.word	0x0000abd4

c0de2e80 <tEdwards_init>:
c0de2e80:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de2e82:	6806      	ldr	r6, [r0, #0]
c0de2e84:	461c      	mov	r4, r3
c0de2e86:	4617      	mov	r7, r2
c0de2e88:	460a      	mov	r2, r1
c0de2e8a:	4605      	mov	r5, r0
c0de2e8c:	a802      	add	r0, sp, #8
c0de2e8e:	4631      	mov	r1, r6
c0de2e90:	4633      	mov	r3, r6
c0de2e92:	f008 fbfb 	bl	c0deb68c <cx_bn_alloc_init>
c0de2e96:	b100      	cbz	r0, c0de2e9a <tEdwards_init+0x1a>
c0de2e98:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2e9a:	a801      	add	r0, sp, #4
c0de2e9c:	4631      	mov	r1, r6
c0de2e9e:	463a      	mov	r2, r7
c0de2ea0:	4633      	mov	r3, r6
c0de2ea2:	f008 fbf3 	bl	c0deb68c <cx_bn_alloc_init>
c0de2ea6:	2800      	cmp	r0, #0
c0de2ea8:	d1f6      	bne.n	c0de2e98 <tEdwards_init+0x18>
c0de2eaa:	4668      	mov	r0, sp
c0de2eac:	4631      	mov	r1, r6
c0de2eae:	f008 fbe3 	bl	c0deb678 <cx_bn_alloc>
c0de2eb2:	2800      	cmp	r0, #0
c0de2eb4:	d1f0      	bne.n	c0de2e98 <tEdwards_init+0x18>
c0de2eb6:	f105 0620 	add.w	r6, r5, #32
c0de2eba:	6820      	ldr	r0, [r4, #0]
c0de2ebc:	9902      	ldr	r1, [sp, #8]
c0de2ebe:	4632      	mov	r2, r6
c0de2ec0:	f008 fcae 	bl	c0deb820 <cx_mont_to_montgomery>
c0de2ec4:	2800      	cmp	r0, #0
c0de2ec6:	d1e7      	bne.n	c0de2e98 <tEdwards_init+0x18>
c0de2ec8:	6860      	ldr	r0, [r4, #4]
c0de2eca:	9901      	ldr	r1, [sp, #4]
c0de2ecc:	4632      	mov	r2, r6
c0de2ece:	f008 fca7 	bl	c0deb820 <cx_mont_to_montgomery>
c0de2ed2:	2800      	cmp	r0, #0
c0de2ed4:	d1e0      	bne.n	c0de2e98 <tEdwards_init+0x18>
c0de2ed6:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2ed8:	68a0      	ldr	r0, [r4, #8]
c0de2eda:	f008 fc03 	bl	c0deb6e4 <cx_bn_copy>
c0de2ede:	2800      	cmp	r0, #0
c0de2ee0:	d1da      	bne.n	c0de2e98 <tEdwards_init+0x18>
c0de2ee2:	a802      	add	r0, sp, #8
c0de2ee4:	f008 fbde 	bl	c0deb6a4 <cx_bn_destroy>
c0de2ee8:	2800      	cmp	r0, #0
c0de2eea:	d1d5      	bne.n	c0de2e98 <tEdwards_init+0x18>
c0de2eec:	a801      	add	r0, sp, #4
c0de2eee:	f008 fbd9 	bl	c0deb6a4 <cx_bn_destroy>
c0de2ef2:	2800      	cmp	r0, #0
c0de2ef4:	d1d0      	bne.n	c0de2e98 <tEdwards_init+0x18>
c0de2ef6:	4668      	mov	r0, sp
c0de2ef8:	f008 fbd4 	bl	c0deb6a4 <cx_bn_destroy>
c0de2efc:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2efe <tEdwards_Curve_partial_destroy>:
c0de2efe:	b510      	push	{r4, lr}
c0de2f00:	4604      	mov	r4, r0
c0de2f02:	302c      	adds	r0, #44	@ 0x2c
c0de2f04:	f008 fbce 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f08:	bbd8      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f0a:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2f0e:	f008 fbc9 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f12:	bbb0      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f14:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2f18:	f008 fbc4 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f1c:	bb88      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f1e:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2f22:	f008 fbbf 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f26:	bb60      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f28:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2f2c:	f008 fbba 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f30:	bb38      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f32:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2f36:	f008 fbb5 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f3a:	bb10      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f3c:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2f40:	f008 fbb0 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f44:	b9e8      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f46:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2f4a:	f008 fbab 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f4e:	b9c0      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f50:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2f54:	f008 fba6 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f58:	b998      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f5a:	f104 010c 	add.w	r1, r4, #12
c0de2f5e:	f7ff fd34 	bl	c0de29ca <tEdwards_destroy>
c0de2f62:	b970      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f64:	f104 0018 	add.w	r0, r4, #24
c0de2f68:	f008 fb9c 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f6c:	b948      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f6e:	f104 001c 	add.w	r0, r4, #28
c0de2f72:	f008 fb97 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f76:	b920      	cbnz	r0, c0de2f82 <tEdwards_Curve_partial_destroy+0x84>
c0de2f78:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2f7c:	f008 fb92 	bl	c0deb6a4 <cx_bn_destroy>
c0de2f80:	b100      	cbz	r0, c0de2f84 <tEdwards_Curve_partial_destroy+0x86>
c0de2f82:	bd10      	pop	{r4, pc}
c0de2f84:	f104 0008 	add.w	r0, r4, #8
c0de2f88:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2f8c:	f008 bb8a 	b.w	c0deb6a4 <cx_bn_destroy>

c0de2f90 <tEdwards_SetNeutral>:
c0de2f90:	b5b0      	push	{r4, r5, r7, lr}
c0de2f92:	4605      	mov	r5, r0
c0de2f94:	6808      	ldr	r0, [r1, #0]
c0de2f96:	460c      	mov	r4, r1
c0de2f98:	2100      	movs	r1, #0
c0de2f9a:	f008 fbad 	bl	c0deb6f8 <cx_bn_set_u32>
c0de2f9e:	b918      	cbnz	r0, c0de2fa8 <tEdwards_SetNeutral+0x18>
c0de2fa0:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2fa2:	f000 f944 	bl	c0de322e <OUTLINED_FUNCTION_11>
c0de2fa6:	b100      	cbz	r0, c0de2faa <tEdwards_SetNeutral+0x1a>
c0de2fa8:	bdb0      	pop	{r4, r5, r7, pc}
c0de2faa:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2fac:	68a0      	ldr	r0, [r4, #8]
c0de2fae:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2fb2:	f008 bb97 	b.w	c0deb6e4 <cx_bn_copy>

c0de2fb6 <tEdwards_export>:
c0de2fb6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2fba:	4698      	mov	r8, r3
c0de2fbc:	4616      	mov	r6, r2
c0de2fbe:	460f      	mov	r7, r1
c0de2fc0:	4605      	mov	r5, r0
c0de2fc2:	f000 f81e 	bl	c0de3002 <tEdwards_normalize>
c0de2fc6:	b998      	cbnz	r0, c0de2ff0 <tEdwards_export+0x3a>
c0de2fc8:	f105 0420 	add.w	r4, r5, #32
c0de2fcc:	6839      	ldr	r1, [r7, #0]
c0de2fce:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2fd0:	4622      	mov	r2, r4
c0de2fd2:	f008 fc31 	bl	c0deb838 <cx_mont_from_montgomery>
c0de2fd6:	b958      	cbnz	r0, c0de2ff0 <tEdwards_export+0x3a>
c0de2fd8:	6879      	ldr	r1, [r7, #4]
c0de2fda:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2fdc:	4622      	mov	r2, r4
c0de2fde:	f008 fc2b 	bl	c0deb838 <cx_mont_from_montgomery>
c0de2fe2:	b928      	cbnz	r0, c0de2ff0 <tEdwards_export+0x3a>
c0de2fe4:	682a      	ldr	r2, [r5, #0]
c0de2fe6:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2fe8:	4631      	mov	r1, r6
c0de2fea:	f008 fb8f 	bl	c0deb70c <cx_bn_export>
c0de2fee:	b108      	cbz	r0, c0de2ff4 <tEdwards_export+0x3e>
c0de2ff0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2ff4:	682a      	ldr	r2, [r5, #0]
c0de2ff6:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2ff8:	4641      	mov	r1, r8
c0de2ffa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2ffe:	f008 bb85 	b.w	c0deb70c <cx_bn_export>

c0de3002 <tEdwards_normalize>:
c0de3002:	b570      	push	{r4, r5, r6, lr}
c0de3004:	4605      	mov	r5, r0
c0de3006:	460c      	mov	r4, r1
c0de3008:	6889      	ldr	r1, [r1, #8]
c0de300a:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de300c:	f105 0620 	add.w	r6, r5, #32
c0de3010:	4632      	mov	r2, r6
c0de3012:	f008 fc39 	bl	c0deb888 <cx_mont_invert_nprime>
c0de3016:	b9d0      	cbnz	r0, c0de304e <tEdwards_normalize+0x4c>
c0de3018:	6822      	ldr	r2, [r4, #0]
c0de301a:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de301e:	f000 f8d5 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de3022:	b9a0      	cbnz	r0, c0de304e <tEdwards_normalize+0x4c>
c0de3024:	6862      	ldr	r2, [r4, #4]
c0de3026:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3028:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de302a:	f000 f8cf 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de302e:	b970      	cbnz	r0, c0de304e <tEdwards_normalize+0x4c>
c0de3030:	68a2      	ldr	r2, [r4, #8]
c0de3032:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3034:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de3036:	f000 f8c9 	bl	c0de31cc <OUTLINED_FUNCTION_0>
c0de303a:	b940      	cbnz	r0, c0de304e <tEdwards_normalize+0x4c>
c0de303c:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de303e:	6820      	ldr	r0, [r4, #0]
c0de3040:	f008 fb50 	bl	c0deb6e4 <cx_bn_copy>
c0de3044:	b918      	cbnz	r0, c0de304e <tEdwards_normalize+0x4c>
c0de3046:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de3048:	f000 f8f1 	bl	c0de322e <OUTLINED_FUNCTION_11>
c0de304c:	b100      	cbz	r0, c0de3050 <tEdwards_normalize+0x4e>
c0de304e:	bd70      	pop	{r4, r5, r6, pc}
c0de3050:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de3052:	68a0      	ldr	r0, [r4, #8]
c0de3054:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de3058:	f008 bb44 	b.w	c0deb6e4 <cx_bn_copy>

c0de305c <tEdwards_copy>:
c0de305c:	b5b0      	push	{r4, r5, r7, lr}
c0de305e:	460c      	mov	r4, r1
c0de3060:	4605      	mov	r5, r0
c0de3062:	6801      	ldr	r1, [r0, #0]
c0de3064:	6820      	ldr	r0, [r4, #0]
c0de3066:	f008 fb3d 	bl	c0deb6e4 <cx_bn_copy>
c0de306a:	b918      	cbnz	r0, c0de3074 <tEdwards_copy+0x18>
c0de306c:	6869      	ldr	r1, [r5, #4]
c0de306e:	f000 f8de 	bl	c0de322e <OUTLINED_FUNCTION_11>
c0de3072:	b100      	cbz	r0, c0de3076 <tEdwards_copy+0x1a>
c0de3074:	bdb0      	pop	{r4, r5, r7, pc}
c0de3076:	68a9      	ldr	r1, [r5, #8]
c0de3078:	68a0      	ldr	r0, [r4, #8]
c0de307a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de307e:	f008 bb31 	b.w	c0deb6e4 <cx_bn_copy>

c0de3082 <tEdwards_alloc_init>:
c0de3082:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3084:	460e      	mov	r6, r1
c0de3086:	6801      	ldr	r1, [r0, #0]
c0de3088:	4607      	mov	r7, r0
c0de308a:	4618      	mov	r0, r3
c0de308c:	461c      	mov	r4, r3
c0de308e:	4615      	mov	r5, r2
c0de3090:	f008 faf2 	bl	c0deb678 <cx_bn_alloc>
c0de3094:	b950      	cbnz	r0, c0de30ac <tEdwards_alloc_init+0x2a>
c0de3096:	6839      	ldr	r1, [r7, #0]
c0de3098:	1d20      	adds	r0, r4, #4
c0de309a:	f008 faed 	bl	c0deb678 <cx_bn_alloc>
c0de309e:	b928      	cbnz	r0, c0de30ac <tEdwards_alloc_init+0x2a>
c0de30a0:	6839      	ldr	r1, [r7, #0]
c0de30a2:	f104 0008 	add.w	r0, r4, #8
c0de30a6:	f008 fae7 	bl	c0deb678 <cx_bn_alloc>
c0de30aa:	b100      	cbz	r0, c0de30ae <tEdwards_alloc_init+0x2c>
c0de30ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de30ae:	4638      	mov	r0, r7
c0de30b0:	4631      	mov	r1, r6
c0de30b2:	462a      	mov	r2, r5
c0de30b4:	4623      	mov	r3, r4
c0de30b6:	b001      	add	sp, #4
c0de30b8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de30bc:	f7ff bee0 	b.w	c0de2e80 <tEdwards_init>

c0de30c0 <tEdwards_scalarMul_bn>:
c0de30c0:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de30c4:	4607      	mov	r7, r0
c0de30c6:	2000      	movs	r0, #0
c0de30c8:	4688      	mov	r8, r1
c0de30ca:	4615      	mov	r5, r2
c0de30cc:	2100      	movs	r1, #0
c0de30ce:	469b      	mov	fp, r3
c0de30d0:	9003      	str	r0, [sp, #12]
c0de30d2:	f88d 000b 	strb.w	r0, [sp, #11]
c0de30d6:	6810      	ldr	r0, [r2, #0]
c0de30d8:	aa03      	add	r2, sp, #12
c0de30da:	f008 fb2f 	bl	c0deb73c <cx_bn_cmp_u32>
c0de30de:	bb38      	cbnz	r0, c0de3130 <tEdwards_scalarMul_bn+0x70>
c0de30e0:	9803      	ldr	r0, [sp, #12]
c0de30e2:	b1d0      	cbz	r0, c0de311a <tEdwards_scalarMul_bn+0x5a>
c0de30e4:	6828      	ldr	r0, [r5, #0]
c0de30e6:	a901      	add	r1, sp, #4
c0de30e8:	f008 fae6 	bl	c0deb6b8 <cx_bn_nbytes>
c0de30ec:	bb00      	cbnz	r0, c0de3130 <tEdwards_scalarMul_bn+0x70>
c0de30ee:	2002      	movs	r0, #2
c0de30f0:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de30f4:	f10d 040b 	add.w	r4, sp, #11
c0de30f8:	6538      	str	r0, [r7, #80]	@ 0x50
c0de30fa:	9801      	ldr	r0, [sp, #4]
c0de30fc:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de3100:	2000      	movs	r0, #0
c0de3102:	2801      	cmp	r0, #1
c0de3104:	d00f      	beq.n	c0de3126 <tEdwards_scalarMul_bn+0x66>
c0de3106:	6828      	ldr	r0, [r5, #0]
c0de3108:	4631      	mov	r1, r6
c0de310a:	4622      	mov	r2, r4
c0de310c:	f008 fb22 	bl	c0deb754 <cx_bn_tst_bit>
c0de3110:	b970      	cbnz	r0, c0de3130 <tEdwards_scalarMul_bn+0x70>
c0de3112:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de3116:	3e01      	subs	r6, #1
c0de3118:	e7f3      	b.n	c0de3102 <tEdwards_scalarMul_bn+0x42>
c0de311a:	4638      	mov	r0, r7
c0de311c:	4659      	mov	r1, fp
c0de311e:	f7ff ff37 	bl	c0de2f90 <tEdwards_SetNeutral>
c0de3122:	b928      	cbnz	r0, c0de3130 <tEdwards_scalarMul_bn+0x70>
c0de3124:	e7de      	b.n	c0de30e4 <tEdwards_scalarMul_bn+0x24>
c0de3126:	4640      	mov	r0, r8
c0de3128:	4659      	mov	r1, fp
c0de312a:	f7ff ff97 	bl	c0de305c <tEdwards_copy>
c0de312e:	b110      	cbz	r0, c0de3136 <tEdwards_scalarMul_bn+0x76>
c0de3130:	b004      	add	sp, #16
c0de3132:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3136:	2001      	movs	r0, #1
c0de3138:	f10d 0a0b 	add.w	sl, sp, #11
c0de313c:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de3140:	2e00      	cmp	r6, #0
c0de3142:	d420      	bmi.n	c0de3186 <tEdwards_scalarMul_bn+0xc6>
c0de3144:	4638      	mov	r0, r7
c0de3146:	4659      	mov	r1, fp
c0de3148:	465a      	mov	r2, fp
c0de314a:	f7ff fc4f 	bl	c0de29ec <tEdwards_double>
c0de314e:	2800      	cmp	r0, #0
c0de3150:	d1ee      	bne.n	c0de3130 <tEdwards_scalarMul_bn+0x70>
c0de3152:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de3154:	4631      	mov	r1, r6
c0de3156:	4652      	mov	r2, sl
c0de3158:	0040      	lsls	r0, r0, #1
c0de315a:	6538      	str	r0, [r7, #80]	@ 0x50
c0de315c:	6828      	ldr	r0, [r5, #0]
c0de315e:	f008 faf9 	bl	c0deb754 <cx_bn_tst_bit>
c0de3162:	2800      	cmp	r0, #0
c0de3164:	d1e4      	bne.n	c0de3130 <tEdwards_scalarMul_bn+0x70>
c0de3166:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de316a:	b150      	cbz	r0, c0de3182 <tEdwards_scalarMul_bn+0xc2>
c0de316c:	4638      	mov	r0, r7
c0de316e:	4659      	mov	r1, fp
c0de3170:	4642      	mov	r2, r8
c0de3172:	465b      	mov	r3, fp
c0de3174:	f7ff fca5 	bl	c0de2ac2 <tEdwards_add>
c0de3178:	2800      	cmp	r0, #0
c0de317a:	d1d9      	bne.n	c0de3130 <tEdwards_scalarMul_bn+0x70>
c0de317c:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de317e:	3001      	adds	r0, #1
c0de3180:	6538      	str	r0, [r7, #80]	@ 0x50
c0de3182:	3e01      	subs	r6, #1
c0de3184:	e7dc      	b.n	c0de3140 <tEdwards_scalarMul_bn+0x80>
c0de3186:	2000      	movs	r0, #0
c0de3188:	e7d2      	b.n	c0de3130 <tEdwards_scalarMul_bn+0x70>
	...

c0de318c <tEdwards_scalarMul>:
c0de318c:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de318e:	460c      	mov	r4, r1
c0de3190:	6801      	ldr	r1, [r0, #0]
c0de3192:	4299      	cmp	r1, r3
c0de3194:	bf3c      	itt	cc
c0de3196:	480c      	ldrcc	r0, [pc, #48]	@ (c0de31c8 <tEdwards_scalarMul+0x3c>)
c0de3198:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de319a:	4605      	mov	r5, r0
c0de319c:	20ca      	movs	r0, #202	@ 0xca
c0de319e:	6528      	str	r0, [r5, #80]	@ 0x50
c0de31a0:	a801      	add	r0, sp, #4
c0de31a2:	f008 fa73 	bl	c0deb68c <cx_bn_alloc_init>
c0de31a6:	b100      	cbz	r0, c0de31aa <tEdwards_scalarMul+0x1e>
c0de31a8:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de31aa:	20b3      	movs	r0, #179	@ 0xb3
c0de31ac:	9b06      	ldr	r3, [sp, #24]
c0de31ae:	4621      	mov	r1, r4
c0de31b0:	6528      	str	r0, [r5, #80]	@ 0x50
c0de31b2:	aa01      	add	r2, sp, #4
c0de31b4:	4628      	mov	r0, r5
c0de31b6:	f7ff ff83 	bl	c0de30c0 <tEdwards_scalarMul_bn>
c0de31ba:	2800      	cmp	r0, #0
c0de31bc:	d1f4      	bne.n	c0de31a8 <tEdwards_scalarMul+0x1c>
c0de31be:	a801      	add	r0, sp, #4
c0de31c0:	f008 fa70 	bl	c0deb6a4 <cx_bn_destroy>
c0de31c4:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de31c6:	bf00      	nop
c0de31c8:	5a4b4e01 	.word	0x5a4b4e01

c0de31cc <OUTLINED_FUNCTION_0>:
c0de31cc:	4633      	mov	r3, r6
c0de31ce:	f008 bb3f 	b.w	c0deb850 <cx_mont_mul>

c0de31d2 <OUTLINED_FUNCTION_1>:
c0de31d2:	462b      	mov	r3, r5
c0de31d4:	f008 bb3c 	b.w	c0deb850 <cx_mont_mul>

c0de31d8 <OUTLINED_FUNCTION_2>:
c0de31d8:	4633      	mov	r3, r6
c0de31da:	460a      	mov	r2, r1
c0de31dc:	f008 bb38 	b.w	c0deb850 <cx_mont_mul>

c0de31e0 <OUTLINED_FUNCTION_3>:
c0de31e0:	462a      	mov	r2, r5
c0de31e2:	4601      	mov	r1, r0
c0de31e4:	f008 bb1c 	b.w	c0deb820 <cx_mont_to_montgomery>

c0de31e8 <OUTLINED_FUNCTION_4>:
c0de31e8:	4620      	mov	r0, r4
c0de31ea:	f850 1b34 	ldr.w	r1, [r0], #52
c0de31ee:	f008 ba43 	b.w	c0deb678 <cx_bn_alloc>

c0de31f2 <OUTLINED_FUNCTION_5>:
c0de31f2:	4620      	mov	r0, r4
c0de31f4:	f850 1b48 	ldr.w	r1, [r0], #72
c0de31f8:	f008 ba3e 	b.w	c0deb678 <cx_bn_alloc>

c0de31fc <OUTLINED_FUNCTION_6>:
c0de31fc:	4620      	mov	r0, r4
c0de31fe:	f850 1b40 	ldr.w	r1, [r0], #64
c0de3202:	f008 ba39 	b.w	c0deb678 <cx_bn_alloc>

c0de3206 <OUTLINED_FUNCTION_7>:
c0de3206:	4620      	mov	r0, r4
c0de3208:	f850 1b38 	ldr.w	r1, [r0], #56
c0de320c:	f008 ba34 	b.w	c0deb678 <cx_bn_alloc>

c0de3210 <OUTLINED_FUNCTION_8>:
c0de3210:	4620      	mov	r0, r4
c0de3212:	f850 1b30 	ldr.w	r1, [r0], #48
c0de3216:	f008 ba2f 	b.w	c0deb678 <cx_bn_alloc>

c0de321a <OUTLINED_FUNCTION_9>:
c0de321a:	4620      	mov	r0, r4
c0de321c:	f850 1b44 	ldr.w	r1, [r0], #68
c0de3220:	f008 ba2a 	b.w	c0deb678 <cx_bn_alloc>

c0de3224 <OUTLINED_FUNCTION_10>:
c0de3224:	4620      	mov	r0, r4
c0de3226:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de322a:	f008 ba25 	b.w	c0deb678 <cx_bn_alloc>

c0de322e <OUTLINED_FUNCTION_11>:
c0de322e:	6860      	ldr	r0, [r4, #4]
c0de3230:	f008 ba58 	b.w	c0deb6e4 <cx_bn_copy>

c0de3234 <grain_lfsr_advance>:
c0de3234:	b5b0      	push	{r4, r5, r7, lr}
c0de3236:	68c2      	ldr	r2, [r0, #12]
c0de3238:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de323c:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de3240:	ea4f 0234 	mov.w	r2, r4, rrx
c0de3244:	07e4      	lsls	r4, r4, #31
c0de3246:	60c5      	str	r5, [r0, #12]
c0de3248:	07dd      	lsls	r5, r3, #31
c0de324a:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de324e:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de3252:	6044      	str	r4, [r0, #4]
c0de3254:	4c15      	ldr	r4, [pc, #84]	@ (c0de32ac <grain_lfsr_advance+0x78>)
c0de3256:	6005      	str	r5, [r0, #0]
c0de3258:	4021      	ands	r1, r4
c0de325a:	4c15      	ldr	r4, [pc, #84]	@ (c0de32b0 <grain_lfsr_advance+0x7c>)
c0de325c:	4023      	ands	r3, r4
c0de325e:	4419      	add	r1, r3
c0de3260:	0c0c      	lsrs	r4, r1, #16
c0de3262:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de3266:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de326a:	4421      	add	r1, r4
c0de326c:	0a0c      	lsrs	r4, r1, #8
c0de326e:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de3272:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de3276:	4061      	eors	r1, r4
c0de3278:	090c      	lsrs	r4, r1, #4
c0de327a:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de327e:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de3282:	4061      	eors	r1, r4
c0de3284:	088c      	lsrs	r4, r1, #2
c0de3286:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de328a:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de328e:	4061      	eors	r1, r4
c0de3290:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de3294:	ea4f 0331 	mov.w	r3, r1, rrx
c0de3298:	4059      	eors	r1, r3
c0de329a:	f001 0101 	and.w	r1, r1, #1
c0de329e:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de32a2:	6082      	str	r2, [r0, #8]
c0de32a4:	4608      	mov	r0, r1
c0de32a6:	2100      	movs	r1, #0
c0de32a8:	bdb0      	pop	{r4, r5, r7, pc}
c0de32aa:	bf00      	nop
c0de32ac:	00802001 	.word	0x00802001
c0de32b0:	40080040 	.word	0x40080040

c0de32b4 <next64_graingen>:
c0de32b4:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de32b8:	460c      	mov	r4, r1
c0de32ba:	4605      	mov	r5, r0
c0de32bc:	f04f 0a00 	mov.w	sl, #0
c0de32c0:	f04f 0800 	mov.w	r8, #0
c0de32c4:	2700      	movs	r7, #0
c0de32c6:	42a7      	cmp	r7, r4
c0de32c8:	d215      	bcs.n	c0de32f6 <next64_graingen+0x42>
c0de32ca:	4628      	mov	r0, r5
c0de32cc:	f7ff ffb2 	bl	c0de3234 <grain_lfsr_advance>
c0de32d0:	4606      	mov	r6, r0
c0de32d2:	4628      	mov	r0, r5
c0de32d4:	f7ff ffae 	bl	c0de3234 <grain_lfsr_advance>
c0de32d8:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de32dc:	0781      	lsls	r1, r0, #30
c0de32de:	d5f2      	bpl.n	c0de32c6 <next64_graingen+0x12>
c0de32e0:	f000 0001 	and.w	r0, r0, #1
c0de32e4:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de32e8:	3701      	adds	r7, #1
c0de32ea:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de32ee:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de32f2:	4682      	mov	sl, r0
c0de32f4:	e7e7      	b.n	c0de32c6 <next64_graingen+0x12>
c0de32f6:	4650      	mov	r0, sl
c0de32f8:	4641      	mov	r1, r8
c0de32fa:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de3300 <init_generator>:
c0de3300:	b5b0      	push	{r4, r5, r7, lr}
c0de3302:	4a09      	ldr	r2, [pc, #36]	@ (c0de3328 <init_generator+0x28>)
c0de3304:	4b09      	ldr	r3, [pc, #36]	@ (c0de332c <init_generator+0x2c>)
c0de3306:	4604      	mov	r4, r0
c0de3308:	25a0      	movs	r5, #160	@ 0xa0
c0de330a:	2000      	movs	r0, #0
c0de330c:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de3310:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de3314:	e9c4 3200 	strd	r3, r2, [r4]
c0de3318:	b125      	cbz	r5, c0de3324 <init_generator+0x24>
c0de331a:	4620      	mov	r0, r4
c0de331c:	f7ff ff8a 	bl	c0de3234 <grain_lfsr_advance>
c0de3320:	3d01      	subs	r5, #1
c0de3322:	e7f9      	b.n	c0de3318 <init_generator+0x18>
c0de3324:	bdb0      	pop	{r4, r5, r7, pc}
c0de3326:	bf00      	nop
c0de3328:	fffcf010 	.word	0xfffcf010
c0de332c:	1801fc02 	.word	0x1801fc02

c0de3330 <gen_integer>:
c0de3330:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3334:	4f20      	ldr	r7, [pc, #128]	@ (c0de33b8 <gen_integer+0x88>)
c0de3336:	4e22      	ldr	r6, [pc, #136]	@ (c0de33c0 <gen_integer+0x90>)
c0de3338:	4605      	mov	r5, r0
c0de333a:	460c      	mov	r4, r1
c0de333c:	2000      	movs	r0, #0
c0de333e:	46b8      	mov	r8, r7
c0de3340:	4f1e      	ldr	r7, [pc, #120]	@ (c0de33bc <gen_integer+0x8c>)
c0de3342:	447e      	add	r6, pc
c0de3344:	b9f8      	cbnz	r0, c0de3386 <gen_integer+0x56>
c0de3346:	4628      	mov	r0, r5
c0de3348:	213e      	movs	r1, #62	@ 0x3e
c0de334a:	47b0      	blx	r6
c0de334c:	e9c4 0100 	strd	r0, r1, [r4]
c0de3350:	4628      	mov	r0, r5
c0de3352:	2140      	movs	r1, #64	@ 0x40
c0de3354:	47b0      	blx	r6
c0de3356:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de335a:	4628      	mov	r0, r5
c0de335c:	2140      	movs	r1, #64	@ 0x40
c0de335e:	47b0      	blx	r6
c0de3360:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3364:	4628      	mov	r0, r5
c0de3366:	2140      	movs	r1, #64	@ 0x40
c0de3368:	47b0      	blx	r6
c0de336a:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de336e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de3372:	463a      	mov	r2, r7
c0de3374:	1bc0      	subs	r0, r0, r7
c0de3376:	4640      	mov	r0, r8
c0de3378:	eb71 0008 	sbcs.w	r0, r1, r8
c0de337c:	f04f 0000 	mov.w	r0, #0
c0de3380:	bf38      	it	cc
c0de3382:	2001      	movcc	r0, #1
c0de3384:	e7de      	b.n	c0de3344 <gen_integer+0x14>
c0de3386:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de338a:	4d0e      	ldr	r5, [pc, #56]	@ (c0de33c4 <gen_integer+0x94>)
c0de338c:	447d      	add	r5, pc
c0de338e:	47a8      	blx	r5
c0de3390:	e9c4 0100 	strd	r0, r1, [r4]
c0de3394:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de3398:	47a8      	blx	r5
c0de339a:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de339e:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de33a2:	47a8      	blx	r5
c0de33a4:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de33a8:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de33ac:	47a8      	blx	r5
c0de33ae:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de33b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de33b6:	bf00      	nop
c0de33b8:	305a4b4e 	.word	0x305a4b4e
c0de33bc:	4f582122 	.word	0x4f582122
c0de33c0:	ffffff6f 	.word	0xffffff6f
c0de33c4:	00000039 	.word	0x00000039

c0de33c8 <rev64>:
c0de33c8:	ba0a      	rev	r2, r1
c0de33ca:	ba01      	rev	r1, r0
c0de33cc:	4610      	mov	r0, r2
c0de33ce:	4770      	bx	lr

c0de33d0 <Poseidon_getNext_RC>:
c0de33d0:	30c0      	adds	r0, #192	@ 0xc0
c0de33d2:	f7ff bfad 	b.w	c0de3330 <gen_integer>
	...

c0de33d8 <Poseidon_alloc_init>:
c0de33d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de33dc:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de33e0:	4604      	mov	r4, r0
c0de33e2:	30c0      	adds	r0, #192	@ 0xc0
c0de33e4:	461e      	mov	r6, r3
c0de33e6:	4617      	mov	r7, r2
c0de33e8:	460d      	mov	r5, r1
c0de33ea:	f7ff ff89 	bl	c0de3300 <init_generator>
c0de33ee:	492c      	ldr	r1, [pc, #176]	@ (c0de34a0 <Poseidon_alloc_init+0xc8>)
c0de33f0:	46e8      	mov	r8, sp
c0de33f2:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de33f6:	4640      	mov	r0, r8
c0de33f8:	4479      	add	r1, pc
c0de33fa:	f008 fb1d 	bl	c0deba38 <__aeabi_memcpy>
c0de33fe:	2000      	movs	r0, #0
c0de3400:	7325      	strb	r5, [r4, #12]
c0de3402:	6166      	str	r6, [r4, #20]
c0de3404:	4621      	mov	r1, r4
c0de3406:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de340a:	1c78      	adds	r0, r7, #1
c0de340c:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de3410:	6830      	ldr	r0, [r6, #0]
c0de3412:	f008 f951 	bl	c0deb6b8 <cx_bn_nbytes>
c0de3416:	b930      	cbnz	r0, c0de3426 <Poseidon_alloc_init+0x4e>
c0de3418:	4620      	mov	r0, r4
c0de341a:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de341e:	4631      	mov	r1, r6
c0de3420:	f008 f92a 	bl	c0deb678 <cx_bn_alloc>
c0de3424:	b118      	cbz	r0, c0de342e <Poseidon_alloc_init+0x56>
c0de3426:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de342a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de342e:	68a0      	ldr	r0, [r4, #8]
c0de3430:	2500      	movs	r5, #0
c0de3432:	4285      	cmp	r5, r0
c0de3434:	d230      	bcs.n	c0de3498 <Poseidon_alloc_init+0xc0>
c0de3436:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de343a:	4631      	mov	r1, r6
c0de343c:	f107 0018 	add.w	r0, r7, #24
c0de3440:	f008 f91a 	bl	c0deb678 <cx_bn_alloc>
c0de3444:	2800      	cmp	r0, #0
c0de3446:	d1ee      	bne.n	c0de3426 <Poseidon_alloc_init+0x4e>
c0de3448:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de344c:	4631      	mov	r1, r6
c0de344e:	f008 f913 	bl	c0deb678 <cx_bn_alloc>
c0de3452:	2800      	cmp	r0, #0
c0de3454:	d1e7      	bne.n	c0de3426 <Poseidon_alloc_init+0x4e>
c0de3456:	2700      	movs	r7, #0
c0de3458:	68a0      	ldr	r0, [r4, #8]
c0de345a:	4287      	cmp	r7, r0
c0de345c:	d21a      	bcs.n	c0de3494 <Poseidon_alloc_init+0xbc>
c0de345e:	fb05 7000 	mla	r0, r5, r0, r7
c0de3462:	4631      	mov	r1, r6
c0de3464:	4633      	mov	r3, r6
c0de3466:	fb00 8206 	mla	r2, r0, r6, r8
c0de346a:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de346e:	3030      	adds	r0, #48	@ 0x30
c0de3470:	f008 f90c 	bl	c0deb68c <cx_bn_alloc_init>
c0de3474:	2800      	cmp	r0, #0
c0de3476:	d1d6      	bne.n	c0de3426 <Poseidon_alloc_init+0x4e>
c0de3478:	68a0      	ldr	r0, [r4, #8]
c0de347a:	6962      	ldr	r2, [r4, #20]
c0de347c:	fb05 7000 	mla	r0, r5, r0, r7
c0de3480:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de3484:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de3486:	4601      	mov	r1, r0
c0de3488:	f008 f9ca 	bl	c0deb820 <cx_mont_to_montgomery>
c0de348c:	3701      	adds	r7, #1
c0de348e:	2800      	cmp	r0, #0
c0de3490:	d0e2      	beq.n	c0de3458 <Poseidon_alloc_init+0x80>
c0de3492:	e7c8      	b.n	c0de3426 <Poseidon_alloc_init+0x4e>
c0de3494:	3501      	adds	r5, #1
c0de3496:	e7cc      	b.n	c0de3432 <Poseidon_alloc_init+0x5a>
c0de3498:	2001      	movs	r0, #1
c0de349a:	6120      	str	r0, [r4, #16]
c0de349c:	2000      	movs	r0, #0
c0de349e:	e7c2      	b.n	c0de3426 <Poseidon_alloc_init+0x4e>
c0de34a0:	0000ae88 	.word	0x0000ae88

c0de34a4 <Poseidon>:
c0de34a4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de34a8:	b08c      	sub	sp, #48	@ 0x30
c0de34aa:	4606      	mov	r6, r0
c0de34ac:	6900      	ldr	r0, [r0, #16]
c0de34ae:	2801      	cmp	r0, #1
c0de34b0:	f040 80b4 	bne.w	c0de361c <Poseidon+0x178>
c0de34b4:	69b0      	ldr	r0, [r6, #24]
c0de34b6:	461f      	mov	r7, r3
c0de34b8:	4692      	mov	sl, r2
c0de34ba:	f008 f91d 	bl	c0deb6f8 <cx_bn_set_u32>
c0de34be:	2800      	cmp	r0, #0
c0de34c0:	f040 80ad 	bne.w	c0de361e <Poseidon+0x17a>
c0de34c4:	f106 000c 	add.w	r0, r6, #12
c0de34c8:	f106 0818 	add.w	r8, r6, #24
c0de34cc:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de34d0:	9001      	str	r0, [sp, #4]
c0de34d2:	2000      	movs	r0, #0
c0de34d4:	2844      	cmp	r0, #68	@ 0x44
c0de34d6:	f000 80ae 	beq.w	c0de3636 <Poseidon+0x192>
c0de34da:	6834      	ldr	r4, [r6, #0]
c0de34dc:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de34e0:	f04f 0a00 	mov.w	sl, #0
c0de34e4:	68b0      	ldr	r0, [r6, #8]
c0de34e6:	4582      	cmp	sl, r0
c0de34e8:	d224      	bcs.n	c0de3534 <Poseidon+0x90>
c0de34ea:	ad04      	add	r5, sp, #16
c0de34ec:	4658      	mov	r0, fp
c0de34ee:	4629      	mov	r1, r5
c0de34f0:	f7ff ff1e 	bl	c0de3330 <gen_integer>
c0de34f4:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de34f8:	4629      	mov	r1, r5
c0de34fa:	4622      	mov	r2, r4
c0de34fc:	f008 f8e6 	bl	c0deb6cc <cx_bn_init>
c0de3500:	2800      	cmp	r0, #0
c0de3502:	f040 808c 	bne.w	c0de361e <Poseidon+0x17a>
c0de3506:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de350a:	6972      	ldr	r2, [r6, #20]
c0de350c:	4601      	mov	r1, r0
c0de350e:	f008 f987 	bl	c0deb820 <cx_mont_to_montgomery>
c0de3512:	2800      	cmp	r0, #0
c0de3514:	f040 8083 	bne.w	c0de361e <Poseidon+0x17a>
c0de3518:	6972      	ldr	r2, [r6, #20]
c0de351a:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de351e:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de3522:	6813      	ldr	r3, [r2, #0]
c0de3524:	4602      	mov	r2, r0
c0de3526:	f008 f921 	bl	c0deb76c <cx_bn_mod_add>
c0de352a:	f10a 0a01 	add.w	sl, sl, #1
c0de352e:	2800      	cmp	r0, #0
c0de3530:	d0d8      	beq.n	c0de34e4 <Poseidon+0x40>
c0de3532:	e074      	b.n	c0de361e <Poseidon+0x17a>
c0de3534:	9902      	ldr	r1, [sp, #8]
c0de3536:	2904      	cmp	r1, #4
c0de3538:	d301      	bcc.n	c0de353e <Poseidon+0x9a>
c0de353a:	2940      	cmp	r1, #64	@ 0x40
c0de353c:	d323      	bcc.n	c0de3586 <Poseidon+0xe2>
c0de353e:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3542:	2400      	movs	r4, #0
c0de3544:	4284      	cmp	r4, r0
c0de3546:	d22b      	bcs.n	c0de35a0 <Poseidon+0xfc>
c0de3548:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de354c:	6973      	ldr	r3, [r6, #20]
c0de354e:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3552:	460a      	mov	r2, r1
c0de3554:	f008 f97c 	bl	c0deb850 <cx_mont_mul>
c0de3558:	2800      	cmp	r0, #0
c0de355a:	d160      	bne.n	c0de361e <Poseidon+0x17a>
c0de355c:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de3560:	6973      	ldr	r3, [r6, #20]
c0de3562:	460a      	mov	r2, r1
c0de3564:	f008 f974 	bl	c0deb850 <cx_mont_mul>
c0de3568:	2800      	cmp	r0, #0
c0de356a:	d158      	bne.n	c0de361e <Poseidon+0x17a>
c0de356c:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de3570:	6973      	ldr	r3, [r6, #20]
c0de3572:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de3576:	4601      	mov	r1, r0
c0de3578:	f008 f96a 	bl	c0deb850 <cx_mont_mul>
c0de357c:	2800      	cmp	r0, #0
c0de357e:	d14e      	bne.n	c0de361e <Poseidon+0x17a>
c0de3580:	68b0      	ldr	r0, [r6, #8]
c0de3582:	3401      	adds	r4, #1
c0de3584:	e7de      	b.n	c0de3544 <Poseidon+0xa0>
c0de3586:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de358a:	9a01      	ldr	r2, [sp, #4]
c0de358c:	2301      	movs	r3, #1
c0de358e:	9100      	str	r1, [sp, #0]
c0de3590:	4601      	mov	r1, r0
c0de3592:	f008 f969 	bl	c0deb868 <cx_mont_pow>
c0de3596:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de359a:	2800      	cmp	r0, #0
c0de359c:	d13f      	bne.n	c0de361e <Poseidon+0x17a>
c0de359e:	68b0      	ldr	r0, [r6, #8]
c0de35a0:	2500      	movs	r5, #0
c0de35a2:	4285      	cmp	r5, r0
c0de35a4:	d229      	bcs.n	c0de35fa <Poseidon+0x156>
c0de35a6:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de35aa:	2100      	movs	r1, #0
c0de35ac:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de35b0:	f008 f8a2 	bl	c0deb6f8 <cx_bn_set_u32>
c0de35b4:	bb98      	cbnz	r0, c0de361e <Poseidon+0x17a>
c0de35b6:	9503      	str	r5, [sp, #12]
c0de35b8:	2500      	movs	r5, #0
c0de35ba:	68b0      	ldr	r0, [r6, #8]
c0de35bc:	4285      	cmp	r5, r0
c0de35be:	d219      	bcs.n	c0de35f4 <Poseidon+0x150>
c0de35c0:	9903      	ldr	r1, [sp, #12]
c0de35c2:	6973      	ldr	r3, [r6, #20]
c0de35c4:	fb01 5000 	mla	r0, r1, r0, r5
c0de35c8:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de35cc:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de35d0:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de35d2:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de35d6:	f008 f93b 	bl	c0deb850 <cx_mont_mul>
c0de35da:	bb00      	cbnz	r0, c0de361e <Poseidon+0x17a>
c0de35dc:	6971      	ldr	r1, [r6, #20]
c0de35de:	6820      	ldr	r0, [r4, #0]
c0de35e0:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de35e4:	680b      	ldr	r3, [r1, #0]
c0de35e6:	4601      	mov	r1, r0
c0de35e8:	f008 f8c0 	bl	c0deb76c <cx_bn_mod_add>
c0de35ec:	3501      	adds	r5, #1
c0de35ee:	2800      	cmp	r0, #0
c0de35f0:	d0e3      	beq.n	c0de35ba <Poseidon+0x116>
c0de35f2:	e014      	b.n	c0de361e <Poseidon+0x17a>
c0de35f4:	9d03      	ldr	r5, [sp, #12]
c0de35f6:	3501      	adds	r5, #1
c0de35f8:	e7d3      	b.n	c0de35a2 <Poseidon+0xfe>
c0de35fa:	2400      	movs	r4, #0
c0de35fc:	4284      	cmp	r4, r0
c0de35fe:	d20a      	bcs.n	c0de3616 <Poseidon+0x172>
c0de3600:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de3604:	6988      	ldr	r0, [r1, #24]
c0de3606:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de360a:	f008 f86b 	bl	c0deb6e4 <cx_bn_copy>
c0de360e:	b930      	cbnz	r0, c0de361e <Poseidon+0x17a>
c0de3610:	68b0      	ldr	r0, [r6, #8]
c0de3612:	3401      	adds	r4, #1
c0de3614:	e7f2      	b.n	c0de35fc <Poseidon+0x158>
c0de3616:	9802      	ldr	r0, [sp, #8]
c0de3618:	3001      	adds	r0, #1
c0de361a:	e75b      	b.n	c0de34d4 <Poseidon+0x30>
c0de361c:	4808      	ldr	r0, [pc, #32]	@ (c0de3640 <Poseidon+0x19c>)
c0de361e:	b00c      	add	sp, #48	@ 0x30
c0de3620:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3624:	f858 1b04 	ldr.w	r1, [r8], #4
c0de3628:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de362c:	f008 f85a 	bl	c0deb6e4 <cx_bn_copy>
c0de3630:	3f01      	subs	r7, #1
c0de3632:	2800      	cmp	r0, #0
c0de3634:	d1f3      	bne.n	c0de361e <Poseidon+0x17a>
c0de3636:	2f00      	cmp	r7, #0
c0de3638:	d1f4      	bne.n	c0de3624 <Poseidon+0x180>
c0de363a:	2000      	movs	r0, #0
c0de363c:	e7ef      	b.n	c0de361e <Poseidon+0x17a>
c0de363e:	bf00      	nop
c0de3640:	5a4b4e02 	.word	0x5a4b4e02

c0de3644 <RFC9591_taggedHash>:
c0de3644:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3646:	b0d9      	sub	sp, #356	@ 0x164
c0de3648:	460e      	mov	r6, r1
c0de364a:	4607      	mov	r7, r0
c0de364c:	a858      	add	r0, sp, #352	@ 0x160
c0de364e:	2140      	movs	r1, #64	@ 0x40
c0de3650:	461c      	mov	r4, r3
c0de3652:	4615      	mov	r5, r2
c0de3654:	f008 f810 	bl	c0deb678 <cx_bn_alloc>
c0de3658:	bbd8      	cbnz	r0, c0de36d2 <RFC9591_taggedHash+0x8e>
c0de365a:	491f      	ldr	r1, [pc, #124]	@ (c0de36d8 <RFC9591_taggedHash+0x94>)
c0de365c:	4668      	mov	r0, sp
c0de365e:	221d      	movs	r2, #29
c0de3660:	4479      	add	r1, pc
c0de3662:	f008 f9e9 	bl	c0deba38 <__aeabi_memcpy>
c0de3666:	a808      	add	r0, sp, #32
c0de3668:	2109      	movs	r1, #9
c0de366a:	2240      	movs	r2, #64	@ 0x40
c0de366c:	f007 fd76 	bl	c0deb15c <cx_hash_init_ex>
c0de3670:	bb78      	cbnz	r0, c0de36d2 <RFC9591_taggedHash+0x8e>
c0de3672:	a808      	add	r0, sp, #32
c0de3674:	4669      	mov	r1, sp
c0de3676:	221d      	movs	r2, #29
c0de3678:	f007 fd75 	bl	c0deb166 <cx_hash_update>
c0de367c:	bb48      	cbnz	r0, c0de36d2 <RFC9591_taggedHash+0x8e>
c0de367e:	a808      	add	r0, sp, #32
c0de3680:	4639      	mov	r1, r7
c0de3682:	4632      	mov	r2, r6
c0de3684:	f007 fd6f 	bl	c0deb166 <cx_hash_update>
c0de3688:	bb18      	cbnz	r0, c0de36d2 <RFC9591_taggedHash+0x8e>
c0de368a:	a808      	add	r0, sp, #32
c0de368c:	4629      	mov	r1, r5
c0de368e:	4622      	mov	r2, r4
c0de3690:	f007 fd69 	bl	c0deb166 <cx_hash_update>
c0de3694:	b9e8      	cbnz	r0, c0de36d2 <RFC9591_taggedHash+0x8e>
c0de3696:	a808      	add	r0, sp, #32
c0de3698:	ae48      	add	r6, sp, #288	@ 0x120
c0de369a:	4631      	mov	r1, r6
c0de369c:	f007 fd59 	bl	c0deb152 <cx_hash_final>
c0de36a0:	b9b8      	cbnz	r0, c0de36d2 <RFC9591_taggedHash+0x8e>
c0de36a2:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de36a6:	2000      	movs	r0, #0
c0de36a8:	213f      	movs	r1, #63	@ 0x3f
c0de36aa:	2820      	cmp	r0, #32
c0de36ac:	d002      	beq.n	c0de36b4 <RFC9591_taggedHash+0x70>
c0de36ae:	f000 f8dd 	bl	c0de386c <OUTLINED_FUNCTION_3>
c0de36b2:	e7fa      	b.n	c0de36aa <RFC9591_taggedHash+0x66>
c0de36b4:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de36b6:	a948      	add	r1, sp, #288	@ 0x120
c0de36b8:	2240      	movs	r2, #64	@ 0x40
c0de36ba:	f008 f807 	bl	c0deb6cc <cx_bn_init>
c0de36be:	b940      	cbnz	r0, c0de36d2 <RFC9591_taggedHash+0x8e>
c0de36c0:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de36c2:	4628      	mov	r0, r5
c0de36c4:	4622      	mov	r2, r4
c0de36c6:	f008 f875 	bl	c0deb7b4 <cx_bn_reduce>
c0de36ca:	b910      	cbnz	r0, c0de36d2 <RFC9591_taggedHash+0x8e>
c0de36cc:	a858      	add	r0, sp, #352	@ 0x160
c0de36ce:	f007 ffe9 	bl	c0deb6a4 <cx_bn_destroy>
c0de36d2:	b059      	add	sp, #356	@ 0x164
c0de36d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de36d6:	bf00      	nop
c0de36d8:	0000b0a0 	.word	0x0000b0a0

c0de36dc <Babyfrost_H1>:
c0de36dc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de36de:	4605      	mov	r5, r0
c0de36e0:	206f      	movs	r0, #111	@ 0x6f
c0de36e2:	f000 f8b7 	bl	c0de3854 <OUTLINED_FUNCTION_1>
c0de36e6:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de36ea:	f000 f8ba 	bl	c0de3862 <OUTLINED_FUNCTION_2>
c0de36ee:	a803      	add	r0, sp, #12
c0de36f0:	f7ff ffa8 	bl	c0de3644 <RFC9591_taggedHash>
c0de36f4:	b004      	add	sp, #16
c0de36f6:	bdb0      	pop	{r4, r5, r7, pc}

c0de36f8 <Babyfrost_H3>:
c0de36f8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de36fa:	4605      	mov	r5, r0
c0de36fc:	2065      	movs	r0, #101	@ 0x65
c0de36fe:	460c      	mov	r4, r1
c0de3700:	e9cd 2300 	strd	r2, r3, [sp]
c0de3704:	2105      	movs	r1, #5
c0de3706:	f88d 000c 	strb.w	r0, [sp, #12]
c0de370a:	4804      	ldr	r0, [pc, #16]	@ (c0de371c <Babyfrost_H3+0x24>)
c0de370c:	462a      	mov	r2, r5
c0de370e:	4623      	mov	r3, r4
c0de3710:	9002      	str	r0, [sp, #8]
c0de3712:	a802      	add	r0, sp, #8
c0de3714:	f7ff ff96 	bl	c0de3644 <RFC9591_taggedHash>
c0de3718:	b004      	add	sp, #16
c0de371a:	bdb0      	pop	{r4, r5, r7, pc}
c0de371c:	636e6f6e 	.word	0x636e6f6e

c0de3720 <Babyfrost_H4>:
c0de3720:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3722:	4605      	mov	r5, r0
c0de3724:	2067      	movs	r0, #103	@ 0x67
c0de3726:	f000 f895 	bl	c0de3854 <OUTLINED_FUNCTION_1>
c0de372a:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de372e:	f000 f898 	bl	c0de3862 <OUTLINED_FUNCTION_2>
c0de3732:	a803      	add	r0, sp, #12
c0de3734:	f7ff ff86 	bl	c0de3644 <RFC9591_taggedHash>
c0de3738:	b004      	add	sp, #16
c0de373a:	bdb0      	pop	{r4, r5, r7, pc}

c0de373c <Babyfrost_H5>:
c0de373c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de373e:	4605      	mov	r5, r0
c0de3740:	206d      	movs	r0, #109	@ 0x6d
c0de3742:	f000 f887 	bl	c0de3854 <OUTLINED_FUNCTION_1>
c0de3746:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de374a:	f000 f88a 	bl	c0de3862 <OUTLINED_FUNCTION_2>
c0de374e:	a803      	add	r0, sp, #12
c0de3750:	f7ff ff78 	bl	c0de3644 <RFC9591_taggedHash>
c0de3754:	b004      	add	sp, #16
c0de3756:	bdb0      	pop	{r4, r5, r7, pc}

c0de3758 <zkn_frost_hash_init>:
c0de3758:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de375a:	461d      	mov	r5, r3
c0de375c:	4604      	mov	r4, r0
c0de375e:	f007 fcfd 	bl	c0deb15c <cx_hash_init_ex>
c0de3762:	b938      	cbnz	r0, c0de3774 <zkn_frost_hash_init+0x1c>
c0de3764:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de3768:	9e08      	ldr	r6, [sp, #32]
c0de376a:	4620      	mov	r0, r4
c0de376c:	4629      	mov	r1, r5
c0de376e:	f007 fcfa 	bl	c0deb166 <cx_hash_update>
c0de3772:	b100      	cbz	r0, c0de3776 <zkn_frost_hash_init+0x1e>
c0de3774:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3776:	4620      	mov	r0, r4
c0de3778:	4639      	mov	r1, r7
c0de377a:	4632      	mov	r2, r6
c0de377c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de3780:	f007 bcf1 	b.w	c0deb166 <cx_hash_update>

c0de3784 <zkn_frost_H1_init>:
c0de3784:	b570      	push	{r4, r5, r6, lr}
c0de3786:	b08c      	sub	sp, #48	@ 0x30
c0de3788:	4604      	mov	r4, r0
c0de378a:	206f      	movs	r0, #111	@ 0x6f
c0de378c:	221d      	movs	r2, #29
c0de378e:	261d      	movs	r6, #29
c0de3790:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3794:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3798:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de379c:	ad03      	add	r5, sp, #12
c0de379e:	4905      	ldr	r1, [pc, #20]	@ (c0de37b4 <zkn_frost_H1_init+0x30>)
c0de37a0:	4628      	mov	r0, r5
c0de37a2:	4479      	add	r1, pc
c0de37a4:	f008 f948 	bl	c0deba38 <__aeabi_memcpy>
c0de37a8:	a90b      	add	r1, sp, #44	@ 0x2c
c0de37aa:	f000 f849 	bl	c0de3840 <OUTLINED_FUNCTION_0>
c0de37ae:	b00c      	add	sp, #48	@ 0x30
c0de37b0:	bd70      	pop	{r4, r5, r6, pc}
c0de37b2:	bf00      	nop
c0de37b4:	0000af5e 	.word	0x0000af5e

c0de37b8 <zkn_frost_H5_init>:
c0de37b8:	b570      	push	{r4, r5, r6, lr}
c0de37ba:	b08c      	sub	sp, #48	@ 0x30
c0de37bc:	4604      	mov	r4, r0
c0de37be:	206d      	movs	r0, #109	@ 0x6d
c0de37c0:	221d      	movs	r2, #29
c0de37c2:	261d      	movs	r6, #29
c0de37c4:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de37c8:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de37cc:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de37d0:	ad03      	add	r5, sp, #12
c0de37d2:	4905      	ldr	r1, [pc, #20]	@ (c0de37e8 <zkn_frost_H5_init+0x30>)
c0de37d4:	4628      	mov	r0, r5
c0de37d6:	4479      	add	r1, pc
c0de37d8:	f008 f92e 	bl	c0deba38 <__aeabi_memcpy>
c0de37dc:	a90b      	add	r1, sp, #44	@ 0x2c
c0de37de:	f000 f82f 	bl	c0de3840 <OUTLINED_FUNCTION_0>
c0de37e2:	b00c      	add	sp, #48	@ 0x30
c0de37e4:	bd70      	pop	{r4, r5, r6, pc}
c0de37e6:	bf00      	nop
c0de37e8:	0000af2a 	.word	0x0000af2a

c0de37ec <zkn_frost_hash_update>:
c0de37ec:	f007 bcbb 	b.w	c0deb166 <cx_hash_update>

c0de37f0 <zkn_frost_hash_final>:
c0de37f0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de37f2:	b091      	sub	sp, #68	@ 0x44
c0de37f4:	460c      	mov	r4, r1
c0de37f6:	4607      	mov	r7, r0
c0de37f8:	a810      	add	r0, sp, #64	@ 0x40
c0de37fa:	2140      	movs	r1, #64	@ 0x40
c0de37fc:	4615      	mov	r5, r2
c0de37fe:	f007 ff3b 	bl	c0deb678 <cx_bn_alloc>
c0de3802:	b9d8      	cbnz	r0, c0de383c <zkn_frost_hash_final+0x4c>
c0de3804:	466e      	mov	r6, sp
c0de3806:	4638      	mov	r0, r7
c0de3808:	4631      	mov	r1, r6
c0de380a:	f007 fca2 	bl	c0deb152 <cx_hash_final>
c0de380e:	b9a8      	cbnz	r0, c0de383c <zkn_frost_hash_final+0x4c>
c0de3810:	2000      	movs	r0, #0
c0de3812:	213f      	movs	r1, #63	@ 0x3f
c0de3814:	2820      	cmp	r0, #32
c0de3816:	d002      	beq.n	c0de381e <zkn_frost_hash_final+0x2e>
c0de3818:	f000 f828 	bl	c0de386c <OUTLINED_FUNCTION_3>
c0de381c:	e7fa      	b.n	c0de3814 <zkn_frost_hash_final+0x24>
c0de381e:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de3820:	4669      	mov	r1, sp
c0de3822:	2240      	movs	r2, #64	@ 0x40
c0de3824:	f007 ff52 	bl	c0deb6cc <cx_bn_init>
c0de3828:	b940      	cbnz	r0, c0de383c <zkn_frost_hash_final+0x4c>
c0de382a:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de382c:	4628      	mov	r0, r5
c0de382e:	4622      	mov	r2, r4
c0de3830:	f007 ffc0 	bl	c0deb7b4 <cx_bn_reduce>
c0de3834:	b910      	cbnz	r0, c0de383c <zkn_frost_hash_final+0x4c>
c0de3836:	a810      	add	r0, sp, #64	@ 0x40
c0de3838:	f007 ff34 	bl	c0deb6a4 <cx_bn_destroy>
c0de383c:	b011      	add	sp, #68	@ 0x44
c0de383e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3840 <OUTLINED_FUNCTION_0>:
c0de3840:	2003      	movs	r0, #3
c0de3842:	2240      	movs	r2, #64	@ 0x40
c0de3844:	462b      	mov	r3, r5
c0de3846:	e9cd 6100 	strd	r6, r1, [sp]
c0de384a:	9002      	str	r0, [sp, #8]
c0de384c:	4620      	mov	r0, r4
c0de384e:	2109      	movs	r1, #9
c0de3850:	f7ff bf82 	b.w	c0de3758 <zkn_frost_hash_init>

c0de3854 <OUTLINED_FUNCTION_1>:
c0de3854:	460c      	mov	r4, r1
c0de3856:	e9cd 2300 	strd	r2, r3, [sp]
c0de385a:	2103      	movs	r1, #3
c0de385c:	f88d 000e 	strb.w	r0, [sp, #14]
c0de3860:	4770      	bx	lr

c0de3862 <OUTLINED_FUNCTION_2>:
c0de3862:	462a      	mov	r2, r5
c0de3864:	4623      	mov	r3, r4
c0de3866:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de386a:	4770      	bx	lr

c0de386c <OUTLINED_FUNCTION_3>:
c0de386c:	5c32      	ldrb	r2, [r6, r0]
c0de386e:	5c73      	ldrb	r3, [r6, r1]
c0de3870:	5433      	strb	r3, [r6, r0]
c0de3872:	5472      	strb	r2, [r6, r1]
c0de3874:	3901      	subs	r1, #1
c0de3876:	3001      	adds	r0, #1
c0de3878:	4770      	bx	lr

c0de387a <os_io_handle_default_apdu>:
c0de387a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de387c:	b09d      	sub	sp, #116	@ 0x74
c0de387e:	4615      	mov	r5, r2
c0de3880:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de3882:	b3c8      	cbz	r0, c0de38f8 <os_io_handle_default_apdu+0x7e>
c0de3884:	b3c1      	cbz	r1, c0de38f8 <os_io_handle_default_apdu+0x7e>
c0de3886:	b3bd      	cbz	r5, c0de38f8 <os_io_handle_default_apdu+0x7e>
c0de3888:	461c      	mov	r4, r3
c0de388a:	b3ab      	cbz	r3, c0de38f8 <os_io_handle_default_apdu+0x7e>
c0de388c:	b10a      	cbz	r2, c0de3892 <os_io_handle_default_apdu+0x18>
c0de388e:	2100      	movs	r1, #0
c0de3890:	7011      	strb	r1, [r2, #0]
c0de3892:	7801      	ldrb	r1, [r0, #0]
c0de3894:	29b0      	cmp	r1, #176	@ 0xb0
c0de3896:	d131      	bne.n	c0de38fc <os_io_handle_default_apdu+0x82>
c0de3898:	7841      	ldrb	r1, [r0, #1]
c0de389a:	29a7      	cmp	r1, #167	@ 0xa7
c0de389c:	d031      	beq.n	c0de3902 <os_io_handle_default_apdu+0x88>
c0de389e:	2906      	cmp	r1, #6
c0de38a0:	d036      	beq.n	c0de3910 <os_io_handle_default_apdu+0x96>
c0de38a2:	2901      	cmp	r1, #1
c0de38a4:	d131      	bne.n	c0de390a <os_io_handle_default_apdu+0x90>
c0de38a6:	7881      	ldrb	r1, [r0, #2]
c0de38a8:	bb79      	cbnz	r1, c0de390a <os_io_handle_default_apdu+0x90>
c0de38aa:	78c0      	ldrb	r0, [r0, #3]
c0de38ac:	bb68      	cbnz	r0, c0de390a <os_io_handle_default_apdu+0x90>
c0de38ae:	6820      	ldr	r0, [r4, #0]
c0de38b0:	2100      	movs	r1, #0
c0de38b2:	6021      	str	r1, [r4, #0]
c0de38b4:	2803      	cmp	r0, #3
c0de38b6:	d321      	bcc.n	c0de38fc <os_io_handle_default_apdu+0x82>
c0de38b8:	2601      	movs	r6, #1
c0de38ba:	1ec7      	subs	r7, r0, #3
c0de38bc:	6026      	str	r6, [r4, #0]
c0de38be:	702e      	strb	r6, [r5, #0]
c0de38c0:	6820      	ldr	r0, [r4, #0]
c0de38c2:	1a3a      	subs	r2, r7, r0
c0de38c4:	4428      	add	r0, r5
c0de38c6:	1c41      	adds	r1, r0, #1
c0de38c8:	2001      	movs	r0, #1
c0de38ca:	f008 f847 	bl	c0deb95c <os_registry_get_current_app_tag>
c0de38ce:	f000 f83f 	bl	c0de3950 <OUTLINED_FUNCTION_0>
c0de38d2:	6020      	str	r0, [r4, #0]
c0de38d4:	1a3a      	subs	r2, r7, r0
c0de38d6:	4428      	add	r0, r5
c0de38d8:	1c41      	adds	r1, r0, #1
c0de38da:	2002      	movs	r0, #2
c0de38dc:	f008 f83e 	bl	c0deb95c <os_registry_get_current_app_tag>
c0de38e0:	f000 f836 	bl	c0de3950 <OUTLINED_FUNCTION_0>
c0de38e4:	1c41      	adds	r1, r0, #1
c0de38e6:	6021      	str	r1, [r4, #0]
c0de38e8:	542e      	strb	r6, [r5, r0]
c0de38ea:	f008 f823 	bl	c0deb934 <os_flags>
c0de38ee:	6821      	ldr	r1, [r4, #0]
c0de38f0:	1c4a      	adds	r2, r1, #1
c0de38f2:	6022      	str	r2, [r4, #0]
c0de38f4:	5468      	strb	r0, [r5, r1]
c0de38f6:	e028      	b.n	c0de394a <os_io_handle_default_apdu+0xd0>
c0de38f8:	7814      	ldrb	r4, [r2, #0]
c0de38fa:	e01e      	b.n	c0de393a <os_io_handle_default_apdu+0xc0>
c0de38fc:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de3900:	e01b      	b.n	c0de393a <os_io_handle_default_apdu+0xc0>
c0de3902:	7881      	ldrb	r1, [r0, #2]
c0de3904:	b909      	cbnz	r1, c0de390a <os_io_handle_default_apdu+0x90>
c0de3906:	78c0      	ldrb	r0, [r0, #3]
c0de3908:	b1d0      	cbz	r0, c0de3940 <os_io_handle_default_apdu+0xc6>
c0de390a:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de390e:	e014      	b.n	c0de393a <os_io_handle_default_apdu+0xc0>
c0de3910:	2100      	movs	r1, #0
c0de3912:	6021      	str	r1, [r4, #0]
c0de3914:	7883      	ldrb	r3, [r0, #2]
c0de3916:	7902      	ldrb	r2, [r0, #4]
c0de3918:	ad02      	add	r5, sp, #8
c0de391a:	e9cd 1500 	strd	r1, r5, [sp]
c0de391e:	1d41      	adds	r1, r0, #5
c0de3920:	4618      	mov	r0, r3
c0de3922:	2300      	movs	r3, #0
c0de3924:	f007 ffda 	bl	c0deb8dc <os_pki_load_certificate>
c0de3928:	4604      	mov	r4, r0
c0de392a:	4628      	mov	r0, r5
c0de392c:	216c      	movs	r1, #108	@ 0x6c
c0de392e:	f008 f891 	bl	c0deba54 <explicit_bzero>
c0de3932:	2c00      	cmp	r4, #0
c0de3934:	bf08      	it	eq
c0de3936:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de393a:	4620      	mov	r0, r4
c0de393c:	b01d      	add	sp, #116	@ 0x74
c0de393e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3940:	2000      	movs	r0, #0
c0de3942:	6020      	str	r0, [r4, #0]
c0de3944:	b10a      	cbz	r2, c0de394a <os_io_handle_default_apdu+0xd0>
c0de3946:	2001      	movs	r0, #1
c0de3948:	7010      	strb	r0, [r2, #0]
c0de394a:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de394e:	e7f4      	b.n	c0de393a <os_io_handle_default_apdu+0xc0>

c0de3950 <OUTLINED_FUNCTION_0>:
c0de3950:	6821      	ldr	r1, [r4, #0]
c0de3952:	1c4a      	adds	r2, r1, #1
c0de3954:	6022      	str	r2, [r4, #0]
c0de3956:	5468      	strb	r0, [r5, r1]
c0de3958:	6821      	ldr	r1, [r4, #0]
c0de395a:	4408      	add	r0, r1
c0de395c:	4770      	bx	lr

c0de395e <os_io_seph_cmd_piezo_play_tune>:
c0de395e:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de3960:	280b      	cmp	r0, #11
c0de3962:	d902      	bls.n	c0de396a <os_io_seph_cmd_piezo_play_tune+0xc>
c0de3964:	f06f 0415 	mvn.w	r4, #21
c0de3968:	e021      	b.n	c0de39ae <os_io_seph_cmd_piezo_play_tune+0x50>
c0de396a:	4605      	mov	r5, r0
c0de396c:	2009      	movs	r0, #9
c0de396e:	2100      	movs	r1, #0
c0de3970:	2200      	movs	r2, #0
c0de3972:	2400      	movs	r4, #0
c0de3974:	f007 ffe6 	bl	c0deb944 <os_setting_get>
c0de3978:	2d08      	cmp	r5, #8
c0de397a:	d802      	bhi.n	c0de3982 <os_io_seph_cmd_piezo_play_tune+0x24>
c0de397c:	f010 0102 	ands.w	r1, r0, #2
c0de3980:	d115      	bne.n	c0de39ae <os_io_seph_cmd_piezo_play_tune+0x50>
c0de3982:	2400      	movs	r4, #0
c0de3984:	2d09      	cmp	r5, #9
c0de3986:	d302      	bcc.n	c0de398e <os_io_seph_cmd_piezo_play_tune+0x30>
c0de3988:	f010 0001 	ands.w	r0, r0, #1
c0de398c:	d10f      	bne.n	c0de39ae <os_io_seph_cmd_piezo_play_tune+0x50>
c0de398e:	2056      	movs	r0, #86	@ 0x56
c0de3990:	f88d 5007 	strb.w	r5, [sp, #7]
c0de3994:	f88d 4005 	strb.w	r4, [sp, #5]
c0de3998:	2204      	movs	r2, #4
c0de399a:	2300      	movs	r3, #0
c0de399c:	f88d 0004 	strb.w	r0, [sp, #4]
c0de39a0:	2001      	movs	r0, #1
c0de39a2:	f88d 0006 	strb.w	r0, [sp, #6]
c0de39a6:	a901      	add	r1, sp, #4
c0de39a8:	f000 f803 	bl	c0de39b2 <OUTLINED_FUNCTION_1>
c0de39ac:	4604      	mov	r4, r0
c0de39ae:	4620      	mov	r0, r4
c0de39b0:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de39b2 <OUTLINED_FUNCTION_1>:
c0de39b2:	2001      	movs	r0, #1
c0de39b4:	f007 bffc 	b.w	c0deb9b0 <os_io_tx_cmd>

c0de39b8 <io_process_itc_ux_event>:
c0de39b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de39ba:	4605      	mov	r5, r0
c0de39bc:	78c0      	ldrb	r0, [r0, #3]
c0de39be:	2820      	cmp	r0, #32
c0de39c0:	d023      	beq.n	c0de3a0a <io_process_itc_ux_event+0x52>
c0de39c2:	2823      	cmp	r0, #35	@ 0x23
c0de39c4:	d029      	beq.n	c0de3a1a <io_process_itc_ux_event+0x62>
c0de39c6:	460c      	mov	r4, r1
c0de39c8:	2822      	cmp	r0, #34	@ 0x22
c0de39ca:	d132      	bne.n	c0de3a32 <io_process_itc_ux_event+0x7a>
c0de39cc:	4e1f      	ldr	r6, [pc, #124]	@ (c0de3a4c <io_process_itc_ux_event+0x94>)
c0de39ce:	2006      	movs	r0, #6
c0de39d0:	2118      	movs	r1, #24
c0de39d2:	f809 0006 	strb.w	r0, [r9, r6]
c0de39d6:	eb09 0706 	add.w	r7, r9, r6
c0de39da:	2018      	movs	r0, #24
c0de39dc:	6078      	str	r0, [r7, #4]
c0de39de:	f107 0008 	add.w	r0, r7, #8
c0de39e2:	f008 f833 	bl	c0deba4c <__aeabi_memclr>
c0de39e6:	7928      	ldrb	r0, [r5, #4]
c0de39e8:	7238      	strb	r0, [r7, #8]
c0de39ea:	7868      	ldrb	r0, [r5, #1]
c0de39ec:	78a9      	ldrb	r1, [r5, #2]
c0de39ee:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de39f2:	3802      	subs	r0, #2
c0de39f4:	0401      	lsls	r1, r0, #16
c0de39f6:	d005      	beq.n	c0de3a04 <io_process_itc_ux_event+0x4c>
c0de39f8:	b282      	uxth	r2, r0
c0de39fa:	2a10      	cmp	r2, #16
c0de39fc:	d802      	bhi.n	c0de3a04 <io_process_itc_ux_event+0x4c>
c0de39fe:	1f60      	subs	r0, r4, #5
c0de3a00:	4290      	cmp	r0, r2
c0de3a02:	d218      	bcs.n	c0de3a36 <io_process_itc_ux_event+0x7e>
c0de3a04:	f06f 0415 	mvn.w	r4, #21
c0de3a08:	e013      	b.n	c0de3a32 <io_process_itc_ux_event+0x7a>
c0de3a0a:	2001      	movs	r0, #1
c0de3a0c:	f007 fbda 	bl	c0deb1c4 <nbgl_objAllowDrawing>
c0de3a10:	f007 fbe7 	bl	c0deb1e2 <nbgl_screenRedraw>
c0de3a14:	f007 fbbd 	bl	c0deb192 <nbgl_refresh>
c0de3a18:	e00a      	b.n	c0de3a30 <io_process_itc_ux_event+0x78>
c0de3a1a:	480c      	ldr	r0, [pc, #48]	@ (c0de3a4c <io_process_itc_ux_event+0x94>)
c0de3a1c:	2107      	movs	r1, #7
c0de3a1e:	f809 1000 	strb.w	r1, [r9, r0]
c0de3a22:	4448      	add	r0, r9
c0de3a24:	2101      	movs	r1, #1
c0de3a26:	6041      	str	r1, [r0, #4]
c0de3a28:	7929      	ldrb	r1, [r5, #4]
c0de3a2a:	7201      	strb	r1, [r0, #8]
c0de3a2c:	f007 ff78 	bl	c0deb920 <os_ux>
c0de3a30:	2400      	movs	r4, #0
c0de3a32:	4620      	mov	r0, r4
c0de3a34:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3a36:	eb09 0406 	add.w	r4, r9, r6
c0de3a3a:	1d69      	adds	r1, r5, #5
c0de3a3c:	f104 0010 	add.w	r0, r4, #16
c0de3a40:	60e2      	str	r2, [r4, #12]
c0de3a42:	f007 fff9 	bl	c0deba38 <__aeabi_memcpy>
c0de3a46:	4620      	mov	r0, r4
c0de3a48:	e7f0      	b.n	c0de3a2c <io_process_itc_ux_event+0x74>
c0de3a4a:	bf00      	nop
c0de3a4c:	00000f58 	.word	0x00000f58

c0de3a50 <io_legacy_apdu_tx>:
c0de3a50:	b5b0      	push	{r4, r5, r7, lr}
c0de3a52:	460a      	mov	r2, r1
c0de3a54:	4601      	mov	r1, r0
c0de3a56:	4808      	ldr	r0, [pc, #32]	@ (c0de3a78 <io_legacy_apdu_tx+0x28>)
c0de3a58:	2300      	movs	r3, #0
c0de3a5a:	2500      	movs	r5, #0
c0de3a5c:	eb09 0400 	add.w	r4, r9, r0
c0de3a60:	7860      	ldrb	r0, [r4, #1]
c0de3a62:	f007 ffa5 	bl	c0deb9b0 <os_io_tx_cmd>
c0de3a66:	4905      	ldr	r1, [pc, #20]	@ (c0de3a7c <io_legacy_apdu_tx+0x2c>)
c0de3a68:	7065      	strb	r5, [r4, #1]
c0de3a6a:	f809 5001 	strb.w	r5, [r9, r1]
c0de3a6e:	4904      	ldr	r1, [pc, #16]	@ (c0de3a80 <io_legacy_apdu_tx+0x30>)
c0de3a70:	4449      	add	r1, r9
c0de3a72:	718d      	strb	r5, [r1, #6]
c0de3a74:	bdb0      	pop	{r4, r5, r7, pc}
c0de3a76:	bf00      	nop
c0de3a78:	0000087c 	.word	0x0000087c
c0de3a7c:	00000f78 	.word	0x00000f78
c0de3a80:	00000870 	.word	0x00000870

c0de3a84 <io_legacy_apdu_rx>:
c0de3a84:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de3a88:	4e8c      	ldr	r6, [pc, #560]	@ (c0de3cbc <io_legacy_apdu_rx+0x238>)
c0de3a8a:	2100      	movs	r1, #0
c0de3a8c:	4605      	mov	r5, r0
c0de3a8e:	2200      	movs	r2, #0
c0de3a90:	2301      	movs	r3, #1
c0de3a92:	f88d 100f 	strb.w	r1, [sp, #15]
c0de3a96:	f240 1111 	movw	r1, #273	@ 0x111
c0de3a9a:	eb09 0006 	add.w	r0, r9, r6
c0de3a9e:	f007 ff93 	bl	c0deb9c8 <os_io_rx_evt>
c0de3aa2:	4604      	mov	r4, r0
c0de3aa4:	2801      	cmp	r0, #1
c0de3aa6:	f2c0 80f9 	blt.w	c0de3c9c <io_legacy_apdu_rx+0x218>
c0de3aaa:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3aae:	f1a0 0110 	sub.w	r1, r0, #16
c0de3ab2:	2916      	cmp	r1, #22
c0de3ab4:	d805      	bhi.n	c0de3ac2 <io_legacy_apdu_rx+0x3e>
c0de3ab6:	2201      	movs	r2, #1
c0de3ab8:	fa02 f101 	lsl.w	r1, r2, r1
c0de3abc:	4a80      	ldr	r2, [pc, #512]	@ (c0de3cc0 <io_legacy_apdu_rx+0x23c>)
c0de3abe:	4211      	tst	r1, r2
c0de3ac0:	d107      	bne.n	c0de3ad2 <io_legacy_apdu_rx+0x4e>
c0de3ac2:	1e41      	subs	r1, r0, #1
c0de3ac4:	2902      	cmp	r1, #2
c0de3ac6:	d379      	bcc.n	c0de3bbc <io_legacy_apdu_rx+0x138>
c0de3ac8:	2830      	cmp	r0, #48	@ 0x30
c0de3aca:	bf18      	it	ne
c0de3acc:	2840      	cmpne	r0, #64	@ 0x40
c0de3ace:	f040 8089 	bne.w	c0de3be4 <io_legacy_apdu_rx+0x160>
c0de3ad2:	4f7c      	ldr	r7, [pc, #496]	@ (c0de3cc4 <io_legacy_apdu_rx+0x240>)
c0de3ad4:	eb09 0107 	add.w	r1, r9, r7
c0de3ad8:	7048      	strb	r0, [r1, #1]
c0de3ada:	f007 ff0f 	bl	c0deb8fc <os_perso_is_pin_set>
c0de3ade:	28aa      	cmp	r0, #170	@ 0xaa
c0de3ae0:	d103      	bne.n	c0de3aea <io_legacy_apdu_rx+0x66>
c0de3ae2:	f007 ff14 	bl	c0deb90e <os_global_pin_is_validated>
c0de3ae6:	28aa      	cmp	r0, #170	@ 0xaa
c0de3ae8:	d156      	bne.n	c0de3b98 <io_legacy_apdu_rx+0x114>
c0de3aea:	eb09 0006 	add.w	r0, r9, r6
c0de3aee:	7840      	ldrb	r0, [r0, #1]
c0de3af0:	28b0      	cmp	r0, #176	@ 0xb0
c0de3af2:	d12d      	bne.n	c0de3b50 <io_legacy_apdu_rx+0xcc>
c0de3af4:	f240 1011 	movw	r0, #273	@ 0x111
c0de3af8:	1e61      	subs	r1, r4, #1
c0de3afa:	9002      	str	r0, [sp, #8]
c0de3afc:	f10d 000f 	add.w	r0, sp, #15
c0de3b00:	9000      	str	r0, [sp, #0]
c0de3b02:	4871      	ldr	r0, [pc, #452]	@ (c0de3cc8 <io_legacy_apdu_rx+0x244>)
c0de3b04:	ab02      	add	r3, sp, #8
c0de3b06:	eb09 0500 	add.w	r5, r9, r0
c0de3b0a:	eb09 0006 	add.w	r0, r9, r6
c0de3b0e:	3001      	adds	r0, #1
c0de3b10:	462a      	mov	r2, r5
c0de3b12:	f7ff feb2 	bl	c0de387a <os_io_handle_default_apdu>
c0de3b16:	2400      	movs	r4, #0
c0de3b18:	9902      	ldr	r1, [sp, #8]
c0de3b1a:	eb09 0607 	add.w	r6, r9, r7
c0de3b1e:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de3b22:	bf18      	it	ne
c0de3b24:	4621      	movne	r1, r4
c0de3b26:	0a02      	lsrs	r2, r0, #8
c0de3b28:	2300      	movs	r3, #0
c0de3b2a:	546a      	strb	r2, [r5, r1]
c0de3b2c:	186a      	adds	r2, r5, r1
c0de3b2e:	7050      	strb	r0, [r2, #1]
c0de3b30:	1c88      	adds	r0, r1, #2
c0de3b32:	4629      	mov	r1, r5
c0de3b34:	9002      	str	r0, [sp, #8]
c0de3b36:	b282      	uxth	r2, r0
c0de3b38:	7870      	ldrb	r0, [r6, #1]
c0de3b3a:	f007 ff39 	bl	c0deb9b0 <os_io_tx_cmd>
c0de3b3e:	f89d 100f 	ldrb.w	r1, [sp, #15]
c0de3b42:	7074      	strb	r4, [r6, #1]
c0de3b44:	2901      	cmp	r1, #1
c0de3b46:	f000 80b5 	beq.w	c0de3cb4 <io_legacy_apdu_rx+0x230>
c0de3b4a:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3b4e:	e0a5      	b.n	c0de3c9c <io_legacy_apdu_rx+0x218>
c0de3b50:	eb09 0007 	add.w	r0, r9, r7
c0de3b54:	7847      	ldrb	r7, [r0, #1]
c0de3b56:	2f10      	cmp	r7, #16
c0de3b58:	d05f      	beq.n	c0de3c1a <io_legacy_apdu_rx+0x196>
c0de3b5a:	2f40      	cmp	r7, #64	@ 0x40
c0de3b5c:	d05f      	beq.n	c0de3c1e <io_legacy_apdu_rx+0x19a>
c0de3b5e:	2f21      	cmp	r7, #33	@ 0x21
c0de3b60:	d06f      	beq.n	c0de3c42 <io_legacy_apdu_rx+0x1be>
c0de3b62:	2f22      	cmp	r7, #34	@ 0x22
c0de3b64:	d048      	beq.n	c0de3bf8 <io_legacy_apdu_rx+0x174>
c0de3b66:	2f23      	cmp	r7, #35	@ 0x23
c0de3b68:	d048      	beq.n	c0de3bfc <io_legacy_apdu_rx+0x178>
c0de3b6a:	2f30      	cmp	r7, #48	@ 0x30
c0de3b6c:	d053      	beq.n	c0de3c16 <io_legacy_apdu_rx+0x192>
c0de3b6e:	2f20      	cmp	r7, #32
c0de3b70:	d171      	bne.n	c0de3c56 <io_legacy_apdu_rx+0x1d2>
c0de3b72:	4d56      	ldr	r5, [pc, #344]	@ (c0de3ccc <io_legacy_apdu_rx+0x248>)
c0de3b74:	2701      	movs	r7, #1
c0de3b76:	eb09 0106 	add.w	r1, r9, r6
c0de3b7a:	3c01      	subs	r4, #1
c0de3b7c:	3101      	adds	r1, #1
c0de3b7e:	4622      	mov	r2, r4
c0de3b80:	eb09 0005 	add.w	r0, r9, r5
c0de3b84:	7187      	strb	r7, [r0, #6]
c0de3b86:	4850      	ldr	r0, [pc, #320]	@ (c0de3cc8 <io_legacy_apdu_rx+0x244>)
c0de3b88:	4448      	add	r0, r9
c0de3b8a:	f007 ff55 	bl	c0deba38 <__aeabi_memcpy>
c0de3b8e:	4850      	ldr	r0, [pc, #320]	@ (c0de3cd0 <io_legacy_apdu_rx+0x24c>)
c0de3b90:	f809 7000 	strb.w	r7, [r9, r0]
c0de3b94:	2008      	movs	r0, #8
c0de3b96:	e051      	b.n	c0de3c3c <io_legacy_apdu_rx+0x1b8>
c0de3b98:	484b      	ldr	r0, [pc, #300]	@ (c0de3cc8 <io_legacy_apdu_rx+0x244>)
c0de3b9a:	2155      	movs	r1, #85	@ 0x55
c0de3b9c:	2202      	movs	r2, #2
c0de3b9e:	2300      	movs	r3, #0
c0de3ba0:	f809 1000 	strb.w	r1, [r9, r0]
c0de3ba4:	eb09 0100 	add.w	r1, r9, r0
c0de3ba8:	2015      	movs	r0, #21
c0de3baa:	7048      	strb	r0, [r1, #1]
c0de3bac:	eb09 0007 	add.w	r0, r9, r7
c0de3bb0:	7840      	ldrb	r0, [r0, #1]
c0de3bb2:	b004      	add	sp, #16
c0de3bb4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de3bb8:	f007 befa 	b.w	c0deb9b0 <os_io_tx_cmd>
c0de3bbc:	4f45      	ldr	r7, [pc, #276]	@ (c0de3cd4 <io_legacy_apdu_rx+0x250>)
c0de3bbe:	444e      	add	r6, r9
c0de3bc0:	3c01      	subs	r4, #1
c0de3bc2:	1c71      	adds	r1, r6, #1
c0de3bc4:	4622      	mov	r2, r4
c0de3bc6:	eb09 0007 	add.w	r0, r9, r7
c0de3bca:	f007 ff35 	bl	c0deba38 <__aeabi_memcpy>
c0de3bce:	7870      	ldrb	r0, [r6, #1]
c0de3bd0:	281a      	cmp	r0, #26
c0de3bd2:	d10a      	bne.n	c0de3bea <io_legacy_apdu_rx+0x166>
c0de3bd4:	eb09 0007 	add.w	r0, r9, r7
c0de3bd8:	4621      	mov	r1, r4
c0de3bda:	b004      	add	sp, #16
c0de3bdc:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de3be0:	f7ff beea 	b.w	c0de39b8 <io_process_itc_ux_event>
c0de3be4:	2842      	cmp	r0, #66	@ 0x42
c0de3be6:	d158      	bne.n	c0de3c9a <io_legacy_apdu_rx+0x216>
c0de3be8:	e058      	b.n	c0de3c9c <io_legacy_apdu_rx+0x218>
c0de3bea:	2d00      	cmp	r5, #0
c0de3bec:	d04b      	beq.n	c0de3c86 <io_legacy_apdu_rx+0x202>
c0de3bee:	2000      	movs	r0, #0
c0de3bf0:	2400      	movs	r4, #0
c0de3bf2:	f007 f893 	bl	c0dead1c <io_event>
c0de3bf6:	e051      	b.n	c0de3c9c <io_legacy_apdu_rx+0x218>
c0de3bf8:	2004      	movs	r0, #4
c0de3bfa:	e023      	b.n	c0de3c44 <io_legacy_apdu_rx+0x1c0>
c0de3bfc:	4d33      	ldr	r5, [pc, #204]	@ (c0de3ccc <io_legacy_apdu_rx+0x248>)
c0de3bfe:	2107      	movs	r1, #7
c0de3c00:	3c01      	subs	r4, #1
c0de3c02:	4622      	mov	r2, r4
c0de3c04:	eb09 0005 	add.w	r0, r9, r5
c0de3c08:	7181      	strb	r1, [r0, #6]
c0de3c0a:	482f      	ldr	r0, [pc, #188]	@ (c0de3cc8 <io_legacy_apdu_rx+0x244>)
c0de3c0c:	f000 f886 	bl	c0de3d1c <OUTLINED_FUNCTION_0>
c0de3c10:	482f      	ldr	r0, [pc, #188]	@ (c0de3cd0 <io_legacy_apdu_rx+0x24c>)
c0de3c12:	2101      	movs	r1, #1
c0de3c14:	e00f      	b.n	c0de3c36 <io_legacy_apdu_rx+0x1b2>
c0de3c16:	2002      	movs	r0, #2
c0de3c18:	e014      	b.n	c0de3c44 <io_legacy_apdu_rx+0x1c0>
c0de3c1a:	2006      	movs	r0, #6
c0de3c1c:	e012      	b.n	c0de3c44 <io_legacy_apdu_rx+0x1c0>
c0de3c1e:	4d2b      	ldr	r5, [pc, #172]	@ (c0de3ccc <io_legacy_apdu_rx+0x248>)
c0de3c20:	2103      	movs	r1, #3
c0de3c22:	3c01      	subs	r4, #1
c0de3c24:	4622      	mov	r2, r4
c0de3c26:	eb09 0005 	add.w	r0, r9, r5
c0de3c2a:	7181      	strb	r1, [r0, #6]
c0de3c2c:	4826      	ldr	r0, [pc, #152]	@ (c0de3cc8 <io_legacy_apdu_rx+0x244>)
c0de3c2e:	f000 f875 	bl	c0de3d1c <OUTLINED_FUNCTION_0>
c0de3c32:	4827      	ldr	r0, [pc, #156]	@ (c0de3cd0 <io_legacy_apdu_rx+0x24c>)
c0de3c34:	2102      	movs	r1, #2
c0de3c36:	f809 1000 	strb.w	r1, [r9, r0]
c0de3c3a:	200a      	movs	r0, #10
c0de3c3c:	f809 0005 	strb.w	r0, [r9, r5]
c0de3c40:	e02c      	b.n	c0de3c9c <io_legacy_apdu_rx+0x218>
c0de3c42:	2005      	movs	r0, #5
c0de3c44:	4921      	ldr	r1, [pc, #132]	@ (c0de3ccc <io_legacy_apdu_rx+0x248>)
c0de3c46:	3c01      	subs	r4, #1
c0de3c48:	4622      	mov	r2, r4
c0de3c4a:	4449      	add	r1, r9
c0de3c4c:	7188      	strb	r0, [r1, #6]
c0de3c4e:	481e      	ldr	r0, [pc, #120]	@ (c0de3cc8 <io_legacy_apdu_rx+0x244>)
c0de3c50:	f000 f864 	bl	c0de3d1c <OUTLINED_FUNCTION_0>
c0de3c54:	e022      	b.n	c0de3c9c <io_legacy_apdu_rx+0x218>
c0de3c56:	f8df 8074 	ldr.w	r8, [pc, #116]	@ c0de3ccc <io_legacy_apdu_rx+0x248>
c0de3c5a:	2100      	movs	r1, #0
c0de3c5c:	1e65      	subs	r5, r4, #1
c0de3c5e:	462a      	mov	r2, r5
c0de3c60:	eb09 0008 	add.w	r0, r9, r8
c0de3c64:	7181      	strb	r1, [r0, #6]
c0de3c66:	4818      	ldr	r0, [pc, #96]	@ (c0de3cc8 <io_legacy_apdu_rx+0x244>)
c0de3c68:	f000 f858 	bl	c0de3d1c <OUTLINED_FUNCTION_0>
c0de3c6c:	2f25      	cmp	r7, #37	@ 0x25
c0de3c6e:	d019      	beq.n	c0de3ca4 <io_legacy_apdu_rx+0x220>
c0de3c70:	2f24      	cmp	r7, #36	@ 0x24
c0de3c72:	d106      	bne.n	c0de3c82 <io_legacy_apdu_rx+0x1fe>
c0de3c74:	200b      	movs	r0, #11
c0de3c76:	2101      	movs	r1, #1
c0de3c78:	f809 0008 	strb.w	r0, [r9, r8]
c0de3c7c:	4814      	ldr	r0, [pc, #80]	@ (c0de3cd0 <io_legacy_apdu_rx+0x24c>)
c0de3c7e:	f809 1000 	strb.w	r1, [r9, r0]
c0de3c82:	462c      	mov	r4, r5
c0de3c84:	e00a      	b.n	c0de3c9c <io_legacy_apdu_rx+0x218>
c0de3c86:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3c8a:	2815      	cmp	r0, #21
c0de3c8c:	d8af      	bhi.n	c0de3bee <io_legacy_apdu_rx+0x16a>
c0de3c8e:	2101      	movs	r1, #1
c0de3c90:	fa01 f000 	lsl.w	r0, r1, r0
c0de3c94:	4910      	ldr	r1, [pc, #64]	@ (c0de3cd8 <io_legacy_apdu_rx+0x254>)
c0de3c96:	4208      	tst	r0, r1
c0de3c98:	d0a9      	beq.n	c0de3bee <io_legacy_apdu_rx+0x16a>
c0de3c9a:	2400      	movs	r4, #0
c0de3c9c:	4620      	mov	r0, r4
c0de3c9e:	b004      	add	sp, #16
c0de3ca0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3ca4:	200c      	movs	r0, #12
c0de3ca6:	2101      	movs	r1, #1
c0de3ca8:	f809 0008 	strb.w	r0, [r9, r8]
c0de3cac:	4808      	ldr	r0, [pc, #32]	@ (c0de3cd0 <io_legacy_apdu_rx+0x24c>)
c0de3cae:	f809 1000 	strb.w	r1, [r9, r0]
c0de3cb2:	e7f3      	b.n	c0de3c9c <io_legacy_apdu_rx+0x218>
c0de3cb4:	20ff      	movs	r0, #255	@ 0xff
c0de3cb6:	f007 fe5d 	bl	c0deb974 <os_sched_exit>
c0de3cba:	bf00      	nop
c0de3cbc:	0000075d 	.word	0x0000075d
c0de3cc0:	007f0001 	.word	0x007f0001
c0de3cc4:	0000087c 	.word	0x0000087c
c0de3cc8:	0000064c 	.word	0x0000064c
c0de3ccc:	00000870 	.word	0x00000870
c0de3cd0:	00000f78 	.word	0x00000f78
c0de3cd4:	00000e44 	.word	0x00000e44
c0de3cd8:	00205020 	.word	0x00205020

c0de3cdc <io_seproxyhal_init>:
c0de3cdc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3cde:	b089      	sub	sp, #36	@ 0x24
c0de3ce0:	4d0c      	ldr	r5, [pc, #48]	@ (c0de3d14 <io_seproxyhal_init+0x38>)
c0de3ce2:	2600      	movs	r6, #0
c0de3ce4:	466c      	mov	r4, sp
c0de3ce6:	2118      	movs	r1, #24
c0de3ce8:	eb09 0005 	add.w	r0, r9, r5
c0de3cec:	7046      	strb	r6, [r0, #1]
c0de3cee:	4620      	mov	r0, r4
c0de3cf0:	f007 feac 	bl	c0deba4c <__aeabi_memclr>
c0de3cf4:	4808      	ldr	r0, [pc, #32]	@ (c0de3d18 <io_seproxyhal_init+0x3c>)
c0de3cf6:	2701      	movs	r7, #1
c0de3cf8:	f88d 601e 	strb.w	r6, [sp, #30]
c0de3cfc:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de3d00:	f8ad 701c 	strh.w	r7, [sp, #28]
c0de3d04:	9006      	str	r0, [sp, #24]
c0de3d06:	4620      	mov	r0, r4
c0de3d08:	f007 fe3e 	bl	c0deb988 <os_io_init>
c0de3d0c:	f809 7005 	strb.w	r7, [r9, r5]
c0de3d10:	b009      	add	sp, #36	@ 0x24
c0de3d12:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3d14:	0000087c 	.word	0x0000087c
c0de3d18:	00020015 	.word	0x00020015

c0de3d1c <OUTLINED_FUNCTION_0>:
c0de3d1c:	eb09 0106 	add.w	r1, r9, r6
c0de3d20:	3101      	adds	r1, #1
c0de3d22:	4448      	add	r0, r9
c0de3d24:	f007 be88 	b.w	c0deba38 <__aeabi_memcpy>

c0de3d28 <layoutAddCallbackObj>:
c0de3d28:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3d2a:	f890 40ad 	ldrb.w	r4, [r0, #173]	@ 0xad
c0de3d2e:	f890 50ae 	ldrb.w	r5, [r0, #174]	@ 0xae
c0de3d32:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3d36:	f3c4 2505 	ubfx	r5, r4, #8, #6
c0de3d3a:	2d0e      	cmp	r5, #14
c0de3d3c:	bf84      	itt	hi
c0de3d3e:	2000      	movhi	r0, #0
c0de3d40:	bdf0      	pophi	{r4, r5, r6, r7, pc}
c0de3d42:	0a26      	lsrs	r6, r4, #8
c0de3d44:	f404 4740 	and.w	r7, r4, #49152	@ 0xc000
c0de3d48:	f880 40ad 	strb.w	r4, [r0, #173]	@ 0xad
c0de3d4c:	3601      	adds	r6, #1
c0de3d4e:	f006 063f 	and.w	r6, r6, #63	@ 0x3f
c0de3d52:	ea47 2606 	orr.w	r6, r7, r6, lsl #8
c0de3d56:	0a36      	lsrs	r6, r6, #8
c0de3d58:	f880 60ae 	strb.w	r6, [r0, #174]	@ 0xae
c0de3d5c:	eb00 00c5 	add.w	r0, r0, r5, lsl #3
c0de3d60:	f840 1f20 	str.w	r1, [r0, #32]!
c0de3d64:	7102      	strb	r2, [r0, #4]
c0de3d66:	7183      	strb	r3, [r0, #6]
c0de3d68:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de3d6c <nbgl_layoutGet>:
c0de3d6c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de3d70:	b085      	sub	sp, #20
c0de3d72:	4605      	mov	r5, r0
c0de3d74:	7800      	ldrb	r0, [r0, #0]
c0de3d76:	b190      	cbz	r0, c0de3d9e <nbgl_layoutGet+0x32>
c0de3d78:	486c      	ldr	r0, [pc, #432]	@ (c0de3f2c <nbgl_layoutGet+0x1c0>)
c0de3d7a:	496d      	ldr	r1, [pc, #436]	@ (c0de3f30 <nbgl_layoutGet+0x1c4>)
c0de3d7c:	2400      	movs	r4, #0
c0de3d7e:	b158      	cbz	r0, c0de3d98 <nbgl_layoutGet+0x2c>
c0de3d80:	eb09 0201 	add.w	r2, r9, r1
c0de3d84:	4402      	add	r2, r0
c0de3d86:	f892 32ca 	ldrb.w	r3, [r2, #714]	@ 0x2ca
c0de3d8a:	021b      	lsls	r3, r3, #8
c0de3d8c:	045b      	lsls	r3, r3, #17
c0de3d8e:	bf58      	it	pl
c0de3d90:	f502 7407 	addpl.w	r4, r2, #540	@ 0x21c
c0de3d94:	30b4      	adds	r0, #180	@ 0xb4
c0de3d96:	e7f2      	b.n	c0de3d7e <nbgl_layoutGet+0x12>
c0de3d98:	b974      	cbnz	r4, c0de3db8 <nbgl_layoutGet+0x4c>
c0de3d9a:	2400      	movs	r4, #0
c0de3d9c:	e0c2      	b.n	c0de3f24 <nbgl_layoutGet+0x1b8>
c0de3d9e:	4965      	ldr	r1, [pc, #404]	@ (c0de3f34 <nbgl_layoutGet+0x1c8>)
c0de3da0:	4863      	ldr	r0, [pc, #396]	@ (c0de3f30 <nbgl_layoutGet+0x1c4>)
c0de3da2:	eb09 0201 	add.w	r2, r9, r1
c0de3da6:	6852      	ldr	r2, [r2, #4]
c0de3da8:	b112      	cbz	r2, c0de3db0 <nbgl_layoutGet+0x44>
c0de3daa:	eb09 0400 	add.w	r4, r9, r0
c0de3dae:	e003      	b.n	c0de3db8 <nbgl_layoutGet+0x4c>
c0de3db0:	eb09 0400 	add.w	r4, r9, r0
c0de3db4:	4449      	add	r1, r9
c0de3db6:	604c      	str	r4, [r1, #4]
c0de3db8:	4e5d      	ldr	r6, [pc, #372]	@ (c0de3f30 <nbgl_layoutGet+0x1c4>)
c0de3dba:	4620      	mov	r0, r4
c0de3dbc:	21b4      	movs	r1, #180	@ 0xb4
c0de3dbe:	f859 7006 	ldr.w	r7, [r9, r6]
c0de3dc2:	f007 fe43 	bl	c0deba4c <__aeabi_memclr>
c0de3dc6:	7828      	ldrb	r0, [r5, #0]
c0de3dc8:	b150      	cbz	r0, c0de3de0 <nbgl_layoutGet+0x74>
c0de3dca:	485a      	ldr	r0, [pc, #360]	@ (c0de3f34 <nbgl_layoutGet+0x1c8>)
c0de3dcc:	4448      	add	r0, r9
c0de3dce:	6841      	ldr	r1, [r0, #4]
c0de3dd0:	2900      	cmp	r1, #0
c0de3dd2:	bf08      	it	eq
c0de3dd4:	eb09 0106 	addeq.w	r1, r9, r6
c0de3dd8:	600c      	str	r4, [r1, #0]
c0de3dda:	6061      	str	r1, [r4, #4]
c0de3ddc:	6044      	str	r4, [r0, #4]
c0de3dde:	e001      	b.n	c0de3de4 <nbgl_layoutGet+0x78>
c0de3de0:	f849 7006 	str.w	r7, [r9, r6]
c0de3de4:	4853      	ldr	r0, [pc, #332]	@ (c0de3f34 <nbgl_layoutGet+0x1c8>)
c0de3de6:	2100      	movs	r1, #0
c0de3de8:	f809 1000 	strb.w	r1, [r9, r0]
c0de3dec:	68e8      	ldr	r0, [r5, #12]
c0de3dee:	f007 fbed 	bl	c0deb5cc <pic>
c0de3df2:	4621      	mov	r1, r4
c0de3df4:	782e      	ldrb	r6, [r5, #0]
c0de3df6:	f811 2fad 	ldrb.w	r2, [r1, #173]!
c0de3dfa:	784b      	ldrb	r3, [r1, #1]
c0de3dfc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3e00:	f022 0201 	bic.w	r2, r2, #1
c0de3e04:	4332      	orrs	r2, r6
c0de3e06:	700a      	strb	r2, [r1, #0]
c0de3e08:	f002 02fd 	and.w	r2, r2, #253	@ 0xfd
c0de3e0c:	786e      	ldrb	r6, [r5, #1]
c0de3e0e:	f841 0c91 	str.w	r0, [r1, #-145]
c0de3e12:	704b      	strb	r3, [r1, #1]
c0de3e14:	f1a1 00a5 	sub.w	r0, r1, #165	@ 0xa5
c0de3e18:	ea42 0246 	orr.w	r2, r2, r6, lsl #1
c0de3e1c:	700a      	strb	r2, [r1, #0]
c0de3e1e:	f105 0210 	add.w	r2, r5, #16
c0de3e22:	7829      	ldrb	r1, [r5, #0]
c0de3e24:	4b44      	ldr	r3, [pc, #272]	@ (c0de3f38 <nbgl_layoutGet+0x1cc>)
c0de3e26:	447b      	add	r3, pc
c0de3e28:	b159      	cbz	r1, c0de3e42 <nbgl_layoutGet+0xd6>
c0de3e2a:	2106      	movs	r1, #6
c0de3e2c:	f007 f9d4 	bl	c0deb1d8 <nbgl_screenPush>
c0de3e30:	f894 10ad 	ldrb.w	r1, [r4, #173]	@ 0xad
c0de3e34:	f894 20ae 	ldrb.w	r2, [r4, #174]	@ 0xae
c0de3e38:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3e3c:	f360 01c7 	bfi	r1, r0, #3, #5
c0de3e40:	e00a      	b.n	c0de3e58 <nbgl_layoutGet+0xec>
c0de3e42:	2106      	movs	r1, #6
c0de3e44:	f007 f9c3 	bl	c0deb1ce <nbgl_screenSet>
c0de3e48:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de3e4c:	f894 10ae 	ldrb.w	r1, [r4, #174]	@ 0xae
c0de3e50:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3e54:	f020 01f8 	bic.w	r1, r0, #248	@ 0xf8
c0de3e58:	4627      	mov	r7, r4
c0de3e5a:	0a08      	lsrs	r0, r1, #8
c0de3e5c:	f04f 0a01 	mov.w	sl, #1
c0de3e60:	f807 1fad 	strb.w	r1, [r7, #173]!
c0de3e64:	7078      	strb	r0, [r7, #1]
c0de3e66:	b2c8      	uxtb	r0, r1
c0de3e68:	f003 f9f0 	bl	c0de724c <OUTLINED_FUNCTION_19>
c0de3e6c:	2102      	movs	r1, #2
c0de3e6e:	f04f 0800 	mov.w	r8, #0
c0de3e72:	f880 a005 	strb.w	sl, [r0, #5]
c0de3e76:	71c1      	strb	r1, [r0, #7]
c0de3e78:	2158      	movs	r1, #88	@ 0x58
c0de3e7a:	f880 801f 	strb.w	r8, [r0, #31]
c0de3e7e:	7181      	strb	r1, [r0, #6]
c0de3e80:	21e0      	movs	r1, #224	@ 0xe0
c0de3e82:	7101      	strb	r1, [r0, #4]
c0de3e84:	f847 0c0d 	str.w	r0, [r7, #-13]
c0de3e88:	7838      	ldrb	r0, [r7, #0]
c0de3e8a:	08c1      	lsrs	r1, r0, #3
c0de3e8c:	2014      	movs	r0, #20
c0de3e8e:	f007 f9c1 	bl	c0deb214 <nbgl_containerPoolGet>
c0de3e92:	f857 2c0d 	ldr.w	r2, [r7, #-13]
c0de3e96:	0a03      	lsrs	r3, r0, #8
c0de3e98:	f857 1ca5 	ldr.w	r1, [r7, #-165]
c0de3e9c:	0e06      	lsrs	r6, r0, #24
c0de3e9e:	f882 3023 	strb.w	r3, [r2, #35]	@ 0x23
c0de3ea2:	4613      	mov	r3, r2
c0de3ea4:	f882 a016 	strb.w	sl, [r2, #22]
c0de3ea8:	f803 0f22 	strb.w	r0, [r3, #34]!
c0de3eac:	0c00      	lsrs	r0, r0, #16
c0de3eae:	70de      	strb	r6, [r3, #3]
c0de3eb0:	7098      	strb	r0, [r3, #2]
c0de3eb2:	604a      	str	r2, [r1, #4]
c0de3eb4:	7878      	ldrb	r0, [r7, #1]
c0de3eb6:	f040 0040 	orr.w	r0, r0, #64	@ 0x40
c0de3eba:	7078      	strb	r0, [r7, #1]
c0de3ebc:	6868      	ldr	r0, [r5, #4]
c0de3ebe:	b388      	cbz	r0, c0de3f24 <nbgl_layoutGet+0x1b8>
c0de3ec0:	f007 fb84 	bl	c0deb5cc <pic>
c0de3ec4:	4621      	mov	r1, r4
c0de3ec6:	f44f 4640 	mov.w	r6, #49152	@ 0xc000
c0de3eca:	f811 2fad 	ldrb.w	r2, [r1, #173]!
c0de3ece:	784b      	ldrb	r3, [r1, #1]
c0de3ed0:	700a      	strb	r2, [r1, #0]
c0de3ed2:	1c5f      	adds	r7, r3, #1
c0de3ed4:	ea06 2603 	and.w	r6, r6, r3, lsl #8
c0de3ed8:	f003 023f 	and.w	r2, r3, #63	@ 0x3f
c0de3edc:	f007 073f 	and.w	r7, r7, #63	@ 0x3f
c0de3ee0:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de3ee4:	eb04 07c2 	add.w	r7, r4, r2, lsl #3
c0de3ee8:	0a36      	lsrs	r6, r6, #8
c0de3eea:	704e      	strb	r6, [r1, #1]
c0de3eec:	f8d4 60a0 	ldr.w	r6, [r4, #160]	@ 0xa0
c0de3ef0:	2104      	movs	r1, #4
c0de3ef2:	77b1      	strb	r1, [r6, #30]
c0de3ef4:	7a2a      	ldrb	r2, [r5, #8]
c0de3ef6:	7a6b      	ldrb	r3, [r5, #9]
c0de3ef8:	623e      	str	r6, [r7, #32]
c0de3efa:	f887 3026 	strb.w	r3, [r7, #38]	@ 0x26
c0de3efe:	f886 a01c 	strb.w	sl, [r6, #28]
c0de3f02:	f886 801d 	strb.w	r8, [r6, #29]
c0de3f06:	f887 2024 	strb.w	r2, [r7, #36]	@ 0x24
c0de3f0a:	7805      	ldrb	r5, [r0, #0]
c0de3f0c:	b155      	cbz	r5, c0de3f24 <nbgl_layoutGet+0x1b8>
c0de3f0e:	9001      	str	r0, [sp, #4]
c0de3f10:	f88d 1000 	strb.w	r1, [sp]
c0de3f14:	4669      	mov	r1, sp
c0de3f16:	4620      	mov	r0, r4
c0de3f18:	f88d 3009 	strb.w	r3, [sp, #9]
c0de3f1c:	f88d 2008 	strb.w	r2, [sp, #8]
c0de3f20:	f000 f992 	bl	c0de4248 <nbgl_layoutAddUpFooter>
c0de3f24:	4620      	mov	r0, r4
c0de3f26:	b005      	add	sp, #20
c0de3f28:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de3f2c:	fffffe98 	.word	0xfffffe98
c0de3f30:	00000880 	.word	0x00000880
c0de3f34:	00000a9c 	.word	0x00000a9c
c0de3f38:	00000113 	.word	0x00000113

c0de3f3c <touchCallback>:
c0de3f3c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f40:	2800      	cmp	r0, #0
c0de3f42:	f000 817e 	beq.w	c0de4242 <touchCallback+0x306>
c0de3f46:	460d      	mov	r5, r1
c0de3f48:	a901      	add	r1, sp, #4
c0de3f4a:	466a      	mov	r2, sp
c0de3f4c:	4604      	mov	r4, r0
c0de3f4e:	f002 ffcd 	bl	c0de6eec <getLayoutAndLayoutObj>
c0de3f52:	b968      	cbnz	r0, c0de3f70 <touchCallback+0x34>
c0de3f54:	4620      	mov	r0, r4
c0de3f56:	f810 1f0e 	ldrb.w	r1, [r0, #14]!
c0de3f5a:	f003 f997 	bl	c0de728c <OUTLINED_FUNCTION_23>
c0de3f5e:	466a      	mov	r2, sp
c0de3f60:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3f64:	a901      	add	r1, sp, #4
c0de3f66:	f002 ffc1 	bl	c0de6eec <getLayoutAndLayoutObj>
c0de3f6a:	2800      	cmp	r0, #0
c0de3f6c:	f000 8169 	beq.w	c0de4242 <touchCallback+0x306>
c0de3f70:	1fe8      	subs	r0, r5, #7
c0de3f72:	b2c0      	uxtb	r0, r0
c0de3f74:	2803      	cmp	r0, #3
c0de3f76:	d833      	bhi.n	c0de3fe0 <touchCallback+0xa4>
c0de3f78:	7ee0      	ldrb	r0, [r4, #27]
c0de3f7a:	2801      	cmp	r0, #1
c0de3f7c:	d130      	bne.n	c0de3fe0 <touchCallback+0xa4>
c0de3f7e:	9901      	ldr	r1, [sp, #4]
c0de3f80:	4628      	mov	r0, r5
c0de3f82:	f891 20b0 	ldrb.w	r2, [r1, #176]	@ 0xb0
c0de3f86:	2a01      	cmp	r2, #1
c0de3f88:	d028      	beq.n	c0de3fdc <touchCallback+0xa0>
c0de3f8a:	bb4a      	cbnz	r2, c0de3fe0 <touchCallback+0xa4>
c0de3f8c:	f8d1 00a0 	ldr.w	r0, [r1, #160]	@ 0xa0
c0de3f90:	42a0      	cmp	r0, r4
c0de3f92:	d125      	bne.n	c0de3fe0 <touchCallback+0xa4>
c0de3f94:	f891 00ab 	ldrb.w	r0, [r1, #171]	@ 0xab
c0de3f98:	2803      	cmp	r0, #3
c0de3f9a:	d005      	beq.n	c0de3fa8 <touchCallback+0x6c>
c0de3f9c:	2804      	cmp	r0, #4
c0de3f9e:	f040 8150 	bne.w	c0de4242 <touchCallback+0x306>
c0de3fa2:	f101 0010 	add.w	r0, r1, #16
c0de3fa6:	e00c      	b.n	c0de3fc2 <touchCallback+0x86>
c0de3fa8:	6908      	ldr	r0, [r1, #16]
c0de3faa:	f810 2f22 	ldrb.w	r2, [r0, #34]!
c0de3fae:	7843      	ldrb	r3, [r0, #1]
c0de3fb0:	7886      	ldrb	r6, [r0, #2]
c0de3fb2:	78c0      	ldrb	r0, [r0, #3]
c0de3fb4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3fb8:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de3fbc:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de3fc0:	3004      	adds	r0, #4
c0de3fc2:	f101 06a9 	add.w	r6, r1, #169	@ 0xa9
c0de3fc6:	f891 20a8 	ldrb.w	r2, [r1, #168]	@ 0xa8
c0de3fca:	6800      	ldr	r0, [r0, #0]
c0de3fcc:	4629      	mov	r1, r5
c0de3fce:	4633      	mov	r3, r6
c0de3fd0:	f003 fadc 	bl	c0de758c <layoutNavigationCallback>
c0de3fd4:	2800      	cmp	r0, #0
c0de3fd6:	f000 8134 	beq.w	c0de4242 <touchCallback+0x306>
c0de3fda:	7830      	ldrb	r0, [r6, #0]
c0de3fdc:	9900      	ldr	r1, [sp, #0]
c0de3fde:	7148      	strb	r0, [r1, #5]
c0de3fe0:	4620      	mov	r0, r4
c0de3fe2:	9f01      	ldr	r7, [sp, #4]
c0de3fe4:	f810 1f0e 	ldrb.w	r1, [r0, #14]!
c0de3fe8:	f003 fa1c 	bl	c0de7424 <OUTLINED_FUNCTION_45>
c0de3fec:	6938      	ldr	r0, [r7, #16]
c0de3fee:	4281      	cmp	r1, r0
c0de3ff0:	d103      	bne.n	c0de3ffa <touchCallback+0xbe>
c0de3ff2:	f897 20ab 	ldrb.w	r2, [r7, #171]	@ 0xab
c0de3ff6:	2a04      	cmp	r2, #4
c0de3ff8:	d00c      	beq.n	c0de4014 <touchCallback+0xd8>
c0de3ffa:	7eca      	ldrb	r2, [r1, #27]
c0de3ffc:	2a01      	cmp	r2, #1
c0de3ffe:	d118      	bne.n	c0de4032 <touchCallback+0xf6>
c0de4000:	f811 2f0e 	ldrb.w	r2, [r1, #14]!
c0de4004:	f003 f89e 	bl	c0de7144 <OUTLINED_FUNCTION_9>
c0de4008:	4281      	cmp	r1, r0
c0de400a:	d112      	bne.n	c0de4032 <touchCallback+0xf6>
c0de400c:	f897 00ab 	ldrb.w	r0, [r7, #171]	@ 0xab
c0de4010:	2803      	cmp	r0, #3
c0de4012:	d10e      	bne.n	c0de4032 <touchCallback+0xf6>
c0de4014:	f107 06a9 	add.w	r6, r7, #169	@ 0xa9
c0de4018:	f897 20a8 	ldrb.w	r2, [r7, #168]	@ 0xa8
c0de401c:	4620      	mov	r0, r4
c0de401e:	4629      	mov	r1, r5
c0de4020:	4633      	mov	r3, r6
c0de4022:	f003 fab3 	bl	c0de758c <layoutNavigationCallback>
c0de4026:	2800      	cmp	r0, #0
c0de4028:	f000 810b 	beq.w	c0de4242 <touchCallback+0x306>
c0de402c:	7830      	ldrb	r0, [r6, #0]
c0de402e:	9900      	ldr	r1, [sp, #0]
c0de4030:	7148      	strb	r0, [r1, #5]
c0de4032:	7ee0      	ldrb	r0, [r4, #27]
c0de4034:	2801      	cmp	r0, #1
c0de4036:	f040 80ac 	bne.w	c0de4192 <touchCallback+0x256>
c0de403a:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de403e:	2802      	cmp	r0, #2
c0de4040:	f0c0 80a7 	bcc.w	c0de4192 <touchCallback+0x256>
c0de4044:	4621      	mov	r1, r4
c0de4046:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de404a:	f003 f87b 	bl	c0de7144 <OUTLINED_FUNCTION_9>
c0de404e:	684e      	ldr	r6, [r1, #4]
c0de4050:	b196      	cbz	r6, c0de4078 <touchCallback+0x13c>
c0de4052:	7ef1      	ldrb	r1, [r6, #27]
c0de4054:	2906      	cmp	r1, #6
c0de4056:	d10f      	bne.n	c0de4078 <touchCallback+0x13c>
c0de4058:	f896 0021 	ldrb.w	r0, [r6, #33]	@ 0x21
c0de405c:	3801      	subs	r0, #1
c0de405e:	bf18      	it	ne
c0de4060:	2001      	movne	r0, #1
c0de4062:	f886 0021 	strb.w	r0, [r6, #33]	@ 0x21
c0de4066:	4630      	mov	r0, r6
c0de4068:	f007 f8a7 	bl	c0deb1ba <nbgl_objDraw>
c0de406c:	f896 0021 	ldrb.w	r0, [r6, #33]	@ 0x21
c0de4070:	9900      	ldr	r1, [sp, #0]
c0de4072:	2401      	movs	r4, #1
c0de4074:	7148      	strb	r0, [r1, #5]
c0de4076:	e08d      	b.n	c0de4194 <touchCallback+0x258>
c0de4078:	2804      	cmp	r0, #4
c0de407a:	d064      	beq.n	c0de4146 <touchCallback+0x20a>
c0de407c:	2802      	cmp	r0, #2
c0de407e:	f040 8088 	bne.w	c0de4192 <touchCallback+0x256>
c0de4082:	4620      	mov	r0, r4
c0de4084:	f003 f8d6 	bl	c0de7234 <OUTLINED_FUNCTION_18>
c0de4088:	6840      	ldr	r0, [r0, #4]
c0de408a:	2800      	cmp	r0, #0
c0de408c:	f000 8081 	beq.w	c0de4192 <touchCallback+0x256>
c0de4090:	7ec0      	ldrb	r0, [r0, #27]
c0de4092:	2809      	cmp	r0, #9
c0de4094:	d17d      	bne.n	c0de4192 <touchCallback+0x256>
c0de4096:	2d00      	cmp	r5, #0
c0de4098:	f040 80d3 	bne.w	c0de4242 <touchCallback+0x306>
c0de409c:	f04f 0aff 	mov.w	sl, #255	@ 0xff
c0de40a0:	2500      	movs	r5, #0
c0de40a2:	f04f 0800 	mov.w	r8, #0
c0de40a6:	f897 10ae 	ldrb.w	r1, [r7, #174]	@ 0xae
c0de40aa:	fa5f f088 	uxtb.w	r0, r8
c0de40ae:	f001 013f 	and.w	r1, r1, #63	@ 0x3f
c0de40b2:	4281      	cmp	r1, r0
c0de40b4:	f240 8085 	bls.w	c0de41c2 <touchCallback+0x286>
c0de40b8:	eb07 00c0 	add.w	r0, r7, r0, lsl #3
c0de40bc:	6a00      	ldr	r0, [r0, #32]
c0de40be:	42a0      	cmp	r0, r4
c0de40c0:	d117      	bne.n	c0de40f2 <touchCallback+0x1b6>
c0de40c2:	7ee1      	ldrb	r1, [r4, #27]
c0de40c4:	2901      	cmp	r1, #1
c0de40c6:	d114      	bne.n	c0de40f2 <touchCallback+0x1b6>
c0de40c8:	4620      	mov	r0, r4
c0de40ca:	46ab      	mov	fp, r5
c0de40cc:	46c2      	mov	sl, r8
c0de40ce:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de40d2:	f003 f8db 	bl	c0de728c <OUTLINED_FUNCTION_23>
c0de40d6:	220c      	movs	r2, #12
c0de40d8:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de40dc:	e9d0 1000 	ldrd	r1, r0, [r0]
c0de40e0:	f881 2022 	strb.w	r2, [r1, #34]	@ 0x22
c0de40e4:	2200      	movs	r2, #0
c0de40e6:	77ca      	strb	r2, [r1, #31]
c0de40e8:	2101      	movs	r1, #1
c0de40ea:	f880 1021 	strb.w	r1, [r0, #33]	@ 0x21
c0de40ee:	4620      	mov	r0, r4
c0de40f0:	e024      	b.n	c0de413c <touchCallback+0x200>
c0de40f2:	7ec1      	ldrb	r1, [r0, #27]
c0de40f4:	2901      	cmp	r1, #1
c0de40f6:	d123      	bne.n	c0de4140 <touchCallback+0x204>
c0de40f8:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de40fc:	2902      	cmp	r1, #2
c0de40fe:	d11f      	bne.n	c0de4140 <touchCallback+0x204>
c0de4100:	4601      	mov	r1, r0
c0de4102:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4106:	784b      	ldrb	r3, [r1, #1]
c0de4108:	788e      	ldrb	r6, [r1, #2]
c0de410a:	78c9      	ldrb	r1, [r1, #3]
c0de410c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4110:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de4114:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de4118:	6851      	ldr	r1, [r2, #4]
c0de411a:	7ecb      	ldrb	r3, [r1, #27]
c0de411c:	2b09      	cmp	r3, #9
c0de411e:	d10f      	bne.n	c0de4140 <touchCallback+0x204>
c0de4120:	f891 3021 	ldrb.w	r3, [r1, #33]	@ 0x21
c0de4124:	3501      	adds	r5, #1
c0de4126:	2b01      	cmp	r3, #1
c0de4128:	d10a      	bne.n	c0de4140 <touchCallback+0x204>
c0de412a:	6812      	ldr	r2, [r2, #0]
c0de412c:	230b      	movs	r3, #11
c0de412e:	f882 3022 	strb.w	r3, [r2, #34]	@ 0x22
c0de4132:	2301      	movs	r3, #1
c0de4134:	77d3      	strb	r3, [r2, #31]
c0de4136:	2200      	movs	r2, #0
c0de4138:	f881 2021 	strb.w	r2, [r1, #33]	@ 0x21
c0de413c:	f007 f83d 	bl	c0deb1ba <nbgl_objDraw>
c0de4140:	f108 0801 	add.w	r8, r8, #1
c0de4144:	e7af      	b.n	c0de40a6 <touchCallback+0x16a>
c0de4146:	4620      	mov	r0, r4
c0de4148:	f003 f874 	bl	c0de7234 <OUTLINED_FUNCTION_18>
c0de414c:	68c6      	ldr	r6, [r0, #12]
c0de414e:	b306      	cbz	r6, c0de4192 <touchCallback+0x256>
c0de4150:	7ef0      	ldrb	r0, [r6, #27]
c0de4152:	2808      	cmp	r0, #8
c0de4154:	d11d      	bne.n	c0de4192 <touchCallback+0x256>
c0de4156:	2d0a      	cmp	r5, #10
c0de4158:	d873      	bhi.n	c0de4242 <touchCallback+0x306>
c0de415a:	2001      	movs	r0, #1
c0de415c:	40a8      	lsls	r0, r5
c0de415e:	f410 6fc5 	tst.w	r0, #1576	@ 0x628
c0de4162:	d045      	beq.n	c0de41f0 <touchCallback+0x2b4>
c0de4164:	f007 fa62 	bl	c0deb62c <nbgl_wait_pipeline>
c0de4168:	2000      	movs	r0, #0
c0de416a:	f003 f916 	bl	c0de739a <OUTLINED_FUNCTION_35>
c0de416e:	f814 0f22 	ldrb.w	r0, [r4, #34]!
c0de4172:	7861      	ldrb	r1, [r4, #1]
c0de4174:	78a2      	ldrb	r2, [r4, #2]
c0de4176:	78e3      	ldrb	r3, [r4, #3]
c0de4178:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de417c:	f003 f91d 	bl	c0de73ba <OUTLINED_FUNCTION_37>
c0de4180:	6880      	ldr	r0, [r0, #8]
c0de4182:	f007 f81a 	bl	c0deb1ba <nbgl_objDraw>
c0de4186:	2003      	movs	r0, #3
c0de4188:	2100      	movs	r1, #0
c0de418a:	e8bd 4dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de418e:	f007 b80a 	b.w	c0deb1a6 <nbgl_refreshSpecialWithPostRefresh>
c0de4192:	2400      	movs	r4, #0
c0de4194:	69f8      	ldr	r0, [r7, #28]
c0de4196:	2800      	cmp	r0, #0
c0de4198:	d053      	beq.n	c0de4242 <touchCallback+0x306>
c0de419a:	9d00      	ldr	r5, [sp, #0]
c0de419c:	7928      	ldrb	r0, [r5, #4]
c0de419e:	28ff      	cmp	r0, #255	@ 0xff
c0de41a0:	d04f      	beq.n	c0de4242 <touchCallback+0x306>
c0de41a2:	79a8      	ldrb	r0, [r5, #6]
c0de41a4:	280b      	cmp	r0, #11
c0de41a6:	bf98      	it	ls
c0de41a8:	f7ff fbd9 	blls	c0de395e <os_io_seph_cmd_piezo_play_tune>
c0de41ac:	b114      	cbz	r4, c0de41b4 <touchCallback+0x278>
c0de41ae:	2001      	movs	r0, #1
c0de41b0:	f006 fff4 	bl	c0deb19c <nbgl_refreshSpecial>
c0de41b4:	7928      	ldrb	r0, [r5, #4]
c0de41b6:	7969      	ldrb	r1, [r5, #5]
c0de41b8:	69fa      	ldr	r2, [r7, #28]
c0de41ba:	b002      	add	sp, #8
c0de41bc:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de41c0:	4710      	bx	r2
c0de41c2:	fa5f f08a 	uxtb.w	r0, sl
c0de41c6:	28ff      	cmp	r0, #255	@ 0xff
c0de41c8:	d03b      	beq.n	c0de4242 <touchCallback+0x306>
c0de41ca:	69f9      	ldr	r1, [r7, #28]
c0de41cc:	b3c9      	cbz	r1, c0de4242 <touchCallback+0x306>
c0de41ce:	eb07 04c0 	add.w	r4, r7, r0, lsl #3
c0de41d2:	f894 0026 	ldrb.w	r0, [r4, #38]	@ 0x26
c0de41d6:	280b      	cmp	r0, #11
c0de41d8:	bf98      	it	ls
c0de41da:	f7ff fbc0 	blls	c0de395e <os_io_seph_cmd_piezo_play_tune>
c0de41de:	2001      	movs	r0, #1
c0de41e0:	f006 ffdc 	bl	c0deb19c <nbgl_refreshSpecial>
c0de41e4:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de41e8:	69fa      	ldr	r2, [r7, #28]
c0de41ea:	fa5f f18b 	uxtb.w	r1, fp
c0de41ee:	e7e4      	b.n	c0de41ba <touchCallback+0x27e>
c0de41f0:	2d02      	cmp	r5, #2
c0de41f2:	d126      	bne.n	c0de4242 <touchCallback+0x306>
c0de41f4:	9d00      	ldr	r5, [sp, #0]
c0de41f6:	4620      	mov	r0, r4
c0de41f8:	f007 f83e 	bl	c0deb278 <nbgl_touchGetTouchDuration>
c0de41fc:	f896 1021 	ldrb.w	r1, [r6, #33]	@ 0x21
c0de4200:	2200      	movs	r2, #0
c0de4202:	2300      	movs	r3, #0
c0de4204:	2964      	cmp	r1, #100	@ 0x64
c0de4206:	bf38      	it	cc
c0de4208:	2301      	movcc	r3, #1
c0de420a:	2464      	movs	r4, #100	@ 0x64
c0de420c:	fbb0 f0f4 	udiv	r0, r0, r4
c0de4210:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
c0de4214:	b2c4      	uxtb	r4, r0
c0de4216:	2c63      	cmp	r4, #99	@ 0x63
c0de4218:	bf88      	it	hi
c0de421a:	2201      	movhi	r2, #1
c0de421c:	ea02 0403 	and.w	r4, r2, r3
c0de4220:	bf88      	it	hi
c0de4222:	2064      	movhi	r0, #100	@ 0x64
c0de4224:	b2c2      	uxtb	r2, r0
c0de4226:	428a      	cmp	r2, r1
c0de4228:	d005      	beq.n	c0de4236 <touchCallback+0x2fa>
c0de422a:	f003 f8b6 	bl	c0de739a <OUTLINED_FUNCTION_35>
c0de422e:	2004      	movs	r0, #4
c0de4230:	2102      	movs	r1, #2
c0de4232:	f006 ffb8 	bl	c0deb1a6 <nbgl_refreshSpecialWithPostRefresh>
c0de4236:	b124      	cbz	r4, c0de4242 <touchCallback+0x306>
c0de4238:	69fa      	ldr	r2, [r7, #28]
c0de423a:	b112      	cbz	r2, c0de4242 <touchCallback+0x306>
c0de423c:	7928      	ldrb	r0, [r5, #4]
c0de423e:	7969      	ldrb	r1, [r5, #5]
c0de4240:	e7bb      	b.n	c0de41ba <touchCallback+0x27e>
c0de4242:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de4248 <nbgl_layoutAddUpFooter>:
c0de4248:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de424c:	2800      	cmp	r0, #0
c0de424e:	f000 826c 	beq.w	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de4252:	460d      	mov	r5, r1
c0de4254:	b119      	cbz	r1, c0de425e <nbgl_layoutAddUpFooter+0x16>
c0de4256:	4604      	mov	r4, r0
c0de4258:	7828      	ldrb	r0, [r5, #0]
c0de425a:	2804      	cmp	r0, #4
c0de425c:	d903      	bls.n	c0de4266 <nbgl_layoutAddUpFooter+0x1e>
c0de425e:	f06f 0001 	mvn.w	r0, #1
c0de4262:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4266:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de426a:	2601      	movs	r6, #1
c0de426c:	f002 ffee 	bl	c0de724c <OUTLINED_FUNCTION_19>
c0de4270:	f003 f8fd 	bl	c0de746e <OUTLINED_FUNCTION_51>
c0de4274:	6160      	str	r0, [r4, #20]
c0de4276:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de427a:	f003 f915 	bl	c0de74a8 <OUTLINED_FUNCTION_56>
c0de427e:	6961      	ldr	r1, [r4, #20]
c0de4280:	0a02      	lsrs	r2, r0, #8
c0de4282:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
c0de4286:	0e06      	lsrs	r6, r0, #24
c0de4288:	f881 2023 	strb.w	r2, [r1, #35]	@ 0x23
c0de428c:	2208      	movs	r2, #8
c0de428e:	f003 f936 	bl	c0de74fe <OUTLINED_FUNCTION_65>
c0de4292:	4608      	mov	r0, r1
c0de4294:	70d6      	strb	r6, [r2, #3]
c0de4296:	0e1a      	lsrs	r2, r3, #24
c0de4298:	f800 3f12 	strb.w	r3, [r0, #18]!
c0de429c:	70c2      	strb	r2, [r0, #3]
c0de429e:	0c1a      	lsrs	r2, r3, #16
c0de42a0:	7082      	strb	r2, [r0, #2]
c0de42a2:	0a18      	lsrs	r0, r3, #8
c0de42a4:	74c8      	strb	r0, [r1, #19]
c0de42a6:	7828      	ldrb	r0, [r5, #0]
c0de42a8:	2804      	cmp	r0, #4
c0de42aa:	f000 80ba 	beq.w	c0de4422 <nbgl_layoutAddUpFooter+0x1da>
c0de42ae:	2801      	cmp	r0, #1
c0de42b0:	f000 80e9 	beq.w	c0de4486 <nbgl_layoutAddUpFooter+0x23e>
c0de42b4:	2802      	cmp	r0, #2
c0de42b6:	f000 814b 	beq.w	c0de4550 <nbgl_layoutAddUpFooter+0x308>
c0de42ba:	2803      	cmp	r0, #3
c0de42bc:	f000 81d2 	beq.w	c0de4664 <nbgl_layoutAddUpFooter+0x41c>
c0de42c0:	2800      	cmp	r0, #0
c0de42c2:	d1cc      	bne.n	c0de425e <nbgl_layoutAddUpFooter+0x16>
c0de42c4:	f003 f956 	bl	c0de7574 <OUTLINED_FUNCTION_74>
c0de42c8:	2800      	cmp	r0, #0
c0de42ca:	f000 822e 	beq.w	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de42ce:	6960      	ldr	r0, [r4, #20]
c0de42d0:	2112      	movs	r1, #18
c0de42d2:	f04f 0804 	mov.w	r8, #4
c0de42d6:	f04f 0a00 	mov.w	sl, #0
c0de42da:	2706      	movs	r7, #6
c0de42dc:	7781      	strb	r1, [r0, #30]
c0de42de:	2198      	movs	r1, #152	@ 0x98
c0de42e0:	f880 8020 	strb.w	r8, [r0, #32]
c0de42e4:	f880 a007 	strb.w	sl, [r0, #7]
c0de42e8:	7747      	strb	r7, [r0, #29]
c0de42ea:	7181      	strb	r1, [r0, #6]
c0de42ec:	212c      	movs	r1, #44	@ 0x2c
c0de42ee:	7701      	strb	r1, [r0, #28]
c0de42f0:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de42f4:	4ed9      	ldr	r6, [pc, #868]	@ (c0de465c <nbgl_layoutAddUpFooter+0x414>)
c0de42f6:	08c1      	lsrs	r1, r0, #3
c0de42f8:	447e      	add	r6, pc
c0de42fa:	2005      	movs	r0, #5
c0de42fc:	47b0      	blx	r6
c0de42fe:	46b3      	mov	fp, r6
c0de4300:	4606      	mov	r6, r0
c0de4302:	f880 a018 	strb.w	sl, [r0, #24]
c0de4306:	2020      	movs	r0, #32
c0de4308:	2103      	movs	r1, #3
c0de430a:	75f0      	strb	r0, [r6, #23]
c0de430c:	2058      	movs	r0, #88	@ 0x58
c0de430e:	75b7      	strb	r7, [r6, #22]
c0de4310:	4637      	mov	r7, r6
c0de4312:	f886 a007 	strb.w	sl, [r6, #7]
c0de4316:	f886 1021 	strb.w	r1, [r6, #33]	@ 0x21
c0de431a:	f886 a01f 	strb.w	sl, [r6, #31]
c0de431e:	f886 a020 	strb.w	sl, [r6, #32]
c0de4322:	f886 8022 	strb.w	r8, [r6, #34]	@ 0x22
c0de4326:	f807 0f04 	strb.w	r0, [r7, #4]!
c0de432a:	71b0      	strb	r0, [r6, #6]
c0de432c:	f887 a001 	strb.w	sl, [r7, #1]
c0de4330:	48cb      	ldr	r0, [pc, #812]	@ (c0de4660 <nbgl_layoutAddUpFooter+0x418>)
c0de4332:	4478      	add	r0, pc
c0de4334:	f007 f94a 	bl	c0deb5cc <pic>
c0de4338:	4631      	mov	r1, r6
c0de433a:	0e02      	lsrs	r2, r0, #24
c0de433c:	f002 ffea 	bl	c0de7314 <OUTLINED_FUNCTION_29>
c0de4340:	6960      	ldr	r0, [r4, #20]
c0de4342:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4346:	7842      	ldrb	r2, [r0, #1]
c0de4348:	7883      	ldrb	r3, [r0, #2]
c0de434a:	78c0      	ldrb	r0, [r0, #3]
c0de434c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4350:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4354:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4358:	6006      	str	r6, [r0, #0]
c0de435a:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de435e:	08c1      	lsrs	r1, r0, #3
c0de4360:	2004      	movs	r0, #4
c0de4362:	47d8      	blx	fp
c0de4364:	f880 a01f 	strb.w	sl, [r0, #31]
c0de4368:	4606      	mov	r6, r0
c0de436a:	f002 ff8c 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de436e:	4601      	mov	r1, r0
c0de4370:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de4374:	2301      	movs	r3, #1
c0de4376:	f886 8020 	strb.w	r8, [r6, #32]
c0de437a:	0e0a      	lsrs	r2, r1, #24
c0de437c:	f040 0001 	orr.w	r0, r0, #1
c0de4380:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de4384:	200d      	movs	r0, #13
c0de4386:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de438a:	f003 f837 	bl	c0de73fc <OUTLINED_FUNCTION_43>
c0de438e:	7838      	ldrb	r0, [r7, #0]
c0de4390:	787a      	ldrb	r2, [r7, #1]
c0de4392:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de4396:	f5c0 70c0 	rsb	r0, r0, #384	@ 0x180
c0de439a:	0a02      	lsrs	r2, r0, #8
c0de439c:	7130      	strb	r0, [r6, #4]
c0de439e:	7172      	strb	r2, [r6, #5]
c0de43a0:	b282      	uxth	r2, r0
c0de43a2:	f003 f8a5 	bl	c0de74f0 <OUTLINED_FUNCTION_62>
c0de43a6:	2120      	movs	r1, #32
c0de43a8:	71b0      	strb	r0, [r6, #6]
c0de43aa:	0a00      	lsrs	r0, r0, #8
c0de43ac:	f886 a021 	strb.w	sl, [r6, #33]	@ 0x21
c0de43b0:	f003 f8cd 	bl	c0de754e <OUTLINED_FUNCTION_71>
c0de43b4:	75f1      	strb	r1, [r6, #23]
c0de43b6:	71f0      	strb	r0, [r6, #7]
c0de43b8:	6960      	ldr	r0, [r4, #20]
c0de43ba:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de43be:	7842      	ldrb	r2, [r0, #1]
c0de43c0:	7883      	ldrb	r3, [r0, #2]
c0de43c2:	78c0      	ldrb	r0, [r0, #3]
c0de43c4:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de43c8:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de43cc:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de43d0:	6046      	str	r6, [r0, #4]
c0de43d2:	f002 ff53 	bl	c0de727c <OUTLINED_FUNCTION_21>
c0de43d6:	6961      	ldr	r1, [r4, #20]
c0de43d8:	2602      	movs	r6, #2
c0de43da:	7586      	strb	r6, [r0, #22]
c0de43dc:	f003 f818 	bl	c0de7410 <OUTLINED_FUNCTION_44>
c0de43e0:	2708      	movs	r7, #8
c0de43e2:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de43e6:	6088      	str	r0, [r1, #8]
c0de43e8:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de43ec:	08c1      	lsrs	r1, r0, #3
c0de43ee:	2008      	movs	r0, #8
c0de43f0:	47d8      	blx	fp
c0de43f2:	f890 1022 	ldrb.w	r1, [r0, #34]	@ 0x22
c0de43f6:	7187      	strb	r7, [r0, #6]
c0de43f8:	7586      	strb	r6, [r0, #22]
c0de43fa:	f880 a01a 	strb.w	sl, [r0, #26]
c0de43fe:	f880 a007 	strb.w	sl, [r0, #7]
c0de4402:	f041 0105 	orr.w	r1, r1, #5
c0de4406:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de440a:	2101      	movs	r1, #1
c0de440c:	7641      	strb	r1, [r0, #25]
c0de440e:	7141      	strb	r1, [r0, #5]
c0de4410:	21e0      	movs	r1, #224	@ 0xe0
c0de4412:	7101      	strb	r1, [r0, #4]
c0de4414:	6961      	ldr	r1, [r4, #20]
c0de4416:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de441a:	f002 fe93 	bl	c0de7144 <OUTLINED_FUNCTION_9>
c0de441e:	60c8      	str	r0, [r1, #12]
c0de4420:	e1f0      	b.n	c0de4804 <nbgl_layoutAddUpFooter+0x5bc>
c0de4422:	f003 f8a7 	bl	c0de7574 <OUTLINED_FUNCTION_74>
c0de4426:	2800      	cmp	r0, #0
c0de4428:	f000 817f 	beq.w	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de442c:	6960      	ldr	r0, [r4, #20]
c0de442e:	2104      	movs	r1, #4
c0de4430:	2701      	movs	r7, #1
c0de4432:	2260      	movs	r2, #96	@ 0x60
c0de4434:	7781      	strb	r1, [r0, #30]
c0de4436:	2100      	movs	r1, #0
c0de4438:	f880 7020 	strb.w	r7, [r0, #32]
c0de443c:	7182      	strb	r2, [r0, #6]
c0de443e:	7707      	strb	r7, [r0, #28]
c0de4440:	71c1      	strb	r1, [r0, #7]
c0de4442:	7741      	strb	r1, [r0, #29]
c0de4444:	f002 ff1f 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de4448:	7800      	ldrb	r0, [r0, #0]
c0de444a:	2800      	cmp	r0, #0
c0de444c:	f000 81da 	beq.w	c0de4804 <nbgl_layoutAddUpFooter+0x5bc>
c0de4450:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4454:	f002 fdf8 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de4458:	77c7      	strb	r7, [r0, #31]
c0de445a:	4606      	mov	r6, r0
c0de445c:	f002 ff13 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de4460:	4601      	mov	r1, r0
c0de4462:	20a0      	movs	r0, #160	@ 0xa0
c0de4464:	7177      	strb	r7, [r6, #5]
c0de4466:	2705      	movs	r7, #5
c0de4468:	2301      	movs	r3, #1
c0de446a:	7130      	strb	r0, [r6, #4]
c0de446c:	200b      	movs	r0, #11
c0de446e:	0e0a      	lsrs	r2, r1, #24
c0de4470:	f886 7020 	strb.w	r7, [r6, #32]
c0de4474:	f002 fec4 	bl	c0de7200 <OUTLINED_FUNCTION_16>
c0de4478:	f006 fee0 	bl	c0deb23c <nbgl_getTextHeightInWidth>
c0de447c:	71b0      	strb	r0, [r6, #6]
c0de447e:	0a00      	lsrs	r0, r0, #8
c0de4480:	75b7      	strb	r7, [r6, #22]
c0de4482:	71f0      	strb	r0, [r6, #7]
c0de4484:	e056      	b.n	c0de4534 <nbgl_layoutAddUpFooter+0x2ec>
c0de4486:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de448a:	2705      	movs	r7, #5
c0de448c:	f002 fe9a 	bl	c0de71c4 <OUTLINED_FUNCTION_13>
c0de4490:	4606      	mov	r6, r0
c0de4492:	7b2a      	ldrb	r2, [r5, #12]
c0de4494:	7c2b      	ldrb	r3, [r5, #16]
c0de4496:	f002 feaf 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de449a:	2800      	cmp	r0, #0
c0de449c:	f000 8145 	beq.w	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de44a0:	6960      	ldr	r0, [r4, #20]
c0de44a2:	75b7      	strb	r7, [r6, #22]
c0de44a4:	f04f 0801 	mov.w	r8, #1
c0de44a8:	2700      	movs	r7, #0
c0de44aa:	2188      	movs	r1, #136	@ 0x88
c0de44ac:	f880 8020 	strb.w	r8, [r0, #32]
c0de44b0:	71c7      	strb	r7, [r0, #7]
c0de44b2:	7181      	strb	r1, [r0, #6]
c0de44b4:	7b68      	ldrb	r0, [r5, #13]
c0de44b6:	2800      	cmp	r0, #0
c0de44b8:	bf18      	it	ne
c0de44ba:	2003      	movne	r0, #3
c0de44bc:	77f0      	strb	r0, [r6, #31]
c0de44be:	f04f 0000 	mov.w	r0, #0
c0de44c2:	bf08      	it	eq
c0de44c4:	2003      	moveq	r0, #3
c0de44c6:	f886 0021 	strb.w	r0, [r6, #33]	@ 0x21
c0de44ca:	7b68      	ldrb	r0, [r5, #13]
c0de44cc:	4601      	mov	r1, r0
c0de44ce:	2800      	cmp	r0, #0
c0de44d0:	bf18      	it	ne
c0de44d2:	2101      	movne	r1, #1
c0de44d4:	0049      	lsls	r1, r1, #1
c0de44d6:	2802      	cmp	r0, #2
c0de44d8:	bf08      	it	eq
c0de44da:	2103      	moveq	r1, #3
c0de44dc:	f886 1020 	strb.w	r1, [r6, #32]
c0de44e0:	f002 fed1 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de44e4:	210c      	movs	r1, #12
c0de44e6:	0e02      	lsrs	r2, r0, #24
c0de44e8:	f886 1023 	strb.w	r1, [r6, #35]	@ 0x23
c0de44ec:	4631      	mov	r1, r6
c0de44ee:	f002 ff23 	bl	c0de7338 <OUTLINED_FUNCTION_31>
c0de44f2:	f002 ffa1 	bl	c0de7438 <OUTLINED_FUNCTION_46>
c0de44f6:	4631      	mov	r1, r6
c0de44f8:	0e02      	lsrs	r2, r0, #24
c0de44fa:	74f7      	strb	r7, [r6, #19]
c0de44fc:	71f7      	strb	r7, [r6, #7]
c0de44fe:	f886 8005 	strb.w	r8, [r6, #5]
c0de4502:	7777      	strb	r7, [r6, #29]
c0de4504:	f886 801c 	strb.w	r8, [r6, #28]
c0de4508:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de450c:	70ca      	strb	r2, [r1, #3]
c0de450e:	0c02      	lsrs	r2, r0, #16
c0de4510:	0a00      	lsrs	r0, r0, #8
c0de4512:	f886 002f 	strb.w	r0, [r6, #47]	@ 0x2f
c0de4516:	4630      	mov	r0, r6
c0de4518:	708a      	strb	r2, [r1, #2]
c0de451a:	f800 7f12 	strb.w	r7, [r0, #18]!
c0de451e:	70c7      	strb	r7, [r0, #3]
c0de4520:	7087      	strb	r7, [r0, #2]
c0de4522:	2058      	movs	r0, #88	@ 0x58
c0de4524:	71b0      	strb	r0, [r6, #6]
c0de4526:	20a0      	movs	r0, #160	@ 0xa0
c0de4528:	7130      	strb	r0, [r6, #4]
c0de452a:	2004      	movs	r0, #4
c0de452c:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4530:	2007      	movs	r0, #7
c0de4532:	77b0      	strb	r0, [r6, #30]
c0de4534:	6960      	ldr	r0, [r4, #20]
c0de4536:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de453a:	7842      	ldrb	r2, [r0, #1]
c0de453c:	7883      	ldrb	r3, [r0, #2]
c0de453e:	78c0      	ldrb	r0, [r0, #3]
c0de4540:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4544:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4548:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de454c:	6006      	str	r6, [r0, #0]
c0de454e:	e159      	b.n	c0de4804 <nbgl_layoutAddUpFooter+0x5bc>
c0de4550:	6868      	ldr	r0, [r5, #4]
c0de4552:	2800      	cmp	r0, #0
c0de4554:	f000 80e9 	beq.w	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de4558:	68a8      	ldr	r0, [r5, #8]
c0de455a:	2800      	cmp	r0, #0
c0de455c:	f000 80e5 	beq.w	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de4560:	f04f 0b00 	mov.w	fp, #0
c0de4564:	2088      	movs	r0, #136	@ 0x88
c0de4566:	2702      	movs	r7, #2
c0de4568:	f881 b007 	strb.w	fp, [r1, #7]
c0de456c:	7188      	strb	r0, [r1, #6]
c0de456e:	f881 7020 	strb.w	r7, [r1, #32]
c0de4572:	f002 fde1 	bl	c0de7138 <OUTLINED_FUNCTION_8>
c0de4576:	4606      	mov	r6, r0
c0de4578:	7b2a      	ldrb	r2, [r5, #12]
c0de457a:	7bab      	ldrb	r3, [r5, #14]
c0de457c:	f002 fe3c 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de4580:	2800      	cmp	r0, #0
c0de4582:	f000 80d2 	beq.w	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de4586:	2120      	movs	r1, #32
c0de4588:	f04f 0804 	mov.w	r8, #4
c0de458c:	f886 7020 	strb.w	r7, [r6, #32]
c0de4590:	2703      	movs	r7, #3
c0de4592:	f04f 0a58 	mov.w	sl, #88	@ 0x58
c0de4596:	f886 b018 	strb.w	fp, [r6, #24]
c0de459a:	f886 b021 	strb.w	fp, [r6, #33]	@ 0x21
c0de459e:	f886 b007 	strb.w	fp, [r6, #7]
c0de45a2:	f886 b005 	strb.w	fp, [r6, #5]
c0de45a6:	75f1      	strb	r1, [r6, #23]
c0de45a8:	2101      	movs	r1, #1
c0de45aa:	f886 8016 	strb.w	r8, [r6, #22]
c0de45ae:	77f7      	strb	r7, [r6, #31]
c0de45b0:	f886 8022 	strb.w	r8, [r6, #34]	@ 0x22
c0de45b4:	7141      	strb	r1, [r0, #5]
c0de45b6:	f886 a006 	strb.w	sl, [r6, #6]
c0de45ba:	f886 a004 	strb.w	sl, [r6, #4]
c0de45be:	f002 fe62 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de45c2:	4631      	mov	r1, r6
c0de45c4:	0e02      	lsrs	r2, r0, #24
c0de45c6:	f886 b01d 	strb.w	fp, [r6, #29]
c0de45ca:	f04f 0b01 	mov.w	fp, #1
c0de45ce:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de45d2:	f886 b01c 	strb.w	fp, [r6, #28]
c0de45d6:	70ca      	strb	r2, [r1, #3]
c0de45d8:	0c02      	lsrs	r2, r0, #16
c0de45da:	0a00      	lsrs	r0, r0, #8
c0de45dc:	f886 002f 	strb.w	r0, [r6, #47]	@ 0x2f
c0de45e0:	200c      	movs	r0, #12
c0de45e2:	708a      	strb	r2, [r1, #2]
c0de45e4:	f886 0023 	strb.w	r0, [r6, #35]	@ 0x23
c0de45e8:	200a      	movs	r0, #10
c0de45ea:	f002 feba 	bl	c0de7362 <OUTLINED_FUNCTION_33>
c0de45ee:	6006      	str	r6, [r0, #0]
c0de45f0:	f002 fda2 	bl	c0de7138 <OUTLINED_FUNCTION_8>
c0de45f4:	4606      	mov	r6, r0
c0de45f6:	7b6a      	ldrb	r2, [r5, #13]
c0de45f8:	7bab      	ldrb	r3, [r5, #14]
c0de45fa:	f002 fdfd 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de45fe:	2800      	cmp	r0, #0
c0de4600:	f000 8093 	beq.w	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de4604:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de4608:	2700      	movs	r7, #0
c0de460a:	2120      	movs	r1, #32
c0de460c:	f886 8022 	strb.w	r8, [r6, #34]	@ 0x22
c0de4610:	f886 b005 	strb.w	fp, [r6, #5]
c0de4614:	75f1      	strb	r1, [r6, #23]
c0de4616:	7147      	strb	r7, [r0, #5]
c0de4618:	2106      	movs	r1, #6
c0de461a:	2038      	movs	r0, #56	@ 0x38
c0de461c:	f886 7020 	strb.w	r7, [r6, #32]
c0de4620:	77f7      	strb	r7, [r6, #31]
c0de4622:	7637      	strb	r7, [r6, #24]
c0de4624:	71f7      	strb	r7, [r6, #7]
c0de4626:	f886 a006 	strb.w	sl, [r6, #6]
c0de462a:	75b1      	strb	r1, [r6, #22]
c0de462c:	7130      	strb	r0, [r6, #4]
c0de462e:	f002 ff03 	bl	c0de7438 <OUTLINED_FUNCTION_46>
c0de4632:	4631      	mov	r1, r6
c0de4634:	0e02      	lsrs	r2, r0, #24
c0de4636:	f886 b01c 	strb.w	fp, [r6, #28]
c0de463a:	7777      	strb	r7, [r6, #29]
c0de463c:	f801 0f25 	strb.w	r0, [r1, #37]!
c0de4640:	70ca      	strb	r2, [r1, #3]
c0de4642:	0c02      	lsrs	r2, r0, #16
c0de4644:	0a00      	lsrs	r0, r0, #8
c0de4646:	f886 0026 	strb.w	r0, [r6, #38]	@ 0x26
c0de464a:	200c      	movs	r0, #12
c0de464c:	708a      	strb	r2, [r1, #2]
c0de464e:	f886 0023 	strb.w	r0, [r6, #35]	@ 0x23
c0de4652:	2009      	movs	r0, #9
c0de4654:	f002 fe85 	bl	c0de7362 <OUTLINED_FUNCTION_33>
c0de4658:	6046      	str	r6, [r0, #4]
c0de465a:	e0d3      	b.n	c0de4804 <nbgl_layoutAddUpFooter+0x5bc>
c0de465c:	00006f0f 	.word	0x00006f0f
c0de4660:	000082c3 	.word	0x000082c3
c0de4664:	6868      	ldr	r0, [r5, #4]
c0de4666:	2800      	cmp	r0, #0
c0de4668:	d05f      	beq.n	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de466a:	7b2a      	ldrb	r2, [r5, #12]
c0de466c:	7b6b      	ldrb	r3, [r5, #13]
c0de466e:	4620      	mov	r0, r4
c0de4670:	f7ff fb5a 	bl	c0de3d28 <layoutAddCallbackObj>
c0de4674:	2800      	cmp	r0, #0
c0de4676:	d058      	beq.n	c0de472a <nbgl_layoutAddUpFooter+0x4e2>
c0de4678:	6960      	ldr	r0, [r4, #20]
c0de467a:	2103      	movs	r1, #3
c0de467c:	f04f 0a00 	mov.w	sl, #0
c0de4680:	2701      	movs	r7, #1
c0de4682:	f04f 0804 	mov.w	r8, #4
c0de4686:	f880 1020 	strb.w	r1, [r0, #32]
c0de468a:	2113      	movs	r1, #19
c0de468c:	f880 a01d 	strb.w	sl, [r0, #29]
c0de4690:	7707      	strb	r7, [r0, #28]
c0de4692:	7781      	strb	r1, [r0, #30]
c0de4694:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4698:	f002 fcd6 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de469c:	f880 a01f 	strb.w	sl, [r0, #31]
c0de46a0:	4606      	mov	r6, r0
c0de46a2:	f002 fdf0 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de46a6:	22a0      	movs	r2, #160	@ 0xa0
c0de46a8:	4601      	mov	r1, r0
c0de46aa:	200b      	movs	r0, #11
c0de46ac:	f886 8020 	strb.w	r8, [r6, #32]
c0de46b0:	7177      	strb	r7, [r6, #5]
c0de46b2:	7132      	strb	r2, [r6, #4]
c0de46b4:	4632      	mov	r2, r6
c0de46b6:	0e0b      	lsrs	r3, r1, #24
c0de46b8:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de46bc:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de46c0:	70d3      	strb	r3, [r2, #3]
c0de46c2:	0c0b      	lsrs	r3, r1, #16
c0de46c4:	7093      	strb	r3, [r2, #2]
c0de46c6:	0a0a      	lsrs	r2, r1, #8
c0de46c8:	f886 2027 	strb.w	r2, [r6, #39]	@ 0x27
c0de46cc:	f896 2024 	ldrb.w	r2, [r6, #36]	@ 0x24
c0de46d0:	f042 0301 	orr.w	r3, r2, #1
c0de46d4:	f886 3024 	strb.w	r3, [r6, #36]	@ 0x24
c0de46d8:	68aa      	ldr	r2, [r5, #8]
c0de46da:	b352      	cbz	r2, c0de4732 <nbgl_layoutAddUpFooter+0x4ea>
c0de46dc:	4610      	mov	r0, r2
c0de46de:	f006 ff75 	bl	c0deb5cc <pic>
c0de46e2:	4637      	mov	r7, r6
c0de46e4:	4601      	mov	r1, r0
c0de46e6:	f817 cf26 	ldrb.w	ip, [r7, #38]!
c0de46ea:	f817 ed22 	ldrb.w	lr, [r7, #-34]!
c0de46ee:	787a      	ldrb	r2, [r7, #1]
c0de46f0:	7fb8      	ldrb	r0, [r7, #30]
c0de46f2:	f897 3020 	ldrb.w	r3, [r7, #32]
c0de46f6:	f897 b023 	ldrb.w	fp, [r7, #35]	@ 0x23
c0de46fa:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
c0de46fe:	780a      	ldrb	r2, [r1, #0]
c0de4700:	7849      	ldrb	r1, [r1, #1]
c0de4702:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4706:	ebae 0101 	sub.w	r1, lr, r1
c0de470a:	f1a1 0220 	sub.w	r2, r1, #32
c0de470e:	0a11      	lsrs	r1, r2, #8
c0de4710:	703a      	strb	r2, [r7, #0]
c0de4712:	7079      	strb	r1, [r7, #1]
c0de4714:	f897 1025 	ldrb.w	r1, [r7, #37]	@ 0x25
c0de4718:	f897 7024 	ldrb.w	r7, [r7, #36]	@ 0x24
c0de471c:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de4720:	ea4c 270b 	orr.w	r7, ip, fp, lsl #8
c0de4724:	ea47 4101 	orr.w	r1, r7, r1, lsl #16
c0de4728:	e005      	b.n	c0de4736 <nbgl_layoutAddUpFooter+0x4ee>
c0de472a:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de472e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4732:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de4736:	b292      	uxth	r2, r2
c0de4738:	f003 0301 	and.w	r3, r3, #1
c0de473c:	f006 fd7e 	bl	c0deb23c <nbgl_getTextHeightInWidth>
c0de4740:	6961      	ldr	r1, [r4, #20]
c0de4742:	f002 ff04 	bl	c0de754e <OUTLINED_FUNCTION_71>
c0de4746:	f002 fe63 	bl	c0de7410 <OUTLINED_FUNCTION_44>
c0de474a:	2720      	movs	r7, #32
c0de474c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4750:	600e      	str	r6, [r1, #0]
c0de4752:	75f7      	strb	r7, [r6, #23]
c0de4754:	71b0      	strb	r0, [r6, #6]
c0de4756:	0a01      	lsrs	r1, r0, #8
c0de4758:	6962      	ldr	r2, [r4, #20]
c0de475a:	71f1      	strb	r1, [r6, #7]
c0de475c:	71d1      	strb	r1, [r2, #7]
c0de475e:	7190      	strb	r0, [r2, #6]
c0de4760:	f002 fd8c 	bl	c0de727c <OUTLINED_FUNCTION_21>
c0de4764:	2102      	movs	r1, #2
c0de4766:	7581      	strb	r1, [r0, #22]
c0de4768:	6961      	ldr	r1, [r4, #20]
c0de476a:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de476e:	f002 fce9 	bl	c0de7144 <OUTLINED_FUNCTION_9>
c0de4772:	6048      	str	r0, [r1, #4]
c0de4774:	68a8      	ldr	r0, [r5, #8]
c0de4776:	b3e0      	cbz	r0, c0de47f2 <nbgl_layoutAddUpFooter+0x5aa>
c0de4778:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de477c:	f002 fda8 	bl	c0de72d0 <OUTLINED_FUNCTION_26>
c0de4780:	4606      	mov	r6, r0
c0de4782:	2000      	movs	r0, #0
c0de4784:	7630      	strb	r0, [r6, #24]
c0de4786:	77f0      	strb	r0, [r6, #31]
c0de4788:	2006      	movs	r0, #6
c0de478a:	75f7      	strb	r7, [r6, #23]
c0de478c:	75b0      	strb	r0, [r6, #22]
c0de478e:	f002 fe53 	bl	c0de7438 <OUTLINED_FUNCTION_46>
c0de4792:	4631      	mov	r1, r6
c0de4794:	0e02      	lsrs	r2, r0, #24
c0de4796:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de479a:	f002 fd46 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de479e:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de47a2:	6960      	ldr	r0, [r4, #20]
c0de47a4:	f810 2f22 	ldrb.w	r2, [r0, #34]!
c0de47a8:	7843      	ldrb	r3, [r0, #1]
c0de47aa:	7887      	ldrb	r7, [r0, #2]
c0de47ac:	78c0      	ldrb	r0, [r0, #3]
c0de47ae:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de47b2:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de47b6:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de47ba:	6086      	str	r6, [r0, #8]
c0de47bc:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de47c0:	780a      	ldrb	r2, [r1, #0]
c0de47c2:	788b      	ldrb	r3, [r1, #2]
c0de47c4:	78c9      	ldrb	r1, [r1, #3]
c0de47c6:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de47ca:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de47ce:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de47d2:	7881      	ldrb	r1, [r0, #2]
c0de47d4:	78c0      	ldrb	r0, [r0, #3]
c0de47d6:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
c0de47da:	6960      	ldr	r0, [r4, #20]
c0de47dc:	7982      	ldrb	r2, [r0, #6]
c0de47de:	79c3      	ldrb	r3, [r0, #7]
c0de47e0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de47e4:	428a      	cmp	r2, r1
c0de47e6:	bf2f      	iteee	cs
c0de47e8:	4611      	movcs	r1, r2
c0de47ea:	7181      	strbcc	r1, [r0, #6]
c0de47ec:	0a0a      	lsrcc	r2, r1, #8
c0de47ee:	71c2      	strbcc	r2, [r0, #7]
c0de47f0:	e004      	b.n	c0de47fc <nbgl_layoutAddUpFooter+0x5b4>
c0de47f2:	6960      	ldr	r0, [r4, #20]
c0de47f4:	7981      	ldrb	r1, [r0, #6]
c0de47f6:	79c2      	ldrb	r2, [r0, #7]
c0de47f8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de47fc:	3130      	adds	r1, #48	@ 0x30
c0de47fe:	7181      	strb	r1, [r0, #6]
c0de4800:	0a09      	lsrs	r1, r1, #8
c0de4802:	71c1      	strb	r1, [r0, #7]
c0de4804:	f8d4 20a0 	ldr.w	r2, [r4, #160]	@ 0xa0
c0de4808:	6961      	ldr	r1, [r4, #20]
c0de480a:	68a0      	ldr	r0, [r4, #8]
c0de480c:	f812 3f06 	ldrb.w	r3, [r2, #6]!
c0de4810:	79cf      	ldrb	r7, [r1, #7]
c0de4812:	7856      	ldrb	r6, [r2, #1]
c0de4814:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de4818:	798e      	ldrb	r6, [r1, #6]
c0de481a:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de481e:	1b9b      	subs	r3, r3, r6
c0de4820:	7013      	strb	r3, [r2, #0]
c0de4822:	6101      	str	r1, [r0, #16]
c0de4824:	0a1b      	lsrs	r3, r3, #8
c0de4826:	6960      	ldr	r0, [r4, #20]
c0de4828:	7053      	strb	r3, [r2, #1]
c0de482a:	782a      	ldrb	r2, [r5, #0]
c0de482c:	7981      	ldrb	r1, [r0, #6]
c0de482e:	79c0      	ldrb	r0, [r0, #7]
c0de4830:	f884 20ac 	strb.w	r2, [r4, #172]	@ 0xac
c0de4834:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4838:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de483c <nbgl_layoutAddSwipe>:
c0de483c:	b3e8      	cbz	r0, c0de48ba <nbgl_layoutAddSwipe+0x7e>
c0de483e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4842:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de4846:	461c      	mov	r4, r3
c0de4848:	4617      	mov	r7, r2
c0de484a:	460d      	mov	r5, r1
c0de484c:	4606      	mov	r6, r0
c0de484e:	b352      	cbz	r2, c0de48a6 <nbgl_layoutAddSwipe+0x6a>
c0de4850:	2004      	movs	r0, #4
c0de4852:	2100      	movs	r1, #0
c0de4854:	f04f 0a00 	mov.w	sl, #0
c0de4858:	f006 fcd7 	bl	c0deb20a <nbgl_objPoolGet>
c0de485c:	61b0      	str	r0, [r6, #24]
c0de485e:	4638      	mov	r0, r7
c0de4860:	f006 feb4 	bl	c0deb5cc <pic>
c0de4864:	69b1      	ldr	r1, [r6, #24]
c0de4866:	0e02      	lsrs	r2, r0, #24
c0de4868:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de486c:	f002 fe0b 	bl	c0de7486 <OUTLINED_FUNCTION_53>
c0de4870:	2001      	movs	r0, #1
c0de4872:	22a0      	movs	r2, #160	@ 0xa0
c0de4874:	f801 2c22 	strb.w	r2, [r1, #-34]
c0de4878:	220b      	movs	r2, #11
c0de487a:	f801 0c21 	strb.w	r0, [r1, #-33]
c0de487e:	f801 0c07 	strb.w	r0, [r1, #-7]
c0de4882:	200b      	movs	r0, #11
c0de4884:	f801 2c04 	strb.w	r2, [r1, #-4]
c0de4888:	f006 fcd3 	bl	c0deb232 <nbgl_getFontLineHeight>
c0de488c:	69b1      	ldr	r1, [r6, #24]
c0de488e:	7188      	strb	r0, [r1, #6]
c0de4890:	201e      	movs	r0, #30
c0de4892:	f881 a007 	strb.w	sl, [r1, #7]
c0de4896:	f881 a01a 	strb.w	sl, [r1, #26]
c0de489a:	7648      	strb	r0, [r1, #25]
c0de489c:	2005      	movs	r0, #5
c0de489e:	f881 0020 	strb.w	r0, [r1, #32]
c0de48a2:	2008      	movs	r0, #8
c0de48a4:	7588      	strb	r0, [r1, #22]
c0de48a6:	4630      	mov	r0, r6
c0de48a8:	4629      	mov	r1, r5
c0de48aa:	2201      	movs	r2, #1
c0de48ac:	4623      	mov	r3, r4
c0de48ae:	f8cd 8000 	str.w	r8, [sp]
c0de48b2:	f000 f804 	bl	c0de48be <addSwipeInternal>
c0de48b6:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de48ba:	f002 bd8a 	b.w	c0de73d2 <OUTLINED_FUNCTION_40>

c0de48be <addSwipeInternal>:
c0de48be:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de48c0:	f411 6ff0 	tst.w	r1, #1920	@ 0x780
c0de48c4:	d013      	beq.n	c0de48ee <addSwipeInternal+0x30>
c0de48c6:	9f06      	ldr	r7, [sp, #24]
c0de48c8:	460c      	mov	r4, r1
c0de48ca:	f8d0 10a0 	ldr.w	r1, [r0, #160]	@ 0xa0
c0de48ce:	4615      	mov	r5, r2
c0de48d0:	461a      	mov	r2, r3
c0de48d2:	4606      	mov	r6, r0
c0de48d4:	463b      	mov	r3, r7
c0de48d6:	f7ff fa27 	bl	c0de3d28 <layoutAddCallbackObj>
c0de48da:	b140      	cbz	r0, c0de48ee <addSwipeInternal+0x30>
c0de48dc:	f8d6 00a0 	ldr.w	r0, [r6, #160]	@ 0xa0
c0de48e0:	0a21      	lsrs	r1, r4, #8
c0de48e2:	f886 50b0 	strb.w	r5, [r6, #176]	@ 0xb0
c0de48e6:	7741      	strb	r1, [r0, #29]
c0de48e8:	7704      	strb	r4, [r0, #28]
c0de48ea:	2000      	movs	r0, #0
c0de48ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de48ee:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de48f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de48f4 <nbgl_layoutAddTopRightButton>:
c0de48f4:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de48f8:	b3a8      	cbz	r0, c0de4966 <nbgl_layoutAddTopRightButton+0x72>
c0de48fa:	f002 fdfc 	bl	c0de74f6 <OUTLINED_FUNCTION_64>
c0de48fe:	4688      	mov	r8, r1
c0de4900:	461f      	mov	r7, r3
c0de4902:	4615      	mov	r5, r2
c0de4904:	f04f 0a05 	mov.w	sl, #5
c0de4908:	f002 fc5c 	bl	c0de71c4 <OUTLINED_FUNCTION_13>
c0de490c:	4606      	mov	r6, r0
c0de490e:	4620      	mov	r0, r4
c0de4910:	462a      	mov	r2, r5
c0de4912:	463b      	mov	r3, r7
c0de4914:	4631      	mov	r1, r6
c0de4916:	f7ff fa07 	bl	c0de3d28 <layoutAddCallbackObj>
c0de491a:	b320      	cbz	r0, c0de4966 <nbgl_layoutAddTopRightButton+0x72>
c0de491c:	2058      	movs	r0, #88	@ 0x58
c0de491e:	2700      	movs	r7, #0
c0de4920:	2503      	movs	r5, #3
c0de4922:	f886 a01e 	strb.w	sl, [r6, #30]
c0de4926:	71b0      	strb	r0, [r6, #6]
c0de4928:	7130      	strb	r0, [r6, #4]
c0de492a:	2020      	movs	r0, #32
c0de492c:	71f7      	strb	r7, [r6, #7]
c0de492e:	7177      	strb	r7, [r6, #5]
c0de4930:	76b7      	strb	r7, [r6, #26]
c0de4932:	7637      	strb	r7, [r6, #24]
c0de4934:	7777      	strb	r7, [r6, #29]
c0de4936:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de493a:	77f5      	strb	r5, [r6, #31]
c0de493c:	7670      	strb	r0, [r6, #25]
c0de493e:	75f0      	strb	r0, [r6, #23]
c0de4940:	2001      	movs	r0, #1
c0de4942:	7730      	strb	r0, [r6, #28]
c0de4944:	2004      	movs	r0, #4
c0de4946:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de494a:	2002      	movs	r0, #2
c0de494c:	f886 0020 	strb.w	r0, [r6, #32]
c0de4950:	4640      	mov	r0, r8
c0de4952:	f006 fe3b 	bl	c0deb5cc <pic>
c0de4956:	4631      	mov	r1, r6
c0de4958:	0e02      	lsrs	r2, r0, #24
c0de495a:	75b5      	strb	r5, [r6, #22]
c0de495c:	f002 fcda 	bl	c0de7314 <OUTLINED_FUNCTION_29>
c0de4960:	68a0      	ldr	r0, [r4, #8]
c0de4962:	6086      	str	r6, [r0, #8]
c0de4964:	e001      	b.n	c0de496a <nbgl_layoutAddTopRightButton+0x76>
c0de4966:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de496a:	4638      	mov	r0, r7
c0de496c:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de4970 <nbgl_layoutAddExtendedFooter>:
c0de4970:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de4974:	2800      	cmp	r0, #0
c0de4976:	f000 834d 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de497a:	460d      	mov	r5, r1
c0de497c:	b119      	cbz	r1, c0de4986 <nbgl_layoutAddExtendedFooter+0x16>
c0de497e:	4604      	mov	r4, r0
c0de4980:	7828      	ldrb	r0, [r5, #0]
c0de4982:	2806      	cmp	r0, #6
c0de4984:	d902      	bls.n	c0de498c <nbgl_layoutAddExtendedFooter+0x1c>
c0de4986:	f06f 0701 	mvn.w	r7, #1
c0de498a:	e345      	b.n	c0de5018 <nbgl_layoutAddExtendedFooter+0x6a8>
c0de498c:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4990:	2601      	movs	r6, #1
c0de4992:	f002 fc5b 	bl	c0de724c <OUTLINED_FUNCTION_19>
c0de4996:	f002 fd6a 	bl	c0de746e <OUTLINED_FUNCTION_51>
c0de499a:	6120      	str	r0, [r4, #16]
c0de499c:	f002 fd88 	bl	c0de74b0 <OUTLINED_FUNCTION_57>
c0de49a0:	4601      	mov	r1, r0
c0de49a2:	0a02      	lsrs	r2, r0, #8
c0de49a4:	6920      	ldr	r0, [r4, #16]
c0de49a6:	0e0b      	lsrs	r3, r1, #24
c0de49a8:	f880 2023 	strb.w	r2, [r0, #35]	@ 0x23
c0de49ac:	2208      	movs	r2, #8
c0de49ae:	7582      	strb	r2, [r0, #22]
c0de49b0:	4602      	mov	r2, r0
c0de49b2:	f802 1f22 	strb.w	r1, [r2, #34]!
c0de49b6:	0c09      	lsrs	r1, r1, #16
c0de49b8:	7091      	strb	r1, [r2, #2]
c0de49ba:	70d3      	strb	r3, [r2, #3]
c0de49bc:	7829      	ldrb	r1, [r5, #0]
c0de49be:	2906      	cmp	r1, #6
c0de49c0:	d017      	beq.n	c0de49f2 <nbgl_layoutAddExtendedFooter+0x82>
c0de49c2:	2901      	cmp	r1, #1
c0de49c4:	f000 80bd 	beq.w	c0de4b42 <nbgl_layoutAddExtendedFooter+0x1d2>
c0de49c8:	2902      	cmp	r1, #2
c0de49ca:	f000 80f6 	beq.w	c0de4bba <nbgl_layoutAddExtendedFooter+0x24a>
c0de49ce:	2903      	cmp	r1, #3
c0de49d0:	f000 8188 	beq.w	c0de4ce4 <nbgl_layoutAddExtendedFooter+0x374>
c0de49d4:	2904      	cmp	r1, #4
c0de49d6:	f000 824c 	beq.w	c0de4e72 <nbgl_layoutAddExtendedFooter+0x502>
c0de49da:	2905      	cmp	r1, #5
c0de49dc:	f000 8268 	beq.w	c0de4eb0 <nbgl_layoutAddExtendedFooter+0x540>
c0de49e0:	2900      	cmp	r1, #0
c0de49e2:	d1d0      	bne.n	c0de4986 <nbgl_layoutAddExtendedFooter+0x16>
c0de49e4:	88a9      	ldrh	r1, [r5, #4]
c0de49e6:	f04f 0800 	mov.w	r8, #0
c0de49ea:	7181      	strb	r1, [r0, #6]
c0de49ec:	0a09      	lsrs	r1, r1, #8
c0de49ee:	71c1      	strb	r1, [r0, #7]
c0de49f0:	e2de      	b.n	c0de4fb0 <nbgl_layoutAddExtendedFooter+0x640>
c0de49f2:	68a8      	ldr	r0, [r5, #8]
c0de49f4:	2800      	cmp	r0, #0
c0de49f6:	f000 830d 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de49fa:	6868      	ldr	r0, [r5, #4]
c0de49fc:	2800      	cmp	r0, #0
c0de49fe:	f000 8309 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4a02:	f002 fb99 	bl	c0de7138 <OUTLINED_FUNCTION_8>
c0de4a06:	4606      	mov	r6, r0
c0de4a08:	7c2a      	ldrb	r2, [r5, #16]
c0de4a0a:	7cab      	ldrb	r3, [r5, #18]
c0de4a0c:	f002 fbf4 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de4a10:	2800      	cmp	r0, #0
c0de4a12:	f000 82ff 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4a16:	2103      	movs	r1, #3
c0de4a18:	2208      	movs	r2, #8
c0de4a1a:	f04f 0801 	mov.w	r8, #1
c0de4a1e:	f04f 0a00 	mov.w	sl, #0
c0de4a22:	23a0      	movs	r3, #160	@ 0xa0
c0de4a24:	75b2      	strb	r2, [r6, #22]
c0de4a26:	77f1      	strb	r1, [r6, #31]
c0de4a28:	f880 8005 	strb.w	r8, [r0, #5]
c0de4a2c:	2258      	movs	r2, #88	@ 0x58
c0de4a2e:	7c68      	ldrb	r0, [r5, #17]
c0de4a30:	71b2      	strb	r2, [r6, #6]
c0de4a32:	2204      	movs	r2, #4
c0de4a34:	f886 a01a 	strb.w	sl, [r6, #26]
c0de4a38:	f886 a021 	strb.w	sl, [r6, #33]	@ 0x21
c0de4a3c:	f886 a007 	strb.w	sl, [r6, #7]
c0de4a40:	f886 8005 	strb.w	r8, [r6, #5]
c0de4a44:	7133      	strb	r3, [r6, #4]
c0de4a46:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de4a4a:	2803      	cmp	r0, #3
c0de4a4c:	bf08      	it	eq
c0de4a4e:	2102      	moveq	r1, #2
c0de4a50:	f886 1020 	strb.w	r1, [r6, #32]
c0de4a54:	bf08      	it	eq
c0de4a56:	2218      	moveq	r2, #24
c0de4a58:	7672      	strb	r2, [r6, #25]
c0de4a5a:	f002 fced 	bl	c0de7438 <OUTLINED_FUNCTION_46>
c0de4a5e:	f002 fd18 	bl	c0de7492 <OUTLINED_FUNCTION_54>
c0de4a62:	f002 fc69 	bl	c0de7338 <OUTLINED_FUNCTION_31>
c0de4a66:	f002 fbb1 	bl	c0de71cc <OUTLINED_FUNCTION_14>
c0de4a6a:	200a      	movs	r0, #10
c0de4a6c:	77b0      	strb	r0, [r6, #30]
c0de4a6e:	6920      	ldr	r0, [r4, #16]
c0de4a70:	f002 fae4 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de4a74:	7c68      	ldrb	r0, [r5, #17]
c0de4a76:	b308      	cbz	r0, c0de4abc <nbgl_layoutAddExtendedFooter+0x14c>
c0de4a78:	2803      	cmp	r0, #3
c0de4a7a:	d01f      	beq.n	c0de4abc <nbgl_layoutAddExtendedFooter+0x14c>
c0de4a7c:	f002 fbfe 	bl	c0de727c <OUTLINED_FUNCTION_21>
c0de4a80:	0a31      	lsrs	r1, r6, #8
c0de4a82:	0e32      	lsrs	r2, r6, #24
c0de4a84:	74c1      	strb	r1, [r0, #19]
c0de4a86:	4601      	mov	r1, r0
c0de4a88:	f801 6f12 	strb.w	r6, [r1, #18]!
c0de4a8c:	70ca      	strb	r2, [r1, #3]
c0de4a8e:	0c32      	lsrs	r2, r6, #16
c0de4a90:	708a      	strb	r2, [r1, #2]
c0de4a92:	6921      	ldr	r1, [r4, #16]
c0de4a94:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4a98:	784e      	ldrb	r6, [r1, #1]
c0de4a9a:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4a9e:	788f      	ldrb	r7, [r1, #2]
c0de4aa0:	78c9      	ldrb	r1, [r1, #3]
c0de4aa2:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de4aa6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de4aaa:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4aae:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de4ab2:	2102      	movs	r1, #2
c0de4ab4:	7581      	strb	r1, [r0, #22]
c0de4ab6:	6920      	ldr	r0, [r4, #16]
c0de4ab8:	f002 fac0 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de4abc:	f002 fb3c 	bl	c0de7138 <OUTLINED_FUNCTION_8>
c0de4ac0:	4606      	mov	r6, r0
c0de4ac2:	7c2a      	ldrb	r2, [r5, #16]
c0de4ac4:	7cab      	ldrb	r3, [r5, #18]
c0de4ac6:	f002 fb97 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de4aca:	2800      	cmp	r0, #0
c0de4acc:	f000 82a2 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4ad0:	2118      	movs	r1, #24
c0de4ad2:	f04f 0a00 	mov.w	sl, #0
c0de4ad6:	f04f 0801 	mov.w	r8, #1
c0de4ada:	7671      	strb	r1, [r6, #25]
c0de4adc:	2102      	movs	r1, #2
c0de4ade:	f886 a01a 	strb.w	sl, [r6, #26]
c0de4ae2:	f880 a005 	strb.w	sl, [r0, #5]
c0de4ae6:	75b1      	strb	r1, [r6, #22]
c0de4ae8:	2104      	movs	r1, #4
c0de4aea:	7c68      	ldrb	r0, [r5, #17]
c0de4aec:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4af0:	2158      	movs	r1, #88	@ 0x58
c0de4af2:	f886 8005 	strb.w	r8, [r6, #5]
c0de4af6:	f886 a007 	strb.w	sl, [r6, #7]
c0de4afa:	71b1      	strb	r1, [r6, #6]
c0de4afc:	21a0      	movs	r1, #160	@ 0xa0
c0de4afe:	7131      	strb	r1, [r6, #4]
c0de4b00:	2100      	movs	r1, #0
c0de4b02:	2802      	cmp	r0, #2
c0de4b04:	bf08      	it	eq
c0de4b06:	2103      	moveq	r1, #3
c0de4b08:	77f1      	strb	r1, [r6, #31]
c0de4b0a:	1e81      	subs	r1, r0, #2
c0de4b0c:	bf18      	it	ne
c0de4b0e:	2103      	movne	r1, #3
c0de4b10:	3802      	subs	r0, #2
c0de4b12:	f886 1021 	strb.w	r1, [r6, #33]	@ 0x21
c0de4b16:	fab0 f080 	clz	r0, r0
c0de4b1a:	0940      	lsrs	r0, r0, #5
c0de4b1c:	0040      	lsls	r0, r0, #1
c0de4b1e:	f886 0020 	strb.w	r0, [r6, #32]
c0de4b22:	f002 fbb0 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de4b26:	4631      	mov	r1, r6
c0de4b28:	0e02      	lsrs	r2, r0, #24
c0de4b2a:	f801 0f25 	strb.w	r0, [r1, #37]!
c0de4b2e:	f002 fcaa 	bl	c0de7486 <OUTLINED_FUNCTION_53>
c0de4b32:	7c68      	ldrb	r0, [r5, #17]
c0de4b34:	2800      	cmp	r0, #0
c0de4b36:	f000 828e 	beq.w	c0de5056 <nbgl_layoutAddExtendedFooter+0x6e6>
c0de4b3a:	68e8      	ldr	r0, [r5, #12]
c0de4b3c:	f006 fd46 	bl	c0deb5cc <pic>
c0de4b40:	e28a      	b.n	c0de5058 <nbgl_layoutAddExtendedFooter+0x6e8>
c0de4b42:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4b46:	f002 fa7f 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de4b4a:	4606      	mov	r6, r0
c0de4b4c:	7a6a      	ldrb	r2, [r5, #9]
c0de4b4e:	7aab      	ldrb	r3, [r5, #10]
c0de4b50:	f002 fb52 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de4b54:	2800      	cmp	r0, #0
c0de4b56:	f000 825d 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4b5a:	2008      	movs	r0, #8
c0de4b5c:	4637      	mov	r7, r6
c0de4b5e:	f04f 0a01 	mov.w	sl, #1
c0de4b62:	21a0      	movs	r1, #160	@ 0xa0
c0de4b64:	f04f 0800 	mov.w	r8, #0
c0de4b68:	75b0      	strb	r0, [r6, #22]
c0de4b6a:	7a28      	ldrb	r0, [r5, #8]
c0de4b6c:	f886 a005 	strb.w	sl, [r6, #5]
c0de4b70:	7131      	strb	r1, [r6, #4]
c0de4b72:	77f0      	strb	r0, [r6, #31]
c0de4b74:	2060      	movs	r0, #96	@ 0x60
c0de4b76:	f807 0f06 	strb.w	r0, [r7, #6]!
c0de4b7a:	f887 8001 	strb.w	r8, [r7, #1]
c0de4b7e:	f002 fb82 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de4b82:	4631      	mov	r1, r6
c0de4b84:	0e02      	lsrs	r2, r0, #24
c0de4b86:	f002 fb06 	bl	c0de7196 <OUTLINED_FUNCTION_12>
c0de4b8a:	7a29      	ldrb	r1, [r5, #8]
c0de4b8c:	f886 801d 	strb.w	r8, [r6, #29]
c0de4b90:	f886 a01e 	strb.w	sl, [r6, #30]
c0de4b94:	f840 602c 	str.w	r6, [r0, ip, lsl #2]
c0de4b98:	2005      	movs	r0, #5
c0de4b9a:	f886 a01c 	strb.w	sl, [r6, #28]
c0de4b9e:	f886 0020 	strb.w	r0, [r6, #32]
c0de4ba2:	200b      	movs	r0, #11
c0de4ba4:	2900      	cmp	r1, #0
c0de4ba6:	bf08      	it	eq
c0de4ba8:	200c      	moveq	r0, #12
c0de4baa:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4bae:	6922      	ldr	r2, [r4, #16]
c0de4bb0:	7879      	ldrb	r1, [r7, #1]
c0de4bb2:	7838      	ldrb	r0, [r7, #0]
c0de4bb4:	f002 fc88 	bl	c0de74c8 <OUTLINED_FUNCTION_59>
c0de4bb8:	e1fa      	b.n	c0de4fb0 <nbgl_layoutAddExtendedFooter+0x640>
c0de4bba:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4bbe:	f002 fa43 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de4bc2:	4606      	mov	r6, r0
c0de4bc4:	7b2a      	ldrb	r2, [r5, #12]
c0de4bc6:	7bab      	ldrb	r3, [r5, #14]
c0de4bc8:	f002 fb16 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de4bcc:	2800      	cmp	r0, #0
c0de4bce:	f000 8221 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4bd2:	2007      	movs	r0, #7
c0de4bd4:	f04f 0a00 	mov.w	sl, #0
c0de4bd8:	f04f 08d0 	mov.w	r8, #208	@ 0xd0
c0de4bdc:	75b0      	strb	r0, [r6, #22]
c0de4bde:	2060      	movs	r0, #96	@ 0x60
c0de4be0:	f886 a01f 	strb.w	sl, [r6, #31]
c0de4be4:	f886 a007 	strb.w	sl, [r6, #7]
c0de4be8:	f886 a005 	strb.w	sl, [r6, #5]
c0de4bec:	f886 8004 	strb.w	r8, [r6, #4]
c0de4bf0:	71b0      	strb	r0, [r6, #6]
c0de4bf2:	f002 fb48 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de4bf6:	4631      	mov	r1, r6
c0de4bf8:	0e02      	lsrs	r2, r0, #24
c0de4bfa:	f04f 0b01 	mov.w	fp, #1
c0de4bfe:	f886 a01d 	strb.w	sl, [r6, #29]
c0de4c02:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de4c06:	f886 b01e 	strb.w	fp, [r6, #30]
c0de4c0a:	f002 fb74 	bl	c0de72f6 <OUTLINED_FUNCTION_28>
c0de4c0e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4c12:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de4c16:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4c1a:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de4c1e:	f002 fbdb 	bl	c0de73d8 <OUTLINED_FUNCTION_41>
c0de4c22:	f886 0020 	strb.w	r0, [r6, #32]
c0de4c26:	6920      	ldr	r0, [r4, #16]
c0de4c28:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de4c2c:	3101      	adds	r1, #1
c0de4c2e:	f880 1020 	strb.w	r1, [r0, #32]
c0de4c32:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4c36:	f002 fa07 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de4c3a:	4606      	mov	r6, r0
c0de4c3c:	7b6a      	ldrb	r2, [r5, #13]
c0de4c3e:	7bab      	ldrb	r3, [r5, #14]
c0de4c40:	f002 fada 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de4c44:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de4c48:	2800      	cmp	r0, #0
c0de4c4a:	f000 81e5 	beq.w	c0de5018 <nbgl_layoutAddExtendedFooter+0x6a8>
c0de4c4e:	2009      	movs	r0, #9
c0de4c50:	f886 8004 	strb.w	r8, [r6, #4]
c0de4c54:	46b0      	mov	r8, r6
c0de4c56:	f886 a01f 	strb.w	sl, [r6, #31]
c0de4c5a:	f886 a005 	strb.w	sl, [r6, #5]
c0de4c5e:	75b0      	strb	r0, [r6, #22]
c0de4c60:	2060      	movs	r0, #96	@ 0x60
c0de4c62:	f808 0f06 	strb.w	r0, [r8, #6]!
c0de4c66:	f888 a001 	strb.w	sl, [r8, #1]
c0de4c6a:	f002 fbe5 	bl	c0de7438 <OUTLINED_FUNCTION_46>
c0de4c6e:	f002 fc10 	bl	c0de7492 <OUTLINED_FUNCTION_54>
c0de4c72:	f002 fa90 	bl	c0de7196 <OUTLINED_FUNCTION_12>
c0de4c76:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de4c7a:	f840 602c 	str.w	r6, [r0, ip, lsl #2]
c0de4c7e:	f002 fbab 	bl	c0de73d8 <OUTLINED_FUNCTION_41>
c0de4c82:	6922      	ldr	r2, [r4, #16]
c0de4c84:	f886 0020 	strb.w	r0, [r6, #32]
c0de4c88:	2003      	movs	r0, #3
c0de4c8a:	77b0      	strb	r0, [r6, #30]
c0de4c8c:	f898 0000 	ldrb.w	r0, [r8]
c0de4c90:	f002 fc1a 	bl	c0de74c8 <OUTLINED_FUNCTION_59>
c0de4c94:	f002 fc12 	bl	c0de74bc <OUTLINED_FUNCTION_58>
c0de4c98:	4680      	mov	r8, r0
c0de4c9a:	f880 a005 	strb.w	sl, [r0, #5]
c0de4c9e:	f880 b004 	strb.w	fp, [r0, #4]
c0de4ca2:	20ff      	movs	r0, #255	@ 0xff
c0de4ca4:	0e31      	lsrs	r1, r6, #24
c0de4ca6:	f888 0018 	strb.w	r0, [r8, #24]
c0de4caa:	0a30      	lsrs	r0, r6, #8
c0de4cac:	f888 7017 	strb.w	r7, [r8, #23]
c0de4cb0:	f888 b021 	strb.w	fp, [r8, #33]	@ 0x21
c0de4cb4:	f888 a01f 	strb.w	sl, [r8, #31]
c0de4cb8:	f888 0013 	strb.w	r0, [r8, #19]
c0de4cbc:	2002      	movs	r0, #2
c0de4cbe:	f888 0020 	strb.w	r0, [r8, #32]
c0de4cc2:	2004      	movs	r0, #4
c0de4cc4:	f888 0016 	strb.w	r0, [r8, #22]
c0de4cc8:	4640      	mov	r0, r8
c0de4cca:	f800 6f12 	strb.w	r6, [r0, #18]!
c0de4cce:	70c1      	strb	r1, [r0, #3]
c0de4cd0:	0c31      	lsrs	r1, r6, #16
c0de4cd2:	7081      	strb	r1, [r0, #2]
c0de4cd4:	6920      	ldr	r0, [r4, #16]
c0de4cd6:	7981      	ldrb	r1, [r0, #6]
c0de4cd8:	79c0      	ldrb	r0, [r0, #7]
c0de4cda:	f888 0007 	strb.w	r0, [r8, #7]
c0de4cde:	f888 1006 	strb.w	r1, [r8, #6]
c0de4ce2:	e165      	b.n	c0de4fb0 <nbgl_layoutAddExtendedFooter+0x640>
c0de4ce4:	f04f 0b00 	mov.w	fp, #0
c0de4ce8:	2760      	movs	r7, #96	@ 0x60
c0de4cea:	f880 b007 	strb.w	fp, [r0, #7]
c0de4cee:	7187      	strb	r7, [r0, #6]
c0de4cf0:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4cf4:	f002 f9a8 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de4cf8:	4606      	mov	r6, r0
c0de4cfa:	7d2a      	ldrb	r2, [r5, #20]
c0de4cfc:	7d6b      	ldrb	r3, [r5, #21]
c0de4cfe:	f002 fa7b 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de4d02:	2800      	cmp	r0, #0
c0de4d04:	f000 8186 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4d08:	1d28      	adds	r0, r5, #4
c0de4d0a:	46b0      	mov	r8, r6
c0de4d0c:	f886 b01f 	strb.w	fp, [r6, #31]
c0de4d10:	f886 b007 	strb.w	fp, [r6, #7]
c0de4d14:	71b7      	strb	r7, [r6, #6]
c0de4d16:	9001      	str	r0, [sp, #4]
c0de4d18:	2007      	movs	r0, #7
c0de4d1a:	75b0      	strb	r0, [r6, #22]
c0de4d1c:	20c0      	movs	r0, #192	@ 0xc0
c0de4d1e:	f808 0f04 	strb.w	r0, [r8, #4]!
c0de4d22:	f888 b001 	strb.w	fp, [r8, #1]
c0de4d26:	6928      	ldr	r0, [r5, #16]
c0de4d28:	f006 fc50 	bl	c0deb5cc <pic>
c0de4d2c:	4631      	mov	r1, r6
c0de4d2e:	0e02      	lsrs	r2, r0, #24
c0de4d30:	f886 b01d 	strb.w	fp, [r6, #29]
c0de4d34:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de4d38:	f002 fadd 	bl	c0de72f6 <OUTLINED_FUNCTION_28>
c0de4d3c:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de4d40:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4d44:	2701      	movs	r7, #1
c0de4d46:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4d4a:	77b7      	strb	r7, [r6, #30]
c0de4d4c:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de4d50:	200c      	movs	r0, #12
c0de4d52:	7737      	strb	r7, [r6, #28]
c0de4d54:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4d58:	2005      	movs	r0, #5
c0de4d5a:	f886 0020 	strb.w	r0, [r6, #32]
c0de4d5e:	6920      	ldr	r0, [r4, #16]
c0de4d60:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de4d64:	3101      	adds	r1, #1
c0de4d66:	f880 1020 	strb.w	r1, [r0, #32]
c0de4d6a:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4d6e:	f002 fa6d 	bl	c0de724c <OUTLINED_FUNCTION_19>
c0de4d72:	4682      	mov	sl, r0
c0de4d74:	2004      	movs	r0, #4
c0de4d76:	f88a 0020 	strb.w	r0, [sl, #32]
c0de4d7a:	20a0      	movs	r0, #160	@ 0xa0
c0de4d7c:	4656      	mov	r6, sl
c0de4d7e:	f88a b01f 	strb.w	fp, [sl, #31]
c0de4d82:	f806 0f04 	strb.w	r0, [r6, #4]!
c0de4d86:	7077      	strb	r7, [r6, #1]
c0de4d88:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4d8c:	f002 fb8c 	bl	c0de74a8 <OUTLINED_FUNCTION_56>
c0de4d90:	2109      	movs	r1, #9
c0de4d92:	0e02      	lsrs	r2, r0, #24
c0de4d94:	f88a b007 	strb.w	fp, [sl, #7]
c0de4d98:	f88a 1016 	strb.w	r1, [sl, #22]
c0de4d9c:	2160      	movs	r1, #96	@ 0x60
c0de4d9e:	f88a 1006 	strb.w	r1, [sl, #6]
c0de4da2:	4651      	mov	r1, sl
c0de4da4:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4da8:	f002 fa3f 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de4dac:	f88a 0023 	strb.w	r0, [sl, #35]	@ 0x23
c0de4db0:	f898 0000 	ldrb.w	r0, [r8]
c0de4db4:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de4db8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4dbc:	9901      	ldr	r1, [sp, #4]
c0de4dbe:	f5c0 70f0 	rsb	r0, r0, #480	@ 0x1e0
c0de4dc2:	7030      	strb	r0, [r6, #0]
c0de4dc4:	0a00      	lsrs	r0, r0, #8
c0de4dc6:	7070      	strb	r0, [r6, #1]
c0de4dc8:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4dcc:	08c2      	lsrs	r2, r0, #3
c0de4dce:	4650      	mov	r0, sl
c0de4dd0:	f002 fc50 	bl	c0de7674 <layoutNavigationPopulate>
c0de4dd4:	792a      	ldrb	r2, [r5, #4]
c0de4dd6:	7b2b      	ldrb	r3, [r5, #12]
c0de4dd8:	4620      	mov	r0, r4
c0de4dda:	4651      	mov	r1, sl
c0de4ddc:	f7fe ffa4 	bl	c0de3d28 <layoutAddCallbackObj>
c0de4de0:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de4de4:	2800      	cmp	r0, #0
c0de4de6:	f000 8117 	beq.w	c0de5018 <nbgl_layoutAddExtendedFooter+0x6a8>
c0de4dea:	f002 fb67 	bl	c0de74bc <OUTLINED_FUNCTION_58>
c0de4dee:	4680      	mov	r8, r0
c0de4df0:	2002      	movs	r0, #2
c0de4df2:	2101      	movs	r1, #1
c0de4df4:	f888 0020 	strb.w	r0, [r8, #32]
c0de4df8:	2000      	movs	r0, #0
c0de4dfa:	f888 1004 	strb.w	r1, [r8, #4]
c0de4dfe:	f888 1021 	strb.w	r1, [r8, #33]	@ 0x21
c0de4e02:	ea4f 611a 	mov.w	r1, sl, lsr #24
c0de4e06:	f888 7017 	strb.w	r7, [r8, #23]
c0de4e0a:	f888 0005 	strb.w	r0, [r8, #5]
c0de4e0e:	f888 001f 	strb.w	r0, [r8, #31]
c0de4e12:	2004      	movs	r0, #4
c0de4e14:	f888 0016 	strb.w	r0, [r8, #22]
c0de4e18:	20ff      	movs	r0, #255	@ 0xff
c0de4e1a:	f888 0018 	strb.w	r0, [r8, #24]
c0de4e1e:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de4e22:	f888 0013 	strb.w	r0, [r8, #19]
c0de4e26:	4640      	mov	r0, r8
c0de4e28:	f800 af12 	strb.w	sl, [r0, #18]!
c0de4e2c:	70c1      	strb	r1, [r0, #3]
c0de4e2e:	ea4f 411a 	mov.w	r1, sl, lsr #16
c0de4e32:	7081      	strb	r1, [r0, #2]
c0de4e34:	6920      	ldr	r0, [r4, #16]
c0de4e36:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4e3a:	f810 3c1b 	ldrb.w	r3, [r0, #-27]
c0de4e3e:	f810 2c1c 	ldrb.w	r2, [r0, #-28]
c0de4e42:	7847      	ldrb	r7, [r0, #1]
c0de4e44:	f810 6c02 	ldrb.w	r6, [r0, #-2]
c0de4e48:	f888 3007 	strb.w	r3, [r8, #7]
c0de4e4c:	f888 2006 	strb.w	r2, [r8, #6]
c0de4e50:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de4e54:	79aa      	ldrb	r2, [r5, #6]
c0de4e56:	f884 20a9 	strb.w	r2, [r4, #169]	@ 0xa9
c0de4e5a:	78c2      	ldrb	r2, [r0, #3]
c0de4e5c:	7880      	ldrb	r0, [r0, #2]
c0de4e5e:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de4e62:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4e66:	7969      	ldrb	r1, [r5, #5]
c0de4e68:	f840 a026 	str.w	sl, [r0, r6, lsl #2]
c0de4e6c:	f884 10a8 	strb.w	r1, [r4, #168]	@ 0xa8
c0de4e70:	e09b      	b.n	c0de4faa <nbgl_layoutAddExtendedFooter+0x63a>
c0de4e72:	2100      	movs	r1, #0
c0de4e74:	71c1      	strb	r1, [r0, #7]
c0de4e76:	2160      	movs	r1, #96	@ 0x60
c0de4e78:	7181      	strb	r1, [r0, #6]
c0de4e7a:	1d29      	adds	r1, r5, #4
c0de4e7c:	f894 20ad 	ldrb.w	r2, [r4, #173]	@ 0xad
c0de4e80:	08d2      	lsrs	r2, r2, #3
c0de4e82:	f002 fbf7 	bl	c0de7674 <layoutNavigationPopulate>
c0de4e86:	6921      	ldr	r1, [r4, #16]
c0de4e88:	2004      	movs	r0, #4
c0de4e8a:	f881 0020 	strb.w	r0, [r1, #32]
c0de4e8e:	4620      	mov	r0, r4
c0de4e90:	792a      	ldrb	r2, [r5, #4]
c0de4e92:	7b2b      	ldrb	r3, [r5, #12]
c0de4e94:	f7fe ff48 	bl	c0de3d28 <layoutAddCallbackObj>
c0de4e98:	2800      	cmp	r0, #0
c0de4e9a:	f000 80bb 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4e9e:	79a8      	ldrb	r0, [r5, #6]
c0de4ea0:	f04f 0800 	mov.w	r8, #0
c0de4ea4:	f884 00a9 	strb.w	r0, [r4, #169]	@ 0xa9
c0de4ea8:	7968      	ldrb	r0, [r5, #5]
c0de4eaa:	f884 00a8 	strb.w	r0, [r4, #168]	@ 0xa8
c0de4eae:	e07f      	b.n	c0de4fb0 <nbgl_layoutAddExtendedFooter+0x640>
c0de4eb0:	f002 f942 	bl	c0de7138 <OUTLINED_FUNCTION_8>
c0de4eb4:	4607      	mov	r7, r0
c0de4eb6:	7b2a      	ldrb	r2, [r5, #12]
c0de4eb8:	7c2b      	ldrb	r3, [r5, #16]
c0de4eba:	4620      	mov	r0, r4
c0de4ebc:	4639      	mov	r1, r7
c0de4ebe:	f7fe ff33 	bl	c0de3d28 <layoutAddCallbackObj>
c0de4ec2:	2800      	cmp	r0, #0
c0de4ec4:	f000 80a6 	beq.w	c0de5014 <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4ec8:	2018      	movs	r0, #24
c0de4eca:	f04f 0800 	mov.w	r8, #0
c0de4ece:	2100      	movs	r1, #0
c0de4ed0:	7678      	strb	r0, [r7, #25]
c0de4ed2:	2008      	movs	r0, #8
c0de4ed4:	f887 801a 	strb.w	r8, [r7, #26]
c0de4ed8:	75b8      	strb	r0, [r7, #22]
c0de4eda:	7b68      	ldrb	r0, [r5, #13]
c0de4edc:	2800      	cmp	r0, #0
c0de4ede:	bf08      	it	eq
c0de4ee0:	2103      	moveq	r1, #3
c0de4ee2:	f887 1021 	strb.w	r1, [r7, #33]	@ 0x21
c0de4ee6:	bf18      	it	ne
c0de4ee8:	2003      	movne	r0, #3
c0de4eea:	77f8      	strb	r0, [r7, #31]
c0de4eec:	7b68      	ldrb	r0, [r5, #13]
c0de4eee:	4601      	mov	r1, r0
c0de4ef0:	2800      	cmp	r0, #0
c0de4ef2:	bf18      	it	ne
c0de4ef4:	2101      	movne	r1, #1
c0de4ef6:	0049      	lsls	r1, r1, #1
c0de4ef8:	2802      	cmp	r0, #2
c0de4efa:	bf08      	it	eq
c0de4efc:	2103      	moveq	r1, #3
c0de4efe:	f887 1020 	strb.w	r1, [r7, #32]
c0de4f02:	f002 f9c0 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de4f06:	463e      	mov	r6, r7
c0de4f08:	210c      	movs	r1, #12
c0de4f0a:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de4f0e:	f806 0f25 	strb.w	r0, [r6, #37]!
c0de4f12:	0e01      	lsrs	r1, r0, #24
c0de4f14:	70f1      	strb	r1, [r6, #3]
c0de4f16:	0c01      	lsrs	r1, r0, #16
c0de4f18:	0a00      	lsrs	r0, r0, #8
c0de4f1a:	70b1      	strb	r1, [r6, #2]
c0de4f1c:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4f20:	f002 fa8a 	bl	c0de7438 <OUTLINED_FUNCTION_46>
c0de4f24:	2104      	movs	r1, #4
c0de4f26:	0e02      	lsrs	r2, r0, #24
c0de4f28:	f887 8007 	strb.w	r8, [r7, #7]
c0de4f2c:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de4f30:	2158      	movs	r1, #88	@ 0x58
c0de4f32:	71b9      	strb	r1, [r7, #6]
c0de4f34:	4639      	mov	r1, r7
c0de4f36:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de4f3a:	f002 f976 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de4f3e:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de4f42:	2188      	movs	r1, #136	@ 0x88
c0de4f44:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de4f48:	6920      	ldr	r0, [r4, #16]
c0de4f4a:	f880 8007 	strb.w	r8, [r0, #7]
c0de4f4e:	7181      	strb	r1, [r0, #6]
c0de4f50:	6869      	ldr	r1, [r5, #4]
c0de4f52:	2900      	cmp	r1, #0
c0de4f54:	bf08      	it	eq
c0de4f56:	2258      	moveq	r2, #88	@ 0x58
c0de4f58:	713a      	strb	r2, [r7, #4]
c0de4f5a:	f896 c000 	ldrb.w	ip, [r6]
c0de4f5e:	f896 e002 	ldrb.w	lr, [r6, #2]
c0de4f62:	f896 a003 	ldrb.w	sl, [r6, #3]
c0de4f66:	f887 801d 	strb.w	r8, [r7, #29]
c0de4f6a:	0a11      	lsrs	r1, r2, #8
c0de4f6c:	7179      	strb	r1, [r7, #5]
c0de4f6e:	f810 6f22 	ldrb.w	r6, [r0, #34]!
c0de4f72:	7842      	ldrb	r2, [r0, #1]
c0de4f74:	f810 1c02 	ldrb.w	r1, [r0, #-2]
c0de4f78:	7883      	ldrb	r3, [r0, #2]
c0de4f7a:	78c0      	ldrb	r0, [r0, #3]
c0de4f7c:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
c0de4f80:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4f84:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4f88:	f897 2026 	ldrb.w	r2, [r7, #38]	@ 0x26
c0de4f8c:	f840 7021 	str.w	r7, [r0, r1, lsl #2]
c0de4f90:	2001      	movs	r0, #1
c0de4f92:	ea4e 210a 	orr.w	r1, lr, sl, lsl #8
c0de4f96:	7738      	strb	r0, [r7, #28]
c0de4f98:	ea4c 2002 	orr.w	r0, ip, r2, lsl #8
c0de4f9c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4fa0:	2107      	movs	r1, #7
c0de4fa2:	2800      	cmp	r0, #0
c0de4fa4:	bf08      	it	eq
c0de4fa6:	2101      	moveq	r1, #1
c0de4fa8:	77b9      	strb	r1, [r7, #30]
c0de4faa:	6920      	ldr	r0, [r4, #16]
c0de4fac:	f002 f846 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de4fb0:	7828      	ldrb	r0, [r5, #0]
c0de4fb2:	3803      	subs	r0, #3
c0de4fb4:	2801      	cmp	r0, #1
c0de4fb6:	d808      	bhi.n	c0de4fca <nbgl_layoutAddExtendedFooter+0x65a>
c0de4fb8:	7b28      	ldrb	r0, [r5, #12]
c0de4fba:	792b      	ldrb	r3, [r5, #4]
c0de4fbc:	f44f 61c0 	mov.w	r1, #1536	@ 0x600
c0de4fc0:	2200      	movs	r2, #0
c0de4fc2:	9000      	str	r0, [sp, #0]
c0de4fc4:	4620      	mov	r0, r4
c0de4fc6:	f7ff fc7a 	bl	c0de48be <addSwipeInternal>
c0de4fca:	7868      	ldrb	r0, [r5, #1]
c0de4fcc:	b1b0      	cbz	r0, c0de4ffc <nbgl_layoutAddExtendedFooter+0x68c>
c0de4fce:	f002 f955 	bl	c0de727c <OUTLINED_FUNCTION_21>
c0de4fd2:	6921      	ldr	r1, [r4, #16]
c0de4fd4:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4fd8:	784e      	ldrb	r6, [r1, #1]
c0de4fda:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4fde:	788f      	ldrb	r7, [r1, #2]
c0de4fe0:	78c9      	ldrb	r1, [r1, #3]
c0de4fe2:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de4fe6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de4fea:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4fee:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de4ff2:	2102      	movs	r1, #2
c0de4ff4:	7581      	strb	r1, [r0, #22]
c0de4ff6:	6920      	ldr	r0, [r4, #16]
c0de4ff8:	f002 f820 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de4ffc:	f1b8 0f00 	cmp.w	r8, #0
c0de5000:	d00d      	beq.n	c0de501e <nbgl_layoutAddExtendedFooter+0x6ae>
c0de5002:	6920      	ldr	r0, [r4, #16]
c0de5004:	f002 f874 	bl	c0de70f0 <OUTLINED_FUNCTION_6>
c0de5008:	f840 8022 	str.w	r8, [r0, r2, lsl #2]
c0de500c:	6920      	ldr	r0, [r4, #16]
c0de500e:	f002 f815 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de5012:	e005      	b.n	c0de5020 <nbgl_layoutAddExtendedFooter+0x6b0>
c0de5014:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de5018:	4638      	mov	r0, r7
c0de501a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de501e:	6920      	ldr	r0, [r4, #16]
c0de5020:	68a1      	ldr	r1, [r4, #8]
c0de5022:	60c8      	str	r0, [r1, #12]
c0de5024:	6920      	ldr	r0, [r4, #16]
c0de5026:	f8d4 10a0 	ldr.w	r1, [r4, #160]	@ 0xa0
c0de502a:	f810 2f06 	ldrb.w	r2, [r0, #6]!
c0de502e:	7843      	ldrb	r3, [r0, #1]
c0de5030:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5034:	f811 3f06 	ldrb.w	r3, [r1, #6]!
c0de5038:	784e      	ldrb	r6, [r1, #1]
c0de503a:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de503e:	1a9a      	subs	r2, r3, r2
c0de5040:	700a      	strb	r2, [r1, #0]
c0de5042:	0a12      	lsrs	r2, r2, #8
c0de5044:	704a      	strb	r2, [r1, #1]
c0de5046:	7829      	ldrb	r1, [r5, #0]
c0de5048:	f884 10ab 	strb.w	r1, [r4, #171]	@ 0xab
c0de504c:	7801      	ldrb	r1, [r0, #0]
c0de504e:	7840      	ldrb	r0, [r0, #1]
c0de5050:	ea41 2700 	orr.w	r7, r1, r0, lsl #8
c0de5054:	e7e0      	b.n	c0de5018 <nbgl_layoutAddExtendedFooter+0x6a8>
c0de5056:	2000      	movs	r0, #0
c0de5058:	f002 fa1b 	bl	c0de7492 <OUTLINED_FUNCTION_54>
c0de505c:	f002 f95a 	bl	c0de7314 <OUTLINED_FUNCTION_29>
c0de5060:	f002 f8b4 	bl	c0de71cc <OUTLINED_FUNCTION_14>
c0de5064:	2009      	movs	r0, #9
c0de5066:	77b0      	strb	r0, [r6, #30]
c0de5068:	6920      	ldr	r0, [r4, #16]
c0de506a:	f001 ffe7 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de506e:	7c69      	ldrb	r1, [r5, #17]
c0de5070:	2903      	cmp	r1, #3
c0de5072:	d004      	beq.n	c0de507e <nbgl_layoutAddExtendedFooter+0x70e>
c0de5074:	b919      	cbnz	r1, c0de507e <nbgl_layoutAddExtendedFooter+0x70e>
c0de5076:	f04f 0800 	mov.w	r8, #0
c0de507a:	21d0      	movs	r1, #208	@ 0xd0
c0de507c:	e002      	b.n	c0de5084 <nbgl_layoutAddExtendedFooter+0x714>
c0de507e:	f04f 0800 	mov.w	r8, #0
c0de5082:	21e8      	movs	r1, #232	@ 0xe8
c0de5084:	f880 8007 	strb.w	r8, [r0, #7]
c0de5088:	7181      	strb	r1, [r0, #6]
c0de508a:	e791      	b.n	c0de4fb0 <nbgl_layoutAddExtendedFooter+0x640>

c0de508c <nbgl_layoutAddBottomButton>:
c0de508c:	b570      	push	{r4, r5, r6, lr}
c0de508e:	b086      	sub	sp, #24
c0de5090:	4605      	mov	r5, r0
c0de5092:	2005      	movs	r0, #5
c0de5094:	2600      	movs	r6, #0
c0de5096:	4614      	mov	r4, r2
c0de5098:	f88d 3001 	strb.w	r3, [sp, #1]
c0de509c:	f88d 0000 	strb.w	r0, [sp]
c0de50a0:	4608      	mov	r0, r1
c0de50a2:	f88d 600e 	strb.w	r6, [sp, #14]
c0de50a6:	f006 fa91 	bl	c0deb5cc <pic>
c0de50aa:	9002      	str	r0, [sp, #8]
c0de50ac:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de50ae:	4669      	mov	r1, sp
c0de50b0:	f88d 400c 	strb.w	r4, [sp, #12]
c0de50b4:	9601      	str	r6, [sp, #4]
c0de50b6:	f88d 0010 	strb.w	r0, [sp, #16]
c0de50ba:	2001      	movs	r0, #1
c0de50bc:	f88d 000d 	strb.w	r0, [sp, #13]
c0de50c0:	4628      	mov	r0, r5
c0de50c2:	f7ff fc55 	bl	c0de4970 <nbgl_layoutAddExtendedFooter>
c0de50c6:	b006      	add	sp, #24
c0de50c8:	bd70      	pop	{r4, r5, r6, pc}

c0de50ca <nbgl_layoutAddTouchableBar>:
c0de50ca:	b5b0      	push	{r4, r5, r7, lr}
c0de50cc:	b088      	sub	sp, #32
c0de50ce:	460d      	mov	r5, r1
c0de50d0:	4604      	mov	r4, r0
c0de50d2:	a801      	add	r0, sp, #4
c0de50d4:	211c      	movs	r1, #28
c0de50d6:	f006 fcb9 	bl	c0deba4c <__aeabi_memclr>
c0de50da:	b1dc      	cbz	r4, c0de5114 <nbgl_layoutAddTouchableBar+0x4a>
c0de50dc:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
c0de50e0:	e9cd 1304 	strd	r1, r3, [sp, #16]
c0de50e4:	e9cd 0202 	strd	r0, r2, [sp, #8]
c0de50e8:	7c68      	ldrb	r0, [r5, #17]
c0de50ea:	f88d 0018 	strb.w	r0, [sp, #24]
c0de50ee:	7d28      	ldrb	r0, [r5, #20]
c0de50f0:	f88d 001c 	strb.w	r0, [sp, #28]
c0de50f4:	7c28      	ldrb	r0, [r5, #16]
c0de50f6:	f88d 001a 	strb.w	r0, [sp, #26]
c0de50fa:	7ca8      	ldrb	r0, [r5, #18]
c0de50fc:	f080 0001 	eor.w	r0, r0, #1
c0de5100:	f88d 0019 	strb.w	r0, [sp, #25]
c0de5104:	a901      	add	r1, sp, #4
c0de5106:	4620      	mov	r0, r4
c0de5108:	f000 f808 	bl	c0de511c <addListItem>
c0de510c:	b110      	cbz	r0, c0de5114 <nbgl_layoutAddTouchableBar+0x4a>
c0de510e:	f002 f94f 	bl	c0de73b0 <OUTLINED_FUNCTION_36>
c0de5112:	e001      	b.n	c0de5118 <nbgl_layoutAddTouchableBar+0x4e>
c0de5114:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5118:	b008      	add	sp, #32
c0de511a:	bdb0      	pop	{r4, r5, r7, pc}

c0de511c <addListItem>:
c0de511c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5120:	4680      	mov	r8, r0
c0de5122:	7808      	ldrb	r0, [r1, #0]
c0de5124:	468a      	mov	sl, r1
c0de5126:	b108      	cbz	r0, c0de512c <addListItem+0x10>
c0de5128:	2600      	movs	r6, #0
c0de512a:	e005      	b.n	c0de5138 <addListItem+0x1c>
c0de512c:	f89a 0015 	ldrb.w	r0, [sl, #21]
c0de5130:	fab0 f080 	clz	r0, r0
c0de5134:	0940      	lsrs	r0, r0, #5
c0de5136:	0046      	lsls	r6, r0, #1
c0de5138:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de513c:	2401      	movs	r4, #1
c0de513e:	f002 f885 	bl	c0de724c <OUTLINED_FUNCTION_19>
c0de5142:	4683      	mov	fp, r0
c0de5144:	f89a 2014 	ldrb.w	r2, [sl, #20]
c0de5148:	f89a 3018 	ldrb.w	r3, [sl, #24]
c0de514c:	4640      	mov	r0, r8
c0de514e:	4659      	mov	r1, fp
c0de5150:	f7fe fdea 	bl	c0de3d28 <layoutAddCallbackObj>
c0de5154:	2700      	movs	r7, #0
c0de5156:	2800      	cmp	r0, #0
c0de5158:	f000 8088 	beq.w	c0de526c <addListItem+0x150>
c0de515c:	f89a 1017 	ldrb.w	r1, [sl, #23]
c0de5160:	7141      	strb	r1, [r0, #5]
c0de5162:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de5166:	f002 f99f 	bl	c0de74a8 <OUTLINED_FUNCTION_56>
c0de516a:	4659      	mov	r1, fp
c0de516c:	0e02      	lsrs	r2, r0, #24
c0de516e:	2364      	movs	r3, #100	@ 0x64
c0de5170:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de5174:	f801 7d10 	strb.w	r7, [r1, #-16]!
c0de5178:	74ca      	strb	r2, [r1, #19]
c0de517a:	0c02      	lsrs	r2, r0, #16
c0de517c:	0a00      	lsrs	r0, r0, #8
c0de517e:	f801 4c0d 	strb.w	r4, [r1, #-13]
c0de5182:	f801 7c0b 	strb.w	r7, [r1, #-11]
c0de5186:	7448      	strb	r0, [r1, #17]
c0de5188:	20a0      	movs	r0, #160	@ 0xa0
c0de518a:	748a      	strb	r2, [r1, #18]
c0de518c:	f801 0c0e 	strb.w	r0, [r1, #-14]
c0de5190:	f89a 2016 	ldrb.w	r2, [sl, #22]
c0de5194:	f89a 0000 	ldrb.w	r0, [sl]
c0de5198:	2a00      	cmp	r2, #0
c0de519a:	bf08      	it	eq
c0de519c:	235c      	moveq	r3, #92	@ 0x5c
c0de519e:	f801 3c0c 	strb.w	r3, [r1, #-12]
c0de51a2:	718f      	strb	r7, [r1, #6]
c0de51a4:	70cf      	strb	r7, [r1, #3]
c0de51a6:	708f      	strb	r7, [r1, #2]
c0de51a8:	704f      	strb	r7, [r1, #1]
c0de51aa:	738f      	strb	r7, [r1, #14]
c0de51ac:	734c      	strb	r4, [r1, #13]
c0de51ae:	710f      	strb	r7, [r1, #4]
c0de51b0:	2220      	movs	r2, #32
c0de51b2:	2801      	cmp	r0, #1
c0de51b4:	714a      	strb	r2, [r1, #5]
c0de51b6:	d004      	beq.n	c0de51c2 <addListItem+0xa6>
c0de51b8:	b9a0      	cbnz	r0, c0de51e4 <addListItem+0xc8>
c0de51ba:	f89a 0015 	ldrb.w	r0, [sl, #21]
c0de51be:	2801      	cmp	r0, #1
c0de51c0:	d110      	bne.n	c0de51e4 <addListItem+0xc8>
c0de51c2:	f8df 040c 	ldr.w	r0, [pc, #1036]	@ c0de55d0 <addListItem+0x4b4>
c0de51c6:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de51ca:	1c4a      	adds	r2, r1, #1
c0de51cc:	f809 2000 	strb.w	r2, [r9, r0]
c0de51d0:	2000      	movs	r0, #0
c0de51d2:	f88b 001d 	strb.w	r0, [fp, #29]
c0de51d6:	2001      	movs	r0, #1
c0de51d8:	f88b 001c 	strb.w	r0, [fp, #28]
c0de51dc:	f101 0014 	add.w	r0, r1, #20
c0de51e0:	f88b 001e 	strb.w	r0, [fp, #30]
c0de51e4:	f8da 000c 	ldr.w	r0, [sl, #12]
c0de51e8:	2400      	movs	r4, #0
c0de51ea:	2800      	cmp	r0, #0
c0de51ec:	d041      	beq.n	c0de5272 <addListItem+0x156>
c0de51ee:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de51f2:	f001 ff29 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de51f6:	4607      	mov	r7, r0
c0de51f8:	77c6      	strb	r6, [r0, #31]
c0de51fa:	f8da 000c 	ldr.w	r0, [sl, #12]
c0de51fe:	f006 f9e5 	bl	c0deb5cc <pic>
c0de5202:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de5206:	0e02      	lsrs	r2, r0, #24
c0de5208:	f887 402d 	strb.w	r4, [r7, #45]	@ 0x2d
c0de520c:	f041 0101 	orr.w	r1, r1, #1
c0de5210:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de5214:	210c      	movs	r1, #12
c0de5216:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de521a:	4639      	mov	r1, r7
c0de521c:	f801 4f2c 	strb.w	r4, [r1, #44]!
c0de5220:	70cc      	strb	r4, [r1, #3]
c0de5222:	708c      	strb	r4, [r1, #2]
c0de5224:	4639      	mov	r1, r7
c0de5226:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de522a:	f001 fffe 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de522e:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de5232:	f89b 1004 	ldrb.w	r1, [fp, #4]
c0de5236:	f89b 2005 	ldrb.w	r2, [fp, #5]
c0de523a:	7139      	strb	r1, [r7, #4]
c0de523c:	717a      	strb	r2, [r7, #5]
c0de523e:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de5242:	b1c0      	cbz	r0, c0de5276 <addListItem+0x15a>
c0de5244:	f006 f9c2 	bl	c0deb5cc <pic>
c0de5248:	4639      	mov	r1, r7
c0de524a:	f811 2f04 	ldrb.w	r2, [r1, #4]!
c0de524e:	784b      	ldrb	r3, [r1, #1]
c0de5250:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5254:	7803      	ldrb	r3, [r0, #0]
c0de5256:	7840      	ldrb	r0, [r0, #1]
c0de5258:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de525c:	f64f 73f0 	movw	r3, #65520	@ 0xfff0
c0de5260:	1a18      	subs	r0, r3, r0
c0de5262:	4402      	add	r2, r0
c0de5264:	0a10      	lsrs	r0, r2, #8
c0de5266:	700a      	strb	r2, [r1, #0]
c0de5268:	7048      	strb	r0, [r1, #1]
c0de526a:	e006      	b.n	c0de527a <addListItem+0x15e>
c0de526c:	f04f 0b00 	mov.w	fp, #0
c0de5270:	e1ab      	b.n	c0de55ca <addListItem+0x4ae>
c0de5272:	2700      	movs	r7, #0
c0de5274:	e074      	b.n	c0de5360 <addListItem+0x244>
c0de5276:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de527a:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de527e:	9601      	str	r6, [sp, #4]
c0de5280:	b130      	cbz	r0, c0de5290 <addListItem+0x174>
c0de5282:	f006 f9a3 	bl	c0deb5cc <pic>
c0de5286:	7939      	ldrb	r1, [r7, #4]
c0de5288:	797a      	ldrb	r2, [r7, #5]
c0de528a:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de528e:	e005      	b.n	c0de529c <addListItem+0x180>
c0de5290:	f89a 0000 	ldrb.w	r0, [sl]
c0de5294:	2801      	cmp	r0, #1
c0de5296:	d107      	bne.n	c0de52a8 <addListItem+0x18c>
c0de5298:	48ce      	ldr	r0, [pc, #824]	@ (c0de55d4 <addListItem+0x4b8>)
c0de529a:	4478      	add	r0, pc
c0de529c:	f002 f91c 	bl	c0de74d8 <OUTLINED_FUNCTION_60>
c0de52a0:	4402      	add	r2, r0
c0de52a2:	0a10      	lsrs	r0, r2, #8
c0de52a4:	713a      	strb	r2, [r7, #4]
c0de52a6:	7178      	strb	r0, [r7, #5]
c0de52a8:	4639      	mov	r1, r7
c0de52aa:	b292      	uxth	r2, r2
c0de52ac:	f811 3f26 	ldrb.w	r3, [r1, #38]!
c0de52b0:	784e      	ldrb	r6, [r1, #1]
c0de52b2:	78cc      	ldrb	r4, [r1, #3]
c0de52b4:	f811 0c04 	ldrb.w	r0, [r1, #-4]
c0de52b8:	f811 5c02 	ldrb.w	r5, [r1, #-2]
c0de52bc:	7889      	ldrb	r1, [r1, #2]
c0de52be:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
c0de52c2:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de52c6:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
c0de52ca:	f002 f90d 	bl	c0de74e8 <OUTLINED_FUNCTION_61>
c0de52ce:	2828      	cmp	r0, #40	@ 0x28
c0de52d0:	d201      	bcs.n	c0de52d6 <addListItem+0x1ba>
c0de52d2:	2028      	movs	r0, #40	@ 0x28
c0de52d4:	e017      	b.n	c0de5306 <addListItem+0x1ea>
c0de52d6:	463a      	mov	r2, r7
c0de52d8:	f812 0f26 	ldrb.w	r0, [r2, #38]!
c0de52dc:	78d1      	ldrb	r1, [r2, #3]
c0de52de:	7893      	ldrb	r3, [r2, #2]
c0de52e0:	f812 4c21 	ldrb.w	r4, [r2, #-33]
c0de52e4:	f812 5c02 	ldrb.w	r5, [r2, #-2]
c0de52e8:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de52ec:	7853      	ldrb	r3, [r2, #1]
c0de52ee:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
c0de52f2:	f812 3c22 	ldrb.w	r3, [r2, #-34]
c0de52f6:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de52fa:	f812 0c04 	ldrb.w	r0, [r2, #-4]
c0de52fe:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de5302:	f002 f8f1 	bl	c0de74e8 <OUTLINED_FUNCTION_61>
c0de5306:	4659      	mov	r1, fp
c0de5308:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de530c:	784c      	ldrb	r4, [r1, #1]
c0de530e:	788d      	ldrb	r5, [r1, #2]
c0de5310:	78ce      	ldrb	r6, [r1, #3]
c0de5312:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de5316:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de531a:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de531e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de5322:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de5326:	2200      	movs	r2, #0
c0de5328:	71b8      	strb	r0, [r7, #6]
c0de532a:	f887 2021 	strb.w	r2, [r7, #33]	@ 0x21
c0de532e:	2201      	movs	r2, #1
c0de5330:	75ba      	strb	r2, [r7, #22]
c0de5332:	2204      	movs	r2, #4
c0de5334:	f887 2020 	strb.w	r2, [r7, #32]
c0de5338:	0a02      	lsrs	r2, r0, #8
c0de533a:	71fa      	strb	r2, [r7, #7]
c0de533c:	1c5a      	adds	r2, r3, #1
c0de533e:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de5342:	f89a 1016 	ldrb.w	r1, [sl, #22]
c0de5346:	221e      	movs	r2, #30
c0de5348:	2900      	cmp	r1, #0
c0de534a:	bf08      	it	eq
c0de534c:	221a      	moveq	r2, #26
c0de534e:	3828      	subs	r0, #40	@ 0x28
c0de5350:	b280      	uxth	r0, r0
c0de5352:	bf88      	it	hi
c0de5354:	eba2 0250 	subhi.w	r2, r2, r0, lsr #1
c0de5358:	9e01      	ldr	r6, [sp, #4]
c0de535a:	767a      	strb	r2, [r7, #25]
c0de535c:	0a10      	lsrs	r0, r2, #8
c0de535e:	76b8      	strb	r0, [r7, #26]
c0de5360:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de5364:	2800      	cmp	r0, #0
c0de5366:	d046      	beq.n	c0de53f6 <addListItem+0x2da>
c0de5368:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de536c:	f001 ffb0 	bl	c0de72d0 <OUTLINED_FUNCTION_26>
c0de5370:	4604      	mov	r4, r0
c0de5372:	77c6      	strb	r6, [r0, #31]
c0de5374:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de5378:	f006 f928 	bl	c0deb5cc <pic>
c0de537c:	0a39      	lsrs	r1, r7, #8
c0de537e:	0e02      	lsrs	r2, r0, #24
c0de5380:	4635      	mov	r5, r6
c0de5382:	74e1      	strb	r1, [r4, #19]
c0de5384:	4621      	mov	r1, r4
c0de5386:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de538a:	70ca      	strb	r2, [r1, #3]
c0de538c:	0c02      	lsrs	r2, r0, #16
c0de538e:	0a00      	lsrs	r0, r0, #8
c0de5390:	f884 0022 	strb.w	r0, [r4, #34]	@ 0x22
c0de5394:	4620      	mov	r0, r4
c0de5396:	708a      	strb	r2, [r1, #2]
c0de5398:	0e39      	lsrs	r1, r7, #24
c0de539a:	f800 7f12 	strb.w	r7, [r0, #18]!
c0de539e:	70c1      	strb	r1, [r0, #3]
c0de53a0:	0c39      	lsrs	r1, r7, #16
c0de53a2:	7081      	strb	r1, [r0, #2]
c0de53a4:	4658      	mov	r0, fp
c0de53a6:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de53aa:	7843      	ldrb	r3, [r0, #1]
c0de53ac:	f890 c002 	ldrb.w	ip, [r0, #2]
c0de53b0:	78c6      	ldrb	r6, [r0, #3]
c0de53b2:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de53b6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de53ba:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de53be:	462e      	mov	r6, r5
c0de53c0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de53c4:	f002 f8db 	bl	c0de757e <OUTLINED_FUNCTION_75>
c0de53c8:	2104      	movs	r1, #4
c0de53ca:	75a1      	strb	r1, [r4, #22]
c0de53cc:	1c51      	adds	r1, r2, #1
c0de53ce:	f800 1c02 	strb.w	r1, [r0, #-2]
c0de53d2:	b187      	cbz	r7, c0de53f6 <addListItem+0x2da>
c0de53d4:	f814 0f21 	ldrb.w	r0, [r4, #33]!
c0de53d8:	7861      	ldrb	r1, [r4, #1]
c0de53da:	78a2      	ldrb	r2, [r4, #2]
c0de53dc:	78e3      	ldrb	r3, [r4, #3]
c0de53de:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de53e2:	f001 ffea 	bl	c0de73ba <OUTLINED_FUNCTION_37>
c0de53e6:	7801      	ldrb	r1, [r0, #0]
c0de53e8:	7840      	ldrb	r0, [r0, #1]
c0de53ea:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de53ee:	3010      	adds	r0, #16
c0de53f0:	75f8      	strb	r0, [r7, #23]
c0de53f2:	0a00      	lsrs	r0, r0, #8
c0de53f4:	7638      	strb	r0, [r7, #24]
c0de53f6:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de53fa:	b190      	cbz	r0, c0de5422 <addListItem+0x306>
c0de53fc:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de5400:	f001 ff66 	bl	c0de72d0 <OUTLINED_FUNCTION_26>
c0de5404:	4604      	mov	r4, r0
c0de5406:	77c6      	strb	r6, [r0, #31]
c0de5408:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de540c:	f006 f8de 	bl	c0deb5cc <pic>
c0de5410:	4621      	mov	r1, r4
c0de5412:	0e02      	lsrs	r2, r0, #24
c0de5414:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de5418:	f001 ff07 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de541c:	f884 0022 	strb.w	r0, [r4, #34]	@ 0x22
c0de5420:	e013      	b.n	c0de544a <addListItem+0x32e>
c0de5422:	f89a 0000 	ldrb.w	r0, [sl]
c0de5426:	2801      	cmp	r0, #1
c0de5428:	d12d      	bne.n	c0de5486 <addListItem+0x36a>
c0de542a:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de542e:	08c1      	lsrs	r1, r0, #3
c0de5430:	2006      	movs	r0, #6
c0de5432:	f005 feea 	bl	c0deb20a <nbgl_objPoolGet>
c0de5436:	4604      	mov	r4, r0
c0de5438:	2002      	movs	r0, #2
c0de543a:	f884 0020 	strb.w	r0, [r4, #32]
c0de543e:	2000      	movs	r0, #0
c0de5440:	77e0      	strb	r0, [r4, #31]
c0de5442:	f89a 0015 	ldrb.w	r0, [sl, #21]
c0de5446:	f884 0021 	strb.w	r0, [r4, #33]	@ 0x21
c0de544a:	2006      	movs	r0, #6
c0de544c:	0e39      	lsrs	r1, r7, #24
c0de544e:	75a0      	strb	r0, [r4, #22]
c0de5450:	4620      	mov	r0, r4
c0de5452:	f800 7f12 	strb.w	r7, [r0, #18]!
c0de5456:	70c1      	strb	r1, [r0, #3]
c0de5458:	0c39      	lsrs	r1, r7, #16
c0de545a:	7081      	strb	r1, [r0, #2]
c0de545c:	0a38      	lsrs	r0, r7, #8
c0de545e:	74e0      	strb	r0, [r4, #19]
c0de5460:	4658      	mov	r0, fp
c0de5462:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5466:	7842      	ldrb	r2, [r0, #1]
c0de5468:	7883      	ldrb	r3, [r0, #2]
c0de546a:	78c5      	ldrb	r5, [r0, #3]
c0de546c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5470:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de5474:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5478:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de547c:	f002 f87f 	bl	c0de757e <OUTLINED_FUNCTION_75>
c0de5480:	1c51      	adds	r1, r2, #1
c0de5482:	f800 1c02 	strb.w	r1, [r0, #-2]
c0de5486:	f8da 0010 	ldr.w	r0, [sl, #16]
c0de548a:	2800      	cmp	r0, #0
c0de548c:	f000 8088 	beq.w	c0de55a0 <addListItem+0x484>
c0de5490:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de5494:	2504      	movs	r5, #4
c0de5496:	f001 fdd7 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de549a:	4604      	mov	r4, r0
c0de549c:	77c6      	strb	r6, [r0, #31]
c0de549e:	f8da 0010 	ldr.w	r0, [sl, #16]
c0de54a2:	f006 f893 	bl	c0deb5cc <pic>
c0de54a6:	4601      	mov	r1, r0
c0de54a8:	4622      	mov	r2, r4
c0de54aa:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de54ae:	f884 5020 	strb.w	r5, [r4, #32]
c0de54b2:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de54b6:	0e0b      	lsrs	r3, r1, #24
c0de54b8:	70d3      	strb	r3, [r2, #3]
c0de54ba:	0c0b      	lsrs	r3, r1, #16
c0de54bc:	f040 0001 	orr.w	r0, r0, #1
c0de54c0:	7093      	strb	r3, [r2, #2]
c0de54c2:	0a0a      	lsrs	r2, r1, #8
c0de54c4:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
c0de54c8:	200b      	movs	r0, #11
c0de54ca:	f884 2027 	strb.w	r2, [r4, #39]	@ 0x27
c0de54ce:	f884 0022 	strb.w	r0, [r4, #34]	@ 0x22
c0de54d2:	2000      	movs	r0, #0
c0de54d4:	f8da 200c 	ldr.w	r2, [sl, #12]
c0de54d8:	f884 0021 	strb.w	r0, [r4, #33]	@ 0x21
c0de54dc:	b15a      	cbz	r2, c0de54f6 <addListItem+0x3da>
c0de54de:	4620      	mov	r0, r4
c0de54e0:	0e3a      	lsrs	r2, r7, #24
c0de54e2:	f800 7f12 	strb.w	r7, [r0, #18]!
c0de54e6:	70c2      	strb	r2, [r0, #3]
c0de54e8:	0c3a      	lsrs	r2, r7, #16
c0de54ea:	7082      	strb	r2, [r0, #2]
c0de54ec:	0a3a      	lsrs	r2, r7, #8
c0de54ee:	7042      	strb	r2, [r0, #1]
c0de54f0:	200c      	movs	r0, #12
c0de54f2:	2207      	movs	r2, #7
c0de54f4:	e005      	b.n	c0de5502 <addListItem+0x3e6>
c0de54f6:	f88b 0007 	strb.w	r0, [fp, #7]
c0de54fa:	201c      	movs	r0, #28
c0de54fc:	2201      	movs	r2, #1
c0de54fe:	f88b 0006 	strb.w	r0, [fp, #6]
c0de5502:	2300      	movs	r3, #0
c0de5504:	7660      	strb	r0, [r4, #25]
c0de5506:	75a2      	strb	r2, [r4, #22]
c0de5508:	76a3      	strb	r3, [r4, #26]
c0de550a:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de550e:	b1b8      	cbz	r0, c0de5540 <addListItem+0x424>
c0de5510:	f006 f85c 	bl	c0deb5cc <pic>
c0de5514:	f001 ffe0 	bl	c0de74d8 <OUTLINED_FUNCTION_60>
c0de5518:	4621      	mov	r1, r4
c0de551a:	f811 2f26 	ldrb.w	r2, [r1, #38]!
c0de551e:	f801 0c0f 	strb.w	r0, [r1, #-15]
c0de5522:	0a00      	lsrs	r0, r0, #8
c0de5524:	784b      	ldrb	r3, [r1, #1]
c0de5526:	788d      	ldrb	r5, [r1, #2]
c0de5528:	f801 0c0e 	strb.w	r0, [r1, #-14]
c0de552c:	f811 0c04 	ldrb.w	r0, [r1, #-4]
c0de5530:	78c9      	ldrb	r1, [r1, #3]
c0de5532:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5536:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de553a:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de553e:	e000      	b.n	c0de5542 <addListItem+0x426>
c0de5540:	200b      	movs	r0, #11
c0de5542:	f89b 3005 	ldrb.w	r3, [fp, #5]
c0de5546:	f89b 2004 	ldrb.w	r2, [fp, #4]
c0de554a:	f894 5024 	ldrb.w	r5, [r4, #36]	@ 0x24
c0de554e:	7122      	strb	r2, [r4, #4]
c0de5550:	7163      	strb	r3, [r4, #5]
c0de5552:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5556:	f001 ffc7 	bl	c0de74e8 <OUTLINED_FUNCTION_61>
c0de555a:	4659      	mov	r1, fp
c0de555c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5560:	f811 cd1c 	ldrb.w	ip, [r1, #-28]!
c0de5564:	7f4b      	ldrb	r3, [r1, #29]
c0de5566:	7fcd      	ldrb	r5, [r1, #31]
c0de5568:	7f8e      	ldrb	r6, [r1, #30]
c0de556a:	7e8f      	ldrb	r7, [r1, #26]
c0de556c:	f891 e001 	ldrb.w	lr, [r1, #1]
c0de5570:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5574:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
c0de5578:	7ea3      	ldrb	r3, [r4, #26]
c0de557a:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de557e:	f842 4027 	str.w	r4, [r2, r7, lsl #2]
c0de5582:	0a02      	lsrs	r2, r0, #8
c0de5584:	71a0      	strb	r0, [r4, #6]
c0de5586:	71e2      	strb	r2, [r4, #7]
c0de5588:	1c7a      	adds	r2, r7, #1
c0de558a:	768a      	strb	r2, [r1, #26]
c0de558c:	7e62      	ldrb	r2, [r4, #25]
c0de558e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5592:	4410      	add	r0, r2
c0de5594:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de5598:	4410      	add	r0, r2
c0de559a:	7008      	strb	r0, [r1, #0]
c0de559c:	0a00      	lsrs	r0, r0, #8
c0de559e:	7048      	strb	r0, [r1, #1]
c0de55a0:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de55a4:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de55a8:	7843      	ldrb	r3, [r0, #1]
c0de55aa:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de55ae:	7884      	ldrb	r4, [r0, #2]
c0de55b0:	78c0      	ldrb	r0, [r0, #3]
c0de55b2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de55b6:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de55ba:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de55be:	f840 b022 	str.w	fp, [r0, r2, lsl #2]
c0de55c2:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de55c6:	f001 fd39 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de55ca:	4658      	mov	r0, fp
c0de55cc:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de55d0:	00000a9c 	.word	0x00000a9c
c0de55d4:	00006a53 	.word	0x00006a53

c0de55d8 <nbgl_layoutAddSwitch>:
c0de55d8:	b5b0      	push	{r4, r5, r7, lr}
c0de55da:	b088      	sub	sp, #32
c0de55dc:	460d      	mov	r5, r1
c0de55de:	4604      	mov	r4, r0
c0de55e0:	a801      	add	r0, sp, #4
c0de55e2:	211c      	movs	r1, #28
c0de55e4:	f006 fa32 	bl	c0deba4c <__aeabi_memclr>
c0de55e8:	b1bc      	cbz	r4, c0de561a <nbgl_layoutAddSwitch+0x42>
c0de55ea:	2001      	movs	r0, #1
c0de55ec:	f88d 0004 	strb.w	r0, [sp, #4]
c0de55f0:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de55f4:	e9cd 0104 	strd	r0, r1, [sp, #16]
c0de55f8:	7a68      	ldrb	r0, [r5, #9]
c0de55fa:	f88d 0018 	strb.w	r0, [sp, #24]
c0de55fe:	7aa8      	ldrb	r0, [r5, #10]
c0de5600:	f88d 001c 	strb.w	r0, [sp, #28]
c0de5604:	7a28      	ldrb	r0, [r5, #8]
c0de5606:	f88d 0019 	strb.w	r0, [sp, #25]
c0de560a:	a901      	add	r1, sp, #4
c0de560c:	4620      	mov	r0, r4
c0de560e:	f7ff fd85 	bl	c0de511c <addListItem>
c0de5612:	b110      	cbz	r0, c0de561a <nbgl_layoutAddSwitch+0x42>
c0de5614:	f001 fecc 	bl	c0de73b0 <OUTLINED_FUNCTION_36>
c0de5618:	e001      	b.n	c0de561e <nbgl_layoutAddSwitch+0x46>
c0de561a:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de561e:	b008      	add	sp, #32
c0de5620:	bdb0      	pop	{r4, r5, r7, pc}

c0de5622 <nbgl_layoutAddText>:
c0de5622:	b570      	push	{r4, r5, r6, lr}
c0de5624:	b088      	sub	sp, #32
c0de5626:	460d      	mov	r5, r1
c0de5628:	4604      	mov	r4, r0
c0de562a:	a801      	add	r0, sp, #4
c0de562c:	211c      	movs	r1, #28
c0de562e:	4616      	mov	r6, r2
c0de5630:	f006 fa0c 	bl	c0deba4c <__aeabi_memclr>
c0de5634:	b194      	cbz	r4, c0de565c <nbgl_layoutAddText+0x3a>
c0de5636:	200c      	movs	r0, #12
c0de5638:	e9cd 5604 	strd	r5, r6, [sp, #16]
c0de563c:	f88d 001c 	strb.w	r0, [sp, #28]
c0de5640:	20ff      	movs	r0, #255	@ 0xff
c0de5642:	f88d 0018 	strb.w	r0, [sp, #24]
c0de5646:	2002      	movs	r0, #2
c0de5648:	f88d 0004 	strb.w	r0, [sp, #4]
c0de564c:	a901      	add	r1, sp, #4
c0de564e:	4620      	mov	r0, r4
c0de5650:	f7ff fd64 	bl	c0de511c <addListItem>
c0de5654:	b110      	cbz	r0, c0de565c <nbgl_layoutAddText+0x3a>
c0de5656:	f001 feab 	bl	c0de73b0 <OUTLINED_FUNCTION_36>
c0de565a:	e001      	b.n	c0de5660 <nbgl_layoutAddText+0x3e>
c0de565c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5660:	b008      	add	sp, #32
c0de5662:	bd70      	pop	{r4, r5, r6, pc}

c0de5664 <nbgl_layoutAddTextWithAlias>:
c0de5664:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5666:	b087      	sub	sp, #28
c0de5668:	460e      	mov	r6, r1
c0de566a:	4604      	mov	r4, r0
c0de566c:	4668      	mov	r0, sp
c0de566e:	211c      	movs	r1, #28
c0de5670:	461d      	mov	r5, r3
c0de5672:	4617      	mov	r7, r2
c0de5674:	f006 f9ea 	bl	c0deba4c <__aeabi_memclr>
c0de5678:	b1bc      	cbz	r4, c0de56aa <nbgl_layoutAddTextWithAlias+0x46>
c0de567a:	210c      	movs	r1, #12
c0de567c:	e9cd 6703 	strd	r6, r7, [sp, #12]
c0de5680:	f88d 5014 	strb.w	r5, [sp, #20]
c0de5684:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de5686:	f88d 1018 	strb.w	r1, [sp, #24]
c0de568a:	490a      	ldr	r1, [pc, #40]	@ (c0de56b4 <nbgl_layoutAddTextWithAlias+0x50>)
c0de568c:	f88d 0017 	strb.w	r0, [sp, #23]
c0de5690:	2001      	movs	r0, #1
c0de5692:	f88d 0015 	strb.w	r0, [sp, #21]
c0de5696:	4620      	mov	r0, r4
c0de5698:	4479      	add	r1, pc
c0de569a:	9102      	str	r1, [sp, #8]
c0de569c:	4669      	mov	r1, sp
c0de569e:	f7ff fd3d 	bl	c0de511c <addListItem>
c0de56a2:	b110      	cbz	r0, c0de56aa <nbgl_layoutAddTextWithAlias+0x46>
c0de56a4:	f001 fe84 	bl	c0de73b0 <OUTLINED_FUNCTION_36>
c0de56a8:	e001      	b.n	c0de56ae <nbgl_layoutAddTextWithAlias+0x4a>
c0de56aa:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de56ae:	b007      	add	sp, #28
c0de56b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de56b2:	bf00      	nop
c0de56b4:	00007290 	.word	0x00007290

c0de56b8 <nbgl_layoutAddTextContent>:
c0de56b8:	2800      	cmp	r0, #0
c0de56ba:	f000 80ab 	beq.w	c0de5814 <nbgl_layoutAddTextContent+0x15c>
c0de56be:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de56c2:	4680      	mov	r8, r0
c0de56c4:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de56c8:	4e53      	ldr	r6, [pc, #332]	@ (c0de5818 <nbgl_layoutAddTextContent+0x160>)
c0de56ca:	460d      	mov	r5, r1
c0de56cc:	e9cd 2300 	strd	r2, r3, [sp]
c0de56d0:	08c1      	lsrs	r1, r0, #3
c0de56d2:	447e      	add	r6, pc
c0de56d4:	2004      	movs	r0, #4
c0de56d6:	47b0      	blx	r6
c0de56d8:	f04f 0b00 	mov.w	fp, #0
c0de56dc:	4607      	mov	r7, r0
c0de56de:	f880 b01f 	strb.w	fp, [r0, #31]
c0de56e2:	4628      	mov	r0, r5
c0de56e4:	4c4d      	ldr	r4, [pc, #308]	@ (c0de581c <nbgl_layoutAddTextContent+0x164>)
c0de56e6:	447c      	add	r4, pc
c0de56e8:	47a0      	blx	r4
c0de56ea:	4601      	mov	r1, r0
c0de56ec:	2010      	movs	r0, #16
c0de56ee:	f887 b01a 	strb.w	fp, [r7, #26]
c0de56f2:	f887 b018 	strb.w	fp, [r7, #24]
c0de56f6:	f887 b021 	strb.w	fp, [r7, #33]	@ 0x21
c0de56fa:	f887 b016 	strb.w	fp, [r7, #22]
c0de56fe:	2301      	movs	r3, #1
c0de5700:	46a2      	mov	sl, r4
c0de5702:	7678      	strb	r0, [r7, #25]
c0de5704:	2020      	movs	r0, #32
c0de5706:	0e0a      	lsrs	r2, r1, #24
c0de5708:	75f8      	strb	r0, [r7, #23]
c0de570a:	2001      	movs	r0, #1
c0de570c:	7178      	strb	r0, [r7, #5]
c0de570e:	20a0      	movs	r0, #160	@ 0xa0
c0de5710:	7138      	strb	r0, [r7, #4]
c0de5712:	200d      	movs	r0, #13
c0de5714:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5718:	2004      	movs	r0, #4
c0de571a:	f001 fd9b 	bl	c0de7254 <OUTLINED_FUNCTION_20>
c0de571e:	200d      	movs	r0, #13
c0de5720:	4d3f      	ldr	r5, [pc, #252]	@ (c0de5820 <nbgl_layoutAddTextContent+0x168>)
c0de5722:	447d      	add	r5, pc
c0de5724:	47a8      	blx	r5
c0de5726:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de572a:	f001 fdc1 	bl	c0de72b0 <OUTLINED_FUNCTION_25>
c0de572e:	71b8      	strb	r0, [r7, #6]
c0de5730:	0a00      	lsrs	r0, r0, #8
c0de5732:	71f8      	strb	r0, [r7, #7]
c0de5734:	f001 fe09 	bl	c0de734a <OUTLINED_FUNCTION_32>
c0de5738:	4607      	mov	r7, r0
c0de573a:	f880 b01f 	strb.w	fp, [r0, #31]
c0de573e:	9800      	ldr	r0, [sp, #0]
c0de5740:	47d0      	blx	sl
c0de5742:	4601      	mov	r1, r0
c0de5744:	2001      	movs	r0, #1
c0de5746:	2301      	movs	r3, #1
c0de5748:	f887 b021 	strb.w	fp, [r7, #33]	@ 0x21
c0de574c:	7178      	strb	r0, [r7, #5]
c0de574e:	20a0      	movs	r0, #160	@ 0xa0
c0de5750:	0e0a      	lsrs	r2, r1, #24
c0de5752:	7138      	strb	r0, [r7, #4]
c0de5754:	200b      	movs	r0, #11
c0de5756:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de575a:	4638      	mov	r0, r7
c0de575c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de5760:	70c2      	strb	r2, [r0, #3]
c0de5762:	0c0a      	lsrs	r2, r1, #16
c0de5764:	7082      	strb	r2, [r0, #2]
c0de5766:	0a08      	lsrs	r0, r1, #8
c0de5768:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de576c:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de5770:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de5774:	f040 0001 	orr.w	r0, r0, #1
c0de5778:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de577c:	200b      	movs	r0, #11
c0de577e:	47a8      	blx	r5
c0de5780:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de5784:	f887 b01a 	strb.w	fp, [r7, #26]
c0de5788:	f887 b018 	strb.w	fp, [r7, #24]
c0de578c:	f887 b016 	strb.w	fp, [r7, #22]
c0de5790:	f001 fd8e 	bl	c0de72b0 <OUTLINED_FUNCTION_25>
c0de5794:	2104      	movs	r1, #4
c0de5796:	71b8      	strb	r0, [r7, #6]
c0de5798:	0a00      	lsrs	r0, r0, #8
c0de579a:	f887 1020 	strb.w	r1, [r7, #32]
c0de579e:	2118      	movs	r1, #24
c0de57a0:	71f8      	strb	r0, [r7, #7]
c0de57a2:	7679      	strb	r1, [r7, #25]
c0de57a4:	2120      	movs	r1, #32
c0de57a6:	75f9      	strb	r1, [r7, #23]
c0de57a8:	f001 fdcf 	bl	c0de734a <OUTLINED_FUNCTION_32>
c0de57ac:	2401      	movs	r4, #1
c0de57ae:	4606      	mov	r6, r0
c0de57b0:	77c4      	strb	r4, [r0, #31]
c0de57b2:	9801      	ldr	r0, [sp, #4]
c0de57b4:	47d0      	blx	sl
c0de57b6:	4601      	mov	r1, r0
c0de57b8:	20a0      	movs	r0, #160	@ 0xa0
c0de57ba:	2301      	movs	r3, #1
c0de57bc:	7174      	strb	r4, [r6, #5]
c0de57be:	f886 b021 	strb.w	fp, [r6, #33]	@ 0x21
c0de57c2:	7130      	strb	r0, [r6, #4]
c0de57c4:	200b      	movs	r0, #11
c0de57c6:	0e0a      	lsrs	r2, r1, #24
c0de57c8:	f001 fd1a 	bl	c0de7200 <OUTLINED_FUNCTION_16>
c0de57cc:	47a8      	blx	r5
c0de57ce:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de57d2:	f886 b01a 	strb.w	fp, [r6, #26]
c0de57d6:	f886 b018 	strb.w	fp, [r6, #24]
c0de57da:	f001 fc61 	bl	c0de70a0 <OUTLINED_FUNCTION_4>
c0de57de:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
c0de57e2:	2128      	movs	r1, #40	@ 0x28
c0de57e4:	71b0      	strb	r0, [r6, #6]
c0de57e6:	0a00      	lsrs	r0, r0, #8
c0de57e8:	7671      	strb	r1, [r6, #25]
c0de57ea:	2120      	movs	r1, #32
c0de57ec:	71f0      	strb	r0, [r6, #7]
c0de57ee:	75f1      	strb	r1, [r6, #23]
c0de57f0:	2104      	movs	r1, #4
c0de57f2:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de57f6:	f886 1020 	strb.w	r1, [r6, #32]
c0de57fa:	2107      	movs	r1, #7
c0de57fc:	75b1      	strb	r1, [r6, #22]
c0de57fe:	f890 3020 	ldrb.w	r3, [r0, #32]
c0de5802:	7981      	ldrb	r1, [r0, #6]
c0de5804:	79c2      	ldrb	r2, [r0, #7]
c0de5806:	3301      	adds	r3, #1
c0de5808:	f880 3020 	strb.w	r3, [r0, #32]
c0de580c:	ea41 2002 	orr.w	r0, r1, r2, lsl #8
c0de5810:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5814:	f001 bddd 	b.w	c0de73d2 <OUTLINED_FUNCTION_40>
c0de5818:	00005b35 	.word	0x00005b35
c0de581c:	00005ee3 	.word	0x00005ee3
c0de5820:	00005b17 	.word	0x00005b17

c0de5824 <nbgl_layoutAddRadioChoice>:
c0de5824:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5828:	2800      	cmp	r0, #0
c0de582a:	f000 80ff 	beq.w	c0de5a2c <nbgl_layoutAddRadioChoice+0x208>
c0de582e:	4605      	mov	r5, r0
c0de5830:	4883      	ldr	r0, [pc, #524]	@ (c0de5a40 <nbgl_layoutAddRadioChoice+0x21c>)
c0de5832:	468a      	mov	sl, r1
c0de5834:	f04f 0800 	mov.w	r8, #0
c0de5838:	e9cd 1501 	strd	r1, r5, [sp, #4]
c0de583c:	4478      	add	r0, pc
c0de583e:	9003      	str	r0, [sp, #12]
c0de5840:	f89a 0005 	ldrb.w	r0, [sl, #5]
c0de5844:	4580      	cmp	r8, r0
c0de5846:	f080 80f4 	bcs.w	c0de5a32 <nbgl_layoutAddRadioChoice+0x20e>
c0de584a:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de584e:	9c03      	ldr	r4, [sp, #12]
c0de5850:	08c1      	lsrs	r1, r0, #3
c0de5852:	2001      	movs	r0, #1
c0de5854:	47a0      	blx	r4
c0de5856:	4606      	mov	r6, r0
c0de5858:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de585c:	08c1      	lsrs	r1, r0, #3
c0de585e:	2004      	movs	r0, #4
c0de5860:	47a0      	blx	r4
c0de5862:	4607      	mov	r7, r0
c0de5864:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de5868:	08c1      	lsrs	r1, r0, #3
c0de586a:	2009      	movs	r0, #9
c0de586c:	47a0      	blx	r4
c0de586e:	f89a 2007 	ldrb.w	r2, [sl, #7]
c0de5872:	f89a 3008 	ldrb.w	r3, [sl, #8]
c0de5876:	4604      	mov	r4, r0
c0de5878:	4628      	mov	r0, r5
c0de587a:	4631      	mov	r1, r6
c0de587c:	f7fe fa54 	bl	c0de3d28 <layoutAddCallbackObj>
c0de5880:	2800      	cmp	r0, #0
c0de5882:	f000 80d3 	beq.w	c0de5a2c <nbgl_layoutAddRadioChoice+0x208>
c0de5886:	2002      	movs	r0, #2
c0de5888:	f886 0020 	strb.w	r0, [r6, #32]
c0de588c:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de5890:	08c1      	lsrs	r1, r0, #3
c0de5892:	2002      	movs	r0, #2
c0de5894:	f005 fcbe 	bl	c0deb214 <nbgl_containerPoolGet>
c0de5898:	2300      	movs	r3, #0
c0de589a:	ea4f 2c16 	mov.w	ip, r6, lsr #8
c0de589e:	4631      	mov	r1, r6
c0de58a0:	0e02      	lsrs	r2, r0, #24
c0de58a2:	4655      	mov	r5, sl
c0de58a4:	ea4f 6a16 	mov.w	sl, r6, lsr #24
c0de58a8:	ea4f 4b16 	mov.w	fp, r6, lsr #16
c0de58ac:	74f3      	strb	r3, [r6, #19]
c0de58ae:	f884 c013 	strb.w	ip, [r4, #19]
c0de58b2:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de58b6:	70ca      	strb	r2, [r1, #3]
c0de58b8:	0c02      	lsrs	r2, r0, #16
c0de58ba:	708a      	strb	r2, [r1, #2]
c0de58bc:	0a01      	lsrs	r1, r0, #8
c0de58be:	f886 1023 	strb.w	r1, [r6, #35]	@ 0x23
c0de58c2:	4631      	mov	r1, r6
c0de58c4:	f801 3f12 	strb.w	r3, [r1, #18]!
c0de58c8:	70cb      	strb	r3, [r1, #3]
c0de58ca:	708b      	strb	r3, [r1, #2]
c0de58cc:	4621      	mov	r1, r4
c0de58ce:	f801 6f12 	strb.w	r6, [r1, #18]!
c0de58d2:	f881 b002 	strb.w	fp, [r1, #2]
c0de58d6:	f881 a003 	strb.w	sl, [r1, #3]
c0de58da:	2120      	movs	r1, #32
c0de58dc:	7633      	strb	r3, [r6, #24]
c0de58de:	71f3      	strb	r3, [r6, #7]
c0de58e0:	75b3      	strb	r3, [r6, #22]
c0de58e2:	75f1      	strb	r1, [r6, #23]
c0de58e4:	215c      	movs	r1, #92	@ 0x5c
c0de58e6:	71b1      	strb	r1, [r6, #6]
c0de58e8:	2101      	movs	r1, #1
c0de58ea:	7171      	strb	r1, [r6, #5]
c0de58ec:	21a0      	movs	r1, #160	@ 0xa0
c0de58ee:	7131      	strb	r1, [r6, #4]
c0de58f0:	2102      	movs	r1, #2
c0de58f2:	6044      	str	r4, [r0, #4]
c0de58f4:	77e3      	strb	r3, [r4, #31]
c0de58f6:	f884 3021 	strb.w	r3, [r4, #33]	@ 0x21
c0de58fa:	7928      	ldrb	r0, [r5, #4]
c0de58fc:	f884 1020 	strb.w	r1, [r4, #32]
c0de5900:	2106      	movs	r1, #6
c0de5902:	75a1      	strb	r1, [r4, #22]
c0de5904:	b110      	cbz	r0, c0de590c <nbgl_layoutAddRadioChoice+0xe8>
c0de5906:	f44f 70d0 	mov.w	r0, #416	@ 0x1a0
c0de590a:	e014      	b.n	c0de5936 <nbgl_layoutAddRadioChoice+0x112>
c0de590c:	6828      	ldr	r0, [r5, #0]
c0de590e:	4665      	mov	r5, ip
c0de5910:	f850 0028 	ldr.w	r0, [r0, r8, lsl #2]
c0de5914:	f005 fe5a 	bl	c0deb5cc <pic>
c0de5918:	4639      	mov	r1, r7
c0de591a:	0e02      	lsrs	r2, r0, #24
c0de591c:	46ac      	mov	ip, r5
c0de591e:	9d01      	ldr	r5, [sp, #4]
c0de5920:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de5924:	70ca      	strb	r2, [r1, #3]
c0de5926:	0c02      	lsrs	r2, r0, #16
c0de5928:	0a00      	lsrs	r0, r0, #8
c0de592a:	708a      	strb	r2, [r1, #2]
c0de592c:	7048      	strb	r0, [r1, #1]
c0de592e:	7930      	ldrb	r0, [r6, #4]
c0de5930:	7971      	ldrb	r1, [r6, #5]
c0de5932:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5936:	4639      	mov	r1, r7
c0de5938:	f887 c013 	strb.w	ip, [r7, #19]
c0de593c:	4632      	mov	r2, r6
c0de593e:	3828      	subs	r0, #40	@ 0x28
c0de5940:	f801 6f12 	strb.w	r6, [r1, #18]!
c0de5944:	f881 b002 	strb.w	fp, [r1, #2]
c0de5948:	f881 a003 	strb.w	sl, [r1, #3]
c0de594c:	f04f 0b00 	mov.w	fp, #0
c0de5950:	46aa      	mov	sl, r5
c0de5952:	f896 1023 	ldrb.w	r1, [r6, #35]	@ 0x23
c0de5956:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de595a:	f886 b01d 	strb.w	fp, [r6, #29]
c0de595e:	f001 fdd5 	bl	c0de750c <OUTLINED_FUNCTION_66>
c0de5962:	4b36      	ldr	r3, [pc, #216]	@ (c0de5a3c <nbgl_layoutAddRadioChoice+0x218>)
c0de5964:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5968:	600f      	str	r7, [r1, #0]
c0de596a:	f819 1003 	ldrb.w	r1, [r9, r3]
c0de596e:	1c4a      	adds	r2, r1, #1
c0de5970:	3114      	adds	r1, #20
c0de5972:	f809 2003 	strb.w	r2, [r9, r3]
c0de5976:	2201      	movs	r2, #1
c0de5978:	77b1      	strb	r1, [r6, #30]
c0de597a:	2104      	movs	r1, #4
c0de597c:	7732      	strb	r2, [r6, #28]
c0de597e:	f887 b021 	strb.w	fp, [r7, #33]	@ 0x21
c0de5982:	f887 1020 	strb.w	r1, [r7, #32]
c0de5986:	75b9      	strb	r1, [r7, #22]
c0de5988:	79aa      	ldrb	r2, [r5, #6]
c0de598a:	eba8 0302 	sub.w	r3, r8, r2
c0de598e:	fab3 f383 	clz	r3, r3
c0de5992:	095b      	lsrs	r3, r3, #5
c0de5994:	f884 3021 	strb.w	r3, [r4, #33]	@ 0x21
c0de5998:	7138      	strb	r0, [r7, #4]
c0de599a:	0a00      	lsrs	r0, r0, #8
c0de599c:	7178      	strb	r0, [r7, #5]
c0de599e:	ebb8 0002 	subs.w	r0, r8, r2
c0de59a2:	bf18      	it	ne
c0de59a4:	2001      	movne	r0, #1
c0de59a6:	77f8      	strb	r0, [r7, #31]
c0de59a8:	4590      	cmp	r8, r2
c0de59aa:	f04f 000b 	mov.w	r0, #11
c0de59ae:	bf08      	it	eq
c0de59b0:	200c      	moveq	r0, #12
c0de59b2:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de59b6:	f005 fc37 	bl	c0deb228 <nbgl_getFontHeight>
c0de59ba:	9d02      	ldr	r5, [sp, #8]
c0de59bc:	f887 b007 	strb.w	fp, [r7, #7]
c0de59c0:	71b8      	strb	r0, [r7, #6]
c0de59c2:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de59c6:	08c0      	lsrs	r0, r0, #3
c0de59c8:	f000 f83c 	bl	c0de5a44 <createHorizontalLine>
c0de59cc:	f8d5 10a0 	ldr.w	r1, [r5, #160]	@ 0xa0
c0de59d0:	f108 0801 	add.w	r8, r8, #1
c0de59d4:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de59d8:	784c      	ldrb	r4, [r1, #1]
c0de59da:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de59de:	788f      	ldrb	r7, [r1, #2]
c0de59e0:	78c9      	ldrb	r1, [r1, #3]
c0de59e2:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de59e6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de59ea:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de59ee:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
c0de59f2:	f8d5 10a0 	ldr.w	r1, [r5, #160]	@ 0xa0
c0de59f6:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de59fa:	784b      	ldrb	r3, [r1, #1]
c0de59fc:	788c      	ldrb	r4, [r1, #2]
c0de59fe:	78ce      	ldrb	r6, [r1, #3]
c0de5a00:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5a04:	ea44 2306 	orr.w	r3, r4, r6, lsl #8
c0de5a08:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de5a0c:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de5a10:	3301      	adds	r3, #1
c0de5a12:	b2dc      	uxtb	r4, r3
c0de5a14:	f801 3c02 	strb.w	r3, [r1, #-2]
c0de5a18:	21ff      	movs	r1, #255	@ 0xff
c0de5a1a:	f842 0024 	str.w	r0, [r2, r4, lsl #2]
c0de5a1e:	7641      	strb	r1, [r0, #25]
c0de5a20:	7681      	strb	r1, [r0, #26]
c0de5a22:	f8d5 00a0 	ldr.w	r0, [r5, #160]	@ 0xa0
c0de5a26:	f001 fb09 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de5a2a:	e709      	b.n	c0de5840 <nbgl_layoutAddRadioChoice+0x1c>
c0de5a2c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5a30:	e000      	b.n	c0de5a34 <nbgl_layoutAddRadioChoice+0x210>
c0de5a32:	2000      	movs	r0, #0
c0de5a34:	b004      	add	sp, #16
c0de5a36:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5a3a:	bf00      	nop
c0de5a3c:	00000a9c 	.word	0x00000a9c
c0de5a40:	000059cb 	.word	0x000059cb

c0de5a44 <createHorizontalLine>:
c0de5a44:	b580      	push	{r7, lr}
c0de5a46:	4601      	mov	r1, r0
c0de5a48:	2003      	movs	r0, #3
c0de5a4a:	f005 fbde 	bl	c0deb20a <nbgl_objPoolGet>
c0de5a4e:	2100      	movs	r1, #0
c0de5a50:	22e0      	movs	r2, #224	@ 0xe0
c0de5a52:	71c1      	strb	r1, [r0, #7]
c0de5a54:	2101      	movs	r1, #1
c0de5a56:	7102      	strb	r2, [r0, #4]
c0de5a58:	2202      	movs	r2, #2
c0de5a5a:	7181      	strb	r1, [r0, #6]
c0de5a5c:	7141      	strb	r1, [r0, #5]
c0de5a5e:	f880 2020 	strb.w	r2, [r0, #32]
c0de5a62:	f880 1021 	strb.w	r1, [r0, #33]	@ 0x21
c0de5a66:	77c1      	strb	r1, [r0, #31]
c0de5a68:	bd80      	pop	{r7, pc}

c0de5a6a <nbgl_layoutAddCenteredInfo>:
c0de5a6a:	b570      	push	{r4, r5, r6, lr}
c0de5a6c:	b08a      	sub	sp, #40	@ 0x28
c0de5a6e:	ae01      	add	r6, sp, #4
c0de5a70:	460c      	mov	r4, r1
c0de5a72:	4605      	mov	r5, r0
c0de5a74:	2124      	movs	r1, #36	@ 0x24
c0de5a76:	4630      	mov	r0, r6
c0de5a78:	f005 ffe8 	bl	c0deba4c <__aeabi_memclr>
c0de5a7c:	b33d      	cbz	r5, c0de5ace <nbgl_layoutAddCenteredInfo+0x64>
c0de5a7e:	6820      	ldr	r0, [r4, #0]
c0de5a80:	68e1      	ldr	r1, [r4, #12]
c0de5a82:	9102      	str	r1, [sp, #8]
c0de5a84:	b128      	cbz	r0, c0de5a92 <nbgl_layoutAddCenteredInfo+0x28>
c0de5a86:	7c61      	ldrb	r1, [r4, #17]
c0de5a88:	2210      	movs	r2, #16
c0de5a8a:	2903      	cmp	r1, #3
c0de5a8c:	bf08      	it	eq
c0de5a8e:	2214      	moveq	r2, #20
c0de5a90:	50b0      	str	r0, [r6, r2]
c0de5a92:	6860      	ldr	r0, [r4, #4]
c0de5a94:	b128      	cbz	r0, c0de5aa2 <nbgl_layoutAddCenteredInfo+0x38>
c0de5a96:	7c61      	ldrb	r1, [r4, #17]
c0de5a98:	2218      	movs	r2, #24
c0de5a9a:	2901      	cmp	r1, #1
c0de5a9c:	bf08      	it	eq
c0de5a9e:	2214      	moveq	r2, #20
c0de5aa0:	50b0      	str	r0, [r6, r2]
c0de5aa2:	68a0      	ldr	r0, [r4, #8]
c0de5aa4:	b128      	cbz	r0, c0de5ab2 <nbgl_layoutAddCenteredInfo+0x48>
c0de5aa6:	7c61      	ldrb	r1, [r4, #17]
c0de5aa8:	2218      	movs	r2, #24
c0de5aaa:	2902      	cmp	r1, #2
c0de5aac:	bf08      	it	eq
c0de5aae:	221c      	moveq	r2, #28
c0de5ab0:	50b0      	str	r0, [r6, r2]
c0de5ab2:	a901      	add	r1, sp, #4
c0de5ab4:	4628      	mov	r0, r5
c0de5ab6:	f000 f815 	bl	c0de5ae4 <addContentCenter>
c0de5aba:	7c21      	ldrb	r1, [r4, #16]
c0de5abc:	b151      	cbz	r1, c0de5ad4 <nbgl_layoutAddCenteredInfo+0x6a>
c0de5abe:	2100      	movs	r1, #0
c0de5ac0:	2220      	movs	r2, #32
c0de5ac2:	7601      	strb	r1, [r0, #24]
c0de5ac4:	75c2      	strb	r2, [r0, #23]
c0de5ac6:	7581      	strb	r1, [r0, #22]
c0de5ac8:	8a61      	ldrh	r1, [r4, #18]
c0de5aca:	3120      	adds	r1, #32
c0de5acc:	e003      	b.n	c0de5ad6 <nbgl_layoutAddCenteredInfo+0x6c>
c0de5ace:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5ad2:	e005      	b.n	c0de5ae0 <nbgl_layoutAddCenteredInfo+0x76>
c0de5ad4:	8a61      	ldrh	r1, [r4, #18]
c0de5ad6:	7641      	strb	r1, [r0, #25]
c0de5ad8:	0a09      	lsrs	r1, r1, #8
c0de5ada:	7681      	strb	r1, [r0, #26]
c0de5adc:	f001 fc68 	bl	c0de73b0 <OUTLINED_FUNCTION_36>
c0de5ae0:	b00a      	add	sp, #40	@ 0x28
c0de5ae2:	bd70      	pop	{r4, r5, r6, pc}

c0de5ae4 <addContentCenter>:
c0de5ae4:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5ae8:	4682      	mov	sl, r0
c0de5aea:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de5aee:	4688      	mov	r8, r1
c0de5af0:	f001 fbac 	bl	c0de724c <OUTLINED_FUNCTION_19>
c0de5af4:	2700      	movs	r7, #0
c0de5af6:	4683      	mov	fp, r0
c0de5af8:	f880 7020 	strb.w	r7, [r0, #32]
c0de5afc:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5b00:	08c1      	lsrs	r1, r0, #3
c0de5b02:	2006      	movs	r0, #6
c0de5b04:	f005 fb86 	bl	c0deb214 <nbgl_containerPoolGet>
c0de5b08:	4659      	mov	r1, fp
c0de5b0a:	0e02      	lsrs	r2, r0, #24
c0de5b0c:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de5b10:	f001 fb8b 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de5b14:	f88b 0023 	strb.w	r0, [fp, #35]	@ 0x23
c0de5b18:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de5b1c:	2800      	cmp	r0, #0
c0de5b1e:	f000 8093 	beq.w	c0de5c48 <addContentCenter+0x164>
c0de5b22:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5b26:	f001 fbd3 	bl	c0de72d0 <OUTLINED_FUNCTION_26>
c0de5b2a:	4607      	mov	r7, r0
c0de5b2c:	f001 fc5b 	bl	c0de73e6 <OUTLINED_FUNCTION_42>
c0de5b30:	bfc8      	it	gt
c0de5b32:	2000      	movgt	r0, #0
c0de5b34:	77f8      	strb	r0, [r7, #31]
c0de5b36:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de5b3a:	f005 fd47 	bl	c0deb5cc <pic>
c0de5b3e:	4639      	mov	r1, r7
c0de5b40:	0e02      	lsrs	r2, r0, #24
c0de5b42:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de5b46:	70ca      	strb	r2, [r1, #3]
c0de5b48:	0c02      	lsrs	r2, r0, #16
c0de5b4a:	708a      	strb	r2, [r1, #2]
c0de5b4c:	0a01      	lsrs	r1, r0, #8
c0de5b4e:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de5b52:	4659      	mov	r1, fp
c0de5b54:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5b58:	784e      	ldrb	r6, [r1, #1]
c0de5b5a:	788c      	ldrb	r4, [r1, #2]
c0de5b5c:	78cd      	ldrb	r5, [r1, #3]
c0de5b5e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de5b62:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de5b66:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5b6a:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de5b6e:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de5b72:	2202      	movs	r2, #2
c0de5b74:	3301      	adds	r3, #1
c0de5b76:	75ba      	strb	r2, [r7, #22]
c0de5b78:	f8b8 2020 	ldrh.w	r2, [r8, #32]
c0de5b7c:	767a      	strb	r2, [r7, #25]
c0de5b7e:	f801 3c02 	strb.w	r3, [r1, #-2]
c0de5b82:	0a14      	lsrs	r4, r2, #8
c0de5b84:	7881      	ldrb	r1, [r0, #2]
c0de5b86:	78c0      	ldrb	r0, [r0, #3]
c0de5b88:	76bc      	strb	r4, [r7, #26]
c0de5b8a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5b8e:	1881      	adds	r1, r0, r2
c0de5b90:	f898 0000 	ldrb.w	r0, [r8]
c0de5b94:	2801      	cmp	r0, #1
c0de5b96:	d158      	bne.n	c0de5c4a <addContentCenter+0x166>
c0de5b98:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5b9c:	9100      	str	r1, [sp, #0]
c0de5b9e:	f001 fb97 	bl	c0de72d0 <OUTLINED_FUNCTION_26>
c0de5ba2:	4606      	mov	r6, r0
c0de5ba4:	f001 fc1f 	bl	c0de73e6 <OUTLINED_FUNCTION_42>
c0de5ba8:	bfc8      	it	gt
c0de5baa:	2000      	movgt	r0, #0
c0de5bac:	77f0      	strb	r0, [r6, #31]
c0de5bae:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de5bb2:	6800      	ldr	r0, [r0, #0]
c0de5bb4:	6800      	ldr	r0, [r0, #0]
c0de5bb6:	f005 fd09 	bl	c0deb5cc <pic>
c0de5bba:	4631      	mov	r1, r6
c0de5bbc:	0e02      	lsrs	r2, r0, #24
c0de5bbe:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de5bc2:	70ca      	strb	r2, [r1, #3]
c0de5bc4:	0c02      	lsrs	r2, r0, #16
c0de5bc6:	0a00      	lsrs	r0, r0, #8
c0de5bc8:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de5bcc:	708a      	strb	r2, [r1, #2]
c0de5bce:	4658      	mov	r0, fp
c0de5bd0:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5bd4:	7843      	ldrb	r3, [r0, #1]
c0de5bd6:	7885      	ldrb	r5, [r0, #2]
c0de5bd8:	78c4      	ldrb	r4, [r0, #3]
c0de5bda:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de5bde:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5be2:	ea45 2304 	orr.w	r3, r5, r4, lsl #8
c0de5be6:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de5bea:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de5bee:	2102      	movs	r1, #2
c0de5bf0:	75b1      	strb	r1, [r6, #22]
c0de5bf2:	f8b8 100c 	ldrh.w	r1, [r8, #12]
c0de5bf6:	75f1      	strb	r1, [r6, #23]
c0de5bf8:	0a09      	lsrs	r1, r1, #8
c0de5bfa:	f8b8 3020 	ldrh.w	r3, [r8, #32]
c0de5bfe:	f8b8 400e 	ldrh.w	r4, [r8, #14]
c0de5c02:	7631      	strb	r1, [r6, #24]
c0de5c04:	1c51      	adds	r1, r2, #1
c0de5c06:	4423      	add	r3, r4
c0de5c08:	7673      	strb	r3, [r6, #25]
c0de5c0a:	f800 1c02 	strb.w	r1, [r0, #-2]
c0de5c0e:	0a18      	lsrs	r0, r3, #8
c0de5c10:	76b0      	strb	r0, [r6, #26]
c0de5c12:	2000      	movs	r0, #0
c0de5c14:	f88a 00af 	strb.w	r0, [sl, #175]	@ 0xaf
c0de5c18:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de5c1c:	f8ca 00a4 	str.w	r0, [sl, #164]	@ 0xa4
c0de5c20:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5c24:	f040 0104 	orr.w	r1, r0, #4
c0de5c28:	08c0      	lsrs	r0, r0, #3
c0de5c2a:	f88a 10ad 	strb.w	r1, [sl, #173]	@ 0xad
c0de5c2e:	49bb      	ldr	r1, [pc, #748]	@ (c0de5f1c <addContentCenter+0x438>)
c0de5c30:	4479      	add	r1, pc
c0de5c32:	9101      	str	r1, [sp, #4]
c0de5c34:	f8d8 1008 	ldr.w	r1, [r8, #8]
c0de5c38:	88c9      	ldrh	r1, [r1, #6]
c0de5c3a:	e9cd 1102 	strd	r1, r1, [sp, #8]
c0de5c3e:	a901      	add	r1, sp, #4
c0de5c40:	f005 fad9 	bl	c0deb1f6 <nbgl_screenUpdateTicker>
c0de5c44:	9900      	ldr	r1, [sp, #0]
c0de5c46:	e000      	b.n	c0de5c4a <addContentCenter+0x166>
c0de5c48:	2100      	movs	r1, #0
c0de5c4a:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de5c4e:	2800      	cmp	r0, #0
c0de5c50:	d05f      	beq.n	c0de5d12 <addContentCenter+0x22e>
c0de5c52:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5c56:	9100      	str	r1, [sp, #0]
c0de5c58:	f001 f9f6 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de5c5c:	4606      	mov	r6, r0
c0de5c5e:	f001 fb1d 	bl	c0de729c <OUTLINED_FUNCTION_24>
c0de5c62:	bfc8      	it	gt
c0de5c64:	2100      	movgt	r1, #0
c0de5c66:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de5c6a:	77f1      	strb	r1, [r6, #31]
c0de5c6c:	f005 fcae 	bl	c0deb5cc <pic>
c0de5c70:	4601      	mov	r1, r0
c0de5c72:	2001      	movs	r0, #1
c0de5c74:	2301      	movs	r3, #1
c0de5c76:	7170      	strb	r0, [r6, #5]
c0de5c78:	20a0      	movs	r0, #160	@ 0xa0
c0de5c7a:	0e0a      	lsrs	r2, r1, #24
c0de5c7c:	7130      	strb	r0, [r6, #4]
c0de5c7e:	200d      	movs	r0, #13
c0de5c80:	f001 fbfb 	bl	c0de747a <OUTLINED_FUNCTION_52>
c0de5c84:	4630      	mov	r0, r6
c0de5c86:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de5c8a:	70c2      	strb	r2, [r0, #3]
c0de5c8c:	0c0a      	lsrs	r2, r1, #16
c0de5c8e:	7082      	strb	r2, [r0, #2]
c0de5c90:	0a08      	lsrs	r0, r1, #8
c0de5c92:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de5c96:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de5c9a:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de5c9e:	f040 0001 	orr.w	r0, r0, #1
c0de5ca2:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de5ca6:	f001 fc23 	bl	c0de74f0 <OUTLINED_FUNCTION_62>
c0de5caa:	71b0      	strb	r0, [r6, #6]
c0de5cac:	0a01      	lsrs	r1, r0, #8
c0de5cae:	f89b c020 	ldrb.w	ip, [fp, #32]
c0de5cb2:	71f1      	strb	r1, [r6, #7]
c0de5cb4:	f1bc 0f00 	cmp.w	ip, #0
c0de5cb8:	d010      	beq.n	c0de5cdc <addContentCenter+0x1f8>
c0de5cba:	4633      	mov	r3, r6
c0de5cbc:	0e3a      	lsrs	r2, r7, #24
c0de5cbe:	f803 7f12 	strb.w	r7, [r3, #18]!
c0de5cc2:	70da      	strb	r2, [r3, #3]
c0de5cc4:	0c3a      	lsrs	r2, r7, #16
c0de5cc6:	709a      	strb	r2, [r3, #2]
c0de5cc8:	0a3a      	lsrs	r2, r7, #8
c0de5cca:	705a      	strb	r2, [r3, #1]
c0de5ccc:	f8b8 2020 	ldrh.w	r2, [r8, #32]
c0de5cd0:	3218      	adds	r2, #24
c0de5cd2:	0a14      	lsrs	r4, r2, #8
c0de5cd4:	71da      	strb	r2, [r3, #7]
c0de5cd6:	721c      	strb	r4, [r3, #8]
c0de5cd8:	2308      	movs	r3, #8
c0de5cda:	e004      	b.n	c0de5ce6 <addContentCenter+0x202>
c0de5cdc:	7e72      	ldrb	r2, [r6, #25]
c0de5cde:	7eb3      	ldrb	r3, [r6, #26]
c0de5ce0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5ce4:	2302      	movs	r3, #2
c0de5ce6:	75b3      	strb	r3, [r6, #22]
c0de5ce8:	465b      	mov	r3, fp
c0de5cea:	f813 4f22 	ldrb.w	r4, [r3, #34]!
c0de5cee:	785d      	ldrb	r5, [r3, #1]
c0de5cf0:	789f      	ldrb	r7, [r3, #2]
c0de5cf2:	78d9      	ldrb	r1, [r3, #3]
c0de5cf4:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5cf8:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de5cfc:	ea44 4101 	orr.w	r1, r4, r1, lsl #16
c0de5d00:	f841 602c 	str.w	r6, [r1, ip, lsl #2]
c0de5d04:	f10c 0101 	add.w	r1, ip, #1
c0de5d08:	f803 1c02 	strb.w	r1, [r3, #-2]
c0de5d0c:	9900      	ldr	r1, [sp, #0]
c0de5d0e:	4408      	add	r0, r1
c0de5d10:	1881      	adds	r1, r0, r2
c0de5d12:	f8d8 0014 	ldr.w	r0, [r8, #20]
c0de5d16:	b3e8      	cbz	r0, c0de5d94 <addContentCenter+0x2b0>
c0de5d18:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5d1c:	9100      	str	r1, [sp, #0]
c0de5d1e:	f001 f993 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de5d22:	4607      	mov	r7, r0
c0de5d24:	f001 faba 	bl	c0de729c <OUTLINED_FUNCTION_24>
c0de5d28:	bfc8      	it	gt
c0de5d2a:	2100      	movgt	r1, #0
c0de5d2c:	f8d8 0014 	ldr.w	r0, [r8, #20]
c0de5d30:	77f9      	strb	r1, [r7, #31]
c0de5d32:	f005 fc4b 	bl	c0deb5cc <pic>
c0de5d36:	4601      	mov	r1, r0
c0de5d38:	2001      	movs	r0, #1
c0de5d3a:	f001 fbaf 	bl	c0de749c <OUTLINED_FUNCTION_55>
c0de5d3e:	200c      	movs	r0, #12
c0de5d40:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5d44:	2005      	movs	r0, #5
c0de5d46:	f001 fa85 	bl	c0de7254 <OUTLINED_FUNCTION_20>
c0de5d4a:	200c      	movs	r0, #12
c0de5d4c:	f005 fa76 	bl	c0deb23c <nbgl_getTextHeightInWidth>
c0de5d50:	f001 fb38 	bl	c0de73c4 <OUTLINED_FUNCTION_39>
c0de5d54:	d01a      	beq.n	c0de5d8c <addContentCenter+0x2a8>
c0de5d56:	f001 f9ff 	bl	c0de7158 <OUTLINED_FUNCTION_10>
c0de5d5a:	70ae      	strb	r6, [r5, #2]
c0de5d5c:	2618      	movs	r6, #24
c0de5d5e:	706b      	strb	r3, [r5, #1]
c0de5d60:	2300      	movs	r3, #0
c0de5d62:	71ee      	strb	r6, [r5, #7]
c0de5d64:	2608      	movs	r6, #8
c0de5d66:	722b      	strb	r3, [r5, #8]
c0de5d68:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de5d6c:	712e      	strb	r6, [r5, #4]
c0de5d6e:	460e      	mov	r6, r1
c0de5d70:	7ee4      	ldrb	r4, [r4, #27]
c0de5d72:	2c02      	cmp	r4, #2
c0de5d74:	bf1d      	ittte	ne
c0de5d76:	76bb      	strbne	r3, [r7, #26]
c0de5d78:	2310      	movne	r3, #16
c0de5d7a:	767b      	strbne	r3, [r7, #25]
c0de5d7c:	f8b8 3020 	ldrheq.w	r3, [r8, #32]
c0de5d80:	bf01      	itttt	eq
c0de5d82:	3318      	addeq	r3, #24
c0de5d84:	767b      	strbeq	r3, [r7, #25]
c0de5d86:	0a1c      	lsreq	r4, r3, #8
c0de5d88:	76bc      	strbeq	r4, [r7, #26]
c0de5d8a:	e001      	b.n	c0de5d90 <addContentCenter+0x2ac>
c0de5d8c:	f001 f974 	bl	c0de7078 <OUTLINED_FUNCTION_3>
c0de5d90:	f001 fac9 	bl	c0de7326 <OUTLINED_FUNCTION_30>
c0de5d94:	f8d8 0018 	ldr.w	r0, [r8, #24]
c0de5d98:	2800      	cmp	r0, #0
c0de5d9a:	d04f      	beq.n	c0de5e3c <addContentCenter+0x358>
c0de5d9c:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5da0:	9100      	str	r1, [sp, #0]
c0de5da2:	f001 f951 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de5da6:	4607      	mov	r7, r0
c0de5da8:	f001 fa78 	bl	c0de729c <OUTLINED_FUNCTION_24>
c0de5dac:	bfc8      	it	gt
c0de5dae:	2100      	movgt	r1, #0
c0de5db0:	f8d8 0018 	ldr.w	r0, [r8, #24]
c0de5db4:	77f9      	strb	r1, [r7, #31]
c0de5db6:	f005 fc09 	bl	c0deb5cc <pic>
c0de5dba:	4601      	mov	r1, r0
c0de5dbc:	2001      	movs	r0, #1
c0de5dbe:	f001 fb6d 	bl	c0de749c <OUTLINED_FUNCTION_55>
c0de5dc2:	200b      	movs	r0, #11
c0de5dc4:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5dc8:	2005      	movs	r0, #5
c0de5dca:	f887 0020 	strb.w	r0, [r7, #32]
c0de5dce:	f001 f93f 	bl	c0de7050 <OUTLINED_FUNCTION_2>
c0de5dd2:	f001 faf7 	bl	c0de73c4 <OUTLINED_FUNCTION_39>
c0de5dd6:	d02d      	beq.n	c0de5e34 <addContentCenter+0x350>
c0de5dd8:	465a      	mov	r2, fp
c0de5dda:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de5dde:	7854      	ldrb	r4, [r2, #1]
c0de5de0:	7895      	ldrb	r5, [r2, #2]
c0de5de2:	78d2      	ldrb	r2, [r2, #3]
c0de5de4:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de5de8:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5dec:	463d      	mov	r5, r7
c0de5dee:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
c0de5df2:	eb02 0381 	add.w	r3, r2, r1, lsl #2
c0de5df6:	f853 4c04 	ldr.w	r4, [r3, #-4]
c0de5dfa:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de5dfe:	0e26      	lsrs	r6, r4, #24
c0de5e00:	70ee      	strb	r6, [r5, #3]
c0de5e02:	0c26      	lsrs	r6, r4, #16
c0de5e04:	0a24      	lsrs	r4, r4, #8
c0de5e06:	70ae      	strb	r6, [r5, #2]
c0de5e08:	706c      	strb	r4, [r5, #1]
c0de5e0a:	2408      	movs	r4, #8
c0de5e0c:	460e      	mov	r6, r1
c0de5e0e:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de5e12:	712c      	strb	r4, [r5, #4]
c0de5e14:	7edb      	ldrb	r3, [r3, #27]
c0de5e16:	2b04      	cmp	r3, #4
c0de5e18:	bf01      	itttt	eq
c0de5e1a:	2300      	moveq	r3, #0
c0de5e1c:	76bb      	strbeq	r3, [r7, #26]
c0de5e1e:	2310      	moveq	r3, #16
c0de5e20:	767b      	strbeq	r3, [r7, #25]
c0de5e22:	bf1f      	itttt	ne
c0de5e24:	f8b8 3020 	ldrhne.w	r3, [r8, #32]
c0de5e28:	3318      	addne	r3, #24
c0de5e2a:	767b      	strbne	r3, [r7, #25]
c0de5e2c:	0a1c      	lsrne	r4, r3, #8
c0de5e2e:	bf18      	it	ne
c0de5e30:	76bc      	strbne	r4, [r7, #26]
c0de5e32:	e001      	b.n	c0de5e38 <addContentCenter+0x354>
c0de5e34:	f001 f920 	bl	c0de7078 <OUTLINED_FUNCTION_3>
c0de5e38:	f001 fa75 	bl	c0de7326 <OUTLINED_FUNCTION_30>
c0de5e3c:	f8d8 001c 	ldr.w	r0, [r8, #28]
c0de5e40:	b3c0      	cbz	r0, c0de5eb4 <addContentCenter+0x3d0>
c0de5e42:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5e46:	9100      	str	r1, [sp, #0]
c0de5e48:	f001 f8fe 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de5e4c:	2401      	movs	r4, #1
c0de5e4e:	4607      	mov	r7, r0
c0de5e50:	77c4      	strb	r4, [r0, #31]
c0de5e52:	f8d8 001c 	ldr.w	r0, [r8, #28]
c0de5e56:	f005 fbb9 	bl	c0deb5cc <pic>
c0de5e5a:	4601      	mov	r1, r0
c0de5e5c:	20a0      	movs	r0, #160	@ 0xa0
c0de5e5e:	2301      	movs	r3, #1
c0de5e60:	717c      	strb	r4, [r7, #5]
c0de5e62:	7138      	strb	r0, [r7, #4]
c0de5e64:	200b      	movs	r0, #11
c0de5e66:	0e0a      	lsrs	r2, r1, #24
c0de5e68:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5e6c:	2005      	movs	r0, #5
c0de5e6e:	f887 0020 	strb.w	r0, [r7, #32]
c0de5e72:	f001 f8ed 	bl	c0de7050 <OUTLINED_FUNCTION_2>
c0de5e76:	3010      	adds	r0, #16
c0de5e78:	f001 faa4 	bl	c0de73c4 <OUTLINED_FUNCTION_39>
c0de5e7c:	d016      	beq.n	c0de5eac <addContentCenter+0x3c8>
c0de5e7e:	f001 f96b 	bl	c0de7158 <OUTLINED_FUNCTION_10>
c0de5e82:	706b      	strb	r3, [r5, #1]
c0de5e84:	2300      	movs	r3, #0
c0de5e86:	70ae      	strb	r6, [r5, #2]
c0de5e88:	2608      	movs	r6, #8
c0de5e8a:	722b      	strb	r3, [r5, #8]
c0de5e8c:	2310      	movs	r3, #16
c0de5e8e:	712e      	strb	r6, [r5, #4]
c0de5e90:	71eb      	strb	r3, [r5, #7]
c0de5e92:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de5e96:	7ee4      	ldrb	r4, [r4, #27]
c0de5e98:	2c02      	cmp	r4, #2
c0de5e9a:	d105      	bne.n	c0de5ea8 <addContentCenter+0x3c4>
c0de5e9c:	f8b8 3020 	ldrh.w	r3, [r8, #32]
c0de5ea0:	3310      	adds	r3, #16
c0de5ea2:	0a1c      	lsrs	r4, r3, #8
c0de5ea4:	767b      	strb	r3, [r7, #25]
c0de5ea6:	76bc      	strb	r4, [r7, #26]
c0de5ea8:	460e      	mov	r6, r1
c0de5eaa:	e001      	b.n	c0de5eb0 <addContentCenter+0x3cc>
c0de5eac:	f001 f8e4 	bl	c0de7078 <OUTLINED_FUNCTION_3>
c0de5eb0:	f001 fa39 	bl	c0de7326 <OUTLINED_FUNCTION_30>
c0de5eb4:	2001      	movs	r0, #1
c0de5eb6:	f88b 1006 	strb.w	r1, [fp, #6]
c0de5eba:	f88b 0005 	strb.w	r0, [fp, #5]
c0de5ebe:	20a0      	movs	r0, #160	@ 0xa0
c0de5ec0:	f88b 0004 	strb.w	r0, [fp, #4]
c0de5ec4:	2005      	movs	r0, #5
c0de5ec6:	f88b 0016 	strb.w	r0, [fp, #22]
c0de5eca:	2000      	movs	r0, #0
c0de5ecc:	f88b 001f 	strb.w	r0, [fp, #31]
c0de5ed0:	0a08      	lsrs	r0, r1, #8
c0de5ed2:	f88b 0007 	strb.w	r0, [fp, #7]
c0de5ed6:	f898 0022 	ldrb.w	r0, [r8, #34]	@ 0x22
c0de5eda:	b130      	cbz	r0, c0de5eea <addContentCenter+0x406>
c0de5edc:	f101 0028 	add.w	r0, r1, #40	@ 0x28
c0de5ee0:	f88b 0006 	strb.w	r0, [fp, #6]
c0de5ee4:	0a00      	lsrs	r0, r0, #8
c0de5ee6:	f88b 0007 	strb.w	r0, [fp, #7]
c0de5eea:	f8da 00a0 	ldr.w	r0, [sl, #160]	@ 0xa0
c0de5eee:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5ef2:	7843      	ldrb	r3, [r0, #1]
c0de5ef4:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de5ef8:	7884      	ldrb	r4, [r0, #2]
c0de5efa:	78c0      	ldrb	r0, [r0, #3]
c0de5efc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5f00:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de5f04:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de5f08:	f840 b022 	str.w	fp, [r0, r2, lsl #2]
c0de5f0c:	f8da 00a0 	ldr.w	r0, [sl, #160]	@ 0xa0
c0de5f10:	f001 f894 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de5f14:	4658      	mov	r0, fp
c0de5f16:	b004      	add	sp, #16
c0de5f18:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5f1c:	00001305 	.word	0x00001305

c0de5f20 <nbgl_layoutAddContentCenter>:
c0de5f20:	b128      	cbz	r0, c0de5f2e <nbgl_layoutAddContentCenter+0xe>
c0de5f22:	b580      	push	{r7, lr}
c0de5f24:	f7ff fdde 	bl	c0de5ae4 <addContentCenter>
c0de5f28:	f001 fa42 	bl	c0de73b0 <OUTLINED_FUNCTION_36>
c0de5f2c:	bd80      	pop	{r7, pc}
c0de5f2e:	f001 ba50 	b.w	c0de73d2 <OUTLINED_FUNCTION_40>

c0de5f32 <nbgl_layoutAddQRCode>:
c0de5f32:	2800      	cmp	r0, #0
c0de5f34:	f000 810a 	beq.w	c0de614c <nbgl_layoutAddQRCode+0x21a>
c0de5f38:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5f3c:	4680      	mov	r8, r0
c0de5f3e:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de5f42:	460e      	mov	r6, r1
c0de5f44:	f001 f982 	bl	c0de724c <OUTLINED_FUNCTION_19>
c0de5f48:	4682      	mov	sl, r0
c0de5f4a:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de5f4e:	08c1      	lsrs	r1, r0, #3
c0de5f50:	2003      	movs	r0, #3
c0de5f52:	f005 f95f 	bl	c0deb214 <nbgl_containerPoolGet>
c0de5f56:	4655      	mov	r5, sl
c0de5f58:	0e01      	lsrs	r1, r0, #24
c0de5f5a:	2400      	movs	r4, #0
c0de5f5c:	f805 0f22 	strb.w	r0, [r5, #34]!
c0de5f60:	f88a 4020 	strb.w	r4, [sl, #32]
c0de5f64:	f001 fae5 	bl	c0de7532 <OUTLINED_FUNCTION_69>
c0de5f68:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de5f6c:	08c1      	lsrs	r1, r0, #3
c0de5f6e:	200a      	movs	r0, #10
c0de5f70:	f005 f94b 	bl	c0deb20a <nbgl_objPoolGet>
c0de5f74:	4683      	mov	fp, r0
c0de5f76:	6830      	ldr	r0, [r6, #0]
c0de5f78:	f005 fb28 	bl	c0deb5cc <pic>
c0de5f7c:	f005 fdb8 	bl	c0debaf0 <strlen>
c0de5f80:	283e      	cmp	r0, #62	@ 0x3e
c0de5f82:	f04f 0000 	mov.w	r0, #0
c0de5f86:	465f      	mov	r7, fp
c0de5f88:	bf88      	it	hi
c0de5f8a:	2001      	movhi	r0, #1
c0de5f8c:	f88b 0020 	strb.w	r0, [fp, #32]
c0de5f90:	f88b 401f 	strb.w	r4, [fp, #31]
c0de5f94:	f44f 7084 	mov.w	r0, #264	@ 0x108
c0de5f98:	bf88      	it	hi
c0de5f9a:	20e4      	movhi	r0, #228	@ 0xe4
c0de5f9c:	f88b 0004 	strb.w	r0, [fp, #4]
c0de5fa0:	f807 0f06 	strb.w	r0, [r7, #6]!
c0de5fa4:	0a00      	lsrs	r0, r0, #8
c0de5fa6:	7078      	strb	r0, [r7, #1]
c0de5fa8:	f88b 0005 	strb.w	r0, [fp, #5]
c0de5fac:	6830      	ldr	r0, [r6, #0]
c0de5fae:	f005 fb0d 	bl	c0deb5cc <pic>
c0de5fb2:	4659      	mov	r1, fp
c0de5fb4:	0e02      	lsrs	r2, r0, #24
c0de5fb6:	f88b 4009 	strb.w	r4, [fp, #9]
c0de5fba:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de5fbe:	f001 f934 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de5fc2:	f88b 0022 	strb.w	r0, [fp, #34]	@ 0x22
c0de5fc6:	7828      	ldrb	r0, [r5, #0]
c0de5fc8:	78a9      	ldrb	r1, [r5, #2]
c0de5fca:	78ea      	ldrb	r2, [r5, #3]
c0de5fcc:	f89a 5023 	ldrb.w	r5, [sl, #35]	@ 0x23
c0de5fd0:	f89a 3020 	ldrb.w	r3, [sl, #32]
c0de5fd4:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de5fd8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5fdc:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de5fe0:	7879      	ldrb	r1, [r7, #1]
c0de5fe2:	f840 b023 	str.w	fp, [r0, r3, lsl #2]
c0de5fe6:	2002      	movs	r0, #2
c0de5fe8:	f88b 0016 	strb.w	r0, [fp, #22]
c0de5fec:	1c58      	adds	r0, r3, #1
c0de5fee:	f88a 0020 	strb.w	r0, [sl, #32]
c0de5ff2:	7838      	ldrb	r0, [r7, #0]
c0de5ff4:	ea40 2701 	orr.w	r7, r0, r1, lsl #8
c0de5ff8:	6870      	ldr	r0, [r6, #4]
c0de5ffa:	2800      	cmp	r0, #0
c0de5ffc:	d057      	beq.n	c0de60ae <nbgl_layoutAddQRCode+0x17c>
c0de5ffe:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de6002:	f001 f821 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de6006:	4605      	mov	r5, r0
c0de6008:	77c4      	strb	r4, [r0, #31]
c0de600a:	6870      	ldr	r0, [r6, #4]
c0de600c:	f005 fade 	bl	c0deb5cc <pic>
c0de6010:	4601      	mov	r1, r0
c0de6012:	2001      	movs	r0, #1
c0de6014:	7168      	strb	r0, [r5, #5]
c0de6016:	20a0      	movs	r0, #160	@ 0xa0
c0de6018:	0e0a      	lsrs	r2, r1, #24
c0de601a:	7128      	strb	r0, [r5, #4]
c0de601c:	2005      	movs	r0, #5
c0de601e:	f885 0020 	strb.w	r0, [r5, #32]
c0de6022:	4628      	mov	r0, r5
c0de6024:	f001 f8b0 	bl	c0de7188 <OUTLINED_FUNCTION_11>
c0de6028:	f885 0027 	strb.w	r0, [r5, #39]	@ 0x27
c0de602c:	f895 0024 	ldrb.w	r0, [r5, #36]	@ 0x24
c0de6030:	7bf2      	ldrb	r2, [r6, #15]
c0de6032:	f040 0001 	orr.w	r0, r0, #1
c0de6036:	f885 0024 	strb.w	r0, [r5, #36]	@ 0x24
c0de603a:	200d      	movs	r0, #13
c0de603c:	2a00      	cmp	r2, #0
c0de603e:	bf08      	it	eq
c0de6040:	200b      	moveq	r0, #11
c0de6042:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de6046:	f885 0022 	strb.w	r0, [r5, #34]	@ 0x22
c0de604a:	2301      	movs	r3, #1
c0de604c:	f005 f8f6 	bl	c0deb23c <nbgl_getTextHeightInWidth>
c0de6050:	4651      	mov	r1, sl
c0de6052:	46be      	mov	lr, r7
c0de6054:	f811 cf22 	ldrb.w	ip, [r1, #34]!
c0de6058:	784f      	ldrb	r7, [r1, #1]
c0de605a:	788c      	ldrb	r4, [r1, #2]
c0de605c:	78ca      	ldrb	r2, [r1, #3]
c0de605e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de6062:	ea4c 2707 	orr.w	r7, ip, r7, lsl #8
c0de6066:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de606a:	46b4      	mov	ip, r6
c0de606c:	ea47 4202 	orr.w	r2, r7, r2, lsl #16
c0de6070:	462f      	mov	r7, r5
c0de6072:	eb02 0483 	add.w	r4, r2, r3, lsl #2
c0de6076:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de607a:	f807 4f12 	strb.w	r4, [r7, #18]!
c0de607e:	0e26      	lsrs	r6, r4, #24
c0de6080:	70fe      	strb	r6, [r7, #3]
c0de6082:	0c26      	lsrs	r6, r4, #16
c0de6084:	0a24      	lsrs	r4, r4, #8
c0de6086:	70be      	strb	r6, [r7, #2]
c0de6088:	74ec      	strb	r4, [r5, #19]
c0de608a:	f842 5023 	str.w	r5, [r2, r3, lsl #2]
c0de608e:	2200      	movs	r2, #0
c0de6090:	71a8      	strb	r0, [r5, #6]
c0de6092:	4666      	mov	r6, ip
c0de6094:	76aa      	strb	r2, [r5, #26]
c0de6096:	2218      	movs	r2, #24
c0de6098:	766a      	strb	r2, [r5, #25]
c0de609a:	2208      	movs	r2, #8
c0de609c:	75aa      	strb	r2, [r5, #22]
c0de609e:	0a02      	lsrs	r2, r0, #8
c0de60a0:	4470      	add	r0, lr
c0de60a2:	71ea      	strb	r2, [r5, #7]
c0de60a4:	1c5a      	adds	r2, r3, #1
c0de60a6:	f100 0718 	add.w	r7, r0, #24
c0de60aa:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de60ae:	68b0      	ldr	r0, [r6, #8]
c0de60b0:	2800      	cmp	r0, #0
c0de60b2:	d04d      	beq.n	c0de6150 <nbgl_layoutAddQRCode+0x21e>
c0de60b4:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de60b8:	f000 ffc6 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de60bc:	2401      	movs	r4, #1
c0de60be:	4605      	mov	r5, r0
c0de60c0:	77c4      	strb	r4, [r0, #31]
c0de60c2:	68b0      	ldr	r0, [r6, #8]
c0de60c4:	f005 fa82 	bl	c0deb5cc <pic>
c0de60c8:	4601      	mov	r1, r0
c0de60ca:	20a0      	movs	r0, #160	@ 0xa0
c0de60cc:	2301      	movs	r3, #1
c0de60ce:	716c      	strb	r4, [r5, #5]
c0de60d0:	7128      	strb	r0, [r5, #4]
c0de60d2:	200b      	movs	r0, #11
c0de60d4:	0e0a      	lsrs	r2, r1, #24
c0de60d6:	f885 0022 	strb.w	r0, [r5, #34]	@ 0x22
c0de60da:	2005      	movs	r0, #5
c0de60dc:	f001 f816 	bl	c0de710c <OUTLINED_FUNCTION_7>
c0de60e0:	4651      	mov	r1, sl
c0de60e2:	9701      	str	r7, [sp, #4]
c0de60e4:	46b6      	mov	lr, r6
c0de60e6:	6876      	ldr	r6, [r6, #4]
c0de60e8:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de60ec:	784c      	ldrb	r4, [r1, #1]
c0de60ee:	f891 c002 	ldrb.w	ip, [r1, #2]
c0de60f2:	78cf      	ldrb	r7, [r1, #3]
c0de60f4:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de60f8:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de60fc:	ea4c 2407 	orr.w	r4, ip, r7, lsl #8
c0de6100:	2700      	movs	r7, #0
c0de6102:	ea43 4c04 	orr.w	ip, r3, r4, lsl #16
c0de6106:	eb0c 0482 	add.w	r4, ip, r2, lsl #2
c0de610a:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de610e:	76af      	strb	r7, [r5, #26]
c0de6110:	271c      	movs	r7, #28
c0de6112:	2e00      	cmp	r6, #0
c0de6114:	462e      	mov	r6, r5
c0de6116:	bf08      	it	eq
c0de6118:	2720      	moveq	r7, #32
c0de611a:	766f      	strb	r7, [r5, #25]
c0de611c:	f806 4f12 	strb.w	r4, [r6, #18]!
c0de6120:	0e23      	lsrs	r3, r4, #24
c0de6122:	70f3      	strb	r3, [r6, #3]
c0de6124:	0c23      	lsrs	r3, r4, #16
c0de6126:	70b3      	strb	r3, [r6, #2]
c0de6128:	0a23      	lsrs	r3, r4, #8
c0de612a:	74eb      	strb	r3, [r5, #19]
c0de612c:	f84c 5022 	str.w	r5, [ip, r2, lsl #2]
c0de6130:	3201      	adds	r2, #1
c0de6132:	71a8      	strb	r0, [r5, #6]
c0de6134:	2308      	movs	r3, #8
c0de6136:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de613a:	9901      	ldr	r1, [sp, #4]
c0de613c:	75ab      	strb	r3, [r5, #22]
c0de613e:	0a03      	lsrs	r3, r0, #8
c0de6140:	71eb      	strb	r3, [r5, #7]
c0de6142:	4408      	add	r0, r1
c0de6144:	4438      	add	r0, r7
c0de6146:	f100 0708 	add.w	r7, r0, #8
c0de614a:	e002      	b.n	c0de6152 <nbgl_layoutAddQRCode+0x220>
c0de614c:	f001 b941 	b.w	c0de73d2 <OUTLINED_FUNCTION_40>
c0de6150:	46b6      	mov	lr, r6
c0de6152:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de6156:	b2b9      	uxth	r1, r7
c0de6158:	7982      	ldrb	r2, [r0, #6]
c0de615a:	79c3      	ldrb	r3, [r0, #7]
c0de615c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6160:	3a10      	subs	r2, #16
c0de6162:	428a      	cmp	r2, r1
c0de6164:	dd01      	ble.n	c0de616a <nbgl_layoutAddQRCode+0x238>
c0de6166:	4675      	mov	r5, lr
c0de6168:	e011      	b.n	c0de618e <nbgl_layoutAddQRCode+0x25c>
c0de616a:	f89b 1020 	ldrb.w	r1, [fp, #32]
c0de616e:	4675      	mov	r5, lr
c0de6170:	b969      	cbnz	r1, c0de618e <nbgl_layoutAddQRCode+0x25c>
c0de6172:	2100      	movs	r1, #0
c0de6174:	2284      	movs	r2, #132	@ 0x84
c0de6176:	3f84      	subs	r7, #132	@ 0x84
c0de6178:	f88b 1007 	strb.w	r1, [fp, #7]
c0de617c:	f88b 1005 	strb.w	r1, [fp, #5]
c0de6180:	2102      	movs	r1, #2
c0de6182:	f88b 2006 	strb.w	r2, [fp, #6]
c0de6186:	f88b 2004 	strb.w	r2, [fp, #4]
c0de618a:	f88b 1020 	strb.w	r1, [fp, #32]
c0de618e:	2100      	movs	r1, #0
c0de6190:	f88a 7006 	strb.w	r7, [sl, #6]
c0de6194:	f88a 101f 	strb.w	r1, [sl, #31]
c0de6198:	0a39      	lsrs	r1, r7, #8
c0de619a:	f88a 1007 	strb.w	r1, [sl, #7]
c0de619e:	7ba9      	ldrb	r1, [r5, #14]
c0de61a0:	b109      	cbz	r1, c0de61a6 <nbgl_layoutAddQRCode+0x274>
c0de61a2:	2005      	movs	r0, #5
c0de61a4:	e00f      	b.n	c0de61c6 <nbgl_layoutAddQRCode+0x294>
c0de61a6:	f001 f8ea 	bl	c0de737e <OUTLINED_FUNCTION_34>
c0de61aa:	4651      	mov	r1, sl
c0de61ac:	eb00 0082 	add.w	r0, r0, r2, lsl #2
c0de61b0:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de61b4:	f801 0f12 	strb.w	r0, [r1, #18]!
c0de61b8:	0e02      	lsrs	r2, r0, #24
c0de61ba:	70ca      	strb	r2, [r1, #3]
c0de61bc:	0c02      	lsrs	r2, r0, #16
c0de61be:	0a00      	lsrs	r0, r0, #8
c0de61c0:	7048      	strb	r0, [r1, #1]
c0de61c2:	2008      	movs	r0, #8
c0de61c4:	708a      	strb	r2, [r1, #2]
c0de61c6:	f88a 0016 	strb.w	r0, [sl, #22]
c0de61ca:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de61ce:	f001 f8d6 	bl	c0de737e <OUTLINED_FUNCTION_34>
c0de61d2:	f840 a022 	str.w	sl, [r0, r2, lsl #2]
c0de61d6:	2001      	movs	r0, #1
c0de61d8:	f88a 0005 	strb.w	r0, [sl, #5]
c0de61dc:	20a0      	movs	r0, #160	@ 0xa0
c0de61de:	f88a 0004 	strb.w	r0, [sl, #4]
c0de61e2:	89a8      	ldrh	r0, [r5, #12]
c0de61e4:	f88a 0019 	strb.w	r0, [sl, #25]
c0de61e8:	0a00      	lsrs	r0, r0, #8
c0de61ea:	f88a 001a 	strb.w	r0, [sl, #26]
c0de61ee:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de61f2:	f000 ff23 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de61f6:	b2b8      	uxth	r0, r7
c0de61f8:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de61fc <nbgl_layoutAddChoiceButtons>:
c0de61fc:	b510      	push	{r4, lr}
c0de61fe:	b086      	sub	sp, #24
c0de6200:	2206      	movs	r2, #6
c0de6202:	f10d 0c04 	add.w	ip, sp, #4
c0de6206:	f8ad 2000 	strh.w	r2, [sp]
c0de620a:	e891 001c 	ldmia.w	r1, {r2, r3, r4}
c0de620e:	e8ac 001c 	stmia.w	ip!, {r2, r3, r4}
c0de6212:	898a      	ldrh	r2, [r1, #12]
c0de6214:	7b89      	ldrb	r1, [r1, #14]
c0de6216:	f88d 1012 	strb.w	r1, [sp, #18]
c0de621a:	4669      	mov	r1, sp
c0de621c:	f8ad 2010 	strh.w	r2, [sp, #16]
c0de6220:	f7fe fba6 	bl	c0de4970 <nbgl_layoutAddExtendedFooter>
c0de6224:	b006      	add	sp, #24
c0de6226:	bd10      	pop	{r4, pc}

c0de6228 <nbgl_layoutAddHorizontalButtons>:
c0de6228:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de622a:	2202      	movs	r2, #2
c0de622c:	f88d 2004 	strb.w	r2, [sp, #4]
c0de6230:	e9d1 2300 	ldrd	r2, r3, [r1]
c0de6234:	e9cd 2302 	strd	r2, r3, [sp, #8]
c0de6238:	890a      	ldrh	r2, [r1, #8]
c0de623a:	7a89      	ldrb	r1, [r1, #10]
c0de623c:	f8ad 2010 	strh.w	r2, [sp, #16]
c0de6240:	f88d 1012 	strb.w	r1, [sp, #18]
c0de6244:	a901      	add	r1, sp, #4
c0de6246:	f7fd ffff 	bl	c0de4248 <nbgl_layoutAddUpFooter>
c0de624a:	b006      	add	sp, #24
c0de624c:	bd80      	pop	{r7, pc}
	...

c0de6250 <nbgl_layoutAddTagValueList>:
c0de6250:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6254:	b088      	sub	sp, #32
c0de6256:	2800      	cmp	r0, #0
c0de6258:	9007      	str	r0, [sp, #28]
c0de625a:	f000 819f 	beq.w	c0de659c <nbgl_layoutAddTagValueList+0x34c>
c0de625e:	48d2      	ldr	r0, [pc, #840]	@ (c0de65a8 <nbgl_layoutAddTagValueList+0x358>)
c0de6260:	4688      	mov	r8, r1
c0de6262:	2100      	movs	r1, #0
c0de6264:	2700      	movs	r7, #0
c0de6266:	f8cd 8000 	str.w	r8, [sp]
c0de626a:	4478      	add	r0, pc
c0de626c:	9001      	str	r0, [sp, #4]
c0de626e:	f898 0008 	ldrb.w	r0, [r8, #8]
c0de6272:	4287      	cmp	r7, r0
c0de6274:	f080 8190 	bcs.w	c0de6598 <nbgl_layoutAddTagValueList+0x348>
c0de6278:	f8d8 0000 	ldr.w	r0, [r8]
c0de627c:	e9cd 7104 	strd	r7, r1, [sp, #16]
c0de6280:	b110      	cbz	r0, c0de6288 <nbgl_layoutAddTagValueList+0x38>
c0de6282:	eb00 0a01 	add.w	sl, r0, r1
c0de6286:	e007      	b.n	c0de6298 <nbgl_layoutAddTagValueList+0x48>
c0de6288:	f898 0009 	ldrb.w	r0, [r8, #9]
c0de628c:	f8d8 1004 	ldr.w	r1, [r8, #4]
c0de6290:	4438      	add	r0, r7
c0de6292:	b2c0      	uxtb	r0, r0
c0de6294:	4788      	blx	r1
c0de6296:	4682      	mov	sl, r0
c0de6298:	9f07      	ldr	r7, [sp, #28]
c0de629a:	9c01      	ldr	r4, [sp, #4]
c0de629c:	f897 00ad 	ldrb.w	r0, [r7, #173]	@ 0xad
c0de62a0:	08c1      	lsrs	r1, r0, #3
c0de62a2:	2001      	movs	r0, #1
c0de62a4:	47a0      	blx	r4
c0de62a6:	4683      	mov	fp, r0
c0de62a8:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de62ac:	2800      	cmp	r0, #0
c0de62ae:	f04f 0003 	mov.w	r0, #3
c0de62b2:	bf08      	it	eq
c0de62b4:	2002      	moveq	r0, #2
c0de62b6:	f897 10ad 	ldrb.w	r1, [r7, #173]	@ 0xad
c0de62ba:	08c9      	lsrs	r1, r1, #3
c0de62bc:	f004 ffaa 	bl	c0deb214 <nbgl_containerPoolGet>
c0de62c0:	465e      	mov	r6, fp
c0de62c2:	0e01      	lsrs	r1, r0, #24
c0de62c4:	f806 0f22 	strb.w	r0, [r6, #34]!
c0de62c8:	f001 f94d 	bl	c0de7566 <OUTLINED_FUNCTION_73>
c0de62cc:	f001 f92c 	bl	c0de7528 <OUTLINED_FUNCTION_68>
c0de62d0:	4605      	mov	r5, r0
c0de62d2:	f001 f929 	bl	c0de7528 <OUTLINED_FUNCTION_68>
c0de62d6:	4607      	mov	r7, r0
c0de62d8:	f8da 0000 	ldr.w	r0, [sl]
c0de62dc:	f04f 0801 	mov.w	r8, #1
c0de62e0:	f885 801f 	strb.w	r8, [r5, #31]
c0de62e4:	f005 f972 	bl	c0deb5cc <pic>
c0de62e8:	4601      	mov	r1, r0
c0de62ea:	20a0      	movs	r0, #160	@ 0xa0
c0de62ec:	2301      	movs	r3, #1
c0de62ee:	f885 8005 	strb.w	r8, [r5, #5]
c0de62f2:	7128      	strb	r0, [r5, #4]
c0de62f4:	200b      	movs	r0, #11
c0de62f6:	0e0a      	lsrs	r2, r1, #24
c0de62f8:	f885 0022 	strb.w	r0, [r5, #34]	@ 0x22
c0de62fc:	2004      	movs	r0, #4
c0de62fe:	f000 ff05 	bl	c0de710c <OUTLINED_FUNCTION_7>
c0de6302:	4680      	mov	r8, r0
c0de6304:	71a8      	strb	r0, [r5, #6]
c0de6306:	0a00      	lsrs	r0, r0, #8
c0de6308:	2400      	movs	r4, #0
c0de630a:	2109      	movs	r1, #9
c0de630c:	71e8      	strb	r0, [r5, #7]
c0de630e:	f105 0012 	add.w	r0, r5, #18
c0de6312:	f885 4021 	strb.w	r4, [r5, #33]	@ 0x21
c0de6316:	f005 fb99 	bl	c0deba4c <__aeabi_memclr>
c0de631a:	f89b 1023 	ldrb.w	r1, [fp, #35]	@ 0x23
c0de631e:	7832      	ldrb	r2, [r6, #0]
c0de6320:	78b3      	ldrb	r3, [r6, #2]
c0de6322:	78f6      	ldrb	r6, [r6, #3]
c0de6324:	f89b 0020 	ldrb.w	r0, [fp, #32]
c0de6328:	77fc      	strb	r4, [r7, #31]
c0de632a:	f001 f909 	bl	c0de7540 <OUTLINED_FUNCTION_70>
c0de632e:	f841 5020 	str.w	r5, [r1, r0, lsl #2]
c0de6332:	3001      	adds	r0, #1
c0de6334:	f88b 0020 	strb.w	r0, [fp, #32]
c0de6338:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de633c:	f005 f946 	bl	c0deb5cc <pic>
c0de6340:	4601      	mov	r1, r0
c0de6342:	2004      	movs	r0, #4
c0de6344:	9e00      	ldr	r6, [sp, #0]
c0de6346:	f887 0020 	strb.w	r0, [r7, #32]
c0de634a:	4638      	mov	r0, r7
c0de634c:	0e0a      	lsrs	r2, r1, #24
c0de634e:	f000 ff1b 	bl	c0de7188 <OUTLINED_FUNCTION_11>
c0de6352:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de6356:	7b70      	ldrb	r0, [r6, #13]
c0de6358:	2800      	cmp	r0, #0
c0de635a:	f04f 000c 	mov.w	r0, #12
c0de635e:	bf08      	it	eq
c0de6360:	200d      	moveq	r0, #13
c0de6362:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de6366:	f89a 200c 	ldrb.w	r2, [sl, #12]
c0de636a:	0752      	lsls	r2, r2, #29
c0de636c:	d418      	bmi.n	c0de63a0 <nbgl_layoutAddTagValueList+0x150>
c0de636e:	f8da 2008 	ldr.w	r2, [sl, #8]
c0de6372:	2a00      	cmp	r2, #0
c0de6374:	f000 810c 	beq.w	c0de6590 <nbgl_layoutAddTagValueList+0x340>
c0de6378:	4610      	mov	r0, r2
c0de637a:	f005 f927 	bl	c0deb5cc <pic>
c0de637e:	4639      	mov	r1, r7
c0de6380:	4604      	mov	r4, r0
c0de6382:	f811 2f26 	ldrb.w	r2, [r1, #38]!
c0de6386:	784b      	ldrb	r3, [r1, #1]
c0de6388:	f811 0c04 	ldrb.w	r0, [r1, #-4]
c0de638c:	f891 c002 	ldrb.w	ip, [r1, #2]
c0de6390:	78c9      	ldrb	r1, [r1, #3]
c0de6392:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6396:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
c0de639a:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de639e:	e001      	b.n	c0de63a4 <nbgl_layoutAddTagValueList+0x154>
c0de63a0:	4c82      	ldr	r4, [pc, #520]	@ (c0de65ac <nbgl_layoutAddTagValueList+0x35c>)
c0de63a2:	447c      	add	r4, pc
c0de63a4:	7822      	ldrb	r2, [r4, #0]
c0de63a6:	7863      	ldrb	r3, [r4, #1]
c0de63a8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de63ac:	f5c2 72ca 	rsb	r2, r2, #404	@ 0x194
c0de63b0:	0a13      	lsrs	r3, r2, #8
c0de63b2:	713a      	strb	r2, [r7, #4]
c0de63b4:	b292      	uxth	r2, r2
c0de63b6:	717b      	strb	r3, [r7, #5]
c0de63b8:	7bb3      	ldrb	r3, [r6, #14]
c0de63ba:	f004 ff44 	bl	c0deb246 <nbgl_getTextNbLinesInWidth>
c0de63be:	7af3      	ldrb	r3, [r6, #11]
c0de63c0:	f8cd 800c 	str.w	r8, [sp, #12]
c0de63c4:	b16b      	cbz	r3, c0de63e2 <nbgl_layoutAddTagValueList+0x192>
c0de63c6:	4298      	cmp	r0, r3
c0de63c8:	d90b      	bls.n	c0de63e2 <nbgl_layoutAddTagValueList+0x192>
c0de63ca:	f897 2024 	ldrb.w	r2, [r7, #36]	@ 0x24
c0de63ce:	7ab1      	ldrb	r1, [r6, #10]
c0de63d0:	4618      	mov	r0, r3
c0de63d2:	f887 3025 	strb.w	r3, [r7, #37]	@ 0x25
c0de63d6:	f002 02fd 	and.w	r2, r2, #253	@ 0xfd
c0de63da:	ea42 0141 	orr.w	r1, r2, r1, lsl #1
c0de63de:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de63e2:	9006      	str	r0, [sp, #24]
c0de63e4:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de63e8:	f004 ff19 	bl	c0deb21e <nbgl_getFont>
c0de63ec:	f897 2024 	ldrb.w	r2, [r7, #36]	@ 0x24
c0de63f0:	7bb1      	ldrb	r1, [r6, #14]
c0de63f2:	f890 c007 	ldrb.w	ip, [r0, #7]
c0de63f6:	0a28      	lsrs	r0, r5, #8
c0de63f8:	46b2      	mov	sl, r6
c0de63fa:	f8dd 8010 	ldr.w	r8, [sp, #16]
c0de63fe:	74f8      	strb	r0, [r7, #19]
c0de6400:	4638      	mov	r0, r7
c0de6402:	f002 02fe 	and.w	r2, r2, #254	@ 0xfe
c0de6406:	f800 5f12 	strb.w	r5, [r0, #18]!
c0de640a:	4311      	orrs	r1, r2
c0de640c:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de6410:	0e29      	lsrs	r1, r5, #24
c0de6412:	70c1      	strb	r1, [r0, #3]
c0de6414:	0c29      	lsrs	r1, r5, #16
c0de6416:	7081      	strb	r1, [r0, #2]
c0de6418:	4658      	mov	r0, fp
c0de641a:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de641e:	7843      	ldrb	r3, [r0, #1]
c0de6420:	7885      	ldrb	r5, [r0, #2]
c0de6422:	78c6      	ldrb	r6, [r0, #3]
c0de6424:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de6428:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de642c:	ea45 2306 	orr.w	r3, r5, r6, lsl #8
c0de6430:	2600      	movs	r6, #0
c0de6432:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de6436:	9b06      	ldr	r3, [sp, #24]
c0de6438:	76be      	strb	r6, [r7, #26]
c0de643a:	f887 6021 	strb.w	r6, [r7, #33]	@ 0x21
c0de643e:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de6442:	2104      	movs	r1, #4
c0de6444:	7679      	strb	r1, [r7, #25]
c0de6446:	2107      	movs	r1, #7
c0de6448:	75b9      	strb	r1, [r7, #22]
c0de644a:	fb03 f10c 	mul.w	r1, r3, ip
c0de644e:	71b9      	strb	r1, [r7, #6]
c0de6450:	0a09      	lsrs	r1, r1, #8
c0de6452:	71f9      	strb	r1, [r7, #7]
c0de6454:	1c51      	adds	r1, r2, #1
c0de6456:	2201      	movs	r2, #1
c0de6458:	2c00      	cmp	r4, #0
c0de645a:	f800 1c02 	strb.w	r1, [r0, #-2]
c0de645e:	d048      	beq.n	c0de64f2 <nbgl_layoutAddTagValueList+0x2a2>
c0de6460:	9e07      	ldr	r6, [sp, #28]
c0de6462:	f8cd c008 	str.w	ip, [sp, #8]
c0de6466:	f896 00ad 	ldrb.w	r0, [r6, #173]	@ 0xad
c0de646a:	f000 ff31 	bl	c0de72d0 <OUTLINED_FUNCTION_26>
c0de646e:	f89a 200c 	ldrb.w	r2, [sl, #12]
c0de6472:	4605      	mov	r5, r0
c0de6474:	4630      	mov	r0, r6
c0de6476:	4659      	mov	r1, fp
c0de6478:	2309      	movs	r3, #9
c0de647a:	f7fd fc55 	bl	c0de3d28 <layoutAddCallbackObj>
c0de647e:	0a21      	lsrs	r1, r4, #8
c0de6480:	0e22      	lsrs	r2, r4, #24
c0de6482:	f8dd c008 	ldr.w	ip, [sp, #8]
c0de6486:	f885 1022 	strb.w	r1, [r5, #34]	@ 0x22
c0de648a:	0a39      	lsrs	r1, r7, #8
c0de648c:	74e9      	strb	r1, [r5, #19]
c0de648e:	4629      	mov	r1, r5
c0de6490:	f801 4f21 	strb.w	r4, [r1, #33]!
c0de6494:	70ca      	strb	r2, [r1, #3]
c0de6496:	0c22      	lsrs	r2, r4, #16
c0de6498:	708a      	strb	r2, [r1, #2]
c0de649a:	4629      	mov	r1, r5
c0de649c:	0e3a      	lsrs	r2, r7, #24
c0de649e:	f801 7f12 	strb.w	r7, [r1, #18]!
c0de64a2:	70ca      	strb	r2, [r1, #3]
c0de64a4:	0c3a      	lsrs	r2, r7, #16
c0de64a6:	708a      	strb	r2, [r1, #2]
c0de64a8:	4659      	mov	r1, fp
c0de64aa:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de64ae:	784c      	ldrb	r4, [r1, #1]
c0de64b0:	788e      	ldrb	r6, [r1, #2]
c0de64b2:	78cf      	ldrb	r7, [r1, #3]
c0de64b4:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de64b8:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de64bc:	ea46 2407 	orr.w	r4, r6, r7, lsl #8
c0de64c0:	2600      	movs	r6, #0
c0de64c2:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de64c6:	762e      	strb	r6, [r5, #24]
c0de64c8:	77ee      	strb	r6, [r5, #31]
c0de64ca:	f842 5023 	str.w	r5, [r2, r3, lsl #2]
c0de64ce:	220c      	movs	r2, #12
c0de64d0:	75ea      	strb	r2, [r5, #23]
c0de64d2:	f880 8005 	strb.w	r8, [r0, #5]
c0de64d6:	f108 000f 	add.w	r0, r8, #15
c0de64da:	75aa      	strb	r2, [r5, #22]
c0de64dc:	2201      	movs	r2, #1
c0de64de:	f801 6c05 	strb.w	r6, [r1, #-5]
c0de64e2:	f801 0c04 	strb.w	r0, [r1, #-4]
c0de64e6:	1c58      	adds	r0, r3, #1
c0de64e8:	9b06      	ldr	r3, [sp, #24]
c0de64ea:	f801 2c06 	strb.w	r2, [r1, #-6]
c0de64ee:	f801 0c02 	strb.w	r0, [r1, #-2]
c0de64f2:	9803      	ldr	r0, [sp, #12]
c0de64f4:	f88b 2005 	strb.w	r2, [fp, #5]
c0de64f8:	22a0      	movs	r2, #160	@ 0xa0
c0de64fa:	4647      	mov	r7, r8
c0de64fc:	f88b 6018 	strb.w	r6, [fp, #24]
c0de6500:	f88b 601f 	strb.w	r6, [fp, #31]
c0de6504:	f88b 2004 	strb.w	r2, [fp, #4]
c0de6508:	2220      	movs	r2, #32
c0de650a:	fb03 000c 	mla	r0, r3, ip, r0
c0de650e:	f04f 0c00 	mov.w	ip, #0
c0de6512:	f88b 2017 	strb.w	r2, [fp, #23]
c0de6516:	3004      	adds	r0, #4
c0de6518:	f88b 0006 	strb.w	r0, [fp, #6]
c0de651c:	0a00      	lsrs	r0, r0, #8
c0de651e:	f1b8 0f00 	cmp.w	r8, #0
c0de6522:	f88b 0007 	strb.w	r0, [fp, #7]
c0de6526:	d002      	beq.n	c0de652e <nbgl_layoutAddTagValueList+0x2de>
c0de6528:	2018      	movs	r0, #24
c0de652a:	46d0      	mov	r8, sl
c0de652c:	e01b      	b.n	c0de6566 <nbgl_layoutAddTagValueList+0x316>
c0de652e:	9807      	ldr	r0, [sp, #28]
c0de6530:	46d0      	mov	r8, sl
c0de6532:	68c0      	ldr	r0, [r0, #12]
c0de6534:	b1b0      	cbz	r0, c0de6564 <nbgl_layoutAddTagValueList+0x314>
c0de6536:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de653a:	b199      	cbz	r1, c0de6564 <nbgl_layoutAddTagValueList+0x314>
c0de653c:	f810 2f22 	ldrb.w	r2, [r0, #34]!
c0de6540:	7843      	ldrb	r3, [r0, #1]
c0de6542:	7884      	ldrb	r4, [r0, #2]
c0de6544:	78c0      	ldrb	r0, [r0, #3]
c0de6546:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de654a:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de654e:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de6552:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de6556:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de655a:	7ec0      	ldrb	r0, [r0, #27]
c0de655c:	2803      	cmp	r0, #3
c0de655e:	d101      	bne.n	c0de6564 <nbgl_layoutAddTagValueList+0x314>
c0de6560:	2018      	movs	r0, #24
c0de6562:	e000      	b.n	c0de6566 <nbgl_layoutAddTagValueList+0x316>
c0de6564:	2000      	movs	r0, #0
c0de6566:	9e07      	ldr	r6, [sp, #28]
c0de6568:	f88b c01a 	strb.w	ip, [fp, #26]
c0de656c:	f88b c016 	strb.w	ip, [fp, #22]
c0de6570:	3701      	adds	r7, #1
c0de6572:	f8d6 10a0 	ldr.w	r1, [r6, #160]	@ 0xa0
c0de6576:	f000 fd93 	bl	c0de70a0 <OUTLINED_FUNCTION_4>
c0de657a:	f841 b023 	str.w	fp, [r1, r3, lsl #2]
c0de657e:	f88b 0019 	strb.w	r0, [fp, #25]
c0de6582:	f8d6 00a0 	ldr.w	r0, [r6, #160]	@ 0xa0
c0de6586:	f000 fd59 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de658a:	9905      	ldr	r1, [sp, #20]
c0de658c:	3110      	adds	r1, #16
c0de658e:	e66e      	b.n	c0de626e <nbgl_layoutAddTagValueList+0x1e>
c0de6590:	2400      	movs	r4, #0
c0de6592:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de6596:	e70b      	b.n	c0de63b0 <nbgl_layoutAddTagValueList+0x160>
c0de6598:	2000      	movs	r0, #0
c0de659a:	e001      	b.n	c0de65a0 <nbgl_layoutAddTagValueList+0x350>
c0de659c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de65a0:	b008      	add	sp, #32
c0de65a2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de65a6:	bf00      	nop
c0de65a8:	00004f9d 	.word	0x00004f9d
c0de65ac:	00006586 	.word	0x00006586

c0de65b0 <nbgl_layoutAddSeparationLine>:
c0de65b0:	b570      	push	{r4, r5, r6, lr}
c0de65b2:	f000 ffa0 	bl	c0de74f6 <OUTLINED_FUNCTION_64>
c0de65b6:	08c0      	lsrs	r0, r0, #3
c0de65b8:	f7ff fa44 	bl	c0de5a44 <createHorizontalLine>
c0de65bc:	f8d4 10a0 	ldr.w	r1, [r4, #160]	@ 0xa0
c0de65c0:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de65c4:	784d      	ldrb	r5, [r1, #1]
c0de65c6:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de65ca:	788e      	ldrb	r6, [r1, #2]
c0de65cc:	78c9      	ldrb	r1, [r1, #3]
c0de65ce:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
c0de65d2:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de65d6:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de65da:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de65de:	21ff      	movs	r1, #255	@ 0xff
c0de65e0:	7641      	strb	r1, [r0, #25]
c0de65e2:	7681      	strb	r1, [r0, #26]
c0de65e4:	f000 ff2b 	bl	c0de743e <OUTLINED_FUNCTION_48>
c0de65e8:	bd70      	pop	{r4, r5, r6, pc}

c0de65ea <nbgl_layoutAddButton>:
c0de65ea:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de65ee:	b086      	sub	sp, #24
c0de65f0:	b318      	cbz	r0, c0de663a <nbgl_layoutAddButton+0x50>
c0de65f2:	4680      	mov	r8, r0
c0de65f4:	7ac8      	ldrb	r0, [r1, #11]
c0de65f6:	460d      	mov	r5, r1
c0de65f8:	b108      	cbz	r0, c0de65fe <nbgl_layoutAddButton+0x14>
c0de65fa:	7aa8      	ldrb	r0, [r5, #10]
c0de65fc:	b300      	cbz	r0, c0de6640 <nbgl_layoutAddButton+0x56>
c0de65fe:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de6602:	f000 fddf 	bl	c0de71c4 <OUTLINED_FUNCTION_13>
c0de6606:	4606      	mov	r6, r0
c0de6608:	7a2a      	ldrb	r2, [r5, #8]
c0de660a:	7b2b      	ldrb	r3, [r5, #12]
c0de660c:	4640      	mov	r0, r8
c0de660e:	4631      	mov	r1, r6
c0de6610:	f7fd fb8a 	bl	c0de3d28 <layoutAddCallbackObj>
c0de6614:	b188      	cbz	r0, c0de663a <nbgl_layoutAddButton+0x50>
c0de6616:	210c      	movs	r1, #12
c0de6618:	2000      	movs	r0, #0
c0de661a:	7671      	strb	r1, [r6, #25]
c0de661c:	2120      	movs	r1, #32
c0de661e:	76b0      	strb	r0, [r6, #26]
c0de6620:	7630      	strb	r0, [r6, #24]
c0de6622:	75b0      	strb	r0, [r6, #22]
c0de6624:	75f1      	strb	r1, [r6, #23]
c0de6626:	7a69      	ldrb	r1, [r5, #9]
c0de6628:	b1e9      	cbz	r1, c0de6666 <nbgl_layoutAddButton+0x7c>
c0de662a:	f886 0021 	strb.w	r0, [r6, #33]	@ 0x21
c0de662e:	2003      	movs	r0, #3
c0de6630:	77f0      	strb	r0, [r6, #31]
c0de6632:	2902      	cmp	r1, #2
c0de6634:	bf18      	it	ne
c0de6636:	2002      	movne	r0, #2
c0de6638:	e019      	b.n	c0de666e <nbgl_layoutAddButton+0x84>
c0de663a:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de663e:	e09f      	b.n	c0de6780 <nbgl_layoutAddButton+0x196>
c0de6640:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de6644:	2800      	cmp	r0, #0
c0de6646:	f000 809e 	beq.w	c0de6786 <nbgl_layoutAddButton+0x19c>
c0de664a:	2001      	movs	r0, #1
c0de664c:	f88d 0000 	strb.w	r0, [sp]
c0de6650:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de6654:	9001      	str	r0, [sp, #4]
c0de6656:	7b28      	ldrb	r0, [r5, #12]
c0de6658:	9102      	str	r1, [sp, #8]
c0de665a:	4669      	mov	r1, sp
c0de665c:	f000 ff5d 	bl	c0de751a <OUTLINED_FUNCTION_67>
c0de6660:	f7fd fdf2 	bl	c0de4248 <nbgl_layoutAddUpFooter>
c0de6664:	e08c      	b.n	c0de6780 <nbgl_layoutAddButton+0x196>
c0de6666:	2103      	movs	r1, #3
c0de6668:	77f0      	strb	r0, [r6, #31]
c0de666a:	f886 1021 	strb.w	r1, [r6, #33]	@ 0x21
c0de666e:	f886 0020 	strb.w	r0, [r6, #32]
c0de6672:	6828      	ldr	r0, [r5, #0]
c0de6674:	f004 ffaa 	bl	c0deb5cc <pic>
c0de6678:	210c      	movs	r1, #12
c0de667a:	0e02      	lsrs	r2, r0, #24
c0de667c:	f886 1023 	strb.w	r1, [r6, #35]	@ 0x23
c0de6680:	4631      	mov	r1, r6
c0de6682:	f000 fe59 	bl	c0de7338 <OUTLINED_FUNCTION_31>
c0de6686:	f000 fdfe 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de668a:	4631      	mov	r1, r6
c0de668c:	0e02      	lsrs	r2, r0, #24
c0de668e:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de6692:	f000 fef8 	bl	c0de7486 <OUTLINED_FUNCTION_53>
c0de6696:	7aa8      	ldrb	r0, [r5, #10]
c0de6698:	b308      	cbz	r0, c0de66de <nbgl_layoutAddButton+0xf4>
c0de669a:	4632      	mov	r2, r6
c0de669c:	f896 1026 	ldrb.w	r1, [r6, #38]	@ 0x26
c0de66a0:	f896 0023 	ldrb.w	r0, [r6, #35]	@ 0x23
c0de66a4:	f812 3f25 	ldrb.w	r3, [r2, #37]!
c0de66a8:	f000 ff30 	bl	c0de750c <OUTLINED_FUNCTION_66>
c0de66ac:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de66b0:	f004 fdce 	bl	c0deb250 <nbgl_getTextWidth>
c0de66b4:	4631      	mov	r1, r6
c0de66b6:	3040      	adds	r0, #64	@ 0x40
c0de66b8:	f811 2f2e 	ldrb.w	r2, [r1, #46]!
c0de66bc:	784b      	ldrb	r3, [r1, #1]
c0de66be:	788f      	ldrb	r7, [r1, #2]
c0de66c0:	78c9      	ldrb	r1, [r1, #3]
c0de66c2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de66c6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de66ca:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de66ce:	2100      	movs	r1, #0
c0de66d0:	b18a      	cbz	r2, c0de66f6 <nbgl_layoutAddButton+0x10c>
c0de66d2:	7813      	ldrb	r3, [r2, #0]
c0de66d4:	7852      	ldrb	r2, [r2, #1]
c0de66d6:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de66da:	320c      	adds	r2, #12
c0de66dc:	e00c      	b.n	c0de66f8 <nbgl_layoutAddButton+0x10e>
c0de66de:	2000      	movs	r0, #0
c0de66e0:	71f0      	strb	r0, [r6, #7]
c0de66e2:	2058      	movs	r0, #88	@ 0x58
c0de66e4:	71b0      	strb	r0, [r6, #6]
c0de66e6:	2001      	movs	r0, #1
c0de66e8:	7170      	strb	r0, [r6, #5]
c0de66ea:	20a0      	movs	r0, #160	@ 0xa0
c0de66ec:	7130      	strb	r0, [r6, #4]
c0de66ee:	2004      	movs	r0, #4
c0de66f0:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de66f4:	e01c      	b.n	c0de6730 <nbgl_layoutAddButton+0x146>
c0de66f6:	2200      	movs	r2, #0
c0de66f8:	4410      	add	r0, r2
c0de66fa:	71f1      	strb	r1, [r6, #7]
c0de66fc:	2140      	movs	r1, #64	@ 0x40
c0de66fe:	71b1      	strb	r1, [r6, #6]
c0de6700:	2102      	movs	r1, #2
c0de6702:	0a02      	lsrs	r2, r0, #8
c0de6704:	7130      	strb	r0, [r6, #4]
c0de6706:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de670a:	7172      	strb	r2, [r6, #5]
c0de670c:	7aea      	ldrb	r2, [r5, #11]
c0de670e:	2a01      	cmp	r2, #1
c0de6710:	d00e      	beq.n	c0de6730 <nbgl_layoutAddButton+0x146>
c0de6712:	b280      	uxth	r0, r0
c0de6714:	f5c0 70d0 	rsb	r0, r0, #416	@ 0x1a0
c0de6718:	fb90 f0f1 	sdiv	r0, r0, r1
c0de671c:	4631      	mov	r1, r6
c0de671e:	f811 2f17 	ldrb.w	r2, [r1, #23]!
c0de6722:	784b      	ldrb	r3, [r1, #1]
c0de6724:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6728:	4410      	add	r0, r2
c0de672a:	7008      	strb	r0, [r1, #0]
c0de672c:	0a00      	lsrs	r0, r0, #8
c0de672e:	7048      	strb	r0, [r1, #1]
c0de6730:	2000      	movs	r0, #0
c0de6732:	4631      	mov	r1, r6
c0de6734:	f801 0f12 	strb.w	r0, [r1, #18]!
c0de6738:	74f0      	strb	r0, [r6, #19]
c0de673a:	70c8      	strb	r0, [r1, #3]
c0de673c:	7088      	strb	r0, [r1, #2]
c0de673e:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de6742:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de6746:	784f      	ldrb	r7, [r1, #1]
c0de6748:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de674c:	788c      	ldrb	r4, [r1, #2]
c0de674e:	78c9      	ldrb	r1, [r1, #3]
c0de6750:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de6754:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
c0de6758:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de675c:	2208      	movs	r2, #8
c0de675e:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
c0de6762:	2101      	movs	r1, #1
c0de6764:	7770      	strb	r0, [r6, #29]
c0de6766:	7731      	strb	r1, [r6, #28]
c0de6768:	7aa9      	ldrb	r1, [r5, #10]
c0de676a:	2900      	cmp	r1, #0
c0de676c:	bf08      	it	eq
c0de676e:	2207      	moveq	r2, #7
c0de6770:	77b2      	strb	r2, [r6, #30]
c0de6772:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de6776:	f891 2020 	ldrb.w	r2, [r1, #32]
c0de677a:	3201      	adds	r2, #1
c0de677c:	f881 2020 	strb.w	r2, [r1, #32]
c0de6780:	b006      	add	sp, #24
c0de6782:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de6786:	2005      	movs	r0, #5
c0de6788:	f8ad 0000 	strh.w	r0, [sp]
c0de678c:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de6790:	9001      	str	r0, [sp, #4]
c0de6792:	7b28      	ldrb	r0, [r5, #12]
c0de6794:	9102      	str	r1, [sp, #8]
c0de6796:	4669      	mov	r1, sp
c0de6798:	f000 febf 	bl	c0de751a <OUTLINED_FUNCTION_67>
c0de679c:	f7fe f8e8 	bl	c0de4970 <nbgl_layoutAddExtendedFooter>
c0de67a0:	e7ee      	b.n	c0de6780 <nbgl_layoutAddButton+0x196>

c0de67a2 <nbgl_layoutAddLongPressButton>:
c0de67a2:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de67a4:	9102      	str	r1, [sp, #8]
c0de67a6:	2100      	movs	r1, #0
c0de67a8:	f88d 300d 	strb.w	r3, [sp, #13]
c0de67ac:	f88d 200c 	strb.w	r2, [sp, #12]
c0de67b0:	f88d 1004 	strb.w	r1, [sp, #4]
c0de67b4:	b118      	cbz	r0, c0de67be <nbgl_layoutAddLongPressButton+0x1c>
c0de67b6:	a901      	add	r1, sp, #4
c0de67b8:	f7fd fd46 	bl	c0de4248 <nbgl_layoutAddUpFooter>
c0de67bc:	e001      	b.n	c0de67c2 <nbgl_layoutAddLongPressButton+0x20>
c0de67be:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de67c2:	b006      	add	sp, #24
c0de67c4:	bd80      	pop	{r7, pc}

c0de67c6 <nbgl_layoutAddFooter>:
c0de67c6:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de67c8:	9101      	str	r1, [sp, #4]
c0de67ca:	f240 1101 	movw	r1, #257	@ 0x101
c0de67ce:	f88d 2009 	strb.w	r2, [sp, #9]
c0de67d2:	2200      	movs	r2, #0
c0de67d4:	f88d 300a 	strb.w	r3, [sp, #10]
c0de67d8:	f8ad 1000 	strh.w	r1, [sp]
c0de67dc:	4669      	mov	r1, sp
c0de67de:	f88d 2008 	strb.w	r2, [sp, #8]
c0de67e2:	f7fe f8c5 	bl	c0de4970 <nbgl_layoutAddExtendedFooter>
c0de67e6:	b006      	add	sp, #24
c0de67e8:	bd80      	pop	{r7, pc}

c0de67ea <nbgl_layoutAddSplitFooter>:
c0de67ea:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de67ec:	9101      	str	r1, [sp, #4]
c0de67ee:	f44f 7181 	mov.w	r1, #258	@ 0x102
c0de67f2:	f88d 200c 	strb.w	r2, [sp, #12]
c0de67f6:	9302      	str	r3, [sp, #8]
c0de67f8:	f8ad 1000 	strh.w	r1, [sp]
c0de67fc:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de67fe:	f88d 100e 	strb.w	r1, [sp, #14]
c0de6802:	9908      	ldr	r1, [sp, #32]
c0de6804:	f88d 100d 	strb.w	r1, [sp, #13]
c0de6808:	4669      	mov	r1, sp
c0de680a:	f7fe f8b1 	bl	c0de4970 <nbgl_layoutAddExtendedFooter>
c0de680e:	b006      	add	sp, #24
c0de6810:	bd80      	pop	{r7, pc}
	...

c0de6814 <nbgl_layoutAddHeader>:
c0de6814:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6818:	2800      	cmp	r0, #0
c0de681a:	f000 822c 	beq.w	c0de6c76 <nbgl_layoutAddHeader+0x462>
c0de681e:	460d      	mov	r5, r1
c0de6820:	b119      	cbz	r1, c0de682a <nbgl_layoutAddHeader+0x16>
c0de6822:	4604      	mov	r4, r0
c0de6824:	7828      	ldrb	r0, [r5, #0]
c0de6826:	2806      	cmp	r0, #6
c0de6828:	d903      	bls.n	c0de6832 <nbgl_layoutAddHeader+0x1e>
c0de682a:	f06f 0001 	mvn.w	r0, #1
c0de682e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6832:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6836:	2601      	movs	r6, #1
c0de6838:	f000 fd08 	bl	c0de724c <OUTLINED_FUNCTION_19>
c0de683c:	f000 fe17 	bl	c0de746e <OUTLINED_FUNCTION_51>
c0de6840:	60e0      	str	r0, [r4, #12]
c0de6842:	f000 fe35 	bl	c0de74b0 <OUTLINED_FUNCTION_57>
c0de6846:	68e1      	ldr	r1, [r4, #12]
c0de6848:	0a02      	lsrs	r2, r0, #8
c0de684a:	0e03      	lsrs	r3, r0, #24
c0de684c:	f881 2023 	strb.w	r2, [r1, #35]	@ 0x23
c0de6850:	2202      	movs	r2, #2
c0de6852:	f000 fe54 	bl	c0de74fe <OUTLINED_FUNCTION_65>
c0de6856:	70d3      	strb	r3, [r2, #3]
c0de6858:	7828      	ldrb	r0, [r5, #0]
c0de685a:	1e42      	subs	r2, r0, #1
c0de685c:	2a02      	cmp	r2, #2
c0de685e:	d311      	bcc.n	c0de6884 <nbgl_layoutAddHeader+0x70>
c0de6860:	2806      	cmp	r0, #6
c0de6862:	f000 80b9 	beq.w	c0de69d8 <nbgl_layoutAddHeader+0x1c4>
c0de6866:	2803      	cmp	r0, #3
c0de6868:	f000 8210 	beq.w	c0de6c8c <nbgl_layoutAddHeader+0x478>
c0de686c:	2804      	cmp	r0, #4
c0de686e:	f000 80e4 	beq.w	c0de6a3a <nbgl_layoutAddHeader+0x226>
c0de6872:	2805      	cmp	r0, #5
c0de6874:	d006      	beq.n	c0de6884 <nbgl_layoutAddHeader+0x70>
c0de6876:	2800      	cmp	r0, #0
c0de6878:	d1d7      	bne.n	c0de682a <nbgl_layoutAddHeader+0x16>
c0de687a:	88a8      	ldrh	r0, [r5, #4]
c0de687c:	7188      	strb	r0, [r1, #6]
c0de687e:	0a00      	lsrs	r0, r0, #8
c0de6880:	71c8      	strb	r0, [r1, #7]
c0de6882:	e203      	b.n	c0de6c8c <nbgl_layoutAddHeader+0x478>
c0de6884:	f000 fdd8 	bl	c0de7438 <OUTLINED_FUNCTION_46>
c0de6888:	9001      	str	r0, [sp, #4]
c0de688a:	7828      	ldrb	r0, [r5, #0]
c0de688c:	210c      	movs	r1, #12
c0de688e:	2805      	cmp	r0, #5
c0de6890:	bf08      	it	eq
c0de6892:	2111      	moveq	r1, #17
c0de6894:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6898:	f815 a001 	ldrb.w	sl, [r5, r1]
c0de689c:	f000 fc92 	bl	c0de71c4 <OUTLINED_FUNCTION_13>
c0de68a0:	4683      	mov	fp, r0
c0de68a2:	f04f 0803 	mov.w	r8, #3
c0de68a6:	f1ba 0fff 	cmp.w	sl, #255	@ 0xff
c0de68aa:	d00f      	beq.n	c0de68cc <nbgl_layoutAddHeader+0xb8>
c0de68ac:	7828      	ldrb	r0, [r5, #0]
c0de68ae:	210d      	movs	r1, #13
c0de68b0:	4652      	mov	r2, sl
c0de68b2:	2805      	cmp	r0, #5
c0de68b4:	bf08      	it	eq
c0de68b6:	2113      	moveq	r1, #19
c0de68b8:	5c6b      	ldrb	r3, [r5, r1]
c0de68ba:	4620      	mov	r0, r4
c0de68bc:	4659      	mov	r1, fp
c0de68be:	f7fd fa33 	bl	c0de3d28 <layoutAddCallbackObj>
c0de68c2:	2800      	cmp	r0, #0
c0de68c4:	f000 81d7 	beq.w	c0de6c76 <nbgl_layoutAddHeader+0x462>
c0de68c8:	2000      	movs	r0, #0
c0de68ca:	e000      	b.n	c0de68ce <nbgl_layoutAddHeader+0xba>
c0de68cc:	2003      	movs	r0, #3
c0de68ce:	f88b 0021 	strb.w	r0, [fp, #33]	@ 0x21
c0de68d2:	2004      	movs	r0, #4
c0de68d4:	2600      	movs	r6, #0
c0de68d6:	2160      	movs	r1, #96	@ 0x60
c0de68d8:	f88b 801f 	strb.w	r8, [fp, #31]
c0de68dc:	f88b 8020 	strb.w	r8, [fp, #32]
c0de68e0:	f88b 0016 	strb.w	r0, [fp, #22]
c0de68e4:	4658      	mov	r0, fp
c0de68e6:	f88b 1006 	strb.w	r1, [fp, #6]
c0de68ea:	2168      	movs	r1, #104	@ 0x68
c0de68ec:	f88b 6026 	strb.w	r6, [fp, #38]	@ 0x26
c0de68f0:	f88b 6007 	strb.w	r6, [fp, #7]
c0de68f4:	f88b 6005 	strb.w	r6, [fp, #5]
c0de68f8:	f800 6f25 	strb.w	r6, [r0, #37]!
c0de68fc:	f88b 1004 	strb.w	r1, [fp, #4]
c0de6900:	70c6      	strb	r6, [r0, #3]
c0de6902:	7086      	strb	r6, [r0, #2]
c0de6904:	48de      	ldr	r0, [pc, #888]	@ (c0de6c80 <nbgl_layoutAddHeader+0x46c>)
c0de6906:	4478      	add	r0, pc
c0de6908:	f004 fe60 	bl	c0deb5cc <pic>
c0de690c:	4659      	mov	r1, fp
c0de690e:	0e02      	lsrs	r2, r0, #24
c0de6910:	f88b 601d 	strb.w	r6, [fp, #29]
c0de6914:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de6918:	f000 fc87 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de691c:	f88b 002f 	strb.w	r0, [fp, #47]	@ 0x2f
c0de6920:	68e0      	ldr	r0, [r4, #12]
c0de6922:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de6926:	7843      	ldrb	r3, [r0, #1]
c0de6928:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de692c:	7887      	ldrb	r7, [r0, #2]
c0de692e:	78c0      	ldrb	r0, [r0, #3]
c0de6930:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6934:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de6938:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de693c:	f840 b022 	str.w	fp, [r0, r2, lsl #2]
c0de6940:	f1ba 00ff 	subs.w	r0, sl, #255	@ 0xff
c0de6944:	bf18      	it	ne
c0de6946:	2001      	movne	r0, #1
c0de6948:	f88b 001c 	strb.w	r0, [fp, #28]
c0de694c:	68e1      	ldr	r1, [r4, #12]
c0de694e:	2006      	movs	r0, #6
c0de6950:	f88b 001e 	strb.w	r0, [fp, #30]
c0de6954:	f000 fd85 	bl	c0de7462 <OUTLINED_FUNCTION_50>
c0de6958:	9801      	ldr	r0, [sp, #4]
c0de695a:	2800      	cmp	r0, #0
c0de695c:	f000 8093 	beq.w	c0de6a86 <nbgl_layoutAddHeader+0x272>
c0de6960:	7828      	ldrb	r0, [r5, #0]
c0de6962:	f04f 0a00 	mov.w	sl, #0
c0de6966:	2802      	cmp	r0, #2
c0de6968:	d11b      	bne.n	c0de69a2 <nbgl_layoutAddHeader+0x18e>
c0de696a:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de696e:	f000 fcaf 	bl	c0de72d0 <OUTLINED_FUNCTION_26>
c0de6972:	4607      	mov	r7, r0
c0de6974:	f000 fc87 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de6978:	4639      	mov	r1, r7
c0de697a:	0e02      	lsrs	r2, r0, #24
c0de697c:	f887 a01f 	strb.w	sl, [r7, #31]
c0de6980:	46ba      	mov	sl, r7
c0de6982:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de6986:	f000 fc50 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de698a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de698e:	68e0      	ldr	r0, [r4, #12]
c0de6990:	f000 fbae 	bl	c0de70f0 <OUTLINED_FUNCTION_6>
c0de6994:	f840 7022 	str.w	r7, [r0, r2, lsl #2]
c0de6998:	2005      	movs	r0, #5
c0de699a:	75b8      	strb	r0, [r7, #22]
c0de699c:	68e0      	ldr	r0, [r4, #12]
c0de699e:	f000 fb4d 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de69a2:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de69a6:	f000 fb4f 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de69aa:	782b      	ldrb	r3, [r5, #0]
c0de69ac:	4680      	mov	r8, r0
c0de69ae:	2b05      	cmp	r3, #5
c0de69b0:	d16e      	bne.n	c0de6a90 <nbgl_layoutAddHeader+0x27c>
c0de69b2:	7c2a      	ldrb	r2, [r5, #16]
c0de69b4:	2aff      	cmp	r2, #255	@ 0xff
c0de69b6:	d06a      	beq.n	c0de6a8e <nbgl_layoutAddHeader+0x27a>
c0de69b8:	7ceb      	ldrb	r3, [r5, #19]
c0de69ba:	4620      	mov	r0, r4
c0de69bc:	4641      	mov	r1, r8
c0de69be:	f7fd f9b3 	bl	c0de3d28 <layoutAddCallbackObj>
c0de69c2:	2800      	cmp	r0, #0
c0de69c4:	f000 8157 	beq.w	c0de6c76 <nbgl_layoutAddHeader+0x462>
c0de69c8:	2000      	movs	r0, #0
c0de69ca:	f888 001d 	strb.w	r0, [r8, #29]
c0de69ce:	2001      	movs	r0, #1
c0de69d0:	f888 001c 	strb.w	r0, [r8, #28]
c0de69d4:	782b      	ldrb	r3, [r5, #0]
c0de69d6:	e05b      	b.n	c0de6a90 <nbgl_layoutAddHeader+0x27c>
c0de69d8:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de69dc:	f000 fb34 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de69e0:	4606      	mov	r6, r0
c0de69e2:	7a2a      	ldrb	r2, [r5, #8]
c0de69e4:	7a6b      	ldrb	r3, [r5, #9]
c0de69e6:	f000 fc07 	bl	c0de71f8 <OUTLINED_FUNCTION_15>
c0de69ea:	2800      	cmp	r0, #0
c0de69ec:	f000 8143 	beq.w	c0de6c76 <nbgl_layoutAddHeader+0x462>
c0de69f0:	2020      	movs	r0, #32
c0de69f2:	4637      	mov	r7, r6
c0de69f4:	f04f 0a00 	mov.w	sl, #0
c0de69f8:	f04f 0806 	mov.w	r8, #6
c0de69fc:	f04f 0b01 	mov.w	fp, #1
c0de6a00:	75f0      	strb	r0, [r6, #23]
c0de6a02:	20a0      	movs	r0, #160	@ 0xa0
c0de6a04:	f886 a01f 	strb.w	sl, [r6, #31]
c0de6a08:	f000 fda1 	bl	c0de754e <OUTLINED_FUNCTION_71>
c0de6a0c:	f886 b005 	strb.w	fp, [r6, #5]
c0de6a10:	7130      	strb	r0, [r6, #4]
c0de6a12:	2060      	movs	r0, #96	@ 0x60
c0de6a14:	f807 0f06 	strb.w	r0, [r7, #6]!
c0de6a18:	f887 a001 	strb.w	sl, [r7, #1]
c0de6a1c:	f000 fc33 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de6a20:	f000 fd37 	bl	c0de7492 <OUTLINED_FUNCTION_54>
c0de6a24:	f886 8020 	strb.w	r8, [r6, #32]
c0de6a28:	f000 fb48 	bl	c0de70bc <OUTLINED_FUNCTION_5>
c0de6a2c:	f886 b01c 	strb.w	fp, [r6, #28]
c0de6a30:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de6a34:	2005      	movs	r0, #5
c0de6a36:	77b0      	strb	r0, [r6, #30]
c0de6a38:	e01d      	b.n	c0de6a76 <nbgl_layoutAddHeader+0x262>
c0de6a3a:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6a3e:	f000 fb03 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de6a42:	4606      	mov	r6, r0
c0de6a44:	2101      	movs	r1, #1
c0de6a46:	2000      	movs	r0, #0
c0de6a48:	7171      	strb	r1, [r6, #5]
c0de6a4a:	21a0      	movs	r1, #160	@ 0xa0
c0de6a4c:	4637      	mov	r7, r6
c0de6a4e:	77f0      	strb	r0, [r6, #31]
c0de6a50:	7131      	strb	r1, [r6, #4]
c0de6a52:	2160      	movs	r1, #96	@ 0x60
c0de6a54:	f807 1f06 	strb.w	r1, [r7, #6]!
c0de6a58:	7078      	strb	r0, [r7, #1]
c0de6a5a:	f000 fc14 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de6a5e:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de6a62:	0e02      	lsrs	r2, r0, #24
c0de6a64:	f041 0101 	orr.w	r1, r1, #1
c0de6a68:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de6a6c:	4631      	mov	r1, r6
c0de6a6e:	f000 fb25 	bl	c0de70bc <OUTLINED_FUNCTION_5>
c0de6a72:	f000 fd02 	bl	c0de747a <OUTLINED_FUNCTION_52>
c0de6a76:	68e1      	ldr	r1, [r4, #12]
c0de6a78:	787a      	ldrb	r2, [r7, #1]
c0de6a7a:	7838      	ldrb	r0, [r7, #0]
c0de6a7c:	71ca      	strb	r2, [r1, #7]
c0de6a7e:	7188      	strb	r0, [r1, #6]
c0de6a80:	f000 fcef 	bl	c0de7462 <OUTLINED_FUNCTION_50>
c0de6a84:	e102      	b.n	c0de6c8c <nbgl_layoutAddHeader+0x478>
c0de6a86:	7828      	ldrb	r0, [r5, #0]
c0de6a88:	f04f 0800 	mov.w	r8, #0
c0de6a8c:	e098      	b.n	c0de6bc0 <nbgl_layoutAddHeader+0x3ac>
c0de6a8e:	2305      	movs	r3, #5
c0de6a90:	68e2      	ldr	r2, [r4, #12]
c0de6a92:	f04f 0e00 	mov.w	lr, #0
c0de6a96:	f04f 0c05 	mov.w	ip, #5
c0de6a9a:	f888 e01f 	strb.w	lr, [r8, #31]
c0de6a9e:	f888 c016 	strb.w	ip, [r8, #22]
c0de6aa2:	7916      	ldrb	r6, [r2, #4]
c0de6aa4:	7952      	ldrb	r2, [r2, #5]
c0de6aa6:	ea46 2702 	orr.w	r7, r6, r2, lsl #8
c0de6aaa:	f1a7 02d0 	sub.w	r2, r7, #208	@ 0xd0
c0de6aae:	0a16      	lsrs	r6, r2, #8
c0de6ab0:	f888 2004 	strb.w	r2, [r8, #4]
c0de6ab4:	2b02      	cmp	r3, #2
c0de6ab6:	f888 6005 	strb.w	r6, [r8, #5]
c0de6aba:	d117      	bne.n	c0de6aec <nbgl_layoutAddHeader+0x2d8>
c0de6abc:	4652      	mov	r2, sl
c0de6abe:	f812 3f21 	ldrb.w	r3, [r2, #33]!
c0de6ac2:	7856      	ldrb	r6, [r2, #1]
c0de6ac4:	7890      	ldrb	r0, [r2, #2]
c0de6ac6:	78d2      	ldrb	r2, [r2, #3]
c0de6ac8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de6acc:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de6ad0:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
c0de6ad4:	7802      	ldrb	r2, [r0, #0]
c0de6ad6:	7840      	ldrb	r0, [r0, #1]
c0de6ad8:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6adc:	1a38      	subs	r0, r7, r0
c0de6ade:	f1a0 02e0 	sub.w	r2, r0, #224	@ 0xe0
c0de6ae2:	0a10      	lsrs	r0, r2, #8
c0de6ae4:	f888 2004 	strb.w	r2, [r8, #4]
c0de6ae8:	f888 0005 	strb.w	r0, [r8, #5]
c0de6aec:	9901      	ldr	r1, [sp, #4]
c0de6aee:	4640      	mov	r0, r8
c0de6af0:	b292      	uxth	r2, r2
c0de6af2:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de6af6:	0e0b      	lsrs	r3, r1, #24
c0de6af8:	70c3      	strb	r3, [r0, #3]
c0de6afa:	0c0b      	lsrs	r3, r1, #16
c0de6afc:	f800 ec1f 	strb.w	lr, [r0, #-31]
c0de6b00:	f800 cc06 	strb.w	ip, [r0, #-6]
c0de6b04:	7083      	strb	r3, [r0, #2]
c0de6b06:	0a0b      	lsrs	r3, r1, #8
c0de6b08:	7043      	strb	r3, [r0, #1]
c0de6b0a:	2360      	movs	r3, #96	@ 0x60
c0de6b0c:	f800 3c20 	strb.w	r3, [r0, #-32]
c0de6b10:	230c      	movs	r3, #12
c0de6b12:	f800 3c04 	strb.w	r3, [r0, #-4]
c0de6b16:	f810 3c02 	ldrb.w	r3, [r0, #-2]
c0de6b1a:	f043 0301 	orr.w	r3, r3, #1
c0de6b1e:	f800 3c02 	strb.w	r3, [r0, #-2]
c0de6b22:	200c      	movs	r0, #12
c0de6b24:	2301      	movs	r3, #1
c0de6b26:	f004 fb8e 	bl	c0deb246 <nbgl_getTextNbLinesInWidth>
c0de6b2a:	7828      	ldrb	r0, [r5, #0]
c0de6b2c:	2802      	cmp	r0, #2
c0de6b2e:	d115      	bne.n	c0de6b5c <nbgl_layoutAddHeader+0x348>
c0de6b30:	4646      	mov	r6, r8
c0de6b32:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de6b36:	7872      	ldrb	r2, [r6, #1]
c0de6b38:	78b3      	ldrb	r3, [r6, #2]
c0de6b3a:	78f7      	ldrb	r7, [r6, #3]
c0de6b3c:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de6b40:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6b44:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de6b48:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de6b4c:	f004 fb80 	bl	c0deb250 <nbgl_getTextWidth>
c0de6b50:	f806 0c22 	strb.w	r0, [r6, #-34]
c0de6b54:	0a00      	lsrs	r0, r0, #8
c0de6b56:	f806 0c21 	strb.w	r0, [r6, #-33]
c0de6b5a:	7828      	ldrb	r0, [r5, #0]
c0de6b5c:	f000 fbbc 	bl	c0de72d8 <OUTLINED_FUNCTION_27>
c0de6b60:	f841 8023 	str.w	r8, [r1, r3, lsl #2]
c0de6b64:	68e1      	ldr	r1, [r4, #12]
c0de6b66:	f891 2020 	ldrb.w	r2, [r1, #32]
c0de6b6a:	3201      	adds	r2, #1
c0de6b6c:	2802      	cmp	r0, #2
c0de6b6e:	f881 2020 	strb.w	r2, [r1, #32]
c0de6b72:	d125      	bne.n	c0de6bc0 <nbgl_layoutAddHeader+0x3ac>
c0de6b74:	f898 0004 	ldrb.w	r0, [r8, #4]
c0de6b78:	f898 2005 	ldrb.w	r2, [r8, #5]
c0de6b7c:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de6b80:	f06f 0207 	mvn.w	r2, #7
c0de6b84:	eba2 0050 	sub.w	r0, r2, r0, lsr #1
c0de6b88:	f81a 2f21 	ldrb.w	r2, [sl, #33]!
c0de6b8c:	f80a 0c0a 	strb.w	r0, [sl, #-10]
c0de6b90:	0a00      	lsrs	r0, r0, #8
c0de6b92:	f89a 3002 	ldrb.w	r3, [sl, #2]
c0de6b96:	f89a 6003 	ldrb.w	r6, [sl, #3]
c0de6b9a:	f80a 0c09 	strb.w	r0, [sl, #-9]
c0de6b9e:	f89a 0001 	ldrb.w	r0, [sl, #1]
c0de6ba2:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6ba6:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de6baa:	f000 fcd5 	bl	c0de7558 <OUTLINED_FUNCTION_72>
c0de6bae:	2208      	movs	r2, #8
c0de6bb0:	eb02 0050 	add.w	r0, r2, r0, lsr #1
c0de6bb4:	f888 0017 	strb.w	r0, [r8, #23]
c0de6bb8:	0a00      	lsrs	r0, r0, #8
c0de6bba:	f888 0018 	strb.w	r0, [r8, #24]
c0de6bbe:	e061      	b.n	c0de6c84 <nbgl_layoutAddHeader+0x470>
c0de6bc0:	2805      	cmp	r0, #5
c0de6bc2:	d15f      	bne.n	c0de6c84 <nbgl_layoutAddHeader+0x470>
c0de6bc4:	6868      	ldr	r0, [r5, #4]
c0de6bc6:	2800      	cmp	r0, #0
c0de6bc8:	f000 8094 	beq.w	c0de6cf4 <nbgl_layoutAddHeader+0x4e0>
c0de6bcc:	f000 fab4 	bl	c0de7138 <OUTLINED_FUNCTION_8>
c0de6bd0:	7caa      	ldrb	r2, [r5, #18]
c0de6bd2:	4682      	mov	sl, r0
c0de6bd4:	2aff      	cmp	r2, #255	@ 0xff
c0de6bd6:	d00c      	beq.n	c0de6bf2 <nbgl_layoutAddHeader+0x3de>
c0de6bd8:	7ceb      	ldrb	r3, [r5, #19]
c0de6bda:	4620      	mov	r0, r4
c0de6bdc:	4651      	mov	r1, sl
c0de6bde:	f7fd f8a3 	bl	c0de3d28 <layoutAddCallbackObj>
c0de6be2:	2800      	cmp	r0, #0
c0de6be4:	d047      	beq.n	c0de6c76 <nbgl_layoutAddHeader+0x462>
c0de6be6:	2000      	movs	r0, #0
c0de6be8:	f88a 001d 	strb.w	r0, [sl, #29]
c0de6bec:	2001      	movs	r0, #1
c0de6bee:	f88a 001c 	strb.w	r0, [sl, #28]
c0de6bf2:	2003      	movs	r0, #3
c0de6bf4:	2106      	movs	r1, #6
c0de6bf6:	2700      	movs	r7, #0
c0de6bf8:	f88a 001f 	strb.w	r0, [sl, #31]
c0de6bfc:	f88a 1016 	strb.w	r1, [sl, #22]
c0de6c00:	7ca9      	ldrb	r1, [r5, #18]
c0de6c02:	f88a 0020 	strb.w	r0, [sl, #32]
c0de6c06:	2060      	movs	r0, #96	@ 0x60
c0de6c08:	f88a 7026 	strb.w	r7, [sl, #38]	@ 0x26
c0de6c0c:	f88a 7007 	strb.w	r7, [sl, #7]
c0de6c10:	f88a 7005 	strb.w	r7, [sl, #5]
c0de6c14:	f88a 0006 	strb.w	r0, [sl, #6]
c0de6c18:	2068      	movs	r0, #104	@ 0x68
c0de6c1a:	f88a 0004 	strb.w	r0, [sl, #4]
c0de6c1e:	4650      	mov	r0, sl
c0de6c20:	f800 7f25 	strb.w	r7, [r0, #37]!
c0de6c24:	70c7      	strb	r7, [r0, #3]
c0de6c26:	7087      	strb	r7, [r0, #2]
c0de6c28:	f1a1 00ff 	sub.w	r0, r1, #255	@ 0xff
c0de6c2c:	fab0 f080 	clz	r0, r0
c0de6c30:	0940      	lsrs	r0, r0, #5
c0de6c32:	0040      	lsls	r0, r0, #1
c0de6c34:	f88b 0021 	strb.w	r0, [fp, #33]	@ 0x21
c0de6c38:	f000 fb25 	bl	c0de7286 <OUTLINED_FUNCTION_22>
c0de6c3c:	4651      	mov	r1, sl
c0de6c3e:	0e02      	lsrs	r2, r0, #24
c0de6c40:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de6c44:	f000 faf1 	bl	c0de722a <OUTLINED_FUNCTION_17>
c0de6c48:	f88a 002f 	strb.w	r0, [sl, #47]	@ 0x2f
c0de6c4c:	68e0      	ldr	r0, [r4, #12]
c0de6c4e:	f000 fa4f 	bl	c0de70f0 <OUTLINED_FUNCTION_6>
c0de6c52:	f840 a022 	str.w	sl, [r0, r2, lsl #2]
c0de6c56:	2008      	movs	r0, #8
c0de6c58:	68e1      	ldr	r1, [r4, #12]
c0de6c5a:	f88a 001e 	strb.w	r0, [sl, #30]
c0de6c5e:	2060      	movs	r0, #96	@ 0x60
c0de6c60:	7188      	strb	r0, [r1, #6]
c0de6c62:	f891 0020 	ldrb.w	r0, [r1, #32]
c0de6c66:	71cf      	strb	r7, [r1, #7]
c0de6c68:	3001      	adds	r0, #1
c0de6c6a:	f881 0020 	strb.w	r0, [r1, #32]
c0de6c6e:	7828      	ldrb	r0, [r5, #0]
c0de6c70:	2805      	cmp	r0, #5
c0de6c72:	d10b      	bne.n	c0de6c8c <nbgl_layoutAddHeader+0x478>
c0de6c74:	e044      	b.n	c0de6d00 <nbgl_layoutAddHeader+0x4ec>
c0de6c76:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de6c7a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6c7e:	bf00      	nop
c0de6c80:	00005c89 	.word	0x00005c89
c0de6c84:	2000      	movs	r0, #0
c0de6c86:	71c8      	strb	r0, [r1, #7]
c0de6c88:	2060      	movs	r0, #96	@ 0x60
c0de6c8a:	7188      	strb	r0, [r1, #6]
c0de6c8c:	7868      	ldrb	r0, [r5, #1]
c0de6c8e:	b150      	cbz	r0, c0de6ca6 <nbgl_layoutAddHeader+0x492>
c0de6c90:	f000 faf4 	bl	c0de727c <OUTLINED_FUNCTION_21>
c0de6c94:	f000 fb20 	bl	c0de72d8 <OUTLINED_FUNCTION_27>
c0de6c98:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de6c9c:	2108      	movs	r1, #8
c0de6c9e:	7581      	strb	r1, [r0, #22]
c0de6ca0:	68e1      	ldr	r1, [r4, #12]
c0de6ca2:	f000 fbde 	bl	c0de7462 <OUTLINED_FUNCTION_50>
c0de6ca6:	68a0      	ldr	r0, [r4, #8]
c0de6ca8:	6001      	str	r1, [r0, #0]
c0de6caa:	68e0      	ldr	r0, [r4, #12]
c0de6cac:	f8d4 10a0 	ldr.w	r1, [r4, #160]	@ 0xa0
c0de6cb0:	4602      	mov	r2, r0
c0de6cb2:	f812 3f06 	ldrb.w	r3, [r2, #6]!
c0de6cb6:	7856      	ldrb	r6, [r2, #1]
c0de6cb8:	f801 0f12 	strb.w	r0, [r1, #18]!
c0de6cbc:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de6cc0:	f811 6d0c 	ldrb.w	r6, [r1, #-12]!
c0de6cc4:	784f      	ldrb	r7, [r1, #1]
c0de6cc6:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de6cca:	1af3      	subs	r3, r6, r3
c0de6ccc:	700b      	strb	r3, [r1, #0]
c0de6cce:	0a1b      	lsrs	r3, r3, #8
c0de6cd0:	704b      	strb	r3, [r1, #1]
c0de6cd2:	782b      	ldrb	r3, [r5, #0]
c0de6cd4:	f884 30aa 	strb.w	r3, [r4, #170]	@ 0xaa
c0de6cd8:	0e03      	lsrs	r3, r0, #24
c0de6cda:	73cb      	strb	r3, [r1, #15]
c0de6cdc:	0c03      	lsrs	r3, r0, #16
c0de6cde:	0a00      	lsrs	r0, r0, #8
c0de6ce0:	7348      	strb	r0, [r1, #13]
c0de6ce2:	2007      	movs	r0, #7
c0de6ce4:	738b      	strb	r3, [r1, #14]
c0de6ce6:	7408      	strb	r0, [r1, #16]
c0de6ce8:	7810      	ldrb	r0, [r2, #0]
c0de6cea:	7851      	ldrb	r1, [r2, #1]
c0de6cec:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6cf0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6cf4:	f04f 0a00 	mov.w	sl, #0
c0de6cf8:	2060      	movs	r0, #96	@ 0x60
c0de6cfa:	f881 a007 	strb.w	sl, [r1, #7]
c0de6cfe:	7188      	strb	r0, [r1, #6]
c0de6d00:	68e8      	ldr	r0, [r5, #12]
c0de6d02:	2800      	cmp	r0, #0
c0de6d04:	d0c2      	beq.n	c0de6c8c <nbgl_layoutAddHeader+0x478>
c0de6d06:	f000 fab9 	bl	c0de727c <OUTLINED_FUNCTION_21>
c0de6d0a:	68e1      	ldr	r1, [r4, #12]
c0de6d0c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de6d10:	784e      	ldrb	r6, [r1, #1]
c0de6d12:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de6d16:	788f      	ldrb	r7, [r1, #2]
c0de6d18:	78c9      	ldrb	r1, [r1, #3]
c0de6d1a:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de6d1e:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de6d22:	2600      	movs	r6, #0
c0de6d24:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6d28:	7686      	strb	r6, [r0, #26]
c0de6d2a:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de6d2e:	2160      	movs	r1, #96	@ 0x60
c0de6d30:	7641      	strb	r1, [r0, #25]
c0de6d32:	2102      	movs	r1, #2
c0de6d34:	7581      	strb	r1, [r0, #22]
c0de6d36:	68e0      	ldr	r0, [r4, #12]
c0de6d38:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de6d3c:	3101      	adds	r1, #1
c0de6d3e:	f880 1020 	strb.w	r1, [r0, #32]
c0de6d42:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6d46:	f000 f97f 	bl	c0de7048 <OUTLINED_FUNCTION_1>
c0de6d4a:	77c6      	strb	r6, [r0, #31]
c0de6d4c:	4607      	mov	r7, r0
c0de6d4e:	68e8      	ldr	r0, [r5, #12]
c0de6d50:	f004 fc3c 	bl	c0deb5cc <pic>
c0de6d54:	4601      	mov	r1, r0
c0de6d56:	201c      	movs	r0, #28
c0de6d58:	2301      	movs	r3, #1
c0de6d5a:	76be      	strb	r6, [r7, #26]
c0de6d5c:	7678      	strb	r0, [r7, #25]
c0de6d5e:	f000 fb77 	bl	c0de7450 <OUTLINED_FUNCTION_49>
c0de6d62:	2004      	movs	r0, #4
c0de6d64:	f887 0020 	strb.w	r0, [r7, #32]
c0de6d68:	2008      	movs	r0, #8
c0de6d6a:	75b8      	strb	r0, [r7, #22]
c0de6d6c:	f000 f970 	bl	c0de7050 <OUTLINED_FUNCTION_2>
c0de6d70:	68e1      	ldr	r1, [r4, #12]
c0de6d72:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de6d76:	784e      	ldrb	r6, [r1, #1]
c0de6d78:	f811 cc02 	ldrb.w	ip, [r1, #-2]
c0de6d7c:	788b      	ldrb	r3, [r1, #2]
c0de6d7e:	78c9      	ldrb	r1, [r1, #3]
c0de6d80:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de6d84:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de6d88:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6d8c:	f100 0238 	add.w	r2, r0, #56	@ 0x38
c0de6d90:	f841 702c 	str.w	r7, [r1, ip, lsl #2]
c0de6d94:	0a01      	lsrs	r1, r0, #8
c0de6d96:	71b8      	strb	r0, [r7, #6]
c0de6d98:	71f9      	strb	r1, [r7, #7]
c0de6d9a:	f81b 1f19 	ldrb.w	r1, [fp, #25]!
c0de6d9e:	f89b 3001 	ldrb.w	r3, [fp, #1]
c0de6da2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6da6:	eba1 0152 	sub.w	r1, r1, r2, lsr #1
c0de6daa:	f88b 1000 	strb.w	r1, [fp]
c0de6dae:	0a09      	lsrs	r1, r1, #8
c0de6db0:	f88b 1001 	strb.w	r1, [fp, #1]
c0de6db4:	68e1      	ldr	r1, [r4, #12]
c0de6db6:	f891 3020 	ldrb.w	r3, [r1, #32]
c0de6dba:	3301      	adds	r3, #1
c0de6dbc:	f881 3020 	strb.w	r3, [r1, #32]
c0de6dc0:	460b      	mov	r3, r1
c0de6dc2:	f813 6f06 	ldrb.w	r6, [r3, #6]!
c0de6dc6:	785f      	ldrb	r7, [r3, #1]
c0de6dc8:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de6dcc:	4430      	add	r0, r6
c0de6dce:	3038      	adds	r0, #56	@ 0x38
c0de6dd0:	7018      	strb	r0, [r3, #0]
c0de6dd2:	0a00      	lsrs	r0, r0, #8
c0de6dd4:	7058      	strb	r0, [r3, #1]
c0de6dd6:	0850      	lsrs	r0, r2, #1
c0de6dd8:	f1b8 0f00 	cmp.w	r8, #0
c0de6ddc:	d00b      	beq.n	c0de6df6 <nbgl_layoutAddHeader+0x5e2>
c0de6dde:	f818 2f19 	ldrb.w	r2, [r8, #25]!
c0de6de2:	f898 3001 	ldrb.w	r3, [r8, #1]
c0de6de6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6dea:	1a12      	subs	r2, r2, r0
c0de6dec:	f888 2000 	strb.w	r2, [r8]
c0de6df0:	0a12      	lsrs	r2, r2, #8
c0de6df2:	f888 2001 	strb.w	r2, [r8, #1]
c0de6df6:	f1ba 0f00 	cmp.w	sl, #0
c0de6dfa:	f43f af47 	beq.w	c0de6c8c <nbgl_layoutAddHeader+0x478>
c0de6dfe:	f81a 2f19 	ldrb.w	r2, [sl, #25]!
c0de6e02:	f89a 3001 	ldrb.w	r3, [sl, #1]
c0de6e06:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6e0a:	1a10      	subs	r0, r2, r0
c0de6e0c:	f88a 0000 	strb.w	r0, [sl]
c0de6e10:	0a00      	lsrs	r0, r0, #8
c0de6e12:	f88a 0001 	strb.w	r0, [sl, #1]
c0de6e16:	e739      	b.n	c0de6c8c <nbgl_layoutAddHeader+0x478>

c0de6e18 <nbgl_layoutAddProgressIndicator>:
c0de6e18:	b510      	push	{r4, lr}
c0de6e1a:	b086      	sub	sp, #24
c0de6e1c:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de6e1e:	f88d 100c 	strb.w	r1, [sp, #12]
c0de6e22:	2100      	movs	r1, #0
c0de6e24:	f88d 300e 	strb.w	r3, [sp, #14]
c0de6e28:	f88d 200d 	strb.w	r2, [sp, #13]
c0de6e2c:	9102      	str	r1, [sp, #8]
c0de6e2e:	2103      	movs	r1, #3
c0de6e30:	f88d 4011 	strb.w	r4, [sp, #17]
c0de6e34:	24ff      	movs	r4, #255	@ 0xff
c0de6e36:	f8ad 1004 	strh.w	r1, [sp, #4]
c0de6e3a:	f88d 4010 	strb.w	r4, [sp, #16]
c0de6e3e:	9c08      	ldr	r4, [sp, #32]
c0de6e40:	f88d 400f 	strb.w	r4, [sp, #15]
c0de6e44:	a901      	add	r1, sp, #4
c0de6e46:	f7ff fce5 	bl	c0de6814 <nbgl_layoutAddHeader>
c0de6e4a:	b006      	add	sp, #24
c0de6e4c:	bd10      	pop	{r4, pc}

c0de6e4e <nbgl_layoutDraw>:
c0de6e4e:	b1d8      	cbz	r0, c0de6e88 <nbgl_layoutDraw+0x3a>
c0de6e50:	b570      	push	{r4, r5, r6, lr}
c0de6e52:	6981      	ldr	r1, [r0, #24]
c0de6e54:	b1a1      	cbz	r1, c0de6e80 <nbgl_layoutDraw+0x32>
c0de6e56:	f8d0 20a0 	ldr.w	r2, [r0, #160]	@ 0xa0
c0de6e5a:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de6e5e:	7855      	ldrb	r5, [r2, #1]
c0de6e60:	f812 4c02 	ldrb.w	r4, [r2, #-2]
c0de6e64:	7896      	ldrb	r6, [r2, #2]
c0de6e66:	78d2      	ldrb	r2, [r2, #3]
c0de6e68:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de6e6c:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
c0de6e70:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
c0de6e74:	f842 1024 	str.w	r1, [r2, r4, lsl #2]
c0de6e78:	f8d0 00a0 	ldr.w	r0, [r0, #160]	@ 0xa0
c0de6e7c:	f000 f8de 	bl	c0de703c <OUTLINED_FUNCTION_0>
c0de6e80:	f004 f9af 	bl	c0deb1e2 <nbgl_screenRedraw>
c0de6e84:	2000      	movs	r0, #0
c0de6e86:	bd70      	pop	{r4, r5, r6, pc}
c0de6e88:	f000 baa3 	b.w	c0de73d2 <OUTLINED_FUNCTION_40>

c0de6e8c <nbgl_layoutRelease>:
c0de6e8c:	b510      	push	{r4, lr}
c0de6e8e:	b138      	cbz	r0, c0de6ea0 <nbgl_layoutRelease+0x14>
c0de6e90:	f000 fb31 	bl	c0de74f6 <OUTLINED_FUNCTION_64>
c0de6e94:	f894 10ae 	ldrb.w	r1, [r4, #174]	@ 0xae
c0de6e98:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6e9c:	0441      	lsls	r1, r0, #17
c0de6e9e:	d402      	bmi.n	c0de6ea6 <nbgl_layoutRelease+0x1a>
c0de6ea0:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de6ea4:	bd10      	pop	{r4, pc}
c0de6ea6:	07c1      	lsls	r1, r0, #31
c0de6ea8:	d014      	beq.n	c0de6ed4 <nbgl_layoutRelease+0x48>
c0de6eaa:	b2c0      	uxtb	r0, r0
c0de6eac:	08c0      	lsrs	r0, r0, #3
c0de6eae:	f004 f99d 	bl	c0deb1ec <nbgl_screenPop>
c0de6eb2:	480d      	ldr	r0, [pc, #52]	@ (c0de6ee8 <nbgl_layoutRelease+0x5c>)
c0de6eb4:	eb09 0100 	add.w	r1, r9, r0
c0de6eb8:	6849      	ldr	r1, [r1, #4]
c0de6eba:	42a1      	cmp	r1, r4
c0de6ebc:	d005      	beq.n	c0de6eca <nbgl_layoutRelease+0x3e>
c0de6ebe:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de6ec2:	6008      	str	r0, [r1, #0]
c0de6ec4:	6820      	ldr	r0, [r4, #0]
c0de6ec6:	6041      	str	r1, [r0, #4]
c0de6ec8:	e004      	b.n	c0de6ed4 <nbgl_layoutRelease+0x48>
c0de6eca:	6861      	ldr	r1, [r4, #4]
c0de6ecc:	4448      	add	r0, r9
c0de6ece:	6041      	str	r1, [r0, #4]
c0de6ed0:	2000      	movs	r0, #0
c0de6ed2:	6008      	str	r0, [r1, #0]
c0de6ed4:	f814 0fad 	ldrb.w	r0, [r4, #173]!
c0de6ed8:	7861      	ldrb	r1, [r4, #1]
c0de6eda:	7020      	strb	r0, [r4, #0]
c0de6edc:	2000      	movs	r0, #0
c0de6ede:	f001 01bf 	and.w	r1, r1, #191	@ 0xbf
c0de6ee2:	7061      	strb	r1, [r4, #1]
c0de6ee4:	bd10      	pop	{r4, pc}
c0de6ee6:	bf00      	nop
c0de6ee8:	00000a9c 	.word	0x00000a9c

c0de6eec <getLayoutAndLayoutObj>:
c0de6eec:	b570      	push	{r4, r5, r6, lr}
c0de6eee:	4c11      	ldr	r4, [pc, #68]	@ (c0de6f34 <getLayoutAndLayoutObj+0x48>)
c0de6ef0:	2300      	movs	r3, #0
c0de6ef2:	600b      	str	r3, [r1, #0]
c0de6ef4:	444c      	add	r4, r9
c0de6ef6:	6864      	ldr	r4, [r4, #4]
c0de6ef8:	b1d4      	cbz	r4, c0de6f30 <getLayoutAndLayoutObj+0x44>
c0de6efa:	f894 30ad 	ldrb.w	r3, [r4, #173]	@ 0xad
c0de6efe:	f894 50ae 	ldrb.w	r5, [r4, #174]	@ 0xae
c0de6f02:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de6f06:	045d      	lsls	r5, r3, #17
c0de6f08:	d401      	bmi.n	c0de6f0e <getLayoutAndLayoutObj+0x22>
c0de6f0a:	2300      	movs	r3, #0
c0de6f0c:	e010      	b.n	c0de6f30 <getLayoutAndLayoutObj+0x44>
c0de6f0e:	f44f 75fc 	mov.w	r5, #504	@ 0x1f8
c0de6f12:	ea05 1553 	and.w	r5, r5, r3, lsr #5
c0de6f16:	2300      	movs	r3, #0
c0de6f18:	429d      	cmp	r5, r3
c0de6f1a:	d0f6      	beq.n	c0de6f0a <getLayoutAndLayoutObj+0x1e>
c0de6f1c:	18e6      	adds	r6, r4, r3
c0de6f1e:	3308      	adds	r3, #8
c0de6f20:	6a36      	ldr	r6, [r6, #32]
c0de6f22:	4286      	cmp	r6, r0
c0de6f24:	d1f8      	bne.n	c0de6f18 <getLayoutAndLayoutObj+0x2c>
c0de6f26:	18e0      	adds	r0, r4, r3
c0de6f28:	2301      	movs	r3, #1
c0de6f2a:	600c      	str	r4, [r1, #0]
c0de6f2c:	3018      	adds	r0, #24
c0de6f2e:	6010      	str	r0, [r2, #0]
c0de6f30:	4618      	mov	r0, r3
c0de6f32:	bd70      	pop	{r4, r5, r6, pc}
c0de6f34:	00000a9c 	.word	0x00000a9c

c0de6f38 <animTickerCallback>:
c0de6f38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de6f3a:	483f      	ldr	r0, [pc, #252]	@ (c0de7038 <animTickerCallback+0x100>)
c0de6f3c:	4448      	add	r0, r9
c0de6f3e:	6842      	ldr	r2, [r0, #4]
c0de6f40:	b3b2      	cbz	r2, c0de6fb0 <animTickerCallback+0x78>
c0de6f42:	f892 00ad 	ldrb.w	r0, [r2, #173]	@ 0xad
c0de6f46:	f892 10ae 	ldrb.w	r1, [r2, #174]	@ 0xae
c0de6f4a:	ea40 2e01 	orr.w	lr, r0, r1, lsl #8
c0de6f4e:	ea5f 404e 	movs.w	r0, lr, lsl #17
c0de6f52:	d52d      	bpl.n	c0de6fb0 <animTickerCallback+0x78>
c0de6f54:	f8d2 c0a4 	ldr.w	ip, [r2, #164]	@ 0xa4
c0de6f58:	f1bc 0f00 	cmp.w	ip, #0
c0de6f5c:	d028      	beq.n	c0de6fb0 <animTickerCallback+0x78>
c0de6f5e:	f8d2 40a0 	ldr.w	r4, [r2, #160]	@ 0xa0
c0de6f62:	2600      	movs	r6, #0
c0de6f64:	f894 5020 	ldrb.w	r5, [r4, #32]
c0de6f68:	42b5      	cmp	r5, r6
c0de6f6a:	d021      	beq.n	c0de6fb0 <animTickerCallback+0x78>
c0de6f6c:	4620      	mov	r0, r4
c0de6f6e:	f810 7f22 	ldrb.w	r7, [r0, #34]!
c0de6f72:	7841      	ldrb	r1, [r0, #1]
c0de6f74:	7883      	ldrb	r3, [r0, #2]
c0de6f76:	78c0      	ldrb	r0, [r0, #3]
c0de6f78:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de6f7c:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de6f80:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de6f84:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de6f88:	7ec1      	ldrb	r1, [r0, #27]
c0de6f8a:	2901      	cmp	r1, #1
c0de6f8c:	d10e      	bne.n	c0de6fac <animTickerCallback+0x74>
c0de6f8e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de6f92:	7843      	ldrb	r3, [r0, #1]
c0de6f94:	7887      	ldrb	r7, [r0, #2]
c0de6f96:	78c0      	ldrb	r0, [r0, #3]
c0de6f98:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6f9c:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de6fa0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de6fa4:	6840      	ldr	r0, [r0, #4]
c0de6fa6:	7ec1      	ldrb	r1, [r0, #27]
c0de6fa8:	2902      	cmp	r1, #2
c0de6faa:	d002      	beq.n	c0de6fb2 <animTickerCallback+0x7a>
c0de6fac:	3601      	adds	r6, #1
c0de6fae:	e7db      	b.n	c0de6f68 <animTickerCallback+0x30>
c0de6fb0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de6fb2:	f89c 1005 	ldrb.w	r1, [ip, #5]
c0de6fb6:	b171      	cbz	r1, c0de6fd6 <animTickerCallback+0x9e>
c0de6fb8:	f892 40af 	ldrb.w	r4, [r2, #175]	@ 0xaf
c0de6fbc:	ea5f 714e 	movs.w	r1, lr, lsl #29
c0de6fc0:	d504      	bpl.n	c0de6fcc <animTickerCallback+0x94>
c0de6fc2:	f89c 1004 	ldrb.w	r1, [ip, #4]
c0de6fc6:	3901      	subs	r1, #1
c0de6fc8:	42a1      	cmp	r1, r4
c0de6fca:	dd0e      	ble.n	c0de6fea <animTickerCallback+0xb2>
c0de6fcc:	b9ac      	cbnz	r4, c0de6ffa <animTickerCallback+0xc2>
c0de6fce:	f04e 0e04 	orr.w	lr, lr, #4
c0de6fd2:	2400      	movs	r4, #0
c0de6fd4:	e00b      	b.n	c0de6fee <animTickerCallback+0xb6>
c0de6fd6:	f89c 1004 	ldrb.w	r1, [ip, #4]
c0de6fda:	f892 30af 	ldrb.w	r3, [r2, #175]	@ 0xaf
c0de6fde:	3901      	subs	r1, #1
c0de6fe0:	4299      	cmp	r1, r3
c0de6fe2:	bf14      	ite	ne
c0de6fe4:	3301      	addne	r3, #1
c0de6fe6:	2300      	moveq	r3, #0
c0de6fe8:	e00c      	b.n	c0de7004 <animTickerCallback+0xcc>
c0de6fea:	f02e 0e04 	bic.w	lr, lr, #4
c0de6fee:	ea4f 211e 	mov.w	r1, lr, lsr #8
c0de6ff2:	f882 e0ad 	strb.w	lr, [r2, #173]	@ 0xad
c0de6ff6:	f882 10ae 	strb.w	r1, [r2, #174]	@ 0xae
c0de6ffa:	ea5f 714e 	movs.w	r1, lr, lsl #29
c0de6ffe:	bf54      	ite	pl
c0de7000:	1e63      	subpl	r3, r4, #1
c0de7002:	1c63      	addmi	r3, r4, #1
c0de7004:	f882 30af 	strb.w	r3, [r2, #175]	@ 0xaf
c0de7008:	f8dc 2000 	ldr.w	r2, [ip]
c0de700c:	b2d9      	uxtb	r1, r3
c0de700e:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de7012:	4602      	mov	r2, r0
c0de7014:	f802 1f21 	strb.w	r1, [r2, #33]!
c0de7018:	0e0b      	lsrs	r3, r1, #24
c0de701a:	70d3      	strb	r3, [r2, #3]
c0de701c:	0c0b      	lsrs	r3, r1, #16
c0de701e:	0a09      	lsrs	r1, r1, #8
c0de7020:	7093      	strb	r3, [r2, #2]
c0de7022:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de7026:	f004 f8c8 	bl	c0deb1ba <nbgl_objDraw>
c0de702a:	2004      	movs	r0, #4
c0de702c:	2101      	movs	r1, #1
c0de702e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de7032:	f004 b8b8 	b.w	c0deb1a6 <nbgl_refreshSpecialWithPostRefresh>
c0de7036:	bf00      	nop
c0de7038:	00000a9c 	.word	0x00000a9c

c0de703c <OUTLINED_FUNCTION_0>:
c0de703c:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de7040:	3101      	adds	r1, #1
c0de7042:	f880 1020 	strb.w	r1, [r0, #32]
c0de7046:	4770      	bx	lr

c0de7048 <OUTLINED_FUNCTION_1>:
c0de7048:	08c1      	lsrs	r1, r0, #3
c0de704a:	2004      	movs	r0, #4
c0de704c:	f004 b8dd 	b.w	c0deb20a <nbgl_objPoolGet>

c0de7050 <OUTLINED_FUNCTION_2>:
c0de7050:	4638      	mov	r0, r7
c0de7052:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de7056:	70c2      	strb	r2, [r0, #3]
c0de7058:	0c0a      	lsrs	r2, r1, #16
c0de705a:	7082      	strb	r2, [r0, #2]
c0de705c:	0a08      	lsrs	r0, r1, #8
c0de705e:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de7062:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de7066:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de706a:	f040 0001 	orr.w	r0, r0, #1
c0de706e:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de7072:	200b      	movs	r0, #11
c0de7074:	f004 b8e2 	b.w	c0deb23c <nbgl_getTextHeightInWidth>

c0de7078 <OUTLINED_FUNCTION_3>:
c0de7078:	2202      	movs	r2, #2
c0de707a:	2600      	movs	r6, #0
c0de707c:	75ba      	strb	r2, [r7, #22]
c0de707e:	465a      	mov	r2, fp
c0de7080:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de7084:	7854      	ldrb	r4, [r2, #1]
c0de7086:	7895      	ldrb	r5, [r2, #2]
c0de7088:	78d2      	ldrb	r2, [r2, #3]
c0de708a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de708e:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de7092:	7ebc      	ldrb	r4, [r7, #26]
c0de7094:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
c0de7098:	7e7b      	ldrb	r3, [r7, #25]
c0de709a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de709e:	4770      	bx	lr

c0de70a0 <OUTLINED_FUNCTION_4>:
c0de70a0:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de70a4:	784c      	ldrb	r4, [r1, #1]
c0de70a6:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de70aa:	788d      	ldrb	r5, [r1, #2]
c0de70ac:	78c9      	ldrb	r1, [r1, #3]
c0de70ae:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de70b2:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de70b6:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de70ba:	4770      	bx	lr

c0de70bc <OUTLINED_FUNCTION_5>:
c0de70bc:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de70c0:	70ca      	strb	r2, [r1, #3]
c0de70c2:	0c02      	lsrs	r2, r0, #16
c0de70c4:	0a00      	lsrs	r0, r0, #8
c0de70c6:	708a      	strb	r2, [r1, #2]
c0de70c8:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de70cc:	68e0      	ldr	r0, [r4, #12]
c0de70ce:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de70d2:	7843      	ldrb	r3, [r0, #1]
c0de70d4:	f810 cc02 	ldrb.w	ip, [r0, #-2]
c0de70d8:	7882      	ldrb	r2, [r0, #2]
c0de70da:	78c0      	ldrb	r0, [r0, #3]
c0de70dc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de70e0:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de70e4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de70e8:	f840 602c 	str.w	r6, [r0, ip, lsl #2]
c0de70ec:	200c      	movs	r0, #12
c0de70ee:	4770      	bx	lr

c0de70f0 <OUTLINED_FUNCTION_6>:
c0de70f0:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de70f4:	7843      	ldrb	r3, [r0, #1]
c0de70f6:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de70fa:	7886      	ldrb	r6, [r0, #2]
c0de70fc:	78c0      	ldrb	r0, [r0, #3]
c0de70fe:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7102:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de7106:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de710a:	4770      	bx	lr

c0de710c <OUTLINED_FUNCTION_7>:
c0de710c:	f885 0020 	strb.w	r0, [r5, #32]
c0de7110:	4628      	mov	r0, r5
c0de7112:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de7116:	70c2      	strb	r2, [r0, #3]
c0de7118:	0c0a      	lsrs	r2, r1, #16
c0de711a:	7082      	strb	r2, [r0, #2]
c0de711c:	0a08      	lsrs	r0, r1, #8
c0de711e:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de7122:	f885 0027 	strb.w	r0, [r5, #39]	@ 0x27
c0de7126:	f895 0024 	ldrb.w	r0, [r5, #36]	@ 0x24
c0de712a:	f040 0001 	orr.w	r0, r0, #1
c0de712e:	f885 0024 	strb.w	r0, [r5, #36]	@ 0x24
c0de7132:	200b      	movs	r0, #11
c0de7134:	f004 b882 	b.w	c0deb23c <nbgl_getTextHeightInWidth>

c0de7138 <OUTLINED_FUNCTION_8>:
c0de7138:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de713c:	08c1      	lsrs	r1, r0, #3
c0de713e:	2005      	movs	r0, #5
c0de7140:	f004 b863 	b.w	c0deb20a <nbgl_objPoolGet>

c0de7144 <OUTLINED_FUNCTION_9>:
c0de7144:	784b      	ldrb	r3, [r1, #1]
c0de7146:	788e      	ldrb	r6, [r1, #2]
c0de7148:	78c9      	ldrb	r1, [r1, #3]
c0de714a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de714e:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de7152:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de7156:	4770      	bx	lr

c0de7158 <OUTLINED_FUNCTION_10>:
c0de7158:	465a      	mov	r2, fp
c0de715a:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de715e:	7854      	ldrb	r4, [r2, #1]
c0de7160:	7895      	ldrb	r5, [r2, #2]
c0de7162:	78d2      	ldrb	r2, [r2, #3]
c0de7164:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de7168:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de716c:	463d      	mov	r5, r7
c0de716e:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
c0de7172:	eb02 0481 	add.w	r4, r2, r1, lsl #2
c0de7176:	f854 3c04 	ldr.w	r3, [r4, #-4]
c0de717a:	f805 3f12 	strb.w	r3, [r5, #18]!
c0de717e:	0e1e      	lsrs	r6, r3, #24
c0de7180:	70ee      	strb	r6, [r5, #3]
c0de7182:	0c1e      	lsrs	r6, r3, #16
c0de7184:	0a1b      	lsrs	r3, r3, #8
c0de7186:	4770      	bx	lr

c0de7188 <OUTLINED_FUNCTION_11>:
c0de7188:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de718c:	70c2      	strb	r2, [r0, #3]
c0de718e:	0c0a      	lsrs	r2, r1, #16
c0de7190:	7082      	strb	r2, [r0, #2]
c0de7192:	0a08      	lsrs	r0, r1, #8
c0de7194:	4770      	bx	lr

c0de7196 <OUTLINED_FUNCTION_12>:
c0de7196:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de719a:	70ca      	strb	r2, [r1, #3]
c0de719c:	0c02      	lsrs	r2, r0, #16
c0de719e:	0a00      	lsrs	r0, r0, #8
c0de71a0:	708a      	strb	r2, [r1, #2]
c0de71a2:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de71a6:	6920      	ldr	r0, [r4, #16]
c0de71a8:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de71ac:	7843      	ldrb	r3, [r0, #1]
c0de71ae:	f810 cc02 	ldrb.w	ip, [r0, #-2]
c0de71b2:	7882      	ldrb	r2, [r0, #2]
c0de71b4:	78c0      	ldrb	r0, [r0, #3]
c0de71b6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de71ba:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de71be:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de71c2:	4770      	bx	lr

c0de71c4 <OUTLINED_FUNCTION_13>:
c0de71c4:	08c1      	lsrs	r1, r0, #3
c0de71c6:	2005      	movs	r0, #5
c0de71c8:	f004 b81f 	b.w	c0deb20a <nbgl_objPoolGet>

c0de71cc <OUTLINED_FUNCTION_14>:
c0de71cc:	6920      	ldr	r0, [r4, #16]
c0de71ce:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de71d2:	7843      	ldrb	r3, [r0, #1]
c0de71d4:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de71d8:	7887      	ldrb	r7, [r0, #2]
c0de71da:	78c0      	ldrb	r0, [r0, #3]
c0de71dc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de71e0:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de71e4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de71e8:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de71ec:	200c      	movs	r0, #12
c0de71ee:	f886 801c 	strb.w	r8, [r6, #28]
c0de71f2:	f886 0023 	strb.w	r0, [r6, #35]	@ 0x23
c0de71f6:	4770      	bx	lr

c0de71f8 <OUTLINED_FUNCTION_15>:
c0de71f8:	4620      	mov	r0, r4
c0de71fa:	4631      	mov	r1, r6
c0de71fc:	f7fc bd94 	b.w	c0de3d28 <layoutAddCallbackObj>

c0de7200 <OUTLINED_FUNCTION_16>:
c0de7200:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de7204:	4630      	mov	r0, r6
c0de7206:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de720a:	70c2      	strb	r2, [r0, #3]
c0de720c:	0c0a      	lsrs	r2, r1, #16
c0de720e:	7082      	strb	r2, [r0, #2]
c0de7210:	0a08      	lsrs	r0, r1, #8
c0de7212:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de7216:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de721a:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de721e:	f040 0001 	orr.w	r0, r0, #1
c0de7222:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de7226:	200b      	movs	r0, #11
c0de7228:	4770      	bx	lr

c0de722a <OUTLINED_FUNCTION_17>:
c0de722a:	70ca      	strb	r2, [r1, #3]
c0de722c:	0c02      	lsrs	r2, r0, #16
c0de722e:	0a00      	lsrs	r0, r0, #8
c0de7230:	708a      	strb	r2, [r1, #2]
c0de7232:	4770      	bx	lr

c0de7234 <OUTLINED_FUNCTION_18>:
c0de7234:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7238:	7842      	ldrb	r2, [r0, #1]
c0de723a:	7883      	ldrb	r3, [r0, #2]
c0de723c:	78c0      	ldrb	r0, [r0, #3]
c0de723e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7242:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7246:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de724a:	4770      	bx	lr

c0de724c <OUTLINED_FUNCTION_19>:
c0de724c:	08c1      	lsrs	r1, r0, #3
c0de724e:	2001      	movs	r0, #1
c0de7250:	f003 bfdb 	b.w	c0deb20a <nbgl_objPoolGet>

c0de7254 <OUTLINED_FUNCTION_20>:
c0de7254:	f887 0020 	strb.w	r0, [r7, #32]
c0de7258:	4638      	mov	r0, r7
c0de725a:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de725e:	70c2      	strb	r2, [r0, #3]
c0de7260:	0c0a      	lsrs	r2, r1, #16
c0de7262:	7082      	strb	r2, [r0, #2]
c0de7264:	0a08      	lsrs	r0, r1, #8
c0de7266:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de726a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de726e:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de7272:	f040 0001 	orr.w	r0, r0, #1
c0de7276:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de727a:	4770      	bx	lr

c0de727c <OUTLINED_FUNCTION_21>:
c0de727c:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de7280:	08c0      	lsrs	r0, r0, #3
c0de7282:	f7fe bbdf 	b.w	c0de5a44 <createHorizontalLine>

c0de7286 <OUTLINED_FUNCTION_22>:
c0de7286:	6868      	ldr	r0, [r5, #4]
c0de7288:	f004 b9a0 	b.w	c0deb5cc <pic>

c0de728c <OUTLINED_FUNCTION_23>:
c0de728c:	7842      	ldrb	r2, [r0, #1]
c0de728e:	7883      	ldrb	r3, [r0, #2]
c0de7290:	78c0      	ldrb	r0, [r0, #3]
c0de7292:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7296:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de729a:	4770      	bx	lr

c0de729c <OUTLINED_FUNCTION_24>:
c0de729c:	f99a 00ae 	ldrsb.w	r0, [sl, #174]	@ 0xae
c0de72a0:	f89a 10ad 	ldrb.w	r1, [sl, #173]	@ 0xad
c0de72a4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de72a8:	2103      	movs	r1, #3
c0de72aa:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de72ae:	4770      	bx	lr

c0de72b0 <OUTLINED_FUNCTION_25>:
c0de72b0:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de72b4:	784c      	ldrb	r4, [r1, #1]
c0de72b6:	f811 cc02 	ldrb.w	ip, [r1, #-2]
c0de72ba:	788b      	ldrb	r3, [r1, #2]
c0de72bc:	78c9      	ldrb	r1, [r1, #3]
c0de72be:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de72c2:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de72c6:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de72ca:	f841 702c 	str.w	r7, [r1, ip, lsl #2]
c0de72ce:	4770      	bx	lr

c0de72d0 <OUTLINED_FUNCTION_26>:
c0de72d0:	08c1      	lsrs	r1, r0, #3
c0de72d2:	2002      	movs	r0, #2
c0de72d4:	f003 bf99 	b.w	c0deb20a <nbgl_objPoolGet>

c0de72d8 <OUTLINED_FUNCTION_27>:
c0de72d8:	68e1      	ldr	r1, [r4, #12]
c0de72da:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de72de:	784e      	ldrb	r6, [r1, #1]
c0de72e0:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de72e4:	788f      	ldrb	r7, [r1, #2]
c0de72e6:	78c9      	ldrb	r1, [r1, #3]
c0de72e8:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de72ec:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de72f0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de72f4:	4770      	bx	lr

c0de72f6 <OUTLINED_FUNCTION_28>:
c0de72f6:	70ca      	strb	r2, [r1, #3]
c0de72f8:	0c02      	lsrs	r2, r0, #16
c0de72fa:	0a00      	lsrs	r0, r0, #8
c0de72fc:	708a      	strb	r2, [r1, #2]
c0de72fe:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de7302:	6920      	ldr	r0, [r4, #16]
c0de7304:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7308:	7843      	ldrb	r3, [r0, #1]
c0de730a:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de730e:	7887      	ldrb	r7, [r0, #2]
c0de7310:	78c0      	ldrb	r0, [r0, #3]
c0de7312:	4770      	bx	lr

c0de7314 <OUTLINED_FUNCTION_29>:
c0de7314:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de7318:	70ca      	strb	r2, [r1, #3]
c0de731a:	0c02      	lsrs	r2, r0, #16
c0de731c:	0a00      	lsrs	r0, r0, #8
c0de731e:	708a      	strb	r2, [r1, #2]
c0de7320:	f886 002f 	strb.w	r0, [r6, #47]	@ 0x2f
c0de7324:	4770      	bx	lr

c0de7326 <OUTLINED_FUNCTION_30>:
c0de7326:	3101      	adds	r1, #1
c0de7328:	f842 7026 	str.w	r7, [r2, r6, lsl #2]
c0de732c:	f88b 1020 	strb.w	r1, [fp, #32]
c0de7330:	9900      	ldr	r1, [sp, #0]
c0de7332:	4408      	add	r0, r1
c0de7334:	18c1      	adds	r1, r0, r3
c0de7336:	4770      	bx	lr

c0de7338 <OUTLINED_FUNCTION_31>:
c0de7338:	f801 0f25 	strb.w	r0, [r1, #37]!
c0de733c:	70ca      	strb	r2, [r1, #3]
c0de733e:	0c02      	lsrs	r2, r0, #16
c0de7340:	0a00      	lsrs	r0, r0, #8
c0de7342:	708a      	strb	r2, [r1, #2]
c0de7344:	f886 0026 	strb.w	r0, [r6, #38]	@ 0x26
c0de7348:	4770      	bx	lr

c0de734a <OUTLINED_FUNCTION_32>:
c0de734a:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de734e:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de7352:	3101      	adds	r1, #1
c0de7354:	f880 1020 	strb.w	r1, [r0, #32]
c0de7358:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de735c:	08c1      	lsrs	r1, r0, #3
c0de735e:	2004      	movs	r0, #4
c0de7360:	4730      	bx	r6

c0de7362 <OUTLINED_FUNCTION_33>:
c0de7362:	77b0      	strb	r0, [r6, #30]
c0de7364:	6960      	ldr	r0, [r4, #20]
c0de7366:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de736a:	7842      	ldrb	r2, [r0, #1]
c0de736c:	7883      	ldrb	r3, [r0, #2]
c0de736e:	78c0      	ldrb	r0, [r0, #3]
c0de7370:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7374:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7378:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de737c:	4770      	bx	lr

c0de737e <OUTLINED_FUNCTION_34>:
c0de737e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7382:	7843      	ldrb	r3, [r0, #1]
c0de7384:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de7388:	7884      	ldrb	r4, [r0, #2]
c0de738a:	78c0      	ldrb	r0, [r0, #3]
c0de738c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7390:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de7394:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de7398:	4770      	bx	lr

c0de739a <OUTLINED_FUNCTION_35>:
c0de739a:	f886 0021 	strb.w	r0, [r6, #33]	@ 0x21
c0de739e:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de73a2:	f040 0001 	orr.w	r0, r0, #1
c0de73a6:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de73aa:	4630      	mov	r0, r6
c0de73ac:	f003 bf05 	b.w	c0deb1ba <nbgl_objDraw>

c0de73b0 <OUTLINED_FUNCTION_36>:
c0de73b0:	7981      	ldrb	r1, [r0, #6]
c0de73b2:	79c0      	ldrb	r0, [r0, #7]
c0de73b4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de73b8:	4770      	bx	lr

c0de73ba <OUTLINED_FUNCTION_37>:
c0de73ba:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de73be:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de73c2:	4770      	bx	lr

c0de73c4 <OUTLINED_FUNCTION_39>:
c0de73c4:	0a01      	lsrs	r1, r0, #8
c0de73c6:	71b8      	strb	r0, [r7, #6]
c0de73c8:	71f9      	strb	r1, [r7, #7]
c0de73ca:	f89b 1020 	ldrb.w	r1, [fp, #32]
c0de73ce:	2900      	cmp	r1, #0
c0de73d0:	4770      	bx	lr

c0de73d2 <OUTLINED_FUNCTION_40>:
c0de73d2:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de73d6:	4770      	bx	lr

c0de73d8 <OUTLINED_FUNCTION_41>:
c0de73d8:	200c      	movs	r0, #12
c0de73da:	f886 b01c 	strb.w	fp, [r6, #28]
c0de73de:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de73e2:	2005      	movs	r0, #5
c0de73e4:	4770      	bx	lr

c0de73e6 <OUTLINED_FUNCTION_42>:
c0de73e6:	f99a 00ae 	ldrsb.w	r0, [sl, #174]	@ 0xae
c0de73ea:	f89a 10ad 	ldrb.w	r1, [sl, #173]	@ 0xad
c0de73ee:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de73f2:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de73f6:	f04f 0003 	mov.w	r0, #3
c0de73fa:	4770      	bx	lr

c0de73fc <OUTLINED_FUNCTION_43>:
c0de73fc:	4630      	mov	r0, r6
c0de73fe:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de7402:	70c2      	strb	r2, [r0, #3]
c0de7404:	0c0a      	lsrs	r2, r1, #16
c0de7406:	7082      	strb	r2, [r0, #2]
c0de7408:	0a08      	lsrs	r0, r1, #8
c0de740a:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de740e:	4770      	bx	lr

c0de7410 <OUTLINED_FUNCTION_44>:
c0de7410:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de7414:	784b      	ldrb	r3, [r1, #1]
c0de7416:	788f      	ldrb	r7, [r1, #2]
c0de7418:	78c9      	ldrb	r1, [r1, #3]
c0de741a:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de741e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7422:	4770      	bx	lr

c0de7424 <OUTLINED_FUNCTION_45>:
c0de7424:	7842      	ldrb	r2, [r0, #1]
c0de7426:	7883      	ldrb	r3, [r0, #2]
c0de7428:	78c0      	ldrb	r0, [r0, #3]
c0de742a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de742e:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7432:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de7436:	4770      	bx	lr

c0de7438 <OUTLINED_FUNCTION_46>:
c0de7438:	68a8      	ldr	r0, [r5, #8]
c0de743a:	f004 b8c7 	b.w	c0deb5cc <pic>

c0de743e <OUTLINED_FUNCTION_48>:
c0de743e:	f8d4 00a0 	ldr.w	r0, [r4, #160]	@ 0xa0
c0de7442:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de7446:	3101      	adds	r1, #1
c0de7448:	f880 1020 	strb.w	r1, [r0, #32]
c0de744c:	2000      	movs	r0, #0
c0de744e:	4770      	bx	lr

c0de7450 <OUTLINED_FUNCTION_49>:
c0de7450:	2001      	movs	r0, #1
c0de7452:	0e0a      	lsrs	r2, r1, #24
c0de7454:	7178      	strb	r0, [r7, #5]
c0de7456:	20a0      	movs	r0, #160	@ 0xa0
c0de7458:	7138      	strb	r0, [r7, #4]
c0de745a:	200b      	movs	r0, #11
c0de745c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de7460:	4770      	bx	lr

c0de7462 <OUTLINED_FUNCTION_50>:
c0de7462:	f891 0020 	ldrb.w	r0, [r1, #32]
c0de7466:	3001      	adds	r0, #1
c0de7468:	f881 0020 	strb.w	r0, [r1, #32]
c0de746c:	4770      	bx	lr

c0de746e <OUTLINED_FUNCTION_51>:
c0de746e:	2100      	movs	r1, #0
c0de7470:	7146      	strb	r6, [r0, #5]
c0de7472:	77c1      	strb	r1, [r0, #31]
c0de7474:	21e0      	movs	r1, #224	@ 0xe0
c0de7476:	7101      	strb	r1, [r0, #4]
c0de7478:	4770      	bx	lr

c0de747a <OUTLINED_FUNCTION_52>:
c0de747a:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de747e:	2005      	movs	r0, #5
c0de7480:	f886 0020 	strb.w	r0, [r6, #32]
c0de7484:	4770      	bx	lr

c0de7486 <OUTLINED_FUNCTION_53>:
c0de7486:	70ca      	strb	r2, [r1, #3]
c0de7488:	0c02      	lsrs	r2, r0, #16
c0de748a:	0a00      	lsrs	r0, r0, #8
c0de748c:	708a      	strb	r2, [r1, #2]
c0de748e:	7048      	strb	r0, [r1, #1]
c0de7490:	4770      	bx	lr

c0de7492 <OUTLINED_FUNCTION_54>:
c0de7492:	4631      	mov	r1, r6
c0de7494:	0e02      	lsrs	r2, r0, #24
c0de7496:	f886 a01d 	strb.w	sl, [r6, #29]
c0de749a:	4770      	bx	lr

c0de749c <OUTLINED_FUNCTION_55>:
c0de749c:	2301      	movs	r3, #1
c0de749e:	7178      	strb	r0, [r7, #5]
c0de74a0:	20a0      	movs	r0, #160	@ 0xa0
c0de74a2:	0e0a      	lsrs	r2, r1, #24
c0de74a4:	7138      	strb	r0, [r7, #4]
c0de74a6:	4770      	bx	lr

c0de74a8 <OUTLINED_FUNCTION_56>:
c0de74a8:	08c1      	lsrs	r1, r0, #3
c0de74aa:	2004      	movs	r0, #4
c0de74ac:	f003 beb2 	b.w	c0deb214 <nbgl_containerPoolGet>

c0de74b0 <OUTLINED_FUNCTION_57>:
c0de74b0:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de74b4:	08c1      	lsrs	r1, r0, #3
c0de74b6:	2005      	movs	r0, #5
c0de74b8:	f003 beac 	b.w	c0deb214 <nbgl_containerPoolGet>

c0de74bc <OUTLINED_FUNCTION_58>:
c0de74bc:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de74c0:	08c1      	lsrs	r1, r0, #3
c0de74c2:	2003      	movs	r0, #3
c0de74c4:	f003 bea1 	b.w	c0deb20a <nbgl_objPoolGet>

c0de74c8 <OUTLINED_FUNCTION_59>:
c0de74c8:	71d1      	strb	r1, [r2, #7]
c0de74ca:	7190      	strb	r0, [r2, #6]
c0de74cc:	f892 0020 	ldrb.w	r0, [r2, #32]
c0de74d0:	3001      	adds	r0, #1
c0de74d2:	f882 0020 	strb.w	r0, [r2, #32]
c0de74d6:	4770      	bx	lr

c0de74d8 <OUTLINED_FUNCTION_60>:
c0de74d8:	7801      	ldrb	r1, [r0, #0]
c0de74da:	7840      	ldrb	r0, [r0, #1]
c0de74dc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de74e0:	f64f 71f0 	movw	r1, #65520	@ 0xfff0
c0de74e4:	1a08      	subs	r0, r1, r0
c0de74e6:	4770      	bx	lr

c0de74e8 <OUTLINED_FUNCTION_61>:
c0de74e8:	f005 0301 	and.w	r3, r5, #1
c0de74ec:	f003 bea6 	b.w	c0deb23c <nbgl_getTextHeightInWidth>

c0de74f0 <OUTLINED_FUNCTION_62>:
c0de74f0:	200d      	movs	r0, #13
c0de74f2:	f003 bea3 	b.w	c0deb23c <nbgl_getTextHeightInWidth>

c0de74f6 <OUTLINED_FUNCTION_64>:
c0de74f6:	4604      	mov	r4, r0
c0de74f8:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de74fc:	4770      	bx	lr

c0de74fe <OUTLINED_FUNCTION_65>:
c0de74fe:	758a      	strb	r2, [r1, #22]
c0de7500:	460a      	mov	r2, r1
c0de7502:	f802 0f22 	strb.w	r0, [r2, #34]!
c0de7506:	0c00      	lsrs	r0, r0, #16
c0de7508:	7090      	strb	r0, [r2, #2]
c0de750a:	4770      	bx	lr

c0de750c <OUTLINED_FUNCTION_66>:
c0de750c:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de7510:	7893      	ldrb	r3, [r2, #2]
c0de7512:	78d2      	ldrb	r2, [r2, #3]
c0de7514:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de7518:	4770      	bx	lr

c0de751a <OUTLINED_FUNCTION_67>:
c0de751a:	f88d 0010 	strb.w	r0, [sp, #16]
c0de751e:	8928      	ldrh	r0, [r5, #8]
c0de7520:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de7524:	4640      	mov	r0, r8
c0de7526:	4770      	bx	lr

c0de7528 <OUTLINED_FUNCTION_68>:
c0de7528:	f897 00ad 	ldrb.w	r0, [r7, #173]	@ 0xad
c0de752c:	08c1      	lsrs	r1, r0, #3
c0de752e:	2004      	movs	r0, #4
c0de7530:	4720      	bx	r4

c0de7532 <OUTLINED_FUNCTION_69>:
c0de7532:	70e9      	strb	r1, [r5, #3]
c0de7534:	0c01      	lsrs	r1, r0, #16
c0de7536:	0a00      	lsrs	r0, r0, #8
c0de7538:	70a9      	strb	r1, [r5, #2]
c0de753a:	f88a 0023 	strb.w	r0, [sl, #35]	@ 0x23
c0de753e:	4770      	bx	lr

c0de7540 <OUTLINED_FUNCTION_70>:
c0de7540:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7544:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de7548:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de754c:	4770      	bx	lr

c0de754e <OUTLINED_FUNCTION_71>:
c0de754e:	f886 a018 	strb.w	sl, [r6, #24]
c0de7552:	f886 8016 	strb.w	r8, [r6, #22]
c0de7556:	4770      	bx	lr

c0de7558 <OUTLINED_FUNCTION_72>:
c0de7558:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de755c:	7802      	ldrb	r2, [r0, #0]
c0de755e:	7840      	ldrb	r0, [r0, #1]
c0de7560:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7564:	4770      	bx	lr

c0de7566 <OUTLINED_FUNCTION_73>:
c0de7566:	70f1      	strb	r1, [r6, #3]
c0de7568:	0c01      	lsrs	r1, r0, #16
c0de756a:	0a00      	lsrs	r0, r0, #8
c0de756c:	70b1      	strb	r1, [r6, #2]
c0de756e:	f88b 0023 	strb.w	r0, [fp, #35]	@ 0x23
c0de7572:	4770      	bx	lr

c0de7574 <OUTLINED_FUNCTION_74>:
c0de7574:	7a2a      	ldrb	r2, [r5, #8]
c0de7576:	7a6b      	ldrb	r3, [r5, #9]
c0de7578:	4620      	mov	r0, r4
c0de757a:	f7fc bbd5 	b.w	c0de3d28 <layoutAddCallbackObj>

c0de757e <OUTLINED_FUNCTION_75>:
c0de757e:	f841 4022 	str.w	r4, [r1, r2, lsl #2]
c0de7582:	2100      	movs	r1, #0
c0de7584:	7621      	strb	r1, [r4, #24]
c0de7586:	2110      	movs	r1, #16
c0de7588:	75e1      	strb	r1, [r4, #23]
c0de758a:	4770      	bx	lr

c0de758c <layoutNavigationCallback>:
c0de758c:	b570      	push	{r4, r5, r6, lr}
c0de758e:	290a      	cmp	r1, #10
c0de7590:	d029      	beq.n	c0de75e6 <layoutNavigationCallback+0x5a>
c0de7592:	2909      	cmp	r1, #9
c0de7594:	d02b      	beq.n	c0de75ee <layoutNavigationCallback+0x62>
c0de7596:	2900      	cmp	r1, #0
c0de7598:	d14a      	bne.n	c0de7630 <layoutNavigationCallback+0xa4>
c0de759a:	4604      	mov	r4, r0
c0de759c:	7bc1      	ldrb	r1, [r0, #15]
c0de759e:	f814 5f0e 	ldrb.w	r5, [r4, #14]!
c0de75a2:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de75a6:	78a5      	ldrb	r5, [r4, #2]
c0de75a8:	78e4      	ldrb	r4, [r4, #3]
c0de75aa:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de75ae:	ea41 4104 	orr.w	r1, r1, r4, lsl #16
c0de75b2:	460d      	mov	r5, r1
c0de75b4:	f891 4023 	ldrb.w	r4, [r1, #35]	@ 0x23
c0de75b8:	f815 6f22 	ldrb.w	r6, [r5, #34]!
c0de75bc:	ea46 2404 	orr.w	r4, r6, r4, lsl #8
c0de75c0:	78ae      	ldrb	r6, [r5, #2]
c0de75c2:	78ed      	ldrb	r5, [r5, #3]
c0de75c4:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
c0de75c8:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0de75cc:	6825      	ldr	r5, [r4, #0]
c0de75ce:	4285      	cmp	r5, r0
c0de75d0:	d01e      	beq.n	c0de7610 <layoutNavigationCallback+0x84>
c0de75d2:	6865      	ldr	r5, [r4, #4]
c0de75d4:	4285      	cmp	r5, r0
c0de75d6:	d01e      	beq.n	c0de7616 <layoutNavigationCallback+0x8a>
c0de75d8:	68a4      	ldr	r4, [r4, #8]
c0de75da:	4284      	cmp	r4, r0
c0de75dc:	d128      	bne.n	c0de7630 <layoutNavigationCallback+0xa4>
c0de75de:	2a01      	cmp	r2, #1
c0de75e0:	d81d      	bhi.n	c0de761e <layoutNavigationCallback+0x92>
c0de75e2:	7818      	ldrb	r0, [r3, #0]
c0de75e4:	e01f      	b.n	c0de7626 <layoutNavigationCallback+0x9a>
c0de75e6:	2a01      	cmp	r2, #1
c0de75e8:	d805      	bhi.n	c0de75f6 <layoutNavigationCallback+0x6a>
c0de75ea:	7819      	ldrb	r1, [r3, #0]
c0de75ec:	e007      	b.n	c0de75fe <layoutNavigationCallback+0x72>
c0de75ee:	7819      	ldrb	r1, [r3, #0]
c0de75f0:	b1f1      	cbz	r1, c0de7630 <layoutNavigationCallback+0xa4>
c0de75f2:	3901      	subs	r1, #1
c0de75f4:	e004      	b.n	c0de7600 <layoutNavigationCallback+0x74>
c0de75f6:	7819      	ldrb	r1, [r3, #0]
c0de75f8:	1e54      	subs	r4, r2, #1
c0de75fa:	428c      	cmp	r4, r1
c0de75fc:	d918      	bls.n	c0de7630 <layoutNavigationCallback+0xa4>
c0de75fe:	3101      	adds	r1, #1
c0de7600:	7019      	strb	r1, [r3, #0]
c0de7602:	b2cb      	uxtb	r3, r1
c0de7604:	4611      	mov	r1, r2
c0de7606:	461a      	mov	r2, r3
c0de7608:	f000 f814 	bl	c0de7634 <configButtons>
c0de760c:	2001      	movs	r0, #1
c0de760e:	bd70      	pop	{r4, r5, r6, pc}
c0de7610:	20ff      	movs	r0, #255	@ 0xff
c0de7612:	7018      	strb	r0, [r3, #0]
c0de7614:	e7fa      	b.n	c0de760c <layoutNavigationCallback+0x80>
c0de7616:	7818      	ldrb	r0, [r3, #0]
c0de7618:	b150      	cbz	r0, c0de7630 <layoutNavigationCallback+0xa4>
c0de761a:	3801      	subs	r0, #1
c0de761c:	e004      	b.n	c0de7628 <layoutNavigationCallback+0x9c>
c0de761e:	7818      	ldrb	r0, [r3, #0]
c0de7620:	1e54      	subs	r4, r2, #1
c0de7622:	4284      	cmp	r4, r0
c0de7624:	d904      	bls.n	c0de7630 <layoutNavigationCallback+0xa4>
c0de7626:	3001      	adds	r0, #1
c0de7628:	7018      	strb	r0, [r3, #0]
c0de762a:	b2c3      	uxtb	r3, r0
c0de762c:	4608      	mov	r0, r1
c0de762e:	e7e9      	b.n	c0de7604 <layoutNavigationCallback+0x78>
c0de7630:	2000      	movs	r0, #0
c0de7632:	bd70      	pop	{r4, r5, r6, pc}

c0de7634 <configButtons>:
c0de7634:	b5b0      	push	{r4, r5, r7, lr}
c0de7636:	f810 3f22 	ldrb.w	r3, [r0, #34]!
c0de763a:	7844      	ldrb	r4, [r0, #1]
c0de763c:	7885      	ldrb	r5, [r0, #2]
c0de763e:	78c0      	ldrb	r0, [r0, #3]
c0de7640:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7644:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de7648:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
c0de764c:	e9d0 3001 	ldrd	r3, r0, [r0, #4]
c0de7650:	b12b      	cbz	r3, c0de765e <configButtons+0x2a>
c0de7652:	fab2 f482 	clz	r4, r2
c0de7656:	0964      	lsrs	r4, r4, #5
c0de7658:	0064      	lsls	r4, r4, #1
c0de765a:	f883 4021 	strb.w	r4, [r3, #33]	@ 0x21
c0de765e:	2902      	cmp	r1, #2
c0de7660:	d307      	bcc.n	c0de7672 <configButtons+0x3e>
c0de7662:	43d2      	mvns	r2, r2
c0de7664:	4411      	add	r1, r2
c0de7666:	fab1 f181 	clz	r1, r1
c0de766a:	0949      	lsrs	r1, r1, #5
c0de766c:	0049      	lsls	r1, r1, #1
c0de766e:	f880 1021 	strb.w	r1, [r0, #33]	@ 0x21
c0de7672:	bdb0      	pop	{r4, r5, r7, pc}

c0de7674 <layoutNavigationPopulate>:
c0de7674:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7678:	4680      	mov	r8, r0
c0de767a:	78c8      	ldrb	r0, [r1, #3]
c0de767c:	4616      	mov	r6, r2
c0de767e:	460d      	mov	r5, r1
c0de7680:	b340      	cbz	r0, c0de76d4 <layoutNavigationPopulate+0x60>
c0de7682:	2005      	movs	r0, #5
c0de7684:	4631      	mov	r1, r6
c0de7686:	2405      	movs	r4, #5
c0de7688:	f003 fdbf 	bl	c0deb20a <nbgl_objPoolGet>
c0de768c:	4978      	ldr	r1, [pc, #480]	@ (c0de7870 <layoutNavigationPopulate+0x1fc>)
c0de768e:	4479      	add	r1, pc
c0de7690:	f000 f903 	bl	c0de789a <OUTLINED_FUNCTION_1>
c0de7694:	70d3      	strb	r3, [r2, #3]
c0de7696:	7091      	strb	r1, [r2, #2]
c0de7698:	2258      	movs	r2, #88	@ 0x58
c0de769a:	2303      	movs	r3, #3
c0de769c:	2100      	movs	r1, #0
c0de769e:	7182      	strb	r2, [r0, #6]
c0de76a0:	7102      	strb	r2, [r0, #4]
c0de76a2:	2201      	movs	r2, #1
c0de76a4:	f880 3020 	strb.w	r3, [r0, #32]
c0de76a8:	77c3      	strb	r3, [r0, #31]
c0de76aa:	2304      	movs	r3, #4
c0de76ac:	71c1      	strb	r1, [r0, #7]
c0de76ae:	7141      	strb	r1, [r0, #5]
c0de76b0:	7601      	strb	r1, [r0, #24]
c0de76b2:	7741      	strb	r1, [r0, #29]
c0de76b4:	7702      	strb	r2, [r0, #28]
c0de76b6:	7782      	strb	r2, [r0, #30]
c0de76b8:	f880 3022 	strb.w	r3, [r0, #34]	@ 0x22
c0de76bc:	786a      	ldrb	r2, [r5, #1]
c0de76be:	2a01      	cmp	r2, #1
c0de76c0:	bf88      	it	hi
c0de76c2:	2404      	movhi	r4, #4
c0de76c4:	7584      	strb	r4, [r0, #22]
c0de76c6:	bf88      	it	hi
c0de76c8:	2101      	movhi	r1, #1
c0de76ca:	00c9      	lsls	r1, r1, #3
c0de76cc:	75c1      	strb	r1, [r0, #23]
c0de76ce:	f000 f8d7 	bl	c0de7880 <OUTLINED_FUNCTION_0>
c0de76d2:	6008      	str	r0, [r1, #0]
c0de76d4:	7928      	ldrb	r0, [r5, #4]
c0de76d6:	b318      	cbz	r0, c0de7720 <layoutNavigationPopulate+0xac>
c0de76d8:	2005      	movs	r0, #5
c0de76da:	4631      	mov	r1, r6
c0de76dc:	f003 fd95 	bl	c0deb20a <nbgl_objPoolGet>
c0de76e0:	4964      	ldr	r1, [pc, #400]	@ (c0de7874 <layoutNavigationPopulate+0x200>)
c0de76e2:	4479      	add	r1, pc
c0de76e4:	f000 f8d9 	bl	c0de789a <OUTLINED_FUNCTION_1>
c0de76e8:	7091      	strb	r1, [r2, #2]
c0de76ea:	2100      	movs	r1, #0
c0de76ec:	70d3      	strb	r3, [r2, #3]
c0de76ee:	2260      	movs	r2, #96	@ 0x60
c0de76f0:	2301      	movs	r3, #1
c0de76f2:	71c1      	strb	r1, [r0, #7]
c0de76f4:	7141      	strb	r1, [r0, #5]
c0de76f6:	7741      	strb	r1, [r0, #29]
c0de76f8:	7601      	strb	r1, [r0, #24]
c0de76fa:	2103      	movs	r1, #3
c0de76fc:	7182      	strb	r2, [r0, #6]
c0de76fe:	2268      	movs	r2, #104	@ 0x68
c0de7700:	7703      	strb	r3, [r0, #28]
c0de7702:	f880 1020 	strb.w	r1, [r0, #32]
c0de7706:	77c1      	strb	r1, [r0, #31]
c0de7708:	2104      	movs	r1, #4
c0de770a:	7102      	strb	r2, [r0, #4]
c0de770c:	75c2      	strb	r2, [r0, #23]
c0de770e:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de7712:	2102      	movs	r1, #2
c0de7714:	7781      	strb	r1, [r0, #30]
c0de7716:	2106      	movs	r1, #6
c0de7718:	7581      	strb	r1, [r0, #22]
c0de771a:	f000 f8b1 	bl	c0de7880 <OUTLINED_FUNCTION_0>
c0de771e:	6048      	str	r0, [r1, #4]
c0de7720:	2005      	movs	r0, #5
c0de7722:	4631      	mov	r1, r6
c0de7724:	f003 fd71 	bl	c0deb20a <nbgl_objPoolGet>
c0de7728:	4c53      	ldr	r4, [pc, #332]	@ (c0de7878 <layoutNavigationPopulate+0x204>)
c0de772a:	447c      	add	r4, pc
c0de772c:	0a21      	lsrs	r1, r4, #8
c0de772e:	0e22      	lsrs	r2, r4, #24
c0de7730:	f880 102f 	strb.w	r1, [r0, #47]	@ 0x2f
c0de7734:	4601      	mov	r1, r0
c0de7736:	f801 4f2e 	strb.w	r4, [r1, #46]!
c0de773a:	70ca      	strb	r2, [r1, #3]
c0de773c:	0c22      	lsrs	r2, r4, #16
c0de773e:	708a      	strb	r2, [r1, #2]
c0de7740:	2100      	movs	r1, #0
c0de7742:	2260      	movs	r2, #96	@ 0x60
c0de7744:	7182      	strb	r2, [r0, #6]
c0de7746:	2268      	movs	r2, #104	@ 0x68
c0de7748:	71c1      	strb	r1, [r0, #7]
c0de774a:	7141      	strb	r1, [r0, #5]
c0de774c:	7741      	strb	r1, [r0, #29]
c0de774e:	f880 1021 	strb.w	r1, [r0, #33]	@ 0x21
c0de7752:	2103      	movs	r1, #3
c0de7754:	7102      	strb	r2, [r0, #4]
c0de7756:	2201      	movs	r2, #1
c0de7758:	f880 1020 	strb.w	r1, [r0, #32]
c0de775c:	77c1      	strb	r1, [r0, #31]
c0de775e:	7781      	strb	r1, [r0, #30]
c0de7760:	2106      	movs	r1, #6
c0de7762:	7702      	strb	r2, [r0, #28]
c0de7764:	2204      	movs	r2, #4
c0de7766:	7581      	strb	r1, [r0, #22]
c0de7768:	4641      	mov	r1, r8
c0de776a:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de776e:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de7772:	784b      	ldrb	r3, [r1, #1]
c0de7774:	788f      	ldrb	r7, [r1, #2]
c0de7776:	78c9      	ldrb	r1, [r1, #3]
c0de7778:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de777c:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de7780:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de7784:	6088      	str	r0, [r1, #8]
c0de7786:	79a8      	ldrb	r0, [r5, #6]
c0de7788:	2800      	cmp	r0, #0
c0de778a:	d067      	beq.n	c0de785c <layoutNavigationPopulate+0x1e8>
c0de778c:	79e8      	ldrb	r0, [r5, #7]
c0de778e:	2800      	cmp	r0, #0
c0de7790:	d04c      	beq.n	c0de782c <layoutNavigationPopulate+0x1b8>
c0de7792:	2004      	movs	r0, #4
c0de7794:	4631      	mov	r1, r6
c0de7796:	f003 fd38 	bl	c0deb20a <nbgl_objPoolGet>
c0de779a:	4606      	mov	r6, r0
c0de779c:	7868      	ldrb	r0, [r5, #1]
c0de779e:	78a9      	ldrb	r1, [r5, #2]
c0de77a0:	f04f 0a0b 	mov.w	sl, #11
c0de77a4:	9000      	str	r0, [sp, #0]
c0de77a6:	4831      	ldr	r0, [pc, #196]	@ (c0de786c <layoutNavigationPopulate+0x1f8>)
c0de77a8:	1c4b      	adds	r3, r1, #1
c0de77aa:	210b      	movs	r1, #11
c0de77ac:	4a33      	ldr	r2, [pc, #204]	@ (c0de787c <layoutNavigationPopulate+0x208>)
c0de77ae:	eb09 0700 	add.w	r7, r9, r0
c0de77b2:	447a      	add	r2, pc
c0de77b4:	4638      	mov	r0, r7
c0de77b6:	f003 fd77 	bl	c0deb2a8 <snprintf>
c0de77ba:	0a38      	lsrs	r0, r7, #8
c0de77bc:	0e39      	lsrs	r1, r7, #24
c0de77be:	f06f 0201 	mvn.w	r2, #1
c0de77c2:	f886 a022 	strb.w	sl, [r6, #34]	@ 0x22
c0de77c6:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de77ca:	4630      	mov	r0, r6
c0de77cc:	f800 7f26 	strb.w	r7, [r0, #38]!
c0de77d0:	70c1      	strb	r1, [r0, #3]
c0de77d2:	0c39      	lsrs	r1, r7, #16
c0de77d4:	7081      	strb	r1, [r0, #2]
c0de77d6:	2000      	movs	r0, #0
c0de77d8:	7861      	ldrb	r1, [r4, #1]
c0de77da:	71f0      	strb	r0, [r6, #7]
c0de77dc:	2060      	movs	r0, #96	@ 0x60
c0de77de:	71b0      	strb	r0, [r6, #6]
c0de77e0:	2001      	movs	r0, #1
c0de77e2:	77f0      	strb	r0, [r6, #31]
c0de77e4:	2005      	movs	r0, #5
c0de77e6:	f886 0020 	strb.w	r0, [r6, #32]
c0de77ea:	75b0      	strb	r0, [r6, #22]
c0de77ec:	7820      	ldrb	r0, [r4, #0]
c0de77ee:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de77f2:	f1c0 0168 	rsb	r1, r0, #104	@ 0x68
c0de77f6:	fb91 f1f2 	sdiv	r1, r1, r2
c0de77fa:	1a08      	subs	r0, r1, r0
c0de77fc:	4641      	mov	r1, r8
c0de77fe:	f811 cf22 	ldrb.w	ip, [r1, #34]!
c0de7802:	f811 3c1e 	ldrb.w	r3, [r1, #-30]
c0de7806:	f811 4c1d 	ldrb.w	r4, [r1, #-29]
c0de780a:	784f      	ldrb	r7, [r1, #1]
c0de780c:	788a      	ldrb	r2, [r1, #2]
c0de780e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7812:	eb03 0040 	add.w	r0, r3, r0, lsl #1
c0de7816:	7130      	strb	r0, [r6, #4]
c0de7818:	0a00      	lsrs	r0, r0, #8
c0de781a:	78c9      	ldrb	r1, [r1, #3]
c0de781c:	7170      	strb	r0, [r6, #5]
c0de781e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7822:	ea4c 2207 	orr.w	r2, ip, r7, lsl #8
c0de7826:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de782a:	60ce      	str	r6, [r1, #12]
c0de782c:	7928      	ldrb	r0, [r5, #4]
c0de782e:	b1a8      	cbz	r0, c0de785c <layoutNavigationPopulate+0x1e8>
c0de7830:	4640      	mov	r0, r8
c0de7832:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7836:	7842      	ldrb	r2, [r0, #1]
c0de7838:	7883      	ldrb	r3, [r0, #2]
c0de783a:	78c0      	ldrb	r0, [r0, #3]
c0de783c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7840:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7844:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de7848:	6840      	ldr	r0, [r0, #4]
c0de784a:	f810 1f17 	ldrb.w	r1, [r0, #23]!
c0de784e:	7842      	ldrb	r2, [r0, #1]
c0de7850:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7854:	314f      	adds	r1, #79	@ 0x4f
c0de7856:	7001      	strb	r1, [r0, #0]
c0de7858:	0a09      	lsrs	r1, r1, #8
c0de785a:	7041      	strb	r1, [r0, #1]
c0de785c:	7869      	ldrb	r1, [r5, #1]
c0de785e:	78aa      	ldrb	r2, [r5, #2]
c0de7860:	4640      	mov	r0, r8
c0de7862:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7866:	f7ff bee5 	b.w	c0de7634 <configButtons>
c0de786a:	bf00      	nop
c0de786c:	00000aa4 	.word	0x00000aa4
c0de7870:	00005177 	.word	0x00005177
c0de7874:	00005009 	.word	0x00005009
c0de7878:	00005044 	.word	0x00005044
c0de787c:	00005b4e 	.word	0x00005b4e

c0de7880 <OUTLINED_FUNCTION_0>:
c0de7880:	4641      	mov	r1, r8
c0de7882:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de7886:	784b      	ldrb	r3, [r1, #1]
c0de7888:	788c      	ldrb	r4, [r1, #2]
c0de788a:	78c9      	ldrb	r1, [r1, #3]
c0de788c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7890:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
c0de7894:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de7898:	4770      	bx	lr

c0de789a <OUTLINED_FUNCTION_1>:
c0de789a:	0a0a      	lsrs	r2, r1, #8
c0de789c:	0e0b      	lsrs	r3, r1, #24
c0de789e:	f880 202f 	strb.w	r2, [r0, #47]	@ 0x2f
c0de78a2:	4602      	mov	r2, r0
c0de78a4:	f802 1f2e 	strb.w	r1, [r2, #46]!
c0de78a8:	0c09      	lsrs	r1, r1, #16
c0de78aa:	4770      	bx	lr

c0de78ac <nbgl_pageDrawInfo>:
c0de78ac:	b570      	push	{r4, r5, r6, lr}
c0de78ae:	b08c      	sub	sp, #48	@ 0x30
c0de78b0:	460d      	mov	r5, r1
c0de78b2:	4606      	mov	r6, r0
c0de78b4:	a805      	add	r0, sp, #20
c0de78b6:	211c      	movs	r1, #28
c0de78b8:	4614      	mov	r4, r2
c0de78ba:	f004 f8c7 	bl	c0deba4c <__aeabi_memclr>
c0de78be:	2001      	movs	r0, #1
c0de78c0:	9608      	str	r6, [sp, #32]
c0de78c2:	f88d 0015 	strb.w	r0, [sp, #21]
c0de78c6:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de78ca:	b948      	cbnz	r0, c0de78e0 <nbgl_pageDrawInfo+0x34>
c0de78cc:	6a20      	ldr	r0, [r4, #32]
c0de78ce:	9006      	str	r0, [sp, #24]
c0de78d0:	f894 0025 	ldrb.w	r0, [r4, #37]	@ 0x25
c0de78d4:	f88d 001c 	strb.w	r0, [sp, #28]
c0de78d8:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de78dc:	f88d 001d 	strb.w	r0, [sp, #29]
c0de78e0:	b1f5      	cbz	r5, c0de7920 <nbgl_pageDrawInfo+0x74>
c0de78e2:	4629      	mov	r1, r5
c0de78e4:	7a68      	ldrb	r0, [r5, #9]
c0de78e6:	78eb      	ldrb	r3, [r5, #3]
c0de78e8:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de78ec:	f000 fb4f 	bl	c0de7f8e <OUTLINED_FUNCTION_1>
c0de78f0:	4629      	mov	r1, r5
c0de78f2:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de78f4:	7968      	ldrb	r0, [r5, #5]
c0de78f6:	f811 2f04 	ldrb.w	r2, [r1, #4]!
c0de78fa:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de78fe:	788a      	ldrb	r2, [r1, #2]
c0de7900:	78c9      	ldrb	r1, [r1, #3]
c0de7902:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7906:	78aa      	ldrb	r2, [r5, #2]
c0de7908:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de790c:	7869      	ldrb	r1, [r5, #1]
c0de790e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de7910:	7828      	ldrb	r0, [r5, #0]
c0de7912:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7916:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de791a:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de791e:	e000      	b.n	c0de7922 <nbgl_pageDrawInfo+0x76>
c0de7920:	2000      	movs	r0, #0
c0de7922:	9009      	str	r0, [sp, #36]	@ 0x24
c0de7924:	a805      	add	r0, sp, #20
c0de7926:	f7fc fa21 	bl	c0de3d6c <nbgl_layoutGet>
c0de792a:	4605      	mov	r5, r0
c0de792c:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de7930:	b150      	cbz	r0, c0de7948 <nbgl_pageDrawInfo+0x9c>
c0de7932:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7936:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
c0de793a:	6a22      	ldr	r2, [r4, #32]
c0de793c:	f44f 61c0 	mov.w	r1, #1536	@ 0x600
c0de7940:	9000      	str	r0, [sp, #0]
c0de7942:	4628      	mov	r0, r5
c0de7944:	f7fc ff7a 	bl	c0de483c <nbgl_layoutAddSwipe>
c0de7948:	7d20      	ldrb	r0, [r4, #20]
c0de794a:	b3b8      	cbz	r0, c0de79bc <nbgl_pageDrawInfo+0x110>
c0de794c:	4628      	mov	r0, r5
c0de794e:	2128      	movs	r1, #40	@ 0x28
c0de7950:	f000 f8a6 	bl	c0de7aa0 <addEmptyHeader>
c0de7954:	4628      	mov	r0, r5
c0de7956:	4621      	mov	r1, r4
c0de7958:	f7fe f887 	bl	c0de5a6a <nbgl_layoutAddCenteredInfo>
c0de795c:	6aa0      	ldr	r0, [r4, #40]	@ 0x28
c0de795e:	b1b8      	cbz	r0, c0de7990 <nbgl_pageDrawInfo+0xe4>
c0de7960:	7d61      	ldrb	r1, [r4, #21]
c0de7962:	2904      	cmp	r1, #4
c0de7964:	d014      	beq.n	c0de7990 <nbgl_pageDrawInfo+0xe4>
c0de7966:	9001      	str	r0, [sp, #4]
c0de7968:	2001      	movs	r0, #1
c0de796a:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de796e:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
c0de7970:	9002      	str	r0, [sp, #8]
c0de7972:	7de0      	ldrb	r0, [r4, #23]
c0de7974:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7978:	f894 0030 	ldrb.w	r0, [r4, #48]	@ 0x30
c0de797c:	f88d 000d 	strb.w	r0, [sp, #13]
c0de7980:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7984:	f88d 0010 	strb.w	r0, [sp, #16]
c0de7988:	a901      	add	r1, sp, #4
c0de798a:	4628      	mov	r0, r5
c0de798c:	f7fe fe2d 	bl	c0de65ea <nbgl_layoutAddButton>
c0de7990:	69a0      	ldr	r0, [r4, #24]
c0de7992:	b140      	cbz	r0, c0de79a6 <nbgl_pageDrawInfo+0xfa>
c0de7994:	f003 fe1a 	bl	c0deb5cc <pic>
c0de7998:	7f22      	ldrb	r2, [r4, #28]
c0de799a:	f894 3031 	ldrb.w	r3, [r4, #49]	@ 0x31
c0de799e:	4601      	mov	r1, r0
c0de79a0:	4628      	mov	r0, r5
c0de79a2:	f7fe ff10 	bl	c0de67c6 <nbgl_layoutAddFooter>
c0de79a6:	7d20      	ldrb	r0, [r4, #20]
c0de79a8:	b1f8      	cbz	r0, c0de79ea <nbgl_pageDrawInfo+0x13e>
c0de79aa:	2801      	cmp	r0, #1
c0de79ac:	d00f      	beq.n	c0de79ce <nbgl_pageDrawInfo+0x122>
c0de79ae:	2802      	cmp	r0, #2
c0de79b0:	d010      	beq.n	c0de79d4 <nbgl_pageDrawInfo+0x128>
c0de79b2:	2803      	cmp	r0, #3
c0de79b4:	d13f      	bne.n	c0de7a36 <nbgl_pageDrawInfo+0x18a>
c0de79b6:	4833      	ldr	r0, [pc, #204]	@ (c0de7a84 <nbgl_pageDrawInfo+0x1d8>)
c0de79b8:	4478      	add	r0, pc
c0de79ba:	e00d      	b.n	c0de79d8 <nbgl_pageDrawInfo+0x12c>
c0de79bc:	6a20      	ldr	r0, [r4, #32]
c0de79be:	2800      	cmp	r0, #0
c0de79c0:	d0c8      	beq.n	c0de7954 <nbgl_pageDrawInfo+0xa8>
c0de79c2:	f003 fe03 	bl	c0deb5cc <pic>
c0de79c6:	7800      	ldrb	r0, [r0, #0]
c0de79c8:	2800      	cmp	r0, #0
c0de79ca:	d1bf      	bne.n	c0de794c <nbgl_pageDrawInfo+0xa0>
c0de79cc:	e7c2      	b.n	c0de7954 <nbgl_pageDrawInfo+0xa8>
c0de79ce:	482c      	ldr	r0, [pc, #176]	@ (c0de7a80 <nbgl_pageDrawInfo+0x1d4>)
c0de79d0:	4478      	add	r0, pc
c0de79d2:	e001      	b.n	c0de79d8 <nbgl_pageDrawInfo+0x12c>
c0de79d4:	482c      	ldr	r0, [pc, #176]	@ (c0de7a88 <nbgl_pageDrawInfo+0x1dc>)
c0de79d6:	4478      	add	r0, pc
c0de79d8:	f003 fdf8 	bl	c0deb5cc <pic>
c0de79dc:	7da2      	ldrb	r2, [r4, #22]
c0de79de:	f894 3031 	ldrb.w	r3, [r4, #49]	@ 0x31
c0de79e2:	4601      	mov	r1, r0
c0de79e4:	4628      	mov	r0, r5
c0de79e6:	f7fc ff85 	bl	c0de48f4 <nbgl_layoutAddTopRightButton>
c0de79ea:	7d60      	ldrb	r0, [r4, #21]
c0de79ec:	b3c0      	cbz	r0, c0de7a60 <nbgl_pageDrawInfo+0x1b4>
c0de79ee:	2801      	cmp	r0, #1
c0de79f0:	d023      	beq.n	c0de7a3a <nbgl_pageDrawInfo+0x18e>
c0de79f2:	2802      	cmp	r0, #2
c0de79f4:	d024      	beq.n	c0de7a40 <nbgl_pageDrawInfo+0x194>
c0de79f6:	2803      	cmp	r0, #3
c0de79f8:	d025      	beq.n	c0de7a46 <nbgl_pageDrawInfo+0x19a>
c0de79fa:	2804      	cmp	r0, #4
c0de79fc:	d11b      	bne.n	c0de7a36 <nbgl_pageDrawInfo+0x18a>
c0de79fe:	6aa0      	ldr	r0, [r4, #40]	@ 0x28
c0de7a00:	b3a0      	cbz	r0, c0de7a6c <nbgl_pageDrawInfo+0x1c0>
c0de7a02:	4923      	ldr	r1, [pc, #140]	@ (c0de7a90 <nbgl_pageDrawInfo+0x1e4>)
c0de7a04:	4479      	add	r1, pc
c0de7a06:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de7a0a:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
c0de7a0c:	2102      	movs	r1, #2
c0de7a0e:	9003      	str	r0, [sp, #12]
c0de7a10:	7de0      	ldrb	r0, [r4, #23]
c0de7a12:	f88d 0010 	strb.w	r0, [sp, #16]
c0de7a16:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7a1a:	f88d 0012 	strb.w	r0, [sp, #18]
c0de7a1e:	f894 0030 	ldrb.w	r0, [r4, #48]	@ 0x30
c0de7a22:	2800      	cmp	r0, #0
c0de7a24:	bf08      	it	eq
c0de7a26:	2101      	moveq	r1, #1
c0de7a28:	f88d 1011 	strb.w	r1, [sp, #17]
c0de7a2c:	4628      	mov	r0, r5
c0de7a2e:	a901      	add	r1, sp, #4
c0de7a30:	f7fe fbe4 	bl	c0de61fc <nbgl_layoutAddChoiceButtons>
c0de7a34:	e014      	b.n	c0de7a60 <nbgl_pageDrawInfo+0x1b4>
c0de7a36:	2500      	movs	r5, #0
c0de7a38:	e015      	b.n	c0de7a66 <nbgl_pageDrawInfo+0x1ba>
c0de7a3a:	4814      	ldr	r0, [pc, #80]	@ (c0de7a8c <nbgl_pageDrawInfo+0x1e0>)
c0de7a3c:	4478      	add	r0, pc
c0de7a3e:	e004      	b.n	c0de7a4a <nbgl_pageDrawInfo+0x19e>
c0de7a40:	4816      	ldr	r0, [pc, #88]	@ (c0de7a9c <nbgl_pageDrawInfo+0x1f0>)
c0de7a42:	4478      	add	r0, pc
c0de7a44:	e001      	b.n	c0de7a4a <nbgl_pageDrawInfo+0x19e>
c0de7a46:	4814      	ldr	r0, [pc, #80]	@ (c0de7a98 <nbgl_pageDrawInfo+0x1ec>)
c0de7a48:	4478      	add	r0, pc
c0de7a4a:	f003 fdbf 	bl	c0deb5cc <pic>
c0de7a4e:	4601      	mov	r1, r0
c0de7a50:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7a54:	7de2      	ldrb	r2, [r4, #23]
c0de7a56:	2300      	movs	r3, #0
c0de7a58:	9000      	str	r0, [sp, #0]
c0de7a5a:	4628      	mov	r0, r5
c0de7a5c:	f7fd fb16 	bl	c0de508c <nbgl_layoutAddBottomButton>
c0de7a60:	4628      	mov	r0, r5
c0de7a62:	f7ff f9f4 	bl	c0de6e4e <nbgl_layoutDraw>
c0de7a66:	4628      	mov	r0, r5
c0de7a68:	b00c      	add	sp, #48	@ 0x30
c0de7a6a:	bd70      	pop	{r4, r5, r6, pc}
c0de7a6c:	7de2      	ldrb	r2, [r4, #23]
c0de7a6e:	f894 3031 	ldrb.w	r3, [r4, #49]	@ 0x31
c0de7a72:	4908      	ldr	r1, [pc, #32]	@ (c0de7a94 <nbgl_pageDrawInfo+0x1e8>)
c0de7a74:	4628      	mov	r0, r5
c0de7a76:	4479      	add	r1, pc
c0de7a78:	f7fe fea5 	bl	c0de67c6 <nbgl_layoutAddFooter>
c0de7a7c:	e7f0      	b.n	c0de7a60 <nbgl_pageDrawInfo+0x1b4>
c0de7a7e:	bf00      	nop
c0de7a80:	00005366 	.word	0x00005366
c0de7a84:	00004e90 	.word	0x00004e90
c0de7a88:	00004e2f 	.word	0x00004e2f
c0de7a8c:	000052fa 	.word	0x000052fa
c0de7a90:	00005d1e 	.word	0x00005d1e
c0de7a94:	00005cac 	.word	0x00005cac
c0de7a98:	00004e00 	.word	0x00004e00
c0de7a9c:	00004dc3 	.word	0x00004dc3

c0de7aa0 <addEmptyHeader>:
c0de7aa0:	b570      	push	{r4, r5, r6, lr}
c0de7aa2:	b086      	sub	sp, #24
c0de7aa4:	ae01      	add	r6, sp, #4
c0de7aa6:	460c      	mov	r4, r1
c0de7aa8:	4605      	mov	r5, r0
c0de7aaa:	2114      	movs	r1, #20
c0de7aac:	f000 fa85 	bl	c0de7fba <OUTLINED_FUNCTION_4>
c0de7ab0:	4628      	mov	r0, r5
c0de7ab2:	4631      	mov	r1, r6
c0de7ab4:	f8ad 4008 	strh.w	r4, [sp, #8]
c0de7ab8:	f7fe feac 	bl	c0de6814 <nbgl_layoutAddHeader>
c0de7abc:	b006      	add	sp, #24
c0de7abe:	bd70      	pop	{r4, r5, r6, pc}

c0de7ac0 <nbgl_pageDrawConfirmation>:
c0de7ac0:	b5b0      	push	{r4, r5, r7, lr}
c0de7ac2:	b08c      	sub	sp, #48	@ 0x30
c0de7ac4:	4605      	mov	r5, r0
c0de7ac6:	6948      	ldr	r0, [r1, #20]
c0de7ac8:	460c      	mov	r4, r1
c0de7aca:	f003 fd7f 	bl	c0deb5cc <pic>
c0de7ace:	9001      	str	r0, [sp, #4]
c0de7ad0:	69a0      	ldr	r0, [r4, #24]
c0de7ad2:	b110      	cbz	r0, c0de7ada <nbgl_pageDrawConfirmation+0x1a>
c0de7ad4:	f003 fd7a 	bl	c0deb5cc <pic>
c0de7ad8:	e001      	b.n	c0de7ade <nbgl_pageDrawConfirmation+0x1e>
c0de7ada:	4815      	ldr	r0, [pc, #84]	@ (c0de7b30 <nbgl_pageDrawConfirmation+0x70>)
c0de7adc:	4478      	add	r0, pc
c0de7ade:	2100      	movs	r1, #0
c0de7ae0:	7fe2      	ldrb	r2, [r4, #31]
c0de7ae2:	9508      	str	r5, [sp, #32]
c0de7ae4:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de7ae8:	2001      	movs	r0, #1
c0de7aea:	f88d 1011 	strb.w	r1, [sp, #17]
c0de7aee:	9109      	str	r1, [sp, #36]	@ 0x24
c0de7af0:	9106      	str	r1, [sp, #24]
c0de7af2:	7fa1      	ldrb	r1, [r4, #30]
c0de7af4:	f88d 0015 	strb.w	r0, [sp, #21]
c0de7af8:	7f20      	ldrb	r0, [r4, #28]
c0de7afa:	f88d 2014 	strb.w	r2, [sp, #20]
c0de7afe:	f88d 1012 	strb.w	r1, [sp, #18]
c0de7b02:	f88d 0010 	strb.w	r0, [sp, #16]
c0de7b06:	a805      	add	r0, sp, #20
c0de7b08:	f7fc f930 	bl	c0de3d6c <nbgl_layoutGet>
c0de7b0c:	2140      	movs	r1, #64	@ 0x40
c0de7b0e:	4605      	mov	r5, r0
c0de7b10:	f7ff ffc6 	bl	c0de7aa0 <addEmptyHeader>
c0de7b14:	a901      	add	r1, sp, #4
c0de7b16:	4628      	mov	r0, r5
c0de7b18:	f7fe fb70 	bl	c0de61fc <nbgl_layoutAddChoiceButtons>
c0de7b1c:	4628      	mov	r0, r5
c0de7b1e:	4621      	mov	r1, r4
c0de7b20:	f7fd ffa3 	bl	c0de5a6a <nbgl_layoutAddCenteredInfo>
c0de7b24:	4628      	mov	r0, r5
c0de7b26:	f7ff f992 	bl	c0de6e4e <nbgl_layoutDraw>
c0de7b2a:	4628      	mov	r0, r5
c0de7b2c:	b00c      	add	sp, #48	@ 0x30
c0de7b2e:	bdb0      	pop	{r4, r5, r7, pc}
c0de7b30:	000057e3 	.word	0x000057e3

c0de7b34 <nbgl_pageDrawGenericContentExt>:
c0de7b34:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7b38:	b096      	sub	sp, #88	@ 0x58
c0de7b3a:	460e      	mov	r6, r1
c0de7b3c:	2100      	movs	r1, #0
c0de7b3e:	4615      	mov	r5, r2
c0de7b40:	f88d 3008 	strb.w	r3, [sp, #8]
c0de7b44:	e9cd 0105 	strd	r0, r1, [sp, #20]
c0de7b48:	2001      	movs	r0, #1
c0de7b4a:	f88d 0009 	strb.w	r0, [sp, #9]
c0de7b4e:	b10e      	cbz	r6, c0de7b54 <nbgl_pageDrawGenericContentExt+0x20>
c0de7b50:	78f0      	ldrb	r0, [r6, #3]
c0de7b52:	b108      	cbz	r0, c0de7b58 <nbgl_pageDrawGenericContentExt+0x24>
c0de7b54:	9103      	str	r1, [sp, #12]
c0de7b56:	e007      	b.n	c0de7b68 <nbgl_pageDrawGenericContentExt+0x34>
c0de7b58:	6970      	ldr	r0, [r6, #20]
c0de7b5a:	7cb1      	ldrb	r1, [r6, #18]
c0de7b5c:	9003      	str	r0, [sp, #12]
c0de7b5e:	7970      	ldrb	r0, [r6, #5]
c0de7b60:	f88d 1010 	strb.w	r1, [sp, #16]
c0de7b64:	f88d 0011 	strb.w	r0, [sp, #17]
c0de7b68:	a802      	add	r0, sp, #8
c0de7b6a:	f7fc f8ff 	bl	c0de3d6c <nbgl_layoutGet>
c0de7b6e:	4682      	mov	sl, r0
c0de7b70:	b17e      	cbz	r6, c0de7b92 <nbgl_pageDrawGenericContentExt+0x5e>
c0de7b72:	78f0      	ldrb	r0, [r6, #3]
c0de7b74:	2801      	cmp	r0, #1
c0de7b76:	d011      	beq.n	c0de7b9c <nbgl_pageDrawGenericContentExt+0x68>
c0de7b78:	b958      	cbnz	r0, c0de7b92 <nbgl_pageDrawGenericContentExt+0x5e>
c0de7b7a:	68b3      	ldr	r3, [r6, #8]
c0de7b7c:	78b2      	ldrb	r2, [r6, #2]
c0de7b7e:	69b1      	ldr	r1, [r6, #24]
c0de7b80:	b323      	cbz	r3, c0de7bcc <nbgl_pageDrawGenericContentExt+0x98>
c0de7b82:	7970      	ldrb	r0, [r6, #5]
c0de7b84:	7b34      	ldrb	r4, [r6, #12]
c0de7b86:	e9cd 4000 	strd	r4, r0, [sp]
c0de7b8a:	4650      	mov	r0, sl
c0de7b8c:	f7fe fe2d 	bl	c0de67ea <nbgl_layoutAddSplitFooter>
c0de7b90:	e020      	b.n	c0de7bd4 <nbgl_pageDrawGenericContentExt+0xa0>
c0de7b92:	f04f 0800 	mov.w	r8, #0
c0de7b96:	f44f 7716 	mov.w	r7, #600	@ 0x258
c0de7b9a:	e07e      	b.n	c0de7c9a <nbgl_pageDrawGenericContentExt+0x166>
c0de7b9c:	68b0      	ldr	r0, [r6, #8]
c0de7b9e:	2800      	cmp	r0, #0
c0de7ba0:	4680      	mov	r8, r0
c0de7ba2:	bf18      	it	ne
c0de7ba4:	f04f 0801 	movne.w	r8, #1
c0de7ba8:	d027      	beq.n	c0de7bfa <nbgl_pageDrawGenericContentExt+0xc6>
c0de7baa:	900e      	str	r0, [sp, #56]	@ 0x38
c0de7bac:	2006      	movs	r0, #6
c0de7bae:	7b31      	ldrb	r1, [r6, #12]
c0de7bb0:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de7bb4:	7970      	ldrb	r0, [r6, #5]
c0de7bb6:	f88d 103c 	strb.w	r1, [sp, #60]	@ 0x3c
c0de7bba:	f88d 003d 	strb.w	r0, [sp, #61]	@ 0x3d
c0de7bbe:	a90d      	add	r1, sp, #52	@ 0x34
c0de7bc0:	4650      	mov	r0, sl
c0de7bc2:	f7fe fe27 	bl	c0de6814 <nbgl_layoutAddHeader>
c0de7bc6:	f5c0 7716 	rsb	r7, r0, #600	@ 0x258
c0de7bca:	e018      	b.n	c0de7bfe <nbgl_pageDrawGenericContentExt+0xca>
c0de7bcc:	7973      	ldrb	r3, [r6, #5]
c0de7bce:	4650      	mov	r0, sl
c0de7bd0:	f7fe fdf9 	bl	c0de67c6 <nbgl_layoutAddFooter>
c0de7bd4:	f5c0 7716 	rsb	r7, r0, #600	@ 0x258
c0de7bd8:	7930      	ldrb	r0, [r6, #4]
c0de7bda:	2800      	cmp	r0, #0
c0de7bdc:	d042      	beq.n	c0de7c64 <nbgl_pageDrawGenericContentExt+0x130>
c0de7bde:	7c70      	ldrb	r0, [r6, #17]
c0de7be0:	7974      	ldrb	r4, [r6, #5]
c0de7be2:	7831      	ldrb	r1, [r6, #0]
c0de7be4:	7872      	ldrb	r2, [r6, #1]
c0de7be6:	7c33      	ldrb	r3, [r6, #16]
c0de7be8:	e9cd 0400 	strd	r0, r4, [sp]
c0de7bec:	4650      	mov	r0, sl
c0de7bee:	f7ff f913 	bl	c0de6e18 <nbgl_layoutAddProgressIndicator>
c0de7bf2:	1a3f      	subs	r7, r7, r0
c0de7bf4:	f04f 0801 	mov.w	r8, #1
c0de7bf8:	e04f      	b.n	c0de7c9a <nbgl_pageDrawGenericContentExt+0x166>
c0de7bfa:	f44f 7716 	mov.w	r7, #600	@ 0x258
c0de7bfe:	2001      	movs	r0, #1
c0de7c00:	f88d 0035 	strb.w	r0, [sp, #53]	@ 0x35
c0de7c04:	7870      	ldrb	r0, [r6, #1]
c0de7c06:	2802      	cmp	r0, #2
c0de7c08:	d31c      	bcc.n	c0de7c44 <nbgl_pageDrawGenericContentExt+0x110>
c0de7c0a:	6971      	ldr	r1, [r6, #20]
c0de7c0c:	b369      	cbz	r1, c0de7c6a <nbgl_pageDrawGenericContentExt+0x136>
c0de7c0e:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de7c12:	2001      	movs	r0, #1
c0de7c14:	9111      	str	r1, [sp, #68]	@ 0x44
c0de7c16:	2103      	movs	r1, #3
c0de7c18:	7972      	ldrb	r2, [r6, #5]
c0de7c1a:	f000 f9c7 	bl	c0de7fac <OUTLINED_FUNCTION_3>
c0de7c1e:	2100      	movs	r1, #0
c0de7c20:	f88d 103b 	strb.w	r1, [sp, #59]	@ 0x3b
c0de7c24:	78b1      	ldrb	r1, [r6, #2]
c0de7c26:	f88d 2049 	strb.w	r2, [sp, #73]	@ 0x49
c0de7c2a:	f88d 303c 	strb.w	r3, [sp, #60]	@ 0x3c
c0de7c2e:	f88d 2040 	strb.w	r2, [sp, #64]	@ 0x40
c0de7c32:	f88d 003a 	strb.w	r0, [sp, #58]	@ 0x3a
c0de7c36:	7cb0      	ldrb	r0, [r6, #18]
c0de7c38:	f88d 1048 	strb.w	r1, [sp, #72]	@ 0x48
c0de7c3c:	f88d 003f 	strb.w	r0, [sp, #63]	@ 0x3f
c0de7c40:	7cf0      	ldrb	r0, [r6, #19]
c0de7c42:	e023      	b.n	c0de7c8c <nbgl_pageDrawGenericContentExt+0x158>
c0de7c44:	6970      	ldr	r0, [r6, #20]
c0de7c46:	b340      	cbz	r0, c0de7c9a <nbgl_pageDrawGenericContentExt+0x166>
c0de7c48:	2100      	movs	r1, #0
c0de7c4a:	900e      	str	r0, [sp, #56]	@ 0x38
c0de7c4c:	2001      	movs	r0, #1
c0de7c4e:	f88d 103c 	strb.w	r1, [sp, #60]	@ 0x3c
c0de7c52:	f88d 0034 	strb.w	r0, [sp, #52]	@ 0x34
c0de7c56:	78b0      	ldrb	r0, [r6, #2]
c0de7c58:	7971      	ldrb	r1, [r6, #5]
c0de7c5a:	f88d 003d 	strb.w	r0, [sp, #61]	@ 0x3d
c0de7c5e:	f88d 103e 	strb.w	r1, [sp, #62]	@ 0x3e
c0de7c62:	e015      	b.n	c0de7c90 <nbgl_pageDrawGenericContentExt+0x15c>
c0de7c64:	f04f 0800 	mov.w	r8, #0
c0de7c68:	e017      	b.n	c0de7c9a <nbgl_pageDrawGenericContentExt+0x166>
c0de7c6a:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de7c6e:	2000      	movs	r0, #0
c0de7c70:	2104      	movs	r1, #4
c0de7c72:	7c32      	ldrb	r2, [r6, #16]
c0de7c74:	f000 f99a 	bl	c0de7fac <OUTLINED_FUNCTION_3>
c0de7c78:	7971      	ldrb	r1, [r6, #5]
c0de7c7a:	f88d 203b 	strb.w	r2, [sp, #59]	@ 0x3b
c0de7c7e:	f88d 303c 	strb.w	r3, [sp, #60]	@ 0x3c
c0de7c82:	f88d 003a 	strb.w	r0, [sp, #58]	@ 0x3a
c0de7c86:	7cf0      	ldrb	r0, [r6, #19]
c0de7c88:	f88d 1040 	strb.w	r1, [sp, #64]	@ 0x40
c0de7c8c:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de7c90:	a90d      	add	r1, sp, #52	@ 0x34
c0de7c92:	4650      	mov	r0, sl
c0de7c94:	f7fc fe6c 	bl	c0de4970 <nbgl_layoutAddExtendedFooter>
c0de7c98:	1a3f      	subs	r7, r7, r0
c0de7c9a:	6828      	ldr	r0, [r5, #0]
c0de7c9c:	b190      	cbz	r0, c0de7cc4 <nbgl_pageDrawGenericContentExt+0x190>
c0de7c9e:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de7ca0:	2000      	movs	r0, #0
c0de7ca2:	79a9      	ldrb	r1, [r5, #6]
c0de7ca4:	900e      	str	r0, [sp, #56]	@ 0x38
c0de7ca6:	f240 1001 	movw	r0, #257	@ 0x101
c0de7caa:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de7cae:	7968      	ldrb	r0, [r5, #5]
c0de7cb0:	f88d 1041 	strb.w	r1, [sp, #65]	@ 0x41
c0de7cb4:	f88d 0040 	strb.w	r0, [sp, #64]	@ 0x40
c0de7cb8:	a90d      	add	r1, sp, #52	@ 0x34
c0de7cba:	4650      	mov	r0, sl
c0de7cbc:	f7fe fdaa 	bl	c0de6814 <nbgl_layoutAddHeader>
c0de7cc0:	f04f 0801 	mov.w	r8, #1
c0de7cc4:	68a9      	ldr	r1, [r5, #8]
c0de7cc6:	b121      	cbz	r1, c0de7cd2 <nbgl_pageDrawGenericContentExt+0x19e>
c0de7cc8:	79ab      	ldrb	r3, [r5, #6]
c0de7cca:	79ea      	ldrb	r2, [r5, #7]
c0de7ccc:	4650      	mov	r0, sl
c0de7cce:	f7fc fe11 	bl	c0de48f4 <nbgl_layoutAddTopRightButton>
c0de7cd2:	7b28      	ldrb	r0, [r5, #12]
c0de7cd4:	2800      	cmp	r0, #0
c0de7cd6:	d044      	beq.n	c0de7d62 <nbgl_pageDrawGenericContentExt+0x22e>
c0de7cd8:	2801      	cmp	r0, #1
c0de7cda:	d04d      	beq.n	c0de7d78 <nbgl_pageDrawGenericContentExt+0x244>
c0de7cdc:	2802      	cmp	r0, #2
c0de7cde:	d067      	beq.n	c0de7db0 <nbgl_pageDrawGenericContentExt+0x27c>
c0de7ce0:	2803      	cmp	r0, #3
c0de7ce2:	d074      	beq.n	c0de7dce <nbgl_pageDrawGenericContentExt+0x29a>
c0de7ce4:	2804      	cmp	r0, #4
c0de7ce6:	f000 808e 	beq.w	c0de7e06 <nbgl_pageDrawGenericContentExt+0x2d2>
c0de7cea:	2805      	cmp	r0, #5
c0de7cec:	f000 8093 	beq.w	c0de7e16 <nbgl_pageDrawGenericContentExt+0x2e2>
c0de7cf0:	2806      	cmp	r0, #6
c0de7cf2:	f000 80a9 	beq.w	c0de7e48 <nbgl_pageDrawGenericContentExt+0x314>
c0de7cf6:	2807      	cmp	r0, #7
c0de7cf8:	f000 80d9 	beq.w	c0de7eae <nbgl_pageDrawGenericContentExt+0x37a>
c0de7cfc:	2808      	cmp	r0, #8
c0de7cfe:	f000 80ea 	beq.w	c0de7ed6 <nbgl_pageDrawGenericContentExt+0x3a2>
c0de7d02:	2809      	cmp	r0, #9
c0de7d04:	f000 8112 	beq.w	c0de7f2c <nbgl_pageDrawGenericContentExt+0x3f8>
c0de7d08:	280a      	cmp	r0, #10
c0de7d0a:	f040 8114 	bne.w	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7d0e:	489a      	ldr	r0, [pc, #616]	@ (c0de7f78 <nbgl_pageDrawGenericContentExt+0x444>)
c0de7d10:	2400      	movs	r4, #0
c0de7d12:	f10d 0834 	add.w	r8, sp, #52	@ 0x34
c0de7d16:	2600      	movs	r6, #0
c0de7d18:	4478      	add	r0, pc
c0de7d1a:	4683      	mov	fp, r0
c0de7d1c:	7e28      	ldrb	r0, [r5, #24]
c0de7d1e:	4286      	cmp	r6, r0
c0de7d20:	f080 8109 	bcs.w	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7d24:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de7d28:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de7d2c:	e9cd b40f 	strd	fp, r4, [sp, #60]	@ 0x3c
c0de7d30:	e9cd 400d 	strd	r4, r0, [sp, #52]	@ 0x34
c0de7d34:	5d88      	ldrb	r0, [r1, r6]
c0de7d36:	4641      	mov	r1, r8
c0de7d38:	f88d 4046 	strb.w	r4, [sp, #70]	@ 0x46
c0de7d3c:	f88d 4044 	strb.w	r4, [sp, #68]	@ 0x44
c0de7d40:	f88d 0045 	strb.w	r0, [sp, #69]	@ 0x45
c0de7d44:	7e68      	ldrb	r0, [r5, #25]
c0de7d46:	f88d 0048 	strb.w	r0, [sp, #72]	@ 0x48
c0de7d4a:	4650      	mov	r0, sl
c0de7d4c:	f7fd f9bd 	bl	c0de50ca <nbgl_layoutAddTouchableBar>
c0de7d50:	1a3f      	subs	r7, r7, r0
c0de7d52:	b2b8      	uxth	r0, r7
c0de7d54:	280b      	cmp	r0, #11
c0de7d56:	d302      	bcc.n	c0de7d5e <nbgl_pageDrawGenericContentExt+0x22a>
c0de7d58:	4650      	mov	r0, sl
c0de7d5a:	f7fe fc29 	bl	c0de65b0 <nbgl_layoutAddSeparationLine>
c0de7d5e:	3601      	adds	r6, #1
c0de7d60:	e7dc      	b.n	c0de7d1c <nbgl_pageDrawGenericContentExt+0x1e8>
c0de7d62:	f1b8 0f00 	cmp.w	r8, #0
c0de7d66:	d101      	bne.n	c0de7d6c <nbgl_pageDrawGenericContentExt+0x238>
c0de7d68:	f000 f90d 	bl	c0de7f86 <OUTLINED_FUNCTION_0>
c0de7d6c:	f105 0110 	add.w	r1, r5, #16
c0de7d70:	4650      	mov	r0, sl
c0de7d72:	f7fd fe7a 	bl	c0de5a6a <nbgl_layoutAddCenteredInfo>
c0de7d76:	e0de      	b.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7d78:	f1b8 0f00 	cmp.w	r8, #0
c0de7d7c:	d101      	bne.n	c0de7d82 <nbgl_pageDrawGenericContentExt+0x24e>
c0de7d7e:	f000 f902 	bl	c0de7f86 <OUTLINED_FUNCTION_0>
c0de7d82:	f105 0110 	add.w	r1, r5, #16
c0de7d86:	4650      	mov	r0, sl
c0de7d88:	f7fe f8ca 	bl	c0de5f20 <nbgl_layoutAddContentCenter>
c0de7d8c:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de7d8e:	2800      	cmp	r0, #0
c0de7d90:	f000 80d1 	beq.w	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7d94:	900e      	str	r0, [sp, #56]	@ 0x38
c0de7d96:	2003      	movs	r0, #3
c0de7d98:	f88d 0034 	strb.w	r0, [sp, #52]	@ 0x34
c0de7d9c:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de7d9e:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de7da0:	8fa8      	ldrh	r0, [r5, #60]	@ 0x3c
c0de7da2:	f8ad 0040 	strh.w	r0, [sp, #64]	@ 0x40
c0de7da6:	a90d      	add	r1, sp, #52	@ 0x34
c0de7da8:	4650      	mov	r0, sl
c0de7daa:	f7fc fa4d 	bl	c0de4248 <nbgl_layoutAddUpFooter>
c0de7dae:	e0c2      	b.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7db0:	ae0d      	add	r6, sp, #52	@ 0x34
c0de7db2:	2124      	movs	r1, #36	@ 0x24
c0de7db4:	f000 f901 	bl	c0de7fba <OUTLINED_FUNCTION_4>
c0de7db8:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de7dbc:	f000 f8f0 	bl	c0de7fa0 <OUTLINED_FUNCTION_2>
c0de7dc0:	69a9      	ldr	r1, [r5, #24]
c0de7dc2:	7f6b      	ldrb	r3, [r5, #29]
c0de7dc4:	7f2a      	ldrb	r2, [r5, #28]
c0de7dc6:	4650      	mov	r0, sl
c0de7dc8:	f7fe fceb 	bl	c0de67a2 <nbgl_layoutAddLongPressButton>
c0de7dcc:	e0b3      	b.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7dce:	ae0d      	add	r6, sp, #52	@ 0x34
c0de7dd0:	2124      	movs	r1, #36	@ 0x24
c0de7dd2:	f000 f8f2 	bl	c0de7fba <OUTLINED_FUNCTION_4>
c0de7dd6:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de7dda:	2400      	movs	r4, #0
c0de7ddc:	f88d 4034 	strb.w	r4, [sp, #52]	@ 0x34
c0de7de0:	f000 f8de 	bl	c0de7fa0 <OUTLINED_FUNCTION_2>
c0de7de4:	f44f 7080 	mov.w	r0, #256	@ 0x100
c0de7de8:	940a      	str	r4, [sp, #40]	@ 0x28
c0de7dea:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de7dee:	f8ad 002e 	strh.w	r0, [sp, #46]	@ 0x2e
c0de7df2:	69a8      	ldr	r0, [r5, #24]
c0de7df4:	9009      	str	r0, [sp, #36]	@ 0x24
c0de7df6:	7f28      	ldrb	r0, [r5, #28]
c0de7df8:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de7dfc:	7f68      	ldrb	r0, [r5, #29]
c0de7dfe:	f88d 0030 	strb.w	r0, [sp, #48]	@ 0x30
c0de7e02:	a909      	add	r1, sp, #36	@ 0x24
c0de7e04:	e04f      	b.n	c0de7ea6 <nbgl_pageDrawGenericContentExt+0x372>
c0de7e06:	f1b8 0f00 	cmp.w	r8, #0
c0de7e0a:	d101      	bne.n	c0de7e10 <nbgl_pageDrawGenericContentExt+0x2dc>
c0de7e0c:	f000 f8bb 	bl	c0de7f86 <OUTLINED_FUNCTION_0>
c0de7e10:	f000 f8dd 	bl	c0de7fce <OUTLINED_FUNCTION_6>
c0de7e14:	e08f      	b.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7e16:	f1b8 0f00 	cmp.w	r8, #0
c0de7e1a:	d101      	bne.n	c0de7e20 <nbgl_pageDrawGenericContentExt+0x2ec>
c0de7e1c:	f000 f8b3 	bl	c0de7f86 <OUTLINED_FUNCTION_0>
c0de7e20:	7ee8      	ldrb	r0, [r5, #27]
c0de7e22:	f105 0110 	add.w	r1, r5, #16
c0de7e26:	3803      	subs	r0, #3
c0de7e28:	76e8      	strb	r0, [r5, #27]
c0de7e2a:	4650      	mov	r0, sl
c0de7e2c:	f7fe fa10 	bl	c0de6250 <nbgl_layoutAddTagValueList>
c0de7e30:	2001      	movs	r0, #1
c0de7e32:	f88d 003d 	strb.w	r0, [sp, #61]	@ 0x3d
c0de7e36:	f8ad 003e 	strh.w	r0, [sp, #62]	@ 0x3e
c0de7e3a:	e9d5 0109 	ldrd	r0, r1, [r5, #36]	@ 0x24
c0de7e3e:	e9cd 100d 	strd	r1, r0, [sp, #52]	@ 0x34
c0de7e42:	f000 f8bd 	bl	c0de7fc0 <OUTLINED_FUNCTION_5>
c0de7e46:	e02b      	b.n	c0de7ea0 <nbgl_pageDrawGenericContentExt+0x36c>
c0de7e48:	f1b8 0f00 	cmp.w	r8, #0
c0de7e4c:	d101      	bne.n	c0de7e52 <nbgl_pageDrawGenericContentExt+0x31e>
c0de7e4e:	f000 f89a 	bl	c0de7f86 <OUTLINED_FUNCTION_0>
c0de7e52:	f000 f8bc 	bl	c0de7fce <OUTLINED_FUNCTION_6>
c0de7e56:	6aa8      	ldr	r0, [r5, #40]	@ 0x28
c0de7e58:	2800      	cmp	r0, #0
c0de7e5a:	d073      	beq.n	c0de7f44 <nbgl_pageDrawGenericContentExt+0x410>
c0de7e5c:	900d      	str	r0, [sp, #52]	@ 0x34
c0de7e5e:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de7e60:	2101      	movs	r1, #1
c0de7e62:	f8ad 103e 	strh.w	r1, [sp, #62]	@ 0x3e
c0de7e66:	f88d 103d 	strb.w	r1, [sp, #61]	@ 0x3d
c0de7e6a:	900e      	str	r0, [sp, #56]	@ 0x38
c0de7e6c:	f000 f8a8 	bl	c0de7fc0 <OUTLINED_FUNCTION_5>
c0de7e70:	f88d 0040 	strb.w	r0, [sp, #64]	@ 0x40
c0de7e74:	a90d      	add	r1, sp, #52	@ 0x34
c0de7e76:	4650      	mov	r0, sl
c0de7e78:	f7fe fbb7 	bl	c0de65ea <nbgl_layoutAddButton>
c0de7e7c:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de7e7e:	2800      	cmp	r0, #0
c0de7e80:	d059      	beq.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7e82:	2100      	movs	r1, #0
c0de7e84:	900d      	str	r0, [sp, #52]	@ 0x34
c0de7e86:	f895 002d 	ldrb.w	r0, [r5, #45]	@ 0x2d
c0de7e8a:	f88d 103d 	strb.w	r1, [sp, #61]	@ 0x3d
c0de7e8e:	910e      	str	r1, [sp, #56]	@ 0x38
c0de7e90:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de7e94:	f8ad 103e 	strh.w	r1, [sp, #62]	@ 0x3e
c0de7e98:	f895 1038 	ldrb.w	r1, [r5, #56]	@ 0x38
c0de7e9c:	f88d 103c 	strb.w	r1, [sp, #60]	@ 0x3c
c0de7ea0:	f88d 0040 	strb.w	r0, [sp, #64]	@ 0x40
c0de7ea4:	a90d      	add	r1, sp, #52	@ 0x34
c0de7ea6:	4650      	mov	r0, sl
c0de7ea8:	f7fe fb9f 	bl	c0de65ea <nbgl_layoutAddButton>
c0de7eac:	e043      	b.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7eae:	2400      	movs	r4, #0
c0de7eb0:	2600      	movs	r6, #0
c0de7eb2:	7d28      	ldrb	r0, [r5, #20]
c0de7eb4:	4286      	cmp	r6, r0
c0de7eb6:	d23e      	bcs.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7eb8:	6928      	ldr	r0, [r5, #16]
c0de7eba:	1901      	adds	r1, r0, r4
c0de7ebc:	4650      	mov	r0, sl
c0de7ebe:	f7fd fb8b 	bl	c0de55d8 <nbgl_layoutAddSwitch>
c0de7ec2:	1a3f      	subs	r7, r7, r0
c0de7ec4:	b2b8      	uxth	r0, r7
c0de7ec6:	280b      	cmp	r0, #11
c0de7ec8:	d302      	bcc.n	c0de7ed0 <nbgl_pageDrawGenericContentExt+0x39c>
c0de7eca:	4650      	mov	r0, sl
c0de7ecc:	f7fe fb70 	bl	c0de65b0 <nbgl_layoutAddSeparationLine>
c0de7ed0:	340c      	adds	r4, #12
c0de7ed2:	3601      	adds	r6, #1
c0de7ed4:	e7ed      	b.n	c0de7eb2 <nbgl_pageDrawGenericContentExt+0x37e>
c0de7ed6:	2600      	movs	r6, #0
c0de7ed8:	2400      	movs	r4, #0
c0de7eda:	7f28      	ldrb	r0, [r5, #28]
c0de7edc:	4284      	cmp	r4, r0
c0de7ede:	d22a      	bcs.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7ee0:	7fa8      	ldrb	r0, [r5, #30]
c0de7ee2:	b180      	cbz	r0, c0de7f06 <nbgl_pageDrawGenericContentExt+0x3d2>
c0de7ee4:	69a8      	ldr	r0, [r5, #24]
c0de7ee6:	b170      	cbz	r0, c0de7f06 <nbgl_pageDrawGenericContentExt+0x3d2>
c0de7ee8:	5980      	ldr	r0, [r0, r6]
c0de7eea:	b160      	cbz	r0, c0de7f06 <nbgl_pageDrawGenericContentExt+0x3d2>
c0de7eec:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de7ef0:	7f6b      	ldrb	r3, [r5, #29]
c0de7ef2:	f851 2024 	ldr.w	r2, [r1, r4, lsl #2]
c0de7ef6:	f850 1024 	ldr.w	r1, [r0, r4, lsl #2]
c0de7efa:	b2e0      	uxtb	r0, r4
c0de7efc:	9000      	str	r0, [sp, #0]
c0de7efe:	4650      	mov	r0, sl
c0de7f00:	f7fd fbb0 	bl	c0de5664 <nbgl_layoutAddTextWithAlias>
c0de7f04:	e008      	b.n	c0de7f18 <nbgl_pageDrawGenericContentExt+0x3e4>
c0de7f06:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de7f0a:	f851 2024 	ldr.w	r2, [r1, r4, lsl #2]
c0de7f0e:	f850 1024 	ldr.w	r1, [r0, r4, lsl #2]
c0de7f12:	4650      	mov	r0, sl
c0de7f14:	f7fd fb85 	bl	c0de5622 <nbgl_layoutAddText>
c0de7f18:	1a3f      	subs	r7, r7, r0
c0de7f1a:	b2b8      	uxth	r0, r7
c0de7f1c:	280b      	cmp	r0, #11
c0de7f1e:	d302      	bcc.n	c0de7f26 <nbgl_pageDrawGenericContentExt+0x3f2>
c0de7f20:	4650      	mov	r0, sl
c0de7f22:	f7fe fb45 	bl	c0de65b0 <nbgl_layoutAddSeparationLine>
c0de7f26:	3618      	adds	r6, #24
c0de7f28:	3401      	adds	r4, #1
c0de7f2a:	e7d6      	b.n	c0de7eda <nbgl_pageDrawGenericContentExt+0x3a6>
c0de7f2c:	f105 0110 	add.w	r1, r5, #16
c0de7f30:	4650      	mov	r0, sl
c0de7f32:	f7fd fc77 	bl	c0de5824 <nbgl_layoutAddRadioChoice>
c0de7f36:	4650      	mov	r0, sl
c0de7f38:	f7fe ff89 	bl	c0de6e4e <nbgl_layoutDraw>
c0de7f3c:	4650      	mov	r0, sl
c0de7f3e:	b016      	add	sp, #88	@ 0x58
c0de7f40:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7f44:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de7f46:	2800      	cmp	r0, #0
c0de7f48:	d098      	beq.n	c0de7e7c <nbgl_pageDrawGenericContentExt+0x348>
c0de7f4a:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de7f4c:	2900      	cmp	r1, #0
c0de7f4e:	d095      	beq.n	c0de7e7c <nbgl_pageDrawGenericContentExt+0x348>
c0de7f50:	e9cd 010d 	strd	r0, r1, [sp, #52]	@ 0x34
c0de7f54:	f895 002c 	ldrb.w	r0, [r5, #44]	@ 0x2c
c0de7f58:	f895 102d 	ldrb.w	r1, [r5, #45]	@ 0x2d
c0de7f5c:	f895 2038 	ldrb.w	r2, [r5, #56]	@ 0x38
c0de7f60:	f88d 003c 	strb.w	r0, [sp, #60]	@ 0x3c
c0de7f64:	f88d 203d 	strb.w	r2, [sp, #61]	@ 0x3d
c0de7f68:	f88d 103e 	strb.w	r1, [sp, #62]	@ 0x3e
c0de7f6c:	a90d      	add	r1, sp, #52	@ 0x34
c0de7f6e:	4650      	mov	r0, sl
c0de7f70:	f7fe f95a 	bl	c0de6228 <nbgl_layoutAddHorizontalButtons>
c0de7f74:	e7df      	b.n	c0de7f36 <nbgl_pageDrawGenericContentExt+0x402>
c0de7f76:	bf00      	nop
c0de7f78:	0000494b 	.word	0x0000494b

c0de7f7c <nbgl_pageDrawGenericContent>:
c0de7f7c:	2300      	movs	r3, #0
c0de7f7e:	f7ff bdd9 	b.w	c0de7b34 <nbgl_pageDrawGenericContentExt>

c0de7f82 <nbgl_pageRelease>:
c0de7f82:	f7fe bf83 	b.w	c0de6e8c <nbgl_layoutRelease>

c0de7f86 <OUTLINED_FUNCTION_0>:
c0de7f86:	4650      	mov	r0, sl
c0de7f88:	2128      	movs	r1, #40	@ 0x28
c0de7f8a:	f7ff bd89 	b.w	c0de7aa0 <addEmptyHeader>

c0de7f8e <OUTLINED_FUNCTION_1>:
c0de7f8e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7f92:	788a      	ldrb	r2, [r1, #2]
c0de7f94:	78c9      	ldrb	r1, [r1, #3]
c0de7f96:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7f9a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de7f9e:	4770      	bx	lr

c0de7fa0 <OUTLINED_FUNCTION_2>:
c0de7fa0:	910e      	str	r1, [sp, #56]	@ 0x38
c0de7fa2:	9011      	str	r0, [sp, #68]	@ 0x44
c0de7fa4:	4650      	mov	r0, sl
c0de7fa6:	4631      	mov	r1, r6
c0de7fa8:	f7fd bfba 	b.w	c0de5f20 <nbgl_layoutAddContentCenter>

c0de7fac <OUTLINED_FUNCTION_3>:
c0de7fac:	7c73      	ldrb	r3, [r6, #17]
c0de7fae:	f88d 003e 	strb.w	r0, [sp, #62]	@ 0x3e
c0de7fb2:	7830      	ldrb	r0, [r6, #0]
c0de7fb4:	f88d 1034 	strb.w	r1, [sp, #52]	@ 0x34
c0de7fb8:	4770      	bx	lr

c0de7fba <OUTLINED_FUNCTION_4>:
c0de7fba:	4630      	mov	r0, r6
c0de7fbc:	f003 bd46 	b.w	c0deba4c <__aeabi_memclr>

c0de7fc0 <OUTLINED_FUNCTION_5>:
c0de7fc0:	f895 002c 	ldrb.w	r0, [r5, #44]	@ 0x2c
c0de7fc4:	f88d 003c 	strb.w	r0, [sp, #60]	@ 0x3c
c0de7fc8:	f895 002d 	ldrb.w	r0, [r5, #45]	@ 0x2d
c0de7fcc:	4770      	bx	lr

c0de7fce <OUTLINED_FUNCTION_6>:
c0de7fce:	f105 0110 	add.w	r1, r5, #16
c0de7fd2:	4650      	mov	r0, sl
c0de7fd4:	f7fe b93c 	b.w	c0de6250 <nbgl_layoutAddTagValueList>

c0de7fd8 <getNbTagValuesInPage>:
c0de7fd8:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de7fdc:	4604      	mov	r4, r0
c0de7fde:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de7fe0:	f04f 0800 	mov.w	r8, #0
c0de7fe4:	2b00      	cmp	r3, #0
c0de7fe6:	460e      	mov	r6, r1
c0de7fe8:	f04f 0b00 	mov.w	fp, #0
c0de7fec:	f880 8000 	strb.w	r8, [r0]
c0de7ff0:	f44f 70e8 	mov.w	r0, #464	@ 0x1d0
c0de7ff4:	bf18      	it	ne
c0de7ff6:	f44f 70cc 	movne.w	r0, #408	@ 0x198
c0de7ffa:	0111      	lsls	r1, r2, #4
c0de7ffc:	e9cd 2001 	strd	r2, r0, [sp, #4]
c0de8000:	4544      	cmp	r4, r8
c0de8002:	d052      	beq.n	c0de80aa <getNbTagValuesInPage+0xd2>
c0de8004:	465d      	mov	r5, fp
c0de8006:	f10b 0a18 	add.w	sl, fp, #24
c0de800a:	f1b8 0f00 	cmp.w	r8, #0
c0de800e:	bf18      	it	ne
c0de8010:	4655      	movne	r5, sl
c0de8012:	6830      	ldr	r0, [r6, #0]
c0de8014:	9103      	str	r1, [sp, #12]
c0de8016:	b108      	cbz	r0, c0de801c <getNbTagValuesInPage+0x44>
c0de8018:	4408      	add	r0, r1
c0de801a:	e004      	b.n	c0de8026 <getNbTagValuesInPage+0x4e>
c0de801c:	9801      	ldr	r0, [sp, #4]
c0de801e:	6871      	ldr	r1, [r6, #4]
c0de8020:	4440      	add	r0, r8
c0de8022:	b2c0      	uxtb	r0, r0
c0de8024:	4788      	blx	r1
c0de8026:	f003 fad1 	bl	c0deb5cc <pic>
c0de802a:	4607      	mov	r7, r0
c0de802c:	7b00      	ldrb	r0, [r0, #12]
c0de802e:	07c1      	lsls	r1, r0, #31
c0de8030:	bf18      	it	ne
c0de8032:	f1b8 0f00 	cmpne.w	r8, #0
c0de8036:	d13b      	bne.n	c0de80b0 <getNbTagValuesInPage+0xd8>
c0de8038:	0780      	lsls	r0, r0, #30
c0de803a:	d45d      	bmi.n	c0de80f8 <getNbTagValuesInPage+0x120>
c0de803c:	7bb3      	ldrb	r3, [r6, #14]
c0de803e:	6839      	ldr	r1, [r7, #0]
c0de8040:	200b      	movs	r0, #11
c0de8042:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8046:	46a2      	mov	sl, r4
c0de8048:	f003 f8f8 	bl	c0deb23c <nbgl_getTextHeightInWidth>
c0de804c:	182c      	adds	r4, r5, r0
c0de804e:	7b70      	ldrb	r0, [r6, #13]
c0de8050:	250b      	movs	r5, #11
c0de8052:	7bb3      	ldrb	r3, [r6, #14]
c0de8054:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8058:	2800      	cmp	r0, #0
c0de805a:	bf08      	it	eq
c0de805c:	250d      	moveq	r5, #13
c0de805e:	6879      	ldr	r1, [r7, #4]
c0de8060:	4628      	mov	r0, r5
c0de8062:	f003 f8eb 	bl	c0deb23c <nbgl_getTextHeightInWidth>
c0de8066:	4420      	add	r0, r4
c0de8068:	6879      	ldr	r1, [r7, #4]
c0de806a:	7bb3      	ldrb	r3, [r6, #14]
c0de806c:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8070:	f100 0b04 	add.w	fp, r0, #4
c0de8074:	4628      	mov	r0, r5
c0de8076:	fa1f f48b 	uxth.w	r4, fp
c0de807a:	f003 f8e4 	bl	c0deb246 <nbgl_getTextNbLinesInWidth>
c0de807e:	9902      	ldr	r1, [sp, #8]
c0de8080:	428c      	cmp	r4, r1
c0de8082:	bf38      	it	cc
c0de8084:	280a      	cmpcc	r0, #10
c0de8086:	d205      	bcs.n	c0de8094 <getNbTagValuesInPage+0xbc>
c0de8088:	9903      	ldr	r1, [sp, #12]
c0de808a:	f108 0801 	add.w	r8, r8, #1
c0de808e:	4654      	mov	r4, sl
c0de8090:	3110      	adds	r1, #16
c0de8092:	e7b5      	b.n	c0de8000 <getNbTagValuesInPage+0x28>
c0de8094:	ea5f 6008 	movs.w	r0, r8, lsl #24
c0de8098:	d104      	bne.n	c0de80a4 <getNbTagValuesInPage+0xcc>
c0de809a:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de809c:	f04f 0801 	mov.w	r8, #1
c0de80a0:	f880 8000 	strb.w	r8, [r0]
c0de80a4:	4654      	mov	r4, sl
c0de80a6:	46da      	mov	sl, fp
c0de80a8:	e003      	b.n	c0de80b2 <getNbTagValuesInPage+0xda>
c0de80aa:	46da      	mov	sl, fp
c0de80ac:	46a0      	mov	r8, r4
c0de80ae:	e000      	b.n	c0de80b2 <getNbTagValuesInPage+0xda>
c0de80b0:	46aa      	mov	sl, r5
c0de80b2:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de80b4:	b170      	cbz	r0, c0de80d4 <getNbTagValuesInPage+0xfc>
c0de80b6:	fa5f f088 	uxtb.w	r0, r8
c0de80ba:	42a0      	cmp	r0, r4
c0de80bc:	d10a      	bne.n	c0de80d4 <getNbTagValuesInPage+0xfc>
c0de80be:	9902      	ldr	r1, [sp, #8]
c0de80c0:	fa1f f08a 	uxth.w	r0, sl
c0de80c4:	f501 71bc 	add.w	r1, r1, #376	@ 0x178
c0de80c8:	f401 71ac 	and.w	r1, r1, #344	@ 0x158
c0de80cc:	4281      	cmp	r1, r0
c0de80ce:	bf38      	it	cc
c0de80d0:	3c01      	subcc	r4, #1
c0de80d2:	e00d      	b.n	c0de80f0 <getNbTagValuesInPage+0x118>
c0de80d4:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de80d6:	b150      	cbz	r0, c0de80ee <getNbTagValuesInPage+0x116>
c0de80d8:	9902      	ldr	r1, [sp, #8]
c0de80da:	fa1f f08a 	uxth.w	r0, sl
c0de80de:	f501 71e0 	add.w	r1, r1, #448	@ 0x1c0
c0de80e2:	f401 71ec 	and.w	r1, r1, #472	@ 0x1d8
c0de80e6:	4281      	cmp	r1, r0
c0de80e8:	bf38      	it	cc
c0de80ea:	f1a8 0801 	subcc.w	r8, r8, #1
c0de80ee:	4644      	mov	r4, r8
c0de80f0:	b2e0      	uxtb	r0, r4
c0de80f2:	b004      	add	sp, #16
c0de80f4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de80f8:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de80fa:	f1b8 0f00 	cmp.w	r8, #0
c0de80fe:	d1d9      	bne.n	c0de80b4 <getNbTagValuesInPage+0xdc>
c0de8100:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de8102:	f04f 0801 	mov.w	r8, #1
c0de8106:	46da      	mov	sl, fp
c0de8108:	f881 8000 	strb.w	r8, [r1]
c0de810c:	e7d2      	b.n	c0de80b4 <getNbTagValuesInPage+0xdc>

c0de810e <nbgl_useCaseGetNbInfosInPage>:
c0de810e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8112:	f002 fc0f 	bl	c0dea934 <OUTLINED_FUNCTION_11>
c0de8116:	bf18      	it	ne
c0de8118:	f44f 7bcc 	movne.w	fp, #408	@ 0x198
c0de811c:	6848      	ldr	r0, [r1, #4]
c0de811e:	f003 fa55 	bl	c0deb5cc <pic>
c0de8122:	eb00 0486 	add.w	r4, r0, r6, lsl #2
c0de8126:	2600      	movs	r6, #0
c0de8128:	2500      	movs	r5, #0
c0de812a:	2700      	movs	r7, #0
c0de812c:	45b2      	cmp	sl, r6
c0de812e:	d011      	beq.n	c0de8154 <nbgl_useCaseGetNbInfosInPage+0x46>
c0de8130:	f854 0026 	ldr.w	r0, [r4, r6, lsl #2]
c0de8134:	f003 fa4a 	bl	c0deb5cc <pic>
c0de8138:	4601      	mov	r1, r0
c0de813a:	200b      	movs	r0, #11
c0de813c:	f002 fbd0 	bl	c0dea8e0 <OUTLINED_FUNCTION_1>
c0de8140:	f107 0168 	add.w	r1, r7, #104	@ 0x68
c0de8144:	b289      	uxth	r1, r1
c0de8146:	180f      	adds	r7, r1, r0
c0de8148:	b2b8      	uxth	r0, r7
c0de814a:	4558      	cmp	r0, fp
c0de814c:	d204      	bcs.n	c0de8158 <nbgl_useCaseGetNbInfosInPage+0x4a>
c0de814e:	3601      	adds	r6, #1
c0de8150:	4605      	mov	r5, r0
c0de8152:	e7eb      	b.n	c0de812c <nbgl_useCaseGetNbInfosInPage+0x1e>
c0de8154:	4656      	mov	r6, sl
c0de8156:	e006      	b.n	c0de8166 <nbgl_useCaseGetNbInfosInPage+0x58>
c0de8158:	f1b8 0f00 	cmp.w	r8, #0
c0de815c:	d103      	bne.n	c0de8166 <nbgl_useCaseGetNbInfosInPage+0x58>
c0de815e:	08e8      	lsrs	r0, r5, #3
c0de8160:	2832      	cmp	r0, #50	@ 0x32
c0de8162:	bf88      	it	hi
c0de8164:	3e01      	subhi	r6, #1
c0de8166:	b2f0      	uxtb	r0, r6
c0de8168:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de816c <nbgl_useCaseGetNbSwitchesInPage>:
c0de816c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8170:	f002 fbe0 	bl	c0dea934 <OUTLINED_FUNCTION_11>
c0de8174:	bf18      	it	ne
c0de8176:	f44f 7bcc 	movne.w	fp, #408	@ 0x198
c0de817a:	6808      	ldr	r0, [r1, #0]
c0de817c:	f003 fa26 	bl	c0deb5cc <pic>
c0de8180:	eb06 0146 	add.w	r1, r6, r6, lsl #1
c0de8184:	2600      	movs	r6, #0
c0de8186:	2500      	movs	r5, #0
c0de8188:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de818c:	1d04      	adds	r4, r0, #4
c0de818e:	462f      	mov	r7, r5
c0de8190:	45b2      	cmp	sl, r6
c0de8192:	d01f      	beq.n	c0de81d4 <nbgl_useCaseGetNbSwitchesInPage+0x68>
c0de8194:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de8198:	200c      	movs	r0, #12
c0de819a:	f002 fba1 	bl	c0dea8e0 <OUTLINED_FUNCTION_1>
c0de819e:	2828      	cmp	r0, #40	@ 0x28
c0de81a0:	d201      	bcs.n	c0de81a6 <nbgl_useCaseGetNbSwitchesInPage+0x3a>
c0de81a2:	2028      	movs	r0, #40	@ 0x28
c0de81a4:	e004      	b.n	c0de81b0 <nbgl_useCaseGetNbSwitchesInPage+0x44>
c0de81a6:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de81aa:	200c      	movs	r0, #12
c0de81ac:	f002 fb98 	bl	c0dea8e0 <OUTLINED_FUNCTION_1>
c0de81b0:	6821      	ldr	r1, [r4, #0]
c0de81b2:	4438      	add	r0, r7
c0de81b4:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de81b8:	b129      	cbz	r1, c0de81c6 <nbgl_useCaseGetNbSwitchesInPage+0x5a>
c0de81ba:	200b      	movs	r0, #11
c0de81bc:	f002 fb90 	bl	c0dea8e0 <OUTLINED_FUNCTION_1>
c0de81c0:	4428      	add	r0, r5
c0de81c2:	f100 050c 	add.w	r5, r0, #12
c0de81c6:	340c      	adds	r4, #12
c0de81c8:	3601      	adds	r6, #1
c0de81ca:	b2a8      	uxth	r0, r5
c0de81cc:	4583      	cmp	fp, r0
c0de81ce:	d8de      	bhi.n	c0de818e <nbgl_useCaseGetNbSwitchesInPage+0x22>
c0de81d0:	f1a6 0a01 	sub.w	sl, r6, #1
c0de81d4:	b2b8      	uxth	r0, r7
c0de81d6:	2100      	movs	r1, #0
c0de81d8:	08c0      	lsrs	r0, r0, #3
c0de81da:	2832      	cmp	r0, #50	@ 0x32
c0de81dc:	bf88      	it	hi
c0de81de:	2101      	movhi	r1, #1
c0de81e0:	ea21 0008 	bic.w	r0, r1, r8
c0de81e4:	ebaa 0000 	sub.w	r0, sl, r0
c0de81e8:	b2c0      	uxtb	r0, r0
c0de81ea:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de81ee <nbgl_useCaseGetNbBarsInPage>:
c0de81ee:	b570      	push	{r4, r5, r6, lr}
c0de81f0:	f44f 71fc 	mov.w	r1, #504	@ 0x1f8
c0de81f4:	2b00      	cmp	r3, #0
c0de81f6:	bf18      	it	ne
c0de81f8:	f44f 71cc 	movne.w	r1, #408	@ 0x198
c0de81fc:	2200      	movs	r2, #0
c0de81fe:	2400      	movs	r4, #0
c0de8200:	2500      	movs	r5, #0
c0de8202:	b2ee      	uxtb	r6, r5
c0de8204:	4286      	cmp	r6, r0
c0de8206:	d208      	bcs.n	c0de821a <nbgl_useCaseGetNbBarsInPage+0x2c>
c0de8208:	b292      	uxth	r2, r2
c0de820a:	325c      	adds	r2, #92	@ 0x5c
c0de820c:	b296      	uxth	r6, r2
c0de820e:	428e      	cmp	r6, r1
c0de8210:	d202      	bcs.n	c0de8218 <nbgl_useCaseGetNbBarsInPage+0x2a>
c0de8212:	3501      	adds	r5, #1
c0de8214:	4634      	mov	r4, r6
c0de8216:	e7f4      	b.n	c0de8202 <nbgl_useCaseGetNbBarsInPage+0x14>
c0de8218:	4628      	mov	r0, r5
c0de821a:	08e1      	lsrs	r1, r4, #3
c0de821c:	2200      	movs	r2, #0
c0de821e:	2932      	cmp	r1, #50	@ 0x32
c0de8220:	bf88      	it	hi
c0de8222:	2201      	movhi	r2, #1
c0de8224:	ea22 0103 	bic.w	r1, r2, r3
c0de8228:	1a40      	subs	r0, r0, r1
c0de822a:	b2c0      	uxtb	r0, r0
c0de822c:	bd70      	pop	{r4, r5, r6, pc}

c0de822e <nbgl_useCaseGetNbChoicesInPage>:
c0de822e:	b570      	push	{r4, r5, r6, lr}
c0de8230:	f44f 72fc 	mov.w	r2, #504	@ 0x1f8
c0de8234:	2b00      	cmp	r3, #0
c0de8236:	bf18      	it	ne
c0de8238:	f44f 72cc 	movne.w	r2, #408	@ 0x198
c0de823c:	2400      	movs	r4, #0
c0de823e:	2500      	movs	r5, #0
c0de8240:	2100      	movs	r1, #0
c0de8242:	b2ce      	uxtb	r6, r1
c0de8244:	4286      	cmp	r6, r0
c0de8246:	d207      	bcs.n	c0de8258 <nbgl_useCaseGetNbChoicesInPage+0x2a>
c0de8248:	b2a4      	uxth	r4, r4
c0de824a:	345c      	adds	r4, #92	@ 0x5c
c0de824c:	b2a6      	uxth	r6, r4
c0de824e:	4296      	cmp	r6, r2
c0de8250:	d204      	bcs.n	c0de825c <nbgl_useCaseGetNbChoicesInPage+0x2e>
c0de8252:	3101      	adds	r1, #1
c0de8254:	4635      	mov	r5, r6
c0de8256:	e7f4      	b.n	c0de8242 <nbgl_useCaseGetNbChoicesInPage+0x14>
c0de8258:	4601      	mov	r1, r0
c0de825a:	e004      	b.n	c0de8266 <nbgl_useCaseGetNbChoicesInPage+0x38>
c0de825c:	b91b      	cbnz	r3, c0de8266 <nbgl_useCaseGetNbChoicesInPage+0x38>
c0de825e:	08e8      	lsrs	r0, r5, #3
c0de8260:	2832      	cmp	r0, #50	@ 0x32
c0de8262:	bf88      	it	hi
c0de8264:	3901      	subhi	r1, #1
c0de8266:	b2c8      	uxtb	r0, r1
c0de8268:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de826c <useCaseHomeExt>:
c0de826c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de8270:	b08f      	sub	sp, #60	@ 0x3c
c0de8272:	4604      	mov	r4, r0
c0de8274:	a802      	add	r0, sp, #8
c0de8276:	460f      	mov	r7, r1
c0de8278:	2130      	movs	r1, #48	@ 0x30
c0de827a:	461e      	mov	r6, r3
c0de827c:	4615      	mov	r5, r2
c0de827e:	3004      	adds	r0, #4
c0de8280:	f003 fbe4 	bl	c0deba4c <__aeabi_memclr>
c0de8284:	2009      	movs	r0, #9
c0de8286:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de828a:	2006      	movs	r0, #6
c0de828c:	f88d 001e 	strb.w	r0, [sp, #30]
c0de8290:	2004      	movs	r0, #4
c0de8292:	f88d 001d 	strb.w	r0, [sp, #29]
c0de8296:	2003      	movs	r0, #3
c0de8298:	2e00      	cmp	r6, #0
c0de829a:	bf18      	it	ne
c0de829c:	2001      	movne	r0, #1
c0de829e:	f88d 001c 	strb.w	r0, [sp, #28]
c0de82a2:	9705      	str	r7, [sp, #20]
c0de82a4:	9402      	str	r4, [sp, #8]
c0de82a6:	f000 f87b 	bl	c0de83a0 <reset_callbacks_and_context>
c0de82aa:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de82ac:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de82b0:	b951      	cbnz	r1, c0de82c8 <useCaseHomeExt+0x5c>
c0de82b2:	b94a      	cbnz	r2, c0de82c8 <useCaseHomeExt+0x5c>
c0de82b4:	4831      	ldr	r0, [pc, #196]	@ (c0de837c <useCaseHomeExt+0x110>)
c0de82b6:	2100      	movs	r1, #0
c0de82b8:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
c0de82bc:	4448      	add	r0, r9
c0de82be:	6241      	str	r1, [r0, #36]	@ 0x24
c0de82c0:	2002      	movs	r0, #2
c0de82c2:	f88d 001f 	strb.w	r0, [sp, #31]
c0de82c6:	e00e      	b.n	c0de82e6 <useCaseHomeExt+0x7a>
c0de82c8:	4b2c      	ldr	r3, [pc, #176]	@ (c0de837c <useCaseHomeExt+0x110>)
c0de82ca:	6886      	ldr	r6, [r0, #8]
c0de82cc:	e9cd 120c 	strd	r1, r2, [sp, #48]	@ 0x30
c0de82d0:	444b      	add	r3, r9
c0de82d2:	625e      	str	r6, [r3, #36]	@ 0x24
c0de82d4:	2308      	movs	r3, #8
c0de82d6:	7b00      	ldrb	r0, [r0, #12]
c0de82d8:	f88d 301f 	strb.w	r3, [sp, #31]
c0de82dc:	2800      	cmp	r0, #0
c0de82de:	bf18      	it	ne
c0de82e0:	2001      	movne	r0, #1
c0de82e2:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de82e6:	e9dd a817 	ldrd	sl, r8, [sp, #92]	@ 0x5c
c0de82ea:	bb8d      	cbnz	r5, c0de8350 <useCaseHomeExt+0xe4>
c0de82ec:	4620      	mov	r0, r4
c0de82ee:	f003 fbff 	bl	c0debaf0 <strlen>
c0de82f2:	4e24      	ldr	r6, [pc, #144]	@ (c0de8384 <useCaseHomeExt+0x118>)
c0de82f4:	2814      	cmp	r0, #20
c0de82f6:	447e      	add	r6, pc
c0de82f8:	d307      	bcc.n	c0de830a <useCaseHomeExt+0x9e>
c0de82fa:	4821      	ldr	r0, [pc, #132]	@ (c0de8380 <useCaseHomeExt+0x114>)
c0de82fc:	4922      	ldr	r1, [pc, #136]	@ (c0de8388 <useCaseHomeExt+0x11c>)
c0de82fe:	2236      	movs	r2, #54	@ 0x36
c0de8300:	4448      	add	r0, r9
c0de8302:	4479      	add	r1, pc
c0de8304:	f003 fb98 	bl	c0deba38 <__aeabi_memcpy>
c0de8308:	e00a      	b.n	c0de8320 <useCaseHomeExt+0xb4>
c0de830a:	e9cd 4600 	strd	r4, r6, [sp]
c0de830e:	481c      	ldr	r0, [pc, #112]	@ (c0de8380 <useCaseHomeExt+0x114>)
c0de8310:	214a      	movs	r1, #74	@ 0x4a
c0de8312:	4a1e      	ldr	r2, [pc, #120]	@ (c0de838c <useCaseHomeExt+0x120>)
c0de8314:	4b1e      	ldr	r3, [pc, #120]	@ (c0de8390 <useCaseHomeExt+0x124>)
c0de8316:	4448      	add	r0, r9
c0de8318:	447a      	add	r2, pc
c0de831a:	447b      	add	r3, pc
c0de831c:	f002 ffc4 	bl	c0deb2a8 <snprintf>
c0de8320:	4f17      	ldr	r7, [pc, #92]	@ (c0de8380 <useCaseHomeExt+0x114>)
c0de8322:	200b      	movs	r0, #11
c0de8324:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8328:	2300      	movs	r3, #0
c0de832a:	eb09 0507 	add.w	r5, r9, r7
c0de832e:	4629      	mov	r1, r5
c0de8330:	f002 ff89 	bl	c0deb246 <nbgl_getTextNbLinesInWidth>
c0de8334:	2804      	cmp	r0, #4
c0de8336:	d30b      	bcc.n	c0de8350 <useCaseHomeExt+0xe4>
c0de8338:	e9cd 4600 	strd	r4, r6, [sp]
c0de833c:	eb09 0507 	add.w	r5, r9, r7
c0de8340:	214a      	movs	r1, #74	@ 0x4a
c0de8342:	4a14      	ldr	r2, [pc, #80]	@ (c0de8394 <useCaseHomeExt+0x128>)
c0de8344:	4b14      	ldr	r3, [pc, #80]	@ (c0de8398 <useCaseHomeExt+0x12c>)
c0de8346:	4628      	mov	r0, r5
c0de8348:	447a      	add	r2, pc
c0de834a:	447b      	add	r3, pc
c0de834c:	f002 ffac 	bl	c0deb2a8 <snprintf>
c0de8350:	480a      	ldr	r0, [pc, #40]	@ (c0de837c <useCaseHomeExt+0x110>)
c0de8352:	9503      	str	r5, [sp, #12]
c0de8354:	2100      	movs	r1, #0
c0de8356:	eb09 0400 	add.w	r4, r9, r0
c0de835a:	f8c4 a028 	str.w	sl, [r4, #40]	@ 0x28
c0de835e:	f8c4 8004 	str.w	r8, [r4, #4]
c0de8362:	480e      	ldr	r0, [pc, #56]	@ (c0de839c <useCaseHomeExt+0x130>)
c0de8364:	aa02      	add	r2, sp, #8
c0de8366:	4478      	add	r0, pc
c0de8368:	f7ff faa0 	bl	c0de78ac <nbgl_pageDrawInfo>
c0de836c:	6160      	str	r0, [r4, #20]
c0de836e:	2002      	movs	r0, #2
c0de8370:	f002 ff14 	bl	c0deb19c <nbgl_refreshSpecial>
c0de8374:	b00f      	add	sp, #60	@ 0x3c
c0de8376:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de837a:	bf00      	nop
c0de837c:	00000d68 	.word	0x00000d68
c0de8380:	00000be8 	.word	0x00000be8
c0de8384:	0000521f 	.word	0x0000521f
c0de8388:	00006456 	.word	0x00006456
c0de838c:	00004d38 	.word	0x00004d38
c0de8390:	00005421 	.word	0x00005421
c0de8394:	00004da2 	.word	0x00004da2
c0de8398:	000053f1 	.word	0x000053f1
c0de839c:	000008ef 	.word	0x000008ef

c0de83a0 <reset_callbacks_and_context>:
c0de83a0:	b580      	push	{r7, lr}
c0de83a2:	4808      	ldr	r0, [pc, #32]	@ (c0de83c4 <reset_callbacks_and_context+0x24>)
c0de83a4:	2100      	movs	r1, #0
c0de83a6:	4448      	add	r0, r9
c0de83a8:	e9c0 1109 	strd	r1, r1, [r0, #36]	@ 0x24
c0de83ac:	62c1      	str	r1, [r0, #44]	@ 0x2c
c0de83ae:	e9c0 1101 	strd	r1, r1, [r0, #4]
c0de83b2:	60c1      	str	r1, [r0, #12]
c0de83b4:	6181      	str	r1, [r0, #24]
c0de83b6:	4804      	ldr	r0, [pc, #16]	@ (c0de83c8 <reset_callbacks_and_context+0x28>)
c0de83b8:	2190      	movs	r1, #144	@ 0x90
c0de83ba:	4448      	add	r0, r9
c0de83bc:	f003 fb46 	bl	c0deba4c <__aeabi_memclr>
c0de83c0:	bd80      	pop	{r7, pc}
c0de83c2:	bf00      	nop
c0de83c4:	00000d68 	.word	0x00000d68
c0de83c8:	00000ab0 	.word	0x00000ab0

c0de83cc <prepareNavInfo>:
c0de83cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de83d0:	4f1b      	ldr	r7, [pc, #108]	@ (c0de8440 <prepareNavInfo+0x74>)
c0de83d2:	460c      	mov	r4, r1
c0de83d4:	4606      	mov	r6, r0
c0de83d6:	211c      	movs	r1, #28
c0de83d8:	4690      	mov	r8, r2
c0de83da:	eb09 0507 	add.w	r5, r9, r7
c0de83de:	f105 0060 	add.w	r0, r5, #96	@ 0x60
c0de83e2:	f003 fb33 	bl	c0deba4c <__aeabi_memclr>
c0de83e6:	2009      	movs	r0, #9
c0de83e8:	f885 4061 	strb.w	r4, [r5, #97]	@ 0x61
c0de83ec:	f885 0065 	strb.w	r0, [r5, #101]	@ 0x65
c0de83f0:	2001      	movs	r0, #1
c0de83f2:	f885 0063 	strb.w	r0, [r5, #99]	@ 0x63
c0de83f6:	b1ce      	cbz	r6, c0de842c <prepareNavInfo+0x60>
c0de83f8:	eb09 0007 	add.w	r0, r9, r7
c0de83fc:	210c      	movs	r1, #12
c0de83fe:	f880 1062 	strb.w	r1, [r0, #98]	@ 0x62
c0de8402:	2103      	movs	r1, #3
c0de8404:	f8c0 8074 	str.w	r8, [r0, #116]	@ 0x74
c0de8408:	f880 1073 	strb.w	r1, [r0, #115]	@ 0x73
c0de840c:	f819 1007 	ldrb.w	r1, [r9, r7]
c0de8410:	3903      	subs	r1, #3
c0de8412:	bf18      	it	ne
c0de8414:	2101      	movne	r1, #1
c0de8416:	2200      	movs	r2, #0
c0de8418:	f880 1072 	strb.w	r1, [r0, #114]	@ 0x72
c0de841c:	2c01      	cmp	r4, #1
c0de841e:	bf88      	it	hi
c0de8420:	2201      	movhi	r2, #1
c0de8422:	4311      	orrs	r1, r2
c0de8424:	f880 1071 	strb.w	r1, [r0, #113]	@ 0x71
c0de8428:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de842c:	eb09 0107 	add.w	r1, r9, r7
c0de8430:	f881 0071 	strb.w	r0, [r1, #113]	@ 0x71
c0de8434:	2003      	movs	r0, #3
c0de8436:	f881 0073 	strb.w	r0, [r1, #115]	@ 0x73
c0de843a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de843e:	bf00      	nop
c0de8440:	00000d68 	.word	0x00000d68

c0de8444 <displaySettingsPage>:
c0de8444:	b570      	push	{r4, r5, r6, lr}
c0de8446:	b090      	sub	sp, #64	@ 0x40
c0de8448:	460c      	mov	r4, r1
c0de844a:	4605      	mov	r5, r0
c0de844c:	4668      	mov	r0, sp
c0de844e:	2140      	movs	r1, #64	@ 0x40
c0de8450:	f003 fafc 	bl	c0deba4c <__aeabi_memclr>
c0de8454:	4e12      	ldr	r6, [pc, #72]	@ (c0de84a0 <displaySettingsPage+0x5c>)
c0de8456:	eb09 0006 	add.w	r0, r9, r6
c0de845a:	6882      	ldr	r2, [r0, #8]
c0de845c:	b1f2      	cbz	r2, c0de849c <displaySettingsPage+0x58>
c0de845e:	4669      	mov	r1, sp
c0de8460:	4628      	mov	r0, r5
c0de8462:	4790      	blx	r2
c0de8464:	b1d0      	cbz	r0, c0de849c <displaySettingsPage+0x58>
c0de8466:	444e      	add	r6, r9
c0de8468:	2009      	movs	r0, #9
c0de846a:	466a      	mov	r2, sp
c0de846c:	f88d 0006 	strb.w	r0, [sp, #6]
c0de8470:	f240 2001 	movw	r0, #513	@ 0x201
c0de8474:	f806 5f60 	strb.w	r5, [r6, #96]!
c0de8478:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de847c:	f856 0c50 	ldr.w	r0, [r6, #-80]
c0de8480:	4631      	mov	r1, r6
c0de8482:	9000      	str	r0, [sp, #0]
c0de8484:	4807      	ldr	r0, [pc, #28]	@ (c0de84a4 <displaySettingsPage+0x60>)
c0de8486:	4478      	add	r0, pc
c0de8488:	f7ff fd78 	bl	c0de7f7c <nbgl_pageDrawGenericContent>
c0de848c:	f846 0c4c 	str.w	r0, [r6, #-76]
c0de8490:	2001      	movs	r0, #1
c0de8492:	2c00      	cmp	r4, #0
c0de8494:	bf18      	it	ne
c0de8496:	2002      	movne	r0, #2
c0de8498:	f002 fe80 	bl	c0deb19c <nbgl_refreshSpecial>
c0de849c:	b010      	add	sp, #64	@ 0x40
c0de849e:	bd70      	pop	{r4, r5, r6, pc}
c0de84a0:	00000d68 	.word	0x00000d68
c0de84a4:	000007cf 	.word	0x000007cf

c0de84a8 <nbgl_useCaseGenericSettings>:
c0de84a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de84ac:	461d      	mov	r5, r3
c0de84ae:	4616      	mov	r6, r2
c0de84b0:	4688      	mov	r8, r1
c0de84b2:	4607      	mov	r7, r0
c0de84b4:	f7ff ff74 	bl	c0de83a0 <reset_callbacks_and_context>
c0de84b8:	4c25      	ldr	r4, [pc, #148]	@ (c0de8550 <nbgl_useCaseGenericSettings+0xa8>)
c0de84ba:	2002      	movs	r0, #2
c0de84bc:	f809 0004 	strb.w	r0, [r9, r4]
c0de84c0:	eb09 0004 	add.w	r0, r9, r4
c0de84c4:	6107      	str	r7, [r0, #16]
c0de84c6:	9906      	ldr	r1, [sp, #24]
c0de84c8:	6041      	str	r1, [r0, #4]
c0de84ca:	b12e      	cbz	r6, c0de84d8 <nbgl_useCaseGenericSettings+0x30>
c0de84cc:	4821      	ldr	r0, [pc, #132]	@ (c0de8554 <nbgl_useCaseGenericSettings+0xac>)
c0de84ce:	e896 000e 	ldmia.w	r6, {r1, r2, r3}
c0de84d2:	4448      	add	r0, r9
c0de84d4:	3004      	adds	r0, #4
c0de84d6:	c00e      	stmia	r0!, {r1, r2, r3}
c0de84d8:	b1a5      	cbz	r5, c0de8504 <nbgl_useCaseGenericSettings+0x5c>
c0de84da:	481e      	ldr	r0, [pc, #120]	@ (c0de8554 <nbgl_useCaseGenericSettings+0xac>)
c0de84dc:	2101      	movs	r1, #1
c0de84de:	4448      	add	r0, r9
c0de84e0:	7501      	strb	r1, [r0, #20]
c0de84e2:	481d      	ldr	r0, [pc, #116]	@ (c0de8558 <nbgl_useCaseGenericSettings+0xb0>)
c0de84e4:	2138      	movs	r1, #56	@ 0x38
c0de84e6:	eb09 0600 	add.w	r6, r9, r0
c0de84ea:	f106 0038 	add.w	r0, r6, #56	@ 0x38
c0de84ee:	f003 faad 	bl	c0deba4c <__aeabi_memclr>
c0de84f2:	2008      	movs	r0, #8
c0de84f4:	4629      	mov	r1, r5
c0de84f6:	2230      	movs	r2, #48	@ 0x30
c0de84f8:	f886 0038 	strb.w	r0, [r6, #56]	@ 0x38
c0de84fc:	f106 003c 	add.w	r0, r6, #60	@ 0x3c
c0de8500:	f003 fa9a 	bl	c0deba38 <__aeabi_memcpy>
c0de8504:	f002 f9fa 	bl	c0dea8fc <OUTLINED_FUNCTION_4>
c0de8508:	4606      	mov	r6, r0
c0de850a:	b145      	cbz	r5, c0de851e <nbgl_useCaseGenericSettings+0x76>
c0de850c:	4812      	ldr	r0, [pc, #72]	@ (c0de8558 <nbgl_useCaseGenericSettings+0xb0>)
c0de850e:	4631      	mov	r1, r6
c0de8510:	2201      	movs	r2, #1
c0de8512:	2300      	movs	r3, #0
c0de8514:	4448      	add	r0, r9
c0de8516:	3038      	adds	r0, #56	@ 0x38
c0de8518:	f000 f848 	bl	c0de85ac <getNbPagesForContent>
c0de851c:	4406      	add	r6, r0
c0de851e:	444c      	add	r4, r9
c0de8520:	211c      	movs	r1, #28
c0de8522:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de8526:	f003 fa91 	bl	c0deba4c <__aeabi_memclr>
c0de852a:	2009      	movs	r0, #9
c0de852c:	f884 6061 	strb.w	r6, [r4, #97]	@ 0x61
c0de8530:	2101      	movs	r1, #1
c0de8532:	f884 0065 	strb.w	r0, [r4, #101]	@ 0x65
c0de8536:	2003      	movs	r0, #3
c0de8538:	f884 0073 	strb.w	r0, [r4, #115]	@ 0x73
c0de853c:	2001      	movs	r0, #1
c0de853e:	f884 0063 	strb.w	r0, [r4, #99]	@ 0x63
c0de8542:	f884 0071 	strb.w	r0, [r4, #113]	@ 0x71
c0de8546:	4640      	mov	r0, r8
c0de8548:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de854c:	f000 b8c0 	b.w	c0de86d0 <displayGenericContextPage>
c0de8550:	00000d68 	.word	0x00000d68
c0de8554:	00000ab0 	.word	0x00000ab0
c0de8558:	00000b40 	.word	0x00000b40

c0de855c <getNbPagesForGenericContents>:
c0de855c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8560:	b08e      	sub	sp, #56	@ 0x38
c0de8562:	4f11      	ldr	r7, [pc, #68]	@ (c0de85a8 <getNbPagesForGenericContents+0x4c>)
c0de8564:	4604      	mov	r4, r0
c0de8566:	2600      	movs	r6, #0
c0de8568:	46e8      	mov	r8, sp
c0de856a:	2500      	movs	r5, #0
c0de856c:	eb09 0007 	add.w	r0, r9, r7
c0de8570:	7b00      	ldrb	r0, [r0, #12]
c0de8572:	4285      	cmp	r5, r0
c0de8574:	d214      	bcs.n	c0de85a0 <getNbPagesForGenericContents+0x44>
c0de8576:	b268      	sxtb	r0, r5
c0de8578:	4641      	mov	r1, r8
c0de857a:	f001 fb59 	bl	c0de9c30 <getContentAtIdx>
c0de857e:	b170      	cbz	r0, c0de859e <getNbPagesForGenericContents+0x42>
c0de8580:	eb09 0107 	add.w	r1, r9, r7
c0de8584:	4623      	mov	r3, r4
c0de8586:	7b09      	ldrb	r1, [r1, #12]
c0de8588:	1a69      	subs	r1, r5, r1
c0de858a:	3101      	adds	r1, #1
c0de858c:	fab1 f181 	clz	r1, r1
c0de8590:	094a      	lsrs	r2, r1, #5
c0de8592:	b2f1      	uxtb	r1, r6
c0de8594:	f000 f80a 	bl	c0de85ac <getNbPagesForContent>
c0de8598:	4406      	add	r6, r0
c0de859a:	3501      	adds	r5, #1
c0de859c:	e7e6      	b.n	c0de856c <getNbPagesForGenericContents+0x10>
c0de859e:	2600      	movs	r6, #0
c0de85a0:	b2f0      	uxtb	r0, r6
c0de85a2:	b00e      	add	sp, #56	@ 0x38
c0de85a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de85a8:	00000ab0 	.word	0x00000ab0

c0de85ac <getNbPagesForContent>:
c0de85ac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de85b0:	b08c      	sub	sp, #48	@ 0x30
c0de85b2:	4606      	mov	r6, r0
c0de85b4:	fab1 f081 	clz	r0, r1
c0de85b8:	9306      	str	r3, [sp, #24]
c0de85ba:	4614      	mov	r4, r2
c0de85bc:	9109      	str	r1, [sp, #36]	@ 0x24
c0de85be:	0940      	lsrs	r0, r0, #5
c0de85c0:	4010      	ands	r0, r2
c0de85c2:	900a      	str	r0, [sp, #40]	@ 0x28
c0de85c4:	4630      	mov	r0, r6
c0de85c6:	f001 fb5d 	bl	c0de9c84 <getContentNbElement>
c0de85ca:	4605      	mov	r5, r0
c0de85cc:	f084 0001 	eor.w	r0, r4, #1
c0de85d0:	f04f 0800 	mov.w	r8, #0
c0de85d4:	f04f 0a00 	mov.w	sl, #0
c0de85d8:	f04f 0b00 	mov.w	fp, #0
c0de85dc:	270f      	movs	r7, #15
c0de85de:	9405      	str	r4, [sp, #20]
c0de85e0:	9608      	str	r6, [sp, #32]
c0de85e2:	9004      	str	r0, [sp, #16]
c0de85e4:	1d30      	adds	r0, r6, #4
c0de85e6:	9007      	str	r0, [sp, #28]
c0de85e8:	0628      	lsls	r0, r5, #24
c0de85ea:	d068      	beq.n	c0de86be <getNbPagesForContent+0x112>
c0de85ec:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de85ee:	f88d 802f 	strb.w	r8, [sp, #47]	@ 0x2f
c0de85f2:	b128      	cbz	r0, c0de8600 <getNbPagesForContent+0x54>
c0de85f4:	fa5f f38b 	uxtb.w	r3, fp
c0de85f8:	2b00      	cmp	r3, #0
c0de85fa:	bf18      	it	ne
c0de85fc:	2301      	movne	r3, #1
c0de85fe:	e000      	b.n	c0de8602 <getNbPagesForContent+0x56>
c0de8600:	2301      	movs	r3, #1
c0de8602:	9808      	ldr	r0, [sp, #32]
c0de8604:	7800      	ldrb	r0, [r0, #0]
c0de8606:	280a      	cmp	r0, #10
c0de8608:	d00e      	beq.n	c0de8628 <getNbPagesForContent+0x7c>
c0de860a:	2806      	cmp	r0, #6
c0de860c:	d011      	beq.n	c0de8632 <getNbPagesForContent+0x86>
c0de860e:	2807      	cmp	r0, #7
c0de8610:	d01e      	beq.n	c0de8650 <getNbPagesForContent+0xa4>
c0de8612:	2808      	cmp	r0, #8
c0de8614:	d023      	beq.n	c0de865e <getNbPagesForContent+0xb2>
c0de8616:	2809      	cmp	r0, #9
c0de8618:	d028      	beq.n	c0de866c <getNbPagesForContent+0xc0>
c0de861a:	2804      	cmp	r0, #4
c0de861c:	d12b      	bne.n	c0de8676 <getNbPagesForContent+0xca>
c0de861e:	2000      	movs	r0, #0
c0de8620:	f04f 0800 	mov.w	r8, #0
c0de8624:	9000      	str	r0, [sp, #0]
c0de8626:	e007      	b.n	c0de8638 <getNbPagesForContent+0x8c>
c0de8628:	b2e8      	uxtb	r0, r5
c0de862a:	2200      	movs	r2, #0
c0de862c:	f7ff fddf 	bl	c0de81ee <nbgl_useCaseGetNbBarsInPage>
c0de8630:	e028      	b.n	c0de8684 <getNbPagesForContent+0xd8>
c0de8632:	9805      	ldr	r0, [sp, #20]
c0de8634:	9000      	str	r0, [sp, #0]
c0de8636:	9804      	ldr	r0, [sp, #16]
c0de8638:	9001      	str	r0, [sp, #4]
c0de863a:	f10d 002f 	add.w	r0, sp, #47	@ 0x2f
c0de863e:	e9dd 3106 	ldrd	r3, r1, [sp, #24]
c0de8642:	fa5f f28b 	uxtb.w	r2, fp
c0de8646:	9002      	str	r0, [sp, #8]
c0de8648:	b2e8      	uxtb	r0, r5
c0de864a:	f7ff fcc5 	bl	c0de7fd8 <getNbTagValuesInPage>
c0de864e:	e019      	b.n	c0de8684 <getNbPagesForContent+0xd8>
c0de8650:	9907      	ldr	r1, [sp, #28]
c0de8652:	b2e8      	uxtb	r0, r5
c0de8654:	fa5f f28b 	uxtb.w	r2, fp
c0de8658:	f7ff fd88 	bl	c0de816c <nbgl_useCaseGetNbSwitchesInPage>
c0de865c:	e012      	b.n	c0de8684 <getNbPagesForContent+0xd8>
c0de865e:	9907      	ldr	r1, [sp, #28]
c0de8660:	b2e8      	uxtb	r0, r5
c0de8662:	fa5f f28b 	uxtb.w	r2, fp
c0de8666:	f7ff fd52 	bl	c0de810e <nbgl_useCaseGetNbInfosInPage>
c0de866a:	e00b      	b.n	c0de8684 <getNbPagesForContent+0xd8>
c0de866c:	b2e8      	uxtb	r0, r5
c0de866e:	2200      	movs	r2, #0
c0de8670:	f7ff fddd 	bl	c0de822e <nbgl_useCaseGetNbChoicesInPage>
c0de8674:	e006      	b.n	c0de8684 <getNbPagesForContent+0xd8>
c0de8676:	4915      	ldr	r1, [pc, #84]	@ (c0de86cc <getNbPagesForContent+0x120>)
c0de8678:	4479      	add	r1, pc
c0de867a:	5c08      	ldrb	r0, [r1, r0]
c0de867c:	b2e9      	uxtb	r1, r5
c0de867e:	4288      	cmp	r0, r1
c0de8680:	bf28      	it	cs
c0de8682:	4628      	movcs	r0, r5
c0de8684:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de8686:	f89d 402f 	ldrb.w	r4, [sp, #47]	@ 0x2f
c0de868a:	f000 0307 	and.w	r3, r0, #7
c0de868e:	2204      	movs	r2, #4
c0de8690:	1a2d      	subs	r5, r5, r0
c0de8692:	4483      	add	fp, r0
c0de8694:	4451      	add	r1, sl
c0de8696:	ea43 03c4 	orr.w	r3, r3, r4, lsl #3
c0de869a:	4c0b      	ldr	r4, [pc, #44]	@ (c0de86c8 <getNbPagesForContent+0x11c>)
c0de869c:	f10a 0a01 	add.w	sl, sl, #1
c0de86a0:	b2c9      	uxtb	r1, r1
c0de86a2:	b2db      	uxtb	r3, r3
c0de86a4:	ea02 0281 	and.w	r2, r2, r1, lsl #2
c0de86a8:	444c      	add	r4, r9
c0de86aa:	0849      	lsrs	r1, r1, #1
c0de86ac:	5c66      	ldrb	r6, [r4, r1]
c0de86ae:	4093      	lsls	r3, r2
c0de86b0:	fa07 f202 	lsl.w	r2, r7, r2
c0de86b4:	ea26 0202 	bic.w	r2, r6, r2
c0de86b8:	431a      	orrs	r2, r3
c0de86ba:	5462      	strb	r2, [r4, r1]
c0de86bc:	e794      	b.n	c0de85e8 <getNbPagesForContent+0x3c>
c0de86be:	fa5f f08a 	uxtb.w	r0, sl
c0de86c2:	b00c      	add	sp, #48	@ 0x30
c0de86c4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de86c8:	00000c68 	.word	0x00000c68
c0de86cc:	00006116 	.word	0x00006116

c0de86d0 <displayGenericContextPage>:
c0de86d0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de86d4:	b0a0      	sub	sp, #128	@ 0x80
c0de86d6:	f8df 33e4 	ldr.w	r3, [pc, #996]	@ c0de8abc <displayGenericContextPage+0x3ec>
c0de86da:	4683      	mov	fp, r0
c0de86dc:	f819 0003 	ldrb.w	r0, [r9, r3]
c0de86e0:	2803      	cmp	r0, #3
c0de86e2:	d110      	bne.n	c0de8706 <displayGenericContextPage+0x36>
c0de86e4:	f8df 03d8 	ldr.w	r0, [pc, #984]	@ c0de8ac0 <displayGenericContextPage+0x3f0>
c0de86e8:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de86ec:	d060      	beq.n	c0de87b0 <displayGenericContextPage+0xe0>
c0de86ee:	eb09 0200 	add.w	r2, r9, r0
c0de86f2:	7c12      	ldrb	r2, [r2, #16]
c0de86f4:	455a      	cmp	r2, fp
c0de86f6:	d80f      	bhi.n	c0de8718 <displayGenericContextPage+0x48>
c0de86f8:	4448      	add	r0, r9
c0de86fa:	6841      	ldr	r1, [r0, #4]
c0de86fc:	2001      	movs	r0, #1
c0de86fe:	b020      	add	sp, #128	@ 0x80
c0de8700:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8704:	4708      	bx	r1
c0de8706:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de870a:	d105      	bne.n	c0de8718 <displayGenericContextPage+0x48>
c0de870c:	eb09 0003 	add.w	r0, r9, r3
c0de8710:	f890 0061 	ldrb.w	r0, [r0, #97]	@ 0x61
c0de8714:	f1a0 0b01 	sub.w	fp, r0, #1
c0de8718:	eb09 0003 	add.w	r0, r9, r3
c0de871c:	fa5f f78b 	uxtb.w	r7, fp
c0de8720:	9100      	str	r1, [sp, #0]
c0de8722:	f890 8060 	ldrb.w	r8, [r0, #96]	@ 0x60
c0de8726:	4547      	cmp	r7, r8
c0de8728:	d12d      	bne.n	c0de8786 <displayGenericContextPage+0xb6>
c0de872a:	a912      	add	r1, sp, #72	@ 0x48
c0de872c:	f10d 0247 	add.w	r2, sp, #71	@ 0x47
c0de8730:	f10d 0346 	add.w	r3, sp, #70	@ 0x46
c0de8734:	4638      	mov	r0, r7
c0de8736:	f001 fabd 	bl	c0de9cb4 <genericContextComputeNextPageParams>
c0de873a:	4682      	mov	sl, r0
c0de873c:	f1ba 0f00 	cmp.w	sl, #0
c0de8740:	f000 81b8 	beq.w	c0de8ab4 <displayGenericContextPage+0x3e4>
c0de8744:	f8df 8374 	ldr.w	r8, [pc, #884]	@ c0de8abc <displayGenericContextPage+0x3ec>
c0de8748:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de874c:	2803      	cmp	r0, #3
c0de874e:	d041      	beq.n	c0de87d4 <displayGenericContextPage+0x104>
c0de8750:	48db      	ldr	r0, [pc, #876]	@ (c0de8ac0 <displayGenericContextPage+0x3f0>)
c0de8752:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de8756:	06c0      	lsls	r0, r0, #27
c0de8758:	d53c      	bpl.n	c0de87d4 <displayGenericContextPage+0x104>
c0de875a:	ea5f 600b 	movs.w	r0, fp, lsl #24
c0de875e:	d035      	beq.n	c0de87cc <displayGenericContextPage+0xfc>
c0de8760:	eb09 0008 	add.w	r0, r9, r8
c0de8764:	f890 0061 	ldrb.w	r0, [r0, #97]	@ 0x61
c0de8768:	3801      	subs	r0, #1
c0de876a:	42b8      	cmp	r0, r7
c0de876c:	dd2e      	ble.n	c0de87cc <displayGenericContextPage+0xfc>
c0de876e:	eb09 0008 	add.w	r0, r9, r8
c0de8772:	2105      	movs	r1, #5
c0de8774:	f880 106c 	strb.w	r1, [r0, #108]	@ 0x6c
c0de8778:	49d3      	ldr	r1, [pc, #844]	@ (c0de8ac8 <displayGenericContextPage+0x3f8>)
c0de877a:	4479      	add	r1, pc
c0de877c:	6681      	str	r1, [r0, #104]	@ 0x68
c0de877e:	2100      	movs	r1, #0
c0de8780:	f880 1064 	strb.w	r1, [r0, #100]	@ 0x64
c0de8784:	e026      	b.n	c0de87d4 <displayGenericContextPage+0x104>
c0de8786:	d91c      	bls.n	c0de87c2 <displayGenericContextPage+0xf2>
c0de8788:	f04f 0a00 	mov.w	sl, #0
c0de878c:	ac12      	add	r4, sp, #72	@ 0x48
c0de878e:	f10d 0547 	add.w	r5, sp, #71	@ 0x47
c0de8792:	f10d 0646 	add.w	r6, sp, #70	@ 0x46
c0de8796:	4547      	cmp	r7, r8
c0de8798:	d0d0      	beq.n	c0de873c <displayGenericContextPage+0x6c>
c0de879a:	f108 0801 	add.w	r8, r8, #1
c0de879e:	4621      	mov	r1, r4
c0de87a0:	462a      	mov	r2, r5
c0de87a2:	4633      	mov	r3, r6
c0de87a4:	fa5f f088 	uxtb.w	r0, r8
c0de87a8:	f001 fa84 	bl	c0de9cb4 <genericContextComputeNextPageParams>
c0de87ac:	4682      	mov	sl, r0
c0de87ae:	e7f2      	b.n	c0de8796 <displayGenericContextPage+0xc6>
c0de87b0:	4448      	add	r0, r9
c0de87b2:	6880      	ldr	r0, [r0, #8]
c0de87b4:	2800      	cmp	r0, #0
c0de87b6:	f000 817d 	beq.w	c0de8ab4 <displayGenericContextPage+0x3e4>
c0de87ba:	b020      	add	sp, #128	@ 0x80
c0de87bc:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de87c0:	4700      	bx	r0
c0de87c2:	eba7 0008 	sub.w	r0, r7, r8
c0de87c6:	2801      	cmp	r0, #1
c0de87c8:	ddaf      	ble.n	c0de872a <displayGenericContextPage+0x5a>
c0de87ca:	e173      	b.n	c0de8ab4 <displayGenericContextPage+0x3e4>
c0de87cc:	eb09 0008 	add.w	r0, r9, r8
c0de87d0:	2100      	movs	r1, #0
c0de87d2:	6681      	str	r1, [r0, #104]	@ 0x68
c0de87d4:	ad01      	add	r5, sp, #4
c0de87d6:	213c      	movs	r1, #60	@ 0x3c
c0de87d8:	1d28      	adds	r0, r5, #4
c0de87da:	f003 f937 	bl	c0deba4c <__aeabi_memclr>
c0de87de:	2009      	movs	r0, #9
c0de87e0:	f8df b2e0 	ldr.w	fp, [pc, #736]	@ c0de8ac4 <displayGenericContextPage+0x3f4>
c0de87e4:	f89d 7047 	ldrb.w	r7, [sp, #71]	@ 0x47
c0de87e8:	f88d 000a 	strb.w	r0, [sp, #10]
c0de87ec:	2002      	movs	r0, #2
c0de87ee:	f88d 0009 	strb.w	r0, [sp, #9]
c0de87f2:	eb09 0008 	add.w	r0, r9, r8
c0de87f6:	eb09 010b 	add.w	r1, r9, fp
c0de87fa:	6900      	ldr	r0, [r0, #16]
c0de87fc:	7c8e      	ldrb	r6, [r1, #18]
c0de87fe:	9001      	str	r0, [sp, #4]
c0de8800:	f89a 0000 	ldrb.w	r0, [sl]
c0de8804:	280a      	cmp	r0, #10
c0de8806:	f88d 0010 	strb.w	r0, [sp, #16]
c0de880a:	d01e      	beq.n	c0de884a <displayGenericContextPage+0x17a>
c0de880c:	2801      	cmp	r0, #1
c0de880e:	d02c      	beq.n	c0de886a <displayGenericContextPage+0x19a>
c0de8810:	2802      	cmp	r0, #2
c0de8812:	d014      	beq.n	c0de883e <displayGenericContextPage+0x16e>
c0de8814:	2803      	cmp	r0, #3
c0de8816:	d012      	beq.n	c0de883e <displayGenericContextPage+0x16e>
c0de8818:	2804      	cmp	r0, #4
c0de881a:	d02e      	beq.n	c0de887a <displayGenericContextPage+0x1aa>
c0de881c:	2806      	cmp	r0, #6
c0de881e:	d040      	beq.n	c0de88a2 <displayGenericContextPage+0x1d2>
c0de8820:	2807      	cmp	r0, #7
c0de8822:	d04c      	beq.n	c0de88be <displayGenericContextPage+0x1ee>
c0de8824:	2808      	cmp	r0, #8
c0de8826:	d056      	beq.n	c0de88d6 <displayGenericContextPage+0x206>
c0de8828:	2809      	cmp	r0, #9
c0de882a:	d061      	beq.n	c0de88f0 <displayGenericContextPage+0x220>
c0de882c:	2800      	cmp	r0, #0
c0de882e:	f040 8141 	bne.w	c0de8ab4 <displayGenericContextPage+0x3e4>
c0de8832:	f002 f89b 	bl	c0dea96c <OUTLINED_FUNCTION_18>
c0de8836:	e890 007c 	ldmia.w	r0, {r2, r3, r4, r5, r6}
c0de883a:	c17c      	stmia	r1!, {r2, r3, r4, r5, r6}
c0de883c:	e103      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de883e:	f002 f895 	bl	c0dea96c <OUTLINED_FUNCTION_18>
c0de8842:	e890 003c 	ldmia.w	r0, {r2, r3, r4, r5}
c0de8846:	c13c      	stmia	r1!, {r2, r3, r4, r5}
c0de8848:	e0fd      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de884a:	f88d 701c 	strb.w	r7, [sp, #28]
c0de884e:	f002 f84c 	bl	c0dea8ea <OUTLINED_FUNCTION_2>
c0de8852:	9005      	str	r0, [sp, #20]
c0de8854:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de8858:	4430      	add	r0, r6
c0de885a:	f002 feb7 	bl	c0deb5cc <pic>
c0de885e:	9006      	str	r0, [sp, #24]
c0de8860:	f89a 000d 	ldrb.w	r0, [sl, #13]
c0de8864:	f88d 001d 	strb.w	r0, [sp, #29]
c0de8868:	e0ed      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de886a:	f105 0010 	add.w	r0, r5, #16
c0de886e:	f10a 0104 	add.w	r1, sl, #4
c0de8872:	2230      	movs	r2, #48	@ 0x30
c0de8874:	f003 f8e0 	bl	c0deba38 <__aeabi_memcpy>
c0de8878:	e0e5      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de887a:	f8da 2004 	ldr.w	r2, [sl, #4]
c0de887e:	eb09 010b 	add.w	r1, r9, fp
c0de8882:	f89d 0046 	ldrb.w	r0, [sp, #70]	@ 0x46
c0de8886:	624a      	str	r2, [r1, #36]	@ 0x24
c0de8888:	2800      	cmp	r0, #0
c0de888a:	f8da 2008 	ldr.w	r2, [sl, #8]
c0de888e:	628a      	str	r2, [r1, #40]	@ 0x28
c0de8890:	f000 8087 	beq.w	c0de89a2 <displayGenericContextPage+0x2d2>
c0de8894:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de8898:	2800      	cmp	r0, #0
c0de889a:	d064      	beq.n	c0de8966 <displayGenericContextPage+0x296>
c0de889c:	eb00 1006 	add.w	r0, r0, r6, lsl #4
c0de88a0:	e065      	b.n	c0de896e <displayGenericContextPage+0x29e>
c0de88a2:	f89a 100c 	ldrb.w	r1, [sl, #12]
c0de88a6:	19f0      	adds	r0, r6, r7
c0de88a8:	f10a 0404 	add.w	r4, sl, #4
c0de88ac:	4288      	cmp	r0, r1
c0de88ae:	d134      	bne.n	c0de891a <displayGenericContextPage+0x24a>
c0de88b0:	3510      	adds	r5, #16
c0de88b2:	4621      	mov	r1, r4
c0de88b4:	222c      	movs	r2, #44	@ 0x2c
c0de88b6:	4628      	mov	r0, r5
c0de88b8:	f003 f8be 	bl	c0deba38 <__aeabi_memcpy>
c0de88bc:	e031      	b.n	c0de8922 <displayGenericContextPage+0x252>
c0de88be:	f88d 7018 	strb.w	r7, [sp, #24]
c0de88c2:	eb06 0046 	add.w	r0, r6, r6, lsl #1
c0de88c6:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de88ca:	eb01 0080 	add.w	r0, r1, r0, lsl #2
c0de88ce:	f002 fe7d 	bl	c0deb5cc <pic>
c0de88d2:	9005      	str	r0, [sp, #20]
c0de88d4:	e0b7      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de88d6:	f88d 7020 	strb.w	r7, [sp, #32]
c0de88da:	f002 f806 	bl	c0dea8ea <OUTLINED_FUNCTION_2>
c0de88de:	9005      	str	r0, [sp, #20]
c0de88e0:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de88e4:	eb00 0086 	add.w	r0, r0, r6, lsl #2
c0de88e8:	f002 fe70 	bl	c0deb5cc <pic>
c0de88ec:	9006      	str	r0, [sp, #24]
c0de88ee:	e0aa      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de88f0:	f002 f83c 	bl	c0dea96c <OUTLINED_FUNCTION_18>
c0de88f4:	e890 001c 	ldmia.w	r0, {r2, r3, r4}
c0de88f8:	c11c      	stmia	r1!, {r2, r3, r4}
c0de88fa:	f88d 7019 	strb.w	r7, [sp, #25]
c0de88fe:	f001 fff4 	bl	c0dea8ea <OUTLINED_FUNCTION_2>
c0de8902:	9005      	str	r0, [sp, #20]
c0de8904:	f89a 000a 	ldrb.w	r0, [sl, #10]
c0de8908:	42b0      	cmp	r0, r6
c0de890a:	d329      	bcc.n	c0de8960 <displayGenericContextPage+0x290>
c0de890c:	19f1      	adds	r1, r6, r7
c0de890e:	4281      	cmp	r1, r0
c0de8910:	d926      	bls.n	c0de8960 <displayGenericContextPage+0x290>
c0de8912:	1b80      	subs	r0, r0, r6
c0de8914:	f88d 001a 	strb.w	r0, [sp, #26]
c0de8918:	e095      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de891a:	2004      	movs	r0, #4
c0de891c:	3510      	adds	r5, #16
c0de891e:	f88d 0010 	strb.w	r0, [sp, #16]
c0de8922:	f88d 701c 	strb.w	r7, [sp, #28]
c0de8926:	6820      	ldr	r0, [r4, #0]
c0de8928:	eb00 1006 	add.w	r0, r0, r6, lsl #4
c0de892c:	f002 fe4e 	bl	c0deb5cc <pic>
c0de8930:	2110      	movs	r1, #16
c0de8932:	6028      	str	r0, [r5, #0]
c0de8934:	9d00      	ldr	r5, [sp, #0]
c0de8936:	2200      	movs	r2, #0
c0de8938:	eb01 1107 	add.w	r1, r1, r7, lsl #4
c0de893c:	f102 0310 	add.w	r3, r2, #16
c0de8940:	4299      	cmp	r1, r3
c0de8942:	d007      	beq.n	c0de8954 <displayGenericContextPage+0x284>
c0de8944:	4402      	add	r2, r0
c0de8946:	7b12      	ldrb	r2, [r2, #12]
c0de8948:	0752      	lsls	r2, r2, #29
c0de894a:	461a      	mov	r2, r3
c0de894c:	d5f6      	bpl.n	c0de893c <displayGenericContextPage+0x26c>
c0de894e:	210d      	movs	r1, #13
c0de8950:	f88d 1020 	strb.w	r1, [sp, #32]
c0de8954:	9a06      	ldr	r2, [sp, #24]
c0de8956:	eb09 010b 	add.w	r1, r9, fp
c0de895a:	e9c1 0209 	strd	r0, r2, [r1, #36]	@ 0x24
c0de895e:	e073      	b.n	c0de8a48 <displayGenericContextPage+0x378>
c0de8960:	f88d 701a 	strb.w	r7, [sp, #26]
c0de8964:	e06f      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de8966:	f8da 1008 	ldr.w	r1, [sl, #8]
c0de896a:	4630      	mov	r0, r6
c0de896c:	4788      	blx	r1
c0de896e:	f002 fe2d 	bl	c0deb5cc <pic>
c0de8972:	7b01      	ldrb	r1, [r0, #12]
c0de8974:	0789      	lsls	r1, r1, #30
c0de8976:	d42e      	bmi.n	c0de89d6 <displayGenericContextPage+0x306>
c0de8978:	4954      	ldr	r1, [pc, #336]	@ (c0de8acc <displayGenericContextPage+0x3fc>)
c0de897a:	4479      	add	r1, pc
c0de897c:	910b      	str	r1, [sp, #44]	@ 0x2c
c0de897e:	210a      	movs	r1, #10
c0de8980:	f88d 1030 	strb.w	r1, [sp, #48]	@ 0x30
c0de8984:	2100      	movs	r1, #0
c0de8986:	910a      	str	r1, [sp, #40]	@ 0x28
c0de8988:	eb09 010b 	add.w	r1, r9, fp
c0de898c:	e9d0 2000 	ldrd	r2, r0, [r0]
c0de8990:	e9c1 2006 	strd	r2, r0, [r1, #24]
c0de8994:	f89a 0012 	ldrb.w	r0, [sl, #18]
c0de8998:	f881 0020 	strb.w	r0, [r1, #32]
c0de899c:	2005      	movs	r0, #5
c0de899e:	f88d 0010 	strb.w	r0, [sp, #16]
c0de89a2:	f88d 701c 	strb.w	r7, [sp, #28]
c0de89a6:	f89a 0010 	ldrb.w	r0, [sl, #16]
c0de89aa:	f88d 0020 	strb.w	r0, [sp, #32]
c0de89ae:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de89b2:	b328      	cbz	r0, c0de8a00 <displayGenericContextPage+0x330>
c0de89b4:	eb00 1006 	add.w	r0, r0, r6, lsl #4
c0de89b8:	f002 fe08 	bl	c0deb5cc <pic>
c0de89bc:	9005      	str	r0, [sp, #20]
c0de89be:	f100 010c 	add.w	r1, r0, #12
c0de89c2:	1c78      	adds	r0, r7, #1
c0de89c4:	3801      	subs	r0, #1
c0de89c6:	d033      	beq.n	c0de8a30 <displayGenericContextPage+0x360>
c0de89c8:	f101 0210 	add.w	r2, r1, #16
c0de89cc:	7809      	ldrb	r1, [r1, #0]
c0de89ce:	0749      	lsls	r1, r1, #29
c0de89d0:	4611      	mov	r1, r2
c0de89d2:	d5f7      	bpl.n	c0de89c4 <displayGenericContextPage+0x2f4>
c0de89d4:	e029      	b.n	c0de8a2a <displayGenericContextPage+0x35a>
c0de89d6:	2101      	movs	r1, #1
c0de89d8:	f88d 1010 	strb.w	r1, [sp, #16]
c0de89dc:	6881      	ldr	r1, [r0, #8]
c0de89de:	4a3f      	ldr	r2, [pc, #252]	@ (c0de8adc <displayGenericContextPage+0x40c>)
c0de89e0:	447a      	add	r2, pc
c0de89e2:	920c      	str	r2, [sp, #48]	@ 0x30
c0de89e4:	e9d0 2000 	ldrd	r2, r0, [r0]
c0de89e8:	9106      	str	r1, [sp, #24]
c0de89ea:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de89ec:	2000      	movs	r0, #0
c0de89ee:	9209      	str	r2, [sp, #36]	@ 0x24
c0de89f0:	f88d 0036 	strb.w	r0, [sp, #54]	@ 0x36
c0de89f4:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de89f8:	900a      	str	r0, [sp, #40]	@ 0x28
c0de89fa:	f88d 0014 	strb.w	r0, [sp, #20]
c0de89fe:	e022      	b.n	c0de8a46 <displayGenericContextPage+0x376>
c0de8a00:	2400      	movs	r4, #0
c0de8a02:	9405      	str	r4, [sp, #20]
c0de8a04:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de8a08:	f88d 601d 	strb.w	r6, [sp, #29]
c0de8a0c:	9006      	str	r0, [sp, #24]
c0de8a0e:	b2e0      	uxtb	r0, r4
c0de8a10:	42b8      	cmp	r0, r7
c0de8a12:	d20d      	bcs.n	c0de8a30 <displayGenericContextPage+0x360>
c0de8a14:	19a0      	adds	r0, r4, r6
c0de8a16:	f8da 1008 	ldr.w	r1, [sl, #8]
c0de8a1a:	b2c0      	uxtb	r0, r0
c0de8a1c:	4788      	blx	r1
c0de8a1e:	f002 fdd5 	bl	c0deb5cc <pic>
c0de8a22:	7b00      	ldrb	r0, [r0, #12]
c0de8a24:	3401      	adds	r4, #1
c0de8a26:	0740      	lsls	r0, r0, #29
c0de8a28:	d5f1      	bpl.n	c0de8a0e <displayGenericContextPage+0x33e>
c0de8a2a:	200d      	movs	r0, #13
c0de8a2c:	f88d 0020 	strb.w	r0, [sp, #32]
c0de8a30:	2000      	movs	r0, #0
c0de8a32:	f88d 0021 	strb.w	r0, [sp, #33]	@ 0x21
c0de8a36:	f640 1001 	movw	r0, #2305	@ 0x901
c0de8a3a:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de8a3e:	f89a 0012 	ldrb.w	r0, [sl, #18]
c0de8a42:	f88d 0022 	strb.w	r0, [sp, #34]	@ 0x22
c0de8a46:	9d00      	ldr	r5, [sp, #0]
c0de8a48:	481d      	ldr	r0, [pc, #116]	@ (c0de8ac0 <displayGenericContextPage+0x3f0>)
c0de8a4a:	f819 1008 	ldrb.w	r1, [r9, r8]
c0de8a4e:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de8a52:	f859 0000 	ldr.w	r0, [r9, r0]
c0de8a56:	2902      	cmp	r1, #2
c0de8a58:	bf18      	it	ne
c0de8a5a:	2000      	movne	r0, #0
c0de8a5c:	f89a 1000 	ldrb.w	r1, [sl]
c0de8a60:	2902      	cmp	r1, #2
c0de8a62:	d817      	bhi.n	c0de8a94 <displayGenericContextPage+0x3c4>
c0de8a64:	f010 0fe0 	tst.w	r0, #224	@ 0xe0
c0de8a68:	d014      	beq.n	c0de8a94 <displayGenericContextPage+0x3c4>
c0de8a6a:	0601      	lsls	r1, r0, #24
c0de8a6c:	d508      	bpl.n	c0de8a80 <displayGenericContextPage+0x3b0>
c0de8a6e:	eb09 010b 	add.w	r1, r9, fp
c0de8a72:	6f89      	ldr	r1, [r1, #120]	@ 0x78
c0de8a74:	7809      	ldrb	r1, [r1, #0]
c0de8a76:	06c9      	lsls	r1, r1, #27
c0de8a78:	d402      	bmi.n	c0de8a80 <displayGenericContextPage+0x3b0>
c0de8a7a:	4915      	ldr	r1, [pc, #84]	@ (c0de8ad0 <displayGenericContextPage+0x400>)
c0de8a7c:	4479      	add	r1, pc
c0de8a7e:	e001      	b.n	c0de8a84 <displayGenericContextPage+0x3b4>
c0de8a80:	4914      	ldr	r1, [pc, #80]	@ (c0de8ad4 <displayGenericContextPage+0x404>)
c0de8a82:	4479      	add	r1, pc
c0de8a84:	0680      	lsls	r0, r0, #26
c0de8a86:	9103      	str	r1, [sp, #12]
c0de8a88:	f04f 0010 	mov.w	r0, #16
c0de8a8c:	bf58      	it	pl
c0de8a8e:	2011      	movpl	r0, #17
c0de8a90:	f88d 000b 	strb.w	r0, [sp, #11]
c0de8a94:	4810      	ldr	r0, [pc, #64]	@ (c0de8ad8 <displayGenericContextPage+0x408>)
c0de8a96:	eb09 0408 	add.w	r4, r9, r8
c0de8a9a:	aa01      	add	r2, sp, #4
c0de8a9c:	f104 0160 	add.w	r1, r4, #96	@ 0x60
c0de8aa0:	4478      	add	r0, pc
c0de8aa2:	f7ff fa6b 	bl	c0de7f7c <nbgl_pageDrawGenericContent>
c0de8aa6:	6160      	str	r0, [r4, #20]
c0de8aa8:	2001      	movs	r0, #1
c0de8aaa:	2d00      	cmp	r5, #0
c0de8aac:	bf18      	it	ne
c0de8aae:	2002      	movne	r0, #2
c0de8ab0:	f002 fb74 	bl	c0deb19c <nbgl_refreshSpecial>
c0de8ab4:	b020      	add	sp, #128	@ 0x80
c0de8ab6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8aba:	bf00      	nop
c0de8abc:	00000d68 	.word	0x00000d68
c0de8ac0:	00000de4 	.word	0x00000de4
c0de8ac4:	00000ab0 	.word	0x00000ab0
c0de8ac8:	00004ee9 	.word	0x00004ee9
c0de8acc:	0000490c 	.word	0x0000490c
c0de8ad0:	0000406a 	.word	0x0000406a
c0de8ad4:	000043ad 	.word	0x000043ad
c0de8ad8:	000001b5 	.word	0x000001b5
c0de8adc:	00004d4b 	.word	0x00004d4b

c0de8ae0 <nbgl_useCaseHomeAndSettings>:
c0de8ae0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8ae4:	4698      	mov	r8, r3
c0de8ae6:	4615      	mov	r5, r2
c0de8ae8:	460e      	mov	r6, r1
c0de8aea:	4607      	mov	r7, r0
c0de8aec:	f7ff fc58 	bl	c0de83a0 <reset_callbacks_and_context>
c0de8af0:	4814      	ldr	r0, [pc, #80]	@ (c0de8b44 <nbgl_useCaseHomeAndSettings+0x64>)
c0de8af2:	f849 7000 	str.w	r7, [r9, r0]
c0de8af6:	eb09 0100 	add.w	r1, r9, r0
c0de8afa:	9a07      	ldr	r2, [sp, #28]
c0de8afc:	610a      	str	r2, [r1, #16]
c0de8afe:	9a06      	ldr	r2, [sp, #24]
c0de8b00:	e9c1 6501 	strd	r6, r5, [r1, #4]
c0de8b04:	60ca      	str	r2, [r1, #12]
c0de8b06:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de8b0a:	b132      	cbz	r2, c0de8b1a <nbgl_useCaseHomeAndSettings+0x3a>
c0de8b0c:	eb09 0300 	add.w	r3, r9, r0
c0de8b10:	e892 00f0 	ldmia.w	r2, {r4, r5, r6, r7}
c0de8b14:	3314      	adds	r3, #20
c0de8b16:	c3f0      	stmia	r3!, {r4, r5, r6, r7}
c0de8b18:	e006      	b.n	c0de8b28 <nbgl_useCaseHomeAndSettings+0x48>
c0de8b1a:	eb09 0200 	add.w	r2, r9, r0
c0de8b1e:	2300      	movs	r3, #0
c0de8b20:	e9c2 3305 	strd	r3, r3, [r2, #20]
c0de8b24:	e9c2 3307 	strd	r3, r3, [r2, #28]
c0de8b28:	4448      	add	r0, r9
c0de8b2a:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de8b2e:	6241      	str	r1, [r0, #36]	@ 0x24
c0de8b30:	d004      	beq.n	c0de8b3c <nbgl_useCaseHomeAndSettings+0x5c>
c0de8b32:	4640      	mov	r0, r8
c0de8b34:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de8b38:	f000 b806 	b.w	c0de8b48 <bundleNavStartSettingsAtPage>
c0de8b3c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de8b40:	f000 b816 	b.w	c0de8b70 <bundleNavStartHome>
c0de8b44:	00000de4 	.word	0x00000de4

c0de8b48 <bundleNavStartSettingsAtPage>:
c0de8b48:	b51c      	push	{r2, r3, r4, lr}
c0de8b4a:	4a07      	ldr	r2, [pc, #28]	@ (c0de8b68 <bundleNavStartSettingsAtPage+0x20>)
c0de8b4c:	4601      	mov	r1, r0
c0de8b4e:	eb09 0302 	add.w	r3, r9, r2
c0de8b52:	f859 0002 	ldr.w	r0, [r9, r2]
c0de8b56:	e9d3 2303 	ldrd	r2, r3, [r3, #12]
c0de8b5a:	4c04      	ldr	r4, [pc, #16]	@ (c0de8b6c <bundleNavStartSettingsAtPage+0x24>)
c0de8b5c:	447c      	add	r4, pc
c0de8b5e:	9400      	str	r4, [sp, #0]
c0de8b60:	f7ff fca2 	bl	c0de84a8 <nbgl_useCaseGenericSettings>
c0de8b64:	bd1c      	pop	{r2, r3, r4, pc}
c0de8b66:	bf00      	nop
c0de8b68:	00000de4 	.word	0x00000de4
c0de8b6c:	00000011 	.word	0x00000011

c0de8b70 <bundleNavStartHome>:
c0de8b70:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de8b72:	490a      	ldr	r1, [pc, #40]	@ (c0de8b9c <bundleNavStartHome+0x2c>)
c0de8b74:	eb09 0401 	add.w	r4, r9, r1
c0de8b78:	f859 0001 	ldr.w	r0, [r9, r1]
c0de8b7c:	1d23      	adds	r3, r4, #4
c0de8b7e:	6a65      	ldr	r5, [r4, #36]	@ 0x24
c0de8b80:	3414      	adds	r4, #20
c0de8b82:	cb0e      	ldmia	r3, {r1, r2, r3}
c0de8b84:	4e06      	ldr	r6, [pc, #24]	@ (c0de8ba0 <bundleNavStartHome+0x30>)
c0de8b86:	2b00      	cmp	r3, #0
c0de8b88:	9502      	str	r5, [sp, #8]
c0de8b8a:	447e      	add	r6, pc
c0de8b8c:	e9cd 4600 	strd	r4, r6, [sp]
c0de8b90:	bf18      	it	ne
c0de8b92:	2301      	movne	r3, #1
c0de8b94:	f7ff fb6a 	bl	c0de826c <useCaseHomeExt>
c0de8b98:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de8b9a:	bf00      	nop
c0de8b9c:	00000de4 	.word	0x00000de4
c0de8ba0:	00001273 	.word	0x00001273

c0de8ba4 <nbgl_useCaseStatus>:
c0de8ba4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8ba8:	b090      	sub	sp, #64	@ 0x40
c0de8baa:	4604      	mov	r4, r0
c0de8bac:	481d      	ldr	r0, [pc, #116]	@ (c0de8c24 <nbgl_useCaseStatus+0x80>)
c0de8bae:	460e      	mov	r6, r1
c0de8bb0:	4615      	mov	r5, r2
c0de8bb2:	a90d      	add	r1, sp, #52	@ 0x34
c0de8bb4:	4478      	add	r0, pc
c0de8bb6:	e890 008c 	ldmia.w	r0, {r2, r3, r7}
c0de8bba:	4668      	mov	r0, sp
c0de8bbc:	3004      	adds	r0, #4
c0de8bbe:	c18c      	stmia	r1!, {r2, r3, r7}
c0de8bc0:	2130      	movs	r1, #48	@ 0x30
c0de8bc2:	f002 ff43 	bl	c0deba4c <__aeabi_memclr>
c0de8bc6:	f8df 8058 	ldr.w	r8, [pc, #88]	@ c0de8c20 <nbgl_useCaseStatus+0x7c>
c0de8bca:	eb09 0708 	add.w	r7, r9, r8
c0de8bce:	f7ff fbe7 	bl	c0de83a0 <reset_callbacks_and_context>
c0de8bd2:	607d      	str	r5, [r7, #4]
c0de8bd4:	b12e      	cbz	r6, c0de8be2 <nbgl_useCaseStatus+0x3e>
c0de8bd6:	2003      	movs	r0, #3
c0de8bd8:	f7fa fec1 	bl	c0de395e <os_io_seph_cmd_piezo_play_tune>
c0de8bdc:	4813      	ldr	r0, [pc, #76]	@ (c0de8c2c <nbgl_useCaseStatus+0x88>)
c0de8bde:	4478      	add	r0, pc
c0de8be0:	e001      	b.n	c0de8be6 <nbgl_useCaseStatus+0x42>
c0de8be2:	4811      	ldr	r0, [pc, #68]	@ (c0de8c28 <nbgl_useCaseStatus+0x84>)
c0de8be4:	4478      	add	r0, pc
c0de8be6:	9003      	str	r0, [sp, #12]
c0de8be8:	2009      	movs	r0, #9
c0de8bea:	2100      	movs	r1, #0
c0de8bec:	466a      	mov	r2, sp
c0de8bee:	f88d 0031 	strb.w	r0, [sp, #49]	@ 0x31
c0de8bf2:	2002      	movs	r0, #2
c0de8bf4:	f88d 1011 	strb.w	r1, [sp, #17]
c0de8bf8:	f88d 0025 	strb.w	r0, [sp, #37]	@ 0x25
c0de8bfc:	480c      	ldr	r0, [pc, #48]	@ (c0de8c30 <nbgl_useCaseStatus+0x8c>)
c0de8bfe:	9400      	str	r4, [sp, #0]
c0de8c00:	4478      	add	r0, pc
c0de8c02:	9008      	str	r0, [sp, #32]
c0de8c04:	480b      	ldr	r0, [pc, #44]	@ (c0de8c34 <nbgl_useCaseStatus+0x90>)
c0de8c06:	a90d      	add	r1, sp, #52	@ 0x34
c0de8c08:	4478      	add	r0, pc
c0de8c0a:	f7fe fe4f 	bl	c0de78ac <nbgl_pageDrawInfo>
c0de8c0e:	eb09 0108 	add.w	r1, r9, r8
c0de8c12:	6148      	str	r0, [r1, #20]
c0de8c14:	f001 fe6f 	bl	c0dea8f6 <OUTLINED_FUNCTION_3>
c0de8c18:	b010      	add	sp, #64	@ 0x40
c0de8c1a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de8c1e:	bf00      	nop
c0de8c20:	00000d68 	.word	0x00000d68
c0de8c24:	00005b6c 	.word	0x00005b6c
c0de8c28:	00003590 	.word	0x00003590
c0de8c2c:	00003354 	.word	0x00003354
c0de8c30:	00004a62 	.word	0x00004a62
c0de8c34:	0000004d 	.word	0x0000004d

c0de8c38 <tickerCallback>:
c0de8c38:	b510      	push	{r4, lr}
c0de8c3a:	4806      	ldr	r0, [pc, #24]	@ (c0de8c54 <tickerCallback+0x1c>)
c0de8c3c:	eb09 0400 	add.w	r4, r9, r0
c0de8c40:	6960      	ldr	r0, [r4, #20]
c0de8c42:	f7ff f99e 	bl	c0de7f82 <nbgl_pageRelease>
c0de8c46:	6860      	ldr	r0, [r4, #4]
c0de8c48:	b110      	cbz	r0, c0de8c50 <tickerCallback+0x18>
c0de8c4a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8c4e:	4700      	bx	r0
c0de8c50:	bd10      	pop	{r4, pc}
c0de8c52:	bf00      	nop
c0de8c54:	00000d68 	.word	0x00000d68

c0de8c58 <pageCallback>:
c0de8c58:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8c5c:	b094      	sub	sp, #80	@ 0x50
c0de8c5e:	b350      	cbz	r0, c0de8cb6 <pageCallback+0x5e>
c0de8c60:	4605      	mov	r5, r0
c0de8c62:	2801      	cmp	r0, #1
c0de8c64:	d034      	beq.n	c0de8cd0 <pageCallback+0x78>
c0de8c66:	2d13      	cmp	r5, #19
c0de8c68:	d043      	beq.n	c0de8cf2 <pageCallback+0x9a>
c0de8c6a:	460c      	mov	r4, r1
c0de8c6c:	2d03      	cmp	r5, #3
c0de8c6e:	d055      	beq.n	c0de8d1c <pageCallback+0xc4>
c0de8c70:	2d05      	cmp	r5, #5
c0de8c72:	d05f      	beq.n	c0de8d34 <pageCallback+0xdc>
c0de8c74:	2d06      	cmp	r5, #6
c0de8c76:	d075      	beq.n	c0de8d64 <pageCallback+0x10c>
c0de8c78:	2d07      	cmp	r5, #7
c0de8c7a:	d077      	beq.n	c0de8d6c <pageCallback+0x114>
c0de8c7c:	2d08      	cmp	r5, #8
c0de8c7e:	f000 809f 	beq.w	c0de8dc0 <pageCallback+0x168>
c0de8c82:	2d09      	cmp	r5, #9
c0de8c84:	f000 80aa 	beq.w	c0de8ddc <pageCallback+0x184>
c0de8c88:	2d0a      	cmp	r5, #10
c0de8c8a:	f000 80b1 	beq.w	c0de8df0 <pageCallback+0x198>
c0de8c8e:	2d0b      	cmp	r5, #11
c0de8c90:	f000 80fb 	beq.w	c0de8e8a <pageCallback+0x232>
c0de8c94:	2d0c      	cmp	r5, #12
c0de8c96:	f000 8100 	beq.w	c0de8e9a <pageCallback+0x242>
c0de8c9a:	2d0d      	cmp	r5, #13
c0de8c9c:	f000 8107 	beq.w	c0de8eae <pageCallback+0x256>
c0de8ca0:	2d10      	cmp	r5, #16
c0de8ca2:	f000 8110 	beq.w	c0de8ec6 <pageCallback+0x26e>
c0de8ca6:	2d11      	cmp	r5, #17
c0de8ca8:	f000 8115 	beq.w	c0de8ed6 <pageCallback+0x27e>
c0de8cac:	2d02      	cmp	r5, #2
c0de8cae:	f040 811e 	bne.w	c0de8eee <pageCallback+0x296>
c0de8cb2:	48cc      	ldr	r0, [pc, #816]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8cb4:	e165      	b.n	c0de8f82 <pageCallback+0x32a>
c0de8cb6:	48cb      	ldr	r0, [pc, #812]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8cb8:	eb09 0100 	add.w	r1, r9, r0
c0de8cbc:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de8cc0:	6889      	ldr	r1, [r1, #8]
c0de8cc2:	3801      	subs	r0, #1
c0de8cc4:	2900      	cmp	r1, #0
c0de8cc6:	f000 8129 	beq.w	c0de8f1c <pageCallback+0x2c4>
c0de8cca:	b2c0      	uxtb	r0, r0
c0de8ccc:	2101      	movs	r1, #1
c0de8cce:	e00b      	b.n	c0de8ce8 <pageCallback+0x90>
c0de8cd0:	48c4      	ldr	r0, [pc, #784]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8cd2:	eb09 0100 	add.w	r1, r9, r0
c0de8cd6:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de8cda:	6889      	ldr	r1, [r1, #8]
c0de8cdc:	3001      	adds	r0, #1
c0de8cde:	2900      	cmp	r1, #0
c0de8ce0:	f000 811c 	beq.w	c0de8f1c <pageCallback+0x2c4>
c0de8ce4:	b2c0      	uxtb	r0, r0
c0de8ce6:	2100      	movs	r1, #0
c0de8ce8:	b014      	add	sp, #80	@ 0x50
c0de8cea:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8cee:	f000 bb35 	b.w	c0de935c <displayReviewPage>
c0de8cf2:	48bb      	ldr	r0, [pc, #748]	@ (c0de8fe0 <pageCallback+0x388>)
c0de8cf4:	eb09 0100 	add.w	r1, r9, r0
c0de8cf8:	f891 1021 	ldrb.w	r1, [r1, #33]	@ 0x21
c0de8cfc:	2900      	cmp	r1, #0
c0de8cfe:	f000 8114 	beq.w	c0de8f2a <pageCallback+0x2d2>
c0de8d02:	eb09 0100 	add.w	r1, r9, r0
c0de8d06:	6f89      	ldr	r1, [r1, #120]	@ 0x78
c0de8d08:	680a      	ldr	r2, [r1, #0]
c0de8d0a:	2a00      	cmp	r2, #0
c0de8d0c:	f000 810d 	beq.w	c0de8f2a <pageCallback+0x2d2>
c0de8d10:	4448      	add	r0, r9
c0de8d12:	2201      	movs	r2, #1
c0de8d14:	f880 2088 	strb.w	r2, [r0, #136]	@ 0x88
c0de8d18:	6808      	ldr	r0, [r1, #0]
c0de8d1a:	e0e3      	b.n	c0de8ee4 <pageCallback+0x28c>
c0de8d1c:	48b1      	ldr	r0, [pc, #708]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8d1e:	2cff      	cmp	r4, #255	@ 0xff
c0de8d20:	f000 812f 	beq.w	c0de8f82 <pageCallback+0x32a>
c0de8d24:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de8d28:	1e81      	subs	r1, r0, #2
c0de8d2a:	2902      	cmp	r1, #2
c0de8d2c:	f080 8148 	bcs.w	c0de8fc0 <pageCallback+0x368>
c0de8d30:	4620      	mov	r0, r4
c0de8d32:	e0f4      	b.n	c0de8f1e <pageCallback+0x2c6>
c0de8d34:	a80c      	add	r0, sp, #48	@ 0x30
c0de8d36:	49b1      	ldr	r1, [pc, #708]	@ (c0de8ffc <pageCallback+0x3a4>)
c0de8d38:	2220      	movs	r2, #32
c0de8d3a:	4479      	add	r1, pc
c0de8d3c:	f002 fe7c 	bl	c0deba38 <__aeabi_memcpy>
c0de8d40:	4ca8      	ldr	r4, [pc, #672]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8d42:	eb09 0004 	add.w	r0, r9, r4
c0de8d46:	6a00      	ldr	r0, [r0, #32]
c0de8d48:	b108      	cbz	r0, c0de8d4e <pageCallback+0xf6>
c0de8d4a:	f7ff f91a 	bl	c0de7f82 <nbgl_pageRelease>
c0de8d4e:	48ac      	ldr	r0, [pc, #688]	@ (c0de9000 <pageCallback+0x3a8>)
c0de8d50:	a90c      	add	r1, sp, #48	@ 0x30
c0de8d52:	4478      	add	r0, pc
c0de8d54:	f7fe feb4 	bl	c0de7ac0 <nbgl_pageDrawConfirmation>
c0de8d58:	eb09 0104 	add.w	r1, r9, r4
c0de8d5c:	6208      	str	r0, [r1, #32]
c0de8d5e:	f001 fdca 	bl	c0dea8f6 <OUTLINED_FUNCTION_3>
c0de8d62:	e115      	b.n	c0de8f90 <pageCallback+0x338>
c0de8d64:	489f      	ldr	r0, [pc, #636]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8d66:	4448      	add	r0, r9
c0de8d68:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de8d6a:	e10c      	b.n	c0de8f86 <pageCallback+0x32e>
c0de8d6c:	49a0      	ldr	r1, [pc, #640]	@ (c0de8ff0 <pageCallback+0x398>)
c0de8d6e:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de8d72:	221c      	movs	r2, #28
c0de8d74:	4640      	mov	r0, r8
c0de8d76:	4479      	add	r1, pc
c0de8d78:	f002 fe5e 	bl	c0deba38 <__aeabi_memcpy>
c0de8d7c:	489d      	ldr	r0, [pc, #628]	@ (c0de8ff4 <pageCallback+0x39c>)
c0de8d7e:	ad07      	add	r5, sp, #28
c0de8d80:	4629      	mov	r1, r5
c0de8d82:	4478      	add	r0, pc
c0de8d84:	e890 00dc 	ldmia.w	r0, {r2, r3, r4, r6, r7}
c0de8d88:	f44f 3080 	mov.w	r0, #65536	@ 0x10000
c0de8d8c:	c1dc      	stmia	r1!, {r2, r3, r4, r6, r7}
c0de8d8e:	4e96      	ldr	r6, [pc, #600]	@ (c0de8fe8 <pageCallback+0x390>)
c0de8d90:	9006      	str	r0, [sp, #24]
c0de8d92:	eb09 0706 	add.w	r7, r9, r6
c0de8d96:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
c0de8d98:	9003      	str	r0, [sp, #12]
c0de8d9a:	2000      	movs	r0, #0
c0de8d9c:	9004      	str	r0, [sp, #16]
c0de8d9e:	4640      	mov	r0, r8
c0de8da0:	f7fa ffe4 	bl	c0de3d6c <nbgl_layoutGet>
c0de8da4:	4629      	mov	r1, r5
c0de8da6:	65b8      	str	r0, [r7, #88]	@ 0x58
c0de8da8:	f7fd fd34 	bl	c0de6814 <nbgl_layoutAddHeader>
c0de8dac:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
c0de8dae:	200b      	movs	r0, #11
c0de8db0:	f001 fdcf 	bl	c0dea952 <OUTLINED_FUNCTION_15>
c0de8db4:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
c0de8db6:	2804      	cmp	r0, #4
c0de8db8:	f080 80c1 	bcs.w	c0de8f3e <pageCallback+0x2e6>
c0de8dbc:	460c      	mov	r4, r1
c0de8dbe:	e0ca      	b.n	c0de8f56 <pageCallback+0x2fe>
c0de8dc0:	4888      	ldr	r0, [pc, #544]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8dc2:	2c00      	cmp	r4, #0
c0de8dc4:	f040 80db 	bne.w	c0de8f7e <pageCallback+0x326>
c0de8dc8:	eb09 0100 	add.w	r1, r9, r0
c0de8dcc:	6a49      	ldr	r1, [r1, #36]	@ 0x24
c0de8dce:	2900      	cmp	r1, #0
c0de8dd0:	f000 80d5 	beq.w	c0de8f7e <pageCallback+0x326>
c0de8dd4:	b014      	add	sp, #80	@ 0x50
c0de8dd6:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8dda:	4708      	bx	r1
c0de8ddc:	4881      	ldr	r0, [pc, #516]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8dde:	4448      	add	r0, r9
c0de8de0:	6981      	ldr	r1, [r0, #24]
c0de8de2:	2900      	cmp	r1, #0
c0de8de4:	f000 80d4 	beq.w	c0de8f90 <pageCallback+0x338>
c0de8de8:	fab4 f084 	clz	r0, r4
c0de8dec:	0940      	lsrs	r0, r0, #5
c0de8dee:	e05a      	b.n	c0de8ea6 <pageCallback+0x24e>
c0de8df0:	487b      	ldr	r0, [pc, #492]	@ (c0de8fe0 <pageCallback+0x388>)
c0de8df2:	f8df 81f0 	ldr.w	r8, [pc, #496]	@ c0de8fe4 <pageCallback+0x38c>
c0de8df6:	2700      	movs	r7, #0
c0de8df8:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8dfc:	f04f 0a0b 	mov.w	sl, #11
c0de8e00:	4448      	add	r0, r9
c0de8e02:	eb09 0608 	add.w	r6, r9, r8
c0de8e06:	f890 4020 	ldrb.w	r4, [r0, #32]
c0de8e0a:	e9d0 b506 	ldrd	fp, r5, [r0, #24]
c0de8e0e:	200b      	movs	r0, #11
c0de8e10:	e9c6 770c 	strd	r7, r7, [r6, #48]	@ 0x30
c0de8e14:	e9c6 770e 	strd	r7, r7, [r6, #56]	@ 0x38
c0de8e18:	4629      	mov	r1, r5
c0de8e1a:	4623      	mov	r3, r4
c0de8e1c:	f002 fa13 	bl	c0deb246 <nbgl_getTextNbLinesInWidth>
c0de8e20:	f100 010a 	add.w	r1, r0, #10
c0de8e24:	e9c6 b50d 	strd	fp, r5, [r6, #52]	@ 0x34
c0de8e28:	f886 4033 	strb.w	r4, [r6, #51]	@ 0x33
c0de8e2c:	f886 7031 	strb.w	r7, [r6, #49]	@ 0x31
c0de8e30:	fbb1 f1fa 	udiv	r1, r1, sl
c0de8e34:	b2ca      	uxtb	r2, r1
c0de8e36:	f886 1030 	strb.w	r1, [r6, #48]	@ 0x30
c0de8e3a:	2a02      	cmp	r2, #2
c0de8e3c:	d31e      	bcc.n	c0de8e7c <pageCallback+0x224>
c0de8e3e:	3a01      	subs	r2, #1
c0de8e40:	241a      	movs	r4, #26
c0de8e42:	eb02 0342 	add.w	r3, r2, r2, lsl #1
c0de8e46:	3319      	adds	r3, #25
c0de8e48:	b29b      	uxth	r3, r3
c0de8e4a:	fbb3 f4f4 	udiv	r4, r3, r4
c0de8e4e:	b2e4      	uxtb	r4, r4
c0de8e50:	fbb4 f5fa 	udiv	r5, r4, sl
c0de8e54:	fb05 441a 	mls	r4, r5, sl, r4
c0de8e58:	f06f 050a 	mvn.w	r5, #10
c0de8e5c:	fb02 0005 	mla	r0, r2, r5, r0
c0de8e60:	f44f 728f 	mov.w	r2, #286	@ 0x11e
c0de8e64:	fbb3 f2f2 	udiv	r2, r3, r2
c0de8e68:	b2c0      	uxtb	r0, r0
c0de8e6a:	4420      	add	r0, r4
c0de8e6c:	4411      	add	r1, r2
c0de8e6e:	280b      	cmp	r0, #11
c0de8e70:	eb09 0008 	add.w	r0, r9, r8
c0de8e74:	bf88      	it	hi
c0de8e76:	3101      	addhi	r1, #1
c0de8e78:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de8e7c:	2000      	movs	r0, #0
c0de8e7e:	2101      	movs	r1, #1
c0de8e80:	b014      	add	sp, #80	@ 0x50
c0de8e82:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8e86:	f001 bb1b 	b.w	c0dea4c0 <displayDetailsPage>
c0de8e8a:	4856      	ldr	r0, [pc, #344]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8e8c:	4448      	add	r0, r9
c0de8e8e:	6981      	ldr	r1, [r0, #24]
c0de8e90:	2900      	cmp	r1, #0
c0de8e92:	f000 807d 	beq.w	c0de8f90 <pageCallback+0x338>
c0de8e96:	2001      	movs	r0, #1
c0de8e98:	e005      	b.n	c0de8ea6 <pageCallback+0x24e>
c0de8e9a:	4852      	ldr	r0, [pc, #328]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8e9c:	4448      	add	r0, r9
c0de8e9e:	6981      	ldr	r1, [r0, #24]
c0de8ea0:	2900      	cmp	r1, #0
c0de8ea2:	d075      	beq.n	c0de8f90 <pageCallback+0x338>
c0de8ea4:	2000      	movs	r0, #0
c0de8ea6:	b014      	add	sp, #80	@ 0x50
c0de8ea8:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8eac:	4708      	bx	r1
c0de8eae:	484c      	ldr	r0, [pc, #304]	@ (c0de8fe0 <pageCallback+0x388>)
c0de8eb0:	eb09 0100 	add.w	r1, r9, r0
c0de8eb4:	4448      	add	r0, r9
c0de8eb6:	6a49      	ldr	r1, [r1, #36]	@ 0x24
c0de8eb8:	2900      	cmp	r1, #0
c0de8eba:	d06c      	beq.n	c0de8f96 <pageCallback+0x33e>
c0de8ebc:	7c80      	ldrb	r0, [r0, #18]
c0de8ebe:	4420      	add	r0, r4
c0de8ec0:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de8ec4:	e06c      	b.n	c0de8fa0 <pageCallback+0x348>
c0de8ec6:	4846      	ldr	r0, [pc, #280]	@ (c0de8fe0 <pageCallback+0x388>)
c0de8ec8:	2100      	movs	r1, #0
c0de8eca:	4448      	add	r0, r9
c0de8ecc:	6781      	str	r1, [r0, #120]	@ 0x78
c0de8ece:	f880 1089 	strb.w	r1, [r0, #137]	@ 0x89
c0de8ed2:	2010      	movs	r0, #16
c0de8ed4:	e006      	b.n	c0de8ee4 <pageCallback+0x28c>
c0de8ed6:	4a42      	ldr	r2, [pc, #264]	@ (c0de8fe0 <pageCallback+0x388>)
c0de8ed8:	2101      	movs	r1, #1
c0de8eda:	eb09 0002 	add.w	r0, r9, r2
c0de8ede:	f001 fd13 	bl	c0dea908 <OUTLINED_FUNCTION_6>
c0de8ee2:	d066      	beq.n	c0de8fb2 <pageCallback+0x35a>
c0de8ee4:	b014      	add	sp, #80	@ 0x50
c0de8ee6:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8eea:	f001 b86b 	b.w	c0de9fc4 <displaySecurityReport>
c0de8eee:	4e3d      	ldr	r6, [pc, #244]	@ (c0de8fe4 <pageCallback+0x38c>)
c0de8ef0:	eb09 0006 	add.w	r0, r9, r6
c0de8ef4:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
c0de8ef6:	b133      	cbz	r3, c0de8f06 <pageCallback+0x2ae>
c0de8ef8:	eb09 0006 	add.w	r0, r9, r6
c0de8efc:	4621      	mov	r1, r4
c0de8efe:	f890 2060 	ldrb.w	r2, [r0, #96]	@ 0x60
c0de8f02:	4628      	mov	r0, r5
c0de8f04:	4798      	blx	r3
c0de8f06:	eb09 0006 	add.w	r0, r9, r6
c0de8f0a:	68c2      	ldr	r2, [r0, #12]
c0de8f0c:	2a00      	cmp	r2, #0
c0de8f0e:	d03f      	beq.n	c0de8f90 <pageCallback+0x338>
c0de8f10:	4628      	mov	r0, r5
c0de8f12:	4621      	mov	r1, r4
c0de8f14:	b014      	add	sp, #80	@ 0x50
c0de8f16:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8f1a:	4710      	bx	r2
c0de8f1c:	b2c0      	uxtb	r0, r0
c0de8f1e:	2100      	movs	r1, #0
c0de8f20:	b014      	add	sp, #80	@ 0x50
c0de8f22:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8f26:	f7ff bbd3 	b.w	c0de86d0 <displayGenericContextPage>
c0de8f2a:	eb09 0100 	add.w	r1, r9, r0
c0de8f2e:	2200      	movs	r2, #0
c0de8f30:	6c48      	ldr	r0, [r1, #68]	@ 0x44
c0de8f32:	314c      	adds	r1, #76	@ 0x4c
c0de8f34:	b014      	add	sp, #80	@ 0x50
c0de8f36:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8f3a:	f001 b95d 	b.w	c0dea1f8 <displayInfosListModal>
c0de8f3e:	2080      	movs	r0, #128	@ 0x80
c0de8f40:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8f44:	2303      	movs	r3, #3
c0de8f46:	9001      	str	r0, [sp, #4]
c0de8f48:	4828      	ldr	r0, [pc, #160]	@ (c0de8fec <pageCallback+0x394>)
c0de8f4a:	eb09 0400 	add.w	r4, r9, r0
c0de8f4e:	200b      	movs	r0, #11
c0de8f50:	9400      	str	r4, [sp, #0]
c0de8f52:	f002 f987 	bl	c0deb264 <nbgl_textReduceOnNbLines>
c0de8f56:	9405      	str	r4, [sp, #20]
c0de8f58:	eb09 0406 	add.w	r4, r9, r6
c0de8f5c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
c0de8f5e:	a903      	add	r1, sp, #12
c0de8f60:	f7fc ffe7 	bl	c0de5f32 <nbgl_layoutAddQRCode>
c0de8f64:	6da0      	ldr	r0, [r4, #88]	@ 0x58
c0de8f66:	4924      	ldr	r1, [pc, #144]	@ (c0de8ff8 <pageCallback+0x3a0>)
c0de8f68:	2216      	movs	r2, #22
c0de8f6a:	2309      	movs	r3, #9
c0de8f6c:	4479      	add	r1, pc
c0de8f6e:	f7fd fc2a 	bl	c0de67c6 <nbgl_layoutAddFooter>
c0de8f72:	6da0      	ldr	r0, [r4, #88]	@ 0x58
c0de8f74:	f7fd ff6b 	bl	c0de6e4e <nbgl_layoutDraw>
c0de8f78:	f002 f90b 	bl	c0deb192 <nbgl_refresh>
c0de8f7c:	e008      	b.n	c0de8f90 <pageCallback+0x338>
c0de8f7e:	2c01      	cmp	r4, #1
c0de8f80:	d106      	bne.n	c0de8f90 <pageCallback+0x338>
c0de8f82:	4448      	add	r0, r9
c0de8f84:	6840      	ldr	r0, [r0, #4]
c0de8f86:	b118      	cbz	r0, c0de8f90 <pageCallback+0x338>
c0de8f88:	b014      	add	sp, #80	@ 0x50
c0de8f8a:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8f8e:	4700      	bx	r0
c0de8f90:	b014      	add	sp, #80	@ 0x50
c0de8f92:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8f96:	6a81      	ldr	r1, [r0, #40]	@ 0x28
c0de8f98:	7c80      	ldrb	r0, [r0, #18]
c0de8f9a:	4420      	add	r0, r4
c0de8f9c:	b2c0      	uxtb	r0, r0
c0de8f9e:	4788      	blx	r1
c0de8fa0:	e9d0 3100 	ldrd	r3, r1, [r0]
c0de8fa4:	6882      	ldr	r2, [r0, #8]
c0de8fa6:	4618      	mov	r0, r3
c0de8fa8:	b014      	add	sp, #80	@ 0x50
c0de8faa:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8fae:	f000 bf2b 	b.w	c0de9e08 <displayFullValuePage>
c0de8fb2:	eb09 0002 	add.w	r0, r9, r2
c0de8fb6:	f890 0089 	ldrb.w	r0, [r0, #137]	@ 0x89
c0de8fba:	b120      	cbz	r0, c0de8fc6 <pageCallback+0x36e>
c0de8fbc:	6948      	ldr	r0, [r1, #20]
c0de8fbe:	e003      	b.n	c0de8fc8 <pageCallback+0x370>
c0de8fc0:	b938      	cbnz	r0, c0de8fd2 <pageCallback+0x37a>
c0de8fc2:	4620      	mov	r0, r4
c0de8fc4:	e68f      	b.n	c0de8ce6 <pageCallback+0x8e>
c0de8fc6:	6988      	ldr	r0, [r1, #24]
c0de8fc8:	b014      	add	sp, #80	@ 0x50
c0de8fca:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8fce:	f001 b907 	b.w	c0dea1e0 <displayCustomizedSecurityReport>
c0de8fd2:	4620      	mov	r0, r4
c0de8fd4:	2100      	movs	r1, #0
c0de8fd6:	b014      	add	sp, #80	@ 0x50
c0de8fd8:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8fdc:	f7ff ba32 	b.w	c0de8444 <displaySettingsPage>
c0de8fe0:	00000ab0 	.word	0x00000ab0
c0de8fe4:	00000d68 	.word	0x00000d68
c0de8fe8:	00000de4 	.word	0x00000de4
c0de8fec:	00000ce8 	.word	0x00000ce8
c0de8ff0:	00005a5a 	.word	0x00005a5a
c0de8ff4:	00005a1a 	.word	0x00005a1a
c0de8ff8:	000041fb 	.word	0x000041fb
c0de8ffc:	00005a76 	.word	0x00005a76
c0de9000:	00000527 	.word	0x00000527

c0de9004 <nbgl_useCaseReviewStatus>:
c0de9004:	460a      	mov	r2, r1
c0de9006:	b198      	cbz	r0, c0de9030 <nbgl_useCaseReviewStatus+0x2c>
c0de9008:	2801      	cmp	r0, #1
c0de900a:	d016      	beq.n	c0de903a <nbgl_useCaseReviewStatus+0x36>
c0de900c:	2802      	cmp	r0, #2
c0de900e:	d019      	beq.n	c0de9044 <nbgl_useCaseReviewStatus+0x40>
c0de9010:	2803      	cmp	r0, #3
c0de9012:	d01c      	beq.n	c0de904e <nbgl_useCaseReviewStatus+0x4a>
c0de9014:	2804      	cmp	r0, #4
c0de9016:	d01f      	beq.n	c0de9058 <nbgl_useCaseReviewStatus+0x54>
c0de9018:	2807      	cmp	r0, #7
c0de901a:	d022      	beq.n	c0de9062 <nbgl_useCaseReviewStatus+0x5e>
c0de901c:	2806      	cmp	r0, #6
c0de901e:	d025      	beq.n	c0de906c <nbgl_useCaseReviewStatus+0x68>
c0de9020:	2805      	cmp	r0, #5
c0de9022:	bf18      	it	ne
c0de9024:	4770      	bxne	lr
c0de9026:	4815      	ldr	r0, [pc, #84]	@ (c0de907c <nbgl_useCaseReviewStatus+0x78>)
c0de9028:	2100      	movs	r1, #0
c0de902a:	4478      	add	r0, pc
c0de902c:	f7ff bdba 	b.w	c0de8ba4 <nbgl_useCaseStatus>
c0de9030:	4813      	ldr	r0, [pc, #76]	@ (c0de9080 <nbgl_useCaseReviewStatus+0x7c>)
c0de9032:	2101      	movs	r1, #1
c0de9034:	4478      	add	r0, pc
c0de9036:	f7ff bdb5 	b.w	c0de8ba4 <nbgl_useCaseStatus>
c0de903a:	4812      	ldr	r0, [pc, #72]	@ (c0de9084 <nbgl_useCaseReviewStatus+0x80>)
c0de903c:	2100      	movs	r1, #0
c0de903e:	4478      	add	r0, pc
c0de9040:	f7ff bdb0 	b.w	c0de8ba4 <nbgl_useCaseStatus>
c0de9044:	4810      	ldr	r0, [pc, #64]	@ (c0de9088 <nbgl_useCaseReviewStatus+0x84>)
c0de9046:	2101      	movs	r1, #1
c0de9048:	4478      	add	r0, pc
c0de904a:	f7ff bdab 	b.w	c0de8ba4 <nbgl_useCaseStatus>
c0de904e:	480f      	ldr	r0, [pc, #60]	@ (c0de908c <nbgl_useCaseReviewStatus+0x88>)
c0de9050:	2100      	movs	r1, #0
c0de9052:	4478      	add	r0, pc
c0de9054:	f7ff bda6 	b.w	c0de8ba4 <nbgl_useCaseStatus>
c0de9058:	4807      	ldr	r0, [pc, #28]	@ (c0de9078 <nbgl_useCaseReviewStatus+0x74>)
c0de905a:	2101      	movs	r1, #1
c0de905c:	4478      	add	r0, pc
c0de905e:	f7ff bda1 	b.w	c0de8ba4 <nbgl_useCaseStatus>
c0de9062:	480c      	ldr	r0, [pc, #48]	@ (c0de9094 <nbgl_useCaseReviewStatus+0x90>)
c0de9064:	2100      	movs	r1, #0
c0de9066:	4478      	add	r0, pc
c0de9068:	f7ff bd9c 	b.w	c0de8ba4 <nbgl_useCaseStatus>
c0de906c:	4808      	ldr	r0, [pc, #32]	@ (c0de9090 <nbgl_useCaseReviewStatus+0x8c>)
c0de906e:	2101      	movs	r1, #1
c0de9070:	4478      	add	r0, pc
c0de9072:	f7ff bd97 	b.w	c0de8ba4 <nbgl_useCaseStatus>
c0de9076:	bf00      	nop
c0de9078:	00003de5 	.word	0x00003de5
c0de907c:	00003e8b 	.word	0x00003e8b
c0de9080:	0000405f 	.word	0x0000405f
c0de9084:	000045ac 	.word	0x000045ac
c0de9088:	00004110 	.word	0x00004110
c0de908c:	0000448f 	.word	0x0000448f
c0de9090:	00003fbd 	.word	0x00003fbd
c0de9094:	00003dec 	.word	0x00003dec

c0de9098 <nbgl_useCaseChoice>:
c0de9098:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de909c:	b088      	sub	sp, #32
c0de909e:	4683      	mov	fp, r0
c0de90a0:	4668      	mov	r0, sp
c0de90a2:	460e      	mov	r6, r1
c0de90a4:	2118      	movs	r1, #24
c0de90a6:	461c      	mov	r4, r3
c0de90a8:	4617      	mov	r7, r2
c0de90aa:	3008      	adds	r0, #8
c0de90ac:	f002 fcce 	bl	c0deba4c <__aeabi_memclr>
c0de90b0:	b324      	cbz	r4, c0de90fc <nbgl_useCaseChoice+0x64>
c0de90b2:	f8dd 8040 	ldr.w	r8, [sp, #64]	@ 0x40
c0de90b6:	f1b8 0f00 	cmp.w	r8, #0
c0de90ba:	d01f      	beq.n	c0de90fc <nbgl_useCaseChoice+0x64>
c0de90bc:	4811      	ldr	r0, [pc, #68]	@ (c0de9104 <nbgl_useCaseChoice+0x6c>)
c0de90be:	f8dd a044 	ldr.w	sl, [sp, #68]	@ 0x44
c0de90c2:	eb09 0500 	add.w	r5, r9, r0
c0de90c6:	f7ff f96b 	bl	c0de83a0 <reset_callbacks_and_context>
c0de90ca:	2000      	movs	r0, #0
c0de90cc:	f8c5 a018 	str.w	sl, [r5, #24]
c0de90d0:	e9cd 6700 	strd	r6, r7, [sp]
c0de90d4:	f8cd 8018 	str.w	r8, [sp, #24]
c0de90d8:	9405      	str	r4, [sp, #20]
c0de90da:	f8cd b00c 	str.w	fp, [sp, #12]
c0de90de:	4669      	mov	r1, sp
c0de90e0:	f88d 0011 	strb.w	r0, [sp, #17]
c0de90e4:	2009      	movs	r0, #9
c0de90e6:	f88d 001e 	strb.w	r0, [sp, #30]
c0de90ea:	f88d 001c 	strb.w	r0, [sp, #28]
c0de90ee:	4806      	ldr	r0, [pc, #24]	@ (c0de9108 <nbgl_useCaseChoice+0x70>)
c0de90f0:	4478      	add	r0, pc
c0de90f2:	f7fe fce5 	bl	c0de7ac0 <nbgl_pageDrawConfirmation>
c0de90f6:	6168      	str	r0, [r5, #20]
c0de90f8:	f001 fbfd 	bl	c0dea8f6 <OUTLINED_FUNCTION_3>
c0de90fc:	b008      	add	sp, #32
c0de90fe:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de9102:	bf00      	nop
c0de9104:	00000d68 	.word	0x00000d68
c0de9108:	fffffb65 	.word	0xfffffb65

c0de910c <layoutTouchCallback>:
c0de910c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de910e:	b087      	sub	sp, #28
c0de9110:	2811      	cmp	r0, #17
c0de9112:	d01d      	beq.n	c0de9150 <layoutTouchCallback+0x44>
c0de9114:	2812      	cmp	r0, #18
c0de9116:	d027      	beq.n	c0de9168 <layoutTouchCallback+0x5c>
c0de9118:	2819      	cmp	r0, #25
c0de911a:	d02e      	beq.n	c0de917a <layoutTouchCallback+0x6e>
c0de911c:	2815      	cmp	r0, #21
c0de911e:	d13c      	bne.n	c0de919a <layoutTouchCallback+0x8e>
c0de9120:	2900      	cmp	r1, #0
c0de9122:	d047      	beq.n	c0de91b4 <layoutTouchCallback+0xa8>
c0de9124:	493e      	ldr	r1, [pc, #248]	@ (c0de9220 <layoutTouchCallback+0x114>)
c0de9126:	2400      	movs	r4, #0
c0de9128:	eb09 0201 	add.w	r2, r9, r1
c0de912c:	eb09 0501 	add.w	r5, r9, r1
c0de9130:	f882 4089 	strb.w	r4, [r2, #137]	@ 0x89
c0de9134:	6e10      	ldr	r0, [r2, #96]	@ 0x60
c0de9136:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de913a:	2a00      	cmp	r2, #0
c0de913c:	d05f      	beq.n	c0de91fe <layoutTouchCallback+0xf2>
c0de913e:	f105 0368 	add.w	r3, r5, #104	@ 0x68
c0de9142:	6fed      	ldr	r5, [r5, #124]	@ 0x7c
c0de9144:	cb0e      	ldmia	r3, {r1, r2, r3}
c0de9146:	e9cd 5400 	strd	r5, r4, [sp]
c0de914a:	f000 fbc3 	bl	c0de98d4 <useCaseReviewStreamingStart>
c0de914e:	e064      	b.n	c0de921a <layoutTouchCallback+0x10e>
c0de9150:	4a33      	ldr	r2, [pc, #204]	@ (c0de9220 <layoutTouchCallback+0x114>)
c0de9152:	2101      	movs	r1, #1
c0de9154:	eb09 0002 	add.w	r0, r9, r2
c0de9158:	f001 fbd6 	bl	c0dea908 <OUTLINED_FUNCTION_6>
c0de915c:	d032      	beq.n	c0de91c4 <layoutTouchCallback+0xb8>
c0de915e:	b007      	add	sp, #28
c0de9160:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de9164:	f000 bf2e 	b.w	c0de9fc4 <displaySecurityReport>
c0de9168:	482d      	ldr	r0, [pc, #180]	@ (c0de9220 <layoutTouchCallback+0x114>)
c0de916a:	2118      	movs	r1, #24
c0de916c:	eb09 0400 	add.w	r4, r9, r0
c0de9170:	2001      	movs	r0, #1
c0de9172:	f001 fc00 	bl	c0dea976 <OUTLINED_FUNCTION_19>
c0de9176:	6660      	str	r0, [r4, #100]	@ 0x64
c0de9178:	e04f      	b.n	c0de921a <layoutTouchCallback+0x10e>
c0de917a:	4a29      	ldr	r2, [pc, #164]	@ (c0de9220 <layoutTouchCallback+0x114>)
c0de917c:	eb09 0002 	add.w	r0, r9, r2
c0de9180:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0de9182:	b349      	cbz	r1, c0de91d8 <layoutTouchCallback+0xcc>
c0de9184:	7801      	ldrb	r1, [r0, #0]
c0de9186:	f011 0f16 	tst.w	r1, #22
c0de918a:	d101      	bne.n	c0de9190 <layoutTouchCallback+0x84>
c0de918c:	6940      	ldr	r0, [r0, #20]
c0de918e:	b350      	cbz	r0, c0de91e6 <layoutTouchCallback+0xda>
c0de9190:	b007      	add	sp, #28
c0de9192:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de9196:	f000 bac9 	b.w	c0de972c <displayInitialWarning>
c0de919a:	2809      	cmp	r0, #9
c0de919c:	d13d      	bne.n	c0de921a <layoutTouchCallback+0x10e>
c0de919e:	4821      	ldr	r0, [pc, #132]	@ (c0de9224 <layoutTouchCallback+0x118>)
c0de91a0:	4448      	add	r0, r9
c0de91a2:	6982      	ldr	r2, [r0, #24]
c0de91a4:	b3ca      	cbz	r2, c0de921a <layoutTouchCallback+0x10e>
c0de91a6:	fab1 f081 	clz	r0, r1
c0de91aa:	0940      	lsrs	r0, r0, #5
c0de91ac:	b007      	add	sp, #28
c0de91ae:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de91b2:	4710      	bx	r2
c0de91b4:	481a      	ldr	r0, [pc, #104]	@ (c0de9220 <layoutTouchCallback+0x114>)
c0de91b6:	4448      	add	r0, r9
c0de91b8:	6fc1      	ldr	r1, [r0, #124]	@ 0x7c
c0de91ba:	2000      	movs	r0, #0
c0de91bc:	b007      	add	sp, #28
c0de91be:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de91c2:	4708      	bx	r1
c0de91c4:	eb09 0002 	add.w	r0, r9, r2
c0de91c8:	2214      	movs	r2, #20
c0de91ca:	f890 0089 	ldrb.w	r0, [r0, #137]	@ 0x89
c0de91ce:	2800      	cmp	r0, #0
c0de91d0:	bf08      	it	eq
c0de91d2:	2218      	moveq	r2, #24
c0de91d4:	5888      	ldr	r0, [r1, r2]
c0de91d6:	e001      	b.n	c0de91dc <layoutTouchCallback+0xd0>
c0de91d8:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de91da:	6940      	ldr	r0, [r0, #20]
c0de91dc:	b007      	add	sp, #28
c0de91de:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de91e2:	f000 bffd 	b.w	c0dea1e0 <displayCustomizedSecurityReport>
c0de91e6:	eb09 0102 	add.w	r1, r9, r2
c0de91ea:	2400      	movs	r4, #0
c0de91ec:	eb09 0502 	add.w	r5, r9, r2
c0de91f0:	f881 4089 	strb.w	r4, [r1, #137]	@ 0x89
c0de91f4:	6e08      	ldr	r0, [r1, #96]	@ 0x60
c0de91f6:	f891 105c 	ldrb.w	r1, [r1, #92]	@ 0x5c
c0de91fa:	2900      	cmp	r1, #0
c0de91fc:	d19f      	bne.n	c0de913e <layoutTouchCallback+0x32>
c0de91fe:	f105 0764 	add.w	r7, r5, #100	@ 0x64
c0de9202:	f8d5 c07c 	ldr.w	ip, [r5, #124]	@ 0x7c
c0de9206:	353c      	adds	r5, #60	@ 0x3c
c0de9208:	cfce      	ldmia	r7, {r1, r2, r3, r6, r7}
c0de920a:	e9cd 6700 	strd	r6, r7, [sp]
c0de920e:	e9cd 4404 	strd	r4, r4, [sp, #16]
c0de9212:	e9cd 5c02 	strd	r5, ip, [sp, #8]
c0de9216:	f000 f913 	bl	c0de9440 <useCaseReview>
c0de921a:	b007      	add	sp, #28
c0de921c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de921e:	bf00      	nop
c0de9220:	00000ab0 	.word	0x00000ab0
c0de9224:	00000d68 	.word	0x00000d68

c0de9228 <nbgl_useCaseConfirm>:
c0de9228:	b570      	push	{r4, r5, r6, lr}
c0de922a:	b088      	sub	sp, #32
c0de922c:	4c0f      	ldr	r4, [pc, #60]	@ (c0de926c <nbgl_useCaseConfirm+0x44>)
c0de922e:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de9230:	f10d 0c14 	add.w	ip, sp, #20
c0de9234:	eb09 0504 	add.w	r5, r9, r4
c0de9238:	61ee      	str	r6, [r5, #28]
c0de923a:	4e0d      	ldr	r6, [pc, #52]	@ (c0de9270 <nbgl_useCaseConfirm+0x48>)
c0de923c:	e8ac 004c 	stmia.w	ip!, {r2, r3, r6}
c0de9240:	2200      	movs	r2, #0
c0de9242:	9204      	str	r2, [sp, #16]
c0de9244:	4b0b      	ldr	r3, [pc, #44]	@ (c0de9274 <nbgl_useCaseConfirm+0x4c>)
c0de9246:	447b      	add	r3, pc
c0de9248:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de924c:	6a28      	ldr	r0, [r5, #32]
c0de924e:	b108      	cbz	r0, c0de9254 <nbgl_useCaseConfirm+0x2c>
c0de9250:	f7fe fe97 	bl	c0de7f82 <nbgl_pageRelease>
c0de9254:	4808      	ldr	r0, [pc, #32]	@ (c0de9278 <nbgl_useCaseConfirm+0x50>)
c0de9256:	4669      	mov	r1, sp
c0de9258:	4478      	add	r0, pc
c0de925a:	f7fe fc31 	bl	c0de7ac0 <nbgl_pageDrawConfirmation>
c0de925e:	eb09 0104 	add.w	r1, r9, r4
c0de9262:	6208      	str	r0, [r1, #32]
c0de9264:	f001 fb47 	bl	c0dea8f6 <OUTLINED_FUNCTION_3>
c0de9268:	b008      	add	sp, #32
c0de926a:	bd70      	pop	{r4, r5, r6, pc}
c0de926c:	00000d68 	.word	0x00000d68
c0de9270:	01090009 	.word	0x01090009
c0de9274:	0000313a 	.word	0x0000313a
c0de9278:	00000021 	.word	0x00000021

c0de927c <pageModalCallback>:
c0de927c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de927e:	460c      	mov	r4, r1
c0de9280:	280e      	cmp	r0, #14
c0de9282:	d008      	beq.n	c0de9296 <pageModalCallback+0x1a>
c0de9284:	4605      	mov	r5, r0
c0de9286:	280f      	cmp	r0, #15
c0de9288:	d117      	bne.n	c0de92ba <pageModalCallback+0x3e>
c0de928a:	4832      	ldr	r0, [pc, #200]	@ (c0de9354 <pageModalCallback+0xd8>)
c0de928c:	4448      	add	r0, r9
c0de928e:	e9d0 2113 	ldrd	r2, r1, [r0, #76]	@ 0x4c
c0de9292:	6d43      	ldr	r3, [r0, #84]	@ 0x54
c0de9294:	e005      	b.n	c0de92a2 <pageModalCallback+0x26>
c0de9296:	482f      	ldr	r0, [pc, #188]	@ (c0de9354 <pageModalCallback+0xd8>)
c0de9298:	4448      	add	r0, r9
c0de929a:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de929c:	e9d0 2100 	ldrd	r2, r1, [r0]
c0de92a0:	6883      	ldr	r3, [r0, #8]
c0de92a2:	f852 0024 	ldr.w	r0, [r2, r4, lsl #2]
c0de92a6:	eb04 0244 	add.w	r2, r4, r4, lsl #1
c0de92aa:	f851 1024 	ldr.w	r1, [r1, r4, lsl #2]
c0de92ae:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
c0de92b2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de92b6:	f000 bda7 	b.w	c0de9e08 <displayFullValuePage>
c0de92ba:	4e27      	ldr	r6, [pc, #156]	@ (c0de9358 <pageModalCallback+0xdc>)
c0de92bc:	eb09 0706 	add.w	r7, r9, r6
c0de92c0:	6a38      	ldr	r0, [r7, #32]
c0de92c2:	f7fe fe5e 	bl	c0de7f82 <nbgl_pageRelease>
c0de92c6:	2000      	movs	r0, #0
c0de92c8:	2d02      	cmp	r5, #2
c0de92ca:	6238      	str	r0, [r7, #32]
c0de92cc:	d032      	beq.n	c0de9334 <pageModalCallback+0xb8>
c0de92ce:	2d14      	cmp	r5, #20
c0de92d0:	d00f      	beq.n	c0de92f2 <pageModalCallback+0x76>
c0de92d2:	2d04      	cmp	r5, #4
c0de92d4:	d01e      	beq.n	c0de9314 <pageModalCallback+0x98>
c0de92d6:	2d05      	cmp	r5, #5
c0de92d8:	d024      	beq.n	c0de9324 <pageModalCallback+0xa8>
c0de92da:	2d09      	cmp	r5, #9
c0de92dc:	d029      	beq.n	c0de9332 <pageModalCallback+0xb6>
c0de92de:	2d03      	cmp	r5, #3
c0de92e0:	d137      	bne.n	c0de9352 <pageModalCallback+0xd6>
c0de92e2:	2cff      	cmp	r4, #255	@ 0xff
c0de92e4:	d026      	beq.n	c0de9334 <pageModalCallback+0xb8>
c0de92e6:	4620      	mov	r0, r4
c0de92e8:	2100      	movs	r1, #0
c0de92ea:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de92ee:	f001 b8e7 	b.w	c0dea4c0 <displayDetailsPage>
c0de92f2:	4818      	ldr	r0, [pc, #96]	@ (c0de9354 <pageModalCallback+0xd8>)
c0de92f4:	eb09 0100 	add.w	r1, r9, r0
c0de92f8:	f891 1088 	ldrb.w	r1, [r1, #136]	@ 0x88
c0de92fc:	2902      	cmp	r1, #2
c0de92fe:	d119      	bne.n	c0de9334 <pageModalCallback+0xb8>
c0de9300:	4448      	add	r0, r9
c0de9302:	2101      	movs	r1, #1
c0de9304:	f880 1088 	strb.w	r1, [r0, #136]	@ 0x88
c0de9308:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0de930a:	6800      	ldr	r0, [r0, #0]
c0de930c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de9310:	f000 be58 	b.w	c0de9fc4 <displaySecurityReport>
c0de9314:	2cff      	cmp	r4, #255	@ 0xff
c0de9316:	d00d      	beq.n	c0de9334 <pageModalCallback+0xb8>
c0de9318:	4620      	mov	r0, r4
c0de931a:	2100      	movs	r1, #0
c0de931c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de9320:	f001 b9a0 	b.w	c0dea664 <displayTagValueListModalPage>
c0de9324:	b934      	cbnz	r4, c0de9334 <pageModalCallback+0xb8>
c0de9326:	20ff      	movs	r0, #255	@ 0xff
c0de9328:	2101      	movs	r1, #1
c0de932a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de932e:	f7ff b9cf 	b.w	c0de86d0 <displayGenericContextPage>
c0de9332:	b12c      	cbz	r4, c0de9340 <pageModalCallback+0xc4>
c0de9334:	f001 ff55 	bl	c0deb1e2 <nbgl_screenRedraw>
c0de9338:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de933c:	f001 bf29 	b.w	c0deb192 <nbgl_refresh>
c0de9340:	eb09 0006 	add.w	r0, r9, r6
c0de9344:	69c0      	ldr	r0, [r0, #28]
c0de9346:	b120      	cbz	r0, c0de9352 <pageModalCallback+0xd6>
c0de9348:	4780      	blx	r0
c0de934a:	eb09 0006 	add.w	r0, r9, r6
c0de934e:	2100      	movs	r1, #0
c0de9350:	61c1      	str	r1, [r0, #28]
c0de9352:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de9354:	00000ab0 	.word	0x00000ab0
c0de9358:	00000d68 	.word	0x00000d68

c0de935c <displayReviewPage>:
c0de935c:	b570      	push	{r4, r5, r6, lr}
c0de935e:	b090      	sub	sp, #64	@ 0x40
c0de9360:	460c      	mov	r4, r1
c0de9362:	4605      	mov	r5, r0
c0de9364:	4668      	mov	r0, sp
c0de9366:	2140      	movs	r1, #64	@ 0x40
c0de9368:	f002 fb70 	bl	c0deba4c <__aeabi_memclr>
c0de936c:	4e28      	ldr	r6, [pc, #160]	@ (c0de9410 <displayReviewPage+0xb4>)
c0de936e:	eb09 0006 	add.w	r0, r9, r6
c0de9372:	f890 0061 	ldrb.w	r0, [r0, #97]	@ 0x61
c0de9376:	b108      	cbz	r0, c0de937c <displayReviewPage+0x20>
c0de9378:	42a8      	cmp	r0, r5
c0de937a:	d947      	bls.n	c0de940c <displayReviewPage+0xb0>
c0de937c:	eb09 0006 	add.w	r0, r9, r6
c0de9380:	6882      	ldr	r2, [r0, #8]
c0de9382:	f880 5060 	strb.w	r5, [r0, #96]	@ 0x60
c0de9386:	2a00      	cmp	r2, #0
c0de9388:	d040      	beq.n	c0de940c <displayReviewPage+0xb0>
c0de938a:	4669      	mov	r1, sp
c0de938c:	4628      	mov	r0, r5
c0de938e:	4790      	blx	r2
c0de9390:	b3e0      	cbz	r0, c0de940c <displayReviewPage+0xb0>
c0de9392:	2009      	movs	r0, #9
c0de9394:	2100      	movs	r1, #0
c0de9396:	f88d 0006 	strb.w	r0, [sp, #6]
c0de939a:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de939e:	f88d 1004 	strb.w	r1, [sp, #4]
c0de93a2:	9100      	str	r1, [sp, #0]
c0de93a4:	2806      	cmp	r0, #6
c0de93a6:	d010      	beq.n	c0de93ca <displayReviewPage+0x6e>
c0de93a8:	2804      	cmp	r0, #4
c0de93aa:	d014      	beq.n	c0de93d6 <displayReviewPage+0x7a>
c0de93ac:	2805      	cmp	r0, #5
c0de93ae:	d016      	beq.n	c0de93de <displayReviewPage+0x82>
c0de93b0:	2802      	cmp	r0, #2
c0de93b2:	d11b      	bne.n	c0de93ec <displayReviewPage+0x90>
c0de93b4:	eb09 0006 	add.w	r0, r9, r6
c0de93b8:	f890 1060 	ldrb.w	r1, [r0, #96]	@ 0x60
c0de93bc:	3101      	adds	r1, #1
c0de93be:	f880 1061 	strb.w	r1, [r0, #97]	@ 0x61
c0de93c2:	200b      	movs	r0, #11
c0de93c4:	f88d 001c 	strb.w	r0, [sp, #28]
c0de93c8:	e010      	b.n	c0de93ec <displayReviewPage+0x90>
c0de93ca:	200b      	movs	r0, #11
c0de93cc:	f88d 101d 	strb.w	r1, [sp, #29]
c0de93d0:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de93d4:	e00a      	b.n	c0de93ec <displayReviewPage+0x90>
c0de93d6:	2000      	movs	r0, #0
c0de93d8:	f88d 001d 	strb.w	r0, [sp, #29]
c0de93dc:	e006      	b.n	c0de93ec <displayReviewPage+0x90>
c0de93de:	2000      	movs	r0, #0
c0de93e0:	f88d 001d 	strb.w	r0, [sp, #29]
c0de93e4:	f640 1001 	movw	r0, #2305	@ 0x901
c0de93e8:	f8ad 001a 	strh.w	r0, [sp, #26]
c0de93ec:	4809      	ldr	r0, [pc, #36]	@ (c0de9414 <displayReviewPage+0xb8>)
c0de93ee:	eb09 0506 	add.w	r5, r9, r6
c0de93f2:	466a      	mov	r2, sp
c0de93f4:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de93f8:	4478      	add	r0, pc
c0de93fa:	f7fe fdbf 	bl	c0de7f7c <nbgl_pageDrawGenericContent>
c0de93fe:	6168      	str	r0, [r5, #20]
c0de9400:	2001      	movs	r0, #1
c0de9402:	2c00      	cmp	r4, #0
c0de9404:	bf18      	it	ne
c0de9406:	2002      	movne	r0, #2
c0de9408:	f001 fec8 	bl	c0deb19c <nbgl_refreshSpecial>
c0de940c:	b010      	add	sp, #64	@ 0x40
c0de940e:	bd70      	pop	{r4, r5, r6, pc}
c0de9410:	00000d68 	.word	0x00000d68
c0de9414:	fffff85d 	.word	0xfffff85d

c0de9418 <nbgl_useCaseReview>:
c0de9418:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de941a:	b087      	sub	sp, #28
c0de941c:	f001 fa5a 	bl	c0dea8d4 <OUTLINED_FUNCTION_0>
c0de9420:	2001      	movs	r0, #1
c0de9422:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de9424:	462a      	mov	r2, r5
c0de9426:	4623      	mov	r3, r4
c0de9428:	9005      	str	r0, [sp, #20]
c0de942a:	2000      	movs	r0, #0
c0de942c:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de9430:	9004      	str	r0, [sp, #16]
c0de9432:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de9434:	4631      	mov	r1, r6
c0de9436:	f001 fa6d 	bl	c0dea914 <OUTLINED_FUNCTION_8>
c0de943a:	b007      	add	sp, #28
c0de943c:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de9440 <useCaseReview>:
c0de9440:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9444:	4688      	mov	r8, r1
c0de9446:	4682      	mov	sl, r0
c0de9448:	4840      	ldr	r0, [pc, #256]	@ (c0de954c <useCaseReview+0x10c>)
c0de944a:	4941      	ldr	r1, [pc, #260]	@ (c0de9550 <useCaseReview+0x110>)
c0de944c:	4614      	mov	r4, r2
c0de944e:	2202      	movs	r2, #2
c0de9450:	f04f 0b00 	mov.w	fp, #0
c0de9454:	4e40      	ldr	r6, [pc, #256]	@ (c0de9558 <useCaseReview+0x118>)
c0de9456:	461f      	mov	r7, r3
c0de9458:	f849 a000 	str.w	sl, [r9, r0]
c0de945c:	f809 2001 	strb.w	r2, [r9, r1]
c0de9460:	4448      	add	r0, r9
c0de9462:	eb09 0506 	add.w	r5, r9, r6
c0de9466:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
c0de9468:	6042      	str	r2, [r0, #4]
c0de946a:	eb09 0001 	add.w	r0, r9, r1
c0de946e:	493b      	ldr	r1, [pc, #236]	@ (c0de955c <useCaseReview+0x11c>)
c0de9470:	f8c0 b010 	str.w	fp, [r0, #16]
c0de9474:	4479      	add	r1, pc
c0de9476:	6181      	str	r1, [r0, #24]
c0de9478:	4836      	ldr	r0, [pc, #216]	@ (c0de9554 <useCaseReview+0x114>)
c0de947a:	2103      	movs	r1, #3
c0de947c:	4448      	add	r0, r9
c0de947e:	7301      	strb	r1, [r0, #12]
c0de9480:	6085      	str	r5, [r0, #8]
c0de9482:	4628      	mov	r0, r5
c0de9484:	21a8      	movs	r1, #168	@ 0xa8
c0de9486:	f002 fae1 	bl	c0deba4c <__aeabi_memclr>
c0de948a:	2001      	movs	r0, #1
c0de948c:	f8a5 b024 	strh.w	fp, [r5, #36]	@ 0x24
c0de9490:	f809 0006 	strb.w	r0, [r9, r6]
c0de9494:	4832      	ldr	r0, [pc, #200]	@ (c0de9560 <useCaseReview+0x120>)
c0de9496:	4478      	add	r0, pc
c0de9498:	6228      	str	r0, [r5, #32]
c0de949a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de949c:	616f      	str	r7, [r5, #20]
c0de949e:	9401      	str	r4, [sp, #4]
c0de94a0:	60ac      	str	r4, [r5, #8]
c0de94a2:	f885 b004 	strb.w	fp, [r5, #4]
c0de94a6:	61e8      	str	r0, [r5, #28]
c0de94a8:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de94aa:	f001 f97f 	bl	c0dea7ac <initWarningTipBox>
c0de94ae:	2004      	movs	r0, #4
c0de94b0:	4641      	mov	r1, r8
c0de94b2:	f885 0038 	strb.w	r0, [r5, #56]	@ 0x38
c0de94b6:	f105 003c 	add.w	r0, r5, #60	@ 0x3c
c0de94ba:	e891 00dc 	ldmia.w	r1, {r2, r3, r4, r6, r7}
c0de94be:	c0dc      	stmia	r0!, {r2, r3, r4, r6, r7}
c0de94c0:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de94c4:	66e8      	str	r0, [r5, #108]	@ 0x6c
c0de94c6:	e9dd 050e 	ldrd	r0, r5, [sp, #56]	@ 0x38
c0de94ca:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
c0de94cc:	b190      	cbz	r0, c0de94f4 <useCaseReview+0xb4>
c0de94ce:	4922      	ldr	r1, [pc, #136]	@ (c0de9558 <useCaseReview+0x118>)
c0de94d0:	2203      	movs	r2, #3
c0de94d2:	eb09 0001 	add.w	r0, r9, r1
c0de94d6:	f880 2070 	strb.w	r2, [r0, #112]	@ 0x70
c0de94da:	9a01      	ldr	r2, [sp, #4]
c0de94dc:	b343      	cbz	r3, c0de9530 <useCaseReview+0xf0>
c0de94de:	eb09 0001 	add.w	r0, r9, r1
c0de94e2:	210b      	movs	r1, #11
c0de94e4:	f880 1080 	strb.w	r1, [r0, #128]	@ 0x80
c0de94e8:	4921      	ldr	r1, [pc, #132]	@ (c0de9570 <useCaseReview+0x130>)
c0de94ea:	e9c0 321d 	strd	r3, r2, [r0, #116]	@ 0x74
c0de94ee:	4479      	add	r1, pc
c0de94f0:	67c1      	str	r1, [r0, #124]	@ 0x7c
c0de94f2:	e00a      	b.n	c0de950a <useCaseReview+0xca>
c0de94f4:	4818      	ldr	r0, [pc, #96]	@ (c0de9558 <useCaseReview+0x118>)
c0de94f6:	2102      	movs	r1, #2
c0de94f8:	9a01      	ldr	r2, [sp, #4]
c0de94fa:	4448      	add	r0, r9
c0de94fc:	f880 1070 	strb.w	r1, [r0, #112]	@ 0x70
c0de9500:	f100 0174 	add.w	r1, r0, #116	@ 0x74
c0de9504:	4650      	mov	r0, sl
c0de9506:	f000 fa55 	bl	c0de99b4 <prepareReviewLastPage>
c0de950a:	f3ca 1000 	ubfx	r0, sl, #4, #1
c0de950e:	f7ff f825 	bl	c0de855c <getNbPagesForGenericContents>
c0de9512:	4a18      	ldr	r2, [pc, #96]	@ (c0de9574 <useCaseReview+0x134>)
c0de9514:	4601      	mov	r1, r0
c0de9516:	2001      	movs	r0, #1
c0de9518:	447a      	add	r2, pc
c0de951a:	f7fe ff57 	bl	c0de83cc <prepareNavInfo>
c0de951e:	b10d      	cbz	r5, c0de9524 <useCaseReview+0xe4>
c0de9520:	f001 f9ef 	bl	c0dea902 <OUTLINED_FUNCTION_5>
c0de9524:	2000      	movs	r0, #0
c0de9526:	2101      	movs	r1, #1
c0de9528:	e8bd 4dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de952c:	f7ff b8d0 	b.w	c0de86d0 <displayGenericContextPage>
c0de9530:	f01a 0007 	ands.w	r0, sl, #7
c0de9534:	d004      	beq.n	c0de9540 <useCaseReview+0x100>
c0de9536:	2801      	cmp	r0, #1
c0de9538:	d105      	bne.n	c0de9546 <useCaseReview+0x106>
c0de953a:	4b0b      	ldr	r3, [pc, #44]	@ (c0de9568 <useCaseReview+0x128>)
c0de953c:	447b      	add	r3, pc
c0de953e:	e7ce      	b.n	c0de94de <useCaseReview+0x9e>
c0de9540:	4b08      	ldr	r3, [pc, #32]	@ (c0de9564 <useCaseReview+0x124>)
c0de9542:	447b      	add	r3, pc
c0de9544:	e7cb      	b.n	c0de94de <useCaseReview+0x9e>
c0de9546:	4b09      	ldr	r3, [pc, #36]	@ (c0de956c <useCaseReview+0x12c>)
c0de9548:	447b      	add	r3, pc
c0de954a:	e7c8      	b.n	c0de94de <useCaseReview+0x9e>
c0de954c:	00000de4 	.word	0x00000de4
c0de9550:	00000d68 	.word	0x00000d68
c0de9554:	00000ab0 	.word	0x00000ab0
c0de9558:	00000b40 	.word	0x00000b40
c0de955c:	00001315 	.word	0x00001315
c0de9560:	00004295 	.word	0x00004295
c0de9564:	00003c2b 	.word	0x00003c2b
c0de9568:	00003c00 	.word	0x00003c00
c0de956c:	000040e3 	.word	0x000040e3
c0de9570:	000039a1 	.word	0x000039a1
c0de9574:	000039b0 	.word	0x000039b0

c0de9578 <nbgl_useCaseReviewBlindSigning>:
c0de9578:	b510      	push	{r4, lr}
c0de957a:	b086      	sub	sp, #24
c0de957c:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de957e:	9404      	str	r4, [sp, #16]
c0de9580:	4c06      	ldr	r4, [pc, #24]	@ (c0de959c <nbgl_useCaseReviewBlindSigning+0x24>)
c0de9582:	447c      	add	r4, pc
c0de9584:	9403      	str	r4, [sp, #12]
c0de9586:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de9588:	9402      	str	r4, [sp, #8]
c0de958a:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de958c:	9401      	str	r4, [sp, #4]
c0de958e:	9c08      	ldr	r4, [sp, #32]
c0de9590:	9400      	str	r4, [sp, #0]
c0de9592:	f000 f805 	bl	c0de95a0 <nbgl_useCaseAdvancedReview>
c0de9596:	b006      	add	sp, #24
c0de9598:	bd10      	pop	{r4, pc}
c0de959a:	bf00      	nop
c0de959c:	000051aa 	.word	0x000051aa

c0de95a0 <nbgl_useCaseAdvancedReview>:
c0de95a0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de95a4:	b088      	sub	sp, #32
c0de95a6:	e9cd 2306 	strd	r2, r3, [sp, #24]
c0de95aa:	4688      	mov	r8, r1
c0de95ac:	4606      	mov	r6, r0
c0de95ae:	f7fe fef7 	bl	c0de83a0 <reset_callbacks_and_context>
c0de95b2:	e9dd ba12 	ldrd	fp, sl, [sp, #72]	@ 0x48
c0de95b6:	9f14      	ldr	r7, [sp, #80]	@ 0x50
c0de95b8:	e9dd e410 	ldrd	lr, r4, [sp, #64]	@ 0x40
c0de95bc:	f1bb 0f00 	cmp.w	fp, #0
c0de95c0:	d008      	beq.n	c0de95d4 <nbgl_useCaseAdvancedReview+0x34>
c0de95c2:	482b      	ldr	r0, [pc, #172]	@ (c0de9670 <nbgl_useCaseAdvancedReview+0xd0>)
c0de95c4:	4659      	mov	r1, fp
c0de95c6:	2220      	movs	r2, #32
c0de95c8:	4675      	mov	r5, lr
c0de95ca:	4448      	add	r0, r9
c0de95cc:	303c      	adds	r0, #60	@ 0x3c
c0de95ce:	f002 fa33 	bl	c0deba38 <__aeabi_memcpy>
c0de95d2:	46ae      	mov	lr, r5
c0de95d4:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
c0de95d8:	f1ba 0f00 	cmp.w	sl, #0
c0de95dc:	d039      	beq.n	c0de9652 <nbgl_useCaseAdvancedReview+0xb2>
c0de95de:	f8da 0000 	ldr.w	r0, [sl]
c0de95e2:	2808      	cmp	r0, #8
c0de95e4:	d00a      	beq.n	c0de95fc <nbgl_useCaseAdvancedReview+0x5c>
c0de95e6:	b960      	cbnz	r0, c0de9602 <nbgl_useCaseAdvancedReview+0x62>
c0de95e8:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de95ec:	b958      	cbnz	r0, c0de9606 <nbgl_useCaseAdvancedReview+0x66>
c0de95ee:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de95f2:	b940      	cbnz	r0, c0de9606 <nbgl_useCaseAdvancedReview+0x66>
c0de95f4:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de95f8:	b928      	cbnz	r0, c0de9606 <nbgl_useCaseAdvancedReview+0x66>
c0de95fa:	e02a      	b.n	c0de9652 <nbgl_useCaseAdvancedReview+0xb2>
c0de95fc:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de9600:	e001      	b.n	c0de9606 <nbgl_useCaseAdvancedReview+0x66>
c0de9602:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de9606:	481a      	ldr	r0, [pc, #104]	@ (c0de9670 <nbgl_useCaseAdvancedReview+0xd0>)
c0de9608:	2500      	movs	r5, #0
c0de960a:	4448      	add	r0, r9
c0de960c:	f100 0168 	add.w	r1, r0, #104	@ 0x68
c0de9610:	f880 505c 	strb.w	r5, [r0, #92]	@ 0x5c
c0de9614:	2501      	movs	r5, #1
c0de9616:	e9c0 6818 	strd	r6, r8, [r0, #96]	@ 0x60
c0de961a:	e9c0 4a1d 	strd	r4, sl, [r0, #116]	@ 0x74
c0de961e:	67c7      	str	r7, [r0, #124]	@ 0x7c
c0de9620:	e8a1 400c 	stmia.w	r1!, {r2, r3, lr}
c0de9624:	f880 508c 	strb.w	r5, [r0, #140]	@ 0x8c
c0de9628:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de962c:	b120      	cbz	r0, c0de9638 <nbgl_useCaseAdvancedReview+0x98>
c0de962e:	b008      	add	sp, #32
c0de9630:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9634:	f000 b81e 	b.w	c0de9674 <displayPrelude>
c0de9638:	f89a 0000 	ldrb.w	r0, [sl]
c0de963c:	f010 0f16 	tst.w	r0, #22
c0de9640:	d102      	bne.n	c0de9648 <nbgl_useCaseAdvancedReview+0xa8>
c0de9642:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de9646:	b120      	cbz	r0, c0de9652 <nbgl_useCaseAdvancedReview+0xb2>
c0de9648:	b008      	add	sp, #32
c0de964a:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de964e:	f000 b86d 	b.w	c0de972c <displayInitialWarning>
c0de9652:	2001      	movs	r0, #1
c0de9654:	2500      	movs	r5, #0
c0de9656:	4641      	mov	r1, r8
c0de9658:	e9cd e400 	strd	lr, r4, [sp]
c0de965c:	e9cd b702 	strd	fp, r7, [sp, #8]
c0de9660:	e9cd 5004 	strd	r5, r0, [sp, #16]
c0de9664:	4630      	mov	r0, r6
c0de9666:	f7ff feeb 	bl	c0de9440 <useCaseReview>
c0de966a:	b008      	add	sp, #32
c0de966c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de9670:	00000ab0 	.word	0x00000ab0

c0de9674 <displayPrelude>:
c0de9674:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de9678:	b09a      	sub	sp, #104	@ 0x68
c0de967a:	4929      	ldr	r1, [pc, #164]	@ (c0de9720 <displayPrelude+0xac>)
c0de967c:	2009      	movs	r0, #9
c0de967e:	f04f 0c00 	mov.w	ip, #0
c0de9682:	f10d 0828 	add.w	r8, sp, #40	@ 0x28
c0de9686:	f88d 004a 	strb.w	r0, [sp, #74]	@ 0x4a
c0de968a:	2019      	movs	r0, #25
c0de968c:	f8cd c044 	str.w	ip, [sp, #68]	@ 0x44
c0de9690:	eb09 0501 	add.w	r5, r9, r1
c0de9694:	f8ad 0048 	strh.w	r0, [sp, #72]	@ 0x48
c0de9698:	6fa9      	ldr	r1, [r5, #120]	@ 0x78
c0de969a:	6a89      	ldr	r1, [r1, #40]	@ 0x28
c0de969c:	e9d1 2103 	ldrd	r2, r1, [r1, #12]
c0de96a0:	e9cd 210f 	strd	r2, r1, [sp, #60]	@ 0x3c
c0de96a4:	4642      	mov	r2, r8
c0de96a6:	491f      	ldr	r1, [pc, #124]	@ (c0de9724 <displayPrelude+0xb0>)
c0de96a8:	4479      	add	r1, pc
c0de96aa:	e891 00d9 	ldmia.w	r1, {r0, r3, r4, r6, r7}
c0de96ae:	c2d9      	stmia	r2!, {r0, r3, r4, r6, r7}
c0de96b0:	2001      	movs	r0, #1
c0de96b2:	f885 0089 	strb.w	r0, [r5, #137]	@ 0x89
c0de96b6:	481c      	ldr	r0, [pc, #112]	@ (c0de9728 <displayPrelude+0xb4>)
c0de96b8:	f8cd c05c 	str.w	ip, [sp, #92]	@ 0x5c
c0de96bc:	f8cd c050 	str.w	ip, [sp, #80]	@ 0x50
c0de96c0:	4478      	add	r0, pc
c0de96c2:	9016      	str	r0, [sp, #88]	@ 0x58
c0de96c4:	f44f 7080 	mov.w	r0, #256	@ 0x100
c0de96c8:	f8ad 004c 	strh.w	r0, [sp, #76]	@ 0x4c
c0de96cc:	a813      	add	r0, sp, #76	@ 0x4c
c0de96ce:	f7fa fb4d 	bl	c0de3d6c <nbgl_layoutGet>
c0de96d2:	4641      	mov	r1, r8
c0de96d4:	f8c5 0080 	str.w	r0, [r5, #128]	@ 0x80
c0de96d8:	f7fd f89c 	bl	c0de6814 <nbgl_layoutAddHeader>
c0de96dc:	ac01      	add	r4, sp, #4
c0de96de:	2124      	movs	r1, #36	@ 0x24
c0de96e0:	4620      	mov	r0, r4
c0de96e2:	f002 f9b3 	bl	c0deba4c <__aeabi_memclr>
c0de96e6:	6fa9      	ldr	r1, [r5, #120]	@ 0x78
c0de96e8:	f8d5 0080 	ldr.w	r0, [r5, #128]	@ 0x80
c0de96ec:	6a89      	ldr	r1, [r1, #40]	@ 0x28
c0de96ee:	e9d1 2300 	ldrd	r2, r3, [r1]
c0de96f2:	6889      	ldr	r1, [r1, #8]
c0de96f4:	9107      	str	r1, [sp, #28]
c0de96f6:	4621      	mov	r1, r4
c0de96f8:	9202      	str	r2, [sp, #8]
c0de96fa:	9305      	str	r3, [sp, #20]
c0de96fc:	f7fc fc10 	bl	c0de5f20 <nbgl_layoutAddContentCenter>
c0de9700:	f8d5 0080 	ldr.w	r0, [r5, #128]	@ 0x80
c0de9704:	a90f      	add	r1, sp, #60	@ 0x3c
c0de9706:	f7fc fd79 	bl	c0de61fc <nbgl_layoutAddChoiceButtons>
c0de970a:	f001 f8fa 	bl	c0dea902 <OUTLINED_FUNCTION_5>
c0de970e:	f8d5 0080 	ldr.w	r0, [r5, #128]	@ 0x80
c0de9712:	f7fd fb9c 	bl	c0de6e4e <nbgl_layoutDraw>
c0de9716:	f001 fd3c 	bl	c0deb192 <nbgl_refresh>
c0de971a:	b01a      	add	sp, #104	@ 0x68
c0de971c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de9720:	00000ab0 	.word	0x00000ab0
c0de9724:	000051c0 	.word	0x000051c0
c0de9728:	fffffa49 	.word	0xfffffa49

c0de972c <displayInitialWarning>:
c0de972c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de972e:	b099      	sub	sp, #100	@ 0x64
c0de9730:	4857      	ldr	r0, [pc, #348]	@ (c0de9890 <displayInitialWarning+0x164>)
c0de9732:	a90e      	add	r1, sp, #56	@ 0x38
c0de9734:	4478      	add	r0, pc
c0de9736:	e890 003c 	ldmia.w	r0, {r2, r3, r4, r5}
c0de973a:	c13c      	stmia	r1!, {r2, r3, r4, r5}
c0de973c:	4855      	ldr	r0, [pc, #340]	@ (c0de9894 <displayInitialWarning+0x168>)
c0de973e:	ac09      	add	r4, sp, #36	@ 0x24
c0de9740:	4621      	mov	r1, r4
c0de9742:	4478      	add	r0, pc
c0de9744:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de9748:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de974a:	4d4f      	ldr	r5, [pc, #316]	@ (c0de9888 <displayInitialWarning+0x15c>)
c0de974c:	eb09 0705 	add.w	r7, r9, r5
c0de9750:	6fb8      	ldr	r0, [r7, #120]	@ 0x78
c0de9752:	6806      	ldr	r6, [r0, #0]
c0de9754:	2001      	movs	r0, #1
c0de9756:	f887 0089 	strb.w	r0, [r7, #137]	@ 0x89
c0de975a:	484f      	ldr	r0, [pc, #316]	@ (c0de9898 <displayInitialWarning+0x16c>)
c0de975c:	4478      	add	r0, pc
c0de975e:	9015      	str	r0, [sp, #84]	@ 0x54
c0de9760:	f44f 7080 	mov.w	r0, #256	@ 0x100
c0de9764:	f8ad 0048 	strh.w	r0, [sp, #72]	@ 0x48
c0de9768:	2000      	movs	r0, #0
c0de976a:	9016      	str	r0, [sp, #88]	@ 0x58
c0de976c:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de976e:	a812      	add	r0, sp, #72	@ 0x48
c0de9770:	f7fa fafc 	bl	c0de3d6c <nbgl_layoutGet>
c0de9774:	4621      	mov	r1, r4
c0de9776:	f8c7 0080 	str.w	r0, [r7, #128]	@ 0x80
c0de977a:	f7fd f84b 	bl	c0de6814 <nbgl_layoutAddHeader>
c0de977e:	6fb8      	ldr	r0, [r7, #120]	@ 0x78
c0de9780:	f026 0409 	bic.w	r4, r6, #9
c0de9784:	6801      	ldr	r1, [r0, #0]
c0de9786:	b139      	cbz	r1, c0de9798 <displayInitialWarning+0x6c>
c0de9788:	4844      	ldr	r0, [pc, #272]	@ (c0de989c <displayInitialWarning+0x170>)
c0de978a:	4945      	ldr	r1, [pc, #276]	@ (c0de98a0 <displayInitialWarning+0x174>)
c0de978c:	2c10      	cmp	r4, #16
c0de978e:	4479      	add	r1, pc
c0de9790:	4478      	add	r0, pc
c0de9792:	bf08      	it	eq
c0de9794:	4601      	moveq	r1, r0
c0de9796:	e001      	b.n	c0de979c <displayInitialWarning+0x70>
c0de9798:	6a01      	ldr	r1, [r0, #32]
c0de979a:	b139      	cbz	r1, c0de97ac <displayInitialWarning+0x80>
c0de979c:	eb09 0005 	add.w	r0, r9, r5
c0de97a0:	2211      	movs	r2, #17
c0de97a2:	2309      	movs	r3, #9
c0de97a4:	f8d0 0080 	ldr.w	r0, [r0, #128]	@ 0x80
c0de97a8:	f7fb f8a4 	bl	c0de48f4 <nbgl_layoutAddTopRightButton>
c0de97ac:	eb09 0005 	add.w	r0, r9, r5
c0de97b0:	6f87      	ldr	r7, [r0, #120]	@ 0x78
c0de97b2:	6838      	ldr	r0, [r7, #0]
c0de97b4:	b188      	cbz	r0, c0de97da <displayInitialWarning+0xae>
c0de97b6:	4668      	mov	r0, sp
c0de97b8:	2124      	movs	r1, #36	@ 0x24
c0de97ba:	f002 f947 	bl	c0deba4c <__aeabi_memclr>
c0de97be:	4839      	ldr	r0, [pc, #228]	@ (c0de98a4 <displayInitialWarning+0x178>)
c0de97c0:	2c10      	cmp	r4, #16
c0de97c2:	4478      	add	r0, pc
c0de97c4:	9001      	str	r0, [sp, #4]
c0de97c6:	d110      	bne.n	c0de97ea <displayInitialWarning+0xbe>
c0de97c8:	483f      	ldr	r0, [pc, #252]	@ (c0de98c8 <displayInitialWarning+0x19c>)
c0de97ca:	2405      	movs	r4, #5
c0de97cc:	4478      	add	r0, pc
c0de97ce:	9004      	str	r0, [sp, #16]
c0de97d0:	493e      	ldr	r1, [pc, #248]	@ (c0de98cc <displayInitialWarning+0x1a0>)
c0de97d2:	483f      	ldr	r0, [pc, #252]	@ (c0de98d0 <displayInitialWarning+0x1a4>)
c0de97d4:	4479      	add	r1, pc
c0de97d6:	4478      	add	r0, pc
c0de97d8:	e03c      	b.n	c0de9854 <displayInitialWarning+0x128>
c0de97da:	69f9      	ldr	r1, [r7, #28]
c0de97dc:	b349      	cbz	r1, c0de9832 <displayInitialWarning+0x106>
c0de97de:	f001 f8a4 	bl	c0dea92a <OUTLINED_FUNCTION_10>
c0de97e2:	f7fc fb9d 	bl	c0de5f20 <nbgl_layoutAddContentCenter>
c0de97e6:	2408      	movs	r4, #8
c0de97e8:	e03d      	b.n	c0de9866 <displayInitialWarning+0x13a>
c0de97ea:	4828      	ldr	r0, [pc, #160]	@ (c0de988c <displayInitialWarning+0x160>)
c0de97ec:	4448      	add	r0, r9
c0de97ee:	9005      	str	r0, [sp, #20]
c0de97f0:	68f9      	ldr	r1, [r7, #12]
c0de97f2:	4b2d      	ldr	r3, [pc, #180]	@ (c0de98a8 <displayInitialWarning+0x17c>)
c0de97f4:	447b      	add	r3, pc
c0de97f6:	2900      	cmp	r1, #0
c0de97f8:	bf18      	it	ne
c0de97fa:	460b      	movne	r3, r1
c0de97fc:	4a2b      	ldr	r2, [pc, #172]	@ (c0de98ac <displayInitialWarning+0x180>)
c0de97fe:	2180      	movs	r1, #128	@ 0x80
c0de9800:	447a      	add	r2, pc
c0de9802:	f001 fd51 	bl	c0deb2a8 <snprintf>
c0de9806:	07b0      	lsls	r0, r6, #30
c0de9808:	d403      	bmi.n	c0de9812 <displayInitialWarning+0xe6>
c0de980a:	0770      	lsls	r0, r6, #29
c0de980c:	d413      	bmi.n	c0de9836 <displayInitialWarning+0x10a>
c0de980e:	2400      	movs	r4, #0
c0de9810:	e022      	b.n	c0de9858 <displayInitialWarning+0x12c>
c0de9812:	4827      	ldr	r0, [pc, #156]	@ (c0de98b0 <displayInitialWarning+0x184>)
c0de9814:	4478      	add	r0, pc
c0de9816:	9004      	str	r0, [sp, #16]
c0de9818:	eb09 0005 	add.w	r0, r9, r5
c0de981c:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0de981e:	6901      	ldr	r1, [r0, #16]
c0de9820:	4824      	ldr	r0, [pc, #144]	@ (c0de98b4 <displayInitialWarning+0x188>)
c0de9822:	4478      	add	r0, pc
c0de9824:	2900      	cmp	r1, #0
c0de9826:	bf18      	it	ne
c0de9828:	4608      	movne	r0, r1
c0de982a:	4923      	ldr	r1, [pc, #140]	@ (c0de98b8 <displayInitialWarning+0x18c>)
c0de982c:	2405      	movs	r4, #5
c0de982e:	4479      	add	r1, pc
c0de9830:	e010      	b.n	c0de9854 <displayInitialWarning+0x128>
c0de9832:	2400      	movs	r4, #0
c0de9834:	e017      	b.n	c0de9866 <displayInitialWarning+0x13a>
c0de9836:	4821      	ldr	r0, [pc, #132]	@ (c0de98bc <displayInitialWarning+0x190>)
c0de9838:	4478      	add	r0, pc
c0de983a:	9004      	str	r0, [sp, #16]
c0de983c:	eb09 0005 	add.w	r0, r9, r5
c0de9840:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0de9842:	6901      	ldr	r1, [r0, #16]
c0de9844:	481e      	ldr	r0, [pc, #120]	@ (c0de98c0 <displayInitialWarning+0x194>)
c0de9846:	4478      	add	r0, pc
c0de9848:	2900      	cmp	r1, #0
c0de984a:	bf18      	it	ne
c0de984c:	4608      	movne	r0, r1
c0de984e:	491d      	ldr	r1, [pc, #116]	@ (c0de98c4 <displayInitialWarning+0x198>)
c0de9850:	2404      	movs	r4, #4
c0de9852:	4479      	add	r1, pc
c0de9854:	910f      	str	r1, [sp, #60]	@ 0x3c
c0de9856:	9006      	str	r0, [sp, #24]
c0de9858:	eb09 0005 	add.w	r0, r9, r5
c0de985c:	4669      	mov	r1, sp
c0de985e:	f8d0 0080 	ldr.w	r0, [r0, #128]	@ 0x80
c0de9862:	f7fc fb5d 	bl	c0de5f20 <nbgl_layoutAddContentCenter>
c0de9866:	f001 f860 	bl	c0dea92a <OUTLINED_FUNCTION_10>
c0de986a:	a90e      	add	r1, sp, #56	@ 0x38
c0de986c:	f7fc fcc6 	bl	c0de61fc <nbgl_layoutAddChoiceButtons>
c0de9870:	b114      	cbz	r4, c0de9878 <displayInitialWarning+0x14c>
c0de9872:	4620      	mov	r0, r4
c0de9874:	f7fa f873 	bl	c0de395e <os_io_seph_cmd_piezo_play_tune>
c0de9878:	f001 f857 	bl	c0dea92a <OUTLINED_FUNCTION_10>
c0de987c:	f7fd fae7 	bl	c0de6e4e <nbgl_layoutDraw>
c0de9880:	f001 fc87 	bl	c0deb192 <nbgl_refresh>
c0de9884:	b019      	add	sp, #100	@ 0x64
c0de9886:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de9888:	00000ab0 	.word	0x00000ab0
c0de988c:	00000be8 	.word	0x00000be8
c0de9890:	00005124 	.word	0x00005124
c0de9894:	00005126 	.word	0x00005126
c0de9898:	fffff9ad 	.word	0xfffff9ad
c0de989c:	000030b8 	.word	0x000030b8
c0de98a0:	00003403 	.word	0x00003403
c0de98a4:	00002d2f 	.word	0x00002d2f
c0de98a8:	00003b39 	.word	0x00003b39
c0de98ac:	00003e53 	.word	0x00003e53
c0de98b0:	00003eb1 	.word	0x00003eb1
c0de98b4:	000037a2 	.word	0x000037a2
c0de98b8:	00003b5c 	.word	0x00003b5c
c0de98bc:	00003b42 	.word	0x00003b42
c0de98c0:	00003b17 	.word	0x00003b17
c0de98c4:	000039f3 	.word	0x000039f3
c0de98c8:	00003ce8 	.word	0x00003ce8
c0de98cc:	00003f3e 	.word	0x00003f3e
c0de98d0:	00003bcd 	.word	0x00003bcd

c0de98d4 <useCaseReviewStreamingStart>:
c0de98d4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de98d8:	4604      	mov	r4, r0
c0de98da:	4827      	ldr	r0, [pc, #156]	@ (c0de9978 <useCaseReviewStreamingStart+0xa4>)
c0de98dc:	460d      	mov	r5, r1
c0de98de:	4927      	ldr	r1, [pc, #156]	@ (c0de997c <useCaseReviewStreamingStart+0xa8>)
c0de98e0:	e9cd 3200 	strd	r3, r2, [sp]
c0de98e4:	2203      	movs	r2, #3
c0de98e6:	f8df b09c 	ldr.w	fp, [pc, #156]	@ c0de9984 <useCaseReviewStreamingStart+0xb0>
c0de98ea:	f04f 0a01 	mov.w	sl, #1
c0de98ee:	eb09 0800 	add.w	r8, r9, r0
c0de98f2:	f849 4000 	str.w	r4, [r9, r0]
c0de98f6:	f809 2001 	strb.w	r2, [r9, r1]
c0de98fa:	eb09 0701 	add.w	r7, r9, r1
c0de98fe:	eb09 060b 	add.w	r6, r9, fp
c0de9902:	2138      	movs	r1, #56	@ 0x38
c0de9904:	f8c8 500c 	str.w	r5, [r8, #12]
c0de9908:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de990a:	f8c8 0004 	str.w	r0, [r8, #4]
c0de990e:	481e      	ldr	r0, [pc, #120]	@ (c0de9988 <useCaseReviewStreamingStart+0xb4>)
c0de9910:	4478      	add	r0, pc
c0de9912:	61b8      	str	r0, [r7, #24]
c0de9914:	2000      	movs	r0, #0
c0de9916:	6138      	str	r0, [r7, #16]
c0de9918:	4819      	ldr	r0, [pc, #100]	@ (c0de9980 <useCaseReviewStreamingStart+0xac>)
c0de991a:	4448      	add	r0, r9
c0de991c:	f880 a00c 	strb.w	sl, [r0, #12]
c0de9920:	6086      	str	r6, [r0, #8]
c0de9922:	f001 f820 	bl	c0dea966 <OUTLINED_FUNCTION_17>
c0de9926:	2100      	movs	r1, #0
c0de9928:	f809 a00b 	strb.w	sl, [r9, fp]
c0de992c:	84b1      	strh	r1, [r6, #36]	@ 0x24
c0de992e:	4817      	ldr	r0, [pc, #92]	@ (c0de998c <useCaseReviewStreamingStart+0xb8>)
c0de9930:	9a00      	ldr	r2, [sp, #0]
c0de9932:	60b5      	str	r5, [r6, #8]
c0de9934:	7131      	strb	r1, [r6, #4]
c0de9936:	2500      	movs	r5, #0
c0de9938:	4478      	add	r0, pc
c0de993a:	e9c6 2007 	strd	r2, r0, [r6, #28]
c0de993e:	9801      	ldr	r0, [sp, #4]
c0de9940:	6170      	str	r0, [r6, #20]
c0de9942:	2000      	movs	r0, #0
c0de9944:	f000 ff32 	bl	c0dea7ac <initWarningTipBox>
c0de9948:	f3c4 1000 	ubfx	r0, r4, #4, #1
c0de994c:	f7fe fe06 	bl	c0de855c <getNbPagesForGenericContents>
c0de9950:	f888 0010 	strb.w	r0, [r8, #16]
c0de9954:	2001      	movs	r0, #1
c0de9956:	21ff      	movs	r1, #255	@ 0xff
c0de9958:	4a0d      	ldr	r2, [pc, #52]	@ (c0de9990 <useCaseReviewStreamingStart+0xbc>)
c0de995a:	447a      	add	r2, pc
c0de995c:	f7fe fd36 	bl	c0de83cc <prepareNavInfo>
c0de9960:	f887 5071 	strb.w	r5, [r7, #113]	@ 0x71
c0de9964:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de9966:	b108      	cbz	r0, c0de996c <useCaseReviewStreamingStart+0x98>
c0de9968:	f000 ffcb 	bl	c0dea902 <OUTLINED_FUNCTION_5>
c0de996c:	2000      	movs	r0, #0
c0de996e:	2101      	movs	r1, #1
c0de9970:	e8bd 4dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9974:	f7fe beac 	b.w	c0de86d0 <displayGenericContextPage>
c0de9978:	00000de4 	.word	0x00000de4
c0de997c:	00000d68 	.word	0x00000d68
c0de9980:	00000ab0 	.word	0x00000ab0
c0de9984:	00000b40 	.word	0x00000b40
c0de9988:	00000081 	.word	0x00000081
c0de998c:	00003df3 	.word	0x00003df3
c0de9990:	0000356e 	.word	0x0000356e

c0de9994 <bundleNavReviewStreamingChoice>:
c0de9994:	b110      	cbz	r0, c0de999c <bundleNavReviewStreamingChoice+0x8>
c0de9996:	4805      	ldr	r0, [pc, #20]	@ (c0de99ac <bundleNavReviewStreamingChoice+0x18>)
c0de9998:	f000 bfd7 	b.w	c0dea94a <OUTLINED_FUNCTION_13>
c0de999c:	4803      	ldr	r0, [pc, #12]	@ (c0de99ac <bundleNavReviewStreamingChoice+0x18>)
c0de999e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de99a2:	4903      	ldr	r1, [pc, #12]	@ (c0de99b0 <bundleNavReviewStreamingChoice+0x1c>)
c0de99a4:	4479      	add	r1, pc
c0de99a6:	f000 bf5f 	b.w	c0dea868 <bundleNavReviewAskRejectionConfirmation>
c0de99aa:	bf00      	nop
c0de99ac:	00000de4 	.word	0x00000de4
c0de99b0:	00000f21 	.word	0x00000f21

c0de99b4 <prepareReviewLastPage>:
c0de99b4:	b13b      	cbz	r3, c0de99c6 <prepareReviewLastPage+0x12>
c0de99b6:	200b      	movs	r0, #11
c0de99b8:	7308      	strb	r0, [r1, #12]
c0de99ba:	480d      	ldr	r0, [pc, #52]	@ (c0de99f0 <prepareReviewLastPage+0x3c>)
c0de99bc:	e9c1 3200 	strd	r3, r2, [r1]
c0de99c0:	4478      	add	r0, pc
c0de99c2:	6088      	str	r0, [r1, #8]
c0de99c4:	4770      	bx	lr
c0de99c6:	f010 0007 	ands.w	r0, r0, #7
c0de99ca:	d004      	beq.n	c0de99d6 <prepareReviewLastPage+0x22>
c0de99cc:	2801      	cmp	r0, #1
c0de99ce:	d105      	bne.n	c0de99dc <prepareReviewLastPage+0x28>
c0de99d0:	4b05      	ldr	r3, [pc, #20]	@ (c0de99e8 <prepareReviewLastPage+0x34>)
c0de99d2:	447b      	add	r3, pc
c0de99d4:	e7ef      	b.n	c0de99b6 <prepareReviewLastPage+0x2>
c0de99d6:	4b03      	ldr	r3, [pc, #12]	@ (c0de99e4 <prepareReviewLastPage+0x30>)
c0de99d8:	447b      	add	r3, pc
c0de99da:	e7ec      	b.n	c0de99b6 <prepareReviewLastPage+0x2>
c0de99dc:	4b03      	ldr	r3, [pc, #12]	@ (c0de99ec <prepareReviewLastPage+0x38>)
c0de99de:	447b      	add	r3, pc
c0de99e0:	e7e9      	b.n	c0de99b6 <prepareReviewLastPage+0x2>
c0de99e2:	bf00      	nop
c0de99e4:	00003795 	.word	0x00003795
c0de99e8:	0000376a 	.word	0x0000376a
c0de99ec:	00003c4d 	.word	0x00003c4d
c0de99f0:	000034e8 	.word	0x000034e8

c0de99f4 <prepareAddressConfirmationPages>:
c0de99f4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de99f8:	b08a      	sub	sp, #40	@ 0x28
c0de99fa:	4688      	mov	r8, r1
c0de99fc:	4952      	ldr	r1, [pc, #328]	@ (c0de9b48 <prepareAddressConfirmationPages+0x154>)
c0de99fe:	f8df a144 	ldr.w	sl, [pc, #324]	@ c0de9b44 <prepareAddressConfirmationPages+0x150>
c0de9a02:	4693      	mov	fp, r2
c0de9a04:	4479      	add	r1, pc
c0de9a06:	6191      	str	r1, [r2, #24]
c0de9a08:	2106      	movs	r1, #6
c0de9a0a:	7011      	strb	r1, [r2, #0]
c0de9a0c:	2201      	movs	r2, #1
c0de9a0e:	eb09 010a 	add.w	r1, r9, sl
c0de9a12:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de9a16:	f1b8 0f00 	cmp.w	r8, #0
c0de9a1a:	4a4c      	ldr	r2, [pc, #304]	@ (c0de9b4c <prepareAddressConfirmationPages+0x158>)
c0de9a1c:	447a      	add	r2, pc
c0de9a1e:	e9c1 200a 	strd	r2, r0, [r1, #40]	@ 0x28
c0de9a22:	d01f      	beq.n	c0de9a64 <prepareAddressConfirmationPages+0x70>
c0de9a24:	f898 2008 	ldrb.w	r2, [r8, #8]
c0de9a28:	2a02      	cmp	r2, #2
c0de9a2a:	d81b      	bhi.n	c0de9a64 <prepareAddressConfirmationPages+0x70>
c0de9a2c:	2001      	movs	r0, #1
c0de9a2e:	2100      	movs	r1, #0
c0de9a30:	f04f 0c00 	mov.w	ip, #0
c0de9a34:	9303      	str	r3, [sp, #12]
c0de9a36:	4594      	cmp	ip, r2
c0de9a38:	d219      	bcs.n	c0de9a6e <prepareAddressConfirmationPages+0x7a>
c0de9a3a:	f8d8 0000 	ldr.w	r0, [r8]
c0de9a3e:	eb09 030a 	add.w	r3, r9, sl
c0de9a42:	f10c 0c01 	add.w	ip, ip, #1
c0de9a46:	185c      	adds	r4, r3, r1
c0de9a48:	4408      	add	r0, r1
c0de9a4a:	3438      	adds	r4, #56	@ 0x38
c0de9a4c:	3110      	adds	r1, #16
c0de9a4e:	e890 00e4 	ldmia.w	r0, {r2, r5, r6, r7}
c0de9a52:	c4e4      	stmia	r4!, {r2, r5, r6, r7}
c0de9a54:	f893 005c 	ldrb.w	r0, [r3, #92]	@ 0x5c
c0de9a58:	3001      	adds	r0, #1
c0de9a5a:	f883 005c 	strb.w	r0, [r3, #92]	@ 0x5c
c0de9a5e:	f898 2008 	ldrb.w	r2, [r8, #8]
c0de9a62:	e7e8      	b.n	c0de9a36 <prepareAddressConfirmationPages+0x42>
c0de9a64:	2000      	movs	r0, #0
c0de9a66:	f8cb 001c 	str.w	r0, [fp, #28]
c0de9a6a:	2001      	movs	r0, #1
c0de9a6c:	e01e      	b.n	c0de9aac <prepareAddressConfirmationPages+0xb8>
c0de9a6e:	46c4      	mov	ip, r8
c0de9a70:	a905      	add	r1, sp, #20
c0de9a72:	e89c 00f4 	ldmia.w	ip, {r2, r4, r5, r6, r7}
c0de9a76:	460b      	mov	r3, r1
c0de9a78:	c3f4      	stmia	r3!, {r2, r4, r5, r6, r7}
c0de9a7a:	eb09 040a 	add.w	r4, r9, sl
c0de9a7e:	b2c7      	uxtb	r7, r0
c0de9a80:	f88d 001c 	strb.w	r0, [sp, #28]
c0de9a84:	f104 0228 	add.w	r2, r4, #40	@ 0x28
c0de9a88:	2301      	movs	r3, #1
c0de9a8a:	4638      	mov	r0, r7
c0de9a8c:	9205      	str	r2, [sp, #20]
c0de9a8e:	f10d 0213 	add.w	r2, sp, #19
c0de9a92:	e9cd 3300 	strd	r3, r3, [sp]
c0de9a96:	2300      	movs	r3, #0
c0de9a98:	9202      	str	r2, [sp, #8]
c0de9a9a:	2200      	movs	r2, #0
c0de9a9c:	f7fe fa9c 	bl	c0de7fd8 <getNbTagValuesInPage>
c0de9aa0:	4287      	cmp	r7, r0
c0de9aa2:	bf88      	it	hi
c0de9aa4:	2001      	movhi	r0, #1
c0de9aa6:	9b03      	ldr	r3, [sp, #12]
c0de9aa8:	f884 005c 	strb.w	r0, [r4, #92]	@ 0x5c
c0de9aac:	f640 1107 	movw	r1, #2311	@ 0x907
c0de9ab0:	f88b 000c 	strb.w	r0, [fp, #12]
c0de9ab4:	f8ab 1020 	strh.w	r1, [fp, #32]
c0de9ab8:	2100      	movs	r1, #0
c0de9aba:	f88b 1011 	strb.w	r1, [fp, #17]
c0de9abe:	f88b 1012 	strb.w	r1, [fp, #18]
c0de9ac2:	f88b 100f 	strb.w	r1, [fp, #15]
c0de9ac6:	eb09 010a 	add.w	r1, r9, sl
c0de9aca:	3128      	adds	r1, #40	@ 0x28
c0de9acc:	f1b8 0f00 	cmp.w	r8, #0
c0de9ad0:	f8cb 1004 	str.w	r1, [fp, #4]
c0de9ad4:	d003      	beq.n	c0de9ade <prepareAddressConfirmationPages+0xea>
c0de9ad6:	f898 1008 	ldrb.w	r1, [r8, #8]
c0de9ada:	4288      	cmp	r0, r1
c0de9adc:	d907      	bls.n	c0de9aee <prepareAddressConfirmationPages+0xfa>
c0de9ade:	200b      	movs	r0, #11
c0de9ae0:	f88b 002c 	strb.w	r0, [fp, #44]	@ 0x2c
c0de9ae4:	481c      	ldr	r0, [pc, #112]	@ (c0de9b58 <prepareAddressConfirmationPages+0x164>)
c0de9ae6:	4478      	add	r0, pc
c0de9ae8:	f8cb 0024 	str.w	r0, [fp, #36]	@ 0x24
c0de9aec:	e027      	b.n	c0de9b3e <prepareAddressConfirmationPages+0x14a>
c0de9aee:	2000      	movs	r0, #0
c0de9af0:	f8cb 0024 	str.w	r0, [fp, #36]	@ 0x24
c0de9af4:	4916      	ldr	r1, [pc, #88]	@ (c0de9b50 <prepareAddressConfirmationPages+0x15c>)
c0de9af6:	4479      	add	r1, pc
c0de9af8:	f8cb 101c 	str.w	r1, [fp, #28]
c0de9afc:	210b      	movs	r1, #11
c0de9afe:	f883 102c 	strb.w	r1, [r3, #44]	@ 0x2c
c0de9b02:	2106      	movs	r1, #6
c0de9b04:	7019      	strb	r1, [r3, #0]
c0de9b06:	2109      	movs	r1, #9
c0de9b08:	f883 1021 	strb.w	r1, [r3, #33]	@ 0x21
c0de9b0c:	4911      	ldr	r1, [pc, #68]	@ (c0de9b54 <prepareAddressConfirmationPages+0x160>)
c0de9b0e:	e9c3 0006 	strd	r0, r0, [r3, #24]
c0de9b12:	1d18      	adds	r0, r3, #4
c0de9b14:	4479      	add	r1, pc
c0de9b16:	6259      	str	r1, [r3, #36]	@ 0x24
c0de9b18:	4641      	mov	r1, r8
c0de9b1a:	e891 00f4 	ldmia.w	r1, {r2, r4, r5, r6, r7}
c0de9b1e:	c0f4      	stmia	r0!, {r2, r4, r5, r6, r7}
c0de9b20:	eb09 000a 	add.w	r0, r9, sl
c0de9b24:	f898 1008 	ldrb.w	r1, [r8, #8]
c0de9b28:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de9b2c:	1a09      	subs	r1, r1, r0
c0de9b2e:	3101      	adds	r1, #1
c0de9b30:	7319      	strb	r1, [r3, #12]
c0de9b32:	f8d8 1000 	ldr.w	r1, [r8]
c0de9b36:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de9b3a:	3810      	subs	r0, #16
c0de9b3c:	6058      	str	r0, [r3, #4]
c0de9b3e:	b00a      	add	sp, #40	@ 0x28
c0de9b40:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de9b44:	00000de4 	.word	0x00000de4
c0de9b48:	0000318d 	.word	0x0000318d
c0de9b4c:	00003b8e 	.word	0x00003b8e
c0de9b50:	000034e0 	.word	0x000034e0
c0de9b54:	00003caf 	.word	0x00003caf
c0de9b58:	00003cdd 	.word	0x00003cdd

c0de9b5c <nbgl_useCaseAddressReview>:
c0de9b5c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9b60:	4c2d      	ldr	r4, [pc, #180]	@ (c0de9c18 <nbgl_useCaseAddressReview+0xbc>)
c0de9b62:	9301      	str	r3, [sp, #4]
c0de9b64:	4692      	mov	sl, r2
c0de9b66:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de9b6a:	eb09 0504 	add.w	r5, r9, r4
c0de9b6e:	f7fe fc17 	bl	c0de83a0 <reset_callbacks_and_context>
c0de9b72:	6da8      	ldr	r0, [r5, #88]	@ 0x58
c0de9b74:	e9dd 570c 	ldrd	r5, r7, [sp, #48]	@ 0x30
c0de9b78:	b108      	cbz	r0, c0de9b7e <nbgl_useCaseAddressReview+0x22>
c0de9b7a:	f7fd f987 	bl	c0de6e8c <nbgl_layoutRelease>
c0de9b7e:	eb09 0004 	add.w	r0, r9, r4
c0de9b82:	2138      	movs	r1, #56	@ 0x38
c0de9b84:	3028      	adds	r0, #40	@ 0x28
c0de9b86:	f001 ff61 	bl	c0deba4c <__aeabi_memclr>
c0de9b8a:	4824      	ldr	r0, [pc, #144]	@ (c0de9c1c <nbgl_useCaseAddressReview+0xc0>)
c0de9b8c:	2602      	movs	r6, #2
c0de9b8e:	f04f 0b00 	mov.w	fp, #0
c0de9b92:	21a8      	movs	r1, #168	@ 0xa8
c0de9b94:	f849 6004 	str.w	r6, [r9, r4]
c0de9b98:	f809 6000 	strb.w	r6, [r9, r0]
c0de9b9c:	4448      	add	r0, r9
c0de9b9e:	6187      	str	r7, [r0, #24]
c0de9ba0:	4f20      	ldr	r7, [pc, #128]	@ (c0de9c24 <nbgl_useCaseAddressReview+0xc8>)
c0de9ba2:	f8c0 b010 	str.w	fp, [r0, #16]
c0de9ba6:	481e      	ldr	r0, [pc, #120]	@ (c0de9c20 <nbgl_useCaseAddressReview+0xc4>)
c0de9ba8:	eb09 0407 	add.w	r4, r9, r7
c0de9bac:	eb09 0800 	add.w	r8, r9, r0
c0de9bb0:	4620      	mov	r0, r4
c0de9bb2:	f8c8 4008 	str.w	r4, [r8, #8]
c0de9bb6:	f001 ff49 	bl	c0deba4c <__aeabi_memclr>
c0de9bba:	2001      	movs	r0, #1
c0de9bbc:	f8c4 a008 	str.w	sl, [r4, #8]
c0de9bc0:	f884 b026 	strb.w	fp, [r4, #38]	@ 0x26
c0de9bc4:	f104 0238 	add.w	r2, r4, #56	@ 0x38
c0de9bc8:	f104 0370 	add.w	r3, r4, #112	@ 0x70
c0de9bcc:	f809 0007 	strb.w	r0, [r9, r7]
c0de9bd0:	4815      	ldr	r0, [pc, #84]	@ (c0de9c28 <nbgl_useCaseAddressReview+0xcc>)
c0de9bd2:	9901      	ldr	r1, [sp, #4]
c0de9bd4:	4478      	add	r0, pc
c0de9bd6:	e9c4 1b05 	strd	r1, fp, [r4, #20]
c0de9bda:	e9c4 5007 	strd	r5, r0, [r4, #28]
c0de9bde:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de9be2:	f7ff ff07 	bl	c0de99f4 <prepareAddressConfirmationPages>
c0de9be6:	f894 0070 	ldrb.w	r0, [r4, #112]	@ 0x70
c0de9bea:	2806      	cmp	r0, #6
c0de9bec:	bf08      	it	eq
c0de9bee:	2603      	moveq	r6, #3
c0de9bf0:	f888 600c 	strb.w	r6, [r8, #12]
c0de9bf4:	f000 fe82 	bl	c0dea8fc <OUTLINED_FUNCTION_4>
c0de9bf8:	4a0c      	ldr	r2, [pc, #48]	@ (c0de9c2c <nbgl_useCaseAddressReview+0xd0>)
c0de9bfa:	4601      	mov	r1, r0
c0de9bfc:	2001      	movs	r0, #1
c0de9bfe:	447a      	add	r2, pc
c0de9c00:	f7fe fbe4 	bl	c0de83cc <prepareNavInfo>
c0de9c04:	f000 fe7d 	bl	c0dea902 <OUTLINED_FUNCTION_5>
c0de9c08:	2000      	movs	r0, #0
c0de9c0a:	2101      	movs	r1, #1
c0de9c0c:	b004      	add	sp, #16
c0de9c0e:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9c12:	f7fe bd5d 	b.w	c0de86d0 <displayGenericContextPage>
c0de9c16:	bf00      	nop
c0de9c18:	00000de4 	.word	0x00000de4
c0de9c1c:	00000d68 	.word	0x00000d68
c0de9c20:	00000ab0 	.word	0x00000ab0
c0de9c24:	00000b40 	.word	0x00000b40
c0de9c28:	0000346a 	.word	0x0000346a
c0de9c2c:	000036c1 	.word	0x000036c1

c0de9c30 <getContentAtIdx>:
c0de9c30:	b570      	push	{r4, r5, r6, lr}
c0de9c32:	4605      	mov	r5, r0
c0de9c34:	2000      	movs	r0, #0
c0de9c36:	2d00      	cmp	r5, #0
c0de9c38:	d415      	bmi.n	c0de9c66 <getContentAtIdx+0x36>
c0de9c3a:	4e11      	ldr	r6, [pc, #68]	@ (c0de9c80 <getContentAtIdx+0x50>)
c0de9c3c:	460c      	mov	r4, r1
c0de9c3e:	eb09 0106 	add.w	r1, r9, r6
c0de9c42:	7b09      	ldrb	r1, [r1, #12]
c0de9c44:	428d      	cmp	r5, r1
c0de9c46:	da0e      	bge.n	c0de9c66 <getContentAtIdx+0x36>
c0de9c48:	eb09 0006 	add.w	r0, r9, r6
c0de9c4c:	7900      	ldrb	r0, [r0, #4]
c0de9c4e:	b158      	cbz	r0, c0de9c68 <getContentAtIdx+0x38>
c0de9c50:	4620      	mov	r0, r4
c0de9c52:	2138      	movs	r1, #56	@ 0x38
c0de9c54:	f001 fefa 	bl	c0deba4c <__aeabi_memclr>
c0de9c58:	eb09 0006 	add.w	r0, r9, r6
c0de9c5c:	4621      	mov	r1, r4
c0de9c5e:	6882      	ldr	r2, [r0, #8]
c0de9c60:	b2e8      	uxtb	r0, r5
c0de9c62:	4790      	blx	r2
c0de9c64:	4620      	mov	r0, r4
c0de9c66:	bd70      	pop	{r4, r5, r6, pc}
c0de9c68:	eb09 0006 	add.w	r0, r9, r6
c0de9c6c:	ebc5 01c5 	rsb	r1, r5, r5, lsl #3
c0de9c70:	6880      	ldr	r0, [r0, #8]
c0de9c72:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de9c76:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de9c7a:	f001 bca7 	b.w	c0deb5cc <pic>
c0de9c7e:	bf00      	nop
c0de9c80:	00000ab0 	.word	0x00000ab0

c0de9c84 <getContentNbElement>:
c0de9c84:	7801      	ldrb	r1, [r0, #0]
c0de9c86:	290a      	cmp	r1, #10
c0de9c88:	d00b      	beq.n	c0de9ca2 <getContentNbElement+0x1e>
c0de9c8a:	2906      	cmp	r1, #6
c0de9c8c:	d009      	beq.n	c0de9ca2 <getContentNbElement+0x1e>
c0de9c8e:	2907      	cmp	r1, #7
c0de9c90:	d009      	beq.n	c0de9ca6 <getContentNbElement+0x22>
c0de9c92:	2908      	cmp	r1, #8
c0de9c94:	d009      	beq.n	c0de9caa <getContentNbElement+0x26>
c0de9c96:	2909      	cmp	r1, #9
c0de9c98:	d009      	beq.n	c0de9cae <getContentNbElement+0x2a>
c0de9c9a:	2904      	cmp	r1, #4
c0de9c9c:	bf1c      	itt	ne
c0de9c9e:	2001      	movne	r0, #1
c0de9ca0:	4770      	bxne	lr
c0de9ca2:	7b00      	ldrb	r0, [r0, #12]
c0de9ca4:	4770      	bx	lr
c0de9ca6:	7a00      	ldrb	r0, [r0, #8]
c0de9ca8:	4770      	bx	lr
c0de9caa:	7c00      	ldrb	r0, [r0, #16]
c0de9cac:	4770      	bx	lr
c0de9cae:	7a40      	ldrb	r0, [r0, #9]
c0de9cb0:	4770      	bx	lr
	...

c0de9cb4 <genericContextComputeNextPageParams>:
c0de9cb4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9cb8:	f8df 810c 	ldr.w	r8, [pc, #268]	@ c0de9dc8 <genericContextComputeNextPageParams+0x114>
c0de9cbc:	4682      	mov	sl, r0
c0de9cbe:	4616      	mov	r6, r2
c0de9cc0:	460d      	mov	r5, r1
c0de9cc2:	f10d 0107 	add.w	r1, sp, #7
c0de9cc6:	461a      	mov	r2, r3
c0de9cc8:	eb09 0008 	add.w	r0, r9, r8
c0de9ccc:	7c04      	ldrb	r4, [r0, #16]
c0de9cce:	7c87      	ldrb	r7, [r0, #18]
c0de9cd0:	4650      	mov	r0, sl
c0de9cd2:	f000 f881 	bl	c0de9dd8 <genericContextGetPageInfo>
c0de9cd6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de9cda:	f8df b0f0 	ldr.w	fp, [pc, #240]	@ c0de9dcc <genericContextComputeNextPageParams+0x118>
c0de9cde:	7030      	strb	r0, [r6, #0]
c0de9ce0:	eb09 010b 	add.w	r1, r9, fp
c0de9ce4:	f891 1060 	ldrb.w	r1, [r1, #96]	@ 0x60
c0de9ce8:	4551      	cmp	r1, sl
c0de9cea:	d219      	bcs.n	c0de9d20 <genericContextComputeNextPageParams+0x6c>
c0de9cec:	4b38      	ldr	r3, [pc, #224]	@ (c0de9dd0 <genericContextComputeNextPageParams+0x11c>)
c0de9cee:	084e      	lsrs	r6, r1, #1
c0de9cf0:	2204      	movs	r2, #4
c0de9cf2:	ea02 0281 	and.w	r2, r2, r1, lsl #2
c0de9cf6:	444b      	add	r3, r9
c0de9cf8:	5d9b      	ldrb	r3, [r3, r6]
c0de9cfa:	fa23 f202 	lsr.w	r2, r3, r2
c0de9cfe:	2300      	movs	r3, #0
c0de9d00:	f002 0207 	and.w	r2, r2, #7
c0de9d04:	4417      	add	r7, r2
c0de9d06:	eb09 0208 	add.w	r2, r9, r8
c0de9d0a:	7c52      	ldrb	r2, [r2, #17]
c0de9d0c:	4297      	cmp	r7, r2
c0de9d0e:	bf28      	it	cs
c0de9d10:	2301      	movcs	r3, #1
c0de9d12:	2a00      	cmp	r2, #0
c0de9d14:	bf18      	it	ne
c0de9d16:	2201      	movne	r2, #1
c0de9d18:	401a      	ands	r2, r3
c0de9d1a:	bf18      	it	ne
c0de9d1c:	2700      	movne	r7, #0
c0de9d1e:	4414      	add	r4, r2
c0de9d20:	4551      	cmp	r1, sl
c0de9d22:	d905      	bls.n	c0de9d30 <genericContextComputeNextPageParams+0x7c>
c0de9d24:	1a3f      	subs	r7, r7, r0
c0de9d26:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de9d2a:	bfdc      	itt	le
c0de9d2c:	4247      	negle	r7, r0
c0de9d2e:	3c01      	suble	r4, #1
c0de9d30:	b2e6      	uxtb	r6, r4
c0de9d32:	2eff      	cmp	r6, #255	@ 0xff
c0de9d34:	d014      	beq.n	c0de9d60 <genericContextComputeNextPageParams+0xac>
c0de9d36:	eb09 0108 	add.w	r1, r9, r8
c0de9d3a:	b260      	sxtb	r0, r4
c0de9d3c:	7b09      	ldrb	r1, [r1, #12]
c0de9d3e:	4288      	cmp	r0, r1
c0de9d40:	d108      	bne.n	c0de9d54 <genericContextComputeNextPageParams+0xa0>
c0de9d42:	eb09 0108 	add.w	r1, r9, r8
c0de9d46:	7d09      	ldrb	r1, [r1, #20]
c0de9d48:	b121      	cbz	r1, c0de9d54 <genericContextComputeNextPageParams+0xa0>
c0de9d4a:	4822      	ldr	r0, [pc, #136]	@ (c0de9dd4 <genericContextComputeNextPageParams+0x120>)
c0de9d4c:	4448      	add	r0, r9
c0de9d4e:	f100 0538 	add.w	r5, r0, #56	@ 0x38
c0de9d52:	e00d      	b.n	c0de9d70 <genericContextComputeNextPageParams+0xbc>
c0de9d54:	4629      	mov	r1, r5
c0de9d56:	f7ff ff6b 	bl	c0de9c30 <getContentAtIdx>
c0de9d5a:	4605      	mov	r5, r0
c0de9d5c:	b940      	cbnz	r0, c0de9d70 <genericContextComputeNextPageParams+0xbc>
c0de9d5e:	e02e      	b.n	c0de9dbe <genericContextComputeNextPageParams+0x10a>
c0de9d60:	eb09 0008 	add.w	r0, r9, r8
c0de9d64:	7cc0      	ldrb	r0, [r0, #19]
c0de9d66:	2800      	cmp	r0, #0
c0de9d68:	d0e5      	beq.n	c0de9d36 <genericContextComputeNextPageParams+0x82>
c0de9d6a:	481a      	ldr	r0, [pc, #104]	@ (c0de9dd4 <genericContextComputeNextPageParams+0x120>)
c0de9d6c:	eb09 0500 	add.w	r5, r9, r0
c0de9d70:	eb09 0008 	add.w	r0, r9, r8
c0de9d74:	7c00      	ldrb	r0, [r0, #16]
c0de9d76:	4286      	cmp	r6, r0
c0de9d78:	d103      	bne.n	c0de9d82 <genericContextComputeNextPageParams+0xce>
c0de9d7a:	eb09 0008 	add.w	r0, r9, r8
c0de9d7e:	7c40      	ldrb	r0, [r0, #17]
c0de9d80:	b988      	cbnz	r0, c0de9da6 <genericContextComputeNextPageParams+0xf2>
c0de9d82:	eb09 0608 	add.w	r6, r9, r8
c0de9d86:	4628      	mov	r0, r5
c0de9d88:	7434      	strb	r4, [r6, #16]
c0de9d8a:	f7ff ff7b 	bl	c0de9c84 <getContentNbElement>
c0de9d8e:	7470      	strb	r0, [r6, #17]
c0de9d90:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de9d92:	eb09 040b 	add.w	r4, r9, fp
c0de9d96:	f001 fc19 	bl	c0deb5cc <pic>
c0de9d9a:	62e0      	str	r0, [r4, #44]	@ 0x2c
c0de9d9c:	7c70      	ldrb	r0, [r6, #17]
c0de9d9e:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de9da2:	dc02      	bgt.n	c0de9daa <genericContextComputeNextPageParams+0xf6>
c0de9da4:	4407      	add	r7, r0
c0de9da6:	2f00      	cmp	r7, #0
c0de9da8:	d409      	bmi.n	c0de9dbe <genericContextComputeNextPageParams+0x10a>
c0de9daa:	4287      	cmp	r7, r0
c0de9dac:	d207      	bcs.n	c0de9dbe <genericContextComputeNextPageParams+0x10a>
c0de9dae:	eb09 000b 	add.w	r0, r9, fp
c0de9db2:	f880 a060 	strb.w	sl, [r0, #96]	@ 0x60
c0de9db6:	eb09 0008 	add.w	r0, r9, r8
c0de9dba:	7487      	strb	r7, [r0, #18]
c0de9dbc:	e000      	b.n	c0de9dc0 <genericContextComputeNextPageParams+0x10c>
c0de9dbe:	2500      	movs	r5, #0
c0de9dc0:	4628      	mov	r0, r5
c0de9dc2:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de9dc6:	bf00      	nop
c0de9dc8:	00000ab0 	.word	0x00000ab0
c0de9dcc:	00000d68 	.word	0x00000d68
c0de9dd0:	00000c68 	.word	0x00000c68
c0de9dd4:	00000b40 	.word	0x00000b40

c0de9dd8 <genericContextGetPageInfo>:
c0de9dd8:	b510      	push	{r4, lr}
c0de9dda:	4c08      	ldr	r4, [pc, #32]	@ (c0de9dfc <genericContextGetPageInfo+0x24>)
c0de9ddc:	2304      	movs	r3, #4
c0de9dde:	ea03 0380 	and.w	r3, r3, r0, lsl #2
c0de9de2:	0840      	lsrs	r0, r0, #1
c0de9de4:	444c      	add	r4, r9
c0de9de6:	5c20      	ldrb	r0, [r4, r0]
c0de9de8:	40d8      	lsrs	r0, r3
c0de9dea:	b111      	cbz	r1, c0de9df2 <genericContextGetPageInfo+0x1a>
c0de9dec:	f000 0307 	and.w	r3, r0, #7
c0de9df0:	700b      	strb	r3, [r1, #0]
c0de9df2:	b112      	cbz	r2, c0de9dfa <genericContextGetPageInfo+0x22>
c0de9df4:	f3c0 00c0 	ubfx	r0, r0, #3, #1
c0de9df8:	7010      	strb	r0, [r2, #0]
c0de9dfa:	bd10      	pop	{r4, pc}
c0de9dfc:	00000c68 	.word	0x00000c68

c0de9e00 <bundleNavStartSettings>:
c0de9e00:	2000      	movs	r0, #0
c0de9e02:	f7fe bea1 	b.w	c0de8b48 <bundleNavStartSettingsAtPage>
	...

c0de9e08 <displayFullValuePage>:
c0de9e08:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9e0c:	b092      	sub	sp, #72	@ 0x48
c0de9e0e:	460d      	mov	r5, r1
c0de9e10:	68d1      	ldr	r1, [r2, #12]
c0de9e12:	4614      	mov	r4, r2
c0de9e14:	b101      	cbz	r1, c0de9e18 <displayFullValuePage+0x10>
c0de9e16:	4608      	mov	r0, r1
c0de9e18:	f001 fbd8 	bl	c0deb5cc <pic>
c0de9e1c:	4606      	mov	r6, r0
c0de9e1e:	7d20      	ldrb	r0, [r4, #20]
c0de9e20:	2805      	cmp	r0, #5
c0de9e22:	d00d      	beq.n	c0de9e40 <displayFullValuePage+0x38>
c0de9e24:	2804      	cmp	r0, #4
c0de9e26:	d170      	bne.n	c0de9f0a <displayFullValuePage+0x102>
c0de9e28:	4861      	ldr	r0, [pc, #388]	@ (c0de9fb0 <displayFullValuePage+0x1a8>)
c0de9e2a:	6921      	ldr	r1, [r4, #16]
c0de9e2c:	2201      	movs	r2, #1
c0de9e2e:	4448      	add	r0, r9
c0de9e30:	6341      	str	r1, [r0, #52]	@ 0x34
c0de9e32:	4630      	mov	r0, r6
c0de9e34:	6921      	ldr	r1, [r4, #16]
c0de9e36:	b012      	add	sp, #72	@ 0x48
c0de9e38:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9e3c:	f000 b9dc 	b.w	c0dea1f8 <displayInfosListModal>
c0de9e40:	485b      	ldr	r0, [pc, #364]	@ (c0de9fb0 <displayFullValuePage+0x1a8>)
c0de9e42:	6921      	ldr	r1, [r4, #16]
c0de9e44:	2200      	movs	r2, #0
c0de9e46:	4448      	add	r0, r9
c0de9e48:	6381      	str	r1, [r0, #56]	@ 0x38
c0de9e4a:	485a      	ldr	r0, [pc, #360]	@ (c0de9fb4 <displayFullValuePage+0x1ac>)
c0de9e4c:	2100      	movs	r1, #0
c0de9e4e:	6927      	ldr	r7, [r4, #16]
c0de9e50:	9101      	str	r1, [sp, #4]
c0de9e52:	4448      	add	r0, r9
c0de9e54:	e9c0 220c 	strd	r2, r2, [r0, #48]	@ 0x30
c0de9e58:	6382      	str	r2, [r0, #56]	@ 0x38
c0de9e5a:	63c2      	str	r2, [r0, #60]	@ 0x3c
c0de9e5c:	7a3d      	ldrb	r5, [r7, #8]
c0de9e5e:	0628      	lsls	r0, r5, #24
c0de9e60:	f000 8087 	beq.w	c0de9f72 <displayFullValuePage+0x16a>
c0de9e64:	9500      	str	r5, [sp, #0]
c0de9e66:	fa5f fb85 	uxtb.w	fp, r5
c0de9e6a:	f04f 0800 	mov.w	r8, #0
c0de9e6e:	2600      	movs	r6, #0
c0de9e70:	9801      	ldr	r0, [sp, #4]
c0de9e72:	b2c0      	uxtb	r0, r0
c0de9e74:	ea4f 1a00 	mov.w	sl, r0, lsl #4
c0de9e78:	45c3      	cmp	fp, r8
c0de9e7a:	d027      	beq.n	c0de9ecc <displayFullValuePage+0xc4>
c0de9e7c:	f1b8 0f00 	cmp.w	r8, #0
c0de9e80:	bf18      	it	ne
c0de9e82:	3618      	addne	r6, #24
c0de9e84:	6838      	ldr	r0, [r7, #0]
c0de9e86:	b108      	cbz	r0, c0de9e8c <displayFullValuePage+0x84>
c0de9e88:	4450      	add	r0, sl
c0de9e8a:	e004      	b.n	c0de9e96 <displayFullValuePage+0x8e>
c0de9e8c:	9801      	ldr	r0, [sp, #4]
c0de9e8e:	6879      	ldr	r1, [r7, #4]
c0de9e90:	4440      	add	r0, r8
c0de9e92:	b2c0      	uxtb	r0, r0
c0de9e94:	4788      	blx	r1
c0de9e96:	f001 fb99 	bl	c0deb5cc <pic>
c0de9e9a:	7bbb      	ldrb	r3, [r7, #14]
c0de9e9c:	6801      	ldr	r1, [r0, #0]
c0de9e9e:	4604      	mov	r4, r0
c0de9ea0:	f000 fd5c 	bl	c0dea95c <OUTLINED_FUNCTION_16>
c0de9ea4:	6861      	ldr	r1, [r4, #4]
c0de9ea6:	7bbb      	ldrb	r3, [r7, #14]
c0de9ea8:	4605      	mov	r5, r0
c0de9eaa:	f000 fd57 	bl	c0dea95c <OUTLINED_FUNCTION_16>
c0de9eae:	1971      	adds	r1, r6, r5
c0de9eb0:	f10a 0a10 	add.w	sl, sl, #16
c0de9eb4:	f108 0801 	add.w	r8, r8, #1
c0de9eb8:	4408      	add	r0, r1
c0de9eba:	1d06      	adds	r6, r0, #4
c0de9ebc:	b2b0      	uxth	r0, r6
c0de9ebe:	f5b0 7fe8 	cmp.w	r0, #464	@ 0x1d0
c0de9ec2:	d3d9      	bcc.n	c0de9e78 <displayFullValuePage+0x70>
c0de9ec4:	9d00      	ldr	r5, [sp, #0]
c0de9ec6:	f1a8 0001 	sub.w	r0, r8, #1
c0de9eca:	e001      	b.n	c0de9ed0 <displayFullValuePage+0xc8>
c0de9ecc:	9d00      	ldr	r5, [sp, #0]
c0de9ece:	4628      	mov	r0, r5
c0de9ed0:	4938      	ldr	r1, [pc, #224]	@ (c0de9fb4 <displayFullValuePage+0x1ac>)
c0de9ed2:	2404      	movs	r4, #4
c0de9ed4:	1a2d      	subs	r5, r5, r0
c0de9ed6:	4449      	add	r1, r9
c0de9ed8:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de9edc:	1c53      	adds	r3, r2, #1
c0de9ede:	f881 3030 	strb.w	r3, [r1, #48]	@ 0x30
c0de9ee2:	eb01 0152 	add.w	r1, r1, r2, lsr #1
c0de9ee6:	ea04 0282 	and.w	r2, r4, r2, lsl #2
c0de9eea:	240f      	movs	r4, #15
c0de9eec:	f891 3050 	ldrb.w	r3, [r1, #80]	@ 0x50
c0de9ef0:	4094      	lsls	r4, r2
c0de9ef2:	43a3      	bics	r3, r4
c0de9ef4:	f000 0407 	and.w	r4, r0, #7
c0de9ef8:	fa04 f202 	lsl.w	r2, r4, r2
c0de9efc:	431a      	orrs	r2, r3
c0de9efe:	f881 2050 	strb.w	r2, [r1, #80]	@ 0x50
c0de9f02:	9901      	ldr	r1, [sp, #4]
c0de9f04:	4401      	add	r1, r0
c0de9f06:	9101      	str	r1, [sp, #4]
c0de9f08:	e7a9      	b.n	c0de9e5e <displayFullValuePage+0x56>
c0de9f0a:	af0b      	add	r7, sp, #44	@ 0x2c
c0de9f0c:	492a      	ldr	r1, [pc, #168]	@ (c0de9fb8 <displayFullValuePage+0x1b0>)
c0de9f0e:	221c      	movs	r2, #28
c0de9f10:	4638      	mov	r0, r7
c0de9f12:	4479      	add	r1, pc
c0de9f14:	f001 fd90 	bl	c0deba38 <__aeabi_memcpy>
c0de9f18:	f44f 6010 	mov.w	r0, #2304	@ 0x900
c0de9f1c:	f8df 8090 	ldr.w	r8, [pc, #144]	@ c0de9fb0 <displayFullValuePage+0x1a8>
c0de9f20:	9608      	str	r6, [sp, #32]
c0de9f22:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de9f26:	2000      	movs	r0, #0
c0de9f28:	9007      	str	r0, [sp, #28]
c0de9f2a:	2001      	movs	r0, #1
c0de9f2c:	eb09 0608 	add.w	r6, r9, r8
c0de9f30:	f8ad 0018 	strh.w	r0, [sp, #24]
c0de9f34:	4638      	mov	r0, r7
c0de9f36:	f7f9 ff19 	bl	c0de3d6c <nbgl_layoutGet>
c0de9f3a:	62f0      	str	r0, [r6, #44]	@ 0x2c
c0de9f3c:	a906      	add	r1, sp, #24
c0de9f3e:	f7fc fc69 	bl	c0de6814 <nbgl_layoutAddHeader>
c0de9f42:	7d20      	ldrb	r0, [r4, #20]
c0de9f44:	2801      	cmp	r0, #1
c0de9f46:	d01b      	beq.n	c0de9f80 <displayFullValuePage+0x178>
c0de9f48:	2802      	cmp	r0, #2
c0de9f4a:	d01c      	beq.n	c0de9f86 <displayFullValuePage+0x17e>
c0de9f4c:	2803      	cmp	r0, #3
c0de9f4e:	d11d      	bne.n	c0de9f8c <displayFullValuePage+0x184>
c0de9f50:	f44f 3080 	mov.w	r0, #65536	@ 0x10000
c0de9f54:	9005      	str	r0, [sp, #20]
c0de9f56:	cc07      	ldmia	r4!, {r0, r1, r2}
c0de9f58:	9104      	str	r1, [sp, #16]
c0de9f5a:	2a00      	cmp	r2, #0
c0de9f5c:	9002      	str	r0, [sp, #8]
c0de9f5e:	bf08      	it	eq
c0de9f60:	4602      	moveq	r2, r0
c0de9f62:	eb09 0008 	add.w	r0, r9, r8
c0de9f66:	9203      	str	r2, [sp, #12]
c0de9f68:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de9f6a:	a902      	add	r1, sp, #8
c0de9f6c:	f7fb ffe1 	bl	c0de5f32 <nbgl_layoutAddQRCode>
c0de9f70:	e014      	b.n	c0de9f9c <displayFullValuePage+0x194>
c0de9f72:	2000      	movs	r0, #0
c0de9f74:	2101      	movs	r1, #1
c0de9f76:	b012      	add	sp, #72	@ 0x48
c0de9f78:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9f7c:	f000 bb72 	b.w	c0dea664 <displayTagValueListModalPage>
c0de9f80:	4b0e      	ldr	r3, [pc, #56]	@ (c0de9fbc <displayFullValuePage+0x1b4>)
c0de9f82:	447b      	add	r3, pc
c0de9f84:	e003      	b.n	c0de9f8e <displayFullValuePage+0x186>
c0de9f86:	4b0e      	ldr	r3, [pc, #56]	@ (c0de9fc0 <displayFullValuePage+0x1b8>)
c0de9f88:	447b      	add	r3, pc
c0de9f8a:	e000      	b.n	c0de9f8e <displayFullValuePage+0x186>
c0de9f8c:	6863      	ldr	r3, [r4, #4]
c0de9f8e:	eb09 0008 	add.w	r0, r9, r8
c0de9f92:	6822      	ldr	r2, [r4, #0]
c0de9f94:	4629      	mov	r1, r5
c0de9f96:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de9f98:	f7fb fb8e 	bl	c0de56b8 <nbgl_layoutAddTextContent>
c0de9f9c:	eb09 0008 	add.w	r0, r9, r8
c0de9fa0:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de9fa2:	f7fc ff54 	bl	c0de6e4e <nbgl_layoutDraw>
c0de9fa6:	f001 f8f4 	bl	c0deb192 <nbgl_refresh>
c0de9faa:	b012      	add	sp, #72	@ 0x48
c0de9fac:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de9fb0:	00000ab0 	.word	0x00000ab0
c0de9fb4:	00000d68 	.word	0x00000d68
c0de9fb8:	000048be 	.word	0x000048be
c0de9fbc:	00003124 	.word	0x00003124
c0de9fc0:	000034c1 	.word	0x000034c1

c0de9fc4 <displaySecurityReport>:
c0de9fc4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9fc8:	b09c      	sub	sp, #112	@ 0x70
c0de9fca:	ac15      	add	r4, sp, #84	@ 0x54
c0de9fcc:	4976      	ldr	r1, [pc, #472]	@ (c0dea1a8 <displaySecurityReport+0x1e4>)
c0de9fce:	4680      	mov	r8, r0
c0de9fd0:	221c      	movs	r2, #28
c0de9fd2:	4620      	mov	r0, r4
c0de9fd4:	4479      	add	r1, pc
c0de9fd6:	f001 fd2f 	bl	c0deba38 <__aeabi_memcpy>
c0de9fda:	4874      	ldr	r0, [pc, #464]	@ (c0dea1ac <displaySecurityReport+0x1e8>)
c0de9fdc:	a910      	add	r1, sp, #64	@ 0x40
c0de9fde:	4478      	add	r0, pc
c0de9fe0:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de9fe4:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de9fe6:	a80a      	add	r0, sp, #40	@ 0x28
c0de9fe8:	2118      	movs	r1, #24
c0de9fea:	f001 fd2f 	bl	c0deba4c <__aeabi_memclr>
c0de9fee:	f8df b1b0 	ldr.w	fp, [pc, #432]	@ c0dea1a0 <displaySecurityReport+0x1dc>
c0de9ff2:	4620      	mov	r0, r4
c0de9ff4:	eb09 060b 	add.w	r6, r9, fp
c0de9ff8:	f7f9 feb8 	bl	c0de3d6c <nbgl_layoutGet>
c0de9ffc:	4604      	mov	r4, r0
c0de9ffe:	f8c6 0084 	str.w	r0, [r6, #132]	@ 0x84
c0dea002:	f896 0088 	ldrb.w	r0, [r6, #136]	@ 0x88
c0dea006:	2801      	cmp	r0, #1
c0dea008:	d14d      	bne.n	c0dea0a6 <displaySecurityReport+0xe2>
c0dea00a:	f896 0089 	ldrb.w	r0, [r6, #137]	@ 0x89
c0dea00e:	2800      	cmp	r0, #0
c0dea010:	d149      	bne.n	c0dea0a6 <displaySecurityReport+0xe2>
c0dea012:	4867      	ldr	r0, [pc, #412]	@ (c0dea1b0 <displaySecurityReport+0x1ec>)
c0dea014:	2600      	movs	r6, #0
c0dea016:	ac01      	add	r4, sp, #4
c0dea018:	f04f 0800 	mov.w	r8, #0
c0dea01c:	4478      	add	r0, pc
c0dea01e:	1d05      	adds	r5, r0, #4
c0dea020:	2e05      	cmp	r6, #5
c0dea022:	d076      	beq.n	c0dea112 <displaySecurityReport+0x14e>
c0dea024:	eb09 000b 	add.w	r0, r9, fp
c0dea028:	f8d0 a078 	ldr.w	sl, [r0, #120]	@ 0x78
c0dea02c:	f8da 0000 	ldr.w	r0, [sl]
c0dea030:	40f0      	lsrs	r0, r6
c0dea032:	07c0      	lsls	r0, r0, #31
c0dea034:	d02d      	beq.n	c0dea092 <displaySecurityReport+0xce>
c0dea036:	4620      	mov	r0, r4
c0dea038:	2118      	movs	r1, #24
c0dea03a:	f001 fd07 	bl	c0deba4c <__aeabi_memclr>
c0dea03e:	f008 007f 	and.w	r0, r8, #127	@ 0x7f
c0dea042:	2804      	cmp	r0, #4
c0dea044:	d82a      	bhi.n	c0dea09c <displaySecurityReport+0xd8>
c0dea046:	2101      	movs	r1, #1
c0dea048:	fa01 f000 	lsl.w	r0, r1, r0
c0dea04c:	f010 0f19 	tst.w	r0, #25
c0dea050:	d024      	beq.n	c0dea09c <displaySecurityReport+0xd8>
c0dea052:	6868      	ldr	r0, [r5, #4]
c0dea054:	9004      	str	r0, [sp, #16]
c0dea056:	6828      	ldr	r0, [r5, #0]
c0dea058:	2e03      	cmp	r6, #3
c0dea05a:	9002      	str	r0, [sp, #8]
c0dea05c:	d101      	bne.n	c0dea062 <displaySecurityReport+0x9e>
c0dea05e:	20ff      	movs	r0, #255	@ 0xff
c0dea060:	e007      	b.n	c0dea072 <displaySecurityReport+0xae>
c0dea062:	2009      	movs	r0, #9
c0dea064:	f88d 0018 	strb.w	r0, [sp, #24]
c0dea068:	4852      	ldr	r0, [pc, #328]	@ (c0dea1b4 <displaySecurityReport+0x1f0>)
c0dea06a:	4478      	add	r0, pc
c0dea06c:	9003      	str	r0, [sp, #12]
c0dea06e:	f106 001a 	add.w	r0, r6, #26
c0dea072:	f88d 0015 	strb.w	r0, [sp, #21]
c0dea076:	f855 0c04 	ldr.w	r0, [r5, #-4]
c0dea07a:	eb09 070b 	add.w	r7, r9, fp
c0dea07e:	4621      	mov	r1, r4
c0dea080:	9001      	str	r0, [sp, #4]
c0dea082:	f8d7 0084 	ldr.w	r0, [r7, #132]	@ 0x84
c0dea086:	f7fb f820 	bl	c0de50ca <nbgl_layoutAddTouchableBar>
c0dea08a:	f8d7 0084 	ldr.w	r0, [r7, #132]	@ 0x84
c0dea08e:	f7fc fa8f 	bl	c0de65b0 <nbgl_layoutAddSeparationLine>
c0dea092:	350c      	adds	r5, #12
c0dea094:	f108 0801 	add.w	r8, r8, #1
c0dea098:	3601      	adds	r6, #1
c0dea09a:	e7c1      	b.n	c0dea020 <displaySecurityReport+0x5c>
c0dea09c:	f8da 0010 	ldr.w	r0, [sl, #16]
c0dea0a0:	2800      	cmp	r0, #0
c0dea0a2:	d1d7      	bne.n	c0dea054 <displaySecurityReport+0x90>
c0dea0a4:	e7d5      	b.n	c0dea052 <displaySecurityReport+0x8e>
c0dea0a6:	eb09 000b 	add.w	r0, r9, fp
c0dea0aa:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0dea0ac:	b108      	cbz	r0, c0dea0b2 <displaySecurityReport+0xee>
c0dea0ae:	68c6      	ldr	r6, [r0, #12]
c0dea0b0:	b90e      	cbnz	r6, c0dea0b6 <displaySecurityReport+0xf2>
c0dea0b2:	4e41      	ldr	r6, [pc, #260]	@ (c0dea1b8 <displaySecurityReport+0x1f4>)
c0dea0b4:	447e      	add	r6, pc
c0dea0b6:	f018 0f06 	tst.w	r8, #6
c0dea0ba:	d033      	beq.n	c0dea124 <displaySecurityReport+0x160>
c0dea0bc:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
c0dea0c0:	9104      	str	r1, [sp, #16]
c0dea0c2:	493e      	ldr	r1, [pc, #248]	@ (c0dea1bc <displaySecurityReport+0x1f8>)
c0dea0c4:	4479      	add	r1, pc
c0dea0c6:	9103      	str	r1, [sp, #12]
c0dea0c8:	2140      	movs	r1, #64	@ 0x40
c0dea0ca:	6883      	ldr	r3, [r0, #8]
c0dea0cc:	4835      	ldr	r0, [pc, #212]	@ (c0dea1a4 <displaySecurityReport+0x1e0>)
c0dea0ce:	4448      	add	r0, r9
c0dea0d0:	9302      	str	r3, [sp, #8]
c0dea0d2:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0dea0d6:	9401      	str	r4, [sp, #4]
c0dea0d8:	4620      	mov	r0, r4
c0dea0da:	4a39      	ldr	r2, [pc, #228]	@ (c0dea1c0 <displaySecurityReport+0x1fc>)
c0dea0dc:	447a      	add	r2, pc
c0dea0de:	f001 f8e3 	bl	c0deb2a8 <snprintf>
c0dea0e2:	4620      	mov	r0, r4
c0dea0e4:	f001 fd04 	bl	c0debaf0 <strlen>
c0dea0e8:	4605      	mov	r5, r0
c0dea0ea:	f000 fc19 	bl	c0dea920 <OUTLINED_FUNCTION_9>
c0dea0ee:	a901      	add	r1, sp, #4
c0dea0f0:	f7fb ff1f 	bl	c0de5f32 <nbgl_layoutAddQRCode>
c0dea0f4:	2018      	movs	r0, #24
c0dea0f6:	f1c5 013f 	rsb	r1, r5, #63	@ 0x3f
c0dea0fa:	4633      	mov	r3, r6
c0dea0fc:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0dea100:	1928      	adds	r0, r5, r4
c0dea102:	4a30      	ldr	r2, [pc, #192]	@ (c0dea1c4 <displaySecurityReport+0x200>)
c0dea104:	1c44      	adds	r4, r0, #1
c0dea106:	4620      	mov	r0, r4
c0dea108:	447a      	add	r2, pc
c0dea10a:	f001 f8cd 	bl	c0deb2a8 <snprintf>
c0dea10e:	9412      	str	r4, [sp, #72]	@ 0x48
c0dea110:	e031      	b.n	c0dea176 <displaySecurityReport+0x1b2>
c0dea112:	4832      	ldr	r0, [pc, #200]	@ (c0dea1dc <displaySecurityReport+0x218>)
c0dea114:	4478      	add	r0, pc
c0dea116:	9012      	str	r0, [sp, #72]	@ 0x48
c0dea118:	f000 fc02 	bl	c0dea920 <OUTLINED_FUNCTION_9>
c0dea11c:	a910      	add	r1, sp, #64	@ 0x40
c0dea11e:	f7fc fb79 	bl	c0de6814 <nbgl_layoutAddHeader>
c0dea122:	e034      	b.n	c0dea18e <displaySecurityReport+0x1ca>
c0dea124:	ea5f 60c8 	movs.w	r0, r8, lsl #27
c0dea128:	d40d      	bmi.n	c0dea146 <displaySecurityReport+0x182>
c0dea12a:	ea5f 70c8 	movs.w	r0, r8, lsl #31
c0dea12e:	d0f3      	beq.n	c0dea118 <displaySecurityReport+0x154>
c0dea130:	ad01      	add	r5, sp, #4
c0dea132:	2124      	movs	r1, #36	@ 0x24
c0dea134:	4628      	mov	r0, r5
c0dea136:	f001 fc89 	bl	c0deba4c <__aeabi_memclr>
c0dea13a:	4826      	ldr	r0, [pc, #152]	@ (c0dea1d4 <displaySecurityReport+0x210>)
c0dea13c:	4478      	add	r0, pc
c0dea13e:	9007      	str	r0, [sp, #28]
c0dea140:	4825      	ldr	r0, [pc, #148]	@ (c0dea1d8 <displaySecurityReport+0x214>)
c0dea142:	4478      	add	r0, pc
c0dea144:	e009      	b.n	c0dea15a <displaySecurityReport+0x196>
c0dea146:	ad01      	add	r5, sp, #4
c0dea148:	2124      	movs	r1, #36	@ 0x24
c0dea14a:	4628      	mov	r0, r5
c0dea14c:	f001 fc7e 	bl	c0deba4c <__aeabi_memclr>
c0dea150:	481d      	ldr	r0, [pc, #116]	@ (c0dea1c8 <displaySecurityReport+0x204>)
c0dea152:	4478      	add	r0, pc
c0dea154:	9007      	str	r0, [sp, #28]
c0dea156:	481d      	ldr	r0, [pc, #116]	@ (c0dea1cc <displaySecurityReport+0x208>)
c0dea158:	4478      	add	r0, pc
c0dea15a:	9005      	str	r0, [sp, #20]
c0dea15c:	4629      	mov	r1, r5
c0dea15e:	481c      	ldr	r0, [pc, #112]	@ (c0dea1d0 <displaySecurityReport+0x20c>)
c0dea160:	4478      	add	r0, pc
c0dea162:	9002      	str	r0, [sp, #8]
c0dea164:	4620      	mov	r0, r4
c0dea166:	f7fb fedb 	bl	c0de5f20 <nbgl_layoutAddContentCenter>
c0dea16a:	2028      	movs	r0, #40	@ 0x28
c0dea16c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0dea170:	2000      	movs	r0, #0
c0dea172:	f88d 0041 	strb.w	r0, [sp, #65]	@ 0x41
c0dea176:	eb09 040b 	add.w	r4, r9, fp
c0dea17a:	f8d4 0084 	ldr.w	r0, [r4, #132]	@ 0x84
c0dea17e:	a910      	add	r1, sp, #64	@ 0x40
c0dea180:	f7fc fb48 	bl	c0de6814 <nbgl_layoutAddHeader>
c0dea184:	f8d4 0084 	ldr.w	r0, [r4, #132]	@ 0x84
c0dea188:	a90a      	add	r1, sp, #40	@ 0x28
c0dea18a:	f7fa fbf1 	bl	c0de4970 <nbgl_layoutAddExtendedFooter>
c0dea18e:	f000 fbc7 	bl	c0dea920 <OUTLINED_FUNCTION_9>
c0dea192:	f7fc fe5c 	bl	c0de6e4e <nbgl_layoutDraw>
c0dea196:	f000 fffc 	bl	c0deb192 <nbgl_refresh>
c0dea19a:	b01c      	add	sp, #112	@ 0x70
c0dea19c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea1a0:	00000ab0 	.word	0x00000ab0
c0dea1a4:	00000be8 	.word	0x00000be8
c0dea1a8:	000047fc 	.word	0x000047fc
c0dea1ac:	0000480e 	.word	0x0000480e
c0dea1b0:	000047e4 	.word	0x000047e4
c0dea1b4:	000025f9 	.word	0x000025f9
c0dea1b8:	00003279 	.word	0x00003279
c0dea1bc:	000030ba 	.word	0x000030ba
c0dea1c0:	00002f7d 	.word	0x00002f7d
c0dea1c4:	00003013 	.word	0x00003013
c0dea1c8:	00003045 	.word	0x00003045
c0dea1cc:	00003133 	.word	0x00003133
c0dea1d0:	00002391 	.word	0x00002391
c0dea1d4:	00002d93 	.word	0x00002d93
c0dea1d8:	00002d2f 	.word	0x00002d2f
c0dea1dc:	00002fbc 	.word	0x00002fbc

c0dea1e0 <displayCustomizedSecurityReport>:
c0dea1e0:	b580      	push	{r7, lr}
c0dea1e2:	2117      	movs	r1, #23
c0dea1e4:	f000 f8f2 	bl	c0dea3cc <displayModalDetails>
c0dea1e8:	4902      	ldr	r1, [pc, #8]	@ (c0dea1f4 <displayCustomizedSecurityReport+0x14>)
c0dea1ea:	4449      	add	r1, r9
c0dea1ec:	f8c1 0084 	str.w	r0, [r1, #132]	@ 0x84
c0dea1f0:	bd80      	pop	{r7, pc}
c0dea1f2:	bf00      	nop
c0dea1f4:	00000ab0 	.word	0x00000ab0

c0dea1f8 <displayInfosListModal>:
c0dea1f8:	b570      	push	{r4, r5, r6, lr}
c0dea1fa:	b098      	sub	sp, #96	@ 0x60
c0dea1fc:	4606      	mov	r6, r0
c0dea1fe:	460c      	mov	r4, r1
c0dea200:	a811      	add	r0, sp, #68	@ 0x44
c0dea202:	491c      	ldr	r1, [pc, #112]	@ (c0dea274 <displayInfosListModal+0x7c>)
c0dea204:	4615      	mov	r5, r2
c0dea206:	221c      	movs	r2, #28
c0dea208:	4479      	add	r1, pc
c0dea20a:	f001 fc15 	bl	c0deba38 <__aeabi_memcpy>
c0dea20e:	2008      	movs	r0, #8
c0dea210:	f88d 0010 	strb.w	r0, [sp, #16]
c0dea214:	2000      	movs	r0, #0
c0dea216:	9003      	str	r0, [sp, #12]
c0dea218:	4814      	ldr	r0, [pc, #80]	@ (c0dea26c <displayInfosListModal+0x74>)
c0dea21a:	e9cd 6001 	strd	r6, r0, [sp, #4]
c0dea21e:	200f      	movs	r0, #15
c0dea220:	2d00      	cmp	r5, #0
c0dea222:	bf18      	it	ne
c0dea224:	200e      	movne	r0, #14
c0dea226:	f88d 0021 	strb.w	r0, [sp, #33]	@ 0x21
c0dea22a:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
c0dea22e:	ab05      	add	r3, sp, #20
c0dea230:	c307      	stmia	r3!, {r0, r1, r2}
c0dea232:	7b20      	ldrb	r0, [r4, #12]
c0dea234:	f88d 0020 	strb.w	r0, [sp, #32]
c0dea238:	7ba0      	ldrb	r0, [r4, #14]
c0dea23a:	4c0d      	ldr	r4, [pc, #52]	@ (c0dea270 <displayInfosListModal+0x78>)
c0dea23c:	f88d 0022 	strb.w	r0, [sp, #34]	@ 0x22
c0dea240:	eb09 0004 	add.w	r0, r9, r4
c0dea244:	6a00      	ldr	r0, [r0, #32]
c0dea246:	b108      	cbz	r0, c0dea24c <displayInfosListModal+0x54>
c0dea248:	f7fd fe9b 	bl	c0de7f82 <nbgl_pageRelease>
c0dea24c:	480a      	ldr	r0, [pc, #40]	@ (c0dea278 <displayInfosListModal+0x80>)
c0dea24e:	a911      	add	r1, sp, #68	@ 0x44
c0dea250:	aa01      	add	r2, sp, #4
c0dea252:	2301      	movs	r3, #1
c0dea254:	4478      	add	r0, pc
c0dea256:	f7fd fc6d 	bl	c0de7b34 <nbgl_pageDrawGenericContentExt>
c0dea25a:	eb09 0104 	add.w	r1, r9, r4
c0dea25e:	6208      	str	r0, [r1, #32]
c0dea260:	2002      	movs	r0, #2
c0dea262:	f000 ff9b 	bl	c0deb19c <nbgl_refreshSpecial>
c0dea266:	b018      	add	sp, #96	@ 0x60
c0dea268:	bd70      	pop	{r4, r5, r6, pc}
c0dea26a:	bf00      	nop
c0dea26c:	00091400 	.word	0x00091400
c0dea270:	00000d68 	.word	0x00000d68
c0dea274:	00004634 	.word	0x00004634
c0dea278:	fffff025 	.word	0xfffff025

c0dea27c <modalLayoutTouchCallback>:
c0dea27c:	b570      	push	{r4, r5, r6, lr}
c0dea27e:	2818      	cmp	r0, #24
c0dea280:	d00c      	beq.n	c0dea29c <modalLayoutTouchCallback+0x20>
c0dea282:	2817      	cmp	r0, #23
c0dea284:	d019      	beq.n	c0dea2ba <modalLayoutTouchCallback+0x3e>
c0dea286:	2816      	cmp	r0, #22
c0dea288:	d128      	bne.n	c0dea2dc <modalLayoutTouchCallback+0x60>
c0dea28a:	484f      	ldr	r0, [pc, #316]	@ (c0dea3c8 <modalLayoutTouchCallback+0x14c>)
c0dea28c:	eb09 0400 	add.w	r4, r9, r0
c0dea290:	6da0      	ldr	r0, [r4, #88]	@ 0x58
c0dea292:	f7fc fdfb 	bl	c0de6e8c <nbgl_layoutRelease>
c0dea296:	2000      	movs	r0, #0
c0dea298:	65a0      	str	r0, [r4, #88]	@ 0x58
c0dea29a:	e055      	b.n	c0dea348 <modalLayoutTouchCallback+0xcc>
c0dea29c:	4c49      	ldr	r4, [pc, #292]	@ (c0dea3c4 <modalLayoutTouchCallback+0x148>)
c0dea29e:	eb09 0504 	add.w	r5, r9, r4
c0dea2a2:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0dea2a4:	f7fc fdf2 	bl	c0de6e8c <nbgl_layoutRelease>
c0dea2a8:	f895 0068 	ldrb.w	r0, [r5, #104]	@ 0x68
c0dea2ac:	2801      	cmp	r0, #1
c0dea2ae:	d832      	bhi.n	c0dea316 <modalLayoutTouchCallback+0x9a>
c0dea2b0:	eb09 0004 	add.w	r0, r9, r4
c0dea2b4:	2100      	movs	r1, #0
c0dea2b6:	6641      	str	r1, [r0, #100]	@ 0x64
c0dea2b8:	e046      	b.n	c0dea348 <modalLayoutTouchCallback+0xcc>
c0dea2ba:	4c42      	ldr	r4, [pc, #264]	@ (c0dea3c4 <modalLayoutTouchCallback+0x148>)
c0dea2bc:	eb09 0504 	add.w	r5, r9, r4
c0dea2c0:	f8d5 0084 	ldr.w	r0, [r5, #132]	@ 0x84
c0dea2c4:	f7fc fde2 	bl	c0de6e8c <nbgl_layoutRelease>
c0dea2c8:	f895 0088 	ldrb.w	r0, [r5, #136]	@ 0x88
c0dea2cc:	2801      	cmp	r0, #1
c0dea2ce:	d829      	bhi.n	c0dea324 <modalLayoutTouchCallback+0xa8>
c0dea2d0:	eb09 0004 	add.w	r0, r9, r4
c0dea2d4:	2100      	movs	r1, #0
c0dea2d6:	f8c0 1084 	str.w	r1, [r0, #132]	@ 0x84
c0dea2da:	e035      	b.n	c0dea348 <modalLayoutTouchCallback+0xcc>
c0dea2dc:	f1a0 041a 	sub.w	r4, r0, #26
c0dea2e0:	2c04      	cmp	r4, #4
c0dea2e2:	d829      	bhi.n	c0dea338 <modalLayoutTouchCallback+0xbc>
c0dea2e4:	4d37      	ldr	r5, [pc, #220]	@ (c0dea3c4 <modalLayoutTouchCallback+0x148>)
c0dea2e6:	eb09 0005 	add.w	r0, r9, r5
c0dea2ea:	f890 008c 	ldrb.w	r0, [r0, #140]	@ 0x8c
c0dea2ee:	2802      	cmp	r0, #2
c0dea2f0:	d03d      	beq.n	c0dea36e <modalLayoutTouchCallback+0xf2>
c0dea2f2:	2801      	cmp	r0, #1
c0dea2f4:	d164      	bne.n	c0dea3c0 <modalLayoutTouchCallback+0x144>
c0dea2f6:	eb09 0605 	add.w	r6, r9, r5
c0dea2fa:	f8d6 0084 	ldr.w	r0, [r6, #132]	@ 0x84
c0dea2fe:	f7fc fdc5 	bl	c0de6e8c <nbgl_layoutRelease>
c0dea302:	2002      	movs	r0, #2
c0dea304:	f886 0088 	strb.w	r0, [r6, #136]	@ 0x88
c0dea308:	6fb0      	ldr	r0, [r6, #120]	@ 0x78
c0dea30a:	6801      	ldr	r1, [r0, #0]
c0dea30c:	2900      	cmp	r1, #0
c0dea30e:	d046      	beq.n	c0dea39e <modalLayoutTouchCallback+0x122>
c0dea310:	2001      	movs	r0, #1
c0dea312:	40a0      	lsls	r0, r4
c0dea314:	e00c      	b.n	c0dea330 <modalLayoutTouchCallback+0xb4>
c0dea316:	444c      	add	r4, r9
c0dea318:	2001      	movs	r0, #1
c0dea31a:	2118      	movs	r1, #24
c0dea31c:	f000 fb2b 	bl	c0dea976 <OUTLINED_FUNCTION_19>
c0dea320:	6660      	str	r0, [r4, #100]	@ 0x64
c0dea322:	e013      	b.n	c0dea34c <modalLayoutTouchCallback+0xd0>
c0dea324:	eb09 0004 	add.w	r0, r9, r4
c0dea328:	2101      	movs	r1, #1
c0dea32a:	f000 faed 	bl	c0dea908 <OUTLINED_FUNCTION_6>
c0dea32e:	d011      	beq.n	c0dea354 <modalLayoutTouchCallback+0xd8>
c0dea330:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea334:	f7ff be46 	b.w	c0de9fc4 <displaySecurityReport>
c0dea338:	4822      	ldr	r0, [pc, #136]	@ (c0dea3c4 <modalLayoutTouchCallback+0x148>)
c0dea33a:	eb09 0400 	add.w	r4, r9, r0
c0dea33e:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
c0dea340:	f7fc fda4 	bl	c0de6e8c <nbgl_layoutRelease>
c0dea344:	2000      	movs	r0, #0
c0dea346:	62e0      	str	r0, [r4, #44]	@ 0x2c
c0dea348:	f000 ff4b 	bl	c0deb1e2 <nbgl_screenRedraw>
c0dea34c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea350:	f000 bf1f 	b.w	c0deb192 <nbgl_refresh>
c0dea354:	eb09 0004 	add.w	r0, r9, r4
c0dea358:	2214      	movs	r2, #20
c0dea35a:	f890 0089 	ldrb.w	r0, [r0, #137]	@ 0x89
c0dea35e:	2800      	cmp	r0, #0
c0dea360:	bf08      	it	eq
c0dea362:	2218      	moveq	r2, #24
c0dea364:	5888      	ldr	r0, [r1, r2]
c0dea366:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea36a:	f7ff bf39 	b.w	c0dea1e0 <displayCustomizedSecurityReport>
c0dea36e:	eb09 0105 	add.w	r1, r9, r5
c0dea372:	202c      	movs	r0, #44	@ 0x2c
c0dea374:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
c0dea376:	fb04 f200 	mul.w	r2, r4, r0
c0dea37a:	6989      	ldr	r1, [r1, #24]
c0dea37c:	588a      	ldr	r2, [r1, r2]
c0dea37e:	b1fa      	cbz	r2, c0dea3c0 <modalLayoutTouchCallback+0x144>
c0dea380:	444d      	add	r5, r9
c0dea382:	fb04 1400 	mla	r4, r4, r0, r1
c0dea386:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0dea388:	f7fc fd80 	bl	c0de6e8c <nbgl_layoutRelease>
c0dea38c:	2002      	movs	r0, #2
c0dea38e:	2118      	movs	r1, #24
c0dea390:	f885 0068 	strb.w	r0, [r5, #104]	@ 0x68
c0dea394:	4620      	mov	r0, r4
c0dea396:	f000 f819 	bl	c0dea3cc <displayModalDetails>
c0dea39a:	6668      	str	r0, [r5, #100]	@ 0x64
c0dea39c:	e010      	b.n	c0dea3c0 <modalLayoutTouchCallback+0x144>
c0dea39e:	eb09 0105 	add.w	r1, r9, r5
c0dea3a2:	2214      	movs	r2, #20
c0dea3a4:	f891 1089 	ldrb.w	r1, [r1, #137]	@ 0x89
c0dea3a8:	2900      	cmp	r1, #0
c0dea3aa:	bf08      	it	eq
c0dea3ac:	2218      	moveq	r2, #24
c0dea3ae:	5880      	ldr	r0, [r0, r2]
c0dea3b0:	7901      	ldrb	r1, [r0, #4]
c0dea3b2:	2903      	cmp	r1, #3
c0dea3b4:	d104      	bne.n	c0dea3c0 <modalLayoutTouchCallback+0x144>
c0dea3b6:	6980      	ldr	r0, [r0, #24]
c0dea3b8:	212c      	movs	r1, #44	@ 0x2c
c0dea3ba:	fb04 0001 	mla	r0, r4, r1, r0
c0dea3be:	e7d2      	b.n	c0dea366 <modalLayoutTouchCallback+0xea>
c0dea3c0:	bd70      	pop	{r4, r5, r6, pc}
c0dea3c2:	bf00      	nop
c0dea3c4:	00000ab0 	.word	0x00000ab0
c0dea3c8:	00000de4 	.word	0x00000de4

c0dea3cc <displayModalDetails>:
c0dea3cc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea3d0:	b092      	sub	sp, #72	@ 0x48
c0dea3d2:	460d      	mov	r5, r1
c0dea3d4:	ae0b      	add	r6, sp, #44	@ 0x2c
c0dea3d6:	4938      	ldr	r1, [pc, #224]	@ (c0dea4b8 <displayModalDetails+0xec>)
c0dea3d8:	4604      	mov	r4, r0
c0dea3da:	221c      	movs	r2, #28
c0dea3dc:	4630      	mov	r0, r6
c0dea3de:	4479      	add	r1, pc
c0dea3e0:	f001 fb2a 	bl	c0deba38 <__aeabi_memcpy>
c0dea3e4:	af06      	add	r7, sp, #24
c0dea3e6:	2114      	movs	r1, #20
c0dea3e8:	4638      	mov	r0, r7
c0dea3ea:	f001 fb2f 	bl	c0deba4c <__aeabi_memclr>
c0dea3ee:	2009      	movs	r0, #9
c0dea3f0:	f88d 5024 	strb.w	r5, [sp, #36]	@ 0x24
c0dea3f4:	f88d 0025 	strb.w	r0, [sp, #37]	@ 0x25
c0dea3f8:	f240 1001 	movw	r0, #257	@ 0x101
c0dea3fc:	f8ad 0018 	strh.w	r0, [sp, #24]
c0dea400:	4630      	mov	r0, r6
c0dea402:	f7f9 fcb3 	bl	c0de3d6c <nbgl_layoutGet>
c0dea406:	4605      	mov	r5, r0
c0dea408:	6820      	ldr	r0, [r4, #0]
c0dea40a:	4639      	mov	r1, r7
c0dea40c:	9008      	str	r0, [sp, #32]
c0dea40e:	4628      	mov	r0, r5
c0dea410:	f7fc fa00 	bl	c0de6814 <nbgl_layoutAddHeader>
c0dea414:	7920      	ldrb	r0, [r4, #4]
c0dea416:	2801      	cmp	r0, #1
c0dea418:	d035      	beq.n	c0dea486 <displayModalDetails+0xba>
c0dea41a:	2802      	cmp	r0, #2
c0dea41c:	d03c      	beq.n	c0dea498 <displayModalDetails+0xcc>
c0dea41e:	2803      	cmp	r0, #3
c0dea420:	d141      	bne.n	c0dea4a6 <displayModalDetails+0xda>
c0dea422:	4f26      	ldr	r7, [pc, #152]	@ (c0dea4bc <displayModalDetails+0xf0>)
c0dea424:	f04f 0a00 	mov.w	sl, #0
c0dea428:	2604      	movs	r6, #4
c0dea42a:	46e8      	mov	r8, sp
c0dea42c:	f04f 0b00 	mov.w	fp, #0
c0dea430:	447f      	add	r7, pc
c0dea432:	7a20      	ldrb	r0, [r4, #8]
c0dea434:	4583      	cmp	fp, r0
c0dea436:	d236      	bcs.n	c0dea4a6 <displayModalDetails+0xda>
c0dea438:	f104 030c 	add.w	r3, r4, #12
c0dea43c:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
c0dea43e:	f850 002b 	ldr.w	r0, [r0, fp, lsl #2]
c0dea442:	9001      	str	r0, [sp, #4]
c0dea444:	f851 002b 	ldr.w	r0, [r1, fp, lsl #2]
c0dea448:	4641      	mov	r1, r8
c0dea44a:	9003      	str	r0, [sp, #12]
c0dea44c:	5d98      	ldrb	r0, [r3, r6]
c0dea44e:	2800      	cmp	r0, #0
c0dea450:	bf18      	it	ne
c0dea452:	4638      	movne	r0, r7
c0dea454:	9002      	str	r0, [sp, #8]
c0dea456:	f88d a012 	strb.w	sl, [sp, #18]
c0dea45a:	f88d a010 	strb.w	sl, [sp, #16]
c0dea45e:	2009      	movs	r0, #9
c0dea460:	f88d 0014 	strb.w	r0, [sp, #20]
c0dea464:	f10b 001a 	add.w	r0, fp, #26
c0dea468:	f88d 0011 	strb.w	r0, [sp, #17]
c0dea46c:	f852 002b 	ldr.w	r0, [r2, fp, lsl #2]
c0dea470:	9000      	str	r0, [sp, #0]
c0dea472:	4628      	mov	r0, r5
c0dea474:	f7fa fe29 	bl	c0de50ca <nbgl_layoutAddTouchableBar>
c0dea478:	4628      	mov	r0, r5
c0dea47a:	f7fc f899 	bl	c0de65b0 <nbgl_layoutAddSeparationLine>
c0dea47e:	362c      	adds	r6, #44	@ 0x2c
c0dea480:	f10b 0b01 	add.w	fp, fp, #1
c0dea484:	e7d5      	b.n	c0dea432 <displayModalDetails+0x66>
c0dea486:	f104 0108 	add.w	r1, r4, #8
c0dea48a:	4628      	mov	r0, r5
c0dea48c:	f7fb fd48 	bl	c0de5f20 <nbgl_layoutAddContentCenter>
c0dea490:	2000      	movs	r0, #0
c0dea492:	f88d 0019 	strb.w	r0, [sp, #25]
c0dea496:	e006      	b.n	c0dea4a6 <displayModalDetails+0xda>
c0dea498:	f104 0108 	add.w	r1, r4, #8
c0dea49c:	4628      	mov	r0, r5
c0dea49e:	f7fb fd48 	bl	c0de5f32 <nbgl_layoutAddQRCode>
c0dea4a2:	6820      	ldr	r0, [r4, #0]
c0dea4a4:	9008      	str	r0, [sp, #32]
c0dea4a6:	4628      	mov	r0, r5
c0dea4a8:	f7fc fcd1 	bl	c0de6e4e <nbgl_layoutDraw>
c0dea4ac:	f000 fe71 	bl	c0deb192 <nbgl_refresh>
c0dea4b0:	4628      	mov	r0, r5
c0dea4b2:	b012      	add	sp, #72	@ 0x48
c0dea4b4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea4b8:	000043f2 	.word	0x000043f2
c0dea4bc:	00002233 	.word	0x00002233

c0dea4c0 <displayDetailsPage>:
c0dea4c0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0dea4c4:	b09b      	sub	sp, #108	@ 0x6c
c0dea4c6:	f8df a190 	ldr.w	sl, [pc, #400]	@ c0dea658 <displayDetailsPage+0x198>
c0dea4ca:	4604      	mov	r4, r0
c0dea4cc:	f88d 004c 	strb.w	r0, [sp, #76]	@ 0x4c
c0dea4d0:	2000      	movs	r0, #0
c0dea4d2:	460e      	mov	r6, r1
c0dea4d4:	495f      	ldr	r1, [pc, #380]	@ (c0dea654 <displayDetailsPage+0x194>)
c0dea4d6:	9018      	str	r0, [sp, #96]	@ 0x60
c0dea4d8:	f88d 0058 	strb.w	r0, [sp, #88]	@ 0x58
c0dea4dc:	9015      	str	r0, [sp, #84]	@ 0x54
c0dea4de:	f44f 6010 	mov.w	r0, #2304	@ 0x900
c0dea4e2:	eb09 050a 	add.w	r5, r9, sl
c0dea4e6:	f8ad 0050 	strh.w	r0, [sp, #80]	@ 0x50
c0dea4ea:	f44f 7081 	mov.w	r0, #258	@ 0x102
c0dea4ee:	9117      	str	r1, [sp, #92]	@ 0x5c
c0dea4f0:	2140      	movs	r1, #64	@ 0x40
c0dea4f2:	f895 8030 	ldrb.w	r8, [r5, #48]	@ 0x30
c0dea4f6:	f8ad 004e 	strh.w	r0, [sp, #78]	@ 0x4e
c0dea4fa:	f88d 804d 	strb.w	r8, [sp, #77]	@ 0x4d
c0dea4fe:	a803      	add	r0, sp, #12
c0dea500:	f001 faa4 	bl	c0deba4c <__aeabi_memclr>
c0dea504:	2001      	movs	r0, #1
c0dea506:	f88d 0029 	strb.w	r0, [sp, #41]	@ 0x29
c0dea50a:	f88d 0024 	strb.w	r0, [sp, #36]	@ 0x24
c0dea50e:	f105 0040 	add.w	r0, r5, #64	@ 0x40
c0dea512:	9007      	str	r0, [sp, #28]
c0dea514:	2004      	movs	r0, #4
c0dea516:	f88d 0018 	strb.w	r0, [sp, #24]
c0dea51a:	f895 0033 	ldrb.w	r0, [r5, #51]	@ 0x33
c0dea51e:	f88d 002a 	strb.w	r0, [sp, #42]	@ 0x2a
c0dea522:	6a28      	ldr	r0, [r5, #32]
c0dea524:	b108      	cbz	r0, c0dea52a <displayDetailsPage+0x6a>
c0dea526:	f7fd fd2c 	bl	c0de7f82 <nbgl_pageRelease>
c0dea52a:	eb09 000a 	add.w	r0, r9, sl
c0dea52e:	6b41      	ldr	r1, [r0, #52]	@ 0x34
c0dea530:	6401      	str	r1, [r0, #64]	@ 0x40
c0dea532:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0dea536:	42a0      	cmp	r0, r4
c0dea538:	d207      	bcs.n	c0dea54a <displayDetailsPage+0x8a>
c0dea53a:	2501      	movs	r5, #1
c0dea53c:	eb09 000a 	add.w	r0, r9, sl
c0dea540:	2e00      	cmp	r6, #0
c0dea542:	bf18      	it	ne
c0dea544:	2502      	movne	r5, #2
c0dea546:	6bc6      	ldr	r6, [r0, #60]	@ 0x3c
c0dea548:	e02d      	b.n	c0dea5a6 <displayDetailsPage+0xe6>
c0dea54a:	eb09 000a 	add.w	r0, r9, sl
c0dea54e:	2500      	movs	r5, #0
c0dea550:	f10d 076a 	add.w	r7, sp, #106	@ 0x6a
c0dea554:	6b86      	ldr	r6, [r0, #56]	@ 0x38
c0dea556:	42a5      	cmp	r5, r4
c0dea558:	d224      	bcs.n	c0dea5a4 <displayDetailsPage+0xe4>
c0dea55a:	200c      	movs	r0, #12
c0dea55c:	4631      	mov	r1, r6
c0dea55e:	f000 f9f8 	bl	c0dea952 <OUTLINED_FUNCTION_15>
c0dea562:	280c      	cmp	r0, #12
c0dea564:	d31c      	bcc.n	c0dea5a0 <displayDetailsPage+0xe0>
c0dea566:	eb09 000a 	add.w	r0, r9, sl
c0dea56a:	4631      	mov	r1, r6
c0dea56c:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0dea570:	230b      	movs	r3, #11
c0dea572:	f890 0033 	ldrb.w	r0, [r0, #51]	@ 0x33
c0dea576:	e9cd 7000 	strd	r7, r0, [sp]
c0dea57a:	200c      	movs	r0, #12
c0dea57c:	f000 fe6d 	bl	c0deb25a <nbgl_getTextMaxLenInNbLines>
c0dea580:	f8bd 006a 	ldrh.w	r0, [sp, #106]	@ 0x6a
c0dea584:	5c31      	ldrb	r1, [r6, r0]
c0dea586:	290a      	cmp	r1, #10
c0dea588:	d101      	bne.n	c0dea58e <displayDetailsPage+0xce>
c0dea58a:	3001      	adds	r0, #1
c0dea58c:	e006      	b.n	c0dea59c <displayDetailsPage+0xdc>
c0dea58e:	eb09 010a 	add.w	r1, r9, sl
c0dea592:	f891 1033 	ldrb.w	r1, [r1, #51]	@ 0x33
c0dea596:	2900      	cmp	r1, #0
c0dea598:	bf08      	it	eq
c0dea59a:	3803      	subeq	r0, #3
c0dea59c:	b280      	uxth	r0, r0
c0dea59e:	4406      	add	r6, r0
c0dea5a0:	3501      	adds	r5, #1
c0dea5a2:	e7d8      	b.n	c0dea556 <displayDetailsPage+0x96>
c0dea5a4:	2502      	movs	r5, #2
c0dea5a6:	eb09 000a 	add.w	r0, r9, sl
c0dea5aa:	4631      	mov	r1, r6
c0dea5ac:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0dea5b0:	f890 3033 	ldrb.w	r3, [r0, #51]	@ 0x33
c0dea5b4:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0dea5b8:	6446      	str	r6, [r0, #68]	@ 0x44
c0dea5ba:	200c      	movs	r0, #12
c0dea5bc:	f000 fe43 	bl	c0deb246 <nbgl_getTextNbLinesInWidth>
c0dea5c0:	280c      	cmp	r0, #12
c0dea5c2:	d319      	bcc.n	c0dea5f8 <displayDetailsPage+0x138>
c0dea5c4:	eb09 040a 	add.w	r4, r9, sl
c0dea5c8:	f10d 026a 	add.w	r2, sp, #106	@ 0x6a
c0dea5cc:	230b      	movs	r3, #11
c0dea5ce:	f894 0033 	ldrb.w	r0, [r4, #51]	@ 0x33
c0dea5d2:	6c61      	ldr	r1, [r4, #68]	@ 0x44
c0dea5d4:	e9cd 2000 	strd	r2, r0, [sp]
c0dea5d8:	200c      	movs	r0, #12
c0dea5da:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0dea5de:	f000 fe3c 	bl	c0deb25a <nbgl_getTextMaxLenInNbLines>
c0dea5e2:	2000      	movs	r0, #0
c0dea5e4:	f8bd 106a 	ldrh.w	r1, [sp, #106]	@ 0x6a
c0dea5e8:	f88d 0026 	strb.w	r0, [sp, #38]	@ 0x26
c0dea5ec:	6c60      	ldr	r0, [r4, #68]	@ 0x44
c0dea5ee:	5c42      	ldrb	r2, [r0, r1]
c0dea5f0:	2a0a      	cmp	r2, #10
c0dea5f2:	d108      	bne.n	c0dea606 <displayDetailsPage+0x146>
c0dea5f4:	3101      	adds	r1, #1
c0dea5f6:	e00f      	b.n	c0dea618 <displayDetailsPage+0x158>
c0dea5f8:	2100      	movs	r1, #0
c0dea5fa:	eb09 000a 	add.w	r0, r9, sl
c0dea5fe:	63c1      	str	r1, [r0, #60]	@ 0x3c
c0dea600:	f88d 1027 	strb.w	r1, [sp, #39]	@ 0x27
c0dea604:	e010      	b.n	c0dea628 <displayDetailsPage+0x168>
c0dea606:	eb09 020a 	add.w	r2, r9, sl
c0dea60a:	f892 2033 	ldrb.w	r2, [r2, #51]	@ 0x33
c0dea60e:	b91a      	cbnz	r2, c0dea618 <displayDetailsPage+0x158>
c0dea610:	2201      	movs	r2, #1
c0dea612:	3903      	subs	r1, #3
c0dea614:	f88d 2026 	strb.w	r2, [sp, #38]	@ 0x26
c0dea618:	b289      	uxth	r1, r1
c0dea61a:	eb09 020a 	add.w	r2, r9, sl
c0dea61e:	4408      	add	r0, r1
c0dea620:	63d0      	str	r0, [r2, #60]	@ 0x3c
c0dea622:	200b      	movs	r0, #11
c0dea624:	f88d 0027 	strb.w	r0, [sp, #39]	@ 0x27
c0dea628:	f1b8 0f01 	cmp.w	r8, #1
c0dea62c:	d102      	bne.n	c0dea634 <displayDetailsPage+0x174>
c0dea62e:	480b      	ldr	r0, [pc, #44]	@ (c0dea65c <displayDetailsPage+0x19c>)
c0dea630:	4478      	add	r0, pc
c0dea632:	9018      	str	r0, [sp, #96]	@ 0x60
c0dea634:	480a      	ldr	r0, [pc, #40]	@ (c0dea660 <displayDetailsPage+0x1a0>)
c0dea636:	a913      	add	r1, sp, #76	@ 0x4c
c0dea638:	aa03      	add	r2, sp, #12
c0dea63a:	2301      	movs	r3, #1
c0dea63c:	4478      	add	r0, pc
c0dea63e:	f7fd fa79 	bl	c0de7b34 <nbgl_pageDrawGenericContentExt>
c0dea642:	eb09 010a 	add.w	r1, r9, sl
c0dea646:	6208      	str	r0, [r1, #32]
c0dea648:	4628      	mov	r0, r5
c0dea64a:	f000 fda7 	bl	c0deb19c <nbgl_refreshSpecial>
c0dea64e:	b01b      	add	sp, #108	@ 0x6c
c0dea650:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0dea654:	03000101 	.word	0x03000101
c0dea658:	00000d68 	.word	0x00000d68
c0dea65c:	00002b37 	.word	0x00002b37
c0dea660:	ffffec3d 	.word	0xffffec3d

c0dea664 <displayTagValueListModalPage>:
c0dea664:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0dea668:	b098      	sub	sp, #96	@ 0x60
c0dea66a:	4e44      	ldr	r6, [pc, #272]	@ (c0dea77c <displayTagValueListModalPage+0x118>)
c0dea66c:	4605      	mov	r5, r0
c0dea66e:	f88d 0044 	strb.w	r0, [sp, #68]	@ 0x44
c0dea672:	2000      	movs	r0, #0
c0dea674:	4688      	mov	r8, r1
c0dea676:	4940      	ldr	r1, [pc, #256]	@ (c0dea778 <displayTagValueListModalPage+0x114>)
c0dea678:	9016      	str	r0, [sp, #88]	@ 0x58
c0dea67a:	f88d 0050 	strb.w	r0, [sp, #80]	@ 0x50
c0dea67e:	9013      	str	r0, [sp, #76]	@ 0x4c
c0dea680:	f44f 6010 	mov.w	r0, #2304	@ 0x900
c0dea684:	eb09 0406 	add.w	r4, r9, r6
c0dea688:	f8ad 0048 	strh.w	r0, [sp, #72]	@ 0x48
c0dea68c:	f44f 7081 	mov.w	r0, #258	@ 0x102
c0dea690:	9115      	str	r1, [sp, #84]	@ 0x54
c0dea692:	2140      	movs	r1, #64	@ 0x40
c0dea694:	f894 7030 	ldrb.w	r7, [r4, #48]	@ 0x30
c0dea698:	f8ad 0046 	strh.w	r0, [sp, #70]	@ 0x46
c0dea69c:	f88d 7045 	strb.w	r7, [sp, #69]	@ 0x45
c0dea6a0:	a801      	add	r0, sp, #4
c0dea6a2:	f001 f9d3 	bl	c0deba4c <__aeabi_memclr>
c0dea6a6:	2001      	movs	r0, #1
c0dea6a8:	f894 1031 	ldrb.w	r1, [r4, #49]	@ 0x31
c0dea6ac:	f894 2033 	ldrb.w	r2, [r4, #51]	@ 0x33
c0dea6b0:	f88d 0021 	strb.w	r0, [sp, #33]	@ 0x21
c0dea6b4:	2004      	movs	r0, #4
c0dea6b6:	42a9      	cmp	r1, r5
c0dea6b8:	f88d 0010 	strb.w	r0, [sp, #16]
c0dea6bc:	f88d 2022 	strb.w	r2, [sp, #34]	@ 0x22
c0dea6c0:	d91b      	bls.n	c0dea6fa <displayTagValueListModalPage+0x96>
c0dea6c2:	1c69      	adds	r1, r5, #1
c0dea6c4:	eb09 0306 	add.w	r3, r9, r6
c0dea6c8:	ea00 0281 	and.w	r2, r0, r1, lsl #2
c0dea6cc:	b2c9      	uxtb	r1, r1
c0dea6ce:	f103 0450 	add.w	r4, r3, #80	@ 0x50
c0dea6d2:	ea00 0085 	and.w	r0, r0, r5, lsl #2
c0dea6d6:	0849      	lsrs	r1, r1, #1
c0dea6d8:	5c61      	ldrb	r1, [r4, r1]
c0dea6da:	40d1      	lsrs	r1, r2
c0dea6dc:	f893 2032 	ldrb.w	r2, [r3, #50]	@ 0x32
c0dea6e0:	f001 0107 	and.w	r1, r1, #7
c0dea6e4:	1a52      	subs	r2, r2, r1
c0dea6e6:	0869      	lsrs	r1, r5, #1
c0dea6e8:	5c61      	ldrb	r1, [r4, r1]
c0dea6ea:	f883 2032 	strb.w	r2, [r3, #50]	@ 0x32
c0dea6ee:	fa21 f000 	lsr.w	r0, r1, r0
c0dea6f2:	f000 0107 	and.w	r1, r0, #7
c0dea6f6:	1a50      	subs	r0, r2, r1
c0dea6f8:	e00d      	b.n	c0dea716 <displayTagValueListModalPage+0xb2>
c0dea6fa:	eb09 0206 	add.w	r2, r9, r6
c0dea6fe:	ea00 0085 	and.w	r0, r0, r5, lsl #2
c0dea702:	eb02 0155 	add.w	r1, r2, r5, lsr #1
c0dea706:	f891 1050 	ldrb.w	r1, [r1, #80]	@ 0x50
c0dea70a:	fa21 f000 	lsr.w	r0, r1, r0
c0dea70e:	f000 0107 	and.w	r1, r0, #7
c0dea712:	f892 0032 	ldrb.w	r0, [r2, #50]	@ 0x32
c0dea716:	4b1a      	ldr	r3, [pc, #104]	@ (c0dea780 <displayTagValueListModalPage+0x11c>)
c0dea718:	eb09 0206 	add.w	r2, r9, r6
c0dea71c:	2f01      	cmp	r7, #1
c0dea71e:	f882 5031 	strb.w	r5, [r2, #49]	@ 0x31
c0dea722:	444b      	add	r3, r9
c0dea724:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
c0dea726:	681b      	ldr	r3, [r3, #0]
c0dea728:	f88d 101c 	strb.w	r1, [sp, #28]
c0dea72c:	4401      	add	r1, r0
c0dea72e:	b2c0      	uxtb	r0, r0
c0dea730:	f882 1032 	strb.w	r1, [r2, #50]	@ 0x32
c0dea734:	eb03 1000 	add.w	r0, r3, r0, lsl #4
c0dea738:	9005      	str	r0, [sp, #20]
c0dea73a:	d102      	bne.n	c0dea742 <displayTagValueListModalPage+0xde>
c0dea73c:	4811      	ldr	r0, [pc, #68]	@ (c0dea784 <displayTagValueListModalPage+0x120>)
c0dea73e:	4478      	add	r0, pc
c0dea740:	9016      	str	r0, [sp, #88]	@ 0x58
c0dea742:	eb09 0006 	add.w	r0, r9, r6
c0dea746:	6a00      	ldr	r0, [r0, #32]
c0dea748:	b108      	cbz	r0, c0dea74e <displayTagValueListModalPage+0xea>
c0dea74a:	f7fd fc1a 	bl	c0de7f82 <nbgl_pageRelease>
c0dea74e:	480e      	ldr	r0, [pc, #56]	@ (c0dea788 <displayTagValueListModalPage+0x124>)
c0dea750:	a911      	add	r1, sp, #68	@ 0x44
c0dea752:	aa01      	add	r2, sp, #4
c0dea754:	2301      	movs	r3, #1
c0dea756:	2501      	movs	r5, #1
c0dea758:	4478      	add	r0, pc
c0dea75a:	f7fd f9eb 	bl	c0de7b34 <nbgl_pageDrawGenericContentExt>
c0dea75e:	eb09 0106 	add.w	r1, r9, r6
c0dea762:	f1b8 0f00 	cmp.w	r8, #0
c0dea766:	6208      	str	r0, [r1, #32]
c0dea768:	bf18      	it	ne
c0dea76a:	2502      	movne	r5, #2
c0dea76c:	4628      	mov	r0, r5
c0dea76e:	f000 fd15 	bl	c0deb19c <nbgl_refreshSpecial>
c0dea772:	b018      	add	sp, #96	@ 0x60
c0dea774:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0dea778:	04000101 	.word	0x04000101
c0dea77c:	00000d68 	.word	0x00000d68
c0dea780:	00000ab0 	.word	0x00000ab0
c0dea784:	00002a29 	.word	0x00002a29
c0dea788:	ffffeb21 	.word	0xffffeb21

c0dea78c <bundleNavReviewChoice>:
c0dea78c:	b110      	cbz	r0, c0dea794 <bundleNavReviewChoice+0x8>
c0dea78e:	4805      	ldr	r0, [pc, #20]	@ (c0dea7a4 <bundleNavReviewChoice+0x18>)
c0dea790:	f000 b8db 	b.w	c0dea94a <OUTLINED_FUNCTION_13>
c0dea794:	4803      	ldr	r0, [pc, #12]	@ (c0dea7a4 <bundleNavReviewChoice+0x18>)
c0dea796:	f859 0000 	ldr.w	r0, [r9, r0]
c0dea79a:	4903      	ldr	r1, [pc, #12]	@ (c0dea7a8 <bundleNavReviewChoice+0x1c>)
c0dea79c:	4479      	add	r1, pc
c0dea79e:	f000 b863 	b.w	c0dea868 <bundleNavReviewAskRejectionConfirmation>
c0dea7a2:	bf00      	nop
c0dea7a4:	00000de4 	.word	0x00000de4
c0dea7a8:	0000011d 	.word	0x0000011d

c0dea7ac <initWarningTipBox>:
c0dea7ac:	4923      	ldr	r1, [pc, #140]	@ (c0dea83c <initWarningTipBox+0x90>)
c0dea7ae:	eb09 0201 	add.w	r2, r9, r1
c0dea7b2:	6f92      	ldr	r2, [r2, #120]	@ 0x78
c0dea7b4:	b15a      	cbz	r2, c0dea7ce <initWarningTipBox+0x22>
c0dea7b6:	6812      	ldr	r2, [r2, #0]
c0dea7b8:	07d3      	lsls	r3, r2, #31
c0dea7ba:	d111      	bne.n	c0dea7e0 <initWarningTipBox+0x34>
c0dea7bc:	0753      	lsls	r3, r2, #29
c0dea7be:	d415      	bmi.n	c0dea7ec <initWarningTipBox+0x40>
c0dea7c0:	0793      	lsls	r3, r2, #30
c0dea7c2:	d419      	bmi.n	c0dea7f8 <initWarningTipBox+0x4c>
c0dea7c4:	f002 0310 	and.w	r3, r2, #16
c0dea7c8:	0712      	lsls	r2, r2, #28
c0dea7ca:	d42c      	bmi.n	c0dea826 <initWarningTipBox+0x7a>
c0dea7cc:	bb9b      	cbnz	r3, c0dea836 <initWarningTipBox+0x8a>
c0dea7ce:	b348      	cbz	r0, c0dea824 <initWarningTipBox+0x78>
c0dea7d0:	491b      	ldr	r1, [pc, #108]	@ (c0dea840 <initWarningTipBox+0x94>)
c0dea7d2:	2200      	movs	r2, #0
c0dea7d4:	4449      	add	r1, r9
c0dea7d6:	620a      	str	r2, [r1, #32]
c0dea7d8:	6842      	ldr	r2, [r0, #4]
c0dea7da:	62ca      	str	r2, [r1, #44]	@ 0x2c
c0dea7dc:	6800      	ldr	r0, [r0, #0]
c0dea7de:	e01b      	b.n	c0dea818 <initWarningTipBox+0x6c>
c0dea7e0:	06d0      	lsls	r0, r2, #27
c0dea7e2:	4a18      	ldr	r2, [pc, #96]	@ (c0dea844 <initWarningTipBox+0x98>)
c0dea7e4:	4818      	ldr	r0, [pc, #96]	@ (c0dea848 <initWarningTipBox+0x9c>)
c0dea7e6:	447a      	add	r2, pc
c0dea7e8:	4478      	add	r0, pc
c0dea7ea:	e00a      	b.n	c0dea802 <initWarningTipBox+0x56>
c0dea7ec:	06d0      	lsls	r0, r2, #27
c0dea7ee:	4a17      	ldr	r2, [pc, #92]	@ (c0dea84c <initWarningTipBox+0xa0>)
c0dea7f0:	4817      	ldr	r0, [pc, #92]	@ (c0dea850 <initWarningTipBox+0xa4>)
c0dea7f2:	447a      	add	r2, pc
c0dea7f4:	4478      	add	r0, pc
c0dea7f6:	e004      	b.n	c0dea802 <initWarningTipBox+0x56>
c0dea7f8:	06d0      	lsls	r0, r2, #27
c0dea7fa:	4a16      	ldr	r2, [pc, #88]	@ (c0dea854 <initWarningTipBox+0xa8>)
c0dea7fc:	4816      	ldr	r0, [pc, #88]	@ (c0dea858 <initWarningTipBox+0xac>)
c0dea7fe:	447a      	add	r2, pc
c0dea800:	4478      	add	r0, pc
c0dea802:	bf58      	it	pl
c0dea804:	4610      	movpl	r0, r2
c0dea806:	4449      	add	r1, r9
c0dea808:	2201      	movs	r2, #1
c0dea80a:	f881 2021 	strb.w	r2, [r1, #33]	@ 0x21
c0dea80e:	490c      	ldr	r1, [pc, #48]	@ (c0dea840 <initWarningTipBox+0x94>)
c0dea810:	2200      	movs	r2, #0
c0dea812:	4449      	add	r1, r9
c0dea814:	620a      	str	r2, [r1, #32]
c0dea816:	62ca      	str	r2, [r1, #44]	@ 0x2c
c0dea818:	4909      	ldr	r1, [pc, #36]	@ (c0dea840 <initWarningTipBox+0x94>)
c0dea81a:	f640 1213 	movw	r2, #2323	@ 0x913
c0dea81e:	4449      	add	r1, r9
c0dea820:	860a      	strh	r2, [r1, #48]	@ 0x30
c0dea822:	6288      	str	r0, [r1, #40]	@ 0x28
c0dea824:	4770      	bx	lr
c0dea826:	4a0d      	ldr	r2, [pc, #52]	@ (c0dea85c <initWarningTipBox+0xb0>)
c0dea828:	480d      	ldr	r0, [pc, #52]	@ (c0dea860 <initWarningTipBox+0xb4>)
c0dea82a:	2b00      	cmp	r3, #0
c0dea82c:	4478      	add	r0, pc
c0dea82e:	447a      	add	r2, pc
c0dea830:	bf08      	it	eq
c0dea832:	4610      	moveq	r0, r2
c0dea834:	e7e7      	b.n	c0dea806 <initWarningTipBox+0x5a>
c0dea836:	480b      	ldr	r0, [pc, #44]	@ (c0dea864 <initWarningTipBox+0xb8>)
c0dea838:	4478      	add	r0, pc
c0dea83a:	e7e4      	b.n	c0dea806 <initWarningTipBox+0x5a>
c0dea83c:	00000ab0 	.word	0x00000ab0
c0dea840:	00000b40 	.word	0x00000b40
c0dea844:	0000268b 	.word	0x0000268b
c0dea848:	0000280e 	.word	0x0000280e
c0dea84c:	00002e1f 	.word	0x00002e1f
c0dea850:	0000279e 	.word	0x0000279e
c0dea854:	00002e6a 	.word	0x00002e6a
c0dea858:	00002c18 	.word	0x00002c18
c0dea85c:	00002c5d 	.word	0x00002c5d
c0dea860:	00002e55 	.word	0x00002e55
c0dea864:	00002b0d 	.word	0x00002b0d

c0dea868 <bundleNavReviewAskRejectionConfirmation>:
c0dea868:	f020 00f0 	bic.w	r0, r0, #240	@ 0xf0
c0dea86c:	b130      	cbz	r0, c0dea87c <bundleNavReviewAskRejectionConfirmation+0x14>
c0dea86e:	2801      	cmp	r0, #1
c0dea870:	d109      	bne.n	c0dea886 <bundleNavReviewAskRejectionConfirmation+0x1e>
c0dea872:	4b0d      	ldr	r3, [pc, #52]	@ (c0dea8a8 <bundleNavReviewAskRejectionConfirmation+0x40>)
c0dea874:	480d      	ldr	r0, [pc, #52]	@ (c0dea8ac <bundleNavReviewAskRejectionConfirmation+0x44>)
c0dea876:	447b      	add	r3, pc
c0dea878:	4478      	add	r0, pc
c0dea87a:	e008      	b.n	c0dea88e <bundleNavReviewAskRejectionConfirmation+0x26>
c0dea87c:	4b08      	ldr	r3, [pc, #32]	@ (c0dea8a0 <bundleNavReviewAskRejectionConfirmation+0x38>)
c0dea87e:	4809      	ldr	r0, [pc, #36]	@ (c0dea8a4 <bundleNavReviewAskRejectionConfirmation+0x3c>)
c0dea880:	447b      	add	r3, pc
c0dea882:	4478      	add	r0, pc
c0dea884:	e003      	b.n	c0dea88e <bundleNavReviewAskRejectionConfirmation+0x26>
c0dea886:	4b0a      	ldr	r3, [pc, #40]	@ (c0dea8b0 <bundleNavReviewAskRejectionConfirmation+0x48>)
c0dea888:	480a      	ldr	r0, [pc, #40]	@ (c0dea8b4 <bundleNavReviewAskRejectionConfirmation+0x4c>)
c0dea88a:	447b      	add	r3, pc
c0dea88c:	4478      	add	r0, pc
c0dea88e:	b5e0      	push	{r5, r6, r7, lr}
c0dea890:	9100      	str	r1, [sp, #0]
c0dea892:	2100      	movs	r1, #0
c0dea894:	4a08      	ldr	r2, [pc, #32]	@ (c0dea8b8 <bundleNavReviewAskRejectionConfirmation+0x50>)
c0dea896:	447a      	add	r2, pc
c0dea898:	f7fe fcc6 	bl	c0de9228 <nbgl_useCaseConfirm>
c0dea89c:	bd8c      	pop	{r2, r3, r7, pc}
c0dea89e:	bf00      	nop
c0dea8a0:	000028a5 	.word	0x000028a5
c0dea8a4:	000026fc 	.word	0x000026fc
c0dea8a8:	00002b8f 	.word	0x00002b8f
c0dea8ac:	00002f53 	.word	0x00002f53
c0dea8b0:	00002757 	.word	0x00002757
c0dea8b4:	00002c66 	.word	0x00002c66
c0dea8b8:	00002a1d 	.word	0x00002a1d

c0dea8bc <bundleNavReviewConfirmRejection>:
c0dea8bc:	4801      	ldr	r0, [pc, #4]	@ (c0dea8c4 <bundleNavReviewConfirmRejection+0x8>)
c0dea8be:	f000 b840 	b.w	c0dea942 <OUTLINED_FUNCTION_12>
c0dea8c2:	bf00      	nop
c0dea8c4:	00000de4 	.word	0x00000de4

c0dea8c8 <bundleNavReviewStreamingConfirmRejection>:
c0dea8c8:	4801      	ldr	r0, [pc, #4]	@ (c0dea8d0 <bundleNavReviewStreamingConfirmRejection+0x8>)
c0dea8ca:	f000 b83a 	b.w	c0dea942 <OUTLINED_FUNCTION_12>
c0dea8ce:	bf00      	nop
c0dea8d0:	00000de4 	.word	0x00000de4

c0dea8d4 <OUTLINED_FUNCTION_0>:
c0dea8d4:	461c      	mov	r4, r3
c0dea8d6:	4615      	mov	r5, r2
c0dea8d8:	460e      	mov	r6, r1
c0dea8da:	4607      	mov	r7, r0
c0dea8dc:	f7fd bd60 	b.w	c0de83a0 <reset_callbacks_and_context>

c0dea8e0 <OUTLINED_FUNCTION_1>:
c0dea8e0:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0dea8e4:	2301      	movs	r3, #1
c0dea8e6:	f000 bca9 	b.w	c0deb23c <nbgl_getTextHeightInWidth>

c0dea8ea <OUTLINED_FUNCTION_2>:
c0dea8ea:	f8da 0004 	ldr.w	r0, [sl, #4]
c0dea8ee:	eb00 0086 	add.w	r0, r0, r6, lsl #2
c0dea8f2:	f000 be6b 	b.w	c0deb5cc <pic>

c0dea8f6 <OUTLINED_FUNCTION_3>:
c0dea8f6:	2001      	movs	r0, #1
c0dea8f8:	f000 bc50 	b.w	c0deb19c <nbgl_refreshSpecial>

c0dea8fc <OUTLINED_FUNCTION_4>:
c0dea8fc:	2000      	movs	r0, #0
c0dea8fe:	f7fd be2d 	b.w	c0de855c <getNbPagesForGenericContents>

c0dea902 <OUTLINED_FUNCTION_5>:
c0dea902:	2008      	movs	r0, #8
c0dea904:	f7f9 b82b 	b.w	c0de395e <os_io_seph_cmd_piezo_play_tune>

c0dea908 <OUTLINED_FUNCTION_6>:
c0dea908:	f880 1088 	strb.w	r1, [r0, #136]	@ 0x88
c0dea90c:	6f81      	ldr	r1, [r0, #120]	@ 0x78
c0dea90e:	6808      	ldr	r0, [r1, #0]
c0dea910:	2800      	cmp	r0, #0
c0dea912:	4770      	bx	lr

c0dea914 <OUTLINED_FUNCTION_8>:
c0dea914:	9001      	str	r0, [sp, #4]
c0dea916:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0dea918:	9000      	str	r0, [sp, #0]
c0dea91a:	4638      	mov	r0, r7
c0dea91c:	f7fe bd90 	b.w	c0de9440 <useCaseReview>

c0dea920 <OUTLINED_FUNCTION_9>:
c0dea920:	eb09 000b 	add.w	r0, r9, fp
c0dea924:	f8d0 0084 	ldr.w	r0, [r0, #132]	@ 0x84
c0dea928:	4770      	bx	lr

c0dea92a <OUTLINED_FUNCTION_10>:
c0dea92a:	eb09 0005 	add.w	r0, r9, r5
c0dea92e:	f8d0 0080 	ldr.w	r0, [r0, #128]	@ 0x80
c0dea932:	4770      	bx	lr

c0dea934 <OUTLINED_FUNCTION_11>:
c0dea934:	f44f 7bfc 	mov.w	fp, #504	@ 0x1f8
c0dea938:	2b00      	cmp	r3, #0
c0dea93a:	4682      	mov	sl, r0
c0dea93c:	4698      	mov	r8, r3
c0dea93e:	4616      	mov	r6, r2
c0dea940:	4770      	bx	lr

c0dea942 <OUTLINED_FUNCTION_12>:
c0dea942:	4448      	add	r0, r9
c0dea944:	6841      	ldr	r1, [r0, #4]
c0dea946:	2000      	movs	r0, #0
c0dea948:	4708      	bx	r1

c0dea94a <OUTLINED_FUNCTION_13>:
c0dea94a:	4448      	add	r0, r9
c0dea94c:	6841      	ldr	r1, [r0, #4]
c0dea94e:	2001      	movs	r0, #1
c0dea950:	4708      	bx	r1

c0dea952 <OUTLINED_FUNCTION_15>:
c0dea952:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0dea956:	2300      	movs	r3, #0
c0dea958:	f000 bc75 	b.w	c0deb246 <nbgl_getTextNbLinesInWidth>

c0dea95c <OUTLINED_FUNCTION_16>:
c0dea95c:	200b      	movs	r0, #11
c0dea95e:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0dea962:	f000 bc6b 	b.w	c0deb23c <nbgl_getTextHeightInWidth>

c0dea966 <OUTLINED_FUNCTION_17>:
c0dea966:	4630      	mov	r0, r6
c0dea968:	f001 b870 	b.w	c0deba4c <__aeabi_memclr>

c0dea96c <OUTLINED_FUNCTION_18>:
c0dea96c:	f10a 0004 	add.w	r0, sl, #4
c0dea970:	f105 0110 	add.w	r1, r5, #16
c0dea974:	4770      	bx	lr

c0dea976 <OUTLINED_FUNCTION_19>:
c0dea976:	f884 0068 	strb.w	r0, [r4, #104]	@ 0x68
c0dea97a:	6de0      	ldr	r0, [r4, #92]	@ 0x5c
c0dea97c:	f7ff bd26 	b.w	c0dea3cc <displayModalDetails>

c0dea980 <bip32_path_read>:
c0dea980:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0dea984:	b10b      	cbz	r3, c0dea98a <bip32_path_read+0xa>
c0dea986:	2b0a      	cmp	r3, #10
c0dea988:	d902      	bls.n	c0dea990 <bip32_path_read+0x10>
c0dea98a:	2000      	movs	r0, #0
c0dea98c:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0dea990:	4692      	mov	sl, r2
c0dea992:	460e      	mov	r6, r1
c0dea994:	4683      	mov	fp, r0
c0dea996:	425f      	negs	r7, r3
c0dea998:	2500      	movs	r5, #0
c0dea99a:	f04f 0800 	mov.w	r8, #0
c0dea99e:	9301      	str	r3, [sp, #4]
c0dea9a0:	42af      	cmp	r7, r5
c0dea9a2:	d00c      	beq.n	c0dea9be <bip32_path_read+0x3e>
c0dea9a4:	f108 0404 	add.w	r4, r8, #4
c0dea9a8:	42b4      	cmp	r4, r6
c0dea9aa:	d808      	bhi.n	c0dea9be <bip32_path_read+0x3e>
c0dea9ac:	4658      	mov	r0, fp
c0dea9ae:	4641      	mov	r1, r8
c0dea9b0:	f000 fa6e 	bl	c0deae90 <read_u32_be>
c0dea9b4:	f84a 0008 	str.w	r0, [sl, r8]
c0dea9b8:	3d01      	subs	r5, #1
c0dea9ba:	46a0      	mov	r8, r4
c0dea9bc:	e7f0      	b.n	c0dea9a0 <bip32_path_read+0x20>
c0dea9be:	9a01      	ldr	r2, [sp, #4]
c0dea9c0:	4269      	negs	r1, r5
c0dea9c2:	2000      	movs	r0, #0
c0dea9c4:	4291      	cmp	r1, r2
c0dea9c6:	bf28      	it	cs
c0dea9c8:	2001      	movcs	r0, #1
c0dea9ca:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0dea9ce <buffer_seek_cur>:
c0dea9ce:	6882      	ldr	r2, [r0, #8]
c0dea9d0:	1889      	adds	r1, r1, r2
c0dea9d2:	d205      	bcs.n	c0dea9e0 <buffer_seek_cur+0x12>
c0dea9d4:	6842      	ldr	r2, [r0, #4]
c0dea9d6:	4291      	cmp	r1, r2
c0dea9d8:	bf9e      	ittt	ls
c0dea9da:	6081      	strls	r1, [r0, #8]
c0dea9dc:	2001      	movls	r0, #1
c0dea9de:	4770      	bxls	lr
c0dea9e0:	2000      	movs	r0, #0
c0dea9e2:	4770      	bx	lr

c0dea9e4 <buffer_read_u8>:
c0dea9e4:	b510      	push	{r4, lr}
c0dea9e6:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0dea9ea:	429a      	cmp	r2, r3
c0dea9ec:	d00a      	beq.n	c0deaa04 <buffer_read_u8+0x20>
c0dea9ee:	6804      	ldr	r4, [r0, #0]
c0dea9f0:	5ce4      	ldrb	r4, [r4, r3]
c0dea9f2:	700c      	strb	r4, [r1, #0]
c0dea9f4:	6881      	ldr	r1, [r0, #8]
c0dea9f6:	3101      	adds	r1, #1
c0dea9f8:	d206      	bcs.n	c0deaa08 <buffer_read_u8+0x24>
c0dea9fa:	6844      	ldr	r4, [r0, #4]
c0dea9fc:	42a1      	cmp	r1, r4
c0dea9fe:	bf98      	it	ls
c0deaa00:	6081      	strls	r1, [r0, #8]
c0deaa02:	e001      	b.n	c0deaa08 <buffer_read_u8+0x24>
c0deaa04:	2000      	movs	r0, #0
c0deaa06:	7008      	strb	r0, [r1, #0]
c0deaa08:	1ad0      	subs	r0, r2, r3
c0deaa0a:	bf18      	it	ne
c0deaa0c:	2001      	movne	r0, #1
c0deaa0e:	bd10      	pop	{r4, pc}

c0deaa10 <buffer_read_u64>:
c0deaa10:	b570      	push	{r4, r5, r6, lr}
c0deaa12:	f000 f87d 	bl	c0deab10 <OUTLINED_FUNCTION_0>
c0deaa16:	2e07      	cmp	r6, #7
c0deaa18:	d904      	bls.n	c0deaa24 <buffer_read_u64+0x14>
c0deaa1a:	6820      	ldr	r0, [r4, #0]
c0deaa1c:	b132      	cbz	r2, c0deaa2c <buffer_read_u64+0x1c>
c0deaa1e:	f000 fa6e 	bl	c0deaefe <read_u64_le>
c0deaa22:	e005      	b.n	c0deaa30 <buffer_read_u64+0x20>
c0deaa24:	2000      	movs	r0, #0
c0deaa26:	e9c5 0000 	strd	r0, r0, [r5]
c0deaa2a:	e00c      	b.n	c0deaa46 <buffer_read_u64+0x36>
c0deaa2c:	f000 fa3c 	bl	c0deaea8 <read_u64_be>
c0deaa30:	e9c5 0100 	strd	r0, r1, [r5]
c0deaa34:	68a0      	ldr	r0, [r4, #8]
c0deaa36:	f110 0f09 	cmn.w	r0, #9
c0deaa3a:	d804      	bhi.n	c0deaa46 <buffer_read_u64+0x36>
c0deaa3c:	6861      	ldr	r1, [r4, #4]
c0deaa3e:	3008      	adds	r0, #8
c0deaa40:	4288      	cmp	r0, r1
c0deaa42:	bf98      	it	ls
c0deaa44:	60a0      	strls	r0, [r4, #8]
c0deaa46:	2000      	movs	r0, #0
c0deaa48:	2e07      	cmp	r6, #7
c0deaa4a:	bf88      	it	hi
c0deaa4c:	2001      	movhi	r0, #1
c0deaa4e:	bd70      	pop	{r4, r5, r6, pc}

c0deaa50 <buffer_read_varint>:
c0deaa50:	b5b0      	push	{r4, r5, r7, lr}
c0deaa52:	4604      	mov	r4, r0
c0deaa54:	460d      	mov	r5, r1
c0deaa56:	6800      	ldr	r0, [r0, #0]
c0deaa58:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0deaa5c:	4410      	add	r0, r2
c0deaa5e:	1a89      	subs	r1, r1, r2
c0deaa60:	462a      	mov	r2, r5
c0deaa62:	f000 fa63 	bl	c0deaf2c <varint_read>
c0deaa66:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0deaa6a:	dd0a      	ble.n	c0deaa82 <buffer_read_varint+0x32>
c0deaa6c:	68a1      	ldr	r1, [r4, #8]
c0deaa6e:	1840      	adds	r0, r0, r1
c0deaa70:	d205      	bcs.n	c0deaa7e <buffer_read_varint+0x2e>
c0deaa72:	6861      	ldr	r1, [r4, #4]
c0deaa74:	4288      	cmp	r0, r1
c0deaa76:	bf9e      	ittt	ls
c0deaa78:	60a0      	strls	r0, [r4, #8]
c0deaa7a:	2001      	movls	r0, #1
c0deaa7c:	bdb0      	popls	{r4, r5, r7, pc}
c0deaa7e:	2000      	movs	r0, #0
c0deaa80:	bdb0      	pop	{r4, r5, r7, pc}
c0deaa82:	2000      	movs	r0, #0
c0deaa84:	e9c5 0000 	strd	r0, r0, [r5]
c0deaa88:	bdb0      	pop	{r4, r5, r7, pc}

c0deaa8a <buffer_read_bip32_path>:
c0deaa8a:	b5b0      	push	{r4, r5, r7, lr}
c0deaa8c:	4604      	mov	r4, r0
c0deaa8e:	4615      	mov	r5, r2
c0deaa90:	460a      	mov	r2, r1
c0deaa92:	6800      	ldr	r0, [r0, #0]
c0deaa94:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0deaa98:	4418      	add	r0, r3
c0deaa9a:	1ac9      	subs	r1, r1, r3
c0deaa9c:	462b      	mov	r3, r5
c0deaa9e:	f7ff ff6f 	bl	c0dea980 <bip32_path_read>
c0deaaa2:	b140      	cbz	r0, c0deaab6 <buffer_read_bip32_path+0x2c>
c0deaaa4:	68a2      	ldr	r2, [r4, #8]
c0deaaa6:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0deaaaa:	4291      	cmp	r1, r2
c0deaaac:	d303      	bcc.n	c0deaab6 <buffer_read_bip32_path+0x2c>
c0deaaae:	6862      	ldr	r2, [r4, #4]
c0deaab0:	4291      	cmp	r1, r2
c0deaab2:	bf98      	it	ls
c0deaab4:	60a1      	strls	r1, [r4, #8]
c0deaab6:	bdb0      	pop	{r4, r5, r7, pc}

c0deaab8 <buffer_copy>:
c0deaab8:	b5b0      	push	{r4, r5, r7, lr}
c0deaaba:	4614      	mov	r4, r2
c0deaabc:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0deaac0:	1a9d      	subs	r5, r3, r2
c0deaac2:	42a5      	cmp	r5, r4
c0deaac4:	d806      	bhi.n	c0deaad4 <buffer_copy+0x1c>
c0deaac6:	6800      	ldr	r0, [r0, #0]
c0deaac8:	4402      	add	r2, r0
c0deaaca:	4608      	mov	r0, r1
c0deaacc:	4611      	mov	r1, r2
c0deaace:	462a      	mov	r2, r5
c0deaad0:	f000 ffb4 	bl	c0deba3c <__aeabi_memmove>
c0deaad4:	2000      	movs	r0, #0
c0deaad6:	42a5      	cmp	r5, r4
c0deaad8:	bf98      	it	ls
c0deaada:	2001      	movls	r0, #1
c0deaadc:	bdb0      	pop	{r4, r5, r7, pc}

c0deaade <buffer_move>:
c0deaade:	b5b0      	push	{r4, r5, r7, lr}
c0deaae0:	4615      	mov	r5, r2
c0deaae2:	4604      	mov	r4, r0
c0deaae4:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0deaae8:	1a12      	subs	r2, r2, r0
c0deaaea:	42aa      	cmp	r2, r5
c0deaaec:	bf84      	itt	hi
c0deaaee:	2000      	movhi	r0, #0
c0deaaf0:	bdb0      	pophi	{r4, r5, r7, pc}
c0deaaf2:	6823      	ldr	r3, [r4, #0]
c0deaaf4:	4403      	add	r3, r0
c0deaaf6:	4608      	mov	r0, r1
c0deaaf8:	4619      	mov	r1, r3
c0deaafa:	f000 ff9f 	bl	c0deba3c <__aeabi_memmove>
c0deaafe:	68a0      	ldr	r0, [r4, #8]
c0deab00:	1940      	adds	r0, r0, r5
c0deab02:	d203      	bcs.n	c0deab0c <buffer_move+0x2e>
c0deab04:	6861      	ldr	r1, [r4, #4]
c0deab06:	4288      	cmp	r0, r1
c0deab08:	bf98      	it	ls
c0deab0a:	60a0      	strls	r0, [r4, #8]
c0deab0c:	2001      	movs	r0, #1
c0deab0e:	bdb0      	pop	{r4, r5, r7, pc}

c0deab10 <OUTLINED_FUNCTION_0>:
c0deab10:	4604      	mov	r4, r0
c0deab12:	460d      	mov	r5, r1
c0deab14:	6840      	ldr	r0, [r0, #4]
c0deab16:	68a1      	ldr	r1, [r4, #8]
c0deab18:	1a46      	subs	r6, r0, r1
c0deab1a:	4770      	bx	lr

c0deab1c <bip32_derive_with_seed_init_privkey_256>:
c0deab1c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0deab20:	b095      	sub	sp, #84	@ 0x54
c0deab22:	460d      	mov	r5, r1
c0deab24:	4607      	mov	r7, r0
c0deab26:	a904      	add	r1, sp, #16
c0deab28:	469a      	mov	sl, r3
c0deab2a:	4614      	mov	r4, r2
c0deab2c:	4628      	mov	r0, r5
c0deab2e:	f000 feb7 	bl	c0deb8a0 <cx_ecdomain_parameters_length>
c0deab32:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0deab36:	4606      	mov	r6, r0
c0deab38:	b9e0      	cbnz	r0, c0deab74 <bip32_derive_with_seed_init_privkey_256+0x58>
c0deab3a:	9804      	ldr	r0, [sp, #16]
c0deab3c:	2820      	cmp	r0, #32
c0deab3e:	d117      	bne.n	c0deab70 <bip32_derive_with_seed_init_privkey_256+0x54>
c0deab40:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0deab42:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0deab46:	ab05      	add	r3, sp, #20
c0deab48:	e9cd 3200 	strd	r3, r2, [sp]
c0deab4c:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0deab50:	4638      	mov	r0, r7
c0deab52:	4629      	mov	r1, r5
c0deab54:	4622      	mov	r2, r4
c0deab56:	4653      	mov	r3, sl
c0deab58:	f000 f818 	bl	c0deab8c <os_derive_bip32_with_seed_no_throw>
c0deab5c:	4606      	mov	r6, r0
c0deab5e:	b948      	cbnz	r0, c0deab74 <bip32_derive_with_seed_init_privkey_256+0x58>
c0deab60:	9a04      	ldr	r2, [sp, #16]
c0deab62:	a905      	add	r1, sp, #20
c0deab64:	4628      	mov	r0, r5
c0deab66:	4643      	mov	r3, r8
c0deab68:	f000 faee 	bl	c0deb148 <cx_ecfp_init_private_key_no_throw>
c0deab6c:	4606      	mov	r6, r0
c0deab6e:	e001      	b.n	c0deab74 <bip32_derive_with_seed_init_privkey_256+0x58>
c0deab70:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0deab74:	a805      	add	r0, sp, #20
c0deab76:	2140      	movs	r1, #64	@ 0x40
c0deab78:	f000 ff6c 	bl	c0deba54 <explicit_bzero>
c0deab7c:	b116      	cbz	r6, c0deab84 <bip32_derive_with_seed_init_privkey_256+0x68>
c0deab7e:	4640      	mov	r0, r8
c0deab80:	f000 f89f 	bl	c0deacc2 <OUTLINED_FUNCTION_0>
c0deab84:	4630      	mov	r0, r6
c0deab86:	b015      	add	sp, #84	@ 0x54
c0deab88:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0deab8c <os_derive_bip32_with_seed_no_throw>:
c0deab8c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0deab90:	b090      	sub	sp, #64	@ 0x40
c0deab92:	f10d 0810 	add.w	r8, sp, #16
c0deab96:	4607      	mov	r7, r0
c0deab98:	469b      	mov	fp, r3
c0deab9a:	4616      	mov	r6, r2
c0deab9c:	460c      	mov	r4, r1
c0deab9e:	4640      	mov	r0, r8
c0deaba0:	f000 ff8e 	bl	c0debac0 <setjmp>
c0deaba4:	b285      	uxth	r5, r0
c0deaba6:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0deabaa:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0deabae:	b155      	cbz	r5, c0deabc6 <os_derive_bip32_with_seed_no_throw+0x3a>
c0deabb0:	2000      	movs	r0, #0
c0deabb2:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0deabb6:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0deabb8:	f000 ff1a 	bl	c0deb9f0 <try_context_set>
c0deabbc:	2140      	movs	r1, #64	@ 0x40
c0deabbe:	4650      	mov	r0, sl
c0deabc0:	f000 ff48 	bl	c0deba54 <explicit_bzero>
c0deabc4:	e012      	b.n	c0deabec <os_derive_bip32_with_seed_no_throw+0x60>
c0deabc6:	a804      	add	r0, sp, #16
c0deabc8:	f000 ff12 	bl	c0deb9f0 <try_context_set>
c0deabcc:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0deabce:	900e      	str	r0, [sp, #56]	@ 0x38
c0deabd0:	4668      	mov	r0, sp
c0deabd2:	4632      	mov	r2, r6
c0deabd4:	465b      	mov	r3, fp
c0deabd6:	f8c0 a000 	str.w	sl, [r0]
c0deabda:	6041      	str	r1, [r0, #4]
c0deabdc:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0deabde:	6081      	str	r1, [r0, #8]
c0deabe0:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0deabe2:	60c1      	str	r1, [r0, #12]
c0deabe4:	4638      	mov	r0, r7
c0deabe6:	4621      	mov	r1, r4
c0deabe8:	f000 fe64 	bl	c0deb8b4 <os_perso_derive_node_with_seed_key>
c0deabec:	f000 fef8 	bl	c0deb9e0 <try_context_get>
c0deabf0:	4540      	cmp	r0, r8
c0deabf2:	d102      	bne.n	c0deabfa <os_derive_bip32_with_seed_no_throw+0x6e>
c0deabf4:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0deabf6:	f000 fefb 	bl	c0deb9f0 <try_context_set>
c0deabfa:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0deabfe:	b918      	cbnz	r0, c0deac08 <os_derive_bip32_with_seed_no_throw+0x7c>
c0deac00:	4628      	mov	r0, r5
c0deac02:	b010      	add	sp, #64	@ 0x40
c0deac04:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0deac08:	f000 fb47 	bl	c0deb29a <os_longjmp>

c0deac0c <bip32_derive_with_seed_get_pubkey_256>:
c0deac0c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0deac0e:	b0a1      	sub	sp, #132	@ 0x84
c0deac10:	460e      	mov	r6, r1
c0deac12:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0deac14:	9103      	str	r1, [sp, #12]
c0deac16:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0deac18:	9102      	str	r1, [sp, #8]
c0deac1a:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0deac1c:	9101      	str	r1, [sp, #4]
c0deac1e:	a917      	add	r1, sp, #92	@ 0x5c
c0deac20:	9100      	str	r1, [sp, #0]
c0deac22:	4631      	mov	r1, r6
c0deac24:	f7ff ff7a 	bl	c0deab1c <bip32_derive_with_seed_init_privkey_256>
c0deac28:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0deac2a:	4605      	mov	r5, r0
c0deac2c:	b9b8      	cbnz	r0, c0deac5e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0deac2e:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0deac30:	2301      	movs	r3, #1
c0deac32:	9000      	str	r0, [sp, #0]
c0deac34:	af04      	add	r7, sp, #16
c0deac36:	aa17      	add	r2, sp, #92	@ 0x5c
c0deac38:	4630      	mov	r0, r6
c0deac3a:	4639      	mov	r1, r7
c0deac3c:	f000 fa7f 	bl	c0deb13e <cx_ecfp_generate_pair2_no_throw>
c0deac40:	4605      	mov	r5, r0
c0deac42:	b960      	cbnz	r0, c0deac5e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0deac44:	9805      	ldr	r0, [sp, #20]
c0deac46:	2841      	cmp	r0, #65	@ 0x41
c0deac48:	d107      	bne.n	c0deac5a <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0deac4a:	f107 0108 	add.w	r1, r7, #8
c0deac4e:	4620      	mov	r0, r4
c0deac50:	2241      	movs	r2, #65	@ 0x41
c0deac52:	f000 fef1 	bl	c0deba38 <__aeabi_memcpy>
c0deac56:	2500      	movs	r5, #0
c0deac58:	e001      	b.n	c0deac5e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0deac5a:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0deac5e:	a817      	add	r0, sp, #92	@ 0x5c
c0deac60:	f000 f82f 	bl	c0deacc2 <OUTLINED_FUNCTION_0>
c0deac64:	b11d      	cbz	r5, c0deac6e <bip32_derive_with_seed_get_pubkey_256+0x62>
c0deac66:	4620      	mov	r0, r4
c0deac68:	2141      	movs	r1, #65	@ 0x41
c0deac6a:	f000 fef3 	bl	c0deba54 <explicit_bzero>
c0deac6e:	4628      	mov	r0, r5
c0deac70:	b021      	add	sp, #132	@ 0x84
c0deac72:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0deac74 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0deac74:	b5f0      	push	{r4, r5, r6, r7, lr}
c0deac76:	b08f      	sub	sp, #60	@ 0x3c
c0deac78:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0deac7a:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0deac7c:	683c      	ldr	r4, [r7, #0]
c0deac7e:	9503      	str	r5, [sp, #12]
c0deac80:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0deac82:	9502      	str	r5, [sp, #8]
c0deac84:	2500      	movs	r5, #0
c0deac86:	9501      	str	r5, [sp, #4]
c0deac88:	ad05      	add	r5, sp, #20
c0deac8a:	9500      	str	r5, [sp, #0]
c0deac8c:	f7ff ff46 	bl	c0deab1c <bip32_derive_with_seed_init_privkey_256>
c0deac90:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0deac92:	4606      	mov	r6, r0
c0deac94:	b950      	cbnz	r0, c0deacac <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0deac96:	ae14      	add	r6, sp, #80	@ 0x50
c0deac98:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0deac9a:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0deac9c:	e9cd 6500 	strd	r6, r5, [sp]
c0deaca0:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0deaca4:	a805      	add	r0, sp, #20
c0deaca6:	f000 fa45 	bl	c0deb134 <cx_ecdsa_sign_no_throw>
c0deacaa:	4606      	mov	r6, r0
c0deacac:	a805      	add	r0, sp, #20
c0deacae:	f000 f808 	bl	c0deacc2 <OUTLINED_FUNCTION_0>
c0deacb2:	b11e      	cbz	r6, c0deacbc <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0deacb4:	4628      	mov	r0, r5
c0deacb6:	4621      	mov	r1, r4
c0deacb8:	f000 fecc 	bl	c0deba54 <explicit_bzero>
c0deacbc:	4630      	mov	r0, r6
c0deacbe:	b00f      	add	sp, #60	@ 0x3c
c0deacc0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0deacc2 <OUTLINED_FUNCTION_0>:
c0deacc2:	2128      	movs	r1, #40	@ 0x28
c0deacc4:	f000 bec6 	b.w	c0deba54 <explicit_bzero>

c0deacc8 <format_hex>:
c0deacc8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0deacca:	4604      	mov	r4, r0
c0deaccc:	0048      	lsls	r0, r1, #1
c0deacce:	f100 0c01 	add.w	ip, r0, #1
c0deacd2:	459c      	cmp	ip, r3
c0deacd4:	d902      	bls.n	c0deacdc <format_hex+0x14>
c0deacd6:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0deacda:	e018      	b.n	c0dead0e <format_hex+0x46>
c0deacdc:	480d      	ldr	r0, [pc, #52]	@ (c0dead14 <format_hex+0x4c>)
c0deacde:	2500      	movs	r5, #0
c0deace0:	4478      	add	r0, pc
c0deace2:	b191      	cbz	r1, c0dead0a <format_hex+0x42>
c0deace4:	1cef      	adds	r7, r5, #3
c0deace6:	429f      	cmp	r7, r3
c0deace8:	d80d      	bhi.n	c0dead06 <format_hex+0x3e>
c0deacea:	7827      	ldrb	r7, [r4, #0]
c0deacec:	3901      	subs	r1, #1
c0deacee:	093f      	lsrs	r7, r7, #4
c0deacf0:	5dc7      	ldrb	r7, [r0, r7]
c0deacf2:	5557      	strb	r7, [r2, r5]
c0deacf4:	1957      	adds	r7, r2, r5
c0deacf6:	3502      	adds	r5, #2
c0deacf8:	f814 6b01 	ldrb.w	r6, [r4], #1
c0deacfc:	f006 060f 	and.w	r6, r6, #15
c0dead00:	5d86      	ldrb	r6, [r0, r6]
c0dead02:	707e      	strb	r6, [r7, #1]
c0dead04:	e7ed      	b.n	c0deace2 <format_hex+0x1a>
c0dead06:	f105 0c01 	add.w	ip, r5, #1
c0dead0a:	2000      	movs	r0, #0
c0dead0c:	5550      	strb	r0, [r2, r5]
c0dead0e:	4660      	mov	r0, ip
c0dead10:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0dead12:	bf00      	nop
c0dead14:	00002824 	.word	0x00002824

c0dead18 <app_ticker_event_callback>:
c0dead18:	4770      	bx	lr
	...

c0dead1c <io_event>:
c0dead1c:	b580      	push	{r7, lr}
c0dead1e:	480b      	ldr	r0, [pc, #44]	@ (c0dead4c <io_event+0x30>)
c0dead20:	f819 1000 	ldrb.w	r1, [r9, r0]
c0dead24:	2905      	cmp	r1, #5
c0dead26:	d00e      	beq.n	c0dead46 <io_event+0x2a>
c0dead28:	290e      	cmp	r1, #14
c0dead2a:	d005      	beq.n	c0dead38 <io_event+0x1c>
c0dead2c:	290c      	cmp	r1, #12
c0dead2e:	d108      	bne.n	c0dead42 <io_event+0x26>
c0dead30:	4448      	add	r0, r9
c0dead32:	f000 f92f 	bl	c0deaf94 <ux_process_finger_event>
c0dead36:	e006      	b.n	c0dead46 <io_event+0x2a>
c0dead38:	f7ff ffee 	bl	c0dead18 <app_ticker_event_callback>
c0dead3c:	f000 f980 	bl	c0deb040 <ux_process_ticker_event>
c0dead40:	e001      	b.n	c0dead46 <io_event+0x2a>
c0dead42:	f000 f9b3 	bl	c0deb0ac <ux_process_default_event>
c0dead46:	2001      	movs	r0, #1
c0dead48:	bd80      	pop	{r7, pc}
c0dead4a:	bf00      	nop
c0dead4c:	00000e44 	.word	0x00000e44

c0dead50 <io_init>:
c0dead50:	4802      	ldr	r0, [pc, #8]	@ (c0dead5c <io_init+0xc>)
c0dead52:	2101      	movs	r1, #1
c0dead54:	f809 1000 	strb.w	r1, [r9, r0]
c0dead58:	4770      	bx	lr
c0dead5a:	bf00      	nop
c0dead5c:	00000f54 	.word	0x00000f54

c0dead60 <io_recv_command>:
c0dead60:	b510      	push	{r4, lr}
c0dead62:	4c09      	ldr	r4, [pc, #36]	@ (c0dead88 <io_recv_command+0x28>)
c0dead64:	f819 0004 	ldrb.w	r0, [r9, r4]
c0dead68:	2801      	cmp	r0, #1
c0dead6a:	d104      	bne.n	c0dead76 <io_recv_command+0x16>
c0dead6c:	f000 fe16 	bl	c0deb99c <os_io_start>
c0dead70:	2000      	movs	r0, #0
c0dead72:	f809 0004 	strb.w	r0, [r9, r4]
c0dead76:	2000      	movs	r0, #0
c0dead78:	2800      	cmp	r0, #0
c0dead7a:	dc03      	bgt.n	c0dead84 <io_recv_command+0x24>
c0dead7c:	2001      	movs	r0, #1
c0dead7e:	f7f8 fe81 	bl	c0de3a84 <io_legacy_apdu_rx>
c0dead82:	e7f9      	b.n	c0dead78 <io_recv_command+0x18>
c0dead84:	bd10      	pop	{r4, pc}
c0dead86:	bf00      	nop
c0dead88:	00000f54 	.word	0x00000f54

c0dead8c <io_send_response_buffers>:
c0dead8c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0dead90:	f8df a060 	ldr.w	sl, [pc, #96]	@ c0deadf4 <io_send_response_buffers+0x68>
c0dead94:	4690      	mov	r8, r2
c0dead96:	460f      	mov	r7, r1
c0dead98:	4605      	mov	r5, r0
c0dead9a:	f240 140f 	movw	r4, #271	@ 0x10f
c0dead9e:	2600      	movs	r6, #0
c0deada0:	b1b5      	cbz	r5, c0deadd0 <io_send_response_buffers+0x44>
c0deada2:	b1af      	cbz	r7, c0deadd0 <io_send_response_buffers+0x44>
c0deada4:	2600      	movs	r6, #0
c0deada6:	b19f      	cbz	r7, c0deadd0 <io_send_response_buffers+0x44>
c0deada8:	eb09 000a 	add.w	r0, r9, sl
c0deadac:	1ba2      	subs	r2, r4, r6
c0deadae:	1981      	adds	r1, r0, r6
c0deadb0:	4628      	mov	r0, r5
c0deadb2:	f7ff fe81 	bl	c0deaab8 <buffer_copy>
c0deadb6:	b130      	cbz	r0, c0deadc6 <io_send_response_buffers+0x3a>
c0deadb8:	e9d5 0101 	ldrd	r0, r1, [r5, #4]
c0deadbc:	350c      	adds	r5, #12
c0deadbe:	3f01      	subs	r7, #1
c0deadc0:	4430      	add	r0, r6
c0deadc2:	1a46      	subs	r6, r0, r1
c0deadc4:	e7ef      	b.n	c0deada6 <io_send_response_buffers+0x1a>
c0deadc6:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0deadca:	2500      	movs	r5, #0
c0deadcc:	2700      	movs	r7, #0
c0deadce:	e7e6      	b.n	c0dead9e <io_send_response_buffers+0x12>
c0deadd0:	eb09 050a 	add.w	r5, r9, sl
c0deadd4:	fa1f f288 	uxth.w	r2, r8
c0deadd8:	4631      	mov	r1, r6
c0deadda:	4628      	mov	r0, r5
c0deaddc:	f000 f8d4 	bl	c0deaf88 <write_u16_be>
c0deade0:	1cb0      	adds	r0, r6, #2
c0deade2:	b281      	uxth	r1, r0
c0deade4:	4628      	mov	r0, r5
c0deade6:	f7f8 fe33 	bl	c0de3a50 <io_legacy_apdu_tx>
c0deadea:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0deadee:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0deadf2:	bf00      	nop
c0deadf4:	0000064c 	.word	0x0000064c

c0deadf8 <app_exit>:
c0deadf8:	20ff      	movs	r0, #255	@ 0xff
c0deadfa:	f000 fdbb 	bl	c0deb974 <os_sched_exit>

c0deadfe <common_app_init>:
c0deadfe:	b580      	push	{r7, lr}
c0deae00:	f000 f9d6 	bl	c0deb1b0 <nbgl_objInit>
c0deae04:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0deae08:	f7f8 bf68 	b.w	c0de3cdc <io_seproxyhal_init>

c0deae0c <standalone_app_main>:
c0deae0c:	b510      	push	{r4, lr}
c0deae0e:	b08c      	sub	sp, #48	@ 0x30
c0deae10:	466c      	mov	r4, sp
c0deae12:	4620      	mov	r0, r4
c0deae14:	f000 fe54 	bl	c0debac0 <setjmp>
c0deae18:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0deae1c:	0400      	lsls	r0, r0, #16
c0deae1e:	d108      	bne.n	c0deae32 <standalone_app_main+0x26>
c0deae20:	4668      	mov	r0, sp
c0deae22:	f000 fde5 	bl	c0deb9f0 <try_context_set>
c0deae26:	900a      	str	r0, [sp, #40]	@ 0x28
c0deae28:	f7ff ffe9 	bl	c0deadfe <common_app_init>
c0deae2c:	f7f5 fac0 	bl	c0de03b0 <app_main>
c0deae30:	e005      	b.n	c0deae3e <standalone_app_main+0x32>
c0deae32:	2000      	movs	r0, #0
c0deae34:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0deae38:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0deae3a:	f000 fdd9 	bl	c0deb9f0 <try_context_set>
c0deae3e:	f000 fdcf 	bl	c0deb9e0 <try_context_get>
c0deae42:	42a0      	cmp	r0, r4
c0deae44:	d102      	bne.n	c0deae4c <standalone_app_main+0x40>
c0deae46:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0deae48:	f000 fdd2 	bl	c0deb9f0 <try_context_set>
c0deae4c:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0deae50:	b908      	cbnz	r0, c0deae56 <standalone_app_main+0x4a>
c0deae52:	f7ff ffd1 	bl	c0deadf8 <app_exit>
c0deae56:	f000 fa20 	bl	c0deb29a <os_longjmp>

c0deae5a <apdu_parser>:
c0deae5a:	2a04      	cmp	r2, #4
c0deae5c:	d316      	bcc.n	c0deae8c <apdu_parser+0x32>
c0deae5e:	d102      	bne.n	c0deae66 <apdu_parser+0xc>
c0deae60:	2300      	movs	r3, #0
c0deae62:	7103      	strb	r3, [r0, #4]
c0deae64:	e004      	b.n	c0deae70 <apdu_parser+0x16>
c0deae66:	790b      	ldrb	r3, [r1, #4]
c0deae68:	3a05      	subs	r2, #5
c0deae6a:	429a      	cmp	r2, r3
c0deae6c:	7103      	strb	r3, [r0, #4]
c0deae6e:	d10d      	bne.n	c0deae8c <apdu_parser+0x32>
c0deae70:	780a      	ldrb	r2, [r1, #0]
c0deae72:	2b00      	cmp	r3, #0
c0deae74:	7002      	strb	r2, [r0, #0]
c0deae76:	784a      	ldrb	r2, [r1, #1]
c0deae78:	7042      	strb	r2, [r0, #1]
c0deae7a:	788a      	ldrb	r2, [r1, #2]
c0deae7c:	7082      	strb	r2, [r0, #2]
c0deae7e:	bf18      	it	ne
c0deae80:	1d4b      	addne	r3, r1, #5
c0deae82:	78c9      	ldrb	r1, [r1, #3]
c0deae84:	6083      	str	r3, [r0, #8]
c0deae86:	70c1      	strb	r1, [r0, #3]
c0deae88:	2001      	movs	r0, #1
c0deae8a:	4770      	bx	lr
c0deae8c:	2000      	movs	r0, #0
c0deae8e:	4770      	bx	lr

c0deae90 <read_u32_be>:
c0deae90:	5c42      	ldrb	r2, [r0, r1]
c0deae92:	4408      	add	r0, r1
c0deae94:	7841      	ldrb	r1, [r0, #1]
c0deae96:	7883      	ldrb	r3, [r0, #2]
c0deae98:	78c0      	ldrb	r0, [r0, #3]
c0deae9a:	0409      	lsls	r1, r1, #16
c0deae9c:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0deaea0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0deaea4:	4408      	add	r0, r1
c0deaea6:	4770      	bx	lr

c0deaea8 <read_u64_be>:
c0deaea8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0deaeaa:	1842      	adds	r2, r0, r1
c0deaeac:	5c40      	ldrb	r0, [r0, r1]
c0deaeae:	7917      	ldrb	r7, [r2, #4]
c0deaeb0:	7953      	ldrb	r3, [r2, #5]
c0deaeb2:	7854      	ldrb	r4, [r2, #1]
c0deaeb4:	7895      	ldrb	r5, [r2, #2]
c0deaeb6:	78d6      	ldrb	r6, [r2, #3]
c0deaeb8:	063f      	lsls	r7, r7, #24
c0deaeba:	0421      	lsls	r1, r4, #16
c0deaebc:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0deaec0:	7997      	ldrb	r7, [r2, #6]
c0deaec2:	79d2      	ldrb	r2, [r2, #7]
c0deaec4:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0deaec8:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0deaecc:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0deaed0:	1981      	adds	r1, r0, r6
c0deaed2:	441a      	add	r2, r3
c0deaed4:	4610      	mov	r0, r2
c0deaed6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0deaed8 <read_u16_le>:
c0deaed8:	5c42      	ldrb	r2, [r0, r1]
c0deaeda:	4408      	add	r0, r1
c0deaedc:	7840      	ldrb	r0, [r0, #1]
c0deaede:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0deaee2:	b280      	uxth	r0, r0
c0deaee4:	4770      	bx	lr

c0deaee6 <read_u32_le>:
c0deaee6:	5c42      	ldrb	r2, [r0, r1]
c0deaee8:	4408      	add	r0, r1
c0deaeea:	7841      	ldrb	r1, [r0, #1]
c0deaeec:	7883      	ldrb	r3, [r0, #2]
c0deaeee:	78c0      	ldrb	r0, [r0, #3]
c0deaef0:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0deaef4:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0deaef8:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0deaefc:	4770      	bx	lr

c0deaefe <read_u64_le>:
c0deaefe:	b5b0      	push	{r4, r5, r7, lr}
c0deaf00:	5c42      	ldrb	r2, [r0, r1]
c0deaf02:	4401      	add	r1, r0
c0deaf04:	7848      	ldrb	r0, [r1, #1]
c0deaf06:	788b      	ldrb	r3, [r1, #2]
c0deaf08:	790d      	ldrb	r5, [r1, #4]
c0deaf0a:	78cc      	ldrb	r4, [r1, #3]
c0deaf0c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0deaf10:	794a      	ldrb	r2, [r1, #5]
c0deaf12:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0deaf16:	798b      	ldrb	r3, [r1, #6]
c0deaf18:	79c9      	ldrb	r1, [r1, #7]
c0deaf1a:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0deaf1e:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0deaf22:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0deaf26:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0deaf2a:	bdb0      	pop	{r4, r5, r7, pc}

c0deaf2c <varint_read>:
c0deaf2c:	b510      	push	{r4, lr}
c0deaf2e:	b1d9      	cbz	r1, c0deaf68 <varint_read+0x3c>
c0deaf30:	4614      	mov	r4, r2
c0deaf32:	4602      	mov	r2, r0
c0deaf34:	7800      	ldrb	r0, [r0, #0]
c0deaf36:	28ff      	cmp	r0, #255	@ 0xff
c0deaf38:	d00c      	beq.n	c0deaf54 <varint_read+0x28>
c0deaf3a:	28fe      	cmp	r0, #254	@ 0xfe
c0deaf3c:	d012      	beq.n	c0deaf64 <varint_read+0x38>
c0deaf3e:	28fd      	cmp	r0, #253	@ 0xfd
c0deaf40:	d115      	bne.n	c0deaf6e <varint_read+0x42>
c0deaf42:	2903      	cmp	r1, #3
c0deaf44:	d310      	bcc.n	c0deaf68 <varint_read+0x3c>
c0deaf46:	4610      	mov	r0, r2
c0deaf48:	2101      	movs	r1, #1
c0deaf4a:	f7ff ffc5 	bl	c0deaed8 <read_u16_le>
c0deaf4e:	2100      	movs	r1, #0
c0deaf50:	2203      	movs	r2, #3
c0deaf52:	e015      	b.n	c0deaf80 <varint_read+0x54>
c0deaf54:	2909      	cmp	r1, #9
c0deaf56:	d307      	bcc.n	c0deaf68 <varint_read+0x3c>
c0deaf58:	4610      	mov	r0, r2
c0deaf5a:	2101      	movs	r1, #1
c0deaf5c:	f7ff ffcf 	bl	c0deaefe <read_u64_le>
c0deaf60:	2209      	movs	r2, #9
c0deaf62:	e00d      	b.n	c0deaf80 <varint_read+0x54>
c0deaf64:	2905      	cmp	r1, #5
c0deaf66:	d205      	bcs.n	c0deaf74 <varint_read+0x48>
c0deaf68:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0deaf6c:	e00a      	b.n	c0deaf84 <varint_read+0x58>
c0deaf6e:	2100      	movs	r1, #0
c0deaf70:	2201      	movs	r2, #1
c0deaf72:	e005      	b.n	c0deaf80 <varint_read+0x54>
c0deaf74:	4610      	mov	r0, r2
c0deaf76:	2101      	movs	r1, #1
c0deaf78:	f7ff ffb5 	bl	c0deaee6 <read_u32_le>
c0deaf7c:	2100      	movs	r1, #0
c0deaf7e:	2205      	movs	r2, #5
c0deaf80:	e9c4 0100 	strd	r0, r1, [r4]
c0deaf84:	4610      	mov	r0, r2
c0deaf86:	bd10      	pop	{r4, pc}

c0deaf88 <write_u16_be>:
c0deaf88:	0a13      	lsrs	r3, r2, #8
c0deaf8a:	5443      	strb	r3, [r0, r1]
c0deaf8c:	4408      	add	r0, r1
c0deaf8e:	7042      	strb	r2, [r0, #1]
c0deaf90:	4770      	bx	lr
	...

c0deaf94 <ux_process_finger_event>:
c0deaf94:	b5b0      	push	{r4, r5, r7, lr}
c0deaf96:	4604      	mov	r4, r0
c0deaf98:	2001      	movs	r0, #1
c0deaf9a:	f000 f827 	bl	c0deafec <ux_forward_event>
c0deaf9e:	4605      	mov	r5, r0
c0deafa0:	f000 f910 	bl	c0deb1c4 <nbgl_objAllowDrawing>
c0deafa4:	b1fd      	cbz	r5, c0deafe6 <ux_process_finger_event+0x52>
c0deafa6:	78e1      	ldrb	r1, [r4, #3]
c0deafa8:	480f      	ldr	r0, [pc, #60]	@ (c0deafe8 <ux_process_finger_event+0x54>)
c0deafaa:	7963      	ldrb	r3, [r4, #5]
c0deafac:	3901      	subs	r1, #1
c0deafae:	eb09 0200 	add.w	r2, r9, r0
c0deafb2:	f859 0000 	ldr.w	r0, [r9, r0]
c0deafb6:	fab1 f181 	clz	r1, r1
c0deafba:	094d      	lsrs	r5, r1, #5
c0deafbc:	4611      	mov	r1, r2
c0deafbe:	f801 5f04 	strb.w	r5, [r1, #4]!
c0deafc2:	7925      	ldrb	r5, [r4, #4]
c0deafc4:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0deafc8:	80d3      	strh	r3, [r2, #6]
c0deafca:	79a3      	ldrb	r3, [r4, #6]
c0deafcc:	79e4      	ldrb	r4, [r4, #7]
c0deafce:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0deafd2:	8113      	strh	r3, [r2, #8]
c0deafd4:	2264      	movs	r2, #100	@ 0x64
c0deafd6:	4342      	muls	r2, r0
c0deafd8:	2000      	movs	r0, #0
c0deafda:	f000 f948 	bl	c0deb26e <nbgl_touchHandler>
c0deafde:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0deafe2:	f000 b8d6 	b.w	c0deb192 <nbgl_refresh>
c0deafe6:	bdb0      	pop	{r4, r5, r7, pc}
c0deafe8:	00000f7c 	.word	0x00000f7c

c0deafec <ux_forward_event>:
c0deafec:	b5b0      	push	{r4, r5, r7, lr}
c0deafee:	4604      	mov	r4, r0
c0deaff0:	4812      	ldr	r0, [pc, #72]	@ (c0deb03c <ux_forward_event+0x50>)
c0deaff2:	2101      	movs	r1, #1
c0deaff4:	f809 1000 	strb.w	r1, [r9, r0]
c0deaff8:	eb09 0500 	add.w	r5, r9, r0
c0deaffc:	2000      	movs	r0, #0
c0deaffe:	6068      	str	r0, [r5, #4]
c0deb000:	4628      	mov	r0, r5
c0deb002:	f000 fc8d 	bl	c0deb920 <os_ux>
c0deb006:	2004      	movs	r0, #4
c0deb008:	f000 fcfc 	bl	c0deba04 <os_sched_last_status>
c0deb00c:	2869      	cmp	r0, #105	@ 0x69
c0deb00e:	6068      	str	r0, [r5, #4]
c0deb010:	d108      	bne.n	c0deb024 <ux_forward_event+0x38>
c0deb012:	2001      	movs	r0, #1
c0deb014:	f000 f8d6 	bl	c0deb1c4 <nbgl_objAllowDrawing>
c0deb018:	f000 f8e3 	bl	c0deb1e2 <nbgl_screenRedraw>
c0deb01c:	f000 f8b9 	bl	c0deb192 <nbgl_refresh>
c0deb020:	2000      	movs	r0, #0
c0deb022:	bdb0      	pop	{r4, r5, r7, pc}
c0deb024:	b144      	cbz	r4, c0deb038 <ux_forward_event+0x4c>
c0deb026:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0deb02a:	bf18      	it	ne
c0deb02c:	2101      	movne	r1, #1
c0deb02e:	2800      	cmp	r0, #0
c0deb030:	bf18      	it	ne
c0deb032:	2001      	movne	r0, #1
c0deb034:	4008      	ands	r0, r1
c0deb036:	bdb0      	pop	{r4, r5, r7, pc}
c0deb038:	2001      	movs	r0, #1
c0deb03a:	bdb0      	pop	{r4, r5, r7, pc}
c0deb03c:	00000f58 	.word	0x00000f58

c0deb040 <ux_process_ticker_event>:
c0deb040:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0deb042:	4d19      	ldr	r5, [pc, #100]	@ (c0deb0a8 <ux_process_ticker_event+0x68>)
c0deb044:	f859 0005 	ldr.w	r0, [r9, r5]
c0deb048:	3001      	adds	r0, #1
c0deb04a:	f849 0005 	str.w	r0, [r9, r5]
c0deb04e:	2001      	movs	r0, #1
c0deb050:	f7ff ffcc 	bl	c0deafec <ux_forward_event>
c0deb054:	4604      	mov	r4, r0
c0deb056:	f000 f8b5 	bl	c0deb1c4 <nbgl_objAllowDrawing>
c0deb05a:	b324      	cbz	r4, c0deb0a6 <ux_process_ticker_event+0x66>
c0deb05c:	2064      	movs	r0, #100	@ 0x64
c0deb05e:	2464      	movs	r4, #100	@ 0x64
c0deb060:	f000 f8ce 	bl	c0deb200 <nbgl_screenHandler>
c0deb064:	eb09 0005 	add.w	r0, r9, r5
c0deb068:	7900      	ldrb	r0, [r0, #4]
c0deb06a:	2801      	cmp	r0, #1
c0deb06c:	d119      	bne.n	c0deb0a2 <ux_process_ticker_event+0x62>
c0deb06e:	4668      	mov	r0, sp
c0deb070:	f000 fcd4 	bl	c0deba1c <touch_get_last_info>
c0deb074:	f8bd 0000 	ldrh.w	r0, [sp]
c0deb078:	eb09 0105 	add.w	r1, r9, r5
c0deb07c:	80c8      	strh	r0, [r1, #6]
c0deb07e:	f8bd 0002 	ldrh.w	r0, [sp, #2]
c0deb082:	8108      	strh	r0, [r1, #8]
c0deb084:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0deb088:	3801      	subs	r0, #1
c0deb08a:	fab0 f080 	clz	r0, r0
c0deb08e:	0940      	lsrs	r0, r0, #5
c0deb090:	f801 0f04 	strb.w	r0, [r1, #4]!
c0deb094:	f859 0005 	ldr.w	r0, [r9, r5]
c0deb098:	fb00 f204 	mul.w	r2, r0, r4
c0deb09c:	2000      	movs	r0, #0
c0deb09e:	f000 f8e6 	bl	c0deb26e <nbgl_touchHandler>
c0deb0a2:	f000 f876 	bl	c0deb192 <nbgl_refresh>
c0deb0a6:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0deb0a8:	00000f7c 	.word	0x00000f7c

c0deb0ac <ux_process_default_event>:
c0deb0ac:	2000      	movs	r0, #0
c0deb0ae:	f7ff bf9d 	b.w	c0deafec <ux_forward_event>

c0deb0b2 <hash_iovec_ex>:
c0deb0b2:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0deb0b6:	468a      	mov	sl, r1
c0deb0b8:	4611      	mov	r1, r2
c0deb0ba:	461a      	mov	r2, r3
c0deb0bc:	4605      	mov	r5, r0
c0deb0be:	f000 f84d 	bl	c0deb15c <cx_hash_init_ex>
c0deb0c2:	4607      	mov	r7, r0
c0deb0c4:	b9a8      	cbnz	r0, c0deb0f2 <hash_iovec_ex+0x40>
c0deb0c6:	f10d 0820 	add.w	r8, sp, #32
c0deb0ca:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0deb0ce:	1d04      	adds	r4, r0, #4
c0deb0d0:	b156      	cbz	r6, c0deb0e8 <hash_iovec_ex+0x36>
c0deb0d2:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0deb0d6:	f854 2b08 	ldr.w	r2, [r4], #8
c0deb0da:	4628      	mov	r0, r5
c0deb0dc:	f000 f843 	bl	c0deb166 <cx_hash_update>
c0deb0e0:	3e01      	subs	r6, #1
c0deb0e2:	2800      	cmp	r0, #0
c0deb0e4:	d0f4      	beq.n	c0deb0d0 <hash_iovec_ex+0x1e>
c0deb0e6:	e003      	b.n	c0deb0f0 <hash_iovec_ex+0x3e>
c0deb0e8:	4628      	mov	r0, r5
c0deb0ea:	4641      	mov	r1, r8
c0deb0ec:	f000 f831 	bl	c0deb152 <cx_hash_final>
c0deb0f0:	4607      	mov	r7, r0
c0deb0f2:	4628      	mov	r0, r5
c0deb0f4:	4651      	mov	r1, sl
c0deb0f6:	f000 fcad 	bl	c0deba54 <explicit_bzero>
c0deb0fa:	4638      	mov	r0, r7
c0deb0fc:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0deb100 <cx_keccak_256_hash_iovec>:
c0deb100:	b580      	push	{r7, lr}
c0deb102:	b0ee      	sub	sp, #440	@ 0x1b8
c0deb104:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0deb108:	a804      	add	r0, sp, #16
c0deb10a:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0deb10e:	2206      	movs	r2, #6
c0deb110:	2320      	movs	r3, #32
c0deb112:	f7ff ffce 	bl	c0deb0b2 <hash_iovec_ex>
c0deb116:	b06e      	add	sp, #440	@ 0x1b8
c0deb118:	bd80      	pop	{r7, pc}

c0deb11a <cx_blake2b_512_hash_iovec>:
c0deb11a:	b580      	push	{r7, lr}
c0deb11c:	b0c4      	sub	sp, #272	@ 0x110
c0deb11e:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0deb122:	a804      	add	r0, sp, #16
c0deb124:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0deb128:	2209      	movs	r2, #9
c0deb12a:	2340      	movs	r3, #64	@ 0x40
c0deb12c:	f7ff ffc1 	bl	c0deb0b2 <hash_iovec_ex>
c0deb130:	b044      	add	sp, #272	@ 0x110
c0deb132:	bd80      	pop	{r7, pc}

c0deb134 <cx_ecdsa_sign_no_throw>:
c0deb134:	b403      	push	{r0, r1}
c0deb136:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0deb13a:	f000 b823 	b.w	c0deb184 <cx_trampoline_helper>

c0deb13e <cx_ecfp_generate_pair2_no_throw>:
c0deb13e:	b403      	push	{r0, r1}
c0deb140:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0deb144:	f000 b81e 	b.w	c0deb184 <cx_trampoline_helper>

c0deb148 <cx_ecfp_init_private_key_no_throw>:
c0deb148:	b403      	push	{r0, r1}
c0deb14a:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0deb14e:	f000 b819 	b.w	c0deb184 <cx_trampoline_helper>

c0deb152 <cx_hash_final>:
c0deb152:	b403      	push	{r0, r1}
c0deb154:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0deb158:	f000 b814 	b.w	c0deb184 <cx_trampoline_helper>

c0deb15c <cx_hash_init_ex>:
c0deb15c:	b403      	push	{r0, r1}
c0deb15e:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0deb162:	f000 b80f 	b.w	c0deb184 <cx_trampoline_helper>

c0deb166 <cx_hash_update>:
c0deb166:	b403      	push	{r0, r1}
c0deb168:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0deb16c:	f000 b80a 	b.w	c0deb184 <cx_trampoline_helper>

c0deb170 <cx_rng_no_throw>:
c0deb170:	b403      	push	{r0, r1}
c0deb172:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0deb176:	f000 b805 	b.w	c0deb184 <cx_trampoline_helper>
	...

c0deb17c <cx_aes_siv_reset>:
c0deb17c:	b403      	push	{r0, r1}
c0deb17e:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0deb182:	e7ff      	b.n	c0deb184 <cx_trampoline_helper>

c0deb184 <cx_trampoline_helper>:
c0deb184:	4900      	ldr	r1, [pc, #0]	@ (c0deb188 <cx_trampoline_helper+0x4>)
c0deb186:	4708      	bx	r1
c0deb188:	00808001 	.word	0x00808001

c0deb18c <assert_exit>:
c0deb18c:	20ff      	movs	r0, #255	@ 0xff
c0deb18e:	f000 fbf1 	bl	c0deb974 <os_sched_exit>

c0deb192 <nbgl_refresh>:
c0deb192:	b403      	push	{r0, r1}
c0deb194:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0deb198:	f000 b878 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb19c <nbgl_refreshSpecial>:
c0deb19c:	b403      	push	{r0, r1}
c0deb19e:	f04f 0092 	mov.w	r0, #146	@ 0x92
c0deb1a2:	f000 b873 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1a6 <nbgl_refreshSpecialWithPostRefresh>:
c0deb1a6:	b403      	push	{r0, r1}
c0deb1a8:	f04f 0093 	mov.w	r0, #147	@ 0x93
c0deb1ac:	f000 b86e 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1b0 <nbgl_objInit>:
c0deb1b0:	b403      	push	{r0, r1}
c0deb1b2:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0deb1b6:	f000 b869 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1ba <nbgl_objDraw>:
c0deb1ba:	b403      	push	{r0, r1}
c0deb1bc:	f04f 0097 	mov.w	r0, #151	@ 0x97
c0deb1c0:	f000 b864 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1c4 <nbgl_objAllowDrawing>:
c0deb1c4:	b403      	push	{r0, r1}
c0deb1c6:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0deb1ca:	f000 b85f 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1ce <nbgl_screenSet>:
c0deb1ce:	b403      	push	{r0, r1}
c0deb1d0:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0deb1d4:	f000 b85a 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1d8 <nbgl_screenPush>:
c0deb1d8:	b403      	push	{r0, r1}
c0deb1da:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0deb1de:	f000 b855 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1e2 <nbgl_screenRedraw>:
c0deb1e2:	b403      	push	{r0, r1}
c0deb1e4:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0deb1e8:	f000 b850 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1ec <nbgl_screenPop>:
c0deb1ec:	b403      	push	{r0, r1}
c0deb1ee:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0deb1f2:	f000 b84b 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb1f6 <nbgl_screenUpdateTicker>:
c0deb1f6:	b403      	push	{r0, r1}
c0deb1f8:	f04f 00a4 	mov.w	r0, #164	@ 0xa4
c0deb1fc:	f000 b846 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb200 <nbgl_screenHandler>:
c0deb200:	b403      	push	{r0, r1}
c0deb202:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0deb206:	f000 b841 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb20a <nbgl_objPoolGet>:
c0deb20a:	b403      	push	{r0, r1}
c0deb20c:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0deb210:	f000 b83c 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb214 <nbgl_containerPoolGet>:
c0deb214:	b403      	push	{r0, r1}
c0deb216:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0deb21a:	f000 b837 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb21e <nbgl_getFont>:
c0deb21e:	b403      	push	{r0, r1}
c0deb220:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0deb224:	f000 b832 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb228 <nbgl_getFontHeight>:
c0deb228:	b403      	push	{r0, r1}
c0deb22a:	f04f 00ad 	mov.w	r0, #173	@ 0xad
c0deb22e:	f000 b82d 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb232 <nbgl_getFontLineHeight>:
c0deb232:	b403      	push	{r0, r1}
c0deb234:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0deb238:	f000 b828 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb23c <nbgl_getTextHeightInWidth>:
c0deb23c:	b403      	push	{r0, r1}
c0deb23e:	f04f 00b2 	mov.w	r0, #178	@ 0xb2
c0deb242:	f000 b823 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb246 <nbgl_getTextNbLinesInWidth>:
c0deb246:	b403      	push	{r0, r1}
c0deb248:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0deb24c:	f000 b81e 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb250 <nbgl_getTextWidth>:
c0deb250:	b403      	push	{r0, r1}
c0deb252:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0deb256:	f000 b819 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb25a <nbgl_getTextMaxLenInNbLines>:
c0deb25a:	b403      	push	{r0, r1}
c0deb25c:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0deb260:	f000 b814 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb264 <nbgl_textReduceOnNbLines>:
c0deb264:	b403      	push	{r0, r1}
c0deb266:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0deb26a:	f000 b80f 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb26e <nbgl_touchHandler>:
c0deb26e:	b403      	push	{r0, r1}
c0deb270:	f04f 00bb 	mov.w	r0, #187	@ 0xbb
c0deb274:	f000 b80a 	b.w	c0deb28c <nbgl_trampoline_helper>

c0deb278 <nbgl_touchGetTouchDuration>:
c0deb278:	b403      	push	{r0, r1}
c0deb27a:	f04f 00bc 	mov.w	r0, #188	@ 0xbc
c0deb27e:	f000 b805 	b.w	c0deb28c <nbgl_trampoline_helper>
	...

c0deb284 <pic_init>:
c0deb284:	b403      	push	{r0, r1}
c0deb286:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0deb28a:	e7ff      	b.n	c0deb28c <nbgl_trampoline_helper>

c0deb28c <nbgl_trampoline_helper>:
c0deb28c:	4900      	ldr	r1, [pc, #0]	@ (c0deb290 <nbgl_trampoline_helper+0x4>)
c0deb28e:	4708      	bx	r1
c0deb290:	00808001 	.word	0x00808001

c0deb294 <os_boot>:
c0deb294:	2000      	movs	r0, #0
c0deb296:	f000 bbab 	b.w	c0deb9f0 <try_context_set>

c0deb29a <os_longjmp>:
c0deb29a:	4604      	mov	r4, r0
c0deb29c:	f000 fba0 	bl	c0deb9e0 <try_context_get>
c0deb2a0:	4621      	mov	r1, r4
c0deb2a2:	f000 fc13 	bl	c0debacc <longjmp>
	...

c0deb2a8 <snprintf>:
c0deb2a8:	b081      	sub	sp, #4
c0deb2aa:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0deb2ae:	b087      	sub	sp, #28
c0deb2b0:	2800      	cmp	r0, #0
c0deb2b2:	930f      	str	r3, [sp, #60]	@ 0x3c
c0deb2b4:	f000 817a 	beq.w	c0deb5ac <snprintf+0x304>
c0deb2b8:	460d      	mov	r5, r1
c0deb2ba:	2900      	cmp	r1, #0
c0deb2bc:	f000 8176 	beq.w	c0deb5ac <snprintf+0x304>
c0deb2c0:	4629      	mov	r1, r5
c0deb2c2:	4616      	mov	r6, r2
c0deb2c4:	4604      	mov	r4, r0
c0deb2c6:	f000 fbc1 	bl	c0deba4c <__aeabi_memclr>
c0deb2ca:	f1b5 0801 	subs.w	r8, r5, #1
c0deb2ce:	f000 816d 	beq.w	c0deb5ac <snprintf+0x304>
c0deb2d2:	a80f      	add	r0, sp, #60	@ 0x3c
c0deb2d4:	9002      	str	r0, [sp, #8]
c0deb2d6:	7830      	ldrb	r0, [r6, #0]
c0deb2d8:	2800      	cmp	r0, #0
c0deb2da:	f000 8167 	beq.w	c0deb5ac <snprintf+0x304>
c0deb2de:	2700      	movs	r7, #0
c0deb2e0:	b128      	cbz	r0, c0deb2ee <snprintf+0x46>
c0deb2e2:	2825      	cmp	r0, #37	@ 0x25
c0deb2e4:	d003      	beq.n	c0deb2ee <snprintf+0x46>
c0deb2e6:	19f0      	adds	r0, r6, r7
c0deb2e8:	3701      	adds	r7, #1
c0deb2ea:	7840      	ldrb	r0, [r0, #1]
c0deb2ec:	e7f8      	b.n	c0deb2e0 <snprintf+0x38>
c0deb2ee:	4547      	cmp	r7, r8
c0deb2f0:	bf28      	it	cs
c0deb2f2:	4647      	movcs	r7, r8
c0deb2f4:	4620      	mov	r0, r4
c0deb2f6:	4631      	mov	r1, r6
c0deb2f8:	463a      	mov	r2, r7
c0deb2fa:	f000 fb9f 	bl	c0deba3c <__aeabi_memmove>
c0deb2fe:	ebb8 0807 	subs.w	r8, r8, r7
c0deb302:	f000 8153 	beq.w	c0deb5ac <snprintf+0x304>
c0deb306:	5df1      	ldrb	r1, [r6, r7]
c0deb308:	19f0      	adds	r0, r6, r7
c0deb30a:	443c      	add	r4, r7
c0deb30c:	4606      	mov	r6, r0
c0deb30e:	2925      	cmp	r1, #37	@ 0x25
c0deb310:	d1e1      	bne.n	c0deb2d6 <snprintf+0x2e>
c0deb312:	1c41      	adds	r1, r0, #1
c0deb314:	f04f 0b00 	mov.w	fp, #0
c0deb318:	f04f 0e20 	mov.w	lr, #32
c0deb31c:	2500      	movs	r5, #0
c0deb31e:	2600      	movs	r6, #0
c0deb320:	3101      	adds	r1, #1
c0deb322:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0deb326:	4632      	mov	r2, r6
c0deb328:	3101      	adds	r1, #1
c0deb32a:	2600      	movs	r6, #0
c0deb32c:	2b2d      	cmp	r3, #45	@ 0x2d
c0deb32e:	d0f8      	beq.n	c0deb322 <snprintf+0x7a>
c0deb330:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0deb334:	2e0a      	cmp	r6, #10
c0deb336:	d313      	bcc.n	c0deb360 <snprintf+0xb8>
c0deb338:	2b25      	cmp	r3, #37	@ 0x25
c0deb33a:	d046      	beq.n	c0deb3ca <snprintf+0x122>
c0deb33c:	2b2a      	cmp	r3, #42	@ 0x2a
c0deb33e:	d01f      	beq.n	c0deb380 <snprintf+0xd8>
c0deb340:	2b2e      	cmp	r3, #46	@ 0x2e
c0deb342:	d129      	bne.n	c0deb398 <snprintf+0xf0>
c0deb344:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0deb348:	2a2a      	cmp	r2, #42	@ 0x2a
c0deb34a:	d13c      	bne.n	c0deb3c6 <snprintf+0x11e>
c0deb34c:	780a      	ldrb	r2, [r1, #0]
c0deb34e:	2a48      	cmp	r2, #72	@ 0x48
c0deb350:	d003      	beq.n	c0deb35a <snprintf+0xb2>
c0deb352:	2a73      	cmp	r2, #115	@ 0x73
c0deb354:	d001      	beq.n	c0deb35a <snprintf+0xb2>
c0deb356:	2a68      	cmp	r2, #104	@ 0x68
c0deb358:	d135      	bne.n	c0deb3c6 <snprintf+0x11e>
c0deb35a:	9a02      	ldr	r2, [sp, #8]
c0deb35c:	2601      	movs	r6, #1
c0deb35e:	e017      	b.n	c0deb390 <snprintf+0xe8>
c0deb360:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0deb364:	ea56 060b 	orrs.w	r6, r6, fp
c0deb368:	bf08      	it	eq
c0deb36a:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0deb36e:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0deb372:	3901      	subs	r1, #1
c0deb374:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0deb378:	4616      	mov	r6, r2
c0deb37a:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0deb37e:	e7cf      	b.n	c0deb320 <snprintf+0x78>
c0deb380:	460b      	mov	r3, r1
c0deb382:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0deb386:	2a73      	cmp	r2, #115	@ 0x73
c0deb388:	d11d      	bne.n	c0deb3c6 <snprintf+0x11e>
c0deb38a:	9a02      	ldr	r2, [sp, #8]
c0deb38c:	2602      	movs	r6, #2
c0deb38e:	4619      	mov	r1, r3
c0deb390:	1d13      	adds	r3, r2, #4
c0deb392:	9302      	str	r3, [sp, #8]
c0deb394:	6815      	ldr	r5, [r2, #0]
c0deb396:	e7c3      	b.n	c0deb320 <snprintf+0x78>
c0deb398:	2b48      	cmp	r3, #72	@ 0x48
c0deb39a:	d018      	beq.n	c0deb3ce <snprintf+0x126>
c0deb39c:	2b58      	cmp	r3, #88	@ 0x58
c0deb39e:	d019      	beq.n	c0deb3d4 <snprintf+0x12c>
c0deb3a0:	2b63      	cmp	r3, #99	@ 0x63
c0deb3a2:	d020      	beq.n	c0deb3e6 <snprintf+0x13e>
c0deb3a4:	2b64      	cmp	r3, #100	@ 0x64
c0deb3a6:	d02a      	beq.n	c0deb3fe <snprintf+0x156>
c0deb3a8:	2b68      	cmp	r3, #104	@ 0x68
c0deb3aa:	d036      	beq.n	c0deb41a <snprintf+0x172>
c0deb3ac:	2b70      	cmp	r3, #112	@ 0x70
c0deb3ae:	d006      	beq.n	c0deb3be <snprintf+0x116>
c0deb3b0:	2b73      	cmp	r3, #115	@ 0x73
c0deb3b2:	d037      	beq.n	c0deb424 <snprintf+0x17c>
c0deb3b4:	2b75      	cmp	r3, #117	@ 0x75
c0deb3b6:	f000 8081 	beq.w	c0deb4bc <snprintf+0x214>
c0deb3ba:	2b78      	cmp	r3, #120	@ 0x78
c0deb3bc:	d103      	bne.n	c0deb3c6 <snprintf+0x11e>
c0deb3be:	9400      	str	r4, [sp, #0]
c0deb3c0:	f04f 0c00 	mov.w	ip, #0
c0deb3c4:	e009      	b.n	c0deb3da <snprintf+0x132>
c0deb3c6:	1e4e      	subs	r6, r1, #1
c0deb3c8:	e785      	b.n	c0deb2d6 <snprintf+0x2e>
c0deb3ca:	2025      	movs	r0, #37	@ 0x25
c0deb3cc:	e00f      	b.n	c0deb3ee <snprintf+0x146>
c0deb3ce:	487b      	ldr	r0, [pc, #492]	@ (c0deb5bc <snprintf+0x314>)
c0deb3d0:	4478      	add	r0, pc
c0deb3d2:	e024      	b.n	c0deb41e <snprintf+0x176>
c0deb3d4:	f04f 0c01 	mov.w	ip, #1
c0deb3d8:	9400      	str	r4, [sp, #0]
c0deb3da:	9a02      	ldr	r2, [sp, #8]
c0deb3dc:	2400      	movs	r4, #0
c0deb3de:	1d13      	adds	r3, r2, #4
c0deb3e0:	9302      	str	r3, [sp, #8]
c0deb3e2:	2310      	movs	r3, #16
c0deb3e4:	e072      	b.n	c0deb4cc <snprintf+0x224>
c0deb3e6:	9802      	ldr	r0, [sp, #8]
c0deb3e8:	1d02      	adds	r2, r0, #4
c0deb3ea:	9202      	str	r2, [sp, #8]
c0deb3ec:	6800      	ldr	r0, [r0, #0]
c0deb3ee:	1e4e      	subs	r6, r1, #1
c0deb3f0:	f804 0b01 	strb.w	r0, [r4], #1
c0deb3f4:	f1b8 0801 	subs.w	r8, r8, #1
c0deb3f8:	f47f af6d 	bne.w	c0deb2d6 <snprintf+0x2e>
c0deb3fc:	e0d6      	b.n	c0deb5ac <snprintf+0x304>
c0deb3fe:	9a02      	ldr	r2, [sp, #8]
c0deb400:	9400      	str	r4, [sp, #0]
c0deb402:	1d13      	adds	r3, r2, #4
c0deb404:	9302      	str	r3, [sp, #8]
c0deb406:	6813      	ldr	r3, [r2, #0]
c0deb408:	2b00      	cmp	r3, #0
c0deb40a:	461a      	mov	r2, r3
c0deb40c:	d500      	bpl.n	c0deb410 <snprintf+0x168>
c0deb40e:	425a      	negs	r2, r3
c0deb410:	0fdc      	lsrs	r4, r3, #31
c0deb412:	f04f 0c00 	mov.w	ip, #0
c0deb416:	230a      	movs	r3, #10
c0deb418:	e059      	b.n	c0deb4ce <snprintf+0x226>
c0deb41a:	4869      	ldr	r0, [pc, #420]	@ (c0deb5c0 <snprintf+0x318>)
c0deb41c:	4478      	add	r0, pc
c0deb41e:	f04f 0c01 	mov.w	ip, #1
c0deb422:	e003      	b.n	c0deb42c <snprintf+0x184>
c0deb424:	4864      	ldr	r0, [pc, #400]	@ (c0deb5b8 <snprintf+0x310>)
c0deb426:	f04f 0c00 	mov.w	ip, #0
c0deb42a:	4478      	add	r0, pc
c0deb42c:	9b02      	ldr	r3, [sp, #8]
c0deb42e:	b2d2      	uxtb	r2, r2
c0deb430:	1d1e      	adds	r6, r3, #4
c0deb432:	9602      	str	r6, [sp, #8]
c0deb434:	1e4e      	subs	r6, r1, #1
c0deb436:	6819      	ldr	r1, [r3, #0]
c0deb438:	2a02      	cmp	r2, #2
c0deb43a:	f000 80a7 	beq.w	c0deb58c <snprintf+0x2e4>
c0deb43e:	2a01      	cmp	r2, #1
c0deb440:	d007      	beq.n	c0deb452 <snprintf+0x1aa>
c0deb442:	463d      	mov	r5, r7
c0deb444:	b92a      	cbnz	r2, c0deb452 <snprintf+0x1aa>
c0deb446:	2200      	movs	r2, #0
c0deb448:	5c8b      	ldrb	r3, [r1, r2]
c0deb44a:	3201      	adds	r2, #1
c0deb44c:	2b00      	cmp	r3, #0
c0deb44e:	d1fb      	bne.n	c0deb448 <snprintf+0x1a0>
c0deb450:	1e55      	subs	r5, r2, #1
c0deb452:	f1bc 0f00 	cmp.w	ip, #0
c0deb456:	d016      	beq.n	c0deb486 <snprintf+0x1de>
c0deb458:	2d00      	cmp	r5, #0
c0deb45a:	f43f af3c 	beq.w	c0deb2d6 <snprintf+0x2e>
c0deb45e:	f1b8 0f02 	cmp.w	r8, #2
c0deb462:	f0c0 80a3 	bcc.w	c0deb5ac <snprintf+0x304>
c0deb466:	780a      	ldrb	r2, [r1, #0]
c0deb468:	0913      	lsrs	r3, r2, #4
c0deb46a:	f002 020f 	and.w	r2, r2, #15
c0deb46e:	5cc3      	ldrb	r3, [r0, r3]
c0deb470:	f1b8 0802 	subs.w	r8, r8, #2
c0deb474:	7023      	strb	r3, [r4, #0]
c0deb476:	5c82      	ldrb	r2, [r0, r2]
c0deb478:	7062      	strb	r2, [r4, #1]
c0deb47a:	f000 8097 	beq.w	c0deb5ac <snprintf+0x304>
c0deb47e:	3101      	adds	r1, #1
c0deb480:	3d01      	subs	r5, #1
c0deb482:	3402      	adds	r4, #2
c0deb484:	e7e8      	b.n	c0deb458 <snprintf+0x1b0>
c0deb486:	4545      	cmp	r5, r8
c0deb488:	bf28      	it	cs
c0deb48a:	4645      	movcs	r5, r8
c0deb48c:	4620      	mov	r0, r4
c0deb48e:	462a      	mov	r2, r5
c0deb490:	f000 fad4 	bl	c0deba3c <__aeabi_memmove>
c0deb494:	ebb8 0805 	subs.w	r8, r8, r5
c0deb498:	f000 8088 	beq.w	c0deb5ac <snprintf+0x304>
c0deb49c:	462f      	mov	r7, r5
c0deb49e:	442c      	add	r4, r5
c0deb4a0:	45bb      	cmp	fp, r7
c0deb4a2:	f67f af18 	bls.w	c0deb2d6 <snprintf+0x2e>
c0deb4a6:	ebab 0507 	sub.w	r5, fp, r7
c0deb4aa:	4620      	mov	r0, r4
c0deb4ac:	4545      	cmp	r5, r8
c0deb4ae:	bf28      	it	cs
c0deb4b0:	4645      	movcs	r5, r8
c0deb4b2:	4629      	mov	r1, r5
c0deb4b4:	2220      	movs	r2, #32
c0deb4b6:	f000 fac3 	bl	c0deba40 <__aeabi_memset>
c0deb4ba:	e061      	b.n	c0deb580 <snprintf+0x2d8>
c0deb4bc:	9a02      	ldr	r2, [sp, #8]
c0deb4be:	9400      	str	r4, [sp, #0]
c0deb4c0:	2400      	movs	r4, #0
c0deb4c2:	f04f 0c00 	mov.w	ip, #0
c0deb4c6:	1d13      	adds	r3, r2, #4
c0deb4c8:	9302      	str	r3, [sp, #8]
c0deb4ca:	230a      	movs	r3, #10
c0deb4cc:	6812      	ldr	r2, [r2, #0]
c0deb4ce:	483d      	ldr	r0, [pc, #244]	@ (c0deb5c4 <snprintf+0x31c>)
c0deb4d0:	1e4e      	subs	r6, r1, #1
c0deb4d2:	f04f 0a01 	mov.w	sl, #1
c0deb4d6:	4478      	add	r0, pc
c0deb4d8:	9001      	str	r0, [sp, #4]
c0deb4da:	fba3 570a 	umull	r5, r7, r3, sl
c0deb4de:	2f00      	cmp	r7, #0
c0deb4e0:	bf18      	it	ne
c0deb4e2:	2701      	movne	r7, #1
c0deb4e4:	4295      	cmp	r5, r2
c0deb4e6:	d804      	bhi.n	c0deb4f2 <snprintf+0x24a>
c0deb4e8:	b91f      	cbnz	r7, c0deb4f2 <snprintf+0x24a>
c0deb4ea:	f1ab 0b01 	sub.w	fp, fp, #1
c0deb4ee:	46aa      	mov	sl, r5
c0deb4f0:	e7f3      	b.n	c0deb4da <snprintf+0x232>
c0deb4f2:	2c00      	cmp	r4, #0
c0deb4f4:	4627      	mov	r7, r4
c0deb4f6:	f04f 0500 	mov.w	r5, #0
c0deb4fa:	bf18      	it	ne
c0deb4fc:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0deb500:	d00d      	beq.n	c0deb51e <snprintf+0x276>
c0deb502:	4660      	mov	r0, ip
c0deb504:	fa5f fc8e 	uxtb.w	ip, lr
c0deb508:	a903      	add	r1, sp, #12
c0deb50a:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0deb50e:	4684      	mov	ip, r0
c0deb510:	d106      	bne.n	c0deb520 <snprintf+0x278>
c0deb512:	202d      	movs	r0, #45	@ 0x2d
c0deb514:	2400      	movs	r4, #0
c0deb516:	2501      	movs	r5, #1
c0deb518:	f88d 000c 	strb.w	r0, [sp, #12]
c0deb51c:	e000      	b.n	c0deb520 <snprintf+0x278>
c0deb51e:	a903      	add	r1, sp, #12
c0deb520:	eb07 000b 	add.w	r0, r7, fp
c0deb524:	3802      	subs	r0, #2
c0deb526:	280d      	cmp	r0, #13
c0deb528:	d808      	bhi.n	c0deb53c <snprintf+0x294>
c0deb52a:	f1c7 0701 	rsb	r7, r7, #1
c0deb52e:	45bb      	cmp	fp, r7
c0deb530:	d004      	beq.n	c0deb53c <snprintf+0x294>
c0deb532:	f801 e005 	strb.w	lr, [r1, r5]
c0deb536:	3701      	adds	r7, #1
c0deb538:	3501      	adds	r5, #1
c0deb53a:	e7f8      	b.n	c0deb52e <snprintf+0x286>
c0deb53c:	9f01      	ldr	r7, [sp, #4]
c0deb53e:	b114      	cbz	r4, c0deb546 <snprintf+0x29e>
c0deb540:	202d      	movs	r0, #45	@ 0x2d
c0deb542:	5548      	strb	r0, [r1, r5]
c0deb544:	3501      	adds	r5, #1
c0deb546:	4820      	ldr	r0, [pc, #128]	@ (c0deb5c8 <snprintf+0x320>)
c0deb548:	f1bc 0f00 	cmp.w	ip, #0
c0deb54c:	4478      	add	r0, pc
c0deb54e:	bf08      	it	eq
c0deb550:	4638      	moveq	r0, r7
c0deb552:	f1ba 0f00 	cmp.w	sl, #0
c0deb556:	d00b      	beq.n	c0deb570 <snprintf+0x2c8>
c0deb558:	fbb2 f7fa 	udiv	r7, r2, sl
c0deb55c:	fbba faf3 	udiv	sl, sl, r3
c0deb560:	fbb7 f4f3 	udiv	r4, r7, r3
c0deb564:	fb04 7413 	mls	r4, r4, r3, r7
c0deb568:	5d04      	ldrb	r4, [r0, r4]
c0deb56a:	554c      	strb	r4, [r1, r5]
c0deb56c:	3501      	adds	r5, #1
c0deb56e:	e7f0      	b.n	c0deb552 <snprintf+0x2aa>
c0deb570:	4545      	cmp	r5, r8
c0deb572:	bf28      	it	cs
c0deb574:	4645      	movcs	r5, r8
c0deb576:	9c00      	ldr	r4, [sp, #0]
c0deb578:	462a      	mov	r2, r5
c0deb57a:	4620      	mov	r0, r4
c0deb57c:	f000 fa5e 	bl	c0deba3c <__aeabi_memmove>
c0deb580:	ebb8 0805 	subs.w	r8, r8, r5
c0deb584:	442c      	add	r4, r5
c0deb586:	f47f aea6 	bne.w	c0deb2d6 <snprintf+0x2e>
c0deb58a:	e00f      	b.n	c0deb5ac <snprintf+0x304>
c0deb58c:	7808      	ldrb	r0, [r1, #0]
c0deb58e:	2800      	cmp	r0, #0
c0deb590:	f47f aea1 	bne.w	c0deb2d6 <snprintf+0x2e>
c0deb594:	4545      	cmp	r5, r8
c0deb596:	bf28      	it	cs
c0deb598:	4645      	movcs	r5, r8
c0deb59a:	4620      	mov	r0, r4
c0deb59c:	4629      	mov	r1, r5
c0deb59e:	2220      	movs	r2, #32
c0deb5a0:	f000 fa4e 	bl	c0deba40 <__aeabi_memset>
c0deb5a4:	ebb8 0805 	subs.w	r8, r8, r5
c0deb5a8:	f47f af79 	bne.w	c0deb49e <snprintf+0x1f6>
c0deb5ac:	2000      	movs	r0, #0
c0deb5ae:	b007      	add	sp, #28
c0deb5b0:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0deb5b4:	b001      	add	sp, #4
c0deb5b6:	4770      	bx	lr
c0deb5b8:	00003452 	.word	0x00003452
c0deb5bc:	000034bc 	.word	0x000034bc
c0deb5c0:	00003460 	.word	0x00003460
c0deb5c4:	000033a6 	.word	0x000033a6
c0deb5c8:	00003340 	.word	0x00003340

c0deb5cc <pic>:
c0deb5cc:	4a0a      	ldr	r2, [pc, #40]	@ (c0deb5f8 <pic+0x2c>)
c0deb5ce:	4282      	cmp	r2, r0
c0deb5d0:	490a      	ldr	r1, [pc, #40]	@ (c0deb5fc <pic+0x30>)
c0deb5d2:	d806      	bhi.n	c0deb5e2 <pic+0x16>
c0deb5d4:	4281      	cmp	r1, r0
c0deb5d6:	d304      	bcc.n	c0deb5e2 <pic+0x16>
c0deb5d8:	b580      	push	{r7, lr}
c0deb5da:	f000 f815 	bl	c0deb608 <pic_internal>
c0deb5de:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0deb5e2:	4907      	ldr	r1, [pc, #28]	@ (c0deb600 <pic+0x34>)
c0deb5e4:	4288      	cmp	r0, r1
c0deb5e6:	4a07      	ldr	r2, [pc, #28]	@ (c0deb604 <pic+0x38>)
c0deb5e8:	d304      	bcc.n	c0deb5f4 <pic+0x28>
c0deb5ea:	4290      	cmp	r0, r2
c0deb5ec:	d802      	bhi.n	c0deb5f4 <pic+0x28>
c0deb5ee:	1a40      	subs	r0, r0, r1
c0deb5f0:	4649      	mov	r1, r9
c0deb5f2:	4408      	add	r0, r1
c0deb5f4:	4770      	bx	lr
c0deb5f6:	0000      	movs	r0, r0
c0deb5f8:	c0de0000 	.word	0xc0de0000
c0deb5fc:	c0deed0c 	.word	0xc0deed0c
c0deb600:	da7a0000 	.word	0xda7a0000
c0deb604:	da7a9000 	.word	0xda7a9000

c0deb608 <pic_internal>:
c0deb608:	467a      	mov	r2, pc
c0deb60a:	4902      	ldr	r1, [pc, #8]	@ (c0deb614 <pic_internal+0xc>)
c0deb60c:	1cc9      	adds	r1, r1, #3
c0deb60e:	1a89      	subs	r1, r1, r2
c0deb610:	1a40      	subs	r0, r0, r1
c0deb612:	4770      	bx	lr
c0deb614:	c0deb609 	.word	0xc0deb609

c0deb618 <SVC_Call>:
c0deb618:	df01      	svc	1
c0deb61a:	2900      	cmp	r1, #0
c0deb61c:	d100      	bne.n	c0deb620 <exception>
c0deb61e:	4770      	bx	lr

c0deb620 <exception>:
c0deb620:	4608      	mov	r0, r1
c0deb622:	f7ff fe3a 	bl	c0deb29a <os_longjmp>
	...

c0deb628 <SVC_cx_call>:
c0deb628:	df01      	svc	1
c0deb62a:	4770      	bx	lr

c0deb62c <nbgl_wait_pipeline>:
c0deb62c:	b5e0      	push	{r5, r6, r7, lr}
c0deb62e:	2000      	movs	r0, #0
c0deb630:	9001      	str	r0, [sp, #4]
c0deb632:	4802      	ldr	r0, [pc, #8]	@ (c0deb63c <nbgl_wait_pipeline+0x10>)
c0deb634:	a901      	add	r1, sp, #4
c0deb636:	f7ff ffef 	bl	c0deb618 <SVC_Call>
c0deb63a:	bd8c      	pop	{r2, r3, r7, pc}
c0deb63c:	00fa0011 	.word	0x00fa0011

c0deb640 <nvm_write>:
c0deb640:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb642:	ab01      	add	r3, sp, #4
c0deb644:	c307      	stmia	r3!, {r0, r1, r2}
c0deb646:	4802      	ldr	r0, [pc, #8]	@ (c0deb650 <nvm_write+0x10>)
c0deb648:	a901      	add	r1, sp, #4
c0deb64a:	f7ff ffe5 	bl	c0deb618 <SVC_Call>
c0deb64e:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0deb650:	03000003 	.word	0x03000003

c0deb654 <cx_bn_lock>:
c0deb654:	b5e0      	push	{r5, r6, r7, lr}
c0deb656:	e9cd 0100 	strd	r0, r1, [sp]
c0deb65a:	4802      	ldr	r0, [pc, #8]	@ (c0deb664 <cx_bn_lock+0x10>)
c0deb65c:	4669      	mov	r1, sp
c0deb65e:	f7ff ffe3 	bl	c0deb628 <SVC_cx_call>
c0deb662:	bd8c      	pop	{r2, r3, r7, pc}
c0deb664:	02000112 	.word	0x02000112

c0deb668 <cx_bn_unlock>:
c0deb668:	b5e0      	push	{r5, r6, r7, lr}
c0deb66a:	2000      	movs	r0, #0
c0deb66c:	4669      	mov	r1, sp
c0deb66e:	9001      	str	r0, [sp, #4]
c0deb670:	20b6      	movs	r0, #182	@ 0xb6
c0deb672:	f7ff ffd9 	bl	c0deb628 <SVC_cx_call>
c0deb676:	bd8c      	pop	{r2, r3, r7, pc}

c0deb678 <cx_bn_alloc>:
c0deb678:	b5e0      	push	{r5, r6, r7, lr}
c0deb67a:	e9cd 0100 	strd	r0, r1, [sp]
c0deb67e:	4802      	ldr	r0, [pc, #8]	@ (c0deb688 <cx_bn_alloc+0x10>)
c0deb680:	4669      	mov	r1, sp
c0deb682:	f7ff ffd1 	bl	c0deb628 <SVC_cx_call>
c0deb686:	bd8c      	pop	{r2, r3, r7, pc}
c0deb688:	02000113 	.word	0x02000113

c0deb68c <cx_bn_alloc_init>:
c0deb68c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb68e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deb692:	4803      	ldr	r0, [pc, #12]	@ (c0deb6a0 <cx_bn_alloc_init+0x14>)
c0deb694:	4669      	mov	r1, sp
c0deb696:	f7ff ffc7 	bl	c0deb628 <SVC_cx_call>
c0deb69a:	b004      	add	sp, #16
c0deb69c:	bd80      	pop	{r7, pc}
c0deb69e:	bf00      	nop
c0deb6a0:	04000114 	.word	0x04000114

c0deb6a4 <cx_bn_destroy>:
c0deb6a4:	b5e0      	push	{r5, r6, r7, lr}
c0deb6a6:	f000 f9c3 	bl	c0deba30 <OUTLINED_FUNCTION_0>
c0deb6aa:	4802      	ldr	r0, [pc, #8]	@ (c0deb6b4 <cx_bn_destroy+0x10>)
c0deb6ac:	4669      	mov	r1, sp
c0deb6ae:	f7ff ffbb 	bl	c0deb628 <SVC_cx_call>
c0deb6b2:	bd8c      	pop	{r2, r3, r7, pc}
c0deb6b4:	010000bc 	.word	0x010000bc

c0deb6b8 <cx_bn_nbytes>:
c0deb6b8:	b5e0      	push	{r5, r6, r7, lr}
c0deb6ba:	e9cd 0100 	strd	r0, r1, [sp]
c0deb6be:	4802      	ldr	r0, [pc, #8]	@ (c0deb6c8 <cx_bn_nbytes+0x10>)
c0deb6c0:	4669      	mov	r1, sp
c0deb6c2:	f7ff ffb1 	bl	c0deb628 <SVC_cx_call>
c0deb6c6:	bd8c      	pop	{r2, r3, r7, pc}
c0deb6c8:	0200010d 	.word	0x0200010d

c0deb6cc <cx_bn_init>:
c0deb6cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb6ce:	ab01      	add	r3, sp, #4
c0deb6d0:	c307      	stmia	r3!, {r0, r1, r2}
c0deb6d2:	4803      	ldr	r0, [pc, #12]	@ (c0deb6e0 <cx_bn_init+0x14>)
c0deb6d4:	a901      	add	r1, sp, #4
c0deb6d6:	f7ff ffa7 	bl	c0deb628 <SVC_cx_call>
c0deb6da:	b004      	add	sp, #16
c0deb6dc:	bd80      	pop	{r7, pc}
c0deb6de:	bf00      	nop
c0deb6e0:	03000115 	.word	0x03000115

c0deb6e4 <cx_bn_copy>:
c0deb6e4:	b5e0      	push	{r5, r6, r7, lr}
c0deb6e6:	e9cd 0100 	strd	r0, r1, [sp]
c0deb6ea:	4802      	ldr	r0, [pc, #8]	@ (c0deb6f4 <cx_bn_copy+0x10>)
c0deb6ec:	4669      	mov	r1, sp
c0deb6ee:	f7ff ff9b 	bl	c0deb628 <SVC_cx_call>
c0deb6f2:	bd8c      	pop	{r2, r3, r7, pc}
c0deb6f4:	020000c0 	.word	0x020000c0

c0deb6f8 <cx_bn_set_u32>:
c0deb6f8:	b5e0      	push	{r5, r6, r7, lr}
c0deb6fa:	e9cd 0100 	strd	r0, r1, [sp]
c0deb6fe:	4802      	ldr	r0, [pc, #8]	@ (c0deb708 <cx_bn_set_u32+0x10>)
c0deb700:	4669      	mov	r1, sp
c0deb702:	f7ff ff91 	bl	c0deb628 <SVC_cx_call>
c0deb706:	bd8c      	pop	{r2, r3, r7, pc}
c0deb708:	020000c1 	.word	0x020000c1

c0deb70c <cx_bn_export>:
c0deb70c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb70e:	ab01      	add	r3, sp, #4
c0deb710:	c307      	stmia	r3!, {r0, r1, r2}
c0deb712:	4803      	ldr	r0, [pc, #12]	@ (c0deb720 <cx_bn_export+0x14>)
c0deb714:	a901      	add	r1, sp, #4
c0deb716:	f7ff ff87 	bl	c0deb628 <SVC_cx_call>
c0deb71a:	b004      	add	sp, #16
c0deb71c:	bd80      	pop	{r7, pc}
c0deb71e:	bf00      	nop
c0deb720:	030000c3 	.word	0x030000c3

c0deb724 <cx_bn_cmp>:
c0deb724:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb726:	ab01      	add	r3, sp, #4
c0deb728:	c307      	stmia	r3!, {r0, r1, r2}
c0deb72a:	4803      	ldr	r0, [pc, #12]	@ (c0deb738 <cx_bn_cmp+0x14>)
c0deb72c:	a901      	add	r1, sp, #4
c0deb72e:	f7ff ff7b 	bl	c0deb628 <SVC_cx_call>
c0deb732:	b004      	add	sp, #16
c0deb734:	bd80      	pop	{r7, pc}
c0deb736:	bf00      	nop
c0deb738:	030000c4 	.word	0x030000c4

c0deb73c <cx_bn_cmp_u32>:
c0deb73c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb73e:	ab01      	add	r3, sp, #4
c0deb740:	c307      	stmia	r3!, {r0, r1, r2}
c0deb742:	4803      	ldr	r0, [pc, #12]	@ (c0deb750 <cx_bn_cmp_u32+0x14>)
c0deb744:	a901      	add	r1, sp, #4
c0deb746:	f7ff ff6f 	bl	c0deb628 <SVC_cx_call>
c0deb74a:	b004      	add	sp, #16
c0deb74c:	bd80      	pop	{r7, pc}
c0deb74e:	bf00      	nop
c0deb750:	030000c5 	.word	0x030000c5

c0deb754 <cx_bn_tst_bit>:
c0deb754:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb756:	ab01      	add	r3, sp, #4
c0deb758:	c307      	stmia	r3!, {r0, r1, r2}
c0deb75a:	4803      	ldr	r0, [pc, #12]	@ (c0deb768 <cx_bn_tst_bit+0x14>)
c0deb75c:	a901      	add	r1, sp, #4
c0deb75e:	f7ff ff63 	bl	c0deb628 <SVC_cx_call>
c0deb762:	b004      	add	sp, #16
c0deb764:	bd80      	pop	{r7, pc}
c0deb766:	bf00      	nop
c0deb768:	030000cb 	.word	0x030000cb

c0deb76c <cx_bn_mod_add>:
c0deb76c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb76e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deb772:	4803      	ldr	r0, [pc, #12]	@ (c0deb780 <cx_bn_mod_add+0x14>)
c0deb774:	4669      	mov	r1, sp
c0deb776:	f7ff ff57 	bl	c0deb628 <SVC_cx_call>
c0deb77a:	b004      	add	sp, #16
c0deb77c:	bd80      	pop	{r7, pc}
c0deb77e:	bf00      	nop
c0deb780:	040000d3 	.word	0x040000d3

c0deb784 <cx_bn_mod_sub>:
c0deb784:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb786:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deb78a:	4803      	ldr	r0, [pc, #12]	@ (c0deb798 <cx_bn_mod_sub+0x14>)
c0deb78c:	4669      	mov	r1, sp
c0deb78e:	f7ff ff4b 	bl	c0deb628 <SVC_cx_call>
c0deb792:	b004      	add	sp, #16
c0deb794:	bd80      	pop	{r7, pc}
c0deb796:	bf00      	nop
c0deb798:	040000d4 	.word	0x040000d4

c0deb79c <cx_bn_mod_mul>:
c0deb79c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb79e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deb7a2:	4803      	ldr	r0, [pc, #12]	@ (c0deb7b0 <cx_bn_mod_mul+0x14>)
c0deb7a4:	4669      	mov	r1, sp
c0deb7a6:	f7ff ff3f 	bl	c0deb628 <SVC_cx_call>
c0deb7aa:	b004      	add	sp, #16
c0deb7ac:	bd80      	pop	{r7, pc}
c0deb7ae:	bf00      	nop
c0deb7b0:	040000d5 	.word	0x040000d5

c0deb7b4 <cx_bn_reduce>:
c0deb7b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb7b6:	ab01      	add	r3, sp, #4
c0deb7b8:	c307      	stmia	r3!, {r0, r1, r2}
c0deb7ba:	4803      	ldr	r0, [pc, #12]	@ (c0deb7c8 <cx_bn_reduce+0x14>)
c0deb7bc:	a901      	add	r1, sp, #4
c0deb7be:	f7ff ff33 	bl	c0deb628 <SVC_cx_call>
c0deb7c2:	b004      	add	sp, #16
c0deb7c4:	bd80      	pop	{r7, pc}
c0deb7c6:	bf00      	nop
c0deb7c8:	030000d6 	.word	0x030000d6

c0deb7cc <cx_bn_mod_invert_nprime>:
c0deb7cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb7ce:	ab01      	add	r3, sp, #4
c0deb7d0:	c307      	stmia	r3!, {r0, r1, r2}
c0deb7d2:	4803      	ldr	r0, [pc, #12]	@ (c0deb7e0 <cx_bn_mod_invert_nprime+0x14>)
c0deb7d4:	a901      	add	r1, sp, #4
c0deb7d6:	f7ff ff27 	bl	c0deb628 <SVC_cx_call>
c0deb7da:	b004      	add	sp, #16
c0deb7dc:	bd80      	pop	{r7, pc}
c0deb7de:	bf00      	nop
c0deb7e0:	030000da 	.word	0x030000da

c0deb7e4 <cx_bn_is_prime>:
c0deb7e4:	b5e0      	push	{r5, r6, r7, lr}
c0deb7e6:	e9cd 0100 	strd	r0, r1, [sp]
c0deb7ea:	4802      	ldr	r0, [pc, #8]	@ (c0deb7f4 <cx_bn_is_prime+0x10>)
c0deb7ec:	4669      	mov	r1, sp
c0deb7ee:	f7ff ff1b 	bl	c0deb628 <SVC_cx_call>
c0deb7f2:	bd8c      	pop	{r2, r3, r7, pc}
c0deb7f4:	020000ef 	.word	0x020000ef

c0deb7f8 <cx_mont_alloc>:
c0deb7f8:	b5e0      	push	{r5, r6, r7, lr}
c0deb7fa:	e9cd 0100 	strd	r0, r1, [sp]
c0deb7fe:	4802      	ldr	r0, [pc, #8]	@ (c0deb808 <cx_mont_alloc+0x10>)
c0deb800:	4669      	mov	r1, sp
c0deb802:	f7ff ff11 	bl	c0deb628 <SVC_cx_call>
c0deb806:	bd8c      	pop	{r2, r3, r7, pc}
c0deb808:	020000dc 	.word	0x020000dc

c0deb80c <cx_mont_init>:
c0deb80c:	b5e0      	push	{r5, r6, r7, lr}
c0deb80e:	e9cd 0100 	strd	r0, r1, [sp]
c0deb812:	4802      	ldr	r0, [pc, #8]	@ (c0deb81c <cx_mont_init+0x10>)
c0deb814:	4669      	mov	r1, sp
c0deb816:	f7ff ff07 	bl	c0deb628 <SVC_cx_call>
c0deb81a:	bd8c      	pop	{r2, r3, r7, pc}
c0deb81c:	020000dd 	.word	0x020000dd

c0deb820 <cx_mont_to_montgomery>:
c0deb820:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb822:	ab01      	add	r3, sp, #4
c0deb824:	c307      	stmia	r3!, {r0, r1, r2}
c0deb826:	4803      	ldr	r0, [pc, #12]	@ (c0deb834 <cx_mont_to_montgomery+0x14>)
c0deb828:	a901      	add	r1, sp, #4
c0deb82a:	f7ff fefd 	bl	c0deb628 <SVC_cx_call>
c0deb82e:	b004      	add	sp, #16
c0deb830:	bd80      	pop	{r7, pc}
c0deb832:	bf00      	nop
c0deb834:	030000df 	.word	0x030000df

c0deb838 <cx_mont_from_montgomery>:
c0deb838:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb83a:	ab01      	add	r3, sp, #4
c0deb83c:	c307      	stmia	r3!, {r0, r1, r2}
c0deb83e:	4803      	ldr	r0, [pc, #12]	@ (c0deb84c <cx_mont_from_montgomery+0x14>)
c0deb840:	a901      	add	r1, sp, #4
c0deb842:	f7ff fef1 	bl	c0deb628 <SVC_cx_call>
c0deb846:	b004      	add	sp, #16
c0deb848:	bd80      	pop	{r7, pc}
c0deb84a:	bf00      	nop
c0deb84c:	030000e0 	.word	0x030000e0

c0deb850 <cx_mont_mul>:
c0deb850:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb852:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deb856:	4803      	ldr	r0, [pc, #12]	@ (c0deb864 <cx_mont_mul+0x14>)
c0deb858:	4669      	mov	r1, sp
c0deb85a:	f7ff fee5 	bl	c0deb628 <SVC_cx_call>
c0deb85e:	b004      	add	sp, #16
c0deb860:	bd80      	pop	{r7, pc}
c0deb862:	bf00      	nop
c0deb864:	040000e1 	.word	0x040000e1

c0deb868 <cx_mont_pow>:
c0deb868:	b510      	push	{r4, lr}
c0deb86a:	b086      	sub	sp, #24
c0deb86c:	f10d 0c04 	add.w	ip, sp, #4
c0deb870:	9c08      	ldr	r4, [sp, #32]
c0deb872:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0deb876:	4803      	ldr	r0, [pc, #12]	@ (c0deb884 <cx_mont_pow+0x1c>)
c0deb878:	a901      	add	r1, sp, #4
c0deb87a:	f7ff fed5 	bl	c0deb628 <SVC_cx_call>
c0deb87e:	b006      	add	sp, #24
c0deb880:	bd10      	pop	{r4, pc}
c0deb882:	bf00      	nop
c0deb884:	050000e2 	.word	0x050000e2

c0deb888 <cx_mont_invert_nprime>:
c0deb888:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb88a:	ab01      	add	r3, sp, #4
c0deb88c:	c307      	stmia	r3!, {r0, r1, r2}
c0deb88e:	4803      	ldr	r0, [pc, #12]	@ (c0deb89c <cx_mont_invert_nprime+0x14>)
c0deb890:	a901      	add	r1, sp, #4
c0deb892:	f7ff fec9 	bl	c0deb628 <SVC_cx_call>
c0deb896:	b004      	add	sp, #16
c0deb898:	bd80      	pop	{r7, pc}
c0deb89a:	bf00      	nop
c0deb89c:	030000e4 	.word	0x030000e4

c0deb8a0 <cx_ecdomain_parameters_length>:
c0deb8a0:	b5e0      	push	{r5, r6, r7, lr}
c0deb8a2:	e9cd 0100 	strd	r0, r1, [sp]
c0deb8a6:	4802      	ldr	r0, [pc, #8]	@ (c0deb8b0 <cx_ecdomain_parameters_length+0x10>)
c0deb8a8:	4669      	mov	r1, sp
c0deb8aa:	f7ff febd 	bl	c0deb628 <SVC_cx_call>
c0deb8ae:	bd8c      	pop	{r2, r3, r7, pc}
c0deb8b0:	0200012f 	.word	0x0200012f

c0deb8b4 <os_perso_derive_node_with_seed_key>:
c0deb8b4:	b510      	push	{r4, lr}
c0deb8b6:	b088      	sub	sp, #32
c0deb8b8:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0deb8ba:	9407      	str	r4, [sp, #28]
c0deb8bc:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0deb8be:	9406      	str	r4, [sp, #24]
c0deb8c0:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0deb8c2:	9405      	str	r4, [sp, #20]
c0deb8c4:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0deb8c6:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0deb8ca:	4803      	ldr	r0, [pc, #12]	@ (c0deb8d8 <os_perso_derive_node_with_seed_key+0x24>)
c0deb8cc:	4669      	mov	r1, sp
c0deb8ce:	f7ff fea3 	bl	c0deb618 <SVC_Call>
c0deb8d2:	b008      	add	sp, #32
c0deb8d4:	bd10      	pop	{r4, pc}
c0deb8d6:	bf00      	nop
c0deb8d8:	080000a6 	.word	0x080000a6

c0deb8dc <os_pki_load_certificate>:
c0deb8dc:	b510      	push	{r4, lr}
c0deb8de:	b086      	sub	sp, #24
c0deb8e0:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0deb8e2:	9405      	str	r4, [sp, #20]
c0deb8e4:	9c08      	ldr	r4, [sp, #32]
c0deb8e6:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0deb8ea:	4803      	ldr	r0, [pc, #12]	@ (c0deb8f8 <os_pki_load_certificate+0x1c>)
c0deb8ec:	4669      	mov	r1, sp
c0deb8ee:	f7ff fe93 	bl	c0deb618 <SVC_Call>
c0deb8f2:	b006      	add	sp, #24
c0deb8f4:	bd10      	pop	{r4, pc}
c0deb8f6:	bf00      	nop
c0deb8f8:	060000aa 	.word	0x060000aa

c0deb8fc <os_perso_is_pin_set>:
c0deb8fc:	b5e0      	push	{r5, r6, r7, lr}
c0deb8fe:	2000      	movs	r0, #0
c0deb900:	4669      	mov	r1, sp
c0deb902:	9001      	str	r0, [sp, #4]
c0deb904:	209e      	movs	r0, #158	@ 0x9e
c0deb906:	f7ff fe87 	bl	c0deb618 <SVC_Call>
c0deb90a:	b2c0      	uxtb	r0, r0
c0deb90c:	bd8c      	pop	{r2, r3, r7, pc}

c0deb90e <os_global_pin_is_validated>:
c0deb90e:	b5e0      	push	{r5, r6, r7, lr}
c0deb910:	2000      	movs	r0, #0
c0deb912:	4669      	mov	r1, sp
c0deb914:	9001      	str	r0, [sp, #4]
c0deb916:	20a0      	movs	r0, #160	@ 0xa0
c0deb918:	f7ff fe7e 	bl	c0deb618 <SVC_Call>
c0deb91c:	b2c0      	uxtb	r0, r0
c0deb91e:	bd8c      	pop	{r2, r3, r7, pc}

c0deb920 <os_ux>:
c0deb920:	b5e0      	push	{r5, r6, r7, lr}
c0deb922:	f000 f885 	bl	c0deba30 <OUTLINED_FUNCTION_0>
c0deb926:	4802      	ldr	r0, [pc, #8]	@ (c0deb930 <os_ux+0x10>)
c0deb928:	4669      	mov	r1, sp
c0deb92a:	f7ff fe75 	bl	c0deb618 <SVC_Call>
c0deb92e:	bd8c      	pop	{r2, r3, r7, pc}
c0deb930:	01000064 	.word	0x01000064

c0deb934 <os_flags>:
c0deb934:	b5e0      	push	{r5, r6, r7, lr}
c0deb936:	2000      	movs	r0, #0
c0deb938:	4669      	mov	r1, sp
c0deb93a:	9001      	str	r0, [sp, #4]
c0deb93c:	206a      	movs	r0, #106	@ 0x6a
c0deb93e:	f7ff fe6b 	bl	c0deb618 <SVC_Call>
c0deb942:	bd8c      	pop	{r2, r3, r7, pc}

c0deb944 <os_setting_get>:
c0deb944:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb946:	ab01      	add	r3, sp, #4
c0deb948:	c307      	stmia	r3!, {r0, r1, r2}
c0deb94a:	4803      	ldr	r0, [pc, #12]	@ (c0deb958 <os_setting_get+0x14>)
c0deb94c:	a901      	add	r1, sp, #4
c0deb94e:	f7ff fe63 	bl	c0deb618 <SVC_Call>
c0deb952:	b004      	add	sp, #16
c0deb954:	bd80      	pop	{r7, pc}
c0deb956:	bf00      	nop
c0deb958:	03000070 	.word	0x03000070

c0deb95c <os_registry_get_current_app_tag>:
c0deb95c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb95e:	ab01      	add	r3, sp, #4
c0deb960:	c307      	stmia	r3!, {r0, r1, r2}
c0deb962:	4803      	ldr	r0, [pc, #12]	@ (c0deb970 <os_registry_get_current_app_tag+0x14>)
c0deb964:	a901      	add	r1, sp, #4
c0deb966:	f7ff fe57 	bl	c0deb618 <SVC_Call>
c0deb96a:	b004      	add	sp, #16
c0deb96c:	bd80      	pop	{r7, pc}
c0deb96e:	bf00      	nop
c0deb970:	03000074 	.word	0x03000074

c0deb974 <os_sched_exit>:
c0deb974:	b082      	sub	sp, #8
c0deb976:	f000 f85b 	bl	c0deba30 <OUTLINED_FUNCTION_0>
c0deb97a:	4802      	ldr	r0, [pc, #8]	@ (c0deb984 <os_sched_exit+0x10>)
c0deb97c:	4669      	mov	r1, sp
c0deb97e:	f7ff fe4b 	bl	c0deb618 <SVC_Call>
c0deb982:	deff      	udf	#255	@ 0xff
c0deb984:	0100009a 	.word	0x0100009a

c0deb988 <os_io_init>:
c0deb988:	b5e0      	push	{r5, r6, r7, lr}
c0deb98a:	9001      	str	r0, [sp, #4]
c0deb98c:	4802      	ldr	r0, [pc, #8]	@ (c0deb998 <os_io_init+0x10>)
c0deb98e:	a901      	add	r1, sp, #4
c0deb990:	f7ff fe42 	bl	c0deb618 <SVC_Call>
c0deb994:	bd8c      	pop	{r2, r3, r7, pc}
c0deb996:	bf00      	nop
c0deb998:	01000084 	.word	0x01000084

c0deb99c <os_io_start>:
c0deb99c:	b5e0      	push	{r5, r6, r7, lr}
c0deb99e:	2000      	movs	r0, #0
c0deb9a0:	4669      	mov	r1, sp
c0deb9a2:	9001      	str	r0, [sp, #4]
c0deb9a4:	4801      	ldr	r0, [pc, #4]	@ (c0deb9ac <os_io_start+0x10>)
c0deb9a6:	f7ff fe37 	bl	c0deb618 <SVC_Call>
c0deb9aa:	bd8c      	pop	{r2, r3, r7, pc}
c0deb9ac:	01000085 	.word	0x01000085

c0deb9b0 <os_io_tx_cmd>:
c0deb9b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb9b2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deb9b6:	4803      	ldr	r0, [pc, #12]	@ (c0deb9c4 <os_io_tx_cmd+0x14>)
c0deb9b8:	4669      	mov	r1, sp
c0deb9ba:	f7ff fe2d 	bl	c0deb618 <SVC_Call>
c0deb9be:	b004      	add	sp, #16
c0deb9c0:	bd80      	pop	{r7, pc}
c0deb9c2:	bf00      	nop
c0deb9c4:	04000088 	.word	0x04000088

c0deb9c8 <os_io_rx_evt>:
c0deb9c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb9ca:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deb9ce:	4803      	ldr	r0, [pc, #12]	@ (c0deb9dc <os_io_rx_evt+0x14>)
c0deb9d0:	4669      	mov	r1, sp
c0deb9d2:	f7ff fe21 	bl	c0deb618 <SVC_Call>
c0deb9d6:	b004      	add	sp, #16
c0deb9d8:	bd80      	pop	{r7, pc}
c0deb9da:	bf00      	nop
c0deb9dc:	03000089 	.word	0x03000089

c0deb9e0 <try_context_get>:
c0deb9e0:	b5e0      	push	{r5, r6, r7, lr}
c0deb9e2:	2000      	movs	r0, #0
c0deb9e4:	4669      	mov	r1, sp
c0deb9e6:	9001      	str	r0, [sp, #4]
c0deb9e8:	2087      	movs	r0, #135	@ 0x87
c0deb9ea:	f7ff fe15 	bl	c0deb618 <SVC_Call>
c0deb9ee:	bd8c      	pop	{r2, r3, r7, pc}

c0deb9f0 <try_context_set>:
c0deb9f0:	b5e0      	push	{r5, r6, r7, lr}
c0deb9f2:	f000 f81d 	bl	c0deba30 <OUTLINED_FUNCTION_0>
c0deb9f6:	4802      	ldr	r0, [pc, #8]	@ (c0deba00 <try_context_set+0x10>)
c0deb9f8:	4669      	mov	r1, sp
c0deb9fa:	f7ff fe0d 	bl	c0deb618 <SVC_Call>
c0deb9fe:	bd8c      	pop	{r2, r3, r7, pc}
c0deba00:	0100010b 	.word	0x0100010b

c0deba04 <os_sched_last_status>:
c0deba04:	b5e0      	push	{r5, r6, r7, lr}
c0deba06:	f000 f813 	bl	c0deba30 <OUTLINED_FUNCTION_0>
c0deba0a:	4803      	ldr	r0, [pc, #12]	@ (c0deba18 <os_sched_last_status+0x14>)
c0deba0c:	4669      	mov	r1, sp
c0deba0e:	f7ff fe03 	bl	c0deb618 <SVC_Call>
c0deba12:	b2c0      	uxtb	r0, r0
c0deba14:	bd8c      	pop	{r2, r3, r7, pc}
c0deba16:	bf00      	nop
c0deba18:	0100009c 	.word	0x0100009c

c0deba1c <touch_get_last_info>:
c0deba1c:	b5e0      	push	{r5, r6, r7, lr}
c0deba1e:	9001      	str	r0, [sp, #4]
c0deba20:	4802      	ldr	r0, [pc, #8]	@ (c0deba2c <touch_get_last_info+0x10>)
c0deba22:	a901      	add	r1, sp, #4
c0deba24:	f7ff fdf8 	bl	c0deb618 <SVC_Call>
c0deba28:	bd8c      	pop	{r2, r3, r7, pc}
c0deba2a:	bf00      	nop
c0deba2c:	01fa000b 	.word	0x01fa000b

c0deba30 <OUTLINED_FUNCTION_0>:
c0deba30:	2100      	movs	r1, #0
c0deba32:	e9cd 0100 	strd	r0, r1, [sp]
c0deba36:	4770      	bx	lr

c0deba38 <__aeabi_memcpy>:
c0deba38:	f000 b812 	b.w	c0deba60 <memcpy>

c0deba3c <__aeabi_memmove>:
c0deba3c:	f000 b81e 	b.w	c0deba7c <memmove>

c0deba40 <__aeabi_memset>:
c0deba40:	460b      	mov	r3, r1
c0deba42:	4611      	mov	r1, r2
c0deba44:	461a      	mov	r2, r3
c0deba46:	f000 b833 	b.w	c0debab0 <memset>
c0deba4a:	bf00      	nop

c0deba4c <__aeabi_memclr>:
c0deba4c:	460a      	mov	r2, r1
c0deba4e:	2100      	movs	r1, #0
c0deba50:	f000 b82e 	b.w	c0debab0 <memset>

c0deba54 <explicit_bzero>:
c0deba54:	f000 b800 	b.w	c0deba58 <bzero>

c0deba58 <bzero>:
c0deba58:	460a      	mov	r2, r1
c0deba5a:	2100      	movs	r1, #0
c0deba5c:	f000 b828 	b.w	c0debab0 <memset>

c0deba60 <memcpy>:
c0deba60:	440a      	add	r2, r1
c0deba62:	4291      	cmp	r1, r2
c0deba64:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0deba68:	d100      	bne.n	c0deba6c <memcpy+0xc>
c0deba6a:	4770      	bx	lr
c0deba6c:	b510      	push	{r4, lr}
c0deba6e:	f811 4b01 	ldrb.w	r4, [r1], #1
c0deba72:	4291      	cmp	r1, r2
c0deba74:	f803 4f01 	strb.w	r4, [r3, #1]!
c0deba78:	d1f9      	bne.n	c0deba6e <memcpy+0xe>
c0deba7a:	bd10      	pop	{r4, pc}

c0deba7c <memmove>:
c0deba7c:	4288      	cmp	r0, r1
c0deba7e:	b510      	push	{r4, lr}
c0deba80:	eb01 0402 	add.w	r4, r1, r2
c0deba84:	d902      	bls.n	c0deba8c <memmove+0x10>
c0deba86:	4284      	cmp	r4, r0
c0deba88:	4623      	mov	r3, r4
c0deba8a:	d807      	bhi.n	c0deba9c <memmove+0x20>
c0deba8c:	1e43      	subs	r3, r0, #1
c0deba8e:	42a1      	cmp	r1, r4
c0deba90:	d008      	beq.n	c0debaa4 <memmove+0x28>
c0deba92:	f811 2b01 	ldrb.w	r2, [r1], #1
c0deba96:	f803 2f01 	strb.w	r2, [r3, #1]!
c0deba9a:	e7f8      	b.n	c0deba8e <memmove+0x12>
c0deba9c:	4601      	mov	r1, r0
c0deba9e:	4402      	add	r2, r0
c0debaa0:	428a      	cmp	r2, r1
c0debaa2:	d100      	bne.n	c0debaa6 <memmove+0x2a>
c0debaa4:	bd10      	pop	{r4, pc}
c0debaa6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0debaaa:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0debaae:	e7f7      	b.n	c0debaa0 <memmove+0x24>

c0debab0 <memset>:
c0debab0:	4603      	mov	r3, r0
c0debab2:	4402      	add	r2, r0
c0debab4:	4293      	cmp	r3, r2
c0debab6:	d100      	bne.n	c0debaba <memset+0xa>
c0debab8:	4770      	bx	lr
c0debaba:	f803 1b01 	strb.w	r1, [r3], #1
c0debabe:	e7f9      	b.n	c0debab4 <memset+0x4>

c0debac0 <setjmp>:
c0debac0:	46ec      	mov	ip, sp
c0debac2:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0debac6:	f04f 0000 	mov.w	r0, #0
c0debaca:	4770      	bx	lr

c0debacc <longjmp>:
c0debacc:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0debad0:	46e5      	mov	sp, ip
c0debad2:	0008      	movs	r0, r1
c0debad4:	bf08      	it	eq
c0debad6:	2001      	moveq	r0, #1
c0debad8:	4770      	bx	lr
c0debada:	bf00      	nop

c0debadc <strcmp>:
c0debadc:	f810 2b01 	ldrb.w	r2, [r0], #1
c0debae0:	f811 3b01 	ldrb.w	r3, [r1], #1
c0debae4:	2a01      	cmp	r2, #1
c0debae6:	bf28      	it	cs
c0debae8:	429a      	cmpcs	r2, r3
c0debaea:	d0f7      	beq.n	c0debadc <strcmp>
c0debaec:	1ad0      	subs	r0, r2, r3
c0debaee:	4770      	bx	lr

c0debaf0 <strlen>:
c0debaf0:	4603      	mov	r3, r0
c0debaf2:	f813 2b01 	ldrb.w	r2, [r3], #1
c0debaf6:	2a00      	cmp	r2, #0
c0debaf8:	d1fb      	bne.n	c0debaf2 <strlen+0x2>
c0debafa:	1a18      	subs	r0, r3, r0
c0debafc:	3801      	subs	r0, #1
c0debafe:	4770      	bx	lr

c0debb00 <C_app_boilerplate_64px_bitmap>:
c0debb00:	0040 0040 b301 0000 00b1 8b1f 0008 0000     @.@.............
c0debb10:	0000 0302 d175 0dbb 2103 060c 9f60 8522     ....u....!..`.".
c0debb20:	1192 856e 706c 1da3 79a3 a414 6914 2929     ..n.lp...y...i))
c0debb30:	1c2c ff83 0444 dce5 127c 1b0f a21b b8ab     ,...D...|.......
c0debb40:	f0c3 2d31 cc32 c0b0 f93a 8530 b368 d0bd     ..1-2...:.0.h...
c0debb50:	a288 0d9d 744a f0f2 c3a6 6bb4 b2ea bf6a     ....Jt.....k..j.
c0debb60:	2fa7 436d 2afd c2b0 b932 fd9b 8609 b3a7     ./mC.*..2.......
c0debb70:	74b0 d747 ab2a d51b 8dd3 8165 eb15 7382     .tG.*.....e....s
c0debb80:	dcbd a301 f3df 848d 460d bcdd 9658 c9f7     .........F..X...
c0debb90:	4f8f 91f4 ef4f a38f 9bf7 7f36 e5b0 69e6     .O..O.....6....i
c0debba0:	0d3e 12f3 afcc f32e cb2d f9dc 7fe2 7f96     >.......-.......
c0debbb0:	1ffc e56f a9d1 0021 0002                     ..o...!....

c0debbbb <C_app_boilerplate_64px>:
c0debbbb:	0040 0040 0100 bb00 c0de                    @.@.......

c0debbc5 <C_switch_60_40_bitmap>:
c0debbc5:	0000 00ff 0000 ff07 00e0 1f00 f8ff 0000     ................
c0debbd5:	ff3f 00fc ff00 ffff 0100 ffff 80ff ff03     ?...............
c0debbe5:	ffff 03c0 ffff c0ff ff07 ffff 0fe0 ffff     ................
c0debbf5:	f0ff ff0f ffff 1ff0 ffff f8ff ff1f ffff     ................
c0debc05:	1ff8 ffff f8ff ff3f ffff 3ffc ffff fcff     ......?....?....
c0debc15:	ff3f ffff 3ffc ffff fcff ff3f ffff 3ffc     ?....?....?....?
c0debc25:	ffff fcff ff3f ffff 3ffc ffff fcff ff3f     ....?....?....?.
c0debc35:	ffff 3ffc ffff fcff ff3f ffff 3ffc ffff     ...?....?....?..
c0debc45:	fcff ff3f ffff 3ffc 00ff fcff f83f 1f00     ..?....?....?...
c0debc55:	3ffc 00f0 fc0f c03f 0300 3ffc 0080 fc01     .?....?....?....
c0debc65:	003f 0000 3ffc 0000 fc00 003e 0000 3c7c     ?....?....>...|<
c0debc75:	0000 3c00 003c 0000 3c3c 0000 3c00 0038     ...<<...<<...<8.
c0debc85:	0000 381c 0000 1c00 0038 0000 381c 0000     ...8....8....8..
c0debc95:	1c00 0038 0000 381c 0000 1c00 0038 0000     ..8....8....8...
c0debca5:	381c 0000 1c00 001c 0000 1c38 0000 3800     .8........8....8
c0debcb5:	001c 0000 0e38 0000 7000 000f 0000 07f0     ....8....p......
c0debcc5:	0000 e000 8003 0100 03c0 00c0 c003 f001     ................
c0debcd5:	0f00 0080 00f8 001f 3f00 fc00 0000 ff1f     .........?......
c0debce5:	00f8 0700 e0ff 0000 ff00 0000               ............

c0debcf1 <C_switch_60_40>:
c0debcf1:	003c 0028 0000 bbc5 c0de                    <.(.......

c0debcfb <C_Check_Circle_64px_bitmap>:
c0debcfb:	0040 0040 3321 0002 0231 8b1f 0008 0000     @.@.!3..1.......
c0debd0b:	0000 0302 55ad 4e39 3103 fd14 6124 4b5f     .....U9N.1..$a_K
c0debd1b:	8028 a091 2401 b888 4640 2054 4121 3949     (....$..@FT !AI9
c0debd2b:	152d 00dc a090 1166 05a2 0171 1710 0a48     -.....f...q...H.
c0debd3b:	026a 6017 41ab 8961 2404 9f21 65ef be66     j..`.Aa..$!..ef.
c0debd4b:	0e3d c48b 9914 9fb1 fcfd fcfc 8cf3 7ff8     =...............
c0debd5b:	f54f 1a60 7460 d8a9 de00 fd04 95cc 681c     O.`.`t.........h
c0debd6b:	87cd c9e8 bf14 0185 7952 ae0b 301b 8b40     ........Ry...0@.
c0debd7b:	c4b5 9cae 7cb5 f88d e070 ef89 0371 137e     .....|..p...q.~.
c0debd8b:	fd5d 4e7a 4f7d d6b4 9e38 8ea5 b8f9 4c79     ].zN}O..8.....yL
c0debd9b:	34cd e15b da9e 7c13 18bc 1930 a38b 5b15     .4[....|..0....[
c0debdab:	b94d a901 5a89 34af d0fa fbd4 5d41 b0b9     M....Z.4....A]..
c0debdbb:	0ab1 6830 71fb 5315 0056 6e9a fc6c 2fb3     ..0h.q.SV..nl../
c0debdcb:	24e2 dd75 bf49 012f d486 1057 ac8e 0a5a     .$u.I./...W...Z.
c0debddb:	aa32 dc97 5d54 3947 803e c954 7a63 b709     2...T]G9>.T.cz..
c0debdeb:	815a c734 7fa9 bc41 000b 6a27 db3a e292     Z.4...A...'j:...
c0debdfb:	12ed 3f6f 8274 64b6 f810 4052 a01d de23     ..o?t..d..R@..#.
c0debe0b:	2712 6220 73a5 9d0a cf04 db00 e588 5bd8     .' b.s.........[
c0debe1b:	e08b 0a5d 027c a128 8093 ee56 ab15 0ca4     ..].|.(...V.....
c0debe2b:	1953 0781 889d a1eb 493b 0082 11da c517     S.......;I......
c0debe3b:	9b8f 4760 f54c 0b95 822e f14b 41ed 360f     ..`GL.....K..A.6
c0debe4b:	b820 d215 48a4 c137 3093 c2c8 8139 e70b      ....H7..0..9...
c0debe5b:	4e04 105c 30ac d4dc 08a7 9856 acbe 7c5d     .N\..0....V...]|
c0debe6b:	5e31 0710 701c 347f 5aff 4fe8 36b3 adc9     1^...p.4.Z.O.6..
c0debe7b:	802f c436 7653 d63e 3cfe 2d61 5f3f ba73     /.6.Sv>..<a-?_s.
c0debe8b:	df3a acb2 d712 0ff4 1f59 2554 6ec3 5f7b     :.......Y.T%.n{_
c0debe9b:	6554 3b01 e340 8e78 cad4 febe e91f 4c92     Te.;@.x........L
c0debeab:	f2b3 e8c9 ce32 92b3 a68c 3457 3971 702e     ....2.....W4q9.p
c0debebb:	b6aa 0f34 d91d e35f f2e1 639e a7d5 fd79     ..4..._....c..y.
c0debecb:	ba44 dde8 6369 1aef c3e5 3464 9dd2 272f     D...ic....d4../'
c0debedb:	cbbf 1fa7 8df3 b09c 9b03 5328 2325 8d5f     ..........(S%#_.
c0debeeb:	3ec0 f233 eb15 7359 39c0 5158 f322 2c7d     .>3...Ys.9XQ".},
c0debefb:	f7cc 448d cbbe a6c0 e1fb f102 dd51 030f     ...D........Q...
c0debf0b:	0898 fe6c ec64 ac2b 19ea f170 f7af 2d1b     ..l.d.+...p....-
c0debf1b:	1fb1 b3c2 2e0d dad0 0cd6 c8c0 fe72 af1f     ............r...
c0debf2b:	fc6c 2402 5a14 00c5 0008                     l..$.Z.....

c0debf36 <C_Check_Circle_64px>:
c0debf36:	0040 0040 0102 bcfb c0de                    @.@.......

c0debf40 <C_Denied_Circle_64px_bitmap>:
c0debf40:	0040 0040 3021 0002 022e 8b1f 0008 0000     @.@.!0..........
c0debf50:	0000 0302 55ad 2f4b 4104 2e10 bd6b 479f     .....UK/.A..k..G
c0debf60:	d80e 4884 ac90 3f8d e260 2244 e8e1 71b8     ...H...?`.D"...q
c0debf70:	e273 201f ece1 7111 fe25 f100 d607 d9c1     s.. ...q%.......
c0debf80:	07f2 e63c d64c e363 a6b9 f554 a663 67a7     ..<.L.c...T.c..g
c0debf90:	9766 1f44 b676 babb beaa eafe 6aeb ffc4     f.D.v........j..
c0debfa0:	5f1b 13fb 4300 c50b f304 a806 5331 b18a     ._...C......1S..
c0debfb0:	1c56 47f0 58ba 0cd5 2a90 6658 642f 6806     V..G.X...*Xf/d.h
c0debfc0:	52b4 08ec a5af c46b fdfb ff0c 0d1f df99     .R....k.........
c0debfd0:	a978 f947 bb78 5b3c ed35 5a39 0d98 47a6     x.G.x.<[5.9Z...G
c0debfe0:	ad34 3237 34b8 331f f3f7 6c86 8e00 3632     4.72.4.3...l..26
c0debff0:	e185 09e6 3f8d a17b 07dd bc61 b41f a934     .....?{...a...4.
c0dec000:	2b27 7d00 1f36 4157 4fc8 ba80 db1b ddfe     '+.}6.WA.O......
c0dec010:	c7ed 7424 511d 2fbe fa01 bfe5 247c 42bb     ..$t.Q./....|$.B
c0dec020:	9690 2555 e336 49ca 44a8 9e99 a3cd 831a     ..U%6..I.D......
c0dec030:	e7d6 7bf8 7006 0f2c a96d a005 bf9d 668e     ...{.p,.m......f
c0dec040:	5162 3ff3 bf2c 008e 01e0 8ab4 abe9 e34e     bQ.?,.........N.
c0dec050:	32c2 c0aa e712 3ab8 aa46 d8a4 7896 009f     .2.....:F....x..
c0dec060:	10b6 facb 1974 9385 90e8 df1b c005 8047     ....t.........G.
c0dec070:	1a12 9eeb c7de bb99 4b38 a82a d662 e770     ........8K*.b.p.
c0dec080:	6d88 6b88 3b3e 12c2 33b8 16a2 79c4 09fe     .m.k>;...3...y..
c0dec090:	1802 b8ee aecd 648e 0741 dc30 44a9 9cf5     .......dA.0..D..
c0dec0a0:	d3a4 91d4 8ee1 0cb7 804d 7434 1468 91e3     ........M.4th...
c0dec0b0:	3209 1ced 7020 bbff 2e3d 2d7e b97c 7c40     .2.. p..=.~-|.@|
c0dec0c0:	f9f6 b8ce f9c0 fc6a 2834 9292 6df8 3c46     ......j.4(...mF<
c0dec0d0:	56a9 f69f f5da 0b2d 1895 aeeb 9abe 421f     .V....-........B
c0dec0e0:	a41f 8192 7d78 4b3d 2965 4719 79f5 3328     ....x}=Ke).G.y(3
c0dec0f0:	ea3b 451e 9df4 0691 b192 cdd5 fa4a 8b5a     ;..E........J.Z.
c0dec100:	65c0 702d b86b bd6a 3762 9f17 151d 49d7     .e-pk.j.b7.....I
c0dec110:	dfba d88a a4bb 90fe 77f5 f7c6 e397 f5df     .........w......
c0dec120:	9aa7 8dfd a6af b0d5 4257 7442 86ed 1a7d     ........WBBt..}.
c0dec130:	21d2 b97a 86f0 ee73 91cf 3efe f9a2 8f5f     .!z...s....>.._.
c0dec140:	77f4 b0d1 7de9 40b8 907c 43ef 462f b61a     .w...}.@|..C/F..
c0dec150:	d239 13f6 95f6 9909 7f8b df7d c528 369e     9.........}.(..6
c0dec160:	274f a03c cd95 8029 a5c1 3fc2 d93e 03f8     O'<...)....?>...
c0dec170:	a770 8485 0800 0000                         p.......

c0dec178 <C_Denied_Circle_64px>:
c0dec178:	0040 0040 0102 bf40 c0de                    @.@...@...

c0dec182 <C_Important_Circle_64px_bitmap>:
c0dec182:	0040 0040 fa21 0001 01f8 8b1f 0008 0000     @.@.!...........
c0dec192:	0000 0302 55b5 4ecd 40c2 1e10 fea1 cfe3     .....U.N.@......
c0dec1a2:	0f51 892a d45e 8904 602f 49e3 1313 7a3c     Q.*.^.../`.I..<z
c0dec1b2:	cae4 37cd 1350 a33d 70c6 f8d5 1802 005f     ...7P.=..p...._.
c0dec1c2:	9e0f 5f05 1fc0 1ace 4910 c054 b38e b6ed     ..._.....IT.....
c0dec1d2:	db74 d059 e704 76d0 dbf6 7cee 76fd 2dfa     t.Y....v...|.v.-
c0dec1e2:	ef62 99a2 055b d858 6a29 43e0 b190 6159     b...[.X.)j.C..Ya
c0dec1f2:	96d0 5e09 c518 308e a440 8010 052d 1806     ...^...0@...-...
c0dec202:	9408 b138 cadf 203c e4be e2e2 4979 3f81     ..8...< ....yI.?
c0dec212:	d0c4 7c94 3ac7 d915 1f9e d24f 56c0 bd3b     ...|.:....O..V;.
c0dec222:	34a4 abea a650 d97c 5f3f 484c c9b4 c551     .4..P.|.?_LH..Q.
c0dec232:	9541 9a6e 78d8 3bd9 3ecd f957 d17e 9ad0     A.n..x.;.>W.~...
c0dec242:	ec9b cc02 f504 6fb8 d92f e800 0c7b dfe2     .......o/...{...
c0dec252:	de93 c49a 2c6e 77ac 6009 79d6 874a 4baa     ....n,.w.`.yJ..K
c0dec262:	8606 abb3 26a4 9db7 cac4 a6de ff9a 7d53     .....&........S}
c0dec272:	e341 7129 01bf b3c8 02dd 1310 d377 84a7     A.)q........w...
c0dec282:	a612 c04d 1802 71e1 d85a b9e1 e3c2 006f     ..M....qZ.....o.
c0dec292:	c459 fb3a 2275 6d3e 5582 0a80 538f 09e5     Y.:.u">m.U...S..
c0dec2a2:	2551 eba2 38f7 228c f3ee 38ea 0ec2 6e23     Q%...8."...8..#n
c0dec2b2:	0b8b c71f 55e2 51d3 8b81 4412 9145 3b71     .....U.Q...DE.q;
c0dec2c2:	f769 20b6 159e 4f43 9a82 924d abc7 a042     i.. ..CO..M...B.
c0dec2d2:	c6ff f1bb 724b e7cd a06e 4521 e9d2 2fd3     ....Kr..n.!E.../
c0dec2e2:	d245 3be9 7884 69d5 627f f7dd 2eb7 b2c9     E..;.x.i.b......
c0dec2f2:	407f eeca 3992 af1e 9d39 ba05 bc0d 2a70     .@...9..9.....p*
c0dec302:	f29b 623f 19e8 8db2 1c0b 90dc d70b 0d35     ..?b..........5.
c0dec312:	965e ade3 b9a0 ea78 75c8 dd4d 2dff 7d85     ^.....x..uM..-.}
c0dec322:	f9d6 c243 c99b 4bfb 77fe d4fe dfd5 8948     ..C....K.w....H.
c0dec332:	61a0 92d3 8a91 afe2 618a 2b5f 8afe 5256     .a.......a_+..VR
c0dec342:	709d fc2b e439 8bef bfae 841f ddfc 6c36     .p+.9.........6l
c0dec352:	1f3a 10ee 9d5f 61f3 431a ed86 230f 53d8     :..._..a.C...#.S
c0dec362:	b8cd 1702 7aff 51be 3389 de17 f4d0 eb73     .....z.Q.3....s.
c0dec372:	1d68 3e60 e853 91e1 3f8d c10e e439 0800     h.`>S....?..9...
	...

c0dec384 <C_Important_Circle_64px>:
c0dec384:	0040 0040 0102 c182 c0de                    @.@.......

c0dec38e <C_Warning_64px_bitmap>:
c0dec38e:	0040 0040 5f21 0001 015d 8b1f 0008 0000     @.@.!_..].......
c0dec39e:	0000 0302 d585 4e31 40c3 0510 8dd0 0885     ......1N.@......
c0dec3ae:	454a 9149 25c2 52b2 08e4 4039 19c4 8272     JEI..%.R..9@..r.
c0dec3be:	815c 0384 b880 c441 7205 0a04 e7d2 6908     \.....A..r.....i
c0dec3ce:	a202 a50b a113 ec1d 5d99 f6b3 1fee fb6f     .........]....o.
c0dec3de:	96c6 febc 4333 4f84 27b9 5ced ebf2 c293     ....3C.O.'.\....
c0dec3ee:	53bf 2663 cf0a 318c 9d23 5bb1 e866 5176     .Sc&...1#..[f.vQ
c0dec3fe:	60e1 7d06 3f5d b8fc ce41 24bc cce4 4273     .`.}]?..A..$..sB
c0dec40e:	eafe f818 e79b efb4 966a 4b7b 7339 c841     ........j.{K9sA.
c0dec41e:	ef99 f908 e431 bfd8 1c5a 7979 f15b 9090     ....1...Z.yy[...
c0dec42e:	8733 6891 f33b 1855 96a9 239f f96e 8f25     3..h;.U....#n.%.
c0dec43e:	7438 4b8e c9d6 bfeb 6f0b 3809 e0f3 8085     8t.K.....o.8....
c0dec44e:	34db 977b c5b0 5dec 46c2 5dc8 90d8 9baf     .4{....].F.]....
c0dec45e:	94b8 9fc6 fa1b 4631 36dc 7d8c ba4e 3d17     ......1F.6.}N..=
c0dec46e:	bdae e25f c4bc 9f6e eff4 eb93 164b f784     .._...n.....K...
c0dec47e:	2a9b fe68 5d4f 3d90 7743 5b05 7de8 70f9     .*h.O].=Cw.[.}.p
c0dec48e:	ebf1 4416 ccf9 a1de 00bb a01f 39d3 b4ef     ...D.........9..
c0dec49e:	b74f bebf fef5 ed72 141b fba4 787b 2e82     O.....r.....{x..
c0dec4ae:	f705 e9d8 1833 c93f f4f9 cfa1 9727 0297     ....3.?.....'...
c0dec4be:	14bb b04c c14b 7603 89f2 6e43 fa57 f77c     ..L.K..v..CnW.|.
c0dec4ce:	db89 fbe8 4cc5 fd95 50b4 93f7 605f 6523     .....L...P.._`#e
c0dec4de:	e63f 73ba c6a0 fb3d f499 5e05 cbcd e43f     ?..s..=....^..?.
c0dec4ee:	7b2a 0024 0008                               *{$....

c0dec4f5 <C_Warning_64px>:
c0dec4f5:	0040 0040 0102 c38e c0de                    @.@.......

c0dec4ff <C_Back_40px_bitmap>:
c0dec4ff:	0028 0028 8c21 0000 008a 8b1f 0008 0000     (.(.!...........
c0dec50f:	0000 0302 d3ed 09cd 20c0 800c d0d1 0e53     ......... ....S.
c0dec51f:	a21d 39a3 364a 9570 d26e c46d c143 c7e6     ...9J6p.n.m.C...
c0dec52f:	a8d6 73d0 f50f e110 81e3 b010 9794 f843     ...s..........C.
c0dec53f:	efb7 c3b6 53b7 4667 28df dcca b621 6196     .....SgF.(..!..a
c0dec54f:	2b95 b601 0646 d04a 5b5b fa86 4192 376d     .+..F.J.[[...Am7
c0dec55f:	50ab c3da 942a 98d6 6e41 198e e6e4 4299     .P..*...An.....B
c0dec56f:	8ec2 2429 99ec 6dc0 6181 0933 c4f8 5561     ..)$...m.a3...aU
c0dec57f:	6001 605a 199a 7c43 01fb 02e5 04e6 e43a     .`Z`..C|......:.
c0dec58f:	0320 0000                                    ...

c0dec593 <C_Back_40px>:
c0dec593:	0028 0028 0102 c4ff c0de                    (.(.......

c0dec59d <C_Check_40px_bitmap>:
c0dec59d:	0028 0028 5401 0000 0052 8b1f 0008 0000     (.(..T..R.......
c0dec5ad:	0000 0302 6063 05c0 4078 1c84 9088 1307     ....c`..x@......
c0dec5bd:	400d ff82 9000 7f60 2400 3f98 0900 1fc6     .@....`..$.?....
c0dec5cd:	9920 203f 0ea2 d844 57e3 2608 602a b02c      .? ..D..W.&*`,.
c0dec5dd:	5818 ac16 ac0e ac03 1ed7 5e6e 5c0d 0183     .X........n^.\..
c0dec5ed:	0103 0000 8363 77dc 00c8 0000               ....c..w....

c0dec5f9 <C_Check_40px>:
c0dec5f9:	0028 0028 0100 c59d c0de                    (.(.......

c0dec603 <C_Chevron_40px_bitmap>:
c0dec603:	0028 0028 5c22 0000 ffff ffff ffff ffff     (.(."\..........
c0dec613:	1cda 03e4 0310 03e2 0330 03e0 0350 03de     ........0...P...
c0dec623:	1820 0320 03dc 0820 08c1 0320 03da 0820      . ... ... ... .
c0dec633:	08c3 0320 03d8 0820 08c5 0320 03d6 0820     .. ... ... ... .
c0dec643:	08c7 0320 05d4 0820 08c9 0520 9ed3 8020     .. ... ... ... .
c0dec653:	98cb e002 0ed4 cd09 0e09 ffff ffff ffff     ................
c0dec663:	ffff e2ff                                   ....

c0dec667 <C_Chevron_40px>:
c0dec667:	0028 0028 0102 c603 c0de                    (.(.......

c0dec671 <C_Chevron_Back_40px_bitmap>:
c0dec671:	0028 0028 7621 0000 0074 8b1f 0008 0000     (.(.!v..t.......
c0dec681:	0000 0302 d2ed 0dc1 3080 0508 8e50 383d     .........0..P.=8
c0dec691:	a3a4 41b0 7157 6e93 3863 d498 1042 eb7e     ...AWq.nc8..B.~.
c0dec6a1:	4606 340e bfe5 0b84 ffbd aa35 e7e1 2eb2     .F.4......5.....
c0dec6b1:	6705 b55c 541f 2473 e9b4 1273 7640 27b0     .g\..Ts$..s.@v.'
c0dec6c1:	2794 c807 0711 4c94 3203 73ac b828 21cd     .'.....L.2.s(..!
c0dec6d1:	8732 7313 3338 0b83 b833 8532 532b 62f8     2..s83..3.2.+S.b
c0dec6e1:	9603 1dcf 0dc6 8ef2 7343 0320 0000          ........Cs ...

c0dec6ef <C_Chevron_Back_40px>:
c0dec6ef:	0028 0028 0102 c671 c0de                    (.(...q...

c0dec6f9 <C_Chevron_Next_40px_bitmap>:
c0dec6f9:	0028 0028 7121 0000 006f 8b1f 0008 0000     (.(.!q..o.......
c0dec709:	0000 0302 ceed 0dbb 3080 450c 5751 0a51     .........0.EQWQ.
c0dec719:	cc86 ac06 0d90 0918 42a6 1448 c48f 8e44     .........BH...D.
c0dec729:	1b3f 6e20 74f9 1964 58f8 8735 22e9 02da     ?. n.td..X5.."..
c0dec739:	ca23 a581 61e2 f5a5 b074 c031 c6c1 0b00     #....a..t.1.....
c0dec749:	3999 ccc8 c1c2 1c0c 434c 0a61 9b0a 3150     .9......LCa...P1
c0dec759:	c781 1d64 ec2e fe92 bcbe 7707 ddbd ebf8     ..d........w....
c0dec769:	383d be09 209b 0003                          =8... ...

c0dec772 <C_Chevron_Next_40px>:
c0dec772:	0028 0028 0102 c6f9 c0de                    (.(.......

c0dec77c <C_Close_40px_bitmap>:
c0dec77c:	0028 0028 8521 0000 0083 8b1f 0008 0000     (.(.!...........
c0dec78c:	0000 0302 fffb c07f bfc0 08f9 cff6 10f7     ................
c0dec79c:	11fa 4207 41ac 420f 604f 87e8 fd09 e060     ...B.A.BO`....`.
c0dec7ac:	3184 0ae0 e01b 70d2 9216 9c2c 5089 6706     .1.....p..,..P.g
c0dec7bc:	2923 7383 9590 7941 ca28 5ca0 6554 3e60     #).s..Ay(..\Te`>
c0dec7cc:	329a 42b0 6574 8520 cae8 0a40 9431 1561     .2.Bte ...@.1.a.
c0dec7dc:	a2c3 9b17 581d 82dc cdcd fc58 2d86 b00c     .....X....X..-..
c0dec7ec:	1584 30b6 12c5 d8f6 08e2 5c5b 8b62 6c73     ...0......[\b.sl
c0dec7fc:	6369 0040 b400 b40b 2014 0003                ic@...... ...

c0dec809 <C_Close_40px>:
c0dec809:	0028 0028 0102 c77c c0de                    (.(...|...

c0dec813 <C_Info_40px_bitmap>:
c0dec813:	0028 0028 3121 0000 002f 8b1f 0008 0000     (.(.!1../.......
c0dec823:	0000 0302 fffb 147f 0bd0 f030 67ff 0180     ..........0..g..
c0dec833:	2a7e 7189 5a60 80d3 ec45 cf57 f068 0593     ~*.q`Z..E.W.h...
c0dec843:	d900 c99e 2019 0003                          ..... ...

c0dec84c <C_Info_40px>:
c0dec84c:	0028 0028 0102 c813 c0de                    (.(.......

c0dec856 <C_Mini_Push_40px_bitmap>:
c0dec856:	0028 0028 ce21 0000 00cc 8b1f 0008 0000     (.(.!...........
c0dec866:	0000 0302 936d 0dcd 30c2 460c 2123 4ea4     ....m....0.F#!.N
c0dec876:	ba83 2b01 5230 6037 4604 0762 b006 5c0f     ...+0R7`.Fb....\
c0dec886:	4240 4936 2f9c f6bf c9a5 b3d3 3913 aaae     @B6I./.......9..
c0dec896:	1085 0eb1 4911 1e0a 7710 829f 6ab0 5a90     .....I...w...j.Z
c0dec8a6:	9606 3ac2 08a7 a7f5 a2d1 4761 b5e3 d168     ...:......aG..h.
c0dec8b6:	2f6c 053a a92f f019 a4cc fb95 6b3d cac1     l/:./.......=k..
c0dec8c6:	53f6 6563 0ef5 8ae1 c043 10f6 3220 db41     .Sce....C... 2A.
c0dec8d6:	880e d044 1fee 8588 4d45 6215 5161 8553     ..D.....EM.baQS.
c0dec8e6:	2c68 556b 7634 5a4b cf12 e599 bcbb ab36     h,kU4vKZ......6.
c0dec8f6:	5c7e fdda 61e4 cbec d6c6 b81e ebcc db95     ~\...a..........
c0dec906:	af53 def7 791b e96f f9be 9628 eac9 b147     S....yo...(...G.
c0dec916:	3926 e6b3 a4ce bb37 8cee ff4f 1fc2 8764     &9....7...O...d.
c0dec926:	9d98 0320 0000                              .. ...

c0dec92c <C_Mini_Push_40px>:
c0dec92c:	0028 0028 0102 c856 c0de                    (.(...V...

c0dec936 <C_Privacy_40px_bitmap>:
c0dec936:	0028 0028 ac21 0001 01aa 8b1f 0008 0000     (.(.!...........
c0dec946:	0000 0302 927d 4bbf 50c3 c710 e9af 8b4f     ....}..K.P....O.
c0dec956:	1768 0741 b335 fe88 6609 1d28 2c44 1fe2     h.A.5....f(.D,..
c0dec966:	2ea0 cdd2 2e0a 6082 a45c b4b8 0ff8 4418     .......`\......D
c0dec976:	1c50 b3b4 dd28 60a5 8777 38a2 10e9 b56b     P...(..`w..8..k.
c0dec986:	dac6 bce6 97bb 2da6 378a 25e4 f79f f7de     .......-.7.%....
c0dec996:	77be c439 a3bf ba75 ca9e f75c 26a1 8448     .w9...u...\..&H.
c0dec9a6:	7a2e 23d8 b178 1f40 5e4e 6ad8 7320 7b7e     .z.#x.@.N^.j s~{
c0dec9b6:	4cb6 1a70 8cd1 7231 2e21 cf5b 8c06 03a3     .Lp...1r!.[.....
c0dec9c6:	1ac2 a730 dc34 2ab5 4166 beee c941 6e97     ..0.4..*fA..A..n
c0dec9d6:	63a8 6968 74dd d859 d595 fb88 81c8 5288     .chi.tY........R
c0dec9e6:	2181 90c9 a1bb 74a4 16cc 69c7 9e7a 9390     .!.....t...iz...
c0dec9f6:	4e29 1eda d913 c423 f127 53ac 07d2 22a8     )N....#.'..S..."
c0deca06:	e1d6 5d0e 461d 4b72 49c0 30eb f88b 880a     ...].FrK.I.0....
c0deca16:	10ef 6125 8d93 09ba a8da c904 5c0e 328a     ..%a.........\.2
c0deca26:	283b 1004 218b 5d44 cd39 2bd2 c9dd 15a3     ;(...!D]9..+....
c0deca36:	36c1 084c 01ab 6919 24c1 e237 561b 7d84     .6L....i.$7..V.}
c0deca46:	8488 c031 51cc 7b85 216b 9bf4 c259 fe9a     ..1..Q.{k!..Y...
c0deca56:	92dd 9faa b872 cb24 3521 a8b4 62fe b698     ....r.$.!5...b..
c0deca66:	c2a2 4d4c 6cbc 4560 f7eb 916c 5521 cc5b     ..LM.l`E..l.!U[.
c0deca76:	86e6 8752 3d5c adc2 7bf7 d9a0 a6dc be99     ..R.\=...{......
c0deca86:	2d5e 26b2 a8cb 1e9e 9a13 8b17 3a52 f30c     ^-.&........R:..
c0deca96:	3ef3 a327 ca61 ae09 8fcf 084f 5aca f908     .>'.a.....O..Z..
c0decaa6:	35c8 ffbc a35f 5ec4 41ec f3b8 d353 3a1e     .5.._..^.A..S..:
c0decab6:	f604 9120 5418 b993 8329 5e85 db99 f2e5     .. ..T..)..^....
c0decac6:	56d5 6002 57d4 75ae b266 f08b 114b a76d     .V.`.W.uf...K.m.
c0decad6:	a077 f65f c993 81d4 ff8d 0fc5 af18 4ccb     w._............L
c0decae6:	0320 0000                                    ...

c0decaea <C_Privacy_40px>:
c0decaea:	0028 0028 0102 c936 c0de                    (.(...6...

c0decaf4 <C_QRCode_40px_bitmap>:
c0decaf4:	0028 0028 9921 0000 0097 8b1f 0008 0000     (.(.!...........
c0decb04:	0000 0302 fffb da9f 11e0 0803 bd30 00ff     ............0...
c0decb14:	fea2 607f 8900 8029 18c5 91f4 20c5 0c42     ...`..)...... B.
c0decb24:	28fc fc62 1230 c2c2 f62d a3a7 4307 07ec     .(b.0...-....C..
c0decb34:	0703 ff84 6101 b11e 1062 c0f3 903c 9073     .....a..b...<.s.
c0decb44:	25ec 8628 07f0 cc3f 4839 85fe 218b 0b85     .%(...?.9H...!..
c0decb54:	923f 49b3 d30a 107f f583 ed90 04f8 99a1     ?..I............
c0decb64:	c230 9b14 d19b 19c2 0c55 061e 3a27 a3ce     0.......U...':..
c0decb74:	1586 d790 d0c0 aa4f 3618 88f3 0b74 7f16     ......O..6..t...
c0decb84:	f360 b62f a170 002e 5b00 1eb2 20fb 0003     `./.p....[... ..
	...

c0decb95 <C_QRCode_40px>:
c0decb95:	0028 0028 0102 caf4 c0de                    (.(.......

c0decb9f <C_Settings_40px_bitmap>:
c0decb9f:	0028 0028 9321 0001 0191 8b1f 0008 0000     (.(.!...........
c0decbaf:	0000 0302 5275 52b1 40c2 7d10 88c9 9841     ....uR.R.@.}..A.
c0decbbf:	8c91 8e56 10ce 5e87 3e46 ec40 93b0 4e8e     ..V....^F>@....N
c0decbcf:	03fd 4053 850d 1695 9d62 4a42 b03b 8a93     ..S@....b.BJ;...
c0decbdf:	0bf1 04fc 1c1c 40eb a202 3920 2f77 1738     .......@.. 9w/8.
c0decbef:	d818 6f62 e5ef eef2 bbed 6215 8c7d ad4d     ..bo.......b}.M.
c0decbff:	8cba 81d5 25ad 8028 6b61 45dd 87ac 8fac     .....%(.ak.E....
c0decc0f:	daac 764f 4e0b 7751 3303 aed6 761c ac42     ..Ov.NQw.3...vB.
c0decc1f:	8a01 1084 f9ad 314a 12e5 74f7 2cb5 8c9a     ......J1...t.,..
c0decc2f:	300d 976b 5c73 4ae5 8b8e 5734 5c1e 3dc5     .0k.s\.J..4W.\.=
c0decc3f:	9e43 1197 0a3a e29b 765c 4780 fd85 1aa0     C...:...\v.G....
c0decc4f:	9e59 5cee 6075 4b8a 57ca 26c0 c381 6890     Y..\u`.K.W.&...h
c0decc5f:	fac4 2c7b 48e3 1f08 7c17 4593 0557 0a16     ..{,.H...|.EW...
c0decc6f:	d037 8459 a74e 601f f108 0385 9e21 2d71     7.Y.N..`....!.q-
c0decc7f:	8d44 19ec 2343 7786 f9a6 8a45 b79a 1d50     D...C#.w..E...P.
c0decc8f:	84e0 5a08 cc1b 9a7c 0e90 fba5 ef06 716a     ...Z..|.......jq
c0decc9f:	76ce 5398 2c73 25fa 6035 a205 fe11 a49b     .v.Ss,.%5`......
c0deccaf:	81f4 18f4 b93a c7d3 8b1b a6df 5264 755b     ....:.......dR[u
c0deccbf:	59c4 becb af10 c5ac 9ec6 b960 87d4 b385     .Y........`.....
c0decccf:	cb32 a1f5 4bf3 b27d ff65 79bd f9b2 b2d0     2....K}.e..y....
c0deccdf:	3d80 6650 5e86 2f05 11b7 5733 3a79 f45c     .=Pf.^./..3Wy:\.
c0deccef:	f25e e8f9 6746 1b24 65be aed0 b864 14ca     ^...Fg$..e..d...
c0deccff:	6e9c 96f8 f913 44d4 2df3 8e8b 8d9a 9aa4     .n.....D.-......
c0decd0f:	c911 53bb 8a72 1b9a b158 f976 a9b8 3db8     ...Sr...X.v....=
c0decd1f:	3de4 50e9 6624 61a6 6747 dd64 aeec f19c     .=.P$f.aGgd.....
c0decd2f:	fc68 4701 f51a 207f 0003                     h..G... ...

c0decd3a <C_Settings_40px>:
c0decd3a:	0028 0028 0102 cb9f c0de                    (.(.......

c0decd44 <C_Warning_40px_bitmap>:
c0decd44:	0028 0028 e721 0000 00e5 8b1f 0008 0000     (.(.!...........
c0decd54:	0000 0302 d36d 0db1 40c2 850c 47e1 2284     ....m....@...G."
c0decd64:	283a d511 88d5 1182 0032 8662 904c 0815     :(......2.b.L...
c0decd74:	3013 2c03 0ec0 9e88 1025 526d 8450 9d10     .0.,....%.mRP...
c0decd84:	73b9 8842 b87d aafc 675f 911f 4b1c 34c1     .sB.}..._g...K.4
c0decd94:	0b26 c128 5b44 c08a c0f6 d95a d811 d2e6     &.(.D[....Z.....
c0decda4:	c0ae a486 81dd 4905 80ab 4939 66ab 4988     .......I..9I.f.I
c0decdb4:	635a be30 7349 11ad c0d3 8c52 240e b5cd     Zc0.Is....R..$..
c0decdc4:	d476 6f9b 6925 2adc 6dad d615 0eb5 c5ed     v..o%i.*.m......
c0decdd4:	25ad 4cfc b04b b93d b035 db42 20db 942e     .%.LK.=.5.B.. ..
c0decde4:	43d1 773e e2db a970 2e8d 4ac0 9d1b 4c80     .C>w..p....J...L
c0decdf4:	e51b ec3f a6cd ce88 c8ca 5f26 bc1c 6d7d     ..?.......&_..}m
c0dece04:	5db8 a8ee 76e6 cbb5 5dae bcee 576d c1b7     .]...v...]..mW..
c0dece14:	caed 5db8 6f9b da37 9fec f49b 81ed ccb9     ...].o7.........
c0dece24:	785d fef8 7c2f 1300 b8d8 2006 0003           ]x../|..... ...

c0dece33 <C_Warning_40px>:
c0dece33:	0028 0028 0102 cd44 c0de 7544 6d6d 2079     (.(...D...Dummy 
c0dece43:	0032 704f 7265 7461 6f69 206e 6973 6e67     2.Operation sign
c0dece53:	6465 4100 6464 6572 7373 7620 7265 6669     ed.Address verif
c0dece63:	6369 7461 6f69 0a6e 6163 636e 6c65 656c     ication.cancelle
c0dece73:	0064 7254 6e61 6173 7463 6f69 206e 6843     d.Transaction Ch
c0dece83:	6365 206b 6e75 7661 6961 616c 6c62 0065     eck unavailable.
c0dece93:	7041 7270 766f 0065 6c42 6e69 2d64 6973     Approve.Blind-si
c0decea3:	6e67 3000 302e 312e 4800 6c6f 2064 6f74     gn.0.0.1.Hold to
c0deceb3:	7320 6769 006e 704f 7265 7461 6f69 206e      sign.Operation 
c0decec3:	6572 656a 7463 6465 5200 6a65 6365 0074     rejected.Reject.
c0deced3:	6649 7920 756f 7227 2065 6f6e 2074 7375     If you're not us
c0decee3:	6e69 2067 6874 2065 654c 6764 7265 5720     ing the Ledger W
c0decef3:	6c61 656c 2074 7061 2c70 5420 6172 736e     allet app, Trans
c0decf03:	6361 6974 6e6f 4320 6568 6b63 6d20 6769     action Check mig
c0decf13:	7468 6e20 746f 7720 726f 2e6b 4920 2066     ht not work. If 
c0decf23:	6f79 2075 7261 2065 7375 6e69 2067 654c     you are using Le
c0decf33:	6764 7265 5720 6c61 656c 2c74 7220 6a65     dger Wallet, rej
c0decf43:	6365 2074 6874 2065 7274 6e61 6173 7463     ect the transact
c0decf53:	6f69 206e 6e61 2064 7274 2079 6761 6961     ion and try agai
c0decf63:	2e6e 0a0a 6547 2074 6568 706c 6120 2074     n...Get help at 
c0decf73:	656c 6764 7265 632e 6d6f 652f 3131 5200     ledger.com/e11.R
c0decf83:	6a65 6365 2074 7274 6e61 6173 7463 6f69     eject transactio
c0decf93:	3f6e 4300 6972 6974 6163 206c 6874 6572     n?.Critical thre
c0decfa3:	7461 6420 7465 6365 6574 2e64 420a 696c     at detected..Bli
c0decfb3:	646e 7320 6769 696e 676e 7220 7165 6975     nd signing requi
c0decfc3:	6572 2e64 5500 696e 6564 746e 6669 6569     red..Unidentifie
c0decfd3:	2064 6972 6b73 5300 6f68 2077 7361 5120     d risk.Show as Q
c0decfe3:	0052 6f47 6220 6361 206b 6f74 6f20 6570     R.Go back to ope
c0decff3:	6172 6974 6e6f 5400 6172 736e 6361 6974     ration.Transacti
c0ded003:	6e6f 4320 6568 6b63 7520 616e 6176 6c69     on Check unavail
c0ded013:	6261 656c 0a2e 6c42 6e69 2064 6973 6e67     able..Blind sign
c0ded023:	6e69 2067 6572 7571 7269 6465 002e 6441     ing required..Ad
c0ded033:	7264 7365 2073 6576 6972 6966 6465 5300     dress verified.S
c0ded043:	6977 6570 7420 206f 6f63 746e 6e69 6575     wipe to continue
c0ded053:	2500 2073 7325 250a 0073 7468 7074 3a73     .%s %s.%s.https:
c0ded063:	2f2f 7325 4100 6572 7920 756f 7320 7275     //%s.Are you sur
c0ded073:	2065 6f74 610a 6c6c 776f 6420 6d75 796d     e to.allow dummy
c0ded083:	3220 690a 206e 7274 6e61 6173 7463 6f69      2.in transactio
c0ded093:	736e 003f 7254 6e61 6173 7463 6f69 206e     ns?.Transaction 
c0ded0a3:	6973 6e67 6465 4500 534e 6e20 6d61 7365     signed.ENS names
c0ded0b3:	6120 6572 7220 7365 6c6f 6576 2064 7962      are resolved by
c0ded0c3:	4c20 6465 6567 2072 6162 6b63 6e65 2e64      Ledger backend.
c0ded0d3:	5300 6365 7275 7469 2079 6572 6f70 7472     .Security report
c0ded0e3:	4400 7665 6c65 706f 7265 2500 0a73 7325     .Developer.%s.%s
c0ded0f3:	2520 0073 6c41 6f6c 2077 7564 6d6d 2079      %s.Allow dummy 
c0ded103:	0a31 6e69 7420 6172 736e 6361 6974 6e6f     1.in transaction
c0ded113:	0073 6559 2c73 7320 696b 0070 7325 7220     s.Yes, skip.%s r
c0ded123:	7065 726f 0074 6f47 6220 6361 206b 6f74     eport.Go back to
c0ded133:	7420 6172 736e 6361 6974 6e6f 5300 6769      transaction.Sig
c0ded143:	206e 656d 7373 6761 0065 6142 6b63 7420     n message.Back t
c0ded153:	206f 6173 6566 7974 4d00 7365 6173 6567     o safety.Message
c0ded163:	7320 6769 656e 0064 6c43 736f 0065 6953      signed.Close.Si
c0ded173:	6e67 7420 6172 736e 6361 6974 6e6f 5300     gn transaction.S
c0ded183:	6163 206e 6f74 7620 6569 2077 7566 6c6c     can to view full
c0ded193:	7220 7065 726f 0074 6854 7369 7420 6172      report.This tra
c0ded1a3:	736e 6361 6974 6e6f 6f20 2072 656d 7373     nsaction or mess
c0ded1b3:	6761 2065 6163 6e6e 746f 6220 2065 6564     age cannot be de
c0ded1c3:	6f63 6564 2064 7566 6c6c 2e79 4920 2066     coded fully. If 
c0ded1d3:	6f79 2075 6863 6f6f 6573 7420 206f 6973     you choose to si
c0ded1e3:	6e67 202c 6f79 2075 6f63 6c75 2064 6562     gn, you could be
c0ded1f3:	6120 7475 6f68 6972 697a 676e 6d20 6c61      authorizing mal
c0ded203:	6369 6f69 7375 6120 7463 6f69 736e 7420     icious actions t
c0ded213:	6168 2074 6163 206e 7264 6961 206e 6f79     hat can drain yo
c0ded223:	7275 7720 6c61 656c 2e74 0a0a 654c 7261     ur wallet...Lear
c0ded233:	206e 6f6d 6572 203a 656c 6764 7265 632e     n more: ledger.c
c0ded243:	6d6f 652f 0038 6341 6563 7470 7420 7268     om/e8.Accept thr
c0ded253:	6165 2074 6e61 2064 6f63 746e 6e69 6575     eat and continue
c0ded263:	4100 6c6c 776f 6420 6d75 796d 3220 690a     .Allow dummy 2.i
c0ded273:	206e 7274 6e61 6173 7463 6f69 736e 5600     n transactions.V
c0ded283:	7265 6973 6e6f 4d00 726f 0065 6854 7369     ersion.More.This
c0ded293:	7420 6172 736e 6361 6974 6e6f 6320 6e61      transaction can
c0ded2a3:	6f6e 2074 6562 4320 656c 7261 5320 6769     not be Clear Sig
c0ded2b3:	656e 0064 6559 2c73 7220 6a65 6365 0074     ned.Yes, reject.
c0ded2c3:	6143 636e 6c65 5400 6968 2073 7274 6e61     Cancel.This tran
c0ded2d3:	6173 7463 6f69 206e 6177 2073 6373 6e61     saction was scan
c0ded2e3:	656e 2064 7361 6d20 6c61 6369 6f69 7375     ned as malicious
c0ded2f3:	6220 2079 6557 3362 4320 6568 6b63 2e73      by Web3 Checks.
c0ded303:	2500 2064 666f 2520 0064 6b53 7069 7220     .%d of %d.Skip r
c0ded313:	7665 6569 3f77 4200 696c 646e 7320 6769     eview?.Blind sig
c0ded323:	696e 676e 7220 7165 6975 6572 0064 755b     ning required.[u
c0ded333:	6b6e 6f6e 6e77 005d 6952 6b73 6420 7465     nknown].Risk det
c0ded343:	6365 6574 0064 6c42 6e69 2064 6973 6e67     ected.Blind sign
c0ded353:	6e69 2067 6572 7571 7269 6465 002e 6e55     ing required..Un
c0ded363:	6469 6e65 6974 6966 6465 7420 7268 6165     identified threa
c0ded373:	0074 5246 534f 4754 4e55 4300 6972 6974     t.FROSTGUN.Criti
c0ded383:	6163 206c 6874 6572 7461 4100 6363 7065     cal threat.Accep
c0ded393:	2074 6972 6b73 6120 646e 6320 6e6f 6974     t risk and conti
c0ded3a3:	756e 0065 6854 7369 7420 6172 736e 6361     nue.This transac
c0ded3b3:	6974 6e6f 7327 6420 7465 6961 736c 6120     tion's details a
c0ded3c3:	6572 6e20 746f 6620 6c75 796c 7620 7265     re not fully ver
c0ded3d3:	6669 6169 6c62 2e65 4920 2066 6f79 2075     ifiable. If you 
c0ded3e3:	6973 6e67 202c 6f79 2075 6f63 6c75 2064     sign, you could 
c0ded3f3:	6f6c 6573 6120 6c6c 7920 756f 2072 7361     lose all your as
c0ded403:	6573 7374 002e 6f47 6220 6361 206b 6f74     sets..Go back to
c0ded413:	6d20 7365 6173 6567 5000 746f 6e65 6974      message.Potenti
c0ded423:	6c61 7220 7369 206b 6564 6574 7463 6465     al risk detected
c0ded433:	0a2e 6c42 6e69 2064 6973 6e67 6e69 2067     ..Blind signing 
c0ded443:	6572 7571 7269 6465 002e 6854 7369 6120     required..This a
c0ded453:	6363 756f 746e 6c20 6261 6c65 6320 6d6f     ccount label com
c0ded463:	7365 6620 6f72 206d 6f79 7275 4120 6464     es from your Add
c0ded473:	6572 7373 4220 6f6f 206b 6e69 4c20 6465     ress Book in Led
c0ded483:	6567 2072 6157 6c6c 7465 002e 6f4e 7420     ger Wallet..No t
c0ded493:	7268 6165 2074 6564 6574 7463 6465 6220     hreat detected b
c0ded4a3:	2079 7254 6e61 6173 7463 6f69 206e 6843     y Transaction Ch
c0ded4b3:	6365 2e6b 4200 696c 646e 7320 6769 696e     eck..Blind signi
c0ded4c3:	676e 6120 6568 6461 5000 7261 6974 6c61     ng ahead.Partial
c0ded4d3:	5320 6769 0a6e 7274 6e61 6173 7463 6f69      Sign.transactio
c0ded4e3:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0ded4f3:	6465 5200 6a65 6365 2074 706f 7265 7461     ed.Reject operat
c0ded503:	6f69 3f6e 3000 3231 3433 3635 3837 4139     ion?.0123456789A
c0ded513:	4342 4544 0046 656e 7774 726f 2e6b 4900     BCDEF.network..I
c0ded523:	2066 6f79 2775 6572 7320 7275 2065 6f79     f you're sure yo
c0ded533:	2075 6f64 276e 2074 656e 6465 7420 206f     u don't need to 
c0ded543:	6572 6976 7765 6120 6c6c 6620 6569 646c     review all field
c0ded553:	2c73 7920 756f 6320 6e61 7320 696b 2070     s, you can skip 
c0ded563:	7473 6172 6769 7468 7420 206f 6973 6e67     straight to sign
c0ded573:	6e69 2e67 5400 6968 2073 7274 6e61 6173     ing..This transa
c0ded583:	7463 6f69 206e 6177 2073 6373 6e61 656e     ction was scanne
c0ded593:	2064 7361 7220 7369 796b 6220 2079 6557     d as risky by We
c0ded5a3:	3362 4320 6568 6b63 2e73 4100 6464 6572     b3 Checks..Addre
c0ded5b3:	7373 4400 6d75 796d 3120 4900 7520 646e     ss.Dummy 1.I und
c0ded5c3:	7265 7473 6e61 2c64 6320 6e6f 6966 6d72     erstand, confirm
c0ded5d3:	4e00 206f 6874 6572 7461 6420 7465 6365     .No threat detec
c0ded5e3:	6574 0064 7854 6148 6873 5400 6172 736e     ted.TxHash.Trans
c0ded5f3:	6361 6974 6e6f 7220 6a65 6365 6574 0064     action rejected.
c0ded603:	6f47 6220 6361 206b 6f74 7220 7665 6569     Go back to revie
c0ded613:	0077 7243 7469 6369 6c61 7420 7268 6165     w.Critical threa
c0ded623:	2074 6564 6574 7463 6465 002e 6953 6e67     t detected..Sign
c0ded633:	6f20 6570 6172 6974 6e6f 5000 7261 6974      operation.Parti
c0ded643:	6c61 7320 6769 0a6e 7274 6e61 6173 7463     al sign.transact
c0ded653:	6f69 006e 6544 6574 7463 6465 6220 2079     ion.Detected by 
c0ded663:	7325 0000 6b53 7069 5000 746f 6e65 6974     %s..Skip.Potenti
c0ded673:	6c61 7220 7369 206b 6564 6574 7463 6465     al risk detected
c0ded683:	002e 6f4e 7420 7268 6165 2074 6564 6574     ..No threat dete
c0ded693:	7463 6465 6220 2079 7254 6e61 6173 7463     cted by Transact
c0ded6a3:	6f69 206e 6843 6365 206b 7562 2074 6c62     ion Check but bl
c0ded6b3:	6e69 2064 6973 6e67 6e69 2067 6572 7571     ind signing requ
c0ded6c3:	7269 6465 002e 6f50 6574 746e 6169 206c     ired..Potential 
c0ded6d3:	6972 6b73 5a00 4e4b 584f 5600 7265 6669     risk.ZKNOX.Verif
c0ded6e3:	2079 4f42 204c 6461 7264 7365 0073 6552     y BOL address.Re
c0ded6f3:	6976 7765 7420 6172 736e 6361 6974 6e6f     view transaction
c0ded703:	740a 206f 7028 7261 6974 6c61 2029 6973     .to (partial) si
c0ded713:	6e67 4300 6e6f 6974 756e 2065 6e61 7779     gn.Continue anyw
c0ded723:	7961 5100 6975 2074 7061 0070 7753 7069     ay.Quit app.Swip
c0ded733:	2065 6f74 7220 7665 6569 0077 6854 7369     e to review.This
c0ded743:	6120 7070 6520 616e 6c62 7365 7320 6769      app enables sig
c0ded753:	696e 676e 740a 6172 736e 6361 6974 6e6f     ning.transaction
c0ded763:	2073 6e6f 7420 6568 5400 6172 736e 6361     s on the.Transac
c0ded773:	6974 6e6f 4320 6568 6b63 6420 6469 276e     tion Check didn'
c0ded783:	2074 6966 646e 6120 796e 7420 7268 6165     t find any threa
c0ded793:	2c74 6220 7475 6120 776c 7961 2073 6572     t, but always re
c0ded7a3:	6976 7765 7420 6172 736e 6361 6974 6e6f     view transaction
c0ded7b3:	6420 7465 6961 736c 6320 7261 6665 6c75      details careful
c0ded7c3:	796c 002e 6f43 666e 7269 006d 6552 656a     ly..Confirm.Reje
c0ded7d3:	7463 6d20 7365 6173 6567 003f 0100 c465     ct message?...e.
c0ded7e3:	5fd5 1744 68b3 5ae9 0054 301a 3c32 4fb0     ._D..h.ZT..02<.O
c0ded7f3:	34e8 5a3e 84d4 2345 a563 d098 7359 a7ed     .4>Z..E#c...Ys..
c0ded803:	2953 7d9d 3348 d839 0908 d8a1 5305 a4bd     S).}H39......S..
c0ded813:	ff02 5bfe fffe ffff 00ff 0000 0501 98ce     ...[............
c0ded823:	1bc6 f405 e27f e9ea 42a5 99bd b2f6 82e7     .........B......
c0ded833:	2346 4016 45b5 fe95 d5bf b81e 0053 0000     F#.@.E......S...
	...
c0ded85f:	0103 0000 0000 0000 0200 0000 0000 0000     ................
c0ded86f:	0300 0000 0000 0000 0400 0000 0000 0000     ................
c0ded87f:	0000 46d6 edb7 a5de 8318 88d0 643f da49     ...F........?dI.
c0ded88f:	a02d c39f f4c7 0a53 6d49 2969 64ee 4c9b     -.....S.Imi).d.L
c0ded89f:	057f c0a0 5691 8b83 2898 3faf 6712 75e1     .....V...(.?.g.u
c0ded8af:	e2e6 c784 1b9d 8a6d cdd0 e00a 57d9 3390     ......m......W.3
c0ded8bf:	1c6e eec6 1338 1c9c 0211 5323 8c7a 9de7     n...8.....#Sz...
c0ded8cf:	7e06 cc58 6710 fbc6 d8b7 a1b3 8db0 8ffc     .~X..g..........
c0ded8df:	2708 bc4d d1e8 7951 9b96 d4c0 a79f bd25     .'M...Qy......%.
c0ded8ef:	9ddf 55e5 bae0 696a 6a3c 52db 9efc a8e7     ...U..ji<j.R....
c0ded8ff:	1c2c 69fb cad4 5f67 0c52 76ce 0202 7668     ,..i..g_R..v..hv
c0ded90f:	ff00 878f 7400 0419 7471 06fd 28b5 e776     .....t..qt...(v.
c0ded91f:	06e1 890c 5cce 3426 3705 080a d0b6 2b30     .....\&4.7....0+
c0ded92f:	ab0b ed3e 39b8 ee20 670a 9772 39dc 2621     ..>..9 ..gr..9!&
c0ded93f:	70f1 89a5 644a 5444 d038 ac15 ba32 0f36     .p..JdDT8...2.6.
c0ded94f:	2c09 44de b1ba c21f d4b7 c0b5 16d2 8c22     .,.D..........".
c0ded95f:	0bce b782 e739 da8d e757 c65a ef80 9d68     ....9...W.Z...h.
c0ded96f:	15f1 e38f d8ee 5c09 4b6d b2d1 c1c7 ee66     .......\mK....f.
c0ded97f:	03fd e24a fb6f 4449 6366 ec45 447b cc3f     ..J.o.IDfcE.{D?.
c0ded98f:	bb92 5236 a9da f94f e192 2977 fea6 6cd3     ..6R..O...w)...l
c0ded99f:	0473 2f71 82de 1317 6de7 5d02 e4fd 8cbd     s.q/.....m.]....
c0ded9af:	f32c 0268 c17a 7534 8370 7b39 f1c5 6016     ,.h.z.4up.9{...`
c0ded9bf:	59fc 98d0 63a5 4523 d484 3e5a e834 b04f     .Y...c#E..Z>4.O.
c0ded9cf:	323c 1a30 5400 e95a b368 4417 d55f 65c4     <20..TZ.h..D_..e
c0ded9df:	0001 0000 0000 0000 0000 0000 0000 0000     ................
	...
c0ded9fb:	0000 9202 63fc c189 3326 67c2 c6cb 3b6e     .....c..&3.g..n;
c0deda0b:	6bf8 b6e3 cbd8 6766 7771 4fe5 b392 f269     .k....fgqw.O..i.
c0deda1b:	18f5 588d 05e7 fb81 6e4a b54a 12a8 820b     ...X....JnJ.....
c0deda2b:	df26 1e95 d710 d894 70b7 1f5d 6bb3 8e99     &........p]..k..
c0deda3b:	1ab9 384b 73e5 a7ed 2953 7d9d 3348 d839     ..K8.s..S).}H39.
c0deda4b:	0908 d8a1 5305 a4bd ff02 5bfe fffe ffff     .....S.....[....
c0deda5b:	fffe ffff 00fc 0000 0000 0000 0000 0000     ................
	...
c0deda7b:	0000 9202 30f8 4e64 e172 a031 b829 4550     .....0dNr.1.).PE
c0deda8b:	81b6 5881 285d e833 7948 70b9 4391 f5e1     ...X](3.Hy.p.C..
c0deda9b:	f093 0000 0b01 7ab7 d66a 733e 4e9b b2ac     .......zj.>s.N..
c0dedaab:	9de0 7762 2ac1 d8b8 0501 e034 28b6 f393     ..bw.*....4..(..
c0dedabb:	bbf6 7095 2551 7279 f703 b2a0 2549 2e57     ...pQ%yr....I%W.
c0dedacb:	d11c f96b fced 05e0 b91f 33e1 4b77 253c     ..k........3wK<%
c0dedadb:	877a 7d2d 028b 1c88 7664 c0ea 58fc 4bc1     z.-}....dv...X.K
c0dedaeb:	5c73 c768 f36e 9be5 adc1 b340 5ae4 5b4d     s\h.n.....@..ZM[
c0dedafb:	36f1 7257                                    .6Wr>

c0dedb00 <.L__const.handler_cmd_Poseidon.input>:
c0dedb00:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0dedb10:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0dedb20:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0dedb30:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0dedb40:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0dedb50:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0dedb60:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0dedb70:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0dedb80:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0dedb90:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0dedba0 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0dedbbc:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0dedbcc:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0dedbdc:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0dedbec:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0dedbfc:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0dedc0c:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0dedc1c:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0dedc2c:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0dedc3c:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0dedc5c:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0dedc6c:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0dedc7c:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0dedc8c:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0dedc9c:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0dedcac:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0dedcbc:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0dedccc:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0dedcdc:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0dedcfc:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0dedd0c:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0dedd1c:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0dedd2c:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0dedd3c:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0dedd4c:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0dedd5c:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0dedd6c:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0dedd7c:	9b44 9ffb                                   D...

c0dedd80 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0dedd9c:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0deddac:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0deddbc:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0deddcc:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0dedddc:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0deddec:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0deddfc:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0dede0c:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0dede1c:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0dede3c:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0dede4c:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0dede5c:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0dede6c:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0dede7c:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0dede8c:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0dede9c:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0dedeac:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0dedebc:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0dededc:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0dedeec:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0dedefc:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0dedf0c:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0dedf1c:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0dedf2c:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0dedf3c:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0dedf4c:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0dedf5c:	8132 74b1                                   2..t

c0dedf60 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0dedf60:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0dedf70:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0dedf80:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0dedf90:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0dedfa0:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0dedfb0:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0dedfc0 <.L__const.handler_cmd_PartialSig.commitmentlist_be>:
	...
c0dedfdc:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0dedfec:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0dedffc:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0dee00c:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0dee01c:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0dee02c:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0dee03c:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0dee04c:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0dee05c:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0dee07c:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0dee08c:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0dee09c:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0dee0ac:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0dee0bc:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0dee0cc:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0dee0dc:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0dee0ec:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0dee0fc:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0dee11c:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0dee12c:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0dee13c:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0dee14c:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0dee15c:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0dee16c:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0dee17c:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0dee18c:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0dee19c:	b87c 6a30                                   |.0j

c0dee1a0 <.L__const.handler_cmd_PartialSig.groupkey_be>:
c0dee1a0:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0dee1b0:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0dee1c0:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0dee1d0:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0dee1e0 <settingContents>:
c0dee1e0:	0000 0000 e1fc c0de 0001 0000               ............

c0dee1ec <infoList>:
c0dee1ec:	e234 c0de e23c c0de 0000 0000 0002 0000     4...<...........

c0dee1fc <contents>:
c0dee1fc:	0007 0000 0594 da7a 0002 0000 0000 0000     ......z.........
	...
c0dee230:	1b25 c0de                                   %...

c0dee234 <INFO_TYPES>:
c0dee234:	d282 c0de d0e4 c0de                         ........

c0dee23c <INFO_CONTENTS>:
c0dee23c:	cea6 c0de d6d8 c0de                         ........

c0dee244 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0dee264:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0dee274:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0dee284 <.L__const.Poseidon_alloc_init.MixColumn>:
c0dee284:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0dee294:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0dee2a4:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0dee2b4:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0dee2c4:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0dee2d4:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0dee2e4:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0dee2f4:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0dee304:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0dee314:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0dee324:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0dee334:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0dee344:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0dee354:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0dee364:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0dee374:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0dee384:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0dee394:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0dee3a4:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0dee3b4:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0dee3c4:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0dee3d4:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0dee3e4:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0dee3f4:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0dee404:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0dee414:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0dee424:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0dee434:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0dee444:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0dee454:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0dee464:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0dee474:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0dee484:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0dee494:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0dee4a4:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0dee4b4:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0dee4c4:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0dee4d4:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0dee4e4:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0dee4f4:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0dee504:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0dee514:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0dee524:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0dee534:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0dee544:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0dee554:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0dee564:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0dee574:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0dee584:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0dee594:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0dee5a4:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0dee5b4:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0dee5c4:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0dee5d4:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0dee5e4:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0dee5f4:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0dee604:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0dee614:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0dee624:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0dee634:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0dee644:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0dee654:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0dee664:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0dee674:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0dee684:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0dee694:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0dee6a4:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0dee6b4:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0dee6c4:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0dee6d4:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0dee6e4:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0dee6f4:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0dee704 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0dee704:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0dee714:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0dee724 <.L__const.nbgl_useCaseStatus.ticker>:
c0dee724:	8c39 c0de 0bb8 0000 0000 0000               9...........

c0dee730 <blindSigningWarning>:
c0dee730:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
c0dee75c:	6854 7369 6120 7070 6520 616e 6c62 7365     This app enables
c0dee76c:	7320 6769 696e 676e 740a 6172 736e 6361      signing.transac
c0dee77c:	6974 6e6f 2073 6e6f 6920 7374 6e20 7465     tions on its net
c0dee78c:	6f77 6b72 002e                              work..

c0dee792 <nbMaxElementsPerContentType>:
c0dee792:	0101 0101 0101 0301 0503 0005 0000          ..............

c0dee7a0 <.L__const.displayAddressQRCode.headerDesc>:
c0dee7a0:	0000 0000 0028 0000 0000 0000 0000 0000     ....(...........
c0dee7b0:	0000 0000                                   ....

c0dee7b4 <.L__const.displaySkipWarning.info>:
c0dee7b4:	d30d c0de d522 c0de 0000 0000 c384 c0de     ...."...........
c0dee7c4:	0000 0000 d115 c0de d603 c0de 0005 0109     ................

c0dee7d4 <.L__const.displaySecurityReport.layoutDescription>:
c0dee7d4:	0101 0000 0000 0000 0000 0000 a27d c0de     ............}...
	...

c0dee7f0 <.L__const.displaySecurityReport.headerDesc>:
c0dee7f0:	0101 0000 0000 0000 0000 0000 0917 0000     ................
c0dee800:	0000 0000                                   ....

c0dee804 <securityReportItems>:
c0dee804:	ce33 c0de ce75 c0de 0000 0000 ce33 c0de     3...u.......3...
c0dee814:	d33b c0de d578 c0de ce33 c0de d37e c0de     ;...x...3...~...
c0dee824:	d2ca c0de 0000 0000 d5d4 c0de d76c c0de     ............l...
c0dee834:	ce33 c0de d31a c0de d3a7 c0de               3...........

c0dee840 <.L__const.displayInfosListModal.info>:
c0dee840:	0100 0114 0900 0000 0000 0000 0000 0000     ................
c0dee850:	0100 0300 0000 0000 0000 0000               ............

c0dee85c <.L__const.displayInitialWarning.buttonsInfo>:
c0dee85c:	d14d c0de d716 c0de 0000 0000 0015 0009     M...............

c0dee86c <.L__const.displayInitialWarning.headerDesc>:
c0dee86c:	0000 0000 0040 0000 0000 0000 0000 0000     ....@...........
c0dee87c:	0000 0000                                   ....

c0dee880 <g_pcHex>:
c0dee880:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0dee890 <g_pcHex_cap>:
c0dee890:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0dee8a0 <_etext>:
	...

c0deea00 <N_storage_real>:
	...

c0deec00 <install_parameters>:
c0deec00:	0801 5246 534f 4754 4e55 0502 2e30 2e30     ..FROSTGUN..0.0.
c0deec10:	0331 ec81 0028 0028 e421 0000 00e2 8b1f     1...(.(.!.......
c0deec20:	0008 0000 0000 0302 929d 0dbd 3083 8510     .............0..
c0deec30:	72cf e481 6626 9400 8815 0032 2133 c806     .r..&f....2.3!..
c0deec40:	512c 1a3a a186 4a40 3193 592c 5d3a 8862     ,Q:...@J.1,Y:]b.
c0deec50:	b3ed 414d 0572 8f32 7dc7 63f7 5fa2 5f02     ..MAr.2..}.c._._
c0deec60:	66a5 529a 72b3 07c7 8ed3 caa6 017f c53c     .f.R.r........<.
c0deec70:	c14e dd07 1a76 5beb 56d4 0e0a 8aba c0f9     N...v..[.V......
c0deec80:	9651 e856 6b86 deca 8035 d508 f71b 7ed6     Q.V..k..5......~
c0deec90:	403e dc45 da07 3a3d cb5e 2216 a08e 5af7     >@E...=:^.."...Z
c0deeca0:	7d28 bd69 5be4 715c a8df 530a 7020 13c9     (}i..[\q...S p..
c0deecb0:	2f6c 4f20 3847 ed47 4a1c 0319 8d84 871b     l/ OG8G..J......
c0deecc0:	920c a1f4 ed28 a137 1f30 129c 7c9f 745e     ....(.7.0....|^t
c0deecd0:	2b3e f845 41a8 7c74 2ea6 e993 c523 b108     >+E..At|....#...
c0deece0:	f19d 961a 771a 7349 a5dc b9dc ea07 1dd8     .....wIs........
c0deecf0:	c792 24ee 3fd2 06f1 2429 3f97 0320 0000     ...$.?..)$.? ...
c0deed00:	0a04 0201 0080 2c00 0080 7323               .......,..#s
