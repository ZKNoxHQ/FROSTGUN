
build/flex/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f00b fd65 	bl	c0debad4 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f00b fa9d 	bl	c0deb554 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f00b fa64 	bl	c0deb4e8 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f00b fa55 	bl	c0deb4d2 <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f00c fa21 	bl	c0dec47c <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f00b fcc5 	bl	c0deb9cc <assert_exit>
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
c0de0056:	f00b fc73 	bl	c0deb940 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f00c f9fe 	bl	c0dec468 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f00b fca7 	bl	c0deb9cc <assert_exit>
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
c0de034a:	f00b f869 	bl	c0deb420 <io_send_response_buffers>
c0de034e:	bd80      	pop	{r7, pc}

c0de0350 <OUTLINED_FUNCTION_0>:
c0de0350:	9001      	str	r0, [sp, #4]
c0de0352:	7920      	ldrb	r0, [r4, #4]
c0de0354:	9002      	str	r0, [sp, #8]
c0de0356:	4770      	bx	lr

c0de0358 <app_main>:
c0de0358:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de035a:	f00b f843 	bl	c0deb3e4 <io_init>
c0de035e:	481e      	ldr	r0, [pc, #120]	@ (c0de03d8 <app_main+0x80>)
c0de0360:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0364:	b908      	cbnz	r0, c0de036a <app_main+0x12>
c0de0366:	f001 fbed 	bl	c0de1b44 <ui_menu_main>
c0de036a:	481c      	ldr	r0, [pc, #112]	@ (c0de03dc <app_main+0x84>)
c0de036c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0370:	4448      	add	r0, r9
c0de0372:	f00c f891 	bl	c0dec498 <explicit_bzero>
c0de0376:	481b      	ldr	r0, [pc, #108]	@ (c0de03e4 <app_main+0x8c>)
c0de0378:	4478      	add	r0, pc
c0de037a:	f00b fd53 	bl	c0debe24 <pic>
c0de037e:	7880      	ldrb	r0, [r0, #2]
c0de0380:	2801      	cmp	r0, #1
c0de0382:	d00d      	beq.n	c0de03a0 <app_main+0x48>
c0de0384:	2001      	movs	r0, #1
c0de0386:	f88d 0002 	strb.w	r0, [sp, #2]
c0de038a:	2000      	movs	r0, #0
c0de038c:	f8ad 0000 	strh.w	r0, [sp]
c0de0390:	4815      	ldr	r0, [pc, #84]	@ (c0de03e8 <app_main+0x90>)
c0de0392:	4478      	add	r0, pc
c0de0394:	f00b fd46 	bl	c0debe24 <pic>
c0de0398:	4669      	mov	r1, sp
c0de039a:	2203      	movs	r2, #3
c0de039c:	f00b fd7c 	bl	c0debe98 <nvm_write>
c0de03a0:	4d0f      	ldr	r5, [pc, #60]	@ (c0de03e0 <app_main+0x88>)
c0de03a2:	ac01      	add	r4, sp, #4
c0de03a4:	f00b f826 	bl	c0deb3f4 <io_recv_command>
c0de03a8:	2800      	cmp	r0, #0
c0de03aa:	d414      	bmi.n	c0de03d6 <app_main+0x7e>
c0de03ac:	4602      	mov	r2, r0
c0de03ae:	eb09 0105 	add.w	r1, r9, r5
c0de03b2:	4620      	mov	r0, r4
c0de03b4:	f00b f91e 	bl	c0deb5f4 <apdu_parser>
c0de03b8:	b130      	cbz	r0, c0de03c8 <app_main+0x70>
c0de03ba:	4620      	mov	r0, r4
c0de03bc:	f7ff fe59 	bl	c0de0072 <apdu_dispatcher>
c0de03c0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de03c4:	dcee      	bgt.n	c0de03a4 <app_main+0x4c>
c0de03c6:	e006      	b.n	c0de03d6 <app_main+0x7e>
c0de03c8:	2000      	movs	r0, #0
c0de03ca:	2100      	movs	r1, #0
c0de03cc:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de03d0:	f00b f826 	bl	c0deb420 <io_send_response_buffers>
c0de03d4:	e7e6      	b.n	c0de03a4 <app_main+0x4c>
c0de03d6:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de03d8:	00000de0 	.word	0x00000de0
c0de03dc:	00000000 	.word	0x00000000
c0de03e0:	000004b4 	.word	0x000004b4
c0de03e4:	0000f084 	.word	0x0000f084
c0de03e8:	0000f06a 	.word	0x0000f06a

c0de03ec <handler_get_app_name>:
c0de03ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03ee:	4808      	ldr	r0, [pc, #32]	@ (c0de0410 <handler_get_app_name+0x24>)
c0de03f0:	4478      	add	r0, pc
c0de03f2:	f00b fd17 	bl	c0debe24 <pic>
c0de03f6:	2100      	movs	r1, #0
c0de03f8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03fc:	9103      	str	r1, [sp, #12]
c0de03fe:	2107      	movs	r1, #7
c0de0400:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0404:	a801      	add	r0, sp, #4
c0de0406:	2101      	movs	r1, #1
c0de0408:	f00b f80a 	bl	c0deb420 <io_send_response_buffers>
c0de040c:	b004      	add	sp, #16
c0de040e:	bd80      	pop	{r7, pc}
c0de0410:	0000dde8 	.word	0x0000dde8

c0de0414 <handler_get_public_key>:
c0de0414:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0416:	b085      	sub	sp, #20
c0de0418:	4f23      	ldr	r7, [pc, #140]	@ (c0de04a8 <handler_get_public_key+0x94>)
c0de041a:	460c      	mov	r4, r1
c0de041c:	4605      	mov	r5, r0
c0de041e:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0422:	eb09 0607 	add.w	r6, r9, r7
c0de0426:	4630      	mov	r0, r6
c0de0428:	f00c f836 	bl	c0dec498 <explicit_bzero>
c0de042c:	2000      	movs	r0, #0
c0de042e:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de0432:	f809 0007 	strb.w	r0, [r9, r7]
c0de0436:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de043a:	4628      	mov	r0, r5
c0de043c:	f00a fd9c 	bl	c0deaf78 <buffer_read_u8>
c0de0440:	b308      	cbz	r0, c0de0486 <handler_get_public_key+0x72>
c0de0442:	eb09 0007 	add.w	r0, r9, r7
c0de0446:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de044a:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de044e:	4628      	mov	r0, r5
c0de0450:	f00a fde5 	bl	c0deb01e <buffer_read_bip32_path>
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
c0de047c:	f00a fe90 	bl	c0deb1a0 <bip32_derive_with_seed_get_pubkey_256>
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
c0de04a2:	f001 bc37 	b.w	c0de1d14 <ui_display_address>
c0de04a6:	bf00      	nop
c0de04a8:	00000000 	.word	0x00000000

c0de04ac <io_send_sw>:
c0de04ac:	b580      	push	{r7, lr}
c0de04ae:	4602      	mov	r2, r0
c0de04b0:	2000      	movs	r0, #0
c0de04b2:	2100      	movs	r1, #0
c0de04b4:	f00a ffb4 	bl	c0deb420 <io_send_response_buffers>
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
c0de04e0:	f00a ff9e 	bl	c0deb420 <io_send_response_buffers>
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
c0de0522:	f00b ffb9 	bl	c0dec498 <explicit_bzero>
c0de0526:	2000      	movs	r0, #0
c0de0528:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de052c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0530:	2001      	movs	r0, #1
c0de0532:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0536:	4620      	mov	r0, r4
c0de0538:	f00a fd1e 	bl	c0deaf78 <buffer_read_u8>
c0de053c:	b148      	cbz	r0, c0de0552 <handler_sign_tx+0x6a>
c0de053e:	eb09 0006 	add.w	r0, r9, r6
c0de0542:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0546:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de054a:	4620      	mov	r0, r4
c0de054c:	f00a fd67 	bl	c0deb01e <buffer_read_bip32_path>
c0de0550:	b9b8      	cbnz	r0, c0de0582 <handler_sign_tx+0x9a>
c0de0552:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0556:	e019      	b.n	c0de058c <handler_sign_tx+0xa4>
c0de0558:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de055c:	e016      	b.n	c0de058c <handler_sign_tx+0xa4>
c0de055e:	eb09 0106 	add.w	r1, r9, r6
c0de0562:	4408      	add	r0, r1
c0de0564:	f100 0108 	add.w	r1, r0, #8
c0de0568:	4620      	mov	r0, r4
c0de056a:	f00a fd82 	bl	c0deb072 <buffer_move>
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
c0de05d2:	f00b f9b5 	bl	c0deb940 <cx_keccak_256_hash_iovec>
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
c0de0628:	f00b ff8a 	bl	c0dec540 <strcmp>
c0de062c:	b110      	cbz	r0, c0de0634 <handler_sign_tx+0x14c>
c0de062e:	f001 fc6c 	bl	c0de1f0a <ui_display_transaction>
c0de0632:	e7d8      	b.n	c0de05e6 <handler_sign_tx+0xfe>
c0de0634:	f001 fc66 	bl	c0de1f04 <ui_display_blind_signed_transaction>
c0de0638:	e7d5      	b.n	c0de05e6 <handler_sign_tx+0xfe>
c0de063a:	20ff      	movs	r0, #255	@ 0xff
c0de063c:	f00b fdce 	bl	c0dec1dc <os_sched_exit>
c0de0640:	00000000 	.word	0x00000000
c0de0644:	00000de0 	.word	0x00000de0
c0de0648:	00000de1 	.word	0x00000de1
c0de064c:	0000d31f 	.word	0x0000d31f

c0de0650 <io_send_sw>:
c0de0650:	b580      	push	{r7, lr}
c0de0652:	4602      	mov	r2, r0
c0de0654:	2000      	movs	r0, #0
c0de0656:	2100      	movs	r1, #0
c0de0658:	f00a fee2 	bl	c0deb420 <io_send_response_buffers>
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
c0de0670:	f001 fc4e 	bl	c0de1f10 <zkn_prv_hash>
c0de0674:	b988      	cbnz	r0, c0de069a <handler_cmd_blake2b512+0x3c>
c0de0676:	a840      	add	r0, sp, #256	@ 0x100
c0de0678:	2140      	movs	r1, #64	@ 0x40
c0de067a:	f000 f817 	bl	c0de06ac <io_send_response_pointer>
c0de067e:	2000      	movs	r0, #0
c0de0680:	e00d      	b.n	c0de069e <handler_cmd_blake2b512+0x40>
c0de0682:	4668      	mov	r0, sp
c0de0684:	2109      	movs	r1, #9
c0de0686:	2240      	movs	r2, #64	@ 0x40
c0de0688:	f00b f988 	bl	c0deb99c <cx_hash_init_ex>
c0de068c:	b928      	cbnz	r0, c0de069a <handler_cmd_blake2b512+0x3c>
c0de068e:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0692:	4668      	mov	r0, sp
c0de0694:	f00b f987 	bl	c0deb9a6 <cx_hash_update>
c0de0698:	b118      	cbz	r0, c0de06a2 <handler_cmd_blake2b512+0x44>
c0de069a:	f000 fff5 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de069e:	b050      	add	sp, #320	@ 0x140
c0de06a0:	bd10      	pop	{r4, pc}
c0de06a2:	4668      	mov	r0, sp
c0de06a4:	a940      	add	r1, sp, #256	@ 0x100
c0de06a6:	f00b f974 	bl	c0deb992 <cx_hash_final>
c0de06aa:	e7e3      	b.n	c0de0674 <handler_cmd_blake2b512+0x16>

c0de06ac <io_send_response_pointer>:
c0de06ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de06ae:	2200      	movs	r2, #0
c0de06b0:	ab01      	add	r3, sp, #4
c0de06b2:	c307      	stmia	r3!, {r0, r1, r2}
c0de06b4:	a801      	add	r0, sp, #4
c0de06b6:	2101      	movs	r1, #1
c0de06b8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de06bc:	f00a feb0 	bl	c0deb420 <io_send_response_buffers>
c0de06c0:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de06c2 <io_send_sw>:
c0de06c2:	b580      	push	{r7, lr}
c0de06c4:	4602      	mov	r2, r0
c0de06c6:	2000      	movs	r0, #0
c0de06c8:	2100      	movs	r1, #0
c0de06ca:	f00a fea9 	bl	c0deb420 <io_send_response_buffers>
c0de06ce:	bd80      	pop	{r7, pc}

c0de06d0 <handler_cmd_keccakH>:
c0de06d0:	b510      	push	{r4, lr}
c0de06d2:	b0f2      	sub	sp, #456	@ 0x1c8
c0de06d4:	4604      	mov	r4, r0
c0de06d6:	4668      	mov	r0, sp
c0de06d8:	2106      	movs	r1, #6
c0de06da:	2220      	movs	r2, #32
c0de06dc:	f00b f95e 	bl	c0deb99c <cx_hash_init_ex>
c0de06e0:	b950      	cbnz	r0, c0de06f8 <handler_cmd_keccakH+0x28>
c0de06e2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06e6:	4668      	mov	r0, sp
c0de06e8:	f00b f95d 	bl	c0deb9a6 <cx_hash_update>
c0de06ec:	b920      	cbnz	r0, c0de06f8 <handler_cmd_keccakH+0x28>
c0de06ee:	4668      	mov	r0, sp
c0de06f0:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06f2:	f00b f94e 	bl	c0deb992 <cx_hash_final>
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
c0de0720:	f00b fea2 	bl	c0dec468 <__aeabi_memcpy>
c0de0724:	a80c      	add	r0, sp, #48	@ 0x30
c0de0726:	491b      	ldr	r1, [pc, #108]	@ (c0de0794 <handler_cmd_bolos_stretch+0x88>)
c0de0728:	2220      	movs	r2, #32
c0de072a:	4479      	add	r1, pc
c0de072c:	f00b fe9c 	bl	c0dec468 <__aeabi_memcpy>
c0de0730:	a804      	add	r0, sp, #16
c0de0732:	4919      	ldr	r1, [pc, #100]	@ (c0de0798 <handler_cmd_bolos_stretch+0x8c>)
c0de0734:	2220      	movs	r2, #32
c0de0736:	4479      	add	r1, pc
c0de0738:	f00b fe96 	bl	c0dec468 <__aeabi_memcpy>
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
c0de076c:	f00b fc2a 	bl	c0debfc4 <cx_bn_mod_add>
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
c0de0790:	0000dcbe 	.word	0x0000dcbe
c0de0794:	0000dc32 	.word	0x0000dc32
c0de0798:	0000dda6 	.word	0x0000dda6

c0de079c <handler_cmd_Poseidon>:
c0de079c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de07a0:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de07a4:	4604      	mov	r4, r0
c0de07a6:	a860      	add	r0, sp, #384	@ 0x180
c0de07a8:	493c      	ldr	r1, [pc, #240]	@ (c0de089c <handler_cmd_Poseidon+0x100>)
c0de07aa:	22a0      	movs	r2, #160	@ 0xa0
c0de07ac:	4479      	add	r1, pc
c0de07ae:	f00b fe5b 	bl	c0dec468 <__aeabi_memcpy>
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
c0de07d2:	f00b fe49 	bl	c0dec468 <__aeabi_memcpy>
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
c0de07f0:	f00b fc2e 	bl	c0dec050 <cx_mont_alloc>
c0de07f4:	b968      	cbnz	r0, c0de0812 <handler_cmd_Poseidon+0x76>
c0de07f6:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07f8:	a80a      	add	r0, sp, #40	@ 0x28
c0de07fa:	f00b fc33 	bl	c0dec064 <cx_mont_init>
c0de07fe:	b940      	cbnz	r0, c0de0812 <handler_cmd_Poseidon+0x76>
c0de0800:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de0804:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0806:	2105      	movs	r1, #5
c0de0808:	2205      	movs	r2, #5
c0de080a:	4640      	mov	r0, r8
c0de080c:	f002 fe40 	bl	c0de3490 <Poseidon_alloc_init>
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
c0de0832:	f00b fb77 	bl	c0debf24 <cx_bn_init>
c0de0836:	2800      	cmp	r0, #0
c0de0838:	d1eb      	bne.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de083a:	69e8      	ldr	r0, [r5, #28]
c0de083c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de083e:	4601      	mov	r1, r0
c0de0840:	f00b fc1a 	bl	c0dec078 <cx_mont_to_montgomery>
c0de0844:	3701      	adds	r7, #1
c0de0846:	3620      	adds	r6, #32
c0de0848:	2800      	cmp	r0, #0
c0de084a:	d0ea      	beq.n	c0de0822 <handler_cmd_Poseidon+0x86>
c0de084c:	e7e1      	b.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de084e:	aa08      	add	r2, sp, #32
c0de0850:	4640      	mov	r0, r8
c0de0852:	2100      	movs	r1, #0
c0de0854:	2301      	movs	r3, #1
c0de0856:	f002 fe81 	bl	c0de355c <Poseidon>
c0de085a:	6820      	ldr	r0, [r4, #0]
c0de085c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de085e:	7800      	ldrb	r0, [r0, #0]
c0de0860:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de0864:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de0868:	4601      	mov	r1, r0
c0de086a:	f00b fc11 	bl	c0dec090 <cx_mont_from_montgomery>
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
c0de0888:	f00b fb38 	bl	c0debefc <cx_bn_destroy>
c0de088c:	2800      	cmp	r0, #0
c0de088e:	d1c0      	bne.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de0890:	f00b fb16 	bl	c0debec0 <cx_bn_unlock>
c0de0894:	2800      	cmp	r0, #0
c0de0896:	d1bc      	bne.n	c0de0812 <handler_cmd_Poseidon+0x76>
c0de0898:	2000      	movs	r0, #0
c0de089a:	e7bc      	b.n	c0de0816 <handler_cmd_Poseidon+0x7a>
c0de089c:	0000de10 	.word	0x0000de10
c0de08a0:	0000dd6c 	.word	0x0000dd6c

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
c0de08b8:	f00b fdd6 	bl	c0dec468 <__aeabi_memcpy>
c0de08bc:	ad01      	add	r5, sp, #4
c0de08be:	491b      	ldr	r1, [pc, #108]	@ (c0de092c <handler_cmd_Poseidon_ithRC+0x88>)
c0de08c0:	2220      	movs	r2, #32
c0de08c2:	4628      	mov	r0, r5
c0de08c4:	4479      	add	r1, pc
c0de08c6:	f00b fdcf 	bl	c0dec468 <__aeabi_memcpy>
c0de08ca:	a809      	add	r0, sp, #36	@ 0x24
c0de08cc:	2120      	movs	r1, #32
c0de08ce:	462a      	mov	r2, r5
c0de08d0:	f000 fee7 	bl	c0de16a2 <OUTLINED_FUNCTION_5>
c0de08d4:	bb08      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08d6:	a80a      	add	r0, sp, #40	@ 0x28
c0de08d8:	2120      	movs	r1, #32
c0de08da:	f00b fbb9 	bl	c0dec050 <cx_mont_alloc>
c0de08de:	b9e0      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08e0:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de08e2:	a80a      	add	r0, sp, #40	@ 0x28
c0de08e4:	f00b fbbe 	bl	c0dec064 <cx_mont_init>
c0de08e8:	b9b8      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08ea:	a80c      	add	r0, sp, #48	@ 0x30
c0de08ec:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08ee:	2105      	movs	r1, #5
c0de08f0:	2205      	movs	r2, #5
c0de08f2:	f002 fdcd 	bl	c0de3490 <Poseidon_alloc_init>
c0de08f6:	b980      	cbnz	r0, c0de091a <handler_cmd_Poseidon_ithRC+0x76>
c0de08f8:	6820      	ldr	r0, [r4, #0]
c0de08fa:	7806      	ldrb	r6, [r0, #0]
c0de08fc:	ac0c      	add	r4, sp, #48	@ 0x30
c0de08fe:	ad48      	add	r5, sp, #288	@ 0x120
c0de0900:	b12e      	cbz	r6, c0de090e <handler_cmd_Poseidon_ithRC+0x6a>
c0de0902:	4620      	mov	r0, r4
c0de0904:	4629      	mov	r1, r5
c0de0906:	f002 fdbf 	bl	c0de3488 <Poseidon_getNext_RC>
c0de090a:	3e01      	subs	r6, #1
c0de090c:	e7f8      	b.n	c0de0900 <handler_cmd_Poseidon_ithRC+0x5c>
c0de090e:	a848      	add	r0, sp, #288	@ 0x120
c0de0910:	f000 fed8 	bl	c0de16c4 <OUTLINED_FUNCTION_9>
c0de0914:	f00b fad4 	bl	c0debec0 <cx_bn_unlock>
c0de0918:	b118      	cbz	r0, c0de0922 <handler_cmd_Poseidon_ithRC+0x7e>
c0de091a:	f000 feb5 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de091e:	b050      	add	sp, #320	@ 0x140
c0de0920:	bd70      	pop	{r4, r5, r6, pc}
c0de0922:	2000      	movs	r0, #0
c0de0924:	e7fb      	b.n	c0de091e <handler_cmd_Poseidon_ithRC+0x7a>
c0de0926:	bf00      	nop
c0de0928:	0000da66 	.word	0x0000da66
c0de092c:	0000dc78 	.word	0x0000dc78

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
c0de0974:	f002 f870 	bl	c0de2a58 <tEdwards_alloc>
c0de0978:	b9a0      	cbnz	r0, c0de09a4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de097a:	a804      	add	r0, sp, #16
c0de097c:	a91a      	add	r1, sp, #104	@ 0x68
c0de097e:	aa01      	add	r2, sp, #4
c0de0980:	f001 fafc 	bl	c0de1f7c <zkn_prv2pub>
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
c0de099e:	f00b fa8f 	bl	c0debec0 <cx_bn_unlock>
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
c0de0a14:	f002 f820 	bl	c0de2a58 <tEdwards_alloc>
c0de0a18:	b9e8      	cbnz	r0, c0de0a56 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a1a:	a815      	add	r0, sp, #84	@ 0x54
c0de0a1c:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a1e:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a20:	f001 faac 	bl	c0de1f7c <zkn_prv2pub>
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
c0de0a42:	f001 fac3 	bl	c0de1fcc <EddsaPoseidon_Sign_final>
c0de0a46:	b930      	cbnz	r0, c0de0a56 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a48:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a4a:	2160      	movs	r1, #96	@ 0x60
c0de0a4c:	f7ff fe2e 	bl	c0de06ac <io_send_response_pointer>
c0de0a50:	f00b fa36 	bl	c0debec0 <cx_bn_unlock>
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
c0de0a92:	f002 f961 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
c0de0a96:	2800      	cmp	r0, #0
c0de0a98:	d14d      	bne.n	c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a9a:	f107 060c 	add.w	r6, r7, #12
c0de0a9e:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0aa2:	4638      	mov	r0, r7
c0de0aa4:	4631      	mov	r1, r6
c0de0aa6:	f002 f900 	bl	c0de2caa <tEdwards_IsOnCurve>
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
c0de0ac6:	f00b fccf 	bl	c0dec468 <__aeabi_memcpy>
c0de0aca:	af01      	add	r7, sp, #4
c0de0acc:	491e      	ldr	r1, [pc, #120]	@ (c0de0b48 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0ace:	2220      	movs	r2, #32
c0de0ad0:	4638      	mov	r0, r7
c0de0ad2:	4479      	add	r1, pc
c0de0ad4:	f00b fcc8 	bl	c0dec468 <__aeabi_memcpy>
c0de0ad8:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0adc:	a814      	add	r0, sp, #80	@ 0x50
c0de0ade:	4651      	mov	r1, sl
c0de0ae0:	463a      	mov	r2, r7
c0de0ae2:	4643      	mov	r3, r8
c0de0ae4:	f002 fb29 	bl	c0de313a <tEdwards_alloc_init>
c0de0ae8:	bb28      	cbnz	r0, c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aea:	a814      	add	r0, sp, #80	@ 0x50
c0de0aec:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0af0:	4631      	mov	r1, r6
c0de0af2:	f002 f8da 	bl	c0de2caa <tEdwards_IsOnCurve>
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
c0de0b14:	f002 fb96 	bl	c0de3244 <tEdwards_scalarMul>
c0de0b18:	b968      	cbnz	r0, c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b1a:	a814      	add	r0, sp, #80	@ 0x50
c0de0b1c:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b20:	a911      	add	r1, sp, #68	@ 0x44
c0de0b22:	f000 fdcc 	bl	c0de16be <OUTLINED_FUNCTION_8>
c0de0b26:	b930      	cbnz	r0, c0de0b36 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b28:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b2c:	f000 fdc3 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de0b30:	f00b f9c6 	bl	c0debec0 <cx_bn_unlock>
c0de0b34:	b120      	cbz	r0, c0de0b40 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b36:	f000 fda7 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de0b3a:	b06b      	add	sp, #428	@ 0x1ac
c0de0b3c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b40:	2000      	movs	r0, #0
c0de0b42:	e7fa      	b.n	c0de0b3a <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b44:	0000da98 	.word	0x0000da98
c0de0b48:	0000daaa 	.word	0x0000daaa

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
c0de0b82:	f002 f8e9 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
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
c0de0ba4:	f00b fc60 	bl	c0dec468 <__aeabi_memcpy>
c0de0ba8:	af03      	add	r7, sp, #12
c0de0baa:	4940      	ldr	r1, [pc, #256]	@ (c0de0cac <handler_cmd_tEdwards+0x160>)
c0de0bac:	4479      	add	r1, pc
c0de0bae:	e009      	b.n	c0de0bc4 <handler_cmd_tEdwards+0x78>
c0de0bb0:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0bb2:	493f      	ldr	r1, [pc, #252]	@ (c0de0cb0 <handler_cmd_tEdwards+0x164>)
c0de0bb4:	2220      	movs	r2, #32
c0de0bb6:	4630      	mov	r0, r6
c0de0bb8:	4479      	add	r1, pc
c0de0bba:	f00b fc55 	bl	c0dec468 <__aeabi_memcpy>
c0de0bbe:	af03      	add	r7, sp, #12
c0de0bc0:	493c      	ldr	r1, [pc, #240]	@ (c0de0cb4 <handler_cmd_tEdwards+0x168>)
c0de0bc2:	4479      	add	r1, pc
c0de0bc4:	4638      	mov	r0, r7
c0de0bc6:	2220      	movs	r2, #32
c0de0bc8:	f00b fc4e 	bl	c0dec468 <__aeabi_memcpy>
c0de0bcc:	a819      	add	r0, sp, #100	@ 0x64
c0de0bce:	ab16      	add	r3, sp, #88	@ 0x58
c0de0bd0:	4631      	mov	r1, r6
c0de0bd2:	463a      	mov	r2, r7
c0de0bd4:	f002 fab1 	bl	c0de313a <tEdwards_alloc_init>
c0de0bd8:	2800      	cmp	r0, #0
c0de0bda:	d1d5      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0bdc:	a819      	add	r0, sp, #100	@ 0x64
c0de0bde:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0be0:	aa03      	add	r2, sp, #12
c0de0be2:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0be4:	f002 faa9 	bl	c0de313a <tEdwards_alloc_init>
c0de0be8:	2800      	cmp	r0, #0
c0de0bea:	d1cd      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0bec:	2000      	movs	r0, #0
c0de0bee:	f10d 020b 	add.w	r2, sp, #11
c0de0bf2:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0bf6:	a819      	add	r0, sp, #100	@ 0x64
c0de0bf8:	a916      	add	r1, sp, #88	@ 0x58
c0de0bfa:	f002 f856 	bl	c0de2caa <tEdwards_IsOnCurve>
c0de0bfe:	2800      	cmp	r0, #0
c0de0c00:	d1c2      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c02:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c06:	2801      	cmp	r0, #1
c0de0c08:	d142      	bne.n	c0de0c90 <handler_cmd_tEdwards+0x144>
c0de0c0a:	a819      	add	r0, sp, #100	@ 0x64
c0de0c0c:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c0e:	f10d 020b 	add.w	r2, sp, #11
c0de0c12:	4631      	mov	r1, r6
c0de0c14:	f002 f849 	bl	c0de2caa <tEdwards_IsOnCurve>
c0de0c18:	2800      	cmp	r0, #0
c0de0c1a:	d1b5      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c1c:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c20:	2801      	cmp	r0, #1
c0de0c22:	d138      	bne.n	c0de0c96 <handler_cmd_tEdwards+0x14a>
c0de0c24:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c26:	f10d 010b 	add.w	r1, sp, #11
c0de0c2a:	f00b fa07 	bl	c0dec03c <cx_bn_is_prime>
c0de0c2e:	2800      	cmp	r0, #0
c0de0c30:	d1aa      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c32:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c36:	2801      	cmp	r0, #1
c0de0c38:	d130      	bne.n	c0de0c9c <handler_cmd_tEdwards+0x150>
c0de0c3a:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c3c:	f10d 010b 	add.w	r1, sp, #11
c0de0c40:	f00b f9fc 	bl	c0dec03c <cx_bn_is_prime>
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
c0de0c5e:	f002 faf1 	bl	c0de3244 <tEdwards_scalarMul>
c0de0c62:	2800      	cmp	r0, #0
c0de0c64:	d190      	bne.n	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c66:	a819      	add	r0, sp, #100	@ 0x64
c0de0c68:	f104 0320 	add.w	r3, r4, #32
c0de0c6c:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c6e:	f000 fd26 	bl	c0de16be <OUTLINED_FUNCTION_8>
c0de0c72:	2800      	cmp	r0, #0
c0de0c74:	f47f af88 	bne.w	c0de0b88 <handler_cmd_tEdwards+0x3c>
c0de0c78:	f00b f922 	bl	c0debec0 <cx_bn_unlock>
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
c0de0ca8:	0000d7da 	.word	0x0000d7da
c0de0cac:	0000d850 	.word	0x0000d850
c0de0cb0:	0000d7e4 	.word	0x0000d7e4
c0de0cb4:	0000d71a 	.word	0x0000d71a

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
c0de0ce6:	f002 f837 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
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
c0de0d1e:	f00b f8e1 	bl	c0debee4 <cx_bn_alloc_init>
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
c0de0d58:	f00b f8ba 	bl	c0debed0 <cx_bn_alloc>
c0de0d5c:	2800      	cmp	r0, #0
c0de0d5e:	d1e4      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0d60:	6820      	ldr	r0, [r4, #0]
c0de0d62:	4631      	mov	r1, r6
c0de0d64:	f00b f8f4 	bl	c0debf50 <cx_bn_set_u32>
c0de0d68:	2800      	cmp	r0, #0
c0de0d6a:	d1de      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0d6c:	4640      	mov	r0, r8
c0de0d6e:	4659      	mov	r1, fp
c0de0d70:	f001 fe72 	bl	c0de2a58 <tEdwards_alloc>
c0de0d74:	2800      	cmp	r0, #0
c0de0d76:	d1d8      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0d78:	9602      	str	r6, [sp, #8]
c0de0d7a:	eb07 060a 	add.w	r6, r7, sl
c0de0d7e:	9901      	ldr	r1, [sp, #4]
c0de0d80:	4640      	mov	r0, r8
c0de0d82:	465b      	mov	r3, fp
c0de0d84:	4632      	mov	r2, r6
c0de0d86:	f002 f9f7 	bl	c0de3178 <tEdwards_scalarMul_bn>
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
c0de0dac:	f002 f985 	bl	c0de30ba <tEdwards_normalize>
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
c0de0dd2:	f001 fab2 	bl	c0de233a <zkn_frost_interpolate_secrets>
c0de0dd6:	2800      	cmp	r0, #0
c0de0dd8:	d1a7      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0dda:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0ddc:	a944      	add	r1, sp, #272	@ 0x110
c0de0dde:	2220      	movs	r2, #32
c0de0de0:	31c0      	adds	r1, #192	@ 0xc0
c0de0de2:	f00b f8bf 	bl	c0debf64 <cx_bn_export>
c0de0de6:	2800      	cmp	r0, #0
c0de0de8:	d19f      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0dea:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dec:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0dee:	ab03      	add	r3, sp, #12
c0de0df0:	9901      	ldr	r1, [sp, #4]
c0de0df2:	f002 f9c1 	bl	c0de3178 <tEdwards_scalarMul_bn>
c0de0df6:	2800      	cmp	r0, #0
c0de0df8:	d197      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0dfa:	a844      	add	r0, sp, #272	@ 0x110
c0de0dfc:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e00:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e02:	a903      	add	r1, sp, #12
c0de0e04:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e06:	f002 f932 	bl	c0de306e <tEdwards_export>
c0de0e0a:	2800      	cmp	r0, #0
c0de0e0c:	d18d      	bne.n	c0de0d2a <handler_cmd_Interpolate+0x72>
c0de0e0e:	a844      	add	r0, sp, #272	@ 0x110
c0de0e10:	f000 fc51 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de0e14:	f00b f854 	bl	c0debec0 <cx_bn_unlock>
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
c0de0e74:	f00a fd71 	bl	c0deb95a <cx_blake2b_512_hash_iovec>
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
c0de0e90:	f00b f828 	bl	c0debee4 <cx_bn_alloc_init>
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
c0de0eda:	f00a fff9 	bl	c0debed0 <cx_bn_alloc>
c0de0ede:	2800      	cmp	r0, #0
c0de0ee0:	d1e5      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0ee2:	a801      	add	r0, sp, #4
c0de0ee4:	2120      	movs	r1, #32
c0de0ee6:	eb00 0508 	add.w	r5, r0, r8
c0de0eea:	4628      	mov	r0, r5
c0de0eec:	f00a fff0 	bl	c0debed0 <cx_bn_alloc>
c0de0ef0:	2800      	cmp	r0, #0
c0de0ef2:	d1dc      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0ef4:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0ef6:	4621      	mov	r1, r4
c0de0ef8:	f00b f82a 	bl	c0debf50 <cx_bn_set_u32>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1d6      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f00:	6828      	ldr	r0, [r5, #0]
c0de0f02:	4621      	mov	r1, r4
c0de0f04:	f00b f824 	bl	c0debf50 <cx_bn_set_u32>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d1d0      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f0c:	4650      	mov	r0, sl
c0de0f0e:	4631      	mov	r1, r6
c0de0f10:	f001 fda2 	bl	c0de2a58 <tEdwards_alloc>
c0de0f14:	2800      	cmp	r0, #0
c0de0f16:	d1ca      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f18:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f1c:	2202      	movs	r2, #2
c0de0f1e:	9000      	str	r0, [sp, #0]
c0de0f20:	4650      	mov	r0, sl
c0de0f22:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f24:	f001 fa4b 	bl	c0de23be <zkn_evalshare>
c0de0f28:	2800      	cmp	r0, #0
c0de0f2a:	d1c0      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f2c:	6838      	ldr	r0, [r7, #0]
c0de0f2e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f30:	f00b f804 	bl	c0debf3c <cx_bn_copy>
c0de0f34:	2800      	cmp	r0, #0
c0de0f36:	d1ba      	bne.n	c0de0eae <handler_cmd_Split+0x8c>
c0de0f38:	4650      	mov	r0, sl
c0de0f3a:	4631      	mov	r1, r6
c0de0f3c:	f002 f8bd 	bl	c0de30ba <tEdwards_normalize>
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
c0de0f78:	f00a ffc0 	bl	c0debefc <cx_bn_destroy>
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
c0de0f94:	f001 f9d1 	bl	c0de233a <zkn_frost_interpolate_secrets>
c0de0f98:	2800      	cmp	r0, #0
c0de0f9a:	f47f af88 	bne.w	c0de0eae <handler_cmd_Split+0x8c>
c0de0f9e:	a848      	add	r0, sp, #288	@ 0x120
c0de0fa0:	f000 fb89 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de0fa4:	f00a ff8c 	bl	c0debec0 <cx_bn_unlock>
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
c0de0fc6:	f001 fec7 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
c0de0fca:	bbe0      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0fcc:	a801      	add	r0, sp, #4
c0de0fce:	f000 fb65 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de0fd2:	bbc0      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0fd4:	f000 fb68 	bl	c0de16a8 <OUTLINED_FUNCTION_6>
c0de0fd8:	f002 fbdc 	bl	c0de3794 <Babyfrost_H1>
c0de0fdc:	bb98      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0fde:	9801      	ldr	r0, [sp, #4]
c0de0fe0:	ad18      	add	r5, sp, #96	@ 0x60
c0de0fe2:	2220      	movs	r2, #32
c0de0fe4:	4629      	mov	r1, r5
c0de0fe6:	f00a ffbd 	bl	c0debf64 <cx_bn_export>
c0de0fea:	bb60      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0fec:	f000 fb5c 	bl	c0de16a8 <OUTLINED_FUNCTION_6>
c0de0ff0:	f002 fbde 	bl	c0de37b0 <Babyfrost_H3>
c0de0ff4:	bb38      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de0ff6:	9801      	ldr	r0, [sp, #4]
c0de0ff8:	f105 0120 	add.w	r1, r5, #32
c0de0ffc:	f000 fb4b 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de1000:	bb08      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de1002:	f000 fb51 	bl	c0de16a8 <OUTLINED_FUNCTION_6>
c0de1006:	f002 fbe7 	bl	c0de37d8 <Babyfrost_H4>
c0de100a:	b9e0      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de100c:	9801      	ldr	r0, [sp, #4]
c0de100e:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de1012:	f000 fb40 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de1016:	b9b0      	cbnz	r0, c0de1046 <handler_cmd_frostH+0x94>
c0de1018:	f000 fb46 	bl	c0de16a8 <OUTLINED_FUNCTION_6>
c0de101c:	f002 fbea 	bl	c0de37f4 <Babyfrost_H5>
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
c0de1040:	f00a ff3e 	bl	c0debec0 <cx_bn_unlock>
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
c0de1068:	f001 fe76 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
c0de106c:	b9e0      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de106e:	a879      	add	r0, sp, #484	@ 0x1e4
c0de1070:	f000 fb14 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de1074:	b9c0      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de1076:	ac01      	add	r4, sp, #4
c0de1078:	4910      	ldr	r1, [pc, #64]	@ (c0de10bc <handler_cmd_encodeCommitment+0x68>)
c0de107a:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de107e:	4620      	mov	r0, r4
c0de1080:	4479      	add	r1, pc
c0de1082:	f00b f9f1 	bl	c0dec468 <__aeabi_memcpy>
c0de1086:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1088:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de108a:	4621      	mov	r1, r4
c0de108c:	2203      	movs	r2, #3
c0de108e:	f001 fa27 	bl	c0de24e0 <zkn_encode_group_commitmentHash>
c0de1092:	b948      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de1094:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de1096:	a990      	add	r1, sp, #576	@ 0x240
c0de1098:	2220      	movs	r2, #32
c0de109a:	3120      	adds	r1, #32
c0de109c:	f00a ff62 	bl	c0debf64 <cx_bn_export>
c0de10a0:	b910      	cbnz	r0, c0de10a8 <handler_cmd_encodeCommitment+0x54>
c0de10a2:	f00a ff0d 	bl	c0debec0 <cx_bn_unlock>
c0de10a6:	b120      	cbz	r0, c0de10b2 <handler_cmd_encodeCommitment+0x5e>
c0de10a8:	f000 faee 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de10ac:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de10b0:	bd10      	pop	{r4, pc}
c0de10b2:	a890      	add	r0, sp, #576	@ 0x240
c0de10b4:	f000 fb06 	bl	c0de16c4 <OUTLINED_FUNCTION_9>
c0de10b8:	2000      	movs	r0, #0
c0de10ba:	e7f7      	b.n	c0de10ac <handler_cmd_encodeCommitment+0x58>
c0de10bc:	0000d5dc 	.word	0x0000d5dc

c0de10c0 <handler_cmd_GroupCommitment>:
c0de10c0:	b570      	push	{r4, r5, r6, lr}
c0de10c2:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de10c6:	4604      	mov	r4, r0
c0de10c8:	f000 fada 	bl	c0de1680 <OUTLINED_FUNCTION_0>
c0de10cc:	bb68      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de10ce:	6820      	ldr	r0, [r4, #0]
c0de10d0:	7801      	ldrb	r1, [r0, #0]
c0de10d2:	a894      	add	r0, sp, #592	@ 0x250
c0de10d4:	f001 fe40 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
c0de10d8:	bb38      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de10da:	a894      	add	r0, sp, #592	@ 0x250
c0de10dc:	ac91      	add	r4, sp, #580	@ 0x244
c0de10de:	4621      	mov	r1, r4
c0de10e0:	f001 fcba 	bl	c0de2a58 <tEdwards_alloc>
c0de10e4:	bb08      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de10e6:	ad19      	add	r5, sp, #100	@ 0x64
c0de10e8:	4915      	ldr	r1, [pc, #84]	@ (c0de1140 <handler_cmd_GroupCommitment+0x80>)
c0de10ea:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10ee:	4628      	mov	r0, r5
c0de10f0:	4479      	add	r1, pc
c0de10f2:	f00b f9b9 	bl	c0dec468 <__aeabi_memcpy>
c0de10f6:	ae01      	add	r6, sp, #4
c0de10f8:	4912      	ldr	r1, [pc, #72]	@ (c0de1144 <handler_cmd_GroupCommitment+0x84>)
c0de10fa:	2260      	movs	r2, #96	@ 0x60
c0de10fc:	4630      	mov	r0, r6
c0de10fe:	4479      	add	r1, pc
c0de1100:	f00b f9b2 	bl	c0dec468 <__aeabi_memcpy>
c0de1104:	9400      	str	r4, [sp, #0]
c0de1106:	a894      	add	r0, sp, #592	@ 0x250
c0de1108:	4629      	mov	r1, r5
c0de110a:	4632      	mov	r2, r6
c0de110c:	2303      	movs	r3, #3
c0de110e:	f001 fa64 	bl	c0de25da <zkn_compute_group_commitment>
c0de1112:	b950      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de1114:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de1116:	a894      	add	r0, sp, #592	@ 0x250
c0de1118:	a991      	add	r1, sp, #580	@ 0x244
c0de111a:	f102 0320 	add.w	r3, r2, #32
c0de111e:	f001 ffa6 	bl	c0de306e <tEdwards_export>
c0de1122:	b910      	cbnz	r0, c0de112a <handler_cmd_GroupCommitment+0x6a>
c0de1124:	f00a fecc 	bl	c0debec0 <cx_bn_unlock>
c0de1128:	b120      	cbz	r0, c0de1134 <handler_cmd_GroupCommitment+0x74>
c0de112a:	f000 faad 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de112e:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de1132:	bd70      	pop	{r4, r5, r6, pc}
c0de1134:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de1136:	2140      	movs	r1, #64	@ 0x40
c0de1138:	f7ff fab8 	bl	c0de06ac <io_send_response_pointer>
c0de113c:	2000      	movs	r0, #0
c0de113e:	e7f6      	b.n	c0de112e <handler_cmd_GroupCommitment+0x6e>
c0de1140:	0000d74c 	.word	0x0000d74c
c0de1144:	0000d91e 	.word	0x0000d91e

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
c0de1162:	f001 fdf9 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
c0de1166:	2800      	cmp	r0, #0
c0de1168:	f040 8111 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de116c:	a8de      	add	r0, sp, #888	@ 0x378
c0de116e:	f000 fa95 	bl	c0de169c <OUTLINED_FUNCTION_4>
c0de1172:	2800      	cmp	r0, #0
c0de1174:	f040 810b 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1178:	a8df      	add	r0, sp, #892	@ 0x37c
c0de117a:	addb      	add	r5, sp, #876	@ 0x36c
c0de117c:	4629      	mov	r1, r5
c0de117e:	f001 fc6b 	bl	c0de2a58 <tEdwards_alloc>
c0de1182:	2800      	cmp	r0, #0
c0de1184:	f040 8103 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1188:	ac63      	add	r4, sp, #396	@ 0x18c
c0de118a:	4985      	ldr	r1, [pc, #532]	@ (c0de13a0 <handler_cmd_BindingFactors+0x258>)
c0de118c:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1190:	4620      	mov	r0, r4
c0de1192:	4479      	add	r1, pc
c0de1194:	f00b f968 	bl	c0dec468 <__aeabi_memcpy>
c0de1198:	9bde      	ldr	r3, [sp, #888]	@ 0x378
c0de119a:	a8df      	add	r0, sp, #892	@ 0x37c
c0de119c:	4621      	mov	r1, r4
c0de119e:	2203      	movs	r2, #3
c0de11a0:	f001 f99e 	bl	c0de24e0 <zkn_encode_group_commitmentHash>
c0de11a4:	2800      	cmp	r0, #0
c0de11a6:	f040 80f2 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de11aa:	f50d 7875 	add.w	r8, sp, #980	@ 0x3d4
c0de11ae:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de11b0:	2220      	movs	r2, #32
c0de11b2:	2620      	movs	r6, #32
c0de11b4:	4641      	mov	r1, r8
c0de11b6:	f00a fed5 	bl	c0debf64 <cx_bn_export>
c0de11ba:	2800      	cmp	r0, #0
c0de11bc:	f040 80e7 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de11c0:	4978      	ldr	r1, [pc, #480]	@ (c0de13a4 <handler_cmd_BindingFactors+0x25c>)
c0de11c2:	f50d 7ab6 	add.w	sl, sp, #364	@ 0x16c
c0de11c6:	2220      	movs	r2, #32
c0de11c8:	4650      	mov	r0, sl
c0de11ca:	4479      	add	r1, pc
c0de11cc:	f00b f94c 	bl	c0dec468 <__aeabi_memcpy>
c0de11d0:	a853      	add	r0, sp, #332	@ 0x14c
c0de11d2:	4975      	ldr	r1, [pc, #468]	@ (c0de13a8 <handler_cmd_BindingFactors+0x260>)
c0de11d4:	2220      	movs	r2, #32
c0de11d6:	4479      	add	r1, pc
c0de11d8:	f00b f946 	bl	c0dec468 <__aeabi_memcpy>
c0de11dc:	ac4b      	add	r4, sp, #300	@ 0x12c
c0de11de:	4973      	ldr	r1, [pc, #460]	@ (c0de13ac <handler_cmd_BindingFactors+0x264>)
c0de11e0:	2220      	movs	r2, #32
c0de11e2:	4620      	mov	r0, r4
c0de11e4:	4479      	add	r1, pc
c0de11e6:	f00b f93f 	bl	c0dec468 <__aeabi_memcpy>
c0de11ea:	f108 0720 	add.w	r7, r8, #32
c0de11ee:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de11f2:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11f4:	aa63      	add	r2, sp, #396	@ 0x18c
c0de11f6:	4651      	mov	r1, sl
c0de11f8:	2303      	movs	r3, #3
c0de11fa:	f001 fa5f 	bl	c0de26bc <zkn_compute_binding_factors>
c0de11fe:	2800      	cmp	r0, #0
c0de1200:	f040 80c5 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1204:	9500      	str	r5, [sp, #0]
c0de1206:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1208:	a963      	add	r1, sp, #396	@ 0x18c
c0de120a:	463a      	mov	r2, r7
c0de120c:	2303      	movs	r3, #3
c0de120e:	f001 f9e4 	bl	c0de25da <zkn_compute_group_commitment>
c0de1212:	2800      	cmp	r0, #0
c0de1214:	f040 80bb 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de1218:	a8df      	add	r0, sp, #892	@ 0x37c
c0de121a:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de121e:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de1222:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1224:	f001 ff23 	bl	c0de306e <tEdwards_export>
c0de1228:	2800      	cmp	r0, #0
c0de122a:	f040 80b0 	bne.w	c0de138e <handler_cmd_BindingFactors+0x246>
c0de122e:	ad3b      	add	r5, sp, #236	@ 0xec
c0de1230:	495f      	ldr	r1, [pc, #380]	@ (c0de13b0 <handler_cmd_BindingFactors+0x268>)
c0de1232:	2240      	movs	r2, #64	@ 0x40
c0de1234:	4628      	mov	r0, r5
c0de1236:	4479      	add	r1, pc
c0de1238:	f00b f916 	bl	c0dec468 <__aeabi_memcpy>
c0de123c:	a833      	add	r0, sp, #204	@ 0xcc
c0de123e:	495d      	ldr	r1, [pc, #372]	@ (c0de13b4 <handler_cmd_BindingFactors+0x26c>)
c0de1240:	2220      	movs	r2, #32
c0de1242:	2420      	movs	r4, #32
c0de1244:	4479      	add	r1, pc
c0de1246:	f00b f90f 	bl	c0dec468 <__aeabi_memcpy>
c0de124a:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de124c:	462a      	mov	r2, r5
c0de124e:	e9cd 4000 	strd	r4, r0, [sp]
c0de1252:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1254:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1256:	ab53      	add	r3, sp, #332	@ 0x14c
c0de1258:	f001 fabc 	bl	c0de27d4 <compute_challenge>
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
c0de127a:	f00b f8f5 	bl	c0dec468 <__aeabi_memcpy>
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
c0de129c:	f00a feb6 	bl	c0dec00c <cx_bn_reduce>
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
c0de12bc:	f00b f8d4 	bl	c0dec468 <__aeabi_memcpy>
c0de12c0:	a819      	add	r0, sp, #100	@ 0x64
c0de12c2:	493f      	ldr	r1, [pc, #252]	@ (c0de13c0 <handler_cmd_BindingFactors+0x278>)
c0de12c4:	2220      	movs	r2, #32
c0de12c6:	4479      	add	r1, pc
c0de12c8:	f00b f8ce 	bl	c0dec468 <__aeabi_memcpy>
c0de12cc:	a811      	add	r0, sp, #68	@ 0x44
c0de12ce:	493d      	ldr	r1, [pc, #244]	@ (c0de13c4 <handler_cmd_BindingFactors+0x27c>)
c0de12d0:	2220      	movs	r2, #32
c0de12d2:	4479      	add	r1, pc
c0de12d4:	f00b f8c8 	bl	c0dec468 <__aeabi_memcpy>
c0de12d8:	a809      	add	r0, sp, #36	@ 0x24
c0de12da:	493b      	ldr	r1, [pc, #236]	@ (c0de13c8 <handler_cmd_BindingFactors+0x280>)
c0de12dc:	2220      	movs	r2, #32
c0de12de:	4479      	add	r1, pc
c0de12e0:	f00b f8c2 	bl	c0dec468 <__aeabi_memcpy>
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
c0de132e:	f00a fe61 	bl	c0debff4 <cx_bn_mod_mul>
c0de1332:	bb60      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1334:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1336:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de133a:	9807      	ldr	r0, [sp, #28]
c0de133c:	f00a fe5a 	bl	c0debff4 <cx_bn_mod_mul>
c0de1340:	bb28      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1342:	e9dd 3231 	ldrd	r3, r2, [sp, #196]	@ 0xc4
c0de1346:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de134a:	f00a fe53 	bl	c0debff4 <cx_bn_mod_mul>
c0de134e:	b9f0      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1350:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1352:	9a06      	ldr	r2, [sp, #24]
c0de1354:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
c0de1358:	f00a fe34 	bl	c0debfc4 <cx_bn_mod_add>
c0de135c:	b9b8      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de135e:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1360:	9a08      	ldr	r2, [sp, #32]
c0de1362:	e9dd 1003 	ldrd	r1, r0, [sp, #12]
c0de1366:	f00a fe2d 	bl	c0debfc4 <cx_bn_mod_add>
c0de136a:	b980      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de136c:	9a31      	ldr	r2, [sp, #196]	@ 0xc4
c0de136e:	9904      	ldr	r1, [sp, #16]
c0de1370:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1372:	f00a fe4b 	bl	c0dec00c <cx_bn_reduce>
c0de1376:	b950      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1378:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de137a:	a9f5      	add	r1, sp, #980	@ 0x3d4
c0de137c:	f000 f98b 	bl	c0de1696 <OUTLINED_FUNCTION_3>
c0de1380:	b928      	cbnz	r0, c0de138e <handler_cmd_BindingFactors+0x246>
c0de1382:	a8f5      	add	r0, sp, #980	@ 0x3d4
c0de1384:	f000 f997 	bl	c0de16b6 <OUTLINED_FUNCTION_7>
c0de1388:	f00a fd9a 	bl	c0debec0 <cx_bn_unlock>
c0de138c:	b128      	cbz	r0, c0de139a <handler_cmd_BindingFactors+0x252>
c0de138e:	f000 f97b 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de1392:	f20d 4dd4 	addw	sp, sp, #1236	@ 0x4d4
c0de1396:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de139a:	2000      	movs	r0, #0
c0de139c:	e7f9      	b.n	c0de1392 <handler_cmd_BindingFactors+0x24a>
c0de139e:	bf00      	nop
c0de13a0:	0000d8ea 	.word	0x0000d8ea
c0de13a4:	0000d252 	.word	0x0000d252
c0de13a8:	0000d0c6 	.word	0x0000d0c6
c0de13ac:	0000d298 	.word	0x0000d298
c0de13b0:	0000da26 	.word	0x0000da26
c0de13b4:	0000d1f8 	.word	0x0000d1f8
c0de13b8:	0000d164 	.word	0x0000d164
c0de13bc:	0000d082 	.word	0x0000d082
c0de13c0:	0000d196 	.word	0x0000d196
c0de13c4:	0000d2ca 	.word	0x0000d2ca
c0de13c8:	0000d01e 	.word	0x0000d01e

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
c0de13e4:	f001 fcb8 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
c0de13e8:	2800      	cmp	r0, #0
c0de13ea:	d14d      	bne.n	c0de1488 <handler_cmd_PartialSig+0xbc>
c0de13ec:	492a      	ldr	r1, [pc, #168]	@ (c0de1498 <handler_cmd_PartialSig+0xcc>)
c0de13ee:	f50d 7880 	add.w	r8, sp, #256	@ 0x100
c0de13f2:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de13f6:	4640      	mov	r0, r8
c0de13f8:	4479      	add	r1, pc
c0de13fa:	f00b f835 	bl	c0dec468 <__aeabi_memcpy>
c0de13fe:	4927      	ldr	r1, [pc, #156]	@ (c0de149c <handler_cmd_PartialSig+0xd0>)
c0de1400:	f10d 0ae0 	add.w	sl, sp, #224	@ 0xe0
c0de1404:	2220      	movs	r2, #32
c0de1406:	4650      	mov	r0, sl
c0de1408:	4479      	add	r1, pc
c0de140a:	f00b f82d 	bl	c0dec468 <__aeabi_memcpy>
c0de140e:	4924      	ldr	r1, [pc, #144]	@ (c0de14a0 <handler_cmd_PartialSig+0xd4>)
c0de1410:	f10d 0bc0 	add.w	fp, sp, #192	@ 0xc0
c0de1414:	2220      	movs	r2, #32
c0de1416:	4658      	mov	r0, fp
c0de1418:	4479      	add	r1, pc
c0de141a:	f00b f825 	bl	c0dec468 <__aeabi_memcpy>
c0de141e:	ac28      	add	r4, sp, #160	@ 0xa0
c0de1420:	4920      	ldr	r1, [pc, #128]	@ (c0de14a4 <handler_cmd_PartialSig+0xd8>)
c0de1422:	2220      	movs	r2, #32
c0de1424:	4620      	mov	r0, r4
c0de1426:	4479      	add	r1, pc
c0de1428:	f00b f81e 	bl	c0dec468 <__aeabi_memcpy>
c0de142c:	af18      	add	r7, sp, #96	@ 0x60
c0de142e:	491e      	ldr	r1, [pc, #120]	@ (c0de14a8 <handler_cmd_PartialSig+0xdc>)
c0de1430:	2240      	movs	r2, #64	@ 0x40
c0de1432:	4638      	mov	r0, r7
c0de1434:	4479      	add	r1, pc
c0de1436:	f00b f817 	bl	c0dec468 <__aeabi_memcpy>
c0de143a:	ad10      	add	r5, sp, #64	@ 0x40
c0de143c:	491b      	ldr	r1, [pc, #108]	@ (c0de14ac <handler_cmd_PartialSig+0xe0>)
c0de143e:	2220      	movs	r2, #32
c0de1440:	4628      	mov	r0, r5
c0de1442:	4479      	add	r1, pc
c0de1444:	f00b f810 	bl	c0dec468 <__aeabi_memcpy>
c0de1448:	ae08      	add	r6, sp, #32
c0de144a:	4919      	ldr	r1, [pc, #100]	@ (c0de14b0 <handler_cmd_PartialSig+0xe4>)
c0de144c:	2220      	movs	r2, #32
c0de144e:	4630      	mov	r0, r6
c0de1450:	4479      	add	r1, pc
c0de1452:	f00b f809 	bl	c0dec468 <__aeabi_memcpy>
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
c0de1476:	f001 fa07 	bl	c0de2888 <zkn_partial_sig>
c0de147a:	b928      	cbnz	r0, c0de1488 <handler_cmd_PartialSig+0xbc>
c0de147c:	a8ce      	add	r0, sp, #824	@ 0x338
c0de147e:	f000 f921 	bl	c0de16c4 <OUTLINED_FUNCTION_9>
c0de1482:	f00a fd1d 	bl	c0debec0 <cx_bn_unlock>
c0de1486:	b128      	cbz	r0, c0de1494 <handler_cmd_PartialSig+0xc8>
c0de1488:	f000 f8fe 	bl	c0de1688 <OUTLINED_FUNCTION_1>
c0de148c:	f50d 6d87 	add.w	sp, sp, #1080	@ 0x438
c0de1490:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1494:	2000      	movs	r0, #0
c0de1496:	e7f9      	b.n	c0de148c <handler_cmd_PartialSig+0xc0>
c0de1498:	0000d684 	.word	0x0000d684
c0de149c:	0000ce94 	.word	0x0000ce94
c0de14a0:	0000cf24 	.word	0x0000cf24
c0de14a4:	0000d036 	.word	0x0000d036
c0de14a8:	0000d828 	.word	0x0000d828
c0de14ac:	0000d15a 	.word	0x0000d15a
c0de14b0:	0000ceac 	.word	0x0000ceac

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
c0de14de:	f001 fabb 	bl	c0de2a58 <tEdwards_alloc>
c0de14e2:	b9b0      	cbnz	r0, c0de1512 <handler_get_insecure_public+0x5e>
c0de14e4:	480e      	ldr	r0, [pc, #56]	@ (c0de1520 <handler_get_insecure_public+0x6c>)
c0de14e6:	eb09 0100 	add.w	r1, r9, r0
c0de14ea:	a804      	add	r0, sp, #16
c0de14ec:	aa01      	add	r2, sp, #4
c0de14ee:	f000 fd45 	bl	c0de1f7c <zkn_prv2pub>
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
c0de150c:	f00a fcd8 	bl	c0debec0 <cx_bn_unlock>
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
c0de155c:	f001 fbfc 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
c0de1560:	b9f0      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1562:	a80e      	add	r0, sp, #56	@ 0x38
c0de1564:	a90b      	add	r1, sp, #44	@ 0x2c
c0de1566:	f001 fa77 	bl	c0de2a58 <tEdwards_alloc>
c0de156a:	b9c8      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de156c:	4c0f      	ldr	r4, [pc, #60]	@ (c0de15ac <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x88>)
c0de156e:	a80e      	add	r0, sp, #56	@ 0x38
c0de1570:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de1572:	eb09 0104 	add.w	r1, r9, r4
c0de1576:	f000 fd01 	bl	c0de1f7c <zkn_prv2pub>
c0de157a:	b988      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de157c:	2020      	movs	r0, #32
c0de157e:	eb09 0104 	add.w	r1, r9, r4
c0de1582:	e9cd 0600 	strd	r0, r6, [sp]
c0de1586:	a80e      	add	r0, sp, #56	@ 0x38
c0de1588:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de158a:	ab03      	add	r3, sp, #12
c0de158c:	f000 fd1e 	bl	c0de1fcc <EddsaPoseidon_Sign_final>
c0de1590:	b930      	cbnz	r0, c0de15a0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1592:	a824      	add	r0, sp, #144	@ 0x90
c0de1594:	2160      	movs	r1, #96	@ 0x60
c0de1596:	f7ff f889 	bl	c0de06ac <io_send_response_pointer>
c0de159a:	f00a fc91 	bl	c0debec0 <cx_bn_unlock>
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
c0de15c2:	f001 fbc9 	bl	c0de2d58 <tEdwards_Curve_alloc_init>
c0de15c6:	bb78      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de15c8:	ad06      	add	r5, sp, #24
c0de15ca:	466e      	mov	r6, sp
c0de15cc:	4628      	mov	r0, r5
c0de15ce:	4631      	mov	r1, r6
c0de15d0:	f001 fa42 	bl	c0de2a58 <tEdwards_alloc>
c0de15d4:	f106 040c 	add.w	r4, r6, #12
c0de15d8:	4628      	mov	r0, r5
c0de15da:	4621      	mov	r1, r4
c0de15dc:	f001 fa3c 	bl	c0de2a58 <tEdwards_alloc>
c0de15e0:	4814      	ldr	r0, [pc, #80]	@ (c0de1634 <handler_cmd_frost_commit+0x84>)
c0de15e2:	4633      	mov	r3, r6
c0de15e4:	eb09 0100 	add.w	r1, r9, r0
c0de15e8:	4813      	ldr	r0, [pc, #76]	@ (c0de1638 <handler_cmd_frost_commit+0x88>)
c0de15ea:	eb09 0200 	add.w	r2, r9, r0
c0de15ee:	4628      	mov	r0, r5
c0de15f0:	f000 ff45 	bl	c0de247e <zkn_frost_commit>
c0de15f4:	b9c0      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de15f6:	ad1c      	add	r5, sp, #112	@ 0x70
c0de15f8:	a806      	add	r0, sp, #24
c0de15fa:	4669      	mov	r1, sp
c0de15fc:	f105 0320 	add.w	r3, r5, #32
c0de1600:	462a      	mov	r2, r5
c0de1602:	f001 fd34 	bl	c0de306e <tEdwards_export>
c0de1606:	b978      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de1608:	f105 0240 	add.w	r2, r5, #64	@ 0x40
c0de160c:	f105 0360 	add.w	r3, r5, #96	@ 0x60
c0de1610:	a806      	add	r0, sp, #24
c0de1612:	4621      	mov	r1, r4
c0de1614:	f001 fd2b 	bl	c0de306e <tEdwards_export>
c0de1618:	b930      	cbnz	r0, c0de1628 <handler_cmd_frost_commit+0x78>
c0de161a:	a81c      	add	r0, sp, #112	@ 0x70
c0de161c:	2180      	movs	r1, #128	@ 0x80
c0de161e:	f7ff f845 	bl	c0de06ac <io_send_response_pointer>
c0de1622:	f00a fc4d 	bl	c0debec0 <cx_bn_unlock>
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
c0de1648:	f00a ff0e 	bl	c0dec468 <__aeabi_memcpy>
c0de164c:	480a      	ldr	r0, [pc, #40]	@ (c0de1678 <handler_cmd_frost_inject+0x3c>)
c0de164e:	6821      	ldr	r1, [r4, #0]
c0de1650:	2220      	movs	r2, #32
c0de1652:	4448      	add	r0, r9
c0de1654:	3140      	adds	r1, #64	@ 0x40
c0de1656:	f00a ff07 	bl	c0dec468 <__aeabi_memcpy>
c0de165a:	4808      	ldr	r0, [pc, #32]	@ (c0de167c <handler_cmd_frost_inject+0x40>)
c0de165c:	6821      	ldr	r1, [r4, #0]
c0de165e:	2220      	movs	r2, #32
c0de1660:	4448      	add	r0, r9
c0de1662:	3160      	adds	r1, #96	@ 0x60
c0de1664:	f00a ff00 	bl	c0dec468 <__aeabi_memcpy>
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
c0de1684:	f00a bc12 	b.w	c0debeac <cx_bn_lock>

c0de1688 <OUTLINED_FUNCTION_1>:
c0de1688:	b280      	uxth	r0, r0
c0de168a:	f7ff b81a 	b.w	c0de06c2 <io_send_sw>

c0de168e <OUTLINED_FUNCTION_2>:
c0de168e:	2120      	movs	r1, #32
c0de1690:	2320      	movs	r3, #32
c0de1692:	f00a bc27 	b.w	c0debee4 <cx_bn_alloc_init>

c0de1696 <OUTLINED_FUNCTION_3>:
c0de1696:	2220      	movs	r2, #32
c0de1698:	f00a bc64 	b.w	c0debf64 <cx_bn_export>

c0de169c <OUTLINED_FUNCTION_4>:
c0de169c:	2120      	movs	r1, #32
c0de169e:	f00a bc17 	b.w	c0debed0 <cx_bn_alloc>

c0de16a2 <OUTLINED_FUNCTION_5>:
c0de16a2:	2320      	movs	r3, #32
c0de16a4:	f00a bc1e 	b.w	c0debee4 <cx_bn_alloc_init>

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
c0de16c0:	f001 bcd5 	b.w	c0de306e <tEdwards_export>

c0de16c4 <OUTLINED_FUNCTION_9>:
c0de16c4:	2120      	movs	r1, #32
c0de16c6:	f7fe bff1 	b.w	c0de06ac <io_send_response_pointer>

c0de16ca <OUTLINED_FUNCTION_10>:
c0de16ca:	4629      	mov	r1, r5
c0de16cc:	f001 bb44 	b.w	c0de2d58 <tEdwards_Curve_alloc_init>

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
c0de16ec:	f00a febc 	bl	c0dec468 <__aeabi_memcpy>
c0de16f0:	2020      	movs	r0, #32
c0de16f2:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de16f6:	2220      	movs	r2, #32
c0de16f8:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de16fc:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1700:	f00a feb2 	bl	c0dec468 <__aeabi_memcpy>
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
c0de1724:	f009 fe7c 	bl	c0deb420 <io_send_response_buffers>
c0de1728:	b004      	add	sp, #16
c0de172a:	bd80      	pop	{r7, pc}

c0de172c <helper_send_response_sig>:
c0de172c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de172e:	b099      	sub	sp, #100	@ 0x64
c0de1730:	f10d 0402 	add.w	r4, sp, #2
c0de1734:	2161      	movs	r1, #97	@ 0x61
c0de1736:	1c65      	adds	r5, r4, #1
c0de1738:	4628      	mov	r0, r5
c0de173a:	f00a fe9f 	bl	c0dec47c <__aeabi_memclr>
c0de173e:	4808      	ldr	r0, [pc, #32]	@ (c0de1760 <helper_send_response_sig+0x34>)
c0de1740:	f000 f810 	bl	c0de1764 <OUTLINED_FUNCTION_0>
c0de1744:	f88d 6002 	strb.w	r6, [sp, #2]
c0de1748:	f00a fe8e 	bl	c0dec468 <__aeabi_memcpy>
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
c0de178e:	f00a fee1 	bl	c0dec554 <strlen>
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
c0de17aa:	f00a fe67 	bl	c0dec47c <__aeabi_memclr>
c0de17ae:	ae39      	add	r6, sp, #228	@ 0xe4
c0de17b0:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de17b4:	4630      	mov	r0, r6
c0de17b6:	f009 fbdf 	bl	c0deaf78 <buffer_read_u8>
c0de17ba:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de17be:	af2e      	add	r7, sp, #184	@ 0xb8
c0de17c0:	4630      	mov	r0, r6
c0de17c2:	4639      	mov	r1, r7
c0de17c4:	f009 fc2b 	bl	c0deb01e <buffer_read_bip32_path>
c0de17c8:	2005      	movs	r0, #5
c0de17ca:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de17ce:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de17d2:	463a      	mov	r2, r7
c0de17d4:	f8cd 8010 	str.w	r8, [sp, #16]
c0de17d8:	e9cd 5100 	strd	r5, r1, [sp]
c0de17dc:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de17e0:	2000      	movs	r0, #0
c0de17e2:	2121      	movs	r1, #33	@ 0x21
c0de17e4:	f009 fcdc 	bl	c0deb1a0 <bip32_derive_with_seed_get_pubkey_256>
c0de17e8:	b9e0      	cbnz	r0, c0de1824 <swap_handle_check_address+0xae>
c0de17ea:	ad10      	add	r5, sp, #64	@ 0x40
c0de17ec:	2114      	movs	r1, #20
c0de17ee:	4628      	mov	r0, r5
c0de17f0:	f00a fe44 	bl	c0dec47c <__aeabi_memclr>
c0de17f4:	a815      	add	r0, sp, #84	@ 0x54
c0de17f6:	4629      	mov	r1, r5
c0de17f8:	2214      	movs	r2, #20
c0de17fa:	f7fe fc15 	bl	c0de0028 <address_from_pubkey>
c0de17fe:	ae05      	add	r6, sp, #20
c0de1800:	2129      	movs	r1, #41	@ 0x29
c0de1802:	4630      	mov	r0, r6
c0de1804:	f00a fe3a 	bl	c0dec47c <__aeabi_memclr>
c0de1808:	4628      	mov	r0, r5
c0de180a:	2114      	movs	r1, #20
c0de180c:	4632      	mov	r2, r6
c0de180e:	2329      	movs	r3, #41	@ 0x29
c0de1810:	f009 fda4 	bl	c0deb35c <format_hex>
c0de1814:	6921      	ldr	r1, [r4, #16]
c0de1816:	4630      	mov	r0, r6
c0de1818:	2229      	movs	r2, #41	@ 0x29
c0de181a:	f00a fea3 	bl	c0dec564 <strncmp>
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
c0de1838:	f00a fe20 	bl	c0dec47c <__aeabi_memclr>
c0de183c:	f106 050e 	add.w	r5, r6, #14
c0de1840:	2132      	movs	r1, #50	@ 0x32
c0de1842:	4628      	mov	r0, r5
c0de1844:	f00a fe1a 	bl	c0dec47c <__aeabi_memclr>
c0de1848:	2000      	movs	r0, #0
c0de184a:	7b31      	ldrb	r1, [r6, #12]
c0de184c:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de1850:	68b0      	ldr	r0, [r6, #8]
c0de1852:	aa02      	add	r2, sp, #8
c0de1854:	f009 ff70 	bl	c0deb738 <swap_str_to_u64>
c0de1858:	b178      	cbz	r0, c0de187a <swap_handle_get_printable_amount+0x4e>
c0de185a:	2003      	movs	r0, #3
c0de185c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de1860:	211e      	movs	r1, #30
c0de1862:	9000      	str	r0, [sp, #0]
c0de1864:	4620      	mov	r0, r4
c0de1866:	f009 fd32 	bl	c0deb2ce <format_fpu64>
c0de186a:	9400      	str	r4, [sp, #0]
c0de186c:	4628      	mov	r0, r5
c0de186e:	2132      	movs	r1, #50	@ 0x32
c0de1870:	231e      	movs	r3, #30
c0de1872:	4a03      	ldr	r2, [pc, #12]	@ (c0de1880 <swap_handle_get_printable_amount+0x54>)
c0de1874:	447a      	add	r2, pc
c0de1876:	f00a f943 	bl	c0debb00 <snprintf>
c0de187a:	b00c      	add	sp, #48	@ 0x30
c0de187c:	bd70      	pop	{r4, r5, r6, pc}
c0de187e:	bf00      	nop
c0de1880:	0000c757 	.word	0x0000c757

c0de1884 <swap_copy_transaction_parameters>:
c0de1884:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1886:	b093      	sub	sp, #76	@ 0x4c
c0de1888:	6985      	ldr	r5, [r0, #24]
c0de188a:	b3ad      	cbz	r5, c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de188c:	4604      	mov	r4, r0
c0de188e:	4628      	mov	r0, r5
c0de1890:	f00a fe60 	bl	c0dec554 <strlen>
c0de1894:	2828      	cmp	r0, #40	@ 0x28
c0de1896:	d12f      	bne.n	c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de1898:	68a7      	ldr	r7, [r4, #8]
c0de189a:	b36f      	cbz	r7, c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de189c:	466e      	mov	r6, sp
c0de189e:	2148      	movs	r1, #72	@ 0x48
c0de18a0:	4630      	mov	r0, r6
c0de18a2:	f00a fdeb 	bl	c0dec47c <__aeabi_memclr>
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
c0de18cc:	f009 ff34 	bl	c0deb738 <swap_str_to_u64>
c0de18d0:	b190      	cbz	r0, c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de18d2:	7d21      	ldrb	r1, [r4, #20]
c0de18d4:	6920      	ldr	r0, [r4, #16]
c0de18d6:	f106 0210 	add.w	r2, r6, #16
c0de18da:	f009 ff2d 	bl	c0deb738 <swap_str_to_u64>
c0de18de:	b158      	cbz	r0, c0de18f8 <swap_copy_transaction_parameters+0x74>
c0de18e0:	2401      	movs	r4, #1
c0de18e2:	f88d 4000 	strb.w	r4, [sp]
c0de18e6:	f00a f8ff 	bl	c0debae8 <os_explicit_zero_BSS_segment>
c0de18ea:	4805      	ldr	r0, [pc, #20]	@ (c0de1900 <swap_copy_transaction_parameters+0x7c>)
c0de18ec:	4669      	mov	r1, sp
c0de18ee:	2248      	movs	r2, #72	@ 0x48
c0de18f0:	4448      	add	r0, r9
c0de18f2:	f00a fdb9 	bl	c0dec468 <__aeabi_memcpy>
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
c0de1938:	f00a fda0 	bl	c0dec47c <__aeabi_memclr>
c0de193c:	4620      	mov	r0, r4
c0de193e:	2114      	movs	r1, #20
c0de1940:	462a      	mov	r2, r5
c0de1942:	2329      	movs	r3, #41	@ 0x29
c0de1944:	f009 fd0a 	bl	c0deb35c <format_hex>
c0de1948:	eb09 0006 	add.w	r0, r9, r6
c0de194c:	4629      	mov	r1, r5
c0de194e:	3018      	adds	r0, #24
c0de1950:	f00a fdf6 	bl	c0dec540 <strcmp>
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
c0de197c:	f009 fea3 	bl	c0deb6c6 <send_swap_error_simple>
c0de1980:	000003b0 	.word	0x000003b0

c0de1984 <transaction_deserialize>:
c0de1984:	b570      	push	{r4, r5, r6, lr}
c0de1986:	460d      	mov	r5, r1
c0de1988:	4604      	mov	r4, r0
c0de198a:	b910      	cbnz	r0, c0de1992 <transaction_deserialize+0xe>
c0de198c:	2001      	movs	r0, #1
c0de198e:	f00a f81d 	bl	c0deb9cc <assert_exit>
c0de1992:	b915      	cbnz	r5, c0de199a <transaction_deserialize+0x16>
c0de1994:	2001      	movs	r0, #1
c0de1996:	f00a f819 	bl	c0deb9cc <assert_exit>
c0de199a:	6860      	ldr	r0, [r4, #4]
c0de199c:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de19a0:	d901      	bls.n	c0de19a6 <transaction_deserialize+0x22>
c0de19a2:	20f9      	movs	r0, #249	@ 0xf9
c0de19a4:	e04b      	b.n	c0de1a3e <transaction_deserialize+0xba>
c0de19a6:	4620      	mov	r0, r4
c0de19a8:	4629      	mov	r1, r5
c0de19aa:	2200      	movs	r2, #0
c0de19ac:	f009 fafa 	bl	c0deafa4 <buffer_read_u64>
c0de19b0:	b330      	cbz	r0, c0de1a00 <transaction_deserialize+0x7c>
c0de19b2:	6820      	ldr	r0, [r4, #0]
c0de19b4:	68a1      	ldr	r1, [r4, #8]
c0de19b6:	4408      	add	r0, r1
c0de19b8:	2114      	movs	r1, #20
c0de19ba:	61a8      	str	r0, [r5, #24]
c0de19bc:	4620      	mov	r0, r4
c0de19be:	f009 fad0 	bl	c0deaf62 <buffer_seek_cur>
c0de19c2:	b1f8      	cbz	r0, c0de1a04 <transaction_deserialize+0x80>
c0de19c4:	f105 0108 	add.w	r1, r5, #8
c0de19c8:	4620      	mov	r0, r4
c0de19ca:	2200      	movs	r2, #0
c0de19cc:	2600      	movs	r6, #0
c0de19ce:	f009 fae9 	bl	c0deafa4 <buffer_read_u64>
c0de19d2:	b1c8      	cbz	r0, c0de1a08 <transaction_deserialize+0x84>
c0de19d4:	f105 0120 	add.w	r1, r5, #32
c0de19d8:	4620      	mov	r0, r4
c0de19da:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de19de:	f009 fb01 	bl	c0deafe4 <buffer_read_varint>
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
c0de1a16:	f009 faa4 	bl	c0deaf62 <buffer_seek_cur>
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
c0de1a4e:	f009 ffbd 	bl	c0deb9cc <assert_exit>
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
c0de1a92:	f009 fcc5 	bl	c0deb420 <io_send_response_buffers>
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
c0de1aec:	f009 fb8c 	bl	c0deb208 <bip32_derive_with_seed_ecdsa_sign_hash_256>
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
c0de1b3e:	f00a fb4d 	bl	c0dec1dc <os_sched_exit>
	...

c0de1b44 <ui_menu_main>:
c0de1b44:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de1b46:	4c1b      	ldr	r4, [pc, #108]	@ (c0de1bb4 <ui_menu_main+0x70>)
c0de1b48:	4819      	ldr	r0, [pc, #100]	@ (c0de1bb0 <ui_menu_main+0x6c>)
c0de1b4a:	447c      	add	r4, pc
c0de1b4c:	eb09 0500 	add.w	r5, r9, r0
c0de1b50:	f000 f8dc 	bl	c0de1d0c <OUTLINED_FUNCTION_0>
c0de1b54:	2609      	movs	r6, #9
c0de1b56:	2114      	movs	r1, #20
c0de1b58:	73ae      	strb	r6, [r5, #14]
c0de1b5a:	7369      	strb	r1, [r5, #13]
c0de1b5c:	4916      	ldr	r1, [pc, #88]	@ (c0de1bb8 <ui_menu_main+0x74>)
c0de1b5e:	4a17      	ldr	r2, [pc, #92]	@ (c0de1bbc <ui_menu_main+0x78>)
c0de1b60:	4479      	add	r1, pc
c0de1b62:	447a      	add	r2, pc
c0de1b64:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1b68:	7800      	ldrb	r0, [r0, #0]
c0de1b6a:	7328      	strb	r0, [r5, #12]
c0de1b6c:	f000 f8ce 	bl	c0de1d0c <OUTLINED_FUNCTION_0>
c0de1b70:	2115      	movs	r1, #21
c0de1b72:	76ae      	strb	r6, [r5, #26]
c0de1b74:	7669      	strb	r1, [r5, #25]
c0de1b76:	4912      	ldr	r1, [pc, #72]	@ (c0de1bc0 <ui_menu_main+0x7c>)
c0de1b78:	4a12      	ldr	r2, [pc, #72]	@ (c0de1bc4 <ui_menu_main+0x80>)
c0de1b7a:	4479      	add	r1, pc
c0de1b7c:	447a      	add	r2, pc
c0de1b7e:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1b82:	2100      	movs	r1, #0
c0de1b84:	7840      	ldrb	r0, [r0, #1]
c0de1b86:	7628      	strb	r0, [r5, #24]
c0de1b88:	480f      	ldr	r0, [pc, #60]	@ (c0de1bc8 <ui_menu_main+0x84>)
c0de1b8a:	4a10      	ldr	r2, [pc, #64]	@ (c0de1bcc <ui_menu_main+0x88>)
c0de1b8c:	4b10      	ldr	r3, [pc, #64]	@ (c0de1bd0 <ui_menu_main+0x8c>)
c0de1b8e:	4478      	add	r0, pc
c0de1b90:	447a      	add	r2, pc
c0de1b92:	447b      	add	r3, pc
c0de1b94:	e9cd 3200 	strd	r3, r2, [sp]
c0de1b98:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1b9c:	2200      	movs	r2, #0
c0de1b9e:	23ff      	movs	r3, #255	@ 0xff
c0de1ba0:	480c      	ldr	r0, [pc, #48]	@ (c0de1bd4 <ui_menu_main+0x90>)
c0de1ba2:	490d      	ldr	r1, [pc, #52]	@ (c0de1bd8 <ui_menu_main+0x94>)
c0de1ba4:	4478      	add	r0, pc
c0de1ba6:	4479      	add	r1, pc
c0de1ba8:	f007 fa20 	bl	c0de8fec <nbgl_useCaseHomeAndSettings>
c0de1bac:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de1bae:	bf00      	nop
c0de1bb0:	000003f8 	.word	0x000003f8
c0de1bb4:	0000d8b2 	.word	0x0000d8b2
c0de1bb8:	0000c049 	.word	0x0000c049
c0de1bbc:	0000c506 	.word	0x0000c506
c0de1bc0:	0000c19c 	.word	0x0000c19c
c0de1bc4:	0000bd6b 	.word	0x0000bd6b
c0de1bc8:	ffffffab 	.word	0xffffffab
c0de1bcc:	0000d118 	.word	0x0000d118
c0de1bd0:	0000d10a 	.word	0x0000d10a
c0de1bd4:	0000c634 	.word	0x0000c634
c0de1bd8:	0000aabf 	.word	0x0000aabf

c0de1bdc <controls_callback>:
c0de1bdc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1bde:	4c22      	ldr	r4, [pc, #136]	@ (c0de1c68 <controls_callback+0x8c>)
c0de1be0:	2815      	cmp	r0, #21
c0de1be2:	f809 2004 	strb.w	r2, [r9, r4]
c0de1be6:	d011      	beq.n	c0de1c0c <controls_callback+0x30>
c0de1be8:	2814      	cmp	r0, #20
c0de1bea:	d12a      	bne.n	c0de1c42 <controls_callback+0x66>
c0de1bec:	eb09 0504 	add.w	r5, r9, r4
c0de1bf0:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1c6c <controls_callback+0x90>)
c0de1bf2:	447c      	add	r4, pc
c0de1bf4:	f000 f88a 	bl	c0de1d0c <OUTLINED_FUNCTION_0>
c0de1bf8:	7800      	ldrb	r0, [r0, #0]
c0de1bfa:	fab0 f080 	clz	r0, r0
c0de1bfe:	0940      	lsrs	r0, r0, #5
c0de1c00:	7328      	strb	r0, [r5, #12]
c0de1c02:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1c06:	f000 f881 	bl	c0de1d0c <OUTLINED_FUNCTION_0>
c0de1c0a:	e015      	b.n	c0de1c38 <controls_callback+0x5c>
c0de1c0c:	4818      	ldr	r0, [pc, #96]	@ (c0de1c70 <controls_callback+0x94>)
c0de1c0e:	4478      	add	r0, pc
c0de1c10:	f00a f908 	bl	c0debe24 <pic>
c0de1c14:	7840      	ldrb	r0, [r0, #1]
c0de1c16:	b1a8      	cbz	r0, c0de1c44 <controls_callback+0x68>
c0de1c18:	eb09 0504 	add.w	r5, r9, r4
c0de1c1c:	4c15      	ldr	r4, [pc, #84]	@ (c0de1c74 <controls_callback+0x98>)
c0de1c1e:	447c      	add	r4, pc
c0de1c20:	f000 f874 	bl	c0de1d0c <OUTLINED_FUNCTION_0>
c0de1c24:	7840      	ldrb	r0, [r0, #1]
c0de1c26:	fab0 f080 	clz	r0, r0
c0de1c2a:	0940      	lsrs	r0, r0, #5
c0de1c2c:	7628      	strb	r0, [r5, #24]
c0de1c2e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1c32:	f000 f86b 	bl	c0de1d0c <OUTLINED_FUNCTION_0>
c0de1c36:	3001      	adds	r0, #1
c0de1c38:	f10d 010f 	add.w	r1, sp, #15
c0de1c3c:	2201      	movs	r2, #1
c0de1c3e:	f00a f92b 	bl	c0debe98 <nvm_write>
c0de1c42:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1c44:	480c      	ldr	r0, [pc, #48]	@ (c0de1c78 <controls_callback+0x9c>)
c0de1c46:	490d      	ldr	r1, [pc, #52]	@ (c0de1c7c <controls_callback+0xa0>)
c0de1c48:	4478      	add	r0, pc
c0de1c4a:	4479      	add	r1, pc
c0de1c4c:	e9cd 1000 	strd	r1, r0, [sp]
c0de1c50:	480b      	ldr	r0, [pc, #44]	@ (c0de1c80 <controls_callback+0xa4>)
c0de1c52:	490c      	ldr	r1, [pc, #48]	@ (c0de1c84 <controls_callback+0xa8>)
c0de1c54:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1c88 <controls_callback+0xac>)
c0de1c56:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1c8c <controls_callback+0xb0>)
c0de1c58:	4478      	add	r0, pc
c0de1c5a:	4479      	add	r1, pc
c0de1c5c:	447a      	add	r2, pc
c0de1c5e:	447b      	add	r3, pc
c0de1c60:	f007 fca0 	bl	c0de95a4 <nbgl_useCaseChoice>
c0de1c64:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1c66:	bf00      	nop
c0de1c68:	000003f8 	.word	0x000003f8
c0de1c6c:	0000d80a 	.word	0x0000d80a
c0de1c70:	0000d7ee 	.word	0x0000d7ee
c0de1c74:	0000d7de 	.word	0x0000d7de
c0de1c78:	00000045 	.word	0x00000045
c0de1c7c:	0000c12b 	.word	0x0000c12b
c0de1c80:	0000b347 	.word	0x0000b347
c0de1c84:	0000bc8d 	.word	0x0000bc8d
c0de1c88:	0000bebe 	.word	0x0000bebe
c0de1c8c:	0000c412 	.word	0x0000c412

c0de1c90 <review_warning_choice>:
c0de1c90:	b5b0      	push	{r4, r5, r7, lr}
c0de1c92:	b086      	sub	sp, #24
c0de1c94:	b1a8      	cbz	r0, c0de1cc2 <review_warning_choice+0x32>
c0de1c96:	4c17      	ldr	r4, [pc, #92]	@ (c0de1cf4 <review_warning_choice+0x64>)
c0de1c98:	4815      	ldr	r0, [pc, #84]	@ (c0de1cf0 <review_warning_choice+0x60>)
c0de1c9a:	447c      	add	r4, pc
c0de1c9c:	eb09 0500 	add.w	r5, r9, r0
c0de1ca0:	f000 f834 	bl	c0de1d0c <OUTLINED_FUNCTION_0>
c0de1ca4:	7840      	ldrb	r0, [r0, #1]
c0de1ca6:	fab0 f080 	clz	r0, r0
c0de1caa:	0940      	lsrs	r0, r0, #5
c0de1cac:	7628      	strb	r0, [r5, #24]
c0de1cae:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1cb2:	f000 f82b 	bl	c0de1d0c <OUTLINED_FUNCTION_0>
c0de1cb6:	3001      	adds	r0, #1
c0de1cb8:	f10d 0117 	add.w	r1, sp, #23
c0de1cbc:	2201      	movs	r2, #1
c0de1cbe:	f00a f8eb 	bl	c0debe98 <nvm_write>
c0de1cc2:	480b      	ldr	r0, [pc, #44]	@ (c0de1cf0 <review_warning_choice+0x60>)
c0de1cc4:	2100      	movs	r1, #0
c0de1cc6:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1cca:	480b      	ldr	r0, [pc, #44]	@ (c0de1cf8 <review_warning_choice+0x68>)
c0de1ccc:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1cfc <review_warning_choice+0x6c>)
c0de1cce:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1d00 <review_warning_choice+0x70>)
c0de1cd0:	4478      	add	r0, pc
c0de1cd2:	447a      	add	r2, pc
c0de1cd4:	447c      	add	r4, pc
c0de1cd6:	e9cd 4200 	strd	r4, r2, [sp]
c0de1cda:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1cde:	2200      	movs	r2, #0
c0de1ce0:	4808      	ldr	r0, [pc, #32]	@ (c0de1d04 <review_warning_choice+0x74>)
c0de1ce2:	4909      	ldr	r1, [pc, #36]	@ (c0de1d08 <review_warning_choice+0x78>)
c0de1ce4:	4478      	add	r0, pc
c0de1ce6:	4479      	add	r1, pc
c0de1ce8:	f007 f980 	bl	c0de8fec <nbgl_useCaseHomeAndSettings>
c0de1cec:	b006      	add	sp, #24
c0de1cee:	bdb0      	pop	{r4, r5, r7, pc}
c0de1cf0:	000003f8 	.word	0x000003f8
c0de1cf4:	0000d762 	.word	0x0000d762
c0de1cf8:	fffffe69 	.word	0xfffffe69
c0de1cfc:	0000cfd6 	.word	0x0000cfd6
c0de1d00:	0000cfc8 	.word	0x0000cfc8
c0de1d04:	0000c4f4 	.word	0x0000c4f4
c0de1d08:	0000a97f 	.word	0x0000a97f

c0de1d0c <OUTLINED_FUNCTION_0>:
c0de1d0c:	4620      	mov	r0, r4
c0de1d0e:	f00a b889 	b.w	c0debe24 <pic>
	...

c0de1d14 <ui_display_address>:
c0de1d14:	b570      	push	{r4, r5, r6, lr}
c0de1d16:	b088      	sub	sp, #32
c0de1d18:	4e22      	ldr	r6, [pc, #136]	@ (c0de1da4 <ui_display_address+0x90>)
c0de1d1a:	eb09 0106 	add.w	r1, r9, r6
c0de1d1e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1d22:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1d26:	4308      	orrs	r0, r1
c0de1d28:	d12a      	bne.n	c0de1d80 <ui_display_address+0x6c>
c0de1d2a:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1da8 <ui_display_address+0x94>)
c0de1d2c:	212b      	movs	r1, #43	@ 0x2b
c0de1d2e:	eb09 0005 	add.w	r0, r9, r5
c0de1d32:	f00a fba3 	bl	c0dec47c <__aeabi_memclr>
c0de1d36:	ac03      	add	r4, sp, #12
c0de1d38:	2114      	movs	r1, #20
c0de1d3a:	4620      	mov	r0, r4
c0de1d3c:	f00a fb9e 	bl	c0dec47c <__aeabi_memclr>
c0de1d40:	eb09 0006 	add.w	r0, r9, r6
c0de1d44:	4621      	mov	r1, r4
c0de1d46:	2214      	movs	r2, #20
c0de1d48:	3008      	adds	r0, #8
c0de1d4a:	f7fe f96d 	bl	c0de0028 <address_from_pubkey>
c0de1d4e:	b308      	cbz	r0, c0de1d94 <ui_display_address+0x80>
c0de1d50:	eb09 0205 	add.w	r2, r9, r5
c0de1d54:	a803      	add	r0, sp, #12
c0de1d56:	2114      	movs	r1, #20
c0de1d58:	232b      	movs	r3, #43	@ 0x2b
c0de1d5a:	f009 faff 	bl	c0deb35c <format_hex>
c0de1d5e:	3001      	adds	r0, #1
c0de1d60:	d018      	beq.n	c0de1d94 <ui_display_address+0x80>
c0de1d62:	4812      	ldr	r0, [pc, #72]	@ (c0de1dac <ui_display_address+0x98>)
c0de1d64:	2400      	movs	r4, #0
c0de1d66:	2100      	movs	r1, #0
c0de1d68:	4478      	add	r0, pc
c0de1d6a:	e9cd 4000 	strd	r4, r0, [sp]
c0de1d6e:	eb09 0005 	add.w	r0, r9, r5
c0de1d72:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1db0 <ui_display_address+0x9c>)
c0de1d74:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1db4 <ui_display_address+0xa0>)
c0de1d76:	447a      	add	r2, pc
c0de1d78:	447b      	add	r3, pc
c0de1d7a:	f008 f975 	bl	c0dea068 <nbgl_useCaseAddressReview>
c0de1d7e:	e00e      	b.n	c0de1d9e <ui_display_address+0x8a>
c0de1d80:	2000      	movs	r0, #0
c0de1d82:	f809 0006 	strb.w	r0, [r9, r6]
c0de1d86:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1d8a:	b008      	add	sp, #32
c0de1d8c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1d90:	f000 b812 	b.w	c0de1db8 <io_send_sw>
c0de1d94:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1d98:	f000 f80e 	bl	c0de1db8 <io_send_sw>
c0de1d9c:	4604      	mov	r4, r0
c0de1d9e:	4620      	mov	r0, r4
c0de1da0:	b008      	add	sp, #32
c0de1da2:	bd70      	pop	{r4, r5, r6, pc}
c0de1da4:	00000000 	.word	0x00000000
c0de1da8:	00000414 	.word	0x00000414
c0de1dac:	0000005d 	.word	0x0000005d
c0de1db0:	0000a8ef 	.word	0x0000a8ef
c0de1db4:	0000c418 	.word	0x0000c418

c0de1db8 <io_send_sw>:
c0de1db8:	b580      	push	{r7, lr}
c0de1dba:	4602      	mov	r2, r0
c0de1dbc:	2000      	movs	r0, #0
c0de1dbe:	2100      	movs	r1, #0
c0de1dc0:	f009 fb2e 	bl	c0deb420 <io_send_response_buffers>
c0de1dc4:	bd80      	pop	{r7, pc}
	...

c0de1dc8 <review_choice>:
c0de1dc8:	b510      	push	{r4, lr}
c0de1dca:	4604      	mov	r4, r0
c0de1dcc:	f7ff fe56 	bl	c0de1a7c <validate_pubkey>
c0de1dd0:	2007      	movs	r0, #7
c0de1dd2:	2c00      	cmp	r4, #0
c0de1dd4:	bf18      	it	ne
c0de1dd6:	2006      	movne	r0, #6
c0de1dd8:	4902      	ldr	r1, [pc, #8]	@ (c0de1de4 <review_choice+0x1c>)
c0de1dda:	4479      	add	r1, pc
c0de1ddc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1de0:	f007 bb96 	b.w	c0de9510 <nbgl_useCaseReviewStatus>
c0de1de4:	fffffd67 	.word	0xfffffd67

c0de1de8 <ui_display_transaction_bs_choice>:
c0de1de8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1dea:	b085      	sub	sp, #20
c0de1dec:	4f30      	ldr	r7, [pc, #192]	@ (c0de1eb0 <ui_display_transaction_bs_choice+0xc8>)
c0de1dee:	4604      	mov	r4, r0
c0de1df0:	eb09 0007 	add.w	r0, r9, r7
c0de1df4:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1df8:	2801      	cmp	r0, #1
c0de1dfa:	d139      	bne.n	c0de1e70 <ui_display_transaction_bs_choice+0x88>
c0de1dfc:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1e00:	2801      	cmp	r0, #1
c0de1e02:	d135      	bne.n	c0de1e70 <ui_display_transaction_bs_choice+0x88>
c0de1e04:	4e2b      	ldr	r6, [pc, #172]	@ (c0de1eb4 <ui_display_transaction_bs_choice+0xcc>)
c0de1e06:	2140      	movs	r1, #64	@ 0x40
c0de1e08:	eb09 0006 	add.w	r0, r9, r6
c0de1e0c:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1e10:	4628      	mov	r0, r5
c0de1e12:	f00a fb33 	bl	c0dec47c <__aeabi_memclr>
c0de1e16:	eb09 0007 	add.w	r0, r9, r7
c0de1e1a:	2114      	movs	r1, #20
c0de1e1c:	462a      	mov	r2, r5
c0de1e1e:	2340      	movs	r3, #64	@ 0x40
c0de1e20:	302d      	adds	r0, #45	@ 0x2d
c0de1e22:	f009 fa9b 	bl	c0deb35c <format_hex>
c0de1e26:	3001      	adds	r0, #1
c0de1e28:	d028      	beq.n	c0de1e7c <ui_display_transaction_bs_choice+0x94>
c0de1e2a:	4923      	ldr	r1, [pc, #140]	@ (c0de1eb8 <ui_display_transaction_bs_choice+0xd0>)
c0de1e2c:	eb09 0006 	add.w	r0, r9, r6
c0de1e30:	4602      	mov	r2, r0
c0de1e32:	4479      	add	r1, pc
c0de1e34:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1e38:	2101      	movs	r1, #1
c0de1e3a:	72c1      	strb	r1, [r0, #11]
c0de1e3c:	7201      	strb	r1, [r0, #8]
c0de1e3e:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1e42:	f849 2006 	str.w	r2, [r9, r6]
c0de1e46:	6181      	str	r1, [r0, #24]
c0de1e48:	481c      	ldr	r0, [pc, #112]	@ (c0de1ebc <ui_display_transaction_bs_choice+0xd4>)
c0de1e4a:	4478      	add	r0, pc
c0de1e4c:	b1ec      	cbz	r4, c0de1e8a <ui_display_transaction_bs_choice+0xa2>
c0de1e4e:	4a1c      	ldr	r2, [pc, #112]	@ (c0de1ec0 <ui_display_transaction_bs_choice+0xd8>)
c0de1e50:	2100      	movs	r1, #0
c0de1e52:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1e56:	2000      	movs	r0, #0
c0de1e58:	447a      	add	r2, pc
c0de1e5a:	e9cd 1200 	strd	r1, r2, [sp]
c0de1e5e:	eb09 0106 	add.w	r1, r9, r6
c0de1e62:	4a18      	ldr	r2, [pc, #96]	@ (c0de1ec4 <ui_display_transaction_bs_choice+0xdc>)
c0de1e64:	4b18      	ldr	r3, [pc, #96]	@ (c0de1ec8 <ui_display_transaction_bs_choice+0xe0>)
c0de1e66:	447a      	add	r2, pc
c0de1e68:	447b      	add	r3, pc
c0de1e6a:	f007 fe0b 	bl	c0de9a84 <nbgl_useCaseReviewBlindSigning>
c0de1e6e:	e01b      	b.n	c0de1ea8 <ui_display_transaction_bs_choice+0xc0>
c0de1e70:	2000      	movs	r0, #0
c0de1e72:	f809 0007 	strb.w	r0, [r9, r7]
c0de1e76:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1e7a:	e001      	b.n	c0de1e80 <ui_display_transaction_bs_choice+0x98>
c0de1e7c:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1e80:	b005      	add	sp, #20
c0de1e82:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1e86:	f000 b827 	b.w	c0de1ed8 <io_send_sw>
c0de1e8a:	4910      	ldr	r1, [pc, #64]	@ (c0de1ecc <ui_display_transaction_bs_choice+0xe4>)
c0de1e8c:	2200      	movs	r2, #0
c0de1e8e:	9002      	str	r0, [sp, #8]
c0de1e90:	2000      	movs	r0, #0
c0de1e92:	4479      	add	r1, pc
c0de1e94:	e9cd 2100 	strd	r2, r1, [sp]
c0de1e98:	eb09 0106 	add.w	r1, r9, r6
c0de1e9c:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1ed0 <ui_display_transaction_bs_choice+0xe8>)
c0de1e9e:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1ed4 <ui_display_transaction_bs_choice+0xec>)
c0de1ea0:	447a      	add	r2, pc
c0de1ea2:	447b      	add	r3, pc
c0de1ea4:	f007 fd3e 	bl	c0de9924 <nbgl_useCaseReview>
c0de1ea8:	2000      	movs	r0, #0
c0de1eaa:	b005      	add	sp, #20
c0de1eac:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1eae:	bf00      	nop
c0de1eb0:	00000000 	.word	0x00000000
c0de1eb4:	00000440 	.word	0x00000440
c0de1eb8:	0000c267 	.word	0x0000c267
c0de1ebc:	0000009b 	.word	0x0000009b
c0de1ec0:	0000c298 	.word	0x0000c298
c0de1ec4:	0000a7ff 	.word	0x0000a7ff
c0de1ec8:	0000c33b 	.word	0x0000c33b
c0de1ecc:	0000c0e3 	.word	0x0000c0e3
c0de1ed0:	0000a7c5 	.word	0x0000a7c5
c0de1ed4:	0000c301 	.word	0x0000c301

c0de1ed8 <io_send_sw>:
c0de1ed8:	b580      	push	{r7, lr}
c0de1eda:	4602      	mov	r2, r0
c0de1edc:	2000      	movs	r0, #0
c0de1ede:	2100      	movs	r1, #0
c0de1ee0:	f009 fa9e 	bl	c0deb420 <io_send_response_buffers>
c0de1ee4:	bd80      	pop	{r7, pc}
	...

c0de1ee8 <review_choice>:
c0de1ee8:	b510      	push	{r4, lr}
c0de1eea:	4604      	mov	r4, r0
c0de1eec:	f7ff fdd4 	bl	c0de1a98 <validate_transaction>
c0de1ef0:	4903      	ldr	r1, [pc, #12]	@ (c0de1f00 <review_choice+0x18>)
c0de1ef2:	f084 0001 	eor.w	r0, r4, #1
c0de1ef6:	4479      	add	r1, pc
c0de1ef8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1efc:	f007 bb08 	b.w	c0de9510 <nbgl_useCaseReviewStatus>
c0de1f00:	fffffc4b 	.word	0xfffffc4b

c0de1f04 <ui_display_blind_signed_transaction>:
c0de1f04:	2001      	movs	r0, #1
c0de1f06:	f7ff bf6f 	b.w	c0de1de8 <ui_display_transaction_bs_choice>

c0de1f0a <ui_display_transaction>:
c0de1f0a:	2000      	movs	r0, #0
c0de1f0c:	f7ff bf6c 	b.w	c0de1de8 <ui_display_transaction_bs_choice>

c0de1f10 <zkn_prv_hash>:
c0de1f10:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1f14:	460c      	mov	r4, r1
c0de1f16:	e9cd 0200 	strd	r0, r2, [sp]
c0de1f1a:	4668      	mov	r0, sp
c0de1f1c:	2101      	movs	r1, #1
c0de1f1e:	2601      	movs	r6, #1
c0de1f20:	4622      	mov	r2, r4
c0de1f22:	f009 fd1a 	bl	c0deb95a <cx_blake2b_512_hash_iovec>
c0de1f26:	4605      	mov	r5, r0
c0de1f28:	bb18      	cbnz	r0, c0de1f72 <zkn_prv_hash+0x62>
c0de1f2a:	7820      	ldrb	r0, [r4, #0]
c0de1f2c:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1f30:	7020      	strb	r0, [r4, #0]
c0de1f32:	7fe0      	ldrb	r0, [r4, #31]
c0de1f34:	f366 109f 	bfi	r0, r6, #6, #26
c0de1f38:	77e0      	strb	r0, [r4, #31]
c0de1f3a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1f3e:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1f78 <zkn_prv_hash+0x68>)
c0de1f40:	447e      	add	r6, pc
c0de1f42:	47b0      	blx	r6
c0de1f44:	4680      	mov	r8, r0
c0de1f46:	468a      	mov	sl, r1
c0de1f48:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1f4c:	47b0      	blx	r6
c0de1f4e:	4683      	mov	fp, r0
c0de1f50:	460f      	mov	r7, r1
c0de1f52:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1f56:	47b0      	blx	r6
c0de1f58:	e9c4 0100 	strd	r0, r1, [r4]
c0de1f5c:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1f60:	47b0      	blx	r6
c0de1f62:	f104 0208 	add.w	r2, r4, #8
c0de1f66:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1f6a:	f104 0014 	add.w	r0, r4, #20
c0de1f6e:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1f72:	4628      	mov	r0, r5
c0de1f74:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1f78:	00000325 	.word	0x00000325

c0de1f7c <zkn_prv2pub>:
c0de1f7c:	b570      	push	{r4, r5, r6, lr}
c0de1f7e:	b092      	sub	sp, #72	@ 0x48
c0de1f80:	4614      	mov	r4, r2
c0de1f82:	6802      	ldr	r2, [r0, #0]
c0de1f84:	ae02      	add	r6, sp, #8
c0de1f86:	4605      	mov	r5, r0
c0de1f88:	4608      	mov	r0, r1
c0de1f8a:	4631      	mov	r1, r6
c0de1f8c:	f7ff ffc0 	bl	c0de1f10 <zkn_prv_hash>
c0de1f90:	2000      	movs	r0, #0
c0de1f92:	2100      	movs	r1, #0
c0de1f94:	2820      	cmp	r0, #32
c0de1f96:	d009      	beq.n	c0de1fac <zkn_prv2pub+0x30>
c0de1f98:	5c32      	ldrb	r2, [r6, r0]
c0de1f9a:	0149      	lsls	r1, r1, #5
c0de1f9c:	0613      	lsls	r3, r2, #24
c0de1f9e:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1fa2:	5431      	strb	r1, [r6, r0]
c0de1fa4:	f002 0107 	and.w	r1, r2, #7
c0de1fa8:	3001      	adds	r0, #1
c0de1faa:	e7f3      	b.n	c0de1f94 <zkn_prv2pub+0x18>
c0de1fac:	4629      	mov	r1, r5
c0de1fae:	4628      	mov	r0, r5
c0de1fb0:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1fb4:	9400      	str	r4, [sp, #0]
c0de1fb6:	aa02      	add	r2, sp, #8
c0de1fb8:	f001 f944 	bl	c0de3244 <tEdwards_scalarMul>
c0de1fbc:	b918      	cbnz	r0, c0de1fc6 <zkn_prv2pub+0x4a>
c0de1fbe:	4628      	mov	r0, r5
c0de1fc0:	4621      	mov	r1, r4
c0de1fc2:	f001 f87a 	bl	c0de30ba <tEdwards_normalize>
c0de1fc6:	b012      	add	sp, #72	@ 0x48
c0de1fc8:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1fcc <EddsaPoseidon_Sign_final>:
c0de1fcc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1fd0:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1fd4:	4605      	mov	r5, r0
c0de1fd6:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1fd8:	2820      	cmp	r0, #32
c0de1fda:	d118      	bne.n	c0de200e <EddsaPoseidon_Sign_final+0x42>
c0de1fdc:	460e      	mov	r6, r1
c0de1fde:	a982      	add	r1, sp, #520	@ 0x208
c0de1fe0:	4628      	mov	r0, r5
c0de1fe2:	461f      	mov	r7, r3
c0de1fe4:	4692      	mov	sl, r2
c0de1fe6:	f000 fd37 	bl	c0de2a58 <tEdwards_alloc>
c0de1fea:	b988      	cbnz	r0, c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de1fec:	682a      	ldr	r2, [r5, #0]
c0de1fee:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1ff0:	4630      	mov	r0, r6
c0de1ff2:	4621      	mov	r1, r4
c0de1ff4:	f7ff ff8c 	bl	c0de1f10 <zkn_prv_hash>
c0de1ff8:	b950      	cbnz	r0, c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de1ffa:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1ffe:	2000      	movs	r0, #0
c0de2000:	a95a      	add	r1, sp, #360	@ 0x168
c0de2002:	2820      	cmp	r0, #32
c0de2004:	d008      	beq.n	c0de2018 <EddsaPoseidon_Sign_final+0x4c>
c0de2006:	5c22      	ldrb	r2, [r4, r0]
c0de2008:	540a      	strb	r2, [r1, r0]
c0de200a:	3001      	adds	r0, #1
c0de200c:	e7f9      	b.n	c0de2002 <EddsaPoseidon_Sign_final+0x36>
c0de200e:	4894      	ldr	r0, [pc, #592]	@ (c0de2260 <EddsaPoseidon_Sign_final+0x294>)
c0de2010:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de2014:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2018:	a812      	add	r0, sp, #72	@ 0x48
c0de201a:	2109      	movs	r1, #9
c0de201c:	2240      	movs	r2, #64	@ 0x40
c0de201e:	f009 fcbd 	bl	c0deb99c <cx_hash_init_ex>
c0de2022:	2800      	cmp	r0, #0
c0de2024:	d1f4      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2026:	f104 0120 	add.w	r1, r4, #32
c0de202a:	a812      	add	r0, sp, #72	@ 0x48
c0de202c:	2220      	movs	r2, #32
c0de202e:	f009 fcba 	bl	c0deb9a6 <cx_hash_update>
c0de2032:	2800      	cmp	r0, #0
c0de2034:	d1ec      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2036:	a812      	add	r0, sp, #72	@ 0x48
c0de2038:	4639      	mov	r1, r7
c0de203a:	2220      	movs	r2, #32
c0de203c:	f009 fcb3 	bl	c0deb9a6 <cx_hash_update>
c0de2040:	2800      	cmp	r0, #0
c0de2042:	d1e5      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2044:	a812      	add	r0, sp, #72	@ 0x48
c0de2046:	ac62      	add	r4, sp, #392	@ 0x188
c0de2048:	4621      	mov	r1, r4
c0de204a:	f009 fca2 	bl	c0deb992 <cx_hash_final>
c0de204e:	2800      	cmp	r0, #0
c0de2050:	d1de      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2052:	203f      	movs	r0, #63	@ 0x3f
c0de2054:	a972      	add	r1, sp, #456	@ 0x1c8
c0de2056:	1c42      	adds	r2, r0, #1
c0de2058:	d004      	beq.n	c0de2064 <EddsaPoseidon_Sign_final+0x98>
c0de205a:	5c22      	ldrb	r2, [r4, r0]
c0de205c:	3801      	subs	r0, #1
c0de205e:	f801 2b01 	strb.w	r2, [r1], #1
c0de2062:	e7f8      	b.n	c0de2056 <EddsaPoseidon_Sign_final+0x8a>
c0de2064:	a889      	add	r0, sp, #548	@ 0x224
c0de2066:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de2068:	2140      	movs	r1, #64	@ 0x40
c0de206a:	2340      	movs	r3, #64	@ 0x40
c0de206c:	f009 ff3a 	bl	c0debee4 <cx_bn_alloc_init>
c0de2070:	2800      	cmp	r0, #0
c0de2072:	d1cd      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2074:	a887      	add	r0, sp, #540	@ 0x21c
c0de2076:	2140      	movs	r1, #64	@ 0x40
c0de2078:	f009 ff2a 	bl	c0debed0 <cx_bn_alloc>
c0de207c:	2800      	cmp	r0, #0
c0de207e:	d1c7      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2080:	4978      	ldr	r1, [pc, #480]	@ (c0de2264 <EddsaPoseidon_Sign_final+0x298>)
c0de2082:	f10d 0808 	add.w	r8, sp, #8
c0de2086:	2240      	movs	r2, #64	@ 0x40
c0de2088:	4640      	mov	r0, r8
c0de208a:	4479      	add	r1, pc
c0de208c:	f00a f9ec 	bl	c0dec468 <__aeabi_memcpy>
c0de2090:	a888      	add	r0, sp, #544	@ 0x220
c0de2092:	2140      	movs	r1, #64	@ 0x40
c0de2094:	4642      	mov	r2, r8
c0de2096:	2340      	movs	r3, #64	@ 0x40
c0de2098:	f009 ff24 	bl	c0debee4 <cx_bn_alloc_init>
c0de209c:	2800      	cmp	r0, #0
c0de209e:	d1b7      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de20a0:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de20a2:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de20a6:	f009 ffb1 	bl	c0dec00c <cx_bn_reduce>
c0de20aa:	2800      	cmp	r0, #0
c0de20ac:	d1b0      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de20ae:	aa87      	add	r2, sp, #540	@ 0x21c
c0de20b0:	f105 010c 	add.w	r1, r5, #12
c0de20b4:	ab82      	add	r3, sp, #520	@ 0x208
c0de20b6:	4628      	mov	r0, r5
c0de20b8:	f001 f85e 	bl	c0de3178 <tEdwards_scalarMul_bn>
c0de20bc:	2800      	cmp	r0, #0
c0de20be:	d1a7      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de20c0:	a982      	add	r1, sp, #520	@ 0x208
c0de20c2:	4628      	mov	r0, r5
c0de20c4:	f000 fff9 	bl	c0de30ba <tEdwards_normalize>
c0de20c8:	2800      	cmp	r0, #0
c0de20ca:	d1a1      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de20cc:	f10b 0320 	add.w	r3, fp, #32
c0de20d0:	a982      	add	r1, sp, #520	@ 0x208
c0de20d2:	4628      	mov	r0, r5
c0de20d4:	465a      	mov	r2, fp
c0de20d6:	f000 ffca 	bl	c0de306e <tEdwards_export>
c0de20da:	2800      	cmp	r0, #0
c0de20dc:	d198      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de20de:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de20e0:	a952      	add	r1, sp, #328	@ 0x148
c0de20e2:	2220      	movs	r2, #32
c0de20e4:	f009 ff3e 	bl	c0debf64 <cx_bn_export>
c0de20e8:	2800      	cmp	r0, #0
c0de20ea:	d191      	bne.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de20ec:	a888      	add	r0, sp, #544	@ 0x220
c0de20ee:	f009 ff05 	bl	c0debefc <cx_bn_destroy>
c0de20f2:	2800      	cmp	r0, #0
c0de20f4:	f47f af8c 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de20f8:	a889      	add	r0, sp, #548	@ 0x224
c0de20fa:	f009 feff 	bl	c0debefc <cx_bn_destroy>
c0de20fe:	2800      	cmp	r0, #0
c0de2100:	f47f af86 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2104:	a887      	add	r0, sp, #540	@ 0x21c
c0de2106:	f009 fef9 	bl	c0debefc <cx_bn_destroy>
c0de210a:	2800      	cmp	r0, #0
c0de210c:	f47f af80 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2110:	4628      	mov	r0, r5
c0de2112:	f000 ff50 	bl	c0de2fb6 <tEdwards_Curve_partial_destroy>
c0de2116:	2800      	cmp	r0, #0
c0de2118:	f47f af7a 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de211c:	f105 0420 	add.w	r4, r5, #32
c0de2120:	a88a      	add	r0, sp, #552	@ 0x228
c0de2122:	f000 f8a5 	bl	c0de2270 <OUTLINED_FUNCTION_0>
c0de2126:	2800      	cmp	r0, #0
c0de2128:	f47f af72 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de212c:	201f      	movs	r0, #31
c0de212e:	a962      	add	r1, sp, #392	@ 0x188
c0de2130:	1c42      	adds	r2, r0, #1
c0de2132:	d004      	beq.n	c0de213e <EddsaPoseidon_Sign_final+0x172>
c0de2134:	5c3a      	ldrb	r2, [r7, r0]
c0de2136:	3801      	subs	r0, #1
c0de2138:	f801 2b01 	strb.w	r2, [r1], #1
c0de213c:	e7f8      	b.n	c0de2130 <EddsaPoseidon_Sign_final+0x164>
c0de213e:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de2140:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de2142:	f009 fefb 	bl	c0debf3c <cx_bn_copy>
c0de2146:	2800      	cmp	r0, #0
c0de2148:	f47f af62 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de214c:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de214e:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de2150:	f009 fef4 	bl	c0debf3c <cx_bn_copy>
c0de2154:	2800      	cmp	r0, #0
c0de2156:	f47f af5b 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de215a:	f8da 1000 	ldr.w	r1, [sl]
c0de215e:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de2160:	f009 feec 	bl	c0debf3c <cx_bn_copy>
c0de2164:	2800      	cmp	r0, #0
c0de2166:	f47f af53 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de216a:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de216e:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de2170:	f009 fee4 	bl	c0debf3c <cx_bn_copy>
c0de2174:	2800      	cmp	r0, #0
c0de2176:	f47f af4b 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de217a:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de217c:	a962      	add	r1, sp, #392	@ 0x188
c0de217e:	2220      	movs	r2, #32
c0de2180:	f009 fed0 	bl	c0debf24 <cx_bn_init>
c0de2184:	2800      	cmp	r0, #0
c0de2186:	f47f af43 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de218a:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de218c:	4622      	mov	r2, r4
c0de218e:	4601      	mov	r1, r0
c0de2190:	f009 ff72 	bl	c0dec078 <cx_mont_to_montgomery>
c0de2194:	2800      	cmp	r0, #0
c0de2196:	f47f af3b 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de219a:	a982      	add	r1, sp, #520	@ 0x208
c0de219c:	4628      	mov	r0, r5
c0de219e:	f000 fc70 	bl	c0de2a82 <tEdwards_destroy>
c0de21a2:	2800      	cmp	r0, #0
c0de21a4:	f47f af34 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de21a8:	a885      	add	r0, sp, #532	@ 0x214
c0de21aa:	2120      	movs	r1, #32
c0de21ac:	f009 fe90 	bl	c0debed0 <cx_bn_alloc>
c0de21b0:	2800      	cmp	r0, #0
c0de21b2:	f47f af2d 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de21b6:	a88a      	add	r0, sp, #552	@ 0x228
c0de21b8:	aa85      	add	r2, sp, #532	@ 0x214
c0de21ba:	2100      	movs	r1, #0
c0de21bc:	2301      	movs	r3, #1
c0de21be:	f001 f9cd 	bl	c0de355c <Poseidon>
c0de21c2:	2800      	cmp	r0, #0
c0de21c4:	f47f af24 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de21c8:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de21ca:	4622      	mov	r2, r4
c0de21cc:	4601      	mov	r1, r0
c0de21ce:	f009 ff5f 	bl	c0dec090 <cx_mont_from_montgomery>
c0de21d2:	2800      	cmp	r0, #0
c0de21d4:	f47f af1c 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de21d8:	a886      	add	r0, sp, #536	@ 0x218
c0de21da:	aa5a      	add	r2, sp, #360	@ 0x168
c0de21dc:	2120      	movs	r1, #32
c0de21de:	2320      	movs	r3, #32
c0de21e0:	f009 fe80 	bl	c0debee4 <cx_bn_alloc_init>
c0de21e4:	2800      	cmp	r0, #0
c0de21e6:	f47f af13 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de21ea:	a801      	add	r0, sp, #4
c0de21ec:	2120      	movs	r1, #32
c0de21ee:	f009 fe6f 	bl	c0debed0 <cx_bn_alloc>
c0de21f2:	2800      	cmp	r0, #0
c0de21f4:	f47f af0c 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de21f8:	f108 0220 	add.w	r2, r8, #32
c0de21fc:	a888      	add	r0, sp, #544	@ 0x220
c0de21fe:	2120      	movs	r1, #32
c0de2200:	2320      	movs	r3, #32
c0de2202:	f009 fe6f 	bl	c0debee4 <cx_bn_alloc_init>
c0de2206:	2800      	cmp	r0, #0
c0de2208:	f47f af02 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de220c:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de220e:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de2212:	9801      	ldr	r0, [sp, #4]
c0de2214:	f009 feee 	bl	c0debff4 <cx_bn_mod_mul>
c0de2218:	2800      	cmp	r0, #0
c0de221a:	f47f aef9 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de221e:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2220:	a952      	add	r1, sp, #328	@ 0x148
c0de2222:	2220      	movs	r2, #32
c0de2224:	f009 fe7e 	bl	c0debf24 <cx_bn_init>
c0de2228:	2800      	cmp	r0, #0
c0de222a:	f47f aef1 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de222e:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de2230:	9a01      	ldr	r2, [sp, #4]
c0de2232:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de2236:	f009 fec5 	bl	c0debfc4 <cx_bn_mod_add>
c0de223a:	2800      	cmp	r0, #0
c0de223c:	f47f aee8 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2240:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de2242:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de2246:	f009 fee1 	bl	c0dec00c <cx_bn_reduce>
c0de224a:	2800      	cmp	r0, #0
c0de224c:	f47f aee0 	bne.w	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de2250:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2252:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de2256:	2220      	movs	r2, #32
c0de2258:	f009 fe84 	bl	c0debf64 <cx_bn_export>
c0de225c:	e6d8      	b.n	c0de2010 <EddsaPoseidon_Sign_final+0x44>
c0de225e:	bf00      	nop
c0de2260:	5a4b4e03 	.word	0x5a4b4e03
c0de2264:	0000cc76 	.word	0x0000cc76

c0de2268 <rev64>:
c0de2268:	ba0a      	rev	r2, r1
c0de226a:	ba01      	rev	r1, r0
c0de226c:	4610      	mov	r0, r2
c0de226e:	4770      	bx	lr

c0de2270 <OUTLINED_FUNCTION_0>:
c0de2270:	2105      	movs	r1, #5
c0de2272:	2205      	movs	r2, #5
c0de2274:	4623      	mov	r3, r4
c0de2276:	f001 b90b 	b.w	c0de3490 <Poseidon_alloc_init>

c0de227a <zkn_frost_interpolate>:
c0de227a:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de227e:	b085      	sub	sp, #20
c0de2280:	460e      	mov	r6, r1
c0de2282:	4607      	mov	r7, r0
c0de2284:	a803      	add	r0, sp, #12
c0de2286:	2120      	movs	r1, #32
c0de2288:	f000 fbda 	bl	c0de2a40 <OUTLINED_FUNCTION_4>
c0de228c:	b988      	cbnz	r0, c0de22b2 <zkn_frost_interpolate+0x38>
c0de228e:	a802      	add	r0, sp, #8
c0de2290:	f000 fbcf 	bl	c0de2a32 <OUTLINED_FUNCTION_2>
c0de2294:	b968      	cbnz	r0, c0de22b2 <zkn_frost_interpolate+0x38>
c0de2296:	a801      	add	r0, sp, #4
c0de2298:	f000 fbcb 	bl	c0de2a32 <OUTLINED_FUNCTION_2>
c0de229c:	b948      	cbnz	r0, c0de22b2 <zkn_frost_interpolate+0x38>
c0de229e:	9803      	ldr	r0, [sp, #12]
c0de22a0:	2101      	movs	r1, #1
c0de22a2:	f009 fe55 	bl	c0debf50 <cx_bn_set_u32>
c0de22a6:	b920      	cbnz	r0, c0de22b2 <zkn_frost_interpolate+0x38>
c0de22a8:	9802      	ldr	r0, [sp, #8]
c0de22aa:	2101      	movs	r1, #1
c0de22ac:	f009 fe50 	bl	c0debf50 <cx_bn_set_u32>
c0de22b0:	b110      	cbz	r0, c0de22b8 <zkn_frost_interpolate+0x3e>
c0de22b2:	b005      	add	sp, #20
c0de22b4:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de22b8:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de22bc:	f10d 0a10 	add.w	sl, sp, #16
c0de22c0:	b31e      	cbz	r6, c0de230a <zkn_frost_interpolate+0x90>
c0de22c2:	6838      	ldr	r0, [r7, #0]
c0de22c4:	4629      	mov	r1, r5
c0de22c6:	4652      	mov	r2, sl
c0de22c8:	f009 fe58 	bl	c0debf7c <cx_bn_cmp>
c0de22cc:	2800      	cmp	r0, #0
c0de22ce:	d1f0      	bne.n	c0de22b2 <zkn_frost_interpolate+0x38>
c0de22d0:	9804      	ldr	r0, [sp, #16]
c0de22d2:	b1b8      	cbz	r0, c0de2304 <zkn_frost_interpolate+0x8a>
c0de22d4:	9802      	ldr	r0, [sp, #8]
c0de22d6:	683a      	ldr	r2, [r7, #0]
c0de22d8:	4623      	mov	r3, r4
c0de22da:	4601      	mov	r1, r0
c0de22dc:	f009 fe8a 	bl	c0debff4 <cx_bn_mod_mul>
c0de22e0:	2800      	cmp	r0, #0
c0de22e2:	d1e6      	bne.n	c0de22b2 <zkn_frost_interpolate+0x38>
c0de22e4:	6839      	ldr	r1, [r7, #0]
c0de22e6:	9801      	ldr	r0, [sp, #4]
c0de22e8:	462a      	mov	r2, r5
c0de22ea:	4623      	mov	r3, r4
c0de22ec:	f009 fe76 	bl	c0debfdc <cx_bn_mod_sub>
c0de22f0:	2800      	cmp	r0, #0
c0de22f2:	d1de      	bne.n	c0de22b2 <zkn_frost_interpolate+0x38>
c0de22f4:	9803      	ldr	r0, [sp, #12]
c0de22f6:	9a01      	ldr	r2, [sp, #4]
c0de22f8:	4623      	mov	r3, r4
c0de22fa:	4601      	mov	r1, r0
c0de22fc:	f009 fe7a 	bl	c0debff4 <cx_bn_mod_mul>
c0de2300:	2800      	cmp	r0, #0
c0de2302:	d1d6      	bne.n	c0de22b2 <zkn_frost_interpolate+0x38>
c0de2304:	3704      	adds	r7, #4
c0de2306:	3e01      	subs	r6, #1
c0de2308:	e7da      	b.n	c0de22c0 <zkn_frost_interpolate+0x46>
c0de230a:	9903      	ldr	r1, [sp, #12]
c0de230c:	4640      	mov	r0, r8
c0de230e:	4622      	mov	r2, r4
c0de2310:	f009 fe88 	bl	c0dec024 <cx_bn_mod_invert_nprime>
c0de2314:	2800      	cmp	r0, #0
c0de2316:	d1cc      	bne.n	c0de22b2 <zkn_frost_interpolate+0x38>
c0de2318:	9a02      	ldr	r2, [sp, #8]
c0de231a:	4640      	mov	r0, r8
c0de231c:	4641      	mov	r1, r8
c0de231e:	4623      	mov	r3, r4
c0de2320:	f009 fe68 	bl	c0debff4 <cx_bn_mod_mul>
c0de2324:	2800      	cmp	r0, #0
c0de2326:	d1c4      	bne.n	c0de22b2 <zkn_frost_interpolate+0x38>
c0de2328:	a803      	add	r0, sp, #12
c0de232a:	f009 fde7 	bl	c0debefc <cx_bn_destroy>
c0de232e:	2800      	cmp	r0, #0
c0de2330:	d1bf      	bne.n	c0de22b2 <zkn_frost_interpolate+0x38>
c0de2332:	a802      	add	r0, sp, #8
c0de2334:	f009 fde2 	bl	c0debefc <cx_bn_destroy>
c0de2338:	e7bb      	b.n	c0de22b2 <zkn_frost_interpolate+0x38>

c0de233a <zkn_frost_interpolate_secrets>:
c0de233a:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de233e:	460f      	mov	r7, r1
c0de2340:	4606      	mov	r6, r0
c0de2342:	a802      	add	r0, sp, #8
c0de2344:	2120      	movs	r1, #32
c0de2346:	461c      	mov	r4, r3
c0de2348:	4692      	mov	sl, r2
c0de234a:	f009 fdc1 	bl	c0debed0 <cx_bn_alloc>
c0de234e:	b108      	cbz	r0, c0de2354 <zkn_frost_interpolate_secrets+0x1a>
c0de2350:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de2354:	a801      	add	r0, sp, #4
c0de2356:	f000 fb6c 	bl	c0de2a32 <OUTLINED_FUNCTION_2>
c0de235a:	2800      	cmp	r0, #0
c0de235c:	d1f8      	bne.n	c0de2350 <zkn_frost_interpolate_secrets+0x16>
c0de235e:	9802      	ldr	r0, [sp, #8]
c0de2360:	2100      	movs	r1, #0
c0de2362:	f009 fdf5 	bl	c0debf50 <cx_bn_set_u32>
c0de2366:	2800      	cmp	r0, #0
c0de2368:	d1f2      	bne.n	c0de2350 <zkn_frost_interpolate_secrets+0x16>
c0de236a:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de236e:	2500      	movs	r5, #0
c0de2370:	42ac      	cmp	r4, r5
c0de2372:	d01d      	beq.n	c0de23b0 <zkn_frost_interpolate_secrets+0x76>
c0de2374:	9801      	ldr	r0, [sp, #4]
c0de2376:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de237a:	68b3      	ldr	r3, [r6, #8]
c0de237c:	4621      	mov	r1, r4
c0de237e:	9000      	str	r0, [sp, #0]
c0de2380:	4638      	mov	r0, r7
c0de2382:	f7ff ff7a 	bl	c0de227a <zkn_frost_interpolate>
c0de2386:	2800      	cmp	r0, #0
c0de2388:	d1e2      	bne.n	c0de2350 <zkn_frost_interpolate_secrets+0x16>
c0de238a:	9801      	ldr	r0, [sp, #4]
c0de238c:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de2390:	68b3      	ldr	r3, [r6, #8]
c0de2392:	4601      	mov	r1, r0
c0de2394:	f009 fe2e 	bl	c0debff4 <cx_bn_mod_mul>
c0de2398:	2800      	cmp	r0, #0
c0de239a:	d1d9      	bne.n	c0de2350 <zkn_frost_interpolate_secrets+0x16>
c0de239c:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de23a0:	68b3      	ldr	r3, [r6, #8]
c0de23a2:	4601      	mov	r1, r0
c0de23a4:	f009 fe0e 	bl	c0debfc4 <cx_bn_mod_add>
c0de23a8:	3501      	adds	r5, #1
c0de23aa:	2800      	cmp	r0, #0
c0de23ac:	d0e0      	beq.n	c0de2370 <zkn_frost_interpolate_secrets+0x36>
c0de23ae:	e7cf      	b.n	c0de2350 <zkn_frost_interpolate_secrets+0x16>
c0de23b0:	68b2      	ldr	r2, [r6, #8]
c0de23b2:	9902      	ldr	r1, [sp, #8]
c0de23b4:	4640      	mov	r0, r8
c0de23b6:	f009 fe29 	bl	c0dec00c <cx_bn_reduce>
c0de23ba:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de23be <zkn_evalshare>:
c0de23be:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de23c2:	460e      	mov	r6, r1
c0de23c4:	6801      	ldr	r1, [r0, #0]
c0de23c6:	4607      	mov	r7, r0
c0de23c8:	a801      	add	r0, sp, #4
c0de23ca:	f000 fb39 	bl	c0de2a40 <OUTLINED_FUNCTION_4>
c0de23ce:	b108      	cbz	r0, c0de23d4 <zkn_evalshare+0x16>
c0de23d0:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de23d4:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de23d8:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de23dc:	4640      	mov	r0, r8
c0de23de:	f009 fdad 	bl	c0debf3c <cx_bn_copy>
c0de23e2:	2800      	cmp	r0, #0
c0de23e4:	d1f4      	bne.n	c0de23d0 <zkn_evalshare+0x12>
c0de23e6:	3e04      	subs	r6, #4
c0de23e8:	68bb      	ldr	r3, [r7, #8]
c0de23ea:	9801      	ldr	r0, [sp, #4]
c0de23ec:	4641      	mov	r1, r8
c0de23ee:	b17d      	cbz	r5, c0de2410 <zkn_evalshare+0x52>
c0de23f0:	4622      	mov	r2, r4
c0de23f2:	f009 fdff 	bl	c0debff4 <cx_bn_mod_mul>
c0de23f6:	2800      	cmp	r0, #0
c0de23f8:	d1ea      	bne.n	c0de23d0 <zkn_evalshare+0x12>
c0de23fa:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de23fe:	68bb      	ldr	r3, [r7, #8]
c0de2400:	9901      	ldr	r1, [sp, #4]
c0de2402:	4640      	mov	r0, r8
c0de2404:	f009 fdde 	bl	c0debfc4 <cx_bn_mod_add>
c0de2408:	3d01      	subs	r5, #1
c0de240a:	2800      	cmp	r0, #0
c0de240c:	d0ec      	beq.n	c0de23e8 <zkn_evalshare+0x2a>
c0de240e:	e7df      	b.n	c0de23d0 <zkn_evalshare+0x12>
c0de2410:	461a      	mov	r2, r3
c0de2412:	f009 fdfb 	bl	c0dec00c <cx_bn_reduce>
c0de2416:	2800      	cmp	r0, #0
c0de2418:	d1da      	bne.n	c0de23d0 <zkn_evalshare+0x12>
c0de241a:	9901      	ldr	r1, [sp, #4]
c0de241c:	4640      	mov	r0, r8
c0de241e:	f009 fd8d 	bl	c0debf3c <cx_bn_copy>
c0de2422:	2800      	cmp	r0, #0
c0de2424:	d1d4      	bne.n	c0de23d0 <zkn_evalshare+0x12>
c0de2426:	a801      	add	r0, sp, #4
c0de2428:	f009 fd68 	bl	c0debefc <cx_bn_destroy>
c0de242c:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de2430 <zkn_frost_nonce_generate>:
c0de2430:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2432:	b091      	sub	sp, #68	@ 0x44
c0de2434:	af01      	add	r7, sp, #4
c0de2436:	460e      	mov	r6, r1
c0de2438:	4605      	mov	r5, r0
c0de243a:	2120      	movs	r1, #32
c0de243c:	4614      	mov	r4, r2
c0de243e:	4638      	mov	r0, r7
c0de2440:	f009 fab6 	bl	c0deb9b0 <cx_rng_no_throw>
c0de2444:	f107 0020 	add.w	r0, r7, #32
c0de2448:	4631      	mov	r1, r6
c0de244a:	2220      	movs	r2, #32
c0de244c:	f00a f80c 	bl	c0dec468 <__aeabi_memcpy>
c0de2450:	6829      	ldr	r1, [r5, #0]
c0de2452:	4668      	mov	r0, sp
c0de2454:	f009 fd3c 	bl	c0debed0 <cx_bn_alloc>
c0de2458:	b978      	cbnz	r0, c0de247a <zkn_frost_nonce_generate+0x4a>
c0de245a:	68aa      	ldr	r2, [r5, #8]
c0de245c:	9b00      	ldr	r3, [sp, #0]
c0de245e:	a801      	add	r0, sp, #4
c0de2460:	2140      	movs	r1, #64	@ 0x40
c0de2462:	f001 f9a5 	bl	c0de37b0 <Babyfrost_H3>
c0de2466:	b940      	cbnz	r0, c0de247a <zkn_frost_nonce_generate+0x4a>
c0de2468:	682a      	ldr	r2, [r5, #0]
c0de246a:	9800      	ldr	r0, [sp, #0]
c0de246c:	4621      	mov	r1, r4
c0de246e:	f009 fd79 	bl	c0debf64 <cx_bn_export>
c0de2472:	b910      	cbnz	r0, c0de247a <zkn_frost_nonce_generate+0x4a>
c0de2474:	4668      	mov	r0, sp
c0de2476:	f009 fd41 	bl	c0debefc <cx_bn_destroy>
c0de247a:	b011      	add	sp, #68	@ 0x44
c0de247c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de247e <zkn_frost_commit>:
c0de247e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2482:	461d      	mov	r5, r3
c0de2484:	4617      	mov	r7, r2
c0de2486:	460e      	mov	r6, r1
c0de2488:	4604      	mov	r4, r0
c0de248a:	f7ff ffd1 	bl	c0de2430 <zkn_frost_nonce_generate>
c0de248e:	b9f8      	cbnz	r0, c0de24d0 <zkn_frost_commit+0x52>
c0de2490:	f107 0a20 	add.w	sl, r7, #32
c0de2494:	4620      	mov	r0, r4
c0de2496:	4631      	mov	r1, r6
c0de2498:	4652      	mov	r2, sl
c0de249a:	f7ff ffc9 	bl	c0de2430 <zkn_frost_nonce_generate>
c0de249e:	b9b8      	cbnz	r0, c0de24d0 <zkn_frost_commit+0x52>
c0de24a0:	46a0      	mov	r8, r4
c0de24a2:	4620      	mov	r0, r4
c0de24a4:	463a      	mov	r2, r7
c0de24a6:	f858 3b0c 	ldr.w	r3, [r8], #12
c0de24aa:	9500      	str	r5, [sp, #0]
c0de24ac:	4641      	mov	r1, r8
c0de24ae:	f000 fec9 	bl	c0de3244 <tEdwards_scalarMul>
c0de24b2:	b968      	cbnz	r0, c0de24d0 <zkn_frost_commit+0x52>
c0de24b4:	4620      	mov	r0, r4
c0de24b6:	4629      	mov	r1, r5
c0de24b8:	f000 fdff 	bl	c0de30ba <tEdwards_normalize>
c0de24bc:	b940      	cbnz	r0, c0de24d0 <zkn_frost_commit+0x52>
c0de24be:	6823      	ldr	r3, [r4, #0]
c0de24c0:	350c      	adds	r5, #12
c0de24c2:	4620      	mov	r0, r4
c0de24c4:	4641      	mov	r1, r8
c0de24c6:	4652      	mov	r2, sl
c0de24c8:	9500      	str	r5, [sp, #0]
c0de24ca:	f000 febb 	bl	c0de3244 <tEdwards_scalarMul>
c0de24ce:	b108      	cbz	r0, c0de24d4 <zkn_frost_commit+0x56>
c0de24d0:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de24d4:	4620      	mov	r0, r4
c0de24d6:	4629      	mov	r1, r5
c0de24d8:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de24dc:	f000 bded 	b.w	c0de30ba <tEdwards_normalize>

c0de24e0 <zkn_encode_group_commitmentHash>:
c0de24e0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de24e4:	b0d6      	sub	sp, #344	@ 0x158
c0de24e6:	4606      	mov	r6, r0
c0de24e8:	a816      	add	r0, sp, #88	@ 0x58
c0de24ea:	461c      	mov	r4, r3
c0de24ec:	4615      	mov	r5, r2
c0de24ee:	460f      	mov	r7, r1
c0de24f0:	f001 f9be 	bl	c0de3870 <zkn_frost_H5_init>
c0de24f4:	b110      	cbz	r0, c0de24fc <zkn_encode_group_commitmentHash+0x1c>
c0de24f6:	b056      	add	sp, #344	@ 0x158
c0de24f8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de24fc:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de2500:	9401      	str	r4, [sp, #4]
c0de2502:	a806      	add	r0, sp, #24
c0de2504:	f04f 0a00 	mov.w	sl, #0
c0de2508:	f04f 0b02 	mov.w	fp, #2
c0de250c:	2604      	movs	r6, #4
c0de250e:	2400      	movs	r4, #0
c0de2510:	9502      	str	r5, [sp, #8]
c0de2512:	f1a0 0801 	sub.w	r8, r0, #1
c0de2516:	42ac      	cmp	r4, r5
c0de2518:	d058      	beq.n	c0de25cc <zkn_encode_group_commitmentHash+0xec>
c0de251a:	9805      	ldr	r0, [sp, #20]
c0de251c:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de2520:	9103      	str	r1, [sp, #12]
c0de2522:	6805      	ldr	r5, [r0, #0]
c0de2524:	9804      	ldr	r0, [sp, #16]
c0de2526:	fb05 000a 	mla	r0, r5, sl, r0
c0de252a:	4629      	mov	r1, r5
c0de252c:	b129      	cbz	r1, c0de253a <zkn_encode_group_commitmentHash+0x5a>
c0de252e:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de2532:	f808 2001 	strb.w	r2, [r8, r1]
c0de2536:	3901      	subs	r1, #1
c0de2538:	e7f8      	b.n	c0de252c <zkn_encode_group_commitmentHash+0x4c>
c0de253a:	a816      	add	r0, sp, #88	@ 0x58
c0de253c:	a906      	add	r1, sp, #24
c0de253e:	462a      	mov	r2, r5
c0de2540:	f001 f9b0 	bl	c0de38a4 <zkn_frost_hash_update>
c0de2544:	2800      	cmp	r0, #0
c0de2546:	d1d6      	bne.n	c0de24f6 <zkn_encode_group_commitmentHash+0x16>
c0de2548:	9803      	ldr	r0, [sp, #12]
c0de254a:	9f04      	ldr	r7, [sp, #16]
c0de254c:	1c43      	adds	r3, r0, #1
c0de254e:	9805      	ldr	r0, [sp, #20]
c0de2550:	fb05 710b 	mla	r1, r5, fp, r7
c0de2554:	6802      	ldr	r2, [r0, #0]
c0de2556:	1e50      	subs	r0, r2, #1
c0de2558:	4615      	mov	r5, r2
c0de255a:	fb02 0303 	mla	r3, r2, r3, r0
c0de255e:	5cfb      	ldrb	r3, [r7, r3]
c0de2560:	b12d      	cbz	r5, c0de256e <zkn_encode_group_commitmentHash+0x8e>
c0de2562:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de2566:	f808 7005 	strb.w	r7, [r8, r5]
c0de256a:	3d01      	subs	r5, #1
c0de256c:	e7f8      	b.n	c0de2560 <zkn_encode_group_commitmentHash+0x80>
c0de256e:	a906      	add	r1, sp, #24
c0de2570:	5c0d      	ldrb	r5, [r1, r0]
c0de2572:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de2576:	540b      	strb	r3, [r1, r0]
c0de2578:	a816      	add	r0, sp, #88	@ 0x58
c0de257a:	f001 f993 	bl	c0de38a4 <zkn_frost_hash_update>
c0de257e:	2800      	cmp	r0, #0
c0de2580:	d1b9      	bne.n	c0de24f6 <zkn_encode_group_commitmentHash+0x16>
c0de2582:	9805      	ldr	r0, [sp, #20]
c0de2584:	9d04      	ldr	r5, [sp, #16]
c0de2586:	6802      	ldr	r2, [r0, #0]
c0de2588:	9803      	ldr	r0, [sp, #12]
c0de258a:	1cc3      	adds	r3, r0, #3
c0de258c:	1e50      	subs	r0, r2, #1
c0de258e:	fb02 5106 	mla	r1, r2, r6, r5
c0de2592:	fb02 0303 	mla	r3, r2, r3, r0
c0de2596:	5ceb      	ldrb	r3, [r5, r3]
c0de2598:	4615      	mov	r5, r2
c0de259a:	b12d      	cbz	r5, c0de25a8 <zkn_encode_group_commitmentHash+0xc8>
c0de259c:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de25a0:	f808 7005 	strb.w	r7, [r8, r5]
c0de25a4:	3d01      	subs	r5, #1
c0de25a6:	e7f8      	b.n	c0de259a <zkn_encode_group_commitmentHash+0xba>
c0de25a8:	a906      	add	r1, sp, #24
c0de25aa:	5c0d      	ldrb	r5, [r1, r0]
c0de25ac:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de25b0:	540b      	strb	r3, [r1, r0]
c0de25b2:	a816      	add	r0, sp, #88	@ 0x58
c0de25b4:	f001 f976 	bl	c0de38a4 <zkn_frost_hash_update>
c0de25b8:	3605      	adds	r6, #5
c0de25ba:	3401      	adds	r4, #1
c0de25bc:	9d02      	ldr	r5, [sp, #8]
c0de25be:	f10b 0b05 	add.w	fp, fp, #5
c0de25c2:	f10a 0a05 	add.w	sl, sl, #5
c0de25c6:	2800      	cmp	r0, #0
c0de25c8:	d0a5      	beq.n	c0de2516 <zkn_encode_group_commitmentHash+0x36>
c0de25ca:	e794      	b.n	c0de24f6 <zkn_encode_group_commitmentHash+0x16>
c0de25cc:	9805      	ldr	r0, [sp, #20]
c0de25ce:	6881      	ldr	r1, [r0, #8]
c0de25d0:	a816      	add	r0, sp, #88	@ 0x58
c0de25d2:	9a01      	ldr	r2, [sp, #4]
c0de25d4:	f001 f968 	bl	c0de38a8 <zkn_frost_hash_final>
c0de25d8:	e78d      	b.n	c0de24f6 <zkn_encode_group_commitmentHash+0x16>

c0de25da <zkn_compute_group_commitment>:
c0de25da:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de25de:	b088      	sub	sp, #32
c0de25e0:	460d      	mov	r5, r1
c0de25e2:	a905      	add	r1, sp, #20
c0de25e4:	461f      	mov	r7, r3
c0de25e6:	4693      	mov	fp, r2
c0de25e8:	4604      	mov	r4, r0
c0de25ea:	f000 fa35 	bl	c0de2a58 <tEdwards_alloc>
c0de25ee:	b948      	cbnz	r0, c0de2604 <zkn_compute_group_commitment+0x2a>
c0de25f0:	a902      	add	r1, sp, #8
c0de25f2:	4620      	mov	r0, r4
c0de25f4:	f000 fa30 	bl	c0de2a58 <tEdwards_alloc>
c0de25f8:	b920      	cbnz	r0, c0de2604 <zkn_compute_group_commitment+0x2a>
c0de25fa:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de25fc:	4620      	mov	r0, r4
c0de25fe:	f000 fd23 	bl	c0de3048 <tEdwards_SetNeutral>
c0de2602:	b110      	cbz	r0, c0de260a <zkn_compute_group_commitment+0x30>
c0de2604:	b008      	add	sp, #32
c0de2606:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de260a:	ae05      	add	r6, sp, #20
c0de260c:	f04f 0800 	mov.w	r8, #0
c0de2610:	f04f 0a04 	mov.w	sl, #4
c0de2614:	9501      	str	r5, [sp, #4]
c0de2616:	4547      	cmp	r7, r8
c0de2618:	d041      	beq.n	c0de269e <zkn_compute_group_commitment+0xc4>
c0de261a:	6822      	ldr	r2, [r4, #0]
c0de261c:	f1aa 0003 	sub.w	r0, sl, #3
c0de2620:	4633      	mov	r3, r6
c0de2622:	fb02 5100 	mla	r1, r2, r0, r5
c0de2626:	f1aa 0002 	sub.w	r0, sl, #2
c0de262a:	fb02 5200 	mla	r2, r2, r0, r5
c0de262e:	4620      	mov	r0, r4
c0de2630:	f000 fc82 	bl	c0de2f38 <tEdwards_init>
c0de2634:	2800      	cmp	r0, #0
c0de2636:	d1e5      	bne.n	c0de2604 <zkn_compute_group_commitment+0x2a>
c0de2638:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de263a:	4620      	mov	r0, r4
c0de263c:	4632      	mov	r2, r6
c0de263e:	460b      	mov	r3, r1
c0de2640:	f000 fa9b 	bl	c0de2b7a <tEdwards_add>
c0de2644:	2800      	cmp	r0, #0
c0de2646:	d1dd      	bne.n	c0de2604 <zkn_compute_group_commitment+0x2a>
c0de2648:	6822      	ldr	r2, [r4, #0]
c0de264a:	f1aa 0001 	sub.w	r0, sl, #1
c0de264e:	4633      	mov	r3, r6
c0de2650:	fb02 5100 	mla	r1, r2, r0, r5
c0de2654:	fb02 520a 	mla	r2, r2, sl, r5
c0de2658:	4620      	mov	r0, r4
c0de265a:	f000 fc6d 	bl	c0de2f38 <tEdwards_init>
c0de265e:	2800      	cmp	r0, #0
c0de2660:	d1d0      	bne.n	c0de2604 <zkn_compute_group_commitment+0x2a>
c0de2662:	6823      	ldr	r3, [r4, #0]
c0de2664:	4658      	mov	r0, fp
c0de2666:	f10d 0b08 	add.w	fp, sp, #8
c0de266a:	4631      	mov	r1, r6
c0de266c:	4605      	mov	r5, r0
c0de266e:	f8cd b000 	str.w	fp, [sp]
c0de2672:	fb03 0208 	mla	r2, r3, r8, r0
c0de2676:	4620      	mov	r0, r4
c0de2678:	f000 fde4 	bl	c0de3244 <tEdwards_scalarMul>
c0de267c:	2800      	cmp	r0, #0
c0de267e:	d1c1      	bne.n	c0de2604 <zkn_compute_group_commitment+0x2a>
c0de2680:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2682:	4620      	mov	r0, r4
c0de2684:	465a      	mov	r2, fp
c0de2686:	460b      	mov	r3, r1
c0de2688:	f000 fa77 	bl	c0de2b7a <tEdwards_add>
c0de268c:	46ab      	mov	fp, r5
c0de268e:	9d01      	ldr	r5, [sp, #4]
c0de2690:	f10a 0a05 	add.w	sl, sl, #5
c0de2694:	f108 0801 	add.w	r8, r8, #1
c0de2698:	2800      	cmp	r0, #0
c0de269a:	d0bc      	beq.n	c0de2616 <zkn_compute_group_commitment+0x3c>
c0de269c:	e7b2      	b.n	c0de2604 <zkn_compute_group_commitment+0x2a>
c0de269e:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de26a0:	4620      	mov	r0, r4
c0de26a2:	f000 fd0a 	bl	c0de30ba <tEdwards_normalize>
c0de26a6:	2800      	cmp	r0, #0
c0de26a8:	d1ac      	bne.n	c0de2604 <zkn_compute_group_commitment+0x2a>
c0de26aa:	a905      	add	r1, sp, #20
c0de26ac:	f000 f9d1 	bl	c0de2a52 <OUTLINED_FUNCTION_6>
c0de26b0:	2800      	cmp	r0, #0
c0de26b2:	d1a7      	bne.n	c0de2604 <zkn_compute_group_commitment+0x2a>
c0de26b4:	a902      	add	r1, sp, #8
c0de26b6:	f000 f9cc 	bl	c0de2a52 <OUTLINED_FUNCTION_6>
c0de26ba:	e7a3      	b.n	c0de2604 <zkn_compute_group_commitment+0x2a>

c0de26bc <zkn_compute_binding_factors>:
c0de26bc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de26c0:	b0f4      	sub	sp, #464	@ 0x1d0
c0de26c2:	460e      	mov	r6, r1
c0de26c4:	6801      	ldr	r1, [r0, #0]
c0de26c6:	4607      	mov	r7, r0
c0de26c8:	a873      	add	r0, sp, #460	@ 0x1cc
c0de26ca:	f000 f9b9 	bl	c0de2a40 <OUTLINED_FUNCTION_4>
c0de26ce:	b9f0      	cbnz	r0, c0de270e <zkn_compute_binding_factors+0x52>
c0de26d0:	6839      	ldr	r1, [r7, #0]
c0de26d2:	a872      	add	r0, sp, #456	@ 0x1c8
c0de26d4:	f009 fbfc 	bl	c0debed0 <cx_bn_alloc>
c0de26d8:	b9c8      	cbnz	r0, c0de270e <zkn_compute_binding_factors+0x52>
c0de26da:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de26de:	68ba      	ldr	r2, [r7, #8]
c0de26e0:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de26e2:	f001 f879 	bl	c0de37d8 <Babyfrost_H4>
c0de26e6:	b990      	cbnz	r0, c0de270e <zkn_compute_binding_factors+0x52>
c0de26e8:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de26ea:	4638      	mov	r0, r7
c0de26ec:	4629      	mov	r1, r5
c0de26ee:	4622      	mov	r2, r4
c0de26f0:	f7ff fef6 	bl	c0de24e0 <zkn_encode_group_commitmentHash>
c0de26f4:	b958      	cbnz	r0, c0de270e <zkn_compute_binding_factors+0x52>
c0de26f6:	683a      	ldr	r2, [r7, #0]
c0de26f8:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de26fa:	a912      	add	r1, sp, #72	@ 0x48
c0de26fc:	f009 fc32 	bl	c0debf64 <cx_bn_export>
c0de2700:	b928      	cbnz	r0, c0de270e <zkn_compute_binding_factors+0x52>
c0de2702:	683a      	ldr	r2, [r7, #0]
c0de2704:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de2706:	a902      	add	r1, sp, #8
c0de2708:	f009 fc2c 	bl	c0debf64 <cx_bn_export>
c0de270c:	b110      	cbz	r0, c0de2714 <zkn_compute_binding_factors+0x58>
c0de270e:	b074      	add	sp, #464	@ 0x1d0
c0de2710:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2714:	2000      	movs	r0, #0
c0de2716:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de271a:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de271e:	f04f 0800 	mov.w	r8, #0
c0de2722:	9000      	str	r0, [sp, #0]
c0de2724:	4544      	cmp	r4, r8
c0de2726:	d043      	beq.n	c0de27b0 <zkn_compute_binding_factors+0xf4>
c0de2728:	6839      	ldr	r1, [r7, #0]
c0de272a:	a801      	add	r0, sp, #4
c0de272c:	f009 fbd0 	bl	c0debed0 <cx_bn_alloc>
c0de2730:	2800      	cmp	r0, #0
c0de2732:	d1ec      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de2734:	4650      	mov	r0, sl
c0de2736:	f001 f881 	bl	c0de383c <zkn_frost_H1_init>
c0de273a:	2800      	cmp	r0, #0
c0de273c:	d1e7      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de273e:	6839      	ldr	r1, [r7, #0]
c0de2740:	4630      	mov	r0, r6
c0de2742:	465a      	mov	r2, fp
c0de2744:	f000 f966 	bl	c0de2a14 <OUTLINED_FUNCTION_0>
c0de2748:	2800      	cmp	r0, #0
c0de274a:	d1e0      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de274c:	6839      	ldr	r1, [r7, #0]
c0de274e:	a812      	add	r0, sp, #72	@ 0x48
c0de2750:	465a      	mov	r2, fp
c0de2752:	f000 f95f 	bl	c0de2a14 <OUTLINED_FUNCTION_0>
c0de2756:	2800      	cmp	r0, #0
c0de2758:	d1d9      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de275a:	6839      	ldr	r1, [r7, #0]
c0de275c:	a802      	add	r0, sp, #8
c0de275e:	465a      	mov	r2, fp
c0de2760:	f000 f958 	bl	c0de2a14 <OUTLINED_FUNCTION_0>
c0de2764:	2800      	cmp	r0, #0
c0de2766:	d1d2      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de2768:	6839      	ldr	r1, [r7, #0]
c0de276a:	9800      	ldr	r0, [sp, #0]
c0de276c:	465a      	mov	r2, fp
c0de276e:	fb00 5001 	mla	r0, r0, r1, r5
c0de2772:	f000 f94f 	bl	c0de2a14 <OUTLINED_FUNCTION_0>
c0de2776:	2800      	cmp	r0, #0
c0de2778:	d1c9      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de277a:	68b9      	ldr	r1, [r7, #8]
c0de277c:	9a01      	ldr	r2, [sp, #4]
c0de277e:	4650      	mov	r0, sl
c0de2780:	f001 f892 	bl	c0de38a8 <zkn_frost_hash_final>
c0de2784:	2800      	cmp	r0, #0
c0de2786:	d1c2      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de2788:	683a      	ldr	r2, [r7, #0]
c0de278a:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de278c:	fb02 0108 	mla	r1, r2, r8, r0
c0de2790:	9801      	ldr	r0, [sp, #4]
c0de2792:	f009 fbe7 	bl	c0debf64 <cx_bn_export>
c0de2796:	2800      	cmp	r0, #0
c0de2798:	d1b9      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de279a:	a801      	add	r0, sp, #4
c0de279c:	f009 fbae 	bl	c0debefc <cx_bn_destroy>
c0de27a0:	2800      	cmp	r0, #0
c0de27a2:	d1b4      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de27a4:	9800      	ldr	r0, [sp, #0]
c0de27a6:	f108 0801 	add.w	r8, r8, #1
c0de27aa:	3005      	adds	r0, #5
c0de27ac:	9000      	str	r0, [sp, #0]
c0de27ae:	e7b9      	b.n	c0de2724 <zkn_compute_binding_factors+0x68>
c0de27b0:	a873      	add	r0, sp, #460	@ 0x1cc
c0de27b2:	f009 fba3 	bl	c0debefc <cx_bn_destroy>
c0de27b6:	2800      	cmp	r0, #0
c0de27b8:	d1a9      	bne.n	c0de270e <zkn_compute_binding_factors+0x52>
c0de27ba:	a872      	add	r0, sp, #456	@ 0x1c8
c0de27bc:	f009 fb9e 	bl	c0debefc <cx_bn_destroy>
c0de27c0:	e7a5      	b.n	c0de270e <zkn_compute_binding_factors+0x52>

c0de27c2 <zkn_serialize_scalar_for_hash>:
c0de27c2:	3a01      	subs	r2, #1
c0de27c4:	b121      	cbz	r1, c0de27d0 <zkn_serialize_scalar_for_hash+0xe>
c0de27c6:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de27ca:	5453      	strb	r3, [r2, r1]
c0de27cc:	3901      	subs	r1, #1
c0de27ce:	e7f9      	b.n	c0de27c4 <zkn_serialize_scalar_for_hash+0x2>
c0de27d0:	4770      	bx	lr
	...

c0de27d4 <compute_challenge>:
c0de27d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de27d8:	b0bc      	sub	sp, #240	@ 0xf0
c0de27da:	4606      	mov	r6, r0
c0de27dc:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de27de:	2820      	cmp	r0, #32
c0de27e0:	d14b      	bne.n	c0de287a <compute_challenge+0xa6>
c0de27e2:	4630      	mov	r0, r6
c0de27e4:	461f      	mov	r7, r3
c0de27e6:	4614      	mov	r4, r2
c0de27e8:	460d      	mov	r5, r1
c0de27ea:	f000 fbe4 	bl	c0de2fb6 <tEdwards_Curve_partial_destroy>
c0de27ee:	2800      	cmp	r0, #0
c0de27f0:	d144      	bne.n	c0de287c <compute_challenge+0xa8>
c0de27f2:	f106 0820 	add.w	r8, r6, #32
c0de27f6:	4668      	mov	r0, sp
c0de27f8:	2105      	movs	r1, #5
c0de27fa:	2205      	movs	r2, #5
c0de27fc:	4643      	mov	r3, r8
c0de27fe:	f000 fe47 	bl	c0de3490 <Poseidon_alloc_init>
c0de2802:	bbd8      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de2804:	6829      	ldr	r1, [r5, #0]
c0de2806:	9807      	ldr	r0, [sp, #28]
c0de2808:	f009 fb98 	bl	c0debf3c <cx_bn_copy>
c0de280c:	bbb0      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de280e:	6869      	ldr	r1, [r5, #4]
c0de2810:	9808      	ldr	r0, [sp, #32]
c0de2812:	f009 fb93 	bl	c0debf3c <cx_bn_copy>
c0de2816:	bb88      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de2818:	6832      	ldr	r2, [r6, #0]
c0de281a:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de281c:	4621      	mov	r1, r4
c0de281e:	f009 fb81 	bl	c0debf24 <cx_bn_init>
c0de2822:	bb58      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de2824:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de2826:	f000 f907 	bl	c0de2a38 <OUTLINED_FUNCTION_3>
c0de282a:	bb38      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de282c:	6832      	ldr	r2, [r6, #0]
c0de282e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2830:	f104 0120 	add.w	r1, r4, #32
c0de2834:	f009 fb76 	bl	c0debf24 <cx_bn_init>
c0de2838:	bb00      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de283a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de283c:	f000 f8fc 	bl	c0de2a38 <OUTLINED_FUNCTION_3>
c0de2840:	b9e0      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de2842:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2844:	4639      	mov	r1, r7
c0de2846:	2220      	movs	r2, #32
c0de2848:	f009 fb6c 	bl	c0debf24 <cx_bn_init>
c0de284c:	b9b0      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de284e:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2850:	f000 f8f2 	bl	c0de2a38 <OUTLINED_FUNCTION_3>
c0de2854:	b990      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de2856:	4630      	mov	r0, r6
c0de2858:	4629      	mov	r1, r5
c0de285a:	f000 f912 	bl	c0de2a82 <tEdwards_destroy>
c0de285e:	b968      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de2860:	4668      	mov	r0, sp
c0de2862:	aa43      	add	r2, sp, #268	@ 0x10c
c0de2864:	2100      	movs	r1, #0
c0de2866:	2301      	movs	r3, #1
c0de2868:	f000 fe78 	bl	c0de355c <Poseidon>
c0de286c:	b930      	cbnz	r0, c0de287c <compute_challenge+0xa8>
c0de286e:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de2870:	4642      	mov	r2, r8
c0de2872:	4601      	mov	r1, r0
c0de2874:	f009 fc0c 	bl	c0dec090 <cx_mont_from_montgomery>
c0de2878:	e000      	b.n	c0de287c <compute_challenge+0xa8>
c0de287a:	4802      	ldr	r0, [pc, #8]	@ (c0de2884 <compute_challenge+0xb0>)
c0de287c:	b03c      	add	sp, #240	@ 0xf0
c0de287e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2882:	bf00      	nop
c0de2884:	5a4b4e03 	.word	0x5a4b4e03

c0de2888 <zkn_partial_sig>:
c0de2888:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de288c:	b0c2      	sub	sp, #264	@ 0x108
c0de288e:	4680      	mov	r8, r0
c0de2890:	7fd8      	ldrb	r0, [r3, #31]
c0de2892:	e9dd a64e 	ldrd	sl, r6, [sp, #312]	@ 0x138
c0de2896:	9f4c      	ldr	r7, [sp, #304]	@ 0x130
c0de2898:	e9cd 1204 	strd	r1, r2, [sp, #16]
c0de289c:	469b      	mov	fp, r3
c0de289e:	ab16      	add	r3, sp, #88	@ 0x58
c0de28a0:	2100      	movs	r1, #0
c0de28a2:	221f      	movs	r2, #31
c0de28a4:	ac1e      	add	r4, sp, #120	@ 0x78
c0de28a6:	f000 0001 	and.w	r0, r0, #1
c0de28aa:	2920      	cmp	r1, #32
c0de28ac:	d00f      	beq.n	c0de28ce <zkn_partial_sig+0x46>
c0de28ae:	eb0b 0501 	add.w	r5, fp, r1
c0de28b2:	f895 5020 	ldrb.w	r5, [r5, #32]
c0de28b6:	545d      	strb	r5, [r3, r1]
c0de28b8:	f81a 5002 	ldrb.w	r5, [sl, r2]
c0de28bc:	3a01      	subs	r2, #1
c0de28be:	5465      	strb	r5, [r4, r1]
c0de28c0:	f89d 5058 	ldrb.w	r5, [sp, #88]	@ 0x58
c0de28c4:	3101      	adds	r1, #1
c0de28c6:	4045      	eors	r5, r0
c0de28c8:	f88d 5058 	strb.w	r5, [sp, #88]	@ 0x58
c0de28cc:	e7ed      	b.n	c0de28aa <zkn_partial_sig+0x22>
c0de28ce:	a83e      	add	r0, sp, #248	@ 0xf8
c0de28d0:	f000 f8af 	bl	c0de2a32 <OUTLINED_FUNCTION_2>
c0de28d4:	2800      	cmp	r0, #0
c0de28d6:	f040 8098 	bne.w	c0de2a0a <zkn_partial_sig+0x182>
c0de28da:	ad3f      	add	r5, sp, #252	@ 0xfc
c0de28dc:	4640      	mov	r0, r8
c0de28de:	4629      	mov	r1, r5
c0de28e0:	f000 f8ba 	bl	c0de2a58 <tEdwards_alloc>
c0de28e4:	2800      	cmp	r0, #0
c0de28e6:	f040 8090 	bne.w	c0de2a0a <zkn_partial_sig+0x182>
c0de28ea:	a826      	add	r0, sp, #152	@ 0x98
c0de28ec:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de28ee:	e9cd 4600 	strd	r4, r6, [sp]
c0de28f2:	463a      	mov	r2, r7
c0de28f4:	9002      	str	r0, [sp, #8]
c0de28f6:	a916      	add	r1, sp, #88	@ 0x58
c0de28f8:	4640      	mov	r0, r8
c0de28fa:	f7ff fedf 	bl	c0de26bc <zkn_compute_binding_factors>
c0de28fe:	2800      	cmp	r0, #0
c0de2900:	f040 8083 	bne.w	c0de2a0a <zkn_partial_sig+0x182>
c0de2904:	9500      	str	r5, [sp, #0]
c0de2906:	ac26      	add	r4, sp, #152	@ 0x98
c0de2908:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de290a:	4640      	mov	r0, r8
c0de290c:	4639      	mov	r1, r7
c0de290e:	4622      	mov	r2, r4
c0de2910:	f7ff fe63 	bl	c0de25da <zkn_compute_group_commitment>
c0de2914:	2800      	cmp	r0, #0
c0de2916:	d178      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de2918:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de291a:	2120      	movs	r1, #32
c0de291c:	465a      	mov	r2, fp
c0de291e:	4653      	mov	r3, sl
c0de2920:	e9cd 1000 	strd	r1, r0, [sp]
c0de2924:	a93f      	add	r1, sp, #252	@ 0xfc
c0de2926:	4640      	mov	r0, r8
c0de2928:	f7ff ff54 	bl	c0de27d4 <compute_challenge>
c0de292c:	2800      	cmp	r0, #0
c0de292e:	d16c      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de2930:	f000 f88a 	bl	c0de2a48 <OUTLINED_FUNCTION_5>
c0de2934:	2800      	cmp	r0, #0
c0de2936:	d168      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de2938:	a80c      	add	r0, sp, #48	@ 0x30
c0de293a:	4935      	ldr	r1, [pc, #212]	@ (c0de2a10 <zkn_partial_sig+0x188>)
c0de293c:	2220      	movs	r2, #32
c0de293e:	4479      	add	r1, pc
c0de2940:	f009 fd92 	bl	c0dec468 <__aeabi_memcpy>
c0de2944:	a815      	add	r0, sp, #84	@ 0x54
c0de2946:	f000 f874 	bl	c0de2a32 <OUTLINED_FUNCTION_2>
c0de294a:	2800      	cmp	r0, #0
c0de294c:	d15d      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de294e:	a814      	add	r0, sp, #80	@ 0x50
c0de2950:	aa0c      	add	r2, sp, #48	@ 0x30
c0de2952:	f000 f86a 	bl	c0de2a2a <OUTLINED_FUNCTION_1>
c0de2956:	2800      	cmp	r0, #0
c0de2958:	d157      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de295a:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de295c:	e9dd 2014 	ldrd	r2, r0, [sp, #80]	@ 0x50
c0de2960:	f009 fb54 	bl	c0dec00c <cx_bn_reduce>
c0de2964:	2800      	cmp	r0, #0
c0de2966:	d150      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de2968:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de296a:	a80b      	add	r0, sp, #44	@ 0x2c
c0de296c:	f000 f85d 	bl	c0de2a2a <OUTLINED_FUNCTION_1>
c0de2970:	2800      	cmp	r0, #0
c0de2972:	d14a      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de2974:	9a4b      	ldr	r2, [sp, #300]	@ 0x12c
c0de2976:	a80a      	add	r0, sp, #40	@ 0x28
c0de2978:	f000 f857 	bl	c0de2a2a <OUTLINED_FUNCTION_1>
c0de297c:	2800      	cmp	r0, #0
c0de297e:	d144      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de2980:	9a50      	ldr	r2, [sp, #320]	@ 0x140
c0de2982:	a809      	add	r0, sp, #36	@ 0x24
c0de2984:	f000 f851 	bl	c0de2a2a <OUTLINED_FUNCTION_1>
c0de2988:	2800      	cmp	r0, #0
c0de298a:	d13e      	bne.n	c0de2a0a <zkn_partial_sig+0x182>
c0de298c:	a808      	add	r0, sp, #32
c0de298e:	9a05      	ldr	r2, [sp, #20]
c0de2990:	f000 f84b 	bl	c0de2a2a <OUTLINED_FUNCTION_1>
c0de2994:	bbc8      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de2996:	9804      	ldr	r0, [sp, #16]
c0de2998:	2120      	movs	r1, #32
c0de299a:	2320      	movs	r3, #32
c0de299c:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de29a0:	f1a0 0220 	sub.w	r2, r0, #32
c0de29a4:	a806      	add	r0, sp, #24
c0de29a6:	f009 fa9d 	bl	c0debee4 <cx_bn_alloc_init>
c0de29aa:	bb70      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de29ac:	a807      	add	r0, sp, #28
c0de29ae:	f000 f840 	bl	c0de2a32 <OUTLINED_FUNCTION_2>
c0de29b2:	bb50      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de29b4:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de29b6:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de29b8:	e9dd 2006 	ldrd	r2, r0, [sp, #24]
c0de29bc:	f009 fb1a 	bl	c0debff4 <cx_bn_mod_mul>
c0de29c0:	bb18      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de29c2:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de29c4:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de29c8:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de29ca:	f009 fb13 	bl	c0debff4 <cx_bn_mod_mul>
c0de29ce:	b9e0      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de29d0:	e9dd 3214 	ldrd	r3, r2, [sp, #80]	@ 0x50
c0de29d4:	e9dd 0109 	ldrd	r0, r1, [sp, #36]	@ 0x24
c0de29d8:	f009 fb0c 	bl	c0debff4 <cx_bn_mod_mul>
c0de29dc:	b9a8      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de29de:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de29e0:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de29e2:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de29e6:	f009 faed 	bl	c0debfc4 <cx_bn_mod_add>
c0de29ea:	b970      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de29ec:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de29ee:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de29f0:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de29f4:	f009 fae6 	bl	c0debfc4 <cx_bn_mod_add>
c0de29f8:	b938      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de29fa:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de29fc:	9907      	ldr	r1, [sp, #28]
c0de29fe:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2a00:	f009 fb04 	bl	c0dec00c <cx_bn_reduce>
c0de2a04:	b908      	cbnz	r0, c0de2a0a <zkn_partial_sig+0x182>
c0de2a06:	f000 f81f 	bl	c0de2a48 <OUTLINED_FUNCTION_5>
c0de2a0a:	b042      	add	sp, #264	@ 0x108
c0de2a0c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2a10:	0000ba9e 	.word	0x0000ba9e

c0de2a14 <OUTLINED_FUNCTION_0>:
c0de2a14:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2a18:	f7ff fed3 	bl	c0de27c2 <zkn_serialize_scalar_for_hash>
c0de2a1c:	683a      	ldr	r2, [r7, #0]
c0de2a1e:	4650      	mov	r0, sl
c0de2a20:	4659      	mov	r1, fp
c0de2a22:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2a26:	f000 bf3d 	b.w	c0de38a4 <zkn_frost_hash_update>

c0de2a2a <OUTLINED_FUNCTION_1>:
c0de2a2a:	2120      	movs	r1, #32
c0de2a2c:	2320      	movs	r3, #32
c0de2a2e:	f009 ba59 	b.w	c0debee4 <cx_bn_alloc_init>

c0de2a32 <OUTLINED_FUNCTION_2>:
c0de2a32:	2120      	movs	r1, #32
c0de2a34:	f009 ba4c 	b.w	c0debed0 <cx_bn_alloc>

c0de2a38 <OUTLINED_FUNCTION_3>:
c0de2a38:	4642      	mov	r2, r8
c0de2a3a:	4601      	mov	r1, r0
c0de2a3c:	f009 bb1c 	b.w	c0dec078 <cx_mont_to_montgomery>

c0de2a40 <OUTLINED_FUNCTION_4>:
c0de2a40:	461c      	mov	r4, r3
c0de2a42:	4615      	mov	r5, r2
c0de2a44:	f009 ba44 	b.w	c0debed0 <cx_bn_alloc>

c0de2a48 <OUTLINED_FUNCTION_5>:
c0de2a48:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2a4a:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de2a4c:	2220      	movs	r2, #32
c0de2a4e:	f009 ba89 	b.w	c0debf64 <cx_bn_export>

c0de2a52 <OUTLINED_FUNCTION_6>:
c0de2a52:	4620      	mov	r0, r4
c0de2a54:	f000 b815 	b.w	c0de2a82 <tEdwards_destroy>

c0de2a58 <tEdwards_alloc>:
c0de2a58:	b5b0      	push	{r4, r5, r7, lr}
c0de2a5a:	460d      	mov	r5, r1
c0de2a5c:	6801      	ldr	r1, [r0, #0]
c0de2a5e:	4604      	mov	r4, r0
c0de2a60:	4628      	mov	r0, r5
c0de2a62:	f009 fa35 	bl	c0debed0 <cx_bn_alloc>
c0de2a66:	b920      	cbnz	r0, c0de2a72 <tEdwards_alloc+0x1a>
c0de2a68:	6821      	ldr	r1, [r4, #0]
c0de2a6a:	1d28      	adds	r0, r5, #4
c0de2a6c:	f009 fa30 	bl	c0debed0 <cx_bn_alloc>
c0de2a70:	b100      	cbz	r0, c0de2a74 <tEdwards_alloc+0x1c>
c0de2a72:	bdb0      	pop	{r4, r5, r7, pc}
c0de2a74:	6821      	ldr	r1, [r4, #0]
c0de2a76:	f105 0008 	add.w	r0, r5, #8
c0de2a7a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2a7e:	f009 ba27 	b.w	c0debed0 <cx_bn_alloc>

c0de2a82 <tEdwards_destroy>:
c0de2a82:	b510      	push	{r4, lr}
c0de2a84:	4608      	mov	r0, r1
c0de2a86:	460c      	mov	r4, r1
c0de2a88:	f009 fa38 	bl	c0debefc <cx_bn_destroy>
c0de2a8c:	b918      	cbnz	r0, c0de2a96 <tEdwards_destroy+0x14>
c0de2a8e:	1d20      	adds	r0, r4, #4
c0de2a90:	f009 fa34 	bl	c0debefc <cx_bn_destroy>
c0de2a94:	b100      	cbz	r0, c0de2a98 <tEdwards_destroy+0x16>
c0de2a96:	bd10      	pop	{r4, pc}
c0de2a98:	f104 0008 	add.w	r0, r4, #8
c0de2a9c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2aa0:	f009 ba2c 	b.w	c0debefc <cx_bn_destroy>

c0de2aa4 <tEdwards_double>:
c0de2aa4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2aa6:	460f      	mov	r7, r1
c0de2aa8:	4614      	mov	r4, r2
c0de2aaa:	4605      	mov	r5, r0
c0de2aac:	6843      	ldr	r3, [r0, #4]
c0de2aae:	6809      	ldr	r1, [r1, #0]
c0de2ab0:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2ab2:	687a      	ldr	r2, [r7, #4]
c0de2ab4:	f009 fa86 	bl	c0debfc4 <cx_bn_mod_add>
c0de2ab8:	2800      	cmp	r0, #0
c0de2aba:	d154      	bne.n	c0de2b66 <tEdwards_double+0xc2>
c0de2abc:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2ac0:	f105 0620 	add.w	r6, r5, #32
c0de2ac4:	f000 fbe4 	bl	c0de3290 <OUTLINED_FUNCTION_2>
c0de2ac8:	2800      	cmp	r0, #0
c0de2aca:	d14c      	bne.n	c0de2b66 <tEdwards_double+0xc2>
c0de2acc:	6839      	ldr	r1, [r7, #0]
c0de2ace:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2ad0:	f000 fbde 	bl	c0de3290 <OUTLINED_FUNCTION_2>
c0de2ad4:	2800      	cmp	r0, #0
c0de2ad6:	d146      	bne.n	c0de2b66 <tEdwards_double+0xc2>
c0de2ad8:	6879      	ldr	r1, [r7, #4]
c0de2ada:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2adc:	f000 fbd8 	bl	c0de3290 <OUTLINED_FUNCTION_2>
c0de2ae0:	2800      	cmp	r0, #0
c0de2ae2:	d140      	bne.n	c0de2b66 <tEdwards_double+0xc2>
c0de2ae4:	69a9      	ldr	r1, [r5, #24]
c0de2ae6:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2ae8:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2aea:	f000 fbcb 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de2aee:	bbd0      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2af0:	686b      	ldr	r3, [r5, #4]
c0de2af2:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2af6:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2af8:	f009 fa64 	bl	c0debfc4 <cx_bn_mod_add>
c0de2afc:	bb98      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2afe:	68b9      	ldr	r1, [r7, #8]
c0de2b00:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2b02:	f000 fbc5 	bl	c0de3290 <OUTLINED_FUNCTION_2>
c0de2b06:	bb70      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2b08:	686b      	ldr	r3, [r5, #4]
c0de2b0a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2b0c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2b0e:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2b10:	f009 fa64 	bl	c0debfdc <cx_bn_mod_sub>
c0de2b14:	bb38      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2b16:	686b      	ldr	r3, [r5, #4]
c0de2b18:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2b1a:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2b1e:	f009 fa5d 	bl	c0debfdc <cx_bn_mod_sub>
c0de2b22:	bb00      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2b24:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de2b28:	686b      	ldr	r3, [r5, #4]
c0de2b2a:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2b2c:	f009 fa56 	bl	c0debfdc <cx_bn_mod_sub>
c0de2b30:	b9c8      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2b32:	686b      	ldr	r3, [r5, #4]
c0de2b34:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2b38:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de2b3a:	f009 fa4f 	bl	c0debfdc <cx_bn_mod_sub>
c0de2b3e:	b990      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2b40:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2b42:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2b44:	6820      	ldr	r0, [r4, #0]
c0de2b46:	f000 fb9d 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de2b4a:	b960      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2b4c:	686b      	ldr	r3, [r5, #4]
c0de2b4e:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2b52:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2b54:	f009 fa42 	bl	c0debfdc <cx_bn_mod_sub>
c0de2b58:	b928      	cbnz	r0, c0de2b66 <tEdwards_double+0xc2>
c0de2b5a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2b5c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2b5e:	6860      	ldr	r0, [r4, #4]
c0de2b60:	f000 fb90 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de2b64:	b100      	cbz	r0, c0de2b68 <tEdwards_double+0xc4>
c0de2b66:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2b68:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2b6a:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2b6c:	68a0      	ldr	r0, [r4, #8]
c0de2b6e:	4633      	mov	r3, r6
c0de2b70:	b001      	add	sp, #4
c0de2b72:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2b76:	f009 ba97 	b.w	c0dec0a8 <cx_mont_mul>

c0de2b7a <tEdwards_add>:
c0de2b7a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b7e:	4606      	mov	r6, r0
c0de2b80:	4617      	mov	r7, r2
c0de2b82:	460c      	mov	r4, r1
c0de2b84:	6892      	ldr	r2, [r2, #8]
c0de2b86:	6889      	ldr	r1, [r1, #8]
c0de2b88:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2b8a:	4698      	mov	r8, r3
c0de2b8c:	f106 0520 	add.w	r5, r6, #32
c0de2b90:	f000 fb7b 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2b94:	2800      	cmp	r0, #0
c0de2b96:	d17d      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2b98:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2b9c:	462b      	mov	r3, r5
c0de2b9e:	460a      	mov	r2, r1
c0de2ba0:	f009 fa82 	bl	c0dec0a8 <cx_mont_mul>
c0de2ba4:	2800      	cmp	r0, #0
c0de2ba6:	d175      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2ba8:	683a      	ldr	r2, [r7, #0]
c0de2baa:	6821      	ldr	r1, [r4, #0]
c0de2bac:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2bae:	f000 fb6c 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2bb2:	2800      	cmp	r0, #0
c0de2bb4:	d16e      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2bb6:	687a      	ldr	r2, [r7, #4]
c0de2bb8:	6861      	ldr	r1, [r4, #4]
c0de2bba:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2bbc:	f000 fb65 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2bc0:	2800      	cmp	r0, #0
c0de2bc2:	d167      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2bc4:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2bc8:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2bca:	f000 fb5e 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2bce:	2800      	cmp	r0, #0
c0de2bd0:	d160      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2bd2:	69f2      	ldr	r2, [r6, #28]
c0de2bd4:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2bd6:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2bd8:	f000 fb57 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2bdc:	2800      	cmp	r0, #0
c0de2bde:	d159      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2be0:	6873      	ldr	r3, [r6, #4]
c0de2be2:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2be4:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2be8:	f009 f9f8 	bl	c0debfdc <cx_bn_mod_sub>
c0de2bec:	2800      	cmp	r0, #0
c0de2bee:	d151      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2bf0:	6873      	ldr	r3, [r6, #4]
c0de2bf2:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2bf4:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2bf6:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2bf8:	f009 f9e4 	bl	c0debfc4 <cx_bn_mod_add>
c0de2bfc:	2800      	cmp	r0, #0
c0de2bfe:	d149      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2c00:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2c04:	6873      	ldr	r3, [r6, #4]
c0de2c06:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2c08:	f009 f9dc 	bl	c0debfc4 <cx_bn_mod_add>
c0de2c0c:	2800      	cmp	r0, #0
c0de2c0e:	d141      	bne.n	c0de2c94 <tEdwards_add+0x11a>
c0de2c10:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2c14:	6873      	ldr	r3, [r6, #4]
c0de2c16:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2c18:	f009 f9d4 	bl	c0debfc4 <cx_bn_mod_add>
c0de2c1c:	bbd0      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c1e:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2c20:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2c24:	f000 fb31 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2c28:	bba0      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c2a:	6873      	ldr	r3, [r6, #4]
c0de2c2c:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2c30:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2c32:	f009 f9d3 	bl	c0debfdc <cx_bn_mod_sub>
c0de2c36:	bb68      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c38:	6873      	ldr	r3, [r6, #4]
c0de2c3a:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2c3c:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2c40:	f009 f9cc 	bl	c0debfdc <cx_bn_mod_sub>
c0de2c44:	bb30      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c46:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2c4a:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2c4c:	f000 fb1d 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2c50:	bb00      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c52:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2c54:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2c56:	f8d8 0000 	ldr.w	r0, [r8]
c0de2c5a:	f000 fb16 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2c5e:	b9c8      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c60:	69b1      	ldr	r1, [r6, #24]
c0de2c62:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2c66:	f000 fb10 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2c6a:	b998      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c6c:	6873      	ldr	r3, [r6, #4]
c0de2c6e:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2c70:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2c72:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2c74:	f009 f9b2 	bl	c0debfdc <cx_bn_mod_sub>
c0de2c78:	b960      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c7a:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2c7c:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2c7e:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2c80:	f000 fb03 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2c84:	b930      	cbnz	r0, c0de2c94 <tEdwards_add+0x11a>
c0de2c86:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2c8a:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2c8e:	f000 fafc 	bl	c0de328a <OUTLINED_FUNCTION_1>
c0de2c92:	b108      	cbz	r0, c0de2c98 <tEdwards_add+0x11e>
c0de2c94:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2c98:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2c9c:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2ca0:	462b      	mov	r3, r5
c0de2ca2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2ca6:	f009 b9ff 	b.w	c0dec0a8 <cx_mont_mul>

c0de2caa <tEdwards_IsOnCurve>:
c0de2caa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2cac:	4605      	mov	r5, r0
c0de2cae:	460f      	mov	r7, r1
c0de2cb0:	2005      	movs	r0, #5
c0de2cb2:	6809      	ldr	r1, [r1, #0]
c0de2cb4:	4614      	mov	r4, r2
c0de2cb6:	9000      	str	r0, [sp, #0]
c0de2cb8:	f105 0620 	add.w	r6, r5, #32
c0de2cbc:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2cbe:	460a      	mov	r2, r1
c0de2cc0:	f000 fae0 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de2cc4:	b100      	cbz	r0, c0de2cc8 <tEdwards_IsOnCurve+0x1e>
c0de2cc6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2cc8:	6879      	ldr	r1, [r7, #4]
c0de2cca:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2ccc:	f000 fae0 	bl	c0de3290 <OUTLINED_FUNCTION_2>
c0de2cd0:	2800      	cmp	r0, #0
c0de2cd2:	d1f8      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2cd4:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2cd8:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2cda:	f000 fad3 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de2cde:	2800      	cmp	r0, #0
c0de2ce0:	d1f1      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2ce2:	69a9      	ldr	r1, [r5, #24]
c0de2ce4:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2ce6:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2ce8:	f000 facc 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de2cec:	2800      	cmp	r0, #0
c0de2cee:	d1ea      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2cf0:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2cf2:	686b      	ldr	r3, [r5, #4]
c0de2cf4:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2cf6:	4601      	mov	r1, r0
c0de2cf8:	f009 f964 	bl	c0debfc4 <cx_bn_mod_add>
c0de2cfc:	2800      	cmp	r0, #0
c0de2cfe:	d1e2      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2d00:	69e9      	ldr	r1, [r5, #28]
c0de2d02:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2d04:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2d06:	f000 fabd 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de2d0a:	2800      	cmp	r0, #0
c0de2d0c:	d1db      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2d0e:	686b      	ldr	r3, [r5, #4]
c0de2d10:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2d12:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2d14:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2d16:	f009 f955 	bl	c0debfc4 <cx_bn_mod_add>
c0de2d1a:	2800      	cmp	r0, #0
c0de2d1c:	d1d3      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2d1e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2d20:	4632      	mov	r2, r6
c0de2d22:	4601      	mov	r1, r0
c0de2d24:	f009 f9b4 	bl	c0dec090 <cx_mont_from_montgomery>
c0de2d28:	2800      	cmp	r0, #0
c0de2d2a:	d1cc      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2d2c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2d2e:	4632      	mov	r2, r6
c0de2d30:	4601      	mov	r1, r0
c0de2d32:	f009 f9ad 	bl	c0dec090 <cx_mont_from_montgomery>
c0de2d36:	2800      	cmp	r0, #0
c0de2d38:	d1c5      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2d3a:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2d3e:	466a      	mov	r2, sp
c0de2d40:	f009 f91c 	bl	c0debf7c <cx_bn_cmp>
c0de2d44:	2800      	cmp	r0, #0
c0de2d46:	d1be      	bne.n	c0de2cc6 <tEdwards_IsOnCurve+0x1c>
c0de2d48:	9800      	ldr	r0, [sp, #0]
c0de2d4a:	fab0 f080 	clz	r0, r0
c0de2d4e:	0940      	lsrs	r0, r0, #5
c0de2d50:	7020      	strb	r0, [r4, #0]
c0de2d52:	2000      	movs	r0, #0
c0de2d54:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2d58 <tEdwards_Curve_alloc_init>:
c0de2d58:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2d5c:	b0d2      	sub	sp, #328	@ 0x148
c0de2d5e:	4604      	mov	r4, r0
c0de2d60:	2902      	cmp	r1, #2
c0de2d62:	d022      	beq.n	c0de2daa <tEdwards_Curve_alloc_init+0x52>
c0de2d64:	2901      	cmp	r1, #1
c0de2d66:	f040 80cd 	bne.w	c0de2f04 <tEdwards_Curve_alloc_init+0x1ac>
c0de2d6a:	2020      	movs	r0, #32
c0de2d6c:	2220      	movs	r2, #32
c0de2d6e:	6020      	str	r0, [r4, #0]
c0de2d70:	af4a      	add	r7, sp, #296	@ 0x128
c0de2d72:	4967      	ldr	r1, [pc, #412]	@ (c0de2f10 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2d74:	4638      	mov	r0, r7
c0de2d76:	4479      	add	r1, pc
c0de2d78:	f009 fb76 	bl	c0dec468 <__aeabi_memcpy>
c0de2d7c:	ae42      	add	r6, sp, #264	@ 0x108
c0de2d7e:	4965      	ldr	r1, [pc, #404]	@ (c0de2f14 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2d80:	2220      	movs	r2, #32
c0de2d82:	4630      	mov	r0, r6
c0de2d84:	4479      	add	r1, pc
c0de2d86:	f009 fb6f 	bl	c0dec468 <__aeabi_memcpy>
c0de2d8a:	4963      	ldr	r1, [pc, #396]	@ (c0de2f18 <tEdwards_Curve_alloc_init+0x1c0>)
c0de2d8c:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2d90:	2220      	movs	r2, #32
c0de2d92:	4650      	mov	r0, sl
c0de2d94:	4479      	add	r1, pc
c0de2d96:	f009 fb67 	bl	c0dec468 <__aeabi_memcpy>
c0de2d9a:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2d9c:	495f      	ldr	r1, [pc, #380]	@ (c0de2f1c <tEdwards_Curve_alloc_init+0x1c4>)
c0de2d9e:	2220      	movs	r2, #32
c0de2da0:	4628      	mov	r0, r5
c0de2da2:	4479      	add	r1, pc
c0de2da4:	f009 fb60 	bl	c0dec468 <__aeabi_memcpy>
c0de2da8:	e02d      	b.n	c0de2e06 <tEdwards_Curve_alloc_init+0xae>
c0de2daa:	2020      	movs	r0, #32
c0de2dac:	2220      	movs	r2, #32
c0de2dae:	6020      	str	r0, [r4, #0]
c0de2db0:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2db2:	495b      	ldr	r1, [pc, #364]	@ (c0de2f20 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2db4:	4638      	mov	r0, r7
c0de2db6:	4479      	add	r1, pc
c0de2db8:	f009 fb56 	bl	c0dec468 <__aeabi_memcpy>
c0de2dbc:	ae22      	add	r6, sp, #136	@ 0x88
c0de2dbe:	4959      	ldr	r1, [pc, #356]	@ (c0de2f24 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2dc0:	2220      	movs	r2, #32
c0de2dc2:	4630      	mov	r0, r6
c0de2dc4:	4479      	add	r1, pc
c0de2dc6:	f009 fb4f 	bl	c0dec468 <__aeabi_memcpy>
c0de2dca:	4957      	ldr	r1, [pc, #348]	@ (c0de2f28 <tEdwards_Curve_alloc_init+0x1d0>)
c0de2dcc:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2dd0:	2220      	movs	r2, #32
c0de2dd2:	4650      	mov	r0, sl
c0de2dd4:	4479      	add	r1, pc
c0de2dd6:	f009 fb47 	bl	c0dec468 <__aeabi_memcpy>
c0de2dda:	a812      	add	r0, sp, #72	@ 0x48
c0de2ddc:	4953      	ldr	r1, [pc, #332]	@ (c0de2f2c <tEdwards_Curve_alloc_init+0x1d4>)
c0de2dde:	2220      	movs	r2, #32
c0de2de0:	9001      	str	r0, [sp, #4]
c0de2de2:	4479      	add	r1, pc
c0de2de4:	f009 fb40 	bl	c0dec468 <__aeabi_memcpy>
c0de2de8:	4951      	ldr	r1, [pc, #324]	@ (c0de2f30 <tEdwards_Curve_alloc_init+0x1d8>)
c0de2dea:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2dee:	2220      	movs	r2, #32
c0de2df0:	4658      	mov	r0, fp
c0de2df2:	4479      	add	r1, pc
c0de2df4:	f009 fb38 	bl	c0dec468 <__aeabi_memcpy>
c0de2df8:	ad02      	add	r5, sp, #8
c0de2dfa:	494e      	ldr	r1, [pc, #312]	@ (c0de2f34 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2dfc:	2220      	movs	r2, #32
c0de2dfe:	4628      	mov	r0, r5
c0de2e00:	4479      	add	r1, pc
c0de2e02:	f009 fb31 	bl	c0dec468 <__aeabi_memcpy>
c0de2e06:	f104 0804 	add.w	r8, r4, #4
c0de2e0a:	2120      	movs	r1, #32
c0de2e0c:	463a      	mov	r2, r7
c0de2e0e:	2320      	movs	r3, #32
c0de2e10:	4640      	mov	r0, r8
c0de2e12:	f009 f867 	bl	c0debee4 <cx_bn_alloc_init>
c0de2e16:	2800      	cmp	r0, #0
c0de2e18:	d175      	bne.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e1a:	4620      	mov	r0, r4
c0de2e1c:	462a      	mov	r2, r5
c0de2e1e:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2e22:	460b      	mov	r3, r1
c0de2e24:	f009 f85e 	bl	c0debee4 <cx_bn_alloc_init>
c0de2e28:	2800      	cmp	r0, #0
c0de2e2a:	d16c      	bne.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e2c:	f104 0520 	add.w	r5, r4, #32
c0de2e30:	2120      	movs	r1, #32
c0de2e32:	4628      	mov	r0, r5
c0de2e34:	f009 f90c 	bl	c0dec050 <cx_mont_alloc>
c0de2e38:	2800      	cmp	r0, #0
c0de2e3a:	d164      	bne.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e3c:	f8d8 1000 	ldr.w	r1, [r8]
c0de2e40:	4628      	mov	r0, r5
c0de2e42:	f009 f90f 	bl	c0dec064 <cx_mont_init>
c0de2e46:	2800      	cmp	r0, #0
c0de2e48:	d15d      	bne.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e4a:	4627      	mov	r7, r4
c0de2e4c:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2e50:	4638      	mov	r0, r7
c0de2e52:	f009 f83d 	bl	c0debed0 <cx_bn_alloc>
c0de2e56:	2800      	cmp	r0, #0
c0de2e58:	d155      	bne.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e5a:	6838      	ldr	r0, [r7, #0]
c0de2e5c:	2101      	movs	r1, #1
c0de2e5e:	f009 f877 	bl	c0debf50 <cx_bn_set_u32>
c0de2e62:	2800      	cmp	r0, #0
c0de2e64:	d14f      	bne.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e66:	6838      	ldr	r0, [r7, #0]
c0de2e68:	f000 fa16 	bl	c0de3298 <OUTLINED_FUNCTION_3>
c0de2e6c:	2800      	cmp	r0, #0
c0de2e6e:	d14a      	bne.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e70:	f104 070c 	add.w	r7, r4, #12
c0de2e74:	4620      	mov	r0, r4
c0de2e76:	4639      	mov	r1, r7
c0de2e78:	f7ff fdee 	bl	c0de2a58 <tEdwards_alloc>
c0de2e7c:	2800      	cmp	r0, #0
c0de2e7e:	d142      	bne.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e80:	9901      	ldr	r1, [sp, #4]
c0de2e82:	4620      	mov	r0, r4
c0de2e84:	465a      	mov	r2, fp
c0de2e86:	463b      	mov	r3, r7
c0de2e88:	f000 f856 	bl	c0de2f38 <tEdwards_init>
c0de2e8c:	bbd8      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2e8e:	4627      	mov	r7, r4
c0de2e90:	4632      	mov	r2, r6
c0de2e92:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2e96:	4638      	mov	r0, r7
c0de2e98:	460b      	mov	r3, r1
c0de2e9a:	f009 f823 	bl	c0debee4 <cx_bn_alloc_init>
c0de2e9e:	bb90      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ea0:	6838      	ldr	r0, [r7, #0]
c0de2ea2:	f000 f9f9 	bl	c0de3298 <OUTLINED_FUNCTION_3>
c0de2ea6:	bb70      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ea8:	4626      	mov	r6, r4
c0de2eaa:	4652      	mov	r2, sl
c0de2eac:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2eb0:	4630      	mov	r0, r6
c0de2eb2:	460b      	mov	r3, r1
c0de2eb4:	f009 f816 	bl	c0debee4 <cx_bn_alloc_init>
c0de2eb8:	bb28      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2eba:	6830      	ldr	r0, [r6, #0]
c0de2ebc:	f000 f9ec 	bl	c0de3298 <OUTLINED_FUNCTION_3>
c0de2ec0:	bb08      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ec2:	4620      	mov	r0, r4
c0de2ec4:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2ec8:	f009 f802 	bl	c0debed0 <cx_bn_alloc>
c0de2ecc:	b9d8      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ece:	f000 f9fb 	bl	c0de32c8 <OUTLINED_FUNCTION_8>
c0de2ed2:	b9c0      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ed4:	f000 f9e4 	bl	c0de32a0 <OUTLINED_FUNCTION_4>
c0de2ed8:	b9a8      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2eda:	f000 f9f0 	bl	c0de32be <OUTLINED_FUNCTION_7>
c0de2ede:	b990      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ee0:	f000 f9fc 	bl	c0de32dc <OUTLINED_FUNCTION_10>
c0de2ee4:	b978      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ee6:	f000 f9e5 	bl	c0de32b4 <OUTLINED_FUNCTION_6>
c0de2eea:	b960      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2eec:	f000 f9f1 	bl	c0de32d2 <OUTLINED_FUNCTION_9>
c0de2ef0:	b948      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ef2:	f000 f9da 	bl	c0de32aa <OUTLINED_FUNCTION_5>
c0de2ef6:	b930      	cbnz	r0, c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ef8:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de2efc:	4620      	mov	r0, r4
c0de2efe:	f008 ffe7 	bl	c0debed0 <cx_bn_alloc>
c0de2f02:	e000      	b.n	c0de2f06 <tEdwards_Curve_alloc_init+0x1ae>
c0de2f04:	4801      	ldr	r0, [pc, #4]	@ (c0de2f0c <tEdwards_Curve_alloc_init+0x1b4>)
c0de2f06:	b052      	add	sp, #328	@ 0x148
c0de2f08:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2f0c:	5a4b4e01 	.word	0x5a4b4e01
c0de2f10:	0000b546 	.word	0x0000b546
c0de2f14:	0000b778 	.word	0x0000b778
c0de2f18:	0000b728 	.word	0x0000b728
c0de2f1c:	0000b61a 	.word	0x0000b61a
c0de2f20:	0000b786 	.word	0x0000b786
c0de2f24:	0000b6d8 	.word	0x0000b6d8
c0de2f28:	0000b748 	.word	0x0000b748
c0de2f2c:	0000b77a 	.word	0x0000b77a
c0de2f30:	0000b78a 	.word	0x0000b78a
c0de2f34:	0000b5dc 	.word	0x0000b5dc

c0de2f38 <tEdwards_init>:
c0de2f38:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de2f3a:	6806      	ldr	r6, [r0, #0]
c0de2f3c:	461c      	mov	r4, r3
c0de2f3e:	4617      	mov	r7, r2
c0de2f40:	460a      	mov	r2, r1
c0de2f42:	4605      	mov	r5, r0
c0de2f44:	a802      	add	r0, sp, #8
c0de2f46:	4631      	mov	r1, r6
c0de2f48:	4633      	mov	r3, r6
c0de2f4a:	f008 ffcb 	bl	c0debee4 <cx_bn_alloc_init>
c0de2f4e:	b100      	cbz	r0, c0de2f52 <tEdwards_init+0x1a>
c0de2f50:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2f52:	a801      	add	r0, sp, #4
c0de2f54:	4631      	mov	r1, r6
c0de2f56:	463a      	mov	r2, r7
c0de2f58:	4633      	mov	r3, r6
c0de2f5a:	f008 ffc3 	bl	c0debee4 <cx_bn_alloc_init>
c0de2f5e:	2800      	cmp	r0, #0
c0de2f60:	d1f6      	bne.n	c0de2f50 <tEdwards_init+0x18>
c0de2f62:	4668      	mov	r0, sp
c0de2f64:	4631      	mov	r1, r6
c0de2f66:	f008 ffb3 	bl	c0debed0 <cx_bn_alloc>
c0de2f6a:	2800      	cmp	r0, #0
c0de2f6c:	d1f0      	bne.n	c0de2f50 <tEdwards_init+0x18>
c0de2f6e:	f105 0620 	add.w	r6, r5, #32
c0de2f72:	6820      	ldr	r0, [r4, #0]
c0de2f74:	9902      	ldr	r1, [sp, #8]
c0de2f76:	4632      	mov	r2, r6
c0de2f78:	f009 f87e 	bl	c0dec078 <cx_mont_to_montgomery>
c0de2f7c:	2800      	cmp	r0, #0
c0de2f7e:	d1e7      	bne.n	c0de2f50 <tEdwards_init+0x18>
c0de2f80:	6860      	ldr	r0, [r4, #4]
c0de2f82:	9901      	ldr	r1, [sp, #4]
c0de2f84:	4632      	mov	r2, r6
c0de2f86:	f009 f877 	bl	c0dec078 <cx_mont_to_montgomery>
c0de2f8a:	2800      	cmp	r0, #0
c0de2f8c:	d1e0      	bne.n	c0de2f50 <tEdwards_init+0x18>
c0de2f8e:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2f90:	68a0      	ldr	r0, [r4, #8]
c0de2f92:	f008 ffd3 	bl	c0debf3c <cx_bn_copy>
c0de2f96:	2800      	cmp	r0, #0
c0de2f98:	d1da      	bne.n	c0de2f50 <tEdwards_init+0x18>
c0de2f9a:	a802      	add	r0, sp, #8
c0de2f9c:	f008 ffae 	bl	c0debefc <cx_bn_destroy>
c0de2fa0:	2800      	cmp	r0, #0
c0de2fa2:	d1d5      	bne.n	c0de2f50 <tEdwards_init+0x18>
c0de2fa4:	a801      	add	r0, sp, #4
c0de2fa6:	f008 ffa9 	bl	c0debefc <cx_bn_destroy>
c0de2faa:	2800      	cmp	r0, #0
c0de2fac:	d1d0      	bne.n	c0de2f50 <tEdwards_init+0x18>
c0de2fae:	4668      	mov	r0, sp
c0de2fb0:	f008 ffa4 	bl	c0debefc <cx_bn_destroy>
c0de2fb4:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2fb6 <tEdwards_Curve_partial_destroy>:
c0de2fb6:	b510      	push	{r4, lr}
c0de2fb8:	4604      	mov	r4, r0
c0de2fba:	302c      	adds	r0, #44	@ 0x2c
c0de2fbc:	f008 ff9e 	bl	c0debefc <cx_bn_destroy>
c0de2fc0:	bbd8      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de2fc2:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2fc6:	f008 ff99 	bl	c0debefc <cx_bn_destroy>
c0de2fca:	bbb0      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de2fcc:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2fd0:	f008 ff94 	bl	c0debefc <cx_bn_destroy>
c0de2fd4:	bb88      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de2fd6:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de2fda:	f008 ff8f 	bl	c0debefc <cx_bn_destroy>
c0de2fde:	bb60      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de2fe0:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2fe4:	f008 ff8a 	bl	c0debefc <cx_bn_destroy>
c0de2fe8:	bb38      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de2fea:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de2fee:	f008 ff85 	bl	c0debefc <cx_bn_destroy>
c0de2ff2:	bb10      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de2ff4:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2ff8:	f008 ff80 	bl	c0debefc <cx_bn_destroy>
c0de2ffc:	b9e8      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de2ffe:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de3002:	f008 ff7b 	bl	c0debefc <cx_bn_destroy>
c0de3006:	b9c0      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de3008:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de300c:	f008 ff76 	bl	c0debefc <cx_bn_destroy>
c0de3010:	b998      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de3012:	f104 010c 	add.w	r1, r4, #12
c0de3016:	f7ff fd34 	bl	c0de2a82 <tEdwards_destroy>
c0de301a:	b970      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de301c:	f104 0018 	add.w	r0, r4, #24
c0de3020:	f008 ff6c 	bl	c0debefc <cx_bn_destroy>
c0de3024:	b948      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de3026:	f104 001c 	add.w	r0, r4, #28
c0de302a:	f008 ff67 	bl	c0debefc <cx_bn_destroy>
c0de302e:	b920      	cbnz	r0, c0de303a <tEdwards_Curve_partial_destroy+0x84>
c0de3030:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de3034:	f008 ff62 	bl	c0debefc <cx_bn_destroy>
c0de3038:	b100      	cbz	r0, c0de303c <tEdwards_Curve_partial_destroy+0x86>
c0de303a:	bd10      	pop	{r4, pc}
c0de303c:	f104 0008 	add.w	r0, r4, #8
c0de3040:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3044:	f008 bf5a 	b.w	c0debefc <cx_bn_destroy>

c0de3048 <tEdwards_SetNeutral>:
c0de3048:	b5b0      	push	{r4, r5, r7, lr}
c0de304a:	4605      	mov	r5, r0
c0de304c:	6808      	ldr	r0, [r1, #0]
c0de304e:	460c      	mov	r4, r1
c0de3050:	2100      	movs	r1, #0
c0de3052:	f008 ff7d 	bl	c0debf50 <cx_bn_set_u32>
c0de3056:	b918      	cbnz	r0, c0de3060 <tEdwards_SetNeutral+0x18>
c0de3058:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de305a:	f000 f944 	bl	c0de32e6 <OUTLINED_FUNCTION_11>
c0de305e:	b100      	cbz	r0, c0de3062 <tEdwards_SetNeutral+0x1a>
c0de3060:	bdb0      	pop	{r4, r5, r7, pc}
c0de3062:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de3064:	68a0      	ldr	r0, [r4, #8]
c0de3066:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de306a:	f008 bf67 	b.w	c0debf3c <cx_bn_copy>

c0de306e <tEdwards_export>:
c0de306e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3072:	4698      	mov	r8, r3
c0de3074:	4616      	mov	r6, r2
c0de3076:	460f      	mov	r7, r1
c0de3078:	4605      	mov	r5, r0
c0de307a:	f000 f81e 	bl	c0de30ba <tEdwards_normalize>
c0de307e:	b998      	cbnz	r0, c0de30a8 <tEdwards_export+0x3a>
c0de3080:	f105 0420 	add.w	r4, r5, #32
c0de3084:	6839      	ldr	r1, [r7, #0]
c0de3086:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de3088:	4622      	mov	r2, r4
c0de308a:	f009 f801 	bl	c0dec090 <cx_mont_from_montgomery>
c0de308e:	b958      	cbnz	r0, c0de30a8 <tEdwards_export+0x3a>
c0de3090:	6879      	ldr	r1, [r7, #4]
c0de3092:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de3094:	4622      	mov	r2, r4
c0de3096:	f008 fffb 	bl	c0dec090 <cx_mont_from_montgomery>
c0de309a:	b928      	cbnz	r0, c0de30a8 <tEdwards_export+0x3a>
c0de309c:	682a      	ldr	r2, [r5, #0]
c0de309e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de30a0:	4631      	mov	r1, r6
c0de30a2:	f008 ff5f 	bl	c0debf64 <cx_bn_export>
c0de30a6:	b108      	cbz	r0, c0de30ac <tEdwards_export+0x3e>
c0de30a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de30ac:	682a      	ldr	r2, [r5, #0]
c0de30ae:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de30b0:	4641      	mov	r1, r8
c0de30b2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de30b6:	f008 bf55 	b.w	c0debf64 <cx_bn_export>

c0de30ba <tEdwards_normalize>:
c0de30ba:	b570      	push	{r4, r5, r6, lr}
c0de30bc:	4605      	mov	r5, r0
c0de30be:	460c      	mov	r4, r1
c0de30c0:	6889      	ldr	r1, [r1, #8]
c0de30c2:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de30c4:	f105 0620 	add.w	r6, r5, #32
c0de30c8:	4632      	mov	r2, r6
c0de30ca:	f009 f809 	bl	c0dec0e0 <cx_mont_invert_nprime>
c0de30ce:	b9d0      	cbnz	r0, c0de3106 <tEdwards_normalize+0x4c>
c0de30d0:	6822      	ldr	r2, [r4, #0]
c0de30d2:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de30d6:	f000 f8d5 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de30da:	b9a0      	cbnz	r0, c0de3106 <tEdwards_normalize+0x4c>
c0de30dc:	6862      	ldr	r2, [r4, #4]
c0de30de:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de30e0:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de30e2:	f000 f8cf 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de30e6:	b970      	cbnz	r0, c0de3106 <tEdwards_normalize+0x4c>
c0de30e8:	68a2      	ldr	r2, [r4, #8]
c0de30ea:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de30ec:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de30ee:	f000 f8c9 	bl	c0de3284 <OUTLINED_FUNCTION_0>
c0de30f2:	b940      	cbnz	r0, c0de3106 <tEdwards_normalize+0x4c>
c0de30f4:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de30f6:	6820      	ldr	r0, [r4, #0]
c0de30f8:	f008 ff20 	bl	c0debf3c <cx_bn_copy>
c0de30fc:	b918      	cbnz	r0, c0de3106 <tEdwards_normalize+0x4c>
c0de30fe:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de3100:	f000 f8f1 	bl	c0de32e6 <OUTLINED_FUNCTION_11>
c0de3104:	b100      	cbz	r0, c0de3108 <tEdwards_normalize+0x4e>
c0de3106:	bd70      	pop	{r4, r5, r6, pc}
c0de3108:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de310a:	68a0      	ldr	r0, [r4, #8]
c0de310c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de3110:	f008 bf14 	b.w	c0debf3c <cx_bn_copy>

c0de3114 <tEdwards_copy>:
c0de3114:	b5b0      	push	{r4, r5, r7, lr}
c0de3116:	460c      	mov	r4, r1
c0de3118:	4605      	mov	r5, r0
c0de311a:	6801      	ldr	r1, [r0, #0]
c0de311c:	6820      	ldr	r0, [r4, #0]
c0de311e:	f008 ff0d 	bl	c0debf3c <cx_bn_copy>
c0de3122:	b918      	cbnz	r0, c0de312c <tEdwards_copy+0x18>
c0de3124:	6869      	ldr	r1, [r5, #4]
c0de3126:	f000 f8de 	bl	c0de32e6 <OUTLINED_FUNCTION_11>
c0de312a:	b100      	cbz	r0, c0de312e <tEdwards_copy+0x1a>
c0de312c:	bdb0      	pop	{r4, r5, r7, pc}
c0de312e:	68a9      	ldr	r1, [r5, #8]
c0de3130:	68a0      	ldr	r0, [r4, #8]
c0de3132:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3136:	f008 bf01 	b.w	c0debf3c <cx_bn_copy>

c0de313a <tEdwards_alloc_init>:
c0de313a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de313c:	460e      	mov	r6, r1
c0de313e:	6801      	ldr	r1, [r0, #0]
c0de3140:	4607      	mov	r7, r0
c0de3142:	4618      	mov	r0, r3
c0de3144:	461c      	mov	r4, r3
c0de3146:	4615      	mov	r5, r2
c0de3148:	f008 fec2 	bl	c0debed0 <cx_bn_alloc>
c0de314c:	b950      	cbnz	r0, c0de3164 <tEdwards_alloc_init+0x2a>
c0de314e:	6839      	ldr	r1, [r7, #0]
c0de3150:	1d20      	adds	r0, r4, #4
c0de3152:	f008 febd 	bl	c0debed0 <cx_bn_alloc>
c0de3156:	b928      	cbnz	r0, c0de3164 <tEdwards_alloc_init+0x2a>
c0de3158:	6839      	ldr	r1, [r7, #0]
c0de315a:	f104 0008 	add.w	r0, r4, #8
c0de315e:	f008 feb7 	bl	c0debed0 <cx_bn_alloc>
c0de3162:	b100      	cbz	r0, c0de3166 <tEdwards_alloc_init+0x2c>
c0de3164:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3166:	4638      	mov	r0, r7
c0de3168:	4631      	mov	r1, r6
c0de316a:	462a      	mov	r2, r5
c0de316c:	4623      	mov	r3, r4
c0de316e:	b001      	add	sp, #4
c0de3170:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3174:	f7ff bee0 	b.w	c0de2f38 <tEdwards_init>

c0de3178 <tEdwards_scalarMul_bn>:
c0de3178:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de317c:	4607      	mov	r7, r0
c0de317e:	2000      	movs	r0, #0
c0de3180:	4688      	mov	r8, r1
c0de3182:	4615      	mov	r5, r2
c0de3184:	2100      	movs	r1, #0
c0de3186:	469b      	mov	fp, r3
c0de3188:	9003      	str	r0, [sp, #12]
c0de318a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de318e:	6810      	ldr	r0, [r2, #0]
c0de3190:	aa03      	add	r2, sp, #12
c0de3192:	f008 feff 	bl	c0debf94 <cx_bn_cmp_u32>
c0de3196:	bb38      	cbnz	r0, c0de31e8 <tEdwards_scalarMul_bn+0x70>
c0de3198:	9803      	ldr	r0, [sp, #12]
c0de319a:	b1d0      	cbz	r0, c0de31d2 <tEdwards_scalarMul_bn+0x5a>
c0de319c:	6828      	ldr	r0, [r5, #0]
c0de319e:	a901      	add	r1, sp, #4
c0de31a0:	f008 feb6 	bl	c0debf10 <cx_bn_nbytes>
c0de31a4:	bb00      	cbnz	r0, c0de31e8 <tEdwards_scalarMul_bn+0x70>
c0de31a6:	2002      	movs	r0, #2
c0de31a8:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de31ac:	f10d 040b 	add.w	r4, sp, #11
c0de31b0:	6538      	str	r0, [r7, #80]	@ 0x50
c0de31b2:	9801      	ldr	r0, [sp, #4]
c0de31b4:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de31b8:	2000      	movs	r0, #0
c0de31ba:	2801      	cmp	r0, #1
c0de31bc:	d00f      	beq.n	c0de31de <tEdwards_scalarMul_bn+0x66>
c0de31be:	6828      	ldr	r0, [r5, #0]
c0de31c0:	4631      	mov	r1, r6
c0de31c2:	4622      	mov	r2, r4
c0de31c4:	f008 fef2 	bl	c0debfac <cx_bn_tst_bit>
c0de31c8:	b970      	cbnz	r0, c0de31e8 <tEdwards_scalarMul_bn+0x70>
c0de31ca:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de31ce:	3e01      	subs	r6, #1
c0de31d0:	e7f3      	b.n	c0de31ba <tEdwards_scalarMul_bn+0x42>
c0de31d2:	4638      	mov	r0, r7
c0de31d4:	4659      	mov	r1, fp
c0de31d6:	f7ff ff37 	bl	c0de3048 <tEdwards_SetNeutral>
c0de31da:	b928      	cbnz	r0, c0de31e8 <tEdwards_scalarMul_bn+0x70>
c0de31dc:	e7de      	b.n	c0de319c <tEdwards_scalarMul_bn+0x24>
c0de31de:	4640      	mov	r0, r8
c0de31e0:	4659      	mov	r1, fp
c0de31e2:	f7ff ff97 	bl	c0de3114 <tEdwards_copy>
c0de31e6:	b110      	cbz	r0, c0de31ee <tEdwards_scalarMul_bn+0x76>
c0de31e8:	b004      	add	sp, #16
c0de31ea:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de31ee:	2001      	movs	r0, #1
c0de31f0:	f10d 0a0b 	add.w	sl, sp, #11
c0de31f4:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de31f8:	2e00      	cmp	r6, #0
c0de31fa:	d420      	bmi.n	c0de323e <tEdwards_scalarMul_bn+0xc6>
c0de31fc:	4638      	mov	r0, r7
c0de31fe:	4659      	mov	r1, fp
c0de3200:	465a      	mov	r2, fp
c0de3202:	f7ff fc4f 	bl	c0de2aa4 <tEdwards_double>
c0de3206:	2800      	cmp	r0, #0
c0de3208:	d1ee      	bne.n	c0de31e8 <tEdwards_scalarMul_bn+0x70>
c0de320a:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de320c:	4631      	mov	r1, r6
c0de320e:	4652      	mov	r2, sl
c0de3210:	0040      	lsls	r0, r0, #1
c0de3212:	6538      	str	r0, [r7, #80]	@ 0x50
c0de3214:	6828      	ldr	r0, [r5, #0]
c0de3216:	f008 fec9 	bl	c0debfac <cx_bn_tst_bit>
c0de321a:	2800      	cmp	r0, #0
c0de321c:	d1e4      	bne.n	c0de31e8 <tEdwards_scalarMul_bn+0x70>
c0de321e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de3222:	b150      	cbz	r0, c0de323a <tEdwards_scalarMul_bn+0xc2>
c0de3224:	4638      	mov	r0, r7
c0de3226:	4659      	mov	r1, fp
c0de3228:	4642      	mov	r2, r8
c0de322a:	465b      	mov	r3, fp
c0de322c:	f7ff fca5 	bl	c0de2b7a <tEdwards_add>
c0de3230:	2800      	cmp	r0, #0
c0de3232:	d1d9      	bne.n	c0de31e8 <tEdwards_scalarMul_bn+0x70>
c0de3234:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de3236:	3001      	adds	r0, #1
c0de3238:	6538      	str	r0, [r7, #80]	@ 0x50
c0de323a:	3e01      	subs	r6, #1
c0de323c:	e7dc      	b.n	c0de31f8 <tEdwards_scalarMul_bn+0x80>
c0de323e:	2000      	movs	r0, #0
c0de3240:	e7d2      	b.n	c0de31e8 <tEdwards_scalarMul_bn+0x70>
	...

c0de3244 <tEdwards_scalarMul>:
c0de3244:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de3246:	460c      	mov	r4, r1
c0de3248:	6801      	ldr	r1, [r0, #0]
c0de324a:	4299      	cmp	r1, r3
c0de324c:	bf3c      	itt	cc
c0de324e:	480c      	ldrcc	r0, [pc, #48]	@ (c0de3280 <tEdwards_scalarMul+0x3c>)
c0de3250:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de3252:	4605      	mov	r5, r0
c0de3254:	20ca      	movs	r0, #202	@ 0xca
c0de3256:	6528      	str	r0, [r5, #80]	@ 0x50
c0de3258:	a801      	add	r0, sp, #4
c0de325a:	f008 fe43 	bl	c0debee4 <cx_bn_alloc_init>
c0de325e:	b100      	cbz	r0, c0de3262 <tEdwards_scalarMul+0x1e>
c0de3260:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de3262:	20b3      	movs	r0, #179	@ 0xb3
c0de3264:	9b06      	ldr	r3, [sp, #24]
c0de3266:	4621      	mov	r1, r4
c0de3268:	6528      	str	r0, [r5, #80]	@ 0x50
c0de326a:	aa01      	add	r2, sp, #4
c0de326c:	4628      	mov	r0, r5
c0de326e:	f7ff ff83 	bl	c0de3178 <tEdwards_scalarMul_bn>
c0de3272:	2800      	cmp	r0, #0
c0de3274:	d1f4      	bne.n	c0de3260 <tEdwards_scalarMul+0x1c>
c0de3276:	a801      	add	r0, sp, #4
c0de3278:	f008 fe40 	bl	c0debefc <cx_bn_destroy>
c0de327c:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de327e:	bf00      	nop
c0de3280:	5a4b4e01 	.word	0x5a4b4e01

c0de3284 <OUTLINED_FUNCTION_0>:
c0de3284:	4633      	mov	r3, r6
c0de3286:	f008 bf0f 	b.w	c0dec0a8 <cx_mont_mul>

c0de328a <OUTLINED_FUNCTION_1>:
c0de328a:	462b      	mov	r3, r5
c0de328c:	f008 bf0c 	b.w	c0dec0a8 <cx_mont_mul>

c0de3290 <OUTLINED_FUNCTION_2>:
c0de3290:	4633      	mov	r3, r6
c0de3292:	460a      	mov	r2, r1
c0de3294:	f008 bf08 	b.w	c0dec0a8 <cx_mont_mul>

c0de3298 <OUTLINED_FUNCTION_3>:
c0de3298:	462a      	mov	r2, r5
c0de329a:	4601      	mov	r1, r0
c0de329c:	f008 beec 	b.w	c0dec078 <cx_mont_to_montgomery>

c0de32a0 <OUTLINED_FUNCTION_4>:
c0de32a0:	4620      	mov	r0, r4
c0de32a2:	f850 1b34 	ldr.w	r1, [r0], #52
c0de32a6:	f008 be13 	b.w	c0debed0 <cx_bn_alloc>

c0de32aa <OUTLINED_FUNCTION_5>:
c0de32aa:	4620      	mov	r0, r4
c0de32ac:	f850 1b48 	ldr.w	r1, [r0], #72
c0de32b0:	f008 be0e 	b.w	c0debed0 <cx_bn_alloc>

c0de32b4 <OUTLINED_FUNCTION_6>:
c0de32b4:	4620      	mov	r0, r4
c0de32b6:	f850 1b40 	ldr.w	r1, [r0], #64
c0de32ba:	f008 be09 	b.w	c0debed0 <cx_bn_alloc>

c0de32be <OUTLINED_FUNCTION_7>:
c0de32be:	4620      	mov	r0, r4
c0de32c0:	f850 1b38 	ldr.w	r1, [r0], #56
c0de32c4:	f008 be04 	b.w	c0debed0 <cx_bn_alloc>

c0de32c8 <OUTLINED_FUNCTION_8>:
c0de32c8:	4620      	mov	r0, r4
c0de32ca:	f850 1b30 	ldr.w	r1, [r0], #48
c0de32ce:	f008 bdff 	b.w	c0debed0 <cx_bn_alloc>

c0de32d2 <OUTLINED_FUNCTION_9>:
c0de32d2:	4620      	mov	r0, r4
c0de32d4:	f850 1b44 	ldr.w	r1, [r0], #68
c0de32d8:	f008 bdfa 	b.w	c0debed0 <cx_bn_alloc>

c0de32dc <OUTLINED_FUNCTION_10>:
c0de32dc:	4620      	mov	r0, r4
c0de32de:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de32e2:	f008 bdf5 	b.w	c0debed0 <cx_bn_alloc>

c0de32e6 <OUTLINED_FUNCTION_11>:
c0de32e6:	6860      	ldr	r0, [r4, #4]
c0de32e8:	f008 be28 	b.w	c0debf3c <cx_bn_copy>

c0de32ec <grain_lfsr_advance>:
c0de32ec:	b5b0      	push	{r4, r5, r7, lr}
c0de32ee:	68c2      	ldr	r2, [r0, #12]
c0de32f0:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de32f4:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de32f8:	ea4f 0234 	mov.w	r2, r4, rrx
c0de32fc:	07e4      	lsls	r4, r4, #31
c0de32fe:	60c5      	str	r5, [r0, #12]
c0de3300:	07dd      	lsls	r5, r3, #31
c0de3302:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de3306:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de330a:	6044      	str	r4, [r0, #4]
c0de330c:	4c15      	ldr	r4, [pc, #84]	@ (c0de3364 <grain_lfsr_advance+0x78>)
c0de330e:	6005      	str	r5, [r0, #0]
c0de3310:	4021      	ands	r1, r4
c0de3312:	4c15      	ldr	r4, [pc, #84]	@ (c0de3368 <grain_lfsr_advance+0x7c>)
c0de3314:	4023      	ands	r3, r4
c0de3316:	4419      	add	r1, r3
c0de3318:	0c0c      	lsrs	r4, r1, #16
c0de331a:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de331e:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de3322:	4421      	add	r1, r4
c0de3324:	0a0c      	lsrs	r4, r1, #8
c0de3326:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de332a:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de332e:	4061      	eors	r1, r4
c0de3330:	090c      	lsrs	r4, r1, #4
c0de3332:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de3336:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de333a:	4061      	eors	r1, r4
c0de333c:	088c      	lsrs	r4, r1, #2
c0de333e:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de3342:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de3346:	4061      	eors	r1, r4
c0de3348:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de334c:	ea4f 0331 	mov.w	r3, r1, rrx
c0de3350:	4059      	eors	r1, r3
c0de3352:	f001 0101 	and.w	r1, r1, #1
c0de3356:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de335a:	6082      	str	r2, [r0, #8]
c0de335c:	4608      	mov	r0, r1
c0de335e:	2100      	movs	r1, #0
c0de3360:	bdb0      	pop	{r4, r5, r7, pc}
c0de3362:	bf00      	nop
c0de3364:	00802001 	.word	0x00802001
c0de3368:	40080040 	.word	0x40080040

c0de336c <next64_graingen>:
c0de336c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de3370:	460c      	mov	r4, r1
c0de3372:	4605      	mov	r5, r0
c0de3374:	f04f 0a00 	mov.w	sl, #0
c0de3378:	f04f 0800 	mov.w	r8, #0
c0de337c:	2700      	movs	r7, #0
c0de337e:	42a7      	cmp	r7, r4
c0de3380:	d215      	bcs.n	c0de33ae <next64_graingen+0x42>
c0de3382:	4628      	mov	r0, r5
c0de3384:	f7ff ffb2 	bl	c0de32ec <grain_lfsr_advance>
c0de3388:	4606      	mov	r6, r0
c0de338a:	4628      	mov	r0, r5
c0de338c:	f7ff ffae 	bl	c0de32ec <grain_lfsr_advance>
c0de3390:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de3394:	0781      	lsls	r1, r0, #30
c0de3396:	d5f2      	bpl.n	c0de337e <next64_graingen+0x12>
c0de3398:	f000 0001 	and.w	r0, r0, #1
c0de339c:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de33a0:	3701      	adds	r7, #1
c0de33a2:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de33a6:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de33aa:	4682      	mov	sl, r0
c0de33ac:	e7e7      	b.n	c0de337e <next64_graingen+0x12>
c0de33ae:	4650      	mov	r0, sl
c0de33b0:	4641      	mov	r1, r8
c0de33b2:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de33b8 <init_generator>:
c0de33b8:	b5b0      	push	{r4, r5, r7, lr}
c0de33ba:	4a09      	ldr	r2, [pc, #36]	@ (c0de33e0 <init_generator+0x28>)
c0de33bc:	4b09      	ldr	r3, [pc, #36]	@ (c0de33e4 <init_generator+0x2c>)
c0de33be:	4604      	mov	r4, r0
c0de33c0:	25a0      	movs	r5, #160	@ 0xa0
c0de33c2:	2000      	movs	r0, #0
c0de33c4:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de33c8:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de33cc:	e9c4 3200 	strd	r3, r2, [r4]
c0de33d0:	b125      	cbz	r5, c0de33dc <init_generator+0x24>
c0de33d2:	4620      	mov	r0, r4
c0de33d4:	f7ff ff8a 	bl	c0de32ec <grain_lfsr_advance>
c0de33d8:	3d01      	subs	r5, #1
c0de33da:	e7f9      	b.n	c0de33d0 <init_generator+0x18>
c0de33dc:	bdb0      	pop	{r4, r5, r7, pc}
c0de33de:	bf00      	nop
c0de33e0:	fffcf010 	.word	0xfffcf010
c0de33e4:	1801fc02 	.word	0x1801fc02

c0de33e8 <gen_integer>:
c0de33e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de33ec:	4f20      	ldr	r7, [pc, #128]	@ (c0de3470 <gen_integer+0x88>)
c0de33ee:	4e22      	ldr	r6, [pc, #136]	@ (c0de3478 <gen_integer+0x90>)
c0de33f0:	4605      	mov	r5, r0
c0de33f2:	460c      	mov	r4, r1
c0de33f4:	2000      	movs	r0, #0
c0de33f6:	46b8      	mov	r8, r7
c0de33f8:	4f1e      	ldr	r7, [pc, #120]	@ (c0de3474 <gen_integer+0x8c>)
c0de33fa:	447e      	add	r6, pc
c0de33fc:	b9f8      	cbnz	r0, c0de343e <gen_integer+0x56>
c0de33fe:	4628      	mov	r0, r5
c0de3400:	213e      	movs	r1, #62	@ 0x3e
c0de3402:	47b0      	blx	r6
c0de3404:	e9c4 0100 	strd	r0, r1, [r4]
c0de3408:	4628      	mov	r0, r5
c0de340a:	2140      	movs	r1, #64	@ 0x40
c0de340c:	47b0      	blx	r6
c0de340e:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de3412:	4628      	mov	r0, r5
c0de3414:	2140      	movs	r1, #64	@ 0x40
c0de3416:	47b0      	blx	r6
c0de3418:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de341c:	4628      	mov	r0, r5
c0de341e:	2140      	movs	r1, #64	@ 0x40
c0de3420:	47b0      	blx	r6
c0de3422:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de3426:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de342a:	463a      	mov	r2, r7
c0de342c:	1bc0      	subs	r0, r0, r7
c0de342e:	4640      	mov	r0, r8
c0de3430:	eb71 0008 	sbcs.w	r0, r1, r8
c0de3434:	f04f 0000 	mov.w	r0, #0
c0de3438:	bf38      	it	cc
c0de343a:	2001      	movcc	r0, #1
c0de343c:	e7de      	b.n	c0de33fc <gen_integer+0x14>
c0de343e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de3442:	4d0e      	ldr	r5, [pc, #56]	@ (c0de347c <gen_integer+0x94>)
c0de3444:	447d      	add	r5, pc
c0de3446:	47a8      	blx	r5
c0de3448:	e9c4 0100 	strd	r0, r1, [r4]
c0de344c:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de3450:	47a8      	blx	r5
c0de3452:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de3456:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de345a:	47a8      	blx	r5
c0de345c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3460:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de3464:	47a8      	blx	r5
c0de3466:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de346a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de346e:	bf00      	nop
c0de3470:	305a4b4e 	.word	0x305a4b4e
c0de3474:	4f582122 	.word	0x4f582122
c0de3478:	ffffff6f 	.word	0xffffff6f
c0de347c:	00000039 	.word	0x00000039

c0de3480 <rev64>:
c0de3480:	ba0a      	rev	r2, r1
c0de3482:	ba01      	rev	r1, r0
c0de3484:	4610      	mov	r0, r2
c0de3486:	4770      	bx	lr

c0de3488 <Poseidon_getNext_RC>:
c0de3488:	30c0      	adds	r0, #192	@ 0xc0
c0de348a:	f7ff bfad 	b.w	c0de33e8 <gen_integer>
	...

c0de3490 <Poseidon_alloc_init>:
c0de3490:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3494:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de3498:	4604      	mov	r4, r0
c0de349a:	30c0      	adds	r0, #192	@ 0xc0
c0de349c:	461e      	mov	r6, r3
c0de349e:	4617      	mov	r7, r2
c0de34a0:	460d      	mov	r5, r1
c0de34a2:	f7ff ff89 	bl	c0de33b8 <init_generator>
c0de34a6:	492c      	ldr	r1, [pc, #176]	@ (c0de3558 <Poseidon_alloc_init+0xc8>)
c0de34a8:	46e8      	mov	r8, sp
c0de34aa:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de34ae:	4640      	mov	r0, r8
c0de34b0:	4479      	add	r1, pc
c0de34b2:	f008 ffd9 	bl	c0dec468 <__aeabi_memcpy>
c0de34b6:	2000      	movs	r0, #0
c0de34b8:	7325      	strb	r5, [r4, #12]
c0de34ba:	6166      	str	r6, [r4, #20]
c0de34bc:	4621      	mov	r1, r4
c0de34be:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de34c2:	1c78      	adds	r0, r7, #1
c0de34c4:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de34c8:	6830      	ldr	r0, [r6, #0]
c0de34ca:	f008 fd21 	bl	c0debf10 <cx_bn_nbytes>
c0de34ce:	b930      	cbnz	r0, c0de34de <Poseidon_alloc_init+0x4e>
c0de34d0:	4620      	mov	r0, r4
c0de34d2:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de34d6:	4631      	mov	r1, r6
c0de34d8:	f008 fcfa 	bl	c0debed0 <cx_bn_alloc>
c0de34dc:	b118      	cbz	r0, c0de34e6 <Poseidon_alloc_init+0x56>
c0de34de:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de34e2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de34e6:	68a0      	ldr	r0, [r4, #8]
c0de34e8:	2500      	movs	r5, #0
c0de34ea:	4285      	cmp	r5, r0
c0de34ec:	d230      	bcs.n	c0de3550 <Poseidon_alloc_init+0xc0>
c0de34ee:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de34f2:	4631      	mov	r1, r6
c0de34f4:	f107 0018 	add.w	r0, r7, #24
c0de34f8:	f008 fcea 	bl	c0debed0 <cx_bn_alloc>
c0de34fc:	2800      	cmp	r0, #0
c0de34fe:	d1ee      	bne.n	c0de34de <Poseidon_alloc_init+0x4e>
c0de3500:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de3504:	4631      	mov	r1, r6
c0de3506:	f008 fce3 	bl	c0debed0 <cx_bn_alloc>
c0de350a:	2800      	cmp	r0, #0
c0de350c:	d1e7      	bne.n	c0de34de <Poseidon_alloc_init+0x4e>
c0de350e:	2700      	movs	r7, #0
c0de3510:	68a0      	ldr	r0, [r4, #8]
c0de3512:	4287      	cmp	r7, r0
c0de3514:	d21a      	bcs.n	c0de354c <Poseidon_alloc_init+0xbc>
c0de3516:	fb05 7000 	mla	r0, r5, r0, r7
c0de351a:	4631      	mov	r1, r6
c0de351c:	4633      	mov	r3, r6
c0de351e:	fb00 8206 	mla	r2, r0, r6, r8
c0de3522:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de3526:	3030      	adds	r0, #48	@ 0x30
c0de3528:	f008 fcdc 	bl	c0debee4 <cx_bn_alloc_init>
c0de352c:	2800      	cmp	r0, #0
c0de352e:	d1d6      	bne.n	c0de34de <Poseidon_alloc_init+0x4e>
c0de3530:	68a0      	ldr	r0, [r4, #8]
c0de3532:	6962      	ldr	r2, [r4, #20]
c0de3534:	fb05 7000 	mla	r0, r5, r0, r7
c0de3538:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de353c:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de353e:	4601      	mov	r1, r0
c0de3540:	f008 fd9a 	bl	c0dec078 <cx_mont_to_montgomery>
c0de3544:	3701      	adds	r7, #1
c0de3546:	2800      	cmp	r0, #0
c0de3548:	d0e2      	beq.n	c0de3510 <Poseidon_alloc_init+0x80>
c0de354a:	e7c8      	b.n	c0de34de <Poseidon_alloc_init+0x4e>
c0de354c:	3501      	adds	r5, #1
c0de354e:	e7cc      	b.n	c0de34ea <Poseidon_alloc_init+0x5a>
c0de3550:	2001      	movs	r0, #1
c0de3552:	6120      	str	r0, [r4, #16]
c0de3554:	2000      	movs	r0, #0
c0de3556:	e7c2      	b.n	c0de34de <Poseidon_alloc_init+0x4e>
c0de3558:	0000b890 	.word	0x0000b890

c0de355c <Poseidon>:
c0de355c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3560:	b08c      	sub	sp, #48	@ 0x30
c0de3562:	4606      	mov	r6, r0
c0de3564:	6900      	ldr	r0, [r0, #16]
c0de3566:	2801      	cmp	r0, #1
c0de3568:	f040 80b4 	bne.w	c0de36d4 <Poseidon+0x178>
c0de356c:	69b0      	ldr	r0, [r6, #24]
c0de356e:	461f      	mov	r7, r3
c0de3570:	4692      	mov	sl, r2
c0de3572:	f008 fced 	bl	c0debf50 <cx_bn_set_u32>
c0de3576:	2800      	cmp	r0, #0
c0de3578:	f040 80ad 	bne.w	c0de36d6 <Poseidon+0x17a>
c0de357c:	f106 000c 	add.w	r0, r6, #12
c0de3580:	f106 0818 	add.w	r8, r6, #24
c0de3584:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de3588:	9001      	str	r0, [sp, #4]
c0de358a:	2000      	movs	r0, #0
c0de358c:	2844      	cmp	r0, #68	@ 0x44
c0de358e:	f000 80ae 	beq.w	c0de36ee <Poseidon+0x192>
c0de3592:	6834      	ldr	r4, [r6, #0]
c0de3594:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de3598:	f04f 0a00 	mov.w	sl, #0
c0de359c:	68b0      	ldr	r0, [r6, #8]
c0de359e:	4582      	cmp	sl, r0
c0de35a0:	d224      	bcs.n	c0de35ec <Poseidon+0x90>
c0de35a2:	ad04      	add	r5, sp, #16
c0de35a4:	4658      	mov	r0, fp
c0de35a6:	4629      	mov	r1, r5
c0de35a8:	f7ff ff1e 	bl	c0de33e8 <gen_integer>
c0de35ac:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de35b0:	4629      	mov	r1, r5
c0de35b2:	4622      	mov	r2, r4
c0de35b4:	f008 fcb6 	bl	c0debf24 <cx_bn_init>
c0de35b8:	2800      	cmp	r0, #0
c0de35ba:	f040 808c 	bne.w	c0de36d6 <Poseidon+0x17a>
c0de35be:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de35c2:	6972      	ldr	r2, [r6, #20]
c0de35c4:	4601      	mov	r1, r0
c0de35c6:	f008 fd57 	bl	c0dec078 <cx_mont_to_montgomery>
c0de35ca:	2800      	cmp	r0, #0
c0de35cc:	f040 8083 	bne.w	c0de36d6 <Poseidon+0x17a>
c0de35d0:	6972      	ldr	r2, [r6, #20]
c0de35d2:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de35d6:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de35da:	6813      	ldr	r3, [r2, #0]
c0de35dc:	4602      	mov	r2, r0
c0de35de:	f008 fcf1 	bl	c0debfc4 <cx_bn_mod_add>
c0de35e2:	f10a 0a01 	add.w	sl, sl, #1
c0de35e6:	2800      	cmp	r0, #0
c0de35e8:	d0d8      	beq.n	c0de359c <Poseidon+0x40>
c0de35ea:	e074      	b.n	c0de36d6 <Poseidon+0x17a>
c0de35ec:	9902      	ldr	r1, [sp, #8]
c0de35ee:	2904      	cmp	r1, #4
c0de35f0:	d301      	bcc.n	c0de35f6 <Poseidon+0x9a>
c0de35f2:	2940      	cmp	r1, #64	@ 0x40
c0de35f4:	d323      	bcc.n	c0de363e <Poseidon+0xe2>
c0de35f6:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de35fa:	2400      	movs	r4, #0
c0de35fc:	4284      	cmp	r4, r0
c0de35fe:	d22b      	bcs.n	c0de3658 <Poseidon+0xfc>
c0de3600:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de3604:	6973      	ldr	r3, [r6, #20]
c0de3606:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de360a:	460a      	mov	r2, r1
c0de360c:	f008 fd4c 	bl	c0dec0a8 <cx_mont_mul>
c0de3610:	2800      	cmp	r0, #0
c0de3612:	d160      	bne.n	c0de36d6 <Poseidon+0x17a>
c0de3614:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de3618:	6973      	ldr	r3, [r6, #20]
c0de361a:	460a      	mov	r2, r1
c0de361c:	f008 fd44 	bl	c0dec0a8 <cx_mont_mul>
c0de3620:	2800      	cmp	r0, #0
c0de3622:	d158      	bne.n	c0de36d6 <Poseidon+0x17a>
c0de3624:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de3628:	6973      	ldr	r3, [r6, #20]
c0de362a:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de362e:	4601      	mov	r1, r0
c0de3630:	f008 fd3a 	bl	c0dec0a8 <cx_mont_mul>
c0de3634:	2800      	cmp	r0, #0
c0de3636:	d14e      	bne.n	c0de36d6 <Poseidon+0x17a>
c0de3638:	68b0      	ldr	r0, [r6, #8]
c0de363a:	3401      	adds	r4, #1
c0de363c:	e7de      	b.n	c0de35fc <Poseidon+0xa0>
c0de363e:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de3642:	9a01      	ldr	r2, [sp, #4]
c0de3644:	2301      	movs	r3, #1
c0de3646:	9100      	str	r1, [sp, #0]
c0de3648:	4601      	mov	r1, r0
c0de364a:	f008 fd39 	bl	c0dec0c0 <cx_mont_pow>
c0de364e:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3652:	2800      	cmp	r0, #0
c0de3654:	d13f      	bne.n	c0de36d6 <Poseidon+0x17a>
c0de3656:	68b0      	ldr	r0, [r6, #8]
c0de3658:	2500      	movs	r5, #0
c0de365a:	4285      	cmp	r5, r0
c0de365c:	d229      	bcs.n	c0de36b2 <Poseidon+0x156>
c0de365e:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de3662:	2100      	movs	r1, #0
c0de3664:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de3668:	f008 fc72 	bl	c0debf50 <cx_bn_set_u32>
c0de366c:	bb98      	cbnz	r0, c0de36d6 <Poseidon+0x17a>
c0de366e:	9503      	str	r5, [sp, #12]
c0de3670:	2500      	movs	r5, #0
c0de3672:	68b0      	ldr	r0, [r6, #8]
c0de3674:	4285      	cmp	r5, r0
c0de3676:	d219      	bcs.n	c0de36ac <Poseidon+0x150>
c0de3678:	9903      	ldr	r1, [sp, #12]
c0de367a:	6973      	ldr	r3, [r6, #20]
c0de367c:	fb01 5000 	mla	r0, r1, r0, r5
c0de3680:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3684:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de3688:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de368a:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de368e:	f008 fd0b 	bl	c0dec0a8 <cx_mont_mul>
c0de3692:	bb00      	cbnz	r0, c0de36d6 <Poseidon+0x17a>
c0de3694:	6971      	ldr	r1, [r6, #20]
c0de3696:	6820      	ldr	r0, [r4, #0]
c0de3698:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de369c:	680b      	ldr	r3, [r1, #0]
c0de369e:	4601      	mov	r1, r0
c0de36a0:	f008 fc90 	bl	c0debfc4 <cx_bn_mod_add>
c0de36a4:	3501      	adds	r5, #1
c0de36a6:	2800      	cmp	r0, #0
c0de36a8:	d0e3      	beq.n	c0de3672 <Poseidon+0x116>
c0de36aa:	e014      	b.n	c0de36d6 <Poseidon+0x17a>
c0de36ac:	9d03      	ldr	r5, [sp, #12]
c0de36ae:	3501      	adds	r5, #1
c0de36b0:	e7d3      	b.n	c0de365a <Poseidon+0xfe>
c0de36b2:	2400      	movs	r4, #0
c0de36b4:	4284      	cmp	r4, r0
c0de36b6:	d20a      	bcs.n	c0de36ce <Poseidon+0x172>
c0de36b8:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de36bc:	6988      	ldr	r0, [r1, #24]
c0de36be:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de36c2:	f008 fc3b 	bl	c0debf3c <cx_bn_copy>
c0de36c6:	b930      	cbnz	r0, c0de36d6 <Poseidon+0x17a>
c0de36c8:	68b0      	ldr	r0, [r6, #8]
c0de36ca:	3401      	adds	r4, #1
c0de36cc:	e7f2      	b.n	c0de36b4 <Poseidon+0x158>
c0de36ce:	9802      	ldr	r0, [sp, #8]
c0de36d0:	3001      	adds	r0, #1
c0de36d2:	e75b      	b.n	c0de358c <Poseidon+0x30>
c0de36d4:	4808      	ldr	r0, [pc, #32]	@ (c0de36f8 <Poseidon+0x19c>)
c0de36d6:	b00c      	add	sp, #48	@ 0x30
c0de36d8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de36dc:	f858 1b04 	ldr.w	r1, [r8], #4
c0de36e0:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de36e4:	f008 fc2a 	bl	c0debf3c <cx_bn_copy>
c0de36e8:	3f01      	subs	r7, #1
c0de36ea:	2800      	cmp	r0, #0
c0de36ec:	d1f3      	bne.n	c0de36d6 <Poseidon+0x17a>
c0de36ee:	2f00      	cmp	r7, #0
c0de36f0:	d1f4      	bne.n	c0de36dc <Poseidon+0x180>
c0de36f2:	2000      	movs	r0, #0
c0de36f4:	e7ef      	b.n	c0de36d6 <Poseidon+0x17a>
c0de36f6:	bf00      	nop
c0de36f8:	5a4b4e02 	.word	0x5a4b4e02

c0de36fc <RFC9591_taggedHash>:
c0de36fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de36fe:	b0d9      	sub	sp, #356	@ 0x164
c0de3700:	460e      	mov	r6, r1
c0de3702:	4607      	mov	r7, r0
c0de3704:	a858      	add	r0, sp, #352	@ 0x160
c0de3706:	2140      	movs	r1, #64	@ 0x40
c0de3708:	461c      	mov	r4, r3
c0de370a:	4615      	mov	r5, r2
c0de370c:	f008 fbe0 	bl	c0debed0 <cx_bn_alloc>
c0de3710:	bbd8      	cbnz	r0, c0de378a <RFC9591_taggedHash+0x8e>
c0de3712:	491f      	ldr	r1, [pc, #124]	@ (c0de3790 <RFC9591_taggedHash+0x94>)
c0de3714:	4668      	mov	r0, sp
c0de3716:	221d      	movs	r2, #29
c0de3718:	4479      	add	r1, pc
c0de371a:	f008 fea5 	bl	c0dec468 <__aeabi_memcpy>
c0de371e:	a808      	add	r0, sp, #32
c0de3720:	2109      	movs	r1, #9
c0de3722:	2240      	movs	r2, #64	@ 0x40
c0de3724:	f008 f93a 	bl	c0deb99c <cx_hash_init_ex>
c0de3728:	bb78      	cbnz	r0, c0de378a <RFC9591_taggedHash+0x8e>
c0de372a:	a808      	add	r0, sp, #32
c0de372c:	4669      	mov	r1, sp
c0de372e:	221d      	movs	r2, #29
c0de3730:	f008 f939 	bl	c0deb9a6 <cx_hash_update>
c0de3734:	bb48      	cbnz	r0, c0de378a <RFC9591_taggedHash+0x8e>
c0de3736:	a808      	add	r0, sp, #32
c0de3738:	4639      	mov	r1, r7
c0de373a:	4632      	mov	r2, r6
c0de373c:	f008 f933 	bl	c0deb9a6 <cx_hash_update>
c0de3740:	bb18      	cbnz	r0, c0de378a <RFC9591_taggedHash+0x8e>
c0de3742:	a808      	add	r0, sp, #32
c0de3744:	4629      	mov	r1, r5
c0de3746:	4622      	mov	r2, r4
c0de3748:	f008 f92d 	bl	c0deb9a6 <cx_hash_update>
c0de374c:	b9e8      	cbnz	r0, c0de378a <RFC9591_taggedHash+0x8e>
c0de374e:	a808      	add	r0, sp, #32
c0de3750:	ae48      	add	r6, sp, #288	@ 0x120
c0de3752:	4631      	mov	r1, r6
c0de3754:	f008 f91d 	bl	c0deb992 <cx_hash_final>
c0de3758:	b9b8      	cbnz	r0, c0de378a <RFC9591_taggedHash+0x8e>
c0de375a:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de375e:	2000      	movs	r0, #0
c0de3760:	213f      	movs	r1, #63	@ 0x3f
c0de3762:	2820      	cmp	r0, #32
c0de3764:	d002      	beq.n	c0de376c <RFC9591_taggedHash+0x70>
c0de3766:	f000 f8dd 	bl	c0de3924 <OUTLINED_FUNCTION_3>
c0de376a:	e7fa      	b.n	c0de3762 <RFC9591_taggedHash+0x66>
c0de376c:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de376e:	a948      	add	r1, sp, #288	@ 0x120
c0de3770:	2240      	movs	r2, #64	@ 0x40
c0de3772:	f008 fbd7 	bl	c0debf24 <cx_bn_init>
c0de3776:	b940      	cbnz	r0, c0de378a <RFC9591_taggedHash+0x8e>
c0de3778:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de377a:	4628      	mov	r0, r5
c0de377c:	4622      	mov	r2, r4
c0de377e:	f008 fc45 	bl	c0dec00c <cx_bn_reduce>
c0de3782:	b910      	cbnz	r0, c0de378a <RFC9591_taggedHash+0x8e>
c0de3784:	a858      	add	r0, sp, #352	@ 0x160
c0de3786:	f008 fbb9 	bl	c0debefc <cx_bn_destroy>
c0de378a:	b059      	add	sp, #356	@ 0x164
c0de378c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de378e:	bf00      	nop
c0de3790:	0000baa8 	.word	0x0000baa8

c0de3794 <Babyfrost_H1>:
c0de3794:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3796:	4605      	mov	r5, r0
c0de3798:	206f      	movs	r0, #111	@ 0x6f
c0de379a:	f000 f8b7 	bl	c0de390c <OUTLINED_FUNCTION_1>
c0de379e:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de37a2:	f000 f8ba 	bl	c0de391a <OUTLINED_FUNCTION_2>
c0de37a6:	a803      	add	r0, sp, #12
c0de37a8:	f7ff ffa8 	bl	c0de36fc <RFC9591_taggedHash>
c0de37ac:	b004      	add	sp, #16
c0de37ae:	bdb0      	pop	{r4, r5, r7, pc}

c0de37b0 <Babyfrost_H3>:
c0de37b0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de37b2:	4605      	mov	r5, r0
c0de37b4:	2065      	movs	r0, #101	@ 0x65
c0de37b6:	460c      	mov	r4, r1
c0de37b8:	e9cd 2300 	strd	r2, r3, [sp]
c0de37bc:	2105      	movs	r1, #5
c0de37be:	f88d 000c 	strb.w	r0, [sp, #12]
c0de37c2:	4804      	ldr	r0, [pc, #16]	@ (c0de37d4 <Babyfrost_H3+0x24>)
c0de37c4:	462a      	mov	r2, r5
c0de37c6:	4623      	mov	r3, r4
c0de37c8:	9002      	str	r0, [sp, #8]
c0de37ca:	a802      	add	r0, sp, #8
c0de37cc:	f7ff ff96 	bl	c0de36fc <RFC9591_taggedHash>
c0de37d0:	b004      	add	sp, #16
c0de37d2:	bdb0      	pop	{r4, r5, r7, pc}
c0de37d4:	636e6f6e 	.word	0x636e6f6e

c0de37d8 <Babyfrost_H4>:
c0de37d8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de37da:	4605      	mov	r5, r0
c0de37dc:	2067      	movs	r0, #103	@ 0x67
c0de37de:	f000 f895 	bl	c0de390c <OUTLINED_FUNCTION_1>
c0de37e2:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de37e6:	f000 f898 	bl	c0de391a <OUTLINED_FUNCTION_2>
c0de37ea:	a803      	add	r0, sp, #12
c0de37ec:	f7ff ff86 	bl	c0de36fc <RFC9591_taggedHash>
c0de37f0:	b004      	add	sp, #16
c0de37f2:	bdb0      	pop	{r4, r5, r7, pc}

c0de37f4 <Babyfrost_H5>:
c0de37f4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de37f6:	4605      	mov	r5, r0
c0de37f8:	206d      	movs	r0, #109	@ 0x6d
c0de37fa:	f000 f887 	bl	c0de390c <OUTLINED_FUNCTION_1>
c0de37fe:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3802:	f000 f88a 	bl	c0de391a <OUTLINED_FUNCTION_2>
c0de3806:	a803      	add	r0, sp, #12
c0de3808:	f7ff ff78 	bl	c0de36fc <RFC9591_taggedHash>
c0de380c:	b004      	add	sp, #16
c0de380e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3810 <zkn_frost_hash_init>:
c0de3810:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3812:	461d      	mov	r5, r3
c0de3814:	4604      	mov	r4, r0
c0de3816:	f008 f8c1 	bl	c0deb99c <cx_hash_init_ex>
c0de381a:	b938      	cbnz	r0, c0de382c <zkn_frost_hash_init+0x1c>
c0de381c:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de3820:	9e08      	ldr	r6, [sp, #32]
c0de3822:	4620      	mov	r0, r4
c0de3824:	4629      	mov	r1, r5
c0de3826:	f008 f8be 	bl	c0deb9a6 <cx_hash_update>
c0de382a:	b100      	cbz	r0, c0de382e <zkn_frost_hash_init+0x1e>
c0de382c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de382e:	4620      	mov	r0, r4
c0de3830:	4639      	mov	r1, r7
c0de3832:	4632      	mov	r2, r6
c0de3834:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de3838:	f008 b8b5 	b.w	c0deb9a6 <cx_hash_update>

c0de383c <zkn_frost_H1_init>:
c0de383c:	b570      	push	{r4, r5, r6, lr}
c0de383e:	b08c      	sub	sp, #48	@ 0x30
c0de3840:	4604      	mov	r4, r0
c0de3842:	206f      	movs	r0, #111	@ 0x6f
c0de3844:	221d      	movs	r2, #29
c0de3846:	261d      	movs	r6, #29
c0de3848:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de384c:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3850:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3854:	ad03      	add	r5, sp, #12
c0de3856:	4905      	ldr	r1, [pc, #20]	@ (c0de386c <zkn_frost_H1_init+0x30>)
c0de3858:	4628      	mov	r0, r5
c0de385a:	4479      	add	r1, pc
c0de385c:	f008 fe04 	bl	c0dec468 <__aeabi_memcpy>
c0de3860:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3862:	f000 f849 	bl	c0de38f8 <OUTLINED_FUNCTION_0>
c0de3866:	b00c      	add	sp, #48	@ 0x30
c0de3868:	bd70      	pop	{r4, r5, r6, pc}
c0de386a:	bf00      	nop
c0de386c:	0000b966 	.word	0x0000b966

c0de3870 <zkn_frost_H5_init>:
c0de3870:	b570      	push	{r4, r5, r6, lr}
c0de3872:	b08c      	sub	sp, #48	@ 0x30
c0de3874:	4604      	mov	r4, r0
c0de3876:	206d      	movs	r0, #109	@ 0x6d
c0de3878:	221d      	movs	r2, #29
c0de387a:	261d      	movs	r6, #29
c0de387c:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3880:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3884:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3888:	ad03      	add	r5, sp, #12
c0de388a:	4905      	ldr	r1, [pc, #20]	@ (c0de38a0 <zkn_frost_H5_init+0x30>)
c0de388c:	4628      	mov	r0, r5
c0de388e:	4479      	add	r1, pc
c0de3890:	f008 fdea 	bl	c0dec468 <__aeabi_memcpy>
c0de3894:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3896:	f000 f82f 	bl	c0de38f8 <OUTLINED_FUNCTION_0>
c0de389a:	b00c      	add	sp, #48	@ 0x30
c0de389c:	bd70      	pop	{r4, r5, r6, pc}
c0de389e:	bf00      	nop
c0de38a0:	0000b932 	.word	0x0000b932

c0de38a4 <zkn_frost_hash_update>:
c0de38a4:	f008 b87f 	b.w	c0deb9a6 <cx_hash_update>

c0de38a8 <zkn_frost_hash_final>:
c0de38a8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de38aa:	b091      	sub	sp, #68	@ 0x44
c0de38ac:	460c      	mov	r4, r1
c0de38ae:	4607      	mov	r7, r0
c0de38b0:	a810      	add	r0, sp, #64	@ 0x40
c0de38b2:	2140      	movs	r1, #64	@ 0x40
c0de38b4:	4615      	mov	r5, r2
c0de38b6:	f008 fb0b 	bl	c0debed0 <cx_bn_alloc>
c0de38ba:	b9d8      	cbnz	r0, c0de38f4 <zkn_frost_hash_final+0x4c>
c0de38bc:	466e      	mov	r6, sp
c0de38be:	4638      	mov	r0, r7
c0de38c0:	4631      	mov	r1, r6
c0de38c2:	f008 f866 	bl	c0deb992 <cx_hash_final>
c0de38c6:	b9a8      	cbnz	r0, c0de38f4 <zkn_frost_hash_final+0x4c>
c0de38c8:	2000      	movs	r0, #0
c0de38ca:	213f      	movs	r1, #63	@ 0x3f
c0de38cc:	2820      	cmp	r0, #32
c0de38ce:	d002      	beq.n	c0de38d6 <zkn_frost_hash_final+0x2e>
c0de38d0:	f000 f828 	bl	c0de3924 <OUTLINED_FUNCTION_3>
c0de38d4:	e7fa      	b.n	c0de38cc <zkn_frost_hash_final+0x24>
c0de38d6:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de38d8:	4669      	mov	r1, sp
c0de38da:	2240      	movs	r2, #64	@ 0x40
c0de38dc:	f008 fb22 	bl	c0debf24 <cx_bn_init>
c0de38e0:	b940      	cbnz	r0, c0de38f4 <zkn_frost_hash_final+0x4c>
c0de38e2:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de38e4:	4628      	mov	r0, r5
c0de38e6:	4622      	mov	r2, r4
c0de38e8:	f008 fb90 	bl	c0dec00c <cx_bn_reduce>
c0de38ec:	b910      	cbnz	r0, c0de38f4 <zkn_frost_hash_final+0x4c>
c0de38ee:	a810      	add	r0, sp, #64	@ 0x40
c0de38f0:	f008 fb04 	bl	c0debefc <cx_bn_destroy>
c0de38f4:	b011      	add	sp, #68	@ 0x44
c0de38f6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de38f8 <OUTLINED_FUNCTION_0>:
c0de38f8:	2003      	movs	r0, #3
c0de38fa:	2240      	movs	r2, #64	@ 0x40
c0de38fc:	462b      	mov	r3, r5
c0de38fe:	e9cd 6100 	strd	r6, r1, [sp]
c0de3902:	9002      	str	r0, [sp, #8]
c0de3904:	4620      	mov	r0, r4
c0de3906:	2109      	movs	r1, #9
c0de3908:	f7ff bf82 	b.w	c0de3810 <zkn_frost_hash_init>

c0de390c <OUTLINED_FUNCTION_1>:
c0de390c:	460c      	mov	r4, r1
c0de390e:	e9cd 2300 	strd	r2, r3, [sp]
c0de3912:	2103      	movs	r1, #3
c0de3914:	f88d 000e 	strb.w	r0, [sp, #14]
c0de3918:	4770      	bx	lr

c0de391a <OUTLINED_FUNCTION_2>:
c0de391a:	462a      	mov	r2, r5
c0de391c:	4623      	mov	r3, r4
c0de391e:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de3922:	4770      	bx	lr

c0de3924 <OUTLINED_FUNCTION_3>:
c0de3924:	5c32      	ldrb	r2, [r6, r0]
c0de3926:	5c73      	ldrb	r3, [r6, r1]
c0de3928:	5433      	strb	r3, [r6, r0]
c0de392a:	5472      	strb	r2, [r6, r1]
c0de392c:	3901      	subs	r1, #1
c0de392e:	3001      	adds	r0, #1
c0de3930:	4770      	bx	lr

c0de3932 <os_io_handle_default_apdu>:
c0de3932:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3934:	b09d      	sub	sp, #116	@ 0x74
c0de3936:	4615      	mov	r5, r2
c0de3938:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de393a:	b3c8      	cbz	r0, c0de39b0 <os_io_handle_default_apdu+0x7e>
c0de393c:	b3c1      	cbz	r1, c0de39b0 <os_io_handle_default_apdu+0x7e>
c0de393e:	b3bd      	cbz	r5, c0de39b0 <os_io_handle_default_apdu+0x7e>
c0de3940:	461c      	mov	r4, r3
c0de3942:	b3ab      	cbz	r3, c0de39b0 <os_io_handle_default_apdu+0x7e>
c0de3944:	b10a      	cbz	r2, c0de394a <os_io_handle_default_apdu+0x18>
c0de3946:	2100      	movs	r1, #0
c0de3948:	7011      	strb	r1, [r2, #0]
c0de394a:	7801      	ldrb	r1, [r0, #0]
c0de394c:	29b0      	cmp	r1, #176	@ 0xb0
c0de394e:	d131      	bne.n	c0de39b4 <os_io_handle_default_apdu+0x82>
c0de3950:	7841      	ldrb	r1, [r0, #1]
c0de3952:	29a7      	cmp	r1, #167	@ 0xa7
c0de3954:	d031      	beq.n	c0de39ba <os_io_handle_default_apdu+0x88>
c0de3956:	2906      	cmp	r1, #6
c0de3958:	d036      	beq.n	c0de39c8 <os_io_handle_default_apdu+0x96>
c0de395a:	2901      	cmp	r1, #1
c0de395c:	d131      	bne.n	c0de39c2 <os_io_handle_default_apdu+0x90>
c0de395e:	7881      	ldrb	r1, [r0, #2]
c0de3960:	bb79      	cbnz	r1, c0de39c2 <os_io_handle_default_apdu+0x90>
c0de3962:	78c0      	ldrb	r0, [r0, #3]
c0de3964:	bb68      	cbnz	r0, c0de39c2 <os_io_handle_default_apdu+0x90>
c0de3966:	6820      	ldr	r0, [r4, #0]
c0de3968:	2100      	movs	r1, #0
c0de396a:	6021      	str	r1, [r4, #0]
c0de396c:	2803      	cmp	r0, #3
c0de396e:	d321      	bcc.n	c0de39b4 <os_io_handle_default_apdu+0x82>
c0de3970:	2601      	movs	r6, #1
c0de3972:	1ec7      	subs	r7, r0, #3
c0de3974:	6026      	str	r6, [r4, #0]
c0de3976:	702e      	strb	r6, [r5, #0]
c0de3978:	6820      	ldr	r0, [r4, #0]
c0de397a:	1a3a      	subs	r2, r7, r0
c0de397c:	4428      	add	r0, r5
c0de397e:	1c41      	adds	r1, r0, #1
c0de3980:	2001      	movs	r0, #1
c0de3982:	f008 fc1f 	bl	c0dec1c4 <os_registry_get_current_app_tag>
c0de3986:	f000 f83f 	bl	c0de3a08 <OUTLINED_FUNCTION_0>
c0de398a:	6020      	str	r0, [r4, #0]
c0de398c:	1a3a      	subs	r2, r7, r0
c0de398e:	4428      	add	r0, r5
c0de3990:	1c41      	adds	r1, r0, #1
c0de3992:	2002      	movs	r0, #2
c0de3994:	f008 fc16 	bl	c0dec1c4 <os_registry_get_current_app_tag>
c0de3998:	f000 f836 	bl	c0de3a08 <OUTLINED_FUNCTION_0>
c0de399c:	1c41      	adds	r1, r0, #1
c0de399e:	6021      	str	r1, [r4, #0]
c0de39a0:	542e      	strb	r6, [r5, r0]
c0de39a2:	f008 fbfb 	bl	c0dec19c <os_flags>
c0de39a6:	6821      	ldr	r1, [r4, #0]
c0de39a8:	1c4a      	adds	r2, r1, #1
c0de39aa:	6022      	str	r2, [r4, #0]
c0de39ac:	5468      	strb	r0, [r5, r1]
c0de39ae:	e028      	b.n	c0de3a02 <os_io_handle_default_apdu+0xd0>
c0de39b0:	7814      	ldrb	r4, [r2, #0]
c0de39b2:	e01e      	b.n	c0de39f2 <os_io_handle_default_apdu+0xc0>
c0de39b4:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de39b8:	e01b      	b.n	c0de39f2 <os_io_handle_default_apdu+0xc0>
c0de39ba:	7881      	ldrb	r1, [r0, #2]
c0de39bc:	b909      	cbnz	r1, c0de39c2 <os_io_handle_default_apdu+0x90>
c0de39be:	78c0      	ldrb	r0, [r0, #3]
c0de39c0:	b1d0      	cbz	r0, c0de39f8 <os_io_handle_default_apdu+0xc6>
c0de39c2:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de39c6:	e014      	b.n	c0de39f2 <os_io_handle_default_apdu+0xc0>
c0de39c8:	2100      	movs	r1, #0
c0de39ca:	6021      	str	r1, [r4, #0]
c0de39cc:	7883      	ldrb	r3, [r0, #2]
c0de39ce:	7902      	ldrb	r2, [r0, #4]
c0de39d0:	ad02      	add	r5, sp, #8
c0de39d2:	e9cd 1500 	strd	r1, r5, [sp]
c0de39d6:	1d41      	adds	r1, r0, #5
c0de39d8:	4618      	mov	r0, r3
c0de39da:	2300      	movs	r3, #0
c0de39dc:	f008 fbaa 	bl	c0dec134 <os_pki_load_certificate>
c0de39e0:	4604      	mov	r4, r0
c0de39e2:	4628      	mov	r0, r5
c0de39e4:	216c      	movs	r1, #108	@ 0x6c
c0de39e6:	f008 fd57 	bl	c0dec498 <explicit_bzero>
c0de39ea:	2c00      	cmp	r4, #0
c0de39ec:	bf08      	it	eq
c0de39ee:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de39f2:	4620      	mov	r0, r4
c0de39f4:	b01d      	add	sp, #116	@ 0x74
c0de39f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de39f8:	2000      	movs	r0, #0
c0de39fa:	6020      	str	r0, [r4, #0]
c0de39fc:	b10a      	cbz	r2, c0de3a02 <os_io_handle_default_apdu+0xd0>
c0de39fe:	2001      	movs	r0, #1
c0de3a00:	7010      	strb	r0, [r2, #0]
c0de3a02:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de3a06:	e7f4      	b.n	c0de39f2 <os_io_handle_default_apdu+0xc0>

c0de3a08 <OUTLINED_FUNCTION_0>:
c0de3a08:	6821      	ldr	r1, [r4, #0]
c0de3a0a:	1c4a      	adds	r2, r1, #1
c0de3a0c:	6022      	str	r2, [r4, #0]
c0de3a0e:	5468      	strb	r0, [r5, r1]
c0de3a10:	6821      	ldr	r1, [r4, #0]
c0de3a12:	4408      	add	r0, r1
c0de3a14:	4770      	bx	lr

c0de3a16 <os_io_seph_cmd_piezo_play_tune>:
c0de3a16:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de3a18:	280b      	cmp	r0, #11
c0de3a1a:	d902      	bls.n	c0de3a22 <os_io_seph_cmd_piezo_play_tune+0xc>
c0de3a1c:	f06f 0415 	mvn.w	r4, #21
c0de3a20:	e021      	b.n	c0de3a66 <os_io_seph_cmd_piezo_play_tune+0x50>
c0de3a22:	4605      	mov	r5, r0
c0de3a24:	2009      	movs	r0, #9
c0de3a26:	2100      	movs	r1, #0
c0de3a28:	2200      	movs	r2, #0
c0de3a2a:	2400      	movs	r4, #0
c0de3a2c:	f008 fbbe 	bl	c0dec1ac <os_setting_get>
c0de3a30:	2d08      	cmp	r5, #8
c0de3a32:	d802      	bhi.n	c0de3a3a <os_io_seph_cmd_piezo_play_tune+0x24>
c0de3a34:	f010 0102 	ands.w	r1, r0, #2
c0de3a38:	d115      	bne.n	c0de3a66 <os_io_seph_cmd_piezo_play_tune+0x50>
c0de3a3a:	2400      	movs	r4, #0
c0de3a3c:	2d09      	cmp	r5, #9
c0de3a3e:	d302      	bcc.n	c0de3a46 <os_io_seph_cmd_piezo_play_tune+0x30>
c0de3a40:	f010 0001 	ands.w	r0, r0, #1
c0de3a44:	d10f      	bne.n	c0de3a66 <os_io_seph_cmd_piezo_play_tune+0x50>
c0de3a46:	2056      	movs	r0, #86	@ 0x56
c0de3a48:	f88d 5007 	strb.w	r5, [sp, #7]
c0de3a4c:	f88d 4005 	strb.w	r4, [sp, #5]
c0de3a50:	2204      	movs	r2, #4
c0de3a52:	2300      	movs	r3, #0
c0de3a54:	f88d 0004 	strb.w	r0, [sp, #4]
c0de3a58:	2001      	movs	r0, #1
c0de3a5a:	f88d 0006 	strb.w	r0, [sp, #6]
c0de3a5e:	a901      	add	r1, sp, #4
c0de3a60:	f000 f803 	bl	c0de3a6a <OUTLINED_FUNCTION_1>
c0de3a64:	4604      	mov	r4, r0
c0de3a66:	4620      	mov	r0, r4
c0de3a68:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de3a6a <OUTLINED_FUNCTION_1>:
c0de3a6a:	2001      	movs	r0, #1
c0de3a6c:	f008 bbd4 	b.w	c0dec218 <os_io_tx_cmd>

c0de3a70 <io_process_itc_ux_event>:
c0de3a70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3a72:	4605      	mov	r5, r0
c0de3a74:	78c0      	ldrb	r0, [r0, #3]
c0de3a76:	2820      	cmp	r0, #32
c0de3a78:	d023      	beq.n	c0de3ac2 <io_process_itc_ux_event+0x52>
c0de3a7a:	2823      	cmp	r0, #35	@ 0x23
c0de3a7c:	d029      	beq.n	c0de3ad2 <io_process_itc_ux_event+0x62>
c0de3a7e:	460c      	mov	r4, r1
c0de3a80:	2822      	cmp	r0, #34	@ 0x22
c0de3a82:	d132      	bne.n	c0de3aea <io_process_itc_ux_event+0x7a>
c0de3a84:	4e1f      	ldr	r6, [pc, #124]	@ (c0de3b04 <io_process_itc_ux_event+0x94>)
c0de3a86:	2006      	movs	r0, #6
c0de3a88:	2118      	movs	r1, #24
c0de3a8a:	f809 0006 	strb.w	r0, [r9, r6]
c0de3a8e:	eb09 0706 	add.w	r7, r9, r6
c0de3a92:	2018      	movs	r0, #24
c0de3a94:	6078      	str	r0, [r7, #4]
c0de3a96:	f107 0008 	add.w	r0, r7, #8
c0de3a9a:	f008 fcef 	bl	c0dec47c <__aeabi_memclr>
c0de3a9e:	7928      	ldrb	r0, [r5, #4]
c0de3aa0:	7238      	strb	r0, [r7, #8]
c0de3aa2:	7868      	ldrb	r0, [r5, #1]
c0de3aa4:	78a9      	ldrb	r1, [r5, #2]
c0de3aa6:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3aaa:	3802      	subs	r0, #2
c0de3aac:	0401      	lsls	r1, r0, #16
c0de3aae:	d005      	beq.n	c0de3abc <io_process_itc_ux_event+0x4c>
c0de3ab0:	b282      	uxth	r2, r0
c0de3ab2:	2a10      	cmp	r2, #16
c0de3ab4:	d802      	bhi.n	c0de3abc <io_process_itc_ux_event+0x4c>
c0de3ab6:	1f60      	subs	r0, r4, #5
c0de3ab8:	4290      	cmp	r0, r2
c0de3aba:	d218      	bcs.n	c0de3aee <io_process_itc_ux_event+0x7e>
c0de3abc:	f06f 0415 	mvn.w	r4, #21
c0de3ac0:	e013      	b.n	c0de3aea <io_process_itc_ux_event+0x7a>
c0de3ac2:	2001      	movs	r0, #1
c0de3ac4:	f007 ff9e 	bl	c0deba04 <nbgl_objAllowDrawing>
c0de3ac8:	f007 ffab 	bl	c0deba22 <nbgl_screenRedraw>
c0de3acc:	f007 ff81 	bl	c0deb9d2 <nbgl_refresh>
c0de3ad0:	e00a      	b.n	c0de3ae8 <io_process_itc_ux_event+0x78>
c0de3ad2:	480c      	ldr	r0, [pc, #48]	@ (c0de3b04 <io_process_itc_ux_event+0x94>)
c0de3ad4:	2107      	movs	r1, #7
c0de3ad6:	f809 1000 	strb.w	r1, [r9, r0]
c0de3ada:	4448      	add	r0, r9
c0de3adc:	2101      	movs	r1, #1
c0de3ade:	6041      	str	r1, [r0, #4]
c0de3ae0:	7929      	ldrb	r1, [r5, #4]
c0de3ae2:	7201      	strb	r1, [r0, #8]
c0de3ae4:	f008 fb48 	bl	c0dec178 <os_ux>
c0de3ae8:	2400      	movs	r4, #0
c0de3aea:	4620      	mov	r0, r4
c0de3aec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3aee:	eb09 0406 	add.w	r4, r9, r6
c0de3af2:	1d69      	adds	r1, r5, #5
c0de3af4:	f104 0010 	add.w	r0, r4, #16
c0de3af8:	60e2      	str	r2, [r4, #12]
c0de3afa:	f008 fcb5 	bl	c0dec468 <__aeabi_memcpy>
c0de3afe:	4620      	mov	r0, r4
c0de3b00:	e7f0      	b.n	c0de3ae4 <io_process_itc_ux_event+0x74>
c0de3b02:	bf00      	nop
c0de3b04:	00000dc0 	.word	0x00000dc0

c0de3b08 <io_legacy_apdu_tx>:
c0de3b08:	b5b0      	push	{r4, r5, r7, lr}
c0de3b0a:	460a      	mov	r2, r1
c0de3b0c:	4601      	mov	r1, r0
c0de3b0e:	4808      	ldr	r0, [pc, #32]	@ (c0de3b30 <io_legacy_apdu_tx+0x28>)
c0de3b10:	2300      	movs	r3, #0
c0de3b12:	2500      	movs	r5, #0
c0de3b14:	eb09 0400 	add.w	r4, r9, r0
c0de3b18:	7860      	ldrb	r0, [r4, #1]
c0de3b1a:	f008 fb7d 	bl	c0dec218 <os_io_tx_cmd>
c0de3b1e:	4905      	ldr	r1, [pc, #20]	@ (c0de3b34 <io_legacy_apdu_tx+0x2c>)
c0de3b20:	7065      	strb	r5, [r4, #1]
c0de3b22:	f809 5001 	strb.w	r5, [r9, r1]
c0de3b26:	4904      	ldr	r1, [pc, #16]	@ (c0de3b38 <io_legacy_apdu_tx+0x30>)
c0de3b28:	4449      	add	r1, r9
c0de3b2a:	718d      	strb	r5, [r1, #6]
c0de3b2c:	bdb0      	pop	{r4, r5, r7, pc}
c0de3b2e:	bf00      	nop
c0de3b30:	000006e4 	.word	0x000006e4
c0de3b34:	00000de8 	.word	0x00000de8
c0de3b38:	000006d8 	.word	0x000006d8

c0de3b3c <io_legacy_apdu_rx>:
c0de3b3c:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de3b40:	4e8c      	ldr	r6, [pc, #560]	@ (c0de3d74 <io_legacy_apdu_rx+0x238>)
c0de3b42:	2100      	movs	r1, #0
c0de3b44:	4605      	mov	r5, r0
c0de3b46:	2200      	movs	r2, #0
c0de3b48:	2301      	movs	r3, #1
c0de3b4a:	f88d 100f 	strb.w	r1, [sp, #15]
c0de3b4e:	f240 1111 	movw	r1, #273	@ 0x111
c0de3b52:	eb09 0006 	add.w	r0, r9, r6
c0de3b56:	f008 fb6b 	bl	c0dec230 <os_io_rx_evt>
c0de3b5a:	4604      	mov	r4, r0
c0de3b5c:	2801      	cmp	r0, #1
c0de3b5e:	f2c0 80f9 	blt.w	c0de3d54 <io_legacy_apdu_rx+0x218>
c0de3b62:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3b66:	f1a0 0110 	sub.w	r1, r0, #16
c0de3b6a:	2916      	cmp	r1, #22
c0de3b6c:	d805      	bhi.n	c0de3b7a <io_legacy_apdu_rx+0x3e>
c0de3b6e:	2201      	movs	r2, #1
c0de3b70:	fa02 f101 	lsl.w	r1, r2, r1
c0de3b74:	4a80      	ldr	r2, [pc, #512]	@ (c0de3d78 <io_legacy_apdu_rx+0x23c>)
c0de3b76:	4211      	tst	r1, r2
c0de3b78:	d107      	bne.n	c0de3b8a <io_legacy_apdu_rx+0x4e>
c0de3b7a:	1e41      	subs	r1, r0, #1
c0de3b7c:	2902      	cmp	r1, #2
c0de3b7e:	d379      	bcc.n	c0de3c74 <io_legacy_apdu_rx+0x138>
c0de3b80:	2830      	cmp	r0, #48	@ 0x30
c0de3b82:	bf18      	it	ne
c0de3b84:	2840      	cmpne	r0, #64	@ 0x40
c0de3b86:	f040 8089 	bne.w	c0de3c9c <io_legacy_apdu_rx+0x160>
c0de3b8a:	4f7c      	ldr	r7, [pc, #496]	@ (c0de3d7c <io_legacy_apdu_rx+0x240>)
c0de3b8c:	eb09 0107 	add.w	r1, r9, r7
c0de3b90:	7048      	strb	r0, [r1, #1]
c0de3b92:	f008 fadf 	bl	c0dec154 <os_perso_is_pin_set>
c0de3b96:	28aa      	cmp	r0, #170	@ 0xaa
c0de3b98:	d103      	bne.n	c0de3ba2 <io_legacy_apdu_rx+0x66>
c0de3b9a:	f008 fae4 	bl	c0dec166 <os_global_pin_is_validated>
c0de3b9e:	28aa      	cmp	r0, #170	@ 0xaa
c0de3ba0:	d156      	bne.n	c0de3c50 <io_legacy_apdu_rx+0x114>
c0de3ba2:	eb09 0006 	add.w	r0, r9, r6
c0de3ba6:	7840      	ldrb	r0, [r0, #1]
c0de3ba8:	28b0      	cmp	r0, #176	@ 0xb0
c0de3baa:	d12d      	bne.n	c0de3c08 <io_legacy_apdu_rx+0xcc>
c0de3bac:	f240 1011 	movw	r0, #273	@ 0x111
c0de3bb0:	1e61      	subs	r1, r4, #1
c0de3bb2:	9002      	str	r0, [sp, #8]
c0de3bb4:	f10d 000f 	add.w	r0, sp, #15
c0de3bb8:	9000      	str	r0, [sp, #0]
c0de3bba:	4871      	ldr	r0, [pc, #452]	@ (c0de3d80 <io_legacy_apdu_rx+0x244>)
c0de3bbc:	ab02      	add	r3, sp, #8
c0de3bbe:	eb09 0500 	add.w	r5, r9, r0
c0de3bc2:	eb09 0006 	add.w	r0, r9, r6
c0de3bc6:	3001      	adds	r0, #1
c0de3bc8:	462a      	mov	r2, r5
c0de3bca:	f7ff feb2 	bl	c0de3932 <os_io_handle_default_apdu>
c0de3bce:	2400      	movs	r4, #0
c0de3bd0:	9902      	ldr	r1, [sp, #8]
c0de3bd2:	eb09 0607 	add.w	r6, r9, r7
c0de3bd6:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de3bda:	bf18      	it	ne
c0de3bdc:	4621      	movne	r1, r4
c0de3bde:	0a02      	lsrs	r2, r0, #8
c0de3be0:	2300      	movs	r3, #0
c0de3be2:	546a      	strb	r2, [r5, r1]
c0de3be4:	186a      	adds	r2, r5, r1
c0de3be6:	7050      	strb	r0, [r2, #1]
c0de3be8:	1c88      	adds	r0, r1, #2
c0de3bea:	4629      	mov	r1, r5
c0de3bec:	9002      	str	r0, [sp, #8]
c0de3bee:	b282      	uxth	r2, r0
c0de3bf0:	7870      	ldrb	r0, [r6, #1]
c0de3bf2:	f008 fb11 	bl	c0dec218 <os_io_tx_cmd>
c0de3bf6:	f89d 100f 	ldrb.w	r1, [sp, #15]
c0de3bfa:	7074      	strb	r4, [r6, #1]
c0de3bfc:	2901      	cmp	r1, #1
c0de3bfe:	f000 80b5 	beq.w	c0de3d6c <io_legacy_apdu_rx+0x230>
c0de3c02:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3c06:	e0a5      	b.n	c0de3d54 <io_legacy_apdu_rx+0x218>
c0de3c08:	eb09 0007 	add.w	r0, r9, r7
c0de3c0c:	7847      	ldrb	r7, [r0, #1]
c0de3c0e:	2f10      	cmp	r7, #16
c0de3c10:	d05f      	beq.n	c0de3cd2 <io_legacy_apdu_rx+0x196>
c0de3c12:	2f40      	cmp	r7, #64	@ 0x40
c0de3c14:	d05f      	beq.n	c0de3cd6 <io_legacy_apdu_rx+0x19a>
c0de3c16:	2f21      	cmp	r7, #33	@ 0x21
c0de3c18:	d06f      	beq.n	c0de3cfa <io_legacy_apdu_rx+0x1be>
c0de3c1a:	2f22      	cmp	r7, #34	@ 0x22
c0de3c1c:	d048      	beq.n	c0de3cb0 <io_legacy_apdu_rx+0x174>
c0de3c1e:	2f23      	cmp	r7, #35	@ 0x23
c0de3c20:	d048      	beq.n	c0de3cb4 <io_legacy_apdu_rx+0x178>
c0de3c22:	2f30      	cmp	r7, #48	@ 0x30
c0de3c24:	d053      	beq.n	c0de3cce <io_legacy_apdu_rx+0x192>
c0de3c26:	2f20      	cmp	r7, #32
c0de3c28:	d171      	bne.n	c0de3d0e <io_legacy_apdu_rx+0x1d2>
c0de3c2a:	4d56      	ldr	r5, [pc, #344]	@ (c0de3d84 <io_legacy_apdu_rx+0x248>)
c0de3c2c:	2701      	movs	r7, #1
c0de3c2e:	eb09 0106 	add.w	r1, r9, r6
c0de3c32:	3c01      	subs	r4, #1
c0de3c34:	3101      	adds	r1, #1
c0de3c36:	4622      	mov	r2, r4
c0de3c38:	eb09 0005 	add.w	r0, r9, r5
c0de3c3c:	7187      	strb	r7, [r0, #6]
c0de3c3e:	4850      	ldr	r0, [pc, #320]	@ (c0de3d80 <io_legacy_apdu_rx+0x244>)
c0de3c40:	4448      	add	r0, r9
c0de3c42:	f008 fc11 	bl	c0dec468 <__aeabi_memcpy>
c0de3c46:	4850      	ldr	r0, [pc, #320]	@ (c0de3d88 <io_legacy_apdu_rx+0x24c>)
c0de3c48:	f809 7000 	strb.w	r7, [r9, r0]
c0de3c4c:	2008      	movs	r0, #8
c0de3c4e:	e051      	b.n	c0de3cf4 <io_legacy_apdu_rx+0x1b8>
c0de3c50:	484b      	ldr	r0, [pc, #300]	@ (c0de3d80 <io_legacy_apdu_rx+0x244>)
c0de3c52:	2155      	movs	r1, #85	@ 0x55
c0de3c54:	2202      	movs	r2, #2
c0de3c56:	2300      	movs	r3, #0
c0de3c58:	f809 1000 	strb.w	r1, [r9, r0]
c0de3c5c:	eb09 0100 	add.w	r1, r9, r0
c0de3c60:	2015      	movs	r0, #21
c0de3c62:	7048      	strb	r0, [r1, #1]
c0de3c64:	eb09 0007 	add.w	r0, r9, r7
c0de3c68:	7840      	ldrb	r0, [r0, #1]
c0de3c6a:	b004      	add	sp, #16
c0de3c6c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de3c70:	f008 bad2 	b.w	c0dec218 <os_io_tx_cmd>
c0de3c74:	4f45      	ldr	r7, [pc, #276]	@ (c0de3d8c <io_legacy_apdu_rx+0x250>)
c0de3c76:	444e      	add	r6, r9
c0de3c78:	3c01      	subs	r4, #1
c0de3c7a:	1c71      	adds	r1, r6, #1
c0de3c7c:	4622      	mov	r2, r4
c0de3c7e:	eb09 0007 	add.w	r0, r9, r7
c0de3c82:	f008 fbf1 	bl	c0dec468 <__aeabi_memcpy>
c0de3c86:	7870      	ldrb	r0, [r6, #1]
c0de3c88:	281a      	cmp	r0, #26
c0de3c8a:	d10a      	bne.n	c0de3ca2 <io_legacy_apdu_rx+0x166>
c0de3c8c:	eb09 0007 	add.w	r0, r9, r7
c0de3c90:	4621      	mov	r1, r4
c0de3c92:	b004      	add	sp, #16
c0de3c94:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de3c98:	f7ff beea 	b.w	c0de3a70 <io_process_itc_ux_event>
c0de3c9c:	2842      	cmp	r0, #66	@ 0x42
c0de3c9e:	d158      	bne.n	c0de3d52 <io_legacy_apdu_rx+0x216>
c0de3ca0:	e058      	b.n	c0de3d54 <io_legacy_apdu_rx+0x218>
c0de3ca2:	2d00      	cmp	r5, #0
c0de3ca4:	d04b      	beq.n	c0de3d3e <io_legacy_apdu_rx+0x202>
c0de3ca6:	2000      	movs	r0, #0
c0de3ca8:	2400      	movs	r4, #0
c0de3caa:	f007 fb81 	bl	c0deb3b0 <io_event>
c0de3cae:	e051      	b.n	c0de3d54 <io_legacy_apdu_rx+0x218>
c0de3cb0:	2004      	movs	r0, #4
c0de3cb2:	e023      	b.n	c0de3cfc <io_legacy_apdu_rx+0x1c0>
c0de3cb4:	4d33      	ldr	r5, [pc, #204]	@ (c0de3d84 <io_legacy_apdu_rx+0x248>)
c0de3cb6:	2107      	movs	r1, #7
c0de3cb8:	3c01      	subs	r4, #1
c0de3cba:	4622      	mov	r2, r4
c0de3cbc:	eb09 0005 	add.w	r0, r9, r5
c0de3cc0:	7181      	strb	r1, [r0, #6]
c0de3cc2:	482f      	ldr	r0, [pc, #188]	@ (c0de3d80 <io_legacy_apdu_rx+0x244>)
c0de3cc4:	f000 f886 	bl	c0de3dd4 <OUTLINED_FUNCTION_0>
c0de3cc8:	482f      	ldr	r0, [pc, #188]	@ (c0de3d88 <io_legacy_apdu_rx+0x24c>)
c0de3cca:	2101      	movs	r1, #1
c0de3ccc:	e00f      	b.n	c0de3cee <io_legacy_apdu_rx+0x1b2>
c0de3cce:	2002      	movs	r0, #2
c0de3cd0:	e014      	b.n	c0de3cfc <io_legacy_apdu_rx+0x1c0>
c0de3cd2:	2006      	movs	r0, #6
c0de3cd4:	e012      	b.n	c0de3cfc <io_legacy_apdu_rx+0x1c0>
c0de3cd6:	4d2b      	ldr	r5, [pc, #172]	@ (c0de3d84 <io_legacy_apdu_rx+0x248>)
c0de3cd8:	2103      	movs	r1, #3
c0de3cda:	3c01      	subs	r4, #1
c0de3cdc:	4622      	mov	r2, r4
c0de3cde:	eb09 0005 	add.w	r0, r9, r5
c0de3ce2:	7181      	strb	r1, [r0, #6]
c0de3ce4:	4826      	ldr	r0, [pc, #152]	@ (c0de3d80 <io_legacy_apdu_rx+0x244>)
c0de3ce6:	f000 f875 	bl	c0de3dd4 <OUTLINED_FUNCTION_0>
c0de3cea:	4827      	ldr	r0, [pc, #156]	@ (c0de3d88 <io_legacy_apdu_rx+0x24c>)
c0de3cec:	2102      	movs	r1, #2
c0de3cee:	f809 1000 	strb.w	r1, [r9, r0]
c0de3cf2:	200a      	movs	r0, #10
c0de3cf4:	f809 0005 	strb.w	r0, [r9, r5]
c0de3cf8:	e02c      	b.n	c0de3d54 <io_legacy_apdu_rx+0x218>
c0de3cfa:	2005      	movs	r0, #5
c0de3cfc:	4921      	ldr	r1, [pc, #132]	@ (c0de3d84 <io_legacy_apdu_rx+0x248>)
c0de3cfe:	3c01      	subs	r4, #1
c0de3d00:	4622      	mov	r2, r4
c0de3d02:	4449      	add	r1, r9
c0de3d04:	7188      	strb	r0, [r1, #6]
c0de3d06:	481e      	ldr	r0, [pc, #120]	@ (c0de3d80 <io_legacy_apdu_rx+0x244>)
c0de3d08:	f000 f864 	bl	c0de3dd4 <OUTLINED_FUNCTION_0>
c0de3d0c:	e022      	b.n	c0de3d54 <io_legacy_apdu_rx+0x218>
c0de3d0e:	f8df 8074 	ldr.w	r8, [pc, #116]	@ c0de3d84 <io_legacy_apdu_rx+0x248>
c0de3d12:	2100      	movs	r1, #0
c0de3d14:	1e65      	subs	r5, r4, #1
c0de3d16:	462a      	mov	r2, r5
c0de3d18:	eb09 0008 	add.w	r0, r9, r8
c0de3d1c:	7181      	strb	r1, [r0, #6]
c0de3d1e:	4818      	ldr	r0, [pc, #96]	@ (c0de3d80 <io_legacy_apdu_rx+0x244>)
c0de3d20:	f000 f858 	bl	c0de3dd4 <OUTLINED_FUNCTION_0>
c0de3d24:	2f25      	cmp	r7, #37	@ 0x25
c0de3d26:	d019      	beq.n	c0de3d5c <io_legacy_apdu_rx+0x220>
c0de3d28:	2f24      	cmp	r7, #36	@ 0x24
c0de3d2a:	d106      	bne.n	c0de3d3a <io_legacy_apdu_rx+0x1fe>
c0de3d2c:	200b      	movs	r0, #11
c0de3d2e:	2101      	movs	r1, #1
c0de3d30:	f809 0008 	strb.w	r0, [r9, r8]
c0de3d34:	4814      	ldr	r0, [pc, #80]	@ (c0de3d88 <io_legacy_apdu_rx+0x24c>)
c0de3d36:	f809 1000 	strb.w	r1, [r9, r0]
c0de3d3a:	462c      	mov	r4, r5
c0de3d3c:	e00a      	b.n	c0de3d54 <io_legacy_apdu_rx+0x218>
c0de3d3e:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3d42:	2815      	cmp	r0, #21
c0de3d44:	d8af      	bhi.n	c0de3ca6 <io_legacy_apdu_rx+0x16a>
c0de3d46:	2101      	movs	r1, #1
c0de3d48:	fa01 f000 	lsl.w	r0, r1, r0
c0de3d4c:	4910      	ldr	r1, [pc, #64]	@ (c0de3d90 <io_legacy_apdu_rx+0x254>)
c0de3d4e:	4208      	tst	r0, r1
c0de3d50:	d0a9      	beq.n	c0de3ca6 <io_legacy_apdu_rx+0x16a>
c0de3d52:	2400      	movs	r4, #0
c0de3d54:	4620      	mov	r0, r4
c0de3d56:	b004      	add	sp, #16
c0de3d58:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3d5c:	200c      	movs	r0, #12
c0de3d5e:	2101      	movs	r1, #1
c0de3d60:	f809 0008 	strb.w	r0, [r9, r8]
c0de3d64:	4808      	ldr	r0, [pc, #32]	@ (c0de3d88 <io_legacy_apdu_rx+0x24c>)
c0de3d66:	f809 1000 	strb.w	r1, [r9, r0]
c0de3d6a:	e7f3      	b.n	c0de3d54 <io_legacy_apdu_rx+0x218>
c0de3d6c:	20ff      	movs	r0, #255	@ 0xff
c0de3d6e:	f008 fa35 	bl	c0dec1dc <os_sched_exit>
c0de3d72:	bf00      	nop
c0de3d74:	000005c5 	.word	0x000005c5
c0de3d78:	007f0001 	.word	0x007f0001
c0de3d7c:	000006e4 	.word	0x000006e4
c0de3d80:	000004b4 	.word	0x000004b4
c0de3d84:	000006d8 	.word	0x000006d8
c0de3d88:	00000de8 	.word	0x00000de8
c0de3d8c:	00000cac 	.word	0x00000cac
c0de3d90:	00205020 	.word	0x00205020

c0de3d94 <io_seproxyhal_init>:
c0de3d94:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3d96:	b089      	sub	sp, #36	@ 0x24
c0de3d98:	4d0c      	ldr	r5, [pc, #48]	@ (c0de3dcc <io_seproxyhal_init+0x38>)
c0de3d9a:	2600      	movs	r6, #0
c0de3d9c:	466c      	mov	r4, sp
c0de3d9e:	2118      	movs	r1, #24
c0de3da0:	eb09 0005 	add.w	r0, r9, r5
c0de3da4:	7046      	strb	r6, [r0, #1]
c0de3da6:	4620      	mov	r0, r4
c0de3da8:	f008 fb68 	bl	c0dec47c <__aeabi_memclr>
c0de3dac:	4808      	ldr	r0, [pc, #32]	@ (c0de3dd0 <io_seproxyhal_init+0x3c>)
c0de3dae:	2701      	movs	r7, #1
c0de3db0:	f88d 601e 	strb.w	r6, [sp, #30]
c0de3db4:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de3db8:	f8ad 701c 	strh.w	r7, [sp, #28]
c0de3dbc:	9006      	str	r0, [sp, #24]
c0de3dbe:	4620      	mov	r0, r4
c0de3dc0:	f008 fa16 	bl	c0dec1f0 <os_io_init>
c0de3dc4:	f809 7005 	strb.w	r7, [r9, r5]
c0de3dc8:	b009      	add	sp, #36	@ 0x24
c0de3dca:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3dcc:	000006e4 	.word	0x000006e4
c0de3dd0:	00020015 	.word	0x00020015

c0de3dd4 <OUTLINED_FUNCTION_0>:
c0de3dd4:	eb09 0106 	add.w	r1, r9, r6
c0de3dd8:	3101      	adds	r1, #1
c0de3dda:	4448      	add	r0, r9
c0de3ddc:	f008 bb44 	b.w	c0dec468 <__aeabi_memcpy>

c0de3de0 <layoutAddCallbackObj>:
c0de3de0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3de2:	f890 40ad 	ldrb.w	r4, [r0, #173]	@ 0xad
c0de3de6:	f890 50ae 	ldrb.w	r5, [r0, #174]	@ 0xae
c0de3dea:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3dee:	f3c4 2505 	ubfx	r5, r4, #8, #6
c0de3df2:	2d0e      	cmp	r5, #14
c0de3df4:	bf84      	itt	hi
c0de3df6:	2000      	movhi	r0, #0
c0de3df8:	bdf0      	pophi	{r4, r5, r6, r7, pc}
c0de3dfa:	0a26      	lsrs	r6, r4, #8
c0de3dfc:	f404 4740 	and.w	r7, r4, #49152	@ 0xc000
c0de3e00:	f880 40ad 	strb.w	r4, [r0, #173]	@ 0xad
c0de3e04:	3601      	adds	r6, #1
c0de3e06:	f006 063f 	and.w	r6, r6, #63	@ 0x3f
c0de3e0a:	ea47 2606 	orr.w	r6, r7, r6, lsl #8
c0de3e0e:	0a36      	lsrs	r6, r6, #8
c0de3e10:	f880 60ae 	strb.w	r6, [r0, #174]	@ 0xae
c0de3e14:	eb00 00c5 	add.w	r0, r0, r5, lsl #3
c0de3e18:	f840 1f20 	str.w	r1, [r0, #32]!
c0de3e1c:	7102      	strb	r2, [r0, #4]
c0de3e1e:	7183      	strb	r3, [r0, #6]
c0de3e20:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de3e24 <nbgl_layoutGet>:
c0de3e24:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de3e28:	b085      	sub	sp, #20
c0de3e2a:	4605      	mov	r5, r0
c0de3e2c:	7800      	ldrb	r0, [r0, #0]
c0de3e2e:	b190      	cbz	r0, c0de3e56 <nbgl_layoutGet+0x32>
c0de3e30:	486c      	ldr	r0, [pc, #432]	@ (c0de3fe4 <nbgl_layoutGet+0x1c0>)
c0de3e32:	496d      	ldr	r1, [pc, #436]	@ (c0de3fe8 <nbgl_layoutGet+0x1c4>)
c0de3e34:	2400      	movs	r4, #0
c0de3e36:	b158      	cbz	r0, c0de3e50 <nbgl_layoutGet+0x2c>
c0de3e38:	eb09 0201 	add.w	r2, r9, r1
c0de3e3c:	4402      	add	r2, r0
c0de3e3e:	f892 32ca 	ldrb.w	r3, [r2, #714]	@ 0x2ca
c0de3e42:	021b      	lsls	r3, r3, #8
c0de3e44:	045b      	lsls	r3, r3, #17
c0de3e46:	bf58      	it	pl
c0de3e48:	f502 7407 	addpl.w	r4, r2, #540	@ 0x21c
c0de3e4c:	30b4      	adds	r0, #180	@ 0xb4
c0de3e4e:	e7f2      	b.n	c0de3e36 <nbgl_layoutGet+0x12>
c0de3e50:	b974      	cbnz	r4, c0de3e70 <nbgl_layoutGet+0x4c>
c0de3e52:	2400      	movs	r4, #0
c0de3e54:	e0c2      	b.n	c0de3fdc <nbgl_layoutGet+0x1b8>
c0de3e56:	4965      	ldr	r1, [pc, #404]	@ (c0de3fec <nbgl_layoutGet+0x1c8>)
c0de3e58:	4863      	ldr	r0, [pc, #396]	@ (c0de3fe8 <nbgl_layoutGet+0x1c4>)
c0de3e5a:	eb09 0201 	add.w	r2, r9, r1
c0de3e5e:	6852      	ldr	r2, [r2, #4]
c0de3e60:	b112      	cbz	r2, c0de3e68 <nbgl_layoutGet+0x44>
c0de3e62:	eb09 0400 	add.w	r4, r9, r0
c0de3e66:	e003      	b.n	c0de3e70 <nbgl_layoutGet+0x4c>
c0de3e68:	eb09 0400 	add.w	r4, r9, r0
c0de3e6c:	4449      	add	r1, r9
c0de3e6e:	604c      	str	r4, [r1, #4]
c0de3e70:	4e5d      	ldr	r6, [pc, #372]	@ (c0de3fe8 <nbgl_layoutGet+0x1c4>)
c0de3e72:	4620      	mov	r0, r4
c0de3e74:	21b4      	movs	r1, #180	@ 0xb4
c0de3e76:	f859 7006 	ldr.w	r7, [r9, r6]
c0de3e7a:	f008 faff 	bl	c0dec47c <__aeabi_memclr>
c0de3e7e:	7828      	ldrb	r0, [r5, #0]
c0de3e80:	b150      	cbz	r0, c0de3e98 <nbgl_layoutGet+0x74>
c0de3e82:	485a      	ldr	r0, [pc, #360]	@ (c0de3fec <nbgl_layoutGet+0x1c8>)
c0de3e84:	4448      	add	r0, r9
c0de3e86:	6841      	ldr	r1, [r0, #4]
c0de3e88:	2900      	cmp	r1, #0
c0de3e8a:	bf08      	it	eq
c0de3e8c:	eb09 0106 	addeq.w	r1, r9, r6
c0de3e90:	600c      	str	r4, [r1, #0]
c0de3e92:	6061      	str	r1, [r4, #4]
c0de3e94:	6044      	str	r4, [r0, #4]
c0de3e96:	e001      	b.n	c0de3e9c <nbgl_layoutGet+0x78>
c0de3e98:	f849 7006 	str.w	r7, [r9, r6]
c0de3e9c:	4853      	ldr	r0, [pc, #332]	@ (c0de3fec <nbgl_layoutGet+0x1c8>)
c0de3e9e:	2100      	movs	r1, #0
c0de3ea0:	f809 1000 	strb.w	r1, [r9, r0]
c0de3ea4:	68e8      	ldr	r0, [r5, #12]
c0de3ea6:	f007 ffbd 	bl	c0debe24 <pic>
c0de3eaa:	4621      	mov	r1, r4
c0de3eac:	782e      	ldrb	r6, [r5, #0]
c0de3eae:	f811 2fad 	ldrb.w	r2, [r1, #173]!
c0de3eb2:	784b      	ldrb	r3, [r1, #1]
c0de3eb4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3eb8:	f022 0201 	bic.w	r2, r2, #1
c0de3ebc:	4332      	orrs	r2, r6
c0de3ebe:	700a      	strb	r2, [r1, #0]
c0de3ec0:	f002 02fd 	and.w	r2, r2, #253	@ 0xfd
c0de3ec4:	786e      	ldrb	r6, [r5, #1]
c0de3ec6:	f841 0c91 	str.w	r0, [r1, #-145]
c0de3eca:	704b      	strb	r3, [r1, #1]
c0de3ecc:	f1a1 00a5 	sub.w	r0, r1, #165	@ 0xa5
c0de3ed0:	ea42 0246 	orr.w	r2, r2, r6, lsl #1
c0de3ed4:	700a      	strb	r2, [r1, #0]
c0de3ed6:	f105 0210 	add.w	r2, r5, #16
c0de3eda:	7829      	ldrb	r1, [r5, #0]
c0de3edc:	4b44      	ldr	r3, [pc, #272]	@ (c0de3ff0 <nbgl_layoutGet+0x1cc>)
c0de3ede:	447b      	add	r3, pc
c0de3ee0:	b159      	cbz	r1, c0de3efa <nbgl_layoutGet+0xd6>
c0de3ee2:	2106      	movs	r1, #6
c0de3ee4:	f007 fd98 	bl	c0deba18 <nbgl_screenPush>
c0de3ee8:	f894 10ad 	ldrb.w	r1, [r4, #173]	@ 0xad
c0de3eec:	f894 20ae 	ldrb.w	r2, [r4, #174]	@ 0xae
c0de3ef0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3ef4:	f360 01c7 	bfi	r1, r0, #3, #5
c0de3ef8:	e00a      	b.n	c0de3f10 <nbgl_layoutGet+0xec>
c0de3efa:	2106      	movs	r1, #6
c0de3efc:	f007 fd87 	bl	c0deba0e <nbgl_screenSet>
c0de3f00:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de3f04:	f894 10ae 	ldrb.w	r1, [r4, #174]	@ 0xae
c0de3f08:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3f0c:	f020 01f8 	bic.w	r1, r0, #248	@ 0xf8
c0de3f10:	4627      	mov	r7, r4
c0de3f12:	0a08      	lsrs	r0, r1, #8
c0de3f14:	f04f 0a01 	mov.w	sl, #1
c0de3f18:	f807 1fad 	strb.w	r1, [r7, #173]!
c0de3f1c:	7078      	strb	r0, [r7, #1]
c0de3f1e:	b2c8      	uxtb	r0, r1
c0de3f20:	f003 fbfc 	bl	c0de771c <OUTLINED_FUNCTION_19>
c0de3f24:	2102      	movs	r1, #2
c0de3f26:	f04f 0800 	mov.w	r8, #0
c0de3f2a:	f880 a005 	strb.w	sl, [r0, #5]
c0de3f2e:	71c1      	strb	r1, [r0, #7]
c0de3f30:	2158      	movs	r1, #88	@ 0x58
c0de3f32:	f880 801f 	strb.w	r8, [r0, #31]
c0de3f36:	7181      	strb	r1, [r0, #6]
c0de3f38:	21e0      	movs	r1, #224	@ 0xe0
c0de3f3a:	7101      	strb	r1, [r0, #4]
c0de3f3c:	f847 0c0d 	str.w	r0, [r7, #-13]
c0de3f40:	7838      	ldrb	r0, [r7, #0]
c0de3f42:	08c1      	lsrs	r1, r0, #3
c0de3f44:	2014      	movs	r0, #20
c0de3f46:	f007 fd85 	bl	c0deba54 <nbgl_containerPoolGet>
c0de3f4a:	f857 2c0d 	ldr.w	r2, [r7, #-13]
c0de3f4e:	0a03      	lsrs	r3, r0, #8
c0de3f50:	f857 1ca5 	ldr.w	r1, [r7, #-165]
c0de3f54:	0e06      	lsrs	r6, r0, #24
c0de3f56:	f882 3023 	strb.w	r3, [r2, #35]	@ 0x23
c0de3f5a:	4613      	mov	r3, r2
c0de3f5c:	f882 a016 	strb.w	sl, [r2, #22]
c0de3f60:	f803 0f22 	strb.w	r0, [r3, #34]!
c0de3f64:	0c00      	lsrs	r0, r0, #16
c0de3f66:	70de      	strb	r6, [r3, #3]
c0de3f68:	7098      	strb	r0, [r3, #2]
c0de3f6a:	604a      	str	r2, [r1, #4]
c0de3f6c:	7878      	ldrb	r0, [r7, #1]
c0de3f6e:	f040 0040 	orr.w	r0, r0, #64	@ 0x40
c0de3f72:	7078      	strb	r0, [r7, #1]
c0de3f74:	6868      	ldr	r0, [r5, #4]
c0de3f76:	b388      	cbz	r0, c0de3fdc <nbgl_layoutGet+0x1b8>
c0de3f78:	f007 ff54 	bl	c0debe24 <pic>
c0de3f7c:	4621      	mov	r1, r4
c0de3f7e:	f44f 4640 	mov.w	r6, #49152	@ 0xc000
c0de3f82:	f811 2fad 	ldrb.w	r2, [r1, #173]!
c0de3f86:	784b      	ldrb	r3, [r1, #1]
c0de3f88:	700a      	strb	r2, [r1, #0]
c0de3f8a:	1c5f      	adds	r7, r3, #1
c0de3f8c:	ea06 2603 	and.w	r6, r6, r3, lsl #8
c0de3f90:	f003 023f 	and.w	r2, r3, #63	@ 0x3f
c0de3f94:	f007 073f 	and.w	r7, r7, #63	@ 0x3f
c0de3f98:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de3f9c:	eb04 07c2 	add.w	r7, r4, r2, lsl #3
c0de3fa0:	0a36      	lsrs	r6, r6, #8
c0de3fa2:	704e      	strb	r6, [r1, #1]
c0de3fa4:	f8d4 60a0 	ldr.w	r6, [r4, #160]	@ 0xa0
c0de3fa8:	2104      	movs	r1, #4
c0de3faa:	77b1      	strb	r1, [r6, #30]
c0de3fac:	7a2a      	ldrb	r2, [r5, #8]
c0de3fae:	7a6b      	ldrb	r3, [r5, #9]
c0de3fb0:	623e      	str	r6, [r7, #32]
c0de3fb2:	f887 3026 	strb.w	r3, [r7, #38]	@ 0x26
c0de3fb6:	f886 a01c 	strb.w	sl, [r6, #28]
c0de3fba:	f886 801d 	strb.w	r8, [r6, #29]
c0de3fbe:	f887 2024 	strb.w	r2, [r7, #36]	@ 0x24
c0de3fc2:	7805      	ldrb	r5, [r0, #0]
c0de3fc4:	b155      	cbz	r5, c0de3fdc <nbgl_layoutGet+0x1b8>
c0de3fc6:	9001      	str	r0, [sp, #4]
c0de3fc8:	f88d 1000 	strb.w	r1, [sp]
c0de3fcc:	4669      	mov	r1, sp
c0de3fce:	4620      	mov	r0, r4
c0de3fd0:	f88d 3009 	strb.w	r3, [sp, #9]
c0de3fd4:	f88d 2008 	strb.w	r2, [sp, #8]
c0de3fd8:	f000 f992 	bl	c0de4300 <nbgl_layoutAddUpFooter>
c0de3fdc:	4620      	mov	r0, r4
c0de3fde:	b005      	add	sp, #20
c0de3fe0:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de3fe4:	fffffe98 	.word	0xfffffe98
c0de3fe8:	000006e8 	.word	0x000006e8
c0de3fec:	00000904 	.word	0x00000904
c0de3ff0:	00000113 	.word	0x00000113

c0de3ff4 <touchCallback>:
c0de3ff4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ff8:	2800      	cmp	r0, #0
c0de3ffa:	f000 817e 	beq.w	c0de42fa <touchCallback+0x306>
c0de3ffe:	460d      	mov	r5, r1
c0de4000:	a901      	add	r1, sp, #4
c0de4002:	466a      	mov	r2, sp
c0de4004:	4604      	mov	r4, r0
c0de4006:	f003 f9d9 	bl	c0de73bc <getLayoutAndLayoutObj>
c0de400a:	b968      	cbnz	r0, c0de4028 <touchCallback+0x34>
c0de400c:	4620      	mov	r0, r4
c0de400e:	f810 1f0e 	ldrb.w	r1, [r0, #14]!
c0de4012:	f003 fba3 	bl	c0de775c <OUTLINED_FUNCTION_23>
c0de4016:	466a      	mov	r2, sp
c0de4018:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de401c:	a901      	add	r1, sp, #4
c0de401e:	f003 f9cd 	bl	c0de73bc <getLayoutAndLayoutObj>
c0de4022:	2800      	cmp	r0, #0
c0de4024:	f000 8169 	beq.w	c0de42fa <touchCallback+0x306>
c0de4028:	1fe8      	subs	r0, r5, #7
c0de402a:	b2c0      	uxtb	r0, r0
c0de402c:	2803      	cmp	r0, #3
c0de402e:	d833      	bhi.n	c0de4098 <touchCallback+0xa4>
c0de4030:	7ee0      	ldrb	r0, [r4, #27]
c0de4032:	2801      	cmp	r0, #1
c0de4034:	d130      	bne.n	c0de4098 <touchCallback+0xa4>
c0de4036:	9901      	ldr	r1, [sp, #4]
c0de4038:	4628      	mov	r0, r5
c0de403a:	f891 20b0 	ldrb.w	r2, [r1, #176]	@ 0xb0
c0de403e:	2a01      	cmp	r2, #1
c0de4040:	d028      	beq.n	c0de4094 <touchCallback+0xa0>
c0de4042:	bb4a      	cbnz	r2, c0de4098 <touchCallback+0xa4>
c0de4044:	f8d1 00a0 	ldr.w	r0, [r1, #160]	@ 0xa0
c0de4048:	42a0      	cmp	r0, r4
c0de404a:	d125      	bne.n	c0de4098 <touchCallback+0xa4>
c0de404c:	f891 00ab 	ldrb.w	r0, [r1, #171]	@ 0xab
c0de4050:	2803      	cmp	r0, #3
c0de4052:	d005      	beq.n	c0de4060 <touchCallback+0x6c>
c0de4054:	2804      	cmp	r0, #4
c0de4056:	f040 8150 	bne.w	c0de42fa <touchCallback+0x306>
c0de405a:	f101 0010 	add.w	r0, r1, #16
c0de405e:	e00c      	b.n	c0de407a <touchCallback+0x86>
c0de4060:	6908      	ldr	r0, [r1, #16]
c0de4062:	f810 2f22 	ldrb.w	r2, [r0, #34]!
c0de4066:	7843      	ldrb	r3, [r0, #1]
c0de4068:	7886      	ldrb	r6, [r0, #2]
c0de406a:	78c0      	ldrb	r0, [r0, #3]
c0de406c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4070:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de4074:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4078:	3004      	adds	r0, #4
c0de407a:	f101 06a9 	add.w	r6, r1, #169	@ 0xa9
c0de407e:	f891 20a8 	ldrb.w	r2, [r1, #168]	@ 0xa8
c0de4082:	6800      	ldr	r0, [r0, #0]
c0de4084:	4629      	mov	r1, r5
c0de4086:	4633      	mov	r3, r6
c0de4088:	f003 fd06 	bl	c0de7a98 <layoutNavigationCallback>
c0de408c:	2800      	cmp	r0, #0
c0de408e:	f000 8134 	beq.w	c0de42fa <touchCallback+0x306>
c0de4092:	7830      	ldrb	r0, [r6, #0]
c0de4094:	9900      	ldr	r1, [sp, #0]
c0de4096:	7148      	strb	r0, [r1, #5]
c0de4098:	4620      	mov	r0, r4
c0de409a:	9f01      	ldr	r7, [sp, #4]
c0de409c:	f810 1f0e 	ldrb.w	r1, [r0, #14]!
c0de40a0:	f003 fc34 	bl	c0de790c <OUTLINED_FUNCTION_45>
c0de40a4:	6938      	ldr	r0, [r7, #16]
c0de40a6:	4281      	cmp	r1, r0
c0de40a8:	d103      	bne.n	c0de40b2 <touchCallback+0xbe>
c0de40aa:	f897 20ab 	ldrb.w	r2, [r7, #171]	@ 0xab
c0de40ae:	2a04      	cmp	r2, #4
c0de40b0:	d00c      	beq.n	c0de40cc <touchCallback+0xd8>
c0de40b2:	7eca      	ldrb	r2, [r1, #27]
c0de40b4:	2a01      	cmp	r2, #1
c0de40b6:	d118      	bne.n	c0de40ea <touchCallback+0xf6>
c0de40b8:	f811 2f0e 	ldrb.w	r2, [r1, #14]!
c0de40bc:	f003 faaa 	bl	c0de7614 <OUTLINED_FUNCTION_9>
c0de40c0:	4281      	cmp	r1, r0
c0de40c2:	d112      	bne.n	c0de40ea <touchCallback+0xf6>
c0de40c4:	f897 00ab 	ldrb.w	r0, [r7, #171]	@ 0xab
c0de40c8:	2803      	cmp	r0, #3
c0de40ca:	d10e      	bne.n	c0de40ea <touchCallback+0xf6>
c0de40cc:	f107 06a9 	add.w	r6, r7, #169	@ 0xa9
c0de40d0:	f897 20a8 	ldrb.w	r2, [r7, #168]	@ 0xa8
c0de40d4:	4620      	mov	r0, r4
c0de40d6:	4629      	mov	r1, r5
c0de40d8:	4633      	mov	r3, r6
c0de40da:	f003 fcdd 	bl	c0de7a98 <layoutNavigationCallback>
c0de40de:	2800      	cmp	r0, #0
c0de40e0:	f000 810b 	beq.w	c0de42fa <touchCallback+0x306>
c0de40e4:	7830      	ldrb	r0, [r6, #0]
c0de40e6:	9900      	ldr	r1, [sp, #0]
c0de40e8:	7148      	strb	r0, [r1, #5]
c0de40ea:	7ee0      	ldrb	r0, [r4, #27]
c0de40ec:	2801      	cmp	r0, #1
c0de40ee:	f040 80ac 	bne.w	c0de424a <touchCallback+0x256>
c0de40f2:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de40f6:	2802      	cmp	r0, #2
c0de40f8:	f0c0 80a7 	bcc.w	c0de424a <touchCallback+0x256>
c0de40fc:	4621      	mov	r1, r4
c0de40fe:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4102:	f003 fa87 	bl	c0de7614 <OUTLINED_FUNCTION_9>
c0de4106:	684e      	ldr	r6, [r1, #4]
c0de4108:	b196      	cbz	r6, c0de4130 <touchCallback+0x13c>
c0de410a:	7ef1      	ldrb	r1, [r6, #27]
c0de410c:	2906      	cmp	r1, #6
c0de410e:	d10f      	bne.n	c0de4130 <touchCallback+0x13c>
c0de4110:	f896 0021 	ldrb.w	r0, [r6, #33]	@ 0x21
c0de4114:	3801      	subs	r0, #1
c0de4116:	bf18      	it	ne
c0de4118:	2001      	movne	r0, #1
c0de411a:	f886 0021 	strb.w	r0, [r6, #33]	@ 0x21
c0de411e:	4630      	mov	r0, r6
c0de4120:	f007 fc6b 	bl	c0deb9fa <nbgl_objDraw>
c0de4124:	f896 0021 	ldrb.w	r0, [r6, #33]	@ 0x21
c0de4128:	9900      	ldr	r1, [sp, #0]
c0de412a:	2401      	movs	r4, #1
c0de412c:	7148      	strb	r0, [r1, #5]
c0de412e:	e08d      	b.n	c0de424c <touchCallback+0x258>
c0de4130:	2804      	cmp	r0, #4
c0de4132:	d064      	beq.n	c0de41fe <touchCallback+0x20a>
c0de4134:	2802      	cmp	r0, #2
c0de4136:	f040 8088 	bne.w	c0de424a <touchCallback+0x256>
c0de413a:	4620      	mov	r0, r4
c0de413c:	f003 fae2 	bl	c0de7704 <OUTLINED_FUNCTION_18>
c0de4140:	6840      	ldr	r0, [r0, #4]
c0de4142:	2800      	cmp	r0, #0
c0de4144:	f000 8081 	beq.w	c0de424a <touchCallback+0x256>
c0de4148:	7ec0      	ldrb	r0, [r0, #27]
c0de414a:	2809      	cmp	r0, #9
c0de414c:	d17d      	bne.n	c0de424a <touchCallback+0x256>
c0de414e:	2d00      	cmp	r5, #0
c0de4150:	f040 80d3 	bne.w	c0de42fa <touchCallback+0x306>
c0de4154:	f04f 0aff 	mov.w	sl, #255	@ 0xff
c0de4158:	2500      	movs	r5, #0
c0de415a:	f04f 0800 	mov.w	r8, #0
c0de415e:	f897 10ae 	ldrb.w	r1, [r7, #174]	@ 0xae
c0de4162:	fa5f f088 	uxtb.w	r0, r8
c0de4166:	f001 013f 	and.w	r1, r1, #63	@ 0x3f
c0de416a:	4281      	cmp	r1, r0
c0de416c:	f240 8085 	bls.w	c0de427a <touchCallback+0x286>
c0de4170:	eb07 00c0 	add.w	r0, r7, r0, lsl #3
c0de4174:	6a00      	ldr	r0, [r0, #32]
c0de4176:	42a0      	cmp	r0, r4
c0de4178:	d117      	bne.n	c0de41aa <touchCallback+0x1b6>
c0de417a:	7ee1      	ldrb	r1, [r4, #27]
c0de417c:	2901      	cmp	r1, #1
c0de417e:	d114      	bne.n	c0de41aa <touchCallback+0x1b6>
c0de4180:	4620      	mov	r0, r4
c0de4182:	46ab      	mov	fp, r5
c0de4184:	46c2      	mov	sl, r8
c0de4186:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de418a:	f003 fae7 	bl	c0de775c <OUTLINED_FUNCTION_23>
c0de418e:	220c      	movs	r2, #12
c0de4190:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4194:	e9d0 1000 	ldrd	r1, r0, [r0]
c0de4198:	f881 2022 	strb.w	r2, [r1, #34]	@ 0x22
c0de419c:	2200      	movs	r2, #0
c0de419e:	77ca      	strb	r2, [r1, #31]
c0de41a0:	2101      	movs	r1, #1
c0de41a2:	f880 1021 	strb.w	r1, [r0, #33]	@ 0x21
c0de41a6:	4620      	mov	r0, r4
c0de41a8:	e024      	b.n	c0de41f4 <touchCallback+0x200>
c0de41aa:	7ec1      	ldrb	r1, [r0, #27]
c0de41ac:	2901      	cmp	r1, #1
c0de41ae:	d123      	bne.n	c0de41f8 <touchCallback+0x204>
c0de41b0:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de41b4:	2902      	cmp	r1, #2
c0de41b6:	d11f      	bne.n	c0de41f8 <touchCallback+0x204>
c0de41b8:	4601      	mov	r1, r0
c0de41ba:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de41be:	784b      	ldrb	r3, [r1, #1]
c0de41c0:	788e      	ldrb	r6, [r1, #2]
c0de41c2:	78c9      	ldrb	r1, [r1, #3]
c0de41c4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de41c8:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de41cc:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de41d0:	6851      	ldr	r1, [r2, #4]
c0de41d2:	7ecb      	ldrb	r3, [r1, #27]
c0de41d4:	2b09      	cmp	r3, #9
c0de41d6:	d10f      	bne.n	c0de41f8 <touchCallback+0x204>
c0de41d8:	f891 3021 	ldrb.w	r3, [r1, #33]	@ 0x21
c0de41dc:	3501      	adds	r5, #1
c0de41de:	2b01      	cmp	r3, #1
c0de41e0:	d10a      	bne.n	c0de41f8 <touchCallback+0x204>
c0de41e2:	6812      	ldr	r2, [r2, #0]
c0de41e4:	230b      	movs	r3, #11
c0de41e6:	f882 3022 	strb.w	r3, [r2, #34]	@ 0x22
c0de41ea:	2301      	movs	r3, #1
c0de41ec:	77d3      	strb	r3, [r2, #31]
c0de41ee:	2200      	movs	r2, #0
c0de41f0:	f881 2021 	strb.w	r2, [r1, #33]	@ 0x21
c0de41f4:	f007 fc01 	bl	c0deb9fa <nbgl_objDraw>
c0de41f8:	f108 0801 	add.w	r8, r8, #1
c0de41fc:	e7af      	b.n	c0de415e <touchCallback+0x16a>
c0de41fe:	4620      	mov	r0, r4
c0de4200:	f003 fa80 	bl	c0de7704 <OUTLINED_FUNCTION_18>
c0de4204:	68c6      	ldr	r6, [r0, #12]
c0de4206:	b306      	cbz	r6, c0de424a <touchCallback+0x256>
c0de4208:	7ef0      	ldrb	r0, [r6, #27]
c0de420a:	2808      	cmp	r0, #8
c0de420c:	d11d      	bne.n	c0de424a <touchCallback+0x256>
c0de420e:	2d0a      	cmp	r5, #10
c0de4210:	d873      	bhi.n	c0de42fa <touchCallback+0x306>
c0de4212:	2001      	movs	r0, #1
c0de4214:	40a8      	lsls	r0, r5
c0de4216:	f410 6fc5 	tst.w	r0, #1576	@ 0x628
c0de421a:	d045      	beq.n	c0de42a8 <touchCallback+0x2b4>
c0de421c:	f007 fe32 	bl	c0debe84 <nbgl_wait_pipeline>
c0de4220:	2000      	movs	r0, #0
c0de4222:	f003 fb22 	bl	c0de786a <OUTLINED_FUNCTION_35>
c0de4226:	f814 0f22 	ldrb.w	r0, [r4, #34]!
c0de422a:	7861      	ldrb	r1, [r4, #1]
c0de422c:	78a2      	ldrb	r2, [r4, #2]
c0de422e:	78e3      	ldrb	r3, [r4, #3]
c0de4230:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4234:	f003 fb29 	bl	c0de788a <OUTLINED_FUNCTION_37>
c0de4238:	6880      	ldr	r0, [r0, #8]
c0de423a:	f007 fbde 	bl	c0deb9fa <nbgl_objDraw>
c0de423e:	2003      	movs	r0, #3
c0de4240:	2100      	movs	r1, #0
c0de4242:	e8bd 4dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de4246:	f007 bbce 	b.w	c0deb9e6 <nbgl_refreshSpecialWithPostRefresh>
c0de424a:	2400      	movs	r4, #0
c0de424c:	69f8      	ldr	r0, [r7, #28]
c0de424e:	2800      	cmp	r0, #0
c0de4250:	d053      	beq.n	c0de42fa <touchCallback+0x306>
c0de4252:	9d00      	ldr	r5, [sp, #0]
c0de4254:	7928      	ldrb	r0, [r5, #4]
c0de4256:	28ff      	cmp	r0, #255	@ 0xff
c0de4258:	d04f      	beq.n	c0de42fa <touchCallback+0x306>
c0de425a:	79a8      	ldrb	r0, [r5, #6]
c0de425c:	280b      	cmp	r0, #11
c0de425e:	bf98      	it	ls
c0de4260:	f7ff fbd9 	blls	c0de3a16 <os_io_seph_cmd_piezo_play_tune>
c0de4264:	b114      	cbz	r4, c0de426c <touchCallback+0x278>
c0de4266:	2001      	movs	r0, #1
c0de4268:	f007 fbb8 	bl	c0deb9dc <nbgl_refreshSpecial>
c0de426c:	7928      	ldrb	r0, [r5, #4]
c0de426e:	7969      	ldrb	r1, [r5, #5]
c0de4270:	69fa      	ldr	r2, [r7, #28]
c0de4272:	b002      	add	sp, #8
c0de4274:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4278:	4710      	bx	r2
c0de427a:	fa5f f08a 	uxtb.w	r0, sl
c0de427e:	28ff      	cmp	r0, #255	@ 0xff
c0de4280:	d03b      	beq.n	c0de42fa <touchCallback+0x306>
c0de4282:	69f9      	ldr	r1, [r7, #28]
c0de4284:	b3c9      	cbz	r1, c0de42fa <touchCallback+0x306>
c0de4286:	eb07 04c0 	add.w	r4, r7, r0, lsl #3
c0de428a:	f894 0026 	ldrb.w	r0, [r4, #38]	@ 0x26
c0de428e:	280b      	cmp	r0, #11
c0de4290:	bf98      	it	ls
c0de4292:	f7ff fbc0 	blls	c0de3a16 <os_io_seph_cmd_piezo_play_tune>
c0de4296:	2001      	movs	r0, #1
c0de4298:	f007 fba0 	bl	c0deb9dc <nbgl_refreshSpecial>
c0de429c:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de42a0:	69fa      	ldr	r2, [r7, #28]
c0de42a2:	fa5f f18b 	uxtb.w	r1, fp
c0de42a6:	e7e4      	b.n	c0de4272 <touchCallback+0x27e>
c0de42a8:	2d02      	cmp	r5, #2
c0de42aa:	d126      	bne.n	c0de42fa <touchCallback+0x306>
c0de42ac:	9d00      	ldr	r5, [sp, #0]
c0de42ae:	4620      	mov	r0, r4
c0de42b0:	f007 fc02 	bl	c0debab8 <nbgl_touchGetTouchDuration>
c0de42b4:	f896 1021 	ldrb.w	r1, [r6, #33]	@ 0x21
c0de42b8:	2200      	movs	r2, #0
c0de42ba:	2300      	movs	r3, #0
c0de42bc:	2964      	cmp	r1, #100	@ 0x64
c0de42be:	bf38      	it	cc
c0de42c0:	2301      	movcc	r3, #1
c0de42c2:	2464      	movs	r4, #100	@ 0x64
c0de42c4:	fbb0 f0f4 	udiv	r0, r0, r4
c0de42c8:	ebc0 00c0 	rsb	r0, r0, r0, lsl #3
c0de42cc:	b2c4      	uxtb	r4, r0
c0de42ce:	2c63      	cmp	r4, #99	@ 0x63
c0de42d0:	bf88      	it	hi
c0de42d2:	2201      	movhi	r2, #1
c0de42d4:	ea02 0403 	and.w	r4, r2, r3
c0de42d8:	bf88      	it	hi
c0de42da:	2064      	movhi	r0, #100	@ 0x64
c0de42dc:	b2c2      	uxtb	r2, r0
c0de42de:	428a      	cmp	r2, r1
c0de42e0:	d005      	beq.n	c0de42ee <touchCallback+0x2fa>
c0de42e2:	f003 fac2 	bl	c0de786a <OUTLINED_FUNCTION_35>
c0de42e6:	2004      	movs	r0, #4
c0de42e8:	2102      	movs	r1, #2
c0de42ea:	f007 fb7c 	bl	c0deb9e6 <nbgl_refreshSpecialWithPostRefresh>
c0de42ee:	b124      	cbz	r4, c0de42fa <touchCallback+0x306>
c0de42f0:	69fa      	ldr	r2, [r7, #28]
c0de42f2:	b112      	cbz	r2, c0de42fa <touchCallback+0x306>
c0de42f4:	7928      	ldrb	r0, [r5, #4]
c0de42f6:	7969      	ldrb	r1, [r5, #5]
c0de42f8:	e7bb      	b.n	c0de4272 <touchCallback+0x27e>
c0de42fa:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de4300 <nbgl_layoutAddUpFooter>:
c0de4300:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4304:	2800      	cmp	r0, #0
c0de4306:	f000 826c 	beq.w	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de430a:	460d      	mov	r5, r1
c0de430c:	b119      	cbz	r1, c0de4316 <nbgl_layoutAddUpFooter+0x16>
c0de430e:	4604      	mov	r4, r0
c0de4310:	7828      	ldrb	r0, [r5, #0]
c0de4312:	2804      	cmp	r0, #4
c0de4314:	d903      	bls.n	c0de431e <nbgl_layoutAddUpFooter+0x1e>
c0de4316:	f06f 0001 	mvn.w	r0, #1
c0de431a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de431e:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4322:	2601      	movs	r6, #1
c0de4324:	f003 f9fa 	bl	c0de771c <OUTLINED_FUNCTION_19>
c0de4328:	f003 fb1f 	bl	c0de796a <OUTLINED_FUNCTION_51>
c0de432c:	6160      	str	r0, [r4, #20]
c0de432e:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4332:	f003 fb37 	bl	c0de79a4 <OUTLINED_FUNCTION_56>
c0de4336:	6961      	ldr	r1, [r4, #20]
c0de4338:	0a02      	lsrs	r2, r0, #8
c0de433a:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
c0de433e:	0e06      	lsrs	r6, r0, #24
c0de4340:	f881 2023 	strb.w	r2, [r1, #35]	@ 0x23
c0de4344:	2208      	movs	r2, #8
c0de4346:	f003 fb60 	bl	c0de7a0a <OUTLINED_FUNCTION_65>
c0de434a:	4608      	mov	r0, r1
c0de434c:	70d6      	strb	r6, [r2, #3]
c0de434e:	0e1a      	lsrs	r2, r3, #24
c0de4350:	f800 3f12 	strb.w	r3, [r0, #18]!
c0de4354:	70c2      	strb	r2, [r0, #3]
c0de4356:	0c1a      	lsrs	r2, r3, #16
c0de4358:	7082      	strb	r2, [r0, #2]
c0de435a:	0a18      	lsrs	r0, r3, #8
c0de435c:	74c8      	strb	r0, [r1, #19]
c0de435e:	7828      	ldrb	r0, [r5, #0]
c0de4360:	2804      	cmp	r0, #4
c0de4362:	f000 80ba 	beq.w	c0de44da <nbgl_layoutAddUpFooter+0x1da>
c0de4366:	2801      	cmp	r0, #1
c0de4368:	f000 80e9 	beq.w	c0de453e <nbgl_layoutAddUpFooter+0x23e>
c0de436c:	2802      	cmp	r0, #2
c0de436e:	f000 814b 	beq.w	c0de4608 <nbgl_layoutAddUpFooter+0x308>
c0de4372:	2803      	cmp	r0, #3
c0de4374:	f000 81d2 	beq.w	c0de471c <nbgl_layoutAddUpFooter+0x41c>
c0de4378:	2800      	cmp	r0, #0
c0de437a:	d1cc      	bne.n	c0de4316 <nbgl_layoutAddUpFooter+0x16>
c0de437c:	f003 fb80 	bl	c0de7a80 <OUTLINED_FUNCTION_74>
c0de4380:	2800      	cmp	r0, #0
c0de4382:	f000 822e 	beq.w	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de4386:	6960      	ldr	r0, [r4, #20]
c0de4388:	2112      	movs	r1, #18
c0de438a:	f04f 0804 	mov.w	r8, #4
c0de438e:	f04f 0a00 	mov.w	sl, #0
c0de4392:	2706      	movs	r7, #6
c0de4394:	7781      	strb	r1, [r0, #30]
c0de4396:	2198      	movs	r1, #152	@ 0x98
c0de4398:	f880 8020 	strb.w	r8, [r0, #32]
c0de439c:	f880 a007 	strb.w	sl, [r0, #7]
c0de43a0:	7747      	strb	r7, [r0, #29]
c0de43a2:	7181      	strb	r1, [r0, #6]
c0de43a4:	212c      	movs	r1, #44	@ 0x2c
c0de43a6:	7701      	strb	r1, [r0, #28]
c0de43a8:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de43ac:	4ed9      	ldr	r6, [pc, #868]	@ (c0de4714 <nbgl_layoutAddUpFooter+0x414>)
c0de43ae:	08c1      	lsrs	r1, r0, #3
c0de43b0:	447e      	add	r6, pc
c0de43b2:	2005      	movs	r0, #5
c0de43b4:	47b0      	blx	r6
c0de43b6:	46b3      	mov	fp, r6
c0de43b8:	4606      	mov	r6, r0
c0de43ba:	f880 a018 	strb.w	sl, [r0, #24]
c0de43be:	2020      	movs	r0, #32
c0de43c0:	2103      	movs	r1, #3
c0de43c2:	75f0      	strb	r0, [r6, #23]
c0de43c4:	2058      	movs	r0, #88	@ 0x58
c0de43c6:	75b7      	strb	r7, [r6, #22]
c0de43c8:	4637      	mov	r7, r6
c0de43ca:	f886 a007 	strb.w	sl, [r6, #7]
c0de43ce:	f886 1021 	strb.w	r1, [r6, #33]	@ 0x21
c0de43d2:	f886 a01f 	strb.w	sl, [r6, #31]
c0de43d6:	f886 a020 	strb.w	sl, [r6, #32]
c0de43da:	f886 8022 	strb.w	r8, [r6, #34]	@ 0x22
c0de43de:	f807 0f04 	strb.w	r0, [r7, #4]!
c0de43e2:	71b0      	strb	r0, [r6, #6]
c0de43e4:	f887 a001 	strb.w	sl, [r7, #1]
c0de43e8:	48cb      	ldr	r0, [pc, #812]	@ (c0de4718 <nbgl_layoutAddUpFooter+0x418>)
c0de43ea:	4478      	add	r0, pc
c0de43ec:	f007 fd1a 	bl	c0debe24 <pic>
c0de43f0:	4631      	mov	r1, r6
c0de43f2:	0e02      	lsrs	r2, r0, #24
c0de43f4:	f003 f9f6 	bl	c0de77e4 <OUTLINED_FUNCTION_29>
c0de43f8:	6960      	ldr	r0, [r4, #20]
c0de43fa:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de43fe:	7842      	ldrb	r2, [r0, #1]
c0de4400:	7883      	ldrb	r3, [r0, #2]
c0de4402:	78c0      	ldrb	r0, [r0, #3]
c0de4404:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4408:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de440c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4410:	6006      	str	r6, [r0, #0]
c0de4412:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4416:	08c1      	lsrs	r1, r0, #3
c0de4418:	2004      	movs	r0, #4
c0de441a:	47d8      	blx	fp
c0de441c:	f880 a01f 	strb.w	sl, [r0, #31]
c0de4420:	4606      	mov	r6, r0
c0de4422:	f003 f998 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de4426:	4601      	mov	r1, r0
c0de4428:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de442c:	2301      	movs	r3, #1
c0de442e:	f886 8020 	strb.w	r8, [r6, #32]
c0de4432:	0e0a      	lsrs	r2, r1, #24
c0de4434:	f040 0001 	orr.w	r0, r0, #1
c0de4438:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de443c:	200d      	movs	r0, #13
c0de443e:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4442:	f003 fa4f 	bl	c0de78e4 <OUTLINED_FUNCTION_43>
c0de4446:	7838      	ldrb	r0, [r7, #0]
c0de4448:	787a      	ldrb	r2, [r7, #1]
c0de444a:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de444e:	f5c0 70c0 	rsb	r0, r0, #384	@ 0x180
c0de4452:	0a02      	lsrs	r2, r0, #8
c0de4454:	7130      	strb	r0, [r6, #4]
c0de4456:	7172      	strb	r2, [r6, #5]
c0de4458:	b282      	uxth	r2, r0
c0de445a:	f003 fac7 	bl	c0de79ec <OUTLINED_FUNCTION_62>
c0de445e:	2120      	movs	r1, #32
c0de4460:	71b0      	strb	r0, [r6, #6]
c0de4462:	0a00      	lsrs	r0, r0, #8
c0de4464:	f886 a021 	strb.w	sl, [r6, #33]	@ 0x21
c0de4468:	f003 faf7 	bl	c0de7a5a <OUTLINED_FUNCTION_71>
c0de446c:	75f1      	strb	r1, [r6, #23]
c0de446e:	71f0      	strb	r0, [r6, #7]
c0de4470:	6960      	ldr	r0, [r4, #20]
c0de4472:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4476:	7842      	ldrb	r2, [r0, #1]
c0de4478:	7883      	ldrb	r3, [r0, #2]
c0de447a:	78c0      	ldrb	r0, [r0, #3]
c0de447c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4480:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4484:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4488:	6046      	str	r6, [r0, #4]
c0de448a:	f003 f95f 	bl	c0de774c <OUTLINED_FUNCTION_21>
c0de448e:	6961      	ldr	r1, [r4, #20]
c0de4490:	2602      	movs	r6, #2
c0de4492:	7586      	strb	r6, [r0, #22]
c0de4494:	f003 fa30 	bl	c0de78f8 <OUTLINED_FUNCTION_44>
c0de4498:	2708      	movs	r7, #8
c0de449a:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de449e:	6088      	str	r0, [r1, #8]
c0de44a0:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de44a4:	08c1      	lsrs	r1, r0, #3
c0de44a6:	2008      	movs	r0, #8
c0de44a8:	47d8      	blx	fp
c0de44aa:	f890 1022 	ldrb.w	r1, [r0, #34]	@ 0x22
c0de44ae:	7187      	strb	r7, [r0, #6]
c0de44b0:	7586      	strb	r6, [r0, #22]
c0de44b2:	f880 a01a 	strb.w	sl, [r0, #26]
c0de44b6:	f880 a007 	strb.w	sl, [r0, #7]
c0de44ba:	f041 0105 	orr.w	r1, r1, #5
c0de44be:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de44c2:	2101      	movs	r1, #1
c0de44c4:	7641      	strb	r1, [r0, #25]
c0de44c6:	7141      	strb	r1, [r0, #5]
c0de44c8:	21e0      	movs	r1, #224	@ 0xe0
c0de44ca:	7101      	strb	r1, [r0, #4]
c0de44cc:	6961      	ldr	r1, [r4, #20]
c0de44ce:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de44d2:	f003 f89f 	bl	c0de7614 <OUTLINED_FUNCTION_9>
c0de44d6:	60c8      	str	r0, [r1, #12]
c0de44d8:	e1f0      	b.n	c0de48bc <nbgl_layoutAddUpFooter+0x5bc>
c0de44da:	f003 fad1 	bl	c0de7a80 <OUTLINED_FUNCTION_74>
c0de44de:	2800      	cmp	r0, #0
c0de44e0:	f000 817f 	beq.w	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de44e4:	6960      	ldr	r0, [r4, #20]
c0de44e6:	2104      	movs	r1, #4
c0de44e8:	2701      	movs	r7, #1
c0de44ea:	2260      	movs	r2, #96	@ 0x60
c0de44ec:	7781      	strb	r1, [r0, #30]
c0de44ee:	2100      	movs	r1, #0
c0de44f0:	f880 7020 	strb.w	r7, [r0, #32]
c0de44f4:	7182      	strb	r2, [r0, #6]
c0de44f6:	7707      	strb	r7, [r0, #28]
c0de44f8:	71c1      	strb	r1, [r0, #7]
c0de44fa:	7741      	strb	r1, [r0, #29]
c0de44fc:	f003 f92b 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de4500:	7800      	ldrb	r0, [r0, #0]
c0de4502:	2800      	cmp	r0, #0
c0de4504:	f000 81da 	beq.w	c0de48bc <nbgl_layoutAddUpFooter+0x5bc>
c0de4508:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de450c:	f003 f804 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de4510:	77c7      	strb	r7, [r0, #31]
c0de4512:	4606      	mov	r6, r0
c0de4514:	f003 f91f 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de4518:	4601      	mov	r1, r0
c0de451a:	20a0      	movs	r0, #160	@ 0xa0
c0de451c:	7177      	strb	r7, [r6, #5]
c0de451e:	2705      	movs	r7, #5
c0de4520:	2301      	movs	r3, #1
c0de4522:	7130      	strb	r0, [r6, #4]
c0de4524:	200b      	movs	r0, #11
c0de4526:	0e0a      	lsrs	r2, r1, #24
c0de4528:	f886 7020 	strb.w	r7, [r6, #32]
c0de452c:	f003 f8d0 	bl	c0de76d0 <OUTLINED_FUNCTION_16>
c0de4530:	f007 faa4 	bl	c0deba7c <nbgl_getTextHeightInWidth>
c0de4534:	71b0      	strb	r0, [r6, #6]
c0de4536:	0a00      	lsrs	r0, r0, #8
c0de4538:	75b7      	strb	r7, [r6, #22]
c0de453a:	71f0      	strb	r0, [r6, #7]
c0de453c:	e056      	b.n	c0de45ec <nbgl_layoutAddUpFooter+0x2ec>
c0de453e:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4542:	2705      	movs	r7, #5
c0de4544:	f003 f8a6 	bl	c0de7694 <OUTLINED_FUNCTION_13>
c0de4548:	4606      	mov	r6, r0
c0de454a:	7b2a      	ldrb	r2, [r5, #12]
c0de454c:	7c2b      	ldrb	r3, [r5, #16]
c0de454e:	f003 f8bb 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de4552:	2800      	cmp	r0, #0
c0de4554:	f000 8145 	beq.w	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de4558:	6960      	ldr	r0, [r4, #20]
c0de455a:	75b7      	strb	r7, [r6, #22]
c0de455c:	f04f 0801 	mov.w	r8, #1
c0de4560:	2700      	movs	r7, #0
c0de4562:	2188      	movs	r1, #136	@ 0x88
c0de4564:	f880 8020 	strb.w	r8, [r0, #32]
c0de4568:	71c7      	strb	r7, [r0, #7]
c0de456a:	7181      	strb	r1, [r0, #6]
c0de456c:	7b68      	ldrb	r0, [r5, #13]
c0de456e:	2800      	cmp	r0, #0
c0de4570:	bf18      	it	ne
c0de4572:	2003      	movne	r0, #3
c0de4574:	77f0      	strb	r0, [r6, #31]
c0de4576:	f04f 0000 	mov.w	r0, #0
c0de457a:	bf08      	it	eq
c0de457c:	2003      	moveq	r0, #3
c0de457e:	f886 0021 	strb.w	r0, [r6, #33]	@ 0x21
c0de4582:	7b68      	ldrb	r0, [r5, #13]
c0de4584:	4601      	mov	r1, r0
c0de4586:	2800      	cmp	r0, #0
c0de4588:	bf18      	it	ne
c0de458a:	2101      	movne	r1, #1
c0de458c:	0049      	lsls	r1, r1, #1
c0de458e:	2802      	cmp	r0, #2
c0de4590:	bf08      	it	eq
c0de4592:	2103      	moveq	r1, #3
c0de4594:	f886 1020 	strb.w	r1, [r6, #32]
c0de4598:	f003 f8dd 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de459c:	210c      	movs	r1, #12
c0de459e:	0e02      	lsrs	r2, r0, #24
c0de45a0:	f886 1023 	strb.w	r1, [r6, #35]	@ 0x23
c0de45a4:	4631      	mov	r1, r6
c0de45a6:	f003 f92f 	bl	c0de7808 <OUTLINED_FUNCTION_31>
c0de45aa:	f003 f9b9 	bl	c0de7920 <OUTLINED_FUNCTION_46>
c0de45ae:	4631      	mov	r1, r6
c0de45b0:	0e02      	lsrs	r2, r0, #24
c0de45b2:	74f7      	strb	r7, [r6, #19]
c0de45b4:	71f7      	strb	r7, [r6, #7]
c0de45b6:	f886 8005 	strb.w	r8, [r6, #5]
c0de45ba:	7777      	strb	r7, [r6, #29]
c0de45bc:	f886 801c 	strb.w	r8, [r6, #28]
c0de45c0:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de45c4:	70ca      	strb	r2, [r1, #3]
c0de45c6:	0c02      	lsrs	r2, r0, #16
c0de45c8:	0a00      	lsrs	r0, r0, #8
c0de45ca:	f886 002f 	strb.w	r0, [r6, #47]	@ 0x2f
c0de45ce:	4630      	mov	r0, r6
c0de45d0:	708a      	strb	r2, [r1, #2]
c0de45d2:	f800 7f12 	strb.w	r7, [r0, #18]!
c0de45d6:	70c7      	strb	r7, [r0, #3]
c0de45d8:	7087      	strb	r7, [r0, #2]
c0de45da:	2058      	movs	r0, #88	@ 0x58
c0de45dc:	71b0      	strb	r0, [r6, #6]
c0de45de:	20a0      	movs	r0, #160	@ 0xa0
c0de45e0:	7130      	strb	r0, [r6, #4]
c0de45e2:	2004      	movs	r0, #4
c0de45e4:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de45e8:	2007      	movs	r0, #7
c0de45ea:	77b0      	strb	r0, [r6, #30]
c0de45ec:	6960      	ldr	r0, [r4, #20]
c0de45ee:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de45f2:	7842      	ldrb	r2, [r0, #1]
c0de45f4:	7883      	ldrb	r3, [r0, #2]
c0de45f6:	78c0      	ldrb	r0, [r0, #3]
c0de45f8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de45fc:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4600:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4604:	6006      	str	r6, [r0, #0]
c0de4606:	e159      	b.n	c0de48bc <nbgl_layoutAddUpFooter+0x5bc>
c0de4608:	6868      	ldr	r0, [r5, #4]
c0de460a:	2800      	cmp	r0, #0
c0de460c:	f000 80e9 	beq.w	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de4610:	68a8      	ldr	r0, [r5, #8]
c0de4612:	2800      	cmp	r0, #0
c0de4614:	f000 80e5 	beq.w	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de4618:	f04f 0b00 	mov.w	fp, #0
c0de461c:	2088      	movs	r0, #136	@ 0x88
c0de461e:	2702      	movs	r7, #2
c0de4620:	f881 b007 	strb.w	fp, [r1, #7]
c0de4624:	7188      	strb	r0, [r1, #6]
c0de4626:	f881 7020 	strb.w	r7, [r1, #32]
c0de462a:	f002 ffed 	bl	c0de7608 <OUTLINED_FUNCTION_8>
c0de462e:	4606      	mov	r6, r0
c0de4630:	7b2a      	ldrb	r2, [r5, #12]
c0de4632:	7bab      	ldrb	r3, [r5, #14]
c0de4634:	f003 f848 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de4638:	2800      	cmp	r0, #0
c0de463a:	f000 80d2 	beq.w	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de463e:	2120      	movs	r1, #32
c0de4640:	f04f 0804 	mov.w	r8, #4
c0de4644:	f886 7020 	strb.w	r7, [r6, #32]
c0de4648:	2703      	movs	r7, #3
c0de464a:	f04f 0a58 	mov.w	sl, #88	@ 0x58
c0de464e:	f886 b018 	strb.w	fp, [r6, #24]
c0de4652:	f886 b021 	strb.w	fp, [r6, #33]	@ 0x21
c0de4656:	f886 b007 	strb.w	fp, [r6, #7]
c0de465a:	f886 b005 	strb.w	fp, [r6, #5]
c0de465e:	75f1      	strb	r1, [r6, #23]
c0de4660:	2101      	movs	r1, #1
c0de4662:	f886 8016 	strb.w	r8, [r6, #22]
c0de4666:	77f7      	strb	r7, [r6, #31]
c0de4668:	f886 8022 	strb.w	r8, [r6, #34]	@ 0x22
c0de466c:	7141      	strb	r1, [r0, #5]
c0de466e:	f886 a006 	strb.w	sl, [r6, #6]
c0de4672:	f886 a004 	strb.w	sl, [r6, #4]
c0de4676:	f003 f86e 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de467a:	4631      	mov	r1, r6
c0de467c:	0e02      	lsrs	r2, r0, #24
c0de467e:	f886 b01d 	strb.w	fp, [r6, #29]
c0de4682:	f04f 0b01 	mov.w	fp, #1
c0de4686:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de468a:	f886 b01c 	strb.w	fp, [r6, #28]
c0de468e:	70ca      	strb	r2, [r1, #3]
c0de4690:	0c02      	lsrs	r2, r0, #16
c0de4692:	0a00      	lsrs	r0, r0, #8
c0de4694:	f886 002f 	strb.w	r0, [r6, #47]	@ 0x2f
c0de4698:	200c      	movs	r0, #12
c0de469a:	708a      	strb	r2, [r1, #2]
c0de469c:	f886 0023 	strb.w	r0, [r6, #35]	@ 0x23
c0de46a0:	200a      	movs	r0, #10
c0de46a2:	f003 f8c6 	bl	c0de7832 <OUTLINED_FUNCTION_33>
c0de46a6:	6006      	str	r6, [r0, #0]
c0de46a8:	f002 ffae 	bl	c0de7608 <OUTLINED_FUNCTION_8>
c0de46ac:	4606      	mov	r6, r0
c0de46ae:	7b6a      	ldrb	r2, [r5, #13]
c0de46b0:	7bab      	ldrb	r3, [r5, #14]
c0de46b2:	f003 f809 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de46b6:	2800      	cmp	r0, #0
c0de46b8:	f000 8093 	beq.w	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de46bc:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de46c0:	2700      	movs	r7, #0
c0de46c2:	2120      	movs	r1, #32
c0de46c4:	f886 8022 	strb.w	r8, [r6, #34]	@ 0x22
c0de46c8:	f886 b005 	strb.w	fp, [r6, #5]
c0de46cc:	75f1      	strb	r1, [r6, #23]
c0de46ce:	7147      	strb	r7, [r0, #5]
c0de46d0:	2106      	movs	r1, #6
c0de46d2:	2038      	movs	r0, #56	@ 0x38
c0de46d4:	f886 7020 	strb.w	r7, [r6, #32]
c0de46d8:	77f7      	strb	r7, [r6, #31]
c0de46da:	7637      	strb	r7, [r6, #24]
c0de46dc:	71f7      	strb	r7, [r6, #7]
c0de46de:	f886 a006 	strb.w	sl, [r6, #6]
c0de46e2:	75b1      	strb	r1, [r6, #22]
c0de46e4:	7130      	strb	r0, [r6, #4]
c0de46e6:	f003 f91b 	bl	c0de7920 <OUTLINED_FUNCTION_46>
c0de46ea:	4631      	mov	r1, r6
c0de46ec:	0e02      	lsrs	r2, r0, #24
c0de46ee:	f886 b01c 	strb.w	fp, [r6, #28]
c0de46f2:	7777      	strb	r7, [r6, #29]
c0de46f4:	f801 0f25 	strb.w	r0, [r1, #37]!
c0de46f8:	70ca      	strb	r2, [r1, #3]
c0de46fa:	0c02      	lsrs	r2, r0, #16
c0de46fc:	0a00      	lsrs	r0, r0, #8
c0de46fe:	f886 0026 	strb.w	r0, [r6, #38]	@ 0x26
c0de4702:	200c      	movs	r0, #12
c0de4704:	708a      	strb	r2, [r1, #2]
c0de4706:	f886 0023 	strb.w	r0, [r6, #35]	@ 0x23
c0de470a:	2009      	movs	r0, #9
c0de470c:	f003 f891 	bl	c0de7832 <OUTLINED_FUNCTION_33>
c0de4710:	6046      	str	r6, [r0, #4]
c0de4712:	e0d3      	b.n	c0de48bc <nbgl_layoutAddUpFooter+0x5bc>
c0de4714:	00007697 	.word	0x00007697
c0de4718:	00008cb9 	.word	0x00008cb9
c0de471c:	6868      	ldr	r0, [r5, #4]
c0de471e:	2800      	cmp	r0, #0
c0de4720:	d05f      	beq.n	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de4722:	7b2a      	ldrb	r2, [r5, #12]
c0de4724:	7b6b      	ldrb	r3, [r5, #13]
c0de4726:	4620      	mov	r0, r4
c0de4728:	f7ff fb5a 	bl	c0de3de0 <layoutAddCallbackObj>
c0de472c:	2800      	cmp	r0, #0
c0de472e:	d058      	beq.n	c0de47e2 <nbgl_layoutAddUpFooter+0x4e2>
c0de4730:	6960      	ldr	r0, [r4, #20]
c0de4732:	2103      	movs	r1, #3
c0de4734:	f04f 0a00 	mov.w	sl, #0
c0de4738:	2701      	movs	r7, #1
c0de473a:	f04f 0804 	mov.w	r8, #4
c0de473e:	f880 1020 	strb.w	r1, [r0, #32]
c0de4742:	2113      	movs	r1, #19
c0de4744:	f880 a01d 	strb.w	sl, [r0, #29]
c0de4748:	7707      	strb	r7, [r0, #28]
c0de474a:	7781      	strb	r1, [r0, #30]
c0de474c:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4750:	f002 fee2 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de4754:	f880 a01f 	strb.w	sl, [r0, #31]
c0de4758:	4606      	mov	r6, r0
c0de475a:	f002 fffc 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de475e:	22a0      	movs	r2, #160	@ 0xa0
c0de4760:	4601      	mov	r1, r0
c0de4762:	200b      	movs	r0, #11
c0de4764:	f886 8020 	strb.w	r8, [r6, #32]
c0de4768:	7177      	strb	r7, [r6, #5]
c0de476a:	7132      	strb	r2, [r6, #4]
c0de476c:	4632      	mov	r2, r6
c0de476e:	0e0b      	lsrs	r3, r1, #24
c0de4770:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4774:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de4778:	70d3      	strb	r3, [r2, #3]
c0de477a:	0c0b      	lsrs	r3, r1, #16
c0de477c:	7093      	strb	r3, [r2, #2]
c0de477e:	0a0a      	lsrs	r2, r1, #8
c0de4780:	f886 2027 	strb.w	r2, [r6, #39]	@ 0x27
c0de4784:	f896 2024 	ldrb.w	r2, [r6, #36]	@ 0x24
c0de4788:	f042 0301 	orr.w	r3, r2, #1
c0de478c:	f886 3024 	strb.w	r3, [r6, #36]	@ 0x24
c0de4790:	68aa      	ldr	r2, [r5, #8]
c0de4792:	b352      	cbz	r2, c0de47ea <nbgl_layoutAddUpFooter+0x4ea>
c0de4794:	4610      	mov	r0, r2
c0de4796:	f007 fb45 	bl	c0debe24 <pic>
c0de479a:	4637      	mov	r7, r6
c0de479c:	4601      	mov	r1, r0
c0de479e:	f817 cf26 	ldrb.w	ip, [r7, #38]!
c0de47a2:	f817 ed22 	ldrb.w	lr, [r7, #-34]!
c0de47a6:	787a      	ldrb	r2, [r7, #1]
c0de47a8:	7fb8      	ldrb	r0, [r7, #30]
c0de47aa:	f897 3020 	ldrb.w	r3, [r7, #32]
c0de47ae:	f897 b023 	ldrb.w	fp, [r7, #35]	@ 0x23
c0de47b2:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
c0de47b6:	780a      	ldrb	r2, [r1, #0]
c0de47b8:	7849      	ldrb	r1, [r1, #1]
c0de47ba:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de47be:	ebae 0101 	sub.w	r1, lr, r1
c0de47c2:	f1a1 0220 	sub.w	r2, r1, #32
c0de47c6:	0a11      	lsrs	r1, r2, #8
c0de47c8:	703a      	strb	r2, [r7, #0]
c0de47ca:	7079      	strb	r1, [r7, #1]
c0de47cc:	f897 1025 	ldrb.w	r1, [r7, #37]	@ 0x25
c0de47d0:	f897 7024 	ldrb.w	r7, [r7, #36]	@ 0x24
c0de47d4:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de47d8:	ea4c 270b 	orr.w	r7, ip, fp, lsl #8
c0de47dc:	ea47 4101 	orr.w	r1, r7, r1, lsl #16
c0de47e0:	e005      	b.n	c0de47ee <nbgl_layoutAddUpFooter+0x4ee>
c0de47e2:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de47e6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de47ea:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de47ee:	b292      	uxth	r2, r2
c0de47f0:	f003 0301 	and.w	r3, r3, #1
c0de47f4:	f007 f942 	bl	c0deba7c <nbgl_getTextHeightInWidth>
c0de47f8:	6961      	ldr	r1, [r4, #20]
c0de47fa:	f003 f92e 	bl	c0de7a5a <OUTLINED_FUNCTION_71>
c0de47fe:	f003 f87b 	bl	c0de78f8 <OUTLINED_FUNCTION_44>
c0de4802:	2720      	movs	r7, #32
c0de4804:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4808:	600e      	str	r6, [r1, #0]
c0de480a:	75f7      	strb	r7, [r6, #23]
c0de480c:	71b0      	strb	r0, [r6, #6]
c0de480e:	0a01      	lsrs	r1, r0, #8
c0de4810:	6962      	ldr	r2, [r4, #20]
c0de4812:	71f1      	strb	r1, [r6, #7]
c0de4814:	71d1      	strb	r1, [r2, #7]
c0de4816:	7190      	strb	r0, [r2, #6]
c0de4818:	f002 ff98 	bl	c0de774c <OUTLINED_FUNCTION_21>
c0de481c:	2102      	movs	r1, #2
c0de481e:	7581      	strb	r1, [r0, #22]
c0de4820:	6961      	ldr	r1, [r4, #20]
c0de4822:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4826:	f002 fef5 	bl	c0de7614 <OUTLINED_FUNCTION_9>
c0de482a:	6048      	str	r0, [r1, #4]
c0de482c:	68a8      	ldr	r0, [r5, #8]
c0de482e:	b3e0      	cbz	r0, c0de48aa <nbgl_layoutAddUpFooter+0x5aa>
c0de4830:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4834:	f002 ffb4 	bl	c0de77a0 <OUTLINED_FUNCTION_26>
c0de4838:	4606      	mov	r6, r0
c0de483a:	2000      	movs	r0, #0
c0de483c:	7630      	strb	r0, [r6, #24]
c0de483e:	77f0      	strb	r0, [r6, #31]
c0de4840:	2006      	movs	r0, #6
c0de4842:	75f7      	strb	r7, [r6, #23]
c0de4844:	75b0      	strb	r0, [r6, #22]
c0de4846:	f003 f86b 	bl	c0de7920 <OUTLINED_FUNCTION_46>
c0de484a:	4631      	mov	r1, r6
c0de484c:	0e02      	lsrs	r2, r0, #24
c0de484e:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de4852:	f002 ff52 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de4856:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de485a:	6960      	ldr	r0, [r4, #20]
c0de485c:	f810 2f22 	ldrb.w	r2, [r0, #34]!
c0de4860:	7843      	ldrb	r3, [r0, #1]
c0de4862:	7887      	ldrb	r7, [r0, #2]
c0de4864:	78c0      	ldrb	r0, [r0, #3]
c0de4866:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de486a:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de486e:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4872:	6086      	str	r6, [r0, #8]
c0de4874:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4878:	780a      	ldrb	r2, [r1, #0]
c0de487a:	788b      	ldrb	r3, [r1, #2]
c0de487c:	78c9      	ldrb	r1, [r1, #3]
c0de487e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4882:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4886:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de488a:	7881      	ldrb	r1, [r0, #2]
c0de488c:	78c0      	ldrb	r0, [r0, #3]
c0de488e:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
c0de4892:	6960      	ldr	r0, [r4, #20]
c0de4894:	7982      	ldrb	r2, [r0, #6]
c0de4896:	79c3      	ldrb	r3, [r0, #7]
c0de4898:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de489c:	428a      	cmp	r2, r1
c0de489e:	bf2f      	iteee	cs
c0de48a0:	4611      	movcs	r1, r2
c0de48a2:	7181      	strbcc	r1, [r0, #6]
c0de48a4:	0a0a      	lsrcc	r2, r1, #8
c0de48a6:	71c2      	strbcc	r2, [r0, #7]
c0de48a8:	e004      	b.n	c0de48b4 <nbgl_layoutAddUpFooter+0x5b4>
c0de48aa:	6960      	ldr	r0, [r4, #20]
c0de48ac:	7981      	ldrb	r1, [r0, #6]
c0de48ae:	79c2      	ldrb	r2, [r0, #7]
c0de48b0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de48b4:	3130      	adds	r1, #48	@ 0x30
c0de48b6:	7181      	strb	r1, [r0, #6]
c0de48b8:	0a09      	lsrs	r1, r1, #8
c0de48ba:	71c1      	strb	r1, [r0, #7]
c0de48bc:	f8d4 20a0 	ldr.w	r2, [r4, #160]	@ 0xa0
c0de48c0:	6961      	ldr	r1, [r4, #20]
c0de48c2:	68a0      	ldr	r0, [r4, #8]
c0de48c4:	f812 3f06 	ldrb.w	r3, [r2, #6]!
c0de48c8:	79cf      	ldrb	r7, [r1, #7]
c0de48ca:	7856      	ldrb	r6, [r2, #1]
c0de48cc:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de48d0:	798e      	ldrb	r6, [r1, #6]
c0de48d2:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de48d6:	1b9b      	subs	r3, r3, r6
c0de48d8:	7013      	strb	r3, [r2, #0]
c0de48da:	6101      	str	r1, [r0, #16]
c0de48dc:	0a1b      	lsrs	r3, r3, #8
c0de48de:	6960      	ldr	r0, [r4, #20]
c0de48e0:	7053      	strb	r3, [r2, #1]
c0de48e2:	782a      	ldrb	r2, [r5, #0]
c0de48e4:	7981      	ldrb	r1, [r0, #6]
c0de48e6:	79c0      	ldrb	r0, [r0, #7]
c0de48e8:	f884 20ac 	strb.w	r2, [r4, #172]	@ 0xac
c0de48ec:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de48f0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de48f4 <nbgl_layoutAddSwipe>:
c0de48f4:	b3e8      	cbz	r0, c0de4972 <nbgl_layoutAddSwipe+0x7e>
c0de48f6:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de48fa:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de48fe:	461c      	mov	r4, r3
c0de4900:	4617      	mov	r7, r2
c0de4902:	460d      	mov	r5, r1
c0de4904:	4606      	mov	r6, r0
c0de4906:	b352      	cbz	r2, c0de495e <nbgl_layoutAddSwipe+0x6a>
c0de4908:	2004      	movs	r0, #4
c0de490a:	2100      	movs	r1, #0
c0de490c:	f04f 0a00 	mov.w	sl, #0
c0de4910:	f007 f89b 	bl	c0deba4a <nbgl_objPoolGet>
c0de4914:	61b0      	str	r0, [r6, #24]
c0de4916:	4638      	mov	r0, r7
c0de4918:	f007 fa84 	bl	c0debe24 <pic>
c0de491c:	69b1      	ldr	r1, [r6, #24]
c0de491e:	0e02      	lsrs	r2, r0, #24
c0de4920:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de4924:	f003 f82d 	bl	c0de7982 <OUTLINED_FUNCTION_53>
c0de4928:	2001      	movs	r0, #1
c0de492a:	22a0      	movs	r2, #160	@ 0xa0
c0de492c:	f801 2c22 	strb.w	r2, [r1, #-34]
c0de4930:	220b      	movs	r2, #11
c0de4932:	f801 0c21 	strb.w	r0, [r1, #-33]
c0de4936:	f801 0c07 	strb.w	r0, [r1, #-7]
c0de493a:	200b      	movs	r0, #11
c0de493c:	f801 2c04 	strb.w	r2, [r1, #-4]
c0de4940:	f007 f897 	bl	c0deba72 <nbgl_getFontLineHeight>
c0de4944:	69b1      	ldr	r1, [r6, #24]
c0de4946:	7188      	strb	r0, [r1, #6]
c0de4948:	201e      	movs	r0, #30
c0de494a:	f881 a007 	strb.w	sl, [r1, #7]
c0de494e:	f881 a01a 	strb.w	sl, [r1, #26]
c0de4952:	7648      	strb	r0, [r1, #25]
c0de4954:	2005      	movs	r0, #5
c0de4956:	f881 0020 	strb.w	r0, [r1, #32]
c0de495a:	2008      	movs	r0, #8
c0de495c:	7588      	strb	r0, [r1, #22]
c0de495e:	4630      	mov	r0, r6
c0de4960:	4629      	mov	r1, r5
c0de4962:	2201      	movs	r2, #1
c0de4964:	4623      	mov	r3, r4
c0de4966:	f8cd 8000 	str.w	r8, [sp]
c0de496a:	f000 f804 	bl	c0de4976 <addSwipeInternal>
c0de496e:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de4972:	f002 bfa2 	b.w	c0de78ba <OUTLINED_FUNCTION_40>

c0de4976 <addSwipeInternal>:
c0de4976:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4978:	f411 6ff0 	tst.w	r1, #1920	@ 0x780
c0de497c:	d013      	beq.n	c0de49a6 <addSwipeInternal+0x30>
c0de497e:	9f06      	ldr	r7, [sp, #24]
c0de4980:	460c      	mov	r4, r1
c0de4982:	f8d0 10a0 	ldr.w	r1, [r0, #160]	@ 0xa0
c0de4986:	4615      	mov	r5, r2
c0de4988:	461a      	mov	r2, r3
c0de498a:	4606      	mov	r6, r0
c0de498c:	463b      	mov	r3, r7
c0de498e:	f7ff fa27 	bl	c0de3de0 <layoutAddCallbackObj>
c0de4992:	b140      	cbz	r0, c0de49a6 <addSwipeInternal+0x30>
c0de4994:	f8d6 00a0 	ldr.w	r0, [r6, #160]	@ 0xa0
c0de4998:	0a21      	lsrs	r1, r4, #8
c0de499a:	f886 50b0 	strb.w	r5, [r6, #176]	@ 0xb0
c0de499e:	7741      	strb	r1, [r0, #29]
c0de49a0:	7704      	strb	r4, [r0, #28]
c0de49a2:	2000      	movs	r0, #0
c0de49a4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de49a6:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de49aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de49ac <nbgl_layoutAddTopRightButton>:
c0de49ac:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de49b0:	b3a8      	cbz	r0, c0de4a1e <nbgl_layoutAddTopRightButton+0x72>
c0de49b2:	f003 f826 	bl	c0de7a02 <OUTLINED_FUNCTION_64>
c0de49b6:	4688      	mov	r8, r1
c0de49b8:	461f      	mov	r7, r3
c0de49ba:	4615      	mov	r5, r2
c0de49bc:	f04f 0a05 	mov.w	sl, #5
c0de49c0:	f002 fe68 	bl	c0de7694 <OUTLINED_FUNCTION_13>
c0de49c4:	4606      	mov	r6, r0
c0de49c6:	4620      	mov	r0, r4
c0de49c8:	462a      	mov	r2, r5
c0de49ca:	463b      	mov	r3, r7
c0de49cc:	4631      	mov	r1, r6
c0de49ce:	f7ff fa07 	bl	c0de3de0 <layoutAddCallbackObj>
c0de49d2:	b320      	cbz	r0, c0de4a1e <nbgl_layoutAddTopRightButton+0x72>
c0de49d4:	2058      	movs	r0, #88	@ 0x58
c0de49d6:	2700      	movs	r7, #0
c0de49d8:	2503      	movs	r5, #3
c0de49da:	f886 a01e 	strb.w	sl, [r6, #30]
c0de49de:	71b0      	strb	r0, [r6, #6]
c0de49e0:	7130      	strb	r0, [r6, #4]
c0de49e2:	2020      	movs	r0, #32
c0de49e4:	71f7      	strb	r7, [r6, #7]
c0de49e6:	7177      	strb	r7, [r6, #5]
c0de49e8:	76b7      	strb	r7, [r6, #26]
c0de49ea:	7637      	strb	r7, [r6, #24]
c0de49ec:	7777      	strb	r7, [r6, #29]
c0de49ee:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de49f2:	77f5      	strb	r5, [r6, #31]
c0de49f4:	7670      	strb	r0, [r6, #25]
c0de49f6:	75f0      	strb	r0, [r6, #23]
c0de49f8:	2001      	movs	r0, #1
c0de49fa:	7730      	strb	r0, [r6, #28]
c0de49fc:	2004      	movs	r0, #4
c0de49fe:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4a02:	2002      	movs	r0, #2
c0de4a04:	f886 0020 	strb.w	r0, [r6, #32]
c0de4a08:	4640      	mov	r0, r8
c0de4a0a:	f007 fa0b 	bl	c0debe24 <pic>
c0de4a0e:	4631      	mov	r1, r6
c0de4a10:	0e02      	lsrs	r2, r0, #24
c0de4a12:	75b5      	strb	r5, [r6, #22]
c0de4a14:	f002 fee6 	bl	c0de77e4 <OUTLINED_FUNCTION_29>
c0de4a18:	68a0      	ldr	r0, [r4, #8]
c0de4a1a:	6086      	str	r6, [r0, #8]
c0de4a1c:	e001      	b.n	c0de4a22 <nbgl_layoutAddTopRightButton+0x76>
c0de4a1e:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de4a22:	4638      	mov	r0, r7
c0de4a24:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de4a28 <nbgl_layoutAddExtendedFooter>:
c0de4a28:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de4a2c:	2800      	cmp	r0, #0
c0de4a2e:	f000 834d 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4a32:	460d      	mov	r5, r1
c0de4a34:	b119      	cbz	r1, c0de4a3e <nbgl_layoutAddExtendedFooter+0x16>
c0de4a36:	4604      	mov	r4, r0
c0de4a38:	7828      	ldrb	r0, [r5, #0]
c0de4a3a:	2806      	cmp	r0, #6
c0de4a3c:	d902      	bls.n	c0de4a44 <nbgl_layoutAddExtendedFooter+0x1c>
c0de4a3e:	f06f 0701 	mvn.w	r7, #1
c0de4a42:	e345      	b.n	c0de50d0 <nbgl_layoutAddExtendedFooter+0x6a8>
c0de4a44:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4a48:	2601      	movs	r6, #1
c0de4a4a:	f002 fe67 	bl	c0de771c <OUTLINED_FUNCTION_19>
c0de4a4e:	f002 ff8c 	bl	c0de796a <OUTLINED_FUNCTION_51>
c0de4a52:	6120      	str	r0, [r4, #16]
c0de4a54:	f002 ffaa 	bl	c0de79ac <OUTLINED_FUNCTION_57>
c0de4a58:	4601      	mov	r1, r0
c0de4a5a:	0a02      	lsrs	r2, r0, #8
c0de4a5c:	6920      	ldr	r0, [r4, #16]
c0de4a5e:	0e0b      	lsrs	r3, r1, #24
c0de4a60:	f880 2023 	strb.w	r2, [r0, #35]	@ 0x23
c0de4a64:	2208      	movs	r2, #8
c0de4a66:	7582      	strb	r2, [r0, #22]
c0de4a68:	4602      	mov	r2, r0
c0de4a6a:	f802 1f22 	strb.w	r1, [r2, #34]!
c0de4a6e:	0c09      	lsrs	r1, r1, #16
c0de4a70:	7091      	strb	r1, [r2, #2]
c0de4a72:	70d3      	strb	r3, [r2, #3]
c0de4a74:	7829      	ldrb	r1, [r5, #0]
c0de4a76:	2906      	cmp	r1, #6
c0de4a78:	d017      	beq.n	c0de4aaa <nbgl_layoutAddExtendedFooter+0x82>
c0de4a7a:	2901      	cmp	r1, #1
c0de4a7c:	f000 80bd 	beq.w	c0de4bfa <nbgl_layoutAddExtendedFooter+0x1d2>
c0de4a80:	2902      	cmp	r1, #2
c0de4a82:	f000 80f6 	beq.w	c0de4c72 <nbgl_layoutAddExtendedFooter+0x24a>
c0de4a86:	2903      	cmp	r1, #3
c0de4a88:	f000 8188 	beq.w	c0de4d9c <nbgl_layoutAddExtendedFooter+0x374>
c0de4a8c:	2904      	cmp	r1, #4
c0de4a8e:	f000 824c 	beq.w	c0de4f2a <nbgl_layoutAddExtendedFooter+0x502>
c0de4a92:	2905      	cmp	r1, #5
c0de4a94:	f000 8268 	beq.w	c0de4f68 <nbgl_layoutAddExtendedFooter+0x540>
c0de4a98:	2900      	cmp	r1, #0
c0de4a9a:	d1d0      	bne.n	c0de4a3e <nbgl_layoutAddExtendedFooter+0x16>
c0de4a9c:	88a9      	ldrh	r1, [r5, #4]
c0de4a9e:	f04f 0800 	mov.w	r8, #0
c0de4aa2:	7181      	strb	r1, [r0, #6]
c0de4aa4:	0a09      	lsrs	r1, r1, #8
c0de4aa6:	71c1      	strb	r1, [r0, #7]
c0de4aa8:	e2de      	b.n	c0de5068 <nbgl_layoutAddExtendedFooter+0x640>
c0de4aaa:	68a8      	ldr	r0, [r5, #8]
c0de4aac:	2800      	cmp	r0, #0
c0de4aae:	f000 830d 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4ab2:	6868      	ldr	r0, [r5, #4]
c0de4ab4:	2800      	cmp	r0, #0
c0de4ab6:	f000 8309 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4aba:	f002 fda5 	bl	c0de7608 <OUTLINED_FUNCTION_8>
c0de4abe:	4606      	mov	r6, r0
c0de4ac0:	7c2a      	ldrb	r2, [r5, #16]
c0de4ac2:	7cab      	ldrb	r3, [r5, #18]
c0de4ac4:	f002 fe00 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de4ac8:	2800      	cmp	r0, #0
c0de4aca:	f000 82ff 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4ace:	2103      	movs	r1, #3
c0de4ad0:	2208      	movs	r2, #8
c0de4ad2:	f04f 0801 	mov.w	r8, #1
c0de4ad6:	f04f 0a00 	mov.w	sl, #0
c0de4ada:	23a0      	movs	r3, #160	@ 0xa0
c0de4adc:	75b2      	strb	r2, [r6, #22]
c0de4ade:	77f1      	strb	r1, [r6, #31]
c0de4ae0:	f880 8005 	strb.w	r8, [r0, #5]
c0de4ae4:	2258      	movs	r2, #88	@ 0x58
c0de4ae6:	7c68      	ldrb	r0, [r5, #17]
c0de4ae8:	71b2      	strb	r2, [r6, #6]
c0de4aea:	2204      	movs	r2, #4
c0de4aec:	f886 a01a 	strb.w	sl, [r6, #26]
c0de4af0:	f886 a021 	strb.w	sl, [r6, #33]	@ 0x21
c0de4af4:	f886 a007 	strb.w	sl, [r6, #7]
c0de4af8:	f886 8005 	strb.w	r8, [r6, #5]
c0de4afc:	7133      	strb	r3, [r6, #4]
c0de4afe:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de4b02:	2803      	cmp	r0, #3
c0de4b04:	bf08      	it	eq
c0de4b06:	2102      	moveq	r1, #2
c0de4b08:	f886 1020 	strb.w	r1, [r6, #32]
c0de4b0c:	bf08      	it	eq
c0de4b0e:	2218      	moveq	r2, #24
c0de4b10:	7672      	strb	r2, [r6, #25]
c0de4b12:	f002 ff05 	bl	c0de7920 <OUTLINED_FUNCTION_46>
c0de4b16:	f002 ff3a 	bl	c0de798e <OUTLINED_FUNCTION_54>
c0de4b1a:	f002 fe75 	bl	c0de7808 <OUTLINED_FUNCTION_31>
c0de4b1e:	f002 fdbd 	bl	c0de769c <OUTLINED_FUNCTION_14>
c0de4b22:	200a      	movs	r0, #10
c0de4b24:	77b0      	strb	r0, [r6, #30]
c0de4b26:	6920      	ldr	r0, [r4, #16]
c0de4b28:	f002 fcf0 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de4b2c:	7c68      	ldrb	r0, [r5, #17]
c0de4b2e:	b308      	cbz	r0, c0de4b74 <nbgl_layoutAddExtendedFooter+0x14c>
c0de4b30:	2803      	cmp	r0, #3
c0de4b32:	d01f      	beq.n	c0de4b74 <nbgl_layoutAddExtendedFooter+0x14c>
c0de4b34:	f002 fe0a 	bl	c0de774c <OUTLINED_FUNCTION_21>
c0de4b38:	0a31      	lsrs	r1, r6, #8
c0de4b3a:	0e32      	lsrs	r2, r6, #24
c0de4b3c:	74c1      	strb	r1, [r0, #19]
c0de4b3e:	4601      	mov	r1, r0
c0de4b40:	f801 6f12 	strb.w	r6, [r1, #18]!
c0de4b44:	70ca      	strb	r2, [r1, #3]
c0de4b46:	0c32      	lsrs	r2, r6, #16
c0de4b48:	708a      	strb	r2, [r1, #2]
c0de4b4a:	6921      	ldr	r1, [r4, #16]
c0de4b4c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4b50:	784e      	ldrb	r6, [r1, #1]
c0de4b52:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4b56:	788f      	ldrb	r7, [r1, #2]
c0de4b58:	78c9      	ldrb	r1, [r1, #3]
c0de4b5a:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de4b5e:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de4b62:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4b66:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de4b6a:	2102      	movs	r1, #2
c0de4b6c:	7581      	strb	r1, [r0, #22]
c0de4b6e:	6920      	ldr	r0, [r4, #16]
c0de4b70:	f002 fccc 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de4b74:	f002 fd48 	bl	c0de7608 <OUTLINED_FUNCTION_8>
c0de4b78:	4606      	mov	r6, r0
c0de4b7a:	7c2a      	ldrb	r2, [r5, #16]
c0de4b7c:	7cab      	ldrb	r3, [r5, #18]
c0de4b7e:	f002 fda3 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de4b82:	2800      	cmp	r0, #0
c0de4b84:	f000 82a2 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4b88:	2118      	movs	r1, #24
c0de4b8a:	f04f 0a00 	mov.w	sl, #0
c0de4b8e:	f04f 0801 	mov.w	r8, #1
c0de4b92:	7671      	strb	r1, [r6, #25]
c0de4b94:	2102      	movs	r1, #2
c0de4b96:	f886 a01a 	strb.w	sl, [r6, #26]
c0de4b9a:	f880 a005 	strb.w	sl, [r0, #5]
c0de4b9e:	75b1      	strb	r1, [r6, #22]
c0de4ba0:	2104      	movs	r1, #4
c0de4ba2:	7c68      	ldrb	r0, [r5, #17]
c0de4ba4:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4ba8:	2158      	movs	r1, #88	@ 0x58
c0de4baa:	f886 8005 	strb.w	r8, [r6, #5]
c0de4bae:	f886 a007 	strb.w	sl, [r6, #7]
c0de4bb2:	71b1      	strb	r1, [r6, #6]
c0de4bb4:	21a0      	movs	r1, #160	@ 0xa0
c0de4bb6:	7131      	strb	r1, [r6, #4]
c0de4bb8:	2100      	movs	r1, #0
c0de4bba:	2802      	cmp	r0, #2
c0de4bbc:	bf08      	it	eq
c0de4bbe:	2103      	moveq	r1, #3
c0de4bc0:	77f1      	strb	r1, [r6, #31]
c0de4bc2:	1e81      	subs	r1, r0, #2
c0de4bc4:	bf18      	it	ne
c0de4bc6:	2103      	movne	r1, #3
c0de4bc8:	3802      	subs	r0, #2
c0de4bca:	f886 1021 	strb.w	r1, [r6, #33]	@ 0x21
c0de4bce:	fab0 f080 	clz	r0, r0
c0de4bd2:	0940      	lsrs	r0, r0, #5
c0de4bd4:	0040      	lsls	r0, r0, #1
c0de4bd6:	f886 0020 	strb.w	r0, [r6, #32]
c0de4bda:	f002 fdbc 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de4bde:	4631      	mov	r1, r6
c0de4be0:	0e02      	lsrs	r2, r0, #24
c0de4be2:	f801 0f25 	strb.w	r0, [r1, #37]!
c0de4be6:	f002 fecc 	bl	c0de7982 <OUTLINED_FUNCTION_53>
c0de4bea:	7c68      	ldrb	r0, [r5, #17]
c0de4bec:	2800      	cmp	r0, #0
c0de4bee:	f000 828e 	beq.w	c0de510e <nbgl_layoutAddExtendedFooter+0x6e6>
c0de4bf2:	68e8      	ldr	r0, [r5, #12]
c0de4bf4:	f007 f916 	bl	c0debe24 <pic>
c0de4bf8:	e28a      	b.n	c0de5110 <nbgl_layoutAddExtendedFooter+0x6e8>
c0de4bfa:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4bfe:	f002 fc8b 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de4c02:	4606      	mov	r6, r0
c0de4c04:	7a6a      	ldrb	r2, [r5, #9]
c0de4c06:	7aab      	ldrb	r3, [r5, #10]
c0de4c08:	f002 fd5e 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de4c0c:	2800      	cmp	r0, #0
c0de4c0e:	f000 825d 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4c12:	2008      	movs	r0, #8
c0de4c14:	4637      	mov	r7, r6
c0de4c16:	f04f 0a01 	mov.w	sl, #1
c0de4c1a:	21a0      	movs	r1, #160	@ 0xa0
c0de4c1c:	f04f 0800 	mov.w	r8, #0
c0de4c20:	75b0      	strb	r0, [r6, #22]
c0de4c22:	7a28      	ldrb	r0, [r5, #8]
c0de4c24:	f886 a005 	strb.w	sl, [r6, #5]
c0de4c28:	7131      	strb	r1, [r6, #4]
c0de4c2a:	77f0      	strb	r0, [r6, #31]
c0de4c2c:	2060      	movs	r0, #96	@ 0x60
c0de4c2e:	f807 0f06 	strb.w	r0, [r7, #6]!
c0de4c32:	f887 8001 	strb.w	r8, [r7, #1]
c0de4c36:	f002 fd8e 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de4c3a:	4631      	mov	r1, r6
c0de4c3c:	0e02      	lsrs	r2, r0, #24
c0de4c3e:	f002 fd12 	bl	c0de7666 <OUTLINED_FUNCTION_12>
c0de4c42:	7a29      	ldrb	r1, [r5, #8]
c0de4c44:	f886 801d 	strb.w	r8, [r6, #29]
c0de4c48:	f886 a01e 	strb.w	sl, [r6, #30]
c0de4c4c:	f840 602c 	str.w	r6, [r0, ip, lsl #2]
c0de4c50:	2005      	movs	r0, #5
c0de4c52:	f886 a01c 	strb.w	sl, [r6, #28]
c0de4c56:	f886 0020 	strb.w	r0, [r6, #32]
c0de4c5a:	200b      	movs	r0, #11
c0de4c5c:	2900      	cmp	r1, #0
c0de4c5e:	bf08      	it	eq
c0de4c60:	200c      	moveq	r0, #12
c0de4c62:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4c66:	6922      	ldr	r2, [r4, #16]
c0de4c68:	7879      	ldrb	r1, [r7, #1]
c0de4c6a:	7838      	ldrb	r0, [r7, #0]
c0de4c6c:	f002 feaa 	bl	c0de79c4 <OUTLINED_FUNCTION_59>
c0de4c70:	e1fa      	b.n	c0de5068 <nbgl_layoutAddExtendedFooter+0x640>
c0de4c72:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4c76:	f002 fc4f 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de4c7a:	4606      	mov	r6, r0
c0de4c7c:	7b2a      	ldrb	r2, [r5, #12]
c0de4c7e:	7bab      	ldrb	r3, [r5, #14]
c0de4c80:	f002 fd22 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de4c84:	2800      	cmp	r0, #0
c0de4c86:	f000 8221 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4c8a:	2007      	movs	r0, #7
c0de4c8c:	f04f 0a00 	mov.w	sl, #0
c0de4c90:	f04f 08d0 	mov.w	r8, #208	@ 0xd0
c0de4c94:	75b0      	strb	r0, [r6, #22]
c0de4c96:	2060      	movs	r0, #96	@ 0x60
c0de4c98:	f886 a01f 	strb.w	sl, [r6, #31]
c0de4c9c:	f886 a007 	strb.w	sl, [r6, #7]
c0de4ca0:	f886 a005 	strb.w	sl, [r6, #5]
c0de4ca4:	f886 8004 	strb.w	r8, [r6, #4]
c0de4ca8:	71b0      	strb	r0, [r6, #6]
c0de4caa:	f002 fd54 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de4cae:	4631      	mov	r1, r6
c0de4cb0:	0e02      	lsrs	r2, r0, #24
c0de4cb2:	f04f 0b01 	mov.w	fp, #1
c0de4cb6:	f886 a01d 	strb.w	sl, [r6, #29]
c0de4cba:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de4cbe:	f886 b01e 	strb.w	fp, [r6, #30]
c0de4cc2:	f002 fd80 	bl	c0de77c6 <OUTLINED_FUNCTION_28>
c0de4cc6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4cca:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de4cce:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4cd2:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de4cd6:	f002 fdf3 	bl	c0de78c0 <OUTLINED_FUNCTION_41>
c0de4cda:	f886 0020 	strb.w	r0, [r6, #32]
c0de4cde:	6920      	ldr	r0, [r4, #16]
c0de4ce0:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de4ce4:	3101      	adds	r1, #1
c0de4ce6:	f880 1020 	strb.w	r1, [r0, #32]
c0de4cea:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4cee:	f002 fc13 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de4cf2:	4606      	mov	r6, r0
c0de4cf4:	7b6a      	ldrb	r2, [r5, #13]
c0de4cf6:	7bab      	ldrb	r3, [r5, #14]
c0de4cf8:	f002 fce6 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de4cfc:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de4d00:	2800      	cmp	r0, #0
c0de4d02:	f000 81e5 	beq.w	c0de50d0 <nbgl_layoutAddExtendedFooter+0x6a8>
c0de4d06:	2009      	movs	r0, #9
c0de4d08:	f886 8004 	strb.w	r8, [r6, #4]
c0de4d0c:	46b0      	mov	r8, r6
c0de4d0e:	f886 a01f 	strb.w	sl, [r6, #31]
c0de4d12:	f886 a005 	strb.w	sl, [r6, #5]
c0de4d16:	75b0      	strb	r0, [r6, #22]
c0de4d18:	2060      	movs	r0, #96	@ 0x60
c0de4d1a:	f808 0f06 	strb.w	r0, [r8, #6]!
c0de4d1e:	f888 a001 	strb.w	sl, [r8, #1]
c0de4d22:	f002 fdfd 	bl	c0de7920 <OUTLINED_FUNCTION_46>
c0de4d26:	f002 fe32 	bl	c0de798e <OUTLINED_FUNCTION_54>
c0de4d2a:	f002 fc9c 	bl	c0de7666 <OUTLINED_FUNCTION_12>
c0de4d2e:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de4d32:	f840 602c 	str.w	r6, [r0, ip, lsl #2]
c0de4d36:	f002 fdc3 	bl	c0de78c0 <OUTLINED_FUNCTION_41>
c0de4d3a:	6922      	ldr	r2, [r4, #16]
c0de4d3c:	f886 0020 	strb.w	r0, [r6, #32]
c0de4d40:	2003      	movs	r0, #3
c0de4d42:	77b0      	strb	r0, [r6, #30]
c0de4d44:	f898 0000 	ldrb.w	r0, [r8]
c0de4d48:	f002 fe3c 	bl	c0de79c4 <OUTLINED_FUNCTION_59>
c0de4d4c:	f002 fe34 	bl	c0de79b8 <OUTLINED_FUNCTION_58>
c0de4d50:	4680      	mov	r8, r0
c0de4d52:	f880 a005 	strb.w	sl, [r0, #5]
c0de4d56:	f880 b004 	strb.w	fp, [r0, #4]
c0de4d5a:	20ff      	movs	r0, #255	@ 0xff
c0de4d5c:	0e31      	lsrs	r1, r6, #24
c0de4d5e:	f888 0018 	strb.w	r0, [r8, #24]
c0de4d62:	0a30      	lsrs	r0, r6, #8
c0de4d64:	f888 7017 	strb.w	r7, [r8, #23]
c0de4d68:	f888 b021 	strb.w	fp, [r8, #33]	@ 0x21
c0de4d6c:	f888 a01f 	strb.w	sl, [r8, #31]
c0de4d70:	f888 0013 	strb.w	r0, [r8, #19]
c0de4d74:	2002      	movs	r0, #2
c0de4d76:	f888 0020 	strb.w	r0, [r8, #32]
c0de4d7a:	2004      	movs	r0, #4
c0de4d7c:	f888 0016 	strb.w	r0, [r8, #22]
c0de4d80:	4640      	mov	r0, r8
c0de4d82:	f800 6f12 	strb.w	r6, [r0, #18]!
c0de4d86:	70c1      	strb	r1, [r0, #3]
c0de4d88:	0c31      	lsrs	r1, r6, #16
c0de4d8a:	7081      	strb	r1, [r0, #2]
c0de4d8c:	6920      	ldr	r0, [r4, #16]
c0de4d8e:	7981      	ldrb	r1, [r0, #6]
c0de4d90:	79c0      	ldrb	r0, [r0, #7]
c0de4d92:	f888 0007 	strb.w	r0, [r8, #7]
c0de4d96:	f888 1006 	strb.w	r1, [r8, #6]
c0de4d9a:	e165      	b.n	c0de5068 <nbgl_layoutAddExtendedFooter+0x640>
c0de4d9c:	f04f 0b00 	mov.w	fp, #0
c0de4da0:	2760      	movs	r7, #96	@ 0x60
c0de4da2:	f880 b007 	strb.w	fp, [r0, #7]
c0de4da6:	7187      	strb	r7, [r0, #6]
c0de4da8:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4dac:	f002 fbb4 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de4db0:	4606      	mov	r6, r0
c0de4db2:	7d2a      	ldrb	r2, [r5, #20]
c0de4db4:	7d6b      	ldrb	r3, [r5, #21]
c0de4db6:	f002 fc87 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de4dba:	2800      	cmp	r0, #0
c0de4dbc:	f000 8186 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4dc0:	1d28      	adds	r0, r5, #4
c0de4dc2:	46b0      	mov	r8, r6
c0de4dc4:	f886 b01f 	strb.w	fp, [r6, #31]
c0de4dc8:	f886 b007 	strb.w	fp, [r6, #7]
c0de4dcc:	71b7      	strb	r7, [r6, #6]
c0de4dce:	9001      	str	r0, [sp, #4]
c0de4dd0:	2007      	movs	r0, #7
c0de4dd2:	75b0      	strb	r0, [r6, #22]
c0de4dd4:	20c0      	movs	r0, #192	@ 0xc0
c0de4dd6:	f808 0f04 	strb.w	r0, [r8, #4]!
c0de4dda:	f888 b001 	strb.w	fp, [r8, #1]
c0de4dde:	6928      	ldr	r0, [r5, #16]
c0de4de0:	f007 f820 	bl	c0debe24 <pic>
c0de4de4:	4631      	mov	r1, r6
c0de4de6:	0e02      	lsrs	r2, r0, #24
c0de4de8:	f886 b01d 	strb.w	fp, [r6, #29]
c0de4dec:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de4df0:	f002 fce9 	bl	c0de77c6 <OUTLINED_FUNCTION_28>
c0de4df4:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de4df8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4dfc:	2701      	movs	r7, #1
c0de4dfe:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4e02:	77b7      	strb	r7, [r6, #30]
c0de4e04:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de4e08:	200c      	movs	r0, #12
c0de4e0a:	7737      	strb	r7, [r6, #28]
c0de4e0c:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4e10:	2005      	movs	r0, #5
c0de4e12:	f886 0020 	strb.w	r0, [r6, #32]
c0de4e16:	6920      	ldr	r0, [r4, #16]
c0de4e18:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de4e1c:	3101      	adds	r1, #1
c0de4e1e:	f880 1020 	strb.w	r1, [r0, #32]
c0de4e22:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4e26:	f002 fc79 	bl	c0de771c <OUTLINED_FUNCTION_19>
c0de4e2a:	4682      	mov	sl, r0
c0de4e2c:	2004      	movs	r0, #4
c0de4e2e:	f88a 0020 	strb.w	r0, [sl, #32]
c0de4e32:	20a0      	movs	r0, #160	@ 0xa0
c0de4e34:	4656      	mov	r6, sl
c0de4e36:	f88a b01f 	strb.w	fp, [sl, #31]
c0de4e3a:	f806 0f04 	strb.w	r0, [r6, #4]!
c0de4e3e:	7077      	strb	r7, [r6, #1]
c0de4e40:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4e44:	f002 fdae 	bl	c0de79a4 <OUTLINED_FUNCTION_56>
c0de4e48:	2109      	movs	r1, #9
c0de4e4a:	0e02      	lsrs	r2, r0, #24
c0de4e4c:	f88a b007 	strb.w	fp, [sl, #7]
c0de4e50:	f88a 1016 	strb.w	r1, [sl, #22]
c0de4e54:	2160      	movs	r1, #96	@ 0x60
c0de4e56:	f88a 1006 	strb.w	r1, [sl, #6]
c0de4e5a:	4651      	mov	r1, sl
c0de4e5c:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4e60:	f002 fc4b 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de4e64:	f88a 0023 	strb.w	r0, [sl, #35]	@ 0x23
c0de4e68:	f898 0000 	ldrb.w	r0, [r8]
c0de4e6c:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de4e70:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4e74:	9901      	ldr	r1, [sp, #4]
c0de4e76:	f5c0 70f0 	rsb	r0, r0, #480	@ 0x1e0
c0de4e7a:	7030      	strb	r0, [r6, #0]
c0de4e7c:	0a00      	lsrs	r0, r0, #8
c0de4e7e:	7070      	strb	r0, [r6, #1]
c0de4e80:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de4e84:	08c2      	lsrs	r2, r0, #3
c0de4e86:	4650      	mov	r0, sl
c0de4e88:	f002 fe7a 	bl	c0de7b80 <layoutNavigationPopulate>
c0de4e8c:	792a      	ldrb	r2, [r5, #4]
c0de4e8e:	7b2b      	ldrb	r3, [r5, #12]
c0de4e90:	4620      	mov	r0, r4
c0de4e92:	4651      	mov	r1, sl
c0de4e94:	f7fe ffa4 	bl	c0de3de0 <layoutAddCallbackObj>
c0de4e98:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de4e9c:	2800      	cmp	r0, #0
c0de4e9e:	f000 8117 	beq.w	c0de50d0 <nbgl_layoutAddExtendedFooter+0x6a8>
c0de4ea2:	f002 fd89 	bl	c0de79b8 <OUTLINED_FUNCTION_58>
c0de4ea6:	4680      	mov	r8, r0
c0de4ea8:	2002      	movs	r0, #2
c0de4eaa:	2101      	movs	r1, #1
c0de4eac:	f888 0020 	strb.w	r0, [r8, #32]
c0de4eb0:	2000      	movs	r0, #0
c0de4eb2:	f888 1004 	strb.w	r1, [r8, #4]
c0de4eb6:	f888 1021 	strb.w	r1, [r8, #33]	@ 0x21
c0de4eba:	ea4f 611a 	mov.w	r1, sl, lsr #24
c0de4ebe:	f888 7017 	strb.w	r7, [r8, #23]
c0de4ec2:	f888 0005 	strb.w	r0, [r8, #5]
c0de4ec6:	f888 001f 	strb.w	r0, [r8, #31]
c0de4eca:	2004      	movs	r0, #4
c0de4ecc:	f888 0016 	strb.w	r0, [r8, #22]
c0de4ed0:	20ff      	movs	r0, #255	@ 0xff
c0de4ed2:	f888 0018 	strb.w	r0, [r8, #24]
c0de4ed6:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de4eda:	f888 0013 	strb.w	r0, [r8, #19]
c0de4ede:	4640      	mov	r0, r8
c0de4ee0:	f800 af12 	strb.w	sl, [r0, #18]!
c0de4ee4:	70c1      	strb	r1, [r0, #3]
c0de4ee6:	ea4f 411a 	mov.w	r1, sl, lsr #16
c0de4eea:	7081      	strb	r1, [r0, #2]
c0de4eec:	6920      	ldr	r0, [r4, #16]
c0de4eee:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4ef2:	f810 3c1b 	ldrb.w	r3, [r0, #-27]
c0de4ef6:	f810 2c1c 	ldrb.w	r2, [r0, #-28]
c0de4efa:	7847      	ldrb	r7, [r0, #1]
c0de4efc:	f810 6c02 	ldrb.w	r6, [r0, #-2]
c0de4f00:	f888 3007 	strb.w	r3, [r8, #7]
c0de4f04:	f888 2006 	strb.w	r2, [r8, #6]
c0de4f08:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de4f0c:	79aa      	ldrb	r2, [r5, #6]
c0de4f0e:	f884 20a9 	strb.w	r2, [r4, #169]	@ 0xa9
c0de4f12:	78c2      	ldrb	r2, [r0, #3]
c0de4f14:	7880      	ldrb	r0, [r0, #2]
c0de4f16:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de4f1a:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4f1e:	7969      	ldrb	r1, [r5, #5]
c0de4f20:	f840 a026 	str.w	sl, [r0, r6, lsl #2]
c0de4f24:	f884 10a8 	strb.w	r1, [r4, #168]	@ 0xa8
c0de4f28:	e09b      	b.n	c0de5062 <nbgl_layoutAddExtendedFooter+0x63a>
c0de4f2a:	2100      	movs	r1, #0
c0de4f2c:	71c1      	strb	r1, [r0, #7]
c0de4f2e:	2160      	movs	r1, #96	@ 0x60
c0de4f30:	7181      	strb	r1, [r0, #6]
c0de4f32:	1d29      	adds	r1, r5, #4
c0de4f34:	f894 20ad 	ldrb.w	r2, [r4, #173]	@ 0xad
c0de4f38:	08d2      	lsrs	r2, r2, #3
c0de4f3a:	f002 fe21 	bl	c0de7b80 <layoutNavigationPopulate>
c0de4f3e:	6921      	ldr	r1, [r4, #16]
c0de4f40:	2004      	movs	r0, #4
c0de4f42:	f881 0020 	strb.w	r0, [r1, #32]
c0de4f46:	4620      	mov	r0, r4
c0de4f48:	792a      	ldrb	r2, [r5, #4]
c0de4f4a:	7b2b      	ldrb	r3, [r5, #12]
c0de4f4c:	f7fe ff48 	bl	c0de3de0 <layoutAddCallbackObj>
c0de4f50:	2800      	cmp	r0, #0
c0de4f52:	f000 80bb 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4f56:	79a8      	ldrb	r0, [r5, #6]
c0de4f58:	f04f 0800 	mov.w	r8, #0
c0de4f5c:	f884 00a9 	strb.w	r0, [r4, #169]	@ 0xa9
c0de4f60:	7968      	ldrb	r0, [r5, #5]
c0de4f62:	f884 00a8 	strb.w	r0, [r4, #168]	@ 0xa8
c0de4f66:	e07f      	b.n	c0de5068 <nbgl_layoutAddExtendedFooter+0x640>
c0de4f68:	f002 fb4e 	bl	c0de7608 <OUTLINED_FUNCTION_8>
c0de4f6c:	4607      	mov	r7, r0
c0de4f6e:	7b2a      	ldrb	r2, [r5, #12]
c0de4f70:	7c2b      	ldrb	r3, [r5, #16]
c0de4f72:	4620      	mov	r0, r4
c0de4f74:	4639      	mov	r1, r7
c0de4f76:	f7fe ff33 	bl	c0de3de0 <layoutAddCallbackObj>
c0de4f7a:	2800      	cmp	r0, #0
c0de4f7c:	f000 80a6 	beq.w	c0de50cc <nbgl_layoutAddExtendedFooter+0x6a4>
c0de4f80:	2018      	movs	r0, #24
c0de4f82:	f04f 0800 	mov.w	r8, #0
c0de4f86:	2100      	movs	r1, #0
c0de4f88:	7678      	strb	r0, [r7, #25]
c0de4f8a:	2008      	movs	r0, #8
c0de4f8c:	f887 801a 	strb.w	r8, [r7, #26]
c0de4f90:	75b8      	strb	r0, [r7, #22]
c0de4f92:	7b68      	ldrb	r0, [r5, #13]
c0de4f94:	2800      	cmp	r0, #0
c0de4f96:	bf08      	it	eq
c0de4f98:	2103      	moveq	r1, #3
c0de4f9a:	f887 1021 	strb.w	r1, [r7, #33]	@ 0x21
c0de4f9e:	bf18      	it	ne
c0de4fa0:	2003      	movne	r0, #3
c0de4fa2:	77f8      	strb	r0, [r7, #31]
c0de4fa4:	7b68      	ldrb	r0, [r5, #13]
c0de4fa6:	4601      	mov	r1, r0
c0de4fa8:	2800      	cmp	r0, #0
c0de4faa:	bf18      	it	ne
c0de4fac:	2101      	movne	r1, #1
c0de4fae:	0049      	lsls	r1, r1, #1
c0de4fb0:	2802      	cmp	r0, #2
c0de4fb2:	bf08      	it	eq
c0de4fb4:	2103      	moveq	r1, #3
c0de4fb6:	f887 1020 	strb.w	r1, [r7, #32]
c0de4fba:	f002 fbcc 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de4fbe:	463e      	mov	r6, r7
c0de4fc0:	210c      	movs	r1, #12
c0de4fc2:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de4fc6:	f806 0f25 	strb.w	r0, [r6, #37]!
c0de4fca:	0e01      	lsrs	r1, r0, #24
c0de4fcc:	70f1      	strb	r1, [r6, #3]
c0de4fce:	0c01      	lsrs	r1, r0, #16
c0de4fd0:	0a00      	lsrs	r0, r0, #8
c0de4fd2:	70b1      	strb	r1, [r6, #2]
c0de4fd4:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4fd8:	f002 fca2 	bl	c0de7920 <OUTLINED_FUNCTION_46>
c0de4fdc:	2104      	movs	r1, #4
c0de4fde:	0e02      	lsrs	r2, r0, #24
c0de4fe0:	f887 8007 	strb.w	r8, [r7, #7]
c0de4fe4:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de4fe8:	2158      	movs	r1, #88	@ 0x58
c0de4fea:	71b9      	strb	r1, [r7, #6]
c0de4fec:	4639      	mov	r1, r7
c0de4fee:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de4ff2:	f002 fb82 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de4ff6:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de4ffa:	2188      	movs	r1, #136	@ 0x88
c0de4ffc:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de5000:	6920      	ldr	r0, [r4, #16]
c0de5002:	f880 8007 	strb.w	r8, [r0, #7]
c0de5006:	7181      	strb	r1, [r0, #6]
c0de5008:	6869      	ldr	r1, [r5, #4]
c0de500a:	2900      	cmp	r1, #0
c0de500c:	bf08      	it	eq
c0de500e:	2258      	moveq	r2, #88	@ 0x58
c0de5010:	713a      	strb	r2, [r7, #4]
c0de5012:	f896 c000 	ldrb.w	ip, [r6]
c0de5016:	f896 e002 	ldrb.w	lr, [r6, #2]
c0de501a:	f896 a003 	ldrb.w	sl, [r6, #3]
c0de501e:	f887 801d 	strb.w	r8, [r7, #29]
c0de5022:	0a11      	lsrs	r1, r2, #8
c0de5024:	7179      	strb	r1, [r7, #5]
c0de5026:	f810 6f22 	ldrb.w	r6, [r0, #34]!
c0de502a:	7842      	ldrb	r2, [r0, #1]
c0de502c:	f810 1c02 	ldrb.w	r1, [r0, #-2]
c0de5030:	7883      	ldrb	r3, [r0, #2]
c0de5032:	78c0      	ldrb	r0, [r0, #3]
c0de5034:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
c0de5038:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de503c:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de5040:	f897 2026 	ldrb.w	r2, [r7, #38]	@ 0x26
c0de5044:	f840 7021 	str.w	r7, [r0, r1, lsl #2]
c0de5048:	2001      	movs	r0, #1
c0de504a:	ea4e 210a 	orr.w	r1, lr, sl, lsl #8
c0de504e:	7738      	strb	r0, [r7, #28]
c0de5050:	ea4c 2002 	orr.w	r0, ip, r2, lsl #8
c0de5054:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de5058:	2107      	movs	r1, #7
c0de505a:	2800      	cmp	r0, #0
c0de505c:	bf08      	it	eq
c0de505e:	2101      	moveq	r1, #1
c0de5060:	77b9      	strb	r1, [r7, #30]
c0de5062:	6920      	ldr	r0, [r4, #16]
c0de5064:	f002 fa52 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de5068:	7828      	ldrb	r0, [r5, #0]
c0de506a:	3803      	subs	r0, #3
c0de506c:	2801      	cmp	r0, #1
c0de506e:	d808      	bhi.n	c0de5082 <nbgl_layoutAddExtendedFooter+0x65a>
c0de5070:	7b28      	ldrb	r0, [r5, #12]
c0de5072:	792b      	ldrb	r3, [r5, #4]
c0de5074:	f44f 61c0 	mov.w	r1, #1536	@ 0x600
c0de5078:	2200      	movs	r2, #0
c0de507a:	9000      	str	r0, [sp, #0]
c0de507c:	4620      	mov	r0, r4
c0de507e:	f7ff fc7a 	bl	c0de4976 <addSwipeInternal>
c0de5082:	7868      	ldrb	r0, [r5, #1]
c0de5084:	b1b0      	cbz	r0, c0de50b4 <nbgl_layoutAddExtendedFooter+0x68c>
c0de5086:	f002 fb61 	bl	c0de774c <OUTLINED_FUNCTION_21>
c0de508a:	6921      	ldr	r1, [r4, #16]
c0de508c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5090:	784e      	ldrb	r6, [r1, #1]
c0de5092:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de5096:	788f      	ldrb	r7, [r1, #2]
c0de5098:	78c9      	ldrb	r1, [r1, #3]
c0de509a:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de509e:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de50a2:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de50a6:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de50aa:	2102      	movs	r1, #2
c0de50ac:	7581      	strb	r1, [r0, #22]
c0de50ae:	6920      	ldr	r0, [r4, #16]
c0de50b0:	f002 fa2c 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de50b4:	f1b8 0f00 	cmp.w	r8, #0
c0de50b8:	d00d      	beq.n	c0de50d6 <nbgl_layoutAddExtendedFooter+0x6ae>
c0de50ba:	6920      	ldr	r0, [r4, #16]
c0de50bc:	f002 fa80 	bl	c0de75c0 <OUTLINED_FUNCTION_6>
c0de50c0:	f840 8022 	str.w	r8, [r0, r2, lsl #2]
c0de50c4:	6920      	ldr	r0, [r4, #16]
c0de50c6:	f002 fa21 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de50ca:	e005      	b.n	c0de50d8 <nbgl_layoutAddExtendedFooter+0x6b0>
c0de50cc:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de50d0:	4638      	mov	r0, r7
c0de50d2:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de50d6:	6920      	ldr	r0, [r4, #16]
c0de50d8:	68a1      	ldr	r1, [r4, #8]
c0de50da:	60c8      	str	r0, [r1, #12]
c0de50dc:	6920      	ldr	r0, [r4, #16]
c0de50de:	f8d4 10a0 	ldr.w	r1, [r4, #160]	@ 0xa0
c0de50e2:	f810 2f06 	ldrb.w	r2, [r0, #6]!
c0de50e6:	7843      	ldrb	r3, [r0, #1]
c0de50e8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de50ec:	f811 3f06 	ldrb.w	r3, [r1, #6]!
c0de50f0:	784e      	ldrb	r6, [r1, #1]
c0de50f2:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de50f6:	1a9a      	subs	r2, r3, r2
c0de50f8:	700a      	strb	r2, [r1, #0]
c0de50fa:	0a12      	lsrs	r2, r2, #8
c0de50fc:	704a      	strb	r2, [r1, #1]
c0de50fe:	7829      	ldrb	r1, [r5, #0]
c0de5100:	f884 10ab 	strb.w	r1, [r4, #171]	@ 0xab
c0de5104:	7801      	ldrb	r1, [r0, #0]
c0de5106:	7840      	ldrb	r0, [r0, #1]
c0de5108:	ea41 2700 	orr.w	r7, r1, r0, lsl #8
c0de510c:	e7e0      	b.n	c0de50d0 <nbgl_layoutAddExtendedFooter+0x6a8>
c0de510e:	2000      	movs	r0, #0
c0de5110:	f002 fc3d 	bl	c0de798e <OUTLINED_FUNCTION_54>
c0de5114:	f002 fb66 	bl	c0de77e4 <OUTLINED_FUNCTION_29>
c0de5118:	f002 fac0 	bl	c0de769c <OUTLINED_FUNCTION_14>
c0de511c:	2009      	movs	r0, #9
c0de511e:	77b0      	strb	r0, [r6, #30]
c0de5120:	6920      	ldr	r0, [r4, #16]
c0de5122:	f002 f9f3 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de5126:	7c69      	ldrb	r1, [r5, #17]
c0de5128:	2903      	cmp	r1, #3
c0de512a:	d004      	beq.n	c0de5136 <nbgl_layoutAddExtendedFooter+0x70e>
c0de512c:	b919      	cbnz	r1, c0de5136 <nbgl_layoutAddExtendedFooter+0x70e>
c0de512e:	f04f 0800 	mov.w	r8, #0
c0de5132:	21d0      	movs	r1, #208	@ 0xd0
c0de5134:	e002      	b.n	c0de513c <nbgl_layoutAddExtendedFooter+0x714>
c0de5136:	f04f 0800 	mov.w	r8, #0
c0de513a:	21e8      	movs	r1, #232	@ 0xe8
c0de513c:	f880 8007 	strb.w	r8, [r0, #7]
c0de5140:	7181      	strb	r1, [r0, #6]
c0de5142:	e791      	b.n	c0de5068 <nbgl_layoutAddExtendedFooter+0x640>

c0de5144 <nbgl_layoutAddBottomButton>:
c0de5144:	b570      	push	{r4, r5, r6, lr}
c0de5146:	b086      	sub	sp, #24
c0de5148:	4605      	mov	r5, r0
c0de514a:	2005      	movs	r0, #5
c0de514c:	2600      	movs	r6, #0
c0de514e:	4614      	mov	r4, r2
c0de5150:	f88d 3001 	strb.w	r3, [sp, #1]
c0de5154:	f88d 0000 	strb.w	r0, [sp]
c0de5158:	4608      	mov	r0, r1
c0de515a:	f88d 600e 	strb.w	r6, [sp, #14]
c0de515e:	f006 fe61 	bl	c0debe24 <pic>
c0de5162:	9002      	str	r0, [sp, #8]
c0de5164:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de5166:	4669      	mov	r1, sp
c0de5168:	f88d 400c 	strb.w	r4, [sp, #12]
c0de516c:	9601      	str	r6, [sp, #4]
c0de516e:	f88d 0010 	strb.w	r0, [sp, #16]
c0de5172:	2001      	movs	r0, #1
c0de5174:	f88d 000d 	strb.w	r0, [sp, #13]
c0de5178:	4628      	mov	r0, r5
c0de517a:	f7ff fc55 	bl	c0de4a28 <nbgl_layoutAddExtendedFooter>
c0de517e:	b006      	add	sp, #24
c0de5180:	bd70      	pop	{r4, r5, r6, pc}

c0de5182 <nbgl_layoutAddTouchableBar>:
c0de5182:	b5b0      	push	{r4, r5, r7, lr}
c0de5184:	b088      	sub	sp, #32
c0de5186:	460d      	mov	r5, r1
c0de5188:	4604      	mov	r4, r0
c0de518a:	a801      	add	r0, sp, #4
c0de518c:	211c      	movs	r1, #28
c0de518e:	f007 f975 	bl	c0dec47c <__aeabi_memclr>
c0de5192:	b1dc      	cbz	r4, c0de51cc <nbgl_layoutAddTouchableBar+0x4a>
c0de5194:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
c0de5198:	e9cd 1304 	strd	r1, r3, [sp, #16]
c0de519c:	e9cd 0202 	strd	r0, r2, [sp, #8]
c0de51a0:	7c68      	ldrb	r0, [r5, #17]
c0de51a2:	f88d 0018 	strb.w	r0, [sp, #24]
c0de51a6:	7d28      	ldrb	r0, [r5, #20]
c0de51a8:	f88d 001c 	strb.w	r0, [sp, #28]
c0de51ac:	7c28      	ldrb	r0, [r5, #16]
c0de51ae:	f88d 001a 	strb.w	r0, [sp, #26]
c0de51b2:	7ca8      	ldrb	r0, [r5, #18]
c0de51b4:	f080 0001 	eor.w	r0, r0, #1
c0de51b8:	f88d 0019 	strb.w	r0, [sp, #25]
c0de51bc:	a901      	add	r1, sp, #4
c0de51be:	4620      	mov	r0, r4
c0de51c0:	f000 f808 	bl	c0de51d4 <addListItem>
c0de51c4:	b110      	cbz	r0, c0de51cc <nbgl_layoutAddTouchableBar+0x4a>
c0de51c6:	f002 fb5b 	bl	c0de7880 <OUTLINED_FUNCTION_36>
c0de51ca:	e001      	b.n	c0de51d0 <nbgl_layoutAddTouchableBar+0x4e>
c0de51cc:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de51d0:	b008      	add	sp, #32
c0de51d2:	bdb0      	pop	{r4, r5, r7, pc}

c0de51d4 <addListItem>:
c0de51d4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de51d8:	4680      	mov	r8, r0
c0de51da:	7808      	ldrb	r0, [r1, #0]
c0de51dc:	468a      	mov	sl, r1
c0de51de:	b108      	cbz	r0, c0de51e4 <addListItem+0x10>
c0de51e0:	2600      	movs	r6, #0
c0de51e2:	e005      	b.n	c0de51f0 <addListItem+0x1c>
c0de51e4:	f89a 0015 	ldrb.w	r0, [sl, #21]
c0de51e8:	fab0 f080 	clz	r0, r0
c0de51ec:	0940      	lsrs	r0, r0, #5
c0de51ee:	0046      	lsls	r6, r0, #1
c0de51f0:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de51f4:	2401      	movs	r4, #1
c0de51f6:	f002 fa91 	bl	c0de771c <OUTLINED_FUNCTION_19>
c0de51fa:	4683      	mov	fp, r0
c0de51fc:	f89a 2014 	ldrb.w	r2, [sl, #20]
c0de5200:	f89a 3018 	ldrb.w	r3, [sl, #24]
c0de5204:	4640      	mov	r0, r8
c0de5206:	4659      	mov	r1, fp
c0de5208:	f7fe fdea 	bl	c0de3de0 <layoutAddCallbackObj>
c0de520c:	2700      	movs	r7, #0
c0de520e:	2800      	cmp	r0, #0
c0de5210:	f000 8088 	beq.w	c0de5324 <addListItem+0x150>
c0de5214:	f89a 1017 	ldrb.w	r1, [sl, #23]
c0de5218:	7141      	strb	r1, [r0, #5]
c0de521a:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de521e:	f002 fbc1 	bl	c0de79a4 <OUTLINED_FUNCTION_56>
c0de5222:	4659      	mov	r1, fp
c0de5224:	0e02      	lsrs	r2, r0, #24
c0de5226:	2364      	movs	r3, #100	@ 0x64
c0de5228:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de522c:	f801 7d10 	strb.w	r7, [r1, #-16]!
c0de5230:	74ca      	strb	r2, [r1, #19]
c0de5232:	0c02      	lsrs	r2, r0, #16
c0de5234:	0a00      	lsrs	r0, r0, #8
c0de5236:	f801 4c0d 	strb.w	r4, [r1, #-13]
c0de523a:	f801 7c0b 	strb.w	r7, [r1, #-11]
c0de523e:	7448      	strb	r0, [r1, #17]
c0de5240:	20a0      	movs	r0, #160	@ 0xa0
c0de5242:	748a      	strb	r2, [r1, #18]
c0de5244:	f801 0c0e 	strb.w	r0, [r1, #-14]
c0de5248:	f89a 2016 	ldrb.w	r2, [sl, #22]
c0de524c:	f89a 0000 	ldrb.w	r0, [sl]
c0de5250:	2a00      	cmp	r2, #0
c0de5252:	bf08      	it	eq
c0de5254:	235c      	moveq	r3, #92	@ 0x5c
c0de5256:	f801 3c0c 	strb.w	r3, [r1, #-12]
c0de525a:	718f      	strb	r7, [r1, #6]
c0de525c:	70cf      	strb	r7, [r1, #3]
c0de525e:	708f      	strb	r7, [r1, #2]
c0de5260:	704f      	strb	r7, [r1, #1]
c0de5262:	738f      	strb	r7, [r1, #14]
c0de5264:	734c      	strb	r4, [r1, #13]
c0de5266:	710f      	strb	r7, [r1, #4]
c0de5268:	2220      	movs	r2, #32
c0de526a:	2801      	cmp	r0, #1
c0de526c:	714a      	strb	r2, [r1, #5]
c0de526e:	d004      	beq.n	c0de527a <addListItem+0xa6>
c0de5270:	b9a0      	cbnz	r0, c0de529c <addListItem+0xc8>
c0de5272:	f89a 0015 	ldrb.w	r0, [sl, #21]
c0de5276:	2801      	cmp	r0, #1
c0de5278:	d110      	bne.n	c0de529c <addListItem+0xc8>
c0de527a:	f8df 040c 	ldr.w	r0, [pc, #1036]	@ c0de5688 <addListItem+0x4b4>
c0de527e:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5282:	1c4a      	adds	r2, r1, #1
c0de5284:	f809 2000 	strb.w	r2, [r9, r0]
c0de5288:	2000      	movs	r0, #0
c0de528a:	f88b 001d 	strb.w	r0, [fp, #29]
c0de528e:	2001      	movs	r0, #1
c0de5290:	f88b 001c 	strb.w	r0, [fp, #28]
c0de5294:	f101 0014 	add.w	r0, r1, #20
c0de5298:	f88b 001e 	strb.w	r0, [fp, #30]
c0de529c:	f8da 000c 	ldr.w	r0, [sl, #12]
c0de52a0:	2400      	movs	r4, #0
c0de52a2:	2800      	cmp	r0, #0
c0de52a4:	d041      	beq.n	c0de532a <addListItem+0x156>
c0de52a6:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de52aa:	f002 f935 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de52ae:	4607      	mov	r7, r0
c0de52b0:	77c6      	strb	r6, [r0, #31]
c0de52b2:	f8da 000c 	ldr.w	r0, [sl, #12]
c0de52b6:	f006 fdb5 	bl	c0debe24 <pic>
c0de52ba:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de52be:	0e02      	lsrs	r2, r0, #24
c0de52c0:	f887 402d 	strb.w	r4, [r7, #45]	@ 0x2d
c0de52c4:	f041 0101 	orr.w	r1, r1, #1
c0de52c8:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de52cc:	210c      	movs	r1, #12
c0de52ce:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de52d2:	4639      	mov	r1, r7
c0de52d4:	f801 4f2c 	strb.w	r4, [r1, #44]!
c0de52d8:	70cc      	strb	r4, [r1, #3]
c0de52da:	708c      	strb	r4, [r1, #2]
c0de52dc:	4639      	mov	r1, r7
c0de52de:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de52e2:	f002 fa0a 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de52e6:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de52ea:	f89b 1004 	ldrb.w	r1, [fp, #4]
c0de52ee:	f89b 2005 	ldrb.w	r2, [fp, #5]
c0de52f2:	7139      	strb	r1, [r7, #4]
c0de52f4:	717a      	strb	r2, [r7, #5]
c0de52f6:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de52fa:	b1c0      	cbz	r0, c0de532e <addListItem+0x15a>
c0de52fc:	f006 fd92 	bl	c0debe24 <pic>
c0de5300:	4639      	mov	r1, r7
c0de5302:	f811 2f04 	ldrb.w	r2, [r1, #4]!
c0de5306:	784b      	ldrb	r3, [r1, #1]
c0de5308:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de530c:	7803      	ldrb	r3, [r0, #0]
c0de530e:	7840      	ldrb	r0, [r0, #1]
c0de5310:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5314:	f64f 73f0 	movw	r3, #65520	@ 0xfff0
c0de5318:	1a18      	subs	r0, r3, r0
c0de531a:	4402      	add	r2, r0
c0de531c:	0a10      	lsrs	r0, r2, #8
c0de531e:	700a      	strb	r2, [r1, #0]
c0de5320:	7048      	strb	r0, [r1, #1]
c0de5322:	e006      	b.n	c0de5332 <addListItem+0x15e>
c0de5324:	f04f 0b00 	mov.w	fp, #0
c0de5328:	e1ab      	b.n	c0de5682 <addListItem+0x4ae>
c0de532a:	2700      	movs	r7, #0
c0de532c:	e074      	b.n	c0de5418 <addListItem+0x244>
c0de532e:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de5332:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de5336:	9601      	str	r6, [sp, #4]
c0de5338:	b130      	cbz	r0, c0de5348 <addListItem+0x174>
c0de533a:	f006 fd73 	bl	c0debe24 <pic>
c0de533e:	7939      	ldrb	r1, [r7, #4]
c0de5340:	797a      	ldrb	r2, [r7, #5]
c0de5342:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de5346:	e005      	b.n	c0de5354 <addListItem+0x180>
c0de5348:	f89a 0000 	ldrb.w	r0, [sl]
c0de534c:	2801      	cmp	r0, #1
c0de534e:	d107      	bne.n	c0de5360 <addListItem+0x18c>
c0de5350:	48ce      	ldr	r0, [pc, #824]	@ (c0de568c <addListItem+0x4b8>)
c0de5352:	4478      	add	r0, pc
c0de5354:	f002 fb3e 	bl	c0de79d4 <OUTLINED_FUNCTION_60>
c0de5358:	4402      	add	r2, r0
c0de535a:	0a10      	lsrs	r0, r2, #8
c0de535c:	713a      	strb	r2, [r7, #4]
c0de535e:	7178      	strb	r0, [r7, #5]
c0de5360:	4639      	mov	r1, r7
c0de5362:	b292      	uxth	r2, r2
c0de5364:	f811 3f26 	ldrb.w	r3, [r1, #38]!
c0de5368:	784e      	ldrb	r6, [r1, #1]
c0de536a:	78cc      	ldrb	r4, [r1, #3]
c0de536c:	f811 0c04 	ldrb.w	r0, [r1, #-4]
c0de5370:	f811 5c02 	ldrb.w	r5, [r1, #-2]
c0de5374:	7889      	ldrb	r1, [r1, #2]
c0de5376:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
c0de537a:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de537e:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
c0de5382:	f002 fb2f 	bl	c0de79e4 <OUTLINED_FUNCTION_61>
c0de5386:	2828      	cmp	r0, #40	@ 0x28
c0de5388:	d201      	bcs.n	c0de538e <addListItem+0x1ba>
c0de538a:	2028      	movs	r0, #40	@ 0x28
c0de538c:	e017      	b.n	c0de53be <addListItem+0x1ea>
c0de538e:	463a      	mov	r2, r7
c0de5390:	f812 0f26 	ldrb.w	r0, [r2, #38]!
c0de5394:	78d1      	ldrb	r1, [r2, #3]
c0de5396:	7893      	ldrb	r3, [r2, #2]
c0de5398:	f812 4c21 	ldrb.w	r4, [r2, #-33]
c0de539c:	f812 5c02 	ldrb.w	r5, [r2, #-2]
c0de53a0:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de53a4:	7853      	ldrb	r3, [r2, #1]
c0de53a6:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
c0de53aa:	f812 3c22 	ldrb.w	r3, [r2, #-34]
c0de53ae:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de53b2:	f812 0c04 	ldrb.w	r0, [r2, #-4]
c0de53b6:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de53ba:	f002 fb13 	bl	c0de79e4 <OUTLINED_FUNCTION_61>
c0de53be:	4659      	mov	r1, fp
c0de53c0:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de53c4:	784c      	ldrb	r4, [r1, #1]
c0de53c6:	788d      	ldrb	r5, [r1, #2]
c0de53c8:	78ce      	ldrb	r6, [r1, #3]
c0de53ca:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de53ce:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de53d2:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de53d6:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de53da:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de53de:	2200      	movs	r2, #0
c0de53e0:	71b8      	strb	r0, [r7, #6]
c0de53e2:	f887 2021 	strb.w	r2, [r7, #33]	@ 0x21
c0de53e6:	2201      	movs	r2, #1
c0de53e8:	75ba      	strb	r2, [r7, #22]
c0de53ea:	2204      	movs	r2, #4
c0de53ec:	f887 2020 	strb.w	r2, [r7, #32]
c0de53f0:	0a02      	lsrs	r2, r0, #8
c0de53f2:	71fa      	strb	r2, [r7, #7]
c0de53f4:	1c5a      	adds	r2, r3, #1
c0de53f6:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de53fa:	f89a 1016 	ldrb.w	r1, [sl, #22]
c0de53fe:	221e      	movs	r2, #30
c0de5400:	2900      	cmp	r1, #0
c0de5402:	bf08      	it	eq
c0de5404:	221a      	moveq	r2, #26
c0de5406:	3828      	subs	r0, #40	@ 0x28
c0de5408:	b280      	uxth	r0, r0
c0de540a:	bf88      	it	hi
c0de540c:	eba2 0250 	subhi.w	r2, r2, r0, lsr #1
c0de5410:	9e01      	ldr	r6, [sp, #4]
c0de5412:	767a      	strb	r2, [r7, #25]
c0de5414:	0a10      	lsrs	r0, r2, #8
c0de5416:	76b8      	strb	r0, [r7, #26]
c0de5418:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de541c:	2800      	cmp	r0, #0
c0de541e:	d046      	beq.n	c0de54ae <addListItem+0x2da>
c0de5420:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de5424:	f002 f9bc 	bl	c0de77a0 <OUTLINED_FUNCTION_26>
c0de5428:	4604      	mov	r4, r0
c0de542a:	77c6      	strb	r6, [r0, #31]
c0de542c:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de5430:	f006 fcf8 	bl	c0debe24 <pic>
c0de5434:	0a39      	lsrs	r1, r7, #8
c0de5436:	0e02      	lsrs	r2, r0, #24
c0de5438:	4635      	mov	r5, r6
c0de543a:	74e1      	strb	r1, [r4, #19]
c0de543c:	4621      	mov	r1, r4
c0de543e:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de5442:	70ca      	strb	r2, [r1, #3]
c0de5444:	0c02      	lsrs	r2, r0, #16
c0de5446:	0a00      	lsrs	r0, r0, #8
c0de5448:	f884 0022 	strb.w	r0, [r4, #34]	@ 0x22
c0de544c:	4620      	mov	r0, r4
c0de544e:	708a      	strb	r2, [r1, #2]
c0de5450:	0e39      	lsrs	r1, r7, #24
c0de5452:	f800 7f12 	strb.w	r7, [r0, #18]!
c0de5456:	70c1      	strb	r1, [r0, #3]
c0de5458:	0c39      	lsrs	r1, r7, #16
c0de545a:	7081      	strb	r1, [r0, #2]
c0de545c:	4658      	mov	r0, fp
c0de545e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5462:	7843      	ldrb	r3, [r0, #1]
c0de5464:	f890 c002 	ldrb.w	ip, [r0, #2]
c0de5468:	78c6      	ldrb	r6, [r0, #3]
c0de546a:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de546e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5472:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de5476:	462e      	mov	r6, r5
c0de5478:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de547c:	f002 fb05 	bl	c0de7a8a <OUTLINED_FUNCTION_75>
c0de5480:	2104      	movs	r1, #4
c0de5482:	75a1      	strb	r1, [r4, #22]
c0de5484:	1c51      	adds	r1, r2, #1
c0de5486:	f800 1c02 	strb.w	r1, [r0, #-2]
c0de548a:	b187      	cbz	r7, c0de54ae <addListItem+0x2da>
c0de548c:	f814 0f21 	ldrb.w	r0, [r4, #33]!
c0de5490:	7861      	ldrb	r1, [r4, #1]
c0de5492:	78a2      	ldrb	r2, [r4, #2]
c0de5494:	78e3      	ldrb	r3, [r4, #3]
c0de5496:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de549a:	f002 f9f6 	bl	c0de788a <OUTLINED_FUNCTION_37>
c0de549e:	7801      	ldrb	r1, [r0, #0]
c0de54a0:	7840      	ldrb	r0, [r0, #1]
c0de54a2:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de54a6:	3010      	adds	r0, #16
c0de54a8:	75f8      	strb	r0, [r7, #23]
c0de54aa:	0a00      	lsrs	r0, r0, #8
c0de54ac:	7638      	strb	r0, [r7, #24]
c0de54ae:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de54b2:	b190      	cbz	r0, c0de54da <addListItem+0x306>
c0de54b4:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de54b8:	f002 f972 	bl	c0de77a0 <OUTLINED_FUNCTION_26>
c0de54bc:	4604      	mov	r4, r0
c0de54be:	77c6      	strb	r6, [r0, #31]
c0de54c0:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de54c4:	f006 fcae 	bl	c0debe24 <pic>
c0de54c8:	4621      	mov	r1, r4
c0de54ca:	0e02      	lsrs	r2, r0, #24
c0de54cc:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de54d0:	f002 f913 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de54d4:	f884 0022 	strb.w	r0, [r4, #34]	@ 0x22
c0de54d8:	e013      	b.n	c0de5502 <addListItem+0x32e>
c0de54da:	f89a 0000 	ldrb.w	r0, [sl]
c0de54de:	2801      	cmp	r0, #1
c0de54e0:	d12d      	bne.n	c0de553e <addListItem+0x36a>
c0de54e2:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de54e6:	08c1      	lsrs	r1, r0, #3
c0de54e8:	2006      	movs	r0, #6
c0de54ea:	f006 faae 	bl	c0deba4a <nbgl_objPoolGet>
c0de54ee:	4604      	mov	r4, r0
c0de54f0:	2002      	movs	r0, #2
c0de54f2:	f884 0020 	strb.w	r0, [r4, #32]
c0de54f6:	2000      	movs	r0, #0
c0de54f8:	77e0      	strb	r0, [r4, #31]
c0de54fa:	f89a 0015 	ldrb.w	r0, [sl, #21]
c0de54fe:	f884 0021 	strb.w	r0, [r4, #33]	@ 0x21
c0de5502:	2006      	movs	r0, #6
c0de5504:	0e39      	lsrs	r1, r7, #24
c0de5506:	75a0      	strb	r0, [r4, #22]
c0de5508:	4620      	mov	r0, r4
c0de550a:	f800 7f12 	strb.w	r7, [r0, #18]!
c0de550e:	70c1      	strb	r1, [r0, #3]
c0de5510:	0c39      	lsrs	r1, r7, #16
c0de5512:	7081      	strb	r1, [r0, #2]
c0de5514:	0a38      	lsrs	r0, r7, #8
c0de5516:	74e0      	strb	r0, [r4, #19]
c0de5518:	4658      	mov	r0, fp
c0de551a:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de551e:	7842      	ldrb	r2, [r0, #1]
c0de5520:	7883      	ldrb	r3, [r0, #2]
c0de5522:	78c5      	ldrb	r5, [r0, #3]
c0de5524:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5528:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de552c:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5530:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de5534:	f002 faa9 	bl	c0de7a8a <OUTLINED_FUNCTION_75>
c0de5538:	1c51      	adds	r1, r2, #1
c0de553a:	f800 1c02 	strb.w	r1, [r0, #-2]
c0de553e:	f8da 0010 	ldr.w	r0, [sl, #16]
c0de5542:	2800      	cmp	r0, #0
c0de5544:	f000 8088 	beq.w	c0de5658 <addListItem+0x484>
c0de5548:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de554c:	2504      	movs	r5, #4
c0de554e:	f001 ffe3 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de5552:	4604      	mov	r4, r0
c0de5554:	77c6      	strb	r6, [r0, #31]
c0de5556:	f8da 0010 	ldr.w	r0, [sl, #16]
c0de555a:	f006 fc63 	bl	c0debe24 <pic>
c0de555e:	4601      	mov	r1, r0
c0de5560:	4622      	mov	r2, r4
c0de5562:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de5566:	f884 5020 	strb.w	r5, [r4, #32]
c0de556a:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de556e:	0e0b      	lsrs	r3, r1, #24
c0de5570:	70d3      	strb	r3, [r2, #3]
c0de5572:	0c0b      	lsrs	r3, r1, #16
c0de5574:	f040 0001 	orr.w	r0, r0, #1
c0de5578:	7093      	strb	r3, [r2, #2]
c0de557a:	0a0a      	lsrs	r2, r1, #8
c0de557c:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
c0de5580:	200b      	movs	r0, #11
c0de5582:	f884 2027 	strb.w	r2, [r4, #39]	@ 0x27
c0de5586:	f884 0022 	strb.w	r0, [r4, #34]	@ 0x22
c0de558a:	2000      	movs	r0, #0
c0de558c:	f8da 200c 	ldr.w	r2, [sl, #12]
c0de5590:	f884 0021 	strb.w	r0, [r4, #33]	@ 0x21
c0de5594:	b15a      	cbz	r2, c0de55ae <addListItem+0x3da>
c0de5596:	4620      	mov	r0, r4
c0de5598:	0e3a      	lsrs	r2, r7, #24
c0de559a:	f800 7f12 	strb.w	r7, [r0, #18]!
c0de559e:	70c2      	strb	r2, [r0, #3]
c0de55a0:	0c3a      	lsrs	r2, r7, #16
c0de55a2:	7082      	strb	r2, [r0, #2]
c0de55a4:	0a3a      	lsrs	r2, r7, #8
c0de55a6:	7042      	strb	r2, [r0, #1]
c0de55a8:	200c      	movs	r0, #12
c0de55aa:	2207      	movs	r2, #7
c0de55ac:	e005      	b.n	c0de55ba <addListItem+0x3e6>
c0de55ae:	f88b 0007 	strb.w	r0, [fp, #7]
c0de55b2:	201c      	movs	r0, #28
c0de55b4:	2201      	movs	r2, #1
c0de55b6:	f88b 0006 	strb.w	r0, [fp, #6]
c0de55ba:	2300      	movs	r3, #0
c0de55bc:	7660      	strb	r0, [r4, #25]
c0de55be:	75a2      	strb	r2, [r4, #22]
c0de55c0:	76a3      	strb	r3, [r4, #26]
c0de55c2:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de55c6:	b1b8      	cbz	r0, c0de55f8 <addListItem+0x424>
c0de55c8:	f006 fc2c 	bl	c0debe24 <pic>
c0de55cc:	f002 fa02 	bl	c0de79d4 <OUTLINED_FUNCTION_60>
c0de55d0:	4621      	mov	r1, r4
c0de55d2:	f811 2f26 	ldrb.w	r2, [r1, #38]!
c0de55d6:	f801 0c0f 	strb.w	r0, [r1, #-15]
c0de55da:	0a00      	lsrs	r0, r0, #8
c0de55dc:	784b      	ldrb	r3, [r1, #1]
c0de55de:	788d      	ldrb	r5, [r1, #2]
c0de55e0:	f801 0c0e 	strb.w	r0, [r1, #-14]
c0de55e4:	f811 0c04 	ldrb.w	r0, [r1, #-4]
c0de55e8:	78c9      	ldrb	r1, [r1, #3]
c0de55ea:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de55ee:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de55f2:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de55f6:	e000      	b.n	c0de55fa <addListItem+0x426>
c0de55f8:	200b      	movs	r0, #11
c0de55fa:	f89b 3005 	ldrb.w	r3, [fp, #5]
c0de55fe:	f89b 2004 	ldrb.w	r2, [fp, #4]
c0de5602:	f894 5024 	ldrb.w	r5, [r4, #36]	@ 0x24
c0de5606:	7122      	strb	r2, [r4, #4]
c0de5608:	7163      	strb	r3, [r4, #5]
c0de560a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de560e:	f002 f9e9 	bl	c0de79e4 <OUTLINED_FUNCTION_61>
c0de5612:	4659      	mov	r1, fp
c0de5614:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5618:	f811 cd1c 	ldrb.w	ip, [r1, #-28]!
c0de561c:	7f4b      	ldrb	r3, [r1, #29]
c0de561e:	7fcd      	ldrb	r5, [r1, #31]
c0de5620:	7f8e      	ldrb	r6, [r1, #30]
c0de5622:	7e8f      	ldrb	r7, [r1, #26]
c0de5624:	f891 e001 	ldrb.w	lr, [r1, #1]
c0de5628:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de562c:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
c0de5630:	7ea3      	ldrb	r3, [r4, #26]
c0de5632:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de5636:	f842 4027 	str.w	r4, [r2, r7, lsl #2]
c0de563a:	0a02      	lsrs	r2, r0, #8
c0de563c:	71a0      	strb	r0, [r4, #6]
c0de563e:	71e2      	strb	r2, [r4, #7]
c0de5640:	1c7a      	adds	r2, r7, #1
c0de5642:	768a      	strb	r2, [r1, #26]
c0de5644:	7e62      	ldrb	r2, [r4, #25]
c0de5646:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de564a:	4410      	add	r0, r2
c0de564c:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de5650:	4410      	add	r0, r2
c0de5652:	7008      	strb	r0, [r1, #0]
c0de5654:	0a00      	lsrs	r0, r0, #8
c0de5656:	7048      	strb	r0, [r1, #1]
c0de5658:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de565c:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5660:	7843      	ldrb	r3, [r0, #1]
c0de5662:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de5666:	7884      	ldrb	r4, [r0, #2]
c0de5668:	78c0      	ldrb	r0, [r0, #3]
c0de566a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de566e:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de5672:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de5676:	f840 b022 	str.w	fp, [r0, r2, lsl #2]
c0de567a:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de567e:	f001 ff45 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de5682:	4658      	mov	r0, fp
c0de5684:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5688:	00000904 	.word	0x00000904
c0de568c:	00007449 	.word	0x00007449

c0de5690 <nbgl_layoutAddSwitch>:
c0de5690:	b5b0      	push	{r4, r5, r7, lr}
c0de5692:	b088      	sub	sp, #32
c0de5694:	460d      	mov	r5, r1
c0de5696:	4604      	mov	r4, r0
c0de5698:	a801      	add	r0, sp, #4
c0de569a:	211c      	movs	r1, #28
c0de569c:	f006 feee 	bl	c0dec47c <__aeabi_memclr>
c0de56a0:	b1bc      	cbz	r4, c0de56d2 <nbgl_layoutAddSwitch+0x42>
c0de56a2:	2001      	movs	r0, #1
c0de56a4:	f88d 0004 	strb.w	r0, [sp, #4]
c0de56a8:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de56ac:	e9cd 0104 	strd	r0, r1, [sp, #16]
c0de56b0:	7a68      	ldrb	r0, [r5, #9]
c0de56b2:	f88d 0018 	strb.w	r0, [sp, #24]
c0de56b6:	7aa8      	ldrb	r0, [r5, #10]
c0de56b8:	f88d 001c 	strb.w	r0, [sp, #28]
c0de56bc:	7a28      	ldrb	r0, [r5, #8]
c0de56be:	f88d 0019 	strb.w	r0, [sp, #25]
c0de56c2:	a901      	add	r1, sp, #4
c0de56c4:	4620      	mov	r0, r4
c0de56c6:	f7ff fd85 	bl	c0de51d4 <addListItem>
c0de56ca:	b110      	cbz	r0, c0de56d2 <nbgl_layoutAddSwitch+0x42>
c0de56cc:	f002 f8d8 	bl	c0de7880 <OUTLINED_FUNCTION_36>
c0de56d0:	e001      	b.n	c0de56d6 <nbgl_layoutAddSwitch+0x46>
c0de56d2:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de56d6:	b008      	add	sp, #32
c0de56d8:	bdb0      	pop	{r4, r5, r7, pc}

c0de56da <nbgl_layoutAddText>:
c0de56da:	b570      	push	{r4, r5, r6, lr}
c0de56dc:	b088      	sub	sp, #32
c0de56de:	460d      	mov	r5, r1
c0de56e0:	4604      	mov	r4, r0
c0de56e2:	a801      	add	r0, sp, #4
c0de56e4:	211c      	movs	r1, #28
c0de56e6:	4616      	mov	r6, r2
c0de56e8:	f006 fec8 	bl	c0dec47c <__aeabi_memclr>
c0de56ec:	b194      	cbz	r4, c0de5714 <nbgl_layoutAddText+0x3a>
c0de56ee:	200c      	movs	r0, #12
c0de56f0:	e9cd 5604 	strd	r5, r6, [sp, #16]
c0de56f4:	f88d 001c 	strb.w	r0, [sp, #28]
c0de56f8:	20ff      	movs	r0, #255	@ 0xff
c0de56fa:	f88d 0018 	strb.w	r0, [sp, #24]
c0de56fe:	2002      	movs	r0, #2
c0de5700:	f88d 0004 	strb.w	r0, [sp, #4]
c0de5704:	a901      	add	r1, sp, #4
c0de5706:	4620      	mov	r0, r4
c0de5708:	f7ff fd64 	bl	c0de51d4 <addListItem>
c0de570c:	b110      	cbz	r0, c0de5714 <nbgl_layoutAddText+0x3a>
c0de570e:	f002 f8b7 	bl	c0de7880 <OUTLINED_FUNCTION_36>
c0de5712:	e001      	b.n	c0de5718 <nbgl_layoutAddText+0x3e>
c0de5714:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5718:	b008      	add	sp, #32
c0de571a:	bd70      	pop	{r4, r5, r6, pc}

c0de571c <nbgl_layoutAddTextWithAlias>:
c0de571c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de571e:	b087      	sub	sp, #28
c0de5720:	460e      	mov	r6, r1
c0de5722:	4604      	mov	r4, r0
c0de5724:	4668      	mov	r0, sp
c0de5726:	211c      	movs	r1, #28
c0de5728:	461d      	mov	r5, r3
c0de572a:	4617      	mov	r7, r2
c0de572c:	f006 fea6 	bl	c0dec47c <__aeabi_memclr>
c0de5730:	b1bc      	cbz	r4, c0de5762 <nbgl_layoutAddTextWithAlias+0x46>
c0de5732:	210c      	movs	r1, #12
c0de5734:	e9cd 6703 	strd	r6, r7, [sp, #12]
c0de5738:	f88d 5014 	strb.w	r5, [sp, #20]
c0de573c:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de573e:	f88d 1018 	strb.w	r1, [sp, #24]
c0de5742:	490a      	ldr	r1, [pc, #40]	@ (c0de576c <nbgl_layoutAddTextWithAlias+0x50>)
c0de5744:	f88d 0017 	strb.w	r0, [sp, #23]
c0de5748:	2001      	movs	r0, #1
c0de574a:	f88d 0015 	strb.w	r0, [sp, #21]
c0de574e:	4620      	mov	r0, r4
c0de5750:	4479      	add	r1, pc
c0de5752:	9102      	str	r1, [sp, #8]
c0de5754:	4669      	mov	r1, sp
c0de5756:	f7ff fd3d 	bl	c0de51d4 <addListItem>
c0de575a:	b110      	cbz	r0, c0de5762 <nbgl_layoutAddTextWithAlias+0x46>
c0de575c:	f002 f890 	bl	c0de7880 <OUTLINED_FUNCTION_36>
c0de5760:	e001      	b.n	c0de5766 <nbgl_layoutAddTextWithAlias+0x4a>
c0de5762:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5766:	b007      	add	sp, #28
c0de5768:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de576a:	bf00      	nop
c0de576c:	00007c86 	.word	0x00007c86

c0de5770 <nbgl_layoutAddTextContent>:
c0de5770:	2800      	cmp	r0, #0
c0de5772:	f000 80ab 	beq.w	c0de58cc <nbgl_layoutAddTextContent+0x15c>
c0de5776:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de577a:	4680      	mov	r8, r0
c0de577c:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de5780:	4e53      	ldr	r6, [pc, #332]	@ (c0de58d0 <nbgl_layoutAddTextContent+0x160>)
c0de5782:	460d      	mov	r5, r1
c0de5784:	e9cd 2300 	strd	r2, r3, [sp]
c0de5788:	08c1      	lsrs	r1, r0, #3
c0de578a:	447e      	add	r6, pc
c0de578c:	2004      	movs	r0, #4
c0de578e:	47b0      	blx	r6
c0de5790:	f04f 0b00 	mov.w	fp, #0
c0de5794:	4607      	mov	r7, r0
c0de5796:	f880 b01f 	strb.w	fp, [r0, #31]
c0de579a:	4628      	mov	r0, r5
c0de579c:	4c4d      	ldr	r4, [pc, #308]	@ (c0de58d4 <nbgl_layoutAddTextContent+0x164>)
c0de579e:	447c      	add	r4, pc
c0de57a0:	47a0      	blx	r4
c0de57a2:	4601      	mov	r1, r0
c0de57a4:	2010      	movs	r0, #16
c0de57a6:	f887 b01a 	strb.w	fp, [r7, #26]
c0de57aa:	f887 b018 	strb.w	fp, [r7, #24]
c0de57ae:	f887 b021 	strb.w	fp, [r7, #33]	@ 0x21
c0de57b2:	f887 b016 	strb.w	fp, [r7, #22]
c0de57b6:	2301      	movs	r3, #1
c0de57b8:	46a2      	mov	sl, r4
c0de57ba:	7678      	strb	r0, [r7, #25]
c0de57bc:	2020      	movs	r0, #32
c0de57be:	0e0a      	lsrs	r2, r1, #24
c0de57c0:	75f8      	strb	r0, [r7, #23]
c0de57c2:	2001      	movs	r0, #1
c0de57c4:	7178      	strb	r0, [r7, #5]
c0de57c6:	20a0      	movs	r0, #160	@ 0xa0
c0de57c8:	7138      	strb	r0, [r7, #4]
c0de57ca:	200d      	movs	r0, #13
c0de57cc:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de57d0:	2004      	movs	r0, #4
c0de57d2:	f001 ffa7 	bl	c0de7724 <OUTLINED_FUNCTION_20>
c0de57d6:	200d      	movs	r0, #13
c0de57d8:	4d3f      	ldr	r5, [pc, #252]	@ (c0de58d8 <nbgl_layoutAddTextContent+0x168>)
c0de57da:	447d      	add	r5, pc
c0de57dc:	47a8      	blx	r5
c0de57de:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de57e2:	f001 ffcd 	bl	c0de7780 <OUTLINED_FUNCTION_25>
c0de57e6:	71b8      	strb	r0, [r7, #6]
c0de57e8:	0a00      	lsrs	r0, r0, #8
c0de57ea:	71f8      	strb	r0, [r7, #7]
c0de57ec:	f002 f815 	bl	c0de781a <OUTLINED_FUNCTION_32>
c0de57f0:	4607      	mov	r7, r0
c0de57f2:	f880 b01f 	strb.w	fp, [r0, #31]
c0de57f6:	9800      	ldr	r0, [sp, #0]
c0de57f8:	47d0      	blx	sl
c0de57fa:	4601      	mov	r1, r0
c0de57fc:	2001      	movs	r0, #1
c0de57fe:	2301      	movs	r3, #1
c0de5800:	f887 b021 	strb.w	fp, [r7, #33]	@ 0x21
c0de5804:	7178      	strb	r0, [r7, #5]
c0de5806:	20a0      	movs	r0, #160	@ 0xa0
c0de5808:	0e0a      	lsrs	r2, r1, #24
c0de580a:	7138      	strb	r0, [r7, #4]
c0de580c:	200b      	movs	r0, #11
c0de580e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5812:	4638      	mov	r0, r7
c0de5814:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de5818:	70c2      	strb	r2, [r0, #3]
c0de581a:	0c0a      	lsrs	r2, r1, #16
c0de581c:	7082      	strb	r2, [r0, #2]
c0de581e:	0a08      	lsrs	r0, r1, #8
c0de5820:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de5824:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de5828:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de582c:	f040 0001 	orr.w	r0, r0, #1
c0de5830:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de5834:	200b      	movs	r0, #11
c0de5836:	47a8      	blx	r5
c0de5838:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de583c:	f887 b01a 	strb.w	fp, [r7, #26]
c0de5840:	f887 b018 	strb.w	fp, [r7, #24]
c0de5844:	f887 b016 	strb.w	fp, [r7, #22]
c0de5848:	f001 ff9a 	bl	c0de7780 <OUTLINED_FUNCTION_25>
c0de584c:	2104      	movs	r1, #4
c0de584e:	71b8      	strb	r0, [r7, #6]
c0de5850:	0a00      	lsrs	r0, r0, #8
c0de5852:	f887 1020 	strb.w	r1, [r7, #32]
c0de5856:	2118      	movs	r1, #24
c0de5858:	71f8      	strb	r0, [r7, #7]
c0de585a:	7679      	strb	r1, [r7, #25]
c0de585c:	2120      	movs	r1, #32
c0de585e:	75f9      	strb	r1, [r7, #23]
c0de5860:	f001 ffdb 	bl	c0de781a <OUTLINED_FUNCTION_32>
c0de5864:	2401      	movs	r4, #1
c0de5866:	4606      	mov	r6, r0
c0de5868:	77c4      	strb	r4, [r0, #31]
c0de586a:	9801      	ldr	r0, [sp, #4]
c0de586c:	47d0      	blx	sl
c0de586e:	4601      	mov	r1, r0
c0de5870:	20a0      	movs	r0, #160	@ 0xa0
c0de5872:	2301      	movs	r3, #1
c0de5874:	7174      	strb	r4, [r6, #5]
c0de5876:	f886 b021 	strb.w	fp, [r6, #33]	@ 0x21
c0de587a:	7130      	strb	r0, [r6, #4]
c0de587c:	200b      	movs	r0, #11
c0de587e:	0e0a      	lsrs	r2, r1, #24
c0de5880:	f001 ff26 	bl	c0de76d0 <OUTLINED_FUNCTION_16>
c0de5884:	47a8      	blx	r5
c0de5886:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de588a:	f886 b01a 	strb.w	fp, [r6, #26]
c0de588e:	f886 b018 	strb.w	fp, [r6, #24]
c0de5892:	f001 fe6d 	bl	c0de7570 <OUTLINED_FUNCTION_4>
c0de5896:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
c0de589a:	2128      	movs	r1, #40	@ 0x28
c0de589c:	71b0      	strb	r0, [r6, #6]
c0de589e:	0a00      	lsrs	r0, r0, #8
c0de58a0:	7671      	strb	r1, [r6, #25]
c0de58a2:	2120      	movs	r1, #32
c0de58a4:	71f0      	strb	r0, [r6, #7]
c0de58a6:	75f1      	strb	r1, [r6, #23]
c0de58a8:	2104      	movs	r1, #4
c0de58aa:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de58ae:	f886 1020 	strb.w	r1, [r6, #32]
c0de58b2:	2107      	movs	r1, #7
c0de58b4:	75b1      	strb	r1, [r6, #22]
c0de58b6:	f890 3020 	ldrb.w	r3, [r0, #32]
c0de58ba:	7981      	ldrb	r1, [r0, #6]
c0de58bc:	79c2      	ldrb	r2, [r0, #7]
c0de58be:	3301      	adds	r3, #1
c0de58c0:	f880 3020 	strb.w	r3, [r0, #32]
c0de58c4:	ea41 2002 	orr.w	r0, r1, r2, lsl #8
c0de58c8:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de58cc:	f001 bff5 	b.w	c0de78ba <OUTLINED_FUNCTION_40>
c0de58d0:	000062bd 	.word	0x000062bd
c0de58d4:	00006683 	.word	0x00006683
c0de58d8:	0000629f 	.word	0x0000629f

c0de58dc <nbgl_layoutAddRadioChoice>:
c0de58dc:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de58e0:	2800      	cmp	r0, #0
c0de58e2:	f000 80ff 	beq.w	c0de5ae4 <nbgl_layoutAddRadioChoice+0x208>
c0de58e6:	4605      	mov	r5, r0
c0de58e8:	4883      	ldr	r0, [pc, #524]	@ (c0de5af8 <nbgl_layoutAddRadioChoice+0x21c>)
c0de58ea:	468a      	mov	sl, r1
c0de58ec:	f04f 0800 	mov.w	r8, #0
c0de58f0:	e9cd 1501 	strd	r1, r5, [sp, #4]
c0de58f4:	4478      	add	r0, pc
c0de58f6:	9003      	str	r0, [sp, #12]
c0de58f8:	f89a 0005 	ldrb.w	r0, [sl, #5]
c0de58fc:	4580      	cmp	r8, r0
c0de58fe:	f080 80f4 	bcs.w	c0de5aea <nbgl_layoutAddRadioChoice+0x20e>
c0de5902:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de5906:	9c03      	ldr	r4, [sp, #12]
c0de5908:	08c1      	lsrs	r1, r0, #3
c0de590a:	2001      	movs	r0, #1
c0de590c:	47a0      	blx	r4
c0de590e:	4606      	mov	r6, r0
c0de5910:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de5914:	08c1      	lsrs	r1, r0, #3
c0de5916:	2004      	movs	r0, #4
c0de5918:	47a0      	blx	r4
c0de591a:	4607      	mov	r7, r0
c0de591c:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de5920:	08c1      	lsrs	r1, r0, #3
c0de5922:	2009      	movs	r0, #9
c0de5924:	47a0      	blx	r4
c0de5926:	f89a 2007 	ldrb.w	r2, [sl, #7]
c0de592a:	f89a 3008 	ldrb.w	r3, [sl, #8]
c0de592e:	4604      	mov	r4, r0
c0de5930:	4628      	mov	r0, r5
c0de5932:	4631      	mov	r1, r6
c0de5934:	f7fe fa54 	bl	c0de3de0 <layoutAddCallbackObj>
c0de5938:	2800      	cmp	r0, #0
c0de593a:	f000 80d3 	beq.w	c0de5ae4 <nbgl_layoutAddRadioChoice+0x208>
c0de593e:	2002      	movs	r0, #2
c0de5940:	f886 0020 	strb.w	r0, [r6, #32]
c0de5944:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de5948:	08c1      	lsrs	r1, r0, #3
c0de594a:	2002      	movs	r0, #2
c0de594c:	f006 f882 	bl	c0deba54 <nbgl_containerPoolGet>
c0de5950:	2300      	movs	r3, #0
c0de5952:	ea4f 2c16 	mov.w	ip, r6, lsr #8
c0de5956:	4631      	mov	r1, r6
c0de5958:	0e02      	lsrs	r2, r0, #24
c0de595a:	4655      	mov	r5, sl
c0de595c:	ea4f 6a16 	mov.w	sl, r6, lsr #24
c0de5960:	ea4f 4b16 	mov.w	fp, r6, lsr #16
c0de5964:	74f3      	strb	r3, [r6, #19]
c0de5966:	f884 c013 	strb.w	ip, [r4, #19]
c0de596a:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de596e:	70ca      	strb	r2, [r1, #3]
c0de5970:	0c02      	lsrs	r2, r0, #16
c0de5972:	708a      	strb	r2, [r1, #2]
c0de5974:	0a01      	lsrs	r1, r0, #8
c0de5976:	f886 1023 	strb.w	r1, [r6, #35]	@ 0x23
c0de597a:	4631      	mov	r1, r6
c0de597c:	f801 3f12 	strb.w	r3, [r1, #18]!
c0de5980:	70cb      	strb	r3, [r1, #3]
c0de5982:	708b      	strb	r3, [r1, #2]
c0de5984:	4621      	mov	r1, r4
c0de5986:	f801 6f12 	strb.w	r6, [r1, #18]!
c0de598a:	f881 b002 	strb.w	fp, [r1, #2]
c0de598e:	f881 a003 	strb.w	sl, [r1, #3]
c0de5992:	2120      	movs	r1, #32
c0de5994:	7633      	strb	r3, [r6, #24]
c0de5996:	71f3      	strb	r3, [r6, #7]
c0de5998:	75b3      	strb	r3, [r6, #22]
c0de599a:	75f1      	strb	r1, [r6, #23]
c0de599c:	215c      	movs	r1, #92	@ 0x5c
c0de599e:	71b1      	strb	r1, [r6, #6]
c0de59a0:	2101      	movs	r1, #1
c0de59a2:	7171      	strb	r1, [r6, #5]
c0de59a4:	21a0      	movs	r1, #160	@ 0xa0
c0de59a6:	7131      	strb	r1, [r6, #4]
c0de59a8:	2102      	movs	r1, #2
c0de59aa:	6044      	str	r4, [r0, #4]
c0de59ac:	77e3      	strb	r3, [r4, #31]
c0de59ae:	f884 3021 	strb.w	r3, [r4, #33]	@ 0x21
c0de59b2:	7928      	ldrb	r0, [r5, #4]
c0de59b4:	f884 1020 	strb.w	r1, [r4, #32]
c0de59b8:	2106      	movs	r1, #6
c0de59ba:	75a1      	strb	r1, [r4, #22]
c0de59bc:	b110      	cbz	r0, c0de59c4 <nbgl_layoutAddRadioChoice+0xe8>
c0de59be:	f44f 70d0 	mov.w	r0, #416	@ 0x1a0
c0de59c2:	e014      	b.n	c0de59ee <nbgl_layoutAddRadioChoice+0x112>
c0de59c4:	6828      	ldr	r0, [r5, #0]
c0de59c6:	4665      	mov	r5, ip
c0de59c8:	f850 0028 	ldr.w	r0, [r0, r8, lsl #2]
c0de59cc:	f006 fa2a 	bl	c0debe24 <pic>
c0de59d0:	4639      	mov	r1, r7
c0de59d2:	0e02      	lsrs	r2, r0, #24
c0de59d4:	46ac      	mov	ip, r5
c0de59d6:	9d01      	ldr	r5, [sp, #4]
c0de59d8:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de59dc:	70ca      	strb	r2, [r1, #3]
c0de59de:	0c02      	lsrs	r2, r0, #16
c0de59e0:	0a00      	lsrs	r0, r0, #8
c0de59e2:	708a      	strb	r2, [r1, #2]
c0de59e4:	7048      	strb	r0, [r1, #1]
c0de59e6:	7930      	ldrb	r0, [r6, #4]
c0de59e8:	7971      	ldrb	r1, [r6, #5]
c0de59ea:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de59ee:	4639      	mov	r1, r7
c0de59f0:	f887 c013 	strb.w	ip, [r7, #19]
c0de59f4:	4632      	mov	r2, r6
c0de59f6:	3828      	subs	r0, #40	@ 0x28
c0de59f8:	f801 6f12 	strb.w	r6, [r1, #18]!
c0de59fc:	f881 b002 	strb.w	fp, [r1, #2]
c0de5a00:	f881 a003 	strb.w	sl, [r1, #3]
c0de5a04:	f04f 0b00 	mov.w	fp, #0
c0de5a08:	46aa      	mov	sl, r5
c0de5a0a:	f896 1023 	ldrb.w	r1, [r6, #35]	@ 0x23
c0de5a0e:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de5a12:	f886 b01d 	strb.w	fp, [r6, #29]
c0de5a16:	f001 ffff 	bl	c0de7a18 <OUTLINED_FUNCTION_66>
c0de5a1a:	4b36      	ldr	r3, [pc, #216]	@ (c0de5af4 <nbgl_layoutAddRadioChoice+0x218>)
c0de5a1c:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5a20:	600f      	str	r7, [r1, #0]
c0de5a22:	f819 1003 	ldrb.w	r1, [r9, r3]
c0de5a26:	1c4a      	adds	r2, r1, #1
c0de5a28:	3114      	adds	r1, #20
c0de5a2a:	f809 2003 	strb.w	r2, [r9, r3]
c0de5a2e:	2201      	movs	r2, #1
c0de5a30:	77b1      	strb	r1, [r6, #30]
c0de5a32:	2104      	movs	r1, #4
c0de5a34:	7732      	strb	r2, [r6, #28]
c0de5a36:	f887 b021 	strb.w	fp, [r7, #33]	@ 0x21
c0de5a3a:	f887 1020 	strb.w	r1, [r7, #32]
c0de5a3e:	75b9      	strb	r1, [r7, #22]
c0de5a40:	79aa      	ldrb	r2, [r5, #6]
c0de5a42:	eba8 0302 	sub.w	r3, r8, r2
c0de5a46:	fab3 f383 	clz	r3, r3
c0de5a4a:	095b      	lsrs	r3, r3, #5
c0de5a4c:	f884 3021 	strb.w	r3, [r4, #33]	@ 0x21
c0de5a50:	7138      	strb	r0, [r7, #4]
c0de5a52:	0a00      	lsrs	r0, r0, #8
c0de5a54:	7178      	strb	r0, [r7, #5]
c0de5a56:	ebb8 0002 	subs.w	r0, r8, r2
c0de5a5a:	bf18      	it	ne
c0de5a5c:	2001      	movne	r0, #1
c0de5a5e:	77f8      	strb	r0, [r7, #31]
c0de5a60:	4590      	cmp	r8, r2
c0de5a62:	f04f 000b 	mov.w	r0, #11
c0de5a66:	bf08      	it	eq
c0de5a68:	200c      	moveq	r0, #12
c0de5a6a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5a6e:	f005 fffb 	bl	c0deba68 <nbgl_getFontHeight>
c0de5a72:	9d02      	ldr	r5, [sp, #8]
c0de5a74:	f887 b007 	strb.w	fp, [r7, #7]
c0de5a78:	71b8      	strb	r0, [r7, #6]
c0de5a7a:	f895 00ad 	ldrb.w	r0, [r5, #173]	@ 0xad
c0de5a7e:	08c0      	lsrs	r0, r0, #3
c0de5a80:	f000 f83c 	bl	c0de5afc <createHorizontalLine>
c0de5a84:	f8d5 10a0 	ldr.w	r1, [r5, #160]	@ 0xa0
c0de5a88:	f108 0801 	add.w	r8, r8, #1
c0de5a8c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5a90:	784c      	ldrb	r4, [r1, #1]
c0de5a92:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de5a96:	788f      	ldrb	r7, [r1, #2]
c0de5a98:	78c9      	ldrb	r1, [r1, #3]
c0de5a9a:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de5a9e:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de5aa2:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de5aa6:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
c0de5aaa:	f8d5 10a0 	ldr.w	r1, [r5, #160]	@ 0xa0
c0de5aae:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5ab2:	784b      	ldrb	r3, [r1, #1]
c0de5ab4:	788c      	ldrb	r4, [r1, #2]
c0de5ab6:	78ce      	ldrb	r6, [r1, #3]
c0de5ab8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5abc:	ea44 2306 	orr.w	r3, r4, r6, lsl #8
c0de5ac0:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de5ac4:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de5ac8:	3301      	adds	r3, #1
c0de5aca:	b2dc      	uxtb	r4, r3
c0de5acc:	f801 3c02 	strb.w	r3, [r1, #-2]
c0de5ad0:	21ff      	movs	r1, #255	@ 0xff
c0de5ad2:	f842 0024 	str.w	r0, [r2, r4, lsl #2]
c0de5ad6:	7641      	strb	r1, [r0, #25]
c0de5ad8:	7681      	strb	r1, [r0, #26]
c0de5ada:	f8d5 00a0 	ldr.w	r0, [r5, #160]	@ 0xa0
c0de5ade:	f001 fd15 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de5ae2:	e709      	b.n	c0de58f8 <nbgl_layoutAddRadioChoice+0x1c>
c0de5ae4:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5ae8:	e000      	b.n	c0de5aec <nbgl_layoutAddRadioChoice+0x210>
c0de5aea:	2000      	movs	r0, #0
c0de5aec:	b004      	add	sp, #16
c0de5aee:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5af2:	bf00      	nop
c0de5af4:	00000904 	.word	0x00000904
c0de5af8:	00006153 	.word	0x00006153

c0de5afc <createHorizontalLine>:
c0de5afc:	b580      	push	{r7, lr}
c0de5afe:	4601      	mov	r1, r0
c0de5b00:	2003      	movs	r0, #3
c0de5b02:	f005 ffa2 	bl	c0deba4a <nbgl_objPoolGet>
c0de5b06:	2100      	movs	r1, #0
c0de5b08:	22e0      	movs	r2, #224	@ 0xe0
c0de5b0a:	71c1      	strb	r1, [r0, #7]
c0de5b0c:	2101      	movs	r1, #1
c0de5b0e:	7102      	strb	r2, [r0, #4]
c0de5b10:	2202      	movs	r2, #2
c0de5b12:	7181      	strb	r1, [r0, #6]
c0de5b14:	7141      	strb	r1, [r0, #5]
c0de5b16:	f880 2020 	strb.w	r2, [r0, #32]
c0de5b1a:	f880 1021 	strb.w	r1, [r0, #33]	@ 0x21
c0de5b1e:	77c1      	strb	r1, [r0, #31]
c0de5b20:	bd80      	pop	{r7, pc}

c0de5b22 <nbgl_layoutAddCenteredInfo>:
c0de5b22:	b570      	push	{r4, r5, r6, lr}
c0de5b24:	b08a      	sub	sp, #40	@ 0x28
c0de5b26:	ae01      	add	r6, sp, #4
c0de5b28:	460c      	mov	r4, r1
c0de5b2a:	4605      	mov	r5, r0
c0de5b2c:	2124      	movs	r1, #36	@ 0x24
c0de5b2e:	4630      	mov	r0, r6
c0de5b30:	f006 fca4 	bl	c0dec47c <__aeabi_memclr>
c0de5b34:	b33d      	cbz	r5, c0de5b86 <nbgl_layoutAddCenteredInfo+0x64>
c0de5b36:	6820      	ldr	r0, [r4, #0]
c0de5b38:	68e1      	ldr	r1, [r4, #12]
c0de5b3a:	9102      	str	r1, [sp, #8]
c0de5b3c:	b128      	cbz	r0, c0de5b4a <nbgl_layoutAddCenteredInfo+0x28>
c0de5b3e:	7c61      	ldrb	r1, [r4, #17]
c0de5b40:	2210      	movs	r2, #16
c0de5b42:	2903      	cmp	r1, #3
c0de5b44:	bf08      	it	eq
c0de5b46:	2214      	moveq	r2, #20
c0de5b48:	50b0      	str	r0, [r6, r2]
c0de5b4a:	6860      	ldr	r0, [r4, #4]
c0de5b4c:	b128      	cbz	r0, c0de5b5a <nbgl_layoutAddCenteredInfo+0x38>
c0de5b4e:	7c61      	ldrb	r1, [r4, #17]
c0de5b50:	2218      	movs	r2, #24
c0de5b52:	2901      	cmp	r1, #1
c0de5b54:	bf08      	it	eq
c0de5b56:	2214      	moveq	r2, #20
c0de5b58:	50b0      	str	r0, [r6, r2]
c0de5b5a:	68a0      	ldr	r0, [r4, #8]
c0de5b5c:	b128      	cbz	r0, c0de5b6a <nbgl_layoutAddCenteredInfo+0x48>
c0de5b5e:	7c61      	ldrb	r1, [r4, #17]
c0de5b60:	2218      	movs	r2, #24
c0de5b62:	2902      	cmp	r1, #2
c0de5b64:	bf08      	it	eq
c0de5b66:	221c      	moveq	r2, #28
c0de5b68:	50b0      	str	r0, [r6, r2]
c0de5b6a:	a901      	add	r1, sp, #4
c0de5b6c:	4628      	mov	r0, r5
c0de5b6e:	f000 f815 	bl	c0de5b9c <addContentCenter>
c0de5b72:	7c21      	ldrb	r1, [r4, #16]
c0de5b74:	b151      	cbz	r1, c0de5b8c <nbgl_layoutAddCenteredInfo+0x6a>
c0de5b76:	2100      	movs	r1, #0
c0de5b78:	2220      	movs	r2, #32
c0de5b7a:	7601      	strb	r1, [r0, #24]
c0de5b7c:	75c2      	strb	r2, [r0, #23]
c0de5b7e:	7581      	strb	r1, [r0, #22]
c0de5b80:	8a61      	ldrh	r1, [r4, #18]
c0de5b82:	3120      	adds	r1, #32
c0de5b84:	e003      	b.n	c0de5b8e <nbgl_layoutAddCenteredInfo+0x6c>
c0de5b86:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5b8a:	e005      	b.n	c0de5b98 <nbgl_layoutAddCenteredInfo+0x76>
c0de5b8c:	8a61      	ldrh	r1, [r4, #18]
c0de5b8e:	7641      	strb	r1, [r0, #25]
c0de5b90:	0a09      	lsrs	r1, r1, #8
c0de5b92:	7681      	strb	r1, [r0, #26]
c0de5b94:	f001 fe74 	bl	c0de7880 <OUTLINED_FUNCTION_36>
c0de5b98:	b00a      	add	sp, #40	@ 0x28
c0de5b9a:	bd70      	pop	{r4, r5, r6, pc}

c0de5b9c <addContentCenter>:
c0de5b9c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5ba0:	4682      	mov	sl, r0
c0de5ba2:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de5ba6:	4688      	mov	r8, r1
c0de5ba8:	f001 fdb8 	bl	c0de771c <OUTLINED_FUNCTION_19>
c0de5bac:	2700      	movs	r7, #0
c0de5bae:	4683      	mov	fp, r0
c0de5bb0:	f880 7020 	strb.w	r7, [r0, #32]
c0de5bb4:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5bb8:	08c1      	lsrs	r1, r0, #3
c0de5bba:	2006      	movs	r0, #6
c0de5bbc:	f005 ff4a 	bl	c0deba54 <nbgl_containerPoolGet>
c0de5bc0:	4659      	mov	r1, fp
c0de5bc2:	0e02      	lsrs	r2, r0, #24
c0de5bc4:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de5bc8:	f001 fd97 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de5bcc:	f88b 0023 	strb.w	r0, [fp, #35]	@ 0x23
c0de5bd0:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de5bd4:	2800      	cmp	r0, #0
c0de5bd6:	f000 8093 	beq.w	c0de5d00 <addContentCenter+0x164>
c0de5bda:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5bde:	f001 fddf 	bl	c0de77a0 <OUTLINED_FUNCTION_26>
c0de5be2:	4607      	mov	r7, r0
c0de5be4:	f001 fe73 	bl	c0de78ce <OUTLINED_FUNCTION_42>
c0de5be8:	bfc8      	it	gt
c0de5bea:	2000      	movgt	r0, #0
c0de5bec:	77f8      	strb	r0, [r7, #31]
c0de5bee:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de5bf2:	f006 f917 	bl	c0debe24 <pic>
c0de5bf6:	4639      	mov	r1, r7
c0de5bf8:	0e02      	lsrs	r2, r0, #24
c0de5bfa:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de5bfe:	70ca      	strb	r2, [r1, #3]
c0de5c00:	0c02      	lsrs	r2, r0, #16
c0de5c02:	708a      	strb	r2, [r1, #2]
c0de5c04:	0a01      	lsrs	r1, r0, #8
c0de5c06:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de5c0a:	4659      	mov	r1, fp
c0de5c0c:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5c10:	784e      	ldrb	r6, [r1, #1]
c0de5c12:	788c      	ldrb	r4, [r1, #2]
c0de5c14:	78cd      	ldrb	r5, [r1, #3]
c0de5c16:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de5c1a:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de5c1e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5c22:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de5c26:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de5c2a:	2202      	movs	r2, #2
c0de5c2c:	3301      	adds	r3, #1
c0de5c2e:	75ba      	strb	r2, [r7, #22]
c0de5c30:	f8b8 2020 	ldrh.w	r2, [r8, #32]
c0de5c34:	767a      	strb	r2, [r7, #25]
c0de5c36:	f801 3c02 	strb.w	r3, [r1, #-2]
c0de5c3a:	0a14      	lsrs	r4, r2, #8
c0de5c3c:	7881      	ldrb	r1, [r0, #2]
c0de5c3e:	78c0      	ldrb	r0, [r0, #3]
c0de5c40:	76bc      	strb	r4, [r7, #26]
c0de5c42:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5c46:	1881      	adds	r1, r0, r2
c0de5c48:	f898 0000 	ldrb.w	r0, [r8]
c0de5c4c:	2801      	cmp	r0, #1
c0de5c4e:	d158      	bne.n	c0de5d02 <addContentCenter+0x166>
c0de5c50:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5c54:	9100      	str	r1, [sp, #0]
c0de5c56:	f001 fda3 	bl	c0de77a0 <OUTLINED_FUNCTION_26>
c0de5c5a:	4606      	mov	r6, r0
c0de5c5c:	f001 fe37 	bl	c0de78ce <OUTLINED_FUNCTION_42>
c0de5c60:	bfc8      	it	gt
c0de5c62:	2000      	movgt	r0, #0
c0de5c64:	77f0      	strb	r0, [r6, #31]
c0de5c66:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de5c6a:	6800      	ldr	r0, [r0, #0]
c0de5c6c:	6800      	ldr	r0, [r0, #0]
c0de5c6e:	f006 f8d9 	bl	c0debe24 <pic>
c0de5c72:	4631      	mov	r1, r6
c0de5c74:	0e02      	lsrs	r2, r0, #24
c0de5c76:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de5c7a:	70ca      	strb	r2, [r1, #3]
c0de5c7c:	0c02      	lsrs	r2, r0, #16
c0de5c7e:	0a00      	lsrs	r0, r0, #8
c0de5c80:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de5c84:	708a      	strb	r2, [r1, #2]
c0de5c86:	4658      	mov	r0, fp
c0de5c88:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5c8c:	7843      	ldrb	r3, [r0, #1]
c0de5c8e:	7885      	ldrb	r5, [r0, #2]
c0de5c90:	78c4      	ldrb	r4, [r0, #3]
c0de5c92:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de5c96:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5c9a:	ea45 2304 	orr.w	r3, r5, r4, lsl #8
c0de5c9e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de5ca2:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de5ca6:	2102      	movs	r1, #2
c0de5ca8:	75b1      	strb	r1, [r6, #22]
c0de5caa:	f8b8 100c 	ldrh.w	r1, [r8, #12]
c0de5cae:	75f1      	strb	r1, [r6, #23]
c0de5cb0:	0a09      	lsrs	r1, r1, #8
c0de5cb2:	f8b8 3020 	ldrh.w	r3, [r8, #32]
c0de5cb6:	f8b8 400e 	ldrh.w	r4, [r8, #14]
c0de5cba:	7631      	strb	r1, [r6, #24]
c0de5cbc:	1c51      	adds	r1, r2, #1
c0de5cbe:	4423      	add	r3, r4
c0de5cc0:	7673      	strb	r3, [r6, #25]
c0de5cc2:	f800 1c02 	strb.w	r1, [r0, #-2]
c0de5cc6:	0a18      	lsrs	r0, r3, #8
c0de5cc8:	76b0      	strb	r0, [r6, #26]
c0de5cca:	2000      	movs	r0, #0
c0de5ccc:	f88a 00af 	strb.w	r0, [sl, #175]	@ 0xaf
c0de5cd0:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de5cd4:	f8ca 00a4 	str.w	r0, [sl, #164]	@ 0xa4
c0de5cd8:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5cdc:	f040 0104 	orr.w	r1, r0, #4
c0de5ce0:	08c0      	lsrs	r0, r0, #3
c0de5ce2:	f88a 10ad 	strb.w	r1, [sl, #173]	@ 0xad
c0de5ce6:	49bb      	ldr	r1, [pc, #748]	@ (c0de5fd4 <addContentCenter+0x438>)
c0de5ce8:	4479      	add	r1, pc
c0de5cea:	9101      	str	r1, [sp, #4]
c0de5cec:	f8d8 1008 	ldr.w	r1, [r8, #8]
c0de5cf0:	88c9      	ldrh	r1, [r1, #6]
c0de5cf2:	e9cd 1102 	strd	r1, r1, [sp, #8]
c0de5cf6:	a901      	add	r1, sp, #4
c0de5cf8:	f005 fe9d 	bl	c0deba36 <nbgl_screenUpdateTicker>
c0de5cfc:	9900      	ldr	r1, [sp, #0]
c0de5cfe:	e000      	b.n	c0de5d02 <addContentCenter+0x166>
c0de5d00:	2100      	movs	r1, #0
c0de5d02:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de5d06:	2800      	cmp	r0, #0
c0de5d08:	d05f      	beq.n	c0de5dca <addContentCenter+0x22e>
c0de5d0a:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5d0e:	9100      	str	r1, [sp, #0]
c0de5d10:	f001 fc02 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de5d14:	4606      	mov	r6, r0
c0de5d16:	f001 fd29 	bl	c0de776c <OUTLINED_FUNCTION_24>
c0de5d1a:	bfc8      	it	gt
c0de5d1c:	2100      	movgt	r1, #0
c0de5d1e:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de5d22:	77f1      	strb	r1, [r6, #31]
c0de5d24:	f006 f87e 	bl	c0debe24 <pic>
c0de5d28:	4601      	mov	r1, r0
c0de5d2a:	2001      	movs	r0, #1
c0de5d2c:	2301      	movs	r3, #1
c0de5d2e:	7170      	strb	r0, [r6, #5]
c0de5d30:	20a0      	movs	r0, #160	@ 0xa0
c0de5d32:	0e0a      	lsrs	r2, r1, #24
c0de5d34:	7130      	strb	r0, [r6, #4]
c0de5d36:	200d      	movs	r0, #13
c0de5d38:	f001 fe1d 	bl	c0de7976 <OUTLINED_FUNCTION_52>
c0de5d3c:	4630      	mov	r0, r6
c0de5d3e:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de5d42:	70c2      	strb	r2, [r0, #3]
c0de5d44:	0c0a      	lsrs	r2, r1, #16
c0de5d46:	7082      	strb	r2, [r0, #2]
c0de5d48:	0a08      	lsrs	r0, r1, #8
c0de5d4a:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de5d4e:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de5d52:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de5d56:	f040 0001 	orr.w	r0, r0, #1
c0de5d5a:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de5d5e:	f001 fe45 	bl	c0de79ec <OUTLINED_FUNCTION_62>
c0de5d62:	71b0      	strb	r0, [r6, #6]
c0de5d64:	0a01      	lsrs	r1, r0, #8
c0de5d66:	f89b c020 	ldrb.w	ip, [fp, #32]
c0de5d6a:	71f1      	strb	r1, [r6, #7]
c0de5d6c:	f1bc 0f00 	cmp.w	ip, #0
c0de5d70:	d010      	beq.n	c0de5d94 <addContentCenter+0x1f8>
c0de5d72:	4633      	mov	r3, r6
c0de5d74:	0e3a      	lsrs	r2, r7, #24
c0de5d76:	f803 7f12 	strb.w	r7, [r3, #18]!
c0de5d7a:	70da      	strb	r2, [r3, #3]
c0de5d7c:	0c3a      	lsrs	r2, r7, #16
c0de5d7e:	709a      	strb	r2, [r3, #2]
c0de5d80:	0a3a      	lsrs	r2, r7, #8
c0de5d82:	705a      	strb	r2, [r3, #1]
c0de5d84:	f8b8 2020 	ldrh.w	r2, [r8, #32]
c0de5d88:	3218      	adds	r2, #24
c0de5d8a:	0a14      	lsrs	r4, r2, #8
c0de5d8c:	71da      	strb	r2, [r3, #7]
c0de5d8e:	721c      	strb	r4, [r3, #8]
c0de5d90:	2308      	movs	r3, #8
c0de5d92:	e004      	b.n	c0de5d9e <addContentCenter+0x202>
c0de5d94:	7e72      	ldrb	r2, [r6, #25]
c0de5d96:	7eb3      	ldrb	r3, [r6, #26]
c0de5d98:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5d9c:	2302      	movs	r3, #2
c0de5d9e:	75b3      	strb	r3, [r6, #22]
c0de5da0:	465b      	mov	r3, fp
c0de5da2:	f813 4f22 	ldrb.w	r4, [r3, #34]!
c0de5da6:	785d      	ldrb	r5, [r3, #1]
c0de5da8:	789f      	ldrb	r7, [r3, #2]
c0de5daa:	78d9      	ldrb	r1, [r3, #3]
c0de5dac:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5db0:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de5db4:	ea44 4101 	orr.w	r1, r4, r1, lsl #16
c0de5db8:	f841 602c 	str.w	r6, [r1, ip, lsl #2]
c0de5dbc:	f10c 0101 	add.w	r1, ip, #1
c0de5dc0:	f803 1c02 	strb.w	r1, [r3, #-2]
c0de5dc4:	9900      	ldr	r1, [sp, #0]
c0de5dc6:	4408      	add	r0, r1
c0de5dc8:	1881      	adds	r1, r0, r2
c0de5dca:	f8d8 0014 	ldr.w	r0, [r8, #20]
c0de5dce:	b3e8      	cbz	r0, c0de5e4c <addContentCenter+0x2b0>
c0de5dd0:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5dd4:	9100      	str	r1, [sp, #0]
c0de5dd6:	f001 fb9f 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de5dda:	4607      	mov	r7, r0
c0de5ddc:	f001 fcc6 	bl	c0de776c <OUTLINED_FUNCTION_24>
c0de5de0:	bfc8      	it	gt
c0de5de2:	2100      	movgt	r1, #0
c0de5de4:	f8d8 0014 	ldr.w	r0, [r8, #20]
c0de5de8:	77f9      	strb	r1, [r7, #31]
c0de5dea:	f006 f81b 	bl	c0debe24 <pic>
c0de5dee:	4601      	mov	r1, r0
c0de5df0:	2001      	movs	r0, #1
c0de5df2:	f001 fdd1 	bl	c0de7998 <OUTLINED_FUNCTION_55>
c0de5df6:	200c      	movs	r0, #12
c0de5df8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5dfc:	2005      	movs	r0, #5
c0de5dfe:	f001 fc91 	bl	c0de7724 <OUTLINED_FUNCTION_20>
c0de5e02:	200c      	movs	r0, #12
c0de5e04:	f005 fe3a 	bl	c0deba7c <nbgl_getTextHeightInWidth>
c0de5e08:	f001 fd50 	bl	c0de78ac <OUTLINED_FUNCTION_39>
c0de5e0c:	d01a      	beq.n	c0de5e44 <addContentCenter+0x2a8>
c0de5e0e:	f001 fc0b 	bl	c0de7628 <OUTLINED_FUNCTION_10>
c0de5e12:	70ae      	strb	r6, [r5, #2]
c0de5e14:	2618      	movs	r6, #24
c0de5e16:	706b      	strb	r3, [r5, #1]
c0de5e18:	2300      	movs	r3, #0
c0de5e1a:	71ee      	strb	r6, [r5, #7]
c0de5e1c:	2608      	movs	r6, #8
c0de5e1e:	722b      	strb	r3, [r5, #8]
c0de5e20:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de5e24:	712e      	strb	r6, [r5, #4]
c0de5e26:	460e      	mov	r6, r1
c0de5e28:	7ee4      	ldrb	r4, [r4, #27]
c0de5e2a:	2c02      	cmp	r4, #2
c0de5e2c:	bf1d      	ittte	ne
c0de5e2e:	76bb      	strbne	r3, [r7, #26]
c0de5e30:	2310      	movne	r3, #16
c0de5e32:	767b      	strbne	r3, [r7, #25]
c0de5e34:	f8b8 3020 	ldrheq.w	r3, [r8, #32]
c0de5e38:	bf01      	itttt	eq
c0de5e3a:	3318      	addeq	r3, #24
c0de5e3c:	767b      	strbeq	r3, [r7, #25]
c0de5e3e:	0a1c      	lsreq	r4, r3, #8
c0de5e40:	76bc      	strbeq	r4, [r7, #26]
c0de5e42:	e001      	b.n	c0de5e48 <addContentCenter+0x2ac>
c0de5e44:	f001 fb80 	bl	c0de7548 <OUTLINED_FUNCTION_3>
c0de5e48:	f001 fcd5 	bl	c0de77f6 <OUTLINED_FUNCTION_30>
c0de5e4c:	f8d8 0018 	ldr.w	r0, [r8, #24]
c0de5e50:	2800      	cmp	r0, #0
c0de5e52:	d04f      	beq.n	c0de5ef4 <addContentCenter+0x358>
c0de5e54:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5e58:	9100      	str	r1, [sp, #0]
c0de5e5a:	f001 fb5d 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de5e5e:	4607      	mov	r7, r0
c0de5e60:	f001 fc84 	bl	c0de776c <OUTLINED_FUNCTION_24>
c0de5e64:	bfc8      	it	gt
c0de5e66:	2100      	movgt	r1, #0
c0de5e68:	f8d8 0018 	ldr.w	r0, [r8, #24]
c0de5e6c:	77f9      	strb	r1, [r7, #31]
c0de5e6e:	f005 ffd9 	bl	c0debe24 <pic>
c0de5e72:	4601      	mov	r1, r0
c0de5e74:	2001      	movs	r0, #1
c0de5e76:	f001 fd8f 	bl	c0de7998 <OUTLINED_FUNCTION_55>
c0de5e7a:	200b      	movs	r0, #11
c0de5e7c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5e80:	2005      	movs	r0, #5
c0de5e82:	f887 0020 	strb.w	r0, [r7, #32]
c0de5e86:	f001 fb4b 	bl	c0de7520 <OUTLINED_FUNCTION_2>
c0de5e8a:	f001 fd0f 	bl	c0de78ac <OUTLINED_FUNCTION_39>
c0de5e8e:	d02d      	beq.n	c0de5eec <addContentCenter+0x350>
c0de5e90:	465a      	mov	r2, fp
c0de5e92:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de5e96:	7854      	ldrb	r4, [r2, #1]
c0de5e98:	7895      	ldrb	r5, [r2, #2]
c0de5e9a:	78d2      	ldrb	r2, [r2, #3]
c0de5e9c:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de5ea0:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5ea4:	463d      	mov	r5, r7
c0de5ea6:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
c0de5eaa:	eb02 0381 	add.w	r3, r2, r1, lsl #2
c0de5eae:	f853 4c04 	ldr.w	r4, [r3, #-4]
c0de5eb2:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de5eb6:	0e26      	lsrs	r6, r4, #24
c0de5eb8:	70ee      	strb	r6, [r5, #3]
c0de5eba:	0c26      	lsrs	r6, r4, #16
c0de5ebc:	0a24      	lsrs	r4, r4, #8
c0de5ebe:	70ae      	strb	r6, [r5, #2]
c0de5ec0:	706c      	strb	r4, [r5, #1]
c0de5ec2:	2408      	movs	r4, #8
c0de5ec4:	460e      	mov	r6, r1
c0de5ec6:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de5eca:	712c      	strb	r4, [r5, #4]
c0de5ecc:	7edb      	ldrb	r3, [r3, #27]
c0de5ece:	2b04      	cmp	r3, #4
c0de5ed0:	bf01      	itttt	eq
c0de5ed2:	2300      	moveq	r3, #0
c0de5ed4:	76bb      	strbeq	r3, [r7, #26]
c0de5ed6:	2310      	moveq	r3, #16
c0de5ed8:	767b      	strbeq	r3, [r7, #25]
c0de5eda:	bf1f      	itttt	ne
c0de5edc:	f8b8 3020 	ldrhne.w	r3, [r8, #32]
c0de5ee0:	3318      	addne	r3, #24
c0de5ee2:	767b      	strbne	r3, [r7, #25]
c0de5ee4:	0a1c      	lsrne	r4, r3, #8
c0de5ee6:	bf18      	it	ne
c0de5ee8:	76bc      	strbne	r4, [r7, #26]
c0de5eea:	e001      	b.n	c0de5ef0 <addContentCenter+0x354>
c0de5eec:	f001 fb2c 	bl	c0de7548 <OUTLINED_FUNCTION_3>
c0de5ef0:	f001 fc81 	bl	c0de77f6 <OUTLINED_FUNCTION_30>
c0de5ef4:	f8d8 001c 	ldr.w	r0, [r8, #28]
c0de5ef8:	b3c0      	cbz	r0, c0de5f6c <addContentCenter+0x3d0>
c0de5efa:	f89a 00ad 	ldrb.w	r0, [sl, #173]	@ 0xad
c0de5efe:	9100      	str	r1, [sp, #0]
c0de5f00:	f001 fb0a 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de5f04:	2401      	movs	r4, #1
c0de5f06:	4607      	mov	r7, r0
c0de5f08:	77c4      	strb	r4, [r0, #31]
c0de5f0a:	f8d8 001c 	ldr.w	r0, [r8, #28]
c0de5f0e:	f005 ff89 	bl	c0debe24 <pic>
c0de5f12:	4601      	mov	r1, r0
c0de5f14:	20a0      	movs	r0, #160	@ 0xa0
c0de5f16:	2301      	movs	r3, #1
c0de5f18:	717c      	strb	r4, [r7, #5]
c0de5f1a:	7138      	strb	r0, [r7, #4]
c0de5f1c:	200b      	movs	r0, #11
c0de5f1e:	0e0a      	lsrs	r2, r1, #24
c0de5f20:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5f24:	2005      	movs	r0, #5
c0de5f26:	f887 0020 	strb.w	r0, [r7, #32]
c0de5f2a:	f001 faf9 	bl	c0de7520 <OUTLINED_FUNCTION_2>
c0de5f2e:	3010      	adds	r0, #16
c0de5f30:	f001 fcbc 	bl	c0de78ac <OUTLINED_FUNCTION_39>
c0de5f34:	d016      	beq.n	c0de5f64 <addContentCenter+0x3c8>
c0de5f36:	f001 fb77 	bl	c0de7628 <OUTLINED_FUNCTION_10>
c0de5f3a:	706b      	strb	r3, [r5, #1]
c0de5f3c:	2300      	movs	r3, #0
c0de5f3e:	70ae      	strb	r6, [r5, #2]
c0de5f40:	2608      	movs	r6, #8
c0de5f42:	722b      	strb	r3, [r5, #8]
c0de5f44:	2310      	movs	r3, #16
c0de5f46:	712e      	strb	r6, [r5, #4]
c0de5f48:	71eb      	strb	r3, [r5, #7]
c0de5f4a:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de5f4e:	7ee4      	ldrb	r4, [r4, #27]
c0de5f50:	2c02      	cmp	r4, #2
c0de5f52:	d105      	bne.n	c0de5f60 <addContentCenter+0x3c4>
c0de5f54:	f8b8 3020 	ldrh.w	r3, [r8, #32]
c0de5f58:	3310      	adds	r3, #16
c0de5f5a:	0a1c      	lsrs	r4, r3, #8
c0de5f5c:	767b      	strb	r3, [r7, #25]
c0de5f5e:	76bc      	strb	r4, [r7, #26]
c0de5f60:	460e      	mov	r6, r1
c0de5f62:	e001      	b.n	c0de5f68 <addContentCenter+0x3cc>
c0de5f64:	f001 faf0 	bl	c0de7548 <OUTLINED_FUNCTION_3>
c0de5f68:	f001 fc45 	bl	c0de77f6 <OUTLINED_FUNCTION_30>
c0de5f6c:	2001      	movs	r0, #1
c0de5f6e:	f88b 1006 	strb.w	r1, [fp, #6]
c0de5f72:	f88b 0005 	strb.w	r0, [fp, #5]
c0de5f76:	20a0      	movs	r0, #160	@ 0xa0
c0de5f78:	f88b 0004 	strb.w	r0, [fp, #4]
c0de5f7c:	2005      	movs	r0, #5
c0de5f7e:	f88b 0016 	strb.w	r0, [fp, #22]
c0de5f82:	2000      	movs	r0, #0
c0de5f84:	f88b 001f 	strb.w	r0, [fp, #31]
c0de5f88:	0a08      	lsrs	r0, r1, #8
c0de5f8a:	f88b 0007 	strb.w	r0, [fp, #7]
c0de5f8e:	f898 0022 	ldrb.w	r0, [r8, #34]	@ 0x22
c0de5f92:	b130      	cbz	r0, c0de5fa2 <addContentCenter+0x406>
c0de5f94:	f101 0028 	add.w	r0, r1, #40	@ 0x28
c0de5f98:	f88b 0006 	strb.w	r0, [fp, #6]
c0de5f9c:	0a00      	lsrs	r0, r0, #8
c0de5f9e:	f88b 0007 	strb.w	r0, [fp, #7]
c0de5fa2:	f8da 00a0 	ldr.w	r0, [sl, #160]	@ 0xa0
c0de5fa6:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5faa:	7843      	ldrb	r3, [r0, #1]
c0de5fac:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de5fb0:	7884      	ldrb	r4, [r0, #2]
c0de5fb2:	78c0      	ldrb	r0, [r0, #3]
c0de5fb4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5fb8:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de5fbc:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de5fc0:	f840 b022 	str.w	fp, [r0, r2, lsl #2]
c0de5fc4:	f8da 00a0 	ldr.w	r0, [sl, #160]	@ 0xa0
c0de5fc8:	f001 faa0 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de5fcc:	4658      	mov	r0, fp
c0de5fce:	b004      	add	sp, #16
c0de5fd0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5fd4:	0000171d 	.word	0x0000171d

c0de5fd8 <nbgl_layoutAddContentCenter>:
c0de5fd8:	b128      	cbz	r0, c0de5fe6 <nbgl_layoutAddContentCenter+0xe>
c0de5fda:	b580      	push	{r7, lr}
c0de5fdc:	f7ff fdde 	bl	c0de5b9c <addContentCenter>
c0de5fe0:	f001 fc4e 	bl	c0de7880 <OUTLINED_FUNCTION_36>
c0de5fe4:	bd80      	pop	{r7, pc}
c0de5fe6:	f001 bc68 	b.w	c0de78ba <OUTLINED_FUNCTION_40>

c0de5fea <nbgl_layoutAddQRCode>:
c0de5fea:	2800      	cmp	r0, #0
c0de5fec:	f000 810a 	beq.w	c0de6204 <nbgl_layoutAddQRCode+0x21a>
c0de5ff0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5ff4:	4680      	mov	r8, r0
c0de5ff6:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de5ffa:	460e      	mov	r6, r1
c0de5ffc:	f001 fb8e 	bl	c0de771c <OUTLINED_FUNCTION_19>
c0de6000:	4682      	mov	sl, r0
c0de6002:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de6006:	08c1      	lsrs	r1, r0, #3
c0de6008:	2003      	movs	r0, #3
c0de600a:	f005 fd23 	bl	c0deba54 <nbgl_containerPoolGet>
c0de600e:	4655      	mov	r5, sl
c0de6010:	0e01      	lsrs	r1, r0, #24
c0de6012:	2400      	movs	r4, #0
c0de6014:	f805 0f22 	strb.w	r0, [r5, #34]!
c0de6018:	f88a 4020 	strb.w	r4, [sl, #32]
c0de601c:	f001 fd0f 	bl	c0de7a3e <OUTLINED_FUNCTION_69>
c0de6020:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de6024:	08c1      	lsrs	r1, r0, #3
c0de6026:	200a      	movs	r0, #10
c0de6028:	f005 fd0f 	bl	c0deba4a <nbgl_objPoolGet>
c0de602c:	4683      	mov	fp, r0
c0de602e:	6830      	ldr	r0, [r6, #0]
c0de6030:	f005 fef8 	bl	c0debe24 <pic>
c0de6034:	f006 fa8e 	bl	c0dec554 <strlen>
c0de6038:	283e      	cmp	r0, #62	@ 0x3e
c0de603a:	f04f 0000 	mov.w	r0, #0
c0de603e:	465f      	mov	r7, fp
c0de6040:	bf88      	it	hi
c0de6042:	2001      	movhi	r0, #1
c0de6044:	f88b 0020 	strb.w	r0, [fp, #32]
c0de6048:	f88b 401f 	strb.w	r4, [fp, #31]
c0de604c:	f44f 7084 	mov.w	r0, #264	@ 0x108
c0de6050:	bf88      	it	hi
c0de6052:	20e4      	movhi	r0, #228	@ 0xe4
c0de6054:	f88b 0004 	strb.w	r0, [fp, #4]
c0de6058:	f807 0f06 	strb.w	r0, [r7, #6]!
c0de605c:	0a00      	lsrs	r0, r0, #8
c0de605e:	7078      	strb	r0, [r7, #1]
c0de6060:	f88b 0005 	strb.w	r0, [fp, #5]
c0de6064:	6830      	ldr	r0, [r6, #0]
c0de6066:	f005 fedd 	bl	c0debe24 <pic>
c0de606a:	4659      	mov	r1, fp
c0de606c:	0e02      	lsrs	r2, r0, #24
c0de606e:	f88b 4009 	strb.w	r4, [fp, #9]
c0de6072:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de6076:	f001 fb40 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de607a:	f88b 0022 	strb.w	r0, [fp, #34]	@ 0x22
c0de607e:	7828      	ldrb	r0, [r5, #0]
c0de6080:	78a9      	ldrb	r1, [r5, #2]
c0de6082:	78ea      	ldrb	r2, [r5, #3]
c0de6084:	f89a 5023 	ldrb.w	r5, [sl, #35]	@ 0x23
c0de6088:	f89a 3020 	ldrb.w	r3, [sl, #32]
c0de608c:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6090:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6094:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6098:	7879      	ldrb	r1, [r7, #1]
c0de609a:	f840 b023 	str.w	fp, [r0, r3, lsl #2]
c0de609e:	2002      	movs	r0, #2
c0de60a0:	f88b 0016 	strb.w	r0, [fp, #22]
c0de60a4:	1c58      	adds	r0, r3, #1
c0de60a6:	f88a 0020 	strb.w	r0, [sl, #32]
c0de60aa:	7838      	ldrb	r0, [r7, #0]
c0de60ac:	ea40 2701 	orr.w	r7, r0, r1, lsl #8
c0de60b0:	6870      	ldr	r0, [r6, #4]
c0de60b2:	2800      	cmp	r0, #0
c0de60b4:	d057      	beq.n	c0de6166 <nbgl_layoutAddQRCode+0x17c>
c0de60b6:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de60ba:	f001 fa2d 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de60be:	4605      	mov	r5, r0
c0de60c0:	77c4      	strb	r4, [r0, #31]
c0de60c2:	6870      	ldr	r0, [r6, #4]
c0de60c4:	f005 feae 	bl	c0debe24 <pic>
c0de60c8:	4601      	mov	r1, r0
c0de60ca:	2001      	movs	r0, #1
c0de60cc:	7168      	strb	r0, [r5, #5]
c0de60ce:	20a0      	movs	r0, #160	@ 0xa0
c0de60d0:	0e0a      	lsrs	r2, r1, #24
c0de60d2:	7128      	strb	r0, [r5, #4]
c0de60d4:	2005      	movs	r0, #5
c0de60d6:	f885 0020 	strb.w	r0, [r5, #32]
c0de60da:	4628      	mov	r0, r5
c0de60dc:	f001 fabc 	bl	c0de7658 <OUTLINED_FUNCTION_11>
c0de60e0:	f885 0027 	strb.w	r0, [r5, #39]	@ 0x27
c0de60e4:	f895 0024 	ldrb.w	r0, [r5, #36]	@ 0x24
c0de60e8:	7bf2      	ldrb	r2, [r6, #15]
c0de60ea:	f040 0001 	orr.w	r0, r0, #1
c0de60ee:	f885 0024 	strb.w	r0, [r5, #36]	@ 0x24
c0de60f2:	200d      	movs	r0, #13
c0de60f4:	2a00      	cmp	r2, #0
c0de60f6:	bf08      	it	eq
c0de60f8:	200b      	moveq	r0, #11
c0de60fa:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de60fe:	f885 0022 	strb.w	r0, [r5, #34]	@ 0x22
c0de6102:	2301      	movs	r3, #1
c0de6104:	f005 fcba 	bl	c0deba7c <nbgl_getTextHeightInWidth>
c0de6108:	4651      	mov	r1, sl
c0de610a:	46be      	mov	lr, r7
c0de610c:	f811 cf22 	ldrb.w	ip, [r1, #34]!
c0de6110:	784f      	ldrb	r7, [r1, #1]
c0de6112:	788c      	ldrb	r4, [r1, #2]
c0de6114:	78ca      	ldrb	r2, [r1, #3]
c0de6116:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de611a:	ea4c 2707 	orr.w	r7, ip, r7, lsl #8
c0de611e:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de6122:	46b4      	mov	ip, r6
c0de6124:	ea47 4202 	orr.w	r2, r7, r2, lsl #16
c0de6128:	462f      	mov	r7, r5
c0de612a:	eb02 0483 	add.w	r4, r2, r3, lsl #2
c0de612e:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de6132:	f807 4f12 	strb.w	r4, [r7, #18]!
c0de6136:	0e26      	lsrs	r6, r4, #24
c0de6138:	70fe      	strb	r6, [r7, #3]
c0de613a:	0c26      	lsrs	r6, r4, #16
c0de613c:	0a24      	lsrs	r4, r4, #8
c0de613e:	70be      	strb	r6, [r7, #2]
c0de6140:	74ec      	strb	r4, [r5, #19]
c0de6142:	f842 5023 	str.w	r5, [r2, r3, lsl #2]
c0de6146:	2200      	movs	r2, #0
c0de6148:	71a8      	strb	r0, [r5, #6]
c0de614a:	4666      	mov	r6, ip
c0de614c:	76aa      	strb	r2, [r5, #26]
c0de614e:	2218      	movs	r2, #24
c0de6150:	766a      	strb	r2, [r5, #25]
c0de6152:	2208      	movs	r2, #8
c0de6154:	75aa      	strb	r2, [r5, #22]
c0de6156:	0a02      	lsrs	r2, r0, #8
c0de6158:	4470      	add	r0, lr
c0de615a:	71ea      	strb	r2, [r5, #7]
c0de615c:	1c5a      	adds	r2, r3, #1
c0de615e:	f100 0718 	add.w	r7, r0, #24
c0de6162:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de6166:	68b0      	ldr	r0, [r6, #8]
c0de6168:	2800      	cmp	r0, #0
c0de616a:	d04d      	beq.n	c0de6208 <nbgl_layoutAddQRCode+0x21e>
c0de616c:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de6170:	f001 f9d2 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de6174:	2401      	movs	r4, #1
c0de6176:	4605      	mov	r5, r0
c0de6178:	77c4      	strb	r4, [r0, #31]
c0de617a:	68b0      	ldr	r0, [r6, #8]
c0de617c:	f005 fe52 	bl	c0debe24 <pic>
c0de6180:	4601      	mov	r1, r0
c0de6182:	20a0      	movs	r0, #160	@ 0xa0
c0de6184:	2301      	movs	r3, #1
c0de6186:	716c      	strb	r4, [r5, #5]
c0de6188:	7128      	strb	r0, [r5, #4]
c0de618a:	200b      	movs	r0, #11
c0de618c:	0e0a      	lsrs	r2, r1, #24
c0de618e:	f885 0022 	strb.w	r0, [r5, #34]	@ 0x22
c0de6192:	2005      	movs	r0, #5
c0de6194:	f001 fa22 	bl	c0de75dc <OUTLINED_FUNCTION_7>
c0de6198:	4651      	mov	r1, sl
c0de619a:	9701      	str	r7, [sp, #4]
c0de619c:	46b6      	mov	lr, r6
c0de619e:	6876      	ldr	r6, [r6, #4]
c0de61a0:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de61a4:	784c      	ldrb	r4, [r1, #1]
c0de61a6:	f891 c002 	ldrb.w	ip, [r1, #2]
c0de61aa:	78cf      	ldrb	r7, [r1, #3]
c0de61ac:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de61b0:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de61b4:	ea4c 2407 	orr.w	r4, ip, r7, lsl #8
c0de61b8:	2700      	movs	r7, #0
c0de61ba:	ea43 4c04 	orr.w	ip, r3, r4, lsl #16
c0de61be:	eb0c 0482 	add.w	r4, ip, r2, lsl #2
c0de61c2:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de61c6:	76af      	strb	r7, [r5, #26]
c0de61c8:	271c      	movs	r7, #28
c0de61ca:	2e00      	cmp	r6, #0
c0de61cc:	462e      	mov	r6, r5
c0de61ce:	bf08      	it	eq
c0de61d0:	2720      	moveq	r7, #32
c0de61d2:	766f      	strb	r7, [r5, #25]
c0de61d4:	f806 4f12 	strb.w	r4, [r6, #18]!
c0de61d8:	0e23      	lsrs	r3, r4, #24
c0de61da:	70f3      	strb	r3, [r6, #3]
c0de61dc:	0c23      	lsrs	r3, r4, #16
c0de61de:	70b3      	strb	r3, [r6, #2]
c0de61e0:	0a23      	lsrs	r3, r4, #8
c0de61e2:	74eb      	strb	r3, [r5, #19]
c0de61e4:	f84c 5022 	str.w	r5, [ip, r2, lsl #2]
c0de61e8:	3201      	adds	r2, #1
c0de61ea:	71a8      	strb	r0, [r5, #6]
c0de61ec:	2308      	movs	r3, #8
c0de61ee:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de61f2:	9901      	ldr	r1, [sp, #4]
c0de61f4:	75ab      	strb	r3, [r5, #22]
c0de61f6:	0a03      	lsrs	r3, r0, #8
c0de61f8:	71eb      	strb	r3, [r5, #7]
c0de61fa:	4408      	add	r0, r1
c0de61fc:	4438      	add	r0, r7
c0de61fe:	f100 0708 	add.w	r7, r0, #8
c0de6202:	e002      	b.n	c0de620a <nbgl_layoutAddQRCode+0x220>
c0de6204:	f001 bb59 	b.w	c0de78ba <OUTLINED_FUNCTION_40>
c0de6208:	46b6      	mov	lr, r6
c0de620a:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de620e:	b2b9      	uxth	r1, r7
c0de6210:	7982      	ldrb	r2, [r0, #6]
c0de6212:	79c3      	ldrb	r3, [r0, #7]
c0de6214:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6218:	3a10      	subs	r2, #16
c0de621a:	428a      	cmp	r2, r1
c0de621c:	dd01      	ble.n	c0de6222 <nbgl_layoutAddQRCode+0x238>
c0de621e:	4675      	mov	r5, lr
c0de6220:	e011      	b.n	c0de6246 <nbgl_layoutAddQRCode+0x25c>
c0de6222:	f89b 1020 	ldrb.w	r1, [fp, #32]
c0de6226:	4675      	mov	r5, lr
c0de6228:	b969      	cbnz	r1, c0de6246 <nbgl_layoutAddQRCode+0x25c>
c0de622a:	2100      	movs	r1, #0
c0de622c:	2284      	movs	r2, #132	@ 0x84
c0de622e:	3f84      	subs	r7, #132	@ 0x84
c0de6230:	f88b 1007 	strb.w	r1, [fp, #7]
c0de6234:	f88b 1005 	strb.w	r1, [fp, #5]
c0de6238:	2102      	movs	r1, #2
c0de623a:	f88b 2006 	strb.w	r2, [fp, #6]
c0de623e:	f88b 2004 	strb.w	r2, [fp, #4]
c0de6242:	f88b 1020 	strb.w	r1, [fp, #32]
c0de6246:	2100      	movs	r1, #0
c0de6248:	f88a 7006 	strb.w	r7, [sl, #6]
c0de624c:	f88a 101f 	strb.w	r1, [sl, #31]
c0de6250:	0a39      	lsrs	r1, r7, #8
c0de6252:	f88a 1007 	strb.w	r1, [sl, #7]
c0de6256:	7ba9      	ldrb	r1, [r5, #14]
c0de6258:	b109      	cbz	r1, c0de625e <nbgl_layoutAddQRCode+0x274>
c0de625a:	2005      	movs	r0, #5
c0de625c:	e00f      	b.n	c0de627e <nbgl_layoutAddQRCode+0x294>
c0de625e:	f001 faf6 	bl	c0de784e <OUTLINED_FUNCTION_34>
c0de6262:	4651      	mov	r1, sl
c0de6264:	eb00 0082 	add.w	r0, r0, r2, lsl #2
c0de6268:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de626c:	f801 0f12 	strb.w	r0, [r1, #18]!
c0de6270:	0e02      	lsrs	r2, r0, #24
c0de6272:	70ca      	strb	r2, [r1, #3]
c0de6274:	0c02      	lsrs	r2, r0, #16
c0de6276:	0a00      	lsrs	r0, r0, #8
c0de6278:	7048      	strb	r0, [r1, #1]
c0de627a:	2008      	movs	r0, #8
c0de627c:	708a      	strb	r2, [r1, #2]
c0de627e:	f88a 0016 	strb.w	r0, [sl, #22]
c0de6282:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de6286:	f001 fae2 	bl	c0de784e <OUTLINED_FUNCTION_34>
c0de628a:	f840 a022 	str.w	sl, [r0, r2, lsl #2]
c0de628e:	2001      	movs	r0, #1
c0de6290:	f88a 0005 	strb.w	r0, [sl, #5]
c0de6294:	20a0      	movs	r0, #160	@ 0xa0
c0de6296:	f88a 0004 	strb.w	r0, [sl, #4]
c0de629a:	89a8      	ldrh	r0, [r5, #12]
c0de629c:	f88a 0019 	strb.w	r0, [sl, #25]
c0de62a0:	0a00      	lsrs	r0, r0, #8
c0de62a2:	f88a 001a 	strb.w	r0, [sl, #26]
c0de62a6:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de62aa:	f001 f92f 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de62ae:	b2b8      	uxth	r0, r7
c0de62b0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de62b4 <nbgl_layoutAddChoiceButtons>:
c0de62b4:	b510      	push	{r4, lr}
c0de62b6:	b086      	sub	sp, #24
c0de62b8:	2206      	movs	r2, #6
c0de62ba:	f10d 0c04 	add.w	ip, sp, #4
c0de62be:	f8ad 2000 	strh.w	r2, [sp]
c0de62c2:	e891 001c 	ldmia.w	r1, {r2, r3, r4}
c0de62c6:	e8ac 001c 	stmia.w	ip!, {r2, r3, r4}
c0de62ca:	898a      	ldrh	r2, [r1, #12]
c0de62cc:	7b89      	ldrb	r1, [r1, #14]
c0de62ce:	f88d 1012 	strb.w	r1, [sp, #18]
c0de62d2:	4669      	mov	r1, sp
c0de62d4:	f8ad 2010 	strh.w	r2, [sp, #16]
c0de62d8:	f7fe fba6 	bl	c0de4a28 <nbgl_layoutAddExtendedFooter>
c0de62dc:	b006      	add	sp, #24
c0de62de:	bd10      	pop	{r4, pc}

c0de62e0 <nbgl_layoutAddHorizontalButtons>:
c0de62e0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de62e2:	2202      	movs	r2, #2
c0de62e4:	f88d 2004 	strb.w	r2, [sp, #4]
c0de62e8:	e9d1 2300 	ldrd	r2, r3, [r1]
c0de62ec:	e9cd 2302 	strd	r2, r3, [sp, #8]
c0de62f0:	890a      	ldrh	r2, [r1, #8]
c0de62f2:	7a89      	ldrb	r1, [r1, #10]
c0de62f4:	f8ad 2010 	strh.w	r2, [sp, #16]
c0de62f8:	f88d 1012 	strb.w	r1, [sp, #18]
c0de62fc:	a901      	add	r1, sp, #4
c0de62fe:	f7fd ffff 	bl	c0de4300 <nbgl_layoutAddUpFooter>
c0de6302:	b006      	add	sp, #24
c0de6304:	bd80      	pop	{r7, pc}
	...

c0de6308 <nbgl_layoutAddTagValueList>:
c0de6308:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de630c:	b088      	sub	sp, #32
c0de630e:	2800      	cmp	r0, #0
c0de6310:	9007      	str	r0, [sp, #28]
c0de6312:	f000 819f 	beq.w	c0de6654 <nbgl_layoutAddTagValueList+0x34c>
c0de6316:	48d2      	ldr	r0, [pc, #840]	@ (c0de6660 <nbgl_layoutAddTagValueList+0x358>)
c0de6318:	4688      	mov	r8, r1
c0de631a:	2100      	movs	r1, #0
c0de631c:	2700      	movs	r7, #0
c0de631e:	f8cd 8000 	str.w	r8, [sp]
c0de6322:	4478      	add	r0, pc
c0de6324:	9001      	str	r0, [sp, #4]
c0de6326:	f898 0008 	ldrb.w	r0, [r8, #8]
c0de632a:	4287      	cmp	r7, r0
c0de632c:	f080 8190 	bcs.w	c0de6650 <nbgl_layoutAddTagValueList+0x348>
c0de6330:	f8d8 0000 	ldr.w	r0, [r8]
c0de6334:	e9cd 7104 	strd	r7, r1, [sp, #16]
c0de6338:	b110      	cbz	r0, c0de6340 <nbgl_layoutAddTagValueList+0x38>
c0de633a:	eb00 0a01 	add.w	sl, r0, r1
c0de633e:	e007      	b.n	c0de6350 <nbgl_layoutAddTagValueList+0x48>
c0de6340:	f898 0009 	ldrb.w	r0, [r8, #9]
c0de6344:	f8d8 1004 	ldr.w	r1, [r8, #4]
c0de6348:	4438      	add	r0, r7
c0de634a:	b2c0      	uxtb	r0, r0
c0de634c:	4788      	blx	r1
c0de634e:	4682      	mov	sl, r0
c0de6350:	9f07      	ldr	r7, [sp, #28]
c0de6352:	9c01      	ldr	r4, [sp, #4]
c0de6354:	f897 00ad 	ldrb.w	r0, [r7, #173]	@ 0xad
c0de6358:	08c1      	lsrs	r1, r0, #3
c0de635a:	2001      	movs	r0, #1
c0de635c:	47a0      	blx	r4
c0de635e:	4683      	mov	fp, r0
c0de6360:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de6364:	2800      	cmp	r0, #0
c0de6366:	f04f 0003 	mov.w	r0, #3
c0de636a:	bf08      	it	eq
c0de636c:	2002      	moveq	r0, #2
c0de636e:	f897 10ad 	ldrb.w	r1, [r7, #173]	@ 0xad
c0de6372:	08c9      	lsrs	r1, r1, #3
c0de6374:	f005 fb6e 	bl	c0deba54 <nbgl_containerPoolGet>
c0de6378:	465e      	mov	r6, fp
c0de637a:	0e01      	lsrs	r1, r0, #24
c0de637c:	f806 0f22 	strb.w	r0, [r6, #34]!
c0de6380:	f001 fb77 	bl	c0de7a72 <OUTLINED_FUNCTION_73>
c0de6384:	f001 fb56 	bl	c0de7a34 <OUTLINED_FUNCTION_68>
c0de6388:	4605      	mov	r5, r0
c0de638a:	f001 fb53 	bl	c0de7a34 <OUTLINED_FUNCTION_68>
c0de638e:	4607      	mov	r7, r0
c0de6390:	f8da 0000 	ldr.w	r0, [sl]
c0de6394:	f04f 0801 	mov.w	r8, #1
c0de6398:	f885 801f 	strb.w	r8, [r5, #31]
c0de639c:	f005 fd42 	bl	c0debe24 <pic>
c0de63a0:	4601      	mov	r1, r0
c0de63a2:	20a0      	movs	r0, #160	@ 0xa0
c0de63a4:	2301      	movs	r3, #1
c0de63a6:	f885 8005 	strb.w	r8, [r5, #5]
c0de63aa:	7128      	strb	r0, [r5, #4]
c0de63ac:	200b      	movs	r0, #11
c0de63ae:	0e0a      	lsrs	r2, r1, #24
c0de63b0:	f885 0022 	strb.w	r0, [r5, #34]	@ 0x22
c0de63b4:	2004      	movs	r0, #4
c0de63b6:	f001 f911 	bl	c0de75dc <OUTLINED_FUNCTION_7>
c0de63ba:	4680      	mov	r8, r0
c0de63bc:	71a8      	strb	r0, [r5, #6]
c0de63be:	0a00      	lsrs	r0, r0, #8
c0de63c0:	2400      	movs	r4, #0
c0de63c2:	2109      	movs	r1, #9
c0de63c4:	71e8      	strb	r0, [r5, #7]
c0de63c6:	f105 0012 	add.w	r0, r5, #18
c0de63ca:	f885 4021 	strb.w	r4, [r5, #33]	@ 0x21
c0de63ce:	f006 f855 	bl	c0dec47c <__aeabi_memclr>
c0de63d2:	f89b 1023 	ldrb.w	r1, [fp, #35]	@ 0x23
c0de63d6:	7832      	ldrb	r2, [r6, #0]
c0de63d8:	78b3      	ldrb	r3, [r6, #2]
c0de63da:	78f6      	ldrb	r6, [r6, #3]
c0de63dc:	f89b 0020 	ldrb.w	r0, [fp, #32]
c0de63e0:	77fc      	strb	r4, [r7, #31]
c0de63e2:	f001 fb33 	bl	c0de7a4c <OUTLINED_FUNCTION_70>
c0de63e6:	f841 5020 	str.w	r5, [r1, r0, lsl #2]
c0de63ea:	3001      	adds	r0, #1
c0de63ec:	f88b 0020 	strb.w	r0, [fp, #32]
c0de63f0:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de63f4:	f005 fd16 	bl	c0debe24 <pic>
c0de63f8:	4601      	mov	r1, r0
c0de63fa:	2004      	movs	r0, #4
c0de63fc:	9e00      	ldr	r6, [sp, #0]
c0de63fe:	f887 0020 	strb.w	r0, [r7, #32]
c0de6402:	4638      	mov	r0, r7
c0de6404:	0e0a      	lsrs	r2, r1, #24
c0de6406:	f001 f927 	bl	c0de7658 <OUTLINED_FUNCTION_11>
c0de640a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de640e:	7b70      	ldrb	r0, [r6, #13]
c0de6410:	2800      	cmp	r0, #0
c0de6412:	f04f 000c 	mov.w	r0, #12
c0de6416:	bf08      	it	eq
c0de6418:	200d      	moveq	r0, #13
c0de641a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de641e:	f89a 200c 	ldrb.w	r2, [sl, #12]
c0de6422:	0752      	lsls	r2, r2, #29
c0de6424:	d418      	bmi.n	c0de6458 <nbgl_layoutAddTagValueList+0x150>
c0de6426:	f8da 2008 	ldr.w	r2, [sl, #8]
c0de642a:	2a00      	cmp	r2, #0
c0de642c:	f000 810c 	beq.w	c0de6648 <nbgl_layoutAddTagValueList+0x340>
c0de6430:	4610      	mov	r0, r2
c0de6432:	f005 fcf7 	bl	c0debe24 <pic>
c0de6436:	4639      	mov	r1, r7
c0de6438:	4604      	mov	r4, r0
c0de643a:	f811 2f26 	ldrb.w	r2, [r1, #38]!
c0de643e:	784b      	ldrb	r3, [r1, #1]
c0de6440:	f811 0c04 	ldrb.w	r0, [r1, #-4]
c0de6444:	f891 c002 	ldrb.w	ip, [r1, #2]
c0de6448:	78c9      	ldrb	r1, [r1, #3]
c0de644a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de644e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
c0de6452:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6456:	e001      	b.n	c0de645c <nbgl_layoutAddTagValueList+0x154>
c0de6458:	4c82      	ldr	r4, [pc, #520]	@ (c0de6664 <nbgl_layoutAddTagValueList+0x35c>)
c0de645a:	447c      	add	r4, pc
c0de645c:	7822      	ldrb	r2, [r4, #0]
c0de645e:	7863      	ldrb	r3, [r4, #1]
c0de6460:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6464:	f5c2 72ca 	rsb	r2, r2, #404	@ 0x194
c0de6468:	0a13      	lsrs	r3, r2, #8
c0de646a:	713a      	strb	r2, [r7, #4]
c0de646c:	b292      	uxth	r2, r2
c0de646e:	717b      	strb	r3, [r7, #5]
c0de6470:	7bb3      	ldrb	r3, [r6, #14]
c0de6472:	f005 fb08 	bl	c0deba86 <nbgl_getTextNbLinesInWidth>
c0de6476:	7af3      	ldrb	r3, [r6, #11]
c0de6478:	f8cd 800c 	str.w	r8, [sp, #12]
c0de647c:	b16b      	cbz	r3, c0de649a <nbgl_layoutAddTagValueList+0x192>
c0de647e:	4298      	cmp	r0, r3
c0de6480:	d90b      	bls.n	c0de649a <nbgl_layoutAddTagValueList+0x192>
c0de6482:	f897 2024 	ldrb.w	r2, [r7, #36]	@ 0x24
c0de6486:	7ab1      	ldrb	r1, [r6, #10]
c0de6488:	4618      	mov	r0, r3
c0de648a:	f887 3025 	strb.w	r3, [r7, #37]	@ 0x25
c0de648e:	f002 02fd 	and.w	r2, r2, #253	@ 0xfd
c0de6492:	ea42 0141 	orr.w	r1, r2, r1, lsl #1
c0de6496:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de649a:	9006      	str	r0, [sp, #24]
c0de649c:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de64a0:	f005 fadd 	bl	c0deba5e <nbgl_getFont>
c0de64a4:	f897 2024 	ldrb.w	r2, [r7, #36]	@ 0x24
c0de64a8:	7bb1      	ldrb	r1, [r6, #14]
c0de64aa:	f890 c007 	ldrb.w	ip, [r0, #7]
c0de64ae:	0a28      	lsrs	r0, r5, #8
c0de64b0:	46b2      	mov	sl, r6
c0de64b2:	f8dd 8010 	ldr.w	r8, [sp, #16]
c0de64b6:	74f8      	strb	r0, [r7, #19]
c0de64b8:	4638      	mov	r0, r7
c0de64ba:	f002 02fe 	and.w	r2, r2, #254	@ 0xfe
c0de64be:	f800 5f12 	strb.w	r5, [r0, #18]!
c0de64c2:	4311      	orrs	r1, r2
c0de64c4:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de64c8:	0e29      	lsrs	r1, r5, #24
c0de64ca:	70c1      	strb	r1, [r0, #3]
c0de64cc:	0c29      	lsrs	r1, r5, #16
c0de64ce:	7081      	strb	r1, [r0, #2]
c0de64d0:	4658      	mov	r0, fp
c0de64d2:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de64d6:	7843      	ldrb	r3, [r0, #1]
c0de64d8:	7885      	ldrb	r5, [r0, #2]
c0de64da:	78c6      	ldrb	r6, [r0, #3]
c0de64dc:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de64e0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de64e4:	ea45 2306 	orr.w	r3, r5, r6, lsl #8
c0de64e8:	2600      	movs	r6, #0
c0de64ea:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de64ee:	9b06      	ldr	r3, [sp, #24]
c0de64f0:	76be      	strb	r6, [r7, #26]
c0de64f2:	f887 6021 	strb.w	r6, [r7, #33]	@ 0x21
c0de64f6:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de64fa:	2104      	movs	r1, #4
c0de64fc:	7679      	strb	r1, [r7, #25]
c0de64fe:	2107      	movs	r1, #7
c0de6500:	75b9      	strb	r1, [r7, #22]
c0de6502:	fb03 f10c 	mul.w	r1, r3, ip
c0de6506:	71b9      	strb	r1, [r7, #6]
c0de6508:	0a09      	lsrs	r1, r1, #8
c0de650a:	71f9      	strb	r1, [r7, #7]
c0de650c:	1c51      	adds	r1, r2, #1
c0de650e:	2201      	movs	r2, #1
c0de6510:	2c00      	cmp	r4, #0
c0de6512:	f800 1c02 	strb.w	r1, [r0, #-2]
c0de6516:	d048      	beq.n	c0de65aa <nbgl_layoutAddTagValueList+0x2a2>
c0de6518:	9e07      	ldr	r6, [sp, #28]
c0de651a:	f8cd c008 	str.w	ip, [sp, #8]
c0de651e:	f896 00ad 	ldrb.w	r0, [r6, #173]	@ 0xad
c0de6522:	f001 f93d 	bl	c0de77a0 <OUTLINED_FUNCTION_26>
c0de6526:	f89a 200c 	ldrb.w	r2, [sl, #12]
c0de652a:	4605      	mov	r5, r0
c0de652c:	4630      	mov	r0, r6
c0de652e:	4659      	mov	r1, fp
c0de6530:	2309      	movs	r3, #9
c0de6532:	f7fd fc55 	bl	c0de3de0 <layoutAddCallbackObj>
c0de6536:	0a21      	lsrs	r1, r4, #8
c0de6538:	0e22      	lsrs	r2, r4, #24
c0de653a:	f8dd c008 	ldr.w	ip, [sp, #8]
c0de653e:	f885 1022 	strb.w	r1, [r5, #34]	@ 0x22
c0de6542:	0a39      	lsrs	r1, r7, #8
c0de6544:	74e9      	strb	r1, [r5, #19]
c0de6546:	4629      	mov	r1, r5
c0de6548:	f801 4f21 	strb.w	r4, [r1, #33]!
c0de654c:	70ca      	strb	r2, [r1, #3]
c0de654e:	0c22      	lsrs	r2, r4, #16
c0de6550:	708a      	strb	r2, [r1, #2]
c0de6552:	4629      	mov	r1, r5
c0de6554:	0e3a      	lsrs	r2, r7, #24
c0de6556:	f801 7f12 	strb.w	r7, [r1, #18]!
c0de655a:	70ca      	strb	r2, [r1, #3]
c0de655c:	0c3a      	lsrs	r2, r7, #16
c0de655e:	708a      	strb	r2, [r1, #2]
c0de6560:	4659      	mov	r1, fp
c0de6562:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de6566:	784c      	ldrb	r4, [r1, #1]
c0de6568:	788e      	ldrb	r6, [r1, #2]
c0de656a:	78cf      	ldrb	r7, [r1, #3]
c0de656c:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de6570:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de6574:	ea46 2407 	orr.w	r4, r6, r7, lsl #8
c0de6578:	2600      	movs	r6, #0
c0de657a:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de657e:	762e      	strb	r6, [r5, #24]
c0de6580:	77ee      	strb	r6, [r5, #31]
c0de6582:	f842 5023 	str.w	r5, [r2, r3, lsl #2]
c0de6586:	220c      	movs	r2, #12
c0de6588:	75ea      	strb	r2, [r5, #23]
c0de658a:	f880 8005 	strb.w	r8, [r0, #5]
c0de658e:	f108 000f 	add.w	r0, r8, #15
c0de6592:	75aa      	strb	r2, [r5, #22]
c0de6594:	2201      	movs	r2, #1
c0de6596:	f801 6c05 	strb.w	r6, [r1, #-5]
c0de659a:	f801 0c04 	strb.w	r0, [r1, #-4]
c0de659e:	1c58      	adds	r0, r3, #1
c0de65a0:	9b06      	ldr	r3, [sp, #24]
c0de65a2:	f801 2c06 	strb.w	r2, [r1, #-6]
c0de65a6:	f801 0c02 	strb.w	r0, [r1, #-2]
c0de65aa:	9803      	ldr	r0, [sp, #12]
c0de65ac:	f88b 2005 	strb.w	r2, [fp, #5]
c0de65b0:	22a0      	movs	r2, #160	@ 0xa0
c0de65b2:	4647      	mov	r7, r8
c0de65b4:	f88b 6018 	strb.w	r6, [fp, #24]
c0de65b8:	f88b 601f 	strb.w	r6, [fp, #31]
c0de65bc:	f88b 2004 	strb.w	r2, [fp, #4]
c0de65c0:	2220      	movs	r2, #32
c0de65c2:	fb03 000c 	mla	r0, r3, ip, r0
c0de65c6:	f04f 0c00 	mov.w	ip, #0
c0de65ca:	f88b 2017 	strb.w	r2, [fp, #23]
c0de65ce:	3004      	adds	r0, #4
c0de65d0:	f88b 0006 	strb.w	r0, [fp, #6]
c0de65d4:	0a00      	lsrs	r0, r0, #8
c0de65d6:	f1b8 0f00 	cmp.w	r8, #0
c0de65da:	f88b 0007 	strb.w	r0, [fp, #7]
c0de65de:	d002      	beq.n	c0de65e6 <nbgl_layoutAddTagValueList+0x2de>
c0de65e0:	2018      	movs	r0, #24
c0de65e2:	46d0      	mov	r8, sl
c0de65e4:	e01b      	b.n	c0de661e <nbgl_layoutAddTagValueList+0x316>
c0de65e6:	9807      	ldr	r0, [sp, #28]
c0de65e8:	46d0      	mov	r8, sl
c0de65ea:	68c0      	ldr	r0, [r0, #12]
c0de65ec:	b1b0      	cbz	r0, c0de661c <nbgl_layoutAddTagValueList+0x314>
c0de65ee:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de65f2:	b199      	cbz	r1, c0de661c <nbgl_layoutAddTagValueList+0x314>
c0de65f4:	f810 2f22 	ldrb.w	r2, [r0, #34]!
c0de65f8:	7843      	ldrb	r3, [r0, #1]
c0de65fa:	7884      	ldrb	r4, [r0, #2]
c0de65fc:	78c0      	ldrb	r0, [r0, #3]
c0de65fe:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6602:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de6606:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de660a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de660e:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de6612:	7ec0      	ldrb	r0, [r0, #27]
c0de6614:	2803      	cmp	r0, #3
c0de6616:	d101      	bne.n	c0de661c <nbgl_layoutAddTagValueList+0x314>
c0de6618:	2018      	movs	r0, #24
c0de661a:	e000      	b.n	c0de661e <nbgl_layoutAddTagValueList+0x316>
c0de661c:	2000      	movs	r0, #0
c0de661e:	9e07      	ldr	r6, [sp, #28]
c0de6620:	f88b c01a 	strb.w	ip, [fp, #26]
c0de6624:	f88b c016 	strb.w	ip, [fp, #22]
c0de6628:	3701      	adds	r7, #1
c0de662a:	f8d6 10a0 	ldr.w	r1, [r6, #160]	@ 0xa0
c0de662e:	f000 ff9f 	bl	c0de7570 <OUTLINED_FUNCTION_4>
c0de6632:	f841 b023 	str.w	fp, [r1, r3, lsl #2]
c0de6636:	f88b 0019 	strb.w	r0, [fp, #25]
c0de663a:	f8d6 00a0 	ldr.w	r0, [r6, #160]	@ 0xa0
c0de663e:	f000 ff65 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de6642:	9905      	ldr	r1, [sp, #20]
c0de6644:	3110      	adds	r1, #16
c0de6646:	e66e      	b.n	c0de6326 <nbgl_layoutAddTagValueList+0x1e>
c0de6648:	2400      	movs	r4, #0
c0de664a:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de664e:	e70b      	b.n	c0de6468 <nbgl_layoutAddTagValueList+0x160>
c0de6650:	2000      	movs	r0, #0
c0de6652:	e001      	b.n	c0de6658 <nbgl_layoutAddTagValueList+0x350>
c0de6654:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de6658:	b008      	add	sp, #32
c0de665a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de665e:	bf00      	nop
c0de6660:	00005725 	.word	0x00005725
c0de6664:	00006f7c 	.word	0x00006f7c

c0de6668 <nbgl_layoutAddSeparationLine>:
c0de6668:	b570      	push	{r4, r5, r6, lr}
c0de666a:	f001 f9ca 	bl	c0de7a02 <OUTLINED_FUNCTION_64>
c0de666e:	08c0      	lsrs	r0, r0, #3
c0de6670:	f7ff fa44 	bl	c0de5afc <createHorizontalLine>
c0de6674:	f8d4 10a0 	ldr.w	r1, [r4, #160]	@ 0xa0
c0de6678:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de667c:	784d      	ldrb	r5, [r1, #1]
c0de667e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de6682:	788e      	ldrb	r6, [r1, #2]
c0de6684:	78c9      	ldrb	r1, [r1, #3]
c0de6686:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
c0de668a:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de668e:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6692:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de6696:	21ff      	movs	r1, #255	@ 0xff
c0de6698:	7641      	strb	r1, [r0, #25]
c0de669a:	7681      	strb	r1, [r0, #26]
c0de669c:	f001 f94d 	bl	c0de793a <OUTLINED_FUNCTION_48>
c0de66a0:	bd70      	pop	{r4, r5, r6, pc}

c0de66a2 <nbgl_layoutAddButton>:
c0de66a2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de66a6:	b086      	sub	sp, #24
c0de66a8:	b318      	cbz	r0, c0de66f2 <nbgl_layoutAddButton+0x50>
c0de66aa:	4680      	mov	r8, r0
c0de66ac:	7ac8      	ldrb	r0, [r1, #11]
c0de66ae:	460d      	mov	r5, r1
c0de66b0:	b108      	cbz	r0, c0de66b6 <nbgl_layoutAddButton+0x14>
c0de66b2:	7aa8      	ldrb	r0, [r5, #10]
c0de66b4:	b300      	cbz	r0, c0de66f8 <nbgl_layoutAddButton+0x56>
c0de66b6:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de66ba:	f000 ffeb 	bl	c0de7694 <OUTLINED_FUNCTION_13>
c0de66be:	4606      	mov	r6, r0
c0de66c0:	7a2a      	ldrb	r2, [r5, #8]
c0de66c2:	7b2b      	ldrb	r3, [r5, #12]
c0de66c4:	4640      	mov	r0, r8
c0de66c6:	4631      	mov	r1, r6
c0de66c8:	f7fd fb8a 	bl	c0de3de0 <layoutAddCallbackObj>
c0de66cc:	b188      	cbz	r0, c0de66f2 <nbgl_layoutAddButton+0x50>
c0de66ce:	210c      	movs	r1, #12
c0de66d0:	2000      	movs	r0, #0
c0de66d2:	7671      	strb	r1, [r6, #25]
c0de66d4:	2120      	movs	r1, #32
c0de66d6:	76b0      	strb	r0, [r6, #26]
c0de66d8:	7630      	strb	r0, [r6, #24]
c0de66da:	75b0      	strb	r0, [r6, #22]
c0de66dc:	75f1      	strb	r1, [r6, #23]
c0de66de:	7a69      	ldrb	r1, [r5, #9]
c0de66e0:	b1e9      	cbz	r1, c0de671e <nbgl_layoutAddButton+0x7c>
c0de66e2:	f886 0021 	strb.w	r0, [r6, #33]	@ 0x21
c0de66e6:	2003      	movs	r0, #3
c0de66e8:	77f0      	strb	r0, [r6, #31]
c0de66ea:	2902      	cmp	r1, #2
c0de66ec:	bf18      	it	ne
c0de66ee:	2002      	movne	r0, #2
c0de66f0:	e019      	b.n	c0de6726 <nbgl_layoutAddButton+0x84>
c0de66f2:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de66f6:	e09f      	b.n	c0de6838 <nbgl_layoutAddButton+0x196>
c0de66f8:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de66fc:	2800      	cmp	r0, #0
c0de66fe:	f000 809e 	beq.w	c0de683e <nbgl_layoutAddButton+0x19c>
c0de6702:	2001      	movs	r0, #1
c0de6704:	f88d 0000 	strb.w	r0, [sp]
c0de6708:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de670c:	9001      	str	r0, [sp, #4]
c0de670e:	7b28      	ldrb	r0, [r5, #12]
c0de6710:	9102      	str	r1, [sp, #8]
c0de6712:	4669      	mov	r1, sp
c0de6714:	f001 f987 	bl	c0de7a26 <OUTLINED_FUNCTION_67>
c0de6718:	f7fd fdf2 	bl	c0de4300 <nbgl_layoutAddUpFooter>
c0de671c:	e08c      	b.n	c0de6838 <nbgl_layoutAddButton+0x196>
c0de671e:	2103      	movs	r1, #3
c0de6720:	77f0      	strb	r0, [r6, #31]
c0de6722:	f886 1021 	strb.w	r1, [r6, #33]	@ 0x21
c0de6726:	f886 0020 	strb.w	r0, [r6, #32]
c0de672a:	6828      	ldr	r0, [r5, #0]
c0de672c:	f005 fb7a 	bl	c0debe24 <pic>
c0de6730:	210c      	movs	r1, #12
c0de6732:	0e02      	lsrs	r2, r0, #24
c0de6734:	f886 1023 	strb.w	r1, [r6, #35]	@ 0x23
c0de6738:	4631      	mov	r1, r6
c0de673a:	f001 f865 	bl	c0de7808 <OUTLINED_FUNCTION_31>
c0de673e:	f001 f80a 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de6742:	4631      	mov	r1, r6
c0de6744:	0e02      	lsrs	r2, r0, #24
c0de6746:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de674a:	f001 f91a 	bl	c0de7982 <OUTLINED_FUNCTION_53>
c0de674e:	7aa8      	ldrb	r0, [r5, #10]
c0de6750:	b308      	cbz	r0, c0de6796 <nbgl_layoutAddButton+0xf4>
c0de6752:	4632      	mov	r2, r6
c0de6754:	f896 1026 	ldrb.w	r1, [r6, #38]	@ 0x26
c0de6758:	f896 0023 	ldrb.w	r0, [r6, #35]	@ 0x23
c0de675c:	f812 3f25 	ldrb.w	r3, [r2, #37]!
c0de6760:	f001 f95a 	bl	c0de7a18 <OUTLINED_FUNCTION_66>
c0de6764:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de6768:	f005 f992 	bl	c0deba90 <nbgl_getTextWidth>
c0de676c:	4631      	mov	r1, r6
c0de676e:	3040      	adds	r0, #64	@ 0x40
c0de6770:	f811 2f2e 	ldrb.w	r2, [r1, #46]!
c0de6774:	784b      	ldrb	r3, [r1, #1]
c0de6776:	788f      	ldrb	r7, [r1, #2]
c0de6778:	78c9      	ldrb	r1, [r1, #3]
c0de677a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de677e:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de6782:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de6786:	2100      	movs	r1, #0
c0de6788:	b18a      	cbz	r2, c0de67ae <nbgl_layoutAddButton+0x10c>
c0de678a:	7813      	ldrb	r3, [r2, #0]
c0de678c:	7852      	ldrb	r2, [r2, #1]
c0de678e:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de6792:	320c      	adds	r2, #12
c0de6794:	e00c      	b.n	c0de67b0 <nbgl_layoutAddButton+0x10e>
c0de6796:	2000      	movs	r0, #0
c0de6798:	71f0      	strb	r0, [r6, #7]
c0de679a:	2058      	movs	r0, #88	@ 0x58
c0de679c:	71b0      	strb	r0, [r6, #6]
c0de679e:	2001      	movs	r0, #1
c0de67a0:	7170      	strb	r0, [r6, #5]
c0de67a2:	20a0      	movs	r0, #160	@ 0xa0
c0de67a4:	7130      	strb	r0, [r6, #4]
c0de67a6:	2004      	movs	r0, #4
c0de67a8:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de67ac:	e01c      	b.n	c0de67e8 <nbgl_layoutAddButton+0x146>
c0de67ae:	2200      	movs	r2, #0
c0de67b0:	4410      	add	r0, r2
c0de67b2:	71f1      	strb	r1, [r6, #7]
c0de67b4:	2140      	movs	r1, #64	@ 0x40
c0de67b6:	71b1      	strb	r1, [r6, #6]
c0de67b8:	2102      	movs	r1, #2
c0de67ba:	0a02      	lsrs	r2, r0, #8
c0de67bc:	7130      	strb	r0, [r6, #4]
c0de67be:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de67c2:	7172      	strb	r2, [r6, #5]
c0de67c4:	7aea      	ldrb	r2, [r5, #11]
c0de67c6:	2a01      	cmp	r2, #1
c0de67c8:	d00e      	beq.n	c0de67e8 <nbgl_layoutAddButton+0x146>
c0de67ca:	b280      	uxth	r0, r0
c0de67cc:	f5c0 70d0 	rsb	r0, r0, #416	@ 0x1a0
c0de67d0:	fb90 f0f1 	sdiv	r0, r0, r1
c0de67d4:	4631      	mov	r1, r6
c0de67d6:	f811 2f17 	ldrb.w	r2, [r1, #23]!
c0de67da:	784b      	ldrb	r3, [r1, #1]
c0de67dc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de67e0:	4410      	add	r0, r2
c0de67e2:	7008      	strb	r0, [r1, #0]
c0de67e4:	0a00      	lsrs	r0, r0, #8
c0de67e6:	7048      	strb	r0, [r1, #1]
c0de67e8:	2000      	movs	r0, #0
c0de67ea:	4631      	mov	r1, r6
c0de67ec:	f801 0f12 	strb.w	r0, [r1, #18]!
c0de67f0:	74f0      	strb	r0, [r6, #19]
c0de67f2:	70c8      	strb	r0, [r1, #3]
c0de67f4:	7088      	strb	r0, [r1, #2]
c0de67f6:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de67fa:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de67fe:	784f      	ldrb	r7, [r1, #1]
c0de6800:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de6804:	788c      	ldrb	r4, [r1, #2]
c0de6806:	78c9      	ldrb	r1, [r1, #3]
c0de6808:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de680c:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
c0de6810:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6814:	2208      	movs	r2, #8
c0de6816:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
c0de681a:	2101      	movs	r1, #1
c0de681c:	7770      	strb	r0, [r6, #29]
c0de681e:	7731      	strb	r1, [r6, #28]
c0de6820:	7aa9      	ldrb	r1, [r5, #10]
c0de6822:	2900      	cmp	r1, #0
c0de6824:	bf08      	it	eq
c0de6826:	2207      	moveq	r2, #7
c0de6828:	77b2      	strb	r2, [r6, #30]
c0de682a:	f8d8 10a0 	ldr.w	r1, [r8, #160]	@ 0xa0
c0de682e:	f891 2020 	ldrb.w	r2, [r1, #32]
c0de6832:	3201      	adds	r2, #1
c0de6834:	f881 2020 	strb.w	r2, [r1, #32]
c0de6838:	b006      	add	sp, #24
c0de683a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de683e:	2005      	movs	r0, #5
c0de6840:	f8ad 0000 	strh.w	r0, [sp]
c0de6844:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de6848:	9001      	str	r0, [sp, #4]
c0de684a:	7b28      	ldrb	r0, [r5, #12]
c0de684c:	9102      	str	r1, [sp, #8]
c0de684e:	4669      	mov	r1, sp
c0de6850:	f001 f8e9 	bl	c0de7a26 <OUTLINED_FUNCTION_67>
c0de6854:	f7fe f8e8 	bl	c0de4a28 <nbgl_layoutAddExtendedFooter>
c0de6858:	e7ee      	b.n	c0de6838 <nbgl_layoutAddButton+0x196>

c0de685a <nbgl_layoutAddLongPressButton>:
c0de685a:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de685c:	9102      	str	r1, [sp, #8]
c0de685e:	2100      	movs	r1, #0
c0de6860:	f88d 300d 	strb.w	r3, [sp, #13]
c0de6864:	f88d 200c 	strb.w	r2, [sp, #12]
c0de6868:	f88d 1004 	strb.w	r1, [sp, #4]
c0de686c:	b118      	cbz	r0, c0de6876 <nbgl_layoutAddLongPressButton+0x1c>
c0de686e:	a901      	add	r1, sp, #4
c0de6870:	f7fd fd46 	bl	c0de4300 <nbgl_layoutAddUpFooter>
c0de6874:	e001      	b.n	c0de687a <nbgl_layoutAddLongPressButton+0x20>
c0de6876:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de687a:	b006      	add	sp, #24
c0de687c:	bd80      	pop	{r7, pc}

c0de687e <nbgl_layoutAddFooter>:
c0de687e:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de6880:	9101      	str	r1, [sp, #4]
c0de6882:	f240 1101 	movw	r1, #257	@ 0x101
c0de6886:	f88d 2009 	strb.w	r2, [sp, #9]
c0de688a:	2200      	movs	r2, #0
c0de688c:	f88d 300a 	strb.w	r3, [sp, #10]
c0de6890:	f8ad 1000 	strh.w	r1, [sp]
c0de6894:	4669      	mov	r1, sp
c0de6896:	f88d 2008 	strb.w	r2, [sp, #8]
c0de689a:	f7fe f8c5 	bl	c0de4a28 <nbgl_layoutAddExtendedFooter>
c0de689e:	b006      	add	sp, #24
c0de68a0:	bd80      	pop	{r7, pc}

c0de68a2 <nbgl_layoutAddSplitFooter>:
c0de68a2:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de68a4:	9101      	str	r1, [sp, #4]
c0de68a6:	f44f 7181 	mov.w	r1, #258	@ 0x102
c0de68aa:	f88d 200c 	strb.w	r2, [sp, #12]
c0de68ae:	9302      	str	r3, [sp, #8]
c0de68b0:	f8ad 1000 	strh.w	r1, [sp]
c0de68b4:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de68b6:	f88d 100e 	strb.w	r1, [sp, #14]
c0de68ba:	9908      	ldr	r1, [sp, #32]
c0de68bc:	f88d 100d 	strb.w	r1, [sp, #13]
c0de68c0:	4669      	mov	r1, sp
c0de68c2:	f7fe f8b1 	bl	c0de4a28 <nbgl_layoutAddExtendedFooter>
c0de68c6:	b006      	add	sp, #24
c0de68c8:	bd80      	pop	{r7, pc}
	...

c0de68cc <nbgl_layoutAddHeader>:
c0de68cc:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de68d0:	2800      	cmp	r0, #0
c0de68d2:	f000 822c 	beq.w	c0de6d2e <nbgl_layoutAddHeader+0x462>
c0de68d6:	460d      	mov	r5, r1
c0de68d8:	b119      	cbz	r1, c0de68e2 <nbgl_layoutAddHeader+0x16>
c0de68da:	4604      	mov	r4, r0
c0de68dc:	7828      	ldrb	r0, [r5, #0]
c0de68de:	2806      	cmp	r0, #6
c0de68e0:	d903      	bls.n	c0de68ea <nbgl_layoutAddHeader+0x1e>
c0de68e2:	f06f 0001 	mvn.w	r0, #1
c0de68e6:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de68ea:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de68ee:	2601      	movs	r6, #1
c0de68f0:	f000 ff14 	bl	c0de771c <OUTLINED_FUNCTION_19>
c0de68f4:	f001 f839 	bl	c0de796a <OUTLINED_FUNCTION_51>
c0de68f8:	60e0      	str	r0, [r4, #12]
c0de68fa:	f001 f857 	bl	c0de79ac <OUTLINED_FUNCTION_57>
c0de68fe:	68e1      	ldr	r1, [r4, #12]
c0de6900:	0a02      	lsrs	r2, r0, #8
c0de6902:	0e03      	lsrs	r3, r0, #24
c0de6904:	f881 2023 	strb.w	r2, [r1, #35]	@ 0x23
c0de6908:	2202      	movs	r2, #2
c0de690a:	f001 f87e 	bl	c0de7a0a <OUTLINED_FUNCTION_65>
c0de690e:	70d3      	strb	r3, [r2, #3]
c0de6910:	7828      	ldrb	r0, [r5, #0]
c0de6912:	1e42      	subs	r2, r0, #1
c0de6914:	2a02      	cmp	r2, #2
c0de6916:	d311      	bcc.n	c0de693c <nbgl_layoutAddHeader+0x70>
c0de6918:	2806      	cmp	r0, #6
c0de691a:	f000 80b9 	beq.w	c0de6a90 <nbgl_layoutAddHeader+0x1c4>
c0de691e:	2803      	cmp	r0, #3
c0de6920:	f000 8210 	beq.w	c0de6d44 <nbgl_layoutAddHeader+0x478>
c0de6924:	2804      	cmp	r0, #4
c0de6926:	f000 80e4 	beq.w	c0de6af2 <nbgl_layoutAddHeader+0x226>
c0de692a:	2805      	cmp	r0, #5
c0de692c:	d006      	beq.n	c0de693c <nbgl_layoutAddHeader+0x70>
c0de692e:	2800      	cmp	r0, #0
c0de6930:	d1d7      	bne.n	c0de68e2 <nbgl_layoutAddHeader+0x16>
c0de6932:	88a8      	ldrh	r0, [r5, #4]
c0de6934:	7188      	strb	r0, [r1, #6]
c0de6936:	0a00      	lsrs	r0, r0, #8
c0de6938:	71c8      	strb	r0, [r1, #7]
c0de693a:	e203      	b.n	c0de6d44 <nbgl_layoutAddHeader+0x478>
c0de693c:	f000 fff0 	bl	c0de7920 <OUTLINED_FUNCTION_46>
c0de6940:	9001      	str	r0, [sp, #4]
c0de6942:	7828      	ldrb	r0, [r5, #0]
c0de6944:	210c      	movs	r1, #12
c0de6946:	2805      	cmp	r0, #5
c0de6948:	bf08      	it	eq
c0de694a:	2111      	moveq	r1, #17
c0de694c:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6950:	f815 a001 	ldrb.w	sl, [r5, r1]
c0de6954:	f000 fe9e 	bl	c0de7694 <OUTLINED_FUNCTION_13>
c0de6958:	4683      	mov	fp, r0
c0de695a:	f04f 0803 	mov.w	r8, #3
c0de695e:	f1ba 0fff 	cmp.w	sl, #255	@ 0xff
c0de6962:	d00f      	beq.n	c0de6984 <nbgl_layoutAddHeader+0xb8>
c0de6964:	7828      	ldrb	r0, [r5, #0]
c0de6966:	210d      	movs	r1, #13
c0de6968:	4652      	mov	r2, sl
c0de696a:	2805      	cmp	r0, #5
c0de696c:	bf08      	it	eq
c0de696e:	2113      	moveq	r1, #19
c0de6970:	5c6b      	ldrb	r3, [r5, r1]
c0de6972:	4620      	mov	r0, r4
c0de6974:	4659      	mov	r1, fp
c0de6976:	f7fd fa33 	bl	c0de3de0 <layoutAddCallbackObj>
c0de697a:	2800      	cmp	r0, #0
c0de697c:	f000 81d7 	beq.w	c0de6d2e <nbgl_layoutAddHeader+0x462>
c0de6980:	2000      	movs	r0, #0
c0de6982:	e000      	b.n	c0de6986 <nbgl_layoutAddHeader+0xba>
c0de6984:	2003      	movs	r0, #3
c0de6986:	f88b 0021 	strb.w	r0, [fp, #33]	@ 0x21
c0de698a:	2004      	movs	r0, #4
c0de698c:	2600      	movs	r6, #0
c0de698e:	2160      	movs	r1, #96	@ 0x60
c0de6990:	f88b 801f 	strb.w	r8, [fp, #31]
c0de6994:	f88b 8020 	strb.w	r8, [fp, #32]
c0de6998:	f88b 0016 	strb.w	r0, [fp, #22]
c0de699c:	4658      	mov	r0, fp
c0de699e:	f88b 1006 	strb.w	r1, [fp, #6]
c0de69a2:	2168      	movs	r1, #104	@ 0x68
c0de69a4:	f88b 6026 	strb.w	r6, [fp, #38]	@ 0x26
c0de69a8:	f88b 6007 	strb.w	r6, [fp, #7]
c0de69ac:	f88b 6005 	strb.w	r6, [fp, #5]
c0de69b0:	f800 6f25 	strb.w	r6, [r0, #37]!
c0de69b4:	f88b 1004 	strb.w	r1, [fp, #4]
c0de69b8:	70c6      	strb	r6, [r0, #3]
c0de69ba:	7086      	strb	r6, [r0, #2]
c0de69bc:	48de      	ldr	r0, [pc, #888]	@ (c0de6d38 <nbgl_layoutAddHeader+0x46c>)
c0de69be:	4478      	add	r0, pc
c0de69c0:	f005 fa30 	bl	c0debe24 <pic>
c0de69c4:	4659      	mov	r1, fp
c0de69c6:	0e02      	lsrs	r2, r0, #24
c0de69c8:	f88b 601d 	strb.w	r6, [fp, #29]
c0de69cc:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de69d0:	f000 fe93 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de69d4:	f88b 002f 	strb.w	r0, [fp, #47]	@ 0x2f
c0de69d8:	68e0      	ldr	r0, [r4, #12]
c0de69da:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de69de:	7843      	ldrb	r3, [r0, #1]
c0de69e0:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de69e4:	7887      	ldrb	r7, [r0, #2]
c0de69e6:	78c0      	ldrb	r0, [r0, #3]
c0de69e8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de69ec:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de69f0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de69f4:	f840 b022 	str.w	fp, [r0, r2, lsl #2]
c0de69f8:	f1ba 00ff 	subs.w	r0, sl, #255	@ 0xff
c0de69fc:	bf18      	it	ne
c0de69fe:	2001      	movne	r0, #1
c0de6a00:	f88b 001c 	strb.w	r0, [fp, #28]
c0de6a04:	68e1      	ldr	r1, [r4, #12]
c0de6a06:	2006      	movs	r0, #6
c0de6a08:	f88b 001e 	strb.w	r0, [fp, #30]
c0de6a0c:	f000 ffa7 	bl	c0de795e <OUTLINED_FUNCTION_50>
c0de6a10:	9801      	ldr	r0, [sp, #4]
c0de6a12:	2800      	cmp	r0, #0
c0de6a14:	f000 8093 	beq.w	c0de6b3e <nbgl_layoutAddHeader+0x272>
c0de6a18:	7828      	ldrb	r0, [r5, #0]
c0de6a1a:	f04f 0a00 	mov.w	sl, #0
c0de6a1e:	2802      	cmp	r0, #2
c0de6a20:	d11b      	bne.n	c0de6a5a <nbgl_layoutAddHeader+0x18e>
c0de6a22:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6a26:	f000 febb 	bl	c0de77a0 <OUTLINED_FUNCTION_26>
c0de6a2a:	4607      	mov	r7, r0
c0de6a2c:	f000 fe93 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de6a30:	4639      	mov	r1, r7
c0de6a32:	0e02      	lsrs	r2, r0, #24
c0de6a34:	f887 a01f 	strb.w	sl, [r7, #31]
c0de6a38:	46ba      	mov	sl, r7
c0de6a3a:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de6a3e:	f000 fe5c 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de6a42:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de6a46:	68e0      	ldr	r0, [r4, #12]
c0de6a48:	f000 fdba 	bl	c0de75c0 <OUTLINED_FUNCTION_6>
c0de6a4c:	f840 7022 	str.w	r7, [r0, r2, lsl #2]
c0de6a50:	2005      	movs	r0, #5
c0de6a52:	75b8      	strb	r0, [r7, #22]
c0de6a54:	68e0      	ldr	r0, [r4, #12]
c0de6a56:	f000 fd59 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de6a5a:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6a5e:	f000 fd5b 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de6a62:	782b      	ldrb	r3, [r5, #0]
c0de6a64:	4680      	mov	r8, r0
c0de6a66:	2b05      	cmp	r3, #5
c0de6a68:	d16e      	bne.n	c0de6b48 <nbgl_layoutAddHeader+0x27c>
c0de6a6a:	7c2a      	ldrb	r2, [r5, #16]
c0de6a6c:	2aff      	cmp	r2, #255	@ 0xff
c0de6a6e:	d06a      	beq.n	c0de6b46 <nbgl_layoutAddHeader+0x27a>
c0de6a70:	7ceb      	ldrb	r3, [r5, #19]
c0de6a72:	4620      	mov	r0, r4
c0de6a74:	4641      	mov	r1, r8
c0de6a76:	f7fd f9b3 	bl	c0de3de0 <layoutAddCallbackObj>
c0de6a7a:	2800      	cmp	r0, #0
c0de6a7c:	f000 8157 	beq.w	c0de6d2e <nbgl_layoutAddHeader+0x462>
c0de6a80:	2000      	movs	r0, #0
c0de6a82:	f888 001d 	strb.w	r0, [r8, #29]
c0de6a86:	2001      	movs	r0, #1
c0de6a88:	f888 001c 	strb.w	r0, [r8, #28]
c0de6a8c:	782b      	ldrb	r3, [r5, #0]
c0de6a8e:	e05b      	b.n	c0de6b48 <nbgl_layoutAddHeader+0x27c>
c0de6a90:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6a94:	f000 fd40 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de6a98:	4606      	mov	r6, r0
c0de6a9a:	7a2a      	ldrb	r2, [r5, #8]
c0de6a9c:	7a6b      	ldrb	r3, [r5, #9]
c0de6a9e:	f000 fe13 	bl	c0de76c8 <OUTLINED_FUNCTION_15>
c0de6aa2:	2800      	cmp	r0, #0
c0de6aa4:	f000 8143 	beq.w	c0de6d2e <nbgl_layoutAddHeader+0x462>
c0de6aa8:	2020      	movs	r0, #32
c0de6aaa:	4637      	mov	r7, r6
c0de6aac:	f04f 0a00 	mov.w	sl, #0
c0de6ab0:	f04f 0806 	mov.w	r8, #6
c0de6ab4:	f04f 0b01 	mov.w	fp, #1
c0de6ab8:	75f0      	strb	r0, [r6, #23]
c0de6aba:	20a0      	movs	r0, #160	@ 0xa0
c0de6abc:	f886 a01f 	strb.w	sl, [r6, #31]
c0de6ac0:	f000 ffcb 	bl	c0de7a5a <OUTLINED_FUNCTION_71>
c0de6ac4:	f886 b005 	strb.w	fp, [r6, #5]
c0de6ac8:	7130      	strb	r0, [r6, #4]
c0de6aca:	2060      	movs	r0, #96	@ 0x60
c0de6acc:	f807 0f06 	strb.w	r0, [r7, #6]!
c0de6ad0:	f887 a001 	strb.w	sl, [r7, #1]
c0de6ad4:	f000 fe3f 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de6ad8:	f000 ff59 	bl	c0de798e <OUTLINED_FUNCTION_54>
c0de6adc:	f886 8020 	strb.w	r8, [r6, #32]
c0de6ae0:	f000 fd54 	bl	c0de758c <OUTLINED_FUNCTION_5>
c0de6ae4:	f886 b01c 	strb.w	fp, [r6, #28]
c0de6ae8:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de6aec:	2005      	movs	r0, #5
c0de6aee:	77b0      	strb	r0, [r6, #30]
c0de6af0:	e01d      	b.n	c0de6b2e <nbgl_layoutAddHeader+0x262>
c0de6af2:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6af6:	f000 fd0f 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de6afa:	4606      	mov	r6, r0
c0de6afc:	2101      	movs	r1, #1
c0de6afe:	2000      	movs	r0, #0
c0de6b00:	7171      	strb	r1, [r6, #5]
c0de6b02:	21a0      	movs	r1, #160	@ 0xa0
c0de6b04:	4637      	mov	r7, r6
c0de6b06:	77f0      	strb	r0, [r6, #31]
c0de6b08:	7131      	strb	r1, [r6, #4]
c0de6b0a:	2160      	movs	r1, #96	@ 0x60
c0de6b0c:	f807 1f06 	strb.w	r1, [r7, #6]!
c0de6b10:	7078      	strb	r0, [r7, #1]
c0de6b12:	f000 fe20 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de6b16:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de6b1a:	0e02      	lsrs	r2, r0, #24
c0de6b1c:	f041 0101 	orr.w	r1, r1, #1
c0de6b20:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de6b24:	4631      	mov	r1, r6
c0de6b26:	f000 fd31 	bl	c0de758c <OUTLINED_FUNCTION_5>
c0de6b2a:	f000 ff24 	bl	c0de7976 <OUTLINED_FUNCTION_52>
c0de6b2e:	68e1      	ldr	r1, [r4, #12]
c0de6b30:	787a      	ldrb	r2, [r7, #1]
c0de6b32:	7838      	ldrb	r0, [r7, #0]
c0de6b34:	71ca      	strb	r2, [r1, #7]
c0de6b36:	7188      	strb	r0, [r1, #6]
c0de6b38:	f000 ff11 	bl	c0de795e <OUTLINED_FUNCTION_50>
c0de6b3c:	e102      	b.n	c0de6d44 <nbgl_layoutAddHeader+0x478>
c0de6b3e:	7828      	ldrb	r0, [r5, #0]
c0de6b40:	f04f 0800 	mov.w	r8, #0
c0de6b44:	e098      	b.n	c0de6c78 <nbgl_layoutAddHeader+0x3ac>
c0de6b46:	2305      	movs	r3, #5
c0de6b48:	68e2      	ldr	r2, [r4, #12]
c0de6b4a:	f04f 0e00 	mov.w	lr, #0
c0de6b4e:	f04f 0c05 	mov.w	ip, #5
c0de6b52:	f888 e01f 	strb.w	lr, [r8, #31]
c0de6b56:	f888 c016 	strb.w	ip, [r8, #22]
c0de6b5a:	7916      	ldrb	r6, [r2, #4]
c0de6b5c:	7952      	ldrb	r2, [r2, #5]
c0de6b5e:	ea46 2702 	orr.w	r7, r6, r2, lsl #8
c0de6b62:	f1a7 02d0 	sub.w	r2, r7, #208	@ 0xd0
c0de6b66:	0a16      	lsrs	r6, r2, #8
c0de6b68:	f888 2004 	strb.w	r2, [r8, #4]
c0de6b6c:	2b02      	cmp	r3, #2
c0de6b6e:	f888 6005 	strb.w	r6, [r8, #5]
c0de6b72:	d117      	bne.n	c0de6ba4 <nbgl_layoutAddHeader+0x2d8>
c0de6b74:	4652      	mov	r2, sl
c0de6b76:	f812 3f21 	ldrb.w	r3, [r2, #33]!
c0de6b7a:	7856      	ldrb	r6, [r2, #1]
c0de6b7c:	7890      	ldrb	r0, [r2, #2]
c0de6b7e:	78d2      	ldrb	r2, [r2, #3]
c0de6b80:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de6b84:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de6b88:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
c0de6b8c:	7802      	ldrb	r2, [r0, #0]
c0de6b8e:	7840      	ldrb	r0, [r0, #1]
c0de6b90:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6b94:	1a38      	subs	r0, r7, r0
c0de6b96:	f1a0 02e0 	sub.w	r2, r0, #224	@ 0xe0
c0de6b9a:	0a10      	lsrs	r0, r2, #8
c0de6b9c:	f888 2004 	strb.w	r2, [r8, #4]
c0de6ba0:	f888 0005 	strb.w	r0, [r8, #5]
c0de6ba4:	9901      	ldr	r1, [sp, #4]
c0de6ba6:	4640      	mov	r0, r8
c0de6ba8:	b292      	uxth	r2, r2
c0de6baa:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de6bae:	0e0b      	lsrs	r3, r1, #24
c0de6bb0:	70c3      	strb	r3, [r0, #3]
c0de6bb2:	0c0b      	lsrs	r3, r1, #16
c0de6bb4:	f800 ec1f 	strb.w	lr, [r0, #-31]
c0de6bb8:	f800 cc06 	strb.w	ip, [r0, #-6]
c0de6bbc:	7083      	strb	r3, [r0, #2]
c0de6bbe:	0a0b      	lsrs	r3, r1, #8
c0de6bc0:	7043      	strb	r3, [r0, #1]
c0de6bc2:	2360      	movs	r3, #96	@ 0x60
c0de6bc4:	f800 3c20 	strb.w	r3, [r0, #-32]
c0de6bc8:	230c      	movs	r3, #12
c0de6bca:	f800 3c04 	strb.w	r3, [r0, #-4]
c0de6bce:	f810 3c02 	ldrb.w	r3, [r0, #-2]
c0de6bd2:	f043 0301 	orr.w	r3, r3, #1
c0de6bd6:	f800 3c02 	strb.w	r3, [r0, #-2]
c0de6bda:	200c      	movs	r0, #12
c0de6bdc:	2301      	movs	r3, #1
c0de6bde:	f004 ff52 	bl	c0deba86 <nbgl_getTextNbLinesInWidth>
c0de6be2:	7828      	ldrb	r0, [r5, #0]
c0de6be4:	2802      	cmp	r0, #2
c0de6be6:	d115      	bne.n	c0de6c14 <nbgl_layoutAddHeader+0x348>
c0de6be8:	4646      	mov	r6, r8
c0de6bea:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de6bee:	7872      	ldrb	r2, [r6, #1]
c0de6bf0:	78b3      	ldrb	r3, [r6, #2]
c0de6bf2:	78f7      	ldrb	r7, [r6, #3]
c0de6bf4:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de6bf8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6bfc:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de6c00:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de6c04:	f004 ff44 	bl	c0deba90 <nbgl_getTextWidth>
c0de6c08:	f806 0c22 	strb.w	r0, [r6, #-34]
c0de6c0c:	0a00      	lsrs	r0, r0, #8
c0de6c0e:	f806 0c21 	strb.w	r0, [r6, #-33]
c0de6c12:	7828      	ldrb	r0, [r5, #0]
c0de6c14:	f000 fdc8 	bl	c0de77a8 <OUTLINED_FUNCTION_27>
c0de6c18:	f841 8023 	str.w	r8, [r1, r3, lsl #2]
c0de6c1c:	68e1      	ldr	r1, [r4, #12]
c0de6c1e:	f891 2020 	ldrb.w	r2, [r1, #32]
c0de6c22:	3201      	adds	r2, #1
c0de6c24:	2802      	cmp	r0, #2
c0de6c26:	f881 2020 	strb.w	r2, [r1, #32]
c0de6c2a:	d125      	bne.n	c0de6c78 <nbgl_layoutAddHeader+0x3ac>
c0de6c2c:	f898 0004 	ldrb.w	r0, [r8, #4]
c0de6c30:	f898 2005 	ldrb.w	r2, [r8, #5]
c0de6c34:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de6c38:	f06f 0207 	mvn.w	r2, #7
c0de6c3c:	eba2 0050 	sub.w	r0, r2, r0, lsr #1
c0de6c40:	f81a 2f21 	ldrb.w	r2, [sl, #33]!
c0de6c44:	f80a 0c0a 	strb.w	r0, [sl, #-10]
c0de6c48:	0a00      	lsrs	r0, r0, #8
c0de6c4a:	f89a 3002 	ldrb.w	r3, [sl, #2]
c0de6c4e:	f89a 6003 	ldrb.w	r6, [sl, #3]
c0de6c52:	f80a 0c09 	strb.w	r0, [sl, #-9]
c0de6c56:	f89a 0001 	ldrb.w	r0, [sl, #1]
c0de6c5a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6c5e:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de6c62:	f000 feff 	bl	c0de7a64 <OUTLINED_FUNCTION_72>
c0de6c66:	2208      	movs	r2, #8
c0de6c68:	eb02 0050 	add.w	r0, r2, r0, lsr #1
c0de6c6c:	f888 0017 	strb.w	r0, [r8, #23]
c0de6c70:	0a00      	lsrs	r0, r0, #8
c0de6c72:	f888 0018 	strb.w	r0, [r8, #24]
c0de6c76:	e061      	b.n	c0de6d3c <nbgl_layoutAddHeader+0x470>
c0de6c78:	2805      	cmp	r0, #5
c0de6c7a:	d15f      	bne.n	c0de6d3c <nbgl_layoutAddHeader+0x470>
c0de6c7c:	6868      	ldr	r0, [r5, #4]
c0de6c7e:	2800      	cmp	r0, #0
c0de6c80:	f000 8094 	beq.w	c0de6dac <nbgl_layoutAddHeader+0x4e0>
c0de6c84:	f000 fcc0 	bl	c0de7608 <OUTLINED_FUNCTION_8>
c0de6c88:	7caa      	ldrb	r2, [r5, #18]
c0de6c8a:	4682      	mov	sl, r0
c0de6c8c:	2aff      	cmp	r2, #255	@ 0xff
c0de6c8e:	d00c      	beq.n	c0de6caa <nbgl_layoutAddHeader+0x3de>
c0de6c90:	7ceb      	ldrb	r3, [r5, #19]
c0de6c92:	4620      	mov	r0, r4
c0de6c94:	4651      	mov	r1, sl
c0de6c96:	f7fd f8a3 	bl	c0de3de0 <layoutAddCallbackObj>
c0de6c9a:	2800      	cmp	r0, #0
c0de6c9c:	d047      	beq.n	c0de6d2e <nbgl_layoutAddHeader+0x462>
c0de6c9e:	2000      	movs	r0, #0
c0de6ca0:	f88a 001d 	strb.w	r0, [sl, #29]
c0de6ca4:	2001      	movs	r0, #1
c0de6ca6:	f88a 001c 	strb.w	r0, [sl, #28]
c0de6caa:	2003      	movs	r0, #3
c0de6cac:	2106      	movs	r1, #6
c0de6cae:	2700      	movs	r7, #0
c0de6cb0:	f88a 001f 	strb.w	r0, [sl, #31]
c0de6cb4:	f88a 1016 	strb.w	r1, [sl, #22]
c0de6cb8:	7ca9      	ldrb	r1, [r5, #18]
c0de6cba:	f88a 0020 	strb.w	r0, [sl, #32]
c0de6cbe:	2060      	movs	r0, #96	@ 0x60
c0de6cc0:	f88a 7026 	strb.w	r7, [sl, #38]	@ 0x26
c0de6cc4:	f88a 7007 	strb.w	r7, [sl, #7]
c0de6cc8:	f88a 7005 	strb.w	r7, [sl, #5]
c0de6ccc:	f88a 0006 	strb.w	r0, [sl, #6]
c0de6cd0:	2068      	movs	r0, #104	@ 0x68
c0de6cd2:	f88a 0004 	strb.w	r0, [sl, #4]
c0de6cd6:	4650      	mov	r0, sl
c0de6cd8:	f800 7f25 	strb.w	r7, [r0, #37]!
c0de6cdc:	70c7      	strb	r7, [r0, #3]
c0de6cde:	7087      	strb	r7, [r0, #2]
c0de6ce0:	f1a1 00ff 	sub.w	r0, r1, #255	@ 0xff
c0de6ce4:	fab0 f080 	clz	r0, r0
c0de6ce8:	0940      	lsrs	r0, r0, #5
c0de6cea:	0040      	lsls	r0, r0, #1
c0de6cec:	f88b 0021 	strb.w	r0, [fp, #33]	@ 0x21
c0de6cf0:	f000 fd31 	bl	c0de7756 <OUTLINED_FUNCTION_22>
c0de6cf4:	4651      	mov	r1, sl
c0de6cf6:	0e02      	lsrs	r2, r0, #24
c0de6cf8:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de6cfc:	f000 fcfd 	bl	c0de76fa <OUTLINED_FUNCTION_17>
c0de6d00:	f88a 002f 	strb.w	r0, [sl, #47]	@ 0x2f
c0de6d04:	68e0      	ldr	r0, [r4, #12]
c0de6d06:	f000 fc5b 	bl	c0de75c0 <OUTLINED_FUNCTION_6>
c0de6d0a:	f840 a022 	str.w	sl, [r0, r2, lsl #2]
c0de6d0e:	2008      	movs	r0, #8
c0de6d10:	68e1      	ldr	r1, [r4, #12]
c0de6d12:	f88a 001e 	strb.w	r0, [sl, #30]
c0de6d16:	2060      	movs	r0, #96	@ 0x60
c0de6d18:	7188      	strb	r0, [r1, #6]
c0de6d1a:	f891 0020 	ldrb.w	r0, [r1, #32]
c0de6d1e:	71cf      	strb	r7, [r1, #7]
c0de6d20:	3001      	adds	r0, #1
c0de6d22:	f881 0020 	strb.w	r0, [r1, #32]
c0de6d26:	7828      	ldrb	r0, [r5, #0]
c0de6d28:	2805      	cmp	r0, #5
c0de6d2a:	d10b      	bne.n	c0de6d44 <nbgl_layoutAddHeader+0x478>
c0de6d2c:	e044      	b.n	c0de6db8 <nbgl_layoutAddHeader+0x4ec>
c0de6d2e:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de6d32:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6d36:	bf00      	nop
c0de6d38:	0000667f 	.word	0x0000667f
c0de6d3c:	2000      	movs	r0, #0
c0de6d3e:	71c8      	strb	r0, [r1, #7]
c0de6d40:	2060      	movs	r0, #96	@ 0x60
c0de6d42:	7188      	strb	r0, [r1, #6]
c0de6d44:	7868      	ldrb	r0, [r5, #1]
c0de6d46:	b150      	cbz	r0, c0de6d5e <nbgl_layoutAddHeader+0x492>
c0de6d48:	f000 fd00 	bl	c0de774c <OUTLINED_FUNCTION_21>
c0de6d4c:	f000 fd2c 	bl	c0de77a8 <OUTLINED_FUNCTION_27>
c0de6d50:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de6d54:	2108      	movs	r1, #8
c0de6d56:	7581      	strb	r1, [r0, #22]
c0de6d58:	68e1      	ldr	r1, [r4, #12]
c0de6d5a:	f000 fe00 	bl	c0de795e <OUTLINED_FUNCTION_50>
c0de6d5e:	68a0      	ldr	r0, [r4, #8]
c0de6d60:	6001      	str	r1, [r0, #0]
c0de6d62:	68e0      	ldr	r0, [r4, #12]
c0de6d64:	f8d4 10a0 	ldr.w	r1, [r4, #160]	@ 0xa0
c0de6d68:	4602      	mov	r2, r0
c0de6d6a:	f812 3f06 	ldrb.w	r3, [r2, #6]!
c0de6d6e:	7856      	ldrb	r6, [r2, #1]
c0de6d70:	f801 0f12 	strb.w	r0, [r1, #18]!
c0de6d74:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de6d78:	f811 6d0c 	ldrb.w	r6, [r1, #-12]!
c0de6d7c:	784f      	ldrb	r7, [r1, #1]
c0de6d7e:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de6d82:	1af3      	subs	r3, r6, r3
c0de6d84:	700b      	strb	r3, [r1, #0]
c0de6d86:	0a1b      	lsrs	r3, r3, #8
c0de6d88:	704b      	strb	r3, [r1, #1]
c0de6d8a:	782b      	ldrb	r3, [r5, #0]
c0de6d8c:	f884 30aa 	strb.w	r3, [r4, #170]	@ 0xaa
c0de6d90:	0e03      	lsrs	r3, r0, #24
c0de6d92:	73cb      	strb	r3, [r1, #15]
c0de6d94:	0c03      	lsrs	r3, r0, #16
c0de6d96:	0a00      	lsrs	r0, r0, #8
c0de6d98:	7348      	strb	r0, [r1, #13]
c0de6d9a:	2007      	movs	r0, #7
c0de6d9c:	738b      	strb	r3, [r1, #14]
c0de6d9e:	7408      	strb	r0, [r1, #16]
c0de6da0:	7810      	ldrb	r0, [r2, #0]
c0de6da2:	7851      	ldrb	r1, [r2, #1]
c0de6da4:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6da8:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6dac:	f04f 0a00 	mov.w	sl, #0
c0de6db0:	2060      	movs	r0, #96	@ 0x60
c0de6db2:	f881 a007 	strb.w	sl, [r1, #7]
c0de6db6:	7188      	strb	r0, [r1, #6]
c0de6db8:	68e8      	ldr	r0, [r5, #12]
c0de6dba:	2800      	cmp	r0, #0
c0de6dbc:	d0c2      	beq.n	c0de6d44 <nbgl_layoutAddHeader+0x478>
c0de6dbe:	f000 fcc5 	bl	c0de774c <OUTLINED_FUNCTION_21>
c0de6dc2:	68e1      	ldr	r1, [r4, #12]
c0de6dc4:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de6dc8:	784e      	ldrb	r6, [r1, #1]
c0de6dca:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de6dce:	788f      	ldrb	r7, [r1, #2]
c0de6dd0:	78c9      	ldrb	r1, [r1, #3]
c0de6dd2:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de6dd6:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de6dda:	2600      	movs	r6, #0
c0de6ddc:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6de0:	7686      	strb	r6, [r0, #26]
c0de6de2:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
c0de6de6:	2160      	movs	r1, #96	@ 0x60
c0de6de8:	7641      	strb	r1, [r0, #25]
c0de6dea:	2102      	movs	r1, #2
c0de6dec:	7581      	strb	r1, [r0, #22]
c0de6dee:	68e0      	ldr	r0, [r4, #12]
c0de6df0:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de6df4:	3101      	adds	r1, #1
c0de6df6:	f880 1020 	strb.w	r1, [r0, #32]
c0de6dfa:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6dfe:	f000 fb8b 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de6e02:	77c6      	strb	r6, [r0, #31]
c0de6e04:	4607      	mov	r7, r0
c0de6e06:	68e8      	ldr	r0, [r5, #12]
c0de6e08:	f005 f80c 	bl	c0debe24 <pic>
c0de6e0c:	4601      	mov	r1, r0
c0de6e0e:	201c      	movs	r0, #28
c0de6e10:	2301      	movs	r3, #1
c0de6e12:	76be      	strb	r6, [r7, #26]
c0de6e14:	7678      	strb	r0, [r7, #25]
c0de6e16:	f000 fd99 	bl	c0de794c <OUTLINED_FUNCTION_49>
c0de6e1a:	2004      	movs	r0, #4
c0de6e1c:	f887 0020 	strb.w	r0, [r7, #32]
c0de6e20:	2008      	movs	r0, #8
c0de6e22:	75b8      	strb	r0, [r7, #22]
c0de6e24:	f000 fb7c 	bl	c0de7520 <OUTLINED_FUNCTION_2>
c0de6e28:	68e1      	ldr	r1, [r4, #12]
c0de6e2a:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de6e2e:	784e      	ldrb	r6, [r1, #1]
c0de6e30:	f811 cc02 	ldrb.w	ip, [r1, #-2]
c0de6e34:	788b      	ldrb	r3, [r1, #2]
c0de6e36:	78c9      	ldrb	r1, [r1, #3]
c0de6e38:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de6e3c:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de6e40:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6e44:	f100 0238 	add.w	r2, r0, #56	@ 0x38
c0de6e48:	f841 702c 	str.w	r7, [r1, ip, lsl #2]
c0de6e4c:	0a01      	lsrs	r1, r0, #8
c0de6e4e:	71b8      	strb	r0, [r7, #6]
c0de6e50:	71f9      	strb	r1, [r7, #7]
c0de6e52:	f81b 1f19 	ldrb.w	r1, [fp, #25]!
c0de6e56:	f89b 3001 	ldrb.w	r3, [fp, #1]
c0de6e5a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6e5e:	eba1 0152 	sub.w	r1, r1, r2, lsr #1
c0de6e62:	f88b 1000 	strb.w	r1, [fp]
c0de6e66:	0a09      	lsrs	r1, r1, #8
c0de6e68:	f88b 1001 	strb.w	r1, [fp, #1]
c0de6e6c:	68e1      	ldr	r1, [r4, #12]
c0de6e6e:	f891 3020 	ldrb.w	r3, [r1, #32]
c0de6e72:	3301      	adds	r3, #1
c0de6e74:	f881 3020 	strb.w	r3, [r1, #32]
c0de6e78:	460b      	mov	r3, r1
c0de6e7a:	f813 6f06 	ldrb.w	r6, [r3, #6]!
c0de6e7e:	785f      	ldrb	r7, [r3, #1]
c0de6e80:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de6e84:	4430      	add	r0, r6
c0de6e86:	3038      	adds	r0, #56	@ 0x38
c0de6e88:	7018      	strb	r0, [r3, #0]
c0de6e8a:	0a00      	lsrs	r0, r0, #8
c0de6e8c:	7058      	strb	r0, [r3, #1]
c0de6e8e:	0850      	lsrs	r0, r2, #1
c0de6e90:	f1b8 0f00 	cmp.w	r8, #0
c0de6e94:	d00b      	beq.n	c0de6eae <nbgl_layoutAddHeader+0x5e2>
c0de6e96:	f818 2f19 	ldrb.w	r2, [r8, #25]!
c0de6e9a:	f898 3001 	ldrb.w	r3, [r8, #1]
c0de6e9e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6ea2:	1a12      	subs	r2, r2, r0
c0de6ea4:	f888 2000 	strb.w	r2, [r8]
c0de6ea8:	0a12      	lsrs	r2, r2, #8
c0de6eaa:	f888 2001 	strb.w	r2, [r8, #1]
c0de6eae:	f1ba 0f00 	cmp.w	sl, #0
c0de6eb2:	f43f af47 	beq.w	c0de6d44 <nbgl_layoutAddHeader+0x478>
c0de6eb6:	f81a 2f19 	ldrb.w	r2, [sl, #25]!
c0de6eba:	f89a 3001 	ldrb.w	r3, [sl, #1]
c0de6ebe:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6ec2:	1a10      	subs	r0, r2, r0
c0de6ec4:	f88a 0000 	strb.w	r0, [sl]
c0de6ec8:	0a00      	lsrs	r0, r0, #8
c0de6eca:	f88a 0001 	strb.w	r0, [sl, #1]
c0de6ece:	e739      	b.n	c0de6d44 <nbgl_layoutAddHeader+0x478>

c0de6ed0 <nbgl_layoutAddProgressIndicator>:
c0de6ed0:	b510      	push	{r4, lr}
c0de6ed2:	b086      	sub	sp, #24
c0de6ed4:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de6ed6:	f88d 100c 	strb.w	r1, [sp, #12]
c0de6eda:	2100      	movs	r1, #0
c0de6edc:	f88d 300e 	strb.w	r3, [sp, #14]
c0de6ee0:	f88d 200d 	strb.w	r2, [sp, #13]
c0de6ee4:	9102      	str	r1, [sp, #8]
c0de6ee6:	2103      	movs	r1, #3
c0de6ee8:	f88d 4011 	strb.w	r4, [sp, #17]
c0de6eec:	24ff      	movs	r4, #255	@ 0xff
c0de6eee:	f8ad 1004 	strh.w	r1, [sp, #4]
c0de6ef2:	f88d 4010 	strb.w	r4, [sp, #16]
c0de6ef6:	9c08      	ldr	r4, [sp, #32]
c0de6ef8:	f88d 400f 	strb.w	r4, [sp, #15]
c0de6efc:	a901      	add	r1, sp, #4
c0de6efe:	f7ff fce5 	bl	c0de68cc <nbgl_layoutAddHeader>
c0de6f02:	b006      	add	sp, #24
c0de6f04:	bd10      	pop	{r4, pc}
	...

c0de6f08 <nbgl_layoutAddSpinner>:
c0de6f08:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6f0c:	b088      	sub	sp, #32
c0de6f0e:	2800      	cmp	r0, #0
c0de6f10:	f000 8123 	beq.w	c0de715a <nbgl_layoutAddSpinner+0x252>
c0de6f14:	9101      	str	r1, [sp, #4]
c0de6f16:	f000 fd74 	bl	c0de7a02 <OUTLINED_FUNCTION_64>
c0de6f1a:	461d      	mov	r5, r3
c0de6f1c:	4692      	mov	sl, r2
c0de6f1e:	2601      	movs	r6, #1
c0de6f20:	4f90      	ldr	r7, [pc, #576]	@ (c0de7164 <nbgl_layoutAddSpinner+0x25c>)
c0de6f22:	08c1      	lsrs	r1, r0, #3
c0de6f24:	2001      	movs	r0, #1
c0de6f26:	447f      	add	r7, pc
c0de6f28:	47b8      	blx	r7
c0de6f2a:	4683      	mov	fp, r0
c0de6f2c:	2003      	movs	r0, #3
c0de6f2e:	f88b 0020 	strb.w	r0, [fp, #32]
c0de6f32:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6f36:	08c1      	lsrs	r1, r0, #3
c0de6f38:	2003      	movs	r0, #3
c0de6f3a:	f004 fd8b 	bl	c0deba54 <nbgl_containerPoolGet>
c0de6f3e:	2100      	movs	r1, #0
c0de6f40:	f88b 6005 	strb.w	r6, [fp, #5]
c0de6f44:	465e      	mov	r6, fp
c0de6f46:	f88b 101f 	strb.w	r1, [fp, #31]
c0de6f4a:	21a0      	movs	r1, #160	@ 0xa0
c0de6f4c:	f806 0f22 	strb.w	r0, [r6, #34]!
c0de6f50:	f88b 1004 	strb.w	r1, [fp, #4]
c0de6f54:	2105      	movs	r1, #5
c0de6f56:	f88b 1016 	strb.w	r1, [fp, #22]
c0de6f5a:	0e01      	lsrs	r1, r0, #24
c0de6f5c:	f000 fd89 	bl	c0de7a72 <OUTLINED_FUNCTION_73>
c0de6f60:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de6f64:	08c1      	lsrs	r1, r0, #3
c0de6f66:	200d      	movs	r0, #13
c0de6f68:	47b8      	blx	r7
c0de6f6a:	4680      	mov	r8, r0
c0de6f6c:	77c5      	strb	r5, [r0, #31]
c0de6f6e:	2002      	movs	r0, #2
c0de6f70:	7831      	ldrb	r1, [r6, #0]
c0de6f72:	78b2      	ldrb	r2, [r6, #2]
c0de6f74:	78f3      	ldrb	r3, [r6, #3]
c0de6f76:	f8cd a00c 	str.w	sl, [sp, #12]
c0de6f7a:	46da      	mov	sl, fp
c0de6f7c:	9404      	str	r4, [sp, #16]
c0de6f7e:	9502      	str	r5, [sp, #8]
c0de6f80:	f888 0016 	strb.w	r0, [r8, #22]
c0de6f84:	f89b 0023 	ldrb.w	r0, [fp, #35]	@ 0x23
c0de6f88:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de6f8c:	f000 fc7d 	bl	c0de788a <OUTLINED_FUNCTION_37>
c0de6f90:	f8c0 8000 	str.w	r8, [r0]
c0de6f94:	f81a 0f06 	ldrb.w	r0, [sl, #6]!
c0de6f98:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de6f9c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6fa0:	3030      	adds	r0, #48	@ 0x30
c0de6fa2:	f88a 0000 	strb.w	r0, [sl]
c0de6fa6:	0a00      	lsrs	r0, r0, #8
c0de6fa8:	f88a 0001 	strb.w	r0, [sl, #1]
c0de6fac:	9804      	ldr	r0, [sp, #16]
c0de6fae:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de6fb2:	08c1      	lsrs	r1, r0, #3
c0de6fb4:	2004      	movs	r0, #4
c0de6fb6:	47b8      	blx	r7
c0de6fb8:	4605      	mov	r5, r0
c0de6fba:	2000      	movs	r0, #0
c0de6fbc:	ea4f 2418 	mov.w	r4, r8, lsr #8
c0de6fc0:	77e8      	strb	r0, [r5, #31]
c0de6fc2:	9801      	ldr	r0, [sp, #4]
c0de6fc4:	f004 ff2e 	bl	c0debe24 <pic>
c0de6fc8:	4601      	mov	r1, r0
c0de6fca:	2001      	movs	r0, #1
c0de6fcc:	230d      	movs	r3, #13
c0de6fce:	74ec      	strb	r4, [r5, #19]
c0de6fd0:	462c      	mov	r4, r5
c0de6fd2:	7168      	strb	r0, [r5, #5]
c0de6fd4:	20a0      	movs	r0, #160	@ 0xa0
c0de6fd6:	7128      	strb	r0, [r5, #4]
c0de6fd8:	9803      	ldr	r0, [sp, #12]
c0de6fda:	2800      	cmp	r0, #0
c0de6fdc:	bf08      	it	eq
c0de6fde:	230b      	moveq	r3, #11
c0de6fe0:	f885 3022 	strb.w	r3, [r5, #34]	@ 0x22
c0de6fe4:	2005      	movs	r0, #5
c0de6fe6:	0e0a      	lsrs	r2, r1, #24
c0de6fe8:	2700      	movs	r7, #0
c0de6fea:	f885 0020 	strb.w	r0, [r5, #32]
c0de6fee:	2008      	movs	r0, #8
c0de6ff0:	75a8      	strb	r0, [r5, #22]
c0de6ff2:	4628      	mov	r0, r5
c0de6ff4:	f000 fb30 	bl	c0de7658 <OUTLINED_FUNCTION_11>
c0de6ff8:	ea4f 6218 	mov.w	r2, r8, lsr #24
c0de6ffc:	f885 0027 	strb.w	r0, [r5, #39]	@ 0x27
c0de7000:	2018      	movs	r0, #24
c0de7002:	f804 0f19 	strb.w	r0, [r4, #25]!
c0de7006:	2000      	movs	r0, #0
c0de7008:	7060      	strb	r0, [r4, #1]
c0de700a:	4628      	mov	r0, r5
c0de700c:	f800 8f12 	strb.w	r8, [r0, #18]!
c0de7010:	70c2      	strb	r2, [r0, #3]
c0de7012:	ea4f 4218 	mov.w	r2, r8, lsr #16
c0de7016:	f8dd 8010 	ldr.w	r8, [sp, #16]
c0de701a:	7082      	strb	r2, [r0, #2]
c0de701c:	f895 0024 	ldrb.w	r0, [r5, #36]	@ 0x24
c0de7020:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de7024:	f040 0001 	orr.w	r0, r0, #1
c0de7028:	f885 0024 	strb.w	r0, [r5, #36]	@ 0x24
c0de702c:	4618      	mov	r0, r3
c0de702e:	2301      	movs	r3, #1
c0de7030:	f004 fd24 	bl	c0deba7c <nbgl_getTextHeightInWidth>
c0de7034:	71a8      	strb	r0, [r5, #6]
c0de7036:	0a01      	lsrs	r1, r0, #8
c0de7038:	f885 7021 	strb.w	r7, [r5, #33]	@ 0x21
c0de703c:	71e9      	strb	r1, [r5, #7]
c0de703e:	f89b 1023 	ldrb.w	r1, [fp, #35]	@ 0x23
c0de7042:	7832      	ldrb	r2, [r6, #0]
c0de7044:	78b3      	ldrb	r3, [r6, #2]
c0de7046:	78f6      	ldrb	r6, [r6, #3]
c0de7048:	f000 fd00 	bl	c0de7a4c <OUTLINED_FUNCTION_70>
c0de704c:	7862      	ldrb	r2, [r4, #1]
c0de704e:	604d      	str	r5, [r1, #4]
c0de7050:	7821      	ldrb	r1, [r4, #0]
c0de7052:	9c03      	ldr	r4, [sp, #12]
c0de7054:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7058:	f89a 2001 	ldrb.w	r2, [sl, #1]
c0de705c:	4408      	add	r0, r1
c0de705e:	f89a 1000 	ldrb.w	r1, [sl]
c0de7062:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7066:	4408      	add	r0, r1
c0de7068:	f88a 0000 	strb.w	r0, [sl]
c0de706c:	0a00      	lsrs	r0, r0, #8
c0de706e:	2c00      	cmp	r4, #0
c0de7070:	f88a 0001 	strb.w	r0, [sl, #1]
c0de7074:	d04a      	beq.n	c0de710c <nbgl_layoutAddSpinner+0x204>
c0de7076:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de707a:	f000 fa4d 	bl	c0de7518 <OUTLINED_FUNCTION_1>
c0de707e:	2600      	movs	r6, #0
c0de7080:	4607      	mov	r7, r0
c0de7082:	77c6      	strb	r6, [r0, #31]
c0de7084:	4620      	mov	r0, r4
c0de7086:	f004 fecd 	bl	c0debe24 <pic>
c0de708a:	4601      	mov	r1, r0
c0de708c:	0a28      	lsrs	r0, r5, #8
c0de708e:	463c      	mov	r4, r7
c0de7090:	2301      	movs	r3, #1
c0de7092:	74f8      	strb	r0, [r7, #19]
c0de7094:	f000 fc5a 	bl	c0de794c <OUTLINED_FUNCTION_49>
c0de7098:	2005      	movs	r0, #5
c0de709a:	f887 0020 	strb.w	r0, [r7, #32]
c0de709e:	2008      	movs	r0, #8
c0de70a0:	75b8      	strb	r0, [r7, #22]
c0de70a2:	4638      	mov	r0, r7
c0de70a4:	f000 fad8 	bl	c0de7658 <OUTLINED_FUNCTION_11>
c0de70a8:	0e2a      	lsrs	r2, r5, #24
c0de70aa:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de70ae:	2010      	movs	r0, #16
c0de70b0:	f804 0f19 	strb.w	r0, [r4, #25]!
c0de70b4:	4638      	mov	r0, r7
c0de70b6:	f800 5f12 	strb.w	r5, [r0, #18]!
c0de70ba:	7066      	strb	r6, [r4, #1]
c0de70bc:	70c2      	strb	r2, [r0, #3]
c0de70be:	0c2a      	lsrs	r2, r5, #16
c0de70c0:	f000 fc31 	bl	c0de7926 <OUTLINED_FUNCTION_47>
c0de70c4:	200b      	movs	r0, #11
c0de70c6:	f004 fcd9 	bl	c0deba7c <nbgl_getTextHeightInWidth>
c0de70ca:	0a01      	lsrs	r1, r0, #8
c0de70cc:	7862      	ldrb	r2, [r4, #1]
c0de70ce:	71b8      	strb	r0, [r7, #6]
c0de70d0:	f887 6021 	strb.w	r6, [r7, #33]	@ 0x21
c0de70d4:	71f9      	strb	r1, [r7, #7]
c0de70d6:	7821      	ldrb	r1, [r4, #0]
c0de70d8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de70dc:	eb01 0c00 	add.w	ip, r1, r0
c0de70e0:	4659      	mov	r1, fp
c0de70e2:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de70e6:	f811 3d1c 	ldrb.w	r3, [r1, #-28]!
c0de70ea:	784c      	ldrb	r4, [r1, #1]
c0de70ec:	7f4d      	ldrb	r5, [r1, #29]
c0de70ee:	7f8e      	ldrb	r6, [r1, #30]
c0de70f0:	7fc8      	ldrb	r0, [r1, #31]
c0de70f2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de70f6:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
c0de70fa:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de70fe:	4463      	add	r3, ip
c0de7100:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de7104:	700b      	strb	r3, [r1, #0]
c0de7106:	6087      	str	r7, [r0, #8]
c0de7108:	0a18      	lsrs	r0, r3, #8
c0de710a:	7048      	strb	r0, [r1, #1]
c0de710c:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de7110:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7114:	7843      	ldrb	r3, [r0, #1]
c0de7116:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de711a:	7884      	ldrb	r4, [r0, #2]
c0de711c:	78c0      	ldrb	r0, [r0, #3]
c0de711e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7122:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de7126:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de712a:	f840 b022 	str.w	fp, [r0, r2, lsl #2]
c0de712e:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de7132:	f000 f9eb 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de7136:	9802      	ldr	r0, [sp, #8]
c0de7138:	28ff      	cmp	r0, #255	@ 0xff
c0de713a:	d00c      	beq.n	c0de7156 <nbgl_layoutAddSpinner+0x24e>
c0de713c:	f44f 70c8 	mov.w	r0, #400	@ 0x190
c0de7140:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de7144:	4808      	ldr	r0, [pc, #32]	@ (c0de7168 <nbgl_layoutAddSpinner+0x260>)
c0de7146:	4478      	add	r0, pc
c0de7148:	9005      	str	r0, [sp, #20]
c0de714a:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de714e:	a905      	add	r1, sp, #20
c0de7150:	08c0      	lsrs	r0, r0, #3
c0de7152:	f004 fc70 	bl	c0deba36 <nbgl_screenUpdateTicker>
c0de7156:	2000      	movs	r0, #0
c0de7158:	e001      	b.n	c0de715e <nbgl_layoutAddSpinner+0x256>
c0de715a:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de715e:	b008      	add	sp, #32
c0de7160:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7164:	00004b21 	.word	0x00004b21
c0de7168:	00000023 	.word	0x00000023

c0de716c <spinnerTickerCallback>:
c0de716c:	b570      	push	{r4, r5, r6, lr}
c0de716e:	4819      	ldr	r0, [pc, #100]	@ (c0de71d4 <spinnerTickerCallback+0x68>)
c0de7170:	4448      	add	r0, r9
c0de7172:	6840      	ldr	r0, [r0, #4]
c0de7174:	b120      	cbz	r0, c0de7180 <spinnerTickerCallback+0x14>
c0de7176:	f890 10ae 	ldrb.w	r1, [r0, #174]	@ 0xae
c0de717a:	0209      	lsls	r1, r1, #8
c0de717c:	0449      	lsls	r1, r1, #17
c0de717e:	d400      	bmi.n	c0de7182 <spinnerTickerCallback+0x16>
c0de7180:	bd70      	pop	{r4, r5, r6, pc}
c0de7182:	f8d0 10a0 	ldr.w	r1, [r0, #160]	@ 0xa0
c0de7186:	2300      	movs	r3, #0
c0de7188:	f891 2020 	ldrb.w	r2, [r1, #32]
c0de718c:	429a      	cmp	r2, r3
c0de718e:	d0f7      	beq.n	c0de7180 <spinnerTickerCallback+0x14>
c0de7190:	4608      	mov	r0, r1
c0de7192:	f000 fb7f 	bl	c0de7894 <OUTLINED_FUNCTION_38>
c0de7196:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
c0de719a:	7ec4      	ldrb	r4, [r0, #27]
c0de719c:	2c01      	cmp	r4, #1
c0de719e:	d108      	bne.n	c0de71b2 <spinnerTickerCallback+0x46>
c0de71a0:	f890 4020 	ldrb.w	r4, [r0, #32]
c0de71a4:	b12c      	cbz	r4, c0de71b2 <spinnerTickerCallback+0x46>
c0de71a6:	f000 fb75 	bl	c0de7894 <OUTLINED_FUNCTION_38>
c0de71aa:	6800      	ldr	r0, [r0, #0]
c0de71ac:	7ec4      	ldrb	r4, [r0, #27]
c0de71ae:	2c0d      	cmp	r4, #13
c0de71b0:	d001      	beq.n	c0de71b6 <spinnerTickerCallback+0x4a>
c0de71b2:	3301      	adds	r3, #1
c0de71b4:	e7ea      	b.n	c0de718c <spinnerTickerCallback+0x20>
c0de71b6:	7fc1      	ldrb	r1, [r0, #31]
c0de71b8:	3101      	adds	r1, #1
c0de71ba:	b2ca      	uxtb	r2, r1
c0de71bc:	3a04      	subs	r2, #4
c0de71be:	bf18      	it	ne
c0de71c0:	460a      	movne	r2, r1
c0de71c2:	77c2      	strb	r2, [r0, #31]
c0de71c4:	f004 fc19 	bl	c0deb9fa <nbgl_objDraw>
c0de71c8:	2004      	movs	r0, #4
c0de71ca:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de71ce:	f004 bc05 	b.w	c0deb9dc <nbgl_refreshSpecial>
c0de71d2:	bf00      	nop
c0de71d4:	00000904 	.word	0x00000904

c0de71d8 <nbgl_layoutUpdateSpinner>:
c0de71d8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de71dc:	2800      	cmp	r0, #0
c0de71de:	f000 8099 	beq.w	c0de7314 <nbgl_layoutUpdateSpinner+0x13c>
c0de71e2:	f8d0 00a0 	ldr.w	r0, [r0, #160]	@ 0xa0
c0de71e6:	460e      	mov	r6, r1
c0de71e8:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de71ec:	2900      	cmp	r1, #0
c0de71ee:	f000 8091 	beq.w	c0de7314 <nbgl_layoutUpdateSpinner+0x13c>
c0de71f2:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de71f6:	4615      	mov	r5, r2
c0de71f8:	f000 fbfb 	bl	c0de79f2 <OUTLINED_FUNCTION_63>
c0de71fc:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de7200:	6807      	ldr	r7, [r0, #0]
c0de7202:	7ef8      	ldrb	r0, [r7, #27]
c0de7204:	2801      	cmp	r0, #1
c0de7206:	f040 8085 	bne.w	c0de7314 <nbgl_layoutUpdateSpinner+0x13c>
c0de720a:	f897 0020 	ldrb.w	r0, [r7, #32]
c0de720e:	2802      	cmp	r0, #2
c0de7210:	f0c0 8080 	bcc.w	c0de7314 <nbgl_layoutUpdateSpinner+0x13c>
c0de7214:	4638      	mov	r0, r7
c0de7216:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de721a:	f000 fbea 	bl	c0de79f2 <OUTLINED_FUNCTION_63>
c0de721e:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de7222:	6808      	ldr	r0, [r1, #0]
c0de7224:	7ec2      	ldrb	r2, [r0, #27]
c0de7226:	2a0d      	cmp	r2, #13
c0de7228:	d174      	bne.n	c0de7314 <nbgl_layoutUpdateSpinner+0x13c>
c0de722a:	7fc2      	ldrb	r2, [r0, #31]
c0de722c:	429a      	cmp	r2, r3
c0de722e:	d101      	bne.n	c0de7234 <nbgl_layoutUpdateSpinner+0x5c>
c0de7230:	2400      	movs	r4, #0
c0de7232:	e008      	b.n	c0de7246 <nbgl_layoutUpdateSpinner+0x6e>
c0de7234:	77c3      	strb	r3, [r0, #31]
c0de7236:	f004 fbe0 	bl	c0deb9fa <nbgl_objDraw>
c0de723a:	4638      	mov	r0, r7
c0de723c:	2401      	movs	r4, #1
c0de723e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7242:	f000 fb63 	bl	c0de790c <OUTLINED_FUNCTION_45>
c0de7246:	f8d1 b004 	ldr.w	fp, [r1, #4]
c0de724a:	f89b 001b 	ldrb.w	r0, [fp, #27]
c0de724e:	2804      	cmp	r0, #4
c0de7250:	d160      	bne.n	c0de7314 <nbgl_layoutUpdateSpinner+0x13c>
c0de7252:	4630      	mov	r0, r6
c0de7254:	f004 fde6 	bl	c0debe24 <pic>
c0de7258:	4606      	mov	r6, r0
c0de725a:	f005 f97b 	bl	c0dec554 <strlen>
c0de725e:	4680      	mov	r8, r0
c0de7260:	4658      	mov	r0, fp
c0de7262:	f810 1f26 	ldrb.w	r1, [r0, #38]!
c0de7266:	f000 fa79 	bl	c0de775c <OUTLINED_FUNCTION_23>
c0de726a:	ea41 4a00 	orr.w	sl, r1, r0, lsl #16
c0de726e:	4650      	mov	r0, sl
c0de7270:	f005 f970 	bl	c0dec554 <strlen>
c0de7274:	4580      	cmp	r8, r0
c0de7276:	d105      	bne.n	c0de7284 <nbgl_layoutUpdateSpinner+0xac>
c0de7278:	4650      	mov	r0, sl
c0de727a:	4631      	mov	r1, r6
c0de727c:	4642      	mov	r2, r8
c0de727e:	f005 f911 	bl	c0dec4a4 <memcmp>
c0de7282:	b168      	cbz	r0, c0de72a0 <nbgl_layoutUpdateSpinner+0xc8>
c0de7284:	4658      	mov	r0, fp
c0de7286:	0e31      	lsrs	r1, r6, #24
c0de7288:	f800 6f26 	strb.w	r6, [r0, #38]!
c0de728c:	70c1      	strb	r1, [r0, #3]
c0de728e:	0c31      	lsrs	r1, r6, #16
c0de7290:	7081      	strb	r1, [r0, #2]
c0de7292:	0a30      	lsrs	r0, r6, #8
c0de7294:	f88b 0027 	strb.w	r0, [fp, #39]	@ 0x27
c0de7298:	4658      	mov	r0, fp
c0de729a:	f004 fbae 	bl	c0deb9fa <nbgl_objDraw>
c0de729e:	2402      	movs	r4, #2
c0de72a0:	b3d5      	cbz	r5, c0de7318 <nbgl_layoutUpdateSpinner+0x140>
c0de72a2:	f897 0020 	ldrb.w	r0, [r7, #32]
c0de72a6:	2803      	cmp	r0, #3
c0de72a8:	d134      	bne.n	c0de7314 <nbgl_layoutUpdateSpinner+0x13c>
c0de72aa:	f817 0f22 	ldrb.w	r0, [r7, #34]!
c0de72ae:	7879      	ldrb	r1, [r7, #1]
c0de72b0:	78ba      	ldrb	r2, [r7, #2]
c0de72b2:	78fb      	ldrb	r3, [r7, #3]
c0de72b4:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de72b8:	f000 fae7 	bl	c0de788a <OUTLINED_FUNCTION_37>
c0de72bc:	6886      	ldr	r6, [r0, #8]
c0de72be:	7ef0      	ldrb	r0, [r6, #27]
c0de72c0:	2804      	cmp	r0, #4
c0de72c2:	d127      	bne.n	c0de7314 <nbgl_layoutUpdateSpinner+0x13c>
c0de72c4:	4628      	mov	r0, r5
c0de72c6:	f004 fdad 	bl	c0debe24 <pic>
c0de72ca:	4605      	mov	r5, r0
c0de72cc:	f005 f942 	bl	c0dec554 <strlen>
c0de72d0:	4680      	mov	r8, r0
c0de72d2:	4630      	mov	r0, r6
c0de72d4:	f810 1f26 	ldrb.w	r1, [r0, #38]!
c0de72d8:	f000 fa40 	bl	c0de775c <OUTLINED_FUNCTION_23>
c0de72dc:	ea41 4700 	orr.w	r7, r1, r0, lsl #16
c0de72e0:	4638      	mov	r0, r7
c0de72e2:	f005 f937 	bl	c0dec554 <strlen>
c0de72e6:	4580      	cmp	r8, r0
c0de72e8:	d105      	bne.n	c0de72f6 <nbgl_layoutUpdateSpinner+0x11e>
c0de72ea:	4638      	mov	r0, r7
c0de72ec:	4629      	mov	r1, r5
c0de72ee:	4642      	mov	r2, r8
c0de72f0:	f005 f8d8 	bl	c0dec4a4 <memcmp>
c0de72f4:	b180      	cbz	r0, c0de7318 <nbgl_layoutUpdateSpinner+0x140>
c0de72f6:	4630      	mov	r0, r6
c0de72f8:	0e29      	lsrs	r1, r5, #24
c0de72fa:	f800 5f26 	strb.w	r5, [r0, #38]!
c0de72fe:	70c1      	strb	r1, [r0, #3]
c0de7300:	0c29      	lsrs	r1, r5, #16
c0de7302:	7081      	strb	r1, [r0, #2]
c0de7304:	0a28      	lsrs	r0, r5, #8
c0de7306:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de730a:	4630      	mov	r0, r6
c0de730c:	f004 fb75 	bl	c0deb9fa <nbgl_objDraw>
c0de7310:	2402      	movs	r4, #2
c0de7312:	e001      	b.n	c0de7318 <nbgl_layoutUpdateSpinner+0x140>
c0de7314:	f04f 34ff 	mov.w	r4, #4294967295	@ 0xffffffff
c0de7318:	4620      	mov	r0, r4
c0de731a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de731e <nbgl_layoutDraw>:
c0de731e:	b1d8      	cbz	r0, c0de7358 <nbgl_layoutDraw+0x3a>
c0de7320:	b570      	push	{r4, r5, r6, lr}
c0de7322:	6981      	ldr	r1, [r0, #24]
c0de7324:	b1a1      	cbz	r1, c0de7350 <nbgl_layoutDraw+0x32>
c0de7326:	f8d0 20a0 	ldr.w	r2, [r0, #160]	@ 0xa0
c0de732a:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de732e:	7855      	ldrb	r5, [r2, #1]
c0de7330:	f812 4c02 	ldrb.w	r4, [r2, #-2]
c0de7334:	7896      	ldrb	r6, [r2, #2]
c0de7336:	78d2      	ldrb	r2, [r2, #3]
c0de7338:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de733c:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
c0de7340:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
c0de7344:	f842 1024 	str.w	r1, [r2, r4, lsl #2]
c0de7348:	f8d0 00a0 	ldr.w	r0, [r0, #160]	@ 0xa0
c0de734c:	f000 f8de 	bl	c0de750c <OUTLINED_FUNCTION_0>
c0de7350:	f004 fb67 	bl	c0deba22 <nbgl_screenRedraw>
c0de7354:	2000      	movs	r0, #0
c0de7356:	bd70      	pop	{r4, r5, r6, pc}
c0de7358:	f000 baaf 	b.w	c0de78ba <OUTLINED_FUNCTION_40>

c0de735c <nbgl_layoutRelease>:
c0de735c:	b510      	push	{r4, lr}
c0de735e:	b138      	cbz	r0, c0de7370 <nbgl_layoutRelease+0x14>
c0de7360:	f000 fb4f 	bl	c0de7a02 <OUTLINED_FUNCTION_64>
c0de7364:	f894 10ae 	ldrb.w	r1, [r4, #174]	@ 0xae
c0de7368:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de736c:	0441      	lsls	r1, r0, #17
c0de736e:	d402      	bmi.n	c0de7376 <nbgl_layoutRelease+0x1a>
c0de7370:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de7374:	bd10      	pop	{r4, pc}
c0de7376:	07c1      	lsls	r1, r0, #31
c0de7378:	d014      	beq.n	c0de73a4 <nbgl_layoutRelease+0x48>
c0de737a:	b2c0      	uxtb	r0, r0
c0de737c:	08c0      	lsrs	r0, r0, #3
c0de737e:	f004 fb55 	bl	c0deba2c <nbgl_screenPop>
c0de7382:	480d      	ldr	r0, [pc, #52]	@ (c0de73b8 <nbgl_layoutRelease+0x5c>)
c0de7384:	eb09 0100 	add.w	r1, r9, r0
c0de7388:	6849      	ldr	r1, [r1, #4]
c0de738a:	42a1      	cmp	r1, r4
c0de738c:	d005      	beq.n	c0de739a <nbgl_layoutRelease+0x3e>
c0de738e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de7392:	6008      	str	r0, [r1, #0]
c0de7394:	6820      	ldr	r0, [r4, #0]
c0de7396:	6041      	str	r1, [r0, #4]
c0de7398:	e004      	b.n	c0de73a4 <nbgl_layoutRelease+0x48>
c0de739a:	6861      	ldr	r1, [r4, #4]
c0de739c:	4448      	add	r0, r9
c0de739e:	6041      	str	r1, [r0, #4]
c0de73a0:	2000      	movs	r0, #0
c0de73a2:	6008      	str	r0, [r1, #0]
c0de73a4:	f814 0fad 	ldrb.w	r0, [r4, #173]!
c0de73a8:	7861      	ldrb	r1, [r4, #1]
c0de73aa:	7020      	strb	r0, [r4, #0]
c0de73ac:	2000      	movs	r0, #0
c0de73ae:	f001 01bf 	and.w	r1, r1, #191	@ 0xbf
c0de73b2:	7061      	strb	r1, [r4, #1]
c0de73b4:	bd10      	pop	{r4, pc}
c0de73b6:	bf00      	nop
c0de73b8:	00000904 	.word	0x00000904

c0de73bc <getLayoutAndLayoutObj>:
c0de73bc:	b570      	push	{r4, r5, r6, lr}
c0de73be:	4c11      	ldr	r4, [pc, #68]	@ (c0de7404 <getLayoutAndLayoutObj+0x48>)
c0de73c0:	2300      	movs	r3, #0
c0de73c2:	600b      	str	r3, [r1, #0]
c0de73c4:	444c      	add	r4, r9
c0de73c6:	6864      	ldr	r4, [r4, #4]
c0de73c8:	b1d4      	cbz	r4, c0de7400 <getLayoutAndLayoutObj+0x44>
c0de73ca:	f894 30ad 	ldrb.w	r3, [r4, #173]	@ 0xad
c0de73ce:	f894 50ae 	ldrb.w	r5, [r4, #174]	@ 0xae
c0de73d2:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de73d6:	045d      	lsls	r5, r3, #17
c0de73d8:	d401      	bmi.n	c0de73de <getLayoutAndLayoutObj+0x22>
c0de73da:	2300      	movs	r3, #0
c0de73dc:	e010      	b.n	c0de7400 <getLayoutAndLayoutObj+0x44>
c0de73de:	f44f 75fc 	mov.w	r5, #504	@ 0x1f8
c0de73e2:	ea05 1553 	and.w	r5, r5, r3, lsr #5
c0de73e6:	2300      	movs	r3, #0
c0de73e8:	429d      	cmp	r5, r3
c0de73ea:	d0f6      	beq.n	c0de73da <getLayoutAndLayoutObj+0x1e>
c0de73ec:	18e6      	adds	r6, r4, r3
c0de73ee:	3308      	adds	r3, #8
c0de73f0:	6a36      	ldr	r6, [r6, #32]
c0de73f2:	4286      	cmp	r6, r0
c0de73f4:	d1f8      	bne.n	c0de73e8 <getLayoutAndLayoutObj+0x2c>
c0de73f6:	18e0      	adds	r0, r4, r3
c0de73f8:	2301      	movs	r3, #1
c0de73fa:	600c      	str	r4, [r1, #0]
c0de73fc:	3018      	adds	r0, #24
c0de73fe:	6010      	str	r0, [r2, #0]
c0de7400:	4618      	mov	r0, r3
c0de7402:	bd70      	pop	{r4, r5, r6, pc}
c0de7404:	00000904 	.word	0x00000904

c0de7408 <animTickerCallback>:
c0de7408:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de740a:	483f      	ldr	r0, [pc, #252]	@ (c0de7508 <animTickerCallback+0x100>)
c0de740c:	4448      	add	r0, r9
c0de740e:	6842      	ldr	r2, [r0, #4]
c0de7410:	b3b2      	cbz	r2, c0de7480 <animTickerCallback+0x78>
c0de7412:	f892 00ad 	ldrb.w	r0, [r2, #173]	@ 0xad
c0de7416:	f892 10ae 	ldrb.w	r1, [r2, #174]	@ 0xae
c0de741a:	ea40 2e01 	orr.w	lr, r0, r1, lsl #8
c0de741e:	ea5f 404e 	movs.w	r0, lr, lsl #17
c0de7422:	d52d      	bpl.n	c0de7480 <animTickerCallback+0x78>
c0de7424:	f8d2 c0a4 	ldr.w	ip, [r2, #164]	@ 0xa4
c0de7428:	f1bc 0f00 	cmp.w	ip, #0
c0de742c:	d028      	beq.n	c0de7480 <animTickerCallback+0x78>
c0de742e:	f8d2 40a0 	ldr.w	r4, [r2, #160]	@ 0xa0
c0de7432:	2600      	movs	r6, #0
c0de7434:	f894 5020 	ldrb.w	r5, [r4, #32]
c0de7438:	42b5      	cmp	r5, r6
c0de743a:	d021      	beq.n	c0de7480 <animTickerCallback+0x78>
c0de743c:	4620      	mov	r0, r4
c0de743e:	f810 7f22 	ldrb.w	r7, [r0, #34]!
c0de7442:	7841      	ldrb	r1, [r0, #1]
c0de7444:	7883      	ldrb	r3, [r0, #2]
c0de7446:	78c0      	ldrb	r0, [r0, #3]
c0de7448:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de744c:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7450:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de7454:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de7458:	7ec1      	ldrb	r1, [r0, #27]
c0de745a:	2901      	cmp	r1, #1
c0de745c:	d10e      	bne.n	c0de747c <animTickerCallback+0x74>
c0de745e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7462:	7843      	ldrb	r3, [r0, #1]
c0de7464:	7887      	ldrb	r7, [r0, #2]
c0de7466:	78c0      	ldrb	r0, [r0, #3]
c0de7468:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de746c:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de7470:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de7474:	6840      	ldr	r0, [r0, #4]
c0de7476:	7ec1      	ldrb	r1, [r0, #27]
c0de7478:	2902      	cmp	r1, #2
c0de747a:	d002      	beq.n	c0de7482 <animTickerCallback+0x7a>
c0de747c:	3601      	adds	r6, #1
c0de747e:	e7db      	b.n	c0de7438 <animTickerCallback+0x30>
c0de7480:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de7482:	f89c 1005 	ldrb.w	r1, [ip, #5]
c0de7486:	b171      	cbz	r1, c0de74a6 <animTickerCallback+0x9e>
c0de7488:	f892 40af 	ldrb.w	r4, [r2, #175]	@ 0xaf
c0de748c:	ea5f 714e 	movs.w	r1, lr, lsl #29
c0de7490:	d504      	bpl.n	c0de749c <animTickerCallback+0x94>
c0de7492:	f89c 1004 	ldrb.w	r1, [ip, #4]
c0de7496:	3901      	subs	r1, #1
c0de7498:	42a1      	cmp	r1, r4
c0de749a:	dd0e      	ble.n	c0de74ba <animTickerCallback+0xb2>
c0de749c:	b9ac      	cbnz	r4, c0de74ca <animTickerCallback+0xc2>
c0de749e:	f04e 0e04 	orr.w	lr, lr, #4
c0de74a2:	2400      	movs	r4, #0
c0de74a4:	e00b      	b.n	c0de74be <animTickerCallback+0xb6>
c0de74a6:	f89c 1004 	ldrb.w	r1, [ip, #4]
c0de74aa:	f892 30af 	ldrb.w	r3, [r2, #175]	@ 0xaf
c0de74ae:	3901      	subs	r1, #1
c0de74b0:	4299      	cmp	r1, r3
c0de74b2:	bf14      	ite	ne
c0de74b4:	3301      	addne	r3, #1
c0de74b6:	2300      	moveq	r3, #0
c0de74b8:	e00c      	b.n	c0de74d4 <animTickerCallback+0xcc>
c0de74ba:	f02e 0e04 	bic.w	lr, lr, #4
c0de74be:	ea4f 211e 	mov.w	r1, lr, lsr #8
c0de74c2:	f882 e0ad 	strb.w	lr, [r2, #173]	@ 0xad
c0de74c6:	f882 10ae 	strb.w	r1, [r2, #174]	@ 0xae
c0de74ca:	ea5f 714e 	movs.w	r1, lr, lsl #29
c0de74ce:	bf54      	ite	pl
c0de74d0:	1e63      	subpl	r3, r4, #1
c0de74d2:	1c63      	addmi	r3, r4, #1
c0de74d4:	f882 30af 	strb.w	r3, [r2, #175]	@ 0xaf
c0de74d8:	f8dc 2000 	ldr.w	r2, [ip]
c0de74dc:	b2d9      	uxtb	r1, r3
c0de74de:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de74e2:	4602      	mov	r2, r0
c0de74e4:	f802 1f21 	strb.w	r1, [r2, #33]!
c0de74e8:	0e0b      	lsrs	r3, r1, #24
c0de74ea:	70d3      	strb	r3, [r2, #3]
c0de74ec:	0c0b      	lsrs	r3, r1, #16
c0de74ee:	0a09      	lsrs	r1, r1, #8
c0de74f0:	7093      	strb	r3, [r2, #2]
c0de74f2:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de74f6:	f004 fa80 	bl	c0deb9fa <nbgl_objDraw>
c0de74fa:	2004      	movs	r0, #4
c0de74fc:	2101      	movs	r1, #1
c0de74fe:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de7502:	f004 ba70 	b.w	c0deb9e6 <nbgl_refreshSpecialWithPostRefresh>
c0de7506:	bf00      	nop
c0de7508:	00000904 	.word	0x00000904

c0de750c <OUTLINED_FUNCTION_0>:
c0de750c:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de7510:	3101      	adds	r1, #1
c0de7512:	f880 1020 	strb.w	r1, [r0, #32]
c0de7516:	4770      	bx	lr

c0de7518 <OUTLINED_FUNCTION_1>:
c0de7518:	08c1      	lsrs	r1, r0, #3
c0de751a:	2004      	movs	r0, #4
c0de751c:	f004 ba95 	b.w	c0deba4a <nbgl_objPoolGet>

c0de7520 <OUTLINED_FUNCTION_2>:
c0de7520:	4638      	mov	r0, r7
c0de7522:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de7526:	70c2      	strb	r2, [r0, #3]
c0de7528:	0c0a      	lsrs	r2, r1, #16
c0de752a:	7082      	strb	r2, [r0, #2]
c0de752c:	0a08      	lsrs	r0, r1, #8
c0de752e:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de7532:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de7536:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de753a:	f040 0001 	orr.w	r0, r0, #1
c0de753e:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de7542:	200b      	movs	r0, #11
c0de7544:	f004 ba9a 	b.w	c0deba7c <nbgl_getTextHeightInWidth>

c0de7548 <OUTLINED_FUNCTION_3>:
c0de7548:	2202      	movs	r2, #2
c0de754a:	2600      	movs	r6, #0
c0de754c:	75ba      	strb	r2, [r7, #22]
c0de754e:	465a      	mov	r2, fp
c0de7550:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de7554:	7854      	ldrb	r4, [r2, #1]
c0de7556:	7895      	ldrb	r5, [r2, #2]
c0de7558:	78d2      	ldrb	r2, [r2, #3]
c0de755a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de755e:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de7562:	7ebc      	ldrb	r4, [r7, #26]
c0de7564:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
c0de7568:	7e7b      	ldrb	r3, [r7, #25]
c0de756a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de756e:	4770      	bx	lr

c0de7570 <OUTLINED_FUNCTION_4>:
c0de7570:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de7574:	784c      	ldrb	r4, [r1, #1]
c0de7576:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de757a:	788d      	ldrb	r5, [r1, #2]
c0de757c:	78c9      	ldrb	r1, [r1, #3]
c0de757e:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de7582:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de7586:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de758a:	4770      	bx	lr

c0de758c <OUTLINED_FUNCTION_5>:
c0de758c:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de7590:	70ca      	strb	r2, [r1, #3]
c0de7592:	0c02      	lsrs	r2, r0, #16
c0de7594:	0a00      	lsrs	r0, r0, #8
c0de7596:	708a      	strb	r2, [r1, #2]
c0de7598:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de759c:	68e0      	ldr	r0, [r4, #12]
c0de759e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de75a2:	7843      	ldrb	r3, [r0, #1]
c0de75a4:	f810 cc02 	ldrb.w	ip, [r0, #-2]
c0de75a8:	7882      	ldrb	r2, [r0, #2]
c0de75aa:	78c0      	ldrb	r0, [r0, #3]
c0de75ac:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de75b0:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de75b4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de75b8:	f840 602c 	str.w	r6, [r0, ip, lsl #2]
c0de75bc:	200c      	movs	r0, #12
c0de75be:	4770      	bx	lr

c0de75c0 <OUTLINED_FUNCTION_6>:
c0de75c0:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de75c4:	7843      	ldrb	r3, [r0, #1]
c0de75c6:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de75ca:	7886      	ldrb	r6, [r0, #2]
c0de75cc:	78c0      	ldrb	r0, [r0, #3]
c0de75ce:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de75d2:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de75d6:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de75da:	4770      	bx	lr

c0de75dc <OUTLINED_FUNCTION_7>:
c0de75dc:	f885 0020 	strb.w	r0, [r5, #32]
c0de75e0:	4628      	mov	r0, r5
c0de75e2:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de75e6:	70c2      	strb	r2, [r0, #3]
c0de75e8:	0c0a      	lsrs	r2, r1, #16
c0de75ea:	7082      	strb	r2, [r0, #2]
c0de75ec:	0a08      	lsrs	r0, r1, #8
c0de75ee:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de75f2:	f885 0027 	strb.w	r0, [r5, #39]	@ 0x27
c0de75f6:	f895 0024 	ldrb.w	r0, [r5, #36]	@ 0x24
c0de75fa:	f040 0001 	orr.w	r0, r0, #1
c0de75fe:	f885 0024 	strb.w	r0, [r5, #36]	@ 0x24
c0de7602:	200b      	movs	r0, #11
c0de7604:	f004 ba3a 	b.w	c0deba7c <nbgl_getTextHeightInWidth>

c0de7608 <OUTLINED_FUNCTION_8>:
c0de7608:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de760c:	08c1      	lsrs	r1, r0, #3
c0de760e:	2005      	movs	r0, #5
c0de7610:	f004 ba1b 	b.w	c0deba4a <nbgl_objPoolGet>

c0de7614 <OUTLINED_FUNCTION_9>:
c0de7614:	784b      	ldrb	r3, [r1, #1]
c0de7616:	788e      	ldrb	r6, [r1, #2]
c0de7618:	78c9      	ldrb	r1, [r1, #3]
c0de761a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de761e:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de7622:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de7626:	4770      	bx	lr

c0de7628 <OUTLINED_FUNCTION_10>:
c0de7628:	465a      	mov	r2, fp
c0de762a:	f812 3f22 	ldrb.w	r3, [r2, #34]!
c0de762e:	7854      	ldrb	r4, [r2, #1]
c0de7630:	7895      	ldrb	r5, [r2, #2]
c0de7632:	78d2      	ldrb	r2, [r2, #3]
c0de7634:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de7638:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de763c:	463d      	mov	r5, r7
c0de763e:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
c0de7642:	eb02 0481 	add.w	r4, r2, r1, lsl #2
c0de7646:	f854 3c04 	ldr.w	r3, [r4, #-4]
c0de764a:	f805 3f12 	strb.w	r3, [r5, #18]!
c0de764e:	0e1e      	lsrs	r6, r3, #24
c0de7650:	70ee      	strb	r6, [r5, #3]
c0de7652:	0c1e      	lsrs	r6, r3, #16
c0de7654:	0a1b      	lsrs	r3, r3, #8
c0de7656:	4770      	bx	lr

c0de7658 <OUTLINED_FUNCTION_11>:
c0de7658:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de765c:	70c2      	strb	r2, [r0, #3]
c0de765e:	0c0a      	lsrs	r2, r1, #16
c0de7660:	7082      	strb	r2, [r0, #2]
c0de7662:	0a08      	lsrs	r0, r1, #8
c0de7664:	4770      	bx	lr

c0de7666 <OUTLINED_FUNCTION_12>:
c0de7666:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de766a:	70ca      	strb	r2, [r1, #3]
c0de766c:	0c02      	lsrs	r2, r0, #16
c0de766e:	0a00      	lsrs	r0, r0, #8
c0de7670:	708a      	strb	r2, [r1, #2]
c0de7672:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de7676:	6920      	ldr	r0, [r4, #16]
c0de7678:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de767c:	7843      	ldrb	r3, [r0, #1]
c0de767e:	f810 cc02 	ldrb.w	ip, [r0, #-2]
c0de7682:	7882      	ldrb	r2, [r0, #2]
c0de7684:	78c0      	ldrb	r0, [r0, #3]
c0de7686:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de768a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de768e:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de7692:	4770      	bx	lr

c0de7694 <OUTLINED_FUNCTION_13>:
c0de7694:	08c1      	lsrs	r1, r0, #3
c0de7696:	2005      	movs	r0, #5
c0de7698:	f004 b9d7 	b.w	c0deba4a <nbgl_objPoolGet>

c0de769c <OUTLINED_FUNCTION_14>:
c0de769c:	6920      	ldr	r0, [r4, #16]
c0de769e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de76a2:	7843      	ldrb	r3, [r0, #1]
c0de76a4:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de76a8:	7887      	ldrb	r7, [r0, #2]
c0de76aa:	78c0      	ldrb	r0, [r0, #3]
c0de76ac:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de76b0:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de76b4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de76b8:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de76bc:	200c      	movs	r0, #12
c0de76be:	f886 801c 	strb.w	r8, [r6, #28]
c0de76c2:	f886 0023 	strb.w	r0, [r6, #35]	@ 0x23
c0de76c6:	4770      	bx	lr

c0de76c8 <OUTLINED_FUNCTION_15>:
c0de76c8:	4620      	mov	r0, r4
c0de76ca:	4631      	mov	r1, r6
c0de76cc:	f7fc bb88 	b.w	c0de3de0 <layoutAddCallbackObj>

c0de76d0 <OUTLINED_FUNCTION_16>:
c0de76d0:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de76d4:	4630      	mov	r0, r6
c0de76d6:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de76da:	70c2      	strb	r2, [r0, #3]
c0de76dc:	0c0a      	lsrs	r2, r1, #16
c0de76de:	7082      	strb	r2, [r0, #2]
c0de76e0:	0a08      	lsrs	r0, r1, #8
c0de76e2:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de76e6:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de76ea:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de76ee:	f040 0001 	orr.w	r0, r0, #1
c0de76f2:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de76f6:	200b      	movs	r0, #11
c0de76f8:	4770      	bx	lr

c0de76fa <OUTLINED_FUNCTION_17>:
c0de76fa:	70ca      	strb	r2, [r1, #3]
c0de76fc:	0c02      	lsrs	r2, r0, #16
c0de76fe:	0a00      	lsrs	r0, r0, #8
c0de7700:	708a      	strb	r2, [r1, #2]
c0de7702:	4770      	bx	lr

c0de7704 <OUTLINED_FUNCTION_18>:
c0de7704:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7708:	7842      	ldrb	r2, [r0, #1]
c0de770a:	7883      	ldrb	r3, [r0, #2]
c0de770c:	78c0      	ldrb	r0, [r0, #3]
c0de770e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7712:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7716:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de771a:	4770      	bx	lr

c0de771c <OUTLINED_FUNCTION_19>:
c0de771c:	08c1      	lsrs	r1, r0, #3
c0de771e:	2001      	movs	r0, #1
c0de7720:	f004 b993 	b.w	c0deba4a <nbgl_objPoolGet>

c0de7724 <OUTLINED_FUNCTION_20>:
c0de7724:	f887 0020 	strb.w	r0, [r7, #32]
c0de7728:	4638      	mov	r0, r7
c0de772a:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de772e:	70c2      	strb	r2, [r0, #3]
c0de7730:	0c0a      	lsrs	r2, r1, #16
c0de7732:	7082      	strb	r2, [r0, #2]
c0de7734:	0a08      	lsrs	r0, r1, #8
c0de7736:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de773a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de773e:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de7742:	f040 0001 	orr.w	r0, r0, #1
c0de7746:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de774a:	4770      	bx	lr

c0de774c <OUTLINED_FUNCTION_21>:
c0de774c:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de7750:	08c0      	lsrs	r0, r0, #3
c0de7752:	f7fe b9d3 	b.w	c0de5afc <createHorizontalLine>

c0de7756 <OUTLINED_FUNCTION_22>:
c0de7756:	6868      	ldr	r0, [r5, #4]
c0de7758:	f004 bb64 	b.w	c0debe24 <pic>

c0de775c <OUTLINED_FUNCTION_23>:
c0de775c:	7842      	ldrb	r2, [r0, #1]
c0de775e:	7883      	ldrb	r3, [r0, #2]
c0de7760:	78c0      	ldrb	r0, [r0, #3]
c0de7762:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7766:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de776a:	4770      	bx	lr

c0de776c <OUTLINED_FUNCTION_24>:
c0de776c:	f99a 00ae 	ldrsb.w	r0, [sl, #174]	@ 0xae
c0de7770:	f89a 10ad 	ldrb.w	r1, [sl, #173]	@ 0xad
c0de7774:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de7778:	2103      	movs	r1, #3
c0de777a:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de777e:	4770      	bx	lr

c0de7780 <OUTLINED_FUNCTION_25>:
c0de7780:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de7784:	784c      	ldrb	r4, [r1, #1]
c0de7786:	f811 cc02 	ldrb.w	ip, [r1, #-2]
c0de778a:	788b      	ldrb	r3, [r1, #2]
c0de778c:	78c9      	ldrb	r1, [r1, #3]
c0de778e:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de7792:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de7796:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de779a:	f841 702c 	str.w	r7, [r1, ip, lsl #2]
c0de779e:	4770      	bx	lr

c0de77a0 <OUTLINED_FUNCTION_26>:
c0de77a0:	08c1      	lsrs	r1, r0, #3
c0de77a2:	2002      	movs	r0, #2
c0de77a4:	f004 b951 	b.w	c0deba4a <nbgl_objPoolGet>

c0de77a8 <OUTLINED_FUNCTION_27>:
c0de77a8:	68e1      	ldr	r1, [r4, #12]
c0de77aa:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de77ae:	784e      	ldrb	r6, [r1, #1]
c0de77b0:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de77b4:	788f      	ldrb	r7, [r1, #2]
c0de77b6:	78c9      	ldrb	r1, [r1, #3]
c0de77b8:	ea42 2206 	orr.w	r2, r2, r6, lsl #8
c0de77bc:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de77c0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de77c4:	4770      	bx	lr

c0de77c6 <OUTLINED_FUNCTION_28>:
c0de77c6:	70ca      	strb	r2, [r1, #3]
c0de77c8:	0c02      	lsrs	r2, r0, #16
c0de77ca:	0a00      	lsrs	r0, r0, #8
c0de77cc:	708a      	strb	r2, [r1, #2]
c0de77ce:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de77d2:	6920      	ldr	r0, [r4, #16]
c0de77d4:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de77d8:	7843      	ldrb	r3, [r0, #1]
c0de77da:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de77de:	7887      	ldrb	r7, [r0, #2]
c0de77e0:	78c0      	ldrb	r0, [r0, #3]
c0de77e2:	4770      	bx	lr

c0de77e4 <OUTLINED_FUNCTION_29>:
c0de77e4:	f801 0f2e 	strb.w	r0, [r1, #46]!
c0de77e8:	70ca      	strb	r2, [r1, #3]
c0de77ea:	0c02      	lsrs	r2, r0, #16
c0de77ec:	0a00      	lsrs	r0, r0, #8
c0de77ee:	708a      	strb	r2, [r1, #2]
c0de77f0:	f886 002f 	strb.w	r0, [r6, #47]	@ 0x2f
c0de77f4:	4770      	bx	lr

c0de77f6 <OUTLINED_FUNCTION_30>:
c0de77f6:	3101      	adds	r1, #1
c0de77f8:	f842 7026 	str.w	r7, [r2, r6, lsl #2]
c0de77fc:	f88b 1020 	strb.w	r1, [fp, #32]
c0de7800:	9900      	ldr	r1, [sp, #0]
c0de7802:	4408      	add	r0, r1
c0de7804:	18c1      	adds	r1, r0, r3
c0de7806:	4770      	bx	lr

c0de7808 <OUTLINED_FUNCTION_31>:
c0de7808:	f801 0f25 	strb.w	r0, [r1, #37]!
c0de780c:	70ca      	strb	r2, [r1, #3]
c0de780e:	0c02      	lsrs	r2, r0, #16
c0de7810:	0a00      	lsrs	r0, r0, #8
c0de7812:	708a      	strb	r2, [r1, #2]
c0de7814:	f886 0026 	strb.w	r0, [r6, #38]	@ 0x26
c0de7818:	4770      	bx	lr

c0de781a <OUTLINED_FUNCTION_32>:
c0de781a:	f8d8 00a0 	ldr.w	r0, [r8, #160]	@ 0xa0
c0de781e:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de7822:	3101      	adds	r1, #1
c0de7824:	f880 1020 	strb.w	r1, [r0, #32]
c0de7828:	f898 00ad 	ldrb.w	r0, [r8, #173]	@ 0xad
c0de782c:	08c1      	lsrs	r1, r0, #3
c0de782e:	2004      	movs	r0, #4
c0de7830:	4730      	bx	r6

c0de7832 <OUTLINED_FUNCTION_33>:
c0de7832:	77b0      	strb	r0, [r6, #30]
c0de7834:	6960      	ldr	r0, [r4, #20]
c0de7836:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de783a:	7842      	ldrb	r2, [r0, #1]
c0de783c:	7883      	ldrb	r3, [r0, #2]
c0de783e:	78c0      	ldrb	r0, [r0, #3]
c0de7840:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7844:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7848:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de784c:	4770      	bx	lr

c0de784e <OUTLINED_FUNCTION_34>:
c0de784e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7852:	7843      	ldrb	r3, [r0, #1]
c0de7854:	f810 2c02 	ldrb.w	r2, [r0, #-2]
c0de7858:	7884      	ldrb	r4, [r0, #2]
c0de785a:	78c0      	ldrb	r0, [r0, #3]
c0de785c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7860:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de7864:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de7868:	4770      	bx	lr

c0de786a <OUTLINED_FUNCTION_35>:
c0de786a:	f886 0021 	strb.w	r0, [r6, #33]	@ 0x21
c0de786e:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de7872:	f040 0001 	orr.w	r0, r0, #1
c0de7876:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de787a:	4630      	mov	r0, r6
c0de787c:	f004 b8bd 	b.w	c0deb9fa <nbgl_objDraw>

c0de7880 <OUTLINED_FUNCTION_36>:
c0de7880:	7981      	ldrb	r1, [r0, #6]
c0de7882:	79c0      	ldrb	r0, [r0, #7]
c0de7884:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de7888:	4770      	bx	lr

c0de788a <OUTLINED_FUNCTION_37>:
c0de788a:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de788e:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de7892:	4770      	bx	lr

c0de7894 <OUTLINED_FUNCTION_38>:
c0de7894:	f810 4f22 	ldrb.w	r4, [r0, #34]!
c0de7898:	7845      	ldrb	r5, [r0, #1]
c0de789a:	7886      	ldrb	r6, [r0, #2]
c0de789c:	78c0      	ldrb	r0, [r0, #3]
c0de789e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de78a2:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de78a6:	ea44 4000 	orr.w	r0, r4, r0, lsl #16
c0de78aa:	4770      	bx	lr

c0de78ac <OUTLINED_FUNCTION_39>:
c0de78ac:	0a01      	lsrs	r1, r0, #8
c0de78ae:	71b8      	strb	r0, [r7, #6]
c0de78b0:	71f9      	strb	r1, [r7, #7]
c0de78b2:	f89b 1020 	ldrb.w	r1, [fp, #32]
c0de78b6:	2900      	cmp	r1, #0
c0de78b8:	4770      	bx	lr

c0de78ba <OUTLINED_FUNCTION_40>:
c0de78ba:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de78be:	4770      	bx	lr

c0de78c0 <OUTLINED_FUNCTION_41>:
c0de78c0:	200c      	movs	r0, #12
c0de78c2:	f886 b01c 	strb.w	fp, [r6, #28]
c0de78c6:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de78ca:	2005      	movs	r0, #5
c0de78cc:	4770      	bx	lr

c0de78ce <OUTLINED_FUNCTION_42>:
c0de78ce:	f99a 00ae 	ldrsb.w	r0, [sl, #174]	@ 0xae
c0de78d2:	f89a 10ad 	ldrb.w	r1, [sl, #173]	@ 0xad
c0de78d6:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de78da:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de78de:	f04f 0003 	mov.w	r0, #3
c0de78e2:	4770      	bx	lr

c0de78e4 <OUTLINED_FUNCTION_43>:
c0de78e4:	4630      	mov	r0, r6
c0de78e6:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de78ea:	70c2      	strb	r2, [r0, #3]
c0de78ec:	0c0a      	lsrs	r2, r1, #16
c0de78ee:	7082      	strb	r2, [r0, #2]
c0de78f0:	0a08      	lsrs	r0, r1, #8
c0de78f2:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de78f6:	4770      	bx	lr

c0de78f8 <OUTLINED_FUNCTION_44>:
c0de78f8:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de78fc:	784b      	ldrb	r3, [r1, #1]
c0de78fe:	788f      	ldrb	r7, [r1, #2]
c0de7900:	78c9      	ldrb	r1, [r1, #3]
c0de7902:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de7906:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de790a:	4770      	bx	lr

c0de790c <OUTLINED_FUNCTION_45>:
c0de790c:	7842      	ldrb	r2, [r0, #1]
c0de790e:	7883      	ldrb	r3, [r0, #2]
c0de7910:	78c0      	ldrb	r0, [r0, #3]
c0de7912:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7916:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de791a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de791e:	4770      	bx	lr

c0de7920 <OUTLINED_FUNCTION_46>:
c0de7920:	68a8      	ldr	r0, [r5, #8]
c0de7922:	f004 ba7f 	b.w	c0debe24 <pic>

c0de7926 <OUTLINED_FUNCTION_47>:
c0de7926:	7082      	strb	r2, [r0, #2]
c0de7928:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de792c:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de7930:	f040 0001 	orr.w	r0, r0, #1
c0de7934:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de7938:	4770      	bx	lr

c0de793a <OUTLINED_FUNCTION_48>:
c0de793a:	f8d4 00a0 	ldr.w	r0, [r4, #160]	@ 0xa0
c0de793e:	f890 1020 	ldrb.w	r1, [r0, #32]
c0de7942:	3101      	adds	r1, #1
c0de7944:	f880 1020 	strb.w	r1, [r0, #32]
c0de7948:	2000      	movs	r0, #0
c0de794a:	4770      	bx	lr

c0de794c <OUTLINED_FUNCTION_49>:
c0de794c:	2001      	movs	r0, #1
c0de794e:	0e0a      	lsrs	r2, r1, #24
c0de7950:	7178      	strb	r0, [r7, #5]
c0de7952:	20a0      	movs	r0, #160	@ 0xa0
c0de7954:	7138      	strb	r0, [r7, #4]
c0de7956:	200b      	movs	r0, #11
c0de7958:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de795c:	4770      	bx	lr

c0de795e <OUTLINED_FUNCTION_50>:
c0de795e:	f891 0020 	ldrb.w	r0, [r1, #32]
c0de7962:	3001      	adds	r0, #1
c0de7964:	f881 0020 	strb.w	r0, [r1, #32]
c0de7968:	4770      	bx	lr

c0de796a <OUTLINED_FUNCTION_51>:
c0de796a:	2100      	movs	r1, #0
c0de796c:	7146      	strb	r6, [r0, #5]
c0de796e:	77c1      	strb	r1, [r0, #31]
c0de7970:	21e0      	movs	r1, #224	@ 0xe0
c0de7972:	7101      	strb	r1, [r0, #4]
c0de7974:	4770      	bx	lr

c0de7976 <OUTLINED_FUNCTION_52>:
c0de7976:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de797a:	2005      	movs	r0, #5
c0de797c:	f886 0020 	strb.w	r0, [r6, #32]
c0de7980:	4770      	bx	lr

c0de7982 <OUTLINED_FUNCTION_53>:
c0de7982:	70ca      	strb	r2, [r1, #3]
c0de7984:	0c02      	lsrs	r2, r0, #16
c0de7986:	0a00      	lsrs	r0, r0, #8
c0de7988:	708a      	strb	r2, [r1, #2]
c0de798a:	7048      	strb	r0, [r1, #1]
c0de798c:	4770      	bx	lr

c0de798e <OUTLINED_FUNCTION_54>:
c0de798e:	4631      	mov	r1, r6
c0de7990:	0e02      	lsrs	r2, r0, #24
c0de7992:	f886 a01d 	strb.w	sl, [r6, #29]
c0de7996:	4770      	bx	lr

c0de7998 <OUTLINED_FUNCTION_55>:
c0de7998:	2301      	movs	r3, #1
c0de799a:	7178      	strb	r0, [r7, #5]
c0de799c:	20a0      	movs	r0, #160	@ 0xa0
c0de799e:	0e0a      	lsrs	r2, r1, #24
c0de79a0:	7138      	strb	r0, [r7, #4]
c0de79a2:	4770      	bx	lr

c0de79a4 <OUTLINED_FUNCTION_56>:
c0de79a4:	08c1      	lsrs	r1, r0, #3
c0de79a6:	2004      	movs	r0, #4
c0de79a8:	f004 b854 	b.w	c0deba54 <nbgl_containerPoolGet>

c0de79ac <OUTLINED_FUNCTION_57>:
c0de79ac:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de79b0:	08c1      	lsrs	r1, r0, #3
c0de79b2:	2005      	movs	r0, #5
c0de79b4:	f004 b84e 	b.w	c0deba54 <nbgl_containerPoolGet>

c0de79b8 <OUTLINED_FUNCTION_58>:
c0de79b8:	f894 00ad 	ldrb.w	r0, [r4, #173]	@ 0xad
c0de79bc:	08c1      	lsrs	r1, r0, #3
c0de79be:	2003      	movs	r0, #3
c0de79c0:	f004 b843 	b.w	c0deba4a <nbgl_objPoolGet>

c0de79c4 <OUTLINED_FUNCTION_59>:
c0de79c4:	71d1      	strb	r1, [r2, #7]
c0de79c6:	7190      	strb	r0, [r2, #6]
c0de79c8:	f892 0020 	ldrb.w	r0, [r2, #32]
c0de79cc:	3001      	adds	r0, #1
c0de79ce:	f882 0020 	strb.w	r0, [r2, #32]
c0de79d2:	4770      	bx	lr

c0de79d4 <OUTLINED_FUNCTION_60>:
c0de79d4:	7801      	ldrb	r1, [r0, #0]
c0de79d6:	7840      	ldrb	r0, [r0, #1]
c0de79d8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de79dc:	f64f 71f0 	movw	r1, #65520	@ 0xfff0
c0de79e0:	1a08      	subs	r0, r1, r0
c0de79e2:	4770      	bx	lr

c0de79e4 <OUTLINED_FUNCTION_61>:
c0de79e4:	f005 0301 	and.w	r3, r5, #1
c0de79e8:	f004 b848 	b.w	c0deba7c <nbgl_getTextHeightInWidth>

c0de79ec <OUTLINED_FUNCTION_62>:
c0de79ec:	200d      	movs	r0, #13
c0de79ee:	f004 b845 	b.w	c0deba7c <nbgl_getTextHeightInWidth>

c0de79f2 <OUTLINED_FUNCTION_63>:
c0de79f2:	7842      	ldrb	r2, [r0, #1]
c0de79f4:	7884      	ldrb	r4, [r0, #2]
c0de79f6:	78c0      	ldrb	r0, [r0, #3]
c0de79f8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de79fc:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de7a00:	4770      	bx	lr

c0de7a02 <OUTLINED_FUNCTION_64>:
c0de7a02:	4604      	mov	r4, r0
c0de7a04:	f890 00ad 	ldrb.w	r0, [r0, #173]	@ 0xad
c0de7a08:	4770      	bx	lr

c0de7a0a <OUTLINED_FUNCTION_65>:
c0de7a0a:	758a      	strb	r2, [r1, #22]
c0de7a0c:	460a      	mov	r2, r1
c0de7a0e:	f802 0f22 	strb.w	r0, [r2, #34]!
c0de7a12:	0c00      	lsrs	r0, r0, #16
c0de7a14:	7090      	strb	r0, [r2, #2]
c0de7a16:	4770      	bx	lr

c0de7a18 <OUTLINED_FUNCTION_66>:
c0de7a18:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de7a1c:	7893      	ldrb	r3, [r2, #2]
c0de7a1e:	78d2      	ldrb	r2, [r2, #3]
c0de7a20:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de7a24:	4770      	bx	lr

c0de7a26 <OUTLINED_FUNCTION_67>:
c0de7a26:	f88d 0010 	strb.w	r0, [sp, #16]
c0de7a2a:	8928      	ldrh	r0, [r5, #8]
c0de7a2c:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de7a30:	4640      	mov	r0, r8
c0de7a32:	4770      	bx	lr

c0de7a34 <OUTLINED_FUNCTION_68>:
c0de7a34:	f897 00ad 	ldrb.w	r0, [r7, #173]	@ 0xad
c0de7a38:	08c1      	lsrs	r1, r0, #3
c0de7a3a:	2004      	movs	r0, #4
c0de7a3c:	4720      	bx	r4

c0de7a3e <OUTLINED_FUNCTION_69>:
c0de7a3e:	70e9      	strb	r1, [r5, #3]
c0de7a40:	0c01      	lsrs	r1, r0, #16
c0de7a42:	0a00      	lsrs	r0, r0, #8
c0de7a44:	70a9      	strb	r1, [r5, #2]
c0de7a46:	f88a 0023 	strb.w	r0, [sl, #35]	@ 0x23
c0de7a4a:	4770      	bx	lr

c0de7a4c <OUTLINED_FUNCTION_70>:
c0de7a4c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7a50:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de7a54:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de7a58:	4770      	bx	lr

c0de7a5a <OUTLINED_FUNCTION_71>:
c0de7a5a:	f886 a018 	strb.w	sl, [r6, #24]
c0de7a5e:	f886 8016 	strb.w	r8, [r6, #22]
c0de7a62:	4770      	bx	lr

c0de7a64 <OUTLINED_FUNCTION_72>:
c0de7a64:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de7a68:	7802      	ldrb	r2, [r0, #0]
c0de7a6a:	7840      	ldrb	r0, [r0, #1]
c0de7a6c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7a70:	4770      	bx	lr

c0de7a72 <OUTLINED_FUNCTION_73>:
c0de7a72:	70f1      	strb	r1, [r6, #3]
c0de7a74:	0c01      	lsrs	r1, r0, #16
c0de7a76:	0a00      	lsrs	r0, r0, #8
c0de7a78:	70b1      	strb	r1, [r6, #2]
c0de7a7a:	f88b 0023 	strb.w	r0, [fp, #35]	@ 0x23
c0de7a7e:	4770      	bx	lr

c0de7a80 <OUTLINED_FUNCTION_74>:
c0de7a80:	7a2a      	ldrb	r2, [r5, #8]
c0de7a82:	7a6b      	ldrb	r3, [r5, #9]
c0de7a84:	4620      	mov	r0, r4
c0de7a86:	f7fc b9ab 	b.w	c0de3de0 <layoutAddCallbackObj>

c0de7a8a <OUTLINED_FUNCTION_75>:
c0de7a8a:	f841 4022 	str.w	r4, [r1, r2, lsl #2]
c0de7a8e:	2100      	movs	r1, #0
c0de7a90:	7621      	strb	r1, [r4, #24]
c0de7a92:	2110      	movs	r1, #16
c0de7a94:	75e1      	strb	r1, [r4, #23]
c0de7a96:	4770      	bx	lr

c0de7a98 <layoutNavigationCallback>:
c0de7a98:	b570      	push	{r4, r5, r6, lr}
c0de7a9a:	290a      	cmp	r1, #10
c0de7a9c:	d029      	beq.n	c0de7af2 <layoutNavigationCallback+0x5a>
c0de7a9e:	2909      	cmp	r1, #9
c0de7aa0:	d02b      	beq.n	c0de7afa <layoutNavigationCallback+0x62>
c0de7aa2:	2900      	cmp	r1, #0
c0de7aa4:	d14a      	bne.n	c0de7b3c <layoutNavigationCallback+0xa4>
c0de7aa6:	4604      	mov	r4, r0
c0de7aa8:	7bc1      	ldrb	r1, [r0, #15]
c0de7aaa:	f814 5f0e 	ldrb.w	r5, [r4, #14]!
c0de7aae:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de7ab2:	78a5      	ldrb	r5, [r4, #2]
c0de7ab4:	78e4      	ldrb	r4, [r4, #3]
c0de7ab6:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de7aba:	ea41 4104 	orr.w	r1, r1, r4, lsl #16
c0de7abe:	460d      	mov	r5, r1
c0de7ac0:	f891 4023 	ldrb.w	r4, [r1, #35]	@ 0x23
c0de7ac4:	f815 6f22 	ldrb.w	r6, [r5, #34]!
c0de7ac8:	ea46 2404 	orr.w	r4, r6, r4, lsl #8
c0de7acc:	78ae      	ldrb	r6, [r5, #2]
c0de7ace:	78ed      	ldrb	r5, [r5, #3]
c0de7ad0:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
c0de7ad4:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0de7ad8:	6825      	ldr	r5, [r4, #0]
c0de7ada:	4285      	cmp	r5, r0
c0de7adc:	d01e      	beq.n	c0de7b1c <layoutNavigationCallback+0x84>
c0de7ade:	6865      	ldr	r5, [r4, #4]
c0de7ae0:	4285      	cmp	r5, r0
c0de7ae2:	d01e      	beq.n	c0de7b22 <layoutNavigationCallback+0x8a>
c0de7ae4:	68a4      	ldr	r4, [r4, #8]
c0de7ae6:	4284      	cmp	r4, r0
c0de7ae8:	d128      	bne.n	c0de7b3c <layoutNavigationCallback+0xa4>
c0de7aea:	2a01      	cmp	r2, #1
c0de7aec:	d81d      	bhi.n	c0de7b2a <layoutNavigationCallback+0x92>
c0de7aee:	7818      	ldrb	r0, [r3, #0]
c0de7af0:	e01f      	b.n	c0de7b32 <layoutNavigationCallback+0x9a>
c0de7af2:	2a01      	cmp	r2, #1
c0de7af4:	d805      	bhi.n	c0de7b02 <layoutNavigationCallback+0x6a>
c0de7af6:	7819      	ldrb	r1, [r3, #0]
c0de7af8:	e007      	b.n	c0de7b0a <layoutNavigationCallback+0x72>
c0de7afa:	7819      	ldrb	r1, [r3, #0]
c0de7afc:	b1f1      	cbz	r1, c0de7b3c <layoutNavigationCallback+0xa4>
c0de7afe:	3901      	subs	r1, #1
c0de7b00:	e004      	b.n	c0de7b0c <layoutNavigationCallback+0x74>
c0de7b02:	7819      	ldrb	r1, [r3, #0]
c0de7b04:	1e54      	subs	r4, r2, #1
c0de7b06:	428c      	cmp	r4, r1
c0de7b08:	d918      	bls.n	c0de7b3c <layoutNavigationCallback+0xa4>
c0de7b0a:	3101      	adds	r1, #1
c0de7b0c:	7019      	strb	r1, [r3, #0]
c0de7b0e:	b2cb      	uxtb	r3, r1
c0de7b10:	4611      	mov	r1, r2
c0de7b12:	461a      	mov	r2, r3
c0de7b14:	f000 f814 	bl	c0de7b40 <configButtons>
c0de7b18:	2001      	movs	r0, #1
c0de7b1a:	bd70      	pop	{r4, r5, r6, pc}
c0de7b1c:	20ff      	movs	r0, #255	@ 0xff
c0de7b1e:	7018      	strb	r0, [r3, #0]
c0de7b20:	e7fa      	b.n	c0de7b18 <layoutNavigationCallback+0x80>
c0de7b22:	7818      	ldrb	r0, [r3, #0]
c0de7b24:	b150      	cbz	r0, c0de7b3c <layoutNavigationCallback+0xa4>
c0de7b26:	3801      	subs	r0, #1
c0de7b28:	e004      	b.n	c0de7b34 <layoutNavigationCallback+0x9c>
c0de7b2a:	7818      	ldrb	r0, [r3, #0]
c0de7b2c:	1e54      	subs	r4, r2, #1
c0de7b2e:	4284      	cmp	r4, r0
c0de7b30:	d904      	bls.n	c0de7b3c <layoutNavigationCallback+0xa4>
c0de7b32:	3001      	adds	r0, #1
c0de7b34:	7018      	strb	r0, [r3, #0]
c0de7b36:	b2c3      	uxtb	r3, r0
c0de7b38:	4608      	mov	r0, r1
c0de7b3a:	e7e9      	b.n	c0de7b10 <layoutNavigationCallback+0x78>
c0de7b3c:	2000      	movs	r0, #0
c0de7b3e:	bd70      	pop	{r4, r5, r6, pc}

c0de7b40 <configButtons>:
c0de7b40:	b5b0      	push	{r4, r5, r7, lr}
c0de7b42:	f810 3f22 	ldrb.w	r3, [r0, #34]!
c0de7b46:	7844      	ldrb	r4, [r0, #1]
c0de7b48:	7885      	ldrb	r5, [r0, #2]
c0de7b4a:	78c0      	ldrb	r0, [r0, #3]
c0de7b4c:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7b50:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de7b54:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
c0de7b58:	e9d0 3001 	ldrd	r3, r0, [r0, #4]
c0de7b5c:	b12b      	cbz	r3, c0de7b6a <configButtons+0x2a>
c0de7b5e:	fab2 f482 	clz	r4, r2
c0de7b62:	0964      	lsrs	r4, r4, #5
c0de7b64:	0064      	lsls	r4, r4, #1
c0de7b66:	f883 4021 	strb.w	r4, [r3, #33]	@ 0x21
c0de7b6a:	2902      	cmp	r1, #2
c0de7b6c:	d307      	bcc.n	c0de7b7e <configButtons+0x3e>
c0de7b6e:	43d2      	mvns	r2, r2
c0de7b70:	4411      	add	r1, r2
c0de7b72:	fab1 f181 	clz	r1, r1
c0de7b76:	0949      	lsrs	r1, r1, #5
c0de7b78:	0049      	lsls	r1, r1, #1
c0de7b7a:	f880 1021 	strb.w	r1, [r0, #33]	@ 0x21
c0de7b7e:	bdb0      	pop	{r4, r5, r7, pc}

c0de7b80 <layoutNavigationPopulate>:
c0de7b80:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7b84:	4680      	mov	r8, r0
c0de7b86:	78c8      	ldrb	r0, [r1, #3]
c0de7b88:	4616      	mov	r6, r2
c0de7b8a:	460d      	mov	r5, r1
c0de7b8c:	b340      	cbz	r0, c0de7be0 <layoutNavigationPopulate+0x60>
c0de7b8e:	2005      	movs	r0, #5
c0de7b90:	4631      	mov	r1, r6
c0de7b92:	2405      	movs	r4, #5
c0de7b94:	f003 ff59 	bl	c0deba4a <nbgl_objPoolGet>
c0de7b98:	4978      	ldr	r1, [pc, #480]	@ (c0de7d7c <layoutNavigationPopulate+0x1fc>)
c0de7b9a:	4479      	add	r1, pc
c0de7b9c:	f000 f903 	bl	c0de7da6 <OUTLINED_FUNCTION_1>
c0de7ba0:	70d3      	strb	r3, [r2, #3]
c0de7ba2:	7091      	strb	r1, [r2, #2]
c0de7ba4:	2258      	movs	r2, #88	@ 0x58
c0de7ba6:	2303      	movs	r3, #3
c0de7ba8:	2100      	movs	r1, #0
c0de7baa:	7182      	strb	r2, [r0, #6]
c0de7bac:	7102      	strb	r2, [r0, #4]
c0de7bae:	2201      	movs	r2, #1
c0de7bb0:	f880 3020 	strb.w	r3, [r0, #32]
c0de7bb4:	77c3      	strb	r3, [r0, #31]
c0de7bb6:	2304      	movs	r3, #4
c0de7bb8:	71c1      	strb	r1, [r0, #7]
c0de7bba:	7141      	strb	r1, [r0, #5]
c0de7bbc:	7601      	strb	r1, [r0, #24]
c0de7bbe:	7741      	strb	r1, [r0, #29]
c0de7bc0:	7702      	strb	r2, [r0, #28]
c0de7bc2:	7782      	strb	r2, [r0, #30]
c0de7bc4:	f880 3022 	strb.w	r3, [r0, #34]	@ 0x22
c0de7bc8:	786a      	ldrb	r2, [r5, #1]
c0de7bca:	2a01      	cmp	r2, #1
c0de7bcc:	bf88      	it	hi
c0de7bce:	2404      	movhi	r4, #4
c0de7bd0:	7584      	strb	r4, [r0, #22]
c0de7bd2:	bf88      	it	hi
c0de7bd4:	2101      	movhi	r1, #1
c0de7bd6:	00c9      	lsls	r1, r1, #3
c0de7bd8:	75c1      	strb	r1, [r0, #23]
c0de7bda:	f000 f8d7 	bl	c0de7d8c <OUTLINED_FUNCTION_0>
c0de7bde:	6008      	str	r0, [r1, #0]
c0de7be0:	7928      	ldrb	r0, [r5, #4]
c0de7be2:	b318      	cbz	r0, c0de7c2c <layoutNavigationPopulate+0xac>
c0de7be4:	2005      	movs	r0, #5
c0de7be6:	4631      	mov	r1, r6
c0de7be8:	f003 ff2f 	bl	c0deba4a <nbgl_objPoolGet>
c0de7bec:	4964      	ldr	r1, [pc, #400]	@ (c0de7d80 <layoutNavigationPopulate+0x200>)
c0de7bee:	4479      	add	r1, pc
c0de7bf0:	f000 f8d9 	bl	c0de7da6 <OUTLINED_FUNCTION_1>
c0de7bf4:	7091      	strb	r1, [r2, #2]
c0de7bf6:	2100      	movs	r1, #0
c0de7bf8:	70d3      	strb	r3, [r2, #3]
c0de7bfa:	2260      	movs	r2, #96	@ 0x60
c0de7bfc:	2301      	movs	r3, #1
c0de7bfe:	71c1      	strb	r1, [r0, #7]
c0de7c00:	7141      	strb	r1, [r0, #5]
c0de7c02:	7741      	strb	r1, [r0, #29]
c0de7c04:	7601      	strb	r1, [r0, #24]
c0de7c06:	2103      	movs	r1, #3
c0de7c08:	7182      	strb	r2, [r0, #6]
c0de7c0a:	2268      	movs	r2, #104	@ 0x68
c0de7c0c:	7703      	strb	r3, [r0, #28]
c0de7c0e:	f880 1020 	strb.w	r1, [r0, #32]
c0de7c12:	77c1      	strb	r1, [r0, #31]
c0de7c14:	2104      	movs	r1, #4
c0de7c16:	7102      	strb	r2, [r0, #4]
c0de7c18:	75c2      	strb	r2, [r0, #23]
c0de7c1a:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de7c1e:	2102      	movs	r1, #2
c0de7c20:	7781      	strb	r1, [r0, #30]
c0de7c22:	2106      	movs	r1, #6
c0de7c24:	7581      	strb	r1, [r0, #22]
c0de7c26:	f000 f8b1 	bl	c0de7d8c <OUTLINED_FUNCTION_0>
c0de7c2a:	6048      	str	r0, [r1, #4]
c0de7c2c:	2005      	movs	r0, #5
c0de7c2e:	4631      	mov	r1, r6
c0de7c30:	f003 ff0b 	bl	c0deba4a <nbgl_objPoolGet>
c0de7c34:	4c53      	ldr	r4, [pc, #332]	@ (c0de7d84 <layoutNavigationPopulate+0x204>)
c0de7c36:	447c      	add	r4, pc
c0de7c38:	0a21      	lsrs	r1, r4, #8
c0de7c3a:	0e22      	lsrs	r2, r4, #24
c0de7c3c:	f880 102f 	strb.w	r1, [r0, #47]	@ 0x2f
c0de7c40:	4601      	mov	r1, r0
c0de7c42:	f801 4f2e 	strb.w	r4, [r1, #46]!
c0de7c46:	70ca      	strb	r2, [r1, #3]
c0de7c48:	0c22      	lsrs	r2, r4, #16
c0de7c4a:	708a      	strb	r2, [r1, #2]
c0de7c4c:	2100      	movs	r1, #0
c0de7c4e:	2260      	movs	r2, #96	@ 0x60
c0de7c50:	7182      	strb	r2, [r0, #6]
c0de7c52:	2268      	movs	r2, #104	@ 0x68
c0de7c54:	71c1      	strb	r1, [r0, #7]
c0de7c56:	7141      	strb	r1, [r0, #5]
c0de7c58:	7741      	strb	r1, [r0, #29]
c0de7c5a:	f880 1021 	strb.w	r1, [r0, #33]	@ 0x21
c0de7c5e:	2103      	movs	r1, #3
c0de7c60:	7102      	strb	r2, [r0, #4]
c0de7c62:	2201      	movs	r2, #1
c0de7c64:	f880 1020 	strb.w	r1, [r0, #32]
c0de7c68:	77c1      	strb	r1, [r0, #31]
c0de7c6a:	7781      	strb	r1, [r0, #30]
c0de7c6c:	2106      	movs	r1, #6
c0de7c6e:	7702      	strb	r2, [r0, #28]
c0de7c70:	2204      	movs	r2, #4
c0de7c72:	7581      	strb	r1, [r0, #22]
c0de7c74:	4641      	mov	r1, r8
c0de7c76:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de7c7a:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de7c7e:	784b      	ldrb	r3, [r1, #1]
c0de7c80:	788f      	ldrb	r7, [r1, #2]
c0de7c82:	78c9      	ldrb	r1, [r1, #3]
c0de7c84:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7c88:	ea47 2101 	orr.w	r1, r7, r1, lsl #8
c0de7c8c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de7c90:	6088      	str	r0, [r1, #8]
c0de7c92:	79a8      	ldrb	r0, [r5, #6]
c0de7c94:	2800      	cmp	r0, #0
c0de7c96:	d067      	beq.n	c0de7d68 <layoutNavigationPopulate+0x1e8>
c0de7c98:	79e8      	ldrb	r0, [r5, #7]
c0de7c9a:	2800      	cmp	r0, #0
c0de7c9c:	d04c      	beq.n	c0de7d38 <layoutNavigationPopulate+0x1b8>
c0de7c9e:	2004      	movs	r0, #4
c0de7ca0:	4631      	mov	r1, r6
c0de7ca2:	f003 fed2 	bl	c0deba4a <nbgl_objPoolGet>
c0de7ca6:	4606      	mov	r6, r0
c0de7ca8:	7868      	ldrb	r0, [r5, #1]
c0de7caa:	78a9      	ldrb	r1, [r5, #2]
c0de7cac:	f04f 0a0b 	mov.w	sl, #11
c0de7cb0:	9000      	str	r0, [sp, #0]
c0de7cb2:	4831      	ldr	r0, [pc, #196]	@ (c0de7d78 <layoutNavigationPopulate+0x1f8>)
c0de7cb4:	1c4b      	adds	r3, r1, #1
c0de7cb6:	210b      	movs	r1, #11
c0de7cb8:	4a33      	ldr	r2, [pc, #204]	@ (c0de7d88 <layoutNavigationPopulate+0x208>)
c0de7cba:	eb09 0700 	add.w	r7, r9, r0
c0de7cbe:	447a      	add	r2, pc
c0de7cc0:	4638      	mov	r0, r7
c0de7cc2:	f003 ff1d 	bl	c0debb00 <snprintf>
c0de7cc6:	0a38      	lsrs	r0, r7, #8
c0de7cc8:	0e39      	lsrs	r1, r7, #24
c0de7cca:	f06f 0201 	mvn.w	r2, #1
c0de7cce:	f886 a022 	strb.w	sl, [r6, #34]	@ 0x22
c0de7cd2:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de7cd6:	4630      	mov	r0, r6
c0de7cd8:	f800 7f26 	strb.w	r7, [r0, #38]!
c0de7cdc:	70c1      	strb	r1, [r0, #3]
c0de7cde:	0c39      	lsrs	r1, r7, #16
c0de7ce0:	7081      	strb	r1, [r0, #2]
c0de7ce2:	2000      	movs	r0, #0
c0de7ce4:	7861      	ldrb	r1, [r4, #1]
c0de7ce6:	71f0      	strb	r0, [r6, #7]
c0de7ce8:	2060      	movs	r0, #96	@ 0x60
c0de7cea:	71b0      	strb	r0, [r6, #6]
c0de7cec:	2001      	movs	r0, #1
c0de7cee:	77f0      	strb	r0, [r6, #31]
c0de7cf0:	2005      	movs	r0, #5
c0de7cf2:	f886 0020 	strb.w	r0, [r6, #32]
c0de7cf6:	75b0      	strb	r0, [r6, #22]
c0de7cf8:	7820      	ldrb	r0, [r4, #0]
c0de7cfa:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de7cfe:	f1c0 0168 	rsb	r1, r0, #104	@ 0x68
c0de7d02:	fb91 f1f2 	sdiv	r1, r1, r2
c0de7d06:	1a08      	subs	r0, r1, r0
c0de7d08:	4641      	mov	r1, r8
c0de7d0a:	f811 cf22 	ldrb.w	ip, [r1, #34]!
c0de7d0e:	f811 3c1e 	ldrb.w	r3, [r1, #-30]
c0de7d12:	f811 4c1d 	ldrb.w	r4, [r1, #-29]
c0de7d16:	784f      	ldrb	r7, [r1, #1]
c0de7d18:	788a      	ldrb	r2, [r1, #2]
c0de7d1a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7d1e:	eb03 0040 	add.w	r0, r3, r0, lsl #1
c0de7d22:	7130      	strb	r0, [r6, #4]
c0de7d24:	0a00      	lsrs	r0, r0, #8
c0de7d26:	78c9      	ldrb	r1, [r1, #3]
c0de7d28:	7170      	strb	r0, [r6, #5]
c0de7d2a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7d2e:	ea4c 2207 	orr.w	r2, ip, r7, lsl #8
c0de7d32:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de7d36:	60ce      	str	r6, [r1, #12]
c0de7d38:	7928      	ldrb	r0, [r5, #4]
c0de7d3a:	b1a8      	cbz	r0, c0de7d68 <layoutNavigationPopulate+0x1e8>
c0de7d3c:	4640      	mov	r0, r8
c0de7d3e:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de7d42:	7842      	ldrb	r2, [r0, #1]
c0de7d44:	7883      	ldrb	r3, [r0, #2]
c0de7d46:	78c0      	ldrb	r0, [r0, #3]
c0de7d48:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7d4c:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7d50:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de7d54:	6840      	ldr	r0, [r0, #4]
c0de7d56:	f810 1f17 	ldrb.w	r1, [r0, #23]!
c0de7d5a:	7842      	ldrb	r2, [r0, #1]
c0de7d5c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7d60:	314f      	adds	r1, #79	@ 0x4f
c0de7d62:	7001      	strb	r1, [r0, #0]
c0de7d64:	0a09      	lsrs	r1, r1, #8
c0de7d66:	7041      	strb	r1, [r0, #1]
c0de7d68:	7869      	ldrb	r1, [r5, #1]
c0de7d6a:	78aa      	ldrb	r2, [r5, #2]
c0de7d6c:	4640      	mov	r0, r8
c0de7d6e:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7d72:	f7ff bee5 	b.w	c0de7b40 <configButtons>
c0de7d76:	bf00      	nop
c0de7d78:	0000090c 	.word	0x0000090c
c0de7d7c:	00005719 	.word	0x00005719
c0de7d80:	000055ab 	.word	0x000055ab
c0de7d84:	000055e6 	.word	0x000055e6
c0de7d88:	000060f8 	.word	0x000060f8

c0de7d8c <OUTLINED_FUNCTION_0>:
c0de7d8c:	4641      	mov	r1, r8
c0de7d8e:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de7d92:	784b      	ldrb	r3, [r1, #1]
c0de7d94:	788c      	ldrb	r4, [r1, #2]
c0de7d96:	78c9      	ldrb	r1, [r1, #3]
c0de7d98:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7d9c:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
c0de7da0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de7da4:	4770      	bx	lr

c0de7da6 <OUTLINED_FUNCTION_1>:
c0de7da6:	0a0a      	lsrs	r2, r1, #8
c0de7da8:	0e0b      	lsrs	r3, r1, #24
c0de7daa:	f880 202f 	strb.w	r2, [r0, #47]	@ 0x2f
c0de7dae:	4602      	mov	r2, r0
c0de7db0:	f802 1f2e 	strb.w	r1, [r2, #46]!
c0de7db4:	0c09      	lsrs	r1, r1, #16
c0de7db6:	4770      	bx	lr

c0de7db8 <nbgl_pageDrawInfo>:
c0de7db8:	b570      	push	{r4, r5, r6, lr}
c0de7dba:	b08c      	sub	sp, #48	@ 0x30
c0de7dbc:	460d      	mov	r5, r1
c0de7dbe:	4606      	mov	r6, r0
c0de7dc0:	a805      	add	r0, sp, #20
c0de7dc2:	211c      	movs	r1, #28
c0de7dc4:	4614      	mov	r4, r2
c0de7dc6:	f004 fb59 	bl	c0dec47c <__aeabi_memclr>
c0de7dca:	2001      	movs	r0, #1
c0de7dcc:	9608      	str	r6, [sp, #32]
c0de7dce:	f88d 0015 	strb.w	r0, [sp, #21]
c0de7dd2:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de7dd6:	b948      	cbnz	r0, c0de7dec <nbgl_pageDrawInfo+0x34>
c0de7dd8:	6a20      	ldr	r0, [r4, #32]
c0de7dda:	9006      	str	r0, [sp, #24]
c0de7ddc:	f894 0025 	ldrb.w	r0, [r4, #37]	@ 0x25
c0de7de0:	f88d 001c 	strb.w	r0, [sp, #28]
c0de7de4:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7de8:	f88d 001d 	strb.w	r0, [sp, #29]
c0de7dec:	b1f5      	cbz	r5, c0de7e2c <nbgl_pageDrawInfo+0x74>
c0de7dee:	4629      	mov	r1, r5
c0de7df0:	7a68      	ldrb	r0, [r5, #9]
c0de7df2:	78eb      	ldrb	r3, [r5, #3]
c0de7df4:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de7df8:	f000 fb4f 	bl	c0de849a <OUTLINED_FUNCTION_1>
c0de7dfc:	4629      	mov	r1, r5
c0de7dfe:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de7e00:	7968      	ldrb	r0, [r5, #5]
c0de7e02:	f811 2f04 	ldrb.w	r2, [r1, #4]!
c0de7e06:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7e0a:	788a      	ldrb	r2, [r1, #2]
c0de7e0c:	78c9      	ldrb	r1, [r1, #3]
c0de7e0e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7e12:	78aa      	ldrb	r2, [r5, #2]
c0de7e14:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de7e18:	7869      	ldrb	r1, [r5, #1]
c0de7e1a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de7e1c:	7828      	ldrb	r0, [r5, #0]
c0de7e1e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7e22:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de7e26:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de7e2a:	e000      	b.n	c0de7e2e <nbgl_pageDrawInfo+0x76>
c0de7e2c:	2000      	movs	r0, #0
c0de7e2e:	9009      	str	r0, [sp, #36]	@ 0x24
c0de7e30:	a805      	add	r0, sp, #20
c0de7e32:	f7fb fff7 	bl	c0de3e24 <nbgl_layoutGet>
c0de7e36:	4605      	mov	r5, r0
c0de7e38:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de7e3c:	b150      	cbz	r0, c0de7e54 <nbgl_pageDrawInfo+0x9c>
c0de7e3e:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7e42:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
c0de7e46:	6a22      	ldr	r2, [r4, #32]
c0de7e48:	f44f 61c0 	mov.w	r1, #1536	@ 0x600
c0de7e4c:	9000      	str	r0, [sp, #0]
c0de7e4e:	4628      	mov	r0, r5
c0de7e50:	f7fc fd50 	bl	c0de48f4 <nbgl_layoutAddSwipe>
c0de7e54:	7d20      	ldrb	r0, [r4, #20]
c0de7e56:	b3b8      	cbz	r0, c0de7ec8 <nbgl_pageDrawInfo+0x110>
c0de7e58:	4628      	mov	r0, r5
c0de7e5a:	2128      	movs	r1, #40	@ 0x28
c0de7e5c:	f000 f8a6 	bl	c0de7fac <addEmptyHeader>
c0de7e60:	4628      	mov	r0, r5
c0de7e62:	4621      	mov	r1, r4
c0de7e64:	f7fd fe5d 	bl	c0de5b22 <nbgl_layoutAddCenteredInfo>
c0de7e68:	6aa0      	ldr	r0, [r4, #40]	@ 0x28
c0de7e6a:	b1b8      	cbz	r0, c0de7e9c <nbgl_pageDrawInfo+0xe4>
c0de7e6c:	7d61      	ldrb	r1, [r4, #21]
c0de7e6e:	2904      	cmp	r1, #4
c0de7e70:	d014      	beq.n	c0de7e9c <nbgl_pageDrawInfo+0xe4>
c0de7e72:	9001      	str	r0, [sp, #4]
c0de7e74:	2001      	movs	r0, #1
c0de7e76:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de7e7a:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
c0de7e7c:	9002      	str	r0, [sp, #8]
c0de7e7e:	7de0      	ldrb	r0, [r4, #23]
c0de7e80:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7e84:	f894 0030 	ldrb.w	r0, [r4, #48]	@ 0x30
c0de7e88:	f88d 000d 	strb.w	r0, [sp, #13]
c0de7e8c:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7e90:	f88d 0010 	strb.w	r0, [sp, #16]
c0de7e94:	a901      	add	r1, sp, #4
c0de7e96:	4628      	mov	r0, r5
c0de7e98:	f7fe fc03 	bl	c0de66a2 <nbgl_layoutAddButton>
c0de7e9c:	69a0      	ldr	r0, [r4, #24]
c0de7e9e:	b140      	cbz	r0, c0de7eb2 <nbgl_pageDrawInfo+0xfa>
c0de7ea0:	f003 ffc0 	bl	c0debe24 <pic>
c0de7ea4:	7f22      	ldrb	r2, [r4, #28]
c0de7ea6:	f894 3031 	ldrb.w	r3, [r4, #49]	@ 0x31
c0de7eaa:	4601      	mov	r1, r0
c0de7eac:	4628      	mov	r0, r5
c0de7eae:	f7fe fce6 	bl	c0de687e <nbgl_layoutAddFooter>
c0de7eb2:	7d20      	ldrb	r0, [r4, #20]
c0de7eb4:	b1f8      	cbz	r0, c0de7ef6 <nbgl_pageDrawInfo+0x13e>
c0de7eb6:	2801      	cmp	r0, #1
c0de7eb8:	d00f      	beq.n	c0de7eda <nbgl_pageDrawInfo+0x122>
c0de7eba:	2802      	cmp	r0, #2
c0de7ebc:	d010      	beq.n	c0de7ee0 <nbgl_pageDrawInfo+0x128>
c0de7ebe:	2803      	cmp	r0, #3
c0de7ec0:	d13f      	bne.n	c0de7f42 <nbgl_pageDrawInfo+0x18a>
c0de7ec2:	4833      	ldr	r0, [pc, #204]	@ (c0de7f90 <nbgl_pageDrawInfo+0x1d8>)
c0de7ec4:	4478      	add	r0, pc
c0de7ec6:	e00d      	b.n	c0de7ee4 <nbgl_pageDrawInfo+0x12c>
c0de7ec8:	6a20      	ldr	r0, [r4, #32]
c0de7eca:	2800      	cmp	r0, #0
c0de7ecc:	d0c8      	beq.n	c0de7e60 <nbgl_pageDrawInfo+0xa8>
c0de7ece:	f003 ffa9 	bl	c0debe24 <pic>
c0de7ed2:	7800      	ldrb	r0, [r0, #0]
c0de7ed4:	2800      	cmp	r0, #0
c0de7ed6:	d1bf      	bne.n	c0de7e58 <nbgl_pageDrawInfo+0xa0>
c0de7ed8:	e7c2      	b.n	c0de7e60 <nbgl_pageDrawInfo+0xa8>
c0de7eda:	482c      	ldr	r0, [pc, #176]	@ (c0de7f8c <nbgl_pageDrawInfo+0x1d4>)
c0de7edc:	4478      	add	r0, pc
c0de7ede:	e001      	b.n	c0de7ee4 <nbgl_pageDrawInfo+0x12c>
c0de7ee0:	482c      	ldr	r0, [pc, #176]	@ (c0de7f94 <nbgl_pageDrawInfo+0x1dc>)
c0de7ee2:	4478      	add	r0, pc
c0de7ee4:	f003 ff9e 	bl	c0debe24 <pic>
c0de7ee8:	7da2      	ldrb	r2, [r4, #22]
c0de7eea:	f894 3031 	ldrb.w	r3, [r4, #49]	@ 0x31
c0de7eee:	4601      	mov	r1, r0
c0de7ef0:	4628      	mov	r0, r5
c0de7ef2:	f7fc fd5b 	bl	c0de49ac <nbgl_layoutAddTopRightButton>
c0de7ef6:	7d60      	ldrb	r0, [r4, #21]
c0de7ef8:	b3c0      	cbz	r0, c0de7f6c <nbgl_pageDrawInfo+0x1b4>
c0de7efa:	2801      	cmp	r0, #1
c0de7efc:	d023      	beq.n	c0de7f46 <nbgl_pageDrawInfo+0x18e>
c0de7efe:	2802      	cmp	r0, #2
c0de7f00:	d024      	beq.n	c0de7f4c <nbgl_pageDrawInfo+0x194>
c0de7f02:	2803      	cmp	r0, #3
c0de7f04:	d025      	beq.n	c0de7f52 <nbgl_pageDrawInfo+0x19a>
c0de7f06:	2804      	cmp	r0, #4
c0de7f08:	d11b      	bne.n	c0de7f42 <nbgl_pageDrawInfo+0x18a>
c0de7f0a:	6aa0      	ldr	r0, [r4, #40]	@ 0x28
c0de7f0c:	b3a0      	cbz	r0, c0de7f78 <nbgl_pageDrawInfo+0x1c0>
c0de7f0e:	4923      	ldr	r1, [pc, #140]	@ (c0de7f9c <nbgl_pageDrawInfo+0x1e4>)
c0de7f10:	4479      	add	r1, pc
c0de7f12:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de7f16:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
c0de7f18:	2102      	movs	r1, #2
c0de7f1a:	9003      	str	r0, [sp, #12]
c0de7f1c:	7de0      	ldrb	r0, [r4, #23]
c0de7f1e:	f88d 0010 	strb.w	r0, [sp, #16]
c0de7f22:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7f26:	f88d 0012 	strb.w	r0, [sp, #18]
c0de7f2a:	f894 0030 	ldrb.w	r0, [r4, #48]	@ 0x30
c0de7f2e:	2800      	cmp	r0, #0
c0de7f30:	bf08      	it	eq
c0de7f32:	2101      	moveq	r1, #1
c0de7f34:	f88d 1011 	strb.w	r1, [sp, #17]
c0de7f38:	4628      	mov	r0, r5
c0de7f3a:	a901      	add	r1, sp, #4
c0de7f3c:	f7fe f9ba 	bl	c0de62b4 <nbgl_layoutAddChoiceButtons>
c0de7f40:	e014      	b.n	c0de7f6c <nbgl_pageDrawInfo+0x1b4>
c0de7f42:	2500      	movs	r5, #0
c0de7f44:	e015      	b.n	c0de7f72 <nbgl_pageDrawInfo+0x1ba>
c0de7f46:	4814      	ldr	r0, [pc, #80]	@ (c0de7f98 <nbgl_pageDrawInfo+0x1e0>)
c0de7f48:	4478      	add	r0, pc
c0de7f4a:	e004      	b.n	c0de7f56 <nbgl_pageDrawInfo+0x19e>
c0de7f4c:	4816      	ldr	r0, [pc, #88]	@ (c0de7fa8 <nbgl_pageDrawInfo+0x1f0>)
c0de7f4e:	4478      	add	r0, pc
c0de7f50:	e001      	b.n	c0de7f56 <nbgl_pageDrawInfo+0x19e>
c0de7f52:	4814      	ldr	r0, [pc, #80]	@ (c0de7fa4 <nbgl_pageDrawInfo+0x1ec>)
c0de7f54:	4478      	add	r0, pc
c0de7f56:	f003 ff65 	bl	c0debe24 <pic>
c0de7f5a:	4601      	mov	r1, r0
c0de7f5c:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de7f60:	7de2      	ldrb	r2, [r4, #23]
c0de7f62:	2300      	movs	r3, #0
c0de7f64:	9000      	str	r0, [sp, #0]
c0de7f66:	4628      	mov	r0, r5
c0de7f68:	f7fd f8ec 	bl	c0de5144 <nbgl_layoutAddBottomButton>
c0de7f6c:	4628      	mov	r0, r5
c0de7f6e:	f7ff f9d6 	bl	c0de731e <nbgl_layoutDraw>
c0de7f72:	4628      	mov	r0, r5
c0de7f74:	b00c      	add	sp, #48	@ 0x30
c0de7f76:	bd70      	pop	{r4, r5, r6, pc}
c0de7f78:	7de2      	ldrb	r2, [r4, #23]
c0de7f7a:	f894 3031 	ldrb.w	r3, [r4, #49]	@ 0x31
c0de7f7e:	4908      	ldr	r1, [pc, #32]	@ (c0de7fa0 <nbgl_pageDrawInfo+0x1e8>)
c0de7f80:	4628      	mov	r0, r5
c0de7f82:	4479      	add	r1, pc
c0de7f84:	f7fe fc7b 	bl	c0de687e <nbgl_layoutAddFooter>
c0de7f88:	e7f0      	b.n	c0de7f6c <nbgl_pageDrawInfo+0x1b4>
c0de7f8a:	bf00      	nop
c0de7f8c:	00005908 	.word	0x00005908
c0de7f90:	00005432 	.word	0x00005432
c0de7f94:	000053d1 	.word	0x000053d1
c0de7f98:	0000589c 	.word	0x0000589c
c0de7f9c:	000062d0 	.word	0x000062d0
c0de7fa0:	0000625e 	.word	0x0000625e
c0de7fa4:	000053a2 	.word	0x000053a2
c0de7fa8:	00005365 	.word	0x00005365

c0de7fac <addEmptyHeader>:
c0de7fac:	b570      	push	{r4, r5, r6, lr}
c0de7fae:	b086      	sub	sp, #24
c0de7fb0:	ae01      	add	r6, sp, #4
c0de7fb2:	460c      	mov	r4, r1
c0de7fb4:	4605      	mov	r5, r0
c0de7fb6:	2114      	movs	r1, #20
c0de7fb8:	f000 fa85 	bl	c0de84c6 <OUTLINED_FUNCTION_4>
c0de7fbc:	4628      	mov	r0, r5
c0de7fbe:	4631      	mov	r1, r6
c0de7fc0:	f8ad 4008 	strh.w	r4, [sp, #8]
c0de7fc4:	f7fe fc82 	bl	c0de68cc <nbgl_layoutAddHeader>
c0de7fc8:	b006      	add	sp, #24
c0de7fca:	bd70      	pop	{r4, r5, r6, pc}

c0de7fcc <nbgl_pageDrawConfirmation>:
c0de7fcc:	b5b0      	push	{r4, r5, r7, lr}
c0de7fce:	b08c      	sub	sp, #48	@ 0x30
c0de7fd0:	4605      	mov	r5, r0
c0de7fd2:	6948      	ldr	r0, [r1, #20]
c0de7fd4:	460c      	mov	r4, r1
c0de7fd6:	f003 ff25 	bl	c0debe24 <pic>
c0de7fda:	9001      	str	r0, [sp, #4]
c0de7fdc:	69a0      	ldr	r0, [r4, #24]
c0de7fde:	b110      	cbz	r0, c0de7fe6 <nbgl_pageDrawConfirmation+0x1a>
c0de7fe0:	f003 ff20 	bl	c0debe24 <pic>
c0de7fe4:	e001      	b.n	c0de7fea <nbgl_pageDrawConfirmation+0x1e>
c0de7fe6:	4815      	ldr	r0, [pc, #84]	@ (c0de803c <nbgl_pageDrawConfirmation+0x70>)
c0de7fe8:	4478      	add	r0, pc
c0de7fea:	2100      	movs	r1, #0
c0de7fec:	7fe2      	ldrb	r2, [r4, #31]
c0de7fee:	9508      	str	r5, [sp, #32]
c0de7ff0:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de7ff4:	2001      	movs	r0, #1
c0de7ff6:	f88d 1011 	strb.w	r1, [sp, #17]
c0de7ffa:	9109      	str	r1, [sp, #36]	@ 0x24
c0de7ffc:	9106      	str	r1, [sp, #24]
c0de7ffe:	7fa1      	ldrb	r1, [r4, #30]
c0de8000:	f88d 0015 	strb.w	r0, [sp, #21]
c0de8004:	7f20      	ldrb	r0, [r4, #28]
c0de8006:	f88d 2014 	strb.w	r2, [sp, #20]
c0de800a:	f88d 1012 	strb.w	r1, [sp, #18]
c0de800e:	f88d 0010 	strb.w	r0, [sp, #16]
c0de8012:	a805      	add	r0, sp, #20
c0de8014:	f7fb ff06 	bl	c0de3e24 <nbgl_layoutGet>
c0de8018:	2140      	movs	r1, #64	@ 0x40
c0de801a:	4605      	mov	r5, r0
c0de801c:	f7ff ffc6 	bl	c0de7fac <addEmptyHeader>
c0de8020:	a901      	add	r1, sp, #4
c0de8022:	4628      	mov	r0, r5
c0de8024:	f7fe f946 	bl	c0de62b4 <nbgl_layoutAddChoiceButtons>
c0de8028:	4628      	mov	r0, r5
c0de802a:	4621      	mov	r1, r4
c0de802c:	f7fd fd79 	bl	c0de5b22 <nbgl_layoutAddCenteredInfo>
c0de8030:	4628      	mov	r0, r5
c0de8032:	f7ff f974 	bl	c0de731e <nbgl_layoutDraw>
c0de8036:	4628      	mov	r0, r5
c0de8038:	b00c      	add	sp, #48	@ 0x30
c0de803a:	bdb0      	pop	{r4, r5, r7, pc}
c0de803c:	00005d8d 	.word	0x00005d8d

c0de8040 <nbgl_pageDrawGenericContentExt>:
c0de8040:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8044:	b096      	sub	sp, #88	@ 0x58
c0de8046:	460e      	mov	r6, r1
c0de8048:	2100      	movs	r1, #0
c0de804a:	4615      	mov	r5, r2
c0de804c:	f88d 3008 	strb.w	r3, [sp, #8]
c0de8050:	e9cd 0105 	strd	r0, r1, [sp, #20]
c0de8054:	2001      	movs	r0, #1
c0de8056:	f88d 0009 	strb.w	r0, [sp, #9]
c0de805a:	b10e      	cbz	r6, c0de8060 <nbgl_pageDrawGenericContentExt+0x20>
c0de805c:	78f0      	ldrb	r0, [r6, #3]
c0de805e:	b108      	cbz	r0, c0de8064 <nbgl_pageDrawGenericContentExt+0x24>
c0de8060:	9103      	str	r1, [sp, #12]
c0de8062:	e007      	b.n	c0de8074 <nbgl_pageDrawGenericContentExt+0x34>
c0de8064:	6970      	ldr	r0, [r6, #20]
c0de8066:	7cb1      	ldrb	r1, [r6, #18]
c0de8068:	9003      	str	r0, [sp, #12]
c0de806a:	7970      	ldrb	r0, [r6, #5]
c0de806c:	f88d 1010 	strb.w	r1, [sp, #16]
c0de8070:	f88d 0011 	strb.w	r0, [sp, #17]
c0de8074:	a802      	add	r0, sp, #8
c0de8076:	f7fb fed5 	bl	c0de3e24 <nbgl_layoutGet>
c0de807a:	4682      	mov	sl, r0
c0de807c:	b17e      	cbz	r6, c0de809e <nbgl_pageDrawGenericContentExt+0x5e>
c0de807e:	78f0      	ldrb	r0, [r6, #3]
c0de8080:	2801      	cmp	r0, #1
c0de8082:	d011      	beq.n	c0de80a8 <nbgl_pageDrawGenericContentExt+0x68>
c0de8084:	b958      	cbnz	r0, c0de809e <nbgl_pageDrawGenericContentExt+0x5e>
c0de8086:	68b3      	ldr	r3, [r6, #8]
c0de8088:	78b2      	ldrb	r2, [r6, #2]
c0de808a:	69b1      	ldr	r1, [r6, #24]
c0de808c:	b323      	cbz	r3, c0de80d8 <nbgl_pageDrawGenericContentExt+0x98>
c0de808e:	7970      	ldrb	r0, [r6, #5]
c0de8090:	7b34      	ldrb	r4, [r6, #12]
c0de8092:	e9cd 4000 	strd	r4, r0, [sp]
c0de8096:	4650      	mov	r0, sl
c0de8098:	f7fe fc03 	bl	c0de68a2 <nbgl_layoutAddSplitFooter>
c0de809c:	e020      	b.n	c0de80e0 <nbgl_pageDrawGenericContentExt+0xa0>
c0de809e:	f04f 0800 	mov.w	r8, #0
c0de80a2:	f44f 7716 	mov.w	r7, #600	@ 0x258
c0de80a6:	e07e      	b.n	c0de81a6 <nbgl_pageDrawGenericContentExt+0x166>
c0de80a8:	68b0      	ldr	r0, [r6, #8]
c0de80aa:	2800      	cmp	r0, #0
c0de80ac:	4680      	mov	r8, r0
c0de80ae:	bf18      	it	ne
c0de80b0:	f04f 0801 	movne.w	r8, #1
c0de80b4:	d027      	beq.n	c0de8106 <nbgl_pageDrawGenericContentExt+0xc6>
c0de80b6:	900e      	str	r0, [sp, #56]	@ 0x38
c0de80b8:	2006      	movs	r0, #6
c0de80ba:	7b31      	ldrb	r1, [r6, #12]
c0de80bc:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de80c0:	7970      	ldrb	r0, [r6, #5]
c0de80c2:	f88d 103c 	strb.w	r1, [sp, #60]	@ 0x3c
c0de80c6:	f88d 003d 	strb.w	r0, [sp, #61]	@ 0x3d
c0de80ca:	a90d      	add	r1, sp, #52	@ 0x34
c0de80cc:	4650      	mov	r0, sl
c0de80ce:	f7fe fbfd 	bl	c0de68cc <nbgl_layoutAddHeader>
c0de80d2:	f5c0 7716 	rsb	r7, r0, #600	@ 0x258
c0de80d6:	e018      	b.n	c0de810a <nbgl_pageDrawGenericContentExt+0xca>
c0de80d8:	7973      	ldrb	r3, [r6, #5]
c0de80da:	4650      	mov	r0, sl
c0de80dc:	f7fe fbcf 	bl	c0de687e <nbgl_layoutAddFooter>
c0de80e0:	f5c0 7716 	rsb	r7, r0, #600	@ 0x258
c0de80e4:	7930      	ldrb	r0, [r6, #4]
c0de80e6:	2800      	cmp	r0, #0
c0de80e8:	d042      	beq.n	c0de8170 <nbgl_pageDrawGenericContentExt+0x130>
c0de80ea:	7c70      	ldrb	r0, [r6, #17]
c0de80ec:	7974      	ldrb	r4, [r6, #5]
c0de80ee:	7831      	ldrb	r1, [r6, #0]
c0de80f0:	7872      	ldrb	r2, [r6, #1]
c0de80f2:	7c33      	ldrb	r3, [r6, #16]
c0de80f4:	e9cd 0400 	strd	r0, r4, [sp]
c0de80f8:	4650      	mov	r0, sl
c0de80fa:	f7fe fee9 	bl	c0de6ed0 <nbgl_layoutAddProgressIndicator>
c0de80fe:	1a3f      	subs	r7, r7, r0
c0de8100:	f04f 0801 	mov.w	r8, #1
c0de8104:	e04f      	b.n	c0de81a6 <nbgl_pageDrawGenericContentExt+0x166>
c0de8106:	f44f 7716 	mov.w	r7, #600	@ 0x258
c0de810a:	2001      	movs	r0, #1
c0de810c:	f88d 0035 	strb.w	r0, [sp, #53]	@ 0x35
c0de8110:	7870      	ldrb	r0, [r6, #1]
c0de8112:	2802      	cmp	r0, #2
c0de8114:	d31c      	bcc.n	c0de8150 <nbgl_pageDrawGenericContentExt+0x110>
c0de8116:	6971      	ldr	r1, [r6, #20]
c0de8118:	b369      	cbz	r1, c0de8176 <nbgl_pageDrawGenericContentExt+0x136>
c0de811a:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de811e:	2001      	movs	r0, #1
c0de8120:	9111      	str	r1, [sp, #68]	@ 0x44
c0de8122:	2103      	movs	r1, #3
c0de8124:	7972      	ldrb	r2, [r6, #5]
c0de8126:	f000 f9c7 	bl	c0de84b8 <OUTLINED_FUNCTION_3>
c0de812a:	2100      	movs	r1, #0
c0de812c:	f88d 103b 	strb.w	r1, [sp, #59]	@ 0x3b
c0de8130:	78b1      	ldrb	r1, [r6, #2]
c0de8132:	f88d 2049 	strb.w	r2, [sp, #73]	@ 0x49
c0de8136:	f88d 303c 	strb.w	r3, [sp, #60]	@ 0x3c
c0de813a:	f88d 2040 	strb.w	r2, [sp, #64]	@ 0x40
c0de813e:	f88d 003a 	strb.w	r0, [sp, #58]	@ 0x3a
c0de8142:	7cb0      	ldrb	r0, [r6, #18]
c0de8144:	f88d 1048 	strb.w	r1, [sp, #72]	@ 0x48
c0de8148:	f88d 003f 	strb.w	r0, [sp, #63]	@ 0x3f
c0de814c:	7cf0      	ldrb	r0, [r6, #19]
c0de814e:	e023      	b.n	c0de8198 <nbgl_pageDrawGenericContentExt+0x158>
c0de8150:	6970      	ldr	r0, [r6, #20]
c0de8152:	b340      	cbz	r0, c0de81a6 <nbgl_pageDrawGenericContentExt+0x166>
c0de8154:	2100      	movs	r1, #0
c0de8156:	900e      	str	r0, [sp, #56]	@ 0x38
c0de8158:	2001      	movs	r0, #1
c0de815a:	f88d 103c 	strb.w	r1, [sp, #60]	@ 0x3c
c0de815e:	f88d 0034 	strb.w	r0, [sp, #52]	@ 0x34
c0de8162:	78b0      	ldrb	r0, [r6, #2]
c0de8164:	7971      	ldrb	r1, [r6, #5]
c0de8166:	f88d 003d 	strb.w	r0, [sp, #61]	@ 0x3d
c0de816a:	f88d 103e 	strb.w	r1, [sp, #62]	@ 0x3e
c0de816e:	e015      	b.n	c0de819c <nbgl_pageDrawGenericContentExt+0x15c>
c0de8170:	f04f 0800 	mov.w	r8, #0
c0de8174:	e017      	b.n	c0de81a6 <nbgl_pageDrawGenericContentExt+0x166>
c0de8176:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de817a:	2000      	movs	r0, #0
c0de817c:	2104      	movs	r1, #4
c0de817e:	7c32      	ldrb	r2, [r6, #16]
c0de8180:	f000 f99a 	bl	c0de84b8 <OUTLINED_FUNCTION_3>
c0de8184:	7971      	ldrb	r1, [r6, #5]
c0de8186:	f88d 203b 	strb.w	r2, [sp, #59]	@ 0x3b
c0de818a:	f88d 303c 	strb.w	r3, [sp, #60]	@ 0x3c
c0de818e:	f88d 003a 	strb.w	r0, [sp, #58]	@ 0x3a
c0de8192:	7cf0      	ldrb	r0, [r6, #19]
c0de8194:	f88d 1040 	strb.w	r1, [sp, #64]	@ 0x40
c0de8198:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de819c:	a90d      	add	r1, sp, #52	@ 0x34
c0de819e:	4650      	mov	r0, sl
c0de81a0:	f7fc fc42 	bl	c0de4a28 <nbgl_layoutAddExtendedFooter>
c0de81a4:	1a3f      	subs	r7, r7, r0
c0de81a6:	6828      	ldr	r0, [r5, #0]
c0de81a8:	b190      	cbz	r0, c0de81d0 <nbgl_pageDrawGenericContentExt+0x190>
c0de81aa:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de81ac:	2000      	movs	r0, #0
c0de81ae:	79a9      	ldrb	r1, [r5, #6]
c0de81b0:	900e      	str	r0, [sp, #56]	@ 0x38
c0de81b2:	f240 1001 	movw	r0, #257	@ 0x101
c0de81b6:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de81ba:	7968      	ldrb	r0, [r5, #5]
c0de81bc:	f88d 1041 	strb.w	r1, [sp, #65]	@ 0x41
c0de81c0:	f88d 0040 	strb.w	r0, [sp, #64]	@ 0x40
c0de81c4:	a90d      	add	r1, sp, #52	@ 0x34
c0de81c6:	4650      	mov	r0, sl
c0de81c8:	f7fe fb80 	bl	c0de68cc <nbgl_layoutAddHeader>
c0de81cc:	f04f 0801 	mov.w	r8, #1
c0de81d0:	68a9      	ldr	r1, [r5, #8]
c0de81d2:	b121      	cbz	r1, c0de81de <nbgl_pageDrawGenericContentExt+0x19e>
c0de81d4:	79ab      	ldrb	r3, [r5, #6]
c0de81d6:	79ea      	ldrb	r2, [r5, #7]
c0de81d8:	4650      	mov	r0, sl
c0de81da:	f7fc fbe7 	bl	c0de49ac <nbgl_layoutAddTopRightButton>
c0de81de:	7b28      	ldrb	r0, [r5, #12]
c0de81e0:	2800      	cmp	r0, #0
c0de81e2:	d044      	beq.n	c0de826e <nbgl_pageDrawGenericContentExt+0x22e>
c0de81e4:	2801      	cmp	r0, #1
c0de81e6:	d04d      	beq.n	c0de8284 <nbgl_pageDrawGenericContentExt+0x244>
c0de81e8:	2802      	cmp	r0, #2
c0de81ea:	d067      	beq.n	c0de82bc <nbgl_pageDrawGenericContentExt+0x27c>
c0de81ec:	2803      	cmp	r0, #3
c0de81ee:	d074      	beq.n	c0de82da <nbgl_pageDrawGenericContentExt+0x29a>
c0de81f0:	2804      	cmp	r0, #4
c0de81f2:	f000 808e 	beq.w	c0de8312 <nbgl_pageDrawGenericContentExt+0x2d2>
c0de81f6:	2805      	cmp	r0, #5
c0de81f8:	f000 8093 	beq.w	c0de8322 <nbgl_pageDrawGenericContentExt+0x2e2>
c0de81fc:	2806      	cmp	r0, #6
c0de81fe:	f000 80a9 	beq.w	c0de8354 <nbgl_pageDrawGenericContentExt+0x314>
c0de8202:	2807      	cmp	r0, #7
c0de8204:	f000 80d9 	beq.w	c0de83ba <nbgl_pageDrawGenericContentExt+0x37a>
c0de8208:	2808      	cmp	r0, #8
c0de820a:	f000 80ea 	beq.w	c0de83e2 <nbgl_pageDrawGenericContentExt+0x3a2>
c0de820e:	2809      	cmp	r0, #9
c0de8210:	f000 8112 	beq.w	c0de8438 <nbgl_pageDrawGenericContentExt+0x3f8>
c0de8214:	280a      	cmp	r0, #10
c0de8216:	f040 8114 	bne.w	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de821a:	489a      	ldr	r0, [pc, #616]	@ (c0de8484 <nbgl_pageDrawGenericContentExt+0x444>)
c0de821c:	2400      	movs	r4, #0
c0de821e:	f10d 0834 	add.w	r8, sp, #52	@ 0x34
c0de8222:	2600      	movs	r6, #0
c0de8224:	4478      	add	r0, pc
c0de8226:	4683      	mov	fp, r0
c0de8228:	7e28      	ldrb	r0, [r5, #24]
c0de822a:	4286      	cmp	r6, r0
c0de822c:	f080 8109 	bcs.w	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de8230:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de8234:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de8238:	e9cd b40f 	strd	fp, r4, [sp, #60]	@ 0x3c
c0de823c:	e9cd 400d 	strd	r4, r0, [sp, #52]	@ 0x34
c0de8240:	5d88      	ldrb	r0, [r1, r6]
c0de8242:	4641      	mov	r1, r8
c0de8244:	f88d 4046 	strb.w	r4, [sp, #70]	@ 0x46
c0de8248:	f88d 4044 	strb.w	r4, [sp, #68]	@ 0x44
c0de824c:	f88d 0045 	strb.w	r0, [sp, #69]	@ 0x45
c0de8250:	7e68      	ldrb	r0, [r5, #25]
c0de8252:	f88d 0048 	strb.w	r0, [sp, #72]	@ 0x48
c0de8256:	4650      	mov	r0, sl
c0de8258:	f7fc ff93 	bl	c0de5182 <nbgl_layoutAddTouchableBar>
c0de825c:	1a3f      	subs	r7, r7, r0
c0de825e:	b2b8      	uxth	r0, r7
c0de8260:	280b      	cmp	r0, #11
c0de8262:	d302      	bcc.n	c0de826a <nbgl_pageDrawGenericContentExt+0x22a>
c0de8264:	4650      	mov	r0, sl
c0de8266:	f7fe f9ff 	bl	c0de6668 <nbgl_layoutAddSeparationLine>
c0de826a:	3601      	adds	r6, #1
c0de826c:	e7dc      	b.n	c0de8228 <nbgl_pageDrawGenericContentExt+0x1e8>
c0de826e:	f1b8 0f00 	cmp.w	r8, #0
c0de8272:	d101      	bne.n	c0de8278 <nbgl_pageDrawGenericContentExt+0x238>
c0de8274:	f000 f90d 	bl	c0de8492 <OUTLINED_FUNCTION_0>
c0de8278:	f105 0110 	add.w	r1, r5, #16
c0de827c:	4650      	mov	r0, sl
c0de827e:	f7fd fc50 	bl	c0de5b22 <nbgl_layoutAddCenteredInfo>
c0de8282:	e0de      	b.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de8284:	f1b8 0f00 	cmp.w	r8, #0
c0de8288:	d101      	bne.n	c0de828e <nbgl_pageDrawGenericContentExt+0x24e>
c0de828a:	f000 f902 	bl	c0de8492 <OUTLINED_FUNCTION_0>
c0de828e:	f105 0110 	add.w	r1, r5, #16
c0de8292:	4650      	mov	r0, sl
c0de8294:	f7fd fea0 	bl	c0de5fd8 <nbgl_layoutAddContentCenter>
c0de8298:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de829a:	2800      	cmp	r0, #0
c0de829c:	f000 80d1 	beq.w	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de82a0:	900e      	str	r0, [sp, #56]	@ 0x38
c0de82a2:	2003      	movs	r0, #3
c0de82a4:	f88d 0034 	strb.w	r0, [sp, #52]	@ 0x34
c0de82a8:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de82aa:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de82ac:	8fa8      	ldrh	r0, [r5, #60]	@ 0x3c
c0de82ae:	f8ad 0040 	strh.w	r0, [sp, #64]	@ 0x40
c0de82b2:	a90d      	add	r1, sp, #52	@ 0x34
c0de82b4:	4650      	mov	r0, sl
c0de82b6:	f7fc f823 	bl	c0de4300 <nbgl_layoutAddUpFooter>
c0de82ba:	e0c2      	b.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de82bc:	ae0d      	add	r6, sp, #52	@ 0x34
c0de82be:	2124      	movs	r1, #36	@ 0x24
c0de82c0:	f000 f901 	bl	c0de84c6 <OUTLINED_FUNCTION_4>
c0de82c4:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de82c8:	f000 f8f0 	bl	c0de84ac <OUTLINED_FUNCTION_2>
c0de82cc:	69a9      	ldr	r1, [r5, #24]
c0de82ce:	7f6b      	ldrb	r3, [r5, #29]
c0de82d0:	7f2a      	ldrb	r2, [r5, #28]
c0de82d2:	4650      	mov	r0, sl
c0de82d4:	f7fe fac1 	bl	c0de685a <nbgl_layoutAddLongPressButton>
c0de82d8:	e0b3      	b.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de82da:	ae0d      	add	r6, sp, #52	@ 0x34
c0de82dc:	2124      	movs	r1, #36	@ 0x24
c0de82de:	f000 f8f2 	bl	c0de84c6 <OUTLINED_FUNCTION_4>
c0de82e2:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de82e6:	2400      	movs	r4, #0
c0de82e8:	f88d 4034 	strb.w	r4, [sp, #52]	@ 0x34
c0de82ec:	f000 f8de 	bl	c0de84ac <OUTLINED_FUNCTION_2>
c0de82f0:	f44f 7080 	mov.w	r0, #256	@ 0x100
c0de82f4:	940a      	str	r4, [sp, #40]	@ 0x28
c0de82f6:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de82fa:	f8ad 002e 	strh.w	r0, [sp, #46]	@ 0x2e
c0de82fe:	69a8      	ldr	r0, [r5, #24]
c0de8300:	9009      	str	r0, [sp, #36]	@ 0x24
c0de8302:	7f28      	ldrb	r0, [r5, #28]
c0de8304:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de8308:	7f68      	ldrb	r0, [r5, #29]
c0de830a:	f88d 0030 	strb.w	r0, [sp, #48]	@ 0x30
c0de830e:	a909      	add	r1, sp, #36	@ 0x24
c0de8310:	e04f      	b.n	c0de83b2 <nbgl_pageDrawGenericContentExt+0x372>
c0de8312:	f1b8 0f00 	cmp.w	r8, #0
c0de8316:	d101      	bne.n	c0de831c <nbgl_pageDrawGenericContentExt+0x2dc>
c0de8318:	f000 f8bb 	bl	c0de8492 <OUTLINED_FUNCTION_0>
c0de831c:	f000 f8dd 	bl	c0de84da <OUTLINED_FUNCTION_6>
c0de8320:	e08f      	b.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de8322:	f1b8 0f00 	cmp.w	r8, #0
c0de8326:	d101      	bne.n	c0de832c <nbgl_pageDrawGenericContentExt+0x2ec>
c0de8328:	f000 f8b3 	bl	c0de8492 <OUTLINED_FUNCTION_0>
c0de832c:	7ee8      	ldrb	r0, [r5, #27]
c0de832e:	f105 0110 	add.w	r1, r5, #16
c0de8332:	3803      	subs	r0, #3
c0de8334:	76e8      	strb	r0, [r5, #27]
c0de8336:	4650      	mov	r0, sl
c0de8338:	f7fd ffe6 	bl	c0de6308 <nbgl_layoutAddTagValueList>
c0de833c:	2001      	movs	r0, #1
c0de833e:	f88d 003d 	strb.w	r0, [sp, #61]	@ 0x3d
c0de8342:	f8ad 003e 	strh.w	r0, [sp, #62]	@ 0x3e
c0de8346:	e9d5 0109 	ldrd	r0, r1, [r5, #36]	@ 0x24
c0de834a:	e9cd 100d 	strd	r1, r0, [sp, #52]	@ 0x34
c0de834e:	f000 f8bd 	bl	c0de84cc <OUTLINED_FUNCTION_5>
c0de8352:	e02b      	b.n	c0de83ac <nbgl_pageDrawGenericContentExt+0x36c>
c0de8354:	f1b8 0f00 	cmp.w	r8, #0
c0de8358:	d101      	bne.n	c0de835e <nbgl_pageDrawGenericContentExt+0x31e>
c0de835a:	f000 f89a 	bl	c0de8492 <OUTLINED_FUNCTION_0>
c0de835e:	f000 f8bc 	bl	c0de84da <OUTLINED_FUNCTION_6>
c0de8362:	6aa8      	ldr	r0, [r5, #40]	@ 0x28
c0de8364:	2800      	cmp	r0, #0
c0de8366:	d073      	beq.n	c0de8450 <nbgl_pageDrawGenericContentExt+0x410>
c0de8368:	900d      	str	r0, [sp, #52]	@ 0x34
c0de836a:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de836c:	2101      	movs	r1, #1
c0de836e:	f8ad 103e 	strh.w	r1, [sp, #62]	@ 0x3e
c0de8372:	f88d 103d 	strb.w	r1, [sp, #61]	@ 0x3d
c0de8376:	900e      	str	r0, [sp, #56]	@ 0x38
c0de8378:	f000 f8a8 	bl	c0de84cc <OUTLINED_FUNCTION_5>
c0de837c:	f88d 0040 	strb.w	r0, [sp, #64]	@ 0x40
c0de8380:	a90d      	add	r1, sp, #52	@ 0x34
c0de8382:	4650      	mov	r0, sl
c0de8384:	f7fe f98d 	bl	c0de66a2 <nbgl_layoutAddButton>
c0de8388:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de838a:	2800      	cmp	r0, #0
c0de838c:	d059      	beq.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de838e:	2100      	movs	r1, #0
c0de8390:	900d      	str	r0, [sp, #52]	@ 0x34
c0de8392:	f895 002d 	ldrb.w	r0, [r5, #45]	@ 0x2d
c0de8396:	f88d 103d 	strb.w	r1, [sp, #61]	@ 0x3d
c0de839a:	910e      	str	r1, [sp, #56]	@ 0x38
c0de839c:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de83a0:	f8ad 103e 	strh.w	r1, [sp, #62]	@ 0x3e
c0de83a4:	f895 1038 	ldrb.w	r1, [r5, #56]	@ 0x38
c0de83a8:	f88d 103c 	strb.w	r1, [sp, #60]	@ 0x3c
c0de83ac:	f88d 0040 	strb.w	r0, [sp, #64]	@ 0x40
c0de83b0:	a90d      	add	r1, sp, #52	@ 0x34
c0de83b2:	4650      	mov	r0, sl
c0de83b4:	f7fe f975 	bl	c0de66a2 <nbgl_layoutAddButton>
c0de83b8:	e043      	b.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de83ba:	2400      	movs	r4, #0
c0de83bc:	2600      	movs	r6, #0
c0de83be:	7d28      	ldrb	r0, [r5, #20]
c0de83c0:	4286      	cmp	r6, r0
c0de83c2:	d23e      	bcs.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de83c4:	6928      	ldr	r0, [r5, #16]
c0de83c6:	1901      	adds	r1, r0, r4
c0de83c8:	4650      	mov	r0, sl
c0de83ca:	f7fd f961 	bl	c0de5690 <nbgl_layoutAddSwitch>
c0de83ce:	1a3f      	subs	r7, r7, r0
c0de83d0:	b2b8      	uxth	r0, r7
c0de83d2:	280b      	cmp	r0, #11
c0de83d4:	d302      	bcc.n	c0de83dc <nbgl_pageDrawGenericContentExt+0x39c>
c0de83d6:	4650      	mov	r0, sl
c0de83d8:	f7fe f946 	bl	c0de6668 <nbgl_layoutAddSeparationLine>
c0de83dc:	340c      	adds	r4, #12
c0de83de:	3601      	adds	r6, #1
c0de83e0:	e7ed      	b.n	c0de83be <nbgl_pageDrawGenericContentExt+0x37e>
c0de83e2:	2600      	movs	r6, #0
c0de83e4:	2400      	movs	r4, #0
c0de83e6:	7f28      	ldrb	r0, [r5, #28]
c0de83e8:	4284      	cmp	r4, r0
c0de83ea:	d22a      	bcs.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de83ec:	7fa8      	ldrb	r0, [r5, #30]
c0de83ee:	b180      	cbz	r0, c0de8412 <nbgl_pageDrawGenericContentExt+0x3d2>
c0de83f0:	69a8      	ldr	r0, [r5, #24]
c0de83f2:	b170      	cbz	r0, c0de8412 <nbgl_pageDrawGenericContentExt+0x3d2>
c0de83f4:	5980      	ldr	r0, [r0, r6]
c0de83f6:	b160      	cbz	r0, c0de8412 <nbgl_pageDrawGenericContentExt+0x3d2>
c0de83f8:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de83fc:	7f6b      	ldrb	r3, [r5, #29]
c0de83fe:	f851 2024 	ldr.w	r2, [r1, r4, lsl #2]
c0de8402:	f850 1024 	ldr.w	r1, [r0, r4, lsl #2]
c0de8406:	b2e0      	uxtb	r0, r4
c0de8408:	9000      	str	r0, [sp, #0]
c0de840a:	4650      	mov	r0, sl
c0de840c:	f7fd f986 	bl	c0de571c <nbgl_layoutAddTextWithAlias>
c0de8410:	e008      	b.n	c0de8424 <nbgl_pageDrawGenericContentExt+0x3e4>
c0de8412:	e9d5 0104 	ldrd	r0, r1, [r5, #16]
c0de8416:	f851 2024 	ldr.w	r2, [r1, r4, lsl #2]
c0de841a:	f850 1024 	ldr.w	r1, [r0, r4, lsl #2]
c0de841e:	4650      	mov	r0, sl
c0de8420:	f7fd f95b 	bl	c0de56da <nbgl_layoutAddText>
c0de8424:	1a3f      	subs	r7, r7, r0
c0de8426:	b2b8      	uxth	r0, r7
c0de8428:	280b      	cmp	r0, #11
c0de842a:	d302      	bcc.n	c0de8432 <nbgl_pageDrawGenericContentExt+0x3f2>
c0de842c:	4650      	mov	r0, sl
c0de842e:	f7fe f91b 	bl	c0de6668 <nbgl_layoutAddSeparationLine>
c0de8432:	3618      	adds	r6, #24
c0de8434:	3401      	adds	r4, #1
c0de8436:	e7d6      	b.n	c0de83e6 <nbgl_pageDrawGenericContentExt+0x3a6>
c0de8438:	f105 0110 	add.w	r1, r5, #16
c0de843c:	4650      	mov	r0, sl
c0de843e:	f7fd fa4d 	bl	c0de58dc <nbgl_layoutAddRadioChoice>
c0de8442:	4650      	mov	r0, sl
c0de8444:	f7fe ff6b 	bl	c0de731e <nbgl_layoutDraw>
c0de8448:	4650      	mov	r0, sl
c0de844a:	b016      	add	sp, #88	@ 0x58
c0de844c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8450:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de8452:	2800      	cmp	r0, #0
c0de8454:	d098      	beq.n	c0de8388 <nbgl_pageDrawGenericContentExt+0x348>
c0de8456:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de8458:	2900      	cmp	r1, #0
c0de845a:	d095      	beq.n	c0de8388 <nbgl_pageDrawGenericContentExt+0x348>
c0de845c:	e9cd 010d 	strd	r0, r1, [sp, #52]	@ 0x34
c0de8460:	f895 002c 	ldrb.w	r0, [r5, #44]	@ 0x2c
c0de8464:	f895 102d 	ldrb.w	r1, [r5, #45]	@ 0x2d
c0de8468:	f895 2038 	ldrb.w	r2, [r5, #56]	@ 0x38
c0de846c:	f88d 003c 	strb.w	r0, [sp, #60]	@ 0x3c
c0de8470:	f88d 203d 	strb.w	r2, [sp, #61]	@ 0x3d
c0de8474:	f88d 103e 	strb.w	r1, [sp, #62]	@ 0x3e
c0de8478:	a90d      	add	r1, sp, #52	@ 0x34
c0de847a:	4650      	mov	r0, sl
c0de847c:	f7fd ff30 	bl	c0de62e0 <nbgl_layoutAddHorizontalButtons>
c0de8480:	e7df      	b.n	c0de8442 <nbgl_pageDrawGenericContentExt+0x402>
c0de8482:	bf00      	nop
c0de8484:	00004eed 	.word	0x00004eed

c0de8488 <nbgl_pageDrawGenericContent>:
c0de8488:	2300      	movs	r3, #0
c0de848a:	f7ff bdd9 	b.w	c0de8040 <nbgl_pageDrawGenericContentExt>

c0de848e <nbgl_pageRelease>:
c0de848e:	f7fe bf65 	b.w	c0de735c <nbgl_layoutRelease>

c0de8492 <OUTLINED_FUNCTION_0>:
c0de8492:	4650      	mov	r0, sl
c0de8494:	2128      	movs	r1, #40	@ 0x28
c0de8496:	f7ff bd89 	b.w	c0de7fac <addEmptyHeader>

c0de849a <OUTLINED_FUNCTION_1>:
c0de849a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de849e:	788a      	ldrb	r2, [r1, #2]
c0de84a0:	78c9      	ldrb	r1, [r1, #3]
c0de84a2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de84a6:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de84aa:	4770      	bx	lr

c0de84ac <OUTLINED_FUNCTION_2>:
c0de84ac:	910e      	str	r1, [sp, #56]	@ 0x38
c0de84ae:	9011      	str	r0, [sp, #68]	@ 0x44
c0de84b0:	4650      	mov	r0, sl
c0de84b2:	4631      	mov	r1, r6
c0de84b4:	f7fd bd90 	b.w	c0de5fd8 <nbgl_layoutAddContentCenter>

c0de84b8 <OUTLINED_FUNCTION_3>:
c0de84b8:	7c73      	ldrb	r3, [r6, #17]
c0de84ba:	f88d 003e 	strb.w	r0, [sp, #62]	@ 0x3e
c0de84be:	7830      	ldrb	r0, [r6, #0]
c0de84c0:	f88d 1034 	strb.w	r1, [sp, #52]	@ 0x34
c0de84c4:	4770      	bx	lr

c0de84c6 <OUTLINED_FUNCTION_4>:
c0de84c6:	4630      	mov	r0, r6
c0de84c8:	f003 bfd8 	b.w	c0dec47c <__aeabi_memclr>

c0de84cc <OUTLINED_FUNCTION_5>:
c0de84cc:	f895 002c 	ldrb.w	r0, [r5, #44]	@ 0x2c
c0de84d0:	f88d 003c 	strb.w	r0, [sp, #60]	@ 0x3c
c0de84d4:	f895 002d 	ldrb.w	r0, [r5, #45]	@ 0x2d
c0de84d8:	4770      	bx	lr

c0de84da <OUTLINED_FUNCTION_6>:
c0de84da:	f105 0110 	add.w	r1, r5, #16
c0de84de:	4650      	mov	r0, sl
c0de84e0:	f7fd bf12 	b.w	c0de6308 <nbgl_layoutAddTagValueList>

c0de84e4 <getNbTagValuesInPage>:
c0de84e4:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de84e8:	4604      	mov	r4, r0
c0de84ea:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de84ec:	f04f 0800 	mov.w	r8, #0
c0de84f0:	2b00      	cmp	r3, #0
c0de84f2:	460e      	mov	r6, r1
c0de84f4:	f04f 0b00 	mov.w	fp, #0
c0de84f8:	f880 8000 	strb.w	r8, [r0]
c0de84fc:	f44f 70e8 	mov.w	r0, #464	@ 0x1d0
c0de8500:	bf18      	it	ne
c0de8502:	f44f 70cc 	movne.w	r0, #408	@ 0x198
c0de8506:	0111      	lsls	r1, r2, #4
c0de8508:	e9cd 2001 	strd	r2, r0, [sp, #4]
c0de850c:	4544      	cmp	r4, r8
c0de850e:	d052      	beq.n	c0de85b6 <getNbTagValuesInPage+0xd2>
c0de8510:	465d      	mov	r5, fp
c0de8512:	f10b 0a18 	add.w	sl, fp, #24
c0de8516:	f1b8 0f00 	cmp.w	r8, #0
c0de851a:	bf18      	it	ne
c0de851c:	4655      	movne	r5, sl
c0de851e:	6830      	ldr	r0, [r6, #0]
c0de8520:	9103      	str	r1, [sp, #12]
c0de8522:	b108      	cbz	r0, c0de8528 <getNbTagValuesInPage+0x44>
c0de8524:	4408      	add	r0, r1
c0de8526:	e004      	b.n	c0de8532 <getNbTagValuesInPage+0x4e>
c0de8528:	9801      	ldr	r0, [sp, #4]
c0de852a:	6871      	ldr	r1, [r6, #4]
c0de852c:	4440      	add	r0, r8
c0de852e:	b2c0      	uxtb	r0, r0
c0de8530:	4788      	blx	r1
c0de8532:	f003 fc77 	bl	c0debe24 <pic>
c0de8536:	4607      	mov	r7, r0
c0de8538:	7b00      	ldrb	r0, [r0, #12]
c0de853a:	07c1      	lsls	r1, r0, #31
c0de853c:	bf18      	it	ne
c0de853e:	f1b8 0f00 	cmpne.w	r8, #0
c0de8542:	d13b      	bne.n	c0de85bc <getNbTagValuesInPage+0xd8>
c0de8544:	0780      	lsls	r0, r0, #30
c0de8546:	d45d      	bmi.n	c0de8604 <getNbTagValuesInPage+0x120>
c0de8548:	7bb3      	ldrb	r3, [r6, #14]
c0de854a:	6839      	ldr	r1, [r7, #0]
c0de854c:	200b      	movs	r0, #11
c0de854e:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8552:	46a2      	mov	sl, r4
c0de8554:	f003 fa92 	bl	c0deba7c <nbgl_getTextHeightInWidth>
c0de8558:	182c      	adds	r4, r5, r0
c0de855a:	7b70      	ldrb	r0, [r6, #13]
c0de855c:	250b      	movs	r5, #11
c0de855e:	7bb3      	ldrb	r3, [r6, #14]
c0de8560:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8564:	2800      	cmp	r0, #0
c0de8566:	bf08      	it	eq
c0de8568:	250d      	moveq	r5, #13
c0de856a:	6879      	ldr	r1, [r7, #4]
c0de856c:	4628      	mov	r0, r5
c0de856e:	f003 fa85 	bl	c0deba7c <nbgl_getTextHeightInWidth>
c0de8572:	4420      	add	r0, r4
c0de8574:	6879      	ldr	r1, [r7, #4]
c0de8576:	7bb3      	ldrb	r3, [r6, #14]
c0de8578:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de857c:	f100 0b04 	add.w	fp, r0, #4
c0de8580:	4628      	mov	r0, r5
c0de8582:	fa1f f48b 	uxth.w	r4, fp
c0de8586:	f003 fa7e 	bl	c0deba86 <nbgl_getTextNbLinesInWidth>
c0de858a:	9902      	ldr	r1, [sp, #8]
c0de858c:	428c      	cmp	r4, r1
c0de858e:	bf38      	it	cc
c0de8590:	280a      	cmpcc	r0, #10
c0de8592:	d205      	bcs.n	c0de85a0 <getNbTagValuesInPage+0xbc>
c0de8594:	9903      	ldr	r1, [sp, #12]
c0de8596:	f108 0801 	add.w	r8, r8, #1
c0de859a:	4654      	mov	r4, sl
c0de859c:	3110      	adds	r1, #16
c0de859e:	e7b5      	b.n	c0de850c <getNbTagValuesInPage+0x28>
c0de85a0:	ea5f 6008 	movs.w	r0, r8, lsl #24
c0de85a4:	d104      	bne.n	c0de85b0 <getNbTagValuesInPage+0xcc>
c0de85a6:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de85a8:	f04f 0801 	mov.w	r8, #1
c0de85ac:	f880 8000 	strb.w	r8, [r0]
c0de85b0:	4654      	mov	r4, sl
c0de85b2:	46da      	mov	sl, fp
c0de85b4:	e003      	b.n	c0de85be <getNbTagValuesInPage+0xda>
c0de85b6:	46da      	mov	sl, fp
c0de85b8:	46a0      	mov	r8, r4
c0de85ba:	e000      	b.n	c0de85be <getNbTagValuesInPage+0xda>
c0de85bc:	46aa      	mov	sl, r5
c0de85be:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de85c0:	b170      	cbz	r0, c0de85e0 <getNbTagValuesInPage+0xfc>
c0de85c2:	fa5f f088 	uxtb.w	r0, r8
c0de85c6:	42a0      	cmp	r0, r4
c0de85c8:	d10a      	bne.n	c0de85e0 <getNbTagValuesInPage+0xfc>
c0de85ca:	9902      	ldr	r1, [sp, #8]
c0de85cc:	fa1f f08a 	uxth.w	r0, sl
c0de85d0:	f501 71bc 	add.w	r1, r1, #376	@ 0x178
c0de85d4:	f401 71ac 	and.w	r1, r1, #344	@ 0x158
c0de85d8:	4281      	cmp	r1, r0
c0de85da:	bf38      	it	cc
c0de85dc:	3c01      	subcc	r4, #1
c0de85de:	e00d      	b.n	c0de85fc <getNbTagValuesInPage+0x118>
c0de85e0:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de85e2:	b150      	cbz	r0, c0de85fa <getNbTagValuesInPage+0x116>
c0de85e4:	9902      	ldr	r1, [sp, #8]
c0de85e6:	fa1f f08a 	uxth.w	r0, sl
c0de85ea:	f501 71e0 	add.w	r1, r1, #448	@ 0x1c0
c0de85ee:	f401 71ec 	and.w	r1, r1, #472	@ 0x1d8
c0de85f2:	4281      	cmp	r1, r0
c0de85f4:	bf38      	it	cc
c0de85f6:	f1a8 0801 	subcc.w	r8, r8, #1
c0de85fa:	4644      	mov	r4, r8
c0de85fc:	b2e0      	uxtb	r0, r4
c0de85fe:	b004      	add	sp, #16
c0de8600:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8604:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de8606:	f1b8 0f00 	cmp.w	r8, #0
c0de860a:	d1d9      	bne.n	c0de85c0 <getNbTagValuesInPage+0xdc>
c0de860c:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de860e:	f04f 0801 	mov.w	r8, #1
c0de8612:	46da      	mov	sl, fp
c0de8614:	f881 8000 	strb.w	r8, [r1]
c0de8618:	e7d2      	b.n	c0de85c0 <getNbTagValuesInPage+0xdc>

c0de861a <nbgl_useCaseGetNbInfosInPage>:
c0de861a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de861e:	f002 fc53 	bl	c0deaec8 <OUTLINED_FUNCTION_11>
c0de8622:	bf18      	it	ne
c0de8624:	f44f 7bcc 	movne.w	fp, #408	@ 0x198
c0de8628:	6848      	ldr	r0, [r1, #4]
c0de862a:	f003 fbfb 	bl	c0debe24 <pic>
c0de862e:	eb00 0486 	add.w	r4, r0, r6, lsl #2
c0de8632:	2600      	movs	r6, #0
c0de8634:	2500      	movs	r5, #0
c0de8636:	2700      	movs	r7, #0
c0de8638:	45b2      	cmp	sl, r6
c0de863a:	d011      	beq.n	c0de8660 <nbgl_useCaseGetNbInfosInPage+0x46>
c0de863c:	f854 0026 	ldr.w	r0, [r4, r6, lsl #2]
c0de8640:	f003 fbf0 	bl	c0debe24 <pic>
c0de8644:	4601      	mov	r1, r0
c0de8646:	200b      	movs	r0, #11
c0de8648:	f002 fc14 	bl	c0deae74 <OUTLINED_FUNCTION_1>
c0de864c:	f107 0168 	add.w	r1, r7, #104	@ 0x68
c0de8650:	b289      	uxth	r1, r1
c0de8652:	180f      	adds	r7, r1, r0
c0de8654:	b2b8      	uxth	r0, r7
c0de8656:	4558      	cmp	r0, fp
c0de8658:	d204      	bcs.n	c0de8664 <nbgl_useCaseGetNbInfosInPage+0x4a>
c0de865a:	3601      	adds	r6, #1
c0de865c:	4605      	mov	r5, r0
c0de865e:	e7eb      	b.n	c0de8638 <nbgl_useCaseGetNbInfosInPage+0x1e>
c0de8660:	4656      	mov	r6, sl
c0de8662:	e006      	b.n	c0de8672 <nbgl_useCaseGetNbInfosInPage+0x58>
c0de8664:	f1b8 0f00 	cmp.w	r8, #0
c0de8668:	d103      	bne.n	c0de8672 <nbgl_useCaseGetNbInfosInPage+0x58>
c0de866a:	08e8      	lsrs	r0, r5, #3
c0de866c:	2832      	cmp	r0, #50	@ 0x32
c0de866e:	bf88      	it	hi
c0de8670:	3e01      	subhi	r6, #1
c0de8672:	b2f0      	uxtb	r0, r6
c0de8674:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de8678 <nbgl_useCaseGetNbSwitchesInPage>:
c0de8678:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de867c:	f002 fc24 	bl	c0deaec8 <OUTLINED_FUNCTION_11>
c0de8680:	bf18      	it	ne
c0de8682:	f44f 7bcc 	movne.w	fp, #408	@ 0x198
c0de8686:	6808      	ldr	r0, [r1, #0]
c0de8688:	f003 fbcc 	bl	c0debe24 <pic>
c0de868c:	eb06 0146 	add.w	r1, r6, r6, lsl #1
c0de8690:	2600      	movs	r6, #0
c0de8692:	2500      	movs	r5, #0
c0de8694:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de8698:	1d04      	adds	r4, r0, #4
c0de869a:	462f      	mov	r7, r5
c0de869c:	45b2      	cmp	sl, r6
c0de869e:	d01f      	beq.n	c0de86e0 <nbgl_useCaseGetNbSwitchesInPage+0x68>
c0de86a0:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de86a4:	200c      	movs	r0, #12
c0de86a6:	f002 fbe5 	bl	c0deae74 <OUTLINED_FUNCTION_1>
c0de86aa:	2828      	cmp	r0, #40	@ 0x28
c0de86ac:	d201      	bcs.n	c0de86b2 <nbgl_useCaseGetNbSwitchesInPage+0x3a>
c0de86ae:	2028      	movs	r0, #40	@ 0x28
c0de86b0:	e004      	b.n	c0de86bc <nbgl_useCaseGetNbSwitchesInPage+0x44>
c0de86b2:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de86b6:	200c      	movs	r0, #12
c0de86b8:	f002 fbdc 	bl	c0deae74 <OUTLINED_FUNCTION_1>
c0de86bc:	6821      	ldr	r1, [r4, #0]
c0de86be:	4438      	add	r0, r7
c0de86c0:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de86c4:	b129      	cbz	r1, c0de86d2 <nbgl_useCaseGetNbSwitchesInPage+0x5a>
c0de86c6:	200b      	movs	r0, #11
c0de86c8:	f002 fbd4 	bl	c0deae74 <OUTLINED_FUNCTION_1>
c0de86cc:	4428      	add	r0, r5
c0de86ce:	f100 050c 	add.w	r5, r0, #12
c0de86d2:	340c      	adds	r4, #12
c0de86d4:	3601      	adds	r6, #1
c0de86d6:	b2a8      	uxth	r0, r5
c0de86d8:	4583      	cmp	fp, r0
c0de86da:	d8de      	bhi.n	c0de869a <nbgl_useCaseGetNbSwitchesInPage+0x22>
c0de86dc:	f1a6 0a01 	sub.w	sl, r6, #1
c0de86e0:	b2b8      	uxth	r0, r7
c0de86e2:	2100      	movs	r1, #0
c0de86e4:	08c0      	lsrs	r0, r0, #3
c0de86e6:	2832      	cmp	r0, #50	@ 0x32
c0de86e8:	bf88      	it	hi
c0de86ea:	2101      	movhi	r1, #1
c0de86ec:	ea21 0008 	bic.w	r0, r1, r8
c0de86f0:	ebaa 0000 	sub.w	r0, sl, r0
c0de86f4:	b2c0      	uxtb	r0, r0
c0de86f6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de86fa <nbgl_useCaseGetNbBarsInPage>:
c0de86fa:	b570      	push	{r4, r5, r6, lr}
c0de86fc:	f44f 71fc 	mov.w	r1, #504	@ 0x1f8
c0de8700:	2b00      	cmp	r3, #0
c0de8702:	bf18      	it	ne
c0de8704:	f44f 71cc 	movne.w	r1, #408	@ 0x198
c0de8708:	2200      	movs	r2, #0
c0de870a:	2400      	movs	r4, #0
c0de870c:	2500      	movs	r5, #0
c0de870e:	b2ee      	uxtb	r6, r5
c0de8710:	4286      	cmp	r6, r0
c0de8712:	d208      	bcs.n	c0de8726 <nbgl_useCaseGetNbBarsInPage+0x2c>
c0de8714:	b292      	uxth	r2, r2
c0de8716:	325c      	adds	r2, #92	@ 0x5c
c0de8718:	b296      	uxth	r6, r2
c0de871a:	428e      	cmp	r6, r1
c0de871c:	d202      	bcs.n	c0de8724 <nbgl_useCaseGetNbBarsInPage+0x2a>
c0de871e:	3501      	adds	r5, #1
c0de8720:	4634      	mov	r4, r6
c0de8722:	e7f4      	b.n	c0de870e <nbgl_useCaseGetNbBarsInPage+0x14>
c0de8724:	4628      	mov	r0, r5
c0de8726:	08e1      	lsrs	r1, r4, #3
c0de8728:	2200      	movs	r2, #0
c0de872a:	2932      	cmp	r1, #50	@ 0x32
c0de872c:	bf88      	it	hi
c0de872e:	2201      	movhi	r2, #1
c0de8730:	ea22 0103 	bic.w	r1, r2, r3
c0de8734:	1a40      	subs	r0, r0, r1
c0de8736:	b2c0      	uxtb	r0, r0
c0de8738:	bd70      	pop	{r4, r5, r6, pc}

c0de873a <nbgl_useCaseGetNbChoicesInPage>:
c0de873a:	b570      	push	{r4, r5, r6, lr}
c0de873c:	f44f 72fc 	mov.w	r2, #504	@ 0x1f8
c0de8740:	2b00      	cmp	r3, #0
c0de8742:	bf18      	it	ne
c0de8744:	f44f 72cc 	movne.w	r2, #408	@ 0x198
c0de8748:	2400      	movs	r4, #0
c0de874a:	2500      	movs	r5, #0
c0de874c:	2100      	movs	r1, #0
c0de874e:	b2ce      	uxtb	r6, r1
c0de8750:	4286      	cmp	r6, r0
c0de8752:	d207      	bcs.n	c0de8764 <nbgl_useCaseGetNbChoicesInPage+0x2a>
c0de8754:	b2a4      	uxth	r4, r4
c0de8756:	345c      	adds	r4, #92	@ 0x5c
c0de8758:	b2a6      	uxth	r6, r4
c0de875a:	4296      	cmp	r6, r2
c0de875c:	d204      	bcs.n	c0de8768 <nbgl_useCaseGetNbChoicesInPage+0x2e>
c0de875e:	3101      	adds	r1, #1
c0de8760:	4635      	mov	r5, r6
c0de8762:	e7f4      	b.n	c0de874e <nbgl_useCaseGetNbChoicesInPage+0x14>
c0de8764:	4601      	mov	r1, r0
c0de8766:	e004      	b.n	c0de8772 <nbgl_useCaseGetNbChoicesInPage+0x38>
c0de8768:	b91b      	cbnz	r3, c0de8772 <nbgl_useCaseGetNbChoicesInPage+0x38>
c0de876a:	08e8      	lsrs	r0, r5, #3
c0de876c:	2832      	cmp	r0, #50	@ 0x32
c0de876e:	bf88      	it	hi
c0de8770:	3901      	subhi	r1, #1
c0de8772:	b2c8      	uxtb	r0, r1
c0de8774:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de8778 <useCaseHomeExt>:
c0de8778:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de877c:	b08f      	sub	sp, #60	@ 0x3c
c0de877e:	4604      	mov	r4, r0
c0de8780:	a802      	add	r0, sp, #8
c0de8782:	460f      	mov	r7, r1
c0de8784:	2130      	movs	r1, #48	@ 0x30
c0de8786:	461e      	mov	r6, r3
c0de8788:	4615      	mov	r5, r2
c0de878a:	3004      	adds	r0, #4
c0de878c:	f003 fe76 	bl	c0dec47c <__aeabi_memclr>
c0de8790:	2009      	movs	r0, #9
c0de8792:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de8796:	2006      	movs	r0, #6
c0de8798:	f88d 001e 	strb.w	r0, [sp, #30]
c0de879c:	2004      	movs	r0, #4
c0de879e:	f88d 001d 	strb.w	r0, [sp, #29]
c0de87a2:	2003      	movs	r0, #3
c0de87a4:	2e00      	cmp	r6, #0
c0de87a6:	bf18      	it	ne
c0de87a8:	2001      	movne	r0, #1
c0de87aa:	f88d 001c 	strb.w	r0, [sp, #28]
c0de87ae:	9705      	str	r7, [sp, #20]
c0de87b0:	9402      	str	r4, [sp, #8]
c0de87b2:	f000 f87b 	bl	c0de88ac <reset_callbacks_and_context>
c0de87b6:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de87b8:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de87bc:	b951      	cbnz	r1, c0de87d4 <useCaseHomeExt+0x5c>
c0de87be:	b94a      	cbnz	r2, c0de87d4 <useCaseHomeExt+0x5c>
c0de87c0:	4831      	ldr	r0, [pc, #196]	@ (c0de8888 <useCaseHomeExt+0x110>)
c0de87c2:	2100      	movs	r1, #0
c0de87c4:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
c0de87c8:	4448      	add	r0, r9
c0de87ca:	6241      	str	r1, [r0, #36]	@ 0x24
c0de87cc:	2002      	movs	r0, #2
c0de87ce:	f88d 001f 	strb.w	r0, [sp, #31]
c0de87d2:	e00e      	b.n	c0de87f2 <useCaseHomeExt+0x7a>
c0de87d4:	4b2c      	ldr	r3, [pc, #176]	@ (c0de8888 <useCaseHomeExt+0x110>)
c0de87d6:	6886      	ldr	r6, [r0, #8]
c0de87d8:	e9cd 120c 	strd	r1, r2, [sp, #48]	@ 0x30
c0de87dc:	444b      	add	r3, r9
c0de87de:	625e      	str	r6, [r3, #36]	@ 0x24
c0de87e0:	2308      	movs	r3, #8
c0de87e2:	7b00      	ldrb	r0, [r0, #12]
c0de87e4:	f88d 301f 	strb.w	r3, [sp, #31]
c0de87e8:	2800      	cmp	r0, #0
c0de87ea:	bf18      	it	ne
c0de87ec:	2001      	movne	r0, #1
c0de87ee:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de87f2:	e9dd a817 	ldrd	sl, r8, [sp, #92]	@ 0x5c
c0de87f6:	bb8d      	cbnz	r5, c0de885c <useCaseHomeExt+0xe4>
c0de87f8:	4620      	mov	r0, r4
c0de87fa:	f003 feab 	bl	c0dec554 <strlen>
c0de87fe:	4e24      	ldr	r6, [pc, #144]	@ (c0de8890 <useCaseHomeExt+0x118>)
c0de8800:	2814      	cmp	r0, #20
c0de8802:	447e      	add	r6, pc
c0de8804:	d307      	bcc.n	c0de8816 <useCaseHomeExt+0x9e>
c0de8806:	4821      	ldr	r0, [pc, #132]	@ (c0de888c <useCaseHomeExt+0x114>)
c0de8808:	4922      	ldr	r1, [pc, #136]	@ (c0de8894 <useCaseHomeExt+0x11c>)
c0de880a:	2236      	movs	r2, #54	@ 0x36
c0de880c:	4448      	add	r0, r9
c0de880e:	4479      	add	r1, pc
c0de8810:	f003 fe2a 	bl	c0dec468 <__aeabi_memcpy>
c0de8814:	e00a      	b.n	c0de882c <useCaseHomeExt+0xb4>
c0de8816:	e9cd 4600 	strd	r4, r6, [sp]
c0de881a:	481c      	ldr	r0, [pc, #112]	@ (c0de888c <useCaseHomeExt+0x114>)
c0de881c:	214a      	movs	r1, #74	@ 0x4a
c0de881e:	4a1e      	ldr	r2, [pc, #120]	@ (c0de8898 <useCaseHomeExt+0x120>)
c0de8820:	4b1e      	ldr	r3, [pc, #120]	@ (c0de889c <useCaseHomeExt+0x124>)
c0de8822:	4448      	add	r0, r9
c0de8824:	447a      	add	r2, pc
c0de8826:	447b      	add	r3, pc
c0de8828:	f003 f96a 	bl	c0debb00 <snprintf>
c0de882c:	4f17      	ldr	r7, [pc, #92]	@ (c0de888c <useCaseHomeExt+0x114>)
c0de882e:	200b      	movs	r0, #11
c0de8830:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de8834:	2300      	movs	r3, #0
c0de8836:	eb09 0507 	add.w	r5, r9, r7
c0de883a:	4629      	mov	r1, r5
c0de883c:	f003 f923 	bl	c0deba86 <nbgl_getTextNbLinesInWidth>
c0de8840:	2804      	cmp	r0, #4
c0de8842:	d30b      	bcc.n	c0de885c <useCaseHomeExt+0xe4>
c0de8844:	e9cd 4600 	strd	r4, r6, [sp]
c0de8848:	eb09 0507 	add.w	r5, r9, r7
c0de884c:	214a      	movs	r1, #74	@ 0x4a
c0de884e:	4a14      	ldr	r2, [pc, #80]	@ (c0de88a0 <useCaseHomeExt+0x128>)
c0de8850:	4b14      	ldr	r3, [pc, #80]	@ (c0de88a4 <useCaseHomeExt+0x12c>)
c0de8852:	4628      	mov	r0, r5
c0de8854:	447a      	add	r2, pc
c0de8856:	447b      	add	r3, pc
c0de8858:	f003 f952 	bl	c0debb00 <snprintf>
c0de885c:	480a      	ldr	r0, [pc, #40]	@ (c0de8888 <useCaseHomeExt+0x110>)
c0de885e:	9503      	str	r5, [sp, #12]
c0de8860:	2100      	movs	r1, #0
c0de8862:	eb09 0400 	add.w	r4, r9, r0
c0de8866:	f8c4 a028 	str.w	sl, [r4, #40]	@ 0x28
c0de886a:	f8c4 8004 	str.w	r8, [r4, #4]
c0de886e:	480e      	ldr	r0, [pc, #56]	@ (c0de88a8 <useCaseHomeExt+0x130>)
c0de8870:	aa02      	add	r2, sp, #8
c0de8872:	4478      	add	r0, pc
c0de8874:	f7ff faa0 	bl	c0de7db8 <nbgl_pageDrawInfo>
c0de8878:	6160      	str	r0, [r4, #20]
c0de887a:	2002      	movs	r0, #2
c0de887c:	f003 f8ae 	bl	c0deb9dc <nbgl_refreshSpecial>
c0de8880:	b00f      	add	sp, #60	@ 0x3c
c0de8882:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de8886:	bf00      	nop
c0de8888:	00000bd0 	.word	0x00000bd0
c0de888c:	00000a50 	.word	0x00000a50
c0de8890:	000057c0 	.word	0x000057c0
c0de8894:	00006a0a 	.word	0x00006a0a
c0de8898:	000052e2 	.word	0x000052e2
c0de889c:	000059d3 	.word	0x000059d3
c0de88a0:	0000534c 	.word	0x0000534c
c0de88a4:	000059a3 	.word	0x000059a3
c0de88a8:	000008ef 	.word	0x000008ef

c0de88ac <reset_callbacks_and_context>:
c0de88ac:	b580      	push	{r7, lr}
c0de88ae:	4808      	ldr	r0, [pc, #32]	@ (c0de88d0 <reset_callbacks_and_context+0x24>)
c0de88b0:	2100      	movs	r1, #0
c0de88b2:	4448      	add	r0, r9
c0de88b4:	e9c0 1109 	strd	r1, r1, [r0, #36]	@ 0x24
c0de88b8:	62c1      	str	r1, [r0, #44]	@ 0x2c
c0de88ba:	e9c0 1101 	strd	r1, r1, [r0, #4]
c0de88be:	60c1      	str	r1, [r0, #12]
c0de88c0:	6181      	str	r1, [r0, #24]
c0de88c2:	4804      	ldr	r0, [pc, #16]	@ (c0de88d4 <reset_callbacks_and_context+0x28>)
c0de88c4:	2190      	movs	r1, #144	@ 0x90
c0de88c6:	4448      	add	r0, r9
c0de88c8:	f003 fdd8 	bl	c0dec47c <__aeabi_memclr>
c0de88cc:	bd80      	pop	{r7, pc}
c0de88ce:	bf00      	nop
c0de88d0:	00000bd0 	.word	0x00000bd0
c0de88d4:	00000918 	.word	0x00000918

c0de88d8 <prepareNavInfo>:
c0de88d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de88dc:	4f1b      	ldr	r7, [pc, #108]	@ (c0de894c <prepareNavInfo+0x74>)
c0de88de:	460c      	mov	r4, r1
c0de88e0:	4606      	mov	r6, r0
c0de88e2:	211c      	movs	r1, #28
c0de88e4:	4690      	mov	r8, r2
c0de88e6:	eb09 0507 	add.w	r5, r9, r7
c0de88ea:	f105 0060 	add.w	r0, r5, #96	@ 0x60
c0de88ee:	f003 fdc5 	bl	c0dec47c <__aeabi_memclr>
c0de88f2:	2009      	movs	r0, #9
c0de88f4:	f885 4061 	strb.w	r4, [r5, #97]	@ 0x61
c0de88f8:	f885 0065 	strb.w	r0, [r5, #101]	@ 0x65
c0de88fc:	2001      	movs	r0, #1
c0de88fe:	f885 0063 	strb.w	r0, [r5, #99]	@ 0x63
c0de8902:	b1ce      	cbz	r6, c0de8938 <prepareNavInfo+0x60>
c0de8904:	eb09 0007 	add.w	r0, r9, r7
c0de8908:	210c      	movs	r1, #12
c0de890a:	f880 1062 	strb.w	r1, [r0, #98]	@ 0x62
c0de890e:	2103      	movs	r1, #3
c0de8910:	f8c0 8074 	str.w	r8, [r0, #116]	@ 0x74
c0de8914:	f880 1073 	strb.w	r1, [r0, #115]	@ 0x73
c0de8918:	f819 1007 	ldrb.w	r1, [r9, r7]
c0de891c:	3903      	subs	r1, #3
c0de891e:	bf18      	it	ne
c0de8920:	2101      	movne	r1, #1
c0de8922:	2200      	movs	r2, #0
c0de8924:	f880 1072 	strb.w	r1, [r0, #114]	@ 0x72
c0de8928:	2c01      	cmp	r4, #1
c0de892a:	bf88      	it	hi
c0de892c:	2201      	movhi	r2, #1
c0de892e:	4311      	orrs	r1, r2
c0de8930:	f880 1071 	strb.w	r1, [r0, #113]	@ 0x71
c0de8934:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de8938:	eb09 0107 	add.w	r1, r9, r7
c0de893c:	f881 0071 	strb.w	r0, [r1, #113]	@ 0x71
c0de8940:	2003      	movs	r0, #3
c0de8942:	f881 0073 	strb.w	r0, [r1, #115]	@ 0x73
c0de8946:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de894a:	bf00      	nop
c0de894c:	00000bd0 	.word	0x00000bd0

c0de8950 <displaySettingsPage>:
c0de8950:	b570      	push	{r4, r5, r6, lr}
c0de8952:	b090      	sub	sp, #64	@ 0x40
c0de8954:	460c      	mov	r4, r1
c0de8956:	4605      	mov	r5, r0
c0de8958:	4668      	mov	r0, sp
c0de895a:	2140      	movs	r1, #64	@ 0x40
c0de895c:	f003 fd8e 	bl	c0dec47c <__aeabi_memclr>
c0de8960:	4e12      	ldr	r6, [pc, #72]	@ (c0de89ac <displaySettingsPage+0x5c>)
c0de8962:	eb09 0006 	add.w	r0, r9, r6
c0de8966:	6882      	ldr	r2, [r0, #8]
c0de8968:	b1f2      	cbz	r2, c0de89a8 <displaySettingsPage+0x58>
c0de896a:	4669      	mov	r1, sp
c0de896c:	4628      	mov	r0, r5
c0de896e:	4790      	blx	r2
c0de8970:	b1d0      	cbz	r0, c0de89a8 <displaySettingsPage+0x58>
c0de8972:	444e      	add	r6, r9
c0de8974:	2009      	movs	r0, #9
c0de8976:	466a      	mov	r2, sp
c0de8978:	f88d 0006 	strb.w	r0, [sp, #6]
c0de897c:	f240 2001 	movw	r0, #513	@ 0x201
c0de8980:	f806 5f60 	strb.w	r5, [r6, #96]!
c0de8984:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de8988:	f856 0c50 	ldr.w	r0, [r6, #-80]
c0de898c:	4631      	mov	r1, r6
c0de898e:	9000      	str	r0, [sp, #0]
c0de8990:	4807      	ldr	r0, [pc, #28]	@ (c0de89b0 <displaySettingsPage+0x60>)
c0de8992:	4478      	add	r0, pc
c0de8994:	f7ff fd78 	bl	c0de8488 <nbgl_pageDrawGenericContent>
c0de8998:	f846 0c4c 	str.w	r0, [r6, #-76]
c0de899c:	2001      	movs	r0, #1
c0de899e:	2c00      	cmp	r4, #0
c0de89a0:	bf18      	it	ne
c0de89a2:	2002      	movne	r0, #2
c0de89a4:	f003 f81a 	bl	c0deb9dc <nbgl_refreshSpecial>
c0de89a8:	b010      	add	sp, #64	@ 0x40
c0de89aa:	bd70      	pop	{r4, r5, r6, pc}
c0de89ac:	00000bd0 	.word	0x00000bd0
c0de89b0:	000007cf 	.word	0x000007cf

c0de89b4 <nbgl_useCaseGenericSettings>:
c0de89b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de89b8:	461d      	mov	r5, r3
c0de89ba:	4616      	mov	r6, r2
c0de89bc:	4688      	mov	r8, r1
c0de89be:	4607      	mov	r7, r0
c0de89c0:	f7ff ff74 	bl	c0de88ac <reset_callbacks_and_context>
c0de89c4:	4c25      	ldr	r4, [pc, #148]	@ (c0de8a5c <nbgl_useCaseGenericSettings+0xa8>)
c0de89c6:	2002      	movs	r0, #2
c0de89c8:	f809 0004 	strb.w	r0, [r9, r4]
c0de89cc:	eb09 0004 	add.w	r0, r9, r4
c0de89d0:	6107      	str	r7, [r0, #16]
c0de89d2:	9906      	ldr	r1, [sp, #24]
c0de89d4:	6041      	str	r1, [r0, #4]
c0de89d6:	b12e      	cbz	r6, c0de89e4 <nbgl_useCaseGenericSettings+0x30>
c0de89d8:	4821      	ldr	r0, [pc, #132]	@ (c0de8a60 <nbgl_useCaseGenericSettings+0xac>)
c0de89da:	e896 000e 	ldmia.w	r6, {r1, r2, r3}
c0de89de:	4448      	add	r0, r9
c0de89e0:	3004      	adds	r0, #4
c0de89e2:	c00e      	stmia	r0!, {r1, r2, r3}
c0de89e4:	b1a5      	cbz	r5, c0de8a10 <nbgl_useCaseGenericSettings+0x5c>
c0de89e6:	481e      	ldr	r0, [pc, #120]	@ (c0de8a60 <nbgl_useCaseGenericSettings+0xac>)
c0de89e8:	2101      	movs	r1, #1
c0de89ea:	4448      	add	r0, r9
c0de89ec:	7501      	strb	r1, [r0, #20]
c0de89ee:	481d      	ldr	r0, [pc, #116]	@ (c0de8a64 <nbgl_useCaseGenericSettings+0xb0>)
c0de89f0:	2138      	movs	r1, #56	@ 0x38
c0de89f2:	eb09 0600 	add.w	r6, r9, r0
c0de89f6:	f106 0038 	add.w	r0, r6, #56	@ 0x38
c0de89fa:	f003 fd3f 	bl	c0dec47c <__aeabi_memclr>
c0de89fe:	2008      	movs	r0, #8
c0de8a00:	4629      	mov	r1, r5
c0de8a02:	2230      	movs	r2, #48	@ 0x30
c0de8a04:	f886 0038 	strb.w	r0, [r6, #56]	@ 0x38
c0de8a08:	f106 003c 	add.w	r0, r6, #60	@ 0x3c
c0de8a0c:	f003 fd2c 	bl	c0dec468 <__aeabi_memcpy>
c0de8a10:	f002 fa3e 	bl	c0deae90 <OUTLINED_FUNCTION_4>
c0de8a14:	4606      	mov	r6, r0
c0de8a16:	b145      	cbz	r5, c0de8a2a <nbgl_useCaseGenericSettings+0x76>
c0de8a18:	4812      	ldr	r0, [pc, #72]	@ (c0de8a64 <nbgl_useCaseGenericSettings+0xb0>)
c0de8a1a:	4631      	mov	r1, r6
c0de8a1c:	2201      	movs	r2, #1
c0de8a1e:	2300      	movs	r3, #0
c0de8a20:	4448      	add	r0, r9
c0de8a22:	3038      	adds	r0, #56	@ 0x38
c0de8a24:	f000 f848 	bl	c0de8ab8 <getNbPagesForContent>
c0de8a28:	4406      	add	r6, r0
c0de8a2a:	444c      	add	r4, r9
c0de8a2c:	211c      	movs	r1, #28
c0de8a2e:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de8a32:	f003 fd23 	bl	c0dec47c <__aeabi_memclr>
c0de8a36:	2009      	movs	r0, #9
c0de8a38:	f884 6061 	strb.w	r6, [r4, #97]	@ 0x61
c0de8a3c:	2101      	movs	r1, #1
c0de8a3e:	f884 0065 	strb.w	r0, [r4, #101]	@ 0x65
c0de8a42:	2003      	movs	r0, #3
c0de8a44:	f884 0073 	strb.w	r0, [r4, #115]	@ 0x73
c0de8a48:	2001      	movs	r0, #1
c0de8a4a:	f884 0063 	strb.w	r0, [r4, #99]	@ 0x63
c0de8a4e:	f884 0071 	strb.w	r0, [r4, #113]	@ 0x71
c0de8a52:	4640      	mov	r0, r8
c0de8a54:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de8a58:	f000 b8c0 	b.w	c0de8bdc <displayGenericContextPage>
c0de8a5c:	00000bd0 	.word	0x00000bd0
c0de8a60:	00000918 	.word	0x00000918
c0de8a64:	000009a8 	.word	0x000009a8

c0de8a68 <getNbPagesForGenericContents>:
c0de8a68:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8a6c:	b08e      	sub	sp, #56	@ 0x38
c0de8a6e:	4f11      	ldr	r7, [pc, #68]	@ (c0de8ab4 <getNbPagesForGenericContents+0x4c>)
c0de8a70:	4604      	mov	r4, r0
c0de8a72:	2600      	movs	r6, #0
c0de8a74:	46e8      	mov	r8, sp
c0de8a76:	2500      	movs	r5, #0
c0de8a78:	eb09 0007 	add.w	r0, r9, r7
c0de8a7c:	7b00      	ldrb	r0, [r0, #12]
c0de8a7e:	4285      	cmp	r5, r0
c0de8a80:	d214      	bcs.n	c0de8aac <getNbPagesForGenericContents+0x44>
c0de8a82:	b268      	sxtb	r0, r5
c0de8a84:	4641      	mov	r1, r8
c0de8a86:	f001 fb9d 	bl	c0dea1c4 <getContentAtIdx>
c0de8a8a:	b170      	cbz	r0, c0de8aaa <getNbPagesForGenericContents+0x42>
c0de8a8c:	eb09 0107 	add.w	r1, r9, r7
c0de8a90:	4623      	mov	r3, r4
c0de8a92:	7b09      	ldrb	r1, [r1, #12]
c0de8a94:	1a69      	subs	r1, r5, r1
c0de8a96:	3101      	adds	r1, #1
c0de8a98:	fab1 f181 	clz	r1, r1
c0de8a9c:	094a      	lsrs	r2, r1, #5
c0de8a9e:	b2f1      	uxtb	r1, r6
c0de8aa0:	f000 f80a 	bl	c0de8ab8 <getNbPagesForContent>
c0de8aa4:	4406      	add	r6, r0
c0de8aa6:	3501      	adds	r5, #1
c0de8aa8:	e7e6      	b.n	c0de8a78 <getNbPagesForGenericContents+0x10>
c0de8aaa:	2600      	movs	r6, #0
c0de8aac:	b2f0      	uxtb	r0, r6
c0de8aae:	b00e      	add	sp, #56	@ 0x38
c0de8ab0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de8ab4:	00000918 	.word	0x00000918

c0de8ab8 <getNbPagesForContent>:
c0de8ab8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8abc:	b08c      	sub	sp, #48	@ 0x30
c0de8abe:	4606      	mov	r6, r0
c0de8ac0:	fab1 f081 	clz	r0, r1
c0de8ac4:	9306      	str	r3, [sp, #24]
c0de8ac6:	4614      	mov	r4, r2
c0de8ac8:	9109      	str	r1, [sp, #36]	@ 0x24
c0de8aca:	0940      	lsrs	r0, r0, #5
c0de8acc:	4010      	ands	r0, r2
c0de8ace:	900a      	str	r0, [sp, #40]	@ 0x28
c0de8ad0:	4630      	mov	r0, r6
c0de8ad2:	f001 fba1 	bl	c0dea218 <getContentNbElement>
c0de8ad6:	4605      	mov	r5, r0
c0de8ad8:	f084 0001 	eor.w	r0, r4, #1
c0de8adc:	f04f 0800 	mov.w	r8, #0
c0de8ae0:	f04f 0a00 	mov.w	sl, #0
c0de8ae4:	f04f 0b00 	mov.w	fp, #0
c0de8ae8:	270f      	movs	r7, #15
c0de8aea:	9405      	str	r4, [sp, #20]
c0de8aec:	9608      	str	r6, [sp, #32]
c0de8aee:	9004      	str	r0, [sp, #16]
c0de8af0:	1d30      	adds	r0, r6, #4
c0de8af2:	9007      	str	r0, [sp, #28]
c0de8af4:	0628      	lsls	r0, r5, #24
c0de8af6:	d068      	beq.n	c0de8bca <getNbPagesForContent+0x112>
c0de8af8:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de8afa:	f88d 802f 	strb.w	r8, [sp, #47]	@ 0x2f
c0de8afe:	b128      	cbz	r0, c0de8b0c <getNbPagesForContent+0x54>
c0de8b00:	fa5f f38b 	uxtb.w	r3, fp
c0de8b04:	2b00      	cmp	r3, #0
c0de8b06:	bf18      	it	ne
c0de8b08:	2301      	movne	r3, #1
c0de8b0a:	e000      	b.n	c0de8b0e <getNbPagesForContent+0x56>
c0de8b0c:	2301      	movs	r3, #1
c0de8b0e:	9808      	ldr	r0, [sp, #32]
c0de8b10:	7800      	ldrb	r0, [r0, #0]
c0de8b12:	280a      	cmp	r0, #10
c0de8b14:	d00e      	beq.n	c0de8b34 <getNbPagesForContent+0x7c>
c0de8b16:	2806      	cmp	r0, #6
c0de8b18:	d011      	beq.n	c0de8b3e <getNbPagesForContent+0x86>
c0de8b1a:	2807      	cmp	r0, #7
c0de8b1c:	d01e      	beq.n	c0de8b5c <getNbPagesForContent+0xa4>
c0de8b1e:	2808      	cmp	r0, #8
c0de8b20:	d023      	beq.n	c0de8b6a <getNbPagesForContent+0xb2>
c0de8b22:	2809      	cmp	r0, #9
c0de8b24:	d028      	beq.n	c0de8b78 <getNbPagesForContent+0xc0>
c0de8b26:	2804      	cmp	r0, #4
c0de8b28:	d12b      	bne.n	c0de8b82 <getNbPagesForContent+0xca>
c0de8b2a:	2000      	movs	r0, #0
c0de8b2c:	f04f 0800 	mov.w	r8, #0
c0de8b30:	9000      	str	r0, [sp, #0]
c0de8b32:	e007      	b.n	c0de8b44 <getNbPagesForContent+0x8c>
c0de8b34:	b2e8      	uxtb	r0, r5
c0de8b36:	2200      	movs	r2, #0
c0de8b38:	f7ff fddf 	bl	c0de86fa <nbgl_useCaseGetNbBarsInPage>
c0de8b3c:	e028      	b.n	c0de8b90 <getNbPagesForContent+0xd8>
c0de8b3e:	9805      	ldr	r0, [sp, #20]
c0de8b40:	9000      	str	r0, [sp, #0]
c0de8b42:	9804      	ldr	r0, [sp, #16]
c0de8b44:	9001      	str	r0, [sp, #4]
c0de8b46:	f10d 002f 	add.w	r0, sp, #47	@ 0x2f
c0de8b4a:	e9dd 3106 	ldrd	r3, r1, [sp, #24]
c0de8b4e:	fa5f f28b 	uxtb.w	r2, fp
c0de8b52:	9002      	str	r0, [sp, #8]
c0de8b54:	b2e8      	uxtb	r0, r5
c0de8b56:	f7ff fcc5 	bl	c0de84e4 <getNbTagValuesInPage>
c0de8b5a:	e019      	b.n	c0de8b90 <getNbPagesForContent+0xd8>
c0de8b5c:	9907      	ldr	r1, [sp, #28]
c0de8b5e:	b2e8      	uxtb	r0, r5
c0de8b60:	fa5f f28b 	uxtb.w	r2, fp
c0de8b64:	f7ff fd88 	bl	c0de8678 <nbgl_useCaseGetNbSwitchesInPage>
c0de8b68:	e012      	b.n	c0de8b90 <getNbPagesForContent+0xd8>
c0de8b6a:	9907      	ldr	r1, [sp, #28]
c0de8b6c:	b2e8      	uxtb	r0, r5
c0de8b6e:	fa5f f28b 	uxtb.w	r2, fp
c0de8b72:	f7ff fd52 	bl	c0de861a <nbgl_useCaseGetNbInfosInPage>
c0de8b76:	e00b      	b.n	c0de8b90 <getNbPagesForContent+0xd8>
c0de8b78:	b2e8      	uxtb	r0, r5
c0de8b7a:	2200      	movs	r2, #0
c0de8b7c:	f7ff fddd 	bl	c0de873a <nbgl_useCaseGetNbChoicesInPage>
c0de8b80:	e006      	b.n	c0de8b90 <getNbPagesForContent+0xd8>
c0de8b82:	4915      	ldr	r1, [pc, #84]	@ (c0de8bd8 <getNbPagesForContent+0x120>)
c0de8b84:	4479      	add	r1, pc
c0de8b86:	5c08      	ldrb	r0, [r1, r0]
c0de8b88:	b2e9      	uxtb	r1, r5
c0de8b8a:	4288      	cmp	r0, r1
c0de8b8c:	bf28      	it	cs
c0de8b8e:	4628      	movcs	r0, r5
c0de8b90:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de8b92:	f89d 402f 	ldrb.w	r4, [sp, #47]	@ 0x2f
c0de8b96:	f000 0307 	and.w	r3, r0, #7
c0de8b9a:	2204      	movs	r2, #4
c0de8b9c:	1a2d      	subs	r5, r5, r0
c0de8b9e:	4483      	add	fp, r0
c0de8ba0:	4451      	add	r1, sl
c0de8ba2:	ea43 03c4 	orr.w	r3, r3, r4, lsl #3
c0de8ba6:	4c0b      	ldr	r4, [pc, #44]	@ (c0de8bd4 <getNbPagesForContent+0x11c>)
c0de8ba8:	f10a 0a01 	add.w	sl, sl, #1
c0de8bac:	b2c9      	uxtb	r1, r1
c0de8bae:	b2db      	uxtb	r3, r3
c0de8bb0:	ea02 0281 	and.w	r2, r2, r1, lsl #2
c0de8bb4:	444c      	add	r4, r9
c0de8bb6:	0849      	lsrs	r1, r1, #1
c0de8bb8:	5c66      	ldrb	r6, [r4, r1]
c0de8bba:	4093      	lsls	r3, r2
c0de8bbc:	fa07 f202 	lsl.w	r2, r7, r2
c0de8bc0:	ea26 0202 	bic.w	r2, r6, r2
c0de8bc4:	431a      	orrs	r2, r3
c0de8bc6:	5462      	strb	r2, [r4, r1]
c0de8bc8:	e794      	b.n	c0de8af4 <getNbPagesForContent+0x3c>
c0de8bca:	fa5f f08a 	uxtb.w	r0, sl
c0de8bce:	b00c      	add	sp, #48	@ 0x30
c0de8bd0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8bd4:	00000ad0 	.word	0x00000ad0
c0de8bd8:	000066ca 	.word	0x000066ca

c0de8bdc <displayGenericContextPage>:
c0de8bdc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8be0:	b0a0      	sub	sp, #128	@ 0x80
c0de8be2:	f8df 33e4 	ldr.w	r3, [pc, #996]	@ c0de8fc8 <displayGenericContextPage+0x3ec>
c0de8be6:	4683      	mov	fp, r0
c0de8be8:	f819 0003 	ldrb.w	r0, [r9, r3]
c0de8bec:	2803      	cmp	r0, #3
c0de8bee:	d110      	bne.n	c0de8c12 <displayGenericContextPage+0x36>
c0de8bf0:	f8df 03d8 	ldr.w	r0, [pc, #984]	@ c0de8fcc <displayGenericContextPage+0x3f0>
c0de8bf4:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de8bf8:	d060      	beq.n	c0de8cbc <displayGenericContextPage+0xe0>
c0de8bfa:	eb09 0200 	add.w	r2, r9, r0
c0de8bfe:	7c12      	ldrb	r2, [r2, #16]
c0de8c00:	455a      	cmp	r2, fp
c0de8c02:	d80f      	bhi.n	c0de8c24 <displayGenericContextPage+0x48>
c0de8c04:	4448      	add	r0, r9
c0de8c06:	6841      	ldr	r1, [r0, #4]
c0de8c08:	2001      	movs	r0, #1
c0de8c0a:	b020      	add	sp, #128	@ 0x80
c0de8c0c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8c10:	4708      	bx	r1
c0de8c12:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de8c16:	d105      	bne.n	c0de8c24 <displayGenericContextPage+0x48>
c0de8c18:	eb09 0003 	add.w	r0, r9, r3
c0de8c1c:	f890 0061 	ldrb.w	r0, [r0, #97]	@ 0x61
c0de8c20:	f1a0 0b01 	sub.w	fp, r0, #1
c0de8c24:	eb09 0003 	add.w	r0, r9, r3
c0de8c28:	fa5f f78b 	uxtb.w	r7, fp
c0de8c2c:	9100      	str	r1, [sp, #0]
c0de8c2e:	f890 8060 	ldrb.w	r8, [r0, #96]	@ 0x60
c0de8c32:	4547      	cmp	r7, r8
c0de8c34:	d12d      	bne.n	c0de8c92 <displayGenericContextPage+0xb6>
c0de8c36:	a912      	add	r1, sp, #72	@ 0x48
c0de8c38:	f10d 0247 	add.w	r2, sp, #71	@ 0x47
c0de8c3c:	f10d 0346 	add.w	r3, sp, #70	@ 0x46
c0de8c40:	4638      	mov	r0, r7
c0de8c42:	f001 fb01 	bl	c0dea248 <genericContextComputeNextPageParams>
c0de8c46:	4682      	mov	sl, r0
c0de8c48:	f1ba 0f00 	cmp.w	sl, #0
c0de8c4c:	f000 81b8 	beq.w	c0de8fc0 <displayGenericContextPage+0x3e4>
c0de8c50:	f8df 8374 	ldr.w	r8, [pc, #884]	@ c0de8fc8 <displayGenericContextPage+0x3ec>
c0de8c54:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de8c58:	2803      	cmp	r0, #3
c0de8c5a:	d041      	beq.n	c0de8ce0 <displayGenericContextPage+0x104>
c0de8c5c:	48db      	ldr	r0, [pc, #876]	@ (c0de8fcc <displayGenericContextPage+0x3f0>)
c0de8c5e:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de8c62:	06c0      	lsls	r0, r0, #27
c0de8c64:	d53c      	bpl.n	c0de8ce0 <displayGenericContextPage+0x104>
c0de8c66:	ea5f 600b 	movs.w	r0, fp, lsl #24
c0de8c6a:	d035      	beq.n	c0de8cd8 <displayGenericContextPage+0xfc>
c0de8c6c:	eb09 0008 	add.w	r0, r9, r8
c0de8c70:	f890 0061 	ldrb.w	r0, [r0, #97]	@ 0x61
c0de8c74:	3801      	subs	r0, #1
c0de8c76:	42b8      	cmp	r0, r7
c0de8c78:	dd2e      	ble.n	c0de8cd8 <displayGenericContextPage+0xfc>
c0de8c7a:	eb09 0008 	add.w	r0, r9, r8
c0de8c7e:	2105      	movs	r1, #5
c0de8c80:	f880 106c 	strb.w	r1, [r0, #108]	@ 0x6c
c0de8c84:	49d3      	ldr	r1, [pc, #844]	@ (c0de8fd4 <displayGenericContextPage+0x3f8>)
c0de8c86:	4479      	add	r1, pc
c0de8c88:	6681      	str	r1, [r0, #104]	@ 0x68
c0de8c8a:	2100      	movs	r1, #0
c0de8c8c:	f880 1064 	strb.w	r1, [r0, #100]	@ 0x64
c0de8c90:	e026      	b.n	c0de8ce0 <displayGenericContextPage+0x104>
c0de8c92:	d91c      	bls.n	c0de8cce <displayGenericContextPage+0xf2>
c0de8c94:	f04f 0a00 	mov.w	sl, #0
c0de8c98:	ac12      	add	r4, sp, #72	@ 0x48
c0de8c9a:	f10d 0547 	add.w	r5, sp, #71	@ 0x47
c0de8c9e:	f10d 0646 	add.w	r6, sp, #70	@ 0x46
c0de8ca2:	4547      	cmp	r7, r8
c0de8ca4:	d0d0      	beq.n	c0de8c48 <displayGenericContextPage+0x6c>
c0de8ca6:	f108 0801 	add.w	r8, r8, #1
c0de8caa:	4621      	mov	r1, r4
c0de8cac:	462a      	mov	r2, r5
c0de8cae:	4633      	mov	r3, r6
c0de8cb0:	fa5f f088 	uxtb.w	r0, r8
c0de8cb4:	f001 fac8 	bl	c0dea248 <genericContextComputeNextPageParams>
c0de8cb8:	4682      	mov	sl, r0
c0de8cba:	e7f2      	b.n	c0de8ca2 <displayGenericContextPage+0xc6>
c0de8cbc:	4448      	add	r0, r9
c0de8cbe:	6880      	ldr	r0, [r0, #8]
c0de8cc0:	2800      	cmp	r0, #0
c0de8cc2:	f000 817d 	beq.w	c0de8fc0 <displayGenericContextPage+0x3e4>
c0de8cc6:	b020      	add	sp, #128	@ 0x80
c0de8cc8:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8ccc:	4700      	bx	r0
c0de8cce:	eba7 0008 	sub.w	r0, r7, r8
c0de8cd2:	2801      	cmp	r0, #1
c0de8cd4:	ddaf      	ble.n	c0de8c36 <displayGenericContextPage+0x5a>
c0de8cd6:	e173      	b.n	c0de8fc0 <displayGenericContextPage+0x3e4>
c0de8cd8:	eb09 0008 	add.w	r0, r9, r8
c0de8cdc:	2100      	movs	r1, #0
c0de8cde:	6681      	str	r1, [r0, #104]	@ 0x68
c0de8ce0:	ad01      	add	r5, sp, #4
c0de8ce2:	213c      	movs	r1, #60	@ 0x3c
c0de8ce4:	1d28      	adds	r0, r5, #4
c0de8ce6:	f003 fbc9 	bl	c0dec47c <__aeabi_memclr>
c0de8cea:	2009      	movs	r0, #9
c0de8cec:	f8df b2e0 	ldr.w	fp, [pc, #736]	@ c0de8fd0 <displayGenericContextPage+0x3f4>
c0de8cf0:	f89d 7047 	ldrb.w	r7, [sp, #71]	@ 0x47
c0de8cf4:	f88d 000a 	strb.w	r0, [sp, #10]
c0de8cf8:	2002      	movs	r0, #2
c0de8cfa:	f88d 0009 	strb.w	r0, [sp, #9]
c0de8cfe:	eb09 0008 	add.w	r0, r9, r8
c0de8d02:	eb09 010b 	add.w	r1, r9, fp
c0de8d06:	6900      	ldr	r0, [r0, #16]
c0de8d08:	7c8e      	ldrb	r6, [r1, #18]
c0de8d0a:	9001      	str	r0, [sp, #4]
c0de8d0c:	f89a 0000 	ldrb.w	r0, [sl]
c0de8d10:	280a      	cmp	r0, #10
c0de8d12:	f88d 0010 	strb.w	r0, [sp, #16]
c0de8d16:	d01e      	beq.n	c0de8d56 <displayGenericContextPage+0x17a>
c0de8d18:	2801      	cmp	r0, #1
c0de8d1a:	d02c      	beq.n	c0de8d76 <displayGenericContextPage+0x19a>
c0de8d1c:	2802      	cmp	r0, #2
c0de8d1e:	d014      	beq.n	c0de8d4a <displayGenericContextPage+0x16e>
c0de8d20:	2803      	cmp	r0, #3
c0de8d22:	d012      	beq.n	c0de8d4a <displayGenericContextPage+0x16e>
c0de8d24:	2804      	cmp	r0, #4
c0de8d26:	d02e      	beq.n	c0de8d86 <displayGenericContextPage+0x1aa>
c0de8d28:	2806      	cmp	r0, #6
c0de8d2a:	d040      	beq.n	c0de8dae <displayGenericContextPage+0x1d2>
c0de8d2c:	2807      	cmp	r0, #7
c0de8d2e:	d04c      	beq.n	c0de8dca <displayGenericContextPage+0x1ee>
c0de8d30:	2808      	cmp	r0, #8
c0de8d32:	d056      	beq.n	c0de8de2 <displayGenericContextPage+0x206>
c0de8d34:	2809      	cmp	r0, #9
c0de8d36:	d061      	beq.n	c0de8dfc <displayGenericContextPage+0x220>
c0de8d38:	2800      	cmp	r0, #0
c0de8d3a:	f040 8141 	bne.w	c0de8fc0 <displayGenericContextPage+0x3e4>
c0de8d3e:	f002 f8df 	bl	c0deaf00 <OUTLINED_FUNCTION_18>
c0de8d42:	e890 007c 	ldmia.w	r0, {r2, r3, r4, r5, r6}
c0de8d46:	c17c      	stmia	r1!, {r2, r3, r4, r5, r6}
c0de8d48:	e103      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8d4a:	f002 f8d9 	bl	c0deaf00 <OUTLINED_FUNCTION_18>
c0de8d4e:	e890 003c 	ldmia.w	r0, {r2, r3, r4, r5}
c0de8d52:	c13c      	stmia	r1!, {r2, r3, r4, r5}
c0de8d54:	e0fd      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8d56:	f88d 701c 	strb.w	r7, [sp, #28]
c0de8d5a:	f002 f890 	bl	c0deae7e <OUTLINED_FUNCTION_2>
c0de8d5e:	9005      	str	r0, [sp, #20]
c0de8d60:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de8d64:	4430      	add	r0, r6
c0de8d66:	f003 f85d 	bl	c0debe24 <pic>
c0de8d6a:	9006      	str	r0, [sp, #24]
c0de8d6c:	f89a 000d 	ldrb.w	r0, [sl, #13]
c0de8d70:	f88d 001d 	strb.w	r0, [sp, #29]
c0de8d74:	e0ed      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8d76:	f105 0010 	add.w	r0, r5, #16
c0de8d7a:	f10a 0104 	add.w	r1, sl, #4
c0de8d7e:	2230      	movs	r2, #48	@ 0x30
c0de8d80:	f003 fb72 	bl	c0dec468 <__aeabi_memcpy>
c0de8d84:	e0e5      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8d86:	f8da 2004 	ldr.w	r2, [sl, #4]
c0de8d8a:	eb09 010b 	add.w	r1, r9, fp
c0de8d8e:	f89d 0046 	ldrb.w	r0, [sp, #70]	@ 0x46
c0de8d92:	624a      	str	r2, [r1, #36]	@ 0x24
c0de8d94:	2800      	cmp	r0, #0
c0de8d96:	f8da 2008 	ldr.w	r2, [sl, #8]
c0de8d9a:	628a      	str	r2, [r1, #40]	@ 0x28
c0de8d9c:	f000 8087 	beq.w	c0de8eae <displayGenericContextPage+0x2d2>
c0de8da0:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de8da4:	2800      	cmp	r0, #0
c0de8da6:	d064      	beq.n	c0de8e72 <displayGenericContextPage+0x296>
c0de8da8:	eb00 1006 	add.w	r0, r0, r6, lsl #4
c0de8dac:	e065      	b.n	c0de8e7a <displayGenericContextPage+0x29e>
c0de8dae:	f89a 100c 	ldrb.w	r1, [sl, #12]
c0de8db2:	19f0      	adds	r0, r6, r7
c0de8db4:	f10a 0404 	add.w	r4, sl, #4
c0de8db8:	4288      	cmp	r0, r1
c0de8dba:	d134      	bne.n	c0de8e26 <displayGenericContextPage+0x24a>
c0de8dbc:	3510      	adds	r5, #16
c0de8dbe:	4621      	mov	r1, r4
c0de8dc0:	222c      	movs	r2, #44	@ 0x2c
c0de8dc2:	4628      	mov	r0, r5
c0de8dc4:	f003 fb50 	bl	c0dec468 <__aeabi_memcpy>
c0de8dc8:	e031      	b.n	c0de8e2e <displayGenericContextPage+0x252>
c0de8dca:	f88d 7018 	strb.w	r7, [sp, #24]
c0de8dce:	eb06 0046 	add.w	r0, r6, r6, lsl #1
c0de8dd2:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de8dd6:	eb01 0080 	add.w	r0, r1, r0, lsl #2
c0de8dda:	f003 f823 	bl	c0debe24 <pic>
c0de8dde:	9005      	str	r0, [sp, #20]
c0de8de0:	e0b7      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8de2:	f88d 7020 	strb.w	r7, [sp, #32]
c0de8de6:	f002 f84a 	bl	c0deae7e <OUTLINED_FUNCTION_2>
c0de8dea:	9005      	str	r0, [sp, #20]
c0de8dec:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de8df0:	eb00 0086 	add.w	r0, r0, r6, lsl #2
c0de8df4:	f003 f816 	bl	c0debe24 <pic>
c0de8df8:	9006      	str	r0, [sp, #24]
c0de8dfa:	e0aa      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8dfc:	f002 f880 	bl	c0deaf00 <OUTLINED_FUNCTION_18>
c0de8e00:	e890 001c 	ldmia.w	r0, {r2, r3, r4}
c0de8e04:	c11c      	stmia	r1!, {r2, r3, r4}
c0de8e06:	f88d 7019 	strb.w	r7, [sp, #25]
c0de8e0a:	f002 f838 	bl	c0deae7e <OUTLINED_FUNCTION_2>
c0de8e0e:	9005      	str	r0, [sp, #20]
c0de8e10:	f89a 000a 	ldrb.w	r0, [sl, #10]
c0de8e14:	42b0      	cmp	r0, r6
c0de8e16:	d329      	bcc.n	c0de8e6c <displayGenericContextPage+0x290>
c0de8e18:	19f1      	adds	r1, r6, r7
c0de8e1a:	4281      	cmp	r1, r0
c0de8e1c:	d926      	bls.n	c0de8e6c <displayGenericContextPage+0x290>
c0de8e1e:	1b80      	subs	r0, r0, r6
c0de8e20:	f88d 001a 	strb.w	r0, [sp, #26]
c0de8e24:	e095      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8e26:	2004      	movs	r0, #4
c0de8e28:	3510      	adds	r5, #16
c0de8e2a:	f88d 0010 	strb.w	r0, [sp, #16]
c0de8e2e:	f88d 701c 	strb.w	r7, [sp, #28]
c0de8e32:	6820      	ldr	r0, [r4, #0]
c0de8e34:	eb00 1006 	add.w	r0, r0, r6, lsl #4
c0de8e38:	f002 fff4 	bl	c0debe24 <pic>
c0de8e3c:	2110      	movs	r1, #16
c0de8e3e:	6028      	str	r0, [r5, #0]
c0de8e40:	9d00      	ldr	r5, [sp, #0]
c0de8e42:	2200      	movs	r2, #0
c0de8e44:	eb01 1107 	add.w	r1, r1, r7, lsl #4
c0de8e48:	f102 0310 	add.w	r3, r2, #16
c0de8e4c:	4299      	cmp	r1, r3
c0de8e4e:	d007      	beq.n	c0de8e60 <displayGenericContextPage+0x284>
c0de8e50:	4402      	add	r2, r0
c0de8e52:	7b12      	ldrb	r2, [r2, #12]
c0de8e54:	0752      	lsls	r2, r2, #29
c0de8e56:	461a      	mov	r2, r3
c0de8e58:	d5f6      	bpl.n	c0de8e48 <displayGenericContextPage+0x26c>
c0de8e5a:	210d      	movs	r1, #13
c0de8e5c:	f88d 1020 	strb.w	r1, [sp, #32]
c0de8e60:	9a06      	ldr	r2, [sp, #24]
c0de8e62:	eb09 010b 	add.w	r1, r9, fp
c0de8e66:	e9c1 0209 	strd	r0, r2, [r1, #36]	@ 0x24
c0de8e6a:	e073      	b.n	c0de8f54 <displayGenericContextPage+0x378>
c0de8e6c:	f88d 701a 	strb.w	r7, [sp, #26]
c0de8e70:	e06f      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8e72:	f8da 1008 	ldr.w	r1, [sl, #8]
c0de8e76:	4630      	mov	r0, r6
c0de8e78:	4788      	blx	r1
c0de8e7a:	f002 ffd3 	bl	c0debe24 <pic>
c0de8e7e:	7b01      	ldrb	r1, [r0, #12]
c0de8e80:	0789      	lsls	r1, r1, #30
c0de8e82:	d42e      	bmi.n	c0de8ee2 <displayGenericContextPage+0x306>
c0de8e84:	4954      	ldr	r1, [pc, #336]	@ (c0de8fd8 <displayGenericContextPage+0x3fc>)
c0de8e86:	4479      	add	r1, pc
c0de8e88:	910b      	str	r1, [sp, #44]	@ 0x2c
c0de8e8a:	210a      	movs	r1, #10
c0de8e8c:	f88d 1030 	strb.w	r1, [sp, #48]	@ 0x30
c0de8e90:	2100      	movs	r1, #0
c0de8e92:	910a      	str	r1, [sp, #40]	@ 0x28
c0de8e94:	eb09 010b 	add.w	r1, r9, fp
c0de8e98:	e9d0 2000 	ldrd	r2, r0, [r0]
c0de8e9c:	e9c1 2006 	strd	r2, r0, [r1, #24]
c0de8ea0:	f89a 0012 	ldrb.w	r0, [sl, #18]
c0de8ea4:	f881 0020 	strb.w	r0, [r1, #32]
c0de8ea8:	2005      	movs	r0, #5
c0de8eaa:	f88d 0010 	strb.w	r0, [sp, #16]
c0de8eae:	f88d 701c 	strb.w	r7, [sp, #28]
c0de8eb2:	f89a 0010 	ldrb.w	r0, [sl, #16]
c0de8eb6:	f88d 0020 	strb.w	r0, [sp, #32]
c0de8eba:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de8ebe:	b328      	cbz	r0, c0de8f0c <displayGenericContextPage+0x330>
c0de8ec0:	eb00 1006 	add.w	r0, r0, r6, lsl #4
c0de8ec4:	f002 ffae 	bl	c0debe24 <pic>
c0de8ec8:	9005      	str	r0, [sp, #20]
c0de8eca:	f100 010c 	add.w	r1, r0, #12
c0de8ece:	1c78      	adds	r0, r7, #1
c0de8ed0:	3801      	subs	r0, #1
c0de8ed2:	d033      	beq.n	c0de8f3c <displayGenericContextPage+0x360>
c0de8ed4:	f101 0210 	add.w	r2, r1, #16
c0de8ed8:	7809      	ldrb	r1, [r1, #0]
c0de8eda:	0749      	lsls	r1, r1, #29
c0de8edc:	4611      	mov	r1, r2
c0de8ede:	d5f7      	bpl.n	c0de8ed0 <displayGenericContextPage+0x2f4>
c0de8ee0:	e029      	b.n	c0de8f36 <displayGenericContextPage+0x35a>
c0de8ee2:	2101      	movs	r1, #1
c0de8ee4:	f88d 1010 	strb.w	r1, [sp, #16]
c0de8ee8:	6881      	ldr	r1, [r0, #8]
c0de8eea:	4a3f      	ldr	r2, [pc, #252]	@ (c0de8fe8 <displayGenericContextPage+0x40c>)
c0de8eec:	447a      	add	r2, pc
c0de8eee:	920c      	str	r2, [sp, #48]	@ 0x30
c0de8ef0:	e9d0 2000 	ldrd	r2, r0, [r0]
c0de8ef4:	9106      	str	r1, [sp, #24]
c0de8ef6:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de8ef8:	2000      	movs	r0, #0
c0de8efa:	9209      	str	r2, [sp, #36]	@ 0x24
c0de8efc:	f88d 0036 	strb.w	r0, [sp, #54]	@ 0x36
c0de8f00:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de8f04:	900a      	str	r0, [sp, #40]	@ 0x28
c0de8f06:	f88d 0014 	strb.w	r0, [sp, #20]
c0de8f0a:	e022      	b.n	c0de8f52 <displayGenericContextPage+0x376>
c0de8f0c:	2400      	movs	r4, #0
c0de8f0e:	9405      	str	r4, [sp, #20]
c0de8f10:	f8da 0008 	ldr.w	r0, [sl, #8]
c0de8f14:	f88d 601d 	strb.w	r6, [sp, #29]
c0de8f18:	9006      	str	r0, [sp, #24]
c0de8f1a:	b2e0      	uxtb	r0, r4
c0de8f1c:	42b8      	cmp	r0, r7
c0de8f1e:	d20d      	bcs.n	c0de8f3c <displayGenericContextPage+0x360>
c0de8f20:	19a0      	adds	r0, r4, r6
c0de8f22:	f8da 1008 	ldr.w	r1, [sl, #8]
c0de8f26:	b2c0      	uxtb	r0, r0
c0de8f28:	4788      	blx	r1
c0de8f2a:	f002 ff7b 	bl	c0debe24 <pic>
c0de8f2e:	7b00      	ldrb	r0, [r0, #12]
c0de8f30:	3401      	adds	r4, #1
c0de8f32:	0740      	lsls	r0, r0, #29
c0de8f34:	d5f1      	bpl.n	c0de8f1a <displayGenericContextPage+0x33e>
c0de8f36:	200d      	movs	r0, #13
c0de8f38:	f88d 0020 	strb.w	r0, [sp, #32]
c0de8f3c:	2000      	movs	r0, #0
c0de8f3e:	f88d 0021 	strb.w	r0, [sp, #33]	@ 0x21
c0de8f42:	f640 1001 	movw	r0, #2305	@ 0x901
c0de8f46:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de8f4a:	f89a 0012 	ldrb.w	r0, [sl, #18]
c0de8f4e:	f88d 0022 	strb.w	r0, [sp, #34]	@ 0x22
c0de8f52:	9d00      	ldr	r5, [sp, #0]
c0de8f54:	481d      	ldr	r0, [pc, #116]	@ (c0de8fcc <displayGenericContextPage+0x3f0>)
c0de8f56:	f819 1008 	ldrb.w	r1, [r9, r8]
c0de8f5a:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de8f5e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de8f62:	2902      	cmp	r1, #2
c0de8f64:	bf18      	it	ne
c0de8f66:	2000      	movne	r0, #0
c0de8f68:	f89a 1000 	ldrb.w	r1, [sl]
c0de8f6c:	2902      	cmp	r1, #2
c0de8f6e:	d817      	bhi.n	c0de8fa0 <displayGenericContextPage+0x3c4>
c0de8f70:	f010 0fe0 	tst.w	r0, #224	@ 0xe0
c0de8f74:	d014      	beq.n	c0de8fa0 <displayGenericContextPage+0x3c4>
c0de8f76:	0601      	lsls	r1, r0, #24
c0de8f78:	d508      	bpl.n	c0de8f8c <displayGenericContextPage+0x3b0>
c0de8f7a:	eb09 010b 	add.w	r1, r9, fp
c0de8f7e:	6f89      	ldr	r1, [r1, #120]	@ 0x78
c0de8f80:	7809      	ldrb	r1, [r1, #0]
c0de8f82:	06c9      	lsls	r1, r1, #27
c0de8f84:	d402      	bmi.n	c0de8f8c <displayGenericContextPage+0x3b0>
c0de8f86:	4915      	ldr	r1, [pc, #84]	@ (c0de8fdc <displayGenericContextPage+0x400>)
c0de8f88:	4479      	add	r1, pc
c0de8f8a:	e001      	b.n	c0de8f90 <displayGenericContextPage+0x3b4>
c0de8f8c:	4914      	ldr	r1, [pc, #80]	@ (c0de8fe0 <displayGenericContextPage+0x404>)
c0de8f8e:	4479      	add	r1, pc
c0de8f90:	0680      	lsls	r0, r0, #26
c0de8f92:	9103      	str	r1, [sp, #12]
c0de8f94:	f04f 0010 	mov.w	r0, #16
c0de8f98:	bf58      	it	pl
c0de8f9a:	2011      	movpl	r0, #17
c0de8f9c:	f88d 000b 	strb.w	r0, [sp, #11]
c0de8fa0:	4810      	ldr	r0, [pc, #64]	@ (c0de8fe4 <displayGenericContextPage+0x408>)
c0de8fa2:	eb09 0408 	add.w	r4, r9, r8
c0de8fa6:	aa01      	add	r2, sp, #4
c0de8fa8:	f104 0160 	add.w	r1, r4, #96	@ 0x60
c0de8fac:	4478      	add	r0, pc
c0de8fae:	f7ff fa6b 	bl	c0de8488 <nbgl_pageDrawGenericContent>
c0de8fb2:	6160      	str	r0, [r4, #20]
c0de8fb4:	2001      	movs	r0, #1
c0de8fb6:	2d00      	cmp	r5, #0
c0de8fb8:	bf18      	it	ne
c0de8fba:	2002      	movne	r0, #2
c0de8fbc:	f002 fd0e 	bl	c0deb9dc <nbgl_refreshSpecial>
c0de8fc0:	b020      	add	sp, #128	@ 0x80
c0de8fc2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8fc6:	bf00      	nop
c0de8fc8:	00000bd0 	.word	0x00000bd0
c0de8fcc:	00000c4c 	.word	0x00000c4c
c0de8fd0:	00000918 	.word	0x00000918
c0de8fd4:	00005493 	.word	0x00005493
c0de8fd8:	00004eb6 	.word	0x00004eb6
c0de8fdc:	0000460c 	.word	0x0000460c
c0de8fe0:	0000494f 	.word	0x0000494f
c0de8fe4:	000001b5 	.word	0x000001b5
c0de8fe8:	000052fd 	.word	0x000052fd

c0de8fec <nbgl_useCaseHomeAndSettings>:
c0de8fec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8ff0:	4698      	mov	r8, r3
c0de8ff2:	4615      	mov	r5, r2
c0de8ff4:	460e      	mov	r6, r1
c0de8ff6:	4607      	mov	r7, r0
c0de8ff8:	f7ff fc58 	bl	c0de88ac <reset_callbacks_and_context>
c0de8ffc:	4814      	ldr	r0, [pc, #80]	@ (c0de9050 <nbgl_useCaseHomeAndSettings+0x64>)
c0de8ffe:	f849 7000 	str.w	r7, [r9, r0]
c0de9002:	eb09 0100 	add.w	r1, r9, r0
c0de9006:	9a07      	ldr	r2, [sp, #28]
c0de9008:	610a      	str	r2, [r1, #16]
c0de900a:	9a06      	ldr	r2, [sp, #24]
c0de900c:	e9c1 6501 	strd	r6, r5, [r1, #4]
c0de9010:	60ca      	str	r2, [r1, #12]
c0de9012:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de9016:	b132      	cbz	r2, c0de9026 <nbgl_useCaseHomeAndSettings+0x3a>
c0de9018:	eb09 0300 	add.w	r3, r9, r0
c0de901c:	e892 00f0 	ldmia.w	r2, {r4, r5, r6, r7}
c0de9020:	3314      	adds	r3, #20
c0de9022:	c3f0      	stmia	r3!, {r4, r5, r6, r7}
c0de9024:	e006      	b.n	c0de9034 <nbgl_useCaseHomeAndSettings+0x48>
c0de9026:	eb09 0200 	add.w	r2, r9, r0
c0de902a:	2300      	movs	r3, #0
c0de902c:	e9c2 3305 	strd	r3, r3, [r2, #20]
c0de9030:	e9c2 3307 	strd	r3, r3, [r2, #28]
c0de9034:	4448      	add	r0, r9
c0de9036:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de903a:	6241      	str	r1, [r0, #36]	@ 0x24
c0de903c:	d004      	beq.n	c0de9048 <nbgl_useCaseHomeAndSettings+0x5c>
c0de903e:	4640      	mov	r0, r8
c0de9040:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de9044:	f000 b806 	b.w	c0de9054 <bundleNavStartSettingsAtPage>
c0de9048:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de904c:	f000 b816 	b.w	c0de907c <bundleNavStartHome>
c0de9050:	00000c4c 	.word	0x00000c4c

c0de9054 <bundleNavStartSettingsAtPage>:
c0de9054:	b51c      	push	{r2, r3, r4, lr}
c0de9056:	4a07      	ldr	r2, [pc, #28]	@ (c0de9074 <bundleNavStartSettingsAtPage+0x20>)
c0de9058:	4601      	mov	r1, r0
c0de905a:	eb09 0302 	add.w	r3, r9, r2
c0de905e:	f859 0002 	ldr.w	r0, [r9, r2]
c0de9062:	e9d3 2303 	ldrd	r2, r3, [r3, #12]
c0de9066:	4c04      	ldr	r4, [pc, #16]	@ (c0de9078 <bundleNavStartSettingsAtPage+0x24>)
c0de9068:	447c      	add	r4, pc
c0de906a:	9400      	str	r4, [sp, #0]
c0de906c:	f7ff fca2 	bl	c0de89b4 <nbgl_useCaseGenericSettings>
c0de9070:	bd1c      	pop	{r2, r3, r4, pc}
c0de9072:	bf00      	nop
c0de9074:	00000c4c 	.word	0x00000c4c
c0de9078:	00000011 	.word	0x00000011

c0de907c <bundleNavStartHome>:
c0de907c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de907e:	490a      	ldr	r1, [pc, #40]	@ (c0de90a8 <bundleNavStartHome+0x2c>)
c0de9080:	eb09 0401 	add.w	r4, r9, r1
c0de9084:	f859 0001 	ldr.w	r0, [r9, r1]
c0de9088:	1d23      	adds	r3, r4, #4
c0de908a:	6a65      	ldr	r5, [r4, #36]	@ 0x24
c0de908c:	3414      	adds	r4, #20
c0de908e:	cb0e      	ldmia	r3, {r1, r2, r3}
c0de9090:	4e06      	ldr	r6, [pc, #24]	@ (c0de90ac <bundleNavStartHome+0x30>)
c0de9092:	2b00      	cmp	r3, #0
c0de9094:	9502      	str	r5, [sp, #8]
c0de9096:	447e      	add	r6, pc
c0de9098:	e9cd 4600 	strd	r4, r6, [sp]
c0de909c:	bf18      	it	ne
c0de909e:	2301      	movne	r3, #1
c0de90a0:	f7ff fb6a 	bl	c0de8778 <useCaseHomeExt>
c0de90a4:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de90a6:	bf00      	nop
c0de90a8:	00000c4c 	.word	0x00000c4c
c0de90ac:	000012fb 	.word	0x000012fb

c0de90b0 <nbgl_useCaseStatus>:
c0de90b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de90b4:	b090      	sub	sp, #64	@ 0x40
c0de90b6:	4604      	mov	r4, r0
c0de90b8:	481d      	ldr	r0, [pc, #116]	@ (c0de9130 <nbgl_useCaseStatus+0x80>)
c0de90ba:	460e      	mov	r6, r1
c0de90bc:	4615      	mov	r5, r2
c0de90be:	a90d      	add	r1, sp, #52	@ 0x34
c0de90c0:	4478      	add	r0, pc
c0de90c2:	e890 008c 	ldmia.w	r0, {r2, r3, r7}
c0de90c6:	4668      	mov	r0, sp
c0de90c8:	3004      	adds	r0, #4
c0de90ca:	c18c      	stmia	r1!, {r2, r3, r7}
c0de90cc:	2130      	movs	r1, #48	@ 0x30
c0de90ce:	f003 f9d5 	bl	c0dec47c <__aeabi_memclr>
c0de90d2:	f8df 8058 	ldr.w	r8, [pc, #88]	@ c0de912c <nbgl_useCaseStatus+0x7c>
c0de90d6:	eb09 0708 	add.w	r7, r9, r8
c0de90da:	f7ff fbe7 	bl	c0de88ac <reset_callbacks_and_context>
c0de90de:	607d      	str	r5, [r7, #4]
c0de90e0:	b12e      	cbz	r6, c0de90ee <nbgl_useCaseStatus+0x3e>
c0de90e2:	2003      	movs	r0, #3
c0de90e4:	f7fa fc97 	bl	c0de3a16 <os_io_seph_cmd_piezo_play_tune>
c0de90e8:	4813      	ldr	r0, [pc, #76]	@ (c0de9138 <nbgl_useCaseStatus+0x88>)
c0de90ea:	4478      	add	r0, pc
c0de90ec:	e001      	b.n	c0de90f2 <nbgl_useCaseStatus+0x42>
c0de90ee:	4811      	ldr	r0, [pc, #68]	@ (c0de9134 <nbgl_useCaseStatus+0x84>)
c0de90f0:	4478      	add	r0, pc
c0de90f2:	9003      	str	r0, [sp, #12]
c0de90f4:	2009      	movs	r0, #9
c0de90f6:	2100      	movs	r1, #0
c0de90f8:	466a      	mov	r2, sp
c0de90fa:	f88d 0031 	strb.w	r0, [sp, #49]	@ 0x31
c0de90fe:	2002      	movs	r0, #2
c0de9100:	f88d 1011 	strb.w	r1, [sp, #17]
c0de9104:	f88d 0025 	strb.w	r0, [sp, #37]	@ 0x25
c0de9108:	480c      	ldr	r0, [pc, #48]	@ (c0de913c <nbgl_useCaseStatus+0x8c>)
c0de910a:	9400      	str	r4, [sp, #0]
c0de910c:	4478      	add	r0, pc
c0de910e:	9008      	str	r0, [sp, #32]
c0de9110:	480b      	ldr	r0, [pc, #44]	@ (c0de9140 <nbgl_useCaseStatus+0x90>)
c0de9112:	a90d      	add	r1, sp, #52	@ 0x34
c0de9114:	4478      	add	r0, pc
c0de9116:	f7fe fe4f 	bl	c0de7db8 <nbgl_pageDrawInfo>
c0de911a:	eb09 0108 	add.w	r1, r9, r8
c0de911e:	6148      	str	r0, [r1, #20]
c0de9120:	f001 feb3 	bl	c0deae8a <OUTLINED_FUNCTION_3>
c0de9124:	b010      	add	sp, #64	@ 0x40
c0de9126:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de912a:	bf00      	nop
c0de912c:	00000bd0 	.word	0x00000bd0
c0de9130:	00006120 	.word	0x00006120
c0de9134:	00003b32 	.word	0x00003b32
c0de9138:	000038f6 	.word	0x000038f6
c0de913c:	0000500c 	.word	0x0000500c
c0de9140:	0000004d 	.word	0x0000004d

c0de9144 <tickerCallback>:
c0de9144:	b510      	push	{r4, lr}
c0de9146:	4806      	ldr	r0, [pc, #24]	@ (c0de9160 <tickerCallback+0x1c>)
c0de9148:	eb09 0400 	add.w	r4, r9, r0
c0de914c:	6960      	ldr	r0, [r4, #20]
c0de914e:	f7ff f99e 	bl	c0de848e <nbgl_pageRelease>
c0de9152:	6860      	ldr	r0, [r4, #4]
c0de9154:	b110      	cbz	r0, c0de915c <tickerCallback+0x18>
c0de9156:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de915a:	4700      	bx	r0
c0de915c:	bd10      	pop	{r4, pc}
c0de915e:	bf00      	nop
c0de9160:	00000bd0 	.word	0x00000bd0

c0de9164 <pageCallback>:
c0de9164:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9168:	b094      	sub	sp, #80	@ 0x50
c0de916a:	b350      	cbz	r0, c0de91c2 <pageCallback+0x5e>
c0de916c:	4605      	mov	r5, r0
c0de916e:	2801      	cmp	r0, #1
c0de9170:	d034      	beq.n	c0de91dc <pageCallback+0x78>
c0de9172:	2d13      	cmp	r5, #19
c0de9174:	d043      	beq.n	c0de91fe <pageCallback+0x9a>
c0de9176:	460c      	mov	r4, r1
c0de9178:	2d03      	cmp	r5, #3
c0de917a:	d055      	beq.n	c0de9228 <pageCallback+0xc4>
c0de917c:	2d05      	cmp	r5, #5
c0de917e:	d05f      	beq.n	c0de9240 <pageCallback+0xdc>
c0de9180:	2d06      	cmp	r5, #6
c0de9182:	d075      	beq.n	c0de9270 <pageCallback+0x10c>
c0de9184:	2d07      	cmp	r5, #7
c0de9186:	d077      	beq.n	c0de9278 <pageCallback+0x114>
c0de9188:	2d08      	cmp	r5, #8
c0de918a:	f000 809f 	beq.w	c0de92cc <pageCallback+0x168>
c0de918e:	2d09      	cmp	r5, #9
c0de9190:	f000 80aa 	beq.w	c0de92e8 <pageCallback+0x184>
c0de9194:	2d0a      	cmp	r5, #10
c0de9196:	f000 80b1 	beq.w	c0de92fc <pageCallback+0x198>
c0de919a:	2d0b      	cmp	r5, #11
c0de919c:	f000 80fb 	beq.w	c0de9396 <pageCallback+0x232>
c0de91a0:	2d0c      	cmp	r5, #12
c0de91a2:	f000 8100 	beq.w	c0de93a6 <pageCallback+0x242>
c0de91a6:	2d0d      	cmp	r5, #13
c0de91a8:	f000 8107 	beq.w	c0de93ba <pageCallback+0x256>
c0de91ac:	2d10      	cmp	r5, #16
c0de91ae:	f000 8110 	beq.w	c0de93d2 <pageCallback+0x26e>
c0de91b2:	2d11      	cmp	r5, #17
c0de91b4:	f000 8115 	beq.w	c0de93e2 <pageCallback+0x27e>
c0de91b8:	2d02      	cmp	r5, #2
c0de91ba:	f040 811e 	bne.w	c0de93fa <pageCallback+0x296>
c0de91be:	48cc      	ldr	r0, [pc, #816]	@ (c0de94f0 <pageCallback+0x38c>)
c0de91c0:	e165      	b.n	c0de948e <pageCallback+0x32a>
c0de91c2:	48cb      	ldr	r0, [pc, #812]	@ (c0de94f0 <pageCallback+0x38c>)
c0de91c4:	eb09 0100 	add.w	r1, r9, r0
c0de91c8:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de91cc:	6889      	ldr	r1, [r1, #8]
c0de91ce:	3801      	subs	r0, #1
c0de91d0:	2900      	cmp	r1, #0
c0de91d2:	f000 8129 	beq.w	c0de9428 <pageCallback+0x2c4>
c0de91d6:	b2c0      	uxtb	r0, r0
c0de91d8:	2101      	movs	r1, #1
c0de91da:	e00b      	b.n	c0de91f4 <pageCallback+0x90>
c0de91dc:	48c4      	ldr	r0, [pc, #784]	@ (c0de94f0 <pageCallback+0x38c>)
c0de91de:	eb09 0100 	add.w	r1, r9, r0
c0de91e2:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de91e6:	6889      	ldr	r1, [r1, #8]
c0de91e8:	3001      	adds	r0, #1
c0de91ea:	2900      	cmp	r1, #0
c0de91ec:	f000 811c 	beq.w	c0de9428 <pageCallback+0x2c4>
c0de91f0:	b2c0      	uxtb	r0, r0
c0de91f2:	2100      	movs	r1, #0
c0de91f4:	b014      	add	sp, #80	@ 0x50
c0de91f6:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de91fa:	f000 bb35 	b.w	c0de9868 <displayReviewPage>
c0de91fe:	48bb      	ldr	r0, [pc, #748]	@ (c0de94ec <pageCallback+0x388>)
c0de9200:	eb09 0100 	add.w	r1, r9, r0
c0de9204:	f891 1021 	ldrb.w	r1, [r1, #33]	@ 0x21
c0de9208:	2900      	cmp	r1, #0
c0de920a:	f000 8114 	beq.w	c0de9436 <pageCallback+0x2d2>
c0de920e:	eb09 0100 	add.w	r1, r9, r0
c0de9212:	6f89      	ldr	r1, [r1, #120]	@ 0x78
c0de9214:	680a      	ldr	r2, [r1, #0]
c0de9216:	2a00      	cmp	r2, #0
c0de9218:	f000 810d 	beq.w	c0de9436 <pageCallback+0x2d2>
c0de921c:	4448      	add	r0, r9
c0de921e:	2201      	movs	r2, #1
c0de9220:	f880 2088 	strb.w	r2, [r0, #136]	@ 0x88
c0de9224:	6808      	ldr	r0, [r1, #0]
c0de9226:	e0e3      	b.n	c0de93f0 <pageCallback+0x28c>
c0de9228:	48b1      	ldr	r0, [pc, #708]	@ (c0de94f0 <pageCallback+0x38c>)
c0de922a:	2cff      	cmp	r4, #255	@ 0xff
c0de922c:	f000 812f 	beq.w	c0de948e <pageCallback+0x32a>
c0de9230:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de9234:	1e81      	subs	r1, r0, #2
c0de9236:	2902      	cmp	r1, #2
c0de9238:	f080 8148 	bcs.w	c0de94cc <pageCallback+0x368>
c0de923c:	4620      	mov	r0, r4
c0de923e:	e0f4      	b.n	c0de942a <pageCallback+0x2c6>
c0de9240:	a80c      	add	r0, sp, #48	@ 0x30
c0de9242:	49b1      	ldr	r1, [pc, #708]	@ (c0de9508 <pageCallback+0x3a4>)
c0de9244:	2220      	movs	r2, #32
c0de9246:	4479      	add	r1, pc
c0de9248:	f003 f90e 	bl	c0dec468 <__aeabi_memcpy>
c0de924c:	4ca8      	ldr	r4, [pc, #672]	@ (c0de94f0 <pageCallback+0x38c>)
c0de924e:	eb09 0004 	add.w	r0, r9, r4
c0de9252:	6a00      	ldr	r0, [r0, #32]
c0de9254:	b108      	cbz	r0, c0de925a <pageCallback+0xf6>
c0de9256:	f7ff f91a 	bl	c0de848e <nbgl_pageRelease>
c0de925a:	48ac      	ldr	r0, [pc, #688]	@ (c0de950c <pageCallback+0x3a8>)
c0de925c:	a90c      	add	r1, sp, #48	@ 0x30
c0de925e:	4478      	add	r0, pc
c0de9260:	f7fe feb4 	bl	c0de7fcc <nbgl_pageDrawConfirmation>
c0de9264:	eb09 0104 	add.w	r1, r9, r4
c0de9268:	6208      	str	r0, [r1, #32]
c0de926a:	f001 fe0e 	bl	c0deae8a <OUTLINED_FUNCTION_3>
c0de926e:	e115      	b.n	c0de949c <pageCallback+0x338>
c0de9270:	489f      	ldr	r0, [pc, #636]	@ (c0de94f0 <pageCallback+0x38c>)
c0de9272:	4448      	add	r0, r9
c0de9274:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de9276:	e10c      	b.n	c0de9492 <pageCallback+0x32e>
c0de9278:	49a0      	ldr	r1, [pc, #640]	@ (c0de94fc <pageCallback+0x398>)
c0de927a:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de927e:	221c      	movs	r2, #28
c0de9280:	4640      	mov	r0, r8
c0de9282:	4479      	add	r1, pc
c0de9284:	f003 f8f0 	bl	c0dec468 <__aeabi_memcpy>
c0de9288:	489d      	ldr	r0, [pc, #628]	@ (c0de9500 <pageCallback+0x39c>)
c0de928a:	ad07      	add	r5, sp, #28
c0de928c:	4629      	mov	r1, r5
c0de928e:	4478      	add	r0, pc
c0de9290:	e890 00dc 	ldmia.w	r0, {r2, r3, r4, r6, r7}
c0de9294:	f44f 3080 	mov.w	r0, #65536	@ 0x10000
c0de9298:	c1dc      	stmia	r1!, {r2, r3, r4, r6, r7}
c0de929a:	4e96      	ldr	r6, [pc, #600]	@ (c0de94f4 <pageCallback+0x390>)
c0de929c:	9006      	str	r0, [sp, #24]
c0de929e:	eb09 0706 	add.w	r7, r9, r6
c0de92a2:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
c0de92a4:	9003      	str	r0, [sp, #12]
c0de92a6:	2000      	movs	r0, #0
c0de92a8:	9004      	str	r0, [sp, #16]
c0de92aa:	4640      	mov	r0, r8
c0de92ac:	f7fa fdba 	bl	c0de3e24 <nbgl_layoutGet>
c0de92b0:	4629      	mov	r1, r5
c0de92b2:	65b8      	str	r0, [r7, #88]	@ 0x58
c0de92b4:	f7fd fb0a 	bl	c0de68cc <nbgl_layoutAddHeader>
c0de92b8:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
c0de92ba:	200b      	movs	r0, #11
c0de92bc:	f001 fe13 	bl	c0deaee6 <OUTLINED_FUNCTION_15>
c0de92c0:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
c0de92c2:	2804      	cmp	r0, #4
c0de92c4:	f080 80c1 	bcs.w	c0de944a <pageCallback+0x2e6>
c0de92c8:	460c      	mov	r4, r1
c0de92ca:	e0ca      	b.n	c0de9462 <pageCallback+0x2fe>
c0de92cc:	4888      	ldr	r0, [pc, #544]	@ (c0de94f0 <pageCallback+0x38c>)
c0de92ce:	2c00      	cmp	r4, #0
c0de92d0:	f040 80db 	bne.w	c0de948a <pageCallback+0x326>
c0de92d4:	eb09 0100 	add.w	r1, r9, r0
c0de92d8:	6a49      	ldr	r1, [r1, #36]	@ 0x24
c0de92da:	2900      	cmp	r1, #0
c0de92dc:	f000 80d5 	beq.w	c0de948a <pageCallback+0x326>
c0de92e0:	b014      	add	sp, #80	@ 0x50
c0de92e2:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de92e6:	4708      	bx	r1
c0de92e8:	4881      	ldr	r0, [pc, #516]	@ (c0de94f0 <pageCallback+0x38c>)
c0de92ea:	4448      	add	r0, r9
c0de92ec:	6981      	ldr	r1, [r0, #24]
c0de92ee:	2900      	cmp	r1, #0
c0de92f0:	f000 80d4 	beq.w	c0de949c <pageCallback+0x338>
c0de92f4:	fab4 f084 	clz	r0, r4
c0de92f8:	0940      	lsrs	r0, r0, #5
c0de92fa:	e05a      	b.n	c0de93b2 <pageCallback+0x24e>
c0de92fc:	487b      	ldr	r0, [pc, #492]	@ (c0de94ec <pageCallback+0x388>)
c0de92fe:	f8df 81f0 	ldr.w	r8, [pc, #496]	@ c0de94f0 <pageCallback+0x38c>
c0de9302:	2700      	movs	r7, #0
c0de9304:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de9308:	f04f 0a0b 	mov.w	sl, #11
c0de930c:	4448      	add	r0, r9
c0de930e:	eb09 0608 	add.w	r6, r9, r8
c0de9312:	f890 4020 	ldrb.w	r4, [r0, #32]
c0de9316:	e9d0 b506 	ldrd	fp, r5, [r0, #24]
c0de931a:	200b      	movs	r0, #11
c0de931c:	e9c6 770c 	strd	r7, r7, [r6, #48]	@ 0x30
c0de9320:	e9c6 770e 	strd	r7, r7, [r6, #56]	@ 0x38
c0de9324:	4629      	mov	r1, r5
c0de9326:	4623      	mov	r3, r4
c0de9328:	f002 fbad 	bl	c0deba86 <nbgl_getTextNbLinesInWidth>
c0de932c:	f100 010a 	add.w	r1, r0, #10
c0de9330:	e9c6 b50d 	strd	fp, r5, [r6, #52]	@ 0x34
c0de9334:	f886 4033 	strb.w	r4, [r6, #51]	@ 0x33
c0de9338:	f886 7031 	strb.w	r7, [r6, #49]	@ 0x31
c0de933c:	fbb1 f1fa 	udiv	r1, r1, sl
c0de9340:	b2ca      	uxtb	r2, r1
c0de9342:	f886 1030 	strb.w	r1, [r6, #48]	@ 0x30
c0de9346:	2a02      	cmp	r2, #2
c0de9348:	d31e      	bcc.n	c0de9388 <pageCallback+0x224>
c0de934a:	3a01      	subs	r2, #1
c0de934c:	241a      	movs	r4, #26
c0de934e:	eb02 0342 	add.w	r3, r2, r2, lsl #1
c0de9352:	3319      	adds	r3, #25
c0de9354:	b29b      	uxth	r3, r3
c0de9356:	fbb3 f4f4 	udiv	r4, r3, r4
c0de935a:	b2e4      	uxtb	r4, r4
c0de935c:	fbb4 f5fa 	udiv	r5, r4, sl
c0de9360:	fb05 441a 	mls	r4, r5, sl, r4
c0de9364:	f06f 050a 	mvn.w	r5, #10
c0de9368:	fb02 0005 	mla	r0, r2, r5, r0
c0de936c:	f44f 728f 	mov.w	r2, #286	@ 0x11e
c0de9370:	fbb3 f2f2 	udiv	r2, r3, r2
c0de9374:	b2c0      	uxtb	r0, r0
c0de9376:	4420      	add	r0, r4
c0de9378:	4411      	add	r1, r2
c0de937a:	280b      	cmp	r0, #11
c0de937c:	eb09 0008 	add.w	r0, r9, r8
c0de9380:	bf88      	it	hi
c0de9382:	3101      	addhi	r1, #1
c0de9384:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de9388:	2000      	movs	r0, #0
c0de938a:	2101      	movs	r1, #1
c0de938c:	b014      	add	sp, #80	@ 0x50
c0de938e:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9392:	f001 bb5f 	b.w	c0deaa54 <displayDetailsPage>
c0de9396:	4856      	ldr	r0, [pc, #344]	@ (c0de94f0 <pageCallback+0x38c>)
c0de9398:	4448      	add	r0, r9
c0de939a:	6981      	ldr	r1, [r0, #24]
c0de939c:	2900      	cmp	r1, #0
c0de939e:	f000 807d 	beq.w	c0de949c <pageCallback+0x338>
c0de93a2:	2001      	movs	r0, #1
c0de93a4:	e005      	b.n	c0de93b2 <pageCallback+0x24e>
c0de93a6:	4852      	ldr	r0, [pc, #328]	@ (c0de94f0 <pageCallback+0x38c>)
c0de93a8:	4448      	add	r0, r9
c0de93aa:	6981      	ldr	r1, [r0, #24]
c0de93ac:	2900      	cmp	r1, #0
c0de93ae:	d075      	beq.n	c0de949c <pageCallback+0x338>
c0de93b0:	2000      	movs	r0, #0
c0de93b2:	b014      	add	sp, #80	@ 0x50
c0de93b4:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de93b8:	4708      	bx	r1
c0de93ba:	484c      	ldr	r0, [pc, #304]	@ (c0de94ec <pageCallback+0x388>)
c0de93bc:	eb09 0100 	add.w	r1, r9, r0
c0de93c0:	4448      	add	r0, r9
c0de93c2:	6a49      	ldr	r1, [r1, #36]	@ 0x24
c0de93c4:	2900      	cmp	r1, #0
c0de93c6:	d06c      	beq.n	c0de94a2 <pageCallback+0x33e>
c0de93c8:	7c80      	ldrb	r0, [r0, #18]
c0de93ca:	4420      	add	r0, r4
c0de93cc:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de93d0:	e06c      	b.n	c0de94ac <pageCallback+0x348>
c0de93d2:	4846      	ldr	r0, [pc, #280]	@ (c0de94ec <pageCallback+0x388>)
c0de93d4:	2100      	movs	r1, #0
c0de93d6:	4448      	add	r0, r9
c0de93d8:	6781      	str	r1, [r0, #120]	@ 0x78
c0de93da:	f880 1089 	strb.w	r1, [r0, #137]	@ 0x89
c0de93de:	2010      	movs	r0, #16
c0de93e0:	e006      	b.n	c0de93f0 <pageCallback+0x28c>
c0de93e2:	4a42      	ldr	r2, [pc, #264]	@ (c0de94ec <pageCallback+0x388>)
c0de93e4:	2101      	movs	r1, #1
c0de93e6:	eb09 0002 	add.w	r0, r9, r2
c0de93ea:	f001 fd57 	bl	c0deae9c <OUTLINED_FUNCTION_6>
c0de93ee:	d066      	beq.n	c0de94be <pageCallback+0x35a>
c0de93f0:	b014      	add	sp, #80	@ 0x50
c0de93f2:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de93f6:	f001 b8af 	b.w	c0dea558 <displaySecurityReport>
c0de93fa:	4e3d      	ldr	r6, [pc, #244]	@ (c0de94f0 <pageCallback+0x38c>)
c0de93fc:	eb09 0006 	add.w	r0, r9, r6
c0de9400:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
c0de9402:	b133      	cbz	r3, c0de9412 <pageCallback+0x2ae>
c0de9404:	eb09 0006 	add.w	r0, r9, r6
c0de9408:	4621      	mov	r1, r4
c0de940a:	f890 2060 	ldrb.w	r2, [r0, #96]	@ 0x60
c0de940e:	4628      	mov	r0, r5
c0de9410:	4798      	blx	r3
c0de9412:	eb09 0006 	add.w	r0, r9, r6
c0de9416:	68c2      	ldr	r2, [r0, #12]
c0de9418:	2a00      	cmp	r2, #0
c0de941a:	d03f      	beq.n	c0de949c <pageCallback+0x338>
c0de941c:	4628      	mov	r0, r5
c0de941e:	4621      	mov	r1, r4
c0de9420:	b014      	add	sp, #80	@ 0x50
c0de9422:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9426:	4710      	bx	r2
c0de9428:	b2c0      	uxtb	r0, r0
c0de942a:	2100      	movs	r1, #0
c0de942c:	b014      	add	sp, #80	@ 0x50
c0de942e:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9432:	f7ff bbd3 	b.w	c0de8bdc <displayGenericContextPage>
c0de9436:	eb09 0100 	add.w	r1, r9, r0
c0de943a:	2200      	movs	r2, #0
c0de943c:	6c48      	ldr	r0, [r1, #68]	@ 0x44
c0de943e:	314c      	adds	r1, #76	@ 0x4c
c0de9440:	b014      	add	sp, #80	@ 0x50
c0de9442:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9446:	f001 b9a1 	b.w	c0dea78c <displayInfosListModal>
c0de944a:	2080      	movs	r0, #128	@ 0x80
c0de944c:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0de9450:	2303      	movs	r3, #3
c0de9452:	9001      	str	r0, [sp, #4]
c0de9454:	4828      	ldr	r0, [pc, #160]	@ (c0de94f8 <pageCallback+0x394>)
c0de9456:	eb09 0400 	add.w	r4, r9, r0
c0de945a:	200b      	movs	r0, #11
c0de945c:	9400      	str	r4, [sp, #0]
c0de945e:	f002 fb21 	bl	c0debaa4 <nbgl_textReduceOnNbLines>
c0de9462:	9405      	str	r4, [sp, #20]
c0de9464:	eb09 0406 	add.w	r4, r9, r6
c0de9468:	6da0      	ldr	r0, [r4, #88]	@ 0x58
c0de946a:	a903      	add	r1, sp, #12
c0de946c:	f7fc fdbd 	bl	c0de5fea <nbgl_layoutAddQRCode>
c0de9470:	6da0      	ldr	r0, [r4, #88]	@ 0x58
c0de9472:	4924      	ldr	r1, [pc, #144]	@ (c0de9504 <pageCallback+0x3a0>)
c0de9474:	2216      	movs	r2, #22
c0de9476:	2309      	movs	r3, #9
c0de9478:	4479      	add	r1, pc
c0de947a:	f7fd fa00 	bl	c0de687e <nbgl_layoutAddFooter>
c0de947e:	6da0      	ldr	r0, [r4, #88]	@ 0x58
c0de9480:	f7fd ff4d 	bl	c0de731e <nbgl_layoutDraw>
c0de9484:	f002 faa5 	bl	c0deb9d2 <nbgl_refresh>
c0de9488:	e008      	b.n	c0de949c <pageCallback+0x338>
c0de948a:	2c01      	cmp	r4, #1
c0de948c:	d106      	bne.n	c0de949c <pageCallback+0x338>
c0de948e:	4448      	add	r0, r9
c0de9490:	6840      	ldr	r0, [r0, #4]
c0de9492:	b118      	cbz	r0, c0de949c <pageCallback+0x338>
c0de9494:	b014      	add	sp, #80	@ 0x50
c0de9496:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de949a:	4700      	bx	r0
c0de949c:	b014      	add	sp, #80	@ 0x50
c0de949e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de94a2:	6a81      	ldr	r1, [r0, #40]	@ 0x28
c0de94a4:	7c80      	ldrb	r0, [r0, #18]
c0de94a6:	4420      	add	r0, r4
c0de94a8:	b2c0      	uxtb	r0, r0
c0de94aa:	4788      	blx	r1
c0de94ac:	e9d0 3100 	ldrd	r3, r1, [r0]
c0de94b0:	6882      	ldr	r2, [r0, #8]
c0de94b2:	4618      	mov	r0, r3
c0de94b4:	b014      	add	sp, #80	@ 0x50
c0de94b6:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de94ba:	f000 bf6f 	b.w	c0dea39c <displayFullValuePage>
c0de94be:	eb09 0002 	add.w	r0, r9, r2
c0de94c2:	f890 0089 	ldrb.w	r0, [r0, #137]	@ 0x89
c0de94c6:	b120      	cbz	r0, c0de94d2 <pageCallback+0x36e>
c0de94c8:	6948      	ldr	r0, [r1, #20]
c0de94ca:	e003      	b.n	c0de94d4 <pageCallback+0x370>
c0de94cc:	b938      	cbnz	r0, c0de94de <pageCallback+0x37a>
c0de94ce:	4620      	mov	r0, r4
c0de94d0:	e68f      	b.n	c0de91f2 <pageCallback+0x8e>
c0de94d2:	6988      	ldr	r0, [r1, #24]
c0de94d4:	b014      	add	sp, #80	@ 0x50
c0de94d6:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de94da:	f001 b94b 	b.w	c0dea774 <displayCustomizedSecurityReport>
c0de94de:	4620      	mov	r0, r4
c0de94e0:	2100      	movs	r1, #0
c0de94e2:	b014      	add	sp, #80	@ 0x50
c0de94e4:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de94e8:	f7ff ba32 	b.w	c0de8950 <displaySettingsPage>
c0de94ec:	00000918 	.word	0x00000918
c0de94f0:	00000bd0 	.word	0x00000bd0
c0de94f4:	00000c4c 	.word	0x00000c4c
c0de94f8:	00000b50 	.word	0x00000b50
c0de94fc:	0000600e 	.word	0x0000600e
c0de9500:	00005fce 	.word	0x00005fce
c0de9504:	000047a5 	.word	0x000047a5
c0de9508:	0000602a 	.word	0x0000602a
c0de950c:	00000527 	.word	0x00000527

c0de9510 <nbgl_useCaseReviewStatus>:
c0de9510:	460a      	mov	r2, r1
c0de9512:	b198      	cbz	r0, c0de953c <nbgl_useCaseReviewStatus+0x2c>
c0de9514:	2801      	cmp	r0, #1
c0de9516:	d016      	beq.n	c0de9546 <nbgl_useCaseReviewStatus+0x36>
c0de9518:	2802      	cmp	r0, #2
c0de951a:	d019      	beq.n	c0de9550 <nbgl_useCaseReviewStatus+0x40>
c0de951c:	2803      	cmp	r0, #3
c0de951e:	d01c      	beq.n	c0de955a <nbgl_useCaseReviewStatus+0x4a>
c0de9520:	2804      	cmp	r0, #4
c0de9522:	d01f      	beq.n	c0de9564 <nbgl_useCaseReviewStatus+0x54>
c0de9524:	2807      	cmp	r0, #7
c0de9526:	d022      	beq.n	c0de956e <nbgl_useCaseReviewStatus+0x5e>
c0de9528:	2806      	cmp	r0, #6
c0de952a:	d025      	beq.n	c0de9578 <nbgl_useCaseReviewStatus+0x68>
c0de952c:	2805      	cmp	r0, #5
c0de952e:	bf18      	it	ne
c0de9530:	4770      	bxne	lr
c0de9532:	4815      	ldr	r0, [pc, #84]	@ (c0de9588 <nbgl_useCaseReviewStatus+0x78>)
c0de9534:	2100      	movs	r1, #0
c0de9536:	4478      	add	r0, pc
c0de9538:	f7ff bdba 	b.w	c0de90b0 <nbgl_useCaseStatus>
c0de953c:	4813      	ldr	r0, [pc, #76]	@ (c0de958c <nbgl_useCaseReviewStatus+0x7c>)
c0de953e:	2101      	movs	r1, #1
c0de9540:	4478      	add	r0, pc
c0de9542:	f7ff bdb5 	b.w	c0de90b0 <nbgl_useCaseStatus>
c0de9546:	4812      	ldr	r0, [pc, #72]	@ (c0de9590 <nbgl_useCaseReviewStatus+0x80>)
c0de9548:	2100      	movs	r1, #0
c0de954a:	4478      	add	r0, pc
c0de954c:	f7ff bdb0 	b.w	c0de90b0 <nbgl_useCaseStatus>
c0de9550:	4810      	ldr	r0, [pc, #64]	@ (c0de9594 <nbgl_useCaseReviewStatus+0x84>)
c0de9552:	2101      	movs	r1, #1
c0de9554:	4478      	add	r0, pc
c0de9556:	f7ff bdab 	b.w	c0de90b0 <nbgl_useCaseStatus>
c0de955a:	480f      	ldr	r0, [pc, #60]	@ (c0de9598 <nbgl_useCaseReviewStatus+0x88>)
c0de955c:	2100      	movs	r1, #0
c0de955e:	4478      	add	r0, pc
c0de9560:	f7ff bda6 	b.w	c0de90b0 <nbgl_useCaseStatus>
c0de9564:	4807      	ldr	r0, [pc, #28]	@ (c0de9584 <nbgl_useCaseReviewStatus+0x74>)
c0de9566:	2101      	movs	r1, #1
c0de9568:	4478      	add	r0, pc
c0de956a:	f7ff bda1 	b.w	c0de90b0 <nbgl_useCaseStatus>
c0de956e:	480c      	ldr	r0, [pc, #48]	@ (c0de95a0 <nbgl_useCaseReviewStatus+0x90>)
c0de9570:	2100      	movs	r1, #0
c0de9572:	4478      	add	r0, pc
c0de9574:	f7ff bd9c 	b.w	c0de90b0 <nbgl_useCaseStatus>
c0de9578:	4808      	ldr	r0, [pc, #32]	@ (c0de959c <nbgl_useCaseReviewStatus+0x8c>)
c0de957a:	2101      	movs	r1, #1
c0de957c:	4478      	add	r0, pc
c0de957e:	f7ff bd97 	b.w	c0de90b0 <nbgl_useCaseStatus>
c0de9582:	bf00      	nop
c0de9584:	00004387 	.word	0x00004387
c0de9588:	0000442d 	.word	0x0000442d
c0de958c:	00004609 	.word	0x00004609
c0de9590:	00004b56 	.word	0x00004b56
c0de9594:	000046ba 	.word	0x000046ba
c0de9598:	00004a30 	.word	0x00004a30
c0de959c:	00004567 	.word	0x00004567
c0de95a0:	0000438e 	.word	0x0000438e

c0de95a4 <nbgl_useCaseChoice>:
c0de95a4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de95a8:	b088      	sub	sp, #32
c0de95aa:	4683      	mov	fp, r0
c0de95ac:	4668      	mov	r0, sp
c0de95ae:	460e      	mov	r6, r1
c0de95b0:	2118      	movs	r1, #24
c0de95b2:	461c      	mov	r4, r3
c0de95b4:	4617      	mov	r7, r2
c0de95b6:	3008      	adds	r0, #8
c0de95b8:	f002 ff60 	bl	c0dec47c <__aeabi_memclr>
c0de95bc:	b324      	cbz	r4, c0de9608 <nbgl_useCaseChoice+0x64>
c0de95be:	f8dd 8040 	ldr.w	r8, [sp, #64]	@ 0x40
c0de95c2:	f1b8 0f00 	cmp.w	r8, #0
c0de95c6:	d01f      	beq.n	c0de9608 <nbgl_useCaseChoice+0x64>
c0de95c8:	4811      	ldr	r0, [pc, #68]	@ (c0de9610 <nbgl_useCaseChoice+0x6c>)
c0de95ca:	f8dd a044 	ldr.w	sl, [sp, #68]	@ 0x44
c0de95ce:	eb09 0500 	add.w	r5, r9, r0
c0de95d2:	f7ff f96b 	bl	c0de88ac <reset_callbacks_and_context>
c0de95d6:	2000      	movs	r0, #0
c0de95d8:	f8c5 a018 	str.w	sl, [r5, #24]
c0de95dc:	e9cd 6700 	strd	r6, r7, [sp]
c0de95e0:	f8cd 8018 	str.w	r8, [sp, #24]
c0de95e4:	9405      	str	r4, [sp, #20]
c0de95e6:	f8cd b00c 	str.w	fp, [sp, #12]
c0de95ea:	4669      	mov	r1, sp
c0de95ec:	f88d 0011 	strb.w	r0, [sp, #17]
c0de95f0:	2009      	movs	r0, #9
c0de95f2:	f88d 001e 	strb.w	r0, [sp, #30]
c0de95f6:	f88d 001c 	strb.w	r0, [sp, #28]
c0de95fa:	4806      	ldr	r0, [pc, #24]	@ (c0de9614 <nbgl_useCaseChoice+0x70>)
c0de95fc:	4478      	add	r0, pc
c0de95fe:	f7fe fce5 	bl	c0de7fcc <nbgl_pageDrawConfirmation>
c0de9602:	6168      	str	r0, [r5, #20]
c0de9604:	f001 fc41 	bl	c0deae8a <OUTLINED_FUNCTION_3>
c0de9608:	b008      	add	sp, #32
c0de960a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de960e:	bf00      	nop
c0de9610:	00000bd0 	.word	0x00000bd0
c0de9614:	fffffb65 	.word	0xfffffb65

c0de9618 <layoutTouchCallback>:
c0de9618:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de961a:	b087      	sub	sp, #28
c0de961c:	2811      	cmp	r0, #17
c0de961e:	d01d      	beq.n	c0de965c <layoutTouchCallback+0x44>
c0de9620:	2812      	cmp	r0, #18
c0de9622:	d027      	beq.n	c0de9674 <layoutTouchCallback+0x5c>
c0de9624:	2819      	cmp	r0, #25
c0de9626:	d02e      	beq.n	c0de9686 <layoutTouchCallback+0x6e>
c0de9628:	2815      	cmp	r0, #21
c0de962a:	d13c      	bne.n	c0de96a6 <layoutTouchCallback+0x8e>
c0de962c:	2900      	cmp	r1, #0
c0de962e:	d047      	beq.n	c0de96c0 <layoutTouchCallback+0xa8>
c0de9630:	493e      	ldr	r1, [pc, #248]	@ (c0de972c <layoutTouchCallback+0x114>)
c0de9632:	2400      	movs	r4, #0
c0de9634:	eb09 0201 	add.w	r2, r9, r1
c0de9638:	eb09 0501 	add.w	r5, r9, r1
c0de963c:	f882 4089 	strb.w	r4, [r2, #137]	@ 0x89
c0de9640:	6e10      	ldr	r0, [r2, #96]	@ 0x60
c0de9642:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de9646:	2a00      	cmp	r2, #0
c0de9648:	d05f      	beq.n	c0de970a <layoutTouchCallback+0xf2>
c0de964a:	f105 0368 	add.w	r3, r5, #104	@ 0x68
c0de964e:	6fed      	ldr	r5, [r5, #124]	@ 0x7c
c0de9650:	cb0e      	ldmia	r3, {r1, r2, r3}
c0de9652:	e9cd 5400 	strd	r5, r4, [sp]
c0de9656:	f000 fbc3 	bl	c0de9de0 <useCaseReviewStreamingStart>
c0de965a:	e064      	b.n	c0de9726 <layoutTouchCallback+0x10e>
c0de965c:	4a33      	ldr	r2, [pc, #204]	@ (c0de972c <layoutTouchCallback+0x114>)
c0de965e:	2101      	movs	r1, #1
c0de9660:	eb09 0002 	add.w	r0, r9, r2
c0de9664:	f001 fc1a 	bl	c0deae9c <OUTLINED_FUNCTION_6>
c0de9668:	d032      	beq.n	c0de96d0 <layoutTouchCallback+0xb8>
c0de966a:	b007      	add	sp, #28
c0de966c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de9670:	f000 bf72 	b.w	c0dea558 <displaySecurityReport>
c0de9674:	482d      	ldr	r0, [pc, #180]	@ (c0de972c <layoutTouchCallback+0x114>)
c0de9676:	2118      	movs	r1, #24
c0de9678:	eb09 0400 	add.w	r4, r9, r0
c0de967c:	2001      	movs	r0, #1
c0de967e:	f001 fc44 	bl	c0deaf0a <OUTLINED_FUNCTION_19>
c0de9682:	6660      	str	r0, [r4, #100]	@ 0x64
c0de9684:	e04f      	b.n	c0de9726 <layoutTouchCallback+0x10e>
c0de9686:	4a29      	ldr	r2, [pc, #164]	@ (c0de972c <layoutTouchCallback+0x114>)
c0de9688:	eb09 0002 	add.w	r0, r9, r2
c0de968c:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0de968e:	b349      	cbz	r1, c0de96e4 <layoutTouchCallback+0xcc>
c0de9690:	7801      	ldrb	r1, [r0, #0]
c0de9692:	f011 0f16 	tst.w	r1, #22
c0de9696:	d101      	bne.n	c0de969c <layoutTouchCallback+0x84>
c0de9698:	6940      	ldr	r0, [r0, #20]
c0de969a:	b350      	cbz	r0, c0de96f2 <layoutTouchCallback+0xda>
c0de969c:	b007      	add	sp, #28
c0de969e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de96a2:	f000 bac9 	b.w	c0de9c38 <displayInitialWarning>
c0de96a6:	2809      	cmp	r0, #9
c0de96a8:	d13d      	bne.n	c0de9726 <layoutTouchCallback+0x10e>
c0de96aa:	4821      	ldr	r0, [pc, #132]	@ (c0de9730 <layoutTouchCallback+0x118>)
c0de96ac:	4448      	add	r0, r9
c0de96ae:	6982      	ldr	r2, [r0, #24]
c0de96b0:	b3ca      	cbz	r2, c0de9726 <layoutTouchCallback+0x10e>
c0de96b2:	fab1 f081 	clz	r0, r1
c0de96b6:	0940      	lsrs	r0, r0, #5
c0de96b8:	b007      	add	sp, #28
c0de96ba:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de96be:	4710      	bx	r2
c0de96c0:	481a      	ldr	r0, [pc, #104]	@ (c0de972c <layoutTouchCallback+0x114>)
c0de96c2:	4448      	add	r0, r9
c0de96c4:	6fc1      	ldr	r1, [r0, #124]	@ 0x7c
c0de96c6:	2000      	movs	r0, #0
c0de96c8:	b007      	add	sp, #28
c0de96ca:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de96ce:	4708      	bx	r1
c0de96d0:	eb09 0002 	add.w	r0, r9, r2
c0de96d4:	2214      	movs	r2, #20
c0de96d6:	f890 0089 	ldrb.w	r0, [r0, #137]	@ 0x89
c0de96da:	2800      	cmp	r0, #0
c0de96dc:	bf08      	it	eq
c0de96de:	2218      	moveq	r2, #24
c0de96e0:	5888      	ldr	r0, [r1, r2]
c0de96e2:	e001      	b.n	c0de96e8 <layoutTouchCallback+0xd0>
c0de96e4:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de96e6:	6940      	ldr	r0, [r0, #20]
c0de96e8:	b007      	add	sp, #28
c0de96ea:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de96ee:	f001 b841 	b.w	c0dea774 <displayCustomizedSecurityReport>
c0de96f2:	eb09 0102 	add.w	r1, r9, r2
c0de96f6:	2400      	movs	r4, #0
c0de96f8:	eb09 0502 	add.w	r5, r9, r2
c0de96fc:	f881 4089 	strb.w	r4, [r1, #137]	@ 0x89
c0de9700:	6e08      	ldr	r0, [r1, #96]	@ 0x60
c0de9702:	f891 105c 	ldrb.w	r1, [r1, #92]	@ 0x5c
c0de9706:	2900      	cmp	r1, #0
c0de9708:	d19f      	bne.n	c0de964a <layoutTouchCallback+0x32>
c0de970a:	f105 0764 	add.w	r7, r5, #100	@ 0x64
c0de970e:	f8d5 c07c 	ldr.w	ip, [r5, #124]	@ 0x7c
c0de9712:	353c      	adds	r5, #60	@ 0x3c
c0de9714:	cfce      	ldmia	r7, {r1, r2, r3, r6, r7}
c0de9716:	e9cd 6700 	strd	r6, r7, [sp]
c0de971a:	e9cd 4404 	strd	r4, r4, [sp, #16]
c0de971e:	e9cd 5c02 	strd	r5, ip, [sp, #8]
c0de9722:	f000 f913 	bl	c0de994c <useCaseReview>
c0de9726:	b007      	add	sp, #28
c0de9728:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de972a:	bf00      	nop
c0de972c:	00000918 	.word	0x00000918
c0de9730:	00000bd0 	.word	0x00000bd0

c0de9734 <nbgl_useCaseConfirm>:
c0de9734:	b570      	push	{r4, r5, r6, lr}
c0de9736:	b088      	sub	sp, #32
c0de9738:	4c0f      	ldr	r4, [pc, #60]	@ (c0de9778 <nbgl_useCaseConfirm+0x44>)
c0de973a:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de973c:	f10d 0c14 	add.w	ip, sp, #20
c0de9740:	eb09 0504 	add.w	r5, r9, r4
c0de9744:	61ee      	str	r6, [r5, #28]
c0de9746:	4e0d      	ldr	r6, [pc, #52]	@ (c0de977c <nbgl_useCaseConfirm+0x48>)
c0de9748:	e8ac 004c 	stmia.w	ip!, {r2, r3, r6}
c0de974c:	2200      	movs	r2, #0
c0de974e:	9204      	str	r2, [sp, #16]
c0de9750:	4b0b      	ldr	r3, [pc, #44]	@ (c0de9780 <nbgl_useCaseConfirm+0x4c>)
c0de9752:	447b      	add	r3, pc
c0de9754:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de9758:	6a28      	ldr	r0, [r5, #32]
c0de975a:	b108      	cbz	r0, c0de9760 <nbgl_useCaseConfirm+0x2c>
c0de975c:	f7fe fe97 	bl	c0de848e <nbgl_pageRelease>
c0de9760:	4808      	ldr	r0, [pc, #32]	@ (c0de9784 <nbgl_useCaseConfirm+0x50>)
c0de9762:	4669      	mov	r1, sp
c0de9764:	4478      	add	r0, pc
c0de9766:	f7fe fc31 	bl	c0de7fcc <nbgl_pageDrawConfirmation>
c0de976a:	eb09 0104 	add.w	r1, r9, r4
c0de976e:	6208      	str	r0, [r1, #32]
c0de9770:	f001 fb8b 	bl	c0deae8a <OUTLINED_FUNCTION_3>
c0de9774:	b008      	add	sp, #32
c0de9776:	bd70      	pop	{r4, r5, r6, pc}
c0de9778:	00000bd0 	.word	0x00000bd0
c0de977c:	01090009 	.word	0x01090009
c0de9780:	000036dc 	.word	0x000036dc
c0de9784:	00000021 	.word	0x00000021

c0de9788 <pageModalCallback>:
c0de9788:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de978a:	460c      	mov	r4, r1
c0de978c:	280e      	cmp	r0, #14
c0de978e:	d008      	beq.n	c0de97a2 <pageModalCallback+0x1a>
c0de9790:	4605      	mov	r5, r0
c0de9792:	280f      	cmp	r0, #15
c0de9794:	d117      	bne.n	c0de97c6 <pageModalCallback+0x3e>
c0de9796:	4832      	ldr	r0, [pc, #200]	@ (c0de9860 <pageModalCallback+0xd8>)
c0de9798:	4448      	add	r0, r9
c0de979a:	e9d0 2113 	ldrd	r2, r1, [r0, #76]	@ 0x4c
c0de979e:	6d43      	ldr	r3, [r0, #84]	@ 0x54
c0de97a0:	e005      	b.n	c0de97ae <pageModalCallback+0x26>
c0de97a2:	482f      	ldr	r0, [pc, #188]	@ (c0de9860 <pageModalCallback+0xd8>)
c0de97a4:	4448      	add	r0, r9
c0de97a6:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de97a8:	e9d0 2100 	ldrd	r2, r1, [r0]
c0de97ac:	6883      	ldr	r3, [r0, #8]
c0de97ae:	f852 0024 	ldr.w	r0, [r2, r4, lsl #2]
c0de97b2:	eb04 0244 	add.w	r2, r4, r4, lsl #1
c0de97b6:	f851 1024 	ldr.w	r1, [r1, r4, lsl #2]
c0de97ba:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
c0de97be:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de97c2:	f000 bdeb 	b.w	c0dea39c <displayFullValuePage>
c0de97c6:	4e27      	ldr	r6, [pc, #156]	@ (c0de9864 <pageModalCallback+0xdc>)
c0de97c8:	eb09 0706 	add.w	r7, r9, r6
c0de97cc:	6a38      	ldr	r0, [r7, #32]
c0de97ce:	f7fe fe5e 	bl	c0de848e <nbgl_pageRelease>
c0de97d2:	2000      	movs	r0, #0
c0de97d4:	2d02      	cmp	r5, #2
c0de97d6:	6238      	str	r0, [r7, #32]
c0de97d8:	d032      	beq.n	c0de9840 <pageModalCallback+0xb8>
c0de97da:	2d14      	cmp	r5, #20
c0de97dc:	d00f      	beq.n	c0de97fe <pageModalCallback+0x76>
c0de97de:	2d04      	cmp	r5, #4
c0de97e0:	d01e      	beq.n	c0de9820 <pageModalCallback+0x98>
c0de97e2:	2d05      	cmp	r5, #5
c0de97e4:	d024      	beq.n	c0de9830 <pageModalCallback+0xa8>
c0de97e6:	2d09      	cmp	r5, #9
c0de97e8:	d029      	beq.n	c0de983e <pageModalCallback+0xb6>
c0de97ea:	2d03      	cmp	r5, #3
c0de97ec:	d137      	bne.n	c0de985e <pageModalCallback+0xd6>
c0de97ee:	2cff      	cmp	r4, #255	@ 0xff
c0de97f0:	d026      	beq.n	c0de9840 <pageModalCallback+0xb8>
c0de97f2:	4620      	mov	r0, r4
c0de97f4:	2100      	movs	r1, #0
c0de97f6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de97fa:	f001 b92b 	b.w	c0deaa54 <displayDetailsPage>
c0de97fe:	4818      	ldr	r0, [pc, #96]	@ (c0de9860 <pageModalCallback+0xd8>)
c0de9800:	eb09 0100 	add.w	r1, r9, r0
c0de9804:	f891 1088 	ldrb.w	r1, [r1, #136]	@ 0x88
c0de9808:	2902      	cmp	r1, #2
c0de980a:	d119      	bne.n	c0de9840 <pageModalCallback+0xb8>
c0de980c:	4448      	add	r0, r9
c0de980e:	2101      	movs	r1, #1
c0de9810:	f880 1088 	strb.w	r1, [r0, #136]	@ 0x88
c0de9814:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0de9816:	6800      	ldr	r0, [r0, #0]
c0de9818:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de981c:	f000 be9c 	b.w	c0dea558 <displaySecurityReport>
c0de9820:	2cff      	cmp	r4, #255	@ 0xff
c0de9822:	d00d      	beq.n	c0de9840 <pageModalCallback+0xb8>
c0de9824:	4620      	mov	r0, r4
c0de9826:	2100      	movs	r1, #0
c0de9828:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de982c:	f001 b9e4 	b.w	c0deabf8 <displayTagValueListModalPage>
c0de9830:	b934      	cbnz	r4, c0de9840 <pageModalCallback+0xb8>
c0de9832:	20ff      	movs	r0, #255	@ 0xff
c0de9834:	2101      	movs	r1, #1
c0de9836:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de983a:	f7ff b9cf 	b.w	c0de8bdc <displayGenericContextPage>
c0de983e:	b12c      	cbz	r4, c0de984c <pageModalCallback+0xc4>
c0de9840:	f002 f8ef 	bl	c0deba22 <nbgl_screenRedraw>
c0de9844:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de9848:	f002 b8c3 	b.w	c0deb9d2 <nbgl_refresh>
c0de984c:	eb09 0006 	add.w	r0, r9, r6
c0de9850:	69c0      	ldr	r0, [r0, #28]
c0de9852:	b120      	cbz	r0, c0de985e <pageModalCallback+0xd6>
c0de9854:	4780      	blx	r0
c0de9856:	eb09 0006 	add.w	r0, r9, r6
c0de985a:	2100      	movs	r1, #0
c0de985c:	61c1      	str	r1, [r0, #28]
c0de985e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de9860:	00000918 	.word	0x00000918
c0de9864:	00000bd0 	.word	0x00000bd0

c0de9868 <displayReviewPage>:
c0de9868:	b570      	push	{r4, r5, r6, lr}
c0de986a:	b090      	sub	sp, #64	@ 0x40
c0de986c:	460c      	mov	r4, r1
c0de986e:	4605      	mov	r5, r0
c0de9870:	4668      	mov	r0, sp
c0de9872:	2140      	movs	r1, #64	@ 0x40
c0de9874:	f002 fe02 	bl	c0dec47c <__aeabi_memclr>
c0de9878:	4e28      	ldr	r6, [pc, #160]	@ (c0de991c <displayReviewPage+0xb4>)
c0de987a:	eb09 0006 	add.w	r0, r9, r6
c0de987e:	f890 0061 	ldrb.w	r0, [r0, #97]	@ 0x61
c0de9882:	b108      	cbz	r0, c0de9888 <displayReviewPage+0x20>
c0de9884:	42a8      	cmp	r0, r5
c0de9886:	d947      	bls.n	c0de9918 <displayReviewPage+0xb0>
c0de9888:	eb09 0006 	add.w	r0, r9, r6
c0de988c:	6882      	ldr	r2, [r0, #8]
c0de988e:	f880 5060 	strb.w	r5, [r0, #96]	@ 0x60
c0de9892:	2a00      	cmp	r2, #0
c0de9894:	d040      	beq.n	c0de9918 <displayReviewPage+0xb0>
c0de9896:	4669      	mov	r1, sp
c0de9898:	4628      	mov	r0, r5
c0de989a:	4790      	blx	r2
c0de989c:	b3e0      	cbz	r0, c0de9918 <displayReviewPage+0xb0>
c0de989e:	2009      	movs	r0, #9
c0de98a0:	2100      	movs	r1, #0
c0de98a2:	f88d 0006 	strb.w	r0, [sp, #6]
c0de98a6:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de98aa:	f88d 1004 	strb.w	r1, [sp, #4]
c0de98ae:	9100      	str	r1, [sp, #0]
c0de98b0:	2806      	cmp	r0, #6
c0de98b2:	d010      	beq.n	c0de98d6 <displayReviewPage+0x6e>
c0de98b4:	2804      	cmp	r0, #4
c0de98b6:	d014      	beq.n	c0de98e2 <displayReviewPage+0x7a>
c0de98b8:	2805      	cmp	r0, #5
c0de98ba:	d016      	beq.n	c0de98ea <displayReviewPage+0x82>
c0de98bc:	2802      	cmp	r0, #2
c0de98be:	d11b      	bne.n	c0de98f8 <displayReviewPage+0x90>
c0de98c0:	eb09 0006 	add.w	r0, r9, r6
c0de98c4:	f890 1060 	ldrb.w	r1, [r0, #96]	@ 0x60
c0de98c8:	3101      	adds	r1, #1
c0de98ca:	f880 1061 	strb.w	r1, [r0, #97]	@ 0x61
c0de98ce:	200b      	movs	r0, #11
c0de98d0:	f88d 001c 	strb.w	r0, [sp, #28]
c0de98d4:	e010      	b.n	c0de98f8 <displayReviewPage+0x90>
c0de98d6:	200b      	movs	r0, #11
c0de98d8:	f88d 101d 	strb.w	r1, [sp, #29]
c0de98dc:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de98e0:	e00a      	b.n	c0de98f8 <displayReviewPage+0x90>
c0de98e2:	2000      	movs	r0, #0
c0de98e4:	f88d 001d 	strb.w	r0, [sp, #29]
c0de98e8:	e006      	b.n	c0de98f8 <displayReviewPage+0x90>
c0de98ea:	2000      	movs	r0, #0
c0de98ec:	f88d 001d 	strb.w	r0, [sp, #29]
c0de98f0:	f640 1001 	movw	r0, #2305	@ 0x901
c0de98f4:	f8ad 001a 	strh.w	r0, [sp, #26]
c0de98f8:	4809      	ldr	r0, [pc, #36]	@ (c0de9920 <displayReviewPage+0xb8>)
c0de98fa:	eb09 0506 	add.w	r5, r9, r6
c0de98fe:	466a      	mov	r2, sp
c0de9900:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de9904:	4478      	add	r0, pc
c0de9906:	f7fe fdbf 	bl	c0de8488 <nbgl_pageDrawGenericContent>
c0de990a:	6168      	str	r0, [r5, #20]
c0de990c:	2001      	movs	r0, #1
c0de990e:	2c00      	cmp	r4, #0
c0de9910:	bf18      	it	ne
c0de9912:	2002      	movne	r0, #2
c0de9914:	f002 f862 	bl	c0deb9dc <nbgl_refreshSpecial>
c0de9918:	b010      	add	sp, #64	@ 0x40
c0de991a:	bd70      	pop	{r4, r5, r6, pc}
c0de991c:	00000bd0 	.word	0x00000bd0
c0de9920:	fffff85d 	.word	0xfffff85d

c0de9924 <nbgl_useCaseReview>:
c0de9924:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de9926:	b087      	sub	sp, #28
c0de9928:	f001 fa9e 	bl	c0deae68 <OUTLINED_FUNCTION_0>
c0de992c:	2001      	movs	r0, #1
c0de992e:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de9930:	462a      	mov	r2, r5
c0de9932:	4623      	mov	r3, r4
c0de9934:	9005      	str	r0, [sp, #20]
c0de9936:	2000      	movs	r0, #0
c0de9938:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de993c:	9004      	str	r0, [sp, #16]
c0de993e:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de9940:	4631      	mov	r1, r6
c0de9942:	f001 fab1 	bl	c0deaea8 <OUTLINED_FUNCTION_8>
c0de9946:	b007      	add	sp, #28
c0de9948:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de994c <useCaseReview>:
c0de994c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9950:	4688      	mov	r8, r1
c0de9952:	4682      	mov	sl, r0
c0de9954:	4840      	ldr	r0, [pc, #256]	@ (c0de9a58 <useCaseReview+0x10c>)
c0de9956:	4941      	ldr	r1, [pc, #260]	@ (c0de9a5c <useCaseReview+0x110>)
c0de9958:	4614      	mov	r4, r2
c0de995a:	2202      	movs	r2, #2
c0de995c:	f04f 0b00 	mov.w	fp, #0
c0de9960:	4e40      	ldr	r6, [pc, #256]	@ (c0de9a64 <useCaseReview+0x118>)
c0de9962:	461f      	mov	r7, r3
c0de9964:	f849 a000 	str.w	sl, [r9, r0]
c0de9968:	f809 2001 	strb.w	r2, [r9, r1]
c0de996c:	4448      	add	r0, r9
c0de996e:	eb09 0506 	add.w	r5, r9, r6
c0de9972:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
c0de9974:	6042      	str	r2, [r0, #4]
c0de9976:	eb09 0001 	add.w	r0, r9, r1
c0de997a:	493b      	ldr	r1, [pc, #236]	@ (c0de9a68 <useCaseReview+0x11c>)
c0de997c:	f8c0 b010 	str.w	fp, [r0, #16]
c0de9980:	4479      	add	r1, pc
c0de9982:	6181      	str	r1, [r0, #24]
c0de9984:	4836      	ldr	r0, [pc, #216]	@ (c0de9a60 <useCaseReview+0x114>)
c0de9986:	2103      	movs	r1, #3
c0de9988:	4448      	add	r0, r9
c0de998a:	7301      	strb	r1, [r0, #12]
c0de998c:	6085      	str	r5, [r0, #8]
c0de998e:	4628      	mov	r0, r5
c0de9990:	21a8      	movs	r1, #168	@ 0xa8
c0de9992:	f002 fd73 	bl	c0dec47c <__aeabi_memclr>
c0de9996:	2001      	movs	r0, #1
c0de9998:	f8a5 b024 	strh.w	fp, [r5, #36]	@ 0x24
c0de999c:	f809 0006 	strb.w	r0, [r9, r6]
c0de99a0:	4832      	ldr	r0, [pc, #200]	@ (c0de9a6c <useCaseReview+0x120>)
c0de99a2:	4478      	add	r0, pc
c0de99a4:	6228      	str	r0, [r5, #32]
c0de99a6:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de99a8:	616f      	str	r7, [r5, #20]
c0de99aa:	9401      	str	r4, [sp, #4]
c0de99ac:	60ac      	str	r4, [r5, #8]
c0de99ae:	f885 b004 	strb.w	fp, [r5, #4]
c0de99b2:	61e8      	str	r0, [r5, #28]
c0de99b4:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de99b6:	f001 f9c3 	bl	c0dead40 <initWarningTipBox>
c0de99ba:	2004      	movs	r0, #4
c0de99bc:	4641      	mov	r1, r8
c0de99be:	f885 0038 	strb.w	r0, [r5, #56]	@ 0x38
c0de99c2:	f105 003c 	add.w	r0, r5, #60	@ 0x3c
c0de99c6:	e891 00dc 	ldmia.w	r1, {r2, r3, r4, r6, r7}
c0de99ca:	c0dc      	stmia	r0!, {r2, r3, r4, r6, r7}
c0de99cc:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de99d0:	66e8      	str	r0, [r5, #108]	@ 0x6c
c0de99d2:	e9dd 050e 	ldrd	r0, r5, [sp, #56]	@ 0x38
c0de99d6:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
c0de99d8:	b190      	cbz	r0, c0de9a00 <useCaseReview+0xb4>
c0de99da:	4922      	ldr	r1, [pc, #136]	@ (c0de9a64 <useCaseReview+0x118>)
c0de99dc:	2203      	movs	r2, #3
c0de99de:	eb09 0001 	add.w	r0, r9, r1
c0de99e2:	f880 2070 	strb.w	r2, [r0, #112]	@ 0x70
c0de99e6:	9a01      	ldr	r2, [sp, #4]
c0de99e8:	b343      	cbz	r3, c0de9a3c <useCaseReview+0xf0>
c0de99ea:	eb09 0001 	add.w	r0, r9, r1
c0de99ee:	210b      	movs	r1, #11
c0de99f0:	f880 1080 	strb.w	r1, [r0, #128]	@ 0x80
c0de99f4:	4921      	ldr	r1, [pc, #132]	@ (c0de9a7c <useCaseReview+0x130>)
c0de99f6:	e9c0 321d 	strd	r3, r2, [r0, #116]	@ 0x74
c0de99fa:	4479      	add	r1, pc
c0de99fc:	67c1      	str	r1, [r0, #124]	@ 0x7c
c0de99fe:	e00a      	b.n	c0de9a16 <useCaseReview+0xca>
c0de9a00:	4818      	ldr	r0, [pc, #96]	@ (c0de9a64 <useCaseReview+0x118>)
c0de9a02:	2102      	movs	r1, #2
c0de9a04:	9a01      	ldr	r2, [sp, #4]
c0de9a06:	4448      	add	r0, r9
c0de9a08:	f880 1070 	strb.w	r1, [r0, #112]	@ 0x70
c0de9a0c:	f100 0174 	add.w	r1, r0, #116	@ 0x74
c0de9a10:	4650      	mov	r0, sl
c0de9a12:	f000 fa55 	bl	c0de9ec0 <prepareReviewLastPage>
c0de9a16:	f3ca 1000 	ubfx	r0, sl, #4, #1
c0de9a1a:	f7ff f825 	bl	c0de8a68 <getNbPagesForGenericContents>
c0de9a1e:	4a18      	ldr	r2, [pc, #96]	@ (c0de9a80 <useCaseReview+0x134>)
c0de9a20:	4601      	mov	r1, r0
c0de9a22:	2001      	movs	r0, #1
c0de9a24:	447a      	add	r2, pc
c0de9a26:	f7fe ff57 	bl	c0de88d8 <prepareNavInfo>
c0de9a2a:	b10d      	cbz	r5, c0de9a30 <useCaseReview+0xe4>
c0de9a2c:	f001 fa33 	bl	c0deae96 <OUTLINED_FUNCTION_5>
c0de9a30:	2000      	movs	r0, #0
c0de9a32:	2101      	movs	r1, #1
c0de9a34:	e8bd 4dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9a38:	f7ff b8d0 	b.w	c0de8bdc <displayGenericContextPage>
c0de9a3c:	f01a 0007 	ands.w	r0, sl, #7
c0de9a40:	d004      	beq.n	c0de9a4c <useCaseReview+0x100>
c0de9a42:	2801      	cmp	r0, #1
c0de9a44:	d105      	bne.n	c0de9a52 <useCaseReview+0x106>
c0de9a46:	4b0b      	ldr	r3, [pc, #44]	@ (c0de9a74 <useCaseReview+0x128>)
c0de9a48:	447b      	add	r3, pc
c0de9a4a:	e7ce      	b.n	c0de99ea <useCaseReview+0x9e>
c0de9a4c:	4b08      	ldr	r3, [pc, #32]	@ (c0de9a70 <useCaseReview+0x124>)
c0de9a4e:	447b      	add	r3, pc
c0de9a50:	e7cb      	b.n	c0de99ea <useCaseReview+0x9e>
c0de9a52:	4b09      	ldr	r3, [pc, #36]	@ (c0de9a78 <useCaseReview+0x12c>)
c0de9a54:	447b      	add	r3, pc
c0de9a56:	e7c8      	b.n	c0de99ea <useCaseReview+0x9e>
c0de9a58:	00000c4c 	.word	0x00000c4c
c0de9a5c:	00000bd0 	.word	0x00000bd0
c0de9a60:	00000918 	.word	0x00000918
c0de9a64:	000009a8 	.word	0x000009a8
c0de9a68:	0000139d 	.word	0x0000139d
c0de9a6c:	00004847 	.word	0x00004847
c0de9a70:	000041d5 	.word	0x000041d5
c0de9a74:	000041aa 	.word	0x000041aa
c0de9a78:	0000468d 	.word	0x0000468d
c0de9a7c:	00003f43 	.word	0x00003f43
c0de9a80:	00003f52 	.word	0x00003f52

c0de9a84 <nbgl_useCaseReviewBlindSigning>:
c0de9a84:	b510      	push	{r4, lr}
c0de9a86:	b086      	sub	sp, #24
c0de9a88:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de9a8a:	9404      	str	r4, [sp, #16]
c0de9a8c:	4c06      	ldr	r4, [pc, #24]	@ (c0de9aa8 <nbgl_useCaseReviewBlindSigning+0x24>)
c0de9a8e:	447c      	add	r4, pc
c0de9a90:	9403      	str	r4, [sp, #12]
c0de9a92:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de9a94:	9402      	str	r4, [sp, #8]
c0de9a96:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de9a98:	9401      	str	r4, [sp, #4]
c0de9a9a:	9c08      	ldr	r4, [sp, #32]
c0de9a9c:	9400      	str	r4, [sp, #0]
c0de9a9e:	f000 f805 	bl	c0de9aac <nbgl_useCaseAdvancedReview>
c0de9aa2:	b006      	add	sp, #24
c0de9aa4:	bd10      	pop	{r4, pc}
c0de9aa6:	bf00      	nop
c0de9aa8:	0000575e 	.word	0x0000575e

c0de9aac <nbgl_useCaseAdvancedReview>:
c0de9aac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9ab0:	b088      	sub	sp, #32
c0de9ab2:	e9cd 2306 	strd	r2, r3, [sp, #24]
c0de9ab6:	4688      	mov	r8, r1
c0de9ab8:	4606      	mov	r6, r0
c0de9aba:	f7fe fef7 	bl	c0de88ac <reset_callbacks_and_context>
c0de9abe:	e9dd ba12 	ldrd	fp, sl, [sp, #72]	@ 0x48
c0de9ac2:	9f14      	ldr	r7, [sp, #80]	@ 0x50
c0de9ac4:	e9dd e410 	ldrd	lr, r4, [sp, #64]	@ 0x40
c0de9ac8:	f1bb 0f00 	cmp.w	fp, #0
c0de9acc:	d008      	beq.n	c0de9ae0 <nbgl_useCaseAdvancedReview+0x34>
c0de9ace:	482b      	ldr	r0, [pc, #172]	@ (c0de9b7c <nbgl_useCaseAdvancedReview+0xd0>)
c0de9ad0:	4659      	mov	r1, fp
c0de9ad2:	2220      	movs	r2, #32
c0de9ad4:	4675      	mov	r5, lr
c0de9ad6:	4448      	add	r0, r9
c0de9ad8:	303c      	adds	r0, #60	@ 0x3c
c0de9ada:	f002 fcc5 	bl	c0dec468 <__aeabi_memcpy>
c0de9ade:	46ae      	mov	lr, r5
c0de9ae0:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
c0de9ae4:	f1ba 0f00 	cmp.w	sl, #0
c0de9ae8:	d039      	beq.n	c0de9b5e <nbgl_useCaseAdvancedReview+0xb2>
c0de9aea:	f8da 0000 	ldr.w	r0, [sl]
c0de9aee:	2808      	cmp	r0, #8
c0de9af0:	d00a      	beq.n	c0de9b08 <nbgl_useCaseAdvancedReview+0x5c>
c0de9af2:	b960      	cbnz	r0, c0de9b0e <nbgl_useCaseAdvancedReview+0x62>
c0de9af4:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de9af8:	b958      	cbnz	r0, c0de9b12 <nbgl_useCaseAdvancedReview+0x66>
c0de9afa:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de9afe:	b940      	cbnz	r0, c0de9b12 <nbgl_useCaseAdvancedReview+0x66>
c0de9b00:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de9b04:	b928      	cbnz	r0, c0de9b12 <nbgl_useCaseAdvancedReview+0x66>
c0de9b06:	e02a      	b.n	c0de9b5e <nbgl_useCaseAdvancedReview+0xb2>
c0de9b08:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de9b0c:	e001      	b.n	c0de9b12 <nbgl_useCaseAdvancedReview+0x66>
c0de9b0e:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de9b12:	481a      	ldr	r0, [pc, #104]	@ (c0de9b7c <nbgl_useCaseAdvancedReview+0xd0>)
c0de9b14:	2500      	movs	r5, #0
c0de9b16:	4448      	add	r0, r9
c0de9b18:	f100 0168 	add.w	r1, r0, #104	@ 0x68
c0de9b1c:	f880 505c 	strb.w	r5, [r0, #92]	@ 0x5c
c0de9b20:	2501      	movs	r5, #1
c0de9b22:	e9c0 6818 	strd	r6, r8, [r0, #96]	@ 0x60
c0de9b26:	e9c0 4a1d 	strd	r4, sl, [r0, #116]	@ 0x74
c0de9b2a:	67c7      	str	r7, [r0, #124]	@ 0x7c
c0de9b2c:	e8a1 400c 	stmia.w	r1!, {r2, r3, lr}
c0de9b30:	f880 508c 	strb.w	r5, [r0, #140]	@ 0x8c
c0de9b34:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de9b38:	b120      	cbz	r0, c0de9b44 <nbgl_useCaseAdvancedReview+0x98>
c0de9b3a:	b008      	add	sp, #32
c0de9b3c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9b40:	f000 b81e 	b.w	c0de9b80 <displayPrelude>
c0de9b44:	f89a 0000 	ldrb.w	r0, [sl]
c0de9b48:	f010 0f16 	tst.w	r0, #22
c0de9b4c:	d102      	bne.n	c0de9b54 <nbgl_useCaseAdvancedReview+0xa8>
c0de9b4e:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de9b52:	b120      	cbz	r0, c0de9b5e <nbgl_useCaseAdvancedReview+0xb2>
c0de9b54:	b008      	add	sp, #32
c0de9b56:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9b5a:	f000 b86d 	b.w	c0de9c38 <displayInitialWarning>
c0de9b5e:	2001      	movs	r0, #1
c0de9b60:	2500      	movs	r5, #0
c0de9b62:	4641      	mov	r1, r8
c0de9b64:	e9cd e400 	strd	lr, r4, [sp]
c0de9b68:	e9cd b702 	strd	fp, r7, [sp, #8]
c0de9b6c:	e9cd 5004 	strd	r5, r0, [sp, #16]
c0de9b70:	4630      	mov	r0, r6
c0de9b72:	f7ff feeb 	bl	c0de994c <useCaseReview>
c0de9b76:	b008      	add	sp, #32
c0de9b78:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de9b7c:	00000918 	.word	0x00000918

c0de9b80 <displayPrelude>:
c0de9b80:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de9b84:	b09a      	sub	sp, #104	@ 0x68
c0de9b86:	4929      	ldr	r1, [pc, #164]	@ (c0de9c2c <displayPrelude+0xac>)
c0de9b88:	2009      	movs	r0, #9
c0de9b8a:	f04f 0c00 	mov.w	ip, #0
c0de9b8e:	f10d 0828 	add.w	r8, sp, #40	@ 0x28
c0de9b92:	f88d 004a 	strb.w	r0, [sp, #74]	@ 0x4a
c0de9b96:	2019      	movs	r0, #25
c0de9b98:	f8cd c044 	str.w	ip, [sp, #68]	@ 0x44
c0de9b9c:	eb09 0501 	add.w	r5, r9, r1
c0de9ba0:	f8ad 0048 	strh.w	r0, [sp, #72]	@ 0x48
c0de9ba4:	6fa9      	ldr	r1, [r5, #120]	@ 0x78
c0de9ba6:	6a89      	ldr	r1, [r1, #40]	@ 0x28
c0de9ba8:	e9d1 2103 	ldrd	r2, r1, [r1, #12]
c0de9bac:	e9cd 210f 	strd	r2, r1, [sp, #60]	@ 0x3c
c0de9bb0:	4642      	mov	r2, r8
c0de9bb2:	491f      	ldr	r1, [pc, #124]	@ (c0de9c30 <displayPrelude+0xb0>)
c0de9bb4:	4479      	add	r1, pc
c0de9bb6:	e891 00d9 	ldmia.w	r1, {r0, r3, r4, r6, r7}
c0de9bba:	c2d9      	stmia	r2!, {r0, r3, r4, r6, r7}
c0de9bbc:	2001      	movs	r0, #1
c0de9bbe:	f885 0089 	strb.w	r0, [r5, #137]	@ 0x89
c0de9bc2:	481c      	ldr	r0, [pc, #112]	@ (c0de9c34 <displayPrelude+0xb4>)
c0de9bc4:	f8cd c05c 	str.w	ip, [sp, #92]	@ 0x5c
c0de9bc8:	f8cd c050 	str.w	ip, [sp, #80]	@ 0x50
c0de9bcc:	4478      	add	r0, pc
c0de9bce:	9016      	str	r0, [sp, #88]	@ 0x58
c0de9bd0:	f44f 7080 	mov.w	r0, #256	@ 0x100
c0de9bd4:	f8ad 004c 	strh.w	r0, [sp, #76]	@ 0x4c
c0de9bd8:	a813      	add	r0, sp, #76	@ 0x4c
c0de9bda:	f7fa f923 	bl	c0de3e24 <nbgl_layoutGet>
c0de9bde:	4641      	mov	r1, r8
c0de9be0:	f8c5 0080 	str.w	r0, [r5, #128]	@ 0x80
c0de9be4:	f7fc fe72 	bl	c0de68cc <nbgl_layoutAddHeader>
c0de9be8:	ac01      	add	r4, sp, #4
c0de9bea:	2124      	movs	r1, #36	@ 0x24
c0de9bec:	4620      	mov	r0, r4
c0de9bee:	f002 fc45 	bl	c0dec47c <__aeabi_memclr>
c0de9bf2:	6fa9      	ldr	r1, [r5, #120]	@ 0x78
c0de9bf4:	f8d5 0080 	ldr.w	r0, [r5, #128]	@ 0x80
c0de9bf8:	6a89      	ldr	r1, [r1, #40]	@ 0x28
c0de9bfa:	e9d1 2300 	ldrd	r2, r3, [r1]
c0de9bfe:	6889      	ldr	r1, [r1, #8]
c0de9c00:	9107      	str	r1, [sp, #28]
c0de9c02:	4621      	mov	r1, r4
c0de9c04:	9202      	str	r2, [sp, #8]
c0de9c06:	9305      	str	r3, [sp, #20]
c0de9c08:	f7fc f9e6 	bl	c0de5fd8 <nbgl_layoutAddContentCenter>
c0de9c0c:	f8d5 0080 	ldr.w	r0, [r5, #128]	@ 0x80
c0de9c10:	a90f      	add	r1, sp, #60	@ 0x3c
c0de9c12:	f7fc fb4f 	bl	c0de62b4 <nbgl_layoutAddChoiceButtons>
c0de9c16:	f001 f93e 	bl	c0deae96 <OUTLINED_FUNCTION_5>
c0de9c1a:	f8d5 0080 	ldr.w	r0, [r5, #128]	@ 0x80
c0de9c1e:	f7fd fb7e 	bl	c0de731e <nbgl_layoutDraw>
c0de9c22:	f001 fed6 	bl	c0deb9d2 <nbgl_refresh>
c0de9c26:	b01a      	add	sp, #104	@ 0x68
c0de9c28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de9c2c:	00000918 	.word	0x00000918
c0de9c30:	00005774 	.word	0x00005774
c0de9c34:	fffffa49 	.word	0xfffffa49

c0de9c38 <displayInitialWarning>:
c0de9c38:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de9c3a:	b099      	sub	sp, #100	@ 0x64
c0de9c3c:	4857      	ldr	r0, [pc, #348]	@ (c0de9d9c <displayInitialWarning+0x164>)
c0de9c3e:	a90e      	add	r1, sp, #56	@ 0x38
c0de9c40:	4478      	add	r0, pc
c0de9c42:	e890 003c 	ldmia.w	r0, {r2, r3, r4, r5}
c0de9c46:	c13c      	stmia	r1!, {r2, r3, r4, r5}
c0de9c48:	4855      	ldr	r0, [pc, #340]	@ (c0de9da0 <displayInitialWarning+0x168>)
c0de9c4a:	ac09      	add	r4, sp, #36	@ 0x24
c0de9c4c:	4621      	mov	r1, r4
c0de9c4e:	4478      	add	r0, pc
c0de9c50:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de9c54:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de9c56:	4d4f      	ldr	r5, [pc, #316]	@ (c0de9d94 <displayInitialWarning+0x15c>)
c0de9c58:	eb09 0705 	add.w	r7, r9, r5
c0de9c5c:	6fb8      	ldr	r0, [r7, #120]	@ 0x78
c0de9c5e:	6806      	ldr	r6, [r0, #0]
c0de9c60:	2001      	movs	r0, #1
c0de9c62:	f887 0089 	strb.w	r0, [r7, #137]	@ 0x89
c0de9c66:	484f      	ldr	r0, [pc, #316]	@ (c0de9da4 <displayInitialWarning+0x16c>)
c0de9c68:	4478      	add	r0, pc
c0de9c6a:	9015      	str	r0, [sp, #84]	@ 0x54
c0de9c6c:	f44f 7080 	mov.w	r0, #256	@ 0x100
c0de9c70:	f8ad 0048 	strh.w	r0, [sp, #72]	@ 0x48
c0de9c74:	2000      	movs	r0, #0
c0de9c76:	9016      	str	r0, [sp, #88]	@ 0x58
c0de9c78:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de9c7a:	a812      	add	r0, sp, #72	@ 0x48
c0de9c7c:	f7fa f8d2 	bl	c0de3e24 <nbgl_layoutGet>
c0de9c80:	4621      	mov	r1, r4
c0de9c82:	f8c7 0080 	str.w	r0, [r7, #128]	@ 0x80
c0de9c86:	f7fc fe21 	bl	c0de68cc <nbgl_layoutAddHeader>
c0de9c8a:	6fb8      	ldr	r0, [r7, #120]	@ 0x78
c0de9c8c:	f026 0409 	bic.w	r4, r6, #9
c0de9c90:	6801      	ldr	r1, [r0, #0]
c0de9c92:	b139      	cbz	r1, c0de9ca4 <displayInitialWarning+0x6c>
c0de9c94:	4844      	ldr	r0, [pc, #272]	@ (c0de9da8 <displayInitialWarning+0x170>)
c0de9c96:	4945      	ldr	r1, [pc, #276]	@ (c0de9dac <displayInitialWarning+0x174>)
c0de9c98:	2c10      	cmp	r4, #16
c0de9c9a:	4479      	add	r1, pc
c0de9c9c:	4478      	add	r0, pc
c0de9c9e:	bf08      	it	eq
c0de9ca0:	4601      	moveq	r1, r0
c0de9ca2:	e001      	b.n	c0de9ca8 <displayInitialWarning+0x70>
c0de9ca4:	6a01      	ldr	r1, [r0, #32]
c0de9ca6:	b139      	cbz	r1, c0de9cb8 <displayInitialWarning+0x80>
c0de9ca8:	eb09 0005 	add.w	r0, r9, r5
c0de9cac:	2211      	movs	r2, #17
c0de9cae:	2309      	movs	r3, #9
c0de9cb0:	f8d0 0080 	ldr.w	r0, [r0, #128]	@ 0x80
c0de9cb4:	f7fa fe7a 	bl	c0de49ac <nbgl_layoutAddTopRightButton>
c0de9cb8:	eb09 0005 	add.w	r0, r9, r5
c0de9cbc:	6f87      	ldr	r7, [r0, #120]	@ 0x78
c0de9cbe:	6838      	ldr	r0, [r7, #0]
c0de9cc0:	b188      	cbz	r0, c0de9ce6 <displayInitialWarning+0xae>
c0de9cc2:	4668      	mov	r0, sp
c0de9cc4:	2124      	movs	r1, #36	@ 0x24
c0de9cc6:	f002 fbd9 	bl	c0dec47c <__aeabi_memclr>
c0de9cca:	4839      	ldr	r0, [pc, #228]	@ (c0de9db0 <displayInitialWarning+0x178>)
c0de9ccc:	2c10      	cmp	r4, #16
c0de9cce:	4478      	add	r0, pc
c0de9cd0:	9001      	str	r0, [sp, #4]
c0de9cd2:	d110      	bne.n	c0de9cf6 <displayInitialWarning+0xbe>
c0de9cd4:	483f      	ldr	r0, [pc, #252]	@ (c0de9dd4 <displayInitialWarning+0x19c>)
c0de9cd6:	2405      	movs	r4, #5
c0de9cd8:	4478      	add	r0, pc
c0de9cda:	9004      	str	r0, [sp, #16]
c0de9cdc:	493e      	ldr	r1, [pc, #248]	@ (c0de9dd8 <displayInitialWarning+0x1a0>)
c0de9cde:	483f      	ldr	r0, [pc, #252]	@ (c0de9ddc <displayInitialWarning+0x1a4>)
c0de9ce0:	4479      	add	r1, pc
c0de9ce2:	4478      	add	r0, pc
c0de9ce4:	e03c      	b.n	c0de9d60 <displayInitialWarning+0x128>
c0de9ce6:	69f9      	ldr	r1, [r7, #28]
c0de9ce8:	b349      	cbz	r1, c0de9d3e <displayInitialWarning+0x106>
c0de9cea:	f001 f8e8 	bl	c0deaebe <OUTLINED_FUNCTION_10>
c0de9cee:	f7fc f973 	bl	c0de5fd8 <nbgl_layoutAddContentCenter>
c0de9cf2:	2408      	movs	r4, #8
c0de9cf4:	e03d      	b.n	c0de9d72 <displayInitialWarning+0x13a>
c0de9cf6:	4828      	ldr	r0, [pc, #160]	@ (c0de9d98 <displayInitialWarning+0x160>)
c0de9cf8:	4448      	add	r0, r9
c0de9cfa:	9005      	str	r0, [sp, #20]
c0de9cfc:	68f9      	ldr	r1, [r7, #12]
c0de9cfe:	4b2d      	ldr	r3, [pc, #180]	@ (c0de9db4 <displayInitialWarning+0x17c>)
c0de9d00:	447b      	add	r3, pc
c0de9d02:	2900      	cmp	r1, #0
c0de9d04:	bf18      	it	ne
c0de9d06:	460b      	movne	r3, r1
c0de9d08:	4a2b      	ldr	r2, [pc, #172]	@ (c0de9db8 <displayInitialWarning+0x180>)
c0de9d0a:	2180      	movs	r1, #128	@ 0x80
c0de9d0c:	447a      	add	r2, pc
c0de9d0e:	f001 fef7 	bl	c0debb00 <snprintf>
c0de9d12:	07b0      	lsls	r0, r6, #30
c0de9d14:	d403      	bmi.n	c0de9d1e <displayInitialWarning+0xe6>
c0de9d16:	0770      	lsls	r0, r6, #29
c0de9d18:	d413      	bmi.n	c0de9d42 <displayInitialWarning+0x10a>
c0de9d1a:	2400      	movs	r4, #0
c0de9d1c:	e022      	b.n	c0de9d64 <displayInitialWarning+0x12c>
c0de9d1e:	4827      	ldr	r0, [pc, #156]	@ (c0de9dbc <displayInitialWarning+0x184>)
c0de9d20:	4478      	add	r0, pc
c0de9d22:	9004      	str	r0, [sp, #16]
c0de9d24:	eb09 0005 	add.w	r0, r9, r5
c0de9d28:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0de9d2a:	6901      	ldr	r1, [r0, #16]
c0de9d2c:	4824      	ldr	r0, [pc, #144]	@ (c0de9dc0 <displayInitialWarning+0x188>)
c0de9d2e:	4478      	add	r0, pc
c0de9d30:	2900      	cmp	r1, #0
c0de9d32:	bf18      	it	ne
c0de9d34:	4608      	movne	r0, r1
c0de9d36:	4923      	ldr	r1, [pc, #140]	@ (c0de9dc4 <displayInitialWarning+0x18c>)
c0de9d38:	2405      	movs	r4, #5
c0de9d3a:	4479      	add	r1, pc
c0de9d3c:	e010      	b.n	c0de9d60 <displayInitialWarning+0x128>
c0de9d3e:	2400      	movs	r4, #0
c0de9d40:	e017      	b.n	c0de9d72 <displayInitialWarning+0x13a>
c0de9d42:	4821      	ldr	r0, [pc, #132]	@ (c0de9dc8 <displayInitialWarning+0x190>)
c0de9d44:	4478      	add	r0, pc
c0de9d46:	9004      	str	r0, [sp, #16]
c0de9d48:	eb09 0005 	add.w	r0, r9, r5
c0de9d4c:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0de9d4e:	6901      	ldr	r1, [r0, #16]
c0de9d50:	481e      	ldr	r0, [pc, #120]	@ (c0de9dcc <displayInitialWarning+0x194>)
c0de9d52:	4478      	add	r0, pc
c0de9d54:	2900      	cmp	r1, #0
c0de9d56:	bf18      	it	ne
c0de9d58:	4608      	movne	r0, r1
c0de9d5a:	491d      	ldr	r1, [pc, #116]	@ (c0de9dd0 <displayInitialWarning+0x198>)
c0de9d5c:	2404      	movs	r4, #4
c0de9d5e:	4479      	add	r1, pc
c0de9d60:	910f      	str	r1, [sp, #60]	@ 0x3c
c0de9d62:	9006      	str	r0, [sp, #24]
c0de9d64:	eb09 0005 	add.w	r0, r9, r5
c0de9d68:	4669      	mov	r1, sp
c0de9d6a:	f8d0 0080 	ldr.w	r0, [r0, #128]	@ 0x80
c0de9d6e:	f7fc f933 	bl	c0de5fd8 <nbgl_layoutAddContentCenter>
c0de9d72:	f001 f8a4 	bl	c0deaebe <OUTLINED_FUNCTION_10>
c0de9d76:	a90e      	add	r1, sp, #56	@ 0x38
c0de9d78:	f7fc fa9c 	bl	c0de62b4 <nbgl_layoutAddChoiceButtons>
c0de9d7c:	b114      	cbz	r4, c0de9d84 <displayInitialWarning+0x14c>
c0de9d7e:	4620      	mov	r0, r4
c0de9d80:	f7f9 fe49 	bl	c0de3a16 <os_io_seph_cmd_piezo_play_tune>
c0de9d84:	f001 f89b 	bl	c0deaebe <OUTLINED_FUNCTION_10>
c0de9d88:	f7fd fac9 	bl	c0de731e <nbgl_layoutDraw>
c0de9d8c:	f001 fe21 	bl	c0deb9d2 <nbgl_refresh>
c0de9d90:	b019      	add	sp, #100	@ 0x64
c0de9d92:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de9d94:	00000918 	.word	0x00000918
c0de9d98:	00000a50 	.word	0x00000a50
c0de9d9c:	000056d8 	.word	0x000056d8
c0de9da0:	000056da 	.word	0x000056da
c0de9da4:	fffff9ad 	.word	0xfffff9ad
c0de9da8:	0000365a 	.word	0x0000365a
c0de9dac:	000039a5 	.word	0x000039a5
c0de9db0:	000032d1 	.word	0x000032d1
c0de9db4:	000040e3 	.word	0x000040e3
c0de9db8:	000043fd 	.word	0x000043fd
c0de9dbc:	0000445b 	.word	0x0000445b
c0de9dc0:	00003d4c 	.word	0x00003d4c
c0de9dc4:	000040fd 	.word	0x000040fd
c0de9dc8:	000040e3 	.word	0x000040e3
c0de9dcc:	000040c1 	.word	0x000040c1
c0de9dd0:	00003f9d 	.word	0x00003f9d
c0de9dd4:	00004289 	.word	0x00004289
c0de9dd8:	000044e8 	.word	0x000044e8
c0de9ddc:	0000416e 	.word	0x0000416e

c0de9de0 <useCaseReviewStreamingStart>:
c0de9de0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9de4:	4604      	mov	r4, r0
c0de9de6:	4827      	ldr	r0, [pc, #156]	@ (c0de9e84 <useCaseReviewStreamingStart+0xa4>)
c0de9de8:	460d      	mov	r5, r1
c0de9dea:	4927      	ldr	r1, [pc, #156]	@ (c0de9e88 <useCaseReviewStreamingStart+0xa8>)
c0de9dec:	e9cd 3200 	strd	r3, r2, [sp]
c0de9df0:	2203      	movs	r2, #3
c0de9df2:	f8df b09c 	ldr.w	fp, [pc, #156]	@ c0de9e90 <useCaseReviewStreamingStart+0xb0>
c0de9df6:	f04f 0a01 	mov.w	sl, #1
c0de9dfa:	eb09 0800 	add.w	r8, r9, r0
c0de9dfe:	f849 4000 	str.w	r4, [r9, r0]
c0de9e02:	f809 2001 	strb.w	r2, [r9, r1]
c0de9e06:	eb09 0701 	add.w	r7, r9, r1
c0de9e0a:	eb09 060b 	add.w	r6, r9, fp
c0de9e0e:	2138      	movs	r1, #56	@ 0x38
c0de9e10:	f8c8 500c 	str.w	r5, [r8, #12]
c0de9e14:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de9e16:	f8c8 0004 	str.w	r0, [r8, #4]
c0de9e1a:	481e      	ldr	r0, [pc, #120]	@ (c0de9e94 <useCaseReviewStreamingStart+0xb4>)
c0de9e1c:	4478      	add	r0, pc
c0de9e1e:	61b8      	str	r0, [r7, #24]
c0de9e20:	2000      	movs	r0, #0
c0de9e22:	6138      	str	r0, [r7, #16]
c0de9e24:	4819      	ldr	r0, [pc, #100]	@ (c0de9e8c <useCaseReviewStreamingStart+0xac>)
c0de9e26:	4448      	add	r0, r9
c0de9e28:	f880 a00c 	strb.w	sl, [r0, #12]
c0de9e2c:	6086      	str	r6, [r0, #8]
c0de9e2e:	f001 f864 	bl	c0deaefa <OUTLINED_FUNCTION_17>
c0de9e32:	2100      	movs	r1, #0
c0de9e34:	f809 a00b 	strb.w	sl, [r9, fp]
c0de9e38:	84b1      	strh	r1, [r6, #36]	@ 0x24
c0de9e3a:	4817      	ldr	r0, [pc, #92]	@ (c0de9e98 <useCaseReviewStreamingStart+0xb8>)
c0de9e3c:	9a00      	ldr	r2, [sp, #0]
c0de9e3e:	60b5      	str	r5, [r6, #8]
c0de9e40:	7131      	strb	r1, [r6, #4]
c0de9e42:	2500      	movs	r5, #0
c0de9e44:	4478      	add	r0, pc
c0de9e46:	e9c6 2007 	strd	r2, r0, [r6, #28]
c0de9e4a:	9801      	ldr	r0, [sp, #4]
c0de9e4c:	6170      	str	r0, [r6, #20]
c0de9e4e:	2000      	movs	r0, #0
c0de9e50:	f000 ff76 	bl	c0dead40 <initWarningTipBox>
c0de9e54:	f3c4 1000 	ubfx	r0, r4, #4, #1
c0de9e58:	f7fe fe06 	bl	c0de8a68 <getNbPagesForGenericContents>
c0de9e5c:	f888 0010 	strb.w	r0, [r8, #16]
c0de9e60:	2001      	movs	r0, #1
c0de9e62:	21ff      	movs	r1, #255	@ 0xff
c0de9e64:	4a0d      	ldr	r2, [pc, #52]	@ (c0de9e9c <useCaseReviewStreamingStart+0xbc>)
c0de9e66:	447a      	add	r2, pc
c0de9e68:	f7fe fd36 	bl	c0de88d8 <prepareNavInfo>
c0de9e6c:	f887 5071 	strb.w	r5, [r7, #113]	@ 0x71
c0de9e70:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de9e72:	b108      	cbz	r0, c0de9e78 <useCaseReviewStreamingStart+0x98>
c0de9e74:	f001 f80f 	bl	c0deae96 <OUTLINED_FUNCTION_5>
c0de9e78:	2000      	movs	r0, #0
c0de9e7a:	2101      	movs	r1, #1
c0de9e7c:	e8bd 4dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9e80:	f7fe beac 	b.w	c0de8bdc <displayGenericContextPage>
c0de9e84:	00000c4c 	.word	0x00000c4c
c0de9e88:	00000bd0 	.word	0x00000bd0
c0de9e8c:	00000918 	.word	0x00000918
c0de9e90:	000009a8 	.word	0x000009a8
c0de9e94:	00000081 	.word	0x00000081
c0de9e98:	000043a5 	.word	0x000043a5
c0de9e9c:	00003b10 	.word	0x00003b10

c0de9ea0 <bundleNavReviewStreamingChoice>:
c0de9ea0:	b110      	cbz	r0, c0de9ea8 <bundleNavReviewStreamingChoice+0x8>
c0de9ea2:	4805      	ldr	r0, [pc, #20]	@ (c0de9eb8 <bundleNavReviewStreamingChoice+0x18>)
c0de9ea4:	f001 b81b 	b.w	c0deaede <OUTLINED_FUNCTION_13>
c0de9ea8:	4803      	ldr	r0, [pc, #12]	@ (c0de9eb8 <bundleNavReviewStreamingChoice+0x18>)
c0de9eaa:	f859 0000 	ldr.w	r0, [r9, r0]
c0de9eae:	4903      	ldr	r1, [pc, #12]	@ (c0de9ebc <bundleNavReviewStreamingChoice+0x1c>)
c0de9eb0:	4479      	add	r1, pc
c0de9eb2:	f000 bfa3 	b.w	c0deadfc <bundleNavReviewAskRejectionConfirmation>
c0de9eb6:	bf00      	nop
c0de9eb8:	00000c4c 	.word	0x00000c4c
c0de9ebc:	00000fa9 	.word	0x00000fa9

c0de9ec0 <prepareReviewLastPage>:
c0de9ec0:	b13b      	cbz	r3, c0de9ed2 <prepareReviewLastPage+0x12>
c0de9ec2:	200b      	movs	r0, #11
c0de9ec4:	7308      	strb	r0, [r1, #12]
c0de9ec6:	480d      	ldr	r0, [pc, #52]	@ (c0de9efc <prepareReviewLastPage+0x3c>)
c0de9ec8:	e9c1 3200 	strd	r3, r2, [r1]
c0de9ecc:	4478      	add	r0, pc
c0de9ece:	6088      	str	r0, [r1, #8]
c0de9ed0:	4770      	bx	lr
c0de9ed2:	f010 0007 	ands.w	r0, r0, #7
c0de9ed6:	d004      	beq.n	c0de9ee2 <prepareReviewLastPage+0x22>
c0de9ed8:	2801      	cmp	r0, #1
c0de9eda:	d105      	bne.n	c0de9ee8 <prepareReviewLastPage+0x28>
c0de9edc:	4b05      	ldr	r3, [pc, #20]	@ (c0de9ef4 <prepareReviewLastPage+0x34>)
c0de9ede:	447b      	add	r3, pc
c0de9ee0:	e7ef      	b.n	c0de9ec2 <prepareReviewLastPage+0x2>
c0de9ee2:	4b03      	ldr	r3, [pc, #12]	@ (c0de9ef0 <prepareReviewLastPage+0x30>)
c0de9ee4:	447b      	add	r3, pc
c0de9ee6:	e7ec      	b.n	c0de9ec2 <prepareReviewLastPage+0x2>
c0de9ee8:	4b03      	ldr	r3, [pc, #12]	@ (c0de9ef8 <prepareReviewLastPage+0x38>)
c0de9eea:	447b      	add	r3, pc
c0de9eec:	e7e9      	b.n	c0de9ec2 <prepareReviewLastPage+0x2>
c0de9eee:	bf00      	nop
c0de9ef0:	00003d3f 	.word	0x00003d3f
c0de9ef4:	00003d14 	.word	0x00003d14
c0de9ef8:	000041f7 	.word	0x000041f7
c0de9efc:	00003a8a 	.word	0x00003a8a

c0de9f00 <prepareAddressConfirmationPages>:
c0de9f00:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9f04:	b08a      	sub	sp, #40	@ 0x28
c0de9f06:	4688      	mov	r8, r1
c0de9f08:	4952      	ldr	r1, [pc, #328]	@ (c0dea054 <prepareAddressConfirmationPages+0x154>)
c0de9f0a:	f8df a144 	ldr.w	sl, [pc, #324]	@ c0dea050 <prepareAddressConfirmationPages+0x150>
c0de9f0e:	4693      	mov	fp, r2
c0de9f10:	4479      	add	r1, pc
c0de9f12:	6191      	str	r1, [r2, #24]
c0de9f14:	2106      	movs	r1, #6
c0de9f16:	7011      	strb	r1, [r2, #0]
c0de9f18:	2201      	movs	r2, #1
c0de9f1a:	eb09 010a 	add.w	r1, r9, sl
c0de9f1e:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de9f22:	f1b8 0f00 	cmp.w	r8, #0
c0de9f26:	4a4c      	ldr	r2, [pc, #304]	@ (c0dea058 <prepareAddressConfirmationPages+0x158>)
c0de9f28:	447a      	add	r2, pc
c0de9f2a:	e9c1 200a 	strd	r2, r0, [r1, #40]	@ 0x28
c0de9f2e:	d01f      	beq.n	c0de9f70 <prepareAddressConfirmationPages+0x70>
c0de9f30:	f898 2008 	ldrb.w	r2, [r8, #8]
c0de9f34:	2a02      	cmp	r2, #2
c0de9f36:	d81b      	bhi.n	c0de9f70 <prepareAddressConfirmationPages+0x70>
c0de9f38:	2001      	movs	r0, #1
c0de9f3a:	2100      	movs	r1, #0
c0de9f3c:	f04f 0c00 	mov.w	ip, #0
c0de9f40:	9303      	str	r3, [sp, #12]
c0de9f42:	4594      	cmp	ip, r2
c0de9f44:	d219      	bcs.n	c0de9f7a <prepareAddressConfirmationPages+0x7a>
c0de9f46:	f8d8 0000 	ldr.w	r0, [r8]
c0de9f4a:	eb09 030a 	add.w	r3, r9, sl
c0de9f4e:	f10c 0c01 	add.w	ip, ip, #1
c0de9f52:	185c      	adds	r4, r3, r1
c0de9f54:	4408      	add	r0, r1
c0de9f56:	3438      	adds	r4, #56	@ 0x38
c0de9f58:	3110      	adds	r1, #16
c0de9f5a:	e890 00e4 	ldmia.w	r0, {r2, r5, r6, r7}
c0de9f5e:	c4e4      	stmia	r4!, {r2, r5, r6, r7}
c0de9f60:	f893 005c 	ldrb.w	r0, [r3, #92]	@ 0x5c
c0de9f64:	3001      	adds	r0, #1
c0de9f66:	f883 005c 	strb.w	r0, [r3, #92]	@ 0x5c
c0de9f6a:	f898 2008 	ldrb.w	r2, [r8, #8]
c0de9f6e:	e7e8      	b.n	c0de9f42 <prepareAddressConfirmationPages+0x42>
c0de9f70:	2000      	movs	r0, #0
c0de9f72:	f8cb 001c 	str.w	r0, [fp, #28]
c0de9f76:	2001      	movs	r0, #1
c0de9f78:	e01e      	b.n	c0de9fb8 <prepareAddressConfirmationPages+0xb8>
c0de9f7a:	46c4      	mov	ip, r8
c0de9f7c:	a905      	add	r1, sp, #20
c0de9f7e:	e89c 00f4 	ldmia.w	ip, {r2, r4, r5, r6, r7}
c0de9f82:	460b      	mov	r3, r1
c0de9f84:	c3f4      	stmia	r3!, {r2, r4, r5, r6, r7}
c0de9f86:	eb09 040a 	add.w	r4, r9, sl
c0de9f8a:	b2c7      	uxtb	r7, r0
c0de9f8c:	f88d 001c 	strb.w	r0, [sp, #28]
c0de9f90:	f104 0228 	add.w	r2, r4, #40	@ 0x28
c0de9f94:	2301      	movs	r3, #1
c0de9f96:	4638      	mov	r0, r7
c0de9f98:	9205      	str	r2, [sp, #20]
c0de9f9a:	f10d 0213 	add.w	r2, sp, #19
c0de9f9e:	e9cd 3300 	strd	r3, r3, [sp]
c0de9fa2:	2300      	movs	r3, #0
c0de9fa4:	9202      	str	r2, [sp, #8]
c0de9fa6:	2200      	movs	r2, #0
c0de9fa8:	f7fe fa9c 	bl	c0de84e4 <getNbTagValuesInPage>
c0de9fac:	4287      	cmp	r7, r0
c0de9fae:	bf88      	it	hi
c0de9fb0:	2001      	movhi	r0, #1
c0de9fb2:	9b03      	ldr	r3, [sp, #12]
c0de9fb4:	f884 005c 	strb.w	r0, [r4, #92]	@ 0x5c
c0de9fb8:	f640 1107 	movw	r1, #2311	@ 0x907
c0de9fbc:	f88b 000c 	strb.w	r0, [fp, #12]
c0de9fc0:	f8ab 1020 	strh.w	r1, [fp, #32]
c0de9fc4:	2100      	movs	r1, #0
c0de9fc6:	f88b 1011 	strb.w	r1, [fp, #17]
c0de9fca:	f88b 1012 	strb.w	r1, [fp, #18]
c0de9fce:	f88b 100f 	strb.w	r1, [fp, #15]
c0de9fd2:	eb09 010a 	add.w	r1, r9, sl
c0de9fd6:	3128      	adds	r1, #40	@ 0x28
c0de9fd8:	f1b8 0f00 	cmp.w	r8, #0
c0de9fdc:	f8cb 1004 	str.w	r1, [fp, #4]
c0de9fe0:	d003      	beq.n	c0de9fea <prepareAddressConfirmationPages+0xea>
c0de9fe2:	f898 1008 	ldrb.w	r1, [r8, #8]
c0de9fe6:	4288      	cmp	r0, r1
c0de9fe8:	d907      	bls.n	c0de9ffa <prepareAddressConfirmationPages+0xfa>
c0de9fea:	200b      	movs	r0, #11
c0de9fec:	f88b 002c 	strb.w	r0, [fp, #44]	@ 0x2c
c0de9ff0:	481c      	ldr	r0, [pc, #112]	@ (c0dea064 <prepareAddressConfirmationPages+0x164>)
c0de9ff2:	4478      	add	r0, pc
c0de9ff4:	f8cb 0024 	str.w	r0, [fp, #36]	@ 0x24
c0de9ff8:	e027      	b.n	c0dea04a <prepareAddressConfirmationPages+0x14a>
c0de9ffa:	2000      	movs	r0, #0
c0de9ffc:	f8cb 0024 	str.w	r0, [fp, #36]	@ 0x24
c0dea000:	4916      	ldr	r1, [pc, #88]	@ (c0dea05c <prepareAddressConfirmationPages+0x15c>)
c0dea002:	4479      	add	r1, pc
c0dea004:	f8cb 101c 	str.w	r1, [fp, #28]
c0dea008:	210b      	movs	r1, #11
c0dea00a:	f883 102c 	strb.w	r1, [r3, #44]	@ 0x2c
c0dea00e:	2106      	movs	r1, #6
c0dea010:	7019      	strb	r1, [r3, #0]
c0dea012:	2109      	movs	r1, #9
c0dea014:	f883 1021 	strb.w	r1, [r3, #33]	@ 0x21
c0dea018:	4911      	ldr	r1, [pc, #68]	@ (c0dea060 <prepareAddressConfirmationPages+0x160>)
c0dea01a:	e9c3 0006 	strd	r0, r0, [r3, #24]
c0dea01e:	1d18      	adds	r0, r3, #4
c0dea020:	4479      	add	r1, pc
c0dea022:	6259      	str	r1, [r3, #36]	@ 0x24
c0dea024:	4641      	mov	r1, r8
c0dea026:	e891 00f4 	ldmia.w	r1, {r2, r4, r5, r6, r7}
c0dea02a:	c0f4      	stmia	r0!, {r2, r4, r5, r6, r7}
c0dea02c:	eb09 000a 	add.w	r0, r9, sl
c0dea030:	f898 1008 	ldrb.w	r1, [r8, #8]
c0dea034:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0dea038:	1a09      	subs	r1, r1, r0
c0dea03a:	3101      	adds	r1, #1
c0dea03c:	7319      	strb	r1, [r3, #12]
c0dea03e:	f8d8 1000 	ldr.w	r1, [r8]
c0dea042:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0dea046:	3810      	subs	r0, #16
c0dea048:	6058      	str	r0, [r3, #4]
c0dea04a:	b00a      	add	sp, #40	@ 0x28
c0dea04c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea050:	00000c4c 	.word	0x00000c4c
c0dea054:	0000372f 	.word	0x0000372f
c0dea058:	00004138 	.word	0x00004138
c0dea05c:	00003a8a 	.word	0x00003a8a
c0dea060:	00004261 	.word	0x00004261
c0dea064:	0000428f 	.word	0x0000428f

c0dea068 <nbgl_useCaseAddressReview>:
c0dea068:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0dea06c:	4c2d      	ldr	r4, [pc, #180]	@ (c0dea124 <nbgl_useCaseAddressReview+0xbc>)
c0dea06e:	9301      	str	r3, [sp, #4]
c0dea070:	4692      	mov	sl, r2
c0dea072:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0dea076:	eb09 0504 	add.w	r5, r9, r4
c0dea07a:	f7fe fc17 	bl	c0de88ac <reset_callbacks_and_context>
c0dea07e:	6da8      	ldr	r0, [r5, #88]	@ 0x58
c0dea080:	e9dd 570c 	ldrd	r5, r7, [sp, #48]	@ 0x30
c0dea084:	b108      	cbz	r0, c0dea08a <nbgl_useCaseAddressReview+0x22>
c0dea086:	f7fd f969 	bl	c0de735c <nbgl_layoutRelease>
c0dea08a:	eb09 0004 	add.w	r0, r9, r4
c0dea08e:	2138      	movs	r1, #56	@ 0x38
c0dea090:	3028      	adds	r0, #40	@ 0x28
c0dea092:	f002 f9f3 	bl	c0dec47c <__aeabi_memclr>
c0dea096:	4824      	ldr	r0, [pc, #144]	@ (c0dea128 <nbgl_useCaseAddressReview+0xc0>)
c0dea098:	2602      	movs	r6, #2
c0dea09a:	f04f 0b00 	mov.w	fp, #0
c0dea09e:	21a8      	movs	r1, #168	@ 0xa8
c0dea0a0:	f849 6004 	str.w	r6, [r9, r4]
c0dea0a4:	f809 6000 	strb.w	r6, [r9, r0]
c0dea0a8:	4448      	add	r0, r9
c0dea0aa:	6187      	str	r7, [r0, #24]
c0dea0ac:	4f20      	ldr	r7, [pc, #128]	@ (c0dea130 <nbgl_useCaseAddressReview+0xc8>)
c0dea0ae:	f8c0 b010 	str.w	fp, [r0, #16]
c0dea0b2:	481e      	ldr	r0, [pc, #120]	@ (c0dea12c <nbgl_useCaseAddressReview+0xc4>)
c0dea0b4:	eb09 0407 	add.w	r4, r9, r7
c0dea0b8:	eb09 0800 	add.w	r8, r9, r0
c0dea0bc:	4620      	mov	r0, r4
c0dea0be:	f8c8 4008 	str.w	r4, [r8, #8]
c0dea0c2:	f002 f9db 	bl	c0dec47c <__aeabi_memclr>
c0dea0c6:	2001      	movs	r0, #1
c0dea0c8:	f8c4 a008 	str.w	sl, [r4, #8]
c0dea0cc:	f884 b026 	strb.w	fp, [r4, #38]	@ 0x26
c0dea0d0:	f104 0238 	add.w	r2, r4, #56	@ 0x38
c0dea0d4:	f104 0370 	add.w	r3, r4, #112	@ 0x70
c0dea0d8:	f809 0007 	strb.w	r0, [r9, r7]
c0dea0dc:	4815      	ldr	r0, [pc, #84]	@ (c0dea134 <nbgl_useCaseAddressReview+0xcc>)
c0dea0de:	9901      	ldr	r1, [sp, #4]
c0dea0e0:	4478      	add	r0, pc
c0dea0e2:	e9c4 1b05 	strd	r1, fp, [r4, #20]
c0dea0e6:	e9c4 5007 	strd	r5, r0, [r4, #28]
c0dea0ea:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0dea0ee:	f7ff ff07 	bl	c0de9f00 <prepareAddressConfirmationPages>
c0dea0f2:	f894 0070 	ldrb.w	r0, [r4, #112]	@ 0x70
c0dea0f6:	2806      	cmp	r0, #6
c0dea0f8:	bf08      	it	eq
c0dea0fa:	2603      	moveq	r6, #3
c0dea0fc:	f888 600c 	strb.w	r6, [r8, #12]
c0dea100:	f000 fec6 	bl	c0deae90 <OUTLINED_FUNCTION_4>
c0dea104:	4a0c      	ldr	r2, [pc, #48]	@ (c0dea138 <nbgl_useCaseAddressReview+0xd0>)
c0dea106:	4601      	mov	r1, r0
c0dea108:	2001      	movs	r0, #1
c0dea10a:	447a      	add	r2, pc
c0dea10c:	f7fe fbe4 	bl	c0de88d8 <prepareNavInfo>
c0dea110:	f000 fec1 	bl	c0deae96 <OUTLINED_FUNCTION_5>
c0dea114:	2000      	movs	r0, #0
c0dea116:	2101      	movs	r1, #1
c0dea118:	b004      	add	sp, #16
c0dea11a:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea11e:	f7fe bd5d 	b.w	c0de8bdc <displayGenericContextPage>
c0dea122:	bf00      	nop
c0dea124:	00000c4c 	.word	0x00000c4c
c0dea128:	00000bd0 	.word	0x00000bd0
c0dea12c:	00000918 	.word	0x00000918
c0dea130:	000009a8 	.word	0x000009a8
c0dea134:	00003a14 	.word	0x00003a14
c0dea138:	00003c6b 	.word	0x00003c6b

c0dea13c <nbgl_useCaseSpinner>:
c0dea13c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0dea13e:	b087      	sub	sp, #28
c0dea140:	4e1f      	ldr	r6, [pc, #124]	@ (c0dea1c0 <nbgl_useCaseSpinner+0x84>)
c0dea142:	4604      	mov	r4, r0
c0dea144:	f819 0006 	ldrb.w	r0, [r9, r6]
c0dea148:	2801      	cmp	r0, #1
c0dea14a:	d114      	bne.n	c0dea176 <nbgl_useCaseSpinner+0x3a>
c0dea14c:	eb09 0006 	add.w	r0, r9, r6
c0dea150:	7841      	ldrb	r1, [r0, #1]
c0dea152:	3101      	adds	r1, #1
c0dea154:	b2ca      	uxtb	r2, r1
c0dea156:	3a04      	subs	r2, #4
c0dea158:	bf18      	it	ne
c0dea15a:	460a      	movne	r2, r1
c0dea15c:	7042      	strb	r2, [r0, #1]
c0dea15e:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0dea160:	b2d3      	uxtb	r3, r2
c0dea162:	4621      	mov	r1, r4
c0dea164:	2200      	movs	r2, #0
c0dea166:	f7fd f837 	bl	c0de71d8 <nbgl_layoutUpdateSpinner>
c0dea16a:	2802      	cmp	r0, #2
c0dea16c:	d022      	beq.n	c0dea1b4 <nbgl_useCaseSpinner+0x78>
c0dea16e:	2801      	cmp	r0, #1
c0dea170:	d11e      	bne.n	c0dea1b0 <nbgl_useCaseSpinner+0x74>
c0dea172:	2004      	movs	r0, #4
c0dea174:	e01f      	b.n	c0dea1b6 <nbgl_useCaseSpinner+0x7a>
c0dea176:	eb09 0506 	add.w	r5, r9, r6
c0dea17a:	2190      	movs	r1, #144	@ 0x90
c0dea17c:	4628      	mov	r0, r5
c0dea17e:	f002 f97d 	bl	c0dec47c <__aeabi_memclr>
c0dea182:	2701      	movs	r7, #1
c0dea184:	211c      	movs	r1, #28
c0dea186:	f809 7006 	strb.w	r7, [r9, r6]
c0dea18a:	466e      	mov	r6, sp
c0dea18c:	f000 feb5 	bl	c0deaefa <OUTLINED_FUNCTION_17>
c0dea190:	4630      	mov	r0, r6
c0dea192:	f88d 7001 	strb.w	r7, [sp, #1]
c0dea196:	f7f9 fe45 	bl	c0de3e24 <nbgl_layoutGet>
c0dea19a:	786b      	ldrb	r3, [r5, #1]
c0dea19c:	4621      	mov	r1, r4
c0dea19e:	2200      	movs	r2, #0
c0dea1a0:	6328      	str	r0, [r5, #48]	@ 0x30
c0dea1a2:	f7fc feb1 	bl	c0de6f08 <nbgl_layoutAddSpinner>
c0dea1a6:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0dea1a8:	f7fd f8b9 	bl	c0de731e <nbgl_layoutDraw>
c0dea1ac:	f000 fe6d 	bl	c0deae8a <OUTLINED_FUNCTION_3>
c0dea1b0:	b007      	add	sp, #28
c0dea1b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0dea1b4:	2001      	movs	r0, #1
c0dea1b6:	b007      	add	sp, #28
c0dea1b8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0dea1bc:	f001 bc0e 	b.w	c0deb9dc <nbgl_refreshSpecial>
c0dea1c0:	00000918 	.word	0x00000918

c0dea1c4 <getContentAtIdx>:
c0dea1c4:	b570      	push	{r4, r5, r6, lr}
c0dea1c6:	4605      	mov	r5, r0
c0dea1c8:	2000      	movs	r0, #0
c0dea1ca:	2d00      	cmp	r5, #0
c0dea1cc:	d415      	bmi.n	c0dea1fa <getContentAtIdx+0x36>
c0dea1ce:	4e11      	ldr	r6, [pc, #68]	@ (c0dea214 <getContentAtIdx+0x50>)
c0dea1d0:	460c      	mov	r4, r1
c0dea1d2:	eb09 0106 	add.w	r1, r9, r6
c0dea1d6:	7b09      	ldrb	r1, [r1, #12]
c0dea1d8:	428d      	cmp	r5, r1
c0dea1da:	da0e      	bge.n	c0dea1fa <getContentAtIdx+0x36>
c0dea1dc:	eb09 0006 	add.w	r0, r9, r6
c0dea1e0:	7900      	ldrb	r0, [r0, #4]
c0dea1e2:	b158      	cbz	r0, c0dea1fc <getContentAtIdx+0x38>
c0dea1e4:	4620      	mov	r0, r4
c0dea1e6:	2138      	movs	r1, #56	@ 0x38
c0dea1e8:	f002 f948 	bl	c0dec47c <__aeabi_memclr>
c0dea1ec:	eb09 0006 	add.w	r0, r9, r6
c0dea1f0:	4621      	mov	r1, r4
c0dea1f2:	6882      	ldr	r2, [r0, #8]
c0dea1f4:	b2e8      	uxtb	r0, r5
c0dea1f6:	4790      	blx	r2
c0dea1f8:	4620      	mov	r0, r4
c0dea1fa:	bd70      	pop	{r4, r5, r6, pc}
c0dea1fc:	eb09 0006 	add.w	r0, r9, r6
c0dea200:	ebc5 01c5 	rsb	r1, r5, r5, lsl #3
c0dea204:	6880      	ldr	r0, [r0, #8]
c0dea206:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0dea20a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea20e:	f001 be09 	b.w	c0debe24 <pic>
c0dea212:	bf00      	nop
c0dea214:	00000918 	.word	0x00000918

c0dea218 <getContentNbElement>:
c0dea218:	7801      	ldrb	r1, [r0, #0]
c0dea21a:	290a      	cmp	r1, #10
c0dea21c:	d00b      	beq.n	c0dea236 <getContentNbElement+0x1e>
c0dea21e:	2906      	cmp	r1, #6
c0dea220:	d009      	beq.n	c0dea236 <getContentNbElement+0x1e>
c0dea222:	2907      	cmp	r1, #7
c0dea224:	d009      	beq.n	c0dea23a <getContentNbElement+0x22>
c0dea226:	2908      	cmp	r1, #8
c0dea228:	d009      	beq.n	c0dea23e <getContentNbElement+0x26>
c0dea22a:	2909      	cmp	r1, #9
c0dea22c:	d009      	beq.n	c0dea242 <getContentNbElement+0x2a>
c0dea22e:	2904      	cmp	r1, #4
c0dea230:	bf1c      	itt	ne
c0dea232:	2001      	movne	r0, #1
c0dea234:	4770      	bxne	lr
c0dea236:	7b00      	ldrb	r0, [r0, #12]
c0dea238:	4770      	bx	lr
c0dea23a:	7a00      	ldrb	r0, [r0, #8]
c0dea23c:	4770      	bx	lr
c0dea23e:	7c00      	ldrb	r0, [r0, #16]
c0dea240:	4770      	bx	lr
c0dea242:	7a40      	ldrb	r0, [r0, #9]
c0dea244:	4770      	bx	lr
	...

c0dea248 <genericContextComputeNextPageParams>:
c0dea248:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0dea24c:	f8df 810c 	ldr.w	r8, [pc, #268]	@ c0dea35c <genericContextComputeNextPageParams+0x114>
c0dea250:	4682      	mov	sl, r0
c0dea252:	4616      	mov	r6, r2
c0dea254:	460d      	mov	r5, r1
c0dea256:	f10d 0107 	add.w	r1, sp, #7
c0dea25a:	461a      	mov	r2, r3
c0dea25c:	eb09 0008 	add.w	r0, r9, r8
c0dea260:	7c04      	ldrb	r4, [r0, #16]
c0dea262:	7c87      	ldrb	r7, [r0, #18]
c0dea264:	4650      	mov	r0, sl
c0dea266:	f000 f881 	bl	c0dea36c <genericContextGetPageInfo>
c0dea26a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0dea26e:	f8df b0f0 	ldr.w	fp, [pc, #240]	@ c0dea360 <genericContextComputeNextPageParams+0x118>
c0dea272:	7030      	strb	r0, [r6, #0]
c0dea274:	eb09 010b 	add.w	r1, r9, fp
c0dea278:	f891 1060 	ldrb.w	r1, [r1, #96]	@ 0x60
c0dea27c:	4551      	cmp	r1, sl
c0dea27e:	d219      	bcs.n	c0dea2b4 <genericContextComputeNextPageParams+0x6c>
c0dea280:	4b38      	ldr	r3, [pc, #224]	@ (c0dea364 <genericContextComputeNextPageParams+0x11c>)
c0dea282:	084e      	lsrs	r6, r1, #1
c0dea284:	2204      	movs	r2, #4
c0dea286:	ea02 0281 	and.w	r2, r2, r1, lsl #2
c0dea28a:	444b      	add	r3, r9
c0dea28c:	5d9b      	ldrb	r3, [r3, r6]
c0dea28e:	fa23 f202 	lsr.w	r2, r3, r2
c0dea292:	2300      	movs	r3, #0
c0dea294:	f002 0207 	and.w	r2, r2, #7
c0dea298:	4417      	add	r7, r2
c0dea29a:	eb09 0208 	add.w	r2, r9, r8
c0dea29e:	7c52      	ldrb	r2, [r2, #17]
c0dea2a0:	4297      	cmp	r7, r2
c0dea2a2:	bf28      	it	cs
c0dea2a4:	2301      	movcs	r3, #1
c0dea2a6:	2a00      	cmp	r2, #0
c0dea2a8:	bf18      	it	ne
c0dea2aa:	2201      	movne	r2, #1
c0dea2ac:	401a      	ands	r2, r3
c0dea2ae:	bf18      	it	ne
c0dea2b0:	2700      	movne	r7, #0
c0dea2b2:	4414      	add	r4, r2
c0dea2b4:	4551      	cmp	r1, sl
c0dea2b6:	d905      	bls.n	c0dea2c4 <genericContextComputeNextPageParams+0x7c>
c0dea2b8:	1a3f      	subs	r7, r7, r0
c0dea2ba:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0dea2be:	bfdc      	itt	le
c0dea2c0:	4247      	negle	r7, r0
c0dea2c2:	3c01      	suble	r4, #1
c0dea2c4:	b2e6      	uxtb	r6, r4
c0dea2c6:	2eff      	cmp	r6, #255	@ 0xff
c0dea2c8:	d014      	beq.n	c0dea2f4 <genericContextComputeNextPageParams+0xac>
c0dea2ca:	eb09 0108 	add.w	r1, r9, r8
c0dea2ce:	b260      	sxtb	r0, r4
c0dea2d0:	7b09      	ldrb	r1, [r1, #12]
c0dea2d2:	4288      	cmp	r0, r1
c0dea2d4:	d108      	bne.n	c0dea2e8 <genericContextComputeNextPageParams+0xa0>
c0dea2d6:	eb09 0108 	add.w	r1, r9, r8
c0dea2da:	7d09      	ldrb	r1, [r1, #20]
c0dea2dc:	b121      	cbz	r1, c0dea2e8 <genericContextComputeNextPageParams+0xa0>
c0dea2de:	4822      	ldr	r0, [pc, #136]	@ (c0dea368 <genericContextComputeNextPageParams+0x120>)
c0dea2e0:	4448      	add	r0, r9
c0dea2e2:	f100 0538 	add.w	r5, r0, #56	@ 0x38
c0dea2e6:	e00d      	b.n	c0dea304 <genericContextComputeNextPageParams+0xbc>
c0dea2e8:	4629      	mov	r1, r5
c0dea2ea:	f7ff ff6b 	bl	c0dea1c4 <getContentAtIdx>
c0dea2ee:	4605      	mov	r5, r0
c0dea2f0:	b940      	cbnz	r0, c0dea304 <genericContextComputeNextPageParams+0xbc>
c0dea2f2:	e02e      	b.n	c0dea352 <genericContextComputeNextPageParams+0x10a>
c0dea2f4:	eb09 0008 	add.w	r0, r9, r8
c0dea2f8:	7cc0      	ldrb	r0, [r0, #19]
c0dea2fa:	2800      	cmp	r0, #0
c0dea2fc:	d0e5      	beq.n	c0dea2ca <genericContextComputeNextPageParams+0x82>
c0dea2fe:	481a      	ldr	r0, [pc, #104]	@ (c0dea368 <genericContextComputeNextPageParams+0x120>)
c0dea300:	eb09 0500 	add.w	r5, r9, r0
c0dea304:	eb09 0008 	add.w	r0, r9, r8
c0dea308:	7c00      	ldrb	r0, [r0, #16]
c0dea30a:	4286      	cmp	r6, r0
c0dea30c:	d103      	bne.n	c0dea316 <genericContextComputeNextPageParams+0xce>
c0dea30e:	eb09 0008 	add.w	r0, r9, r8
c0dea312:	7c40      	ldrb	r0, [r0, #17]
c0dea314:	b988      	cbnz	r0, c0dea33a <genericContextComputeNextPageParams+0xf2>
c0dea316:	eb09 0608 	add.w	r6, r9, r8
c0dea31a:	4628      	mov	r0, r5
c0dea31c:	7434      	strb	r4, [r6, #16]
c0dea31e:	f7ff ff7b 	bl	c0dea218 <getContentNbElement>
c0dea322:	7470      	strb	r0, [r6, #17]
c0dea324:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0dea326:	eb09 040b 	add.w	r4, r9, fp
c0dea32a:	f001 fd7b 	bl	c0debe24 <pic>
c0dea32e:	62e0      	str	r0, [r4, #44]	@ 0x2c
c0dea330:	7c70      	ldrb	r0, [r6, #17]
c0dea332:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0dea336:	dc02      	bgt.n	c0dea33e <genericContextComputeNextPageParams+0xf6>
c0dea338:	4407      	add	r7, r0
c0dea33a:	2f00      	cmp	r7, #0
c0dea33c:	d409      	bmi.n	c0dea352 <genericContextComputeNextPageParams+0x10a>
c0dea33e:	4287      	cmp	r7, r0
c0dea340:	d207      	bcs.n	c0dea352 <genericContextComputeNextPageParams+0x10a>
c0dea342:	eb09 000b 	add.w	r0, r9, fp
c0dea346:	f880 a060 	strb.w	sl, [r0, #96]	@ 0x60
c0dea34a:	eb09 0008 	add.w	r0, r9, r8
c0dea34e:	7487      	strb	r7, [r0, #18]
c0dea350:	e000      	b.n	c0dea354 <genericContextComputeNextPageParams+0x10c>
c0dea352:	2500      	movs	r5, #0
c0dea354:	4628      	mov	r0, r5
c0dea356:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0dea35a:	bf00      	nop
c0dea35c:	00000918 	.word	0x00000918
c0dea360:	00000bd0 	.word	0x00000bd0
c0dea364:	00000ad0 	.word	0x00000ad0
c0dea368:	000009a8 	.word	0x000009a8

c0dea36c <genericContextGetPageInfo>:
c0dea36c:	b510      	push	{r4, lr}
c0dea36e:	4c08      	ldr	r4, [pc, #32]	@ (c0dea390 <genericContextGetPageInfo+0x24>)
c0dea370:	2304      	movs	r3, #4
c0dea372:	ea03 0380 	and.w	r3, r3, r0, lsl #2
c0dea376:	0840      	lsrs	r0, r0, #1
c0dea378:	444c      	add	r4, r9
c0dea37a:	5c20      	ldrb	r0, [r4, r0]
c0dea37c:	40d8      	lsrs	r0, r3
c0dea37e:	b111      	cbz	r1, c0dea386 <genericContextGetPageInfo+0x1a>
c0dea380:	f000 0307 	and.w	r3, r0, #7
c0dea384:	700b      	strb	r3, [r1, #0]
c0dea386:	b112      	cbz	r2, c0dea38e <genericContextGetPageInfo+0x22>
c0dea388:	f3c0 00c0 	ubfx	r0, r0, #3, #1
c0dea38c:	7010      	strb	r0, [r2, #0]
c0dea38e:	bd10      	pop	{r4, pc}
c0dea390:	00000ad0 	.word	0x00000ad0

c0dea394 <bundleNavStartSettings>:
c0dea394:	2000      	movs	r0, #0
c0dea396:	f7fe be5d 	b.w	c0de9054 <bundleNavStartSettingsAtPage>
	...

c0dea39c <displayFullValuePage>:
c0dea39c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea3a0:	b092      	sub	sp, #72	@ 0x48
c0dea3a2:	460d      	mov	r5, r1
c0dea3a4:	68d1      	ldr	r1, [r2, #12]
c0dea3a6:	4614      	mov	r4, r2
c0dea3a8:	b101      	cbz	r1, c0dea3ac <displayFullValuePage+0x10>
c0dea3aa:	4608      	mov	r0, r1
c0dea3ac:	f001 fd3a 	bl	c0debe24 <pic>
c0dea3b0:	4606      	mov	r6, r0
c0dea3b2:	7d20      	ldrb	r0, [r4, #20]
c0dea3b4:	2805      	cmp	r0, #5
c0dea3b6:	d00d      	beq.n	c0dea3d4 <displayFullValuePage+0x38>
c0dea3b8:	2804      	cmp	r0, #4
c0dea3ba:	d170      	bne.n	c0dea49e <displayFullValuePage+0x102>
c0dea3bc:	4861      	ldr	r0, [pc, #388]	@ (c0dea544 <displayFullValuePage+0x1a8>)
c0dea3be:	6921      	ldr	r1, [r4, #16]
c0dea3c0:	2201      	movs	r2, #1
c0dea3c2:	4448      	add	r0, r9
c0dea3c4:	6341      	str	r1, [r0, #52]	@ 0x34
c0dea3c6:	4630      	mov	r0, r6
c0dea3c8:	6921      	ldr	r1, [r4, #16]
c0dea3ca:	b012      	add	sp, #72	@ 0x48
c0dea3cc:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea3d0:	f000 b9dc 	b.w	c0dea78c <displayInfosListModal>
c0dea3d4:	485b      	ldr	r0, [pc, #364]	@ (c0dea544 <displayFullValuePage+0x1a8>)
c0dea3d6:	6921      	ldr	r1, [r4, #16]
c0dea3d8:	2200      	movs	r2, #0
c0dea3da:	4448      	add	r0, r9
c0dea3dc:	6381      	str	r1, [r0, #56]	@ 0x38
c0dea3de:	485a      	ldr	r0, [pc, #360]	@ (c0dea548 <displayFullValuePage+0x1ac>)
c0dea3e0:	2100      	movs	r1, #0
c0dea3e2:	6927      	ldr	r7, [r4, #16]
c0dea3e4:	9101      	str	r1, [sp, #4]
c0dea3e6:	4448      	add	r0, r9
c0dea3e8:	e9c0 220c 	strd	r2, r2, [r0, #48]	@ 0x30
c0dea3ec:	6382      	str	r2, [r0, #56]	@ 0x38
c0dea3ee:	63c2      	str	r2, [r0, #60]	@ 0x3c
c0dea3f0:	7a3d      	ldrb	r5, [r7, #8]
c0dea3f2:	0628      	lsls	r0, r5, #24
c0dea3f4:	f000 8087 	beq.w	c0dea506 <displayFullValuePage+0x16a>
c0dea3f8:	9500      	str	r5, [sp, #0]
c0dea3fa:	fa5f fb85 	uxtb.w	fp, r5
c0dea3fe:	f04f 0800 	mov.w	r8, #0
c0dea402:	2600      	movs	r6, #0
c0dea404:	9801      	ldr	r0, [sp, #4]
c0dea406:	b2c0      	uxtb	r0, r0
c0dea408:	ea4f 1a00 	mov.w	sl, r0, lsl #4
c0dea40c:	45c3      	cmp	fp, r8
c0dea40e:	d027      	beq.n	c0dea460 <displayFullValuePage+0xc4>
c0dea410:	f1b8 0f00 	cmp.w	r8, #0
c0dea414:	bf18      	it	ne
c0dea416:	3618      	addne	r6, #24
c0dea418:	6838      	ldr	r0, [r7, #0]
c0dea41a:	b108      	cbz	r0, c0dea420 <displayFullValuePage+0x84>
c0dea41c:	4450      	add	r0, sl
c0dea41e:	e004      	b.n	c0dea42a <displayFullValuePage+0x8e>
c0dea420:	9801      	ldr	r0, [sp, #4]
c0dea422:	6879      	ldr	r1, [r7, #4]
c0dea424:	4440      	add	r0, r8
c0dea426:	b2c0      	uxtb	r0, r0
c0dea428:	4788      	blx	r1
c0dea42a:	f001 fcfb 	bl	c0debe24 <pic>
c0dea42e:	7bbb      	ldrb	r3, [r7, #14]
c0dea430:	6801      	ldr	r1, [r0, #0]
c0dea432:	4604      	mov	r4, r0
c0dea434:	f000 fd5c 	bl	c0deaef0 <OUTLINED_FUNCTION_16>
c0dea438:	6861      	ldr	r1, [r4, #4]
c0dea43a:	7bbb      	ldrb	r3, [r7, #14]
c0dea43c:	4605      	mov	r5, r0
c0dea43e:	f000 fd57 	bl	c0deaef0 <OUTLINED_FUNCTION_16>
c0dea442:	1971      	adds	r1, r6, r5
c0dea444:	f10a 0a10 	add.w	sl, sl, #16
c0dea448:	f108 0801 	add.w	r8, r8, #1
c0dea44c:	4408      	add	r0, r1
c0dea44e:	1d06      	adds	r6, r0, #4
c0dea450:	b2b0      	uxth	r0, r6
c0dea452:	f5b0 7fe8 	cmp.w	r0, #464	@ 0x1d0
c0dea456:	d3d9      	bcc.n	c0dea40c <displayFullValuePage+0x70>
c0dea458:	9d00      	ldr	r5, [sp, #0]
c0dea45a:	f1a8 0001 	sub.w	r0, r8, #1
c0dea45e:	e001      	b.n	c0dea464 <displayFullValuePage+0xc8>
c0dea460:	9d00      	ldr	r5, [sp, #0]
c0dea462:	4628      	mov	r0, r5
c0dea464:	4938      	ldr	r1, [pc, #224]	@ (c0dea548 <displayFullValuePage+0x1ac>)
c0dea466:	2404      	movs	r4, #4
c0dea468:	1a2d      	subs	r5, r5, r0
c0dea46a:	4449      	add	r1, r9
c0dea46c:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0dea470:	1c53      	adds	r3, r2, #1
c0dea472:	f881 3030 	strb.w	r3, [r1, #48]	@ 0x30
c0dea476:	eb01 0152 	add.w	r1, r1, r2, lsr #1
c0dea47a:	ea04 0282 	and.w	r2, r4, r2, lsl #2
c0dea47e:	240f      	movs	r4, #15
c0dea480:	f891 3050 	ldrb.w	r3, [r1, #80]	@ 0x50
c0dea484:	4094      	lsls	r4, r2
c0dea486:	43a3      	bics	r3, r4
c0dea488:	f000 0407 	and.w	r4, r0, #7
c0dea48c:	fa04 f202 	lsl.w	r2, r4, r2
c0dea490:	431a      	orrs	r2, r3
c0dea492:	f881 2050 	strb.w	r2, [r1, #80]	@ 0x50
c0dea496:	9901      	ldr	r1, [sp, #4]
c0dea498:	4401      	add	r1, r0
c0dea49a:	9101      	str	r1, [sp, #4]
c0dea49c:	e7a9      	b.n	c0dea3f2 <displayFullValuePage+0x56>
c0dea49e:	af0b      	add	r7, sp, #44	@ 0x2c
c0dea4a0:	492a      	ldr	r1, [pc, #168]	@ (c0dea54c <displayFullValuePage+0x1b0>)
c0dea4a2:	221c      	movs	r2, #28
c0dea4a4:	4638      	mov	r0, r7
c0dea4a6:	4479      	add	r1, pc
c0dea4a8:	f001 ffde 	bl	c0dec468 <__aeabi_memcpy>
c0dea4ac:	f44f 6010 	mov.w	r0, #2304	@ 0x900
c0dea4b0:	f8df 8090 	ldr.w	r8, [pc, #144]	@ c0dea544 <displayFullValuePage+0x1a8>
c0dea4b4:	9608      	str	r6, [sp, #32]
c0dea4b6:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0dea4ba:	2000      	movs	r0, #0
c0dea4bc:	9007      	str	r0, [sp, #28]
c0dea4be:	2001      	movs	r0, #1
c0dea4c0:	eb09 0608 	add.w	r6, r9, r8
c0dea4c4:	f8ad 0018 	strh.w	r0, [sp, #24]
c0dea4c8:	4638      	mov	r0, r7
c0dea4ca:	f7f9 fcab 	bl	c0de3e24 <nbgl_layoutGet>
c0dea4ce:	62f0      	str	r0, [r6, #44]	@ 0x2c
c0dea4d0:	a906      	add	r1, sp, #24
c0dea4d2:	f7fc f9fb 	bl	c0de68cc <nbgl_layoutAddHeader>
c0dea4d6:	7d20      	ldrb	r0, [r4, #20]
c0dea4d8:	2801      	cmp	r0, #1
c0dea4da:	d01b      	beq.n	c0dea514 <displayFullValuePage+0x178>
c0dea4dc:	2802      	cmp	r0, #2
c0dea4de:	d01c      	beq.n	c0dea51a <displayFullValuePage+0x17e>
c0dea4e0:	2803      	cmp	r0, #3
c0dea4e2:	d11d      	bne.n	c0dea520 <displayFullValuePage+0x184>
c0dea4e4:	f44f 3080 	mov.w	r0, #65536	@ 0x10000
c0dea4e8:	9005      	str	r0, [sp, #20]
c0dea4ea:	cc07      	ldmia	r4!, {r0, r1, r2}
c0dea4ec:	9104      	str	r1, [sp, #16]
c0dea4ee:	2a00      	cmp	r2, #0
c0dea4f0:	9002      	str	r0, [sp, #8]
c0dea4f2:	bf08      	it	eq
c0dea4f4:	4602      	moveq	r2, r0
c0dea4f6:	eb09 0008 	add.w	r0, r9, r8
c0dea4fa:	9203      	str	r2, [sp, #12]
c0dea4fc:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0dea4fe:	a902      	add	r1, sp, #8
c0dea500:	f7fb fd73 	bl	c0de5fea <nbgl_layoutAddQRCode>
c0dea504:	e014      	b.n	c0dea530 <displayFullValuePage+0x194>
c0dea506:	2000      	movs	r0, #0
c0dea508:	2101      	movs	r1, #1
c0dea50a:	b012      	add	sp, #72	@ 0x48
c0dea50c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea510:	f000 bb72 	b.w	c0deabf8 <displayTagValueListModalPage>
c0dea514:	4b0e      	ldr	r3, [pc, #56]	@ (c0dea550 <displayFullValuePage+0x1b4>)
c0dea516:	447b      	add	r3, pc
c0dea518:	e003      	b.n	c0dea522 <displayFullValuePage+0x186>
c0dea51a:	4b0e      	ldr	r3, [pc, #56]	@ (c0dea554 <displayFullValuePage+0x1b8>)
c0dea51c:	447b      	add	r3, pc
c0dea51e:	e000      	b.n	c0dea522 <displayFullValuePage+0x186>
c0dea520:	6863      	ldr	r3, [r4, #4]
c0dea522:	eb09 0008 	add.w	r0, r9, r8
c0dea526:	6822      	ldr	r2, [r4, #0]
c0dea528:	4629      	mov	r1, r5
c0dea52a:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0dea52c:	f7fb f920 	bl	c0de5770 <nbgl_layoutAddTextContent>
c0dea530:	eb09 0008 	add.w	r0, r9, r8
c0dea534:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0dea536:	f7fc fef2 	bl	c0de731e <nbgl_layoutDraw>
c0dea53a:	f001 fa4a 	bl	c0deb9d2 <nbgl_refresh>
c0dea53e:	b012      	add	sp, #72	@ 0x48
c0dea540:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea544:	00000918 	.word	0x00000918
c0dea548:	00000bd0 	.word	0x00000bd0
c0dea54c:	00004dea 	.word	0x00004dea
c0dea550:	00003646 	.word	0x00003646
c0dea554:	000039da 	.word	0x000039da

c0dea558 <displaySecurityReport>:
c0dea558:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea55c:	b09c      	sub	sp, #112	@ 0x70
c0dea55e:	ac15      	add	r4, sp, #84	@ 0x54
c0dea560:	4976      	ldr	r1, [pc, #472]	@ (c0dea73c <displaySecurityReport+0x1e4>)
c0dea562:	4680      	mov	r8, r0
c0dea564:	221c      	movs	r2, #28
c0dea566:	4620      	mov	r0, r4
c0dea568:	4479      	add	r1, pc
c0dea56a:	f001 ff7d 	bl	c0dec468 <__aeabi_memcpy>
c0dea56e:	4874      	ldr	r0, [pc, #464]	@ (c0dea740 <displaySecurityReport+0x1e8>)
c0dea570:	a910      	add	r1, sp, #64	@ 0x40
c0dea572:	4478      	add	r0, pc
c0dea574:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0dea578:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0dea57a:	a80a      	add	r0, sp, #40	@ 0x28
c0dea57c:	2118      	movs	r1, #24
c0dea57e:	f001 ff7d 	bl	c0dec47c <__aeabi_memclr>
c0dea582:	f8df b1b0 	ldr.w	fp, [pc, #432]	@ c0dea734 <displaySecurityReport+0x1dc>
c0dea586:	4620      	mov	r0, r4
c0dea588:	eb09 060b 	add.w	r6, r9, fp
c0dea58c:	f7f9 fc4a 	bl	c0de3e24 <nbgl_layoutGet>
c0dea590:	4604      	mov	r4, r0
c0dea592:	f8c6 0084 	str.w	r0, [r6, #132]	@ 0x84
c0dea596:	f896 0088 	ldrb.w	r0, [r6, #136]	@ 0x88
c0dea59a:	2801      	cmp	r0, #1
c0dea59c:	d14d      	bne.n	c0dea63a <displaySecurityReport+0xe2>
c0dea59e:	f896 0089 	ldrb.w	r0, [r6, #137]	@ 0x89
c0dea5a2:	2800      	cmp	r0, #0
c0dea5a4:	d149      	bne.n	c0dea63a <displaySecurityReport+0xe2>
c0dea5a6:	4867      	ldr	r0, [pc, #412]	@ (c0dea744 <displaySecurityReport+0x1ec>)
c0dea5a8:	2600      	movs	r6, #0
c0dea5aa:	ac01      	add	r4, sp, #4
c0dea5ac:	f04f 0800 	mov.w	r8, #0
c0dea5b0:	4478      	add	r0, pc
c0dea5b2:	1d05      	adds	r5, r0, #4
c0dea5b4:	2e05      	cmp	r6, #5
c0dea5b6:	d076      	beq.n	c0dea6a6 <displaySecurityReport+0x14e>
c0dea5b8:	eb09 000b 	add.w	r0, r9, fp
c0dea5bc:	f8d0 a078 	ldr.w	sl, [r0, #120]	@ 0x78
c0dea5c0:	f8da 0000 	ldr.w	r0, [sl]
c0dea5c4:	40f0      	lsrs	r0, r6
c0dea5c6:	07c0      	lsls	r0, r0, #31
c0dea5c8:	d02d      	beq.n	c0dea626 <displaySecurityReport+0xce>
c0dea5ca:	4620      	mov	r0, r4
c0dea5cc:	2118      	movs	r1, #24
c0dea5ce:	f001 ff55 	bl	c0dec47c <__aeabi_memclr>
c0dea5d2:	f008 007f 	and.w	r0, r8, #127	@ 0x7f
c0dea5d6:	2804      	cmp	r0, #4
c0dea5d8:	d82a      	bhi.n	c0dea630 <displaySecurityReport+0xd8>
c0dea5da:	2101      	movs	r1, #1
c0dea5dc:	fa01 f000 	lsl.w	r0, r1, r0
c0dea5e0:	f010 0f19 	tst.w	r0, #25
c0dea5e4:	d024      	beq.n	c0dea630 <displaySecurityReport+0xd8>
c0dea5e6:	6868      	ldr	r0, [r5, #4]
c0dea5e8:	9004      	str	r0, [sp, #16]
c0dea5ea:	6828      	ldr	r0, [r5, #0]
c0dea5ec:	2e03      	cmp	r6, #3
c0dea5ee:	9002      	str	r0, [sp, #8]
c0dea5f0:	d101      	bne.n	c0dea5f6 <displaySecurityReport+0x9e>
c0dea5f2:	20ff      	movs	r0, #255	@ 0xff
c0dea5f4:	e007      	b.n	c0dea606 <displaySecurityReport+0xae>
c0dea5f6:	2009      	movs	r0, #9
c0dea5f8:	f88d 0018 	strb.w	r0, [sp, #24]
c0dea5fc:	4852      	ldr	r0, [pc, #328]	@ (c0dea748 <displaySecurityReport+0x1f0>)
c0dea5fe:	4478      	add	r0, pc
c0dea600:	9003      	str	r0, [sp, #12]
c0dea602:	f106 001a 	add.w	r0, r6, #26
c0dea606:	f88d 0015 	strb.w	r0, [sp, #21]
c0dea60a:	f855 0c04 	ldr.w	r0, [r5, #-4]
c0dea60e:	eb09 070b 	add.w	r7, r9, fp
c0dea612:	4621      	mov	r1, r4
c0dea614:	9001      	str	r0, [sp, #4]
c0dea616:	f8d7 0084 	ldr.w	r0, [r7, #132]	@ 0x84
c0dea61a:	f7fa fdb2 	bl	c0de5182 <nbgl_layoutAddTouchableBar>
c0dea61e:	f8d7 0084 	ldr.w	r0, [r7, #132]	@ 0x84
c0dea622:	f7fc f821 	bl	c0de6668 <nbgl_layoutAddSeparationLine>
c0dea626:	350c      	adds	r5, #12
c0dea628:	f108 0801 	add.w	r8, r8, #1
c0dea62c:	3601      	adds	r6, #1
c0dea62e:	e7c1      	b.n	c0dea5b4 <displaySecurityReport+0x5c>
c0dea630:	f8da 0010 	ldr.w	r0, [sl, #16]
c0dea634:	2800      	cmp	r0, #0
c0dea636:	d1d7      	bne.n	c0dea5e8 <displaySecurityReport+0x90>
c0dea638:	e7d5      	b.n	c0dea5e6 <displaySecurityReport+0x8e>
c0dea63a:	eb09 000b 	add.w	r0, r9, fp
c0dea63e:	6f80      	ldr	r0, [r0, #120]	@ 0x78
c0dea640:	b108      	cbz	r0, c0dea646 <displaySecurityReport+0xee>
c0dea642:	68c6      	ldr	r6, [r0, #12]
c0dea644:	b90e      	cbnz	r6, c0dea64a <displaySecurityReport+0xf2>
c0dea646:	4e41      	ldr	r6, [pc, #260]	@ (c0dea74c <displaySecurityReport+0x1f4>)
c0dea648:	447e      	add	r6, pc
c0dea64a:	f018 0f06 	tst.w	r8, #6
c0dea64e:	d033      	beq.n	c0dea6b8 <displaySecurityReport+0x160>
c0dea650:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
c0dea654:	9104      	str	r1, [sp, #16]
c0dea656:	493e      	ldr	r1, [pc, #248]	@ (c0dea750 <displaySecurityReport+0x1f8>)
c0dea658:	4479      	add	r1, pc
c0dea65a:	9103      	str	r1, [sp, #12]
c0dea65c:	2140      	movs	r1, #64	@ 0x40
c0dea65e:	6883      	ldr	r3, [r0, #8]
c0dea660:	4835      	ldr	r0, [pc, #212]	@ (c0dea738 <displaySecurityReport+0x1e0>)
c0dea662:	4448      	add	r0, r9
c0dea664:	9302      	str	r3, [sp, #8]
c0dea666:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0dea66a:	9401      	str	r4, [sp, #4]
c0dea66c:	4620      	mov	r0, r4
c0dea66e:	4a39      	ldr	r2, [pc, #228]	@ (c0dea754 <displaySecurityReport+0x1fc>)
c0dea670:	447a      	add	r2, pc
c0dea672:	f001 fa45 	bl	c0debb00 <snprintf>
c0dea676:	4620      	mov	r0, r4
c0dea678:	f001 ff6c 	bl	c0dec554 <strlen>
c0dea67c:	4605      	mov	r5, r0
c0dea67e:	f000 fc19 	bl	c0deaeb4 <OUTLINED_FUNCTION_9>
c0dea682:	a901      	add	r1, sp, #4
c0dea684:	f7fb fcb1 	bl	c0de5fea <nbgl_layoutAddQRCode>
c0dea688:	2018      	movs	r0, #24
c0dea68a:	f1c5 013f 	rsb	r1, r5, #63	@ 0x3f
c0dea68e:	4633      	mov	r3, r6
c0dea690:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0dea694:	1928      	adds	r0, r5, r4
c0dea696:	4a30      	ldr	r2, [pc, #192]	@ (c0dea758 <displaySecurityReport+0x200>)
c0dea698:	1c44      	adds	r4, r0, #1
c0dea69a:	4620      	mov	r0, r4
c0dea69c:	447a      	add	r2, pc
c0dea69e:	f001 fa2f 	bl	c0debb00 <snprintf>
c0dea6a2:	9412      	str	r4, [sp, #72]	@ 0x48
c0dea6a4:	e031      	b.n	c0dea70a <displaySecurityReport+0x1b2>
c0dea6a6:	4832      	ldr	r0, [pc, #200]	@ (c0dea770 <displaySecurityReport+0x218>)
c0dea6a8:	4478      	add	r0, pc
c0dea6aa:	9012      	str	r0, [sp, #72]	@ 0x48
c0dea6ac:	f000 fc02 	bl	c0deaeb4 <OUTLINED_FUNCTION_9>
c0dea6b0:	a910      	add	r1, sp, #64	@ 0x40
c0dea6b2:	f7fc f90b 	bl	c0de68cc <nbgl_layoutAddHeader>
c0dea6b6:	e034      	b.n	c0dea722 <displaySecurityReport+0x1ca>
c0dea6b8:	ea5f 60c8 	movs.w	r0, r8, lsl #27
c0dea6bc:	d40d      	bmi.n	c0dea6da <displaySecurityReport+0x182>
c0dea6be:	ea5f 70c8 	movs.w	r0, r8, lsl #31
c0dea6c2:	d0f3      	beq.n	c0dea6ac <displaySecurityReport+0x154>
c0dea6c4:	ad01      	add	r5, sp, #4
c0dea6c6:	2124      	movs	r1, #36	@ 0x24
c0dea6c8:	4628      	mov	r0, r5
c0dea6ca:	f001 fed7 	bl	c0dec47c <__aeabi_memclr>
c0dea6ce:	4826      	ldr	r0, [pc, #152]	@ (c0dea768 <displaySecurityReport+0x210>)
c0dea6d0:	4478      	add	r0, pc
c0dea6d2:	9007      	str	r0, [sp, #28]
c0dea6d4:	4825      	ldr	r0, [pc, #148]	@ (c0dea76c <displaySecurityReport+0x214>)
c0dea6d6:	4478      	add	r0, pc
c0dea6d8:	e009      	b.n	c0dea6ee <displaySecurityReport+0x196>
c0dea6da:	ad01      	add	r5, sp, #4
c0dea6dc:	2124      	movs	r1, #36	@ 0x24
c0dea6de:	4628      	mov	r0, r5
c0dea6e0:	f001 fecc 	bl	c0dec47c <__aeabi_memclr>
c0dea6e4:	481d      	ldr	r0, [pc, #116]	@ (c0dea75c <displaySecurityReport+0x204>)
c0dea6e6:	4478      	add	r0, pc
c0dea6e8:	9007      	str	r0, [sp, #28]
c0dea6ea:	481d      	ldr	r0, [pc, #116]	@ (c0dea760 <displaySecurityReport+0x208>)
c0dea6ec:	4478      	add	r0, pc
c0dea6ee:	9005      	str	r0, [sp, #20]
c0dea6f0:	4629      	mov	r1, r5
c0dea6f2:	481c      	ldr	r0, [pc, #112]	@ (c0dea764 <displaySecurityReport+0x20c>)
c0dea6f4:	4478      	add	r0, pc
c0dea6f6:	9002      	str	r0, [sp, #8]
c0dea6f8:	4620      	mov	r0, r4
c0dea6fa:	f7fb fc6d 	bl	c0de5fd8 <nbgl_layoutAddContentCenter>
c0dea6fe:	2028      	movs	r0, #40	@ 0x28
c0dea700:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0dea704:	2000      	movs	r0, #0
c0dea706:	f88d 0041 	strb.w	r0, [sp, #65]	@ 0x41
c0dea70a:	eb09 040b 	add.w	r4, r9, fp
c0dea70e:	f8d4 0084 	ldr.w	r0, [r4, #132]	@ 0x84
c0dea712:	a910      	add	r1, sp, #64	@ 0x40
c0dea714:	f7fc f8da 	bl	c0de68cc <nbgl_layoutAddHeader>
c0dea718:	f8d4 0084 	ldr.w	r0, [r4, #132]	@ 0x84
c0dea71c:	a90a      	add	r1, sp, #40	@ 0x28
c0dea71e:	f7fa f983 	bl	c0de4a28 <nbgl_layoutAddExtendedFooter>
c0dea722:	f000 fbc7 	bl	c0deaeb4 <OUTLINED_FUNCTION_9>
c0dea726:	f7fc fdfa 	bl	c0de731e <nbgl_layoutDraw>
c0dea72a:	f001 f952 	bl	c0deb9d2 <nbgl_refresh>
c0dea72e:	b01c      	add	sp, #112	@ 0x70
c0dea730:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea734:	00000918 	.word	0x00000918
c0dea738:	00000a50 	.word	0x00000a50
c0dea73c:	00004d28 	.word	0x00004d28
c0dea740:	00004d3a 	.word	0x00004d3a
c0dea744:	00004d10 	.word	0x00004d10
c0dea748:	00002b13 	.word	0x00002b13
c0dea74c:	0000379b 	.word	0x0000379b
c0dea750:	000035dc 	.word	0x000035dc
c0dea754:	0000349f 	.word	0x0000349f
c0dea758:	00003535 	.word	0x00003535
c0dea75c:	00003567 	.word	0x00003567
c0dea760:	00003655 	.word	0x00003655
c0dea764:	000028ab 	.word	0x000028ab
c0dea768:	000032b5 	.word	0x000032b5
c0dea76c:	00003249 	.word	0x00003249
c0dea770:	000034de 	.word	0x000034de

c0dea774 <displayCustomizedSecurityReport>:
c0dea774:	b580      	push	{r7, lr}
c0dea776:	2117      	movs	r1, #23
c0dea778:	f000 f8f2 	bl	c0dea960 <displayModalDetails>
c0dea77c:	4902      	ldr	r1, [pc, #8]	@ (c0dea788 <displayCustomizedSecurityReport+0x14>)
c0dea77e:	4449      	add	r1, r9
c0dea780:	f8c1 0084 	str.w	r0, [r1, #132]	@ 0x84
c0dea784:	bd80      	pop	{r7, pc}
c0dea786:	bf00      	nop
c0dea788:	00000918 	.word	0x00000918

c0dea78c <displayInfosListModal>:
c0dea78c:	b570      	push	{r4, r5, r6, lr}
c0dea78e:	b098      	sub	sp, #96	@ 0x60
c0dea790:	4606      	mov	r6, r0
c0dea792:	460c      	mov	r4, r1
c0dea794:	a811      	add	r0, sp, #68	@ 0x44
c0dea796:	491c      	ldr	r1, [pc, #112]	@ (c0dea808 <displayInfosListModal+0x7c>)
c0dea798:	4615      	mov	r5, r2
c0dea79a:	221c      	movs	r2, #28
c0dea79c:	4479      	add	r1, pc
c0dea79e:	f001 fe63 	bl	c0dec468 <__aeabi_memcpy>
c0dea7a2:	2008      	movs	r0, #8
c0dea7a4:	f88d 0010 	strb.w	r0, [sp, #16]
c0dea7a8:	2000      	movs	r0, #0
c0dea7aa:	9003      	str	r0, [sp, #12]
c0dea7ac:	4814      	ldr	r0, [pc, #80]	@ (c0dea800 <displayInfosListModal+0x74>)
c0dea7ae:	e9cd 6001 	strd	r6, r0, [sp, #4]
c0dea7b2:	200f      	movs	r0, #15
c0dea7b4:	2d00      	cmp	r5, #0
c0dea7b6:	bf18      	it	ne
c0dea7b8:	200e      	movne	r0, #14
c0dea7ba:	f88d 0021 	strb.w	r0, [sp, #33]	@ 0x21
c0dea7be:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
c0dea7c2:	ab05      	add	r3, sp, #20
c0dea7c4:	c307      	stmia	r3!, {r0, r1, r2}
c0dea7c6:	7b20      	ldrb	r0, [r4, #12]
c0dea7c8:	f88d 0020 	strb.w	r0, [sp, #32]
c0dea7cc:	7ba0      	ldrb	r0, [r4, #14]
c0dea7ce:	4c0d      	ldr	r4, [pc, #52]	@ (c0dea804 <displayInfosListModal+0x78>)
c0dea7d0:	f88d 0022 	strb.w	r0, [sp, #34]	@ 0x22
c0dea7d4:	eb09 0004 	add.w	r0, r9, r4
c0dea7d8:	6a00      	ldr	r0, [r0, #32]
c0dea7da:	b108      	cbz	r0, c0dea7e0 <displayInfosListModal+0x54>
c0dea7dc:	f7fd fe57 	bl	c0de848e <nbgl_pageRelease>
c0dea7e0:	480a      	ldr	r0, [pc, #40]	@ (c0dea80c <displayInfosListModal+0x80>)
c0dea7e2:	a911      	add	r1, sp, #68	@ 0x44
c0dea7e4:	aa01      	add	r2, sp, #4
c0dea7e6:	2301      	movs	r3, #1
c0dea7e8:	4478      	add	r0, pc
c0dea7ea:	f7fd fc29 	bl	c0de8040 <nbgl_pageDrawGenericContentExt>
c0dea7ee:	eb09 0104 	add.w	r1, r9, r4
c0dea7f2:	6208      	str	r0, [r1, #32]
c0dea7f4:	2002      	movs	r0, #2
c0dea7f6:	f001 f8f1 	bl	c0deb9dc <nbgl_refreshSpecial>
c0dea7fa:	b018      	add	sp, #96	@ 0x60
c0dea7fc:	bd70      	pop	{r4, r5, r6, pc}
c0dea7fe:	bf00      	nop
c0dea800:	00091400 	.word	0x00091400
c0dea804:	00000bd0 	.word	0x00000bd0
c0dea808:	00004b60 	.word	0x00004b60
c0dea80c:	ffffef9d 	.word	0xffffef9d

c0dea810 <modalLayoutTouchCallback>:
c0dea810:	b570      	push	{r4, r5, r6, lr}
c0dea812:	2818      	cmp	r0, #24
c0dea814:	d00c      	beq.n	c0dea830 <modalLayoutTouchCallback+0x20>
c0dea816:	2817      	cmp	r0, #23
c0dea818:	d019      	beq.n	c0dea84e <modalLayoutTouchCallback+0x3e>
c0dea81a:	2816      	cmp	r0, #22
c0dea81c:	d128      	bne.n	c0dea870 <modalLayoutTouchCallback+0x60>
c0dea81e:	484f      	ldr	r0, [pc, #316]	@ (c0dea95c <modalLayoutTouchCallback+0x14c>)
c0dea820:	eb09 0400 	add.w	r4, r9, r0
c0dea824:	6da0      	ldr	r0, [r4, #88]	@ 0x58
c0dea826:	f7fc fd99 	bl	c0de735c <nbgl_layoutRelease>
c0dea82a:	2000      	movs	r0, #0
c0dea82c:	65a0      	str	r0, [r4, #88]	@ 0x58
c0dea82e:	e055      	b.n	c0dea8dc <modalLayoutTouchCallback+0xcc>
c0dea830:	4c49      	ldr	r4, [pc, #292]	@ (c0dea958 <modalLayoutTouchCallback+0x148>)
c0dea832:	eb09 0504 	add.w	r5, r9, r4
c0dea836:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0dea838:	f7fc fd90 	bl	c0de735c <nbgl_layoutRelease>
c0dea83c:	f895 0068 	ldrb.w	r0, [r5, #104]	@ 0x68
c0dea840:	2801      	cmp	r0, #1
c0dea842:	d832      	bhi.n	c0dea8aa <modalLayoutTouchCallback+0x9a>
c0dea844:	eb09 0004 	add.w	r0, r9, r4
c0dea848:	2100      	movs	r1, #0
c0dea84a:	6641      	str	r1, [r0, #100]	@ 0x64
c0dea84c:	e046      	b.n	c0dea8dc <modalLayoutTouchCallback+0xcc>
c0dea84e:	4c42      	ldr	r4, [pc, #264]	@ (c0dea958 <modalLayoutTouchCallback+0x148>)
c0dea850:	eb09 0504 	add.w	r5, r9, r4
c0dea854:	f8d5 0084 	ldr.w	r0, [r5, #132]	@ 0x84
c0dea858:	f7fc fd80 	bl	c0de735c <nbgl_layoutRelease>
c0dea85c:	f895 0088 	ldrb.w	r0, [r5, #136]	@ 0x88
c0dea860:	2801      	cmp	r0, #1
c0dea862:	d829      	bhi.n	c0dea8b8 <modalLayoutTouchCallback+0xa8>
c0dea864:	eb09 0004 	add.w	r0, r9, r4
c0dea868:	2100      	movs	r1, #0
c0dea86a:	f8c0 1084 	str.w	r1, [r0, #132]	@ 0x84
c0dea86e:	e035      	b.n	c0dea8dc <modalLayoutTouchCallback+0xcc>
c0dea870:	f1a0 041a 	sub.w	r4, r0, #26
c0dea874:	2c04      	cmp	r4, #4
c0dea876:	d829      	bhi.n	c0dea8cc <modalLayoutTouchCallback+0xbc>
c0dea878:	4d37      	ldr	r5, [pc, #220]	@ (c0dea958 <modalLayoutTouchCallback+0x148>)
c0dea87a:	eb09 0005 	add.w	r0, r9, r5
c0dea87e:	f890 008c 	ldrb.w	r0, [r0, #140]	@ 0x8c
c0dea882:	2802      	cmp	r0, #2
c0dea884:	d03d      	beq.n	c0dea902 <modalLayoutTouchCallback+0xf2>
c0dea886:	2801      	cmp	r0, #1
c0dea888:	d164      	bne.n	c0dea954 <modalLayoutTouchCallback+0x144>
c0dea88a:	eb09 0605 	add.w	r6, r9, r5
c0dea88e:	f8d6 0084 	ldr.w	r0, [r6, #132]	@ 0x84
c0dea892:	f7fc fd63 	bl	c0de735c <nbgl_layoutRelease>
c0dea896:	2002      	movs	r0, #2
c0dea898:	f886 0088 	strb.w	r0, [r6, #136]	@ 0x88
c0dea89c:	6fb0      	ldr	r0, [r6, #120]	@ 0x78
c0dea89e:	6801      	ldr	r1, [r0, #0]
c0dea8a0:	2900      	cmp	r1, #0
c0dea8a2:	d046      	beq.n	c0dea932 <modalLayoutTouchCallback+0x122>
c0dea8a4:	2001      	movs	r0, #1
c0dea8a6:	40a0      	lsls	r0, r4
c0dea8a8:	e00c      	b.n	c0dea8c4 <modalLayoutTouchCallback+0xb4>
c0dea8aa:	444c      	add	r4, r9
c0dea8ac:	2001      	movs	r0, #1
c0dea8ae:	2118      	movs	r1, #24
c0dea8b0:	f000 fb2b 	bl	c0deaf0a <OUTLINED_FUNCTION_19>
c0dea8b4:	6660      	str	r0, [r4, #100]	@ 0x64
c0dea8b6:	e013      	b.n	c0dea8e0 <modalLayoutTouchCallback+0xd0>
c0dea8b8:	eb09 0004 	add.w	r0, r9, r4
c0dea8bc:	2101      	movs	r1, #1
c0dea8be:	f000 faed 	bl	c0deae9c <OUTLINED_FUNCTION_6>
c0dea8c2:	d011      	beq.n	c0dea8e8 <modalLayoutTouchCallback+0xd8>
c0dea8c4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea8c8:	f7ff be46 	b.w	c0dea558 <displaySecurityReport>
c0dea8cc:	4822      	ldr	r0, [pc, #136]	@ (c0dea958 <modalLayoutTouchCallback+0x148>)
c0dea8ce:	eb09 0400 	add.w	r4, r9, r0
c0dea8d2:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
c0dea8d4:	f7fc fd42 	bl	c0de735c <nbgl_layoutRelease>
c0dea8d8:	2000      	movs	r0, #0
c0dea8da:	62e0      	str	r0, [r4, #44]	@ 0x2c
c0dea8dc:	f001 f8a1 	bl	c0deba22 <nbgl_screenRedraw>
c0dea8e0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea8e4:	f001 b875 	b.w	c0deb9d2 <nbgl_refresh>
c0dea8e8:	eb09 0004 	add.w	r0, r9, r4
c0dea8ec:	2214      	movs	r2, #20
c0dea8ee:	f890 0089 	ldrb.w	r0, [r0, #137]	@ 0x89
c0dea8f2:	2800      	cmp	r0, #0
c0dea8f4:	bf08      	it	eq
c0dea8f6:	2218      	moveq	r2, #24
c0dea8f8:	5888      	ldr	r0, [r1, r2]
c0dea8fa:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea8fe:	f7ff bf39 	b.w	c0dea774 <displayCustomizedSecurityReport>
c0dea902:	eb09 0105 	add.w	r1, r9, r5
c0dea906:	202c      	movs	r0, #44	@ 0x2c
c0dea908:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
c0dea90a:	fb04 f200 	mul.w	r2, r4, r0
c0dea90e:	6989      	ldr	r1, [r1, #24]
c0dea910:	588a      	ldr	r2, [r1, r2]
c0dea912:	b1fa      	cbz	r2, c0dea954 <modalLayoutTouchCallback+0x144>
c0dea914:	444d      	add	r5, r9
c0dea916:	fb04 1400 	mla	r4, r4, r0, r1
c0dea91a:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0dea91c:	f7fc fd1e 	bl	c0de735c <nbgl_layoutRelease>
c0dea920:	2002      	movs	r0, #2
c0dea922:	2118      	movs	r1, #24
c0dea924:	f885 0068 	strb.w	r0, [r5, #104]	@ 0x68
c0dea928:	4620      	mov	r0, r4
c0dea92a:	f000 f819 	bl	c0dea960 <displayModalDetails>
c0dea92e:	6668      	str	r0, [r5, #100]	@ 0x64
c0dea930:	e010      	b.n	c0dea954 <modalLayoutTouchCallback+0x144>
c0dea932:	eb09 0105 	add.w	r1, r9, r5
c0dea936:	2214      	movs	r2, #20
c0dea938:	f891 1089 	ldrb.w	r1, [r1, #137]	@ 0x89
c0dea93c:	2900      	cmp	r1, #0
c0dea93e:	bf08      	it	eq
c0dea940:	2218      	moveq	r2, #24
c0dea942:	5880      	ldr	r0, [r0, r2]
c0dea944:	7901      	ldrb	r1, [r0, #4]
c0dea946:	2903      	cmp	r1, #3
c0dea948:	d104      	bne.n	c0dea954 <modalLayoutTouchCallback+0x144>
c0dea94a:	6980      	ldr	r0, [r0, #24]
c0dea94c:	212c      	movs	r1, #44	@ 0x2c
c0dea94e:	fb04 0001 	mla	r0, r4, r1, r0
c0dea952:	e7d2      	b.n	c0dea8fa <modalLayoutTouchCallback+0xea>
c0dea954:	bd70      	pop	{r4, r5, r6, pc}
c0dea956:	bf00      	nop
c0dea958:	00000918 	.word	0x00000918
c0dea95c:	00000c4c 	.word	0x00000c4c

c0dea960 <displayModalDetails>:
c0dea960:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea964:	b092      	sub	sp, #72	@ 0x48
c0dea966:	460d      	mov	r5, r1
c0dea968:	ae0b      	add	r6, sp, #44	@ 0x2c
c0dea96a:	4938      	ldr	r1, [pc, #224]	@ (c0deaa4c <displayModalDetails+0xec>)
c0dea96c:	4604      	mov	r4, r0
c0dea96e:	221c      	movs	r2, #28
c0dea970:	4630      	mov	r0, r6
c0dea972:	4479      	add	r1, pc
c0dea974:	f001 fd78 	bl	c0dec468 <__aeabi_memcpy>
c0dea978:	af06      	add	r7, sp, #24
c0dea97a:	2114      	movs	r1, #20
c0dea97c:	4638      	mov	r0, r7
c0dea97e:	f001 fd7d 	bl	c0dec47c <__aeabi_memclr>
c0dea982:	2009      	movs	r0, #9
c0dea984:	f88d 5024 	strb.w	r5, [sp, #36]	@ 0x24
c0dea988:	f88d 0025 	strb.w	r0, [sp, #37]	@ 0x25
c0dea98c:	f240 1001 	movw	r0, #257	@ 0x101
c0dea990:	f8ad 0018 	strh.w	r0, [sp, #24]
c0dea994:	4630      	mov	r0, r6
c0dea996:	f7f9 fa45 	bl	c0de3e24 <nbgl_layoutGet>
c0dea99a:	4605      	mov	r5, r0
c0dea99c:	6820      	ldr	r0, [r4, #0]
c0dea99e:	4639      	mov	r1, r7
c0dea9a0:	9008      	str	r0, [sp, #32]
c0dea9a2:	4628      	mov	r0, r5
c0dea9a4:	f7fb ff92 	bl	c0de68cc <nbgl_layoutAddHeader>
c0dea9a8:	7920      	ldrb	r0, [r4, #4]
c0dea9aa:	2801      	cmp	r0, #1
c0dea9ac:	d035      	beq.n	c0deaa1a <displayModalDetails+0xba>
c0dea9ae:	2802      	cmp	r0, #2
c0dea9b0:	d03c      	beq.n	c0deaa2c <displayModalDetails+0xcc>
c0dea9b2:	2803      	cmp	r0, #3
c0dea9b4:	d141      	bne.n	c0deaa3a <displayModalDetails+0xda>
c0dea9b6:	4f26      	ldr	r7, [pc, #152]	@ (c0deaa50 <displayModalDetails+0xf0>)
c0dea9b8:	f04f 0a00 	mov.w	sl, #0
c0dea9bc:	2604      	movs	r6, #4
c0dea9be:	46e8      	mov	r8, sp
c0dea9c0:	f04f 0b00 	mov.w	fp, #0
c0dea9c4:	447f      	add	r7, pc
c0dea9c6:	7a20      	ldrb	r0, [r4, #8]
c0dea9c8:	4583      	cmp	fp, r0
c0dea9ca:	d236      	bcs.n	c0deaa3a <displayModalDetails+0xda>
c0dea9cc:	f104 030c 	add.w	r3, r4, #12
c0dea9d0:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
c0dea9d2:	f850 002b 	ldr.w	r0, [r0, fp, lsl #2]
c0dea9d6:	9001      	str	r0, [sp, #4]
c0dea9d8:	f851 002b 	ldr.w	r0, [r1, fp, lsl #2]
c0dea9dc:	4641      	mov	r1, r8
c0dea9de:	9003      	str	r0, [sp, #12]
c0dea9e0:	5d98      	ldrb	r0, [r3, r6]
c0dea9e2:	2800      	cmp	r0, #0
c0dea9e4:	bf18      	it	ne
c0dea9e6:	4638      	movne	r0, r7
c0dea9e8:	9002      	str	r0, [sp, #8]
c0dea9ea:	f88d a012 	strb.w	sl, [sp, #18]
c0dea9ee:	f88d a010 	strb.w	sl, [sp, #16]
c0dea9f2:	2009      	movs	r0, #9
c0dea9f4:	f88d 0014 	strb.w	r0, [sp, #20]
c0dea9f8:	f10b 001a 	add.w	r0, fp, #26
c0dea9fc:	f88d 0011 	strb.w	r0, [sp, #17]
c0deaa00:	f852 002b 	ldr.w	r0, [r2, fp, lsl #2]
c0deaa04:	9000      	str	r0, [sp, #0]
c0deaa06:	4628      	mov	r0, r5
c0deaa08:	f7fa fbbb 	bl	c0de5182 <nbgl_layoutAddTouchableBar>
c0deaa0c:	4628      	mov	r0, r5
c0deaa0e:	f7fb fe2b 	bl	c0de6668 <nbgl_layoutAddSeparationLine>
c0deaa12:	362c      	adds	r6, #44	@ 0x2c
c0deaa14:	f10b 0b01 	add.w	fp, fp, #1
c0deaa18:	e7d5      	b.n	c0dea9c6 <displayModalDetails+0x66>
c0deaa1a:	f104 0108 	add.w	r1, r4, #8
c0deaa1e:	4628      	mov	r0, r5
c0deaa20:	f7fb fada 	bl	c0de5fd8 <nbgl_layoutAddContentCenter>
c0deaa24:	2000      	movs	r0, #0
c0deaa26:	f88d 0019 	strb.w	r0, [sp, #25]
c0deaa2a:	e006      	b.n	c0deaa3a <displayModalDetails+0xda>
c0deaa2c:	f104 0108 	add.w	r1, r4, #8
c0deaa30:	4628      	mov	r0, r5
c0deaa32:	f7fb fada 	bl	c0de5fea <nbgl_layoutAddQRCode>
c0deaa36:	6820      	ldr	r0, [r4, #0]
c0deaa38:	9008      	str	r0, [sp, #32]
c0deaa3a:	4628      	mov	r0, r5
c0deaa3c:	f7fc fc6f 	bl	c0de731e <nbgl_layoutDraw>
c0deaa40:	f000 ffc7 	bl	c0deb9d2 <nbgl_refresh>
c0deaa44:	4628      	mov	r0, r5
c0deaa46:	b012      	add	sp, #72	@ 0x48
c0deaa48:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0deaa4c:	0000491e 	.word	0x0000491e
c0deaa50:	0000274d 	.word	0x0000274d

c0deaa54 <displayDetailsPage>:
c0deaa54:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0deaa58:	b09b      	sub	sp, #108	@ 0x6c
c0deaa5a:	f8df a190 	ldr.w	sl, [pc, #400]	@ c0deabec <displayDetailsPage+0x198>
c0deaa5e:	4604      	mov	r4, r0
c0deaa60:	f88d 004c 	strb.w	r0, [sp, #76]	@ 0x4c
c0deaa64:	2000      	movs	r0, #0
c0deaa66:	460e      	mov	r6, r1
c0deaa68:	495f      	ldr	r1, [pc, #380]	@ (c0deabe8 <displayDetailsPage+0x194>)
c0deaa6a:	9018      	str	r0, [sp, #96]	@ 0x60
c0deaa6c:	f88d 0058 	strb.w	r0, [sp, #88]	@ 0x58
c0deaa70:	9015      	str	r0, [sp, #84]	@ 0x54
c0deaa72:	f44f 6010 	mov.w	r0, #2304	@ 0x900
c0deaa76:	eb09 050a 	add.w	r5, r9, sl
c0deaa7a:	f8ad 0050 	strh.w	r0, [sp, #80]	@ 0x50
c0deaa7e:	f44f 7081 	mov.w	r0, #258	@ 0x102
c0deaa82:	9117      	str	r1, [sp, #92]	@ 0x5c
c0deaa84:	2140      	movs	r1, #64	@ 0x40
c0deaa86:	f895 8030 	ldrb.w	r8, [r5, #48]	@ 0x30
c0deaa8a:	f8ad 004e 	strh.w	r0, [sp, #78]	@ 0x4e
c0deaa8e:	f88d 804d 	strb.w	r8, [sp, #77]	@ 0x4d
c0deaa92:	a803      	add	r0, sp, #12
c0deaa94:	f001 fcf2 	bl	c0dec47c <__aeabi_memclr>
c0deaa98:	2001      	movs	r0, #1
c0deaa9a:	f88d 0029 	strb.w	r0, [sp, #41]	@ 0x29
c0deaa9e:	f88d 0024 	strb.w	r0, [sp, #36]	@ 0x24
c0deaaa2:	f105 0040 	add.w	r0, r5, #64	@ 0x40
c0deaaa6:	9007      	str	r0, [sp, #28]
c0deaaa8:	2004      	movs	r0, #4
c0deaaaa:	f88d 0018 	strb.w	r0, [sp, #24]
c0deaaae:	f895 0033 	ldrb.w	r0, [r5, #51]	@ 0x33
c0deaab2:	f88d 002a 	strb.w	r0, [sp, #42]	@ 0x2a
c0deaab6:	6a28      	ldr	r0, [r5, #32]
c0deaab8:	b108      	cbz	r0, c0deaabe <displayDetailsPage+0x6a>
c0deaaba:	f7fd fce8 	bl	c0de848e <nbgl_pageRelease>
c0deaabe:	eb09 000a 	add.w	r0, r9, sl
c0deaac2:	6b41      	ldr	r1, [r0, #52]	@ 0x34
c0deaac4:	6401      	str	r1, [r0, #64]	@ 0x40
c0deaac6:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0deaaca:	42a0      	cmp	r0, r4
c0deaacc:	d207      	bcs.n	c0deaade <displayDetailsPage+0x8a>
c0deaace:	2501      	movs	r5, #1
c0deaad0:	eb09 000a 	add.w	r0, r9, sl
c0deaad4:	2e00      	cmp	r6, #0
c0deaad6:	bf18      	it	ne
c0deaad8:	2502      	movne	r5, #2
c0deaada:	6bc6      	ldr	r6, [r0, #60]	@ 0x3c
c0deaadc:	e02d      	b.n	c0deab3a <displayDetailsPage+0xe6>
c0deaade:	eb09 000a 	add.w	r0, r9, sl
c0deaae2:	2500      	movs	r5, #0
c0deaae4:	f10d 076a 	add.w	r7, sp, #106	@ 0x6a
c0deaae8:	6b86      	ldr	r6, [r0, #56]	@ 0x38
c0deaaea:	42a5      	cmp	r5, r4
c0deaaec:	d224      	bcs.n	c0deab38 <displayDetailsPage+0xe4>
c0deaaee:	200c      	movs	r0, #12
c0deaaf0:	4631      	mov	r1, r6
c0deaaf2:	f000 f9f8 	bl	c0deaee6 <OUTLINED_FUNCTION_15>
c0deaaf6:	280c      	cmp	r0, #12
c0deaaf8:	d31c      	bcc.n	c0deab34 <displayDetailsPage+0xe0>
c0deaafa:	eb09 000a 	add.w	r0, r9, sl
c0deaafe:	4631      	mov	r1, r6
c0deab00:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0deab04:	230b      	movs	r3, #11
c0deab06:	f890 0033 	ldrb.w	r0, [r0, #51]	@ 0x33
c0deab0a:	e9cd 7000 	strd	r7, r0, [sp]
c0deab0e:	200c      	movs	r0, #12
c0deab10:	f000 ffc3 	bl	c0deba9a <nbgl_getTextMaxLenInNbLines>
c0deab14:	f8bd 006a 	ldrh.w	r0, [sp, #106]	@ 0x6a
c0deab18:	5c31      	ldrb	r1, [r6, r0]
c0deab1a:	290a      	cmp	r1, #10
c0deab1c:	d101      	bne.n	c0deab22 <displayDetailsPage+0xce>
c0deab1e:	3001      	adds	r0, #1
c0deab20:	e006      	b.n	c0deab30 <displayDetailsPage+0xdc>
c0deab22:	eb09 010a 	add.w	r1, r9, sl
c0deab26:	f891 1033 	ldrb.w	r1, [r1, #51]	@ 0x33
c0deab2a:	2900      	cmp	r1, #0
c0deab2c:	bf08      	it	eq
c0deab2e:	3803      	subeq	r0, #3
c0deab30:	b280      	uxth	r0, r0
c0deab32:	4406      	add	r6, r0
c0deab34:	3501      	adds	r5, #1
c0deab36:	e7d8      	b.n	c0deaaea <displayDetailsPage+0x96>
c0deab38:	2502      	movs	r5, #2
c0deab3a:	eb09 000a 	add.w	r0, r9, sl
c0deab3e:	4631      	mov	r1, r6
c0deab40:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0deab44:	f890 3033 	ldrb.w	r3, [r0, #51]	@ 0x33
c0deab48:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0deab4c:	6446      	str	r6, [r0, #68]	@ 0x44
c0deab4e:	200c      	movs	r0, #12
c0deab50:	f000 ff99 	bl	c0deba86 <nbgl_getTextNbLinesInWidth>
c0deab54:	280c      	cmp	r0, #12
c0deab56:	d319      	bcc.n	c0deab8c <displayDetailsPage+0x138>
c0deab58:	eb09 040a 	add.w	r4, r9, sl
c0deab5c:	f10d 026a 	add.w	r2, sp, #106	@ 0x6a
c0deab60:	230b      	movs	r3, #11
c0deab62:	f894 0033 	ldrb.w	r0, [r4, #51]	@ 0x33
c0deab66:	6c61      	ldr	r1, [r4, #68]	@ 0x44
c0deab68:	e9cd 2000 	strd	r2, r0, [sp]
c0deab6c:	200c      	movs	r0, #12
c0deab6e:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0deab72:	f000 ff92 	bl	c0deba9a <nbgl_getTextMaxLenInNbLines>
c0deab76:	2000      	movs	r0, #0
c0deab78:	f8bd 106a 	ldrh.w	r1, [sp, #106]	@ 0x6a
c0deab7c:	f88d 0026 	strb.w	r0, [sp, #38]	@ 0x26
c0deab80:	6c60      	ldr	r0, [r4, #68]	@ 0x44
c0deab82:	5c42      	ldrb	r2, [r0, r1]
c0deab84:	2a0a      	cmp	r2, #10
c0deab86:	d108      	bne.n	c0deab9a <displayDetailsPage+0x146>
c0deab88:	3101      	adds	r1, #1
c0deab8a:	e00f      	b.n	c0deabac <displayDetailsPage+0x158>
c0deab8c:	2100      	movs	r1, #0
c0deab8e:	eb09 000a 	add.w	r0, r9, sl
c0deab92:	63c1      	str	r1, [r0, #60]	@ 0x3c
c0deab94:	f88d 1027 	strb.w	r1, [sp, #39]	@ 0x27
c0deab98:	e010      	b.n	c0deabbc <displayDetailsPage+0x168>
c0deab9a:	eb09 020a 	add.w	r2, r9, sl
c0deab9e:	f892 2033 	ldrb.w	r2, [r2, #51]	@ 0x33
c0deaba2:	b91a      	cbnz	r2, c0deabac <displayDetailsPage+0x158>
c0deaba4:	2201      	movs	r2, #1
c0deaba6:	3903      	subs	r1, #3
c0deaba8:	f88d 2026 	strb.w	r2, [sp, #38]	@ 0x26
c0deabac:	b289      	uxth	r1, r1
c0deabae:	eb09 020a 	add.w	r2, r9, sl
c0deabb2:	4408      	add	r0, r1
c0deabb4:	63d0      	str	r0, [r2, #60]	@ 0x3c
c0deabb6:	200b      	movs	r0, #11
c0deabb8:	f88d 0027 	strb.w	r0, [sp, #39]	@ 0x27
c0deabbc:	f1b8 0f01 	cmp.w	r8, #1
c0deabc0:	d102      	bne.n	c0deabc8 <displayDetailsPage+0x174>
c0deabc2:	480b      	ldr	r0, [pc, #44]	@ (c0deabf0 <displayDetailsPage+0x19c>)
c0deabc4:	4478      	add	r0, pc
c0deabc6:	9018      	str	r0, [sp, #96]	@ 0x60
c0deabc8:	480a      	ldr	r0, [pc, #40]	@ (c0deabf4 <displayDetailsPage+0x1a0>)
c0deabca:	a913      	add	r1, sp, #76	@ 0x4c
c0deabcc:	aa03      	add	r2, sp, #12
c0deabce:	2301      	movs	r3, #1
c0deabd0:	4478      	add	r0, pc
c0deabd2:	f7fd fa35 	bl	c0de8040 <nbgl_pageDrawGenericContentExt>
c0deabd6:	eb09 010a 	add.w	r1, r9, sl
c0deabda:	6208      	str	r0, [r1, #32]
c0deabdc:	4628      	mov	r0, r5
c0deabde:	f000 fefd 	bl	c0deb9dc <nbgl_refreshSpecial>
c0deabe2:	b01b      	add	sp, #108	@ 0x6c
c0deabe4:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0deabe8:	03000101 	.word	0x03000101
c0deabec:	00000bd0 	.word	0x00000bd0
c0deabf0:	00003059 	.word	0x00003059
c0deabf4:	ffffebb5 	.word	0xffffebb5

c0deabf8 <displayTagValueListModalPage>:
c0deabf8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0deabfc:	b098      	sub	sp, #96	@ 0x60
c0deabfe:	4e44      	ldr	r6, [pc, #272]	@ (c0dead10 <displayTagValueListModalPage+0x118>)
c0deac00:	4605      	mov	r5, r0
c0deac02:	f88d 0044 	strb.w	r0, [sp, #68]	@ 0x44
c0deac06:	2000      	movs	r0, #0
c0deac08:	4688      	mov	r8, r1
c0deac0a:	4940      	ldr	r1, [pc, #256]	@ (c0dead0c <displayTagValueListModalPage+0x114>)
c0deac0c:	9016      	str	r0, [sp, #88]	@ 0x58
c0deac0e:	f88d 0050 	strb.w	r0, [sp, #80]	@ 0x50
c0deac12:	9013      	str	r0, [sp, #76]	@ 0x4c
c0deac14:	f44f 6010 	mov.w	r0, #2304	@ 0x900
c0deac18:	eb09 0406 	add.w	r4, r9, r6
c0deac1c:	f8ad 0048 	strh.w	r0, [sp, #72]	@ 0x48
c0deac20:	f44f 7081 	mov.w	r0, #258	@ 0x102
c0deac24:	9115      	str	r1, [sp, #84]	@ 0x54
c0deac26:	2140      	movs	r1, #64	@ 0x40
c0deac28:	f894 7030 	ldrb.w	r7, [r4, #48]	@ 0x30
c0deac2c:	f8ad 0046 	strh.w	r0, [sp, #70]	@ 0x46
c0deac30:	f88d 7045 	strb.w	r7, [sp, #69]	@ 0x45
c0deac34:	a801      	add	r0, sp, #4
c0deac36:	f001 fc21 	bl	c0dec47c <__aeabi_memclr>
c0deac3a:	2001      	movs	r0, #1
c0deac3c:	f894 1031 	ldrb.w	r1, [r4, #49]	@ 0x31
c0deac40:	f894 2033 	ldrb.w	r2, [r4, #51]	@ 0x33
c0deac44:	f88d 0021 	strb.w	r0, [sp, #33]	@ 0x21
c0deac48:	2004      	movs	r0, #4
c0deac4a:	42a9      	cmp	r1, r5
c0deac4c:	f88d 0010 	strb.w	r0, [sp, #16]
c0deac50:	f88d 2022 	strb.w	r2, [sp, #34]	@ 0x22
c0deac54:	d91b      	bls.n	c0deac8e <displayTagValueListModalPage+0x96>
c0deac56:	1c69      	adds	r1, r5, #1
c0deac58:	eb09 0306 	add.w	r3, r9, r6
c0deac5c:	ea00 0281 	and.w	r2, r0, r1, lsl #2
c0deac60:	b2c9      	uxtb	r1, r1
c0deac62:	f103 0450 	add.w	r4, r3, #80	@ 0x50
c0deac66:	ea00 0085 	and.w	r0, r0, r5, lsl #2
c0deac6a:	0849      	lsrs	r1, r1, #1
c0deac6c:	5c61      	ldrb	r1, [r4, r1]
c0deac6e:	40d1      	lsrs	r1, r2
c0deac70:	f893 2032 	ldrb.w	r2, [r3, #50]	@ 0x32
c0deac74:	f001 0107 	and.w	r1, r1, #7
c0deac78:	1a52      	subs	r2, r2, r1
c0deac7a:	0869      	lsrs	r1, r5, #1
c0deac7c:	5c61      	ldrb	r1, [r4, r1]
c0deac7e:	f883 2032 	strb.w	r2, [r3, #50]	@ 0x32
c0deac82:	fa21 f000 	lsr.w	r0, r1, r0
c0deac86:	f000 0107 	and.w	r1, r0, #7
c0deac8a:	1a50      	subs	r0, r2, r1
c0deac8c:	e00d      	b.n	c0deacaa <displayTagValueListModalPage+0xb2>
c0deac8e:	eb09 0206 	add.w	r2, r9, r6
c0deac92:	ea00 0085 	and.w	r0, r0, r5, lsl #2
c0deac96:	eb02 0155 	add.w	r1, r2, r5, lsr #1
c0deac9a:	f891 1050 	ldrb.w	r1, [r1, #80]	@ 0x50
c0deac9e:	fa21 f000 	lsr.w	r0, r1, r0
c0deaca2:	f000 0107 	and.w	r1, r0, #7
c0deaca6:	f892 0032 	ldrb.w	r0, [r2, #50]	@ 0x32
c0deacaa:	4b1a      	ldr	r3, [pc, #104]	@ (c0dead14 <displayTagValueListModalPage+0x11c>)
c0deacac:	eb09 0206 	add.w	r2, r9, r6
c0deacb0:	2f01      	cmp	r7, #1
c0deacb2:	f882 5031 	strb.w	r5, [r2, #49]	@ 0x31
c0deacb6:	444b      	add	r3, r9
c0deacb8:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
c0deacba:	681b      	ldr	r3, [r3, #0]
c0deacbc:	f88d 101c 	strb.w	r1, [sp, #28]
c0deacc0:	4401      	add	r1, r0
c0deacc2:	b2c0      	uxtb	r0, r0
c0deacc4:	f882 1032 	strb.w	r1, [r2, #50]	@ 0x32
c0deacc8:	eb03 1000 	add.w	r0, r3, r0, lsl #4
c0deaccc:	9005      	str	r0, [sp, #20]
c0deacce:	d102      	bne.n	c0deacd6 <displayTagValueListModalPage+0xde>
c0deacd0:	4811      	ldr	r0, [pc, #68]	@ (c0dead18 <displayTagValueListModalPage+0x120>)
c0deacd2:	4478      	add	r0, pc
c0deacd4:	9016      	str	r0, [sp, #88]	@ 0x58
c0deacd6:	eb09 0006 	add.w	r0, r9, r6
c0deacda:	6a00      	ldr	r0, [r0, #32]
c0deacdc:	b108      	cbz	r0, c0deace2 <displayTagValueListModalPage+0xea>
c0deacde:	f7fd fbd6 	bl	c0de848e <nbgl_pageRelease>
c0deace2:	480e      	ldr	r0, [pc, #56]	@ (c0dead1c <displayTagValueListModalPage+0x124>)
c0deace4:	a911      	add	r1, sp, #68	@ 0x44
c0deace6:	aa01      	add	r2, sp, #4
c0deace8:	2301      	movs	r3, #1
c0deacea:	2501      	movs	r5, #1
c0deacec:	4478      	add	r0, pc
c0deacee:	f7fd f9a7 	bl	c0de8040 <nbgl_pageDrawGenericContentExt>
c0deacf2:	eb09 0106 	add.w	r1, r9, r6
c0deacf6:	f1b8 0f00 	cmp.w	r8, #0
c0deacfa:	6208      	str	r0, [r1, #32]
c0deacfc:	bf18      	it	ne
c0deacfe:	2502      	movne	r5, #2
c0dead00:	4628      	mov	r0, r5
c0dead02:	f000 fe6b 	bl	c0deb9dc <nbgl_refreshSpecial>
c0dead06:	b018      	add	sp, #96	@ 0x60
c0dead08:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0dead0c:	04000101 	.word	0x04000101
c0dead10:	00000bd0 	.word	0x00000bd0
c0dead14:	00000918 	.word	0x00000918
c0dead18:	00002f4b 	.word	0x00002f4b
c0dead1c:	ffffea99 	.word	0xffffea99

c0dead20 <bundleNavReviewChoice>:
c0dead20:	b110      	cbz	r0, c0dead28 <bundleNavReviewChoice+0x8>
c0dead22:	4805      	ldr	r0, [pc, #20]	@ (c0dead38 <bundleNavReviewChoice+0x18>)
c0dead24:	f000 b8db 	b.w	c0deaede <OUTLINED_FUNCTION_13>
c0dead28:	4803      	ldr	r0, [pc, #12]	@ (c0dead38 <bundleNavReviewChoice+0x18>)
c0dead2a:	f859 0000 	ldr.w	r0, [r9, r0]
c0dead2e:	4903      	ldr	r1, [pc, #12]	@ (c0dead3c <bundleNavReviewChoice+0x1c>)
c0dead30:	4479      	add	r1, pc
c0dead32:	f000 b863 	b.w	c0deadfc <bundleNavReviewAskRejectionConfirmation>
c0dead36:	bf00      	nop
c0dead38:	00000c4c 	.word	0x00000c4c
c0dead3c:	0000011d 	.word	0x0000011d

c0dead40 <initWarningTipBox>:
c0dead40:	4923      	ldr	r1, [pc, #140]	@ (c0deadd0 <initWarningTipBox+0x90>)
c0dead42:	eb09 0201 	add.w	r2, r9, r1
c0dead46:	6f92      	ldr	r2, [r2, #120]	@ 0x78
c0dead48:	b15a      	cbz	r2, c0dead62 <initWarningTipBox+0x22>
c0dead4a:	6812      	ldr	r2, [r2, #0]
c0dead4c:	07d3      	lsls	r3, r2, #31
c0dead4e:	d111      	bne.n	c0dead74 <initWarningTipBox+0x34>
c0dead50:	0753      	lsls	r3, r2, #29
c0dead52:	d415      	bmi.n	c0dead80 <initWarningTipBox+0x40>
c0dead54:	0793      	lsls	r3, r2, #30
c0dead56:	d419      	bmi.n	c0dead8c <initWarningTipBox+0x4c>
c0dead58:	f002 0310 	and.w	r3, r2, #16
c0dead5c:	0712      	lsls	r2, r2, #28
c0dead5e:	d42c      	bmi.n	c0deadba <initWarningTipBox+0x7a>
c0dead60:	bb9b      	cbnz	r3, c0deadca <initWarningTipBox+0x8a>
c0dead62:	b348      	cbz	r0, c0deadb8 <initWarningTipBox+0x78>
c0dead64:	491b      	ldr	r1, [pc, #108]	@ (c0deadd4 <initWarningTipBox+0x94>)
c0dead66:	2200      	movs	r2, #0
c0dead68:	4449      	add	r1, r9
c0dead6a:	620a      	str	r2, [r1, #32]
c0dead6c:	6842      	ldr	r2, [r0, #4]
c0dead6e:	62ca      	str	r2, [r1, #44]	@ 0x2c
c0dead70:	6800      	ldr	r0, [r0, #0]
c0dead72:	e01b      	b.n	c0deadac <initWarningTipBox+0x6c>
c0dead74:	06d0      	lsls	r0, r2, #27
c0dead76:	4a18      	ldr	r2, [pc, #96]	@ (c0deadd8 <initWarningTipBox+0x98>)
c0dead78:	4818      	ldr	r0, [pc, #96]	@ (c0deaddc <initWarningTipBox+0x9c>)
c0dead7a:	447a      	add	r2, pc
c0dead7c:	4478      	add	r0, pc
c0dead7e:	e00a      	b.n	c0dead96 <initWarningTipBox+0x56>
c0dead80:	06d0      	lsls	r0, r2, #27
c0dead82:	4a17      	ldr	r2, [pc, #92]	@ (c0deade0 <initWarningTipBox+0xa0>)
c0dead84:	4817      	ldr	r0, [pc, #92]	@ (c0deade4 <initWarningTipBox+0xa4>)
c0dead86:	447a      	add	r2, pc
c0dead88:	4478      	add	r0, pc
c0dead8a:	e004      	b.n	c0dead96 <initWarningTipBox+0x56>
c0dead8c:	06d0      	lsls	r0, r2, #27
c0dead8e:	4a16      	ldr	r2, [pc, #88]	@ (c0deade8 <initWarningTipBox+0xa8>)
c0dead90:	4816      	ldr	r0, [pc, #88]	@ (c0deadec <initWarningTipBox+0xac>)
c0dead92:	447a      	add	r2, pc
c0dead94:	4478      	add	r0, pc
c0dead96:	bf58      	it	pl
c0dead98:	4610      	movpl	r0, r2
c0dead9a:	4449      	add	r1, r9
c0dead9c:	2201      	movs	r2, #1
c0dead9e:	f881 2021 	strb.w	r2, [r1, #33]	@ 0x21
c0deada2:	490c      	ldr	r1, [pc, #48]	@ (c0deadd4 <initWarningTipBox+0x94>)
c0deada4:	2200      	movs	r2, #0
c0deada6:	4449      	add	r1, r9
c0deada8:	620a      	str	r2, [r1, #32]
c0deadaa:	62ca      	str	r2, [r1, #44]	@ 0x2c
c0deadac:	4909      	ldr	r1, [pc, #36]	@ (c0deadd4 <initWarningTipBox+0x94>)
c0deadae:	f640 1213 	movw	r2, #2323	@ 0x913
c0deadb2:	4449      	add	r1, r9
c0deadb4:	860a      	strh	r2, [r1, #48]	@ 0x30
c0deadb6:	6288      	str	r0, [r1, #40]	@ 0x28
c0deadb8:	4770      	bx	lr
c0deadba:	4a0d      	ldr	r2, [pc, #52]	@ (c0deadf0 <initWarningTipBox+0xb0>)
c0deadbc:	480d      	ldr	r0, [pc, #52]	@ (c0deadf4 <initWarningTipBox+0xb4>)
c0deadbe:	2b00      	cmp	r3, #0
c0deadc0:	4478      	add	r0, pc
c0deadc2:	447a      	add	r2, pc
c0deadc4:	bf08      	it	eq
c0deadc6:	4610      	moveq	r0, r2
c0deadc8:	e7e7      	b.n	c0dead9a <initWarningTipBox+0x5a>
c0deadca:	480b      	ldr	r0, [pc, #44]	@ (c0deadf8 <initWarningTipBox+0xb8>)
c0deadcc:	4478      	add	r0, pc
c0deadce:	e7e4      	b.n	c0dead9a <initWarningTipBox+0x5a>
c0deadd0:	00000918 	.word	0x00000918
c0deadd4:	000009a8 	.word	0x000009a8
c0deadd8:	00002ba5 	.word	0x00002ba5
c0deaddc:	00002d30 	.word	0x00002d30
c0deade0:	00003341 	.word	0x00003341
c0deade4:	00002cc0 	.word	0x00002cc0
c0deade8:	0000338c 	.word	0x0000338c
c0deadec:	00003131 	.word	0x00003131
c0deadf0:	00003176 	.word	0x00003176
c0deadf4:	00003377 	.word	0x00003377
c0deadf8:	0000302f 	.word	0x0000302f

c0deadfc <bundleNavReviewAskRejectionConfirmation>:
c0deadfc:	f020 00f0 	bic.w	r0, r0, #240	@ 0xf0
c0deae00:	b130      	cbz	r0, c0deae10 <bundleNavReviewAskRejectionConfirmation+0x14>
c0deae02:	2801      	cmp	r0, #1
c0deae04:	d109      	bne.n	c0deae1a <bundleNavReviewAskRejectionConfirmation+0x1e>
c0deae06:	4b0d      	ldr	r3, [pc, #52]	@ (c0deae3c <bundleNavReviewAskRejectionConfirmation+0x40>)
c0deae08:	480d      	ldr	r0, [pc, #52]	@ (c0deae40 <bundleNavReviewAskRejectionConfirmation+0x44>)
c0deae0a:	447b      	add	r3, pc
c0deae0c:	4478      	add	r0, pc
c0deae0e:	e008      	b.n	c0deae22 <bundleNavReviewAskRejectionConfirmation+0x26>
c0deae10:	4b08      	ldr	r3, [pc, #32]	@ (c0deae34 <bundleNavReviewAskRejectionConfirmation+0x38>)
c0deae12:	4809      	ldr	r0, [pc, #36]	@ (c0deae38 <bundleNavReviewAskRejectionConfirmation+0x3c>)
c0deae14:	447b      	add	r3, pc
c0deae16:	4478      	add	r0, pc
c0deae18:	e003      	b.n	c0deae22 <bundleNavReviewAskRejectionConfirmation+0x26>
c0deae1a:	4b0a      	ldr	r3, [pc, #40]	@ (c0deae44 <bundleNavReviewAskRejectionConfirmation+0x48>)
c0deae1c:	480a      	ldr	r0, [pc, #40]	@ (c0deae48 <bundleNavReviewAskRejectionConfirmation+0x4c>)
c0deae1e:	447b      	add	r3, pc
c0deae20:	4478      	add	r0, pc
c0deae22:	b5e0      	push	{r5, r6, r7, lr}
c0deae24:	9100      	str	r1, [sp, #0]
c0deae26:	2100      	movs	r1, #0
c0deae28:	4a08      	ldr	r2, [pc, #32]	@ (c0deae4c <bundleNavReviewAskRejectionConfirmation+0x50>)
c0deae2a:	447a      	add	r2, pc
c0deae2c:	f7fe fc82 	bl	c0de9734 <nbgl_useCaseConfirm>
c0deae30:	bd8c      	pop	{r2, r3, r7, pc}
c0deae32:	bf00      	nop
c0deae34:	00002dc7 	.word	0x00002dc7
c0deae38:	00002c1e 	.word	0x00002c1e
c0deae3c:	000030a8 	.word	0x000030a8
c0deae40:	0000347d 	.word	0x0000347d
c0deae44:	00002c79 	.word	0x00002c79
c0deae48:	0000317f 	.word	0x0000317f
c0deae4c:	00002f3f 	.word	0x00002f3f

c0deae50 <bundleNavReviewConfirmRejection>:
c0deae50:	4801      	ldr	r0, [pc, #4]	@ (c0deae58 <bundleNavReviewConfirmRejection+0x8>)
c0deae52:	f000 b840 	b.w	c0deaed6 <OUTLINED_FUNCTION_12>
c0deae56:	bf00      	nop
c0deae58:	00000c4c 	.word	0x00000c4c

c0deae5c <bundleNavReviewStreamingConfirmRejection>:
c0deae5c:	4801      	ldr	r0, [pc, #4]	@ (c0deae64 <bundleNavReviewStreamingConfirmRejection+0x8>)
c0deae5e:	f000 b83a 	b.w	c0deaed6 <OUTLINED_FUNCTION_12>
c0deae62:	bf00      	nop
c0deae64:	00000c4c 	.word	0x00000c4c

c0deae68 <OUTLINED_FUNCTION_0>:
c0deae68:	461c      	mov	r4, r3
c0deae6a:	4615      	mov	r5, r2
c0deae6c:	460e      	mov	r6, r1
c0deae6e:	4607      	mov	r7, r0
c0deae70:	f7fd bd1c 	b.w	c0de88ac <reset_callbacks_and_context>

c0deae74 <OUTLINED_FUNCTION_1>:
c0deae74:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0deae78:	2301      	movs	r3, #1
c0deae7a:	f000 bdff 	b.w	c0deba7c <nbgl_getTextHeightInWidth>

c0deae7e <OUTLINED_FUNCTION_2>:
c0deae7e:	f8da 0004 	ldr.w	r0, [sl, #4]
c0deae82:	eb00 0086 	add.w	r0, r0, r6, lsl #2
c0deae86:	f000 bfcd 	b.w	c0debe24 <pic>

c0deae8a <OUTLINED_FUNCTION_3>:
c0deae8a:	2001      	movs	r0, #1
c0deae8c:	f000 bda6 	b.w	c0deb9dc <nbgl_refreshSpecial>

c0deae90 <OUTLINED_FUNCTION_4>:
c0deae90:	2000      	movs	r0, #0
c0deae92:	f7fd bde9 	b.w	c0de8a68 <getNbPagesForGenericContents>

c0deae96 <OUTLINED_FUNCTION_5>:
c0deae96:	2008      	movs	r0, #8
c0deae98:	f7f8 bdbd 	b.w	c0de3a16 <os_io_seph_cmd_piezo_play_tune>

c0deae9c <OUTLINED_FUNCTION_6>:
c0deae9c:	f880 1088 	strb.w	r1, [r0, #136]	@ 0x88
c0deaea0:	6f81      	ldr	r1, [r0, #120]	@ 0x78
c0deaea2:	6808      	ldr	r0, [r1, #0]
c0deaea4:	2800      	cmp	r0, #0
c0deaea6:	4770      	bx	lr

c0deaea8 <OUTLINED_FUNCTION_8>:
c0deaea8:	9001      	str	r0, [sp, #4]
c0deaeaa:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0deaeac:	9000      	str	r0, [sp, #0]
c0deaeae:	4638      	mov	r0, r7
c0deaeb0:	f7fe bd4c 	b.w	c0de994c <useCaseReview>

c0deaeb4 <OUTLINED_FUNCTION_9>:
c0deaeb4:	eb09 000b 	add.w	r0, r9, fp
c0deaeb8:	f8d0 0084 	ldr.w	r0, [r0, #132]	@ 0x84
c0deaebc:	4770      	bx	lr

c0deaebe <OUTLINED_FUNCTION_10>:
c0deaebe:	eb09 0005 	add.w	r0, r9, r5
c0deaec2:	f8d0 0080 	ldr.w	r0, [r0, #128]	@ 0x80
c0deaec6:	4770      	bx	lr

c0deaec8 <OUTLINED_FUNCTION_11>:
c0deaec8:	f44f 7bfc 	mov.w	fp, #504	@ 0x1f8
c0deaecc:	2b00      	cmp	r3, #0
c0deaece:	4682      	mov	sl, r0
c0deaed0:	4698      	mov	r8, r3
c0deaed2:	4616      	mov	r6, r2
c0deaed4:	4770      	bx	lr

c0deaed6 <OUTLINED_FUNCTION_12>:
c0deaed6:	4448      	add	r0, r9
c0deaed8:	6841      	ldr	r1, [r0, #4]
c0deaeda:	2000      	movs	r0, #0
c0deaedc:	4708      	bx	r1

c0deaede <OUTLINED_FUNCTION_13>:
c0deaede:	4448      	add	r0, r9
c0deaee0:	6841      	ldr	r1, [r0, #4]
c0deaee2:	2001      	movs	r0, #1
c0deaee4:	4708      	bx	r1

c0deaee6 <OUTLINED_FUNCTION_15>:
c0deaee6:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0deaeea:	2300      	movs	r3, #0
c0deaeec:	f000 bdcb 	b.w	c0deba86 <nbgl_getTextNbLinesInWidth>

c0deaef0 <OUTLINED_FUNCTION_16>:
c0deaef0:	200b      	movs	r0, #11
c0deaef2:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
c0deaef6:	f000 bdc1 	b.w	c0deba7c <nbgl_getTextHeightInWidth>

c0deaefa <OUTLINED_FUNCTION_17>:
c0deaefa:	4630      	mov	r0, r6
c0deaefc:	f001 babe 	b.w	c0dec47c <__aeabi_memclr>

c0deaf00 <OUTLINED_FUNCTION_18>:
c0deaf00:	f10a 0004 	add.w	r0, sl, #4
c0deaf04:	f105 0110 	add.w	r1, r5, #16
c0deaf08:	4770      	bx	lr

c0deaf0a <OUTLINED_FUNCTION_19>:
c0deaf0a:	f884 0068 	strb.w	r0, [r4, #104]	@ 0x68
c0deaf0e:	6de0      	ldr	r0, [r4, #92]	@ 0x5c
c0deaf10:	f7ff bd26 	b.w	c0dea960 <displayModalDetails>

c0deaf14 <bip32_path_read>:
c0deaf14:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0deaf18:	b10b      	cbz	r3, c0deaf1e <bip32_path_read+0xa>
c0deaf1a:	2b0a      	cmp	r3, #10
c0deaf1c:	d902      	bls.n	c0deaf24 <bip32_path_read+0x10>
c0deaf1e:	2000      	movs	r0, #0
c0deaf20:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0deaf24:	4692      	mov	sl, r2
c0deaf26:	460e      	mov	r6, r1
c0deaf28:	4683      	mov	fp, r0
c0deaf2a:	425f      	negs	r7, r3
c0deaf2c:	2500      	movs	r5, #0
c0deaf2e:	f04f 0800 	mov.w	r8, #0
c0deaf32:	9301      	str	r3, [sp, #4]
c0deaf34:	42af      	cmp	r7, r5
c0deaf36:	d00c      	beq.n	c0deaf52 <bip32_path_read+0x3e>
c0deaf38:	f108 0404 	add.w	r4, r8, #4
c0deaf3c:	42b4      	cmp	r4, r6
c0deaf3e:	d808      	bhi.n	c0deaf52 <bip32_path_read+0x3e>
c0deaf40:	4658      	mov	r0, fp
c0deaf42:	4641      	mov	r1, r8
c0deaf44:	f000 fb71 	bl	c0deb62a <read_u32_be>
c0deaf48:	f84a 0008 	str.w	r0, [sl, r8]
c0deaf4c:	3d01      	subs	r5, #1
c0deaf4e:	46a0      	mov	r8, r4
c0deaf50:	e7f0      	b.n	c0deaf34 <bip32_path_read+0x20>
c0deaf52:	9a01      	ldr	r2, [sp, #4]
c0deaf54:	4269      	negs	r1, r5
c0deaf56:	2000      	movs	r0, #0
c0deaf58:	4291      	cmp	r1, r2
c0deaf5a:	bf28      	it	cs
c0deaf5c:	2001      	movcs	r0, #1
c0deaf5e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0deaf62 <buffer_seek_cur>:
c0deaf62:	6882      	ldr	r2, [r0, #8]
c0deaf64:	1889      	adds	r1, r1, r2
c0deaf66:	d205      	bcs.n	c0deaf74 <buffer_seek_cur+0x12>
c0deaf68:	6842      	ldr	r2, [r0, #4]
c0deaf6a:	4291      	cmp	r1, r2
c0deaf6c:	bf9e      	ittt	ls
c0deaf6e:	6081      	strls	r1, [r0, #8]
c0deaf70:	2001      	movls	r0, #1
c0deaf72:	4770      	bxls	lr
c0deaf74:	2000      	movs	r0, #0
c0deaf76:	4770      	bx	lr

c0deaf78 <buffer_read_u8>:
c0deaf78:	b510      	push	{r4, lr}
c0deaf7a:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0deaf7e:	429a      	cmp	r2, r3
c0deaf80:	d00a      	beq.n	c0deaf98 <buffer_read_u8+0x20>
c0deaf82:	6804      	ldr	r4, [r0, #0]
c0deaf84:	5ce4      	ldrb	r4, [r4, r3]
c0deaf86:	700c      	strb	r4, [r1, #0]
c0deaf88:	6881      	ldr	r1, [r0, #8]
c0deaf8a:	3101      	adds	r1, #1
c0deaf8c:	d206      	bcs.n	c0deaf9c <buffer_read_u8+0x24>
c0deaf8e:	6844      	ldr	r4, [r0, #4]
c0deaf90:	42a1      	cmp	r1, r4
c0deaf92:	bf98      	it	ls
c0deaf94:	6081      	strls	r1, [r0, #8]
c0deaf96:	e001      	b.n	c0deaf9c <buffer_read_u8+0x24>
c0deaf98:	2000      	movs	r0, #0
c0deaf9a:	7008      	strb	r0, [r1, #0]
c0deaf9c:	1ad0      	subs	r0, r2, r3
c0deaf9e:	bf18      	it	ne
c0deafa0:	2001      	movne	r0, #1
c0deafa2:	bd10      	pop	{r4, pc}

c0deafa4 <buffer_read_u64>:
c0deafa4:	b570      	push	{r4, r5, r6, lr}
c0deafa6:	f000 f87d 	bl	c0deb0a4 <OUTLINED_FUNCTION_0>
c0deafaa:	2e07      	cmp	r6, #7
c0deafac:	d904      	bls.n	c0deafb8 <buffer_read_u64+0x14>
c0deafae:	6820      	ldr	r0, [r4, #0]
c0deafb0:	b132      	cbz	r2, c0deafc0 <buffer_read_u64+0x1c>
c0deafb2:	f000 fb71 	bl	c0deb698 <read_u64_le>
c0deafb6:	e005      	b.n	c0deafc4 <buffer_read_u64+0x20>
c0deafb8:	2000      	movs	r0, #0
c0deafba:	e9c5 0000 	strd	r0, r0, [r5]
c0deafbe:	e00c      	b.n	c0deafda <buffer_read_u64+0x36>
c0deafc0:	f000 fb3f 	bl	c0deb642 <read_u64_be>
c0deafc4:	e9c5 0100 	strd	r0, r1, [r5]
c0deafc8:	68a0      	ldr	r0, [r4, #8]
c0deafca:	f110 0f09 	cmn.w	r0, #9
c0deafce:	d804      	bhi.n	c0deafda <buffer_read_u64+0x36>
c0deafd0:	6861      	ldr	r1, [r4, #4]
c0deafd2:	3008      	adds	r0, #8
c0deafd4:	4288      	cmp	r0, r1
c0deafd6:	bf98      	it	ls
c0deafd8:	60a0      	strls	r0, [r4, #8]
c0deafda:	2000      	movs	r0, #0
c0deafdc:	2e07      	cmp	r6, #7
c0deafde:	bf88      	it	hi
c0deafe0:	2001      	movhi	r0, #1
c0deafe2:	bd70      	pop	{r4, r5, r6, pc}

c0deafe4 <buffer_read_varint>:
c0deafe4:	b5b0      	push	{r4, r5, r7, lr}
c0deafe6:	4604      	mov	r4, r0
c0deafe8:	460d      	mov	r5, r1
c0deafea:	6800      	ldr	r0, [r0, #0]
c0deafec:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0deaff0:	4410      	add	r0, r2
c0deaff2:	1a89      	subs	r1, r1, r2
c0deaff4:	462a      	mov	r2, r5
c0deaff6:	f000 fbb9 	bl	c0deb76c <varint_read>
c0deaffa:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0deaffe:	dd0a      	ble.n	c0deb016 <buffer_read_varint+0x32>
c0deb000:	68a1      	ldr	r1, [r4, #8]
c0deb002:	1840      	adds	r0, r0, r1
c0deb004:	d205      	bcs.n	c0deb012 <buffer_read_varint+0x2e>
c0deb006:	6861      	ldr	r1, [r4, #4]
c0deb008:	4288      	cmp	r0, r1
c0deb00a:	bf9e      	ittt	ls
c0deb00c:	60a0      	strls	r0, [r4, #8]
c0deb00e:	2001      	movls	r0, #1
c0deb010:	bdb0      	popls	{r4, r5, r7, pc}
c0deb012:	2000      	movs	r0, #0
c0deb014:	bdb0      	pop	{r4, r5, r7, pc}
c0deb016:	2000      	movs	r0, #0
c0deb018:	e9c5 0000 	strd	r0, r0, [r5]
c0deb01c:	bdb0      	pop	{r4, r5, r7, pc}

c0deb01e <buffer_read_bip32_path>:
c0deb01e:	b5b0      	push	{r4, r5, r7, lr}
c0deb020:	4604      	mov	r4, r0
c0deb022:	4615      	mov	r5, r2
c0deb024:	460a      	mov	r2, r1
c0deb026:	6800      	ldr	r0, [r0, #0]
c0deb028:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0deb02c:	4418      	add	r0, r3
c0deb02e:	1ac9      	subs	r1, r1, r3
c0deb030:	462b      	mov	r3, r5
c0deb032:	f7ff ff6f 	bl	c0deaf14 <bip32_path_read>
c0deb036:	b140      	cbz	r0, c0deb04a <buffer_read_bip32_path+0x2c>
c0deb038:	68a2      	ldr	r2, [r4, #8]
c0deb03a:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0deb03e:	4291      	cmp	r1, r2
c0deb040:	d303      	bcc.n	c0deb04a <buffer_read_bip32_path+0x2c>
c0deb042:	6862      	ldr	r2, [r4, #4]
c0deb044:	4291      	cmp	r1, r2
c0deb046:	bf98      	it	ls
c0deb048:	60a1      	strls	r1, [r4, #8]
c0deb04a:	bdb0      	pop	{r4, r5, r7, pc}

c0deb04c <buffer_copy>:
c0deb04c:	b5b0      	push	{r4, r5, r7, lr}
c0deb04e:	4614      	mov	r4, r2
c0deb050:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0deb054:	1a9d      	subs	r5, r3, r2
c0deb056:	42a5      	cmp	r5, r4
c0deb058:	d806      	bhi.n	c0deb068 <buffer_copy+0x1c>
c0deb05a:	6800      	ldr	r0, [r0, #0]
c0deb05c:	4402      	add	r2, r0
c0deb05e:	4608      	mov	r0, r1
c0deb060:	4611      	mov	r1, r2
c0deb062:	462a      	mov	r2, r5
c0deb064:	f001 fa02 	bl	c0dec46c <__aeabi_memmove>
c0deb068:	2000      	movs	r0, #0
c0deb06a:	42a5      	cmp	r5, r4
c0deb06c:	bf98      	it	ls
c0deb06e:	2001      	movls	r0, #1
c0deb070:	bdb0      	pop	{r4, r5, r7, pc}

c0deb072 <buffer_move>:
c0deb072:	b5b0      	push	{r4, r5, r7, lr}
c0deb074:	4615      	mov	r5, r2
c0deb076:	4604      	mov	r4, r0
c0deb078:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0deb07c:	1a12      	subs	r2, r2, r0
c0deb07e:	42aa      	cmp	r2, r5
c0deb080:	bf84      	itt	hi
c0deb082:	2000      	movhi	r0, #0
c0deb084:	bdb0      	pophi	{r4, r5, r7, pc}
c0deb086:	6823      	ldr	r3, [r4, #0]
c0deb088:	4403      	add	r3, r0
c0deb08a:	4608      	mov	r0, r1
c0deb08c:	4619      	mov	r1, r3
c0deb08e:	f001 f9ed 	bl	c0dec46c <__aeabi_memmove>
c0deb092:	68a0      	ldr	r0, [r4, #8]
c0deb094:	1940      	adds	r0, r0, r5
c0deb096:	d203      	bcs.n	c0deb0a0 <buffer_move+0x2e>
c0deb098:	6861      	ldr	r1, [r4, #4]
c0deb09a:	4288      	cmp	r0, r1
c0deb09c:	bf98      	it	ls
c0deb09e:	60a0      	strls	r0, [r4, #8]
c0deb0a0:	2001      	movs	r0, #1
c0deb0a2:	bdb0      	pop	{r4, r5, r7, pc}

c0deb0a4 <OUTLINED_FUNCTION_0>:
c0deb0a4:	4604      	mov	r4, r0
c0deb0a6:	460d      	mov	r5, r1
c0deb0a8:	6840      	ldr	r0, [r0, #4]
c0deb0aa:	68a1      	ldr	r1, [r4, #8]
c0deb0ac:	1a46      	subs	r6, r0, r1
c0deb0ae:	4770      	bx	lr

c0deb0b0 <bip32_derive_with_seed_init_privkey_256>:
c0deb0b0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0deb0b4:	b095      	sub	sp, #84	@ 0x54
c0deb0b6:	460d      	mov	r5, r1
c0deb0b8:	4607      	mov	r7, r0
c0deb0ba:	a904      	add	r1, sp, #16
c0deb0bc:	469a      	mov	sl, r3
c0deb0be:	4614      	mov	r4, r2
c0deb0c0:	4628      	mov	r0, r5
c0deb0c2:	f001 f819 	bl	c0dec0f8 <cx_ecdomain_parameters_length>
c0deb0c6:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0deb0ca:	4606      	mov	r6, r0
c0deb0cc:	b9e0      	cbnz	r0, c0deb108 <bip32_derive_with_seed_init_privkey_256+0x58>
c0deb0ce:	9804      	ldr	r0, [sp, #16]
c0deb0d0:	2820      	cmp	r0, #32
c0deb0d2:	d117      	bne.n	c0deb104 <bip32_derive_with_seed_init_privkey_256+0x54>
c0deb0d4:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0deb0d6:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0deb0da:	ab05      	add	r3, sp, #20
c0deb0dc:	e9cd 3200 	strd	r3, r2, [sp]
c0deb0e0:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0deb0e4:	4638      	mov	r0, r7
c0deb0e6:	4629      	mov	r1, r5
c0deb0e8:	4622      	mov	r2, r4
c0deb0ea:	4653      	mov	r3, sl
c0deb0ec:	f000 f818 	bl	c0deb120 <os_derive_bip32_with_seed_no_throw>
c0deb0f0:	4606      	mov	r6, r0
c0deb0f2:	b948      	cbnz	r0, c0deb108 <bip32_derive_with_seed_init_privkey_256+0x58>
c0deb0f4:	9a04      	ldr	r2, [sp, #16]
c0deb0f6:	a905      	add	r1, sp, #20
c0deb0f8:	4628      	mov	r0, r5
c0deb0fa:	4643      	mov	r3, r8
c0deb0fc:	f000 fc44 	bl	c0deb988 <cx_ecfp_init_private_key_no_throw>
c0deb100:	4606      	mov	r6, r0
c0deb102:	e001      	b.n	c0deb108 <bip32_derive_with_seed_init_privkey_256+0x58>
c0deb104:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0deb108:	a805      	add	r0, sp, #20
c0deb10a:	2140      	movs	r1, #64	@ 0x40
c0deb10c:	f001 f9c4 	bl	c0dec498 <explicit_bzero>
c0deb110:	b116      	cbz	r6, c0deb118 <bip32_derive_with_seed_init_privkey_256+0x68>
c0deb112:	4640      	mov	r0, r8
c0deb114:	f000 f89f 	bl	c0deb256 <OUTLINED_FUNCTION_0>
c0deb118:	4630      	mov	r0, r6
c0deb11a:	b015      	add	sp, #84	@ 0x54
c0deb11c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0deb120 <os_derive_bip32_with_seed_no_throw>:
c0deb120:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0deb124:	b090      	sub	sp, #64	@ 0x40
c0deb126:	f10d 0810 	add.w	r8, sp, #16
c0deb12a:	4607      	mov	r7, r0
c0deb12c:	469b      	mov	fp, r3
c0deb12e:	4616      	mov	r6, r2
c0deb130:	460c      	mov	r4, r1
c0deb132:	4640      	mov	r0, r8
c0deb134:	f001 f9f6 	bl	c0dec524 <setjmp>
c0deb138:	b285      	uxth	r5, r0
c0deb13a:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0deb13e:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0deb142:	b155      	cbz	r5, c0deb15a <os_derive_bip32_with_seed_no_throw+0x3a>
c0deb144:	2000      	movs	r0, #0
c0deb146:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0deb14a:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0deb14c:	f001 f884 	bl	c0dec258 <try_context_set>
c0deb150:	2140      	movs	r1, #64	@ 0x40
c0deb152:	4650      	mov	r0, sl
c0deb154:	f001 f9a0 	bl	c0dec498 <explicit_bzero>
c0deb158:	e012      	b.n	c0deb180 <os_derive_bip32_with_seed_no_throw+0x60>
c0deb15a:	a804      	add	r0, sp, #16
c0deb15c:	f001 f87c 	bl	c0dec258 <try_context_set>
c0deb160:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0deb162:	900e      	str	r0, [sp, #56]	@ 0x38
c0deb164:	4668      	mov	r0, sp
c0deb166:	4632      	mov	r2, r6
c0deb168:	465b      	mov	r3, fp
c0deb16a:	f8c0 a000 	str.w	sl, [r0]
c0deb16e:	6041      	str	r1, [r0, #4]
c0deb170:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0deb172:	6081      	str	r1, [r0, #8]
c0deb174:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0deb176:	60c1      	str	r1, [r0, #12]
c0deb178:	4638      	mov	r0, r7
c0deb17a:	4621      	mov	r1, r4
c0deb17c:	f000 ffc6 	bl	c0dec10c <os_perso_derive_node_with_seed_key>
c0deb180:	f001 f862 	bl	c0dec248 <try_context_get>
c0deb184:	4540      	cmp	r0, r8
c0deb186:	d102      	bne.n	c0deb18e <os_derive_bip32_with_seed_no_throw+0x6e>
c0deb188:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0deb18a:	f001 f865 	bl	c0dec258 <try_context_set>
c0deb18e:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0deb192:	b918      	cbnz	r0, c0deb19c <os_derive_bip32_with_seed_no_throw+0x7c>
c0deb194:	4628      	mov	r0, r5
c0deb196:	b010      	add	sp, #64	@ 0x40
c0deb198:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0deb19c:	f000 fc9d 	bl	c0debada <os_longjmp>

c0deb1a0 <bip32_derive_with_seed_get_pubkey_256>:
c0deb1a0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0deb1a2:	b0a1      	sub	sp, #132	@ 0x84
c0deb1a4:	460e      	mov	r6, r1
c0deb1a6:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0deb1a8:	9103      	str	r1, [sp, #12]
c0deb1aa:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0deb1ac:	9102      	str	r1, [sp, #8]
c0deb1ae:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0deb1b0:	9101      	str	r1, [sp, #4]
c0deb1b2:	a917      	add	r1, sp, #92	@ 0x5c
c0deb1b4:	9100      	str	r1, [sp, #0]
c0deb1b6:	4631      	mov	r1, r6
c0deb1b8:	f7ff ff7a 	bl	c0deb0b0 <bip32_derive_with_seed_init_privkey_256>
c0deb1bc:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0deb1be:	4605      	mov	r5, r0
c0deb1c0:	b9b8      	cbnz	r0, c0deb1f2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0deb1c2:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0deb1c4:	2301      	movs	r3, #1
c0deb1c6:	9000      	str	r0, [sp, #0]
c0deb1c8:	af04      	add	r7, sp, #16
c0deb1ca:	aa17      	add	r2, sp, #92	@ 0x5c
c0deb1cc:	4630      	mov	r0, r6
c0deb1ce:	4639      	mov	r1, r7
c0deb1d0:	f000 fbd5 	bl	c0deb97e <cx_ecfp_generate_pair2_no_throw>
c0deb1d4:	4605      	mov	r5, r0
c0deb1d6:	b960      	cbnz	r0, c0deb1f2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0deb1d8:	9805      	ldr	r0, [sp, #20]
c0deb1da:	2841      	cmp	r0, #65	@ 0x41
c0deb1dc:	d107      	bne.n	c0deb1ee <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0deb1de:	f107 0108 	add.w	r1, r7, #8
c0deb1e2:	4620      	mov	r0, r4
c0deb1e4:	2241      	movs	r2, #65	@ 0x41
c0deb1e6:	f001 f93f 	bl	c0dec468 <__aeabi_memcpy>
c0deb1ea:	2500      	movs	r5, #0
c0deb1ec:	e001      	b.n	c0deb1f2 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0deb1ee:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0deb1f2:	a817      	add	r0, sp, #92	@ 0x5c
c0deb1f4:	f000 f82f 	bl	c0deb256 <OUTLINED_FUNCTION_0>
c0deb1f8:	b11d      	cbz	r5, c0deb202 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0deb1fa:	4620      	mov	r0, r4
c0deb1fc:	2141      	movs	r1, #65	@ 0x41
c0deb1fe:	f001 f94b 	bl	c0dec498 <explicit_bzero>
c0deb202:	4628      	mov	r0, r5
c0deb204:	b021      	add	sp, #132	@ 0x84
c0deb206:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0deb208 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0deb208:	b5f0      	push	{r4, r5, r6, r7, lr}
c0deb20a:	b08f      	sub	sp, #60	@ 0x3c
c0deb20c:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0deb20e:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0deb210:	683c      	ldr	r4, [r7, #0]
c0deb212:	9503      	str	r5, [sp, #12]
c0deb214:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0deb216:	9502      	str	r5, [sp, #8]
c0deb218:	2500      	movs	r5, #0
c0deb21a:	9501      	str	r5, [sp, #4]
c0deb21c:	ad05      	add	r5, sp, #20
c0deb21e:	9500      	str	r5, [sp, #0]
c0deb220:	f7ff ff46 	bl	c0deb0b0 <bip32_derive_with_seed_init_privkey_256>
c0deb224:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0deb226:	4606      	mov	r6, r0
c0deb228:	b950      	cbnz	r0, c0deb240 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0deb22a:	ae14      	add	r6, sp, #80	@ 0x50
c0deb22c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0deb22e:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0deb230:	e9cd 6500 	strd	r6, r5, [sp]
c0deb234:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0deb238:	a805      	add	r0, sp, #20
c0deb23a:	f000 fb9b 	bl	c0deb974 <cx_ecdsa_sign_no_throw>
c0deb23e:	4606      	mov	r6, r0
c0deb240:	a805      	add	r0, sp, #20
c0deb242:	f000 f808 	bl	c0deb256 <OUTLINED_FUNCTION_0>
c0deb246:	b11e      	cbz	r6, c0deb250 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0deb248:	4628      	mov	r0, r5
c0deb24a:	4621      	mov	r1, r4
c0deb24c:	f001 f924 	bl	c0dec498 <explicit_bzero>
c0deb250:	4630      	mov	r0, r6
c0deb252:	b00f      	add	sp, #60	@ 0x3c
c0deb254:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0deb256 <OUTLINED_FUNCTION_0>:
c0deb256:	2128      	movs	r1, #40	@ 0x28
c0deb258:	f001 b91e 	b.w	c0dec498 <explicit_bzero>

c0deb25c <format_u64>:
c0deb25c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0deb260:	b1f9      	cbz	r1, c0deb2a2 <format_u64+0x46>
c0deb262:	4615      	mov	r5, r2
c0deb264:	4604      	mov	r4, r0
c0deb266:	f1a1 0801 	sub.w	r8, r1, #1
c0deb26a:	2700      	movs	r7, #0
c0deb26c:	2600      	movs	r6, #0
c0deb26e:	f1b5 000a 	subs.w	r0, r5, #10
c0deb272:	f173 0000 	sbcs.w	r0, r3, #0
c0deb276:	d316      	bcc.n	c0deb2a6 <format_u64+0x4a>
c0deb278:	4619      	mov	r1, r3
c0deb27a:	4628      	mov	r0, r5
c0deb27c:	220a      	movs	r2, #10
c0deb27e:	2300      	movs	r3, #0
c0deb280:	f001 f900 	bl	c0dec484 <__aeabi_uldivmod>
c0deb284:	460b      	mov	r3, r1
c0deb286:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0deb28a:	1cba      	adds	r2, r7, #2
c0deb28c:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0deb290:	4605      	mov	r5, r0
c0deb292:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0deb296:	55e1      	strb	r1, [r4, r7]
c0deb298:	1c79      	adds	r1, r7, #1
c0deb29a:	4542      	cmp	r2, r8
c0deb29c:	460f      	mov	r7, r1
c0deb29e:	d9e6      	bls.n	c0deb26e <format_u64+0x12>
c0deb2a0:	e012      	b.n	c0deb2c8 <format_u64+0x6c>
c0deb2a2:	2600      	movs	r6, #0
c0deb2a4:	e010      	b.n	c0deb2c8 <format_u64+0x6c>
c0deb2a6:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0deb2aa:	19e1      	adds	r1, r4, r7
c0deb2ac:	55e0      	strb	r0, [r4, r7]
c0deb2ae:	2000      	movs	r0, #0
c0deb2b0:	7048      	strb	r0, [r1, #1]
c0deb2b2:	b2c1      	uxtb	r1, r0
c0deb2b4:	428f      	cmp	r7, r1
c0deb2b6:	d906      	bls.n	c0deb2c6 <format_u64+0x6a>
c0deb2b8:	5c62      	ldrb	r2, [r4, r1]
c0deb2ba:	5de3      	ldrb	r3, [r4, r7]
c0deb2bc:	3001      	adds	r0, #1
c0deb2be:	5463      	strb	r3, [r4, r1]
c0deb2c0:	55e2      	strb	r2, [r4, r7]
c0deb2c2:	3f01      	subs	r7, #1
c0deb2c4:	e7f5      	b.n	c0deb2b2 <format_u64+0x56>
c0deb2c6:	2601      	movs	r6, #1
c0deb2c8:	4630      	mov	r0, r6
c0deb2ca:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0deb2ce <format_fpu64>:
c0deb2ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0deb2d2:	b086      	sub	sp, #24
c0deb2d4:	466c      	mov	r4, sp
c0deb2d6:	4688      	mov	r8, r1
c0deb2d8:	4605      	mov	r5, r0
c0deb2da:	2115      	movs	r1, #21
c0deb2dc:	461e      	mov	r6, r3
c0deb2de:	4617      	mov	r7, r2
c0deb2e0:	4620      	mov	r0, r4
c0deb2e2:	f001 f8cb 	bl	c0dec47c <__aeabi_memclr>
c0deb2e6:	4620      	mov	r0, r4
c0deb2e8:	2115      	movs	r1, #21
c0deb2ea:	463a      	mov	r2, r7
c0deb2ec:	4633      	mov	r3, r6
c0deb2ee:	f7ff ffb5 	bl	c0deb25c <format_u64>
c0deb2f2:	b340      	cbz	r0, c0deb346 <format_fpu64+0x78>
c0deb2f4:	466f      	mov	r7, sp
c0deb2f6:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0deb2f8:	4638      	mov	r0, r7
c0deb2fa:	f001 f92b 	bl	c0dec554 <strlen>
c0deb2fe:	42b0      	cmp	r0, r6
c0deb300:	d910      	bls.n	c0deb324 <format_fpu64+0x56>
c0deb302:	1831      	adds	r1, r6, r0
c0deb304:	3101      	adds	r1, #1
c0deb306:	4541      	cmp	r1, r8
c0deb308:	d21d      	bcs.n	c0deb346 <format_fpu64+0x78>
c0deb30a:	1b84      	subs	r4, r0, r6
c0deb30c:	4628      	mov	r0, r5
c0deb30e:	4639      	mov	r1, r7
c0deb310:	4622      	mov	r2, r4
c0deb312:	f001 f8a9 	bl	c0dec468 <__aeabi_memcpy>
c0deb316:	1928      	adds	r0, r5, r4
c0deb318:	212e      	movs	r1, #46	@ 0x2e
c0deb31a:	4632      	mov	r2, r6
c0deb31c:	f800 1b01 	strb.w	r1, [r0], #1
c0deb320:	1939      	adds	r1, r7, r4
c0deb322:	e015      	b.n	c0deb350 <format_fpu64+0x82>
c0deb324:	1a32      	subs	r2, r6, r0
c0deb326:	1c91      	adds	r1, r2, #2
c0deb328:	4541      	cmp	r1, r8
c0deb32a:	d20c      	bcs.n	c0deb346 <format_fpu64+0x78>
c0deb32c:	202e      	movs	r0, #46	@ 0x2e
c0deb32e:	2330      	movs	r3, #48	@ 0x30
c0deb330:	2400      	movs	r4, #0
c0deb332:	7068      	strb	r0, [r5, #1]
c0deb334:	1ca8      	adds	r0, r5, #2
c0deb336:	702b      	strb	r3, [r5, #0]
c0deb338:	b2a5      	uxth	r5, r4
c0deb33a:	42aa      	cmp	r2, r5
c0deb33c:	d905      	bls.n	c0deb34a <format_fpu64+0x7c>
c0deb33e:	f800 3b01 	strb.w	r3, [r0], #1
c0deb342:	3401      	adds	r4, #1
c0deb344:	e7f8      	b.n	c0deb338 <format_fpu64+0x6a>
c0deb346:	2000      	movs	r0, #0
c0deb348:	e005      	b.n	c0deb356 <format_fpu64+0x88>
c0deb34a:	eba8 0201 	sub.w	r2, r8, r1
c0deb34e:	4669      	mov	r1, sp
c0deb350:	f001 f91a 	bl	c0dec588 <strncpy>
c0deb354:	2001      	movs	r0, #1
c0deb356:	b006      	add	sp, #24
c0deb358:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0deb35c <format_hex>:
c0deb35c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0deb35e:	4604      	mov	r4, r0
c0deb360:	0048      	lsls	r0, r1, #1
c0deb362:	f100 0c01 	add.w	ip, r0, #1
c0deb366:	459c      	cmp	ip, r3
c0deb368:	d902      	bls.n	c0deb370 <format_hex+0x14>
c0deb36a:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0deb36e:	e018      	b.n	c0deb3a2 <format_hex+0x46>
c0deb370:	480d      	ldr	r0, [pc, #52]	@ (c0deb3a8 <format_hex+0x4c>)
c0deb372:	2500      	movs	r5, #0
c0deb374:	4478      	add	r0, pc
c0deb376:	b191      	cbz	r1, c0deb39e <format_hex+0x42>
c0deb378:	1cef      	adds	r7, r5, #3
c0deb37a:	429f      	cmp	r7, r3
c0deb37c:	d80d      	bhi.n	c0deb39a <format_hex+0x3e>
c0deb37e:	7827      	ldrb	r7, [r4, #0]
c0deb380:	3901      	subs	r1, #1
c0deb382:	093f      	lsrs	r7, r7, #4
c0deb384:	5dc7      	ldrb	r7, [r0, r7]
c0deb386:	5557      	strb	r7, [r2, r5]
c0deb388:	1957      	adds	r7, r2, r5
c0deb38a:	3502      	adds	r5, #2
c0deb38c:	f814 6b01 	ldrb.w	r6, [r4], #1
c0deb390:	f006 060f 	and.w	r6, r6, #15
c0deb394:	5d86      	ldrb	r6, [r0, r6]
c0deb396:	707e      	strb	r6, [r7, #1]
c0deb398:	e7ed      	b.n	c0deb376 <format_hex+0x1a>
c0deb39a:	f105 0c01 	add.w	ip, r5, #1
c0deb39e:	2000      	movs	r0, #0
c0deb3a0:	5550      	strb	r0, [r2, r5]
c0deb3a2:	4660      	mov	r0, ip
c0deb3a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0deb3a6:	bf00      	nop
c0deb3a8:	00002c3d 	.word	0x00002c3d

c0deb3ac <app_ticker_event_callback>:
c0deb3ac:	4770      	bx	lr
	...

c0deb3b0 <io_event>:
c0deb3b0:	b580      	push	{r7, lr}
c0deb3b2:	480b      	ldr	r0, [pc, #44]	@ (c0deb3e0 <io_event+0x30>)
c0deb3b4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0deb3b8:	2905      	cmp	r1, #5
c0deb3ba:	d00e      	beq.n	c0deb3da <io_event+0x2a>
c0deb3bc:	290e      	cmp	r1, #14
c0deb3be:	d005      	beq.n	c0deb3cc <io_event+0x1c>
c0deb3c0:	290c      	cmp	r1, #12
c0deb3c2:	d108      	bne.n	c0deb3d6 <io_event+0x26>
c0deb3c4:	4448      	add	r0, r9
c0deb3c6:	f000 fa05 	bl	c0deb7d4 <ux_process_finger_event>
c0deb3ca:	e006      	b.n	c0deb3da <io_event+0x2a>
c0deb3cc:	f7ff ffee 	bl	c0deb3ac <app_ticker_event_callback>
c0deb3d0:	f000 fa56 	bl	c0deb880 <ux_process_ticker_event>
c0deb3d4:	e001      	b.n	c0deb3da <io_event+0x2a>
c0deb3d6:	f000 fa89 	bl	c0deb8ec <ux_process_default_event>
c0deb3da:	2001      	movs	r0, #1
c0deb3dc:	bd80      	pop	{r7, pc}
c0deb3de:	bf00      	nop
c0deb3e0:	00000cac 	.word	0x00000cac

c0deb3e4 <io_init>:
c0deb3e4:	4802      	ldr	r0, [pc, #8]	@ (c0deb3f0 <io_init+0xc>)
c0deb3e6:	2101      	movs	r1, #1
c0deb3e8:	f809 1000 	strb.w	r1, [r9, r0]
c0deb3ec:	4770      	bx	lr
c0deb3ee:	bf00      	nop
c0deb3f0:	00000dbc 	.word	0x00000dbc

c0deb3f4 <io_recv_command>:
c0deb3f4:	b510      	push	{r4, lr}
c0deb3f6:	4c09      	ldr	r4, [pc, #36]	@ (c0deb41c <io_recv_command+0x28>)
c0deb3f8:	f819 0004 	ldrb.w	r0, [r9, r4]
c0deb3fc:	2801      	cmp	r0, #1
c0deb3fe:	d104      	bne.n	c0deb40a <io_recv_command+0x16>
c0deb400:	f000 ff00 	bl	c0dec204 <os_io_start>
c0deb404:	2000      	movs	r0, #0
c0deb406:	f809 0004 	strb.w	r0, [r9, r4]
c0deb40a:	2000      	movs	r0, #0
c0deb40c:	2800      	cmp	r0, #0
c0deb40e:	dc03      	bgt.n	c0deb418 <io_recv_command+0x24>
c0deb410:	2001      	movs	r0, #1
c0deb412:	f7f8 fb93 	bl	c0de3b3c <io_legacy_apdu_rx>
c0deb416:	e7f9      	b.n	c0deb40c <io_recv_command+0x18>
c0deb418:	bd10      	pop	{r4, pc}
c0deb41a:	bf00      	nop
c0deb41c:	00000dbc 	.word	0x00000dbc

c0deb420 <io_send_response_buffers>:
c0deb420:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0deb424:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0deb4b8 <io_send_response_buffers+0x98>
c0deb428:	4690      	mov	r8, r2
c0deb42a:	460f      	mov	r7, r1
c0deb42c:	4606      	mov	r6, r0
c0deb42e:	f240 140f 	movw	r4, #271	@ 0x10f
c0deb432:	2500      	movs	r5, #0
c0deb434:	b1b6      	cbz	r6, c0deb464 <io_send_response_buffers+0x44>
c0deb436:	b1af      	cbz	r7, c0deb464 <io_send_response_buffers+0x44>
c0deb438:	2500      	movs	r5, #0
c0deb43a:	b19f      	cbz	r7, c0deb464 <io_send_response_buffers+0x44>
c0deb43c:	eb09 000a 	add.w	r0, r9, sl
c0deb440:	1b62      	subs	r2, r4, r5
c0deb442:	1941      	adds	r1, r0, r5
c0deb444:	4630      	mov	r0, r6
c0deb446:	f7ff fe01 	bl	c0deb04c <buffer_copy>
c0deb44a:	b130      	cbz	r0, c0deb45a <io_send_response_buffers+0x3a>
c0deb44c:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0deb450:	360c      	adds	r6, #12
c0deb452:	3f01      	subs	r7, #1
c0deb454:	4428      	add	r0, r5
c0deb456:	1a45      	subs	r5, r0, r1
c0deb458:	e7ef      	b.n	c0deb43a <io_send_response_buffers+0x1a>
c0deb45a:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0deb45e:	2600      	movs	r6, #0
c0deb460:	2700      	movs	r7, #0
c0deb462:	e7e6      	b.n	c0deb432 <io_send_response_buffers+0x12>
c0deb464:	fa1f f688 	uxth.w	r6, r8
c0deb468:	eb09 000a 	add.w	r0, r9, sl
c0deb46c:	4629      	mov	r1, r5
c0deb46e:	4632      	mov	r2, r6
c0deb470:	f000 f9aa 	bl	c0deb7c8 <write_u16_be>
c0deb474:	4811      	ldr	r0, [pc, #68]	@ (c0deb4bc <io_send_response_buffers+0x9c>)
c0deb476:	1ca9      	adds	r1, r5, #2
c0deb478:	f819 0000 	ldrb.w	r0, [r9, r0]
c0deb47c:	b118      	cbz	r0, c0deb486 <io_send_response_buffers+0x66>
c0deb47e:	4810      	ldr	r0, [pc, #64]	@ (c0deb4c0 <io_send_response_buffers+0xa0>)
c0deb480:	f819 0000 	ldrb.w	r0, [r9, r0]
c0deb484:	b928      	cbnz	r0, c0deb492 <io_send_response_buffers+0x72>
c0deb486:	f000 f81f 	bl	c0deb4c8 <OUTLINED_FUNCTION_0>
c0deb48a:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0deb48e:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0deb492:	f000 f819 	bl	c0deb4c8 <OUTLINED_FUNCTION_0>
c0deb496:	2800      	cmp	r0, #0
c0deb498:	d40a      	bmi.n	c0deb4b0 <io_send_response_buffers+0x90>
c0deb49a:	480a      	ldr	r0, [pc, #40]	@ (c0deb4c4 <io_send_response_buffers+0xa4>)
c0deb49c:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0deb4a0:	fab1 f181 	clz	r1, r1
c0deb4a4:	f859 0000 	ldr.w	r0, [r9, r0]
c0deb4a8:	0949      	lsrs	r1, r1, #5
c0deb4aa:	7001      	strb	r1, [r0, #0]
c0deb4ac:	f000 fe6e 	bl	c0dec18c <os_lib_end>
c0deb4b0:	20ff      	movs	r0, #255	@ 0xff
c0deb4b2:	f000 fe93 	bl	c0dec1dc <os_sched_exit>
c0deb4b6:	bf00      	nop
c0deb4b8:	000004b4 	.word	0x000004b4
c0deb4bc:	00000de0 	.word	0x00000de0
c0deb4c0:	00000de1 	.word	0x00000de1
c0deb4c4:	00000de4 	.word	0x00000de4

c0deb4c8 <OUTLINED_FUNCTION_0>:
c0deb4c8:	eb09 000a 	add.w	r0, r9, sl
c0deb4cc:	b289      	uxth	r1, r1
c0deb4ce:	f7f8 bb1b 	b.w	c0de3b08 <io_legacy_apdu_tx>

c0deb4d2 <app_exit>:
c0deb4d2:	20ff      	movs	r0, #255	@ 0xff
c0deb4d4:	f000 fe82 	bl	c0dec1dc <os_sched_exit>

c0deb4d8 <common_app_init>:
c0deb4d8:	b580      	push	{r7, lr}
c0deb4da:	f000 fa89 	bl	c0deb9f0 <nbgl_objInit>
c0deb4de:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0deb4e2:	f7f8 bc57 	b.w	c0de3d94 <io_seproxyhal_init>
	...

c0deb4e8 <standalone_app_main>:
c0deb4e8:	b5b0      	push	{r4, r5, r7, lr}
c0deb4ea:	b08c      	sub	sp, #48	@ 0x30
c0deb4ec:	4816      	ldr	r0, [pc, #88]	@ (c0deb548 <standalone_app_main+0x60>)
c0deb4ee:	2500      	movs	r5, #0
c0deb4f0:	466c      	mov	r4, sp
c0deb4f2:	f809 5000 	strb.w	r5, [r9, r0]
c0deb4f6:	4815      	ldr	r0, [pc, #84]	@ (c0deb54c <standalone_app_main+0x64>)
c0deb4f8:	f849 5000 	str.w	r5, [r9, r0]
c0deb4fc:	4814      	ldr	r0, [pc, #80]	@ (c0deb550 <standalone_app_main+0x68>)
c0deb4fe:	f809 5000 	strb.w	r5, [r9, r0]
c0deb502:	4620      	mov	r0, r4
c0deb504:	f001 f80e 	bl	c0dec524 <setjmp>
c0deb508:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0deb50c:	0400      	lsls	r0, r0, #16
c0deb50e:	d108      	bne.n	c0deb522 <standalone_app_main+0x3a>
c0deb510:	4668      	mov	r0, sp
c0deb512:	f000 fea1 	bl	c0dec258 <try_context_set>
c0deb516:	900a      	str	r0, [sp, #40]	@ 0x28
c0deb518:	f7ff ffde 	bl	c0deb4d8 <common_app_init>
c0deb51c:	f7f4 ff1c 	bl	c0de0358 <app_main>
c0deb520:	e004      	b.n	c0deb52c <standalone_app_main+0x44>
c0deb522:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0deb524:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0deb528:	f000 fe96 	bl	c0dec258 <try_context_set>
c0deb52c:	f000 fe8c 	bl	c0dec248 <try_context_get>
c0deb530:	42a0      	cmp	r0, r4
c0deb532:	d102      	bne.n	c0deb53a <standalone_app_main+0x52>
c0deb534:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0deb536:	f000 fe8f 	bl	c0dec258 <try_context_set>
c0deb53a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0deb53e:	b908      	cbnz	r0, c0deb544 <standalone_app_main+0x5c>
c0deb540:	f7ff ffc7 	bl	c0deb4d2 <app_exit>
c0deb544:	f000 fac9 	bl	c0debada <os_longjmp>
c0deb548:	00000de0 	.word	0x00000de0
c0deb54c:	00000de4 	.word	0x00000de4
c0deb550:	00000de1 	.word	0x00000de1

c0deb554 <library_app_main>:
c0deb554:	b5b0      	push	{r4, r5, r7, lr}
c0deb556:	b08c      	sub	sp, #48	@ 0x30
c0deb558:	466c      	mov	r4, sp
c0deb55a:	4605      	mov	r5, r0
c0deb55c:	4620      	mov	r0, r4
c0deb55e:	f000 ffe1 	bl	c0dec524 <setjmp>
c0deb562:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0deb566:	0400      	lsls	r0, r0, #16
c0deb568:	d124      	bne.n	c0deb5b4 <library_app_main+0x60>
c0deb56a:	4668      	mov	r0, sp
c0deb56c:	f000 fe74 	bl	c0dec258 <try_context_set>
c0deb570:	900a      	str	r0, [sp, #40]	@ 0x28
c0deb572:	6868      	ldr	r0, [r5, #4]
c0deb574:	2804      	cmp	r0, #4
c0deb576:	d024      	beq.n	c0deb5c2 <library_app_main+0x6e>
c0deb578:	2803      	cmp	r0, #3
c0deb57a:	d026      	beq.n	c0deb5ca <library_app_main+0x76>
c0deb57c:	2802      	cmp	r0, #2
c0deb57e:	d127      	bne.n	c0deb5d0 <library_app_main+0x7c>
c0deb580:	68e8      	ldr	r0, [r5, #12]
c0deb582:	f7f6 f97f 	bl	c0de1884 <swap_copy_transaction_parameters>
c0deb586:	b318      	cbz	r0, c0deb5d0 <library_app_main+0x7c>
c0deb588:	4816      	ldr	r0, [pc, #88]	@ (c0deb5e4 <library_app_main+0x90>)
c0deb58a:	2201      	movs	r2, #1
c0deb58c:	f809 2000 	strb.w	r2, [r9, r0]
c0deb590:	4815      	ldr	r0, [pc, #84]	@ (c0deb5e8 <library_app_main+0x94>)
c0deb592:	2200      	movs	r2, #0
c0deb594:	f809 2000 	strb.w	r2, [r9, r0]
c0deb598:	4a14      	ldr	r2, [pc, #80]	@ (c0deb5ec <library_app_main+0x98>)
c0deb59a:	68e8      	ldr	r0, [r5, #12]
c0deb59c:	3020      	adds	r0, #32
c0deb59e:	f849 0002 	str.w	r0, [r9, r2]
c0deb5a2:	f7ff ff99 	bl	c0deb4d8 <common_app_init>
c0deb5a6:	4812      	ldr	r0, [pc, #72]	@ (c0deb5f0 <library_app_main+0x9c>)
c0deb5a8:	4478      	add	r0, pc
c0deb5aa:	f7fe fdc7 	bl	c0dea13c <nbgl_useCaseSpinner>
c0deb5ae:	f7f4 fed3 	bl	c0de0358 <app_main>
c0deb5b2:	e00d      	b.n	c0deb5d0 <library_app_main+0x7c>
c0deb5b4:	2000      	movs	r0, #0
c0deb5b6:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0deb5ba:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0deb5bc:	f000 fe4c 	bl	c0dec258 <try_context_set>
c0deb5c0:	e006      	b.n	c0deb5d0 <library_app_main+0x7c>
c0deb5c2:	68e8      	ldr	r0, [r5, #12]
c0deb5c4:	f7f6 f932 	bl	c0de182c <swap_handle_get_printable_amount>
c0deb5c8:	e002      	b.n	c0deb5d0 <library_app_main+0x7c>
c0deb5ca:	68e8      	ldr	r0, [r5, #12]
c0deb5cc:	f7f6 f8d3 	bl	c0de1776 <swap_handle_check_address>
c0deb5d0:	f000 fe3a 	bl	c0dec248 <try_context_get>
c0deb5d4:	42a0      	cmp	r0, r4
c0deb5d6:	d102      	bne.n	c0deb5de <library_app_main+0x8a>
c0deb5d8:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0deb5da:	f000 fe3d 	bl	c0dec258 <try_context_set>
c0deb5de:	f000 fdd5 	bl	c0dec18c <os_lib_end>
c0deb5e2:	bf00      	nop
c0deb5e4:	00000de0 	.word	0x00000de0
c0deb5e8:	00000de1 	.word	0x00000de1
c0deb5ec:	00000de4 	.word	0x00000de4
c0deb5f0:	000023d5 	.word	0x000023d5

c0deb5f4 <apdu_parser>:
c0deb5f4:	2a04      	cmp	r2, #4
c0deb5f6:	d316      	bcc.n	c0deb626 <apdu_parser+0x32>
c0deb5f8:	d102      	bne.n	c0deb600 <apdu_parser+0xc>
c0deb5fa:	2300      	movs	r3, #0
c0deb5fc:	7103      	strb	r3, [r0, #4]
c0deb5fe:	e004      	b.n	c0deb60a <apdu_parser+0x16>
c0deb600:	790b      	ldrb	r3, [r1, #4]
c0deb602:	3a05      	subs	r2, #5
c0deb604:	429a      	cmp	r2, r3
c0deb606:	7103      	strb	r3, [r0, #4]
c0deb608:	d10d      	bne.n	c0deb626 <apdu_parser+0x32>
c0deb60a:	780a      	ldrb	r2, [r1, #0]
c0deb60c:	2b00      	cmp	r3, #0
c0deb60e:	7002      	strb	r2, [r0, #0]
c0deb610:	784a      	ldrb	r2, [r1, #1]
c0deb612:	7042      	strb	r2, [r0, #1]
c0deb614:	788a      	ldrb	r2, [r1, #2]
c0deb616:	7082      	strb	r2, [r0, #2]
c0deb618:	bf18      	it	ne
c0deb61a:	1d4b      	addne	r3, r1, #5
c0deb61c:	78c9      	ldrb	r1, [r1, #3]
c0deb61e:	6083      	str	r3, [r0, #8]
c0deb620:	70c1      	strb	r1, [r0, #3]
c0deb622:	2001      	movs	r0, #1
c0deb624:	4770      	bx	lr
c0deb626:	2000      	movs	r0, #0
c0deb628:	4770      	bx	lr

c0deb62a <read_u32_be>:
c0deb62a:	5c42      	ldrb	r2, [r0, r1]
c0deb62c:	4408      	add	r0, r1
c0deb62e:	7841      	ldrb	r1, [r0, #1]
c0deb630:	7883      	ldrb	r3, [r0, #2]
c0deb632:	78c0      	ldrb	r0, [r0, #3]
c0deb634:	0409      	lsls	r1, r1, #16
c0deb636:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0deb63a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0deb63e:	4408      	add	r0, r1
c0deb640:	4770      	bx	lr

c0deb642 <read_u64_be>:
c0deb642:	b5f0      	push	{r4, r5, r6, r7, lr}
c0deb644:	1842      	adds	r2, r0, r1
c0deb646:	5c40      	ldrb	r0, [r0, r1]
c0deb648:	7917      	ldrb	r7, [r2, #4]
c0deb64a:	7953      	ldrb	r3, [r2, #5]
c0deb64c:	7854      	ldrb	r4, [r2, #1]
c0deb64e:	7895      	ldrb	r5, [r2, #2]
c0deb650:	78d6      	ldrb	r6, [r2, #3]
c0deb652:	063f      	lsls	r7, r7, #24
c0deb654:	0421      	lsls	r1, r4, #16
c0deb656:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0deb65a:	7997      	ldrb	r7, [r2, #6]
c0deb65c:	79d2      	ldrb	r2, [r2, #7]
c0deb65e:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0deb662:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0deb666:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0deb66a:	1981      	adds	r1, r0, r6
c0deb66c:	441a      	add	r2, r3
c0deb66e:	4610      	mov	r0, r2
c0deb670:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0deb672 <read_u16_le>:
c0deb672:	5c42      	ldrb	r2, [r0, r1]
c0deb674:	4408      	add	r0, r1
c0deb676:	7840      	ldrb	r0, [r0, #1]
c0deb678:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0deb67c:	b280      	uxth	r0, r0
c0deb67e:	4770      	bx	lr

c0deb680 <read_u32_le>:
c0deb680:	5c42      	ldrb	r2, [r0, r1]
c0deb682:	4408      	add	r0, r1
c0deb684:	7841      	ldrb	r1, [r0, #1]
c0deb686:	7883      	ldrb	r3, [r0, #2]
c0deb688:	78c0      	ldrb	r0, [r0, #3]
c0deb68a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0deb68e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0deb692:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0deb696:	4770      	bx	lr

c0deb698 <read_u64_le>:
c0deb698:	b5b0      	push	{r4, r5, r7, lr}
c0deb69a:	5c42      	ldrb	r2, [r0, r1]
c0deb69c:	4401      	add	r1, r0
c0deb69e:	7848      	ldrb	r0, [r1, #1]
c0deb6a0:	788b      	ldrb	r3, [r1, #2]
c0deb6a2:	790d      	ldrb	r5, [r1, #4]
c0deb6a4:	78cc      	ldrb	r4, [r1, #3]
c0deb6a6:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0deb6aa:	794a      	ldrb	r2, [r1, #5]
c0deb6ac:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0deb6b0:	798b      	ldrb	r3, [r1, #6]
c0deb6b2:	79c9      	ldrb	r1, [r1, #7]
c0deb6b4:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0deb6b8:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0deb6bc:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0deb6c0:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0deb6c4:	bdb0      	pop	{r4, r5, r7, pc}

c0deb6c6 <send_swap_error_simple>:
c0deb6c6:	b082      	sub	sp, #8
c0deb6c8:	2300      	movs	r3, #0
c0deb6ca:	9300      	str	r3, [sp, #0]
c0deb6cc:	2300      	movs	r3, #0
c0deb6ce:	f000 f801 	bl	c0deb6d4 <send_swap_error_with_buffers>
	...

c0deb6d4 <send_swap_error_with_buffers>:
c0deb6d4:	b09c      	sub	sp, #112	@ 0x70
c0deb6d6:	4604      	mov	r4, r0
c0deb6d8:	4815      	ldr	r0, [pc, #84]	@ (c0deb730 <send_swap_error_with_buffers+0x5c>)
c0deb6da:	f819 0000 	ldrb.w	r0, [r9, r0]
c0deb6de:	b320      	cbz	r0, c0deb72a <send_swap_error_with_buffers+0x56>
c0deb6e0:	4814      	ldr	r0, [pc, #80]	@ (c0deb734 <send_swap_error_with_buffers+0x60>)
c0deb6e2:	461d      	mov	r5, r3
c0deb6e4:	2301      	movs	r3, #1
c0deb6e6:	466e      	mov	r6, sp
c0deb6e8:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0deb6ea:	f809 3000 	strb.w	r3, [r9, r0]
c0deb6ee:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0deb6f2:	f106 0008 	add.w	r0, r6, #8
c0deb6f6:	2164      	movs	r1, #100	@ 0x64
c0deb6f8:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0deb6fc:	f000 febe 	bl	c0dec47c <__aeabi_memclr>
c0deb700:	2002      	movs	r0, #2
c0deb702:	4629      	mov	r1, r5
c0deb704:	9001      	str	r0, [sp, #4]
c0deb706:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0deb70a:	2f08      	cmp	r7, #8
c0deb70c:	9000      	str	r0, [sp, #0]
c0deb70e:	bf28      	it	cs
c0deb710:	2708      	movcs	r7, #8
c0deb712:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0deb716:	0082      	lsls	r2, r0, #2
c0deb718:	f106 000c 	add.w	r0, r6, #12
c0deb71c:	f000 fea4 	bl	c0dec468 <__aeabi_memcpy>
c0deb720:	1c79      	adds	r1, r7, #1
c0deb722:	4630      	mov	r0, r6
c0deb724:	4622      	mov	r2, r4
c0deb726:	f7ff fe7b 	bl	c0deb420 <io_send_response_buffers>
c0deb72a:	2000      	movs	r0, #0
c0deb72c:	f000 fd56 	bl	c0dec1dc <os_sched_exit>
c0deb730:	00000de0 	.word	0x00000de0
c0deb734:	00000de1 	.word	0x00000de1

c0deb738 <swap_str_to_u64>:
c0deb738:	2908      	cmp	r1, #8
c0deb73a:	d812      	bhi.n	c0deb762 <swap_str_to_u64+0x2a>
c0deb73c:	b570      	push	{r4, r5, r6, lr}
c0deb73e:	2500      	movs	r5, #0
c0deb740:	460b      	mov	r3, r1
c0deb742:	2400      	movs	r4, #0
c0deb744:	b14b      	cbz	r3, c0deb75a <swap_str_to_u64+0x22>
c0deb746:	f810 6b01 	ldrb.w	r6, [r0], #1
c0deb74a:	0224      	lsls	r4, r4, #8
c0deb74c:	3b01      	subs	r3, #1
c0deb74e:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0deb752:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0deb756:	4635      	mov	r5, r6
c0deb758:	e7f4      	b.n	c0deb744 <swap_str_to_u64+0xc>
c0deb75a:	e9c2 5400 	strd	r5, r4, [r2]
c0deb75e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0deb762:	2000      	movs	r0, #0
c0deb764:	2909      	cmp	r1, #9
c0deb766:	bf38      	it	cc
c0deb768:	2001      	movcc	r0, #1
c0deb76a:	4770      	bx	lr

c0deb76c <varint_read>:
c0deb76c:	b510      	push	{r4, lr}
c0deb76e:	b1d9      	cbz	r1, c0deb7a8 <varint_read+0x3c>
c0deb770:	4614      	mov	r4, r2
c0deb772:	4602      	mov	r2, r0
c0deb774:	7800      	ldrb	r0, [r0, #0]
c0deb776:	28ff      	cmp	r0, #255	@ 0xff
c0deb778:	d00c      	beq.n	c0deb794 <varint_read+0x28>
c0deb77a:	28fe      	cmp	r0, #254	@ 0xfe
c0deb77c:	d012      	beq.n	c0deb7a4 <varint_read+0x38>
c0deb77e:	28fd      	cmp	r0, #253	@ 0xfd
c0deb780:	d115      	bne.n	c0deb7ae <varint_read+0x42>
c0deb782:	2903      	cmp	r1, #3
c0deb784:	d310      	bcc.n	c0deb7a8 <varint_read+0x3c>
c0deb786:	4610      	mov	r0, r2
c0deb788:	2101      	movs	r1, #1
c0deb78a:	f7ff ff72 	bl	c0deb672 <read_u16_le>
c0deb78e:	2100      	movs	r1, #0
c0deb790:	2203      	movs	r2, #3
c0deb792:	e015      	b.n	c0deb7c0 <varint_read+0x54>
c0deb794:	2909      	cmp	r1, #9
c0deb796:	d307      	bcc.n	c0deb7a8 <varint_read+0x3c>
c0deb798:	4610      	mov	r0, r2
c0deb79a:	2101      	movs	r1, #1
c0deb79c:	f7ff ff7c 	bl	c0deb698 <read_u64_le>
c0deb7a0:	2209      	movs	r2, #9
c0deb7a2:	e00d      	b.n	c0deb7c0 <varint_read+0x54>
c0deb7a4:	2905      	cmp	r1, #5
c0deb7a6:	d205      	bcs.n	c0deb7b4 <varint_read+0x48>
c0deb7a8:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0deb7ac:	e00a      	b.n	c0deb7c4 <varint_read+0x58>
c0deb7ae:	2100      	movs	r1, #0
c0deb7b0:	2201      	movs	r2, #1
c0deb7b2:	e005      	b.n	c0deb7c0 <varint_read+0x54>
c0deb7b4:	4610      	mov	r0, r2
c0deb7b6:	2101      	movs	r1, #1
c0deb7b8:	f7ff ff62 	bl	c0deb680 <read_u32_le>
c0deb7bc:	2100      	movs	r1, #0
c0deb7be:	2205      	movs	r2, #5
c0deb7c0:	e9c4 0100 	strd	r0, r1, [r4]
c0deb7c4:	4610      	mov	r0, r2
c0deb7c6:	bd10      	pop	{r4, pc}

c0deb7c8 <write_u16_be>:
c0deb7c8:	0a13      	lsrs	r3, r2, #8
c0deb7ca:	5443      	strb	r3, [r0, r1]
c0deb7cc:	4408      	add	r0, r1
c0deb7ce:	7042      	strb	r2, [r0, #1]
c0deb7d0:	4770      	bx	lr
	...

c0deb7d4 <ux_process_finger_event>:
c0deb7d4:	b5b0      	push	{r4, r5, r7, lr}
c0deb7d6:	4604      	mov	r4, r0
c0deb7d8:	2001      	movs	r0, #1
c0deb7da:	f000 f827 	bl	c0deb82c <ux_forward_event>
c0deb7de:	4605      	mov	r5, r0
c0deb7e0:	f000 f910 	bl	c0deba04 <nbgl_objAllowDrawing>
c0deb7e4:	b1fd      	cbz	r5, c0deb826 <ux_process_finger_event+0x52>
c0deb7e6:	78e1      	ldrb	r1, [r4, #3]
c0deb7e8:	480f      	ldr	r0, [pc, #60]	@ (c0deb828 <ux_process_finger_event+0x54>)
c0deb7ea:	7963      	ldrb	r3, [r4, #5]
c0deb7ec:	3901      	subs	r1, #1
c0deb7ee:	eb09 0200 	add.w	r2, r9, r0
c0deb7f2:	f859 0000 	ldr.w	r0, [r9, r0]
c0deb7f6:	fab1 f181 	clz	r1, r1
c0deb7fa:	094d      	lsrs	r5, r1, #5
c0deb7fc:	4611      	mov	r1, r2
c0deb7fe:	f801 5f04 	strb.w	r5, [r1, #4]!
c0deb802:	7925      	ldrb	r5, [r4, #4]
c0deb804:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0deb808:	80d3      	strh	r3, [r2, #6]
c0deb80a:	79a3      	ldrb	r3, [r4, #6]
c0deb80c:	79e4      	ldrb	r4, [r4, #7]
c0deb80e:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0deb812:	8113      	strh	r3, [r2, #8]
c0deb814:	2264      	movs	r2, #100	@ 0x64
c0deb816:	4342      	muls	r2, r0
c0deb818:	2000      	movs	r0, #0
c0deb81a:	f000 f948 	bl	c0debaae <nbgl_touchHandler>
c0deb81e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0deb822:	f000 b8d6 	b.w	c0deb9d2 <nbgl_refresh>
c0deb826:	bdb0      	pop	{r4, r5, r7, pc}
c0deb828:	00000dec 	.word	0x00000dec

c0deb82c <ux_forward_event>:
c0deb82c:	b5b0      	push	{r4, r5, r7, lr}
c0deb82e:	4604      	mov	r4, r0
c0deb830:	4812      	ldr	r0, [pc, #72]	@ (c0deb87c <ux_forward_event+0x50>)
c0deb832:	2101      	movs	r1, #1
c0deb834:	f809 1000 	strb.w	r1, [r9, r0]
c0deb838:	eb09 0500 	add.w	r5, r9, r0
c0deb83c:	2000      	movs	r0, #0
c0deb83e:	6068      	str	r0, [r5, #4]
c0deb840:	4628      	mov	r0, r5
c0deb842:	f000 fc99 	bl	c0dec178 <os_ux>
c0deb846:	2004      	movs	r0, #4
c0deb848:	f000 fd10 	bl	c0dec26c <os_sched_last_status>
c0deb84c:	2869      	cmp	r0, #105	@ 0x69
c0deb84e:	6068      	str	r0, [r5, #4]
c0deb850:	d108      	bne.n	c0deb864 <ux_forward_event+0x38>
c0deb852:	2001      	movs	r0, #1
c0deb854:	f000 f8d6 	bl	c0deba04 <nbgl_objAllowDrawing>
c0deb858:	f000 f8e3 	bl	c0deba22 <nbgl_screenRedraw>
c0deb85c:	f000 f8b9 	bl	c0deb9d2 <nbgl_refresh>
c0deb860:	2000      	movs	r0, #0
c0deb862:	bdb0      	pop	{r4, r5, r7, pc}
c0deb864:	b144      	cbz	r4, c0deb878 <ux_forward_event+0x4c>
c0deb866:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0deb86a:	bf18      	it	ne
c0deb86c:	2101      	movne	r1, #1
c0deb86e:	2800      	cmp	r0, #0
c0deb870:	bf18      	it	ne
c0deb872:	2001      	movne	r0, #1
c0deb874:	4008      	ands	r0, r1
c0deb876:	bdb0      	pop	{r4, r5, r7, pc}
c0deb878:	2001      	movs	r0, #1
c0deb87a:	bdb0      	pop	{r4, r5, r7, pc}
c0deb87c:	00000dc0 	.word	0x00000dc0

c0deb880 <ux_process_ticker_event>:
c0deb880:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0deb882:	4d19      	ldr	r5, [pc, #100]	@ (c0deb8e8 <ux_process_ticker_event+0x68>)
c0deb884:	f859 0005 	ldr.w	r0, [r9, r5]
c0deb888:	3001      	adds	r0, #1
c0deb88a:	f849 0005 	str.w	r0, [r9, r5]
c0deb88e:	2001      	movs	r0, #1
c0deb890:	f7ff ffcc 	bl	c0deb82c <ux_forward_event>
c0deb894:	4604      	mov	r4, r0
c0deb896:	f000 f8b5 	bl	c0deba04 <nbgl_objAllowDrawing>
c0deb89a:	b324      	cbz	r4, c0deb8e6 <ux_process_ticker_event+0x66>
c0deb89c:	2064      	movs	r0, #100	@ 0x64
c0deb89e:	2464      	movs	r4, #100	@ 0x64
c0deb8a0:	f000 f8ce 	bl	c0deba40 <nbgl_screenHandler>
c0deb8a4:	eb09 0005 	add.w	r0, r9, r5
c0deb8a8:	7900      	ldrb	r0, [r0, #4]
c0deb8aa:	2801      	cmp	r0, #1
c0deb8ac:	d119      	bne.n	c0deb8e2 <ux_process_ticker_event+0x62>
c0deb8ae:	4668      	mov	r0, sp
c0deb8b0:	f000 fce8 	bl	c0dec284 <touch_get_last_info>
c0deb8b4:	f8bd 0000 	ldrh.w	r0, [sp]
c0deb8b8:	eb09 0105 	add.w	r1, r9, r5
c0deb8bc:	80c8      	strh	r0, [r1, #6]
c0deb8be:	f8bd 0002 	ldrh.w	r0, [sp, #2]
c0deb8c2:	8108      	strh	r0, [r1, #8]
c0deb8c4:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0deb8c8:	3801      	subs	r0, #1
c0deb8ca:	fab0 f080 	clz	r0, r0
c0deb8ce:	0940      	lsrs	r0, r0, #5
c0deb8d0:	f801 0f04 	strb.w	r0, [r1, #4]!
c0deb8d4:	f859 0005 	ldr.w	r0, [r9, r5]
c0deb8d8:	fb00 f204 	mul.w	r2, r0, r4
c0deb8dc:	2000      	movs	r0, #0
c0deb8de:	f000 f8e6 	bl	c0debaae <nbgl_touchHandler>
c0deb8e2:	f000 f876 	bl	c0deb9d2 <nbgl_refresh>
c0deb8e6:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0deb8e8:	00000dec 	.word	0x00000dec

c0deb8ec <ux_process_default_event>:
c0deb8ec:	2000      	movs	r0, #0
c0deb8ee:	f7ff bf9d 	b.w	c0deb82c <ux_forward_event>

c0deb8f2 <hash_iovec_ex>:
c0deb8f2:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0deb8f6:	468a      	mov	sl, r1
c0deb8f8:	4611      	mov	r1, r2
c0deb8fa:	461a      	mov	r2, r3
c0deb8fc:	4605      	mov	r5, r0
c0deb8fe:	f000 f84d 	bl	c0deb99c <cx_hash_init_ex>
c0deb902:	4607      	mov	r7, r0
c0deb904:	b9a8      	cbnz	r0, c0deb932 <hash_iovec_ex+0x40>
c0deb906:	f10d 0820 	add.w	r8, sp, #32
c0deb90a:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0deb90e:	1d04      	adds	r4, r0, #4
c0deb910:	b156      	cbz	r6, c0deb928 <hash_iovec_ex+0x36>
c0deb912:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0deb916:	f854 2b08 	ldr.w	r2, [r4], #8
c0deb91a:	4628      	mov	r0, r5
c0deb91c:	f000 f843 	bl	c0deb9a6 <cx_hash_update>
c0deb920:	3e01      	subs	r6, #1
c0deb922:	2800      	cmp	r0, #0
c0deb924:	d0f4      	beq.n	c0deb910 <hash_iovec_ex+0x1e>
c0deb926:	e003      	b.n	c0deb930 <hash_iovec_ex+0x3e>
c0deb928:	4628      	mov	r0, r5
c0deb92a:	4641      	mov	r1, r8
c0deb92c:	f000 f831 	bl	c0deb992 <cx_hash_final>
c0deb930:	4607      	mov	r7, r0
c0deb932:	4628      	mov	r0, r5
c0deb934:	4651      	mov	r1, sl
c0deb936:	f000 fdaf 	bl	c0dec498 <explicit_bzero>
c0deb93a:	4638      	mov	r0, r7
c0deb93c:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0deb940 <cx_keccak_256_hash_iovec>:
c0deb940:	b580      	push	{r7, lr}
c0deb942:	b0ee      	sub	sp, #440	@ 0x1b8
c0deb944:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0deb948:	a804      	add	r0, sp, #16
c0deb94a:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0deb94e:	2206      	movs	r2, #6
c0deb950:	2320      	movs	r3, #32
c0deb952:	f7ff ffce 	bl	c0deb8f2 <hash_iovec_ex>
c0deb956:	b06e      	add	sp, #440	@ 0x1b8
c0deb958:	bd80      	pop	{r7, pc}

c0deb95a <cx_blake2b_512_hash_iovec>:
c0deb95a:	b580      	push	{r7, lr}
c0deb95c:	b0c4      	sub	sp, #272	@ 0x110
c0deb95e:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0deb962:	a804      	add	r0, sp, #16
c0deb964:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0deb968:	2209      	movs	r2, #9
c0deb96a:	2340      	movs	r3, #64	@ 0x40
c0deb96c:	f7ff ffc1 	bl	c0deb8f2 <hash_iovec_ex>
c0deb970:	b044      	add	sp, #272	@ 0x110
c0deb972:	bd80      	pop	{r7, pc}

c0deb974 <cx_ecdsa_sign_no_throw>:
c0deb974:	b403      	push	{r0, r1}
c0deb976:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0deb97a:	f000 b823 	b.w	c0deb9c4 <cx_trampoline_helper>

c0deb97e <cx_ecfp_generate_pair2_no_throw>:
c0deb97e:	b403      	push	{r0, r1}
c0deb980:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0deb984:	f000 b81e 	b.w	c0deb9c4 <cx_trampoline_helper>

c0deb988 <cx_ecfp_init_private_key_no_throw>:
c0deb988:	b403      	push	{r0, r1}
c0deb98a:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0deb98e:	f000 b819 	b.w	c0deb9c4 <cx_trampoline_helper>

c0deb992 <cx_hash_final>:
c0deb992:	b403      	push	{r0, r1}
c0deb994:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0deb998:	f000 b814 	b.w	c0deb9c4 <cx_trampoline_helper>

c0deb99c <cx_hash_init_ex>:
c0deb99c:	b403      	push	{r0, r1}
c0deb99e:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0deb9a2:	f000 b80f 	b.w	c0deb9c4 <cx_trampoline_helper>

c0deb9a6 <cx_hash_update>:
c0deb9a6:	b403      	push	{r0, r1}
c0deb9a8:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0deb9ac:	f000 b80a 	b.w	c0deb9c4 <cx_trampoline_helper>

c0deb9b0 <cx_rng_no_throw>:
c0deb9b0:	b403      	push	{r0, r1}
c0deb9b2:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0deb9b6:	f000 b805 	b.w	c0deb9c4 <cx_trampoline_helper>
	...

c0deb9bc <cx_aes_siv_reset>:
c0deb9bc:	b403      	push	{r0, r1}
c0deb9be:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0deb9c2:	e7ff      	b.n	c0deb9c4 <cx_trampoline_helper>

c0deb9c4 <cx_trampoline_helper>:
c0deb9c4:	4900      	ldr	r1, [pc, #0]	@ (c0deb9c8 <cx_trampoline_helper+0x4>)
c0deb9c6:	4708      	bx	r1
c0deb9c8:	00808001 	.word	0x00808001

c0deb9cc <assert_exit>:
c0deb9cc:	20ff      	movs	r0, #255	@ 0xff
c0deb9ce:	f000 fc05 	bl	c0dec1dc <os_sched_exit>

c0deb9d2 <nbgl_refresh>:
c0deb9d2:	b403      	push	{r0, r1}
c0deb9d4:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0deb9d8:	f000 b878 	b.w	c0debacc <nbgl_trampoline_helper>

c0deb9dc <nbgl_refreshSpecial>:
c0deb9dc:	b403      	push	{r0, r1}
c0deb9de:	f04f 0092 	mov.w	r0, #146	@ 0x92
c0deb9e2:	f000 b873 	b.w	c0debacc <nbgl_trampoline_helper>

c0deb9e6 <nbgl_refreshSpecialWithPostRefresh>:
c0deb9e6:	b403      	push	{r0, r1}
c0deb9e8:	f04f 0093 	mov.w	r0, #147	@ 0x93
c0deb9ec:	f000 b86e 	b.w	c0debacc <nbgl_trampoline_helper>

c0deb9f0 <nbgl_objInit>:
c0deb9f0:	b403      	push	{r0, r1}
c0deb9f2:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0deb9f6:	f000 b869 	b.w	c0debacc <nbgl_trampoline_helper>

c0deb9fa <nbgl_objDraw>:
c0deb9fa:	b403      	push	{r0, r1}
c0deb9fc:	f04f 0097 	mov.w	r0, #151	@ 0x97
c0deba00:	f000 b864 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba04 <nbgl_objAllowDrawing>:
c0deba04:	b403      	push	{r0, r1}
c0deba06:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0deba0a:	f000 b85f 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba0e <nbgl_screenSet>:
c0deba0e:	b403      	push	{r0, r1}
c0deba10:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0deba14:	f000 b85a 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba18 <nbgl_screenPush>:
c0deba18:	b403      	push	{r0, r1}
c0deba1a:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0deba1e:	f000 b855 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba22 <nbgl_screenRedraw>:
c0deba22:	b403      	push	{r0, r1}
c0deba24:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0deba28:	f000 b850 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba2c <nbgl_screenPop>:
c0deba2c:	b403      	push	{r0, r1}
c0deba2e:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0deba32:	f000 b84b 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba36 <nbgl_screenUpdateTicker>:
c0deba36:	b403      	push	{r0, r1}
c0deba38:	f04f 00a4 	mov.w	r0, #164	@ 0xa4
c0deba3c:	f000 b846 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba40 <nbgl_screenHandler>:
c0deba40:	b403      	push	{r0, r1}
c0deba42:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0deba46:	f000 b841 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba4a <nbgl_objPoolGet>:
c0deba4a:	b403      	push	{r0, r1}
c0deba4c:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0deba50:	f000 b83c 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba54 <nbgl_containerPoolGet>:
c0deba54:	b403      	push	{r0, r1}
c0deba56:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0deba5a:	f000 b837 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba5e <nbgl_getFont>:
c0deba5e:	b403      	push	{r0, r1}
c0deba60:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0deba64:	f000 b832 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba68 <nbgl_getFontHeight>:
c0deba68:	b403      	push	{r0, r1}
c0deba6a:	f04f 00ad 	mov.w	r0, #173	@ 0xad
c0deba6e:	f000 b82d 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba72 <nbgl_getFontLineHeight>:
c0deba72:	b403      	push	{r0, r1}
c0deba74:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0deba78:	f000 b828 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba7c <nbgl_getTextHeightInWidth>:
c0deba7c:	b403      	push	{r0, r1}
c0deba7e:	f04f 00b2 	mov.w	r0, #178	@ 0xb2
c0deba82:	f000 b823 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba86 <nbgl_getTextNbLinesInWidth>:
c0deba86:	b403      	push	{r0, r1}
c0deba88:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0deba8c:	f000 b81e 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba90 <nbgl_getTextWidth>:
c0deba90:	b403      	push	{r0, r1}
c0deba92:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0deba96:	f000 b819 	b.w	c0debacc <nbgl_trampoline_helper>

c0deba9a <nbgl_getTextMaxLenInNbLines>:
c0deba9a:	b403      	push	{r0, r1}
c0deba9c:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0debaa0:	f000 b814 	b.w	c0debacc <nbgl_trampoline_helper>

c0debaa4 <nbgl_textReduceOnNbLines>:
c0debaa4:	b403      	push	{r0, r1}
c0debaa6:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0debaaa:	f000 b80f 	b.w	c0debacc <nbgl_trampoline_helper>

c0debaae <nbgl_touchHandler>:
c0debaae:	b403      	push	{r0, r1}
c0debab0:	f04f 00bb 	mov.w	r0, #187	@ 0xbb
c0debab4:	f000 b80a 	b.w	c0debacc <nbgl_trampoline_helper>

c0debab8 <nbgl_touchGetTouchDuration>:
c0debab8:	b403      	push	{r0, r1}
c0debaba:	f04f 00bc 	mov.w	r0, #188	@ 0xbc
c0debabe:	f000 b805 	b.w	c0debacc <nbgl_trampoline_helper>
	...

c0debac4 <pic_init>:
c0debac4:	b403      	push	{r0, r1}
c0debac6:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0debaca:	e7ff      	b.n	c0debacc <nbgl_trampoline_helper>

c0debacc <nbgl_trampoline_helper>:
c0debacc:	4900      	ldr	r1, [pc, #0]	@ (c0debad0 <nbgl_trampoline_helper+0x4>)
c0debace:	4708      	bx	r1
c0debad0:	00808001 	.word	0x00808001

c0debad4 <os_boot>:
c0debad4:	2000      	movs	r0, #0
c0debad6:	f000 bbbf 	b.w	c0dec258 <try_context_set>

c0debada <os_longjmp>:
c0debada:	4604      	mov	r4, r0
c0debadc:	f000 fbb4 	bl	c0dec248 <try_context_get>
c0debae0:	4621      	mov	r1, r4
c0debae2:	f000 fd25 	bl	c0dec530 <longjmp>
	...

c0debae8 <os_explicit_zero_BSS_segment>:
c0debae8:	4803      	ldr	r0, [pc, #12]	@ (c0debaf8 <os_explicit_zero_BSS_segment+0x10>)
c0debaea:	4904      	ldr	r1, [pc, #16]	@ (c0debafc <os_explicit_zero_BSS_segment+0x14>)
c0debaec:	4448      	add	r0, r9
c0debaee:	4449      	add	r1, r9
c0debaf0:	1a09      	subs	r1, r1, r0
c0debaf2:	f000 bcd1 	b.w	c0dec498 <explicit_bzero>
c0debaf6:	bf00      	nop
c0debaf8:	00000000 	.word	0x00000000
c0debafc:	00000df6 	.word	0x00000df6

c0debb00 <snprintf>:
c0debb00:	b081      	sub	sp, #4
c0debb02:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0debb06:	b087      	sub	sp, #28
c0debb08:	2800      	cmp	r0, #0
c0debb0a:	930f      	str	r3, [sp, #60]	@ 0x3c
c0debb0c:	f000 817a 	beq.w	c0debe04 <snprintf+0x304>
c0debb10:	460d      	mov	r5, r1
c0debb12:	2900      	cmp	r1, #0
c0debb14:	f000 8176 	beq.w	c0debe04 <snprintf+0x304>
c0debb18:	4629      	mov	r1, r5
c0debb1a:	4616      	mov	r6, r2
c0debb1c:	4604      	mov	r4, r0
c0debb1e:	f000 fcad 	bl	c0dec47c <__aeabi_memclr>
c0debb22:	f1b5 0801 	subs.w	r8, r5, #1
c0debb26:	f000 816d 	beq.w	c0debe04 <snprintf+0x304>
c0debb2a:	a80f      	add	r0, sp, #60	@ 0x3c
c0debb2c:	9002      	str	r0, [sp, #8]
c0debb2e:	7830      	ldrb	r0, [r6, #0]
c0debb30:	2800      	cmp	r0, #0
c0debb32:	f000 8167 	beq.w	c0debe04 <snprintf+0x304>
c0debb36:	2700      	movs	r7, #0
c0debb38:	b128      	cbz	r0, c0debb46 <snprintf+0x46>
c0debb3a:	2825      	cmp	r0, #37	@ 0x25
c0debb3c:	d003      	beq.n	c0debb46 <snprintf+0x46>
c0debb3e:	19f0      	adds	r0, r6, r7
c0debb40:	3701      	adds	r7, #1
c0debb42:	7840      	ldrb	r0, [r0, #1]
c0debb44:	e7f8      	b.n	c0debb38 <snprintf+0x38>
c0debb46:	4547      	cmp	r7, r8
c0debb48:	bf28      	it	cs
c0debb4a:	4647      	movcs	r7, r8
c0debb4c:	4620      	mov	r0, r4
c0debb4e:	4631      	mov	r1, r6
c0debb50:	463a      	mov	r2, r7
c0debb52:	f000 fc8b 	bl	c0dec46c <__aeabi_memmove>
c0debb56:	ebb8 0807 	subs.w	r8, r8, r7
c0debb5a:	f000 8153 	beq.w	c0debe04 <snprintf+0x304>
c0debb5e:	5df1      	ldrb	r1, [r6, r7]
c0debb60:	19f0      	adds	r0, r6, r7
c0debb62:	443c      	add	r4, r7
c0debb64:	4606      	mov	r6, r0
c0debb66:	2925      	cmp	r1, #37	@ 0x25
c0debb68:	d1e1      	bne.n	c0debb2e <snprintf+0x2e>
c0debb6a:	1c41      	adds	r1, r0, #1
c0debb6c:	f04f 0b00 	mov.w	fp, #0
c0debb70:	f04f 0e20 	mov.w	lr, #32
c0debb74:	2500      	movs	r5, #0
c0debb76:	2600      	movs	r6, #0
c0debb78:	3101      	adds	r1, #1
c0debb7a:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0debb7e:	4632      	mov	r2, r6
c0debb80:	3101      	adds	r1, #1
c0debb82:	2600      	movs	r6, #0
c0debb84:	2b2d      	cmp	r3, #45	@ 0x2d
c0debb86:	d0f8      	beq.n	c0debb7a <snprintf+0x7a>
c0debb88:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0debb8c:	2e0a      	cmp	r6, #10
c0debb8e:	d313      	bcc.n	c0debbb8 <snprintf+0xb8>
c0debb90:	2b25      	cmp	r3, #37	@ 0x25
c0debb92:	d046      	beq.n	c0debc22 <snprintf+0x122>
c0debb94:	2b2a      	cmp	r3, #42	@ 0x2a
c0debb96:	d01f      	beq.n	c0debbd8 <snprintf+0xd8>
c0debb98:	2b2e      	cmp	r3, #46	@ 0x2e
c0debb9a:	d129      	bne.n	c0debbf0 <snprintf+0xf0>
c0debb9c:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0debba0:	2a2a      	cmp	r2, #42	@ 0x2a
c0debba2:	d13c      	bne.n	c0debc1e <snprintf+0x11e>
c0debba4:	780a      	ldrb	r2, [r1, #0]
c0debba6:	2a48      	cmp	r2, #72	@ 0x48
c0debba8:	d003      	beq.n	c0debbb2 <snprintf+0xb2>
c0debbaa:	2a73      	cmp	r2, #115	@ 0x73
c0debbac:	d001      	beq.n	c0debbb2 <snprintf+0xb2>
c0debbae:	2a68      	cmp	r2, #104	@ 0x68
c0debbb0:	d135      	bne.n	c0debc1e <snprintf+0x11e>
c0debbb2:	9a02      	ldr	r2, [sp, #8]
c0debbb4:	2601      	movs	r6, #1
c0debbb6:	e017      	b.n	c0debbe8 <snprintf+0xe8>
c0debbb8:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0debbbc:	ea56 060b 	orrs.w	r6, r6, fp
c0debbc0:	bf08      	it	eq
c0debbc2:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0debbc6:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0debbca:	3901      	subs	r1, #1
c0debbcc:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0debbd0:	4616      	mov	r6, r2
c0debbd2:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0debbd6:	e7cf      	b.n	c0debb78 <snprintf+0x78>
c0debbd8:	460b      	mov	r3, r1
c0debbda:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0debbde:	2a73      	cmp	r2, #115	@ 0x73
c0debbe0:	d11d      	bne.n	c0debc1e <snprintf+0x11e>
c0debbe2:	9a02      	ldr	r2, [sp, #8]
c0debbe4:	2602      	movs	r6, #2
c0debbe6:	4619      	mov	r1, r3
c0debbe8:	1d13      	adds	r3, r2, #4
c0debbea:	9302      	str	r3, [sp, #8]
c0debbec:	6815      	ldr	r5, [r2, #0]
c0debbee:	e7c3      	b.n	c0debb78 <snprintf+0x78>
c0debbf0:	2b48      	cmp	r3, #72	@ 0x48
c0debbf2:	d018      	beq.n	c0debc26 <snprintf+0x126>
c0debbf4:	2b58      	cmp	r3, #88	@ 0x58
c0debbf6:	d019      	beq.n	c0debc2c <snprintf+0x12c>
c0debbf8:	2b63      	cmp	r3, #99	@ 0x63
c0debbfa:	d020      	beq.n	c0debc3e <snprintf+0x13e>
c0debbfc:	2b64      	cmp	r3, #100	@ 0x64
c0debbfe:	d02a      	beq.n	c0debc56 <snprintf+0x156>
c0debc00:	2b68      	cmp	r3, #104	@ 0x68
c0debc02:	d036      	beq.n	c0debc72 <snprintf+0x172>
c0debc04:	2b70      	cmp	r3, #112	@ 0x70
c0debc06:	d006      	beq.n	c0debc16 <snprintf+0x116>
c0debc08:	2b73      	cmp	r3, #115	@ 0x73
c0debc0a:	d037      	beq.n	c0debc7c <snprintf+0x17c>
c0debc0c:	2b75      	cmp	r3, #117	@ 0x75
c0debc0e:	f000 8081 	beq.w	c0debd14 <snprintf+0x214>
c0debc12:	2b78      	cmp	r3, #120	@ 0x78
c0debc14:	d103      	bne.n	c0debc1e <snprintf+0x11e>
c0debc16:	9400      	str	r4, [sp, #0]
c0debc18:	f04f 0c00 	mov.w	ip, #0
c0debc1c:	e009      	b.n	c0debc32 <snprintf+0x132>
c0debc1e:	1e4e      	subs	r6, r1, #1
c0debc20:	e785      	b.n	c0debb2e <snprintf+0x2e>
c0debc22:	2025      	movs	r0, #37	@ 0x25
c0debc24:	e00f      	b.n	c0debc46 <snprintf+0x146>
c0debc26:	487b      	ldr	r0, [pc, #492]	@ (c0debe14 <snprintf+0x314>)
c0debc28:	4478      	add	r0, pc
c0debc2a:	e024      	b.n	c0debc76 <snprintf+0x176>
c0debc2c:	f04f 0c01 	mov.w	ip, #1
c0debc30:	9400      	str	r4, [sp, #0]
c0debc32:	9a02      	ldr	r2, [sp, #8]
c0debc34:	2400      	movs	r4, #0
c0debc36:	1d13      	adds	r3, r2, #4
c0debc38:	9302      	str	r3, [sp, #8]
c0debc3a:	2310      	movs	r3, #16
c0debc3c:	e072      	b.n	c0debd24 <snprintf+0x224>
c0debc3e:	9802      	ldr	r0, [sp, #8]
c0debc40:	1d02      	adds	r2, r0, #4
c0debc42:	9202      	str	r2, [sp, #8]
c0debc44:	6800      	ldr	r0, [r0, #0]
c0debc46:	1e4e      	subs	r6, r1, #1
c0debc48:	f804 0b01 	strb.w	r0, [r4], #1
c0debc4c:	f1b8 0801 	subs.w	r8, r8, #1
c0debc50:	f47f af6d 	bne.w	c0debb2e <snprintf+0x2e>
c0debc54:	e0d6      	b.n	c0debe04 <snprintf+0x304>
c0debc56:	9a02      	ldr	r2, [sp, #8]
c0debc58:	9400      	str	r4, [sp, #0]
c0debc5a:	1d13      	adds	r3, r2, #4
c0debc5c:	9302      	str	r3, [sp, #8]
c0debc5e:	6813      	ldr	r3, [r2, #0]
c0debc60:	2b00      	cmp	r3, #0
c0debc62:	461a      	mov	r2, r3
c0debc64:	d500      	bpl.n	c0debc68 <snprintf+0x168>
c0debc66:	425a      	negs	r2, r3
c0debc68:	0fdc      	lsrs	r4, r3, #31
c0debc6a:	f04f 0c00 	mov.w	ip, #0
c0debc6e:	230a      	movs	r3, #10
c0debc70:	e059      	b.n	c0debd26 <snprintf+0x226>
c0debc72:	4869      	ldr	r0, [pc, #420]	@ (c0debe18 <snprintf+0x318>)
c0debc74:	4478      	add	r0, pc
c0debc76:	f04f 0c01 	mov.w	ip, #1
c0debc7a:	e003      	b.n	c0debc84 <snprintf+0x184>
c0debc7c:	4864      	ldr	r0, [pc, #400]	@ (c0debe10 <snprintf+0x310>)
c0debc7e:	f04f 0c00 	mov.w	ip, #0
c0debc82:	4478      	add	r0, pc
c0debc84:	9b02      	ldr	r3, [sp, #8]
c0debc86:	b2d2      	uxtb	r2, r2
c0debc88:	1d1e      	adds	r6, r3, #4
c0debc8a:	9602      	str	r6, [sp, #8]
c0debc8c:	1e4e      	subs	r6, r1, #1
c0debc8e:	6819      	ldr	r1, [r3, #0]
c0debc90:	2a02      	cmp	r2, #2
c0debc92:	f000 80a7 	beq.w	c0debde4 <snprintf+0x2e4>
c0debc96:	2a01      	cmp	r2, #1
c0debc98:	d007      	beq.n	c0debcaa <snprintf+0x1aa>
c0debc9a:	463d      	mov	r5, r7
c0debc9c:	b92a      	cbnz	r2, c0debcaa <snprintf+0x1aa>
c0debc9e:	2200      	movs	r2, #0
c0debca0:	5c8b      	ldrb	r3, [r1, r2]
c0debca2:	3201      	adds	r2, #1
c0debca4:	2b00      	cmp	r3, #0
c0debca6:	d1fb      	bne.n	c0debca0 <snprintf+0x1a0>
c0debca8:	1e55      	subs	r5, r2, #1
c0debcaa:	f1bc 0f00 	cmp.w	ip, #0
c0debcae:	d016      	beq.n	c0debcde <snprintf+0x1de>
c0debcb0:	2d00      	cmp	r5, #0
c0debcb2:	f43f af3c 	beq.w	c0debb2e <snprintf+0x2e>
c0debcb6:	f1b8 0f02 	cmp.w	r8, #2
c0debcba:	f0c0 80a3 	bcc.w	c0debe04 <snprintf+0x304>
c0debcbe:	780a      	ldrb	r2, [r1, #0]
c0debcc0:	0913      	lsrs	r3, r2, #4
c0debcc2:	f002 020f 	and.w	r2, r2, #15
c0debcc6:	5cc3      	ldrb	r3, [r0, r3]
c0debcc8:	f1b8 0802 	subs.w	r8, r8, #2
c0debccc:	7023      	strb	r3, [r4, #0]
c0debcce:	5c82      	ldrb	r2, [r0, r2]
c0debcd0:	7062      	strb	r2, [r4, #1]
c0debcd2:	f000 8097 	beq.w	c0debe04 <snprintf+0x304>
c0debcd6:	3101      	adds	r1, #1
c0debcd8:	3d01      	subs	r5, #1
c0debcda:	3402      	adds	r4, #2
c0debcdc:	e7e8      	b.n	c0debcb0 <snprintf+0x1b0>
c0debcde:	4545      	cmp	r5, r8
c0debce0:	bf28      	it	cs
c0debce2:	4645      	movcs	r5, r8
c0debce4:	4620      	mov	r0, r4
c0debce6:	462a      	mov	r2, r5
c0debce8:	f000 fbc0 	bl	c0dec46c <__aeabi_memmove>
c0debcec:	ebb8 0805 	subs.w	r8, r8, r5
c0debcf0:	f000 8088 	beq.w	c0debe04 <snprintf+0x304>
c0debcf4:	462f      	mov	r7, r5
c0debcf6:	442c      	add	r4, r5
c0debcf8:	45bb      	cmp	fp, r7
c0debcfa:	f67f af18 	bls.w	c0debb2e <snprintf+0x2e>
c0debcfe:	ebab 0507 	sub.w	r5, fp, r7
c0debd02:	4620      	mov	r0, r4
c0debd04:	4545      	cmp	r5, r8
c0debd06:	bf28      	it	cs
c0debd08:	4645      	movcs	r5, r8
c0debd0a:	4629      	mov	r1, r5
c0debd0c:	2220      	movs	r2, #32
c0debd0e:	f000 fbaf 	bl	c0dec470 <__aeabi_memset>
c0debd12:	e061      	b.n	c0debdd8 <snprintf+0x2d8>
c0debd14:	9a02      	ldr	r2, [sp, #8]
c0debd16:	9400      	str	r4, [sp, #0]
c0debd18:	2400      	movs	r4, #0
c0debd1a:	f04f 0c00 	mov.w	ip, #0
c0debd1e:	1d13      	adds	r3, r2, #4
c0debd20:	9302      	str	r3, [sp, #8]
c0debd22:	230a      	movs	r3, #10
c0debd24:	6812      	ldr	r2, [r2, #0]
c0debd26:	483d      	ldr	r0, [pc, #244]	@ (c0debe1c <snprintf+0x31c>)
c0debd28:	1e4e      	subs	r6, r1, #1
c0debd2a:	f04f 0a01 	mov.w	sl, #1
c0debd2e:	4478      	add	r0, pc
c0debd30:	9001      	str	r0, [sp, #4]
c0debd32:	fba3 570a 	umull	r5, r7, r3, sl
c0debd36:	2f00      	cmp	r7, #0
c0debd38:	bf18      	it	ne
c0debd3a:	2701      	movne	r7, #1
c0debd3c:	4295      	cmp	r5, r2
c0debd3e:	d804      	bhi.n	c0debd4a <snprintf+0x24a>
c0debd40:	b91f      	cbnz	r7, c0debd4a <snprintf+0x24a>
c0debd42:	f1ab 0b01 	sub.w	fp, fp, #1
c0debd46:	46aa      	mov	sl, r5
c0debd48:	e7f3      	b.n	c0debd32 <snprintf+0x232>
c0debd4a:	2c00      	cmp	r4, #0
c0debd4c:	4627      	mov	r7, r4
c0debd4e:	f04f 0500 	mov.w	r5, #0
c0debd52:	bf18      	it	ne
c0debd54:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0debd58:	d00d      	beq.n	c0debd76 <snprintf+0x276>
c0debd5a:	4660      	mov	r0, ip
c0debd5c:	fa5f fc8e 	uxtb.w	ip, lr
c0debd60:	a903      	add	r1, sp, #12
c0debd62:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0debd66:	4684      	mov	ip, r0
c0debd68:	d106      	bne.n	c0debd78 <snprintf+0x278>
c0debd6a:	202d      	movs	r0, #45	@ 0x2d
c0debd6c:	2400      	movs	r4, #0
c0debd6e:	2501      	movs	r5, #1
c0debd70:	f88d 000c 	strb.w	r0, [sp, #12]
c0debd74:	e000      	b.n	c0debd78 <snprintf+0x278>
c0debd76:	a903      	add	r1, sp, #12
c0debd78:	eb07 000b 	add.w	r0, r7, fp
c0debd7c:	3802      	subs	r0, #2
c0debd7e:	280d      	cmp	r0, #13
c0debd80:	d808      	bhi.n	c0debd94 <snprintf+0x294>
c0debd82:	f1c7 0701 	rsb	r7, r7, #1
c0debd86:	45bb      	cmp	fp, r7
c0debd88:	d004      	beq.n	c0debd94 <snprintf+0x294>
c0debd8a:	f801 e005 	strb.w	lr, [r1, r5]
c0debd8e:	3701      	adds	r7, #1
c0debd90:	3501      	adds	r5, #1
c0debd92:	e7f8      	b.n	c0debd86 <snprintf+0x286>
c0debd94:	9f01      	ldr	r7, [sp, #4]
c0debd96:	b114      	cbz	r4, c0debd9e <snprintf+0x29e>
c0debd98:	202d      	movs	r0, #45	@ 0x2d
c0debd9a:	5548      	strb	r0, [r1, r5]
c0debd9c:	3501      	adds	r5, #1
c0debd9e:	4820      	ldr	r0, [pc, #128]	@ (c0debe20 <snprintf+0x320>)
c0debda0:	f1bc 0f00 	cmp.w	ip, #0
c0debda4:	4478      	add	r0, pc
c0debda6:	bf08      	it	eq
c0debda8:	4638      	moveq	r0, r7
c0debdaa:	f1ba 0f00 	cmp.w	sl, #0
c0debdae:	d00b      	beq.n	c0debdc8 <snprintf+0x2c8>
c0debdb0:	fbb2 f7fa 	udiv	r7, r2, sl
c0debdb4:	fbba faf3 	udiv	sl, sl, r3
c0debdb8:	fbb7 f4f3 	udiv	r4, r7, r3
c0debdbc:	fb04 7413 	mls	r4, r4, r3, r7
c0debdc0:	5d04      	ldrb	r4, [r0, r4]
c0debdc2:	554c      	strb	r4, [r1, r5]
c0debdc4:	3501      	adds	r5, #1
c0debdc6:	e7f0      	b.n	c0debdaa <snprintf+0x2aa>
c0debdc8:	4545      	cmp	r5, r8
c0debdca:	bf28      	it	cs
c0debdcc:	4645      	movcs	r5, r8
c0debdce:	9c00      	ldr	r4, [sp, #0]
c0debdd0:	462a      	mov	r2, r5
c0debdd2:	4620      	mov	r0, r4
c0debdd4:	f000 fb4a 	bl	c0dec46c <__aeabi_memmove>
c0debdd8:	ebb8 0805 	subs.w	r8, r8, r5
c0debddc:	442c      	add	r4, r5
c0debdde:	f47f aea6 	bne.w	c0debb2e <snprintf+0x2e>
c0debde2:	e00f      	b.n	c0debe04 <snprintf+0x304>
c0debde4:	7808      	ldrb	r0, [r1, #0]
c0debde6:	2800      	cmp	r0, #0
c0debde8:	f47f aea1 	bne.w	c0debb2e <snprintf+0x2e>
c0debdec:	4545      	cmp	r5, r8
c0debdee:	bf28      	it	cs
c0debdf0:	4645      	movcs	r5, r8
c0debdf2:	4620      	mov	r0, r4
c0debdf4:	4629      	mov	r1, r5
c0debdf6:	2220      	movs	r2, #32
c0debdf8:	f000 fb3a 	bl	c0dec470 <__aeabi_memset>
c0debdfc:	ebb8 0805 	subs.w	r8, r8, r5
c0debe00:	f47f af79 	bne.w	c0debcf6 <snprintf+0x1f6>
c0debe04:	2000      	movs	r0, #0
c0debe06:	b007      	add	sp, #28
c0debe08:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0debe0c:	b001      	add	sp, #4
c0debe0e:	4770      	bx	lr
c0debe10:	000036ba 	.word	0x000036ba
c0debe14:	00003724 	.word	0x00003724
c0debe18:	000036c8 	.word	0x000036c8
c0debe1c:	0000360e 	.word	0x0000360e
c0debe20:	000035a8 	.word	0x000035a8

c0debe24 <pic>:
c0debe24:	4a0a      	ldr	r2, [pc, #40]	@ (c0debe50 <pic+0x2c>)
c0debe26:	4282      	cmp	r2, r0
c0debe28:	490a      	ldr	r1, [pc, #40]	@ (c0debe54 <pic+0x30>)
c0debe2a:	d806      	bhi.n	c0debe3a <pic+0x16>
c0debe2c:	4281      	cmp	r1, r0
c0debe2e:	d304      	bcc.n	c0debe3a <pic+0x16>
c0debe30:	b580      	push	{r7, lr}
c0debe32:	f000 f815 	bl	c0debe60 <pic_internal>
c0debe36:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0debe3a:	4907      	ldr	r1, [pc, #28]	@ (c0debe58 <pic+0x34>)
c0debe3c:	4288      	cmp	r0, r1
c0debe3e:	4a07      	ldr	r2, [pc, #28]	@ (c0debe5c <pic+0x38>)
c0debe40:	d304      	bcc.n	c0debe4c <pic+0x28>
c0debe42:	4290      	cmp	r0, r2
c0debe44:	d802      	bhi.n	c0debe4c <pic+0x28>
c0debe46:	1a40      	subs	r0, r0, r1
c0debe48:	4649      	mov	r1, r9
c0debe4a:	4408      	add	r0, r1
c0debe4c:	4770      	bx	lr
c0debe4e:	0000      	movs	r0, r0
c0debe50:	c0de0000 	.word	0xc0de0000
c0debe54:	c0def70b 	.word	0xc0def70b
c0debe58:	da7a0000 	.word	0xda7a0000
c0debe5c:	da7a9000 	.word	0xda7a9000

c0debe60 <pic_internal>:
c0debe60:	467a      	mov	r2, pc
c0debe62:	4902      	ldr	r1, [pc, #8]	@ (c0debe6c <pic_internal+0xc>)
c0debe64:	1cc9      	adds	r1, r1, #3
c0debe66:	1a89      	subs	r1, r1, r2
c0debe68:	1a40      	subs	r0, r0, r1
c0debe6a:	4770      	bx	lr
c0debe6c:	c0debe61 	.word	0xc0debe61

c0debe70 <SVC_Call>:
c0debe70:	df01      	svc	1
c0debe72:	2900      	cmp	r1, #0
c0debe74:	d100      	bne.n	c0debe78 <exception>
c0debe76:	4770      	bx	lr

c0debe78 <exception>:
c0debe78:	4608      	mov	r0, r1
c0debe7a:	f7ff fe2e 	bl	c0debada <os_longjmp>
	...

c0debe80 <SVC_cx_call>:
c0debe80:	df01      	svc	1
c0debe82:	4770      	bx	lr

c0debe84 <nbgl_wait_pipeline>:
c0debe84:	b5e0      	push	{r5, r6, r7, lr}
c0debe86:	2000      	movs	r0, #0
c0debe88:	9001      	str	r0, [sp, #4]
c0debe8a:	4802      	ldr	r0, [pc, #8]	@ (c0debe94 <nbgl_wait_pipeline+0x10>)
c0debe8c:	a901      	add	r1, sp, #4
c0debe8e:	f7ff ffef 	bl	c0debe70 <SVC_Call>
c0debe92:	bd8c      	pop	{r2, r3, r7, pc}
c0debe94:	00fa0011 	.word	0x00fa0011

c0debe98 <nvm_write>:
c0debe98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debe9a:	ab01      	add	r3, sp, #4
c0debe9c:	c307      	stmia	r3!, {r0, r1, r2}
c0debe9e:	4802      	ldr	r0, [pc, #8]	@ (c0debea8 <nvm_write+0x10>)
c0debea0:	a901      	add	r1, sp, #4
c0debea2:	f7ff ffe5 	bl	c0debe70 <SVC_Call>
c0debea6:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0debea8:	03000003 	.word	0x03000003

c0debeac <cx_bn_lock>:
c0debeac:	b5e0      	push	{r5, r6, r7, lr}
c0debeae:	e9cd 0100 	strd	r0, r1, [sp]
c0debeb2:	4802      	ldr	r0, [pc, #8]	@ (c0debebc <cx_bn_lock+0x10>)
c0debeb4:	4669      	mov	r1, sp
c0debeb6:	f7ff ffe3 	bl	c0debe80 <SVC_cx_call>
c0debeba:	bd8c      	pop	{r2, r3, r7, pc}
c0debebc:	02000112 	.word	0x02000112

c0debec0 <cx_bn_unlock>:
c0debec0:	b5e0      	push	{r5, r6, r7, lr}
c0debec2:	2000      	movs	r0, #0
c0debec4:	4669      	mov	r1, sp
c0debec6:	9001      	str	r0, [sp, #4]
c0debec8:	20b6      	movs	r0, #182	@ 0xb6
c0debeca:	f7ff ffd9 	bl	c0debe80 <SVC_cx_call>
c0debece:	bd8c      	pop	{r2, r3, r7, pc}

c0debed0 <cx_bn_alloc>:
c0debed0:	b5e0      	push	{r5, r6, r7, lr}
c0debed2:	e9cd 0100 	strd	r0, r1, [sp]
c0debed6:	4802      	ldr	r0, [pc, #8]	@ (c0debee0 <cx_bn_alloc+0x10>)
c0debed8:	4669      	mov	r1, sp
c0debeda:	f7ff ffd1 	bl	c0debe80 <SVC_cx_call>
c0debede:	bd8c      	pop	{r2, r3, r7, pc}
c0debee0:	02000113 	.word	0x02000113

c0debee4 <cx_bn_alloc_init>:
c0debee4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debee6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0debeea:	4803      	ldr	r0, [pc, #12]	@ (c0debef8 <cx_bn_alloc_init+0x14>)
c0debeec:	4669      	mov	r1, sp
c0debeee:	f7ff ffc7 	bl	c0debe80 <SVC_cx_call>
c0debef2:	b004      	add	sp, #16
c0debef4:	bd80      	pop	{r7, pc}
c0debef6:	bf00      	nop
c0debef8:	04000114 	.word	0x04000114

c0debefc <cx_bn_destroy>:
c0debefc:	b5e0      	push	{r5, r6, r7, lr}
c0debefe:	f000 f9cb 	bl	c0dec298 <OUTLINED_FUNCTION_0>
c0debf02:	4802      	ldr	r0, [pc, #8]	@ (c0debf0c <cx_bn_destroy+0x10>)
c0debf04:	4669      	mov	r1, sp
c0debf06:	f7ff ffbb 	bl	c0debe80 <SVC_cx_call>
c0debf0a:	bd8c      	pop	{r2, r3, r7, pc}
c0debf0c:	010000bc 	.word	0x010000bc

c0debf10 <cx_bn_nbytes>:
c0debf10:	b5e0      	push	{r5, r6, r7, lr}
c0debf12:	e9cd 0100 	strd	r0, r1, [sp]
c0debf16:	4802      	ldr	r0, [pc, #8]	@ (c0debf20 <cx_bn_nbytes+0x10>)
c0debf18:	4669      	mov	r1, sp
c0debf1a:	f7ff ffb1 	bl	c0debe80 <SVC_cx_call>
c0debf1e:	bd8c      	pop	{r2, r3, r7, pc}
c0debf20:	0200010d 	.word	0x0200010d

c0debf24 <cx_bn_init>:
c0debf24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debf26:	ab01      	add	r3, sp, #4
c0debf28:	c307      	stmia	r3!, {r0, r1, r2}
c0debf2a:	4803      	ldr	r0, [pc, #12]	@ (c0debf38 <cx_bn_init+0x14>)
c0debf2c:	a901      	add	r1, sp, #4
c0debf2e:	f7ff ffa7 	bl	c0debe80 <SVC_cx_call>
c0debf32:	b004      	add	sp, #16
c0debf34:	bd80      	pop	{r7, pc}
c0debf36:	bf00      	nop
c0debf38:	03000115 	.word	0x03000115

c0debf3c <cx_bn_copy>:
c0debf3c:	b5e0      	push	{r5, r6, r7, lr}
c0debf3e:	e9cd 0100 	strd	r0, r1, [sp]
c0debf42:	4802      	ldr	r0, [pc, #8]	@ (c0debf4c <cx_bn_copy+0x10>)
c0debf44:	4669      	mov	r1, sp
c0debf46:	f7ff ff9b 	bl	c0debe80 <SVC_cx_call>
c0debf4a:	bd8c      	pop	{r2, r3, r7, pc}
c0debf4c:	020000c0 	.word	0x020000c0

c0debf50 <cx_bn_set_u32>:
c0debf50:	b5e0      	push	{r5, r6, r7, lr}
c0debf52:	e9cd 0100 	strd	r0, r1, [sp]
c0debf56:	4802      	ldr	r0, [pc, #8]	@ (c0debf60 <cx_bn_set_u32+0x10>)
c0debf58:	4669      	mov	r1, sp
c0debf5a:	f7ff ff91 	bl	c0debe80 <SVC_cx_call>
c0debf5e:	bd8c      	pop	{r2, r3, r7, pc}
c0debf60:	020000c1 	.word	0x020000c1

c0debf64 <cx_bn_export>:
c0debf64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debf66:	ab01      	add	r3, sp, #4
c0debf68:	c307      	stmia	r3!, {r0, r1, r2}
c0debf6a:	4803      	ldr	r0, [pc, #12]	@ (c0debf78 <cx_bn_export+0x14>)
c0debf6c:	a901      	add	r1, sp, #4
c0debf6e:	f7ff ff87 	bl	c0debe80 <SVC_cx_call>
c0debf72:	b004      	add	sp, #16
c0debf74:	bd80      	pop	{r7, pc}
c0debf76:	bf00      	nop
c0debf78:	030000c3 	.word	0x030000c3

c0debf7c <cx_bn_cmp>:
c0debf7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debf7e:	ab01      	add	r3, sp, #4
c0debf80:	c307      	stmia	r3!, {r0, r1, r2}
c0debf82:	4803      	ldr	r0, [pc, #12]	@ (c0debf90 <cx_bn_cmp+0x14>)
c0debf84:	a901      	add	r1, sp, #4
c0debf86:	f7ff ff7b 	bl	c0debe80 <SVC_cx_call>
c0debf8a:	b004      	add	sp, #16
c0debf8c:	bd80      	pop	{r7, pc}
c0debf8e:	bf00      	nop
c0debf90:	030000c4 	.word	0x030000c4

c0debf94 <cx_bn_cmp_u32>:
c0debf94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debf96:	ab01      	add	r3, sp, #4
c0debf98:	c307      	stmia	r3!, {r0, r1, r2}
c0debf9a:	4803      	ldr	r0, [pc, #12]	@ (c0debfa8 <cx_bn_cmp_u32+0x14>)
c0debf9c:	a901      	add	r1, sp, #4
c0debf9e:	f7ff ff6f 	bl	c0debe80 <SVC_cx_call>
c0debfa2:	b004      	add	sp, #16
c0debfa4:	bd80      	pop	{r7, pc}
c0debfa6:	bf00      	nop
c0debfa8:	030000c5 	.word	0x030000c5

c0debfac <cx_bn_tst_bit>:
c0debfac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debfae:	ab01      	add	r3, sp, #4
c0debfb0:	c307      	stmia	r3!, {r0, r1, r2}
c0debfb2:	4803      	ldr	r0, [pc, #12]	@ (c0debfc0 <cx_bn_tst_bit+0x14>)
c0debfb4:	a901      	add	r1, sp, #4
c0debfb6:	f7ff ff63 	bl	c0debe80 <SVC_cx_call>
c0debfba:	b004      	add	sp, #16
c0debfbc:	bd80      	pop	{r7, pc}
c0debfbe:	bf00      	nop
c0debfc0:	030000cb 	.word	0x030000cb

c0debfc4 <cx_bn_mod_add>:
c0debfc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debfc6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0debfca:	4803      	ldr	r0, [pc, #12]	@ (c0debfd8 <cx_bn_mod_add+0x14>)
c0debfcc:	4669      	mov	r1, sp
c0debfce:	f7ff ff57 	bl	c0debe80 <SVC_cx_call>
c0debfd2:	b004      	add	sp, #16
c0debfd4:	bd80      	pop	{r7, pc}
c0debfd6:	bf00      	nop
c0debfd8:	040000d3 	.word	0x040000d3

c0debfdc <cx_bn_mod_sub>:
c0debfdc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debfde:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0debfe2:	4803      	ldr	r0, [pc, #12]	@ (c0debff0 <cx_bn_mod_sub+0x14>)
c0debfe4:	4669      	mov	r1, sp
c0debfe6:	f7ff ff4b 	bl	c0debe80 <SVC_cx_call>
c0debfea:	b004      	add	sp, #16
c0debfec:	bd80      	pop	{r7, pc}
c0debfee:	bf00      	nop
c0debff0:	040000d4 	.word	0x040000d4

c0debff4 <cx_bn_mod_mul>:
c0debff4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debff6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0debffa:	4803      	ldr	r0, [pc, #12]	@ (c0dec008 <cx_bn_mod_mul+0x14>)
c0debffc:	4669      	mov	r1, sp
c0debffe:	f7ff ff3f 	bl	c0debe80 <SVC_cx_call>
c0dec002:	b004      	add	sp, #16
c0dec004:	bd80      	pop	{r7, pc}
c0dec006:	bf00      	nop
c0dec008:	040000d5 	.word	0x040000d5

c0dec00c <cx_bn_reduce>:
c0dec00c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec00e:	ab01      	add	r3, sp, #4
c0dec010:	c307      	stmia	r3!, {r0, r1, r2}
c0dec012:	4803      	ldr	r0, [pc, #12]	@ (c0dec020 <cx_bn_reduce+0x14>)
c0dec014:	a901      	add	r1, sp, #4
c0dec016:	f7ff ff33 	bl	c0debe80 <SVC_cx_call>
c0dec01a:	b004      	add	sp, #16
c0dec01c:	bd80      	pop	{r7, pc}
c0dec01e:	bf00      	nop
c0dec020:	030000d6 	.word	0x030000d6

c0dec024 <cx_bn_mod_invert_nprime>:
c0dec024:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec026:	ab01      	add	r3, sp, #4
c0dec028:	c307      	stmia	r3!, {r0, r1, r2}
c0dec02a:	4803      	ldr	r0, [pc, #12]	@ (c0dec038 <cx_bn_mod_invert_nprime+0x14>)
c0dec02c:	a901      	add	r1, sp, #4
c0dec02e:	f7ff ff27 	bl	c0debe80 <SVC_cx_call>
c0dec032:	b004      	add	sp, #16
c0dec034:	bd80      	pop	{r7, pc}
c0dec036:	bf00      	nop
c0dec038:	030000da 	.word	0x030000da

c0dec03c <cx_bn_is_prime>:
c0dec03c:	b5e0      	push	{r5, r6, r7, lr}
c0dec03e:	e9cd 0100 	strd	r0, r1, [sp]
c0dec042:	4802      	ldr	r0, [pc, #8]	@ (c0dec04c <cx_bn_is_prime+0x10>)
c0dec044:	4669      	mov	r1, sp
c0dec046:	f7ff ff1b 	bl	c0debe80 <SVC_cx_call>
c0dec04a:	bd8c      	pop	{r2, r3, r7, pc}
c0dec04c:	020000ef 	.word	0x020000ef

c0dec050 <cx_mont_alloc>:
c0dec050:	b5e0      	push	{r5, r6, r7, lr}
c0dec052:	e9cd 0100 	strd	r0, r1, [sp]
c0dec056:	4802      	ldr	r0, [pc, #8]	@ (c0dec060 <cx_mont_alloc+0x10>)
c0dec058:	4669      	mov	r1, sp
c0dec05a:	f7ff ff11 	bl	c0debe80 <SVC_cx_call>
c0dec05e:	bd8c      	pop	{r2, r3, r7, pc}
c0dec060:	020000dc 	.word	0x020000dc

c0dec064 <cx_mont_init>:
c0dec064:	b5e0      	push	{r5, r6, r7, lr}
c0dec066:	e9cd 0100 	strd	r0, r1, [sp]
c0dec06a:	4802      	ldr	r0, [pc, #8]	@ (c0dec074 <cx_mont_init+0x10>)
c0dec06c:	4669      	mov	r1, sp
c0dec06e:	f7ff ff07 	bl	c0debe80 <SVC_cx_call>
c0dec072:	bd8c      	pop	{r2, r3, r7, pc}
c0dec074:	020000dd 	.word	0x020000dd

c0dec078 <cx_mont_to_montgomery>:
c0dec078:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec07a:	ab01      	add	r3, sp, #4
c0dec07c:	c307      	stmia	r3!, {r0, r1, r2}
c0dec07e:	4803      	ldr	r0, [pc, #12]	@ (c0dec08c <cx_mont_to_montgomery+0x14>)
c0dec080:	a901      	add	r1, sp, #4
c0dec082:	f7ff fefd 	bl	c0debe80 <SVC_cx_call>
c0dec086:	b004      	add	sp, #16
c0dec088:	bd80      	pop	{r7, pc}
c0dec08a:	bf00      	nop
c0dec08c:	030000df 	.word	0x030000df

c0dec090 <cx_mont_from_montgomery>:
c0dec090:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec092:	ab01      	add	r3, sp, #4
c0dec094:	c307      	stmia	r3!, {r0, r1, r2}
c0dec096:	4803      	ldr	r0, [pc, #12]	@ (c0dec0a4 <cx_mont_from_montgomery+0x14>)
c0dec098:	a901      	add	r1, sp, #4
c0dec09a:	f7ff fef1 	bl	c0debe80 <SVC_cx_call>
c0dec09e:	b004      	add	sp, #16
c0dec0a0:	bd80      	pop	{r7, pc}
c0dec0a2:	bf00      	nop
c0dec0a4:	030000e0 	.word	0x030000e0

c0dec0a8 <cx_mont_mul>:
c0dec0a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec0aa:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dec0ae:	4803      	ldr	r0, [pc, #12]	@ (c0dec0bc <cx_mont_mul+0x14>)
c0dec0b0:	4669      	mov	r1, sp
c0dec0b2:	f7ff fee5 	bl	c0debe80 <SVC_cx_call>
c0dec0b6:	b004      	add	sp, #16
c0dec0b8:	bd80      	pop	{r7, pc}
c0dec0ba:	bf00      	nop
c0dec0bc:	040000e1 	.word	0x040000e1

c0dec0c0 <cx_mont_pow>:
c0dec0c0:	b510      	push	{r4, lr}
c0dec0c2:	b086      	sub	sp, #24
c0dec0c4:	f10d 0c04 	add.w	ip, sp, #4
c0dec0c8:	9c08      	ldr	r4, [sp, #32]
c0dec0ca:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0dec0ce:	4803      	ldr	r0, [pc, #12]	@ (c0dec0dc <cx_mont_pow+0x1c>)
c0dec0d0:	a901      	add	r1, sp, #4
c0dec0d2:	f7ff fed5 	bl	c0debe80 <SVC_cx_call>
c0dec0d6:	b006      	add	sp, #24
c0dec0d8:	bd10      	pop	{r4, pc}
c0dec0da:	bf00      	nop
c0dec0dc:	050000e2 	.word	0x050000e2

c0dec0e0 <cx_mont_invert_nprime>:
c0dec0e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec0e2:	ab01      	add	r3, sp, #4
c0dec0e4:	c307      	stmia	r3!, {r0, r1, r2}
c0dec0e6:	4803      	ldr	r0, [pc, #12]	@ (c0dec0f4 <cx_mont_invert_nprime+0x14>)
c0dec0e8:	a901      	add	r1, sp, #4
c0dec0ea:	f7ff fec9 	bl	c0debe80 <SVC_cx_call>
c0dec0ee:	b004      	add	sp, #16
c0dec0f0:	bd80      	pop	{r7, pc}
c0dec0f2:	bf00      	nop
c0dec0f4:	030000e4 	.word	0x030000e4

c0dec0f8 <cx_ecdomain_parameters_length>:
c0dec0f8:	b5e0      	push	{r5, r6, r7, lr}
c0dec0fa:	e9cd 0100 	strd	r0, r1, [sp]
c0dec0fe:	4802      	ldr	r0, [pc, #8]	@ (c0dec108 <cx_ecdomain_parameters_length+0x10>)
c0dec100:	4669      	mov	r1, sp
c0dec102:	f7ff febd 	bl	c0debe80 <SVC_cx_call>
c0dec106:	bd8c      	pop	{r2, r3, r7, pc}
c0dec108:	0200012f 	.word	0x0200012f

c0dec10c <os_perso_derive_node_with_seed_key>:
c0dec10c:	b510      	push	{r4, lr}
c0dec10e:	b088      	sub	sp, #32
c0dec110:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0dec112:	9407      	str	r4, [sp, #28]
c0dec114:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0dec116:	9406      	str	r4, [sp, #24]
c0dec118:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0dec11a:	9405      	str	r4, [sp, #20]
c0dec11c:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0dec11e:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0dec122:	4803      	ldr	r0, [pc, #12]	@ (c0dec130 <os_perso_derive_node_with_seed_key+0x24>)
c0dec124:	4669      	mov	r1, sp
c0dec126:	f7ff fea3 	bl	c0debe70 <SVC_Call>
c0dec12a:	b008      	add	sp, #32
c0dec12c:	bd10      	pop	{r4, pc}
c0dec12e:	bf00      	nop
c0dec130:	080000a6 	.word	0x080000a6

c0dec134 <os_pki_load_certificate>:
c0dec134:	b510      	push	{r4, lr}
c0dec136:	b086      	sub	sp, #24
c0dec138:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0dec13a:	9405      	str	r4, [sp, #20]
c0dec13c:	9c08      	ldr	r4, [sp, #32]
c0dec13e:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0dec142:	4803      	ldr	r0, [pc, #12]	@ (c0dec150 <os_pki_load_certificate+0x1c>)
c0dec144:	4669      	mov	r1, sp
c0dec146:	f7ff fe93 	bl	c0debe70 <SVC_Call>
c0dec14a:	b006      	add	sp, #24
c0dec14c:	bd10      	pop	{r4, pc}
c0dec14e:	bf00      	nop
c0dec150:	060000aa 	.word	0x060000aa

c0dec154 <os_perso_is_pin_set>:
c0dec154:	b5e0      	push	{r5, r6, r7, lr}
c0dec156:	2000      	movs	r0, #0
c0dec158:	4669      	mov	r1, sp
c0dec15a:	9001      	str	r0, [sp, #4]
c0dec15c:	209e      	movs	r0, #158	@ 0x9e
c0dec15e:	f7ff fe87 	bl	c0debe70 <SVC_Call>
c0dec162:	b2c0      	uxtb	r0, r0
c0dec164:	bd8c      	pop	{r2, r3, r7, pc}

c0dec166 <os_global_pin_is_validated>:
c0dec166:	b5e0      	push	{r5, r6, r7, lr}
c0dec168:	2000      	movs	r0, #0
c0dec16a:	4669      	mov	r1, sp
c0dec16c:	9001      	str	r0, [sp, #4]
c0dec16e:	20a0      	movs	r0, #160	@ 0xa0
c0dec170:	f7ff fe7e 	bl	c0debe70 <SVC_Call>
c0dec174:	b2c0      	uxtb	r0, r0
c0dec176:	bd8c      	pop	{r2, r3, r7, pc}

c0dec178 <os_ux>:
c0dec178:	b5e0      	push	{r5, r6, r7, lr}
c0dec17a:	f000 f88d 	bl	c0dec298 <OUTLINED_FUNCTION_0>
c0dec17e:	4802      	ldr	r0, [pc, #8]	@ (c0dec188 <os_ux+0x10>)
c0dec180:	4669      	mov	r1, sp
c0dec182:	f7ff fe75 	bl	c0debe70 <SVC_Call>
c0dec186:	bd8c      	pop	{r2, r3, r7, pc}
c0dec188:	01000064 	.word	0x01000064

c0dec18c <os_lib_end>:
c0dec18c:	b082      	sub	sp, #8
c0dec18e:	2000      	movs	r0, #0
c0dec190:	4669      	mov	r1, sp
c0dec192:	9001      	str	r0, [sp, #4]
c0dec194:	2068      	movs	r0, #104	@ 0x68
c0dec196:	f7ff fe6b 	bl	c0debe70 <SVC_Call>
c0dec19a:	deff      	udf	#255	@ 0xff

c0dec19c <os_flags>:
c0dec19c:	b5e0      	push	{r5, r6, r7, lr}
c0dec19e:	2000      	movs	r0, #0
c0dec1a0:	4669      	mov	r1, sp
c0dec1a2:	9001      	str	r0, [sp, #4]
c0dec1a4:	206a      	movs	r0, #106	@ 0x6a
c0dec1a6:	f7ff fe63 	bl	c0debe70 <SVC_Call>
c0dec1aa:	bd8c      	pop	{r2, r3, r7, pc}

c0dec1ac <os_setting_get>:
c0dec1ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec1ae:	ab01      	add	r3, sp, #4
c0dec1b0:	c307      	stmia	r3!, {r0, r1, r2}
c0dec1b2:	4803      	ldr	r0, [pc, #12]	@ (c0dec1c0 <os_setting_get+0x14>)
c0dec1b4:	a901      	add	r1, sp, #4
c0dec1b6:	f7ff fe5b 	bl	c0debe70 <SVC_Call>
c0dec1ba:	b004      	add	sp, #16
c0dec1bc:	bd80      	pop	{r7, pc}
c0dec1be:	bf00      	nop
c0dec1c0:	03000070 	.word	0x03000070

c0dec1c4 <os_registry_get_current_app_tag>:
c0dec1c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec1c6:	ab01      	add	r3, sp, #4
c0dec1c8:	c307      	stmia	r3!, {r0, r1, r2}
c0dec1ca:	4803      	ldr	r0, [pc, #12]	@ (c0dec1d8 <os_registry_get_current_app_tag+0x14>)
c0dec1cc:	a901      	add	r1, sp, #4
c0dec1ce:	f7ff fe4f 	bl	c0debe70 <SVC_Call>
c0dec1d2:	b004      	add	sp, #16
c0dec1d4:	bd80      	pop	{r7, pc}
c0dec1d6:	bf00      	nop
c0dec1d8:	03000074 	.word	0x03000074

c0dec1dc <os_sched_exit>:
c0dec1dc:	b082      	sub	sp, #8
c0dec1de:	f000 f85b 	bl	c0dec298 <OUTLINED_FUNCTION_0>
c0dec1e2:	4802      	ldr	r0, [pc, #8]	@ (c0dec1ec <os_sched_exit+0x10>)
c0dec1e4:	4669      	mov	r1, sp
c0dec1e6:	f7ff fe43 	bl	c0debe70 <SVC_Call>
c0dec1ea:	deff      	udf	#255	@ 0xff
c0dec1ec:	0100009a 	.word	0x0100009a

c0dec1f0 <os_io_init>:
c0dec1f0:	b5e0      	push	{r5, r6, r7, lr}
c0dec1f2:	9001      	str	r0, [sp, #4]
c0dec1f4:	4802      	ldr	r0, [pc, #8]	@ (c0dec200 <os_io_init+0x10>)
c0dec1f6:	a901      	add	r1, sp, #4
c0dec1f8:	f7ff fe3a 	bl	c0debe70 <SVC_Call>
c0dec1fc:	bd8c      	pop	{r2, r3, r7, pc}
c0dec1fe:	bf00      	nop
c0dec200:	01000084 	.word	0x01000084

c0dec204 <os_io_start>:
c0dec204:	b5e0      	push	{r5, r6, r7, lr}
c0dec206:	2000      	movs	r0, #0
c0dec208:	4669      	mov	r1, sp
c0dec20a:	9001      	str	r0, [sp, #4]
c0dec20c:	4801      	ldr	r0, [pc, #4]	@ (c0dec214 <os_io_start+0x10>)
c0dec20e:	f7ff fe2f 	bl	c0debe70 <SVC_Call>
c0dec212:	bd8c      	pop	{r2, r3, r7, pc}
c0dec214:	01000085 	.word	0x01000085

c0dec218 <os_io_tx_cmd>:
c0dec218:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec21a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dec21e:	4803      	ldr	r0, [pc, #12]	@ (c0dec22c <os_io_tx_cmd+0x14>)
c0dec220:	4669      	mov	r1, sp
c0dec222:	f7ff fe25 	bl	c0debe70 <SVC_Call>
c0dec226:	b004      	add	sp, #16
c0dec228:	bd80      	pop	{r7, pc}
c0dec22a:	bf00      	nop
c0dec22c:	04000088 	.word	0x04000088

c0dec230 <os_io_rx_evt>:
c0dec230:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec232:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dec236:	4803      	ldr	r0, [pc, #12]	@ (c0dec244 <os_io_rx_evt+0x14>)
c0dec238:	4669      	mov	r1, sp
c0dec23a:	f7ff fe19 	bl	c0debe70 <SVC_Call>
c0dec23e:	b004      	add	sp, #16
c0dec240:	bd80      	pop	{r7, pc}
c0dec242:	bf00      	nop
c0dec244:	03000089 	.word	0x03000089

c0dec248 <try_context_get>:
c0dec248:	b5e0      	push	{r5, r6, r7, lr}
c0dec24a:	2000      	movs	r0, #0
c0dec24c:	4669      	mov	r1, sp
c0dec24e:	9001      	str	r0, [sp, #4]
c0dec250:	2087      	movs	r0, #135	@ 0x87
c0dec252:	f7ff fe0d 	bl	c0debe70 <SVC_Call>
c0dec256:	bd8c      	pop	{r2, r3, r7, pc}

c0dec258 <try_context_set>:
c0dec258:	b5e0      	push	{r5, r6, r7, lr}
c0dec25a:	f000 f81d 	bl	c0dec298 <OUTLINED_FUNCTION_0>
c0dec25e:	4802      	ldr	r0, [pc, #8]	@ (c0dec268 <try_context_set+0x10>)
c0dec260:	4669      	mov	r1, sp
c0dec262:	f7ff fe05 	bl	c0debe70 <SVC_Call>
c0dec266:	bd8c      	pop	{r2, r3, r7, pc}
c0dec268:	0100010b 	.word	0x0100010b

c0dec26c <os_sched_last_status>:
c0dec26c:	b5e0      	push	{r5, r6, r7, lr}
c0dec26e:	f000 f813 	bl	c0dec298 <OUTLINED_FUNCTION_0>
c0dec272:	4803      	ldr	r0, [pc, #12]	@ (c0dec280 <os_sched_last_status+0x14>)
c0dec274:	4669      	mov	r1, sp
c0dec276:	f7ff fdfb 	bl	c0debe70 <SVC_Call>
c0dec27a:	b2c0      	uxtb	r0, r0
c0dec27c:	bd8c      	pop	{r2, r3, r7, pc}
c0dec27e:	bf00      	nop
c0dec280:	0100009c 	.word	0x0100009c

c0dec284 <touch_get_last_info>:
c0dec284:	b5e0      	push	{r5, r6, r7, lr}
c0dec286:	9001      	str	r0, [sp, #4]
c0dec288:	4802      	ldr	r0, [pc, #8]	@ (c0dec294 <touch_get_last_info+0x10>)
c0dec28a:	a901      	add	r1, sp, #4
c0dec28c:	f7ff fdf0 	bl	c0debe70 <SVC_Call>
c0dec290:	bd8c      	pop	{r2, r3, r7, pc}
c0dec292:	bf00      	nop
c0dec294:	01fa000b 	.word	0x01fa000b

c0dec298 <OUTLINED_FUNCTION_0>:
c0dec298:	2100      	movs	r1, #0
c0dec29a:	e9cd 0100 	strd	r0, r1, [sp]
c0dec29e:	4770      	bx	lr

c0dec2a0 <__udivmoddi4>:
c0dec2a0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dec2a4:	f8dd c020 	ldr.w	ip, [sp, #32]
c0dec2a8:	4604      	mov	r4, r0
c0dec2aa:	b179      	cbz	r1, c0dec2cc <__udivmoddi4+0x2c>
c0dec2ac:	b1ba      	cbz	r2, c0dec2de <__udivmoddi4+0x3e>
c0dec2ae:	b35b      	cbz	r3, c0dec308 <__udivmoddi4+0x68>
c0dec2b0:	fab1 f581 	clz	r5, r1
c0dec2b4:	fab3 f683 	clz	r6, r3
c0dec2b8:	1b75      	subs	r5, r6, r5
c0dec2ba:	2d20      	cmp	r5, #32
c0dec2bc:	d34a      	bcc.n	c0dec354 <__udivmoddi4+0xb4>
c0dec2be:	f1bc 0f00 	cmp.w	ip, #0
c0dec2c2:	bf18      	it	ne
c0dec2c4:	e9cc 4100 	strdne	r4, r1, [ip]
c0dec2c8:	2400      	movs	r4, #0
c0dec2ca:	e066      	b.n	c0dec39a <__udivmoddi4+0xfa>
c0dec2cc:	b3cb      	cbz	r3, c0dec342 <__udivmoddi4+0xa2>
c0dec2ce:	2100      	movs	r1, #0
c0dec2d0:	f1bc 0f00 	cmp.w	ip, #0
c0dec2d4:	bf18      	it	ne
c0dec2d6:	e9cc 4100 	strdne	r4, r1, [ip]
c0dec2da:	2400      	movs	r4, #0
c0dec2dc:	e0a6      	b.n	c0dec42c <__udivmoddi4+0x18c>
c0dec2de:	2b00      	cmp	r3, #0
c0dec2e0:	d03e      	beq.n	c0dec360 <__udivmoddi4+0xc0>
c0dec2e2:	2800      	cmp	r0, #0
c0dec2e4:	d04f      	beq.n	c0dec386 <__udivmoddi4+0xe6>
c0dec2e6:	1e5d      	subs	r5, r3, #1
c0dec2e8:	422b      	tst	r3, r5
c0dec2ea:	d158      	bne.n	c0dec39e <__udivmoddi4+0xfe>
c0dec2ec:	f1bc 0f00 	cmp.w	ip, #0
c0dec2f0:	bf1c      	itt	ne
c0dec2f2:	ea05 0001 	andne.w	r0, r5, r1
c0dec2f6:	e9cc 4000 	strdne	r4, r0, [ip]
c0dec2fa:	fa93 f0a3 	rbit	r0, r3
c0dec2fe:	fab0 f080 	clz	r0, r0
c0dec302:	fa21 f400 	lsr.w	r4, r1, r0
c0dec306:	e048      	b.n	c0dec39a <__udivmoddi4+0xfa>
c0dec308:	1e55      	subs	r5, r2, #1
c0dec30a:	422a      	tst	r2, r5
c0dec30c:	d129      	bne.n	c0dec362 <__udivmoddi4+0xc2>
c0dec30e:	f1bc 0f00 	cmp.w	ip, #0
c0dec312:	bf1e      	ittt	ne
c0dec314:	2300      	movne	r3, #0
c0dec316:	4005      	andne	r5, r0
c0dec318:	e9cc 5300 	strdne	r5, r3, [ip]
c0dec31c:	2a01      	cmp	r2, #1
c0dec31e:	f000 8085 	beq.w	c0dec42c <__udivmoddi4+0x18c>
c0dec322:	fa92 f2a2 	rbit	r2, r2
c0dec326:	004c      	lsls	r4, r1, #1
c0dec328:	fab2 f282 	clz	r2, r2
c0dec32c:	f002 031f 	and.w	r3, r2, #31
c0dec330:	40d1      	lsrs	r1, r2
c0dec332:	40d8      	lsrs	r0, r3
c0dec334:	231f      	movs	r3, #31
c0dec336:	4393      	bics	r3, r2
c0dec338:	fa04 f303 	lsl.w	r3, r4, r3
c0dec33c:	ea43 0400 	orr.w	r4, r3, r0
c0dec340:	e074      	b.n	c0dec42c <__udivmoddi4+0x18c>
c0dec342:	fbb0 f4f2 	udiv	r4, r0, r2
c0dec346:	f1bc 0f00 	cmp.w	ip, #0
c0dec34a:	d026      	beq.n	c0dec39a <__udivmoddi4+0xfa>
c0dec34c:	fb04 0012 	mls	r0, r4, r2, r0
c0dec350:	2100      	movs	r1, #0
c0dec352:	e020      	b.n	c0dec396 <__udivmoddi4+0xf6>
c0dec354:	f105 0e01 	add.w	lr, r5, #1
c0dec358:	f1be 0f20 	cmp.w	lr, #32
c0dec35c:	d00b      	beq.n	c0dec376 <__udivmoddi4+0xd6>
c0dec35e:	e028      	b.n	c0dec3b2 <__udivmoddi4+0x112>
c0dec360:	e064      	b.n	c0dec42c <__udivmoddi4+0x18c>
c0dec362:	fab1 f481 	clz	r4, r1
c0dec366:	fab2 f582 	clz	r5, r2
c0dec36a:	1b2c      	subs	r4, r5, r4
c0dec36c:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0dec370:	f1be 0f20 	cmp.w	lr, #32
c0dec374:	d15d      	bne.n	c0dec432 <__udivmoddi4+0x192>
c0dec376:	f04f 0e20 	mov.w	lr, #32
c0dec37a:	f04f 0a00 	mov.w	sl, #0
c0dec37e:	f04f 0b00 	mov.w	fp, #0
c0dec382:	460e      	mov	r6, r1
c0dec384:	e021      	b.n	c0dec3ca <__udivmoddi4+0x12a>
c0dec386:	fbb1 f4f3 	udiv	r4, r1, r3
c0dec38a:	f1bc 0f00 	cmp.w	ip, #0
c0dec38e:	d004      	beq.n	c0dec39a <__udivmoddi4+0xfa>
c0dec390:	2000      	movs	r0, #0
c0dec392:	fb04 1113 	mls	r1, r4, r3, r1
c0dec396:	e9cc 0100 	strd	r0, r1, [ip]
c0dec39a:	2100      	movs	r1, #0
c0dec39c:	e046      	b.n	c0dec42c <__udivmoddi4+0x18c>
c0dec39e:	fab1 f581 	clz	r5, r1
c0dec3a2:	fab3 f683 	clz	r6, r3
c0dec3a6:	1b75      	subs	r5, r6, r5
c0dec3a8:	2d1f      	cmp	r5, #31
c0dec3aa:	f4bf af88 	bcs.w	c0dec2be <__udivmoddi4+0x1e>
c0dec3ae:	f105 0e01 	add.w	lr, r5, #1
c0dec3b2:	fa20 f40e 	lsr.w	r4, r0, lr
c0dec3b6:	f1c5 051f 	rsb	r5, r5, #31
c0dec3ba:	fa01 f605 	lsl.w	r6, r1, r5
c0dec3be:	fa21 fb0e 	lsr.w	fp, r1, lr
c0dec3c2:	40a8      	lsls	r0, r5
c0dec3c4:	f04f 0a00 	mov.w	sl, #0
c0dec3c8:	4326      	orrs	r6, r4
c0dec3ca:	f04f 0800 	mov.w	r8, #0
c0dec3ce:	f1be 0f00 	cmp.w	lr, #0
c0dec3d2:	d01c      	beq.n	c0dec40e <__udivmoddi4+0x16e>
c0dec3d4:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0dec3d8:	f1ae 0e01 	sub.w	lr, lr, #1
c0dec3dc:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0dec3e0:	0076      	lsls	r6, r6, #1
c0dec3e2:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0dec3e6:	1aae      	subs	r6, r5, r2
c0dec3e8:	eb61 0b03 	sbc.w	fp, r1, r3
c0dec3ec:	43cf      	mvns	r7, r1
c0dec3ee:	43ec      	mvns	r4, r5
c0dec3f0:	18a4      	adds	r4, r4, r2
c0dec3f2:	eb57 0403 	adcs.w	r4, r7, r3
c0dec3f6:	bf5c      	itt	pl
c0dec3f8:	468b      	movpl	fp, r1
c0dec3fa:	462e      	movpl	r6, r5
c0dec3fc:	0040      	lsls	r0, r0, #1
c0dec3fe:	0fe1      	lsrs	r1, r4, #31
c0dec400:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0dec404:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0dec408:	46a2      	mov	sl, r4
c0dec40a:	4688      	mov	r8, r1
c0dec40c:	e7df      	b.n	c0dec3ce <__udivmoddi4+0x12e>
c0dec40e:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0dec412:	f1bc 0f00 	cmp.w	ip, #0
c0dec416:	bf18      	it	ne
c0dec418:	e9cc 6b00 	strdne	r6, fp, [ip]
c0dec41c:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0dec420:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0dec424:	f020 0001 	bic.w	r0, r0, #1
c0dec428:	ea40 0408 	orr.w	r4, r0, r8
c0dec42c:	4620      	mov	r0, r4
c0dec42e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dec432:	f1be 0f1f 	cmp.w	lr, #31
c0dec436:	d804      	bhi.n	c0dec442 <__udivmoddi4+0x1a2>
c0dec438:	fa20 f40e 	lsr.w	r4, r0, lr
c0dec43c:	f1ce 0520 	rsb	r5, lr, #32
c0dec440:	e7bb      	b.n	c0dec3ba <__udivmoddi4+0x11a>
c0dec442:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0dec446:	f1ae 0420 	sub.w	r4, lr, #32
c0dec44a:	f04f 0b00 	mov.w	fp, #0
c0dec44e:	fa20 f504 	lsr.w	r5, r0, r4
c0dec452:	fa01 f607 	lsl.w	r6, r1, r7
c0dec456:	fa00 fa07 	lsl.w	sl, r0, r7
c0dec45a:	ea46 0805 	orr.w	r8, r6, r5
c0dec45e:	fa21 f604 	lsr.w	r6, r1, r4
c0dec462:	4640      	mov	r0, r8
c0dec464:	e7b1      	b.n	c0dec3ca <__udivmoddi4+0x12a>
	...

c0dec468 <__aeabi_memcpy>:
c0dec468:	f000 b82c 	b.w	c0dec4c4 <memcpy>

c0dec46c <__aeabi_memmove>:
c0dec46c:	f000 b838 	b.w	c0dec4e0 <memmove>

c0dec470 <__aeabi_memset>:
c0dec470:	460b      	mov	r3, r1
c0dec472:	4611      	mov	r1, r2
c0dec474:	461a      	mov	r2, r3
c0dec476:	f000 b84d 	b.w	c0dec514 <memset>
c0dec47a:	bf00      	nop

c0dec47c <__aeabi_memclr>:
c0dec47c:	460a      	mov	r2, r1
c0dec47e:	2100      	movs	r1, #0
c0dec480:	f000 b848 	b.w	c0dec514 <memset>

c0dec484 <__aeabi_uldivmod>:
c0dec484:	b540      	push	{r6, lr}
c0dec486:	b084      	sub	sp, #16
c0dec488:	ae02      	add	r6, sp, #8
c0dec48a:	9600      	str	r6, [sp, #0]
c0dec48c:	f7ff ff08 	bl	c0dec2a0 <__udivmoddi4>
c0dec490:	9a02      	ldr	r2, [sp, #8]
c0dec492:	9b03      	ldr	r3, [sp, #12]
c0dec494:	b004      	add	sp, #16
c0dec496:	bd40      	pop	{r6, pc}

c0dec498 <explicit_bzero>:
c0dec498:	f000 b800 	b.w	c0dec49c <bzero>

c0dec49c <bzero>:
c0dec49c:	460a      	mov	r2, r1
c0dec49e:	2100      	movs	r1, #0
c0dec4a0:	f000 b838 	b.w	c0dec514 <memset>

c0dec4a4 <memcmp>:
c0dec4a4:	b510      	push	{r4, lr}
c0dec4a6:	3901      	subs	r1, #1
c0dec4a8:	4402      	add	r2, r0
c0dec4aa:	4290      	cmp	r0, r2
c0dec4ac:	d101      	bne.n	c0dec4b2 <memcmp+0xe>
c0dec4ae:	2000      	movs	r0, #0
c0dec4b0:	e005      	b.n	c0dec4be <memcmp+0x1a>
c0dec4b2:	7803      	ldrb	r3, [r0, #0]
c0dec4b4:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0dec4b8:	42a3      	cmp	r3, r4
c0dec4ba:	d001      	beq.n	c0dec4c0 <memcmp+0x1c>
c0dec4bc:	1b18      	subs	r0, r3, r4
c0dec4be:	bd10      	pop	{r4, pc}
c0dec4c0:	3001      	adds	r0, #1
c0dec4c2:	e7f2      	b.n	c0dec4aa <memcmp+0x6>

c0dec4c4 <memcpy>:
c0dec4c4:	440a      	add	r2, r1
c0dec4c6:	4291      	cmp	r1, r2
c0dec4c8:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0dec4cc:	d100      	bne.n	c0dec4d0 <memcpy+0xc>
c0dec4ce:	4770      	bx	lr
c0dec4d0:	b510      	push	{r4, lr}
c0dec4d2:	f811 4b01 	ldrb.w	r4, [r1], #1
c0dec4d6:	4291      	cmp	r1, r2
c0dec4d8:	f803 4f01 	strb.w	r4, [r3, #1]!
c0dec4dc:	d1f9      	bne.n	c0dec4d2 <memcpy+0xe>
c0dec4de:	bd10      	pop	{r4, pc}

c0dec4e0 <memmove>:
c0dec4e0:	4288      	cmp	r0, r1
c0dec4e2:	b510      	push	{r4, lr}
c0dec4e4:	eb01 0402 	add.w	r4, r1, r2
c0dec4e8:	d902      	bls.n	c0dec4f0 <memmove+0x10>
c0dec4ea:	4284      	cmp	r4, r0
c0dec4ec:	4623      	mov	r3, r4
c0dec4ee:	d807      	bhi.n	c0dec500 <memmove+0x20>
c0dec4f0:	1e43      	subs	r3, r0, #1
c0dec4f2:	42a1      	cmp	r1, r4
c0dec4f4:	d008      	beq.n	c0dec508 <memmove+0x28>
c0dec4f6:	f811 2b01 	ldrb.w	r2, [r1], #1
c0dec4fa:	f803 2f01 	strb.w	r2, [r3, #1]!
c0dec4fe:	e7f8      	b.n	c0dec4f2 <memmove+0x12>
c0dec500:	4601      	mov	r1, r0
c0dec502:	4402      	add	r2, r0
c0dec504:	428a      	cmp	r2, r1
c0dec506:	d100      	bne.n	c0dec50a <memmove+0x2a>
c0dec508:	bd10      	pop	{r4, pc}
c0dec50a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0dec50e:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0dec512:	e7f7      	b.n	c0dec504 <memmove+0x24>

c0dec514 <memset>:
c0dec514:	4603      	mov	r3, r0
c0dec516:	4402      	add	r2, r0
c0dec518:	4293      	cmp	r3, r2
c0dec51a:	d100      	bne.n	c0dec51e <memset+0xa>
c0dec51c:	4770      	bx	lr
c0dec51e:	f803 1b01 	strb.w	r1, [r3], #1
c0dec522:	e7f9      	b.n	c0dec518 <memset+0x4>

c0dec524 <setjmp>:
c0dec524:	46ec      	mov	ip, sp
c0dec526:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0dec52a:	f04f 0000 	mov.w	r0, #0
c0dec52e:	4770      	bx	lr

c0dec530 <longjmp>:
c0dec530:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0dec534:	46e5      	mov	sp, ip
c0dec536:	0008      	movs	r0, r1
c0dec538:	bf08      	it	eq
c0dec53a:	2001      	moveq	r0, #1
c0dec53c:	4770      	bx	lr
c0dec53e:	bf00      	nop

c0dec540 <strcmp>:
c0dec540:	f810 2b01 	ldrb.w	r2, [r0], #1
c0dec544:	f811 3b01 	ldrb.w	r3, [r1], #1
c0dec548:	2a01      	cmp	r2, #1
c0dec54a:	bf28      	it	cs
c0dec54c:	429a      	cmpcs	r2, r3
c0dec54e:	d0f7      	beq.n	c0dec540 <strcmp>
c0dec550:	1ad0      	subs	r0, r2, r3
c0dec552:	4770      	bx	lr

c0dec554 <strlen>:
c0dec554:	4603      	mov	r3, r0
c0dec556:	f813 2b01 	ldrb.w	r2, [r3], #1
c0dec55a:	2a00      	cmp	r2, #0
c0dec55c:	d1fb      	bne.n	c0dec556 <strlen+0x2>
c0dec55e:	1a18      	subs	r0, r3, r0
c0dec560:	3801      	subs	r0, #1
c0dec562:	4770      	bx	lr

c0dec564 <strncmp>:
c0dec564:	b510      	push	{r4, lr}
c0dec566:	b16a      	cbz	r2, c0dec584 <strncmp+0x20>
c0dec568:	3901      	subs	r1, #1
c0dec56a:	1884      	adds	r4, r0, r2
c0dec56c:	f810 2b01 	ldrb.w	r2, [r0], #1
c0dec570:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0dec574:	429a      	cmp	r2, r3
c0dec576:	d103      	bne.n	c0dec580 <strncmp+0x1c>
c0dec578:	42a0      	cmp	r0, r4
c0dec57a:	d001      	beq.n	c0dec580 <strncmp+0x1c>
c0dec57c:	2a00      	cmp	r2, #0
c0dec57e:	d1f5      	bne.n	c0dec56c <strncmp+0x8>
c0dec580:	1ad0      	subs	r0, r2, r3
c0dec582:	bd10      	pop	{r4, pc}
c0dec584:	4610      	mov	r0, r2
c0dec586:	e7fc      	b.n	c0dec582 <strncmp+0x1e>

c0dec588 <strncpy>:
c0dec588:	4603      	mov	r3, r0
c0dec58a:	b510      	push	{r4, lr}
c0dec58c:	3901      	subs	r1, #1
c0dec58e:	b132      	cbz	r2, c0dec59e <strncpy+0x16>
c0dec590:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0dec594:	3a01      	subs	r2, #1
c0dec596:	f803 4b01 	strb.w	r4, [r3], #1
c0dec59a:	2c00      	cmp	r4, #0
c0dec59c:	d1f7      	bne.n	c0dec58e <strncpy+0x6>
c0dec59e:	2100      	movs	r1, #0
c0dec5a0:	441a      	add	r2, r3
c0dec5a2:	4293      	cmp	r3, r2
c0dec5a4:	d100      	bne.n	c0dec5a8 <strncpy+0x20>
c0dec5a6:	bd10      	pop	{r4, pc}
c0dec5a8:	f803 1b01 	strb.w	r1, [r3], #1
c0dec5ac:	e7f9      	b.n	c0dec5a2 <strncpy+0x1a>

c0dec5ae <C_app_boilerplate_64px_bitmap>:
c0dec5ae:	0040 0040 b301 0000 00b1 8b1f 0008 0000     @.@.............
c0dec5be:	0000 0302 d175 0dbb 2103 060c 9f60 8522     ....u....!..`.".
c0dec5ce:	1192 856e 706c 1da3 79a3 a414 6914 2929     ..n.lp...y...i))
c0dec5de:	1c2c ff83 0444 dce5 127c 1b0f a21b b8ab     ,...D...|.......
c0dec5ee:	f0c3 2d31 cc32 c0b0 f93a 8530 b368 d0bd     ..1-2...:.0.h...
c0dec5fe:	a288 0d9d 744a f0f2 c3a6 6bb4 b2ea bf6a     ....Jt.....k..j.
c0dec60e:	2fa7 436d 2afd c2b0 b932 fd9b 8609 b3a7     ./mC.*..2.......
c0dec61e:	74b0 d747 ab2a d51b 8dd3 8165 eb15 7382     .tG.*.....e....s
c0dec62e:	dcbd a301 f3df 848d 460d bcdd 9658 c9f7     .........F..X...
c0dec63e:	4f8f 91f4 ef4f a38f 9bf7 7f36 e5b0 69e6     .O..O.....6....i
c0dec64e:	0d3e 12f3 afcc f32e cb2d f9dc 7fe2 7f96     >.......-.......
c0dec65e:	1ffc e56f a9d1 0021 0002                     ..o...!....

c0dec669 <C_app_boilerplate_64px>:
c0dec669:	0040 0040 0100 c5ae c0de                    @.@.......

c0dec673 <C_switch_60_40_bitmap>:
c0dec673:	0000 00ff 0000 ff07 00e0 1f00 f8ff 0000     ................
c0dec683:	ff3f 00fc ff00 ffff 0100 ffff 80ff ff03     ?...............
c0dec693:	ffff 03c0 ffff c0ff ff07 ffff 0fe0 ffff     ................
c0dec6a3:	f0ff ff0f ffff 1ff0 ffff f8ff ff1f ffff     ................
c0dec6b3:	1ff8 ffff f8ff ff3f ffff 3ffc ffff fcff     ......?....?....
c0dec6c3:	ff3f ffff 3ffc ffff fcff ff3f ffff 3ffc     ?....?....?....?
c0dec6d3:	ffff fcff ff3f ffff 3ffc ffff fcff ff3f     ....?....?....?.
c0dec6e3:	ffff 3ffc ffff fcff ff3f ffff 3ffc ffff     ...?....?....?..
c0dec6f3:	fcff ff3f ffff 3ffc 00ff fcff f83f 1f00     ..?....?....?...
c0dec703:	3ffc 00f0 fc0f c03f 0300 3ffc 0080 fc01     .?....?....?....
c0dec713:	003f 0000 3ffc 0000 fc00 003e 0000 3c7c     ?....?....>...|<
c0dec723:	0000 3c00 003c 0000 3c3c 0000 3c00 0038     ...<<...<<...<8.
c0dec733:	0000 381c 0000 1c00 0038 0000 381c 0000     ...8....8....8..
c0dec743:	1c00 0038 0000 381c 0000 1c00 0038 0000     ..8....8....8...
c0dec753:	381c 0000 1c00 001c 0000 1c38 0000 3800     .8........8....8
c0dec763:	001c 0000 0e38 0000 7000 000f 0000 07f0     ....8....p......
c0dec773:	0000 e000 8003 0100 03c0 00c0 c003 f001     ................
c0dec783:	0f00 0080 00f8 001f 3f00 fc00 0000 ff1f     .........?......
c0dec793:	00f8 0700 e0ff 0000 ff00 0000               ............

c0dec79f <C_switch_60_40>:
c0dec79f:	003c 0028 0000 c673 c0de                    <.(...s...

c0dec7a9 <C_Check_Circle_64px_bitmap>:
c0dec7a9:	0040 0040 3321 0002 0231 8b1f 0008 0000     @.@.!3..1.......
c0dec7b9:	0000 0302 55ad 4e39 3103 fd14 6124 4b5f     .....U9N.1..$a_K
c0dec7c9:	8028 a091 2401 b888 4640 2054 4121 3949     (....$..@FT !AI9
c0dec7d9:	152d 00dc a090 1166 05a2 0171 1710 0a48     -.....f...q...H.
c0dec7e9:	026a 6017 41ab 8961 2404 9f21 65ef be66     j..`.Aa..$!..ef.
c0dec7f9:	0e3d c48b 9914 9fb1 fcfd fcfc 8cf3 7ff8     =...............
c0dec809:	f54f 1a60 7460 d8a9 de00 fd04 95cc 681c     O.`.`t.........h
c0dec819:	87cd c9e8 bf14 0185 7952 ae0b 301b 8b40     ........Ry...0@.
c0dec829:	c4b5 9cae 7cb5 f88d e070 ef89 0371 137e     .....|..p...q.~.
c0dec839:	fd5d 4e7a 4f7d d6b4 9e38 8ea5 b8f9 4c79     ].zN}O..8.....yL
c0dec849:	34cd e15b da9e 7c13 18bc 1930 a38b 5b15     .4[....|..0....[
c0dec859:	b94d a901 5a89 34af d0fa fbd4 5d41 b0b9     M....Z.4....A]..
c0dec869:	0ab1 6830 71fb 5315 0056 6e9a fc6c 2fb3     ..0h.q.SV..nl../
c0dec879:	24e2 dd75 bf49 012f d486 1057 ac8e 0a5a     .$u.I./...W...Z.
c0dec889:	aa32 dc97 5d54 3947 803e c954 7a63 b709     2...T]G9>.T.cz..
c0dec899:	815a c734 7fa9 bc41 000b 6a27 db3a e292     Z.4...A...'j:...
c0dec8a9:	12ed 3f6f 8274 64b6 f810 4052 a01d de23     ..o?t..d..R@..#.
c0dec8b9:	2712 6220 73a5 9d0a cf04 db00 e588 5bd8     .' b.s.........[
c0dec8c9:	e08b 0a5d 027c a128 8093 ee56 ab15 0ca4     ..].|.(...V.....
c0dec8d9:	1953 0781 889d a1eb 493b 0082 11da c517     S.......;I......
c0dec8e9:	9b8f 4760 f54c 0b95 822e f14b 41ed 360f     ..`GL.....K..A.6
c0dec8f9:	b820 d215 48a4 c137 3093 c2c8 8139 e70b      ....H7..0..9...
c0dec909:	4e04 105c 30ac d4dc 08a7 9856 acbe 7c5d     .N\..0....V...]|
c0dec919:	5e31 0710 701c 347f 5aff 4fe8 36b3 adc9     1^...p.4.Z.O.6..
c0dec929:	802f c436 7653 d63e 3cfe 2d61 5f3f ba73     /.6.Sv>..<a-?_s.
c0dec939:	df3a acb2 d712 0ff4 1f59 2554 6ec3 5f7b     :.......Y.T%.n{_
c0dec949:	6554 3b01 e340 8e78 cad4 febe e91f 4c92     Te.;@.x........L
c0dec959:	f2b3 e8c9 ce32 92b3 a68c 3457 3971 702e     ....2.....W4q9.p
c0dec969:	b6aa 0f34 d91d e35f f2e1 639e a7d5 fd79     ..4..._....c..y.
c0dec979:	ba44 dde8 6369 1aef c3e5 3464 9dd2 272f     D...ic....d4../'
c0dec989:	cbbf 1fa7 8df3 b09c 9b03 5328 2325 8d5f     ..........(S%#_.
c0dec999:	3ec0 f233 eb15 7359 39c0 5158 f322 2c7d     .>3...Ys.9XQ".},
c0dec9a9:	f7cc 448d cbbe a6c0 e1fb f102 dd51 030f     ...D........Q...
c0dec9b9:	0898 fe6c ec64 ac2b 19ea f170 f7af 2d1b     ..l.d.+...p....-
c0dec9c9:	1fb1 b3c2 2e0d dad0 0cd6 c8c0 fe72 af1f     ............r...
c0dec9d9:	fc6c 2402 5a14 00c5 0008                     l..$.Z.....

c0dec9e4 <C_Check_Circle_64px>:
c0dec9e4:	0040 0040 0102 c7a9 c0de                    @.@.......

c0dec9ee <C_Denied_Circle_64px_bitmap>:
c0dec9ee:	0040 0040 3021 0002 022e 8b1f 0008 0000     @.@.!0..........
c0dec9fe:	0000 0302 55ad 2f4b 4104 2e10 bd6b 479f     .....UK/.A..k..G
c0deca0e:	d80e 4884 ac90 3f8d e260 2244 e8e1 71b8     ...H...?`.D"...q
c0deca1e:	e273 201f ece1 7111 fe25 f100 d607 d9c1     s.. ...q%.......
c0deca2e:	07f2 e63c d64c e363 a6b9 f554 a663 67a7     ..<.L.c...T.c..g
c0deca3e:	9766 1f44 b676 babb beaa eafe 6aeb ffc4     f.D.v........j..
c0deca4e:	5f1b 13fb 4300 c50b f304 a806 5331 b18a     ._...C......1S..
c0deca5e:	1c56 47f0 58ba 0cd5 2a90 6658 642f 6806     V..G.X...*Xf/d.h
c0deca6e:	52b4 08ec a5af c46b fdfb ff0c 0d1f df99     .R....k.........
c0deca7e:	a978 f947 bb78 5b3c ed35 5a39 0d98 47a6     x.G.x.<[5.9Z...G
c0deca8e:	ad34 3237 34b8 331f f3f7 6c86 8e00 3632     4.72.4.3...l..26
c0deca9e:	e185 09e6 3f8d a17b 07dd bc61 b41f a934     .....?{...a...4.
c0decaae:	2b27 7d00 1f36 4157 4fc8 ba80 db1b ddfe     '+.}6.WA.O......
c0decabe:	c7ed 7424 511d 2fbe fa01 bfe5 247c 42bb     ..$t.Q./....|$.B
c0decace:	9690 2555 e336 49ca 44a8 9e99 a3cd 831a     ..U%6..I.D......
c0decade:	e7d6 7bf8 7006 0f2c a96d a005 bf9d 668e     ...{.p,.m......f
c0decaee:	5162 3ff3 bf2c 008e 01e0 8ab4 abe9 e34e     bQ.?,.........N.
c0decafe:	32c2 c0aa e712 3ab8 aa46 d8a4 7896 009f     .2.....:F....x..
c0decb0e:	10b6 facb 1974 9385 90e8 df1b c005 8047     ....t.........G.
c0decb1e:	1a12 9eeb c7de bb99 4b38 a82a d662 e770     ........8K*.b.p.
c0decb2e:	6d88 6b88 3b3e 12c2 33b8 16a2 79c4 09fe     .m.k>;...3...y..
c0decb3e:	1802 b8ee aecd 648e 0741 dc30 44a9 9cf5     .......dA.0..D..
c0decb4e:	d3a4 91d4 8ee1 0cb7 804d 7434 1468 91e3     ........M.4th...
c0decb5e:	3209 1ced 7020 bbff 2e3d 2d7e b97c 7c40     .2.. p..=.~-|.@|
c0decb6e:	f9f6 b8ce f9c0 fc6a 2834 9292 6df8 3c46     ......j.4(...mF<
c0decb7e:	56a9 f69f f5da 0b2d 1895 aeeb 9abe 421f     .V....-........B
c0decb8e:	a41f 8192 7d78 4b3d 2965 4719 79f5 3328     ....x}=Ke).G.y(3
c0decb9e:	ea3b 451e 9df4 0691 b192 cdd5 fa4a 8b5a     ;..E........J.Z.
c0decbae:	65c0 702d b86b bd6a 3762 9f17 151d 49d7     .e-pk.j.b7.....I
c0decbbe:	dfba d88a a4bb 90fe 77f5 f7c6 e397 f5df     .........w......
c0decbce:	9aa7 8dfd a6af b0d5 4257 7442 86ed 1a7d     ........WBBt..}.
c0decbde:	21d2 b97a 86f0 ee73 91cf 3efe f9a2 8f5f     .!z...s....>.._.
c0decbee:	77f4 b0d1 7de9 40b8 907c 43ef 462f b61a     .w...}.@|..C/F..
c0decbfe:	d239 13f6 95f6 9909 7f8b df7d c528 369e     9.........}.(..6
c0decc0e:	274f a03c cd95 8029 a5c1 3fc2 d93e 03f8     O'<...)....?>...
c0decc1e:	a770 8485 0800 0000                         p.......

c0decc26 <C_Denied_Circle_64px>:
c0decc26:	0040 0040 0102 c9ee c0de                    @.@.......

c0decc30 <C_Important_Circle_64px_bitmap>:
c0decc30:	0040 0040 fa21 0001 01f8 8b1f 0008 0000     @.@.!...........
c0decc40:	0000 0302 55b5 4ecd 40c2 1e10 fea1 cfe3     .....U.N.@......
c0decc50:	0f51 892a d45e 8904 602f 49e3 1313 7a3c     Q.*.^.../`.I..<z
c0decc60:	cae4 37cd 1350 a33d 70c6 f8d5 1802 005f     ...7P.=..p...._.
c0decc70:	9e0f 5f05 1fc0 1ace 4910 c054 b38e b6ed     ..._.....IT.....
c0decc80:	db74 d059 e704 76d0 dbf6 7cee 76fd 2dfa     t.Y....v...|.v.-
c0decc90:	ef62 99a2 055b d858 6a29 43e0 b190 6159     b...[.X.)j.C..Ya
c0decca0:	96d0 5e09 c518 308e a440 8010 052d 1806     ...^...0@...-...
c0deccb0:	9408 b138 cadf 203c e4be e2e2 4979 3f81     ..8...< ....yI.?
c0deccc0:	d0c4 7c94 3ac7 d915 1f9e d24f 56c0 bd3b     ...|.:....O..V;.
c0deccd0:	34a4 abea a650 d97c 5f3f 484c c9b4 c551     .4..P.|.?_LH..Q.
c0decce0:	9541 9a6e 78d8 3bd9 3ecd f957 d17e 9ad0     A.n..x.;.>W.~...
c0deccf0:	ec9b cc02 f504 6fb8 d92f e800 0c7b dfe2     .......o/...{...
c0decd00:	de93 c49a 2c6e 77ac 6009 79d6 874a 4baa     ....n,.w.`.yJ..K
c0decd10:	8606 abb3 26a4 9db7 cac4 a6de ff9a 7d53     .....&........S}
c0decd20:	e341 7129 01bf b3c8 02dd 1310 d377 84a7     A.)q........w...
c0decd30:	a612 c04d 1802 71e1 d85a b9e1 e3c2 006f     ..M....qZ.....o.
c0decd40:	c459 fb3a 2275 6d3e 5582 0a80 538f 09e5     Y.:.u">m.U...S..
c0decd50:	2551 eba2 38f7 228c f3ee 38ea 0ec2 6e23     Q%...8."...8..#n
c0decd60:	0b8b c71f 55e2 51d3 8b81 4412 9145 3b71     .....U.Q...DE.q;
c0decd70:	f769 20b6 159e 4f43 9a82 924d abc7 a042     i.. ..CO..M...B.
c0decd80:	c6ff f1bb 724b e7cd a06e 4521 e9d2 2fd3     ....Kr..n.!E.../
c0decd90:	d245 3be9 7884 69d5 627f f7dd 2eb7 b2c9     E..;.x.i.b......
c0decda0:	407f eeca 3992 af1e 9d39 ba05 bc0d 2a70     .@...9..9.....p*
c0decdb0:	f29b 623f 19e8 8db2 1c0b 90dc d70b 0d35     ..?b..........5.
c0decdc0:	965e ade3 b9a0 ea78 75c8 dd4d 2dff 7d85     ^.....x..uM..-.}
c0decdd0:	f9d6 c243 c99b 4bfb 77fe d4fe dfd5 8948     ..C....K.w....H.
c0decde0:	61a0 92d3 8a91 afe2 618a 2b5f 8afe 5256     .a.......a_+..VR
c0decdf0:	709d fc2b e439 8bef bfae 841f ddfc 6c36     .p+.9.........6l
c0dece00:	1f3a 10ee 9d5f 61f3 431a ed86 230f 53d8     :..._..a.C...#.S
c0dece10:	b8cd 1702 7aff 51be 3389 de17 f4d0 eb73     .....z.Q.3....s.
c0dece20:	1d68 3e60 e853 91e1 3f8d c10e e439 0800     h.`>S....?..9...
	...

c0dece32 <C_Important_Circle_64px>:
c0dece32:	0040 0040 0102 cc30 c0de                    @.@...0...

c0dece3c <C_Warning_64px_bitmap>:
c0dece3c:	0040 0040 5f21 0001 015d 8b1f 0008 0000     @.@.!_..].......
c0dece4c:	0000 0302 d585 4e31 40c3 0510 8dd0 0885     ......1N.@......
c0dece5c:	454a 9149 25c2 52b2 08e4 4039 19c4 8272     JEI..%.R..9@..r.
c0dece6c:	815c 0384 b880 c441 7205 0a04 e7d2 6908     \.....A..r.....i
c0dece7c:	a202 a50b a113 ec1d 5d99 f6b3 1fee fb6f     .........]....o.
c0dece8c:	96c6 febc 4333 4f84 27b9 5ced ebf2 c293     ....3C.O.'.\....
c0dece9c:	53bf 2663 cf0a 318c 9d23 5bb1 e866 5176     .Sc&...1#..[f.vQ
c0deceac:	60e1 7d06 3f5d b8fc ce41 24bc cce4 4273     .`.}]?..A..$..sB
c0decebc:	eafe f818 e79b efb4 966a 4b7b 7339 c841     ........j.{K9sA.
c0dececc:	ef99 f908 e431 bfd8 1c5a 7979 f15b 9090     ....1...Z.yy[...
c0decedc:	8733 6891 f33b 1855 96a9 239f f96e 8f25     3..h;.U....#n.%.
c0deceec:	7438 4b8e c9d6 bfeb 6f0b 3809 e0f3 8085     8t.K.....o.8....
c0decefc:	34db 977b c5b0 5dec 46c2 5dc8 90d8 9baf     .4{....].F.]....
c0decf0c:	94b8 9fc6 fa1b 4631 36dc 7d8c ba4e 3d17     ......1F.6.}N..=
c0decf1c:	bdae e25f c4bc 9f6e eff4 eb93 164b f784     .._...n.....K...
c0decf2c:	2a9b fe68 5d4f 3d90 7743 5b05 7de8 70f9     .*h.O].=Cw.[.}.p
c0decf3c:	ebf1 4416 ccf9 a1de 00bb a01f 39d3 b4ef     ...D.........9..
c0decf4c:	b74f bebf fef5 ed72 141b fba4 787b 2e82     O.....r.....{x..
c0decf5c:	f705 e9d8 1833 c93f f4f9 cfa1 9727 0297     ....3.?.....'...
c0decf6c:	14bb b04c c14b 7603 89f2 6e43 fa57 f77c     ..L.K..v..CnW.|.
c0decf7c:	db89 fbe8 4cc5 fd95 50b4 93f7 605f 6523     .....L...P.._`#e
c0decf8c:	e63f 73ba c6a0 fb3d f499 5e05 cbcd e43f     ?..s..=....^..?.
c0decf9c:	7b2a 0024 0008                               *{$....

c0decfa3 <C_Warning_64px>:
c0decfa3:	0040 0040 0102 ce3c c0de                    @.@...<...

c0decfad <C_Back_40px_bitmap>:
c0decfad:	0028 0028 8c21 0000 008a 8b1f 0008 0000     (.(.!...........
c0decfbd:	0000 0302 d3ed 09cd 20c0 800c d0d1 0e53     ......... ....S.
c0decfcd:	a21d 39a3 364a 9570 d26e c46d c143 c7e6     ...9J6p.n.m.C...
c0decfdd:	a8d6 73d0 f50f e110 81e3 b010 9794 f843     ...s..........C.
c0decfed:	efb7 c3b6 53b7 4667 28df dcca b621 6196     .....SgF.(..!..a
c0decffd:	2b95 b601 0646 d04a 5b5b fa86 4192 376d     .+..F.J.[[...Am7
c0ded00d:	50ab c3da 942a 98d6 6e41 198e e6e4 4299     .P..*...An.....B
c0ded01d:	8ec2 2429 99ec 6dc0 6181 0933 c4f8 5561     ..)$...m.a3...aU
c0ded02d:	6001 605a 199a 7c43 01fb 02e5 04e6 e43a     .`Z`..C|......:.
c0ded03d:	0320 0000                                    ...

c0ded041 <C_Back_40px>:
c0ded041:	0028 0028 0102 cfad c0de                    (.(.......

c0ded04b <C_Check_40px_bitmap>:
c0ded04b:	0028 0028 5401 0000 0052 8b1f 0008 0000     (.(..T..R.......
c0ded05b:	0000 0302 6063 05c0 4078 1c84 9088 1307     ....c`..x@......
c0ded06b:	400d ff82 9000 7f60 2400 3f98 0900 1fc6     .@....`..$.?....
c0ded07b:	9920 203f 0ea2 d844 57e3 2608 602a b02c      .? ..D..W.&*`,.
c0ded08b:	5818 ac16 ac0e ac03 1ed7 5e6e 5c0d 0183     .X........n^.\..
c0ded09b:	0103 0000 8363 77dc 00c8 0000               ....c..w....

c0ded0a7 <C_Check_40px>:
c0ded0a7:	0028 0028 0100 d04b c0de                    (.(...K...

c0ded0b1 <C_Chevron_40px_bitmap>:
c0ded0b1:	0028 0028 5c22 0000 ffff ffff ffff ffff     (.(."\..........
c0ded0c1:	1cda 03e4 0310 03e2 0330 03e0 0350 03de     ........0...P...
c0ded0d1:	1820 0320 03dc 0820 08c1 0320 03da 0820      . ... ... ... .
c0ded0e1:	08c3 0320 03d8 0820 08c5 0320 03d6 0820     .. ... ... ... .
c0ded0f1:	08c7 0320 05d4 0820 08c9 0520 9ed3 8020     .. ... ... ... .
c0ded101:	98cb e002 0ed4 cd09 0e09 ffff ffff ffff     ................
c0ded111:	ffff e2ff                                   ....

c0ded115 <C_Chevron_40px>:
c0ded115:	0028 0028 0102 d0b1 c0de                    (.(.......

c0ded11f <C_Chevron_Back_40px_bitmap>:
c0ded11f:	0028 0028 7621 0000 0074 8b1f 0008 0000     (.(.!v..t.......
c0ded12f:	0000 0302 d2ed 0dc1 3080 0508 8e50 383d     .........0..P.=8
c0ded13f:	a3a4 41b0 7157 6e93 3863 d498 1042 eb7e     ...AWq.nc8..B.~.
c0ded14f:	4606 340e bfe5 0b84 ffbd aa35 e7e1 2eb2     .F.4......5.....
c0ded15f:	6705 b55c 541f 2473 e9b4 1273 7640 27b0     .g\..Ts$..s.@v.'
c0ded16f:	2794 c807 0711 4c94 3203 73ac b828 21cd     .'.....L.2.s(..!
c0ded17f:	8732 7313 3338 0b83 b833 8532 532b 62f8     2..s83..3.2.+S.b
c0ded18f:	9603 1dcf 0dc6 8ef2 7343 0320 0000          ........Cs ...

c0ded19d <C_Chevron_Back_40px>:
c0ded19d:	0028 0028 0102 d11f c0de                    (.(.......

c0ded1a7 <C_Chevron_Next_40px_bitmap>:
c0ded1a7:	0028 0028 7121 0000 006f 8b1f 0008 0000     (.(.!q..o.......
c0ded1b7:	0000 0302 ceed 0dbb 3080 450c 5751 0a51     .........0.EQWQ.
c0ded1c7:	cc86 ac06 0d90 0918 42a6 1448 c48f 8e44     .........BH...D.
c0ded1d7:	1b3f 6e20 74f9 1964 58f8 8735 22e9 02da     ?. n.td..X5.."..
c0ded1e7:	ca23 a581 61e2 f5a5 b074 c031 c6c1 0b00     #....a..t.1.....
c0ded1f7:	3999 ccc8 c1c2 1c0c 434c 0a61 9b0a 3150     .9......LCa...P1
c0ded207:	c781 1d64 ec2e fe92 bcbe 7707 ddbd ebf8     ..d........w....
c0ded217:	383d be09 209b 0003                          =8... ...

c0ded220 <C_Chevron_Next_40px>:
c0ded220:	0028 0028 0102 d1a7 c0de                    (.(.......

c0ded22a <C_Close_40px_bitmap>:
c0ded22a:	0028 0028 8521 0000 0083 8b1f 0008 0000     (.(.!...........
c0ded23a:	0000 0302 fffb c07f bfc0 08f9 cff6 10f7     ................
c0ded24a:	11fa 4207 41ac 420f 604f 87e8 fd09 e060     ...B.A.BO`....`.
c0ded25a:	3184 0ae0 e01b 70d2 9216 9c2c 5089 6706     .1.....p..,..P.g
c0ded26a:	2923 7383 9590 7941 ca28 5ca0 6554 3e60     #).s..Ay(..\Te`>
c0ded27a:	329a 42b0 6574 8520 cae8 0a40 9431 1561     .2.Bte ...@.1.a.
c0ded28a:	a2c3 9b17 581d 82dc cdcd fc58 2d86 b00c     .....X....X..-..
c0ded29a:	1584 30b6 12c5 d8f6 08e2 5c5b 8b62 6c73     ...0......[\b.sl
c0ded2aa:	6369 0040 b400 b40b 2014 0003                ic@...... ...

c0ded2b7 <C_Close_40px>:
c0ded2b7:	0028 0028 0102 d22a c0de                    (.(...*...

c0ded2c1 <C_Info_40px_bitmap>:
c0ded2c1:	0028 0028 3121 0000 002f 8b1f 0008 0000     (.(.!1../.......
c0ded2d1:	0000 0302 fffb 147f 0bd0 f030 67ff 0180     ..........0..g..
c0ded2e1:	2a7e 7189 5a60 80d3 ec45 cf57 f068 0593     ~*.q`Z..E.W.h...
c0ded2f1:	d900 c99e 2019 0003                          ..... ...

c0ded2fa <C_Info_40px>:
c0ded2fa:	0028 0028 0102 d2c1 c0de                    (.(.......

c0ded304 <C_Mini_Push_40px_bitmap>:
c0ded304:	0028 0028 ce21 0000 00cc 8b1f 0008 0000     (.(.!...........
c0ded314:	0000 0302 936d 0dcd 30c2 460c 2123 4ea4     ....m....0.F#!.N
c0ded324:	ba83 2b01 5230 6037 4604 0762 b006 5c0f     ...+0R7`.Fb....\
c0ded334:	4240 4936 2f9c f6bf c9a5 b3d3 3913 aaae     @B6I./.......9..
c0ded344:	1085 0eb1 4911 1e0a 7710 829f 6ab0 5a90     .....I...w...j.Z
c0ded354:	9606 3ac2 08a7 a7f5 a2d1 4761 b5e3 d168     ...:......aG..h.
c0ded364:	2f6c 053a a92f f019 a4cc fb95 6b3d cac1     l/:./.......=k..
c0ded374:	53f6 6563 0ef5 8ae1 c043 10f6 3220 db41     .Sce....C... 2A.
c0ded384:	880e d044 1fee 8588 4d45 6215 5161 8553     ..D.....EM.baQS.
c0ded394:	2c68 556b 7634 5a4b cf12 e599 bcbb ab36     h,kU4vKZ......6.
c0ded3a4:	5c7e fdda 61e4 cbec d6c6 b81e ebcc db95     ~\...a..........
c0ded3b4:	af53 def7 791b e96f f9be 9628 eac9 b147     S....yo...(...G.
c0ded3c4:	3926 e6b3 a4ce bb37 8cee ff4f 1fc2 8764     &9....7...O...d.
c0ded3d4:	9d98 0320 0000                              .. ...

c0ded3da <C_Mini_Push_40px>:
c0ded3da:	0028 0028 0102 d304 c0de                    (.(.......

c0ded3e4 <C_Privacy_40px_bitmap>:
c0ded3e4:	0028 0028 ac21 0001 01aa 8b1f 0008 0000     (.(.!...........
c0ded3f4:	0000 0302 927d 4bbf 50c3 c710 e9af 8b4f     ....}..K.P....O.
c0ded404:	1768 0741 b335 fe88 6609 1d28 2c44 1fe2     h.A.5....f(.D,..
c0ded414:	2ea0 cdd2 2e0a 6082 a45c b4b8 0ff8 4418     .......`\......D
c0ded424:	1c50 b3b4 dd28 60a5 8777 38a2 10e9 b56b     P...(..`w..8..k.
c0ded434:	dac6 bce6 97bb 2da6 378a 25e4 f79f f7de     .......-.7.%....
c0ded444:	77be c439 a3bf ba75 ca9e f75c 26a1 8448     .w9...u...\..&H.
c0ded454:	7a2e 23d8 b178 1f40 5e4e 6ad8 7320 7b7e     .z.#x.@.N^.j s~{
c0ded464:	4cb6 1a70 8cd1 7231 2e21 cf5b 8c06 03a3     .Lp...1r!.[.....
c0ded474:	1ac2 a730 dc34 2ab5 4166 beee c941 6e97     ..0.4..*fA..A..n
c0ded484:	63a8 6968 74dd d859 d595 fb88 81c8 5288     .chi.tY........R
c0ded494:	2181 90c9 a1bb 74a4 16cc 69c7 9e7a 9390     .!.....t...iz...
c0ded4a4:	4e29 1eda d913 c423 f127 53ac 07d2 22a8     )N....#.'..S..."
c0ded4b4:	e1d6 5d0e 461d 4b72 49c0 30eb f88b 880a     ...].FrK.I.0....
c0ded4c4:	10ef 6125 8d93 09ba a8da c904 5c0e 328a     ..%a.........\.2
c0ded4d4:	283b 1004 218b 5d44 cd39 2bd2 c9dd 15a3     ;(...!D]9..+....
c0ded4e4:	36c1 084c 01ab 6919 24c1 e237 561b 7d84     .6L....i.$7..V.}
c0ded4f4:	8488 c031 51cc 7b85 216b 9bf4 c259 fe9a     ..1..Q.{k!..Y...
c0ded504:	92dd 9faa b872 cb24 3521 a8b4 62fe b698     ....r.$.!5...b..
c0ded514:	c2a2 4d4c 6cbc 4560 f7eb 916c 5521 cc5b     ..LM.l`E..l.!U[.
c0ded524:	86e6 8752 3d5c adc2 7bf7 d9a0 a6dc be99     ..R.\=...{......
c0ded534:	2d5e 26b2 a8cb 1e9e 9a13 8b17 3a52 f30c     ^-.&........R:..
c0ded544:	3ef3 a327 ca61 ae09 8fcf 084f 5aca f908     .>'.a.....O..Z..
c0ded554:	35c8 ffbc a35f 5ec4 41ec f3b8 d353 3a1e     .5.._..^.A..S..:
c0ded564:	f604 9120 5418 b993 8329 5e85 db99 f2e5     .. ..T..)..^....
c0ded574:	56d5 6002 57d4 75ae b266 f08b 114b a76d     .V.`.W.uf...K.m.
c0ded584:	a077 f65f c993 81d4 ff8d 0fc5 af18 4ccb     w._............L
c0ded594:	0320 0000                                    ...

c0ded598 <C_Privacy_40px>:
c0ded598:	0028 0028 0102 d3e4 c0de                    (.(.......

c0ded5a2 <C_QRCode_40px_bitmap>:
c0ded5a2:	0028 0028 9921 0000 0097 8b1f 0008 0000     (.(.!...........
c0ded5b2:	0000 0302 fffb da9f 11e0 0803 bd30 00ff     ............0...
c0ded5c2:	fea2 607f 8900 8029 18c5 91f4 20c5 0c42     ...`..)...... B.
c0ded5d2:	28fc fc62 1230 c2c2 f62d a3a7 4307 07ec     .(b.0...-....C..
c0ded5e2:	0703 ff84 6101 b11e 1062 c0f3 903c 9073     .....a..b...<.s.
c0ded5f2:	25ec 8628 07f0 cc3f 4839 85fe 218b 0b85     .%(...?.9H...!..
c0ded602:	923f 49b3 d30a 107f f583 ed90 04f8 99a1     ?..I............
c0ded612:	c230 9b14 d19b 19c2 0c55 061e 3a27 a3ce     0.......U...':..
c0ded622:	1586 d790 d0c0 aa4f 3618 88f3 0b74 7f16     ......O..6..t...
c0ded632:	f360 b62f a170 002e 5b00 1eb2 20fb 0003     `./.p....[... ..
	...

c0ded643 <C_QRCode_40px>:
c0ded643:	0028 0028 0102 d5a2 c0de                    (.(.......

c0ded64d <C_Settings_40px_bitmap>:
c0ded64d:	0028 0028 9321 0001 0191 8b1f 0008 0000     (.(.!...........
c0ded65d:	0000 0302 5275 52b1 40c2 7d10 88c9 9841     ....uR.R.@.}..A.
c0ded66d:	8c91 8e56 10ce 5e87 3e46 ec40 93b0 4e8e     ..V....^F>@....N
c0ded67d:	03fd 4053 850d 1695 9d62 4a42 b03b 8a93     ..S@....b.BJ;...
c0ded68d:	0bf1 04fc 1c1c 40eb a202 3920 2f77 1738     .......@.. 9w/8.
c0ded69d:	d818 6f62 e5ef eef2 bbed 6215 8c7d ad4d     ..bo.......b}.M.
c0ded6ad:	8cba 81d5 25ad 8028 6b61 45dd 87ac 8fac     .....%(.ak.E....
c0ded6bd:	daac 764f 4e0b 7751 3303 aed6 761c ac42     ..Ov.NQw.3...vB.
c0ded6cd:	8a01 1084 f9ad 314a 12e5 74f7 2cb5 8c9a     ......J1...t.,..
c0ded6dd:	300d 976b 5c73 4ae5 8b8e 5734 5c1e 3dc5     .0k.s\.J..4W.\.=
c0ded6ed:	9e43 1197 0a3a e29b 765c 4780 fd85 1aa0     C...:...\v.G....
c0ded6fd:	9e59 5cee 6075 4b8a 57ca 26c0 c381 6890     Y..\u`.K.W.&...h
c0ded70d:	fac4 2c7b 48e3 1f08 7c17 4593 0557 0a16     ..{,.H...|.EW...
c0ded71d:	d037 8459 a74e 601f f108 0385 9e21 2d71     7.Y.N..`....!.q-
c0ded72d:	8d44 19ec 2343 7786 f9a6 8a45 b79a 1d50     D...C#.w..E...P.
c0ded73d:	84e0 5a08 cc1b 9a7c 0e90 fba5 ef06 716a     ...Z..|.......jq
c0ded74d:	76ce 5398 2c73 25fa 6035 a205 fe11 a49b     .v.Ss,.%5`......
c0ded75d:	81f4 18f4 b93a c7d3 8b1b a6df 5264 755b     ....:.......dR[u
c0ded76d:	59c4 becb af10 c5ac 9ec6 b960 87d4 b385     .Y........`.....
c0ded77d:	cb32 a1f5 4bf3 b27d ff65 79bd f9b2 b2d0     2....K}.e..y....
c0ded78d:	3d80 6650 5e86 2f05 11b7 5733 3a79 f45c     .=Pf.^./..3Wy:\.
c0ded79d:	f25e e8f9 6746 1b24 65be aed0 b864 14ca     ^...Fg$..e..d...
c0ded7ad:	6e9c 96f8 f913 44d4 2df3 8e8b 8d9a 9aa4     .n.....D.-......
c0ded7bd:	c911 53bb 8a72 1b9a b158 f976 a9b8 3db8     ...Sr...X.v....=
c0ded7cd:	3de4 50e9 6624 61a6 6747 dd64 aeec f19c     .=.P$f.aGgd.....
c0ded7dd:	fc68 4701 f51a 207f 0003                     h..G... ...

c0ded7e8 <C_Settings_40px>:
c0ded7e8:	0028 0028 0102 d64d c0de                    (.(...M...

c0ded7f2 <C_Warning_40px_bitmap>:
c0ded7f2:	0028 0028 e721 0000 00e5 8b1f 0008 0000     (.(.!...........
c0ded802:	0000 0302 d36d 0db1 40c2 850c 47e1 2284     ....m....@...G."
c0ded812:	283a d511 88d5 1182 0032 8662 904c 0815     :(......2.b.L...
c0ded822:	3013 2c03 0ec0 9e88 1025 526d 8450 9d10     .0.,....%.mRP...
c0ded832:	73b9 8842 b87d aafc 675f 911f 4b1c 34c1     .sB.}..._g...K.4
c0ded842:	0b26 c128 5b44 c08a c0f6 d95a d811 d2e6     &.(.D[....Z.....
c0ded852:	c0ae a486 81dd 4905 80ab 4939 66ab 4988     .......I..9I.f.I
c0ded862:	635a be30 7349 11ad c0d3 8c52 240e b5cd     Zc0.Is....R..$..
c0ded872:	d476 6f9b 6925 2adc 6dad d615 0eb5 c5ed     v..o%i.*.m......
c0ded882:	25ad 4cfc b04b b93d b035 db42 20db 942e     .%.LK.=.5.B.. ..
c0ded892:	43d1 773e e2db a970 2e8d 4ac0 9d1b 4c80     .C>w..p....J...L
c0ded8a2:	e51b ec3f a6cd ce88 c8ca 5f26 bc1c 6d7d     ..?.......&_..}m
c0ded8b2:	5db8 a8ee 76e6 cbb5 5dae bcee 576d c1b7     .]...v...]..mW..
c0ded8c2:	caed 5db8 6f9b da37 9fec f49b 81ed ccb9     ...].o7.........
c0ded8d2:	785d fef8 7c2f 1300 b8d8 2006 0003           ]x../|..... ...

c0ded8e1 <C_Warning_40px>:
c0ded8e1:	0028 0028 0102 d7f2 c0de 7544 6d6d 2079     (.(.......Dummy 
c0ded8f1:	0032 704f 7265 7461 6f69 206e 6973 6e67     2.Operation sign
c0ded901:	6465 4100 6464 6572 7373 7620 7265 6669     ed.Address verif
c0ded911:	6369 7461 6f69 0a6e 6163 636e 6c65 656c     ication.cancelle
c0ded921:	0064 7254 6e61 6173 7463 6f69 206e 6843     d.Transaction Ch
c0ded931:	6365 206b 6e75 7661 6961 616c 6c62 0065     eck unavailable.
c0ded941:	7041 7270 766f 0065 6c42 6e69 2d64 6973     Approve.Blind-si
c0ded951:	6e67 3000 302e 312e 4800 6c6f 2064 6f74     gn.0.0.1.Hold to
c0ded961:	7320 6769 006e 704f 7265 7461 6f69 206e      sign.Operation 
c0ded971:	6572 656a 7463 6465 5200 6a65 6365 0074     rejected.Reject.
c0ded981:	6953 6e67 6e69 0067 6649 7920 756f 7227     Signing.If you'r
c0ded991:	2065 6f6e 2074 7375 6e69 2067 6874 2065     e not using the 
c0ded9a1:	654c 6764 7265 5720 6c61 656c 2074 7061     Ledger Wallet ap
c0ded9b1:	2c70 5420 6172 736e 6361 6974 6e6f 4320     p, Transaction C
c0ded9c1:	6568 6b63 6d20 6769 7468 6e20 746f 7720     heck might not w
c0ded9d1:	726f 2e6b 4920 2066 6f79 2075 7261 2065     ork. If you are 
c0ded9e1:	7375 6e69 2067 654c 6764 7265 5720 6c61     using Ledger Wal
c0ded9f1:	656c 2c74 7220 6a65 6365 2074 6874 2065     let, reject the 
c0deda01:	7274 6e61 6173 7463 6f69 206e 6e61 2064     transaction and 
c0deda11:	7274 2079 6761 6961 2e6e 0a0a 6547 2074     try again...Get 
c0deda21:	6568 706c 6120 2074 656c 6764 7265 632e     help at ledger.c
c0deda31:	6d6f 652f 3131 5200 6a65 6365 2074 7274     om/e11.Reject tr
c0deda41:	6e61 6173 7463 6f69 3f6e 4300 6972 6974     ansaction?.Criti
c0deda51:	6163 206c 6874 6572 7461 6420 7465 6365     cal threat detec
c0deda61:	6574 2e64 420a 696c 646e 7320 6769 696e     ted..Blind signi
c0deda71:	676e 7220 7165 6975 6572 2e64 5500 696e     ng required..Uni
c0deda81:	6564 746e 6669 6569 2064 6972 6b73 5300     dentified risk.S
c0deda91:	6f68 2077 7361 5120 0052 6f47 6220 6361     how as QR.Go bac
c0dedaa1:	206b 6f74 6f20 6570 6172 6974 6e6f 5400     k to operation.T
c0dedab1:	6172 736e 6361 6974 6e6f 4320 6568 6b63     ransaction Check
c0dedac1:	7520 616e 6176 6c69 6261 656c 0a2e 6c42      unavailable..Bl
c0dedad1:	6e69 2064 6973 6e67 6e69 2067 6572 7571     ind signing requ
c0dedae1:	7269 6465 002e 6441 7264 7365 2073 6576     ired..Address ve
c0dedaf1:	6972 6966 6465 5300 6977 6570 7420 206f     rified.Swipe to 
c0dedb01:	6f63 746e 6e69 6575 2500 2073 7325 250a     continue.%s %s.%
c0dedb11:	0073 7468 7074 3a73 2f2f 7325 4100 6572     s.https://%s.Are
c0dedb21:	7920 756f 7320 7275 2065 6f74 610a 6c6c      you sure to.all
c0dedb31:	776f 6420 6d75 796d 3220 690a 206e 7274     ow dummy 2.in tr
c0dedb41:	6e61 6173 7463 6f69 736e 003f 7254 6e61     ansactions?.Tran
c0dedb51:	6173 7463 6f69 206e 6973 6e67 6465 4500     saction signed.E
c0dedb61:	534e 6e20 6d61 7365 6120 6572 7220 7365     NS names are res
c0dedb71:	6c6f 6576 2064 7962 4c20 6465 6567 2072     olved by Ledger 
c0dedb81:	6162 6b63 6e65 2e64 5300 6365 7275 7469     backend..Securit
c0dedb91:	2079 6572 6f70 7472 4400 7665 6c65 706f     y report.Develop
c0dedba1:	7265 2500 0a73 7325 2520 0073 6c41 6f6c     er.%s.%s %s.Allo
c0dedbb1:	2077 7564 6d6d 2079 0a31 6e69 7420 6172     w dummy 1.in tra
c0dedbc1:	736e 6361 6974 6e6f 0073 6559 2c73 7320     nsactions.Yes, s
c0dedbd1:	696b 0070 7325 7220 7065 726f 0074 6f47     kip.%s report.Go
c0dedbe1:	6220 6361 206b 6f74 7420 6172 736e 6361      back to transac
c0dedbf1:	6974 6e6f 5300 6769 206e 656d 7373 6761     tion.Sign messag
c0dedc01:	0065 6142 6b63 7420 206f 6173 6566 7974     e.Back to safety
c0dedc11:	4d00 7365 6173 6567 7320 6769 656e 0064     .Message signed.
c0dedc21:	6c43 736f 0065 6953 6e67 7420 6172 736e     Close.Sign trans
c0dedc31:	6361 6974 6e6f 5300 6163 206e 6f74 7620     action.Scan to v
c0dedc41:	6569 2077 7566 6c6c 7220 7065 726f 0074     iew full report.
c0dedc51:	6854 7369 7420 6172 736e 6361 6974 6e6f     This transaction
c0dedc61:	6f20 2072 656d 7373 6761 2065 6163 6e6e      or message cann
c0dedc71:	746f 6220 2065 6564 6f63 6564 2064 7566     ot be decoded fu
c0dedc81:	6c6c 2e79 4920 2066 6f79 2075 6863 6f6f     lly. If you choo
c0dedc91:	6573 7420 206f 6973 6e67 202c 6f79 2075     se to sign, you 
c0dedca1:	6f63 6c75 2064 6562 6120 7475 6f68 6972     could be authori
c0dedcb1:	697a 676e 6d20 6c61 6369 6f69 7375 6120     zing malicious a
c0dedcc1:	7463 6f69 736e 7420 6168 2074 6163 206e     ctions that can 
c0dedcd1:	7264 6961 206e 6f79 7275 7720 6c61 656c     drain your walle
c0dedce1:	2e74 0a0a 654c 7261 206e 6f6d 6572 203a     t...Learn more: 
c0dedcf1:	656c 6764 7265 632e 6d6f 652f 0038 6341     ledger.com/e8.Ac
c0dedd01:	6563 7470 7420 7268 6165 2074 6e61 2064     cept threat and 
c0dedd11:	6f63 746e 6e69 6575 4100 6c6c 776f 6420     continue.Allow d
c0dedd21:	6d75 796d 3220 690a 206e 7274 6e61 6173     ummy 2.in transa
c0dedd31:	7463 6f69 736e 5600 7265 6973 6e6f 4d00     ctions.Version.M
c0dedd41:	726f 0065 6854 7369 7420 6172 736e 6361     ore.This transac
c0dedd51:	6974 6e6f 6320 6e61 6f6e 2074 6562 4320     tion cannot be C
c0dedd61:	656c 7261 5320 6769 656e 0064 6559 2c73     lear Signed.Yes,
c0dedd71:	7220 6a65 6365 0074 6143 636e 6c65 5400      reject.Cancel.T
c0dedd81:	6968 2073 7274 6e61 6173 7463 6f69 206e     his transaction 
c0dedd91:	6177 2073 6373 6e61 656e 2064 7361 6d20     was scanned as m
c0dedda1:	6c61 6369 6f69 7375 6220 2079 6557 3362     alicious by Web3
c0deddb1:	4320 6568 6b63 2e73 2500 2064 666f 2520      Checks..%d of %
c0deddc1:	0064 6b53 7069 7220 7665 6569 3f77 4200     d.Skip review?.B
c0deddd1:	696c 646e 7320 6769 696e 676e 7220 7165     lind signing req
c0dedde1:	6975 6572 0064 755b 6b6e 6f6e 6e77 005d     uired.[unknown].
c0deddf1:	6952 6b73 6420 7465 6365 6574 0064 6c42     Risk detected.Bl
c0dede01:	6e69 2064 6973 6e67 6e69 2067 6572 7571     ind signing requ
c0dede11:	7269 6465 002e 6e55 6469 6e65 6974 6966     ired..Unidentifi
c0dede21:	6465 7420 7268 6165 0074 7243 7469 6369     ed threat.Critic
c0dede31:	6c61 7420 7268 6165 0074 6341 6563 7470     al threat.Accept
c0dede41:	7220 7369 206b 6e61 2064 6f63 746e 6e69      risk and contin
c0dede51:	6575 5400 6968 2073 7274 6e61 6173 7463     ue.This transact
c0dede61:	6f69 276e 2073 6564 6174 6c69 2073 7261     ion's details ar
c0dede71:	2065 6f6e 2074 7566 6c6c 2079 6576 6972     e not fully veri
c0dede81:	6966 6261 656c 202e 6649 7920 756f 7320     fiable. If you s
c0dede91:	6769 2c6e 7920 756f 6320 756f 646c 6c20     ign, you could l
c0dedea1:	736f 2065 6c61 206c 6f79 7275 6120 7373     ose all your ass
c0dedeb1:	7465 2e73 4700 206f 6162 6b63 7420 206f     ets..Go back to 
c0dedec1:	656d 7373 6761 0065 6f50 6574 746e 6169     message.Potentia
c0deded1:	206c 6972 6b73 6420 7465 6365 6574 2e64     l risk detected.
c0dedee1:	420a 696c 646e 7320 6769 696e 676e 7220     .Blind signing r
c0dedef1:	7165 6975 6572 2e64 5400 6968 2073 6361     equired..This ac
c0dedf01:	6f63 6e75 2074 616c 6562 206c 6f63 656d     count label come
c0dedf11:	2073 7266 6d6f 7920 756f 2072 6441 7264     s from your Addr
c0dedf21:	7365 2073 6f42 6b6f 6920 206e 654c 6764     ess Book in Ledg
c0dedf31:	7265 5720 6c61 656c 2e74 4e00 206f 6874     er Wallet..No th
c0dedf41:	6572 7461 6420 7465 6365 6574 2064 7962     reat detected by
c0dedf51:	5420 6172 736e 6361 6974 6e6f 4320 6568      Transaction Che
c0dedf61:	6b63 002e 6c42 6e69 2064 6973 6e67 6e69     ck..Blind signin
c0dedf71:	2067 6861 6165 0064 6150 7472 6169 206c     g ahead.Partial 
c0dedf81:	6953 6e67 740a 6172 736e 6361 6974 6e6f     Sign.transaction
c0dedf91:	4d00 7365 6173 6567 7220 6a65 6365 6574     .Message rejecte
c0dedfa1:	0064 6552 656a 7463 6f20 6570 6172 6974     d.Reject operati
c0dedfb1:	6e6f 003f 3130 3332 3534 3736 3938 4241     on?.0123456789AB
c0dedfc1:	4443 4645 6e00 7465 6f77 6b72 002e 4f42     CDEF.network..BO
c0dedfd1:	204c 2e25 732a 4900 2066 6f79 2775 6572     L %.*s.If you're
c0dedfe1:	7320 7275 2065 6f79 2075 6f64 276e 2074      sure you don't 
c0dedff1:	656e 6465 7420 206f 6572 6976 7765 6120     need to review a
c0dee001:	6c6c 6620 6569 646c 2c73 7920 756f 6320     ll fields, you c
c0dee011:	6e61 7320 696b 2070 7473 6172 6769 7468     an skip straight
c0dee021:	7420 206f 6973 6e67 6e69 2e67 5400 6968      to signing..Thi
c0dee031:	2073 7274 6e61 6173 7463 6f69 206e 6177     s transaction wa
c0dee041:	2073 6373 6e61 656e 2064 7361 7220 7369     s scanned as ris
c0dee051:	796b 6220 2079 6557 3362 4320 6568 6b63     ky by Web3 Check
c0dee061:	2e73 4100 6464 6572 7373 4400 6d75 796d     s..Address.Dummy
c0dee071:	3120 4900 7520 646e 7265 7473 6e61 2c64      1.I understand,
c0dee081:	6320 6e6f 6966 6d72 4e00 206f 6874 6572      confirm.No thre
c0dee091:	7461 6420 7465 6365 6574 0064 7854 6148     at detected.TxHa
c0dee0a1:	6873 5400 6172 736e 6361 6974 6e6f 7220     sh.Transaction r
c0dee0b1:	6a65 6365 6574 0064 6f47 6220 6361 206b     ejected.Go back 
c0dee0c1:	6f74 7220 7665 6569 0077 7243 7469 6369     to review.Critic
c0dee0d1:	6c61 7420 7268 6165 2074 6564 6574 7463     al threat detect
c0dee0e1:	6465 002e 6953 6e67 6f20 6570 6172 6974     ed..Sign operati
c0dee0f1:	6e6f 5000 7261 6974 6c61 7320 6769 0a6e     on.Partial sign.
c0dee101:	7274 6e61 6173 7463 6f69 006e 6544 6574     transaction.Dete
c0dee111:	7463 6465 6220 2079 7325 0000 6b53 7069     cted by %s..Skip
c0dee121:	5000 746f 6e65 6974 6c61 7220 7369 206b     .Potential risk 
c0dee131:	6564 6574 7463 6465 002e 6f4e 7420 7268     detected..No thr
c0dee141:	6165 2074 6564 6574 7463 6465 6220 2079     eat detected by 
c0dee151:	7254 6e61 6173 7463 6f69 206e 6843 6365     Transaction Chec
c0dee161:	206b 7562 2074 6c62 6e69 2064 6973 6e67     k but blind sign
c0dee171:	6e69 2067 6572 7571 7269 6465 002e 6f50     ing required..Po
c0dee181:	6574 746e 6169 206c 6972 6b73 5a00 4e4b     tential risk.ZKN
c0dee191:	584f 5600 7265 6669 2079 4f42 204c 6461     OX.Verify BOL ad
c0dee1a1:	7264 7365 0073 6552 6976 7765 7420 6172     dress.Review tra
c0dee1b1:	736e 6361 6974 6e6f 740a 206f 7028 7261     nsaction.to (par
c0dee1c1:	6974 6c61 2029 6973 6e67 4300 6e6f 6974     tial) sign.Conti
c0dee1d1:	756e 2065 6e61 7779 7961 5a00 4e4b 584f     nue anyway.ZKNOX
c0dee1e1:	5748 5100 6975 2074 7061 0070 7753 7069     HW.Quit app.Swip
c0dee1f1:	2065 6f74 7220 7665 6569 0077 6854 7369     e to review.This
c0dee201:	6120 7070 6520 616e 6c62 7365 7320 6769      app enables sig
c0dee211:	696e 676e 740a 6172 736e 6361 6974 6e6f     ning.transaction
c0dee221:	2073 6e6f 7420 6568 5400 6172 736e 6361     s on the.Transac
c0dee231:	6974 6e6f 4320 6568 6b63 6420 6469 276e     tion Check didn'
c0dee241:	2074 6966 646e 6120 796e 7420 7268 6165     t find any threa
c0dee251:	2c74 6220 7475 6120 776c 7961 2073 6572     t, but always re
c0dee261:	6976 7765 7420 6172 736e 6361 6974 6e6f     view transaction
c0dee271:	6420 7465 6961 736c 6320 7261 6665 6c75      details careful
c0dee281:	796c 002e 6f43 666e 7269 006d 6552 656a     ly..Confirm.Reje
c0dee291:	7463 6d20 7365 6173 6567 003f 0000 0100     ct message?.....
c0dee2a1:	c465 5fd5 1744 68b3 5ae9 0054 301a 3c32     e.._D..h.ZT..02<
c0dee2b1:	4fb0 34e8 5a3e 84d4 2345 a563 d098 7359     .O.4>Z..E#c...Ys
c0dee2c1:	a7ed 2953 7d9d 3348 d839 0908 d8a1 5305     ..S).}H39......S
c0dee2d1:	a4bd ff02 5bfe fffe ffff 00ff 0000 0501     .....[..........
c0dee2e1:	98ce 1bc6 f405 e27f e9ea 42a5 99bd b2f6     ...........B....
c0dee2f1:	82e7 2346 4016 45b5 fe95 d5bf b81e 0053     ..F#.@.E......S.
	...
c0dee31d:	0000 0103 0000 0000 0000 0200 0000 0000     ................
c0dee32d:	0000 0300 0000 0000 0000 0400 0000 0000     ................
c0dee33d:	0000 0000 46d6 edb7 a5de 8318 88d0 643f     .....F........?d
c0dee34d:	da49 a02d c39f f4c7 0a53 6d49 2969 64ee     I.-.....S.Imi).d
c0dee35d:	4c9b 057f c0a0 5691 8b83 2898 3faf 6712     .L.....V...(.?.g
c0dee36d:	75e1 e2e6 c784 1b9d 8a6d cdd0 e00a 57d9     .u......m......W
c0dee37d:	3390 1c6e eec6 1338 1c9c 0211 5323 8c7a     .3n...8.....#Sz.
c0dee38d:	9de7 7e06 cc58 6710 fbc6 d8b7 a1b3 8db0     ...~X..g........
c0dee39d:	8ffc 2708 bc4d d1e8 7951 9b96 d4c0 a79f     ...'M...Qy......
c0dee3ad:	bd25 9ddf 55e5 bae0 696a 6a3c 52db 9efc     %....U..ji<j.R..
c0dee3bd:	a8e7 1c2c 69fb cad4 5f67 0c52 76ce 0202     ..,..i..g_R..v..
c0dee3cd:	7668 ff00 878f 7400 0419 7471 06fd 28b5     hv.....t..qt...(
c0dee3dd:	e776 06e1 890c 5cce 3426 3705 080a d0b6     v......\&4.7....
c0dee3ed:	2b30 ab0b ed3e 39b8 ee20 670a 9772 39dc     0+..>..9 ..gr..9
c0dee3fd:	2621 70f1 89a5 644a 5444 d038 ac15 ba32     !&.p..JdDT8...2.
c0dee40d:	0f36 2c09 44de b1ba c21f d4b7 c0b5 16d2     6..,.D..........
c0dee41d:	8c22 0bce b782 e739 da8d e757 c65a ef80     ".....9...W.Z...
c0dee42d:	9d68 15f1 e38f d8ee 5c09 4b6d b2d1 c1c7     h........\mK....
c0dee43d:	ee66 03fd e24a fb6f 4449 6366 ec45 447b     f...J.o.IDfcE.{D
c0dee44d:	cc3f bb92 5236 a9da f94f e192 2977 fea6     ?...6R..O...w)..
c0dee45d:	6cd3 0473 2f71 82de 1317 6de7 5d02 e4fd     .ls.q/.....m.]..
c0dee46d:	8cbd f32c 0268 c17a 7534 8370 7b39 f1c5     ..,.h.z.4up.9{..
c0dee47d:	6016 59fc 98d0 63a5 4523 d484 3e5a e834     .`.Y...c#E..Z>4.
c0dee48d:	b04f 323c 1a30 5400 e95a b368 4417 d55f     O.<20..TZ.h..D_.
c0dee49d:	65c4 0001 0000 0000 0000 0000 0000 0000     .e..............
	...
c0dee4bd:	9202 63fc c189 3326 67c2 c6cb 3b6e 6bf8     ...c..&3.g..n;.k
c0dee4cd:	b6e3 cbd8 6766 7771 4fe5 b392 f269 18f5     ....fgqw.O..i...
c0dee4dd:	588d 05e7 fb81 6e4a b54a 12a8 820b df26     .X....JnJ.....&.
c0dee4ed:	1e95 d710 d894 70b7 1f5d 6bb3 8e99 1ab9     .......p]..k....
c0dee4fd:	384b 73e5 a7ed 2953 7d9d 3348 d839 0908     K8.s..S).}H39...
c0dee50d:	d8a1 5305 a4bd ff02 5bfe fffe ffff fffe     ...S.....[......
c0dee51d:	ffff 00fc 0000 0000 0000 0000 0000 0000     ................
	...
c0dee53d:	9202 30f8 4e64 e172 a031 b829 4550 81b6     ...0dNr.1.).PE..
c0dee54d:	5881 285d e833 7948 70b9 4391 f5e1 f093     .X](3.Hy.p.C....
c0dee55d:	0000 0b01 7ab7 d66a 733e 4e9b b2ac 9de0     .....zj.>s.N....
c0dee56d:	7762 2ac1 d8b8 0501 e034 28b6 f393 bbf6     bw.*....4..(....
c0dee57d:	7095 2551 7279 f703 b2a0 2549 2e57 d11c     .pQ%yr....I%W...
c0dee58d:	f96b fced 05e0 b91f 33e1 4b77 253c 877a     k........3wK<%z.
c0dee59d:	7d2d 028b 1c88 7664 c0ea 58fc 4bc1 5c73     -}....dv...X.Ks\
c0dee5ad:	c768 f36e 9be5 adc1 b340 5ae4 5b4d 36f1     h.n.....@..ZM[.6
c0dee5bd:	7257                                         Wr>

c0dee5c0 <.L__const.handler_cmd_Poseidon.input>:
c0dee5c0:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0dee5d0:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0dee5e0:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0dee5f0:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0dee600:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0dee610:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0dee620:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0dee630:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0dee640:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0dee650:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0dee660 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0dee67c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0dee68c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0dee69c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0dee6ac:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0dee6bc:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0dee6cc:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0dee6dc:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0dee6ec:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0dee6fc:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0dee71c:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0dee72c:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0dee73c:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0dee74c:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0dee75c:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0dee76c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0dee77c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0dee78c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0dee79c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0dee7bc:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0dee7cc:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0dee7dc:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0dee7ec:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0dee7fc:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0dee80c:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0dee81c:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0dee82c:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0dee83c:	9b44 9ffb                                   D...

c0dee840 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0dee85c:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0dee86c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0dee87c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0dee88c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0dee89c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0dee8ac:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0dee8bc:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0dee8cc:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0dee8dc:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0dee8fc:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0dee90c:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0dee91c:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0dee92c:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0dee93c:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0dee94c:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0dee95c:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0dee96c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0dee97c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0dee99c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0dee9ac:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0dee9bc:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0dee9cc:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0dee9dc:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0dee9ec:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0dee9fc:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0deea0c:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0deea1c:	8132 74b1                                   2..t

c0deea20 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0deea20:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0deea30:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0deea40:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0deea50:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0deea60:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0deea70:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0deea80 <.L__const.handler_cmd_PartialSig.commitmentlist_be>:
	...
c0deea9c:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0deeaac:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0deeabc:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0deeacc:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0deeadc:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0deeaec:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0deeafc:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0deeb0c:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0deeb1c:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0deeb3c:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0deeb4c:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0deeb5c:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0deeb6c:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0deeb7c:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0deeb8c:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0deeb9c:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0deebac:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0deebbc:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0deebdc:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0deebec:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0deebfc:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0deec0c:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0deec1c:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0deec2c:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0deec3c:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0deec4c:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0deec5c:	b87c 6a30                                   |.0j

c0deec60 <.L__const.handler_cmd_PartialSig.groupkey_be>:
c0deec60:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0deec70:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0deec80:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0deec90:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0deeca0 <settingContents>:
c0deeca0:	0000 0000 ecbc c0de 0001 0000               ............

c0deecac <infoList>:
c0deecac:	ecf4 c0de ecfc c0de 0000 0000 0002 0000     ................

c0deecbc <contents>:
c0deecbc:	0007 0000 03fc da7a 0002 0000 0000 0000     ......z.........
	...
c0deecf0:	1bdd c0de                                   ....

c0deecf4 <INFO_TYPES>:
c0deecf4:	dd38 c0de db9a c0de                         8.......

c0deecfc <INFO_CONTENTS>:
c0deecfc:	d954 c0de e18e c0de                         T.......

c0deed04 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0deed24:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0deed34:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0deed44 <.L__const.Poseidon_alloc_init.MixColumn>:
c0deed44:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0deed54:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0deed64:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0deed74:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0deed84:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0deed94:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0deeda4:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0deedb4:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0deedc4:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0deedd4:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0deede4:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0deedf4:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0deee04:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0deee14:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0deee24:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0deee34:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0deee44:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0deee54:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0deee64:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0deee74:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0deee84:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0deee94:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0deeea4:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0deeeb4:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0deeec4:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0deeed4:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0deeee4:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0deeef4:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0deef04:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0deef14:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0deef24:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0deef34:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0deef44:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0deef54:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0deef64:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0deef74:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0deef84:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0deef94:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0deefa4:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0deefb4:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0deefc4:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0deefd4:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0deefe4:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0deeff4:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0def004:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0def014:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0def024:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0def034:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0def044:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0def054:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0def064:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0def074:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0def084:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0def094:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0def0a4:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0def0b4:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0def0c4:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0def0d4:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0def0e4:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0def0f4:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0def104:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0def114:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0def124:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0def134:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0def144:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0def154:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0def164:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0def174:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0def184:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0def194:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0def1a4:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0def1b4:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0def1c4 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0def1c4:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0def1d4:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0def1e4 <.L__const.nbgl_useCaseStatus.ticker>:
c0def1e4:	9145 c0de 0bb8 0000 0000 0000               E...........

c0def1f0 <blindSigningWarning>:
c0def1f0:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...
c0def21c:	6854 7369 6120 7070 6520 616e 6c62 7365     This app enables
c0def22c:	7320 6769 696e 676e 740a 6172 736e 6361      signing.transac
c0def23c:	6974 6e6f 2073 6e6f 6920 7374 6e20 7465     tions on its net
c0def24c:	6f77 6b72 002e                              work..

c0def252 <nbMaxElementsPerContentType>:
c0def252:	0101 0101 0101 0301 0503 0005 0000          ..............

c0def260 <.L__const.displayAddressQRCode.headerDesc>:
c0def260:	0000 0000 0028 0000 0000 0000 0000 0000     ....(...........
c0def270:	0000 0000                                   ....

c0def274 <.L__const.displaySkipWarning.info>:
c0def274:	ddc3 c0de dfd8 c0de 0000 0000 ce32 c0de     ............2...
c0def284:	0000 0000 dbcb c0de e0b9 c0de 0005 0109     ................

c0def294 <.L__const.displaySecurityReport.layoutDescription>:
c0def294:	0101 0000 0000 0000 0000 0000 a811 c0de     ................
	...

c0def2b0 <.L__const.displaySecurityReport.headerDesc>:
c0def2b0:	0101 0000 0000 0000 0000 0000 0917 0000     ................
c0def2c0:	0000 0000                                   ....

c0def2c4 <securityReportItems>:
c0def2c4:	d8e1 c0de d923 c0de 0000 0000 d8e1 c0de     ....#...........
c0def2d4:	ddf1 c0de e02e c0de d8e1 c0de de2b c0de     ............+...
c0def2e4:	dd80 c0de 0000 0000 e08a c0de e22a c0de     ............*...
c0def2f4:	d8e1 c0de ddd0 c0de de54 c0de               ........T...

c0def300 <.L__const.displayInfosListModal.info>:
c0def300:	0100 0114 0900 0000 0000 0000 0000 0000     ................
c0def310:	0100 0300 0000 0000 0000 0000               ............

c0def31c <.L__const.displayInitialWarning.buttonsInfo>:
c0def31c:	dc03 c0de e1cc c0de 0000 0000 0015 0009     ................

c0def32c <.L__const.displayInitialWarning.headerDesc>:
c0def32c:	0000 0000 0040 0000 0000 0000 0000 0000     ....@...........
c0def33c:	0000 0000                                   ....

c0def340 <g_pcHex>:
c0def340:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0def350 <g_pcHex_cap>:
c0def350:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0def360 <_etext>:
	...

c0def400 <N_storage_real>:
	...

c0def600 <install_parameters>:
c0def600:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0def610:	8103 28ec 2800 2100 00e4 e200 1f00 088b     ...(.(.!........
c0def620:	0000 0000 0200 9d03 bd92 830d 1030 cf85     ............0...
c0def630:	8172 26e4 0066 1594 3288 3300 0621 2cc8     r..&f....2.3!..,
c0def640:	3a51 861a 40a1 934a 2c31 3a59 625d ed88     Q:...@J.1,Y:]b..
c0def650:	4db3 7241 3205 c78f f77d a263 025f a55f     .MAr.2..}.c._._.
c0def660:	9a66 b352 c772 d307 a68e 7fca 3c01 4ec5     f.R.r........<.N
c0def670:	07c1 76dd eb1a d45b 0a56 ba0e f98a 51c0     ...v..[.V......Q
c0def680:	5696 86e8 ca6b 35de 0880 1bd5 d6f7 3e7e     .V..k..5......~>
c0def690:	4540 07dc 3dda 5e3a 16cb 8e22 f7a0 285a     @E...=:^.."...Z(
c0def6a0:	697d e4bd 5c5b df71 0aa8 2053 c970 6c13     }i..[\q...S p..l
c0def6b0:	202f 474f 4738 1ced 194a 8403 1b8d 0c87     / OG8G..J.......
c0def6c0:	f492 28a1 37ed 30a1 9c1f 9f12 5e7c 3e74     ...(.7.0....|^t>
c0def6d0:	452b a8f8 7441 a67c 932e 23e9 08c5 9db1     +E..At|....#....
c0def6e0:	1af1 1a96 4977 dc73 dca5 07b9 d8ea 921d     ....wIs.........
c0def6f0:	eec7 d224 f13f 2906 9724 203f 0003 0400     ..$.?..)$.? ....
c0def700:	010a 8002 0000 802c 2300                     ......,..#s
