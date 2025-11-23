
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f007 faad 	bl	c0de7564 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f007 f82f 	bl	c0de7078 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fff6 	bl	c0de700c <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 ffe7 	bl	c0de6ff6 <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 ff49 	bl	c0de7ecc <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f007 fa27 	bl	c0de7490 <assert_exit>
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
c0de0056:	f007 f9d5 	bl	c0de7404 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 ff26 	bl	c0de7eb8 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f007 fa09 	bl	c0de7490 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d15d      	bne.n	c0de0140 <apdu_dispatcher+0xce>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2802      	cmp	r0, #2
c0de0090:	d059      	beq.n	c0de0146 <apdu_dispatcher+0xd4>
c0de0092:	281d      	cmp	r0, #29
c0de0094:	d061      	beq.n	c0de015a <apdu_dispatcher+0xe8>
c0de0096:	2804      	cmp	r0, #4
c0de0098:	d069      	beq.n	c0de016e <apdu_dispatcher+0xfc>
c0de009a:	2805      	cmp	r0, #5
c0de009c:	d073      	beq.n	c0de0186 <apdu_dispatcher+0x114>
c0de009e:	2806      	cmp	r0, #6
c0de00a0:	f000 8087 	beq.w	c0de01b2 <apdu_dispatcher+0x140>
c0de00a4:	2807      	cmp	r0, #7
c0de00a6:	f000 8092 	beq.w	c0de01ce <apdu_dispatcher+0x15c>
c0de00aa:	2808      	cmp	r0, #8
c0de00ac:	f000 8099 	beq.w	c0de01e2 <apdu_dispatcher+0x170>
c0de00b0:	2809      	cmp	r0, #9
c0de00b2:	f000 80a0 	beq.w	c0de01f6 <apdu_dispatcher+0x184>
c0de00b6:	280a      	cmp	r0, #10
c0de00b8:	f000 80a7 	beq.w	c0de020a <apdu_dispatcher+0x198>
c0de00bc:	280b      	cmp	r0, #11
c0de00be:	f000 80ae 	beq.w	c0de021e <apdu_dispatcher+0x1ac>
c0de00c2:	280c      	cmp	r0, #12
c0de00c4:	f000 80b5 	beq.w	c0de0232 <apdu_dispatcher+0x1c0>
c0de00c8:	280d      	cmp	r0, #13
c0de00ca:	f000 80bc 	beq.w	c0de0246 <apdu_dispatcher+0x1d4>
c0de00ce:	280e      	cmp	r0, #14
c0de00d0:	f000 80c3 	beq.w	c0de025a <apdu_dispatcher+0x1e8>
c0de00d4:	280f      	cmp	r0, #15
c0de00d6:	f000 80ca 	beq.w	c0de026e <apdu_dispatcher+0x1fc>
c0de00da:	2810      	cmp	r0, #16
c0de00dc:	f000 80d1 	beq.w	c0de0282 <apdu_dispatcher+0x210>
c0de00e0:	2811      	cmp	r0, #17
c0de00e2:	f000 80d7 	beq.w	c0de0294 <apdu_dispatcher+0x222>
c0de00e6:	2812      	cmp	r0, #18
c0de00e8:	f000 80dd 	beq.w	c0de02a6 <apdu_dispatcher+0x234>
c0de00ec:	2813      	cmp	r0, #19
c0de00ee:	f000 80e3 	beq.w	c0de02b8 <apdu_dispatcher+0x246>
c0de00f2:	2814      	cmp	r0, #20
c0de00f4:	f000 80e9 	beq.w	c0de02ca <apdu_dispatcher+0x258>
c0de00f8:	2815      	cmp	r0, #21
c0de00fa:	f000 80ef 	beq.w	c0de02dc <apdu_dispatcher+0x26a>
c0de00fe:	2817      	cmp	r0, #23
c0de0100:	f000 80f5 	beq.w	c0de02ee <apdu_dispatcher+0x27c>
c0de0104:	2818      	cmp	r0, #24
c0de0106:	f000 80fb 	beq.w	c0de0300 <apdu_dispatcher+0x28e>
c0de010a:	2819      	cmp	r0, #25
c0de010c:	f000 8105 	beq.w	c0de031a <apdu_dispatcher+0x2a8>
c0de0110:	281a      	cmp	r0, #26
c0de0112:	f000 810a 	beq.w	c0de032a <apdu_dispatcher+0x2b8>
c0de0116:	281b      	cmp	r0, #27
c0de0118:	f000 810f 	beq.w	c0de033a <apdu_dispatcher+0x2c8>
c0de011c:	281c      	cmp	r0, #28
c0de011e:	f000 8114 	beq.w	c0de034a <apdu_dispatcher+0x2d8>
c0de0122:	2803      	cmp	r0, #3
c0de0124:	f040 8119 	bne.w	c0de035a <apdu_dispatcher+0x2e8>
c0de0128:	78a0      	ldrb	r0, [r4, #2]
c0de012a:	2800      	cmp	r0, #0
c0de012c:	f040 812a 	bne.w	c0de0384 <apdu_dispatcher+0x312>
c0de0130:	78e0      	ldrb	r0, [r4, #3]
c0de0132:	2800      	cmp	r0, #0
c0de0134:	f040 8126 	bne.w	c0de0384 <apdu_dispatcher+0x312>
c0de0138:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de013c:	f000 b9e5 	b.w	c0de050a <handler_get_version>
c0de0140:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de0144:	e120      	b.n	c0de0388 <apdu_dispatcher+0x316>
c0de0146:	68a0      	ldr	r0, [r4, #8]
c0de0148:	2800      	cmp	r0, #0
c0de014a:	f000 8118 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de014e:	f000 f927 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0152:	a801      	add	r0, sp, #4
c0de0154:	f001 f962 	bl	c0de141c <handler_cmd_PartialSig>
c0de0158:	e10f      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de015a:	68a0      	ldr	r0, [r4, #8]
c0de015c:	2800      	cmp	r0, #0
c0de015e:	f000 810e 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de0162:	f000 f91d 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0166:	a801      	add	r0, sp, #4
c0de0168:	f001 fae4 	bl	c0de1734 <handler_cmd_frost_partial_sign>
c0de016c:	e105      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de016e:	78a0      	ldrb	r0, [r4, #2]
c0de0170:	2800      	cmp	r0, #0
c0de0172:	f040 8107 	bne.w	c0de0384 <apdu_dispatcher+0x312>
c0de0176:	78e0      	ldrb	r0, [r4, #3]
c0de0178:	2800      	cmp	r0, #0
c0de017a:	f040 8103 	bne.w	c0de0384 <apdu_dispatcher+0x312>
c0de017e:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0182:	f000 b95b 	b.w	c0de043c <handler_get_app_name>
c0de0186:	78a1      	ldrb	r1, [r4, #2]
c0de0188:	2901      	cmp	r1, #1
c0de018a:	f200 80fb 	bhi.w	c0de0384 <apdu_dispatcher+0x312>
c0de018e:	78e0      	ldrb	r0, [r4, #3]
c0de0190:	2800      	cmp	r0, #0
c0de0192:	f040 80f7 	bne.w	c0de0384 <apdu_dispatcher+0x312>
c0de0196:	68a0      	ldr	r0, [r4, #8]
c0de0198:	2800      	cmp	r0, #0
c0de019a:	f000 80f0 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de019e:	9001      	str	r0, [sp, #4]
c0de01a0:	7920      	ldrb	r0, [r4, #4]
c0de01a2:	2900      	cmp	r1, #0
c0de01a4:	9002      	str	r0, [sp, #8]
c0de01a6:	bf18      	it	ne
c0de01a8:	2101      	movne	r1, #1
c0de01aa:	a801      	add	r0, sp, #4
c0de01ac:	f000 f95a 	bl	c0de0464 <handler_get_public_key>
c0de01b0:	e0e3      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de01b2:	78a1      	ldrb	r1, [r4, #2]
c0de01b4:	2900      	cmp	r1, #0
c0de01b6:	f000 80d3 	beq.w	c0de0360 <apdu_dispatcher+0x2ee>
c0de01ba:	2903      	cmp	r1, #3
c0de01bc:	f200 80e2 	bhi.w	c0de0384 <apdu_dispatcher+0x312>
c0de01c0:	78e0      	ldrb	r0, [r4, #3]
c0de01c2:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de01c6:	2a80      	cmp	r2, #128	@ 0x80
c0de01c8:	f000 80ce 	beq.w	c0de0368 <apdu_dispatcher+0x2f6>
c0de01cc:	e0da      	b.n	c0de0384 <apdu_dispatcher+0x312>
c0de01ce:	68a0      	ldr	r0, [r4, #8]
c0de01d0:	2800      	cmp	r0, #0
c0de01d2:	f000 80d4 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de01d6:	f000 f8e3 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de01da:	a801      	add	r0, sp, #4
c0de01dc:	f000 faa0 	bl	c0de0720 <handler_cmd_keccakH>
c0de01e0:	e0cb      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de01e2:	68a0      	ldr	r0, [r4, #8]
c0de01e4:	2800      	cmp	r0, #0
c0de01e6:	f000 80ca 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de01ea:	f000 f8d9 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de01ee:	a801      	add	r0, sp, #4
c0de01f0:	f000 fa5d 	bl	c0de06ae <handler_cmd_blake2b512>
c0de01f4:	e0c1      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de01f6:	68a0      	ldr	r0, [r4, #8]
c0de01f8:	2800      	cmp	r0, #0
c0de01fa:	f000 80c0 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de01fe:	f000 f8cf 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0202:	a801      	add	r0, sp, #4
c0de0204:	f000 faf2 	bl	c0de07ec <handler_cmd_Poseidon>
c0de0208:	e0b7      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de020a:	68a0      	ldr	r0, [r4, #8]
c0de020c:	2800      	cmp	r0, #0
c0de020e:	f000 80b6 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de0212:	f000 f8c5 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0216:	a801      	add	r0, sp, #4
c0de0218:	f000 fc4c 	bl	c0de0ab4 <handler_cmd_tEddsaPoseidon>
c0de021c:	e0ad      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de021e:	68a0      	ldr	r0, [r4, #8]
c0de0220:	2800      	cmp	r0, #0
c0de0222:	f000 80ac 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de0226:	f000 f8bb 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de022a:	a801      	add	r0, sp, #4
c0de022c:	f000 fba8 	bl	c0de0980 <handler_cmd_tEddsaPoseidon_Kpub>
c0de0230:	e0a3      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de0232:	68a0      	ldr	r0, [r4, #8]
c0de0234:	2800      	cmp	r0, #0
c0de0236:	f000 80a2 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de023a:	f000 f8b1 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de023e:	a801      	add	r0, sp, #4
c0de0240:	f000 fbdf 	bl	c0de0a02 <handler_cmd_tEddsaPoseidon_Sign>
c0de0244:	e099      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de0246:	68a0      	ldr	r0, [r4, #8]
c0de0248:	2800      	cmp	r0, #0
c0de024a:	f000 8098 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de024e:	f000 f8a7 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0252:	a801      	add	r0, sp, #4
c0de0254:	f000 fb4e 	bl	c0de08f4 <handler_cmd_Poseidon_ithRC>
c0de0258:	e08f      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de025a:	68a0      	ldr	r0, [r4, #8]
c0de025c:	2800      	cmp	r0, #0
c0de025e:	f000 808e 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de0262:	f000 f89d 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0266:	a801      	add	r0, sp, #4
c0de0268:	f000 fc98 	bl	c0de0b9c <handler_cmd_tEdwards>
c0de026c:	e085      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de026e:	68a0      	ldr	r0, [r4, #8]
c0de0270:	2800      	cmp	r0, #0
c0de0272:	f000 8084 	beq.w	c0de037e <apdu_dispatcher+0x30c>
c0de0276:	f000 f893 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de027a:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de027e:	f000 ba6d 	b.w	c0de075c <handler_cmd_bolos_stretch>
c0de0282:	68a0      	ldr	r0, [r4, #8]
c0de0284:	2800      	cmp	r0, #0
c0de0286:	d07a      	beq.n	c0de037e <apdu_dispatcher+0x30c>
c0de0288:	f000 f88a 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de028c:	a801      	add	r0, sp, #4
c0de028e:	f000 fd3b 	bl	c0de0d08 <handler_cmd_Interpolate>
c0de0292:	e072      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de0294:	68a0      	ldr	r0, [r4, #8]
c0de0296:	2800      	cmp	r0, #0
c0de0298:	d071      	beq.n	c0de037e <apdu_dispatcher+0x30c>
c0de029a:	f000 f881 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de029e:	a801      	add	r0, sp, #4
c0de02a0:	f000 fde7 	bl	c0de0e72 <handler_cmd_Split>
c0de02a4:	e069      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de02a6:	68a0      	ldr	r0, [r4, #8]
c0de02a8:	2800      	cmp	r0, #0
c0de02aa:	d068      	beq.n	c0de037e <apdu_dispatcher+0x30c>
c0de02ac:	f000 f878 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de02b0:	a801      	add	r0, sp, #4
c0de02b2:	f000 fea6 	bl	c0de1002 <handler_cmd_frostH>
c0de02b6:	e060      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de02b8:	68a0      	ldr	r0, [r4, #8]
c0de02ba:	2800      	cmp	r0, #0
c0de02bc:	d05f      	beq.n	c0de037e <apdu_dispatcher+0x30c>
c0de02be:	f000 f86f 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de02c2:	a801      	add	r0, sp, #4
c0de02c4:	f000 feee 	bl	c0de10a4 <handler_cmd_encodeCommitment>
c0de02c8:	e057      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de02ca:	68a0      	ldr	r0, [r4, #8]
c0de02cc:	2800      	cmp	r0, #0
c0de02ce:	d056      	beq.n	c0de037e <apdu_dispatcher+0x30c>
c0de02d0:	f000 f866 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de02d4:	a801      	add	r0, sp, #4
c0de02d6:	f000 ff1b 	bl	c0de1110 <handler_cmd_GroupCommitment>
c0de02da:	e04e      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de02dc:	68a0      	ldr	r0, [r4, #8]
c0de02de:	2800      	cmp	r0, #0
c0de02e0:	d04d      	beq.n	c0de037e <apdu_dispatcher+0x30c>
c0de02e2:	f000 f85d 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de02e6:	a801      	add	r0, sp, #4
c0de02e8:	f000 ff56 	bl	c0de1198 <handler_cmd_BindingFactors>
c0de02ec:	e045      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de02ee:	68a0      	ldr	r0, [r4, #8]
c0de02f0:	2800      	cmp	r0, #0
c0de02f2:	d044      	beq.n	c0de037e <apdu_dispatcher+0x30c>
c0de02f4:	f000 f854 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de02f8:	a801      	add	r0, sp, #4
c0de02fa:	f001 f93b 	bl	c0de1574 <handler_cmd_tEddsaPoseidon_Sign_with_secret>
c0de02fe:	e03c      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de0300:	78a0      	ldrb	r0, [r4, #2]
c0de0302:	2801      	cmp	r0, #1
c0de0304:	d83e      	bhi.n	c0de0384 <apdu_dispatcher+0x312>
c0de0306:	78e0      	ldrb	r0, [r4, #3]
c0de0308:	bbe0      	cbnz	r0, c0de0384 <apdu_dispatcher+0x312>
c0de030a:	68a0      	ldr	r0, [r4, #8]
c0de030c:	b3b8      	cbz	r0, c0de037e <apdu_dispatcher+0x30c>
c0de030e:	f000 f847 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0312:	a801      	add	r0, sp, #4
c0de0314:	f001 f8f6 	bl	c0de1504 <handler_get_insecure_public>
c0de0318:	e02f      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de031a:	68a0      	ldr	r0, [r4, #8]
c0de031c:	b378      	cbz	r0, c0de037e <apdu_dispatcher+0x30c>
c0de031e:	f000 f83f 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0322:	a801      	add	r0, sp, #4
c0de0324:	f001 f96c 	bl	c0de1600 <handler_cmd_frost_inject>
c0de0328:	e027      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de032a:	68a0      	ldr	r0, [r4, #8]
c0de032c:	b338      	cbz	r0, c0de037e <apdu_dispatcher+0x30c>
c0de032e:	f000 f837 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0332:	a801      	add	r0, sp, #4
c0de0334:	f001 f98e 	bl	c0de1654 <handler_cmd_frost_commit>
c0de0338:	e01f      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de033a:	68a0      	ldr	r0, [r4, #8]
c0de033c:	b1f8      	cbz	r0, c0de037e <apdu_dispatcher+0x30c>
c0de033e:	f000 f82f 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0342:	a801      	add	r0, sp, #4
c0de0344:	f001 f9cc 	bl	c0de16e0 <handler_cmd_frost_inject_com1>
c0de0348:	e017      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de034a:	68a0      	ldr	r0, [r4, #8]
c0de034c:	b1b8      	cbz	r0, c0de037e <apdu_dispatcher+0x30c>
c0de034e:	f000 f827 	bl	c0de03a0 <OUTLINED_FUNCTION_0>
c0de0352:	a801      	add	r0, sp, #4
c0de0354:	f001 f9d8 	bl	c0de1708 <handler_cmd_frost_inject_com2>
c0de0358:	e00f      	b.n	c0de037a <apdu_dispatcher+0x308>
c0de035a:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de035e:	e013      	b.n	c0de0388 <apdu_dispatcher+0x316>
c0de0360:	78e0      	ldrb	r0, [r4, #3]
c0de0362:	2880      	cmp	r0, #128	@ 0x80
c0de0364:	d10e      	bne.n	c0de0384 <apdu_dispatcher+0x312>
c0de0366:	2080      	movs	r0, #128	@ 0x80
c0de0368:	68a2      	ldr	r2, [r4, #8]
c0de036a:	b142      	cbz	r2, c0de037e <apdu_dispatcher+0x30c>
c0de036c:	9201      	str	r2, [sp, #4]
c0de036e:	7922      	ldrb	r2, [r4, #4]
c0de0370:	9202      	str	r2, [sp, #8]
c0de0372:	09c2      	lsrs	r2, r0, #7
c0de0374:	a801      	add	r0, sp, #4
c0de0376:	f000 f8df 	bl	c0de0538 <handler_sign_tx>
c0de037a:	b004      	add	sp, #16
c0de037c:	bd10      	pop	{r4, pc}
c0de037e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0382:	e001      	b.n	c0de0388 <apdu_dispatcher+0x316>
c0de0384:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de0388:	b004      	add	sp, #16
c0de038a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de038e:	f000 b800 	b.w	c0de0392 <io_send_sw>

c0de0392 <io_send_sw>:
c0de0392:	b580      	push	{r7, lr}
c0de0394:	4602      	mov	r2, r0
c0de0396:	2000      	movs	r0, #0
c0de0398:	2100      	movs	r1, #0
c0de039a:	f006 fdd3 	bl	c0de6f44 <io_send_response_buffers>
c0de039e:	bd80      	pop	{r7, pc}

c0de03a0 <OUTLINED_FUNCTION_0>:
c0de03a0:	9001      	str	r0, [sp, #4]
c0de03a2:	7920      	ldrb	r0, [r4, #4]
c0de03a4:	9002      	str	r0, [sp, #8]
c0de03a6:	4770      	bx	lr

c0de03a8 <app_main>:
c0de03a8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de03aa:	f006 fdad 	bl	c0de6f08 <io_init>
c0de03ae:	481e      	ldr	r0, [pc, #120]	@ (c0de0428 <app_main+0x80>)
c0de03b0:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de03b4:	b908      	cbnz	r0, c0de03ba <app_main+0x12>
c0de03b6:	f001 fc71 	bl	c0de1c9c <ui_menu_main>
c0de03ba:	481c      	ldr	r0, [pc, #112]	@ (c0de042c <app_main+0x84>)
c0de03bc:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de03c0:	4448      	add	r0, r9
c0de03c2:	f007 fd91 	bl	c0de7ee8 <explicit_bzero>
c0de03c6:	481b      	ldr	r0, [pc, #108]	@ (c0de0434 <app_main+0x8c>)
c0de03c8:	4478      	add	r0, pc
c0de03ca:	f007 fa73 	bl	c0de78b4 <pic>
c0de03ce:	7880      	ldrb	r0, [r0, #2]
c0de03d0:	2801      	cmp	r0, #1
c0de03d2:	d00d      	beq.n	c0de03f0 <app_main+0x48>
c0de03d4:	2001      	movs	r0, #1
c0de03d6:	f88d 0002 	strb.w	r0, [sp, #2]
c0de03da:	2000      	movs	r0, #0
c0de03dc:	f8ad 0000 	strh.w	r0, [sp]
c0de03e0:	4815      	ldr	r0, [pc, #84]	@ (c0de0438 <app_main+0x90>)
c0de03e2:	4478      	add	r0, pc
c0de03e4:	f007 fa66 	bl	c0de78b4 <pic>
c0de03e8:	4669      	mov	r1, sp
c0de03ea:	2203      	movs	r2, #3
c0de03ec:	f007 fa92 	bl	c0de7914 <nvm_write>
c0de03f0:	4d0f      	ldr	r5, [pc, #60]	@ (c0de0430 <app_main+0x88>)
c0de03f2:	ac01      	add	r4, sp, #4
c0de03f4:	f006 fd90 	bl	c0de6f18 <io_recv_command>
c0de03f8:	2800      	cmp	r0, #0
c0de03fa:	d414      	bmi.n	c0de0426 <app_main+0x7e>
c0de03fc:	4602      	mov	r2, r0
c0de03fe:	eb09 0105 	add.w	r1, r9, r5
c0de0402:	4620      	mov	r0, r4
c0de0404:	f006 fe88 	bl	c0de7118 <apdu_parser>
c0de0408:	b130      	cbz	r0, c0de0418 <app_main+0x70>
c0de040a:	4620      	mov	r0, r4
c0de040c:	f7ff fe31 	bl	c0de0072 <apdu_dispatcher>
c0de0410:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0414:	dcee      	bgt.n	c0de03f4 <app_main+0x4c>
c0de0416:	e006      	b.n	c0de0426 <app_main+0x7e>
c0de0418:	2000      	movs	r0, #0
c0de041a:	2100      	movs	r1, #0
c0de041c:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de0420:	f006 fd90 	bl	c0de6f44 <io_send_response_buffers>
c0de0424:	e7e6      	b.n	c0de03f4 <app_main+0x4c>
c0de0426:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0428:	00000b5c 	.word	0x00000b5c
c0de042c:	00000000 	.word	0x00000000
c0de0430:	00000694 	.word	0x00000694
c0de0434:	00009234 	.word	0x00009234
c0de0438:	0000921a 	.word	0x0000921a

c0de043c <handler_get_app_name>:
c0de043c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de043e:	4808      	ldr	r0, [pc, #32]	@ (c0de0460 <handler_get_app_name+0x24>)
c0de0440:	4478      	add	r0, pc
c0de0442:	f007 fa37 	bl	c0de78b4 <pic>
c0de0446:	2100      	movs	r1, #0
c0de0448:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de044c:	9103      	str	r1, [sp, #12]
c0de044e:	2107      	movs	r1, #7
c0de0450:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0454:	a801      	add	r0, sp, #4
c0de0456:	2101      	movs	r1, #1
c0de0458:	f006 fd74 	bl	c0de6f44 <io_send_response_buffers>
c0de045c:	b004      	add	sp, #16
c0de045e:	bd80      	pop	{r7, pc}
c0de0460:	0000808a 	.word	0x0000808a

c0de0464 <handler_get_public_key>:
c0de0464:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0466:	b085      	sub	sp, #20
c0de0468:	4f23      	ldr	r7, [pc, #140]	@ (c0de04f8 <handler_get_public_key+0x94>)
c0de046a:	460c      	mov	r4, r1
c0de046c:	4605      	mov	r5, r0
c0de046e:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0472:	eb09 0607 	add.w	r6, r9, r7
c0de0476:	4630      	mov	r0, r6
c0de0478:	f007 fd36 	bl	c0de7ee8 <explicit_bzero>
c0de047c:	2000      	movs	r0, #0
c0de047e:	f506 713b 	add.w	r1, r6, #748	@ 0x2ec
c0de0482:	f809 0007 	strb.w	r0, [r9, r7]
c0de0486:	f886 02c0 	strb.w	r0, [r6, #704]	@ 0x2c0
c0de048a:	4628      	mov	r0, r5
c0de048c:	f006 fb08 	bl	c0de6aa0 <buffer_read_u8>
c0de0490:	b308      	cbz	r0, c0de04d6 <handler_get_public_key+0x72>
c0de0492:	eb09 0007 	add.w	r0, r9, r7
c0de0496:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de049a:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de049e:	4628      	mov	r0, r5
c0de04a0:	f006 fb51 	bl	c0de6b46 <buffer_read_bip32_path>
c0de04a4:	b1b8      	cbz	r0, c0de04d6 <handler_get_public_key+0x72>
c0de04a6:	eb09 0007 	add.w	r0, r9, r7
c0de04aa:	2100      	movs	r1, #0
c0de04ac:	2205      	movs	r2, #5
c0de04ae:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de04b2:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de04b6:	9104      	str	r1, [sp, #16]
c0de04b8:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de04bc:	f100 0608 	add.w	r6, r0, #8
c0de04c0:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de04c4:	2000      	movs	r0, #0
c0de04c6:	2121      	movs	r1, #33	@ 0x21
c0de04c8:	e9cd 6500 	strd	r6, r5, [sp]
c0de04cc:	f006 fbfc 	bl	c0de6cc8 <bip32_derive_with_seed_get_pubkey_256>
c0de04d0:	b140      	cbz	r0, c0de04e4 <handler_get_public_key+0x80>
c0de04d2:	b280      	uxth	r0, r0
c0de04d4:	e001      	b.n	c0de04da <handler_get_public_key+0x76>
c0de04d6:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de04da:	b005      	add	sp, #20
c0de04dc:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de04e0:	f000 b80c 	b.w	c0de04fc <io_send_sw>
c0de04e4:	2c00      	cmp	r4, #0
c0de04e6:	b005      	add	sp, #20
c0de04e8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de04ec:	bf08      	it	eq
c0de04ee:	f001 b99b 	beq.w	c0de1828 <helper_send_response_pubkey>
c0de04f2:	f001 bcb7 	b.w	c0de1e64 <ui_display_address>
c0de04f6:	bf00      	nop
c0de04f8:	00000000 	.word	0x00000000

c0de04fc <io_send_sw>:
c0de04fc:	b580      	push	{r7, lr}
c0de04fe:	4602      	mov	r2, r0
c0de0500:	2000      	movs	r0, #0
c0de0502:	2100      	movs	r1, #0
c0de0504:	f006 fd1e 	bl	c0de6f44 <io_send_response_buffers>
c0de0508:	bd80      	pop	{r7, pc}

c0de050a <handler_get_version>:
c0de050a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de050c:	2000      	movs	r0, #0
c0de050e:	2101      	movs	r1, #1
c0de0510:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0514:	f88d 0002 	strb.w	r0, [sp, #2]
c0de0518:	f88d 0001 	strb.w	r0, [sp, #1]
c0de051c:	9003      	str	r0, [sp, #12]
c0de051e:	2003      	movs	r0, #3
c0de0520:	f88d 1003 	strb.w	r1, [sp, #3]
c0de0524:	2101      	movs	r1, #1
c0de0526:	9002      	str	r0, [sp, #8]
c0de0528:	f10d 0001 	add.w	r0, sp, #1
c0de052c:	9001      	str	r0, [sp, #4]
c0de052e:	a801      	add	r0, sp, #4
c0de0530:	f006 fd08 	bl	c0de6f44 <io_send_response_buffers>
c0de0534:	b004      	add	sp, #16
c0de0536:	bd80      	pop	{r7, pc}

c0de0538 <handler_sign_tx>:
c0de0538:	b570      	push	{r4, r5, r6, lr}
c0de053a:	b086      	sub	sp, #24
c0de053c:	4e54      	ldr	r6, [pc, #336]	@ (c0de0690 <handler_sign_tx+0x158>)
c0de053e:	4604      	mov	r4, r0
c0de0540:	b191      	cbz	r1, c0de0568 <handler_sign_tx+0x30>
c0de0542:	eb09 0006 	add.w	r0, r9, r6
c0de0546:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de054a:	2801      	cmp	r0, #1
c0de054c:	d12c      	bne.n	c0de05a8 <handler_sign_tx+0x70>
c0de054e:	eb09 0006 	add.w	r0, r9, r6
c0de0552:	4615      	mov	r5, r2
c0de0554:	6862      	ldr	r2, [r4, #4]
c0de0556:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de055a:	1811      	adds	r1, r2, r0
c0de055c:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de0560:	d925      	bls.n	c0de05ae <handler_sign_tx+0x76>
c0de0562:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de0566:	e039      	b.n	c0de05dc <handler_sign_tx+0xa4>
c0de0568:	eb09 0506 	add.w	r5, r9, r6
c0de056c:	f44f 713c 	mov.w	r1, #752	@ 0x2f0
c0de0570:	4628      	mov	r0, r5
c0de0572:	f007 fcb9 	bl	c0de7ee8 <explicit_bzero>
c0de0576:	2000      	movs	r0, #0
c0de0578:	f505 713b 	add.w	r1, r5, #748	@ 0x2ec
c0de057c:	f809 0006 	strb.w	r0, [r9, r6]
c0de0580:	2001      	movs	r0, #1
c0de0582:	f885 02c0 	strb.w	r0, [r5, #704]	@ 0x2c0
c0de0586:	4620      	mov	r0, r4
c0de0588:	f006 fa8a 	bl	c0de6aa0 <buffer_read_u8>
c0de058c:	b148      	cbz	r0, c0de05a2 <handler_sign_tx+0x6a>
c0de058e:	eb09 0006 	add.w	r0, r9, r6
c0de0592:	f890 22ec 	ldrb.w	r2, [r0, #748]	@ 0x2ec
c0de0596:	f500 7131 	add.w	r1, r0, #708	@ 0x2c4
c0de059a:	4620      	mov	r0, r4
c0de059c:	f006 fad3 	bl	c0de6b46 <buffer_read_bip32_path>
c0de05a0:	b9b8      	cbnz	r0, c0de05d2 <handler_sign_tx+0x9a>
c0de05a2:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de05a6:	e019      	b.n	c0de05dc <handler_sign_tx+0xa4>
c0de05a8:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de05ac:	e016      	b.n	c0de05dc <handler_sign_tx+0xa4>
c0de05ae:	eb09 0106 	add.w	r1, r9, r6
c0de05b2:	4408      	add	r0, r1
c0de05b4:	f100 0108 	add.w	r1, r0, #8
c0de05b8:	4620      	mov	r0, r4
c0de05ba:	f006 faee 	bl	c0de6b9a <buffer_move>
c0de05be:	b158      	cbz	r0, c0de05d8 <handler_sign_tx+0xa0>
c0de05c0:	eb09 0106 	add.w	r1, r9, r6
c0de05c4:	6862      	ldr	r2, [r4, #4]
c0de05c6:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de05ca:	4410      	add	r0, r2
c0de05cc:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de05d0:	b14d      	cbz	r5, c0de05e6 <handler_sign_tx+0xae>
c0de05d2:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de05d6:	e001      	b.n	c0de05dc <handler_sign_tx+0xa4>
c0de05d8:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de05dc:	b006      	add	sp, #24
c0de05de:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de05e2:	f000 b85d 	b.w	c0de06a0 <io_send_sw>
c0de05e6:	2100      	movs	r1, #0
c0de05e8:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de05ec:	eb09 0006 	add.w	r0, r9, r6
c0de05f0:	f100 0108 	add.w	r1, r0, #8
c0de05f4:	9101      	str	r1, [sp, #4]
c0de05f6:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de05fa:	a801      	add	r0, sp, #4
c0de05fc:	f001 fa6e 	bl	c0de1adc <transaction_deserialize>
c0de0600:	2801      	cmp	r0, #1
c0de0602:	d114      	bne.n	c0de062e <handler_sign_tx+0xf6>
c0de0604:	2001      	movs	r0, #1
c0de0606:	f809 0006 	strb.w	r0, [r9, r6]
c0de060a:	eb09 0006 	add.w	r0, r9, r6
c0de060e:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de0612:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de0616:	9105      	str	r1, [sp, #20]
c0de0618:	f100 0108 	add.w	r1, r0, #8
c0de061c:	9104      	str	r1, [sp, #16]
c0de061e:	a804      	add	r0, sp, #16
c0de0620:	2101      	movs	r1, #1
c0de0622:	f006 feef 	bl	c0de7404 <cx_keccak_256_hash_iovec>
c0de0626:	b140      	cbz	r0, c0de063a <handler_sign_tx+0x102>
c0de0628:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de062c:	e001      	b.n	c0de0632 <handler_sign_tx+0xfa>
c0de062e:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de0632:	f000 f835 	bl	c0de06a0 <io_send_sw>
c0de0636:	b006      	add	sp, #24
c0de0638:	bd70      	pop	{r4, r5, r6, pc}
c0de063a:	4816      	ldr	r0, [pc, #88]	@ (c0de0694 <handler_sign_tx+0x15c>)
c0de063c:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0640:	b1a0      	cbz	r0, c0de066c <handler_sign_tx+0x134>
c0de0642:	4815      	ldr	r0, [pc, #84]	@ (c0de0698 <handler_sign_tx+0x160>)
c0de0644:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de0648:	b9f9      	cbnz	r1, c0de068a <handler_sign_tx+0x152>
c0de064a:	eb09 0406 	add.w	r4, r9, r6
c0de064e:	2101      	movs	r1, #1
c0de0650:	f809 1000 	strb.w	r1, [r9, r0]
c0de0654:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de0658:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de065a:	9400      	str	r4, [sp, #0]
c0de065c:	f001 f9fe 	bl	c0de1a5c <swap_check_validity>
c0de0660:	b110      	cbz	r0, c0de0668 <handler_sign_tx+0x130>
c0de0662:	2001      	movs	r0, #1
c0de0664:	f001 fac4 	bl	c0de1bf0 <validate_transaction>
c0de0668:	2000      	movs	r0, #0
c0de066a:	e7e4      	b.n	c0de0636 <handler_sign_tx+0xfe>
c0de066c:	eb09 0006 	add.w	r0, r9, r6
c0de0670:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0674:	4909      	ldr	r1, [pc, #36]	@ (c0de069c <handler_sign_tx+0x164>)
c0de0676:	4479      	add	r1, pc
c0de0678:	f007 fc7a 	bl	c0de7f70 <strcmp>
c0de067c:	b110      	cbz	r0, c0de0684 <handler_sign_tx+0x14c>
c0de067e:	f001 fce2 	bl	c0de2046 <ui_display_transaction>
c0de0682:	e7d8      	b.n	c0de0636 <handler_sign_tx+0xfe>
c0de0684:	f001 fcdc 	bl	c0de2040 <ui_display_blind_signed_transaction>
c0de0688:	e7d5      	b.n	c0de0636 <handler_sign_tx+0xfe>
c0de068a:	20ff      	movs	r0, #255	@ 0xff
c0de068c:	f007 fad8 	bl	c0de7c40 <os_sched_exit>
c0de0690:	00000000 	.word	0x00000000
c0de0694:	00000b5c 	.word	0x00000b5c
c0de0698:	00000b5d 	.word	0x00000b5d
c0de069c:	00007b48 	.word	0x00007b48

c0de06a0 <io_send_sw>:
c0de06a0:	b580      	push	{r7, lr}
c0de06a2:	4602      	mov	r2, r0
c0de06a4:	2000      	movs	r0, #0
c0de06a6:	2100      	movs	r1, #0
c0de06a8:	f006 fc4c 	bl	c0de6f44 <io_send_response_buffers>
c0de06ac:	bd80      	pop	{r7, pc}

c0de06ae <handler_cmd_blake2b512>:
c0de06ae:	b510      	push	{r4, lr}
c0de06b0:	b0d0      	sub	sp, #320	@ 0x140
c0de06b2:	4604      	mov	r4, r0
c0de06b4:	6840      	ldr	r0, [r0, #4]
c0de06b6:	2820      	cmp	r0, #32
c0de06b8:	d10b      	bne.n	c0de06d2 <handler_cmd_blake2b512+0x24>
c0de06ba:	6820      	ldr	r0, [r4, #0]
c0de06bc:	a940      	add	r1, sp, #256	@ 0x100
c0de06be:	2220      	movs	r2, #32
c0de06c0:	f001 fcc4 	bl	c0de204c <zkn_prv_hash>
c0de06c4:	b988      	cbnz	r0, c0de06ea <handler_cmd_blake2b512+0x3c>
c0de06c6:	a840      	add	r0, sp, #256	@ 0x100
c0de06c8:	2140      	movs	r1, #64	@ 0x40
c0de06ca:	f000 f817 	bl	c0de06fc <io_send_response_pointer>
c0de06ce:	2000      	movs	r0, #0
c0de06d0:	e00d      	b.n	c0de06ee <handler_cmd_blake2b512+0x40>
c0de06d2:	4668      	mov	r0, sp
c0de06d4:	2109      	movs	r1, #9
c0de06d6:	2240      	movs	r2, #64	@ 0x40
c0de06d8:	f006 fec2 	bl	c0de7460 <cx_hash_init_ex>
c0de06dc:	b928      	cbnz	r0, c0de06ea <handler_cmd_blake2b512+0x3c>
c0de06de:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de06e2:	4668      	mov	r0, sp
c0de06e4:	f006 fec1 	bl	c0de746a <cx_hash_update>
c0de06e8:	b118      	cbz	r0, c0de06f2 <handler_cmd_blake2b512+0x44>
c0de06ea:	f001 f86d 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de06ee:	b050      	add	sp, #320	@ 0x140
c0de06f0:	bd10      	pop	{r4, pc}
c0de06f2:	4668      	mov	r0, sp
c0de06f4:	a940      	add	r1, sp, #256	@ 0x100
c0de06f6:	f006 feae 	bl	c0de7456 <cx_hash_final>
c0de06fa:	e7e3      	b.n	c0de06c4 <handler_cmd_blake2b512+0x16>

c0de06fc <io_send_response_pointer>:
c0de06fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de06fe:	2200      	movs	r2, #0
c0de0700:	ab01      	add	r3, sp, #4
c0de0702:	c307      	stmia	r3!, {r0, r1, r2}
c0de0704:	a801      	add	r0, sp, #4
c0de0706:	2101      	movs	r1, #1
c0de0708:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de070c:	f006 fc1a 	bl	c0de6f44 <io_send_response_buffers>
c0de0710:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de0712 <io_send_sw>:
c0de0712:	b580      	push	{r7, lr}
c0de0714:	4602      	mov	r2, r0
c0de0716:	2000      	movs	r0, #0
c0de0718:	2100      	movs	r1, #0
c0de071a:	f006 fc13 	bl	c0de6f44 <io_send_response_buffers>
c0de071e:	bd80      	pop	{r7, pc}

c0de0720 <handler_cmd_keccakH>:
c0de0720:	b510      	push	{r4, lr}
c0de0722:	b0f2      	sub	sp, #456	@ 0x1c8
c0de0724:	4604      	mov	r4, r0
c0de0726:	4668      	mov	r0, sp
c0de0728:	2106      	movs	r1, #6
c0de072a:	2220      	movs	r2, #32
c0de072c:	f006 fe98 	bl	c0de7460 <cx_hash_init_ex>
c0de0730:	b950      	cbnz	r0, c0de0748 <handler_cmd_keccakH+0x28>
c0de0732:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0736:	4668      	mov	r0, sp
c0de0738:	f006 fe97 	bl	c0de746a <cx_hash_update>
c0de073c:	b920      	cbnz	r0, c0de0748 <handler_cmd_keccakH+0x28>
c0de073e:	4668      	mov	r0, sp
c0de0740:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de0742:	f006 fe88 	bl	c0de7456 <cx_hash_final>
c0de0746:	b118      	cbz	r0, c0de0750 <handler_cmd_keccakH+0x30>
c0de0748:	f001 f83e 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de074c:	b072      	add	sp, #456	@ 0x1c8
c0de074e:	bd10      	pop	{r4, pc}
c0de0750:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de0752:	f001 f854 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de0756:	2000      	movs	r0, #0
c0de0758:	e7f8      	b.n	c0de074c <handler_cmd_keccakH+0x2c>
	...

c0de075c <handler_cmd_bolos_stretch>:
c0de075c:	b510      	push	{r4, lr}
c0de075e:	b0a4      	sub	sp, #144	@ 0x90
c0de0760:	f001 f82e 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0764:	bb90      	cbnz	r0, c0de07cc <handler_cmd_bolos_stretch+0x70>
c0de0766:	ac14      	add	r4, sp, #80	@ 0x50
c0de0768:	491d      	ldr	r1, [pc, #116]	@ (c0de07e0 <handler_cmd_bolos_stretch+0x84>)
c0de076a:	2220      	movs	r2, #32
c0de076c:	4620      	mov	r0, r4
c0de076e:	4479      	add	r1, pc
c0de0770:	f007 fba2 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0774:	a80c      	add	r0, sp, #48	@ 0x30
c0de0776:	491b      	ldr	r1, [pc, #108]	@ (c0de07e4 <handler_cmd_bolos_stretch+0x88>)
c0de0778:	2220      	movs	r2, #32
c0de077a:	4479      	add	r1, pc
c0de077c:	f007 fb9c 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0780:	a804      	add	r0, sp, #16
c0de0782:	4919      	ldr	r1, [pc, #100]	@ (c0de07e8 <handler_cmd_bolos_stretch+0x8c>)
c0de0784:	2220      	movs	r2, #32
c0de0786:	4479      	add	r1, pc
c0de0788:	f007 fb96 	bl	c0de7eb8 <__aeabi_memcpy>
c0de078c:	a803      	add	r0, sp, #12
c0de078e:	2120      	movs	r1, #32
c0de0790:	4622      	mov	r2, r4
c0de0792:	f001 f826 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de0796:	b9c8      	cbnz	r0, c0de07cc <handler_cmd_bolos_stretch+0x70>
c0de0798:	a802      	add	r0, sp, #8
c0de079a:	aa0c      	add	r2, sp, #48	@ 0x30
c0de079c:	f001 f817 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de07a0:	b9a0      	cbnz	r0, c0de07cc <handler_cmd_bolos_stretch+0x70>
c0de07a2:	a801      	add	r0, sp, #4
c0de07a4:	aa04      	add	r2, sp, #16
c0de07a6:	f001 f812 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de07aa:	b978      	cbnz	r0, c0de07cc <handler_cmd_bolos_stretch+0x70>
c0de07ac:	4668      	mov	r0, sp
c0de07ae:	f001 f815 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de07b2:	b958      	cbnz	r0, c0de07cc <handler_cmd_bolos_stretch+0x70>
c0de07b4:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de07b8:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de07bc:	f007 f940 	bl	c0de7a40 <cx_bn_mod_add>
c0de07c0:	b920      	cbnz	r0, c0de07cc <handler_cmd_bolos_stretch+0x70>
c0de07c2:	9800      	ldr	r0, [sp, #0]
c0de07c4:	a91c      	add	r1, sp, #112	@ 0x70
c0de07c6:	f001 f806 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de07ca:	b118      	cbz	r0, c0de07d4 <handler_cmd_bolos_stretch+0x78>
c0de07cc:	f000 fffc 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de07d0:	b024      	add	sp, #144	@ 0x90
c0de07d2:	bd10      	pop	{r4, pc}
c0de07d4:	a81c      	add	r0, sp, #112	@ 0x70
c0de07d6:	f001 f812 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de07da:	2000      	movs	r0, #0
c0de07dc:	e7f8      	b.n	c0de07d0 <handler_cmd_bolos_stretch+0x74>
c0de07de:	bf00      	nop
c0de07e0:	00007ec6 	.word	0x00007ec6
c0de07e4:	00007e3a 	.word	0x00007e3a
c0de07e8:	00007fae 	.word	0x00007fae

c0de07ec <handler_cmd_Poseidon>:
c0de07ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de07f0:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de07f4:	4604      	mov	r4, r0
c0de07f6:	a860      	add	r0, sp, #384	@ 0x180
c0de07f8:	493c      	ldr	r1, [pc, #240]	@ (c0de08ec <handler_cmd_Poseidon+0x100>)
c0de07fa:	22a0      	movs	r2, #160	@ 0xa0
c0de07fc:	4479      	add	r1, pc
c0de07fe:	f007 fb5b 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0802:	f000 ffdd 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0806:	bb60      	cbnz	r0, c0de0862 <handler_cmd_Poseidon+0x76>
c0de0808:	2000      	movs	r0, #0
c0de080a:	a948      	add	r1, sp, #288	@ 0x120
c0de080c:	22ff      	movs	r2, #255	@ 0xff
c0de080e:	2860      	cmp	r0, #96	@ 0x60
c0de0810:	d002      	beq.n	c0de0818 <handler_cmd_Poseidon+0x2c>
c0de0812:	540a      	strb	r2, [r1, r0]
c0de0814:	3001      	adds	r0, #1
c0de0816:	e7fa      	b.n	c0de080e <handler_cmd_Poseidon+0x22>
c0de0818:	4935      	ldr	r1, [pc, #212]	@ (c0de08f0 <handler_cmd_Poseidon+0x104>)
c0de081a:	466d      	mov	r5, sp
c0de081c:	2220      	movs	r2, #32
c0de081e:	4628      	mov	r0, r5
c0de0820:	4479      	add	r1, pc
c0de0822:	f007 fb49 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0826:	a809      	add	r0, sp, #36	@ 0x24
c0de0828:	2120      	movs	r1, #32
c0de082a:	462a      	mov	r2, r5
c0de082c:	f000 ffd9 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de0830:	b9b8      	cbnz	r0, c0de0862 <handler_cmd_Poseidon+0x76>
c0de0832:	a808      	add	r0, sp, #32
c0de0834:	466a      	mov	r2, sp
c0de0836:	f000 ffca 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de083a:	b990      	cbnz	r0, c0de0862 <handler_cmd_Poseidon+0x76>
c0de083c:	a80a      	add	r0, sp, #40	@ 0x28
c0de083e:	2120      	movs	r1, #32
c0de0840:	f007 f944 	bl	c0de7acc <cx_mont_alloc>
c0de0844:	b968      	cbnz	r0, c0de0862 <handler_cmd_Poseidon+0x76>
c0de0846:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de0848:	a80a      	add	r0, sp, #40	@ 0x28
c0de084a:	f007 f949 	bl	c0de7ae0 <cx_mont_init>
c0de084e:	b940      	cbnz	r0, c0de0862 <handler_cmd_Poseidon+0x76>
c0de0850:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de0854:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0856:	2105      	movs	r1, #5
c0de0858:	2205      	movs	r2, #5
c0de085a:	4640      	mov	r0, r8
c0de085c:	f002 feb6 	bl	c0de35cc <Poseidon_alloc_init>
c0de0860:	b128      	cbz	r0, c0de086e <handler_cmd_Poseidon+0x82>
c0de0862:	f000 ffb1 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0866:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de086a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de086e:	2700      	movs	r7, #0
c0de0870:	ae60      	add	r6, sp, #384	@ 0x180
c0de0872:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de0874:	4287      	cmp	r7, r0
c0de0876:	d212      	bcs.n	c0de089e <handler_cmd_Poseidon+0xb2>
c0de0878:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de087c:	4631      	mov	r1, r6
c0de087e:	2220      	movs	r2, #32
c0de0880:	69e8      	ldr	r0, [r5, #28]
c0de0882:	f007 f88d 	bl	c0de79a0 <cx_bn_init>
c0de0886:	2800      	cmp	r0, #0
c0de0888:	d1eb      	bne.n	c0de0862 <handler_cmd_Poseidon+0x76>
c0de088a:	69e8      	ldr	r0, [r5, #28]
c0de088c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de088e:	4601      	mov	r1, r0
c0de0890:	f007 f930 	bl	c0de7af4 <cx_mont_to_montgomery>
c0de0894:	3701      	adds	r7, #1
c0de0896:	3620      	adds	r6, #32
c0de0898:	2800      	cmp	r0, #0
c0de089a:	d0ea      	beq.n	c0de0872 <handler_cmd_Poseidon+0x86>
c0de089c:	e7e1      	b.n	c0de0862 <handler_cmd_Poseidon+0x76>
c0de089e:	aa08      	add	r2, sp, #32
c0de08a0:	4640      	mov	r0, r8
c0de08a2:	2100      	movs	r1, #0
c0de08a4:	2301      	movs	r3, #1
c0de08a6:	f002 fef7 	bl	c0de3698 <Poseidon>
c0de08aa:	6820      	ldr	r0, [r4, #0]
c0de08ac:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de08ae:	7800      	ldrb	r0, [r0, #0]
c0de08b0:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de08b4:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de08b8:	4601      	mov	r1, r0
c0de08ba:	f007 f927 	bl	c0de7b0c <cx_mont_from_montgomery>
c0de08be:	2800      	cmp	r0, #0
c0de08c0:	d1cf      	bne.n	c0de0862 <handler_cmd_Poseidon+0x76>
c0de08c2:	6820      	ldr	r0, [r4, #0]
c0de08c4:	a948      	add	r1, sp, #288	@ 0x120
c0de08c6:	f000 ff86 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de08ca:	2800      	cmp	r0, #0
c0de08cc:	d1c9      	bne.n	c0de0862 <handler_cmd_Poseidon+0x76>
c0de08ce:	a848      	add	r0, sp, #288	@ 0x120
c0de08d0:	2160      	movs	r1, #96	@ 0x60
c0de08d2:	f7ff ff13 	bl	c0de06fc <io_send_response_pointer>
c0de08d6:	a808      	add	r0, sp, #32
c0de08d8:	f007 f84e 	bl	c0de7978 <cx_bn_destroy>
c0de08dc:	2800      	cmp	r0, #0
c0de08de:	d1c0      	bne.n	c0de0862 <handler_cmd_Poseidon+0x76>
c0de08e0:	f007 f82c 	bl	c0de793c <cx_bn_unlock>
c0de08e4:	2800      	cmp	r0, #0
c0de08e6:	d1bc      	bne.n	c0de0862 <handler_cmd_Poseidon+0x76>
c0de08e8:	2000      	movs	r0, #0
c0de08ea:	e7bc      	b.n	c0de0866 <handler_cmd_Poseidon+0x7a>
c0de08ec:	00008018 	.word	0x00008018
c0de08f0:	00007f74 	.word	0x00007f74

c0de08f4 <handler_cmd_Poseidon_ithRC>:
c0de08f4:	b570      	push	{r4, r5, r6, lr}
c0de08f6:	b0d0      	sub	sp, #320	@ 0x140
c0de08f8:	4604      	mov	r4, r0
c0de08fa:	f000 ff61 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de08fe:	bba0      	cbnz	r0, c0de096a <handler_cmd_Poseidon_ithRC+0x76>
c0de0900:	a848      	add	r0, sp, #288	@ 0x120
c0de0902:	491d      	ldr	r1, [pc, #116]	@ (c0de0978 <handler_cmd_Poseidon_ithRC+0x84>)
c0de0904:	2220      	movs	r2, #32
c0de0906:	4479      	add	r1, pc
c0de0908:	f007 fad6 	bl	c0de7eb8 <__aeabi_memcpy>
c0de090c:	ad01      	add	r5, sp, #4
c0de090e:	491b      	ldr	r1, [pc, #108]	@ (c0de097c <handler_cmd_Poseidon_ithRC+0x88>)
c0de0910:	2220      	movs	r2, #32
c0de0912:	4628      	mov	r0, r5
c0de0914:	4479      	add	r1, pc
c0de0916:	f007 facf 	bl	c0de7eb8 <__aeabi_memcpy>
c0de091a:	a809      	add	r0, sp, #36	@ 0x24
c0de091c:	2120      	movs	r1, #32
c0de091e:	462a      	mov	r2, r5
c0de0920:	f000 ff5f 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de0924:	bb08      	cbnz	r0, c0de096a <handler_cmd_Poseidon_ithRC+0x76>
c0de0926:	a80a      	add	r0, sp, #40	@ 0x28
c0de0928:	2120      	movs	r1, #32
c0de092a:	f007 f8cf 	bl	c0de7acc <cx_mont_alloc>
c0de092e:	b9e0      	cbnz	r0, c0de096a <handler_cmd_Poseidon_ithRC+0x76>
c0de0930:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de0932:	a80a      	add	r0, sp, #40	@ 0x28
c0de0934:	f007 f8d4 	bl	c0de7ae0 <cx_mont_init>
c0de0938:	b9b8      	cbnz	r0, c0de096a <handler_cmd_Poseidon_ithRC+0x76>
c0de093a:	a80c      	add	r0, sp, #48	@ 0x30
c0de093c:	ab0a      	add	r3, sp, #40	@ 0x28
c0de093e:	2105      	movs	r1, #5
c0de0940:	2205      	movs	r2, #5
c0de0942:	f002 fe43 	bl	c0de35cc <Poseidon_alloc_init>
c0de0946:	b980      	cbnz	r0, c0de096a <handler_cmd_Poseidon_ithRC+0x76>
c0de0948:	6820      	ldr	r0, [r4, #0]
c0de094a:	7806      	ldrb	r6, [r0, #0]
c0de094c:	ac0c      	add	r4, sp, #48	@ 0x30
c0de094e:	ad48      	add	r5, sp, #288	@ 0x120
c0de0950:	b12e      	cbz	r6, c0de095e <handler_cmd_Poseidon_ithRC+0x6a>
c0de0952:	4620      	mov	r0, r4
c0de0954:	4629      	mov	r1, r5
c0de0956:	f002 fe35 	bl	c0de35c4 <Poseidon_getNext_RC>
c0de095a:	3e01      	subs	r6, #1
c0de095c:	e7f8      	b.n	c0de0950 <handler_cmd_Poseidon_ithRC+0x5c>
c0de095e:	a848      	add	r0, sp, #288	@ 0x120
c0de0960:	f000 ff4d 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de0964:	f006 ffea 	bl	c0de793c <cx_bn_unlock>
c0de0968:	b118      	cbz	r0, c0de0972 <handler_cmd_Poseidon_ithRC+0x7e>
c0de096a:	f000 ff2d 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de096e:	b050      	add	sp, #320	@ 0x140
c0de0970:	bd70      	pop	{r4, r5, r6, pc}
c0de0972:	2000      	movs	r0, #0
c0de0974:	e7fb      	b.n	c0de096e <handler_cmd_Poseidon_ithRC+0x7a>
c0de0976:	bf00      	nop
c0de0978:	00007c6e 	.word	0x00007c6e
c0de097c:	00007e80 	.word	0x00007e80

c0de0980 <handler_cmd_tEddsaPoseidon_Kpub>:
c0de0980:	b5b0      	push	{r4, r5, r7, lr}
c0de0982:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de0986:	6801      	ldr	r1, [r0, #0]
c0de0988:	2200      	movs	r2, #0
c0de098a:	23ff      	movs	r3, #255	@ 0xff
c0de098c:	780d      	ldrb	r5, [r1, #0]
c0de098e:	ac5a      	add	r4, sp, #360	@ 0x168
c0de0990:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de0994:	d002      	beq.n	c0de099c <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de0996:	54a3      	strb	r3, [r4, r2]
c0de0998:	3201      	adds	r2, #1
c0de099a:	e7f9      	b.n	c0de0990 <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de099c:	6840      	ldr	r0, [r0, #4]
c0de099e:	3101      	adds	r1, #1
c0de09a0:	aa1a      	add	r2, sp, #104	@ 0x68
c0de09a2:	3801      	subs	r0, #1
c0de09a4:	b128      	cbz	r0, c0de09b2 <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de09a6:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de09aa:	3801      	subs	r0, #1
c0de09ac:	f802 3b01 	strb.w	r3, [r2], #1
c0de09b0:	e7f8      	b.n	c0de09a4 <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de09b2:	f000 ff05 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de09b6:	b9e8      	cbnz	r0, c0de09f4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09b8:	a804      	add	r0, sp, #16
c0de09ba:	f000 ff2a 	bl	c0de1812 <OUTLINED_FUNCTION_11>
c0de09be:	b9c8      	cbnz	r0, c0de09f4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09c0:	a804      	add	r0, sp, #16
c0de09c2:	a901      	add	r1, sp, #4
c0de09c4:	f002 f8e6 	bl	c0de2b94 <tEdwards_alloc>
c0de09c8:	b9a0      	cbnz	r0, c0de09f4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09ca:	a804      	add	r0, sp, #16
c0de09cc:	a91a      	add	r1, sp, #104	@ 0x68
c0de09ce:	aa01      	add	r2, sp, #4
c0de09d0:	f001 fb72 	bl	c0de20b8 <zkn_prv2pub>
c0de09d4:	b970      	cbnz	r0, c0de09f4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09d6:	a804      	add	r0, sp, #16
c0de09d8:	f104 0320 	add.w	r3, r4, #32
c0de09dc:	a901      	add	r1, sp, #4
c0de09de:	f000 ff15 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de09e2:	b938      	cbnz	r0, c0de09f4 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de09e4:	9804      	ldr	r0, [sp, #16]
c0de09e6:	0041      	lsls	r1, r0, #1
c0de09e8:	a85a      	add	r0, sp, #360	@ 0x168
c0de09ea:	f7ff fe87 	bl	c0de06fc <io_send_response_pointer>
c0de09ee:	f006 ffa5 	bl	c0de793c <cx_bn_unlock>
c0de09f2:	b120      	cbz	r0, c0de09fe <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de09f4:	f000 fee8 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de09f8:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de09fc:	bdb0      	pop	{r4, r5, r7, pc}
c0de09fe:	2000      	movs	r0, #0
c0de0a00:	e7fa      	b.n	c0de09f8 <handler_cmd_tEddsaPoseidon_Kpub+0x78>

c0de0a02 <handler_cmd_tEddsaPoseidon_Sign>:
c0de0a02:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0a04:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de0a08:	4606      	mov	r6, r0
c0de0a0a:	6800      	ldr	r0, [r0, #0]
c0de0a0c:	2100      	movs	r1, #0
c0de0a0e:	22ff      	movs	r2, #255	@ 0xff
c0de0a10:	7805      	ldrb	r5, [r0, #0]
c0de0a12:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de0a14:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de0a18:	d002      	beq.n	c0de0a20 <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de0a1a:	5462      	strb	r2, [r4, r1]
c0de0a1c:	3101      	adds	r1, #1
c0de0a1e:	e7f9      	b.n	c0de0a14 <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de0a20:	6871      	ldr	r1, [r6, #4]
c0de0a22:	3001      	adds	r0, #1
c0de0a24:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0a26:	3901      	subs	r1, #1
c0de0a28:	b129      	cbz	r1, c0de0a36 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de0a2a:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de0a2e:	3901      	subs	r1, #1
c0de0a30:	f802 3b01 	strb.w	r3, [r2], #1
c0de0a34:	e7f8      	b.n	c0de0a28 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de0a36:	f000 fec3 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0a3a:	bba0      	cbnz	r0, c0de0aa6 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a3c:	6830      	ldr	r0, [r6, #0]
c0de0a3e:	aa0a      	add	r2, sp, #40	@ 0x28
c0de0a40:	2100      	movs	r1, #0
c0de0a42:	ab02      	add	r3, sp, #8
c0de0a44:	2920      	cmp	r1, #32
c0de0a46:	d007      	beq.n	c0de0a58 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de0a48:	1846      	adds	r6, r0, r1
c0de0a4a:	7877      	ldrb	r7, [r6, #1]
c0de0a4c:	5457      	strb	r7, [r2, r1]
c0de0a4e:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de0a52:	545e      	strb	r6, [r3, r1]
c0de0a54:	3101      	adds	r1, #1
c0de0a56:	e7f5      	b.n	c0de0a44 <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de0a58:	a815      	add	r0, sp, #84	@ 0x54
c0de0a5a:	f000 feda 	bl	c0de1812 <OUTLINED_FUNCTION_11>
c0de0a5e:	bb10      	cbnz	r0, c0de0aa6 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a60:	a815      	add	r0, sp, #84	@ 0x54
c0de0a62:	a912      	add	r1, sp, #72	@ 0x48
c0de0a64:	f002 f896 	bl	c0de2b94 <tEdwards_alloc>
c0de0a68:	b9e8      	cbnz	r0, c0de0aa6 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a6a:	a815      	add	r0, sp, #84	@ 0x54
c0de0a6c:	a92b      	add	r1, sp, #172	@ 0xac
c0de0a6e:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a70:	f001 fb22 	bl	c0de20b8 <zkn_prv2pub>
c0de0a74:	b9b8      	cbnz	r0, c0de0aa6 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a76:	a815      	add	r0, sp, #84	@ 0x54
c0de0a78:	f104 0320 	add.w	r3, r4, #32
c0de0a7c:	a912      	add	r1, sp, #72	@ 0x48
c0de0a7e:	f000 fec5 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de0a82:	b980      	cbnz	r0, c0de0aa6 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a84:	2020      	movs	r0, #32
c0de0a86:	e9cd 0400 	strd	r0, r4, [sp]
c0de0a8a:	a815      	add	r0, sp, #84	@ 0x54
c0de0a8c:	a90a      	add	r1, sp, #40	@ 0x28
c0de0a8e:	aa12      	add	r2, sp, #72	@ 0x48
c0de0a90:	ab02      	add	r3, sp, #8
c0de0a92:	f001 fb39 	bl	c0de2108 <EddsaPoseidon_Sign_final>
c0de0a96:	b930      	cbnz	r0, c0de0aa6 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a98:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a9a:	2160      	movs	r1, #96	@ 0x60
c0de0a9c:	f7ff fe2e 	bl	c0de06fc <io_send_response_pointer>
c0de0aa0:	f006 ff4c 	bl	c0de793c <cx_bn_unlock>
c0de0aa4:	b120      	cbz	r0, c0de0ab0 <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0aa6:	f000 fe8f 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0aaa:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de0aae:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0ab0:	2000      	movs	r0, #0
c0de0ab2:	e7fa      	b.n	c0de0aaa <handler_cmd_tEddsaPoseidon_Sign+0xa8>

c0de0ab4 <handler_cmd_tEddsaPoseidon>:
c0de0ab4:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0ab8:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0aba:	4605      	mov	r5, r0
c0de0abc:	6800      	ldr	r0, [r0, #0]
c0de0abe:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de0ac2:	21ff      	movs	r1, #255	@ 0xff
c0de0ac4:	7806      	ldrb	r6, [r0, #0]
c0de0ac6:	2000      	movs	r0, #0
c0de0ac8:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0acc:	d002      	beq.n	c0de0ad4 <handler_cmd_tEddsaPoseidon+0x20>
c0de0ace:	5421      	strb	r1, [r4, r0]
c0de0ad0:	3001      	adds	r0, #1
c0de0ad2:	e7f9      	b.n	c0de0ac8 <handler_cmd_tEddsaPoseidon+0x14>
c0de0ad4:	f000 fe74 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0ad8:	2800      	cmp	r0, #0
c0de0ada:	d154      	bne.n	c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0adc:	af14      	add	r7, sp, #80	@ 0x50
c0de0ade:	4631      	mov	r1, r6
c0de0ae0:	4638      	mov	r0, r7
c0de0ae2:	f002 f9d7 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de0ae6:	2800      	cmp	r0, #0
c0de0ae8:	d14d      	bne.n	c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aea:	f107 060c 	add.w	r6, r7, #12
c0de0aee:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0af2:	4638      	mov	r0, r7
c0de0af4:	4631      	mov	r1, r6
c0de0af6:	f002 f976 	bl	c0de2de6 <tEdwards_IsOnCurve>
c0de0afa:	2800      	cmp	r0, #0
c0de0afc:	d143      	bne.n	c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0afe:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0b02:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0b06:	2901      	cmp	r1, #1
c0de0b08:	d13d      	bne.n	c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b0a:	4922      	ldr	r1, [pc, #136]	@ (c0de0b94 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0b0c:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0b10:	2220      	movs	r2, #32
c0de0b12:	4650      	mov	r0, sl
c0de0b14:	4479      	add	r1, pc
c0de0b16:	f007 f9cf 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0b1a:	af01      	add	r7, sp, #4
c0de0b1c:	491e      	ldr	r1, [pc, #120]	@ (c0de0b98 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0b1e:	2220      	movs	r2, #32
c0de0b20:	4638      	mov	r0, r7
c0de0b22:	4479      	add	r1, pc
c0de0b24:	f007 f9c8 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0b28:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0b2c:	a814      	add	r0, sp, #80	@ 0x50
c0de0b2e:	4651      	mov	r1, sl
c0de0b30:	463a      	mov	r2, r7
c0de0b32:	4643      	mov	r3, r8
c0de0b34:	f002 fb9f 	bl	c0de3276 <tEdwards_alloc_init>
c0de0b38:	bb28      	cbnz	r0, c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b3a:	a814      	add	r0, sp, #80	@ 0x50
c0de0b3c:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0b40:	4631      	mov	r1, r6
c0de0b42:	f002 f950 	bl	c0de2de6 <tEdwards_IsOnCurve>
c0de0b46:	b9f0      	cbnz	r0, c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b48:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0b4c:	2801      	cmp	r0, #1
c0de0b4e:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0b52:	d118      	bne.n	c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b54:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0b58:	f8cd 8000 	str.w	r8, [sp]
c0de0b5c:	1c42      	adds	r2, r0, #1
c0de0b5e:	1e4b      	subs	r3, r1, #1
c0de0b60:	a814      	add	r0, sp, #80	@ 0x50
c0de0b62:	4631      	mov	r1, r6
c0de0b64:	f002 fc0c 	bl	c0de3380 <tEdwards_scalarMul>
c0de0b68:	b968      	cbnz	r0, c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b6a:	a814      	add	r0, sp, #80	@ 0x50
c0de0b6c:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0b70:	a911      	add	r1, sp, #68	@ 0x44
c0de0b72:	f000 fe4b 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de0b76:	b930      	cbnz	r0, c0de0b86 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0b78:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0b7c:	f000 fe3b 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0b80:	f006 fedc 	bl	c0de793c <cx_bn_unlock>
c0de0b84:	b120      	cbz	r0, c0de0b90 <handler_cmd_tEddsaPoseidon+0xdc>
c0de0b86:	f000 fe1f 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0b8a:	b06b      	add	sp, #428	@ 0x1ac
c0de0b8c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0b90:	2000      	movs	r0, #0
c0de0b92:	e7fa      	b.n	c0de0b8a <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b94:	00007ca0 	.word	0x00007ca0
c0de0b98:	00007cb2 	.word	0x00007cb2

c0de0b9c <handler_cmd_tEdwards>:
c0de0b9c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0b9e:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0ba0:	4605      	mov	r5, r0
c0de0ba2:	6840      	ldr	r0, [r0, #4]
c0de0ba4:	2841      	cmp	r0, #65	@ 0x41
c0de0ba6:	d801      	bhi.n	c0de0bac <handler_cmd_tEdwards+0x10>
c0de0ba8:	2802      	cmp	r0, #2
c0de0baa:	d202      	bcs.n	c0de0bb2 <handler_cmd_tEdwards+0x16>
c0de0bac:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0bb0:	e015      	b.n	c0de0bde <handler_cmd_tEdwards+0x42>
c0de0bb2:	6828      	ldr	r0, [r5, #0]
c0de0bb4:	21ff      	movs	r1, #255	@ 0xff
c0de0bb6:	7806      	ldrb	r6, [r0, #0]
c0de0bb8:	2000      	movs	r0, #0
c0de0bba:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0bbc:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0bc0:	d002      	beq.n	c0de0bc8 <handler_cmd_tEdwards+0x2c>
c0de0bc2:	5421      	strb	r1, [r4, r0]
c0de0bc4:	3001      	adds	r0, #1
c0de0bc6:	e7f9      	b.n	c0de0bbc <handler_cmd_tEdwards+0x20>
c0de0bc8:	f000 fdfa 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0bcc:	b920      	cbnz	r0, c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0bce:	a819      	add	r0, sp, #100	@ 0x64
c0de0bd0:	4631      	mov	r1, r6
c0de0bd2:	f002 f95f 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de0bd6:	b120      	cbz	r0, c0de0be2 <handler_cmd_tEdwards+0x46>
c0de0bd8:	b280      	uxth	r0, r0
c0de0bda:	f7ff fd9a 	bl	c0de0712 <io_send_sw>
c0de0bde:	b06f      	add	sp, #444	@ 0x1bc
c0de0be0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0be2:	2e02      	cmp	r6, #2
c0de0be4:	d00c      	beq.n	c0de0c00 <handler_cmd_tEdwards+0x64>
c0de0be6:	2e01      	cmp	r6, #1
c0de0be8:	d128      	bne.n	c0de0c3c <handler_cmd_tEdwards+0xa0>
c0de0bea:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0bec:	4942      	ldr	r1, [pc, #264]	@ (c0de0cf8 <handler_cmd_tEdwards+0x15c>)
c0de0bee:	2220      	movs	r2, #32
c0de0bf0:	4630      	mov	r0, r6
c0de0bf2:	4479      	add	r1, pc
c0de0bf4:	f007 f960 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0bf8:	af03      	add	r7, sp, #12
c0de0bfa:	4940      	ldr	r1, [pc, #256]	@ (c0de0cfc <handler_cmd_tEdwards+0x160>)
c0de0bfc:	4479      	add	r1, pc
c0de0bfe:	e009      	b.n	c0de0c14 <handler_cmd_tEdwards+0x78>
c0de0c00:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0c02:	493f      	ldr	r1, [pc, #252]	@ (c0de0d00 <handler_cmd_tEdwards+0x164>)
c0de0c04:	2220      	movs	r2, #32
c0de0c06:	4630      	mov	r0, r6
c0de0c08:	4479      	add	r1, pc
c0de0c0a:	f007 f955 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0c0e:	af03      	add	r7, sp, #12
c0de0c10:	493c      	ldr	r1, [pc, #240]	@ (c0de0d04 <handler_cmd_tEdwards+0x168>)
c0de0c12:	4479      	add	r1, pc
c0de0c14:	4638      	mov	r0, r7
c0de0c16:	2220      	movs	r2, #32
c0de0c18:	f007 f94e 	bl	c0de7eb8 <__aeabi_memcpy>
c0de0c1c:	a819      	add	r0, sp, #100	@ 0x64
c0de0c1e:	ab16      	add	r3, sp, #88	@ 0x58
c0de0c20:	4631      	mov	r1, r6
c0de0c22:	463a      	mov	r2, r7
c0de0c24:	f002 fb27 	bl	c0de3276 <tEdwards_alloc_init>
c0de0c28:	2800      	cmp	r0, #0
c0de0c2a:	d1d5      	bne.n	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0c2c:	a819      	add	r0, sp, #100	@ 0x64
c0de0c2e:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0c30:	aa03      	add	r2, sp, #12
c0de0c32:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0c34:	f002 fb1f 	bl	c0de3276 <tEdwards_alloc_init>
c0de0c38:	2800      	cmp	r0, #0
c0de0c3a:	d1cd      	bne.n	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0c3c:	2000      	movs	r0, #0
c0de0c3e:	f10d 020b 	add.w	r2, sp, #11
c0de0c42:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0c46:	a819      	add	r0, sp, #100	@ 0x64
c0de0c48:	a916      	add	r1, sp, #88	@ 0x58
c0de0c4a:	f002 f8cc 	bl	c0de2de6 <tEdwards_IsOnCurve>
c0de0c4e:	2800      	cmp	r0, #0
c0de0c50:	d1c2      	bne.n	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0c52:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c56:	2801      	cmp	r0, #1
c0de0c58:	d142      	bne.n	c0de0ce0 <handler_cmd_tEdwards+0x144>
c0de0c5a:	a819      	add	r0, sp, #100	@ 0x64
c0de0c5c:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0c5e:	f10d 020b 	add.w	r2, sp, #11
c0de0c62:	4631      	mov	r1, r6
c0de0c64:	f002 f8bf 	bl	c0de2de6 <tEdwards_IsOnCurve>
c0de0c68:	2800      	cmp	r0, #0
c0de0c6a:	d1b5      	bne.n	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0c6c:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c70:	2801      	cmp	r0, #1
c0de0c72:	d138      	bne.n	c0de0ce6 <handler_cmd_tEdwards+0x14a>
c0de0c74:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0c76:	f10d 010b 	add.w	r1, sp, #11
c0de0c7a:	f006 ff1d 	bl	c0de7ab8 <cx_bn_is_prime>
c0de0c7e:	2800      	cmp	r0, #0
c0de0c80:	d1aa      	bne.n	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0c82:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c86:	2801      	cmp	r0, #1
c0de0c88:	d130      	bne.n	c0de0cec <handler_cmd_tEdwards+0x150>
c0de0c8a:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0c8c:	f10d 010b 	add.w	r1, sp, #11
c0de0c90:	f006 ff12 	bl	c0de7ab8 <cx_bn_is_prime>
c0de0c94:	2800      	cmp	r0, #0
c0de0c96:	d19f      	bne.n	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0c98:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c9c:	2801      	cmp	r0, #1
c0de0c9e:	d128      	bne.n	c0de0cf2 <handler_cmd_tEdwards+0x156>
c0de0ca0:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0ca4:	9600      	str	r6, [sp, #0]
c0de0ca6:	1c42      	adds	r2, r0, #1
c0de0ca8:	1e4b      	subs	r3, r1, #1
c0de0caa:	a819      	add	r0, sp, #100	@ 0x64
c0de0cac:	a916      	add	r1, sp, #88	@ 0x58
c0de0cae:	f002 fb67 	bl	c0de3380 <tEdwards_scalarMul>
c0de0cb2:	2800      	cmp	r0, #0
c0de0cb4:	d190      	bne.n	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0cb6:	a819      	add	r0, sp, #100	@ 0x64
c0de0cb8:	f104 0320 	add.w	r3, r4, #32
c0de0cbc:	a913      	add	r1, sp, #76	@ 0x4c
c0de0cbe:	f000 fda5 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de0cc2:	2800      	cmp	r0, #0
c0de0cc4:	f47f af88 	bne.w	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0cc8:	f006 fe38 	bl	c0de793c <cx_bn_unlock>
c0de0ccc:	2800      	cmp	r0, #0
c0de0cce:	f47f af83 	bne.w	c0de0bd8 <handler_cmd_tEdwards+0x3c>
c0de0cd2:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0cd4:	0041      	lsls	r1, r0, #1
c0de0cd6:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0cd8:	f7ff fd10 	bl	c0de06fc <io_send_response_pointer>
c0de0cdc:	2000      	movs	r0, #0
c0de0cde:	e77e      	b.n	c0de0bde <handler_cmd_tEdwards+0x42>
c0de0ce0:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0ce4:	e779      	b.n	c0de0bda <handler_cmd_tEdwards+0x3e>
c0de0ce6:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0cea:	e776      	b.n	c0de0bda <handler_cmd_tEdwards+0x3e>
c0de0cec:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0cf0:	e773      	b.n	c0de0bda <handler_cmd_tEdwards+0x3e>
c0de0cf2:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0cf6:	e770      	b.n	c0de0bda <handler_cmd_tEdwards+0x3e>
c0de0cf8:	000079e2 	.word	0x000079e2
c0de0cfc:	00007a58 	.word	0x00007a58
c0de0d00:	000079ec 	.word	0x000079ec
c0de0d04:	00007922 	.word	0x00007922

c0de0d08 <handler_cmd_Interpolate>:
c0de0d08:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0d0c:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0d10:	4605      	mov	r5, r0
c0de0d12:	6800      	ldr	r0, [r0, #0]
c0de0d14:	22ff      	movs	r2, #255	@ 0xff
c0de0d16:	7804      	ldrb	r4, [r0, #0]
c0de0d18:	2000      	movs	r0, #0
c0de0d1a:	a944      	add	r1, sp, #272	@ 0x110
c0de0d1c:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0d20:	d002      	beq.n	c0de0d28 <handler_cmd_Interpolate+0x20>
c0de0d22:	540a      	strb	r2, [r1, r0]
c0de0d24:	3001      	adds	r0, #1
c0de0d26:	e7f9      	b.n	c0de0d1c <handler_cmd_Interpolate+0x14>
c0de0d28:	f000 fd4a 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0d2c:	bb28      	cbnz	r0, c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0d2e:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0d32:	4621      	mov	r1, r4
c0de0d34:	4640      	mov	r0, r8
c0de0d36:	f002 f8ad 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de0d3a:	b9f0      	cbnz	r0, c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0d3c:	a827      	add	r0, sp, #156	@ 0x9c
c0de0d3e:	f000 fd4d 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de0d42:	b9d0      	cbnz	r0, c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0d44:	6828      	ldr	r0, [r5, #0]
c0de0d46:	2100      	movs	r1, #0
c0de0d48:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d4a:	3001      	adds	r0, #1
c0de0d4c:	2960      	cmp	r1, #96	@ 0x60
c0de0d4e:	d003      	beq.n	c0de0d58 <handler_cmd_Interpolate+0x50>
c0de0d50:	5c43      	ldrb	r3, [r0, r1]
c0de0d52:	5453      	strb	r3, [r2, r1]
c0de0d54:	3101      	adds	r1, #1
c0de0d56:	e7f9      	b.n	c0de0d4c <handler_cmd_Interpolate+0x44>
c0de0d58:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0d5a:	2100      	movs	r1, #0
c0de0d5c:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d5e:	1d0c      	adds	r4, r1, #4
c0de0d60:	2c10      	cmp	r4, #16
c0de0d62:	d010      	beq.n	c0de0d86 <handler_cmd_Interpolate+0x7e>
c0de0d64:	1878      	adds	r0, r7, r1
c0de0d66:	2120      	movs	r1, #32
c0de0d68:	2320      	movs	r3, #32
c0de0d6a:	f102 0520 	add.w	r5, r2, #32
c0de0d6e:	f006 fdf7 	bl	c0de7960 <cx_bn_alloc_init>
c0de0d72:	2800      	cmp	r0, #0
c0de0d74:	462a      	mov	r2, r5
c0de0d76:	4621      	mov	r1, r4
c0de0d78:	d0f1      	beq.n	c0de0d5e <handler_cmd_Interpolate+0x56>
c0de0d7a:	f000 fd25 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0d7e:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0d82:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0d86:	f108 000c 	add.w	r0, r8, #12
c0de0d8a:	f04f 0a00 	mov.w	sl, #0
c0de0d8e:	2601      	movs	r6, #1
c0de0d90:	f10d 0b0c 	add.w	fp, sp, #12
c0de0d94:	9001      	str	r0, [sp, #4]
c0de0d96:	ad44      	add	r5, sp, #272	@ 0x110
c0de0d98:	f1ba 0f0c 	cmp.w	sl, #12
c0de0d9c:	d03b      	beq.n	c0de0e16 <handler_cmd_Interpolate+0x10e>
c0de0d9e:	a828      	add	r0, sp, #160	@ 0xa0
c0de0da0:	2120      	movs	r1, #32
c0de0da2:	eb00 040a 	add.w	r4, r0, sl
c0de0da6:	4620      	mov	r0, r4
c0de0da8:	f006 fdd0 	bl	c0de794c <cx_bn_alloc>
c0de0dac:	2800      	cmp	r0, #0
c0de0dae:	d1e4      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0db0:	6820      	ldr	r0, [r4, #0]
c0de0db2:	4631      	mov	r1, r6
c0de0db4:	f006 fe0a 	bl	c0de79cc <cx_bn_set_u32>
c0de0db8:	2800      	cmp	r0, #0
c0de0dba:	d1de      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0dbc:	4640      	mov	r0, r8
c0de0dbe:	4659      	mov	r1, fp
c0de0dc0:	f001 fee8 	bl	c0de2b94 <tEdwards_alloc>
c0de0dc4:	2800      	cmp	r0, #0
c0de0dc6:	d1d8      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0dc8:	9602      	str	r6, [sp, #8]
c0de0dca:	eb07 060a 	add.w	r6, r7, sl
c0de0dce:	9901      	ldr	r1, [sp, #4]
c0de0dd0:	4640      	mov	r0, r8
c0de0dd2:	465b      	mov	r3, fp
c0de0dd4:	4632      	mov	r2, r6
c0de0dd6:	f002 fa6d 	bl	c0de32b4 <tEdwards_scalarMul_bn>
c0de0dda:	2800      	cmp	r0, #0
c0de0ddc:	d1cd      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0dde:	6820      	ldr	r0, [r4, #0]
c0de0de0:	4629      	mov	r1, r5
c0de0de2:	f000 fcf8 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0de6:	2800      	cmp	r0, #0
c0de0de8:	d1c7      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0dea:	6830      	ldr	r0, [r6, #0]
c0de0dec:	f105 0120 	add.w	r1, r5, #32
c0de0df0:	f000 fcf1 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0df4:	2800      	cmp	r0, #0
c0de0df6:	d1c0      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0df8:	4640      	mov	r0, r8
c0de0dfa:	4659      	mov	r1, fp
c0de0dfc:	f002 f9fb 	bl	c0de31f6 <tEdwards_normalize>
c0de0e00:	9e02      	ldr	r6, [sp, #8]
c0de0e02:	3540      	adds	r5, #64	@ 0x40
c0de0e04:	f10b 0b0c 	add.w	fp, fp, #12
c0de0e08:	f10a 0a04 	add.w	sl, sl, #4
c0de0e0c:	af2b      	add	r7, sp, #172	@ 0xac
c0de0e0e:	3601      	adds	r6, #1
c0de0e10:	2800      	cmp	r0, #0
c0de0e12:	d0c1      	beq.n	c0de0d98 <handler_cmd_Interpolate+0x90>
c0de0e14:	e7b1      	b.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0e16:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0e18:	2303      	movs	r3, #3
c0de0e1a:	9000      	str	r0, [sp, #0]
c0de0e1c:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e1e:	a928      	add	r1, sp, #160	@ 0xa0
c0de0e20:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0e22:	f001 fb28 	bl	c0de2476 <zkn_frost_interpolate_secrets>
c0de0e26:	2800      	cmp	r0, #0
c0de0e28:	d1a7      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0e2a:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0e2c:	a944      	add	r1, sp, #272	@ 0x110
c0de0e2e:	2220      	movs	r2, #32
c0de0e30:	31c0      	adds	r1, #192	@ 0xc0
c0de0e32:	f006 fdd5 	bl	c0de79e0 <cx_bn_export>
c0de0e36:	2800      	cmp	r0, #0
c0de0e38:	d19f      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0e3a:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e3c:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0e3e:	ab03      	add	r3, sp, #12
c0de0e40:	9901      	ldr	r1, [sp, #4]
c0de0e42:	f002 fa37 	bl	c0de32b4 <tEdwards_scalarMul_bn>
c0de0e46:	2800      	cmp	r0, #0
c0de0e48:	d197      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0e4a:	a844      	add	r0, sp, #272	@ 0x110
c0de0e4c:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0e50:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0e52:	a903      	add	r1, sp, #12
c0de0e54:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0e56:	f002 f9a8 	bl	c0de31aa <tEdwards_export>
c0de0e5a:	2800      	cmp	r0, #0
c0de0e5c:	d18d      	bne.n	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0e5e:	a844      	add	r0, sp, #272	@ 0x110
c0de0e60:	f000 fcc9 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0e64:	f006 fd6a 	bl	c0de793c <cx_bn_unlock>
c0de0e68:	2800      	cmp	r0, #0
c0de0e6a:	f47f af86 	bne.w	c0de0d7a <handler_cmd_Interpolate+0x72>
c0de0e6e:	2000      	movs	r0, #0
c0de0e70:	e785      	b.n	c0de0d7e <handler_cmd_Interpolate+0x76>

c0de0e72 <handler_cmd_Split>:
c0de0e72:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0e76:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0e7a:	4604      	mov	r4, r0
c0de0e7c:	6800      	ldr	r0, [r0, #0]
c0de0e7e:	22ff      	movs	r2, #255	@ 0xff
c0de0e80:	7805      	ldrb	r5, [r0, #0]
c0de0e82:	2000      	movs	r0, #0
c0de0e84:	a948      	add	r1, sp, #288	@ 0x120
c0de0e86:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0e8a:	d002      	beq.n	c0de0e92 <handler_cmd_Split+0x20>
c0de0e8c:	540a      	strb	r2, [r1, r0]
c0de0e8e:	3001      	adds	r0, #1
c0de0e90:	e7f9      	b.n	c0de0e86 <handler_cmd_Split+0x14>
c0de0e92:	f000 fc95 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de0e96:	bb90      	cbnz	r0, c0de0efe <handler_cmd_Split+0x8c>
c0de0e98:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e9a:	f000 fcba 	bl	c0de1812 <OUTLINED_FUNCTION_11>
c0de0e9e:	bb70      	cbnz	r0, c0de0efe <handler_cmd_Split+0x8c>
c0de0ea0:	6820      	ldr	r0, [r4, #0]
c0de0ea2:	2200      	movs	r2, #0
c0de0ea4:	a91a      	add	r1, sp, #104	@ 0x68
c0de0ea6:	3002      	adds	r0, #2
c0de0ea8:	2a20      	cmp	r2, #32
c0de0eaa:	d003      	beq.n	c0de0eb4 <handler_cmd_Split+0x42>
c0de0eac:	5c83      	ldrb	r3, [r0, r2]
c0de0eae:	548b      	strb	r3, [r1, r2]
c0de0eb0:	3201      	adds	r2, #1
c0de0eb2:	e7f9      	b.n	c0de0ea8 <handler_cmd_Split+0x36>
c0de0eb4:	6862      	ldr	r2, [r4, #4]
c0de0eb6:	3a02      	subs	r2, #2
c0de0eb8:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0ebc:	f101 0220 	add.w	r2, r1, #32
c0de0ec0:	a888      	add	r0, sp, #544	@ 0x220
c0de0ec2:	2101      	movs	r1, #1
c0de0ec4:	f006 faab 	bl	c0de741e <cx_blake2b_512_hash_iovec>
c0de0ec8:	b9c8      	cbnz	r0, c0de0efe <handler_cmd_Split+0x8c>
c0de0eca:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0ecc:	2100      	movs	r1, #0
c0de0ece:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0ed0:	1d0d      	adds	r5, r1, #4
c0de0ed2:	2d10      	cmp	r5, #16
c0de0ed4:	d00b      	beq.n	c0de0eee <handler_cmd_Split+0x7c>
c0de0ed6:	1860      	adds	r0, r4, r1
c0de0ed8:	2120      	movs	r1, #32
c0de0eda:	2320      	movs	r3, #32
c0de0edc:	f102 0620 	add.w	r6, r2, #32
c0de0ee0:	f006 fd3e 	bl	c0de7960 <cx_bn_alloc_init>
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	4632      	mov	r2, r6
c0de0ee8:	4629      	mov	r1, r5
c0de0eea:	d0f1      	beq.n	c0de0ed0 <handler_cmd_Split+0x5e>
c0de0eec:	e007      	b.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0eee:	a80a      	add	r0, sp, #40	@ 0x28
c0de0ef0:	f000 fc74 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de0ef4:	b918      	cbnz	r0, c0de0efe <handler_cmd_Split+0x8c>
c0de0ef6:	a809      	add	r0, sp, #36	@ 0x24
c0de0ef8:	f000 fc70 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de0efc:	b128      	cbz	r0, c0de0f0a <handler_cmd_Split+0x98>
c0de0efe:	f000 fc63 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de0f02:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0f06:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0f0a:	f04f 0800 	mov.w	r8, #0
c0de0f0e:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0f12:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0f14:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0f18:	2400      	movs	r4, #0
c0de0f1a:	f1b8 0f10 	cmp.w	r8, #16
c0de0f1e:	d04d      	beq.n	c0de0fbc <handler_cmd_Split+0x14a>
c0de0f20:	a805      	add	r0, sp, #20
c0de0f22:	2120      	movs	r1, #32
c0de0f24:	eb00 0708 	add.w	r7, r0, r8
c0de0f28:	4638      	mov	r0, r7
c0de0f2a:	f006 fd0f 	bl	c0de794c <cx_bn_alloc>
c0de0f2e:	2800      	cmp	r0, #0
c0de0f30:	d1e5      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0f32:	a801      	add	r0, sp, #4
c0de0f34:	2120      	movs	r1, #32
c0de0f36:	eb00 0508 	add.w	r5, r0, r8
c0de0f3a:	4628      	mov	r0, r5
c0de0f3c:	f006 fd06 	bl	c0de794c <cx_bn_alloc>
c0de0f40:	2800      	cmp	r0, #0
c0de0f42:	d1dc      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0f44:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f46:	4621      	mov	r1, r4
c0de0f48:	f006 fd40 	bl	c0de79cc <cx_bn_set_u32>
c0de0f4c:	2800      	cmp	r0, #0
c0de0f4e:	d1d6      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0f50:	6828      	ldr	r0, [r5, #0]
c0de0f52:	4621      	mov	r1, r4
c0de0f54:	f006 fd3a 	bl	c0de79cc <cx_bn_set_u32>
c0de0f58:	2800      	cmp	r0, #0
c0de0f5a:	d1d0      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0f5c:	4650      	mov	r0, sl
c0de0f5e:	4631      	mov	r1, r6
c0de0f60:	f001 fe18 	bl	c0de2b94 <tEdwards_alloc>
c0de0f64:	2800      	cmp	r0, #0
c0de0f66:	d1ca      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0f68:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0f6c:	2202      	movs	r2, #2
c0de0f6e:	9000      	str	r0, [sp, #0]
c0de0f70:	4650      	mov	r0, sl
c0de0f72:	a917      	add	r1, sp, #92	@ 0x5c
c0de0f74:	f001 fac1 	bl	c0de24fa <zkn_evalshare>
c0de0f78:	2800      	cmp	r0, #0
c0de0f7a:	d1c0      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0f7c:	6838      	ldr	r0, [r7, #0]
c0de0f7e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0f80:	f006 fd1a 	bl	c0de79b8 <cx_bn_copy>
c0de0f84:	2800      	cmp	r0, #0
c0de0f86:	d1ba      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0f88:	4650      	mov	r0, sl
c0de0f8a:	4631      	mov	r1, r6
c0de0f8c:	f002 f933 	bl	c0de31f6 <tEdwards_normalize>
c0de0f90:	2800      	cmp	r0, #0
c0de0f92:	d1b4      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0f94:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f96:	4659      	mov	r1, fp
c0de0f98:	f000 fc1d 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0f9c:	2800      	cmp	r0, #0
c0de0f9e:	d1ae      	bne.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0fa0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0fa2:	f10b 0120 	add.w	r1, fp, #32
c0de0fa6:	f000 fc16 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de0faa:	360c      	adds	r6, #12
c0de0fac:	3401      	adds	r4, #1
c0de0fae:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0fb2:	f108 0804 	add.w	r8, r8, #4
c0de0fb6:	2800      	cmp	r0, #0
c0de0fb8:	d0af      	beq.n	c0de0f1a <handler_cmd_Split+0xa8>
c0de0fba:	e7a0      	b.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0fbc:	2100      	movs	r1, #0
c0de0fbe:	1d0c      	adds	r4, r1, #4
c0de0fc0:	2c10      	cmp	r4, #16
c0de0fc2:	d007      	beq.n	c0de0fd4 <handler_cmd_Split+0x162>
c0de0fc4:	a817      	add	r0, sp, #92	@ 0x5c
c0de0fc6:	4408      	add	r0, r1
c0de0fc8:	f006 fcd6 	bl	c0de7978 <cx_bn_destroy>
c0de0fcc:	2800      	cmp	r0, #0
c0de0fce:	4621      	mov	r1, r4
c0de0fd0:	d0f5      	beq.n	c0de0fbe <handler_cmd_Split+0x14c>
c0de0fd2:	e794      	b.n	c0de0efe <handler_cmd_Split+0x8c>
c0de0fd4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0fd6:	2303      	movs	r3, #3
c0de0fd8:	9000      	str	r0, [sp, #0]
c0de0fda:	a801      	add	r0, sp, #4
c0de0fdc:	1d01      	adds	r1, r0, #4
c0de0fde:	a805      	add	r0, sp, #20
c0de0fe0:	1d02      	adds	r2, r0, #4
c0de0fe2:	a832      	add	r0, sp, #200	@ 0xc8
c0de0fe4:	f001 fa47 	bl	c0de2476 <zkn_frost_interpolate_secrets>
c0de0fe8:	2800      	cmp	r0, #0
c0de0fea:	f47f af88 	bne.w	c0de0efe <handler_cmd_Split+0x8c>
c0de0fee:	a848      	add	r0, sp, #288	@ 0x120
c0de0ff0:	f000 fc01 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de0ff4:	f006 fca2 	bl	c0de793c <cx_bn_unlock>
c0de0ff8:	2800      	cmp	r0, #0
c0de0ffa:	f47f af80 	bne.w	c0de0efe <handler_cmd_Split+0x8c>
c0de0ffe:	2000      	movs	r0, #0
c0de1000:	e77f      	b.n	c0de0f02 <handler_cmd_Split+0x90>

c0de1002 <handler_cmd_frostH>:
c0de1002:	b5b0      	push	{r4, r5, r7, lr}
c0de1004:	b0d8      	sub	sp, #352	@ 0x160
c0de1006:	4604      	mov	r4, r0
c0de1008:	f000 fbda 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de100c:	2800      	cmp	r0, #0
c0de100e:	d142      	bne.n	c0de1096 <handler_cmd_frostH+0x94>
c0de1010:	6820      	ldr	r0, [r4, #0]
c0de1012:	7801      	ldrb	r1, [r0, #0]
c0de1014:	a802      	add	r0, sp, #8
c0de1016:	f001 ff3d 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de101a:	bbe0      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de101c:	a801      	add	r0, sp, #4
c0de101e:	f000 fbdd 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de1022:	bbc0      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de1024:	f000 fbe0 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de1028:	f002 fc52 	bl	c0de38d0 <Babyfrost_H1>
c0de102c:	bb98      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de102e:	9801      	ldr	r0, [sp, #4]
c0de1030:	ad18      	add	r5, sp, #96	@ 0x60
c0de1032:	2220      	movs	r2, #32
c0de1034:	4629      	mov	r1, r5
c0de1036:	f006 fcd3 	bl	c0de79e0 <cx_bn_export>
c0de103a:	bb60      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de103c:	f000 fbd4 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de1040:	f002 fc54 	bl	c0de38ec <Babyfrost_H3>
c0de1044:	bb38      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de1046:	9801      	ldr	r0, [sp, #4]
c0de1048:	f105 0120 	add.w	r1, r5, #32
c0de104c:	f000 fbc3 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de1050:	bb08      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de1052:	f000 fbc9 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de1056:	f002 fc5d 	bl	c0de3914 <Babyfrost_H4>
c0de105a:	b9e0      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de105c:	9801      	ldr	r0, [sp, #4]
c0de105e:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de1062:	f000 fbb8 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de1066:	b9b0      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de1068:	f000 fbbe 	bl	c0de17e8 <OUTLINED_FUNCTION_6>
c0de106c:	f002 fc60 	bl	c0de3930 <Babyfrost_H5>
c0de1070:	b988      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de1072:	9801      	ldr	r0, [sp, #4]
c0de1074:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1078:	f000 fbad 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de107c:	b958      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de107e:	9804      	ldr	r0, [sp, #16]
c0de1080:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de1084:	f000 fba7 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de1088:	b928      	cbnz	r0, c0de1096 <handler_cmd_frostH+0x94>
c0de108a:	a818      	add	r0, sp, #96	@ 0x60
c0de108c:	f000 fbb3 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de1090:	f006 fc54 	bl	c0de793c <cx_bn_unlock>
c0de1094:	b118      	cbz	r0, c0de109e <handler_cmd_frostH+0x9c>
c0de1096:	f000 fb97 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de109a:	b058      	add	sp, #352	@ 0x160
c0de109c:	bdb0      	pop	{r4, r5, r7, pc}
c0de109e:	2000      	movs	r0, #0
c0de10a0:	e7fb      	b.n	c0de109a <handler_cmd_frostH+0x98>
	...

c0de10a4 <handler_cmd_encodeCommitment>:
c0de10a4:	b510      	push	{r4, lr}
c0de10a6:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de10aa:	4604      	mov	r4, r0
c0de10ac:	f000 fb88 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de10b0:	bb10      	cbnz	r0, c0de10f8 <handler_cmd_encodeCommitment+0x54>
c0de10b2:	6820      	ldr	r0, [r4, #0]
c0de10b4:	7801      	ldrb	r1, [r0, #0]
c0de10b6:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de10b8:	f001 feec 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de10bc:	b9e0      	cbnz	r0, c0de10f8 <handler_cmd_encodeCommitment+0x54>
c0de10be:	a879      	add	r0, sp, #484	@ 0x1e4
c0de10c0:	f000 fb8c 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de10c4:	b9c0      	cbnz	r0, c0de10f8 <handler_cmd_encodeCommitment+0x54>
c0de10c6:	ac01      	add	r4, sp, #4
c0de10c8:	4910      	ldr	r1, [pc, #64]	@ (c0de110c <handler_cmd_encodeCommitment+0x68>)
c0de10ca:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10ce:	4620      	mov	r0, r4
c0de10d0:	4479      	add	r1, pc
c0de10d2:	f006 fef1 	bl	c0de7eb8 <__aeabi_memcpy>
c0de10d6:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de10d8:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de10da:	4621      	mov	r1, r4
c0de10dc:	2203      	movs	r2, #3
c0de10de:	f001 fa9d 	bl	c0de261c <zkn_encode_group_commitmentHash>
c0de10e2:	b948      	cbnz	r0, c0de10f8 <handler_cmd_encodeCommitment+0x54>
c0de10e4:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de10e6:	a990      	add	r1, sp, #576	@ 0x240
c0de10e8:	2220      	movs	r2, #32
c0de10ea:	3120      	adds	r1, #32
c0de10ec:	f006 fc78 	bl	c0de79e0 <cx_bn_export>
c0de10f0:	b910      	cbnz	r0, c0de10f8 <handler_cmd_encodeCommitment+0x54>
c0de10f2:	f006 fc23 	bl	c0de793c <cx_bn_unlock>
c0de10f6:	b120      	cbz	r0, c0de1102 <handler_cmd_encodeCommitment+0x5e>
c0de10f8:	f000 fb66 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de10fc:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de1100:	bd10      	pop	{r4, pc}
c0de1102:	a890      	add	r0, sp, #576	@ 0x240
c0de1104:	f000 fb7b 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de1108:	2000      	movs	r0, #0
c0de110a:	e7f7      	b.n	c0de10fc <handler_cmd_encodeCommitment+0x58>
c0de110c:	000077e4 	.word	0x000077e4

c0de1110 <handler_cmd_GroupCommitment>:
c0de1110:	b570      	push	{r4, r5, r6, lr}
c0de1112:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de1116:	4604      	mov	r4, r0
c0de1118:	f000 fb52 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de111c:	bb68      	cbnz	r0, c0de117a <handler_cmd_GroupCommitment+0x6a>
c0de111e:	6820      	ldr	r0, [r4, #0]
c0de1120:	7801      	ldrb	r1, [r0, #0]
c0de1122:	a894      	add	r0, sp, #592	@ 0x250
c0de1124:	f001 feb6 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de1128:	bb38      	cbnz	r0, c0de117a <handler_cmd_GroupCommitment+0x6a>
c0de112a:	a894      	add	r0, sp, #592	@ 0x250
c0de112c:	ac91      	add	r4, sp, #580	@ 0x244
c0de112e:	4621      	mov	r1, r4
c0de1130:	f001 fd30 	bl	c0de2b94 <tEdwards_alloc>
c0de1134:	bb08      	cbnz	r0, c0de117a <handler_cmd_GroupCommitment+0x6a>
c0de1136:	ad19      	add	r5, sp, #100	@ 0x64
c0de1138:	4915      	ldr	r1, [pc, #84]	@ (c0de1190 <handler_cmd_GroupCommitment+0x80>)
c0de113a:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de113e:	4628      	mov	r0, r5
c0de1140:	4479      	add	r1, pc
c0de1142:	f006 feb9 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1146:	ae01      	add	r6, sp, #4
c0de1148:	4912      	ldr	r1, [pc, #72]	@ (c0de1194 <handler_cmd_GroupCommitment+0x84>)
c0de114a:	2260      	movs	r2, #96	@ 0x60
c0de114c:	4630      	mov	r0, r6
c0de114e:	4479      	add	r1, pc
c0de1150:	f006 feb2 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1154:	9400      	str	r4, [sp, #0]
c0de1156:	a894      	add	r0, sp, #592	@ 0x250
c0de1158:	4629      	mov	r1, r5
c0de115a:	4632      	mov	r2, r6
c0de115c:	2303      	movs	r3, #3
c0de115e:	f001 fada 	bl	c0de2716 <zkn_compute_group_commitment>
c0de1162:	b950      	cbnz	r0, c0de117a <handler_cmd_GroupCommitment+0x6a>
c0de1164:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de1166:	a894      	add	r0, sp, #592	@ 0x250
c0de1168:	a991      	add	r1, sp, #580	@ 0x244
c0de116a:	f102 0320 	add.w	r3, r2, #32
c0de116e:	f002 f81c 	bl	c0de31aa <tEdwards_export>
c0de1172:	b910      	cbnz	r0, c0de117a <handler_cmd_GroupCommitment+0x6a>
c0de1174:	f006 fbe2 	bl	c0de793c <cx_bn_unlock>
c0de1178:	b120      	cbz	r0, c0de1184 <handler_cmd_GroupCommitment+0x74>
c0de117a:	f000 fb25 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de117e:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de1182:	bd70      	pop	{r4, r5, r6, pc}
c0de1184:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de1186:	2140      	movs	r1, #64	@ 0x40
c0de1188:	f7ff fab8 	bl	c0de06fc <io_send_response_pointer>
c0de118c:	2000      	movs	r0, #0
c0de118e:	e7f6      	b.n	c0de117e <handler_cmd_GroupCommitment+0x6e>
c0de1190:	00007954 	.word	0x00007954
c0de1194:	00007b26 	.word	0x00007b26

c0de1198 <handler_cmd_BindingFactors>:
c0de1198:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de119c:	f2ad 4dd4 	subw	sp, sp, #1236	@ 0x4d4
c0de11a0:	4604      	mov	r4, r0
c0de11a2:	f000 fb0d 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de11a6:	2800      	cmp	r0, #0
c0de11a8:	f040 8119 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de11ac:	6820      	ldr	r0, [r4, #0]
c0de11ae:	7801      	ldrb	r1, [r0, #0]
c0de11b0:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11b2:	f001 fe6f 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de11b6:	2800      	cmp	r0, #0
c0de11b8:	f040 8111 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de11bc:	a8de      	add	r0, sp, #888	@ 0x378
c0de11be:	f000 fb0d 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de11c2:	2800      	cmp	r0, #0
c0de11c4:	f040 810b 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de11c8:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11ca:	addb      	add	r5, sp, #876	@ 0x36c
c0de11cc:	4629      	mov	r1, r5
c0de11ce:	f001 fce1 	bl	c0de2b94 <tEdwards_alloc>
c0de11d2:	2800      	cmp	r0, #0
c0de11d4:	f040 8103 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de11d8:	ac63      	add	r4, sp, #396	@ 0x18c
c0de11da:	4985      	ldr	r1, [pc, #532]	@ (c0de13f0 <handler_cmd_BindingFactors+0x258>)
c0de11dc:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de11e0:	4620      	mov	r0, r4
c0de11e2:	4479      	add	r1, pc
c0de11e4:	f006 fe68 	bl	c0de7eb8 <__aeabi_memcpy>
c0de11e8:	9bde      	ldr	r3, [sp, #888]	@ 0x378
c0de11ea:	a8df      	add	r0, sp, #892	@ 0x37c
c0de11ec:	4621      	mov	r1, r4
c0de11ee:	2203      	movs	r2, #3
c0de11f0:	f001 fa14 	bl	c0de261c <zkn_encode_group_commitmentHash>
c0de11f4:	2800      	cmp	r0, #0
c0de11f6:	f040 80f2 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de11fa:	f50d 7875 	add.w	r8, sp, #980	@ 0x3d4
c0de11fe:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de1200:	2220      	movs	r2, #32
c0de1202:	2620      	movs	r6, #32
c0de1204:	4641      	mov	r1, r8
c0de1206:	f006 fbeb 	bl	c0de79e0 <cx_bn_export>
c0de120a:	2800      	cmp	r0, #0
c0de120c:	f040 80e7 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de1210:	4978      	ldr	r1, [pc, #480]	@ (c0de13f4 <handler_cmd_BindingFactors+0x25c>)
c0de1212:	f50d 7ab6 	add.w	sl, sp, #364	@ 0x16c
c0de1216:	2220      	movs	r2, #32
c0de1218:	4650      	mov	r0, sl
c0de121a:	4479      	add	r1, pc
c0de121c:	f006 fe4c 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1220:	a853      	add	r0, sp, #332	@ 0x14c
c0de1222:	4975      	ldr	r1, [pc, #468]	@ (c0de13f8 <handler_cmd_BindingFactors+0x260>)
c0de1224:	2220      	movs	r2, #32
c0de1226:	4479      	add	r1, pc
c0de1228:	f006 fe46 	bl	c0de7eb8 <__aeabi_memcpy>
c0de122c:	ac4b      	add	r4, sp, #300	@ 0x12c
c0de122e:	4973      	ldr	r1, [pc, #460]	@ (c0de13fc <handler_cmd_BindingFactors+0x264>)
c0de1230:	2220      	movs	r2, #32
c0de1232:	4620      	mov	r0, r4
c0de1234:	4479      	add	r1, pc
c0de1236:	f006 fe3f 	bl	c0de7eb8 <__aeabi_memcpy>
c0de123a:	f108 0720 	add.w	r7, r8, #32
c0de123e:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de1242:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1244:	aa63      	add	r2, sp, #396	@ 0x18c
c0de1246:	4651      	mov	r1, sl
c0de1248:	2303      	movs	r3, #3
c0de124a:	f001 fad5 	bl	c0de27f8 <zkn_compute_binding_factors>
c0de124e:	2800      	cmp	r0, #0
c0de1250:	f040 80c5 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de1254:	9500      	str	r5, [sp, #0]
c0de1256:	a8df      	add	r0, sp, #892	@ 0x37c
c0de1258:	a963      	add	r1, sp, #396	@ 0x18c
c0de125a:	463a      	mov	r2, r7
c0de125c:	2303      	movs	r3, #3
c0de125e:	f001 fa5a 	bl	c0de2716 <zkn_compute_group_commitment>
c0de1262:	2800      	cmp	r0, #0
c0de1264:	f040 80bb 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de1268:	a8df      	add	r0, sp, #892	@ 0x37c
c0de126a:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de126e:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de1272:	a9db      	add	r1, sp, #876	@ 0x36c
c0de1274:	f001 ff99 	bl	c0de31aa <tEdwards_export>
c0de1278:	2800      	cmp	r0, #0
c0de127a:	f040 80b0 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de127e:	ad3b      	add	r5, sp, #236	@ 0xec
c0de1280:	495f      	ldr	r1, [pc, #380]	@ (c0de1400 <handler_cmd_BindingFactors+0x268>)
c0de1282:	2240      	movs	r2, #64	@ 0x40
c0de1284:	4628      	mov	r0, r5
c0de1286:	4479      	add	r1, pc
c0de1288:	f006 fe16 	bl	c0de7eb8 <__aeabi_memcpy>
c0de128c:	a833      	add	r0, sp, #204	@ 0xcc
c0de128e:	495d      	ldr	r1, [pc, #372]	@ (c0de1404 <handler_cmd_BindingFactors+0x26c>)
c0de1290:	2220      	movs	r2, #32
c0de1292:	2420      	movs	r4, #32
c0de1294:	4479      	add	r1, pc
c0de1296:	f006 fe0f 	bl	c0de7eb8 <__aeabi_memcpy>
c0de129a:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de129c:	462a      	mov	r2, r5
c0de129e:	e9cd 4000 	strd	r4, r0, [sp]
c0de12a2:	a8df      	add	r0, sp, #892	@ 0x37c
c0de12a4:	a9db      	add	r1, sp, #876	@ 0x36c
c0de12a6:	ab53      	add	r3, sp, #332	@ 0x14c
c0de12a8:	f001 fb32 	bl	c0de2910 <compute_challenge>
c0de12ac:	2800      	cmp	r0, #0
c0de12ae:	f040 8096 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de12b2:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de12b4:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de12b8:	f000 fa8d 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de12bc:	2800      	cmp	r0, #0
c0de12be:	f040 808e 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de12c2:	a829      	add	r0, sp, #164	@ 0xa4
c0de12c4:	4950      	ldr	r1, [pc, #320]	@ (c0de1408 <handler_cmd_BindingFactors+0x270>)
c0de12c6:	2220      	movs	r2, #32
c0de12c8:	4479      	add	r1, pc
c0de12ca:	f006 fdf5 	bl	c0de7eb8 <__aeabi_memcpy>
c0de12ce:	a832      	add	r0, sp, #200	@ 0xc8
c0de12d0:	f000 fa84 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de12d4:	2800      	cmp	r0, #0
c0de12d6:	f040 8082 	bne.w	c0de13de <handler_cmd_BindingFactors+0x246>
c0de12da:	a831      	add	r0, sp, #196	@ 0xc4
c0de12dc:	aa29      	add	r2, sp, #164	@ 0xa4
c0de12de:	f000 fa76 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de12e2:	2800      	cmp	r0, #0
c0de12e4:	d17b      	bne.n	c0de13de <handler_cmd_BindingFactors+0x246>
c0de12e6:	99de      	ldr	r1, [sp, #888]	@ 0x378
c0de12e8:	e9dd 2031 	ldrd	r2, r0, [sp, #196]	@ 0xc4
c0de12ec:	f006 fbcc 	bl	c0de7a88 <cx_bn_reduce>
c0de12f0:	2800      	cmp	r0, #0
c0de12f2:	d174      	bne.n	c0de13de <handler_cmd_BindingFactors+0x246>
c0de12f4:	9832      	ldr	r0, [sp, #200]	@ 0xc8
c0de12f6:	f108 01e0 	add.w	r1, r8, #224	@ 0xe0
c0de12fa:	f000 fa6c 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de12fe:	2800      	cmp	r0, #0
c0de1300:	d16d      	bne.n	c0de13de <handler_cmd_BindingFactors+0x246>
c0de1302:	ac21      	add	r4, sp, #132	@ 0x84
c0de1304:	4941      	ldr	r1, [pc, #260]	@ (c0de140c <handler_cmd_BindingFactors+0x274>)
c0de1306:	2220      	movs	r2, #32
c0de1308:	4620      	mov	r0, r4
c0de130a:	4479      	add	r1, pc
c0de130c:	f006 fdd4 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1310:	a819      	add	r0, sp, #100	@ 0x64
c0de1312:	493f      	ldr	r1, [pc, #252]	@ (c0de1410 <handler_cmd_BindingFactors+0x278>)
c0de1314:	2220      	movs	r2, #32
c0de1316:	4479      	add	r1, pc
c0de1318:	f006 fdce 	bl	c0de7eb8 <__aeabi_memcpy>
c0de131c:	a811      	add	r0, sp, #68	@ 0x44
c0de131e:	493d      	ldr	r1, [pc, #244]	@ (c0de1414 <handler_cmd_BindingFactors+0x27c>)
c0de1320:	2220      	movs	r2, #32
c0de1322:	4479      	add	r1, pc
c0de1324:	f006 fdc8 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1328:	a809      	add	r0, sp, #36	@ 0x24
c0de132a:	493b      	ldr	r1, [pc, #236]	@ (c0de1418 <handler_cmd_BindingFactors+0x280>)
c0de132c:	2220      	movs	r2, #32
c0de132e:	4479      	add	r1, pc
c0de1330:	f006 fdc2 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1334:	a808      	add	r0, sp, #32
c0de1336:	2120      	movs	r1, #32
c0de1338:	4622      	mov	r2, r4
c0de133a:	f000 fa52 	bl	c0de17e2 <OUTLINED_FUNCTION_5>
c0de133e:	2800      	cmp	r0, #0
c0de1340:	d14d      	bne.n	c0de13de <handler_cmd_BindingFactors+0x246>
c0de1342:	a807      	add	r0, sp, #28
c0de1344:	aa19      	add	r2, sp, #100	@ 0x64
c0de1346:	f000 fa42 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de134a:	2800      	cmp	r0, #0
c0de134c:	d147      	bne.n	c0de13de <handler_cmd_BindingFactors+0x246>
c0de134e:	a806      	add	r0, sp, #24
c0de1350:	aa09      	add	r2, sp, #36	@ 0x24
c0de1352:	f000 fa3c 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de1356:	2800      	cmp	r0, #0
c0de1358:	d141      	bne.n	c0de13de <handler_cmd_BindingFactors+0x246>
c0de135a:	a805      	add	r0, sp, #20
c0de135c:	aa11      	add	r2, sp, #68	@ 0x44
c0de135e:	f000 fa36 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de1362:	bbe0      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de1364:	a803      	add	r0, sp, #12
c0de1366:	aa33      	add	r2, sp, #204	@ 0xcc
c0de1368:	f000 fa31 	bl	c0de17ce <OUTLINED_FUNCTION_2>
c0de136c:	bbb8      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de136e:	a804      	add	r0, sp, #16
c0de1370:	f000 fa34 	bl	c0de17dc <OUTLINED_FUNCTION_4>
c0de1374:	bb98      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de1376:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1378:	9907      	ldr	r1, [sp, #28]
c0de137a:	e9dd 2003 	ldrd	r2, r0, [sp, #12]
c0de137e:	f006 fb77 	bl	c0de7a70 <cx_bn_mod_mul>
c0de1382:	bb60      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de1384:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1386:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de138a:	9807      	ldr	r0, [sp, #28]
c0de138c:	f006 fb70 	bl	c0de7a70 <cx_bn_mod_mul>
c0de1390:	bb28      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de1392:	e9dd 3231 	ldrd	r3, r2, [sp, #196]	@ 0xc4
c0de1396:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de139a:	f006 fb69 	bl	c0de7a70 <cx_bn_mod_mul>
c0de139e:	b9f0      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de13a0:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de13a2:	9a06      	ldr	r2, [sp, #24]
c0de13a4:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
c0de13a8:	f006 fb4a 	bl	c0de7a40 <cx_bn_mod_add>
c0de13ac:	b9b8      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de13ae:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de13b0:	9a08      	ldr	r2, [sp, #32]
c0de13b2:	e9dd 1003 	ldrd	r1, r0, [sp, #12]
c0de13b6:	f006 fb43 	bl	c0de7a40 <cx_bn_mod_add>
c0de13ba:	b980      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de13bc:	9a31      	ldr	r2, [sp, #196]	@ 0xc4
c0de13be:	9904      	ldr	r1, [sp, #16]
c0de13c0:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de13c2:	f006 fb61 	bl	c0de7a88 <cx_bn_reduce>
c0de13c6:	b950      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de13c8:	98de      	ldr	r0, [sp, #888]	@ 0x378
c0de13ca:	a9f5      	add	r1, sp, #980	@ 0x3d4
c0de13cc:	f000 fa03 	bl	c0de17d6 <OUTLINED_FUNCTION_3>
c0de13d0:	b928      	cbnz	r0, c0de13de <handler_cmd_BindingFactors+0x246>
c0de13d2:	a8f5      	add	r0, sp, #980	@ 0x3d4
c0de13d4:	f000 fa0f 	bl	c0de17f6 <OUTLINED_FUNCTION_7>
c0de13d8:	f006 fab0 	bl	c0de793c <cx_bn_unlock>
c0de13dc:	b128      	cbz	r0, c0de13ea <handler_cmd_BindingFactors+0x252>
c0de13de:	f000 f9f3 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de13e2:	f20d 4dd4 	addw	sp, sp, #1236	@ 0x4d4
c0de13e6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de13ea:	2000      	movs	r0, #0
c0de13ec:	e7f9      	b.n	c0de13e2 <handler_cmd_BindingFactors+0x24a>
c0de13ee:	bf00      	nop
c0de13f0:	00007af2 	.word	0x00007af2
c0de13f4:	0000745a 	.word	0x0000745a
c0de13f8:	000072ce 	.word	0x000072ce
c0de13fc:	000074a0 	.word	0x000074a0
c0de1400:	00007c2e 	.word	0x00007c2e
c0de1404:	00007400 	.word	0x00007400
c0de1408:	0000736c 	.word	0x0000736c
c0de140c:	0000728a 	.word	0x0000728a
c0de1410:	0000739e 	.word	0x0000739e
c0de1414:	000074d2 	.word	0x000074d2
c0de1418:	00007226 	.word	0x00007226

c0de141c <handler_cmd_PartialSig>:
c0de141c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1420:	f5ad 6d87 	sub.w	sp, sp, #1080	@ 0x438
c0de1424:	4604      	mov	r4, r0
c0de1426:	f000 f9cb 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de142a:	2800      	cmp	r0, #0
c0de142c:	d154      	bne.n	c0de14d8 <handler_cmd_PartialSig+0xbc>
c0de142e:	6820      	ldr	r0, [r4, #0]
c0de1430:	7801      	ldrb	r1, [r0, #0]
c0de1432:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de1434:	f001 fd2e 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de1438:	2800      	cmp	r0, #0
c0de143a:	d14d      	bne.n	c0de14d8 <handler_cmd_PartialSig+0xbc>
c0de143c:	492a      	ldr	r1, [pc, #168]	@ (c0de14e8 <handler_cmd_PartialSig+0xcc>)
c0de143e:	f50d 7880 	add.w	r8, sp, #256	@ 0x100
c0de1442:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1446:	4640      	mov	r0, r8
c0de1448:	4479      	add	r1, pc
c0de144a:	f006 fd35 	bl	c0de7eb8 <__aeabi_memcpy>
c0de144e:	4927      	ldr	r1, [pc, #156]	@ (c0de14ec <handler_cmd_PartialSig+0xd0>)
c0de1450:	f10d 0ae0 	add.w	sl, sp, #224	@ 0xe0
c0de1454:	2220      	movs	r2, #32
c0de1456:	4650      	mov	r0, sl
c0de1458:	4479      	add	r1, pc
c0de145a:	f006 fd2d 	bl	c0de7eb8 <__aeabi_memcpy>
c0de145e:	4924      	ldr	r1, [pc, #144]	@ (c0de14f0 <handler_cmd_PartialSig+0xd4>)
c0de1460:	f10d 0bc0 	add.w	fp, sp, #192	@ 0xc0
c0de1464:	2220      	movs	r2, #32
c0de1466:	4658      	mov	r0, fp
c0de1468:	4479      	add	r1, pc
c0de146a:	f006 fd25 	bl	c0de7eb8 <__aeabi_memcpy>
c0de146e:	ac28      	add	r4, sp, #160	@ 0xa0
c0de1470:	4920      	ldr	r1, [pc, #128]	@ (c0de14f4 <handler_cmd_PartialSig+0xd8>)
c0de1472:	2220      	movs	r2, #32
c0de1474:	4620      	mov	r0, r4
c0de1476:	4479      	add	r1, pc
c0de1478:	f006 fd1e 	bl	c0de7eb8 <__aeabi_memcpy>
c0de147c:	af18      	add	r7, sp, #96	@ 0x60
c0de147e:	491e      	ldr	r1, [pc, #120]	@ (c0de14f8 <handler_cmd_PartialSig+0xdc>)
c0de1480:	2240      	movs	r2, #64	@ 0x40
c0de1482:	4638      	mov	r0, r7
c0de1484:	4479      	add	r1, pc
c0de1486:	f006 fd17 	bl	c0de7eb8 <__aeabi_memcpy>
c0de148a:	ad10      	add	r5, sp, #64	@ 0x40
c0de148c:	491b      	ldr	r1, [pc, #108]	@ (c0de14fc <handler_cmd_PartialSig+0xe0>)
c0de148e:	2220      	movs	r2, #32
c0de1490:	4628      	mov	r0, r5
c0de1492:	4479      	add	r1, pc
c0de1494:	f006 fd10 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1498:	ae08      	add	r6, sp, #32
c0de149a:	4919      	ldr	r1, [pc, #100]	@ (c0de1500 <handler_cmd_PartialSig+0xe4>)
c0de149c:	2220      	movs	r2, #32
c0de149e:	4630      	mov	r0, r6
c0de14a0:	4479      	add	r1, pc
c0de14a2:	f006 fd09 	bl	c0de7eb8 <__aeabi_memcpy>
c0de14a6:	2103      	movs	r1, #3
c0de14a8:	a8ce      	add	r0, sp, #824	@ 0x338
c0de14aa:	e9cd b400 	strd	fp, r4, [sp]
c0de14ae:	f8cd a010 	str.w	sl, [sp, #16]
c0de14b2:	462a      	mov	r2, r5
c0de14b4:	463b      	mov	r3, r7
c0de14b6:	e9cd 8102 	strd	r8, r1, [sp, #8]
c0de14ba:	2120      	movs	r1, #32
c0de14bc:	9007      	str	r0, [sp, #28]
c0de14be:	e9cd 1605 	strd	r1, r6, [sp, #20]
c0de14c2:	a8b8      	add	r0, sp, #736	@ 0x2e0
c0de14c4:	2101      	movs	r1, #1
c0de14c6:	f001 fa7d 	bl	c0de29c4 <zkn_partial_sig>
c0de14ca:	b928      	cbnz	r0, c0de14d8 <handler_cmd_PartialSig+0xbc>
c0de14cc:	a8ce      	add	r0, sp, #824	@ 0x338
c0de14ce:	f000 f996 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de14d2:	f006 fa33 	bl	c0de793c <cx_bn_unlock>
c0de14d6:	b128      	cbz	r0, c0de14e4 <handler_cmd_PartialSig+0xc8>
c0de14d8:	f000 f976 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de14dc:	f50d 6d87 	add.w	sp, sp, #1080	@ 0x438
c0de14e0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de14e4:	2000      	movs	r0, #0
c0de14e6:	e7f9      	b.n	c0de14dc <handler_cmd_PartialSig+0xc0>
c0de14e8:	0000788c 	.word	0x0000788c
c0de14ec:	0000709c 	.word	0x0000709c
c0de14f0:	0000712c 	.word	0x0000712c
c0de14f4:	0000723e 	.word	0x0000723e
c0de14f8:	00007a30 	.word	0x00007a30
c0de14fc:	00007362 	.word	0x00007362
c0de1500:	000070b4 	.word	0x000070b4

c0de1504 <handler_get_insecure_public>:
c0de1504:	b5b0      	push	{r4, r5, r7, lr}
c0de1506:	b0aa      	sub	sp, #168	@ 0xa8
c0de1508:	6800      	ldr	r0, [r0, #0]
c0de150a:	21ff      	movs	r1, #255	@ 0xff
c0de150c:	7805      	ldrb	r5, [r0, #0]
c0de150e:	2000      	movs	r0, #0
c0de1510:	ac1a      	add	r4, sp, #104	@ 0x68
c0de1512:	2840      	cmp	r0, #64	@ 0x40
c0de1514:	d002      	beq.n	c0de151c <handler_get_insecure_public+0x18>
c0de1516:	5421      	strb	r1, [r4, r0]
c0de1518:	3001      	adds	r0, #1
c0de151a:	e7fa      	b.n	c0de1512 <handler_get_insecure_public+0xe>
c0de151c:	f000 f950 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de1520:	b9f8      	cbnz	r0, c0de1562 <handler_get_insecure_public+0x5e>
c0de1522:	a804      	add	r0, sp, #16
c0de1524:	f000 f975 	bl	c0de1812 <OUTLINED_FUNCTION_11>
c0de1528:	b9d8      	cbnz	r0, c0de1562 <handler_get_insecure_public+0x5e>
c0de152a:	a804      	add	r0, sp, #16
c0de152c:	a901      	add	r1, sp, #4
c0de152e:	f001 fb31 	bl	c0de2b94 <tEdwards_alloc>
c0de1532:	b9b0      	cbnz	r0, c0de1562 <handler_get_insecure_public+0x5e>
c0de1534:	480e      	ldr	r0, [pc, #56]	@ (c0de1570 <handler_get_insecure_public+0x6c>)
c0de1536:	eb09 0100 	add.w	r1, r9, r0
c0de153a:	a804      	add	r0, sp, #16
c0de153c:	aa01      	add	r2, sp, #4
c0de153e:	f000 fdbb 	bl	c0de20b8 <zkn_prv2pub>
c0de1542:	b970      	cbnz	r0, c0de1562 <handler_get_insecure_public+0x5e>
c0de1544:	a804      	add	r0, sp, #16
c0de1546:	f104 0320 	add.w	r3, r4, #32
c0de154a:	a901      	add	r1, sp, #4
c0de154c:	f000 f95e 	bl	c0de180c <OUTLINED_FUNCTION_10>
c0de1550:	b938      	cbnz	r0, c0de1562 <handler_get_insecure_public+0x5e>
c0de1552:	9804      	ldr	r0, [sp, #16]
c0de1554:	0041      	lsls	r1, r0, #1
c0de1556:	a81a      	add	r0, sp, #104	@ 0x68
c0de1558:	f7ff f8d0 	bl	c0de06fc <io_send_response_pointer>
c0de155c:	f006 f9ee 	bl	c0de793c <cx_bn_unlock>
c0de1560:	b118      	cbz	r0, c0de156a <handler_get_insecure_public+0x66>
c0de1562:	f000 f931 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de1566:	b02a      	add	sp, #168	@ 0xa8
c0de1568:	bdb0      	pop	{r4, r5, r7, pc}
c0de156a:	2000      	movs	r0, #0
c0de156c:	e7fb      	b.n	c0de1566 <handler_get_insecure_public+0x62>
c0de156e:	bf00      	nop
c0de1570:	00000350 	.word	0x00000350

c0de1574 <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de1574:	b570      	push	{r4, r5, r6, lr}
c0de1576:	b0bc      	sub	sp, #240	@ 0xf0
c0de1578:	4605      	mov	r5, r0
c0de157a:	6800      	ldr	r0, [r0, #0]
c0de157c:	21ff      	movs	r1, #255	@ 0xff
c0de157e:	7804      	ldrb	r4, [r0, #0]
c0de1580:	2000      	movs	r0, #0
c0de1582:	ae24      	add	r6, sp, #144	@ 0x90
c0de1584:	2860      	cmp	r0, #96	@ 0x60
c0de1586:	d002      	beq.n	c0de158e <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1a>
c0de1588:	5431      	strb	r1, [r6, r0]
c0de158a:	3001      	adds	r0, #1
c0de158c:	e7fa      	b.n	c0de1584 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x10>
c0de158e:	f000 f917 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de1592:	bb68      	cbnz	r0, c0de15f0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de1594:	6828      	ldr	r0, [r5, #0]
c0de1596:	2100      	movs	r1, #0
c0de1598:	aa03      	add	r2, sp, #12
c0de159a:	3001      	adds	r0, #1
c0de159c:	2920      	cmp	r1, #32
c0de159e:	d003      	beq.n	c0de15a8 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x34>
c0de15a0:	5c43      	ldrb	r3, [r0, r1]
c0de15a2:	5453      	strb	r3, [r2, r1]
c0de15a4:	3101      	adds	r1, #1
c0de15a6:	e7f9      	b.n	c0de159c <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x28>
c0de15a8:	a80e      	add	r0, sp, #56	@ 0x38
c0de15aa:	4621      	mov	r1, r4
c0de15ac:	f001 fc72 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de15b0:	b9f0      	cbnz	r0, c0de15f0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15b2:	a80e      	add	r0, sp, #56	@ 0x38
c0de15b4:	a90b      	add	r1, sp, #44	@ 0x2c
c0de15b6:	f001 faed 	bl	c0de2b94 <tEdwards_alloc>
c0de15ba:	b9c8      	cbnz	r0, c0de15f0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15bc:	4c0f      	ldr	r4, [pc, #60]	@ (c0de15fc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x88>)
c0de15be:	a80e      	add	r0, sp, #56	@ 0x38
c0de15c0:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de15c2:	eb09 0104 	add.w	r1, r9, r4
c0de15c6:	f000 fd77 	bl	c0de20b8 <zkn_prv2pub>
c0de15ca:	b988      	cbnz	r0, c0de15f0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15cc:	2020      	movs	r0, #32
c0de15ce:	eb09 0104 	add.w	r1, r9, r4
c0de15d2:	e9cd 0600 	strd	r0, r6, [sp]
c0de15d6:	a80e      	add	r0, sp, #56	@ 0x38
c0de15d8:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de15da:	ab03      	add	r3, sp, #12
c0de15dc:	f000 fd94 	bl	c0de2108 <EddsaPoseidon_Sign_final>
c0de15e0:	b930      	cbnz	r0, c0de15f0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x7c>
c0de15e2:	a824      	add	r0, sp, #144	@ 0x90
c0de15e4:	2160      	movs	r1, #96	@ 0x60
c0de15e6:	f7ff f889 	bl	c0de06fc <io_send_response_pointer>
c0de15ea:	f006 f9a7 	bl	c0de793c <cx_bn_unlock>
c0de15ee:	b118      	cbz	r0, c0de15f8 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x84>
c0de15f0:	f000 f8ea 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de15f4:	b03c      	add	sp, #240	@ 0xf0
c0de15f6:	bd70      	pop	{r4, r5, r6, pc}
c0de15f8:	2000      	movs	r0, #0
c0de15fa:	e7fb      	b.n	c0de15f4 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x80>
c0de15fc:	00000350 	.word	0x00000350

c0de1600 <handler_cmd_frost_inject>:
c0de1600:	b5b0      	push	{r4, r5, r7, lr}
c0de1602:	4604      	mov	r4, r0
c0de1604:	4810      	ldr	r0, [pc, #64]	@ (c0de1648 <handler_cmd_frost_inject+0x48>)
c0de1606:	2240      	movs	r2, #64	@ 0x40
c0de1608:	e9d4 1500 	ldrd	r1, r5, [r4]
c0de160c:	4448      	add	r0, r9
c0de160e:	f006 fc53 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1612:	480e      	ldr	r0, [pc, #56]	@ (c0de164c <handler_cmd_frost_inject+0x4c>)
c0de1614:	6821      	ldr	r1, [r4, #0]
c0de1616:	2220      	movs	r2, #32
c0de1618:	4448      	add	r0, r9
c0de161a:	3140      	adds	r1, #64	@ 0x40
c0de161c:	f006 fc4c 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1620:	480b      	ldr	r0, [pc, #44]	@ (c0de1650 <handler_cmd_frost_inject+0x50>)
c0de1622:	6821      	ldr	r1, [r4, #0]
c0de1624:	2220      	movs	r2, #32
c0de1626:	4448      	add	r0, r9
c0de1628:	3160      	adds	r1, #96	@ 0x60
c0de162a:	f006 fc45 	bl	c0de7eb8 <__aeabi_memcpy>
c0de162e:	f000 f8e9 	bl	c0de1804 <OUTLINED_FUNCTION_9>
c0de1632:	2d80      	cmp	r5, #128	@ 0x80
c0de1634:	bf04      	itt	eq
c0de1636:	2000      	moveq	r0, #0
c0de1638:	bdb0      	popeq	{r4, r5, r7, pc}
c0de163a:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de163e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de1642:	f7ff b866 	b.w	c0de0712 <io_send_sw>
c0de1646:	bf00      	nop
c0de1648:	000002f0 	.word	0x000002f0
c0de164c:	00000330 	.word	0x00000330
c0de1650:	00000350 	.word	0x00000350

c0de1654 <handler_cmd_frost_commit>:
c0de1654:	b570      	push	{r4, r5, r6, lr}
c0de1656:	b0bc      	sub	sp, #240	@ 0xf0
c0de1658:	4604      	mov	r4, r0
c0de165a:	f000 f8b1 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de165e:	bba8      	cbnz	r0, c0de16cc <handler_cmd_frost_commit+0x78>
c0de1660:	6820      	ldr	r0, [r4, #0]
c0de1662:	7801      	ldrb	r1, [r0, #0]
c0de1664:	a806      	add	r0, sp, #24
c0de1666:	f001 fc15 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de166a:	bb78      	cbnz	r0, c0de16cc <handler_cmd_frost_commit+0x78>
c0de166c:	ad06      	add	r5, sp, #24
c0de166e:	466e      	mov	r6, sp
c0de1670:	4628      	mov	r0, r5
c0de1672:	4631      	mov	r1, r6
c0de1674:	f001 fa8e 	bl	c0de2b94 <tEdwards_alloc>
c0de1678:	f106 040c 	add.w	r4, r6, #12
c0de167c:	4628      	mov	r0, r5
c0de167e:	4621      	mov	r1, r4
c0de1680:	f001 fa88 	bl	c0de2b94 <tEdwards_alloc>
c0de1684:	4814      	ldr	r0, [pc, #80]	@ (c0de16d8 <handler_cmd_frost_commit+0x84>)
c0de1686:	4633      	mov	r3, r6
c0de1688:	eb09 0100 	add.w	r1, r9, r0
c0de168c:	4813      	ldr	r0, [pc, #76]	@ (c0de16dc <handler_cmd_frost_commit+0x88>)
c0de168e:	eb09 0200 	add.w	r2, r9, r0
c0de1692:	4628      	mov	r0, r5
c0de1694:	f000 ff91 	bl	c0de25ba <zkn_frost_commit>
c0de1698:	b9c0      	cbnz	r0, c0de16cc <handler_cmd_frost_commit+0x78>
c0de169a:	ad1c      	add	r5, sp, #112	@ 0x70
c0de169c:	a806      	add	r0, sp, #24
c0de169e:	4669      	mov	r1, sp
c0de16a0:	f105 0320 	add.w	r3, r5, #32
c0de16a4:	462a      	mov	r2, r5
c0de16a6:	f001 fd80 	bl	c0de31aa <tEdwards_export>
c0de16aa:	b978      	cbnz	r0, c0de16cc <handler_cmd_frost_commit+0x78>
c0de16ac:	f105 0240 	add.w	r2, r5, #64	@ 0x40
c0de16b0:	f105 0360 	add.w	r3, r5, #96	@ 0x60
c0de16b4:	a806      	add	r0, sp, #24
c0de16b6:	4621      	mov	r1, r4
c0de16b8:	f001 fd77 	bl	c0de31aa <tEdwards_export>
c0de16bc:	b930      	cbnz	r0, c0de16cc <handler_cmd_frost_commit+0x78>
c0de16be:	a81c      	add	r0, sp, #112	@ 0x70
c0de16c0:	2180      	movs	r1, #128	@ 0x80
c0de16c2:	f7ff f81b 	bl	c0de06fc <io_send_response_pointer>
c0de16c6:	f006 f939 	bl	c0de793c <cx_bn_unlock>
c0de16ca:	b118      	cbz	r0, c0de16d4 <handler_cmd_frost_commit+0x80>
c0de16cc:	f000 f87c 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de16d0:	b03c      	add	sp, #240	@ 0xf0
c0de16d2:	bd70      	pop	{r4, r5, r6, pc}
c0de16d4:	2000      	movs	r0, #0
c0de16d6:	e7fb      	b.n	c0de16d0 <handler_cmd_frost_commit+0x7c>
c0de16d8:	00000350 	.word	0x00000350
c0de16dc:	00000370 	.word	0x00000370

c0de16e0 <handler_cmd_frost_inject_com1>:
c0de16e0:	b510      	push	{r4, lr}
c0de16e2:	4908      	ldr	r1, [pc, #32]	@ (c0de1704 <handler_cmd_frost_inject_com1+0x24>)
c0de16e4:	f000 f898 	bl	c0de1818 <OUTLINED_FUNCTION_12>
c0de16e8:	f006 fbe6 	bl	c0de7eb8 <__aeabi_memcpy>
c0de16ec:	f000 f88a 	bl	c0de1804 <OUTLINED_FUNCTION_9>
c0de16f0:	2cf0      	cmp	r4, #240	@ 0xf0
c0de16f2:	bf04      	itt	eq
c0de16f4:	2000      	moveq	r0, #0
c0de16f6:	bd10      	popeq	{r4, pc}
c0de16f8:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de16fc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1700:	f7ff b807 	b.w	c0de0712 <io_send_sw>
c0de1704:	000003b0 	.word	0x000003b0

c0de1708 <handler_cmd_frost_inject_com2>:
c0de1708:	b510      	push	{r4, lr}
c0de170a:	4909      	ldr	r1, [pc, #36]	@ (c0de1730 <handler_cmd_frost_inject_com2+0x28>)
c0de170c:	f000 f884 	bl	c0de1818 <OUTLINED_FUNCTION_12>
c0de1710:	31f0      	adds	r1, #240	@ 0xf0
c0de1712:	f006 fbd1 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1716:	f000 f875 	bl	c0de1804 <OUTLINED_FUNCTION_9>
c0de171a:	2cf0      	cmp	r4, #240	@ 0xf0
c0de171c:	bf04      	itt	eq
c0de171e:	2000      	moveq	r0, #0
c0de1720:	bd10      	popeq	{r4, pc}
c0de1722:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de1726:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de172a:	f7fe bff2 	b.w	c0de0712 <io_send_sw>
c0de172e:	bf00      	nop
c0de1730:	000003b0 	.word	0x000003b0

c0de1734 <handler_cmd_frost_partial_sign>:
c0de1734:	b5b0      	push	{r4, r5, r7, lr}
c0de1736:	b0b6      	sub	sp, #216	@ 0xd8
c0de1738:	f000 f842 	bl	c0de17c0 <OUTLINED_FUNCTION_0>
c0de173c:	bb50      	cbnz	r0, c0de1794 <handler_cmd_frost_partial_sign+0x60>
c0de173e:	a810      	add	r0, sp, #64	@ 0x40
c0de1740:	2102      	movs	r1, #2
c0de1742:	f001 fba7 	bl	c0de2e94 <tEdwards_Curve_alloc_init>
c0de1746:	bb28      	cbnz	r0, c0de1794 <handler_cmd_frost_partial_sign+0x60>
c0de1748:	ac08      	add	r4, sp, #32
c0de174a:	491c      	ldr	r1, [pc, #112]	@ (c0de17bc <handler_cmd_frost_partial_sign+0x88>)
c0de174c:	2220      	movs	r2, #32
c0de174e:	2520      	movs	r5, #32
c0de1750:	4620      	mov	r0, r4
c0de1752:	4479      	add	r1, pc
c0de1754:	f006 fbb0 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1758:	4813      	ldr	r0, [pc, #76]	@ (c0de17a8 <handler_cmd_frost_partial_sign+0x74>)
c0de175a:	4448      	add	r0, r9
c0de175c:	7fc1      	ldrb	r1, [r0, #31]
c0de175e:	a826      	add	r0, sp, #152	@ 0x98
c0de1760:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de1764:	9007      	str	r0, [sp, #28]
c0de1766:	a82e      	add	r0, sp, #184	@ 0xb8
c0de1768:	9004      	str	r0, [sp, #16]
c0de176a:	2003      	movs	r0, #3
c0de176c:	9003      	str	r0, [sp, #12]
c0de176e:	480f      	ldr	r0, [pc, #60]	@ (c0de17ac <handler_cmd_frost_partial_sign+0x78>)
c0de1770:	4448      	add	r0, r9
c0de1772:	9002      	str	r0, [sp, #8]
c0de1774:	480e      	ldr	r0, [pc, #56]	@ (c0de17b0 <handler_cmd_frost_partial_sign+0x7c>)
c0de1776:	4448      	add	r0, r9
c0de1778:	f100 0220 	add.w	r2, r0, #32
c0de177c:	e9cd 0200 	strd	r0, r2, [sp]
c0de1780:	480c      	ldr	r0, [pc, #48]	@ (c0de17b4 <handler_cmd_frost_partial_sign+0x80>)
c0de1782:	eb09 0200 	add.w	r2, r9, r0
c0de1786:	480c      	ldr	r0, [pc, #48]	@ (c0de17b8 <handler_cmd_frost_partial_sign+0x84>)
c0de1788:	eb09 0300 	add.w	r3, r9, r0
c0de178c:	a810      	add	r0, sp, #64	@ 0x40
c0de178e:	f001 f919 	bl	c0de29c4 <zkn_partial_sig>
c0de1792:	b118      	cbz	r0, c0de179c <handler_cmd_frost_partial_sign+0x68>
c0de1794:	f000 f818 	bl	c0de17c8 <OUTLINED_FUNCTION_1>
c0de1798:	b036      	add	sp, #216	@ 0xd8
c0de179a:	bdb0      	pop	{r4, r5, r7, pc}
c0de179c:	a826      	add	r0, sp, #152	@ 0x98
c0de179e:	f000 f82e 	bl	c0de17fe <OUTLINED_FUNCTION_8>
c0de17a2:	2000      	movs	r0, #0
c0de17a4:	e7f8      	b.n	c0de1798 <handler_cmd_frost_partial_sign+0x64>
c0de17a6:	bf00      	nop
c0de17a8:	00000330 	.word	0x00000330
c0de17ac:	000003b0 	.word	0x000003b0
c0de17b0:	00000370 	.word	0x00000370
c0de17b4:	00000350 	.word	0x00000350
c0de17b8:	000002f0 	.word	0x000002f0
c0de17bc:	00006e02 	.word	0x00006e02

c0de17c0 <OUTLINED_FUNCTION_0>:
c0de17c0:	2020      	movs	r0, #32
c0de17c2:	2100      	movs	r1, #0
c0de17c4:	f006 b8b0 	b.w	c0de7928 <cx_bn_lock>

c0de17c8 <OUTLINED_FUNCTION_1>:
c0de17c8:	b280      	uxth	r0, r0
c0de17ca:	f7fe bfa2 	b.w	c0de0712 <io_send_sw>

c0de17ce <OUTLINED_FUNCTION_2>:
c0de17ce:	2120      	movs	r1, #32
c0de17d0:	2320      	movs	r3, #32
c0de17d2:	f006 b8c5 	b.w	c0de7960 <cx_bn_alloc_init>

c0de17d6 <OUTLINED_FUNCTION_3>:
c0de17d6:	2220      	movs	r2, #32
c0de17d8:	f006 b902 	b.w	c0de79e0 <cx_bn_export>

c0de17dc <OUTLINED_FUNCTION_4>:
c0de17dc:	2120      	movs	r1, #32
c0de17de:	f006 b8b5 	b.w	c0de794c <cx_bn_alloc>

c0de17e2 <OUTLINED_FUNCTION_5>:
c0de17e2:	2320      	movs	r3, #32
c0de17e4:	f006 b8bc 	b.w	c0de7960 <cx_bn_alloc_init>

c0de17e8 <OUTLINED_FUNCTION_6>:
c0de17e8:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de17ec:	9b01      	ldr	r3, [sp, #4]
c0de17ee:	9a04      	ldr	r2, [sp, #16]
c0de17f0:	3001      	adds	r0, #1
c0de17f2:	3901      	subs	r1, #1
c0de17f4:	4770      	bx	lr

c0de17f6 <OUTLINED_FUNCTION_7>:
c0de17f6:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de17fa:	f7fe bf7f 	b.w	c0de06fc <io_send_response_pointer>

c0de17fe <OUTLINED_FUNCTION_8>:
c0de17fe:	2120      	movs	r1, #32
c0de1800:	f7fe bf7c 	b.w	c0de06fc <io_send_response_pointer>

c0de1804 <OUTLINED_FUNCTION_9>:
c0de1804:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de1808:	f7fe bf83 	b.w	c0de0712 <io_send_sw>

c0de180c <OUTLINED_FUNCTION_10>:
c0de180c:	4622      	mov	r2, r4
c0de180e:	f001 bccc 	b.w	c0de31aa <tEdwards_export>

c0de1812 <OUTLINED_FUNCTION_11>:
c0de1812:	4629      	mov	r1, r5
c0de1814:	f001 bb3e 	b.w	c0de2e94 <tEdwards_Curve_alloc_init>

c0de1818 <OUTLINED_FUNCTION_12>:
c0de1818:	eb09 0201 	add.w	r2, r9, r1
c0de181c:	e9d0 1400 	ldrd	r1, r4, [r0]
c0de1820:	4610      	mov	r0, r2
c0de1822:	22f0      	movs	r2, #240	@ 0xf0
c0de1824:	4770      	bx	lr
	...

c0de1828 <helper_send_response_pubkey>:
c0de1828:	b5b0      	push	{r4, r5, r7, lr}
c0de182a:	b09a      	sub	sp, #104	@ 0x68
c0de182c:	2041      	movs	r0, #65	@ 0x41
c0de182e:	f10d 0405 	add.w	r4, sp, #5
c0de1832:	2241      	movs	r2, #65	@ 0x41
c0de1834:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1838:	480b      	ldr	r0, [pc, #44]	@ (c0de1868 <helper_send_response_pubkey+0x40>)
c0de183a:	eb09 0500 	add.w	r5, r9, r0
c0de183e:	1c60      	adds	r0, r4, #1
c0de1840:	f105 0108 	add.w	r1, r5, #8
c0de1844:	f006 fb38 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1848:	2020      	movs	r0, #32
c0de184a:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de184e:	2220      	movs	r2, #32
c0de1850:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de1854:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de1858:	f006 fb2e 	bl	c0de7eb8 <__aeabi_memcpy>
c0de185c:	4620      	mov	r0, r4
c0de185e:	2163      	movs	r1, #99	@ 0x63
c0de1860:	f000 f804 	bl	c0de186c <io_send_response_pointer>
c0de1864:	b01a      	add	sp, #104	@ 0x68
c0de1866:	bdb0      	pop	{r4, r5, r7, pc}
c0de1868:	00000000 	.word	0x00000000

c0de186c <io_send_response_pointer>:
c0de186c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de186e:	2200      	movs	r2, #0
c0de1870:	ab01      	add	r3, sp, #4
c0de1872:	c307      	stmia	r3!, {r0, r1, r2}
c0de1874:	a801      	add	r0, sp, #4
c0de1876:	2101      	movs	r1, #1
c0de1878:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de187c:	f005 fb62 	bl	c0de6f44 <io_send_response_buffers>
c0de1880:	b004      	add	sp, #16
c0de1882:	bd80      	pop	{r7, pc}

c0de1884 <helper_send_response_sig>:
c0de1884:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1886:	b099      	sub	sp, #100	@ 0x64
c0de1888:	f10d 0402 	add.w	r4, sp, #2
c0de188c:	2161      	movs	r1, #97	@ 0x61
c0de188e:	1c65      	adds	r5, r4, #1
c0de1890:	4628      	mov	r0, r5
c0de1892:	f006 fb1b 	bl	c0de7ecc <__aeabi_memclr>
c0de1896:	4808      	ldr	r0, [pc, #32]	@ (c0de18b8 <helper_send_response_sig+0x34>)
c0de1898:	f000 f810 	bl	c0de18bc <OUTLINED_FUNCTION_0>
c0de189c:	f88d 6002 	strb.w	r6, [sp, #2]
c0de18a0:	f006 fb0a 	bl	c0de7eb8 <__aeabi_memcpy>
c0de18a4:	f897 12b9 	ldrb.w	r1, [r7, #697]	@ 0x2b9
c0de18a8:	1930      	adds	r0, r6, r4
c0de18aa:	7041      	strb	r1, [r0, #1]
c0de18ac:	1cb1      	adds	r1, r6, #2
c0de18ae:	4620      	mov	r0, r4
c0de18b0:	f7ff ffdc 	bl	c0de186c <io_send_response_pointer>
c0de18b4:	b019      	add	sp, #100	@ 0x64
c0de18b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de18b8:	00000000 	.word	0x00000000

c0de18bc <OUTLINED_FUNCTION_0>:
c0de18bc:	eb09 0700 	add.w	r7, r9, r0
c0de18c0:	4628      	mov	r0, r5
c0de18c2:	f897 62b8 	ldrb.w	r6, [r7, #696]	@ 0x2b8
c0de18c6:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de18ca:	4632      	mov	r2, r6
c0de18cc:	4770      	bx	lr

c0de18ce <swap_handle_check_address>:
c0de18ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de18d2:	b0bc      	sub	sp, #240	@ 0xf0
c0de18d4:	4604      	mov	r4, r0
c0de18d6:	2000      	movs	r0, #0
c0de18d8:	68a5      	ldr	r5, [r4, #8]
c0de18da:	61a0      	str	r0, [r4, #24]
c0de18dc:	2d00      	cmp	r5, #0
c0de18de:	d04d      	beq.n	c0de197c <swap_handle_check_address+0xae>
c0de18e0:	6920      	ldr	r0, [r4, #16]
c0de18e2:	2800      	cmp	r0, #0
c0de18e4:	d04a      	beq.n	c0de197c <swap_handle_check_address+0xae>
c0de18e6:	f006 fb4d 	bl	c0de7f84 <strlen>
c0de18ea:	2828      	cmp	r0, #40	@ 0x28
c0de18ec:	d146      	bne.n	c0de197c <swap_handle_check_address+0xae>
c0de18ee:	7b20      	ldrb	r0, [r4, #12]
c0de18f0:	f04f 0800 	mov.w	r8, #0
c0de18f4:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de18f6:	2161      	movs	r1, #97	@ 0x61
c0de18f8:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de18fc:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de18fe:	ad15      	add	r5, sp, #84	@ 0x54
c0de1900:	4628      	mov	r0, r5
c0de1902:	f006 fae3 	bl	c0de7ecc <__aeabi_memclr>
c0de1906:	ae39      	add	r6, sp, #228	@ 0xe4
c0de1908:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de190c:	4630      	mov	r0, r6
c0de190e:	f005 f8c7 	bl	c0de6aa0 <buffer_read_u8>
c0de1912:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de1916:	af2e      	add	r7, sp, #184	@ 0xb8
c0de1918:	4630      	mov	r0, r6
c0de191a:	4639      	mov	r1, r7
c0de191c:	f005 f913 	bl	c0de6b46 <buffer_read_bip32_path>
c0de1920:	2005      	movs	r0, #5
c0de1922:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de1926:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de192a:	463a      	mov	r2, r7
c0de192c:	f8cd 8010 	str.w	r8, [sp, #16]
c0de1930:	e9cd 5100 	strd	r5, r1, [sp]
c0de1934:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de1938:	2000      	movs	r0, #0
c0de193a:	2121      	movs	r1, #33	@ 0x21
c0de193c:	f005 f9c4 	bl	c0de6cc8 <bip32_derive_with_seed_get_pubkey_256>
c0de1940:	b9e0      	cbnz	r0, c0de197c <swap_handle_check_address+0xae>
c0de1942:	ad10      	add	r5, sp, #64	@ 0x40
c0de1944:	2114      	movs	r1, #20
c0de1946:	4628      	mov	r0, r5
c0de1948:	f006 fac0 	bl	c0de7ecc <__aeabi_memclr>
c0de194c:	a815      	add	r0, sp, #84	@ 0x54
c0de194e:	4629      	mov	r1, r5
c0de1950:	2214      	movs	r2, #20
c0de1952:	f7fe fb69 	bl	c0de0028 <address_from_pubkey>
c0de1956:	ae05      	add	r6, sp, #20
c0de1958:	2129      	movs	r1, #41	@ 0x29
c0de195a:	4630      	mov	r0, r6
c0de195c:	f006 fab6 	bl	c0de7ecc <__aeabi_memclr>
c0de1960:	4628      	mov	r0, r5
c0de1962:	2114      	movs	r1, #20
c0de1964:	4632      	mov	r2, r6
c0de1966:	2329      	movs	r3, #41	@ 0x29
c0de1968:	f005 fa8c 	bl	c0de6e84 <format_hex>
c0de196c:	6921      	ldr	r1, [r4, #16]
c0de196e:	4630      	mov	r0, r6
c0de1970:	2229      	movs	r2, #41	@ 0x29
c0de1972:	f006 fb0f 	bl	c0de7f94 <strncmp>
c0de1976:	b908      	cbnz	r0, c0de197c <swap_handle_check_address+0xae>
c0de1978:	2001      	movs	r0, #1
c0de197a:	61a0      	str	r0, [r4, #24]
c0de197c:	b03c      	add	sp, #240	@ 0xf0
c0de197e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de1984 <swap_handle_get_printable_amount>:
c0de1984:	b570      	push	{r4, r5, r6, lr}
c0de1986:	b08c      	sub	sp, #48	@ 0x30
c0de1988:	ac04      	add	r4, sp, #16
c0de198a:	4606      	mov	r6, r0
c0de198c:	211e      	movs	r1, #30
c0de198e:	4620      	mov	r0, r4
c0de1990:	f006 fa9c 	bl	c0de7ecc <__aeabi_memclr>
c0de1994:	f106 050e 	add.w	r5, r6, #14
c0de1998:	2132      	movs	r1, #50	@ 0x32
c0de199a:	4628      	mov	r0, r5
c0de199c:	f006 fa96 	bl	c0de7ecc <__aeabi_memclr>
c0de19a0:	2000      	movs	r0, #0
c0de19a2:	7b31      	ldrb	r1, [r6, #12]
c0de19a4:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de19a8:	68b0      	ldr	r0, [r6, #8]
c0de19aa:	aa02      	add	r2, sp, #8
c0de19ac:	f005 fc56 	bl	c0de725c <swap_str_to_u64>
c0de19b0:	b178      	cbz	r0, c0de19d2 <swap_handle_get_printable_amount+0x4e>
c0de19b2:	2003      	movs	r0, #3
c0de19b4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de19b8:	211e      	movs	r1, #30
c0de19ba:	9000      	str	r0, [sp, #0]
c0de19bc:	4620      	mov	r0, r4
c0de19be:	f005 fa1a 	bl	c0de6df6 <format_fpu64>
c0de19c2:	9400      	str	r4, [sp, #0]
c0de19c4:	4628      	mov	r0, r5
c0de19c6:	2132      	movs	r1, #50	@ 0x32
c0de19c8:	231e      	movs	r3, #30
c0de19ca:	4a03      	ldr	r2, [pc, #12]	@ (c0de19d8 <swap_handle_get_printable_amount+0x54>)
c0de19cc:	447a      	add	r2, pc
c0de19ce:	f005 fddf 	bl	c0de7590 <snprintf>
c0de19d2:	b00c      	add	sp, #48	@ 0x30
c0de19d4:	bd70      	pop	{r4, r5, r6, pc}
c0de19d6:	bf00      	nop
c0de19d8:	00006a38 	.word	0x00006a38

c0de19dc <swap_copy_transaction_parameters>:
c0de19dc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de19de:	b093      	sub	sp, #76	@ 0x4c
c0de19e0:	6985      	ldr	r5, [r0, #24]
c0de19e2:	b3ad      	cbz	r5, c0de1a50 <swap_copy_transaction_parameters+0x74>
c0de19e4:	4604      	mov	r4, r0
c0de19e6:	4628      	mov	r0, r5
c0de19e8:	f006 facc 	bl	c0de7f84 <strlen>
c0de19ec:	2828      	cmp	r0, #40	@ 0x28
c0de19ee:	d12f      	bne.n	c0de1a50 <swap_copy_transaction_parameters+0x74>
c0de19f0:	68a7      	ldr	r7, [r4, #8]
c0de19f2:	b36f      	cbz	r7, c0de1a50 <swap_copy_transaction_parameters+0x74>
c0de19f4:	466e      	mov	r6, sp
c0de19f6:	2148      	movs	r1, #72	@ 0x48
c0de19f8:	4630      	mov	r0, r6
c0de19fa:	f006 fa67 	bl	c0de7ecc <__aeabi_memclr>
c0de19fe:	f106 0018 	add.w	r0, r6, #24
c0de1a02:	2100      	movs	r1, #0
c0de1a04:	2928      	cmp	r1, #40	@ 0x28
c0de1a06:	d009      	beq.n	c0de1a1c <swap_copy_transaction_parameters+0x40>
c0de1a08:	5c6a      	ldrb	r2, [r5, r1]
c0de1a0a:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de1a0e:	b2db      	uxtb	r3, r3
c0de1a10:	2b1a      	cmp	r3, #26
c0de1a12:	bf38      	it	cc
c0de1a14:	3a20      	subcc	r2, #32
c0de1a16:	5442      	strb	r2, [r0, r1]
c0de1a18:	3101      	adds	r1, #1
c0de1a1a:	e7f3      	b.n	c0de1a04 <swap_copy_transaction_parameters+0x28>
c0de1a1c:	7b21      	ldrb	r1, [r4, #12]
c0de1a1e:	f106 0208 	add.w	r2, r6, #8
c0de1a22:	4638      	mov	r0, r7
c0de1a24:	f005 fc1a 	bl	c0de725c <swap_str_to_u64>
c0de1a28:	b190      	cbz	r0, c0de1a50 <swap_copy_transaction_parameters+0x74>
c0de1a2a:	7d21      	ldrb	r1, [r4, #20]
c0de1a2c:	6920      	ldr	r0, [r4, #16]
c0de1a2e:	f106 0210 	add.w	r2, r6, #16
c0de1a32:	f005 fc13 	bl	c0de725c <swap_str_to_u64>
c0de1a36:	b158      	cbz	r0, c0de1a50 <swap_copy_transaction_parameters+0x74>
c0de1a38:	2401      	movs	r4, #1
c0de1a3a:	f88d 4000 	strb.w	r4, [sp]
c0de1a3e:	f005 fd9b 	bl	c0de7578 <os_explicit_zero_BSS_segment>
c0de1a42:	4805      	ldr	r0, [pc, #20]	@ (c0de1a58 <swap_copy_transaction_parameters+0x7c>)
c0de1a44:	4669      	mov	r1, sp
c0de1a46:	2248      	movs	r2, #72	@ 0x48
c0de1a48:	4448      	add	r0, r9
c0de1a4a:	f006 fa35 	bl	c0de7eb8 <__aeabi_memcpy>
c0de1a4e:	e000      	b.n	c0de1a52 <swap_copy_transaction_parameters+0x76>
c0de1a50:	2400      	movs	r4, #0
c0de1a52:	4620      	mov	r0, r4
c0de1a54:	b013      	add	sp, #76	@ 0x4c
c0de1a56:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1a58:	00000590 	.word	0x00000590

c0de1a5c <swap_check_validity>:
c0de1a5c:	b570      	push	{r4, r5, r6, lr}
c0de1a5e:	b08c      	sub	sp, #48	@ 0x30
c0de1a60:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1ad8 <swap_check_validity+0x7c>)
c0de1a62:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1a66:	b32c      	cbz	r4, c0de1ab4 <swap_check_validity+0x58>
c0de1a68:	eb09 0406 	add.w	r4, r9, r6
c0de1a6c:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de1a70:	4069      	eors	r1, r5
c0de1a72:	4060      	eors	r0, r4
c0de1a74:	4308      	orrs	r0, r1
c0de1a76:	d121      	bne.n	c0de1abc <swap_check_validity+0x60>
c0de1a78:	eb09 0006 	add.w	r0, r9, r6
c0de1a7c:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de1a80:	4059      	eors	r1, r3
c0de1a82:	4050      	eors	r0, r2
c0de1a84:	4308      	orrs	r0, r1
c0de1a86:	d11d      	bne.n	c0de1ac4 <swap_check_validity+0x68>
c0de1a88:	ad01      	add	r5, sp, #4
c0de1a8a:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de1a8c:	2129      	movs	r1, #41	@ 0x29
c0de1a8e:	4628      	mov	r0, r5
c0de1a90:	f006 fa1c 	bl	c0de7ecc <__aeabi_memclr>
c0de1a94:	4620      	mov	r0, r4
c0de1a96:	2114      	movs	r1, #20
c0de1a98:	462a      	mov	r2, r5
c0de1a9a:	2329      	movs	r3, #41	@ 0x29
c0de1a9c:	f005 f9f2 	bl	c0de6e84 <format_hex>
c0de1aa0:	eb09 0006 	add.w	r0, r9, r6
c0de1aa4:	4629      	mov	r1, r5
c0de1aa6:	3018      	adds	r0, #24
c0de1aa8:	f006 fa62 	bl	c0de7f70 <strcmp>
c0de1aac:	b970      	cbnz	r0, c0de1acc <swap_check_validity+0x70>
c0de1aae:	2001      	movs	r0, #1
c0de1ab0:	b00c      	add	sp, #48	@ 0x30
c0de1ab2:	bd70      	pop	{r4, r5, r6, pc}
c0de1ab4:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1ab8:	21ff      	movs	r1, #255	@ 0xff
c0de1aba:	e00a      	b.n	c0de1ad2 <swap_check_validity+0x76>
c0de1abc:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1ac0:	2101      	movs	r1, #1
c0de1ac2:	e006      	b.n	c0de1ad2 <swap_check_validity+0x76>
c0de1ac4:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1ac8:	2103      	movs	r1, #3
c0de1aca:	e002      	b.n	c0de1ad2 <swap_check_validity+0x76>
c0de1acc:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1ad0:	2102      	movs	r1, #2
c0de1ad2:	2200      	movs	r2, #0
c0de1ad4:	f005 fb89 	bl	c0de71ea <send_swap_error_simple>
c0de1ad8:	00000590 	.word	0x00000590

c0de1adc <transaction_deserialize>:
c0de1adc:	b570      	push	{r4, r5, r6, lr}
c0de1ade:	460d      	mov	r5, r1
c0de1ae0:	4604      	mov	r4, r0
c0de1ae2:	b910      	cbnz	r0, c0de1aea <transaction_deserialize+0xe>
c0de1ae4:	2001      	movs	r0, #1
c0de1ae6:	f005 fcd3 	bl	c0de7490 <assert_exit>
c0de1aea:	b915      	cbnz	r5, c0de1af2 <transaction_deserialize+0x16>
c0de1aec:	2001      	movs	r0, #1
c0de1aee:	f005 fccf 	bl	c0de7490 <assert_exit>
c0de1af2:	6860      	ldr	r0, [r4, #4]
c0de1af4:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de1af8:	d901      	bls.n	c0de1afe <transaction_deserialize+0x22>
c0de1afa:	20f9      	movs	r0, #249	@ 0xf9
c0de1afc:	e04b      	b.n	c0de1b96 <transaction_deserialize+0xba>
c0de1afe:	4620      	mov	r0, r4
c0de1b00:	4629      	mov	r1, r5
c0de1b02:	2200      	movs	r2, #0
c0de1b04:	f004 ffe2 	bl	c0de6acc <buffer_read_u64>
c0de1b08:	b330      	cbz	r0, c0de1b58 <transaction_deserialize+0x7c>
c0de1b0a:	6820      	ldr	r0, [r4, #0]
c0de1b0c:	68a1      	ldr	r1, [r4, #8]
c0de1b0e:	4408      	add	r0, r1
c0de1b10:	2114      	movs	r1, #20
c0de1b12:	61a8      	str	r0, [r5, #24]
c0de1b14:	4620      	mov	r0, r4
c0de1b16:	f004 ffb8 	bl	c0de6a8a <buffer_seek_cur>
c0de1b1a:	b1f8      	cbz	r0, c0de1b5c <transaction_deserialize+0x80>
c0de1b1c:	f105 0108 	add.w	r1, r5, #8
c0de1b20:	4620      	mov	r0, r4
c0de1b22:	2200      	movs	r2, #0
c0de1b24:	2600      	movs	r6, #0
c0de1b26:	f004 ffd1 	bl	c0de6acc <buffer_read_u64>
c0de1b2a:	b1c8      	cbz	r0, c0de1b60 <transaction_deserialize+0x84>
c0de1b2c:	f105 0120 	add.w	r1, r5, #32
c0de1b30:	4620      	mov	r0, r4
c0de1b32:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1b36:	f004 ffe9 	bl	c0de6b0c <buffer_read_varint>
c0de1b3a:	6a29      	ldr	r1, [r5, #32]
c0de1b3c:	b990      	cbnz	r0, c0de1b64 <transaction_deserialize+0x88>
c0de1b3e:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1b40:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1b44:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1b48:	2300      	movs	r3, #0
c0de1b4a:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de1b4e:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1b52:	d207      	bcs.n	c0de1b64 <transaction_deserialize+0x88>
c0de1b54:	20fc      	movs	r0, #252	@ 0xfc
c0de1b56:	e01e      	b.n	c0de1b96 <transaction_deserialize+0xba>
c0de1b58:	20ff      	movs	r0, #255	@ 0xff
c0de1b5a:	e01c      	b.n	c0de1b96 <transaction_deserialize+0xba>
c0de1b5c:	20fe      	movs	r0, #254	@ 0xfe
c0de1b5e:	e01a      	b.n	c0de1b96 <transaction_deserialize+0xba>
c0de1b60:	20fd      	movs	r0, #253	@ 0xfd
c0de1b62:	e018      	b.n	c0de1b96 <transaction_deserialize+0xba>
c0de1b64:	6820      	ldr	r0, [r4, #0]
c0de1b66:	68a2      	ldr	r2, [r4, #8]
c0de1b68:	4410      	add	r0, r2
c0de1b6a:	61e8      	str	r0, [r5, #28]
c0de1b6c:	4620      	mov	r0, r4
c0de1b6e:	f004 ff8c 	bl	c0de6a8a <buffer_seek_cur>
c0de1b72:	b168      	cbz	r0, c0de1b90 <transaction_deserialize+0xb4>
c0de1b74:	f105 031c 	add.w	r3, r5, #28
c0de1b78:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de1b7a:	f000 f80e 	bl	c0de1b9a <transaction_utils_check_encoding>
c0de1b7e:	b148      	cbz	r0, c0de1b94 <transaction_deserialize+0xb8>
c0de1b80:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de1b84:	f06f 0006 	mvn.w	r0, #6
c0de1b88:	428a      	cmp	r2, r1
c0de1b8a:	bf08      	it	eq
c0de1b8c:	2001      	moveq	r0, #1
c0de1b8e:	e002      	b.n	c0de1b96 <transaction_deserialize+0xba>
c0de1b90:	20fb      	movs	r0, #251	@ 0xfb
c0de1b92:	e000      	b.n	c0de1b96 <transaction_deserialize+0xba>
c0de1b94:	20fa      	movs	r0, #250	@ 0xfa
c0de1b96:	b240      	sxtb	r0, r0
c0de1b98:	bd70      	pop	{r4, r5, r6, pc}

c0de1b9a <transaction_utils_check_encoding>:
c0de1b9a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1b9c:	461c      	mov	r4, r3
c0de1b9e:	4615      	mov	r5, r2
c0de1ba0:	4606      	mov	r6, r0
c0de1ba2:	b910      	cbnz	r0, c0de1baa <transaction_utils_check_encoding+0x10>
c0de1ba4:	2001      	movs	r0, #1
c0de1ba6:	f005 fc73 	bl	c0de7490 <assert_exit>
c0de1baa:	2000      	movs	r0, #0
c0de1bac:	2300      	movs	r3, #0
c0de1bae:	4602      	mov	r2, r0
c0de1bb0:	1b40      	subs	r0, r0, r5
c0de1bb2:	4619      	mov	r1, r3
c0de1bb4:	eb73 0004 	sbcs.w	r0, r3, r4
c0de1bb8:	d206      	bcs.n	c0de1bc8 <transaction_utils_check_encoding+0x2e>
c0de1bba:	56b7      	ldrsb	r7, [r6, r2]
c0de1bbc:	1c50      	adds	r0, r2, #1
c0de1bbe:	f141 0300 	adc.w	r3, r1, #0
c0de1bc2:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de1bc6:	dcf2      	bgt.n	c0de1bae <transaction_utils_check_encoding+0x14>
c0de1bc8:	2000      	movs	r0, #0
c0de1bca:	1b52      	subs	r2, r2, r5
c0de1bcc:	41a1      	sbcs	r1, r4
c0de1bce:	bf28      	it	cs
c0de1bd0:	2001      	movcs	r0, #1
c0de1bd2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1bd4 <validate_pubkey>:
c0de1bd4:	b108      	cbz	r0, c0de1bda <validate_pubkey+0x6>
c0de1bd6:	f7ff be27 	b.w	c0de1828 <helper_send_response_pubkey>
c0de1bda:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1bde:	f000 b800 	b.w	c0de1be2 <io_send_sw>

c0de1be2 <io_send_sw>:
c0de1be2:	b580      	push	{r7, lr}
c0de1be4:	4602      	mov	r2, r0
c0de1be6:	2000      	movs	r0, #0
c0de1be8:	2100      	movs	r1, #0
c0de1bea:	f005 f9ab 	bl	c0de6f44 <io_send_response_buffers>
c0de1bee:	bd80      	pop	{r7, pc}

c0de1bf0 <validate_transaction>:
c0de1bf0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1bf4:	b08c      	sub	sp, #48	@ 0x30
c0de1bf6:	b378      	cbz	r0, c0de1c58 <validate_transaction+0x68>
c0de1bf8:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de1c90 <validate_transaction+0xa0>
c0de1bfc:	2002      	movs	r0, #2
c0de1bfe:	2500      	movs	r5, #0
c0de1c00:	2720      	movs	r7, #32
c0de1c02:	2203      	movs	r2, #3
c0de1c04:	f240 6401 	movw	r4, #1537	@ 0x601
c0de1c08:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de1c0c:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de1c10:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de1c12:	f809 0008 	strb.w	r0, [r9, r8]
c0de1c16:	2060      	movs	r0, #96	@ 0x60
c0de1c18:	900a      	str	r0, [sp, #40]	@ 0x28
c0de1c1a:	eb09 0008 	add.w	r0, r9, r8
c0de1c1e:	f890 32ec 	ldrb.w	r3, [r0, #748]	@ 0x2ec
c0de1c22:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1c26:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1c2a:	e9cd 4200 	strd	r4, r2, [sp]
c0de1c2e:	f500 7231 	add.w	r2, r0, #708	@ 0x2c4
c0de1c32:	2000      	movs	r0, #0
c0de1c34:	9508      	str	r5, [sp, #32]
c0de1c36:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1c3a:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de1c3e:	2121      	movs	r1, #33	@ 0x21
c0de1c40:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1c44:	f005 f874 	bl	c0de6d30 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1c48:	b188      	cbz	r0, c0de1c6e <validate_transaction+0x7e>
c0de1c4a:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de1c4e:	f809 5008 	strb.w	r5, [r9, r8]
c0de1c52:	f7ff ffc6 	bl	c0de1be2 <io_send_sw>
c0de1c56:	e017      	b.n	c0de1c88 <validate_transaction+0x98>
c0de1c58:	480d      	ldr	r0, [pc, #52]	@ (c0de1c90 <validate_transaction+0xa0>)
c0de1c5a:	2100      	movs	r1, #0
c0de1c5c:	f809 1000 	strb.w	r1, [r9, r0]
c0de1c60:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1c64:	b00c      	add	sp, #48	@ 0x30
c0de1c66:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1c6a:	f7ff bfba 	b.w	c0de1be2 <io_send_sw>
c0de1c6e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1c70:	eb09 0008 	add.w	r0, r9, r8
c0de1c74:	f880 12b8 	strb.w	r1, [r0, #696]	@ 0x2b8
c0de1c78:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de1c7c:	f001 0101 	and.w	r1, r1, #1
c0de1c80:	f880 12b9 	strb.w	r1, [r0, #697]	@ 0x2b9
c0de1c84:	f7ff fdfe 	bl	c0de1884 <helper_send_response_sig>
c0de1c88:	b00c      	add	sp, #48	@ 0x30
c0de1c8a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1c8e:	bf00      	nop
c0de1c90:	00000000 	.word	0x00000000

c0de1c94 <app_quit>:
c0de1c94:	20ff      	movs	r0, #255	@ 0xff
c0de1c96:	f005 ffd3 	bl	c0de7c40 <os_sched_exit>
	...

c0de1c9c <ui_menu_main>:
c0de1c9c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1c9e:	4c19      	ldr	r4, [pc, #100]	@ (c0de1d04 <ui_menu_main+0x68>)
c0de1ca0:	4817      	ldr	r0, [pc, #92]	@ (c0de1d00 <ui_menu_main+0x64>)
c0de1ca2:	447c      	add	r4, pc
c0de1ca4:	eb09 0500 	add.w	r5, r9, r0
c0de1ca8:	f000 f8d8 	bl	c0de1e5c <OUTLINED_FUNCTION_0>
c0de1cac:	2114      	movs	r1, #20
c0de1cae:	7369      	strb	r1, [r5, #13]
c0de1cb0:	4915      	ldr	r1, [pc, #84]	@ (c0de1d08 <ui_menu_main+0x6c>)
c0de1cb2:	4a16      	ldr	r2, [pc, #88]	@ (c0de1d0c <ui_menu_main+0x70>)
c0de1cb4:	4479      	add	r1, pc
c0de1cb6:	447a      	add	r2, pc
c0de1cb8:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de1cbc:	7800      	ldrb	r0, [r0, #0]
c0de1cbe:	7328      	strb	r0, [r5, #12]
c0de1cc0:	f000 f8cc 	bl	c0de1e5c <OUTLINED_FUNCTION_0>
c0de1cc4:	2115      	movs	r1, #21
c0de1cc6:	7669      	strb	r1, [r5, #25]
c0de1cc8:	4911      	ldr	r1, [pc, #68]	@ (c0de1d10 <ui_menu_main+0x74>)
c0de1cca:	4a12      	ldr	r2, [pc, #72]	@ (c0de1d14 <ui_menu_main+0x78>)
c0de1ccc:	4479      	add	r1, pc
c0de1cce:	447a      	add	r2, pc
c0de1cd0:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1cd4:	2100      	movs	r1, #0
c0de1cd6:	7840      	ldrb	r0, [r0, #1]
c0de1cd8:	7628      	strb	r0, [r5, #24]
c0de1cda:	480f      	ldr	r0, [pc, #60]	@ (c0de1d18 <ui_menu_main+0x7c>)
c0de1cdc:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1d1c <ui_menu_main+0x80>)
c0de1cde:	4b10      	ldr	r3, [pc, #64]	@ (c0de1d20 <ui_menu_main+0x84>)
c0de1ce0:	4478      	add	r0, pc
c0de1ce2:	447a      	add	r2, pc
c0de1ce4:	447b      	add	r3, pc
c0de1ce6:	e9cd 3200 	strd	r3, r2, [sp]
c0de1cea:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1cee:	2200      	movs	r2, #0
c0de1cf0:	23ff      	movs	r3, #255	@ 0xff
c0de1cf2:	480c      	ldr	r0, [pc, #48]	@ (c0de1d24 <ui_menu_main+0x88>)
c0de1cf4:	490c      	ldr	r1, [pc, #48]	@ (c0de1d28 <ui_menu_main+0x8c>)
c0de1cf6:	4478      	add	r0, pc
c0de1cf8:	4479      	add	r1, pc
c0de1cfa:	f003 f93b 	bl	c0de4f74 <nbgl_useCaseHomeAndSettings>
c0de1cfe:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1d00:	000005d8 	.word	0x000005d8
c0de1d04:	0000795a 	.word	0x0000795a
c0de1d08:	000065fd 	.word	0x000065fd
c0de1d0c:	00006764 	.word	0x00006764
c0de1d10:	00006660 	.word	0x00006660
c0de1d14:	000064cc 	.word	0x000064cc
c0de1d18:	ffffffb1 	.word	0xffffffb1
c0de1d1c:	0000721e 	.word	0x0000721e
c0de1d20:	00007210 	.word	0x00007210
c0de1d24:	000067d4 	.word	0x000067d4
c0de1d28:	000062fb 	.word	0x000062fb

c0de1d2c <controls_callback>:
c0de1d2c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de1d2e:	4c22      	ldr	r4, [pc, #136]	@ (c0de1db8 <controls_callback+0x8c>)
c0de1d30:	2815      	cmp	r0, #21
c0de1d32:	f809 2004 	strb.w	r2, [r9, r4]
c0de1d36:	d011      	beq.n	c0de1d5c <controls_callback+0x30>
c0de1d38:	2814      	cmp	r0, #20
c0de1d3a:	d12a      	bne.n	c0de1d92 <controls_callback+0x66>
c0de1d3c:	eb09 0504 	add.w	r5, r9, r4
c0de1d40:	4c1e      	ldr	r4, [pc, #120]	@ (c0de1dbc <controls_callback+0x90>)
c0de1d42:	447c      	add	r4, pc
c0de1d44:	f000 f88a 	bl	c0de1e5c <OUTLINED_FUNCTION_0>
c0de1d48:	7800      	ldrb	r0, [r0, #0]
c0de1d4a:	fab0 f080 	clz	r0, r0
c0de1d4e:	0940      	lsrs	r0, r0, #5
c0de1d50:	7328      	strb	r0, [r5, #12]
c0de1d52:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1d56:	f000 f881 	bl	c0de1e5c <OUTLINED_FUNCTION_0>
c0de1d5a:	e015      	b.n	c0de1d88 <controls_callback+0x5c>
c0de1d5c:	4818      	ldr	r0, [pc, #96]	@ (c0de1dc0 <controls_callback+0x94>)
c0de1d5e:	4478      	add	r0, pc
c0de1d60:	f005 fda8 	bl	c0de78b4 <pic>
c0de1d64:	7840      	ldrb	r0, [r0, #1]
c0de1d66:	b1a8      	cbz	r0, c0de1d94 <controls_callback+0x68>
c0de1d68:	eb09 0504 	add.w	r5, r9, r4
c0de1d6c:	4c15      	ldr	r4, [pc, #84]	@ (c0de1dc4 <controls_callback+0x98>)
c0de1d6e:	447c      	add	r4, pc
c0de1d70:	f000 f874 	bl	c0de1e5c <OUTLINED_FUNCTION_0>
c0de1d74:	7840      	ldrb	r0, [r0, #1]
c0de1d76:	fab0 f080 	clz	r0, r0
c0de1d7a:	0940      	lsrs	r0, r0, #5
c0de1d7c:	7628      	strb	r0, [r5, #24]
c0de1d7e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1d82:	f000 f86b 	bl	c0de1e5c <OUTLINED_FUNCTION_0>
c0de1d86:	3001      	adds	r0, #1
c0de1d88:	f10d 010f 	add.w	r1, sp, #15
c0de1d8c:	2201      	movs	r2, #1
c0de1d8e:	f005 fdc1 	bl	c0de7914 <nvm_write>
c0de1d92:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1d94:	480c      	ldr	r0, [pc, #48]	@ (c0de1dc8 <controls_callback+0x9c>)
c0de1d96:	490d      	ldr	r1, [pc, #52]	@ (c0de1dcc <controls_callback+0xa0>)
c0de1d98:	4478      	add	r0, pc
c0de1d9a:	4479      	add	r1, pc
c0de1d9c:	e9cd 1000 	strd	r1, r0, [sp]
c0de1da0:	480b      	ldr	r0, [pc, #44]	@ (c0de1dd0 <controls_callback+0xa4>)
c0de1da2:	490c      	ldr	r1, [pc, #48]	@ (c0de1dd4 <controls_callback+0xa8>)
c0de1da4:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1dd8 <controls_callback+0xac>)
c0de1da6:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1ddc <controls_callback+0xb0>)
c0de1da8:	4478      	add	r0, pc
c0de1daa:	4479      	add	r1, pc
c0de1dac:	447a      	add	r2, pc
c0de1dae:	447b      	add	r3, pc
c0de1db0:	f003 fd76 	bl	c0de58a0 <nbgl_useCaseChoice>
c0de1db4:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de1db6:	bf00      	nop
c0de1db8:	000005d8 	.word	0x000005d8
c0de1dbc:	000078ba 	.word	0x000078ba
c0de1dc0:	0000789e 	.word	0x0000789e
c0de1dc4:	0000788e 	.word	0x0000788e
c0de1dc8:	00000045 	.word	0x00000045
c0de1dcc:	000065b8 	.word	0x000065b8
c0de1dd0:	000063c5 	.word	0x000063c5
c0de1dd4:	000063f0 	.word	0x000063f0
c0de1dd8:	0000648e 	.word	0x0000648e
c0de1ddc:	00006674 	.word	0x00006674

c0de1de0 <review_warning_choice>:
c0de1de0:	b5b0      	push	{r4, r5, r7, lr}
c0de1de2:	b086      	sub	sp, #24
c0de1de4:	b1a8      	cbz	r0, c0de1e12 <review_warning_choice+0x32>
c0de1de6:	4c17      	ldr	r4, [pc, #92]	@ (c0de1e44 <review_warning_choice+0x64>)
c0de1de8:	4815      	ldr	r0, [pc, #84]	@ (c0de1e40 <review_warning_choice+0x60>)
c0de1dea:	447c      	add	r4, pc
c0de1dec:	eb09 0500 	add.w	r5, r9, r0
c0de1df0:	f000 f834 	bl	c0de1e5c <OUTLINED_FUNCTION_0>
c0de1df4:	7840      	ldrb	r0, [r0, #1]
c0de1df6:	fab0 f080 	clz	r0, r0
c0de1dfa:	0940      	lsrs	r0, r0, #5
c0de1dfc:	7628      	strb	r0, [r5, #24]
c0de1dfe:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1e02:	f000 f82b 	bl	c0de1e5c <OUTLINED_FUNCTION_0>
c0de1e06:	3001      	adds	r0, #1
c0de1e08:	f10d 0117 	add.w	r1, sp, #23
c0de1e0c:	2201      	movs	r2, #1
c0de1e0e:	f005 fd81 	bl	c0de7914 <nvm_write>
c0de1e12:	480b      	ldr	r0, [pc, #44]	@ (c0de1e40 <review_warning_choice+0x60>)
c0de1e14:	2100      	movs	r1, #0
c0de1e16:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1e1a:	480b      	ldr	r0, [pc, #44]	@ (c0de1e48 <review_warning_choice+0x68>)
c0de1e1c:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1e4c <review_warning_choice+0x6c>)
c0de1e1e:	4c0c      	ldr	r4, [pc, #48]	@ (c0de1e50 <review_warning_choice+0x70>)
c0de1e20:	4478      	add	r0, pc
c0de1e22:	447a      	add	r2, pc
c0de1e24:	447c      	add	r4, pc
c0de1e26:	e9cd 4200 	strd	r4, r2, [sp]
c0de1e2a:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1e2e:	2200      	movs	r2, #0
c0de1e30:	4808      	ldr	r0, [pc, #32]	@ (c0de1e54 <review_warning_choice+0x74>)
c0de1e32:	4909      	ldr	r1, [pc, #36]	@ (c0de1e58 <review_warning_choice+0x78>)
c0de1e34:	4478      	add	r0, pc
c0de1e36:	4479      	add	r1, pc
c0de1e38:	f003 f89c 	bl	c0de4f74 <nbgl_useCaseHomeAndSettings>
c0de1e3c:	b006      	add	sp, #24
c0de1e3e:	bdb0      	pop	{r4, r5, r7, pc}
c0de1e40:	000005d8 	.word	0x000005d8
c0de1e44:	00007812 	.word	0x00007812
c0de1e48:	fffffe71 	.word	0xfffffe71
c0de1e4c:	000070de 	.word	0x000070de
c0de1e50:	000070d0 	.word	0x000070d0
c0de1e54:	00006696 	.word	0x00006696
c0de1e58:	000061bd 	.word	0x000061bd

c0de1e5c <OUTLINED_FUNCTION_0>:
c0de1e5c:	4620      	mov	r0, r4
c0de1e5e:	f005 bd29 	b.w	c0de78b4 <pic>
	...

c0de1e64 <ui_display_address>:
c0de1e64:	b570      	push	{r4, r5, r6, lr}
c0de1e66:	b088      	sub	sp, #32
c0de1e68:	4e22      	ldr	r6, [pc, #136]	@ (c0de1ef4 <ui_display_address+0x90>)
c0de1e6a:	eb09 0106 	add.w	r1, r9, r6
c0de1e6e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1e72:	f891 12c0 	ldrb.w	r1, [r1, #704]	@ 0x2c0
c0de1e76:	4308      	orrs	r0, r1
c0de1e78:	d12a      	bne.n	c0de1ed0 <ui_display_address+0x6c>
c0de1e7a:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1ef8 <ui_display_address+0x94>)
c0de1e7c:	212b      	movs	r1, #43	@ 0x2b
c0de1e7e:	eb09 0005 	add.w	r0, r9, r5
c0de1e82:	f006 f823 	bl	c0de7ecc <__aeabi_memclr>
c0de1e86:	ac03      	add	r4, sp, #12
c0de1e88:	2114      	movs	r1, #20
c0de1e8a:	4620      	mov	r0, r4
c0de1e8c:	f006 f81e 	bl	c0de7ecc <__aeabi_memclr>
c0de1e90:	eb09 0006 	add.w	r0, r9, r6
c0de1e94:	4621      	mov	r1, r4
c0de1e96:	2214      	movs	r2, #20
c0de1e98:	3008      	adds	r0, #8
c0de1e9a:	f7fe f8c5 	bl	c0de0028 <address_from_pubkey>
c0de1e9e:	b308      	cbz	r0, c0de1ee4 <ui_display_address+0x80>
c0de1ea0:	eb09 0205 	add.w	r2, r9, r5
c0de1ea4:	a803      	add	r0, sp, #12
c0de1ea6:	2114      	movs	r1, #20
c0de1ea8:	232b      	movs	r3, #43	@ 0x2b
c0de1eaa:	f004 ffeb 	bl	c0de6e84 <format_hex>
c0de1eae:	3001      	adds	r0, #1
c0de1eb0:	d018      	beq.n	c0de1ee4 <ui_display_address+0x80>
c0de1eb2:	4812      	ldr	r0, [pc, #72]	@ (c0de1efc <ui_display_address+0x98>)
c0de1eb4:	2400      	movs	r4, #0
c0de1eb6:	2100      	movs	r1, #0
c0de1eb8:	4478      	add	r0, pc
c0de1eba:	e9cd 4000 	strd	r4, r0, [sp]
c0de1ebe:	eb09 0005 	add.w	r0, r9, r5
c0de1ec2:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1f00 <ui_display_address+0x9c>)
c0de1ec4:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1f04 <ui_display_address+0xa0>)
c0de1ec6:	447a      	add	r2, pc
c0de1ec8:	447b      	add	r3, pc
c0de1eca:	f003 f9cd 	bl	c0de5268 <nbgl_useCaseAddressReview>
c0de1ece:	e00e      	b.n	c0de1eee <ui_display_address+0x8a>
c0de1ed0:	2000      	movs	r0, #0
c0de1ed2:	f809 0006 	strb.w	r0, [r9, r6]
c0de1ed6:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1eda:	b008      	add	sp, #32
c0de1edc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1ee0:	f000 b812 	b.w	c0de1f08 <io_send_sw>
c0de1ee4:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1ee8:	f000 f80e 	bl	c0de1f08 <io_send_sw>
c0de1eec:	4604      	mov	r4, r0
c0de1eee:	4620      	mov	r0, r4
c0de1ef0:	b008      	add	sp, #32
c0de1ef2:	bd70      	pop	{r4, r5, r6, pc}
c0de1ef4:	00000000 	.word	0x00000000
c0de1ef8:	000005f4 	.word	0x000005f4
c0de1efc:	0000005d 	.word	0x0000005d
c0de1f00:	000062ca 	.word	0x000062ca
c0de1f04:	000065ca 	.word	0x000065ca

c0de1f08 <io_send_sw>:
c0de1f08:	b580      	push	{r7, lr}
c0de1f0a:	4602      	mov	r2, r0
c0de1f0c:	2000      	movs	r0, #0
c0de1f0e:	2100      	movs	r1, #0
c0de1f10:	f005 f818 	bl	c0de6f44 <io_send_response_buffers>
c0de1f14:	bd80      	pop	{r7, pc}
	...

c0de1f18 <review_choice>:
c0de1f18:	b510      	push	{r4, lr}
c0de1f1a:	4604      	mov	r4, r0
c0de1f1c:	f7ff fe5a 	bl	c0de1bd4 <validate_pubkey>
c0de1f20:	2007      	movs	r0, #7
c0de1f22:	2c00      	cmp	r4, #0
c0de1f24:	bf18      	it	ne
c0de1f26:	2006      	movne	r0, #6
c0de1f28:	4902      	ldr	r1, [pc, #8]	@ (c0de1f34 <review_choice+0x1c>)
c0de1f2a:	4479      	add	r1, pc
c0de1f2c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1f30:	f003 bb8c 	b.w	c0de564c <nbgl_useCaseReviewStatus>
c0de1f34:	fffffd6f 	.word	0xfffffd6f

c0de1f38 <ui_display_transaction_bs_choice>:
c0de1f38:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1f3a:	b085      	sub	sp, #20
c0de1f3c:	4f2d      	ldr	r7, [pc, #180]	@ (c0de1ff4 <ui_display_transaction_bs_choice+0xbc>)
c0de1f3e:	4604      	mov	r4, r0
c0de1f40:	eb09 0007 	add.w	r0, r9, r7
c0de1f44:	f890 02c0 	ldrb.w	r0, [r0, #704]	@ 0x2c0
c0de1f48:	2801      	cmp	r0, #1
c0de1f4a:	d137      	bne.n	c0de1fbc <ui_display_transaction_bs_choice+0x84>
c0de1f4c:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1f50:	2801      	cmp	r0, #1
c0de1f52:	d133      	bne.n	c0de1fbc <ui_display_transaction_bs_choice+0x84>
c0de1f54:	4e28      	ldr	r6, [pc, #160]	@ (c0de1ff8 <ui_display_transaction_bs_choice+0xc0>)
c0de1f56:	2140      	movs	r1, #64	@ 0x40
c0de1f58:	eb09 0006 	add.w	r0, r9, r6
c0de1f5c:	f100 0534 	add.w	r5, r0, #52	@ 0x34
c0de1f60:	4628      	mov	r0, r5
c0de1f62:	f005 ffb3 	bl	c0de7ecc <__aeabi_memclr>
c0de1f66:	eb09 0007 	add.w	r0, r9, r7
c0de1f6a:	2114      	movs	r1, #20
c0de1f6c:	462a      	mov	r2, r5
c0de1f6e:	2340      	movs	r3, #64	@ 0x40
c0de1f70:	302d      	adds	r0, #45	@ 0x2d
c0de1f72:	f004 ff87 	bl	c0de6e84 <format_hex>
c0de1f76:	3001      	adds	r0, #1
c0de1f78:	d026      	beq.n	c0de1fc8 <ui_display_transaction_bs_choice+0x90>
c0de1f7a:	4920      	ldr	r1, [pc, #128]	@ (c0de1ffc <ui_display_transaction_bs_choice+0xc4>)
c0de1f7c:	eb09 0006 	add.w	r0, r9, r6
c0de1f80:	4602      	mov	r2, r0
c0de1f82:	4479      	add	r1, pc
c0de1f84:	f842 1f14 	str.w	r1, [r2, #20]!
c0de1f88:	2101      	movs	r1, #1
c0de1f8a:	72c1      	strb	r1, [r0, #11]
c0de1f8c:	7201      	strb	r1, [r0, #8]
c0de1f8e:	f100 0134 	add.w	r1, r0, #52	@ 0x34
c0de1f92:	f849 2006 	str.w	r2, [r9, r6]
c0de1f96:	6181      	str	r1, [r0, #24]
c0de1f98:	2100      	movs	r1, #0
c0de1f9a:	4819      	ldr	r0, [pc, #100]	@ (c0de2000 <ui_display_transaction_bs_choice+0xc8>)
c0de1f9c:	4478      	add	r0, pc
c0de1f9e:	b1d4      	cbz	r4, c0de1fd6 <ui_display_transaction_bs_choice+0x9e>
c0de1fa0:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de1fa4:	e9cd 1100 	strd	r1, r1, [sp]
c0de1fa8:	eb09 0106 	add.w	r1, r9, r6
c0de1fac:	2000      	movs	r0, #0
c0de1fae:	4a15      	ldr	r2, [pc, #84]	@ (c0de2004 <ui_display_transaction_bs_choice+0xcc>)
c0de1fb0:	4b15      	ldr	r3, [pc, #84]	@ (c0de2008 <ui_display_transaction_bs_choice+0xd0>)
c0de1fb2:	447a      	add	r2, pc
c0de1fb4:	447b      	add	r3, pc
c0de1fb6:	f003 f945 	bl	c0de5244 <nbgl_useCaseReviewBlindSigning>
c0de1fba:	e018      	b.n	c0de1fee <ui_display_transaction_bs_choice+0xb6>
c0de1fbc:	2000      	movs	r0, #0
c0de1fbe:	f809 0007 	strb.w	r0, [r9, r7]
c0de1fc2:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1fc6:	e001      	b.n	c0de1fcc <ui_display_transaction_bs_choice+0x94>
c0de1fc8:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1fcc:	b005      	add	sp, #20
c0de1fce:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1fd2:	f000 b81f 	b.w	c0de2014 <io_send_sw>
c0de1fd6:	e9cd 1100 	strd	r1, r1, [sp]
c0de1fda:	9002      	str	r0, [sp, #8]
c0de1fdc:	eb09 0106 	add.w	r1, r9, r6
c0de1fe0:	2000      	movs	r0, #0
c0de1fe2:	4a0a      	ldr	r2, [pc, #40]	@ (c0de200c <ui_display_transaction_bs_choice+0xd4>)
c0de1fe4:	4b0a      	ldr	r3, [pc, #40]	@ (c0de2010 <ui_display_transaction_bs_choice+0xd8>)
c0de1fe6:	447a      	add	r2, pc
c0de1fe8:	447b      	add	r3, pc
c0de1fea:	f003 f86b 	bl	c0de50c4 <nbgl_useCaseReview>
c0de1fee:	2000      	movs	r0, #0
c0de1ff0:	b005      	add	sp, #20
c0de1ff2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1ff4:	00000000 	.word	0x00000000
c0de1ff8:	00000620 	.word	0x00000620
c0de1ffc:	000064b6 	.word	0x000064b6
c0de2000:	00000085 	.word	0x00000085
c0de2004:	000061de 	.word	0x000061de
c0de2008:	000064f1 	.word	0x000064f1
c0de200c:	000061aa 	.word	0x000061aa
c0de2010:	000064bd 	.word	0x000064bd

c0de2014 <io_send_sw>:
c0de2014:	b580      	push	{r7, lr}
c0de2016:	4602      	mov	r2, r0
c0de2018:	2000      	movs	r0, #0
c0de201a:	2100      	movs	r1, #0
c0de201c:	f004 ff92 	bl	c0de6f44 <io_send_response_buffers>
c0de2020:	bd80      	pop	{r7, pc}
	...

c0de2024 <review_choice>:
c0de2024:	b510      	push	{r4, lr}
c0de2026:	4604      	mov	r4, r0
c0de2028:	f7ff fde2 	bl	c0de1bf0 <validate_transaction>
c0de202c:	4903      	ldr	r1, [pc, #12]	@ (c0de203c <review_choice+0x18>)
c0de202e:	f084 0001 	eor.w	r0, r4, #1
c0de2032:	4479      	add	r1, pc
c0de2034:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2038:	f003 bb08 	b.w	c0de564c <nbgl_useCaseReviewStatus>
c0de203c:	fffffc67 	.word	0xfffffc67

c0de2040 <ui_display_blind_signed_transaction>:
c0de2040:	2001      	movs	r0, #1
c0de2042:	f7ff bf79 	b.w	c0de1f38 <ui_display_transaction_bs_choice>

c0de2046 <ui_display_transaction>:
c0de2046:	2000      	movs	r0, #0
c0de2048:	f7ff bf76 	b.w	c0de1f38 <ui_display_transaction_bs_choice>

c0de204c <zkn_prv_hash>:
c0de204c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2050:	460c      	mov	r4, r1
c0de2052:	e9cd 0200 	strd	r0, r2, [sp]
c0de2056:	4668      	mov	r0, sp
c0de2058:	2101      	movs	r1, #1
c0de205a:	2601      	movs	r6, #1
c0de205c:	4622      	mov	r2, r4
c0de205e:	f005 f9de 	bl	c0de741e <cx_blake2b_512_hash_iovec>
c0de2062:	4605      	mov	r5, r0
c0de2064:	bb18      	cbnz	r0, c0de20ae <zkn_prv_hash+0x62>
c0de2066:	7820      	ldrb	r0, [r4, #0]
c0de2068:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de206c:	7020      	strb	r0, [r4, #0]
c0de206e:	7fe0      	ldrb	r0, [r4, #31]
c0de2070:	f366 109f 	bfi	r0, r6, #6, #26
c0de2074:	77e0      	strb	r0, [r4, #31]
c0de2076:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de207a:	4e0e      	ldr	r6, [pc, #56]	@ (c0de20b4 <zkn_prv_hash+0x68>)
c0de207c:	447e      	add	r6, pc
c0de207e:	47b0      	blx	r6
c0de2080:	4680      	mov	r8, r0
c0de2082:	468a      	mov	sl, r1
c0de2084:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2088:	47b0      	blx	r6
c0de208a:	4683      	mov	fp, r0
c0de208c:	460f      	mov	r7, r1
c0de208e:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2092:	47b0      	blx	r6
c0de2094:	e9c4 0100 	strd	r0, r1, [r4]
c0de2098:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de209c:	47b0      	blx	r6
c0de209e:	f104 0208 	add.w	r2, r4, #8
c0de20a2:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de20a6:	f104 0014 	add.w	r0, r4, #20
c0de20aa:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de20ae:	4628      	mov	r0, r5
c0de20b0:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de20b4:	00000325 	.word	0x00000325

c0de20b8 <zkn_prv2pub>:
c0de20b8:	b570      	push	{r4, r5, r6, lr}
c0de20ba:	b092      	sub	sp, #72	@ 0x48
c0de20bc:	4614      	mov	r4, r2
c0de20be:	6802      	ldr	r2, [r0, #0]
c0de20c0:	ae02      	add	r6, sp, #8
c0de20c2:	4605      	mov	r5, r0
c0de20c4:	4608      	mov	r0, r1
c0de20c6:	4631      	mov	r1, r6
c0de20c8:	f7ff ffc0 	bl	c0de204c <zkn_prv_hash>
c0de20cc:	2000      	movs	r0, #0
c0de20ce:	2100      	movs	r1, #0
c0de20d0:	2820      	cmp	r0, #32
c0de20d2:	d009      	beq.n	c0de20e8 <zkn_prv2pub+0x30>
c0de20d4:	5c32      	ldrb	r2, [r6, r0]
c0de20d6:	0149      	lsls	r1, r1, #5
c0de20d8:	0613      	lsls	r3, r2, #24
c0de20da:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de20de:	5431      	strb	r1, [r6, r0]
c0de20e0:	f002 0107 	and.w	r1, r2, #7
c0de20e4:	3001      	adds	r0, #1
c0de20e6:	e7f3      	b.n	c0de20d0 <zkn_prv2pub+0x18>
c0de20e8:	4629      	mov	r1, r5
c0de20ea:	4628      	mov	r0, r5
c0de20ec:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de20f0:	9400      	str	r4, [sp, #0]
c0de20f2:	aa02      	add	r2, sp, #8
c0de20f4:	f001 f944 	bl	c0de3380 <tEdwards_scalarMul>
c0de20f8:	b918      	cbnz	r0, c0de2102 <zkn_prv2pub+0x4a>
c0de20fa:	4628      	mov	r0, r5
c0de20fc:	4621      	mov	r1, r4
c0de20fe:	f001 f87a 	bl	c0de31f6 <tEdwards_normalize>
c0de2102:	b012      	add	sp, #72	@ 0x48
c0de2104:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de2108 <EddsaPoseidon_Sign_final>:
c0de2108:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de210c:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de2110:	4605      	mov	r5, r0
c0de2112:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de2114:	2820      	cmp	r0, #32
c0de2116:	d118      	bne.n	c0de214a <EddsaPoseidon_Sign_final+0x42>
c0de2118:	460e      	mov	r6, r1
c0de211a:	a982      	add	r1, sp, #520	@ 0x208
c0de211c:	4628      	mov	r0, r5
c0de211e:	461f      	mov	r7, r3
c0de2120:	4692      	mov	sl, r2
c0de2122:	f000 fd37 	bl	c0de2b94 <tEdwards_alloc>
c0de2126:	b988      	cbnz	r0, c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2128:	682a      	ldr	r2, [r5, #0]
c0de212a:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de212c:	4630      	mov	r0, r6
c0de212e:	4621      	mov	r1, r4
c0de2130:	f7ff ff8c 	bl	c0de204c <zkn_prv_hash>
c0de2134:	b950      	cbnz	r0, c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2136:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de213a:	2000      	movs	r0, #0
c0de213c:	a95a      	add	r1, sp, #360	@ 0x168
c0de213e:	2820      	cmp	r0, #32
c0de2140:	d008      	beq.n	c0de2154 <EddsaPoseidon_Sign_final+0x4c>
c0de2142:	5c22      	ldrb	r2, [r4, r0]
c0de2144:	540a      	strb	r2, [r1, r0]
c0de2146:	3001      	adds	r0, #1
c0de2148:	e7f9      	b.n	c0de213e <EddsaPoseidon_Sign_final+0x36>
c0de214a:	4894      	ldr	r0, [pc, #592]	@ (c0de239c <EddsaPoseidon_Sign_final+0x294>)
c0de214c:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de2150:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2154:	a812      	add	r0, sp, #72	@ 0x48
c0de2156:	2109      	movs	r1, #9
c0de2158:	2240      	movs	r2, #64	@ 0x40
c0de215a:	f005 f981 	bl	c0de7460 <cx_hash_init_ex>
c0de215e:	2800      	cmp	r0, #0
c0de2160:	d1f4      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2162:	f104 0120 	add.w	r1, r4, #32
c0de2166:	a812      	add	r0, sp, #72	@ 0x48
c0de2168:	2220      	movs	r2, #32
c0de216a:	f005 f97e 	bl	c0de746a <cx_hash_update>
c0de216e:	2800      	cmp	r0, #0
c0de2170:	d1ec      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2172:	a812      	add	r0, sp, #72	@ 0x48
c0de2174:	4639      	mov	r1, r7
c0de2176:	2220      	movs	r2, #32
c0de2178:	f005 f977 	bl	c0de746a <cx_hash_update>
c0de217c:	2800      	cmp	r0, #0
c0de217e:	d1e5      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2180:	a812      	add	r0, sp, #72	@ 0x48
c0de2182:	ac62      	add	r4, sp, #392	@ 0x188
c0de2184:	4621      	mov	r1, r4
c0de2186:	f005 f966 	bl	c0de7456 <cx_hash_final>
c0de218a:	2800      	cmp	r0, #0
c0de218c:	d1de      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de218e:	203f      	movs	r0, #63	@ 0x3f
c0de2190:	a972      	add	r1, sp, #456	@ 0x1c8
c0de2192:	1c42      	adds	r2, r0, #1
c0de2194:	d004      	beq.n	c0de21a0 <EddsaPoseidon_Sign_final+0x98>
c0de2196:	5c22      	ldrb	r2, [r4, r0]
c0de2198:	3801      	subs	r0, #1
c0de219a:	f801 2b01 	strb.w	r2, [r1], #1
c0de219e:	e7f8      	b.n	c0de2192 <EddsaPoseidon_Sign_final+0x8a>
c0de21a0:	a889      	add	r0, sp, #548	@ 0x224
c0de21a2:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de21a4:	2140      	movs	r1, #64	@ 0x40
c0de21a6:	2340      	movs	r3, #64	@ 0x40
c0de21a8:	f005 fbda 	bl	c0de7960 <cx_bn_alloc_init>
c0de21ac:	2800      	cmp	r0, #0
c0de21ae:	d1cd      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de21b0:	a887      	add	r0, sp, #540	@ 0x21c
c0de21b2:	2140      	movs	r1, #64	@ 0x40
c0de21b4:	f005 fbca 	bl	c0de794c <cx_bn_alloc>
c0de21b8:	2800      	cmp	r0, #0
c0de21ba:	d1c7      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de21bc:	4978      	ldr	r1, [pc, #480]	@ (c0de23a0 <EddsaPoseidon_Sign_final+0x298>)
c0de21be:	f10d 0808 	add.w	r8, sp, #8
c0de21c2:	2240      	movs	r2, #64	@ 0x40
c0de21c4:	4640      	mov	r0, r8
c0de21c6:	4479      	add	r1, pc
c0de21c8:	f005 fe76 	bl	c0de7eb8 <__aeabi_memcpy>
c0de21cc:	a888      	add	r0, sp, #544	@ 0x220
c0de21ce:	2140      	movs	r1, #64	@ 0x40
c0de21d0:	4642      	mov	r2, r8
c0de21d2:	2340      	movs	r3, #64	@ 0x40
c0de21d4:	f005 fbc4 	bl	c0de7960 <cx_bn_alloc_init>
c0de21d8:	2800      	cmp	r0, #0
c0de21da:	d1b7      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de21dc:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de21de:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de21e2:	f005 fc51 	bl	c0de7a88 <cx_bn_reduce>
c0de21e6:	2800      	cmp	r0, #0
c0de21e8:	d1b0      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de21ea:	aa87      	add	r2, sp, #540	@ 0x21c
c0de21ec:	f105 010c 	add.w	r1, r5, #12
c0de21f0:	ab82      	add	r3, sp, #520	@ 0x208
c0de21f2:	4628      	mov	r0, r5
c0de21f4:	f001 f85e 	bl	c0de32b4 <tEdwards_scalarMul_bn>
c0de21f8:	2800      	cmp	r0, #0
c0de21fa:	d1a7      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de21fc:	a982      	add	r1, sp, #520	@ 0x208
c0de21fe:	4628      	mov	r0, r5
c0de2200:	f000 fff9 	bl	c0de31f6 <tEdwards_normalize>
c0de2204:	2800      	cmp	r0, #0
c0de2206:	d1a1      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2208:	f10b 0320 	add.w	r3, fp, #32
c0de220c:	a982      	add	r1, sp, #520	@ 0x208
c0de220e:	4628      	mov	r0, r5
c0de2210:	465a      	mov	r2, fp
c0de2212:	f000 ffca 	bl	c0de31aa <tEdwards_export>
c0de2216:	2800      	cmp	r0, #0
c0de2218:	d198      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de221a:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de221c:	a952      	add	r1, sp, #328	@ 0x148
c0de221e:	2220      	movs	r2, #32
c0de2220:	f005 fbde 	bl	c0de79e0 <cx_bn_export>
c0de2224:	2800      	cmp	r0, #0
c0de2226:	d191      	bne.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2228:	a888      	add	r0, sp, #544	@ 0x220
c0de222a:	f005 fba5 	bl	c0de7978 <cx_bn_destroy>
c0de222e:	2800      	cmp	r0, #0
c0de2230:	f47f af8c 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2234:	a889      	add	r0, sp, #548	@ 0x224
c0de2236:	f005 fb9f 	bl	c0de7978 <cx_bn_destroy>
c0de223a:	2800      	cmp	r0, #0
c0de223c:	f47f af86 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2240:	a887      	add	r0, sp, #540	@ 0x21c
c0de2242:	f005 fb99 	bl	c0de7978 <cx_bn_destroy>
c0de2246:	2800      	cmp	r0, #0
c0de2248:	f47f af80 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de224c:	4628      	mov	r0, r5
c0de224e:	f000 ff50 	bl	c0de30f2 <tEdwards_Curve_partial_destroy>
c0de2252:	2800      	cmp	r0, #0
c0de2254:	f47f af7a 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2258:	f105 0420 	add.w	r4, r5, #32
c0de225c:	a88a      	add	r0, sp, #552	@ 0x228
c0de225e:	f000 f8a5 	bl	c0de23ac <OUTLINED_FUNCTION_0>
c0de2262:	2800      	cmp	r0, #0
c0de2264:	f47f af72 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2268:	201f      	movs	r0, #31
c0de226a:	a962      	add	r1, sp, #392	@ 0x188
c0de226c:	1c42      	adds	r2, r0, #1
c0de226e:	d004      	beq.n	c0de227a <EddsaPoseidon_Sign_final+0x172>
c0de2270:	5c3a      	ldrb	r2, [r7, r0]
c0de2272:	3801      	subs	r0, #1
c0de2274:	f801 2b01 	strb.w	r2, [r1], #1
c0de2278:	e7f8      	b.n	c0de226c <EddsaPoseidon_Sign_final+0x164>
c0de227a:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de227c:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de227e:	f005 fb9b 	bl	c0de79b8 <cx_bn_copy>
c0de2282:	2800      	cmp	r0, #0
c0de2284:	f47f af62 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2288:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de228a:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de228c:	f005 fb94 	bl	c0de79b8 <cx_bn_copy>
c0de2290:	2800      	cmp	r0, #0
c0de2292:	f47f af5b 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2296:	f8da 1000 	ldr.w	r1, [sl]
c0de229a:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de229c:	f005 fb8c 	bl	c0de79b8 <cx_bn_copy>
c0de22a0:	2800      	cmp	r0, #0
c0de22a2:	f47f af53 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de22a6:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de22aa:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de22ac:	f005 fb84 	bl	c0de79b8 <cx_bn_copy>
c0de22b0:	2800      	cmp	r0, #0
c0de22b2:	f47f af4b 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de22b6:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de22b8:	a962      	add	r1, sp, #392	@ 0x188
c0de22ba:	2220      	movs	r2, #32
c0de22bc:	f005 fb70 	bl	c0de79a0 <cx_bn_init>
c0de22c0:	2800      	cmp	r0, #0
c0de22c2:	f47f af43 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de22c6:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de22c8:	4622      	mov	r2, r4
c0de22ca:	4601      	mov	r1, r0
c0de22cc:	f005 fc12 	bl	c0de7af4 <cx_mont_to_montgomery>
c0de22d0:	2800      	cmp	r0, #0
c0de22d2:	f47f af3b 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de22d6:	a982      	add	r1, sp, #520	@ 0x208
c0de22d8:	4628      	mov	r0, r5
c0de22da:	f000 fc70 	bl	c0de2bbe <tEdwards_destroy>
c0de22de:	2800      	cmp	r0, #0
c0de22e0:	f47f af34 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de22e4:	a885      	add	r0, sp, #532	@ 0x214
c0de22e6:	2120      	movs	r1, #32
c0de22e8:	f005 fb30 	bl	c0de794c <cx_bn_alloc>
c0de22ec:	2800      	cmp	r0, #0
c0de22ee:	f47f af2d 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de22f2:	a88a      	add	r0, sp, #552	@ 0x228
c0de22f4:	aa85      	add	r2, sp, #532	@ 0x214
c0de22f6:	2100      	movs	r1, #0
c0de22f8:	2301      	movs	r3, #1
c0de22fa:	f001 f9cd 	bl	c0de3698 <Poseidon>
c0de22fe:	2800      	cmp	r0, #0
c0de2300:	f47f af24 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2304:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de2306:	4622      	mov	r2, r4
c0de2308:	4601      	mov	r1, r0
c0de230a:	f005 fbff 	bl	c0de7b0c <cx_mont_from_montgomery>
c0de230e:	2800      	cmp	r0, #0
c0de2310:	f47f af1c 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2314:	a886      	add	r0, sp, #536	@ 0x218
c0de2316:	aa5a      	add	r2, sp, #360	@ 0x168
c0de2318:	2120      	movs	r1, #32
c0de231a:	2320      	movs	r3, #32
c0de231c:	f005 fb20 	bl	c0de7960 <cx_bn_alloc_init>
c0de2320:	2800      	cmp	r0, #0
c0de2322:	f47f af13 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2326:	a801      	add	r0, sp, #4
c0de2328:	2120      	movs	r1, #32
c0de232a:	f005 fb0f 	bl	c0de794c <cx_bn_alloc>
c0de232e:	2800      	cmp	r0, #0
c0de2330:	f47f af0c 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2334:	f108 0220 	add.w	r2, r8, #32
c0de2338:	a888      	add	r0, sp, #544	@ 0x220
c0de233a:	2120      	movs	r1, #32
c0de233c:	2320      	movs	r3, #32
c0de233e:	f005 fb0f 	bl	c0de7960 <cx_bn_alloc_init>
c0de2342:	2800      	cmp	r0, #0
c0de2344:	f47f af02 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de2348:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de234a:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de234e:	9801      	ldr	r0, [sp, #4]
c0de2350:	f005 fb8e 	bl	c0de7a70 <cx_bn_mod_mul>
c0de2354:	2800      	cmp	r0, #0
c0de2356:	f47f aef9 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de235a:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de235c:	a952      	add	r1, sp, #328	@ 0x148
c0de235e:	2220      	movs	r2, #32
c0de2360:	f005 fb1e 	bl	c0de79a0 <cx_bn_init>
c0de2364:	2800      	cmp	r0, #0
c0de2366:	f47f aef1 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de236a:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de236c:	9a01      	ldr	r2, [sp, #4]
c0de236e:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de2372:	f005 fb65 	bl	c0de7a40 <cx_bn_mod_add>
c0de2376:	2800      	cmp	r0, #0
c0de2378:	f47f aee8 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de237c:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de237e:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de2382:	f005 fb81 	bl	c0de7a88 <cx_bn_reduce>
c0de2386:	2800      	cmp	r0, #0
c0de2388:	f47f aee0 	bne.w	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de238c:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de238e:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de2392:	2220      	movs	r2, #32
c0de2394:	f005 fb24 	bl	c0de79e0 <cx_bn_export>
c0de2398:	e6d8      	b.n	c0de214c <EddsaPoseidon_Sign_final+0x44>
c0de239a:	bf00      	nop
c0de239c:	5a4b4e03 	.word	0x5a4b4e03
c0de23a0:	00006d92 	.word	0x00006d92

c0de23a4 <rev64>:
c0de23a4:	ba0a      	rev	r2, r1
c0de23a6:	ba01      	rev	r1, r0
c0de23a8:	4610      	mov	r0, r2
c0de23aa:	4770      	bx	lr

c0de23ac <OUTLINED_FUNCTION_0>:
c0de23ac:	2105      	movs	r1, #5
c0de23ae:	2205      	movs	r2, #5
c0de23b0:	4623      	mov	r3, r4
c0de23b2:	f001 b90b 	b.w	c0de35cc <Poseidon_alloc_init>

c0de23b6 <zkn_frost_interpolate>:
c0de23b6:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de23ba:	b085      	sub	sp, #20
c0de23bc:	460e      	mov	r6, r1
c0de23be:	4607      	mov	r7, r0
c0de23c0:	a803      	add	r0, sp, #12
c0de23c2:	2120      	movs	r1, #32
c0de23c4:	f000 fbda 	bl	c0de2b7c <OUTLINED_FUNCTION_4>
c0de23c8:	b988      	cbnz	r0, c0de23ee <zkn_frost_interpolate+0x38>
c0de23ca:	a802      	add	r0, sp, #8
c0de23cc:	f000 fbcf 	bl	c0de2b6e <OUTLINED_FUNCTION_2>
c0de23d0:	b968      	cbnz	r0, c0de23ee <zkn_frost_interpolate+0x38>
c0de23d2:	a801      	add	r0, sp, #4
c0de23d4:	f000 fbcb 	bl	c0de2b6e <OUTLINED_FUNCTION_2>
c0de23d8:	b948      	cbnz	r0, c0de23ee <zkn_frost_interpolate+0x38>
c0de23da:	9803      	ldr	r0, [sp, #12]
c0de23dc:	2101      	movs	r1, #1
c0de23de:	f005 faf5 	bl	c0de79cc <cx_bn_set_u32>
c0de23e2:	b920      	cbnz	r0, c0de23ee <zkn_frost_interpolate+0x38>
c0de23e4:	9802      	ldr	r0, [sp, #8]
c0de23e6:	2101      	movs	r1, #1
c0de23e8:	f005 faf0 	bl	c0de79cc <cx_bn_set_u32>
c0de23ec:	b110      	cbz	r0, c0de23f4 <zkn_frost_interpolate+0x3e>
c0de23ee:	b005      	add	sp, #20
c0de23f0:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de23f4:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de23f8:	f10d 0a10 	add.w	sl, sp, #16
c0de23fc:	b31e      	cbz	r6, c0de2446 <zkn_frost_interpolate+0x90>
c0de23fe:	6838      	ldr	r0, [r7, #0]
c0de2400:	4629      	mov	r1, r5
c0de2402:	4652      	mov	r2, sl
c0de2404:	f005 faf8 	bl	c0de79f8 <cx_bn_cmp>
c0de2408:	2800      	cmp	r0, #0
c0de240a:	d1f0      	bne.n	c0de23ee <zkn_frost_interpolate+0x38>
c0de240c:	9804      	ldr	r0, [sp, #16]
c0de240e:	b1b8      	cbz	r0, c0de2440 <zkn_frost_interpolate+0x8a>
c0de2410:	9802      	ldr	r0, [sp, #8]
c0de2412:	683a      	ldr	r2, [r7, #0]
c0de2414:	4623      	mov	r3, r4
c0de2416:	4601      	mov	r1, r0
c0de2418:	f005 fb2a 	bl	c0de7a70 <cx_bn_mod_mul>
c0de241c:	2800      	cmp	r0, #0
c0de241e:	d1e6      	bne.n	c0de23ee <zkn_frost_interpolate+0x38>
c0de2420:	6839      	ldr	r1, [r7, #0]
c0de2422:	9801      	ldr	r0, [sp, #4]
c0de2424:	462a      	mov	r2, r5
c0de2426:	4623      	mov	r3, r4
c0de2428:	f005 fb16 	bl	c0de7a58 <cx_bn_mod_sub>
c0de242c:	2800      	cmp	r0, #0
c0de242e:	d1de      	bne.n	c0de23ee <zkn_frost_interpolate+0x38>
c0de2430:	9803      	ldr	r0, [sp, #12]
c0de2432:	9a01      	ldr	r2, [sp, #4]
c0de2434:	4623      	mov	r3, r4
c0de2436:	4601      	mov	r1, r0
c0de2438:	f005 fb1a 	bl	c0de7a70 <cx_bn_mod_mul>
c0de243c:	2800      	cmp	r0, #0
c0de243e:	d1d6      	bne.n	c0de23ee <zkn_frost_interpolate+0x38>
c0de2440:	3704      	adds	r7, #4
c0de2442:	3e01      	subs	r6, #1
c0de2444:	e7da      	b.n	c0de23fc <zkn_frost_interpolate+0x46>
c0de2446:	9903      	ldr	r1, [sp, #12]
c0de2448:	4640      	mov	r0, r8
c0de244a:	4622      	mov	r2, r4
c0de244c:	f005 fb28 	bl	c0de7aa0 <cx_bn_mod_invert_nprime>
c0de2450:	2800      	cmp	r0, #0
c0de2452:	d1cc      	bne.n	c0de23ee <zkn_frost_interpolate+0x38>
c0de2454:	9a02      	ldr	r2, [sp, #8]
c0de2456:	4640      	mov	r0, r8
c0de2458:	4641      	mov	r1, r8
c0de245a:	4623      	mov	r3, r4
c0de245c:	f005 fb08 	bl	c0de7a70 <cx_bn_mod_mul>
c0de2460:	2800      	cmp	r0, #0
c0de2462:	d1c4      	bne.n	c0de23ee <zkn_frost_interpolate+0x38>
c0de2464:	a803      	add	r0, sp, #12
c0de2466:	f005 fa87 	bl	c0de7978 <cx_bn_destroy>
c0de246a:	2800      	cmp	r0, #0
c0de246c:	d1bf      	bne.n	c0de23ee <zkn_frost_interpolate+0x38>
c0de246e:	a802      	add	r0, sp, #8
c0de2470:	f005 fa82 	bl	c0de7978 <cx_bn_destroy>
c0de2474:	e7bb      	b.n	c0de23ee <zkn_frost_interpolate+0x38>

c0de2476 <zkn_frost_interpolate_secrets>:
c0de2476:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de247a:	460f      	mov	r7, r1
c0de247c:	4606      	mov	r6, r0
c0de247e:	a802      	add	r0, sp, #8
c0de2480:	2120      	movs	r1, #32
c0de2482:	461c      	mov	r4, r3
c0de2484:	4692      	mov	sl, r2
c0de2486:	f005 fa61 	bl	c0de794c <cx_bn_alloc>
c0de248a:	b108      	cbz	r0, c0de2490 <zkn_frost_interpolate_secrets+0x1a>
c0de248c:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de2490:	a801      	add	r0, sp, #4
c0de2492:	f000 fb6c 	bl	c0de2b6e <OUTLINED_FUNCTION_2>
c0de2496:	2800      	cmp	r0, #0
c0de2498:	d1f8      	bne.n	c0de248c <zkn_frost_interpolate_secrets+0x16>
c0de249a:	9802      	ldr	r0, [sp, #8]
c0de249c:	2100      	movs	r1, #0
c0de249e:	f005 fa95 	bl	c0de79cc <cx_bn_set_u32>
c0de24a2:	2800      	cmp	r0, #0
c0de24a4:	d1f2      	bne.n	c0de248c <zkn_frost_interpolate_secrets+0x16>
c0de24a6:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de24aa:	2500      	movs	r5, #0
c0de24ac:	42ac      	cmp	r4, r5
c0de24ae:	d01d      	beq.n	c0de24ec <zkn_frost_interpolate_secrets+0x76>
c0de24b0:	9801      	ldr	r0, [sp, #4]
c0de24b2:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de24b6:	68b3      	ldr	r3, [r6, #8]
c0de24b8:	4621      	mov	r1, r4
c0de24ba:	9000      	str	r0, [sp, #0]
c0de24bc:	4638      	mov	r0, r7
c0de24be:	f7ff ff7a 	bl	c0de23b6 <zkn_frost_interpolate>
c0de24c2:	2800      	cmp	r0, #0
c0de24c4:	d1e2      	bne.n	c0de248c <zkn_frost_interpolate_secrets+0x16>
c0de24c6:	9801      	ldr	r0, [sp, #4]
c0de24c8:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de24cc:	68b3      	ldr	r3, [r6, #8]
c0de24ce:	4601      	mov	r1, r0
c0de24d0:	f005 face 	bl	c0de7a70 <cx_bn_mod_mul>
c0de24d4:	2800      	cmp	r0, #0
c0de24d6:	d1d9      	bne.n	c0de248c <zkn_frost_interpolate_secrets+0x16>
c0de24d8:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de24dc:	68b3      	ldr	r3, [r6, #8]
c0de24de:	4601      	mov	r1, r0
c0de24e0:	f005 faae 	bl	c0de7a40 <cx_bn_mod_add>
c0de24e4:	3501      	adds	r5, #1
c0de24e6:	2800      	cmp	r0, #0
c0de24e8:	d0e0      	beq.n	c0de24ac <zkn_frost_interpolate_secrets+0x36>
c0de24ea:	e7cf      	b.n	c0de248c <zkn_frost_interpolate_secrets+0x16>
c0de24ec:	68b2      	ldr	r2, [r6, #8]
c0de24ee:	9902      	ldr	r1, [sp, #8]
c0de24f0:	4640      	mov	r0, r8
c0de24f2:	f005 fac9 	bl	c0de7a88 <cx_bn_reduce>
c0de24f6:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de24fa <zkn_evalshare>:
c0de24fa:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de24fe:	460e      	mov	r6, r1
c0de2500:	6801      	ldr	r1, [r0, #0]
c0de2502:	4607      	mov	r7, r0
c0de2504:	a801      	add	r0, sp, #4
c0de2506:	f000 fb39 	bl	c0de2b7c <OUTLINED_FUNCTION_4>
c0de250a:	b108      	cbz	r0, c0de2510 <zkn_evalshare+0x16>
c0de250c:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de2510:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de2514:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2518:	4640      	mov	r0, r8
c0de251a:	f005 fa4d 	bl	c0de79b8 <cx_bn_copy>
c0de251e:	2800      	cmp	r0, #0
c0de2520:	d1f4      	bne.n	c0de250c <zkn_evalshare+0x12>
c0de2522:	3e04      	subs	r6, #4
c0de2524:	68bb      	ldr	r3, [r7, #8]
c0de2526:	9801      	ldr	r0, [sp, #4]
c0de2528:	4641      	mov	r1, r8
c0de252a:	b17d      	cbz	r5, c0de254c <zkn_evalshare+0x52>
c0de252c:	4622      	mov	r2, r4
c0de252e:	f005 fa9f 	bl	c0de7a70 <cx_bn_mod_mul>
c0de2532:	2800      	cmp	r0, #0
c0de2534:	d1ea      	bne.n	c0de250c <zkn_evalshare+0x12>
c0de2536:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de253a:	68bb      	ldr	r3, [r7, #8]
c0de253c:	9901      	ldr	r1, [sp, #4]
c0de253e:	4640      	mov	r0, r8
c0de2540:	f005 fa7e 	bl	c0de7a40 <cx_bn_mod_add>
c0de2544:	3d01      	subs	r5, #1
c0de2546:	2800      	cmp	r0, #0
c0de2548:	d0ec      	beq.n	c0de2524 <zkn_evalshare+0x2a>
c0de254a:	e7df      	b.n	c0de250c <zkn_evalshare+0x12>
c0de254c:	461a      	mov	r2, r3
c0de254e:	f005 fa9b 	bl	c0de7a88 <cx_bn_reduce>
c0de2552:	2800      	cmp	r0, #0
c0de2554:	d1da      	bne.n	c0de250c <zkn_evalshare+0x12>
c0de2556:	9901      	ldr	r1, [sp, #4]
c0de2558:	4640      	mov	r0, r8
c0de255a:	f005 fa2d 	bl	c0de79b8 <cx_bn_copy>
c0de255e:	2800      	cmp	r0, #0
c0de2560:	d1d4      	bne.n	c0de250c <zkn_evalshare+0x12>
c0de2562:	a801      	add	r0, sp, #4
c0de2564:	f005 fa08 	bl	c0de7978 <cx_bn_destroy>
c0de2568:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de256c <zkn_frost_nonce_generate>:
c0de256c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de256e:	b091      	sub	sp, #68	@ 0x44
c0de2570:	af01      	add	r7, sp, #4
c0de2572:	460e      	mov	r6, r1
c0de2574:	4605      	mov	r5, r0
c0de2576:	2120      	movs	r1, #32
c0de2578:	4614      	mov	r4, r2
c0de257a:	4638      	mov	r0, r7
c0de257c:	f004 ff7a 	bl	c0de7474 <cx_rng_no_throw>
c0de2580:	f107 0020 	add.w	r0, r7, #32
c0de2584:	4631      	mov	r1, r6
c0de2586:	2220      	movs	r2, #32
c0de2588:	f005 fc96 	bl	c0de7eb8 <__aeabi_memcpy>
c0de258c:	6829      	ldr	r1, [r5, #0]
c0de258e:	4668      	mov	r0, sp
c0de2590:	f005 f9dc 	bl	c0de794c <cx_bn_alloc>
c0de2594:	b978      	cbnz	r0, c0de25b6 <zkn_frost_nonce_generate+0x4a>
c0de2596:	68aa      	ldr	r2, [r5, #8]
c0de2598:	9b00      	ldr	r3, [sp, #0]
c0de259a:	a801      	add	r0, sp, #4
c0de259c:	2140      	movs	r1, #64	@ 0x40
c0de259e:	f001 f9a5 	bl	c0de38ec <Babyfrost_H3>
c0de25a2:	b940      	cbnz	r0, c0de25b6 <zkn_frost_nonce_generate+0x4a>
c0de25a4:	682a      	ldr	r2, [r5, #0]
c0de25a6:	9800      	ldr	r0, [sp, #0]
c0de25a8:	4621      	mov	r1, r4
c0de25aa:	f005 fa19 	bl	c0de79e0 <cx_bn_export>
c0de25ae:	b910      	cbnz	r0, c0de25b6 <zkn_frost_nonce_generate+0x4a>
c0de25b0:	4668      	mov	r0, sp
c0de25b2:	f005 f9e1 	bl	c0de7978 <cx_bn_destroy>
c0de25b6:	b011      	add	sp, #68	@ 0x44
c0de25b8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de25ba <zkn_frost_commit>:
c0de25ba:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de25be:	461d      	mov	r5, r3
c0de25c0:	4617      	mov	r7, r2
c0de25c2:	460e      	mov	r6, r1
c0de25c4:	4604      	mov	r4, r0
c0de25c6:	f7ff ffd1 	bl	c0de256c <zkn_frost_nonce_generate>
c0de25ca:	b9f8      	cbnz	r0, c0de260c <zkn_frost_commit+0x52>
c0de25cc:	f107 0a20 	add.w	sl, r7, #32
c0de25d0:	4620      	mov	r0, r4
c0de25d2:	4631      	mov	r1, r6
c0de25d4:	4652      	mov	r2, sl
c0de25d6:	f7ff ffc9 	bl	c0de256c <zkn_frost_nonce_generate>
c0de25da:	b9b8      	cbnz	r0, c0de260c <zkn_frost_commit+0x52>
c0de25dc:	46a0      	mov	r8, r4
c0de25de:	4620      	mov	r0, r4
c0de25e0:	463a      	mov	r2, r7
c0de25e2:	f858 3b0c 	ldr.w	r3, [r8], #12
c0de25e6:	9500      	str	r5, [sp, #0]
c0de25e8:	4641      	mov	r1, r8
c0de25ea:	f000 fec9 	bl	c0de3380 <tEdwards_scalarMul>
c0de25ee:	b968      	cbnz	r0, c0de260c <zkn_frost_commit+0x52>
c0de25f0:	4620      	mov	r0, r4
c0de25f2:	4629      	mov	r1, r5
c0de25f4:	f000 fdff 	bl	c0de31f6 <tEdwards_normalize>
c0de25f8:	b940      	cbnz	r0, c0de260c <zkn_frost_commit+0x52>
c0de25fa:	6823      	ldr	r3, [r4, #0]
c0de25fc:	350c      	adds	r5, #12
c0de25fe:	4620      	mov	r0, r4
c0de2600:	4641      	mov	r1, r8
c0de2602:	4652      	mov	r2, sl
c0de2604:	9500      	str	r5, [sp, #0]
c0de2606:	f000 febb 	bl	c0de3380 <tEdwards_scalarMul>
c0de260a:	b108      	cbz	r0, c0de2610 <zkn_frost_commit+0x56>
c0de260c:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de2610:	4620      	mov	r0, r4
c0de2612:	4629      	mov	r1, r5
c0de2614:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2618:	f000 bded 	b.w	c0de31f6 <tEdwards_normalize>

c0de261c <zkn_encode_group_commitmentHash>:
c0de261c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2620:	b0d6      	sub	sp, #344	@ 0x158
c0de2622:	4606      	mov	r6, r0
c0de2624:	a816      	add	r0, sp, #88	@ 0x58
c0de2626:	461c      	mov	r4, r3
c0de2628:	4615      	mov	r5, r2
c0de262a:	460f      	mov	r7, r1
c0de262c:	f001 f9be 	bl	c0de39ac <zkn_frost_H5_init>
c0de2630:	b110      	cbz	r0, c0de2638 <zkn_encode_group_commitmentHash+0x1c>
c0de2632:	b056      	add	sp, #344	@ 0x158
c0de2634:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2638:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de263c:	9401      	str	r4, [sp, #4]
c0de263e:	a806      	add	r0, sp, #24
c0de2640:	f04f 0a00 	mov.w	sl, #0
c0de2644:	f04f 0b02 	mov.w	fp, #2
c0de2648:	2604      	movs	r6, #4
c0de264a:	2400      	movs	r4, #0
c0de264c:	9502      	str	r5, [sp, #8]
c0de264e:	f1a0 0801 	sub.w	r8, r0, #1
c0de2652:	42ac      	cmp	r4, r5
c0de2654:	d058      	beq.n	c0de2708 <zkn_encode_group_commitmentHash+0xec>
c0de2656:	9805      	ldr	r0, [sp, #20]
c0de2658:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de265c:	9103      	str	r1, [sp, #12]
c0de265e:	6805      	ldr	r5, [r0, #0]
c0de2660:	9804      	ldr	r0, [sp, #16]
c0de2662:	fb05 000a 	mla	r0, r5, sl, r0
c0de2666:	4629      	mov	r1, r5
c0de2668:	b129      	cbz	r1, c0de2676 <zkn_encode_group_commitmentHash+0x5a>
c0de266a:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de266e:	f808 2001 	strb.w	r2, [r8, r1]
c0de2672:	3901      	subs	r1, #1
c0de2674:	e7f8      	b.n	c0de2668 <zkn_encode_group_commitmentHash+0x4c>
c0de2676:	a816      	add	r0, sp, #88	@ 0x58
c0de2678:	a906      	add	r1, sp, #24
c0de267a:	462a      	mov	r2, r5
c0de267c:	f001 f9b0 	bl	c0de39e0 <zkn_frost_hash_update>
c0de2680:	2800      	cmp	r0, #0
c0de2682:	d1d6      	bne.n	c0de2632 <zkn_encode_group_commitmentHash+0x16>
c0de2684:	9803      	ldr	r0, [sp, #12]
c0de2686:	9f04      	ldr	r7, [sp, #16]
c0de2688:	1c43      	adds	r3, r0, #1
c0de268a:	9805      	ldr	r0, [sp, #20]
c0de268c:	fb05 710b 	mla	r1, r5, fp, r7
c0de2690:	6802      	ldr	r2, [r0, #0]
c0de2692:	1e50      	subs	r0, r2, #1
c0de2694:	4615      	mov	r5, r2
c0de2696:	fb02 0303 	mla	r3, r2, r3, r0
c0de269a:	5cfb      	ldrb	r3, [r7, r3]
c0de269c:	b12d      	cbz	r5, c0de26aa <zkn_encode_group_commitmentHash+0x8e>
c0de269e:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de26a2:	f808 7005 	strb.w	r7, [r8, r5]
c0de26a6:	3d01      	subs	r5, #1
c0de26a8:	e7f8      	b.n	c0de269c <zkn_encode_group_commitmentHash+0x80>
c0de26aa:	a906      	add	r1, sp, #24
c0de26ac:	5c0d      	ldrb	r5, [r1, r0]
c0de26ae:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de26b2:	540b      	strb	r3, [r1, r0]
c0de26b4:	a816      	add	r0, sp, #88	@ 0x58
c0de26b6:	f001 f993 	bl	c0de39e0 <zkn_frost_hash_update>
c0de26ba:	2800      	cmp	r0, #0
c0de26bc:	d1b9      	bne.n	c0de2632 <zkn_encode_group_commitmentHash+0x16>
c0de26be:	9805      	ldr	r0, [sp, #20]
c0de26c0:	9d04      	ldr	r5, [sp, #16]
c0de26c2:	6802      	ldr	r2, [r0, #0]
c0de26c4:	9803      	ldr	r0, [sp, #12]
c0de26c6:	1cc3      	adds	r3, r0, #3
c0de26c8:	1e50      	subs	r0, r2, #1
c0de26ca:	fb02 5106 	mla	r1, r2, r6, r5
c0de26ce:	fb02 0303 	mla	r3, r2, r3, r0
c0de26d2:	5ceb      	ldrb	r3, [r5, r3]
c0de26d4:	4615      	mov	r5, r2
c0de26d6:	b12d      	cbz	r5, c0de26e4 <zkn_encode_group_commitmentHash+0xc8>
c0de26d8:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de26dc:	f808 7005 	strb.w	r7, [r8, r5]
c0de26e0:	3d01      	subs	r5, #1
c0de26e2:	e7f8      	b.n	c0de26d6 <zkn_encode_group_commitmentHash+0xba>
c0de26e4:	a906      	add	r1, sp, #24
c0de26e6:	5c0d      	ldrb	r5, [r1, r0]
c0de26e8:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de26ec:	540b      	strb	r3, [r1, r0]
c0de26ee:	a816      	add	r0, sp, #88	@ 0x58
c0de26f0:	f001 f976 	bl	c0de39e0 <zkn_frost_hash_update>
c0de26f4:	3605      	adds	r6, #5
c0de26f6:	3401      	adds	r4, #1
c0de26f8:	9d02      	ldr	r5, [sp, #8]
c0de26fa:	f10b 0b05 	add.w	fp, fp, #5
c0de26fe:	f10a 0a05 	add.w	sl, sl, #5
c0de2702:	2800      	cmp	r0, #0
c0de2704:	d0a5      	beq.n	c0de2652 <zkn_encode_group_commitmentHash+0x36>
c0de2706:	e794      	b.n	c0de2632 <zkn_encode_group_commitmentHash+0x16>
c0de2708:	9805      	ldr	r0, [sp, #20]
c0de270a:	6881      	ldr	r1, [r0, #8]
c0de270c:	a816      	add	r0, sp, #88	@ 0x58
c0de270e:	9a01      	ldr	r2, [sp, #4]
c0de2710:	f001 f968 	bl	c0de39e4 <zkn_frost_hash_final>
c0de2714:	e78d      	b.n	c0de2632 <zkn_encode_group_commitmentHash+0x16>

c0de2716 <zkn_compute_group_commitment>:
c0de2716:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de271a:	b088      	sub	sp, #32
c0de271c:	460d      	mov	r5, r1
c0de271e:	a905      	add	r1, sp, #20
c0de2720:	461f      	mov	r7, r3
c0de2722:	4693      	mov	fp, r2
c0de2724:	4604      	mov	r4, r0
c0de2726:	f000 fa35 	bl	c0de2b94 <tEdwards_alloc>
c0de272a:	b948      	cbnz	r0, c0de2740 <zkn_compute_group_commitment+0x2a>
c0de272c:	a902      	add	r1, sp, #8
c0de272e:	4620      	mov	r0, r4
c0de2730:	f000 fa30 	bl	c0de2b94 <tEdwards_alloc>
c0de2734:	b920      	cbnz	r0, c0de2740 <zkn_compute_group_commitment+0x2a>
c0de2736:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2738:	4620      	mov	r0, r4
c0de273a:	f000 fd23 	bl	c0de3184 <tEdwards_SetNeutral>
c0de273e:	b110      	cbz	r0, c0de2746 <zkn_compute_group_commitment+0x30>
c0de2740:	b008      	add	sp, #32
c0de2742:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2746:	ae05      	add	r6, sp, #20
c0de2748:	f04f 0800 	mov.w	r8, #0
c0de274c:	f04f 0a04 	mov.w	sl, #4
c0de2750:	9501      	str	r5, [sp, #4]
c0de2752:	4547      	cmp	r7, r8
c0de2754:	d041      	beq.n	c0de27da <zkn_compute_group_commitment+0xc4>
c0de2756:	6822      	ldr	r2, [r4, #0]
c0de2758:	f1aa 0003 	sub.w	r0, sl, #3
c0de275c:	4633      	mov	r3, r6
c0de275e:	fb02 5100 	mla	r1, r2, r0, r5
c0de2762:	f1aa 0002 	sub.w	r0, sl, #2
c0de2766:	fb02 5200 	mla	r2, r2, r0, r5
c0de276a:	4620      	mov	r0, r4
c0de276c:	f000 fc82 	bl	c0de3074 <tEdwards_init>
c0de2770:	2800      	cmp	r0, #0
c0de2772:	d1e5      	bne.n	c0de2740 <zkn_compute_group_commitment+0x2a>
c0de2774:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2776:	4620      	mov	r0, r4
c0de2778:	4632      	mov	r2, r6
c0de277a:	460b      	mov	r3, r1
c0de277c:	f000 fa9b 	bl	c0de2cb6 <tEdwards_add>
c0de2780:	2800      	cmp	r0, #0
c0de2782:	d1dd      	bne.n	c0de2740 <zkn_compute_group_commitment+0x2a>
c0de2784:	6822      	ldr	r2, [r4, #0]
c0de2786:	f1aa 0001 	sub.w	r0, sl, #1
c0de278a:	4633      	mov	r3, r6
c0de278c:	fb02 5100 	mla	r1, r2, r0, r5
c0de2790:	fb02 520a 	mla	r2, r2, sl, r5
c0de2794:	4620      	mov	r0, r4
c0de2796:	f000 fc6d 	bl	c0de3074 <tEdwards_init>
c0de279a:	2800      	cmp	r0, #0
c0de279c:	d1d0      	bne.n	c0de2740 <zkn_compute_group_commitment+0x2a>
c0de279e:	6823      	ldr	r3, [r4, #0]
c0de27a0:	4658      	mov	r0, fp
c0de27a2:	f10d 0b08 	add.w	fp, sp, #8
c0de27a6:	4631      	mov	r1, r6
c0de27a8:	4605      	mov	r5, r0
c0de27aa:	f8cd b000 	str.w	fp, [sp]
c0de27ae:	fb03 0208 	mla	r2, r3, r8, r0
c0de27b2:	4620      	mov	r0, r4
c0de27b4:	f000 fde4 	bl	c0de3380 <tEdwards_scalarMul>
c0de27b8:	2800      	cmp	r0, #0
c0de27ba:	d1c1      	bne.n	c0de2740 <zkn_compute_group_commitment+0x2a>
c0de27bc:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de27be:	4620      	mov	r0, r4
c0de27c0:	465a      	mov	r2, fp
c0de27c2:	460b      	mov	r3, r1
c0de27c4:	f000 fa77 	bl	c0de2cb6 <tEdwards_add>
c0de27c8:	46ab      	mov	fp, r5
c0de27ca:	9d01      	ldr	r5, [sp, #4]
c0de27cc:	f10a 0a05 	add.w	sl, sl, #5
c0de27d0:	f108 0801 	add.w	r8, r8, #1
c0de27d4:	2800      	cmp	r0, #0
c0de27d6:	d0bc      	beq.n	c0de2752 <zkn_compute_group_commitment+0x3c>
c0de27d8:	e7b2      	b.n	c0de2740 <zkn_compute_group_commitment+0x2a>
c0de27da:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de27dc:	4620      	mov	r0, r4
c0de27de:	f000 fd0a 	bl	c0de31f6 <tEdwards_normalize>
c0de27e2:	2800      	cmp	r0, #0
c0de27e4:	d1ac      	bne.n	c0de2740 <zkn_compute_group_commitment+0x2a>
c0de27e6:	a905      	add	r1, sp, #20
c0de27e8:	f000 f9d1 	bl	c0de2b8e <OUTLINED_FUNCTION_6>
c0de27ec:	2800      	cmp	r0, #0
c0de27ee:	d1a7      	bne.n	c0de2740 <zkn_compute_group_commitment+0x2a>
c0de27f0:	a902      	add	r1, sp, #8
c0de27f2:	f000 f9cc 	bl	c0de2b8e <OUTLINED_FUNCTION_6>
c0de27f6:	e7a3      	b.n	c0de2740 <zkn_compute_group_commitment+0x2a>

c0de27f8 <zkn_compute_binding_factors>:
c0de27f8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de27fc:	b0f4      	sub	sp, #464	@ 0x1d0
c0de27fe:	460e      	mov	r6, r1
c0de2800:	6801      	ldr	r1, [r0, #0]
c0de2802:	4607      	mov	r7, r0
c0de2804:	a873      	add	r0, sp, #460	@ 0x1cc
c0de2806:	f000 f9b9 	bl	c0de2b7c <OUTLINED_FUNCTION_4>
c0de280a:	b9f0      	cbnz	r0, c0de284a <zkn_compute_binding_factors+0x52>
c0de280c:	6839      	ldr	r1, [r7, #0]
c0de280e:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2810:	f005 f89c 	bl	c0de794c <cx_bn_alloc>
c0de2814:	b9c8      	cbnz	r0, c0de284a <zkn_compute_binding_factors+0x52>
c0de2816:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de281a:	68ba      	ldr	r2, [r7, #8]
c0de281c:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de281e:	f001 f879 	bl	c0de3914 <Babyfrost_H4>
c0de2822:	b990      	cbnz	r0, c0de284a <zkn_compute_binding_factors+0x52>
c0de2824:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de2826:	4638      	mov	r0, r7
c0de2828:	4629      	mov	r1, r5
c0de282a:	4622      	mov	r2, r4
c0de282c:	f7ff fef6 	bl	c0de261c <zkn_encode_group_commitmentHash>
c0de2830:	b958      	cbnz	r0, c0de284a <zkn_compute_binding_factors+0x52>
c0de2832:	683a      	ldr	r2, [r7, #0]
c0de2834:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de2836:	a912      	add	r1, sp, #72	@ 0x48
c0de2838:	f005 f8d2 	bl	c0de79e0 <cx_bn_export>
c0de283c:	b928      	cbnz	r0, c0de284a <zkn_compute_binding_factors+0x52>
c0de283e:	683a      	ldr	r2, [r7, #0]
c0de2840:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de2842:	a902      	add	r1, sp, #8
c0de2844:	f005 f8cc 	bl	c0de79e0 <cx_bn_export>
c0de2848:	b110      	cbz	r0, c0de2850 <zkn_compute_binding_factors+0x58>
c0de284a:	b074      	add	sp, #464	@ 0x1d0
c0de284c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2850:	2000      	movs	r0, #0
c0de2852:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de2856:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de285a:	f04f 0800 	mov.w	r8, #0
c0de285e:	9000      	str	r0, [sp, #0]
c0de2860:	4544      	cmp	r4, r8
c0de2862:	d043      	beq.n	c0de28ec <zkn_compute_binding_factors+0xf4>
c0de2864:	6839      	ldr	r1, [r7, #0]
c0de2866:	a801      	add	r0, sp, #4
c0de2868:	f005 f870 	bl	c0de794c <cx_bn_alloc>
c0de286c:	2800      	cmp	r0, #0
c0de286e:	d1ec      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de2870:	4650      	mov	r0, sl
c0de2872:	f001 f881 	bl	c0de3978 <zkn_frost_H1_init>
c0de2876:	2800      	cmp	r0, #0
c0de2878:	d1e7      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de287a:	6839      	ldr	r1, [r7, #0]
c0de287c:	4630      	mov	r0, r6
c0de287e:	465a      	mov	r2, fp
c0de2880:	f000 f966 	bl	c0de2b50 <OUTLINED_FUNCTION_0>
c0de2884:	2800      	cmp	r0, #0
c0de2886:	d1e0      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de2888:	6839      	ldr	r1, [r7, #0]
c0de288a:	a812      	add	r0, sp, #72	@ 0x48
c0de288c:	465a      	mov	r2, fp
c0de288e:	f000 f95f 	bl	c0de2b50 <OUTLINED_FUNCTION_0>
c0de2892:	2800      	cmp	r0, #0
c0de2894:	d1d9      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de2896:	6839      	ldr	r1, [r7, #0]
c0de2898:	a802      	add	r0, sp, #8
c0de289a:	465a      	mov	r2, fp
c0de289c:	f000 f958 	bl	c0de2b50 <OUTLINED_FUNCTION_0>
c0de28a0:	2800      	cmp	r0, #0
c0de28a2:	d1d2      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de28a4:	6839      	ldr	r1, [r7, #0]
c0de28a6:	9800      	ldr	r0, [sp, #0]
c0de28a8:	465a      	mov	r2, fp
c0de28aa:	fb00 5001 	mla	r0, r0, r1, r5
c0de28ae:	f000 f94f 	bl	c0de2b50 <OUTLINED_FUNCTION_0>
c0de28b2:	2800      	cmp	r0, #0
c0de28b4:	d1c9      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de28b6:	68b9      	ldr	r1, [r7, #8]
c0de28b8:	9a01      	ldr	r2, [sp, #4]
c0de28ba:	4650      	mov	r0, sl
c0de28bc:	f001 f892 	bl	c0de39e4 <zkn_frost_hash_final>
c0de28c0:	2800      	cmp	r0, #0
c0de28c2:	d1c2      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de28c4:	683a      	ldr	r2, [r7, #0]
c0de28c6:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de28c8:	fb02 0108 	mla	r1, r2, r8, r0
c0de28cc:	9801      	ldr	r0, [sp, #4]
c0de28ce:	f005 f887 	bl	c0de79e0 <cx_bn_export>
c0de28d2:	2800      	cmp	r0, #0
c0de28d4:	d1b9      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de28d6:	a801      	add	r0, sp, #4
c0de28d8:	f005 f84e 	bl	c0de7978 <cx_bn_destroy>
c0de28dc:	2800      	cmp	r0, #0
c0de28de:	d1b4      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de28e0:	9800      	ldr	r0, [sp, #0]
c0de28e2:	f108 0801 	add.w	r8, r8, #1
c0de28e6:	3005      	adds	r0, #5
c0de28e8:	9000      	str	r0, [sp, #0]
c0de28ea:	e7b9      	b.n	c0de2860 <zkn_compute_binding_factors+0x68>
c0de28ec:	a873      	add	r0, sp, #460	@ 0x1cc
c0de28ee:	f005 f843 	bl	c0de7978 <cx_bn_destroy>
c0de28f2:	2800      	cmp	r0, #0
c0de28f4:	d1a9      	bne.n	c0de284a <zkn_compute_binding_factors+0x52>
c0de28f6:	a872      	add	r0, sp, #456	@ 0x1c8
c0de28f8:	f005 f83e 	bl	c0de7978 <cx_bn_destroy>
c0de28fc:	e7a5      	b.n	c0de284a <zkn_compute_binding_factors+0x52>

c0de28fe <zkn_serialize_scalar_for_hash>:
c0de28fe:	3a01      	subs	r2, #1
c0de2900:	b121      	cbz	r1, c0de290c <zkn_serialize_scalar_for_hash+0xe>
c0de2902:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de2906:	5453      	strb	r3, [r2, r1]
c0de2908:	3901      	subs	r1, #1
c0de290a:	e7f9      	b.n	c0de2900 <zkn_serialize_scalar_for_hash+0x2>
c0de290c:	4770      	bx	lr
	...

c0de2910 <compute_challenge>:
c0de2910:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2914:	b0bc      	sub	sp, #240	@ 0xf0
c0de2916:	4606      	mov	r6, r0
c0de2918:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de291a:	2820      	cmp	r0, #32
c0de291c:	d14b      	bne.n	c0de29b6 <compute_challenge+0xa6>
c0de291e:	4630      	mov	r0, r6
c0de2920:	461f      	mov	r7, r3
c0de2922:	4614      	mov	r4, r2
c0de2924:	460d      	mov	r5, r1
c0de2926:	f000 fbe4 	bl	c0de30f2 <tEdwards_Curve_partial_destroy>
c0de292a:	2800      	cmp	r0, #0
c0de292c:	d144      	bne.n	c0de29b8 <compute_challenge+0xa8>
c0de292e:	f106 0820 	add.w	r8, r6, #32
c0de2932:	4668      	mov	r0, sp
c0de2934:	2105      	movs	r1, #5
c0de2936:	2205      	movs	r2, #5
c0de2938:	4643      	mov	r3, r8
c0de293a:	f000 fe47 	bl	c0de35cc <Poseidon_alloc_init>
c0de293e:	bbd8      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de2940:	6829      	ldr	r1, [r5, #0]
c0de2942:	9807      	ldr	r0, [sp, #28]
c0de2944:	f005 f838 	bl	c0de79b8 <cx_bn_copy>
c0de2948:	bbb0      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de294a:	6869      	ldr	r1, [r5, #4]
c0de294c:	9808      	ldr	r0, [sp, #32]
c0de294e:	f005 f833 	bl	c0de79b8 <cx_bn_copy>
c0de2952:	bb88      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de2954:	6832      	ldr	r2, [r6, #0]
c0de2956:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de2958:	4621      	mov	r1, r4
c0de295a:	f005 f821 	bl	c0de79a0 <cx_bn_init>
c0de295e:	bb58      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de2960:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de2962:	f000 f907 	bl	c0de2b74 <OUTLINED_FUNCTION_3>
c0de2966:	bb38      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de2968:	6832      	ldr	r2, [r6, #0]
c0de296a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de296c:	f104 0120 	add.w	r1, r4, #32
c0de2970:	f005 f816 	bl	c0de79a0 <cx_bn_init>
c0de2974:	bb00      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de2976:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2978:	f000 f8fc 	bl	c0de2b74 <OUTLINED_FUNCTION_3>
c0de297c:	b9e0      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de297e:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2980:	4639      	mov	r1, r7
c0de2982:	2220      	movs	r2, #32
c0de2984:	f005 f80c 	bl	c0de79a0 <cx_bn_init>
c0de2988:	b9b0      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de298a:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de298c:	f000 f8f2 	bl	c0de2b74 <OUTLINED_FUNCTION_3>
c0de2990:	b990      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de2992:	4630      	mov	r0, r6
c0de2994:	4629      	mov	r1, r5
c0de2996:	f000 f912 	bl	c0de2bbe <tEdwards_destroy>
c0de299a:	b968      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de299c:	4668      	mov	r0, sp
c0de299e:	aa43      	add	r2, sp, #268	@ 0x10c
c0de29a0:	2100      	movs	r1, #0
c0de29a2:	2301      	movs	r3, #1
c0de29a4:	f000 fe78 	bl	c0de3698 <Poseidon>
c0de29a8:	b930      	cbnz	r0, c0de29b8 <compute_challenge+0xa8>
c0de29aa:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de29ac:	4642      	mov	r2, r8
c0de29ae:	4601      	mov	r1, r0
c0de29b0:	f005 f8ac 	bl	c0de7b0c <cx_mont_from_montgomery>
c0de29b4:	e000      	b.n	c0de29b8 <compute_challenge+0xa8>
c0de29b6:	4802      	ldr	r0, [pc, #8]	@ (c0de29c0 <compute_challenge+0xb0>)
c0de29b8:	b03c      	add	sp, #240	@ 0xf0
c0de29ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de29be:	bf00      	nop
c0de29c0:	5a4b4e03 	.word	0x5a4b4e03

c0de29c4 <zkn_partial_sig>:
c0de29c4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de29c8:	b0c2      	sub	sp, #264	@ 0x108
c0de29ca:	4680      	mov	r8, r0
c0de29cc:	7fd8      	ldrb	r0, [r3, #31]
c0de29ce:	e9dd a64e 	ldrd	sl, r6, [sp, #312]	@ 0x138
c0de29d2:	9f4c      	ldr	r7, [sp, #304]	@ 0x130
c0de29d4:	e9cd 1204 	strd	r1, r2, [sp, #16]
c0de29d8:	469b      	mov	fp, r3
c0de29da:	ab16      	add	r3, sp, #88	@ 0x58
c0de29dc:	2100      	movs	r1, #0
c0de29de:	221f      	movs	r2, #31
c0de29e0:	ac1e      	add	r4, sp, #120	@ 0x78
c0de29e2:	f000 0001 	and.w	r0, r0, #1
c0de29e6:	2920      	cmp	r1, #32
c0de29e8:	d00f      	beq.n	c0de2a0a <zkn_partial_sig+0x46>
c0de29ea:	eb0b 0501 	add.w	r5, fp, r1
c0de29ee:	f895 5020 	ldrb.w	r5, [r5, #32]
c0de29f2:	545d      	strb	r5, [r3, r1]
c0de29f4:	f81a 5002 	ldrb.w	r5, [sl, r2]
c0de29f8:	3a01      	subs	r2, #1
c0de29fa:	5465      	strb	r5, [r4, r1]
c0de29fc:	f89d 5058 	ldrb.w	r5, [sp, #88]	@ 0x58
c0de2a00:	3101      	adds	r1, #1
c0de2a02:	4045      	eors	r5, r0
c0de2a04:	f88d 5058 	strb.w	r5, [sp, #88]	@ 0x58
c0de2a08:	e7ed      	b.n	c0de29e6 <zkn_partial_sig+0x22>
c0de2a0a:	a83e      	add	r0, sp, #248	@ 0xf8
c0de2a0c:	f000 f8af 	bl	c0de2b6e <OUTLINED_FUNCTION_2>
c0de2a10:	2800      	cmp	r0, #0
c0de2a12:	f040 8098 	bne.w	c0de2b46 <zkn_partial_sig+0x182>
c0de2a16:	ad3f      	add	r5, sp, #252	@ 0xfc
c0de2a18:	4640      	mov	r0, r8
c0de2a1a:	4629      	mov	r1, r5
c0de2a1c:	f000 f8ba 	bl	c0de2b94 <tEdwards_alloc>
c0de2a20:	2800      	cmp	r0, #0
c0de2a22:	f040 8090 	bne.w	c0de2b46 <zkn_partial_sig+0x182>
c0de2a26:	a826      	add	r0, sp, #152	@ 0x98
c0de2a28:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2a2a:	e9cd 4600 	strd	r4, r6, [sp]
c0de2a2e:	463a      	mov	r2, r7
c0de2a30:	9002      	str	r0, [sp, #8]
c0de2a32:	a916      	add	r1, sp, #88	@ 0x58
c0de2a34:	4640      	mov	r0, r8
c0de2a36:	f7ff fedf 	bl	c0de27f8 <zkn_compute_binding_factors>
c0de2a3a:	2800      	cmp	r0, #0
c0de2a3c:	f040 8083 	bne.w	c0de2b46 <zkn_partial_sig+0x182>
c0de2a40:	9500      	str	r5, [sp, #0]
c0de2a42:	ac26      	add	r4, sp, #152	@ 0x98
c0de2a44:	9b4d      	ldr	r3, [sp, #308]	@ 0x134
c0de2a46:	4640      	mov	r0, r8
c0de2a48:	4639      	mov	r1, r7
c0de2a4a:	4622      	mov	r2, r4
c0de2a4c:	f7ff fe63 	bl	c0de2716 <zkn_compute_group_commitment>
c0de2a50:	2800      	cmp	r0, #0
c0de2a52:	d178      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2a54:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2a56:	2120      	movs	r1, #32
c0de2a58:	465a      	mov	r2, fp
c0de2a5a:	4653      	mov	r3, sl
c0de2a5c:	e9cd 1000 	strd	r1, r0, [sp]
c0de2a60:	a93f      	add	r1, sp, #252	@ 0xfc
c0de2a62:	4640      	mov	r0, r8
c0de2a64:	f7ff ff54 	bl	c0de2910 <compute_challenge>
c0de2a68:	2800      	cmp	r0, #0
c0de2a6a:	d16c      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2a6c:	f000 f88a 	bl	c0de2b84 <OUTLINED_FUNCTION_5>
c0de2a70:	2800      	cmp	r0, #0
c0de2a72:	d168      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2a74:	a80c      	add	r0, sp, #48	@ 0x30
c0de2a76:	4935      	ldr	r1, [pc, #212]	@ (c0de2b4c <zkn_partial_sig+0x188>)
c0de2a78:	2220      	movs	r2, #32
c0de2a7a:	4479      	add	r1, pc
c0de2a7c:	f005 fa1c 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2a80:	a815      	add	r0, sp, #84	@ 0x54
c0de2a82:	f000 f874 	bl	c0de2b6e <OUTLINED_FUNCTION_2>
c0de2a86:	2800      	cmp	r0, #0
c0de2a88:	d15d      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2a8a:	a814      	add	r0, sp, #80	@ 0x50
c0de2a8c:	aa0c      	add	r2, sp, #48	@ 0x30
c0de2a8e:	f000 f86a 	bl	c0de2b66 <OUTLINED_FUNCTION_1>
c0de2a92:	2800      	cmp	r0, #0
c0de2a94:	d157      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2a96:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de2a98:	e9dd 2014 	ldrd	r2, r0, [sp, #80]	@ 0x50
c0de2a9c:	f004 fff4 	bl	c0de7a88 <cx_bn_reduce>
c0de2aa0:	2800      	cmp	r0, #0
c0de2aa2:	d150      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2aa4:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de2aa6:	a80b      	add	r0, sp, #44	@ 0x2c
c0de2aa8:	f000 f85d 	bl	c0de2b66 <OUTLINED_FUNCTION_1>
c0de2aac:	2800      	cmp	r0, #0
c0de2aae:	d14a      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2ab0:	9a4b      	ldr	r2, [sp, #300]	@ 0x12c
c0de2ab2:	a80a      	add	r0, sp, #40	@ 0x28
c0de2ab4:	f000 f857 	bl	c0de2b66 <OUTLINED_FUNCTION_1>
c0de2ab8:	2800      	cmp	r0, #0
c0de2aba:	d144      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2abc:	9a50      	ldr	r2, [sp, #320]	@ 0x140
c0de2abe:	a809      	add	r0, sp, #36	@ 0x24
c0de2ac0:	f000 f851 	bl	c0de2b66 <OUTLINED_FUNCTION_1>
c0de2ac4:	2800      	cmp	r0, #0
c0de2ac6:	d13e      	bne.n	c0de2b46 <zkn_partial_sig+0x182>
c0de2ac8:	a808      	add	r0, sp, #32
c0de2aca:	9a05      	ldr	r2, [sp, #20]
c0de2acc:	f000 f84b 	bl	c0de2b66 <OUTLINED_FUNCTION_1>
c0de2ad0:	bbc8      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2ad2:	9804      	ldr	r0, [sp, #16]
c0de2ad4:	2120      	movs	r1, #32
c0de2ad6:	2320      	movs	r3, #32
c0de2ad8:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de2adc:	f1a0 0220 	sub.w	r2, r0, #32
c0de2ae0:	a806      	add	r0, sp, #24
c0de2ae2:	f004 ff3d 	bl	c0de7960 <cx_bn_alloc_init>
c0de2ae6:	bb70      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2ae8:	a807      	add	r0, sp, #28
c0de2aea:	f000 f840 	bl	c0de2b6e <OUTLINED_FUNCTION_2>
c0de2aee:	bb50      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2af0:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2af2:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de2af4:	e9dd 2006 	ldrd	r2, r0, [sp, #24]
c0de2af8:	f004 ffba 	bl	c0de7a70 <cx_bn_mod_mul>
c0de2afc:	bb18      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2afe:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b00:	e9dd 2108 	ldrd	r2, r1, [sp, #32]
c0de2b04:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2b06:	f004 ffb3 	bl	c0de7a70 <cx_bn_mod_mul>
c0de2b0a:	b9e0      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2b0c:	e9dd 3214 	ldrd	r3, r2, [sp, #80]	@ 0x50
c0de2b10:	e9dd 0109 	ldrd	r0, r1, [sp, #36]	@ 0x24
c0de2b14:	f004 ffac 	bl	c0de7a70 <cx_bn_mod_mul>
c0de2b18:	b9a8      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2b1a:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b1c:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de2b1e:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
c0de2b22:	f004 ff8d 	bl	c0de7a40 <cx_bn_mod_add>
c0de2b26:	b970      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2b28:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de2b2a:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de2b2c:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de2b30:	f004 ff86 	bl	c0de7a40 <cx_bn_mod_add>
c0de2b34:	b938      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2b36:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de2b38:	9907      	ldr	r1, [sp, #28]
c0de2b3a:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2b3c:	f004 ffa4 	bl	c0de7a88 <cx_bn_reduce>
c0de2b40:	b908      	cbnz	r0, c0de2b46 <zkn_partial_sig+0x182>
c0de2b42:	f000 f81f 	bl	c0de2b84 <OUTLINED_FUNCTION_5>
c0de2b46:	b042      	add	sp, #264	@ 0x108
c0de2b48:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2b4c:	00005bba 	.word	0x00005bba

c0de2b50 <OUTLINED_FUNCTION_0>:
c0de2b50:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2b54:	f7ff fed3 	bl	c0de28fe <zkn_serialize_scalar_for_hash>
c0de2b58:	683a      	ldr	r2, [r7, #0]
c0de2b5a:	4650      	mov	r0, sl
c0de2b5c:	4659      	mov	r1, fp
c0de2b5e:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2b62:	f000 bf3d 	b.w	c0de39e0 <zkn_frost_hash_update>

c0de2b66 <OUTLINED_FUNCTION_1>:
c0de2b66:	2120      	movs	r1, #32
c0de2b68:	2320      	movs	r3, #32
c0de2b6a:	f004 bef9 	b.w	c0de7960 <cx_bn_alloc_init>

c0de2b6e <OUTLINED_FUNCTION_2>:
c0de2b6e:	2120      	movs	r1, #32
c0de2b70:	f004 beec 	b.w	c0de794c <cx_bn_alloc>

c0de2b74 <OUTLINED_FUNCTION_3>:
c0de2b74:	4642      	mov	r2, r8
c0de2b76:	4601      	mov	r1, r0
c0de2b78:	f004 bfbc 	b.w	c0de7af4 <cx_mont_to_montgomery>

c0de2b7c <OUTLINED_FUNCTION_4>:
c0de2b7c:	461c      	mov	r4, r3
c0de2b7e:	4615      	mov	r5, r2
c0de2b80:	f004 bee4 	b.w	c0de794c <cx_bn_alloc>

c0de2b84 <OUTLINED_FUNCTION_5>:
c0de2b84:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de2b86:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de2b88:	2220      	movs	r2, #32
c0de2b8a:	f004 bf29 	b.w	c0de79e0 <cx_bn_export>

c0de2b8e <OUTLINED_FUNCTION_6>:
c0de2b8e:	4620      	mov	r0, r4
c0de2b90:	f000 b815 	b.w	c0de2bbe <tEdwards_destroy>

c0de2b94 <tEdwards_alloc>:
c0de2b94:	b5b0      	push	{r4, r5, r7, lr}
c0de2b96:	460d      	mov	r5, r1
c0de2b98:	6801      	ldr	r1, [r0, #0]
c0de2b9a:	4604      	mov	r4, r0
c0de2b9c:	4628      	mov	r0, r5
c0de2b9e:	f004 fed5 	bl	c0de794c <cx_bn_alloc>
c0de2ba2:	b920      	cbnz	r0, c0de2bae <tEdwards_alloc+0x1a>
c0de2ba4:	6821      	ldr	r1, [r4, #0]
c0de2ba6:	1d28      	adds	r0, r5, #4
c0de2ba8:	f004 fed0 	bl	c0de794c <cx_bn_alloc>
c0de2bac:	b100      	cbz	r0, c0de2bb0 <tEdwards_alloc+0x1c>
c0de2bae:	bdb0      	pop	{r4, r5, r7, pc}
c0de2bb0:	6821      	ldr	r1, [r4, #0]
c0de2bb2:	f105 0008 	add.w	r0, r5, #8
c0de2bb6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2bba:	f004 bec7 	b.w	c0de794c <cx_bn_alloc>

c0de2bbe <tEdwards_destroy>:
c0de2bbe:	b510      	push	{r4, lr}
c0de2bc0:	4608      	mov	r0, r1
c0de2bc2:	460c      	mov	r4, r1
c0de2bc4:	f004 fed8 	bl	c0de7978 <cx_bn_destroy>
c0de2bc8:	b918      	cbnz	r0, c0de2bd2 <tEdwards_destroy+0x14>
c0de2bca:	1d20      	adds	r0, r4, #4
c0de2bcc:	f004 fed4 	bl	c0de7978 <cx_bn_destroy>
c0de2bd0:	b100      	cbz	r0, c0de2bd4 <tEdwards_destroy+0x16>
c0de2bd2:	bd10      	pop	{r4, pc}
c0de2bd4:	f104 0008 	add.w	r0, r4, #8
c0de2bd8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2bdc:	f004 becc 	b.w	c0de7978 <cx_bn_destroy>

c0de2be0 <tEdwards_double>:
c0de2be0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2be2:	460f      	mov	r7, r1
c0de2be4:	4614      	mov	r4, r2
c0de2be6:	4605      	mov	r5, r0
c0de2be8:	6843      	ldr	r3, [r0, #4]
c0de2bea:	6809      	ldr	r1, [r1, #0]
c0de2bec:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2bee:	687a      	ldr	r2, [r7, #4]
c0de2bf0:	f004 ff26 	bl	c0de7a40 <cx_bn_mod_add>
c0de2bf4:	2800      	cmp	r0, #0
c0de2bf6:	d154      	bne.n	c0de2ca2 <tEdwards_double+0xc2>
c0de2bf8:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2bfc:	f105 0620 	add.w	r6, r5, #32
c0de2c00:	f000 fbe4 	bl	c0de33cc <OUTLINED_FUNCTION_2>
c0de2c04:	2800      	cmp	r0, #0
c0de2c06:	d14c      	bne.n	c0de2ca2 <tEdwards_double+0xc2>
c0de2c08:	6839      	ldr	r1, [r7, #0]
c0de2c0a:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2c0c:	f000 fbde 	bl	c0de33cc <OUTLINED_FUNCTION_2>
c0de2c10:	2800      	cmp	r0, #0
c0de2c12:	d146      	bne.n	c0de2ca2 <tEdwards_double+0xc2>
c0de2c14:	6879      	ldr	r1, [r7, #4]
c0de2c16:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2c18:	f000 fbd8 	bl	c0de33cc <OUTLINED_FUNCTION_2>
c0de2c1c:	2800      	cmp	r0, #0
c0de2c1e:	d140      	bne.n	c0de2ca2 <tEdwards_double+0xc2>
c0de2c20:	69a9      	ldr	r1, [r5, #24]
c0de2c22:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2c24:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2c26:	f000 fbcb 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de2c2a:	bbd0      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c2c:	686b      	ldr	r3, [r5, #4]
c0de2c2e:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2c32:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2c34:	f004 ff04 	bl	c0de7a40 <cx_bn_mod_add>
c0de2c38:	bb98      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c3a:	68b9      	ldr	r1, [r7, #8]
c0de2c3c:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2c3e:	f000 fbc5 	bl	c0de33cc <OUTLINED_FUNCTION_2>
c0de2c42:	bb70      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c44:	686b      	ldr	r3, [r5, #4]
c0de2c46:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2c48:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2c4a:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2c4c:	f004 ff04 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2c50:	bb38      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c52:	686b      	ldr	r3, [r5, #4]
c0de2c54:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2c56:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2c5a:	f004 fefd 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2c5e:	bb00      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c60:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de2c64:	686b      	ldr	r3, [r5, #4]
c0de2c66:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2c68:	f004 fef6 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2c6c:	b9c8      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c6e:	686b      	ldr	r3, [r5, #4]
c0de2c70:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2c74:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de2c76:	f004 feef 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2c7a:	b990      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c7c:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2c7e:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2c80:	6820      	ldr	r0, [r4, #0]
c0de2c82:	f000 fb9d 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de2c86:	b960      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c88:	686b      	ldr	r3, [r5, #4]
c0de2c8a:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2c8e:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2c90:	f004 fee2 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2c94:	b928      	cbnz	r0, c0de2ca2 <tEdwards_double+0xc2>
c0de2c96:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2c98:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2c9a:	6860      	ldr	r0, [r4, #4]
c0de2c9c:	f000 fb90 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de2ca0:	b100      	cbz	r0, c0de2ca4 <tEdwards_double+0xc4>
c0de2ca2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2ca4:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2ca6:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2ca8:	68a0      	ldr	r0, [r4, #8]
c0de2caa:	4633      	mov	r3, r6
c0de2cac:	b001      	add	sp, #4
c0de2cae:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2cb2:	f004 bf37 	b.w	c0de7b24 <cx_mont_mul>

c0de2cb6 <tEdwards_add>:
c0de2cb6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2cba:	4606      	mov	r6, r0
c0de2cbc:	4617      	mov	r7, r2
c0de2cbe:	460c      	mov	r4, r1
c0de2cc0:	6892      	ldr	r2, [r2, #8]
c0de2cc2:	6889      	ldr	r1, [r1, #8]
c0de2cc4:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2cc6:	4698      	mov	r8, r3
c0de2cc8:	f106 0520 	add.w	r5, r6, #32
c0de2ccc:	f000 fb7b 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2cd0:	2800      	cmp	r0, #0
c0de2cd2:	d17d      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2cd4:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2cd8:	462b      	mov	r3, r5
c0de2cda:	460a      	mov	r2, r1
c0de2cdc:	f004 ff22 	bl	c0de7b24 <cx_mont_mul>
c0de2ce0:	2800      	cmp	r0, #0
c0de2ce2:	d175      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2ce4:	683a      	ldr	r2, [r7, #0]
c0de2ce6:	6821      	ldr	r1, [r4, #0]
c0de2ce8:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2cea:	f000 fb6c 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2cee:	2800      	cmp	r0, #0
c0de2cf0:	d16e      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2cf2:	687a      	ldr	r2, [r7, #4]
c0de2cf4:	6861      	ldr	r1, [r4, #4]
c0de2cf6:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2cf8:	f000 fb65 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2cfc:	2800      	cmp	r0, #0
c0de2cfe:	d167      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2d00:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2d04:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2d06:	f000 fb5e 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2d0a:	2800      	cmp	r0, #0
c0de2d0c:	d160      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2d0e:	69f2      	ldr	r2, [r6, #28]
c0de2d10:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2d12:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2d14:	f000 fb57 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2d18:	2800      	cmp	r0, #0
c0de2d1a:	d159      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2d1c:	6873      	ldr	r3, [r6, #4]
c0de2d1e:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2d20:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2d24:	f004 fe98 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2d28:	2800      	cmp	r0, #0
c0de2d2a:	d151      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2d2c:	6873      	ldr	r3, [r6, #4]
c0de2d2e:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2d30:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2d32:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2d34:	f004 fe84 	bl	c0de7a40 <cx_bn_mod_add>
c0de2d38:	2800      	cmp	r0, #0
c0de2d3a:	d149      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2d3c:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2d40:	6873      	ldr	r3, [r6, #4]
c0de2d42:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2d44:	f004 fe7c 	bl	c0de7a40 <cx_bn_mod_add>
c0de2d48:	2800      	cmp	r0, #0
c0de2d4a:	d141      	bne.n	c0de2dd0 <tEdwards_add+0x11a>
c0de2d4c:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2d50:	6873      	ldr	r3, [r6, #4]
c0de2d52:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2d54:	f004 fe74 	bl	c0de7a40 <cx_bn_mod_add>
c0de2d58:	bbd0      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2d5a:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2d5c:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2d60:	f000 fb31 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2d64:	bba0      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2d66:	6873      	ldr	r3, [r6, #4]
c0de2d68:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2d6c:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2d6e:	f004 fe73 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2d72:	bb68      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2d74:	6873      	ldr	r3, [r6, #4]
c0de2d76:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2d78:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2d7c:	f004 fe6c 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2d80:	bb30      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2d82:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2d86:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2d88:	f000 fb1d 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2d8c:	bb00      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2d8e:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2d90:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2d92:	f8d8 0000 	ldr.w	r0, [r8]
c0de2d96:	f000 fb16 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2d9a:	b9c8      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2d9c:	69b1      	ldr	r1, [r6, #24]
c0de2d9e:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2da2:	f000 fb10 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2da6:	b998      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2da8:	6873      	ldr	r3, [r6, #4]
c0de2daa:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2dac:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2dae:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2db0:	f004 fe52 	bl	c0de7a58 <cx_bn_mod_sub>
c0de2db4:	b960      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2db6:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2db8:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2dba:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2dbc:	f000 fb03 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2dc0:	b930      	cbnz	r0, c0de2dd0 <tEdwards_add+0x11a>
c0de2dc2:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2dc6:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2dca:	f000 fafc 	bl	c0de33c6 <OUTLINED_FUNCTION_1>
c0de2dce:	b108      	cbz	r0, c0de2dd4 <tEdwards_add+0x11e>
c0de2dd0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2dd4:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2dd8:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2ddc:	462b      	mov	r3, r5
c0de2dde:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2de2:	f004 be9f 	b.w	c0de7b24 <cx_mont_mul>

c0de2de6 <tEdwards_IsOnCurve>:
c0de2de6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2de8:	4605      	mov	r5, r0
c0de2dea:	460f      	mov	r7, r1
c0de2dec:	2005      	movs	r0, #5
c0de2dee:	6809      	ldr	r1, [r1, #0]
c0de2df0:	4614      	mov	r4, r2
c0de2df2:	9000      	str	r0, [sp, #0]
c0de2df4:	f105 0620 	add.w	r6, r5, #32
c0de2df8:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2dfa:	460a      	mov	r2, r1
c0de2dfc:	f000 fae0 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de2e00:	b100      	cbz	r0, c0de2e04 <tEdwards_IsOnCurve+0x1e>
c0de2e02:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2e04:	6879      	ldr	r1, [r7, #4]
c0de2e06:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2e08:	f000 fae0 	bl	c0de33cc <OUTLINED_FUNCTION_2>
c0de2e0c:	2800      	cmp	r0, #0
c0de2e0e:	d1f8      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e10:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2e14:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2e16:	f000 fad3 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de2e1a:	2800      	cmp	r0, #0
c0de2e1c:	d1f1      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e1e:	69a9      	ldr	r1, [r5, #24]
c0de2e20:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2e22:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2e24:	f000 facc 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de2e28:	2800      	cmp	r0, #0
c0de2e2a:	d1ea      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e2c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2e2e:	686b      	ldr	r3, [r5, #4]
c0de2e30:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2e32:	4601      	mov	r1, r0
c0de2e34:	f004 fe04 	bl	c0de7a40 <cx_bn_mod_add>
c0de2e38:	2800      	cmp	r0, #0
c0de2e3a:	d1e2      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e3c:	69e9      	ldr	r1, [r5, #28]
c0de2e3e:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2e40:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2e42:	f000 fabd 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de2e46:	2800      	cmp	r0, #0
c0de2e48:	d1db      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e4a:	686b      	ldr	r3, [r5, #4]
c0de2e4c:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2e4e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2e50:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2e52:	f004 fdf5 	bl	c0de7a40 <cx_bn_mod_add>
c0de2e56:	2800      	cmp	r0, #0
c0de2e58:	d1d3      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e5a:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2e5c:	4632      	mov	r2, r6
c0de2e5e:	4601      	mov	r1, r0
c0de2e60:	f004 fe54 	bl	c0de7b0c <cx_mont_from_montgomery>
c0de2e64:	2800      	cmp	r0, #0
c0de2e66:	d1cc      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e68:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2e6a:	4632      	mov	r2, r6
c0de2e6c:	4601      	mov	r1, r0
c0de2e6e:	f004 fe4d 	bl	c0de7b0c <cx_mont_from_montgomery>
c0de2e72:	2800      	cmp	r0, #0
c0de2e74:	d1c5      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e76:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de2e7a:	466a      	mov	r2, sp
c0de2e7c:	f004 fdbc 	bl	c0de79f8 <cx_bn_cmp>
c0de2e80:	2800      	cmp	r0, #0
c0de2e82:	d1be      	bne.n	c0de2e02 <tEdwards_IsOnCurve+0x1c>
c0de2e84:	9800      	ldr	r0, [sp, #0]
c0de2e86:	fab0 f080 	clz	r0, r0
c0de2e8a:	0940      	lsrs	r0, r0, #5
c0de2e8c:	7020      	strb	r0, [r4, #0]
c0de2e8e:	2000      	movs	r0, #0
c0de2e90:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2e94 <tEdwards_Curve_alloc_init>:
c0de2e94:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2e98:	b0d2      	sub	sp, #328	@ 0x148
c0de2e9a:	4604      	mov	r4, r0
c0de2e9c:	2902      	cmp	r1, #2
c0de2e9e:	d022      	beq.n	c0de2ee6 <tEdwards_Curve_alloc_init+0x52>
c0de2ea0:	2901      	cmp	r1, #1
c0de2ea2:	f040 80cd 	bne.w	c0de3040 <tEdwards_Curve_alloc_init+0x1ac>
c0de2ea6:	2020      	movs	r0, #32
c0de2ea8:	2220      	movs	r2, #32
c0de2eaa:	6020      	str	r0, [r4, #0]
c0de2eac:	af4a      	add	r7, sp, #296	@ 0x128
c0de2eae:	4967      	ldr	r1, [pc, #412]	@ (c0de304c <tEdwards_Curve_alloc_init+0x1b8>)
c0de2eb0:	4638      	mov	r0, r7
c0de2eb2:	4479      	add	r1, pc
c0de2eb4:	f005 f800 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2eb8:	ae42      	add	r6, sp, #264	@ 0x108
c0de2eba:	4965      	ldr	r1, [pc, #404]	@ (c0de3050 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2ebc:	2220      	movs	r2, #32
c0de2ebe:	4630      	mov	r0, r6
c0de2ec0:	4479      	add	r1, pc
c0de2ec2:	f004 fff9 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2ec6:	4963      	ldr	r1, [pc, #396]	@ (c0de3054 <tEdwards_Curve_alloc_init+0x1c0>)
c0de2ec8:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2ecc:	2220      	movs	r2, #32
c0de2ece:	4650      	mov	r0, sl
c0de2ed0:	4479      	add	r1, pc
c0de2ed2:	f004 fff1 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2ed6:	ad32      	add	r5, sp, #200	@ 0xc8
c0de2ed8:	495f      	ldr	r1, [pc, #380]	@ (c0de3058 <tEdwards_Curve_alloc_init+0x1c4>)
c0de2eda:	2220      	movs	r2, #32
c0de2edc:	4628      	mov	r0, r5
c0de2ede:	4479      	add	r1, pc
c0de2ee0:	f004 ffea 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2ee4:	e02d      	b.n	c0de2f42 <tEdwards_Curve_alloc_init+0xae>
c0de2ee6:	2020      	movs	r0, #32
c0de2ee8:	2220      	movs	r2, #32
c0de2eea:	6020      	str	r0, [r4, #0]
c0de2eec:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2eee:	495b      	ldr	r1, [pc, #364]	@ (c0de305c <tEdwards_Curve_alloc_init+0x1c8>)
c0de2ef0:	4638      	mov	r0, r7
c0de2ef2:	4479      	add	r1, pc
c0de2ef4:	f004 ffe0 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2ef8:	ae22      	add	r6, sp, #136	@ 0x88
c0de2efa:	4959      	ldr	r1, [pc, #356]	@ (c0de3060 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2efc:	2220      	movs	r2, #32
c0de2efe:	4630      	mov	r0, r6
c0de2f00:	4479      	add	r1, pc
c0de2f02:	f004 ffd9 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2f06:	4957      	ldr	r1, [pc, #348]	@ (c0de3064 <tEdwards_Curve_alloc_init+0x1d0>)
c0de2f08:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2f0c:	2220      	movs	r2, #32
c0de2f0e:	4650      	mov	r0, sl
c0de2f10:	4479      	add	r1, pc
c0de2f12:	f004 ffd1 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2f16:	a812      	add	r0, sp, #72	@ 0x48
c0de2f18:	4953      	ldr	r1, [pc, #332]	@ (c0de3068 <tEdwards_Curve_alloc_init+0x1d4>)
c0de2f1a:	2220      	movs	r2, #32
c0de2f1c:	9001      	str	r0, [sp, #4]
c0de2f1e:	4479      	add	r1, pc
c0de2f20:	f004 ffca 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2f24:	4951      	ldr	r1, [pc, #324]	@ (c0de306c <tEdwards_Curve_alloc_init+0x1d8>)
c0de2f26:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de2f2a:	2220      	movs	r2, #32
c0de2f2c:	4658      	mov	r0, fp
c0de2f2e:	4479      	add	r1, pc
c0de2f30:	f004 ffc2 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2f34:	ad02      	add	r5, sp, #8
c0de2f36:	494e      	ldr	r1, [pc, #312]	@ (c0de3070 <tEdwards_Curve_alloc_init+0x1dc>)
c0de2f38:	2220      	movs	r2, #32
c0de2f3a:	4628      	mov	r0, r5
c0de2f3c:	4479      	add	r1, pc
c0de2f3e:	f004 ffbb 	bl	c0de7eb8 <__aeabi_memcpy>
c0de2f42:	f104 0804 	add.w	r8, r4, #4
c0de2f46:	2120      	movs	r1, #32
c0de2f48:	463a      	mov	r2, r7
c0de2f4a:	2320      	movs	r3, #32
c0de2f4c:	4640      	mov	r0, r8
c0de2f4e:	f004 fd07 	bl	c0de7960 <cx_bn_alloc_init>
c0de2f52:	2800      	cmp	r0, #0
c0de2f54:	d175      	bne.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2f56:	4620      	mov	r0, r4
c0de2f58:	462a      	mov	r2, r5
c0de2f5a:	f850 1b08 	ldr.w	r1, [r0], #8
c0de2f5e:	460b      	mov	r3, r1
c0de2f60:	f004 fcfe 	bl	c0de7960 <cx_bn_alloc_init>
c0de2f64:	2800      	cmp	r0, #0
c0de2f66:	d16c      	bne.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2f68:	f104 0520 	add.w	r5, r4, #32
c0de2f6c:	2120      	movs	r1, #32
c0de2f6e:	4628      	mov	r0, r5
c0de2f70:	f004 fdac 	bl	c0de7acc <cx_mont_alloc>
c0de2f74:	2800      	cmp	r0, #0
c0de2f76:	d164      	bne.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2f78:	f8d8 1000 	ldr.w	r1, [r8]
c0de2f7c:	4628      	mov	r0, r5
c0de2f7e:	f004 fdaf 	bl	c0de7ae0 <cx_mont_init>
c0de2f82:	2800      	cmp	r0, #0
c0de2f84:	d15d      	bne.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2f86:	4627      	mov	r7, r4
c0de2f88:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2f8c:	4638      	mov	r0, r7
c0de2f8e:	f004 fcdd 	bl	c0de794c <cx_bn_alloc>
c0de2f92:	2800      	cmp	r0, #0
c0de2f94:	d155      	bne.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2f96:	6838      	ldr	r0, [r7, #0]
c0de2f98:	2101      	movs	r1, #1
c0de2f9a:	f004 fd17 	bl	c0de79cc <cx_bn_set_u32>
c0de2f9e:	2800      	cmp	r0, #0
c0de2fa0:	d14f      	bne.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2fa2:	6838      	ldr	r0, [r7, #0]
c0de2fa4:	f000 fa16 	bl	c0de33d4 <OUTLINED_FUNCTION_3>
c0de2fa8:	2800      	cmp	r0, #0
c0de2faa:	d14a      	bne.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2fac:	f104 070c 	add.w	r7, r4, #12
c0de2fb0:	4620      	mov	r0, r4
c0de2fb2:	4639      	mov	r1, r7
c0de2fb4:	f7ff fdee 	bl	c0de2b94 <tEdwards_alloc>
c0de2fb8:	2800      	cmp	r0, #0
c0de2fba:	d142      	bne.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2fbc:	9901      	ldr	r1, [sp, #4]
c0de2fbe:	4620      	mov	r0, r4
c0de2fc0:	465a      	mov	r2, fp
c0de2fc2:	463b      	mov	r3, r7
c0de2fc4:	f000 f856 	bl	c0de3074 <tEdwards_init>
c0de2fc8:	bbd8      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2fca:	4627      	mov	r7, r4
c0de2fcc:	4632      	mov	r2, r6
c0de2fce:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2fd2:	4638      	mov	r0, r7
c0de2fd4:	460b      	mov	r3, r1
c0de2fd6:	f004 fcc3 	bl	c0de7960 <cx_bn_alloc_init>
c0de2fda:	bb90      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2fdc:	6838      	ldr	r0, [r7, #0]
c0de2fde:	f000 f9f9 	bl	c0de33d4 <OUTLINED_FUNCTION_3>
c0de2fe2:	bb70      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2fe4:	4626      	mov	r6, r4
c0de2fe6:	4652      	mov	r2, sl
c0de2fe8:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2fec:	4630      	mov	r0, r6
c0de2fee:	460b      	mov	r3, r1
c0de2ff0:	f004 fcb6 	bl	c0de7960 <cx_bn_alloc_init>
c0de2ff4:	bb28      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ff6:	6830      	ldr	r0, [r6, #0]
c0de2ff8:	f000 f9ec 	bl	c0de33d4 <OUTLINED_FUNCTION_3>
c0de2ffc:	bb08      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de2ffe:	4620      	mov	r0, r4
c0de3000:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de3004:	f004 fca2 	bl	c0de794c <cx_bn_alloc>
c0de3008:	b9d8      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de300a:	f000 f9fb 	bl	c0de3404 <OUTLINED_FUNCTION_8>
c0de300e:	b9c0      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de3010:	f000 f9e4 	bl	c0de33dc <OUTLINED_FUNCTION_4>
c0de3014:	b9a8      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de3016:	f000 f9f0 	bl	c0de33fa <OUTLINED_FUNCTION_7>
c0de301a:	b990      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de301c:	f000 f9fc 	bl	c0de3418 <OUTLINED_FUNCTION_10>
c0de3020:	b978      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de3022:	f000 f9e5 	bl	c0de33f0 <OUTLINED_FUNCTION_6>
c0de3026:	b960      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de3028:	f000 f9f1 	bl	c0de340e <OUTLINED_FUNCTION_9>
c0de302c:	b948      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de302e:	f000 f9da 	bl	c0de33e6 <OUTLINED_FUNCTION_5>
c0de3032:	b930      	cbnz	r0, c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de3034:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de3038:	4620      	mov	r0, r4
c0de303a:	f004 fc87 	bl	c0de794c <cx_bn_alloc>
c0de303e:	e000      	b.n	c0de3042 <tEdwards_Curve_alloc_init+0x1ae>
c0de3040:	4801      	ldr	r0, [pc, #4]	@ (c0de3048 <tEdwards_Curve_alloc_init+0x1b4>)
c0de3042:	b052      	add	sp, #328	@ 0x148
c0de3044:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3048:	5a4b4e01 	.word	0x5a4b4e01
c0de304c:	00005662 	.word	0x00005662
c0de3050:	00005894 	.word	0x00005894
c0de3054:	00005844 	.word	0x00005844
c0de3058:	00005736 	.word	0x00005736
c0de305c:	000058a2 	.word	0x000058a2
c0de3060:	000057f4 	.word	0x000057f4
c0de3064:	00005864 	.word	0x00005864
c0de3068:	00005896 	.word	0x00005896
c0de306c:	000058a6 	.word	0x000058a6
c0de3070:	000056f8 	.word	0x000056f8

c0de3074 <tEdwards_init>:
c0de3074:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3076:	6806      	ldr	r6, [r0, #0]
c0de3078:	461c      	mov	r4, r3
c0de307a:	4617      	mov	r7, r2
c0de307c:	460a      	mov	r2, r1
c0de307e:	4605      	mov	r5, r0
c0de3080:	a802      	add	r0, sp, #8
c0de3082:	4631      	mov	r1, r6
c0de3084:	4633      	mov	r3, r6
c0de3086:	f004 fc6b 	bl	c0de7960 <cx_bn_alloc_init>
c0de308a:	b100      	cbz	r0, c0de308e <tEdwards_init+0x1a>
c0de308c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de308e:	a801      	add	r0, sp, #4
c0de3090:	4631      	mov	r1, r6
c0de3092:	463a      	mov	r2, r7
c0de3094:	4633      	mov	r3, r6
c0de3096:	f004 fc63 	bl	c0de7960 <cx_bn_alloc_init>
c0de309a:	2800      	cmp	r0, #0
c0de309c:	d1f6      	bne.n	c0de308c <tEdwards_init+0x18>
c0de309e:	4668      	mov	r0, sp
c0de30a0:	4631      	mov	r1, r6
c0de30a2:	f004 fc53 	bl	c0de794c <cx_bn_alloc>
c0de30a6:	2800      	cmp	r0, #0
c0de30a8:	d1f0      	bne.n	c0de308c <tEdwards_init+0x18>
c0de30aa:	f105 0620 	add.w	r6, r5, #32
c0de30ae:	6820      	ldr	r0, [r4, #0]
c0de30b0:	9902      	ldr	r1, [sp, #8]
c0de30b2:	4632      	mov	r2, r6
c0de30b4:	f004 fd1e 	bl	c0de7af4 <cx_mont_to_montgomery>
c0de30b8:	2800      	cmp	r0, #0
c0de30ba:	d1e7      	bne.n	c0de308c <tEdwards_init+0x18>
c0de30bc:	6860      	ldr	r0, [r4, #4]
c0de30be:	9901      	ldr	r1, [sp, #4]
c0de30c0:	4632      	mov	r2, r6
c0de30c2:	f004 fd17 	bl	c0de7af4 <cx_mont_to_montgomery>
c0de30c6:	2800      	cmp	r0, #0
c0de30c8:	d1e0      	bne.n	c0de308c <tEdwards_init+0x18>
c0de30ca:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de30cc:	68a0      	ldr	r0, [r4, #8]
c0de30ce:	f004 fc73 	bl	c0de79b8 <cx_bn_copy>
c0de30d2:	2800      	cmp	r0, #0
c0de30d4:	d1da      	bne.n	c0de308c <tEdwards_init+0x18>
c0de30d6:	a802      	add	r0, sp, #8
c0de30d8:	f004 fc4e 	bl	c0de7978 <cx_bn_destroy>
c0de30dc:	2800      	cmp	r0, #0
c0de30de:	d1d5      	bne.n	c0de308c <tEdwards_init+0x18>
c0de30e0:	a801      	add	r0, sp, #4
c0de30e2:	f004 fc49 	bl	c0de7978 <cx_bn_destroy>
c0de30e6:	2800      	cmp	r0, #0
c0de30e8:	d1d0      	bne.n	c0de308c <tEdwards_init+0x18>
c0de30ea:	4668      	mov	r0, sp
c0de30ec:	f004 fc44 	bl	c0de7978 <cx_bn_destroy>
c0de30f0:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de30f2 <tEdwards_Curve_partial_destroy>:
c0de30f2:	b510      	push	{r4, lr}
c0de30f4:	4604      	mov	r4, r0
c0de30f6:	302c      	adds	r0, #44	@ 0x2c
c0de30f8:	f004 fc3e 	bl	c0de7978 <cx_bn_destroy>
c0de30fc:	bbd8      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de30fe:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de3102:	f004 fc39 	bl	c0de7978 <cx_bn_destroy>
c0de3106:	bbb0      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de3108:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de310c:	f004 fc34 	bl	c0de7978 <cx_bn_destroy>
c0de3110:	bb88      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de3112:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de3116:	f004 fc2f 	bl	c0de7978 <cx_bn_destroy>
c0de311a:	bb60      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de311c:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de3120:	f004 fc2a 	bl	c0de7978 <cx_bn_destroy>
c0de3124:	bb38      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de3126:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de312a:	f004 fc25 	bl	c0de7978 <cx_bn_destroy>
c0de312e:	bb10      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de3130:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de3134:	f004 fc20 	bl	c0de7978 <cx_bn_destroy>
c0de3138:	b9e8      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de313a:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de313e:	f004 fc1b 	bl	c0de7978 <cx_bn_destroy>
c0de3142:	b9c0      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de3144:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de3148:	f004 fc16 	bl	c0de7978 <cx_bn_destroy>
c0de314c:	b998      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de314e:	f104 010c 	add.w	r1, r4, #12
c0de3152:	f7ff fd34 	bl	c0de2bbe <tEdwards_destroy>
c0de3156:	b970      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de3158:	f104 0018 	add.w	r0, r4, #24
c0de315c:	f004 fc0c 	bl	c0de7978 <cx_bn_destroy>
c0de3160:	b948      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de3162:	f104 001c 	add.w	r0, r4, #28
c0de3166:	f004 fc07 	bl	c0de7978 <cx_bn_destroy>
c0de316a:	b920      	cbnz	r0, c0de3176 <tEdwards_Curve_partial_destroy+0x84>
c0de316c:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de3170:	f004 fc02 	bl	c0de7978 <cx_bn_destroy>
c0de3174:	b100      	cbz	r0, c0de3178 <tEdwards_Curve_partial_destroy+0x86>
c0de3176:	bd10      	pop	{r4, pc}
c0de3178:	f104 0008 	add.w	r0, r4, #8
c0de317c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3180:	f004 bbfa 	b.w	c0de7978 <cx_bn_destroy>

c0de3184 <tEdwards_SetNeutral>:
c0de3184:	b5b0      	push	{r4, r5, r7, lr}
c0de3186:	4605      	mov	r5, r0
c0de3188:	6808      	ldr	r0, [r1, #0]
c0de318a:	460c      	mov	r4, r1
c0de318c:	2100      	movs	r1, #0
c0de318e:	f004 fc1d 	bl	c0de79cc <cx_bn_set_u32>
c0de3192:	b918      	cbnz	r0, c0de319c <tEdwards_SetNeutral+0x18>
c0de3194:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de3196:	f000 f944 	bl	c0de3422 <OUTLINED_FUNCTION_11>
c0de319a:	b100      	cbz	r0, c0de319e <tEdwards_SetNeutral+0x1a>
c0de319c:	bdb0      	pop	{r4, r5, r7, pc}
c0de319e:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de31a0:	68a0      	ldr	r0, [r4, #8]
c0de31a2:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de31a6:	f004 bc07 	b.w	c0de79b8 <cx_bn_copy>

c0de31aa <tEdwards_export>:
c0de31aa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de31ae:	4698      	mov	r8, r3
c0de31b0:	4616      	mov	r6, r2
c0de31b2:	460f      	mov	r7, r1
c0de31b4:	4605      	mov	r5, r0
c0de31b6:	f000 f81e 	bl	c0de31f6 <tEdwards_normalize>
c0de31ba:	b998      	cbnz	r0, c0de31e4 <tEdwards_export+0x3a>
c0de31bc:	f105 0420 	add.w	r4, r5, #32
c0de31c0:	6839      	ldr	r1, [r7, #0]
c0de31c2:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de31c4:	4622      	mov	r2, r4
c0de31c6:	f004 fca1 	bl	c0de7b0c <cx_mont_from_montgomery>
c0de31ca:	b958      	cbnz	r0, c0de31e4 <tEdwards_export+0x3a>
c0de31cc:	6879      	ldr	r1, [r7, #4]
c0de31ce:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de31d0:	4622      	mov	r2, r4
c0de31d2:	f004 fc9b 	bl	c0de7b0c <cx_mont_from_montgomery>
c0de31d6:	b928      	cbnz	r0, c0de31e4 <tEdwards_export+0x3a>
c0de31d8:	682a      	ldr	r2, [r5, #0]
c0de31da:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de31dc:	4631      	mov	r1, r6
c0de31de:	f004 fbff 	bl	c0de79e0 <cx_bn_export>
c0de31e2:	b108      	cbz	r0, c0de31e8 <tEdwards_export+0x3e>
c0de31e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de31e8:	682a      	ldr	r2, [r5, #0]
c0de31ea:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de31ec:	4641      	mov	r1, r8
c0de31ee:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de31f2:	f004 bbf5 	b.w	c0de79e0 <cx_bn_export>

c0de31f6 <tEdwards_normalize>:
c0de31f6:	b570      	push	{r4, r5, r6, lr}
c0de31f8:	4605      	mov	r5, r0
c0de31fa:	460c      	mov	r4, r1
c0de31fc:	6889      	ldr	r1, [r1, #8]
c0de31fe:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de3200:	f105 0620 	add.w	r6, r5, #32
c0de3204:	4632      	mov	r2, r6
c0de3206:	f004 fca9 	bl	c0de7b5c <cx_mont_invert_nprime>
c0de320a:	b9d0      	cbnz	r0, c0de3242 <tEdwards_normalize+0x4c>
c0de320c:	6822      	ldr	r2, [r4, #0]
c0de320e:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de3212:	f000 f8d5 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de3216:	b9a0      	cbnz	r0, c0de3242 <tEdwards_normalize+0x4c>
c0de3218:	6862      	ldr	r2, [r4, #4]
c0de321a:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de321c:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de321e:	f000 f8cf 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de3222:	b970      	cbnz	r0, c0de3242 <tEdwards_normalize+0x4c>
c0de3224:	68a2      	ldr	r2, [r4, #8]
c0de3226:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3228:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de322a:	f000 f8c9 	bl	c0de33c0 <OUTLINED_FUNCTION_0>
c0de322e:	b940      	cbnz	r0, c0de3242 <tEdwards_normalize+0x4c>
c0de3230:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de3232:	6820      	ldr	r0, [r4, #0]
c0de3234:	f004 fbc0 	bl	c0de79b8 <cx_bn_copy>
c0de3238:	b918      	cbnz	r0, c0de3242 <tEdwards_normalize+0x4c>
c0de323a:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de323c:	f000 f8f1 	bl	c0de3422 <OUTLINED_FUNCTION_11>
c0de3240:	b100      	cbz	r0, c0de3244 <tEdwards_normalize+0x4e>
c0de3242:	bd70      	pop	{r4, r5, r6, pc}
c0de3244:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de3246:	68a0      	ldr	r0, [r4, #8]
c0de3248:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de324c:	f004 bbb4 	b.w	c0de79b8 <cx_bn_copy>

c0de3250 <tEdwards_copy>:
c0de3250:	b5b0      	push	{r4, r5, r7, lr}
c0de3252:	460c      	mov	r4, r1
c0de3254:	4605      	mov	r5, r0
c0de3256:	6801      	ldr	r1, [r0, #0]
c0de3258:	6820      	ldr	r0, [r4, #0]
c0de325a:	f004 fbad 	bl	c0de79b8 <cx_bn_copy>
c0de325e:	b918      	cbnz	r0, c0de3268 <tEdwards_copy+0x18>
c0de3260:	6869      	ldr	r1, [r5, #4]
c0de3262:	f000 f8de 	bl	c0de3422 <OUTLINED_FUNCTION_11>
c0de3266:	b100      	cbz	r0, c0de326a <tEdwards_copy+0x1a>
c0de3268:	bdb0      	pop	{r4, r5, r7, pc}
c0de326a:	68a9      	ldr	r1, [r5, #8]
c0de326c:	68a0      	ldr	r0, [r4, #8]
c0de326e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3272:	f004 bba1 	b.w	c0de79b8 <cx_bn_copy>

c0de3276 <tEdwards_alloc_init>:
c0de3276:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3278:	460e      	mov	r6, r1
c0de327a:	6801      	ldr	r1, [r0, #0]
c0de327c:	4607      	mov	r7, r0
c0de327e:	4618      	mov	r0, r3
c0de3280:	461c      	mov	r4, r3
c0de3282:	4615      	mov	r5, r2
c0de3284:	f004 fb62 	bl	c0de794c <cx_bn_alloc>
c0de3288:	b950      	cbnz	r0, c0de32a0 <tEdwards_alloc_init+0x2a>
c0de328a:	6839      	ldr	r1, [r7, #0]
c0de328c:	1d20      	adds	r0, r4, #4
c0de328e:	f004 fb5d 	bl	c0de794c <cx_bn_alloc>
c0de3292:	b928      	cbnz	r0, c0de32a0 <tEdwards_alloc_init+0x2a>
c0de3294:	6839      	ldr	r1, [r7, #0]
c0de3296:	f104 0008 	add.w	r0, r4, #8
c0de329a:	f004 fb57 	bl	c0de794c <cx_bn_alloc>
c0de329e:	b100      	cbz	r0, c0de32a2 <tEdwards_alloc_init+0x2c>
c0de32a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de32a2:	4638      	mov	r0, r7
c0de32a4:	4631      	mov	r1, r6
c0de32a6:	462a      	mov	r2, r5
c0de32a8:	4623      	mov	r3, r4
c0de32aa:	b001      	add	sp, #4
c0de32ac:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de32b0:	f7ff bee0 	b.w	c0de3074 <tEdwards_init>

c0de32b4 <tEdwards_scalarMul_bn>:
c0de32b4:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de32b8:	4607      	mov	r7, r0
c0de32ba:	2000      	movs	r0, #0
c0de32bc:	4688      	mov	r8, r1
c0de32be:	4615      	mov	r5, r2
c0de32c0:	2100      	movs	r1, #0
c0de32c2:	469b      	mov	fp, r3
c0de32c4:	9003      	str	r0, [sp, #12]
c0de32c6:	f88d 000b 	strb.w	r0, [sp, #11]
c0de32ca:	6810      	ldr	r0, [r2, #0]
c0de32cc:	aa03      	add	r2, sp, #12
c0de32ce:	f004 fb9f 	bl	c0de7a10 <cx_bn_cmp_u32>
c0de32d2:	bb38      	cbnz	r0, c0de3324 <tEdwards_scalarMul_bn+0x70>
c0de32d4:	9803      	ldr	r0, [sp, #12]
c0de32d6:	b1d0      	cbz	r0, c0de330e <tEdwards_scalarMul_bn+0x5a>
c0de32d8:	6828      	ldr	r0, [r5, #0]
c0de32da:	a901      	add	r1, sp, #4
c0de32dc:	f004 fb56 	bl	c0de798c <cx_bn_nbytes>
c0de32e0:	bb00      	cbnz	r0, c0de3324 <tEdwards_scalarMul_bn+0x70>
c0de32e2:	2002      	movs	r0, #2
c0de32e4:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de32e8:	f10d 040b 	add.w	r4, sp, #11
c0de32ec:	6538      	str	r0, [r7, #80]	@ 0x50
c0de32ee:	9801      	ldr	r0, [sp, #4]
c0de32f0:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de32f4:	2000      	movs	r0, #0
c0de32f6:	2801      	cmp	r0, #1
c0de32f8:	d00f      	beq.n	c0de331a <tEdwards_scalarMul_bn+0x66>
c0de32fa:	6828      	ldr	r0, [r5, #0]
c0de32fc:	4631      	mov	r1, r6
c0de32fe:	4622      	mov	r2, r4
c0de3300:	f004 fb92 	bl	c0de7a28 <cx_bn_tst_bit>
c0de3304:	b970      	cbnz	r0, c0de3324 <tEdwards_scalarMul_bn+0x70>
c0de3306:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de330a:	3e01      	subs	r6, #1
c0de330c:	e7f3      	b.n	c0de32f6 <tEdwards_scalarMul_bn+0x42>
c0de330e:	4638      	mov	r0, r7
c0de3310:	4659      	mov	r1, fp
c0de3312:	f7ff ff37 	bl	c0de3184 <tEdwards_SetNeutral>
c0de3316:	b928      	cbnz	r0, c0de3324 <tEdwards_scalarMul_bn+0x70>
c0de3318:	e7de      	b.n	c0de32d8 <tEdwards_scalarMul_bn+0x24>
c0de331a:	4640      	mov	r0, r8
c0de331c:	4659      	mov	r1, fp
c0de331e:	f7ff ff97 	bl	c0de3250 <tEdwards_copy>
c0de3322:	b110      	cbz	r0, c0de332a <tEdwards_scalarMul_bn+0x76>
c0de3324:	b004      	add	sp, #16
c0de3326:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de332a:	2001      	movs	r0, #1
c0de332c:	f10d 0a0b 	add.w	sl, sp, #11
c0de3330:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de3334:	2e00      	cmp	r6, #0
c0de3336:	d420      	bmi.n	c0de337a <tEdwards_scalarMul_bn+0xc6>
c0de3338:	4638      	mov	r0, r7
c0de333a:	4659      	mov	r1, fp
c0de333c:	465a      	mov	r2, fp
c0de333e:	f7ff fc4f 	bl	c0de2be0 <tEdwards_double>
c0de3342:	2800      	cmp	r0, #0
c0de3344:	d1ee      	bne.n	c0de3324 <tEdwards_scalarMul_bn+0x70>
c0de3346:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de3348:	4631      	mov	r1, r6
c0de334a:	4652      	mov	r2, sl
c0de334c:	0040      	lsls	r0, r0, #1
c0de334e:	6538      	str	r0, [r7, #80]	@ 0x50
c0de3350:	6828      	ldr	r0, [r5, #0]
c0de3352:	f004 fb69 	bl	c0de7a28 <cx_bn_tst_bit>
c0de3356:	2800      	cmp	r0, #0
c0de3358:	d1e4      	bne.n	c0de3324 <tEdwards_scalarMul_bn+0x70>
c0de335a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de335e:	b150      	cbz	r0, c0de3376 <tEdwards_scalarMul_bn+0xc2>
c0de3360:	4638      	mov	r0, r7
c0de3362:	4659      	mov	r1, fp
c0de3364:	4642      	mov	r2, r8
c0de3366:	465b      	mov	r3, fp
c0de3368:	f7ff fca5 	bl	c0de2cb6 <tEdwards_add>
c0de336c:	2800      	cmp	r0, #0
c0de336e:	d1d9      	bne.n	c0de3324 <tEdwards_scalarMul_bn+0x70>
c0de3370:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de3372:	3001      	adds	r0, #1
c0de3374:	6538      	str	r0, [r7, #80]	@ 0x50
c0de3376:	3e01      	subs	r6, #1
c0de3378:	e7dc      	b.n	c0de3334 <tEdwards_scalarMul_bn+0x80>
c0de337a:	2000      	movs	r0, #0
c0de337c:	e7d2      	b.n	c0de3324 <tEdwards_scalarMul_bn+0x70>
	...

c0de3380 <tEdwards_scalarMul>:
c0de3380:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de3382:	460c      	mov	r4, r1
c0de3384:	6801      	ldr	r1, [r0, #0]
c0de3386:	4299      	cmp	r1, r3
c0de3388:	bf3c      	itt	cc
c0de338a:	480c      	ldrcc	r0, [pc, #48]	@ (c0de33bc <tEdwards_scalarMul+0x3c>)
c0de338c:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de338e:	4605      	mov	r5, r0
c0de3390:	20ca      	movs	r0, #202	@ 0xca
c0de3392:	6528      	str	r0, [r5, #80]	@ 0x50
c0de3394:	a801      	add	r0, sp, #4
c0de3396:	f004 fae3 	bl	c0de7960 <cx_bn_alloc_init>
c0de339a:	b100      	cbz	r0, c0de339e <tEdwards_scalarMul+0x1e>
c0de339c:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de339e:	20b3      	movs	r0, #179	@ 0xb3
c0de33a0:	9b06      	ldr	r3, [sp, #24]
c0de33a2:	4621      	mov	r1, r4
c0de33a4:	6528      	str	r0, [r5, #80]	@ 0x50
c0de33a6:	aa01      	add	r2, sp, #4
c0de33a8:	4628      	mov	r0, r5
c0de33aa:	f7ff ff83 	bl	c0de32b4 <tEdwards_scalarMul_bn>
c0de33ae:	2800      	cmp	r0, #0
c0de33b0:	d1f4      	bne.n	c0de339c <tEdwards_scalarMul+0x1c>
c0de33b2:	a801      	add	r0, sp, #4
c0de33b4:	f004 fae0 	bl	c0de7978 <cx_bn_destroy>
c0de33b8:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de33ba:	bf00      	nop
c0de33bc:	5a4b4e01 	.word	0x5a4b4e01

c0de33c0 <OUTLINED_FUNCTION_0>:
c0de33c0:	4633      	mov	r3, r6
c0de33c2:	f004 bbaf 	b.w	c0de7b24 <cx_mont_mul>

c0de33c6 <OUTLINED_FUNCTION_1>:
c0de33c6:	462b      	mov	r3, r5
c0de33c8:	f004 bbac 	b.w	c0de7b24 <cx_mont_mul>

c0de33cc <OUTLINED_FUNCTION_2>:
c0de33cc:	4633      	mov	r3, r6
c0de33ce:	460a      	mov	r2, r1
c0de33d0:	f004 bba8 	b.w	c0de7b24 <cx_mont_mul>

c0de33d4 <OUTLINED_FUNCTION_3>:
c0de33d4:	462a      	mov	r2, r5
c0de33d6:	4601      	mov	r1, r0
c0de33d8:	f004 bb8c 	b.w	c0de7af4 <cx_mont_to_montgomery>

c0de33dc <OUTLINED_FUNCTION_4>:
c0de33dc:	4620      	mov	r0, r4
c0de33de:	f850 1b34 	ldr.w	r1, [r0], #52
c0de33e2:	f004 bab3 	b.w	c0de794c <cx_bn_alloc>

c0de33e6 <OUTLINED_FUNCTION_5>:
c0de33e6:	4620      	mov	r0, r4
c0de33e8:	f850 1b48 	ldr.w	r1, [r0], #72
c0de33ec:	f004 baae 	b.w	c0de794c <cx_bn_alloc>

c0de33f0 <OUTLINED_FUNCTION_6>:
c0de33f0:	4620      	mov	r0, r4
c0de33f2:	f850 1b40 	ldr.w	r1, [r0], #64
c0de33f6:	f004 baa9 	b.w	c0de794c <cx_bn_alloc>

c0de33fa <OUTLINED_FUNCTION_7>:
c0de33fa:	4620      	mov	r0, r4
c0de33fc:	f850 1b38 	ldr.w	r1, [r0], #56
c0de3400:	f004 baa4 	b.w	c0de794c <cx_bn_alloc>

c0de3404 <OUTLINED_FUNCTION_8>:
c0de3404:	4620      	mov	r0, r4
c0de3406:	f850 1b30 	ldr.w	r1, [r0], #48
c0de340a:	f004 ba9f 	b.w	c0de794c <cx_bn_alloc>

c0de340e <OUTLINED_FUNCTION_9>:
c0de340e:	4620      	mov	r0, r4
c0de3410:	f850 1b44 	ldr.w	r1, [r0], #68
c0de3414:	f004 ba9a 	b.w	c0de794c <cx_bn_alloc>

c0de3418 <OUTLINED_FUNCTION_10>:
c0de3418:	4620      	mov	r0, r4
c0de341a:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de341e:	f004 ba95 	b.w	c0de794c <cx_bn_alloc>

c0de3422 <OUTLINED_FUNCTION_11>:
c0de3422:	6860      	ldr	r0, [r4, #4]
c0de3424:	f004 bac8 	b.w	c0de79b8 <cx_bn_copy>

c0de3428 <grain_lfsr_advance>:
c0de3428:	b5b0      	push	{r4, r5, r7, lr}
c0de342a:	68c2      	ldr	r2, [r0, #12]
c0de342c:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de3430:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de3434:	ea4f 0234 	mov.w	r2, r4, rrx
c0de3438:	07e4      	lsls	r4, r4, #31
c0de343a:	60c5      	str	r5, [r0, #12]
c0de343c:	07dd      	lsls	r5, r3, #31
c0de343e:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de3442:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de3446:	6044      	str	r4, [r0, #4]
c0de3448:	4c15      	ldr	r4, [pc, #84]	@ (c0de34a0 <grain_lfsr_advance+0x78>)
c0de344a:	6005      	str	r5, [r0, #0]
c0de344c:	4021      	ands	r1, r4
c0de344e:	4c15      	ldr	r4, [pc, #84]	@ (c0de34a4 <grain_lfsr_advance+0x7c>)
c0de3450:	4023      	ands	r3, r4
c0de3452:	4419      	add	r1, r3
c0de3454:	0c0c      	lsrs	r4, r1, #16
c0de3456:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de345a:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de345e:	4421      	add	r1, r4
c0de3460:	0a0c      	lsrs	r4, r1, #8
c0de3462:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de3466:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de346a:	4061      	eors	r1, r4
c0de346c:	090c      	lsrs	r4, r1, #4
c0de346e:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de3472:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de3476:	4061      	eors	r1, r4
c0de3478:	088c      	lsrs	r4, r1, #2
c0de347a:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de347e:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de3482:	4061      	eors	r1, r4
c0de3484:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de3488:	ea4f 0331 	mov.w	r3, r1, rrx
c0de348c:	4059      	eors	r1, r3
c0de348e:	f001 0101 	and.w	r1, r1, #1
c0de3492:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de3496:	6082      	str	r2, [r0, #8]
c0de3498:	4608      	mov	r0, r1
c0de349a:	2100      	movs	r1, #0
c0de349c:	bdb0      	pop	{r4, r5, r7, pc}
c0de349e:	bf00      	nop
c0de34a0:	00802001 	.word	0x00802001
c0de34a4:	40080040 	.word	0x40080040

c0de34a8 <next64_graingen>:
c0de34a8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de34ac:	460c      	mov	r4, r1
c0de34ae:	4605      	mov	r5, r0
c0de34b0:	f04f 0a00 	mov.w	sl, #0
c0de34b4:	f04f 0800 	mov.w	r8, #0
c0de34b8:	2700      	movs	r7, #0
c0de34ba:	42a7      	cmp	r7, r4
c0de34bc:	d215      	bcs.n	c0de34ea <next64_graingen+0x42>
c0de34be:	4628      	mov	r0, r5
c0de34c0:	f7ff ffb2 	bl	c0de3428 <grain_lfsr_advance>
c0de34c4:	4606      	mov	r6, r0
c0de34c6:	4628      	mov	r0, r5
c0de34c8:	f7ff ffae 	bl	c0de3428 <grain_lfsr_advance>
c0de34cc:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de34d0:	0781      	lsls	r1, r0, #30
c0de34d2:	d5f2      	bpl.n	c0de34ba <next64_graingen+0x12>
c0de34d4:	f000 0001 	and.w	r0, r0, #1
c0de34d8:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de34dc:	3701      	adds	r7, #1
c0de34de:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de34e2:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de34e6:	4682      	mov	sl, r0
c0de34e8:	e7e7      	b.n	c0de34ba <next64_graingen+0x12>
c0de34ea:	4650      	mov	r0, sl
c0de34ec:	4641      	mov	r1, r8
c0de34ee:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de34f4 <init_generator>:
c0de34f4:	b5b0      	push	{r4, r5, r7, lr}
c0de34f6:	4a09      	ldr	r2, [pc, #36]	@ (c0de351c <init_generator+0x28>)
c0de34f8:	4b09      	ldr	r3, [pc, #36]	@ (c0de3520 <init_generator+0x2c>)
c0de34fa:	4604      	mov	r4, r0
c0de34fc:	25a0      	movs	r5, #160	@ 0xa0
c0de34fe:	2000      	movs	r0, #0
c0de3500:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de3504:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de3508:	e9c4 3200 	strd	r3, r2, [r4]
c0de350c:	b125      	cbz	r5, c0de3518 <init_generator+0x24>
c0de350e:	4620      	mov	r0, r4
c0de3510:	f7ff ff8a 	bl	c0de3428 <grain_lfsr_advance>
c0de3514:	3d01      	subs	r5, #1
c0de3516:	e7f9      	b.n	c0de350c <init_generator+0x18>
c0de3518:	bdb0      	pop	{r4, r5, r7, pc}
c0de351a:	bf00      	nop
c0de351c:	fffcf010 	.word	0xfffcf010
c0de3520:	1801fc02 	.word	0x1801fc02

c0de3524 <gen_integer>:
c0de3524:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3528:	4f20      	ldr	r7, [pc, #128]	@ (c0de35ac <gen_integer+0x88>)
c0de352a:	4e22      	ldr	r6, [pc, #136]	@ (c0de35b4 <gen_integer+0x90>)
c0de352c:	4605      	mov	r5, r0
c0de352e:	460c      	mov	r4, r1
c0de3530:	2000      	movs	r0, #0
c0de3532:	46b8      	mov	r8, r7
c0de3534:	4f1e      	ldr	r7, [pc, #120]	@ (c0de35b0 <gen_integer+0x8c>)
c0de3536:	447e      	add	r6, pc
c0de3538:	b9f8      	cbnz	r0, c0de357a <gen_integer+0x56>
c0de353a:	4628      	mov	r0, r5
c0de353c:	213e      	movs	r1, #62	@ 0x3e
c0de353e:	47b0      	blx	r6
c0de3540:	e9c4 0100 	strd	r0, r1, [r4]
c0de3544:	4628      	mov	r0, r5
c0de3546:	2140      	movs	r1, #64	@ 0x40
c0de3548:	47b0      	blx	r6
c0de354a:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de354e:	4628      	mov	r0, r5
c0de3550:	2140      	movs	r1, #64	@ 0x40
c0de3552:	47b0      	blx	r6
c0de3554:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3558:	4628      	mov	r0, r5
c0de355a:	2140      	movs	r1, #64	@ 0x40
c0de355c:	47b0      	blx	r6
c0de355e:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de3562:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de3566:	463a      	mov	r2, r7
c0de3568:	1bc0      	subs	r0, r0, r7
c0de356a:	4640      	mov	r0, r8
c0de356c:	eb71 0008 	sbcs.w	r0, r1, r8
c0de3570:	f04f 0000 	mov.w	r0, #0
c0de3574:	bf38      	it	cc
c0de3576:	2001      	movcc	r0, #1
c0de3578:	e7de      	b.n	c0de3538 <gen_integer+0x14>
c0de357a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de357e:	4d0e      	ldr	r5, [pc, #56]	@ (c0de35b8 <gen_integer+0x94>)
c0de3580:	447d      	add	r5, pc
c0de3582:	47a8      	blx	r5
c0de3584:	e9c4 0100 	strd	r0, r1, [r4]
c0de3588:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de358c:	47a8      	blx	r5
c0de358e:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de3592:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de3596:	47a8      	blx	r5
c0de3598:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de359c:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de35a0:	47a8      	blx	r5
c0de35a2:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de35a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de35aa:	bf00      	nop
c0de35ac:	305a4b4e 	.word	0x305a4b4e
c0de35b0:	4f582122 	.word	0x4f582122
c0de35b4:	ffffff6f 	.word	0xffffff6f
c0de35b8:	00000039 	.word	0x00000039

c0de35bc <rev64>:
c0de35bc:	ba0a      	rev	r2, r1
c0de35be:	ba01      	rev	r1, r0
c0de35c0:	4610      	mov	r0, r2
c0de35c2:	4770      	bx	lr

c0de35c4 <Poseidon_getNext_RC>:
c0de35c4:	30c0      	adds	r0, #192	@ 0xc0
c0de35c6:	f7ff bfad 	b.w	c0de3524 <gen_integer>
	...

c0de35cc <Poseidon_alloc_init>:
c0de35cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de35d0:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de35d4:	4604      	mov	r4, r0
c0de35d6:	30c0      	adds	r0, #192	@ 0xc0
c0de35d8:	461e      	mov	r6, r3
c0de35da:	4617      	mov	r7, r2
c0de35dc:	460d      	mov	r5, r1
c0de35de:	f7ff ff89 	bl	c0de34f4 <init_generator>
c0de35e2:	492c      	ldr	r1, [pc, #176]	@ (c0de3694 <Poseidon_alloc_init+0xc8>)
c0de35e4:	46e8      	mov	r8, sp
c0de35e6:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de35ea:	4640      	mov	r0, r8
c0de35ec:	4479      	add	r1, pc
c0de35ee:	f004 fc63 	bl	c0de7eb8 <__aeabi_memcpy>
c0de35f2:	2000      	movs	r0, #0
c0de35f4:	7325      	strb	r5, [r4, #12]
c0de35f6:	6166      	str	r6, [r4, #20]
c0de35f8:	4621      	mov	r1, r4
c0de35fa:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de35fe:	1c78      	adds	r0, r7, #1
c0de3600:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de3604:	6830      	ldr	r0, [r6, #0]
c0de3606:	f004 f9c1 	bl	c0de798c <cx_bn_nbytes>
c0de360a:	b930      	cbnz	r0, c0de361a <Poseidon_alloc_init+0x4e>
c0de360c:	4620      	mov	r0, r4
c0de360e:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de3612:	4631      	mov	r1, r6
c0de3614:	f004 f99a 	bl	c0de794c <cx_bn_alloc>
c0de3618:	b118      	cbz	r0, c0de3622 <Poseidon_alloc_init+0x56>
c0de361a:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de361e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3622:	68a0      	ldr	r0, [r4, #8]
c0de3624:	2500      	movs	r5, #0
c0de3626:	4285      	cmp	r5, r0
c0de3628:	d230      	bcs.n	c0de368c <Poseidon_alloc_init+0xc0>
c0de362a:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de362e:	4631      	mov	r1, r6
c0de3630:	f107 0018 	add.w	r0, r7, #24
c0de3634:	f004 f98a 	bl	c0de794c <cx_bn_alloc>
c0de3638:	2800      	cmp	r0, #0
c0de363a:	d1ee      	bne.n	c0de361a <Poseidon_alloc_init+0x4e>
c0de363c:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de3640:	4631      	mov	r1, r6
c0de3642:	f004 f983 	bl	c0de794c <cx_bn_alloc>
c0de3646:	2800      	cmp	r0, #0
c0de3648:	d1e7      	bne.n	c0de361a <Poseidon_alloc_init+0x4e>
c0de364a:	2700      	movs	r7, #0
c0de364c:	68a0      	ldr	r0, [r4, #8]
c0de364e:	4287      	cmp	r7, r0
c0de3650:	d21a      	bcs.n	c0de3688 <Poseidon_alloc_init+0xbc>
c0de3652:	fb05 7000 	mla	r0, r5, r0, r7
c0de3656:	4631      	mov	r1, r6
c0de3658:	4633      	mov	r3, r6
c0de365a:	fb00 8206 	mla	r2, r0, r6, r8
c0de365e:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de3662:	3030      	adds	r0, #48	@ 0x30
c0de3664:	f004 f97c 	bl	c0de7960 <cx_bn_alloc_init>
c0de3668:	2800      	cmp	r0, #0
c0de366a:	d1d6      	bne.n	c0de361a <Poseidon_alloc_init+0x4e>
c0de366c:	68a0      	ldr	r0, [r4, #8]
c0de366e:	6962      	ldr	r2, [r4, #20]
c0de3670:	fb05 7000 	mla	r0, r5, r0, r7
c0de3674:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de3678:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de367a:	4601      	mov	r1, r0
c0de367c:	f004 fa3a 	bl	c0de7af4 <cx_mont_to_montgomery>
c0de3680:	3701      	adds	r7, #1
c0de3682:	2800      	cmp	r0, #0
c0de3684:	d0e2      	beq.n	c0de364c <Poseidon_alloc_init+0x80>
c0de3686:	e7c8      	b.n	c0de361a <Poseidon_alloc_init+0x4e>
c0de3688:	3501      	adds	r5, #1
c0de368a:	e7cc      	b.n	c0de3626 <Poseidon_alloc_init+0x5a>
c0de368c:	2001      	movs	r0, #1
c0de368e:	6120      	str	r0, [r4, #16]
c0de3690:	2000      	movs	r0, #0
c0de3692:	e7c2      	b.n	c0de361a <Poseidon_alloc_init+0x4e>
c0de3694:	000059ac 	.word	0x000059ac

c0de3698 <Poseidon>:
c0de3698:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de369c:	b08c      	sub	sp, #48	@ 0x30
c0de369e:	4606      	mov	r6, r0
c0de36a0:	6900      	ldr	r0, [r0, #16]
c0de36a2:	2801      	cmp	r0, #1
c0de36a4:	f040 80b4 	bne.w	c0de3810 <Poseidon+0x178>
c0de36a8:	69b0      	ldr	r0, [r6, #24]
c0de36aa:	461f      	mov	r7, r3
c0de36ac:	4692      	mov	sl, r2
c0de36ae:	f004 f98d 	bl	c0de79cc <cx_bn_set_u32>
c0de36b2:	2800      	cmp	r0, #0
c0de36b4:	f040 80ad 	bne.w	c0de3812 <Poseidon+0x17a>
c0de36b8:	f106 000c 	add.w	r0, r6, #12
c0de36bc:	f106 0818 	add.w	r8, r6, #24
c0de36c0:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de36c4:	9001      	str	r0, [sp, #4]
c0de36c6:	2000      	movs	r0, #0
c0de36c8:	2844      	cmp	r0, #68	@ 0x44
c0de36ca:	f000 80ae 	beq.w	c0de382a <Poseidon+0x192>
c0de36ce:	6834      	ldr	r4, [r6, #0]
c0de36d0:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de36d4:	f04f 0a00 	mov.w	sl, #0
c0de36d8:	68b0      	ldr	r0, [r6, #8]
c0de36da:	4582      	cmp	sl, r0
c0de36dc:	d224      	bcs.n	c0de3728 <Poseidon+0x90>
c0de36de:	ad04      	add	r5, sp, #16
c0de36e0:	4658      	mov	r0, fp
c0de36e2:	4629      	mov	r1, r5
c0de36e4:	f7ff ff1e 	bl	c0de3524 <gen_integer>
c0de36e8:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de36ec:	4629      	mov	r1, r5
c0de36ee:	4622      	mov	r2, r4
c0de36f0:	f004 f956 	bl	c0de79a0 <cx_bn_init>
c0de36f4:	2800      	cmp	r0, #0
c0de36f6:	f040 808c 	bne.w	c0de3812 <Poseidon+0x17a>
c0de36fa:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de36fe:	6972      	ldr	r2, [r6, #20]
c0de3700:	4601      	mov	r1, r0
c0de3702:	f004 f9f7 	bl	c0de7af4 <cx_mont_to_montgomery>
c0de3706:	2800      	cmp	r0, #0
c0de3708:	f040 8083 	bne.w	c0de3812 <Poseidon+0x17a>
c0de370c:	6972      	ldr	r2, [r6, #20]
c0de370e:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de3712:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de3716:	6813      	ldr	r3, [r2, #0]
c0de3718:	4602      	mov	r2, r0
c0de371a:	f004 f991 	bl	c0de7a40 <cx_bn_mod_add>
c0de371e:	f10a 0a01 	add.w	sl, sl, #1
c0de3722:	2800      	cmp	r0, #0
c0de3724:	d0d8      	beq.n	c0de36d8 <Poseidon+0x40>
c0de3726:	e074      	b.n	c0de3812 <Poseidon+0x17a>
c0de3728:	9902      	ldr	r1, [sp, #8]
c0de372a:	2904      	cmp	r1, #4
c0de372c:	d301      	bcc.n	c0de3732 <Poseidon+0x9a>
c0de372e:	2940      	cmp	r1, #64	@ 0x40
c0de3730:	d323      	bcc.n	c0de377a <Poseidon+0xe2>
c0de3732:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3736:	2400      	movs	r4, #0
c0de3738:	4284      	cmp	r4, r0
c0de373a:	d22b      	bcs.n	c0de3794 <Poseidon+0xfc>
c0de373c:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de3740:	6973      	ldr	r3, [r6, #20]
c0de3742:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de3746:	460a      	mov	r2, r1
c0de3748:	f004 f9ec 	bl	c0de7b24 <cx_mont_mul>
c0de374c:	2800      	cmp	r0, #0
c0de374e:	d160      	bne.n	c0de3812 <Poseidon+0x17a>
c0de3750:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de3754:	6973      	ldr	r3, [r6, #20]
c0de3756:	460a      	mov	r2, r1
c0de3758:	f004 f9e4 	bl	c0de7b24 <cx_mont_mul>
c0de375c:	2800      	cmp	r0, #0
c0de375e:	d158      	bne.n	c0de3812 <Poseidon+0x17a>
c0de3760:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de3764:	6973      	ldr	r3, [r6, #20]
c0de3766:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de376a:	4601      	mov	r1, r0
c0de376c:	f004 f9da 	bl	c0de7b24 <cx_mont_mul>
c0de3770:	2800      	cmp	r0, #0
c0de3772:	d14e      	bne.n	c0de3812 <Poseidon+0x17a>
c0de3774:	68b0      	ldr	r0, [r6, #8]
c0de3776:	3401      	adds	r4, #1
c0de3778:	e7de      	b.n	c0de3738 <Poseidon+0xa0>
c0de377a:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de377e:	9a01      	ldr	r2, [sp, #4]
c0de3780:	2301      	movs	r3, #1
c0de3782:	9100      	str	r1, [sp, #0]
c0de3784:	4601      	mov	r1, r0
c0de3786:	f004 f9d9 	bl	c0de7b3c <cx_mont_pow>
c0de378a:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de378e:	2800      	cmp	r0, #0
c0de3790:	d13f      	bne.n	c0de3812 <Poseidon+0x17a>
c0de3792:	68b0      	ldr	r0, [r6, #8]
c0de3794:	2500      	movs	r5, #0
c0de3796:	4285      	cmp	r5, r0
c0de3798:	d229      	bcs.n	c0de37ee <Poseidon+0x156>
c0de379a:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de379e:	2100      	movs	r1, #0
c0de37a0:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de37a4:	f004 f912 	bl	c0de79cc <cx_bn_set_u32>
c0de37a8:	bb98      	cbnz	r0, c0de3812 <Poseidon+0x17a>
c0de37aa:	9503      	str	r5, [sp, #12]
c0de37ac:	2500      	movs	r5, #0
c0de37ae:	68b0      	ldr	r0, [r6, #8]
c0de37b0:	4285      	cmp	r5, r0
c0de37b2:	d219      	bcs.n	c0de37e8 <Poseidon+0x150>
c0de37b4:	9903      	ldr	r1, [sp, #12]
c0de37b6:	6973      	ldr	r3, [r6, #20]
c0de37b8:	fb01 5000 	mla	r0, r1, r0, r5
c0de37bc:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de37c0:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de37c4:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de37c6:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de37ca:	f004 f9ab 	bl	c0de7b24 <cx_mont_mul>
c0de37ce:	bb00      	cbnz	r0, c0de3812 <Poseidon+0x17a>
c0de37d0:	6971      	ldr	r1, [r6, #20]
c0de37d2:	6820      	ldr	r0, [r4, #0]
c0de37d4:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de37d8:	680b      	ldr	r3, [r1, #0]
c0de37da:	4601      	mov	r1, r0
c0de37dc:	f004 f930 	bl	c0de7a40 <cx_bn_mod_add>
c0de37e0:	3501      	adds	r5, #1
c0de37e2:	2800      	cmp	r0, #0
c0de37e4:	d0e3      	beq.n	c0de37ae <Poseidon+0x116>
c0de37e6:	e014      	b.n	c0de3812 <Poseidon+0x17a>
c0de37e8:	9d03      	ldr	r5, [sp, #12]
c0de37ea:	3501      	adds	r5, #1
c0de37ec:	e7d3      	b.n	c0de3796 <Poseidon+0xfe>
c0de37ee:	2400      	movs	r4, #0
c0de37f0:	4284      	cmp	r4, r0
c0de37f2:	d20a      	bcs.n	c0de380a <Poseidon+0x172>
c0de37f4:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de37f8:	6988      	ldr	r0, [r1, #24]
c0de37fa:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de37fe:	f004 f8db 	bl	c0de79b8 <cx_bn_copy>
c0de3802:	b930      	cbnz	r0, c0de3812 <Poseidon+0x17a>
c0de3804:	68b0      	ldr	r0, [r6, #8]
c0de3806:	3401      	adds	r4, #1
c0de3808:	e7f2      	b.n	c0de37f0 <Poseidon+0x158>
c0de380a:	9802      	ldr	r0, [sp, #8]
c0de380c:	3001      	adds	r0, #1
c0de380e:	e75b      	b.n	c0de36c8 <Poseidon+0x30>
c0de3810:	4808      	ldr	r0, [pc, #32]	@ (c0de3834 <Poseidon+0x19c>)
c0de3812:	b00c      	add	sp, #48	@ 0x30
c0de3814:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3818:	f858 1b04 	ldr.w	r1, [r8], #4
c0de381c:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de3820:	f004 f8ca 	bl	c0de79b8 <cx_bn_copy>
c0de3824:	3f01      	subs	r7, #1
c0de3826:	2800      	cmp	r0, #0
c0de3828:	d1f3      	bne.n	c0de3812 <Poseidon+0x17a>
c0de382a:	2f00      	cmp	r7, #0
c0de382c:	d1f4      	bne.n	c0de3818 <Poseidon+0x180>
c0de382e:	2000      	movs	r0, #0
c0de3830:	e7ef      	b.n	c0de3812 <Poseidon+0x17a>
c0de3832:	bf00      	nop
c0de3834:	5a4b4e02 	.word	0x5a4b4e02

c0de3838 <RFC9591_taggedHash>:
c0de3838:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de383a:	b0d9      	sub	sp, #356	@ 0x164
c0de383c:	460e      	mov	r6, r1
c0de383e:	4607      	mov	r7, r0
c0de3840:	a858      	add	r0, sp, #352	@ 0x160
c0de3842:	2140      	movs	r1, #64	@ 0x40
c0de3844:	461c      	mov	r4, r3
c0de3846:	4615      	mov	r5, r2
c0de3848:	f004 f880 	bl	c0de794c <cx_bn_alloc>
c0de384c:	bbd8      	cbnz	r0, c0de38c6 <RFC9591_taggedHash+0x8e>
c0de384e:	491f      	ldr	r1, [pc, #124]	@ (c0de38cc <RFC9591_taggedHash+0x94>)
c0de3850:	4668      	mov	r0, sp
c0de3852:	221d      	movs	r2, #29
c0de3854:	4479      	add	r1, pc
c0de3856:	f004 fb2f 	bl	c0de7eb8 <__aeabi_memcpy>
c0de385a:	a808      	add	r0, sp, #32
c0de385c:	2109      	movs	r1, #9
c0de385e:	2240      	movs	r2, #64	@ 0x40
c0de3860:	f003 fdfe 	bl	c0de7460 <cx_hash_init_ex>
c0de3864:	bb78      	cbnz	r0, c0de38c6 <RFC9591_taggedHash+0x8e>
c0de3866:	a808      	add	r0, sp, #32
c0de3868:	4669      	mov	r1, sp
c0de386a:	221d      	movs	r2, #29
c0de386c:	f003 fdfd 	bl	c0de746a <cx_hash_update>
c0de3870:	bb48      	cbnz	r0, c0de38c6 <RFC9591_taggedHash+0x8e>
c0de3872:	a808      	add	r0, sp, #32
c0de3874:	4639      	mov	r1, r7
c0de3876:	4632      	mov	r2, r6
c0de3878:	f003 fdf7 	bl	c0de746a <cx_hash_update>
c0de387c:	bb18      	cbnz	r0, c0de38c6 <RFC9591_taggedHash+0x8e>
c0de387e:	a808      	add	r0, sp, #32
c0de3880:	4629      	mov	r1, r5
c0de3882:	4622      	mov	r2, r4
c0de3884:	f003 fdf1 	bl	c0de746a <cx_hash_update>
c0de3888:	b9e8      	cbnz	r0, c0de38c6 <RFC9591_taggedHash+0x8e>
c0de388a:	a808      	add	r0, sp, #32
c0de388c:	ae48      	add	r6, sp, #288	@ 0x120
c0de388e:	4631      	mov	r1, r6
c0de3890:	f003 fde1 	bl	c0de7456 <cx_hash_final>
c0de3894:	b9b8      	cbnz	r0, c0de38c6 <RFC9591_taggedHash+0x8e>
c0de3896:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de389a:	2000      	movs	r0, #0
c0de389c:	213f      	movs	r1, #63	@ 0x3f
c0de389e:	2820      	cmp	r0, #32
c0de38a0:	d002      	beq.n	c0de38a8 <RFC9591_taggedHash+0x70>
c0de38a2:	f000 f8dd 	bl	c0de3a60 <OUTLINED_FUNCTION_3>
c0de38a6:	e7fa      	b.n	c0de389e <RFC9591_taggedHash+0x66>
c0de38a8:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de38aa:	a948      	add	r1, sp, #288	@ 0x120
c0de38ac:	2240      	movs	r2, #64	@ 0x40
c0de38ae:	f004 f877 	bl	c0de79a0 <cx_bn_init>
c0de38b2:	b940      	cbnz	r0, c0de38c6 <RFC9591_taggedHash+0x8e>
c0de38b4:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de38b6:	4628      	mov	r0, r5
c0de38b8:	4622      	mov	r2, r4
c0de38ba:	f004 f8e5 	bl	c0de7a88 <cx_bn_reduce>
c0de38be:	b910      	cbnz	r0, c0de38c6 <RFC9591_taggedHash+0x8e>
c0de38c0:	a858      	add	r0, sp, #352	@ 0x160
c0de38c2:	f004 f859 	bl	c0de7978 <cx_bn_destroy>
c0de38c6:	b059      	add	sp, #356	@ 0x164
c0de38c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de38ca:	bf00      	nop
c0de38cc:	00005bc4 	.word	0x00005bc4

c0de38d0 <Babyfrost_H1>:
c0de38d0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de38d2:	4605      	mov	r5, r0
c0de38d4:	206f      	movs	r0, #111	@ 0x6f
c0de38d6:	f000 f8b7 	bl	c0de3a48 <OUTLINED_FUNCTION_1>
c0de38da:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de38de:	f000 f8ba 	bl	c0de3a56 <OUTLINED_FUNCTION_2>
c0de38e2:	a803      	add	r0, sp, #12
c0de38e4:	f7ff ffa8 	bl	c0de3838 <RFC9591_taggedHash>
c0de38e8:	b004      	add	sp, #16
c0de38ea:	bdb0      	pop	{r4, r5, r7, pc}

c0de38ec <Babyfrost_H3>:
c0de38ec:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de38ee:	4605      	mov	r5, r0
c0de38f0:	2065      	movs	r0, #101	@ 0x65
c0de38f2:	460c      	mov	r4, r1
c0de38f4:	e9cd 2300 	strd	r2, r3, [sp]
c0de38f8:	2105      	movs	r1, #5
c0de38fa:	f88d 000c 	strb.w	r0, [sp, #12]
c0de38fe:	4804      	ldr	r0, [pc, #16]	@ (c0de3910 <Babyfrost_H3+0x24>)
c0de3900:	462a      	mov	r2, r5
c0de3902:	4623      	mov	r3, r4
c0de3904:	9002      	str	r0, [sp, #8]
c0de3906:	a802      	add	r0, sp, #8
c0de3908:	f7ff ff96 	bl	c0de3838 <RFC9591_taggedHash>
c0de390c:	b004      	add	sp, #16
c0de390e:	bdb0      	pop	{r4, r5, r7, pc}
c0de3910:	636e6f6e 	.word	0x636e6f6e

c0de3914 <Babyfrost_H4>:
c0de3914:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3916:	4605      	mov	r5, r0
c0de3918:	2067      	movs	r0, #103	@ 0x67
c0de391a:	f000 f895 	bl	c0de3a48 <OUTLINED_FUNCTION_1>
c0de391e:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de3922:	f000 f898 	bl	c0de3a56 <OUTLINED_FUNCTION_2>
c0de3926:	a803      	add	r0, sp, #12
c0de3928:	f7ff ff86 	bl	c0de3838 <RFC9591_taggedHash>
c0de392c:	b004      	add	sp, #16
c0de392e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3930 <Babyfrost_H5>:
c0de3930:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3932:	4605      	mov	r5, r0
c0de3934:	206d      	movs	r0, #109	@ 0x6d
c0de3936:	f000 f887 	bl	c0de3a48 <OUTLINED_FUNCTION_1>
c0de393a:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de393e:	f000 f88a 	bl	c0de3a56 <OUTLINED_FUNCTION_2>
c0de3942:	a803      	add	r0, sp, #12
c0de3944:	f7ff ff78 	bl	c0de3838 <RFC9591_taggedHash>
c0de3948:	b004      	add	sp, #16
c0de394a:	bdb0      	pop	{r4, r5, r7, pc}

c0de394c <zkn_frost_hash_init>:
c0de394c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de394e:	461d      	mov	r5, r3
c0de3950:	4604      	mov	r4, r0
c0de3952:	f003 fd85 	bl	c0de7460 <cx_hash_init_ex>
c0de3956:	b938      	cbnz	r0, c0de3968 <zkn_frost_hash_init+0x1c>
c0de3958:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de395c:	9e08      	ldr	r6, [sp, #32]
c0de395e:	4620      	mov	r0, r4
c0de3960:	4629      	mov	r1, r5
c0de3962:	f003 fd82 	bl	c0de746a <cx_hash_update>
c0de3966:	b100      	cbz	r0, c0de396a <zkn_frost_hash_init+0x1e>
c0de3968:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de396a:	4620      	mov	r0, r4
c0de396c:	4639      	mov	r1, r7
c0de396e:	4632      	mov	r2, r6
c0de3970:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de3974:	f003 bd79 	b.w	c0de746a <cx_hash_update>

c0de3978 <zkn_frost_H1_init>:
c0de3978:	b570      	push	{r4, r5, r6, lr}
c0de397a:	b08c      	sub	sp, #48	@ 0x30
c0de397c:	4604      	mov	r4, r0
c0de397e:	206f      	movs	r0, #111	@ 0x6f
c0de3980:	221d      	movs	r2, #29
c0de3982:	261d      	movs	r6, #29
c0de3984:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3988:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de398c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3990:	ad03      	add	r5, sp, #12
c0de3992:	4905      	ldr	r1, [pc, #20]	@ (c0de39a8 <zkn_frost_H1_init+0x30>)
c0de3994:	4628      	mov	r0, r5
c0de3996:	4479      	add	r1, pc
c0de3998:	f004 fa8e 	bl	c0de7eb8 <__aeabi_memcpy>
c0de399c:	a90b      	add	r1, sp, #44	@ 0x2c
c0de399e:	f000 f849 	bl	c0de3a34 <OUTLINED_FUNCTION_0>
c0de39a2:	b00c      	add	sp, #48	@ 0x30
c0de39a4:	bd70      	pop	{r4, r5, r6, pc}
c0de39a6:	bf00      	nop
c0de39a8:	00005a82 	.word	0x00005a82

c0de39ac <zkn_frost_H5_init>:
c0de39ac:	b570      	push	{r4, r5, r6, lr}
c0de39ae:	b08c      	sub	sp, #48	@ 0x30
c0de39b0:	4604      	mov	r4, r0
c0de39b2:	206d      	movs	r0, #109	@ 0x6d
c0de39b4:	221d      	movs	r2, #29
c0de39b6:	261d      	movs	r6, #29
c0de39b8:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de39bc:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de39c0:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de39c4:	ad03      	add	r5, sp, #12
c0de39c6:	4905      	ldr	r1, [pc, #20]	@ (c0de39dc <zkn_frost_H5_init+0x30>)
c0de39c8:	4628      	mov	r0, r5
c0de39ca:	4479      	add	r1, pc
c0de39cc:	f004 fa74 	bl	c0de7eb8 <__aeabi_memcpy>
c0de39d0:	a90b      	add	r1, sp, #44	@ 0x2c
c0de39d2:	f000 f82f 	bl	c0de3a34 <OUTLINED_FUNCTION_0>
c0de39d6:	b00c      	add	sp, #48	@ 0x30
c0de39d8:	bd70      	pop	{r4, r5, r6, pc}
c0de39da:	bf00      	nop
c0de39dc:	00005a4e 	.word	0x00005a4e

c0de39e0 <zkn_frost_hash_update>:
c0de39e0:	f003 bd43 	b.w	c0de746a <cx_hash_update>

c0de39e4 <zkn_frost_hash_final>:
c0de39e4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de39e6:	b091      	sub	sp, #68	@ 0x44
c0de39e8:	460c      	mov	r4, r1
c0de39ea:	4607      	mov	r7, r0
c0de39ec:	a810      	add	r0, sp, #64	@ 0x40
c0de39ee:	2140      	movs	r1, #64	@ 0x40
c0de39f0:	4615      	mov	r5, r2
c0de39f2:	f003 ffab 	bl	c0de794c <cx_bn_alloc>
c0de39f6:	b9d8      	cbnz	r0, c0de3a30 <zkn_frost_hash_final+0x4c>
c0de39f8:	466e      	mov	r6, sp
c0de39fa:	4638      	mov	r0, r7
c0de39fc:	4631      	mov	r1, r6
c0de39fe:	f003 fd2a 	bl	c0de7456 <cx_hash_final>
c0de3a02:	b9a8      	cbnz	r0, c0de3a30 <zkn_frost_hash_final+0x4c>
c0de3a04:	2000      	movs	r0, #0
c0de3a06:	213f      	movs	r1, #63	@ 0x3f
c0de3a08:	2820      	cmp	r0, #32
c0de3a0a:	d002      	beq.n	c0de3a12 <zkn_frost_hash_final+0x2e>
c0de3a0c:	f000 f828 	bl	c0de3a60 <OUTLINED_FUNCTION_3>
c0de3a10:	e7fa      	b.n	c0de3a08 <zkn_frost_hash_final+0x24>
c0de3a12:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de3a14:	4669      	mov	r1, sp
c0de3a16:	2240      	movs	r2, #64	@ 0x40
c0de3a18:	f003 ffc2 	bl	c0de79a0 <cx_bn_init>
c0de3a1c:	b940      	cbnz	r0, c0de3a30 <zkn_frost_hash_final+0x4c>
c0de3a1e:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3a20:	4628      	mov	r0, r5
c0de3a22:	4622      	mov	r2, r4
c0de3a24:	f004 f830 	bl	c0de7a88 <cx_bn_reduce>
c0de3a28:	b910      	cbnz	r0, c0de3a30 <zkn_frost_hash_final+0x4c>
c0de3a2a:	a810      	add	r0, sp, #64	@ 0x40
c0de3a2c:	f003 ffa4 	bl	c0de7978 <cx_bn_destroy>
c0de3a30:	b011      	add	sp, #68	@ 0x44
c0de3a32:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3a34 <OUTLINED_FUNCTION_0>:
c0de3a34:	2003      	movs	r0, #3
c0de3a36:	2240      	movs	r2, #64	@ 0x40
c0de3a38:	462b      	mov	r3, r5
c0de3a3a:	e9cd 6100 	strd	r6, r1, [sp]
c0de3a3e:	9002      	str	r0, [sp, #8]
c0de3a40:	4620      	mov	r0, r4
c0de3a42:	2109      	movs	r1, #9
c0de3a44:	f7ff bf82 	b.w	c0de394c <zkn_frost_hash_init>

c0de3a48 <OUTLINED_FUNCTION_1>:
c0de3a48:	460c      	mov	r4, r1
c0de3a4a:	e9cd 2300 	strd	r2, r3, [sp]
c0de3a4e:	2103      	movs	r1, #3
c0de3a50:	f88d 000e 	strb.w	r0, [sp, #14]
c0de3a54:	4770      	bx	lr

c0de3a56 <OUTLINED_FUNCTION_2>:
c0de3a56:	462a      	mov	r2, r5
c0de3a58:	4623      	mov	r3, r4
c0de3a5a:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de3a5e:	4770      	bx	lr

c0de3a60 <OUTLINED_FUNCTION_3>:
c0de3a60:	5c32      	ldrb	r2, [r6, r0]
c0de3a62:	5c73      	ldrb	r3, [r6, r1]
c0de3a64:	5433      	strb	r3, [r6, r0]
c0de3a66:	5472      	strb	r2, [r6, r1]
c0de3a68:	3901      	subs	r1, #1
c0de3a6a:	3001      	adds	r0, #1
c0de3a6c:	4770      	bx	lr

c0de3a6e <os_io_handle_default_apdu>:
c0de3a6e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3a70:	b09d      	sub	sp, #116	@ 0x74
c0de3a72:	4615      	mov	r5, r2
c0de3a74:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de3a76:	b3c8      	cbz	r0, c0de3aec <os_io_handle_default_apdu+0x7e>
c0de3a78:	b3c1      	cbz	r1, c0de3aec <os_io_handle_default_apdu+0x7e>
c0de3a7a:	b3bd      	cbz	r5, c0de3aec <os_io_handle_default_apdu+0x7e>
c0de3a7c:	461c      	mov	r4, r3
c0de3a7e:	b3ab      	cbz	r3, c0de3aec <os_io_handle_default_apdu+0x7e>
c0de3a80:	b10a      	cbz	r2, c0de3a86 <os_io_handle_default_apdu+0x18>
c0de3a82:	2100      	movs	r1, #0
c0de3a84:	7011      	strb	r1, [r2, #0]
c0de3a86:	7801      	ldrb	r1, [r0, #0]
c0de3a88:	29b0      	cmp	r1, #176	@ 0xb0
c0de3a8a:	d131      	bne.n	c0de3af0 <os_io_handle_default_apdu+0x82>
c0de3a8c:	7841      	ldrb	r1, [r0, #1]
c0de3a8e:	29a7      	cmp	r1, #167	@ 0xa7
c0de3a90:	d031      	beq.n	c0de3af6 <os_io_handle_default_apdu+0x88>
c0de3a92:	2906      	cmp	r1, #6
c0de3a94:	d036      	beq.n	c0de3b04 <os_io_handle_default_apdu+0x96>
c0de3a96:	2901      	cmp	r1, #1
c0de3a98:	d131      	bne.n	c0de3afe <os_io_handle_default_apdu+0x90>
c0de3a9a:	7881      	ldrb	r1, [r0, #2]
c0de3a9c:	bb79      	cbnz	r1, c0de3afe <os_io_handle_default_apdu+0x90>
c0de3a9e:	78c0      	ldrb	r0, [r0, #3]
c0de3aa0:	bb68      	cbnz	r0, c0de3afe <os_io_handle_default_apdu+0x90>
c0de3aa2:	6820      	ldr	r0, [r4, #0]
c0de3aa4:	2100      	movs	r1, #0
c0de3aa6:	6021      	str	r1, [r4, #0]
c0de3aa8:	2803      	cmp	r0, #3
c0de3aaa:	d321      	bcc.n	c0de3af0 <os_io_handle_default_apdu+0x82>
c0de3aac:	2601      	movs	r6, #1
c0de3aae:	1ec7      	subs	r7, r0, #3
c0de3ab0:	6026      	str	r6, [r4, #0]
c0de3ab2:	702e      	strb	r6, [r5, #0]
c0de3ab4:	6820      	ldr	r0, [r4, #0]
c0de3ab6:	1a3a      	subs	r2, r7, r0
c0de3ab8:	4428      	add	r0, r5
c0de3aba:	1c41      	adds	r1, r0, #1
c0de3abc:	2001      	movs	r0, #1
c0de3abe:	f004 f8b3 	bl	c0de7c28 <os_registry_get_current_app_tag>
c0de3ac2:	f000 f83f 	bl	c0de3b44 <OUTLINED_FUNCTION_0>
c0de3ac6:	6020      	str	r0, [r4, #0]
c0de3ac8:	1a3a      	subs	r2, r7, r0
c0de3aca:	4428      	add	r0, r5
c0de3acc:	1c41      	adds	r1, r0, #1
c0de3ace:	2002      	movs	r0, #2
c0de3ad0:	f004 f8aa 	bl	c0de7c28 <os_registry_get_current_app_tag>
c0de3ad4:	f000 f836 	bl	c0de3b44 <OUTLINED_FUNCTION_0>
c0de3ad8:	1c41      	adds	r1, r0, #1
c0de3ada:	6021      	str	r1, [r4, #0]
c0de3adc:	542e      	strb	r6, [r5, r0]
c0de3ade:	f004 f89b 	bl	c0de7c18 <os_flags>
c0de3ae2:	6821      	ldr	r1, [r4, #0]
c0de3ae4:	1c4a      	adds	r2, r1, #1
c0de3ae6:	6022      	str	r2, [r4, #0]
c0de3ae8:	5468      	strb	r0, [r5, r1]
c0de3aea:	e028      	b.n	c0de3b3e <os_io_handle_default_apdu+0xd0>
c0de3aec:	7814      	ldrb	r4, [r2, #0]
c0de3aee:	e01e      	b.n	c0de3b2e <os_io_handle_default_apdu+0xc0>
c0de3af0:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de3af4:	e01b      	b.n	c0de3b2e <os_io_handle_default_apdu+0xc0>
c0de3af6:	7881      	ldrb	r1, [r0, #2]
c0de3af8:	b909      	cbnz	r1, c0de3afe <os_io_handle_default_apdu+0x90>
c0de3afa:	78c0      	ldrb	r0, [r0, #3]
c0de3afc:	b1d0      	cbz	r0, c0de3b34 <os_io_handle_default_apdu+0xc6>
c0de3afe:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de3b02:	e014      	b.n	c0de3b2e <os_io_handle_default_apdu+0xc0>
c0de3b04:	2100      	movs	r1, #0
c0de3b06:	6021      	str	r1, [r4, #0]
c0de3b08:	7883      	ldrb	r3, [r0, #2]
c0de3b0a:	7902      	ldrb	r2, [r0, #4]
c0de3b0c:	ad02      	add	r5, sp, #8
c0de3b0e:	e9cd 1500 	strd	r1, r5, [sp]
c0de3b12:	1d41      	adds	r1, r0, #5
c0de3b14:	4618      	mov	r0, r3
c0de3b16:	2300      	movs	r3, #0
c0de3b18:	f004 f84a 	bl	c0de7bb0 <os_pki_load_certificate>
c0de3b1c:	4604      	mov	r4, r0
c0de3b1e:	4628      	mov	r0, r5
c0de3b20:	216c      	movs	r1, #108	@ 0x6c
c0de3b22:	f004 f9e1 	bl	c0de7ee8 <explicit_bzero>
c0de3b26:	2c00      	cmp	r4, #0
c0de3b28:	bf08      	it	eq
c0de3b2a:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de3b2e:	4620      	mov	r0, r4
c0de3b30:	b01d      	add	sp, #116	@ 0x74
c0de3b32:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3b34:	2000      	movs	r0, #0
c0de3b36:	6020      	str	r0, [r4, #0]
c0de3b38:	b10a      	cbz	r2, c0de3b3e <os_io_handle_default_apdu+0xd0>
c0de3b3a:	2001      	movs	r0, #1
c0de3b3c:	7010      	strb	r0, [r2, #0]
c0de3b3e:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de3b42:	e7f4      	b.n	c0de3b2e <os_io_handle_default_apdu+0xc0>

c0de3b44 <OUTLINED_FUNCTION_0>:
c0de3b44:	6821      	ldr	r1, [r4, #0]
c0de3b46:	1c4a      	adds	r2, r1, #1
c0de3b48:	6022      	str	r2, [r4, #0]
c0de3b4a:	5468      	strb	r0, [r5, r1]
c0de3b4c:	6821      	ldr	r1, [r4, #0]
c0de3b4e:	4408      	add	r0, r1
c0de3b50:	4770      	bx	lr

c0de3b52 <io_process_itc_ux_event>:
c0de3b52:	b580      	push	{r7, lr}
c0de3b54:	78c0      	ldrb	r0, [r0, #3]
c0de3b56:	2820      	cmp	r0, #32
c0de3b58:	d107      	bne.n	c0de3b6a <io_process_itc_ux_event+0x18>
c0de3b5a:	2001      	movs	r0, #1
c0de3b5c:	f003 fca5 	bl	c0de74aa <nbgl_objAllowDrawing>
c0de3b60:	f003 fcb2 	bl	c0de74c8 <nbgl_screenRedraw>
c0de3b64:	f003 fc97 	bl	c0de7496 <nbgl_refresh>
c0de3b68:	2100      	movs	r1, #0
c0de3b6a:	4608      	mov	r0, r1
c0de3b6c:	bd80      	pop	{r7, pc}
	...

c0de3b70 <io_legacy_apdu_tx>:
c0de3b70:	b5b0      	push	{r4, r5, r7, lr}
c0de3b72:	460a      	mov	r2, r1
c0de3b74:	4601      	mov	r1, r0
c0de3b76:	4806      	ldr	r0, [pc, #24]	@ (c0de3b90 <io_legacy_apdu_tx+0x20>)
c0de3b78:	2300      	movs	r3, #0
c0de3b7a:	2500      	movs	r5, #0
c0de3b7c:	eb09 0400 	add.w	r4, r9, r0
c0de3b80:	7860      	ldrb	r0, [r4, #1]
c0de3b82:	f004 f87b 	bl	c0de7c7c <os_io_tx_cmd>
c0de3b86:	4903      	ldr	r1, [pc, #12]	@ (c0de3b94 <io_legacy_apdu_tx+0x24>)
c0de3b88:	7065      	strb	r5, [r4, #1]
c0de3b8a:	4449      	add	r1, r9
c0de3b8c:	718d      	strb	r5, [r1, #6]
c0de3b8e:	bdb0      	pop	{r4, r5, r7, pc}
c0de3b90:	000008be 	.word	0x000008be
c0de3b94:	000008b6 	.word	0x000008b6

c0de3b98 <io_legacy_apdu_rx>:
c0de3b98:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3b9a:	4e66      	ldr	r6, [pc, #408]	@ (c0de3d34 <io_legacy_apdu_rx+0x19c>)
c0de3b9c:	2100      	movs	r1, #0
c0de3b9e:	4605      	mov	r5, r0
c0de3ba0:	2200      	movs	r2, #0
c0de3ba2:	2301      	movs	r3, #1
c0de3ba4:	f88d 100b 	strb.w	r1, [sp, #11]
c0de3ba8:	f240 1111 	movw	r1, #273	@ 0x111
c0de3bac:	eb09 0006 	add.w	r0, r9, r6
c0de3bb0:	f004 f870 	bl	c0de7c94 <os_io_rx_evt>
c0de3bb4:	4604      	mov	r4, r0
c0de3bb6:	2801      	cmp	r0, #1
c0de3bb8:	f2c0 80ab 	blt.w	c0de3d12 <io_legacy_apdu_rx+0x17a>
c0de3bbc:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3bc0:	f1a0 0110 	sub.w	r1, r0, #16
c0de3bc4:	2916      	cmp	r1, #22
c0de3bc6:	d805      	bhi.n	c0de3bd4 <io_legacy_apdu_rx+0x3c>
c0de3bc8:	2201      	movs	r2, #1
c0de3bca:	fa02 f101 	lsl.w	r1, r2, r1
c0de3bce:	4a5a      	ldr	r2, [pc, #360]	@ (c0de3d38 <io_legacy_apdu_rx+0x1a0>)
c0de3bd0:	4211      	tst	r1, r2
c0de3bd2:	d106      	bne.n	c0de3be2 <io_legacy_apdu_rx+0x4a>
c0de3bd4:	1e41      	subs	r1, r0, #1
c0de3bd6:	2902      	cmp	r1, #2
c0de3bd8:	d367      	bcc.n	c0de3caa <io_legacy_apdu_rx+0x112>
c0de3bda:	2830      	cmp	r0, #48	@ 0x30
c0de3bdc:	bf18      	it	ne
c0de3bde:	2840      	cmpne	r0, #64	@ 0x40
c0de3be0:	d177      	bne.n	c0de3cd2 <io_legacy_apdu_rx+0x13a>
c0de3be2:	4f56      	ldr	r7, [pc, #344]	@ (c0de3d3c <io_legacy_apdu_rx+0x1a4>)
c0de3be4:	eb09 0107 	add.w	r1, r9, r7
c0de3be8:	7048      	strb	r0, [r1, #1]
c0de3bea:	f003 fff1 	bl	c0de7bd0 <os_perso_is_pin_set>
c0de3bee:	28aa      	cmp	r0, #170	@ 0xaa
c0de3bf0:	d103      	bne.n	c0de3bfa <io_legacy_apdu_rx+0x62>
c0de3bf2:	f003 fff6 	bl	c0de7be2 <os_global_pin_is_validated>
c0de3bf6:	28aa      	cmp	r0, #170	@ 0xaa
c0de3bf8:	d145      	bne.n	c0de3c86 <io_legacy_apdu_rx+0xee>
c0de3bfa:	eb09 0006 	add.w	r0, r9, r6
c0de3bfe:	7840      	ldrb	r0, [r0, #1]
c0de3c00:	28b0      	cmp	r0, #176	@ 0xb0
c0de3c02:	d12c      	bne.n	c0de3c5e <io_legacy_apdu_rx+0xc6>
c0de3c04:	f240 1011 	movw	r0, #273	@ 0x111
c0de3c08:	1e61      	subs	r1, r4, #1
c0de3c0a:	9001      	str	r0, [sp, #4]
c0de3c0c:	f10d 000b 	add.w	r0, sp, #11
c0de3c10:	9000      	str	r0, [sp, #0]
c0de3c12:	484b      	ldr	r0, [pc, #300]	@ (c0de3d40 <io_legacy_apdu_rx+0x1a8>)
c0de3c14:	ab01      	add	r3, sp, #4
c0de3c16:	eb09 0500 	add.w	r5, r9, r0
c0de3c1a:	eb09 0006 	add.w	r0, r9, r6
c0de3c1e:	3001      	adds	r0, #1
c0de3c20:	462a      	mov	r2, r5
c0de3c22:	f7ff ff24 	bl	c0de3a6e <os_io_handle_default_apdu>
c0de3c26:	2400      	movs	r4, #0
c0de3c28:	9901      	ldr	r1, [sp, #4]
c0de3c2a:	eb09 0607 	add.w	r6, r9, r7
c0de3c2e:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de3c32:	bf18      	it	ne
c0de3c34:	4621      	movne	r1, r4
c0de3c36:	0a02      	lsrs	r2, r0, #8
c0de3c38:	2300      	movs	r3, #0
c0de3c3a:	546a      	strb	r2, [r5, r1]
c0de3c3c:	186a      	adds	r2, r5, r1
c0de3c3e:	7050      	strb	r0, [r2, #1]
c0de3c40:	1c88      	adds	r0, r1, #2
c0de3c42:	4629      	mov	r1, r5
c0de3c44:	9001      	str	r0, [sp, #4]
c0de3c46:	b282      	uxth	r2, r0
c0de3c48:	7870      	ldrb	r0, [r6, #1]
c0de3c4a:	f004 f817 	bl	c0de7c7c <os_io_tx_cmd>
c0de3c4e:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de3c52:	7074      	strb	r4, [r6, #1]
c0de3c54:	2901      	cmp	r1, #1
c0de3c56:	d06a      	beq.n	c0de3d2e <io_legacy_apdu_rx+0x196>
c0de3c58:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de3c5c:	e059      	b.n	c0de3d12 <io_legacy_apdu_rx+0x17a>
c0de3c5e:	eb09 0007 	add.w	r0, r9, r7
c0de3c62:	7840      	ldrb	r0, [r0, #1]
c0de3c64:	2810      	cmp	r0, #16
c0de3c66:	d043      	beq.n	c0de3cf0 <io_legacy_apdu_rx+0x158>
c0de3c68:	2840      	cmp	r0, #64	@ 0x40
c0de3c6a:	d043      	beq.n	c0de3cf4 <io_legacy_apdu_rx+0x15c>
c0de3c6c:	2821      	cmp	r0, #33	@ 0x21
c0de3c6e:	d043      	beq.n	c0de3cf8 <io_legacy_apdu_rx+0x160>
c0de3c70:	2822      	cmp	r0, #34	@ 0x22
c0de3c72:	d037      	beq.n	c0de3ce4 <io_legacy_apdu_rx+0x14c>
c0de3c74:	2823      	cmp	r0, #35	@ 0x23
c0de3c76:	d037      	beq.n	c0de3ce8 <io_legacy_apdu_rx+0x150>
c0de3c78:	2830      	cmp	r0, #48	@ 0x30
c0de3c7a:	d037      	beq.n	c0de3cec <io_legacy_apdu_rx+0x154>
c0de3c7c:	2820      	cmp	r0, #32
c0de3c7e:	bf14      	ite	ne
c0de3c80:	2000      	movne	r0, #0
c0de3c82:	2001      	moveq	r0, #1
c0de3c84:	e039      	b.n	c0de3cfa <io_legacy_apdu_rx+0x162>
c0de3c86:	482e      	ldr	r0, [pc, #184]	@ (c0de3d40 <io_legacy_apdu_rx+0x1a8>)
c0de3c88:	2155      	movs	r1, #85	@ 0x55
c0de3c8a:	2202      	movs	r2, #2
c0de3c8c:	2300      	movs	r3, #0
c0de3c8e:	f809 1000 	strb.w	r1, [r9, r0]
c0de3c92:	eb09 0100 	add.w	r1, r9, r0
c0de3c96:	2015      	movs	r0, #21
c0de3c98:	7048      	strb	r0, [r1, #1]
c0de3c9a:	eb09 0007 	add.w	r0, r9, r7
c0de3c9e:	7840      	ldrb	r0, [r0, #1]
c0de3ca0:	b003      	add	sp, #12
c0de3ca2:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3ca6:	f003 bfe9 	b.w	c0de7c7c <os_io_tx_cmd>
c0de3caa:	4f27      	ldr	r7, [pc, #156]	@ (c0de3d48 <io_legacy_apdu_rx+0x1b0>)
c0de3cac:	444e      	add	r6, r9
c0de3cae:	3c01      	subs	r4, #1
c0de3cb0:	1c71      	adds	r1, r6, #1
c0de3cb2:	4622      	mov	r2, r4
c0de3cb4:	eb09 0007 	add.w	r0, r9, r7
c0de3cb8:	f004 f8fe 	bl	c0de7eb8 <__aeabi_memcpy>
c0de3cbc:	7870      	ldrb	r0, [r6, #1]
c0de3cbe:	281a      	cmp	r0, #26
c0de3cc0:	d10a      	bne.n	c0de3cd8 <io_legacy_apdu_rx+0x140>
c0de3cc2:	eb09 0007 	add.w	r0, r9, r7
c0de3cc6:	4621      	mov	r1, r4
c0de3cc8:	b003      	add	sp, #12
c0de3cca:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3cce:	f7ff bf40 	b.w	c0de3b52 <io_process_itc_ux_event>
c0de3cd2:	2842      	cmp	r0, #66	@ 0x42
c0de3cd4:	d01d      	beq.n	c0de3d12 <io_legacy_apdu_rx+0x17a>
c0de3cd6:	e028      	b.n	c0de3d2a <io_legacy_apdu_rx+0x192>
c0de3cd8:	b1ed      	cbz	r5, c0de3d16 <io_legacy_apdu_rx+0x17e>
c0de3cda:	2000      	movs	r0, #0
c0de3cdc:	2400      	movs	r4, #0
c0de3cde:	f003 f8fb 	bl	c0de6ed8 <io_event>
c0de3ce2:	e016      	b.n	c0de3d12 <io_legacy_apdu_rx+0x17a>
c0de3ce4:	2004      	movs	r0, #4
c0de3ce6:	e008      	b.n	c0de3cfa <io_legacy_apdu_rx+0x162>
c0de3ce8:	2007      	movs	r0, #7
c0de3cea:	e006      	b.n	c0de3cfa <io_legacy_apdu_rx+0x162>
c0de3cec:	2002      	movs	r0, #2
c0de3cee:	e004      	b.n	c0de3cfa <io_legacy_apdu_rx+0x162>
c0de3cf0:	2006      	movs	r0, #6
c0de3cf2:	e002      	b.n	c0de3cfa <io_legacy_apdu_rx+0x162>
c0de3cf4:	2003      	movs	r0, #3
c0de3cf6:	e000      	b.n	c0de3cfa <io_legacy_apdu_rx+0x162>
c0de3cf8:	2005      	movs	r0, #5
c0de3cfa:	4912      	ldr	r1, [pc, #72]	@ (c0de3d44 <io_legacy_apdu_rx+0x1ac>)
c0de3cfc:	3c01      	subs	r4, #1
c0de3cfe:	4622      	mov	r2, r4
c0de3d00:	4449      	add	r1, r9
c0de3d02:	7188      	strb	r0, [r1, #6]
c0de3d04:	480e      	ldr	r0, [pc, #56]	@ (c0de3d40 <io_legacy_apdu_rx+0x1a8>)
c0de3d06:	eb09 0106 	add.w	r1, r9, r6
c0de3d0a:	3101      	adds	r1, #1
c0de3d0c:	4448      	add	r0, r9
c0de3d0e:	f004 f8d3 	bl	c0de7eb8 <__aeabi_memcpy>
c0de3d12:	4620      	mov	r0, r4
c0de3d14:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3d16:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de3d1a:	2815      	cmp	r0, #21
c0de3d1c:	d8dd      	bhi.n	c0de3cda <io_legacy_apdu_rx+0x142>
c0de3d1e:	2101      	movs	r1, #1
c0de3d20:	fa01 f000 	lsl.w	r0, r1, r0
c0de3d24:	4909      	ldr	r1, [pc, #36]	@ (c0de3d4c <io_legacy_apdu_rx+0x1b4>)
c0de3d26:	4208      	tst	r0, r1
c0de3d28:	d0d7      	beq.n	c0de3cda <io_legacy_apdu_rx+0x142>
c0de3d2a:	2400      	movs	r4, #0
c0de3d2c:	e7f1      	b.n	c0de3d12 <io_legacy_apdu_rx+0x17a>
c0de3d2e:	20ff      	movs	r0, #255	@ 0xff
c0de3d30:	f003 ff86 	bl	c0de7c40 <os_sched_exit>
c0de3d34:	000007a5 	.word	0x000007a5
c0de3d38:	007f0001 	.word	0x007f0001
c0de3d3c:	000008be 	.word	0x000008be
c0de3d40:	00000694 	.word	0x00000694
c0de3d44:	000008b6 	.word	0x000008b6
c0de3d48:	00000a3c 	.word	0x00000a3c
c0de3d4c:	00205020 	.word	0x00205020

c0de3d50 <io_seproxyhal_init>:
c0de3d50:	b570      	push	{r4, r5, r6, lr}
c0de3d52:	b08a      	sub	sp, #40	@ 0x28
c0de3d54:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3d84 <io_seproxyhal_init+0x34>)
c0de3d56:	2600      	movs	r6, #0
c0de3d58:	2118      	movs	r1, #24
c0de3d5a:	eb09 0005 	add.w	r0, r9, r5
c0de3d5e:	7046      	strb	r6, [r0, #1]
c0de3d60:	ac01      	add	r4, sp, #4
c0de3d62:	4620      	mov	r0, r4
c0de3d64:	f004 f8b2 	bl	c0de7ecc <__aeabi_memclr>
c0de3d68:	2011      	movs	r0, #17
c0de3d6a:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de3d6e:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3d72:	4620      	mov	r0, r4
c0de3d74:	f003 ff6e 	bl	c0de7c54 <os_io_init>
c0de3d78:	2001      	movs	r0, #1
c0de3d7a:	f809 0005 	strb.w	r0, [r9, r5]
c0de3d7e:	b00a      	add	sp, #40	@ 0x28
c0de3d80:	bd70      	pop	{r4, r5, r6, pc}
c0de3d82:	bf00      	nop
c0de3d84:	000008be 	.word	0x000008be

c0de3d88 <nbgl_layoutGet>:
c0de3d88:	b570      	push	{r4, r5, r6, lr}
c0de3d8a:	4605      	mov	r5, r0
c0de3d8c:	7800      	ldrb	r0, [r0, #0]
c0de3d8e:	b148      	cbz	r0, c0de3da4 <nbgl_layoutGet+0x1c>
c0de3d90:	4819      	ldr	r0, [pc, #100]	@ (c0de3df8 <nbgl_layoutGet+0x70>)
c0de3d92:	eb09 0100 	add.w	r1, r9, r0
c0de3d96:	7b8a      	ldrb	r2, [r1, #14]
c0de3d98:	b152      	cbz	r2, c0de3db0 <nbgl_layoutGet+0x28>
c0de3d9a:	4448      	add	r0, r9
c0de3d9c:	7e81      	ldrb	r1, [r0, #26]
c0de3d9e:	b151      	cbz	r1, c0de3db6 <nbgl_layoutGet+0x2e>
c0de3da0:	2400      	movs	r4, #0
c0de3da2:	e026      	b.n	c0de3df2 <nbgl_layoutGet+0x6a>
c0de3da4:	4814      	ldr	r0, [pc, #80]	@ (c0de3df8 <nbgl_layoutGet+0x70>)
c0de3da6:	eb09 0400 	add.w	r4, r9, r0
c0de3daa:	2000      	movs	r0, #0
c0de3dac:	70a0      	strb	r0, [r4, #2]
c0de3dae:	e004      	b.n	c0de3dba <nbgl_layoutGet+0x32>
c0de3db0:	f101 040c 	add.w	r4, r1, #12
c0de3db4:	e001      	b.n	c0de3dba <nbgl_layoutGet+0x32>
c0de3db6:	f100 0418 	add.w	r4, r0, #24
c0de3dba:	2000      	movs	r0, #0
c0de3dbc:	4626      	mov	r6, r4
c0de3dbe:	60a0      	str	r0, [r4, #8]
c0de3dc0:	6020      	str	r0, [r4, #0]
c0de3dc2:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3dc6:	6868      	ldr	r0, [r5, #4]
c0de3dc8:	f003 fd74 	bl	c0de78b4 <pic>
c0de3dcc:	60a0      	str	r0, [r4, #8]
c0de3dce:	7828      	ldrb	r0, [r5, #0]
c0de3dd0:	f105 0208 	add.w	r2, r5, #8
c0de3dd4:	7020      	strb	r0, [r4, #0]
c0de3dd6:	4b09      	ldr	r3, [pc, #36]	@ (c0de3dfc <nbgl_layoutGet+0x74>)
c0de3dd8:	447b      	add	r3, pc
c0de3dda:	b120      	cbz	r0, c0de3de6 <nbgl_layoutGet+0x5e>
c0de3ddc:	4630      	mov	r0, r6
c0de3dde:	2107      	movs	r1, #7
c0de3de0:	f003 fb6d 	bl	c0de74be <nbgl_screenPush>
c0de3de4:	e004      	b.n	c0de3df0 <nbgl_layoutGet+0x68>
c0de3de6:	4630      	mov	r0, r6
c0de3de8:	2107      	movs	r1, #7
c0de3dea:	f003 fb63 	bl	c0de74b4 <nbgl_screenSet>
c0de3dee:	2000      	movs	r0, #0
c0de3df0:	7060      	strb	r0, [r4, #1]
c0de3df2:	4620      	mov	r0, r4
c0de3df4:	bd70      	pop	{r4, r5, r6, pc}
c0de3df6:	bf00      	nop
c0de3df8:	000008c0 	.word	0x000008c0
c0de3dfc:	00000025 	.word	0x00000025

c0de3e00 <buttonCallback>:
c0de3e00:	b5b0      	push	{r4, r5, r7, lr}
c0de3e02:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3e06:	4811      	ldr	r0, [pc, #68]	@ (c0de3e4c <buttonCallback+0x4c>)
c0de3e08:	2302      	movs	r3, #2
c0de3e0a:	1c5c      	adds	r4, r3, #1
c0de3e0c:	d01d      	beq.n	c0de3e4a <buttonCallback+0x4a>
c0de3e0e:	b2dc      	uxtb	r4, r3
c0de3e10:	eb09 0500 	add.w	r5, r9, r0
c0de3e14:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3e18:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3e1c:	786d      	ldrb	r5, [r5, #1]
c0de3e1e:	42aa      	cmp	r2, r5
c0de3e20:	d105      	bne.n	c0de3e2e <buttonCallback+0x2e>
c0de3e22:	eb09 0500 	add.w	r5, r9, r0
c0de3e26:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3e2a:	78ad      	ldrb	r5, [r5, #2]
c0de3e2c:	b90d      	cbnz	r5, c0de3e32 <buttonCallback+0x32>
c0de3e2e:	3b01      	subs	r3, #1
c0de3e30:	e7eb      	b.n	c0de3e0a <buttonCallback+0xa>
c0de3e32:	eb09 0200 	add.w	r2, r9, r0
c0de3e36:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3e3a:	6892      	ldr	r2, [r2, #8]
c0de3e3c:	b12a      	cbz	r2, c0de3e4a <buttonCallback+0x4a>
c0de3e3e:	4448      	add	r0, r9
c0de3e40:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3e44:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3e48:	4710      	bx	r2
c0de3e4a:	bdb0      	pop	{r4, r5, r7, pc}
c0de3e4c:	000008c0 	.word	0x000008c0

c0de3e50 <nbgl_layoutAddNavigation>:
c0de3e50:	b570      	push	{r4, r5, r6, lr}
c0de3e52:	2800      	cmp	r0, #0
c0de3e54:	d04d      	beq.n	c0de3ef2 <nbgl_layoutAddNavigation+0xa2>
c0de3e56:	460d      	mov	r5, r1
c0de3e58:	7849      	ldrb	r1, [r1, #1]
c0de3e5a:	4604      	mov	r4, r0
c0de3e5c:	07c8      	lsls	r0, r1, #31
c0de3e5e:	d022      	beq.n	c0de3ea6 <nbgl_layoutAddNavigation+0x56>
c0de3e60:	7861      	ldrb	r1, [r4, #1]
c0de3e62:	2002      	movs	r0, #2
c0de3e64:	f003 fb3f 	bl	c0de74e6 <nbgl_objPoolGet>
c0de3e68:	782a      	ldrb	r2, [r5, #0]
c0de3e6a:	7869      	ldrb	r1, [r5, #1]
c0de3e6c:	4b23      	ldr	r3, [pc, #140]	@ (c0de3efc <nbgl_layoutAddNavigation+0xac>)
c0de3e6e:	4e24      	ldr	r6, [pc, #144]	@ (c0de3f00 <nbgl_layoutAddNavigation+0xb0>)
c0de3e70:	2a00      	cmp	r2, #0
c0de3e72:	447b      	add	r3, pc
c0de3e74:	447e      	add	r6, pc
c0de3e76:	4602      	mov	r2, r0
c0de3e78:	bf08      	it	eq
c0de3e7a:	461e      	moveq	r6, r3
c0de3e7c:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de3e80:	0e33      	lsrs	r3, r6, #24
c0de3e82:	70d3      	strb	r3, [r2, #3]
c0de3e84:	0c33      	lsrs	r3, r6, #16
c0de3e86:	7093      	strb	r3, [r2, #2]
c0de3e88:	0a32      	lsrs	r2, r6, #8
c0de3e8a:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de3e8e:	6862      	ldr	r2, [r4, #4]
c0de3e90:	78a3      	ldrb	r3, [r4, #2]
c0de3e92:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de3e96:	2203      	movs	r2, #3
c0de3e98:	77c2      	strb	r2, [r0, #31]
c0de3e9a:	2204      	movs	r2, #4
c0de3e9c:	7582      	strb	r2, [r0, #22]
c0de3e9e:	2200      	movs	r2, #0
c0de3ea0:	7242      	strb	r2, [r0, #9]
c0de3ea2:	1c58      	adds	r0, r3, #1
c0de3ea4:	70a0      	strb	r0, [r4, #2]
c0de3ea6:	0788      	lsls	r0, r1, #30
c0de3ea8:	f04f 0600 	mov.w	r6, #0
c0de3eac:	d523      	bpl.n	c0de3ef6 <nbgl_layoutAddNavigation+0xa6>
c0de3eae:	7861      	ldrb	r1, [r4, #1]
c0de3eb0:	2002      	movs	r0, #2
c0de3eb2:	f003 fb18 	bl	c0de74e6 <nbgl_objPoolGet>
c0de3eb6:	7829      	ldrb	r1, [r5, #0]
c0de3eb8:	4a12      	ldr	r2, [pc, #72]	@ (c0de3f04 <nbgl_layoutAddNavigation+0xb4>)
c0de3eba:	4b13      	ldr	r3, [pc, #76]	@ (c0de3f08 <nbgl_layoutAddNavigation+0xb8>)
c0de3ebc:	2900      	cmp	r1, #0
c0de3ebe:	447a      	add	r2, pc
c0de3ec0:	447b      	add	r3, pc
c0de3ec2:	4601      	mov	r1, r0
c0de3ec4:	bf08      	it	eq
c0de3ec6:	4613      	moveq	r3, r2
c0de3ec8:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3ecc:	0e1a      	lsrs	r2, r3, #24
c0de3ece:	7246      	strb	r6, [r0, #9]
c0de3ed0:	70ca      	strb	r2, [r1, #3]
c0de3ed2:	0c1a      	lsrs	r2, r3, #16
c0de3ed4:	708a      	strb	r2, [r1, #2]
c0de3ed6:	0a19      	lsrs	r1, r3, #8
c0de3ed8:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3edc:	6861      	ldr	r1, [r4, #4]
c0de3ede:	78a2      	ldrb	r2, [r4, #2]
c0de3ee0:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3ee4:	2103      	movs	r1, #3
c0de3ee6:	77c1      	strb	r1, [r0, #31]
c0de3ee8:	2106      	movs	r1, #6
c0de3eea:	7581      	strb	r1, [r0, #22]
c0de3eec:	1c50      	adds	r0, r2, #1
c0de3eee:	70a0      	strb	r0, [r4, #2]
c0de3ef0:	e001      	b.n	c0de3ef6 <nbgl_layoutAddNavigation+0xa6>
c0de3ef2:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3ef6:	4630      	mov	r0, r6
c0de3ef8:	bd70      	pop	{r4, r5, r6, pc}
c0de3efa:	bf00      	nop
c0de3efc:	00004278 	.word	0x00004278
c0de3f00:	000042b5 	.word	0x000042b5
c0de3f04:	0000425d 	.word	0x0000425d
c0de3f08:	0000421c 	.word	0x0000421c

c0de3f0c <nbgl_layoutAddText>:
c0de3f0c:	2800      	cmp	r0, #0
c0de3f0e:	f000 8143 	beq.w	c0de4198 <nbgl_layoutAddText+0x28c>
c0de3f12:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f16:	b088      	sub	sp, #32
c0de3f18:	460e      	mov	r6, r1
c0de3f1a:	7841      	ldrb	r1, [r0, #1]
c0de3f1c:	4605      	mov	r5, r0
c0de3f1e:	2001      	movs	r0, #1
c0de3f20:	4617      	mov	r7, r2
c0de3f22:	461c      	mov	r4, r3
c0de3f24:	f003 fadf 	bl	c0de74e6 <nbgl_objPoolGet>
c0de3f28:	4680      	mov	r8, r0
c0de3f2a:	2003      	movs	r0, #3
c0de3f2c:	2f00      	cmp	r7, #0
c0de3f2e:	bf08      	it	eq
c0de3f30:	2001      	moveq	r0, #1
c0de3f32:	7869      	ldrb	r1, [r5, #1]
c0de3f34:	f888 0020 	strb.w	r0, [r8, #32]
c0de3f38:	f003 fada 	bl	c0de74f0 <nbgl_containerPoolGet>
c0de3f3c:	4641      	mov	r1, r8
c0de3f3e:	0e02      	lsrs	r2, r0, #24
c0de3f40:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3f44:	f04f 0b00 	mov.w	fp, #0
c0de3f48:	9704      	str	r7, [sp, #16]
c0de3f4a:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3f4e:	f888 a004 	strb.w	sl, [r8, #4]
c0de3f52:	f888 b005 	strb.w	fp, [r8, #5]
c0de3f56:	70ca      	strb	r2, [r1, #3]
c0de3f58:	0c02      	lsrs	r2, r0, #16
c0de3f5a:	0a00      	lsrs	r0, r0, #8
c0de3f5c:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3f60:	708a      	strb	r2, [r1, #2]
c0de3f62:	2004      	movs	r0, #4
c0de3f64:	7869      	ldrb	r1, [r5, #1]
c0de3f66:	f003 fabe 	bl	c0de74e6 <nbgl_objPoolGet>
c0de3f6a:	4607      	mov	r7, r0
c0de3f6c:	2003      	movs	r0, #3
c0de3f6e:	77f8      	strb	r0, [r7, #31]
c0de3f70:	4630      	mov	r0, r6
c0de3f72:	f003 fc9f 	bl	c0de78b4 <pic>
c0de3f76:	4601      	mov	r1, r0
c0de3f78:	2008      	movs	r0, #8
c0de3f7a:	f887 b005 	strb.w	fp, [r7, #5]
c0de3f7e:	f887 a004 	strb.w	sl, [r7, #4]
c0de3f82:	9403      	str	r4, [sp, #12]
c0de3f84:	2c00      	cmp	r4, #0
c0de3f86:	bf08      	it	eq
c0de3f88:	200a      	moveq	r0, #10
c0de3f8a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3f8e:	2205      	movs	r2, #5
c0de3f90:	0e0b      	lsrs	r3, r1, #24
c0de3f92:	f887 2020 	strb.w	r2, [r7, #32]
c0de3f96:	463a      	mov	r2, r7
c0de3f98:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de3f9c:	70d3      	strb	r3, [r2, #3]
c0de3f9e:	0c0b      	lsrs	r3, r1, #16
c0de3fa0:	7093      	strb	r3, [r2, #2]
c0de3fa2:	0a0a      	lsrs	r2, r1, #8
c0de3fa4:	2301      	movs	r3, #1
c0de3fa6:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de3faa:	2272      	movs	r2, #114	@ 0x72
c0de3fac:	f003 fab4 	bl	c0de7518 <nbgl_getTextNbLinesInWidth>
c0de3fb0:	4606      	mov	r6, r0
c0de3fb2:	2805      	cmp	r0, #5
c0de3fb4:	9505      	str	r5, [sp, #20]
c0de3fb6:	d31d      	bcc.n	c0de3ff4 <nbgl_layoutAddText+0xe8>
c0de3fb8:	463e      	mov	r6, r7
c0de3fba:	2004      	movs	r0, #4
c0de3fbc:	2101      	movs	r1, #1
c0de3fbe:	f10d 051e 	add.w	r5, sp, #30
c0de3fc2:	f816 cf26 	ldrb.w	ip, [r6, #38]!
c0de3fc6:	7872      	ldrb	r2, [r6, #1]
c0de3fc8:	78b3      	ldrb	r3, [r6, #2]
c0de3fca:	78f4      	ldrb	r4, [r6, #3]
c0de3fcc:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de3fd0:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3fd4:	9101      	str	r1, [sp, #4]
c0de3fd6:	9500      	str	r5, [sp, #0]
c0de3fd8:	9d05      	ldr	r5, [sp, #20]
c0de3fda:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3fde:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3fe2:	2304      	movs	r3, #4
c0de3fe4:	f000 fc78 	bl	c0de48d8 <OUTLINED_FUNCTION_4>
c0de3fe8:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de3fec:	7130      	strb	r0, [r6, #4]
c0de3fee:	0a00      	lsrs	r0, r0, #8
c0de3ff0:	7170      	strb	r0, [r6, #5]
c0de3ff2:	2604      	movs	r6, #4
c0de3ff4:	f000 fc78 	bl	c0de48e8 <OUTLINED_FUNCTION_6>
c0de3ff8:	4683      	mov	fp, r0
c0de3ffa:	79c0      	ldrb	r0, [r0, #7]
c0de3ffc:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de4000:	9c04      	ldr	r4, [sp, #16]
c0de4002:	fb06 fa00 	mul.w	sl, r6, r0
c0de4006:	f041 0101 	orr.w	r1, r1, #1
c0de400a:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de400e:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de4012:	2102      	movs	r1, #2
c0de4014:	f887 a006 	strb.w	sl, [r7, #6]
c0de4018:	71f8      	strb	r0, [r7, #7]
c0de401a:	4640      	mov	r0, r8
c0de401c:	75b9      	strb	r1, [r7, #22]
c0de401e:	2c00      	cmp	r4, #0
c0de4020:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4024:	7842      	ldrb	r2, [r0, #1]
c0de4026:	7883      	ldrb	r3, [r0, #2]
c0de4028:	78c0      	ldrb	r0, [r0, #3]
c0de402a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de402e:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4032:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4036:	6007      	str	r7, [r0, #0]
c0de4038:	f000 8110 	beq.w	c0de425c <nbgl_layoutAddText+0x350>
c0de403c:	9803      	ldr	r0, [sp, #12]
c0de403e:	7869      	ldrb	r1, [r5, #1]
c0de4040:	2802      	cmp	r0, #2
c0de4042:	f040 80ab 	bne.w	c0de419c <nbgl_layoutAddText+0x290>
c0de4046:	2005      	movs	r0, #5
c0de4048:	2505      	movs	r5, #5
c0de404a:	f003 fa4c 	bl	c0de74e6 <nbgl_objPoolGet>
c0de404e:	2600      	movs	r6, #0
c0de4050:	4607      	mov	r7, r0
c0de4052:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de4056:	2001      	movs	r0, #1
c0de4058:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de405c:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de4060:	f000 fc51 	bl	c0de4906 <OUTLINED_FUNCTION_9>
c0de4064:	4620      	mov	r0, r4
c0de4066:	f003 fc25 	bl	c0de78b4 <pic>
c0de406a:	4601      	mov	r1, r0
c0de406c:	200e      	movs	r0, #14
c0de406e:	71fe      	strb	r6, [r7, #7]
c0de4070:	75bd      	strb	r5, [r7, #22]
c0de4072:	71b8      	strb	r0, [r7, #6]
c0de4074:	2008      	movs	r0, #8
c0de4076:	0e0a      	lsrs	r2, r1, #24
c0de4078:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de407c:	4638      	mov	r0, r7
c0de407e:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de4082:	f000 fc20 	bl	c0de48c6 <OUTLINED_FUNCTION_3>
c0de4086:	2865      	cmp	r0, #101	@ 0x65
c0de4088:	f240 80d8 	bls.w	c0de423c <nbgl_layoutAddText+0x330>
c0de408c:	46bb      	mov	fp, r7
c0de408e:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de4092:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de4096:	2401      	movs	r4, #1
c0de4098:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de409c:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de40a0:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de40a4:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de40a8:	ae06      	add	r6, sp, #24
c0de40aa:	e9cd 6400 	strd	r6, r4, [sp]
c0de40ae:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de40b2:	f10d 031a 	add.w	r3, sp, #26
c0de40b6:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de40ba:	2266      	movs	r2, #102	@ 0x66
c0de40bc:	f003 fa27 	bl	c0de750e <nbgl_getTextMaxLenAndWidth>
c0de40c0:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de40c4:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de40c8:	300c      	adds	r0, #12
c0de40ca:	7138      	strb	r0, [r7, #4]
c0de40cc:	0a00      	lsrs	r0, r0, #8
c0de40ce:	7178      	strb	r0, [r7, #5]
c0de40d0:	486d      	ldr	r0, [pc, #436]	@ (c0de4288 <nbgl_layoutAddText+0x37c>)
c0de40d2:	2e13      	cmp	r6, #19
c0de40d4:	bf28      	it	cs
c0de40d6:	2613      	movcs	r6, #19
c0de40d8:	f89b 1000 	ldrb.w	r1, [fp]
c0de40dc:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de40e0:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de40e4:	eb09 0400 	add.w	r4, r9, r0
c0de40e8:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de40ec:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de40f0:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de40f4:	4632      	mov	r2, r6
c0de40f6:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de40fa:	4620      	mov	r0, r4
c0de40fc:	f003 fedc 	bl	c0de7eb8 <__aeabi_memcpy>
c0de4100:	2500      	movs	r5, #0
c0de4102:	4620      	mov	r0, r4
c0de4104:	55a5      	strb	r5, [r4, r6]
c0de4106:	f003 fbd5 	bl	c0de78b4 <pic>
c0de410a:	2101      	movs	r1, #1
c0de410c:	f88b 0000 	strb.w	r0, [fp]
c0de4110:	76bd      	strb	r5, [r7, #26]
c0de4112:	9d05      	ldr	r5, [sp, #20]
c0de4114:	7679      	strb	r1, [r7, #25]
c0de4116:	0e01      	lsrs	r1, r0, #24
c0de4118:	f88b 1003 	strb.w	r1, [fp, #3]
c0de411c:	0c01      	lsrs	r1, r0, #16
c0de411e:	0a00      	lsrs	r0, r0, #8
c0de4120:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4124:	f88b 1002 	strb.w	r1, [fp, #2]
c0de4128:	4640      	mov	r0, r8
c0de412a:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de412e:	7842      	ldrb	r2, [r0, #1]
c0de4130:	7883      	ldrb	r3, [r0, #2]
c0de4132:	78c0      	ldrb	r0, [r0, #3]
c0de4134:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4138:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de413c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4140:	6047      	str	r7, [r0, #4]
c0de4142:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de4146:	2800      	cmp	r0, #0
c0de4148:	f000 8086 	beq.w	c0de4258 <nbgl_layoutAddText+0x34c>
c0de414c:	7869      	ldrb	r1, [r5, #1]
c0de414e:	2005      	movs	r0, #5
c0de4150:	2605      	movs	r6, #5
c0de4152:	f003 f9c8 	bl	c0de74e6 <nbgl_objPoolGet>
c0de4156:	2500      	movs	r5, #0
c0de4158:	4607      	mov	r7, r0
c0de415a:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de415e:	2001      	movs	r0, #1
c0de4160:	f000 fbd1 	bl	c0de4906 <OUTLINED_FUNCTION_9>
c0de4164:	9804      	ldr	r0, [sp, #16]
c0de4166:	f003 fba5 	bl	c0de78b4 <pic>
c0de416a:	210e      	movs	r1, #14
c0de416c:	71fd      	strb	r5, [r7, #7]
c0de416e:	71b9      	strb	r1, [r7, #6]
c0de4170:	2108      	movs	r1, #8
c0de4172:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de4176:	f8bd 101a 	ldrh.w	r1, [sp, #26]
c0de417a:	4401      	add	r1, r0
c0de417c:	4638      	mov	r0, r7
c0de417e:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de4182:	0e0a      	lsrs	r2, r1, #24
c0de4184:	f000 fb9f 	bl	c0de48c6 <OUTLINED_FUNCTION_3>
c0de4188:	300c      	adds	r0, #12
c0de418a:	210f      	movs	r1, #15
c0de418c:	75be      	strb	r6, [r7, #22]
c0de418e:	7138      	strb	r0, [r7, #4]
c0de4190:	0a00      	lsrs	r0, r0, #8
c0de4192:	7178      	strb	r0, [r7, #5]
c0de4194:	2002      	movs	r0, #2
c0de4196:	e057      	b.n	c0de4248 <nbgl_layoutAddText+0x33c>
c0de4198:	f000 bbb2 	b.w	c0de4900 <OUTLINED_FUNCTION_8>
c0de419c:	f000 fba1 	bl	c0de48e2 <OUTLINED_FUNCTION_5>
c0de41a0:	2603      	movs	r6, #3
c0de41a2:	4607      	mov	r7, r0
c0de41a4:	77c6      	strb	r6, [r0, #31]
c0de41a6:	4620      	mov	r0, r4
c0de41a8:	f003 fb84 	bl	c0de78b4 <pic>
c0de41ac:	4601      	mov	r1, r0
c0de41ae:	2072      	movs	r0, #114	@ 0x72
c0de41b0:	2400      	movs	r4, #0
c0de41b2:	2301      	movs	r3, #1
c0de41b4:	7138      	strb	r0, [r7, #4]
c0de41b6:	200a      	movs	r0, #10
c0de41b8:	0e0a      	lsrs	r2, r1, #24
c0de41ba:	717c      	strb	r4, [r7, #5]
c0de41bc:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de41c0:	f000 fb61 	bl	c0de4886 <OUTLINED_FUNCTION_0>
c0de41c4:	2804      	cmp	r0, #4
c0de41c6:	d31e      	bcc.n	c0de4206 <nbgl_layoutAddText+0x2fa>
c0de41c8:	463d      	mov	r5, r7
c0de41ca:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de41ce:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de41d2:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de41d6:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de41da:	78ab      	ldrb	r3, [r5, #2]
c0de41dc:	78e9      	ldrb	r1, [r5, #3]
c0de41de:	aa07      	add	r2, sp, #28
c0de41e0:	9200      	str	r2, [sp, #0]
c0de41e2:	2201      	movs	r2, #1
c0de41e4:	9201      	str	r2, [sp, #4]
c0de41e6:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de41ea:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de41ee:	2303      	movs	r3, #3
c0de41f0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de41f4:	2272      	movs	r2, #114	@ 0x72
c0de41f6:	f003 f99e 	bl	c0de7536 <nbgl_getTextMaxLenInNbLines>
c0de41fa:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de41fe:	7128      	strb	r0, [r5, #4]
c0de4200:	0a00      	lsrs	r0, r0, #8
c0de4202:	7168      	strb	r0, [r5, #5]
c0de4204:	2003      	movs	r0, #3
c0de4206:	9903      	ldr	r1, [sp, #12]
c0de4208:	2900      	cmp	r1, #0
c0de420a:	bf08      	it	eq
c0de420c:	4606      	moveq	r6, r0
c0de420e:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de4212:	76bc      	strb	r4, [r7, #26]
c0de4214:	75bc      	strb	r4, [r7, #22]
c0de4216:	fb06 f100 	mul.w	r1, r6, r0
c0de421a:	fb06 a000 	mla	r0, r6, r0, sl
c0de421e:	71b9      	strb	r1, [r7, #6]
c0de4220:	0a09      	lsrs	r1, r1, #8
c0de4222:	71f9      	strb	r1, [r7, #7]
c0de4224:	2102      	movs	r1, #2
c0de4226:	f100 0a02 	add.w	sl, r0, #2
c0de422a:	7679      	strb	r1, [r7, #25]
c0de422c:	2105      	movs	r1, #5
c0de422e:	f887 1020 	strb.w	r1, [r7, #32]
c0de4232:	4641      	mov	r1, r8
c0de4234:	f000 fb3a 	bl	c0de48ac <OUTLINED_FUNCTION_2>
c0de4238:	604f      	str	r7, [r1, #4]
c0de423a:	e00f      	b.n	c0de425c <nbgl_layoutAddText+0x350>
c0de423c:	300c      	adds	r0, #12
c0de423e:	2108      	movs	r1, #8
c0de4240:	7138      	strb	r0, [r7, #4]
c0de4242:	0a00      	lsrs	r0, r0, #8
c0de4244:	7178      	strb	r0, [r7, #5]
c0de4246:	2001      	movs	r0, #1
c0de4248:	2200      	movs	r2, #0
c0de424a:	7679      	strb	r1, [r7, #25]
c0de424c:	4641      	mov	r1, r8
c0de424e:	76ba      	strb	r2, [r7, #26]
c0de4250:	f000 fb2c 	bl	c0de48ac <OUTLINED_FUNCTION_2>
c0de4254:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de4258:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de425c:	6868      	ldr	r0, [r5, #4]
c0de425e:	78a9      	ldrb	r1, [r5, #2]
c0de4260:	2205      	movs	r2, #5
c0de4262:	f888 2016 	strb.w	r2, [r8, #22]
c0de4266:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de426a:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de426e:	2000      	movs	r0, #0
c0de4270:	3101      	adds	r1, #1
c0de4272:	f888 a006 	strb.w	sl, [r8, #6]
c0de4276:	f888 2007 	strb.w	r2, [r8, #7]
c0de427a:	f888 001f 	strb.w	r0, [r8, #31]
c0de427e:	70a9      	strb	r1, [r5, #2]
c0de4280:	b008      	add	sp, #32
c0de4282:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4286:	bf00      	nop
c0de4288:	000008e4 	.word	0x000008e4

c0de428c <nbgl_layoutAddMenuList>:
c0de428c:	2800      	cmp	r0, #0
c0de428e:	d04f      	beq.n	c0de4330 <nbgl_layoutAddMenuList+0xa4>
c0de4290:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4294:	460c      	mov	r4, r1
c0de4296:	4605      	mov	r5, r0
c0de4298:	2700      	movs	r7, #0
c0de429a:	f04f 0b05 	mov.w	fp, #5
c0de429e:	f04f 0803 	mov.w	r8, #3
c0de42a2:	f04f 0a00 	mov.w	sl, #0
c0de42a6:	7920      	ldrb	r0, [r4, #4]
c0de42a8:	4582      	cmp	sl, r0
c0de42aa:	d23e      	bcs.n	c0de432a <nbgl_layoutAddMenuList+0x9e>
c0de42ac:	7960      	ldrb	r0, [r4, #5]
c0de42ae:	2803      	cmp	r0, #3
c0de42b0:	d302      	bcc.n	c0de42b8 <nbgl_layoutAddMenuList+0x2c>
c0de42b2:	1e81      	subs	r1, r0, #2
c0de42b4:	4551      	cmp	r1, sl
c0de42b6:	dc35      	bgt.n	c0de4324 <nbgl_layoutAddMenuList+0x98>
c0de42b8:	3002      	adds	r0, #2
c0de42ba:	4550      	cmp	r0, sl
c0de42bc:	d332      	bcc.n	c0de4324 <nbgl_layoutAddMenuList+0x98>
c0de42be:	7869      	ldrb	r1, [r5, #1]
c0de42c0:	f000 fb0f 	bl	c0de48e2 <OUTLINED_FUNCTION_5>
c0de42c4:	6821      	ldr	r1, [r4, #0]
c0de42c6:	4606      	mov	r6, r0
c0de42c8:	fa5f f08a 	uxtb.w	r0, sl
c0de42cc:	4788      	blx	r1
c0de42ce:	7961      	ldrb	r1, [r4, #5]
c0de42d0:	220a      	movs	r2, #10
c0de42d2:	458a      	cmp	sl, r1
c0de42d4:	bf08      	it	eq
c0de42d6:	2208      	moveq	r2, #8
c0de42d8:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de42dc:	71f7      	strb	r7, [r6, #7]
c0de42de:	7177      	strb	r7, [r6, #5]
c0de42e0:	f886 b020 	strb.w	fp, [r6, #32]
c0de42e4:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de42e8:	f886 b016 	strb.w	fp, [r6, #22]
c0de42ec:	f886 801f 	strb.w	r8, [r6, #31]
c0de42f0:	4632      	mov	r2, r6
c0de42f2:	0e03      	lsrs	r3, r0, #24
c0de42f4:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de42f8:	70d3      	strb	r3, [r2, #3]
c0de42fa:	0c03      	lsrs	r3, r0, #16
c0de42fc:	0a00      	lsrs	r0, r0, #8
c0de42fe:	7093      	strb	r3, [r2, #2]
c0de4300:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4304:	6868      	ldr	r0, [r5, #4]
c0de4306:	78aa      	ldrb	r2, [r5, #2]
c0de4308:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de430c:	200c      	movs	r0, #12
c0de430e:	71b0      	strb	r0, [r6, #6]
c0de4310:	2072      	movs	r0, #114	@ 0x72
c0de4312:	7130      	strb	r0, [r6, #4]
c0de4314:	ebaa 0001 	sub.w	r0, sl, r1
c0de4318:	0901      	lsrs	r1, r0, #4
c0de431a:	0100      	lsls	r0, r0, #4
c0de431c:	7670      	strb	r0, [r6, #25]
c0de431e:	1c50      	adds	r0, r2, #1
c0de4320:	76b1      	strb	r1, [r6, #26]
c0de4322:	70a8      	strb	r0, [r5, #2]
c0de4324:	f10a 0a01 	add.w	sl, sl, #1
c0de4328:	e7bd      	b.n	c0de42a6 <nbgl_layoutAddMenuList+0x1a>
c0de432a:	2000      	movs	r0, #0
c0de432c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4330:	f000 bae6 	b.w	c0de4900 <OUTLINED_FUNCTION_8>

c0de4334 <nbgl_layoutAddCenteredInfo>:
c0de4334:	2800      	cmp	r0, #0
c0de4336:	f000 80dc 	beq.w	c0de44f2 <nbgl_layoutAddCenteredInfo+0x1be>
c0de433a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de433e:	b086      	sub	sp, #24
c0de4340:	460d      	mov	r5, r1
c0de4342:	7841      	ldrb	r1, [r0, #1]
c0de4344:	4682      	mov	sl, r0
c0de4346:	2001      	movs	r0, #1
c0de4348:	f003 f8cd 	bl	c0de74e6 <nbgl_objPoolGet>
c0de434c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4350:	4680      	mov	r8, r0
c0de4352:	2003      	movs	r0, #3
c0de4354:	2703      	movs	r7, #3
c0de4356:	f003 f8cb 	bl	c0de74f0 <nbgl_containerPoolGet>
c0de435a:	4641      	mov	r1, r8
c0de435c:	0e02      	lsrs	r2, r0, #24
c0de435e:	f04f 0b00 	mov.w	fp, #0
c0de4362:	9504      	str	r5, [sp, #16]
c0de4364:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4368:	f888 b020 	strb.w	fp, [r8, #32]
c0de436c:	70ca      	strb	r2, [r1, #3]
c0de436e:	0c02      	lsrs	r2, r0, #16
c0de4370:	0a00      	lsrs	r0, r0, #8
c0de4372:	708a      	strb	r2, [r1, #2]
c0de4374:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de4378:	68a8      	ldr	r0, [r5, #8]
c0de437a:	b3c0      	cbz	r0, c0de43ee <nbgl_layoutAddCenteredInfo+0xba>
c0de437c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4380:	2002      	movs	r0, #2
c0de4382:	f003 f8b0 	bl	c0de74e6 <nbgl_objPoolGet>
c0de4386:	4606      	mov	r6, r0
c0de4388:	77c7      	strb	r7, [r0, #31]
c0de438a:	68a8      	ldr	r0, [r5, #8]
c0de438c:	f003 fa92 	bl	c0de78b4 <pic>
c0de4390:	4631      	mov	r1, r6
c0de4392:	0e02      	lsrs	r2, r0, #24
c0de4394:	f886 b013 	strb.w	fp, [r6, #19]
c0de4398:	f886 b009 	strb.w	fp, [r6, #9]
c0de439c:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de43a0:	70ca      	strb	r2, [r1, #3]
c0de43a2:	0c02      	lsrs	r2, r0, #16
c0de43a4:	708a      	strb	r2, [r1, #2]
c0de43a6:	0a01      	lsrs	r1, r0, #8
c0de43a8:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de43ac:	4631      	mov	r1, r6
c0de43ae:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de43b2:	f881 b003 	strb.w	fp, [r1, #3]
c0de43b6:	f881 b002 	strb.w	fp, [r1, #2]
c0de43ba:	4641      	mov	r1, r8
c0de43bc:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de43c0:	784f      	ldrb	r7, [r1, #1]
c0de43c2:	788c      	ldrb	r4, [r1, #2]
c0de43c4:	78cd      	ldrb	r5, [r1, #3]
c0de43c6:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de43ca:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de43ce:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de43d2:	9d04      	ldr	r5, [sp, #16]
c0de43d4:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de43d8:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de43dc:	2202      	movs	r2, #2
c0de43de:	75b2      	strb	r2, [r6, #22]
c0de43e0:	1c5a      	adds	r2, r3, #1
c0de43e2:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de43e6:	7881      	ldrb	r1, [r0, #2]
c0de43e8:	78c0      	ldrb	r0, [r0, #3]
c0de43ea:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de43ee:	6828      	ldr	r0, [r5, #0]
c0de43f0:	2800      	cmp	r0, #0
c0de43f2:	f000 80a5 	beq.w	c0de4540 <nbgl_layoutAddCenteredInfo+0x20c>
c0de43f6:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de43fa:	f000 fa72 	bl	c0de48e2 <OUTLINED_FUNCTION_5>
c0de43fe:	4607      	mov	r7, r0
c0de4400:	2003      	movs	r0, #3
c0de4402:	77f8      	strb	r0, [r7, #31]
c0de4404:	6828      	ldr	r0, [r5, #0]
c0de4406:	f003 fa55 	bl	c0de78b4 <pic>
c0de440a:	4601      	mov	r1, r0
c0de440c:	2072      	movs	r0, #114	@ 0x72
c0de440e:	2400      	movs	r4, #0
c0de4410:	7138      	strb	r0, [r7, #4]
c0de4412:	2005      	movs	r0, #5
c0de4414:	0e0a      	lsrs	r2, r1, #24
c0de4416:	717c      	strb	r4, [r7, #5]
c0de4418:	f887 0020 	strb.w	r0, [r7, #32]
c0de441c:	4638      	mov	r0, r7
c0de441e:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4422:	70c2      	strb	r2, [r0, #3]
c0de4424:	0c0a      	lsrs	r2, r1, #16
c0de4426:	7082      	strb	r2, [r0, #2]
c0de4428:	0a08      	lsrs	r0, r1, #8
c0de442a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de442e:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de4432:	7b6a      	ldrb	r2, [r5, #13]
c0de4434:	f040 0001 	orr.w	r0, r0, #1
c0de4438:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de443c:	2008      	movs	r0, #8
c0de443e:	2a00      	cmp	r2, #0
c0de4440:	bf08      	it	eq
c0de4442:	200a      	moveq	r0, #10
c0de4444:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4448:	2272      	movs	r2, #114	@ 0x72
c0de444a:	2301      	movs	r3, #1
c0de444c:	f003 f864 	bl	c0de7518 <nbgl_getTextNbLinesInWidth>
c0de4450:	4606      	mov	r6, r0
c0de4452:	2805      	cmp	r0, #5
c0de4454:	d31e      	bcc.n	c0de4494 <nbgl_layoutAddCenteredInfo+0x160>
c0de4456:	463d      	mov	r5, r7
c0de4458:	2004      	movs	r0, #4
c0de445a:	2101      	movs	r1, #1
c0de445c:	f10d 0416 	add.w	r4, sp, #22
c0de4460:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4464:	786a      	ldrb	r2, [r5, #1]
c0de4466:	78ab      	ldrb	r3, [r5, #2]
c0de4468:	78ee      	ldrb	r6, [r5, #3]
c0de446a:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de446e:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4472:	9101      	str	r1, [sp, #4]
c0de4474:	9400      	str	r4, [sp, #0]
c0de4476:	2400      	movs	r4, #0
c0de4478:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de447c:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4480:	2304      	movs	r3, #4
c0de4482:	f000 fa29 	bl	c0de48d8 <OUTLINED_FUNCTION_4>
c0de4486:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de448a:	2604      	movs	r6, #4
c0de448c:	7128      	strb	r0, [r5, #4]
c0de448e:	0a00      	lsrs	r0, r0, #8
c0de4490:	7168      	strb	r0, [r5, #5]
c0de4492:	9d04      	ldr	r5, [sp, #16]
c0de4494:	f000 fa28 	bl	c0de48e8 <OUTLINED_FUNCTION_6>
c0de4498:	79c0      	ldrb	r0, [r0, #7]
c0de449a:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de449e:	4370      	muls	r0, r6
c0de44a0:	0a01      	lsrs	r1, r0, #8
c0de44a2:	71b8      	strb	r0, [r7, #6]
c0de44a4:	71f9      	strb	r1, [r7, #7]
c0de44a6:	68a9      	ldr	r1, [r5, #8]
c0de44a8:	b329      	cbz	r1, c0de44f6 <nbgl_layoutAddCenteredInfo+0x1c2>
c0de44aa:	4641      	mov	r1, r8
c0de44ac:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de44b0:	784c      	ldrb	r4, [r1, #1]
c0de44b2:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de44b6:	788d      	ldrb	r5, [r1, #2]
c0de44b8:	78c9      	ldrb	r1, [r1, #3]
c0de44ba:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de44be:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de44c2:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de44c6:	463a      	mov	r2, r7
c0de44c8:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de44cc:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de44d0:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de44d4:	0e0b      	lsrs	r3, r1, #24
c0de44d6:	70d3      	strb	r3, [r2, #3]
c0de44d8:	0c0b      	lsrs	r3, r1, #16
c0de44da:	0a09      	lsrs	r1, r1, #8
c0de44dc:	7051      	strb	r1, [r2, #1]
c0de44de:	2100      	movs	r1, #0
c0de44e0:	7093      	strb	r3, [r2, #2]
c0de44e2:	7211      	strb	r1, [r2, #8]
c0de44e4:	2e03      	cmp	r6, #3
c0de44e6:	bf38      	it	cc
c0de44e8:	2101      	movcc	r1, #1
c0de44ea:	0089      	lsls	r1, r1, #2
c0de44ec:	71d1      	strb	r1, [r2, #7]
c0de44ee:	2108      	movs	r1, #8
c0de44f0:	e00a      	b.n	c0de4508 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de44f2:	f000 ba05 	b.w	c0de4900 <OUTLINED_FUNCTION_8>
c0de44f6:	6869      	ldr	r1, [r5, #4]
c0de44f8:	b119      	cbz	r1, c0de4502 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de44fa:	f000 f9f9 	bl	c0de48f0 <OUTLINED_FUNCTION_7>
c0de44fe:	2102      	movs	r1, #2
c0de4500:	e002      	b.n	c0de4508 <nbgl_layoutAddCenteredInfo+0x1d4>
c0de4502:	f000 f9f5 	bl	c0de48f0 <OUTLINED_FUNCTION_7>
c0de4506:	2105      	movs	r1, #5
c0de4508:	7111      	strb	r1, [r2, #4]
c0de450a:	4641      	mov	r1, r8
c0de450c:	4458      	add	r0, fp
c0de450e:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4512:	784c      	ldrb	r4, [r1, #1]
c0de4514:	788d      	ldrb	r5, [r1, #2]
c0de4516:	78ce      	ldrb	r6, [r1, #3]
c0de4518:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de451c:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4520:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4524:	9d04      	ldr	r5, [sp, #16]
c0de4526:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de452a:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de452e:	1c5a      	adds	r2, r3, #1
c0de4530:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4534:	7e79      	ldrb	r1, [r7, #25]
c0de4536:	7eba      	ldrb	r2, [r7, #26]
c0de4538:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de453c:	eb00 0b01 	add.w	fp, r0, r1
c0de4540:	6868      	ldr	r0, [r5, #4]
c0de4542:	2800      	cmp	r0, #0
c0de4544:	d071      	beq.n	c0de462a <nbgl_layoutAddCenteredInfo+0x2f6>
c0de4546:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de454a:	2004      	movs	r0, #4
c0de454c:	f8cd a00c 	str.w	sl, [sp, #12]
c0de4550:	f002 ffc9 	bl	c0de74e6 <nbgl_objPoolGet>
c0de4554:	2403      	movs	r4, #3
c0de4556:	4607      	mov	r7, r0
c0de4558:	77c4      	strb	r4, [r0, #31]
c0de455a:	6868      	ldr	r0, [r5, #4]
c0de455c:	f003 f9aa 	bl	c0de78b4 <pic>
c0de4560:	4601      	mov	r1, r0
c0de4562:	2000      	movs	r0, #0
c0de4564:	2301      	movs	r3, #1
c0de4566:	7178      	strb	r0, [r7, #5]
c0de4568:	2072      	movs	r0, #114	@ 0x72
c0de456a:	0e0a      	lsrs	r2, r1, #24
c0de456c:	7138      	strb	r0, [r7, #4]
c0de456e:	200a      	movs	r0, #10
c0de4570:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4574:	2005      	movs	r0, #5
c0de4576:	f887 0020 	strb.w	r0, [r7, #32]
c0de457a:	f000 f984 	bl	c0de4886 <OUTLINED_FUNCTION_0>
c0de457e:	4682      	mov	sl, r0
c0de4580:	2804      	cmp	r0, #4
c0de4582:	d31c      	bcc.n	c0de45be <nbgl_layoutAddCenteredInfo+0x28a>
c0de4584:	463d      	mov	r5, r7
c0de4586:	f04f 0c01 	mov.w	ip, #1
c0de458a:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de458e:	f805 4c01 	strb.w	r4, [r5, #-1]
c0de4592:	786a      	ldrb	r2, [r5, #1]
c0de4594:	78ab      	ldrb	r3, [r5, #2]
c0de4596:	78ec      	ldrb	r4, [r5, #3]
c0de4598:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de459c:	ae05      	add	r6, sp, #20
c0de459e:	e9cd 6c00 	strd	r6, ip, [sp]
c0de45a2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de45a6:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de45aa:	2303      	movs	r3, #3
c0de45ac:	f000 f994 	bl	c0de48d8 <OUTLINED_FUNCTION_4>
c0de45b0:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de45b4:	f04f 0a03 	mov.w	sl, #3
c0de45b8:	7128      	strb	r0, [r5, #4]
c0de45ba:	0a00      	lsrs	r0, r0, #8
c0de45bc:	7168      	strb	r0, [r5, #5]
c0de45be:	f000 f993 	bl	c0de48e8 <OUTLINED_FUNCTION_6>
c0de45c2:	4641      	mov	r1, r8
c0de45c4:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de45c8:	784c      	ldrb	r4, [r1, #1]
c0de45ca:	788d      	ldrb	r5, [r1, #2]
c0de45cc:	78ce      	ldrb	r6, [r1, #3]
c0de45ce:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de45d2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de45d6:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de45da:	463d      	mov	r5, r7
c0de45dc:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de45e0:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de45e4:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de45e8:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de45ec:	0e26      	lsrs	r6, r4, #24
c0de45ee:	70ee      	strb	r6, [r5, #3]
c0de45f0:	0c26      	lsrs	r6, r4, #16
c0de45f2:	0a24      	lsrs	r4, r4, #8
c0de45f4:	74fc      	strb	r4, [r7, #19]
c0de45f6:	70ae      	strb	r6, [r5, #2]
c0de45f8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de45fc:	2302      	movs	r3, #2
c0de45fe:	2400      	movs	r4, #0
c0de4600:	3201      	adds	r2, #1
c0de4602:	767b      	strb	r3, [r7, #25]
c0de4604:	2308      	movs	r3, #8
c0de4606:	76bc      	strb	r4, [r7, #26]
c0de4608:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de460c:	79c0      	ldrb	r0, [r0, #7]
c0de460e:	75bb      	strb	r3, [r7, #22]
c0de4610:	fb0a f300 	mul.w	r3, sl, r0
c0de4614:	fb0a b000 	mla	r0, sl, r0, fp
c0de4618:	e9dd a503 	ldrd	sl, r5, [sp, #12]
c0de461c:	71bb      	strb	r3, [r7, #6]
c0de461e:	0a1b      	lsrs	r3, r3, #8
c0de4620:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4624:	f100 0b02 	add.w	fp, r0, #2
c0de4628:	71fb      	strb	r3, [r7, #7]
c0de462a:	7b28      	ldrb	r0, [r5, #12]
c0de462c:	2102      	movs	r1, #2
c0de462e:	2800      	cmp	r0, #0
c0de4630:	bf08      	it	eq
c0de4632:	2105      	moveq	r1, #5
c0de4634:	f888 1016 	strb.w	r1, [r8, #22]
c0de4638:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de463c:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de4640:	2272      	movs	r2, #114	@ 0x72
c0de4642:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4646:	2000      	movs	r0, #0
c0de4648:	f888 2004 	strb.w	r2, [r8, #4]
c0de464c:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de4650:	3101      	adds	r1, #1
c0de4652:	f888 b006 	strb.w	fp, [r8, #6]
c0de4656:	f888 0019 	strb.w	r0, [r8, #25]
c0de465a:	f888 001a 	strb.w	r0, [r8, #26]
c0de465e:	f888 0005 	strb.w	r0, [r8, #5]
c0de4662:	f888 001f 	strb.w	r0, [r8, #31]
c0de4666:	f888 2007 	strb.w	r2, [r8, #7]
c0de466a:	f88a 1002 	strb.w	r1, [sl, #2]
c0de466e:	b006      	add	sp, #24
c0de4670:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4674 <nbgl_layoutAddSwitch>:
c0de4674:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4678:	2800      	cmp	r0, #0
c0de467a:	f000 8084 	beq.w	c0de4786 <nbgl_layoutAddSwitch+0x112>
c0de467e:	460d      	mov	r5, r1
c0de4680:	7841      	ldrb	r1, [r0, #1]
c0de4682:	4604      	mov	r4, r0
c0de4684:	f000 f92d 	bl	c0de48e2 <OUTLINED_FUNCTION_5>
c0de4688:	f04f 0803 	mov.w	r8, #3
c0de468c:	4606      	mov	r6, r0
c0de468e:	f880 801f 	strb.w	r8, [r0, #31]
c0de4692:	6828      	ldr	r0, [r5, #0]
c0de4694:	f003 f90e 	bl	c0de78b4 <pic>
c0de4698:	4601      	mov	r1, r0
c0de469a:	2072      	movs	r0, #114	@ 0x72
c0de469c:	2700      	movs	r7, #0
c0de469e:	2301      	movs	r3, #1
c0de46a0:	7130      	strb	r0, [r6, #4]
c0de46a2:	2008      	movs	r0, #8
c0de46a4:	0e0a      	lsrs	r2, r1, #24
c0de46a6:	7177      	strb	r7, [r6, #5]
c0de46a8:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de46ac:	2005      	movs	r0, #5
c0de46ae:	f886 0020 	strb.w	r0, [r6, #32]
c0de46b2:	4630      	mov	r0, r6
c0de46b4:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de46b8:	70c2      	strb	r2, [r0, #3]
c0de46ba:	0c0a      	lsrs	r2, r1, #16
c0de46bc:	7082      	strb	r2, [r0, #2]
c0de46be:	0a08      	lsrs	r0, r1, #8
c0de46c0:	2272      	movs	r2, #114	@ 0x72
c0de46c2:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de46c6:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de46ca:	f040 0001 	orr.w	r0, r0, #1
c0de46ce:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de46d2:	2008      	movs	r0, #8
c0de46d4:	f002 ff20 	bl	c0de7518 <nbgl_getTextNbLinesInWidth>
c0de46d8:	2801      	cmp	r0, #1
c0de46da:	d854      	bhi.n	c0de4786 <nbgl_layoutAddSwitch+0x112>
c0de46dc:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de46e0:	f002 ff10 	bl	c0de7504 <nbgl_getFontLineHeight>
c0de46e4:	6861      	ldr	r1, [r4, #4]
c0de46e6:	78a2      	ldrb	r2, [r4, #2]
c0de46e8:	76b7      	strb	r7, [r6, #26]
c0de46ea:	71f7      	strb	r7, [r6, #7]
c0de46ec:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de46f0:	71b0      	strb	r0, [r6, #6]
c0de46f2:	2002      	movs	r0, #2
c0de46f4:	f886 8019 	strb.w	r8, [r6, #25]
c0de46f8:	75b0      	strb	r0, [r6, #22]
c0de46fa:	1c50      	adds	r0, r2, #1
c0de46fc:	70a0      	strb	r0, [r4, #2]
c0de46fe:	6868      	ldr	r0, [r5, #4]
c0de4700:	2800      	cmp	r0, #0
c0de4702:	d04e      	beq.n	c0de47a2 <nbgl_layoutAddSwitch+0x12e>
c0de4704:	7861      	ldrb	r1, [r4, #1]
c0de4706:	f000 f8ec 	bl	c0de48e2 <OUTLINED_FUNCTION_5>
c0de470a:	4606      	mov	r6, r0
c0de470c:	2003      	movs	r0, #3
c0de470e:	77f0      	strb	r0, [r6, #31]
c0de4710:	6868      	ldr	r0, [r5, #4]
c0de4712:	f003 f8cf 	bl	c0de78b4 <pic>
c0de4716:	2172      	movs	r1, #114	@ 0x72
c0de4718:	4637      	mov	r7, r6
c0de471a:	f04f 0800 	mov.w	r8, #0
c0de471e:	f04f 0a05 	mov.w	sl, #5
c0de4722:	7131      	strb	r1, [r6, #4]
c0de4724:	210a      	movs	r1, #10
c0de4726:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de472a:	f886 8005 	strb.w	r8, [r6, #5]
c0de472e:	f886 a020 	strb.w	sl, [r6, #32]
c0de4732:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4736:	0e01      	lsrs	r1, r0, #24
c0de4738:	70f9      	strb	r1, [r7, #3]
c0de473a:	0c01      	lsrs	r1, r0, #16
c0de473c:	0a00      	lsrs	r0, r0, #8
c0de473e:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4742:	200a      	movs	r0, #10
c0de4744:	70b9      	strb	r1, [r7, #2]
c0de4746:	f002 fedd 	bl	c0de7504 <nbgl_getFontLineHeight>
c0de474a:	09c1      	lsrs	r1, r0, #7
c0de474c:	f896 2027 	ldrb.w	r2, [r6, #39]	@ 0x27
c0de4750:	78bb      	ldrb	r3, [r7, #2]
c0de4752:	0040      	lsls	r0, r0, #1
c0de4754:	71f1      	strb	r1, [r6, #7]
c0de4756:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de475a:	71b0      	strb	r0, [r6, #6]
c0de475c:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4760:	f041 0101 	orr.w	r1, r1, #1
c0de4764:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de4768:	7839      	ldrb	r1, [r7, #0]
c0de476a:	78ff      	ldrb	r7, [r7, #3]
c0de476c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4770:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de4774:	2301      	movs	r3, #1
c0de4776:	2701      	movs	r7, #1
c0de4778:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de477c:	2272      	movs	r2, #114	@ 0x72
c0de477e:	f002 fecb 	bl	c0de7518 <nbgl_getTextNbLinesInWidth>
c0de4782:	2802      	cmp	r0, #2
c0de4784:	d902      	bls.n	c0de478c <nbgl_layoutAddSwitch+0x118>
c0de4786:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de478a:	e05c      	b.n	c0de4846 <nbgl_layoutAddSwitch+0x1d2>
c0de478c:	6860      	ldr	r0, [r4, #4]
c0de478e:	78a1      	ldrb	r1, [r4, #2]
c0de4790:	f886 801a 	strb.w	r8, [r6, #26]
c0de4794:	f886 a016 	strb.w	sl, [r6, #22]
c0de4798:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de479c:	1c48      	adds	r0, r1, #1
c0de479e:	7677      	strb	r7, [r6, #25]
c0de47a0:	70a0      	strb	r0, [r4, #2]
c0de47a2:	7861      	ldrb	r1, [r4, #1]
c0de47a4:	2005      	movs	r0, #5
c0de47a6:	f002 fe9e 	bl	c0de74e6 <nbgl_objPoolGet>
c0de47aa:	2600      	movs	r6, #0
c0de47ac:	4607      	mov	r7, r0
c0de47ae:	f04f 0a03 	mov.w	sl, #3
c0de47b2:	f04f 0808 	mov.w	r8, #8
c0de47b6:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de47ba:	2001      	movs	r0, #1
c0de47bc:	f887 a020 	strb.w	sl, [r7, #32]
c0de47c0:	f887 a01f 	strb.w	sl, [r7, #31]
c0de47c4:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de47c8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de47cc:	7a28      	ldrb	r0, [r5, #8]
c0de47ce:	4a1f      	ldr	r2, [pc, #124]	@ (c0de484c <nbgl_layoutAddSwitch+0x1d8>)
c0de47d0:	491f      	ldr	r1, [pc, #124]	@ (c0de4850 <nbgl_layoutAddSwitch+0x1dc>)
c0de47d2:	2801      	cmp	r0, #1
c0de47d4:	447a      	add	r2, pc
c0de47d6:	4479      	add	r1, pc
c0de47d8:	bf08      	it	eq
c0de47da:	4611      	moveq	r1, r2
c0de47dc:	463a      	mov	r2, r7
c0de47de:	0e0b      	lsrs	r3, r1, #24
c0de47e0:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de47e4:	70d3      	strb	r3, [r2, #3]
c0de47e6:	0c0b      	lsrs	r3, r1, #16
c0de47e8:	7093      	strb	r3, [r2, #2]
c0de47ea:	0a0a      	lsrs	r2, r1, #8
c0de47ec:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de47f0:	2801      	cmp	r0, #1
c0de47f2:	4638      	mov	r0, r7
c0de47f4:	4a17      	ldr	r2, [pc, #92]	@ (c0de4854 <nbgl_layoutAddSwitch+0x1e0>)
c0de47f6:	4d18      	ldr	r5, [pc, #96]	@ (c0de4858 <nbgl_layoutAddSwitch+0x1e4>)
c0de47f8:	447a      	add	r2, pc
c0de47fa:	447d      	add	r5, pc
c0de47fc:	bf18      	it	ne
c0de47fe:	462a      	movne	r2, r5
c0de4800:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de4804:	0e13      	lsrs	r3, r2, #24
c0de4806:	70c3      	strb	r3, [r0, #3]
c0de4808:	0c13      	lsrs	r3, r2, #16
c0de480a:	7083      	strb	r3, [r0, #2]
c0de480c:	0a10      	lsrs	r0, r2, #8
c0de480e:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de4812:	2008      	movs	r0, #8
c0de4814:	f002 fe8a 	bl	c0de752c <nbgl_getTextWidth>
c0de4818:	6861      	ldr	r1, [r4, #4]
c0de481a:	78a2      	ldrb	r2, [r4, #2]
c0de481c:	786b      	ldrb	r3, [r5, #1]
c0de481e:	76be      	strb	r6, [r7, #26]
c0de4820:	71fe      	strb	r6, [r7, #7]
c0de4822:	f887 8016 	strb.w	r8, [r7, #22]
c0de4826:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de482a:	210c      	movs	r1, #12
c0de482c:	f887 a019 	strb.w	sl, [r7, #25]
c0de4830:	71b9      	strb	r1, [r7, #6]
c0de4832:	7829      	ldrb	r1, [r5, #0]
c0de4834:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4838:	4408      	add	r0, r1
c0de483a:	1c51      	adds	r1, r2, #1
c0de483c:	300a      	adds	r0, #10
c0de483e:	7138      	strb	r0, [r7, #4]
c0de4840:	0a00      	lsrs	r0, r0, #8
c0de4842:	70a1      	strb	r1, [r4, #2]
c0de4844:	7178      	strb	r0, [r7, #5]
c0de4846:	4630      	mov	r0, r6
c0de4848:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de484c:	00003ad5 	.word	0x00003ad5
c0de4850:	00003ba2 	.word	0x00003ba2
c0de4854:	0000386d 	.word	0x0000386d
c0de4858:	00003855 	.word	0x00003855

c0de485c <nbgl_layoutDraw>:
c0de485c:	b120      	cbz	r0, c0de4868 <nbgl_layoutDraw+0xc>
c0de485e:	b580      	push	{r7, lr}
c0de4860:	f002 fe32 	bl	c0de74c8 <nbgl_screenRedraw>
c0de4864:	2000      	movs	r0, #0
c0de4866:	bd80      	pop	{r7, pc}
c0de4868:	f000 b84a 	b.w	c0de4900 <OUTLINED_FUNCTION_8>

c0de486c <nbgl_layoutRelease>:
c0de486c:	b148      	cbz	r0, c0de4882 <nbgl_layoutRelease+0x16>
c0de486e:	b510      	push	{r4, lr}
c0de4870:	4604      	mov	r4, r0
c0de4872:	7800      	ldrb	r0, [r0, #0]
c0de4874:	b110      	cbz	r0, c0de487c <nbgl_layoutRelease+0x10>
c0de4876:	7860      	ldrb	r0, [r4, #1]
c0de4878:	f002 fe2b 	bl	c0de74d2 <nbgl_screenPop>
c0de487c:	2000      	movs	r0, #0
c0de487e:	70a0      	strb	r0, [r4, #2]
c0de4880:	bd10      	pop	{r4, pc}
c0de4882:	f000 b83d 	b.w	c0de4900 <OUTLINED_FUNCTION_8>

c0de4886 <OUTLINED_FUNCTION_0>:
c0de4886:	4638      	mov	r0, r7
c0de4888:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de488c:	70c2      	strb	r2, [r0, #3]
c0de488e:	0c0a      	lsrs	r2, r1, #16
c0de4890:	7082      	strb	r2, [r0, #2]
c0de4892:	0a08      	lsrs	r0, r1, #8
c0de4894:	2272      	movs	r2, #114	@ 0x72
c0de4896:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de489a:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de489e:	f040 0001 	orr.w	r0, r0, #1
c0de48a2:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de48a6:	200a      	movs	r0, #10
c0de48a8:	f002 be36 	b.w	c0de7518 <nbgl_getTextNbLinesInWidth>

c0de48ac <OUTLINED_FUNCTION_2>:
c0de48ac:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de48b0:	784b      	ldrb	r3, [r1, #1]
c0de48b2:	788d      	ldrb	r5, [r1, #2]
c0de48b4:	78c9      	ldrb	r1, [r1, #3]
c0de48b6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de48ba:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de48be:	9d05      	ldr	r5, [sp, #20]
c0de48c0:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de48c4:	4770      	bx	lr

c0de48c6 <OUTLINED_FUNCTION_3>:
c0de48c6:	70c2      	strb	r2, [r0, #3]
c0de48c8:	0c0a      	lsrs	r2, r1, #16
c0de48ca:	7082      	strb	r2, [r0, #2]
c0de48cc:	0a08      	lsrs	r0, r1, #8
c0de48ce:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de48d2:	2008      	movs	r0, #8
c0de48d4:	f002 be2a 	b.w	c0de752c <nbgl_getTextWidth>

c0de48d8 <OUTLINED_FUNCTION_4>:
c0de48d8:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de48dc:	2272      	movs	r2, #114	@ 0x72
c0de48de:	f002 be2a 	b.w	c0de7536 <nbgl_getTextMaxLenInNbLines>

c0de48e2 <OUTLINED_FUNCTION_5>:
c0de48e2:	2004      	movs	r0, #4
c0de48e4:	f002 bdff 	b.w	c0de74e6 <nbgl_objPoolGet>

c0de48e8 <OUTLINED_FUNCTION_6>:
c0de48e8:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de48ec:	f002 be05 	b.w	c0de74fa <nbgl_getFont>

c0de48f0 <OUTLINED_FUNCTION_7>:
c0de48f0:	2100      	movs	r1, #0
c0de48f2:	463a      	mov	r2, r7
c0de48f4:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de48f8:	70d1      	strb	r1, [r2, #3]
c0de48fa:	7091      	strb	r1, [r2, #2]
c0de48fc:	7051      	strb	r1, [r2, #1]
c0de48fe:	4770      	bx	lr

c0de4900 <OUTLINED_FUNCTION_8>:
c0de4900:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4904:	4770      	bx	lr

c0de4906 <OUTLINED_FUNCTION_9>:
c0de4906:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de490a:	2003      	movs	r0, #3
c0de490c:	f887 0020 	strb.w	r0, [r7, #32]
c0de4910:	77f8      	strb	r0, [r7, #31]
c0de4912:	4770      	bx	lr

c0de4914 <nbgl_stepDrawText>:
c0de4914:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4918:	460e      	mov	r6, r1
c0de491a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de491c:	4605      	mov	r5, r0
c0de491e:	2000      	movs	r0, #0
c0de4920:	469a      	mov	sl, r3
c0de4922:	4617      	mov	r7, r2
c0de4924:	f000 f830 	bl	c0de4988 <getFreeContext>
c0de4928:	b348      	cbz	r0, c0de497e <nbgl_stepDrawText+0x6a>
c0de492a:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de492e:	4604      	mov	r4, r0
c0de4930:	6146      	str	r6, [r0, #20]
c0de4932:	b10f      	cbz	r7, c0de4938 <nbgl_stepDrawText+0x24>
c0de4934:	f000 fae1 	bl	c0de4efa <OUTLINED_FUNCTION_1>
c0de4938:	200a      	movs	r0, #10
c0de493a:	f1b8 0f00 	cmp.w	r8, #0
c0de493e:	bf19      	ittee	ne
c0de4940:	4641      	movne	r1, r8
c0de4942:	2203      	movne	r2, #3
c0de4944:	4651      	moveq	r1, sl
c0de4946:	2204      	moveq	r2, #4
c0de4948:	2372      	movs	r3, #114	@ 0x72
c0de494a:	f002 fdea 	bl	c0de7522 <nbgl_getTextNbPagesInWidth>
c0de494e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4950:	7020      	strb	r0, [r4, #0]
c0de4952:	072a      	lsls	r2, r5, #28
c0de4954:	bf46      	itte	mi
c0de4956:	3801      	submi	r0, #1
c0de4958:	7060      	strbmi	r0, [r4, #1]
c0de495a:	7860      	ldrbpl	r0, [r4, #1]
c0de495c:	f8c4 800c 	str.w	r8, [r4, #12]
c0de4960:	f8c4 a004 	str.w	sl, [r4, #4]
c0de4964:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de4968:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de496c:	7461      	strb	r1, [r4, #17]
c0de496e:	f005 0103 	and.w	r1, r5, #3
c0de4972:	7421      	strb	r1, [r4, #16]
c0de4974:	b2c1      	uxtb	r1, r0
c0de4976:	4620      	mov	r0, r4
c0de4978:	f000 f82c 	bl	c0de49d4 <displayTextPage>
c0de497c:	e000      	b.n	c0de4980 <nbgl_stepDrawText+0x6c>
c0de497e:	2400      	movs	r4, #0
c0de4980:	4620      	mov	r0, r4
c0de4982:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de4988 <getFreeContext>:
c0de4988:	b570      	push	{r4, r5, r6, lr}
c0de498a:	4604      	mov	r4, r0
c0de498c:	4810      	ldr	r0, [pc, #64]	@ (c0de49d0 <getFreeContext+0x48>)
c0de498e:	460d      	mov	r5, r1
c0de4990:	b151      	cbz	r1, c0de49a8 <getFreeContext+0x20>
c0de4992:	2100      	movs	r1, #0
c0de4994:	2990      	cmp	r1, #144	@ 0x90
c0de4996:	d00a      	beq.n	c0de49ae <getFreeContext+0x26>
c0de4998:	eb09 0200 	add.w	r2, r9, r0
c0de499c:	440a      	add	r2, r1
c0de499e:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de49a2:	b132      	cbz	r2, c0de49b2 <getFreeContext+0x2a>
c0de49a4:	3148      	adds	r1, #72	@ 0x48
c0de49a6:	e7f5      	b.n	c0de4994 <getFreeContext+0xc>
c0de49a8:	eb09 0600 	add.w	r6, r9, r0
c0de49ac:	e005      	b.n	c0de49ba <getFreeContext+0x32>
c0de49ae:	2600      	movs	r6, #0
c0de49b0:	e00b      	b.n	c0de49ca <getFreeContext+0x42>
c0de49b2:	4448      	add	r0, r9
c0de49b4:	4408      	add	r0, r1
c0de49b6:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de49ba:	4630      	mov	r0, r6
c0de49bc:	2148      	movs	r1, #72	@ 0x48
c0de49be:	f003 fa85 	bl	c0de7ecc <__aeabi_memclr>
c0de49c2:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de49c6:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de49ca:	4630      	mov	r0, r6
c0de49cc:	bd70      	pop	{r4, r5, r6, pc}
c0de49ce:	bf00      	nop
c0de49d0:	000008f8 	.word	0x000008f8

c0de49d4 <displayTextPage>:
c0de49d4:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de49d8:	b091      	sub	sp, #68	@ 0x44
c0de49da:	4604      	mov	r4, r0
c0de49dc:	7840      	ldrb	r0, [r0, #1]
c0de49de:	460e      	mov	r6, r1
c0de49e0:	4288      	cmp	r0, r1
c0de49e2:	d21c      	bcs.n	c0de4a1e <displayTextPage+0x4a>
c0de49e4:	68a5      	ldr	r5, [r4, #8]
c0de49e6:	7820      	ldrb	r0, [r4, #0]
c0de49e8:	7066      	strb	r6, [r4, #1]
c0de49ea:	3801      	subs	r0, #1
c0de49ec:	42b0      	cmp	r0, r6
c0de49ee:	dd31      	ble.n	c0de4a54 <displayTextPage+0x80>
c0de49f0:	68e0      	ldr	r0, [r4, #12]
c0de49f2:	2101      	movs	r1, #1
c0de49f4:	2303      	movs	r3, #3
c0de49f6:	aa08      	add	r2, sp, #32
c0de49f8:	e9cd 2100 	strd	r2, r1, [sp]
c0de49fc:	4629      	mov	r1, r5
c0de49fe:	2800      	cmp	r0, #0
c0de4a00:	bf08      	it	eq
c0de4a02:	2304      	moveq	r3, #4
c0de4a04:	200a      	movs	r0, #10
c0de4a06:	2272      	movs	r2, #114	@ 0x72
c0de4a08:	f002 fd95 	bl	c0de7536 <nbgl_getTextMaxLenInNbLines>
c0de4a0c:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de4a10:	1868      	adds	r0, r5, r1
c0de4a12:	60a0      	str	r0, [r4, #8]
c0de4a14:	5c69      	ldrb	r1, [r5, r1]
c0de4a16:	290a      	cmp	r1, #10
c0de4a18:	d11e      	bne.n	c0de4a58 <displayTextPage+0x84>
c0de4a1a:	3001      	adds	r0, #1
c0de4a1c:	e01b      	b.n	c0de4a56 <displayTextPage+0x82>
c0de4a1e:	68e5      	ldr	r5, [r4, #12]
c0de4a20:	2d00      	cmp	r5, #0
c0de4a22:	d074      	beq.n	c0de4b0e <displayTextPage+0x13a>
c0de4a24:	2700      	movs	r7, #0
c0de4a26:	f04f 0801 	mov.w	r8, #1
c0de4a2a:	f10d 0a20 	add.w	sl, sp, #32
c0de4a2e:	42be      	cmp	r6, r7
c0de4a30:	d0d9      	beq.n	c0de49e6 <displayTextPage+0x12>
c0de4a32:	7820      	ldrb	r0, [r4, #0]
c0de4a34:	3801      	subs	r0, #1
c0de4a36:	42b8      	cmp	r0, r7
c0de4a38:	dd0a      	ble.n	c0de4a50 <displayTextPage+0x7c>
c0de4a3a:	200a      	movs	r0, #10
c0de4a3c:	4629      	mov	r1, r5
c0de4a3e:	2272      	movs	r2, #114	@ 0x72
c0de4a40:	2303      	movs	r3, #3
c0de4a42:	e9cd a800 	strd	sl, r8, [sp]
c0de4a46:	f002 fd76 	bl	c0de7536 <nbgl_getTextMaxLenInNbLines>
c0de4a4a:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4a4e:	4405      	add	r5, r0
c0de4a50:	3701      	adds	r7, #1
c0de4a52:	e7ec      	b.n	c0de4a2e <displayTextPage+0x5a>
c0de4a54:	2000      	movs	r0, #0
c0de4a56:	60a0      	str	r0, [r4, #8]
c0de4a58:	484f      	ldr	r0, [pc, #316]	@ (c0de4b98 <displayTextPage+0x1c4>)
c0de4a5a:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4a5e:	4478      	add	r0, pc
c0de4a60:	9004      	str	r0, [sp, #16]
c0de4a62:	2000      	movs	r0, #0
c0de4a64:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4a68:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4a6c:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4a70:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4a72:	ab05      	add	r3, sp, #20
c0de4a74:	c307      	stmia	r3!, {r0, r1, r2}
c0de4a76:	a803      	add	r0, sp, #12
c0de4a78:	f7ff f986 	bl	c0de3d88 <nbgl_layoutGet>
c0de4a7c:	7827      	ldrb	r7, [r4, #0]
c0de4a7e:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de4a82:	4606      	mov	r6, r0
c0de4a84:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4a86:	7c20      	ldrb	r0, [r4, #16]
c0de4a88:	4639      	mov	r1, r7
c0de4a8a:	4652      	mov	r2, sl
c0de4a8c:	f000 f8fc 	bl	c0de4c88 <getNavigationInfo>
c0de4a90:	4680      	mov	r8, r0
c0de4a92:	f88d 000b 	strb.w	r0, [sp, #11]
c0de4a96:	68e0      	ldr	r0, [r4, #12]
c0de4a98:	b188      	cbz	r0, c0de4abe <displayTextPage+0xea>
c0de4a9a:	2f01      	cmp	r7, #1
c0de4a9c:	d115      	bne.n	c0de4aca <displayTextPage+0xf6>
c0de4a9e:	6861      	ldr	r1, [r4, #4]
c0de4aa0:	2008      	movs	r0, #8
c0de4aa2:	2272      	movs	r2, #114	@ 0x72
c0de4aa4:	2300      	movs	r3, #0
c0de4aa6:	2600      	movs	r6, #0
c0de4aa8:	f002 fd36 	bl	c0de7518 <nbgl_getTextNbLinesInWidth>
c0de4aac:	2802      	cmp	r0, #2
c0de4aae:	d348      	bcc.n	c0de4b42 <displayTextPage+0x16e>
c0de4ab0:	6861      	ldr	r1, [r4, #4]
c0de4ab2:	2018      	movs	r0, #24
c0de4ab4:	f104 0218 	add.w	r2, r4, #24
c0de4ab8:	e9cd 2000 	strd	r2, r0, [sp]
c0de4abc:	e021      	b.n	c0de4b02 <displayTextPage+0x12e>
c0de4abe:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4ac2:	4630      	mov	r0, r6
c0de4ac4:	4629      	mov	r1, r5
c0de4ac6:	2200      	movs	r2, #0
c0de4ac8:	e055      	b.n	c0de4b76 <displayTextPage+0x1a2>
c0de4aca:	f10a 0001 	add.w	r0, sl, #1
c0de4ace:	6863      	ldr	r3, [r4, #4]
c0de4ad0:	2124      	movs	r1, #36	@ 0x24
c0de4ad2:	e9cd 0700 	strd	r0, r7, [sp]
c0de4ad6:	af08      	add	r7, sp, #32
c0de4ad8:	4a30      	ldr	r2, [pc, #192]	@ (c0de4b9c <displayTextPage+0x1c8>)
c0de4ada:	4638      	mov	r0, r7
c0de4adc:	447a      	add	r2, pc
c0de4ade:	f002 fd57 	bl	c0de7590 <snprintf>
c0de4ae2:	2008      	movs	r0, #8
c0de4ae4:	4639      	mov	r1, r7
c0de4ae6:	2272      	movs	r2, #114	@ 0x72
c0de4ae8:	2300      	movs	r3, #0
c0de4aea:	f04f 0a00 	mov.w	sl, #0
c0de4aee:	f002 fd13 	bl	c0de7518 <nbgl_getTextNbLinesInWidth>
c0de4af2:	f104 0c18 	add.w	ip, r4, #24
c0de4af6:	2802      	cmp	r0, #2
c0de4af8:	d32c      	bcc.n	c0de4b54 <displayTextPage+0x180>
c0de4afa:	2018      	movs	r0, #24
c0de4afc:	e9cd c000 	strd	ip, r0, [sp]
c0de4b00:	a908      	add	r1, sp, #32
c0de4b02:	2008      	movs	r0, #8
c0de4b04:	2272      	movs	r2, #114	@ 0x72
c0de4b06:	2301      	movs	r3, #1
c0de4b08:	f002 fd1a 	bl	c0de7540 <nbgl_textReduceOnNbLines>
c0de4b0c:	e02d      	b.n	c0de4b6a <displayTextPage+0x196>
c0de4b0e:	6865      	ldr	r5, [r4, #4]
c0de4b10:	2700      	movs	r7, #0
c0de4b12:	f04f 0801 	mov.w	r8, #1
c0de4b16:	f10d 0a20 	add.w	sl, sp, #32
c0de4b1a:	42be      	cmp	r6, r7
c0de4b1c:	f43f af63 	beq.w	c0de49e6 <displayTextPage+0x12>
c0de4b20:	7820      	ldrb	r0, [r4, #0]
c0de4b22:	3801      	subs	r0, #1
c0de4b24:	42b8      	cmp	r0, r7
c0de4b26:	dd0a      	ble.n	c0de4b3e <displayTextPage+0x16a>
c0de4b28:	200a      	movs	r0, #10
c0de4b2a:	4629      	mov	r1, r5
c0de4b2c:	2272      	movs	r2, #114	@ 0x72
c0de4b2e:	2304      	movs	r3, #4
c0de4b30:	e9cd a800 	strd	sl, r8, [sp]
c0de4b34:	f002 fcff 	bl	c0de7536 <nbgl_getTextMaxLenInNbLines>
c0de4b38:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4b3c:	4405      	add	r5, r0
c0de4b3e:	3701      	adds	r7, #1
c0de4b40:	e7eb      	b.n	c0de4b1a <displayTextPage+0x146>
c0de4b42:	6861      	ldr	r1, [r4, #4]
c0de4b44:	f104 0018 	add.w	r0, r4, #24
c0de4b48:	2217      	movs	r2, #23
c0de4b4a:	f003 f9b5 	bl	c0de7eb8 <__aeabi_memcpy>
c0de4b4e:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de4b52:	e00a      	b.n	c0de4b6a <displayTextPage+0x196>
c0de4b54:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de4b56:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de4b5a:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4b5e:	8838      	ldrh	r0, [r7, #0]
c0de4b60:	f8ac 0000 	strh.w	r0, [ip]
c0de4b64:	78b8      	ldrb	r0, [r7, #2]
c0de4b66:	f88c 0002 	strb.w	r0, [ip, #2]
c0de4b6a:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4b6e:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4b70:	f104 0118 	add.w	r1, r4, #24
c0de4b74:	462a      	mov	r2, r5
c0de4b76:	f7ff f9c9 	bl	c0de3f0c <nbgl_layoutAddText>
c0de4b7a:	f1b8 0f00 	cmp.w	r8, #0
c0de4b7e:	d004      	beq.n	c0de4b8a <displayTextPage+0x1b6>
c0de4b80:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4b82:	f10d 010a 	add.w	r1, sp, #10
c0de4b86:	f7ff f963 	bl	c0de3e50 <nbgl_layoutAddNavigation>
c0de4b8a:	f000 f9e9 	bl	c0de4f60 <OUTLINED_FUNCTION_4>
c0de4b8e:	f002 fc82 	bl	c0de7496 <nbgl_refresh>
c0de4b92:	b011      	add	sp, #68	@ 0x44
c0de4b94:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4b98:	000001bb 	.word	0x000001bb
c0de4b9c:	000036c6 	.word	0x000036c6

c0de4ba0 <nbgl_stepDrawCenteredInfo>:
c0de4ba0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4ba4:	b087      	sub	sp, #28
c0de4ba6:	460d      	mov	r5, r1
c0de4ba8:	4682      	mov	sl, r0
c0de4baa:	a802      	add	r0, sp, #8
c0de4bac:	f000 f9d3 	bl	c0de4f56 <OUTLINED_FUNCTION_3>
c0de4bb0:	4819      	ldr	r0, [pc, #100]	@ (c0de4c18 <nbgl_stepDrawCenteredInfo+0x78>)
c0de4bb2:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4bb4:	4478      	add	r0, pc
c0de4bb6:	f000 f9c5 	bl	c0de4f44 <OUTLINED_FUNCTION_2>
c0de4bba:	b168      	cbz	r0, c0de4bd8 <nbgl_stepDrawCenteredInfo+0x38>
c0de4bbc:	4604      	mov	r4, r0
c0de4bbe:	6145      	str	r5, [r0, #20]
c0de4bc0:	b10f      	cbz	r7, c0de4bc6 <nbgl_stepDrawCenteredInfo+0x26>
c0de4bc2:	f000 f953 	bl	c0de4e6c <OUTLINED_FUNCTION_0>
c0de4bc6:	f000 f9ce 	bl	c0de4f66 <OUTLINED_FUNCTION_5>
c0de4bca:	d007      	beq.n	c0de4bdc <nbgl_stepDrawCenteredInfo+0x3c>
c0de4bcc:	2802      	cmp	r0, #2
c0de4bce:	d007      	beq.n	c0de4be0 <nbgl_stepDrawCenteredInfo+0x40>
c0de4bd0:	2801      	cmp	r0, #1
c0de4bd2:	d108      	bne.n	c0de4be6 <nbgl_stepDrawCenteredInfo+0x46>
c0de4bd4:	2002      	movs	r0, #2
c0de4bd6:	e004      	b.n	c0de4be2 <nbgl_stepDrawCenteredInfo+0x42>
c0de4bd8:	2400      	movs	r4, #0
c0de4bda:	e018      	b.n	c0de4c0e <nbgl_stepDrawCenteredInfo+0x6e>
c0de4bdc:	2003      	movs	r0, #3
c0de4bde:	e000      	b.n	c0de4be2 <nbgl_stepDrawCenteredInfo+0x42>
c0de4be0:	2001      	movs	r0, #1
c0de4be2:	2500      	movs	r5, #0
c0de4be4:	e000      	b.n	c0de4be8 <nbgl_stepDrawCenteredInfo+0x48>
c0de4be6:	2000      	movs	r0, #0
c0de4be8:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4bec:	a802      	add	r0, sp, #8
c0de4bee:	f7ff f8cb 	bl	c0de3d88 <nbgl_layoutGet>
c0de4bf2:	4641      	mov	r1, r8
c0de4bf4:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4bf6:	f7ff fb9d 	bl	c0de4334 <nbgl_layoutAddCenteredInfo>
c0de4bfa:	b925      	cbnz	r5, c0de4c06 <nbgl_stepDrawCenteredInfo+0x66>
c0de4bfc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4bfe:	f10d 0106 	add.w	r1, sp, #6
c0de4c02:	f7ff f925 	bl	c0de3e50 <nbgl_layoutAddNavigation>
c0de4c06:	f000 f9ab 	bl	c0de4f60 <OUTLINED_FUNCTION_4>
c0de4c0a:	f002 fc44 	bl	c0de7496 <nbgl_refresh>
c0de4c0e:	4620      	mov	r0, r4
c0de4c10:	b007      	add	sp, #28
c0de4c12:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4c16:	bf00      	nop
c0de4c18:	00000065 	.word	0x00000065

c0de4c1c <actionCallback>:
c0de4c1c:	b510      	push	{r4, lr}
c0de4c1e:	460c      	mov	r4, r1
c0de4c20:	f000 f8f0 	bl	c0de4e04 <getContextFromLayout>
c0de4c24:	b378      	cbz	r0, c0de4c86 <actionCallback+0x6a>
c0de4c26:	2c04      	cmp	r4, #4
c0de4c28:	d006      	beq.n	c0de4c38 <actionCallback+0x1c>
c0de4c2a:	2c01      	cmp	r4, #1
c0de4c2c:	d008      	beq.n	c0de4c40 <actionCallback+0x24>
c0de4c2e:	bb54      	cbnz	r4, c0de4c86 <actionCallback+0x6a>
c0de4c30:	7841      	ldrb	r1, [r0, #1]
c0de4c32:	b1d9      	cbz	r1, c0de4c6c <actionCallback+0x50>
c0de4c34:	3901      	subs	r1, #1
c0de4c36:	e009      	b.n	c0de4c4c <actionCallback+0x30>
c0de4c38:	6942      	ldr	r2, [r0, #20]
c0de4c3a:	b322      	cbz	r2, c0de4c86 <actionCallback+0x6a>
c0de4c3c:	2104      	movs	r1, #4
c0de4c3e:	e01f      	b.n	c0de4c80 <actionCallback+0x64>
c0de4c40:	7802      	ldrb	r2, [r0, #0]
c0de4c42:	7841      	ldrb	r1, [r0, #1]
c0de4c44:	3a01      	subs	r2, #1
c0de4c46:	428a      	cmp	r2, r1
c0de4c48:	dd05      	ble.n	c0de4c56 <actionCallback+0x3a>
c0de4c4a:	3101      	adds	r1, #1
c0de4c4c:	b2c9      	uxtb	r1, r1
c0de4c4e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4c52:	f7ff bebf 	b.w	c0de49d4 <displayTextPage>
c0de4c56:	7c01      	ldrb	r1, [r0, #16]
c0de4c58:	f041 0102 	orr.w	r1, r1, #2
c0de4c5c:	2903      	cmp	r1, #3
c0de4c5e:	d001      	beq.n	c0de4c64 <actionCallback+0x48>
c0de4c60:	7c41      	ldrb	r1, [r0, #17]
c0de4c62:	b181      	cbz	r1, c0de4c86 <actionCallback+0x6a>
c0de4c64:	6942      	ldr	r2, [r0, #20]
c0de4c66:	b172      	cbz	r2, c0de4c86 <actionCallback+0x6a>
c0de4c68:	2101      	movs	r1, #1
c0de4c6a:	e009      	b.n	c0de4c80 <actionCallback+0x64>
c0de4c6c:	7c01      	ldrb	r1, [r0, #16]
c0de4c6e:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de4c72:	2902      	cmp	r1, #2
c0de4c74:	d001      	beq.n	c0de4c7a <actionCallback+0x5e>
c0de4c76:	7c41      	ldrb	r1, [r0, #17]
c0de4c78:	b129      	cbz	r1, c0de4c86 <actionCallback+0x6a>
c0de4c7a:	6942      	ldr	r2, [r0, #20]
c0de4c7c:	b11a      	cbz	r2, c0de4c86 <actionCallback+0x6a>
c0de4c7e:	2100      	movs	r1, #0
c0de4c80:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4c84:	4710      	bx	r2
c0de4c86:	bd10      	pop	{r4, pc}

c0de4c88 <getNavigationInfo>:
c0de4c88:	4603      	mov	r3, r0
c0de4c8a:	2902      	cmp	r1, #2
c0de4c8c:	d308      	bcc.n	c0de4ca0 <getNavigationInfo+0x18>
c0de4c8e:	3901      	subs	r1, #1
c0de4c90:	4610      	mov	r0, r2
c0de4c92:	2a00      	cmp	r2, #0
c0de4c94:	bf18      	it	ne
c0de4c96:	2001      	movne	r0, #1
c0de4c98:	4291      	cmp	r1, r2
c0de4c9a:	bf88      	it	hi
c0de4c9c:	3002      	addhi	r0, #2
c0de4c9e:	e000      	b.n	c0de4ca2 <getNavigationInfo+0x1a>
c0de4ca0:	2000      	movs	r0, #0
c0de4ca2:	2b03      	cmp	r3, #3
c0de4ca4:	d00a      	beq.n	c0de4cbc <getNavigationInfo+0x34>
c0de4ca6:	2b02      	cmp	r3, #2
c0de4ca8:	bf04      	itt	eq
c0de4caa:	f040 0001 	orreq.w	r0, r0, #1
c0de4cae:	4770      	bxeq	lr
c0de4cb0:	2b01      	cmp	r3, #1
c0de4cb2:	bf04      	itt	eq
c0de4cb4:	f040 0002 	orreq.w	r0, r0, #2
c0de4cb8:	4770      	bxeq	lr
c0de4cba:	4770      	bx	lr
c0de4cbc:	2003      	movs	r0, #3
c0de4cbe:	4770      	bx	lr

c0de4cc0 <nbgl_stepDrawMenuList>:
c0de4cc0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4cc2:	460f      	mov	r7, r1
c0de4cc4:	4606      	mov	r6, r0
c0de4cc6:	2002      	movs	r0, #2
c0de4cc8:	4619      	mov	r1, r3
c0de4cca:	4615      	mov	r5, r2
c0de4ccc:	f7ff fe5c 	bl	c0de4988 <getFreeContext>
c0de4cd0:	b170      	cbz	r0, c0de4cf0 <nbgl_stepDrawMenuList+0x30>
c0de4cd2:	4604      	mov	r4, r0
c0de4cd4:	b10f      	cbz	r7, c0de4cda <nbgl_stepDrawMenuList+0x1a>
c0de4cd6:	f000 f910 	bl	c0de4efa <OUTLINED_FUNCTION_1>
c0de4cda:	7928      	ldrb	r0, [r5, #4]
c0de4cdc:	7220      	strb	r0, [r4, #8]
c0de4cde:	7968      	ldrb	r0, [r5, #5]
c0de4ce0:	7260      	strb	r0, [r4, #9]
c0de4ce2:	6828      	ldr	r0, [r5, #0]
c0de4ce4:	e9c4 6000 	strd	r6, r0, [r4]
c0de4ce8:	4620      	mov	r0, r4
c0de4cea:	f000 f805 	bl	c0de4cf8 <displayMenuList>
c0de4cee:	e000      	b.n	c0de4cf2 <nbgl_stepDrawMenuList+0x32>
c0de4cf0:	2400      	movs	r4, #0
c0de4cf2:	4620      	mov	r0, r4
c0de4cf4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de4cf8 <displayMenuList>:
c0de4cf8:	b5b0      	push	{r4, r5, r7, lr}
c0de4cfa:	b086      	sub	sp, #24
c0de4cfc:	4604      	mov	r4, r0
c0de4cfe:	2000      	movs	r0, #0
c0de4d00:	9001      	str	r0, [sp, #4]
c0de4d02:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4d06:	4819      	ldr	r0, [pc, #100]	@ (c0de4d6c <displayMenuList+0x74>)
c0de4d08:	4478      	add	r0, pc
c0de4d0a:	9002      	str	r0, [sp, #8]
c0de4d0c:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4d10:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4d14:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4d16:	ab03      	add	r3, sp, #12
c0de4d18:	c307      	stmia	r3!, {r0, r1, r2}
c0de4d1a:	a801      	add	r0, sp, #4
c0de4d1c:	f7ff f834 	bl	c0de3d88 <nbgl_layoutGet>
c0de4d20:	1d25      	adds	r5, r4, #4
c0de4d22:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4d24:	4629      	mov	r1, r5
c0de4d26:	f7ff fab1 	bl	c0de428c <nbgl_layoutAddMenuList>
c0de4d2a:	7a20      	ldrb	r0, [r4, #8]
c0de4d2c:	2802      	cmp	r0, #2
c0de4d2e:	d316      	bcc.n	c0de4d5e <displayMenuList+0x66>
c0de4d30:	2101      	movs	r1, #1
c0de4d32:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de4d36:	7969      	ldrb	r1, [r5, #5]
c0de4d38:	2900      	cmp	r1, #0
c0de4d3a:	460a      	mov	r2, r1
c0de4d3c:	bf18      	it	ne
c0de4d3e:	2201      	movne	r2, #1
c0de4d40:	3801      	subs	r0, #1
c0de4d42:	f88d 2003 	strb.w	r2, [sp, #3]
c0de4d46:	4288      	cmp	r0, r1
c0de4d48:	d903      	bls.n	c0de4d52 <displayMenuList+0x5a>
c0de4d4a:	1c90      	adds	r0, r2, #2
c0de4d4c:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4d50:	e000      	b.n	c0de4d54 <displayMenuList+0x5c>
c0de4d52:	b121      	cbz	r1, c0de4d5e <displayMenuList+0x66>
c0de4d54:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4d56:	f10d 0102 	add.w	r1, sp, #2
c0de4d5a:	f7ff f879 	bl	c0de3e50 <nbgl_layoutAddNavigation>
c0de4d5e:	f000 f8ff 	bl	c0de4f60 <OUTLINED_FUNCTION_4>
c0de4d62:	f002 fb98 	bl	c0de7496 <nbgl_refresh>
c0de4d66:	b006      	add	sp, #24
c0de4d68:	bdb0      	pop	{r4, r5, r7, pc}
c0de4d6a:	bf00      	nop
c0de4d6c:	00000121 	.word	0x00000121

c0de4d70 <nbgl_stepDrawSwitch>:
c0de4d70:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4d74:	b087      	sub	sp, #28
c0de4d76:	460d      	mov	r5, r1
c0de4d78:	4682      	mov	sl, r0
c0de4d7a:	a802      	add	r0, sp, #8
c0de4d7c:	f000 f8eb 	bl	c0de4f56 <OUTLINED_FUNCTION_3>
c0de4d80:	4819      	ldr	r0, [pc, #100]	@ (c0de4de8 <nbgl_stepDrawSwitch+0x78>)
c0de4d82:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4d84:	4478      	add	r0, pc
c0de4d86:	f000 f8dd 	bl	c0de4f44 <OUTLINED_FUNCTION_2>
c0de4d8a:	b168      	cbz	r0, c0de4da8 <nbgl_stepDrawSwitch+0x38>
c0de4d8c:	4604      	mov	r4, r0
c0de4d8e:	6145      	str	r5, [r0, #20]
c0de4d90:	b10f      	cbz	r7, c0de4d96 <nbgl_stepDrawSwitch+0x26>
c0de4d92:	f000 f86b 	bl	c0de4e6c <OUTLINED_FUNCTION_0>
c0de4d96:	f000 f8e6 	bl	c0de4f66 <OUTLINED_FUNCTION_5>
c0de4d9a:	d007      	beq.n	c0de4dac <nbgl_stepDrawSwitch+0x3c>
c0de4d9c:	2802      	cmp	r0, #2
c0de4d9e:	d007      	beq.n	c0de4db0 <nbgl_stepDrawSwitch+0x40>
c0de4da0:	2801      	cmp	r0, #1
c0de4da2:	d108      	bne.n	c0de4db6 <nbgl_stepDrawSwitch+0x46>
c0de4da4:	2002      	movs	r0, #2
c0de4da6:	e004      	b.n	c0de4db2 <nbgl_stepDrawSwitch+0x42>
c0de4da8:	2400      	movs	r4, #0
c0de4daa:	e018      	b.n	c0de4dde <nbgl_stepDrawSwitch+0x6e>
c0de4dac:	2003      	movs	r0, #3
c0de4dae:	e000      	b.n	c0de4db2 <nbgl_stepDrawSwitch+0x42>
c0de4db0:	2001      	movs	r0, #1
c0de4db2:	2500      	movs	r5, #0
c0de4db4:	e000      	b.n	c0de4db8 <nbgl_stepDrawSwitch+0x48>
c0de4db6:	2000      	movs	r0, #0
c0de4db8:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4dbc:	a802      	add	r0, sp, #8
c0de4dbe:	f7fe ffe3 	bl	c0de3d88 <nbgl_layoutGet>
c0de4dc2:	4641      	mov	r1, r8
c0de4dc4:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4dc6:	f7ff fc55 	bl	c0de4674 <nbgl_layoutAddSwitch>
c0de4dca:	b925      	cbnz	r5, c0de4dd6 <nbgl_stepDrawSwitch+0x66>
c0de4dcc:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4dce:	f10d 0106 	add.w	r1, sp, #6
c0de4dd2:	f7ff f83d 	bl	c0de3e50 <nbgl_layoutAddNavigation>
c0de4dd6:	f000 f8c3 	bl	c0de4f60 <OUTLINED_FUNCTION_4>
c0de4dda:	f002 fb5c 	bl	c0de7496 <nbgl_refresh>
c0de4dde:	4620      	mov	r0, r4
c0de4de0:	b007      	add	sp, #28
c0de4de2:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de4de6:	bf00      	nop
c0de4de8:	fffffe95 	.word	0xfffffe95

c0de4dec <nbgl_stepRelease>:
c0de4dec:	b138      	cbz	r0, c0de4dfe <nbgl_stepRelease+0x12>
c0de4dee:	b510      	push	{r4, lr}
c0de4df0:	4604      	mov	r4, r0
c0de4df2:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4df4:	f7ff fd3a 	bl	c0de486c <nbgl_layoutRelease>
c0de4df8:	2100      	movs	r1, #0
c0de4dfa:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4dfc:	bd10      	pop	{r4, pc}
c0de4dfe:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4e02:	4770      	bx	lr

c0de4e04 <getContextFromLayout>:
c0de4e04:	4a08      	ldr	r2, [pc, #32]	@ (c0de4e28 <getContextFromLayout+0x24>)
c0de4e06:	2100      	movs	r1, #0
c0de4e08:	29d8      	cmp	r1, #216	@ 0xd8
c0de4e0a:	bf04      	itt	eq
c0de4e0c:	2000      	moveq	r0, #0
c0de4e0e:	4770      	bxeq	lr
c0de4e10:	eb09 0302 	add.w	r3, r9, r2
c0de4e14:	440b      	add	r3, r1
c0de4e16:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de4e18:	4283      	cmp	r3, r0
c0de4e1a:	d001      	beq.n	c0de4e20 <getContextFromLayout+0x1c>
c0de4e1c:	3148      	adds	r1, #72	@ 0x48
c0de4e1e:	e7f3      	b.n	c0de4e08 <getContextFromLayout+0x4>
c0de4e20:	eb09 0002 	add.w	r0, r9, r2
c0de4e24:	4408      	add	r0, r1
c0de4e26:	4770      	bx	lr
c0de4e28:	000008f8 	.word	0x000008f8

c0de4e2c <menuListActionCallback>:
c0de4e2c:	b510      	push	{r4, lr}
c0de4e2e:	460c      	mov	r4, r1
c0de4e30:	f7ff ffe8 	bl	c0de4e04 <getContextFromLayout>
c0de4e34:	b1c8      	cbz	r0, c0de4e6a <menuListActionCallback+0x3e>
c0de4e36:	2c04      	cmp	r4, #4
c0de4e38:	d006      	beq.n	c0de4e48 <menuListActionCallback+0x1c>
c0de4e3a:	2c01      	cmp	r4, #1
c0de4e3c:	d00a      	beq.n	c0de4e54 <menuListActionCallback+0x28>
c0de4e3e:	b9a4      	cbnz	r4, c0de4e6a <menuListActionCallback+0x3e>
c0de4e40:	7a41      	ldrb	r1, [r0, #9]
c0de4e42:	b191      	cbz	r1, c0de4e6a <menuListActionCallback+0x3e>
c0de4e44:	3901      	subs	r1, #1
c0de4e46:	e00b      	b.n	c0de4e60 <menuListActionCallback+0x34>
c0de4e48:	7a41      	ldrb	r1, [r0, #9]
c0de4e4a:	6802      	ldr	r2, [r0, #0]
c0de4e4c:	4608      	mov	r0, r1
c0de4e4e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4e52:	4710      	bx	r2
c0de4e54:	7a02      	ldrb	r2, [r0, #8]
c0de4e56:	7a41      	ldrb	r1, [r0, #9]
c0de4e58:	3a01      	subs	r2, #1
c0de4e5a:	428a      	cmp	r2, r1
c0de4e5c:	dd05      	ble.n	c0de4e6a <menuListActionCallback+0x3e>
c0de4e5e:	3101      	adds	r1, #1
c0de4e60:	7241      	strb	r1, [r0, #9]
c0de4e62:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4e66:	f7ff bf47 	b.w	c0de4cf8 <displayMenuList>
c0de4e6a:	bd10      	pop	{r4, pc}

c0de4e6c <OUTLINED_FUNCTION_0>:
c0de4e6c:	7838      	ldrb	r0, [r7, #0]
c0de4e6e:	7879      	ldrb	r1, [r7, #1]
c0de4e70:	78ba      	ldrb	r2, [r7, #2]
c0de4e72:	78fb      	ldrb	r3, [r7, #3]
c0de4e74:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4e78:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4e7c:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4e80:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4e82:	4638      	mov	r0, r7
c0de4e84:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de4e88:	7a79      	ldrb	r1, [r7, #9]
c0de4e8a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4e8e:	7882      	ldrb	r2, [r0, #2]
c0de4e90:	78c3      	ldrb	r3, [r0, #3]
c0de4e92:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4e96:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4e9a:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de4e9c:	4639      	mov	r1, r7
c0de4e9e:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de4ea2:	797a      	ldrb	r2, [r7, #5]
c0de4ea4:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4ea8:	788b      	ldrb	r3, [r1, #2]
c0de4eaa:	78cd      	ldrb	r5, [r1, #3]
c0de4eac:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de4eb0:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de4eb4:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de4eb6:	783a      	ldrb	r2, [r7, #0]
c0de4eb8:	787b      	ldrb	r3, [r7, #1]
c0de4eba:	78bd      	ldrb	r5, [r7, #2]
c0de4ebc:	78fe      	ldrb	r6, [r7, #3]
c0de4ebe:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4ec2:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de4ec6:	7803      	ldrb	r3, [r0, #0]
c0de4ec8:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de4ecc:	7885      	ldrb	r5, [r0, #2]
c0de4ece:	78c0      	ldrb	r0, [r0, #3]
c0de4ed0:	9204      	str	r2, [sp, #16]
c0de4ed2:	7a7a      	ldrb	r2, [r7, #9]
c0de4ed4:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de4ed8:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4edc:	788b      	ldrb	r3, [r1, #2]
c0de4ede:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4ee2:	780a      	ldrb	r2, [r1, #0]
c0de4ee4:	78c9      	ldrb	r1, [r1, #3]
c0de4ee6:	9006      	str	r0, [sp, #24]
c0de4ee8:	7978      	ldrb	r0, [r7, #5]
c0de4eea:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4eee:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4ef2:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4ef6:	9005      	str	r0, [sp, #20]
c0de4ef8:	4770      	bx	lr

c0de4efa <OUTLINED_FUNCTION_1>:
c0de4efa:	7838      	ldrb	r0, [r7, #0]
c0de4efc:	7879      	ldrb	r1, [r7, #1]
c0de4efe:	78ba      	ldrb	r2, [r7, #2]
c0de4f00:	78fb      	ldrb	r3, [r7, #3]
c0de4f02:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4f06:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4f0a:	4639      	mov	r1, r7
c0de4f0c:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4f10:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4f14:	6360      	str	r0, [r4, #52]	@ 0x34
c0de4f16:	7a78      	ldrb	r0, [r7, #9]
c0de4f18:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4f1c:	788a      	ldrb	r2, [r1, #2]
c0de4f1e:	78c9      	ldrb	r1, [r1, #3]
c0de4f20:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4f24:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4f28:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de4f2a:	7978      	ldrb	r0, [r7, #5]
c0de4f2c:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4f30:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4f34:	78b9      	ldrb	r1, [r7, #2]
c0de4f36:	78fa      	ldrb	r2, [r7, #3]
c0de4f38:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4f3c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4f40:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4f42:	4770      	bx	lr

c0de4f44 <OUTLINED_FUNCTION_2>:
c0de4f44:	f88d 1008 	strb.w	r1, [sp, #8]
c0de4f48:	9003      	str	r0, [sp, #12]
c0de4f4a:	2000      	movs	r0, #0
c0de4f4c:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4f50:	2001      	movs	r0, #1
c0de4f52:	f7ff bd19 	b.w	c0de4988 <getFreeContext>

c0de4f56 <OUTLINED_FUNCTION_3>:
c0de4f56:	2114      	movs	r1, #20
c0de4f58:	4698      	mov	r8, r3
c0de4f5a:	4617      	mov	r7, r2
c0de4f5c:	f002 bfb6 	b.w	c0de7ecc <__aeabi_memclr>

c0de4f60 <OUTLINED_FUNCTION_4>:
c0de4f60:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4f62:	f7ff bc7b 	b.w	c0de485c <nbgl_layoutDraw>

c0de4f66 <OUTLINED_FUNCTION_5>:
c0de4f66:	2501      	movs	r5, #1
c0de4f68:	f00a 0003 	and.w	r0, sl, #3
c0de4f6c:	2803      	cmp	r0, #3
c0de4f6e:	7025      	strb	r5, [r4, #0]
c0de4f70:	7420      	strb	r0, [r4, #16]
c0de4f72:	4770      	bx	lr

c0de4f74 <nbgl_useCaseHomeAndSettings>:
c0de4f74:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4f78:	4607      	mov	r7, r0
c0de4f7a:	4810      	ldr	r0, [pc, #64]	@ (c0de4fbc <nbgl_useCaseHomeAndSettings+0x48>)
c0de4f7c:	f001 fd31 	bl	c0de69e2 <OUTLINED_FUNCTION_3>
c0de4f80:	e9c4 760f 	strd	r7, r6, [r4, #60]	@ 0x3c
c0de4f84:	6465      	str	r5, [r4, #68]	@ 0x44
c0de4f86:	9d06      	ldr	r5, [sp, #24]
c0de4f88:	4628      	mov	r0, r5
c0de4f8a:	f002 fc93 	bl	c0de78b4 <pic>
c0de4f8e:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de4f90:	9807      	ldr	r0, [sp, #28]
c0de4f92:	f002 fc8f 	bl	c0de78b4 <pic>
c0de4f96:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4f98:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de4f9c:	6561      	str	r1, [r4, #84]	@ 0x54
c0de4f9e:	9908      	ldr	r1, [sp, #32]
c0de4fa0:	e9c4 0113 	strd	r0, r1, [r4, #76]	@ 0x4c
c0de4fa4:	bf18      	it	ne
c0de4fa6:	2d00      	cmpne	r5, #0
c0de4fa8:	d103      	bne.n	c0de4fb2 <nbgl_useCaseHomeAndSettings+0x3e>
c0de4faa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4fae:	f000 b843 	b.w	c0de5038 <startUseCaseHome>
c0de4fb2:	4640      	mov	r0, r8
c0de4fb4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4fb8:	f000 b802 	b.w	c0de4fc0 <startUseCaseSettingsAtPage>
c0de4fbc:	000009d0 	.word	0x000009d0

c0de4fc0 <startUseCaseSettingsAtPage>:
c0de4fc0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4fc2:	b08f      	sub	sp, #60	@ 0x3c
c0de4fc4:	4604      	mov	r4, r0
c0de4fc6:	a801      	add	r0, sp, #4
c0de4fc8:	2138      	movs	r1, #56	@ 0x38
c0de4fca:	f002 ff7f 	bl	c0de7ecc <__aeabi_memclr>
c0de4fce:	4e19      	ldr	r6, [pc, #100]	@ (c0de5034 <startUseCaseSettingsAtPage+0x74>)
c0de4fd0:	eb09 0006 	add.w	r0, r9, r6
c0de4fd4:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de4fd8:	280f      	cmp	r0, #15
c0de4fda:	bf1e      	ittt	ne
c0de4fdc:	eb09 0006 	addne.w	r0, r9, r6
c0de4fe0:	210e      	movne	r1, #14
c0de4fe2:	f880 102c 	strbne.w	r1, [r0, #44]	@ 0x2c
c0de4fe6:	eb09 0006 	add.w	r0, r9, r6
c0de4fea:	2101      	movs	r1, #1
c0de4fec:	2700      	movs	r7, #0
c0de4fee:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de4ff2:	ad01      	add	r5, sp, #4
c0de4ff4:	eb09 0006 	add.w	r0, r9, r6
c0de4ff8:	6c80      	ldr	r0, [r0, #72]	@ 0x48
c0de4ffa:	7a01      	ldrb	r1, [r0, #8]
c0de4ffc:	428f      	cmp	r7, r1
c0de4ffe:	d20e      	bcs.n	c0de501e <startUseCaseSettingsAtPage+0x5e>
c0de5000:	b279      	sxtb	r1, r7
c0de5002:	462a      	mov	r2, r5
c0de5004:	f000 fd06 	bl	c0de5a14 <getContentAtIdx>
c0de5008:	f000 fd5e 	bl	c0de5ac8 <getContentNbElement>
c0de500c:	eb09 0106 	add.w	r1, r9, r6
c0de5010:	3701      	adds	r7, #1
c0de5012:	f891 2034 	ldrb.w	r2, [r1, #52]	@ 0x34
c0de5016:	4410      	add	r0, r2
c0de5018:	f881 0034 	strb.w	r0, [r1, #52]	@ 0x34
c0de501c:	e7ea      	b.n	c0de4ff4 <startUseCaseSettingsAtPage+0x34>
c0de501e:	eb09 0006 	add.w	r0, r9, r6
c0de5022:	2100      	movs	r1, #0
c0de5024:	f880 4035 	strb.w	r4, [r0, #53]	@ 0x35
c0de5028:	2000      	movs	r0, #0
c0de502a:	f000 ff57 	bl	c0de5edc <displaySettingsPage>
c0de502e:	b00f      	add	sp, #60	@ 0x3c
c0de5030:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5032:	bf00      	nop
c0de5034:	000009d0 	.word	0x000009d0

c0de5038 <startUseCaseHome>:
c0de5038:	b510      	push	{r4, lr}
c0de503a:	4821      	ldr	r0, [pc, #132]	@ (c0de50c0 <startUseCaseHome+0x88>)
c0de503c:	eb09 0100 	add.w	r1, r9, r0
c0de5040:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de5044:	290d      	cmp	r1, #13
c0de5046:	d009      	beq.n	c0de505c <startUseCaseHome+0x24>
c0de5048:	290e      	cmp	r1, #14
c0de504a:	d114      	bne.n	c0de5076 <startUseCaseHome+0x3e>
c0de504c:	eb09 0100 	add.w	r1, r9, r0
c0de5050:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de5052:	2102      	movs	r1, #2
c0de5054:	2a00      	cmp	r2, #0
c0de5056:	bf08      	it	eq
c0de5058:	2101      	moveq	r1, #1
c0de505a:	e00d      	b.n	c0de5078 <startUseCaseHome+0x40>
c0de505c:	eb09 0200 	add.w	r2, r9, r0
c0de5060:	2102      	movs	r1, #2
c0de5062:	6d14      	ldr	r4, [r2, #80]	@ 0x50
c0de5064:	6c93      	ldr	r3, [r2, #72]	@ 0x48
c0de5066:	2c00      	cmp	r4, #0
c0de5068:	bf08      	it	eq
c0de506a:	2101      	moveq	r1, #1
c0de506c:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5070:	b133      	cbz	r3, c0de5080 <startUseCaseHome+0x48>
c0de5072:	3101      	adds	r1, #1
c0de5074:	e000      	b.n	c0de5078 <startUseCaseHome+0x40>
c0de5076:	2100      	movs	r1, #0
c0de5078:	eb09 0200 	add.w	r2, r9, r0
c0de507c:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5080:	eb09 0200 	add.w	r2, r9, r0
c0de5084:	210c      	movs	r1, #12
c0de5086:	e9d2 3412 	ldrd	r3, r4, [r2, #72]	@ 0x48
c0de508a:	f882 102c 	strb.w	r1, [r2, #44]	@ 0x2c
c0de508e:	2103      	movs	r1, #3
c0de5090:	2b00      	cmp	r3, #0
c0de5092:	bf08      	it	eq
c0de5094:	2102      	moveq	r1, #2
c0de5096:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de509a:	b124      	cbz	r4, c0de50a6 <startUseCaseHome+0x6e>
c0de509c:	3101      	adds	r1, #1
c0de509e:	eb09 0200 	add.w	r2, r9, r0
c0de50a2:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de50a6:	eb09 0200 	add.w	r2, r9, r0
c0de50aa:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de50ac:	b11a      	cbz	r2, c0de50b6 <startUseCaseHome+0x7e>
c0de50ae:	4448      	add	r0, r9
c0de50b0:	3101      	adds	r1, #1
c0de50b2:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de50b6:	2000      	movs	r0, #0
c0de50b8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de50bc:	f000 bffe 	b.w	c0de60bc <displayHomePage>
c0de50c0:	000009d0 	.word	0x000009d0

c0de50c4 <nbgl_useCaseReview>:
c0de50c4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de50c6:	4614      	mov	r4, r2
c0de50c8:	460a      	mov	r2, r1
c0de50ca:	4601      	mov	r1, r0
c0de50cc:	9808      	ldr	r0, [sp, #32]
c0de50ce:	9003      	str	r0, [sp, #12]
c0de50d0:	9807      	ldr	r0, [sp, #28]
c0de50d2:	9002      	str	r0, [sp, #8]
c0de50d4:	9806      	ldr	r0, [sp, #24]
c0de50d6:	e9cd 3000 	strd	r3, r0, [sp]
c0de50da:	2002      	movs	r0, #2
c0de50dc:	4623      	mov	r3, r4
c0de50de:	f000 f801 	bl	c0de50e4 <useCaseReview>
c0de50e2:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de50e4 <useCaseReview>:
c0de50e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de50e8:	4607      	mov	r7, r0
c0de50ea:	4811      	ldr	r0, [pc, #68]	@ (c0de5130 <useCaseReview+0x4c>)
c0de50ec:	4688      	mov	r8, r1
c0de50ee:	2140      	movs	r1, #64	@ 0x40
c0de50f0:	461d      	mov	r5, r3
c0de50f2:	4614      	mov	r4, r2
c0de50f4:	f001 fc6f 	bl	c0de69d6 <OUTLINED_FUNCTION_2>
c0de50f8:	9808      	ldr	r0, [sp, #32]
c0de50fa:	6530      	str	r0, [r6, #80]	@ 0x50
c0de50fc:	9807      	ldr	r0, [sp, #28]
c0de50fe:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de5100:	9906      	ldr	r1, [sp, #24]
c0de5102:	e9c6 4510 	strd	r4, r5, [r6, #64]	@ 0x40
c0de5106:	64b1      	str	r1, [r6, #72]	@ 0x48
c0de5108:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de510a:	f8c6 8030 	str.w	r8, [r6, #48]	@ 0x30
c0de510e:	f886 702c 	strb.w	r7, [r6, #44]	@ 0x2c
c0de5112:	63f1      	str	r1, [r6, #60]	@ 0x3c
c0de5114:	2104      	movs	r1, #4
c0de5116:	2800      	cmp	r0, #0
c0de5118:	bf08      	it	eq
c0de511a:	2103      	moveq	r1, #3
c0de511c:	7a20      	ldrb	r0, [r4, #8]
c0de511e:	4408      	add	r0, r1
c0de5120:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de5124:	2000      	movs	r0, #0
c0de5126:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de512a:	f000 b8d1 	b.w	c0de52d0 <displayReviewPage>
c0de512e:	bf00      	nop
c0de5130:	000009d0 	.word	0x000009d0

c0de5134 <nbgl_useCaseAdvancedReview>:
c0de5134:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5138:	b088      	sub	sp, #32
c0de513a:	4617      	mov	r7, r2
c0de513c:	460a      	mov	r2, r1
c0de513e:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de5142:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	@ 0x40
c0de5146:	4606      	mov	r6, r0
c0de5148:	f1ba 0f00 	cmp.w	sl, #0
c0de514c:	d013      	beq.n	c0de5176 <nbgl_useCaseAdvancedReview+0x42>
c0de514e:	f8da 0000 	ldr.w	r0, [sl]
c0de5152:	9107      	str	r1, [sp, #28]
c0de5154:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de5158:	2808      	cmp	r0, #8
c0de515a:	d018      	beq.n	c0de518e <nbgl_useCaseAdvancedReview+0x5a>
c0de515c:	b9e0      	cbnz	r0, c0de5198 <nbgl_useCaseAdvancedReview+0x64>
c0de515e:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de5162:	b928      	cbnz	r0, c0de5170 <nbgl_useCaseAdvancedReview+0x3c>
c0de5164:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de5168:	b910      	cbnz	r0, c0de5170 <nbgl_useCaseAdvancedReview+0x3c>
c0de516a:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de516e:	b110      	cbz	r0, c0de5176 <nbgl_useCaseAdvancedReview+0x42>
c0de5170:	4698      	mov	r8, r3
c0de5172:	4615      	mov	r5, r2
c0de5174:	e014      	b.n	c0de51a0 <nbgl_useCaseAdvancedReview+0x6c>
c0de5176:	e9cd 3500 	strd	r3, r5, [sp]
c0de517a:	e9cd 4102 	strd	r4, r1, [sp, #8]
c0de517e:	2002      	movs	r0, #2
c0de5180:	4631      	mov	r1, r6
c0de5182:	463b      	mov	r3, r7
c0de5184:	f7ff ffae 	bl	c0de50e4 <useCaseReview>
c0de5188:	b008      	add	sp, #32
c0de518a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de518e:	4698      	mov	r8, r3
c0de5190:	4615      	mov	r5, r2
c0de5192:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de5196:	e003      	b.n	c0de51a0 <nbgl_useCaseAdvancedReview+0x6c>
c0de5198:	4698      	mov	r8, r3
c0de519a:	4615      	mov	r5, r2
c0de519c:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de51a0:	f8df b06c 	ldr.w	fp, [pc, #108]	@ c0de5210 <nbgl_useCaseAdvancedReview+0xdc>
c0de51a4:	212c      	movs	r1, #44	@ 0x2c
c0de51a6:	eb09 040b 	add.w	r4, r9, fp
c0de51aa:	4620      	mov	r0, r4
c0de51ac:	f002 fe8e 	bl	c0de7ecc <__aeabi_memclr>
c0de51b0:	2002      	movs	r0, #2
c0de51b2:	462a      	mov	r2, r5
c0de51b4:	60a5      	str	r5, [r4, #8]
c0de51b6:	9d06      	ldr	r5, [sp, #24]
c0de51b8:	463b      	mov	r3, r7
c0de51ba:	60e7      	str	r7, [r4, #12]
c0de51bc:	9f05      	ldr	r7, [sp, #20]
c0de51be:	4641      	mov	r1, r8
c0de51c0:	f8c4 8010 	str.w	r8, [r4, #16]
c0de51c4:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de51c8:	6066      	str	r6, [r4, #4]
c0de51ca:	f809 000b 	strb.w	r0, [r9, fp]
c0de51ce:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de51d2:	6167      	str	r7, [r4, #20]
c0de51d4:	e9c4 5a06 	strd	r5, sl, [r4, #24]
c0de51d8:	f8c4 8020 	str.w	r8, [r4, #32]
c0de51dc:	b120      	cbz	r0, c0de51e8 <nbgl_useCaseAdvancedReview+0xb4>
c0de51de:	b008      	add	sp, #32
c0de51e0:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de51e4:	f000 b816 	b.w	c0de5214 <displayPrelude>
c0de51e8:	f89a 0000 	ldrb.w	r0, [sl]
c0de51ec:	f010 0f16 	tst.w	r0, #22
c0de51f0:	d102      	bne.n	c0de51f8 <nbgl_useCaseAdvancedReview+0xc4>
c0de51f2:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de51f6:	b120      	cbz	r0, c0de5202 <nbgl_useCaseAdvancedReview+0xce>
c0de51f8:	b008      	add	sp, #32
c0de51fa:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de51fe:	f000 b815 	b.w	c0de522c <displayInitialWarning>
c0de5202:	e9cd 1700 	strd	r1, r7, [sp]
c0de5206:	2002      	movs	r0, #2
c0de5208:	4631      	mov	r1, r6
c0de520a:	e9cd 5802 	strd	r5, r8, [sp, #8]
c0de520e:	e7b9      	b.n	c0de5184 <nbgl_useCaseAdvancedReview+0x50>
c0de5210:	000009d0 	.word	0x000009d0

c0de5214 <displayPrelude>:
c0de5214:	4804      	ldr	r0, [pc, #16]	@ (c0de5228 <displayPrelude+0x14>)
c0de5216:	2101      	movs	r1, #1
c0de5218:	4448      	add	r0, r9
c0de521a:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de521e:	f44f 7140 	mov.w	r1, #768	@ 0x300
c0de5222:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de5224:	f001 b836 	b.w	c0de6294 <displayWarningStep>
c0de5228:	000009d0 	.word	0x000009d0

c0de522c <displayInitialWarning>:
c0de522c:	4804      	ldr	r0, [pc, #16]	@ (c0de5240 <displayInitialWarning+0x14>)
c0de522e:	2100      	movs	r1, #0
c0de5230:	4448      	add	r0, r9
c0de5232:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5236:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de523a:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de523c:	f001 b82a 	b.w	c0de6294 <displayWarningStep>
c0de5240:	000009d0 	.word	0x000009d0

c0de5244 <nbgl_useCaseReviewBlindSigning>:
c0de5244:	b5b0      	push	{r4, r5, r7, lr}
c0de5246:	b086      	sub	sp, #24
c0de5248:	4d06      	ldr	r5, [pc, #24]	@ (c0de5264 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de524a:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de524c:	447d      	add	r5, pc
c0de524e:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de5252:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de5254:	9401      	str	r4, [sp, #4]
c0de5256:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de5258:	9400      	str	r4, [sp, #0]
c0de525a:	f7ff ff6b 	bl	c0de5134 <nbgl_useCaseAdvancedReview>
c0de525e:	b006      	add	sp, #24
c0de5260:	bdb0      	pop	{r4, r5, r7, pc}
c0de5262:	bf00      	nop
c0de5264:	000041ec 	.word	0x000041ec

c0de5268 <nbgl_useCaseAddressReview>:
c0de5268:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de526c:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de52cc <nbgl_useCaseAddressReview+0x64>
c0de5270:	460c      	mov	r4, r1
c0de5272:	4607      	mov	r7, r0
c0de5274:	2140      	movs	r1, #64	@ 0x40
c0de5276:	469a      	mov	sl, r3
c0de5278:	4616      	mov	r6, r2
c0de527a:	eb09 0508 	add.w	r5, r9, r8
c0de527e:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de5282:	f002 fe23 	bl	c0de7ecc <__aeabi_memclr>
c0de5286:	2004      	movs	r0, #4
c0de5288:	656f      	str	r7, [r5, #84]	@ 0x54
c0de528a:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de528e:	9808      	ldr	r0, [sp, #32]
c0de5290:	e9c5 6a11 	strd	r6, sl, [r5, #68]	@ 0x44
c0de5294:	64e8      	str	r0, [r5, #76]	@ 0x4c
c0de5296:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5298:	63e9      	str	r1, [r5, #60]	@ 0x3c
c0de529a:	2105      	movs	r1, #5
c0de529c:	2800      	cmp	r0, #0
c0de529e:	bf08      	it	eq
c0de52a0:	2104      	moveq	r1, #4
c0de52a2:	f885 1034 	strb.w	r1, [r5, #52]	@ 0x34
c0de52a6:	b15c      	cbz	r4, c0de52c0 <nbgl_useCaseAddressReview+0x58>
c0de52a8:	4620      	mov	r0, r4
c0de52aa:	eb09 0508 	add.w	r5, r9, r8
c0de52ae:	f002 fb01 	bl	c0de78b4 <pic>
c0de52b2:	6428      	str	r0, [r5, #64]	@ 0x40
c0de52b4:	f895 0034 	ldrb.w	r0, [r5, #52]	@ 0x34
c0de52b8:	7a21      	ldrb	r1, [r4, #8]
c0de52ba:	4408      	add	r0, r1
c0de52bc:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de52c0:	2000      	movs	r0, #0
c0de52c2:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de52c6:	f000 b803 	b.w	c0de52d0 <displayReviewPage>
c0de52ca:	bf00      	nop
c0de52cc:	000009d0 	.word	0x000009d0

c0de52d0 <displayReviewPage>:
c0de52d0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de52d2:	b08b      	sub	sp, #44	@ 0x2c
c0de52d4:	4e5d      	ldr	r6, [pc, #372]	@ (c0de544c <displayReviewPage+0x17c>)
c0de52d6:	4604      	mov	r4, r0
c0de52d8:	2000      	movs	r0, #0
c0de52da:	2201      	movs	r2, #1
c0de52dc:	2702      	movs	r7, #2
c0de52de:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de52e2:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de52e6:	eb09 0306 	add.w	r3, r9, r6
c0de52ea:	6398      	str	r0, [r3, #56]	@ 0x38
c0de52ec:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
c0de52ee:	2800      	cmp	r0, #0
c0de52f0:	bf08      	it	eq
c0de52f2:	22ff      	moveq	r2, #255	@ 0xff
c0de52f4:	bf08      	it	eq
c0de52f6:	2701      	moveq	r7, #1
c0de52f8:	f993 1035 	ldrsb.w	r1, [r3, #53]	@ 0x35
c0de52fc:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
c0de5300:	1e9d      	subs	r5, r3, #2
c0de5302:	b2ed      	uxtb	r5, r5
c0de5304:	42a9      	cmp	r1, r5
c0de5306:	da06      	bge.n	c0de5316 <displayReviewPage+0x46>
c0de5308:	42b9      	cmp	r1, r7
c0de530a:	da0b      	bge.n	c0de5324 <displayReviewPage+0x54>
c0de530c:	2900      	cmp	r1, #0
c0de530e:	d041      	beq.n	c0de5394 <displayReviewPage+0xc4>
c0de5310:	428a      	cmp	r2, r1
c0de5312:	d044      	beq.n	c0de539e <displayReviewPage+0xce>
c0de5314:	e044      	b.n	c0de53a0 <displayReviewPage+0xd0>
c0de5316:	d110      	bne.n	c0de533a <displayReviewPage+0x6a>
c0de5318:	a908      	add	r1, sp, #32
c0de531a:	aa0a      	add	r2, sp, #40	@ 0x28
c0de531c:	2001      	movs	r0, #1
c0de531e:	f001 f885 	bl	c0de642c <getLastPageInfo>
c0de5322:	e03d      	b.n	c0de53a0 <displayReviewPage+0xd0>
c0de5324:	eb09 0006 	add.w	r0, r9, r6
c0de5328:	6d45      	ldr	r5, [r0, #84]	@ 0x54
c0de532a:	b18d      	cbz	r5, c0de5350 <displayReviewPage+0x80>
c0de532c:	42b9      	cmp	r1, r7
c0de532e:	d10f      	bne.n	c0de5350 <displayReviewPage+0x80>
c0de5330:	9509      	str	r5, [sp, #36]	@ 0x24
c0de5332:	4847      	ldr	r0, [pc, #284]	@ (c0de5450 <displayReviewPage+0x180>)
c0de5334:	4478      	add	r0, pc
c0de5336:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5338:	e033      	b.n	c0de53a2 <displayReviewPage+0xd2>
c0de533a:	1e58      	subs	r0, r3, #1
c0de533c:	b2c0      	uxtb	r0, r0
c0de533e:	4281      	cmp	r1, r0
c0de5340:	d12e      	bne.n	c0de53a0 <displayReviewPage+0xd0>
c0de5342:	a908      	add	r1, sp, #32
c0de5344:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5346:	2000      	movs	r0, #0
c0de5348:	2500      	movs	r5, #0
c0de534a:	f001 f86f 	bl	c0de642c <getLastPageInfo>
c0de534e:	e028      	b.n	c0de53a2 <displayReviewPage+0xd2>
c0de5350:	eb09 0006 	add.w	r0, r9, r6
c0de5354:	f890 2030 	ldrb.w	r2, [r0, #48]	@ 0x30
c0de5358:	06d2      	lsls	r2, r2, #27
c0de535a:	d535      	bpl.n	c0de53c8 <displayReviewPage+0xf8>
c0de535c:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de5360:	bb90      	cbnz	r0, c0de53c8 <displayReviewPage+0xf8>
c0de5362:	42b9      	cmp	r1, r7
c0de5364:	dc05      	bgt.n	c0de5372 <displayReviewPage+0xa2>
c0de5366:	eb09 0006 	add.w	r0, r9, r6
c0de536a:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de536e:	2808      	cmp	r0, #8
c0de5370:	d12a      	bne.n	c0de53c8 <displayReviewPage+0xf8>
c0de5372:	2000      	movs	r0, #0
c0de5374:	9006      	str	r0, [sp, #24]
c0de5376:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de537a:	eb09 0006 	add.w	r0, r9, r6
c0de537e:	f890 205c 	ldrb.w	r2, [r0, #92]	@ 0x5c
c0de5382:	f004 0008 	and.w	r0, r4, #8
c0de5386:	2a01      	cmp	r2, #1
c0de5388:	d001      	beq.n	c0de538e <displayReviewPage+0xbe>
c0de538a:	2901      	cmp	r1, #1
c0de538c:	db43      	blt.n	c0de5416 <displayReviewPage+0x146>
c0de538e:	f040 0003 	orr.w	r0, r0, #3
c0de5392:	e042      	b.n	c0de541a <displayReviewPage+0x14a>
c0de5394:	eb09 0006 	add.w	r0, r9, r6
c0de5398:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de539c:	9108      	str	r1, [sp, #32]
c0de539e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de53a0:	2500      	movs	r5, #0
c0de53a2:	2000      	movs	r0, #0
c0de53a4:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de53a6:	9908      	ldr	r1, [sp, #32]
c0de53a8:	4e2e      	ldr	r6, [pc, #184]	@ (c0de5464 <displayReviewPage+0x194>)
c0de53aa:	b2c0      	uxtb	r0, r0
c0de53ac:	2300      	movs	r3, #0
c0de53ae:	9002      	str	r0, [sp, #8]
c0de53b0:	4620      	mov	r0, r4
c0de53b2:	447e      	add	r6, pc
c0de53b4:	e9cd 6300 	strd	r6, r3, [sp]
c0de53b8:	462b      	mov	r3, r5
c0de53ba:	f000 f875 	bl	c0de54a8 <drawStep>
c0de53be:	b00b      	add	sp, #44	@ 0x2c
c0de53c0:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de53c4:	f002 b867 	b.w	c0de7496 <nbgl_refresh>
c0de53c8:	2200      	movs	r2, #0
c0de53ca:	eb09 0006 	add.w	r0, r9, r6
c0de53ce:	1bcf      	subs	r7, r1, r7
c0de53d0:	f10d 0c0c 	add.w	ip, sp, #12
c0de53d4:	f880 205d 	strb.w	r2, [r0, #93]	@ 0x5d
c0de53d8:	f88d 200c 	strb.w	r2, [sp, #12]
c0de53dc:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de53de:	ab08      	add	r3, sp, #32
c0de53e0:	aa07      	add	r2, sp, #28
c0de53e2:	2d00      	cmp	r5, #0
c0de53e4:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de53e8:	bf18      	it	ne
c0de53ea:	3f01      	subne	r7, #1
c0de53ec:	aa0a      	add	r2, sp, #40	@ 0x28
c0de53ee:	b2f9      	uxtb	r1, r7
c0de53f0:	ab09      	add	r3, sp, #36	@ 0x24
c0de53f2:	f000 fcf7 	bl	c0de5de4 <getPairData>
c0de53f6:	9807      	ldr	r0, [sp, #28]
c0de53f8:	b140      	cbz	r0, c0de540c <displayReviewPage+0x13c>
c0de53fa:	eb09 0006 	add.w	r0, r9, r6
c0de53fe:	f880 705f 	strb.w	r7, [r0, #95]	@ 0x5f
c0de5402:	4917      	ldr	r1, [pc, #92]	@ (c0de5460 <displayReviewPage+0x190>)
c0de5404:	4479      	add	r1, pc
c0de5406:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5408:	2001      	movs	r0, #1
c0de540a:	e002      	b.n	c0de5412 <displayReviewPage+0x142>
c0de540c:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de5410:	0040      	lsls	r0, r0, #1
c0de5412:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de5414:	e7c6      	b.n	c0de53a4 <displayReviewPage+0xd4>
c0de5416:	f040 0001 	orr.w	r0, r0, #1
c0de541a:	490e      	ldr	r1, [pc, #56]	@ (c0de5454 <displayReviewPage+0x184>)
c0de541c:	2200      	movs	r2, #0
c0de541e:	4479      	add	r1, pc
c0de5420:	9103      	str	r1, [sp, #12]
c0de5422:	490d      	ldr	r1, [pc, #52]	@ (c0de5458 <displayReviewPage+0x188>)
c0de5424:	4479      	add	r1, pc
c0de5426:	9105      	str	r1, [sp, #20]
c0de5428:	2100      	movs	r1, #0
c0de542a:	9100      	str	r1, [sp, #0]
c0de542c:	490b      	ldr	r1, [pc, #44]	@ (c0de545c <displayReviewPage+0x18c>)
c0de542e:	ab03      	add	r3, sp, #12
c0de5430:	4479      	add	r1, pc
c0de5432:	f7ff fbb5 	bl	c0de4ba0 <nbgl_stepDrawCenteredInfo>
c0de5436:	eb09 0406 	add.w	r4, r9, r6
c0de543a:	f002 f82c 	bl	c0de7496 <nbgl_refresh>
c0de543e:	2001      	movs	r0, #1
c0de5440:	f884 7036 	strb.w	r7, [r4, #54]	@ 0x36
c0de5444:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de5448:	b00b      	add	sp, #44	@ 0x2c
c0de544a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de544c:	000009d0 	.word	0x000009d0
c0de5450:	000030de 	.word	0x000030de
c0de5454:	00002dc4 	.word	0x00002dc4
c0de5458:	00002bf2 	.word	0x00002bf2
c0de545c:	00001181 	.word	0x00001181
c0de5460:	00001265 	.word	0x00001265
c0de5464:	0000132b 	.word	0x0000132b

c0de5468 <nbgl_useCaseStatus>:
c0de5468:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de546a:	4605      	mov	r5, r0
c0de546c:	480c      	ldr	r0, [pc, #48]	@ (c0de54a0 <nbgl_useCaseStatus+0x38>)
c0de546e:	2140      	movs	r1, #64	@ 0x40
c0de5470:	4614      	mov	r4, r2
c0de5472:	f001 fab0 	bl	c0de69d6 <OUTLINED_FUNCTION_2>
c0de5476:	2009      	movs	r0, #9
c0de5478:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de547a:	462a      	mov	r2, r5
c0de547c:	2300      	movs	r3, #0
c0de547e:	f886 002c 	strb.w	r0, [r6, #44]	@ 0x2c
c0de5482:	2001      	movs	r0, #1
c0de5484:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de5488:	2000      	movs	r0, #0
c0de548a:	4906      	ldr	r1, [pc, #24]	@ (c0de54a4 <nbgl_useCaseStatus+0x3c>)
c0de548c:	9002      	str	r0, [sp, #8]
c0de548e:	4479      	add	r1, pc
c0de5490:	e9cd 1000 	strd	r1, r0, [sp]
c0de5494:	2040      	movs	r0, #64	@ 0x40
c0de5496:	2100      	movs	r1, #0
c0de5498:	f000 f806 	bl	c0de54a8 <drawStep>
c0de549c:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de549e:	bf00      	nop
c0de54a0:	000009d0 	.word	0x000009d0
c0de54a4:	0000019f 	.word	0x0000019f

c0de54a8 <drawStep>:
c0de54a8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de54ac:	b09a      	sub	sp, #104	@ 0x68
c0de54ae:	4688      	mov	r8, r1
c0de54b0:	4604      	mov	r4, r0
c0de54b2:	a80c      	add	r0, sp, #48	@ 0x30
c0de54b4:	2138      	movs	r1, #56	@ 0x38
c0de54b6:	461d      	mov	r5, r3
c0de54b8:	4616      	mov	r6, r2
c0de54ba:	f002 fd07 	bl	c0de7ecc <__aeabi_memclr>
c0de54be:	2700      	movs	r7, #0
c0de54c0:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de54c4:	4856      	ldr	r0, [pc, #344]	@ (c0de5620 <drawStep+0x178>)
c0de54c6:	4478      	add	r0, pc
c0de54c8:	f002 f9f4 	bl	c0de78b4 <pic>
c0de54cc:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de561c <drawStep+0x174>
c0de54d0:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de54d4:	9709      	str	r7, [sp, #36]	@ 0x24
c0de54d6:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de54da:	eb09 000b 	add.w	r0, r9, fp
c0de54de:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de54e2:	2802      	cmp	r0, #2
c0de54e4:	d30b      	bcc.n	c0de54fe <drawStep+0x56>
c0de54e6:	eb09 010b 	add.w	r1, r9, fp
c0de54ea:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de54ee:	b129      	cbz	r1, c0de54fc <drawStep+0x54>
c0de54f0:	3801      	subs	r0, #1
c0de54f2:	2703      	movs	r7, #3
c0de54f4:	4288      	cmp	r0, r1
c0de54f6:	bf08      	it	eq
c0de54f8:	2702      	moveq	r7, #2
c0de54fa:	e000      	b.n	c0de54fe <drawStep+0x56>
c0de54fc:	2701      	movs	r7, #1
c0de54fe:	eb09 000b 	add.w	r0, r9, fp
c0de5502:	ea47 0204 	orr.w	r2, r7, r4
c0de5506:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de550a:	4614      	mov	r4, r2
c0de550c:	2901      	cmp	r1, #1
c0de550e:	bf88      	it	hi
c0de5510:	f044 0402 	orrhi.w	r4, r4, #2
c0de5514:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de5516:	2900      	cmp	r1, #0
c0de5518:	bf08      	it	eq
c0de551a:	4614      	moveq	r4, r2
c0de551c:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5520:	2806      	cmp	r0, #6
c0de5522:	f040 0108 	orr.w	r1, r0, #8
c0de5526:	bf18      	it	ne
c0de5528:	4614      	movne	r4, r2
c0de552a:	2909      	cmp	r1, #9
c0de552c:	bf0c      	ite	eq
c0de552e:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de5532:	f04f 0a00 	movne.w	sl, #0
c0de5536:	280a      	cmp	r0, #10
c0de5538:	d105      	bne.n	c0de5546 <drawStep+0x9e>
c0de553a:	eb09 000b 	add.w	r0, r9, fp
c0de553e:	6d00      	ldr	r0, [r0, #80]	@ 0x50
c0de5540:	b108      	cbz	r0, c0de5546 <drawStep+0x9e>
c0de5542:	f7ff fc53 	bl	c0de4dec <nbgl_stepRelease>
c0de5546:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de5548:	b1b6      	cbz	r6, c0de5578 <drawStep+0xd0>
c0de554a:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de554c:	f1b8 0f00 	cmp.w	r8, #0
c0de5550:	d12c      	bne.n	c0de55ac <drawStep+0x104>
c0de5552:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de5554:	2802      	cmp	r0, #2
c0de5556:	d029      	beq.n	c0de55ac <drawStep+0x104>
c0de5558:	2201      	movs	r2, #1
c0de555a:	4633      	mov	r3, r6
c0de555c:	2801      	cmp	r0, #1
c0de555e:	bf08      	it	eq
c0de5560:	2202      	moveq	r2, #2
c0de5562:	4620      	mov	r0, r4
c0de5564:	2d00      	cmp	r5, #0
c0de5566:	bf08      	it	eq
c0de5568:	462a      	moveq	r2, r5
c0de556a:	e9cd 5200 	strd	r5, r2, [sp]
c0de556e:	9702      	str	r7, [sp, #8]
c0de5570:	4652      	mov	r2, sl
c0de5572:	f7ff f9cf 	bl	c0de4914 <nbgl_stepDrawText>
c0de5576:	e043      	b.n	c0de5600 <drawStep+0x158>
c0de5578:	eb09 000b 	add.w	r0, r9, fp
c0de557c:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5580:	a903      	add	r1, sp, #12
c0de5582:	aa0c      	add	r2, sp, #48	@ 0x30
c0de5584:	f000 fbea 	bl	c0de5d5c <getContentElemAtIdx>
c0de5588:	b330      	cbz	r0, c0de55d8 <drawStep+0x130>
c0de558a:	7801      	ldrb	r1, [r0, #0]
c0de558c:	2400      	movs	r4, #0
c0de558e:	290a      	cmp	r1, #10
c0de5590:	d024      	beq.n	c0de55dc <drawStep+0x134>
c0de5592:	2909      	cmp	r1, #9
c0de5594:	d135      	bne.n	c0de5602 <drawStep+0x15a>
c0de5596:	f001 fa32 	bl	c0de69fe <OUTLINED_FUNCTION_5>
c0de559a:	4922      	ldr	r1, [pc, #136]	@ (c0de5624 <drawStep+0x17c>)
c0de559c:	4479      	add	r1, pc
c0de559e:	910a      	str	r1, [sp, #40]	@ 0x28
c0de55a0:	7941      	ldrb	r1, [r0, #5]
c0de55a2:	7980      	ldrb	r0, [r0, #6]
c0de55a4:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de55a8:	1c48      	adds	r0, r1, #1
c0de55aa:	e020      	b.n	c0de55ee <drawStep+0x146>
c0de55ac:	2000      	movs	r0, #0
c0de55ae:	9603      	str	r6, [sp, #12]
c0de55b0:	f8cd 8014 	str.w	r8, [sp, #20]
c0de55b4:	9504      	str	r5, [sp, #16]
c0de55b6:	4652      	mov	r2, sl
c0de55b8:	f88d 0018 	strb.w	r0, [sp, #24]
c0de55bc:	eb09 000b 	add.w	r0, r9, fp
c0de55c0:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de55c2:	4328      	orrs	r0, r5
c0de55c4:	bf18      	it	ne
c0de55c6:	2001      	movne	r0, #1
c0de55c8:	f88d 0019 	strb.w	r0, [sp, #25]
c0de55cc:	9700      	str	r7, [sp, #0]
c0de55ce:	ab03      	add	r3, sp, #12
c0de55d0:	4620      	mov	r0, r4
c0de55d2:	f7ff fae5 	bl	c0de4ba0 <nbgl_stepDrawCenteredInfo>
c0de55d6:	e013      	b.n	c0de5600 <drawStep+0x158>
c0de55d8:	2400      	movs	r4, #0
c0de55da:	e012      	b.n	c0de5602 <drawStep+0x15a>
c0de55dc:	f001 fa0f 	bl	c0de69fe <OUTLINED_FUNCTION_5>
c0de55e0:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de55e4:	4910      	ldr	r1, [pc, #64]	@ (c0de5628 <drawStep+0x180>)
c0de55e6:	7a00      	ldrb	r0, [r0, #8]
c0de55e8:	4479      	add	r1, pc
c0de55ea:	3001      	adds	r0, #1
c0de55ec:	910a      	str	r1, [sp, #40]	@ 0x28
c0de55ee:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de55f2:	4651      	mov	r1, sl
c0de55f4:	463b      	mov	r3, r7
c0de55f6:	480d      	ldr	r0, [pc, #52]	@ (c0de562c <drawStep+0x184>)
c0de55f8:	aa0a      	add	r2, sp, #40	@ 0x28
c0de55fa:	4478      	add	r0, pc
c0de55fc:	f7ff fb60 	bl	c0de4cc0 <nbgl_stepDrawMenuList>
c0de5600:	4604      	mov	r4, r0
c0de5602:	eb09 000b 	add.w	r0, r9, fp
c0de5606:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de560a:	280a      	cmp	r0, #10
c0de560c:	bf04      	itt	eq
c0de560e:	eb09 000b 	addeq.w	r0, r9, fp
c0de5612:	6504      	streq	r4, [r0, #80]	@ 0x50
c0de5614:	b01a      	add	sp, #104	@ 0x68
c0de5616:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de561a:	bf00      	nop
c0de561c:	000009d0 	.word	0x000009d0
c0de5620:	000013a3 	.word	0x000013a3
c0de5624:	000012dd 	.word	0x000012dd
c0de5628:	00001291 	.word	0x00001291
c0de562c:	000012e3 	.word	0x000012e3

c0de5630 <statusButtonCallback>:
c0de5630:	f041 0004 	orr.w	r0, r1, #4
c0de5634:	2804      	cmp	r0, #4
c0de5636:	d001      	beq.n	c0de563c <statusButtonCallback+0xc>
c0de5638:	2901      	cmp	r1, #1
c0de563a:	d104      	bne.n	c0de5646 <statusButtonCallback+0x16>
c0de563c:	4802      	ldr	r0, [pc, #8]	@ (c0de5648 <statusButtonCallback+0x18>)
c0de563e:	4448      	add	r0, r9
c0de5640:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de5642:	b100      	cbz	r0, c0de5646 <statusButtonCallback+0x16>
c0de5644:	4700      	bx	r0
c0de5646:	4770      	bx	lr
c0de5648:	000009d0 	.word	0x000009d0

c0de564c <nbgl_useCaseReviewStatus>:
c0de564c:	460a      	mov	r2, r1
c0de564e:	b198      	cbz	r0, c0de5678 <nbgl_useCaseReviewStatus+0x2c>
c0de5650:	2801      	cmp	r0, #1
c0de5652:	d016      	beq.n	c0de5682 <nbgl_useCaseReviewStatus+0x36>
c0de5654:	2802      	cmp	r0, #2
c0de5656:	d019      	beq.n	c0de568c <nbgl_useCaseReviewStatus+0x40>
c0de5658:	2803      	cmp	r0, #3
c0de565a:	d01c      	beq.n	c0de5696 <nbgl_useCaseReviewStatus+0x4a>
c0de565c:	2804      	cmp	r0, #4
c0de565e:	d01f      	beq.n	c0de56a0 <nbgl_useCaseReviewStatus+0x54>
c0de5660:	2807      	cmp	r0, #7
c0de5662:	d022      	beq.n	c0de56aa <nbgl_useCaseReviewStatus+0x5e>
c0de5664:	2806      	cmp	r0, #6
c0de5666:	d025      	beq.n	c0de56b4 <nbgl_useCaseReviewStatus+0x68>
c0de5668:	2805      	cmp	r0, #5
c0de566a:	bf18      	it	ne
c0de566c:	4770      	bxne	lr
c0de566e:	4815      	ldr	r0, [pc, #84]	@ (c0de56c4 <nbgl_useCaseReviewStatus+0x78>)
c0de5670:	2100      	movs	r1, #0
c0de5672:	4478      	add	r0, pc
c0de5674:	f7ff bef8 	b.w	c0de5468 <nbgl_useCaseStatus>
c0de5678:	4813      	ldr	r0, [pc, #76]	@ (c0de56c8 <nbgl_useCaseReviewStatus+0x7c>)
c0de567a:	2101      	movs	r1, #1
c0de567c:	4478      	add	r0, pc
c0de567e:	f7ff bef3 	b.w	c0de5468 <nbgl_useCaseStatus>
c0de5682:	4812      	ldr	r0, [pc, #72]	@ (c0de56cc <nbgl_useCaseReviewStatus+0x80>)
c0de5684:	2100      	movs	r1, #0
c0de5686:	4478      	add	r0, pc
c0de5688:	f7ff beee 	b.w	c0de5468 <nbgl_useCaseStatus>
c0de568c:	4810      	ldr	r0, [pc, #64]	@ (c0de56d0 <nbgl_useCaseReviewStatus+0x84>)
c0de568e:	2101      	movs	r1, #1
c0de5690:	4478      	add	r0, pc
c0de5692:	f7ff bee9 	b.w	c0de5468 <nbgl_useCaseStatus>
c0de5696:	480f      	ldr	r0, [pc, #60]	@ (c0de56d4 <nbgl_useCaseReviewStatus+0x88>)
c0de5698:	2100      	movs	r1, #0
c0de569a:	4478      	add	r0, pc
c0de569c:	f7ff bee4 	b.w	c0de5468 <nbgl_useCaseStatus>
c0de56a0:	4807      	ldr	r0, [pc, #28]	@ (c0de56c0 <nbgl_useCaseReviewStatus+0x74>)
c0de56a2:	2101      	movs	r1, #1
c0de56a4:	4478      	add	r0, pc
c0de56a6:	f7ff bedf 	b.w	c0de5468 <nbgl_useCaseStatus>
c0de56aa:	480c      	ldr	r0, [pc, #48]	@ (c0de56dc <nbgl_useCaseReviewStatus+0x90>)
c0de56ac:	2100      	movs	r1, #0
c0de56ae:	4478      	add	r0, pc
c0de56b0:	f7ff beda 	b.w	c0de5468 <nbgl_useCaseStatus>
c0de56b4:	4808      	ldr	r0, [pc, #32]	@ (c0de56d8 <nbgl_useCaseReviewStatus+0x8c>)
c0de56b6:	2101      	movs	r1, #1
c0de56b8:	4478      	add	r0, pc
c0de56ba:	f7ff bed5 	b.w	c0de5468 <nbgl_useCaseStatus>
c0de56be:	bf00      	nop
c0de56c0:	00002b09 	.word	0x00002b09
c0de56c4:	00002b5d 	.word	0x00002b5d
c0de56c8:	00002bed 	.word	0x00002bed
c0de56cc:	00002db9 	.word	0x00002db9
c0de56d0:	00002c4c 	.word	0x00002c4c
c0de56d4:	00002d48 	.word	0x00002d48
c0de56d8:	00002b71 	.word	0x00002b71
c0de56dc:	00002cab 	.word	0x00002cab

c0de56e0 <displayStreamingReviewPage>:
c0de56e0:	b570      	push	{r4, r5, r6, lr}
c0de56e2:	b08c      	sub	sp, #48	@ 0x30
c0de56e4:	4d5a      	ldr	r5, [pc, #360]	@ (c0de5850 <displayStreamingReviewPage+0x170>)
c0de56e6:	2100      	movs	r1, #0
c0de56e8:	4604      	mov	r4, r0
c0de56ea:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de56ee:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de56f2:	eb09 0005 	add.w	r0, r9, r5
c0de56f6:	6381      	str	r1, [r0, #56]	@ 0x38
c0de56f8:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de56fc:	2806      	cmp	r0, #6
c0de56fe:	d015      	beq.n	c0de572c <displayStreamingReviewPage+0x4c>
c0de5700:	2805      	cmp	r0, #5
c0de5702:	d13d      	bne.n	c0de5780 <displayStreamingReviewPage+0xa0>
c0de5704:	eb09 0205 	add.w	r2, r9, r5
c0de5708:	2101      	movs	r1, #1
c0de570a:	2302      	movs	r3, #2
c0de570c:	6cd0      	ldr	r0, [r2, #76]	@ 0x4c
c0de570e:	2800      	cmp	r0, #0
c0de5710:	bf08      	it	eq
c0de5712:	21ff      	moveq	r1, #255	@ 0xff
c0de5714:	bf08      	it	eq
c0de5716:	2301      	moveq	r3, #1
c0de5718:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de571c:	4293      	cmp	r3, r2
c0de571e:	dd3b      	ble.n	c0de5798 <displayStreamingReviewPage+0xb8>
c0de5720:	b2d3      	uxtb	r3, r2
c0de5722:	2b00      	cmp	r3, #0
c0de5724:	d063      	beq.n	c0de57ee <displayStreamingReviewPage+0x10e>
c0de5726:	4291      	cmp	r1, r2
c0de5728:	d066      	beq.n	c0de57f8 <displayStreamingReviewPage+0x118>
c0de572a:	e066      	b.n	c0de57fa <displayStreamingReviewPage+0x11a>
c0de572c:	eb09 0005 	add.w	r0, r9, r5
c0de5730:	f990 1035 	ldrsb.w	r1, [r0, #53]	@ 0x35
c0de5734:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5736:	7a02      	ldrb	r2, [r0, #8]
c0de5738:	4291      	cmp	r1, r2
c0de573a:	da2d      	bge.n	c0de5798 <displayStreamingReviewPage+0xb8>
c0de573c:	eb09 0205 	add.w	r2, r9, r5
c0de5740:	6d93      	ldr	r3, [r2, #88]	@ 0x58
c0de5742:	b3cb      	cbz	r3, c0de57b8 <displayStreamingReviewPage+0xd8>
c0de5744:	f892 205d 	ldrb.w	r2, [r2, #93]	@ 0x5d
c0de5748:	bbb2      	cbnz	r2, c0de57b8 <displayStreamingReviewPage+0xd8>
c0de574a:	eb09 0205 	add.w	r2, r9, r5
c0de574e:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de5752:	2a01      	cmp	r2, #1
c0de5754:	d807      	bhi.n	c0de5766 <displayStreamingReviewPage+0x86>
c0de5756:	2900      	cmp	r1, #0
c0de5758:	dc05      	bgt.n	c0de5766 <displayStreamingReviewPage+0x86>
c0de575a:	eb09 0305 	add.w	r3, r9, r5
c0de575e:	f893 305e 	ldrb.w	r3, [r3, #94]	@ 0x5e
c0de5762:	2b08      	cmp	r3, #8
c0de5764:	d128      	bne.n	c0de57b8 <displayStreamingReviewPage+0xd8>
c0de5766:	2000      	movs	r0, #0
c0de5768:	9007      	str	r0, [sp, #28]
c0de576a:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de576e:	f004 0008 	and.w	r0, r4, #8
c0de5772:	2a01      	cmp	r2, #1
c0de5774:	d001      	beq.n	c0de577a <displayStreamingReviewPage+0x9a>
c0de5776:	2901      	cmp	r1, #1
c0de5778:	db50      	blt.n	c0de581c <displayStreamingReviewPage+0x13c>
c0de577a:	f040 0003 	orr.w	r0, r0, #3
c0de577e:	e04f      	b.n	c0de5820 <displayStreamingReviewPage+0x140>
c0de5780:	eb09 0005 	add.w	r0, r9, r5
c0de5784:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5788:	b180      	cbz	r0, c0de57ac <displayStreamingReviewPage+0xcc>
c0de578a:	a909      	add	r1, sp, #36	@ 0x24
c0de578c:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de578e:	2000      	movs	r0, #0
c0de5790:	2500      	movs	r5, #0
c0de5792:	f000 fe4b 	bl	c0de642c <getLastPageInfo>
c0de5796:	e031      	b.n	c0de57fc <displayStreamingReviewPage+0x11c>
c0de5798:	eb09 0005 	add.w	r0, r9, r5
c0de579c:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de579e:	2900      	cmp	r1, #0
c0de57a0:	d053      	beq.n	c0de584a <displayStreamingReviewPage+0x16a>
c0de57a2:	2001      	movs	r0, #1
c0de57a4:	b00c      	add	sp, #48	@ 0x30
c0de57a6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de57aa:	4708      	bx	r1
c0de57ac:	a909      	add	r1, sp, #36	@ 0x24
c0de57ae:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de57b0:	2001      	movs	r0, #1
c0de57b2:	f000 fe3b 	bl	c0de642c <getLastPageInfo>
c0de57b6:	e020      	b.n	c0de57fa <displayStreamingReviewPage+0x11a>
c0de57b8:	2300      	movs	r3, #0
c0de57ba:	eb09 0205 	add.w	r2, r9, r5
c0de57be:	b2c9      	uxtb	r1, r1
c0de57c0:	f882 305d 	strb.w	r3, [r2, #93]	@ 0x5d
c0de57c4:	f88d 300f 	strb.w	r3, [sp, #15]
c0de57c8:	ab09      	add	r3, sp, #36	@ 0x24
c0de57ca:	ad08      	add	r5, sp, #32
c0de57cc:	f10d 020f 	add.w	r2, sp, #15
c0de57d0:	e9cd 5300 	strd	r5, r3, [sp]
c0de57d4:	9202      	str	r2, [sp, #8]
c0de57d6:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de57d8:	ab0a      	add	r3, sp, #40	@ 0x28
c0de57da:	f000 fb03 	bl	c0de5de4 <getPairData>
c0de57de:	9808      	ldr	r0, [sp, #32]
c0de57e0:	2800      	cmp	r0, #0
c0de57e2:	bf12      	itee	ne
c0de57e4:	2501      	movne	r5, #1
c0de57e6:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de57ea:	0045      	lsleq	r5, r0, #1
c0de57ec:	e006      	b.n	c0de57fc <displayStreamingReviewPage+0x11c>
c0de57ee:	eb09 0005 	add.w	r0, r9, r5
c0de57f2:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de57f6:	9109      	str	r1, [sp, #36]	@ 0x24
c0de57f8:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de57fa:	2500      	movs	r5, #0
c0de57fc:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de57fe:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de5802:	4e17      	ldr	r6, [pc, #92]	@ (c0de5860 <displayStreamingReviewPage+0x180>)
c0de5804:	b2e8      	uxtb	r0, r5
c0de5806:	2500      	movs	r5, #0
c0de5808:	9002      	str	r0, [sp, #8]
c0de580a:	4620      	mov	r0, r4
c0de580c:	447e      	add	r6, pc
c0de580e:	f001 f8f9 	bl	c0de6a04 <OUTLINED_FUNCTION_6>
c0de5812:	b00c      	add	sp, #48	@ 0x30
c0de5814:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5818:	f001 be3d 	b.w	c0de7496 <nbgl_refresh>
c0de581c:	f040 0001 	orr.w	r0, r0, #1
c0de5820:	490c      	ldr	r1, [pc, #48]	@ (c0de5854 <displayStreamingReviewPage+0x174>)
c0de5822:	2200      	movs	r2, #0
c0de5824:	4479      	add	r1, pc
c0de5826:	9104      	str	r1, [sp, #16]
c0de5828:	490b      	ldr	r1, [pc, #44]	@ (c0de5858 <displayStreamingReviewPage+0x178>)
c0de582a:	4479      	add	r1, pc
c0de582c:	9106      	str	r1, [sp, #24]
c0de582e:	2100      	movs	r1, #0
c0de5830:	9100      	str	r1, [sp, #0]
c0de5832:	490a      	ldr	r1, [pc, #40]	@ (c0de585c <displayStreamingReviewPage+0x17c>)
c0de5834:	ab04      	add	r3, sp, #16
c0de5836:	4479      	add	r1, pc
c0de5838:	f7ff f9b2 	bl	c0de4ba0 <nbgl_stepDrawCenteredInfo>
c0de583c:	eb09 0405 	add.w	r4, r9, r5
c0de5840:	f001 fe29 	bl	c0de7496 <nbgl_refresh>
c0de5844:	2001      	movs	r0, #1
c0de5846:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de584a:	b00c      	add	sp, #48	@ 0x30
c0de584c:	bd70      	pop	{r4, r5, r6, pc}
c0de584e:	bf00      	nop
c0de5850:	000009d0 	.word	0x000009d0
c0de5854:	000029be 	.word	0x000029be
c0de5858:	000027ec 	.word	0x000027ec
c0de585c:	00000d7b 	.word	0x00000d7b
c0de5860:	0000113d 	.word	0x0000113d

c0de5864 <nbgl_useCaseSpinner>:
c0de5864:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de5866:	4604      	mov	r4, r0
c0de5868:	480b      	ldr	r0, [pc, #44]	@ (c0de5898 <nbgl_useCaseSpinner+0x34>)
c0de586a:	2140      	movs	r1, #64	@ 0x40
c0de586c:	f001 f8a2 	bl	c0de69b4 <OUTLINED_FUNCTION_0>
c0de5870:	2001      	movs	r0, #1
c0de5872:	4622      	mov	r2, r4
c0de5874:	2300      	movs	r3, #0
c0de5876:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de587a:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de587e:	2000      	movs	r0, #0
c0de5880:	e9cd 0000 	strd	r0, r0, [sp]
c0de5884:	9002      	str	r0, [sp, #8]
c0de5886:	2000      	movs	r0, #0
c0de5888:	4904      	ldr	r1, [pc, #16]	@ (c0de589c <nbgl_useCaseSpinner+0x38>)
c0de588a:	4479      	add	r1, pc
c0de588c:	f7ff fe0c 	bl	c0de54a8 <drawStep>
c0de5890:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de5894:	f001 bdff 	b.w	c0de7496 <nbgl_refresh>
c0de5898:	000009d0 	.word	0x000009d0
c0de589c:	00002883 	.word	0x00002883

c0de58a0 <nbgl_useCaseChoice>:
c0de58a0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de58a2:	9c07      	ldr	r4, [sp, #28]
c0de58a4:	9402      	str	r4, [sp, #8]
c0de58a6:	2400      	movs	r4, #0
c0de58a8:	9401      	str	r4, [sp, #4]
c0de58aa:	9c06      	ldr	r4, [sp, #24]
c0de58ac:	9400      	str	r4, [sp, #0]
c0de58ae:	f000 f801 	bl	c0de58b4 <nbgl_useCaseChoiceWithDetails>
c0de58b2:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de58b4 <nbgl_useCaseChoiceWithDetails>:
c0de58b4:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de58b8:	f8df 806c 	ldr.w	r8, [pc, #108]	@ c0de5928 <nbgl_useCaseChoiceWithDetails+0x74>
c0de58bc:	460c      	mov	r4, r1
c0de58be:	4605      	mov	r5, r0
c0de58c0:	2140      	movs	r1, #64	@ 0x40
c0de58c2:	469a      	mov	sl, r3
c0de58c4:	4617      	mov	r7, r2
c0de58c6:	eb09 0608 	add.w	r6, r9, r8
c0de58ca:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de58ce:	f002 fafd 	bl	c0de7ecc <__aeabi_memclr>
c0de58d2:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de58d4:	2203      	movs	r2, #3
c0de58d6:	6570      	str	r0, [r6, #84]	@ 0x54
c0de58d8:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de58da:	6531      	str	r1, [r6, #80]	@ 0x50
c0de58dc:	9908      	ldr	r1, [sp, #32]
c0de58de:	e9c6 7a11 	strd	r7, sl, [r6, #68]	@ 0x44
c0de58e2:	e9c6 540f 	strd	r5, r4, [r6, #60]	@ 0x3c
c0de58e6:	64f1      	str	r1, [r6, #76]	@ 0x4c
c0de58e8:	2108      	movs	r1, #8
c0de58ea:	f886 102c 	strb.w	r1, [r6, #44]	@ 0x2c
c0de58ee:	2f00      	cmp	r7, #0
c0de58f0:	f04f 0103 	mov.w	r1, #3
c0de58f4:	bf18      	it	ne
c0de58f6:	2104      	movne	r1, #4
c0de58f8:	2d00      	cmp	r5, #0
c0de58fa:	bf08      	it	eq
c0de58fc:	4611      	moveq	r1, r2
c0de58fe:	2c00      	cmp	r4, #0
c0de5900:	bf08      	it	eq
c0de5902:	2102      	moveq	r1, #2
c0de5904:	f886 1034 	strb.w	r1, [r6, #52]	@ 0x34
c0de5908:	b140      	cbz	r0, c0de591c <nbgl_useCaseChoiceWithDetails+0x68>
c0de590a:	7902      	ldrb	r2, [r0, #4]
c0de590c:	2a03      	cmp	r2, #3
c0de590e:	d105      	bne.n	c0de591c <nbgl_useCaseChoiceWithDetails+0x68>
c0de5910:	7a00      	ldrb	r0, [r0, #8]
c0de5912:	eb09 0208 	add.w	r2, r9, r8
c0de5916:	4408      	add	r0, r1
c0de5918:	f882 0034 	strb.w	r0, [r2, #52]	@ 0x34
c0de591c:	2000      	movs	r0, #0
c0de591e:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5922:	f000 b803 	b.w	c0de592c <displayChoicePage>
c0de5926:	bf00      	nop
c0de5928:	000009d0 	.word	0x000009d0

c0de592c <displayChoicePage>:
c0de592c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de592e:	4b33      	ldr	r3, [pc, #204]	@ (c0de59fc <displayChoicePage+0xd0>)
c0de5930:	2400      	movs	r4, #0
c0de5932:	eb09 0103 	add.w	r1, r9, r3
c0de5936:	6c0a      	ldr	r2, [r1, #64]	@ 0x40
c0de5938:	b16a      	cbz	r2, c0de5956 <displayChoicePage+0x2a>
c0de593a:	eb09 0103 	add.w	r1, r9, r3
c0de593e:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de5940:	b131      	cbz	r1, c0de5950 <displayChoicePage+0x24>
c0de5942:	eb09 0103 	add.w	r1, r9, r3
c0de5946:	6c49      	ldr	r1, [r1, #68]	@ 0x44
c0de5948:	b111      	cbz	r1, c0de5950 <displayChoicePage+0x24>
c0de594a:	2102      	movs	r1, #2
c0de594c:	2501      	movs	r5, #1
c0de594e:	e004      	b.n	c0de595a <displayChoicePage+0x2e>
c0de5950:	2101      	movs	r1, #1
c0de5952:	2500      	movs	r5, #0
c0de5954:	e001      	b.n	c0de595a <displayChoicePage+0x2e>
c0de5956:	2500      	movs	r5, #0
c0de5958:	2100      	movs	r1, #0
c0de595a:	eb09 0603 	add.w	r6, r9, r3
c0de595e:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de5960:	f896 6035 	ldrb.w	r6, [r6, #53]	@ 0x35
c0de5964:	b274      	sxtb	r4, r6
c0de5966:	42a1      	cmp	r1, r4
c0de5968:	dd08      	ble.n	c0de597c <displayChoicePage+0x50>
c0de596a:	b1ee      	cbz	r6, c0de59a8 <displayChoicePage+0x7c>
c0de596c:	1e71      	subs	r1, r6, #1
c0de596e:	fab1 f181 	clz	r1, r1
c0de5972:	0949      	lsrs	r1, r1, #5
c0de5974:	4029      	ands	r1, r5
c0de5976:	2901      	cmp	r1, #1
c0de5978:	d01c      	beq.n	c0de59b4 <displayChoicePage+0x88>
c0de597a:	e030      	b.n	c0de59de <displayChoicePage+0xb2>
c0de597c:	d108      	bne.n	c0de5990 <displayChoicePage+0x64>
c0de597e:	4a20      	ldr	r2, [pc, #128]	@ (c0de5a00 <displayChoicePage+0xd4>)
c0de5980:	eb09 0103 	add.w	r1, r9, r3
c0de5984:	447a      	add	r2, pc
c0de5986:	638a      	str	r2, [r1, #56]	@ 0x38
c0de5988:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de598a:	491e      	ldr	r1, [pc, #120]	@ (c0de5a04 <displayChoicePage+0xd8>)
c0de598c:	4479      	add	r1, pc
c0de598e:	e00f      	b.n	c0de59b0 <displayChoicePage+0x84>
c0de5990:	1c4a      	adds	r2, r1, #1
c0de5992:	42a2      	cmp	r2, r4
c0de5994:	d112      	bne.n	c0de59bc <displayChoicePage+0x90>
c0de5996:	4a1c      	ldr	r2, [pc, #112]	@ (c0de5a08 <displayChoicePage+0xdc>)
c0de5998:	eb09 0103 	add.w	r1, r9, r3
c0de599c:	447a      	add	r2, pc
c0de599e:	638a      	str	r2, [r1, #56]	@ 0x38
c0de59a0:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de59a2:	491a      	ldr	r1, [pc, #104]	@ (c0de5a0c <displayChoicePage+0xe0>)
c0de59a4:	4479      	add	r1, pc
c0de59a6:	e003      	b.n	c0de59b0 <displayChoicePage+0x84>
c0de59a8:	eb09 0103 	add.w	r1, r9, r3
c0de59ac:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de59ae:	b109      	cbz	r1, c0de59b4 <displayChoicePage+0x88>
c0de59b0:	2300      	movs	r3, #0
c0de59b2:	e017      	b.n	c0de59e4 <displayChoicePage+0xb8>
c0de59b4:	eb09 0103 	add.w	r1, r9, r3
c0de59b8:	6c4b      	ldr	r3, [r1, #68]	@ 0x44
c0de59ba:	e012      	b.n	c0de59e2 <displayChoicePage+0xb6>
c0de59bc:	eb09 0203 	add.w	r2, r9, r3
c0de59c0:	6d52      	ldr	r2, [r2, #84]	@ 0x54
c0de59c2:	b162      	cbz	r2, c0de59de <displayChoicePage+0xb2>
c0de59c4:	7913      	ldrb	r3, [r2, #4]
c0de59c6:	2b03      	cmp	r3, #3
c0de59c8:	d109      	bne.n	c0de59de <displayChoicePage+0xb2>
c0de59ca:	1a61      	subs	r1, r4, r1
c0de59cc:	f06f 0307 	mvn.w	r3, #7
c0de59d0:	e9d2 4203 	ldrd	r4, r2, [r2, #12]
c0de59d4:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de59d8:	5853      	ldr	r3, [r2, r1]
c0de59da:	5862      	ldr	r2, [r4, r1]
c0de59dc:	e001      	b.n	c0de59e2 <displayChoicePage+0xb6>
c0de59de:	2200      	movs	r2, #0
c0de59e0:	2300      	movs	r3, #0
c0de59e2:	2100      	movs	r1, #0
c0de59e4:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5a10 <displayChoicePage+0xe4>)
c0de59e6:	2400      	movs	r4, #0
c0de59e8:	9402      	str	r4, [sp, #8]
c0de59ea:	447d      	add	r5, pc
c0de59ec:	e9cd 5400 	strd	r5, r4, [sp]
c0de59f0:	f7ff fd5a 	bl	c0de54a8 <drawStep>
c0de59f4:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de59f8:	f001 bd4d 	b.w	c0de7496 <nbgl_refresh>
c0de59fc:	000009d0 	.word	0x000009d0
c0de5a00:	00000fe9 	.word	0x00000fe9
c0de5a04:	000027be 	.word	0x000027be
c0de5a08:	00000fe5 	.word	0x00000fe5
c0de5a0c:	0000272a 	.word	0x0000272a
c0de5a10:	00000fab 	.word	0x00000fab

c0de5a14 <getContentAtIdx>:
c0de5a14:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5a16:	b087      	sub	sp, #28
c0de5a18:	460d      	mov	r5, r1
c0de5a1a:	4606      	mov	r6, r0
c0de5a1c:	a801      	add	r0, sp, #4
c0de5a1e:	2118      	movs	r1, #24
c0de5a20:	4614      	mov	r4, r2
c0de5a22:	f002 fa53 	bl	c0de7ecc <__aeabi_memclr>
c0de5a26:	2d00      	cmp	r5, #0
c0de5a28:	d428      	bmi.n	c0de5a7c <getContentAtIdx+0x68>
c0de5a2a:	7a30      	ldrb	r0, [r6, #8]
c0de5a2c:	4285      	cmp	r5, r0
c0de5a2e:	da25      	bge.n	c0de5a7c <getContentAtIdx+0x68>
c0de5a30:	7830      	ldrb	r0, [r6, #0]
c0de5a32:	b338      	cbz	r0, c0de5a84 <getContentAtIdx+0x70>
c0de5a34:	b314      	cbz	r4, c0de5a7c <getContentAtIdx+0x68>
c0de5a36:	4620      	mov	r0, r4
c0de5a38:	2138      	movs	r1, #56	@ 0x38
c0de5a3a:	f002 fa47 	bl	c0de7ecc <__aeabi_memclr>
c0de5a3e:	4821      	ldr	r0, [pc, #132]	@ (c0de5ac4 <getContentAtIdx+0xb0>)
c0de5a40:	4448      	add	r0, r9
c0de5a42:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5a44:	b342      	cbz	r2, c0de5a98 <getContentAtIdx+0x84>
c0de5a46:	b2e8      	uxtb	r0, r5
c0de5a48:	ad01      	add	r5, sp, #4
c0de5a4a:	4629      	mov	r1, r5
c0de5a4c:	4790      	blx	r2
c0de5a4e:	b1a8      	cbz	r0, c0de5a7c <getContentAtIdx+0x68>
c0de5a50:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de5a54:	280a      	cmp	r0, #10
c0de5a56:	7020      	strb	r0, [r4, #0]
c0de5a58:	d023      	beq.n	c0de5aa2 <getContentAtIdx+0x8e>
c0de5a5a:	2803      	cmp	r0, #3
c0de5a5c:	d008      	beq.n	c0de5a70 <getContentAtIdx+0x5c>
c0de5a5e:	2804      	cmp	r0, #4
c0de5a60:	d025      	beq.n	c0de5aae <getContentAtIdx+0x9a>
c0de5a62:	2807      	cmp	r0, #7
c0de5a64:	d029      	beq.n	c0de5aba <getContentAtIdx+0xa6>
c0de5a66:	2808      	cmp	r0, #8
c0de5a68:	d002      	beq.n	c0de5a70 <getContentAtIdx+0x5c>
c0de5a6a:	2809      	cmp	r0, #9
c0de5a6c:	d019      	beq.n	c0de5aa2 <getContentAtIdx+0x8e>
c0de5a6e:	b928      	cbnz	r0, c0de5a7c <getContentAtIdx+0x68>
c0de5a70:	1d28      	adds	r0, r5, #4
c0de5a72:	1d21      	adds	r1, r4, #4
c0de5a74:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de5a78:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de5a7a:	e000      	b.n	c0de5a7e <getContentAtIdx+0x6a>
c0de5a7c:	2400      	movs	r4, #0
c0de5a7e:	4620      	mov	r0, r4
c0de5a80:	b007      	add	sp, #28
c0de5a82:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5a84:	6871      	ldr	r1, [r6, #4]
c0de5a86:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de5a8a:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de5a8e:	b007      	add	sp, #28
c0de5a90:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5a94:	f001 bf0e 	b.w	c0de78b4 <pic>
c0de5a98:	6872      	ldr	r2, [r6, #4]
c0de5a9a:	b2e8      	uxtb	r0, r5
c0de5a9c:	4621      	mov	r1, r4
c0de5a9e:	4790      	blx	r2
c0de5aa0:	e7ed      	b.n	c0de5a7e <getContentAtIdx+0x6a>
c0de5aa2:	1d28      	adds	r0, r5, #4
c0de5aa4:	1d21      	adds	r1, r4, #4
c0de5aa6:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de5aaa:	c12c      	stmia	r1!, {r2, r3, r5}
c0de5aac:	e7e7      	b.n	c0de5a7e <getContentAtIdx+0x6a>
c0de5aae:	1d28      	adds	r0, r5, #4
c0de5ab0:	1d21      	adds	r1, r4, #4
c0de5ab2:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de5ab6:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de5ab8:	e7e1      	b.n	c0de5a7e <getContentAtIdx+0x6a>
c0de5aba:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de5abe:	e9c4 0101 	strd	r0, r1, [r4, #4]
c0de5ac2:	e7dc      	b.n	c0de5a7e <getContentAtIdx+0x6a>
c0de5ac4:	000009d0 	.word	0x000009d0

c0de5ac8 <getContentNbElement>:
c0de5ac8:	7802      	ldrb	r2, [r0, #0]
c0de5aca:	2101      	movs	r1, #1
c0de5acc:	b1a2      	cbz	r2, c0de5af8 <getContentNbElement+0x30>
c0de5ace:	2a03      	cmp	r2, #3
c0de5ad0:	d012      	beq.n	c0de5af8 <getContentNbElement+0x30>
c0de5ad2:	2a0a      	cmp	r2, #10
c0de5ad4:	d007      	beq.n	c0de5ae6 <getContentNbElement+0x1e>
c0de5ad6:	2a07      	cmp	r2, #7
c0de5ad8:	d007      	beq.n	c0de5aea <getContentNbElement+0x22>
c0de5ada:	2a08      	cmp	r2, #8
c0de5adc:	d007      	beq.n	c0de5aee <getContentNbElement+0x26>
c0de5ade:	2a09      	cmp	r2, #9
c0de5ae0:	d007      	beq.n	c0de5af2 <getContentNbElement+0x2a>
c0de5ae2:	2a04      	cmp	r2, #4
c0de5ae4:	d107      	bne.n	c0de5af6 <getContentNbElement+0x2e>
c0de5ae6:	7b01      	ldrb	r1, [r0, #12]
c0de5ae8:	e006      	b.n	c0de5af8 <getContentNbElement+0x30>
c0de5aea:	7a01      	ldrb	r1, [r0, #8]
c0de5aec:	e004      	b.n	c0de5af8 <getContentNbElement+0x30>
c0de5aee:	7c01      	ldrb	r1, [r0, #16]
c0de5af0:	e002      	b.n	c0de5af8 <getContentNbElement+0x30>
c0de5af2:	7a41      	ldrb	r1, [r0, #9]
c0de5af4:	e000      	b.n	c0de5af8 <getContentNbElement+0x30>
c0de5af6:	2100      	movs	r1, #0
c0de5af8:	4608      	mov	r0, r1
c0de5afa:	4770      	bx	lr

c0de5afc <displayContent>:
c0de5afc:	b570      	push	{r4, r5, r6, lr}
c0de5afe:	b08a      	sub	sp, #40	@ 0x28
c0de5b00:	460d      	mov	r5, r1
c0de5b02:	4604      	mov	r4, r0
c0de5b04:	a804      	add	r0, sp, #16
c0de5b06:	2118      	movs	r1, #24
c0de5b08:	f002 f9e0 	bl	c0de7ecc <__aeabi_memclr>
c0de5b0c:	4820      	ldr	r0, [pc, #128]	@ (c0de5b90 <displayContent+0x94>)
c0de5b0e:	f000 ff57 	bl	c0de69c0 <OUTLINED_FUNCTION_1>
c0de5b12:	dd14      	ble.n	c0de5b3e <displayContent+0x42>
c0de5b14:	a904      	add	r1, sp, #16
c0de5b16:	4628      	mov	r0, r5
c0de5b18:	f000 f846 	bl	c0de5ba8 <getContentPage>
c0de5b1c:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5b20:	b318      	cbz	r0, c0de5b6a <displayContent+0x6e>
c0de5b22:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5b26:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5b2a:	481e      	ldr	r0, [pc, #120]	@ (c0de5ba4 <displayContent+0xa8>)
c0de5b2c:	4478      	add	r0, pc
c0de5b2e:	2b00      	cmp	r3, #0
c0de5b30:	9000      	str	r0, [sp, #0]
c0de5b32:	4620      	mov	r0, r4
c0de5b34:	bf18      	it	ne
c0de5b36:	2301      	movne	r3, #1
c0de5b38:	f000 f8d8 	bl	c0de5cec <drawSwitchStep>
c0de5b3c:	e023      	b.n	c0de5b86 <displayContent+0x8a>
c0de5b3e:	4448      	add	r0, r9
c0de5b40:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de5b42:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5b44:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de5b46:	4a13      	ldr	r2, [pc, #76]	@ (c0de5b94 <displayContent+0x98>)
c0de5b48:	2900      	cmp	r1, #0
c0de5b4a:	447a      	add	r2, pc
c0de5b4c:	bf18      	it	ne
c0de5b4e:	460a      	movne	r2, r1
c0de5b50:	9205      	str	r2, [sp, #20]
c0de5b52:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5b56:	4910      	ldr	r1, [pc, #64]	@ (c0de5b98 <displayContent+0x9c>)
c0de5b58:	4a10      	ldr	r2, [pc, #64]	@ (c0de5b9c <displayContent+0xa0>)
c0de5b5a:	2803      	cmp	r0, #3
c0de5b5c:	447a      	add	r2, pc
c0de5b5e:	4479      	add	r1, pc
c0de5b60:	bf08      	it	eq
c0de5b62:	460a      	moveq	r2, r1
c0de5b64:	9207      	str	r2, [sp, #28]
c0de5b66:	2000      	movs	r0, #0
c0de5b68:	e002      	b.n	c0de5b70 <displayContent+0x74>
c0de5b6a:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de5b6e:	0040      	lsls	r0, r0, #1
c0de5b70:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5b74:	9907      	ldr	r1, [sp, #28]
c0de5b76:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5ba0 <displayContent+0xa4>)
c0de5b78:	b2c0      	uxtb	r0, r0
c0de5b7a:	2500      	movs	r5, #0
c0de5b7c:	9002      	str	r0, [sp, #8]
c0de5b7e:	4620      	mov	r0, r4
c0de5b80:	447e      	add	r6, pc
c0de5b82:	f000 ff3f 	bl	c0de6a04 <OUTLINED_FUNCTION_6>
c0de5b86:	f001 fc86 	bl	c0de7496 <nbgl_refresh>
c0de5b8a:	b00a      	add	sp, #40	@ 0x28
c0de5b8c:	bd70      	pop	{r4, r5, r6, pc}
c0de5b8e:	bf00      	nop
c0de5b90:	000009d0 	.word	0x000009d0
c0de5b94:	000028c3 	.word	0x000028c3
c0de5b98:	00002570 	.word	0x00002570
c0de5b9c:	0000252c 	.word	0x0000252c
c0de5ba0:	000001b9 	.word	0x000001b9
c0de5ba4:	0000020d 	.word	0x0000020d

c0de5ba8 <getContentPage>:
c0de5ba8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5baa:	b093      	sub	sp, #76	@ 0x4c
c0de5bac:	4606      	mov	r6, r0
c0de5bae:	2000      	movs	r0, #0
c0de5bb0:	460c      	mov	r4, r1
c0de5bb2:	2138      	movs	r1, #56	@ 0x38
c0de5bb4:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de5bb8:	ad04      	add	r5, sp, #16
c0de5bba:	4628      	mov	r0, r5
c0de5bbc:	f002 f986 	bl	c0de7ecc <__aeabi_memclr>
c0de5bc0:	4f47      	ldr	r7, [pc, #284]	@ (c0de5ce0 <getContentPage+0x138>)
c0de5bc2:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de5bc6:	462a      	mov	r2, r5
c0de5bc8:	eb09 0007 	add.w	r0, r9, r7
c0de5bcc:	f000 ff13 	bl	c0de69f6 <OUTLINED_FUNCTION_4>
c0de5bd0:	2800      	cmp	r0, #0
c0de5bd2:	d07a      	beq.n	c0de5cca <getContentPage+0x122>
c0de5bd4:	4605      	mov	r5, r0
c0de5bd6:	7800      	ldrb	r0, [r0, #0]
c0de5bd8:	280a      	cmp	r0, #10
c0de5bda:	d011      	beq.n	c0de5c00 <getContentPage+0x58>
c0de5bdc:	2803      	cmp	r0, #3
c0de5bde:	d02c      	beq.n	c0de5c3a <getContentPage+0x92>
c0de5be0:	2804      	cmp	r0, #4
c0de5be2:	d035      	beq.n	c0de5c50 <getContentPage+0xa8>
c0de5be4:	2807      	cmp	r0, #7
c0de5be6:	d045      	beq.n	c0de5c74 <getContentPage+0xcc>
c0de5be8:	2808      	cmp	r0, #8
c0de5bea:	d060      	beq.n	c0de5cae <getContentPage+0x106>
c0de5bec:	2809      	cmp	r0, #9
c0de5bee:	d007      	beq.n	c0de5c00 <getContentPage+0x58>
c0de5bf0:	2800      	cmp	r0, #0
c0de5bf2:	d16a      	bne.n	c0de5cca <getContentPage+0x122>
c0de5bf4:	6868      	ldr	r0, [r5, #4]
c0de5bf6:	f001 fe5d 	bl	c0de78b4 <pic>
c0de5bfa:	6060      	str	r0, [r4, #4]
c0de5bfc:	68a8      	ldr	r0, [r5, #8]
c0de5bfe:	e019      	b.n	c0de5c34 <getContentPage+0x8c>
c0de5c00:	1d28      	adds	r0, r5, #4
c0de5c02:	eb09 0607 	add.w	r6, r9, r7
c0de5c06:	f001 fe55 	bl	c0de78b4 <pic>
c0de5c0a:	6800      	ldr	r0, [r0, #0]
c0de5c0c:	f001 fe52 	bl	c0de78b4 <pic>
c0de5c10:	f896 102c 	ldrb.w	r1, [r6, #44]	@ 0x2c
c0de5c14:	4605      	mov	r5, r0
c0de5c16:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de5c18:	2910      	cmp	r1, #16
c0de5c1a:	d100      	bne.n	c0de5c1e <getContentPage+0x76>
c0de5c1c:	b918      	cbnz	r0, c0de5c26 <getContentPage+0x7e>
c0de5c1e:	290f      	cmp	r1, #15
c0de5c20:	d155      	bne.n	c0de5cce <getContentPage+0x126>
c0de5c22:	2800      	cmp	r0, #0
c0de5c24:	d053      	beq.n	c0de5cce <getContentPage+0x126>
c0de5c26:	f001 fe45 	bl	c0de78b4 <pic>
c0de5c2a:	6060      	str	r0, [r4, #4]
c0de5c2c:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5c30:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5c34:	f001 fe3e 	bl	c0de78b4 <pic>
c0de5c38:	e046      	b.n	c0de5cc8 <getContentPage+0x120>
c0de5c3a:	68a8      	ldr	r0, [r5, #8]
c0de5c3c:	4e29      	ldr	r6, [pc, #164]	@ (c0de5ce4 <getContentPage+0x13c>)
c0de5c3e:	447e      	add	r6, pc
c0de5c40:	47b0      	blx	r6
c0de5c42:	60e0      	str	r0, [r4, #12]
c0de5c44:	6868      	ldr	r0, [r5, #4]
c0de5c46:	47b0      	blx	r6
c0de5c48:	6060      	str	r0, [r4, #4]
c0de5c4a:	68e8      	ldr	r0, [r5, #12]
c0de5c4c:	47b0      	blx	r6
c0de5c4e:	e03b      	b.n	c0de5cc8 <getContentPage+0x120>
c0de5c50:	f104 0015 	add.w	r0, r4, #21
c0de5c54:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5c58:	f104 020c 	add.w	r2, r4, #12
c0de5c5c:	f104 0310 	add.w	r3, r4, #16
c0de5c60:	e9cd 3200 	strd	r3, r2, [sp]
c0de5c64:	9002      	str	r0, [sp, #8]
c0de5c66:	1d28      	adds	r0, r5, #4
c0de5c68:	1d22      	adds	r2, r4, #4
c0de5c6a:	f104 0308 	add.w	r3, r4, #8
c0de5c6e:	f000 f8b9 	bl	c0de5de4 <getPairData>
c0de5c72:	e02a      	b.n	c0de5cca <getContentPage+0x122>
c0de5c74:	2001      	movs	r0, #1
c0de5c76:	444f      	add	r7, r9
c0de5c78:	7020      	strb	r0, [r4, #0]
c0de5c7a:	6868      	ldr	r0, [r5, #4]
c0de5c7c:	f001 fe1a 	bl	c0de78b4 <pic>
c0de5c80:	4919      	ldr	r1, [pc, #100]	@ (c0de5ce8 <getContentPage+0x140>)
c0de5c82:	4479      	add	r1, pc
c0de5c84:	63b9      	str	r1, [r7, #56]	@ 0x38
c0de5c86:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de5c8a:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5c8e:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de5c92:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5c96:	6062      	str	r2, [r4, #4]
c0de5c98:	6841      	ldr	r1, [r0, #4]
c0de5c9a:	60a1      	str	r1, [r4, #8]
c0de5c9c:	7a00      	ldrb	r0, [r0, #8]
c0de5c9e:	1e41      	subs	r1, r0, #1
c0de5ca0:	bf18      	it	ne
c0de5ca2:	2101      	movne	r1, #1
c0de5ca4:	2e00      	cmp	r6, #0
c0de5ca6:	bf08      	it	eq
c0de5ca8:	4601      	moveq	r1, r0
c0de5caa:	7521      	strb	r1, [r4, #20]
c0de5cac:	e00d      	b.n	c0de5cca <getContentPage+0x122>
c0de5cae:	6868      	ldr	r0, [r5, #4]
c0de5cb0:	f001 fe00 	bl	c0de78b4 <pic>
c0de5cb4:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de5cb8:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5cbc:	6060      	str	r0, [r4, #4]
c0de5cbe:	68a8      	ldr	r0, [r5, #8]
c0de5cc0:	f001 fdf8 	bl	c0de78b4 <pic>
c0de5cc4:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5cc8:	60a0      	str	r0, [r4, #8]
c0de5cca:	b013      	add	sp, #76	@ 0x4c
c0de5ccc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5cce:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5cd2:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5cd6:	f001 fded 	bl	c0de78b4 <pic>
c0de5cda:	6060      	str	r0, [r4, #4]
c0de5cdc:	e7f5      	b.n	c0de5cca <getContentPage+0x122>
c0de5cde:	bf00      	nop
c0de5ce0:	000009d0 	.word	0x000009d0
c0de5ce4:	00001c73 	.word	0x00001c73
c0de5ce8:	000001a7 	.word	0x000001a7

c0de5cec <drawSwitchStep>:
c0de5cec:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5cee:	b085      	sub	sp, #20
c0de5cf0:	4c11      	ldr	r4, [pc, #68]	@ (c0de5d38 <drawSwitchStep+0x4c>)
c0de5cf2:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de5cf6:	2600      	movs	r6, #0
c0de5cf8:	eb09 0504 	add.w	r5, r9, r4
c0de5cfc:	f895 7034 	ldrb.w	r7, [r5, #52]	@ 0x34
c0de5d00:	2500      	movs	r5, #0
c0de5d02:	2f02      	cmp	r7, #2
c0de5d04:	d30a      	bcc.n	c0de5d1c <drawSwitchStep+0x30>
c0de5d06:	444c      	add	r4, r9
c0de5d08:	f994 4035 	ldrsb.w	r4, [r4, #53]	@ 0x35
c0de5d0c:	b12c      	cbz	r4, c0de5d1a <drawSwitchStep+0x2e>
c0de5d0e:	3f01      	subs	r7, #1
c0de5d10:	2603      	movs	r6, #3
c0de5d12:	42a7      	cmp	r7, r4
c0de5d14:	bf08      	it	eq
c0de5d16:	2602      	moveq	r6, #2
c0de5d18:	e000      	b.n	c0de5d1c <drawSwitchStep+0x30>
c0de5d1a:	2601      	movs	r6, #1
c0de5d1c:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5d20:	f88d 3010 	strb.w	r3, [sp, #16]
c0de5d24:	9500      	str	r5, [sp, #0]
c0de5d26:	4330      	orrs	r0, r6
c0de5d28:	ab02      	add	r3, sp, #8
c0de5d2a:	4661      	mov	r1, ip
c0de5d2c:	2200      	movs	r2, #0
c0de5d2e:	f7ff f81f 	bl	c0de4d70 <nbgl_stepDrawSwitch>
c0de5d32:	b005      	add	sp, #20
c0de5d34:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5d36:	bf00      	nop
c0de5d38:	000009d0 	.word	0x000009d0

c0de5d3c <contentCallback>:
c0de5d3c:	b5e0      	push	{r5, r6, r7, lr}
c0de5d3e:	4608      	mov	r0, r1
c0de5d40:	f10d 0107 	add.w	r1, sp, #7
c0de5d44:	f000 f928 	bl	c0de5f98 <buttonGenericCallback>
c0de5d48:	b130      	cbz	r0, c0de5d58 <contentCallback+0x1c>
c0de5d4a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5d4e:	2100      	movs	r1, #0
c0de5d50:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5d54:	f7ff bed2 	b.w	c0de5afc <displayContent>
c0de5d58:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5d5c <getContentElemAtIdx>:
c0de5d5c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5d60:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5ddc <getContentElemAtIdx+0x80>)
c0de5d62:	4606      	mov	r6, r0
c0de5d64:	2700      	movs	r7, #0
c0de5d66:	eb09 0004 	add.w	r0, r9, r4
c0de5d6a:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
c0de5d6e:	2b10      	cmp	r3, #16
c0de5d70:	d830      	bhi.n	c0de5dd4 <getContentElemAtIdx+0x78>
c0de5d72:	4693      	mov	fp, r2
c0de5d74:	2201      	movs	r2, #1
c0de5d76:	9101      	str	r1, [sp, #4]
c0de5d78:	fa02 f303 	lsl.w	r3, r2, r3
c0de5d7c:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de5d80:	d004      	beq.n	c0de5d8c <getContentElemAtIdx+0x30>
c0de5d82:	eb09 0004 	add.w	r0, r9, r4
c0de5d86:	46a2      	mov	sl, r4
c0de5d88:	6c84      	ldr	r4, [r0, #72]	@ 0x48
c0de5d8a:	e005      	b.n	c0de5d98 <getContentElemAtIdx+0x3c>
c0de5d8c:	4a14      	ldr	r2, [pc, #80]	@ (c0de5de0 <getContentElemAtIdx+0x84>)
c0de5d8e:	4213      	tst	r3, r2
c0de5d90:	d020      	beq.n	c0de5dd4 <getContentElemAtIdx+0x78>
c0de5d92:	46a2      	mov	sl, r4
c0de5d94:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0de5d98:	2700      	movs	r7, #0
c0de5d9a:	2000      	movs	r0, #0
c0de5d9c:	f04f 0800 	mov.w	r8, #0
c0de5da0:	4605      	mov	r5, r0
c0de5da2:	7a20      	ldrb	r0, [r4, #8]
c0de5da4:	4580      	cmp	r8, r0
c0de5da6:	d215      	bcs.n	c0de5dd4 <getContentElemAtIdx+0x78>
c0de5da8:	fa4f f188 	sxtb.w	r1, r8
c0de5dac:	4620      	mov	r0, r4
c0de5dae:	465a      	mov	r2, fp
c0de5db0:	f7ff fe30 	bl	c0de5a14 <getContentAtIdx>
c0de5db4:	4607      	mov	r7, r0
c0de5db6:	f7ff fe87 	bl	c0de5ac8 <getContentNbElement>
c0de5dba:	b2e9      	uxtb	r1, r5
c0de5dbc:	f108 0801 	add.w	r8, r8, #1
c0de5dc0:	4408      	add	r0, r1
c0de5dc2:	42b0      	cmp	r0, r6
c0de5dc4:	d9ec      	bls.n	c0de5da0 <getContentElemAtIdx+0x44>
c0de5dc6:	eb09 000a 	add.w	r0, r9, sl
c0de5dca:	9901      	ldr	r1, [sp, #4]
c0de5dcc:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de5dd0:	1b40      	subs	r0, r0, r5
c0de5dd2:	7008      	strb	r0, [r1, #0]
c0de5dd4:	4638      	mov	r0, r7
c0de5dd6:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5dda:	bf00      	nop
c0de5ddc:	000009d0 	.word	0x000009d0
c0de5de0:	00010008 	.word	0x00010008

c0de5de4 <getPairData>:
c0de5de4:	b5b0      	push	{r4, r5, r7, lr}
c0de5de6:	4615      	mov	r5, r2
c0de5de8:	6802      	ldr	r2, [r0, #0]
c0de5dea:	461c      	mov	r4, r3
c0de5dec:	b112      	cbz	r2, c0de5df4 <getPairData+0x10>
c0de5dee:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5df2:	e002      	b.n	c0de5dfa <getPairData+0x16>
c0de5df4:	6842      	ldr	r2, [r0, #4]
c0de5df6:	4608      	mov	r0, r1
c0de5df8:	4790      	blx	r2
c0de5dfa:	f001 fd5b 	bl	c0de78b4 <pic>
c0de5dfe:	6802      	ldr	r2, [r0, #0]
c0de5e00:	9904      	ldr	r1, [sp, #16]
c0de5e02:	602a      	str	r2, [r5, #0]
c0de5e04:	6842      	ldr	r2, [r0, #4]
c0de5e06:	6022      	str	r2, [r4, #0]
c0de5e08:	7b02      	ldrb	r2, [r0, #12]
c0de5e0a:	0753      	lsls	r3, r2, #29
c0de5e0c:	d403      	bmi.n	c0de5e16 <getPairData+0x32>
c0de5e0e:	0792      	lsls	r2, r2, #30
c0de5e10:	d404      	bmi.n	c0de5e1c <getPairData+0x38>
c0de5e12:	2000      	movs	r0, #0
c0de5e14:	e000      	b.n	c0de5e18 <getPairData+0x34>
c0de5e16:	6880      	ldr	r0, [r0, #8]
c0de5e18:	6008      	str	r0, [r1, #0]
c0de5e1a:	bdb0      	pop	{r4, r5, r7, pc}
c0de5e1c:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5e20:	2301      	movs	r3, #1
c0de5e22:	700b      	strb	r3, [r1, #0]
c0de5e24:	6880      	ldr	r0, [r0, #8]
c0de5e26:	6010      	str	r0, [r2, #0]
c0de5e28:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5e2c <onSwitchAction>:
c0de5e2c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5e2e:	b08f      	sub	sp, #60	@ 0x3c
c0de5e30:	ac01      	add	r4, sp, #4
c0de5e32:	2138      	movs	r1, #56	@ 0x38
c0de5e34:	4620      	mov	r0, r4
c0de5e36:	f002 f849 	bl	c0de7ecc <__aeabi_memclr>
c0de5e3a:	4e26      	ldr	r6, [pc, #152]	@ (c0de5ed4 <onSwitchAction+0xa8>)
c0de5e3c:	f10d 0103 	add.w	r1, sp, #3
c0de5e40:	4622      	mov	r2, r4
c0de5e42:	eb09 0006 	add.w	r0, r9, r6
c0de5e46:	f000 fdd6 	bl	c0de69f6 <OUTLINED_FUNCTION_4>
c0de5e4a:	2800      	cmp	r0, #0
c0de5e4c:	d040      	beq.n	c0de5ed0 <onSwitchAction+0xa4>
c0de5e4e:	4604      	mov	r4, r0
c0de5e50:	7800      	ldrb	r0, [r0, #0]
c0de5e52:	2807      	cmp	r0, #7
c0de5e54:	d13c      	bne.n	c0de5ed0 <onSwitchAction+0xa4>
c0de5e56:	6860      	ldr	r0, [r4, #4]
c0de5e58:	eb09 0706 	add.w	r7, r9, r6
c0de5e5c:	f001 fd2a 	bl	c0de78b4 <pic>
c0de5e60:	4605      	mov	r5, r0
c0de5e62:	f897 002c 	ldrb.w	r0, [r7, #44]	@ 0x2c
c0de5e66:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de5e6a:	2810      	cmp	r0, #16
c0de5e6c:	d811      	bhi.n	c0de5e92 <onSwitchAction+0x66>
c0de5e6e:	2101      	movs	r1, #1
c0de5e70:	fa01 f000 	lsl.w	r0, r1, r0
c0de5e74:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de5e78:	d004      	beq.n	c0de5e84 <onSwitchAction+0x58>
c0de5e7a:	2000      	movs	r0, #0
c0de5e7c:	2101      	movs	r1, #1
c0de5e7e:	f000 f82d 	bl	c0de5edc <displaySettingsPage>
c0de5e82:	e006      	b.n	c0de5e92 <onSwitchAction+0x66>
c0de5e84:	4914      	ldr	r1, [pc, #80]	@ (c0de5ed8 <onSwitchAction+0xac>)
c0de5e86:	4208      	tst	r0, r1
c0de5e88:	d003      	beq.n	c0de5e92 <onSwitchAction+0x66>
c0de5e8a:	2000      	movs	r0, #0
c0de5e8c:	2101      	movs	r1, #1
c0de5e8e:	f7ff fe35 	bl	c0de5afc <displayContent>
c0de5e92:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de5e94:	b188      	cbz	r0, c0de5eba <onSwitchAction+0x8e>
c0de5e96:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de5e9a:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5e9e:	f001 fd09 	bl	c0de78b4 <pic>
c0de5ea2:	7a21      	ldrb	r1, [r4, #8]
c0de5ea4:	eb09 0206 	add.w	r2, r9, r6
c0de5ea8:	4603      	mov	r3, r0
c0de5eaa:	7a60      	ldrb	r0, [r4, #9]
c0de5eac:	3901      	subs	r1, #1
c0de5eae:	bf18      	it	ne
c0de5eb0:	2101      	movne	r1, #1
c0de5eb2:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de5eb6:	4798      	blx	r3
c0de5eb8:	e00a      	b.n	c0de5ed0 <onSwitchAction+0xa4>
c0de5eba:	eb09 0006 	add.w	r0, r9, r6
c0de5ebe:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de5ec0:	b132      	cbz	r2, c0de5ed0 <onSwitchAction+0xa4>
c0de5ec2:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de5ec6:	2100      	movs	r1, #0
c0de5ec8:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5ecc:	7a40      	ldrb	r0, [r0, #9]
c0de5ece:	4790      	blx	r2
c0de5ed0:	b00f      	add	sp, #60	@ 0x3c
c0de5ed2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5ed4:	000009d0 	.word	0x000009d0
c0de5ed8:	00010008 	.word	0x00010008

c0de5edc <displaySettingsPage>:
c0de5edc:	b5b0      	push	{r4, r5, r7, lr}
c0de5ede:	b08a      	sub	sp, #40	@ 0x28
c0de5ee0:	460d      	mov	r5, r1
c0de5ee2:	4604      	mov	r4, r0
c0de5ee4:	a804      	add	r0, sp, #16
c0de5ee6:	2118      	movs	r1, #24
c0de5ee8:	f001 fff0 	bl	c0de7ecc <__aeabi_memclr>
c0de5eec:	481c      	ldr	r0, [pc, #112]	@ (c0de5f60 <displaySettingsPage+0x84>)
c0de5eee:	f000 fd67 	bl	c0de69c0 <OUTLINED_FUNCTION_1>
c0de5ef2:	dd14      	ble.n	c0de5f1e <displaySettingsPage+0x42>
c0de5ef4:	a904      	add	r1, sp, #16
c0de5ef6:	4628      	mov	r0, r5
c0de5ef8:	f7ff fe56 	bl	c0de5ba8 <getContentPage>
c0de5efc:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5f00:	b1e8      	cbz	r0, c0de5f3e <displaySettingsPage+0x62>
c0de5f02:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de5f06:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de5f0a:	481a      	ldr	r0, [pc, #104]	@ (c0de5f74 <displaySettingsPage+0x98>)
c0de5f0c:	4478      	add	r0, pc
c0de5f0e:	2b00      	cmp	r3, #0
c0de5f10:	9000      	str	r0, [sp, #0]
c0de5f12:	4620      	mov	r0, r4
c0de5f14:	bf18      	it	ne
c0de5f16:	2301      	movne	r3, #1
c0de5f18:	f7ff fee8 	bl	c0de5cec <drawSwitchStep>
c0de5f1c:	e01b      	b.n	c0de5f56 <displaySettingsPage+0x7a>
c0de5f1e:	4448      	add	r0, r9
c0de5f20:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de5f24:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de5f26:	4b0f      	ldr	r3, [pc, #60]	@ (c0de5f64 <displaySettingsPage+0x88>)
c0de5f28:	447b      	add	r3, pc
c0de5f2a:	290f      	cmp	r1, #15
c0de5f2c:	bf08      	it	eq
c0de5f2e:	4613      	moveq	r3, r2
c0de5f30:	6383      	str	r3, [r0, #56]	@ 0x38
c0de5f32:	480d      	ldr	r0, [pc, #52]	@ (c0de5f68 <displaySettingsPage+0x8c>)
c0de5f34:	4478      	add	r0, pc
c0de5f36:	9005      	str	r0, [sp, #20]
c0de5f38:	480c      	ldr	r0, [pc, #48]	@ (c0de5f6c <displaySettingsPage+0x90>)
c0de5f3a:	4478      	add	r0, pc
c0de5f3c:	9007      	str	r0, [sp, #28]
c0de5f3e:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de5f42:	9907      	ldr	r1, [sp, #28]
c0de5f44:	4d0a      	ldr	r5, [pc, #40]	@ (c0de5f70 <displaySettingsPage+0x94>)
c0de5f46:	2000      	movs	r0, #0
c0de5f48:	9002      	str	r0, [sp, #8]
c0de5f4a:	447d      	add	r5, pc
c0de5f4c:	e9cd 5000 	strd	r5, r0, [sp]
c0de5f50:	4620      	mov	r0, r4
c0de5f52:	f7ff faa9 	bl	c0de54a8 <drawStep>
c0de5f56:	f001 fa9e 	bl	c0de7496 <nbgl_refresh>
c0de5f5a:	b00a      	add	sp, #40	@ 0x28
c0de5f5c:	bdb0      	pop	{r4, r5, r7, pc}
c0de5f5e:	bf00      	nop
c0de5f60:	000009d0 	.word	0x000009d0
c0de5f64:	fffff10d 	.word	0xfffff10d
c0de5f68:	000024d9 	.word	0x000024d9
c0de5f6c:	0000214e 	.word	0x0000214e
c0de5f70:	0000002b 	.word	0x0000002b
c0de5f74:	00000069 	.word	0x00000069

c0de5f78 <settingsCallback>:
c0de5f78:	b5e0      	push	{r5, r6, r7, lr}
c0de5f7a:	4608      	mov	r0, r1
c0de5f7c:	f10d 0107 	add.w	r1, sp, #7
c0de5f80:	f000 f80a 	bl	c0de5f98 <buttonGenericCallback>
c0de5f84:	b130      	cbz	r0, c0de5f94 <settingsCallback+0x1c>
c0de5f86:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5f8a:	2100      	movs	r1, #0
c0de5f8c:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5f90:	f7ff bfa4 	b.w	c0de5edc <displaySettingsPage>
c0de5f94:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de5f98 <buttonGenericCallback>:
c0de5f98:	b5b0      	push	{r4, r5, r7, lr}
c0de5f9a:	b090      	sub	sp, #64	@ 0x40
c0de5f9c:	460c      	mov	r4, r1
c0de5f9e:	4605      	mov	r5, r0
c0de5fa0:	a801      	add	r0, sp, #4
c0de5fa2:	2138      	movs	r1, #56	@ 0x38
c0de5fa4:	f001 ff92 	bl	c0de7ecc <__aeabi_memclr>
c0de5fa8:	2d04      	cmp	r5, #4
c0de5faa:	d00d      	beq.n	c0de5fc8 <buttonGenericCallback+0x30>
c0de5fac:	2d01      	cmp	r5, #1
c0de5fae:	d012      	beq.n	c0de5fd6 <buttonGenericCallback+0x3e>
c0de5fb0:	2d00      	cmp	r5, #0
c0de5fb2:	d17c      	bne.n	c0de60ae <buttonGenericCallback+0x116>
c0de5fb4:	483f      	ldr	r0, [pc, #252]	@ (c0de60b4 <buttonGenericCallback+0x11c>)
c0de5fb6:	eb09 0100 	add.w	r1, r9, r0
c0de5fba:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de5fbe:	2901      	cmp	r1, #1
c0de5fc0:	db1d      	blt.n	c0de5ffe <buttonGenericCallback+0x66>
c0de5fc2:	3901      	subs	r1, #1
c0de5fc4:	2008      	movs	r0, #8
c0de5fc6:	e013      	b.n	c0de5ff0 <buttonGenericCallback+0x58>
c0de5fc8:	4c3a      	ldr	r4, [pc, #232]	@ (c0de60b4 <buttonGenericCallback+0x11c>)
c0de5fca:	eb09 0004 	add.w	r0, r9, r4
c0de5fce:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de5fd0:	b338      	cbz	r0, c0de6022 <buttonGenericCallback+0x8a>
c0de5fd2:	4780      	blx	r0
c0de5fd4:	e06b      	b.n	c0de60ae <buttonGenericCallback+0x116>
c0de5fd6:	4837      	ldr	r0, [pc, #220]	@ (c0de60b4 <buttonGenericCallback+0x11c>)
c0de5fd8:	eb09 0100 	add.w	r1, r9, r0
c0de5fdc:	f991 0035 	ldrsb.w	r0, [r1, #53]	@ 0x35
c0de5fe0:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de5fe4:	3901      	subs	r1, #1
c0de5fe6:	4281      	cmp	r1, r0
c0de5fe8:	dd61      	ble.n	c0de60ae <buttonGenericCallback+0x116>
c0de5fea:	b2c0      	uxtb	r0, r0
c0de5fec:	1c41      	adds	r1, r0, #1
c0de5fee:	2000      	movs	r0, #0
c0de5ff0:	4a30      	ldr	r2, [pc, #192]	@ (c0de60b4 <buttonGenericCallback+0x11c>)
c0de5ff2:	444a      	add	r2, r9
c0de5ff4:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5ff8:	7020      	strb	r0, [r4, #0]
c0de5ffa:	2001      	movs	r0, #1
c0de5ffc:	e058      	b.n	c0de60b0 <buttonGenericCallback+0x118>
c0de5ffe:	eb09 0100 	add.w	r1, r9, r0
c0de6002:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de6006:	2906      	cmp	r1, #6
c0de6008:	d151      	bne.n	c0de60ae <buttonGenericCallback+0x116>
c0de600a:	eb09 0100 	add.w	r1, r9, r0
c0de600e:	6d89      	ldr	r1, [r1, #88]	@ 0x58
c0de6010:	2900      	cmp	r1, #0
c0de6012:	d04c      	beq.n	c0de60ae <buttonGenericCallback+0x116>
c0de6014:	4448      	add	r0, r9
c0de6016:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de601a:	2801      	cmp	r0, #1
c0de601c:	d047      	beq.n	c0de60ae <buttonGenericCallback+0x116>
c0de601e:	2008      	movs	r0, #8
c0de6020:	e7ea      	b.n	c0de5ff8 <buttonGenericCallback+0x60>
c0de6022:	eb09 0004 	add.w	r0, r9, r4
c0de6026:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de602a:	2000      	movs	r0, #0
c0de602c:	2910      	cmp	r1, #16
c0de602e:	d83f      	bhi.n	c0de60b0 <buttonGenericCallback+0x118>
c0de6030:	2201      	movs	r2, #1
c0de6032:	fa02 f101 	lsl.w	r1, r2, r1
c0de6036:	4a20      	ldr	r2, [pc, #128]	@ (c0de60b8 <buttonGenericCallback+0x120>)
c0de6038:	4211      	tst	r1, r2
c0de603a:	d039      	beq.n	c0de60b0 <buttonGenericCallback+0x118>
c0de603c:	eb09 0004 	add.w	r0, r9, r4
c0de6040:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6044:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de6048:	aa01      	add	r2, sp, #4
c0de604a:	f7ff fe87 	bl	c0de5d5c <getContentElemAtIdx>
c0de604e:	b370      	cbz	r0, c0de60ae <buttonGenericCallback+0x116>
c0de6050:	7801      	ldrb	r1, [r0, #0]
c0de6052:	4602      	mov	r2, r0
c0de6054:	2000      	movs	r0, #0
c0de6056:	b359      	cbz	r1, c0de60b0 <buttonGenericCallback+0x118>
c0de6058:	290a      	cmp	r1, #10
c0de605a:	d009      	beq.n	c0de6070 <buttonGenericCallback+0xd8>
c0de605c:	2907      	cmp	r1, #7
c0de605e:	d00f      	beq.n	c0de6080 <buttonGenericCallback+0xe8>
c0de6060:	2909      	cmp	r1, #9
c0de6062:	d011      	beq.n	c0de6088 <buttonGenericCallback+0xf0>
c0de6064:	2903      	cmp	r1, #3
c0de6066:	f04f 0100 	mov.w	r1, #0
c0de606a:	d112      	bne.n	c0de6092 <buttonGenericCallback+0xfa>
c0de606c:	7c10      	ldrb	r0, [r2, #16]
c0de606e:	e005      	b.n	c0de607c <buttonGenericCallback+0xe4>
c0de6070:	eb09 0004 	add.w	r0, r9, r4
c0de6074:	6891      	ldr	r1, [r2, #8]
c0de6076:	f990 0035 	ldrsb.w	r0, [r0, #53]	@ 0x35
c0de607a:	5c08      	ldrb	r0, [r1, r0]
c0de607c:	2100      	movs	r1, #0
c0de607e:	e008      	b.n	c0de6092 <buttonGenericCallback+0xfa>
c0de6080:	6850      	ldr	r0, [r2, #4]
c0de6082:	2100      	movs	r1, #0
c0de6084:	7a40      	ldrb	r0, [r0, #9]
c0de6086:	e004      	b.n	c0de6092 <buttonGenericCallback+0xfa>
c0de6088:	eb09 0004 	add.w	r0, r9, r4
c0de608c:	f890 1035 	ldrb.w	r1, [r0, #53]	@ 0x35
c0de6090:	7ad0      	ldrb	r0, [r2, #11]
c0de6092:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de6094:	b133      	cbz	r3, c0de60a4 <buttonGenericCallback+0x10c>
c0de6096:	eb09 0104 	add.w	r1, r9, r4
c0de609a:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de609e:	2100      	movs	r1, #0
c0de60a0:	4798      	blx	r3
c0de60a2:	e004      	b.n	c0de60ae <buttonGenericCallback+0x116>
c0de60a4:	eb09 0204 	add.w	r2, r9, r4
c0de60a8:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de60aa:	b102      	cbz	r2, c0de60ae <buttonGenericCallback+0x116>
c0de60ac:	4790      	blx	r2
c0de60ae:	2000      	movs	r0, #0
c0de60b0:	b010      	add	sp, #64	@ 0x40
c0de60b2:	bdb0      	pop	{r4, r5, r7, pc}
c0de60b4:	000009d0 	.word	0x000009d0
c0de60b8:	0001c008 	.word	0x0001c008

c0de60bc <displayHomePage>:
c0de60bc:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de60c0:	4680      	mov	r8, r0
c0de60c2:	4832      	ldr	r0, [pc, #200]	@ (c0de618c <displayHomePage+0xd0>)
c0de60c4:	2200      	movs	r2, #0
c0de60c6:	eb09 0100 	add.w	r1, r9, r0
c0de60ca:	6c8f      	ldr	r7, [r1, #72]	@ 0x48
c0de60cc:	6d0d      	ldr	r5, [r1, #80]	@ 0x50
c0de60ce:	638a      	str	r2, [r1, #56]	@ 0x38
c0de60d0:	2202      	movs	r2, #2
c0de60d2:	2d00      	cmp	r5, #0
c0de60d4:	463e      	mov	r6, r7
c0de60d6:	bf08      	it	eq
c0de60d8:	2201      	moveq	r2, #1
c0de60da:	2f00      	cmp	r7, #0
c0de60dc:	bf18      	it	ne
c0de60de:	2601      	movne	r6, #1
c0de60e0:	f991 3035 	ldrsb.w	r3, [r1, #53]	@ 0x35
c0de60e4:	b183      	cbz	r3, c0de6108 <displayHomePage+0x4c>
c0de60e6:	2401      	movs	r4, #1
c0de60e8:	2d00      	cmp	r5, #0
c0de60ea:	bf08      	it	eq
c0de60ec:	24ff      	moveq	r4, #255	@ 0xff
c0de60ee:	429c      	cmp	r4, r3
c0de60f0:	d111      	bne.n	c0de6116 <displayHomePage+0x5a>
c0de60f2:	eb09 0400 	add.w	r4, r9, r0
c0de60f6:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de60fa:	f001 fbdb 	bl	c0de78b4 <pic>
c0de60fe:	4602      	mov	r2, r0
c0de6100:	6d20      	ldr	r0, [r4, #80]	@ 0x50
c0de6102:	6880      	ldr	r0, [r0, #8]
c0de6104:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de6106:	e004      	b.n	c0de6112 <displayHomePage+0x56>
c0de6108:	eb09 0100 	add.w	r1, r9, r0
c0de610c:	e9d1 5210 	ldrd	r5, r2, [r1, #64]	@ 0x40
c0de6110:	b312      	cbz	r2, c0de6158 <displayHomePage+0x9c>
c0de6112:	2300      	movs	r3, #0
c0de6114:	e02c      	b.n	c0de6170 <displayHomePage+0xb4>
c0de6116:	2f00      	cmp	r7, #0
c0de6118:	4614      	mov	r4, r2
c0de611a:	bf08      	it	eq
c0de611c:	24ff      	moveq	r4, #255	@ 0xff
c0de611e:	429c      	cmp	r4, r3
c0de6120:	d109      	bne.n	c0de6136 <displayHomePage+0x7a>
c0de6122:	491c      	ldr	r1, [pc, #112]	@ (c0de6194 <displayHomePage+0xd8>)
c0de6124:	4448      	add	r0, r9
c0de6126:	2300      	movs	r3, #0
c0de6128:	4479      	add	r1, pc
c0de612a:	6381      	str	r1, [r0, #56]	@ 0x38
c0de612c:	4d1a      	ldr	r5, [pc, #104]	@ (c0de6198 <displayHomePage+0xdc>)
c0de612e:	4a1b      	ldr	r2, [pc, #108]	@ (c0de619c <displayHomePage+0xe0>)
c0de6130:	447d      	add	r5, pc
c0de6132:	447a      	add	r2, pc
c0de6134:	e01c      	b.n	c0de6170 <displayHomePage+0xb4>
c0de6136:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de6138:	4432      	add	r2, r6
c0de613a:	4448      	add	r0, r9
c0de613c:	2900      	cmp	r1, #0
c0de613e:	bf08      	it	eq
c0de6140:	22ff      	moveq	r2, #255	@ 0xff
c0de6142:	429a      	cmp	r2, r3
c0de6144:	d10d      	bne.n	c0de6162 <displayHomePage+0xa6>
c0de6146:	4916      	ldr	r1, [pc, #88]	@ (c0de61a0 <displayHomePage+0xe4>)
c0de6148:	2300      	movs	r3, #0
c0de614a:	4479      	add	r1, pc
c0de614c:	6381      	str	r1, [r0, #56]	@ 0x38
c0de614e:	4d15      	ldr	r5, [pc, #84]	@ (c0de61a4 <displayHomePage+0xe8>)
c0de6150:	4a15      	ldr	r2, [pc, #84]	@ (c0de61a8 <displayHomePage+0xec>)
c0de6152:	447d      	add	r5, pc
c0de6154:	447a      	add	r2, pc
c0de6156:	e00b      	b.n	c0de6170 <displayHomePage+0xb4>
c0de6158:	4448      	add	r0, r9
c0de615a:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
c0de615c:	4b0c      	ldr	r3, [pc, #48]	@ (c0de6190 <displayHomePage+0xd4>)
c0de615e:	447b      	add	r3, pc
c0de6160:	e006      	b.n	c0de6170 <displayHomePage+0xb4>
c0de6162:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de6164:	2300      	movs	r3, #0
c0de6166:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6168:	4d10      	ldr	r5, [pc, #64]	@ (c0de61ac <displayHomePage+0xf0>)
c0de616a:	4a11      	ldr	r2, [pc, #68]	@ (c0de61b0 <displayHomePage+0xf4>)
c0de616c:	447d      	add	r5, pc
c0de616e:	447a      	add	r2, pc
c0de6170:	4910      	ldr	r1, [pc, #64]	@ (c0de61b4 <displayHomePage+0xf8>)
c0de6172:	2000      	movs	r0, #0
c0de6174:	9002      	str	r0, [sp, #8]
c0de6176:	4479      	add	r1, pc
c0de6178:	e9cd 1000 	strd	r1, r0, [sp]
c0de617c:	4640      	mov	r0, r8
c0de617e:	4629      	mov	r1, r5
c0de6180:	f7ff f992 	bl	c0de54a8 <drawStep>
c0de6184:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de6188:	f001 b985 	b.w	c0de7496 <nbgl_refresh>
c0de618c:	000009d0 	.word	0x000009d0
c0de6190:	00002374 	.word	0x00002374
c0de6194:	0000008d 	.word	0x0000008d
c0de6198:	00001f7b 	.word	0x00001f7b
c0de619c:	0000224f 	.word	0x0000224f
c0de61a0:	00000073 	.word	0x00000073
c0de61a4:	00001ec4 	.word	0x00001ec4
c0de61a8:	00002300 	.word	0x00002300
c0de61ac:	00001ecd 	.word	0x00001ecd
c0de61b0:	00002371 	.word	0x00002371
c0de61b4:	0000006b 	.word	0x0000006b

c0de61b8 <startUseCaseSettings>:
c0de61b8:	2000      	movs	r0, #0
c0de61ba:	f7fe bf01 	b.w	c0de4fc0 <startUseCaseSettingsAtPage>
	...

c0de61c0 <startUseCaseInfo>:
c0de61c0:	4807      	ldr	r0, [pc, #28]	@ (c0de61e0 <startUseCaseInfo+0x20>)
c0de61c2:	210d      	movs	r1, #13
c0de61c4:	4448      	add	r0, r9
c0de61c6:	f880 102c 	strb.w	r1, [r0, #44]	@ 0x2c
c0de61ca:	2100      	movs	r1, #0
c0de61cc:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de61d0:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de61d2:	7b09      	ldrb	r1, [r1, #12]
c0de61d4:	3101      	adds	r1, #1
c0de61d6:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de61da:	2000      	movs	r0, #0
c0de61dc:	f000 b810 	b.w	c0de6200 <displayInfoPage>
c0de61e0:	000009d0 	.word	0x000009d0

c0de61e4 <homeCallback>:
c0de61e4:	b5e0      	push	{r5, r6, r7, lr}
c0de61e6:	4608      	mov	r0, r1
c0de61e8:	f10d 0107 	add.w	r1, sp, #7
c0de61ec:	f7ff fed4 	bl	c0de5f98 <buttonGenericCallback>
c0de61f0:	b128      	cbz	r0, c0de61fe <homeCallback+0x1a>
c0de61f2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de61f6:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de61fa:	f7ff bf5f 	b.w	c0de60bc <displayHomePage>
c0de61fe:	bd8c      	pop	{r2, r3, r7, pc}

c0de6200 <displayInfoPage>:
c0de6200:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de6202:	4604      	mov	r4, r0
c0de6204:	4816      	ldr	r0, [pc, #88]	@ (c0de6260 <displayInfoPage+0x60>)
c0de6206:	f000 fbdb 	bl	c0de69c0 <OUTLINED_FUNCTION_1>
c0de620a:	dd11      	ble.n	c0de6230 <displayInfoPage+0x30>
c0de620c:	eb09 0700 	add.w	r7, r9, r0
c0de6210:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de6212:	6800      	ldr	r0, [r0, #0]
c0de6214:	4e13      	ldr	r6, [pc, #76]	@ (c0de6264 <displayInfoPage+0x64>)
c0de6216:	447e      	add	r6, pc
c0de6218:	47b0      	blx	r6
c0de621a:	f000 fc0a 	bl	c0de6a32 <OUTLINED_FUNCTION_10>
c0de621e:	4605      	mov	r5, r0
c0de6220:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de6222:	6840      	ldr	r0, [r0, #4]
c0de6224:	47b0      	blx	r6
c0de6226:	f000 fc04 	bl	c0de6a32 <OUTLINED_FUNCTION_10>
c0de622a:	4603      	mov	r3, r0
c0de622c:	2100      	movs	r1, #0
c0de622e:	e008      	b.n	c0de6242 <displayInfoPage+0x42>
c0de6230:	490d      	ldr	r1, [pc, #52]	@ (c0de6268 <displayInfoPage+0x68>)
c0de6232:	4448      	add	r0, r9
c0de6234:	2300      	movs	r3, #0
c0de6236:	4479      	add	r1, pc
c0de6238:	6381      	str	r1, [r0, #56]	@ 0x38
c0de623a:	490c      	ldr	r1, [pc, #48]	@ (c0de626c <displayInfoPage+0x6c>)
c0de623c:	4d0c      	ldr	r5, [pc, #48]	@ (c0de6270 <displayInfoPage+0x70>)
c0de623e:	4479      	add	r1, pc
c0de6240:	447d      	add	r5, pc
c0de6242:	4e0c      	ldr	r6, [pc, #48]	@ (c0de6274 <displayInfoPage+0x74>)
c0de6244:	2002      	movs	r0, #2
c0de6246:	2200      	movs	r2, #0
c0de6248:	9002      	str	r0, [sp, #8]
c0de624a:	4620      	mov	r0, r4
c0de624c:	447e      	add	r6, pc
c0de624e:	e9cd 6200 	strd	r6, r2, [sp]
c0de6252:	462a      	mov	r2, r5
c0de6254:	f7ff f928 	bl	c0de54a8 <drawStep>
c0de6258:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de625c:	f001 b91b 	b.w	c0de7496 <nbgl_refresh>
c0de6260:	000009d0 	.word	0x000009d0
c0de6264:	0000169b 	.word	0x0000169b
c0de6268:	ffffedff 	.word	0xffffedff
c0de626c:	00001e4a 	.word	0x00001e4a
c0de6270:	000021cd 	.word	0x000021cd
c0de6274:	00000029 	.word	0x00000029

c0de6278 <infoCallback>:
c0de6278:	b5e0      	push	{r5, r6, r7, lr}
c0de627a:	4608      	mov	r0, r1
c0de627c:	f10d 0107 	add.w	r1, sp, #7
c0de6280:	f7ff fe8a 	bl	c0de5f98 <buttonGenericCallback>
c0de6284:	b128      	cbz	r0, c0de6292 <infoCallback+0x1a>
c0de6286:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de628a:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de628e:	f7ff bfb7 	b.w	c0de6200 <displayInfoPage>
c0de6292:	bd8c      	pop	{r2, r3, r7, pc}

c0de6294 <displayWarningStep>:
c0de6294:	b510      	push	{r4, lr}
c0de6296:	b088      	sub	sp, #32
c0de6298:	2000      	movs	r0, #0
c0de629a:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de629e:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de62a2:	4839      	ldr	r0, [pc, #228]	@ (c0de6388 <displayWarningStep+0xf4>)
c0de62a4:	eb09 0200 	add.w	r2, r9, r0
c0de62a8:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de62ac:	69d2      	ldr	r2, [r2, #28]
c0de62ae:	6a93      	ldr	r3, [r2, #40]	@ 0x28
c0de62b0:	b183      	cbz	r3, c0de62d4 <displayWarningStep+0x40>
c0de62b2:	b979      	cbnz	r1, c0de62d4 <displayWarningStep+0x40>
c0de62b4:	2000      	movs	r0, #0
c0de62b6:	685b      	ldr	r3, [r3, #4]
c0de62b8:	2200      	movs	r2, #0
c0de62ba:	e9cd 0000 	strd	r0, r0, [sp]
c0de62be:	9002      	str	r0, [sp, #8]
c0de62c0:	2001      	movs	r0, #1
c0de62c2:	4936      	ldr	r1, [pc, #216]	@ (c0de639c <displayWarningStep+0x108>)
c0de62c4:	4479      	add	r1, pc
c0de62c6:	f7fe fb25 	bl	c0de4914 <nbgl_stepDrawText>
c0de62ca:	b008      	add	sp, #32
c0de62cc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de62d0:	f001 b8e1 	b.w	c0de7496 <nbgl_refresh>
c0de62d4:	6813      	ldr	r3, [r2, #0]
c0de62d6:	06dc      	lsls	r4, r3, #27
c0de62d8:	d411      	bmi.n	c0de62fe <displayWarningStep+0x6a>
c0de62da:	2b00      	cmp	r3, #0
c0de62dc:	d151      	bne.n	c0de6382 <displayWarningStep+0xee>
c0de62de:	69d3      	ldr	r3, [r2, #28]
c0de62e0:	2b00      	cmp	r3, #0
c0de62e2:	d04e      	beq.n	c0de6382 <displayWarningStep+0xee>
c0de62e4:	eb09 0400 	add.w	r4, r9, r0
c0de62e8:	f894 4028 	ldrb.w	r4, [r4, #40]	@ 0x28
c0de62ec:	42a1      	cmp	r1, r4
c0de62ee:	d128      	bne.n	c0de6342 <displayWarningStep+0xae>
c0de62f0:	6858      	ldr	r0, [r3, #4]
c0de62f2:	691a      	ldr	r2, [r3, #16]
c0de62f4:	699b      	ldr	r3, [r3, #24]
c0de62f6:	9006      	str	r0, [sp, #24]
c0de62f8:	e9cd 2304 	strd	r2, r3, [sp, #16]
c0de62fc:	e00e      	b.n	c0de631c <displayWarningStep+0x88>
c0de62fe:	eb09 0200 	add.w	r2, r9, r0
c0de6302:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de6306:	4291      	cmp	r1, r2
c0de6308:	d10d      	bne.n	c0de6326 <displayWarningStep+0x92>
c0de630a:	4820      	ldr	r0, [pc, #128]	@ (c0de638c <displayWarningStep+0xf8>)
c0de630c:	4478      	add	r0, pc
c0de630e:	9005      	str	r0, [sp, #20]
c0de6310:	481f      	ldr	r0, [pc, #124]	@ (c0de6390 <displayWarningStep+0xfc>)
c0de6312:	4478      	add	r0, pc
c0de6314:	9004      	str	r0, [sp, #16]
c0de6316:	481f      	ldr	r0, [pc, #124]	@ (c0de6394 <displayWarningStep+0x100>)
c0de6318:	4478      	add	r0, pc
c0de631a:	9006      	str	r0, [sp, #24]
c0de631c:	2003      	movs	r0, #3
c0de631e:	2900      	cmp	r1, #0
c0de6320:	bf08      	it	eq
c0de6322:	2001      	moveq	r0, #1
c0de6324:	e020      	b.n	c0de6368 <displayWarningStep+0xd4>
c0de6326:	4448      	add	r0, r9
c0de6328:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de632c:	3801      	subs	r0, #1
c0de632e:	4288      	cmp	r0, r1
c0de6330:	d119      	bne.n	c0de6366 <displayWarningStep+0xd2>
c0de6332:	aa04      	add	r2, sp, #16
c0de6334:	2000      	movs	r0, #0
c0de6336:	f102 0108 	add.w	r1, r2, #8
c0de633a:	f000 f877 	bl	c0de642c <getLastPageInfo>
c0de633e:	200a      	movs	r0, #10
c0de6340:	e012      	b.n	c0de6368 <displayWarningStep+0xd4>
c0de6342:	4448      	add	r0, r9
c0de6344:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de6348:	3801      	subs	r0, #1
c0de634a:	4288      	cmp	r0, r1
c0de634c:	d10b      	bne.n	c0de6366 <displayWarningStep+0xd2>
c0de634e:	6950      	ldr	r0, [r2, #20]
c0de6350:	7901      	ldrb	r1, [r0, #4]
c0de6352:	2901      	cmp	r1, #1
c0de6354:	d115      	bne.n	c0de6382 <displayWarningStep+0xee>
c0de6356:	68c1      	ldr	r1, [r0, #12]
c0de6358:	6982      	ldr	r2, [r0, #24]
c0de635a:	6a00      	ldr	r0, [r0, #32]
c0de635c:	e9cd 2004 	strd	r2, r0, [sp, #16]
c0de6360:	2003      	movs	r0, #3
c0de6362:	9106      	str	r1, [sp, #24]
c0de6364:	e000      	b.n	c0de6368 <displayWarningStep+0xd4>
c0de6366:	2000      	movs	r0, #0
c0de6368:	2101      	movs	r1, #1
c0de636a:	2200      	movs	r2, #0
c0de636c:	f88d 101d 	strb.w	r1, [sp, #29]
c0de6370:	2100      	movs	r1, #0
c0de6372:	9100      	str	r1, [sp, #0]
c0de6374:	4908      	ldr	r1, [pc, #32]	@ (c0de6398 <displayWarningStep+0x104>)
c0de6376:	ab04      	add	r3, sp, #16
c0de6378:	4479      	add	r1, pc
c0de637a:	f7fe fc11 	bl	c0de4ba0 <nbgl_stepDrawCenteredInfo>
c0de637e:	f001 f88a 	bl	c0de7496 <nbgl_refresh>
c0de6382:	b008      	add	sp, #32
c0de6384:	bd10      	pop	{r4, pc}
c0de6386:	bf00      	nop
c0de6388:	000009d0 	.word	0x000009d0
c0de638c:	00001f70 	.word	0x00001f70
c0de6390:	0000209d 	.word	0x0000209d
c0de6394:	00001e55 	.word	0x00001e55
c0de6398:	00000025 	.word	0x00000025
c0de639c:	000000d9 	.word	0x000000d9

c0de63a0 <warningNavigate>:
c0de63a0:	2904      	cmp	r1, #4
c0de63a2:	d009      	beq.n	c0de63b8 <warningNavigate+0x18>
c0de63a4:	2901      	cmp	r1, #1
c0de63a6:	d024      	beq.n	c0de63f2 <warningNavigate+0x52>
c0de63a8:	bb11      	cbnz	r1, c0de63f0 <warningNavigate+0x50>
c0de63aa:	481f      	ldr	r0, [pc, #124]	@ (c0de6428 <warningNavigate+0x88>)
c0de63ac:	4448      	add	r0, r9
c0de63ae:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de63b2:	b390      	cbz	r0, c0de641a <warningNavigate+0x7a>
c0de63b4:	3801      	subs	r0, #1
c0de63b6:	e027      	b.n	c0de6408 <warningNavigate+0x68>
c0de63b8:	481b      	ldr	r0, [pc, #108]	@ (c0de6428 <warningNavigate+0x88>)
c0de63ba:	eb09 0100 	add.w	r1, r9, r0
c0de63be:	69c9      	ldr	r1, [r1, #28]
c0de63c0:	7809      	ldrb	r1, [r1, #0]
c0de63c2:	06c9      	lsls	r1, r1, #27
c0de63c4:	d514      	bpl.n	c0de63f0 <warningNavigate+0x50>
c0de63c6:	eb09 0200 	add.w	r2, r9, r0
c0de63ca:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de63ce:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de63d2:	4291      	cmp	r1, r2
c0de63d4:	bf08      	it	eq
c0de63d6:	f000 b8bd 	beq.w	c0de6554 <launchReviewAfterWarning>
c0de63da:	eb09 0200 	add.w	r2, r9, r0
c0de63de:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de63e2:	3a01      	subs	r2, #1
c0de63e4:	428a      	cmp	r2, r1
c0de63e6:	d103      	bne.n	c0de63f0 <warningNavigate+0x50>
c0de63e8:	4448      	add	r0, r9
c0de63ea:	6a01      	ldr	r1, [r0, #32]
c0de63ec:	2000      	movs	r0, #0
c0de63ee:	4708      	bx	r1
c0de63f0:	4770      	bx	lr
c0de63f2:	480d      	ldr	r0, [pc, #52]	@ (c0de6428 <warningNavigate+0x88>)
c0de63f4:	eb09 0200 	add.w	r2, r9, r0
c0de63f8:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de63fc:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de6400:	3a01      	subs	r2, #1
c0de6402:	428a      	cmp	r2, r1
c0de6404:	dd05      	ble.n	c0de6412 <warningNavigate+0x72>
c0de6406:	1c48      	adds	r0, r1, #1
c0de6408:	4907      	ldr	r1, [pc, #28]	@ (c0de6428 <warningNavigate+0x88>)
c0de640a:	4449      	add	r1, r9
c0de640c:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de6410:	e003      	b.n	c0de641a <warningNavigate+0x7a>
c0de6412:	4448      	add	r0, r9
c0de6414:	69c0      	ldr	r0, [r0, #28]
c0de6416:	6801      	ldr	r1, [r0, #0]
c0de6418:	b109      	cbz	r1, c0de641e <warningNavigate+0x7e>
c0de641a:	f7ff bf3b 	b.w	c0de6294 <displayWarningStep>
c0de641e:	69c0      	ldr	r0, [r0, #28]
c0de6420:	2800      	cmp	r0, #0
c0de6422:	d0fa      	beq.n	c0de641a <warningNavigate+0x7a>
c0de6424:	f000 b896 	b.w	c0de6554 <launchReviewAfterWarning>
c0de6428:	000009d0 	.word	0x000009d0

c0de642c <getLastPageInfo>:
c0de642c:	b170      	cbz	r0, c0de644c <getLastPageInfo+0x20>
c0de642e:	4833      	ldr	r0, [pc, #204]	@ (c0de64fc <getLastPageInfo+0xd0>)
c0de6430:	4478      	add	r0, pc
c0de6432:	6008      	str	r0, [r1, #0]
c0de6434:	4830      	ldr	r0, [pc, #192]	@ (c0de64f8 <getLastPageInfo+0xcc>)
c0de6436:	eb09 0100 	add.w	r1, r9, r0
c0de643a:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de643e:	2904      	cmp	r1, #4
c0de6440:	d113      	bne.n	c0de646a <getLastPageInfo+0x3e>
c0de6442:	482f      	ldr	r0, [pc, #188]	@ (c0de6500 <getLastPageInfo+0xd4>)
c0de6444:	492f      	ldr	r1, [pc, #188]	@ (c0de6504 <getLastPageInfo+0xd8>)
c0de6446:	4478      	add	r0, pc
c0de6448:	4479      	add	r1, pc
c0de644a:	e04f      	b.n	c0de64ec <getLastPageInfo+0xc0>
c0de644c:	4838      	ldr	r0, [pc, #224]	@ (c0de6530 <getLastPageInfo+0x104>)
c0de644e:	4478      	add	r0, pc
c0de6450:	6008      	str	r0, [r1, #0]
c0de6452:	4829      	ldr	r0, [pc, #164]	@ (c0de64f8 <getLastPageInfo+0xcc>)
c0de6454:	eb09 0100 	add.w	r1, r9, r0
c0de6458:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de645c:	2904      	cmp	r1, #4
c0de645e:	d10b      	bne.n	c0de6478 <getLastPageInfo+0x4c>
c0de6460:	4834      	ldr	r0, [pc, #208]	@ (c0de6534 <getLastPageInfo+0x108>)
c0de6462:	4935      	ldr	r1, [pc, #212]	@ (c0de6538 <getLastPageInfo+0x10c>)
c0de6464:	4478      	add	r0, pc
c0de6466:	4479      	add	r1, pc
c0de6468:	e040      	b.n	c0de64ec <getLastPageInfo+0xc0>
c0de646a:	eb09 0100 	add.w	r1, r9, r0
c0de646e:	6d09      	ldr	r1, [r1, #80]	@ 0x50
c0de6470:	b171      	cbz	r1, c0de6490 <getLastPageInfo+0x64>
c0de6472:	4825      	ldr	r0, [pc, #148]	@ (c0de6508 <getLastPageInfo+0xdc>)
c0de6474:	4478      	add	r0, pc
c0de6476:	e039      	b.n	c0de64ec <getLastPageInfo+0xc0>
c0de6478:	4448      	add	r0, r9
c0de647a:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de647c:	f010 0007 	ands.w	r0, r0, #7
c0de6480:	d017      	beq.n	c0de64b2 <getLastPageInfo+0x86>
c0de6482:	2801      	cmp	r0, #1
c0de6484:	d11a      	bne.n	c0de64bc <getLastPageInfo+0x90>
c0de6486:	482f      	ldr	r0, [pc, #188]	@ (c0de6544 <getLastPageInfo+0x118>)
c0de6488:	492f      	ldr	r1, [pc, #188]	@ (c0de6548 <getLastPageInfo+0x11c>)
c0de648a:	4478      	add	r0, pc
c0de648c:	4479      	add	r1, pc
c0de648e:	e02d      	b.n	c0de64ec <getLastPageInfo+0xc0>
c0de6490:	4448      	add	r0, r9
c0de6492:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de6494:	f000 0107 	and.w	r1, r0, #7
c0de6498:	2901      	cmp	r1, #1
c0de649a:	d014      	beq.n	c0de64c6 <getLastPageInfo+0x9a>
c0de649c:	b9e9      	cbnz	r1, c0de64da <getLastPageInfo+0xae>
c0de649e:	0640      	lsls	r0, r0, #25
c0de64a0:	481a      	ldr	r0, [pc, #104]	@ (c0de650c <getLastPageInfo+0xe0>)
c0de64a2:	491b      	ldr	r1, [pc, #108]	@ (c0de6510 <getLastPageInfo+0xe4>)
c0de64a4:	4478      	add	r0, pc
c0de64a6:	4479      	add	r1, pc
c0de64a8:	bf58      	it	pl
c0de64aa:	4601      	movpl	r1, r0
c0de64ac:	4819      	ldr	r0, [pc, #100]	@ (c0de6514 <getLastPageInfo+0xe8>)
c0de64ae:	4478      	add	r0, pc
c0de64b0:	e01c      	b.n	c0de64ec <getLastPageInfo+0xc0>
c0de64b2:	4822      	ldr	r0, [pc, #136]	@ (c0de653c <getLastPageInfo+0x110>)
c0de64b4:	4922      	ldr	r1, [pc, #136]	@ (c0de6540 <getLastPageInfo+0x114>)
c0de64b6:	4478      	add	r0, pc
c0de64b8:	4479      	add	r1, pc
c0de64ba:	e017      	b.n	c0de64ec <getLastPageInfo+0xc0>
c0de64bc:	4823      	ldr	r0, [pc, #140]	@ (c0de654c <getLastPageInfo+0x120>)
c0de64be:	4924      	ldr	r1, [pc, #144]	@ (c0de6550 <getLastPageInfo+0x124>)
c0de64c0:	4478      	add	r0, pc
c0de64c2:	4479      	add	r1, pc
c0de64c4:	e012      	b.n	c0de64ec <getLastPageInfo+0xc0>
c0de64c6:	0640      	lsls	r0, r0, #25
c0de64c8:	4813      	ldr	r0, [pc, #76]	@ (c0de6518 <getLastPageInfo+0xec>)
c0de64ca:	4914      	ldr	r1, [pc, #80]	@ (c0de651c <getLastPageInfo+0xf0>)
c0de64cc:	4478      	add	r0, pc
c0de64ce:	4479      	add	r1, pc
c0de64d0:	bf58      	it	pl
c0de64d2:	4601      	movpl	r1, r0
c0de64d4:	4812      	ldr	r0, [pc, #72]	@ (c0de6520 <getLastPageInfo+0xf4>)
c0de64d6:	4478      	add	r0, pc
c0de64d8:	e008      	b.n	c0de64ec <getLastPageInfo+0xc0>
c0de64da:	0640      	lsls	r0, r0, #25
c0de64dc:	4811      	ldr	r0, [pc, #68]	@ (c0de6524 <getLastPageInfo+0xf8>)
c0de64de:	4912      	ldr	r1, [pc, #72]	@ (c0de6528 <getLastPageInfo+0xfc>)
c0de64e0:	4478      	add	r0, pc
c0de64e2:	4479      	add	r1, pc
c0de64e4:	bf58      	it	pl
c0de64e6:	4601      	movpl	r1, r0
c0de64e8:	4810      	ldr	r0, [pc, #64]	@ (c0de652c <getLastPageInfo+0x100>)
c0de64ea:	4478      	add	r0, pc
c0de64ec:	6011      	str	r1, [r2, #0]
c0de64ee:	4902      	ldr	r1, [pc, #8]	@ (c0de64f8 <getLastPageInfo+0xcc>)
c0de64f0:	4449      	add	r1, r9
c0de64f2:	6388      	str	r0, [r1, #56]	@ 0x38
c0de64f4:	4770      	bx	lr
c0de64f6:	bf00      	nop
c0de64f8:	000009d0 	.word	0x000009d0
c0de64fc:	00001d1a 	.word	0x00001d1a
c0de6500:	00000143 	.word	0x00000143
c0de6504:	000020a0 	.word	0x000020a0
c0de6508:	00000115 	.word	0x00000115
c0de650c:	00001e47 	.word	0x00001e47
c0de6510:	00001ee8 	.word	0x00001ee8
c0de6514:	000000db 	.word	0x000000db
c0de6518:	00001e03 	.word	0x00001e03
c0de651c:	00001e41 	.word	0x00001e41
c0de6520:	000000b3 	.word	0x000000b3
c0de6524:	00001f7d 	.word	0x00001f7d
c0de6528:	00001ee1 	.word	0x00001ee1
c0de652c:	0000009f 	.word	0x0000009f
c0de6530:	00001c80 	.word	0x00001c80
c0de6534:	00000139 	.word	0x00000139
c0de6538:	00001eec 	.word	0x00001eec
c0de653c:	000000e7 	.word	0x000000e7
c0de6540:	00001e44 	.word	0x00001e44
c0de6544:	00000113 	.word	0x00000113
c0de6548:	00001fe0 	.word	0x00001fe0
c0de654c:	000000dd 	.word	0x000000dd
c0de6550:	00001fb9 	.word	0x00001fb9

c0de6554 <launchReviewAfterWarning>:
c0de6554:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de6556:	480c      	ldr	r0, [pc, #48]	@ (c0de6588 <launchReviewAfterWarning+0x34>)
c0de6558:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de655c:	2905      	cmp	r1, #5
c0de655e:	d00d      	beq.n	c0de657c <launchReviewAfterWarning+0x28>
c0de6560:	2902      	cmp	r1, #2
c0de6562:	bf18      	it	ne
c0de6564:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de6566:	4448      	add	r0, r9
c0de6568:	1d06      	adds	r6, r0, #4
c0de656a:	6a00      	ldr	r0, [r0, #32]
c0de656c:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de656e:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de6572:	9003      	str	r0, [sp, #12]
c0de6574:	2002      	movs	r0, #2
c0de6576:	f7fe fdb5 	bl	c0de50e4 <useCaseReview>
c0de657a:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de657c:	2000      	movs	r0, #0
c0de657e:	b004      	add	sp, #16
c0de6580:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6584:	f7ff b8ac 	b.w	c0de56e0 <displayStreamingReviewPage>
c0de6588:	000009d0 	.word	0x000009d0

c0de658c <onReviewAccept>:
c0de658c:	4803      	ldr	r0, [pc, #12]	@ (c0de659c <onReviewAccept+0x10>)
c0de658e:	4448      	add	r0, r9
c0de6590:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de6592:	b109      	cbz	r1, c0de6598 <onReviewAccept+0xc>
c0de6594:	2001      	movs	r0, #1
c0de6596:	4708      	bx	r1
c0de6598:	4770      	bx	lr
c0de659a:	bf00      	nop
c0de659c:	000009d0 	.word	0x000009d0

c0de65a0 <onReviewReject>:
c0de65a0:	4803      	ldr	r0, [pc, #12]	@ (c0de65b0 <onReviewReject+0x10>)
c0de65a2:	4448      	add	r0, r9
c0de65a4:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de65a6:	b109      	cbz	r1, c0de65ac <onReviewReject+0xc>
c0de65a8:	2000      	movs	r0, #0
c0de65aa:	4708      	bx	r1
c0de65ac:	4770      	bx	lr
c0de65ae:	bf00      	nop
c0de65b0:	000009d0 	.word	0x000009d0

c0de65b4 <buttonSkipCallback>:
c0de65b4:	b5b0      	push	{r4, r5, r7, lr}
c0de65b6:	2904      	cmp	r1, #4
c0de65b8:	d00a      	beq.n	c0de65d0 <buttonSkipCallback+0x1c>
c0de65ba:	2901      	cmp	r1, #1
c0de65bc:	d017      	beq.n	c0de65ee <buttonSkipCallback+0x3a>
c0de65be:	bbb9      	cbnz	r1, c0de6630 <buttonSkipCallback+0x7c>
c0de65c0:	4829      	ldr	r0, [pc, #164]	@ (c0de6668 <buttonSkipCallback+0xb4>)
c0de65c2:	eb09 0100 	add.w	r1, r9, r0
c0de65c6:	f891 105e 	ldrb.w	r1, [r1, #94]	@ 0x5e
c0de65ca:	b391      	cbz	r1, c0de6632 <buttonSkipCallback+0x7e>
c0de65cc:	2008      	movs	r0, #8
c0de65ce:	e02a      	b.n	c0de6626 <buttonSkipCallback+0x72>
c0de65d0:	4825      	ldr	r0, [pc, #148]	@ (c0de6668 <buttonSkipCallback+0xb4>)
c0de65d2:	eb09 0100 	add.w	r1, r9, r0
c0de65d6:	4448      	add	r0, r9
c0de65d8:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de65dc:	2900      	cmp	r1, #0
c0de65de:	d03f      	beq.n	c0de6660 <buttonSkipCallback+0xac>
c0de65e0:	f890 1034 	ldrb.w	r1, [r0, #52]	@ 0x34
c0de65e4:	3902      	subs	r1, #2
c0de65e6:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de65ea:	2000      	movs	r0, #0
c0de65ec:	e030      	b.n	c0de6650 <buttonSkipCallback+0x9c>
c0de65ee:	4a1e      	ldr	r2, [pc, #120]	@ (c0de6668 <buttonSkipCallback+0xb4>)
c0de65f0:	eb09 0002 	add.w	r0, r9, r2
c0de65f4:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de65f8:	2808      	cmp	r0, #8
c0de65fa:	d113      	bne.n	c0de6624 <buttonSkipCallback+0x70>
c0de65fc:	eb09 0002 	add.w	r0, r9, r2
c0de6600:	f990 4036 	ldrsb.w	r4, [r0, #54]	@ 0x36
c0de6604:	f990 3035 	ldrsb.w	r3, [r0, #53]	@ 0x35
c0de6608:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de660c:	1e45      	subs	r5, r0, #1
c0de660e:	2000      	movs	r0, #0
c0de6610:	b2e1      	uxtb	r1, r4
c0de6612:	429d      	cmp	r5, r3
c0de6614:	bfc8      	it	gt
c0de6616:	42a3      	cmpgt	r3, r4
c0de6618:	dd19      	ble.n	c0de664e <buttonSkipCallback+0x9a>
c0de661a:	eb09 0002 	add.w	r0, r9, r2
c0de661e:	1c59      	adds	r1, r3, #1
c0de6620:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6624:	2000      	movs	r0, #0
c0de6626:	4910      	ldr	r1, [pc, #64]	@ (c0de6668 <buttonSkipCallback+0xb4>)
c0de6628:	4449      	add	r1, r9
c0de662a:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de662e:	e00e      	b.n	c0de664e <buttonSkipCallback+0x9a>
c0de6630:	bdb0      	pop	{r4, r5, r7, pc}
c0de6632:	eb09 0100 	add.w	r1, r9, r0
c0de6636:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de663a:	f991 3036 	ldrsb.w	r3, [r1, #54]	@ 0x36
c0de663e:	b2d9      	uxtb	r1, r3
c0de6640:	429a      	cmp	r2, r3
c0de6642:	dd03      	ble.n	c0de664c <buttonSkipCallback+0x98>
c0de6644:	4448      	add	r0, r9
c0de6646:	3a01      	subs	r2, #1
c0de6648:	f880 2035 	strb.w	r2, [r0, #53]	@ 0x35
c0de664c:	2008      	movs	r0, #8
c0de664e:	b119      	cbz	r1, c0de6658 <buttonSkipCallback+0xa4>
c0de6650:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6654:	f7fe be3c 	b.w	c0de52d0 <displayReviewPage>
c0de6658:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de665c:	f7ff b840 	b.w	c0de56e0 <displayStreamingReviewPage>
c0de6660:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de6662:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6666:	4700      	bx	r0
c0de6668:	000009d0 	.word	0x000009d0

c0de666c <displayAliasFullValue>:
c0de666c:	b570      	push	{r4, r5, r6, lr}
c0de666e:	b088      	sub	sp, #32
c0de6670:	4c1a      	ldr	r4, [pc, #104]	@ (c0de66dc <displayAliasFullValue+0x70>)
c0de6672:	f10d 0213 	add.w	r2, sp, #19
c0de6676:	eb09 0504 	add.w	r5, r9, r4
c0de667a:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de667c:	f895 105f 	ldrb.w	r1, [r5, #95]	@ 0x5f
c0de6680:	ab05      	add	r3, sp, #20
c0de6682:	f105 0664 	add.w	r6, r5, #100	@ 0x64
c0de6686:	9202      	str	r2, [sp, #8]
c0de6688:	e9cd 6300 	strd	r6, r3, [sp]
c0de668c:	aa07      	add	r2, sp, #28
c0de668e:	ab06      	add	r3, sp, #24
c0de6690:	f7ff fba8 	bl	c0de5de4 <getPairData>
c0de6694:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0de6696:	b178      	cbz	r0, c0de66b8 <displayAliasFullValue+0x4c>
c0de6698:	eb09 0104 	add.w	r1, r9, r4
c0de669c:	2200      	movs	r2, #0
c0de669e:	668a      	str	r2, [r1, #104]	@ 0x68
c0de66a0:	f881 2060 	strb.w	r2, [r1, #96]	@ 0x60
c0de66a4:	7d01      	ldrb	r1, [r0, #20]
c0de66a6:	2901      	cmp	r1, #1
c0de66a8:	d008      	beq.n	c0de66bc <displayAliasFullValue+0x50>
c0de66aa:	2905      	cmp	r1, #5
c0de66ac:	d008      	beq.n	c0de66c0 <displayAliasFullValue+0x54>
c0de66ae:	2904      	cmp	r1, #4
c0de66b0:	d102      	bne.n	c0de66b8 <displayAliasFullValue+0x4c>
c0de66b2:	6900      	ldr	r0, [r0, #16]
c0de66b4:	300c      	adds	r0, #12
c0de66b6:	e005      	b.n	c0de66c4 <displayAliasFullValue+0x58>
c0de66b8:	b008      	add	sp, #32
c0de66ba:	bd70      	pop	{r4, r5, r6, pc}
c0de66bc:	2002      	movs	r0, #2
c0de66be:	e003      	b.n	c0de66c8 <displayAliasFullValue+0x5c>
c0de66c0:	6900      	ldr	r0, [r0, #16]
c0de66c2:	3008      	adds	r0, #8
c0de66c4:	7800      	ldrb	r0, [r0, #0]
c0de66c6:	3001      	adds	r0, #1
c0de66c8:	eb09 0104 	add.w	r1, r9, r4
c0de66cc:	f881 0061 	strb.w	r0, [r1, #97]	@ 0x61
c0de66d0:	2000      	movs	r0, #0
c0de66d2:	b008      	add	sp, #32
c0de66d4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de66d8:	f000 b814 	b.w	c0de6704 <displayExtensionStep>
c0de66dc:	000009d0 	.word	0x000009d0

c0de66e0 <reviewCallback>:
c0de66e0:	b5e0      	push	{r5, r6, r7, lr}
c0de66e2:	4608      	mov	r0, r1
c0de66e4:	f10d 0107 	add.w	r1, sp, #7
c0de66e8:	f7ff fc56 	bl	c0de5f98 <buttonGenericCallback>
c0de66ec:	b130      	cbz	r0, c0de66fc <reviewCallback+0x1c>
c0de66ee:	4804      	ldr	r0, [pc, #16]	@ (c0de6700 <reviewCallback+0x20>)
c0de66f0:	f000 f993 	bl	c0de6a1a <OUTLINED_FUNCTION_8>
c0de66f4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de66f8:	f7fe bdea 	b.w	c0de52d0 <displayReviewPage>
c0de66fc:	bd8c      	pop	{r2, r3, r7, pc}
c0de66fe:	bf00      	nop
c0de6700:	000009d0 	.word	0x000009d0

c0de6704 <displayExtensionStep>:
c0de6704:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6708:	b088      	sub	sp, #32
c0de670a:	4e36      	ldr	r6, [pc, #216]	@ (c0de67e4 <displayExtensionStep+0xe0>)
c0de670c:	4680      	mov	r8, r0
c0de670e:	2000      	movs	r0, #0
c0de6710:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de6714:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de6718:	eb09 0006 	add.w	r0, r9, r6
c0de671c:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de671e:	b108      	cbz	r0, c0de6724 <displayExtensionStep+0x20>
c0de6720:	f7fe fb64 	bl	c0de4dec <nbgl_stepRelease>
c0de6724:	eb09 0106 	add.w	r1, r9, r6
c0de6728:	f000 f970 	bl	c0de6a0c <OUTLINED_FUNCTION_7>
c0de672c:	dd10      	ble.n	c0de6750 <displayExtensionStep+0x4c>
c0de672e:	2703      	movs	r7, #3
c0de6730:	eb09 0106 	add.w	r1, r9, r6
c0de6734:	2800      	cmp	r0, #0
c0de6736:	bf08      	it	eq
c0de6738:	2701      	moveq	r7, #1
c0de673a:	6e49      	ldr	r1, [r1, #100]	@ 0x64
c0de673c:	7d0a      	ldrb	r2, [r1, #20]
c0de673e:	2a05      	cmp	r2, #5
c0de6740:	d01a      	beq.n	c0de6778 <displayExtensionStep+0x74>
c0de6742:	2a04      	cmp	r2, #4
c0de6744:	d028      	beq.n	c0de6798 <displayExtensionStep+0x94>
c0de6746:	2a01      	cmp	r2, #1
c0de6748:	d147      	bne.n	c0de67da <displayExtensionStep+0xd6>
c0de674a:	6808      	ldr	r0, [r1, #0]
c0de674c:	688d      	ldr	r5, [r1, #8]
c0de674e:	e033      	b.n	c0de67b8 <displayExtensionStep+0xb4>
c0de6750:	d143      	bne.n	c0de67da <displayExtensionStep+0xd6>
c0de6752:	2001      	movs	r0, #1
c0de6754:	2200      	movs	r2, #0
c0de6756:	f88d 001d 	strb.w	r0, [sp, #29]
c0de675a:	4924      	ldr	r1, [pc, #144]	@ (c0de67ec <displayExtensionStep+0xe8>)
c0de675c:	4479      	add	r1, pc
c0de675e:	9104      	str	r1, [sp, #16]
c0de6760:	4923      	ldr	r1, [pc, #140]	@ (c0de67f0 <displayExtensionStep+0xec>)
c0de6762:	9000      	str	r0, [sp, #0]
c0de6764:	f048 0002 	orr.w	r0, r8, #2
c0de6768:	4479      	add	r1, pc
c0de676a:	9106      	str	r1, [sp, #24]
c0de676c:	4921      	ldr	r1, [pc, #132]	@ (c0de67f4 <displayExtensionStep+0xf0>)
c0de676e:	ab04      	add	r3, sp, #16
c0de6770:	4479      	add	r1, pc
c0de6772:	f7fe fa15 	bl	c0de4ba0 <nbgl_stepDrawCenteredInfo>
c0de6776:	e02d      	b.n	c0de67d4 <displayExtensionStep+0xd0>
c0de6778:	690c      	ldr	r4, [r1, #16]
c0de677a:	0100      	lsls	r0, r0, #4
c0de677c:	6821      	ldr	r1, [r4, #0]
c0de677e:	5808      	ldr	r0, [r1, r0]
c0de6780:	f001 f898 	bl	c0de78b4 <pic>
c0de6784:	4605      	mov	r5, r0
c0de6786:	eb09 0006 	add.w	r0, r9, r6
c0de678a:	6821      	ldr	r1, [r4, #0]
c0de678c:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de6790:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de6794:	6840      	ldr	r0, [r0, #4]
c0de6796:	e00d      	b.n	c0de67b4 <displayExtensionStep+0xb0>
c0de6798:	690c      	ldr	r4, [r1, #16]
c0de679a:	6821      	ldr	r1, [r4, #0]
c0de679c:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de67a0:	f001 f888 	bl	c0de78b4 <pic>
c0de67a4:	4605      	mov	r5, r0
c0de67a6:	eb09 0006 	add.w	r0, r9, r6
c0de67aa:	6861      	ldr	r1, [r4, #4]
c0de67ac:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de67b0:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de67b4:	f001 f87e 	bl	c0de78b4 <pic>
c0de67b8:	b17d      	cbz	r5, c0de67da <displayExtensionStep+0xd6>
c0de67ba:	2101      	movs	r1, #1
c0de67bc:	ea47 0208 	orr.w	r2, r7, r8
c0de67c0:	462b      	mov	r3, r5
c0de67c2:	e9cd 0100 	strd	r0, r1, [sp]
c0de67c6:	9102      	str	r1, [sp, #8]
c0de67c8:	4610      	mov	r0, r2
c0de67ca:	2200      	movs	r2, #0
c0de67cc:	4906      	ldr	r1, [pc, #24]	@ (c0de67e8 <displayExtensionStep+0xe4>)
c0de67ce:	4479      	add	r1, pc
c0de67d0:	f7fe f8a0 	bl	c0de4914 <nbgl_stepDrawText>
c0de67d4:	eb09 0106 	add.w	r1, r9, r6
c0de67d8:	6688      	str	r0, [r1, #104]	@ 0x68
c0de67da:	f000 fe5c 	bl	c0de7496 <nbgl_refresh>
c0de67de:	b008      	add	sp, #32
c0de67e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de67e4:	000009d0 	.word	0x000009d0
c0de67e8:	00000027 	.word	0x00000027
c0de67ec:	00001cb1 	.word	0x00001cb1
c0de67f0:	00001920 	.word	0x00001920
c0de67f4:	00000085 	.word	0x00000085

c0de67f8 <extensionNavigate>:
c0de67f8:	b580      	push	{r7, lr}
c0de67fa:	2904      	cmp	r1, #4
c0de67fc:	d00a      	beq.n	c0de6814 <extensionNavigate+0x1c>
c0de67fe:	2901      	cmp	r1, #1
c0de6800:	d01d      	beq.n	c0de683e <extensionNavigate+0x46>
c0de6802:	b9d9      	cbnz	r1, c0de683c <extensionNavigate+0x44>
c0de6804:	4818      	ldr	r0, [pc, #96]	@ (c0de6868 <extensionNavigate+0x70>)
c0de6806:	4448      	add	r0, r9
c0de6808:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de680c:	b330      	cbz	r0, c0de685c <extensionNavigate+0x64>
c0de680e:	1e41      	subs	r1, r0, #1
c0de6810:	2008      	movs	r0, #8
c0de6812:	e01c      	b.n	c0de684e <extensionNavigate+0x56>
c0de6814:	4814      	ldr	r0, [pc, #80]	@ (c0de6868 <extensionNavigate+0x70>)
c0de6816:	eb09 0100 	add.w	r1, r9, r0
c0de681a:	f891 2060 	ldrb.w	r2, [r1, #96]	@ 0x60
c0de681e:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de6822:	3901      	subs	r1, #1
c0de6824:	4291      	cmp	r1, r2
c0de6826:	d109      	bne.n	c0de683c <extensionNavigate+0x44>
c0de6828:	4448      	add	r0, r9
c0de682a:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de682c:	f7fe fade 	bl	c0de4dec <nbgl_stepRelease>
c0de6830:	f000 fe4a 	bl	c0de74c8 <nbgl_screenRedraw>
c0de6834:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6838:	f000 be2d 	b.w	c0de7496 <nbgl_refresh>
c0de683c:	bd80      	pop	{r7, pc}
c0de683e:	480a      	ldr	r0, [pc, #40]	@ (c0de6868 <extensionNavigate+0x70>)
c0de6840:	eb09 0100 	add.w	r1, r9, r0
c0de6844:	f000 f8e2 	bl	c0de6a0c <OUTLINED_FUNCTION_7>
c0de6848:	dd06      	ble.n	c0de6858 <extensionNavigate+0x60>
c0de684a:	1c41      	adds	r1, r0, #1
c0de684c:	2000      	movs	r0, #0
c0de684e:	4a06      	ldr	r2, [pc, #24]	@ (c0de6868 <extensionNavigate+0x70>)
c0de6850:	444a      	add	r2, r9
c0de6852:	f882 1060 	strb.w	r1, [r2, #96]	@ 0x60
c0de6856:	e002      	b.n	c0de685e <extensionNavigate+0x66>
c0de6858:	2000      	movs	r0, #0
c0de685a:	e000      	b.n	c0de685e <extensionNavigate+0x66>
c0de685c:	2008      	movs	r0, #8
c0de685e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6862:	f7ff bf4f 	b.w	c0de6704 <displayExtensionStep>
c0de6866:	bf00      	nop
c0de6868:	000009d0 	.word	0x000009d0

c0de686c <statusTickerCallback>:
c0de686c:	4802      	ldr	r0, [pc, #8]	@ (c0de6878 <statusTickerCallback+0xc>)
c0de686e:	4448      	add	r0, r9
c0de6870:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de6872:	b100      	cbz	r0, c0de6876 <statusTickerCallback+0xa>
c0de6874:	4700      	bx	r0
c0de6876:	4770      	bx	lr
c0de6878:	000009d0 	.word	0x000009d0

c0de687c <getChoiceName>:
c0de687c:	b5b0      	push	{r4, r5, r7, lr}
c0de687e:	b090      	sub	sp, #64	@ 0x40
c0de6880:	ad01      	add	r5, sp, #4
c0de6882:	f000 f8d1 	bl	c0de6a28 <OUTLINED_FUNCTION_9>
c0de6886:	4814      	ldr	r0, [pc, #80]	@ (c0de68d8 <getChoiceName+0x5c>)
c0de6888:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de688c:	462a      	mov	r2, r5
c0de688e:	4448      	add	r0, r9
c0de6890:	f000 f8b1 	bl	c0de69f6 <OUTLINED_FUNCTION_4>
c0de6894:	b150      	cbz	r0, c0de68ac <getChoiceName+0x30>
c0de6896:	7801      	ldrb	r1, [r0, #0]
c0de6898:	290a      	cmp	r1, #10
c0de689a:	d009      	beq.n	c0de68b0 <getChoiceName+0x34>
c0de689c:	2909      	cmp	r1, #9
c0de689e:	d105      	bne.n	c0de68ac <getChoiceName+0x30>
c0de68a0:	f000 f8ad 	bl	c0de69fe <OUTLINED_FUNCTION_5>
c0de68a4:	4605      	mov	r5, r0
c0de68a6:	f855 0b05 	ldr.w	r0, [r5], #5
c0de68aa:	e006      	b.n	c0de68ba <getChoiceName+0x3e>
c0de68ac:	2000      	movs	r0, #0
c0de68ae:	e010      	b.n	c0de68d2 <getChoiceName+0x56>
c0de68b0:	f000 f8a5 	bl	c0de69fe <OUTLINED_FUNCTION_5>
c0de68b4:	4605      	mov	r5, r0
c0de68b6:	f855 0b08 	ldr.w	r0, [r5], #8
c0de68ba:	f000 fffb 	bl	c0de78b4 <pic>
c0de68be:	7829      	ldrb	r1, [r5, #0]
c0de68c0:	42a1      	cmp	r1, r4
c0de68c2:	d904      	bls.n	c0de68ce <getChoiceName+0x52>
c0de68c4:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de68c8:	f000 fff4 	bl	c0de78b4 <pic>
c0de68cc:	e001      	b.n	c0de68d2 <getChoiceName+0x56>
c0de68ce:	4803      	ldr	r0, [pc, #12]	@ (c0de68dc <getChoiceName+0x60>)
c0de68d0:	4478      	add	r0, pc
c0de68d2:	b010      	add	sp, #64	@ 0x40
c0de68d4:	bdb0      	pop	{r4, r5, r7, pc}
c0de68d6:	bf00      	nop
c0de68d8:	000009d0 	.word	0x000009d0
c0de68dc:	00001b3d 	.word	0x00001b3d

c0de68e0 <onChoiceSelected>:
c0de68e0:	b570      	push	{r4, r5, r6, lr}
c0de68e2:	b090      	sub	sp, #64	@ 0x40
c0de68e4:	ad01      	add	r5, sp, #4
c0de68e6:	f000 f89f 	bl	c0de6a28 <OUTLINED_FUNCTION_9>
c0de68ea:	4e17      	ldr	r6, [pc, #92]	@ (c0de6948 <onChoiceSelected+0x68>)
c0de68ec:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de68f0:	462a      	mov	r2, r5
c0de68f2:	eb09 0006 	add.w	r0, r9, r6
c0de68f6:	f000 f87e 	bl	c0de69f6 <OUTLINED_FUNCTION_4>
c0de68fa:	b318      	cbz	r0, c0de6944 <onChoiceSelected+0x64>
c0de68fc:	7801      	ldrb	r1, [r0, #0]
c0de68fe:	290a      	cmp	r1, #10
c0de6900:	d008      	beq.n	c0de6914 <onChoiceSelected+0x34>
c0de6902:	2909      	cmp	r1, #9
c0de6904:	d10f      	bne.n	c0de6926 <onChoiceSelected+0x46>
c0de6906:	f000 f87a 	bl	c0de69fe <OUTLINED_FUNCTION_5>
c0de690a:	7941      	ldrb	r1, [r0, #5]
c0de690c:	42a1      	cmp	r1, r4
c0de690e:	d90a      	bls.n	c0de6926 <onChoiceSelected+0x46>
c0de6910:	3007      	adds	r0, #7
c0de6912:	e006      	b.n	c0de6922 <onChoiceSelected+0x42>
c0de6914:	f000 f873 	bl	c0de69fe <OUTLINED_FUNCTION_5>
c0de6918:	7a01      	ldrb	r1, [r0, #8]
c0de691a:	42a1      	cmp	r1, r4
c0de691c:	d903      	bls.n	c0de6926 <onChoiceSelected+0x46>
c0de691e:	6840      	ldr	r0, [r0, #4]
c0de6920:	4420      	add	r0, r4
c0de6922:	7800      	ldrb	r0, [r0, #0]
c0de6924:	e000      	b.n	c0de6928 <onChoiceSelected+0x48>
c0de6926:	20ff      	movs	r0, #255	@ 0xff
c0de6928:	28ff      	cmp	r0, #255	@ 0xff
c0de692a:	d006      	beq.n	c0de693a <onChoiceSelected+0x5a>
c0de692c:	eb09 0106 	add.w	r1, r9, r6
c0de6930:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de6932:	b112      	cbz	r2, c0de693a <onChoiceSelected+0x5a>
c0de6934:	2100      	movs	r1, #0
c0de6936:	4790      	blx	r2
c0de6938:	e004      	b.n	c0de6944 <onChoiceSelected+0x64>
c0de693a:	eb09 0006 	add.w	r0, r9, r6
c0de693e:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de6940:	b100      	cbz	r0, c0de6944 <onChoiceSelected+0x64>
c0de6942:	4780      	blx	r0
c0de6944:	b010      	add	sp, #64	@ 0x40
c0de6946:	bd70      	pop	{r4, r5, r6, pc}
c0de6948:	000009d0 	.word	0x000009d0

c0de694c <streamingReviewCallback>:
c0de694c:	b5e0      	push	{r5, r6, r7, lr}
c0de694e:	4608      	mov	r0, r1
c0de6950:	f10d 0107 	add.w	r1, sp, #7
c0de6954:	f7ff fb20 	bl	c0de5f98 <buttonGenericCallback>
c0de6958:	b130      	cbz	r0, c0de6968 <streamingReviewCallback+0x1c>
c0de695a:	4804      	ldr	r0, [pc, #16]	@ (c0de696c <streamingReviewCallback+0x20>)
c0de695c:	f000 f85d 	bl	c0de6a1a <OUTLINED_FUNCTION_8>
c0de6960:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6964:	f7fe bebc 	b.w	c0de56e0 <displayStreamingReviewPage>
c0de6968:	bd8c      	pop	{r2, r3, r7, pc}
c0de696a:	bf00      	nop
c0de696c:	000009d0 	.word	0x000009d0

c0de6970 <onChoiceAccept>:
c0de6970:	4803      	ldr	r0, [pc, #12]	@ (c0de6980 <onChoiceAccept+0x10>)
c0de6972:	4448      	add	r0, r9
c0de6974:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de6976:	b109      	cbz	r1, c0de697c <onChoiceAccept+0xc>
c0de6978:	2001      	movs	r0, #1
c0de697a:	4708      	bx	r1
c0de697c:	4770      	bx	lr
c0de697e:	bf00      	nop
c0de6980:	000009d0 	.word	0x000009d0

c0de6984 <onChoiceReject>:
c0de6984:	4803      	ldr	r0, [pc, #12]	@ (c0de6994 <onChoiceReject+0x10>)
c0de6986:	4448      	add	r0, r9
c0de6988:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de698a:	b109      	cbz	r1, c0de6990 <onChoiceReject+0xc>
c0de698c:	2000      	movs	r0, #0
c0de698e:	4708      	bx	r1
c0de6990:	4770      	bx	lr
c0de6992:	bf00      	nop
c0de6994:	000009d0 	.word	0x000009d0

c0de6998 <genericChoiceCallback>:
c0de6998:	b5e0      	push	{r5, r6, r7, lr}
c0de699a:	4608      	mov	r0, r1
c0de699c:	f10d 0107 	add.w	r1, sp, #7
c0de69a0:	f7ff fafa 	bl	c0de5f98 <buttonGenericCallback>
c0de69a4:	b128      	cbz	r0, c0de69b2 <genericChoiceCallback+0x1a>
c0de69a6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de69aa:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de69ae:	f7fe bfbd 	b.w	c0de592c <displayChoicePage>
c0de69b2:	bd8c      	pop	{r2, r3, r7, pc}

c0de69b4 <OUTLINED_FUNCTION_0>:
c0de69b4:	eb09 0500 	add.w	r5, r9, r0
c0de69b8:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de69bc:	f001 ba86 	b.w	c0de7ecc <__aeabi_memclr>

c0de69c0 <OUTLINED_FUNCTION_1>:
c0de69c0:	2200      	movs	r2, #0
c0de69c2:	eb09 0100 	add.w	r1, r9, r0
c0de69c6:	638a      	str	r2, [r1, #56]	@ 0x38
c0de69c8:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de69cc:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de69d0:	3901      	subs	r1, #1
c0de69d2:	4291      	cmp	r1, r2
c0de69d4:	4770      	bx	lr

c0de69d6 <OUTLINED_FUNCTION_2>:
c0de69d6:	eb09 0600 	add.w	r6, r9, r0
c0de69da:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de69de:	f001 ba75 	b.w	c0de7ecc <__aeabi_memclr>

c0de69e2 <OUTLINED_FUNCTION_3>:
c0de69e2:	460e      	mov	r6, r1
c0de69e4:	2140      	movs	r1, #64	@ 0x40
c0de69e6:	4698      	mov	r8, r3
c0de69e8:	4615      	mov	r5, r2
c0de69ea:	eb09 0400 	add.w	r4, r9, r0
c0de69ee:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
c0de69f2:	f001 ba6b 	b.w	c0de7ecc <__aeabi_memclr>

c0de69f6 <OUTLINED_FUNCTION_4>:
c0de69f6:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de69fa:	f7ff b9af 	b.w	c0de5d5c <getContentElemAtIdx>

c0de69fe <OUTLINED_FUNCTION_5>:
c0de69fe:	3004      	adds	r0, #4
c0de6a00:	f000 bf58 	b.w	c0de78b4 <pic>

c0de6a04 <OUTLINED_FUNCTION_6>:
c0de6a04:	e9cd 6500 	strd	r6, r5, [sp]
c0de6a08:	f7fe bd4e 	b.w	c0de54a8 <drawStep>

c0de6a0c <OUTLINED_FUNCTION_7>:
c0de6a0c:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de6a10:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de6a14:	3901      	subs	r1, #1
c0de6a16:	4281      	cmp	r1, r0
c0de6a18:	4770      	bx	lr

c0de6a1a <OUTLINED_FUNCTION_8>:
c0de6a1a:	eb09 0100 	add.w	r1, r9, r0
c0de6a1e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6a22:	f881 005e 	strb.w	r0, [r1, #94]	@ 0x5e
c0de6a26:	4770      	bx	lr

c0de6a28 <OUTLINED_FUNCTION_9>:
c0de6a28:	4604      	mov	r4, r0
c0de6a2a:	2138      	movs	r1, #56	@ 0x38
c0de6a2c:	4628      	mov	r0, r5
c0de6a2e:	f001 ba4d 	b.w	c0de7ecc <__aeabi_memclr>

c0de6a32 <OUTLINED_FUNCTION_10>:
c0de6a32:	f997 1035 	ldrsb.w	r1, [r7, #53]	@ 0x35
c0de6a36:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de6a3a:	4730      	bx	r6

c0de6a3c <bip32_path_read>:
c0de6a3c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6a40:	b10b      	cbz	r3, c0de6a46 <bip32_path_read+0xa>
c0de6a42:	2b0a      	cmp	r3, #10
c0de6a44:	d902      	bls.n	c0de6a4c <bip32_path_read+0x10>
c0de6a46:	2000      	movs	r0, #0
c0de6a48:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6a4c:	4692      	mov	sl, r2
c0de6a4e:	460e      	mov	r6, r1
c0de6a50:	4683      	mov	fp, r0
c0de6a52:	425f      	negs	r7, r3
c0de6a54:	2500      	movs	r5, #0
c0de6a56:	f04f 0800 	mov.w	r8, #0
c0de6a5a:	9301      	str	r3, [sp, #4]
c0de6a5c:	42af      	cmp	r7, r5
c0de6a5e:	d00c      	beq.n	c0de6a7a <bip32_path_read+0x3e>
c0de6a60:	f108 0404 	add.w	r4, r8, #4
c0de6a64:	42b4      	cmp	r4, r6
c0de6a66:	d808      	bhi.n	c0de6a7a <bip32_path_read+0x3e>
c0de6a68:	4658      	mov	r0, fp
c0de6a6a:	4641      	mov	r1, r8
c0de6a6c:	f000 fb6f 	bl	c0de714e <read_u32_be>
c0de6a70:	f84a 0008 	str.w	r0, [sl, r8]
c0de6a74:	3d01      	subs	r5, #1
c0de6a76:	46a0      	mov	r8, r4
c0de6a78:	e7f0      	b.n	c0de6a5c <bip32_path_read+0x20>
c0de6a7a:	9a01      	ldr	r2, [sp, #4]
c0de6a7c:	4269      	negs	r1, r5
c0de6a7e:	2000      	movs	r0, #0
c0de6a80:	4291      	cmp	r1, r2
c0de6a82:	bf28      	it	cs
c0de6a84:	2001      	movcs	r0, #1
c0de6a86:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de6a8a <buffer_seek_cur>:
c0de6a8a:	6882      	ldr	r2, [r0, #8]
c0de6a8c:	1889      	adds	r1, r1, r2
c0de6a8e:	d205      	bcs.n	c0de6a9c <buffer_seek_cur+0x12>
c0de6a90:	6842      	ldr	r2, [r0, #4]
c0de6a92:	4291      	cmp	r1, r2
c0de6a94:	bf9e      	ittt	ls
c0de6a96:	6081      	strls	r1, [r0, #8]
c0de6a98:	2001      	movls	r0, #1
c0de6a9a:	4770      	bxls	lr
c0de6a9c:	2000      	movs	r0, #0
c0de6a9e:	4770      	bx	lr

c0de6aa0 <buffer_read_u8>:
c0de6aa0:	b510      	push	{r4, lr}
c0de6aa2:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de6aa6:	429a      	cmp	r2, r3
c0de6aa8:	d00a      	beq.n	c0de6ac0 <buffer_read_u8+0x20>
c0de6aaa:	6804      	ldr	r4, [r0, #0]
c0de6aac:	5ce4      	ldrb	r4, [r4, r3]
c0de6aae:	700c      	strb	r4, [r1, #0]
c0de6ab0:	6881      	ldr	r1, [r0, #8]
c0de6ab2:	3101      	adds	r1, #1
c0de6ab4:	d206      	bcs.n	c0de6ac4 <buffer_read_u8+0x24>
c0de6ab6:	6844      	ldr	r4, [r0, #4]
c0de6ab8:	42a1      	cmp	r1, r4
c0de6aba:	bf98      	it	ls
c0de6abc:	6081      	strls	r1, [r0, #8]
c0de6abe:	e001      	b.n	c0de6ac4 <buffer_read_u8+0x24>
c0de6ac0:	2000      	movs	r0, #0
c0de6ac2:	7008      	strb	r0, [r1, #0]
c0de6ac4:	1ad0      	subs	r0, r2, r3
c0de6ac6:	bf18      	it	ne
c0de6ac8:	2001      	movne	r0, #1
c0de6aca:	bd10      	pop	{r4, pc}

c0de6acc <buffer_read_u64>:
c0de6acc:	b570      	push	{r4, r5, r6, lr}
c0de6ace:	f000 f87d 	bl	c0de6bcc <OUTLINED_FUNCTION_0>
c0de6ad2:	2e07      	cmp	r6, #7
c0de6ad4:	d904      	bls.n	c0de6ae0 <buffer_read_u64+0x14>
c0de6ad6:	6820      	ldr	r0, [r4, #0]
c0de6ad8:	b132      	cbz	r2, c0de6ae8 <buffer_read_u64+0x1c>
c0de6ada:	f000 fb6f 	bl	c0de71bc <read_u64_le>
c0de6ade:	e005      	b.n	c0de6aec <buffer_read_u64+0x20>
c0de6ae0:	2000      	movs	r0, #0
c0de6ae2:	e9c5 0000 	strd	r0, r0, [r5]
c0de6ae6:	e00c      	b.n	c0de6b02 <buffer_read_u64+0x36>
c0de6ae8:	f000 fb3d 	bl	c0de7166 <read_u64_be>
c0de6aec:	e9c5 0100 	strd	r0, r1, [r5]
c0de6af0:	68a0      	ldr	r0, [r4, #8]
c0de6af2:	f110 0f09 	cmn.w	r0, #9
c0de6af6:	d804      	bhi.n	c0de6b02 <buffer_read_u64+0x36>
c0de6af8:	6861      	ldr	r1, [r4, #4]
c0de6afa:	3008      	adds	r0, #8
c0de6afc:	4288      	cmp	r0, r1
c0de6afe:	bf98      	it	ls
c0de6b00:	60a0      	strls	r0, [r4, #8]
c0de6b02:	2000      	movs	r0, #0
c0de6b04:	2e07      	cmp	r6, #7
c0de6b06:	bf88      	it	hi
c0de6b08:	2001      	movhi	r0, #1
c0de6b0a:	bd70      	pop	{r4, r5, r6, pc}

c0de6b0c <buffer_read_varint>:
c0de6b0c:	b5b0      	push	{r4, r5, r7, lr}
c0de6b0e:	4604      	mov	r4, r0
c0de6b10:	460d      	mov	r5, r1
c0de6b12:	6800      	ldr	r0, [r0, #0]
c0de6b14:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de6b18:	4410      	add	r0, r2
c0de6b1a:	1a89      	subs	r1, r1, r2
c0de6b1c:	462a      	mov	r2, r5
c0de6b1e:	f000 fbb7 	bl	c0de7290 <varint_read>
c0de6b22:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de6b26:	dd0a      	ble.n	c0de6b3e <buffer_read_varint+0x32>
c0de6b28:	68a1      	ldr	r1, [r4, #8]
c0de6b2a:	1840      	adds	r0, r0, r1
c0de6b2c:	d205      	bcs.n	c0de6b3a <buffer_read_varint+0x2e>
c0de6b2e:	6861      	ldr	r1, [r4, #4]
c0de6b30:	4288      	cmp	r0, r1
c0de6b32:	bf9e      	ittt	ls
c0de6b34:	60a0      	strls	r0, [r4, #8]
c0de6b36:	2001      	movls	r0, #1
c0de6b38:	bdb0      	popls	{r4, r5, r7, pc}
c0de6b3a:	2000      	movs	r0, #0
c0de6b3c:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b3e:	2000      	movs	r0, #0
c0de6b40:	e9c5 0000 	strd	r0, r0, [r5]
c0de6b44:	bdb0      	pop	{r4, r5, r7, pc}

c0de6b46 <buffer_read_bip32_path>:
c0de6b46:	b5b0      	push	{r4, r5, r7, lr}
c0de6b48:	4604      	mov	r4, r0
c0de6b4a:	4615      	mov	r5, r2
c0de6b4c:	460a      	mov	r2, r1
c0de6b4e:	6800      	ldr	r0, [r0, #0]
c0de6b50:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de6b54:	4418      	add	r0, r3
c0de6b56:	1ac9      	subs	r1, r1, r3
c0de6b58:	462b      	mov	r3, r5
c0de6b5a:	f7ff ff6f 	bl	c0de6a3c <bip32_path_read>
c0de6b5e:	b140      	cbz	r0, c0de6b72 <buffer_read_bip32_path+0x2c>
c0de6b60:	68a2      	ldr	r2, [r4, #8]
c0de6b62:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de6b66:	4291      	cmp	r1, r2
c0de6b68:	d303      	bcc.n	c0de6b72 <buffer_read_bip32_path+0x2c>
c0de6b6a:	6862      	ldr	r2, [r4, #4]
c0de6b6c:	4291      	cmp	r1, r2
c0de6b6e:	bf98      	it	ls
c0de6b70:	60a1      	strls	r1, [r4, #8]
c0de6b72:	bdb0      	pop	{r4, r5, r7, pc}

c0de6b74 <buffer_copy>:
c0de6b74:	b5b0      	push	{r4, r5, r7, lr}
c0de6b76:	4614      	mov	r4, r2
c0de6b78:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de6b7c:	1a9d      	subs	r5, r3, r2
c0de6b7e:	42a5      	cmp	r5, r4
c0de6b80:	d806      	bhi.n	c0de6b90 <buffer_copy+0x1c>
c0de6b82:	6800      	ldr	r0, [r0, #0]
c0de6b84:	4402      	add	r2, r0
c0de6b86:	4608      	mov	r0, r1
c0de6b88:	4611      	mov	r1, r2
c0de6b8a:	462a      	mov	r2, r5
c0de6b8c:	f001 f996 	bl	c0de7ebc <__aeabi_memmove>
c0de6b90:	2000      	movs	r0, #0
c0de6b92:	42a5      	cmp	r5, r4
c0de6b94:	bf98      	it	ls
c0de6b96:	2001      	movls	r0, #1
c0de6b98:	bdb0      	pop	{r4, r5, r7, pc}

c0de6b9a <buffer_move>:
c0de6b9a:	b5b0      	push	{r4, r5, r7, lr}
c0de6b9c:	4615      	mov	r5, r2
c0de6b9e:	4604      	mov	r4, r0
c0de6ba0:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de6ba4:	1a12      	subs	r2, r2, r0
c0de6ba6:	42aa      	cmp	r2, r5
c0de6ba8:	bf84      	itt	hi
c0de6baa:	2000      	movhi	r0, #0
c0de6bac:	bdb0      	pophi	{r4, r5, r7, pc}
c0de6bae:	6823      	ldr	r3, [r4, #0]
c0de6bb0:	4403      	add	r3, r0
c0de6bb2:	4608      	mov	r0, r1
c0de6bb4:	4619      	mov	r1, r3
c0de6bb6:	f001 f981 	bl	c0de7ebc <__aeabi_memmove>
c0de6bba:	68a0      	ldr	r0, [r4, #8]
c0de6bbc:	1940      	adds	r0, r0, r5
c0de6bbe:	d203      	bcs.n	c0de6bc8 <buffer_move+0x2e>
c0de6bc0:	6861      	ldr	r1, [r4, #4]
c0de6bc2:	4288      	cmp	r0, r1
c0de6bc4:	bf98      	it	ls
c0de6bc6:	60a0      	strls	r0, [r4, #8]
c0de6bc8:	2001      	movs	r0, #1
c0de6bca:	bdb0      	pop	{r4, r5, r7, pc}

c0de6bcc <OUTLINED_FUNCTION_0>:
c0de6bcc:	4604      	mov	r4, r0
c0de6bce:	460d      	mov	r5, r1
c0de6bd0:	6840      	ldr	r0, [r0, #4]
c0de6bd2:	68a1      	ldr	r1, [r4, #8]
c0de6bd4:	1a46      	subs	r6, r0, r1
c0de6bd6:	4770      	bx	lr

c0de6bd8 <bip32_derive_with_seed_init_privkey_256>:
c0de6bd8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6bdc:	b095      	sub	sp, #84	@ 0x54
c0de6bde:	460d      	mov	r5, r1
c0de6be0:	4607      	mov	r7, r0
c0de6be2:	a904      	add	r1, sp, #16
c0de6be4:	469a      	mov	sl, r3
c0de6be6:	4614      	mov	r4, r2
c0de6be8:	4628      	mov	r0, r5
c0de6bea:	f000 ffc3 	bl	c0de7b74 <cx_ecdomain_parameters_length>
c0de6bee:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6bf2:	4606      	mov	r6, r0
c0de6bf4:	b9e0      	cbnz	r0, c0de6c30 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6bf6:	9804      	ldr	r0, [sp, #16]
c0de6bf8:	2820      	cmp	r0, #32
c0de6bfa:	d117      	bne.n	c0de6c2c <bip32_derive_with_seed_init_privkey_256+0x54>
c0de6bfc:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de6bfe:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de6c02:	ab05      	add	r3, sp, #20
c0de6c04:	e9cd 3200 	strd	r3, r2, [sp]
c0de6c08:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de6c0c:	4638      	mov	r0, r7
c0de6c0e:	4629      	mov	r1, r5
c0de6c10:	4622      	mov	r2, r4
c0de6c12:	4653      	mov	r3, sl
c0de6c14:	f000 f818 	bl	c0de6c48 <os_derive_bip32_with_seed_no_throw>
c0de6c18:	4606      	mov	r6, r0
c0de6c1a:	b948      	cbnz	r0, c0de6c30 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6c1c:	9a04      	ldr	r2, [sp, #16]
c0de6c1e:	a905      	add	r1, sp, #20
c0de6c20:	4628      	mov	r0, r5
c0de6c22:	4643      	mov	r3, r8
c0de6c24:	f000 fc12 	bl	c0de744c <cx_ecfp_init_private_key_no_throw>
c0de6c28:	4606      	mov	r6, r0
c0de6c2a:	e001      	b.n	c0de6c30 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6c2c:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6c30:	a805      	add	r0, sp, #20
c0de6c32:	2140      	movs	r1, #64	@ 0x40
c0de6c34:	f001 f958 	bl	c0de7ee8 <explicit_bzero>
c0de6c38:	b116      	cbz	r6, c0de6c40 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de6c3a:	4640      	mov	r0, r8
c0de6c3c:	f000 f89f 	bl	c0de6d7e <OUTLINED_FUNCTION_0>
c0de6c40:	4630      	mov	r0, r6
c0de6c42:	b015      	add	sp, #84	@ 0x54
c0de6c44:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de6c48 <os_derive_bip32_with_seed_no_throw>:
c0de6c48:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6c4c:	b090      	sub	sp, #64	@ 0x40
c0de6c4e:	f10d 0810 	add.w	r8, sp, #16
c0de6c52:	4607      	mov	r7, r0
c0de6c54:	469b      	mov	fp, r3
c0de6c56:	4616      	mov	r6, r2
c0de6c58:	460c      	mov	r4, r1
c0de6c5a:	4640      	mov	r0, r8
c0de6c5c:	f001 f97a 	bl	c0de7f54 <setjmp>
c0de6c60:	b285      	uxth	r5, r0
c0de6c62:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de6c66:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6c6a:	b155      	cbz	r5, c0de6c82 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de6c6c:	2000      	movs	r0, #0
c0de6c6e:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6c72:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6c74:	f001 f822 	bl	c0de7cbc <try_context_set>
c0de6c78:	2140      	movs	r1, #64	@ 0x40
c0de6c7a:	4650      	mov	r0, sl
c0de6c7c:	f001 f934 	bl	c0de7ee8 <explicit_bzero>
c0de6c80:	e012      	b.n	c0de6ca8 <os_derive_bip32_with_seed_no_throw+0x60>
c0de6c82:	a804      	add	r0, sp, #16
c0de6c84:	f001 f81a 	bl	c0de7cbc <try_context_set>
c0de6c88:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de6c8a:	900e      	str	r0, [sp, #56]	@ 0x38
c0de6c8c:	4668      	mov	r0, sp
c0de6c8e:	4632      	mov	r2, r6
c0de6c90:	465b      	mov	r3, fp
c0de6c92:	f8c0 a000 	str.w	sl, [r0]
c0de6c96:	6041      	str	r1, [r0, #4]
c0de6c98:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de6c9a:	6081      	str	r1, [r0, #8]
c0de6c9c:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de6c9e:	60c1      	str	r1, [r0, #12]
c0de6ca0:	4638      	mov	r0, r7
c0de6ca2:	4621      	mov	r1, r4
c0de6ca4:	f000 ff70 	bl	c0de7b88 <os_perso_derive_node_with_seed_key>
c0de6ca8:	f001 f800 	bl	c0de7cac <try_context_get>
c0de6cac:	4540      	cmp	r0, r8
c0de6cae:	d102      	bne.n	c0de6cb6 <os_derive_bip32_with_seed_no_throw+0x6e>
c0de6cb0:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6cb2:	f001 f803 	bl	c0de7cbc <try_context_set>
c0de6cb6:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de6cba:	b918      	cbnz	r0, c0de6cc4 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de6cbc:	4628      	mov	r0, r5
c0de6cbe:	b010      	add	sp, #64	@ 0x40
c0de6cc0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6cc4:	f000 fc51 	bl	c0de756a <os_longjmp>

c0de6cc8 <bip32_derive_with_seed_get_pubkey_256>:
c0de6cc8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6cca:	b0a1      	sub	sp, #132	@ 0x84
c0de6ccc:	460e      	mov	r6, r1
c0de6cce:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de6cd0:	9103      	str	r1, [sp, #12]
c0de6cd2:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de6cd4:	9102      	str	r1, [sp, #8]
c0de6cd6:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de6cd8:	9101      	str	r1, [sp, #4]
c0de6cda:	a917      	add	r1, sp, #92	@ 0x5c
c0de6cdc:	9100      	str	r1, [sp, #0]
c0de6cde:	4631      	mov	r1, r6
c0de6ce0:	f7ff ff7a 	bl	c0de6bd8 <bip32_derive_with_seed_init_privkey_256>
c0de6ce4:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de6ce6:	4605      	mov	r5, r0
c0de6ce8:	b9b8      	cbnz	r0, c0de6d1a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6cea:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de6cec:	2301      	movs	r3, #1
c0de6cee:	9000      	str	r0, [sp, #0]
c0de6cf0:	af04      	add	r7, sp, #16
c0de6cf2:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6cf4:	4630      	mov	r0, r6
c0de6cf6:	4639      	mov	r1, r7
c0de6cf8:	f000 fba3 	bl	c0de7442 <cx_ecfp_generate_pair2_no_throw>
c0de6cfc:	4605      	mov	r5, r0
c0de6cfe:	b960      	cbnz	r0, c0de6d1a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6d00:	9805      	ldr	r0, [sp, #20]
c0de6d02:	2841      	cmp	r0, #65	@ 0x41
c0de6d04:	d107      	bne.n	c0de6d16 <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de6d06:	f107 0108 	add.w	r1, r7, #8
c0de6d0a:	4620      	mov	r0, r4
c0de6d0c:	2241      	movs	r2, #65	@ 0x41
c0de6d0e:	f001 f8d3 	bl	c0de7eb8 <__aeabi_memcpy>
c0de6d12:	2500      	movs	r5, #0
c0de6d14:	e001      	b.n	c0de6d1a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6d16:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de6d1a:	a817      	add	r0, sp, #92	@ 0x5c
c0de6d1c:	f000 f82f 	bl	c0de6d7e <OUTLINED_FUNCTION_0>
c0de6d20:	b11d      	cbz	r5, c0de6d2a <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de6d22:	4620      	mov	r0, r4
c0de6d24:	2141      	movs	r1, #65	@ 0x41
c0de6d26:	f001 f8df 	bl	c0de7ee8 <explicit_bzero>
c0de6d2a:	4628      	mov	r0, r5
c0de6d2c:	b021      	add	sp, #132	@ 0x84
c0de6d2e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6d30 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6d30:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d32:	b08f      	sub	sp, #60	@ 0x3c
c0de6d34:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de6d36:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de6d38:	683c      	ldr	r4, [r7, #0]
c0de6d3a:	9503      	str	r5, [sp, #12]
c0de6d3c:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de6d3e:	9502      	str	r5, [sp, #8]
c0de6d40:	2500      	movs	r5, #0
c0de6d42:	9501      	str	r5, [sp, #4]
c0de6d44:	ad05      	add	r5, sp, #20
c0de6d46:	9500      	str	r5, [sp, #0]
c0de6d48:	f7ff ff46 	bl	c0de6bd8 <bip32_derive_with_seed_init_privkey_256>
c0de6d4c:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de6d4e:	4606      	mov	r6, r0
c0de6d50:	b950      	cbnz	r0, c0de6d68 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6d52:	ae14      	add	r6, sp, #80	@ 0x50
c0de6d54:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de6d56:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de6d58:	e9cd 6500 	strd	r6, r5, [sp]
c0de6d5c:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6d60:	a805      	add	r0, sp, #20
c0de6d62:	f000 fb69 	bl	c0de7438 <cx_ecdsa_sign_no_throw>
c0de6d66:	4606      	mov	r6, r0
c0de6d68:	a805      	add	r0, sp, #20
c0de6d6a:	f000 f808 	bl	c0de6d7e <OUTLINED_FUNCTION_0>
c0de6d6e:	b11e      	cbz	r6, c0de6d78 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6d70:	4628      	mov	r0, r5
c0de6d72:	4621      	mov	r1, r4
c0de6d74:	f001 f8b8 	bl	c0de7ee8 <explicit_bzero>
c0de6d78:	4630      	mov	r0, r6
c0de6d7a:	b00f      	add	sp, #60	@ 0x3c
c0de6d7c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6d7e <OUTLINED_FUNCTION_0>:
c0de6d7e:	2128      	movs	r1, #40	@ 0x28
c0de6d80:	f001 b8b2 	b.w	c0de7ee8 <explicit_bzero>

c0de6d84 <format_u64>:
c0de6d84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6d88:	b1f9      	cbz	r1, c0de6dca <format_u64+0x46>
c0de6d8a:	4615      	mov	r5, r2
c0de6d8c:	4604      	mov	r4, r0
c0de6d8e:	f1a1 0801 	sub.w	r8, r1, #1
c0de6d92:	2700      	movs	r7, #0
c0de6d94:	2600      	movs	r6, #0
c0de6d96:	f1b5 000a 	subs.w	r0, r5, #10
c0de6d9a:	f173 0000 	sbcs.w	r0, r3, #0
c0de6d9e:	d316      	bcc.n	c0de6dce <format_u64+0x4a>
c0de6da0:	4619      	mov	r1, r3
c0de6da2:	4628      	mov	r0, r5
c0de6da4:	220a      	movs	r2, #10
c0de6da6:	2300      	movs	r3, #0
c0de6da8:	f001 f894 	bl	c0de7ed4 <__aeabi_uldivmod>
c0de6dac:	460b      	mov	r3, r1
c0de6dae:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6db2:	1cba      	adds	r2, r7, #2
c0de6db4:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de6db8:	4605      	mov	r5, r0
c0de6dba:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de6dbe:	55e1      	strb	r1, [r4, r7]
c0de6dc0:	1c79      	adds	r1, r7, #1
c0de6dc2:	4542      	cmp	r2, r8
c0de6dc4:	460f      	mov	r7, r1
c0de6dc6:	d9e6      	bls.n	c0de6d96 <format_u64+0x12>
c0de6dc8:	e012      	b.n	c0de6df0 <format_u64+0x6c>
c0de6dca:	2600      	movs	r6, #0
c0de6dcc:	e010      	b.n	c0de6df0 <format_u64+0x6c>
c0de6dce:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de6dd2:	19e1      	adds	r1, r4, r7
c0de6dd4:	55e0      	strb	r0, [r4, r7]
c0de6dd6:	2000      	movs	r0, #0
c0de6dd8:	7048      	strb	r0, [r1, #1]
c0de6dda:	b2c1      	uxtb	r1, r0
c0de6ddc:	428f      	cmp	r7, r1
c0de6dde:	d906      	bls.n	c0de6dee <format_u64+0x6a>
c0de6de0:	5c62      	ldrb	r2, [r4, r1]
c0de6de2:	5de3      	ldrb	r3, [r4, r7]
c0de6de4:	3001      	adds	r0, #1
c0de6de6:	5463      	strb	r3, [r4, r1]
c0de6de8:	55e2      	strb	r2, [r4, r7]
c0de6dea:	3f01      	subs	r7, #1
c0de6dec:	e7f5      	b.n	c0de6dda <format_u64+0x56>
c0de6dee:	2601      	movs	r6, #1
c0de6df0:	4630      	mov	r0, r6
c0de6df2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6df6 <format_fpu64>:
c0de6df6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6dfa:	b086      	sub	sp, #24
c0de6dfc:	466c      	mov	r4, sp
c0de6dfe:	4688      	mov	r8, r1
c0de6e00:	4605      	mov	r5, r0
c0de6e02:	2115      	movs	r1, #21
c0de6e04:	461e      	mov	r6, r3
c0de6e06:	4617      	mov	r7, r2
c0de6e08:	4620      	mov	r0, r4
c0de6e0a:	f001 f85f 	bl	c0de7ecc <__aeabi_memclr>
c0de6e0e:	4620      	mov	r0, r4
c0de6e10:	2115      	movs	r1, #21
c0de6e12:	463a      	mov	r2, r7
c0de6e14:	4633      	mov	r3, r6
c0de6e16:	f7ff ffb5 	bl	c0de6d84 <format_u64>
c0de6e1a:	b340      	cbz	r0, c0de6e6e <format_fpu64+0x78>
c0de6e1c:	466f      	mov	r7, sp
c0de6e1e:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6e20:	4638      	mov	r0, r7
c0de6e22:	f001 f8af 	bl	c0de7f84 <strlen>
c0de6e26:	42b0      	cmp	r0, r6
c0de6e28:	d910      	bls.n	c0de6e4c <format_fpu64+0x56>
c0de6e2a:	1831      	adds	r1, r6, r0
c0de6e2c:	3101      	adds	r1, #1
c0de6e2e:	4541      	cmp	r1, r8
c0de6e30:	d21d      	bcs.n	c0de6e6e <format_fpu64+0x78>
c0de6e32:	1b84      	subs	r4, r0, r6
c0de6e34:	4628      	mov	r0, r5
c0de6e36:	4639      	mov	r1, r7
c0de6e38:	4622      	mov	r2, r4
c0de6e3a:	f001 f83d 	bl	c0de7eb8 <__aeabi_memcpy>
c0de6e3e:	1928      	adds	r0, r5, r4
c0de6e40:	212e      	movs	r1, #46	@ 0x2e
c0de6e42:	4632      	mov	r2, r6
c0de6e44:	f800 1b01 	strb.w	r1, [r0], #1
c0de6e48:	1939      	adds	r1, r7, r4
c0de6e4a:	e015      	b.n	c0de6e78 <format_fpu64+0x82>
c0de6e4c:	1a32      	subs	r2, r6, r0
c0de6e4e:	1c91      	adds	r1, r2, #2
c0de6e50:	4541      	cmp	r1, r8
c0de6e52:	d20c      	bcs.n	c0de6e6e <format_fpu64+0x78>
c0de6e54:	202e      	movs	r0, #46	@ 0x2e
c0de6e56:	2330      	movs	r3, #48	@ 0x30
c0de6e58:	2400      	movs	r4, #0
c0de6e5a:	7068      	strb	r0, [r5, #1]
c0de6e5c:	1ca8      	adds	r0, r5, #2
c0de6e5e:	702b      	strb	r3, [r5, #0]
c0de6e60:	b2a5      	uxth	r5, r4
c0de6e62:	42aa      	cmp	r2, r5
c0de6e64:	d905      	bls.n	c0de6e72 <format_fpu64+0x7c>
c0de6e66:	f800 3b01 	strb.w	r3, [r0], #1
c0de6e6a:	3401      	adds	r4, #1
c0de6e6c:	e7f8      	b.n	c0de6e60 <format_fpu64+0x6a>
c0de6e6e:	2000      	movs	r0, #0
c0de6e70:	e005      	b.n	c0de6e7e <format_fpu64+0x88>
c0de6e72:	eba8 0201 	sub.w	r2, r8, r1
c0de6e76:	4669      	mov	r1, sp
c0de6e78:	f001 f89e 	bl	c0de7fb8 <strncpy>
c0de6e7c:	2001      	movs	r0, #1
c0de6e7e:	b006      	add	sp, #24
c0de6e80:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6e84 <format_hex>:
c0de6e84:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6e86:	4604      	mov	r4, r0
c0de6e88:	0048      	lsls	r0, r1, #1
c0de6e8a:	f100 0c01 	add.w	ip, r0, #1
c0de6e8e:	459c      	cmp	ip, r3
c0de6e90:	d902      	bls.n	c0de6e98 <format_hex+0x14>
c0de6e92:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de6e96:	e018      	b.n	c0de6eca <format_hex+0x46>
c0de6e98:	480d      	ldr	r0, [pc, #52]	@ (c0de6ed0 <format_hex+0x4c>)
c0de6e9a:	2500      	movs	r5, #0
c0de6e9c:	4478      	add	r0, pc
c0de6e9e:	b191      	cbz	r1, c0de6ec6 <format_hex+0x42>
c0de6ea0:	1cef      	adds	r7, r5, #3
c0de6ea2:	429f      	cmp	r7, r3
c0de6ea4:	d80d      	bhi.n	c0de6ec2 <format_hex+0x3e>
c0de6ea6:	7827      	ldrb	r7, [r4, #0]
c0de6ea8:	3901      	subs	r1, #1
c0de6eaa:	093f      	lsrs	r7, r7, #4
c0de6eac:	5dc7      	ldrb	r7, [r0, r7]
c0de6eae:	5557      	strb	r7, [r2, r5]
c0de6eb0:	1957      	adds	r7, r2, r5
c0de6eb2:	3502      	adds	r5, #2
c0de6eb4:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de6eb8:	f006 060f 	and.w	r6, r6, #15
c0de6ebc:	5d86      	ldrb	r6, [r0, r6]
c0de6ebe:	707e      	strb	r6, [r7, #1]
c0de6ec0:	e7ed      	b.n	c0de6e9e <format_hex+0x1a>
c0de6ec2:	f105 0c01 	add.w	ip, r5, #1
c0de6ec6:	2000      	movs	r0, #0
c0de6ec8:	5550      	strb	r0, [r2, r5]
c0de6eca:	4660      	mov	r0, ip
c0de6ecc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6ece:	bf00      	nop
c0de6ed0:	00001557 	.word	0x00001557

c0de6ed4 <app_ticker_event_callback>:
c0de6ed4:	4770      	bx	lr
	...

c0de6ed8 <io_event>:
c0de6ed8:	b580      	push	{r7, lr}
c0de6eda:	480a      	ldr	r0, [pc, #40]	@ (c0de6f04 <io_event+0x2c>)
c0de6edc:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6ee0:	290e      	cmp	r1, #14
c0de6ee2:	d005      	beq.n	c0de6ef0 <io_event+0x18>
c0de6ee4:	2905      	cmp	r1, #5
c0de6ee6:	d108      	bne.n	c0de6efa <io_event+0x22>
c0de6ee8:	4448      	add	r0, r9
c0de6eea:	f000 fa05 	bl	c0de72f8 <ux_process_button_event>
c0de6eee:	e006      	b.n	c0de6efe <io_event+0x26>
c0de6ef0:	f7ff fff0 	bl	c0de6ed4 <app_ticker_event_callback>
c0de6ef4:	f000 fa44 	bl	c0de7380 <ux_process_ticker_event>
c0de6ef8:	e001      	b.n	c0de6efe <io_event+0x26>
c0de6efa:	f000 fa59 	bl	c0de73b0 <ux_process_default_event>
c0de6efe:	2001      	movs	r0, #1
c0de6f00:	bd80      	pop	{r7, pc}
c0de6f02:	bf00      	nop
c0de6f04:	00000a3c 	.word	0x00000a3c

c0de6f08 <io_init>:
c0de6f08:	4802      	ldr	r0, [pc, #8]	@ (c0de6f14 <io_init+0xc>)
c0de6f0a:	2101      	movs	r1, #1
c0de6f0c:	f809 1000 	strb.w	r1, [r9, r0]
c0de6f10:	4770      	bx	lr
c0de6f12:	bf00      	nop
c0de6f14:	00000b4c 	.word	0x00000b4c

c0de6f18 <io_recv_command>:
c0de6f18:	b510      	push	{r4, lr}
c0de6f1a:	4c09      	ldr	r4, [pc, #36]	@ (c0de6f40 <io_recv_command+0x28>)
c0de6f1c:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6f20:	2801      	cmp	r0, #1
c0de6f22:	d104      	bne.n	c0de6f2e <io_recv_command+0x16>
c0de6f24:	f000 fea0 	bl	c0de7c68 <os_io_start>
c0de6f28:	2000      	movs	r0, #0
c0de6f2a:	f809 0004 	strb.w	r0, [r9, r4]
c0de6f2e:	2000      	movs	r0, #0
c0de6f30:	2800      	cmp	r0, #0
c0de6f32:	dc03      	bgt.n	c0de6f3c <io_recv_command+0x24>
c0de6f34:	2001      	movs	r0, #1
c0de6f36:	f7fc fe2f 	bl	c0de3b98 <io_legacy_apdu_rx>
c0de6f3a:	e7f9      	b.n	c0de6f30 <io_recv_command+0x18>
c0de6f3c:	bd10      	pop	{r4, pc}
c0de6f3e:	bf00      	nop
c0de6f40:	00000b4c 	.word	0x00000b4c

c0de6f44 <io_send_response_buffers>:
c0de6f44:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6f48:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de6fdc <io_send_response_buffers+0x98>
c0de6f4c:	4690      	mov	r8, r2
c0de6f4e:	460f      	mov	r7, r1
c0de6f50:	4606      	mov	r6, r0
c0de6f52:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6f56:	2500      	movs	r5, #0
c0de6f58:	b1b6      	cbz	r6, c0de6f88 <io_send_response_buffers+0x44>
c0de6f5a:	b1af      	cbz	r7, c0de6f88 <io_send_response_buffers+0x44>
c0de6f5c:	2500      	movs	r5, #0
c0de6f5e:	b19f      	cbz	r7, c0de6f88 <io_send_response_buffers+0x44>
c0de6f60:	eb09 000a 	add.w	r0, r9, sl
c0de6f64:	1b62      	subs	r2, r4, r5
c0de6f66:	1941      	adds	r1, r0, r5
c0de6f68:	4630      	mov	r0, r6
c0de6f6a:	f7ff fe03 	bl	c0de6b74 <buffer_copy>
c0de6f6e:	b130      	cbz	r0, c0de6f7e <io_send_response_buffers+0x3a>
c0de6f70:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6f74:	360c      	adds	r6, #12
c0de6f76:	3f01      	subs	r7, #1
c0de6f78:	4428      	add	r0, r5
c0de6f7a:	1a45      	subs	r5, r0, r1
c0de6f7c:	e7ef      	b.n	c0de6f5e <io_send_response_buffers+0x1a>
c0de6f7e:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de6f82:	2600      	movs	r6, #0
c0de6f84:	2700      	movs	r7, #0
c0de6f86:	e7e6      	b.n	c0de6f56 <io_send_response_buffers+0x12>
c0de6f88:	fa1f f688 	uxth.w	r6, r8
c0de6f8c:	eb09 000a 	add.w	r0, r9, sl
c0de6f90:	4629      	mov	r1, r5
c0de6f92:	4632      	mov	r2, r6
c0de6f94:	f000 f9aa 	bl	c0de72ec <write_u16_be>
c0de6f98:	4811      	ldr	r0, [pc, #68]	@ (c0de6fe0 <io_send_response_buffers+0x9c>)
c0de6f9a:	1ca9      	adds	r1, r5, #2
c0de6f9c:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6fa0:	b118      	cbz	r0, c0de6faa <io_send_response_buffers+0x66>
c0de6fa2:	4810      	ldr	r0, [pc, #64]	@ (c0de6fe4 <io_send_response_buffers+0xa0>)
c0de6fa4:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6fa8:	b928      	cbnz	r0, c0de6fb6 <io_send_response_buffers+0x72>
c0de6faa:	f000 f81f 	bl	c0de6fec <OUTLINED_FUNCTION_0>
c0de6fae:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de6fb2:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de6fb6:	f000 f819 	bl	c0de6fec <OUTLINED_FUNCTION_0>
c0de6fba:	2800      	cmp	r0, #0
c0de6fbc:	d40a      	bmi.n	c0de6fd4 <io_send_response_buffers+0x90>
c0de6fbe:	480a      	ldr	r0, [pc, #40]	@ (c0de6fe8 <io_send_response_buffers+0xa4>)
c0de6fc0:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de6fc4:	fab1 f181 	clz	r1, r1
c0de6fc8:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6fcc:	0949      	lsrs	r1, r1, #5
c0de6fce:	7001      	strb	r1, [r0, #0]
c0de6fd0:	f000 fe1a 	bl	c0de7c08 <os_lib_end>
c0de6fd4:	20ff      	movs	r0, #255	@ 0xff
c0de6fd6:	f000 fe33 	bl	c0de7c40 <os_sched_exit>
c0de6fda:	bf00      	nop
c0de6fdc:	00000694 	.word	0x00000694
c0de6fe0:	00000b5c 	.word	0x00000b5c
c0de6fe4:	00000b5d 	.word	0x00000b5d
c0de6fe8:	00000b60 	.word	0x00000b60

c0de6fec <OUTLINED_FUNCTION_0>:
c0de6fec:	eb09 000a 	add.w	r0, r9, sl
c0de6ff0:	b289      	uxth	r1, r1
c0de6ff2:	f7fc bdbd 	b.w	c0de3b70 <io_legacy_apdu_tx>

c0de6ff6 <app_exit>:
c0de6ff6:	20ff      	movs	r0, #255	@ 0xff
c0de6ff8:	f000 fe22 	bl	c0de7c40 <os_sched_exit>

c0de6ffc <common_app_init>:
c0de6ffc:	b580      	push	{r7, lr}
c0de6ffe:	f000 fa4f 	bl	c0de74a0 <nbgl_objInit>
c0de7002:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7006:	f7fc bea3 	b.w	c0de3d50 <io_seproxyhal_init>
	...

c0de700c <standalone_app_main>:
c0de700c:	b5b0      	push	{r4, r5, r7, lr}
c0de700e:	b08c      	sub	sp, #48	@ 0x30
c0de7010:	4816      	ldr	r0, [pc, #88]	@ (c0de706c <standalone_app_main+0x60>)
c0de7012:	2500      	movs	r5, #0
c0de7014:	466c      	mov	r4, sp
c0de7016:	f809 5000 	strb.w	r5, [r9, r0]
c0de701a:	4815      	ldr	r0, [pc, #84]	@ (c0de7070 <standalone_app_main+0x64>)
c0de701c:	f849 5000 	str.w	r5, [r9, r0]
c0de7020:	4814      	ldr	r0, [pc, #80]	@ (c0de7074 <standalone_app_main+0x68>)
c0de7022:	f809 5000 	strb.w	r5, [r9, r0]
c0de7026:	4620      	mov	r0, r4
c0de7028:	f000 ff94 	bl	c0de7f54 <setjmp>
c0de702c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de7030:	0400      	lsls	r0, r0, #16
c0de7032:	d108      	bne.n	c0de7046 <standalone_app_main+0x3a>
c0de7034:	4668      	mov	r0, sp
c0de7036:	f000 fe41 	bl	c0de7cbc <try_context_set>
c0de703a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de703c:	f7ff ffde 	bl	c0de6ffc <common_app_init>
c0de7040:	f7f9 f9b2 	bl	c0de03a8 <app_main>
c0de7044:	e004      	b.n	c0de7050 <standalone_app_main+0x44>
c0de7046:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de7048:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de704c:	f000 fe36 	bl	c0de7cbc <try_context_set>
c0de7050:	f000 fe2c 	bl	c0de7cac <try_context_get>
c0de7054:	42a0      	cmp	r0, r4
c0de7056:	d102      	bne.n	c0de705e <standalone_app_main+0x52>
c0de7058:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de705a:	f000 fe2f 	bl	c0de7cbc <try_context_set>
c0de705e:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de7062:	b908      	cbnz	r0, c0de7068 <standalone_app_main+0x5c>
c0de7064:	f7ff ffc7 	bl	c0de6ff6 <app_exit>
c0de7068:	f000 fa7f 	bl	c0de756a <os_longjmp>
c0de706c:	00000b5c 	.word	0x00000b5c
c0de7070:	00000b60 	.word	0x00000b60
c0de7074:	00000b5d 	.word	0x00000b5d

c0de7078 <library_app_main>:
c0de7078:	b5b0      	push	{r4, r5, r7, lr}
c0de707a:	b08c      	sub	sp, #48	@ 0x30
c0de707c:	466c      	mov	r4, sp
c0de707e:	4605      	mov	r5, r0
c0de7080:	4620      	mov	r0, r4
c0de7082:	f000 ff67 	bl	c0de7f54 <setjmp>
c0de7086:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de708a:	0400      	lsls	r0, r0, #16
c0de708c:	d124      	bne.n	c0de70d8 <library_app_main+0x60>
c0de708e:	4668      	mov	r0, sp
c0de7090:	f000 fe14 	bl	c0de7cbc <try_context_set>
c0de7094:	900a      	str	r0, [sp, #40]	@ 0x28
c0de7096:	6868      	ldr	r0, [r5, #4]
c0de7098:	2804      	cmp	r0, #4
c0de709a:	d024      	beq.n	c0de70e6 <library_app_main+0x6e>
c0de709c:	2803      	cmp	r0, #3
c0de709e:	d026      	beq.n	c0de70ee <library_app_main+0x76>
c0de70a0:	2802      	cmp	r0, #2
c0de70a2:	d127      	bne.n	c0de70f4 <library_app_main+0x7c>
c0de70a4:	68e8      	ldr	r0, [r5, #12]
c0de70a6:	f7fa fc99 	bl	c0de19dc <swap_copy_transaction_parameters>
c0de70aa:	b318      	cbz	r0, c0de70f4 <library_app_main+0x7c>
c0de70ac:	4816      	ldr	r0, [pc, #88]	@ (c0de7108 <library_app_main+0x90>)
c0de70ae:	2201      	movs	r2, #1
c0de70b0:	f809 2000 	strb.w	r2, [r9, r0]
c0de70b4:	4815      	ldr	r0, [pc, #84]	@ (c0de710c <library_app_main+0x94>)
c0de70b6:	2200      	movs	r2, #0
c0de70b8:	f809 2000 	strb.w	r2, [r9, r0]
c0de70bc:	4a14      	ldr	r2, [pc, #80]	@ (c0de7110 <library_app_main+0x98>)
c0de70be:	68e8      	ldr	r0, [r5, #12]
c0de70c0:	3020      	adds	r0, #32
c0de70c2:	f849 0002 	str.w	r0, [r9, r2]
c0de70c6:	f7ff ff99 	bl	c0de6ffc <common_app_init>
c0de70ca:	4812      	ldr	r0, [pc, #72]	@ (c0de7114 <library_app_main+0x9c>)
c0de70cc:	4478      	add	r0, pc
c0de70ce:	f7fe fbc9 	bl	c0de5864 <nbgl_useCaseSpinner>
c0de70d2:	f7f9 f969 	bl	c0de03a8 <app_main>
c0de70d6:	e00d      	b.n	c0de70f4 <library_app_main+0x7c>
c0de70d8:	2000      	movs	r0, #0
c0de70da:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de70de:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de70e0:	f000 fdec 	bl	c0de7cbc <try_context_set>
c0de70e4:	e006      	b.n	c0de70f4 <library_app_main+0x7c>
c0de70e6:	68e8      	ldr	r0, [r5, #12]
c0de70e8:	f7fa fc4c 	bl	c0de1984 <swap_handle_get_printable_amount>
c0de70ec:	e002      	b.n	c0de70f4 <library_app_main+0x7c>
c0de70ee:	68e8      	ldr	r0, [r5, #12]
c0de70f0:	f7fa fbed 	bl	c0de18ce <swap_handle_check_address>
c0de70f4:	f000 fdda 	bl	c0de7cac <try_context_get>
c0de70f8:	42a0      	cmp	r0, r4
c0de70fa:	d102      	bne.n	c0de7102 <library_app_main+0x8a>
c0de70fc:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de70fe:	f000 fddd 	bl	c0de7cbc <try_context_set>
c0de7102:	f000 fd81 	bl	c0de7c08 <os_lib_end>
c0de7106:	bf00      	nop
c0de7108:	00000b5c 	.word	0x00000b5c
c0de710c:	00000b5d 	.word	0x00000b5d
c0de7110:	00000b60 	.word	0x00000b60
c0de7114:	00001155 	.word	0x00001155

c0de7118 <apdu_parser>:
c0de7118:	2a04      	cmp	r2, #4
c0de711a:	d316      	bcc.n	c0de714a <apdu_parser+0x32>
c0de711c:	d102      	bne.n	c0de7124 <apdu_parser+0xc>
c0de711e:	2300      	movs	r3, #0
c0de7120:	7103      	strb	r3, [r0, #4]
c0de7122:	e004      	b.n	c0de712e <apdu_parser+0x16>
c0de7124:	790b      	ldrb	r3, [r1, #4]
c0de7126:	3a05      	subs	r2, #5
c0de7128:	429a      	cmp	r2, r3
c0de712a:	7103      	strb	r3, [r0, #4]
c0de712c:	d10d      	bne.n	c0de714a <apdu_parser+0x32>
c0de712e:	780a      	ldrb	r2, [r1, #0]
c0de7130:	2b00      	cmp	r3, #0
c0de7132:	7002      	strb	r2, [r0, #0]
c0de7134:	784a      	ldrb	r2, [r1, #1]
c0de7136:	7042      	strb	r2, [r0, #1]
c0de7138:	788a      	ldrb	r2, [r1, #2]
c0de713a:	7082      	strb	r2, [r0, #2]
c0de713c:	bf18      	it	ne
c0de713e:	1d4b      	addne	r3, r1, #5
c0de7140:	78c9      	ldrb	r1, [r1, #3]
c0de7142:	6083      	str	r3, [r0, #8]
c0de7144:	70c1      	strb	r1, [r0, #3]
c0de7146:	2001      	movs	r0, #1
c0de7148:	4770      	bx	lr
c0de714a:	2000      	movs	r0, #0
c0de714c:	4770      	bx	lr

c0de714e <read_u32_be>:
c0de714e:	5c42      	ldrb	r2, [r0, r1]
c0de7150:	4408      	add	r0, r1
c0de7152:	7841      	ldrb	r1, [r0, #1]
c0de7154:	7883      	ldrb	r3, [r0, #2]
c0de7156:	78c0      	ldrb	r0, [r0, #3]
c0de7158:	0409      	lsls	r1, r1, #16
c0de715a:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de715e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7162:	4408      	add	r0, r1
c0de7164:	4770      	bx	lr

c0de7166 <read_u64_be>:
c0de7166:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7168:	1842      	adds	r2, r0, r1
c0de716a:	5c40      	ldrb	r0, [r0, r1]
c0de716c:	7917      	ldrb	r7, [r2, #4]
c0de716e:	7953      	ldrb	r3, [r2, #5]
c0de7170:	7854      	ldrb	r4, [r2, #1]
c0de7172:	7895      	ldrb	r5, [r2, #2]
c0de7174:	78d6      	ldrb	r6, [r2, #3]
c0de7176:	063f      	lsls	r7, r7, #24
c0de7178:	0421      	lsls	r1, r4, #16
c0de717a:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de717e:	7997      	ldrb	r7, [r2, #6]
c0de7180:	79d2      	ldrb	r2, [r2, #7]
c0de7182:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de7186:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de718a:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de718e:	1981      	adds	r1, r0, r6
c0de7190:	441a      	add	r2, r3
c0de7192:	4610      	mov	r0, r2
c0de7194:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de7196 <read_u16_le>:
c0de7196:	5c42      	ldrb	r2, [r0, r1]
c0de7198:	4408      	add	r0, r1
c0de719a:	7840      	ldrb	r0, [r0, #1]
c0de719c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de71a0:	b280      	uxth	r0, r0
c0de71a2:	4770      	bx	lr

c0de71a4 <read_u32_le>:
c0de71a4:	5c42      	ldrb	r2, [r0, r1]
c0de71a6:	4408      	add	r0, r1
c0de71a8:	7841      	ldrb	r1, [r0, #1]
c0de71aa:	7883      	ldrb	r3, [r0, #2]
c0de71ac:	78c0      	ldrb	r0, [r0, #3]
c0de71ae:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de71b2:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de71b6:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de71ba:	4770      	bx	lr

c0de71bc <read_u64_le>:
c0de71bc:	b5b0      	push	{r4, r5, r7, lr}
c0de71be:	5c42      	ldrb	r2, [r0, r1]
c0de71c0:	4401      	add	r1, r0
c0de71c2:	7848      	ldrb	r0, [r1, #1]
c0de71c4:	788b      	ldrb	r3, [r1, #2]
c0de71c6:	790d      	ldrb	r5, [r1, #4]
c0de71c8:	78cc      	ldrb	r4, [r1, #3]
c0de71ca:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de71ce:	794a      	ldrb	r2, [r1, #5]
c0de71d0:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de71d4:	798b      	ldrb	r3, [r1, #6]
c0de71d6:	79c9      	ldrb	r1, [r1, #7]
c0de71d8:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de71dc:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de71e0:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de71e4:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de71e8:	bdb0      	pop	{r4, r5, r7, pc}

c0de71ea <send_swap_error_simple>:
c0de71ea:	b082      	sub	sp, #8
c0de71ec:	2300      	movs	r3, #0
c0de71ee:	9300      	str	r3, [sp, #0]
c0de71f0:	2300      	movs	r3, #0
c0de71f2:	f000 f801 	bl	c0de71f8 <send_swap_error_with_buffers>
	...

c0de71f8 <send_swap_error_with_buffers>:
c0de71f8:	b09c      	sub	sp, #112	@ 0x70
c0de71fa:	4604      	mov	r4, r0
c0de71fc:	4815      	ldr	r0, [pc, #84]	@ (c0de7254 <send_swap_error_with_buffers+0x5c>)
c0de71fe:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de7202:	b320      	cbz	r0, c0de724e <send_swap_error_with_buffers+0x56>
c0de7204:	4814      	ldr	r0, [pc, #80]	@ (c0de7258 <send_swap_error_with_buffers+0x60>)
c0de7206:	461d      	mov	r5, r3
c0de7208:	2301      	movs	r3, #1
c0de720a:	466e      	mov	r6, sp
c0de720c:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de720e:	f809 3000 	strb.w	r3, [r9, r0]
c0de7212:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de7216:	f106 0008 	add.w	r0, r6, #8
c0de721a:	2164      	movs	r1, #100	@ 0x64
c0de721c:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de7220:	f000 fe54 	bl	c0de7ecc <__aeabi_memclr>
c0de7224:	2002      	movs	r0, #2
c0de7226:	4629      	mov	r1, r5
c0de7228:	9001      	str	r0, [sp, #4]
c0de722a:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de722e:	2f08      	cmp	r7, #8
c0de7230:	9000      	str	r0, [sp, #0]
c0de7232:	bf28      	it	cs
c0de7234:	2708      	movcs	r7, #8
c0de7236:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de723a:	0082      	lsls	r2, r0, #2
c0de723c:	f106 000c 	add.w	r0, r6, #12
c0de7240:	f000 fe3a 	bl	c0de7eb8 <__aeabi_memcpy>
c0de7244:	1c79      	adds	r1, r7, #1
c0de7246:	4630      	mov	r0, r6
c0de7248:	4622      	mov	r2, r4
c0de724a:	f7ff fe7b 	bl	c0de6f44 <io_send_response_buffers>
c0de724e:	2000      	movs	r0, #0
c0de7250:	f000 fcf6 	bl	c0de7c40 <os_sched_exit>
c0de7254:	00000b5c 	.word	0x00000b5c
c0de7258:	00000b5d 	.word	0x00000b5d

c0de725c <swap_str_to_u64>:
c0de725c:	2908      	cmp	r1, #8
c0de725e:	d812      	bhi.n	c0de7286 <swap_str_to_u64+0x2a>
c0de7260:	b570      	push	{r4, r5, r6, lr}
c0de7262:	2500      	movs	r5, #0
c0de7264:	460b      	mov	r3, r1
c0de7266:	2400      	movs	r4, #0
c0de7268:	b14b      	cbz	r3, c0de727e <swap_str_to_u64+0x22>
c0de726a:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de726e:	0224      	lsls	r4, r4, #8
c0de7270:	3b01      	subs	r3, #1
c0de7272:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de7276:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de727a:	4635      	mov	r5, r6
c0de727c:	e7f4      	b.n	c0de7268 <swap_str_to_u64+0xc>
c0de727e:	e9c2 5400 	strd	r5, r4, [r2]
c0de7282:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7286:	2000      	movs	r0, #0
c0de7288:	2909      	cmp	r1, #9
c0de728a:	bf38      	it	cc
c0de728c:	2001      	movcc	r0, #1
c0de728e:	4770      	bx	lr

c0de7290 <varint_read>:
c0de7290:	b510      	push	{r4, lr}
c0de7292:	b1d9      	cbz	r1, c0de72cc <varint_read+0x3c>
c0de7294:	4614      	mov	r4, r2
c0de7296:	4602      	mov	r2, r0
c0de7298:	7800      	ldrb	r0, [r0, #0]
c0de729a:	28ff      	cmp	r0, #255	@ 0xff
c0de729c:	d00c      	beq.n	c0de72b8 <varint_read+0x28>
c0de729e:	28fe      	cmp	r0, #254	@ 0xfe
c0de72a0:	d012      	beq.n	c0de72c8 <varint_read+0x38>
c0de72a2:	28fd      	cmp	r0, #253	@ 0xfd
c0de72a4:	d115      	bne.n	c0de72d2 <varint_read+0x42>
c0de72a6:	2903      	cmp	r1, #3
c0de72a8:	d310      	bcc.n	c0de72cc <varint_read+0x3c>
c0de72aa:	4610      	mov	r0, r2
c0de72ac:	2101      	movs	r1, #1
c0de72ae:	f7ff ff72 	bl	c0de7196 <read_u16_le>
c0de72b2:	2100      	movs	r1, #0
c0de72b4:	2203      	movs	r2, #3
c0de72b6:	e015      	b.n	c0de72e4 <varint_read+0x54>
c0de72b8:	2909      	cmp	r1, #9
c0de72ba:	d307      	bcc.n	c0de72cc <varint_read+0x3c>
c0de72bc:	4610      	mov	r0, r2
c0de72be:	2101      	movs	r1, #1
c0de72c0:	f7ff ff7c 	bl	c0de71bc <read_u64_le>
c0de72c4:	2209      	movs	r2, #9
c0de72c6:	e00d      	b.n	c0de72e4 <varint_read+0x54>
c0de72c8:	2905      	cmp	r1, #5
c0de72ca:	d205      	bcs.n	c0de72d8 <varint_read+0x48>
c0de72cc:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de72d0:	e00a      	b.n	c0de72e8 <varint_read+0x58>
c0de72d2:	2100      	movs	r1, #0
c0de72d4:	2201      	movs	r2, #1
c0de72d6:	e005      	b.n	c0de72e4 <varint_read+0x54>
c0de72d8:	4610      	mov	r0, r2
c0de72da:	2101      	movs	r1, #1
c0de72dc:	f7ff ff62 	bl	c0de71a4 <read_u32_le>
c0de72e0:	2100      	movs	r1, #0
c0de72e2:	2205      	movs	r2, #5
c0de72e4:	e9c4 0100 	strd	r0, r1, [r4]
c0de72e8:	4610      	mov	r0, r2
c0de72ea:	bd10      	pop	{r4, pc}

c0de72ec <write_u16_be>:
c0de72ec:	0a13      	lsrs	r3, r2, #8
c0de72ee:	5443      	strb	r3, [r0, r1]
c0de72f0:	4408      	add	r0, r1
c0de72f2:	7042      	strb	r2, [r0, #1]
c0de72f4:	4770      	bx	lr
	...

c0de72f8 <ux_process_button_event>:
c0de72f8:	b5b0      	push	{r4, r5, r7, lr}
c0de72fa:	4604      	mov	r4, r0
c0de72fc:	2001      	movs	r0, #1
c0de72fe:	f000 f815 	bl	c0de732c <ux_forward_event>
c0de7302:	4605      	mov	r5, r0
c0de7304:	f000 f8d1 	bl	c0de74aa <nbgl_objAllowDrawing>
c0de7308:	b165      	cbz	r5, c0de7324 <ux_process_button_event+0x2c>
c0de730a:	4807      	ldr	r0, [pc, #28]	@ (c0de7328 <ux_process_button_event+0x30>)
c0de730c:	2164      	movs	r1, #100	@ 0x64
c0de730e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de7312:	4341      	muls	r1, r0
c0de7314:	78e0      	ldrb	r0, [r4, #3]
c0de7316:	0840      	lsrs	r0, r0, #1
c0de7318:	f000 f917 	bl	c0de754a <nbgl_buttonsHandler>
c0de731c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7320:	f000 b8b9 	b.w	c0de7496 <nbgl_refresh>
c0de7324:	bdb0      	pop	{r4, r5, r7, pc}
c0de7326:	bf00      	nop
c0de7328:	00000b64 	.word	0x00000b64

c0de732c <ux_forward_event>:
c0de732c:	b5b0      	push	{r4, r5, r7, lr}
c0de732e:	4604      	mov	r4, r0
c0de7330:	4812      	ldr	r0, [pc, #72]	@ (c0de737c <ux_forward_event+0x50>)
c0de7332:	2101      	movs	r1, #1
c0de7334:	f809 1000 	strb.w	r1, [r9, r0]
c0de7338:	eb09 0500 	add.w	r5, r9, r0
c0de733c:	2000      	movs	r0, #0
c0de733e:	6068      	str	r0, [r5, #4]
c0de7340:	4628      	mov	r0, r5
c0de7342:	f000 fc57 	bl	c0de7bf4 <os_ux>
c0de7346:	2004      	movs	r0, #4
c0de7348:	f000 fcc2 	bl	c0de7cd0 <os_sched_last_status>
c0de734c:	2869      	cmp	r0, #105	@ 0x69
c0de734e:	6068      	str	r0, [r5, #4]
c0de7350:	d108      	bne.n	c0de7364 <ux_forward_event+0x38>
c0de7352:	2001      	movs	r0, #1
c0de7354:	f000 f8a9 	bl	c0de74aa <nbgl_objAllowDrawing>
c0de7358:	f000 f8b6 	bl	c0de74c8 <nbgl_screenRedraw>
c0de735c:	f000 f89b 	bl	c0de7496 <nbgl_refresh>
c0de7360:	2000      	movs	r0, #0
c0de7362:	bdb0      	pop	{r4, r5, r7, pc}
c0de7364:	b144      	cbz	r4, c0de7378 <ux_forward_event+0x4c>
c0de7366:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de736a:	bf18      	it	ne
c0de736c:	2101      	movne	r1, #1
c0de736e:	2800      	cmp	r0, #0
c0de7370:	bf18      	it	ne
c0de7372:	2001      	movne	r0, #1
c0de7374:	4008      	ands	r0, r1
c0de7376:	bdb0      	pop	{r4, r5, r7, pc}
c0de7378:	2001      	movs	r0, #1
c0de737a:	bdb0      	pop	{r4, r5, r7, pc}
c0de737c:	00000b50 	.word	0x00000b50

c0de7380 <ux_process_ticker_event>:
c0de7380:	b510      	push	{r4, lr}
c0de7382:	480a      	ldr	r0, [pc, #40]	@ (c0de73ac <ux_process_ticker_event+0x2c>)
c0de7384:	f859 1000 	ldr.w	r1, [r9, r0]
c0de7388:	3101      	adds	r1, #1
c0de738a:	f849 1000 	str.w	r1, [r9, r0]
c0de738e:	2001      	movs	r0, #1
c0de7390:	f7ff ffcc 	bl	c0de732c <ux_forward_event>
c0de7394:	4604      	mov	r4, r0
c0de7396:	f000 f888 	bl	c0de74aa <nbgl_objAllowDrawing>
c0de739a:	b134      	cbz	r4, c0de73aa <ux_process_ticker_event+0x2a>
c0de739c:	2064      	movs	r0, #100	@ 0x64
c0de739e:	f000 f89d 	bl	c0de74dc <nbgl_screenHandler>
c0de73a2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de73a6:	f000 b876 	b.w	c0de7496 <nbgl_refresh>
c0de73aa:	bd10      	pop	{r4, pc}
c0de73ac:	00000b64 	.word	0x00000b64

c0de73b0 <ux_process_default_event>:
c0de73b0:	2000      	movs	r0, #0
c0de73b2:	f7ff bfbb 	b.w	c0de732c <ux_forward_event>

c0de73b6 <hash_iovec_ex>:
c0de73b6:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de73ba:	468a      	mov	sl, r1
c0de73bc:	4611      	mov	r1, r2
c0de73be:	461a      	mov	r2, r3
c0de73c0:	4605      	mov	r5, r0
c0de73c2:	f000 f84d 	bl	c0de7460 <cx_hash_init_ex>
c0de73c6:	4607      	mov	r7, r0
c0de73c8:	b9a8      	cbnz	r0, c0de73f6 <hash_iovec_ex+0x40>
c0de73ca:	f10d 0820 	add.w	r8, sp, #32
c0de73ce:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de73d2:	1d04      	adds	r4, r0, #4
c0de73d4:	b156      	cbz	r6, c0de73ec <hash_iovec_ex+0x36>
c0de73d6:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de73da:	f854 2b08 	ldr.w	r2, [r4], #8
c0de73de:	4628      	mov	r0, r5
c0de73e0:	f000 f843 	bl	c0de746a <cx_hash_update>
c0de73e4:	3e01      	subs	r6, #1
c0de73e6:	2800      	cmp	r0, #0
c0de73e8:	d0f4      	beq.n	c0de73d4 <hash_iovec_ex+0x1e>
c0de73ea:	e003      	b.n	c0de73f4 <hash_iovec_ex+0x3e>
c0de73ec:	4628      	mov	r0, r5
c0de73ee:	4641      	mov	r1, r8
c0de73f0:	f000 f831 	bl	c0de7456 <cx_hash_final>
c0de73f4:	4607      	mov	r7, r0
c0de73f6:	4628      	mov	r0, r5
c0de73f8:	4651      	mov	r1, sl
c0de73fa:	f000 fd75 	bl	c0de7ee8 <explicit_bzero>
c0de73fe:	4638      	mov	r0, r7
c0de7400:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de7404 <cx_keccak_256_hash_iovec>:
c0de7404:	b580      	push	{r7, lr}
c0de7406:	b0ee      	sub	sp, #440	@ 0x1b8
c0de7408:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de740c:	a804      	add	r0, sp, #16
c0de740e:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de7412:	2206      	movs	r2, #6
c0de7414:	2320      	movs	r3, #32
c0de7416:	f7ff ffce 	bl	c0de73b6 <hash_iovec_ex>
c0de741a:	b06e      	add	sp, #440	@ 0x1b8
c0de741c:	bd80      	pop	{r7, pc}

c0de741e <cx_blake2b_512_hash_iovec>:
c0de741e:	b580      	push	{r7, lr}
c0de7420:	b0c4      	sub	sp, #272	@ 0x110
c0de7422:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de7426:	a804      	add	r0, sp, #16
c0de7428:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de742c:	2209      	movs	r2, #9
c0de742e:	2340      	movs	r3, #64	@ 0x40
c0de7430:	f7ff ffc1 	bl	c0de73b6 <hash_iovec_ex>
c0de7434:	b044      	add	sp, #272	@ 0x110
c0de7436:	bd80      	pop	{r7, pc}

c0de7438 <cx_ecdsa_sign_no_throw>:
c0de7438:	b403      	push	{r0, r1}
c0de743a:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de743e:	f000 b823 	b.w	c0de7488 <cx_trampoline_helper>

c0de7442 <cx_ecfp_generate_pair2_no_throw>:
c0de7442:	b403      	push	{r0, r1}
c0de7444:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de7448:	f000 b81e 	b.w	c0de7488 <cx_trampoline_helper>

c0de744c <cx_ecfp_init_private_key_no_throw>:
c0de744c:	b403      	push	{r0, r1}
c0de744e:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de7452:	f000 b819 	b.w	c0de7488 <cx_trampoline_helper>

c0de7456 <cx_hash_final>:
c0de7456:	b403      	push	{r0, r1}
c0de7458:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de745c:	f000 b814 	b.w	c0de7488 <cx_trampoline_helper>

c0de7460 <cx_hash_init_ex>:
c0de7460:	b403      	push	{r0, r1}
c0de7462:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de7466:	f000 b80f 	b.w	c0de7488 <cx_trampoline_helper>

c0de746a <cx_hash_update>:
c0de746a:	b403      	push	{r0, r1}
c0de746c:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de7470:	f000 b80a 	b.w	c0de7488 <cx_trampoline_helper>

c0de7474 <cx_rng_no_throw>:
c0de7474:	b403      	push	{r0, r1}
c0de7476:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de747a:	f000 b805 	b.w	c0de7488 <cx_trampoline_helper>
	...

c0de7480 <cx_aes_siv_reset>:
c0de7480:	b403      	push	{r0, r1}
c0de7482:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de7486:	e7ff      	b.n	c0de7488 <cx_trampoline_helper>

c0de7488 <cx_trampoline_helper>:
c0de7488:	4900      	ldr	r1, [pc, #0]	@ (c0de748c <cx_trampoline_helper+0x4>)
c0de748a:	4708      	bx	r1
c0de748c:	00808001 	.word	0x00808001

c0de7490 <assert_exit>:
c0de7490:	20ff      	movs	r0, #255	@ 0xff
c0de7492:	f000 fbd5 	bl	c0de7c40 <os_sched_exit>

c0de7496 <nbgl_refresh>:
c0de7496:	b403      	push	{r0, r1}
c0de7498:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de749c:	f000 b85e 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74a0 <nbgl_objInit>:
c0de74a0:	b403      	push	{r0, r1}
c0de74a2:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de74a6:	f000 b859 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74aa <nbgl_objAllowDrawing>:
c0de74aa:	b403      	push	{r0, r1}
c0de74ac:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de74b0:	f000 b854 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74b4 <nbgl_screenSet>:
c0de74b4:	b403      	push	{r0, r1}
c0de74b6:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de74ba:	f000 b84f 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74be <nbgl_screenPush>:
c0de74be:	b403      	push	{r0, r1}
c0de74c0:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de74c4:	f000 b84a 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74c8 <nbgl_screenRedraw>:
c0de74c8:	b403      	push	{r0, r1}
c0de74ca:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de74ce:	f000 b845 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74d2 <nbgl_screenPop>:
c0de74d2:	b403      	push	{r0, r1}
c0de74d4:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de74d8:	f000 b840 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74dc <nbgl_screenHandler>:
c0de74dc:	b403      	push	{r0, r1}
c0de74de:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de74e2:	f000 b83b 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74e6 <nbgl_objPoolGet>:
c0de74e6:	b403      	push	{r0, r1}
c0de74e8:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de74ec:	f000 b836 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74f0 <nbgl_containerPoolGet>:
c0de74f0:	b403      	push	{r0, r1}
c0de74f2:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de74f6:	f000 b831 	b.w	c0de755c <nbgl_trampoline_helper>

c0de74fa <nbgl_getFont>:
c0de74fa:	b403      	push	{r0, r1}
c0de74fc:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de7500:	f000 b82c 	b.w	c0de755c <nbgl_trampoline_helper>

c0de7504 <nbgl_getFontLineHeight>:
c0de7504:	b403      	push	{r0, r1}
c0de7506:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de750a:	f000 b827 	b.w	c0de755c <nbgl_trampoline_helper>

c0de750e <nbgl_getTextMaxLenAndWidth>:
c0de750e:	b403      	push	{r0, r1}
c0de7510:	f04f 00b3 	mov.w	r0, #179	@ 0xb3
c0de7514:	f000 b822 	b.w	c0de755c <nbgl_trampoline_helper>

c0de7518 <nbgl_getTextNbLinesInWidth>:
c0de7518:	b403      	push	{r0, r1}
c0de751a:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de751e:	f000 b81d 	b.w	c0de755c <nbgl_trampoline_helper>

c0de7522 <nbgl_getTextNbPagesInWidth>:
c0de7522:	b403      	push	{r0, r1}
c0de7524:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de7528:	f000 b818 	b.w	c0de755c <nbgl_trampoline_helper>

c0de752c <nbgl_getTextWidth>:
c0de752c:	b403      	push	{r0, r1}
c0de752e:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de7532:	f000 b813 	b.w	c0de755c <nbgl_trampoline_helper>

c0de7536 <nbgl_getTextMaxLenInNbLines>:
c0de7536:	b403      	push	{r0, r1}
c0de7538:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de753c:	f000 b80e 	b.w	c0de755c <nbgl_trampoline_helper>

c0de7540 <nbgl_textReduceOnNbLines>:
c0de7540:	b403      	push	{r0, r1}
c0de7542:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de7546:	f000 b809 	b.w	c0de755c <nbgl_trampoline_helper>

c0de754a <nbgl_buttonsHandler>:
c0de754a:	b403      	push	{r0, r1}
c0de754c:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de7550:	f000 b804 	b.w	c0de755c <nbgl_trampoline_helper>

c0de7554 <pic_init>:
c0de7554:	b403      	push	{r0, r1}
c0de7556:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de755a:	e7ff      	b.n	c0de755c <nbgl_trampoline_helper>

c0de755c <nbgl_trampoline_helper>:
c0de755c:	4900      	ldr	r1, [pc, #0]	@ (c0de7560 <nbgl_trampoline_helper+0x4>)
c0de755e:	4708      	bx	r1
c0de7560:	00808001 	.word	0x00808001

c0de7564 <os_boot>:
c0de7564:	2000      	movs	r0, #0
c0de7566:	f000 bba9 	b.w	c0de7cbc <try_context_set>

c0de756a <os_longjmp>:
c0de756a:	4604      	mov	r4, r0
c0de756c:	f000 fb9e 	bl	c0de7cac <try_context_get>
c0de7570:	4621      	mov	r1, r4
c0de7572:	f000 fcf5 	bl	c0de7f60 <longjmp>
	...

c0de7578 <os_explicit_zero_BSS_segment>:
c0de7578:	4803      	ldr	r0, [pc, #12]	@ (c0de7588 <os_explicit_zero_BSS_segment+0x10>)
c0de757a:	4904      	ldr	r1, [pc, #16]	@ (c0de758c <os_explicit_zero_BSS_segment+0x14>)
c0de757c:	4448      	add	r0, r9
c0de757e:	4449      	add	r1, r9
c0de7580:	1a09      	subs	r1, r1, r0
c0de7582:	f000 bcb1 	b.w	c0de7ee8 <explicit_bzero>
c0de7586:	bf00      	nop
c0de7588:	00000000 	.word	0x00000000
c0de758c:	00000b68 	.word	0x00000b68

c0de7590 <snprintf>:
c0de7590:	b081      	sub	sp, #4
c0de7592:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7596:	b087      	sub	sp, #28
c0de7598:	2800      	cmp	r0, #0
c0de759a:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de759c:	f000 817a 	beq.w	c0de7894 <snprintf+0x304>
c0de75a0:	460d      	mov	r5, r1
c0de75a2:	2900      	cmp	r1, #0
c0de75a4:	f000 8176 	beq.w	c0de7894 <snprintf+0x304>
c0de75a8:	4629      	mov	r1, r5
c0de75aa:	4616      	mov	r6, r2
c0de75ac:	4604      	mov	r4, r0
c0de75ae:	f000 fc8d 	bl	c0de7ecc <__aeabi_memclr>
c0de75b2:	f1b5 0801 	subs.w	r8, r5, #1
c0de75b6:	f000 816d 	beq.w	c0de7894 <snprintf+0x304>
c0de75ba:	a80f      	add	r0, sp, #60	@ 0x3c
c0de75bc:	9002      	str	r0, [sp, #8]
c0de75be:	7830      	ldrb	r0, [r6, #0]
c0de75c0:	2800      	cmp	r0, #0
c0de75c2:	f000 8167 	beq.w	c0de7894 <snprintf+0x304>
c0de75c6:	2700      	movs	r7, #0
c0de75c8:	b128      	cbz	r0, c0de75d6 <snprintf+0x46>
c0de75ca:	2825      	cmp	r0, #37	@ 0x25
c0de75cc:	d003      	beq.n	c0de75d6 <snprintf+0x46>
c0de75ce:	19f0      	adds	r0, r6, r7
c0de75d0:	3701      	adds	r7, #1
c0de75d2:	7840      	ldrb	r0, [r0, #1]
c0de75d4:	e7f8      	b.n	c0de75c8 <snprintf+0x38>
c0de75d6:	4547      	cmp	r7, r8
c0de75d8:	bf28      	it	cs
c0de75da:	4647      	movcs	r7, r8
c0de75dc:	4620      	mov	r0, r4
c0de75de:	4631      	mov	r1, r6
c0de75e0:	463a      	mov	r2, r7
c0de75e2:	f000 fc6b 	bl	c0de7ebc <__aeabi_memmove>
c0de75e6:	ebb8 0807 	subs.w	r8, r8, r7
c0de75ea:	f000 8153 	beq.w	c0de7894 <snprintf+0x304>
c0de75ee:	5df1      	ldrb	r1, [r6, r7]
c0de75f0:	19f0      	adds	r0, r6, r7
c0de75f2:	443c      	add	r4, r7
c0de75f4:	4606      	mov	r6, r0
c0de75f6:	2925      	cmp	r1, #37	@ 0x25
c0de75f8:	d1e1      	bne.n	c0de75be <snprintf+0x2e>
c0de75fa:	1c41      	adds	r1, r0, #1
c0de75fc:	f04f 0b00 	mov.w	fp, #0
c0de7600:	f04f 0e20 	mov.w	lr, #32
c0de7604:	2500      	movs	r5, #0
c0de7606:	2600      	movs	r6, #0
c0de7608:	3101      	adds	r1, #1
c0de760a:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de760e:	4632      	mov	r2, r6
c0de7610:	3101      	adds	r1, #1
c0de7612:	2600      	movs	r6, #0
c0de7614:	2b2d      	cmp	r3, #45	@ 0x2d
c0de7616:	d0f8      	beq.n	c0de760a <snprintf+0x7a>
c0de7618:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de761c:	2e0a      	cmp	r6, #10
c0de761e:	d313      	bcc.n	c0de7648 <snprintf+0xb8>
c0de7620:	2b25      	cmp	r3, #37	@ 0x25
c0de7622:	d046      	beq.n	c0de76b2 <snprintf+0x122>
c0de7624:	2b2a      	cmp	r3, #42	@ 0x2a
c0de7626:	d01f      	beq.n	c0de7668 <snprintf+0xd8>
c0de7628:	2b2e      	cmp	r3, #46	@ 0x2e
c0de762a:	d129      	bne.n	c0de7680 <snprintf+0xf0>
c0de762c:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de7630:	2a2a      	cmp	r2, #42	@ 0x2a
c0de7632:	d13c      	bne.n	c0de76ae <snprintf+0x11e>
c0de7634:	780a      	ldrb	r2, [r1, #0]
c0de7636:	2a48      	cmp	r2, #72	@ 0x48
c0de7638:	d003      	beq.n	c0de7642 <snprintf+0xb2>
c0de763a:	2a73      	cmp	r2, #115	@ 0x73
c0de763c:	d001      	beq.n	c0de7642 <snprintf+0xb2>
c0de763e:	2a68      	cmp	r2, #104	@ 0x68
c0de7640:	d135      	bne.n	c0de76ae <snprintf+0x11e>
c0de7642:	9a02      	ldr	r2, [sp, #8]
c0de7644:	2601      	movs	r6, #1
c0de7646:	e017      	b.n	c0de7678 <snprintf+0xe8>
c0de7648:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de764c:	ea56 060b 	orrs.w	r6, r6, fp
c0de7650:	bf08      	it	eq
c0de7652:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de7656:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de765a:	3901      	subs	r1, #1
c0de765c:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de7660:	4616      	mov	r6, r2
c0de7662:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de7666:	e7cf      	b.n	c0de7608 <snprintf+0x78>
c0de7668:	460b      	mov	r3, r1
c0de766a:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de766e:	2a73      	cmp	r2, #115	@ 0x73
c0de7670:	d11d      	bne.n	c0de76ae <snprintf+0x11e>
c0de7672:	9a02      	ldr	r2, [sp, #8]
c0de7674:	2602      	movs	r6, #2
c0de7676:	4619      	mov	r1, r3
c0de7678:	1d13      	adds	r3, r2, #4
c0de767a:	9302      	str	r3, [sp, #8]
c0de767c:	6815      	ldr	r5, [r2, #0]
c0de767e:	e7c3      	b.n	c0de7608 <snprintf+0x78>
c0de7680:	2b48      	cmp	r3, #72	@ 0x48
c0de7682:	d018      	beq.n	c0de76b6 <snprintf+0x126>
c0de7684:	2b58      	cmp	r3, #88	@ 0x58
c0de7686:	d019      	beq.n	c0de76bc <snprintf+0x12c>
c0de7688:	2b63      	cmp	r3, #99	@ 0x63
c0de768a:	d020      	beq.n	c0de76ce <snprintf+0x13e>
c0de768c:	2b64      	cmp	r3, #100	@ 0x64
c0de768e:	d02a      	beq.n	c0de76e6 <snprintf+0x156>
c0de7690:	2b68      	cmp	r3, #104	@ 0x68
c0de7692:	d036      	beq.n	c0de7702 <snprintf+0x172>
c0de7694:	2b70      	cmp	r3, #112	@ 0x70
c0de7696:	d006      	beq.n	c0de76a6 <snprintf+0x116>
c0de7698:	2b73      	cmp	r3, #115	@ 0x73
c0de769a:	d037      	beq.n	c0de770c <snprintf+0x17c>
c0de769c:	2b75      	cmp	r3, #117	@ 0x75
c0de769e:	f000 8081 	beq.w	c0de77a4 <snprintf+0x214>
c0de76a2:	2b78      	cmp	r3, #120	@ 0x78
c0de76a4:	d103      	bne.n	c0de76ae <snprintf+0x11e>
c0de76a6:	9400      	str	r4, [sp, #0]
c0de76a8:	f04f 0c00 	mov.w	ip, #0
c0de76ac:	e009      	b.n	c0de76c2 <snprintf+0x132>
c0de76ae:	1e4e      	subs	r6, r1, #1
c0de76b0:	e785      	b.n	c0de75be <snprintf+0x2e>
c0de76b2:	2025      	movs	r0, #37	@ 0x25
c0de76b4:	e00f      	b.n	c0de76d6 <snprintf+0x146>
c0de76b6:	487b      	ldr	r0, [pc, #492]	@ (c0de78a4 <snprintf+0x314>)
c0de76b8:	4478      	add	r0, pc
c0de76ba:	e024      	b.n	c0de7706 <snprintf+0x176>
c0de76bc:	f04f 0c01 	mov.w	ip, #1
c0de76c0:	9400      	str	r4, [sp, #0]
c0de76c2:	9a02      	ldr	r2, [sp, #8]
c0de76c4:	2400      	movs	r4, #0
c0de76c6:	1d13      	adds	r3, r2, #4
c0de76c8:	9302      	str	r3, [sp, #8]
c0de76ca:	2310      	movs	r3, #16
c0de76cc:	e072      	b.n	c0de77b4 <snprintf+0x224>
c0de76ce:	9802      	ldr	r0, [sp, #8]
c0de76d0:	1d02      	adds	r2, r0, #4
c0de76d2:	9202      	str	r2, [sp, #8]
c0de76d4:	6800      	ldr	r0, [r0, #0]
c0de76d6:	1e4e      	subs	r6, r1, #1
c0de76d8:	f804 0b01 	strb.w	r0, [r4], #1
c0de76dc:	f1b8 0801 	subs.w	r8, r8, #1
c0de76e0:	f47f af6d 	bne.w	c0de75be <snprintf+0x2e>
c0de76e4:	e0d6      	b.n	c0de7894 <snprintf+0x304>
c0de76e6:	9a02      	ldr	r2, [sp, #8]
c0de76e8:	9400      	str	r4, [sp, #0]
c0de76ea:	1d13      	adds	r3, r2, #4
c0de76ec:	9302      	str	r3, [sp, #8]
c0de76ee:	6813      	ldr	r3, [r2, #0]
c0de76f0:	2b00      	cmp	r3, #0
c0de76f2:	461a      	mov	r2, r3
c0de76f4:	d500      	bpl.n	c0de76f8 <snprintf+0x168>
c0de76f6:	425a      	negs	r2, r3
c0de76f8:	0fdc      	lsrs	r4, r3, #31
c0de76fa:	f04f 0c00 	mov.w	ip, #0
c0de76fe:	230a      	movs	r3, #10
c0de7700:	e059      	b.n	c0de77b6 <snprintf+0x226>
c0de7702:	4869      	ldr	r0, [pc, #420]	@ (c0de78a8 <snprintf+0x318>)
c0de7704:	4478      	add	r0, pc
c0de7706:	f04f 0c01 	mov.w	ip, #1
c0de770a:	e003      	b.n	c0de7714 <snprintf+0x184>
c0de770c:	4864      	ldr	r0, [pc, #400]	@ (c0de78a0 <snprintf+0x310>)
c0de770e:	f04f 0c00 	mov.w	ip, #0
c0de7712:	4478      	add	r0, pc
c0de7714:	9b02      	ldr	r3, [sp, #8]
c0de7716:	b2d2      	uxtb	r2, r2
c0de7718:	1d1e      	adds	r6, r3, #4
c0de771a:	9602      	str	r6, [sp, #8]
c0de771c:	1e4e      	subs	r6, r1, #1
c0de771e:	6819      	ldr	r1, [r3, #0]
c0de7720:	2a02      	cmp	r2, #2
c0de7722:	f000 80a7 	beq.w	c0de7874 <snprintf+0x2e4>
c0de7726:	2a01      	cmp	r2, #1
c0de7728:	d007      	beq.n	c0de773a <snprintf+0x1aa>
c0de772a:	463d      	mov	r5, r7
c0de772c:	b92a      	cbnz	r2, c0de773a <snprintf+0x1aa>
c0de772e:	2200      	movs	r2, #0
c0de7730:	5c8b      	ldrb	r3, [r1, r2]
c0de7732:	3201      	adds	r2, #1
c0de7734:	2b00      	cmp	r3, #0
c0de7736:	d1fb      	bne.n	c0de7730 <snprintf+0x1a0>
c0de7738:	1e55      	subs	r5, r2, #1
c0de773a:	f1bc 0f00 	cmp.w	ip, #0
c0de773e:	d016      	beq.n	c0de776e <snprintf+0x1de>
c0de7740:	2d00      	cmp	r5, #0
c0de7742:	f43f af3c 	beq.w	c0de75be <snprintf+0x2e>
c0de7746:	f1b8 0f02 	cmp.w	r8, #2
c0de774a:	f0c0 80a3 	bcc.w	c0de7894 <snprintf+0x304>
c0de774e:	780a      	ldrb	r2, [r1, #0]
c0de7750:	0913      	lsrs	r3, r2, #4
c0de7752:	f002 020f 	and.w	r2, r2, #15
c0de7756:	5cc3      	ldrb	r3, [r0, r3]
c0de7758:	f1b8 0802 	subs.w	r8, r8, #2
c0de775c:	7023      	strb	r3, [r4, #0]
c0de775e:	5c82      	ldrb	r2, [r0, r2]
c0de7760:	7062      	strb	r2, [r4, #1]
c0de7762:	f000 8097 	beq.w	c0de7894 <snprintf+0x304>
c0de7766:	3101      	adds	r1, #1
c0de7768:	3d01      	subs	r5, #1
c0de776a:	3402      	adds	r4, #2
c0de776c:	e7e8      	b.n	c0de7740 <snprintf+0x1b0>
c0de776e:	4545      	cmp	r5, r8
c0de7770:	bf28      	it	cs
c0de7772:	4645      	movcs	r5, r8
c0de7774:	4620      	mov	r0, r4
c0de7776:	462a      	mov	r2, r5
c0de7778:	f000 fba0 	bl	c0de7ebc <__aeabi_memmove>
c0de777c:	ebb8 0805 	subs.w	r8, r8, r5
c0de7780:	f000 8088 	beq.w	c0de7894 <snprintf+0x304>
c0de7784:	462f      	mov	r7, r5
c0de7786:	442c      	add	r4, r5
c0de7788:	45bb      	cmp	fp, r7
c0de778a:	f67f af18 	bls.w	c0de75be <snprintf+0x2e>
c0de778e:	ebab 0507 	sub.w	r5, fp, r7
c0de7792:	4620      	mov	r0, r4
c0de7794:	4545      	cmp	r5, r8
c0de7796:	bf28      	it	cs
c0de7798:	4645      	movcs	r5, r8
c0de779a:	4629      	mov	r1, r5
c0de779c:	2220      	movs	r2, #32
c0de779e:	f000 fb8f 	bl	c0de7ec0 <__aeabi_memset>
c0de77a2:	e061      	b.n	c0de7868 <snprintf+0x2d8>
c0de77a4:	9a02      	ldr	r2, [sp, #8]
c0de77a6:	9400      	str	r4, [sp, #0]
c0de77a8:	2400      	movs	r4, #0
c0de77aa:	f04f 0c00 	mov.w	ip, #0
c0de77ae:	1d13      	adds	r3, r2, #4
c0de77b0:	9302      	str	r3, [sp, #8]
c0de77b2:	230a      	movs	r3, #10
c0de77b4:	6812      	ldr	r2, [r2, #0]
c0de77b6:	483d      	ldr	r0, [pc, #244]	@ (c0de78ac <snprintf+0x31c>)
c0de77b8:	1e4e      	subs	r6, r1, #1
c0de77ba:	f04f 0a01 	mov.w	sl, #1
c0de77be:	4478      	add	r0, pc
c0de77c0:	9001      	str	r0, [sp, #4]
c0de77c2:	fba3 570a 	umull	r5, r7, r3, sl
c0de77c6:	2f00      	cmp	r7, #0
c0de77c8:	bf18      	it	ne
c0de77ca:	2701      	movne	r7, #1
c0de77cc:	4295      	cmp	r5, r2
c0de77ce:	d804      	bhi.n	c0de77da <snprintf+0x24a>
c0de77d0:	b91f      	cbnz	r7, c0de77da <snprintf+0x24a>
c0de77d2:	f1ab 0b01 	sub.w	fp, fp, #1
c0de77d6:	46aa      	mov	sl, r5
c0de77d8:	e7f3      	b.n	c0de77c2 <snprintf+0x232>
c0de77da:	2c00      	cmp	r4, #0
c0de77dc:	4627      	mov	r7, r4
c0de77de:	f04f 0500 	mov.w	r5, #0
c0de77e2:	bf18      	it	ne
c0de77e4:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de77e8:	d00d      	beq.n	c0de7806 <snprintf+0x276>
c0de77ea:	4660      	mov	r0, ip
c0de77ec:	fa5f fc8e 	uxtb.w	ip, lr
c0de77f0:	a903      	add	r1, sp, #12
c0de77f2:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de77f6:	4684      	mov	ip, r0
c0de77f8:	d106      	bne.n	c0de7808 <snprintf+0x278>
c0de77fa:	202d      	movs	r0, #45	@ 0x2d
c0de77fc:	2400      	movs	r4, #0
c0de77fe:	2501      	movs	r5, #1
c0de7800:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7804:	e000      	b.n	c0de7808 <snprintf+0x278>
c0de7806:	a903      	add	r1, sp, #12
c0de7808:	eb07 000b 	add.w	r0, r7, fp
c0de780c:	3802      	subs	r0, #2
c0de780e:	280d      	cmp	r0, #13
c0de7810:	d808      	bhi.n	c0de7824 <snprintf+0x294>
c0de7812:	f1c7 0701 	rsb	r7, r7, #1
c0de7816:	45bb      	cmp	fp, r7
c0de7818:	d004      	beq.n	c0de7824 <snprintf+0x294>
c0de781a:	f801 e005 	strb.w	lr, [r1, r5]
c0de781e:	3701      	adds	r7, #1
c0de7820:	3501      	adds	r5, #1
c0de7822:	e7f8      	b.n	c0de7816 <snprintf+0x286>
c0de7824:	9f01      	ldr	r7, [sp, #4]
c0de7826:	b114      	cbz	r4, c0de782e <snprintf+0x29e>
c0de7828:	202d      	movs	r0, #45	@ 0x2d
c0de782a:	5548      	strb	r0, [r1, r5]
c0de782c:	3501      	adds	r5, #1
c0de782e:	4820      	ldr	r0, [pc, #128]	@ (c0de78b0 <snprintf+0x320>)
c0de7830:	f1bc 0f00 	cmp.w	ip, #0
c0de7834:	4478      	add	r0, pc
c0de7836:	bf08      	it	eq
c0de7838:	4638      	moveq	r0, r7
c0de783a:	f1ba 0f00 	cmp.w	sl, #0
c0de783e:	d00b      	beq.n	c0de7858 <snprintf+0x2c8>
c0de7840:	fbb2 f7fa 	udiv	r7, r2, sl
c0de7844:	fbba faf3 	udiv	sl, sl, r3
c0de7848:	fbb7 f4f3 	udiv	r4, r7, r3
c0de784c:	fb04 7413 	mls	r4, r4, r3, r7
c0de7850:	5d04      	ldrb	r4, [r0, r4]
c0de7852:	554c      	strb	r4, [r1, r5]
c0de7854:	3501      	adds	r5, #1
c0de7856:	e7f0      	b.n	c0de783a <snprintf+0x2aa>
c0de7858:	4545      	cmp	r5, r8
c0de785a:	bf28      	it	cs
c0de785c:	4645      	movcs	r5, r8
c0de785e:	9c00      	ldr	r4, [sp, #0]
c0de7860:	462a      	mov	r2, r5
c0de7862:	4620      	mov	r0, r4
c0de7864:	f000 fb2a 	bl	c0de7ebc <__aeabi_memmove>
c0de7868:	ebb8 0805 	subs.w	r8, r8, r5
c0de786c:	442c      	add	r4, r5
c0de786e:	f47f aea6 	bne.w	c0de75be <snprintf+0x2e>
c0de7872:	e00f      	b.n	c0de7894 <snprintf+0x304>
c0de7874:	7808      	ldrb	r0, [r1, #0]
c0de7876:	2800      	cmp	r0, #0
c0de7878:	f47f aea1 	bne.w	c0de75be <snprintf+0x2e>
c0de787c:	4545      	cmp	r5, r8
c0de787e:	bf28      	it	cs
c0de7880:	4645      	movcs	r5, r8
c0de7882:	4620      	mov	r0, r4
c0de7884:	4629      	mov	r1, r5
c0de7886:	2220      	movs	r2, #32
c0de7888:	f000 fb1a 	bl	c0de7ec0 <__aeabi_memset>
c0de788c:	ebb8 0805 	subs.w	r8, r8, r5
c0de7890:	f47f af79 	bne.w	c0de7786 <snprintf+0x1f6>
c0de7894:	2000      	movs	r0, #0
c0de7896:	b007      	add	sp, #28
c0de7898:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de789c:	b001      	add	sp, #4
c0de789e:	4770      	bx	lr
c0de78a0:	00001d52 	.word	0x00001d52
c0de78a4:	00001dbc 	.word	0x00001dbc
c0de78a8:	00001d60 	.word	0x00001d60
c0de78ac:	00001ca6 	.word	0x00001ca6
c0de78b0:	00001c40 	.word	0x00001c40

c0de78b4 <pic>:
c0de78b4:	4a0a      	ldr	r2, [pc, #40]	@ (c0de78e0 <pic+0x2c>)
c0de78b6:	4282      	cmp	r2, r0
c0de78b8:	490a      	ldr	r1, [pc, #40]	@ (c0de78e4 <pic+0x30>)
c0de78ba:	d806      	bhi.n	c0de78ca <pic+0x16>
c0de78bc:	4281      	cmp	r1, r0
c0de78be:	d304      	bcc.n	c0de78ca <pic+0x16>
c0de78c0:	b580      	push	{r7, lr}
c0de78c2:	f000 f815 	bl	c0de78f0 <pic_internal>
c0de78c6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de78ca:	4907      	ldr	r1, [pc, #28]	@ (c0de78e8 <pic+0x34>)
c0de78cc:	4288      	cmp	r0, r1
c0de78ce:	4a07      	ldr	r2, [pc, #28]	@ (c0de78ec <pic+0x38>)
c0de78d0:	d304      	bcc.n	c0de78dc <pic+0x28>
c0de78d2:	4290      	cmp	r0, r2
c0de78d4:	d802      	bhi.n	c0de78dc <pic+0x28>
c0de78d6:	1a40      	subs	r0, r0, r1
c0de78d8:	4649      	mov	r1, r9
c0de78da:	4408      	add	r0, r1
c0de78dc:	4770      	bx	lr
c0de78de:	0000      	movs	r0, r0
c0de78e0:	c0de0000 	.word	0xc0de0000
c0de78e4:	c0de983f 	.word	0xc0de983f
c0de78e8:	da7a0000 	.word	0xda7a0000
c0de78ec:	da7aa000 	.word	0xda7aa000

c0de78f0 <pic_internal>:
c0de78f0:	467a      	mov	r2, pc
c0de78f2:	4902      	ldr	r1, [pc, #8]	@ (c0de78fc <pic_internal+0xc>)
c0de78f4:	1cc9      	adds	r1, r1, #3
c0de78f6:	1a89      	subs	r1, r1, r2
c0de78f8:	1a40      	subs	r0, r0, r1
c0de78fa:	4770      	bx	lr
c0de78fc:	c0de78f1 	.word	0xc0de78f1

c0de7900 <SVC_Call>:
c0de7900:	df01      	svc	1
c0de7902:	2900      	cmp	r1, #0
c0de7904:	d100      	bne.n	c0de7908 <exception>
c0de7906:	4770      	bx	lr

c0de7908 <exception>:
c0de7908:	4608      	mov	r0, r1
c0de790a:	f7ff fe2e 	bl	c0de756a <os_longjmp>
	...

c0de7910 <SVC_cx_call>:
c0de7910:	df01      	svc	1
c0de7912:	4770      	bx	lr

c0de7914 <nvm_write>:
c0de7914:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7916:	ab01      	add	r3, sp, #4
c0de7918:	c307      	stmia	r3!, {r0, r1, r2}
c0de791a:	4802      	ldr	r0, [pc, #8]	@ (c0de7924 <nvm_write+0x10>)
c0de791c:	a901      	add	r1, sp, #4
c0de791e:	f7ff ffef 	bl	c0de7900 <SVC_Call>
c0de7922:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7924:	03000003 	.word	0x03000003

c0de7928 <cx_bn_lock>:
c0de7928:	b5e0      	push	{r5, r6, r7, lr}
c0de792a:	e9cd 0100 	strd	r0, r1, [sp]
c0de792e:	4802      	ldr	r0, [pc, #8]	@ (c0de7938 <cx_bn_lock+0x10>)
c0de7930:	4669      	mov	r1, sp
c0de7932:	f7ff ffed 	bl	c0de7910 <SVC_cx_call>
c0de7936:	bd8c      	pop	{r2, r3, r7, pc}
c0de7938:	02000112 	.word	0x02000112

c0de793c <cx_bn_unlock>:
c0de793c:	b5e0      	push	{r5, r6, r7, lr}
c0de793e:	2000      	movs	r0, #0
c0de7940:	4669      	mov	r1, sp
c0de7942:	9001      	str	r0, [sp, #4]
c0de7944:	20b6      	movs	r0, #182	@ 0xb6
c0de7946:	f7ff ffe3 	bl	c0de7910 <SVC_cx_call>
c0de794a:	bd8c      	pop	{r2, r3, r7, pc}

c0de794c <cx_bn_alloc>:
c0de794c:	b5e0      	push	{r5, r6, r7, lr}
c0de794e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7952:	4802      	ldr	r0, [pc, #8]	@ (c0de795c <cx_bn_alloc+0x10>)
c0de7954:	4669      	mov	r1, sp
c0de7956:	f7ff ffdb 	bl	c0de7910 <SVC_cx_call>
c0de795a:	bd8c      	pop	{r2, r3, r7, pc}
c0de795c:	02000113 	.word	0x02000113

c0de7960 <cx_bn_alloc_init>:
c0de7960:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7962:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7966:	4803      	ldr	r0, [pc, #12]	@ (c0de7974 <cx_bn_alloc_init+0x14>)
c0de7968:	4669      	mov	r1, sp
c0de796a:	f7ff ffd1 	bl	c0de7910 <SVC_cx_call>
c0de796e:	b004      	add	sp, #16
c0de7970:	bd80      	pop	{r7, pc}
c0de7972:	bf00      	nop
c0de7974:	04000114 	.word	0x04000114

c0de7978 <cx_bn_destroy>:
c0de7978:	b5e0      	push	{r5, r6, r7, lr}
c0de797a:	f000 f9b5 	bl	c0de7ce8 <OUTLINED_FUNCTION_0>
c0de797e:	4802      	ldr	r0, [pc, #8]	@ (c0de7988 <cx_bn_destroy+0x10>)
c0de7980:	4669      	mov	r1, sp
c0de7982:	f7ff ffc5 	bl	c0de7910 <SVC_cx_call>
c0de7986:	bd8c      	pop	{r2, r3, r7, pc}
c0de7988:	010000bc 	.word	0x010000bc

c0de798c <cx_bn_nbytes>:
c0de798c:	b5e0      	push	{r5, r6, r7, lr}
c0de798e:	e9cd 0100 	strd	r0, r1, [sp]
c0de7992:	4802      	ldr	r0, [pc, #8]	@ (c0de799c <cx_bn_nbytes+0x10>)
c0de7994:	4669      	mov	r1, sp
c0de7996:	f7ff ffbb 	bl	c0de7910 <SVC_cx_call>
c0de799a:	bd8c      	pop	{r2, r3, r7, pc}
c0de799c:	0200010d 	.word	0x0200010d

c0de79a0 <cx_bn_init>:
c0de79a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79a2:	ab01      	add	r3, sp, #4
c0de79a4:	c307      	stmia	r3!, {r0, r1, r2}
c0de79a6:	4803      	ldr	r0, [pc, #12]	@ (c0de79b4 <cx_bn_init+0x14>)
c0de79a8:	a901      	add	r1, sp, #4
c0de79aa:	f7ff ffb1 	bl	c0de7910 <SVC_cx_call>
c0de79ae:	b004      	add	sp, #16
c0de79b0:	bd80      	pop	{r7, pc}
c0de79b2:	bf00      	nop
c0de79b4:	03000115 	.word	0x03000115

c0de79b8 <cx_bn_copy>:
c0de79b8:	b5e0      	push	{r5, r6, r7, lr}
c0de79ba:	e9cd 0100 	strd	r0, r1, [sp]
c0de79be:	4802      	ldr	r0, [pc, #8]	@ (c0de79c8 <cx_bn_copy+0x10>)
c0de79c0:	4669      	mov	r1, sp
c0de79c2:	f7ff ffa5 	bl	c0de7910 <SVC_cx_call>
c0de79c6:	bd8c      	pop	{r2, r3, r7, pc}
c0de79c8:	020000c0 	.word	0x020000c0

c0de79cc <cx_bn_set_u32>:
c0de79cc:	b5e0      	push	{r5, r6, r7, lr}
c0de79ce:	e9cd 0100 	strd	r0, r1, [sp]
c0de79d2:	4802      	ldr	r0, [pc, #8]	@ (c0de79dc <cx_bn_set_u32+0x10>)
c0de79d4:	4669      	mov	r1, sp
c0de79d6:	f7ff ff9b 	bl	c0de7910 <SVC_cx_call>
c0de79da:	bd8c      	pop	{r2, r3, r7, pc}
c0de79dc:	020000c1 	.word	0x020000c1

c0de79e0 <cx_bn_export>:
c0de79e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79e2:	ab01      	add	r3, sp, #4
c0de79e4:	c307      	stmia	r3!, {r0, r1, r2}
c0de79e6:	4803      	ldr	r0, [pc, #12]	@ (c0de79f4 <cx_bn_export+0x14>)
c0de79e8:	a901      	add	r1, sp, #4
c0de79ea:	f7ff ff91 	bl	c0de7910 <SVC_cx_call>
c0de79ee:	b004      	add	sp, #16
c0de79f0:	bd80      	pop	{r7, pc}
c0de79f2:	bf00      	nop
c0de79f4:	030000c3 	.word	0x030000c3

c0de79f8 <cx_bn_cmp>:
c0de79f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79fa:	ab01      	add	r3, sp, #4
c0de79fc:	c307      	stmia	r3!, {r0, r1, r2}
c0de79fe:	4803      	ldr	r0, [pc, #12]	@ (c0de7a0c <cx_bn_cmp+0x14>)
c0de7a00:	a901      	add	r1, sp, #4
c0de7a02:	f7ff ff85 	bl	c0de7910 <SVC_cx_call>
c0de7a06:	b004      	add	sp, #16
c0de7a08:	bd80      	pop	{r7, pc}
c0de7a0a:	bf00      	nop
c0de7a0c:	030000c4 	.word	0x030000c4

c0de7a10 <cx_bn_cmp_u32>:
c0de7a10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a12:	ab01      	add	r3, sp, #4
c0de7a14:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a16:	4803      	ldr	r0, [pc, #12]	@ (c0de7a24 <cx_bn_cmp_u32+0x14>)
c0de7a18:	a901      	add	r1, sp, #4
c0de7a1a:	f7ff ff79 	bl	c0de7910 <SVC_cx_call>
c0de7a1e:	b004      	add	sp, #16
c0de7a20:	bd80      	pop	{r7, pc}
c0de7a22:	bf00      	nop
c0de7a24:	030000c5 	.word	0x030000c5

c0de7a28 <cx_bn_tst_bit>:
c0de7a28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a2a:	ab01      	add	r3, sp, #4
c0de7a2c:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a2e:	4803      	ldr	r0, [pc, #12]	@ (c0de7a3c <cx_bn_tst_bit+0x14>)
c0de7a30:	a901      	add	r1, sp, #4
c0de7a32:	f7ff ff6d 	bl	c0de7910 <SVC_cx_call>
c0de7a36:	b004      	add	sp, #16
c0de7a38:	bd80      	pop	{r7, pc}
c0de7a3a:	bf00      	nop
c0de7a3c:	030000cb 	.word	0x030000cb

c0de7a40 <cx_bn_mod_add>:
c0de7a40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a42:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7a46:	4803      	ldr	r0, [pc, #12]	@ (c0de7a54 <cx_bn_mod_add+0x14>)
c0de7a48:	4669      	mov	r1, sp
c0de7a4a:	f7ff ff61 	bl	c0de7910 <SVC_cx_call>
c0de7a4e:	b004      	add	sp, #16
c0de7a50:	bd80      	pop	{r7, pc}
c0de7a52:	bf00      	nop
c0de7a54:	040000d3 	.word	0x040000d3

c0de7a58 <cx_bn_mod_sub>:
c0de7a58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a5a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7a5e:	4803      	ldr	r0, [pc, #12]	@ (c0de7a6c <cx_bn_mod_sub+0x14>)
c0de7a60:	4669      	mov	r1, sp
c0de7a62:	f7ff ff55 	bl	c0de7910 <SVC_cx_call>
c0de7a66:	b004      	add	sp, #16
c0de7a68:	bd80      	pop	{r7, pc}
c0de7a6a:	bf00      	nop
c0de7a6c:	040000d4 	.word	0x040000d4

c0de7a70 <cx_bn_mod_mul>:
c0de7a70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a72:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7a76:	4803      	ldr	r0, [pc, #12]	@ (c0de7a84 <cx_bn_mod_mul+0x14>)
c0de7a78:	4669      	mov	r1, sp
c0de7a7a:	f7ff ff49 	bl	c0de7910 <SVC_cx_call>
c0de7a7e:	b004      	add	sp, #16
c0de7a80:	bd80      	pop	{r7, pc}
c0de7a82:	bf00      	nop
c0de7a84:	040000d5 	.word	0x040000d5

c0de7a88 <cx_bn_reduce>:
c0de7a88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7a8a:	ab01      	add	r3, sp, #4
c0de7a8c:	c307      	stmia	r3!, {r0, r1, r2}
c0de7a8e:	4803      	ldr	r0, [pc, #12]	@ (c0de7a9c <cx_bn_reduce+0x14>)
c0de7a90:	a901      	add	r1, sp, #4
c0de7a92:	f7ff ff3d 	bl	c0de7910 <SVC_cx_call>
c0de7a96:	b004      	add	sp, #16
c0de7a98:	bd80      	pop	{r7, pc}
c0de7a9a:	bf00      	nop
c0de7a9c:	030000d6 	.word	0x030000d6

c0de7aa0 <cx_bn_mod_invert_nprime>:
c0de7aa0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7aa2:	ab01      	add	r3, sp, #4
c0de7aa4:	c307      	stmia	r3!, {r0, r1, r2}
c0de7aa6:	4803      	ldr	r0, [pc, #12]	@ (c0de7ab4 <cx_bn_mod_invert_nprime+0x14>)
c0de7aa8:	a901      	add	r1, sp, #4
c0de7aaa:	f7ff ff31 	bl	c0de7910 <SVC_cx_call>
c0de7aae:	b004      	add	sp, #16
c0de7ab0:	bd80      	pop	{r7, pc}
c0de7ab2:	bf00      	nop
c0de7ab4:	030000da 	.word	0x030000da

c0de7ab8 <cx_bn_is_prime>:
c0de7ab8:	b5e0      	push	{r5, r6, r7, lr}
c0de7aba:	e9cd 0100 	strd	r0, r1, [sp]
c0de7abe:	4802      	ldr	r0, [pc, #8]	@ (c0de7ac8 <cx_bn_is_prime+0x10>)
c0de7ac0:	4669      	mov	r1, sp
c0de7ac2:	f7ff ff25 	bl	c0de7910 <SVC_cx_call>
c0de7ac6:	bd8c      	pop	{r2, r3, r7, pc}
c0de7ac8:	020000ef 	.word	0x020000ef

c0de7acc <cx_mont_alloc>:
c0de7acc:	b5e0      	push	{r5, r6, r7, lr}
c0de7ace:	e9cd 0100 	strd	r0, r1, [sp]
c0de7ad2:	4802      	ldr	r0, [pc, #8]	@ (c0de7adc <cx_mont_alloc+0x10>)
c0de7ad4:	4669      	mov	r1, sp
c0de7ad6:	f7ff ff1b 	bl	c0de7910 <SVC_cx_call>
c0de7ada:	bd8c      	pop	{r2, r3, r7, pc}
c0de7adc:	020000dc 	.word	0x020000dc

c0de7ae0 <cx_mont_init>:
c0de7ae0:	b5e0      	push	{r5, r6, r7, lr}
c0de7ae2:	e9cd 0100 	strd	r0, r1, [sp]
c0de7ae6:	4802      	ldr	r0, [pc, #8]	@ (c0de7af0 <cx_mont_init+0x10>)
c0de7ae8:	4669      	mov	r1, sp
c0de7aea:	f7ff ff11 	bl	c0de7910 <SVC_cx_call>
c0de7aee:	bd8c      	pop	{r2, r3, r7, pc}
c0de7af0:	020000dd 	.word	0x020000dd

c0de7af4 <cx_mont_to_montgomery>:
c0de7af4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7af6:	ab01      	add	r3, sp, #4
c0de7af8:	c307      	stmia	r3!, {r0, r1, r2}
c0de7afa:	4803      	ldr	r0, [pc, #12]	@ (c0de7b08 <cx_mont_to_montgomery+0x14>)
c0de7afc:	a901      	add	r1, sp, #4
c0de7afe:	f7ff ff07 	bl	c0de7910 <SVC_cx_call>
c0de7b02:	b004      	add	sp, #16
c0de7b04:	bd80      	pop	{r7, pc}
c0de7b06:	bf00      	nop
c0de7b08:	030000df 	.word	0x030000df

c0de7b0c <cx_mont_from_montgomery>:
c0de7b0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b0e:	ab01      	add	r3, sp, #4
c0de7b10:	c307      	stmia	r3!, {r0, r1, r2}
c0de7b12:	4803      	ldr	r0, [pc, #12]	@ (c0de7b20 <cx_mont_from_montgomery+0x14>)
c0de7b14:	a901      	add	r1, sp, #4
c0de7b16:	f7ff fefb 	bl	c0de7910 <SVC_cx_call>
c0de7b1a:	b004      	add	sp, #16
c0de7b1c:	bd80      	pop	{r7, pc}
c0de7b1e:	bf00      	nop
c0de7b20:	030000e0 	.word	0x030000e0

c0de7b24 <cx_mont_mul>:
c0de7b24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b26:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7b2a:	4803      	ldr	r0, [pc, #12]	@ (c0de7b38 <cx_mont_mul+0x14>)
c0de7b2c:	4669      	mov	r1, sp
c0de7b2e:	f7ff feef 	bl	c0de7910 <SVC_cx_call>
c0de7b32:	b004      	add	sp, #16
c0de7b34:	bd80      	pop	{r7, pc}
c0de7b36:	bf00      	nop
c0de7b38:	040000e1 	.word	0x040000e1

c0de7b3c <cx_mont_pow>:
c0de7b3c:	b510      	push	{r4, lr}
c0de7b3e:	b086      	sub	sp, #24
c0de7b40:	f10d 0c04 	add.w	ip, sp, #4
c0de7b44:	9c08      	ldr	r4, [sp, #32]
c0de7b46:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de7b4a:	4803      	ldr	r0, [pc, #12]	@ (c0de7b58 <cx_mont_pow+0x1c>)
c0de7b4c:	a901      	add	r1, sp, #4
c0de7b4e:	f7ff fedf 	bl	c0de7910 <SVC_cx_call>
c0de7b52:	b006      	add	sp, #24
c0de7b54:	bd10      	pop	{r4, pc}
c0de7b56:	bf00      	nop
c0de7b58:	050000e2 	.word	0x050000e2

c0de7b5c <cx_mont_invert_nprime>:
c0de7b5c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7b5e:	ab01      	add	r3, sp, #4
c0de7b60:	c307      	stmia	r3!, {r0, r1, r2}
c0de7b62:	4803      	ldr	r0, [pc, #12]	@ (c0de7b70 <cx_mont_invert_nprime+0x14>)
c0de7b64:	a901      	add	r1, sp, #4
c0de7b66:	f7ff fed3 	bl	c0de7910 <SVC_cx_call>
c0de7b6a:	b004      	add	sp, #16
c0de7b6c:	bd80      	pop	{r7, pc}
c0de7b6e:	bf00      	nop
c0de7b70:	030000e4 	.word	0x030000e4

c0de7b74 <cx_ecdomain_parameters_length>:
c0de7b74:	b5e0      	push	{r5, r6, r7, lr}
c0de7b76:	e9cd 0100 	strd	r0, r1, [sp]
c0de7b7a:	4802      	ldr	r0, [pc, #8]	@ (c0de7b84 <cx_ecdomain_parameters_length+0x10>)
c0de7b7c:	4669      	mov	r1, sp
c0de7b7e:	f7ff fec7 	bl	c0de7910 <SVC_cx_call>
c0de7b82:	bd8c      	pop	{r2, r3, r7, pc}
c0de7b84:	0200012f 	.word	0x0200012f

c0de7b88 <os_perso_derive_node_with_seed_key>:
c0de7b88:	b510      	push	{r4, lr}
c0de7b8a:	b088      	sub	sp, #32
c0de7b8c:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7b8e:	9407      	str	r4, [sp, #28]
c0de7b90:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de7b92:	9406      	str	r4, [sp, #24]
c0de7b94:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de7b96:	9405      	str	r4, [sp, #20]
c0de7b98:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de7b9a:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7b9e:	4803      	ldr	r0, [pc, #12]	@ (c0de7bac <os_perso_derive_node_with_seed_key+0x24>)
c0de7ba0:	4669      	mov	r1, sp
c0de7ba2:	f7ff fead 	bl	c0de7900 <SVC_Call>
c0de7ba6:	b008      	add	sp, #32
c0de7ba8:	bd10      	pop	{r4, pc}
c0de7baa:	bf00      	nop
c0de7bac:	080000a6 	.word	0x080000a6

c0de7bb0 <os_pki_load_certificate>:
c0de7bb0:	b510      	push	{r4, lr}
c0de7bb2:	b086      	sub	sp, #24
c0de7bb4:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de7bb6:	9405      	str	r4, [sp, #20]
c0de7bb8:	9c08      	ldr	r4, [sp, #32]
c0de7bba:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de7bbe:	4803      	ldr	r0, [pc, #12]	@ (c0de7bcc <os_pki_load_certificate+0x1c>)
c0de7bc0:	4669      	mov	r1, sp
c0de7bc2:	f7ff fe9d 	bl	c0de7900 <SVC_Call>
c0de7bc6:	b006      	add	sp, #24
c0de7bc8:	bd10      	pop	{r4, pc}
c0de7bca:	bf00      	nop
c0de7bcc:	060000aa 	.word	0x060000aa

c0de7bd0 <os_perso_is_pin_set>:
c0de7bd0:	b5e0      	push	{r5, r6, r7, lr}
c0de7bd2:	2000      	movs	r0, #0
c0de7bd4:	4669      	mov	r1, sp
c0de7bd6:	9001      	str	r0, [sp, #4]
c0de7bd8:	209e      	movs	r0, #158	@ 0x9e
c0de7bda:	f7ff fe91 	bl	c0de7900 <SVC_Call>
c0de7bde:	b2c0      	uxtb	r0, r0
c0de7be0:	bd8c      	pop	{r2, r3, r7, pc}

c0de7be2 <os_global_pin_is_validated>:
c0de7be2:	b5e0      	push	{r5, r6, r7, lr}
c0de7be4:	2000      	movs	r0, #0
c0de7be6:	4669      	mov	r1, sp
c0de7be8:	9001      	str	r0, [sp, #4]
c0de7bea:	20a0      	movs	r0, #160	@ 0xa0
c0de7bec:	f7ff fe88 	bl	c0de7900 <SVC_Call>
c0de7bf0:	b2c0      	uxtb	r0, r0
c0de7bf2:	bd8c      	pop	{r2, r3, r7, pc}

c0de7bf4 <os_ux>:
c0de7bf4:	b5e0      	push	{r5, r6, r7, lr}
c0de7bf6:	f000 f877 	bl	c0de7ce8 <OUTLINED_FUNCTION_0>
c0de7bfa:	4802      	ldr	r0, [pc, #8]	@ (c0de7c04 <os_ux+0x10>)
c0de7bfc:	4669      	mov	r1, sp
c0de7bfe:	f7ff fe7f 	bl	c0de7900 <SVC_Call>
c0de7c02:	bd8c      	pop	{r2, r3, r7, pc}
c0de7c04:	01000064 	.word	0x01000064

c0de7c08 <os_lib_end>:
c0de7c08:	b082      	sub	sp, #8
c0de7c0a:	2000      	movs	r0, #0
c0de7c0c:	4669      	mov	r1, sp
c0de7c0e:	9001      	str	r0, [sp, #4]
c0de7c10:	2068      	movs	r0, #104	@ 0x68
c0de7c12:	f7ff fe75 	bl	c0de7900 <SVC_Call>
c0de7c16:	deff      	udf	#255	@ 0xff

c0de7c18 <os_flags>:
c0de7c18:	b5e0      	push	{r5, r6, r7, lr}
c0de7c1a:	2000      	movs	r0, #0
c0de7c1c:	4669      	mov	r1, sp
c0de7c1e:	9001      	str	r0, [sp, #4]
c0de7c20:	206a      	movs	r0, #106	@ 0x6a
c0de7c22:	f7ff fe6d 	bl	c0de7900 <SVC_Call>
c0de7c26:	bd8c      	pop	{r2, r3, r7, pc}

c0de7c28 <os_registry_get_current_app_tag>:
c0de7c28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7c2a:	ab01      	add	r3, sp, #4
c0de7c2c:	c307      	stmia	r3!, {r0, r1, r2}
c0de7c2e:	4803      	ldr	r0, [pc, #12]	@ (c0de7c3c <os_registry_get_current_app_tag+0x14>)
c0de7c30:	a901      	add	r1, sp, #4
c0de7c32:	f7ff fe65 	bl	c0de7900 <SVC_Call>
c0de7c36:	b004      	add	sp, #16
c0de7c38:	bd80      	pop	{r7, pc}
c0de7c3a:	bf00      	nop
c0de7c3c:	03000074 	.word	0x03000074

c0de7c40 <os_sched_exit>:
c0de7c40:	b082      	sub	sp, #8
c0de7c42:	f000 f851 	bl	c0de7ce8 <OUTLINED_FUNCTION_0>
c0de7c46:	4802      	ldr	r0, [pc, #8]	@ (c0de7c50 <os_sched_exit+0x10>)
c0de7c48:	4669      	mov	r1, sp
c0de7c4a:	f7ff fe59 	bl	c0de7900 <SVC_Call>
c0de7c4e:	deff      	udf	#255	@ 0xff
c0de7c50:	0100009a 	.word	0x0100009a

c0de7c54 <os_io_init>:
c0de7c54:	b5e0      	push	{r5, r6, r7, lr}
c0de7c56:	9001      	str	r0, [sp, #4]
c0de7c58:	4802      	ldr	r0, [pc, #8]	@ (c0de7c64 <os_io_init+0x10>)
c0de7c5a:	a901      	add	r1, sp, #4
c0de7c5c:	f7ff fe50 	bl	c0de7900 <SVC_Call>
c0de7c60:	bd8c      	pop	{r2, r3, r7, pc}
c0de7c62:	bf00      	nop
c0de7c64:	01000084 	.word	0x01000084

c0de7c68 <os_io_start>:
c0de7c68:	b5e0      	push	{r5, r6, r7, lr}
c0de7c6a:	2000      	movs	r0, #0
c0de7c6c:	4669      	mov	r1, sp
c0de7c6e:	9001      	str	r0, [sp, #4]
c0de7c70:	4801      	ldr	r0, [pc, #4]	@ (c0de7c78 <os_io_start+0x10>)
c0de7c72:	f7ff fe45 	bl	c0de7900 <SVC_Call>
c0de7c76:	bd8c      	pop	{r2, r3, r7, pc}
c0de7c78:	01000085 	.word	0x01000085

c0de7c7c <os_io_tx_cmd>:
c0de7c7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7c7e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7c82:	4803      	ldr	r0, [pc, #12]	@ (c0de7c90 <os_io_tx_cmd+0x14>)
c0de7c84:	4669      	mov	r1, sp
c0de7c86:	f7ff fe3b 	bl	c0de7900 <SVC_Call>
c0de7c8a:	b004      	add	sp, #16
c0de7c8c:	bd80      	pop	{r7, pc}
c0de7c8e:	bf00      	nop
c0de7c90:	04000088 	.word	0x04000088

c0de7c94 <os_io_rx_evt>:
c0de7c94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7c96:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7c9a:	4803      	ldr	r0, [pc, #12]	@ (c0de7ca8 <os_io_rx_evt+0x14>)
c0de7c9c:	4669      	mov	r1, sp
c0de7c9e:	f7ff fe2f 	bl	c0de7900 <SVC_Call>
c0de7ca2:	b004      	add	sp, #16
c0de7ca4:	bd80      	pop	{r7, pc}
c0de7ca6:	bf00      	nop
c0de7ca8:	03000089 	.word	0x03000089

c0de7cac <try_context_get>:
c0de7cac:	b5e0      	push	{r5, r6, r7, lr}
c0de7cae:	2000      	movs	r0, #0
c0de7cb0:	4669      	mov	r1, sp
c0de7cb2:	9001      	str	r0, [sp, #4]
c0de7cb4:	2087      	movs	r0, #135	@ 0x87
c0de7cb6:	f7ff fe23 	bl	c0de7900 <SVC_Call>
c0de7cba:	bd8c      	pop	{r2, r3, r7, pc}

c0de7cbc <try_context_set>:
c0de7cbc:	b5e0      	push	{r5, r6, r7, lr}
c0de7cbe:	f000 f813 	bl	c0de7ce8 <OUTLINED_FUNCTION_0>
c0de7cc2:	4802      	ldr	r0, [pc, #8]	@ (c0de7ccc <try_context_set+0x10>)
c0de7cc4:	4669      	mov	r1, sp
c0de7cc6:	f7ff fe1b 	bl	c0de7900 <SVC_Call>
c0de7cca:	bd8c      	pop	{r2, r3, r7, pc}
c0de7ccc:	0100010b 	.word	0x0100010b

c0de7cd0 <os_sched_last_status>:
c0de7cd0:	b5e0      	push	{r5, r6, r7, lr}
c0de7cd2:	f000 f809 	bl	c0de7ce8 <OUTLINED_FUNCTION_0>
c0de7cd6:	4803      	ldr	r0, [pc, #12]	@ (c0de7ce4 <os_sched_last_status+0x14>)
c0de7cd8:	4669      	mov	r1, sp
c0de7cda:	f7ff fe11 	bl	c0de7900 <SVC_Call>
c0de7cde:	b2c0      	uxtb	r0, r0
c0de7ce0:	bd8c      	pop	{r2, r3, r7, pc}
c0de7ce2:	bf00      	nop
c0de7ce4:	0100009c 	.word	0x0100009c

c0de7ce8 <OUTLINED_FUNCTION_0>:
c0de7ce8:	2100      	movs	r1, #0
c0de7cea:	e9cd 0100 	strd	r0, r1, [sp]
c0de7cee:	4770      	bx	lr

c0de7cf0 <__udivmoddi4>:
c0de7cf0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7cf4:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de7cf8:	4604      	mov	r4, r0
c0de7cfa:	b179      	cbz	r1, c0de7d1c <__udivmoddi4+0x2c>
c0de7cfc:	b1ba      	cbz	r2, c0de7d2e <__udivmoddi4+0x3e>
c0de7cfe:	b35b      	cbz	r3, c0de7d58 <__udivmoddi4+0x68>
c0de7d00:	fab1 f581 	clz	r5, r1
c0de7d04:	fab3 f683 	clz	r6, r3
c0de7d08:	1b75      	subs	r5, r6, r5
c0de7d0a:	2d20      	cmp	r5, #32
c0de7d0c:	d34a      	bcc.n	c0de7da4 <__udivmoddi4+0xb4>
c0de7d0e:	f1bc 0f00 	cmp.w	ip, #0
c0de7d12:	bf18      	it	ne
c0de7d14:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7d18:	2400      	movs	r4, #0
c0de7d1a:	e066      	b.n	c0de7dea <__udivmoddi4+0xfa>
c0de7d1c:	b3cb      	cbz	r3, c0de7d92 <__udivmoddi4+0xa2>
c0de7d1e:	2100      	movs	r1, #0
c0de7d20:	f1bc 0f00 	cmp.w	ip, #0
c0de7d24:	bf18      	it	ne
c0de7d26:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7d2a:	2400      	movs	r4, #0
c0de7d2c:	e0a6      	b.n	c0de7e7c <__udivmoddi4+0x18c>
c0de7d2e:	2b00      	cmp	r3, #0
c0de7d30:	d03e      	beq.n	c0de7db0 <__udivmoddi4+0xc0>
c0de7d32:	2800      	cmp	r0, #0
c0de7d34:	d04f      	beq.n	c0de7dd6 <__udivmoddi4+0xe6>
c0de7d36:	1e5d      	subs	r5, r3, #1
c0de7d38:	422b      	tst	r3, r5
c0de7d3a:	d158      	bne.n	c0de7dee <__udivmoddi4+0xfe>
c0de7d3c:	f1bc 0f00 	cmp.w	ip, #0
c0de7d40:	bf1c      	itt	ne
c0de7d42:	ea05 0001 	andne.w	r0, r5, r1
c0de7d46:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7d4a:	fa93 f0a3 	rbit	r0, r3
c0de7d4e:	fab0 f080 	clz	r0, r0
c0de7d52:	fa21 f400 	lsr.w	r4, r1, r0
c0de7d56:	e048      	b.n	c0de7dea <__udivmoddi4+0xfa>
c0de7d58:	1e55      	subs	r5, r2, #1
c0de7d5a:	422a      	tst	r2, r5
c0de7d5c:	d129      	bne.n	c0de7db2 <__udivmoddi4+0xc2>
c0de7d5e:	f1bc 0f00 	cmp.w	ip, #0
c0de7d62:	bf1e      	ittt	ne
c0de7d64:	2300      	movne	r3, #0
c0de7d66:	4005      	andne	r5, r0
c0de7d68:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7d6c:	2a01      	cmp	r2, #1
c0de7d6e:	f000 8085 	beq.w	c0de7e7c <__udivmoddi4+0x18c>
c0de7d72:	fa92 f2a2 	rbit	r2, r2
c0de7d76:	004c      	lsls	r4, r1, #1
c0de7d78:	fab2 f282 	clz	r2, r2
c0de7d7c:	f002 031f 	and.w	r3, r2, #31
c0de7d80:	40d1      	lsrs	r1, r2
c0de7d82:	40d8      	lsrs	r0, r3
c0de7d84:	231f      	movs	r3, #31
c0de7d86:	4393      	bics	r3, r2
c0de7d88:	fa04 f303 	lsl.w	r3, r4, r3
c0de7d8c:	ea43 0400 	orr.w	r4, r3, r0
c0de7d90:	e074      	b.n	c0de7e7c <__udivmoddi4+0x18c>
c0de7d92:	fbb0 f4f2 	udiv	r4, r0, r2
c0de7d96:	f1bc 0f00 	cmp.w	ip, #0
c0de7d9a:	d026      	beq.n	c0de7dea <__udivmoddi4+0xfa>
c0de7d9c:	fb04 0012 	mls	r0, r4, r2, r0
c0de7da0:	2100      	movs	r1, #0
c0de7da2:	e020      	b.n	c0de7de6 <__udivmoddi4+0xf6>
c0de7da4:	f105 0e01 	add.w	lr, r5, #1
c0de7da8:	f1be 0f20 	cmp.w	lr, #32
c0de7dac:	d00b      	beq.n	c0de7dc6 <__udivmoddi4+0xd6>
c0de7dae:	e028      	b.n	c0de7e02 <__udivmoddi4+0x112>
c0de7db0:	e064      	b.n	c0de7e7c <__udivmoddi4+0x18c>
c0de7db2:	fab1 f481 	clz	r4, r1
c0de7db6:	fab2 f582 	clz	r5, r2
c0de7dba:	1b2c      	subs	r4, r5, r4
c0de7dbc:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de7dc0:	f1be 0f20 	cmp.w	lr, #32
c0de7dc4:	d15d      	bne.n	c0de7e82 <__udivmoddi4+0x192>
c0de7dc6:	f04f 0e20 	mov.w	lr, #32
c0de7dca:	f04f 0a00 	mov.w	sl, #0
c0de7dce:	f04f 0b00 	mov.w	fp, #0
c0de7dd2:	460e      	mov	r6, r1
c0de7dd4:	e021      	b.n	c0de7e1a <__udivmoddi4+0x12a>
c0de7dd6:	fbb1 f4f3 	udiv	r4, r1, r3
c0de7dda:	f1bc 0f00 	cmp.w	ip, #0
c0de7dde:	d004      	beq.n	c0de7dea <__udivmoddi4+0xfa>
c0de7de0:	2000      	movs	r0, #0
c0de7de2:	fb04 1113 	mls	r1, r4, r3, r1
c0de7de6:	e9cc 0100 	strd	r0, r1, [ip]
c0de7dea:	2100      	movs	r1, #0
c0de7dec:	e046      	b.n	c0de7e7c <__udivmoddi4+0x18c>
c0de7dee:	fab1 f581 	clz	r5, r1
c0de7df2:	fab3 f683 	clz	r6, r3
c0de7df6:	1b75      	subs	r5, r6, r5
c0de7df8:	2d1f      	cmp	r5, #31
c0de7dfa:	f4bf af88 	bcs.w	c0de7d0e <__udivmoddi4+0x1e>
c0de7dfe:	f105 0e01 	add.w	lr, r5, #1
c0de7e02:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7e06:	f1c5 051f 	rsb	r5, r5, #31
c0de7e0a:	fa01 f605 	lsl.w	r6, r1, r5
c0de7e0e:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de7e12:	40a8      	lsls	r0, r5
c0de7e14:	f04f 0a00 	mov.w	sl, #0
c0de7e18:	4326      	orrs	r6, r4
c0de7e1a:	f04f 0800 	mov.w	r8, #0
c0de7e1e:	f1be 0f00 	cmp.w	lr, #0
c0de7e22:	d01c      	beq.n	c0de7e5e <__udivmoddi4+0x16e>
c0de7e24:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7e28:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7e2c:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de7e30:	0076      	lsls	r6, r6, #1
c0de7e32:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7e36:	1aae      	subs	r6, r5, r2
c0de7e38:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7e3c:	43cf      	mvns	r7, r1
c0de7e3e:	43ec      	mvns	r4, r5
c0de7e40:	18a4      	adds	r4, r4, r2
c0de7e42:	eb57 0403 	adcs.w	r4, r7, r3
c0de7e46:	bf5c      	itt	pl
c0de7e48:	468b      	movpl	fp, r1
c0de7e4a:	462e      	movpl	r6, r5
c0de7e4c:	0040      	lsls	r0, r0, #1
c0de7e4e:	0fe1      	lsrs	r1, r4, #31
c0de7e50:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7e54:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7e58:	46a2      	mov	sl, r4
c0de7e5a:	4688      	mov	r8, r1
c0de7e5c:	e7df      	b.n	c0de7e1e <__udivmoddi4+0x12e>
c0de7e5e:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de7e62:	f1bc 0f00 	cmp.w	ip, #0
c0de7e66:	bf18      	it	ne
c0de7e68:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7e6c:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de7e70:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7e74:	f020 0001 	bic.w	r0, r0, #1
c0de7e78:	ea40 0408 	orr.w	r4, r0, r8
c0de7e7c:	4620      	mov	r0, r4
c0de7e7e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7e82:	f1be 0f1f 	cmp.w	lr, #31
c0de7e86:	d804      	bhi.n	c0de7e92 <__udivmoddi4+0x1a2>
c0de7e88:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7e8c:	f1ce 0520 	rsb	r5, lr, #32
c0de7e90:	e7bb      	b.n	c0de7e0a <__udivmoddi4+0x11a>
c0de7e92:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de7e96:	f1ae 0420 	sub.w	r4, lr, #32
c0de7e9a:	f04f 0b00 	mov.w	fp, #0
c0de7e9e:	fa20 f504 	lsr.w	r5, r0, r4
c0de7ea2:	fa01 f607 	lsl.w	r6, r1, r7
c0de7ea6:	fa00 fa07 	lsl.w	sl, r0, r7
c0de7eaa:	ea46 0805 	orr.w	r8, r6, r5
c0de7eae:	fa21 f604 	lsr.w	r6, r1, r4
c0de7eb2:	4640      	mov	r0, r8
c0de7eb4:	e7b1      	b.n	c0de7e1a <__udivmoddi4+0x12a>
	...

c0de7eb8 <__aeabi_memcpy>:
c0de7eb8:	f000 b81c 	b.w	c0de7ef4 <memcpy>

c0de7ebc <__aeabi_memmove>:
c0de7ebc:	f000 b828 	b.w	c0de7f10 <memmove>

c0de7ec0 <__aeabi_memset>:
c0de7ec0:	460b      	mov	r3, r1
c0de7ec2:	4611      	mov	r1, r2
c0de7ec4:	461a      	mov	r2, r3
c0de7ec6:	f000 b83d 	b.w	c0de7f44 <memset>
c0de7eca:	bf00      	nop

c0de7ecc <__aeabi_memclr>:
c0de7ecc:	460a      	mov	r2, r1
c0de7ece:	2100      	movs	r1, #0
c0de7ed0:	f000 b838 	b.w	c0de7f44 <memset>

c0de7ed4 <__aeabi_uldivmod>:
c0de7ed4:	b540      	push	{r6, lr}
c0de7ed6:	b084      	sub	sp, #16
c0de7ed8:	ae02      	add	r6, sp, #8
c0de7eda:	9600      	str	r6, [sp, #0]
c0de7edc:	f7ff ff08 	bl	c0de7cf0 <__udivmoddi4>
c0de7ee0:	9a02      	ldr	r2, [sp, #8]
c0de7ee2:	9b03      	ldr	r3, [sp, #12]
c0de7ee4:	b004      	add	sp, #16
c0de7ee6:	bd40      	pop	{r6, pc}

c0de7ee8 <explicit_bzero>:
c0de7ee8:	f000 b800 	b.w	c0de7eec <bzero>

c0de7eec <bzero>:
c0de7eec:	460a      	mov	r2, r1
c0de7eee:	2100      	movs	r1, #0
c0de7ef0:	f000 b828 	b.w	c0de7f44 <memset>

c0de7ef4 <memcpy>:
c0de7ef4:	440a      	add	r2, r1
c0de7ef6:	4291      	cmp	r1, r2
c0de7ef8:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de7efc:	d100      	bne.n	c0de7f00 <memcpy+0xc>
c0de7efe:	4770      	bx	lr
c0de7f00:	b510      	push	{r4, lr}
c0de7f02:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7f06:	4291      	cmp	r1, r2
c0de7f08:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7f0c:	d1f9      	bne.n	c0de7f02 <memcpy+0xe>
c0de7f0e:	bd10      	pop	{r4, pc}

c0de7f10 <memmove>:
c0de7f10:	4288      	cmp	r0, r1
c0de7f12:	b510      	push	{r4, lr}
c0de7f14:	eb01 0402 	add.w	r4, r1, r2
c0de7f18:	d902      	bls.n	c0de7f20 <memmove+0x10>
c0de7f1a:	4284      	cmp	r4, r0
c0de7f1c:	4623      	mov	r3, r4
c0de7f1e:	d807      	bhi.n	c0de7f30 <memmove+0x20>
c0de7f20:	1e43      	subs	r3, r0, #1
c0de7f22:	42a1      	cmp	r1, r4
c0de7f24:	d008      	beq.n	c0de7f38 <memmove+0x28>
c0de7f26:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7f2a:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de7f2e:	e7f8      	b.n	c0de7f22 <memmove+0x12>
c0de7f30:	4601      	mov	r1, r0
c0de7f32:	4402      	add	r2, r0
c0de7f34:	428a      	cmp	r2, r1
c0de7f36:	d100      	bne.n	c0de7f3a <memmove+0x2a>
c0de7f38:	bd10      	pop	{r4, pc}
c0de7f3a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de7f3e:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de7f42:	e7f7      	b.n	c0de7f34 <memmove+0x24>

c0de7f44 <memset>:
c0de7f44:	4603      	mov	r3, r0
c0de7f46:	4402      	add	r2, r0
c0de7f48:	4293      	cmp	r3, r2
c0de7f4a:	d100      	bne.n	c0de7f4e <memset+0xa>
c0de7f4c:	4770      	bx	lr
c0de7f4e:	f803 1b01 	strb.w	r1, [r3], #1
c0de7f52:	e7f9      	b.n	c0de7f48 <memset+0x4>

c0de7f54 <setjmp>:
c0de7f54:	46ec      	mov	ip, sp
c0de7f56:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7f5a:	f04f 0000 	mov.w	r0, #0
c0de7f5e:	4770      	bx	lr

c0de7f60 <longjmp>:
c0de7f60:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7f64:	46e5      	mov	sp, ip
c0de7f66:	0008      	movs	r0, r1
c0de7f68:	bf08      	it	eq
c0de7f6a:	2001      	moveq	r0, #1
c0de7f6c:	4770      	bx	lr
c0de7f6e:	bf00      	nop

c0de7f70 <strcmp>:
c0de7f70:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7f74:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7f78:	2a01      	cmp	r2, #1
c0de7f7a:	bf28      	it	cs
c0de7f7c:	429a      	cmpcs	r2, r3
c0de7f7e:	d0f7      	beq.n	c0de7f70 <strcmp>
c0de7f80:	1ad0      	subs	r0, r2, r3
c0de7f82:	4770      	bx	lr

c0de7f84 <strlen>:
c0de7f84:	4603      	mov	r3, r0
c0de7f86:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de7f8a:	2a00      	cmp	r2, #0
c0de7f8c:	d1fb      	bne.n	c0de7f86 <strlen+0x2>
c0de7f8e:	1a18      	subs	r0, r3, r0
c0de7f90:	3801      	subs	r0, #1
c0de7f92:	4770      	bx	lr

c0de7f94 <strncmp>:
c0de7f94:	b510      	push	{r4, lr}
c0de7f96:	b16a      	cbz	r2, c0de7fb4 <strncmp+0x20>
c0de7f98:	3901      	subs	r1, #1
c0de7f9a:	1884      	adds	r4, r0, r2
c0de7f9c:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7fa0:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de7fa4:	429a      	cmp	r2, r3
c0de7fa6:	d103      	bne.n	c0de7fb0 <strncmp+0x1c>
c0de7fa8:	42a0      	cmp	r0, r4
c0de7faa:	d001      	beq.n	c0de7fb0 <strncmp+0x1c>
c0de7fac:	2a00      	cmp	r2, #0
c0de7fae:	d1f5      	bne.n	c0de7f9c <strncmp+0x8>
c0de7fb0:	1ad0      	subs	r0, r2, r3
c0de7fb2:	bd10      	pop	{r4, pc}
c0de7fb4:	4610      	mov	r0, r2
c0de7fb6:	e7fc      	b.n	c0de7fb2 <strncmp+0x1e>

c0de7fb8 <strncpy>:
c0de7fb8:	4603      	mov	r3, r0
c0de7fba:	b510      	push	{r4, lr}
c0de7fbc:	3901      	subs	r1, #1
c0de7fbe:	b132      	cbz	r2, c0de7fce <strncpy+0x16>
c0de7fc0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de7fc4:	3a01      	subs	r2, #1
c0de7fc6:	f803 4b01 	strb.w	r4, [r3], #1
c0de7fca:	2c00      	cmp	r4, #0
c0de7fcc:	d1f7      	bne.n	c0de7fbe <strncpy+0x6>
c0de7fce:	2100      	movs	r1, #0
c0de7fd0:	441a      	add	r2, r3
c0de7fd2:	4293      	cmp	r3, r2
c0de7fd4:	d100      	bne.n	c0de7fd8 <strncpy+0x20>
c0de7fd6:	bd10      	pop	{r4, pc}
c0de7fd8:	f803 1b01 	strb.w	r1, [r3], #1
c0de7fdc:	e7f9      	b.n	c0de7fd2 <strncpy+0x1a>

c0de7fde <C_home_boilerplate_14px_bitmap>:
c0de7fde:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de7fee:	fc7b df0f 7ffe 7ff8                          {........

c0de7ff7 <C_home_boilerplate_14px>:
c0de7ff7:	000e 000e 0000 7fde c0de                    ..........

c0de8001 <C_Information_circle_14px_bitmap>:
c0de8001:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de8011:	e7ff 8fff 1ffc 1ee0                          .........

c0de801a <C_Information_circle_14px>:
c0de801a:	000e 000e 0000 8001 c0de                    ..........

c0de8024 <C_Quit_14px_bitmap>:
c0de8024:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de8034:	6680 9801 7f06 fff9                          .f.......

c0de803d <C_Quit_14px>:
c0de803d:	000e 000e 0000 8024 c0de                    ......$...

c0de8047 <C_Switch_Off_8px_bitmap>:
c0de8047:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de8053 <C_Switch_Off_8px>:
c0de8053:	000c 0008 0000 8047 c0de                    ......G...

c0de805d <C_Switch_On_8px_bitmap>:
c0de805d:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de8069 <C_Switch_On_8px>:
c0de8069:	000c 0008 0000 805d c0de                    ......]...

c0de8073 <C_icon_back_x_bitmap>:
c0de8073:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de8083:	003f 0078 00c0 0000                          ?.x......

c0de808c <C_icon_back_x>:
c0de808c:	000e 000e 0000 8073 c0de                    ......s...

c0de8096 <C_icon_coggle_bitmap>:
c0de8096:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de80a6:	807f 00b4 00c0 0000                          .........

c0de80af <C_icon_coggle>:
c0de80af:	000e 000e 0000 8096 c0de                    ..........

c0de80b9 <C_icon_crossmark_bitmap>:
c0de80b9:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de80c9:	8373 1c87 600e 0018                          s....`...

c0de80d2 <C_icon_crossmark>:
c0de80d2:	000e 000e 0000 80b9 c0de                    ..........

c0de80dc <C_icon_down_bitmap>:
c0de80dc:	2184 8024                                   .!$.

c0de80e0 <C_icon_down>:
c0de80e0:	0007 0004 0000 80dc c0de                    ..........

c0de80ea <C_icon_left_bitmap>:
c0de80ea:	8882 80a0                                   ....

c0de80ee <C_icon_left>:
c0de80ee:	0004 0007 0000 80ea c0de                    ..........

c0de80f8 <C_icon_processing_bitmap>:
c0de80f8:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de8108:	8361 04b7 03c8 0000                          a........

c0de8111 <C_icon_processing>:
c0de8111:	000e 000e 0000 80f8 c0de                    ..........

c0de811b <C_icon_right_bitmap>:
c0de811b:	5110 1014                                   .Q..

c0de811f <C_icon_right>:
c0de811f:	0004 0007 0000 811b c0de                    ..........

c0de8129 <C_icon_up_bitmap>:
c0de8129:	4812 1042                                   .HB.

c0de812d <C_icon_up>:
c0de812d:	0007 0004 0000 8129 c0de                    ......)...

c0de8137 <C_icon_validate_14_bitmap>:
c0de8137:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de8147:	a3b3 a3a3 f0b2                               ......P

c0de814e <C_icon_validate_14>:
c0de814e:	000e 000e 0100 8137 c0de                    ......7...

c0de8158 <C_icon_warning_bitmap>:
c0de8158:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de8168:	e01f 801f 001e 0018                          .........

c0de8171 <C_icon_warning>:
c0de8171:	000e 000e 0000 8158 c0de                    ......X...

c0de817b <C_app_boilerplate_14px_bitmap>:
c0de817b:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de818b:	0384 00f0 0000 0000                          .........

c0de8194 <C_app_boilerplate_14px>:
c0de8194:	000e 000e 0000 817b c0de 7544 6d6d 2079     ......{...Dummy 
c0de81a4:	0032 7325 2820 6425 252f 2964 4f00 6570     2.%s (%d/%d).Ope
c0de81b4:	6172 6974 6e6f 7320 6769 656e 0064 6c42     ration signed.Bl
c0de81c4:	6e69 2d64 6973 6e67 3000 302e 312e 4f00     ind-sign.0.0.1.O
c0de81d4:	6570 6172 6974 6e6f 7220 6a65 6365 6574     peration rejecte
c0de81e4:	0064 7250 7365 2073 6972 6867 2074 7562     d.Press right bu
c0de81f4:	7474 6e6f 7420 206f 6f63 746e 6e69 6575     tton to continue
c0de8204:	6d20 7365 6173 6567 6f20 2072 7008 6572      message or .pre
c0de8214:	7373 6220 746f 2068 6f74 7320 696b 0870     ss both to skip.
c0de8224:	5300 6769 696e 676e 4100 6464 6572 7373     .Signing.Address
c0de8234:	7620 7265 6669 6569 0064 7241 2065 6f79      verified.Are yo
c0de8244:	2075 7573 6572 7420 0a6f 6c61 6f6c 2077     u sure to.allow 
c0de8254:	7564 6d6d 2079 0a32 6e69 7420 6172 736e     dummy 2.in trans
c0de8264:	6361 6974 6e6f 3f73 5400 6172 736e 6361     actions?.Transac
c0de8274:	6974 6e6f 7320 6769 656e 0064 6f54 6120     tion signed.To a
c0de8284:	6363 7065 2074 6972 6b73 202c 7270 7365     ccept risk, pres
c0de8294:	2073 6f62 6874 6220 7475 6f74 736e 4400     s both buttons.D
c0de82a4:	7665 6c65 706f 7265 4500 616e 6c62 6465     eveloper.Enabled
c0de82b4:	4100 6c6c 776f 6420 6d75 796d 3120 690a     .Allow dummy 1.i
c0de82c4:	206e 7274 6e61 6173 7463 6f69 736e 5300     n transactions.S
c0de82d4:	6769 206e 656d 7373 6761 0065 654d 7373     ign message.Mess
c0de82e4:	6761 2065 6973 6e67 6465 5300 6769 206e     age signed.Sign 
c0de82f4:	7274 6e61 6173 7463 6f69 006e 6552 656a     transaction.Reje
c0de8304:	7463 7420 6172 736e 6361 6974 6e6f 4100     ct transaction.A
c0de8314:	6363 7065 2074 6972 6b73 6120 646e 7320     ccept risk and s
c0de8324:	6769 206e 656d 7373 6761 0065 6c41 6f6c     ign message.Allo
c0de8334:	2077 7564 6d6d 2079 0a32 6e69 7420 6172     w dummy 2.in tra
c0de8344:	736e 6361 6974 6e6f 0073 6556 7372 6f69     nsactions.Versio
c0de8354:	006e 6143 636e 6c65 4100 6464 6572 7373     n.Cancel.Address
c0de8364:	7620 7265 6669 6369 7461 6f69 206e 6163      verification ca
c0de8374:	636e 6c65 656c 0064 6944 6173 6c62 6465     ncelled.Disabled
c0de8384:	4100 7070 7320 7465 6974 676e 0073 6341     .App settings.Ac
c0de8394:	6563 7470 7220 7369 206b 6e61 2064 6973     cept risk and si
c0de83a4:	6e67 7420 6172 736e 6361 6974 6e6f 4200     gn transaction.B
c0de83b4:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0de83c4:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0de83d4:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0de83e4:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0de83f4:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0de8404:	4544 0046 4f42 204c 2e25 732a 4200 6361     DEF.BOL %.*s.Bac
c0de8414:	006b 6441 7264 7365 0073 7544 6d6d 2079     k.Address.Dummy 
c0de8424:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0de8434:	6f63 666e 7269 006d 7854 6148 6873 5400     confirm.TxHash.T
c0de8444:	6172 736e 6361 6974 6e6f 7220 6a65 6365     ransaction rejec
c0de8454:	6574 0064 7041 2070 6e69 6f66 5300 6769     ted.App info.Sig
c0de8464:	206e 706f 7265 7461 6f69 006e 6552 656a     n operation.Reje
c0de8474:	7463 6d20 7365 6173 6567 5200 6a65 6365     ct message.Rejec
c0de8484:	2074 706f 7265 7461 6f69 006e 4b5a 4f4e     t operation.ZKNO
c0de8494:	0058 6556 6972 7966 4220 4c4f 6120 6464     X.Verify BOL add
c0de84a4:	6572 7373 5200 7665 6569 2077 7274 6e61     ress.Review tran
c0de84b4:	6173 7463 6f69 0a6e 6f74 2820 6170 7472     saction.to (part
c0de84c4:	6169 296c 7320 6769 006e 4b5a 4f4e 4858     ial) sign.ZKNOXH
c0de84d4:	0057 7061 2070 7369 7220 6165 7964 5100     W.app is ready.Q
c0de84e4:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0de84f4:	0000 0000 6501 d5c4 445f b317 e968 545a     .....e.._D..h.ZT
c0de8504:	1a00 3230 b03c e84f 3e34 d45a 4584 6323     ..02<.O.4>Z..E#c
c0de8514:	98a5 59d0 ed73 53a7 9d29 487d 3933 08d8     ...Ys..S).}H39..
c0de8524:	a109 05d8 bd53 02a4 feff fe5b ffff ffff     ....S.....[.....
c0de8534:	0000 0100 ce05 c698 051b 7ff4 eae2 a5e9     ................
c0de8544:	bd42 f699 e7b2 4682 1623 b540 9545 bffe     B......F#.@.E...
c0de8554:	1ed5 53b8 0000 0000 0000 0000 0000 0000     ...S............
	...
c0de8574:	0000 0300 0001 0000 0000 0000 0002 0000     ................
c0de8584:	0000 0000 0003 0000 0000 0000 0004 0000     ................
c0de8594:	0000 0000 d600 b746 deed 18a5 d083 3f88     ......F........?
c0de85a4:	4964 2dda 9fa0 c7c3 53f4 490a 696d ee29     dI.-.....S.Imi).
c0de85b4:	9b64 7f4c a005 91c0 8356 988b af28 123f     d.L.....V...(.?.
c0de85c4:	e167 e675 84e2 9dc7 6d1b d08a 0acd d9e0     g.u......m......
c0de85d4:	9057 6e33 c61c 38ee 9c13 111c 2302 7a53     W.3n...8.....#Sz
c0de85e4:	e78c 069d 587e 10cc c667 b7fb b3d8 b0a1     ....~X..g.......
c0de85f4:	fc8d 088f 4d27 e8bc 51d1 9679 c09b 9fd4     ....'M...Qy.....
c0de8604:	25a7 dfbd e59d e055 6aba 3c69 db6a fc52     .%....U..ji<j.R.
c0de8614:	e79e 2ca8 fb1c d469 67ca 525f ce0c 0276     ...,..i..g_R..v.
c0de8624:	6802 0076 8fff 0087 1974 7104 fd74 b506     .hv.....t..qt...
c0de8634:	7628 e1e7 0c06 ce89 265c 0534 0a37 b608     (v......\&4.7...
c0de8644:	30d0 0b2b 3eab b8ed 2039 0aee 7267 dc97     .0+..>..9 ..gr..
c0de8654:	2139 f126 a570 4a89 4464 3854 15d0 32ac     9!&.p..JdDT8...2
c0de8664:	36ba 090f de2c ba44 1fb1 b7c2 b5d4 d2c0     .6..,.D.........
c0de8674:	2216 ce8c 820b 39b7 8de7 57da 5ae7 80c6     .".....9...W.Z..
c0de8684:	68ef f19d 8f15 eee3 09d8 6d5c d14b c7b2     .h........\mK...
c0de8694:	66c1 fdee 4a03 6fe2 49fb 6644 4563 7bec     .f...J.o.IDfcE.{
c0de86a4:	3f44 92cc 36bb da52 4fa9 92f9 77e1 a629     D?...6R..O...w).
c0de86b4:	d3fe 736c 7104 de2f 1782 e713 026d fd5d     ..ls.q/.....m.].
c0de86c4:	bde4 2c8c 68f3 7a02 34c1 7075 3983 c57b     ...,.h.z.4up.9{.
c0de86d4:	16f1 fc60 d059 a598 2363 8445 5ad4 343e     ..`.Y...c#E..Z>4
c0de86e4:	4fe8 3cb0 3032 001a 5a54 68e9 17b3 5f44     .O.<20..TZ.h..D_
c0de86f4:	c4d5 0165 0000 0000 0000 0000 0000 0000     ..e.............
	...
c0de8714:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de8724:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de8734:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de8744:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de8754:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de8764:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de8774:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de8794:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de87a4:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de87b4:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de87c4:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de87d4:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de87e4:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de87f4:	2d87 8b7d 8802 641c ea76 fcc0 c158 734b     .-}....dv...X.Ks
c0de8804:	685c 6ec7 e5f3 c19b 40ad e4b3 4d5a f15b     \h.n.....@..ZM[.
c0de8814:	5736 3e72                                   6Wr>

c0de8818 <.L__const.handler_cmd_Poseidon.input>:
c0de8818:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de8828:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de8838:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de8848:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de8858:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de8868:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de8878:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de8888:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de8898:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de88a8:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de88b8 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de88d4:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de88e4:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de88f4:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de8904:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de8914:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de8924:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de8934:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de8944:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de8954:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de8974:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de8984:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de8994:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de89a4:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de89b4:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de89c4:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de89d4:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de89e4:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de89f4:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de8a14:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de8a24:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de8a34:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de8a44:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de8a54:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de8a64:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de8a74:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de8a84:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de8a94:	9b44 9ffb                                   D...

c0de8a98 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de8ab4:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de8ac4:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de8ad4:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de8ae4:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de8af4:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de8b04:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de8b14:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de8b24:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de8b34:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de8b54:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de8b64:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de8b74:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de8b84:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de8b94:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de8ba4:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de8bb4:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de8bc4:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de8bd4:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de8bf4:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de8c04:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de8c14:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de8c24:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de8c34:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de8c44:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de8c54:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de8c64:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de8c74:	8132 74b1                                   2..t

c0de8c78 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de8c78:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de8c88:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de8c98:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de8ca8:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8cb8:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8cc8:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8cd8 <.L__const.handler_cmd_PartialSig.commitmentlist_be>:
	...
c0de8cf4:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0de8d04:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0de8d14:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0de8d24:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0de8d34:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0de8d44:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0de8d54:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0de8d64:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0de8d74:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0de8d94:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0de8da4:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0de8db4:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0de8dc4:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0de8dd4:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0de8de4:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0de8df4:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0de8e04:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0de8e14:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0de8e34:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0de8e44:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0de8e54:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0de8e64:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0de8e74:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0de8e84:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0de8e94:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0de8ea4:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0de8eb4:	b87c 6a30                                   |.0j

c0de8eb8 <.L__const.handler_cmd_PartialSig.groupkey_be>:
c0de8eb8:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0de8ec8:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0de8ed8:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de8ee8:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0de8ef8 <settingContents>:
c0de8ef8:	0000 0000 8f14 c0de 0001 0000               ............

c0de8f04 <infoList>:
c0de8f04:	8f4c c0de 8f54 c0de 0000 0000 0002 0000     L...T...........

c0de8f14 <contents>:
c0de8f14:	0007 0000 05dc da7a 0002 0000 0000 0000     ......z.........
	...
c0de8f48:	1d2d c0de                                   -...

c0de8f4c <INFO_TYPES>:
c0de8f4c:	834e c0de 82a3 c0de                         N.......

c0de8f54 <INFO_CONTENTS>:
c0de8f54:	81cd c0de 8490 c0de                         ........

c0de8f5c <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8f7c:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8f8c:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de8f9c <.L__const.Poseidon_alloc_init.MixColumn>:
c0de8f9c:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de8fac:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de8fbc:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de8fcc:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de8fdc:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de8fec:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de8ffc:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de900c:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de901c:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de902c:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de903c:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de904c:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de905c:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de906c:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de907c:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de908c:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de909c:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de90ac:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de90bc:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de90cc:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de90dc:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de90ec:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de90fc:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de910c:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de911c:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de912c:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de913c:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de914c:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de915c:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de916c:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de917c:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de918c:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de919c:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de91ac:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de91bc:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de91cc:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de91dc:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de91ec:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de91fc:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de920c:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de921c:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de922c:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de923c:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de924c:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de925c:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de926c:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de927c:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de928c:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de929c:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de92ac:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de92bc:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de92cc:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de92dc:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de92ec:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de92fc:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de930c:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de931c:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de932c:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de933c:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de934c:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de935c:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de936c:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de937c:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de938c:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de939c:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de93ac:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de93bc:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de93cc:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de93dc:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de93ec:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de93fc:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de940c:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de941c <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de941c:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de942c:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de943c <blindSigningWarning>:
c0de943c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de9468 <g_pcHex>:
c0de9468:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de9478 <g_pcHex_cap>:
c0de9478:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de9488 <_etext>:
	...

c0de9600 <N_storage_real>:
	...

c0de9800 <install_parameters>:
c0de9800:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de9810:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de9820:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de9830:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
