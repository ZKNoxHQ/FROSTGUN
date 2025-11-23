
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f007 fa01 	bl	c0de740c <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 ff83 	bl	c0de6f20 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 ff4a 	bl	c0de6eb4 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 ff3b 	bl	c0de6e9e <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fe9d 	bl	c0de7d74 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f007 f97b 	bl	c0de7338 <assert_exit>
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
c0de0056:	f007 f929 	bl	c0de72ac <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fe7a 	bl	c0de7d60 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f007 f95d 	bl	c0de7338 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d153      	bne.n	c0de012c <apdu_dispatcher+0xba>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2802      	cmp	r0, #2
c0de0090:	d04f      	beq.n	c0de0132 <apdu_dispatcher+0xc0>
c0de0092:	281a      	cmp	r0, #26
c0de0094:	d057      	beq.n	c0de0146 <apdu_dispatcher+0xd4>
c0de0096:	2804      	cmp	r0, #4
c0de0098:	d05f      	beq.n	c0de015a <apdu_dispatcher+0xe8>
c0de009a:	2805      	cmp	r0, #5
c0de009c:	d069      	beq.n	c0de0172 <apdu_dispatcher+0x100>
c0de009e:	2806      	cmp	r0, #6
c0de00a0:	d07d      	beq.n	c0de019e <apdu_dispatcher+0x12c>
c0de00a2:	2807      	cmp	r0, #7
c0de00a4:	f000 8089 	beq.w	c0de01ba <apdu_dispatcher+0x148>
c0de00a8:	2808      	cmp	r0, #8
c0de00aa:	f000 8090 	beq.w	c0de01ce <apdu_dispatcher+0x15c>
c0de00ae:	2809      	cmp	r0, #9
c0de00b0:	f000 8097 	beq.w	c0de01e2 <apdu_dispatcher+0x170>
c0de00b4:	280a      	cmp	r0, #10
c0de00b6:	f000 809e 	beq.w	c0de01f6 <apdu_dispatcher+0x184>
c0de00ba:	280b      	cmp	r0, #11
c0de00bc:	f000 80a5 	beq.w	c0de020a <apdu_dispatcher+0x198>
c0de00c0:	280c      	cmp	r0, #12
c0de00c2:	f000 80ac 	beq.w	c0de021e <apdu_dispatcher+0x1ac>
c0de00c6:	280d      	cmp	r0, #13
c0de00c8:	f000 80b3 	beq.w	c0de0232 <apdu_dispatcher+0x1c0>
c0de00cc:	280e      	cmp	r0, #14
c0de00ce:	f000 80b9 	beq.w	c0de0244 <apdu_dispatcher+0x1d2>
c0de00d2:	280f      	cmp	r0, #15
c0de00d4:	f000 80bf 	beq.w	c0de0256 <apdu_dispatcher+0x1e4>
c0de00d8:	2810      	cmp	r0, #16
c0de00da:	f000 80c5 	beq.w	c0de0268 <apdu_dispatcher+0x1f6>
c0de00de:	2811      	cmp	r0, #17
c0de00e0:	f000 80cb 	beq.w	c0de027a <apdu_dispatcher+0x208>
c0de00e4:	2812      	cmp	r0, #18
c0de00e6:	f000 80d1 	beq.w	c0de028c <apdu_dispatcher+0x21a>
c0de00ea:	2813      	cmp	r0, #19
c0de00ec:	f000 80d7 	beq.w	c0de029e <apdu_dispatcher+0x22c>
c0de00f0:	2814      	cmp	r0, #20
c0de00f2:	f000 80dd 	beq.w	c0de02b0 <apdu_dispatcher+0x23e>
c0de00f6:	2815      	cmp	r0, #21
c0de00f8:	f000 80e2 	beq.w	c0de02c0 <apdu_dispatcher+0x24e>
c0de00fc:	2817      	cmp	r0, #23
c0de00fe:	f000 80e7 	beq.w	c0de02d0 <apdu_dispatcher+0x25e>
c0de0102:	2818      	cmp	r0, #24
c0de0104:	f000 80ec 	beq.w	c0de02e0 <apdu_dispatcher+0x26e>
c0de0108:	2819      	cmp	r0, #25
c0de010a:	f000 80f6 	beq.w	c0de02fa <apdu_dispatcher+0x288>
c0de010e:	2803      	cmp	r0, #3
c0de0110:	f040 80fb 	bne.w	c0de030a <apdu_dispatcher+0x298>
c0de0114:	78a0      	ldrb	r0, [r4, #2]
c0de0116:	2800      	cmp	r0, #0
c0de0118:	f040 810c 	bne.w	c0de0334 <apdu_dispatcher+0x2c2>
c0de011c:	78e0      	ldrb	r0, [r4, #3]
c0de011e:	2800      	cmp	r0, #0
c0de0120:	f040 8108 	bne.w	c0de0334 <apdu_dispatcher+0x2c2>
c0de0124:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0128:	f000 b9c7 	b.w	c0de04ba <handler_get_version>
c0de012c:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de0130:	e102      	b.n	c0de0338 <apdu_dispatcher+0x2c6>
c0de0132:	68a0      	ldr	r0, [r4, #8]
c0de0134:	2800      	cmp	r0, #0
c0de0136:	f000 80fa 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de013a:	f000 f909 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de013e:	a801      	add	r0, sp, #4
c0de0140:	f001 f944 	bl	c0de13cc <handler_cmd_PartialSig>
c0de0144:	e0f1      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de0146:	68a0      	ldr	r0, [r4, #8]
c0de0148:	2800      	cmp	r0, #0
c0de014a:	f000 80f0 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de014e:	f000 f8ff 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de0152:	a801      	add	r0, sp, #4
c0de0154:	f001 fa2c 	bl	c0de15b0 <handler_cmd_frost_commit>
c0de0158:	e0e7      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de015a:	78a0      	ldrb	r0, [r4, #2]
c0de015c:	2800      	cmp	r0, #0
c0de015e:	f040 80e9 	bne.w	c0de0334 <apdu_dispatcher+0x2c2>
c0de0162:	78e0      	ldrb	r0, [r4, #3]
c0de0164:	2800      	cmp	r0, #0
c0de0166:	f040 80e5 	bne.w	c0de0334 <apdu_dispatcher+0x2c2>
c0de016a:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de016e:	f000 b93d 	b.w	c0de03ec <handler_get_app_name>
c0de0172:	78a1      	ldrb	r1, [r4, #2]
c0de0174:	2901      	cmp	r1, #1
c0de0176:	f200 80dd 	bhi.w	c0de0334 <apdu_dispatcher+0x2c2>
c0de017a:	78e0      	ldrb	r0, [r4, #3]
c0de017c:	2800      	cmp	r0, #0
c0de017e:	f040 80d9 	bne.w	c0de0334 <apdu_dispatcher+0x2c2>
c0de0182:	68a0      	ldr	r0, [r4, #8]
c0de0184:	2800      	cmp	r0, #0
c0de0186:	f000 80d2 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de018a:	9001      	str	r0, [sp, #4]
c0de018c:	7920      	ldrb	r0, [r4, #4]
c0de018e:	2900      	cmp	r1, #0
c0de0190:	9002      	str	r0, [sp, #8]
c0de0192:	bf18      	it	ne
c0de0194:	2101      	movne	r1, #1
c0de0196:	a801      	add	r0, sp, #4
c0de0198:	f000 f93c 	bl	c0de0414 <handler_get_public_key>
c0de019c:	e0c5      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de019e:	78a1      	ldrb	r1, [r4, #2]
c0de01a0:	2900      	cmp	r1, #0
c0de01a2:	f000 80b5 	beq.w	c0de0310 <apdu_dispatcher+0x29e>
c0de01a6:	2903      	cmp	r1, #3
c0de01a8:	f200 80c4 	bhi.w	c0de0334 <apdu_dispatcher+0x2c2>
c0de01ac:	78e0      	ldrb	r0, [r4, #3]
c0de01ae:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de01b2:	2a80      	cmp	r2, #128	@ 0x80
c0de01b4:	f000 80b0 	beq.w	c0de0318 <apdu_dispatcher+0x2a6>
c0de01b8:	e0bc      	b.n	c0de0334 <apdu_dispatcher+0x2c2>
c0de01ba:	68a0      	ldr	r0, [r4, #8]
c0de01bc:	2800      	cmp	r0, #0
c0de01be:	f000 80b6 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de01c2:	f000 f8c5 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de01c6:	a801      	add	r0, sp, #4
c0de01c8:	f000 fa82 	bl	c0de06d0 <handler_cmd_keccakH>
c0de01cc:	e0ad      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de01ce:	68a0      	ldr	r0, [r4, #8]
c0de01d0:	2800      	cmp	r0, #0
c0de01d2:	f000 80ac 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de01d6:	f000 f8bb 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de01da:	a801      	add	r0, sp, #4
c0de01dc:	f000 fa3f 	bl	c0de065e <handler_cmd_blake2b512>
c0de01e0:	e0a3      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de01e2:	68a0      	ldr	r0, [r4, #8]
c0de01e4:	2800      	cmp	r0, #0
c0de01e6:	f000 80a2 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de01ea:	f000 f8b1 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de01ee:	a801      	add	r0, sp, #4
c0de01f0:	f000 fad4 	bl	c0de079c <handler_cmd_Poseidon>
c0de01f4:	e099      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de01f6:	68a0      	ldr	r0, [r4, #8]
c0de01f8:	2800      	cmp	r0, #0
c0de01fa:	f000 8098 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de01fe:	f000 f8a7 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de0202:	a801      	add	r0, sp, #4
c0de0204:	f000 fc2e 	bl	c0de0a64 <handler_cmd_tEddsaPoseidon>
c0de0208:	e08f      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de020a:	68a0      	ldr	r0, [r4, #8]
c0de020c:	2800      	cmp	r0, #0
c0de020e:	f000 808e 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de0212:	f000 f89d 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de0216:	a801      	add	r0, sp, #4
c0de0218:	f000 fb8a 	bl	c0de0930 <handler_cmd_tEddsaPoseidon_Kpub>
c0de021c:	e085      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de021e:	68a0      	ldr	r0, [r4, #8]
c0de0220:	2800      	cmp	r0, #0
c0de0222:	f000 8084 	beq.w	c0de032e <apdu_dispatcher+0x2bc>
c0de0226:	f000 f893 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de022a:	a801      	add	r0, sp, #4
c0de022c:	f000 fbc1 	bl	c0de09b2 <handler_cmd_tEddsaPoseidon_Sign>
c0de0230:	e07b      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de0232:	68a0      	ldr	r0, [r4, #8]
c0de0234:	2800      	cmp	r0, #0
c0de0236:	d07a      	beq.n	c0de032e <apdu_dispatcher+0x2bc>
c0de0238:	f000 f88a 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de023c:	a801      	add	r0, sp, #4
c0de023e:	f000 fb31 	bl	c0de08a4 <handler_cmd_Poseidon_ithRC>
c0de0242:	e072      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de0244:	68a0      	ldr	r0, [r4, #8]
c0de0246:	2800      	cmp	r0, #0
c0de0248:	d071      	beq.n	c0de032e <apdu_dispatcher+0x2bc>
c0de024a:	f000 f881 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de024e:	a801      	add	r0, sp, #4
c0de0250:	f000 fc7c 	bl	c0de0b4c <handler_cmd_tEdwards>
c0de0254:	e069      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de0256:	68a0      	ldr	r0, [r4, #8]
c0de0258:	2800      	cmp	r0, #0
c0de025a:	d068      	beq.n	c0de032e <apdu_dispatcher+0x2bc>
c0de025c:	f000 f878 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de0260:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0264:	f000 ba52 	b.w	c0de070c <handler_cmd_bolos_stretch>
c0de0268:	68a0      	ldr	r0, [r4, #8]
c0de026a:	2800      	cmp	r0, #0
c0de026c:	d05f      	beq.n	c0de032e <apdu_dispatcher+0x2bc>
c0de026e:	f000 f86f 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de0272:	a801      	add	r0, sp, #4
c0de0274:	f000 fd20 	bl	c0de0cb8 <handler_cmd_Interpolate>
c0de0278:	e057      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de027a:	68a0      	ldr	r0, [r4, #8]
c0de027c:	2800      	cmp	r0, #0
c0de027e:	d056      	beq.n	c0de032e <apdu_dispatcher+0x2bc>
c0de0280:	f000 f866 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de0284:	a801      	add	r0, sp, #4
c0de0286:	f000 fdcc 	bl	c0de0e22 <handler_cmd_Split>
c0de028a:	e04e      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de028c:	68a0      	ldr	r0, [r4, #8]
c0de028e:	2800      	cmp	r0, #0
c0de0290:	d04d      	beq.n	c0de032e <apdu_dispatcher+0x2bc>
c0de0292:	f000 f85d 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de0296:	a801      	add	r0, sp, #4
c0de0298:	f000 fe8b 	bl	c0de0fb2 <handler_cmd_frostH>
c0de029c:	e045      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de029e:	68a0      	ldr	r0, [r4, #8]
c0de02a0:	2800      	cmp	r0, #0
c0de02a2:	d044      	beq.n	c0de032e <apdu_dispatcher+0x2bc>
c0de02a4:	f000 f854 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de02a8:	a801      	add	r0, sp, #4
c0de02aa:	f000 fed3 	bl	c0de1054 <handler_cmd_encodeCommitment>
c0de02ae:	e03c      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de02b0:	68a0      	ldr	r0, [r4, #8]
c0de02b2:	b3e0      	cbz	r0, c0de032e <apdu_dispatcher+0x2bc>
c0de02b4:	f000 f84c 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de02b8:	a801      	add	r0, sp, #4
c0de02ba:	f000 ff01 	bl	c0de10c0 <handler_cmd_GroupCommitment>
c0de02be:	e034      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de02c0:	68a0      	ldr	r0, [r4, #8]
c0de02c2:	b3a0      	cbz	r0, c0de032e <apdu_dispatcher+0x2bc>
c0de02c4:	f000 f844 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de02c8:	a801      	add	r0, sp, #4
c0de02ca:	f000 ff3d 	bl	c0de1148 <handler_cmd_BindingFactors>
c0de02ce:	e02c      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de02d0:	68a0      	ldr	r0, [r4, #8]
c0de02d2:	b360      	cbz	r0, c0de032e <apdu_dispatcher+0x2bc>
c0de02d4:	f000 f83c 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de02d8:	a801      	add	r0, sp, #4
c0de02da:	f001 f923 	bl	c0de1524 <handler_cmd_tEddsaPoseidon_Sign_with_secret>
c0de02de:	e024      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de02e0:	78a0      	ldrb	r0, [r4, #2]
c0de02e2:	2801      	cmp	r0, #1
c0de02e4:	d826      	bhi.n	c0de0334 <apdu_dispatcher+0x2c2>
c0de02e6:	78e0      	ldrb	r0, [r4, #3]
c0de02e8:	bb20      	cbnz	r0, c0de0334 <apdu_dispatcher+0x2c2>
c0de02ea:	68a0      	ldr	r0, [r4, #8]
c0de02ec:	b1f8      	cbz	r0, c0de032e <apdu_dispatcher+0x2bc>
c0de02ee:	f000 f82f 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de02f2:	a801      	add	r0, sp, #4
c0de02f4:	f001 f8de 	bl	c0de14b4 <handler_get_insecure_public>
c0de02f8:	e017      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de02fa:	68a0      	ldr	r0, [r4, #8]
c0de02fc:	b1b8      	cbz	r0, c0de032e <apdu_dispatcher+0x2bc>
c0de02fe:	f000 f827 	bl	c0de0350 <OUTLINED_FUNCTION_0>
c0de0302:	a801      	add	r0, sp, #4
c0de0304:	f001 f99a 	bl	c0de163c <handler_cmd_frost_inject>
c0de0308:	e00f      	b.n	c0de032a <apdu_dispatcher+0x2b8>
c0de030a:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de030e:	e013      	b.n	c0de0338 <apdu_dispatcher+0x2c6>
c0de0310:	78e0      	ldrb	r0, [r4, #3]
c0de0312:	2880      	cmp	r0, #128	@ 0x80
c0de0314:	d10e      	bne.n	c0de0334 <apdu_dispatcher+0x2c2>
c0de0316:	2080      	movs	r0, #128	@ 0x80
c0de0318:	68a2      	ldr	r2, [r4, #8]
c0de031a:	b142      	cbz	r2, c0de032e <apdu_dispatcher+0x2bc>
c0de031c:	9201      	str	r2, [sp, #4]
c0de031e:	7922      	ldrb	r2, [r4, #4]
c0de0320:	9202      	str	r2, [sp, #8]
c0de0322:	09c2      	lsrs	r2, r0, #7
c0de0324:	a801      	add	r0, sp, #4
c0de0326:	f000 f8df 	bl	c0de04e8 <handler_sign_tx>
c0de032a:	b004      	add	sp, #16
c0de032c:	bd10      	pop	{r4, pc}
c0de032e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0332:	e001      	b.n	c0de0338 <apdu_dispatcher+0x2c6>
c0de0334:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de0338:	b004      	add	sp, #16
c0de033a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de033e:	f000 b800 	b.w	c0de0342 <io_send_sw>

c0de0342 <io_send_sw>:
c0de0342:	b580      	push	{r7, lr}
c0de0344:	4602      	mov	r2, r0
c0de0346:	2000      	movs	r0, #0
c0de0348:	2100      	movs	r1, #0
c0de034a:	f006 fd4f 	bl	c0de6dec <io_send_response_buffers>
c0de034e:	bd80      	pop	{r7, pc}

c0de0350 <OUTLINED_FUNCTION_0>:
c0de0350:	9001      	str	r0, [sp, #4]
c0de0352:	7920      	ldrb	r0, [r4, #4]
c0de0354:	9002      	str	r0, [sp, #8]
c0de0356:	4770      	bx	lr

c0de0358 <app_main>:
c0de0358:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de035a:	f006 fd29 	bl	c0de6db0 <io_init>
c0de035e:	481e      	ldr	r0, [pc, #120]	@ (c0de03d8 <app_main+0x80>)
c0de0360:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0364:	b908      	cbnz	r0, c0de036a <app_main+0x12>
c0de0366:	f001 fbed 	bl	c0de1b44 <ui_menu_main>
c0de036a:	481c      	ldr	r0, [pc, #112]	@ (c0de03dc <app_main+0x84>)
c0de036c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0370:	4448      	add	r0, r9
c0de0372:	f007 fd0d 	bl	c0de7d90 <explicit_bzero>
c0de0376:	481b      	ldr	r0, [pc, #108]	@ (c0de03e4 <app_main+0x8c>)
c0de0378:	4478      	add	r0, pc
c0de037a:	f007 f9ef 	bl	c0de775c <pic>
c0de037e:	7880      	ldrb	r0, [r0, #2]
c0de0380:	2801      	cmp	r0, #1
c0de0382:	d00d      	beq.n	c0de03a0 <app_main+0x48>
c0de0384:	2001      	movs	r0, #1
c0de0386:	f88d 0002 	strb.w	r0, [sp, #2]
c0de038a:	2000      	movs	r0, #0
c0de038c:	f8ad 0000 	strh.w	r0, [sp]
c0de0390:	4815      	ldr	r0, [pc, #84]	@ (c0de03e8 <app_main+0x90>)
c0de0392:	4478      	add	r0, pc
c0de0394:	f007 f9e2 	bl	c0de775c <pic>
c0de0398:	4669      	mov	r1, sp
c0de039a:	2203      	movs	r2, #3
c0de039c:	f007 fa0e 	bl	c0de77bc <nvm_write>
c0de03a0:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03e0 <app_main+0x88>)
c0de03a2:	ac01      	add	r4, sp, #4
c0de03a4:	f006 fd0c 	bl	c0de6dc0 <io_recv_command>
c0de03a8:	2800      	cmp	r0, #0
c0de03aa:	d414      	bmi.n	c0de03d6 <app_main+0x7e>
c0de03ac:	4602      	mov	r2, r0
c0de03ae:	eb09 0105 	add.w	r1, r9, r5
c0de03b2:	4620      	mov	r0, r4
c0de03b4:	f006 fe04 	bl	c0de6fc0 <apdu_parser>
c0de03b8:	b130      	cbz	r0, c0de03c8 <app_main+0x70>
c0de03ba:	4620      	mov	r0, r4
c0de03bc:	f7ff fe59 	bl	c0de0072 <apdu_dispatcher>
c0de03c0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03c4:	dcee      	bgt.n	c0de03a4 <app_main+0x4c>
c0de03c6:	e006      	b.n	c0de03d6 <app_main+0x7e>
c0de03c8:	2000      	movs	r0, #0
c0de03ca:	2100      	movs	r1, #0
c0de03cc:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03d0:	f006 fd0c 	bl	c0de6dec <io_send_response_buffers>
c0de03d4:	e7e6      	b.n	c0de03a4 <app_main+0x4c>
c0de03d6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de03d8:	0000097c 	.word	0x0000097c
c0de03dc:	00000000 	.word	0x00000000
c0de03e0:	000004b4 	.word	0x000004b4
c0de03e4:	00009084 	.word	0x00009084
c0de03e8:	0000906a 	.word	0x0000906a

c0de03ec <handler_get_app_name>:
c0de03ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03ee:	4808      	ldr	r0, [pc, #32]	@ (c0de0410 <handler_get_app_name+0x24>)
c0de03f0:	4478      	add	r0, pc
c0de03f2:	f007 f9b3 	bl	c0de775c <pic>
c0de03f6:	2100      	movs	r1, #0
c0de03f8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03fc:	9103      	str	r1, [sp, #12]
c0de03fe:	2107      	movs	r1, #7
c0de0400:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0404:	a801      	add	r0, sp, #4
c0de0406:	2101      	movs	r1, #1
c0de0408:	f006 fcf0 	bl	c0de6dec <io_send_response_buffers>
c0de040c:	b004      	add	sp, #16
c0de040e:	bd80      	pop	{r7, pc}
c0de0410:	00007f82 	.word	0x00007f82

c0de0414 <handler_get_public_key>:
c0de0414:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0416:	b085      	sub	sp, #20
c0de0418:	4f23      	ldr	r7, [pc, #140]	@ (c0de04a8 <handler_get_public_key+0x94>)
c0de041a:	460c      	mov	r4, r1
c0de041c:	4605      	mov	r5, r0
c0de041e:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0422:	eb09 0607 	add.w	r6, r9, r7
c0de0426:	4630      	mov	r0, r6
c0de0428:	f007 fcb2 	bl	c0de7d90 <explicit_bzero>
c0de042c:	2000      	movs	r0, #0
c0de042e:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de0432:	f809 0007 	strb.w	r0, [r9, r7]
c0de0436:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de043a:	4628      	mov	r0, r5
c0de043c:	f006 fa84 	bl	c0de6948 <buffer_read_u8>
c0de0440:	b308      	cbz	r0, c0de0486 <handler_get_public_key+0x72>
c0de0442:	eb09 0007 	add.w	r0, r9, r7
c0de0446:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de044a:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de044e:	4628      	mov	r0, r5
c0de0450:	f006 facd 	bl	c0de69ee <buffer_read_bip32_path>
c0de0454:	b1b8      	cbz	r0, c0de0486 <handler_get_public_key+0x72>
c0de0456:	eb09 0007 	add.w	r0, r9, r7
c0de045a:	2100      	movs	r1, #0
c0de045c:	2205      	movs	r2, #5
c0de045e:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de0462:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de0466:	9104      	str	r1, [sp, #16]
c0de0468:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de046c:	f100 0608 	add.w	r6, r0, #8
c0de0470:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de0474:	2000      	movs	r0, #0
c0de0476:	2121      	movs	r1, #33	@ 0x21
c0de0478:	e9cd 6500 	strd	r6, r5, [sp]
c0de047c:	f006 fb78 	bl	c0de6b70 <bip32_derive_with_seed_get_pubkey_256>
c0de0480:	b140      	cbz	r0, c0de0494 <handler_get_public_key+0x80>
c0de0482:	b280      	uxth	r0, r0
c0de0484:	e001      	b.n	c0de048a <handler_get_public_key+0x76>
c0de0486:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de048a:	b005      	add	sp, #20
c0de048c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0490:	f000 b80c 	b.w	c0de04ac <io_send_sw>
c0de0494:	2c00      	cmp	r4, #0
c0de0496:	b005      	add	sp, #20
c0de0498:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de049c:	bf08      	it	eq
c0de049e:	f001 b917 	beq.w	c0de16d0 <helper_send_response_pubkey>
c0de04a2:	f001 bc33 	b.w	c0de1d0c <ui_display_address>
c0de04a6:	bf00      	nop
c0de04a8:	00000000 	.word	0x00000000

c0de04ac <io_send_sw>:
c0de04ac:	b580      	push	{r7, lr}
c0de04ae:	4602      	mov	r2, r0
c0de04b0:	2000      	movs	r0, #0
c0de04b2:	2100      	movs	r1, #0
c0de04b4:	f006 fc9a 	bl	c0de6dec <io_send_response_buffers>
c0de04b8:	bd80      	pop	{r7, pc}

c0de04ba <handler_get_version>:
c0de04ba:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de04bc:	2000      	movs	r0, #0
c0de04be:	2101      	movs	r1, #1
c0de04c0:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de04c4:	f88d 0002 	strb.w	r0, [sp, #2]
c0de04c8:	f88d 0001 	strb.w	r0, [sp, #1]
c0de04cc:	9003      	str	r0, [sp, #12]
c0de04ce:	2003      	movs	r0, #3
c0de04d0:	f88d 1003 	strb.w	r1, [sp, #3]
c0de04d4:	2101      	movs	r1, #1
c0de04d6:	9002      	str	r0, [sp, #8]
c0de04d8:	f10d 0001 	add.w	r0, sp, #1
c0de04dc:	9001      	str	r0, [sp, #4]
c0de04de:	a801      	add	r0, sp, #4
c0de04e0:	f006 fc84 	bl	c0de6dec <io_send_response_buffers>
c0de04e4:	b004      	add	sp, #16
c0de04e6:	bd80      	pop	{r7, pc}

c0de04e8 <handler_sign_tx>:
c0de04e8:	b570      	push	{r4, r5, r6, lr}
c0de04ea:	b086      	sub	sp, #24
c0de04ec:	4e54      	ldr	r6, [pc, #336]	@ (c0de0640 <handler_sign_tx+0x158>)
c0de04ee:	4604      	mov	r4, r0
c0de04f0:	b191      	cbz	r1, c0de0518 <handler_sign_tx+0x30>
c0de04f2:	eb09 0006 	add.w	r0, r9, r6
c0de04f6:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de04fa:	2801      	cmp	r0, #1
c0de04fc:	d12c      	bne.n	c0de0558 <handler_sign_tx+0x70>
c0de04fe:	eb09 0006 	add.w	r0, r9, r6
c0de0502:	4615      	mov	r5, r2
c0de0504:	6862      	ldr	r2, [r4, #4]
c0de0506:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de050a:	1811      	adds	r1, r2, r0
c0de050c:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de0510:	d925      	bls.n	c0de055e <handler_sign_tx+0x76>
c0de0512:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de0516:	e039      	b.n	c0de058c <handler_sign_tx+0xa4>
c0de0518:	eb09 0506 	add.w	r5, r9, r6
c0de051c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0520:	4628      	mov	r0, r5
c0de0522:	f007 fc35 	bl	c0de7d90 <explicit_bzero>
c0de0526:	2000      	movs	r0, #0
c0de0528:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de052c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0530:	2001      	movs	r0, #1
c0de0532:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0536:	4620      	mov	r0, r4
c0de0538:	f006 fa06 	bl	c0de6948 <buffer_read_u8>
c0de053c:	b148      	cbz	r0, c0de0552 <handler_sign_tx+0x6a>
c0de053e:	eb09 0006 	add.w	r0, r9, r6
c0de0542:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0546:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de054a:	4620      	mov	r0, r4
c0de054c:	f006 fa4f 	bl	c0de69ee <buffer_read_bip32_path>
c0de0550:	b9b8      	cbnz	r0, c0de0582 <handler_sign_tx+0x9a>
c0de0552:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0556:	e019      	b.n	c0de058c <handler_sign_tx+0xa4>
c0de0558:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de055c:	e016      	b.n	c0de058c <handler_sign_tx+0xa4>
c0de055e:	eb09 0106 	add.w	r1, r9, r6
c0de0562:	4408      	add	r0, r1
c0de0564:	f100 0108 	add.w	r1, r0, #8
c0de0568:	4620      	mov	r0, r4
c0de056a:	f006 fa6a 	bl	c0de6a42 <buffer_move>
c0de056e:	b158      	cbz	r0, c0de0588 <handler_sign_tx+0xa0>
c0de0570:	eb09 0106 	add.w	r1, r9, r6
c0de0574:	6862      	ldr	r2, [r4, #4]
c0de0576:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de057a:	4410      	add	r0, r2
c0de057c:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de0580:	b14d      	cbz	r5, c0de0596 <handler_sign_tx+0xae>
c0de0582:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de0586:	e001      	b.n	c0de058c <handler_sign_tx+0xa4>
c0de0588:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de058c:	b006      	add	sp, #24
c0de058e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de0592:	f000 b85d 	b.w	c0de0650 <io_send_sw>
c0de0596:	2100      	movs	r1, #0
c0de0598:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de059c:	eb09 0006 	add.w	r0, r9, r6
c0de05a0:	f100 0108 	add.w	r1, r0, #8
c0de05a4:	9101      	str	r1, [sp, #4]
c0de05a6:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de05aa:	a801      	add	r0, sp, #4
c0de05ac:	f001 f9ea 	bl	c0de1984 <transaction_deserialize>
c0de05b0:	2801      	cmp	r0, #1
c0de05b2:	d114      	bne.n	c0de05de <handler_sign_tx+0xf6>
c0de05b4:	2001      	movs	r0, #1
c0de05b6:	f809 0006 	strb.w	r0, [r9, r6]
c0de05ba:	eb09 0006 	add.w	r0, r9, r6
c0de05be:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de05c2:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de05c6:	9105      	str	r1, [sp, #20]
c0de05c8:	f100 0108 	add.w	r1, r0, #8
c0de05cc:	9104      	str	r1, [sp, #16]
c0de05ce:	a804      	add	r0, sp, #16
c0de05d0:	2101      	movs	r1, #1
c0de05d2:	f006 fe6b 	bl	c0de72ac <cx_keccak_256_hash_iovec>
c0de05d6:	b140      	cbz	r0, c0de05ea <handler_sign_tx+0x102>
c0de05d8:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de05dc:	e001      	b.n	c0de05e2 <handler_sign_tx+0xfa>
c0de05de:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de05e2:	f000 f835 	bl	c0de0650 <io_send_sw>
c0de05e6:	b006      	add	sp, #24
c0de05e8:	bd70      	pop	{r4, r5, r6, pc}
c0de05ea:	4816      	ldr	r0, [pc, #88]	@ (c0de0644 <handler_sign_tx+0x15c>)
c0de05ec:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de05f0:	b1a0      	cbz	r0, c0de061c <handler_sign_tx+0x134>
c0de05f2:	4815      	ldr	r0, [pc, #84]	@ (c0de0648 <handler_sign_tx+0x160>)
c0de05f4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de05f8:	b9f9      	cbnz	r1, c0de063a <handler_sign_tx+0x152>
c0de05fa:	eb09 0406 	add.w	r4, r9, r6
c0de05fe:	2101      	movs	r1, #1
c0de0600:	f809 1000 	strb.w	r1, [r9, r0]
c0de0604:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de0608:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de060a:	9400      	str	r4, [sp, #0]
c0de060c:	f001 f97a 	bl	c0de1904 <swap_check_validity>
c0de0610:	b110      	cbz	r0, c0de0618 <handler_sign_tx+0x130>
c0de0612:	2001      	movs	r0, #1
c0de0614:	f001 fa40 	bl	c0de1a98 <validate_transaction>
c0de0618:	2000      	movs	r0, #0
c0de061a:	e7e4      	b.n	c0de05e6 <handler_sign_tx+0xfe>
c0de061c:	eb09 0006 	add.w	r0, r9, r6
c0de0620:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0624:	4909      	ldr	r1, [pc, #36]	@ (c0de064c <handler_sign_tx+0x164>)
c0de0626:	4479      	add	r1, pc
c0de0628:	f007 fbf6 	bl	c0de7e18 <strcmp>
c0de062c:	b110      	cbz	r0, c0de0634 <handler_sign_tx+0x14c>
c0de062e:	f001 fc5e 	bl	c0de1eee <ui_display_transaction>
c0de0632:	e7d8      	b.n	c0de05e6 <handler_sign_tx+0xfe>
c0de0634:	f001 fc58 	bl	c0de1ee8 <ui_display_blind_signed_transaction>
c0de0638:	e7d5      	b.n	c0de05e6 <handler_sign_tx+0xfe>
c0de063a:	20ff      	movs	r0, #255	@ 0xff
c0de063c:	f007 fa54 	bl	c0de7ae8 <os_sched_exit>
c0de0640:	00000000 	.word	0x00000000
c0de0644:	0000097c 	.word	0x0000097c
c0de0648:	0000097d 	.word	0x0000097d
c0de064c:	00007a40 	.word	0x00007a40

c0de0650 <io_send_sw>:
c0de0650:	b580      	push	{r7, lr}
c0de0652:	4602      	mov	r2, r0
c0de0654:	2000      	movs	r0, #0
c0de0656:	2100      	movs	r1, #0
c0de0658:	f006 fbc8 	bl	c0de6dec <io_send_response_buffers>
c0de065c:	bd80      	pop	{r7, pc}

c0de065e <handler_cmd_blake2b512>:
c0de065e:	b510      	push	{r4, lr}
c0de0660:	b0d0      	sub	sp, #320	@ 0x140
c0de0662:	4604      	mov	r4, r0
c0de0664:	6840      	ldr	r0, [r0, #4]
c0de0666:	2820      	cmp	r0, #32
c0de0668:	d10b      	bne.n	c0de0682 <handler_cmd_blake2b512+0x24>
c0de066a:	6820      	ldr	r0, [r4, #0]
c0de066c:	a940      	add	r1, sp, #256	@ 0x100
c0de066e:	2220      	movs	r2, #32
c0de0670:	f001 fc40 	bl	c0de1ef4 <zkn_prv_hash>
c0de0674:	b988      	cbnz	r0, c0de069a <handler_cmd_blake2b512+0x3c>
c0de0676:	a840      	add	r0, sp, #256	@ 0x100
c0de0678:	2140      	movs	r1, #64	@ 0x40
c0de067a:	f000 f817 	bl	c0de06ac <io_send_response_pointer>
c0de067e:	2000      	movs	r0, #0
c0de0680:	e00d      	b.n	c0de069e <handler_cmd_blake2b512+0x40>
c0de0682:	4668      	mov	r0, sp
c0de0684:	2109      	movs	r1, #9
c0de0686:	2240      	movs	r2, #64	@ 0x40
c0de0688:	f006 fe3e 	bl	c0de7308 <cx_hash_init_ex>
c0de068c:	b928      	cbnz	r0, c0de069a <handler_cmd_blake2b512+0x3c>
c0de068e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0692:	4668      	mov	r0, sp
c0de0694:	f006 fe3d 	bl	c0de7312 <cx_hash_update>
c0de0698:	b118      	cbz	r0, c0de06a2 <handler_cmd_blake2b512+0x44>
c0de069a:	f000 fff5 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de069e:	b050      	add	sp, #320	@ 0x140
c0de06a0:	bd10      	pop	{r4, pc}
c0de06a2:	4668      	mov	r0, sp
c0de06a4:	a940      	add	r1, sp, #256	@ 0x100
c0de06a6:	f006 fe2a 	bl	c0de72fe <cx_hash_final>
c0de06aa:	e7e3      	b.n	c0de0674 <handler_cmd_blake2b512+0x16>

c0de06ac <io_send_response_pointer>:
c0de06ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de06ae:	2200      	movs	r2, #0
c0de06b0:	ab01      	add	r3, sp, #4
c0de06b2:	c307      	stmia	r3!, {r0, r1, r2}
c0de06b4:	a801      	add	r0, sp, #4
c0de06b6:	2101      	movs	r1, #1
c0de06b8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de06bc:	f006 fb96 	bl	c0de6dec <io_send_response_buffers>
c0de06c0:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06c2 <io_send_sw>:
c0de06c2:	b580      	push	{r7, lr}
c0de06c4:	4602      	mov	r2, r0
c0de06c6:	2000      	movs	r0, #0
c0de06c8:	2100      	movs	r1, #0
c0de06ca:	f006 fb8f 	bl	c0de6dec <io_send_response_buffers>
c0de06ce:	bd80      	pop	{r7, pc}

c0de06d0 <handler_cmd_keccakH>:
c0de06d0:	b510      	push	{r4, lr}
c0de06d2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06d4:	4604      	mov	r4, r0
c0de06d6:	4668      	mov	r0, sp
c0de06d8:	2106      	movs	r1, #6
c0de06da:	2220      	movs	r2, #32
c0de06dc:	f006 fe14 	bl	c0de7308 <cx_hash_init_ex>
c0de06e0:	b950      	cbnz	r0, c0de06f8 <handler_cmd_keccakH+0x28>
c0de06e2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06e6:	4668      	mov	r0, sp
c0de06e8:	f006 fe13 	bl	c0de7312 <cx_hash_update>
c0de06ec:	b920      	cbnz	r0, c0de06f8 <handler_cmd_keccakH+0x28>
c0de06ee:	4668      	mov	r0, sp
c0de06f0:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06f2:	f006 fe04 	bl	c0de72fe <cx_hash_final>
c0de06f6:	b118      	cbz	r0, c0de0700 <handler_cmd_keccakH+0x30>
c0de06f8:	f000 ffc6 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de06fc:	b072      	add	sp, #456	@ 0x1c8
c0de06fe:	bd10      	pop	{r4, pc}
c0de0700:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de0702:	f000 ffdf 	bl	c0de16c4 <OUTLINED_FUNCTION_9>
c0de0706:	2000      	movs	r0, #0
c0de0708:	e7f8      	b.n	c0de06fc <handler_cmd_keccakH+0x2c>
	...

c0de070c <handler_cmd_bolos_stretch>:
c0de070c:	b510      	push	{r4, lr}
c0de070e:	b0a4      	sub	sp, #144	@ 0x90
c0de0710:	f000 ffb6 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de0714:	bb90      	cbnz	r0, c0de077c <handler_cmd_bolos_stretch+0x70>
c0de0716:	ac14      	add	r4, sp, #80	@ 0x50
c0de0718:	491d      	ldr	r1, [pc, #116]	@ (c0de0790 <handler_cmd_bolos_stretch+0x84>)
c0de071a:	2220      	movs	r2, #32
c0de071c:	4620      	mov	r0, r4
c0de071e:	4479      	add	r1, pc
c0de0720:	f007 fb1e 	bl	c0de7d60 <__aeabi_memcpy>
c0de0724:	a80c      	add	r0, sp, #48	@ 0x30
c0de0726:	491b      	ldr	r1, [pc, #108]	@ (c0de0794 <handler_cmd_bolos_stretch+0x88>)
c0de0728:	2220      	movs	r2, #32
c0de072a:	4479      	add	r1, pc
c0de072c:	f007 fb18 	bl	c0de7d60 <__aeabi_memcpy>
c0de0730:	a804      	add	r0, sp, #16
c0de0732:	4919      	ldr	r1, [pc, #100]	@ (c0de0798 <handler_cmd_bolos_stretch+0x8c>)
c0de0734:	2220      	movs	r2, #32
c0de0736:	4479      	add	r1, pc
c0de0738:	f007 fb12 	bl	c0de7d60 <__aeabi_memcpy>
c0de073c:	a803      	add	r0, sp, #12
c0de073e:	2120      	movs	r1, #32
c0de0740:	4622      	mov	r2, r4
c0de0742:	f000 ffae 	bl	c0de16a2 <OUTLINED_FUNCTION_5>
c0de0746:	b9c8      	cbnz	r0, c0de077c <handler_cmd_bolos_stretch+0x70>
c0de0748:	a802      	add	r0, sp, #8
c0de074a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de074c:	f000 ff9f 	bl	c0de168e <OUTLINED_FUNCTION_2>
c0de0750:	b9a0      	cbnz	r0, c0de077c <handler_cmd_bolos_stretch+0x70>
c0de0752:	a801      	add	r0, sp, #4
c0de0754:	aa04      	add	r2, sp, #16
c0de0756:	f000 ff9a 	bl	c0de168e <OUTLINED_FUNCTION_2>
c0de075a:	b978      	cbnz	r0, c0de077c <handler_cmd_bolos_stretch+0x70>
c0de075c:	4668      	mov	r0, sp
c0de075e:	f000 ff9d 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de0762:	b958      	cbnz	r0, c0de077c <handler_cmd_bolos_stretch+0x70>
c0de0764:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de0768:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de076c:	f007 f8bc 	bl	c0de78e8 <cx_bn_mod_add>
c0de0770:	b920      	cbnz	r0, c0de077c <handler_cmd_bolos_stretch+0x70>
c0de0772:	9800      	ldr	r0, [sp, #0]
c0de0774:	a91c      	add	r1, sp, #112	@ 0x70
c0de0776:	f000 ff8e 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de077a:	b118      	cbz	r0, c0de0784 <handler_cmd_bolos_stretch+0x78>
c0de077c:	f000 ff84 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de0780:	b024      	add	sp, #144	@ 0x90
c0de0782:	bd10      	pop	{r4, pc}
c0de0784:	a81c      	add	r0, sp, #112	@ 0x70
c0de0786:	f000 ff9d 	bl	c0de16c4 <OUTLINED_FUNCTION_9>
c0de078a:	2000      	movs	r0, #0
c0de078c:	e7f8      	b.n	c0de0780 <handler_cmd_bolos_stretch+0x74>
c0de078e:	bf00      	nop
c0de0790:	00007dbe 	.word	0x00007dbe
c0de0794:	00007d32 	.word	0x00007d32
c0de0798:	00007ea6 	.word	0x00007ea6

c0de079c <handler_cmd_Poseidon>:
c0de079c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de07a0:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de07a4:	4604      	mov	r4, r0
c0de07a6:	a860      	add	r0, sp, #384	@ 0x180
c0de07a8:	493c      	ldr	r1, [pc, #240]	@ (c0de089c <handler_cmd_Poseidon+0x100>)
c0de07aa:	22a0      	movs	r2, #160	@ 0xa0
c0de07ac:	4479      	add	r1, pc
c0de07ae:	f007 fad7 	bl	c0de7d60 <__aeabi_memcpy>
c0de07b2:	f000 ff65 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de07b6:	bb60      	cbnz	r0, c0de0812 <handler_cmd_Poseidon+0x76>
c0de07b8:	2000      	movs	r0, #0
c0de07ba:	a948      	add	r1, sp, #288	@ 0x120
c0de07bc:	22ff      	movs	r2, #255	@ 0xff
c0de07be:	2860      	cmp	r0, #96	@ 0x60
c0de07c0:	d002      	beq.n	c0de07c8 <handler_cmd_Poseidon+0x2c>
c0de07c2:	540a      	strb	r2, [r1, r0]
c0de07c4:	3001      	adds	r0, #1
c0de07c6:	e7fa      	b.n	c0de07be <handler_cmd_Poseidon+0x22>
c0de07c8:	4935      	ldr	r1, [pc, #212]	@ (c0de08a0 <handler_cmd_Poseidon+0x104>)
c0de07ca:	466d      	mov	r5, sp
c0de07cc:	2220      	movs	r2, #32
c0de07ce:	4628      	mov	r0, r5
c0de07d0:	4479      	add	r1, pc
c0de07d2:	f007 fac5 	bl	c0de7d60 <__aeabi_memcpy>
c0de07d6:	a809      	add	r0, sp, #36	@ 0x24
c0de07d8:	2120      	movs	r1, #32
c0de07da:	462a      	mov	r2, r5
c0de07dc:	f000 ff61 	bl	c0de16a2 <OUTLINED_FUNCTION_5>
c0de07e0:	b9b8      	cbnz	r0, c0de0812 <handler_cmd_Poseidon+0x76>
c0de07e2:	a808      	add	r0, sp, #32
c0de07e4:	466a      	mov	r2, sp
c0de07e6:	f000 ff52 	bl	c0de168e <OUTLINED_FUNCTION_2>
c0de07ea:	b990      	cbnz	r0, c0de0812 <handler_cmd_Poseidon+0x76>
c0de07ec:	a80a      	add	r0, sp, #40	@ 0x28
c0de07ee:	2120      	movs	r1, #32
c0de07f0:	f007 f8c0 	bl	c0de7974 <cx_mont_alloc>
c0de07f4:	b968      	cbnz	r0, c0de0812 <handler_cmd_Poseidon+0x76>
c0de07f6:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07f8:	a80a      	add	r0, sp, #40	@ 0x28
c0de07fa:	f007 f8c5 	bl	c0de7988 <cx_mont_init>
c0de07fe:	b940      	cbnz	r0, c0de0812 <handler_cmd_Poseidon+0x76>
c0de0800:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de0804:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0806:	2105      	movs	r1, #5
c0de0808:	2205      	movs	r2, #5
c0de080a:	4640      	mov	r0, r8
c0de080c:	f002 fe32 	bl	c0de3474 <Poseidon_alloc_init>
c0de0810:	b128      	cbz	r0, c0de081e <handler_cmd_Poseidon+0x82>
c0de0812:	f000 ff39 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de0816:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de081a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de081e:	2700      	movs	r7, #0
c0de0820:	ae60      	add	r6, sp, #384	@ 0x180
c0de0822:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de0824:	4287      	cmp	r7, r0
c0de0826:	d212      	bcs.n	c0de084e <handler_cmd_Poseidon+0xb2>
c0de0828:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de082c:	4631      	mov	r1, r6
c0de082e:	2220      	movs	r2, #32
c0de0830:	69e8      	ldr	r0, [r5, #28]
c0de0832:	f007 f809 	bl	c0de7848 <cx_bn_init>
c0de0836:	2800      	cmp	r0, #0
c0de0838:	d1eb      	bne.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de083a:	69e8      	ldr	r0, [r5, #28]
c0de083c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de083e:	4601      	mov	r1, r0
c0de0840:	f007 f8ac 	bl	c0de799c <cx_mont_to_montgomery>
c0de0844:	3701      	adds	r7, #1
c0de0846:	3620      	adds	r6, #32
c0de0848:	2800      	cmp	r0, #0
c0de084a:	d0ea      	beq.n	c0de0822 <handler_cmd_Poseidon+0x86>
c0de084c:	e7e1      	b.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de084e:	aa08      	add	r2, sp, #32
c0de0850:	4640      	mov	r0, r8
c0de0852:	2100      	movs	r1, #0
c0de0854:	2301      	movs	r3, #1
c0de0856:	f002 fe73 	bl	c0de3540 <Poseidon>
c0de085a:	6820      	ldr	r0, [r4, #0]
c0de085c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de085e:	7800      	ldrb	r0, [r0, #0]
c0de0860:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de0864:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de0868:	4601      	mov	r1, r0
c0de086a:	f007 f8a3 	bl	c0de79b4 <cx_mont_from_montgomery>
c0de086e:	2800      	cmp	r0, #0
c0de0870:	d1cf      	bne.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de0872:	6820      	ldr	r0, [r4, #0]
c0de0874:	a948      	add	r1, sp, #288	@ 0x120
c0de0876:	f000 ff0e 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de087a:	2800      	cmp	r0, #0
c0de087c:	d1c9      	bne.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de087e:	a848      	add	r0, sp, #288	@ 0x120
c0de0880:	2160      	movs	r1, #96	@ 0x60
c0de0882:	f7ff ff13 	bl	c0de06ac <io_send_response_pointer>
c0de0886:	a808      	add	r0, sp, #32
c0de0888:	f006 ffca 	bl	c0de7820 <cx_bn_destroy>
c0de088c:	2800      	cmp	r0, #0
c0de088e:	d1c0      	bne.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de0890:	f006 ffa8 	bl	c0de77e4 <cx_bn_unlock>
c0de0894:	2800      	cmp	r0, #0
c0de0896:	d1bc      	bne.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de0898:	2000      	movs	r0, #0
c0de089a:	e7bc      	b.n	c0de0816 <handler_cmd_Poseidon+0x7a>
c0de089c:	00007f10 	.word	0x00007f10
c0de08a0:	00007e6c 	.word	0x00007e6c

c0de08a4 <handler_cmd_Poseidon_ithRC>:
c0de08a4:	b570      	push	{r4, r5, r6, lr}
c0de08a6:	b0d0      	sub	sp, #320	@ 0x140
c0de08a8:	4604      	mov	r4, r0
c0de08aa:	f000 fee9 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de08ae:	bba0      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08b0:	a848      	add	r0, sp, #288	@ 0x120
c0de08b2:	491d      	ldr	r1, [pc, #116]	@ (c0de0928 <handler_cmd_Poseidon_ithRC+0x84>)
c0de08b4:	2220      	movs	r2, #32
c0de08b6:	4479      	add	r1, pc
c0de08b8:	f007 fa52 	bl	c0de7d60 <__aeabi_memcpy>
c0de08bc:	ad01      	add	r5, sp, #4
c0de08be:	491b      	ldr	r1, [pc, #108]	@ (c0de092c <handler_cmd_Poseidon_ithRC+0x88>)
c0de08c0:	2220      	movs	r2, #32
c0de08c2:	4628      	mov	r0, r5
c0de08c4:	4479      	add	r1, pc
c0de08c6:	f007 fa4b 	bl	c0de7d60 <__aeabi_memcpy>
c0de08ca:	a809      	add	r0, sp, #36	@ 0x24
c0de08cc:	2120      	movs	r1, #32
c0de08ce:	462a      	mov	r2, r5
c0de08d0:	f000 fee7 	bl	c0de16a2 <OUTLINED_FUNCTION_5>
c0de08d4:	bb08      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08d6:	a80a      	add	r0, sp, #40	@ 0x28
c0de08d8:	2120      	movs	r1, #32
c0de08da:	f007 f84b 	bl	c0de7974 <cx_mont_alloc>
c0de08de:	b9e0      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08e0:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08e2:	a80a      	add	r0, sp, #40	@ 0x28
c0de08e4:	f007 f850 	bl	c0de7988 <cx_mont_init>
c0de08e8:	b9b8      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08ea:	a80c      	add	r0, sp, #48	@ 0x30
c0de08ec:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08ee:	2105      	movs	r1, #5
c0de08f0:	2205      	movs	r2, #5
c0de08f2:	f002 fdbf 	bl	c0de3474 <Poseidon_alloc_init>
c0de08f6:	b980      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08f8:	6820      	ldr	r0, [r4, #0]
c0de08fa:	7806      	ldrb	r6, [r0, #0]
c0de08fc:	ac0c      	add	r4, sp, #48	@ 0x30
c0de08fe:	ad48      	add	r5, sp, #288	@ 0x120
c0de0900:	b12e      	cbz	r6, c0de090e <handler_cmd_Poseidon_ithRC+0x6a>
c0de0902:	4620      	mov	r0, r4
c0de0904:	4629      	mov	r1, r5
c0de0906:	f002 fdb1 	bl	c0de346c <Poseidon_getNext_RC>
c0de090a:	3e01      	subs	r6, #1
c0de090c:	e7f8      	b.n	c0de0900 <handler_cmd_Poseidon_ithRC+0x5c>
c0de090e:	a848      	add	r0, sp, #288	@ 0x120
c0de0910:	f000 fed8 	bl	c0de16c4 <OUTLINED_FUNCTION_9>
c0de0914:	f006 ff66 	bl	c0de77e4 <cx_bn_unlock>
c0de0918:	b118      	cbz	r0, c0de0922 <handler_cmd_Poseidon_ithRC+0x7e>
c0de091a:	f000 feb5 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de091e:	b050      	add	sp, #320	@ 0x140
c0de0920:	bd70      	pop	{r4, r5, r6, pc}
c0de0922:	2000      	movs	r0, #0
c0de0924:	e7fb      	b.n	c0de091e <handler_cmd_Poseidon_ithRC+0x7a>
c0de0926:	bf00      	nop
c0de0928:	00007b66 	.word	0x00007b66
c0de092c:	00007d78 	.word	0x00007d78

c0de0930 <handler_cmd_tEddsaPoseidon_Kpub>:
c0de0930:	b5b0      	push	{r4, r5, r7, lr}
c0de0932:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de0936:	6801      	ldr	r1, [r0, #0]
c0de0938:	2200      	movs	r2, #0
c0de093a:	23ff      	movs	r3, #255	@ 0xff
c0de093c:	780d      	ldrb	r5, [r1, #0]
c0de093e:	ac5a      	add	r4, sp, #360	@ 0x168
c0de0940:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de0944:	d002      	beq.n	c0de094c <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de0946:	54a3      	strb	r3, [r4, r2]
c0de0948:	3201      	adds	r2, #1
c0de094a:	e7f9      	b.n	c0de0940 <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de094c:	6840      	ldr	r0, [r0, #4]
c0de094e:	3101      	adds	r1, #1
c0de0950:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0952:	3801      	subs	r0, #1
c0de0954:	b128      	cbz	r0, c0de0962 <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de0956:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de095a:	3801      	subs	r0, #1
c0de095c:	f802 3b01 	strb.w	r3, [r2], #1
c0de0960:	e7f8      	b.n	c0de0954 <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de0962:	f000 fe8d 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de0966:	b9e8      	cbnz	r0, c0de09a4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0968:	a804      	add	r0, sp, #16
c0de096a:	f000 feae 	bl	c0de16ca <OUTLINED_FUNCTION_10>
c0de096e:	b9c8      	cbnz	r0, c0de09a4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0970:	a804      	add	r0, sp, #16
c0de0972:	a901      	add	r1, sp, #4
c0de0974:	f002 f862 	bl	c0de2a3c <tEdwards_alloc>
c0de0978:	b9a0      	cbnz	r0, c0de09a4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de097a:	a804      	add	r0, sp, #16
c0de097c:	a91a      	add	r1, sp, #104	@ 0x68
c0de097e:	aa01      	add	r2, sp, #4
c0de0980:	f001 faee 	bl	c0de1f60 <zkn_prv2pub>
c0de0984:	b970      	cbnz	r0, c0de09a4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0986:	a804      	add	r0, sp, #16
c0de0988:	f104 0320 	add.w	r3, r4, #32
c0de098c:	a901      	add	r1, sp, #4
c0de098e:	f000 fe96 	bl	c0de16be <OUTLINED_FUNCTION_8>
c0de0992:	b938      	cbnz	r0, c0de09a4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0994:	9804      	ldr	r0, [sp, #16]
c0de0996:	0041      	lsls	r1, r0, #1
c0de0998:	a85a      	add	r0, sp, #360	@ 0x168
c0de099a:	f7ff fe87 	bl	c0de06ac <io_send_response_pointer>
c0de099e:	f006 ff21 	bl	c0de77e4 <cx_bn_unlock>
c0de09a2:	b120      	cbz	r0, c0de09ae <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de09a4:	f000 fe70 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de09a8:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de09ac:	bdb0      	pop	{r4, r5, r7, pc}
c0de09ae:	2000      	movs	r0, #0
c0de09b0:	e7fa      	b.n	c0de09a8 <handler_cmd_tEddsaPoseidon_Kpub+0x78>

c0de09b2 <handler_cmd_tEddsaPoseidon_Sign>:
c0de09b2:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de09b4:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de09b8:	4606      	mov	r6, r0
c0de09ba:	6800      	ldr	r0, [r0, #0]
c0de09bc:	2100      	movs	r1, #0
c0de09be:	22ff      	movs	r2, #255	@ 0xff
c0de09c0:	7805      	ldrb	r5, [r0, #0]
c0de09c2:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de09c4:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de09c8:	d002      	beq.n	c0de09d0 <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de09ca:	5462      	strb	r2, [r4, r1]
c0de09cc:	3101      	adds	r1, #1
c0de09ce:	e7f9      	b.n	c0de09c4 <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de09d0:	6871      	ldr	r1, [r6, #4]
c0de09d2:	3001      	adds	r0, #1
c0de09d4:	aa2b      	add	r2, sp, #172	@ 0xac
c0de09d6:	3901      	subs	r1, #1
c0de09d8:	b129      	cbz	r1, c0de09e6 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de09da:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de09de:	3901      	subs	r1, #1
c0de09e0:	f802 3b01 	strb.w	r3, [r2], #1
c0de09e4:	e7f8      	b.n	c0de09d8 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de09e6:	f000 fe4b 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de09ea:	bba0      	cbnz	r0, c0de0a56 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09ec:	6830      	ldr	r0, [r6, #0]
c0de09ee:	aa0a      	add	r2, sp, #40	@ 0x28
c0de09f0:	2100      	movs	r1, #0
c0de09f2:	ab02      	add	r3, sp, #8
c0de09f4:	2920      	cmp	r1, #32
c0de09f6:	d007      	beq.n	c0de0a08 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de09f8:	1846      	adds	r6, r0, r1
c0de09fa:	7877      	ldrb	r7, [r6, #1]
c0de09fc:	5457      	strb	r7, [r2, r1]
c0de09fe:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de0a02:	545e      	strb	r6, [r3, r1]
c0de0a04:	3101      	adds	r1, #1
c0de0a06:	e7f5      	b.n	c0de09f4 <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de0a08:	a815      	add	r0, sp, #84	@ 0x54
c0de0a0a:	f000 fe5e 	bl	c0de16ca <OUTLINED_FUNCTION_10>
c0de0a0e:	bb10      	cbnz	r0, c0de0a56 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a10:	a815      	add	r0, sp, #84	@ 0x54
c0de0a12:	a912      	add	r1, sp, #72	@ 0x48
c0de0a14:	f002 f812 	bl	c0de2a3c <tEdwards_alloc>
c0de0a18:	b9e8      	cbnz	r0, c0de0a56 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a1a:	a815      	add	r0, sp, #84	@ 0x54
c0de0a1c:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a1e:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a20:	f001 fa9e 	bl	c0de1f60 <zkn_prv2pub>
c0de0a24:	b9b8      	cbnz	r0, c0de0a56 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a26:	a815      	add	r0, sp, #84	@ 0x54
c0de0a28:	f104 0320 	add.w	r3, r4, #32
c0de0a2c:	a912      	add	r1, sp, #72	@ 0x48
c0de0a2e:	f000 fe46 	bl	c0de16be <OUTLINED_FUNCTION_8>
c0de0a32:	b980      	cbnz	r0, c0de0a56 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a34:	2020      	movs	r0, #32
c0de0a36:	e9cd 0400 	strd	r0, r4, [sp]
c0de0a3a:	a815      	add	r0, sp, #84	@ 0x54
c0de0a3c:	a90a      	add	r1, sp, #40	@ 0x28
c0de0a3e:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a40:	ab02      	add	r3, sp, #8
c0de0a42:	f001 fab5 	bl	c0de1fb0 <EddsaPoseidon_Sign_final>
c0de0a46:	b930      	cbnz	r0, c0de0a56 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a48:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a4a:	2160      	movs	r1, #96	@ 0x60
c0de0a4c:	f7ff fe2e 	bl	c0de06ac <io_send_response_pointer>
c0de0a50:	f006 fec8 	bl	c0de77e4 <cx_bn_unlock>
c0de0a54:	b120      	cbz	r0, c0de0a60 <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0a56:	f000 fe17 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de0a5a:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de0a5e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0a60:	2000      	movs	r0, #0
c0de0a62:	e7fa      	b.n	c0de0a5a <handler_cmd_tEddsaPoseidon_Sign+0xa8>

c0de0a64 <handler_cmd_tEddsaPoseidon>:
c0de0a64:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0a68:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0a6a:	4605      	mov	r5, r0
c0de0a6c:	6800      	ldr	r0, [r0, #0]
c0de0a6e:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de0a72:	21ff      	movs	r1, #255	@ 0xff
c0de0a74:	7806      	ldrb	r6, [r0, #0]
c0de0a76:	2000      	movs	r0, #0
c0de0a78:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0a7c:	d002      	beq.n	c0de0a84 <handler_cmd_tEddsaPoseidon+0x20>
c0de0a7e:	5421      	strb	r1, [r4, r0]
c0de0a80:	3001      	adds	r0, #1
c0de0a82:	e7f9      	b.n	c0de0a78 <handler_cmd_tEddsaPoseidon+0x14>
c0de0a84:	f000 fdfc 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de0a88:	2800      	cmp	r0, #0
c0de0a8a:	d154      	bne.n	c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a8c:	af14      	add	r7, sp, #80	@ 0x50
c0de0a8e:	4631      	mov	r1, r6
c0de0a90:	4638      	mov	r0, r7
c0de0a92:	f002 f953 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de0a96:	2800      	cmp	r0, #0
c0de0a98:	d14d      	bne.n	c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a9a:	f107 060c 	add.w	r6, r7, #12
c0de0a9e:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0aa2:	4638      	mov	r0, r7
c0de0aa4:	4631      	mov	r1, r6
c0de0aa6:	f002 f8f2 	bl	c0de2c8e <tEdwards_IsOnCurve>
c0de0aaa:	2800      	cmp	r0, #0
c0de0aac:	d143      	bne.n	c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aae:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0ab2:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0ab6:	2901      	cmp	r1, #1
c0de0ab8:	d13d      	bne.n	c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aba:	4922      	ldr	r1, [pc, #136]	@ (c0de0b44 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0abc:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0ac0:	2220      	movs	r2, #32
c0de0ac2:	4650      	mov	r0, sl
c0de0ac4:	4479      	add	r1, pc
c0de0ac6:	f007 f94b 	bl	c0de7d60 <__aeabi_memcpy>
c0de0aca:	af01      	add	r7, sp, #4
c0de0acc:	491e      	ldr	r1, [pc, #120]	@ (c0de0b48 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ace:	2220      	movs	r2, #32
c0de0ad0:	4638      	mov	r0, r7
c0de0ad2:	4479      	add	r1, pc
c0de0ad4:	f007 f944 	bl	c0de7d60 <__aeabi_memcpy>
c0de0ad8:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0adc:	a814      	add	r0, sp, #80	@ 0x50
c0de0ade:	4651      	mov	r1, sl
c0de0ae0:	463a      	mov	r2, r7
c0de0ae2:	4643      	mov	r3, r8
c0de0ae4:	f002 fb1b 	bl	c0de311e <tEdwards_alloc_init>
c0de0ae8:	bb28      	cbnz	r0, c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aea:	a814      	add	r0, sp, #80	@ 0x50
c0de0aec:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0af0:	4631      	mov	r1, r6
c0de0af2:	f002 f8cc 	bl	c0de2c8e <tEdwards_IsOnCurve>
c0de0af6:	b9f0      	cbnz	r0, c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0af8:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0afc:	2801      	cmp	r0, #1
c0de0afe:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0b02:	d118      	bne.n	c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b04:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0b08:	f8cd 8000 	str.w	r8, [sp]
c0de0b0c:	1c42      	adds	r2, r0, #1
c0de0b0e:	1e4b      	subs	r3, r1, #1
c0de0b10:	a814      	add	r0, sp, #80	@ 0x50
c0de0b12:	4631      	mov	r1, r6
c0de0b14:	f002 fb88 	bl	c0de3228 <tEdwards_scalarMul>
c0de0b18:	b968      	cbnz	r0, c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b1a:	a814      	add	r0, sp, #80	@ 0x50
c0de0b1c:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b20:	a911      	add	r1, sp, #68	@ 0x44
c0de0b22:	f000 fdcc 	bl	c0de16be <OUTLINED_FUNCTION_8>
c0de0b26:	b930      	cbnz	r0, c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b28:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b2c:	f000 fdc3 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de0b30:	f006 fe58 	bl	c0de77e4 <cx_bn_unlock>
c0de0b34:	b120      	cbz	r0, c0de0b40 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b36:	f000 fda7 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de0b3a:	b06b      	add	sp, #428	@ 0x1ac
c0de0b3c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b40:	2000      	movs	r0, #0
c0de0b42:	e7fa      	b.n	c0de0b3a <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b44:	00007b98 	.word	0x00007b98
c0de0b48:	00007baa 	.word	0x00007baa

c0de0b4c <handler_cmd_tEdwards>:
c0de0b4c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0b4e:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0b50:	4605      	mov	r5, r0
c0de0b52:	6840      	ldr	r0, [r0, #4]
c0de0b54:	2841      	cmp	r0, #65	@ 0x41
c0de0b56:	d801      	bhi.n	c0de0b5c <handler_cmd_tEdwards+0x10>
c0de0b58:	2802      	cmp	r0, #2
c0de0b5a:	d202      	bcs.n	c0de0b62 <handler_cmd_tEdwards+0x16>
c0de0b5c:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0b60:	e015      	b.n	c0de0b8e <handler_cmd_tEdwards+0x42>
c0de0b62:	6828      	ldr	r0, [r5, #0]
c0de0b64:	21ff      	movs	r1, #255	@ 0xff
c0de0b66:	7806      	ldrb	r6, [r0, #0]
c0de0b68:	2000      	movs	r0, #0
c0de0b6a:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0b6c:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0b70:	d002      	beq.n	c0de0b78 <handler_cmd_tEdwards+0x2c>
c0de0b72:	5421      	strb	r1, [r4, r0]
c0de0b74:	3001      	adds	r0, #1
c0de0b76:	e7f9      	b.n	c0de0b6c <handler_cmd_tEdwards+0x20>
c0de0b78:	f000 fd82 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de0b7c:	b920      	cbnz	r0, c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0b7e:	a819      	add	r0, sp, #100	@ 0x64
c0de0b80:	4631      	mov	r1, r6
c0de0b82:	f002 f8db 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de0b86:	b120      	cbz	r0, c0de0b92 <handler_cmd_tEdwards+0x46>
c0de0b88:	b280      	uxth	r0, r0
c0de0b8a:	f7ff fd9a 	bl	c0de06c2 <io_send_sw>
c0de0b8e:	b06f      	add	sp, #444	@ 0x1bc
c0de0b90:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0b92:	2e02      	cmp	r6, #2
c0de0b94:	d00c      	beq.n	c0de0bb0 <handler_cmd_tEdwards+0x64>
c0de0b96:	2e01      	cmp	r6, #1
c0de0b98:	d128      	bne.n	c0de0bec <handler_cmd_tEdwards+0xa0>
c0de0b9a:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b9c:	4942      	ldr	r1, [pc, #264]	@ (c0de0ca8 <handler_cmd_tEdwards+0x15c>)
c0de0b9e:	2220      	movs	r2, #32
c0de0ba0:	4630      	mov	r0, r6
c0de0ba2:	4479      	add	r1, pc
c0de0ba4:	f007 f8dc 	bl	c0de7d60 <__aeabi_memcpy>
c0de0ba8:	af03      	add	r7, sp, #12
c0de0baa:	4940      	ldr	r1, [pc, #256]	@ (c0de0cac <handler_cmd_tEdwards+0x160>)
c0de0bac:	4479      	add	r1, pc
c0de0bae:	e009      	b.n	c0de0bc4 <handler_cmd_tEdwards+0x78>
c0de0bb0:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0bb2:	493f      	ldr	r1, [pc, #252]	@ (c0de0cb0 <handler_cmd_tEdwards+0x164>)
c0de0bb4:	2220      	movs	r2, #32
c0de0bb6:	4630      	mov	r0, r6
c0de0bb8:	4479      	add	r1, pc
c0de0bba:	f007 f8d1 	bl	c0de7d60 <__aeabi_memcpy>
c0de0bbe:	af03      	add	r7, sp, #12
c0de0bc0:	493c      	ldr	r1, [pc, #240]	@ (c0de0cb4 <handler_cmd_tEdwards+0x168>)
c0de0bc2:	4479      	add	r1, pc
c0de0bc4:	4638      	mov	r0, r7
c0de0bc6:	2220      	movs	r2, #32
c0de0bc8:	f007 f8ca 	bl	c0de7d60 <__aeabi_memcpy>
c0de0bcc:	a819      	add	r0, sp, #100	@ 0x64
c0de0bce:	ab16      	add	r3, sp, #88	@ 0x58
c0de0bd0:	4631      	mov	r1, r6
c0de0bd2:	463a      	mov	r2, r7
c0de0bd4:	f002 faa3 	bl	c0de311e <tEdwards_alloc_init>
c0de0bd8:	2800      	cmp	r0, #0
c0de0bda:	d1d5      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0bdc:	a819      	add	r0, sp, #100	@ 0x64
c0de0bde:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0be0:	aa03      	add	r2, sp, #12
c0de0be2:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0be4:	f002 fa9b 	bl	c0de311e <tEdwards_alloc_init>
c0de0be8:	2800      	cmp	r0, #0
c0de0bea:	d1cd      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0bec:	2000      	movs	r0, #0
c0de0bee:	f10d 020b 	add.w	r2, sp, #11
c0de0bf2:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0bf6:	a819      	add	r0, sp, #100	@ 0x64
c0de0bf8:	a916      	add	r1, sp, #88	@ 0x58
c0de0bfa:	f002 f848 	bl	c0de2c8e <tEdwards_IsOnCurve>
c0de0bfe:	2800      	cmp	r0, #0
c0de0c00:	d1c2      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c02:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c06:	2801      	cmp	r0, #1
c0de0c08:	d142      	bne.n	c0de0c90 <handler_cmd_tEdwards+0x144>
c0de0c0a:	a819      	add	r0, sp, #100	@ 0x64
c0de0c0c:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c0e:	f10d 020b 	add.w	r2, sp, #11
c0de0c12:	4631      	mov	r1, r6
c0de0c14:	f002 f83b 	bl	c0de2c8e <tEdwards_IsOnCurve>
c0de0c18:	2800      	cmp	r0, #0
c0de0c1a:	d1b5      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c1c:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c20:	2801      	cmp	r0, #1
c0de0c22:	d138      	bne.n	c0de0c96 <handler_cmd_tEdwards+0x14a>
c0de0c24:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c26:	f10d 010b 	add.w	r1, sp, #11
c0de0c2a:	f006 fe99 	bl	c0de7960 <cx_bn_is_prime>
c0de0c2e:	2800      	cmp	r0, #0
c0de0c30:	d1aa      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c32:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c36:	2801      	cmp	r0, #1
c0de0c38:	d130      	bne.n	c0de0c9c <handler_cmd_tEdwards+0x150>
c0de0c3a:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c3c:	f10d 010b 	add.w	r1, sp, #11
c0de0c40:	f006 fe8e 	bl	c0de7960 <cx_bn_is_prime>
c0de0c44:	2800      	cmp	r0, #0
c0de0c46:	d19f      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c48:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c4c:	2801      	cmp	r0, #1
c0de0c4e:	d128      	bne.n	c0de0ca2 <handler_cmd_tEdwards+0x156>
c0de0c50:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0c54:	9600      	str	r6, [sp, #0]
c0de0c56:	1c42      	adds	r2, r0, #1
c0de0c58:	1e4b      	subs	r3, r1, #1
c0de0c5a:	a819      	add	r0, sp, #100	@ 0x64
c0de0c5c:	a916      	add	r1, sp, #88	@ 0x58
c0de0c5e:	f002 fae3 	bl	c0de3228 <tEdwards_scalarMul>
c0de0c62:	2800      	cmp	r0, #0
c0de0c64:	d190      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c66:	a819      	add	r0, sp, #100	@ 0x64
c0de0c68:	f104 0320 	add.w	r3, r4, #32
c0de0c6c:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c6e:	f000 fd26 	bl	c0de16be <OUTLINED_FUNCTION_8>
c0de0c72:	2800      	cmp	r0, #0
c0de0c74:	f47f af88 	bne.w	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c78:	f006 fdb4 	bl	c0de77e4 <cx_bn_unlock>
c0de0c7c:	2800      	cmp	r0, #0
c0de0c7e:	f47f af83 	bne.w	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c82:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0c84:	0041      	lsls	r1, r0, #1
c0de0c86:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0c88:	f7ff fd10 	bl	c0de06ac <io_send_response_pointer>
c0de0c8c:	2000      	movs	r0, #0
c0de0c8e:	e77e      	b.n	c0de0b8e <handler_cmd_tEdwards+0x42>
c0de0c90:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0c94:	e779      	b.n	c0de0b8a <handler_cmd_tEdwards+0x3e>
c0de0c96:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0c9a:	e776      	b.n	c0de0b8a <handler_cmd_tEdwards+0x3e>
c0de0c9c:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0ca0:	e773      	b.n	c0de0b8a <handler_cmd_tEdwards+0x3e>
c0de0ca2:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0ca6:	e770      	b.n	c0de0b8a <handler_cmd_tEdwards+0x3e>
c0de0ca8:	000078da 	.word	0x000078da
c0de0cac:	00007950 	.word	0x00007950
c0de0cb0:	000078e4 	.word	0x000078e4
c0de0cb4:	0000781a 	.word	0x0000781a

c0de0cb8 <handler_cmd_Interpolate>:
c0de0cb8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0cbc:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0cc0:	4605      	mov	r5, r0
c0de0cc2:	6800      	ldr	r0, [r0, #0]
c0de0cc4:	22ff      	movs	r2, #255	@ 0xff
c0de0cc6:	7804      	ldrb	r4, [r0, #0]
c0de0cc8:	2000      	movs	r0, #0
c0de0cca:	a944      	add	r1, sp, #272	@ 0x110
c0de0ccc:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0cd0:	d002      	beq.n	c0de0cd8 <handler_cmd_Interpolate+0x20>
c0de0cd2:	540a      	strb	r2, [r1, r0]
c0de0cd4:	3001      	adds	r0, #1
c0de0cd6:	e7f9      	b.n	c0de0ccc <handler_cmd_Interpolate+0x14>
c0de0cd8:	f000 fcd2 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de0cdc:	bb28      	cbnz	r0, c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0cde:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0ce2:	4621      	mov	r1, r4
c0de0ce4:	4640      	mov	r0, r8
c0de0ce6:	f002 f829 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de0cea:	b9f0      	cbnz	r0, c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0cec:	a827      	add	r0, sp, #156	@ 0x9c
c0de0cee:	f000 fcd5 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de0cf2:	b9d0      	cbnz	r0, c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0cf4:	6828      	ldr	r0, [r5, #0]
c0de0cf6:	2100      	movs	r1, #0
c0de0cf8:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0cfa:	3001      	adds	r0, #1
c0de0cfc:	2960      	cmp	r1, #96	@ 0x60
c0de0cfe:	d003      	beq.n	c0de0d08 <handler_cmd_Interpolate+0x50>
c0de0d00:	5c43      	ldrb	r3, [r0, r1]
c0de0d02:	5453      	strb	r3, [r2, r1]
c0de0d04:	3101      	adds	r1, #1
c0de0d06:	e7f9      	b.n	c0de0cfc <handler_cmd_Interpolate+0x44>
c0de0d08:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d0a:	2100      	movs	r1, #0
c0de0d0c:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d0e:	1d0c      	adds	r4, r1, #4
c0de0d10:	2c10      	cmp	r4, #16
c0de0d12:	d010      	beq.n	c0de0d36 <handler_cmd_Interpolate+0x7e>
c0de0d14:	1878      	adds	r0, r7, r1
c0de0d16:	2120      	movs	r1, #32
c0de0d18:	2320      	movs	r3, #32
c0de0d1a:	f102 0520 	add.w	r5, r2, #32
c0de0d1e:	f006 fd73 	bl	c0de7808 <cx_bn_alloc_init>
c0de0d22:	2800      	cmp	r0, #0
c0de0d24:	462a      	mov	r2, r5
c0de0d26:	4621      	mov	r1, r4
c0de0d28:	d0f1      	beq.n	c0de0d0e <handler_cmd_Interpolate+0x56>
c0de0d2a:	f000 fcad 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de0d2e:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0d32:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0d36:	f108 000c 	add.w	r0, r8, #12
c0de0d3a:	f04f 0a00 	mov.w	sl, #0
c0de0d3e:	2601      	movs	r6, #1
c0de0d40:	f10d 0b0c 	add.w	fp, sp, #12
c0de0d44:	9001      	str	r0, [sp, #4]
c0de0d46:	ad44      	add	r5, sp, #272	@ 0x110
c0de0d48:	f1ba 0f0c 	cmp.w	sl, #12
c0de0d4c:	d03b      	beq.n	c0de0dc6 <handler_cmd_Interpolate+0x10e>
c0de0d4e:	a828      	add	r0, sp, #160	@ 0xa0
c0de0d50:	2120      	movs	r1, #32
c0de0d52:	eb00 040a 	add.w	r4, r0, sl
c0de0d56:	4620      	mov	r0, r4
c0de0d58:	f006 fd4c 	bl	c0de77f4 <cx_bn_alloc>
c0de0d5c:	2800      	cmp	r0, #0
c0de0d5e:	d1e4      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0d60:	6820      	ldr	r0, [r4, #0]
c0de0d62:	4631      	mov	r1, r6
c0de0d64:	f006 fd86 	bl	c0de7874 <cx_bn_set_u32>
c0de0d68:	2800      	cmp	r0, #0
c0de0d6a:	d1de      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0d6c:	4640      	mov	r0, r8
c0de0d6e:	4659      	mov	r1, fp
c0de0d70:	f001 fe64 	bl	c0de2a3c <tEdwards_alloc>
c0de0d74:	2800      	cmp	r0, #0
c0de0d76:	d1d8      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0d78:	9602      	str	r6, [sp, #8]
c0de0d7a:	eb07 060a 	add.w	r6, r7, sl
c0de0d7e:	9901      	ldr	r1, [sp, #4]
c0de0d80:	4640      	mov	r0, r8
c0de0d82:	465b      	mov	r3, fp
c0de0d84:	4632      	mov	r2, r6
c0de0d86:	f002 f9e9 	bl	c0de315c <tEdwards_scalarMul_bn>
c0de0d8a:	2800      	cmp	r0, #0
c0de0d8c:	d1cd      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0d8e:	6820      	ldr	r0, [r4, #0]
c0de0d90:	4629      	mov	r1, r5
c0de0d92:	f000 fc80 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de0d96:	2800      	cmp	r0, #0
c0de0d98:	d1c7      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0d9a:	6830      	ldr	r0, [r6, #0]
c0de0d9c:	f105 0120 	add.w	r1, r5, #32
c0de0da0:	f000 fc79 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de0da4:	2800      	cmp	r0, #0
c0de0da6:	d1c0      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0da8:	4640      	mov	r0, r8
c0de0daa:	4659      	mov	r1, fp
c0de0dac:	f002 f977 	bl	c0de309e <tEdwards_normalize>
c0de0db0:	9e02      	ldr	r6, [sp, #8]
c0de0db2:	3540      	adds	r5, #64	@ 0x40
c0de0db4:	f10b 0b0c 	add.w	fp, fp, #12
c0de0db8:	f10a 0a04 	add.w	sl, sl, #4
c0de0dbc:	af2b      	add	r7, sp, #172	@ 0xac
c0de0dbe:	3601      	adds	r6, #1
c0de0dc0:	2800      	cmp	r0, #0
c0de0dc2:	d0c1      	beq.n	c0de0d48 <handler_cmd_Interpolate+0x90>
c0de0dc4:	e7b1      	b.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0dc6:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0dc8:	2303      	movs	r3, #3
c0de0dca:	9000      	str	r0, [sp, #0]
c0de0dcc:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dce:	a928      	add	r1, sp, #160	@ 0xa0
c0de0dd0:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0dd2:	f001 faa4 	bl	c0de231e <zkn_frost_interpolate_secrets>
c0de0dd6:	2800      	cmp	r0, #0
c0de0dd8:	d1a7      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0dda:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0ddc:	a944      	add	r1, sp, #272	@ 0x110
c0de0dde:	2220      	movs	r2, #32
c0de0de0:	31c0      	adds	r1, #192	@ 0xc0
c0de0de2:	f006 fd51 	bl	c0de7888 <cx_bn_export>
c0de0de6:	2800      	cmp	r0, #0
c0de0de8:	d19f      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0dea:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dec:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dee:	ab03      	add	r3, sp, #12
c0de0df0:	9901      	ldr	r1, [sp, #4]
c0de0df2:	f002 f9b3 	bl	c0de315c <tEdwards_scalarMul_bn>
c0de0df6:	2800      	cmp	r0, #0
c0de0df8:	d197      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0dfa:	a844      	add	r0, sp, #272	@ 0x110
c0de0dfc:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e00:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e02:	a903      	add	r1, sp, #12
c0de0e04:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e06:	f002 f924 	bl	c0de3052 <tEdwards_export>
c0de0e0a:	2800      	cmp	r0, #0
c0de0e0c:	d18d      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0e0e:	a844      	add	r0, sp, #272	@ 0x110
c0de0e10:	f000 fc51 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de0e14:	f006 fce6 	bl	c0de77e4 <cx_bn_unlock>
c0de0e18:	2800      	cmp	r0, #0
c0de0e1a:	f47f af86 	bne.w	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0e1e:	2000      	movs	r0, #0
c0de0e20:	e785      	b.n	c0de0d2e <handler_cmd_Interpolate+0x76>

c0de0e22 <handler_cmd_Split>:
c0de0e22:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0e26:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0e2a:	4604      	mov	r4, r0
c0de0e2c:	6800      	ldr	r0, [r0, #0]
c0de0e2e:	22ff      	movs	r2, #255	@ 0xff
c0de0e30:	7805      	ldrb	r5, [r0, #0]
c0de0e32:	2000      	movs	r0, #0
c0de0e34:	a948      	add	r1, sp, #288	@ 0x120
c0de0e36:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0e3a:	d002      	beq.n	c0de0e42 <handler_cmd_Split+0x20>
c0de0e3c:	540a      	strb	r2, [r1, r0]
c0de0e3e:	3001      	adds	r0, #1
c0de0e40:	e7f9      	b.n	c0de0e36 <handler_cmd_Split+0x14>
c0de0e42:	f000 fc1d 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de0e46:	bb90      	cbnz	r0, c0de0eae <handler_cmd_Split+0x8c>
c0de0e48:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e4a:	f000 fc3e 	bl	c0de16ca <OUTLINED_FUNCTION_10>
c0de0e4e:	bb70      	cbnz	r0, c0de0eae <handler_cmd_Split+0x8c>
c0de0e50:	6820      	ldr	r0, [r4, #0]
c0de0e52:	2200      	movs	r2, #0
c0de0e54:	a91a      	add	r1, sp, #104	@ 0x68
c0de0e56:	3002      	adds	r0, #2
c0de0e58:	2a20      	cmp	r2, #32
c0de0e5a:	d003      	beq.n	c0de0e64 <handler_cmd_Split+0x42>
c0de0e5c:	5c83      	ldrb	r3, [r0, r2]
c0de0e5e:	548b      	strb	r3, [r1, r2]
c0de0e60:	3201      	adds	r2, #1
c0de0e62:	e7f9      	b.n	c0de0e58 <handler_cmd_Split+0x36>
c0de0e64:	6862      	ldr	r2, [r4, #4]
c0de0e66:	3a02      	subs	r2, #2
c0de0e68:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0e6c:	f101 0220 	add.w	r2, r1, #32
c0de0e70:	a888      	add	r0, sp, #544	@ 0x220
c0de0e72:	2101      	movs	r1, #1
c0de0e74:	f006 fa27 	bl	c0de72c6 <cx_blake2b_512_hash_iovec>
c0de0e78:	b9c8      	cbnz	r0, c0de0eae <handler_cmd_Split+0x8c>
c0de0e7a:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0e7c:	2100      	movs	r1, #0
c0de0e7e:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0e80:	1d0d      	adds	r5, r1, #4
c0de0e82:	2d10      	cmp	r5, #16
c0de0e84:	d00b      	beq.n	c0de0e9e <handler_cmd_Split+0x7c>
c0de0e86:	1860      	adds	r0, r4, r1
c0de0e88:	2120      	movs	r1, #32
c0de0e8a:	2320      	movs	r3, #32
c0de0e8c:	f102 0620 	add.w	r6, r2, #32
c0de0e90:	f006 fcba 	bl	c0de7808 <cx_bn_alloc_init>
c0de0e94:	2800      	cmp	r0, #0
c0de0e96:	4632      	mov	r2, r6
c0de0e98:	4629      	mov	r1, r5
c0de0e9a:	d0f1      	beq.n	c0de0e80 <handler_cmd_Split+0x5e>
c0de0e9c:	e007      	b.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0e9e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0ea0:	f000 fbfc 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de0ea4:	b918      	cbnz	r0, c0de0eae <handler_cmd_Split+0x8c>
c0de0ea6:	a809      	add	r0, sp, #36	@ 0x24
c0de0ea8:	f000 fbf8 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de0eac:	b128      	cbz	r0, c0de0eba <handler_cmd_Split+0x98>
c0de0eae:	f000 fbeb 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de0eb2:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0eb6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0eba:	f04f 0800 	mov.w	r8, #0
c0de0ebe:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0ec2:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0ec4:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0ec8:	2400      	movs	r4, #0
c0de0eca:	f1b8 0f10 	cmp.w	r8, #16
c0de0ece:	d04d      	beq.n	c0de0f6c <handler_cmd_Split+0x14a>
c0de0ed0:	a805      	add	r0, sp, #20
c0de0ed2:	2120      	movs	r1, #32
c0de0ed4:	eb00 0708 	add.w	r7, r0, r8
c0de0ed8:	4638      	mov	r0, r7
c0de0eda:	f006 fc8b 	bl	c0de77f4 <cx_bn_alloc>
c0de0ede:	2800      	cmp	r0, #0
c0de0ee0:	d1e5      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0ee2:	a801      	add	r0, sp, #4
c0de0ee4:	2120      	movs	r1, #32
c0de0ee6:	eb00 0508 	add.w	r5, r0, r8
c0de0eea:	4628      	mov	r0, r5
c0de0eec:	f006 fc82 	bl	c0de77f4 <cx_bn_alloc>
c0de0ef0:	2800      	cmp	r0, #0
c0de0ef2:	d1dc      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0ef4:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0ef6:	4621      	mov	r1, r4
c0de0ef8:	f006 fcbc 	bl	c0de7874 <cx_bn_set_u32>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1d6      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f00:	6828      	ldr	r0, [r5, #0]
c0de0f02:	4621      	mov	r1, r4
c0de0f04:	f006 fcb6 	bl	c0de7874 <cx_bn_set_u32>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d1d0      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f0c:	4650      	mov	r0, sl
c0de0f0e:	4631      	mov	r1, r6
c0de0f10:	f001 fd94 	bl	c0de2a3c <tEdwards_alloc>
c0de0f14:	2800      	cmp	r0, #0
c0de0f16:	d1ca      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f18:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f1c:	2202      	movs	r2, #2
c0de0f1e:	9000      	str	r0, [sp, #0]
c0de0f20:	4650      	mov	r0, sl
c0de0f22:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f24:	f001 fa3d 	bl	c0de23a2 <zkn_evalshare>
c0de0f28:	2800      	cmp	r0, #0
c0de0f2a:	d1c0      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f2c:	6838      	ldr	r0, [r7, #0]
c0de0f2e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f30:	f006 fc96 	bl	c0de7860 <cx_bn_copy>
c0de0f34:	2800      	cmp	r0, #0
c0de0f36:	d1ba      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f38:	4650      	mov	r0, sl
c0de0f3a:	4631      	mov	r1, r6
c0de0f3c:	f002 f8af 	bl	c0de309e <tEdwards_normalize>
c0de0f40:	2800      	cmp	r0, #0
c0de0f42:	d1b4      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f44:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f46:	4659      	mov	r1, fp
c0de0f48:	f000 fba5 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de0f4c:	2800      	cmp	r0, #0
c0de0f4e:	d1ae      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f50:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f52:	f10b 0120 	add.w	r1, fp, #32
c0de0f56:	f000 fb9e 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de0f5a:	360c      	adds	r6, #12
c0de0f5c:	3401      	adds	r4, #1
c0de0f5e:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0f62:	f108 0804 	add.w	r8, r8, #4
c0de0f66:	2800      	cmp	r0, #0
c0de0f68:	d0af      	beq.n	c0de0eca <handler_cmd_Split+0xa8>
c0de0f6a:	e7a0      	b.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f6c:	2100      	movs	r1, #0
c0de0f6e:	1d0c      	adds	r4, r1, #4
c0de0f70:	2c10      	cmp	r4, #16
c0de0f72:	d007      	beq.n	c0de0f84 <handler_cmd_Split+0x162>
c0de0f74:	a817      	add	r0, sp, #92	@ 0x5c
c0de0f76:	4408      	add	r0, r1
c0de0f78:	f006 fc52 	bl	c0de7820 <cx_bn_destroy>
c0de0f7c:	2800      	cmp	r0, #0
c0de0f7e:	4621      	mov	r1, r4
c0de0f80:	d0f5      	beq.n	c0de0f6e <handler_cmd_Split+0x14c>
c0de0f82:	e794      	b.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f84:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f86:	2303      	movs	r3, #3
c0de0f88:	9000      	str	r0, [sp, #0]
c0de0f8a:	a801      	add	r0, sp, #4
c0de0f8c:	1d01      	adds	r1, r0, #4
c0de0f8e:	a805      	add	r0, sp, #20
c0de0f90:	1d02      	adds	r2, r0, #4
c0de0f92:	a832      	add	r0, sp, #200	@ 0xc8
c0de0f94:	f001 f9c3 	bl	c0de231e <zkn_frost_interpolate_secrets>
c0de0f98:	2800      	cmp	r0, #0
c0de0f9a:	f47f af88 	bne.w	c0de0eae <handler_cmd_Split+0x8c>
c0de0f9e:	a848      	add	r0, sp, #288	@ 0x120
c0de0fa0:	f000 fb89 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de0fa4:	f006 fc1e 	bl	c0de77e4 <cx_bn_unlock>
c0de0fa8:	2800      	cmp	r0, #0
c0de0faa:	f47f af80 	bne.w	c0de0eae <handler_cmd_Split+0x8c>
c0de0fae:	2000      	movs	r0, #0
c0de0fb0:	e77f      	b.n	c0de0eb2 <handler_cmd_Split+0x90>

c0de0fb2 <handler_cmd_frostH>:
c0de0fb2:	b5b0      	push	{r4, r5, r7, lr}
c0de0fb4:	b0d8      	sub	sp, #352	@ 0x160
c0de0fb6:	4604      	mov	r4, r0
c0de0fb8:	f000 fb62 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de0fbc:	2800      	cmp	r0, #0
c0de0fbe:	d142      	bne.n	c0de1046 <handler_cmd_frostH+0x94>
c0de0fc0:	6820      	ldr	r0, [r4, #0]
c0de0fc2:	7801      	ldrb	r1, [r0, #0]
c0de0fc4:	a802      	add	r0, sp, #8
c0de0fc6:	f001 feb9 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de0fca:	bbe0      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0fcc:	a801      	add	r0, sp, #4
c0de0fce:	f000 fb65 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de0fd2:	bbc0      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0fd4:	f000 fb68 	bl	c0de16a8 <OUTLINED_FUNCTION_6>
c0de0fd8:	f002 fbce 	bl	c0de3778 <Babyfrost_H1>
c0de0fdc:	bb98      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0fde:	9801      	ldr	r0, [sp, #4]
c0de0fe0:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fe2:	2220      	movs	r2, #32
c0de0fe4:	4629      	mov	r1, r5
c0de0fe6:	f006 fc4f 	bl	c0de7888 <cx_bn_export>
c0de0fea:	bb60      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0fec:	f000 fb5c 	bl	c0de16a8 <OUTLINED_FUNCTION_6>
c0de0ff0:	f002 fbd0 	bl	c0de3794 <Babyfrost_H3>
c0de0ff4:	bb38      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0ff6:	9801      	ldr	r0, [sp, #4]
c0de0ff8:	f105 0120 	add.w	r1, r5, #32
c0de0ffc:	f000 fb4b 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de1000:	bb08      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de1002:	f000 fb51 	bl	c0de16a8 <OUTLINED_FUNCTION_6>
c0de1006:	f002 fbd9 	bl	c0de37bc <Babyfrost_H4>
c0de100a:	b9e0      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de100c:	9801      	ldr	r0, [sp, #4]
c0de100e:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de1012:	f000 fb40 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de1016:	b9b0      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de1018:	f000 fb46 	bl	c0de16a8 <OUTLINED_FUNCTION_6>
c0de101c:	f002 fbdc 	bl	c0de37d8 <Babyfrost_H5>
c0de1020:	b988      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de1022:	9801      	ldr	r0, [sp, #4]
c0de1024:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1028:	f000 fb35 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de102c:	b958      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de102e:	9804      	ldr	r0, [sp, #16]
c0de1030:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de1034:	f000 fb2f 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de1038:	b928      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de103a:	a818      	add	r0, sp, #96	@ 0x60
c0de103c:	f000 fb3b 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de1040:	f006 fbd0 	bl	c0de77e4 <cx_bn_unlock>
c0de1044:	b118      	cbz	r0, c0de104e <handler_cmd_frostH+0x9c>
c0de1046:	f000 fb1f 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de104a:	b058      	add	sp, #352	@ 0x160
c0de104c:	bdb0      	pop	{r4, r5, r7, pc}
c0de104e:	2000      	movs	r0, #0
c0de1050:	e7fb      	b.n	c0de104a <handler_cmd_frostH+0x98>
	...

c0de1054 <handler_cmd_encodeCommitment>:
c0de1054:	b510      	push	{r4, lr}
c0de1056:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de105a:	4604      	mov	r4, r0
c0de105c:	f000 fb10 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de1060:	bb10      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de1062:	6820      	ldr	r0, [r4, #0]
c0de1064:	7801      	ldrb	r1, [r0, #0]
c0de1066:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1068:	f001 fe68 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de106c:	b9e0      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de106e:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1070:	f000 fb14 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de1074:	b9c0      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de1076:	ac01      	add	r4, sp, #4
c0de1078:	4910      	ldr	r1, [pc, #64]	@ (c0de10bc <handler_cmd_encodeCommitment+0x68>)
c0de107a:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de107e:	4620      	mov	r0, r4
c0de1080:	4479      	add	r1, pc
c0de1082:	f006 fe6d 	bl	c0de7d60 <__aeabi_memcpy>
c0de1086:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1088:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de108a:	4621      	mov	r1, r4
c0de108c:	2203      	movs	r2, #3
c0de108e:	f001 fa19 	bl	c0de24c4 <zkn_encode_group_commitmentHash>
c0de1092:	b948      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de1094:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de1096:	a990      	add	r1, sp, #576	@ 0x240
c0de1098:	2220      	movs	r2, #32
c0de109a:	3120      	adds	r1, #32
c0de109c:	f006 fbf4 	bl	c0de7888 <cx_bn_export>
c0de10a0:	b910      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de10a2:	f006 fb9f 	bl	c0de77e4 <cx_bn_unlock>
c0de10a6:	b120      	cbz	r0, c0de10b2 <handler_cmd_encodeCommitment+0x5e>
c0de10a8:	f000 faee 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de10ac:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de10b0:	bd10      	pop	{r4, pc}
c0de10b2:	a890      	add	r0, sp, #576	@ 0x240
c0de10b4:	f000 fb06 	bl	c0de16c4 <OUTLINED_FUNCTION_9>
c0de10b8:	2000      	movs	r0, #0
c0de10ba:	e7f7      	b.n	c0de10ac <handler_cmd_encodeCommitment+0x58>
c0de10bc:	000076dc 	.word	0x000076dc

c0de10c0 <handler_cmd_GroupCommitment>:
c0de10c0:	b570      	push	{r4, r5, r6, lr}
c0de10c2:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10c6:	4604      	mov	r4, r0
c0de10c8:	f000 fada 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de10cc:	bb68      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de10ce:	6820      	ldr	r0, [r4, #0]
c0de10d0:	7801      	ldrb	r1, [r0, #0]
c0de10d2:	a894      	add	r0, sp, #592	@ 0x250
c0de10d4:	f001 fe32 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de10d8:	bb38      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de10da:	a894      	add	r0, sp, #592	@ 0x250
c0de10dc:	ac91      	add	r4, sp, #580	@ 0x244
c0de10de:	4621      	mov	r1, r4
c0de10e0:	f001 fcac 	bl	c0de2a3c <tEdwards_alloc>
c0de10e4:	bb08      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de10e6:	ad19      	add	r5, sp, #100	@ 0x64
c0de10e8:	4915      	ldr	r1, [pc, #84]	@ (c0de1140 <handler_cmd_GroupCommitment+0x80>)
c0de10ea:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10ee:	4628      	mov	r0, r5
c0de10f0:	4479      	add	r1, pc
c0de10f2:	f006 fe35 	bl	c0de7d60 <__aeabi_memcpy>
c0de10f6:	ae01      	add	r6, sp, #4
c0de10f8:	4912      	ldr	r1, [pc, #72]	@ (c0de1144 <handler_cmd_GroupCommitment+0x84>)
c0de10fa:	2260      	movs	r2, #96	@ 0x60
c0de10fc:	4630      	mov	r0, r6
c0de10fe:	4479      	add	r1, pc
c0de1100:	f006 fe2e 	bl	c0de7d60 <__aeabi_memcpy>
c0de1104:	9400      	str	r4, [sp, #0]
c0de1106:	a894      	add	r0, sp, #592	@ 0x250
c0de1108:	4629      	mov	r1, r5
c0de110a:	4632      	mov	r2, r6
c0de110c:	2303      	movs	r3, #3
c0de110e:	f001 fa56 	bl	c0de25be <zkn_compute_group_commitment>
c0de1112:	b950      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de1114:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de1116:	a894      	add	r0, sp, #592	@ 0x250
c0de1118:	a991      	add	r1, sp, #580	@ 0x244
c0de111a:	f102 0320 	add.w	r3, r2, #32
c0de111e:	f001 ff98 	bl	c0de3052 <tEdwards_export>
c0de1122:	b910      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de1124:	f006 fb5e 	bl	c0de77e4 <cx_bn_unlock>
c0de1128:	b120      	cbz	r0, c0de1134 <handler_cmd_GroupCommitment+0x74>
c0de112a:	f000 faad 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de112e:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de1132:	bd70      	pop	{r4, r5, r6, pc}
c0de1134:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de1136:	2140      	movs	r1, #64	@ 0x40
c0de1138:	f7ff fab8 	bl	c0de06ac <io_send_response_pointer>
c0de113c:	2000      	movs	r0, #0
c0de113e:	e7f6      	b.n	c0de112e <handler_cmd_GroupCommitment+0x6e>
c0de1140:	0000784c 	.word	0x0000784c
c0de1144:	00007a1e 	.word	0x00007a1e

c0de1148 <handler_cmd_BindingFactors>:
c0de1148:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de114c:	f2ad 4dd4 	subw	sp, sp, #1236	@ 0x4d4
c0de1150:	4604      	mov	r4, r0
c0de1152:	f000 fa95 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de1156:	2800      	cmp	r0, #0
c0de1158:	f040 8119 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de115c:	6820      	ldr	r0, [r4, #0]
c0de115e:	7801      	ldrb	r1, [r0, #0]
c0de1160:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1162:	f001 fdeb 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de1166:	2800      	cmp	r0, #0
c0de1168:	f040 8111 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de116c:	a8de      	add	r0, sp, #888	@ 0x378
c0de116e:	f000 fa95 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de1172:	2800      	cmp	r0, #0
c0de1174:	f040 810b 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1178:	a8df      	add	r0, sp, #892	@ 0x37c
c0de117a:	addb      	add	r5, sp, #876	@ 0x36c
c0de117c:	4629      	mov	r1, r5
c0de117e:	f001 fc5d 	bl	c0de2a3c <tEdwards_alloc>
c0de1182:	2800      	cmp	r0, #0
c0de1184:	f040 8103 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1188:	ac63      	add	r4, sp, #396	@ 0x18c
c0de118a:	4985      	ldr	r1, [pc, #532]	@ (c0de13a0 <handler_cmd_BindingFactors+0x258>)
c0de118c:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1190:	4620      	mov	r0, r4
c0de1192:	4479      	add	r1, pc
c0de1194:	f006 fde4 	bl	c0de7d60 <__aeabi_memcpy>
c0de1198:	9bde      	ldr	r3, [sp, #888]	@ 0x378
c0de119a:	a8df      	add	r0, sp, #892	@ 0x37c
c0de119c:	4621      	mov	r1, r4
c0de119e:	2203      	movs	r2, #3
c0de11a0:	f001 f990 	bl	c0de24c4 <zkn_encode_group_commitmentHash>
c0de11a4:	2800      	cmp	r0, #0
c0de11a6:	f040 80f2 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de11aa:	f50d 7875 	add.w	r8, sp, #980	@ 0x3d4
c0de11ae:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de11b0:	2220      	movs	r2, #32
c0de11b2:	2620      	movs	r6, #32
c0de11b4:	4641      	mov	r1, r8
c0de11b6:	f006 fb67 	bl	c0de7888 <cx_bn_export>
c0de11ba:	2800      	cmp	r0, #0
c0de11bc:	f040 80e7 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de11c0:	4978      	ldr	r1, [pc, #480]	@ (c0de13a4 <handler_cmd_BindingFactors+0x25c>)
c0de11c2:	f50d 7ab6 	add.w	sl, sp, #364	@ 0x16c
c0de11c6:	2220      	movs	r2, #32
c0de11c8:	4650      	mov	r0, sl
c0de11ca:	4479      	add	r1, pc
c0de11cc:	f006 fdc8 	bl	c0de7d60 <__aeabi_memcpy>
c0de11d0:	a853      	add	r0, sp, #332	@ 0x14c
c0de11d2:	4975      	ldr	r1, [pc, #468]	@ (c0de13a8 <handler_cmd_BindingFactors+0x260>)
c0de11d4:	2220      	movs	r2, #32
c0de11d6:	4479      	add	r1, pc
c0de11d8:	f006 fdc2 	bl	c0de7d60 <__aeabi_memcpy>
c0de11dc:	ac4b      	add	r4, sp, #300	@ 0x12c
c0de11de:	4973      	ldr	r1, [pc, #460]	@ (c0de13ac <handler_cmd_BindingFactors+0x264>)
c0de11e0:	2220      	movs	r2, #32
c0de11e2:	4620      	mov	r0, r4
c0de11e4:	4479      	add	r1, pc
c0de11e6:	f006 fdbb 	bl	c0de7d60 <__aeabi_memcpy>
c0de11ea:	f108 0720 	add.w	r7, r8, #32
c0de11ee:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de11f2:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11f4:	aa63      	add	r2, sp, #396	@ 0x18c
c0de11f6:	4651      	mov	r1, sl
c0de11f8:	2303      	movs	r3, #3
c0de11fa:	f001 fa51 	bl	c0de26a0 <zkn_compute_binding_factors>
c0de11fe:	2800      	cmp	r0, #0
c0de1200:	f040 80c5 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1204:	9500      	str	r5, [sp, #0]
c0de1206:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1208:	a963      	add	r1, sp, #396	@ 0x18c
c0de120a:	463a      	mov	r2, r7
c0de120c:	2303      	movs	r3, #3
c0de120e:	f001 f9d6 	bl	c0de25be <zkn_compute_group_commitment>
c0de1212:	2800      	cmp	r0, #0
c0de1214:	f040 80bb 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1218:	a8df      	add	r0, sp, #892	@ 0x37c
c0de121a:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de121e:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de1222:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1224:	f001 ff15 	bl	c0de3052 <tEdwards_export>
c0de1228:	2800      	cmp	r0, #0
c0de122a:	f040 80b0 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de122e:	ad3b      	add	r5, sp, #236	@ 0xec
c0de1230:	495f      	ldr	r1, [pc, #380]	@ (c0de13b0 <handler_cmd_BindingFactors+0x268>)
c0de1232:	2240      	movs	r2, #64	@ 0x40
c0de1234:	4628      	mov	r0, r5
c0de1236:	4479      	add	r1, pc
c0de1238:	f006 fd92 	bl	c0de7d60 <__aeabi_memcpy>
c0de123c:	a833      	add	r0, sp, #204	@ 0xcc
c0de123e:	495d      	ldr	r1, [pc, #372]	@ (c0de13b4 <handler_cmd_BindingFactors+0x26c>)
c0de1240:	2220      	movs	r2, #32
c0de1242:	2420      	movs	r4, #32
c0de1244:	4479      	add	r1, pc
c0de1246:	f006 fd8b 	bl	c0de7d60 <__aeabi_memcpy>
c0de124a:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de124c:	462a      	mov	r2, r5
c0de124e:	e9cd 4000 	strd	r4, r0, [sp]
c0de1252:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1254:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1256:	ab53      	add	r3, sp, #332	@ 0x14c
c0de1258:	f001 faae 	bl	c0de27b8 <compute_challenge>
c0de125c:	2800      	cmp	r0, #0
c0de125e:	f040 8096 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1262:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1264:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de1268:	f000 fa15 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de126c:	2800      	cmp	r0, #0
c0de126e:	f040 808e 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1272:	a829      	add	r0, sp, #164	@ 0xa4
c0de1274:	4950      	ldr	r1, [pc, #320]	@ (c0de13b8 <handler_cmd_BindingFactors+0x270>)
c0de1276:	2220      	movs	r2, #32
c0de1278:	4479      	add	r1, pc
c0de127a:	f006 fd71 	bl	c0de7d60 <__aeabi_memcpy>
c0de127e:	a832      	add	r0, sp, #200	@ 0xc8
c0de1280:	f000 fa0c 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de1284:	2800      	cmp	r0, #0
c0de1286:	f040 8082 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de128a:	a831      	add	r0, sp, #196	@ 0xc4
c0de128c:	aa29      	add	r2, sp, #164	@ 0xa4
c0de128e:	f000 f9fe 	bl	c0de168e <OUTLINED_FUNCTION_2>
c0de1292:	2800      	cmp	r0, #0
c0de1294:	d17b      	bne.n	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1296:	99de      	ldr	r1, [sp, #888]	@ 0x378
c0de1298:	e9dd 2031 	ldrd	r2, r0, [sp, #196]	@ 0xc4
c0de129c:	f006 fb48 	bl	c0de7930 <cx_bn_reduce>
c0de12a0:	2800      	cmp	r0, #0
c0de12a2:	d174      	bne.n	c0de138e <handler_cmd_BindingFactors+0x246>
c0de12a4:	9832      	ldr	r0, [sp, #200]	@ 0xc8
c0de12a6:	f108 01e0 	add.w	r1, r8, #224	@ 0xe0
c0de12aa:	f000 f9f4 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de12ae:	2800      	cmp	r0, #0
c0de12b0:	d16d      	bne.n	c0de138e <handler_cmd_BindingFactors+0x246>
c0de12b2:	ac21      	add	r4, sp, #132	@ 0x84
c0de12b4:	4941      	ldr	r1, [pc, #260]	@ (c0de13bc <handler_cmd_BindingFactors+0x274>)
c0de12b6:	2220      	movs	r2, #32
c0de12b8:	4620      	mov	r0, r4
c0de12ba:	4479      	add	r1, pc
c0de12bc:	f006 fd50 	bl	c0de7d60 <__aeabi_memcpy>
c0de12c0:	a819      	add	r0, sp, #100	@ 0x64
c0de12c2:	493f      	ldr	r1, [pc, #252]	@ (c0de13c0 <handler_cmd_BindingFactors+0x278>)
c0de12c4:	2220      	movs	r2, #32
c0de12c6:	4479      	add	r1, pc
c0de12c8:	f006 fd4a 	bl	c0de7d60 <__aeabi_memcpy>
c0de12cc:	a811      	add	r0, sp, #68	@ 0x44
c0de12ce:	493d      	ldr	r1, [pc, #244]	@ (c0de13c4 <handler_cmd_BindingFactors+0x27c>)
c0de12d0:	2220      	movs	r2, #32
c0de12d2:	4479      	add	r1, pc
c0de12d4:	f006 fd44 	bl	c0de7d60 <__aeabi_memcpy>
c0de12d8:	a809      	add	r0, sp, #36	@ 0x24
c0de12da:	493b      	ldr	r1, [pc, #236]	@ (c0de13c8 <handler_cmd_BindingFactors+0x280>)
c0de12dc:	2220      	movs	r2, #32
c0de12de:	4479      	add	r1, pc
c0de12e0:	f006 fd3e 	bl	c0de7d60 <__aeabi_memcpy>
c0de12e4:	a808      	add	r0, sp, #32
c0de12e6:	2120      	movs	r1, #32
c0de12e8:	4622      	mov	r2, r4
c0de12ea:	f000 f9da 	bl	c0de16a2 <OUTLINED_FUNCTION_5>
c0de12ee:	2800      	cmp	r0, #0
c0de12f0:	d14d      	bne.n	c0de138e <handler_cmd_BindingFactors+0x246>
c0de12f2:	a807      	add	r0, sp, #28
c0de12f4:	aa19      	add	r2, sp, #100	@ 0x64
c0de12f6:	f000 f9ca 	bl	c0de168e <OUTLINED_FUNCTION_2>
c0de12fa:	2800      	cmp	r0, #0
c0de12fc:	d147      	bne.n	c0de138e <handler_cmd_BindingFactors+0x246>
c0de12fe:	a806      	add	r0, sp, #24
c0de1300:	aa09      	add	r2, sp, #36	@ 0x24
c0de1302:	f000 f9c4 	bl	c0de168e <OUTLINED_FUNCTION_2>
c0de1306:	2800      	cmp	r0, #0
c0de1308:	d141      	bne.n	c0de138e <handler_cmd_BindingFactors+0x246>
c0de130a:	a805      	add	r0, sp, #20
c0de130c:	aa11      	add	r2, sp, #68	@ 0x44
c0de130e:	f000 f9be 	bl	c0de168e <OUTLINED_FUNCTION_2>
c0de1312:	bbe0      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1314:	a803      	add	r0, sp, #12
c0de1316:	aa33      	add	r2, sp, #204	@ 0xcc
c0de1318:	f000 f9b9 	bl	c0de168e <OUTLINED_FUNCTION_2>
c0de131c:	bbb8      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de131e:	a804      	add	r0, sp, #16
c0de1320:	f000 f9bc 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de1324:	bb98      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1326:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1328:	9907      	ldr	r1, [sp, #28]
c0de132a:	e9dd 2003 	ldrd	r2, r0, [sp, #12]
c0de132e:	f006 faf3 	bl	c0de7918 <cx_bn_mod_mul>
c0de1332:	bb60      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1334:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1336:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de133a:	9807      	ldr	r0, [sp, #28]
c0de133c:	f006 faec 	bl	c0de7918 <cx_bn_mod_mul>
c0de1340:	bb28      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1342:	e9dd 3231 	ldrd	r3, r2, [sp, #196]	@ 0xc4
c0de1346:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de134a:	f006 fae5 	bl	c0de7918 <cx_bn_mod_mul>
c0de134e:	b9f0      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1350:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1352:	9a06      	ldr	r2, [sp, #24]
c0de1354:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
c0de1358:	f006 fac6 	bl	c0de78e8 <cx_bn_mod_add>
c0de135c:	b9b8      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de135e:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1360:	9a08      	ldr	r2, [sp, #32]
c0de1362:	e9dd 1003 	ldrd	r1, r0, [sp, #12]
c0de1366:	f006 fabf 	bl	c0de78e8 <cx_bn_mod_add>
c0de136a:	b980      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de136c:	9a31      	ldr	r2, [sp, #196]	@ 0xc4
c0de136e:	9904      	ldr	r1, [sp, #16]
c0de1370:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1372:	f006 fadd 	bl	c0de7930 <cx_bn_reduce>
c0de1376:	b950      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1378:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de137a:	a9f5      	add	r1, sp, #980	@ 0x3d4
c0de137c:	f000 f98b 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de1380:	b928      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1382:	a8f5      	add	r0, sp, #980	@ 0x3d4
c0de1384:	f000 f997 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de1388:	f006 fa2c 	bl	c0de77e4 <cx_bn_unlock>
c0de138c:	b128      	cbz	r0, c0de139a <handler_cmd_BindingFactors+0x252>
c0de138e:	f000 f97b 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de1392:	f20d 4dd4 	addw	sp, sp, #1236	@ 0x4d4
c0de1396:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de139a:	2000      	movs	r0, #0
c0de139c:	e7f9      	b.n	c0de1392 <handler_cmd_BindingFactors+0x24a>
c0de139e:	bf00      	nop
c0de13a0:	000079ea 	.word	0x000079ea
c0de13a4:	00007352 	.word	0x00007352
c0de13a8:	000071c6 	.word	0x000071c6
c0de13ac:	00007398 	.word	0x00007398
c0de13b0:	00007b26 	.word	0x00007b26
c0de13b4:	000072f8 	.word	0x000072f8
c0de13b8:	00007264 	.word	0x00007264
c0de13bc:	00007182 	.word	0x00007182
c0de13c0:	00007296 	.word	0x00007296
c0de13c4:	000073ca 	.word	0x000073ca
c0de13c8:	0000711e 	.word	0x0000711e

c0de13cc <handler_cmd_PartialSig>:
c0de13cc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de13d0:	f5ad 6d87 	sub.w	sp, sp, #1080	@ 0x438
c0de13d4:	4604      	mov	r4, r0
c0de13d6:	f000 f953 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de13da:	2800      	cmp	r0, #0
c0de13dc:	d154      	bne.n	c0de1488 <handler_cmd_PartialSig+0xbc>
c0de13de:	6820      	ldr	r0, [r4, #0]
c0de13e0:	7801      	ldrb	r1, [r0, #0]
c0de13e2:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de13e4:	f001 fcaa 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de13e8:	2800      	cmp	r0, #0
c0de13ea:	d14d      	bne.n	c0de1488 <handler_cmd_PartialSig+0xbc>
c0de13ec:	492a      	ldr	r1, [pc, #168]	@ (c0de1498 <handler_cmd_PartialSig+0xcc>)
c0de13ee:	f50d 7880 	add.w	r8, sp, #256	@ 0x100
c0de13f2:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de13f6:	4640      	mov	r0, r8
c0de13f8:	4479      	add	r1, pc
c0de13fa:	f006 fcb1 	bl	c0de7d60 <__aeabi_memcpy>
c0de13fe:	4927      	ldr	r1, [pc, #156]	@ (c0de149c <handler_cmd_PartialSig+0xd0>)
c0de1400:	f10d 0ae0 	add.w	sl, sp, #224	@ 0xe0
c0de1404:	2220      	movs	r2, #32
c0de1406:	4650      	mov	r0, sl
c0de1408:	4479      	add	r1, pc
c0de140a:	f006 fca9 	bl	c0de7d60 <__aeabi_memcpy>
c0de140e:	4924      	ldr	r1, [pc, #144]	@ (c0de14a0 <handler_cmd_PartialSig+0xd4>)
c0de1410:	f10d 0bc0 	add.w	fp, sp, #192	@ 0xc0
c0de1414:	2220      	movs	r2, #32
c0de1416:	4658      	mov	r0, fp
c0de1418:	4479      	add	r1, pc
c0de141a:	f006 fca1 	bl	c0de7d60 <__aeabi_memcpy>
c0de141e:	ac28      	add	r4, sp, #160	@ 0xa0
c0de1420:	4920      	ldr	r1, [pc, #128]	@ (c0de14a4 <handler_cmd_PartialSig+0xd8>)
c0de1422:	2220      	movs	r2, #32
c0de1424:	4620      	mov	r0, r4
c0de1426:	4479      	add	r1, pc
c0de1428:	f006 fc9a 	bl	c0de7d60 <__aeabi_memcpy>
c0de142c:	af18      	add	r7, sp, #96	@ 0x60
c0de142e:	491e      	ldr	r1, [pc, #120]	@ (c0de14a8 <handler_cmd_PartialSig+0xdc>)
c0de1430:	2240      	movs	r2, #64	@ 0x40
c0de1432:	4638      	mov	r0, r7
c0de1434:	4479      	add	r1, pc
c0de1436:	f006 fc93 	bl	c0de7d60 <__aeabi_memcpy>
c0de143a:	ad10      	add	r5, sp, #64	@ 0x40
c0de143c:	491b      	ldr	r1, [pc, #108]	@ (c0de14ac <handler_cmd_PartialSig+0xe0>)
c0de143e:	2220      	movs	r2, #32
c0de1440:	4628      	mov	r0, r5
c0de1442:	4479      	add	r1, pc
c0de1444:	f006 fc8c 	bl	c0de7d60 <__aeabi_memcpy>
c0de1448:	ae08      	add	r6, sp, #32
c0de144a:	4919      	ldr	r1, [pc, #100]	@ (c0de14b0 <handler_cmd_PartialSig+0xe4>)
c0de144c:	2220      	movs	r2, #32
c0de144e:	4630      	mov	r0, r6
c0de1450:	4479      	add	r1, pc
c0de1452:	f006 fc85 	bl	c0de7d60 <__aeabi_memcpy>
c0de1456:	2103      	movs	r1, #3
c0de1458:	a8ce      	add	r0, sp, #824	@ 0x338
c0de145a:	e9cd b400 	strd	fp, r4, [sp]
c0de145e:	f8cd a010 	str.w	sl, [sp, #16]
c0de1462:	462a      	mov	r2, r5
c0de1464:	463b      	mov	r3, r7
c0de1466:	e9cd 8102 	strd	r8, r1, [sp, #8]
c0de146a:	2120      	movs	r1, #32
c0de146c:	9007      	str	r0, [sp, #28]
c0de146e:	e9cd 1605 	strd	r1, r6, [sp, #20]
c0de1472:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de1474:	2101      	movs	r1, #1
c0de1476:	f001 f9f9 	bl	c0de286c <zkn_partial_sig>
c0de147a:	b928      	cbnz	r0, c0de1488 <handler_cmd_PartialSig+0xbc>
c0de147c:	a8ce      	add	r0, sp, #824	@ 0x338
c0de147e:	f000 f921 	bl	c0de16c4 <OUTLINED_FUNCTION_9>
c0de1482:	f006 f9af 	bl	c0de77e4 <cx_bn_unlock>
c0de1486:	b128      	cbz	r0, c0de1494 <handler_cmd_PartialSig+0xc8>
c0de1488:	f000 f8fe 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de148c:	f50d 6d87 	add.w	sp, sp, #1080	@ 0x438
c0de1490:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1494:	2000      	movs	r0, #0
c0de1496:	e7f9      	b.n	c0de148c <handler_cmd_PartialSig+0xc0>
c0de1498:	00007784 	.word	0x00007784
c0de149c:	00006f94 	.word	0x00006f94
c0de14a0:	00007024 	.word	0x00007024
c0de14a4:	00007136 	.word	0x00007136
c0de14a8:	00007928 	.word	0x00007928
c0de14ac:	0000725a 	.word	0x0000725a
c0de14b0:	00006fac 	.word	0x00006fac

c0de14b4 <handler_get_insecure_public>:
c0de14b4:	b5b0      	push	{r4, r5, r7, lr}
c0de14b6:	b0aa      	sub	sp, #168	@ 0xa8
c0de14b8:	6800      	ldr	r0, [r0, #0]
c0de14ba:	21ff      	movs	r1, #255	@ 0xff
c0de14bc:	7805      	ldrb	r5, [r0, #0]
c0de14be:	2000      	movs	r0, #0
c0de14c0:	ac1a      	add	r4, sp, #104	@ 0x68
c0de14c2:	2840      	cmp	r0, #64	@ 0x40
c0de14c4:	d002      	beq.n	c0de14cc <handler_get_insecure_public+0x18>
c0de14c6:	5421      	strb	r1, [r4, r0]
c0de14c8:	3001      	adds	r0, #1
c0de14ca:	e7fa      	b.n	c0de14c2 <handler_get_insecure_public+0xe>
c0de14cc:	f000 f8d8 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de14d0:	b9f8      	cbnz	r0, c0de1512 <handler_get_insecure_public+0x5e>
c0de14d2:	a804      	add	r0, sp, #16
c0de14d4:	f000 f8f9 	bl	c0de16ca <OUTLINED_FUNCTION_10>
c0de14d8:	b9d8      	cbnz	r0, c0de1512 <handler_get_insecure_public+0x5e>
c0de14da:	a804      	add	r0, sp, #16
c0de14dc:	a901      	add	r1, sp, #4
c0de14de:	f001 faad 	bl	c0de2a3c <tEdwards_alloc>
c0de14e2:	b9b0      	cbnz	r0, c0de1512 <handler_get_insecure_public+0x5e>
c0de14e4:	480e      	ldr	r0, [pc, #56]	@ (c0de1520 <handler_get_insecure_public+0x6c>)
c0de14e6:	eb09 0100 	add.w	r1, r9, r0
c0de14ea:	a804      	add	r0, sp, #16
c0de14ec:	aa01      	add	r2, sp, #4
c0de14ee:	f000 fd37 	bl	c0de1f60 <zkn_prv2pub>
c0de14f2:	b970      	cbnz	r0, c0de1512 <handler_get_insecure_public+0x5e>
c0de14f4:	a804      	add	r0, sp, #16
c0de14f6:	f104 0320 	add.w	r3, r4, #32
c0de14fa:	a901      	add	r1, sp, #4
c0de14fc:	f000 f8df 	bl	c0de16be <OUTLINED_FUNCTION_8>
c0de1500:	b938      	cbnz	r0, c0de1512 <handler_get_insecure_public+0x5e>
c0de1502:	9804      	ldr	r0, [sp, #16]
c0de1504:	0041      	lsls	r1, r0, #1
c0de1506:	a81a      	add	r0, sp, #104	@ 0x68
c0de1508:	f7ff f8d0 	bl	c0de06ac <io_send_response_pointer>
c0de150c:	f006 f96a 	bl	c0de77e4 <cx_bn_unlock>
c0de1510:	b118      	cbz	r0, c0de151a <handler_get_insecure_public+0x66>
c0de1512:	f000 f8b9 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de1516:	b02a      	add	sp, #168	@ 0xa8
c0de1518:	bdb0      	pop	{r4, r5, r7, pc}
c0de151a:	2000      	movs	r0, #0
c0de151c:	e7fb      	b.n	c0de1516 <handler_get_insecure_public+0x62>
c0de151e:	bf00      	nop
c0de1520:	00000350 	.word	0x00000350

c0de1524 <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de1524:	b570      	push	{r4, r5, r6, lr}
c0de1526:	b0bc      	sub	sp, #240	@ 0xf0
c0de1528:	4605      	mov	r5, r0
c0de152a:	6800      	ldr	r0, [r0, #0]
c0de152c:	21ff      	movs	r1, #255	@ 0xff
c0de152e:	7804      	ldrb	r4, [r0, #0]
c0de1530:	2000      	movs	r0, #0
c0de1532:	ae24      	add	r6, sp, #144	@ 0x90
c0de1534:	2860      	cmp	r0, #96	@ 0x60
c0de1536:	d002      	beq.n	c0de153e <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1a>
c0de1538:	5431      	strb	r1, [r6, r0]
c0de153a:	3001      	adds	r0, #1
c0de153c:	e7fa      	b.n	c0de1534 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x10>
c0de153e:	f000 f89f 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de1542:	bb68      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1544:	6828      	ldr	r0, [r5, #0]
c0de1546:	2100      	movs	r1, #0
c0de1548:	aa03      	add	r2, sp, #12
c0de154a:	3001      	adds	r0, #1
c0de154c:	2920      	cmp	r1, #32
c0de154e:	d003      	beq.n	c0de1558 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x34>
c0de1550:	5c43      	ldrb	r3, [r0, r1]
c0de1552:	5453      	strb	r3, [r2, r1]
c0de1554:	3101      	adds	r1, #1
c0de1556:	e7f9      	b.n	c0de154c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x28>
c0de1558:	a80e      	add	r0, sp, #56	@ 0x38
c0de155a:	4621      	mov	r1, r4
c0de155c:	f001 fbee 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de1560:	b9f0      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1562:	a80e      	add	r0, sp, #56	@ 0x38
c0de1564:	a90b      	add	r1, sp, #44	@ 0x2c
c0de1566:	f001 fa69 	bl	c0de2a3c <tEdwards_alloc>
c0de156a:	b9c8      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de156c:	4c0f      	ldr	r4, [pc, #60]	@ (c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x88>)
c0de156e:	a80e      	add	r0, sp, #56	@ 0x38
c0de1570:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de1572:	eb09 0104 	add.w	r1, r9, r4
c0de1576:	f000 fcf3 	bl	c0de1f60 <zkn_prv2pub>
c0de157a:	b988      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de157c:	2020      	movs	r0, #32
c0de157e:	eb09 0104 	add.w	r1, r9, r4
c0de1582:	e9cd 0600 	strd	r0, r6, [sp]
c0de1586:	a80e      	add	r0, sp, #56	@ 0x38
c0de1588:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de158a:	ab03      	add	r3, sp, #12
c0de158c:	f000 fd10 	bl	c0de1fb0 <EddsaPoseidon_Sign_final>
c0de1590:	b930      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1592:	a824      	add	r0, sp, #144	@ 0x90
c0de1594:	2160      	movs	r1, #96	@ 0x60
c0de1596:	f7ff f889 	bl	c0de06ac <io_send_response_pointer>
c0de159a:	f006 f923 	bl	c0de77e4 <cx_bn_unlock>
c0de159e:	b118      	cbz	r0, c0de15a8 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x84>
c0de15a0:	f000 f872 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de15a4:	b03c      	add	sp, #240	@ 0xf0
c0de15a6:	bd70      	pop	{r4, r5, r6, pc}
c0de15a8:	2000      	movs	r0, #0
c0de15aa:	e7fb      	b.n	c0de15a4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x80>
c0de15ac:	00000350 	.word	0x00000350

c0de15b0 <handler_cmd_frost_commit>:
c0de15b0:	b570      	push	{r4, r5, r6, lr}
c0de15b2:	b0bc      	sub	sp, #240	@ 0xf0
c0de15b4:	4604      	mov	r4, r0
c0de15b6:	f000 f863 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de15ba:	bba8      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de15bc:	6820      	ldr	r0, [r4, #0]
c0de15be:	7801      	ldrb	r1, [r0, #0]
c0de15c0:	a806      	add	r0, sp, #24
c0de15c2:	f001 fbbb 	bl	c0de2d3c <tEdwards_Curve_alloc_init>
c0de15c6:	bb78      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de15c8:	ad06      	add	r5, sp, #24
c0de15ca:	466e      	mov	r6, sp
c0de15cc:	4628      	mov	r0, r5
c0de15ce:	4631      	mov	r1, r6
c0de15d0:	f001 fa34 	bl	c0de2a3c <tEdwards_alloc>
c0de15d4:	f106 040c 	add.w	r4, r6, #12
c0de15d8:	4628      	mov	r0, r5
c0de15da:	4621      	mov	r1, r4
c0de15dc:	f001 fa2e 	bl	c0de2a3c <tEdwards_alloc>
c0de15e0:	4814      	ldr	r0, [pc, #80]	@ (c0de1634 <handler_cmd_frost_commit+0x84>)
c0de15e2:	4633      	mov	r3, r6
c0de15e4:	eb09 0100 	add.w	r1, r9, r0
c0de15e8:	4813      	ldr	r0, [pc, #76]	@ (c0de1638 <handler_cmd_frost_commit+0x88>)
c0de15ea:	eb09 0200 	add.w	r2, r9, r0
c0de15ee:	4628      	mov	r0, r5
c0de15f0:	f000 ff37 	bl	c0de2462 <zkn_frost_commit>
c0de15f4:	b9c0      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de15f6:	ad1c      	add	r5, sp, #112	@ 0x70
c0de15f8:	a806      	add	r0, sp, #24
c0de15fa:	4669      	mov	r1, sp
c0de15fc:	f105 0320 	add.w	r3, r5, #32
c0de1600:	462a      	mov	r2, r5
c0de1602:	f001 fd26 	bl	c0de3052 <tEdwards_export>
c0de1606:	b978      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de1608:	f105 0240 	add.w	r2, r5, #64	@ 0x40
c0de160c:	f105 0360 	add.w	r3, r5, #96	@ 0x60
c0de1610:	a806      	add	r0, sp, #24
c0de1612:	4621      	mov	r1, r4
c0de1614:	f001 fd1d 	bl	c0de3052 <tEdwards_export>
c0de1618:	b930      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de161a:	a81c      	add	r0, sp, #112	@ 0x70
c0de161c:	2180      	movs	r1, #128	@ 0x80
c0de161e:	f7ff f845 	bl	c0de06ac <io_send_response_pointer>
c0de1622:	f006 f8df 	bl	c0de77e4 <cx_bn_unlock>
c0de1626:	b118      	cbz	r0, c0de1630 <handler_cmd_frost_commit+0x80>
c0de1628:	f000 f82e 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de162c:	b03c      	add	sp, #240	@ 0xf0
c0de162e:	bd70      	pop	{r4, r5, r6, pc}
c0de1630:	2000      	movs	r0, #0
c0de1632:	e7fb      	b.n	c0de162c <handler_cmd_frost_commit+0x7c>
c0de1634:	00000350 	.word	0x00000350
c0de1638:	00000370 	.word	0x00000370

c0de163c <handler_cmd_frost_inject>:
c0de163c:	b510      	push	{r4, lr}
c0de163e:	4604      	mov	r4, r0
c0de1640:	480c      	ldr	r0, [pc, #48]	@ (c0de1674 <handler_cmd_frost_inject+0x38>)
c0de1642:	2240      	movs	r2, #64	@ 0x40
c0de1644:	6821      	ldr	r1, [r4, #0]
c0de1646:	4448      	add	r0, r9
c0de1648:	f006 fb8a 	bl	c0de7d60 <__aeabi_memcpy>
c0de164c:	480a      	ldr	r0, [pc, #40]	@ (c0de1678 <handler_cmd_frost_inject+0x3c>)
c0de164e:	6821      	ldr	r1, [r4, #0]
c0de1650:	2220      	movs	r2, #32
c0de1652:	4448      	add	r0, r9
c0de1654:	3140      	adds	r1, #64	@ 0x40
c0de1656:	f006 fb83 	bl	c0de7d60 <__aeabi_memcpy>
c0de165a:	4808      	ldr	r0, [pc, #32]	@ (c0de167c <handler_cmd_frost_inject+0x40>)
c0de165c:	6821      	ldr	r1, [r4, #0]
c0de165e:	2220      	movs	r2, #32
c0de1660:	4448      	add	r0, r9
c0de1662:	3160      	adds	r1, #96	@ 0x60
c0de1664:	f006 fb7c 	bl	c0de7d60 <__aeabi_memcpy>
c0de1668:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de166c:	f7ff f829 	bl	c0de06c2 <io_send_sw>
c0de1670:	2000      	movs	r0, #0
c0de1672:	bd10      	pop	{r4, pc}
c0de1674:	000002f0 	.word	0x000002f0
c0de1678:	00000330 	.word	0x00000330
c0de167c:	00000350 	.word	0x00000350

c0de1680 <OUTLINED_FUNCTION_0>:
c0de1680:	2020      	movs	r0, #32
c0de1682:	2100      	movs	r1, #0
c0de1684:	f006 b8a4 	b.w	c0de77d0 <cx_bn_lock>

c0de1688 <OUTLINED_FUNCTION_1>:
c0de1688:	b280      	uxth	r0, r0
c0de168a:	f7ff b81a 	b.w	c0de06c2 <io_send_sw>

c0de168e <OUTLINED_FUNCTION_2>:
c0de168e:	2120      	movs	r1, #32
c0de1690:	2320      	movs	r3, #32
c0de1692:	f006 b8b9 	b.w	c0de7808 <cx_bn_alloc_init>

c0de1696 <OUTLINED_FUNCTION_3>:
c0de1696:	2220      	movs	r2, #32
c0de1698:	f006 b8f6 	b.w	c0de7888 <cx_bn_export>

c0de169c <OUTLINED_FUNCTION_4>:
c0de169c:	2120      	movs	r1, #32
c0de169e:	f006 b8a9 	b.w	c0de77f4 <cx_bn_alloc>

c0de16a2 <OUTLINED_FUNCTION_5>:
c0de16a2:	2320      	movs	r3, #32
c0de16a4:	f006 b8b0 	b.w	c0de7808 <cx_bn_alloc_init>

c0de16a8 <OUTLINED_FUNCTION_6>:
c0de16a8:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de16ac:	9b01      	ldr	r3, [sp, #4]
c0de16ae:	9a04      	ldr	r2, [sp, #16]
c0de16b0:	3001      	adds	r0, #1
c0de16b2:	3901      	subs	r1, #1
c0de16b4:	4770      	bx	lr

c0de16b6 <OUTLINED_FUNCTION_7>:
c0de16b6:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de16ba:	f7fe bff7 	b.w	c0de06ac <io_send_response_pointer>

c0de16be <OUTLINED_FUNCTION_8>:
c0de16be:	4622      	mov	r2, r4
c0de16c0:	f001 bcc7 	b.w	c0de3052 <tEdwards_export>

c0de16c4 <OUTLINED_FUNCTION_9>:
c0de16c4:	2120      	movs	r1, #32
c0de16c6:	f7fe bff1 	b.w	c0de06ac <io_send_response_pointer>

c0de16ca <OUTLINED_FUNCTION_10>:
c0de16ca:	4629      	mov	r1, r5
c0de16cc:	f001 bb36 	b.w	c0de2d3c <tEdwards_Curve_alloc_init>

c0de16d0 <helper_send_response_pubkey>:
c0de16d0:	b5b0      	push	{r4, r5, r7, lr}
c0de16d2:	b09a      	sub	sp, #104	@ 0x68
c0de16d4:	2041      	movs	r0, #65	@ 0x41
c0de16d6:	f10d 0405 	add.w	r4, sp, #5
c0de16da:	2241      	movs	r2, #65	@ 0x41
c0de16dc:	f88d 0005 	strb.w	r0, [sp, #5]
c0de16e0:	480b      	ldr	r0, [pc, #44]	@ (c0de1710 <helper_send_response_pubkey+0x40>)
c0de16e2:	eb09 0500 	add.w	r5, r9, r0
c0de16e6:	1c60      	adds	r0, r4, #1
c0de16e8:	f105 0108 	add.w	r1, r5, #8
c0de16ec:	f006 fb38 	bl	c0de7d60 <__aeabi_memcpy>
c0de16f0:	2020      	movs	r0, #32
c0de16f2:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de16f6:	2220      	movs	r2, #32
c0de16f8:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de16fc:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1700:	f006 fb2e 	bl	c0de7d60 <__aeabi_memcpy>
c0de1704:	4620      	mov	r0, r4
c0de1706:	2163      	movs	r1, #99	@ 0x63
c0de1708:	f000 f804 	bl	c0de1714 <io_send_response_pointer>
c0de170c:	b01a      	add	sp, #104	@ 0x68
c0de170e:	bdb0      	pop	{r4, r5, r7, pc}
c0de1710:	00000000 	.word	0x00000000

c0de1714 <io_send_response_pointer>:
c0de1714:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1716:	2200      	movs	r2, #0
c0de1718:	ab01      	add	r3, sp, #4
c0de171a:	c307      	stmia	r3!, {r0, r1, r2}
c0de171c:	a801      	add	r0, sp, #4
c0de171e:	2101      	movs	r1, #1
c0de1720:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de1724:	f005 fb62 	bl	c0de6dec <io_send_response_buffers>
c0de1728:	b004      	add	sp, #16
c0de172a:	bd80      	pop	{r7, pc}

c0de172c <helper_send_response_sig>:
c0de172c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de172e:	b099      	sub	sp, #100	@ 0x64
c0de1730:	f10d 0402 	add.w	r4, sp, #2
c0de1734:	2161      	movs	r1, #97	@ 0x61
c0de1736:	1c65      	adds	r5, r4, #1
c0de1738:	4628      	mov	r0, r5
c0de173a:	f006 fb1b 	bl	c0de7d74 <__aeabi_memclr>
c0de173e:	4808      	ldr	r0, [pc, #32]	@ (c0de1760 <helper_send_response_sig+0x34>)
c0de1740:	f000 f810 	bl	c0de1764 <OUTLINED_FUNCTION_0>
c0de1744:	f88d 6002 	strb.w	r6, [sp, #2]
c0de1748:	f006 fb0a 	bl	c0de7d60 <__aeabi_memcpy>
c0de174c:	f897 12b9 	ldrb.w	r1, [r7, #697]	@ 0x2b9
c0de1750:	1930      	adds	r0, r6, r4
c0de1752:	7041      	strb	r1, [r0, #1]
c0de1754:	1cb1      	adds	r1, r6, #2
c0de1756:	4620      	mov	r0, r4
c0de1758:	f7ff ffdc 	bl	c0de1714 <io_send_response_pointer>
c0de175c:	b019      	add	sp, #100	@ 0x64
c0de175e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1760:	00000000 	.word	0x00000000

c0de1764 <OUTLINED_FUNCTION_0>:
c0de1764:	eb09 0700 	add.w	r7, r9, r0
c0de1768:	4628      	mov	r0, r5
c0de176a:	f897 62b8 	ldrb.w	r6, [r7, #696]	@ 0x2b8
c0de176e:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de1772:	4632      	mov	r2, r6
c0de1774:	4770      	bx	lr

c0de1776 <swap_handle_check_address>:
c0de1776:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de177a:	b0bc      	sub	sp, #240	@ 0xf0
c0de177c:	4604      	mov	r4, r0
c0de177e:	2000      	movs	r0, #0
c0de1780:	68a5      	ldr	r5, [r4, #8]
c0de1782:	61a0      	str	r0, [r4, #24]
c0de1784:	2d00      	cmp	r5, #0
c0de1786:	d04d      	beq.n	c0de1824 <swap_handle_check_address+0xae>
c0de1788:	6920      	ldr	r0, [r4, #16]
c0de178a:	2800      	cmp	r0, #0
c0de178c:	d04a      	beq.n	c0de1824 <swap_handle_check_address+0xae>
c0de178e:	f006 fb4d 	bl	c0de7e2c <strlen>
c0de1792:	2828      	cmp	r0, #40	@ 0x28
c0de1794:	d146      	bne.n	c0de1824 <swap_handle_check_address+0xae>
c0de1796:	7b20      	ldrb	r0, [r4, #12]
c0de1798:	f04f 0800 	mov.w	r8, #0
c0de179c:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de179e:	2161      	movs	r1, #97	@ 0x61
c0de17a0:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de17a4:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de17a6:	ad15      	add	r5, sp, #84	@ 0x54
c0de17a8:	4628      	mov	r0, r5
c0de17aa:	f006 fae3 	bl	c0de7d74 <__aeabi_memclr>
c0de17ae:	ae39      	add	r6, sp, #228	@ 0xe4
c0de17b0:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de17b4:	4630      	mov	r0, r6
c0de17b6:	f005 f8c7 	bl	c0de6948 <buffer_read_u8>
c0de17ba:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de17be:	af2e      	add	r7, sp, #184	@ 0xb8
c0de17c0:	4630      	mov	r0, r6
c0de17c2:	4639      	mov	r1, r7
c0de17c4:	f005 f913 	bl	c0de69ee <buffer_read_bip32_path>
c0de17c8:	2005      	movs	r0, #5
c0de17ca:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de17ce:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de17d2:	463a      	mov	r2, r7
c0de17d4:	f8cd 8010 	str.w	r8, [sp, #16]
c0de17d8:	e9cd 5100 	strd	r5, r1, [sp]
c0de17dc:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de17e0:	2000      	movs	r0, #0
c0de17e2:	2121      	movs	r1, #33	@ 0x21
c0de17e4:	f005 f9c4 	bl	c0de6b70 <bip32_derive_with_seed_get_pubkey_256>
c0de17e8:	b9e0      	cbnz	r0, c0de1824 <swap_handle_check_address+0xae>
c0de17ea:	ad10      	add	r5, sp, #64	@ 0x40
c0de17ec:	2114      	movs	r1, #20
c0de17ee:	4628      	mov	r0, r5
c0de17f0:	f006 fac0 	bl	c0de7d74 <__aeabi_memclr>
c0de17f4:	a815      	add	r0, sp, #84	@ 0x54
c0de17f6:	4629      	mov	r1, r5
c0de17f8:	2214      	movs	r2, #20
c0de17fa:	f7fe fc15 	bl	c0de0028 <address_from_pubkey>
c0de17fe:	ae05      	add	r6, sp, #20
c0de1800:	2129      	movs	r1, #41	@ 0x29
c0de1802:	4630      	mov	r0, r6
c0de1804:	f006 fab6 	bl	c0de7d74 <__aeabi_memclr>
c0de1808:	4628      	mov	r0, r5
c0de180a:	2114      	movs	r1, #20
c0de180c:	4632      	mov	r2, r6
c0de180e:	2329      	movs	r3, #41	@ 0x29
c0de1810:	f005 fa8c 	bl	c0de6d2c <format_hex>
c0de1814:	6921      	ldr	r1, [r4, #16]
c0de1816:	4630      	mov	r0, r6
c0de1818:	2229      	movs	r2, #41	@ 0x29
c0de181a:	f006 fb0f 	bl	c0de7e3c <strncmp>
c0de181e:	b908      	cbnz	r0, c0de1824 <swap_handle_check_address+0xae>
c0de1820:	2001      	movs	r0, #1
c0de1822:	61a0      	str	r0, [r4, #24]
c0de1824:	b03c      	add	sp, #240	@ 0xf0
c0de1826:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de182c <swap_handle_get_printable_amount>:
c0de182c:	b570      	push	{r4, r5, r6, lr}
c0de182e:	b08c      	sub	sp, #48	@ 0x30
c0de1830:	ac04      	add	r4, sp, #16
c0de1832:	4606      	mov	r6, r0
c0de1834:	211e      	movs	r1, #30
c0de1836:	4620      	mov	r0, r4
c0de1838:	f006 fa9c 	bl	c0de7d74 <__aeabi_memclr>
c0de183c:	f106 050e 	add.w	r5, r6, #14
c0de1840:	2132      	movs	r1, #50	@ 0x32
c0de1842:	4628      	mov	r0, r5
c0de1844:	f006 fa96 	bl	c0de7d74 <__aeabi_memclr>
c0de1848:	2000      	movs	r0, #0
c0de184a:	7b31      	ldrb	r1, [r6, #12]
c0de184c:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1850:	68b0      	ldr	r0, [r6, #8]
c0de1852:	aa02      	add	r2, sp, #8
c0de1854:	f005 fc56 	bl	c0de7104 <swap_str_to_u64>
c0de1858:	b178      	cbz	r0, c0de187a <swap_handle_get_printable_amount+0x4e>
c0de185a:	2003      	movs	r0, #3
c0de185c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1860:	211e      	movs	r1, #30
c0de1862:	9000      	str	r0, [sp, #0]
c0de1864:	4620      	mov	r0, r4
c0de1866:	f005 fa1a 	bl	c0de6c9e <format_fpu64>
c0de186a:	9400      	str	r4, [sp, #0]
c0de186c:	4628      	mov	r0, r5
c0de186e:	2132      	movs	r1, #50	@ 0x32
c0de1870:	231e      	movs	r3, #30
c0de1872:	4a03      	ldr	r2, [pc, #12]	@ (c0de1880 <swap_handle_get_printable_amount+0x54>)
c0de1874:	447a      	add	r2, pc
c0de1876:	f005 fddf 	bl	c0de7438 <snprintf>
c0de187a:	b00c      	add	sp, #48	@ 0x30
c0de187c:	bd70      	pop	{r4, r5, r6, pc}
c0de187e:	bf00      	nop
c0de1880:	00006a38 	.word	0x00006a38

c0de1884 <swap_copy_transaction_parameters>:
c0de1884:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1886:	b093      	sub	sp, #76	@ 0x4c
c0de1888:	6985      	ldr	r5, [r0, #24]
c0de188a:	b3ad      	cbz	r5, c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de188c:	4604      	mov	r4, r0
c0de188e:	4628      	mov	r0, r5
c0de1890:	f006 facc 	bl	c0de7e2c <strlen>
c0de1894:	2828      	cmp	r0, #40	@ 0x28
c0de1896:	d12f      	bne.n	c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de1898:	68a7      	ldr	r7, [r4, #8]
c0de189a:	b36f      	cbz	r7, c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de189c:	466e      	mov	r6, sp
c0de189e:	2148      	movs	r1, #72	@ 0x48
c0de18a0:	4630      	mov	r0, r6
c0de18a2:	f006 fa67 	bl	c0de7d74 <__aeabi_memclr>
c0de18a6:	f106 0018 	add.w	r0, r6, #24
c0de18aa:	2100      	movs	r1, #0
c0de18ac:	2928      	cmp	r1, #40	@ 0x28
c0de18ae:	d009      	beq.n	c0de18c4 <swap_copy_transaction_parameters+0x40>
c0de18b0:	5c6a      	ldrb	r2, [r5, r1]
c0de18b2:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de18b6:	b2db      	uxtb	r3, r3
c0de18b8:	2b1a      	cmp	r3, #26
c0de18ba:	bf38      	it	cc
c0de18bc:	3a20      	subcc	r2, #32
c0de18be:	5442      	strb	r2, [r0, r1]
c0de18c0:	3101      	adds	r1, #1
c0de18c2:	e7f3      	b.n	c0de18ac <swap_copy_transaction_parameters+0x28>
c0de18c4:	7b21      	ldrb	r1, [r4, #12]
c0de18c6:	f106 0208 	add.w	r2, r6, #8
c0de18ca:	4638      	mov	r0, r7
c0de18cc:	f005 fc1a 	bl	c0de7104 <swap_str_to_u64>
c0de18d0:	b190      	cbz	r0, c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de18d2:	7d21      	ldrb	r1, [r4, #20]
c0de18d4:	6920      	ldr	r0, [r4, #16]
c0de18d6:	f106 0210 	add.w	r2, r6, #16
c0de18da:	f005 fc13 	bl	c0de7104 <swap_str_to_u64>
c0de18de:	b158      	cbz	r0, c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de18e0:	2401      	movs	r4, #1
c0de18e2:	f88d 4000 	strb.w	r4, [sp]
c0de18e6:	f005 fd9b 	bl	c0de7420 <os_explicit_zero_BSS_segment>
c0de18ea:	4805      	ldr	r0, [pc, #20]	@ (c0de1900 <swap_copy_transaction_parameters+0x7c>)
c0de18ec:	4669      	mov	r1, sp
c0de18ee:	2248      	movs	r2, #72	@ 0x48
c0de18f0:	4448      	add	r0, r9
c0de18f2:	f006 fa35 	bl	c0de7d60 <__aeabi_memcpy>
c0de18f6:	e000      	b.n	c0de18fa <swap_copy_transaction_parameters+0x76>
c0de18f8:	2400      	movs	r4, #0
c0de18fa:	4620      	mov	r0, r4
c0de18fc:	b013      	add	sp, #76	@ 0x4c
c0de18fe:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1900:	000003b0 	.word	0x000003b0

c0de1904 <swap_check_validity>:
c0de1904:	b570      	push	{r4, r5, r6, lr}
c0de1906:	b08c      	sub	sp, #48	@ 0x30
c0de1908:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1980 <swap_check_validity+0x7c>)
c0de190a:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de190e:	b32c      	cbz	r4, c0de195c <swap_check_validity+0x58>
c0de1910:	eb09 0406 	add.w	r4, r9, r6
c0de1914:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1918:	4069      	eors	r1, r5
c0de191a:	4060      	eors	r0, r4
c0de191c:	4308      	orrs	r0, r1
c0de191e:	d121      	bne.n	c0de1964 <swap_check_validity+0x60>
c0de1920:	eb09 0006 	add.w	r0, r9, r6
c0de1924:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1928:	4059      	eors	r1, r3
c0de192a:	4050      	eors	r0, r2
c0de192c:	4308      	orrs	r0, r1
c0de192e:	d11d      	bne.n	c0de196c <swap_check_validity+0x68>
c0de1930:	ad01      	add	r5, sp, #4
c0de1932:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de1934:	2129      	movs	r1, #41	@ 0x29
c0de1936:	4628      	mov	r0, r5
c0de1938:	f006 fa1c 	bl	c0de7d74 <__aeabi_memclr>
c0de193c:	4620      	mov	r0, r4
c0de193e:	2114      	movs	r1, #20
c0de1940:	462a      	mov	r2, r5
c0de1942:	2329      	movs	r3, #41	@ 0x29
c0de1944:	f005 f9f2 	bl	c0de6d2c <format_hex>
c0de1948:	eb09 0006 	add.w	r0, r9, r6
c0de194c:	4629      	mov	r1, r5
c0de194e:	3018      	adds	r0, #24
c0de1950:	f006 fa62 	bl	c0de7e18 <strcmp>
c0de1954:	b970      	cbnz	r0, c0de1974 <swap_check_validity+0x70>
c0de1956:	2001      	movs	r0, #1
c0de1958:	b00c      	add	sp, #48	@ 0x30
c0de195a:	bd70      	pop	{r4, r5, r6, pc}
c0de195c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1960:	21ff      	movs	r1, #255	@ 0xff
c0de1962:	e00a      	b.n	c0de197a <swap_check_validity+0x76>
c0de1964:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1968:	2101      	movs	r1, #1
c0de196a:	e006      	b.n	c0de197a <swap_check_validity+0x76>
c0de196c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1970:	2103      	movs	r1, #3
c0de1972:	e002      	b.n	c0de197a <swap_check_validity+0x76>
c0de1974:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1978:	2102      	movs	r1, #2
c0de197a:	2200      	movs	r2, #0
c0de197c:	f005 fb89 	bl	c0de7092 <send_swap_error_simple>
c0de1980:	000003b0 	.word	0x000003b0

c0de1984 <transaction_deserialize>:
c0de1984:	b570      	push	{r4, r5, r6, lr}
c0de1986:	460d      	mov	r5, r1
c0de1988:	4604      	mov	r4, r0
c0de198a:	b910      	cbnz	r0, c0de1992 <transaction_deserialize+0xe>
c0de198c:	2001      	movs	r0, #1
c0de198e:	f005 fcd3 	bl	c0de7338 <assert_exit>
c0de1992:	b915      	cbnz	r5, c0de199a <transaction_deserialize+0x16>
c0de1994:	2001      	movs	r0, #1
c0de1996:	f005 fccf 	bl	c0de7338 <assert_exit>
c0de199a:	6860      	ldr	r0, [r4, #4]
c0de199c:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de19a0:	d901      	bls.n	c0de19a6 <transaction_deserialize+0x22>
c0de19a2:	20f9      	movs	r0, #249	@ 0xf9
c0de19a4:	e04b      	b.n	c0de1a3e <transaction_deserialize+0xba>
c0de19a6:	4620      	mov	r0, r4
c0de19a8:	4629      	mov	r1, r5
c0de19aa:	2200      	movs	r2, #0
c0de19ac:	f004 ffe2 	bl	c0de6974 <buffer_read_u64>
c0de19b0:	b330      	cbz	r0, c0de1a00 <transaction_deserialize+0x7c>
c0de19b2:	6820      	ldr	r0, [r4, #0]
c0de19b4:	68a1      	ldr	r1, [r4, #8]
c0de19b6:	4408      	add	r0, r1
c0de19b8:	2114      	movs	r1, #20
c0de19ba:	61a8      	str	r0, [r5, #24]
c0de19bc:	4620      	mov	r0, r4
c0de19be:	f004 ffb8 	bl	c0de6932 <buffer_seek_cur>
c0de19c2:	b1f8      	cbz	r0, c0de1a04 <transaction_deserialize+0x80>
c0de19c4:	f105 0108 	add.w	r1, r5, #8
c0de19c8:	4620      	mov	r0, r4
c0de19ca:	2200      	movs	r2, #0
c0de19cc:	2600      	movs	r6, #0
c0de19ce:	f004 ffd1 	bl	c0de6974 <buffer_read_u64>
c0de19d2:	b1c8      	cbz	r0, c0de1a08 <transaction_deserialize+0x84>
c0de19d4:	f105 0120 	add.w	r1, r5, #32
c0de19d8:	4620      	mov	r0, r4
c0de19da:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de19de:	f004 ffe9 	bl	c0de69b4 <buffer_read_varint>
c0de19e2:	6a29      	ldr	r1, [r5, #32]
c0de19e4:	b990      	cbnz	r0, c0de1a0c <transaction_deserialize+0x88>
c0de19e6:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de19e8:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de19ec:	ea4f 0231 	mov.w	r2, r1, rrx
c0de19f0:	2300      	movs	r3, #0
c0de19f2:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de19f6:	eb73 0000 	sbcs.w	r0, r3, r0
c0de19fa:	d207      	bcs.n	c0de1a0c <transaction_deserialize+0x88>
c0de19fc:	20fc      	movs	r0, #252	@ 0xfc
c0de19fe:	e01e      	b.n	c0de1a3e <transaction_deserialize+0xba>
c0de1a00:	20ff      	movs	r0, #255	@ 0xff
c0de1a02:	e01c      	b.n	c0de1a3e <transaction_deserialize+0xba>
c0de1a04:	20fe      	movs	r0, #254	@ 0xfe
c0de1a06:	e01a      	b.n	c0de1a3e <transaction_deserialize+0xba>
c0de1a08:	20fd      	movs	r0, #253	@ 0xfd
c0de1a0a:	e018      	b.n	c0de1a3e <transaction_deserialize+0xba>
c0de1a0c:	6820      	ldr	r0, [r4, #0]
c0de1a0e:	68a2      	ldr	r2, [r4, #8]
c0de1a10:	4410      	add	r0, r2
c0de1a12:	61e8      	str	r0, [r5, #28]
c0de1a14:	4620      	mov	r0, r4
c0de1a16:	f004 ff8c 	bl	c0de6932 <buffer_seek_cur>
c0de1a1a:	b168      	cbz	r0, c0de1a38 <transaction_deserialize+0xb4>
c0de1a1c:	f105 031c 	add.w	r3, r5, #28
c0de1a20:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de1a22:	f000 f80e 	bl	c0de1a42 <transaction_utils_check_encoding>
c0de1a26:	b148      	cbz	r0, c0de1a3c <transaction_deserialize+0xb8>
c0de1a28:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1a2c:	f06f 0006 	mvn.w	r0, #6
c0de1a30:	428a      	cmp	r2, r1
c0de1a32:	bf08      	it	eq
c0de1a34:	2001      	moveq	r0, #1
c0de1a36:	e002      	b.n	c0de1a3e <transaction_deserialize+0xba>
c0de1a38:	20fb      	movs	r0, #251	@ 0xfb
c0de1a3a:	e000      	b.n	c0de1a3e <transaction_deserialize+0xba>
c0de1a3c:	20fa      	movs	r0, #250	@ 0xfa
c0de1a3e:	b240      	sxtb	r0, r0
c0de1a40:	bd70      	pop	{r4, r5, r6, pc}

c0de1a42 <transaction_utils_check_encoding>:
c0de1a42:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1a44:	461c      	mov	r4, r3
c0de1a46:	4615      	mov	r5, r2
c0de1a48:	4606      	mov	r6, r0
c0de1a4a:	b910      	cbnz	r0, c0de1a52 <transaction_utils_check_encoding+0x10>
c0de1a4c:	2001      	movs	r0, #1
c0de1a4e:	f005 fc73 	bl	c0de7338 <assert_exit>
c0de1a52:	2000      	movs	r0, #0
c0de1a54:	2300      	movs	r3, #0
c0de1a56:	4602      	mov	r2, r0
c0de1a58:	1b40      	subs	r0, r0, r5
c0de1a5a:	4619      	mov	r1, r3
c0de1a5c:	eb73 0004 	sbcs.w	r0, r3, r4
c0de1a60:	d206      	bcs.n	c0de1a70 <transaction_utils_check_encoding+0x2e>
c0de1a62:	56b7      	ldrsb	r7, [r6, r2]
c0de1a64:	1c50      	adds	r0, r2, #1
c0de1a66:	f141 0300 	adc.w	r3, r1, #0
c0de1a6a:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de1a6e:	dcf2      	bgt.n	c0de1a56 <transaction_utils_check_encoding+0x14>
c0de1a70:	2000      	movs	r0, #0
c0de1a72:	1b52      	subs	r2, r2, r5
c0de1a74:	41a1      	sbcs	r1, r4
c0de1a76:	bf28      	it	cs
c0de1a78:	2001      	movcs	r0, #1
c0de1a7a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1a7c <validate_pubkey>:
c0de1a7c:	b108      	cbz	r0, c0de1a82 <validate_pubkey+0x6>
c0de1a7e:	f7ff be27 	b.w	c0de16d0 <helper_send_response_pubkey>
c0de1a82:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1a86:	f000 b800 	b.w	c0de1a8a <io_send_sw>

c0de1a8a <io_send_sw>:
c0de1a8a:	b580      	push	{r7, lr}
c0de1a8c:	4602      	mov	r2, r0
c0de1a8e:	2000      	movs	r0, #0
c0de1a90:	2100      	movs	r1, #0
c0de1a92:	f005 f9ab 	bl	c0de6dec <io_send_response_buffers>
c0de1a96:	bd80      	pop	{r7, pc}

c0de1a98 <validate_transaction>:
c0de1a98:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1a9c:	b08c      	sub	sp, #48	@ 0x30
c0de1a9e:	b378      	cbz	r0, c0de1b00 <validate_transaction+0x68>
c0de1aa0:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1b38 <validate_transaction+0xa0>
c0de1aa4:	2002      	movs	r0, #2
c0de1aa6:	2500      	movs	r5, #0
c0de1aa8:	2720      	movs	r7, #32
c0de1aaa:	2203      	movs	r2, #3
c0de1aac:	f240 6401 	movw	r4, #1537	@ 0x601
c0de1ab0:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de1ab4:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de1ab8:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de1aba:	f809 0008 	strb.w	r0, [r9, r8]
c0de1abe:	2060      	movs	r0, #96	@ 0x60
c0de1ac0:	900a      	str	r0, [sp, #40]	@ 0x28
c0de1ac2:	eb09 0008 	add.w	r0, r9, r8
c0de1ac6:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de1aca:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1ace:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1ad2:	e9cd 4200 	strd	r4, r2, [sp]
c0de1ad6:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de1ada:	2000      	movs	r0, #0
c0de1adc:	9508      	str	r5, [sp, #32]
c0de1ade:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1ae2:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de1ae6:	2121      	movs	r1, #33	@ 0x21
c0de1ae8:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1aec:	f005 f874 	bl	c0de6bd8 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1af0:	b188      	cbz	r0, c0de1b16 <validate_transaction+0x7e>
c0de1af2:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de1af6:	f809 5008 	strb.w	r5, [r9, r8]
c0de1afa:	f7ff ffc6 	bl	c0de1a8a <io_send_sw>
c0de1afe:	e017      	b.n	c0de1b30 <validate_transaction+0x98>
c0de1b00:	480d      	ldr	r0, [pc, #52]	@ (c0de1b38 <validate_transaction+0xa0>)
c0de1b02:	2100      	movs	r1, #0
c0de1b04:	f809 1000 	strb.w	r1, [r9, r0]
c0de1b08:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1b0c:	b00c      	add	sp, #48	@ 0x30
c0de1b0e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1b12:	f7ff bfba 	b.w	c0de1a8a <io_send_sw>
c0de1b16:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1b18:	eb09 0008 	add.w	r0, r9, r8
c0de1b1c:	f880 12b8 	strb.w	r1, [r0, #696]	@ 0x2b8
c0de1b20:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1b24:	f001 0101 	and.w	r1, r1, #1
c0de1b28:	f880 12b9 	strb.w	r1, [r0, #697]	@ 0x2b9
c0de1b2c:	f7ff fdfe 	bl	c0de172c <helper_send_response_sig>
c0de1b30:	b00c      	add	sp, #48	@ 0x30
c0de1b32:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1b36:	bf00      	nop
c0de1b38:	00000000 	.word	0x00000000

c0de1b3c <app_quit>:
c0de1b3c:	20ff      	movs	r0, #255	@ 0xff
c0de1b3e:	f005 ffd3 	bl	c0de7ae8 <os_sched_exit>
	...

c0de1b44 <ui_menu_main>:
c0de1b44:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1b46:	4c19      	ldr	r4, [pc, #100]	@ (c0de1bac <ui_menu_main+0x68>)
c0de1b48:	4817      	ldr	r0, [pc, #92]	@ (c0de1ba8 <ui_menu_main+0x64>)
c0de1b4a:	447c      	add	r4, pc
c0de1b4c:	eb09 0500 	add.w	r5, r9, r0
c0de1b50:	f000 f8d8 	bl	c0de1d04 <OUTLINED_FUNCTION_0>
c0de1b54:	2114      	movs	r1, #20
c0de1b56:	7369      	strb	r1, [r5, #13]
c0de1b58:	4915      	ldr	r1, [pc, #84]	@ (c0de1bb0 <ui_menu_main+0x6c>)
c0de1b5a:	4a16      	ldr	r2, [pc, #88]	@ (c0de1bb4 <ui_menu_main+0x70>)
c0de1b5c:	4479      	add	r1, pc
c0de1b5e:	447a      	add	r2, pc
c0de1b60:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1b64:	7800      	ldrb	r0, [r0, #0]
c0de1b66:	7328      	strb	r0, [r5, #12]
c0de1b68:	f000 f8cc 	bl	c0de1d04 <OUTLINED_FUNCTION_0>
c0de1b6c:	2115      	movs	r1, #21
c0de1b6e:	7669      	strb	r1, [r5, #25]
c0de1b70:	4911      	ldr	r1, [pc, #68]	@ (c0de1bb8 <ui_menu_main+0x74>)
c0de1b72:	4a12      	ldr	r2, [pc, #72]	@ (c0de1bbc <ui_menu_main+0x78>)
c0de1b74:	4479      	add	r1, pc
c0de1b76:	447a      	add	r2, pc
c0de1b78:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1b7c:	2100      	movs	r1, #0
c0de1b7e:	7840      	ldrb	r0, [r0, #1]
c0de1b80:	7628      	strb	r0, [r5, #24]
c0de1b82:	480f      	ldr	r0, [pc, #60]	@ (c0de1bc0 <ui_menu_main+0x7c>)
c0de1b84:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1bc4 <ui_menu_main+0x80>)
c0de1b86:	4b10      	ldr	r3, [pc, #64]	@ (c0de1bc8 <ui_menu_main+0x84>)
c0de1b88:	4478      	add	r0, pc
c0de1b8a:	447a      	add	r2, pc
c0de1b8c:	447b      	add	r3, pc
c0de1b8e:	e9cd 3200 	strd	r3, r2, [sp]
c0de1b92:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1b96:	2200      	movs	r2, #0
c0de1b98:	23ff      	movs	r3, #255	@ 0xff
c0de1b9a:	480c      	ldr	r0, [pc, #48]	@ (c0de1bcc <ui_menu_main+0x88>)
c0de1b9c:	490c      	ldr	r1, [pc, #48]	@ (c0de1bd0 <ui_menu_main+0x8c>)
c0de1b9e:	4478      	add	r0, pc
c0de1ba0:	4479      	add	r1, pc
c0de1ba2:	f003 f93b 	bl	c0de4e1c <nbgl_useCaseHomeAndSettings>
c0de1ba6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1ba8:	000003f8 	.word	0x000003f8
c0de1bac:	000078b2 	.word	0x000078b2
c0de1bb0:	000065fd 	.word	0x000065fd
c0de1bb4:	00006764 	.word	0x00006764
c0de1bb8:	00006660 	.word	0x00006660
c0de1bbc:	000064cc 	.word	0x000064cc
c0de1bc0:	ffffffb1 	.word	0xffffffb1
c0de1bc4:	0000721e 	.word	0x0000721e
c0de1bc8:	00007210 	.word	0x00007210
c0de1bcc:	000067d4 	.word	0x000067d4
c0de1bd0:	000062fb 	.word	0x000062fb

c0de1bd4 <controls_callback>:
c0de1bd4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1bd6:	4c22      	ldr	r4, [pc, #136]	@ (c0de1c60 <controls_callback+0x8c>)
c0de1bd8:	2815      	cmp	r0, #21
c0de1bda:	f809 2004 	strb.w	r2, [r9, r4]
c0de1bde:	d011      	beq.n	c0de1c04 <controls_callback+0x30>
c0de1be0:	2814      	cmp	r0, #20
c0de1be2:	d12a      	bne.n	c0de1c3a <controls_callback+0x66>
c0de1be4:	eb09 0504 	add.w	r5, r9, r4
c0de1be8:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1c64 <controls_callback+0x90>)
c0de1bea:	447c      	add	r4, pc
c0de1bec:	f000 f88a 	bl	c0de1d04 <OUTLINED_FUNCTION_0>
c0de1bf0:	7800      	ldrb	r0, [r0, #0]
c0de1bf2:	fab0 f080 	clz	r0, r0
c0de1bf6:	0940      	lsrs	r0, r0, #5
c0de1bf8:	7328      	strb	r0, [r5, #12]
c0de1bfa:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1bfe:	f000 f881 	bl	c0de1d04 <OUTLINED_FUNCTION_0>
c0de1c02:	e015      	b.n	c0de1c30 <controls_callback+0x5c>
c0de1c04:	4818      	ldr	r0, [pc, #96]	@ (c0de1c68 <controls_callback+0x94>)
c0de1c06:	4478      	add	r0, pc
c0de1c08:	f005 fda8 	bl	c0de775c <pic>
c0de1c0c:	7840      	ldrb	r0, [r0, #1]
c0de1c0e:	b1a8      	cbz	r0, c0de1c3c <controls_callback+0x68>
c0de1c10:	eb09 0504 	add.w	r5, r9, r4
c0de1c14:	4c15      	ldr	r4, [pc, #84]	@ (c0de1c6c <controls_callback+0x98>)
c0de1c16:	447c      	add	r4, pc
c0de1c18:	f000 f874 	bl	c0de1d04 <OUTLINED_FUNCTION_0>
c0de1c1c:	7840      	ldrb	r0, [r0, #1]
c0de1c1e:	fab0 f080 	clz	r0, r0
c0de1c22:	0940      	lsrs	r0, r0, #5
c0de1c24:	7628      	strb	r0, [r5, #24]
c0de1c26:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1c2a:	f000 f86b 	bl	c0de1d04 <OUTLINED_FUNCTION_0>
c0de1c2e:	3001      	adds	r0, #1
c0de1c30:	f10d 010f 	add.w	r1, sp, #15
c0de1c34:	2201      	movs	r2, #1
c0de1c36:	f005 fdc1 	bl	c0de77bc <nvm_write>
c0de1c3a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1c3c:	480c      	ldr	r0, [pc, #48]	@ (c0de1c70 <controls_callback+0x9c>)
c0de1c3e:	490d      	ldr	r1, [pc, #52]	@ (c0de1c74 <controls_callback+0xa0>)
c0de1c40:	4478      	add	r0, pc
c0de1c42:	4479      	add	r1, pc
c0de1c44:	e9cd 1000 	strd	r1, r0, [sp]
c0de1c48:	480b      	ldr	r0, [pc, #44]	@ (c0de1c78 <controls_callback+0xa4>)
c0de1c4a:	490c      	ldr	r1, [pc, #48]	@ (c0de1c7c <controls_callback+0xa8>)
c0de1c4c:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1c80 <controls_callback+0xac>)
c0de1c4e:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1c84 <controls_callback+0xb0>)
c0de1c50:	4478      	add	r0, pc
c0de1c52:	4479      	add	r1, pc
c0de1c54:	447a      	add	r2, pc
c0de1c56:	447b      	add	r3, pc
c0de1c58:	f003 fd76 	bl	c0de5748 <nbgl_useCaseChoice>
c0de1c5c:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1c5e:	bf00      	nop
c0de1c60:	000003f8 	.word	0x000003f8
c0de1c64:	00007812 	.word	0x00007812
c0de1c68:	000077f6 	.word	0x000077f6
c0de1c6c:	000077e6 	.word	0x000077e6
c0de1c70:	00000045 	.word	0x00000045
c0de1c74:	000065b8 	.word	0x000065b8
c0de1c78:	000063c5 	.word	0x000063c5
c0de1c7c:	000063f0 	.word	0x000063f0
c0de1c80:	0000648e 	.word	0x0000648e
c0de1c84:	00006674 	.word	0x00006674

c0de1c88 <review_warning_choice>:
c0de1c88:	b5b0      	push	{r4, r5, r7, lr}
c0de1c8a:	b086      	sub	sp, #24
c0de1c8c:	b1a8      	cbz	r0, c0de1cba <review_warning_choice+0x32>
c0de1c8e:	4c17      	ldr	r4, [pc, #92]	@ (c0de1cec <review_warning_choice+0x64>)
c0de1c90:	4815      	ldr	r0, [pc, #84]	@ (c0de1ce8 <review_warning_choice+0x60>)
c0de1c92:	447c      	add	r4, pc
c0de1c94:	eb09 0500 	add.w	r5, r9, r0
c0de1c98:	f000 f834 	bl	c0de1d04 <OUTLINED_FUNCTION_0>
c0de1c9c:	7840      	ldrb	r0, [r0, #1]
c0de1c9e:	fab0 f080 	clz	r0, r0
c0de1ca2:	0940      	lsrs	r0, r0, #5
c0de1ca4:	7628      	strb	r0, [r5, #24]
c0de1ca6:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1caa:	f000 f82b 	bl	c0de1d04 <OUTLINED_FUNCTION_0>
c0de1cae:	3001      	adds	r0, #1
c0de1cb0:	f10d 0117 	add.w	r1, sp, #23
c0de1cb4:	2201      	movs	r2, #1
c0de1cb6:	f005 fd81 	bl	c0de77bc <nvm_write>
c0de1cba:	480b      	ldr	r0, [pc, #44]	@ (c0de1ce8 <review_warning_choice+0x60>)
c0de1cbc:	2100      	movs	r1, #0
c0de1cbe:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1cc2:	480b      	ldr	r0, [pc, #44]	@ (c0de1cf0 <review_warning_choice+0x68>)
c0de1cc4:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1cf4 <review_warning_choice+0x6c>)
c0de1cc6:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1cf8 <review_warning_choice+0x70>)
c0de1cc8:	4478      	add	r0, pc
c0de1cca:	447a      	add	r2, pc
c0de1ccc:	447c      	add	r4, pc
c0de1cce:	e9cd 4200 	strd	r4, r2, [sp]
c0de1cd2:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1cd6:	2200      	movs	r2, #0
c0de1cd8:	4808      	ldr	r0, [pc, #32]	@ (c0de1cfc <review_warning_choice+0x74>)
c0de1cda:	4909      	ldr	r1, [pc, #36]	@ (c0de1d00 <review_warning_choice+0x78>)
c0de1cdc:	4478      	add	r0, pc
c0de1cde:	4479      	add	r1, pc
c0de1ce0:	f003 f89c 	bl	c0de4e1c <nbgl_useCaseHomeAndSettings>
c0de1ce4:	b006      	add	sp, #24
c0de1ce6:	bdb0      	pop	{r4, r5, r7, pc}
c0de1ce8:	000003f8 	.word	0x000003f8
c0de1cec:	0000776a 	.word	0x0000776a
c0de1cf0:	fffffe71 	.word	0xfffffe71
c0de1cf4:	000070de 	.word	0x000070de
c0de1cf8:	000070d0 	.word	0x000070d0
c0de1cfc:	00006696 	.word	0x00006696
c0de1d00:	000061bd 	.word	0x000061bd

c0de1d04 <OUTLINED_FUNCTION_0>:
c0de1d04:	4620      	mov	r0, r4
c0de1d06:	f005 bd29 	b.w	c0de775c <pic>
	...

c0de1d0c <ui_display_address>:
c0de1d0c:	b570      	push	{r4, r5, r6, lr}
c0de1d0e:	b088      	sub	sp, #32
c0de1d10:	4e22      	ldr	r6, [pc, #136]	@ (c0de1d9c <ui_display_address+0x90>)
c0de1d12:	eb09 0106 	add.w	r1, r9, r6
c0de1d16:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1d1a:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1d1e:	4308      	orrs	r0, r1
c0de1d20:	d12a      	bne.n	c0de1d78 <ui_display_address+0x6c>
c0de1d22:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1da0 <ui_display_address+0x94>)
c0de1d24:	212b      	movs	r1, #43	@ 0x2b
c0de1d26:	eb09 0005 	add.w	r0, r9, r5
c0de1d2a:	f006 f823 	bl	c0de7d74 <__aeabi_memclr>
c0de1d2e:	ac03      	add	r4, sp, #12
c0de1d30:	2114      	movs	r1, #20
c0de1d32:	4620      	mov	r0, r4
c0de1d34:	f006 f81e 	bl	c0de7d74 <__aeabi_memclr>
c0de1d38:	eb09 0006 	add.w	r0, r9, r6
c0de1d3c:	4621      	mov	r1, r4
c0de1d3e:	2214      	movs	r2, #20
c0de1d40:	3008      	adds	r0, #8
c0de1d42:	f7fe f971 	bl	c0de0028 <address_from_pubkey>
c0de1d46:	b308      	cbz	r0, c0de1d8c <ui_display_address+0x80>
c0de1d48:	eb09 0205 	add.w	r2, r9, r5
c0de1d4c:	a803      	add	r0, sp, #12
c0de1d4e:	2114      	movs	r1, #20
c0de1d50:	232b      	movs	r3, #43	@ 0x2b
c0de1d52:	f004 ffeb 	bl	c0de6d2c <format_hex>
c0de1d56:	3001      	adds	r0, #1
c0de1d58:	d018      	beq.n	c0de1d8c <ui_display_address+0x80>
c0de1d5a:	4812      	ldr	r0, [pc, #72]	@ (c0de1da4 <ui_display_address+0x98>)
c0de1d5c:	2400      	movs	r4, #0
c0de1d5e:	2100      	movs	r1, #0
c0de1d60:	4478      	add	r0, pc
c0de1d62:	e9cd 4000 	strd	r4, r0, [sp]
c0de1d66:	eb09 0005 	add.w	r0, r9, r5
c0de1d6a:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1da8 <ui_display_address+0x9c>)
c0de1d6c:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1dac <ui_display_address+0xa0>)
c0de1d6e:	447a      	add	r2, pc
c0de1d70:	447b      	add	r3, pc
c0de1d72:	f003 f9cd 	bl	c0de5110 <nbgl_useCaseAddressReview>
c0de1d76:	e00e      	b.n	c0de1d96 <ui_display_address+0x8a>
c0de1d78:	2000      	movs	r0, #0
c0de1d7a:	f809 0006 	strb.w	r0, [r9, r6]
c0de1d7e:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1d82:	b008      	add	sp, #32
c0de1d84:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1d88:	f000 b812 	b.w	c0de1db0 <io_send_sw>
c0de1d8c:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1d90:	f000 f80e 	bl	c0de1db0 <io_send_sw>
c0de1d94:	4604      	mov	r4, r0
c0de1d96:	4620      	mov	r0, r4
c0de1d98:	b008      	add	sp, #32
c0de1d9a:	bd70      	pop	{r4, r5, r6, pc}
c0de1d9c:	00000000 	.word	0x00000000
c0de1da0:	00000414 	.word	0x00000414
c0de1da4:	0000005d 	.word	0x0000005d
c0de1da8:	000062ca 	.word	0x000062ca
c0de1dac:	000065ca 	.word	0x000065ca

c0de1db0 <io_send_sw>:
c0de1db0:	b580      	push	{r7, lr}
c0de1db2:	4602      	mov	r2, r0
c0de1db4:	2000      	movs	r0, #0
c0de1db6:	2100      	movs	r1, #0
c0de1db8:	f005 f818 	bl	c0de6dec <io_send_response_buffers>
c0de1dbc:	bd80      	pop	{r7, pc}
	...

c0de1dc0 <review_choice>:
c0de1dc0:	b510      	push	{r4, lr}
c0de1dc2:	4604      	mov	r4, r0
c0de1dc4:	f7ff fe5a 	bl	c0de1a7c <validate_pubkey>
c0de1dc8:	2007      	movs	r0, #7
c0de1dca:	2c00      	cmp	r4, #0
c0de1dcc:	bf18      	it	ne
c0de1dce:	2006      	movne	r0, #6
c0de1dd0:	4902      	ldr	r1, [pc, #8]	@ (c0de1ddc <review_choice+0x1c>)
c0de1dd2:	4479      	add	r1, pc
c0de1dd4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1dd8:	f003 bb8c 	b.w	c0de54f4 <nbgl_useCaseReviewStatus>
c0de1ddc:	fffffd6f 	.word	0xfffffd6f

c0de1de0 <ui_display_transaction_bs_choice>:
c0de1de0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1de2:	b085      	sub	sp, #20
c0de1de4:	4f2d      	ldr	r7, [pc, #180]	@ (c0de1e9c <ui_display_transaction_bs_choice+0xbc>)
c0de1de6:	4604      	mov	r4, r0
c0de1de8:	eb09 0007 	add.w	r0, r9, r7
c0de1dec:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1df0:	2801      	cmp	r0, #1
c0de1df2:	d137      	bne.n	c0de1e64 <ui_display_transaction_bs_choice+0x84>
c0de1df4:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1df8:	2801      	cmp	r0, #1
c0de1dfa:	d133      	bne.n	c0de1e64 <ui_display_transaction_bs_choice+0x84>
c0de1dfc:	4e28      	ldr	r6, [pc, #160]	@ (c0de1ea0 <ui_display_transaction_bs_choice+0xc0>)
c0de1dfe:	2140      	movs	r1, #64	@ 0x40
c0de1e00:	eb09 0006 	add.w	r0, r9, r6
c0de1e04:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1e08:	4628      	mov	r0, r5
c0de1e0a:	f005 ffb3 	bl	c0de7d74 <__aeabi_memclr>
c0de1e0e:	eb09 0007 	add.w	r0, r9, r7
c0de1e12:	2114      	movs	r1, #20
c0de1e14:	462a      	mov	r2, r5
c0de1e16:	2340      	movs	r3, #64	@ 0x40
c0de1e18:	302d      	adds	r0, #45	@ 0x2d
c0de1e1a:	f004 ff87 	bl	c0de6d2c <format_hex>
c0de1e1e:	3001      	adds	r0, #1
c0de1e20:	d026      	beq.n	c0de1e70 <ui_display_transaction_bs_choice+0x90>
c0de1e22:	4920      	ldr	r1, [pc, #128]	@ (c0de1ea4 <ui_display_transaction_bs_choice+0xc4>)
c0de1e24:	eb09 0006 	add.w	r0, r9, r6
c0de1e28:	4602      	mov	r2, r0
c0de1e2a:	4479      	add	r1, pc
c0de1e2c:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1e30:	2101      	movs	r1, #1
c0de1e32:	72c1      	strb	r1, [r0, #11]
c0de1e34:	7201      	strb	r1, [r0, #8]
c0de1e36:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1e3a:	f849 2006 	str.w	r2, [r9, r6]
c0de1e3e:	6181      	str	r1, [r0, #24]
c0de1e40:	2100      	movs	r1, #0
c0de1e42:	4819      	ldr	r0, [pc, #100]	@ (c0de1ea8 <ui_display_transaction_bs_choice+0xc8>)
c0de1e44:	4478      	add	r0, pc
c0de1e46:	b1d4      	cbz	r4, c0de1e7e <ui_display_transaction_bs_choice+0x9e>
c0de1e48:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1e4c:	e9cd 1100 	strd	r1, r1, [sp]
c0de1e50:	eb09 0106 	add.w	r1, r9, r6
c0de1e54:	2000      	movs	r0, #0
c0de1e56:	4a15      	ldr	r2, [pc, #84]	@ (c0de1eac <ui_display_transaction_bs_choice+0xcc>)
c0de1e58:	4b15      	ldr	r3, [pc, #84]	@ (c0de1eb0 <ui_display_transaction_bs_choice+0xd0>)
c0de1e5a:	447a      	add	r2, pc
c0de1e5c:	447b      	add	r3, pc
c0de1e5e:	f003 f945 	bl	c0de50ec <nbgl_useCaseReviewBlindSigning>
c0de1e62:	e018      	b.n	c0de1e96 <ui_display_transaction_bs_choice+0xb6>
c0de1e64:	2000      	movs	r0, #0
c0de1e66:	f809 0007 	strb.w	r0, [r9, r7]
c0de1e6a:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1e6e:	e001      	b.n	c0de1e74 <ui_display_transaction_bs_choice+0x94>
c0de1e70:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1e74:	b005      	add	sp, #20
c0de1e76:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1e7a:	f000 b81f 	b.w	c0de1ebc <io_send_sw>
c0de1e7e:	e9cd 1100 	strd	r1, r1, [sp]
c0de1e82:	9002      	str	r0, [sp, #8]
c0de1e84:	eb09 0106 	add.w	r1, r9, r6
c0de1e88:	2000      	movs	r0, #0
c0de1e8a:	4a0a      	ldr	r2, [pc, #40]	@ (c0de1eb4 <ui_display_transaction_bs_choice+0xd4>)
c0de1e8c:	4b0a      	ldr	r3, [pc, #40]	@ (c0de1eb8 <ui_display_transaction_bs_choice+0xd8>)
c0de1e8e:	447a      	add	r2, pc
c0de1e90:	447b      	add	r3, pc
c0de1e92:	f003 f86b 	bl	c0de4f6c <nbgl_useCaseReview>
c0de1e96:	2000      	movs	r0, #0
c0de1e98:	b005      	add	sp, #20
c0de1e9a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1e9c:	00000000 	.word	0x00000000
c0de1ea0:	00000440 	.word	0x00000440
c0de1ea4:	000064b6 	.word	0x000064b6
c0de1ea8:	00000085 	.word	0x00000085
c0de1eac:	000061de 	.word	0x000061de
c0de1eb0:	000064f1 	.word	0x000064f1
c0de1eb4:	000061aa 	.word	0x000061aa
c0de1eb8:	000064bd 	.word	0x000064bd

c0de1ebc <io_send_sw>:
c0de1ebc:	b580      	push	{r7, lr}
c0de1ebe:	4602      	mov	r2, r0
c0de1ec0:	2000      	movs	r0, #0
c0de1ec2:	2100      	movs	r1, #0
c0de1ec4:	f004 ff92 	bl	c0de6dec <io_send_response_buffers>
c0de1ec8:	bd80      	pop	{r7, pc}
	...

c0de1ecc <review_choice>:
c0de1ecc:	b510      	push	{r4, lr}
c0de1ece:	4604      	mov	r4, r0
c0de1ed0:	f7ff fde2 	bl	c0de1a98 <validate_transaction>
c0de1ed4:	4903      	ldr	r1, [pc, #12]	@ (c0de1ee4 <review_choice+0x18>)
c0de1ed6:	f084 0001 	eor.w	r0, r4, #1
c0de1eda:	4479      	add	r1, pc
c0de1edc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1ee0:	f003 bb08 	b.w	c0de54f4 <nbgl_useCaseReviewStatus>
c0de1ee4:	fffffc67 	.word	0xfffffc67

c0de1ee8 <ui_display_blind_signed_transaction>:
c0de1ee8:	2001      	movs	r0, #1
c0de1eea:	f7ff bf79 	b.w	c0de1de0 <ui_display_transaction_bs_choice>

c0de1eee <ui_display_transaction>:
c0de1eee:	2000      	movs	r0, #0
c0de1ef0:	f7ff bf76 	b.w	c0de1de0 <ui_display_transaction_bs_choice>

c0de1ef4 <zkn_prv_hash>:
c0de1ef4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1ef8:	460c      	mov	r4, r1
c0de1efa:	e9cd 0200 	strd	r0, r2, [sp]
c0de1efe:	4668      	mov	r0, sp
c0de1f00:	2101      	movs	r1, #1
c0de1f02:	2601      	movs	r6, #1
c0de1f04:	4622      	mov	r2, r4
c0de1f06:	f005 f9de 	bl	c0de72c6 <cx_blake2b_512_hash_iovec>
c0de1f0a:	4605      	mov	r5, r0
c0de1f0c:	bb18      	cbnz	r0, c0de1f56 <zkn_prv_hash+0x62>
c0de1f0e:	7820      	ldrb	r0, [r4, #0]
c0de1f10:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1f14:	7020      	strb	r0, [r4, #0]
c0de1f16:	7fe0      	ldrb	r0, [r4, #31]
c0de1f18:	f366 109f 	bfi	r0, r6, #6, #26
c0de1f1c:	77e0      	strb	r0, [r4, #31]
c0de1f1e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1f22:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1f5c <zkn_prv_hash+0x68>)
c0de1f24:	447e      	add	r6, pc
c0de1f26:	47b0      	blx	r6
c0de1f28:	4680      	mov	r8, r0
c0de1f2a:	468a      	mov	sl, r1
c0de1f2c:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1f30:	47b0      	blx	r6
c0de1f32:	4683      	mov	fp, r0
c0de1f34:	460f      	mov	r7, r1
c0de1f36:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1f3a:	47b0      	blx	r6
c0de1f3c:	e9c4 0100 	strd	r0, r1, [r4]
c0de1f40:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1f44:	47b0      	blx	r6
c0de1f46:	f104 0208 	add.w	r2, r4, #8
c0de1f4a:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1f4e:	f104 0014 	add.w	r0, r4, #20
c0de1f52:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1f56:	4628      	mov	r0, r5
c0de1f58:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1f5c:	00000325 	.word	0x00000325

c0de1f60 <zkn_prv2pub>:
c0de1f60:	b570      	push	{r4, r5, r6, lr}
c0de1f62:	b092      	sub	sp, #72	@ 0x48
c0de1f64:	4614      	mov	r4, r2
c0de1f66:	6802      	ldr	r2, [r0, #0]
c0de1f68:	ae02      	add	r6, sp, #8
c0de1f6a:	4605      	mov	r5, r0
c0de1f6c:	4608      	mov	r0, r1
c0de1f6e:	4631      	mov	r1, r6
c0de1f70:	f7ff ffc0 	bl	c0de1ef4 <zkn_prv_hash>
c0de1f74:	2000      	movs	r0, #0
c0de1f76:	2100      	movs	r1, #0
c0de1f78:	2820      	cmp	r0, #32
c0de1f7a:	d009      	beq.n	c0de1f90 <zkn_prv2pub+0x30>
c0de1f7c:	5c32      	ldrb	r2, [r6, r0]
c0de1f7e:	0149      	lsls	r1, r1, #5
c0de1f80:	0613      	lsls	r3, r2, #24
c0de1f82:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1f86:	5431      	strb	r1, [r6, r0]
c0de1f88:	f002 0107 	and.w	r1, r2, #7
c0de1f8c:	3001      	adds	r0, #1
c0de1f8e:	e7f3      	b.n	c0de1f78 <zkn_prv2pub+0x18>
c0de1f90:	4629      	mov	r1, r5
c0de1f92:	4628      	mov	r0, r5
c0de1f94:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1f98:	9400      	str	r4, [sp, #0]
c0de1f9a:	aa02      	add	r2, sp, #8
c0de1f9c:	f001 f944 	bl	c0de3228 <tEdwards_scalarMul>
c0de1fa0:	b918      	cbnz	r0, c0de1faa <zkn_prv2pub+0x4a>
c0de1fa2:	4628      	mov	r0, r5
c0de1fa4:	4621      	mov	r1, r4
c0de1fa6:	f001 f87a 	bl	c0de309e <tEdwards_normalize>
c0de1faa:	b012      	add	sp, #72	@ 0x48
c0de1fac:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1fb0 <EddsaPoseidon_Sign_final>:
c0de1fb0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1fb4:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1fb8:	4605      	mov	r5, r0
c0de1fba:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1fbc:	2820      	cmp	r0, #32
c0de1fbe:	d118      	bne.n	c0de1ff2 <EddsaPoseidon_Sign_final+0x42>
c0de1fc0:	460e      	mov	r6, r1
c0de1fc2:	a982      	add	r1, sp, #520	@ 0x208
c0de1fc4:	4628      	mov	r0, r5
c0de1fc6:	461f      	mov	r7, r3
c0de1fc8:	4692      	mov	sl, r2
c0de1fca:	f000 fd37 	bl	c0de2a3c <tEdwards_alloc>
c0de1fce:	b988      	cbnz	r0, c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de1fd0:	682a      	ldr	r2, [r5, #0]
c0de1fd2:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1fd4:	4630      	mov	r0, r6
c0de1fd6:	4621      	mov	r1, r4
c0de1fd8:	f7ff ff8c 	bl	c0de1ef4 <zkn_prv_hash>
c0de1fdc:	b950      	cbnz	r0, c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de1fde:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1fe2:	2000      	movs	r0, #0
c0de1fe4:	a95a      	add	r1, sp, #360	@ 0x168
c0de1fe6:	2820      	cmp	r0, #32
c0de1fe8:	d008      	beq.n	c0de1ffc <EddsaPoseidon_Sign_final+0x4c>
c0de1fea:	5c22      	ldrb	r2, [r4, r0]
c0de1fec:	540a      	strb	r2, [r1, r0]
c0de1fee:	3001      	adds	r0, #1
c0de1ff0:	e7f9      	b.n	c0de1fe6 <EddsaPoseidon_Sign_final+0x36>
c0de1ff2:	4894      	ldr	r0, [pc, #592]	@ (c0de2244 <EddsaPoseidon_Sign_final+0x294>)
c0de1ff4:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1ff8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1ffc:	a812      	add	r0, sp, #72	@ 0x48
c0de1ffe:	2109      	movs	r1, #9
c0de2000:	2240      	movs	r2, #64	@ 0x40
c0de2002:	f005 f981 	bl	c0de7308 <cx_hash_init_ex>
c0de2006:	2800      	cmp	r0, #0
c0de2008:	d1f4      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de200a:	f104 0120 	add.w	r1, r4, #32
c0de200e:	a812      	add	r0, sp, #72	@ 0x48
c0de2010:	2220      	movs	r2, #32
c0de2012:	f005 f97e 	bl	c0de7312 <cx_hash_update>
c0de2016:	2800      	cmp	r0, #0
c0de2018:	d1ec      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de201a:	a812      	add	r0, sp, #72	@ 0x48
c0de201c:	4639      	mov	r1, r7
c0de201e:	2220      	movs	r2, #32
c0de2020:	f005 f977 	bl	c0de7312 <cx_hash_update>
c0de2024:	2800      	cmp	r0, #0
c0de2026:	d1e5      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2028:	a812      	add	r0, sp, #72	@ 0x48
c0de202a:	ac62      	add	r4, sp, #392	@ 0x188
c0de202c:	4621      	mov	r1, r4
c0de202e:	f005 f966 	bl	c0de72fe <cx_hash_final>
c0de2032:	2800      	cmp	r0, #0
c0de2034:	d1de      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2036:	203f      	movs	r0, #63	@ 0x3f
c0de2038:	a972      	add	r1, sp, #456	@ 0x1c8
c0de203a:	1c42      	adds	r2, r0, #1
c0de203c:	d004      	beq.n	c0de2048 <EddsaPoseidon_Sign_final+0x98>
c0de203e:	5c22      	ldrb	r2, [r4, r0]
c0de2040:	3801      	subs	r0, #1
c0de2042:	f801 2b01 	strb.w	r2, [r1], #1
c0de2046:	e7f8      	b.n	c0de203a <EddsaPoseidon_Sign_final+0x8a>
c0de2048:	a889      	add	r0, sp, #548	@ 0x224
c0de204a:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de204c:	2140      	movs	r1, #64	@ 0x40
c0de204e:	2340      	movs	r3, #64	@ 0x40
c0de2050:	f005 fbda 	bl	c0de7808 <cx_bn_alloc_init>
c0de2054:	2800      	cmp	r0, #0
c0de2056:	d1cd      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2058:	a887      	add	r0, sp, #540	@ 0x21c
c0de205a:	2140      	movs	r1, #64	@ 0x40
c0de205c:	f005 fbca 	bl	c0de77f4 <cx_bn_alloc>
c0de2060:	2800      	cmp	r0, #0
c0de2062:	d1c7      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2064:	4978      	ldr	r1, [pc, #480]	@ (c0de2248 <EddsaPoseidon_Sign_final+0x298>)
c0de2066:	f10d 0808 	add.w	r8, sp, #8
c0de206a:	2240      	movs	r2, #64	@ 0x40
c0de206c:	4640      	mov	r0, r8
c0de206e:	4479      	add	r1, pc
c0de2070:	f005 fe76 	bl	c0de7d60 <__aeabi_memcpy>
c0de2074:	a888      	add	r0, sp, #544	@ 0x220
c0de2076:	2140      	movs	r1, #64	@ 0x40
c0de2078:	4642      	mov	r2, r8
c0de207a:	2340      	movs	r3, #64	@ 0x40
c0de207c:	f005 fbc4 	bl	c0de7808 <cx_bn_alloc_init>
c0de2080:	2800      	cmp	r0, #0
c0de2082:	d1b7      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2084:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de2086:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de208a:	f005 fc51 	bl	c0de7930 <cx_bn_reduce>
c0de208e:	2800      	cmp	r0, #0
c0de2090:	d1b0      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2092:	aa87      	add	r2, sp, #540	@ 0x21c
c0de2094:	f105 010c 	add.w	r1, r5, #12
c0de2098:	ab82      	add	r3, sp, #520	@ 0x208
c0de209a:	4628      	mov	r0, r5
c0de209c:	f001 f85e 	bl	c0de315c <tEdwards_scalarMul_bn>
c0de20a0:	2800      	cmp	r0, #0
c0de20a2:	d1a7      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de20a4:	a982      	add	r1, sp, #520	@ 0x208
c0de20a6:	4628      	mov	r0, r5
c0de20a8:	f000 fff9 	bl	c0de309e <tEdwards_normalize>
c0de20ac:	2800      	cmp	r0, #0
c0de20ae:	d1a1      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de20b0:	f10b 0320 	add.w	r3, fp, #32
c0de20b4:	a982      	add	r1, sp, #520	@ 0x208
c0de20b6:	4628      	mov	r0, r5
c0de20b8:	465a      	mov	r2, fp
c0de20ba:	f000 ffca 	bl	c0de3052 <tEdwards_export>
c0de20be:	2800      	cmp	r0, #0
c0de20c0:	d198      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de20c2:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de20c4:	a952      	add	r1, sp, #328	@ 0x148
c0de20c6:	2220      	movs	r2, #32
c0de20c8:	f005 fbde 	bl	c0de7888 <cx_bn_export>
c0de20cc:	2800      	cmp	r0, #0
c0de20ce:	d191      	bne.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de20d0:	a888      	add	r0, sp, #544	@ 0x220
c0de20d2:	f005 fba5 	bl	c0de7820 <cx_bn_destroy>
c0de20d6:	2800      	cmp	r0, #0
c0de20d8:	f47f af8c 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de20dc:	a889      	add	r0, sp, #548	@ 0x224
c0de20de:	f005 fb9f 	bl	c0de7820 <cx_bn_destroy>
c0de20e2:	2800      	cmp	r0, #0
c0de20e4:	f47f af86 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de20e8:	a887      	add	r0, sp, #540	@ 0x21c
c0de20ea:	f005 fb99 	bl	c0de7820 <cx_bn_destroy>
c0de20ee:	2800      	cmp	r0, #0
c0de20f0:	f47f af80 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de20f4:	4628      	mov	r0, r5
c0de20f6:	f000 ff50 	bl	c0de2f9a <tEdwards_Curve_partial_destroy>
c0de20fa:	2800      	cmp	r0, #0
c0de20fc:	f47f af7a 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2100:	f105 0420 	add.w	r4, r5, #32
c0de2104:	a88a      	add	r0, sp, #552	@ 0x228
c0de2106:	f000 f8a5 	bl	c0de2254 <OUTLINED_FUNCTION_0>
c0de210a:	2800      	cmp	r0, #0
c0de210c:	f47f af72 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2110:	201f      	movs	r0, #31
c0de2112:	a962      	add	r1, sp, #392	@ 0x188
c0de2114:	1c42      	adds	r2, r0, #1
c0de2116:	d004      	beq.n	c0de2122 <EddsaPoseidon_Sign_final+0x172>
c0de2118:	5c3a      	ldrb	r2, [r7, r0]
c0de211a:	3801      	subs	r0, #1
c0de211c:	f801 2b01 	strb.w	r2, [r1], #1
c0de2120:	e7f8      	b.n	c0de2114 <EddsaPoseidon_Sign_final+0x164>
c0de2122:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de2124:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de2126:	f005 fb9b 	bl	c0de7860 <cx_bn_copy>
c0de212a:	2800      	cmp	r0, #0
c0de212c:	f47f af62 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2130:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de2132:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de2134:	f005 fb94 	bl	c0de7860 <cx_bn_copy>
c0de2138:	2800      	cmp	r0, #0
c0de213a:	f47f af5b 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de213e:	f8da 1000 	ldr.w	r1, [sl]
c0de2142:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de2144:	f005 fb8c 	bl	c0de7860 <cx_bn_copy>
c0de2148:	2800      	cmp	r0, #0
c0de214a:	f47f af53 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de214e:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de2152:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de2154:	f005 fb84 	bl	c0de7860 <cx_bn_copy>
c0de2158:	2800      	cmp	r0, #0
c0de215a:	f47f af4b 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de215e:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de2160:	a962      	add	r1, sp, #392	@ 0x188
c0de2162:	2220      	movs	r2, #32
c0de2164:	f005 fb70 	bl	c0de7848 <cx_bn_init>
c0de2168:	2800      	cmp	r0, #0
c0de216a:	f47f af43 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de216e:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de2170:	4622      	mov	r2, r4
c0de2172:	4601      	mov	r1, r0
c0de2174:	f005 fc12 	bl	c0de799c <cx_mont_to_montgomery>
c0de2178:	2800      	cmp	r0, #0
c0de217a:	f47f af3b 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de217e:	a982      	add	r1, sp, #520	@ 0x208
c0de2180:	4628      	mov	r0, r5
c0de2182:	f000 fc70 	bl	c0de2a66 <tEdwards_destroy>
c0de2186:	2800      	cmp	r0, #0
c0de2188:	f47f af34 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de218c:	a885      	add	r0, sp, #532	@ 0x214
c0de218e:	2120      	movs	r1, #32
c0de2190:	f005 fb30 	bl	c0de77f4 <cx_bn_alloc>
c0de2194:	2800      	cmp	r0, #0
c0de2196:	f47f af2d 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de219a:	a88a      	add	r0, sp, #552	@ 0x228
c0de219c:	aa85      	add	r2, sp, #532	@ 0x214
c0de219e:	2100      	movs	r1, #0
c0de21a0:	2301      	movs	r3, #1
c0de21a2:	f001 f9cd 	bl	c0de3540 <Poseidon>
c0de21a6:	2800      	cmp	r0, #0
c0de21a8:	f47f af24 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de21ac:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de21ae:	4622      	mov	r2, r4
c0de21b0:	4601      	mov	r1, r0
c0de21b2:	f005 fbff 	bl	c0de79b4 <cx_mont_from_montgomery>
c0de21b6:	2800      	cmp	r0, #0
c0de21b8:	f47f af1c 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de21bc:	a886      	add	r0, sp, #536	@ 0x218
c0de21be:	aa5a      	add	r2, sp, #360	@ 0x168
c0de21c0:	2120      	movs	r1, #32
c0de21c2:	2320      	movs	r3, #32
c0de21c4:	f005 fb20 	bl	c0de7808 <cx_bn_alloc_init>
c0de21c8:	2800      	cmp	r0, #0
c0de21ca:	f47f af13 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de21ce:	a801      	add	r0, sp, #4
c0de21d0:	2120      	movs	r1, #32
c0de21d2:	f005 fb0f 	bl	c0de77f4 <cx_bn_alloc>
c0de21d6:	2800      	cmp	r0, #0
c0de21d8:	f47f af0c 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de21dc:	f108 0220 	add.w	r2, r8, #32
c0de21e0:	a888      	add	r0, sp, #544	@ 0x220
c0de21e2:	2120      	movs	r1, #32
c0de21e4:	2320      	movs	r3, #32
c0de21e6:	f005 fb0f 	bl	c0de7808 <cx_bn_alloc_init>
c0de21ea:	2800      	cmp	r0, #0
c0de21ec:	f47f af02 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de21f0:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de21f2:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de21f6:	9801      	ldr	r0, [sp, #4]
c0de21f8:	f005 fb8e 	bl	c0de7918 <cx_bn_mod_mul>
c0de21fc:	2800      	cmp	r0, #0
c0de21fe:	f47f aef9 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2202:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2204:	a952      	add	r1, sp, #328	@ 0x148
c0de2206:	2220      	movs	r2, #32
c0de2208:	f005 fb1e 	bl	c0de7848 <cx_bn_init>
c0de220c:	2800      	cmp	r0, #0
c0de220e:	f47f aef1 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2212:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de2214:	9a01      	ldr	r2, [sp, #4]
c0de2216:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de221a:	f005 fb65 	bl	c0de78e8 <cx_bn_mod_add>
c0de221e:	2800      	cmp	r0, #0
c0de2220:	f47f aee8 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2224:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de2226:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de222a:	f005 fb81 	bl	c0de7930 <cx_bn_reduce>
c0de222e:	2800      	cmp	r0, #0
c0de2230:	f47f aee0 	bne.w	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2234:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2236:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de223a:	2220      	movs	r2, #32
c0de223c:	f005 fb24 	bl	c0de7888 <cx_bn_export>
c0de2240:	e6d8      	b.n	c0de1ff4 <EddsaPoseidon_Sign_final+0x44>
c0de2242:	bf00      	nop
c0de2244:	5a4b4e03 	.word	0x5a4b4e03
c0de2248:	00006d92 	.word	0x00006d92

c0de224c <rev64>:
c0de224c:	ba0a      	rev	r2, r1
c0de224e:	ba01      	rev	r1, r0
c0de2250:	4610      	mov	r0, r2
c0de2252:	4770      	bx	lr

c0de2254 <OUTLINED_FUNCTION_0>:
c0de2254:	2105      	movs	r1, #5
c0de2256:	2205      	movs	r2, #5
c0de2258:	4623      	mov	r3, r4
c0de225a:	f001 b90b 	b.w	c0de3474 <Poseidon_alloc_init>

c0de225e <zkn_frost_interpolate>:
c0de225e:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de2262:	b085      	sub	sp, #20
c0de2264:	460e      	mov	r6, r1
c0de2266:	4607      	mov	r7, r0
c0de2268:	a803      	add	r0, sp, #12
c0de226a:	2120      	movs	r1, #32
c0de226c:	f000 fbda 	bl	c0de2a24 <OUTLINED_FUNCTION_4>
c0de2270:	b988      	cbnz	r0, c0de2296 <zkn_frost_interpolate+0x38>
c0de2272:	a802      	add	r0, sp, #8
c0de2274:	f000 fbcf 	bl	c0de2a16 <OUTLINED_FUNCTION_2>
c0de2278:	b968      	cbnz	r0, c0de2296 <zkn_frost_interpolate+0x38>
c0de227a:	a801      	add	r0, sp, #4
c0de227c:	f000 fbcb 	bl	c0de2a16 <OUTLINED_FUNCTION_2>
c0de2280:	b948      	cbnz	r0, c0de2296 <zkn_frost_interpolate+0x38>
c0de2282:	9803      	ldr	r0, [sp, #12]
c0de2284:	2101      	movs	r1, #1
c0de2286:	f005 faf5 	bl	c0de7874 <cx_bn_set_u32>
c0de228a:	b920      	cbnz	r0, c0de2296 <zkn_frost_interpolate+0x38>
c0de228c:	9802      	ldr	r0, [sp, #8]
c0de228e:	2101      	movs	r1, #1
c0de2290:	f005 faf0 	bl	c0de7874 <cx_bn_set_u32>
c0de2294:	b110      	cbz	r0, c0de229c <zkn_frost_interpolate+0x3e>
c0de2296:	b005      	add	sp, #20
c0de2298:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de229c:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de22a0:	f10d 0a10 	add.w	sl, sp, #16
c0de22a4:	b31e      	cbz	r6, c0de22ee <zkn_frost_interpolate+0x90>
c0de22a6:	6838      	ldr	r0, [r7, #0]
c0de22a8:	4629      	mov	r1, r5
c0de22aa:	4652      	mov	r2, sl
c0de22ac:	f005 faf8 	bl	c0de78a0 <cx_bn_cmp>
c0de22b0:	2800      	cmp	r0, #0
c0de22b2:	d1f0      	bne.n	c0de2296 <zkn_frost_interpolate+0x38>
c0de22b4:	9804      	ldr	r0, [sp, #16]
c0de22b6:	b1b8      	cbz	r0, c0de22e8 <zkn_frost_interpolate+0x8a>
c0de22b8:	9802      	ldr	r0, [sp, #8]
c0de22ba:	683a      	ldr	r2, [r7, #0]
c0de22bc:	4623      	mov	r3, r4
c0de22be:	4601      	mov	r1, r0
c0de22c0:	f005 fb2a 	bl	c0de7918 <cx_bn_mod_mul>
c0de22c4:	2800      	cmp	r0, #0
c0de22c6:	d1e6      	bne.n	c0de2296 <zkn_frost_interpolate+0x38>
c0de22c8:	6839      	ldr	r1, [r7, #0]
c0de22ca:	9801      	ldr	r0, [sp, #4]
c0de22cc:	462a      	mov	r2, r5
c0de22ce:	4623      	mov	r3, r4
c0de22d0:	f005 fb16 	bl	c0de7900 <cx_bn_mod_sub>
c0de22d4:	2800      	cmp	r0, #0
c0de22d6:	d1de      	bne.n	c0de2296 <zkn_frost_interpolate+0x38>
c0de22d8:	9803      	ldr	r0, [sp, #12]
c0de22da:	9a01      	ldr	r2, [sp, #4]
c0de22dc:	4623      	mov	r3, r4
c0de22de:	4601      	mov	r1, r0
c0de22e0:	f005 fb1a 	bl	c0de7918 <cx_bn_mod_mul>
c0de22e4:	2800      	cmp	r0, #0
c0de22e6:	d1d6      	bne.n	c0de2296 <zkn_frost_interpolate+0x38>
c0de22e8:	3704      	adds	r7, #4
c0de22ea:	3e01      	subs	r6, #1
c0de22ec:	e7da      	b.n	c0de22a4 <zkn_frost_interpolate+0x46>
c0de22ee:	9903      	ldr	r1, [sp, #12]
c0de22f0:	4640      	mov	r0, r8
c0de22f2:	4622      	mov	r2, r4
c0de22f4:	f005 fb28 	bl	c0de7948 <cx_bn_mod_invert_nprime>
c0de22f8:	2800      	cmp	r0, #0
c0de22fa:	d1cc      	bne.n	c0de2296 <zkn_frost_interpolate+0x38>
c0de22fc:	9a02      	ldr	r2, [sp, #8]
c0de22fe:	4640      	mov	r0, r8
c0de2300:	4641      	mov	r1, r8
c0de2302:	4623      	mov	r3, r4
c0de2304:	f005 fb08 	bl	c0de7918 <cx_bn_mod_mul>
c0de2308:	2800      	cmp	r0, #0
c0de230a:	d1c4      	bne.n	c0de2296 <zkn_frost_interpolate+0x38>
c0de230c:	a803      	add	r0, sp, #12
c0de230e:	f005 fa87 	bl	c0de7820 <cx_bn_destroy>
c0de2312:	2800      	cmp	r0, #0
c0de2314:	d1bf      	bne.n	c0de2296 <zkn_frost_interpolate+0x38>
c0de2316:	a802      	add	r0, sp, #8
c0de2318:	f005 fa82 	bl	c0de7820 <cx_bn_destroy>
c0de231c:	e7bb      	b.n	c0de2296 <zkn_frost_interpolate+0x38>

c0de231e <zkn_frost_interpolate_secrets>:
c0de231e:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de2322:	460f      	mov	r7, r1
c0de2324:	4606      	mov	r6, r0
c0de2326:	a802      	add	r0, sp, #8
c0de2328:	2120      	movs	r1, #32
c0de232a:	461c      	mov	r4, r3
c0de232c:	4692      	mov	sl, r2
c0de232e:	f005 fa61 	bl	c0de77f4 <cx_bn_alloc>
c0de2332:	b108      	cbz	r0, c0de2338 <zkn_frost_interpolate_secrets+0x1a>
c0de2334:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de2338:	a801      	add	r0, sp, #4
c0de233a:	f000 fb6c 	bl	c0de2a16 <OUTLINED_FUNCTION_2>
c0de233e:	2800      	cmp	r0, #0
c0de2340:	d1f8      	bne.n	c0de2334 <zkn_frost_interpolate_secrets+0x16>
c0de2342:	9802      	ldr	r0, [sp, #8]
c0de2344:	2100      	movs	r1, #0
c0de2346:	f005 fa95 	bl	c0de7874 <cx_bn_set_u32>
c0de234a:	2800      	cmp	r0, #0
c0de234c:	d1f2      	bne.n	c0de2334 <zkn_frost_interpolate_secrets+0x16>
c0de234e:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de2352:	2500      	movs	r5, #0
c0de2354:	42ac      	cmp	r4, r5
c0de2356:	d01d      	beq.n	c0de2394 <zkn_frost_interpolate_secrets+0x76>
c0de2358:	9801      	ldr	r0, [sp, #4]
c0de235a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de235e:	68b3      	ldr	r3, [r6, #8]
c0de2360:	4621      	mov	r1, r4
c0de2362:	9000      	str	r0, [sp, #0]
c0de2364:	4638      	mov	r0, r7
c0de2366:	f7ff ff7a 	bl	c0de225e <zkn_frost_interpolate>
c0de236a:	2800      	cmp	r0, #0
c0de236c:	d1e2      	bne.n	c0de2334 <zkn_frost_interpolate_secrets+0x16>
c0de236e:	9801      	ldr	r0, [sp, #4]
c0de2370:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de2374:	68b3      	ldr	r3, [r6, #8]
c0de2376:	4601      	mov	r1, r0
c0de2378:	f005 face 	bl	c0de7918 <cx_bn_mod_mul>
c0de237c:	2800      	cmp	r0, #0
c0de237e:	d1d9      	bne.n	c0de2334 <zkn_frost_interpolate_secrets+0x16>
c0de2380:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de2384:	68b3      	ldr	r3, [r6, #8]
c0de2386:	4601      	mov	r1, r0
c0de2388:	f005 faae 	bl	c0de78e8 <cx_bn_mod_add>
c0de238c:	3501      	adds	r5, #1
c0de238e:	2800      	cmp	r0, #0
c0de2390:	d0e0      	beq.n	c0de2354 <zkn_frost_interpolate_secrets+0x36>
c0de2392:	e7cf      	b.n	c0de2334 <zkn_frost_interpolate_secrets+0x16>
c0de2394:	68b2      	ldr	r2, [r6, #8]
c0de2396:	9902      	ldr	r1, [sp, #8]
c0de2398:	4640      	mov	r0, r8
c0de239a:	f005 fac9 	bl	c0de7930 <cx_bn_reduce>
c0de239e:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de23a2 <zkn_evalshare>:
c0de23a2:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de23a6:	460e      	mov	r6, r1
c0de23a8:	6801      	ldr	r1, [r0, #0]
c0de23aa:	4607      	mov	r7, r0
c0de23ac:	a801      	add	r0, sp, #4
c0de23ae:	f000 fb39 	bl	c0de2a24 <OUTLINED_FUNCTION_4>
c0de23b2:	b108      	cbz	r0, c0de23b8 <zkn_evalshare+0x16>
c0de23b4:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de23b8:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de23bc:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de23c0:	4640      	mov	r0, r8
c0de23c2:	f005 fa4d 	bl	c0de7860 <cx_bn_copy>
c0de23c6:	2800      	cmp	r0, #0
c0de23c8:	d1f4      	bne.n	c0de23b4 <zkn_evalshare+0x12>
c0de23ca:	3e04      	subs	r6, #4
c0de23cc:	68bb      	ldr	r3, [r7, #8]
c0de23ce:	9801      	ldr	r0, [sp, #4]
c0de23d0:	4641      	mov	r1, r8
c0de23d2:	b17d      	cbz	r5, c0de23f4 <zkn_evalshare+0x52>
c0de23d4:	4622      	mov	r2, r4
c0de23d6:	f005 fa9f 	bl	c0de7918 <cx_bn_mod_mul>
c0de23da:	2800      	cmp	r0, #0
c0de23dc:	d1ea      	bne.n	c0de23b4 <zkn_evalshare+0x12>
c0de23de:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de23e2:	68bb      	ldr	r3, [r7, #8]
c0de23e4:	9901      	ldr	r1, [sp, #4]
c0de23e6:	4640      	mov	r0, r8
c0de23e8:	f005 fa7e 	bl	c0de78e8 <cx_bn_mod_add>
c0de23ec:	3d01      	subs	r5, #1
c0de23ee:	2800      	cmp	r0, #0
c0de23f0:	d0ec      	beq.n	c0de23cc <zkn_evalshare+0x2a>
c0de23f2:	e7df      	b.n	c0de23b4 <zkn_evalshare+0x12>
c0de23f4:	461a      	mov	r2, r3
c0de23f6:	f005 fa9b 	bl	c0de7930 <cx_bn_reduce>
c0de23fa:	2800      	cmp	r0, #0
c0de23fc:	d1da      	bne.n	c0de23b4 <zkn_evalshare+0x12>
c0de23fe:	9901      	ldr	r1, [sp, #4]
c0de2400:	4640      	mov	r0, r8
c0de2402:	f005 fa2d 	bl	c0de7860 <cx_bn_copy>
c0de2406:	2800      	cmp	r0, #0
c0de2408:	d1d4      	bne.n	c0de23b4 <zkn_evalshare+0x12>
c0de240a:	a801      	add	r0, sp, #4
c0de240c:	f005 fa08 	bl	c0de7820 <cx_bn_destroy>
c0de2410:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de2414 <zkn_frost_nonce_generate>:
c0de2414:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2416:	b091      	sub	sp, #68	@ 0x44
c0de2418:	af01      	add	r7, sp, #4
c0de241a:	460e      	mov	r6, r1
c0de241c:	4605      	mov	r5, r0
c0de241e:	2120      	movs	r1, #32
c0de2420:	4614      	mov	r4, r2
c0de2422:	4638      	mov	r0, r7
c0de2424:	f004 ff7a 	bl	c0de731c <cx_rng_no_throw>
c0de2428:	f107 0020 	add.w	r0, r7, #32
c0de242c:	4631      	mov	r1, r6
c0de242e:	2220      	movs	r2, #32
c0de2430:	f005 fc96 	bl	c0de7d60 <__aeabi_memcpy>
c0de2434:	6829      	ldr	r1, [r5, #0]
c0de2436:	4668      	mov	r0, sp
c0de2438:	f005 f9dc 	bl	c0de77f4 <cx_bn_alloc>
c0de243c:	b978      	cbnz	r0, c0de245e <zkn_frost_nonce_generate+0x4a>
c0de243e:	68aa      	ldr	r2, [r5, #8]
c0de2440:	9b00      	ldr	r3, [sp, #0]
c0de2442:	a801      	add	r0, sp, #4
c0de2444:	2140      	movs	r1, #64	@ 0x40
c0de2446:	f001 f9a5 	bl	c0de3794 <Babyfrost_H3>
c0de244a:	b940      	cbnz	r0, c0de245e <zkn_frost_nonce_generate+0x4a>
c0de244c:	682a      	ldr	r2, [r5, #0]
c0de244e:	9800      	ldr	r0, [sp, #0]
c0de2450:	4621      	mov	r1, r4
c0de2452:	f005 fa19 	bl	c0de7888 <cx_bn_export>
c0de2456:	b910      	cbnz	r0, c0de245e <zkn_frost_nonce_generate+0x4a>
c0de2458:	4668      	mov	r0, sp
c0de245a:	f005 f9e1 	bl	c0de7820 <cx_bn_destroy>
c0de245e:	b011      	add	sp, #68	@ 0x44
c0de2460:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de2462 <zkn_frost_commit>:
c0de2462:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2466:	461d      	mov	r5, r3
c0de2468:	4617      	mov	r7, r2
c0de246a:	460e      	mov	r6, r1
c0de246c:	4604      	mov	r4, r0
c0de246e:	f7ff ffd1 	bl	c0de2414 <zkn_frost_nonce_generate>
c0de2472:	b9f8      	cbnz	r0, c0de24b4 <zkn_frost_commit+0x52>
c0de2474:	f107 0a20 	add.w	sl, r7, #32
c0de2478:	4620      	mov	r0, r4
c0de247a:	4631      	mov	r1, r6
c0de247c:	4652      	mov	r2, sl
c0de247e:	f7ff ffc9 	bl	c0de2414 <zkn_frost_nonce_generate>
c0de2482:	b9b8      	cbnz	r0, c0de24b4 <zkn_frost_commit+0x52>
c0de2484:	46a0      	mov	r8, r4
c0de2486:	4620      	mov	r0, r4
c0de2488:	463a      	mov	r2, r7
c0de248a:	f858 3b0c 	ldr.w	r3, [r8], #12
c0de248e:	9500      	str	r5, [sp, #0]
c0de2490:	4641      	mov	r1, r8
c0de2492:	f000 fec9 	bl	c0de3228 <tEdwards_scalarMul>
c0de2496:	b968      	cbnz	r0, c0de24b4 <zkn_frost_commit+0x52>
c0de2498:	4620      	mov	r0, r4
c0de249a:	4629      	mov	r1, r5
c0de249c:	f000 fdff 	bl	c0de309e <tEdwards_normalize>
c0de24a0:	b940      	cbnz	r0, c0de24b4 <zkn_frost_commit+0x52>
c0de24a2:	6823      	ldr	r3, [r4, #0]
c0de24a4:	350c      	adds	r5, #12
c0de24a6:	4620      	mov	r0, r4
c0de24a8:	4641      	mov	r1, r8
c0de24aa:	4652      	mov	r2, sl
c0de24ac:	9500      	str	r5, [sp, #0]
c0de24ae:	f000 febb 	bl	c0de3228 <tEdwards_scalarMul>
c0de24b2:	b108      	cbz	r0, c0de24b8 <zkn_frost_commit+0x56>
c0de24b4:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de24b8:	4620      	mov	r0, r4
c0de24ba:	4629      	mov	r1, r5
c0de24bc:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de24c0:	f000 bded 	b.w	c0de309e <tEdwards_normalize>

c0de24c4 <zkn_encode_group_commitmentHash>:
c0de24c4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de24c8:	b0d6      	sub	sp, #344	@ 0x158
c0de24ca:	4606      	mov	r6, r0
c0de24cc:	a816      	add	r0, sp, #88	@ 0x58
c0de24ce:	461c      	mov	r4, r3
c0de24d0:	4615      	mov	r5, r2
c0de24d2:	460f      	mov	r7, r1
c0de24d4:	f001 f9be 	bl	c0de3854 <zkn_frost_H5_init>
c0de24d8:	b110      	cbz	r0, c0de24e0 <zkn_encode_group_commitmentHash+0x1c>
c0de24da:	b056      	add	sp, #344	@ 0x158
c0de24dc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de24e0:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de24e4:	9401      	str	r4, [sp, #4]
c0de24e6:	a806      	add	r0, sp, #24
c0de24e8:	f04f 0a00 	mov.w	sl, #0
c0de24ec:	f04f 0b02 	mov.w	fp, #2
c0de24f0:	2604      	movs	r6, #4
c0de24f2:	2400      	movs	r4, #0
c0de24f4:	9502      	str	r5, [sp, #8]
c0de24f6:	f1a0 0801 	sub.w	r8, r0, #1
c0de24fa:	42ac      	cmp	r4, r5
c0de24fc:	d058      	beq.n	c0de25b0 <zkn_encode_group_commitmentHash+0xec>
c0de24fe:	9805      	ldr	r0, [sp, #20]
c0de2500:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de2504:	9103      	str	r1, [sp, #12]
c0de2506:	6805      	ldr	r5, [r0, #0]
c0de2508:	9804      	ldr	r0, [sp, #16]
c0de250a:	fb05 000a 	mla	r0, r5, sl, r0
c0de250e:	4629      	mov	r1, r5
c0de2510:	b129      	cbz	r1, c0de251e <zkn_encode_group_commitmentHash+0x5a>
c0de2512:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de2516:	f808 2001 	strb.w	r2, [r8, r1]
c0de251a:	3901      	subs	r1, #1
c0de251c:	e7f8      	b.n	c0de2510 <zkn_encode_group_commitmentHash+0x4c>
c0de251e:	a816      	add	r0, sp, #88	@ 0x58
c0de2520:	a906      	add	r1, sp, #24
c0de2522:	462a      	mov	r2, r5
c0de2524:	f001 f9b0 	bl	c0de3888 <zkn_frost_hash_update>
c0de2528:	2800      	cmp	r0, #0
c0de252a:	d1d6      	bne.n	c0de24da <zkn_encode_group_commitmentHash+0x16>
c0de252c:	9803      	ldr	r0, [sp, #12]
c0de252e:	9f04      	ldr	r7, [sp, #16]
c0de2530:	1c43      	adds	r3, r0, #1
c0de2532:	9805      	ldr	r0, [sp, #20]
c0de2534:	fb05 710b 	mla	r1, r5, fp, r7
c0de2538:	6802      	ldr	r2, [r0, #0]
c0de253a:	1e50      	subs	r0, r2, #1
c0de253c:	4615      	mov	r5, r2
c0de253e:	fb02 0303 	mla	r3, r2, r3, r0
c0de2542:	5cfb      	ldrb	r3, [r7, r3]
c0de2544:	b12d      	cbz	r5, c0de2552 <zkn_encode_group_commitmentHash+0x8e>
c0de2546:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de254a:	f808 7005 	strb.w	r7, [r8, r5]
c0de254e:	3d01      	subs	r5, #1
c0de2550:	e7f8      	b.n	c0de2544 <zkn_encode_group_commitmentHash+0x80>
c0de2552:	a906      	add	r1, sp, #24
c0de2554:	5c0d      	ldrb	r5, [r1, r0]
c0de2556:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de255a:	540b      	strb	r3, [r1, r0]
c0de255c:	a816      	add	r0, sp, #88	@ 0x58
c0de255e:	f001 f993 	bl	c0de3888 <zkn_frost_hash_update>
c0de2562:	2800      	cmp	r0, #0
c0de2564:	d1b9      	bne.n	c0de24da <zkn_encode_group_commitmentHash+0x16>
c0de2566:	9805      	ldr	r0, [sp, #20]
c0de2568:	9d04      	ldr	r5, [sp, #16]
c0de256a:	6802      	ldr	r2, [r0, #0]
c0de256c:	9803      	ldr	r0, [sp, #12]
c0de256e:	1cc3      	adds	r3, r0, #3
c0de2570:	1e50      	subs	r0, r2, #1
c0de2572:	fb02 5106 	mla	r1, r2, r6, r5
c0de2576:	fb02 0303 	mla	r3, r2, r3, r0
c0de257a:	5ceb      	ldrb	r3, [r5, r3]
c0de257c:	4615      	mov	r5, r2
c0de257e:	b12d      	cbz	r5, c0de258c <zkn_encode_group_commitmentHash+0xc8>
c0de2580:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2584:	f808 7005 	strb.w	r7, [r8, r5]
c0de2588:	3d01      	subs	r5, #1
c0de258a:	e7f8      	b.n	c0de257e <zkn_encode_group_commitmentHash+0xba>
c0de258c:	a906      	add	r1, sp, #24
c0de258e:	5c0d      	ldrb	r5, [r1, r0]
c0de2590:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2594:	540b      	strb	r3, [r1, r0]
c0de2596:	a816      	add	r0, sp, #88	@ 0x58
c0de2598:	f001 f976 	bl	c0de3888 <zkn_frost_hash_update>
c0de259c:	3605      	adds	r6, #5
c0de259e:	3401      	adds	r4, #1
c0de25a0:	9d02      	ldr	r5, [sp, #8]
c0de25a2:	f10b 0b05 	add.w	fp, fp, #5
c0de25a6:	f10a 0a05 	add.w	sl, sl, #5
c0de25aa:	2800      	cmp	r0, #0
c0de25ac:	d0a5      	beq.n	c0de24fa <zkn_encode_group_commitmentHash+0x36>
c0de25ae:	e794      	b.n	c0de24da <zkn_encode_group_commitmentHash+0x16>
c0de25b0:	9805      	ldr	r0, [sp, #20]
c0de25b2:	6881      	ldr	r1, [r0, #8]
c0de25b4:	a816      	add	r0, sp, #88	@ 0x58
c0de25b6:	9a01      	ldr	r2, [sp, #4]
c0de25b8:	f001 f968 	bl	c0de388c <zkn_frost_hash_final>
c0de25bc:	e78d      	b.n	c0de24da <zkn_encode_group_commitmentHash+0x16>

c0de25be <zkn_compute_group_commitment>:
c0de25be:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de25c2:	b088      	sub	sp, #32
c0de25c4:	460d      	mov	r5, r1
c0de25c6:	a905      	add	r1, sp, #20
c0de25c8:	461f      	mov	r7, r3
c0de25ca:	4693      	mov	fp, r2
c0de25cc:	4604      	mov	r4, r0
c0de25ce:	f000 fa35 	bl	c0de2a3c <tEdwards_alloc>
c0de25d2:	b948      	cbnz	r0, c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de25d4:	a902      	add	r1, sp, #8
c0de25d6:	4620      	mov	r0, r4
c0de25d8:	f000 fa30 	bl	c0de2a3c <tEdwards_alloc>
c0de25dc:	b920      	cbnz	r0, c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de25de:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de25e0:	4620      	mov	r0, r4
c0de25e2:	f000 fd23 	bl	c0de302c <tEdwards_SetNeutral>
c0de25e6:	b110      	cbz	r0, c0de25ee <zkn_compute_group_commitment+0x30>
c0de25e8:	b008      	add	sp, #32
c0de25ea:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de25ee:	ae05      	add	r6, sp, #20
c0de25f0:	f04f 0800 	mov.w	r8, #0
c0de25f4:	f04f 0a04 	mov.w	sl, #4
c0de25f8:	9501      	str	r5, [sp, #4]
c0de25fa:	4547      	cmp	r7, r8
c0de25fc:	d041      	beq.n	c0de2682 <zkn_compute_group_commitment+0xc4>
c0de25fe:	6822      	ldr	r2, [r4, #0]
c0de2600:	f1aa 0003 	sub.w	r0, sl, #3
c0de2604:	4633      	mov	r3, r6
c0de2606:	fb02 5100 	mla	r1, r2, r0, r5
c0de260a:	f1aa 0002 	sub.w	r0, sl, #2
c0de260e:	fb02 5200 	mla	r2, r2, r0, r5
c0de2612:	4620      	mov	r0, r4
c0de2614:	f000 fc82 	bl	c0de2f1c <tEdwards_init>
c0de2618:	2800      	cmp	r0, #0
c0de261a:	d1e5      	bne.n	c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de261c:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de261e:	4620      	mov	r0, r4
c0de2620:	4632      	mov	r2, r6
c0de2622:	460b      	mov	r3, r1
c0de2624:	f000 fa9b 	bl	c0de2b5e <tEdwards_add>
c0de2628:	2800      	cmp	r0, #0
c0de262a:	d1dd      	bne.n	c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de262c:	6822      	ldr	r2, [r4, #0]
c0de262e:	f1aa 0001 	sub.w	r0, sl, #1
c0de2632:	4633      	mov	r3, r6
c0de2634:	fb02 5100 	mla	r1, r2, r0, r5
c0de2638:	fb02 520a 	mla	r2, r2, sl, r5
c0de263c:	4620      	mov	r0, r4
c0de263e:	f000 fc6d 	bl	c0de2f1c <tEdwards_init>
c0de2642:	2800      	cmp	r0, #0
c0de2644:	d1d0      	bne.n	c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de2646:	6823      	ldr	r3, [r4, #0]
c0de2648:	4658      	mov	r0, fp
c0de264a:	f10d 0b08 	add.w	fp, sp, #8
c0de264e:	4631      	mov	r1, r6
c0de2650:	4605      	mov	r5, r0
c0de2652:	f8cd b000 	str.w	fp, [sp]
c0de2656:	fb03 0208 	mla	r2, r3, r8, r0
c0de265a:	4620      	mov	r0, r4
c0de265c:	f000 fde4 	bl	c0de3228 <tEdwards_scalarMul>
c0de2660:	2800      	cmp	r0, #0
c0de2662:	d1c1      	bne.n	c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de2664:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2666:	4620      	mov	r0, r4
c0de2668:	465a      	mov	r2, fp
c0de266a:	460b      	mov	r3, r1
c0de266c:	f000 fa77 	bl	c0de2b5e <tEdwards_add>
c0de2670:	46ab      	mov	fp, r5
c0de2672:	9d01      	ldr	r5, [sp, #4]
c0de2674:	f10a 0a05 	add.w	sl, sl, #5
c0de2678:	f108 0801 	add.w	r8, r8, #1
c0de267c:	2800      	cmp	r0, #0
c0de267e:	d0bc      	beq.n	c0de25fa <zkn_compute_group_commitment+0x3c>
c0de2680:	e7b2      	b.n	c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de2682:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2684:	4620      	mov	r0, r4
c0de2686:	f000 fd0a 	bl	c0de309e <tEdwards_normalize>
c0de268a:	2800      	cmp	r0, #0
c0de268c:	d1ac      	bne.n	c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de268e:	a905      	add	r1, sp, #20
c0de2690:	f000 f9d1 	bl	c0de2a36 <OUTLINED_FUNCTION_6>
c0de2694:	2800      	cmp	r0, #0
c0de2696:	d1a7      	bne.n	c0de25e8 <zkn_compute_group_commitment+0x2a>
c0de2698:	a902      	add	r1, sp, #8
c0de269a:	f000 f9cc 	bl	c0de2a36 <OUTLINED_FUNCTION_6>
c0de269e:	e7a3      	b.n	c0de25e8 <zkn_compute_group_commitment+0x2a>

c0de26a0 <zkn_compute_binding_factors>:
c0de26a0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de26a4:	b0f4      	sub	sp, #464	@ 0x1d0
c0de26a6:	460e      	mov	r6, r1
c0de26a8:	6801      	ldr	r1, [r0, #0]
c0de26aa:	4607      	mov	r7, r0
c0de26ac:	a873      	add	r0, sp, #460	@ 0x1cc
c0de26ae:	f000 f9b9 	bl	c0de2a24 <OUTLINED_FUNCTION_4>
c0de26b2:	b9f0      	cbnz	r0, c0de26f2 <zkn_compute_binding_factors+0x52>
c0de26b4:	6839      	ldr	r1, [r7, #0]
c0de26b6:	a872      	add	r0, sp, #456	@ 0x1c8
c0de26b8:	f005 f89c 	bl	c0de77f4 <cx_bn_alloc>
c0de26bc:	b9c8      	cbnz	r0, c0de26f2 <zkn_compute_binding_factors+0x52>
c0de26be:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de26c2:	68ba      	ldr	r2, [r7, #8]
c0de26c4:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de26c6:	f001 f879 	bl	c0de37bc <Babyfrost_H4>
c0de26ca:	b990      	cbnz	r0, c0de26f2 <zkn_compute_binding_factors+0x52>
c0de26cc:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de26ce:	4638      	mov	r0, r7
c0de26d0:	4629      	mov	r1, r5
c0de26d2:	4622      	mov	r2, r4
c0de26d4:	f7ff fef6 	bl	c0de24c4 <zkn_encode_group_commitmentHash>
c0de26d8:	b958      	cbnz	r0, c0de26f2 <zkn_compute_binding_factors+0x52>
c0de26da:	683a      	ldr	r2, [r7, #0]
c0de26dc:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de26de:	a912      	add	r1, sp, #72	@ 0x48
c0de26e0:	f005 f8d2 	bl	c0de7888 <cx_bn_export>
c0de26e4:	b928      	cbnz	r0, c0de26f2 <zkn_compute_binding_factors+0x52>
c0de26e6:	683a      	ldr	r2, [r7, #0]
c0de26e8:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de26ea:	a902      	add	r1, sp, #8
c0de26ec:	f005 f8cc 	bl	c0de7888 <cx_bn_export>
c0de26f0:	b110      	cbz	r0, c0de26f8 <zkn_compute_binding_factors+0x58>
c0de26f2:	b074      	add	sp, #464	@ 0x1d0
c0de26f4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de26f8:	2000      	movs	r0, #0
c0de26fa:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de26fe:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de2702:	f04f 0800 	mov.w	r8, #0
c0de2706:	9000      	str	r0, [sp, #0]
c0de2708:	4544      	cmp	r4, r8
c0de270a:	d043      	beq.n	c0de2794 <zkn_compute_binding_factors+0xf4>
c0de270c:	6839      	ldr	r1, [r7, #0]
c0de270e:	a801      	add	r0, sp, #4
c0de2710:	f005 f870 	bl	c0de77f4 <cx_bn_alloc>
c0de2714:	2800      	cmp	r0, #0
c0de2716:	d1ec      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de2718:	4650      	mov	r0, sl
c0de271a:	f001 f881 	bl	c0de3820 <zkn_frost_H1_init>
c0de271e:	2800      	cmp	r0, #0
c0de2720:	d1e7      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de2722:	6839      	ldr	r1, [r7, #0]
c0de2724:	4630      	mov	r0, r6
c0de2726:	465a      	mov	r2, fp
c0de2728:	f000 f966 	bl	c0de29f8 <OUTLINED_FUNCTION_0>
c0de272c:	2800      	cmp	r0, #0
c0de272e:	d1e0      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de2730:	6839      	ldr	r1, [r7, #0]
c0de2732:	a812      	add	r0, sp, #72	@ 0x48
c0de2734:	465a      	mov	r2, fp
c0de2736:	f000 f95f 	bl	c0de29f8 <OUTLINED_FUNCTION_0>
c0de273a:	2800      	cmp	r0, #0
c0de273c:	d1d9      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de273e:	6839      	ldr	r1, [r7, #0]
c0de2740:	a802      	add	r0, sp, #8
c0de2742:	465a      	mov	r2, fp
c0de2744:	f000 f958 	bl	c0de29f8 <OUTLINED_FUNCTION_0>
c0de2748:	2800      	cmp	r0, #0
c0de274a:	d1d2      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de274c:	6839      	ldr	r1, [r7, #0]
c0de274e:	9800      	ldr	r0, [sp, #0]
c0de2750:	465a      	mov	r2, fp
c0de2752:	fb00 5001 	mla	r0, r0, r1, r5
c0de2756:	f000 f94f 	bl	c0de29f8 <OUTLINED_FUNCTION_0>
c0de275a:	2800      	cmp	r0, #0
c0de275c:	d1c9      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de275e:	68b9      	ldr	r1, [r7, #8]
c0de2760:	9a01      	ldr	r2, [sp, #4]
c0de2762:	4650      	mov	r0, sl
c0de2764:	f001 f892 	bl	c0de388c <zkn_frost_hash_final>
c0de2768:	2800      	cmp	r0, #0
c0de276a:	d1c2      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de276c:	683a      	ldr	r2, [r7, #0]
c0de276e:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de2770:	fb02 0108 	mla	r1, r2, r8, r0
c0de2774:	9801      	ldr	r0, [sp, #4]
c0de2776:	f005 f887 	bl	c0de7888 <cx_bn_export>
c0de277a:	2800      	cmp	r0, #0
c0de277c:	d1b9      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de277e:	a801      	add	r0, sp, #4
c0de2780:	f005 f84e 	bl	c0de7820 <cx_bn_destroy>
c0de2784:	2800      	cmp	r0, #0
c0de2786:	d1b4      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de2788:	9800      	ldr	r0, [sp, #0]
c0de278a:	f108 0801 	add.w	r8, r8, #1
c0de278e:	3005      	adds	r0, #5
c0de2790:	9000      	str	r0, [sp, #0]
c0de2792:	e7b9      	b.n	c0de2708 <zkn_compute_binding_factors+0x68>
c0de2794:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2796:	f005 f843 	bl	c0de7820 <cx_bn_destroy>
c0de279a:	2800      	cmp	r0, #0
c0de279c:	d1a9      	bne.n	c0de26f2 <zkn_compute_binding_factors+0x52>
c0de279e:	a872      	add	r0, sp, #456	@ 0x1c8
c0de27a0:	f005 f83e 	bl	c0de7820 <cx_bn_destroy>
c0de27a4:	e7a5      	b.n	c0de26f2 <zkn_compute_binding_factors+0x52>

c0de27a6 <zkn_serialize_scalar_for_hash>:
c0de27a6:	3a01      	subs	r2, #1
c0de27a8:	b121      	cbz	r1, c0de27b4 <zkn_serialize_scalar_for_hash+0xe>
c0de27aa:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de27ae:	5453      	strb	r3, [r2, r1]
c0de27b0:	3901      	subs	r1, #1
c0de27b2:	e7f9      	b.n	c0de27a8 <zkn_serialize_scalar_for_hash+0x2>
c0de27b4:	4770      	bx	lr
	...

c0de27b8 <compute_challenge>:
c0de27b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de27bc:	b0bc      	sub	sp, #240	@ 0xf0
c0de27be:	4606      	mov	r6, r0
c0de27c0:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de27c2:	2820      	cmp	r0, #32
c0de27c4:	d14b      	bne.n	c0de285e <compute_challenge+0xa6>
c0de27c6:	4630      	mov	r0, r6
c0de27c8:	461f      	mov	r7, r3
c0de27ca:	4614      	mov	r4, r2
c0de27cc:	460d      	mov	r5, r1
c0de27ce:	f000 fbe4 	bl	c0de2f9a <tEdwards_Curve_partial_destroy>
c0de27d2:	2800      	cmp	r0, #0
c0de27d4:	d144      	bne.n	c0de2860 <compute_challenge+0xa8>
c0de27d6:	f106 0820 	add.w	r8, r6, #32
c0de27da:	4668      	mov	r0, sp
c0de27dc:	2105      	movs	r1, #5
c0de27de:	2205      	movs	r2, #5
c0de27e0:	4643      	mov	r3, r8
c0de27e2:	f000 fe47 	bl	c0de3474 <Poseidon_alloc_init>
c0de27e6:	bbd8      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de27e8:	6829      	ldr	r1, [r5, #0]
c0de27ea:	9807      	ldr	r0, [sp, #28]
c0de27ec:	f005 f838 	bl	c0de7860 <cx_bn_copy>
c0de27f0:	bbb0      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de27f2:	6869      	ldr	r1, [r5, #4]
c0de27f4:	9808      	ldr	r0, [sp, #32]
c0de27f6:	f005 f833 	bl	c0de7860 <cx_bn_copy>
c0de27fa:	bb88      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de27fc:	6832      	ldr	r2, [r6, #0]
c0de27fe:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de2800:	4621      	mov	r1, r4
c0de2802:	f005 f821 	bl	c0de7848 <cx_bn_init>
c0de2806:	bb58      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de2808:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de280a:	f000 f907 	bl	c0de2a1c <OUTLINED_FUNCTION_3>
c0de280e:	bb38      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de2810:	6832      	ldr	r2, [r6, #0]
c0de2812:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2814:	f104 0120 	add.w	r1, r4, #32
c0de2818:	f005 f816 	bl	c0de7848 <cx_bn_init>
c0de281c:	bb00      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de281e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2820:	f000 f8fc 	bl	c0de2a1c <OUTLINED_FUNCTION_3>
c0de2824:	b9e0      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de2826:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2828:	4639      	mov	r1, r7
c0de282a:	2220      	movs	r2, #32
c0de282c:	f005 f80c 	bl	c0de7848 <cx_bn_init>
c0de2830:	b9b0      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de2832:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2834:	f000 f8f2 	bl	c0de2a1c <OUTLINED_FUNCTION_3>
c0de2838:	b990      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de283a:	4630      	mov	r0, r6
c0de283c:	4629      	mov	r1, r5
c0de283e:	f000 f912 	bl	c0de2a66 <tEdwards_destroy>
c0de2842:	b968      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de2844:	4668      	mov	r0, sp
c0de2846:	aa43      	add	r2, sp, #268	@ 0x10c
c0de2848:	2100      	movs	r1, #0
c0de284a:	2301      	movs	r3, #1
c0de284c:	f000 fe78 	bl	c0de3540 <Poseidon>
c0de2850:	b930      	cbnz	r0, c0de2860 <compute_challenge+0xa8>
c0de2852:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de2854:	4642      	mov	r2, r8
c0de2856:	4601      	mov	r1, r0
c0de2858:	f005 f8ac 	bl	c0de79b4 <cx_mont_from_montgomery>
c0de285c:	e000      	b.n	c0de2860 <compute_challenge+0xa8>
c0de285e:	4802      	ldr	r0, [pc, #8]	@ (c0de2868 <compute_challenge+0xb0>)
c0de2860:	b03c      	add	sp, #240	@ 0xf0
c0de2862:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2866:	bf00      	nop
c0de2868:	5a4b4e03 	.word	0x5a4b4e03

c0de286c <zkn_partial_sig>:
c0de286c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2870:	b0c2      	sub	sp, #264	@ 0x108
c0de2872:	4680      	mov	r8, r0
c0de2874:	7fd8      	ldrb	r0, [r3, #31]
c0de2876:	e9dd a64e 	ldrd	sl, r6, [sp, #312]	@ 0x138
c0de287a:	9f4c      	ldr	r7, [sp, #304]	@ 0x130
c0de287c:	e9cd 1204 	strd	r1, r2, [sp, #16]
c0de2880:	469b      	mov	fp, r3
c0de2882:	ab16      	add	r3, sp, #88	@ 0x58
c0de2884:	2100      	movs	r1, #0
c0de2886:	221f      	movs	r2, #31
c0de2888:	ac1e      	add	r4, sp, #120	@ 0x78
c0de288a:	f000 0001 	and.w	r0, r0, #1
c0de288e:	2920      	cmp	r1, #32
c0de2890:	d00f      	beq.n	c0de28b2 <zkn_partial_sig+0x46>
c0de2892:	eb0b 0501 	add.w	r5, fp, r1
c0de2896:	f895 5020 	ldrb.w	r5, [r5, #32]
c0de289a:	545d      	strb	r5, [r3, r1]
c0de289c:	f81a 5002 	ldrb.w	r5, [sl, r2]
c0de28a0:	3a01      	subs	r2, #1
c0de28a2:	5465      	strb	r5, [r4, r1]
c0de28a4:	f89d 5058 	ldrb.w	r5, [sp, #88]	@ 0x58
c0de28a8:	3101      	adds	r1, #1
c0de28aa:	4045      	eors	r5, r0
c0de28ac:	f88d 5058 	strb.w	r5, [sp, #88]	@ 0x58
c0de28b0:	e7ed      	b.n	c0de288e <zkn_partial_sig+0x22>
c0de28b2:	a83e      	add	r0, sp, #248	@ 0xf8
c0de28b4:	f000 f8af 	bl	c0de2a16 <OUTLINED_FUNCTION_2>
c0de28b8:	2800      	cmp	r0, #0
c0de28ba:	f040 8098 	bne.w	c0de29ee <zkn_partial_sig+0x182>
c0de28be:	ad3f      	add	r5, sp, #252	@ 0xfc
c0de28c0:	4640      	mov	r0, r8
c0de28c2:	4629      	mov	r1, r5
c0de28c4:	f000 f8ba 	bl	c0de2a3c <tEdwards_alloc>
c0de28c8:	2800      	cmp	r0, #0
c0de28ca:	f040 8090 	bne.w	c0de29ee <zkn_partial_sig+0x182>
c0de28ce:	a826      	add	r0, sp, #152	@ 0x98
c0de28d0:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de28d2:	e9cd 4600 	strd	r4, r6, [sp]
c0de28d6:	463a      	mov	r2, r7
c0de28d8:	9002      	str	r0, [sp, #8]
c0de28da:	a916      	add	r1, sp, #88	@ 0x58
c0de28dc:	4640      	mov	r0, r8
c0de28de:	f7ff fedf 	bl	c0de26a0 <zkn_compute_binding_factors>
c0de28e2:	2800      	cmp	r0, #0
c0de28e4:	f040 8083 	bne.w	c0de29ee <zkn_partial_sig+0x182>
c0de28e8:	9500      	str	r5, [sp, #0]
c0de28ea:	ac26      	add	r4, sp, #152	@ 0x98
c0de28ec:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de28ee:	4640      	mov	r0, r8
c0de28f0:	4639      	mov	r1, r7
c0de28f2:	4622      	mov	r2, r4
c0de28f4:	f7ff fe63 	bl	c0de25be <zkn_compute_group_commitment>
c0de28f8:	2800      	cmp	r0, #0
c0de28fa:	d178      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de28fc:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de28fe:	2120      	movs	r1, #32
c0de2900:	465a      	mov	r2, fp
c0de2902:	4653      	mov	r3, sl
c0de2904:	e9cd 1000 	strd	r1, r0, [sp]
c0de2908:	a93f      	add	r1, sp, #252	@ 0xfc
c0de290a:	4640      	mov	r0, r8
c0de290c:	f7ff ff54 	bl	c0de27b8 <compute_challenge>
c0de2910:	2800      	cmp	r0, #0
c0de2912:	d16c      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de2914:	f000 f88a 	bl	c0de2a2c <OUTLINED_FUNCTION_5>
c0de2918:	2800      	cmp	r0, #0
c0de291a:	d168      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de291c:	a80c      	add	r0, sp, #48	@ 0x30
c0de291e:	4935      	ldr	r1, [pc, #212]	@ (c0de29f4 <zkn_partial_sig+0x188>)
c0de2920:	2220      	movs	r2, #32
c0de2922:	4479      	add	r1, pc
c0de2924:	f005 fa1c 	bl	c0de7d60 <__aeabi_memcpy>
c0de2928:	a815      	add	r0, sp, #84	@ 0x54
c0de292a:	f000 f874 	bl	c0de2a16 <OUTLINED_FUNCTION_2>
c0de292e:	2800      	cmp	r0, #0
c0de2930:	d15d      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de2932:	a814      	add	r0, sp, #80	@ 0x50
c0de2934:	aa0c      	add	r2, sp, #48	@ 0x30
c0de2936:	f000 f86a 	bl	c0de2a0e <OUTLINED_FUNCTION_1>
c0de293a:	2800      	cmp	r0, #0
c0de293c:	d157      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de293e:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de2940:	e9dd 2014 	ldrd	r2, r0, [sp, #80]	@ 0x50
c0de2944:	f004 fff4 	bl	c0de7930 <cx_bn_reduce>
c0de2948:	2800      	cmp	r0, #0
c0de294a:	d150      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de294c:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de294e:	a80b      	add	r0, sp, #44	@ 0x2c
c0de2950:	f000 f85d 	bl	c0de2a0e <OUTLINED_FUNCTION_1>
c0de2954:	2800      	cmp	r0, #0
c0de2956:	d14a      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de2958:	9a4b      	ldr	r2, [sp, #300]	@ 0x12c
c0de295a:	a80a      	add	r0, sp, #40	@ 0x28
c0de295c:	f000 f857 	bl	c0de2a0e <OUTLINED_FUNCTION_1>
c0de2960:	2800      	cmp	r0, #0
c0de2962:	d144      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de2964:	9a50      	ldr	r2, [sp, #320]	@ 0x140
c0de2966:	a809      	add	r0, sp, #36	@ 0x24
c0de2968:	f000 f851 	bl	c0de2a0e <OUTLINED_FUNCTION_1>
c0de296c:	2800      	cmp	r0, #0
c0de296e:	d13e      	bne.n	c0de29ee <zkn_partial_sig+0x182>
c0de2970:	a808      	add	r0, sp, #32
c0de2972:	9a05      	ldr	r2, [sp, #20]
c0de2974:	f000 f84b 	bl	c0de2a0e <OUTLINED_FUNCTION_1>
c0de2978:	bbc8      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de297a:	9804      	ldr	r0, [sp, #16]
c0de297c:	2120      	movs	r1, #32
c0de297e:	2320      	movs	r3, #32
c0de2980:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de2984:	f1a0 0220 	sub.w	r2, r0, #32
c0de2988:	a806      	add	r0, sp, #24
c0de298a:	f004 ff3d 	bl	c0de7808 <cx_bn_alloc_init>
c0de298e:	bb70      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de2990:	a807      	add	r0, sp, #28
c0de2992:	f000 f840 	bl	c0de2a16 <OUTLINED_FUNCTION_2>
c0de2996:	bb50      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de2998:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de299a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de299c:	e9dd 2006 	ldrd	r2, r0, [sp, #24]
c0de29a0:	f004 ffba 	bl	c0de7918 <cx_bn_mod_mul>
c0de29a4:	bb18      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de29a6:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de29a8:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de29ac:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de29ae:	f004 ffb3 	bl	c0de7918 <cx_bn_mod_mul>
c0de29b2:	b9e0      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de29b4:	e9dd 3214 	ldrd	r3, r2, [sp, #80]	@ 0x50
c0de29b8:	e9dd 0109 	ldrd	r0, r1, [sp, #36]	@ 0x24
c0de29bc:	f004 ffac 	bl	c0de7918 <cx_bn_mod_mul>
c0de29c0:	b9a8      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de29c2:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de29c4:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de29c6:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de29ca:	f004 ff8d 	bl	c0de78e8 <cx_bn_mod_add>
c0de29ce:	b970      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de29d0:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de29d2:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de29d4:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de29d8:	f004 ff86 	bl	c0de78e8 <cx_bn_mod_add>
c0de29dc:	b938      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de29de:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de29e0:	9907      	ldr	r1, [sp, #28]
c0de29e2:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de29e4:	f004 ffa4 	bl	c0de7930 <cx_bn_reduce>
c0de29e8:	b908      	cbnz	r0, c0de29ee <zkn_partial_sig+0x182>
c0de29ea:	f000 f81f 	bl	c0de2a2c <OUTLINED_FUNCTION_5>
c0de29ee:	b042      	add	sp, #264	@ 0x108
c0de29f0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de29f4:	00005bba 	.word	0x00005bba

c0de29f8 <OUTLINED_FUNCTION_0>:
c0de29f8:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de29fc:	f7ff fed3 	bl	c0de27a6 <zkn_serialize_scalar_for_hash>
c0de2a00:	683a      	ldr	r2, [r7, #0]
c0de2a02:	4650      	mov	r0, sl
c0de2a04:	4659      	mov	r1, fp
c0de2a06:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2a0a:	f000 bf3d 	b.w	c0de3888 <zkn_frost_hash_update>

c0de2a0e <OUTLINED_FUNCTION_1>:
c0de2a0e:	2120      	movs	r1, #32
c0de2a10:	2320      	movs	r3, #32
c0de2a12:	f004 bef9 	b.w	c0de7808 <cx_bn_alloc_init>

c0de2a16 <OUTLINED_FUNCTION_2>:
c0de2a16:	2120      	movs	r1, #32
c0de2a18:	f004 beec 	b.w	c0de77f4 <cx_bn_alloc>

c0de2a1c <OUTLINED_FUNCTION_3>:
c0de2a1c:	4642      	mov	r2, r8
c0de2a1e:	4601      	mov	r1, r0
c0de2a20:	f004 bfbc 	b.w	c0de799c <cx_mont_to_montgomery>

c0de2a24 <OUTLINED_FUNCTION_4>:
c0de2a24:	461c      	mov	r4, r3
c0de2a26:	4615      	mov	r5, r2
c0de2a28:	f004 bee4 	b.w	c0de77f4 <cx_bn_alloc>

c0de2a2c <OUTLINED_FUNCTION_5>:
c0de2a2c:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2a2e:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de2a30:	2220      	movs	r2, #32
c0de2a32:	f004 bf29 	b.w	c0de7888 <cx_bn_export>

c0de2a36 <OUTLINED_FUNCTION_6>:
c0de2a36:	4620      	mov	r0, r4
c0de2a38:	f000 b815 	b.w	c0de2a66 <tEdwards_destroy>

c0de2a3c <tEdwards_alloc>:
c0de2a3c:	b5b0      	push	{r4, r5, r7, lr}
c0de2a3e:	460d      	mov	r5, r1
c0de2a40:	6801      	ldr	r1, [r0, #0]
c0de2a42:	4604      	mov	r4, r0
c0de2a44:	4628      	mov	r0, r5
c0de2a46:	f004 fed5 	bl	c0de77f4 <cx_bn_alloc>
c0de2a4a:	b920      	cbnz	r0, c0de2a56 <tEdwards_alloc+0x1a>
c0de2a4c:	6821      	ldr	r1, [r4, #0]
c0de2a4e:	1d28      	adds	r0, r5, #4
c0de2a50:	f004 fed0 	bl	c0de77f4 <cx_bn_alloc>
c0de2a54:	b100      	cbz	r0, c0de2a58 <tEdwards_alloc+0x1c>
c0de2a56:	bdb0      	pop	{r4, r5, r7, pc}
c0de2a58:	6821      	ldr	r1, [r4, #0]
c0de2a5a:	f105 0008 	add.w	r0, r5, #8
c0de2a5e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2a62:	f004 bec7 	b.w	c0de77f4 <cx_bn_alloc>

c0de2a66 <tEdwards_destroy>:
c0de2a66:	b510      	push	{r4, lr}
c0de2a68:	4608      	mov	r0, r1
c0de2a6a:	460c      	mov	r4, r1
c0de2a6c:	f004 fed8 	bl	c0de7820 <cx_bn_destroy>
c0de2a70:	b918      	cbnz	r0, c0de2a7a <tEdwards_destroy+0x14>
c0de2a72:	1d20      	adds	r0, r4, #4
c0de2a74:	f004 fed4 	bl	c0de7820 <cx_bn_destroy>
c0de2a78:	b100      	cbz	r0, c0de2a7c <tEdwards_destroy+0x16>
c0de2a7a:	bd10      	pop	{r4, pc}
c0de2a7c:	f104 0008 	add.w	r0, r4, #8
c0de2a80:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2a84:	f004 becc 	b.w	c0de7820 <cx_bn_destroy>

c0de2a88 <tEdwards_double>:
c0de2a88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2a8a:	460f      	mov	r7, r1
c0de2a8c:	4614      	mov	r4, r2
c0de2a8e:	4605      	mov	r5, r0
c0de2a90:	6843      	ldr	r3, [r0, #4]
c0de2a92:	6809      	ldr	r1, [r1, #0]
c0de2a94:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2a96:	687a      	ldr	r2, [r7, #4]
c0de2a98:	f004 ff26 	bl	c0de78e8 <cx_bn_mod_add>
c0de2a9c:	2800      	cmp	r0, #0
c0de2a9e:	d154      	bne.n	c0de2b4a <tEdwards_double+0xc2>
c0de2aa0:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2aa4:	f105 0620 	add.w	r6, r5, #32
c0de2aa8:	f000 fbe4 	bl	c0de3274 <OUTLINED_FUNCTION_2>
c0de2aac:	2800      	cmp	r0, #0
c0de2aae:	d14c      	bne.n	c0de2b4a <tEdwards_double+0xc2>
c0de2ab0:	6839      	ldr	r1, [r7, #0]
c0de2ab2:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2ab4:	f000 fbde 	bl	c0de3274 <OUTLINED_FUNCTION_2>
c0de2ab8:	2800      	cmp	r0, #0
c0de2aba:	d146      	bne.n	c0de2b4a <tEdwards_double+0xc2>
c0de2abc:	6879      	ldr	r1, [r7, #4]
c0de2abe:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2ac0:	f000 fbd8 	bl	c0de3274 <OUTLINED_FUNCTION_2>
c0de2ac4:	2800      	cmp	r0, #0
c0de2ac6:	d140      	bne.n	c0de2b4a <tEdwards_double+0xc2>
c0de2ac8:	69a9      	ldr	r1, [r5, #24]
c0de2aca:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2acc:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2ace:	f000 fbcb 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de2ad2:	bbd0      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2ad4:	686b      	ldr	r3, [r5, #4]
c0de2ad6:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2ada:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2adc:	f004 ff04 	bl	c0de78e8 <cx_bn_mod_add>
c0de2ae0:	bb98      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2ae2:	68b9      	ldr	r1, [r7, #8]
c0de2ae4:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2ae6:	f000 fbc5 	bl	c0de3274 <OUTLINED_FUNCTION_2>
c0de2aea:	bb70      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2aec:	686b      	ldr	r3, [r5, #4]
c0de2aee:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2af0:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2af2:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2af4:	f004 ff04 	bl	c0de7900 <cx_bn_mod_sub>
c0de2af8:	bb38      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2afa:	686b      	ldr	r3, [r5, #4]
c0de2afc:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2afe:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2b02:	f004 fefd 	bl	c0de7900 <cx_bn_mod_sub>
c0de2b06:	bb00      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2b08:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de2b0c:	686b      	ldr	r3, [r5, #4]
c0de2b0e:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2b10:	f004 fef6 	bl	c0de7900 <cx_bn_mod_sub>
c0de2b14:	b9c8      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2b16:	686b      	ldr	r3, [r5, #4]
c0de2b18:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2b1c:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de2b1e:	f004 feef 	bl	c0de7900 <cx_bn_mod_sub>
c0de2b22:	b990      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2b24:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2b26:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2b28:	6820      	ldr	r0, [r4, #0]
c0de2b2a:	f000 fb9d 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de2b2e:	b960      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2b30:	686b      	ldr	r3, [r5, #4]
c0de2b32:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2b36:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2b38:	f004 fee2 	bl	c0de7900 <cx_bn_mod_sub>
c0de2b3c:	b928      	cbnz	r0, c0de2b4a <tEdwards_double+0xc2>
c0de2b3e:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2b40:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2b42:	6860      	ldr	r0, [r4, #4]
c0de2b44:	f000 fb90 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de2b48:	b100      	cbz	r0, c0de2b4c <tEdwards_double+0xc4>
c0de2b4a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2b4c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2b4e:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2b50:	68a0      	ldr	r0, [r4, #8]
c0de2b52:	4633      	mov	r3, r6
c0de2b54:	b001      	add	sp, #4
c0de2b56:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2b5a:	f004 bf37 	b.w	c0de79cc <cx_mont_mul>

c0de2b5e <tEdwards_add>:
c0de2b5e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b62:	4606      	mov	r6, r0
c0de2b64:	4617      	mov	r7, r2
c0de2b66:	460c      	mov	r4, r1
c0de2b68:	6892      	ldr	r2, [r2, #8]
c0de2b6a:	6889      	ldr	r1, [r1, #8]
c0de2b6c:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2b6e:	4698      	mov	r8, r3
c0de2b70:	f106 0520 	add.w	r5, r6, #32
c0de2b74:	f000 fb7b 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2b78:	2800      	cmp	r0, #0
c0de2b7a:	d17d      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2b7c:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2b80:	462b      	mov	r3, r5
c0de2b82:	460a      	mov	r2, r1
c0de2b84:	f004 ff22 	bl	c0de79cc <cx_mont_mul>
c0de2b88:	2800      	cmp	r0, #0
c0de2b8a:	d175      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2b8c:	683a      	ldr	r2, [r7, #0]
c0de2b8e:	6821      	ldr	r1, [r4, #0]
c0de2b90:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2b92:	f000 fb6c 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2b96:	2800      	cmp	r0, #0
c0de2b98:	d16e      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2b9a:	687a      	ldr	r2, [r7, #4]
c0de2b9c:	6861      	ldr	r1, [r4, #4]
c0de2b9e:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2ba0:	f000 fb65 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2ba4:	2800      	cmp	r0, #0
c0de2ba6:	d167      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2ba8:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2bac:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2bae:	f000 fb5e 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2bb2:	2800      	cmp	r0, #0
c0de2bb4:	d160      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2bb6:	69f2      	ldr	r2, [r6, #28]
c0de2bb8:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2bba:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2bbc:	f000 fb57 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2bc0:	2800      	cmp	r0, #0
c0de2bc2:	d159      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2bc4:	6873      	ldr	r3, [r6, #4]
c0de2bc6:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2bc8:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2bcc:	f004 fe98 	bl	c0de7900 <cx_bn_mod_sub>
c0de2bd0:	2800      	cmp	r0, #0
c0de2bd2:	d151      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2bd4:	6873      	ldr	r3, [r6, #4]
c0de2bd6:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2bd8:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2bda:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2bdc:	f004 fe84 	bl	c0de78e8 <cx_bn_mod_add>
c0de2be0:	2800      	cmp	r0, #0
c0de2be2:	d149      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2be4:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2be8:	6873      	ldr	r3, [r6, #4]
c0de2bea:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2bec:	f004 fe7c 	bl	c0de78e8 <cx_bn_mod_add>
c0de2bf0:	2800      	cmp	r0, #0
c0de2bf2:	d141      	bne.n	c0de2c78 <tEdwards_add+0x11a>
c0de2bf4:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2bf8:	6873      	ldr	r3, [r6, #4]
c0de2bfa:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2bfc:	f004 fe74 	bl	c0de78e8 <cx_bn_mod_add>
c0de2c00:	bbd0      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c02:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2c04:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2c08:	f000 fb31 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2c0c:	bba0      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c0e:	6873      	ldr	r3, [r6, #4]
c0de2c10:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2c14:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2c16:	f004 fe73 	bl	c0de7900 <cx_bn_mod_sub>
c0de2c1a:	bb68      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c1c:	6873      	ldr	r3, [r6, #4]
c0de2c1e:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2c20:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2c24:	f004 fe6c 	bl	c0de7900 <cx_bn_mod_sub>
c0de2c28:	bb30      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c2a:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2c2e:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2c30:	f000 fb1d 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2c34:	bb00      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c36:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2c38:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2c3a:	f8d8 0000 	ldr.w	r0, [r8]
c0de2c3e:	f000 fb16 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2c42:	b9c8      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c44:	69b1      	ldr	r1, [r6, #24]
c0de2c46:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2c4a:	f000 fb10 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2c4e:	b998      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c50:	6873      	ldr	r3, [r6, #4]
c0de2c52:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2c54:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2c56:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2c58:	f004 fe52 	bl	c0de7900 <cx_bn_mod_sub>
c0de2c5c:	b960      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c5e:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2c60:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2c62:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2c64:	f000 fb03 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2c68:	b930      	cbnz	r0, c0de2c78 <tEdwards_add+0x11a>
c0de2c6a:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2c6e:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2c72:	f000 fafc 	bl	c0de326e <OUTLINED_FUNCTION_1>
c0de2c76:	b108      	cbz	r0, c0de2c7c <tEdwards_add+0x11e>
c0de2c78:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2c7c:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2c80:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2c84:	462b      	mov	r3, r5
c0de2c86:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2c8a:	f004 be9f 	b.w	c0de79cc <cx_mont_mul>

c0de2c8e <tEdwards_IsOnCurve>:
c0de2c8e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2c90:	4605      	mov	r5, r0
c0de2c92:	460f      	mov	r7, r1
c0de2c94:	2005      	movs	r0, #5
c0de2c96:	6809      	ldr	r1, [r1, #0]
c0de2c98:	4614      	mov	r4, r2
c0de2c9a:	9000      	str	r0, [sp, #0]
c0de2c9c:	f105 0620 	add.w	r6, r5, #32
c0de2ca0:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2ca2:	460a      	mov	r2, r1
c0de2ca4:	f000 fae0 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de2ca8:	b100      	cbz	r0, c0de2cac <tEdwards_IsOnCurve+0x1e>
c0de2caa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2cac:	6879      	ldr	r1, [r7, #4]
c0de2cae:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2cb0:	f000 fae0 	bl	c0de3274 <OUTLINED_FUNCTION_2>
c0de2cb4:	2800      	cmp	r0, #0
c0de2cb6:	d1f8      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2cb8:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2cbc:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2cbe:	f000 fad3 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de2cc2:	2800      	cmp	r0, #0
c0de2cc4:	d1f1      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2cc6:	69a9      	ldr	r1, [r5, #24]
c0de2cc8:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2cca:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2ccc:	f000 facc 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de2cd0:	2800      	cmp	r0, #0
c0de2cd2:	d1ea      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2cd4:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2cd6:	686b      	ldr	r3, [r5, #4]
c0de2cd8:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2cda:	4601      	mov	r1, r0
c0de2cdc:	f004 fe04 	bl	c0de78e8 <cx_bn_mod_add>
c0de2ce0:	2800      	cmp	r0, #0
c0de2ce2:	d1e2      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2ce4:	69e9      	ldr	r1, [r5, #28]
c0de2ce6:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2ce8:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2cea:	f000 fabd 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de2cee:	2800      	cmp	r0, #0
c0de2cf0:	d1db      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2cf2:	686b      	ldr	r3, [r5, #4]
c0de2cf4:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2cf6:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2cf8:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2cfa:	f004 fdf5 	bl	c0de78e8 <cx_bn_mod_add>
c0de2cfe:	2800      	cmp	r0, #0
c0de2d00:	d1d3      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2d02:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2d04:	4632      	mov	r2, r6
c0de2d06:	4601      	mov	r1, r0
c0de2d08:	f004 fe54 	bl	c0de79b4 <cx_mont_from_montgomery>
c0de2d0c:	2800      	cmp	r0, #0
c0de2d0e:	d1cc      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2d10:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2d12:	4632      	mov	r2, r6
c0de2d14:	4601      	mov	r1, r0
c0de2d16:	f004 fe4d 	bl	c0de79b4 <cx_mont_from_montgomery>
c0de2d1a:	2800      	cmp	r0, #0
c0de2d1c:	d1c5      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2d1e:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2d22:	466a      	mov	r2, sp
c0de2d24:	f004 fdbc 	bl	c0de78a0 <cx_bn_cmp>
c0de2d28:	2800      	cmp	r0, #0
c0de2d2a:	d1be      	bne.n	c0de2caa <tEdwards_IsOnCurve+0x1c>
c0de2d2c:	9800      	ldr	r0, [sp, #0]
c0de2d2e:	fab0 f080 	clz	r0, r0
c0de2d32:	0940      	lsrs	r0, r0, #5
c0de2d34:	7020      	strb	r0, [r4, #0]
c0de2d36:	2000      	movs	r0, #0
c0de2d38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2d3c <tEdwards_Curve_alloc_init>:
c0de2d3c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2d40:	b0d2      	sub	sp, #328	@ 0x148
c0de2d42:	4604      	mov	r4, r0
c0de2d44:	2902      	cmp	r1, #2
c0de2d46:	d022      	beq.n	c0de2d8e <tEdwards_Curve_alloc_init+0x52>
c0de2d48:	2901      	cmp	r1, #1
c0de2d4a:	f040 80cd 	bne.w	c0de2ee8 <tEdwards_Curve_alloc_init+0x1ac>
c0de2d4e:	2020      	movs	r0, #32
c0de2d50:	2220      	movs	r2, #32
c0de2d52:	6020      	str	r0, [r4, #0]
c0de2d54:	af4a      	add	r7, sp, #296	@ 0x128
c0de2d56:	4967      	ldr	r1, [pc, #412]	@ (c0de2ef4 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2d58:	4638      	mov	r0, r7
c0de2d5a:	4479      	add	r1, pc
c0de2d5c:	f005 f800 	bl	c0de7d60 <__aeabi_memcpy>
c0de2d60:	ae42      	add	r6, sp, #264	@ 0x108
c0de2d62:	4965      	ldr	r1, [pc, #404]	@ (c0de2ef8 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2d64:	2220      	movs	r2, #32
c0de2d66:	4630      	mov	r0, r6
c0de2d68:	4479      	add	r1, pc
c0de2d6a:	f004 fff9 	bl	c0de7d60 <__aeabi_memcpy>
c0de2d6e:	4963      	ldr	r1, [pc, #396]	@ (c0de2efc <tEdwards_Curve_alloc_init+0x1c0>)
c0de2d70:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2d74:	2220      	movs	r2, #32
c0de2d76:	4650      	mov	r0, sl
c0de2d78:	4479      	add	r1, pc
c0de2d7a:	f004 fff1 	bl	c0de7d60 <__aeabi_memcpy>
c0de2d7e:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2d80:	495f      	ldr	r1, [pc, #380]	@ (c0de2f00 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2d82:	2220      	movs	r2, #32
c0de2d84:	4628      	mov	r0, r5
c0de2d86:	4479      	add	r1, pc
c0de2d88:	f004 ffea 	bl	c0de7d60 <__aeabi_memcpy>
c0de2d8c:	e02d      	b.n	c0de2dea <tEdwards_Curve_alloc_init+0xae>
c0de2d8e:	2020      	movs	r0, #32
c0de2d90:	2220      	movs	r2, #32
c0de2d92:	6020      	str	r0, [r4, #0]
c0de2d94:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2d96:	495b      	ldr	r1, [pc, #364]	@ (c0de2f04 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2d98:	4638      	mov	r0, r7
c0de2d9a:	4479      	add	r1, pc
c0de2d9c:	f004 ffe0 	bl	c0de7d60 <__aeabi_memcpy>
c0de2da0:	ae22      	add	r6, sp, #136	@ 0x88
c0de2da2:	4959      	ldr	r1, [pc, #356]	@ (c0de2f08 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2da4:	2220      	movs	r2, #32
c0de2da6:	4630      	mov	r0, r6
c0de2da8:	4479      	add	r1, pc
c0de2daa:	f004 ffd9 	bl	c0de7d60 <__aeabi_memcpy>
c0de2dae:	4957      	ldr	r1, [pc, #348]	@ (c0de2f0c <tEdwards_Curve_alloc_init+0x1d0>)
c0de2db0:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2db4:	2220      	movs	r2, #32
c0de2db6:	4650      	mov	r0, sl
c0de2db8:	4479      	add	r1, pc
c0de2dba:	f004 ffd1 	bl	c0de7d60 <__aeabi_memcpy>
c0de2dbe:	a812      	add	r0, sp, #72	@ 0x48
c0de2dc0:	4953      	ldr	r1, [pc, #332]	@ (c0de2f10 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2dc2:	2220      	movs	r2, #32
c0de2dc4:	9001      	str	r0, [sp, #4]
c0de2dc6:	4479      	add	r1, pc
c0de2dc8:	f004 ffca 	bl	c0de7d60 <__aeabi_memcpy>
c0de2dcc:	4951      	ldr	r1, [pc, #324]	@ (c0de2f14 <tEdwards_Curve_alloc_init+0x1d8>)
c0de2dce:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2dd2:	2220      	movs	r2, #32
c0de2dd4:	4658      	mov	r0, fp
c0de2dd6:	4479      	add	r1, pc
c0de2dd8:	f004 ffc2 	bl	c0de7d60 <__aeabi_memcpy>
c0de2ddc:	ad02      	add	r5, sp, #8
c0de2dde:	494e      	ldr	r1, [pc, #312]	@ (c0de2f18 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2de0:	2220      	movs	r2, #32
c0de2de2:	4628      	mov	r0, r5
c0de2de4:	4479      	add	r1, pc
c0de2de6:	f004 ffbb 	bl	c0de7d60 <__aeabi_memcpy>
c0de2dea:	f104 0804 	add.w	r8, r4, #4
c0de2dee:	2120      	movs	r1, #32
c0de2df0:	463a      	mov	r2, r7
c0de2df2:	2320      	movs	r3, #32
c0de2df4:	4640      	mov	r0, r8
c0de2df6:	f004 fd07 	bl	c0de7808 <cx_bn_alloc_init>
c0de2dfa:	2800      	cmp	r0, #0
c0de2dfc:	d175      	bne.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2dfe:	4620      	mov	r0, r4
c0de2e00:	462a      	mov	r2, r5
c0de2e02:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2e06:	460b      	mov	r3, r1
c0de2e08:	f004 fcfe 	bl	c0de7808 <cx_bn_alloc_init>
c0de2e0c:	2800      	cmp	r0, #0
c0de2e0e:	d16c      	bne.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e10:	f104 0520 	add.w	r5, r4, #32
c0de2e14:	2120      	movs	r1, #32
c0de2e16:	4628      	mov	r0, r5
c0de2e18:	f004 fdac 	bl	c0de7974 <cx_mont_alloc>
c0de2e1c:	2800      	cmp	r0, #0
c0de2e1e:	d164      	bne.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e20:	f8d8 1000 	ldr.w	r1, [r8]
c0de2e24:	4628      	mov	r0, r5
c0de2e26:	f004 fdaf 	bl	c0de7988 <cx_mont_init>
c0de2e2a:	2800      	cmp	r0, #0
c0de2e2c:	d15d      	bne.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e2e:	4627      	mov	r7, r4
c0de2e30:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2e34:	4638      	mov	r0, r7
c0de2e36:	f004 fcdd 	bl	c0de77f4 <cx_bn_alloc>
c0de2e3a:	2800      	cmp	r0, #0
c0de2e3c:	d155      	bne.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e3e:	6838      	ldr	r0, [r7, #0]
c0de2e40:	2101      	movs	r1, #1
c0de2e42:	f004 fd17 	bl	c0de7874 <cx_bn_set_u32>
c0de2e46:	2800      	cmp	r0, #0
c0de2e48:	d14f      	bne.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e4a:	6838      	ldr	r0, [r7, #0]
c0de2e4c:	f000 fa16 	bl	c0de327c <OUTLINED_FUNCTION_3>
c0de2e50:	2800      	cmp	r0, #0
c0de2e52:	d14a      	bne.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e54:	f104 070c 	add.w	r7, r4, #12
c0de2e58:	4620      	mov	r0, r4
c0de2e5a:	4639      	mov	r1, r7
c0de2e5c:	f7ff fdee 	bl	c0de2a3c <tEdwards_alloc>
c0de2e60:	2800      	cmp	r0, #0
c0de2e62:	d142      	bne.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e64:	9901      	ldr	r1, [sp, #4]
c0de2e66:	4620      	mov	r0, r4
c0de2e68:	465a      	mov	r2, fp
c0de2e6a:	463b      	mov	r3, r7
c0de2e6c:	f000 f856 	bl	c0de2f1c <tEdwards_init>
c0de2e70:	bbd8      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e72:	4627      	mov	r7, r4
c0de2e74:	4632      	mov	r2, r6
c0de2e76:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2e7a:	4638      	mov	r0, r7
c0de2e7c:	460b      	mov	r3, r1
c0de2e7e:	f004 fcc3 	bl	c0de7808 <cx_bn_alloc_init>
c0de2e82:	bb90      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e84:	6838      	ldr	r0, [r7, #0]
c0de2e86:	f000 f9f9 	bl	c0de327c <OUTLINED_FUNCTION_3>
c0de2e8a:	bb70      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e8c:	4626      	mov	r6, r4
c0de2e8e:	4652      	mov	r2, sl
c0de2e90:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2e94:	4630      	mov	r0, r6
c0de2e96:	460b      	mov	r3, r1
c0de2e98:	f004 fcb6 	bl	c0de7808 <cx_bn_alloc_init>
c0de2e9c:	bb28      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2e9e:	6830      	ldr	r0, [r6, #0]
c0de2ea0:	f000 f9ec 	bl	c0de327c <OUTLINED_FUNCTION_3>
c0de2ea4:	bb08      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2ea6:	4620      	mov	r0, r4
c0de2ea8:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2eac:	f004 fca2 	bl	c0de77f4 <cx_bn_alloc>
c0de2eb0:	b9d8      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2eb2:	f000 f9fb 	bl	c0de32ac <OUTLINED_FUNCTION_8>
c0de2eb6:	b9c0      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2eb8:	f000 f9e4 	bl	c0de3284 <OUTLINED_FUNCTION_4>
c0de2ebc:	b9a8      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2ebe:	f000 f9f0 	bl	c0de32a2 <OUTLINED_FUNCTION_7>
c0de2ec2:	b990      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2ec4:	f000 f9fc 	bl	c0de32c0 <OUTLINED_FUNCTION_10>
c0de2ec8:	b978      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2eca:	f000 f9e5 	bl	c0de3298 <OUTLINED_FUNCTION_6>
c0de2ece:	b960      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2ed0:	f000 f9f1 	bl	c0de32b6 <OUTLINED_FUNCTION_9>
c0de2ed4:	b948      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2ed6:	f000 f9da 	bl	c0de328e <OUTLINED_FUNCTION_5>
c0de2eda:	b930      	cbnz	r0, c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2edc:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2ee0:	4620      	mov	r0, r4
c0de2ee2:	f004 fc87 	bl	c0de77f4 <cx_bn_alloc>
c0de2ee6:	e000      	b.n	c0de2eea <tEdwards_Curve_alloc_init+0x1ae>
c0de2ee8:	4801      	ldr	r0, [pc, #4]	@ (c0de2ef0 <tEdwards_Curve_alloc_init+0x1b4>)
c0de2eea:	b052      	add	sp, #328	@ 0x148
c0de2eec:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2ef0:	5a4b4e01 	.word	0x5a4b4e01
c0de2ef4:	00005662 	.word	0x00005662
c0de2ef8:	00005894 	.word	0x00005894
c0de2efc:	00005844 	.word	0x00005844
c0de2f00:	00005736 	.word	0x00005736
c0de2f04:	000058a2 	.word	0x000058a2
c0de2f08:	000057f4 	.word	0x000057f4
c0de2f0c:	00005864 	.word	0x00005864
c0de2f10:	00005896 	.word	0x00005896
c0de2f14:	000058a6 	.word	0x000058a6
c0de2f18:	000056f8 	.word	0x000056f8

c0de2f1c <tEdwards_init>:
c0de2f1c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de2f1e:	6806      	ldr	r6, [r0, #0]
c0de2f20:	461c      	mov	r4, r3
c0de2f22:	4617      	mov	r7, r2
c0de2f24:	460a      	mov	r2, r1
c0de2f26:	4605      	mov	r5, r0
c0de2f28:	a802      	add	r0, sp, #8
c0de2f2a:	4631      	mov	r1, r6
c0de2f2c:	4633      	mov	r3, r6
c0de2f2e:	f004 fc6b 	bl	c0de7808 <cx_bn_alloc_init>
c0de2f32:	b100      	cbz	r0, c0de2f36 <tEdwards_init+0x1a>
c0de2f34:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2f36:	a801      	add	r0, sp, #4
c0de2f38:	4631      	mov	r1, r6
c0de2f3a:	463a      	mov	r2, r7
c0de2f3c:	4633      	mov	r3, r6
c0de2f3e:	f004 fc63 	bl	c0de7808 <cx_bn_alloc_init>
c0de2f42:	2800      	cmp	r0, #0
c0de2f44:	d1f6      	bne.n	c0de2f34 <tEdwards_init+0x18>
c0de2f46:	4668      	mov	r0, sp
c0de2f48:	4631      	mov	r1, r6
c0de2f4a:	f004 fc53 	bl	c0de77f4 <cx_bn_alloc>
c0de2f4e:	2800      	cmp	r0, #0
c0de2f50:	d1f0      	bne.n	c0de2f34 <tEdwards_init+0x18>
c0de2f52:	f105 0620 	add.w	r6, r5, #32
c0de2f56:	6820      	ldr	r0, [r4, #0]
c0de2f58:	9902      	ldr	r1, [sp, #8]
c0de2f5a:	4632      	mov	r2, r6
c0de2f5c:	f004 fd1e 	bl	c0de799c <cx_mont_to_montgomery>
c0de2f60:	2800      	cmp	r0, #0
c0de2f62:	d1e7      	bne.n	c0de2f34 <tEdwards_init+0x18>
c0de2f64:	6860      	ldr	r0, [r4, #4]
c0de2f66:	9901      	ldr	r1, [sp, #4]
c0de2f68:	4632      	mov	r2, r6
c0de2f6a:	f004 fd17 	bl	c0de799c <cx_mont_to_montgomery>
c0de2f6e:	2800      	cmp	r0, #0
c0de2f70:	d1e0      	bne.n	c0de2f34 <tEdwards_init+0x18>
c0de2f72:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2f74:	68a0      	ldr	r0, [r4, #8]
c0de2f76:	f004 fc73 	bl	c0de7860 <cx_bn_copy>
c0de2f7a:	2800      	cmp	r0, #0
c0de2f7c:	d1da      	bne.n	c0de2f34 <tEdwards_init+0x18>
c0de2f7e:	a802      	add	r0, sp, #8
c0de2f80:	f004 fc4e 	bl	c0de7820 <cx_bn_destroy>
c0de2f84:	2800      	cmp	r0, #0
c0de2f86:	d1d5      	bne.n	c0de2f34 <tEdwards_init+0x18>
c0de2f88:	a801      	add	r0, sp, #4
c0de2f8a:	f004 fc49 	bl	c0de7820 <cx_bn_destroy>
c0de2f8e:	2800      	cmp	r0, #0
c0de2f90:	d1d0      	bne.n	c0de2f34 <tEdwards_init+0x18>
c0de2f92:	4668      	mov	r0, sp
c0de2f94:	f004 fc44 	bl	c0de7820 <cx_bn_destroy>
c0de2f98:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2f9a <tEdwards_Curve_partial_destroy>:
c0de2f9a:	b510      	push	{r4, lr}
c0de2f9c:	4604      	mov	r4, r0
c0de2f9e:	302c      	adds	r0, #44	@ 0x2c
c0de2fa0:	f004 fc3e 	bl	c0de7820 <cx_bn_destroy>
c0de2fa4:	bbd8      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2fa6:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2faa:	f004 fc39 	bl	c0de7820 <cx_bn_destroy>
c0de2fae:	bbb0      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2fb0:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2fb4:	f004 fc34 	bl	c0de7820 <cx_bn_destroy>
c0de2fb8:	bb88      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2fba:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2fbe:	f004 fc2f 	bl	c0de7820 <cx_bn_destroy>
c0de2fc2:	bb60      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2fc4:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2fc8:	f004 fc2a 	bl	c0de7820 <cx_bn_destroy>
c0de2fcc:	bb38      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2fce:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2fd2:	f004 fc25 	bl	c0de7820 <cx_bn_destroy>
c0de2fd6:	bb10      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2fd8:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2fdc:	f004 fc20 	bl	c0de7820 <cx_bn_destroy>
c0de2fe0:	b9e8      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2fe2:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2fe6:	f004 fc1b 	bl	c0de7820 <cx_bn_destroy>
c0de2fea:	b9c0      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2fec:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de2ff0:	f004 fc16 	bl	c0de7820 <cx_bn_destroy>
c0de2ff4:	b998      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de2ff6:	f104 010c 	add.w	r1, r4, #12
c0de2ffa:	f7ff fd34 	bl	c0de2a66 <tEdwards_destroy>
c0de2ffe:	b970      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de3000:	f104 0018 	add.w	r0, r4, #24
c0de3004:	f004 fc0c 	bl	c0de7820 <cx_bn_destroy>
c0de3008:	b948      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de300a:	f104 001c 	add.w	r0, r4, #28
c0de300e:	f004 fc07 	bl	c0de7820 <cx_bn_destroy>
c0de3012:	b920      	cbnz	r0, c0de301e <tEdwards_Curve_partial_destroy+0x84>
c0de3014:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de3018:	f004 fc02 	bl	c0de7820 <cx_bn_destroy>
c0de301c:	b100      	cbz	r0, c0de3020 <tEdwards_Curve_partial_destroy+0x86>
c0de301e:	bd10      	pop	{r4, pc}
c0de3020:	f104 0008 	add.w	r0, r4, #8
c0de3024:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3028:	f004 bbfa 	b.w	c0de7820 <cx_bn_destroy>

c0de302c <tEdwards_SetNeutral>:
c0de302c:	b5b0      	push	{r4, r5, r7, lr}
c0de302e:	4605      	mov	r5, r0
c0de3030:	6808      	ldr	r0, [r1, #0]
c0de3032:	460c      	mov	r4, r1
c0de3034:	2100      	movs	r1, #0
c0de3036:	f004 fc1d 	bl	c0de7874 <cx_bn_set_u32>
c0de303a:	b918      	cbnz	r0, c0de3044 <tEdwards_SetNeutral+0x18>
c0de303c:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de303e:	f000 f944 	bl	c0de32ca <OUTLINED_FUNCTION_11>
c0de3042:	b100      	cbz	r0, c0de3046 <tEdwards_SetNeutral+0x1a>
c0de3044:	bdb0      	pop	{r4, r5, r7, pc}
c0de3046:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de3048:	68a0      	ldr	r0, [r4, #8]
c0de304a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de304e:	f004 bc07 	b.w	c0de7860 <cx_bn_copy>

c0de3052 <tEdwards_export>:
c0de3052:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3056:	4698      	mov	r8, r3
c0de3058:	4616      	mov	r6, r2
c0de305a:	460f      	mov	r7, r1
c0de305c:	4605      	mov	r5, r0
c0de305e:	f000 f81e 	bl	c0de309e <tEdwards_normalize>
c0de3062:	b998      	cbnz	r0, c0de308c <tEdwards_export+0x3a>
c0de3064:	f105 0420 	add.w	r4, r5, #32
c0de3068:	6839      	ldr	r1, [r7, #0]
c0de306a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de306c:	4622      	mov	r2, r4
c0de306e:	f004 fca1 	bl	c0de79b4 <cx_mont_from_montgomery>
c0de3072:	b958      	cbnz	r0, c0de308c <tEdwards_export+0x3a>
c0de3074:	6879      	ldr	r1, [r7, #4]
c0de3076:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de3078:	4622      	mov	r2, r4
c0de307a:	f004 fc9b 	bl	c0de79b4 <cx_mont_from_montgomery>
c0de307e:	b928      	cbnz	r0, c0de308c <tEdwards_export+0x3a>
c0de3080:	682a      	ldr	r2, [r5, #0]
c0de3082:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de3084:	4631      	mov	r1, r6
c0de3086:	f004 fbff 	bl	c0de7888 <cx_bn_export>
c0de308a:	b108      	cbz	r0, c0de3090 <tEdwards_export+0x3e>
c0de308c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3090:	682a      	ldr	r2, [r5, #0]
c0de3092:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de3094:	4641      	mov	r1, r8
c0de3096:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de309a:	f004 bbf5 	b.w	c0de7888 <cx_bn_export>

c0de309e <tEdwards_normalize>:
c0de309e:	b570      	push	{r4, r5, r6, lr}
c0de30a0:	4605      	mov	r5, r0
c0de30a2:	460c      	mov	r4, r1
c0de30a4:	6889      	ldr	r1, [r1, #8]
c0de30a6:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de30a8:	f105 0620 	add.w	r6, r5, #32
c0de30ac:	4632      	mov	r2, r6
c0de30ae:	f004 fca9 	bl	c0de7a04 <cx_mont_invert_nprime>
c0de30b2:	b9d0      	cbnz	r0, c0de30ea <tEdwards_normalize+0x4c>
c0de30b4:	6822      	ldr	r2, [r4, #0]
c0de30b6:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de30ba:	f000 f8d5 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de30be:	b9a0      	cbnz	r0, c0de30ea <tEdwards_normalize+0x4c>
c0de30c0:	6862      	ldr	r2, [r4, #4]
c0de30c2:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de30c4:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de30c6:	f000 f8cf 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de30ca:	b970      	cbnz	r0, c0de30ea <tEdwards_normalize+0x4c>
c0de30cc:	68a2      	ldr	r2, [r4, #8]
c0de30ce:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de30d0:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de30d2:	f000 f8c9 	bl	c0de3268 <OUTLINED_FUNCTION_0>
c0de30d6:	b940      	cbnz	r0, c0de30ea <tEdwards_normalize+0x4c>
c0de30d8:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de30da:	6820      	ldr	r0, [r4, #0]
c0de30dc:	f004 fbc0 	bl	c0de7860 <cx_bn_copy>
c0de30e0:	b918      	cbnz	r0, c0de30ea <tEdwards_normalize+0x4c>
c0de30e2:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de30e4:	f000 f8f1 	bl	c0de32ca <OUTLINED_FUNCTION_11>
c0de30e8:	b100      	cbz	r0, c0de30ec <tEdwards_normalize+0x4e>
c0de30ea:	bd70      	pop	{r4, r5, r6, pc}
c0de30ec:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de30ee:	68a0      	ldr	r0, [r4, #8]
c0de30f0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de30f4:	f004 bbb4 	b.w	c0de7860 <cx_bn_copy>

c0de30f8 <tEdwards_copy>:
c0de30f8:	b5b0      	push	{r4, r5, r7, lr}
c0de30fa:	460c      	mov	r4, r1
c0de30fc:	4605      	mov	r5, r0
c0de30fe:	6801      	ldr	r1, [r0, #0]
c0de3100:	6820      	ldr	r0, [r4, #0]
c0de3102:	f004 fbad 	bl	c0de7860 <cx_bn_copy>
c0de3106:	b918      	cbnz	r0, c0de3110 <tEdwards_copy+0x18>
c0de3108:	6869      	ldr	r1, [r5, #4]
c0de310a:	f000 f8de 	bl	c0de32ca <OUTLINED_FUNCTION_11>
c0de310e:	b100      	cbz	r0, c0de3112 <tEdwards_copy+0x1a>
c0de3110:	bdb0      	pop	{r4, r5, r7, pc}
c0de3112:	68a9      	ldr	r1, [r5, #8]
c0de3114:	68a0      	ldr	r0, [r4, #8]
c0de3116:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de311a:	f004 bba1 	b.w	c0de7860 <cx_bn_copy>

c0de311e <tEdwards_alloc_init>:
c0de311e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3120:	460e      	mov	r6, r1
c0de3122:	6801      	ldr	r1, [r0, #0]
c0de3124:	4607      	mov	r7, r0
c0de3126:	4618      	mov	r0, r3
c0de3128:	461c      	mov	r4, r3
c0de312a:	4615      	mov	r5, r2
c0de312c:	f004 fb62 	bl	c0de77f4 <cx_bn_alloc>
c0de3130:	b950      	cbnz	r0, c0de3148 <tEdwards_alloc_init+0x2a>
c0de3132:	6839      	ldr	r1, [r7, #0]
c0de3134:	1d20      	adds	r0, r4, #4
c0de3136:	f004 fb5d 	bl	c0de77f4 <cx_bn_alloc>
c0de313a:	b928      	cbnz	r0, c0de3148 <tEdwards_alloc_init+0x2a>
c0de313c:	6839      	ldr	r1, [r7, #0]
c0de313e:	f104 0008 	add.w	r0, r4, #8
c0de3142:	f004 fb57 	bl	c0de77f4 <cx_bn_alloc>
c0de3146:	b100      	cbz	r0, c0de314a <tEdwards_alloc_init+0x2c>
c0de3148:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de314a:	4638      	mov	r0, r7
c0de314c:	4631      	mov	r1, r6
c0de314e:	462a      	mov	r2, r5
c0de3150:	4623      	mov	r3, r4
c0de3152:	b001      	add	sp, #4
c0de3154:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3158:	f7ff bee0 	b.w	c0de2f1c <tEdwards_init>

c0de315c <tEdwards_scalarMul_bn>:
c0de315c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3160:	4607      	mov	r7, r0
c0de3162:	2000      	movs	r0, #0
c0de3164:	4688      	mov	r8, r1
c0de3166:	4615      	mov	r5, r2
c0de3168:	2100      	movs	r1, #0
c0de316a:	469b      	mov	fp, r3
c0de316c:	9003      	str	r0, [sp, #12]
c0de316e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de3172:	6810      	ldr	r0, [r2, #0]
c0de3174:	aa03      	add	r2, sp, #12
c0de3176:	f004 fb9f 	bl	c0de78b8 <cx_bn_cmp_u32>
c0de317a:	bb38      	cbnz	r0, c0de31cc <tEdwards_scalarMul_bn+0x70>
c0de317c:	9803      	ldr	r0, [sp, #12]
c0de317e:	b1d0      	cbz	r0, c0de31b6 <tEdwards_scalarMul_bn+0x5a>
c0de3180:	6828      	ldr	r0, [r5, #0]
c0de3182:	a901      	add	r1, sp, #4
c0de3184:	f004 fb56 	bl	c0de7834 <cx_bn_nbytes>
c0de3188:	bb00      	cbnz	r0, c0de31cc <tEdwards_scalarMul_bn+0x70>
c0de318a:	2002      	movs	r0, #2
c0de318c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de3190:	f10d 040b 	add.w	r4, sp, #11
c0de3194:	6538      	str	r0, [r7, #80]	@ 0x50
c0de3196:	9801      	ldr	r0, [sp, #4]
c0de3198:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de319c:	2000      	movs	r0, #0
c0de319e:	2801      	cmp	r0, #1
c0de31a0:	d00f      	beq.n	c0de31c2 <tEdwards_scalarMul_bn+0x66>
c0de31a2:	6828      	ldr	r0, [r5, #0]
c0de31a4:	4631      	mov	r1, r6
c0de31a6:	4622      	mov	r2, r4
c0de31a8:	f004 fb92 	bl	c0de78d0 <cx_bn_tst_bit>
c0de31ac:	b970      	cbnz	r0, c0de31cc <tEdwards_scalarMul_bn+0x70>
c0de31ae:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de31b2:	3e01      	subs	r6, #1
c0de31b4:	e7f3      	b.n	c0de319e <tEdwards_scalarMul_bn+0x42>
c0de31b6:	4638      	mov	r0, r7
c0de31b8:	4659      	mov	r1, fp
c0de31ba:	f7ff ff37 	bl	c0de302c <tEdwards_SetNeutral>
c0de31be:	b928      	cbnz	r0, c0de31cc <tEdwards_scalarMul_bn+0x70>
c0de31c0:	e7de      	b.n	c0de3180 <tEdwards_scalarMul_bn+0x24>
c0de31c2:	4640      	mov	r0, r8
c0de31c4:	4659      	mov	r1, fp
c0de31c6:	f7ff ff97 	bl	c0de30f8 <tEdwards_copy>
c0de31ca:	b110      	cbz	r0, c0de31d2 <tEdwards_scalarMul_bn+0x76>
c0de31cc:	b004      	add	sp, #16
c0de31ce:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de31d2:	2001      	movs	r0, #1
c0de31d4:	f10d 0a0b 	add.w	sl, sp, #11
c0de31d8:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de31dc:	2e00      	cmp	r6, #0
c0de31de:	d420      	bmi.n	c0de3222 <tEdwards_scalarMul_bn+0xc6>
c0de31e0:	4638      	mov	r0, r7
c0de31e2:	4659      	mov	r1, fp
c0de31e4:	465a      	mov	r2, fp
c0de31e6:	f7ff fc4f 	bl	c0de2a88 <tEdwards_double>
c0de31ea:	2800      	cmp	r0, #0
c0de31ec:	d1ee      	bne.n	c0de31cc <tEdwards_scalarMul_bn+0x70>
c0de31ee:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de31f0:	4631      	mov	r1, r6
c0de31f2:	4652      	mov	r2, sl
c0de31f4:	0040      	lsls	r0, r0, #1
c0de31f6:	6538      	str	r0, [r7, #80]	@ 0x50
c0de31f8:	6828      	ldr	r0, [r5, #0]
c0de31fa:	f004 fb69 	bl	c0de78d0 <cx_bn_tst_bit>
c0de31fe:	2800      	cmp	r0, #0
c0de3200:	d1e4      	bne.n	c0de31cc <tEdwards_scalarMul_bn+0x70>
c0de3202:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de3206:	b150      	cbz	r0, c0de321e <tEdwards_scalarMul_bn+0xc2>
c0de3208:	4638      	mov	r0, r7
c0de320a:	4659      	mov	r1, fp
c0de320c:	4642      	mov	r2, r8
c0de320e:	465b      	mov	r3, fp
c0de3210:	f7ff fca5 	bl	c0de2b5e <tEdwards_add>
c0de3214:	2800      	cmp	r0, #0
c0de3216:	d1d9      	bne.n	c0de31cc <tEdwards_scalarMul_bn+0x70>
c0de3218:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de321a:	3001      	adds	r0, #1
c0de321c:	6538      	str	r0, [r7, #80]	@ 0x50
c0de321e:	3e01      	subs	r6, #1
c0de3220:	e7dc      	b.n	c0de31dc <tEdwards_scalarMul_bn+0x80>
c0de3222:	2000      	movs	r0, #0
c0de3224:	e7d2      	b.n	c0de31cc <tEdwards_scalarMul_bn+0x70>
	...

c0de3228 <tEdwards_scalarMul>:
c0de3228:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de322a:	460c      	mov	r4, r1
c0de322c:	6801      	ldr	r1, [r0, #0]
c0de322e:	4299      	cmp	r1, r3
c0de3230:	bf3c      	itt	cc
c0de3232:	480c      	ldrcc	r0, [pc, #48]	@ (c0de3264 <tEdwards_scalarMul+0x3c>)
c0de3234:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de3236:	4605      	mov	r5, r0
c0de3238:	20ca      	movs	r0, #202	@ 0xca
c0de323a:	6528      	str	r0, [r5, #80]	@ 0x50
c0de323c:	a801      	add	r0, sp, #4
c0de323e:	f004 fae3 	bl	c0de7808 <cx_bn_alloc_init>
c0de3242:	b100      	cbz	r0, c0de3246 <tEdwards_scalarMul+0x1e>
c0de3244:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de3246:	20b3      	movs	r0, #179	@ 0xb3
c0de3248:	9b06      	ldr	r3, [sp, #24]
c0de324a:	4621      	mov	r1, r4
c0de324c:	6528      	str	r0, [r5, #80]	@ 0x50
c0de324e:	aa01      	add	r2, sp, #4
c0de3250:	4628      	mov	r0, r5
c0de3252:	f7ff ff83 	bl	c0de315c <tEdwards_scalarMul_bn>
c0de3256:	2800      	cmp	r0, #0
c0de3258:	d1f4      	bne.n	c0de3244 <tEdwards_scalarMul+0x1c>
c0de325a:	a801      	add	r0, sp, #4
c0de325c:	f004 fae0 	bl	c0de7820 <cx_bn_destroy>
c0de3260:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de3262:	bf00      	nop
c0de3264:	5a4b4e01 	.word	0x5a4b4e01

c0de3268 <OUTLINED_FUNCTION_0>:
c0de3268:	4633      	mov	r3, r6
c0de326a:	f004 bbaf 	b.w	c0de79cc <cx_mont_mul>

c0de326e <OUTLINED_FUNCTION_1>:
c0de326e:	462b      	mov	r3, r5
c0de3270:	f004 bbac 	b.w	c0de79cc <cx_mont_mul>

c0de3274 <OUTLINED_FUNCTION_2>:
c0de3274:	4633      	mov	r3, r6
c0de3276:	460a      	mov	r2, r1
c0de3278:	f004 bba8 	b.w	c0de79cc <cx_mont_mul>

c0de327c <OUTLINED_FUNCTION_3>:
c0de327c:	462a      	mov	r2, r5
c0de327e:	4601      	mov	r1, r0
c0de3280:	f004 bb8c 	b.w	c0de799c <cx_mont_to_montgomery>

c0de3284 <OUTLINED_FUNCTION_4>:
c0de3284:	4620      	mov	r0, r4
c0de3286:	f850 1b34 	ldr.w	r1, [r0], #52
c0de328a:	f004 bab3 	b.w	c0de77f4 <cx_bn_alloc>

c0de328e <OUTLINED_FUNCTION_5>:
c0de328e:	4620      	mov	r0, r4
c0de3290:	f850 1b48 	ldr.w	r1, [r0], #72
c0de3294:	f004 baae 	b.w	c0de77f4 <cx_bn_alloc>

c0de3298 <OUTLINED_FUNCTION_6>:
c0de3298:	4620      	mov	r0, r4
c0de329a:	f850 1b40 	ldr.w	r1, [r0], #64
c0de329e:	f004 baa9 	b.w	c0de77f4 <cx_bn_alloc>

c0de32a2 <OUTLINED_FUNCTION_7>:
c0de32a2:	4620      	mov	r0, r4
c0de32a4:	f850 1b38 	ldr.w	r1, [r0], #56
c0de32a8:	f004 baa4 	b.w	c0de77f4 <cx_bn_alloc>

c0de32ac <OUTLINED_FUNCTION_8>:
c0de32ac:	4620      	mov	r0, r4
c0de32ae:	f850 1b30 	ldr.w	r1, [r0], #48
c0de32b2:	f004 ba9f 	b.w	c0de77f4 <cx_bn_alloc>

c0de32b6 <OUTLINED_FUNCTION_9>:
c0de32b6:	4620      	mov	r0, r4
c0de32b8:	f850 1b44 	ldr.w	r1, [r0], #68
c0de32bc:	f004 ba9a 	b.w	c0de77f4 <cx_bn_alloc>

c0de32c0 <OUTLINED_FUNCTION_10>:
c0de32c0:	4620      	mov	r0, r4
c0de32c2:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de32c6:	f004 ba95 	b.w	c0de77f4 <cx_bn_alloc>

c0de32ca <OUTLINED_FUNCTION_11>:
c0de32ca:	6860      	ldr	r0, [r4, #4]
c0de32cc:	f004 bac8 	b.w	c0de7860 <cx_bn_copy>

c0de32d0 <grain_lfsr_advance>:
c0de32d0:	b5b0      	push	{r4, r5, r7, lr}
c0de32d2:	68c2      	ldr	r2, [r0, #12]
c0de32d4:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de32d8:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de32dc:	ea4f 0234 	mov.w	r2, r4, rrx
c0de32e0:	07e4      	lsls	r4, r4, #31
c0de32e2:	60c5      	str	r5, [r0, #12]
c0de32e4:	07dd      	lsls	r5, r3, #31
c0de32e6:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de32ea:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de32ee:	6044      	str	r4, [r0, #4]
c0de32f0:	4c15      	ldr	r4, [pc, #84]	@ (c0de3348 <grain_lfsr_advance+0x78>)
c0de32f2:	6005      	str	r5, [r0, #0]
c0de32f4:	4021      	ands	r1, r4
c0de32f6:	4c15      	ldr	r4, [pc, #84]	@ (c0de334c <grain_lfsr_advance+0x7c>)
c0de32f8:	4023      	ands	r3, r4
c0de32fa:	4419      	add	r1, r3
c0de32fc:	0c0c      	lsrs	r4, r1, #16
c0de32fe:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de3302:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de3306:	4421      	add	r1, r4
c0de3308:	0a0c      	lsrs	r4, r1, #8
c0de330a:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de330e:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de3312:	4061      	eors	r1, r4
c0de3314:	090c      	lsrs	r4, r1, #4
c0de3316:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de331a:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de331e:	4061      	eors	r1, r4
c0de3320:	088c      	lsrs	r4, r1, #2
c0de3322:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de3326:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de332a:	4061      	eors	r1, r4
c0de332c:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de3330:	ea4f 0331 	mov.w	r3, r1, rrx
c0de3334:	4059      	eors	r1, r3
c0de3336:	f001 0101 	and.w	r1, r1, #1
c0de333a:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de333e:	6082      	str	r2, [r0, #8]
c0de3340:	4608      	mov	r0, r1
c0de3342:	2100      	movs	r1, #0
c0de3344:	bdb0      	pop	{r4, r5, r7, pc}
c0de3346:	bf00      	nop
c0de3348:	00802001 	.word	0x00802001
c0de334c:	40080040 	.word	0x40080040

c0de3350 <next64_graingen>:
c0de3350:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de3354:	460c      	mov	r4, r1
c0de3356:	4605      	mov	r5, r0
c0de3358:	f04f 0a00 	mov.w	sl, #0
c0de335c:	f04f 0800 	mov.w	r8, #0
c0de3360:	2700      	movs	r7, #0
c0de3362:	42a7      	cmp	r7, r4
c0de3364:	d215      	bcs.n	c0de3392 <next64_graingen+0x42>
c0de3366:	4628      	mov	r0, r5
c0de3368:	f7ff ffb2 	bl	c0de32d0 <grain_lfsr_advance>
c0de336c:	4606      	mov	r6, r0
c0de336e:	4628      	mov	r0, r5
c0de3370:	f7ff ffae 	bl	c0de32d0 <grain_lfsr_advance>
c0de3374:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de3378:	0781      	lsls	r1, r0, #30
c0de337a:	d5f2      	bpl.n	c0de3362 <next64_graingen+0x12>
c0de337c:	f000 0001 	and.w	r0, r0, #1
c0de3380:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de3384:	3701      	adds	r7, #1
c0de3386:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de338a:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de338e:	4682      	mov	sl, r0
c0de3390:	e7e7      	b.n	c0de3362 <next64_graingen+0x12>
c0de3392:	4650      	mov	r0, sl
c0de3394:	4641      	mov	r1, r8
c0de3396:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de339c <init_generator>:
c0de339c:	b5b0      	push	{r4, r5, r7, lr}
c0de339e:	4a09      	ldr	r2, [pc, #36]	@ (c0de33c4 <init_generator+0x28>)
c0de33a0:	4b09      	ldr	r3, [pc, #36]	@ (c0de33c8 <init_generator+0x2c>)
c0de33a2:	4604      	mov	r4, r0
c0de33a4:	25a0      	movs	r5, #160	@ 0xa0
c0de33a6:	2000      	movs	r0, #0
c0de33a8:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de33ac:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de33b0:	e9c4 3200 	strd	r3, r2, [r4]
c0de33b4:	b125      	cbz	r5, c0de33c0 <init_generator+0x24>
c0de33b6:	4620      	mov	r0, r4
c0de33b8:	f7ff ff8a 	bl	c0de32d0 <grain_lfsr_advance>
c0de33bc:	3d01      	subs	r5, #1
c0de33be:	e7f9      	b.n	c0de33b4 <init_generator+0x18>
c0de33c0:	bdb0      	pop	{r4, r5, r7, pc}
c0de33c2:	bf00      	nop
c0de33c4:	fffcf010 	.word	0xfffcf010
c0de33c8:	1801fc02 	.word	0x1801fc02

c0de33cc <gen_integer>:
c0de33cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de33d0:	4f20      	ldr	r7, [pc, #128]	@ (c0de3454 <gen_integer+0x88>)
c0de33d2:	4e22      	ldr	r6, [pc, #136]	@ (c0de345c <gen_integer+0x90>)
c0de33d4:	4605      	mov	r5, r0
c0de33d6:	460c      	mov	r4, r1
c0de33d8:	2000      	movs	r0, #0
c0de33da:	46b8      	mov	r8, r7
c0de33dc:	4f1e      	ldr	r7, [pc, #120]	@ (c0de3458 <gen_integer+0x8c>)
c0de33de:	447e      	add	r6, pc
c0de33e0:	b9f8      	cbnz	r0, c0de3422 <gen_integer+0x56>
c0de33e2:	4628      	mov	r0, r5
c0de33e4:	213e      	movs	r1, #62	@ 0x3e
c0de33e6:	47b0      	blx	r6
c0de33e8:	e9c4 0100 	strd	r0, r1, [r4]
c0de33ec:	4628      	mov	r0, r5
c0de33ee:	2140      	movs	r1, #64	@ 0x40
c0de33f0:	47b0      	blx	r6
c0de33f2:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de33f6:	4628      	mov	r0, r5
c0de33f8:	2140      	movs	r1, #64	@ 0x40
c0de33fa:	47b0      	blx	r6
c0de33fc:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3400:	4628      	mov	r0, r5
c0de3402:	2140      	movs	r1, #64	@ 0x40
c0de3404:	47b0      	blx	r6
c0de3406:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de340a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de340e:	463a      	mov	r2, r7
c0de3410:	1bc0      	subs	r0, r0, r7
c0de3412:	4640      	mov	r0, r8
c0de3414:	eb71 0008 	sbcs.w	r0, r1, r8
c0de3418:	f04f 0000 	mov.w	r0, #0
c0de341c:	bf38      	it	cc
c0de341e:	2001      	movcc	r0, #1
c0de3420:	e7de      	b.n	c0de33e0 <gen_integer+0x14>
c0de3422:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de3426:	4d0e      	ldr	r5, [pc, #56]	@ (c0de3460 <gen_integer+0x94>)
c0de3428:	447d      	add	r5, pc
c0de342a:	47a8      	blx	r5
c0de342c:	e9c4 0100 	strd	r0, r1, [r4]
c0de3430:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de3434:	47a8      	blx	r5
c0de3436:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de343a:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de343e:	47a8      	blx	r5
c0de3440:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3444:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de3448:	47a8      	blx	r5
c0de344a:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de344e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3452:	bf00      	nop
c0de3454:	305a4b4e 	.word	0x305a4b4e
c0de3458:	4f582122 	.word	0x4f582122
c0de345c:	ffffff6f 	.word	0xffffff6f
c0de3460:	00000039 	.word	0x00000039

c0de3464 <rev64>:
c0de3464:	ba0a      	rev	r2, r1
c0de3466:	ba01      	rev	r1, r0
c0de3468:	4610      	mov	r0, r2
c0de346a:	4770      	bx	lr

c0de346c <Poseidon_getNext_RC>:
c0de346c:	30c0      	adds	r0, #192	@ 0xc0
c0de346e:	f7ff bfad 	b.w	c0de33cc <gen_integer>
	...

c0de3474 <Poseidon_alloc_init>:
c0de3474:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3478:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de347c:	4604      	mov	r4, r0
c0de347e:	30c0      	adds	r0, #192	@ 0xc0
c0de3480:	461e      	mov	r6, r3
c0de3482:	4617      	mov	r7, r2
c0de3484:	460d      	mov	r5, r1
c0de3486:	f7ff ff89 	bl	c0de339c <init_generator>
c0de348a:	492c      	ldr	r1, [pc, #176]	@ (c0de353c <Poseidon_alloc_init+0xc8>)
c0de348c:	46e8      	mov	r8, sp
c0de348e:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de3492:	4640      	mov	r0, r8
c0de3494:	4479      	add	r1, pc
c0de3496:	f004 fc63 	bl	c0de7d60 <__aeabi_memcpy>
c0de349a:	2000      	movs	r0, #0
c0de349c:	7325      	strb	r5, [r4, #12]
c0de349e:	6166      	str	r6, [r4, #20]
c0de34a0:	4621      	mov	r1, r4
c0de34a2:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de34a6:	1c78      	adds	r0, r7, #1
c0de34a8:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de34ac:	6830      	ldr	r0, [r6, #0]
c0de34ae:	f004 f9c1 	bl	c0de7834 <cx_bn_nbytes>
c0de34b2:	b930      	cbnz	r0, c0de34c2 <Poseidon_alloc_init+0x4e>
c0de34b4:	4620      	mov	r0, r4
c0de34b6:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de34ba:	4631      	mov	r1, r6
c0de34bc:	f004 f99a 	bl	c0de77f4 <cx_bn_alloc>
c0de34c0:	b118      	cbz	r0, c0de34ca <Poseidon_alloc_init+0x56>
c0de34c2:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de34c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de34ca:	68a0      	ldr	r0, [r4, #8]
c0de34cc:	2500      	movs	r5, #0
c0de34ce:	4285      	cmp	r5, r0
c0de34d0:	d230      	bcs.n	c0de3534 <Poseidon_alloc_init+0xc0>
c0de34d2:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de34d6:	4631      	mov	r1, r6
c0de34d8:	f107 0018 	add.w	r0, r7, #24
c0de34dc:	f004 f98a 	bl	c0de77f4 <cx_bn_alloc>
c0de34e0:	2800      	cmp	r0, #0
c0de34e2:	d1ee      	bne.n	c0de34c2 <Poseidon_alloc_init+0x4e>
c0de34e4:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de34e8:	4631      	mov	r1, r6
c0de34ea:	f004 f983 	bl	c0de77f4 <cx_bn_alloc>
c0de34ee:	2800      	cmp	r0, #0
c0de34f0:	d1e7      	bne.n	c0de34c2 <Poseidon_alloc_init+0x4e>
c0de34f2:	2700      	movs	r7, #0
c0de34f4:	68a0      	ldr	r0, [r4, #8]
c0de34f6:	4287      	cmp	r7, r0
c0de34f8:	d21a      	bcs.n	c0de3530 <Poseidon_alloc_init+0xbc>
c0de34fa:	fb05 7000 	mla	r0, r5, r0, r7
c0de34fe:	4631      	mov	r1, r6
c0de3500:	4633      	mov	r3, r6
c0de3502:	fb00 8206 	mla	r2, r0, r6, r8
c0de3506:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de350a:	3030      	adds	r0, #48	@ 0x30
c0de350c:	f004 f97c 	bl	c0de7808 <cx_bn_alloc_init>
c0de3510:	2800      	cmp	r0, #0
c0de3512:	d1d6      	bne.n	c0de34c2 <Poseidon_alloc_init+0x4e>
c0de3514:	68a0      	ldr	r0, [r4, #8]
c0de3516:	6962      	ldr	r2, [r4, #20]
c0de3518:	fb05 7000 	mla	r0, r5, r0, r7
c0de351c:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de3520:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de3522:	4601      	mov	r1, r0
c0de3524:	f004 fa3a 	bl	c0de799c <cx_mont_to_montgomery>
c0de3528:	3701      	adds	r7, #1
c0de352a:	2800      	cmp	r0, #0
c0de352c:	d0e2      	beq.n	c0de34f4 <Poseidon_alloc_init+0x80>
c0de352e:	e7c8      	b.n	c0de34c2 <Poseidon_alloc_init+0x4e>
c0de3530:	3501      	adds	r5, #1
c0de3532:	e7cc      	b.n	c0de34ce <Poseidon_alloc_init+0x5a>
c0de3534:	2001      	movs	r0, #1
c0de3536:	6120      	str	r0, [r4, #16]
c0de3538:	2000      	movs	r0, #0
c0de353a:	e7c2      	b.n	c0de34c2 <Poseidon_alloc_init+0x4e>
c0de353c:	000059ac 	.word	0x000059ac

c0de3540 <Poseidon>:
c0de3540:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3544:	b08c      	sub	sp, #48	@ 0x30
c0de3546:	4606      	mov	r6, r0
c0de3548:	6900      	ldr	r0, [r0, #16]
c0de354a:	2801      	cmp	r0, #1
c0de354c:	f040 80b4 	bne.w	c0de36b8 <Poseidon+0x178>
c0de3550:	69b0      	ldr	r0, [r6, #24]
c0de3552:	461f      	mov	r7, r3
c0de3554:	4692      	mov	sl, r2
c0de3556:	f004 f98d 	bl	c0de7874 <cx_bn_set_u32>
c0de355a:	2800      	cmp	r0, #0
c0de355c:	f040 80ad 	bne.w	c0de36ba <Poseidon+0x17a>
c0de3560:	f106 000c 	add.w	r0, r6, #12
c0de3564:	f106 0818 	add.w	r8, r6, #24
c0de3568:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de356c:	9001      	str	r0, [sp, #4]
c0de356e:	2000      	movs	r0, #0
c0de3570:	2844      	cmp	r0, #68	@ 0x44
c0de3572:	f000 80ae 	beq.w	c0de36d2 <Poseidon+0x192>
c0de3576:	6834      	ldr	r4, [r6, #0]
c0de3578:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de357c:	f04f 0a00 	mov.w	sl, #0
c0de3580:	68b0      	ldr	r0, [r6, #8]
c0de3582:	4582      	cmp	sl, r0
c0de3584:	d224      	bcs.n	c0de35d0 <Poseidon+0x90>
c0de3586:	ad04      	add	r5, sp, #16
c0de3588:	4658      	mov	r0, fp
c0de358a:	4629      	mov	r1, r5
c0de358c:	f7ff ff1e 	bl	c0de33cc <gen_integer>
c0de3590:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3594:	4629      	mov	r1, r5
c0de3596:	4622      	mov	r2, r4
c0de3598:	f004 f956 	bl	c0de7848 <cx_bn_init>
c0de359c:	2800      	cmp	r0, #0
c0de359e:	f040 808c 	bne.w	c0de36ba <Poseidon+0x17a>
c0de35a2:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de35a6:	6972      	ldr	r2, [r6, #20]
c0de35a8:	4601      	mov	r1, r0
c0de35aa:	f004 f9f7 	bl	c0de799c <cx_mont_to_montgomery>
c0de35ae:	2800      	cmp	r0, #0
c0de35b0:	f040 8083 	bne.w	c0de36ba <Poseidon+0x17a>
c0de35b4:	6972      	ldr	r2, [r6, #20]
c0de35b6:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de35ba:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de35be:	6813      	ldr	r3, [r2, #0]
c0de35c0:	4602      	mov	r2, r0
c0de35c2:	f004 f991 	bl	c0de78e8 <cx_bn_mod_add>
c0de35c6:	f10a 0a01 	add.w	sl, sl, #1
c0de35ca:	2800      	cmp	r0, #0
c0de35cc:	d0d8      	beq.n	c0de3580 <Poseidon+0x40>
c0de35ce:	e074      	b.n	c0de36ba <Poseidon+0x17a>
c0de35d0:	9902      	ldr	r1, [sp, #8]
c0de35d2:	2904      	cmp	r1, #4
c0de35d4:	d301      	bcc.n	c0de35da <Poseidon+0x9a>
c0de35d6:	2940      	cmp	r1, #64	@ 0x40
c0de35d8:	d323      	bcc.n	c0de3622 <Poseidon+0xe2>
c0de35da:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de35de:	2400      	movs	r4, #0
c0de35e0:	4284      	cmp	r4, r0
c0de35e2:	d22b      	bcs.n	c0de363c <Poseidon+0xfc>
c0de35e4:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de35e8:	6973      	ldr	r3, [r6, #20]
c0de35ea:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de35ee:	460a      	mov	r2, r1
c0de35f0:	f004 f9ec 	bl	c0de79cc <cx_mont_mul>
c0de35f4:	2800      	cmp	r0, #0
c0de35f6:	d160      	bne.n	c0de36ba <Poseidon+0x17a>
c0de35f8:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de35fc:	6973      	ldr	r3, [r6, #20]
c0de35fe:	460a      	mov	r2, r1
c0de3600:	f004 f9e4 	bl	c0de79cc <cx_mont_mul>
c0de3604:	2800      	cmp	r0, #0
c0de3606:	d158      	bne.n	c0de36ba <Poseidon+0x17a>
c0de3608:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de360c:	6973      	ldr	r3, [r6, #20]
c0de360e:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de3612:	4601      	mov	r1, r0
c0de3614:	f004 f9da 	bl	c0de79cc <cx_mont_mul>
c0de3618:	2800      	cmp	r0, #0
c0de361a:	d14e      	bne.n	c0de36ba <Poseidon+0x17a>
c0de361c:	68b0      	ldr	r0, [r6, #8]
c0de361e:	3401      	adds	r4, #1
c0de3620:	e7de      	b.n	c0de35e0 <Poseidon+0xa0>
c0de3622:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de3626:	9a01      	ldr	r2, [sp, #4]
c0de3628:	2301      	movs	r3, #1
c0de362a:	9100      	str	r1, [sp, #0]
c0de362c:	4601      	mov	r1, r0
c0de362e:	f004 f9d9 	bl	c0de79e4 <cx_mont_pow>
c0de3632:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3636:	2800      	cmp	r0, #0
c0de3638:	d13f      	bne.n	c0de36ba <Poseidon+0x17a>
c0de363a:	68b0      	ldr	r0, [r6, #8]
c0de363c:	2500      	movs	r5, #0
c0de363e:	4285      	cmp	r5, r0
c0de3640:	d229      	bcs.n	c0de3696 <Poseidon+0x156>
c0de3642:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de3646:	2100      	movs	r1, #0
c0de3648:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de364c:	f004 f912 	bl	c0de7874 <cx_bn_set_u32>
c0de3650:	bb98      	cbnz	r0, c0de36ba <Poseidon+0x17a>
c0de3652:	9503      	str	r5, [sp, #12]
c0de3654:	2500      	movs	r5, #0
c0de3656:	68b0      	ldr	r0, [r6, #8]
c0de3658:	4285      	cmp	r5, r0
c0de365a:	d219      	bcs.n	c0de3690 <Poseidon+0x150>
c0de365c:	9903      	ldr	r1, [sp, #12]
c0de365e:	6973      	ldr	r3, [r6, #20]
c0de3660:	fb01 5000 	mla	r0, r1, r0, r5
c0de3664:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3668:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de366c:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de366e:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de3672:	f004 f9ab 	bl	c0de79cc <cx_mont_mul>
c0de3676:	bb00      	cbnz	r0, c0de36ba <Poseidon+0x17a>
c0de3678:	6971      	ldr	r1, [r6, #20]
c0de367a:	6820      	ldr	r0, [r4, #0]
c0de367c:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de3680:	680b      	ldr	r3, [r1, #0]
c0de3682:	4601      	mov	r1, r0
c0de3684:	f004 f930 	bl	c0de78e8 <cx_bn_mod_add>
c0de3688:	3501      	adds	r5, #1
c0de368a:	2800      	cmp	r0, #0
c0de368c:	d0e3      	beq.n	c0de3656 <Poseidon+0x116>
c0de368e:	e014      	b.n	c0de36ba <Poseidon+0x17a>
c0de3690:	9d03      	ldr	r5, [sp, #12]
c0de3692:	3501      	adds	r5, #1
c0de3694:	e7d3      	b.n	c0de363e <Poseidon+0xfe>
c0de3696:	2400      	movs	r4, #0
c0de3698:	4284      	cmp	r4, r0
c0de369a:	d20a      	bcs.n	c0de36b2 <Poseidon+0x172>
c0de369c:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de36a0:	6988      	ldr	r0, [r1, #24]
c0de36a2:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de36a6:	f004 f8db 	bl	c0de7860 <cx_bn_copy>
c0de36aa:	b930      	cbnz	r0, c0de36ba <Poseidon+0x17a>
c0de36ac:	68b0      	ldr	r0, [r6, #8]
c0de36ae:	3401      	adds	r4, #1
c0de36b0:	e7f2      	b.n	c0de3698 <Poseidon+0x158>
c0de36b2:	9802      	ldr	r0, [sp, #8]
c0de36b4:	3001      	adds	r0, #1
c0de36b6:	e75b      	b.n	c0de3570 <Poseidon+0x30>
c0de36b8:	4808      	ldr	r0, [pc, #32]	@ (c0de36dc <Poseidon+0x19c>)
c0de36ba:	b00c      	add	sp, #48	@ 0x30
c0de36bc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de36c0:	f858 1b04 	ldr.w	r1, [r8], #4
c0de36c4:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de36c8:	f004 f8ca 	bl	c0de7860 <cx_bn_copy>
c0de36cc:	3f01      	subs	r7, #1
c0de36ce:	2800      	cmp	r0, #0
c0de36d0:	d1f3      	bne.n	c0de36ba <Poseidon+0x17a>
c0de36d2:	2f00      	cmp	r7, #0
c0de36d4:	d1f4      	bne.n	c0de36c0 <Poseidon+0x180>
c0de36d6:	2000      	movs	r0, #0
c0de36d8:	e7ef      	b.n	c0de36ba <Poseidon+0x17a>
c0de36da:	bf00      	nop
c0de36dc:	5a4b4e02 	.word	0x5a4b4e02

c0de36e0 <RFC9591_taggedHash>:
c0de36e0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de36e2:	b0d9      	sub	sp, #356	@ 0x164
c0de36e4:	460e      	mov	r6, r1
c0de36e6:	4607      	mov	r7, r0
c0de36e8:	a858      	add	r0, sp, #352	@ 0x160
c0de36ea:	2140      	movs	r1, #64	@ 0x40
c0de36ec:	461c      	mov	r4, r3
c0de36ee:	4615      	mov	r5, r2
c0de36f0:	f004 f880 	bl	c0de77f4 <cx_bn_alloc>
c0de36f4:	bbd8      	cbnz	r0, c0de376e <RFC9591_taggedHash+0x8e>
c0de36f6:	491f      	ldr	r1, [pc, #124]	@ (c0de3774 <RFC9591_taggedHash+0x94>)
c0de36f8:	4668      	mov	r0, sp
c0de36fa:	221d      	movs	r2, #29
c0de36fc:	4479      	add	r1, pc
c0de36fe:	f004 fb2f 	bl	c0de7d60 <__aeabi_memcpy>
c0de3702:	a808      	add	r0, sp, #32
c0de3704:	2109      	movs	r1, #9
c0de3706:	2240      	movs	r2, #64	@ 0x40
c0de3708:	f003 fdfe 	bl	c0de7308 <cx_hash_init_ex>
c0de370c:	bb78      	cbnz	r0, c0de376e <RFC9591_taggedHash+0x8e>
c0de370e:	a808      	add	r0, sp, #32
c0de3710:	4669      	mov	r1, sp
c0de3712:	221d      	movs	r2, #29
c0de3714:	f003 fdfd 	bl	c0de7312 <cx_hash_update>
c0de3718:	bb48      	cbnz	r0, c0de376e <RFC9591_taggedHash+0x8e>
c0de371a:	a808      	add	r0, sp, #32
c0de371c:	4639      	mov	r1, r7
c0de371e:	4632      	mov	r2, r6
c0de3720:	f003 fdf7 	bl	c0de7312 <cx_hash_update>
c0de3724:	bb18      	cbnz	r0, c0de376e <RFC9591_taggedHash+0x8e>
c0de3726:	a808      	add	r0, sp, #32
c0de3728:	4629      	mov	r1, r5
c0de372a:	4622      	mov	r2, r4
c0de372c:	f003 fdf1 	bl	c0de7312 <cx_hash_update>
c0de3730:	b9e8      	cbnz	r0, c0de376e <RFC9591_taggedHash+0x8e>
c0de3732:	a808      	add	r0, sp, #32
c0de3734:	ae48      	add	r6, sp, #288	@ 0x120
c0de3736:	4631      	mov	r1, r6
c0de3738:	f003 fde1 	bl	c0de72fe <cx_hash_final>
c0de373c:	b9b8      	cbnz	r0, c0de376e <RFC9591_taggedHash+0x8e>
c0de373e:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de3742:	2000      	movs	r0, #0
c0de3744:	213f      	movs	r1, #63	@ 0x3f
c0de3746:	2820      	cmp	r0, #32
c0de3748:	d002      	beq.n	c0de3750 <RFC9591_taggedHash+0x70>
c0de374a:	f000 f8dd 	bl	c0de3908 <OUTLINED_FUNCTION_3>
c0de374e:	e7fa      	b.n	c0de3746 <RFC9591_taggedHash+0x66>
c0de3750:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de3752:	a948      	add	r1, sp, #288	@ 0x120
c0de3754:	2240      	movs	r2, #64	@ 0x40
c0de3756:	f004 f877 	bl	c0de7848 <cx_bn_init>
c0de375a:	b940      	cbnz	r0, c0de376e <RFC9591_taggedHash+0x8e>
c0de375c:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de375e:	4628      	mov	r0, r5
c0de3760:	4622      	mov	r2, r4
c0de3762:	f004 f8e5 	bl	c0de7930 <cx_bn_reduce>
c0de3766:	b910      	cbnz	r0, c0de376e <RFC9591_taggedHash+0x8e>
c0de3768:	a858      	add	r0, sp, #352	@ 0x160
c0de376a:	f004 f859 	bl	c0de7820 <cx_bn_destroy>
c0de376e:	b059      	add	sp, #356	@ 0x164
c0de3770:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3772:	bf00      	nop
c0de3774:	00005bc4 	.word	0x00005bc4

c0de3778 <Babyfrost_H1>:
c0de3778:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de377a:	4605      	mov	r5, r0
c0de377c:	206f      	movs	r0, #111	@ 0x6f
c0de377e:	f000 f8b7 	bl	c0de38f0 <OUTLINED_FUNCTION_1>
c0de3782:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3786:	f000 f8ba 	bl	c0de38fe <OUTLINED_FUNCTION_2>
c0de378a:	a803      	add	r0, sp, #12
c0de378c:	f7ff ffa8 	bl	c0de36e0 <RFC9591_taggedHash>
c0de3790:	b004      	add	sp, #16
c0de3792:	bdb0      	pop	{r4, r5, r7, pc}

c0de3794 <Babyfrost_H3>:
c0de3794:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3796:	4605      	mov	r5, r0
c0de3798:	2065      	movs	r0, #101	@ 0x65
c0de379a:	460c      	mov	r4, r1
c0de379c:	e9cd 2300 	strd	r2, r3, [sp]
c0de37a0:	2105      	movs	r1, #5
c0de37a2:	f88d 000c 	strb.w	r0, [sp, #12]
c0de37a6:	4804      	ldr	r0, [pc, #16]	@ (c0de37b8 <Babyfrost_H3+0x24>)
c0de37a8:	462a      	mov	r2, r5
c0de37aa:	4623      	mov	r3, r4
c0de37ac:	9002      	str	r0, [sp, #8]
c0de37ae:	a802      	add	r0, sp, #8
c0de37b0:	f7ff ff96 	bl	c0de36e0 <RFC9591_taggedHash>
c0de37b4:	b004      	add	sp, #16
c0de37b6:	bdb0      	pop	{r4, r5, r7, pc}
c0de37b8:	636e6f6e 	.word	0x636e6f6e

c0de37bc <Babyfrost_H4>:
c0de37bc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de37be:	4605      	mov	r5, r0
c0de37c0:	2067      	movs	r0, #103	@ 0x67
c0de37c2:	f000 f895 	bl	c0de38f0 <OUTLINED_FUNCTION_1>
c0de37c6:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de37ca:	f000 f898 	bl	c0de38fe <OUTLINED_FUNCTION_2>
c0de37ce:	a803      	add	r0, sp, #12
c0de37d0:	f7ff ff86 	bl	c0de36e0 <RFC9591_taggedHash>
c0de37d4:	b004      	add	sp, #16
c0de37d6:	bdb0      	pop	{r4, r5, r7, pc}

c0de37d8 <Babyfrost_H5>:
c0de37d8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de37da:	4605      	mov	r5, r0
c0de37dc:	206d      	movs	r0, #109	@ 0x6d
c0de37de:	f000 f887 	bl	c0de38f0 <OUTLINED_FUNCTION_1>
c0de37e2:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de37e6:	f000 f88a 	bl	c0de38fe <OUTLINED_FUNCTION_2>
c0de37ea:	a803      	add	r0, sp, #12
c0de37ec:	f7ff ff78 	bl	c0de36e0 <RFC9591_taggedHash>
c0de37f0:	b004      	add	sp, #16
c0de37f2:	bdb0      	pop	{r4, r5, r7, pc}

c0de37f4 <zkn_frost_hash_init>:
c0de37f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de37f6:	461d      	mov	r5, r3
c0de37f8:	4604      	mov	r4, r0
c0de37fa:	f003 fd85 	bl	c0de7308 <cx_hash_init_ex>
c0de37fe:	b938      	cbnz	r0, c0de3810 <zkn_frost_hash_init+0x1c>
c0de3800:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de3804:	9e08      	ldr	r6, [sp, #32]
c0de3806:	4620      	mov	r0, r4
c0de3808:	4629      	mov	r1, r5
c0de380a:	f003 fd82 	bl	c0de7312 <cx_hash_update>
c0de380e:	b100      	cbz	r0, c0de3812 <zkn_frost_hash_init+0x1e>
c0de3810:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3812:	4620      	mov	r0, r4
c0de3814:	4639      	mov	r1, r7
c0de3816:	4632      	mov	r2, r6
c0de3818:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de381c:	f003 bd79 	b.w	c0de7312 <cx_hash_update>

c0de3820 <zkn_frost_H1_init>:
c0de3820:	b570      	push	{r4, r5, r6, lr}
c0de3822:	b08c      	sub	sp, #48	@ 0x30
c0de3824:	4604      	mov	r4, r0
c0de3826:	206f      	movs	r0, #111	@ 0x6f
c0de3828:	221d      	movs	r2, #29
c0de382a:	261d      	movs	r6, #29
c0de382c:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3830:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3834:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3838:	ad03      	add	r5, sp, #12
c0de383a:	4905      	ldr	r1, [pc, #20]	@ (c0de3850 <zkn_frost_H1_init+0x30>)
c0de383c:	4628      	mov	r0, r5
c0de383e:	4479      	add	r1, pc
c0de3840:	f004 fa8e 	bl	c0de7d60 <__aeabi_memcpy>
c0de3844:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3846:	f000 f849 	bl	c0de38dc <OUTLINED_FUNCTION_0>
c0de384a:	b00c      	add	sp, #48	@ 0x30
c0de384c:	bd70      	pop	{r4, r5, r6, pc}
c0de384e:	bf00      	nop
c0de3850:	00005a82 	.word	0x00005a82

c0de3854 <zkn_frost_H5_init>:
c0de3854:	b570      	push	{r4, r5, r6, lr}
c0de3856:	b08c      	sub	sp, #48	@ 0x30
c0de3858:	4604      	mov	r4, r0
c0de385a:	206d      	movs	r0, #109	@ 0x6d
c0de385c:	221d      	movs	r2, #29
c0de385e:	261d      	movs	r6, #29
c0de3860:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3864:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3868:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de386c:	ad03      	add	r5, sp, #12
c0de386e:	4905      	ldr	r1, [pc, #20]	@ (c0de3884 <zkn_frost_H5_init+0x30>)
c0de3870:	4628      	mov	r0, r5
c0de3872:	4479      	add	r1, pc
c0de3874:	f004 fa74 	bl	c0de7d60 <__aeabi_memcpy>
c0de3878:	a90b      	add	r1, sp, #44	@ 0x2c
c0de387a:	f000 f82f 	bl	c0de38dc <OUTLINED_FUNCTION_0>
c0de387e:	b00c      	add	sp, #48	@ 0x30
c0de3880:	bd70      	pop	{r4, r5, r6, pc}
c0de3882:	bf00      	nop
c0de3884:	00005a4e 	.word	0x00005a4e

c0de3888 <zkn_frost_hash_update>:
c0de3888:	f003 bd43 	b.w	c0de7312 <cx_hash_update>

c0de388c <zkn_frost_hash_final>:
c0de388c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de388e:	b091      	sub	sp, #68	@ 0x44
c0de3890:	460c      	mov	r4, r1
c0de3892:	4607      	mov	r7, r0
c0de3894:	a810      	add	r0, sp, #64	@ 0x40
c0de3896:	2140      	movs	r1, #64	@ 0x40
c0de3898:	4615      	mov	r5, r2
c0de389a:	f003 ffab 	bl	c0de77f4 <cx_bn_alloc>
c0de389e:	b9d8      	cbnz	r0, c0de38d8 <zkn_frost_hash_final+0x4c>
c0de38a0:	466e      	mov	r6, sp
c0de38a2:	4638      	mov	r0, r7
c0de38a4:	4631      	mov	r1, r6
c0de38a6:	f003 fd2a 	bl	c0de72fe <cx_hash_final>
c0de38aa:	b9a8      	cbnz	r0, c0de38d8 <zkn_frost_hash_final+0x4c>
c0de38ac:	2000      	movs	r0, #0
c0de38ae:	213f      	movs	r1, #63	@ 0x3f
c0de38b0:	2820      	cmp	r0, #32
c0de38b2:	d002      	beq.n	c0de38ba <zkn_frost_hash_final+0x2e>
c0de38b4:	f000 f828 	bl	c0de3908 <OUTLINED_FUNCTION_3>
c0de38b8:	e7fa      	b.n	c0de38b0 <zkn_frost_hash_final+0x24>
c0de38ba:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de38bc:	4669      	mov	r1, sp
c0de38be:	2240      	movs	r2, #64	@ 0x40
c0de38c0:	f003 ffc2 	bl	c0de7848 <cx_bn_init>
c0de38c4:	b940      	cbnz	r0, c0de38d8 <zkn_frost_hash_final+0x4c>
c0de38c6:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de38c8:	4628      	mov	r0, r5
c0de38ca:	4622      	mov	r2, r4
c0de38cc:	f004 f830 	bl	c0de7930 <cx_bn_reduce>
c0de38d0:	b910      	cbnz	r0, c0de38d8 <zkn_frost_hash_final+0x4c>
c0de38d2:	a810      	add	r0, sp, #64	@ 0x40
c0de38d4:	f003 ffa4 	bl	c0de7820 <cx_bn_destroy>
c0de38d8:	b011      	add	sp, #68	@ 0x44
c0de38da:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de38dc <OUTLINED_FUNCTION_0>:
c0de38dc:	2003      	movs	r0, #3
c0de38de:	2240      	movs	r2, #64	@ 0x40
c0de38e0:	462b      	mov	r3, r5
c0de38e2:	e9cd 6100 	strd	r6, r1, [sp]
c0de38e6:	9002      	str	r0, [sp, #8]
c0de38e8:	4620      	mov	r0, r4
c0de38ea:	2109      	movs	r1, #9
c0de38ec:	f7ff bf82 	b.w	c0de37f4 <zkn_frost_hash_init>

c0de38f0 <OUTLINED_FUNCTION_1>:
c0de38f0:	460c      	mov	r4, r1
c0de38f2:	e9cd 2300 	strd	r2, r3, [sp]
c0de38f6:	2103      	movs	r1, #3
c0de38f8:	f88d 000e 	strb.w	r0, [sp, #14]
c0de38fc:	4770      	bx	lr

c0de38fe <OUTLINED_FUNCTION_2>:
c0de38fe:	462a      	mov	r2, r5
c0de3900:	4623      	mov	r3, r4
c0de3902:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de3906:	4770      	bx	lr

c0de3908 <OUTLINED_FUNCTION_3>:
c0de3908:	5c32      	ldrb	r2, [r6, r0]
c0de390a:	5c73      	ldrb	r3, [r6, r1]
c0de390c:	5433      	strb	r3, [r6, r0]
c0de390e:	5472      	strb	r2, [r6, r1]
c0de3910:	3901      	subs	r1, #1
c0de3912:	3001      	adds	r0, #1
c0de3914:	4770      	bx	lr

c0de3916 <os_io_handle_default_apdu>:
c0de3916:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3918:	b09d      	sub	sp, #116	@ 0x74
c0de391a:	4615      	mov	r5, r2
c0de391c:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de391e:	b3c8      	cbz	r0, c0de3994 <os_io_handle_default_apdu+0x7e>
c0de3920:	b3c1      	cbz	r1, c0de3994 <os_io_handle_default_apdu+0x7e>
c0de3922:	b3bd      	cbz	r5, c0de3994 <os_io_handle_default_apdu+0x7e>
c0de3924:	461c      	mov	r4, r3
c0de3926:	b3ab      	cbz	r3, c0de3994 <os_io_handle_default_apdu+0x7e>
c0de3928:	b10a      	cbz	r2, c0de392e <os_io_handle_default_apdu+0x18>
c0de392a:	2100      	movs	r1, #0
c0de392c:	7011      	strb	r1, [r2, #0]
c0de392e:	7801      	ldrb	r1, [r0, #0]
c0de3930:	29b0      	cmp	r1, #176	@ 0xb0
c0de3932:	d131      	bne.n	c0de3998 <os_io_handle_default_apdu+0x82>
c0de3934:	7841      	ldrb	r1, [r0, #1]
c0de3936:	29a7      	cmp	r1, #167	@ 0xa7
c0de3938:	d031      	beq.n	c0de399e <os_io_handle_default_apdu+0x88>
c0de393a:	2906      	cmp	r1, #6
c0de393c:	d036      	beq.n	c0de39ac <os_io_handle_default_apdu+0x96>
c0de393e:	2901      	cmp	r1, #1
c0de3940:	d131      	bne.n	c0de39a6 <os_io_handle_default_apdu+0x90>
c0de3942:	7881      	ldrb	r1, [r0, #2]
c0de3944:	bb79      	cbnz	r1, c0de39a6 <os_io_handle_default_apdu+0x90>
c0de3946:	78c0      	ldrb	r0, [r0, #3]
c0de3948:	bb68      	cbnz	r0, c0de39a6 <os_io_handle_default_apdu+0x90>
c0de394a:	6820      	ldr	r0, [r4, #0]
c0de394c:	2100      	movs	r1, #0
c0de394e:	6021      	str	r1, [r4, #0]
c0de3950:	2803      	cmp	r0, #3
c0de3952:	d321      	bcc.n	c0de3998 <os_io_handle_default_apdu+0x82>
c0de3954:	2601      	movs	r6, #1
c0de3956:	1ec7      	subs	r7, r0, #3
c0de3958:	6026      	str	r6, [r4, #0]
c0de395a:	702e      	strb	r6, [r5, #0]
c0de395c:	6820      	ldr	r0, [r4, #0]
c0de395e:	1a3a      	subs	r2, r7, r0
c0de3960:	4428      	add	r0, r5
c0de3962:	1c41      	adds	r1, r0, #1
c0de3964:	2001      	movs	r0, #1
c0de3966:	f004 f8b3 	bl	c0de7ad0 <os_registry_get_current_app_tag>
c0de396a:	f000 f83f 	bl	c0de39ec <OUTLINED_FUNCTION_0>
c0de396e:	6020      	str	r0, [r4, #0]
c0de3970:	1a3a      	subs	r2, r7, r0
c0de3972:	4428      	add	r0, r5
c0de3974:	1c41      	adds	r1, r0, #1
c0de3976:	2002      	movs	r0, #2
c0de3978:	f004 f8aa 	bl	c0de7ad0 <os_registry_get_current_app_tag>
c0de397c:	f000 f836 	bl	c0de39ec <OUTLINED_FUNCTION_0>
c0de3980:	1c41      	adds	r1, r0, #1
c0de3982:	6021      	str	r1, [r4, #0]
c0de3984:	542e      	strb	r6, [r5, r0]
c0de3986:	f004 f89b 	bl	c0de7ac0 <os_flags>
c0de398a:	6821      	ldr	r1, [r4, #0]
c0de398c:	1c4a      	adds	r2, r1, #1
c0de398e:	6022      	str	r2, [r4, #0]
c0de3990:	5468      	strb	r0, [r5, r1]
c0de3992:	e028      	b.n	c0de39e6 <os_io_handle_default_apdu+0xd0>
c0de3994:	7814      	ldrb	r4, [r2, #0]
c0de3996:	e01e      	b.n	c0de39d6 <os_io_handle_default_apdu+0xc0>
c0de3998:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de399c:	e01b      	b.n	c0de39d6 <os_io_handle_default_apdu+0xc0>
c0de399e:	7881      	ldrb	r1, [r0, #2]
c0de39a0:	b909      	cbnz	r1, c0de39a6 <os_io_handle_default_apdu+0x90>
c0de39a2:	78c0      	ldrb	r0, [r0, #3]
c0de39a4:	b1d0      	cbz	r0, c0de39dc <os_io_handle_default_apdu+0xc6>
c0de39a6:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de39aa:	e014      	b.n	c0de39d6 <os_io_handle_default_apdu+0xc0>
c0de39ac:	2100      	movs	r1, #0
c0de39ae:	6021      	str	r1, [r4, #0]
c0de39b0:	7883      	ldrb	r3, [r0, #2]
c0de39b2:	7902      	ldrb	r2, [r0, #4]
c0de39b4:	ad02      	add	r5, sp, #8
c0de39b6:	e9cd 1500 	strd	r1, r5, [sp]
c0de39ba:	1d41      	adds	r1, r0, #5
c0de39bc:	4618      	mov	r0, r3
c0de39be:	2300      	movs	r3, #0
c0de39c0:	f004 f84a 	bl	c0de7a58 <os_pki_load_certificate>
c0de39c4:	4604      	mov	r4, r0
c0de39c6:	4628      	mov	r0, r5
c0de39c8:	216c      	movs	r1, #108	@ 0x6c
c0de39ca:	f004 f9e1 	bl	c0de7d90 <explicit_bzero>
c0de39ce:	2c00      	cmp	r4, #0
c0de39d0:	bf08      	it	eq
c0de39d2:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de39d6:	4620      	mov	r0, r4
c0de39d8:	b01d      	add	sp, #116	@ 0x74
c0de39da:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de39dc:	2000      	movs	r0, #0
c0de39de:	6020      	str	r0, [r4, #0]
c0de39e0:	b10a      	cbz	r2, c0de39e6 <os_io_handle_default_apdu+0xd0>
c0de39e2:	2001      	movs	r0, #1
c0de39e4:	7010      	strb	r0, [r2, #0]
c0de39e6:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de39ea:	e7f4      	b.n	c0de39d6 <os_io_handle_default_apdu+0xc0>

c0de39ec <OUTLINED_FUNCTION_0>:
c0de39ec:	6821      	ldr	r1, [r4, #0]
c0de39ee:	1c4a      	adds	r2, r1, #1
c0de39f0:	6022      	str	r2, [r4, #0]
c0de39f2:	5468      	strb	r0, [r5, r1]
c0de39f4:	6821      	ldr	r1, [r4, #0]
c0de39f6:	4408      	add	r0, r1
c0de39f8:	4770      	bx	lr

c0de39fa <io_process_itc_ux_event>:
c0de39fa:	b580      	push	{r7, lr}
c0de39fc:	78c0      	ldrb	r0, [r0, #3]
c0de39fe:	2820      	cmp	r0, #32
c0de3a00:	d107      	bne.n	c0de3a12 <io_process_itc_ux_event+0x18>
c0de3a02:	2001      	movs	r0, #1
c0de3a04:	f003 fca5 	bl	c0de7352 <nbgl_objAllowDrawing>
c0de3a08:	f003 fcb2 	bl	c0de7370 <nbgl_screenRedraw>
c0de3a0c:	f003 fc97 	bl	c0de733e <nbgl_refresh>
c0de3a10:	2100      	movs	r1, #0
c0de3a12:	4608      	mov	r0, r1
c0de3a14:	bd80      	pop	{r7, pc}
	...

c0de3a18 <io_legacy_apdu_tx>:
c0de3a18:	b5b0      	push	{r4, r5, r7, lr}
c0de3a1a:	460a      	mov	r2, r1
c0de3a1c:	4601      	mov	r1, r0
c0de3a1e:	4806      	ldr	r0, [pc, #24]	@ (c0de3a38 <io_legacy_apdu_tx+0x20>)
c0de3a20:	2300      	movs	r3, #0
c0de3a22:	2500      	movs	r5, #0
c0de3a24:	eb09 0400 	add.w	r4, r9, r0
c0de3a28:	7860      	ldrb	r0, [r4, #1]
c0de3a2a:	f004 f87b 	bl	c0de7b24 <os_io_tx_cmd>
c0de3a2e:	4903      	ldr	r1, [pc, #12]	@ (c0de3a3c <io_legacy_apdu_tx+0x24>)
c0de3a30:	7065      	strb	r5, [r4, #1]
c0de3a32:	4449      	add	r1, r9
c0de3a34:	718d      	strb	r5, [r1, #6]
c0de3a36:	bdb0      	pop	{r4, r5, r7, pc}
c0de3a38:	000006de 	.word	0x000006de
c0de3a3c:	000006d6 	.word	0x000006d6

c0de3a40 <io_legacy_apdu_rx>:
c0de3a40:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3a42:	4e66      	ldr	r6, [pc, #408]	@ (c0de3bdc <io_legacy_apdu_rx+0x19c>)
c0de3a44:	2100      	movs	r1, #0
c0de3a46:	4605      	mov	r5, r0
c0de3a48:	2200      	movs	r2, #0
c0de3a4a:	2301      	movs	r3, #1
c0de3a4c:	f88d 100b 	strb.w	r1, [sp, #11]
c0de3a50:	f240 1111 	movw	r1, #273	@ 0x111
c0de3a54:	eb09 0006 	add.w	r0, r9, r6
c0de3a58:	f004 f870 	bl	c0de7b3c <os_io_rx_evt>
c0de3a5c:	4604      	mov	r4, r0
c0de3a5e:	2801      	cmp	r0, #1
c0de3a60:	f2c0 80ab 	blt.w	c0de3bba <io_legacy_apdu_rx+0x17a>
c0de3a64:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3a68:	f1a0 0110 	sub.w	r1, r0, #16
c0de3a6c:	2916      	cmp	r1, #22
c0de3a6e:	d805      	bhi.n	c0de3a7c <io_legacy_apdu_rx+0x3c>
c0de3a70:	2201      	movs	r2, #1
c0de3a72:	fa02 f101 	lsl.w	r1, r2, r1
c0de3a76:	4a5a      	ldr	r2, [pc, #360]	@ (c0de3be0 <io_legacy_apdu_rx+0x1a0>)
c0de3a78:	4211      	tst	r1, r2
c0de3a7a:	d106      	bne.n	c0de3a8a <io_legacy_apdu_rx+0x4a>
c0de3a7c:	1e41      	subs	r1, r0, #1
c0de3a7e:	2902      	cmp	r1, #2
c0de3a80:	d367      	bcc.n	c0de3b52 <io_legacy_apdu_rx+0x112>
c0de3a82:	2830      	cmp	r0, #48	@ 0x30
c0de3a84:	bf18      	it	ne
c0de3a86:	2840      	cmpne	r0, #64	@ 0x40
c0de3a88:	d177      	bne.n	c0de3b7a <io_legacy_apdu_rx+0x13a>
c0de3a8a:	4f56      	ldr	r7, [pc, #344]	@ (c0de3be4 <io_legacy_apdu_rx+0x1a4>)
c0de3a8c:	eb09 0107 	add.w	r1, r9, r7
c0de3a90:	7048      	strb	r0, [r1, #1]
c0de3a92:	f003 fff1 	bl	c0de7a78 <os_perso_is_pin_set>
c0de3a96:	28aa      	cmp	r0, #170	@ 0xaa
c0de3a98:	d103      	bne.n	c0de3aa2 <io_legacy_apdu_rx+0x62>
c0de3a9a:	f003 fff6 	bl	c0de7a8a <os_global_pin_is_validated>
c0de3a9e:	28aa      	cmp	r0, #170	@ 0xaa
c0de3aa0:	d145      	bne.n	c0de3b2e <io_legacy_apdu_rx+0xee>
c0de3aa2:	eb09 0006 	add.w	r0, r9, r6
c0de3aa6:	7840      	ldrb	r0, [r0, #1]
c0de3aa8:	28b0      	cmp	r0, #176	@ 0xb0
c0de3aaa:	d12c      	bne.n	c0de3b06 <io_legacy_apdu_rx+0xc6>
c0de3aac:	f240 1011 	movw	r0, #273	@ 0x111
c0de3ab0:	1e61      	subs	r1, r4, #1
c0de3ab2:	9001      	str	r0, [sp, #4]
c0de3ab4:	f10d 000b 	add.w	r0, sp, #11
c0de3ab8:	9000      	str	r0, [sp, #0]
c0de3aba:	484b      	ldr	r0, [pc, #300]	@ (c0de3be8 <io_legacy_apdu_rx+0x1a8>)
c0de3abc:	ab01      	add	r3, sp, #4
c0de3abe:	eb09 0500 	add.w	r5, r9, r0
c0de3ac2:	eb09 0006 	add.w	r0, r9, r6
c0de3ac6:	3001      	adds	r0, #1
c0de3ac8:	462a      	mov	r2, r5
c0de3aca:	f7ff ff24 	bl	c0de3916 <os_io_handle_default_apdu>
c0de3ace:	2400      	movs	r4, #0
c0de3ad0:	9901      	ldr	r1, [sp, #4]
c0de3ad2:	eb09 0607 	add.w	r6, r9, r7
c0de3ad6:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de3ada:	bf18      	it	ne
c0de3adc:	4621      	movne	r1, r4
c0de3ade:	0a02      	lsrs	r2, r0, #8
c0de3ae0:	2300      	movs	r3, #0
c0de3ae2:	546a      	strb	r2, [r5, r1]
c0de3ae4:	186a      	adds	r2, r5, r1
c0de3ae6:	7050      	strb	r0, [r2, #1]
c0de3ae8:	1c88      	adds	r0, r1, #2
c0de3aea:	4629      	mov	r1, r5
c0de3aec:	9001      	str	r0, [sp, #4]
c0de3aee:	b282      	uxth	r2, r0
c0de3af0:	7870      	ldrb	r0, [r6, #1]
c0de3af2:	f004 f817 	bl	c0de7b24 <os_io_tx_cmd>
c0de3af6:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de3afa:	7074      	strb	r4, [r6, #1]
c0de3afc:	2901      	cmp	r1, #1
c0de3afe:	d06a      	beq.n	c0de3bd6 <io_legacy_apdu_rx+0x196>
c0de3b00:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3b04:	e059      	b.n	c0de3bba <io_legacy_apdu_rx+0x17a>
c0de3b06:	eb09 0007 	add.w	r0, r9, r7
c0de3b0a:	7840      	ldrb	r0, [r0, #1]
c0de3b0c:	2810      	cmp	r0, #16
c0de3b0e:	d043      	beq.n	c0de3b98 <io_legacy_apdu_rx+0x158>
c0de3b10:	2840      	cmp	r0, #64	@ 0x40
c0de3b12:	d043      	beq.n	c0de3b9c <io_legacy_apdu_rx+0x15c>
c0de3b14:	2821      	cmp	r0, #33	@ 0x21
c0de3b16:	d043      	beq.n	c0de3ba0 <io_legacy_apdu_rx+0x160>
c0de3b18:	2822      	cmp	r0, #34	@ 0x22
c0de3b1a:	d037      	beq.n	c0de3b8c <io_legacy_apdu_rx+0x14c>
c0de3b1c:	2823      	cmp	r0, #35	@ 0x23
c0de3b1e:	d037      	beq.n	c0de3b90 <io_legacy_apdu_rx+0x150>
c0de3b20:	2830      	cmp	r0, #48	@ 0x30
c0de3b22:	d037      	beq.n	c0de3b94 <io_legacy_apdu_rx+0x154>
c0de3b24:	2820      	cmp	r0, #32
c0de3b26:	bf14      	ite	ne
c0de3b28:	2000      	movne	r0, #0
c0de3b2a:	2001      	moveq	r0, #1
c0de3b2c:	e039      	b.n	c0de3ba2 <io_legacy_apdu_rx+0x162>
c0de3b2e:	482e      	ldr	r0, [pc, #184]	@ (c0de3be8 <io_legacy_apdu_rx+0x1a8>)
c0de3b30:	2155      	movs	r1, #85	@ 0x55
c0de3b32:	2202      	movs	r2, #2
c0de3b34:	2300      	movs	r3, #0
c0de3b36:	f809 1000 	strb.w	r1, [r9, r0]
c0de3b3a:	eb09 0100 	add.w	r1, r9, r0
c0de3b3e:	2015      	movs	r0, #21
c0de3b40:	7048      	strb	r0, [r1, #1]
c0de3b42:	eb09 0007 	add.w	r0, r9, r7
c0de3b46:	7840      	ldrb	r0, [r0, #1]
c0de3b48:	b003      	add	sp, #12
c0de3b4a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3b4e:	f003 bfe9 	b.w	c0de7b24 <os_io_tx_cmd>
c0de3b52:	4f27      	ldr	r7, [pc, #156]	@ (c0de3bf0 <io_legacy_apdu_rx+0x1b0>)
c0de3b54:	444e      	add	r6, r9
c0de3b56:	3c01      	subs	r4, #1
c0de3b58:	1c71      	adds	r1, r6, #1
c0de3b5a:	4622      	mov	r2, r4
c0de3b5c:	eb09 0007 	add.w	r0, r9, r7
c0de3b60:	f004 f8fe 	bl	c0de7d60 <__aeabi_memcpy>
c0de3b64:	7870      	ldrb	r0, [r6, #1]
c0de3b66:	281a      	cmp	r0, #26
c0de3b68:	d10a      	bne.n	c0de3b80 <io_legacy_apdu_rx+0x140>
c0de3b6a:	eb09 0007 	add.w	r0, r9, r7
c0de3b6e:	4621      	mov	r1, r4
c0de3b70:	b003      	add	sp, #12
c0de3b72:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3b76:	f7ff bf40 	b.w	c0de39fa <io_process_itc_ux_event>
c0de3b7a:	2842      	cmp	r0, #66	@ 0x42
c0de3b7c:	d01d      	beq.n	c0de3bba <io_legacy_apdu_rx+0x17a>
c0de3b7e:	e028      	b.n	c0de3bd2 <io_legacy_apdu_rx+0x192>
c0de3b80:	b1ed      	cbz	r5, c0de3bbe <io_legacy_apdu_rx+0x17e>
c0de3b82:	2000      	movs	r0, #0
c0de3b84:	2400      	movs	r4, #0
c0de3b86:	f003 f8fb 	bl	c0de6d80 <io_event>
c0de3b8a:	e016      	b.n	c0de3bba <io_legacy_apdu_rx+0x17a>
c0de3b8c:	2004      	movs	r0, #4
c0de3b8e:	e008      	b.n	c0de3ba2 <io_legacy_apdu_rx+0x162>
c0de3b90:	2007      	movs	r0, #7
c0de3b92:	e006      	b.n	c0de3ba2 <io_legacy_apdu_rx+0x162>
c0de3b94:	2002      	movs	r0, #2
c0de3b96:	e004      	b.n	c0de3ba2 <io_legacy_apdu_rx+0x162>
c0de3b98:	2006      	movs	r0, #6
c0de3b9a:	e002      	b.n	c0de3ba2 <io_legacy_apdu_rx+0x162>
c0de3b9c:	2003      	movs	r0, #3
c0de3b9e:	e000      	b.n	c0de3ba2 <io_legacy_apdu_rx+0x162>
c0de3ba0:	2005      	movs	r0, #5
c0de3ba2:	4912      	ldr	r1, [pc, #72]	@ (c0de3bec <io_legacy_apdu_rx+0x1ac>)
c0de3ba4:	3c01      	subs	r4, #1
c0de3ba6:	4622      	mov	r2, r4
c0de3ba8:	4449      	add	r1, r9
c0de3baa:	7188      	strb	r0, [r1, #6]
c0de3bac:	480e      	ldr	r0, [pc, #56]	@ (c0de3be8 <io_legacy_apdu_rx+0x1a8>)
c0de3bae:	eb09 0106 	add.w	r1, r9, r6
c0de3bb2:	3101      	adds	r1, #1
c0de3bb4:	4448      	add	r0, r9
c0de3bb6:	f004 f8d3 	bl	c0de7d60 <__aeabi_memcpy>
c0de3bba:	4620      	mov	r0, r4
c0de3bbc:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3bbe:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3bc2:	2815      	cmp	r0, #21
c0de3bc4:	d8dd      	bhi.n	c0de3b82 <io_legacy_apdu_rx+0x142>
c0de3bc6:	2101      	movs	r1, #1
c0de3bc8:	fa01 f000 	lsl.w	r0, r1, r0
c0de3bcc:	4909      	ldr	r1, [pc, #36]	@ (c0de3bf4 <io_legacy_apdu_rx+0x1b4>)
c0de3bce:	4208      	tst	r0, r1
c0de3bd0:	d0d7      	beq.n	c0de3b82 <io_legacy_apdu_rx+0x142>
c0de3bd2:	2400      	movs	r4, #0
c0de3bd4:	e7f1      	b.n	c0de3bba <io_legacy_apdu_rx+0x17a>
c0de3bd6:	20ff      	movs	r0, #255	@ 0xff
c0de3bd8:	f003 ff86 	bl	c0de7ae8 <os_sched_exit>
c0de3bdc:	000005c5 	.word	0x000005c5
c0de3be0:	007f0001 	.word	0x007f0001
c0de3be4:	000006de 	.word	0x000006de
c0de3be8:	000004b4 	.word	0x000004b4
c0de3bec:	000006d6 	.word	0x000006d6
c0de3bf0:	0000085c 	.word	0x0000085c
c0de3bf4:	00205020 	.word	0x00205020

c0de3bf8 <io_seproxyhal_init>:
c0de3bf8:	b570      	push	{r4, r5, r6, lr}
c0de3bfa:	b08a      	sub	sp, #40	@ 0x28
c0de3bfc:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3c2c <io_seproxyhal_init+0x34>)
c0de3bfe:	2600      	movs	r6, #0
c0de3c00:	2118      	movs	r1, #24
c0de3c02:	eb09 0005 	add.w	r0, r9, r5
c0de3c06:	7046      	strb	r6, [r0, #1]
c0de3c08:	ac01      	add	r4, sp, #4
c0de3c0a:	4620      	mov	r0, r4
c0de3c0c:	f004 f8b2 	bl	c0de7d74 <__aeabi_memclr>
c0de3c10:	2011      	movs	r0, #17
c0de3c12:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3c16:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3c1a:	4620      	mov	r0, r4
c0de3c1c:	f003 ff6e 	bl	c0de7afc <os_io_init>
c0de3c20:	2001      	movs	r0, #1
c0de3c22:	f809 0005 	strb.w	r0, [r9, r5]
c0de3c26:	b00a      	add	sp, #40	@ 0x28
c0de3c28:	bd70      	pop	{r4, r5, r6, pc}
c0de3c2a:	bf00      	nop
c0de3c2c:	000006de 	.word	0x000006de

c0de3c30 <nbgl_layoutGet>:
c0de3c30:	b570      	push	{r4, r5, r6, lr}
c0de3c32:	4605      	mov	r5, r0
c0de3c34:	7800      	ldrb	r0, [r0, #0]
c0de3c36:	b148      	cbz	r0, c0de3c4c <nbgl_layoutGet+0x1c>
c0de3c38:	4819      	ldr	r0, [pc, #100]	@ (c0de3ca0 <nbgl_layoutGet+0x70>)
c0de3c3a:	eb09 0100 	add.w	r1, r9, r0
c0de3c3e:	7b8a      	ldrb	r2, [r1, #14]
c0de3c40:	b152      	cbz	r2, c0de3c58 <nbgl_layoutGet+0x28>
c0de3c42:	4448      	add	r0, r9
c0de3c44:	7e81      	ldrb	r1, [r0, #26]
c0de3c46:	b151      	cbz	r1, c0de3c5e <nbgl_layoutGet+0x2e>
c0de3c48:	2400      	movs	r4, #0
c0de3c4a:	e026      	b.n	c0de3c9a <nbgl_layoutGet+0x6a>
c0de3c4c:	4814      	ldr	r0, [pc, #80]	@ (c0de3ca0 <nbgl_layoutGet+0x70>)
c0de3c4e:	eb09 0400 	add.w	r4, r9, r0
c0de3c52:	2000      	movs	r0, #0
c0de3c54:	70a0      	strb	r0, [r4, #2]
c0de3c56:	e004      	b.n	c0de3c62 <nbgl_layoutGet+0x32>
c0de3c58:	f101 040c 	add.w	r4, r1, #12
c0de3c5c:	e001      	b.n	c0de3c62 <nbgl_layoutGet+0x32>
c0de3c5e:	f100 0418 	add.w	r4, r0, #24
c0de3c62:	2000      	movs	r0, #0
c0de3c64:	4626      	mov	r6, r4
c0de3c66:	60a0      	str	r0, [r4, #8]
c0de3c68:	6020      	str	r0, [r4, #0]
c0de3c6a:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3c6e:	6868      	ldr	r0, [r5, #4]
c0de3c70:	f003 fd74 	bl	c0de775c <pic>
c0de3c74:	60a0      	str	r0, [r4, #8]
c0de3c76:	7828      	ldrb	r0, [r5, #0]
c0de3c78:	f105 0208 	add.w	r2, r5, #8
c0de3c7c:	7020      	strb	r0, [r4, #0]
c0de3c7e:	4b09      	ldr	r3, [pc, #36]	@ (c0de3ca4 <nbgl_layoutGet+0x74>)
c0de3c80:	447b      	add	r3, pc
c0de3c82:	b120      	cbz	r0, c0de3c8e <nbgl_layoutGet+0x5e>
c0de3c84:	4630      	mov	r0, r6
c0de3c86:	2107      	movs	r1, #7
c0de3c88:	f003 fb6d 	bl	c0de7366 <nbgl_screenPush>
c0de3c8c:	e004      	b.n	c0de3c98 <nbgl_layoutGet+0x68>
c0de3c8e:	4630      	mov	r0, r6
c0de3c90:	2107      	movs	r1, #7
c0de3c92:	f003 fb63 	bl	c0de735c <nbgl_screenSet>
c0de3c96:	2000      	movs	r0, #0
c0de3c98:	7060      	strb	r0, [r4, #1]
c0de3c9a:	4620      	mov	r0, r4
c0de3c9c:	bd70      	pop	{r4, r5, r6, pc}
c0de3c9e:	bf00      	nop
c0de3ca0:	000006e0 	.word	0x000006e0
c0de3ca4:	00000025 	.word	0x00000025

c0de3ca8 <buttonCallback>:
c0de3ca8:	b5b0      	push	{r4, r5, r7, lr}
c0de3caa:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3cae:	4811      	ldr	r0, [pc, #68]	@ (c0de3cf4 <buttonCallback+0x4c>)
c0de3cb0:	2302      	movs	r3, #2
c0de3cb2:	1c5c      	adds	r4, r3, #1
c0de3cb4:	d01d      	beq.n	c0de3cf2 <buttonCallback+0x4a>
c0de3cb6:	b2dc      	uxtb	r4, r3
c0de3cb8:	eb09 0500 	add.w	r5, r9, r0
c0de3cbc:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3cc0:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3cc4:	786d      	ldrb	r5, [r5, #1]
c0de3cc6:	42aa      	cmp	r2, r5
c0de3cc8:	d105      	bne.n	c0de3cd6 <buttonCallback+0x2e>
c0de3cca:	eb09 0500 	add.w	r5, r9, r0
c0de3cce:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3cd2:	78ad      	ldrb	r5, [r5, #2]
c0de3cd4:	b90d      	cbnz	r5, c0de3cda <buttonCallback+0x32>
c0de3cd6:	3b01      	subs	r3, #1
c0de3cd8:	e7eb      	b.n	c0de3cb2 <buttonCallback+0xa>
c0de3cda:	eb09 0200 	add.w	r2, r9, r0
c0de3cde:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3ce2:	6892      	ldr	r2, [r2, #8]
c0de3ce4:	b12a      	cbz	r2, c0de3cf2 <buttonCallback+0x4a>
c0de3ce6:	4448      	add	r0, r9
c0de3ce8:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3cec:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3cf0:	4710      	bx	r2
c0de3cf2:	bdb0      	pop	{r4, r5, r7, pc}
c0de3cf4:	000006e0 	.word	0x000006e0

c0de3cf8 <nbgl_layoutAddNavigation>:
c0de3cf8:	b570      	push	{r4, r5, r6, lr}
c0de3cfa:	2800      	cmp	r0, #0
c0de3cfc:	d04d      	beq.n	c0de3d9a <nbgl_layoutAddNavigation+0xa2>
c0de3cfe:	460d      	mov	r5, r1
c0de3d00:	7849      	ldrb	r1, [r1, #1]
c0de3d02:	4604      	mov	r4, r0
c0de3d04:	07c8      	lsls	r0, r1, #31
c0de3d06:	d022      	beq.n	c0de3d4e <nbgl_layoutAddNavigation+0x56>
c0de3d08:	7861      	ldrb	r1, [r4, #1]
c0de3d0a:	2002      	movs	r0, #2
c0de3d0c:	f003 fb3f 	bl	c0de738e <nbgl_objPoolGet>
c0de3d10:	782a      	ldrb	r2, [r5, #0]
c0de3d12:	7869      	ldrb	r1, [r5, #1]
c0de3d14:	4b23      	ldr	r3, [pc, #140]	@ (c0de3da4 <nbgl_layoutAddNavigation+0xac>)
c0de3d16:	4e24      	ldr	r6, [pc, #144]	@ (c0de3da8 <nbgl_layoutAddNavigation+0xb0>)
c0de3d18:	2a00      	cmp	r2, #0
c0de3d1a:	447b      	add	r3, pc
c0de3d1c:	447e      	add	r6, pc
c0de3d1e:	4602      	mov	r2, r0
c0de3d20:	bf08      	it	eq
c0de3d22:	461e      	moveq	r6, r3
c0de3d24:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3d28:	0e33      	lsrs	r3, r6, #24
c0de3d2a:	70d3      	strb	r3, [r2, #3]
c0de3d2c:	0c33      	lsrs	r3, r6, #16
c0de3d2e:	7093      	strb	r3, [r2, #2]
c0de3d30:	0a32      	lsrs	r2, r6, #8
c0de3d32:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de3d36:	6862      	ldr	r2, [r4, #4]
c0de3d38:	78a3      	ldrb	r3, [r4, #2]
c0de3d3a:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3d3e:	2203      	movs	r2, #3
c0de3d40:	77c2      	strb	r2, [r0, #31]
c0de3d42:	2204      	movs	r2, #4
c0de3d44:	7582      	strb	r2, [r0, #22]
c0de3d46:	2200      	movs	r2, #0
c0de3d48:	7242      	strb	r2, [r0, #9]
c0de3d4a:	1c58      	adds	r0, r3, #1
c0de3d4c:	70a0      	strb	r0, [r4, #2]
c0de3d4e:	0788      	lsls	r0, r1, #30
c0de3d50:	f04f 0600 	mov.w	r6, #0
c0de3d54:	d523      	bpl.n	c0de3d9e <nbgl_layoutAddNavigation+0xa6>
c0de3d56:	7861      	ldrb	r1, [r4, #1]
c0de3d58:	2002      	movs	r0, #2
c0de3d5a:	f003 fb18 	bl	c0de738e <nbgl_objPoolGet>
c0de3d5e:	7829      	ldrb	r1, [r5, #0]
c0de3d60:	4a12      	ldr	r2, [pc, #72]	@ (c0de3dac <nbgl_layoutAddNavigation+0xb4>)
c0de3d62:	4b13      	ldr	r3, [pc, #76]	@ (c0de3db0 <nbgl_layoutAddNavigation+0xb8>)
c0de3d64:	2900      	cmp	r1, #0
c0de3d66:	447a      	add	r2, pc
c0de3d68:	447b      	add	r3, pc
c0de3d6a:	4601      	mov	r1, r0
c0de3d6c:	bf08      	it	eq
c0de3d6e:	4613      	moveq	r3, r2
c0de3d70:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3d74:	0e1a      	lsrs	r2, r3, #24
c0de3d76:	7246      	strb	r6, [r0, #9]
c0de3d78:	70ca      	strb	r2, [r1, #3]
c0de3d7a:	0c1a      	lsrs	r2, r3, #16
c0de3d7c:	708a      	strb	r2, [r1, #2]
c0de3d7e:	0a19      	lsrs	r1, r3, #8
c0de3d80:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3d84:	6861      	ldr	r1, [r4, #4]
c0de3d86:	78a2      	ldrb	r2, [r4, #2]
c0de3d88:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3d8c:	2103      	movs	r1, #3
c0de3d8e:	77c1      	strb	r1, [r0, #31]
c0de3d90:	2106      	movs	r1, #6
c0de3d92:	7581      	strb	r1, [r0, #22]
c0de3d94:	1c50      	adds	r0, r2, #1
c0de3d96:	70a0      	strb	r0, [r4, #2]
c0de3d98:	e001      	b.n	c0de3d9e <nbgl_layoutAddNavigation+0xa6>
c0de3d9a:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3d9e:	4630      	mov	r0, r6
c0de3da0:	bd70      	pop	{r4, r5, r6, pc}
c0de3da2:	bf00      	nop
c0de3da4:	00004278 	.word	0x00004278
c0de3da8:	000042b5 	.word	0x000042b5
c0de3dac:	0000425d 	.word	0x0000425d
c0de3db0:	0000421c 	.word	0x0000421c

c0de3db4 <nbgl_layoutAddText>:
c0de3db4:	2800      	cmp	r0, #0
c0de3db6:	f000 8143 	beq.w	c0de4040 <nbgl_layoutAddText+0x28c>
c0de3dba:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3dbe:	b088      	sub	sp, #32
c0de3dc0:	460e      	mov	r6, r1
c0de3dc2:	7841      	ldrb	r1, [r0, #1]
c0de3dc4:	4605      	mov	r5, r0
c0de3dc6:	2001      	movs	r0, #1
c0de3dc8:	4617      	mov	r7, r2
c0de3dca:	461c      	mov	r4, r3
c0de3dcc:	f003 fadf 	bl	c0de738e <nbgl_objPoolGet>
c0de3dd0:	4680      	mov	r8, r0
c0de3dd2:	2003      	movs	r0, #3
c0de3dd4:	2f00      	cmp	r7, #0
c0de3dd6:	bf08      	it	eq
c0de3dd8:	2001      	moveq	r0, #1
c0de3dda:	7869      	ldrb	r1, [r5, #1]
c0de3ddc:	f888 0020 	strb.w	r0, [r8, #32]
c0de3de0:	f003 fada 	bl	c0de7398 <nbgl_containerPoolGet>
c0de3de4:	4641      	mov	r1, r8
c0de3de6:	0e02      	lsrs	r2, r0, #24
c0de3de8:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3dec:	f04f 0b00 	mov.w	fp, #0
c0de3df0:	9704      	str	r7, [sp, #16]
c0de3df2:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3df6:	f888 a004 	strb.w	sl, [r8, #4]
c0de3dfa:	f888 b005 	strb.w	fp, [r8, #5]
c0de3dfe:	70ca      	strb	r2, [r1, #3]
c0de3e00:	0c02      	lsrs	r2, r0, #16
c0de3e02:	0a00      	lsrs	r0, r0, #8
c0de3e04:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3e08:	708a      	strb	r2, [r1, #2]
c0de3e0a:	2004      	movs	r0, #4
c0de3e0c:	7869      	ldrb	r1, [r5, #1]
c0de3e0e:	f003 fabe 	bl	c0de738e <nbgl_objPoolGet>
c0de3e12:	4607      	mov	r7, r0
c0de3e14:	2003      	movs	r0, #3
c0de3e16:	77f8      	strb	r0, [r7, #31]
c0de3e18:	4630      	mov	r0, r6
c0de3e1a:	f003 fc9f 	bl	c0de775c <pic>
c0de3e1e:	4601      	mov	r1, r0
c0de3e20:	2008      	movs	r0, #8
c0de3e22:	f887 b005 	strb.w	fp, [r7, #5]
c0de3e26:	f887 a004 	strb.w	sl, [r7, #4]
c0de3e2a:	9403      	str	r4, [sp, #12]
c0de3e2c:	2c00      	cmp	r4, #0
c0de3e2e:	bf08      	it	eq
c0de3e30:	200a      	moveq	r0, #10
c0de3e32:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3e36:	2205      	movs	r2, #5
c0de3e38:	0e0b      	lsrs	r3, r1, #24
c0de3e3a:	f887 2020 	strb.w	r2, [r7, #32]
c0de3e3e:	463a      	mov	r2, r7
c0de3e40:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3e44:	70d3      	strb	r3, [r2, #3]
c0de3e46:	0c0b      	lsrs	r3, r1, #16
c0de3e48:	7093      	strb	r3, [r2, #2]
c0de3e4a:	0a0a      	lsrs	r2, r1, #8
c0de3e4c:	2301      	movs	r3, #1
c0de3e4e:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de3e52:	2272      	movs	r2, #114	@ 0x72
c0de3e54:	f003 fab4 	bl	c0de73c0 <nbgl_getTextNbLinesInWidth>
c0de3e58:	4606      	mov	r6, r0
c0de3e5a:	2805      	cmp	r0, #5
c0de3e5c:	9505      	str	r5, [sp, #20]
c0de3e5e:	d31d      	bcc.n	c0de3e9c <nbgl_layoutAddText+0xe8>
c0de3e60:	463e      	mov	r6, r7
c0de3e62:	2004      	movs	r0, #4
c0de3e64:	2101      	movs	r1, #1
c0de3e66:	f10d 051e 	add.w	r5, sp, #30
c0de3e6a:	f816 cf26 	ldrb.w	ip, [r6, #38]!
c0de3e6e:	7872      	ldrb	r2, [r6, #1]
c0de3e70:	78b3      	ldrb	r3, [r6, #2]
c0de3e72:	78f4      	ldrb	r4, [r6, #3]
c0de3e74:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de3e78:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3e7c:	9101      	str	r1, [sp, #4]
c0de3e7e:	9500      	str	r5, [sp, #0]
c0de3e80:	9d05      	ldr	r5, [sp, #20]
c0de3e82:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3e86:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3e8a:	2304      	movs	r3, #4
c0de3e8c:	f000 fc78 	bl	c0de4780 <OUTLINED_FUNCTION_4>
c0de3e90:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3e94:	7130      	strb	r0, [r6, #4]
c0de3e96:	0a00      	lsrs	r0, r0, #8
c0de3e98:	7170      	strb	r0, [r6, #5]
c0de3e9a:	2604      	movs	r6, #4
c0de3e9c:	f000 fc78 	bl	c0de4790 <OUTLINED_FUNCTION_6>
c0de3ea0:	4683      	mov	fp, r0
c0de3ea2:	79c0      	ldrb	r0, [r0, #7]
c0de3ea4:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de3ea8:	9c04      	ldr	r4, [sp, #16]
c0de3eaa:	fb06 fa00 	mul.w	sl, r6, r0
c0de3eae:	f041 0101 	orr.w	r1, r1, #1
c0de3eb2:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3eb6:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de3eba:	2102      	movs	r1, #2
c0de3ebc:	f887 a006 	strb.w	sl, [r7, #6]
c0de3ec0:	71f8      	strb	r0, [r7, #7]
c0de3ec2:	4640      	mov	r0, r8
c0de3ec4:	75b9      	strb	r1, [r7, #22]
c0de3ec6:	2c00      	cmp	r4, #0
c0de3ec8:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3ecc:	7842      	ldrb	r2, [r0, #1]
c0de3ece:	7883      	ldrb	r3, [r0, #2]
c0de3ed0:	78c0      	ldrb	r0, [r0, #3]
c0de3ed2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3ed6:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3eda:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3ede:	6007      	str	r7, [r0, #0]
c0de3ee0:	f000 8110 	beq.w	c0de4104 <nbgl_layoutAddText+0x350>
c0de3ee4:	9803      	ldr	r0, [sp, #12]
c0de3ee6:	7869      	ldrb	r1, [r5, #1]
c0de3ee8:	2802      	cmp	r0, #2
c0de3eea:	f040 80ab 	bne.w	c0de4044 <nbgl_layoutAddText+0x290>
c0de3eee:	2005      	movs	r0, #5
c0de3ef0:	2505      	movs	r5, #5
c0de3ef2:	f003 fa4c 	bl	c0de738e <nbgl_objPoolGet>
c0de3ef6:	2600      	movs	r6, #0
c0de3ef8:	4607      	mov	r7, r0
c0de3efa:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3efe:	2001      	movs	r0, #1
c0de3f00:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3f04:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de3f08:	f000 fc51 	bl	c0de47ae <OUTLINED_FUNCTION_9>
c0de3f0c:	4620      	mov	r0, r4
c0de3f0e:	f003 fc25 	bl	c0de775c <pic>
c0de3f12:	4601      	mov	r1, r0
c0de3f14:	200e      	movs	r0, #14
c0de3f16:	71fe      	strb	r6, [r7, #7]
c0de3f18:	75bd      	strb	r5, [r7, #22]
c0de3f1a:	71b8      	strb	r0, [r7, #6]
c0de3f1c:	2008      	movs	r0, #8
c0de3f1e:	0e0a      	lsrs	r2, r1, #24
c0de3f20:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de3f24:	4638      	mov	r0, r7
c0de3f26:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3f2a:	f000 fc20 	bl	c0de476e <OUTLINED_FUNCTION_3>
c0de3f2e:	2865      	cmp	r0, #101	@ 0x65
c0de3f30:	f240 80d8 	bls.w	c0de40e4 <nbgl_layoutAddText+0x330>
c0de3f34:	46bb      	mov	fp, r7
c0de3f36:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de3f3a:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de3f3e:	2401      	movs	r4, #1
c0de3f40:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de3f44:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3f48:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3f4c:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de3f50:	ae06      	add	r6, sp, #24
c0de3f52:	e9cd 6400 	strd	r6, r4, [sp]
c0de3f56:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3f5a:	f10d 031a 	add.w	r3, sp, #26
c0de3f5e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de3f62:	2266      	movs	r2, #102	@ 0x66
c0de3f64:	f003 fa27 	bl	c0de73b6 <nbgl_getTextMaxLenAndWidth>
c0de3f68:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3f6c:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de3f70:	300c      	adds	r0, #12
c0de3f72:	7138      	strb	r0, [r7, #4]
c0de3f74:	0a00      	lsrs	r0, r0, #8
c0de3f76:	7178      	strb	r0, [r7, #5]
c0de3f78:	486d      	ldr	r0, [pc, #436]	@ (c0de4130 <nbgl_layoutAddText+0x37c>)
c0de3f7a:	2e13      	cmp	r6, #19
c0de3f7c:	bf28      	it	cs
c0de3f7e:	2613      	movcs	r6, #19
c0de3f80:	f89b 1000 	ldrb.w	r1, [fp]
c0de3f84:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3f88:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3f8c:	eb09 0400 	add.w	r4, r9, r0
c0de3f90:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3f94:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3f98:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3f9c:	4632      	mov	r2, r6
c0de3f9e:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3fa2:	4620      	mov	r0, r4
c0de3fa4:	f003 fedc 	bl	c0de7d60 <__aeabi_memcpy>
c0de3fa8:	2500      	movs	r5, #0
c0de3faa:	4620      	mov	r0, r4
c0de3fac:	55a5      	strb	r5, [r4, r6]
c0de3fae:	f003 fbd5 	bl	c0de775c <pic>
c0de3fb2:	2101      	movs	r1, #1
c0de3fb4:	f88b 0000 	strb.w	r0, [fp]
c0de3fb8:	76bd      	strb	r5, [r7, #26]
c0de3fba:	9d05      	ldr	r5, [sp, #20]
c0de3fbc:	7679      	strb	r1, [r7, #25]
c0de3fbe:	0e01      	lsrs	r1, r0, #24
c0de3fc0:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3fc4:	0c01      	lsrs	r1, r0, #16
c0de3fc6:	0a00      	lsrs	r0, r0, #8
c0de3fc8:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3fcc:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3fd0:	4640      	mov	r0, r8
c0de3fd2:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3fd6:	7842      	ldrb	r2, [r0, #1]
c0de3fd8:	7883      	ldrb	r3, [r0, #2]
c0de3fda:	78c0      	ldrb	r0, [r0, #3]
c0de3fdc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3fe0:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3fe4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3fe8:	6047      	str	r7, [r0, #4]
c0de3fea:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de3fee:	2800      	cmp	r0, #0
c0de3ff0:	f000 8086 	beq.w	c0de4100 <nbgl_layoutAddText+0x34c>
c0de3ff4:	7869      	ldrb	r1, [r5, #1]
c0de3ff6:	2005      	movs	r0, #5
c0de3ff8:	2605      	movs	r6, #5
c0de3ffa:	f003 f9c8 	bl	c0de738e <nbgl_objPoolGet>
c0de3ffe:	2500      	movs	r5, #0
c0de4000:	4607      	mov	r7, r0
c0de4002:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de4006:	2001      	movs	r0, #1
c0de4008:	f000 fbd1 	bl	c0de47ae <OUTLINED_FUNCTION_9>
c0de400c:	9804      	ldr	r0, [sp, #16]
c0de400e:	f003 fba5 	bl	c0de775c <pic>
c0de4012:	210e      	movs	r1, #14
c0de4014:	71fd      	strb	r5, [r7, #7]
c0de4016:	71b9      	strb	r1, [r7, #6]
c0de4018:	2108      	movs	r1, #8
c0de401a:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de401e:	f8bd 101a 	ldrh.w	r1, [sp, #26]
c0de4022:	4401      	add	r1, r0
c0de4024:	4638      	mov	r0, r7
c0de4026:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de402a:	0e0a      	lsrs	r2, r1, #24
c0de402c:	f000 fb9f 	bl	c0de476e <OUTLINED_FUNCTION_3>
c0de4030:	300c      	adds	r0, #12
c0de4032:	210f      	movs	r1, #15
c0de4034:	75be      	strb	r6, [r7, #22]
c0de4036:	7138      	strb	r0, [r7, #4]
c0de4038:	0a00      	lsrs	r0, r0, #8
c0de403a:	7178      	strb	r0, [r7, #5]
c0de403c:	2002      	movs	r0, #2
c0de403e:	e057      	b.n	c0de40f0 <nbgl_layoutAddText+0x33c>
c0de4040:	f000 bbb2 	b.w	c0de47a8 <OUTLINED_FUNCTION_8>
c0de4044:	f000 fba1 	bl	c0de478a <OUTLINED_FUNCTION_5>
c0de4048:	2603      	movs	r6, #3
c0de404a:	4607      	mov	r7, r0
c0de404c:	77c6      	strb	r6, [r0, #31]
c0de404e:	4620      	mov	r0, r4
c0de4050:	f003 fb84 	bl	c0de775c <pic>
c0de4054:	4601      	mov	r1, r0
c0de4056:	2072      	movs	r0, #114	@ 0x72
c0de4058:	2400      	movs	r4, #0
c0de405a:	2301      	movs	r3, #1
c0de405c:	7138      	strb	r0, [r7, #4]
c0de405e:	200a      	movs	r0, #10
c0de4060:	0e0a      	lsrs	r2, r1, #24
c0de4062:	717c      	strb	r4, [r7, #5]
c0de4064:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4068:	f000 fb61 	bl	c0de472e <OUTLINED_FUNCTION_0>
c0de406c:	2804      	cmp	r0, #4
c0de406e:	d31e      	bcc.n	c0de40ae <nbgl_layoutAddText+0x2fa>
c0de4070:	463d      	mov	r5, r7
c0de4072:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4076:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de407a:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de407e:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de4082:	78ab      	ldrb	r3, [r5, #2]
c0de4084:	78e9      	ldrb	r1, [r5, #3]
c0de4086:	aa07      	add	r2, sp, #28
c0de4088:	9200      	str	r2, [sp, #0]
c0de408a:	2201      	movs	r2, #1
c0de408c:	9201      	str	r2, [sp, #4]
c0de408e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4092:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de4096:	2303      	movs	r3, #3
c0de4098:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de409c:	2272      	movs	r2, #114	@ 0x72
c0de409e:	f003 f99e 	bl	c0de73de <nbgl_getTextMaxLenInNbLines>
c0de40a2:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de40a6:	7128      	strb	r0, [r5, #4]
c0de40a8:	0a00      	lsrs	r0, r0, #8
c0de40aa:	7168      	strb	r0, [r5, #5]
c0de40ac:	2003      	movs	r0, #3
c0de40ae:	9903      	ldr	r1, [sp, #12]
c0de40b0:	2900      	cmp	r1, #0
c0de40b2:	bf08      	it	eq
c0de40b4:	4606      	moveq	r6, r0
c0de40b6:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de40ba:	76bc      	strb	r4, [r7, #26]
c0de40bc:	75bc      	strb	r4, [r7, #22]
c0de40be:	fb06 f100 	mul.w	r1, r6, r0
c0de40c2:	fb06 a000 	mla	r0, r6, r0, sl
c0de40c6:	71b9      	strb	r1, [r7, #6]
c0de40c8:	0a09      	lsrs	r1, r1, #8
c0de40ca:	71f9      	strb	r1, [r7, #7]
c0de40cc:	2102      	movs	r1, #2
c0de40ce:	f100 0a02 	add.w	sl, r0, #2
c0de40d2:	7679      	strb	r1, [r7, #25]
c0de40d4:	2105      	movs	r1, #5
c0de40d6:	f887 1020 	strb.w	r1, [r7, #32]
c0de40da:	4641      	mov	r1, r8
c0de40dc:	f000 fb3a 	bl	c0de4754 <OUTLINED_FUNCTION_2>
c0de40e0:	604f      	str	r7, [r1, #4]
c0de40e2:	e00f      	b.n	c0de4104 <nbgl_layoutAddText+0x350>
c0de40e4:	300c      	adds	r0, #12
c0de40e6:	2108      	movs	r1, #8
c0de40e8:	7138      	strb	r0, [r7, #4]
c0de40ea:	0a00      	lsrs	r0, r0, #8
c0de40ec:	7178      	strb	r0, [r7, #5]
c0de40ee:	2001      	movs	r0, #1
c0de40f0:	2200      	movs	r2, #0
c0de40f2:	7679      	strb	r1, [r7, #25]
c0de40f4:	4641      	mov	r1, r8
c0de40f6:	76ba      	strb	r2, [r7, #26]
c0de40f8:	f000 fb2c 	bl	c0de4754 <OUTLINED_FUNCTION_2>
c0de40fc:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de4100:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de4104:	6868      	ldr	r0, [r5, #4]
c0de4106:	78a9      	ldrb	r1, [r5, #2]
c0de4108:	2205      	movs	r2, #5
c0de410a:	f888 2016 	strb.w	r2, [r8, #22]
c0de410e:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de4112:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4116:	2000      	movs	r0, #0
c0de4118:	3101      	adds	r1, #1
c0de411a:	f888 a006 	strb.w	sl, [r8, #6]
c0de411e:	f888 2007 	strb.w	r2, [r8, #7]
c0de4122:	f888 001f 	strb.w	r0, [r8, #31]
c0de4126:	70a9      	strb	r1, [r5, #2]
c0de4128:	b008      	add	sp, #32
c0de412a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de412e:	bf00      	nop
c0de4130:	00000704 	.word	0x00000704

c0de4134 <nbgl_layoutAddMenuList>:
c0de4134:	2800      	cmp	r0, #0
c0de4136:	d04f      	beq.n	c0de41d8 <nbgl_layoutAddMenuList+0xa4>
c0de4138:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de413c:	460c      	mov	r4, r1
c0de413e:	4605      	mov	r5, r0
c0de4140:	2700      	movs	r7, #0
c0de4142:	f04f 0b05 	mov.w	fp, #5
c0de4146:	f04f 0803 	mov.w	r8, #3
c0de414a:	f04f 0a00 	mov.w	sl, #0
c0de414e:	7920      	ldrb	r0, [r4, #4]
c0de4150:	4582      	cmp	sl, r0
c0de4152:	d23e      	bcs.n	c0de41d2 <nbgl_layoutAddMenuList+0x9e>
c0de4154:	7960      	ldrb	r0, [r4, #5]
c0de4156:	2803      	cmp	r0, #3
c0de4158:	d302      	bcc.n	c0de4160 <nbgl_layoutAddMenuList+0x2c>
c0de415a:	1e81      	subs	r1, r0, #2
c0de415c:	4551      	cmp	r1, sl
c0de415e:	dc35      	bgt.n	c0de41cc <nbgl_layoutAddMenuList+0x98>
c0de4160:	3002      	adds	r0, #2
c0de4162:	4550      	cmp	r0, sl
c0de4164:	d332      	bcc.n	c0de41cc <nbgl_layoutAddMenuList+0x98>
c0de4166:	7869      	ldrb	r1, [r5, #1]
c0de4168:	f000 fb0f 	bl	c0de478a <OUTLINED_FUNCTION_5>
c0de416c:	6821      	ldr	r1, [r4, #0]
c0de416e:	4606      	mov	r6, r0
c0de4170:	fa5f f08a 	uxtb.w	r0, sl
c0de4174:	4788      	blx	r1
c0de4176:	7961      	ldrb	r1, [r4, #5]
c0de4178:	220a      	movs	r2, #10
c0de417a:	458a      	cmp	sl, r1
c0de417c:	bf08      	it	eq
c0de417e:	2208      	moveq	r2, #8
c0de4180:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de4184:	71f7      	strb	r7, [r6, #7]
c0de4186:	7177      	strb	r7, [r6, #5]
c0de4188:	f886 b020 	strb.w	fp, [r6, #32]
c0de418c:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de4190:	f886 b016 	strb.w	fp, [r6, #22]
c0de4194:	f886 801f 	strb.w	r8, [r6, #31]
c0de4198:	4632      	mov	r2, r6
c0de419a:	0e03      	lsrs	r3, r0, #24
c0de419c:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de41a0:	70d3      	strb	r3, [r2, #3]
c0de41a2:	0c03      	lsrs	r3, r0, #16
c0de41a4:	0a00      	lsrs	r0, r0, #8
c0de41a6:	7093      	strb	r3, [r2, #2]
c0de41a8:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de41ac:	6868      	ldr	r0, [r5, #4]
c0de41ae:	78aa      	ldrb	r2, [r5, #2]
c0de41b0:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de41b4:	200c      	movs	r0, #12
c0de41b6:	71b0      	strb	r0, [r6, #6]
c0de41b8:	2072      	movs	r0, #114	@ 0x72
c0de41ba:	7130      	strb	r0, [r6, #4]
c0de41bc:	ebaa 0001 	sub.w	r0, sl, r1
c0de41c0:	0901      	lsrs	r1, r0, #4
c0de41c2:	0100      	lsls	r0, r0, #4
c0de41c4:	7670      	strb	r0, [r6, #25]
c0de41c6:	1c50      	adds	r0, r2, #1
c0de41c8:	76b1      	strb	r1, [r6, #26]
c0de41ca:	70a8      	strb	r0, [r5, #2]
c0de41cc:	f10a 0a01 	add.w	sl, sl, #1
c0de41d0:	e7bd      	b.n	c0de414e <nbgl_layoutAddMenuList+0x1a>
c0de41d2:	2000      	movs	r0, #0
c0de41d4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de41d8:	f000 bae6 	b.w	c0de47a8 <OUTLINED_FUNCTION_8>

c0de41dc <nbgl_layoutAddCenteredInfo>:
c0de41dc:	2800      	cmp	r0, #0
c0de41de:	f000 80dc 	beq.w	c0de439a <nbgl_layoutAddCenteredInfo+0x1be>
c0de41e2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de41e6:	b086      	sub	sp, #24
c0de41e8:	460d      	mov	r5, r1
c0de41ea:	7841      	ldrb	r1, [r0, #1]
c0de41ec:	4682      	mov	sl, r0
c0de41ee:	2001      	movs	r0, #1
c0de41f0:	f003 f8cd 	bl	c0de738e <nbgl_objPoolGet>
c0de41f4:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de41f8:	4680      	mov	r8, r0
c0de41fa:	2003      	movs	r0, #3
c0de41fc:	2703      	movs	r7, #3
c0de41fe:	f003 f8cb 	bl	c0de7398 <nbgl_containerPoolGet>
c0de4202:	4641      	mov	r1, r8
c0de4204:	0e02      	lsrs	r2, r0, #24
c0de4206:	f04f 0b00 	mov.w	fp, #0
c0de420a:	9504      	str	r5, [sp, #16]
c0de420c:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4210:	f888 b020 	strb.w	fp, [r8, #32]
c0de4214:	70ca      	strb	r2, [r1, #3]
c0de4216:	0c02      	lsrs	r2, r0, #16
c0de4218:	0a00      	lsrs	r0, r0, #8
c0de421a:	708a      	strb	r2, [r1, #2]
c0de421c:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de4220:	68a8      	ldr	r0, [r5, #8]
c0de4222:	b3c0      	cbz	r0, c0de4296 <nbgl_layoutAddCenteredInfo+0xba>
c0de4224:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4228:	2002      	movs	r0, #2
c0de422a:	f003 f8b0 	bl	c0de738e <nbgl_objPoolGet>
c0de422e:	4606      	mov	r6, r0
c0de4230:	77c7      	strb	r7, [r0, #31]
c0de4232:	68a8      	ldr	r0, [r5, #8]
c0de4234:	f003 fa92 	bl	c0de775c <pic>
c0de4238:	4631      	mov	r1, r6
c0de423a:	0e02      	lsrs	r2, r0, #24
c0de423c:	f886 b013 	strb.w	fp, [r6, #19]
c0de4240:	f886 b009 	strb.w	fp, [r6, #9]
c0de4244:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de4248:	70ca      	strb	r2, [r1, #3]
c0de424a:	0c02      	lsrs	r2, r0, #16
c0de424c:	708a      	strb	r2, [r1, #2]
c0de424e:	0a01      	lsrs	r1, r0, #8
c0de4250:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4254:	4631      	mov	r1, r6
c0de4256:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de425a:	f881 b003 	strb.w	fp, [r1, #3]
c0de425e:	f881 b002 	strb.w	fp, [r1, #2]
c0de4262:	4641      	mov	r1, r8
c0de4264:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4268:	784f      	ldrb	r7, [r1, #1]
c0de426a:	788c      	ldrb	r4, [r1, #2]
c0de426c:	78cd      	ldrb	r5, [r1, #3]
c0de426e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4272:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4276:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de427a:	9d04      	ldr	r5, [sp, #16]
c0de427c:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4280:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4284:	2202      	movs	r2, #2
c0de4286:	75b2      	strb	r2, [r6, #22]
c0de4288:	1c5a      	adds	r2, r3, #1
c0de428a:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de428e:	7881      	ldrb	r1, [r0, #2]
c0de4290:	78c0      	ldrb	r0, [r0, #3]
c0de4292:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de4296:	6828      	ldr	r0, [r5, #0]
c0de4298:	2800      	cmp	r0, #0
c0de429a:	f000 80a5 	beq.w	c0de43e8 <nbgl_layoutAddCenteredInfo+0x20c>
c0de429e:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de42a2:	f000 fa72 	bl	c0de478a <OUTLINED_FUNCTION_5>
c0de42a6:	4607      	mov	r7, r0
c0de42a8:	2003      	movs	r0, #3
c0de42aa:	77f8      	strb	r0, [r7, #31]
c0de42ac:	6828      	ldr	r0, [r5, #0]
c0de42ae:	f003 fa55 	bl	c0de775c <pic>
c0de42b2:	4601      	mov	r1, r0
c0de42b4:	2072      	movs	r0, #114	@ 0x72
c0de42b6:	2400      	movs	r4, #0
c0de42b8:	7138      	strb	r0, [r7, #4]
c0de42ba:	2005      	movs	r0, #5
c0de42bc:	0e0a      	lsrs	r2, r1, #24
c0de42be:	717c      	strb	r4, [r7, #5]
c0de42c0:	f887 0020 	strb.w	r0, [r7, #32]
c0de42c4:	4638      	mov	r0, r7
c0de42c6:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de42ca:	70c2      	strb	r2, [r0, #3]
c0de42cc:	0c0a      	lsrs	r2, r1, #16
c0de42ce:	7082      	strb	r2, [r0, #2]
c0de42d0:	0a08      	lsrs	r0, r1, #8
c0de42d2:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de42d6:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de42da:	7b6a      	ldrb	r2, [r5, #13]
c0de42dc:	f040 0001 	orr.w	r0, r0, #1
c0de42e0:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de42e4:	2008      	movs	r0, #8
c0de42e6:	2a00      	cmp	r2, #0
c0de42e8:	bf08      	it	eq
c0de42ea:	200a      	moveq	r0, #10
c0de42ec:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de42f0:	2272      	movs	r2, #114	@ 0x72
c0de42f2:	2301      	movs	r3, #1
c0de42f4:	f003 f864 	bl	c0de73c0 <nbgl_getTextNbLinesInWidth>
c0de42f8:	4606      	mov	r6, r0
c0de42fa:	2805      	cmp	r0, #5
c0de42fc:	d31e      	bcc.n	c0de433c <nbgl_layoutAddCenteredInfo+0x160>
c0de42fe:	463d      	mov	r5, r7
c0de4300:	2004      	movs	r0, #4
c0de4302:	2101      	movs	r1, #1
c0de4304:	f10d 0416 	add.w	r4, sp, #22
c0de4308:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de430c:	786a      	ldrb	r2, [r5, #1]
c0de430e:	78ab      	ldrb	r3, [r5, #2]
c0de4310:	78ee      	ldrb	r6, [r5, #3]
c0de4312:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de4316:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de431a:	9101      	str	r1, [sp, #4]
c0de431c:	9400      	str	r4, [sp, #0]
c0de431e:	2400      	movs	r4, #0
c0de4320:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de4324:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4328:	2304      	movs	r3, #4
c0de432a:	f000 fa29 	bl	c0de4780 <OUTLINED_FUNCTION_4>
c0de432e:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de4332:	2604      	movs	r6, #4
c0de4334:	7128      	strb	r0, [r5, #4]
c0de4336:	0a00      	lsrs	r0, r0, #8
c0de4338:	7168      	strb	r0, [r5, #5]
c0de433a:	9d04      	ldr	r5, [sp, #16]
c0de433c:	f000 fa28 	bl	c0de4790 <OUTLINED_FUNCTION_6>
c0de4340:	79c0      	ldrb	r0, [r0, #7]
c0de4342:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4346:	4370      	muls	r0, r6
c0de4348:	0a01      	lsrs	r1, r0, #8
c0de434a:	71b8      	strb	r0, [r7, #6]
c0de434c:	71f9      	strb	r1, [r7, #7]
c0de434e:	68a9      	ldr	r1, [r5, #8]
c0de4350:	b329      	cbz	r1, c0de439e <nbgl_layoutAddCenteredInfo+0x1c2>
c0de4352:	4641      	mov	r1, r8
c0de4354:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4358:	784c      	ldrb	r4, [r1, #1]
c0de435a:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de435e:	788d      	ldrb	r5, [r1, #2]
c0de4360:	78c9      	ldrb	r1, [r1, #3]
c0de4362:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4366:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de436a:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de436e:	463a      	mov	r2, r7
c0de4370:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de4374:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de4378:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de437c:	0e0b      	lsrs	r3, r1, #24
c0de437e:	70d3      	strb	r3, [r2, #3]
c0de4380:	0c0b      	lsrs	r3, r1, #16
c0de4382:	0a09      	lsrs	r1, r1, #8
c0de4384:	7051      	strb	r1, [r2, #1]
c0de4386:	2100      	movs	r1, #0
c0de4388:	7093      	strb	r3, [r2, #2]
c0de438a:	7211      	strb	r1, [r2, #8]
c0de438c:	2e03      	cmp	r6, #3
c0de438e:	bf38      	it	cc
c0de4390:	2101      	movcc	r1, #1
c0de4392:	0089      	lsls	r1, r1, #2
c0de4394:	71d1      	strb	r1, [r2, #7]
c0de4396:	2108      	movs	r1, #8
c0de4398:	e00a      	b.n	c0de43b0 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de439a:	f000 ba05 	b.w	c0de47a8 <OUTLINED_FUNCTION_8>
c0de439e:	6869      	ldr	r1, [r5, #4]
c0de43a0:	b119      	cbz	r1, c0de43aa <nbgl_layoutAddCenteredInfo+0x1ce>
c0de43a2:	f000 f9f9 	bl	c0de4798 <OUTLINED_FUNCTION_7>
c0de43a6:	2102      	movs	r1, #2
c0de43a8:	e002      	b.n	c0de43b0 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de43aa:	f000 f9f5 	bl	c0de4798 <OUTLINED_FUNCTION_7>
c0de43ae:	2105      	movs	r1, #5
c0de43b0:	7111      	strb	r1, [r2, #4]
c0de43b2:	4641      	mov	r1, r8
c0de43b4:	4458      	add	r0, fp
c0de43b6:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de43ba:	784c      	ldrb	r4, [r1, #1]
c0de43bc:	788d      	ldrb	r5, [r1, #2]
c0de43be:	78ce      	ldrb	r6, [r1, #3]
c0de43c0:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de43c4:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de43c8:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de43cc:	9d04      	ldr	r5, [sp, #16]
c0de43ce:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de43d2:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de43d6:	1c5a      	adds	r2, r3, #1
c0de43d8:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de43dc:	7e79      	ldrb	r1, [r7, #25]
c0de43de:	7eba      	ldrb	r2, [r7, #26]
c0de43e0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de43e4:	eb00 0b01 	add.w	fp, r0, r1
c0de43e8:	6868      	ldr	r0, [r5, #4]
c0de43ea:	2800      	cmp	r0, #0
c0de43ec:	d071      	beq.n	c0de44d2 <nbgl_layoutAddCenteredInfo+0x2f6>
c0de43ee:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de43f2:	2004      	movs	r0, #4
c0de43f4:	f8cd a00c 	str.w	sl, [sp, #12]
c0de43f8:	f002 ffc9 	bl	c0de738e <nbgl_objPoolGet>
c0de43fc:	2403      	movs	r4, #3
c0de43fe:	4607      	mov	r7, r0
c0de4400:	77c4      	strb	r4, [r0, #31]
c0de4402:	6868      	ldr	r0, [r5, #4]
c0de4404:	f003 f9aa 	bl	c0de775c <pic>
c0de4408:	4601      	mov	r1, r0
c0de440a:	2000      	movs	r0, #0
c0de440c:	2301      	movs	r3, #1
c0de440e:	7178      	strb	r0, [r7, #5]
c0de4410:	2072      	movs	r0, #114	@ 0x72
c0de4412:	0e0a      	lsrs	r2, r1, #24
c0de4414:	7138      	strb	r0, [r7, #4]
c0de4416:	200a      	movs	r0, #10
c0de4418:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de441c:	2005      	movs	r0, #5
c0de441e:	f887 0020 	strb.w	r0, [r7, #32]
c0de4422:	f000 f984 	bl	c0de472e <OUTLINED_FUNCTION_0>
c0de4426:	4682      	mov	sl, r0
c0de4428:	2804      	cmp	r0, #4
c0de442a:	d31c      	bcc.n	c0de4466 <nbgl_layoutAddCenteredInfo+0x28a>
c0de442c:	463d      	mov	r5, r7
c0de442e:	f04f 0c01 	mov.w	ip, #1
c0de4432:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de4436:	f805 4c01 	strb.w	r4, [r5, #-1]
c0de443a:	786a      	ldrb	r2, [r5, #1]
c0de443c:	78ab      	ldrb	r3, [r5, #2]
c0de443e:	78ec      	ldrb	r4, [r5, #3]
c0de4440:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4444:	ae05      	add	r6, sp, #20
c0de4446:	e9cd 6c00 	strd	r6, ip, [sp]
c0de444a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de444e:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de4452:	2303      	movs	r3, #3
c0de4454:	f000 f994 	bl	c0de4780 <OUTLINED_FUNCTION_4>
c0de4458:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de445c:	f04f 0a03 	mov.w	sl, #3
c0de4460:	7128      	strb	r0, [r5, #4]
c0de4462:	0a00      	lsrs	r0, r0, #8
c0de4464:	7168      	strb	r0, [r5, #5]
c0de4466:	f000 f993 	bl	c0de4790 <OUTLINED_FUNCTION_6>
c0de446a:	4641      	mov	r1, r8
c0de446c:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de4470:	784c      	ldrb	r4, [r1, #1]
c0de4472:	788d      	ldrb	r5, [r1, #2]
c0de4474:	78ce      	ldrb	r6, [r1, #3]
c0de4476:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de447a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de447e:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4482:	463d      	mov	r5, r7
c0de4484:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de4488:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de448c:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4490:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4494:	0e26      	lsrs	r6, r4, #24
c0de4496:	70ee      	strb	r6, [r5, #3]
c0de4498:	0c26      	lsrs	r6, r4, #16
c0de449a:	0a24      	lsrs	r4, r4, #8
c0de449c:	74fc      	strb	r4, [r7, #19]
c0de449e:	70ae      	strb	r6, [r5, #2]
c0de44a0:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de44a4:	2302      	movs	r3, #2
c0de44a6:	2400      	movs	r4, #0
c0de44a8:	3201      	adds	r2, #1
c0de44aa:	767b      	strb	r3, [r7, #25]
c0de44ac:	2308      	movs	r3, #8
c0de44ae:	76bc      	strb	r4, [r7, #26]
c0de44b0:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de44b4:	79c0      	ldrb	r0, [r0, #7]
c0de44b6:	75bb      	strb	r3, [r7, #22]
c0de44b8:	fb0a f300 	mul.w	r3, sl, r0
c0de44bc:	fb0a b000 	mla	r0, sl, r0, fp
c0de44c0:	e9dd a503 	ldrd	sl, r5, [sp, #12]
c0de44c4:	71bb      	strb	r3, [r7, #6]
c0de44c6:	0a1b      	lsrs	r3, r3, #8
c0de44c8:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de44cc:	f100 0b02 	add.w	fp, r0, #2
c0de44d0:	71fb      	strb	r3, [r7, #7]
c0de44d2:	7b28      	ldrb	r0, [r5, #12]
c0de44d4:	2102      	movs	r1, #2
c0de44d6:	2800      	cmp	r0, #0
c0de44d8:	bf08      	it	eq
c0de44da:	2105      	moveq	r1, #5
c0de44dc:	f888 1016 	strb.w	r1, [r8, #22]
c0de44e0:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de44e4:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de44e8:	2272      	movs	r2, #114	@ 0x72
c0de44ea:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de44ee:	2000      	movs	r0, #0
c0de44f0:	f888 2004 	strb.w	r2, [r8, #4]
c0de44f4:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de44f8:	3101      	adds	r1, #1
c0de44fa:	f888 b006 	strb.w	fp, [r8, #6]
c0de44fe:	f888 0019 	strb.w	r0, [r8, #25]
c0de4502:	f888 001a 	strb.w	r0, [r8, #26]
c0de4506:	f888 0005 	strb.w	r0, [r8, #5]
c0de450a:	f888 001f 	strb.w	r0, [r8, #31]
c0de450e:	f888 2007 	strb.w	r2, [r8, #7]
c0de4512:	f88a 1002 	strb.w	r1, [sl, #2]
c0de4516:	b006      	add	sp, #24
c0de4518:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de451c <nbgl_layoutAddSwitch>:
c0de451c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4520:	2800      	cmp	r0, #0
c0de4522:	f000 8084 	beq.w	c0de462e <nbgl_layoutAddSwitch+0x112>
c0de4526:	460d      	mov	r5, r1
c0de4528:	7841      	ldrb	r1, [r0, #1]
c0de452a:	4604      	mov	r4, r0
c0de452c:	f000 f92d 	bl	c0de478a <OUTLINED_FUNCTION_5>
c0de4530:	f04f 0803 	mov.w	r8, #3
c0de4534:	4606      	mov	r6, r0
c0de4536:	f880 801f 	strb.w	r8, [r0, #31]
c0de453a:	6828      	ldr	r0, [r5, #0]
c0de453c:	f003 f90e 	bl	c0de775c <pic>
c0de4540:	4601      	mov	r1, r0
c0de4542:	2072      	movs	r0, #114	@ 0x72
c0de4544:	2700      	movs	r7, #0
c0de4546:	2301      	movs	r3, #1
c0de4548:	7130      	strb	r0, [r6, #4]
c0de454a:	2008      	movs	r0, #8
c0de454c:	0e0a      	lsrs	r2, r1, #24
c0de454e:	7177      	strb	r7, [r6, #5]
c0de4550:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4554:	2005      	movs	r0, #5
c0de4556:	f886 0020 	strb.w	r0, [r6, #32]
c0de455a:	4630      	mov	r0, r6
c0de455c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4560:	70c2      	strb	r2, [r0, #3]
c0de4562:	0c0a      	lsrs	r2, r1, #16
c0de4564:	7082      	strb	r2, [r0, #2]
c0de4566:	0a08      	lsrs	r0, r1, #8
c0de4568:	2272      	movs	r2, #114	@ 0x72
c0de456a:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de456e:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de4572:	f040 0001 	orr.w	r0, r0, #1
c0de4576:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de457a:	2008      	movs	r0, #8
c0de457c:	f002 ff20 	bl	c0de73c0 <nbgl_getTextNbLinesInWidth>
c0de4580:	2801      	cmp	r0, #1
c0de4582:	d854      	bhi.n	c0de462e <nbgl_layoutAddSwitch+0x112>
c0de4584:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4588:	f002 ff10 	bl	c0de73ac <nbgl_getFontLineHeight>
c0de458c:	6861      	ldr	r1, [r4, #4]
c0de458e:	78a2      	ldrb	r2, [r4, #2]
c0de4590:	76b7      	strb	r7, [r6, #26]
c0de4592:	71f7      	strb	r7, [r6, #7]
c0de4594:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de4598:	71b0      	strb	r0, [r6, #6]
c0de459a:	2002      	movs	r0, #2
c0de459c:	f886 8019 	strb.w	r8, [r6, #25]
c0de45a0:	75b0      	strb	r0, [r6, #22]
c0de45a2:	1c50      	adds	r0, r2, #1
c0de45a4:	70a0      	strb	r0, [r4, #2]
c0de45a6:	6868      	ldr	r0, [r5, #4]
c0de45a8:	2800      	cmp	r0, #0
c0de45aa:	d04e      	beq.n	c0de464a <nbgl_layoutAddSwitch+0x12e>
c0de45ac:	7861      	ldrb	r1, [r4, #1]
c0de45ae:	f000 f8ec 	bl	c0de478a <OUTLINED_FUNCTION_5>
c0de45b2:	4606      	mov	r6, r0
c0de45b4:	2003      	movs	r0, #3
c0de45b6:	77f0      	strb	r0, [r6, #31]
c0de45b8:	6868      	ldr	r0, [r5, #4]
c0de45ba:	f003 f8cf 	bl	c0de775c <pic>
c0de45be:	2172      	movs	r1, #114	@ 0x72
c0de45c0:	4637      	mov	r7, r6
c0de45c2:	f04f 0800 	mov.w	r8, #0
c0de45c6:	f04f 0a05 	mov.w	sl, #5
c0de45ca:	7131      	strb	r1, [r6, #4]
c0de45cc:	210a      	movs	r1, #10
c0de45ce:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de45d2:	f886 8005 	strb.w	r8, [r6, #5]
c0de45d6:	f886 a020 	strb.w	sl, [r6, #32]
c0de45da:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de45de:	0e01      	lsrs	r1, r0, #24
c0de45e0:	70f9      	strb	r1, [r7, #3]
c0de45e2:	0c01      	lsrs	r1, r0, #16
c0de45e4:	0a00      	lsrs	r0, r0, #8
c0de45e6:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de45ea:	200a      	movs	r0, #10
c0de45ec:	70b9      	strb	r1, [r7, #2]
c0de45ee:	f002 fedd 	bl	c0de73ac <nbgl_getFontLineHeight>
c0de45f2:	09c1      	lsrs	r1, r0, #7
c0de45f4:	f896 2027 	ldrb.w	r2, [r6, #39]	@ 0x27
c0de45f8:	78bb      	ldrb	r3, [r7, #2]
c0de45fa:	0040      	lsls	r0, r0, #1
c0de45fc:	71f1      	strb	r1, [r6, #7]
c0de45fe:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de4602:	71b0      	strb	r0, [r6, #6]
c0de4604:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4608:	f041 0101 	orr.w	r1, r1, #1
c0de460c:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de4610:	7839      	ldrb	r1, [r7, #0]
c0de4612:	78ff      	ldrb	r7, [r7, #3]
c0de4614:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4618:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de461c:	2301      	movs	r3, #1
c0de461e:	2701      	movs	r7, #1
c0de4620:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4624:	2272      	movs	r2, #114	@ 0x72
c0de4626:	f002 fecb 	bl	c0de73c0 <nbgl_getTextNbLinesInWidth>
c0de462a:	2802      	cmp	r0, #2
c0de462c:	d902      	bls.n	c0de4634 <nbgl_layoutAddSwitch+0x118>
c0de462e:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de4632:	e05c      	b.n	c0de46ee <nbgl_layoutAddSwitch+0x1d2>
c0de4634:	6860      	ldr	r0, [r4, #4]
c0de4636:	78a1      	ldrb	r1, [r4, #2]
c0de4638:	f886 801a 	strb.w	r8, [r6, #26]
c0de463c:	f886 a016 	strb.w	sl, [r6, #22]
c0de4640:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de4644:	1c48      	adds	r0, r1, #1
c0de4646:	7677      	strb	r7, [r6, #25]
c0de4648:	70a0      	strb	r0, [r4, #2]
c0de464a:	7861      	ldrb	r1, [r4, #1]
c0de464c:	2005      	movs	r0, #5
c0de464e:	f002 fe9e 	bl	c0de738e <nbgl_objPoolGet>
c0de4652:	2600      	movs	r6, #0
c0de4654:	4607      	mov	r7, r0
c0de4656:	f04f 0a03 	mov.w	sl, #3
c0de465a:	f04f 0808 	mov.w	r8, #8
c0de465e:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de4662:	2001      	movs	r0, #1
c0de4664:	f887 a020 	strb.w	sl, [r7, #32]
c0de4668:	f887 a01f 	strb.w	sl, [r7, #31]
c0de466c:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de4670:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4674:	7a28      	ldrb	r0, [r5, #8]
c0de4676:	4a1f      	ldr	r2, [pc, #124]	@ (c0de46f4 <nbgl_layoutAddSwitch+0x1d8>)
c0de4678:	491f      	ldr	r1, [pc, #124]	@ (c0de46f8 <nbgl_layoutAddSwitch+0x1dc>)
c0de467a:	2801      	cmp	r0, #1
c0de467c:	447a      	add	r2, pc
c0de467e:	4479      	add	r1, pc
c0de4680:	bf08      	it	eq
c0de4682:	4611      	moveq	r1, r2
c0de4684:	463a      	mov	r2, r7
c0de4686:	0e0b      	lsrs	r3, r1, #24
c0de4688:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de468c:	70d3      	strb	r3, [r2, #3]
c0de468e:	0c0b      	lsrs	r3, r1, #16
c0de4690:	7093      	strb	r3, [r2, #2]
c0de4692:	0a0a      	lsrs	r2, r1, #8
c0de4694:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4698:	2801      	cmp	r0, #1
c0de469a:	4638      	mov	r0, r7
c0de469c:	4a17      	ldr	r2, [pc, #92]	@ (c0de46fc <nbgl_layoutAddSwitch+0x1e0>)
c0de469e:	4d18      	ldr	r5, [pc, #96]	@ (c0de4700 <nbgl_layoutAddSwitch+0x1e4>)
c0de46a0:	447a      	add	r2, pc
c0de46a2:	447d      	add	r5, pc
c0de46a4:	bf18      	it	ne
c0de46a6:	462a      	movne	r2, r5
c0de46a8:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de46ac:	0e13      	lsrs	r3, r2, #24
c0de46ae:	70c3      	strb	r3, [r0, #3]
c0de46b0:	0c13      	lsrs	r3, r2, #16
c0de46b2:	7083      	strb	r3, [r0, #2]
c0de46b4:	0a10      	lsrs	r0, r2, #8
c0de46b6:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de46ba:	2008      	movs	r0, #8
c0de46bc:	f002 fe8a 	bl	c0de73d4 <nbgl_getTextWidth>
c0de46c0:	6861      	ldr	r1, [r4, #4]
c0de46c2:	78a2      	ldrb	r2, [r4, #2]
c0de46c4:	786b      	ldrb	r3, [r5, #1]
c0de46c6:	76be      	strb	r6, [r7, #26]
c0de46c8:	71fe      	strb	r6, [r7, #7]
c0de46ca:	f887 8016 	strb.w	r8, [r7, #22]
c0de46ce:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de46d2:	210c      	movs	r1, #12
c0de46d4:	f887 a019 	strb.w	sl, [r7, #25]
c0de46d8:	71b9      	strb	r1, [r7, #6]
c0de46da:	7829      	ldrb	r1, [r5, #0]
c0de46dc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de46e0:	4408      	add	r0, r1
c0de46e2:	1c51      	adds	r1, r2, #1
c0de46e4:	300a      	adds	r0, #10
c0de46e6:	7138      	strb	r0, [r7, #4]
c0de46e8:	0a00      	lsrs	r0, r0, #8
c0de46ea:	70a1      	strb	r1, [r4, #2]
c0de46ec:	7178      	strb	r0, [r7, #5]
c0de46ee:	4630      	mov	r0, r6
c0de46f0:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de46f4:	00003ad5 	.word	0x00003ad5
c0de46f8:	00003ba2 	.word	0x00003ba2
c0de46fc:	0000386d 	.word	0x0000386d
c0de4700:	00003855 	.word	0x00003855

c0de4704 <nbgl_layoutDraw>:
c0de4704:	b120      	cbz	r0, c0de4710 <nbgl_layoutDraw+0xc>
c0de4706:	b580      	push	{r7, lr}
c0de4708:	f002 fe32 	bl	c0de7370 <nbgl_screenRedraw>
c0de470c:	2000      	movs	r0, #0
c0de470e:	bd80      	pop	{r7, pc}
c0de4710:	f000 b84a 	b.w	c0de47a8 <OUTLINED_FUNCTION_8>

c0de4714 <nbgl_layoutRelease>:
c0de4714:	b148      	cbz	r0, c0de472a <nbgl_layoutRelease+0x16>
c0de4716:	b510      	push	{r4, lr}
c0de4718:	4604      	mov	r4, r0
c0de471a:	7800      	ldrb	r0, [r0, #0]
c0de471c:	b110      	cbz	r0, c0de4724 <nbgl_layoutRelease+0x10>
c0de471e:	7860      	ldrb	r0, [r4, #1]
c0de4720:	f002 fe2b 	bl	c0de737a <nbgl_screenPop>
c0de4724:	2000      	movs	r0, #0
c0de4726:	70a0      	strb	r0, [r4, #2]
c0de4728:	bd10      	pop	{r4, pc}
c0de472a:	f000 b83d 	b.w	c0de47a8 <OUTLINED_FUNCTION_8>

c0de472e <OUTLINED_FUNCTION_0>:
c0de472e:	4638      	mov	r0, r7
c0de4730:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4734:	70c2      	strb	r2, [r0, #3]
c0de4736:	0c0a      	lsrs	r2, r1, #16
c0de4738:	7082      	strb	r2, [r0, #2]
c0de473a:	0a08      	lsrs	r0, r1, #8
c0de473c:	2272      	movs	r2, #114	@ 0x72
c0de473e:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de4742:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de4746:	f040 0001 	orr.w	r0, r0, #1
c0de474a:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de474e:	200a      	movs	r0, #10
c0de4750:	f002 be36 	b.w	c0de73c0 <nbgl_getTextNbLinesInWidth>

c0de4754 <OUTLINED_FUNCTION_2>:
c0de4754:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4758:	784b      	ldrb	r3, [r1, #1]
c0de475a:	788d      	ldrb	r5, [r1, #2]
c0de475c:	78c9      	ldrb	r1, [r1, #3]
c0de475e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4762:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4766:	9d05      	ldr	r5, [sp, #20]
c0de4768:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de476c:	4770      	bx	lr

c0de476e <OUTLINED_FUNCTION_3>:
c0de476e:	70c2      	strb	r2, [r0, #3]
c0de4770:	0c0a      	lsrs	r2, r1, #16
c0de4772:	7082      	strb	r2, [r0, #2]
c0de4774:	0a08      	lsrs	r0, r1, #8
c0de4776:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de477a:	2008      	movs	r0, #8
c0de477c:	f002 be2a 	b.w	c0de73d4 <nbgl_getTextWidth>

c0de4780 <OUTLINED_FUNCTION_4>:
c0de4780:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4784:	2272      	movs	r2, #114	@ 0x72
c0de4786:	f002 be2a 	b.w	c0de73de <nbgl_getTextMaxLenInNbLines>

c0de478a <OUTLINED_FUNCTION_5>:
c0de478a:	2004      	movs	r0, #4
c0de478c:	f002 bdff 	b.w	c0de738e <nbgl_objPoolGet>

c0de4790 <OUTLINED_FUNCTION_6>:
c0de4790:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4794:	f002 be05 	b.w	c0de73a2 <nbgl_getFont>

c0de4798 <OUTLINED_FUNCTION_7>:
c0de4798:	2100      	movs	r1, #0
c0de479a:	463a      	mov	r2, r7
c0de479c:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de47a0:	70d1      	strb	r1, [r2, #3]
c0de47a2:	7091      	strb	r1, [r2, #2]
c0de47a4:	7051      	strb	r1, [r2, #1]
c0de47a6:	4770      	bx	lr

c0de47a8 <OUTLINED_FUNCTION_8>:
c0de47a8:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de47ac:	4770      	bx	lr

c0de47ae <OUTLINED_FUNCTION_9>:
c0de47ae:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de47b2:	2003      	movs	r0, #3
c0de47b4:	f887 0020 	strb.w	r0, [r7, #32]
c0de47b8:	77f8      	strb	r0, [r7, #31]
c0de47ba:	4770      	bx	lr

c0de47bc <nbgl_stepDrawText>:
c0de47bc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de47c0:	460e      	mov	r6, r1
c0de47c2:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de47c4:	4605      	mov	r5, r0
c0de47c6:	2000      	movs	r0, #0
c0de47c8:	469a      	mov	sl, r3
c0de47ca:	4617      	mov	r7, r2
c0de47cc:	f000 f830 	bl	c0de4830 <getFreeContext>
c0de47d0:	b348      	cbz	r0, c0de4826 <nbgl_stepDrawText+0x6a>
c0de47d2:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de47d6:	4604      	mov	r4, r0
c0de47d8:	6146      	str	r6, [r0, #20]
c0de47da:	b10f      	cbz	r7, c0de47e0 <nbgl_stepDrawText+0x24>
c0de47dc:	f000 fae1 	bl	c0de4da2 <OUTLINED_FUNCTION_1>
c0de47e0:	200a      	movs	r0, #10
c0de47e2:	f1b8 0f00 	cmp.w	r8, #0
c0de47e6:	bf19      	ittee	ne
c0de47e8:	4641      	movne	r1, r8
c0de47ea:	2203      	movne	r2, #3
c0de47ec:	4651      	moveq	r1, sl
c0de47ee:	2204      	moveq	r2, #4
c0de47f0:	2372      	movs	r3, #114	@ 0x72
c0de47f2:	f002 fdea 	bl	c0de73ca <nbgl_getTextNbPagesInWidth>
c0de47f6:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de47f8:	7020      	strb	r0, [r4, #0]
c0de47fa:	072a      	lsls	r2, r5, #28
c0de47fc:	bf46      	itte	mi
c0de47fe:	3801      	submi	r0, #1
c0de4800:	7060      	strbmi	r0, [r4, #1]
c0de4802:	7860      	ldrbpl	r0, [r4, #1]
c0de4804:	f8c4 800c 	str.w	r8, [r4, #12]
c0de4808:	f8c4 a004 	str.w	sl, [r4, #4]
c0de480c:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de4810:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de4814:	7461      	strb	r1, [r4, #17]
c0de4816:	f005 0103 	and.w	r1, r5, #3
c0de481a:	7421      	strb	r1, [r4, #16]
c0de481c:	b2c1      	uxtb	r1, r0
c0de481e:	4620      	mov	r0, r4
c0de4820:	f000 f82c 	bl	c0de487c <displayTextPage>
c0de4824:	e000      	b.n	c0de4828 <nbgl_stepDrawText+0x6c>
c0de4826:	2400      	movs	r4, #0
c0de4828:	4620      	mov	r0, r4
c0de482a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de4830 <getFreeContext>:
c0de4830:	b570      	push	{r4, r5, r6, lr}
c0de4832:	4604      	mov	r4, r0
c0de4834:	4810      	ldr	r0, [pc, #64]	@ (c0de4878 <getFreeContext+0x48>)
c0de4836:	460d      	mov	r5, r1
c0de4838:	b151      	cbz	r1, c0de4850 <getFreeContext+0x20>
c0de483a:	2100      	movs	r1, #0
c0de483c:	2990      	cmp	r1, #144	@ 0x90
c0de483e:	d00a      	beq.n	c0de4856 <getFreeContext+0x26>
c0de4840:	eb09 0200 	add.w	r2, r9, r0
c0de4844:	440a      	add	r2, r1
c0de4846:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de484a:	b132      	cbz	r2, c0de485a <getFreeContext+0x2a>
c0de484c:	3148      	adds	r1, #72	@ 0x48
c0de484e:	e7f5      	b.n	c0de483c <getFreeContext+0xc>
c0de4850:	eb09 0600 	add.w	r6, r9, r0
c0de4854:	e005      	b.n	c0de4862 <getFreeContext+0x32>
c0de4856:	2600      	movs	r6, #0
c0de4858:	e00b      	b.n	c0de4872 <getFreeContext+0x42>
c0de485a:	4448      	add	r0, r9
c0de485c:	4408      	add	r0, r1
c0de485e:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de4862:	4630      	mov	r0, r6
c0de4864:	2148      	movs	r1, #72	@ 0x48
c0de4866:	f003 fa85 	bl	c0de7d74 <__aeabi_memclr>
c0de486a:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de486e:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de4872:	4630      	mov	r0, r6
c0de4874:	bd70      	pop	{r4, r5, r6, pc}
c0de4876:	bf00      	nop
c0de4878:	00000718 	.word	0x00000718

c0de487c <displayTextPage>:
c0de487c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4880:	b091      	sub	sp, #68	@ 0x44
c0de4882:	4604      	mov	r4, r0
c0de4884:	7840      	ldrb	r0, [r0, #1]
c0de4886:	460e      	mov	r6, r1
c0de4888:	4288      	cmp	r0, r1
c0de488a:	d21c      	bcs.n	c0de48c6 <displayTextPage+0x4a>
c0de488c:	68a5      	ldr	r5, [r4, #8]
c0de488e:	7820      	ldrb	r0, [r4, #0]
c0de4890:	7066      	strb	r6, [r4, #1]
c0de4892:	3801      	subs	r0, #1
c0de4894:	42b0      	cmp	r0, r6
c0de4896:	dd31      	ble.n	c0de48fc <displayTextPage+0x80>
c0de4898:	68e0      	ldr	r0, [r4, #12]
c0de489a:	2101      	movs	r1, #1
c0de489c:	2303      	movs	r3, #3
c0de489e:	aa08      	add	r2, sp, #32
c0de48a0:	e9cd 2100 	strd	r2, r1, [sp]
c0de48a4:	4629      	mov	r1, r5
c0de48a6:	2800      	cmp	r0, #0
c0de48a8:	bf08      	it	eq
c0de48aa:	2304      	moveq	r3, #4
c0de48ac:	200a      	movs	r0, #10
c0de48ae:	2272      	movs	r2, #114	@ 0x72
c0de48b0:	f002 fd95 	bl	c0de73de <nbgl_getTextMaxLenInNbLines>
c0de48b4:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de48b8:	1868      	adds	r0, r5, r1
c0de48ba:	60a0      	str	r0, [r4, #8]
c0de48bc:	5c69      	ldrb	r1, [r5, r1]
c0de48be:	290a      	cmp	r1, #10
c0de48c0:	d11e      	bne.n	c0de4900 <displayTextPage+0x84>
c0de48c2:	3001      	adds	r0, #1
c0de48c4:	e01b      	b.n	c0de48fe <displayTextPage+0x82>
c0de48c6:	68e5      	ldr	r5, [r4, #12]
c0de48c8:	2d00      	cmp	r5, #0
c0de48ca:	d074      	beq.n	c0de49b6 <displayTextPage+0x13a>
c0de48cc:	2700      	movs	r7, #0
c0de48ce:	f04f 0801 	mov.w	r8, #1
c0de48d2:	f10d 0a20 	add.w	sl, sp, #32
c0de48d6:	42be      	cmp	r6, r7
c0de48d8:	d0d9      	beq.n	c0de488e <displayTextPage+0x12>
c0de48da:	7820      	ldrb	r0, [r4, #0]
c0de48dc:	3801      	subs	r0, #1
c0de48de:	42b8      	cmp	r0, r7
c0de48e0:	dd0a      	ble.n	c0de48f8 <displayTextPage+0x7c>
c0de48e2:	200a      	movs	r0, #10
c0de48e4:	4629      	mov	r1, r5
c0de48e6:	2272      	movs	r2, #114	@ 0x72
c0de48e8:	2303      	movs	r3, #3
c0de48ea:	e9cd a800 	strd	sl, r8, [sp]
c0de48ee:	f002 fd76 	bl	c0de73de <nbgl_getTextMaxLenInNbLines>
c0de48f2:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de48f6:	4405      	add	r5, r0
c0de48f8:	3701      	adds	r7, #1
c0de48fa:	e7ec      	b.n	c0de48d6 <displayTextPage+0x5a>
c0de48fc:	2000      	movs	r0, #0
c0de48fe:	60a0      	str	r0, [r4, #8]
c0de4900:	484f      	ldr	r0, [pc, #316]	@ (c0de4a40 <displayTextPage+0x1c4>)
c0de4902:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4906:	4478      	add	r0, pc
c0de4908:	9004      	str	r0, [sp, #16]
c0de490a:	2000      	movs	r0, #0
c0de490c:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4910:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4914:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4918:	ca07      	ldmia	r2, {r0, r1, r2}
c0de491a:	ab05      	add	r3, sp, #20
c0de491c:	c307      	stmia	r3!, {r0, r1, r2}
c0de491e:	a803      	add	r0, sp, #12
c0de4920:	f7ff f986 	bl	c0de3c30 <nbgl_layoutGet>
c0de4924:	7827      	ldrb	r7, [r4, #0]
c0de4926:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de492a:	4606      	mov	r6, r0
c0de492c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de492e:	7c20      	ldrb	r0, [r4, #16]
c0de4930:	4639      	mov	r1, r7
c0de4932:	4652      	mov	r2, sl
c0de4934:	f000 f8fc 	bl	c0de4b30 <getNavigationInfo>
c0de4938:	4680      	mov	r8, r0
c0de493a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de493e:	68e0      	ldr	r0, [r4, #12]
c0de4940:	b188      	cbz	r0, c0de4966 <displayTextPage+0xea>
c0de4942:	2f01      	cmp	r7, #1
c0de4944:	d115      	bne.n	c0de4972 <displayTextPage+0xf6>
c0de4946:	6861      	ldr	r1, [r4, #4]
c0de4948:	2008      	movs	r0, #8
c0de494a:	2272      	movs	r2, #114	@ 0x72
c0de494c:	2300      	movs	r3, #0
c0de494e:	2600      	movs	r6, #0
c0de4950:	f002 fd36 	bl	c0de73c0 <nbgl_getTextNbLinesInWidth>
c0de4954:	2802      	cmp	r0, #2
c0de4956:	d348      	bcc.n	c0de49ea <displayTextPage+0x16e>
c0de4958:	6861      	ldr	r1, [r4, #4]
c0de495a:	2018      	movs	r0, #24
c0de495c:	f104 0218 	add.w	r2, r4, #24
c0de4960:	e9cd 2000 	strd	r2, r0, [sp]
c0de4964:	e021      	b.n	c0de49aa <displayTextPage+0x12e>
c0de4966:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de496a:	4630      	mov	r0, r6
c0de496c:	4629      	mov	r1, r5
c0de496e:	2200      	movs	r2, #0
c0de4970:	e055      	b.n	c0de4a1e <displayTextPage+0x1a2>
c0de4972:	f10a 0001 	add.w	r0, sl, #1
c0de4976:	6863      	ldr	r3, [r4, #4]
c0de4978:	2124      	movs	r1, #36	@ 0x24
c0de497a:	e9cd 0700 	strd	r0, r7, [sp]
c0de497e:	af08      	add	r7, sp, #32
c0de4980:	4a30      	ldr	r2, [pc, #192]	@ (c0de4a44 <displayTextPage+0x1c8>)
c0de4982:	4638      	mov	r0, r7
c0de4984:	447a      	add	r2, pc
c0de4986:	f002 fd57 	bl	c0de7438 <snprintf>
c0de498a:	2008      	movs	r0, #8
c0de498c:	4639      	mov	r1, r7
c0de498e:	2272      	movs	r2, #114	@ 0x72
c0de4990:	2300      	movs	r3, #0
c0de4992:	f04f 0a00 	mov.w	sl, #0
c0de4996:	f002 fd13 	bl	c0de73c0 <nbgl_getTextNbLinesInWidth>
c0de499a:	f104 0c18 	add.w	ip, r4, #24
c0de499e:	2802      	cmp	r0, #2
c0de49a0:	d32c      	bcc.n	c0de49fc <displayTextPage+0x180>
c0de49a2:	2018      	movs	r0, #24
c0de49a4:	e9cd c000 	strd	ip, r0, [sp]
c0de49a8:	a908      	add	r1, sp, #32
c0de49aa:	2008      	movs	r0, #8
c0de49ac:	2272      	movs	r2, #114	@ 0x72
c0de49ae:	2301      	movs	r3, #1
c0de49b0:	f002 fd1a 	bl	c0de73e8 <nbgl_textReduceOnNbLines>
c0de49b4:	e02d      	b.n	c0de4a12 <displayTextPage+0x196>
c0de49b6:	6865      	ldr	r5, [r4, #4]
c0de49b8:	2700      	movs	r7, #0
c0de49ba:	f04f 0801 	mov.w	r8, #1
c0de49be:	f10d 0a20 	add.w	sl, sp, #32
c0de49c2:	42be      	cmp	r6, r7
c0de49c4:	f43f af63 	beq.w	c0de488e <displayTextPage+0x12>
c0de49c8:	7820      	ldrb	r0, [r4, #0]
c0de49ca:	3801      	subs	r0, #1
c0de49cc:	42b8      	cmp	r0, r7
c0de49ce:	dd0a      	ble.n	c0de49e6 <displayTextPage+0x16a>
c0de49d0:	200a      	movs	r0, #10
c0de49d2:	4629      	mov	r1, r5
c0de49d4:	2272      	movs	r2, #114	@ 0x72
c0de49d6:	2304      	movs	r3, #4
c0de49d8:	e9cd a800 	strd	sl, r8, [sp]
c0de49dc:	f002 fcff 	bl	c0de73de <nbgl_getTextMaxLenInNbLines>
c0de49e0:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de49e4:	4405      	add	r5, r0
c0de49e6:	3701      	adds	r7, #1
c0de49e8:	e7eb      	b.n	c0de49c2 <displayTextPage+0x146>
c0de49ea:	6861      	ldr	r1, [r4, #4]
c0de49ec:	f104 0018 	add.w	r0, r4, #24
c0de49f0:	2217      	movs	r2, #23
c0de49f2:	f003 f9b5 	bl	c0de7d60 <__aeabi_memcpy>
c0de49f6:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de49fa:	e00a      	b.n	c0de4a12 <displayTextPage+0x196>
c0de49fc:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de49fe:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de4a02:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4a06:	8838      	ldrh	r0, [r7, #0]
c0de4a08:	f8ac 0000 	strh.w	r0, [ip]
c0de4a0c:	78b8      	ldrb	r0, [r7, #2]
c0de4a0e:	f88c 0002 	strb.w	r0, [ip, #2]
c0de4a12:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4a16:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4a18:	f104 0118 	add.w	r1, r4, #24
c0de4a1c:	462a      	mov	r2, r5
c0de4a1e:	f7ff f9c9 	bl	c0de3db4 <nbgl_layoutAddText>
c0de4a22:	f1b8 0f00 	cmp.w	r8, #0
c0de4a26:	d004      	beq.n	c0de4a32 <displayTextPage+0x1b6>
c0de4a28:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4a2a:	f10d 010a 	add.w	r1, sp, #10
c0de4a2e:	f7ff f963 	bl	c0de3cf8 <nbgl_layoutAddNavigation>
c0de4a32:	f000 f9e9 	bl	c0de4e08 <OUTLINED_FUNCTION_4>
c0de4a36:	f002 fc82 	bl	c0de733e <nbgl_refresh>
c0de4a3a:	b011      	add	sp, #68	@ 0x44
c0de4a3c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4a40:	000001bb 	.word	0x000001bb
c0de4a44:	000036c6 	.word	0x000036c6

c0de4a48 <nbgl_stepDrawCenteredInfo>:
c0de4a48:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4a4c:	b087      	sub	sp, #28
c0de4a4e:	460d      	mov	r5, r1
c0de4a50:	4682      	mov	sl, r0
c0de4a52:	a802      	add	r0, sp, #8
c0de4a54:	f000 f9d3 	bl	c0de4dfe <OUTLINED_FUNCTION_3>
c0de4a58:	4819      	ldr	r0, [pc, #100]	@ (c0de4ac0 <nbgl_stepDrawCenteredInfo+0x78>)
c0de4a5a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4a5c:	4478      	add	r0, pc
c0de4a5e:	f000 f9c5 	bl	c0de4dec <OUTLINED_FUNCTION_2>
c0de4a62:	b168      	cbz	r0, c0de4a80 <nbgl_stepDrawCenteredInfo+0x38>
c0de4a64:	4604      	mov	r4, r0
c0de4a66:	6145      	str	r5, [r0, #20]
c0de4a68:	b10f      	cbz	r7, c0de4a6e <nbgl_stepDrawCenteredInfo+0x26>
c0de4a6a:	f000 f953 	bl	c0de4d14 <OUTLINED_FUNCTION_0>
c0de4a6e:	f000 f9ce 	bl	c0de4e0e <OUTLINED_FUNCTION_5>
c0de4a72:	d007      	beq.n	c0de4a84 <nbgl_stepDrawCenteredInfo+0x3c>
c0de4a74:	2802      	cmp	r0, #2
c0de4a76:	d007      	beq.n	c0de4a88 <nbgl_stepDrawCenteredInfo+0x40>
c0de4a78:	2801      	cmp	r0, #1
c0de4a7a:	d108      	bne.n	c0de4a8e <nbgl_stepDrawCenteredInfo+0x46>
c0de4a7c:	2002      	movs	r0, #2
c0de4a7e:	e004      	b.n	c0de4a8a <nbgl_stepDrawCenteredInfo+0x42>
c0de4a80:	2400      	movs	r4, #0
c0de4a82:	e018      	b.n	c0de4ab6 <nbgl_stepDrawCenteredInfo+0x6e>
c0de4a84:	2003      	movs	r0, #3
c0de4a86:	e000      	b.n	c0de4a8a <nbgl_stepDrawCenteredInfo+0x42>
c0de4a88:	2001      	movs	r0, #1
c0de4a8a:	2500      	movs	r5, #0
c0de4a8c:	e000      	b.n	c0de4a90 <nbgl_stepDrawCenteredInfo+0x48>
c0de4a8e:	2000      	movs	r0, #0
c0de4a90:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4a94:	a802      	add	r0, sp, #8
c0de4a96:	f7ff f8cb 	bl	c0de3c30 <nbgl_layoutGet>
c0de4a9a:	4641      	mov	r1, r8
c0de4a9c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4a9e:	f7ff fb9d 	bl	c0de41dc <nbgl_layoutAddCenteredInfo>
c0de4aa2:	b925      	cbnz	r5, c0de4aae <nbgl_stepDrawCenteredInfo+0x66>
c0de4aa4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4aa6:	f10d 0106 	add.w	r1, sp, #6
c0de4aaa:	f7ff f925 	bl	c0de3cf8 <nbgl_layoutAddNavigation>
c0de4aae:	f000 f9ab 	bl	c0de4e08 <OUTLINED_FUNCTION_4>
c0de4ab2:	f002 fc44 	bl	c0de733e <nbgl_refresh>
c0de4ab6:	4620      	mov	r0, r4
c0de4ab8:	b007      	add	sp, #28
c0de4aba:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4abe:	bf00      	nop
c0de4ac0:	00000065 	.word	0x00000065

c0de4ac4 <actionCallback>:
c0de4ac4:	b510      	push	{r4, lr}
c0de4ac6:	460c      	mov	r4, r1
c0de4ac8:	f000 f8f0 	bl	c0de4cac <getContextFromLayout>
c0de4acc:	b378      	cbz	r0, c0de4b2e <actionCallback+0x6a>
c0de4ace:	2c04      	cmp	r4, #4
c0de4ad0:	d006      	beq.n	c0de4ae0 <actionCallback+0x1c>
c0de4ad2:	2c01      	cmp	r4, #1
c0de4ad4:	d008      	beq.n	c0de4ae8 <actionCallback+0x24>
c0de4ad6:	bb54      	cbnz	r4, c0de4b2e <actionCallback+0x6a>
c0de4ad8:	7841      	ldrb	r1, [r0, #1]
c0de4ada:	b1d9      	cbz	r1, c0de4b14 <actionCallback+0x50>
c0de4adc:	3901      	subs	r1, #1
c0de4ade:	e009      	b.n	c0de4af4 <actionCallback+0x30>
c0de4ae0:	6942      	ldr	r2, [r0, #20]
c0de4ae2:	b322      	cbz	r2, c0de4b2e <actionCallback+0x6a>
c0de4ae4:	2104      	movs	r1, #4
c0de4ae6:	e01f      	b.n	c0de4b28 <actionCallback+0x64>
c0de4ae8:	7802      	ldrb	r2, [r0, #0]
c0de4aea:	7841      	ldrb	r1, [r0, #1]
c0de4aec:	3a01      	subs	r2, #1
c0de4aee:	428a      	cmp	r2, r1
c0de4af0:	dd05      	ble.n	c0de4afe <actionCallback+0x3a>
c0de4af2:	3101      	adds	r1, #1
c0de4af4:	b2c9      	uxtb	r1, r1
c0de4af6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4afa:	f7ff bebf 	b.w	c0de487c <displayTextPage>
c0de4afe:	7c01      	ldrb	r1, [r0, #16]
c0de4b00:	f041 0102 	orr.w	r1, r1, #2
c0de4b04:	2903      	cmp	r1, #3
c0de4b06:	d001      	beq.n	c0de4b0c <actionCallback+0x48>
c0de4b08:	7c41      	ldrb	r1, [r0, #17]
c0de4b0a:	b181      	cbz	r1, c0de4b2e <actionCallback+0x6a>
c0de4b0c:	6942      	ldr	r2, [r0, #20]
c0de4b0e:	b172      	cbz	r2, c0de4b2e <actionCallback+0x6a>
c0de4b10:	2101      	movs	r1, #1
c0de4b12:	e009      	b.n	c0de4b28 <actionCallback+0x64>
c0de4b14:	7c01      	ldrb	r1, [r0, #16]
c0de4b16:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de4b1a:	2902      	cmp	r1, #2
c0de4b1c:	d001      	beq.n	c0de4b22 <actionCallback+0x5e>
c0de4b1e:	7c41      	ldrb	r1, [r0, #17]
c0de4b20:	b129      	cbz	r1, c0de4b2e <actionCallback+0x6a>
c0de4b22:	6942      	ldr	r2, [r0, #20]
c0de4b24:	b11a      	cbz	r2, c0de4b2e <actionCallback+0x6a>
c0de4b26:	2100      	movs	r1, #0
c0de4b28:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4b2c:	4710      	bx	r2
c0de4b2e:	bd10      	pop	{r4, pc}

c0de4b30 <getNavigationInfo>:
c0de4b30:	4603      	mov	r3, r0
c0de4b32:	2902      	cmp	r1, #2
c0de4b34:	d308      	bcc.n	c0de4b48 <getNavigationInfo+0x18>
c0de4b36:	3901      	subs	r1, #1
c0de4b38:	4610      	mov	r0, r2
c0de4b3a:	2a00      	cmp	r2, #0
c0de4b3c:	bf18      	it	ne
c0de4b3e:	2001      	movne	r0, #1
c0de4b40:	4291      	cmp	r1, r2
c0de4b42:	bf88      	it	hi
c0de4b44:	3002      	addhi	r0, #2
c0de4b46:	e000      	b.n	c0de4b4a <getNavigationInfo+0x1a>
c0de4b48:	2000      	movs	r0, #0
c0de4b4a:	2b03      	cmp	r3, #3
c0de4b4c:	d00a      	beq.n	c0de4b64 <getNavigationInfo+0x34>
c0de4b4e:	2b02      	cmp	r3, #2
c0de4b50:	bf04      	itt	eq
c0de4b52:	f040 0001 	orreq.w	r0, r0, #1
c0de4b56:	4770      	bxeq	lr
c0de4b58:	2b01      	cmp	r3, #1
c0de4b5a:	bf04      	itt	eq
c0de4b5c:	f040 0002 	orreq.w	r0, r0, #2
c0de4b60:	4770      	bxeq	lr
c0de4b62:	4770      	bx	lr
c0de4b64:	2003      	movs	r0, #3
c0de4b66:	4770      	bx	lr

c0de4b68 <nbgl_stepDrawMenuList>:
c0de4b68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4b6a:	460f      	mov	r7, r1
c0de4b6c:	4606      	mov	r6, r0
c0de4b6e:	2002      	movs	r0, #2
c0de4b70:	4619      	mov	r1, r3
c0de4b72:	4615      	mov	r5, r2
c0de4b74:	f7ff fe5c 	bl	c0de4830 <getFreeContext>
c0de4b78:	b170      	cbz	r0, c0de4b98 <nbgl_stepDrawMenuList+0x30>
c0de4b7a:	4604      	mov	r4, r0
c0de4b7c:	b10f      	cbz	r7, c0de4b82 <nbgl_stepDrawMenuList+0x1a>
c0de4b7e:	f000 f910 	bl	c0de4da2 <OUTLINED_FUNCTION_1>
c0de4b82:	7928      	ldrb	r0, [r5, #4]
c0de4b84:	7220      	strb	r0, [r4, #8]
c0de4b86:	7968      	ldrb	r0, [r5, #5]
c0de4b88:	7260      	strb	r0, [r4, #9]
c0de4b8a:	6828      	ldr	r0, [r5, #0]
c0de4b8c:	e9c4 6000 	strd	r6, r0, [r4]
c0de4b90:	4620      	mov	r0, r4
c0de4b92:	f000 f805 	bl	c0de4ba0 <displayMenuList>
c0de4b96:	e000      	b.n	c0de4b9a <nbgl_stepDrawMenuList+0x32>
c0de4b98:	2400      	movs	r4, #0
c0de4b9a:	4620      	mov	r0, r4
c0de4b9c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de4ba0 <displayMenuList>:
c0de4ba0:	b5b0      	push	{r4, r5, r7, lr}
c0de4ba2:	b086      	sub	sp, #24
c0de4ba4:	4604      	mov	r4, r0
c0de4ba6:	2000      	movs	r0, #0
c0de4ba8:	9001      	str	r0, [sp, #4]
c0de4baa:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4bae:	4819      	ldr	r0, [pc, #100]	@ (c0de4c14 <displayMenuList+0x74>)
c0de4bb0:	4478      	add	r0, pc
c0de4bb2:	9002      	str	r0, [sp, #8]
c0de4bb4:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4bb8:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4bbc:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4bbe:	ab03      	add	r3, sp, #12
c0de4bc0:	c307      	stmia	r3!, {r0, r1, r2}
c0de4bc2:	a801      	add	r0, sp, #4
c0de4bc4:	f7ff f834 	bl	c0de3c30 <nbgl_layoutGet>
c0de4bc8:	1d25      	adds	r5, r4, #4
c0de4bca:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4bcc:	4629      	mov	r1, r5
c0de4bce:	f7ff fab1 	bl	c0de4134 <nbgl_layoutAddMenuList>
c0de4bd2:	7a20      	ldrb	r0, [r4, #8]
c0de4bd4:	2802      	cmp	r0, #2
c0de4bd6:	d316      	bcc.n	c0de4c06 <displayMenuList+0x66>
c0de4bd8:	2101      	movs	r1, #1
c0de4bda:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de4bde:	7969      	ldrb	r1, [r5, #5]
c0de4be0:	2900      	cmp	r1, #0
c0de4be2:	460a      	mov	r2, r1
c0de4be4:	bf18      	it	ne
c0de4be6:	2201      	movne	r2, #1
c0de4be8:	3801      	subs	r0, #1
c0de4bea:	f88d 2003 	strb.w	r2, [sp, #3]
c0de4bee:	4288      	cmp	r0, r1
c0de4bf0:	d903      	bls.n	c0de4bfa <displayMenuList+0x5a>
c0de4bf2:	1c90      	adds	r0, r2, #2
c0de4bf4:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4bf8:	e000      	b.n	c0de4bfc <displayMenuList+0x5c>
c0de4bfa:	b121      	cbz	r1, c0de4c06 <displayMenuList+0x66>
c0de4bfc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bfe:	f10d 0102 	add.w	r1, sp, #2
c0de4c02:	f7ff f879 	bl	c0de3cf8 <nbgl_layoutAddNavigation>
c0de4c06:	f000 f8ff 	bl	c0de4e08 <OUTLINED_FUNCTION_4>
c0de4c0a:	f002 fb98 	bl	c0de733e <nbgl_refresh>
c0de4c0e:	b006      	add	sp, #24
c0de4c10:	bdb0      	pop	{r4, r5, r7, pc}
c0de4c12:	bf00      	nop
c0de4c14:	00000121 	.word	0x00000121

c0de4c18 <nbgl_stepDrawSwitch>:
c0de4c18:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4c1c:	b087      	sub	sp, #28
c0de4c1e:	460d      	mov	r5, r1
c0de4c20:	4682      	mov	sl, r0
c0de4c22:	a802      	add	r0, sp, #8
c0de4c24:	f000 f8eb 	bl	c0de4dfe <OUTLINED_FUNCTION_3>
c0de4c28:	4819      	ldr	r0, [pc, #100]	@ (c0de4c90 <nbgl_stepDrawSwitch+0x78>)
c0de4c2a:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4c2c:	4478      	add	r0, pc
c0de4c2e:	f000 f8dd 	bl	c0de4dec <OUTLINED_FUNCTION_2>
c0de4c32:	b168      	cbz	r0, c0de4c50 <nbgl_stepDrawSwitch+0x38>
c0de4c34:	4604      	mov	r4, r0
c0de4c36:	6145      	str	r5, [r0, #20]
c0de4c38:	b10f      	cbz	r7, c0de4c3e <nbgl_stepDrawSwitch+0x26>
c0de4c3a:	f000 f86b 	bl	c0de4d14 <OUTLINED_FUNCTION_0>
c0de4c3e:	f000 f8e6 	bl	c0de4e0e <OUTLINED_FUNCTION_5>
c0de4c42:	d007      	beq.n	c0de4c54 <nbgl_stepDrawSwitch+0x3c>
c0de4c44:	2802      	cmp	r0, #2
c0de4c46:	d007      	beq.n	c0de4c58 <nbgl_stepDrawSwitch+0x40>
c0de4c48:	2801      	cmp	r0, #1
c0de4c4a:	d108      	bne.n	c0de4c5e <nbgl_stepDrawSwitch+0x46>
c0de4c4c:	2002      	movs	r0, #2
c0de4c4e:	e004      	b.n	c0de4c5a <nbgl_stepDrawSwitch+0x42>
c0de4c50:	2400      	movs	r4, #0
c0de4c52:	e018      	b.n	c0de4c86 <nbgl_stepDrawSwitch+0x6e>
c0de4c54:	2003      	movs	r0, #3
c0de4c56:	e000      	b.n	c0de4c5a <nbgl_stepDrawSwitch+0x42>
c0de4c58:	2001      	movs	r0, #1
c0de4c5a:	2500      	movs	r5, #0
c0de4c5c:	e000      	b.n	c0de4c60 <nbgl_stepDrawSwitch+0x48>
c0de4c5e:	2000      	movs	r0, #0
c0de4c60:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4c64:	a802      	add	r0, sp, #8
c0de4c66:	f7fe ffe3 	bl	c0de3c30 <nbgl_layoutGet>
c0de4c6a:	4641      	mov	r1, r8
c0de4c6c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4c6e:	f7ff fc55 	bl	c0de451c <nbgl_layoutAddSwitch>
c0de4c72:	b925      	cbnz	r5, c0de4c7e <nbgl_stepDrawSwitch+0x66>
c0de4c74:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4c76:	f10d 0106 	add.w	r1, sp, #6
c0de4c7a:	f7ff f83d 	bl	c0de3cf8 <nbgl_layoutAddNavigation>
c0de4c7e:	f000 f8c3 	bl	c0de4e08 <OUTLINED_FUNCTION_4>
c0de4c82:	f002 fb5c 	bl	c0de733e <nbgl_refresh>
c0de4c86:	4620      	mov	r0, r4
c0de4c88:	b007      	add	sp, #28
c0de4c8a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4c8e:	bf00      	nop
c0de4c90:	fffffe95 	.word	0xfffffe95

c0de4c94 <nbgl_stepRelease>:
c0de4c94:	b138      	cbz	r0, c0de4ca6 <nbgl_stepRelease+0x12>
c0de4c96:	b510      	push	{r4, lr}
c0de4c98:	4604      	mov	r4, r0
c0de4c9a:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4c9c:	f7ff fd3a 	bl	c0de4714 <nbgl_layoutRelease>
c0de4ca0:	2100      	movs	r1, #0
c0de4ca2:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4ca4:	bd10      	pop	{r4, pc}
c0de4ca6:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4caa:	4770      	bx	lr

c0de4cac <getContextFromLayout>:
c0de4cac:	4a08      	ldr	r2, [pc, #32]	@ (c0de4cd0 <getContextFromLayout+0x24>)
c0de4cae:	2100      	movs	r1, #0
c0de4cb0:	29d8      	cmp	r1, #216	@ 0xd8
c0de4cb2:	bf04      	itt	eq
c0de4cb4:	2000      	moveq	r0, #0
c0de4cb6:	4770      	bxeq	lr
c0de4cb8:	eb09 0302 	add.w	r3, r9, r2
c0de4cbc:	440b      	add	r3, r1
c0de4cbe:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4cc0:	4283      	cmp	r3, r0
c0de4cc2:	d001      	beq.n	c0de4cc8 <getContextFromLayout+0x1c>
c0de4cc4:	3148      	adds	r1, #72	@ 0x48
c0de4cc6:	e7f3      	b.n	c0de4cb0 <getContextFromLayout+0x4>
c0de4cc8:	eb09 0002 	add.w	r0, r9, r2
c0de4ccc:	4408      	add	r0, r1
c0de4cce:	4770      	bx	lr
c0de4cd0:	00000718 	.word	0x00000718

c0de4cd4 <menuListActionCallback>:
c0de4cd4:	b510      	push	{r4, lr}
c0de4cd6:	460c      	mov	r4, r1
c0de4cd8:	f7ff ffe8 	bl	c0de4cac <getContextFromLayout>
c0de4cdc:	b1c8      	cbz	r0, c0de4d12 <menuListActionCallback+0x3e>
c0de4cde:	2c04      	cmp	r4, #4
c0de4ce0:	d006      	beq.n	c0de4cf0 <menuListActionCallback+0x1c>
c0de4ce2:	2c01      	cmp	r4, #1
c0de4ce4:	d00a      	beq.n	c0de4cfc <menuListActionCallback+0x28>
c0de4ce6:	b9a4      	cbnz	r4, c0de4d12 <menuListActionCallback+0x3e>
c0de4ce8:	7a41      	ldrb	r1, [r0, #9]
c0de4cea:	b191      	cbz	r1, c0de4d12 <menuListActionCallback+0x3e>
c0de4cec:	3901      	subs	r1, #1
c0de4cee:	e00b      	b.n	c0de4d08 <menuListActionCallback+0x34>
c0de4cf0:	7a41      	ldrb	r1, [r0, #9]
c0de4cf2:	6802      	ldr	r2, [r0, #0]
c0de4cf4:	4608      	mov	r0, r1
c0de4cf6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4cfa:	4710      	bx	r2
c0de4cfc:	7a02      	ldrb	r2, [r0, #8]
c0de4cfe:	7a41      	ldrb	r1, [r0, #9]
c0de4d00:	3a01      	subs	r2, #1
c0de4d02:	428a      	cmp	r2, r1
c0de4d04:	dd05      	ble.n	c0de4d12 <menuListActionCallback+0x3e>
c0de4d06:	3101      	adds	r1, #1
c0de4d08:	7241      	strb	r1, [r0, #9]
c0de4d0a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4d0e:	f7ff bf47 	b.w	c0de4ba0 <displayMenuList>
c0de4d12:	bd10      	pop	{r4, pc}

c0de4d14 <OUTLINED_FUNCTION_0>:
c0de4d14:	7838      	ldrb	r0, [r7, #0]
c0de4d16:	7879      	ldrb	r1, [r7, #1]
c0de4d18:	78ba      	ldrb	r2, [r7, #2]
c0de4d1a:	78fb      	ldrb	r3, [r7, #3]
c0de4d1c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4d20:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4d24:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4d28:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4d2a:	4638      	mov	r0, r7
c0de4d2c:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4d30:	7a79      	ldrb	r1, [r7, #9]
c0de4d32:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4d36:	7882      	ldrb	r2, [r0, #2]
c0de4d38:	78c3      	ldrb	r3, [r0, #3]
c0de4d3a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4d3e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4d42:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4d44:	4639      	mov	r1, r7
c0de4d46:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de4d4a:	797a      	ldrb	r2, [r7, #5]
c0de4d4c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4d50:	788b      	ldrb	r3, [r1, #2]
c0de4d52:	78cd      	ldrb	r5, [r1, #3]
c0de4d54:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4d58:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de4d5c:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de4d5e:	783a      	ldrb	r2, [r7, #0]
c0de4d60:	787b      	ldrb	r3, [r7, #1]
c0de4d62:	78bd      	ldrb	r5, [r7, #2]
c0de4d64:	78fe      	ldrb	r6, [r7, #3]
c0de4d66:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4d6a:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de4d6e:	7803      	ldrb	r3, [r0, #0]
c0de4d70:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4d74:	7885      	ldrb	r5, [r0, #2]
c0de4d76:	78c0      	ldrb	r0, [r0, #3]
c0de4d78:	9204      	str	r2, [sp, #16]
c0de4d7a:	7a7a      	ldrb	r2, [r7, #9]
c0de4d7c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4d80:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4d84:	788b      	ldrb	r3, [r1, #2]
c0de4d86:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4d8a:	780a      	ldrb	r2, [r1, #0]
c0de4d8c:	78c9      	ldrb	r1, [r1, #3]
c0de4d8e:	9006      	str	r0, [sp, #24]
c0de4d90:	7978      	ldrb	r0, [r7, #5]
c0de4d92:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4d96:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4d9a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4d9e:	9005      	str	r0, [sp, #20]
c0de4da0:	4770      	bx	lr

c0de4da2 <OUTLINED_FUNCTION_1>:
c0de4da2:	7838      	ldrb	r0, [r7, #0]
c0de4da4:	7879      	ldrb	r1, [r7, #1]
c0de4da6:	78ba      	ldrb	r2, [r7, #2]
c0de4da8:	78fb      	ldrb	r3, [r7, #3]
c0de4daa:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4dae:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4db2:	4639      	mov	r1, r7
c0de4db4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4db8:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4dbc:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4dbe:	7a78      	ldrb	r0, [r7, #9]
c0de4dc0:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4dc4:	788a      	ldrb	r2, [r1, #2]
c0de4dc6:	78c9      	ldrb	r1, [r1, #3]
c0de4dc8:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4dcc:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4dd0:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4dd2:	7978      	ldrb	r0, [r7, #5]
c0de4dd4:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4dd8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4ddc:	78b9      	ldrb	r1, [r7, #2]
c0de4dde:	78fa      	ldrb	r2, [r7, #3]
c0de4de0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4de4:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4de8:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4dea:	4770      	bx	lr

c0de4dec <OUTLINED_FUNCTION_2>:
c0de4dec:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4df0:	9003      	str	r0, [sp, #12]
c0de4df2:	2000      	movs	r0, #0
c0de4df4:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4df8:	2001      	movs	r0, #1
c0de4dfa:	f7ff bd19 	b.w	c0de4830 <getFreeContext>

c0de4dfe <OUTLINED_FUNCTION_3>:
c0de4dfe:	2114      	movs	r1, #20
c0de4e00:	4698      	mov	r8, r3
c0de4e02:	4617      	mov	r7, r2
c0de4e04:	f002 bfb6 	b.w	c0de7d74 <__aeabi_memclr>

c0de4e08 <OUTLINED_FUNCTION_4>:
c0de4e08:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4e0a:	f7ff bc7b 	b.w	c0de4704 <nbgl_layoutDraw>

c0de4e0e <OUTLINED_FUNCTION_5>:
c0de4e0e:	2501      	movs	r5, #1
c0de4e10:	f00a 0003 	and.w	r0, sl, #3
c0de4e14:	2803      	cmp	r0, #3
c0de4e16:	7025      	strb	r5, [r4, #0]
c0de4e18:	7420      	strb	r0, [r4, #16]
c0de4e1a:	4770      	bx	lr

c0de4e1c <nbgl_useCaseHomeAndSettings>:
c0de4e1c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4e20:	4607      	mov	r7, r0
c0de4e22:	4810      	ldr	r0, [pc, #64]	@ (c0de4e64 <nbgl_useCaseHomeAndSettings+0x48>)
c0de4e24:	f001 fd31 	bl	c0de688a <OUTLINED_FUNCTION_3>
c0de4e28:	e9c4 760f 	strd	r7, r6, [r4, #60]	@ 0x3c
c0de4e2c:	6465      	str	r5, [r4, #68]	@ 0x44
c0de4e2e:	9d06      	ldr	r5, [sp, #24]
c0de4e30:	4628      	mov	r0, r5
c0de4e32:	f002 fc93 	bl	c0de775c <pic>
c0de4e36:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de4e38:	9807      	ldr	r0, [sp, #28]
c0de4e3a:	f002 fc8f 	bl	c0de775c <pic>
c0de4e3e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4e40:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4e44:	6561      	str	r1, [r4, #84]	@ 0x54
c0de4e46:	9908      	ldr	r1, [sp, #32]
c0de4e48:	e9c4 0113 	strd	r0, r1, [r4, #76]	@ 0x4c
c0de4e4c:	bf18      	it	ne
c0de4e4e:	2d00      	cmpne	r5, #0
c0de4e50:	d103      	bne.n	c0de4e5a <nbgl_useCaseHomeAndSettings+0x3e>
c0de4e52:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4e56:	f000 b843 	b.w	c0de4ee0 <startUseCaseHome>
c0de4e5a:	4640      	mov	r0, r8
c0de4e5c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4e60:	f000 b802 	b.w	c0de4e68 <startUseCaseSettingsAtPage>
c0de4e64:	000007f0 	.word	0x000007f0

c0de4e68 <startUseCaseSettingsAtPage>:
c0de4e68:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4e6a:	b08f      	sub	sp, #60	@ 0x3c
c0de4e6c:	4604      	mov	r4, r0
c0de4e6e:	a801      	add	r0, sp, #4
c0de4e70:	2138      	movs	r1, #56	@ 0x38
c0de4e72:	f002 ff7f 	bl	c0de7d74 <__aeabi_memclr>
c0de4e76:	4e19      	ldr	r6, [pc, #100]	@ (c0de4edc <startUseCaseSettingsAtPage+0x74>)
c0de4e78:	eb09 0006 	add.w	r0, r9, r6
c0de4e7c:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de4e80:	280f      	cmp	r0, #15
c0de4e82:	bf1e      	ittt	ne
c0de4e84:	eb09 0006 	addne.w	r0, r9, r6
c0de4e88:	210e      	movne	r1, #14
c0de4e8a:	f880 102c 	strbne.w	r1, [r0, #44]	@ 0x2c
c0de4e8e:	eb09 0006 	add.w	r0, r9, r6
c0de4e92:	2101      	movs	r1, #1
c0de4e94:	2700      	movs	r7, #0
c0de4e96:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4e9a:	ad01      	add	r5, sp, #4
c0de4e9c:	eb09 0006 	add.w	r0, r9, r6
c0de4ea0:	6c80      	ldr	r0, [r0, #72]	@ 0x48
c0de4ea2:	7a01      	ldrb	r1, [r0, #8]
c0de4ea4:	428f      	cmp	r7, r1
c0de4ea6:	d20e      	bcs.n	c0de4ec6 <startUseCaseSettingsAtPage+0x5e>
c0de4ea8:	b279      	sxtb	r1, r7
c0de4eaa:	462a      	mov	r2, r5
c0de4eac:	f000 fd06 	bl	c0de58bc <getContentAtIdx>
c0de4eb0:	f000 fd5e 	bl	c0de5970 <getContentNbElement>
c0de4eb4:	eb09 0106 	add.w	r1, r9, r6
c0de4eb8:	3701      	adds	r7, #1
c0de4eba:	f891 2034 	ldrb.w	r2, [r1, #52]	@ 0x34
c0de4ebe:	4410      	add	r0, r2
c0de4ec0:	f881 0034 	strb.w	r0, [r1, #52]	@ 0x34
c0de4ec4:	e7ea      	b.n	c0de4e9c <startUseCaseSettingsAtPage+0x34>
c0de4ec6:	eb09 0006 	add.w	r0, r9, r6
c0de4eca:	2100      	movs	r1, #0
c0de4ecc:	f880 4035 	strb.w	r4, [r0, #53]	@ 0x35
c0de4ed0:	2000      	movs	r0, #0
c0de4ed2:	f000 ff57 	bl	c0de5d84 <displaySettingsPage>
c0de4ed6:	b00f      	add	sp, #60	@ 0x3c
c0de4ed8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4eda:	bf00      	nop
c0de4edc:	000007f0 	.word	0x000007f0

c0de4ee0 <startUseCaseHome>:
c0de4ee0:	b510      	push	{r4, lr}
c0de4ee2:	4821      	ldr	r0, [pc, #132]	@ (c0de4f68 <startUseCaseHome+0x88>)
c0de4ee4:	eb09 0100 	add.w	r1, r9, r0
c0de4ee8:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de4eec:	290d      	cmp	r1, #13
c0de4eee:	d009      	beq.n	c0de4f04 <startUseCaseHome+0x24>
c0de4ef0:	290e      	cmp	r1, #14
c0de4ef2:	d114      	bne.n	c0de4f1e <startUseCaseHome+0x3e>
c0de4ef4:	eb09 0100 	add.w	r1, r9, r0
c0de4ef8:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de4efa:	2102      	movs	r1, #2
c0de4efc:	2a00      	cmp	r2, #0
c0de4efe:	bf08      	it	eq
c0de4f00:	2101      	moveq	r1, #1
c0de4f02:	e00d      	b.n	c0de4f20 <startUseCaseHome+0x40>
c0de4f04:	eb09 0200 	add.w	r2, r9, r0
c0de4f08:	2102      	movs	r1, #2
c0de4f0a:	6d14      	ldr	r4, [r2, #80]	@ 0x50
c0de4f0c:	6c93      	ldr	r3, [r2, #72]	@ 0x48
c0de4f0e:	2c00      	cmp	r4, #0
c0de4f10:	bf08      	it	eq
c0de4f12:	2101      	moveq	r1, #1
c0de4f14:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de4f18:	b133      	cbz	r3, c0de4f28 <startUseCaseHome+0x48>
c0de4f1a:	3101      	adds	r1, #1
c0de4f1c:	e000      	b.n	c0de4f20 <startUseCaseHome+0x40>
c0de4f1e:	2100      	movs	r1, #0
c0de4f20:	eb09 0200 	add.w	r2, r9, r0
c0de4f24:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de4f28:	eb09 0200 	add.w	r2, r9, r0
c0de4f2c:	210c      	movs	r1, #12
c0de4f2e:	e9d2 3412 	ldrd	r3, r4, [r2, #72]	@ 0x48
c0de4f32:	f882 102c 	strb.w	r1, [r2, #44]	@ 0x2c
c0de4f36:	2103      	movs	r1, #3
c0de4f38:	2b00      	cmp	r3, #0
c0de4f3a:	bf08      	it	eq
c0de4f3c:	2102      	moveq	r1, #2
c0de4f3e:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de4f42:	b124      	cbz	r4, c0de4f4e <startUseCaseHome+0x6e>
c0de4f44:	3101      	adds	r1, #1
c0de4f46:	eb09 0200 	add.w	r2, r9, r0
c0de4f4a:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de4f4e:	eb09 0200 	add.w	r2, r9, r0
c0de4f52:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de4f54:	b11a      	cbz	r2, c0de4f5e <startUseCaseHome+0x7e>
c0de4f56:	4448      	add	r0, r9
c0de4f58:	3101      	adds	r1, #1
c0de4f5a:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4f5e:	2000      	movs	r0, #0
c0de4f60:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4f64:	f000 bffe 	b.w	c0de5f64 <displayHomePage>
c0de4f68:	000007f0 	.word	0x000007f0

c0de4f6c <nbgl_useCaseReview>:
c0de4f6c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de4f6e:	4614      	mov	r4, r2
c0de4f70:	460a      	mov	r2, r1
c0de4f72:	4601      	mov	r1, r0
c0de4f74:	9808      	ldr	r0, [sp, #32]
c0de4f76:	9003      	str	r0, [sp, #12]
c0de4f78:	9807      	ldr	r0, [sp, #28]
c0de4f7a:	9002      	str	r0, [sp, #8]
c0de4f7c:	9806      	ldr	r0, [sp, #24]
c0de4f7e:	e9cd 3000 	strd	r3, r0, [sp]
c0de4f82:	2002      	movs	r0, #2
c0de4f84:	4623      	mov	r3, r4
c0de4f86:	f000 f801 	bl	c0de4f8c <useCaseReview>
c0de4f8a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4f8c <useCaseReview>:
c0de4f8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4f90:	4607      	mov	r7, r0
c0de4f92:	4811      	ldr	r0, [pc, #68]	@ (c0de4fd8 <useCaseReview+0x4c>)
c0de4f94:	4688      	mov	r8, r1
c0de4f96:	2140      	movs	r1, #64	@ 0x40
c0de4f98:	461d      	mov	r5, r3
c0de4f9a:	4614      	mov	r4, r2
c0de4f9c:	f001 fc6f 	bl	c0de687e <OUTLINED_FUNCTION_2>
c0de4fa0:	9808      	ldr	r0, [sp, #32]
c0de4fa2:	6530      	str	r0, [r6, #80]	@ 0x50
c0de4fa4:	9807      	ldr	r0, [sp, #28]
c0de4fa6:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4fa8:	9906      	ldr	r1, [sp, #24]
c0de4faa:	e9c6 4510 	strd	r4, r5, [r6, #64]	@ 0x40
c0de4fae:	64b1      	str	r1, [r6, #72]	@ 0x48
c0de4fb0:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4fb2:	f8c6 8030 	str.w	r8, [r6, #48]	@ 0x30
c0de4fb6:	f886 702c 	strb.w	r7, [r6, #44]	@ 0x2c
c0de4fba:	63f1      	str	r1, [r6, #60]	@ 0x3c
c0de4fbc:	2104      	movs	r1, #4
c0de4fbe:	2800      	cmp	r0, #0
c0de4fc0:	bf08      	it	eq
c0de4fc2:	2103      	moveq	r1, #3
c0de4fc4:	7a20      	ldrb	r0, [r4, #8]
c0de4fc6:	4408      	add	r0, r1
c0de4fc8:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de4fcc:	2000      	movs	r0, #0
c0de4fce:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4fd2:	f000 b8d1 	b.w	c0de5178 <displayReviewPage>
c0de4fd6:	bf00      	nop
c0de4fd8:	000007f0 	.word	0x000007f0

c0de4fdc <nbgl_useCaseAdvancedReview>:
c0de4fdc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4fe0:	b088      	sub	sp, #32
c0de4fe2:	4617      	mov	r7, r2
c0de4fe4:	460a      	mov	r2, r1
c0de4fe6:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4fea:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	@ 0x40
c0de4fee:	4606      	mov	r6, r0
c0de4ff0:	f1ba 0f00 	cmp.w	sl, #0
c0de4ff4:	d013      	beq.n	c0de501e <nbgl_useCaseAdvancedReview+0x42>
c0de4ff6:	f8da 0000 	ldr.w	r0, [sl]
c0de4ffa:	9107      	str	r1, [sp, #28]
c0de4ffc:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de5000:	2808      	cmp	r0, #8
c0de5002:	d018      	beq.n	c0de5036 <nbgl_useCaseAdvancedReview+0x5a>
c0de5004:	b9e0      	cbnz	r0, c0de5040 <nbgl_useCaseAdvancedReview+0x64>
c0de5006:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de500a:	b928      	cbnz	r0, c0de5018 <nbgl_useCaseAdvancedReview+0x3c>
c0de500c:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de5010:	b910      	cbnz	r0, c0de5018 <nbgl_useCaseAdvancedReview+0x3c>
c0de5012:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de5016:	b110      	cbz	r0, c0de501e <nbgl_useCaseAdvancedReview+0x42>
c0de5018:	4698      	mov	r8, r3
c0de501a:	4615      	mov	r5, r2
c0de501c:	e014      	b.n	c0de5048 <nbgl_useCaseAdvancedReview+0x6c>
c0de501e:	e9cd 3500 	strd	r3, r5, [sp]
c0de5022:	e9cd 4102 	strd	r4, r1, [sp, #8]
c0de5026:	2002      	movs	r0, #2
c0de5028:	4631      	mov	r1, r6
c0de502a:	463b      	mov	r3, r7
c0de502c:	f7ff ffae 	bl	c0de4f8c <useCaseReview>
c0de5030:	b008      	add	sp, #32
c0de5032:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5036:	4698      	mov	r8, r3
c0de5038:	4615      	mov	r5, r2
c0de503a:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de503e:	e003      	b.n	c0de5048 <nbgl_useCaseAdvancedReview+0x6c>
c0de5040:	4698      	mov	r8, r3
c0de5042:	4615      	mov	r5, r2
c0de5044:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de5048:	f8df b06c 	ldr.w	fp, [pc, #108]	@ c0de50b8 <nbgl_useCaseAdvancedReview+0xdc>
c0de504c:	212c      	movs	r1, #44	@ 0x2c
c0de504e:	eb09 040b 	add.w	r4, r9, fp
c0de5052:	4620      	mov	r0, r4
c0de5054:	f002 fe8e 	bl	c0de7d74 <__aeabi_memclr>
c0de5058:	2002      	movs	r0, #2
c0de505a:	462a      	mov	r2, r5
c0de505c:	60a5      	str	r5, [r4, #8]
c0de505e:	9d06      	ldr	r5, [sp, #24]
c0de5060:	463b      	mov	r3, r7
c0de5062:	60e7      	str	r7, [r4, #12]
c0de5064:	9f05      	ldr	r7, [sp, #20]
c0de5066:	4641      	mov	r1, r8
c0de5068:	f8c4 8010 	str.w	r8, [r4, #16]
c0de506c:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de5070:	6066      	str	r6, [r4, #4]
c0de5072:	f809 000b 	strb.w	r0, [r9, fp]
c0de5076:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de507a:	6167      	str	r7, [r4, #20]
c0de507c:	e9c4 5a06 	strd	r5, sl, [r4, #24]
c0de5080:	f8c4 8020 	str.w	r8, [r4, #32]
c0de5084:	b120      	cbz	r0, c0de5090 <nbgl_useCaseAdvancedReview+0xb4>
c0de5086:	b008      	add	sp, #32
c0de5088:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de508c:	f000 b816 	b.w	c0de50bc <displayPrelude>
c0de5090:	f89a 0000 	ldrb.w	r0, [sl]
c0de5094:	f010 0f16 	tst.w	r0, #22
c0de5098:	d102      	bne.n	c0de50a0 <nbgl_useCaseAdvancedReview+0xc4>
c0de509a:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de509e:	b120      	cbz	r0, c0de50aa <nbgl_useCaseAdvancedReview+0xce>
c0de50a0:	b008      	add	sp, #32
c0de50a2:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de50a6:	f000 b815 	b.w	c0de50d4 <displayInitialWarning>
c0de50aa:	e9cd 1700 	strd	r1, r7, [sp]
c0de50ae:	2002      	movs	r0, #2
c0de50b0:	4631      	mov	r1, r6
c0de50b2:	e9cd 5802 	strd	r5, r8, [sp, #8]
c0de50b6:	e7b9      	b.n	c0de502c <nbgl_useCaseAdvancedReview+0x50>
c0de50b8:	000007f0 	.word	0x000007f0

c0de50bc <displayPrelude>:
c0de50bc:	4804      	ldr	r0, [pc, #16]	@ (c0de50d0 <displayPrelude+0x14>)
c0de50be:	2101      	movs	r1, #1
c0de50c0:	4448      	add	r0, r9
c0de50c2:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de50c6:	f44f 7140 	mov.w	r1, #768	@ 0x300
c0de50ca:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de50cc:	f001 b836 	b.w	c0de613c <displayWarningStep>
c0de50d0:	000007f0 	.word	0x000007f0

c0de50d4 <displayInitialWarning>:
c0de50d4:	4804      	ldr	r0, [pc, #16]	@ (c0de50e8 <displayInitialWarning+0x14>)
c0de50d6:	2100      	movs	r1, #0
c0de50d8:	4448      	add	r0, r9
c0de50da:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de50de:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de50e2:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de50e4:	f001 b82a 	b.w	c0de613c <displayWarningStep>
c0de50e8:	000007f0 	.word	0x000007f0

c0de50ec <nbgl_useCaseReviewBlindSigning>:
c0de50ec:	b5b0      	push	{r4, r5, r7, lr}
c0de50ee:	b086      	sub	sp, #24
c0de50f0:	4d06      	ldr	r5, [pc, #24]	@ (c0de510c <nbgl_useCaseReviewBlindSigning+0x20>)
c0de50f2:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de50f4:	447d      	add	r5, pc
c0de50f6:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de50fa:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de50fc:	9401      	str	r4, [sp, #4]
c0de50fe:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de5100:	9400      	str	r4, [sp, #0]
c0de5102:	f7ff ff6b 	bl	c0de4fdc <nbgl_useCaseAdvancedReview>
c0de5106:	b006      	add	sp, #24
c0de5108:	bdb0      	pop	{r4, r5, r7, pc}
c0de510a:	bf00      	nop
c0de510c:	000041ec 	.word	0x000041ec

c0de5110 <nbgl_useCaseAddressReview>:
c0de5110:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5114:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de5174 <nbgl_useCaseAddressReview+0x64>
c0de5118:	460c      	mov	r4, r1
c0de511a:	4607      	mov	r7, r0
c0de511c:	2140      	movs	r1, #64	@ 0x40
c0de511e:	469a      	mov	sl, r3
c0de5120:	4616      	mov	r6, r2
c0de5122:	eb09 0508 	add.w	r5, r9, r8
c0de5126:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de512a:	f002 fe23 	bl	c0de7d74 <__aeabi_memclr>
c0de512e:	2004      	movs	r0, #4
c0de5130:	656f      	str	r7, [r5, #84]	@ 0x54
c0de5132:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de5136:	9808      	ldr	r0, [sp, #32]
c0de5138:	e9c5 6a11 	strd	r6, sl, [r5, #68]	@ 0x44
c0de513c:	64e8      	str	r0, [r5, #76]	@ 0x4c
c0de513e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5140:	63e9      	str	r1, [r5, #60]	@ 0x3c
c0de5142:	2105      	movs	r1, #5
c0de5144:	2800      	cmp	r0, #0
c0de5146:	bf08      	it	eq
c0de5148:	2104      	moveq	r1, #4
c0de514a:	f885 1034 	strb.w	r1, [r5, #52]	@ 0x34
c0de514e:	b15c      	cbz	r4, c0de5168 <nbgl_useCaseAddressReview+0x58>
c0de5150:	4620      	mov	r0, r4
c0de5152:	eb09 0508 	add.w	r5, r9, r8
c0de5156:	f002 fb01 	bl	c0de775c <pic>
c0de515a:	6428      	str	r0, [r5, #64]	@ 0x40
c0de515c:	f895 0034 	ldrb.w	r0, [r5, #52]	@ 0x34
c0de5160:	7a21      	ldrb	r1, [r4, #8]
c0de5162:	4408      	add	r0, r1
c0de5164:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de5168:	2000      	movs	r0, #0
c0de516a:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de516e:	f000 b803 	b.w	c0de5178 <displayReviewPage>
c0de5172:	bf00      	nop
c0de5174:	000007f0 	.word	0x000007f0

c0de5178 <displayReviewPage>:
c0de5178:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de517a:	b08b      	sub	sp, #44	@ 0x2c
c0de517c:	4e5d      	ldr	r6, [pc, #372]	@ (c0de52f4 <displayReviewPage+0x17c>)
c0de517e:	4604      	mov	r4, r0
c0de5180:	2000      	movs	r0, #0
c0de5182:	2201      	movs	r2, #1
c0de5184:	2702      	movs	r7, #2
c0de5186:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de518a:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de518e:	eb09 0306 	add.w	r3, r9, r6
c0de5192:	6398      	str	r0, [r3, #56]	@ 0x38
c0de5194:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
c0de5196:	2800      	cmp	r0, #0
c0de5198:	bf08      	it	eq
c0de519a:	22ff      	moveq	r2, #255	@ 0xff
c0de519c:	bf08      	it	eq
c0de519e:	2701      	moveq	r7, #1
c0de51a0:	f993 1035 	ldrsb.w	r1, [r3, #53]	@ 0x35
c0de51a4:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
c0de51a8:	1e9d      	subs	r5, r3, #2
c0de51aa:	b2ed      	uxtb	r5, r5
c0de51ac:	42a9      	cmp	r1, r5
c0de51ae:	da06      	bge.n	c0de51be <displayReviewPage+0x46>
c0de51b0:	42b9      	cmp	r1, r7
c0de51b2:	da0b      	bge.n	c0de51cc <displayReviewPage+0x54>
c0de51b4:	2900      	cmp	r1, #0
c0de51b6:	d041      	beq.n	c0de523c <displayReviewPage+0xc4>
c0de51b8:	428a      	cmp	r2, r1
c0de51ba:	d044      	beq.n	c0de5246 <displayReviewPage+0xce>
c0de51bc:	e044      	b.n	c0de5248 <displayReviewPage+0xd0>
c0de51be:	d110      	bne.n	c0de51e2 <displayReviewPage+0x6a>
c0de51c0:	a908      	add	r1, sp, #32
c0de51c2:	aa0a      	add	r2, sp, #40	@ 0x28
c0de51c4:	2001      	movs	r0, #1
c0de51c6:	f001 f885 	bl	c0de62d4 <getLastPageInfo>
c0de51ca:	e03d      	b.n	c0de5248 <displayReviewPage+0xd0>
c0de51cc:	eb09 0006 	add.w	r0, r9, r6
c0de51d0:	6d45      	ldr	r5, [r0, #84]	@ 0x54
c0de51d2:	b18d      	cbz	r5, c0de51f8 <displayReviewPage+0x80>
c0de51d4:	42b9      	cmp	r1, r7
c0de51d6:	d10f      	bne.n	c0de51f8 <displayReviewPage+0x80>
c0de51d8:	9509      	str	r5, [sp, #36]	@ 0x24
c0de51da:	4847      	ldr	r0, [pc, #284]	@ (c0de52f8 <displayReviewPage+0x180>)
c0de51dc:	4478      	add	r0, pc
c0de51de:	900a      	str	r0, [sp, #40]	@ 0x28
c0de51e0:	e033      	b.n	c0de524a <displayReviewPage+0xd2>
c0de51e2:	1e58      	subs	r0, r3, #1
c0de51e4:	b2c0      	uxtb	r0, r0
c0de51e6:	4281      	cmp	r1, r0
c0de51e8:	d12e      	bne.n	c0de5248 <displayReviewPage+0xd0>
c0de51ea:	a908      	add	r1, sp, #32
c0de51ec:	aa0a      	add	r2, sp, #40	@ 0x28
c0de51ee:	2000      	movs	r0, #0
c0de51f0:	2500      	movs	r5, #0
c0de51f2:	f001 f86f 	bl	c0de62d4 <getLastPageInfo>
c0de51f6:	e028      	b.n	c0de524a <displayReviewPage+0xd2>
c0de51f8:	eb09 0006 	add.w	r0, r9, r6
c0de51fc:	f890 2030 	ldrb.w	r2, [r0, #48]	@ 0x30
c0de5200:	06d2      	lsls	r2, r2, #27
c0de5202:	d535      	bpl.n	c0de5270 <displayReviewPage+0xf8>
c0de5204:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de5208:	bb90      	cbnz	r0, c0de5270 <displayReviewPage+0xf8>
c0de520a:	42b9      	cmp	r1, r7
c0de520c:	dc05      	bgt.n	c0de521a <displayReviewPage+0xa2>
c0de520e:	eb09 0006 	add.w	r0, r9, r6
c0de5212:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de5216:	2808      	cmp	r0, #8
c0de5218:	d12a      	bne.n	c0de5270 <displayReviewPage+0xf8>
c0de521a:	2000      	movs	r0, #0
c0de521c:	9006      	str	r0, [sp, #24]
c0de521e:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5222:	eb09 0006 	add.w	r0, r9, r6
c0de5226:	f890 205c 	ldrb.w	r2, [r0, #92]	@ 0x5c
c0de522a:	f004 0008 	and.w	r0, r4, #8
c0de522e:	2a01      	cmp	r2, #1
c0de5230:	d001      	beq.n	c0de5236 <displayReviewPage+0xbe>
c0de5232:	2901      	cmp	r1, #1
c0de5234:	db43      	blt.n	c0de52be <displayReviewPage+0x146>
c0de5236:	f040 0003 	orr.w	r0, r0, #3
c0de523a:	e042      	b.n	c0de52c2 <displayReviewPage+0x14a>
c0de523c:	eb09 0006 	add.w	r0, r9, r6
c0de5240:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de5244:	9108      	str	r1, [sp, #32]
c0de5246:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5248:	2500      	movs	r5, #0
c0de524a:	2000      	movs	r0, #0
c0de524c:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de524e:	9908      	ldr	r1, [sp, #32]
c0de5250:	4e2e      	ldr	r6, [pc, #184]	@ (c0de530c <displayReviewPage+0x194>)
c0de5252:	b2c0      	uxtb	r0, r0
c0de5254:	2300      	movs	r3, #0
c0de5256:	9002      	str	r0, [sp, #8]
c0de5258:	4620      	mov	r0, r4
c0de525a:	447e      	add	r6, pc
c0de525c:	e9cd 6300 	strd	r6, r3, [sp]
c0de5260:	462b      	mov	r3, r5
c0de5262:	f000 f875 	bl	c0de5350 <drawStep>
c0de5266:	b00b      	add	sp, #44	@ 0x2c
c0de5268:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de526c:	f002 b867 	b.w	c0de733e <nbgl_refresh>
c0de5270:	2200      	movs	r2, #0
c0de5272:	eb09 0006 	add.w	r0, r9, r6
c0de5276:	1bcf      	subs	r7, r1, r7
c0de5278:	f10d 0c0c 	add.w	ip, sp, #12
c0de527c:	f880 205d 	strb.w	r2, [r0, #93]	@ 0x5d
c0de5280:	f88d 200c 	strb.w	r2, [sp, #12]
c0de5284:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5286:	ab08      	add	r3, sp, #32
c0de5288:	aa07      	add	r2, sp, #28
c0de528a:	2d00      	cmp	r5, #0
c0de528c:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de5290:	bf18      	it	ne
c0de5292:	3f01      	subne	r7, #1
c0de5294:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5296:	b2f9      	uxtb	r1, r7
c0de5298:	ab09      	add	r3, sp, #36	@ 0x24
c0de529a:	f000 fcf7 	bl	c0de5c8c <getPairData>
c0de529e:	9807      	ldr	r0, [sp, #28]
c0de52a0:	b140      	cbz	r0, c0de52b4 <displayReviewPage+0x13c>
c0de52a2:	eb09 0006 	add.w	r0, r9, r6
c0de52a6:	f880 705f 	strb.w	r7, [r0, #95]	@ 0x5f
c0de52aa:	4917      	ldr	r1, [pc, #92]	@ (c0de5308 <displayReviewPage+0x190>)
c0de52ac:	4479      	add	r1, pc
c0de52ae:	6381      	str	r1, [r0, #56]	@ 0x38
c0de52b0:	2001      	movs	r0, #1
c0de52b2:	e002      	b.n	c0de52ba <displayReviewPage+0x142>
c0de52b4:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de52b8:	0040      	lsls	r0, r0, #1
c0de52ba:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de52bc:	e7c6      	b.n	c0de524c <displayReviewPage+0xd4>
c0de52be:	f040 0001 	orr.w	r0, r0, #1
c0de52c2:	490e      	ldr	r1, [pc, #56]	@ (c0de52fc <displayReviewPage+0x184>)
c0de52c4:	2200      	movs	r2, #0
c0de52c6:	4479      	add	r1, pc
c0de52c8:	9103      	str	r1, [sp, #12]
c0de52ca:	490d      	ldr	r1, [pc, #52]	@ (c0de5300 <displayReviewPage+0x188>)
c0de52cc:	4479      	add	r1, pc
c0de52ce:	9105      	str	r1, [sp, #20]
c0de52d0:	2100      	movs	r1, #0
c0de52d2:	9100      	str	r1, [sp, #0]
c0de52d4:	490b      	ldr	r1, [pc, #44]	@ (c0de5304 <displayReviewPage+0x18c>)
c0de52d6:	ab03      	add	r3, sp, #12
c0de52d8:	4479      	add	r1, pc
c0de52da:	f7ff fbb5 	bl	c0de4a48 <nbgl_stepDrawCenteredInfo>
c0de52de:	eb09 0406 	add.w	r4, r9, r6
c0de52e2:	f002 f82c 	bl	c0de733e <nbgl_refresh>
c0de52e6:	2001      	movs	r0, #1
c0de52e8:	f884 7036 	strb.w	r7, [r4, #54]	@ 0x36
c0de52ec:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de52f0:	b00b      	add	sp, #44	@ 0x2c
c0de52f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de52f4:	000007f0 	.word	0x000007f0
c0de52f8:	000030de 	.word	0x000030de
c0de52fc:	00002dc4 	.word	0x00002dc4
c0de5300:	00002bf2 	.word	0x00002bf2
c0de5304:	00001181 	.word	0x00001181
c0de5308:	00001265 	.word	0x00001265
c0de530c:	0000132b 	.word	0x0000132b

c0de5310 <nbgl_useCaseStatus>:
c0de5310:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5312:	4605      	mov	r5, r0
c0de5314:	480c      	ldr	r0, [pc, #48]	@ (c0de5348 <nbgl_useCaseStatus+0x38>)
c0de5316:	2140      	movs	r1, #64	@ 0x40
c0de5318:	4614      	mov	r4, r2
c0de531a:	f001 fab0 	bl	c0de687e <OUTLINED_FUNCTION_2>
c0de531e:	2009      	movs	r0, #9
c0de5320:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de5322:	462a      	mov	r2, r5
c0de5324:	2300      	movs	r3, #0
c0de5326:	f886 002c 	strb.w	r0, [r6, #44]	@ 0x2c
c0de532a:	2001      	movs	r0, #1
c0de532c:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de5330:	2000      	movs	r0, #0
c0de5332:	4906      	ldr	r1, [pc, #24]	@ (c0de534c <nbgl_useCaseStatus+0x3c>)
c0de5334:	9002      	str	r0, [sp, #8]
c0de5336:	4479      	add	r1, pc
c0de5338:	e9cd 1000 	strd	r1, r0, [sp]
c0de533c:	2040      	movs	r0, #64	@ 0x40
c0de533e:	2100      	movs	r1, #0
c0de5340:	f000 f806 	bl	c0de5350 <drawStep>
c0de5344:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5346:	bf00      	nop
c0de5348:	000007f0 	.word	0x000007f0
c0de534c:	0000019f 	.word	0x0000019f

c0de5350 <drawStep>:
c0de5350:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5354:	b09a      	sub	sp, #104	@ 0x68
c0de5356:	4688      	mov	r8, r1
c0de5358:	4604      	mov	r4, r0
c0de535a:	a80c      	add	r0, sp, #48	@ 0x30
c0de535c:	2138      	movs	r1, #56	@ 0x38
c0de535e:	461d      	mov	r5, r3
c0de5360:	4616      	mov	r6, r2
c0de5362:	f002 fd07 	bl	c0de7d74 <__aeabi_memclr>
c0de5366:	2700      	movs	r7, #0
c0de5368:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de536c:	4856      	ldr	r0, [pc, #344]	@ (c0de54c8 <drawStep+0x178>)
c0de536e:	4478      	add	r0, pc
c0de5370:	f002 f9f4 	bl	c0de775c <pic>
c0de5374:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de54c4 <drawStep+0x174>
c0de5378:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de537c:	9709      	str	r7, [sp, #36]	@ 0x24
c0de537e:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de5382:	eb09 000b 	add.w	r0, r9, fp
c0de5386:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de538a:	2802      	cmp	r0, #2
c0de538c:	d30b      	bcc.n	c0de53a6 <drawStep+0x56>
c0de538e:	eb09 010b 	add.w	r1, r9, fp
c0de5392:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5396:	b129      	cbz	r1, c0de53a4 <drawStep+0x54>
c0de5398:	3801      	subs	r0, #1
c0de539a:	2703      	movs	r7, #3
c0de539c:	4288      	cmp	r0, r1
c0de539e:	bf08      	it	eq
c0de53a0:	2702      	moveq	r7, #2
c0de53a2:	e000      	b.n	c0de53a6 <drawStep+0x56>
c0de53a4:	2701      	movs	r7, #1
c0de53a6:	eb09 000b 	add.w	r0, r9, fp
c0de53aa:	ea47 0204 	orr.w	r2, r7, r4
c0de53ae:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de53b2:	4614      	mov	r4, r2
c0de53b4:	2901      	cmp	r1, #1
c0de53b6:	bf88      	it	hi
c0de53b8:	f044 0402 	orrhi.w	r4, r4, #2
c0de53bc:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de53be:	2900      	cmp	r1, #0
c0de53c0:	bf08      	it	eq
c0de53c2:	4614      	moveq	r4, r2
c0de53c4:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de53c8:	2806      	cmp	r0, #6
c0de53ca:	f040 0108 	orr.w	r1, r0, #8
c0de53ce:	bf18      	it	ne
c0de53d0:	4614      	movne	r4, r2
c0de53d2:	2909      	cmp	r1, #9
c0de53d4:	bf0c      	ite	eq
c0de53d6:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de53da:	f04f 0a00 	movne.w	sl, #0
c0de53de:	280a      	cmp	r0, #10
c0de53e0:	d105      	bne.n	c0de53ee <drawStep+0x9e>
c0de53e2:	eb09 000b 	add.w	r0, r9, fp
c0de53e6:	6d00      	ldr	r0, [r0, #80]	@ 0x50
c0de53e8:	b108      	cbz	r0, c0de53ee <drawStep+0x9e>
c0de53ea:	f7ff fc53 	bl	c0de4c94 <nbgl_stepRelease>
c0de53ee:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de53f0:	b1b6      	cbz	r6, c0de5420 <drawStep+0xd0>
c0de53f2:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de53f4:	f1b8 0f00 	cmp.w	r8, #0
c0de53f8:	d12c      	bne.n	c0de5454 <drawStep+0x104>
c0de53fa:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de53fc:	2802      	cmp	r0, #2
c0de53fe:	d029      	beq.n	c0de5454 <drawStep+0x104>
c0de5400:	2201      	movs	r2, #1
c0de5402:	4633      	mov	r3, r6
c0de5404:	2801      	cmp	r0, #1
c0de5406:	bf08      	it	eq
c0de5408:	2202      	moveq	r2, #2
c0de540a:	4620      	mov	r0, r4
c0de540c:	2d00      	cmp	r5, #0
c0de540e:	bf08      	it	eq
c0de5410:	462a      	moveq	r2, r5
c0de5412:	e9cd 5200 	strd	r5, r2, [sp]
c0de5416:	9702      	str	r7, [sp, #8]
c0de5418:	4652      	mov	r2, sl
c0de541a:	f7ff f9cf 	bl	c0de47bc <nbgl_stepDrawText>
c0de541e:	e043      	b.n	c0de54a8 <drawStep+0x158>
c0de5420:	eb09 000b 	add.w	r0, r9, fp
c0de5424:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5428:	a903      	add	r1, sp, #12
c0de542a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de542c:	f000 fbea 	bl	c0de5c04 <getContentElemAtIdx>
c0de5430:	b330      	cbz	r0, c0de5480 <drawStep+0x130>
c0de5432:	7801      	ldrb	r1, [r0, #0]
c0de5434:	2400      	movs	r4, #0
c0de5436:	290a      	cmp	r1, #10
c0de5438:	d024      	beq.n	c0de5484 <drawStep+0x134>
c0de543a:	2909      	cmp	r1, #9
c0de543c:	d135      	bne.n	c0de54aa <drawStep+0x15a>
c0de543e:	f001 fa32 	bl	c0de68a6 <OUTLINED_FUNCTION_5>
c0de5442:	4922      	ldr	r1, [pc, #136]	@ (c0de54cc <drawStep+0x17c>)
c0de5444:	4479      	add	r1, pc
c0de5446:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5448:	7941      	ldrb	r1, [r0, #5]
c0de544a:	7980      	ldrb	r0, [r0, #6]
c0de544c:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de5450:	1c48      	adds	r0, r1, #1
c0de5452:	e020      	b.n	c0de5496 <drawStep+0x146>
c0de5454:	2000      	movs	r0, #0
c0de5456:	9603      	str	r6, [sp, #12]
c0de5458:	f8cd 8014 	str.w	r8, [sp, #20]
c0de545c:	9504      	str	r5, [sp, #16]
c0de545e:	4652      	mov	r2, sl
c0de5460:	f88d 0018 	strb.w	r0, [sp, #24]
c0de5464:	eb09 000b 	add.w	r0, r9, fp
c0de5468:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de546a:	4328      	orrs	r0, r5
c0de546c:	bf18      	it	ne
c0de546e:	2001      	movne	r0, #1
c0de5470:	f88d 0019 	strb.w	r0, [sp, #25]
c0de5474:	9700      	str	r7, [sp, #0]
c0de5476:	ab03      	add	r3, sp, #12
c0de5478:	4620      	mov	r0, r4
c0de547a:	f7ff fae5 	bl	c0de4a48 <nbgl_stepDrawCenteredInfo>
c0de547e:	e013      	b.n	c0de54a8 <drawStep+0x158>
c0de5480:	2400      	movs	r4, #0
c0de5482:	e012      	b.n	c0de54aa <drawStep+0x15a>
c0de5484:	f001 fa0f 	bl	c0de68a6 <OUTLINED_FUNCTION_5>
c0de5488:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de548c:	4910      	ldr	r1, [pc, #64]	@ (c0de54d0 <drawStep+0x180>)
c0de548e:	7a00      	ldrb	r0, [r0, #8]
c0de5490:	4479      	add	r1, pc
c0de5492:	3001      	adds	r0, #1
c0de5494:	910a      	str	r1, [sp, #40]	@ 0x28
c0de5496:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de549a:	4651      	mov	r1, sl
c0de549c:	463b      	mov	r3, r7
c0de549e:	480d      	ldr	r0, [pc, #52]	@ (c0de54d4 <drawStep+0x184>)
c0de54a0:	aa0a      	add	r2, sp, #40	@ 0x28
c0de54a2:	4478      	add	r0, pc
c0de54a4:	f7ff fb60 	bl	c0de4b68 <nbgl_stepDrawMenuList>
c0de54a8:	4604      	mov	r4, r0
c0de54aa:	eb09 000b 	add.w	r0, r9, fp
c0de54ae:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de54b2:	280a      	cmp	r0, #10
c0de54b4:	bf04      	itt	eq
c0de54b6:	eb09 000b 	addeq.w	r0, r9, fp
c0de54ba:	6504      	streq	r4, [r0, #80]	@ 0x50
c0de54bc:	b01a      	add	sp, #104	@ 0x68
c0de54be:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de54c2:	bf00      	nop
c0de54c4:	000007f0 	.word	0x000007f0
c0de54c8:	000013a3 	.word	0x000013a3
c0de54cc:	000012dd 	.word	0x000012dd
c0de54d0:	00001291 	.word	0x00001291
c0de54d4:	000012e3 	.word	0x000012e3

c0de54d8 <statusButtonCallback>:
c0de54d8:	f041 0004 	orr.w	r0, r1, #4
c0de54dc:	2804      	cmp	r0, #4
c0de54de:	d001      	beq.n	c0de54e4 <statusButtonCallback+0xc>
c0de54e0:	2901      	cmp	r1, #1
c0de54e2:	d104      	bne.n	c0de54ee <statusButtonCallback+0x16>
c0de54e4:	4802      	ldr	r0, [pc, #8]	@ (c0de54f0 <statusButtonCallback+0x18>)
c0de54e6:	4448      	add	r0, r9
c0de54e8:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de54ea:	b100      	cbz	r0, c0de54ee <statusButtonCallback+0x16>
c0de54ec:	4700      	bx	r0
c0de54ee:	4770      	bx	lr
c0de54f0:	000007f0 	.word	0x000007f0

c0de54f4 <nbgl_useCaseReviewStatus>:
c0de54f4:	460a      	mov	r2, r1
c0de54f6:	b198      	cbz	r0, c0de5520 <nbgl_useCaseReviewStatus+0x2c>
c0de54f8:	2801      	cmp	r0, #1
c0de54fa:	d016      	beq.n	c0de552a <nbgl_useCaseReviewStatus+0x36>
c0de54fc:	2802      	cmp	r0, #2
c0de54fe:	d019      	beq.n	c0de5534 <nbgl_useCaseReviewStatus+0x40>
c0de5500:	2803      	cmp	r0, #3
c0de5502:	d01c      	beq.n	c0de553e <nbgl_useCaseReviewStatus+0x4a>
c0de5504:	2804      	cmp	r0, #4
c0de5506:	d01f      	beq.n	c0de5548 <nbgl_useCaseReviewStatus+0x54>
c0de5508:	2807      	cmp	r0, #7
c0de550a:	d022      	beq.n	c0de5552 <nbgl_useCaseReviewStatus+0x5e>
c0de550c:	2806      	cmp	r0, #6
c0de550e:	d025      	beq.n	c0de555c <nbgl_useCaseReviewStatus+0x68>
c0de5510:	2805      	cmp	r0, #5
c0de5512:	bf18      	it	ne
c0de5514:	4770      	bxne	lr
c0de5516:	4815      	ldr	r0, [pc, #84]	@ (c0de556c <nbgl_useCaseReviewStatus+0x78>)
c0de5518:	2100      	movs	r1, #0
c0de551a:	4478      	add	r0, pc
c0de551c:	f7ff bef8 	b.w	c0de5310 <nbgl_useCaseStatus>
c0de5520:	4813      	ldr	r0, [pc, #76]	@ (c0de5570 <nbgl_useCaseReviewStatus+0x7c>)
c0de5522:	2101      	movs	r1, #1
c0de5524:	4478      	add	r0, pc
c0de5526:	f7ff bef3 	b.w	c0de5310 <nbgl_useCaseStatus>
c0de552a:	4812      	ldr	r0, [pc, #72]	@ (c0de5574 <nbgl_useCaseReviewStatus+0x80>)
c0de552c:	2100      	movs	r1, #0
c0de552e:	4478      	add	r0, pc
c0de5530:	f7ff beee 	b.w	c0de5310 <nbgl_useCaseStatus>
c0de5534:	4810      	ldr	r0, [pc, #64]	@ (c0de5578 <nbgl_useCaseReviewStatus+0x84>)
c0de5536:	2101      	movs	r1, #1
c0de5538:	4478      	add	r0, pc
c0de553a:	f7ff bee9 	b.w	c0de5310 <nbgl_useCaseStatus>
c0de553e:	480f      	ldr	r0, [pc, #60]	@ (c0de557c <nbgl_useCaseReviewStatus+0x88>)
c0de5540:	2100      	movs	r1, #0
c0de5542:	4478      	add	r0, pc
c0de5544:	f7ff bee4 	b.w	c0de5310 <nbgl_useCaseStatus>
c0de5548:	4807      	ldr	r0, [pc, #28]	@ (c0de5568 <nbgl_useCaseReviewStatus+0x74>)
c0de554a:	2101      	movs	r1, #1
c0de554c:	4478      	add	r0, pc
c0de554e:	f7ff bedf 	b.w	c0de5310 <nbgl_useCaseStatus>
c0de5552:	480c      	ldr	r0, [pc, #48]	@ (c0de5584 <nbgl_useCaseReviewStatus+0x90>)
c0de5554:	2100      	movs	r1, #0
c0de5556:	4478      	add	r0, pc
c0de5558:	f7ff beda 	b.w	c0de5310 <nbgl_useCaseStatus>
c0de555c:	4808      	ldr	r0, [pc, #32]	@ (c0de5580 <nbgl_useCaseReviewStatus+0x8c>)
c0de555e:	2101      	movs	r1, #1
c0de5560:	4478      	add	r0, pc
c0de5562:	f7ff bed5 	b.w	c0de5310 <nbgl_useCaseStatus>
c0de5566:	bf00      	nop
c0de5568:	00002b09 	.word	0x00002b09
c0de556c:	00002b5d 	.word	0x00002b5d
c0de5570:	00002bed 	.word	0x00002bed
c0de5574:	00002db9 	.word	0x00002db9
c0de5578:	00002c4c 	.word	0x00002c4c
c0de557c:	00002d48 	.word	0x00002d48
c0de5580:	00002b71 	.word	0x00002b71
c0de5584:	00002cab 	.word	0x00002cab

c0de5588 <displayStreamingReviewPage>:
c0de5588:	b570      	push	{r4, r5, r6, lr}
c0de558a:	b08c      	sub	sp, #48	@ 0x30
c0de558c:	4d5a      	ldr	r5, [pc, #360]	@ (c0de56f8 <displayStreamingReviewPage+0x170>)
c0de558e:	2100      	movs	r1, #0
c0de5590:	4604      	mov	r4, r0
c0de5592:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de5596:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de559a:	eb09 0005 	add.w	r0, r9, r5
c0de559e:	6381      	str	r1, [r0, #56]	@ 0x38
c0de55a0:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de55a4:	2806      	cmp	r0, #6
c0de55a6:	d015      	beq.n	c0de55d4 <displayStreamingReviewPage+0x4c>
c0de55a8:	2805      	cmp	r0, #5
c0de55aa:	d13d      	bne.n	c0de5628 <displayStreamingReviewPage+0xa0>
c0de55ac:	eb09 0205 	add.w	r2, r9, r5
c0de55b0:	2101      	movs	r1, #1
c0de55b2:	2302      	movs	r3, #2
c0de55b4:	6cd0      	ldr	r0, [r2, #76]	@ 0x4c
c0de55b6:	2800      	cmp	r0, #0
c0de55b8:	bf08      	it	eq
c0de55ba:	21ff      	moveq	r1, #255	@ 0xff
c0de55bc:	bf08      	it	eq
c0de55be:	2301      	moveq	r3, #1
c0de55c0:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de55c4:	4293      	cmp	r3, r2
c0de55c6:	dd3b      	ble.n	c0de5640 <displayStreamingReviewPage+0xb8>
c0de55c8:	b2d3      	uxtb	r3, r2
c0de55ca:	2b00      	cmp	r3, #0
c0de55cc:	d063      	beq.n	c0de5696 <displayStreamingReviewPage+0x10e>
c0de55ce:	4291      	cmp	r1, r2
c0de55d0:	d066      	beq.n	c0de56a0 <displayStreamingReviewPage+0x118>
c0de55d2:	e066      	b.n	c0de56a2 <displayStreamingReviewPage+0x11a>
c0de55d4:	eb09 0005 	add.w	r0, r9, r5
c0de55d8:	f990 1035 	ldrsb.w	r1, [r0, #53]	@ 0x35
c0de55dc:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de55de:	7a02      	ldrb	r2, [r0, #8]
c0de55e0:	4291      	cmp	r1, r2
c0de55e2:	da2d      	bge.n	c0de5640 <displayStreamingReviewPage+0xb8>
c0de55e4:	eb09 0205 	add.w	r2, r9, r5
c0de55e8:	6d93      	ldr	r3, [r2, #88]	@ 0x58
c0de55ea:	b3cb      	cbz	r3, c0de5660 <displayStreamingReviewPage+0xd8>
c0de55ec:	f892 205d 	ldrb.w	r2, [r2, #93]	@ 0x5d
c0de55f0:	bbb2      	cbnz	r2, c0de5660 <displayStreamingReviewPage+0xd8>
c0de55f2:	eb09 0205 	add.w	r2, r9, r5
c0de55f6:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de55fa:	2a01      	cmp	r2, #1
c0de55fc:	d807      	bhi.n	c0de560e <displayStreamingReviewPage+0x86>
c0de55fe:	2900      	cmp	r1, #0
c0de5600:	dc05      	bgt.n	c0de560e <displayStreamingReviewPage+0x86>
c0de5602:	eb09 0305 	add.w	r3, r9, r5
c0de5606:	f893 305e 	ldrb.w	r3, [r3, #94]	@ 0x5e
c0de560a:	2b08      	cmp	r3, #8
c0de560c:	d128      	bne.n	c0de5660 <displayStreamingReviewPage+0xd8>
c0de560e:	2000      	movs	r0, #0
c0de5610:	9007      	str	r0, [sp, #28]
c0de5612:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de5616:	f004 0008 	and.w	r0, r4, #8
c0de561a:	2a01      	cmp	r2, #1
c0de561c:	d001      	beq.n	c0de5622 <displayStreamingReviewPage+0x9a>
c0de561e:	2901      	cmp	r1, #1
c0de5620:	db50      	blt.n	c0de56c4 <displayStreamingReviewPage+0x13c>
c0de5622:	f040 0003 	orr.w	r0, r0, #3
c0de5626:	e04f      	b.n	c0de56c8 <displayStreamingReviewPage+0x140>
c0de5628:	eb09 0005 	add.w	r0, r9, r5
c0de562c:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5630:	b180      	cbz	r0, c0de5654 <displayStreamingReviewPage+0xcc>
c0de5632:	a909      	add	r1, sp, #36	@ 0x24
c0de5634:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5636:	2000      	movs	r0, #0
c0de5638:	2500      	movs	r5, #0
c0de563a:	f000 fe4b 	bl	c0de62d4 <getLastPageInfo>
c0de563e:	e031      	b.n	c0de56a4 <displayStreamingReviewPage+0x11c>
c0de5640:	eb09 0005 	add.w	r0, r9, r5
c0de5644:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de5646:	2900      	cmp	r1, #0
c0de5648:	d053      	beq.n	c0de56f2 <displayStreamingReviewPage+0x16a>
c0de564a:	2001      	movs	r0, #1
c0de564c:	b00c      	add	sp, #48	@ 0x30
c0de564e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5652:	4708      	bx	r1
c0de5654:	a909      	add	r1, sp, #36	@ 0x24
c0de5656:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5658:	2001      	movs	r0, #1
c0de565a:	f000 fe3b 	bl	c0de62d4 <getLastPageInfo>
c0de565e:	e020      	b.n	c0de56a2 <displayStreamingReviewPage+0x11a>
c0de5660:	2300      	movs	r3, #0
c0de5662:	eb09 0205 	add.w	r2, r9, r5
c0de5666:	b2c9      	uxtb	r1, r1
c0de5668:	f882 305d 	strb.w	r3, [r2, #93]	@ 0x5d
c0de566c:	f88d 300f 	strb.w	r3, [sp, #15]
c0de5670:	ab09      	add	r3, sp, #36	@ 0x24
c0de5672:	ad08      	add	r5, sp, #32
c0de5674:	f10d 020f 	add.w	r2, sp, #15
c0de5678:	e9cd 5300 	strd	r5, r3, [sp]
c0de567c:	9202      	str	r2, [sp, #8]
c0de567e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5680:	ab0a      	add	r3, sp, #40	@ 0x28
c0de5682:	f000 fb03 	bl	c0de5c8c <getPairData>
c0de5686:	9808      	ldr	r0, [sp, #32]
c0de5688:	2800      	cmp	r0, #0
c0de568a:	bf12      	itee	ne
c0de568c:	2501      	movne	r5, #1
c0de568e:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de5692:	0045      	lsleq	r5, r0, #1
c0de5694:	e006      	b.n	c0de56a4 <displayStreamingReviewPage+0x11c>
c0de5696:	eb09 0005 	add.w	r0, r9, r5
c0de569a:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de569e:	9109      	str	r1, [sp, #36]	@ 0x24
c0de56a0:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de56a2:	2500      	movs	r5, #0
c0de56a4:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de56a6:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de56aa:	4e17      	ldr	r6, [pc, #92]	@ (c0de5708 <displayStreamingReviewPage+0x180>)
c0de56ac:	b2e8      	uxtb	r0, r5
c0de56ae:	2500      	movs	r5, #0
c0de56b0:	9002      	str	r0, [sp, #8]
c0de56b2:	4620      	mov	r0, r4
c0de56b4:	447e      	add	r6, pc
c0de56b6:	f001 f8f9 	bl	c0de68ac <OUTLINED_FUNCTION_6>
c0de56ba:	b00c      	add	sp, #48	@ 0x30
c0de56bc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de56c0:	f001 be3d 	b.w	c0de733e <nbgl_refresh>
c0de56c4:	f040 0001 	orr.w	r0, r0, #1
c0de56c8:	490c      	ldr	r1, [pc, #48]	@ (c0de56fc <displayStreamingReviewPage+0x174>)
c0de56ca:	2200      	movs	r2, #0
c0de56cc:	4479      	add	r1, pc
c0de56ce:	9104      	str	r1, [sp, #16]
c0de56d0:	490b      	ldr	r1, [pc, #44]	@ (c0de5700 <displayStreamingReviewPage+0x178>)
c0de56d2:	4479      	add	r1, pc
c0de56d4:	9106      	str	r1, [sp, #24]
c0de56d6:	2100      	movs	r1, #0
c0de56d8:	9100      	str	r1, [sp, #0]
c0de56da:	490a      	ldr	r1, [pc, #40]	@ (c0de5704 <displayStreamingReviewPage+0x17c>)
c0de56dc:	ab04      	add	r3, sp, #16
c0de56de:	4479      	add	r1, pc
c0de56e0:	f7ff f9b2 	bl	c0de4a48 <nbgl_stepDrawCenteredInfo>
c0de56e4:	eb09 0405 	add.w	r4, r9, r5
c0de56e8:	f001 fe29 	bl	c0de733e <nbgl_refresh>
c0de56ec:	2001      	movs	r0, #1
c0de56ee:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de56f2:	b00c      	add	sp, #48	@ 0x30
c0de56f4:	bd70      	pop	{r4, r5, r6, pc}
c0de56f6:	bf00      	nop
c0de56f8:	000007f0 	.word	0x000007f0
c0de56fc:	000029be 	.word	0x000029be
c0de5700:	000027ec 	.word	0x000027ec
c0de5704:	00000d7b 	.word	0x00000d7b
c0de5708:	0000113d 	.word	0x0000113d

c0de570c <nbgl_useCaseSpinner>:
c0de570c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de570e:	4604      	mov	r4, r0
c0de5710:	480b      	ldr	r0, [pc, #44]	@ (c0de5740 <nbgl_useCaseSpinner+0x34>)
c0de5712:	2140      	movs	r1, #64	@ 0x40
c0de5714:	f001 f8a2 	bl	c0de685c <OUTLINED_FUNCTION_0>
c0de5718:	2001      	movs	r0, #1
c0de571a:	4622      	mov	r2, r4
c0de571c:	2300      	movs	r3, #0
c0de571e:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de5722:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de5726:	2000      	movs	r0, #0
c0de5728:	e9cd 0000 	strd	r0, r0, [sp]
c0de572c:	9002      	str	r0, [sp, #8]
c0de572e:	2000      	movs	r0, #0
c0de5730:	4904      	ldr	r1, [pc, #16]	@ (c0de5744 <nbgl_useCaseSpinner+0x38>)
c0de5732:	4479      	add	r1, pc
c0de5734:	f7ff fe0c 	bl	c0de5350 <drawStep>
c0de5738:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de573c:	f001 bdff 	b.w	c0de733e <nbgl_refresh>
c0de5740:	000007f0 	.word	0x000007f0
c0de5744:	00002883 	.word	0x00002883

c0de5748 <nbgl_useCaseChoice>:
c0de5748:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de574a:	9c07      	ldr	r4, [sp, #28]
c0de574c:	9402      	str	r4, [sp, #8]
c0de574e:	2400      	movs	r4, #0
c0de5750:	9401      	str	r4, [sp, #4]
c0de5752:	9c06      	ldr	r4, [sp, #24]
c0de5754:	9400      	str	r4, [sp, #0]
c0de5756:	f000 f801 	bl	c0de575c <nbgl_useCaseChoiceWithDetails>
c0de575a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de575c <nbgl_useCaseChoiceWithDetails>:
c0de575c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5760:	f8df 806c 	ldr.w	r8, [pc, #108]	@ c0de57d0 <nbgl_useCaseChoiceWithDetails+0x74>
c0de5764:	460c      	mov	r4, r1
c0de5766:	4605      	mov	r5, r0
c0de5768:	2140      	movs	r1, #64	@ 0x40
c0de576a:	469a      	mov	sl, r3
c0de576c:	4617      	mov	r7, r2
c0de576e:	eb09 0608 	add.w	r6, r9, r8
c0de5772:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de5776:	f002 fafd 	bl	c0de7d74 <__aeabi_memclr>
c0de577a:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de577c:	2203      	movs	r2, #3
c0de577e:	6570      	str	r0, [r6, #84]	@ 0x54
c0de5780:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de5782:	6531      	str	r1, [r6, #80]	@ 0x50
c0de5784:	9908      	ldr	r1, [sp, #32]
c0de5786:	e9c6 7a11 	strd	r7, sl, [r6, #68]	@ 0x44
c0de578a:	e9c6 540f 	strd	r5, r4, [r6, #60]	@ 0x3c
c0de578e:	64f1      	str	r1, [r6, #76]	@ 0x4c
c0de5790:	2108      	movs	r1, #8
c0de5792:	f886 102c 	strb.w	r1, [r6, #44]	@ 0x2c
c0de5796:	2f00      	cmp	r7, #0
c0de5798:	f04f 0103 	mov.w	r1, #3
c0de579c:	bf18      	it	ne
c0de579e:	2104      	movne	r1, #4
c0de57a0:	2d00      	cmp	r5, #0
c0de57a2:	bf08      	it	eq
c0de57a4:	4611      	moveq	r1, r2
c0de57a6:	2c00      	cmp	r4, #0
c0de57a8:	bf08      	it	eq
c0de57aa:	2102      	moveq	r1, #2
c0de57ac:	f886 1034 	strb.w	r1, [r6, #52]	@ 0x34
c0de57b0:	b140      	cbz	r0, c0de57c4 <nbgl_useCaseChoiceWithDetails+0x68>
c0de57b2:	7902      	ldrb	r2, [r0, #4]
c0de57b4:	2a03      	cmp	r2, #3
c0de57b6:	d105      	bne.n	c0de57c4 <nbgl_useCaseChoiceWithDetails+0x68>
c0de57b8:	7a00      	ldrb	r0, [r0, #8]
c0de57ba:	eb09 0208 	add.w	r2, r9, r8
c0de57be:	4408      	add	r0, r1
c0de57c0:	f882 0034 	strb.w	r0, [r2, #52]	@ 0x34
c0de57c4:	2000      	movs	r0, #0
c0de57c6:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de57ca:	f000 b803 	b.w	c0de57d4 <displayChoicePage>
c0de57ce:	bf00      	nop
c0de57d0:	000007f0 	.word	0x000007f0

c0de57d4 <displayChoicePage>:
c0de57d4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de57d6:	4b33      	ldr	r3, [pc, #204]	@ (c0de58a4 <displayChoicePage+0xd0>)
c0de57d8:	2400      	movs	r4, #0
c0de57da:	eb09 0103 	add.w	r1, r9, r3
c0de57de:	6c0a      	ldr	r2, [r1, #64]	@ 0x40
c0de57e0:	b16a      	cbz	r2, c0de57fe <displayChoicePage+0x2a>
c0de57e2:	eb09 0103 	add.w	r1, r9, r3
c0de57e6:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de57e8:	b131      	cbz	r1, c0de57f8 <displayChoicePage+0x24>
c0de57ea:	eb09 0103 	add.w	r1, r9, r3
c0de57ee:	6c49      	ldr	r1, [r1, #68]	@ 0x44
c0de57f0:	b111      	cbz	r1, c0de57f8 <displayChoicePage+0x24>
c0de57f2:	2102      	movs	r1, #2
c0de57f4:	2501      	movs	r5, #1
c0de57f6:	e004      	b.n	c0de5802 <displayChoicePage+0x2e>
c0de57f8:	2101      	movs	r1, #1
c0de57fa:	2500      	movs	r5, #0
c0de57fc:	e001      	b.n	c0de5802 <displayChoicePage+0x2e>
c0de57fe:	2500      	movs	r5, #0
c0de5800:	2100      	movs	r1, #0
c0de5802:	eb09 0603 	add.w	r6, r9, r3
c0de5806:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de5808:	f896 6035 	ldrb.w	r6, [r6, #53]	@ 0x35
c0de580c:	b274      	sxtb	r4, r6
c0de580e:	42a1      	cmp	r1, r4
c0de5810:	dd08      	ble.n	c0de5824 <displayChoicePage+0x50>
c0de5812:	b1ee      	cbz	r6, c0de5850 <displayChoicePage+0x7c>
c0de5814:	1e71      	subs	r1, r6, #1
c0de5816:	fab1 f181 	clz	r1, r1
c0de581a:	0949      	lsrs	r1, r1, #5
c0de581c:	4029      	ands	r1, r5
c0de581e:	2901      	cmp	r1, #1
c0de5820:	d01c      	beq.n	c0de585c <displayChoicePage+0x88>
c0de5822:	e030      	b.n	c0de5886 <displayChoicePage+0xb2>
c0de5824:	d108      	bne.n	c0de5838 <displayChoicePage+0x64>
c0de5826:	4a20      	ldr	r2, [pc, #128]	@ (c0de58a8 <displayChoicePage+0xd4>)
c0de5828:	eb09 0103 	add.w	r1, r9, r3
c0de582c:	447a      	add	r2, pc
c0de582e:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5830:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de5832:	491e      	ldr	r1, [pc, #120]	@ (c0de58ac <displayChoicePage+0xd8>)
c0de5834:	4479      	add	r1, pc
c0de5836:	e00f      	b.n	c0de5858 <displayChoicePage+0x84>
c0de5838:	1c4a      	adds	r2, r1, #1
c0de583a:	42a2      	cmp	r2, r4
c0de583c:	d112      	bne.n	c0de5864 <displayChoicePage+0x90>
c0de583e:	4a1c      	ldr	r2, [pc, #112]	@ (c0de58b0 <displayChoicePage+0xdc>)
c0de5840:	eb09 0103 	add.w	r1, r9, r3
c0de5844:	447a      	add	r2, pc
c0de5846:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5848:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de584a:	491a      	ldr	r1, [pc, #104]	@ (c0de58b4 <displayChoicePage+0xe0>)
c0de584c:	4479      	add	r1, pc
c0de584e:	e003      	b.n	c0de5858 <displayChoicePage+0x84>
c0de5850:	eb09 0103 	add.w	r1, r9, r3
c0de5854:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de5856:	b109      	cbz	r1, c0de585c <displayChoicePage+0x88>
c0de5858:	2300      	movs	r3, #0
c0de585a:	e017      	b.n	c0de588c <displayChoicePage+0xb8>
c0de585c:	eb09 0103 	add.w	r1, r9, r3
c0de5860:	6c4b      	ldr	r3, [r1, #68]	@ 0x44
c0de5862:	e012      	b.n	c0de588a <displayChoicePage+0xb6>
c0de5864:	eb09 0203 	add.w	r2, r9, r3
c0de5868:	6d52      	ldr	r2, [r2, #84]	@ 0x54
c0de586a:	b162      	cbz	r2, c0de5886 <displayChoicePage+0xb2>
c0de586c:	7913      	ldrb	r3, [r2, #4]
c0de586e:	2b03      	cmp	r3, #3
c0de5870:	d109      	bne.n	c0de5886 <displayChoicePage+0xb2>
c0de5872:	1a61      	subs	r1, r4, r1
c0de5874:	f06f 0307 	mvn.w	r3, #7
c0de5878:	e9d2 4203 	ldrd	r4, r2, [r2, #12]
c0de587c:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de5880:	5853      	ldr	r3, [r2, r1]
c0de5882:	5862      	ldr	r2, [r4, r1]
c0de5884:	e001      	b.n	c0de588a <displayChoicePage+0xb6>
c0de5886:	2200      	movs	r2, #0
c0de5888:	2300      	movs	r3, #0
c0de588a:	2100      	movs	r1, #0
c0de588c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de58b8 <displayChoicePage+0xe4>)
c0de588e:	2400      	movs	r4, #0
c0de5890:	9402      	str	r4, [sp, #8]
c0de5892:	447d      	add	r5, pc
c0de5894:	e9cd 5400 	strd	r5, r4, [sp]
c0de5898:	f7ff fd5a 	bl	c0de5350 <drawStep>
c0de589c:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de58a0:	f001 bd4d 	b.w	c0de733e <nbgl_refresh>
c0de58a4:	000007f0 	.word	0x000007f0
c0de58a8:	00000fe9 	.word	0x00000fe9
c0de58ac:	000027be 	.word	0x000027be
c0de58b0:	00000fe5 	.word	0x00000fe5
c0de58b4:	0000272a 	.word	0x0000272a
c0de58b8:	00000fab 	.word	0x00000fab

c0de58bc <getContentAtIdx>:
c0de58bc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de58be:	b087      	sub	sp, #28
c0de58c0:	460d      	mov	r5, r1
c0de58c2:	4606      	mov	r6, r0
c0de58c4:	a801      	add	r0, sp, #4
c0de58c6:	2118      	movs	r1, #24
c0de58c8:	4614      	mov	r4, r2
c0de58ca:	f002 fa53 	bl	c0de7d74 <__aeabi_memclr>
c0de58ce:	2d00      	cmp	r5, #0
c0de58d0:	d428      	bmi.n	c0de5924 <getContentAtIdx+0x68>
c0de58d2:	7a30      	ldrb	r0, [r6, #8]
c0de58d4:	4285      	cmp	r5, r0
c0de58d6:	da25      	bge.n	c0de5924 <getContentAtIdx+0x68>
c0de58d8:	7830      	ldrb	r0, [r6, #0]
c0de58da:	b338      	cbz	r0, c0de592c <getContentAtIdx+0x70>
c0de58dc:	b314      	cbz	r4, c0de5924 <getContentAtIdx+0x68>
c0de58de:	4620      	mov	r0, r4
c0de58e0:	2138      	movs	r1, #56	@ 0x38
c0de58e2:	f002 fa47 	bl	c0de7d74 <__aeabi_memclr>
c0de58e6:	4821      	ldr	r0, [pc, #132]	@ (c0de596c <getContentAtIdx+0xb0>)
c0de58e8:	4448      	add	r0, r9
c0de58ea:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de58ec:	b342      	cbz	r2, c0de5940 <getContentAtIdx+0x84>
c0de58ee:	b2e8      	uxtb	r0, r5
c0de58f0:	ad01      	add	r5, sp, #4
c0de58f2:	4629      	mov	r1, r5
c0de58f4:	4790      	blx	r2
c0de58f6:	b1a8      	cbz	r0, c0de5924 <getContentAtIdx+0x68>
c0de58f8:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de58fc:	280a      	cmp	r0, #10
c0de58fe:	7020      	strb	r0, [r4, #0]
c0de5900:	d023      	beq.n	c0de594a <getContentAtIdx+0x8e>
c0de5902:	2803      	cmp	r0, #3
c0de5904:	d008      	beq.n	c0de5918 <getContentAtIdx+0x5c>
c0de5906:	2804      	cmp	r0, #4
c0de5908:	d025      	beq.n	c0de5956 <getContentAtIdx+0x9a>
c0de590a:	2807      	cmp	r0, #7
c0de590c:	d029      	beq.n	c0de5962 <getContentAtIdx+0xa6>
c0de590e:	2808      	cmp	r0, #8
c0de5910:	d002      	beq.n	c0de5918 <getContentAtIdx+0x5c>
c0de5912:	2809      	cmp	r0, #9
c0de5914:	d019      	beq.n	c0de594a <getContentAtIdx+0x8e>
c0de5916:	b928      	cbnz	r0, c0de5924 <getContentAtIdx+0x68>
c0de5918:	1d28      	adds	r0, r5, #4
c0de591a:	1d21      	adds	r1, r4, #4
c0de591c:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de5920:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de5922:	e000      	b.n	c0de5926 <getContentAtIdx+0x6a>
c0de5924:	2400      	movs	r4, #0
c0de5926:	4620      	mov	r0, r4
c0de5928:	b007      	add	sp, #28
c0de592a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de592c:	6871      	ldr	r1, [r6, #4]
c0de592e:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de5932:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5936:	b007      	add	sp, #28
c0de5938:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de593c:	f001 bf0e 	b.w	c0de775c <pic>
c0de5940:	6872      	ldr	r2, [r6, #4]
c0de5942:	b2e8      	uxtb	r0, r5
c0de5944:	4621      	mov	r1, r4
c0de5946:	4790      	blx	r2
c0de5948:	e7ed      	b.n	c0de5926 <getContentAtIdx+0x6a>
c0de594a:	1d28      	adds	r0, r5, #4
c0de594c:	1d21      	adds	r1, r4, #4
c0de594e:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de5952:	c12c      	stmia	r1!, {r2, r3, r5}
c0de5954:	e7e7      	b.n	c0de5926 <getContentAtIdx+0x6a>
c0de5956:	1d28      	adds	r0, r5, #4
c0de5958:	1d21      	adds	r1, r4, #4
c0de595a:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de595e:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de5960:	e7e1      	b.n	c0de5926 <getContentAtIdx+0x6a>
c0de5962:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de5966:	e9c4 0101 	strd	r0, r1, [r4, #4]
c0de596a:	e7dc      	b.n	c0de5926 <getContentAtIdx+0x6a>
c0de596c:	000007f0 	.word	0x000007f0

c0de5970 <getContentNbElement>:
c0de5970:	7802      	ldrb	r2, [r0, #0]
c0de5972:	2101      	movs	r1, #1
c0de5974:	b1a2      	cbz	r2, c0de59a0 <getContentNbElement+0x30>
c0de5976:	2a03      	cmp	r2, #3
c0de5978:	d012      	beq.n	c0de59a0 <getContentNbElement+0x30>
c0de597a:	2a0a      	cmp	r2, #10
c0de597c:	d007      	beq.n	c0de598e <getContentNbElement+0x1e>
c0de597e:	2a07      	cmp	r2, #7
c0de5980:	d007      	beq.n	c0de5992 <getContentNbElement+0x22>
c0de5982:	2a08      	cmp	r2, #8
c0de5984:	d007      	beq.n	c0de5996 <getContentNbElement+0x26>
c0de5986:	2a09      	cmp	r2, #9
c0de5988:	d007      	beq.n	c0de599a <getContentNbElement+0x2a>
c0de598a:	2a04      	cmp	r2, #4
c0de598c:	d107      	bne.n	c0de599e <getContentNbElement+0x2e>
c0de598e:	7b01      	ldrb	r1, [r0, #12]
c0de5990:	e006      	b.n	c0de59a0 <getContentNbElement+0x30>
c0de5992:	7a01      	ldrb	r1, [r0, #8]
c0de5994:	e004      	b.n	c0de59a0 <getContentNbElement+0x30>
c0de5996:	7c01      	ldrb	r1, [r0, #16]
c0de5998:	e002      	b.n	c0de59a0 <getContentNbElement+0x30>
c0de599a:	7a41      	ldrb	r1, [r0, #9]
c0de599c:	e000      	b.n	c0de59a0 <getContentNbElement+0x30>
c0de599e:	2100      	movs	r1, #0
c0de59a0:	4608      	mov	r0, r1
c0de59a2:	4770      	bx	lr

c0de59a4 <displayContent>:
c0de59a4:	b570      	push	{r4, r5, r6, lr}
c0de59a6:	b08a      	sub	sp, #40	@ 0x28
c0de59a8:	460d      	mov	r5, r1
c0de59aa:	4604      	mov	r4, r0
c0de59ac:	a804      	add	r0, sp, #16
c0de59ae:	2118      	movs	r1, #24
c0de59b0:	f002 f9e0 	bl	c0de7d74 <__aeabi_memclr>
c0de59b4:	4820      	ldr	r0, [pc, #128]	@ (c0de5a38 <displayContent+0x94>)
c0de59b6:	f000 ff57 	bl	c0de6868 <OUTLINED_FUNCTION_1>
c0de59ba:	dd14      	ble.n	c0de59e6 <displayContent+0x42>
c0de59bc:	a904      	add	r1, sp, #16
c0de59be:	4628      	mov	r0, r5
c0de59c0:	f000 f846 	bl	c0de5a50 <getContentPage>
c0de59c4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de59c8:	b318      	cbz	r0, c0de5a12 <displayContent+0x6e>
c0de59ca:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de59ce:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de59d2:	481e      	ldr	r0, [pc, #120]	@ (c0de5a4c <displayContent+0xa8>)
c0de59d4:	4478      	add	r0, pc
c0de59d6:	2b00      	cmp	r3, #0
c0de59d8:	9000      	str	r0, [sp, #0]
c0de59da:	4620      	mov	r0, r4
c0de59dc:	bf18      	it	ne
c0de59de:	2301      	movne	r3, #1
c0de59e0:	f000 f8d8 	bl	c0de5b94 <drawSwitchStep>
c0de59e4:	e023      	b.n	c0de5a2e <displayContent+0x8a>
c0de59e6:	4448      	add	r0, r9
c0de59e8:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de59ea:	6381      	str	r1, [r0, #56]	@ 0x38
c0de59ec:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de59ee:	4a13      	ldr	r2, [pc, #76]	@ (c0de5a3c <displayContent+0x98>)
c0de59f0:	2900      	cmp	r1, #0
c0de59f2:	447a      	add	r2, pc
c0de59f4:	bf18      	it	ne
c0de59f6:	460a      	movne	r2, r1
c0de59f8:	9205      	str	r2, [sp, #20]
c0de59fa:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de59fe:	4910      	ldr	r1, [pc, #64]	@ (c0de5a40 <displayContent+0x9c>)
c0de5a00:	4a10      	ldr	r2, [pc, #64]	@ (c0de5a44 <displayContent+0xa0>)
c0de5a02:	2803      	cmp	r0, #3
c0de5a04:	447a      	add	r2, pc
c0de5a06:	4479      	add	r1, pc
c0de5a08:	bf08      	it	eq
c0de5a0a:	460a      	moveq	r2, r1
c0de5a0c:	9207      	str	r2, [sp, #28]
c0de5a0e:	2000      	movs	r0, #0
c0de5a10:	e002      	b.n	c0de5a18 <displayContent+0x74>
c0de5a12:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5a16:	0040      	lsls	r0, r0, #1
c0de5a18:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5a1c:	9907      	ldr	r1, [sp, #28]
c0de5a1e:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5a48 <displayContent+0xa4>)
c0de5a20:	b2c0      	uxtb	r0, r0
c0de5a22:	2500      	movs	r5, #0
c0de5a24:	9002      	str	r0, [sp, #8]
c0de5a26:	4620      	mov	r0, r4
c0de5a28:	447e      	add	r6, pc
c0de5a2a:	f000 ff3f 	bl	c0de68ac <OUTLINED_FUNCTION_6>
c0de5a2e:	f001 fc86 	bl	c0de733e <nbgl_refresh>
c0de5a32:	b00a      	add	sp, #40	@ 0x28
c0de5a34:	bd70      	pop	{r4, r5, r6, pc}
c0de5a36:	bf00      	nop
c0de5a38:	000007f0 	.word	0x000007f0
c0de5a3c:	000028c3 	.word	0x000028c3
c0de5a40:	00002570 	.word	0x00002570
c0de5a44:	0000252c 	.word	0x0000252c
c0de5a48:	000001b9 	.word	0x000001b9
c0de5a4c:	0000020d 	.word	0x0000020d

c0de5a50 <getContentPage>:
c0de5a50:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5a52:	b093      	sub	sp, #76	@ 0x4c
c0de5a54:	4606      	mov	r6, r0
c0de5a56:	2000      	movs	r0, #0
c0de5a58:	460c      	mov	r4, r1
c0de5a5a:	2138      	movs	r1, #56	@ 0x38
c0de5a5c:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de5a60:	ad04      	add	r5, sp, #16
c0de5a62:	4628      	mov	r0, r5
c0de5a64:	f002 f986 	bl	c0de7d74 <__aeabi_memclr>
c0de5a68:	4f47      	ldr	r7, [pc, #284]	@ (c0de5b88 <getContentPage+0x138>)
c0de5a6a:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de5a6e:	462a      	mov	r2, r5
c0de5a70:	eb09 0007 	add.w	r0, r9, r7
c0de5a74:	f000 ff13 	bl	c0de689e <OUTLINED_FUNCTION_4>
c0de5a78:	2800      	cmp	r0, #0
c0de5a7a:	d07a      	beq.n	c0de5b72 <getContentPage+0x122>
c0de5a7c:	4605      	mov	r5, r0
c0de5a7e:	7800      	ldrb	r0, [r0, #0]
c0de5a80:	280a      	cmp	r0, #10
c0de5a82:	d011      	beq.n	c0de5aa8 <getContentPage+0x58>
c0de5a84:	2803      	cmp	r0, #3
c0de5a86:	d02c      	beq.n	c0de5ae2 <getContentPage+0x92>
c0de5a88:	2804      	cmp	r0, #4
c0de5a8a:	d035      	beq.n	c0de5af8 <getContentPage+0xa8>
c0de5a8c:	2807      	cmp	r0, #7
c0de5a8e:	d045      	beq.n	c0de5b1c <getContentPage+0xcc>
c0de5a90:	2808      	cmp	r0, #8
c0de5a92:	d060      	beq.n	c0de5b56 <getContentPage+0x106>
c0de5a94:	2809      	cmp	r0, #9
c0de5a96:	d007      	beq.n	c0de5aa8 <getContentPage+0x58>
c0de5a98:	2800      	cmp	r0, #0
c0de5a9a:	d16a      	bne.n	c0de5b72 <getContentPage+0x122>
c0de5a9c:	6868      	ldr	r0, [r5, #4]
c0de5a9e:	f001 fe5d 	bl	c0de775c <pic>
c0de5aa2:	6060      	str	r0, [r4, #4]
c0de5aa4:	68a8      	ldr	r0, [r5, #8]
c0de5aa6:	e019      	b.n	c0de5adc <getContentPage+0x8c>
c0de5aa8:	1d28      	adds	r0, r5, #4
c0de5aaa:	eb09 0607 	add.w	r6, r9, r7
c0de5aae:	f001 fe55 	bl	c0de775c <pic>
c0de5ab2:	6800      	ldr	r0, [r0, #0]
c0de5ab4:	f001 fe52 	bl	c0de775c <pic>
c0de5ab8:	f896 102c 	ldrb.w	r1, [r6, #44]	@ 0x2c
c0de5abc:	4605      	mov	r5, r0
c0de5abe:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de5ac0:	2910      	cmp	r1, #16
c0de5ac2:	d100      	bne.n	c0de5ac6 <getContentPage+0x76>
c0de5ac4:	b918      	cbnz	r0, c0de5ace <getContentPage+0x7e>
c0de5ac6:	290f      	cmp	r1, #15
c0de5ac8:	d155      	bne.n	c0de5b76 <getContentPage+0x126>
c0de5aca:	2800      	cmp	r0, #0
c0de5acc:	d053      	beq.n	c0de5b76 <getContentPage+0x126>
c0de5ace:	f001 fe45 	bl	c0de775c <pic>
c0de5ad2:	6060      	str	r0, [r4, #4]
c0de5ad4:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5ad8:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5adc:	f001 fe3e 	bl	c0de775c <pic>
c0de5ae0:	e046      	b.n	c0de5b70 <getContentPage+0x120>
c0de5ae2:	68a8      	ldr	r0, [r5, #8]
c0de5ae4:	4e29      	ldr	r6, [pc, #164]	@ (c0de5b8c <getContentPage+0x13c>)
c0de5ae6:	447e      	add	r6, pc
c0de5ae8:	47b0      	blx	r6
c0de5aea:	60e0      	str	r0, [r4, #12]
c0de5aec:	6868      	ldr	r0, [r5, #4]
c0de5aee:	47b0      	blx	r6
c0de5af0:	6060      	str	r0, [r4, #4]
c0de5af2:	68e8      	ldr	r0, [r5, #12]
c0de5af4:	47b0      	blx	r6
c0de5af6:	e03b      	b.n	c0de5b70 <getContentPage+0x120>
c0de5af8:	f104 0015 	add.w	r0, r4, #21
c0de5afc:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5b00:	f104 020c 	add.w	r2, r4, #12
c0de5b04:	f104 0310 	add.w	r3, r4, #16
c0de5b08:	e9cd 3200 	strd	r3, r2, [sp]
c0de5b0c:	9002      	str	r0, [sp, #8]
c0de5b0e:	1d28      	adds	r0, r5, #4
c0de5b10:	1d22      	adds	r2, r4, #4
c0de5b12:	f104 0308 	add.w	r3, r4, #8
c0de5b16:	f000 f8b9 	bl	c0de5c8c <getPairData>
c0de5b1a:	e02a      	b.n	c0de5b72 <getContentPage+0x122>
c0de5b1c:	2001      	movs	r0, #1
c0de5b1e:	444f      	add	r7, r9
c0de5b20:	7020      	strb	r0, [r4, #0]
c0de5b22:	6868      	ldr	r0, [r5, #4]
c0de5b24:	f001 fe1a 	bl	c0de775c <pic>
c0de5b28:	4919      	ldr	r1, [pc, #100]	@ (c0de5b90 <getContentPage+0x140>)
c0de5b2a:	4479      	add	r1, pc
c0de5b2c:	63b9      	str	r1, [r7, #56]	@ 0x38
c0de5b2e:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5b32:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5b36:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de5b3a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5b3e:	6062      	str	r2, [r4, #4]
c0de5b40:	6841      	ldr	r1, [r0, #4]
c0de5b42:	60a1      	str	r1, [r4, #8]
c0de5b44:	7a00      	ldrb	r0, [r0, #8]
c0de5b46:	1e41      	subs	r1, r0, #1
c0de5b48:	bf18      	it	ne
c0de5b4a:	2101      	movne	r1, #1
c0de5b4c:	2e00      	cmp	r6, #0
c0de5b4e:	bf08      	it	eq
c0de5b50:	4601      	moveq	r1, r0
c0de5b52:	7521      	strb	r1, [r4, #20]
c0de5b54:	e00d      	b.n	c0de5b72 <getContentPage+0x122>
c0de5b56:	6868      	ldr	r0, [r5, #4]
c0de5b58:	f001 fe00 	bl	c0de775c <pic>
c0de5b5c:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de5b60:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5b64:	6060      	str	r0, [r4, #4]
c0de5b66:	68a8      	ldr	r0, [r5, #8]
c0de5b68:	f001 fdf8 	bl	c0de775c <pic>
c0de5b6c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5b70:	60a0      	str	r0, [r4, #8]
c0de5b72:	b013      	add	sp, #76	@ 0x4c
c0de5b74:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5b76:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5b7a:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5b7e:	f001 fded 	bl	c0de775c <pic>
c0de5b82:	6060      	str	r0, [r4, #4]
c0de5b84:	e7f5      	b.n	c0de5b72 <getContentPage+0x122>
c0de5b86:	bf00      	nop
c0de5b88:	000007f0 	.word	0x000007f0
c0de5b8c:	00001c73 	.word	0x00001c73
c0de5b90:	000001a7 	.word	0x000001a7

c0de5b94 <drawSwitchStep>:
c0de5b94:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5b96:	b085      	sub	sp, #20
c0de5b98:	4c11      	ldr	r4, [pc, #68]	@ (c0de5be0 <drawSwitchStep+0x4c>)
c0de5b9a:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de5b9e:	2600      	movs	r6, #0
c0de5ba0:	eb09 0504 	add.w	r5, r9, r4
c0de5ba4:	f895 7034 	ldrb.w	r7, [r5, #52]	@ 0x34
c0de5ba8:	2500      	movs	r5, #0
c0de5baa:	2f02      	cmp	r7, #2
c0de5bac:	d30a      	bcc.n	c0de5bc4 <drawSwitchStep+0x30>
c0de5bae:	444c      	add	r4, r9
c0de5bb0:	f994 4035 	ldrsb.w	r4, [r4, #53]	@ 0x35
c0de5bb4:	b12c      	cbz	r4, c0de5bc2 <drawSwitchStep+0x2e>
c0de5bb6:	3f01      	subs	r7, #1
c0de5bb8:	2603      	movs	r6, #3
c0de5bba:	42a7      	cmp	r7, r4
c0de5bbc:	bf08      	it	eq
c0de5bbe:	2602      	moveq	r6, #2
c0de5bc0:	e000      	b.n	c0de5bc4 <drawSwitchStep+0x30>
c0de5bc2:	2601      	movs	r6, #1
c0de5bc4:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5bc8:	f88d 3010 	strb.w	r3, [sp, #16]
c0de5bcc:	9500      	str	r5, [sp, #0]
c0de5bce:	4330      	orrs	r0, r6
c0de5bd0:	ab02      	add	r3, sp, #8
c0de5bd2:	4661      	mov	r1, ip
c0de5bd4:	2200      	movs	r2, #0
c0de5bd6:	f7ff f81f 	bl	c0de4c18 <nbgl_stepDrawSwitch>
c0de5bda:	b005      	add	sp, #20
c0de5bdc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5bde:	bf00      	nop
c0de5be0:	000007f0 	.word	0x000007f0

c0de5be4 <contentCallback>:
c0de5be4:	b5e0      	push	{r5, r6, r7, lr}
c0de5be6:	4608      	mov	r0, r1
c0de5be8:	f10d 0107 	add.w	r1, sp, #7
c0de5bec:	f000 f928 	bl	c0de5e40 <buttonGenericCallback>
c0de5bf0:	b130      	cbz	r0, c0de5c00 <contentCallback+0x1c>
c0de5bf2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5bf6:	2100      	movs	r1, #0
c0de5bf8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5bfc:	f7ff bed2 	b.w	c0de59a4 <displayContent>
c0de5c00:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5c04 <getContentElemAtIdx>:
c0de5c04:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5c08:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5c84 <getContentElemAtIdx+0x80>)
c0de5c0a:	4606      	mov	r6, r0
c0de5c0c:	2700      	movs	r7, #0
c0de5c0e:	eb09 0004 	add.w	r0, r9, r4
c0de5c12:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
c0de5c16:	2b10      	cmp	r3, #16
c0de5c18:	d830      	bhi.n	c0de5c7c <getContentElemAtIdx+0x78>
c0de5c1a:	4693      	mov	fp, r2
c0de5c1c:	2201      	movs	r2, #1
c0de5c1e:	9101      	str	r1, [sp, #4]
c0de5c20:	fa02 f303 	lsl.w	r3, r2, r3
c0de5c24:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5c28:	d004      	beq.n	c0de5c34 <getContentElemAtIdx+0x30>
c0de5c2a:	eb09 0004 	add.w	r0, r9, r4
c0de5c2e:	46a2      	mov	sl, r4
c0de5c30:	6c84      	ldr	r4, [r0, #72]	@ 0x48
c0de5c32:	e005      	b.n	c0de5c40 <getContentElemAtIdx+0x3c>
c0de5c34:	4a14      	ldr	r2, [pc, #80]	@ (c0de5c88 <getContentElemAtIdx+0x84>)
c0de5c36:	4213      	tst	r3, r2
c0de5c38:	d020      	beq.n	c0de5c7c <getContentElemAtIdx+0x78>
c0de5c3a:	46a2      	mov	sl, r4
c0de5c3c:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0de5c40:	2700      	movs	r7, #0
c0de5c42:	2000      	movs	r0, #0
c0de5c44:	f04f 0800 	mov.w	r8, #0
c0de5c48:	4605      	mov	r5, r0
c0de5c4a:	7a20      	ldrb	r0, [r4, #8]
c0de5c4c:	4580      	cmp	r8, r0
c0de5c4e:	d215      	bcs.n	c0de5c7c <getContentElemAtIdx+0x78>
c0de5c50:	fa4f f188 	sxtb.w	r1, r8
c0de5c54:	4620      	mov	r0, r4
c0de5c56:	465a      	mov	r2, fp
c0de5c58:	f7ff fe30 	bl	c0de58bc <getContentAtIdx>
c0de5c5c:	4607      	mov	r7, r0
c0de5c5e:	f7ff fe87 	bl	c0de5970 <getContentNbElement>
c0de5c62:	b2e9      	uxtb	r1, r5
c0de5c64:	f108 0801 	add.w	r8, r8, #1
c0de5c68:	4408      	add	r0, r1
c0de5c6a:	42b0      	cmp	r0, r6
c0de5c6c:	d9ec      	bls.n	c0de5c48 <getContentElemAtIdx+0x44>
c0de5c6e:	eb09 000a 	add.w	r0, r9, sl
c0de5c72:	9901      	ldr	r1, [sp, #4]
c0de5c74:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5c78:	1b40      	subs	r0, r0, r5
c0de5c7a:	7008      	strb	r0, [r1, #0]
c0de5c7c:	4638      	mov	r0, r7
c0de5c7e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5c82:	bf00      	nop
c0de5c84:	000007f0 	.word	0x000007f0
c0de5c88:	00010008 	.word	0x00010008

c0de5c8c <getPairData>:
c0de5c8c:	b5b0      	push	{r4, r5, r7, lr}
c0de5c8e:	4615      	mov	r5, r2
c0de5c90:	6802      	ldr	r2, [r0, #0]
c0de5c92:	461c      	mov	r4, r3
c0de5c94:	b112      	cbz	r2, c0de5c9c <getPairData+0x10>
c0de5c96:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5c9a:	e002      	b.n	c0de5ca2 <getPairData+0x16>
c0de5c9c:	6842      	ldr	r2, [r0, #4]
c0de5c9e:	4608      	mov	r0, r1
c0de5ca0:	4790      	blx	r2
c0de5ca2:	f001 fd5b 	bl	c0de775c <pic>
c0de5ca6:	6802      	ldr	r2, [r0, #0]
c0de5ca8:	9904      	ldr	r1, [sp, #16]
c0de5caa:	602a      	str	r2, [r5, #0]
c0de5cac:	6842      	ldr	r2, [r0, #4]
c0de5cae:	6022      	str	r2, [r4, #0]
c0de5cb0:	7b02      	ldrb	r2, [r0, #12]
c0de5cb2:	0753      	lsls	r3, r2, #29
c0de5cb4:	d403      	bmi.n	c0de5cbe <getPairData+0x32>
c0de5cb6:	0792      	lsls	r2, r2, #30
c0de5cb8:	d404      	bmi.n	c0de5cc4 <getPairData+0x38>
c0de5cba:	2000      	movs	r0, #0
c0de5cbc:	e000      	b.n	c0de5cc0 <getPairData+0x34>
c0de5cbe:	6880      	ldr	r0, [r0, #8]
c0de5cc0:	6008      	str	r0, [r1, #0]
c0de5cc2:	bdb0      	pop	{r4, r5, r7, pc}
c0de5cc4:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5cc8:	2301      	movs	r3, #1
c0de5cca:	700b      	strb	r3, [r1, #0]
c0de5ccc:	6880      	ldr	r0, [r0, #8]
c0de5cce:	6010      	str	r0, [r2, #0]
c0de5cd0:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5cd4 <onSwitchAction>:
c0de5cd4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5cd6:	b08f      	sub	sp, #60	@ 0x3c
c0de5cd8:	ac01      	add	r4, sp, #4
c0de5cda:	2138      	movs	r1, #56	@ 0x38
c0de5cdc:	4620      	mov	r0, r4
c0de5cde:	f002 f849 	bl	c0de7d74 <__aeabi_memclr>
c0de5ce2:	4e26      	ldr	r6, [pc, #152]	@ (c0de5d7c <onSwitchAction+0xa8>)
c0de5ce4:	f10d 0103 	add.w	r1, sp, #3
c0de5ce8:	4622      	mov	r2, r4
c0de5cea:	eb09 0006 	add.w	r0, r9, r6
c0de5cee:	f000 fdd6 	bl	c0de689e <OUTLINED_FUNCTION_4>
c0de5cf2:	2800      	cmp	r0, #0
c0de5cf4:	d040      	beq.n	c0de5d78 <onSwitchAction+0xa4>
c0de5cf6:	4604      	mov	r4, r0
c0de5cf8:	7800      	ldrb	r0, [r0, #0]
c0de5cfa:	2807      	cmp	r0, #7
c0de5cfc:	d13c      	bne.n	c0de5d78 <onSwitchAction+0xa4>
c0de5cfe:	6860      	ldr	r0, [r4, #4]
c0de5d00:	eb09 0706 	add.w	r7, r9, r6
c0de5d04:	f001 fd2a 	bl	c0de775c <pic>
c0de5d08:	4605      	mov	r5, r0
c0de5d0a:	f897 002c 	ldrb.w	r0, [r7, #44]	@ 0x2c
c0de5d0e:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5d12:	2810      	cmp	r0, #16
c0de5d14:	d811      	bhi.n	c0de5d3a <onSwitchAction+0x66>
c0de5d16:	2101      	movs	r1, #1
c0de5d18:	fa01 f000 	lsl.w	r0, r1, r0
c0de5d1c:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5d20:	d004      	beq.n	c0de5d2c <onSwitchAction+0x58>
c0de5d22:	2000      	movs	r0, #0
c0de5d24:	2101      	movs	r1, #1
c0de5d26:	f000 f82d 	bl	c0de5d84 <displaySettingsPage>
c0de5d2a:	e006      	b.n	c0de5d3a <onSwitchAction+0x66>
c0de5d2c:	4914      	ldr	r1, [pc, #80]	@ (c0de5d80 <onSwitchAction+0xac>)
c0de5d2e:	4208      	tst	r0, r1
c0de5d30:	d003      	beq.n	c0de5d3a <onSwitchAction+0x66>
c0de5d32:	2000      	movs	r0, #0
c0de5d34:	2101      	movs	r1, #1
c0de5d36:	f7ff fe35 	bl	c0de59a4 <displayContent>
c0de5d3a:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de5d3c:	b188      	cbz	r0, c0de5d62 <onSwitchAction+0x8e>
c0de5d3e:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5d42:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5d46:	f001 fd09 	bl	c0de775c <pic>
c0de5d4a:	7a21      	ldrb	r1, [r4, #8]
c0de5d4c:	eb09 0206 	add.w	r2, r9, r6
c0de5d50:	4603      	mov	r3, r0
c0de5d52:	7a60      	ldrb	r0, [r4, #9]
c0de5d54:	3901      	subs	r1, #1
c0de5d56:	bf18      	it	ne
c0de5d58:	2101      	movne	r1, #1
c0de5d5a:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5d5e:	4798      	blx	r3
c0de5d60:	e00a      	b.n	c0de5d78 <onSwitchAction+0xa4>
c0de5d62:	eb09 0006 	add.w	r0, r9, r6
c0de5d66:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5d68:	b132      	cbz	r2, c0de5d78 <onSwitchAction+0xa4>
c0de5d6a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de5d6e:	2100      	movs	r1, #0
c0de5d70:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5d74:	7a40      	ldrb	r0, [r0, #9]
c0de5d76:	4790      	blx	r2
c0de5d78:	b00f      	add	sp, #60	@ 0x3c
c0de5d7a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5d7c:	000007f0 	.word	0x000007f0
c0de5d80:	00010008 	.word	0x00010008

c0de5d84 <displaySettingsPage>:
c0de5d84:	b5b0      	push	{r4, r5, r7, lr}
c0de5d86:	b08a      	sub	sp, #40	@ 0x28
c0de5d88:	460d      	mov	r5, r1
c0de5d8a:	4604      	mov	r4, r0
c0de5d8c:	a804      	add	r0, sp, #16
c0de5d8e:	2118      	movs	r1, #24
c0de5d90:	f001 fff0 	bl	c0de7d74 <__aeabi_memclr>
c0de5d94:	481c      	ldr	r0, [pc, #112]	@ (c0de5e08 <displaySettingsPage+0x84>)
c0de5d96:	f000 fd67 	bl	c0de6868 <OUTLINED_FUNCTION_1>
c0de5d9a:	dd14      	ble.n	c0de5dc6 <displaySettingsPage+0x42>
c0de5d9c:	a904      	add	r1, sp, #16
c0de5d9e:	4628      	mov	r0, r5
c0de5da0:	f7ff fe56 	bl	c0de5a50 <getContentPage>
c0de5da4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5da8:	b1e8      	cbz	r0, c0de5de6 <displaySettingsPage+0x62>
c0de5daa:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5dae:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5db2:	481a      	ldr	r0, [pc, #104]	@ (c0de5e1c <displaySettingsPage+0x98>)
c0de5db4:	4478      	add	r0, pc
c0de5db6:	2b00      	cmp	r3, #0
c0de5db8:	9000      	str	r0, [sp, #0]
c0de5dba:	4620      	mov	r0, r4
c0de5dbc:	bf18      	it	ne
c0de5dbe:	2301      	movne	r3, #1
c0de5dc0:	f7ff fee8 	bl	c0de5b94 <drawSwitchStep>
c0de5dc4:	e01b      	b.n	c0de5dfe <displaySettingsPage+0x7a>
c0de5dc6:	4448      	add	r0, r9
c0de5dc8:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5dcc:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5dce:	4b0f      	ldr	r3, [pc, #60]	@ (c0de5e0c <displaySettingsPage+0x88>)
c0de5dd0:	447b      	add	r3, pc
c0de5dd2:	290f      	cmp	r1, #15
c0de5dd4:	bf08      	it	eq
c0de5dd6:	4613      	moveq	r3, r2
c0de5dd8:	6383      	str	r3, [r0, #56]	@ 0x38
c0de5dda:	480d      	ldr	r0, [pc, #52]	@ (c0de5e10 <displaySettingsPage+0x8c>)
c0de5ddc:	4478      	add	r0, pc
c0de5dde:	9005      	str	r0, [sp, #20]
c0de5de0:	480c      	ldr	r0, [pc, #48]	@ (c0de5e14 <displaySettingsPage+0x90>)
c0de5de2:	4478      	add	r0, pc
c0de5de4:	9007      	str	r0, [sp, #28]
c0de5de6:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5dea:	9907      	ldr	r1, [sp, #28]
c0de5dec:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5e18 <displaySettingsPage+0x94>)
c0de5dee:	2000      	movs	r0, #0
c0de5df0:	9002      	str	r0, [sp, #8]
c0de5df2:	447d      	add	r5, pc
c0de5df4:	e9cd 5000 	strd	r5, r0, [sp]
c0de5df8:	4620      	mov	r0, r4
c0de5dfa:	f7ff faa9 	bl	c0de5350 <drawStep>
c0de5dfe:	f001 fa9e 	bl	c0de733e <nbgl_refresh>
c0de5e02:	b00a      	add	sp, #40	@ 0x28
c0de5e04:	bdb0      	pop	{r4, r5, r7, pc}
c0de5e06:	bf00      	nop
c0de5e08:	000007f0 	.word	0x000007f0
c0de5e0c:	fffff10d 	.word	0xfffff10d
c0de5e10:	000024d9 	.word	0x000024d9
c0de5e14:	0000214e 	.word	0x0000214e
c0de5e18:	0000002b 	.word	0x0000002b
c0de5e1c:	00000069 	.word	0x00000069

c0de5e20 <settingsCallback>:
c0de5e20:	b5e0      	push	{r5, r6, r7, lr}
c0de5e22:	4608      	mov	r0, r1
c0de5e24:	f10d 0107 	add.w	r1, sp, #7
c0de5e28:	f000 f80a 	bl	c0de5e40 <buttonGenericCallback>
c0de5e2c:	b130      	cbz	r0, c0de5e3c <settingsCallback+0x1c>
c0de5e2e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5e32:	2100      	movs	r1, #0
c0de5e34:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5e38:	f7ff bfa4 	b.w	c0de5d84 <displaySettingsPage>
c0de5e3c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5e40 <buttonGenericCallback>:
c0de5e40:	b5b0      	push	{r4, r5, r7, lr}
c0de5e42:	b090      	sub	sp, #64	@ 0x40
c0de5e44:	460c      	mov	r4, r1
c0de5e46:	4605      	mov	r5, r0
c0de5e48:	a801      	add	r0, sp, #4
c0de5e4a:	2138      	movs	r1, #56	@ 0x38
c0de5e4c:	f001 ff92 	bl	c0de7d74 <__aeabi_memclr>
c0de5e50:	2d04      	cmp	r5, #4
c0de5e52:	d00d      	beq.n	c0de5e70 <buttonGenericCallback+0x30>
c0de5e54:	2d01      	cmp	r5, #1
c0de5e56:	d012      	beq.n	c0de5e7e <buttonGenericCallback+0x3e>
c0de5e58:	2d00      	cmp	r5, #0
c0de5e5a:	d17c      	bne.n	c0de5f56 <buttonGenericCallback+0x116>
c0de5e5c:	483f      	ldr	r0, [pc, #252]	@ (c0de5f5c <buttonGenericCallback+0x11c>)
c0de5e5e:	eb09 0100 	add.w	r1, r9, r0
c0de5e62:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5e66:	2901      	cmp	r1, #1
c0de5e68:	db1d      	blt.n	c0de5ea6 <buttonGenericCallback+0x66>
c0de5e6a:	3901      	subs	r1, #1
c0de5e6c:	2008      	movs	r0, #8
c0de5e6e:	e013      	b.n	c0de5e98 <buttonGenericCallback+0x58>
c0de5e70:	4c3a      	ldr	r4, [pc, #232]	@ (c0de5f5c <buttonGenericCallback+0x11c>)
c0de5e72:	eb09 0004 	add.w	r0, r9, r4
c0de5e76:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de5e78:	b338      	cbz	r0, c0de5eca <buttonGenericCallback+0x8a>
c0de5e7a:	4780      	blx	r0
c0de5e7c:	e06b      	b.n	c0de5f56 <buttonGenericCallback+0x116>
c0de5e7e:	4837      	ldr	r0, [pc, #220]	@ (c0de5f5c <buttonGenericCallback+0x11c>)
c0de5e80:	eb09 0100 	add.w	r1, r9, r0
c0de5e84:	f991 0035 	ldrsb.w	r0, [r1, #53]	@ 0x35
c0de5e88:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de5e8c:	3901      	subs	r1, #1
c0de5e8e:	4281      	cmp	r1, r0
c0de5e90:	dd61      	ble.n	c0de5f56 <buttonGenericCallback+0x116>
c0de5e92:	b2c0      	uxtb	r0, r0
c0de5e94:	1c41      	adds	r1, r0, #1
c0de5e96:	2000      	movs	r0, #0
c0de5e98:	4a30      	ldr	r2, [pc, #192]	@ (c0de5f5c <buttonGenericCallback+0x11c>)
c0de5e9a:	444a      	add	r2, r9
c0de5e9c:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5ea0:	7020      	strb	r0, [r4, #0]
c0de5ea2:	2001      	movs	r0, #1
c0de5ea4:	e058      	b.n	c0de5f58 <buttonGenericCallback+0x118>
c0de5ea6:	eb09 0100 	add.w	r1, r9, r0
c0de5eaa:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de5eae:	2906      	cmp	r1, #6
c0de5eb0:	d151      	bne.n	c0de5f56 <buttonGenericCallback+0x116>
c0de5eb2:	eb09 0100 	add.w	r1, r9, r0
c0de5eb6:	6d89      	ldr	r1, [r1, #88]	@ 0x58
c0de5eb8:	2900      	cmp	r1, #0
c0de5eba:	d04c      	beq.n	c0de5f56 <buttonGenericCallback+0x116>
c0de5ebc:	4448      	add	r0, r9
c0de5ebe:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5ec2:	2801      	cmp	r0, #1
c0de5ec4:	d047      	beq.n	c0de5f56 <buttonGenericCallback+0x116>
c0de5ec6:	2008      	movs	r0, #8
c0de5ec8:	e7ea      	b.n	c0de5ea0 <buttonGenericCallback+0x60>
c0de5eca:	eb09 0004 	add.w	r0, r9, r4
c0de5ece:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5ed2:	2000      	movs	r0, #0
c0de5ed4:	2910      	cmp	r1, #16
c0de5ed6:	d83f      	bhi.n	c0de5f58 <buttonGenericCallback+0x118>
c0de5ed8:	2201      	movs	r2, #1
c0de5eda:	fa02 f101 	lsl.w	r1, r2, r1
c0de5ede:	4a20      	ldr	r2, [pc, #128]	@ (c0de5f60 <buttonGenericCallback+0x120>)
c0de5ee0:	4211      	tst	r1, r2
c0de5ee2:	d039      	beq.n	c0de5f58 <buttonGenericCallback+0x118>
c0de5ee4:	eb09 0004 	add.w	r0, r9, r4
c0de5ee8:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de5eec:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5ef0:	aa01      	add	r2, sp, #4
c0de5ef2:	f7ff fe87 	bl	c0de5c04 <getContentElemAtIdx>
c0de5ef6:	b370      	cbz	r0, c0de5f56 <buttonGenericCallback+0x116>
c0de5ef8:	7801      	ldrb	r1, [r0, #0]
c0de5efa:	4602      	mov	r2, r0
c0de5efc:	2000      	movs	r0, #0
c0de5efe:	b359      	cbz	r1, c0de5f58 <buttonGenericCallback+0x118>
c0de5f00:	290a      	cmp	r1, #10
c0de5f02:	d009      	beq.n	c0de5f18 <buttonGenericCallback+0xd8>
c0de5f04:	2907      	cmp	r1, #7
c0de5f06:	d00f      	beq.n	c0de5f28 <buttonGenericCallback+0xe8>
c0de5f08:	2909      	cmp	r1, #9
c0de5f0a:	d011      	beq.n	c0de5f30 <buttonGenericCallback+0xf0>
c0de5f0c:	2903      	cmp	r1, #3
c0de5f0e:	f04f 0100 	mov.w	r1, #0
c0de5f12:	d112      	bne.n	c0de5f3a <buttonGenericCallback+0xfa>
c0de5f14:	7c10      	ldrb	r0, [r2, #16]
c0de5f16:	e005      	b.n	c0de5f24 <buttonGenericCallback+0xe4>
c0de5f18:	eb09 0004 	add.w	r0, r9, r4
c0de5f1c:	6891      	ldr	r1, [r2, #8]
c0de5f1e:	f990 0035 	ldrsb.w	r0, [r0, #53]	@ 0x35
c0de5f22:	5c08      	ldrb	r0, [r1, r0]
c0de5f24:	2100      	movs	r1, #0
c0de5f26:	e008      	b.n	c0de5f3a <buttonGenericCallback+0xfa>
c0de5f28:	6850      	ldr	r0, [r2, #4]
c0de5f2a:	2100      	movs	r1, #0
c0de5f2c:	7a40      	ldrb	r0, [r0, #9]
c0de5f2e:	e004      	b.n	c0de5f3a <buttonGenericCallback+0xfa>
c0de5f30:	eb09 0004 	add.w	r0, r9, r4
c0de5f34:	f890 1035 	ldrb.w	r1, [r0, #53]	@ 0x35
c0de5f38:	7ad0      	ldrb	r0, [r2, #11]
c0de5f3a:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de5f3c:	b133      	cbz	r3, c0de5f4c <buttonGenericCallback+0x10c>
c0de5f3e:	eb09 0104 	add.w	r1, r9, r4
c0de5f42:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de5f46:	2100      	movs	r1, #0
c0de5f48:	4798      	blx	r3
c0de5f4a:	e004      	b.n	c0de5f56 <buttonGenericCallback+0x116>
c0de5f4c:	eb09 0204 	add.w	r2, r9, r4
c0de5f50:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de5f52:	b102      	cbz	r2, c0de5f56 <buttonGenericCallback+0x116>
c0de5f54:	4790      	blx	r2
c0de5f56:	2000      	movs	r0, #0
c0de5f58:	b010      	add	sp, #64	@ 0x40
c0de5f5a:	bdb0      	pop	{r4, r5, r7, pc}
c0de5f5c:	000007f0 	.word	0x000007f0
c0de5f60:	0001c008 	.word	0x0001c008

c0de5f64 <displayHomePage>:
c0de5f64:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5f68:	4680      	mov	r8, r0
c0de5f6a:	4832      	ldr	r0, [pc, #200]	@ (c0de6034 <displayHomePage+0xd0>)
c0de5f6c:	2200      	movs	r2, #0
c0de5f6e:	eb09 0100 	add.w	r1, r9, r0
c0de5f72:	6c8f      	ldr	r7, [r1, #72]	@ 0x48
c0de5f74:	6d0d      	ldr	r5, [r1, #80]	@ 0x50
c0de5f76:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5f78:	2202      	movs	r2, #2
c0de5f7a:	2d00      	cmp	r5, #0
c0de5f7c:	463e      	mov	r6, r7
c0de5f7e:	bf08      	it	eq
c0de5f80:	2201      	moveq	r2, #1
c0de5f82:	2f00      	cmp	r7, #0
c0de5f84:	bf18      	it	ne
c0de5f86:	2601      	movne	r6, #1
c0de5f88:	f991 3035 	ldrsb.w	r3, [r1, #53]	@ 0x35
c0de5f8c:	b183      	cbz	r3, c0de5fb0 <displayHomePage+0x4c>
c0de5f8e:	2401      	movs	r4, #1
c0de5f90:	2d00      	cmp	r5, #0
c0de5f92:	bf08      	it	eq
c0de5f94:	24ff      	moveq	r4, #255	@ 0xff
c0de5f96:	429c      	cmp	r4, r3
c0de5f98:	d111      	bne.n	c0de5fbe <displayHomePage+0x5a>
c0de5f9a:	eb09 0400 	add.w	r4, r9, r0
c0de5f9e:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de5fa2:	f001 fbdb 	bl	c0de775c <pic>
c0de5fa6:	4602      	mov	r2, r0
c0de5fa8:	6d20      	ldr	r0, [r4, #80]	@ 0x50
c0de5faa:	6880      	ldr	r0, [r0, #8]
c0de5fac:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de5fae:	e004      	b.n	c0de5fba <displayHomePage+0x56>
c0de5fb0:	eb09 0100 	add.w	r1, r9, r0
c0de5fb4:	e9d1 5210 	ldrd	r5, r2, [r1, #64]	@ 0x40
c0de5fb8:	b312      	cbz	r2, c0de6000 <displayHomePage+0x9c>
c0de5fba:	2300      	movs	r3, #0
c0de5fbc:	e02c      	b.n	c0de6018 <displayHomePage+0xb4>
c0de5fbe:	2f00      	cmp	r7, #0
c0de5fc0:	4614      	mov	r4, r2
c0de5fc2:	bf08      	it	eq
c0de5fc4:	24ff      	moveq	r4, #255	@ 0xff
c0de5fc6:	429c      	cmp	r4, r3
c0de5fc8:	d109      	bne.n	c0de5fde <displayHomePage+0x7a>
c0de5fca:	491c      	ldr	r1, [pc, #112]	@ (c0de603c <displayHomePage+0xd8>)
c0de5fcc:	4448      	add	r0, r9
c0de5fce:	2300      	movs	r3, #0
c0de5fd0:	4479      	add	r1, pc
c0de5fd2:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5fd4:	4d1a      	ldr	r5, [pc, #104]	@ (c0de6040 <displayHomePage+0xdc>)
c0de5fd6:	4a1b      	ldr	r2, [pc, #108]	@ (c0de6044 <displayHomePage+0xe0>)
c0de5fd8:	447d      	add	r5, pc
c0de5fda:	447a      	add	r2, pc
c0de5fdc:	e01c      	b.n	c0de6018 <displayHomePage+0xb4>
c0de5fde:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5fe0:	4432      	add	r2, r6
c0de5fe2:	4448      	add	r0, r9
c0de5fe4:	2900      	cmp	r1, #0
c0de5fe6:	bf08      	it	eq
c0de5fe8:	22ff      	moveq	r2, #255	@ 0xff
c0de5fea:	429a      	cmp	r2, r3
c0de5fec:	d10d      	bne.n	c0de600a <displayHomePage+0xa6>
c0de5fee:	4916      	ldr	r1, [pc, #88]	@ (c0de6048 <displayHomePage+0xe4>)
c0de5ff0:	2300      	movs	r3, #0
c0de5ff2:	4479      	add	r1, pc
c0de5ff4:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5ff6:	4d15      	ldr	r5, [pc, #84]	@ (c0de604c <displayHomePage+0xe8>)
c0de5ff8:	4a15      	ldr	r2, [pc, #84]	@ (c0de6050 <displayHomePage+0xec>)
c0de5ffa:	447d      	add	r5, pc
c0de5ffc:	447a      	add	r2, pc
c0de5ffe:	e00b      	b.n	c0de6018 <displayHomePage+0xb4>
c0de6000:	4448      	add	r0, r9
c0de6002:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
c0de6004:	4b0c      	ldr	r3, [pc, #48]	@ (c0de6038 <displayHomePage+0xd4>)
c0de6006:	447b      	add	r3, pc
c0de6008:	e006      	b.n	c0de6018 <displayHomePage+0xb4>
c0de600a:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de600c:	2300      	movs	r3, #0
c0de600e:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6010:	4d10      	ldr	r5, [pc, #64]	@ (c0de6054 <displayHomePage+0xf0>)
c0de6012:	4a11      	ldr	r2, [pc, #68]	@ (c0de6058 <displayHomePage+0xf4>)
c0de6014:	447d      	add	r5, pc
c0de6016:	447a      	add	r2, pc
c0de6018:	4910      	ldr	r1, [pc, #64]	@ (c0de605c <displayHomePage+0xf8>)
c0de601a:	2000      	movs	r0, #0
c0de601c:	9002      	str	r0, [sp, #8]
c0de601e:	4479      	add	r1, pc
c0de6020:	e9cd 1000 	strd	r1, r0, [sp]
c0de6024:	4640      	mov	r0, r8
c0de6026:	4629      	mov	r1, r5
c0de6028:	f7ff f992 	bl	c0de5350 <drawStep>
c0de602c:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de6030:	f001 b985 	b.w	c0de733e <nbgl_refresh>
c0de6034:	000007f0 	.word	0x000007f0
c0de6038:	00002374 	.word	0x00002374
c0de603c:	0000008d 	.word	0x0000008d
c0de6040:	00001f7b 	.word	0x00001f7b
c0de6044:	0000224f 	.word	0x0000224f
c0de6048:	00000073 	.word	0x00000073
c0de604c:	00001ec4 	.word	0x00001ec4
c0de6050:	00002300 	.word	0x00002300
c0de6054:	00001ecd 	.word	0x00001ecd
c0de6058:	00002371 	.word	0x00002371
c0de605c:	0000006b 	.word	0x0000006b

c0de6060 <startUseCaseSettings>:
c0de6060:	2000      	movs	r0, #0
c0de6062:	f7fe bf01 	b.w	c0de4e68 <startUseCaseSettingsAtPage>
	...

c0de6068 <startUseCaseInfo>:
c0de6068:	4807      	ldr	r0, [pc, #28]	@ (c0de6088 <startUseCaseInfo+0x20>)
c0de606a:	210d      	movs	r1, #13
c0de606c:	4448      	add	r0, r9
c0de606e:	f880 102c 	strb.w	r1, [r0, #44]	@ 0x2c
c0de6072:	2100      	movs	r1, #0
c0de6074:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6078:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de607a:	7b09      	ldrb	r1, [r1, #12]
c0de607c:	3101      	adds	r1, #1
c0de607e:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de6082:	2000      	movs	r0, #0
c0de6084:	f000 b810 	b.w	c0de60a8 <displayInfoPage>
c0de6088:	000007f0 	.word	0x000007f0

c0de608c <homeCallback>:
c0de608c:	b5e0      	push	{r5, r6, r7, lr}
c0de608e:	4608      	mov	r0, r1
c0de6090:	f10d 0107 	add.w	r1, sp, #7
c0de6094:	f7ff fed4 	bl	c0de5e40 <buttonGenericCallback>
c0de6098:	b128      	cbz	r0, c0de60a6 <homeCallback+0x1a>
c0de609a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de609e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de60a2:	f7ff bf5f 	b.w	c0de5f64 <displayHomePage>
c0de60a6:	bd8c      	pop	{r2, r3, r7, pc}

c0de60a8 <displayInfoPage>:
c0de60a8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de60aa:	4604      	mov	r4, r0
c0de60ac:	4816      	ldr	r0, [pc, #88]	@ (c0de6108 <displayInfoPage+0x60>)
c0de60ae:	f000 fbdb 	bl	c0de6868 <OUTLINED_FUNCTION_1>
c0de60b2:	dd11      	ble.n	c0de60d8 <displayInfoPage+0x30>
c0de60b4:	eb09 0700 	add.w	r7, r9, r0
c0de60b8:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de60ba:	6800      	ldr	r0, [r0, #0]
c0de60bc:	4e13      	ldr	r6, [pc, #76]	@ (c0de610c <displayInfoPage+0x64>)
c0de60be:	447e      	add	r6, pc
c0de60c0:	47b0      	blx	r6
c0de60c2:	f000 fc0a 	bl	c0de68da <OUTLINED_FUNCTION_10>
c0de60c6:	4605      	mov	r5, r0
c0de60c8:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de60ca:	6840      	ldr	r0, [r0, #4]
c0de60cc:	47b0      	blx	r6
c0de60ce:	f000 fc04 	bl	c0de68da <OUTLINED_FUNCTION_10>
c0de60d2:	4603      	mov	r3, r0
c0de60d4:	2100      	movs	r1, #0
c0de60d6:	e008      	b.n	c0de60ea <displayInfoPage+0x42>
c0de60d8:	490d      	ldr	r1, [pc, #52]	@ (c0de6110 <displayInfoPage+0x68>)
c0de60da:	4448      	add	r0, r9
c0de60dc:	2300      	movs	r3, #0
c0de60de:	4479      	add	r1, pc
c0de60e0:	6381      	str	r1, [r0, #56]	@ 0x38
c0de60e2:	490c      	ldr	r1, [pc, #48]	@ (c0de6114 <displayInfoPage+0x6c>)
c0de60e4:	4d0c      	ldr	r5, [pc, #48]	@ (c0de6118 <displayInfoPage+0x70>)
c0de60e6:	4479      	add	r1, pc
c0de60e8:	447d      	add	r5, pc
c0de60ea:	4e0c      	ldr	r6, [pc, #48]	@ (c0de611c <displayInfoPage+0x74>)
c0de60ec:	2002      	movs	r0, #2
c0de60ee:	2200      	movs	r2, #0
c0de60f0:	9002      	str	r0, [sp, #8]
c0de60f2:	4620      	mov	r0, r4
c0de60f4:	447e      	add	r6, pc
c0de60f6:	e9cd 6200 	strd	r6, r2, [sp]
c0de60fa:	462a      	mov	r2, r5
c0de60fc:	f7ff f928 	bl	c0de5350 <drawStep>
c0de6100:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de6104:	f001 b91b 	b.w	c0de733e <nbgl_refresh>
c0de6108:	000007f0 	.word	0x000007f0
c0de610c:	0000169b 	.word	0x0000169b
c0de6110:	ffffedff 	.word	0xffffedff
c0de6114:	00001e4a 	.word	0x00001e4a
c0de6118:	000021cd 	.word	0x000021cd
c0de611c:	00000029 	.word	0x00000029

c0de6120 <infoCallback>:
c0de6120:	b5e0      	push	{r5, r6, r7, lr}
c0de6122:	4608      	mov	r0, r1
c0de6124:	f10d 0107 	add.w	r1, sp, #7
c0de6128:	f7ff fe8a 	bl	c0de5e40 <buttonGenericCallback>
c0de612c:	b128      	cbz	r0, c0de613a <infoCallback+0x1a>
c0de612e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6132:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6136:	f7ff bfb7 	b.w	c0de60a8 <displayInfoPage>
c0de613a:	bd8c      	pop	{r2, r3, r7, pc}

c0de613c <displayWarningStep>:
c0de613c:	b510      	push	{r4, lr}
c0de613e:	b088      	sub	sp, #32
c0de6140:	2000      	movs	r0, #0
c0de6142:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de6146:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de614a:	4839      	ldr	r0, [pc, #228]	@ (c0de6230 <displayWarningStep+0xf4>)
c0de614c:	eb09 0200 	add.w	r2, r9, r0
c0de6150:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6154:	69d2      	ldr	r2, [r2, #28]
c0de6156:	6a93      	ldr	r3, [r2, #40]	@ 0x28
c0de6158:	b183      	cbz	r3, c0de617c <displayWarningStep+0x40>
c0de615a:	b979      	cbnz	r1, c0de617c <displayWarningStep+0x40>
c0de615c:	2000      	movs	r0, #0
c0de615e:	685b      	ldr	r3, [r3, #4]
c0de6160:	2200      	movs	r2, #0
c0de6162:	e9cd 0000 	strd	r0, r0, [sp]
c0de6166:	9002      	str	r0, [sp, #8]
c0de6168:	2001      	movs	r0, #1
c0de616a:	4936      	ldr	r1, [pc, #216]	@ (c0de6244 <displayWarningStep+0x108>)
c0de616c:	4479      	add	r1, pc
c0de616e:	f7fe fb25 	bl	c0de47bc <nbgl_stepDrawText>
c0de6172:	b008      	add	sp, #32
c0de6174:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6178:	f001 b8e1 	b.w	c0de733e <nbgl_refresh>
c0de617c:	6813      	ldr	r3, [r2, #0]
c0de617e:	06dc      	lsls	r4, r3, #27
c0de6180:	d411      	bmi.n	c0de61a6 <displayWarningStep+0x6a>
c0de6182:	2b00      	cmp	r3, #0
c0de6184:	d151      	bne.n	c0de622a <displayWarningStep+0xee>
c0de6186:	69d3      	ldr	r3, [r2, #28]
c0de6188:	2b00      	cmp	r3, #0
c0de618a:	d04e      	beq.n	c0de622a <displayWarningStep+0xee>
c0de618c:	eb09 0400 	add.w	r4, r9, r0
c0de6190:	f894 4028 	ldrb.w	r4, [r4, #40]	@ 0x28
c0de6194:	42a1      	cmp	r1, r4
c0de6196:	d128      	bne.n	c0de61ea <displayWarningStep+0xae>
c0de6198:	6858      	ldr	r0, [r3, #4]
c0de619a:	691a      	ldr	r2, [r3, #16]
c0de619c:	699b      	ldr	r3, [r3, #24]
c0de619e:	9006      	str	r0, [sp, #24]
c0de61a0:	e9cd 2304 	strd	r2, r3, [sp, #16]
c0de61a4:	e00e      	b.n	c0de61c4 <displayWarningStep+0x88>
c0de61a6:	eb09 0200 	add.w	r2, r9, r0
c0de61aa:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de61ae:	4291      	cmp	r1, r2
c0de61b0:	d10d      	bne.n	c0de61ce <displayWarningStep+0x92>
c0de61b2:	4820      	ldr	r0, [pc, #128]	@ (c0de6234 <displayWarningStep+0xf8>)
c0de61b4:	4478      	add	r0, pc
c0de61b6:	9005      	str	r0, [sp, #20]
c0de61b8:	481f      	ldr	r0, [pc, #124]	@ (c0de6238 <displayWarningStep+0xfc>)
c0de61ba:	4478      	add	r0, pc
c0de61bc:	9004      	str	r0, [sp, #16]
c0de61be:	481f      	ldr	r0, [pc, #124]	@ (c0de623c <displayWarningStep+0x100>)
c0de61c0:	4478      	add	r0, pc
c0de61c2:	9006      	str	r0, [sp, #24]
c0de61c4:	2003      	movs	r0, #3
c0de61c6:	2900      	cmp	r1, #0
c0de61c8:	bf08      	it	eq
c0de61ca:	2001      	moveq	r0, #1
c0de61cc:	e020      	b.n	c0de6210 <displayWarningStep+0xd4>
c0de61ce:	4448      	add	r0, r9
c0de61d0:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de61d4:	3801      	subs	r0, #1
c0de61d6:	4288      	cmp	r0, r1
c0de61d8:	d119      	bne.n	c0de620e <displayWarningStep+0xd2>
c0de61da:	aa04      	add	r2, sp, #16
c0de61dc:	2000      	movs	r0, #0
c0de61de:	f102 0108 	add.w	r1, r2, #8
c0de61e2:	f000 f877 	bl	c0de62d4 <getLastPageInfo>
c0de61e6:	200a      	movs	r0, #10
c0de61e8:	e012      	b.n	c0de6210 <displayWarningStep+0xd4>
c0de61ea:	4448      	add	r0, r9
c0de61ec:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de61f0:	3801      	subs	r0, #1
c0de61f2:	4288      	cmp	r0, r1
c0de61f4:	d10b      	bne.n	c0de620e <displayWarningStep+0xd2>
c0de61f6:	6950      	ldr	r0, [r2, #20]
c0de61f8:	7901      	ldrb	r1, [r0, #4]
c0de61fa:	2901      	cmp	r1, #1
c0de61fc:	d115      	bne.n	c0de622a <displayWarningStep+0xee>
c0de61fe:	68c1      	ldr	r1, [r0, #12]
c0de6200:	6982      	ldr	r2, [r0, #24]
c0de6202:	6a00      	ldr	r0, [r0, #32]
c0de6204:	e9cd 2004 	strd	r2, r0, [sp, #16]
c0de6208:	2003      	movs	r0, #3
c0de620a:	9106      	str	r1, [sp, #24]
c0de620c:	e000      	b.n	c0de6210 <displayWarningStep+0xd4>
c0de620e:	2000      	movs	r0, #0
c0de6210:	2101      	movs	r1, #1
c0de6212:	2200      	movs	r2, #0
c0de6214:	f88d 101d 	strb.w	r1, [sp, #29]
c0de6218:	2100      	movs	r1, #0
c0de621a:	9100      	str	r1, [sp, #0]
c0de621c:	4908      	ldr	r1, [pc, #32]	@ (c0de6240 <displayWarningStep+0x104>)
c0de621e:	ab04      	add	r3, sp, #16
c0de6220:	4479      	add	r1, pc
c0de6222:	f7fe fc11 	bl	c0de4a48 <nbgl_stepDrawCenteredInfo>
c0de6226:	f001 f88a 	bl	c0de733e <nbgl_refresh>
c0de622a:	b008      	add	sp, #32
c0de622c:	bd10      	pop	{r4, pc}
c0de622e:	bf00      	nop
c0de6230:	000007f0 	.word	0x000007f0
c0de6234:	00001f70 	.word	0x00001f70
c0de6238:	0000209d 	.word	0x0000209d
c0de623c:	00001e55 	.word	0x00001e55
c0de6240:	00000025 	.word	0x00000025
c0de6244:	000000d9 	.word	0x000000d9

c0de6248 <warningNavigate>:
c0de6248:	2904      	cmp	r1, #4
c0de624a:	d009      	beq.n	c0de6260 <warningNavigate+0x18>
c0de624c:	2901      	cmp	r1, #1
c0de624e:	d024      	beq.n	c0de629a <warningNavigate+0x52>
c0de6250:	bb11      	cbnz	r1, c0de6298 <warningNavigate+0x50>
c0de6252:	481f      	ldr	r0, [pc, #124]	@ (c0de62d0 <warningNavigate+0x88>)
c0de6254:	4448      	add	r0, r9
c0de6256:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de625a:	b390      	cbz	r0, c0de62c2 <warningNavigate+0x7a>
c0de625c:	3801      	subs	r0, #1
c0de625e:	e027      	b.n	c0de62b0 <warningNavigate+0x68>
c0de6260:	481b      	ldr	r0, [pc, #108]	@ (c0de62d0 <warningNavigate+0x88>)
c0de6262:	eb09 0100 	add.w	r1, r9, r0
c0de6266:	69c9      	ldr	r1, [r1, #28]
c0de6268:	7809      	ldrb	r1, [r1, #0]
c0de626a:	06c9      	lsls	r1, r1, #27
c0de626c:	d514      	bpl.n	c0de6298 <warningNavigate+0x50>
c0de626e:	eb09 0200 	add.w	r2, r9, r0
c0de6272:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6276:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de627a:	4291      	cmp	r1, r2
c0de627c:	bf08      	it	eq
c0de627e:	f000 b8bd 	beq.w	c0de63fc <launchReviewAfterWarning>
c0de6282:	eb09 0200 	add.w	r2, r9, r0
c0de6286:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de628a:	3a01      	subs	r2, #1
c0de628c:	428a      	cmp	r2, r1
c0de628e:	d103      	bne.n	c0de6298 <warningNavigate+0x50>
c0de6290:	4448      	add	r0, r9
c0de6292:	6a01      	ldr	r1, [r0, #32]
c0de6294:	2000      	movs	r0, #0
c0de6296:	4708      	bx	r1
c0de6298:	4770      	bx	lr
c0de629a:	480d      	ldr	r0, [pc, #52]	@ (c0de62d0 <warningNavigate+0x88>)
c0de629c:	eb09 0200 	add.w	r2, r9, r0
c0de62a0:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de62a4:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de62a8:	3a01      	subs	r2, #1
c0de62aa:	428a      	cmp	r2, r1
c0de62ac:	dd05      	ble.n	c0de62ba <warningNavigate+0x72>
c0de62ae:	1c48      	adds	r0, r1, #1
c0de62b0:	4907      	ldr	r1, [pc, #28]	@ (c0de62d0 <warningNavigate+0x88>)
c0de62b2:	4449      	add	r1, r9
c0de62b4:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de62b8:	e003      	b.n	c0de62c2 <warningNavigate+0x7a>
c0de62ba:	4448      	add	r0, r9
c0de62bc:	69c0      	ldr	r0, [r0, #28]
c0de62be:	6801      	ldr	r1, [r0, #0]
c0de62c0:	b109      	cbz	r1, c0de62c6 <warningNavigate+0x7e>
c0de62c2:	f7ff bf3b 	b.w	c0de613c <displayWarningStep>
c0de62c6:	69c0      	ldr	r0, [r0, #28]
c0de62c8:	2800      	cmp	r0, #0
c0de62ca:	d0fa      	beq.n	c0de62c2 <warningNavigate+0x7a>
c0de62cc:	f000 b896 	b.w	c0de63fc <launchReviewAfterWarning>
c0de62d0:	000007f0 	.word	0x000007f0

c0de62d4 <getLastPageInfo>:
c0de62d4:	b170      	cbz	r0, c0de62f4 <getLastPageInfo+0x20>
c0de62d6:	4833      	ldr	r0, [pc, #204]	@ (c0de63a4 <getLastPageInfo+0xd0>)
c0de62d8:	4478      	add	r0, pc
c0de62da:	6008      	str	r0, [r1, #0]
c0de62dc:	4830      	ldr	r0, [pc, #192]	@ (c0de63a0 <getLastPageInfo+0xcc>)
c0de62de:	eb09 0100 	add.w	r1, r9, r0
c0de62e2:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de62e6:	2904      	cmp	r1, #4
c0de62e8:	d113      	bne.n	c0de6312 <getLastPageInfo+0x3e>
c0de62ea:	482f      	ldr	r0, [pc, #188]	@ (c0de63a8 <getLastPageInfo+0xd4>)
c0de62ec:	492f      	ldr	r1, [pc, #188]	@ (c0de63ac <getLastPageInfo+0xd8>)
c0de62ee:	4478      	add	r0, pc
c0de62f0:	4479      	add	r1, pc
c0de62f2:	e04f      	b.n	c0de6394 <getLastPageInfo+0xc0>
c0de62f4:	4838      	ldr	r0, [pc, #224]	@ (c0de63d8 <getLastPageInfo+0x104>)
c0de62f6:	4478      	add	r0, pc
c0de62f8:	6008      	str	r0, [r1, #0]
c0de62fa:	4829      	ldr	r0, [pc, #164]	@ (c0de63a0 <getLastPageInfo+0xcc>)
c0de62fc:	eb09 0100 	add.w	r1, r9, r0
c0de6300:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de6304:	2904      	cmp	r1, #4
c0de6306:	d10b      	bne.n	c0de6320 <getLastPageInfo+0x4c>
c0de6308:	4834      	ldr	r0, [pc, #208]	@ (c0de63dc <getLastPageInfo+0x108>)
c0de630a:	4935      	ldr	r1, [pc, #212]	@ (c0de63e0 <getLastPageInfo+0x10c>)
c0de630c:	4478      	add	r0, pc
c0de630e:	4479      	add	r1, pc
c0de6310:	e040      	b.n	c0de6394 <getLastPageInfo+0xc0>
c0de6312:	eb09 0100 	add.w	r1, r9, r0
c0de6316:	6d09      	ldr	r1, [r1, #80]	@ 0x50
c0de6318:	b171      	cbz	r1, c0de6338 <getLastPageInfo+0x64>
c0de631a:	4825      	ldr	r0, [pc, #148]	@ (c0de63b0 <getLastPageInfo+0xdc>)
c0de631c:	4478      	add	r0, pc
c0de631e:	e039      	b.n	c0de6394 <getLastPageInfo+0xc0>
c0de6320:	4448      	add	r0, r9
c0de6322:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de6324:	f010 0007 	ands.w	r0, r0, #7
c0de6328:	d017      	beq.n	c0de635a <getLastPageInfo+0x86>
c0de632a:	2801      	cmp	r0, #1
c0de632c:	d11a      	bne.n	c0de6364 <getLastPageInfo+0x90>
c0de632e:	482f      	ldr	r0, [pc, #188]	@ (c0de63ec <getLastPageInfo+0x118>)
c0de6330:	492f      	ldr	r1, [pc, #188]	@ (c0de63f0 <getLastPageInfo+0x11c>)
c0de6332:	4478      	add	r0, pc
c0de6334:	4479      	add	r1, pc
c0de6336:	e02d      	b.n	c0de6394 <getLastPageInfo+0xc0>
c0de6338:	4448      	add	r0, r9
c0de633a:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de633c:	f000 0107 	and.w	r1, r0, #7
c0de6340:	2901      	cmp	r1, #1
c0de6342:	d014      	beq.n	c0de636e <getLastPageInfo+0x9a>
c0de6344:	b9e9      	cbnz	r1, c0de6382 <getLastPageInfo+0xae>
c0de6346:	0640      	lsls	r0, r0, #25
c0de6348:	481a      	ldr	r0, [pc, #104]	@ (c0de63b4 <getLastPageInfo+0xe0>)
c0de634a:	491b      	ldr	r1, [pc, #108]	@ (c0de63b8 <getLastPageInfo+0xe4>)
c0de634c:	4478      	add	r0, pc
c0de634e:	4479      	add	r1, pc
c0de6350:	bf58      	it	pl
c0de6352:	4601      	movpl	r1, r0
c0de6354:	4819      	ldr	r0, [pc, #100]	@ (c0de63bc <getLastPageInfo+0xe8>)
c0de6356:	4478      	add	r0, pc
c0de6358:	e01c      	b.n	c0de6394 <getLastPageInfo+0xc0>
c0de635a:	4822      	ldr	r0, [pc, #136]	@ (c0de63e4 <getLastPageInfo+0x110>)
c0de635c:	4922      	ldr	r1, [pc, #136]	@ (c0de63e8 <getLastPageInfo+0x114>)
c0de635e:	4478      	add	r0, pc
c0de6360:	4479      	add	r1, pc
c0de6362:	e017      	b.n	c0de6394 <getLastPageInfo+0xc0>
c0de6364:	4823      	ldr	r0, [pc, #140]	@ (c0de63f4 <getLastPageInfo+0x120>)
c0de6366:	4924      	ldr	r1, [pc, #144]	@ (c0de63f8 <getLastPageInfo+0x124>)
c0de6368:	4478      	add	r0, pc
c0de636a:	4479      	add	r1, pc
c0de636c:	e012      	b.n	c0de6394 <getLastPageInfo+0xc0>
c0de636e:	0640      	lsls	r0, r0, #25
c0de6370:	4813      	ldr	r0, [pc, #76]	@ (c0de63c0 <getLastPageInfo+0xec>)
c0de6372:	4914      	ldr	r1, [pc, #80]	@ (c0de63c4 <getLastPageInfo+0xf0>)
c0de6374:	4478      	add	r0, pc
c0de6376:	4479      	add	r1, pc
c0de6378:	bf58      	it	pl
c0de637a:	4601      	movpl	r1, r0
c0de637c:	4812      	ldr	r0, [pc, #72]	@ (c0de63c8 <getLastPageInfo+0xf4>)
c0de637e:	4478      	add	r0, pc
c0de6380:	e008      	b.n	c0de6394 <getLastPageInfo+0xc0>
c0de6382:	0640      	lsls	r0, r0, #25
c0de6384:	4811      	ldr	r0, [pc, #68]	@ (c0de63cc <getLastPageInfo+0xf8>)
c0de6386:	4912      	ldr	r1, [pc, #72]	@ (c0de63d0 <getLastPageInfo+0xfc>)
c0de6388:	4478      	add	r0, pc
c0de638a:	4479      	add	r1, pc
c0de638c:	bf58      	it	pl
c0de638e:	4601      	movpl	r1, r0
c0de6390:	4810      	ldr	r0, [pc, #64]	@ (c0de63d4 <getLastPageInfo+0x100>)
c0de6392:	4478      	add	r0, pc
c0de6394:	6011      	str	r1, [r2, #0]
c0de6396:	4902      	ldr	r1, [pc, #8]	@ (c0de63a0 <getLastPageInfo+0xcc>)
c0de6398:	4449      	add	r1, r9
c0de639a:	6388      	str	r0, [r1, #56]	@ 0x38
c0de639c:	4770      	bx	lr
c0de639e:	bf00      	nop
c0de63a0:	000007f0 	.word	0x000007f0
c0de63a4:	00001d1a 	.word	0x00001d1a
c0de63a8:	00000143 	.word	0x00000143
c0de63ac:	000020a0 	.word	0x000020a0
c0de63b0:	00000115 	.word	0x00000115
c0de63b4:	00001e47 	.word	0x00001e47
c0de63b8:	00001ee8 	.word	0x00001ee8
c0de63bc:	000000db 	.word	0x000000db
c0de63c0:	00001e03 	.word	0x00001e03
c0de63c4:	00001e41 	.word	0x00001e41
c0de63c8:	000000b3 	.word	0x000000b3
c0de63cc:	00001f7d 	.word	0x00001f7d
c0de63d0:	00001ee1 	.word	0x00001ee1
c0de63d4:	0000009f 	.word	0x0000009f
c0de63d8:	00001c80 	.word	0x00001c80
c0de63dc:	00000139 	.word	0x00000139
c0de63e0:	00001eec 	.word	0x00001eec
c0de63e4:	000000e7 	.word	0x000000e7
c0de63e8:	00001e44 	.word	0x00001e44
c0de63ec:	00000113 	.word	0x00000113
c0de63f0:	00001fe0 	.word	0x00001fe0
c0de63f4:	000000dd 	.word	0x000000dd
c0de63f8:	00001fb9 	.word	0x00001fb9

c0de63fc <launchReviewAfterWarning>:
c0de63fc:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de63fe:	480c      	ldr	r0, [pc, #48]	@ (c0de6430 <launchReviewAfterWarning+0x34>)
c0de6400:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6404:	2905      	cmp	r1, #5
c0de6406:	d00d      	beq.n	c0de6424 <launchReviewAfterWarning+0x28>
c0de6408:	2902      	cmp	r1, #2
c0de640a:	bf18      	it	ne
c0de640c:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de640e:	4448      	add	r0, r9
c0de6410:	1d06      	adds	r6, r0, #4
c0de6412:	6a00      	ldr	r0, [r0, #32]
c0de6414:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de6416:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de641a:	9003      	str	r0, [sp, #12]
c0de641c:	2002      	movs	r0, #2
c0de641e:	f7fe fdb5 	bl	c0de4f8c <useCaseReview>
c0de6422:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de6424:	2000      	movs	r0, #0
c0de6426:	b004      	add	sp, #16
c0de6428:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de642c:	f7ff b8ac 	b.w	c0de5588 <displayStreamingReviewPage>
c0de6430:	000007f0 	.word	0x000007f0

c0de6434 <onReviewAccept>:
c0de6434:	4803      	ldr	r0, [pc, #12]	@ (c0de6444 <onReviewAccept+0x10>)
c0de6436:	4448      	add	r0, r9
c0de6438:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de643a:	b109      	cbz	r1, c0de6440 <onReviewAccept+0xc>
c0de643c:	2001      	movs	r0, #1
c0de643e:	4708      	bx	r1
c0de6440:	4770      	bx	lr
c0de6442:	bf00      	nop
c0de6444:	000007f0 	.word	0x000007f0

c0de6448 <onReviewReject>:
c0de6448:	4803      	ldr	r0, [pc, #12]	@ (c0de6458 <onReviewReject+0x10>)
c0de644a:	4448      	add	r0, r9
c0de644c:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de644e:	b109      	cbz	r1, c0de6454 <onReviewReject+0xc>
c0de6450:	2000      	movs	r0, #0
c0de6452:	4708      	bx	r1
c0de6454:	4770      	bx	lr
c0de6456:	bf00      	nop
c0de6458:	000007f0 	.word	0x000007f0

c0de645c <buttonSkipCallback>:
c0de645c:	b5b0      	push	{r4, r5, r7, lr}
c0de645e:	2904      	cmp	r1, #4
c0de6460:	d00a      	beq.n	c0de6478 <buttonSkipCallback+0x1c>
c0de6462:	2901      	cmp	r1, #1
c0de6464:	d017      	beq.n	c0de6496 <buttonSkipCallback+0x3a>
c0de6466:	bbb9      	cbnz	r1, c0de64d8 <buttonSkipCallback+0x7c>
c0de6468:	4829      	ldr	r0, [pc, #164]	@ (c0de6510 <buttonSkipCallback+0xb4>)
c0de646a:	eb09 0100 	add.w	r1, r9, r0
c0de646e:	f891 105e 	ldrb.w	r1, [r1, #94]	@ 0x5e
c0de6472:	b391      	cbz	r1, c0de64da <buttonSkipCallback+0x7e>
c0de6474:	2008      	movs	r0, #8
c0de6476:	e02a      	b.n	c0de64ce <buttonSkipCallback+0x72>
c0de6478:	4825      	ldr	r0, [pc, #148]	@ (c0de6510 <buttonSkipCallback+0xb4>)
c0de647a:	eb09 0100 	add.w	r1, r9, r0
c0de647e:	4448      	add	r0, r9
c0de6480:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de6484:	2900      	cmp	r1, #0
c0de6486:	d03f      	beq.n	c0de6508 <buttonSkipCallback+0xac>
c0de6488:	f890 1034 	ldrb.w	r1, [r0, #52]	@ 0x34
c0de648c:	3902      	subs	r1, #2
c0de648e:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6492:	2000      	movs	r0, #0
c0de6494:	e030      	b.n	c0de64f8 <buttonSkipCallback+0x9c>
c0de6496:	4a1e      	ldr	r2, [pc, #120]	@ (c0de6510 <buttonSkipCallback+0xb4>)
c0de6498:	eb09 0002 	add.w	r0, r9, r2
c0de649c:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de64a0:	2808      	cmp	r0, #8
c0de64a2:	d113      	bne.n	c0de64cc <buttonSkipCallback+0x70>
c0de64a4:	eb09 0002 	add.w	r0, r9, r2
c0de64a8:	f990 4036 	ldrsb.w	r4, [r0, #54]	@ 0x36
c0de64ac:	f990 3035 	ldrsb.w	r3, [r0, #53]	@ 0x35
c0de64b0:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de64b4:	1e45      	subs	r5, r0, #1
c0de64b6:	2000      	movs	r0, #0
c0de64b8:	b2e1      	uxtb	r1, r4
c0de64ba:	429d      	cmp	r5, r3
c0de64bc:	bfc8      	it	gt
c0de64be:	42a3      	cmpgt	r3, r4
c0de64c0:	dd19      	ble.n	c0de64f6 <buttonSkipCallback+0x9a>
c0de64c2:	eb09 0002 	add.w	r0, r9, r2
c0de64c6:	1c59      	adds	r1, r3, #1
c0de64c8:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de64cc:	2000      	movs	r0, #0
c0de64ce:	4910      	ldr	r1, [pc, #64]	@ (c0de6510 <buttonSkipCallback+0xb4>)
c0de64d0:	4449      	add	r1, r9
c0de64d2:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de64d6:	e00e      	b.n	c0de64f6 <buttonSkipCallback+0x9a>
c0de64d8:	bdb0      	pop	{r4, r5, r7, pc}
c0de64da:	eb09 0100 	add.w	r1, r9, r0
c0de64de:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de64e2:	f991 3036 	ldrsb.w	r3, [r1, #54]	@ 0x36
c0de64e6:	b2d9      	uxtb	r1, r3
c0de64e8:	429a      	cmp	r2, r3
c0de64ea:	dd03      	ble.n	c0de64f4 <buttonSkipCallback+0x98>
c0de64ec:	4448      	add	r0, r9
c0de64ee:	3a01      	subs	r2, #1
c0de64f0:	f880 2035 	strb.w	r2, [r0, #53]	@ 0x35
c0de64f4:	2008      	movs	r0, #8
c0de64f6:	b119      	cbz	r1, c0de6500 <buttonSkipCallback+0xa4>
c0de64f8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de64fc:	f7fe be3c 	b.w	c0de5178 <displayReviewPage>
c0de6500:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6504:	f7ff b840 	b.w	c0de5588 <displayStreamingReviewPage>
c0de6508:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de650a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de650e:	4700      	bx	r0
c0de6510:	000007f0 	.word	0x000007f0

c0de6514 <displayAliasFullValue>:
c0de6514:	b570      	push	{r4, r5, r6, lr}
c0de6516:	b088      	sub	sp, #32
c0de6518:	4c1a      	ldr	r4, [pc, #104]	@ (c0de6584 <displayAliasFullValue+0x70>)
c0de651a:	f10d 0213 	add.w	r2, sp, #19
c0de651e:	eb09 0504 	add.w	r5, r9, r4
c0de6522:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de6524:	f895 105f 	ldrb.w	r1, [r5, #95]	@ 0x5f
c0de6528:	ab05      	add	r3, sp, #20
c0de652a:	f105 0664 	add.w	r6, r5, #100	@ 0x64
c0de652e:	9202      	str	r2, [sp, #8]
c0de6530:	e9cd 6300 	strd	r6, r3, [sp]
c0de6534:	aa07      	add	r2, sp, #28
c0de6536:	ab06      	add	r3, sp, #24
c0de6538:	f7ff fba8 	bl	c0de5c8c <getPairData>
c0de653c:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0de653e:	b178      	cbz	r0, c0de6560 <displayAliasFullValue+0x4c>
c0de6540:	eb09 0104 	add.w	r1, r9, r4
c0de6544:	2200      	movs	r2, #0
c0de6546:	668a      	str	r2, [r1, #104]	@ 0x68
c0de6548:	f881 2060 	strb.w	r2, [r1, #96]	@ 0x60
c0de654c:	7d01      	ldrb	r1, [r0, #20]
c0de654e:	2901      	cmp	r1, #1
c0de6550:	d008      	beq.n	c0de6564 <displayAliasFullValue+0x50>
c0de6552:	2905      	cmp	r1, #5
c0de6554:	d008      	beq.n	c0de6568 <displayAliasFullValue+0x54>
c0de6556:	2904      	cmp	r1, #4
c0de6558:	d102      	bne.n	c0de6560 <displayAliasFullValue+0x4c>
c0de655a:	6900      	ldr	r0, [r0, #16]
c0de655c:	300c      	adds	r0, #12
c0de655e:	e005      	b.n	c0de656c <displayAliasFullValue+0x58>
c0de6560:	b008      	add	sp, #32
c0de6562:	bd70      	pop	{r4, r5, r6, pc}
c0de6564:	2002      	movs	r0, #2
c0de6566:	e003      	b.n	c0de6570 <displayAliasFullValue+0x5c>
c0de6568:	6900      	ldr	r0, [r0, #16]
c0de656a:	3008      	adds	r0, #8
c0de656c:	7800      	ldrb	r0, [r0, #0]
c0de656e:	3001      	adds	r0, #1
c0de6570:	eb09 0104 	add.w	r1, r9, r4
c0de6574:	f881 0061 	strb.w	r0, [r1, #97]	@ 0x61
c0de6578:	2000      	movs	r0, #0
c0de657a:	b008      	add	sp, #32
c0de657c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6580:	f000 b814 	b.w	c0de65ac <displayExtensionStep>
c0de6584:	000007f0 	.word	0x000007f0

c0de6588 <reviewCallback>:
c0de6588:	b5e0      	push	{r5, r6, r7, lr}
c0de658a:	4608      	mov	r0, r1
c0de658c:	f10d 0107 	add.w	r1, sp, #7
c0de6590:	f7ff fc56 	bl	c0de5e40 <buttonGenericCallback>
c0de6594:	b130      	cbz	r0, c0de65a4 <reviewCallback+0x1c>
c0de6596:	4804      	ldr	r0, [pc, #16]	@ (c0de65a8 <reviewCallback+0x20>)
c0de6598:	f000 f993 	bl	c0de68c2 <OUTLINED_FUNCTION_8>
c0de659c:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de65a0:	f7fe bdea 	b.w	c0de5178 <displayReviewPage>
c0de65a4:	bd8c      	pop	{r2, r3, r7, pc}
c0de65a6:	bf00      	nop
c0de65a8:	000007f0 	.word	0x000007f0

c0de65ac <displayExtensionStep>:
c0de65ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de65b0:	b088      	sub	sp, #32
c0de65b2:	4e36      	ldr	r6, [pc, #216]	@ (c0de668c <displayExtensionStep+0xe0>)
c0de65b4:	4680      	mov	r8, r0
c0de65b6:	2000      	movs	r0, #0
c0de65b8:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de65bc:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de65c0:	eb09 0006 	add.w	r0, r9, r6
c0de65c4:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de65c6:	b108      	cbz	r0, c0de65cc <displayExtensionStep+0x20>
c0de65c8:	f7fe fb64 	bl	c0de4c94 <nbgl_stepRelease>
c0de65cc:	eb09 0106 	add.w	r1, r9, r6
c0de65d0:	f000 f970 	bl	c0de68b4 <OUTLINED_FUNCTION_7>
c0de65d4:	dd10      	ble.n	c0de65f8 <displayExtensionStep+0x4c>
c0de65d6:	2703      	movs	r7, #3
c0de65d8:	eb09 0106 	add.w	r1, r9, r6
c0de65dc:	2800      	cmp	r0, #0
c0de65de:	bf08      	it	eq
c0de65e0:	2701      	moveq	r7, #1
c0de65e2:	6e49      	ldr	r1, [r1, #100]	@ 0x64
c0de65e4:	7d0a      	ldrb	r2, [r1, #20]
c0de65e6:	2a05      	cmp	r2, #5
c0de65e8:	d01a      	beq.n	c0de6620 <displayExtensionStep+0x74>
c0de65ea:	2a04      	cmp	r2, #4
c0de65ec:	d028      	beq.n	c0de6640 <displayExtensionStep+0x94>
c0de65ee:	2a01      	cmp	r2, #1
c0de65f0:	d147      	bne.n	c0de6682 <displayExtensionStep+0xd6>
c0de65f2:	6808      	ldr	r0, [r1, #0]
c0de65f4:	688d      	ldr	r5, [r1, #8]
c0de65f6:	e033      	b.n	c0de6660 <displayExtensionStep+0xb4>
c0de65f8:	d143      	bne.n	c0de6682 <displayExtensionStep+0xd6>
c0de65fa:	2001      	movs	r0, #1
c0de65fc:	2200      	movs	r2, #0
c0de65fe:	f88d 001d 	strb.w	r0, [sp, #29]
c0de6602:	4924      	ldr	r1, [pc, #144]	@ (c0de6694 <displayExtensionStep+0xe8>)
c0de6604:	4479      	add	r1, pc
c0de6606:	9104      	str	r1, [sp, #16]
c0de6608:	4923      	ldr	r1, [pc, #140]	@ (c0de6698 <displayExtensionStep+0xec>)
c0de660a:	9000      	str	r0, [sp, #0]
c0de660c:	f048 0002 	orr.w	r0, r8, #2
c0de6610:	4479      	add	r1, pc
c0de6612:	9106      	str	r1, [sp, #24]
c0de6614:	4921      	ldr	r1, [pc, #132]	@ (c0de669c <displayExtensionStep+0xf0>)
c0de6616:	ab04      	add	r3, sp, #16
c0de6618:	4479      	add	r1, pc
c0de661a:	f7fe fa15 	bl	c0de4a48 <nbgl_stepDrawCenteredInfo>
c0de661e:	e02d      	b.n	c0de667c <displayExtensionStep+0xd0>
c0de6620:	690c      	ldr	r4, [r1, #16]
c0de6622:	0100      	lsls	r0, r0, #4
c0de6624:	6821      	ldr	r1, [r4, #0]
c0de6626:	5808      	ldr	r0, [r1, r0]
c0de6628:	f001 f898 	bl	c0de775c <pic>
c0de662c:	4605      	mov	r5, r0
c0de662e:	eb09 0006 	add.w	r0, r9, r6
c0de6632:	6821      	ldr	r1, [r4, #0]
c0de6634:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6638:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de663c:	6840      	ldr	r0, [r0, #4]
c0de663e:	e00d      	b.n	c0de665c <displayExtensionStep+0xb0>
c0de6640:	690c      	ldr	r4, [r1, #16]
c0de6642:	6821      	ldr	r1, [r4, #0]
c0de6644:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de6648:	f001 f888 	bl	c0de775c <pic>
c0de664c:	4605      	mov	r5, r0
c0de664e:	eb09 0006 	add.w	r0, r9, r6
c0de6652:	6861      	ldr	r1, [r4, #4]
c0de6654:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6658:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de665c:	f001 f87e 	bl	c0de775c <pic>
c0de6660:	b17d      	cbz	r5, c0de6682 <displayExtensionStep+0xd6>
c0de6662:	2101      	movs	r1, #1
c0de6664:	ea47 0208 	orr.w	r2, r7, r8
c0de6668:	462b      	mov	r3, r5
c0de666a:	e9cd 0100 	strd	r0, r1, [sp]
c0de666e:	9102      	str	r1, [sp, #8]
c0de6670:	4610      	mov	r0, r2
c0de6672:	2200      	movs	r2, #0
c0de6674:	4906      	ldr	r1, [pc, #24]	@ (c0de6690 <displayExtensionStep+0xe4>)
c0de6676:	4479      	add	r1, pc
c0de6678:	f7fe f8a0 	bl	c0de47bc <nbgl_stepDrawText>
c0de667c:	eb09 0106 	add.w	r1, r9, r6
c0de6680:	6688      	str	r0, [r1, #104]	@ 0x68
c0de6682:	f000 fe5c 	bl	c0de733e <nbgl_refresh>
c0de6686:	b008      	add	sp, #32
c0de6688:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de668c:	000007f0 	.word	0x000007f0
c0de6690:	00000027 	.word	0x00000027
c0de6694:	00001cb1 	.word	0x00001cb1
c0de6698:	00001920 	.word	0x00001920
c0de669c:	00000085 	.word	0x00000085

c0de66a0 <extensionNavigate>:
c0de66a0:	b580      	push	{r7, lr}
c0de66a2:	2904      	cmp	r1, #4
c0de66a4:	d00a      	beq.n	c0de66bc <extensionNavigate+0x1c>
c0de66a6:	2901      	cmp	r1, #1
c0de66a8:	d01d      	beq.n	c0de66e6 <extensionNavigate+0x46>
c0de66aa:	b9d9      	cbnz	r1, c0de66e4 <extensionNavigate+0x44>
c0de66ac:	4818      	ldr	r0, [pc, #96]	@ (c0de6710 <extensionNavigate+0x70>)
c0de66ae:	4448      	add	r0, r9
c0de66b0:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de66b4:	b330      	cbz	r0, c0de6704 <extensionNavigate+0x64>
c0de66b6:	1e41      	subs	r1, r0, #1
c0de66b8:	2008      	movs	r0, #8
c0de66ba:	e01c      	b.n	c0de66f6 <extensionNavigate+0x56>
c0de66bc:	4814      	ldr	r0, [pc, #80]	@ (c0de6710 <extensionNavigate+0x70>)
c0de66be:	eb09 0100 	add.w	r1, r9, r0
c0de66c2:	f891 2060 	ldrb.w	r2, [r1, #96]	@ 0x60
c0de66c6:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de66ca:	3901      	subs	r1, #1
c0de66cc:	4291      	cmp	r1, r2
c0de66ce:	d109      	bne.n	c0de66e4 <extensionNavigate+0x44>
c0de66d0:	4448      	add	r0, r9
c0de66d2:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de66d4:	f7fe fade 	bl	c0de4c94 <nbgl_stepRelease>
c0de66d8:	f000 fe4a 	bl	c0de7370 <nbgl_screenRedraw>
c0de66dc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de66e0:	f000 be2d 	b.w	c0de733e <nbgl_refresh>
c0de66e4:	bd80      	pop	{r7, pc}
c0de66e6:	480a      	ldr	r0, [pc, #40]	@ (c0de6710 <extensionNavigate+0x70>)
c0de66e8:	eb09 0100 	add.w	r1, r9, r0
c0de66ec:	f000 f8e2 	bl	c0de68b4 <OUTLINED_FUNCTION_7>
c0de66f0:	dd06      	ble.n	c0de6700 <extensionNavigate+0x60>
c0de66f2:	1c41      	adds	r1, r0, #1
c0de66f4:	2000      	movs	r0, #0
c0de66f6:	4a06      	ldr	r2, [pc, #24]	@ (c0de6710 <extensionNavigate+0x70>)
c0de66f8:	444a      	add	r2, r9
c0de66fa:	f882 1060 	strb.w	r1, [r2, #96]	@ 0x60
c0de66fe:	e002      	b.n	c0de6706 <extensionNavigate+0x66>
c0de6700:	2000      	movs	r0, #0
c0de6702:	e000      	b.n	c0de6706 <extensionNavigate+0x66>
c0de6704:	2008      	movs	r0, #8
c0de6706:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de670a:	f7ff bf4f 	b.w	c0de65ac <displayExtensionStep>
c0de670e:	bf00      	nop
c0de6710:	000007f0 	.word	0x000007f0

c0de6714 <statusTickerCallback>:
c0de6714:	4802      	ldr	r0, [pc, #8]	@ (c0de6720 <statusTickerCallback+0xc>)
c0de6716:	4448      	add	r0, r9
c0de6718:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de671a:	b100      	cbz	r0, c0de671e <statusTickerCallback+0xa>
c0de671c:	4700      	bx	r0
c0de671e:	4770      	bx	lr
c0de6720:	000007f0 	.word	0x000007f0

c0de6724 <getChoiceName>:
c0de6724:	b5b0      	push	{r4, r5, r7, lr}
c0de6726:	b090      	sub	sp, #64	@ 0x40
c0de6728:	ad01      	add	r5, sp, #4
c0de672a:	f000 f8d1 	bl	c0de68d0 <OUTLINED_FUNCTION_9>
c0de672e:	4814      	ldr	r0, [pc, #80]	@ (c0de6780 <getChoiceName+0x5c>)
c0de6730:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6734:	462a      	mov	r2, r5
c0de6736:	4448      	add	r0, r9
c0de6738:	f000 f8b1 	bl	c0de689e <OUTLINED_FUNCTION_4>
c0de673c:	b150      	cbz	r0, c0de6754 <getChoiceName+0x30>
c0de673e:	7801      	ldrb	r1, [r0, #0]
c0de6740:	290a      	cmp	r1, #10
c0de6742:	d009      	beq.n	c0de6758 <getChoiceName+0x34>
c0de6744:	2909      	cmp	r1, #9
c0de6746:	d105      	bne.n	c0de6754 <getChoiceName+0x30>
c0de6748:	f000 f8ad 	bl	c0de68a6 <OUTLINED_FUNCTION_5>
c0de674c:	4605      	mov	r5, r0
c0de674e:	f855 0b05 	ldr.w	r0, [r5], #5
c0de6752:	e006      	b.n	c0de6762 <getChoiceName+0x3e>
c0de6754:	2000      	movs	r0, #0
c0de6756:	e010      	b.n	c0de677a <getChoiceName+0x56>
c0de6758:	f000 f8a5 	bl	c0de68a6 <OUTLINED_FUNCTION_5>
c0de675c:	4605      	mov	r5, r0
c0de675e:	f855 0b08 	ldr.w	r0, [r5], #8
c0de6762:	f000 fffb 	bl	c0de775c <pic>
c0de6766:	7829      	ldrb	r1, [r5, #0]
c0de6768:	42a1      	cmp	r1, r4
c0de676a:	d904      	bls.n	c0de6776 <getChoiceName+0x52>
c0de676c:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de6770:	f000 fff4 	bl	c0de775c <pic>
c0de6774:	e001      	b.n	c0de677a <getChoiceName+0x56>
c0de6776:	4803      	ldr	r0, [pc, #12]	@ (c0de6784 <getChoiceName+0x60>)
c0de6778:	4478      	add	r0, pc
c0de677a:	b010      	add	sp, #64	@ 0x40
c0de677c:	bdb0      	pop	{r4, r5, r7, pc}
c0de677e:	bf00      	nop
c0de6780:	000007f0 	.word	0x000007f0
c0de6784:	00001b3d 	.word	0x00001b3d

c0de6788 <onChoiceSelected>:
c0de6788:	b570      	push	{r4, r5, r6, lr}
c0de678a:	b090      	sub	sp, #64	@ 0x40
c0de678c:	ad01      	add	r5, sp, #4
c0de678e:	f000 f89f 	bl	c0de68d0 <OUTLINED_FUNCTION_9>
c0de6792:	4e17      	ldr	r6, [pc, #92]	@ (c0de67f0 <onChoiceSelected+0x68>)
c0de6794:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6798:	462a      	mov	r2, r5
c0de679a:	eb09 0006 	add.w	r0, r9, r6
c0de679e:	f000 f87e 	bl	c0de689e <OUTLINED_FUNCTION_4>
c0de67a2:	b318      	cbz	r0, c0de67ec <onChoiceSelected+0x64>
c0de67a4:	7801      	ldrb	r1, [r0, #0]
c0de67a6:	290a      	cmp	r1, #10
c0de67a8:	d008      	beq.n	c0de67bc <onChoiceSelected+0x34>
c0de67aa:	2909      	cmp	r1, #9
c0de67ac:	d10f      	bne.n	c0de67ce <onChoiceSelected+0x46>
c0de67ae:	f000 f87a 	bl	c0de68a6 <OUTLINED_FUNCTION_5>
c0de67b2:	7941      	ldrb	r1, [r0, #5]
c0de67b4:	42a1      	cmp	r1, r4
c0de67b6:	d90a      	bls.n	c0de67ce <onChoiceSelected+0x46>
c0de67b8:	3007      	adds	r0, #7
c0de67ba:	e006      	b.n	c0de67ca <onChoiceSelected+0x42>
c0de67bc:	f000 f873 	bl	c0de68a6 <OUTLINED_FUNCTION_5>
c0de67c0:	7a01      	ldrb	r1, [r0, #8]
c0de67c2:	42a1      	cmp	r1, r4
c0de67c4:	d903      	bls.n	c0de67ce <onChoiceSelected+0x46>
c0de67c6:	6840      	ldr	r0, [r0, #4]
c0de67c8:	4420      	add	r0, r4
c0de67ca:	7800      	ldrb	r0, [r0, #0]
c0de67cc:	e000      	b.n	c0de67d0 <onChoiceSelected+0x48>
c0de67ce:	20ff      	movs	r0, #255	@ 0xff
c0de67d0:	28ff      	cmp	r0, #255	@ 0xff
c0de67d2:	d006      	beq.n	c0de67e2 <onChoiceSelected+0x5a>
c0de67d4:	eb09 0106 	add.w	r1, r9, r6
c0de67d8:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de67da:	b112      	cbz	r2, c0de67e2 <onChoiceSelected+0x5a>
c0de67dc:	2100      	movs	r1, #0
c0de67de:	4790      	blx	r2
c0de67e0:	e004      	b.n	c0de67ec <onChoiceSelected+0x64>
c0de67e2:	eb09 0006 	add.w	r0, r9, r6
c0de67e6:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de67e8:	b100      	cbz	r0, c0de67ec <onChoiceSelected+0x64>
c0de67ea:	4780      	blx	r0
c0de67ec:	b010      	add	sp, #64	@ 0x40
c0de67ee:	bd70      	pop	{r4, r5, r6, pc}
c0de67f0:	000007f0 	.word	0x000007f0

c0de67f4 <streamingReviewCallback>:
c0de67f4:	b5e0      	push	{r5, r6, r7, lr}
c0de67f6:	4608      	mov	r0, r1
c0de67f8:	f10d 0107 	add.w	r1, sp, #7
c0de67fc:	f7ff fb20 	bl	c0de5e40 <buttonGenericCallback>
c0de6800:	b130      	cbz	r0, c0de6810 <streamingReviewCallback+0x1c>
c0de6802:	4804      	ldr	r0, [pc, #16]	@ (c0de6814 <streamingReviewCallback+0x20>)
c0de6804:	f000 f85d 	bl	c0de68c2 <OUTLINED_FUNCTION_8>
c0de6808:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de680c:	f7fe bebc 	b.w	c0de5588 <displayStreamingReviewPage>
c0de6810:	bd8c      	pop	{r2, r3, r7, pc}
c0de6812:	bf00      	nop
c0de6814:	000007f0 	.word	0x000007f0

c0de6818 <onChoiceAccept>:
c0de6818:	4803      	ldr	r0, [pc, #12]	@ (c0de6828 <onChoiceAccept+0x10>)
c0de681a:	4448      	add	r0, r9
c0de681c:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de681e:	b109      	cbz	r1, c0de6824 <onChoiceAccept+0xc>
c0de6820:	2001      	movs	r0, #1
c0de6822:	4708      	bx	r1
c0de6824:	4770      	bx	lr
c0de6826:	bf00      	nop
c0de6828:	000007f0 	.word	0x000007f0

c0de682c <onChoiceReject>:
c0de682c:	4803      	ldr	r0, [pc, #12]	@ (c0de683c <onChoiceReject+0x10>)
c0de682e:	4448      	add	r0, r9
c0de6830:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de6832:	b109      	cbz	r1, c0de6838 <onChoiceReject+0xc>
c0de6834:	2000      	movs	r0, #0
c0de6836:	4708      	bx	r1
c0de6838:	4770      	bx	lr
c0de683a:	bf00      	nop
c0de683c:	000007f0 	.word	0x000007f0

c0de6840 <genericChoiceCallback>:
c0de6840:	b5e0      	push	{r5, r6, r7, lr}
c0de6842:	4608      	mov	r0, r1
c0de6844:	f10d 0107 	add.w	r1, sp, #7
c0de6848:	f7ff fafa 	bl	c0de5e40 <buttonGenericCallback>
c0de684c:	b128      	cbz	r0, c0de685a <genericChoiceCallback+0x1a>
c0de684e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6852:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6856:	f7fe bfbd 	b.w	c0de57d4 <displayChoicePage>
c0de685a:	bd8c      	pop	{r2, r3, r7, pc}

c0de685c <OUTLINED_FUNCTION_0>:
c0de685c:	eb09 0500 	add.w	r5, r9, r0
c0de6860:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de6864:	f001 ba86 	b.w	c0de7d74 <__aeabi_memclr>

c0de6868 <OUTLINED_FUNCTION_1>:
c0de6868:	2200      	movs	r2, #0
c0de686a:	eb09 0100 	add.w	r1, r9, r0
c0de686e:	638a      	str	r2, [r1, #56]	@ 0x38
c0de6870:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6874:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de6878:	3901      	subs	r1, #1
c0de687a:	4291      	cmp	r1, r2
c0de687c:	4770      	bx	lr

c0de687e <OUTLINED_FUNCTION_2>:
c0de687e:	eb09 0600 	add.w	r6, r9, r0
c0de6882:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de6886:	f001 ba75 	b.w	c0de7d74 <__aeabi_memclr>

c0de688a <OUTLINED_FUNCTION_3>:
c0de688a:	460e      	mov	r6, r1
c0de688c:	2140      	movs	r1, #64	@ 0x40
c0de688e:	4698      	mov	r8, r3
c0de6890:	4615      	mov	r5, r2
c0de6892:	eb09 0400 	add.w	r4, r9, r0
c0de6896:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
c0de689a:	f001 ba6b 	b.w	c0de7d74 <__aeabi_memclr>

c0de689e <OUTLINED_FUNCTION_4>:
c0de689e:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de68a2:	f7ff b9af 	b.w	c0de5c04 <getContentElemAtIdx>

c0de68a6 <OUTLINED_FUNCTION_5>:
c0de68a6:	3004      	adds	r0, #4
c0de68a8:	f000 bf58 	b.w	c0de775c <pic>

c0de68ac <OUTLINED_FUNCTION_6>:
c0de68ac:	e9cd 6500 	strd	r6, r5, [sp]
c0de68b0:	f7fe bd4e 	b.w	c0de5350 <drawStep>

c0de68b4 <OUTLINED_FUNCTION_7>:
c0de68b4:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de68b8:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de68bc:	3901      	subs	r1, #1
c0de68be:	4281      	cmp	r1, r0
c0de68c0:	4770      	bx	lr

c0de68c2 <OUTLINED_FUNCTION_8>:
c0de68c2:	eb09 0100 	add.w	r1, r9, r0
c0de68c6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de68ca:	f881 005e 	strb.w	r0, [r1, #94]	@ 0x5e
c0de68ce:	4770      	bx	lr

c0de68d0 <OUTLINED_FUNCTION_9>:
c0de68d0:	4604      	mov	r4, r0
c0de68d2:	2138      	movs	r1, #56	@ 0x38
c0de68d4:	4628      	mov	r0, r5
c0de68d6:	f001 ba4d 	b.w	c0de7d74 <__aeabi_memclr>

c0de68da <OUTLINED_FUNCTION_10>:
c0de68da:	f997 1035 	ldrsb.w	r1, [r7, #53]	@ 0x35
c0de68de:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de68e2:	4730      	bx	r6

c0de68e4 <bip32_path_read>:
c0de68e4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de68e8:	b10b      	cbz	r3, c0de68ee <bip32_path_read+0xa>
c0de68ea:	2b0a      	cmp	r3, #10
c0de68ec:	d902      	bls.n	c0de68f4 <bip32_path_read+0x10>
c0de68ee:	2000      	movs	r0, #0
c0de68f0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de68f4:	4692      	mov	sl, r2
c0de68f6:	460e      	mov	r6, r1
c0de68f8:	4683      	mov	fp, r0
c0de68fa:	425f      	negs	r7, r3
c0de68fc:	2500      	movs	r5, #0
c0de68fe:	f04f 0800 	mov.w	r8, #0
c0de6902:	9301      	str	r3, [sp, #4]
c0de6904:	42af      	cmp	r7, r5
c0de6906:	d00c      	beq.n	c0de6922 <bip32_path_read+0x3e>
c0de6908:	f108 0404 	add.w	r4, r8, #4
c0de690c:	42b4      	cmp	r4, r6
c0de690e:	d808      	bhi.n	c0de6922 <bip32_path_read+0x3e>
c0de6910:	4658      	mov	r0, fp
c0de6912:	4641      	mov	r1, r8
c0de6914:	f000 fb6f 	bl	c0de6ff6 <read_u32_be>
c0de6918:	f84a 0008 	str.w	r0, [sl, r8]
c0de691c:	3d01      	subs	r5, #1
c0de691e:	46a0      	mov	r8, r4
c0de6920:	e7f0      	b.n	c0de6904 <bip32_path_read+0x20>
c0de6922:	9a01      	ldr	r2, [sp, #4]
c0de6924:	4269      	negs	r1, r5
c0de6926:	2000      	movs	r0, #0
c0de6928:	4291      	cmp	r1, r2
c0de692a:	bf28      	it	cs
c0de692c:	2001      	movcs	r0, #1
c0de692e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de6932 <buffer_seek_cur>:
c0de6932:	6882      	ldr	r2, [r0, #8]
c0de6934:	1889      	adds	r1, r1, r2
c0de6936:	d205      	bcs.n	c0de6944 <buffer_seek_cur+0x12>
c0de6938:	6842      	ldr	r2, [r0, #4]
c0de693a:	4291      	cmp	r1, r2
c0de693c:	bf9e      	ittt	ls
c0de693e:	6081      	strls	r1, [r0, #8]
c0de6940:	2001      	movls	r0, #1
c0de6942:	4770      	bxls	lr
c0de6944:	2000      	movs	r0, #0
c0de6946:	4770      	bx	lr

c0de6948 <buffer_read_u8>:
c0de6948:	b510      	push	{r4, lr}
c0de694a:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de694e:	429a      	cmp	r2, r3
c0de6950:	d00a      	beq.n	c0de6968 <buffer_read_u8+0x20>
c0de6952:	6804      	ldr	r4, [r0, #0]
c0de6954:	5ce4      	ldrb	r4, [r4, r3]
c0de6956:	700c      	strb	r4, [r1, #0]
c0de6958:	6881      	ldr	r1, [r0, #8]
c0de695a:	3101      	adds	r1, #1
c0de695c:	d206      	bcs.n	c0de696c <buffer_read_u8+0x24>
c0de695e:	6844      	ldr	r4, [r0, #4]
c0de6960:	42a1      	cmp	r1, r4
c0de6962:	bf98      	it	ls
c0de6964:	6081      	strls	r1, [r0, #8]
c0de6966:	e001      	b.n	c0de696c <buffer_read_u8+0x24>
c0de6968:	2000      	movs	r0, #0
c0de696a:	7008      	strb	r0, [r1, #0]
c0de696c:	1ad0      	subs	r0, r2, r3
c0de696e:	bf18      	it	ne
c0de6970:	2001      	movne	r0, #1
c0de6972:	bd10      	pop	{r4, pc}

c0de6974 <buffer_read_u64>:
c0de6974:	b570      	push	{r4, r5, r6, lr}
c0de6976:	f000 f87d 	bl	c0de6a74 <OUTLINED_FUNCTION_0>
c0de697a:	2e07      	cmp	r6, #7
c0de697c:	d904      	bls.n	c0de6988 <buffer_read_u64+0x14>
c0de697e:	6820      	ldr	r0, [r4, #0]
c0de6980:	b132      	cbz	r2, c0de6990 <buffer_read_u64+0x1c>
c0de6982:	f000 fb6f 	bl	c0de7064 <read_u64_le>
c0de6986:	e005      	b.n	c0de6994 <buffer_read_u64+0x20>
c0de6988:	2000      	movs	r0, #0
c0de698a:	e9c5 0000 	strd	r0, r0, [r5]
c0de698e:	e00c      	b.n	c0de69aa <buffer_read_u64+0x36>
c0de6990:	f000 fb3d 	bl	c0de700e <read_u64_be>
c0de6994:	e9c5 0100 	strd	r0, r1, [r5]
c0de6998:	68a0      	ldr	r0, [r4, #8]
c0de699a:	f110 0f09 	cmn.w	r0, #9
c0de699e:	d804      	bhi.n	c0de69aa <buffer_read_u64+0x36>
c0de69a0:	6861      	ldr	r1, [r4, #4]
c0de69a2:	3008      	adds	r0, #8
c0de69a4:	4288      	cmp	r0, r1
c0de69a6:	bf98      	it	ls
c0de69a8:	60a0      	strls	r0, [r4, #8]
c0de69aa:	2000      	movs	r0, #0
c0de69ac:	2e07      	cmp	r6, #7
c0de69ae:	bf88      	it	hi
c0de69b0:	2001      	movhi	r0, #1
c0de69b2:	bd70      	pop	{r4, r5, r6, pc}

c0de69b4 <buffer_read_varint>:
c0de69b4:	b5b0      	push	{r4, r5, r7, lr}
c0de69b6:	4604      	mov	r4, r0
c0de69b8:	460d      	mov	r5, r1
c0de69ba:	6800      	ldr	r0, [r0, #0]
c0de69bc:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de69c0:	4410      	add	r0, r2
c0de69c2:	1a89      	subs	r1, r1, r2
c0de69c4:	462a      	mov	r2, r5
c0de69c6:	f000 fbb7 	bl	c0de7138 <varint_read>
c0de69ca:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de69ce:	dd0a      	ble.n	c0de69e6 <buffer_read_varint+0x32>
c0de69d0:	68a1      	ldr	r1, [r4, #8]
c0de69d2:	1840      	adds	r0, r0, r1
c0de69d4:	d205      	bcs.n	c0de69e2 <buffer_read_varint+0x2e>
c0de69d6:	6861      	ldr	r1, [r4, #4]
c0de69d8:	4288      	cmp	r0, r1
c0de69da:	bf9e      	ittt	ls
c0de69dc:	60a0      	strls	r0, [r4, #8]
c0de69de:	2001      	movls	r0, #1
c0de69e0:	bdb0      	popls	{r4, r5, r7, pc}
c0de69e2:	2000      	movs	r0, #0
c0de69e4:	bdb0      	pop	{r4, r5, r7, pc}
c0de69e6:	2000      	movs	r0, #0
c0de69e8:	e9c5 0000 	strd	r0, r0, [r5]
c0de69ec:	bdb0      	pop	{r4, r5, r7, pc}

c0de69ee <buffer_read_bip32_path>:
c0de69ee:	b5b0      	push	{r4, r5, r7, lr}
c0de69f0:	4604      	mov	r4, r0
c0de69f2:	4615      	mov	r5, r2
c0de69f4:	460a      	mov	r2, r1
c0de69f6:	6800      	ldr	r0, [r0, #0]
c0de69f8:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de69fc:	4418      	add	r0, r3
c0de69fe:	1ac9      	subs	r1, r1, r3
c0de6a00:	462b      	mov	r3, r5
c0de6a02:	f7ff ff6f 	bl	c0de68e4 <bip32_path_read>
c0de6a06:	b140      	cbz	r0, c0de6a1a <buffer_read_bip32_path+0x2c>
c0de6a08:	68a2      	ldr	r2, [r4, #8]
c0de6a0a:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de6a0e:	4291      	cmp	r1, r2
c0de6a10:	d303      	bcc.n	c0de6a1a <buffer_read_bip32_path+0x2c>
c0de6a12:	6862      	ldr	r2, [r4, #4]
c0de6a14:	4291      	cmp	r1, r2
c0de6a16:	bf98      	it	ls
c0de6a18:	60a1      	strls	r1, [r4, #8]
c0de6a1a:	bdb0      	pop	{r4, r5, r7, pc}

c0de6a1c <buffer_copy>:
c0de6a1c:	b5b0      	push	{r4, r5, r7, lr}
c0de6a1e:	4614      	mov	r4, r2
c0de6a20:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6a24:	1a9d      	subs	r5, r3, r2
c0de6a26:	42a5      	cmp	r5, r4
c0de6a28:	d806      	bhi.n	c0de6a38 <buffer_copy+0x1c>
c0de6a2a:	6800      	ldr	r0, [r0, #0]
c0de6a2c:	4402      	add	r2, r0
c0de6a2e:	4608      	mov	r0, r1
c0de6a30:	4611      	mov	r1, r2
c0de6a32:	462a      	mov	r2, r5
c0de6a34:	f001 f996 	bl	c0de7d64 <__aeabi_memmove>
c0de6a38:	2000      	movs	r0, #0
c0de6a3a:	42a5      	cmp	r5, r4
c0de6a3c:	bf98      	it	ls
c0de6a3e:	2001      	movls	r0, #1
c0de6a40:	bdb0      	pop	{r4, r5, r7, pc}

c0de6a42 <buffer_move>:
c0de6a42:	b5b0      	push	{r4, r5, r7, lr}
c0de6a44:	4615      	mov	r5, r2
c0de6a46:	4604      	mov	r4, r0
c0de6a48:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6a4c:	1a12      	subs	r2, r2, r0
c0de6a4e:	42aa      	cmp	r2, r5
c0de6a50:	bf84      	itt	hi
c0de6a52:	2000      	movhi	r0, #0
c0de6a54:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6a56:	6823      	ldr	r3, [r4, #0]
c0de6a58:	4403      	add	r3, r0
c0de6a5a:	4608      	mov	r0, r1
c0de6a5c:	4619      	mov	r1, r3
c0de6a5e:	f001 f981 	bl	c0de7d64 <__aeabi_memmove>
c0de6a62:	68a0      	ldr	r0, [r4, #8]
c0de6a64:	1940      	adds	r0, r0, r5
c0de6a66:	d203      	bcs.n	c0de6a70 <buffer_move+0x2e>
c0de6a68:	6861      	ldr	r1, [r4, #4]
c0de6a6a:	4288      	cmp	r0, r1
c0de6a6c:	bf98      	it	ls
c0de6a6e:	60a0      	strls	r0, [r4, #8]
c0de6a70:	2001      	movs	r0, #1
c0de6a72:	bdb0      	pop	{r4, r5, r7, pc}

c0de6a74 <OUTLINED_FUNCTION_0>:
c0de6a74:	4604      	mov	r4, r0
c0de6a76:	460d      	mov	r5, r1
c0de6a78:	6840      	ldr	r0, [r0, #4]
c0de6a7a:	68a1      	ldr	r1, [r4, #8]
c0de6a7c:	1a46      	subs	r6, r0, r1
c0de6a7e:	4770      	bx	lr

c0de6a80 <bip32_derive_with_seed_init_privkey_256>:
c0de6a80:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6a84:	b095      	sub	sp, #84	@ 0x54
c0de6a86:	460d      	mov	r5, r1
c0de6a88:	4607      	mov	r7, r0
c0de6a8a:	a904      	add	r1, sp, #16
c0de6a8c:	469a      	mov	sl, r3
c0de6a8e:	4614      	mov	r4, r2
c0de6a90:	4628      	mov	r0, r5
c0de6a92:	f000 ffc3 	bl	c0de7a1c <cx_ecdomain_parameters_length>
c0de6a96:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6a9a:	4606      	mov	r6, r0
c0de6a9c:	b9e0      	cbnz	r0, c0de6ad8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6a9e:	9804      	ldr	r0, [sp, #16]
c0de6aa0:	2820      	cmp	r0, #32
c0de6aa2:	d117      	bne.n	c0de6ad4 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de6aa4:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de6aa6:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de6aaa:	ab05      	add	r3, sp, #20
c0de6aac:	e9cd 3200 	strd	r3, r2, [sp]
c0de6ab0:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de6ab4:	4638      	mov	r0, r7
c0de6ab6:	4629      	mov	r1, r5
c0de6ab8:	4622      	mov	r2, r4
c0de6aba:	4653      	mov	r3, sl
c0de6abc:	f000 f818 	bl	c0de6af0 <os_derive_bip32_with_seed_no_throw>
c0de6ac0:	4606      	mov	r6, r0
c0de6ac2:	b948      	cbnz	r0, c0de6ad8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6ac4:	9a04      	ldr	r2, [sp, #16]
c0de6ac6:	a905      	add	r1, sp, #20
c0de6ac8:	4628      	mov	r0, r5
c0de6aca:	4643      	mov	r3, r8
c0de6acc:	f000 fc12 	bl	c0de72f4 <cx_ecfp_init_private_key_no_throw>
c0de6ad0:	4606      	mov	r6, r0
c0de6ad2:	e001      	b.n	c0de6ad8 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6ad4:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6ad8:	a805      	add	r0, sp, #20
c0de6ada:	2140      	movs	r1, #64	@ 0x40
c0de6adc:	f001 f958 	bl	c0de7d90 <explicit_bzero>
c0de6ae0:	b116      	cbz	r6, c0de6ae8 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de6ae2:	4640      	mov	r0, r8
c0de6ae4:	f000 f89f 	bl	c0de6c26 <OUTLINED_FUNCTION_0>
c0de6ae8:	4630      	mov	r0, r6
c0de6aea:	b015      	add	sp, #84	@ 0x54
c0de6aec:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de6af0 <os_derive_bip32_with_seed_no_throw>:
c0de6af0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6af4:	b090      	sub	sp, #64	@ 0x40
c0de6af6:	f10d 0810 	add.w	r8, sp, #16
c0de6afa:	4607      	mov	r7, r0
c0de6afc:	469b      	mov	fp, r3
c0de6afe:	4616      	mov	r6, r2
c0de6b00:	460c      	mov	r4, r1
c0de6b02:	4640      	mov	r0, r8
c0de6b04:	f001 f97a 	bl	c0de7dfc <setjmp>
c0de6b08:	b285      	uxth	r5, r0
c0de6b0a:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de6b0e:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6b12:	b155      	cbz	r5, c0de6b2a <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6b14:	2000      	movs	r0, #0
c0de6b16:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6b1a:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6b1c:	f001 f822 	bl	c0de7b64 <try_context_set>
c0de6b20:	2140      	movs	r1, #64	@ 0x40
c0de6b22:	4650      	mov	r0, sl
c0de6b24:	f001 f934 	bl	c0de7d90 <explicit_bzero>
c0de6b28:	e012      	b.n	c0de6b50 <os_derive_bip32_with_seed_no_throw+0x60>
c0de6b2a:	a804      	add	r0, sp, #16
c0de6b2c:	f001 f81a 	bl	c0de7b64 <try_context_set>
c0de6b30:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de6b32:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6b34:	4668      	mov	r0, sp
c0de6b36:	4632      	mov	r2, r6
c0de6b38:	465b      	mov	r3, fp
c0de6b3a:	f8c0 a000 	str.w	sl, [r0]
c0de6b3e:	6041      	str	r1, [r0, #4]
c0de6b40:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de6b42:	6081      	str	r1, [r0, #8]
c0de6b44:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6b46:	60c1      	str	r1, [r0, #12]
c0de6b48:	4638      	mov	r0, r7
c0de6b4a:	4621      	mov	r1, r4
c0de6b4c:	f000 ff70 	bl	c0de7a30 <os_perso_derive_node_with_seed_key>
c0de6b50:	f001 f800 	bl	c0de7b54 <try_context_get>
c0de6b54:	4540      	cmp	r0, r8
c0de6b56:	d102      	bne.n	c0de6b5e <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6b58:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6b5a:	f001 f803 	bl	c0de7b64 <try_context_set>
c0de6b5e:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de6b62:	b918      	cbnz	r0, c0de6b6c <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6b64:	4628      	mov	r0, r5
c0de6b66:	b010      	add	sp, #64	@ 0x40
c0de6b68:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6b6c:	f000 fc51 	bl	c0de7412 <os_longjmp>

c0de6b70 <bip32_derive_with_seed_get_pubkey_256>:
c0de6b70:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6b72:	b0a1      	sub	sp, #132	@ 0x84
c0de6b74:	460e      	mov	r6, r1
c0de6b76:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6b78:	9103      	str	r1, [sp, #12]
c0de6b7a:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6b7c:	9102      	str	r1, [sp, #8]
c0de6b7e:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de6b80:	9101      	str	r1, [sp, #4]
c0de6b82:	a917      	add	r1, sp, #92	@ 0x5c
c0de6b84:	9100      	str	r1, [sp, #0]
c0de6b86:	4631      	mov	r1, r6
c0de6b88:	f7ff ff7a 	bl	c0de6a80 <bip32_derive_with_seed_init_privkey_256>
c0de6b8c:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de6b8e:	4605      	mov	r5, r0
c0de6b90:	b9b8      	cbnz	r0, c0de6bc2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6b92:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6b94:	2301      	movs	r3, #1
c0de6b96:	9000      	str	r0, [sp, #0]
c0de6b98:	af04      	add	r7, sp, #16
c0de6b9a:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6b9c:	4630      	mov	r0, r6
c0de6b9e:	4639      	mov	r1, r7
c0de6ba0:	f000 fba3 	bl	c0de72ea <cx_ecfp_generate_pair2_no_throw>
c0de6ba4:	4605      	mov	r5, r0
c0de6ba6:	b960      	cbnz	r0, c0de6bc2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6ba8:	9805      	ldr	r0, [sp, #20]
c0de6baa:	2841      	cmp	r0, #65	@ 0x41
c0de6bac:	d107      	bne.n	c0de6bbe <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de6bae:	f107 0108 	add.w	r1, r7, #8
c0de6bb2:	4620      	mov	r0, r4
c0de6bb4:	2241      	movs	r2, #65	@ 0x41
c0de6bb6:	f001 f8d3 	bl	c0de7d60 <__aeabi_memcpy>
c0de6bba:	2500      	movs	r5, #0
c0de6bbc:	e001      	b.n	c0de6bc2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6bbe:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de6bc2:	a817      	add	r0, sp, #92	@ 0x5c
c0de6bc4:	f000 f82f 	bl	c0de6c26 <OUTLINED_FUNCTION_0>
c0de6bc8:	b11d      	cbz	r5, c0de6bd2 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de6bca:	4620      	mov	r0, r4
c0de6bcc:	2141      	movs	r1, #65	@ 0x41
c0de6bce:	f001 f8df 	bl	c0de7d90 <explicit_bzero>
c0de6bd2:	4628      	mov	r0, r5
c0de6bd4:	b021      	add	sp, #132	@ 0x84
c0de6bd6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6bd8 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6bd8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6bda:	b08f      	sub	sp, #60	@ 0x3c
c0de6bdc:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de6bde:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de6be0:	683c      	ldr	r4, [r7, #0]
c0de6be2:	9503      	str	r5, [sp, #12]
c0de6be4:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de6be6:	9502      	str	r5, [sp, #8]
c0de6be8:	2500      	movs	r5, #0
c0de6bea:	9501      	str	r5, [sp, #4]
c0de6bec:	ad05      	add	r5, sp, #20
c0de6bee:	9500      	str	r5, [sp, #0]
c0de6bf0:	f7ff ff46 	bl	c0de6a80 <bip32_derive_with_seed_init_privkey_256>
c0de6bf4:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de6bf6:	4606      	mov	r6, r0
c0de6bf8:	b950      	cbnz	r0, c0de6c10 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6bfa:	ae14      	add	r6, sp, #80	@ 0x50
c0de6bfc:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de6bfe:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de6c00:	e9cd 6500 	strd	r6, r5, [sp]
c0de6c04:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6c08:	a805      	add	r0, sp, #20
c0de6c0a:	f000 fb69 	bl	c0de72e0 <cx_ecdsa_sign_no_throw>
c0de6c0e:	4606      	mov	r6, r0
c0de6c10:	a805      	add	r0, sp, #20
c0de6c12:	f000 f808 	bl	c0de6c26 <OUTLINED_FUNCTION_0>
c0de6c16:	b11e      	cbz	r6, c0de6c20 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6c18:	4628      	mov	r0, r5
c0de6c1a:	4621      	mov	r1, r4
c0de6c1c:	f001 f8b8 	bl	c0de7d90 <explicit_bzero>
c0de6c20:	4630      	mov	r0, r6
c0de6c22:	b00f      	add	sp, #60	@ 0x3c
c0de6c24:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6c26 <OUTLINED_FUNCTION_0>:
c0de6c26:	2128      	movs	r1, #40	@ 0x28
c0de6c28:	f001 b8b2 	b.w	c0de7d90 <explicit_bzero>

c0de6c2c <format_u64>:
c0de6c2c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6c30:	b1f9      	cbz	r1, c0de6c72 <format_u64+0x46>
c0de6c32:	4615      	mov	r5, r2
c0de6c34:	4604      	mov	r4, r0
c0de6c36:	f1a1 0801 	sub.w	r8, r1, #1
c0de6c3a:	2700      	movs	r7, #0
c0de6c3c:	2600      	movs	r6, #0
c0de6c3e:	f1b5 000a 	subs.w	r0, r5, #10
c0de6c42:	f173 0000 	sbcs.w	r0, r3, #0
c0de6c46:	d316      	bcc.n	c0de6c76 <format_u64+0x4a>
c0de6c48:	4619      	mov	r1, r3
c0de6c4a:	4628      	mov	r0, r5
c0de6c4c:	220a      	movs	r2, #10
c0de6c4e:	2300      	movs	r3, #0
c0de6c50:	f001 f894 	bl	c0de7d7c <__aeabi_uldivmod>
c0de6c54:	460b      	mov	r3, r1
c0de6c56:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6c5a:	1cba      	adds	r2, r7, #2
c0de6c5c:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de6c60:	4605      	mov	r5, r0
c0de6c62:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6c66:	55e1      	strb	r1, [r4, r7]
c0de6c68:	1c79      	adds	r1, r7, #1
c0de6c6a:	4542      	cmp	r2, r8
c0de6c6c:	460f      	mov	r7, r1
c0de6c6e:	d9e6      	bls.n	c0de6c3e <format_u64+0x12>
c0de6c70:	e012      	b.n	c0de6c98 <format_u64+0x6c>
c0de6c72:	2600      	movs	r6, #0
c0de6c74:	e010      	b.n	c0de6c98 <format_u64+0x6c>
c0de6c76:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6c7a:	19e1      	adds	r1, r4, r7
c0de6c7c:	55e0      	strb	r0, [r4, r7]
c0de6c7e:	2000      	movs	r0, #0
c0de6c80:	7048      	strb	r0, [r1, #1]
c0de6c82:	b2c1      	uxtb	r1, r0
c0de6c84:	428f      	cmp	r7, r1
c0de6c86:	d906      	bls.n	c0de6c96 <format_u64+0x6a>
c0de6c88:	5c62      	ldrb	r2, [r4, r1]
c0de6c8a:	5de3      	ldrb	r3, [r4, r7]
c0de6c8c:	3001      	adds	r0, #1
c0de6c8e:	5463      	strb	r3, [r4, r1]
c0de6c90:	55e2      	strb	r2, [r4, r7]
c0de6c92:	3f01      	subs	r7, #1
c0de6c94:	e7f5      	b.n	c0de6c82 <format_u64+0x56>
c0de6c96:	2601      	movs	r6, #1
c0de6c98:	4630      	mov	r0, r6
c0de6c9a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6c9e <format_fpu64>:
c0de6c9e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6ca2:	b086      	sub	sp, #24
c0de6ca4:	466c      	mov	r4, sp
c0de6ca6:	4688      	mov	r8, r1
c0de6ca8:	4605      	mov	r5, r0
c0de6caa:	2115      	movs	r1, #21
c0de6cac:	461e      	mov	r6, r3
c0de6cae:	4617      	mov	r7, r2
c0de6cb0:	4620      	mov	r0, r4
c0de6cb2:	f001 f85f 	bl	c0de7d74 <__aeabi_memclr>
c0de6cb6:	4620      	mov	r0, r4
c0de6cb8:	2115      	movs	r1, #21
c0de6cba:	463a      	mov	r2, r7
c0de6cbc:	4633      	mov	r3, r6
c0de6cbe:	f7ff ffb5 	bl	c0de6c2c <format_u64>
c0de6cc2:	b340      	cbz	r0, c0de6d16 <format_fpu64+0x78>
c0de6cc4:	466f      	mov	r7, sp
c0de6cc6:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6cc8:	4638      	mov	r0, r7
c0de6cca:	f001 f8af 	bl	c0de7e2c <strlen>
c0de6cce:	42b0      	cmp	r0, r6
c0de6cd0:	d910      	bls.n	c0de6cf4 <format_fpu64+0x56>
c0de6cd2:	1831      	adds	r1, r6, r0
c0de6cd4:	3101      	adds	r1, #1
c0de6cd6:	4541      	cmp	r1, r8
c0de6cd8:	d21d      	bcs.n	c0de6d16 <format_fpu64+0x78>
c0de6cda:	1b84      	subs	r4, r0, r6
c0de6cdc:	4628      	mov	r0, r5
c0de6cde:	4639      	mov	r1, r7
c0de6ce0:	4622      	mov	r2, r4
c0de6ce2:	f001 f83d 	bl	c0de7d60 <__aeabi_memcpy>
c0de6ce6:	1928      	adds	r0, r5, r4
c0de6ce8:	212e      	movs	r1, #46	@ 0x2e
c0de6cea:	4632      	mov	r2, r6
c0de6cec:	f800 1b01 	strb.w	r1, [r0], #1
c0de6cf0:	1939      	adds	r1, r7, r4
c0de6cf2:	e015      	b.n	c0de6d20 <format_fpu64+0x82>
c0de6cf4:	1a32      	subs	r2, r6, r0
c0de6cf6:	1c91      	adds	r1, r2, #2
c0de6cf8:	4541      	cmp	r1, r8
c0de6cfa:	d20c      	bcs.n	c0de6d16 <format_fpu64+0x78>
c0de6cfc:	202e      	movs	r0, #46	@ 0x2e
c0de6cfe:	2330      	movs	r3, #48	@ 0x30
c0de6d00:	2400      	movs	r4, #0
c0de6d02:	7068      	strb	r0, [r5, #1]
c0de6d04:	1ca8      	adds	r0, r5, #2
c0de6d06:	702b      	strb	r3, [r5, #0]
c0de6d08:	b2a5      	uxth	r5, r4
c0de6d0a:	42aa      	cmp	r2, r5
c0de6d0c:	d905      	bls.n	c0de6d1a <format_fpu64+0x7c>
c0de6d0e:	f800 3b01 	strb.w	r3, [r0], #1
c0de6d12:	3401      	adds	r4, #1
c0de6d14:	e7f8      	b.n	c0de6d08 <format_fpu64+0x6a>
c0de6d16:	2000      	movs	r0, #0
c0de6d18:	e005      	b.n	c0de6d26 <format_fpu64+0x88>
c0de6d1a:	eba8 0201 	sub.w	r2, r8, r1
c0de6d1e:	4669      	mov	r1, sp
c0de6d20:	f001 f89e 	bl	c0de7e60 <strncpy>
c0de6d24:	2001      	movs	r0, #1
c0de6d26:	b006      	add	sp, #24
c0de6d28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6d2c <format_hex>:
c0de6d2c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d2e:	4604      	mov	r4, r0
c0de6d30:	0048      	lsls	r0, r1, #1
c0de6d32:	f100 0c01 	add.w	ip, r0, #1
c0de6d36:	459c      	cmp	ip, r3
c0de6d38:	d902      	bls.n	c0de6d40 <format_hex+0x14>
c0de6d3a:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de6d3e:	e018      	b.n	c0de6d72 <format_hex+0x46>
c0de6d40:	480d      	ldr	r0, [pc, #52]	@ (c0de6d78 <format_hex+0x4c>)
c0de6d42:	2500      	movs	r5, #0
c0de6d44:	4478      	add	r0, pc
c0de6d46:	b191      	cbz	r1, c0de6d6e <format_hex+0x42>
c0de6d48:	1cef      	adds	r7, r5, #3
c0de6d4a:	429f      	cmp	r7, r3
c0de6d4c:	d80d      	bhi.n	c0de6d6a <format_hex+0x3e>
c0de6d4e:	7827      	ldrb	r7, [r4, #0]
c0de6d50:	3901      	subs	r1, #1
c0de6d52:	093f      	lsrs	r7, r7, #4
c0de6d54:	5dc7      	ldrb	r7, [r0, r7]
c0de6d56:	5557      	strb	r7, [r2, r5]
c0de6d58:	1957      	adds	r7, r2, r5
c0de6d5a:	3502      	adds	r5, #2
c0de6d5c:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de6d60:	f006 060f 	and.w	r6, r6, #15
c0de6d64:	5d86      	ldrb	r6, [r0, r6]
c0de6d66:	707e      	strb	r6, [r7, #1]
c0de6d68:	e7ed      	b.n	c0de6d46 <format_hex+0x1a>
c0de6d6a:	f105 0c01 	add.w	ip, r5, #1
c0de6d6e:	2000      	movs	r0, #0
c0de6d70:	5550      	strb	r0, [r2, r5]
c0de6d72:	4660      	mov	r0, ip
c0de6d74:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6d76:	bf00      	nop
c0de6d78:	00001557 	.word	0x00001557

c0de6d7c <app_ticker_event_callback>:
c0de6d7c:	4770      	bx	lr
	...

c0de6d80 <io_event>:
c0de6d80:	b580      	push	{r7, lr}
c0de6d82:	480a      	ldr	r0, [pc, #40]	@ (c0de6dac <io_event+0x2c>)
c0de6d84:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6d88:	290e      	cmp	r1, #14
c0de6d8a:	d005      	beq.n	c0de6d98 <io_event+0x18>
c0de6d8c:	2905      	cmp	r1, #5
c0de6d8e:	d108      	bne.n	c0de6da2 <io_event+0x22>
c0de6d90:	4448      	add	r0, r9
c0de6d92:	f000 fa05 	bl	c0de71a0 <ux_process_button_event>
c0de6d96:	e006      	b.n	c0de6da6 <io_event+0x26>
c0de6d98:	f7ff fff0 	bl	c0de6d7c <app_ticker_event_callback>
c0de6d9c:	f000 fa44 	bl	c0de7228 <ux_process_ticker_event>
c0de6da0:	e001      	b.n	c0de6da6 <io_event+0x26>
c0de6da2:	f000 fa59 	bl	c0de7258 <ux_process_default_event>
c0de6da6:	2001      	movs	r0, #1
c0de6da8:	bd80      	pop	{r7, pc}
c0de6daa:	bf00      	nop
c0de6dac:	0000085c 	.word	0x0000085c

c0de6db0 <io_init>:
c0de6db0:	4802      	ldr	r0, [pc, #8]	@ (c0de6dbc <io_init+0xc>)
c0de6db2:	2101      	movs	r1, #1
c0de6db4:	f809 1000 	strb.w	r1, [r9, r0]
c0de6db8:	4770      	bx	lr
c0de6dba:	bf00      	nop
c0de6dbc:	0000096c 	.word	0x0000096c

c0de6dc0 <io_recv_command>:
c0de6dc0:	b510      	push	{r4, lr}
c0de6dc2:	4c09      	ldr	r4, [pc, #36]	@ (c0de6de8 <io_recv_command+0x28>)
c0de6dc4:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6dc8:	2801      	cmp	r0, #1
c0de6dca:	d104      	bne.n	c0de6dd6 <io_recv_command+0x16>
c0de6dcc:	f000 fea0 	bl	c0de7b10 <os_io_start>
c0de6dd0:	2000      	movs	r0, #0
c0de6dd2:	f809 0004 	strb.w	r0, [r9, r4]
c0de6dd6:	2000      	movs	r0, #0
c0de6dd8:	2800      	cmp	r0, #0
c0de6dda:	dc03      	bgt.n	c0de6de4 <io_recv_command+0x24>
c0de6ddc:	2001      	movs	r0, #1
c0de6dde:	f7fc fe2f 	bl	c0de3a40 <io_legacy_apdu_rx>
c0de6de2:	e7f9      	b.n	c0de6dd8 <io_recv_command+0x18>
c0de6de4:	bd10      	pop	{r4, pc}
c0de6de6:	bf00      	nop
c0de6de8:	0000096c 	.word	0x0000096c

c0de6dec <io_send_response_buffers>:
c0de6dec:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6df0:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de6e84 <io_send_response_buffers+0x98>
c0de6df4:	4690      	mov	r8, r2
c0de6df6:	460f      	mov	r7, r1
c0de6df8:	4606      	mov	r6, r0
c0de6dfa:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6dfe:	2500      	movs	r5, #0
c0de6e00:	b1b6      	cbz	r6, c0de6e30 <io_send_response_buffers+0x44>
c0de6e02:	b1af      	cbz	r7, c0de6e30 <io_send_response_buffers+0x44>
c0de6e04:	2500      	movs	r5, #0
c0de6e06:	b19f      	cbz	r7, c0de6e30 <io_send_response_buffers+0x44>
c0de6e08:	eb09 000a 	add.w	r0, r9, sl
c0de6e0c:	1b62      	subs	r2, r4, r5
c0de6e0e:	1941      	adds	r1, r0, r5
c0de6e10:	4630      	mov	r0, r6
c0de6e12:	f7ff fe03 	bl	c0de6a1c <buffer_copy>
c0de6e16:	b130      	cbz	r0, c0de6e26 <io_send_response_buffers+0x3a>
c0de6e18:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6e1c:	360c      	adds	r6, #12
c0de6e1e:	3f01      	subs	r7, #1
c0de6e20:	4428      	add	r0, r5
c0de6e22:	1a45      	subs	r5, r0, r1
c0de6e24:	e7ef      	b.n	c0de6e06 <io_send_response_buffers+0x1a>
c0de6e26:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6e2a:	2600      	movs	r6, #0
c0de6e2c:	2700      	movs	r7, #0
c0de6e2e:	e7e6      	b.n	c0de6dfe <io_send_response_buffers+0x12>
c0de6e30:	fa1f f688 	uxth.w	r6, r8
c0de6e34:	eb09 000a 	add.w	r0, r9, sl
c0de6e38:	4629      	mov	r1, r5
c0de6e3a:	4632      	mov	r2, r6
c0de6e3c:	f000 f9aa 	bl	c0de7194 <write_u16_be>
c0de6e40:	4811      	ldr	r0, [pc, #68]	@ (c0de6e88 <io_send_response_buffers+0x9c>)
c0de6e42:	1ca9      	adds	r1, r5, #2
c0de6e44:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6e48:	b118      	cbz	r0, c0de6e52 <io_send_response_buffers+0x66>
c0de6e4a:	4810      	ldr	r0, [pc, #64]	@ (c0de6e8c <io_send_response_buffers+0xa0>)
c0de6e4c:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6e50:	b928      	cbnz	r0, c0de6e5e <io_send_response_buffers+0x72>
c0de6e52:	f000 f81f 	bl	c0de6e94 <OUTLINED_FUNCTION_0>
c0de6e56:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de6e5a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de6e5e:	f000 f819 	bl	c0de6e94 <OUTLINED_FUNCTION_0>
c0de6e62:	2800      	cmp	r0, #0
c0de6e64:	d40a      	bmi.n	c0de6e7c <io_send_response_buffers+0x90>
c0de6e66:	480a      	ldr	r0, [pc, #40]	@ (c0de6e90 <io_send_response_buffers+0xa4>)
c0de6e68:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de6e6c:	fab1 f181 	clz	r1, r1
c0de6e70:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6e74:	0949      	lsrs	r1, r1, #5
c0de6e76:	7001      	strb	r1, [r0, #0]
c0de6e78:	f000 fe1a 	bl	c0de7ab0 <os_lib_end>
c0de6e7c:	20ff      	movs	r0, #255	@ 0xff
c0de6e7e:	f000 fe33 	bl	c0de7ae8 <os_sched_exit>
c0de6e82:	bf00      	nop
c0de6e84:	000004b4 	.word	0x000004b4
c0de6e88:	0000097c 	.word	0x0000097c
c0de6e8c:	0000097d 	.word	0x0000097d
c0de6e90:	00000980 	.word	0x00000980

c0de6e94 <OUTLINED_FUNCTION_0>:
c0de6e94:	eb09 000a 	add.w	r0, r9, sl
c0de6e98:	b289      	uxth	r1, r1
c0de6e9a:	f7fc bdbd 	b.w	c0de3a18 <io_legacy_apdu_tx>

c0de6e9e <app_exit>:
c0de6e9e:	20ff      	movs	r0, #255	@ 0xff
c0de6ea0:	f000 fe22 	bl	c0de7ae8 <os_sched_exit>

c0de6ea4 <common_app_init>:
c0de6ea4:	b580      	push	{r7, lr}
c0de6ea6:	f000 fa4f 	bl	c0de7348 <nbgl_objInit>
c0de6eaa:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6eae:	f7fc bea3 	b.w	c0de3bf8 <io_seproxyhal_init>
	...

c0de6eb4 <standalone_app_main>:
c0de6eb4:	b5b0      	push	{r4, r5, r7, lr}
c0de6eb6:	b08c      	sub	sp, #48	@ 0x30
c0de6eb8:	4816      	ldr	r0, [pc, #88]	@ (c0de6f14 <standalone_app_main+0x60>)
c0de6eba:	2500      	movs	r5, #0
c0de6ebc:	466c      	mov	r4, sp
c0de6ebe:	f809 5000 	strb.w	r5, [r9, r0]
c0de6ec2:	4815      	ldr	r0, [pc, #84]	@ (c0de6f18 <standalone_app_main+0x64>)
c0de6ec4:	f849 5000 	str.w	r5, [r9, r0]
c0de6ec8:	4814      	ldr	r0, [pc, #80]	@ (c0de6f1c <standalone_app_main+0x68>)
c0de6eca:	f809 5000 	strb.w	r5, [r9, r0]
c0de6ece:	4620      	mov	r0, r4
c0de6ed0:	f000 ff94 	bl	c0de7dfc <setjmp>
c0de6ed4:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6ed8:	0400      	lsls	r0, r0, #16
c0de6eda:	d108      	bne.n	c0de6eee <standalone_app_main+0x3a>
c0de6edc:	4668      	mov	r0, sp
c0de6ede:	f000 fe41 	bl	c0de7b64 <try_context_set>
c0de6ee2:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6ee4:	f7ff ffde 	bl	c0de6ea4 <common_app_init>
c0de6ee8:	f7f9 fa36 	bl	c0de0358 <app_main>
c0de6eec:	e004      	b.n	c0de6ef8 <standalone_app_main+0x44>
c0de6eee:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6ef0:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de6ef4:	f000 fe36 	bl	c0de7b64 <try_context_set>
c0de6ef8:	f000 fe2c 	bl	c0de7b54 <try_context_get>
c0de6efc:	42a0      	cmp	r0, r4
c0de6efe:	d102      	bne.n	c0de6f06 <standalone_app_main+0x52>
c0de6f00:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6f02:	f000 fe2f 	bl	c0de7b64 <try_context_set>
c0de6f06:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de6f0a:	b908      	cbnz	r0, c0de6f10 <standalone_app_main+0x5c>
c0de6f0c:	f7ff ffc7 	bl	c0de6e9e <app_exit>
c0de6f10:	f000 fa7f 	bl	c0de7412 <os_longjmp>
c0de6f14:	0000097c 	.word	0x0000097c
c0de6f18:	00000980 	.word	0x00000980
c0de6f1c:	0000097d 	.word	0x0000097d

c0de6f20 <library_app_main>:
c0de6f20:	b5b0      	push	{r4, r5, r7, lr}
c0de6f22:	b08c      	sub	sp, #48	@ 0x30
c0de6f24:	466c      	mov	r4, sp
c0de6f26:	4605      	mov	r5, r0
c0de6f28:	4620      	mov	r0, r4
c0de6f2a:	f000 ff67 	bl	c0de7dfc <setjmp>
c0de6f2e:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6f32:	0400      	lsls	r0, r0, #16
c0de6f34:	d124      	bne.n	c0de6f80 <library_app_main+0x60>
c0de6f36:	4668      	mov	r0, sp
c0de6f38:	f000 fe14 	bl	c0de7b64 <try_context_set>
c0de6f3c:	900a      	str	r0, [sp, #40]	@ 0x28
c0de6f3e:	6868      	ldr	r0, [r5, #4]
c0de6f40:	2804      	cmp	r0, #4
c0de6f42:	d024      	beq.n	c0de6f8e <library_app_main+0x6e>
c0de6f44:	2803      	cmp	r0, #3
c0de6f46:	d026      	beq.n	c0de6f96 <library_app_main+0x76>
c0de6f48:	2802      	cmp	r0, #2
c0de6f4a:	d127      	bne.n	c0de6f9c <library_app_main+0x7c>
c0de6f4c:	68e8      	ldr	r0, [r5, #12]
c0de6f4e:	f7fa fc99 	bl	c0de1884 <swap_copy_transaction_parameters>
c0de6f52:	b318      	cbz	r0, c0de6f9c <library_app_main+0x7c>
c0de6f54:	4816      	ldr	r0, [pc, #88]	@ (c0de6fb0 <library_app_main+0x90>)
c0de6f56:	2201      	movs	r2, #1
c0de6f58:	f809 2000 	strb.w	r2, [r9, r0]
c0de6f5c:	4815      	ldr	r0, [pc, #84]	@ (c0de6fb4 <library_app_main+0x94>)
c0de6f5e:	2200      	movs	r2, #0
c0de6f60:	f809 2000 	strb.w	r2, [r9, r0]
c0de6f64:	4a14      	ldr	r2, [pc, #80]	@ (c0de6fb8 <library_app_main+0x98>)
c0de6f66:	68e8      	ldr	r0, [r5, #12]
c0de6f68:	3020      	adds	r0, #32
c0de6f6a:	f849 0002 	str.w	r0, [r9, r2]
c0de6f6e:	f7ff ff99 	bl	c0de6ea4 <common_app_init>
c0de6f72:	4812      	ldr	r0, [pc, #72]	@ (c0de6fbc <library_app_main+0x9c>)
c0de6f74:	4478      	add	r0, pc
c0de6f76:	f7fe fbc9 	bl	c0de570c <nbgl_useCaseSpinner>
c0de6f7a:	f7f9 f9ed 	bl	c0de0358 <app_main>
c0de6f7e:	e00d      	b.n	c0de6f9c <library_app_main+0x7c>
c0de6f80:	2000      	movs	r0, #0
c0de6f82:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6f86:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6f88:	f000 fdec 	bl	c0de7b64 <try_context_set>
c0de6f8c:	e006      	b.n	c0de6f9c <library_app_main+0x7c>
c0de6f8e:	68e8      	ldr	r0, [r5, #12]
c0de6f90:	f7fa fc4c 	bl	c0de182c <swap_handle_get_printable_amount>
c0de6f94:	e002      	b.n	c0de6f9c <library_app_main+0x7c>
c0de6f96:	68e8      	ldr	r0, [r5, #12]
c0de6f98:	f7fa fbed 	bl	c0de1776 <swap_handle_check_address>
c0de6f9c:	f000 fdda 	bl	c0de7b54 <try_context_get>
c0de6fa0:	42a0      	cmp	r0, r4
c0de6fa2:	d102      	bne.n	c0de6faa <library_app_main+0x8a>
c0de6fa4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6fa6:	f000 fddd 	bl	c0de7b64 <try_context_set>
c0de6faa:	f000 fd81 	bl	c0de7ab0 <os_lib_end>
c0de6fae:	bf00      	nop
c0de6fb0:	0000097c 	.word	0x0000097c
c0de6fb4:	0000097d 	.word	0x0000097d
c0de6fb8:	00000980 	.word	0x00000980
c0de6fbc:	00001155 	.word	0x00001155

c0de6fc0 <apdu_parser>:
c0de6fc0:	2a04      	cmp	r2, #4
c0de6fc2:	d316      	bcc.n	c0de6ff2 <apdu_parser+0x32>
c0de6fc4:	d102      	bne.n	c0de6fcc <apdu_parser+0xc>
c0de6fc6:	2300      	movs	r3, #0
c0de6fc8:	7103      	strb	r3, [r0, #4]
c0de6fca:	e004      	b.n	c0de6fd6 <apdu_parser+0x16>
c0de6fcc:	790b      	ldrb	r3, [r1, #4]
c0de6fce:	3a05      	subs	r2, #5
c0de6fd0:	429a      	cmp	r2, r3
c0de6fd2:	7103      	strb	r3, [r0, #4]
c0de6fd4:	d10d      	bne.n	c0de6ff2 <apdu_parser+0x32>
c0de6fd6:	780a      	ldrb	r2, [r1, #0]
c0de6fd8:	2b00      	cmp	r3, #0
c0de6fda:	7002      	strb	r2, [r0, #0]
c0de6fdc:	784a      	ldrb	r2, [r1, #1]
c0de6fde:	7042      	strb	r2, [r0, #1]
c0de6fe0:	788a      	ldrb	r2, [r1, #2]
c0de6fe2:	7082      	strb	r2, [r0, #2]
c0de6fe4:	bf18      	it	ne
c0de6fe6:	1d4b      	addne	r3, r1, #5
c0de6fe8:	78c9      	ldrb	r1, [r1, #3]
c0de6fea:	6083      	str	r3, [r0, #8]
c0de6fec:	70c1      	strb	r1, [r0, #3]
c0de6fee:	2001      	movs	r0, #1
c0de6ff0:	4770      	bx	lr
c0de6ff2:	2000      	movs	r0, #0
c0de6ff4:	4770      	bx	lr

c0de6ff6 <read_u32_be>:
c0de6ff6:	5c42      	ldrb	r2, [r0, r1]
c0de6ff8:	4408      	add	r0, r1
c0de6ffa:	7841      	ldrb	r1, [r0, #1]
c0de6ffc:	7883      	ldrb	r3, [r0, #2]
c0de6ffe:	78c0      	ldrb	r0, [r0, #3]
c0de7000:	0409      	lsls	r1, r1, #16
c0de7002:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de7006:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de700a:	4408      	add	r0, r1
c0de700c:	4770      	bx	lr

c0de700e <read_u64_be>:
c0de700e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7010:	1842      	adds	r2, r0, r1
c0de7012:	5c40      	ldrb	r0, [r0, r1]
c0de7014:	7917      	ldrb	r7, [r2, #4]
c0de7016:	7953      	ldrb	r3, [r2, #5]
c0de7018:	7854      	ldrb	r4, [r2, #1]
c0de701a:	7895      	ldrb	r5, [r2, #2]
c0de701c:	78d6      	ldrb	r6, [r2, #3]
c0de701e:	063f      	lsls	r7, r7, #24
c0de7020:	0421      	lsls	r1, r4, #16
c0de7022:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de7026:	7997      	ldrb	r7, [r2, #6]
c0de7028:	79d2      	ldrb	r2, [r2, #7]
c0de702a:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de702e:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de7032:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de7036:	1981      	adds	r1, r0, r6
c0de7038:	441a      	add	r2, r3
c0de703a:	4610      	mov	r0, r2
c0de703c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de703e <read_u16_le>:
c0de703e:	5c42      	ldrb	r2, [r0, r1]
c0de7040:	4408      	add	r0, r1
c0de7042:	7840      	ldrb	r0, [r0, #1]
c0de7044:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7048:	b280      	uxth	r0, r0
c0de704a:	4770      	bx	lr

c0de704c <read_u32_le>:
c0de704c:	5c42      	ldrb	r2, [r0, r1]
c0de704e:	4408      	add	r0, r1
c0de7050:	7841      	ldrb	r1, [r0, #1]
c0de7052:	7883      	ldrb	r3, [r0, #2]
c0de7054:	78c0      	ldrb	r0, [r0, #3]
c0de7056:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de705a:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de705e:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de7062:	4770      	bx	lr

c0de7064 <read_u64_le>:
c0de7064:	b5b0      	push	{r4, r5, r7, lr}
c0de7066:	5c42      	ldrb	r2, [r0, r1]
c0de7068:	4401      	add	r1, r0
c0de706a:	7848      	ldrb	r0, [r1, #1]
c0de706c:	788b      	ldrb	r3, [r1, #2]
c0de706e:	790d      	ldrb	r5, [r1, #4]
c0de7070:	78cc      	ldrb	r4, [r1, #3]
c0de7072:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7076:	794a      	ldrb	r2, [r1, #5]
c0de7078:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de707c:	798b      	ldrb	r3, [r1, #6]
c0de707e:	79c9      	ldrb	r1, [r1, #7]
c0de7080:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de7084:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de7088:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de708c:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de7090:	bdb0      	pop	{r4, r5, r7, pc}

c0de7092 <send_swap_error_simple>:
c0de7092:	b082      	sub	sp, #8
c0de7094:	2300      	movs	r3, #0
c0de7096:	9300      	str	r3, [sp, #0]
c0de7098:	2300      	movs	r3, #0
c0de709a:	f000 f801 	bl	c0de70a0 <send_swap_error_with_buffers>
	...

c0de70a0 <send_swap_error_with_buffers>:
c0de70a0:	b09c      	sub	sp, #112	@ 0x70
c0de70a2:	4604      	mov	r4, r0
c0de70a4:	4815      	ldr	r0, [pc, #84]	@ (c0de70fc <send_swap_error_with_buffers+0x5c>)
c0de70a6:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de70aa:	b320      	cbz	r0, c0de70f6 <send_swap_error_with_buffers+0x56>
c0de70ac:	4814      	ldr	r0, [pc, #80]	@ (c0de7100 <send_swap_error_with_buffers+0x60>)
c0de70ae:	461d      	mov	r5, r3
c0de70b0:	2301      	movs	r3, #1
c0de70b2:	466e      	mov	r6, sp
c0de70b4:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de70b6:	f809 3000 	strb.w	r3, [r9, r0]
c0de70ba:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de70be:	f106 0008 	add.w	r0, r6, #8
c0de70c2:	2164      	movs	r1, #100	@ 0x64
c0de70c4:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de70c8:	f000 fe54 	bl	c0de7d74 <__aeabi_memclr>
c0de70cc:	2002      	movs	r0, #2
c0de70ce:	4629      	mov	r1, r5
c0de70d0:	9001      	str	r0, [sp, #4]
c0de70d2:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de70d6:	2f08      	cmp	r7, #8
c0de70d8:	9000      	str	r0, [sp, #0]
c0de70da:	bf28      	it	cs
c0de70dc:	2708      	movcs	r7, #8
c0de70de:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de70e2:	0082      	lsls	r2, r0, #2
c0de70e4:	f106 000c 	add.w	r0, r6, #12
c0de70e8:	f000 fe3a 	bl	c0de7d60 <__aeabi_memcpy>
c0de70ec:	1c79      	adds	r1, r7, #1
c0de70ee:	4630      	mov	r0, r6
c0de70f0:	4622      	mov	r2, r4
c0de70f2:	f7ff fe7b 	bl	c0de6dec <io_send_response_buffers>
c0de70f6:	2000      	movs	r0, #0
c0de70f8:	f000 fcf6 	bl	c0de7ae8 <os_sched_exit>
c0de70fc:	0000097c 	.word	0x0000097c
c0de7100:	0000097d 	.word	0x0000097d

c0de7104 <swap_str_to_u64>:
c0de7104:	2908      	cmp	r1, #8
c0de7106:	d812      	bhi.n	c0de712e <swap_str_to_u64+0x2a>
c0de7108:	b570      	push	{r4, r5, r6, lr}
c0de710a:	2500      	movs	r5, #0
c0de710c:	460b      	mov	r3, r1
c0de710e:	2400      	movs	r4, #0
c0de7110:	b14b      	cbz	r3, c0de7126 <swap_str_to_u64+0x22>
c0de7112:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de7116:	0224      	lsls	r4, r4, #8
c0de7118:	3b01      	subs	r3, #1
c0de711a:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de711e:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de7122:	4635      	mov	r5, r6
c0de7124:	e7f4      	b.n	c0de7110 <swap_str_to_u64+0xc>
c0de7126:	e9c2 5400 	strd	r5, r4, [r2]
c0de712a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de712e:	2000      	movs	r0, #0
c0de7130:	2909      	cmp	r1, #9
c0de7132:	bf38      	it	cc
c0de7134:	2001      	movcc	r0, #1
c0de7136:	4770      	bx	lr

c0de7138 <varint_read>:
c0de7138:	b510      	push	{r4, lr}
c0de713a:	b1d9      	cbz	r1, c0de7174 <varint_read+0x3c>
c0de713c:	4614      	mov	r4, r2
c0de713e:	4602      	mov	r2, r0
c0de7140:	7800      	ldrb	r0, [r0, #0]
c0de7142:	28ff      	cmp	r0, #255	@ 0xff
c0de7144:	d00c      	beq.n	c0de7160 <varint_read+0x28>
c0de7146:	28fe      	cmp	r0, #254	@ 0xfe
c0de7148:	d012      	beq.n	c0de7170 <varint_read+0x38>
c0de714a:	28fd      	cmp	r0, #253	@ 0xfd
c0de714c:	d115      	bne.n	c0de717a <varint_read+0x42>
c0de714e:	2903      	cmp	r1, #3
c0de7150:	d310      	bcc.n	c0de7174 <varint_read+0x3c>
c0de7152:	4610      	mov	r0, r2
c0de7154:	2101      	movs	r1, #1
c0de7156:	f7ff ff72 	bl	c0de703e <read_u16_le>
c0de715a:	2100      	movs	r1, #0
c0de715c:	2203      	movs	r2, #3
c0de715e:	e015      	b.n	c0de718c <varint_read+0x54>
c0de7160:	2909      	cmp	r1, #9
c0de7162:	d307      	bcc.n	c0de7174 <varint_read+0x3c>
c0de7164:	4610      	mov	r0, r2
c0de7166:	2101      	movs	r1, #1
c0de7168:	f7ff ff7c 	bl	c0de7064 <read_u64_le>
c0de716c:	2209      	movs	r2, #9
c0de716e:	e00d      	b.n	c0de718c <varint_read+0x54>
c0de7170:	2905      	cmp	r1, #5
c0de7172:	d205      	bcs.n	c0de7180 <varint_read+0x48>
c0de7174:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de7178:	e00a      	b.n	c0de7190 <varint_read+0x58>
c0de717a:	2100      	movs	r1, #0
c0de717c:	2201      	movs	r2, #1
c0de717e:	e005      	b.n	c0de718c <varint_read+0x54>
c0de7180:	4610      	mov	r0, r2
c0de7182:	2101      	movs	r1, #1
c0de7184:	f7ff ff62 	bl	c0de704c <read_u32_le>
c0de7188:	2100      	movs	r1, #0
c0de718a:	2205      	movs	r2, #5
c0de718c:	e9c4 0100 	strd	r0, r1, [r4]
c0de7190:	4610      	mov	r0, r2
c0de7192:	bd10      	pop	{r4, pc}

c0de7194 <write_u16_be>:
c0de7194:	0a13      	lsrs	r3, r2, #8
c0de7196:	5443      	strb	r3, [r0, r1]
c0de7198:	4408      	add	r0, r1
c0de719a:	7042      	strb	r2, [r0, #1]
c0de719c:	4770      	bx	lr
	...

c0de71a0 <ux_process_button_event>:
c0de71a0:	b5b0      	push	{r4, r5, r7, lr}
c0de71a2:	4604      	mov	r4, r0
c0de71a4:	2001      	movs	r0, #1
c0de71a6:	f000 f815 	bl	c0de71d4 <ux_forward_event>
c0de71aa:	4605      	mov	r5, r0
c0de71ac:	f000 f8d1 	bl	c0de7352 <nbgl_objAllowDrawing>
c0de71b0:	b165      	cbz	r5, c0de71cc <ux_process_button_event+0x2c>
c0de71b2:	4807      	ldr	r0, [pc, #28]	@ (c0de71d0 <ux_process_button_event+0x30>)
c0de71b4:	2164      	movs	r1, #100	@ 0x64
c0de71b6:	f859 0000 	ldr.w	r0, [r9, r0]
c0de71ba:	4341      	muls	r1, r0
c0de71bc:	78e0      	ldrb	r0, [r4, #3]
c0de71be:	0840      	lsrs	r0, r0, #1
c0de71c0:	f000 f917 	bl	c0de73f2 <nbgl_buttonsHandler>
c0de71c4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de71c8:	f000 b8b9 	b.w	c0de733e <nbgl_refresh>
c0de71cc:	bdb0      	pop	{r4, r5, r7, pc}
c0de71ce:	bf00      	nop
c0de71d0:	00000984 	.word	0x00000984

c0de71d4 <ux_forward_event>:
c0de71d4:	b5b0      	push	{r4, r5, r7, lr}
c0de71d6:	4604      	mov	r4, r0
c0de71d8:	4812      	ldr	r0, [pc, #72]	@ (c0de7224 <ux_forward_event+0x50>)
c0de71da:	2101      	movs	r1, #1
c0de71dc:	f809 1000 	strb.w	r1, [r9, r0]
c0de71e0:	eb09 0500 	add.w	r5, r9, r0
c0de71e4:	2000      	movs	r0, #0
c0de71e6:	6068      	str	r0, [r5, #4]
c0de71e8:	4628      	mov	r0, r5
c0de71ea:	f000 fc57 	bl	c0de7a9c <os_ux>
c0de71ee:	2004      	movs	r0, #4
c0de71f0:	f000 fcc2 	bl	c0de7b78 <os_sched_last_status>
c0de71f4:	2869      	cmp	r0, #105	@ 0x69
c0de71f6:	6068      	str	r0, [r5, #4]
c0de71f8:	d108      	bne.n	c0de720c <ux_forward_event+0x38>
c0de71fa:	2001      	movs	r0, #1
c0de71fc:	f000 f8a9 	bl	c0de7352 <nbgl_objAllowDrawing>
c0de7200:	f000 f8b6 	bl	c0de7370 <nbgl_screenRedraw>
c0de7204:	f000 f89b 	bl	c0de733e <nbgl_refresh>
c0de7208:	2000      	movs	r0, #0
c0de720a:	bdb0      	pop	{r4, r5, r7, pc}
c0de720c:	b144      	cbz	r4, c0de7220 <ux_forward_event+0x4c>
c0de720e:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de7212:	bf18      	it	ne
c0de7214:	2101      	movne	r1, #1
c0de7216:	2800      	cmp	r0, #0
c0de7218:	bf18      	it	ne
c0de721a:	2001      	movne	r0, #1
c0de721c:	4008      	ands	r0, r1
c0de721e:	bdb0      	pop	{r4, r5, r7, pc}
c0de7220:	2001      	movs	r0, #1
c0de7222:	bdb0      	pop	{r4, r5, r7, pc}
c0de7224:	00000970 	.word	0x00000970

c0de7228 <ux_process_ticker_event>:
c0de7228:	b510      	push	{r4, lr}
c0de722a:	480a      	ldr	r0, [pc, #40]	@ (c0de7254 <ux_process_ticker_event+0x2c>)
c0de722c:	f859 1000 	ldr.w	r1, [r9, r0]
c0de7230:	3101      	adds	r1, #1
c0de7232:	f849 1000 	str.w	r1, [r9, r0]
c0de7236:	2001      	movs	r0, #1
c0de7238:	f7ff ffcc 	bl	c0de71d4 <ux_forward_event>
c0de723c:	4604      	mov	r4, r0
c0de723e:	f000 f888 	bl	c0de7352 <nbgl_objAllowDrawing>
c0de7242:	b134      	cbz	r4, c0de7252 <ux_process_ticker_event+0x2a>
c0de7244:	2064      	movs	r0, #100	@ 0x64
c0de7246:	f000 f89d 	bl	c0de7384 <nbgl_screenHandler>
c0de724a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de724e:	f000 b876 	b.w	c0de733e <nbgl_refresh>
c0de7252:	bd10      	pop	{r4, pc}
c0de7254:	00000984 	.word	0x00000984

c0de7258 <ux_process_default_event>:
c0de7258:	2000      	movs	r0, #0
c0de725a:	f7ff bfbb 	b.w	c0de71d4 <ux_forward_event>

c0de725e <hash_iovec_ex>:
c0de725e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7262:	468a      	mov	sl, r1
c0de7264:	4611      	mov	r1, r2
c0de7266:	461a      	mov	r2, r3
c0de7268:	4605      	mov	r5, r0
c0de726a:	f000 f84d 	bl	c0de7308 <cx_hash_init_ex>
c0de726e:	4607      	mov	r7, r0
c0de7270:	b9a8      	cbnz	r0, c0de729e <hash_iovec_ex+0x40>
c0de7272:	f10d 0820 	add.w	r8, sp, #32
c0de7276:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de727a:	1d04      	adds	r4, r0, #4
c0de727c:	b156      	cbz	r6, c0de7294 <hash_iovec_ex+0x36>
c0de727e:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de7282:	f854 2b08 	ldr.w	r2, [r4], #8
c0de7286:	4628      	mov	r0, r5
c0de7288:	f000 f843 	bl	c0de7312 <cx_hash_update>
c0de728c:	3e01      	subs	r6, #1
c0de728e:	2800      	cmp	r0, #0
c0de7290:	d0f4      	beq.n	c0de727c <hash_iovec_ex+0x1e>
c0de7292:	e003      	b.n	c0de729c <hash_iovec_ex+0x3e>
c0de7294:	4628      	mov	r0, r5
c0de7296:	4641      	mov	r1, r8
c0de7298:	f000 f831 	bl	c0de72fe <cx_hash_final>
c0de729c:	4607      	mov	r7, r0
c0de729e:	4628      	mov	r0, r5
c0de72a0:	4651      	mov	r1, sl
c0de72a2:	f000 fd75 	bl	c0de7d90 <explicit_bzero>
c0de72a6:	4638      	mov	r0, r7
c0de72a8:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de72ac <cx_keccak_256_hash_iovec>:
c0de72ac:	b580      	push	{r7, lr}
c0de72ae:	b0ee      	sub	sp, #440	@ 0x1b8
c0de72b0:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de72b4:	a804      	add	r0, sp, #16
c0de72b6:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de72ba:	2206      	movs	r2, #6
c0de72bc:	2320      	movs	r3, #32
c0de72be:	f7ff ffce 	bl	c0de725e <hash_iovec_ex>
c0de72c2:	b06e      	add	sp, #440	@ 0x1b8
c0de72c4:	bd80      	pop	{r7, pc}

c0de72c6 <cx_blake2b_512_hash_iovec>:
c0de72c6:	b580      	push	{r7, lr}
c0de72c8:	b0c4      	sub	sp, #272	@ 0x110
c0de72ca:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de72ce:	a804      	add	r0, sp, #16
c0de72d0:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de72d4:	2209      	movs	r2, #9
c0de72d6:	2340      	movs	r3, #64	@ 0x40
c0de72d8:	f7ff ffc1 	bl	c0de725e <hash_iovec_ex>
c0de72dc:	b044      	add	sp, #272	@ 0x110
c0de72de:	bd80      	pop	{r7, pc}

c0de72e0 <cx_ecdsa_sign_no_throw>:
c0de72e0:	b403      	push	{r0, r1}
c0de72e2:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de72e6:	f000 b823 	b.w	c0de7330 <cx_trampoline_helper>

c0de72ea <cx_ecfp_generate_pair2_no_throw>:
c0de72ea:	b403      	push	{r0, r1}
c0de72ec:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de72f0:	f000 b81e 	b.w	c0de7330 <cx_trampoline_helper>

c0de72f4 <cx_ecfp_init_private_key_no_throw>:
c0de72f4:	b403      	push	{r0, r1}
c0de72f6:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de72fa:	f000 b819 	b.w	c0de7330 <cx_trampoline_helper>

c0de72fe <cx_hash_final>:
c0de72fe:	b403      	push	{r0, r1}
c0de7300:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de7304:	f000 b814 	b.w	c0de7330 <cx_trampoline_helper>

c0de7308 <cx_hash_init_ex>:
c0de7308:	b403      	push	{r0, r1}
c0de730a:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de730e:	f000 b80f 	b.w	c0de7330 <cx_trampoline_helper>

c0de7312 <cx_hash_update>:
c0de7312:	b403      	push	{r0, r1}
c0de7314:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de7318:	f000 b80a 	b.w	c0de7330 <cx_trampoline_helper>

c0de731c <cx_rng_no_throw>:
c0de731c:	b403      	push	{r0, r1}
c0de731e:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de7322:	f000 b805 	b.w	c0de7330 <cx_trampoline_helper>
	...

c0de7328 <cx_aes_siv_reset>:
c0de7328:	b403      	push	{r0, r1}
c0de732a:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de732e:	e7ff      	b.n	c0de7330 <cx_trampoline_helper>

c0de7330 <cx_trampoline_helper>:
c0de7330:	4900      	ldr	r1, [pc, #0]	@ (c0de7334 <cx_trampoline_helper+0x4>)
c0de7332:	4708      	bx	r1
c0de7334:	00808001 	.word	0x00808001

c0de7338 <assert_exit>:
c0de7338:	20ff      	movs	r0, #255	@ 0xff
c0de733a:	f000 fbd5 	bl	c0de7ae8 <os_sched_exit>

c0de733e <nbgl_refresh>:
c0de733e:	b403      	push	{r0, r1}
c0de7340:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de7344:	f000 b85e 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de7348 <nbgl_objInit>:
c0de7348:	b403      	push	{r0, r1}
c0de734a:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de734e:	f000 b859 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de7352 <nbgl_objAllowDrawing>:
c0de7352:	b403      	push	{r0, r1}
c0de7354:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de7358:	f000 b854 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de735c <nbgl_screenSet>:
c0de735c:	b403      	push	{r0, r1}
c0de735e:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de7362:	f000 b84f 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de7366 <nbgl_screenPush>:
c0de7366:	b403      	push	{r0, r1}
c0de7368:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de736c:	f000 b84a 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de7370 <nbgl_screenRedraw>:
c0de7370:	b403      	push	{r0, r1}
c0de7372:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de7376:	f000 b845 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de737a <nbgl_screenPop>:
c0de737a:	b403      	push	{r0, r1}
c0de737c:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de7380:	f000 b840 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de7384 <nbgl_screenHandler>:
c0de7384:	b403      	push	{r0, r1}
c0de7386:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de738a:	f000 b83b 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de738e <nbgl_objPoolGet>:
c0de738e:	b403      	push	{r0, r1}
c0de7390:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de7394:	f000 b836 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de7398 <nbgl_containerPoolGet>:
c0de7398:	b403      	push	{r0, r1}
c0de739a:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de739e:	f000 b831 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73a2 <nbgl_getFont>:
c0de73a2:	b403      	push	{r0, r1}
c0de73a4:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de73a8:	f000 b82c 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73ac <nbgl_getFontLineHeight>:
c0de73ac:	b403      	push	{r0, r1}
c0de73ae:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de73b2:	f000 b827 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73b6 <nbgl_getTextMaxLenAndWidth>:
c0de73b6:	b403      	push	{r0, r1}
c0de73b8:	f04f 00b3 	mov.w	r0, #179	@ 0xb3
c0de73bc:	f000 b822 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73c0 <nbgl_getTextNbLinesInWidth>:
c0de73c0:	b403      	push	{r0, r1}
c0de73c2:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de73c6:	f000 b81d 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73ca <nbgl_getTextNbPagesInWidth>:
c0de73ca:	b403      	push	{r0, r1}
c0de73cc:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de73d0:	f000 b818 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73d4 <nbgl_getTextWidth>:
c0de73d4:	b403      	push	{r0, r1}
c0de73d6:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de73da:	f000 b813 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73de <nbgl_getTextMaxLenInNbLines>:
c0de73de:	b403      	push	{r0, r1}
c0de73e0:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de73e4:	f000 b80e 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73e8 <nbgl_textReduceOnNbLines>:
c0de73e8:	b403      	push	{r0, r1}
c0de73ea:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de73ee:	f000 b809 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73f2 <nbgl_buttonsHandler>:
c0de73f2:	b403      	push	{r0, r1}
c0de73f4:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de73f8:	f000 b804 	b.w	c0de7404 <nbgl_trampoline_helper>

c0de73fc <pic_init>:
c0de73fc:	b403      	push	{r0, r1}
c0de73fe:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de7402:	e7ff      	b.n	c0de7404 <nbgl_trampoline_helper>

c0de7404 <nbgl_trampoline_helper>:
c0de7404:	4900      	ldr	r1, [pc, #0]	@ (c0de7408 <nbgl_trampoline_helper+0x4>)
c0de7406:	4708      	bx	r1
c0de7408:	00808001 	.word	0x00808001

c0de740c <os_boot>:
c0de740c:	2000      	movs	r0, #0
c0de740e:	f000 bba9 	b.w	c0de7b64 <try_context_set>

c0de7412 <os_longjmp>:
c0de7412:	4604      	mov	r4, r0
c0de7414:	f000 fb9e 	bl	c0de7b54 <try_context_get>
c0de7418:	4621      	mov	r1, r4
c0de741a:	f000 fcf5 	bl	c0de7e08 <longjmp>
	...

c0de7420 <os_explicit_zero_BSS_segment>:
c0de7420:	4803      	ldr	r0, [pc, #12]	@ (c0de7430 <os_explicit_zero_BSS_segment+0x10>)
c0de7422:	4904      	ldr	r1, [pc, #16]	@ (c0de7434 <os_explicit_zero_BSS_segment+0x14>)
c0de7424:	4448      	add	r0, r9
c0de7426:	4449      	add	r1, r9
c0de7428:	1a09      	subs	r1, r1, r0
c0de742a:	f000 bcb1 	b.w	c0de7d90 <explicit_bzero>
c0de742e:	bf00      	nop
c0de7430:	00000000 	.word	0x00000000
c0de7434:	00000988 	.word	0x00000988

c0de7438 <snprintf>:
c0de7438:	b081      	sub	sp, #4
c0de743a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de743e:	b087      	sub	sp, #28
c0de7440:	2800      	cmp	r0, #0
c0de7442:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de7444:	f000 817a 	beq.w	c0de773c <snprintf+0x304>
c0de7448:	460d      	mov	r5, r1
c0de744a:	2900      	cmp	r1, #0
c0de744c:	f000 8176 	beq.w	c0de773c <snprintf+0x304>
c0de7450:	4629      	mov	r1, r5
c0de7452:	4616      	mov	r6, r2
c0de7454:	4604      	mov	r4, r0
c0de7456:	f000 fc8d 	bl	c0de7d74 <__aeabi_memclr>
c0de745a:	f1b5 0801 	subs.w	r8, r5, #1
c0de745e:	f000 816d 	beq.w	c0de773c <snprintf+0x304>
c0de7462:	a80f      	add	r0, sp, #60	@ 0x3c
c0de7464:	9002      	str	r0, [sp, #8]
c0de7466:	7830      	ldrb	r0, [r6, #0]
c0de7468:	2800      	cmp	r0, #0
c0de746a:	f000 8167 	beq.w	c0de773c <snprintf+0x304>
c0de746e:	2700      	movs	r7, #0
c0de7470:	b128      	cbz	r0, c0de747e <snprintf+0x46>
c0de7472:	2825      	cmp	r0, #37	@ 0x25
c0de7474:	d003      	beq.n	c0de747e <snprintf+0x46>
c0de7476:	19f0      	adds	r0, r6, r7
c0de7478:	3701      	adds	r7, #1
c0de747a:	7840      	ldrb	r0, [r0, #1]
c0de747c:	e7f8      	b.n	c0de7470 <snprintf+0x38>
c0de747e:	4547      	cmp	r7, r8
c0de7480:	bf28      	it	cs
c0de7482:	4647      	movcs	r7, r8
c0de7484:	4620      	mov	r0, r4
c0de7486:	4631      	mov	r1, r6
c0de7488:	463a      	mov	r2, r7
c0de748a:	f000 fc6b 	bl	c0de7d64 <__aeabi_memmove>
c0de748e:	ebb8 0807 	subs.w	r8, r8, r7
c0de7492:	f000 8153 	beq.w	c0de773c <snprintf+0x304>
c0de7496:	5df1      	ldrb	r1, [r6, r7]
c0de7498:	19f0      	adds	r0, r6, r7
c0de749a:	443c      	add	r4, r7
c0de749c:	4606      	mov	r6, r0
c0de749e:	2925      	cmp	r1, #37	@ 0x25
c0de74a0:	d1e1      	bne.n	c0de7466 <snprintf+0x2e>
c0de74a2:	1c41      	adds	r1, r0, #1
c0de74a4:	f04f 0b00 	mov.w	fp, #0
c0de74a8:	f04f 0e20 	mov.w	lr, #32
c0de74ac:	2500      	movs	r5, #0
c0de74ae:	2600      	movs	r6, #0
c0de74b0:	3101      	adds	r1, #1
c0de74b2:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de74b6:	4632      	mov	r2, r6
c0de74b8:	3101      	adds	r1, #1
c0de74ba:	2600      	movs	r6, #0
c0de74bc:	2b2d      	cmp	r3, #45	@ 0x2d
c0de74be:	d0f8      	beq.n	c0de74b2 <snprintf+0x7a>
c0de74c0:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de74c4:	2e0a      	cmp	r6, #10
c0de74c6:	d313      	bcc.n	c0de74f0 <snprintf+0xb8>
c0de74c8:	2b25      	cmp	r3, #37	@ 0x25
c0de74ca:	d046      	beq.n	c0de755a <snprintf+0x122>
c0de74cc:	2b2a      	cmp	r3, #42	@ 0x2a
c0de74ce:	d01f      	beq.n	c0de7510 <snprintf+0xd8>
c0de74d0:	2b2e      	cmp	r3, #46	@ 0x2e
c0de74d2:	d129      	bne.n	c0de7528 <snprintf+0xf0>
c0de74d4:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de74d8:	2a2a      	cmp	r2, #42	@ 0x2a
c0de74da:	d13c      	bne.n	c0de7556 <snprintf+0x11e>
c0de74dc:	780a      	ldrb	r2, [r1, #0]
c0de74de:	2a48      	cmp	r2, #72	@ 0x48
c0de74e0:	d003      	beq.n	c0de74ea <snprintf+0xb2>
c0de74e2:	2a73      	cmp	r2, #115	@ 0x73
c0de74e4:	d001      	beq.n	c0de74ea <snprintf+0xb2>
c0de74e6:	2a68      	cmp	r2, #104	@ 0x68
c0de74e8:	d135      	bne.n	c0de7556 <snprintf+0x11e>
c0de74ea:	9a02      	ldr	r2, [sp, #8]
c0de74ec:	2601      	movs	r6, #1
c0de74ee:	e017      	b.n	c0de7520 <snprintf+0xe8>
c0de74f0:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de74f4:	ea56 060b 	orrs.w	r6, r6, fp
c0de74f8:	bf08      	it	eq
c0de74fa:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de74fe:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de7502:	3901      	subs	r1, #1
c0de7504:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de7508:	4616      	mov	r6, r2
c0de750a:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de750e:	e7cf      	b.n	c0de74b0 <snprintf+0x78>
c0de7510:	460b      	mov	r3, r1
c0de7512:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de7516:	2a73      	cmp	r2, #115	@ 0x73
c0de7518:	d11d      	bne.n	c0de7556 <snprintf+0x11e>
c0de751a:	9a02      	ldr	r2, [sp, #8]
c0de751c:	2602      	movs	r6, #2
c0de751e:	4619      	mov	r1, r3
c0de7520:	1d13      	adds	r3, r2, #4
c0de7522:	9302      	str	r3, [sp, #8]
c0de7524:	6815      	ldr	r5, [r2, #0]
c0de7526:	e7c3      	b.n	c0de74b0 <snprintf+0x78>
c0de7528:	2b48      	cmp	r3, #72	@ 0x48
c0de752a:	d018      	beq.n	c0de755e <snprintf+0x126>
c0de752c:	2b58      	cmp	r3, #88	@ 0x58
c0de752e:	d019      	beq.n	c0de7564 <snprintf+0x12c>
c0de7530:	2b63      	cmp	r3, #99	@ 0x63
c0de7532:	d020      	beq.n	c0de7576 <snprintf+0x13e>
c0de7534:	2b64      	cmp	r3, #100	@ 0x64
c0de7536:	d02a      	beq.n	c0de758e <snprintf+0x156>
c0de7538:	2b68      	cmp	r3, #104	@ 0x68
c0de753a:	d036      	beq.n	c0de75aa <snprintf+0x172>
c0de753c:	2b70      	cmp	r3, #112	@ 0x70
c0de753e:	d006      	beq.n	c0de754e <snprintf+0x116>
c0de7540:	2b73      	cmp	r3, #115	@ 0x73
c0de7542:	d037      	beq.n	c0de75b4 <snprintf+0x17c>
c0de7544:	2b75      	cmp	r3, #117	@ 0x75
c0de7546:	f000 8081 	beq.w	c0de764c <snprintf+0x214>
c0de754a:	2b78      	cmp	r3, #120	@ 0x78
c0de754c:	d103      	bne.n	c0de7556 <snprintf+0x11e>
c0de754e:	9400      	str	r4, [sp, #0]
c0de7550:	f04f 0c00 	mov.w	ip, #0
c0de7554:	e009      	b.n	c0de756a <snprintf+0x132>
c0de7556:	1e4e      	subs	r6, r1, #1
c0de7558:	e785      	b.n	c0de7466 <snprintf+0x2e>
c0de755a:	2025      	movs	r0, #37	@ 0x25
c0de755c:	e00f      	b.n	c0de757e <snprintf+0x146>
c0de755e:	487b      	ldr	r0, [pc, #492]	@ (c0de774c <snprintf+0x314>)
c0de7560:	4478      	add	r0, pc
c0de7562:	e024      	b.n	c0de75ae <snprintf+0x176>
c0de7564:	f04f 0c01 	mov.w	ip, #1
c0de7568:	9400      	str	r4, [sp, #0]
c0de756a:	9a02      	ldr	r2, [sp, #8]
c0de756c:	2400      	movs	r4, #0
c0de756e:	1d13      	adds	r3, r2, #4
c0de7570:	9302      	str	r3, [sp, #8]
c0de7572:	2310      	movs	r3, #16
c0de7574:	e072      	b.n	c0de765c <snprintf+0x224>
c0de7576:	9802      	ldr	r0, [sp, #8]
c0de7578:	1d02      	adds	r2, r0, #4
c0de757a:	9202      	str	r2, [sp, #8]
c0de757c:	6800      	ldr	r0, [r0, #0]
c0de757e:	1e4e      	subs	r6, r1, #1
c0de7580:	f804 0b01 	strb.w	r0, [r4], #1
c0de7584:	f1b8 0801 	subs.w	r8, r8, #1
c0de7588:	f47f af6d 	bne.w	c0de7466 <snprintf+0x2e>
c0de758c:	e0d6      	b.n	c0de773c <snprintf+0x304>
c0de758e:	9a02      	ldr	r2, [sp, #8]
c0de7590:	9400      	str	r4, [sp, #0]
c0de7592:	1d13      	adds	r3, r2, #4
c0de7594:	9302      	str	r3, [sp, #8]
c0de7596:	6813      	ldr	r3, [r2, #0]
c0de7598:	2b00      	cmp	r3, #0
c0de759a:	461a      	mov	r2, r3
c0de759c:	d500      	bpl.n	c0de75a0 <snprintf+0x168>
c0de759e:	425a      	negs	r2, r3
c0de75a0:	0fdc      	lsrs	r4, r3, #31
c0de75a2:	f04f 0c00 	mov.w	ip, #0
c0de75a6:	230a      	movs	r3, #10
c0de75a8:	e059      	b.n	c0de765e <snprintf+0x226>
c0de75aa:	4869      	ldr	r0, [pc, #420]	@ (c0de7750 <snprintf+0x318>)
c0de75ac:	4478      	add	r0, pc
c0de75ae:	f04f 0c01 	mov.w	ip, #1
c0de75b2:	e003      	b.n	c0de75bc <snprintf+0x184>
c0de75b4:	4864      	ldr	r0, [pc, #400]	@ (c0de7748 <snprintf+0x310>)
c0de75b6:	f04f 0c00 	mov.w	ip, #0
c0de75ba:	4478      	add	r0, pc
c0de75bc:	9b02      	ldr	r3, [sp, #8]
c0de75be:	b2d2      	uxtb	r2, r2
c0de75c0:	1d1e      	adds	r6, r3, #4
c0de75c2:	9602      	str	r6, [sp, #8]
c0de75c4:	1e4e      	subs	r6, r1, #1
c0de75c6:	6819      	ldr	r1, [r3, #0]
c0de75c8:	2a02      	cmp	r2, #2
c0de75ca:	f000 80a7 	beq.w	c0de771c <snprintf+0x2e4>
c0de75ce:	2a01      	cmp	r2, #1
c0de75d0:	d007      	beq.n	c0de75e2 <snprintf+0x1aa>
c0de75d2:	463d      	mov	r5, r7
c0de75d4:	b92a      	cbnz	r2, c0de75e2 <snprintf+0x1aa>
c0de75d6:	2200      	movs	r2, #0
c0de75d8:	5c8b      	ldrb	r3, [r1, r2]
c0de75da:	3201      	adds	r2, #1
c0de75dc:	2b00      	cmp	r3, #0
c0de75de:	d1fb      	bne.n	c0de75d8 <snprintf+0x1a0>
c0de75e0:	1e55      	subs	r5, r2, #1
c0de75e2:	f1bc 0f00 	cmp.w	ip, #0
c0de75e6:	d016      	beq.n	c0de7616 <snprintf+0x1de>
c0de75e8:	2d00      	cmp	r5, #0
c0de75ea:	f43f af3c 	beq.w	c0de7466 <snprintf+0x2e>
c0de75ee:	f1b8 0f02 	cmp.w	r8, #2
c0de75f2:	f0c0 80a3 	bcc.w	c0de773c <snprintf+0x304>
c0de75f6:	780a      	ldrb	r2, [r1, #0]
c0de75f8:	0913      	lsrs	r3, r2, #4
c0de75fa:	f002 020f 	and.w	r2, r2, #15
c0de75fe:	5cc3      	ldrb	r3, [r0, r3]
c0de7600:	f1b8 0802 	subs.w	r8, r8, #2
c0de7604:	7023      	strb	r3, [r4, #0]
c0de7606:	5c82      	ldrb	r2, [r0, r2]
c0de7608:	7062      	strb	r2, [r4, #1]
c0de760a:	f000 8097 	beq.w	c0de773c <snprintf+0x304>
c0de760e:	3101      	adds	r1, #1
c0de7610:	3d01      	subs	r5, #1
c0de7612:	3402      	adds	r4, #2
c0de7614:	e7e8      	b.n	c0de75e8 <snprintf+0x1b0>
c0de7616:	4545      	cmp	r5, r8
c0de7618:	bf28      	it	cs
c0de761a:	4645      	movcs	r5, r8
c0de761c:	4620      	mov	r0, r4
c0de761e:	462a      	mov	r2, r5
c0de7620:	f000 fba0 	bl	c0de7d64 <__aeabi_memmove>
c0de7624:	ebb8 0805 	subs.w	r8, r8, r5
c0de7628:	f000 8088 	beq.w	c0de773c <snprintf+0x304>
c0de762c:	462f      	mov	r7, r5
c0de762e:	442c      	add	r4, r5
c0de7630:	45bb      	cmp	fp, r7
c0de7632:	f67f af18 	bls.w	c0de7466 <snprintf+0x2e>
c0de7636:	ebab 0507 	sub.w	r5, fp, r7
c0de763a:	4620      	mov	r0, r4
c0de763c:	4545      	cmp	r5, r8
c0de763e:	bf28      	it	cs
c0de7640:	4645      	movcs	r5, r8
c0de7642:	4629      	mov	r1, r5
c0de7644:	2220      	movs	r2, #32
c0de7646:	f000 fb8f 	bl	c0de7d68 <__aeabi_memset>
c0de764a:	e061      	b.n	c0de7710 <snprintf+0x2d8>
c0de764c:	9a02      	ldr	r2, [sp, #8]
c0de764e:	9400      	str	r4, [sp, #0]
c0de7650:	2400      	movs	r4, #0
c0de7652:	f04f 0c00 	mov.w	ip, #0
c0de7656:	1d13      	adds	r3, r2, #4
c0de7658:	9302      	str	r3, [sp, #8]
c0de765a:	230a      	movs	r3, #10
c0de765c:	6812      	ldr	r2, [r2, #0]
c0de765e:	483d      	ldr	r0, [pc, #244]	@ (c0de7754 <snprintf+0x31c>)
c0de7660:	1e4e      	subs	r6, r1, #1
c0de7662:	f04f 0a01 	mov.w	sl, #1
c0de7666:	4478      	add	r0, pc
c0de7668:	9001      	str	r0, [sp, #4]
c0de766a:	fba3 570a 	umull	r5, r7, r3, sl
c0de766e:	2f00      	cmp	r7, #0
c0de7670:	bf18      	it	ne
c0de7672:	2701      	movne	r7, #1
c0de7674:	4295      	cmp	r5, r2
c0de7676:	d804      	bhi.n	c0de7682 <snprintf+0x24a>
c0de7678:	b91f      	cbnz	r7, c0de7682 <snprintf+0x24a>
c0de767a:	f1ab 0b01 	sub.w	fp, fp, #1
c0de767e:	46aa      	mov	sl, r5
c0de7680:	e7f3      	b.n	c0de766a <snprintf+0x232>
c0de7682:	2c00      	cmp	r4, #0
c0de7684:	4627      	mov	r7, r4
c0de7686:	f04f 0500 	mov.w	r5, #0
c0de768a:	bf18      	it	ne
c0de768c:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de7690:	d00d      	beq.n	c0de76ae <snprintf+0x276>
c0de7692:	4660      	mov	r0, ip
c0de7694:	fa5f fc8e 	uxtb.w	ip, lr
c0de7698:	a903      	add	r1, sp, #12
c0de769a:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de769e:	4684      	mov	ip, r0
c0de76a0:	d106      	bne.n	c0de76b0 <snprintf+0x278>
c0de76a2:	202d      	movs	r0, #45	@ 0x2d
c0de76a4:	2400      	movs	r4, #0
c0de76a6:	2501      	movs	r5, #1
c0de76a8:	f88d 000c 	strb.w	r0, [sp, #12]
c0de76ac:	e000      	b.n	c0de76b0 <snprintf+0x278>
c0de76ae:	a903      	add	r1, sp, #12
c0de76b0:	eb07 000b 	add.w	r0, r7, fp
c0de76b4:	3802      	subs	r0, #2
c0de76b6:	280d      	cmp	r0, #13
c0de76b8:	d808      	bhi.n	c0de76cc <snprintf+0x294>
c0de76ba:	f1c7 0701 	rsb	r7, r7, #1
c0de76be:	45bb      	cmp	fp, r7
c0de76c0:	d004      	beq.n	c0de76cc <snprintf+0x294>
c0de76c2:	f801 e005 	strb.w	lr, [r1, r5]
c0de76c6:	3701      	adds	r7, #1
c0de76c8:	3501      	adds	r5, #1
c0de76ca:	e7f8      	b.n	c0de76be <snprintf+0x286>
c0de76cc:	9f01      	ldr	r7, [sp, #4]
c0de76ce:	b114      	cbz	r4, c0de76d6 <snprintf+0x29e>
c0de76d0:	202d      	movs	r0, #45	@ 0x2d
c0de76d2:	5548      	strb	r0, [r1, r5]
c0de76d4:	3501      	adds	r5, #1
c0de76d6:	4820      	ldr	r0, [pc, #128]	@ (c0de7758 <snprintf+0x320>)
c0de76d8:	f1bc 0f00 	cmp.w	ip, #0
c0de76dc:	4478      	add	r0, pc
c0de76de:	bf08      	it	eq
c0de76e0:	4638      	moveq	r0, r7
c0de76e2:	f1ba 0f00 	cmp.w	sl, #0
c0de76e6:	d00b      	beq.n	c0de7700 <snprintf+0x2c8>
c0de76e8:	fbb2 f7fa 	udiv	r7, r2, sl
c0de76ec:	fbba faf3 	udiv	sl, sl, r3
c0de76f0:	fbb7 f4f3 	udiv	r4, r7, r3
c0de76f4:	fb04 7413 	mls	r4, r4, r3, r7
c0de76f8:	5d04      	ldrb	r4, [r0, r4]
c0de76fa:	554c      	strb	r4, [r1, r5]
c0de76fc:	3501      	adds	r5, #1
c0de76fe:	e7f0      	b.n	c0de76e2 <snprintf+0x2aa>
c0de7700:	4545      	cmp	r5, r8
c0de7702:	bf28      	it	cs
c0de7704:	4645      	movcs	r5, r8
c0de7706:	9c00      	ldr	r4, [sp, #0]
c0de7708:	462a      	mov	r2, r5
c0de770a:	4620      	mov	r0, r4
c0de770c:	f000 fb2a 	bl	c0de7d64 <__aeabi_memmove>
c0de7710:	ebb8 0805 	subs.w	r8, r8, r5
c0de7714:	442c      	add	r4, r5
c0de7716:	f47f aea6 	bne.w	c0de7466 <snprintf+0x2e>
c0de771a:	e00f      	b.n	c0de773c <snprintf+0x304>
c0de771c:	7808      	ldrb	r0, [r1, #0]
c0de771e:	2800      	cmp	r0, #0
c0de7720:	f47f aea1 	bne.w	c0de7466 <snprintf+0x2e>
c0de7724:	4545      	cmp	r5, r8
c0de7726:	bf28      	it	cs
c0de7728:	4645      	movcs	r5, r8
c0de772a:	4620      	mov	r0, r4
c0de772c:	4629      	mov	r1, r5
c0de772e:	2220      	movs	r2, #32
c0de7730:	f000 fb1a 	bl	c0de7d68 <__aeabi_memset>
c0de7734:	ebb8 0805 	subs.w	r8, r8, r5
c0de7738:	f47f af79 	bne.w	c0de762e <snprintf+0x1f6>
c0de773c:	2000      	movs	r0, #0
c0de773e:	b007      	add	sp, #28
c0de7740:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7744:	b001      	add	sp, #4
c0de7746:	4770      	bx	lr
c0de7748:	00001d52 	.word	0x00001d52
c0de774c:	00001dbc 	.word	0x00001dbc
c0de7750:	00001d60 	.word	0x00001d60
c0de7754:	00001ca6 	.word	0x00001ca6
c0de7758:	00001c40 	.word	0x00001c40

c0de775c <pic>:
c0de775c:	4a0a      	ldr	r2, [pc, #40]	@ (c0de7788 <pic+0x2c>)
c0de775e:	4282      	cmp	r2, r0
c0de7760:	490a      	ldr	r1, [pc, #40]	@ (c0de778c <pic+0x30>)
c0de7762:	d806      	bhi.n	c0de7772 <pic+0x16>
c0de7764:	4281      	cmp	r1, r0
c0de7766:	d304      	bcc.n	c0de7772 <pic+0x16>
c0de7768:	b580      	push	{r7, lr}
c0de776a:	f000 f815 	bl	c0de7798 <pic_internal>
c0de776e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7772:	4907      	ldr	r1, [pc, #28]	@ (c0de7790 <pic+0x34>)
c0de7774:	4288      	cmp	r0, r1
c0de7776:	4a07      	ldr	r2, [pc, #28]	@ (c0de7794 <pic+0x38>)
c0de7778:	d304      	bcc.n	c0de7784 <pic+0x28>
c0de777a:	4290      	cmp	r0, r2
c0de777c:	d802      	bhi.n	c0de7784 <pic+0x28>
c0de777e:	1a40      	subs	r0, r0, r1
c0de7780:	4649      	mov	r1, r9
c0de7782:	4408      	add	r0, r1
c0de7784:	4770      	bx	lr
c0de7786:	0000      	movs	r0, r0
c0de7788:	c0de0000 	.word	0xc0de0000
c0de778c:	c0de963f 	.word	0xc0de963f
c0de7790:	da7a0000 	.word	0xda7a0000
c0de7794:	da7aa000 	.word	0xda7aa000

c0de7798 <pic_internal>:
c0de7798:	467a      	mov	r2, pc
c0de779a:	4902      	ldr	r1, [pc, #8]	@ (c0de77a4 <pic_internal+0xc>)
c0de779c:	1cc9      	adds	r1, r1, #3
c0de779e:	1a89      	subs	r1, r1, r2
c0de77a0:	1a40      	subs	r0, r0, r1
c0de77a2:	4770      	bx	lr
c0de77a4:	c0de7799 	.word	0xc0de7799

c0de77a8 <SVC_Call>:
c0de77a8:	df01      	svc	1
c0de77aa:	2900      	cmp	r1, #0
c0de77ac:	d100      	bne.n	c0de77b0 <exception>
c0de77ae:	4770      	bx	lr

c0de77b0 <exception>:
c0de77b0:	4608      	mov	r0, r1
c0de77b2:	f7ff fe2e 	bl	c0de7412 <os_longjmp>
	...

c0de77b8 <SVC_cx_call>:
c0de77b8:	df01      	svc	1
c0de77ba:	4770      	bx	lr

c0de77bc <nvm_write>:
c0de77bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de77be:	ab01      	add	r3, sp, #4
c0de77c0:	c307      	stmia	r3!, {r0, r1, r2}
c0de77c2:	4802      	ldr	r0, [pc, #8]	@ (c0de77cc <nvm_write+0x10>)
c0de77c4:	a901      	add	r1, sp, #4
c0de77c6:	f7ff ffef 	bl	c0de77a8 <SVC_Call>
c0de77ca:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de77cc:	03000003 	.word	0x03000003

c0de77d0 <cx_bn_lock>:
c0de77d0:	b5e0      	push	{r5, r6, r7, lr}
c0de77d2:	e9cd 0100 	strd	r0, r1, [sp]
c0de77d6:	4802      	ldr	r0, [pc, #8]	@ (c0de77e0 <cx_bn_lock+0x10>)
c0de77d8:	4669      	mov	r1, sp
c0de77da:	f7ff ffed 	bl	c0de77b8 <SVC_cx_call>
c0de77de:	bd8c      	pop	{r2, r3, r7, pc}
c0de77e0:	02000112 	.word	0x02000112

c0de77e4 <cx_bn_unlock>:
c0de77e4:	b5e0      	push	{r5, r6, r7, lr}
c0de77e6:	2000      	movs	r0, #0
c0de77e8:	4669      	mov	r1, sp
c0de77ea:	9001      	str	r0, [sp, #4]
c0de77ec:	20b6      	movs	r0, #182	@ 0xb6
c0de77ee:	f7ff ffe3 	bl	c0de77b8 <SVC_cx_call>
c0de77f2:	bd8c      	pop	{r2, r3, r7, pc}

c0de77f4 <cx_bn_alloc>:
c0de77f4:	b5e0      	push	{r5, r6, r7, lr}
c0de77f6:	e9cd 0100 	strd	r0, r1, [sp]
c0de77fa:	4802      	ldr	r0, [pc, #8]	@ (c0de7804 <cx_bn_alloc+0x10>)
c0de77fc:	4669      	mov	r1, sp
c0de77fe:	f7ff ffdb 	bl	c0de77b8 <SVC_cx_call>
c0de7802:	bd8c      	pop	{r2, r3, r7, pc}
c0de7804:	02000113 	.word	0x02000113

c0de7808 <cx_bn_alloc_init>:
c0de7808:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de780a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de780e:	4803      	ldr	r0, [pc, #12]	@ (c0de781c <cx_bn_alloc_init+0x14>)
c0de7810:	4669      	mov	r1, sp
c0de7812:	f7ff ffd1 	bl	c0de77b8 <SVC_cx_call>
c0de7816:	b004      	add	sp, #16
c0de7818:	bd80      	pop	{r7, pc}
c0de781a:	bf00      	nop
c0de781c:	04000114 	.word	0x04000114

c0de7820 <cx_bn_destroy>:
c0de7820:	b5e0      	push	{r5, r6, r7, lr}
c0de7822:	f000 f9b5 	bl	c0de7b90 <OUTLINED_FUNCTION_0>
c0de7826:	4802      	ldr	r0, [pc, #8]	@ (c0de7830 <cx_bn_destroy+0x10>)
c0de7828:	4669      	mov	r1, sp
c0de782a:	f7ff ffc5 	bl	c0de77b8 <SVC_cx_call>
c0de782e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7830:	010000bc 	.word	0x010000bc

c0de7834 <cx_bn_nbytes>:
c0de7834:	b5e0      	push	{r5, r6, r7, lr}
c0de7836:	e9cd 0100 	strd	r0, r1, [sp]
c0de783a:	4802      	ldr	r0, [pc, #8]	@ (c0de7844 <cx_bn_nbytes+0x10>)
c0de783c:	4669      	mov	r1, sp
c0de783e:	f7ff ffbb 	bl	c0de77b8 <SVC_cx_call>
c0de7842:	bd8c      	pop	{r2, r3, r7, pc}
c0de7844:	0200010d 	.word	0x0200010d

c0de7848 <cx_bn_init>:
c0de7848:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de784a:	ab01      	add	r3, sp, #4
c0de784c:	c307      	stmia	r3!, {r0, r1, r2}
c0de784e:	4803      	ldr	r0, [pc, #12]	@ (c0de785c <cx_bn_init+0x14>)
c0de7850:	a901      	add	r1, sp, #4
c0de7852:	f7ff ffb1 	bl	c0de77b8 <SVC_cx_call>
c0de7856:	b004      	add	sp, #16
c0de7858:	bd80      	pop	{r7, pc}
c0de785a:	bf00      	nop
c0de785c:	03000115 	.word	0x03000115

c0de7860 <cx_bn_copy>:
c0de7860:	b5e0      	push	{r5, r6, r7, lr}
c0de7862:	e9cd 0100 	strd	r0, r1, [sp]
c0de7866:	4802      	ldr	r0, [pc, #8]	@ (c0de7870 <cx_bn_copy+0x10>)
c0de7868:	4669      	mov	r1, sp
c0de786a:	f7ff ffa5 	bl	c0de77b8 <SVC_cx_call>
c0de786e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7870:	020000c0 	.word	0x020000c0

c0de7874 <cx_bn_set_u32>:
c0de7874:	b5e0      	push	{r5, r6, r7, lr}
c0de7876:	e9cd 0100 	strd	r0, r1, [sp]
c0de787a:	4802      	ldr	r0, [pc, #8]	@ (c0de7884 <cx_bn_set_u32+0x10>)
c0de787c:	4669      	mov	r1, sp
c0de787e:	f7ff ff9b 	bl	c0de77b8 <SVC_cx_call>
c0de7882:	bd8c      	pop	{r2, r3, r7, pc}
c0de7884:	020000c1 	.word	0x020000c1

c0de7888 <cx_bn_export>:
c0de7888:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de788a:	ab01      	add	r3, sp, #4
c0de788c:	c307      	stmia	r3!, {r0, r1, r2}
c0de788e:	4803      	ldr	r0, [pc, #12]	@ (c0de789c <cx_bn_export+0x14>)
c0de7890:	a901      	add	r1, sp, #4
c0de7892:	f7ff ff91 	bl	c0de77b8 <SVC_cx_call>
c0de7896:	b004      	add	sp, #16
c0de7898:	bd80      	pop	{r7, pc}
c0de789a:	bf00      	nop
c0de789c:	030000c3 	.word	0x030000c3

c0de78a0 <cx_bn_cmp>:
c0de78a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de78a2:	ab01      	add	r3, sp, #4
c0de78a4:	c307      	stmia	r3!, {r0, r1, r2}
c0de78a6:	4803      	ldr	r0, [pc, #12]	@ (c0de78b4 <cx_bn_cmp+0x14>)
c0de78a8:	a901      	add	r1, sp, #4
c0de78aa:	f7ff ff85 	bl	c0de77b8 <SVC_cx_call>
c0de78ae:	b004      	add	sp, #16
c0de78b0:	bd80      	pop	{r7, pc}
c0de78b2:	bf00      	nop
c0de78b4:	030000c4 	.word	0x030000c4

c0de78b8 <cx_bn_cmp_u32>:
c0de78b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de78ba:	ab01      	add	r3, sp, #4
c0de78bc:	c307      	stmia	r3!, {r0, r1, r2}
c0de78be:	4803      	ldr	r0, [pc, #12]	@ (c0de78cc <cx_bn_cmp_u32+0x14>)
c0de78c0:	a901      	add	r1, sp, #4
c0de78c2:	f7ff ff79 	bl	c0de77b8 <SVC_cx_call>
c0de78c6:	b004      	add	sp, #16
c0de78c8:	bd80      	pop	{r7, pc}
c0de78ca:	bf00      	nop
c0de78cc:	030000c5 	.word	0x030000c5

c0de78d0 <cx_bn_tst_bit>:
c0de78d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de78d2:	ab01      	add	r3, sp, #4
c0de78d4:	c307      	stmia	r3!, {r0, r1, r2}
c0de78d6:	4803      	ldr	r0, [pc, #12]	@ (c0de78e4 <cx_bn_tst_bit+0x14>)
c0de78d8:	a901      	add	r1, sp, #4
c0de78da:	f7ff ff6d 	bl	c0de77b8 <SVC_cx_call>
c0de78de:	b004      	add	sp, #16
c0de78e0:	bd80      	pop	{r7, pc}
c0de78e2:	bf00      	nop
c0de78e4:	030000cb 	.word	0x030000cb

c0de78e8 <cx_bn_mod_add>:
c0de78e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de78ea:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de78ee:	4803      	ldr	r0, [pc, #12]	@ (c0de78fc <cx_bn_mod_add+0x14>)
c0de78f0:	4669      	mov	r1, sp
c0de78f2:	f7ff ff61 	bl	c0de77b8 <SVC_cx_call>
c0de78f6:	b004      	add	sp, #16
c0de78f8:	bd80      	pop	{r7, pc}
c0de78fa:	bf00      	nop
c0de78fc:	040000d3 	.word	0x040000d3

c0de7900 <cx_bn_mod_sub>:
c0de7900:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7902:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7906:	4803      	ldr	r0, [pc, #12]	@ (c0de7914 <cx_bn_mod_sub+0x14>)
c0de7908:	4669      	mov	r1, sp
c0de790a:	f7ff ff55 	bl	c0de77b8 <SVC_cx_call>
c0de790e:	b004      	add	sp, #16
c0de7910:	bd80      	pop	{r7, pc}
c0de7912:	bf00      	nop
c0de7914:	040000d4 	.word	0x040000d4

c0de7918 <cx_bn_mod_mul>:
c0de7918:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de791a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de791e:	4803      	ldr	r0, [pc, #12]	@ (c0de792c <cx_bn_mod_mul+0x14>)
c0de7920:	4669      	mov	r1, sp
c0de7922:	f7ff ff49 	bl	c0de77b8 <SVC_cx_call>
c0de7926:	b004      	add	sp, #16
c0de7928:	bd80      	pop	{r7, pc}
c0de792a:	bf00      	nop
c0de792c:	040000d5 	.word	0x040000d5

c0de7930 <cx_bn_reduce>:
c0de7930:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7932:	ab01      	add	r3, sp, #4
c0de7934:	c307      	stmia	r3!, {r0, r1, r2}
c0de7936:	4803      	ldr	r0, [pc, #12]	@ (c0de7944 <cx_bn_reduce+0x14>)
c0de7938:	a901      	add	r1, sp, #4
c0de793a:	f7ff ff3d 	bl	c0de77b8 <SVC_cx_call>
c0de793e:	b004      	add	sp, #16
c0de7940:	bd80      	pop	{r7, pc}
c0de7942:	bf00      	nop
c0de7944:	030000d6 	.word	0x030000d6

c0de7948 <cx_bn_mod_invert_nprime>:
c0de7948:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de794a:	ab01      	add	r3, sp, #4
c0de794c:	c307      	stmia	r3!, {r0, r1, r2}
c0de794e:	4803      	ldr	r0, [pc, #12]	@ (c0de795c <cx_bn_mod_invert_nprime+0x14>)
c0de7950:	a901      	add	r1, sp, #4
c0de7952:	f7ff ff31 	bl	c0de77b8 <SVC_cx_call>
c0de7956:	b004      	add	sp, #16
c0de7958:	bd80      	pop	{r7, pc}
c0de795a:	bf00      	nop
c0de795c:	030000da 	.word	0x030000da

c0de7960 <cx_bn_is_prime>:
c0de7960:	b5e0      	push	{r5, r6, r7, lr}
c0de7962:	e9cd 0100 	strd	r0, r1, [sp]
c0de7966:	4802      	ldr	r0, [pc, #8]	@ (c0de7970 <cx_bn_is_prime+0x10>)
c0de7968:	4669      	mov	r1, sp
c0de796a:	f7ff ff25 	bl	c0de77b8 <SVC_cx_call>
c0de796e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7970:	020000ef 	.word	0x020000ef

c0de7974 <cx_mont_alloc>:
c0de7974:	b5e0      	push	{r5, r6, r7, lr}
c0de7976:	e9cd 0100 	strd	r0, r1, [sp]
c0de797a:	4802      	ldr	r0, [pc, #8]	@ (c0de7984 <cx_mont_alloc+0x10>)
c0de797c:	4669      	mov	r1, sp
c0de797e:	f7ff ff1b 	bl	c0de77b8 <SVC_cx_call>
c0de7982:	bd8c      	pop	{r2, r3, r7, pc}
c0de7984:	020000dc 	.word	0x020000dc

c0de7988 <cx_mont_init>:
c0de7988:	b5e0      	push	{r5, r6, r7, lr}
c0de798a:	e9cd 0100 	strd	r0, r1, [sp]
c0de798e:	4802      	ldr	r0, [pc, #8]	@ (c0de7998 <cx_mont_init+0x10>)
c0de7990:	4669      	mov	r1, sp
c0de7992:	f7ff ff11 	bl	c0de77b8 <SVC_cx_call>
c0de7996:	bd8c      	pop	{r2, r3, r7, pc}
c0de7998:	020000dd 	.word	0x020000dd

c0de799c <cx_mont_to_montgomery>:
c0de799c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de799e:	ab01      	add	r3, sp, #4
c0de79a0:	c307      	stmia	r3!, {r0, r1, r2}
c0de79a2:	4803      	ldr	r0, [pc, #12]	@ (c0de79b0 <cx_mont_to_montgomery+0x14>)
c0de79a4:	a901      	add	r1, sp, #4
c0de79a6:	f7ff ff07 	bl	c0de77b8 <SVC_cx_call>
c0de79aa:	b004      	add	sp, #16
c0de79ac:	bd80      	pop	{r7, pc}
c0de79ae:	bf00      	nop
c0de79b0:	030000df 	.word	0x030000df

c0de79b4 <cx_mont_from_montgomery>:
c0de79b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79b6:	ab01      	add	r3, sp, #4
c0de79b8:	c307      	stmia	r3!, {r0, r1, r2}
c0de79ba:	4803      	ldr	r0, [pc, #12]	@ (c0de79c8 <cx_mont_from_montgomery+0x14>)
c0de79bc:	a901      	add	r1, sp, #4
c0de79be:	f7ff fefb 	bl	c0de77b8 <SVC_cx_call>
c0de79c2:	b004      	add	sp, #16
c0de79c4:	bd80      	pop	{r7, pc}
c0de79c6:	bf00      	nop
c0de79c8:	030000e0 	.word	0x030000e0

c0de79cc <cx_mont_mul>:
c0de79cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79ce:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de79d2:	4803      	ldr	r0, [pc, #12]	@ (c0de79e0 <cx_mont_mul+0x14>)
c0de79d4:	4669      	mov	r1, sp
c0de79d6:	f7ff feef 	bl	c0de77b8 <SVC_cx_call>
c0de79da:	b004      	add	sp, #16
c0de79dc:	bd80      	pop	{r7, pc}
c0de79de:	bf00      	nop
c0de79e0:	040000e1 	.word	0x040000e1

c0de79e4 <cx_mont_pow>:
c0de79e4:	b510      	push	{r4, lr}
c0de79e6:	b086      	sub	sp, #24
c0de79e8:	f10d 0c04 	add.w	ip, sp, #4
c0de79ec:	9c08      	ldr	r4, [sp, #32]
c0de79ee:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de79f2:	4803      	ldr	r0, [pc, #12]	@ (c0de7a00 <cx_mont_pow+0x1c>)
c0de79f4:	a901      	add	r1, sp, #4
c0de79f6:	f7ff fedf 	bl	c0de77b8 <SVC_cx_call>
c0de79fa:	b006      	add	sp, #24
c0de79fc:	bd10      	pop	{r4, pc}
c0de79fe:	bf00      	nop
c0de7a00:	050000e2 	.word	0x050000e2

c0de7a04 <cx_mont_invert_nprime>:
c0de7a04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a06:	ab01      	add	r3, sp, #4
c0de7a08:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a0a:	4803      	ldr	r0, [pc, #12]	@ (c0de7a18 <cx_mont_invert_nprime+0x14>)
c0de7a0c:	a901      	add	r1, sp, #4
c0de7a0e:	f7ff fed3 	bl	c0de77b8 <SVC_cx_call>
c0de7a12:	b004      	add	sp, #16
c0de7a14:	bd80      	pop	{r7, pc}
c0de7a16:	bf00      	nop
c0de7a18:	030000e4 	.word	0x030000e4

c0de7a1c <cx_ecdomain_parameters_length>:
c0de7a1c:	b5e0      	push	{r5, r6, r7, lr}
c0de7a1e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7a22:	4802      	ldr	r0, [pc, #8]	@ (c0de7a2c <cx_ecdomain_parameters_length+0x10>)
c0de7a24:	4669      	mov	r1, sp
c0de7a26:	f7ff fec7 	bl	c0de77b8 <SVC_cx_call>
c0de7a2a:	bd8c      	pop	{r2, r3, r7, pc}
c0de7a2c:	0200012f 	.word	0x0200012f

c0de7a30 <os_perso_derive_node_with_seed_key>:
c0de7a30:	b510      	push	{r4, lr}
c0de7a32:	b088      	sub	sp, #32
c0de7a34:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7a36:	9407      	str	r4, [sp, #28]
c0de7a38:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7a3a:	9406      	str	r4, [sp, #24]
c0de7a3c:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de7a3e:	9405      	str	r4, [sp, #20]
c0de7a40:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de7a42:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7a46:	4803      	ldr	r0, [pc, #12]	@ (c0de7a54 <os_perso_derive_node_with_seed_key+0x24>)
c0de7a48:	4669      	mov	r1, sp
c0de7a4a:	f7ff fead 	bl	c0de77a8 <SVC_Call>
c0de7a4e:	b008      	add	sp, #32
c0de7a50:	bd10      	pop	{r4, pc}
c0de7a52:	bf00      	nop
c0de7a54:	080000a6 	.word	0x080000a6

c0de7a58 <os_pki_load_certificate>:
c0de7a58:	b510      	push	{r4, lr}
c0de7a5a:	b086      	sub	sp, #24
c0de7a5c:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de7a5e:	9405      	str	r4, [sp, #20]
c0de7a60:	9c08      	ldr	r4, [sp, #32]
c0de7a62:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7a66:	4803      	ldr	r0, [pc, #12]	@ (c0de7a74 <os_pki_load_certificate+0x1c>)
c0de7a68:	4669      	mov	r1, sp
c0de7a6a:	f7ff fe9d 	bl	c0de77a8 <SVC_Call>
c0de7a6e:	b006      	add	sp, #24
c0de7a70:	bd10      	pop	{r4, pc}
c0de7a72:	bf00      	nop
c0de7a74:	060000aa 	.word	0x060000aa

c0de7a78 <os_perso_is_pin_set>:
c0de7a78:	b5e0      	push	{r5, r6, r7, lr}
c0de7a7a:	2000      	movs	r0, #0
c0de7a7c:	4669      	mov	r1, sp
c0de7a7e:	9001      	str	r0, [sp, #4]
c0de7a80:	209e      	movs	r0, #158	@ 0x9e
c0de7a82:	f7ff fe91 	bl	c0de77a8 <SVC_Call>
c0de7a86:	b2c0      	uxtb	r0, r0
c0de7a88:	bd8c      	pop	{r2, r3, r7, pc}

c0de7a8a <os_global_pin_is_validated>:
c0de7a8a:	b5e0      	push	{r5, r6, r7, lr}
c0de7a8c:	2000      	movs	r0, #0
c0de7a8e:	4669      	mov	r1, sp
c0de7a90:	9001      	str	r0, [sp, #4]
c0de7a92:	20a0      	movs	r0, #160	@ 0xa0
c0de7a94:	f7ff fe88 	bl	c0de77a8 <SVC_Call>
c0de7a98:	b2c0      	uxtb	r0, r0
c0de7a9a:	bd8c      	pop	{r2, r3, r7, pc}

c0de7a9c <os_ux>:
c0de7a9c:	b5e0      	push	{r5, r6, r7, lr}
c0de7a9e:	f000 f877 	bl	c0de7b90 <OUTLINED_FUNCTION_0>
c0de7aa2:	4802      	ldr	r0, [pc, #8]	@ (c0de7aac <os_ux+0x10>)
c0de7aa4:	4669      	mov	r1, sp
c0de7aa6:	f7ff fe7f 	bl	c0de77a8 <SVC_Call>
c0de7aaa:	bd8c      	pop	{r2, r3, r7, pc}
c0de7aac:	01000064 	.word	0x01000064

c0de7ab0 <os_lib_end>:
c0de7ab0:	b082      	sub	sp, #8
c0de7ab2:	2000      	movs	r0, #0
c0de7ab4:	4669      	mov	r1, sp
c0de7ab6:	9001      	str	r0, [sp, #4]
c0de7ab8:	2068      	movs	r0, #104	@ 0x68
c0de7aba:	f7ff fe75 	bl	c0de77a8 <SVC_Call>
c0de7abe:	deff      	udf	#255	@ 0xff

c0de7ac0 <os_flags>:
c0de7ac0:	b5e0      	push	{r5, r6, r7, lr}
c0de7ac2:	2000      	movs	r0, #0
c0de7ac4:	4669      	mov	r1, sp
c0de7ac6:	9001      	str	r0, [sp, #4]
c0de7ac8:	206a      	movs	r0, #106	@ 0x6a
c0de7aca:	f7ff fe6d 	bl	c0de77a8 <SVC_Call>
c0de7ace:	bd8c      	pop	{r2, r3, r7, pc}

c0de7ad0 <os_registry_get_current_app_tag>:
c0de7ad0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7ad2:	ab01      	add	r3, sp, #4
c0de7ad4:	c307      	stmia	r3!, {r0, r1, r2}
c0de7ad6:	4803      	ldr	r0, [pc, #12]	@ (c0de7ae4 <os_registry_get_current_app_tag+0x14>)
c0de7ad8:	a901      	add	r1, sp, #4
c0de7ada:	f7ff fe65 	bl	c0de77a8 <SVC_Call>
c0de7ade:	b004      	add	sp, #16
c0de7ae0:	bd80      	pop	{r7, pc}
c0de7ae2:	bf00      	nop
c0de7ae4:	03000074 	.word	0x03000074

c0de7ae8 <os_sched_exit>:
c0de7ae8:	b082      	sub	sp, #8
c0de7aea:	f000 f851 	bl	c0de7b90 <OUTLINED_FUNCTION_0>
c0de7aee:	4802      	ldr	r0, [pc, #8]	@ (c0de7af8 <os_sched_exit+0x10>)
c0de7af0:	4669      	mov	r1, sp
c0de7af2:	f7ff fe59 	bl	c0de77a8 <SVC_Call>
c0de7af6:	deff      	udf	#255	@ 0xff
c0de7af8:	0100009a 	.word	0x0100009a

c0de7afc <os_io_init>:
c0de7afc:	b5e0      	push	{r5, r6, r7, lr}
c0de7afe:	9001      	str	r0, [sp, #4]
c0de7b00:	4802      	ldr	r0, [pc, #8]	@ (c0de7b0c <os_io_init+0x10>)
c0de7b02:	a901      	add	r1, sp, #4
c0de7b04:	f7ff fe50 	bl	c0de77a8 <SVC_Call>
c0de7b08:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b0a:	bf00      	nop
c0de7b0c:	01000084 	.word	0x01000084

c0de7b10 <os_io_start>:
c0de7b10:	b5e0      	push	{r5, r6, r7, lr}
c0de7b12:	2000      	movs	r0, #0
c0de7b14:	4669      	mov	r1, sp
c0de7b16:	9001      	str	r0, [sp, #4]
c0de7b18:	4801      	ldr	r0, [pc, #4]	@ (c0de7b20 <os_io_start+0x10>)
c0de7b1a:	f7ff fe45 	bl	c0de77a8 <SVC_Call>
c0de7b1e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b20:	01000085 	.word	0x01000085

c0de7b24 <os_io_tx_cmd>:
c0de7b24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b26:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7b2a:	4803      	ldr	r0, [pc, #12]	@ (c0de7b38 <os_io_tx_cmd+0x14>)
c0de7b2c:	4669      	mov	r1, sp
c0de7b2e:	f7ff fe3b 	bl	c0de77a8 <SVC_Call>
c0de7b32:	b004      	add	sp, #16
c0de7b34:	bd80      	pop	{r7, pc}
c0de7b36:	bf00      	nop
c0de7b38:	04000088 	.word	0x04000088

c0de7b3c <os_io_rx_evt>:
c0de7b3c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b3e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7b42:	4803      	ldr	r0, [pc, #12]	@ (c0de7b50 <os_io_rx_evt+0x14>)
c0de7b44:	4669      	mov	r1, sp
c0de7b46:	f7ff fe2f 	bl	c0de77a8 <SVC_Call>
c0de7b4a:	b004      	add	sp, #16
c0de7b4c:	bd80      	pop	{r7, pc}
c0de7b4e:	bf00      	nop
c0de7b50:	03000089 	.word	0x03000089

c0de7b54 <try_context_get>:
c0de7b54:	b5e0      	push	{r5, r6, r7, lr}
c0de7b56:	2000      	movs	r0, #0
c0de7b58:	4669      	mov	r1, sp
c0de7b5a:	9001      	str	r0, [sp, #4]
c0de7b5c:	2087      	movs	r0, #135	@ 0x87
c0de7b5e:	f7ff fe23 	bl	c0de77a8 <SVC_Call>
c0de7b62:	bd8c      	pop	{r2, r3, r7, pc}

c0de7b64 <try_context_set>:
c0de7b64:	b5e0      	push	{r5, r6, r7, lr}
c0de7b66:	f000 f813 	bl	c0de7b90 <OUTLINED_FUNCTION_0>
c0de7b6a:	4802      	ldr	r0, [pc, #8]	@ (c0de7b74 <try_context_set+0x10>)
c0de7b6c:	4669      	mov	r1, sp
c0de7b6e:	f7ff fe1b 	bl	c0de77a8 <SVC_Call>
c0de7b72:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b74:	0100010b 	.word	0x0100010b

c0de7b78 <os_sched_last_status>:
c0de7b78:	b5e0      	push	{r5, r6, r7, lr}
c0de7b7a:	f000 f809 	bl	c0de7b90 <OUTLINED_FUNCTION_0>
c0de7b7e:	4803      	ldr	r0, [pc, #12]	@ (c0de7b8c <os_sched_last_status+0x14>)
c0de7b80:	4669      	mov	r1, sp
c0de7b82:	f7ff fe11 	bl	c0de77a8 <SVC_Call>
c0de7b86:	b2c0      	uxtb	r0, r0
c0de7b88:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b8a:	bf00      	nop
c0de7b8c:	0100009c 	.word	0x0100009c

c0de7b90 <OUTLINED_FUNCTION_0>:
c0de7b90:	2100      	movs	r1, #0
c0de7b92:	e9cd 0100 	strd	r0, r1, [sp]
c0de7b96:	4770      	bx	lr

c0de7b98 <__udivmoddi4>:
c0de7b98:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7b9c:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de7ba0:	4604      	mov	r4, r0
c0de7ba2:	b179      	cbz	r1, c0de7bc4 <__udivmoddi4+0x2c>
c0de7ba4:	b1ba      	cbz	r2, c0de7bd6 <__udivmoddi4+0x3e>
c0de7ba6:	b35b      	cbz	r3, c0de7c00 <__udivmoddi4+0x68>
c0de7ba8:	fab1 f581 	clz	r5, r1
c0de7bac:	fab3 f683 	clz	r6, r3
c0de7bb0:	1b75      	subs	r5, r6, r5
c0de7bb2:	2d20      	cmp	r5, #32
c0de7bb4:	d34a      	bcc.n	c0de7c4c <__udivmoddi4+0xb4>
c0de7bb6:	f1bc 0f00 	cmp.w	ip, #0
c0de7bba:	bf18      	it	ne
c0de7bbc:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7bc0:	2400      	movs	r4, #0
c0de7bc2:	e066      	b.n	c0de7c92 <__udivmoddi4+0xfa>
c0de7bc4:	b3cb      	cbz	r3, c0de7c3a <__udivmoddi4+0xa2>
c0de7bc6:	2100      	movs	r1, #0
c0de7bc8:	f1bc 0f00 	cmp.w	ip, #0
c0de7bcc:	bf18      	it	ne
c0de7bce:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7bd2:	2400      	movs	r4, #0
c0de7bd4:	e0a6      	b.n	c0de7d24 <__udivmoddi4+0x18c>
c0de7bd6:	2b00      	cmp	r3, #0
c0de7bd8:	d03e      	beq.n	c0de7c58 <__udivmoddi4+0xc0>
c0de7bda:	2800      	cmp	r0, #0
c0de7bdc:	d04f      	beq.n	c0de7c7e <__udivmoddi4+0xe6>
c0de7bde:	1e5d      	subs	r5, r3, #1
c0de7be0:	422b      	tst	r3, r5
c0de7be2:	d158      	bne.n	c0de7c96 <__udivmoddi4+0xfe>
c0de7be4:	f1bc 0f00 	cmp.w	ip, #0
c0de7be8:	bf1c      	itt	ne
c0de7bea:	ea05 0001 	andne.w	r0, r5, r1
c0de7bee:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7bf2:	fa93 f0a3 	rbit	r0, r3
c0de7bf6:	fab0 f080 	clz	r0, r0
c0de7bfa:	fa21 f400 	lsr.w	r4, r1, r0
c0de7bfe:	e048      	b.n	c0de7c92 <__udivmoddi4+0xfa>
c0de7c00:	1e55      	subs	r5, r2, #1
c0de7c02:	422a      	tst	r2, r5
c0de7c04:	d129      	bne.n	c0de7c5a <__udivmoddi4+0xc2>
c0de7c06:	f1bc 0f00 	cmp.w	ip, #0
c0de7c0a:	bf1e      	ittt	ne
c0de7c0c:	2300      	movne	r3, #0
c0de7c0e:	4005      	andne	r5, r0
c0de7c10:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7c14:	2a01      	cmp	r2, #1
c0de7c16:	f000 8085 	beq.w	c0de7d24 <__udivmoddi4+0x18c>
c0de7c1a:	fa92 f2a2 	rbit	r2, r2
c0de7c1e:	004c      	lsls	r4, r1, #1
c0de7c20:	fab2 f282 	clz	r2, r2
c0de7c24:	f002 031f 	and.w	r3, r2, #31
c0de7c28:	40d1      	lsrs	r1, r2
c0de7c2a:	40d8      	lsrs	r0, r3
c0de7c2c:	231f      	movs	r3, #31
c0de7c2e:	4393      	bics	r3, r2
c0de7c30:	fa04 f303 	lsl.w	r3, r4, r3
c0de7c34:	ea43 0400 	orr.w	r4, r3, r0
c0de7c38:	e074      	b.n	c0de7d24 <__udivmoddi4+0x18c>
c0de7c3a:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7c3e:	f1bc 0f00 	cmp.w	ip, #0
c0de7c42:	d026      	beq.n	c0de7c92 <__udivmoddi4+0xfa>
c0de7c44:	fb04 0012 	mls	r0, r4, r2, r0
c0de7c48:	2100      	movs	r1, #0
c0de7c4a:	e020      	b.n	c0de7c8e <__udivmoddi4+0xf6>
c0de7c4c:	f105 0e01 	add.w	lr, r5, #1
c0de7c50:	f1be 0f20 	cmp.w	lr, #32
c0de7c54:	d00b      	beq.n	c0de7c6e <__udivmoddi4+0xd6>
c0de7c56:	e028      	b.n	c0de7caa <__udivmoddi4+0x112>
c0de7c58:	e064      	b.n	c0de7d24 <__udivmoddi4+0x18c>
c0de7c5a:	fab1 f481 	clz	r4, r1
c0de7c5e:	fab2 f582 	clz	r5, r2
c0de7c62:	1b2c      	subs	r4, r5, r4
c0de7c64:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7c68:	f1be 0f20 	cmp.w	lr, #32
c0de7c6c:	d15d      	bne.n	c0de7d2a <__udivmoddi4+0x192>
c0de7c6e:	f04f 0e20 	mov.w	lr, #32
c0de7c72:	f04f 0a00 	mov.w	sl, #0
c0de7c76:	f04f 0b00 	mov.w	fp, #0
c0de7c7a:	460e      	mov	r6, r1
c0de7c7c:	e021      	b.n	c0de7cc2 <__udivmoddi4+0x12a>
c0de7c7e:	fbb1 f4f3 	udiv	r4, r1, r3
c0de7c82:	f1bc 0f00 	cmp.w	ip, #0
c0de7c86:	d004      	beq.n	c0de7c92 <__udivmoddi4+0xfa>
c0de7c88:	2000      	movs	r0, #0
c0de7c8a:	fb04 1113 	mls	r1, r4, r3, r1
c0de7c8e:	e9cc 0100 	strd	r0, r1, [ip]
c0de7c92:	2100      	movs	r1, #0
c0de7c94:	e046      	b.n	c0de7d24 <__udivmoddi4+0x18c>
c0de7c96:	fab1 f581 	clz	r5, r1
c0de7c9a:	fab3 f683 	clz	r6, r3
c0de7c9e:	1b75      	subs	r5, r6, r5
c0de7ca0:	2d1f      	cmp	r5, #31
c0de7ca2:	f4bf af88 	bcs.w	c0de7bb6 <__udivmoddi4+0x1e>
c0de7ca6:	f105 0e01 	add.w	lr, r5, #1
c0de7caa:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7cae:	f1c5 051f 	rsb	r5, r5, #31
c0de7cb2:	fa01 f605 	lsl.w	r6, r1, r5
c0de7cb6:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de7cba:	40a8      	lsls	r0, r5
c0de7cbc:	f04f 0a00 	mov.w	sl, #0
c0de7cc0:	4326      	orrs	r6, r4
c0de7cc2:	f04f 0800 	mov.w	r8, #0
c0de7cc6:	f1be 0f00 	cmp.w	lr, #0
c0de7cca:	d01c      	beq.n	c0de7d06 <__udivmoddi4+0x16e>
c0de7ccc:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7cd0:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7cd4:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de7cd8:	0076      	lsls	r6, r6, #1
c0de7cda:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7cde:	1aae      	subs	r6, r5, r2
c0de7ce0:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7ce4:	43cf      	mvns	r7, r1
c0de7ce6:	43ec      	mvns	r4, r5
c0de7ce8:	18a4      	adds	r4, r4, r2
c0de7cea:	eb57 0403 	adcs.w	r4, r7, r3
c0de7cee:	bf5c      	itt	pl
c0de7cf0:	468b      	movpl	fp, r1
c0de7cf2:	462e      	movpl	r6, r5
c0de7cf4:	0040      	lsls	r0, r0, #1
c0de7cf6:	0fe1      	lsrs	r1, r4, #31
c0de7cf8:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7cfc:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7d00:	46a2      	mov	sl, r4
c0de7d02:	4688      	mov	r8, r1
c0de7d04:	e7df      	b.n	c0de7cc6 <__udivmoddi4+0x12e>
c0de7d06:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7d0a:	f1bc 0f00 	cmp.w	ip, #0
c0de7d0e:	bf18      	it	ne
c0de7d10:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7d14:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7d18:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7d1c:	f020 0001 	bic.w	r0, r0, #1
c0de7d20:	ea40 0408 	orr.w	r4, r0, r8
c0de7d24:	4620      	mov	r0, r4
c0de7d26:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7d2a:	f1be 0f1f 	cmp.w	lr, #31
c0de7d2e:	d804      	bhi.n	c0de7d3a <__udivmoddi4+0x1a2>
c0de7d30:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7d34:	f1ce 0520 	rsb	r5, lr, #32
c0de7d38:	e7bb      	b.n	c0de7cb2 <__udivmoddi4+0x11a>
c0de7d3a:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7d3e:	f1ae 0420 	sub.w	r4, lr, #32
c0de7d42:	f04f 0b00 	mov.w	fp, #0
c0de7d46:	fa20 f504 	lsr.w	r5, r0, r4
c0de7d4a:	fa01 f607 	lsl.w	r6, r1, r7
c0de7d4e:	fa00 fa07 	lsl.w	sl, r0, r7
c0de7d52:	ea46 0805 	orr.w	r8, r6, r5
c0de7d56:	fa21 f604 	lsr.w	r6, r1, r4
c0de7d5a:	4640      	mov	r0, r8
c0de7d5c:	e7b1      	b.n	c0de7cc2 <__udivmoddi4+0x12a>
	...

c0de7d60 <__aeabi_memcpy>:
c0de7d60:	f000 b81c 	b.w	c0de7d9c <memcpy>

c0de7d64 <__aeabi_memmove>:
c0de7d64:	f000 b828 	b.w	c0de7db8 <memmove>

c0de7d68 <__aeabi_memset>:
c0de7d68:	460b      	mov	r3, r1
c0de7d6a:	4611      	mov	r1, r2
c0de7d6c:	461a      	mov	r2, r3
c0de7d6e:	f000 b83d 	b.w	c0de7dec <memset>
c0de7d72:	bf00      	nop

c0de7d74 <__aeabi_memclr>:
c0de7d74:	460a      	mov	r2, r1
c0de7d76:	2100      	movs	r1, #0
c0de7d78:	f000 b838 	b.w	c0de7dec <memset>

c0de7d7c <__aeabi_uldivmod>:
c0de7d7c:	b540      	push	{r6, lr}
c0de7d7e:	b084      	sub	sp, #16
c0de7d80:	ae02      	add	r6, sp, #8
c0de7d82:	9600      	str	r6, [sp, #0]
c0de7d84:	f7ff ff08 	bl	c0de7b98 <__udivmoddi4>
c0de7d88:	9a02      	ldr	r2, [sp, #8]
c0de7d8a:	9b03      	ldr	r3, [sp, #12]
c0de7d8c:	b004      	add	sp, #16
c0de7d8e:	bd40      	pop	{r6, pc}

c0de7d90 <explicit_bzero>:
c0de7d90:	f000 b800 	b.w	c0de7d94 <bzero>

c0de7d94 <bzero>:
c0de7d94:	460a      	mov	r2, r1
c0de7d96:	2100      	movs	r1, #0
c0de7d98:	f000 b828 	b.w	c0de7dec <memset>

c0de7d9c <memcpy>:
c0de7d9c:	440a      	add	r2, r1
c0de7d9e:	4291      	cmp	r1, r2
c0de7da0:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de7da4:	d100      	bne.n	c0de7da8 <memcpy+0xc>
c0de7da6:	4770      	bx	lr
c0de7da8:	b510      	push	{r4, lr}
c0de7daa:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7dae:	4291      	cmp	r1, r2
c0de7db0:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7db4:	d1f9      	bne.n	c0de7daa <memcpy+0xe>
c0de7db6:	bd10      	pop	{r4, pc}

c0de7db8 <memmove>:
c0de7db8:	4288      	cmp	r0, r1
c0de7dba:	b510      	push	{r4, lr}
c0de7dbc:	eb01 0402 	add.w	r4, r1, r2
c0de7dc0:	d902      	bls.n	c0de7dc8 <memmove+0x10>
c0de7dc2:	4284      	cmp	r4, r0
c0de7dc4:	4623      	mov	r3, r4
c0de7dc6:	d807      	bhi.n	c0de7dd8 <memmove+0x20>
c0de7dc8:	1e43      	subs	r3, r0, #1
c0de7dca:	42a1      	cmp	r1, r4
c0de7dcc:	d008      	beq.n	c0de7de0 <memmove+0x28>
c0de7dce:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7dd2:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de7dd6:	e7f8      	b.n	c0de7dca <memmove+0x12>
c0de7dd8:	4601      	mov	r1, r0
c0de7dda:	4402      	add	r2, r0
c0de7ddc:	428a      	cmp	r2, r1
c0de7dde:	d100      	bne.n	c0de7de2 <memmove+0x2a>
c0de7de0:	bd10      	pop	{r4, pc}
c0de7de2:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de7de6:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7dea:	e7f7      	b.n	c0de7ddc <memmove+0x24>

c0de7dec <memset>:
c0de7dec:	4603      	mov	r3, r0
c0de7dee:	4402      	add	r2, r0
c0de7df0:	4293      	cmp	r3, r2
c0de7df2:	d100      	bne.n	c0de7df6 <memset+0xa>
c0de7df4:	4770      	bx	lr
c0de7df6:	f803 1b01 	strb.w	r1, [r3], #1
c0de7dfa:	e7f9      	b.n	c0de7df0 <memset+0x4>

c0de7dfc <setjmp>:
c0de7dfc:	46ec      	mov	ip, sp
c0de7dfe:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7e02:	f04f 0000 	mov.w	r0, #0
c0de7e06:	4770      	bx	lr

c0de7e08 <longjmp>:
c0de7e08:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7e0c:	46e5      	mov	sp, ip
c0de7e0e:	0008      	movs	r0, r1
c0de7e10:	bf08      	it	eq
c0de7e12:	2001      	moveq	r0, #1
c0de7e14:	4770      	bx	lr
c0de7e16:	bf00      	nop

c0de7e18 <strcmp>:
c0de7e18:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7e1c:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7e20:	2a01      	cmp	r2, #1
c0de7e22:	bf28      	it	cs
c0de7e24:	429a      	cmpcs	r2, r3
c0de7e26:	d0f7      	beq.n	c0de7e18 <strcmp>
c0de7e28:	1ad0      	subs	r0, r2, r3
c0de7e2a:	4770      	bx	lr

c0de7e2c <strlen>:
c0de7e2c:	4603      	mov	r3, r0
c0de7e2e:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de7e32:	2a00      	cmp	r2, #0
c0de7e34:	d1fb      	bne.n	c0de7e2e <strlen+0x2>
c0de7e36:	1a18      	subs	r0, r3, r0
c0de7e38:	3801      	subs	r0, #1
c0de7e3a:	4770      	bx	lr

c0de7e3c <strncmp>:
c0de7e3c:	b510      	push	{r4, lr}
c0de7e3e:	b16a      	cbz	r2, c0de7e5c <strncmp+0x20>
c0de7e40:	3901      	subs	r1, #1
c0de7e42:	1884      	adds	r4, r0, r2
c0de7e44:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7e48:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de7e4c:	429a      	cmp	r2, r3
c0de7e4e:	d103      	bne.n	c0de7e58 <strncmp+0x1c>
c0de7e50:	42a0      	cmp	r0, r4
c0de7e52:	d001      	beq.n	c0de7e58 <strncmp+0x1c>
c0de7e54:	2a00      	cmp	r2, #0
c0de7e56:	d1f5      	bne.n	c0de7e44 <strncmp+0x8>
c0de7e58:	1ad0      	subs	r0, r2, r3
c0de7e5a:	bd10      	pop	{r4, pc}
c0de7e5c:	4610      	mov	r0, r2
c0de7e5e:	e7fc      	b.n	c0de7e5a <strncmp+0x1e>

c0de7e60 <strncpy>:
c0de7e60:	4603      	mov	r3, r0
c0de7e62:	b510      	push	{r4, lr}
c0de7e64:	3901      	subs	r1, #1
c0de7e66:	b132      	cbz	r2, c0de7e76 <strncpy+0x16>
c0de7e68:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de7e6c:	3a01      	subs	r2, #1
c0de7e6e:	f803 4b01 	strb.w	r4, [r3], #1
c0de7e72:	2c00      	cmp	r4, #0
c0de7e74:	d1f7      	bne.n	c0de7e66 <strncpy+0x6>
c0de7e76:	2100      	movs	r1, #0
c0de7e78:	441a      	add	r2, r3
c0de7e7a:	4293      	cmp	r3, r2
c0de7e7c:	d100      	bne.n	c0de7e80 <strncpy+0x20>
c0de7e7e:	bd10      	pop	{r4, pc}
c0de7e80:	f803 1b01 	strb.w	r1, [r3], #1
c0de7e84:	e7f9      	b.n	c0de7e7a <strncpy+0x1a>

c0de7e86 <C_home_boilerplate_14px_bitmap>:
c0de7e86:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de7e96:	fc7b df0f 7ffe 7ff8                          {........

c0de7e9f <C_home_boilerplate_14px>:
c0de7e9f:	000e 000e 0000 7e86 c0de                    .......~..

c0de7ea9 <C_Information_circle_14px_bitmap>:
c0de7ea9:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de7eb9:	e7ff 8fff 1ffc 1ee0                          .........

c0de7ec2 <C_Information_circle_14px>:
c0de7ec2:	000e 000e 0000 7ea9 c0de                    .......~..

c0de7ecc <C_Quit_14px_bitmap>:
c0de7ecc:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de7edc:	6680 9801 7f06 fff9                          .f.......

c0de7ee5 <C_Quit_14px>:
c0de7ee5:	000e 000e 0000 7ecc c0de                    .......~..

c0de7eef <C_Switch_Off_8px_bitmap>:
c0de7eef:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de7efb <C_Switch_Off_8px>:
c0de7efb:	000c 0008 0000 7eef c0de                    .......~..

c0de7f05 <C_Switch_On_8px_bitmap>:
c0de7f05:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de7f11 <C_Switch_On_8px>:
c0de7f11:	000c 0008 0000 7f05 c0de                    ..........

c0de7f1b <C_icon_back_x_bitmap>:
c0de7f1b:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de7f2b:	003f 0078 00c0 0000                          ?.x......

c0de7f34 <C_icon_back_x>:
c0de7f34:	000e 000e 0000 7f1b c0de                    ..........

c0de7f3e <C_icon_coggle_bitmap>:
c0de7f3e:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de7f4e:	807f 00b4 00c0 0000                          .........

c0de7f57 <C_icon_coggle>:
c0de7f57:	000e 000e 0000 7f3e c0de                    ......>...

c0de7f61 <C_icon_crossmark_bitmap>:
c0de7f61:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de7f71:	8373 1c87 600e 0018                          s....`...

c0de7f7a <C_icon_crossmark>:
c0de7f7a:	000e 000e 0000 7f61 c0de                    ......a...

c0de7f84 <C_icon_down_bitmap>:
c0de7f84:	2184 8024                                   .!$.

c0de7f88 <C_icon_down>:
c0de7f88:	0007 0004 0000 7f84 c0de                    ..........

c0de7f92 <C_icon_left_bitmap>:
c0de7f92:	8882 80a0                                   ....

c0de7f96 <C_icon_left>:
c0de7f96:	0004 0007 0000 7f92 c0de                    ..........

c0de7fa0 <C_icon_processing_bitmap>:
c0de7fa0:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de7fb0:	8361 04b7 03c8 0000                          a........

c0de7fb9 <C_icon_processing>:
c0de7fb9:	000e 000e 0000 7fa0 c0de                    ..........

c0de7fc3 <C_icon_right_bitmap>:
c0de7fc3:	5110 1014                                   .Q..

c0de7fc7 <C_icon_right>:
c0de7fc7:	0004 0007 0000 7fc3 c0de                    ..........

c0de7fd1 <C_icon_up_bitmap>:
c0de7fd1:	4812 1042                                   .HB.

c0de7fd5 <C_icon_up>:
c0de7fd5:	0007 0004 0000 7fd1 c0de                    ..........

c0de7fdf <C_icon_validate_14_bitmap>:
c0de7fdf:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7fef:	a3b3 a3a3 f0b2                               ......P

c0de7ff6 <C_icon_validate_14>:
c0de7ff6:	000e 000e 0100 7fdf c0de                    ..........

c0de8000 <C_icon_warning_bitmap>:
c0de8000:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de8010:	e01f 801f 001e 0018                          .........

c0de8019 <C_icon_warning>:
c0de8019:	000e 000e 0000 8000 c0de                    ..........

c0de8023 <C_app_boilerplate_14px_bitmap>:
c0de8023:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de8033:	0384 00f0 0000 0000                          .........

c0de803c <C_app_boilerplate_14px>:
c0de803c:	000e 000e 0000 8023 c0de 7544 6d6d 2079     ......#...Dummy 
c0de804c:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de805c:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de806c:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de807c:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de808c:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de809c:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de80ac:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de80bc:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de80cc:	5300 6769 696e 676e 4100 6464 6572 7373     .Signing.Address
c0de80dc:	7620 7265 6669 6569 0064 7241 2065 6f79      verified.Are yo
c0de80ec:	2075 7573 6572 7420 0a6f 6c61 6f6c 2077     u sure to.allow 
c0de80fc:	7564 6d6d 2079 0a32 6e69 7420 6172 736e     dummy 2.in trans
c0de810c:	6361 6974 6e6f 3f73 5400 6172 736e 6361     actions?.Transac
c0de811c:	6974 6e6f 7320 6769 656e 0064 6f54 6120     tion signed.To a
c0de812c:	6363 7065 2074 6972 6b73 202c 7270 7365     ccept risk, pres
c0de813c:	2073 6f62 6874 6220 7475 6f74 736e 4400     s both buttons.D
c0de814c:	7665 6c65 706f 7265 4500 616e 6c62 6465     eveloper.Enabled
c0de815c:	4100 6c6c 776f 6420 6d75 796d 3120 690a     .Allow dummy 1.i
c0de816c:	206e 7274 6e61 6173 7463 6f69 736e 5300     n transactions.S
c0de817c:	6769 206e 656d 7373 6761 0065 654d 7373     ign message.Mess
c0de818c:	6761 2065 6973 6e67 6465 5300 6769 206e     age signed.Sign 
c0de819c:	7274 6e61 6173 7463 6f69 006e 6552 656a     transaction.Reje
c0de81ac:	7463 7420 6172 736e 6361 6974 6e6f 4100     ct transaction.A
c0de81bc:	6363 7065 2074 6972 6b73 6120 646e 7320     ccept risk and s
c0de81cc:	6769 206e 656d 7373 6761 0065 6c41 6f6c     ign message.Allo
c0de81dc:	2077 7564 6d6d 2079 0a32 6e69 7420 6172     w dummy 2.in tra
c0de81ec:	736e 6361 6974 6e6f 0073 6556 7372 6f69     nsactions.Versio
c0de81fc:	006e 6143 636e 6c65 4100 6464 6572 7373     n.Cancel.Address
c0de820c:	7620 7265 6669 6369 7461 6f69 206e 6163      verification ca
c0de821c:	636e 6c65 656c 0064 6944 6173 6c62 6465     ncelled.Disabled
c0de822c:	4100 7070 7320 7465 6974 676e 0073 6341     .App settings.Ac
c0de823c:	6563 7470 7220 7369 206b 6e61 2064 6973     cept risk and si
c0de824c:	6e67 7420 6172 736e 6361 6974 6e6f 4200     gn transaction.B
c0de825c:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0de826c:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0de827c:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0de828c:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0de829c:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0de82ac:	4544 0046 4f42 204c 2e25 732a 4200 6361     DEF.BOL %.*s.Bac
c0de82bc:	006b 6441 7264 7365 0073 7544 6d6d 2079     k.Address.Dummy 
c0de82cc:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0de82dc:	6f63 666e 7269 006d 7854 6148 6873 5400     confirm.TxHash.T
c0de82ec:	6172 736e 6361 6974 6e6f 7220 6a65 6365     ransaction rejec
c0de82fc:	6574 0064 7041 2070 6e69 6f66 5300 6769     ted.App info.Sig
c0de830c:	206e 706f 7265 7461 6f69 006e 6552 656a     n operation.Reje
c0de831c:	7463 6d20 7365 6173 6567 5200 6a65 6365     ct message.Rejec
c0de832c:	2074 706f 7265 7461 6f69 006e 4b5a 4f4e     t operation.ZKNO
c0de833c:	0058 6556 6972 7966 4220 4c4f 6120 6464     X.Verify BOL add
c0de834c:	6572 7373 5200 7665 6569 2077 7274 6e61     ress.Review tran
c0de835c:	6173 7463 6f69 0a6e 6f74 2820 6170 7472     saction.to (part
c0de836c:	6169 296c 7320 6769 006e 4b5a 4f4e 4858     ial) sign.ZKNOXH
c0de837c:	0057 7061 2070 7369 7220 6165 7964 5100     W.app is ready.Q
c0de838c:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0de839c:	0000 0000 6501 d5c4 445f b317 e968 545a     .....e.._D..h.ZT
c0de83ac:	1a00 3230 b03c e84f 3e34 d45a 4584 6323     ..02<.O.4>Z..E#c
c0de83bc:	98a5 59d0 ed73 53a7 9d29 487d 3933 08d8     ...Ys..S).}H39..
c0de83cc:	a109 05d8 bd53 02a4 feff fe5b ffff ffff     ....S.....[.....
c0de83dc:	0000 0100 ce05 c698 051b 7ff4 eae2 a5e9     ................
c0de83ec:	bd42 f699 e7b2 4682 1623 b540 9545 bffe     B......F#.@.E...
c0de83fc:	1ed5 53b8 0000 0000 0000 0000 0000 0000     ...S............
	...
c0de841c:	0000 0300 0001 0000 0000 0000 0002 0000     ................
c0de842c:	0000 0000 0003 0000 0000 0000 0004 0000     ................
c0de843c:	0000 0000 d600 b746 deed 18a5 d083 3f88     ......F........?
c0de844c:	4964 2dda 9fa0 c7c3 53f4 490a 696d ee29     dI.-.....S.Imi).
c0de845c:	9b64 7f4c a005 91c0 8356 988b af28 123f     d.L.....V...(.?.
c0de846c:	e167 e675 84e2 9dc7 6d1b d08a 0acd d9e0     g.u......m......
c0de847c:	9057 6e33 c61c 38ee 9c13 111c 2302 7a53     W.3n...8.....#Sz
c0de848c:	e78c 069d 587e 10cc c667 b7fb b3d8 b0a1     ....~X..g.......
c0de849c:	fc8d 088f 4d27 e8bc 51d1 9679 c09b 9fd4     ....'M...Qy.....
c0de84ac:	25a7 dfbd e59d e055 6aba 3c69 db6a fc52     .%....U..ji<j.R.
c0de84bc:	e79e 2ca8 fb1c d469 67ca 525f ce0c 0276     ...,..i..g_R..v.
c0de84cc:	6802 0076 8fff 0087 1974 7104 fd74 b506     .hv.....t..qt...
c0de84dc:	7628 e1e7 0c06 ce89 265c 0534 0a37 b608     (v......\&4.7...
c0de84ec:	30d0 0b2b 3eab b8ed 2039 0aee 7267 dc97     .0+..>..9 ..gr..
c0de84fc:	2139 f126 a570 4a89 4464 3854 15d0 32ac     9!&.p..JdDT8...2
c0de850c:	36ba 090f de2c ba44 1fb1 b7c2 b5d4 d2c0     .6..,.D.........
c0de851c:	2216 ce8c 820b 39b7 8de7 57da 5ae7 80c6     .".....9...W.Z..
c0de852c:	68ef f19d 8f15 eee3 09d8 6d5c d14b c7b2     .h........\mK...
c0de853c:	66c1 fdee 4a03 6fe2 49fb 6644 4563 7bec     .f...J.o.IDfcE.{
c0de854c:	3f44 92cc 36bb da52 4fa9 92f9 77e1 a629     D?...6R..O...w).
c0de855c:	d3fe 736c 7104 de2f 1782 e713 026d fd5d     ..ls.q/.....m.].
c0de856c:	bde4 2c8c 68f3 7a02 34c1 7075 3983 c57b     ...,.h.z.4up.9{.
c0de857c:	16f1 fc60 d059 a598 2363 8445 5ad4 343e     ..`.Y...c#E..Z>4
c0de858c:	4fe8 3cb0 3032 001a 5a54 68e9 17b3 5f44     .O.<20..TZ.h..D_
c0de859c:	c4d5 0165 0000 0000 0000 0000 0000 0000     ..e.............
	...
c0de85bc:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de85cc:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de85dc:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de85ec:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de85fc:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de860c:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de861c:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de863c:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de864c:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de865c:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de866c:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de867c:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de868c:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de869c:	2d87 8b7d 8802 641c ea76 fcc0 c158 734b     .-}....dv...X.Ks
c0de86ac:	685c 6ec7 e5f3 c19b 40ad e4b3 4d5a f15b     \h.n.....@..ZM[.
c0de86bc:	5736 3e72                                   6Wr>

c0de86c0 <.L__const.handler_cmd_Poseidon.input>:
c0de86c0:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de86d0:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de86e0:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de86f0:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de8700:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de8710:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de8720:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de8730:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de8740:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de8750:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8760 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de877c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de878c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de879c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de87ac:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de87bc:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de87cc:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de87dc:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de87ec:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de87fc:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de881c:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de882c:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de883c:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de884c:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de885c:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de886c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de887c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de888c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de889c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de88bc:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de88cc:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de88dc:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de88ec:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de88fc:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de890c:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de891c:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de892c:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de893c:	9b44 9ffb                                   D...

c0de8940 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de895c:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de896c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de897c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de898c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de899c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de89ac:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de89bc:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de89cc:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de89dc:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de89fc:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de8a0c:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de8a1c:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de8a2c:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de8a3c:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de8a4c:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de8a5c:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de8a6c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de8a7c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de8a9c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de8aac:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de8abc:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de8acc:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de8adc:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de8aec:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de8afc:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de8b0c:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de8b1c:	8132 74b1                                   2..t

c0de8b20 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de8b20:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de8b30:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de8b40:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de8b50:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8b60:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8b70:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8b80 <.L__const.handler_cmd_PartialSig.commitmentlist_be>:
	...
c0de8b9c:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0de8bac:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0de8bbc:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0de8bcc:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0de8bdc:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0de8bec:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0de8bfc:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0de8c0c:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0de8c1c:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0de8c3c:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0de8c4c:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0de8c5c:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0de8c6c:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0de8c7c:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0de8c8c:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0de8c9c:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0de8cac:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0de8cbc:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0de8cdc:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0de8cec:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0de8cfc:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0de8d0c:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0de8d1c:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0de8d2c:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0de8d3c:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0de8d4c:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0de8d5c:	b87c 6a30                                   |.0j

c0de8d60 <.L__const.handler_cmd_PartialSig.groupkey_be>:
c0de8d60:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0de8d70:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0de8d80:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de8d90:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0de8da0 <settingContents>:
c0de8da0:	0000 0000 8dbc c0de 0001 0000               ............

c0de8dac <infoList>:
c0de8dac:	8df4 c0de 8dfc c0de 0000 0000 0002 0000     ................

c0de8dbc <contents>:
c0de8dbc:	0007 0000 03fc da7a 0002 0000 0000 0000     ......z.........
	...
c0de8df0:	1bd5 c0de                                   ....

c0de8df4 <INFO_TYPES>:
c0de8df4:	81f6 c0de 814b c0de                         ....K...

c0de8dfc <INFO_CONTENTS>:
c0de8dfc:	8075 c0de 8338 c0de                         u...8...

c0de8e04 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8e24:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8e34:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8e44 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8e44:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de8e54:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de8e64:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de8e74:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de8e84:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de8e94:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de8ea4:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de8eb4:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de8ec4:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de8ed4:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de8ee4:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de8ef4:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de8f04:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de8f14:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de8f24:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de8f34:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de8f44:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de8f54:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de8f64:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de8f74:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de8f84:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de8f94:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de8fa4:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de8fb4:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de8fc4:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de8fd4:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de8fe4:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de8ff4:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de9004:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de9014:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de9024:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de9034:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de9044:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de9054:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de9064:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de9074:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de9084:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de9094:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de90a4:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de90b4:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de90c4:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de90d4:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de90e4:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de90f4:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de9104:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de9114:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de9124:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de9134:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de9144:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de9154:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de9164:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de9174:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de9184:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de9194:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de91a4:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de91b4:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de91c4:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de91d4:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de91e4:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de91f4:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de9204:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de9214:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de9224:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de9234:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de9244:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de9254:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de9264:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de9274:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de9284:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de9294:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de92a4:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de92b4:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de92c4 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de92c4:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de92d4:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de92e4 <blindSigningWarning>:
c0de92e4:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de9310 <g_pcHex>:
c0de9310:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de9320 <g_pcHex_cap>:
c0de9320:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de9330 <_etext>:
	...

c0de9400 <N_storage_real>:
	...

c0de9600 <install_parameters>:
c0de9600:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9610:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9620:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9630:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
