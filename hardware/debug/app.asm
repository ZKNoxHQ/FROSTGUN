
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f009 fe46 	bl	c0de9c96 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f008 fd01 	bl	c0de8a1c <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f008 fcc8 	bl	c0de89b0 <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f008 fcb4 	bl	c0de8990 <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f00b f869 	bl	c0deb10c <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f009 fe27 	bl	c0de9c90 <assert_exit>
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
c0de0056:	f009 fdd5 	bl	c0de9c04 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f00b f853 	bl	c0deb112 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f009 fe09 	bl	c0de9c90 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d143      	bne.n	c0de010c <apdu_dispatcher+0x9a>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2815      	cmp	r0, #21
c0de0090:	d03f      	beq.n	c0de0112 <apdu_dispatcher+0xa0>
c0de0092:	2804      	cmp	r0, #4
c0de0094:	d047      	beq.n	c0de0126 <apdu_dispatcher+0xb4>
c0de0096:	2805      	cmp	r0, #5
c0de0098:	d051      	beq.n	c0de013e <apdu_dispatcher+0xcc>
c0de009a:	2806      	cmp	r0, #6
c0de009c:	d065      	beq.n	c0de016a <apdu_dispatcher+0xf8>
c0de009e:	2807      	cmp	r0, #7
c0de00a0:	d071      	beq.n	c0de0186 <apdu_dispatcher+0x114>
c0de00a2:	2808      	cmp	r0, #8
c0de00a4:	d079      	beq.n	c0de019a <apdu_dispatcher+0x128>
c0de00a6:	2809      	cmp	r0, #9
c0de00a8:	f000 8080 	beq.w	c0de01ac <apdu_dispatcher+0x13a>
c0de00ac:	280a      	cmp	r0, #10
c0de00ae:	f000 8086 	beq.w	c0de01be <apdu_dispatcher+0x14c>
c0de00b2:	280b      	cmp	r0, #11
c0de00b4:	f000 808c 	beq.w	c0de01d0 <apdu_dispatcher+0x15e>
c0de00b8:	280c      	cmp	r0, #12
c0de00ba:	f000 8092 	beq.w	c0de01e2 <apdu_dispatcher+0x170>
c0de00be:	280d      	cmp	r0, #13
c0de00c0:	f000 8098 	beq.w	c0de01f4 <apdu_dispatcher+0x182>
c0de00c4:	280e      	cmp	r0, #14
c0de00c6:	f000 809e 	beq.w	c0de0206 <apdu_dispatcher+0x194>
c0de00ca:	280f      	cmp	r0, #15
c0de00cc:	f000 80a4 	beq.w	c0de0218 <apdu_dispatcher+0x1a6>
c0de00d0:	2810      	cmp	r0, #16
c0de00d2:	f000 80aa 	beq.w	c0de022a <apdu_dispatcher+0x1b8>
c0de00d6:	2811      	cmp	r0, #17
c0de00d8:	f000 80af 	beq.w	c0de023a <apdu_dispatcher+0x1c8>
c0de00dc:	2812      	cmp	r0, #18
c0de00de:	f000 80b4 	beq.w	c0de024a <apdu_dispatcher+0x1d8>
c0de00e2:	2813      	cmp	r0, #19
c0de00e4:	f000 80b9 	beq.w	c0de025a <apdu_dispatcher+0x1e8>
c0de00e8:	2814      	cmp	r0, #20
c0de00ea:	f000 80be 	beq.w	c0de026a <apdu_dispatcher+0x1f8>
c0de00ee:	2803      	cmp	r0, #3
c0de00f0:	f040 80c3 	bne.w	c0de027a <apdu_dispatcher+0x208>
c0de00f4:	78a0      	ldrb	r0, [r4, #2]
c0de00f6:	2800      	cmp	r0, #0
c0de00f8:	f040 80d4 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de00fc:	78e0      	ldrb	r0, [r4, #3]
c0de00fe:	2800      	cmp	r0, #0
c0de0100:	f040 80d0 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de0104:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0108:	f000 b98b 	b.w	c0de0422 <handler_get_version>
c0de010c:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de0110:	e0ca      	b.n	c0de02a8 <apdu_dispatcher+0x236>
c0de0112:	68a0      	ldr	r0, [r4, #8]
c0de0114:	2800      	cmp	r0, #0
c0de0116:	f000 80c2 	beq.w	c0de029e <apdu_dispatcher+0x22c>
c0de011a:	f000 f8cf 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de011e:	a801      	add	r0, sp, #4
c0de0120:	f000 ffc8 	bl	c0de10b4 <handler_cmd_BindingFactors>
c0de0124:	e0b9      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de0126:	78a0      	ldrb	r0, [r4, #2]
c0de0128:	2800      	cmp	r0, #0
c0de012a:	f040 80bb 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de012e:	78e0      	ldrb	r0, [r4, #3]
c0de0130:	2800      	cmp	r0, #0
c0de0132:	f040 80b7 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de0136:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de013a:	f000 b90d 	b.w	c0de0358 <handler_get_app_name>
c0de013e:	78a1      	ldrb	r1, [r4, #2]
c0de0140:	2901      	cmp	r1, #1
c0de0142:	f200 80af 	bhi.w	c0de02a4 <apdu_dispatcher+0x232>
c0de0146:	78e0      	ldrb	r0, [r4, #3]
c0de0148:	2800      	cmp	r0, #0
c0de014a:	f040 80ab 	bne.w	c0de02a4 <apdu_dispatcher+0x232>
c0de014e:	68a0      	ldr	r0, [r4, #8]
c0de0150:	2800      	cmp	r0, #0
c0de0152:	f000 80a4 	beq.w	c0de029e <apdu_dispatcher+0x22c>
c0de0156:	9001      	str	r0, [sp, #4]
c0de0158:	7920      	ldrb	r0, [r4, #4]
c0de015a:	2900      	cmp	r1, #0
c0de015c:	9002      	str	r0, [sp, #8]
c0de015e:	bf18      	it	ne
c0de0160:	2101      	movne	r1, #1
c0de0162:	a801      	add	r0, sp, #4
c0de0164:	f000 f90c 	bl	c0de0380 <handler_get_public_key>
c0de0168:	e097      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de016a:	78a1      	ldrb	r1, [r4, #2]
c0de016c:	2900      	cmp	r1, #0
c0de016e:	f000 8087 	beq.w	c0de0280 <apdu_dispatcher+0x20e>
c0de0172:	2903      	cmp	r1, #3
c0de0174:	f200 8096 	bhi.w	c0de02a4 <apdu_dispatcher+0x232>
c0de0178:	78e0      	ldrb	r0, [r4, #3]
c0de017a:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de017e:	2a80      	cmp	r2, #128	@ 0x80
c0de0180:	f000 8082 	beq.w	c0de0288 <apdu_dispatcher+0x216>
c0de0184:	e08e      	b.n	c0de02a4 <apdu_dispatcher+0x232>
c0de0186:	68a0      	ldr	r0, [r4, #8]
c0de0188:	2800      	cmp	r0, #0
c0de018a:	f000 8088 	beq.w	c0de029e <apdu_dispatcher+0x22c>
c0de018e:	f000 f895 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de0192:	a801      	add	r0, sp, #4
c0de0194:	f000 fa4c 	bl	c0de0630 <handler_cmd_keccakH>
c0de0198:	e07f      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de019a:	68a0      	ldr	r0, [r4, #8]
c0de019c:	2800      	cmp	r0, #0
c0de019e:	d07e      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01a0:	f000 f88c 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de01a4:	a801      	add	r0, sp, #4
c0de01a6:	f000 fa0c 	bl	c0de05c2 <handler_cmd_blake2b512>
c0de01aa:	e076      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01ac:	68a0      	ldr	r0, [r4, #8]
c0de01ae:	2800      	cmp	r0, #0
c0de01b0:	d075      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01b2:	f000 f883 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de01b6:	a801      	add	r0, sp, #4
c0de01b8:	f000 faa2 	bl	c0de0700 <handler_cmd_Poseidon>
c0de01bc:	e06d      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01be:	68a0      	ldr	r0, [r4, #8]
c0de01c0:	2800      	cmp	r0, #0
c0de01c2:	d06c      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01c4:	f000 f87a 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de01c8:	a801      	add	r0, sp, #4
c0de01ca:	f000 fc01 	bl	c0de09d0 <handler_cmd_tEddsaPoseidon>
c0de01ce:	e064      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01d0:	68a0      	ldr	r0, [r4, #8]
c0de01d2:	2800      	cmp	r0, #0
c0de01d4:	d063      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01d6:	f000 f871 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de01da:	a801      	add	r0, sp, #4
c0de01dc:	f000 fb5c 	bl	c0de0898 <handler_cmd_tEddsaPoseidon_Kpub>
c0de01e0:	e05b      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01e2:	68a0      	ldr	r0, [r4, #8]
c0de01e4:	2800      	cmp	r0, #0
c0de01e6:	d05a      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01e8:	f000 f868 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de01ec:	a801      	add	r0, sp, #4
c0de01ee:	f000 fb95 	bl	c0de091c <handler_cmd_tEddsaPoseidon_Sign>
c0de01f2:	e052      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de01f4:	68a0      	ldr	r0, [r4, #8]
c0de01f6:	2800      	cmp	r0, #0
c0de01f8:	d051      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de01fa:	f000 f85f 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de01fe:	a801      	add	r0, sp, #4
c0de0200:	f000 fb04 	bl	c0de080c <handler_cmd_Poseidon_ithRC>
c0de0204:	e049      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de0206:	68a0      	ldr	r0, [r4, #8]
c0de0208:	2800      	cmp	r0, #0
c0de020a:	d048      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de020c:	f000 f856 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de0210:	a801      	add	r0, sp, #4
c0de0212:	f000 fc51 	bl	c0de0ab8 <handler_cmd_tEdwards>
c0de0216:	e040      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de0218:	68a0      	ldr	r0, [r4, #8]
c0de021a:	2800      	cmp	r0, #0
c0de021c:	d03f      	beq.n	c0de029e <apdu_dispatcher+0x22c>
c0de021e:	f000 f84d 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de0222:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0226:	f000 ba21 	b.w	c0de066c <handler_cmd_bolos_stretch>
c0de022a:	68a0      	ldr	r0, [r4, #8]
c0de022c:	b3b8      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de022e:	f000 f845 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de0232:	a801      	add	r0, sp, #4
c0de0234:	f000 fcf6 	bl	c0de0c24 <handler_cmd_Interpolate>
c0de0238:	e02f      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de023a:	68a0      	ldr	r0, [r4, #8]
c0de023c:	b378      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de023e:	f000 f83d 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de0242:	a801      	add	r0, sp, #4
c0de0244:	f000 fda3 	bl	c0de0d8e <handler_cmd_Split>
c0de0248:	e027      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de024a:	68a0      	ldr	r0, [r4, #8]
c0de024c:	b338      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de024e:	f000 f835 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de0252:	a801      	add	r0, sp, #4
c0de0254:	f000 fe64 	bl	c0de0f20 <handler_cmd_frostH>
c0de0258:	e01f      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de025a:	68a0      	ldr	r0, [r4, #8]
c0de025c:	b1f8      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de025e:	f000 f82d 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de0262:	a801      	add	r0, sp, #4
c0de0264:	f000 feac 	bl	c0de0fc0 <handler_cmd_encodeCommitment>
c0de0268:	e017      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de026a:	68a0      	ldr	r0, [r4, #8]
c0de026c:	b1b8      	cbz	r0, c0de029e <apdu_dispatcher+0x22c>
c0de026e:	f000 f825 	bl	c0de02bc <OUTLINED_FUNCTION_0>
c0de0272:	a801      	add	r0, sp, #4
c0de0274:	f000 feda 	bl	c0de102c <handler_cmd_GroupCommitment>
c0de0278:	e00f      	b.n	c0de029a <apdu_dispatcher+0x228>
c0de027a:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de027e:	e013      	b.n	c0de02a8 <apdu_dispatcher+0x236>
c0de0280:	78e0      	ldrb	r0, [r4, #3]
c0de0282:	2880      	cmp	r0, #128	@ 0x80
c0de0284:	d10e      	bne.n	c0de02a4 <apdu_dispatcher+0x232>
c0de0286:	2080      	movs	r0, #128	@ 0x80
c0de0288:	68a2      	ldr	r2, [r4, #8]
c0de028a:	b142      	cbz	r2, c0de029e <apdu_dispatcher+0x22c>
c0de028c:	9201      	str	r2, [sp, #4]
c0de028e:	7922      	ldrb	r2, [r4, #4]
c0de0290:	9202      	str	r2, [sp, #8]
c0de0292:	09c2      	lsrs	r2, r0, #7
c0de0294:	a801      	add	r0, sp, #4
c0de0296:	f000 f8db 	bl	c0de0450 <handler_sign_tx>
c0de029a:	b004      	add	sp, #16
c0de029c:	bd10      	pop	{r4, pc}
c0de029e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de02a2:	e001      	b.n	c0de02a8 <apdu_dispatcher+0x236>
c0de02a4:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de02a8:	b004      	add	sp, #16
c0de02aa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de02ae:	f000 b800 	b.w	c0de02b2 <io_send_sw>

c0de02b2 <io_send_sw>:
c0de02b2:	4602      	mov	r2, r0
c0de02b4:	2000      	movs	r0, #0
c0de02b6:	2100      	movs	r1, #0
c0de02b8:	f008 bafa 	b.w	c0de88b0 <io_send_response_buffers>

c0de02bc <OUTLINED_FUNCTION_0>:
c0de02bc:	9001      	str	r0, [sp, #4]
c0de02be:	7920      	ldrb	r0, [r4, #4]
c0de02c0:	9002      	str	r0, [sp, #8]
c0de02c2:	4770      	bx	lr

c0de02c4 <app_main>:
c0de02c4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de02c6:	f008 facb 	bl	c0de8860 <io_init>
c0de02ca:	481e      	ldr	r0, [pc, #120]	@ (c0de0344 <app_main+0x80>)
c0de02cc:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de02d0:	b908      	cbnz	r0, c0de02d6 <app_main+0x12>
c0de02d2:	f001 fa01 	bl	c0de16d8 <ui_menu_main>
c0de02d6:	481c      	ldr	r0, [pc, #112]	@ (c0de0348 <app_main+0x84>)
c0de02d8:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de02dc:	4448      	add	r0, r9
c0de02de:	f00a ff21 	bl	c0deb124 <explicit_bzero>
c0de02e2:	481b      	ldr	r0, [pc, #108]	@ (c0de0350 <app_main+0x8c>)
c0de02e4:	4478      	add	r0, pc
c0de02e6:	f00a fb11 	bl	c0dea90c <pic>
c0de02ea:	7880      	ldrb	r0, [r0, #2]
c0de02ec:	2801      	cmp	r0, #1
c0de02ee:	d00d      	beq.n	c0de030c <app_main+0x48>
c0de02f0:	2001      	movs	r0, #1
c0de02f2:	f88d 0002 	strb.w	r0, [sp, #2]
c0de02f6:	2000      	movs	r0, #0
c0de02f8:	f8ad 0000 	strh.w	r0, [sp]
c0de02fc:	4815      	ldr	r0, [pc, #84]	@ (c0de0354 <app_main+0x90>)
c0de02fe:	4478      	add	r0, pc
c0de0300:	f00a fb04 	bl	c0dea90c <pic>
c0de0304:	4669      	mov	r1, sp
c0de0306:	2203      	movs	r2, #3
c0de0308:	f00a fb84 	bl	c0deaa14 <nvm_write>
c0de030c:	4d0f      	ldr	r5, [pc, #60]	@ (c0de034c <app_main+0x88>)
c0de030e:	ac01      	add	r4, sp, #4
c0de0310:	f008 fab0 	bl	c0de8874 <io_recv_command>
c0de0314:	2800      	cmp	r0, #0
c0de0316:	d414      	bmi.n	c0de0342 <app_main+0x7e>
c0de0318:	4602      	mov	r2, r0
c0de031a:	eb09 0105 	add.w	r1, r9, r5
c0de031e:	4620      	mov	r0, r4
c0de0320:	f008 fbcc 	bl	c0de8abc <apdu_parser>
c0de0324:	b130      	cbz	r0, c0de0334 <app_main+0x70>
c0de0326:	4620      	mov	r0, r4
c0de0328:	f7ff fea3 	bl	c0de0072 <apdu_dispatcher>
c0de032c:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0330:	dcee      	bgt.n	c0de0310 <app_main+0x4c>
c0de0332:	e006      	b.n	c0de0342 <app_main+0x7e>
c0de0334:	2000      	movs	r0, #0
c0de0336:	2100      	movs	r1, #0
c0de0338:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de033c:	f008 fab8 	bl	c0de88b0 <io_send_response_buffers>
c0de0340:	e7e6      	b.n	c0de0310 <app_main+0x4c>
c0de0342:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0344:	000018d4 	.word	0x000018d4
c0de0348:	00000000 	.word	0x00000000
c0de034c:	000019bc 	.word	0x000019bc
c0de0350:	0000c718 	.word	0x0000c718
c0de0354:	0000c6fe 	.word	0x0000c6fe

c0de0358 <handler_get_app_name>:
c0de0358:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de035a:	4808      	ldr	r0, [pc, #32]	@ (c0de037c <handler_get_app_name+0x24>)
c0de035c:	4478      	add	r0, pc
c0de035e:	f00a fad5 	bl	c0dea90c <pic>
c0de0362:	2100      	movs	r1, #0
c0de0364:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0368:	9103      	str	r1, [sp, #12]
c0de036a:	2107      	movs	r1, #7
c0de036c:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0370:	a801      	add	r0, sp, #4
c0de0372:	2101      	movs	r1, #1
c0de0374:	f008 fa9c 	bl	c0de88b0 <io_send_response_buffers>
c0de0378:	b004      	add	sp, #16
c0de037a:	bd80      	pop	{r7, pc}
c0de037c:	0000b3b5 	.word	0x0000b3b5

c0de0380 <handler_get_public_key>:
c0de0380:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0382:	b085      	sub	sp, #20
c0de0384:	4f23      	ldr	r7, [pc, #140]	@ (c0de0414 <handler_get_public_key+0x94>)
c0de0386:	460c      	mov	r4, r1
c0de0388:	4605      	mov	r5, r0
c0de038a:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de038e:	eb09 0607 	add.w	r6, r9, r7
c0de0392:	4630      	mov	r0, r6
c0de0394:	f00a fec6 	bl	c0deb124 <explicit_bzero>
c0de0398:	2000      	movs	r0, #0
c0de039a:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de039e:	f809 0007 	strb.w	r0, [r9, r7]
c0de03a2:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de03a6:	4628      	mov	r0, r5
c0de03a8:	f007 ffee 	bl	c0de8388 <buffer_read_u8>
c0de03ac:	b308      	cbz	r0, c0de03f2 <handler_get_public_key+0x72>
c0de03ae:	eb09 0007 	add.w	r0, r9, r7
c0de03b2:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de03b6:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de03ba:	4628      	mov	r0, r5
c0de03bc:	f008 f837 	bl	c0de842e <buffer_read_bip32_path>
c0de03c0:	b1b8      	cbz	r0, c0de03f2 <handler_get_public_key+0x72>
c0de03c2:	eb09 0007 	add.w	r0, r9, r7
c0de03c6:	2100      	movs	r1, #0
c0de03c8:	2205      	movs	r2, #5
c0de03ca:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de03ce:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de03d2:	9104      	str	r1, [sp, #16]
c0de03d4:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de03d8:	f100 0608 	add.w	r6, r0, #8
c0de03dc:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de03e0:	2000      	movs	r0, #0
c0de03e2:	2121      	movs	r1, #33	@ 0x21
c0de03e4:	e9cd 6500 	strd	r6, r5, [sp]
c0de03e8:	f008 f8e2 	bl	c0de85b0 <bip32_derive_with_seed_get_pubkey_256>
c0de03ec:	b140      	cbz	r0, c0de0400 <handler_get_public_key+0x80>
c0de03ee:	b280      	uxth	r0, r0
c0de03f0:	e001      	b.n	c0de03f6 <handler_get_public_key+0x76>
c0de03f2:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de03f6:	b005      	add	sp, #20
c0de03f8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de03fc:	f000 b80c 	b.w	c0de0418 <io_send_sw>
c0de0400:	2c00      	cmp	r4, #0
c0de0402:	b005      	add	sp, #20
c0de0404:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0408:	bf08      	it	eq
c0de040a:	f000 bf31 	beq.w	c0de1270 <helper_send_response_pubkey>
c0de040e:	f001 ba47 	b.w	c0de18a0 <ui_display_address>
c0de0412:	bf00      	nop
c0de0414:	00000000 	.word	0x00000000

c0de0418 <io_send_sw>:
c0de0418:	4602      	mov	r2, r0
c0de041a:	2000      	movs	r0, #0
c0de041c:	2100      	movs	r1, #0
c0de041e:	f008 ba47 	b.w	c0de88b0 <io_send_response_buffers>

c0de0422 <handler_get_version>:
c0de0422:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0424:	2000      	movs	r0, #0
c0de0426:	2101      	movs	r1, #1
c0de0428:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de042c:	f88d 0002 	strb.w	r0, [sp, #2]
c0de0430:	f88d 0001 	strb.w	r0, [sp, #1]
c0de0434:	9003      	str	r0, [sp, #12]
c0de0436:	2003      	movs	r0, #3
c0de0438:	f88d 1003 	strb.w	r1, [sp, #3]
c0de043c:	2101      	movs	r1, #1
c0de043e:	9002      	str	r0, [sp, #8]
c0de0440:	f10d 0001 	add.w	r0, sp, #1
c0de0444:	9001      	str	r0, [sp, #4]
c0de0446:	a801      	add	r0, sp, #4
c0de0448:	f008 fa32 	bl	c0de88b0 <io_send_response_buffers>
c0de044c:	b004      	add	sp, #16
c0de044e:	bd80      	pop	{r7, pc}

c0de0450 <handler_sign_tx>:
c0de0450:	b570      	push	{r4, r5, r6, lr}
c0de0452:	b086      	sub	sp, #24
c0de0454:	4e54      	ldr	r6, [pc, #336]	@ (c0de05a8 <handler_sign_tx+0x158>)
c0de0456:	4604      	mov	r4, r0
c0de0458:	b191      	cbz	r1, c0de0480 <handler_sign_tx+0x30>
c0de045a:	eb09 0006 	add.w	r0, r9, r6
c0de045e:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de0462:	2801      	cmp	r0, #1
c0de0464:	d12c      	bne.n	c0de04c0 <handler_sign_tx+0x70>
c0de0466:	eb09 0006 	add.w	r0, r9, r6
c0de046a:	4615      	mov	r5, r2
c0de046c:	6862      	ldr	r2, [r4, #4]
c0de046e:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de0472:	1811      	adds	r1, r2, r0
c0de0474:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de0478:	d925      	bls.n	c0de04c6 <handler_sign_tx+0x76>
c0de047a:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de047e:	e039      	b.n	c0de04f4 <handler_sign_tx+0xa4>
c0de0480:	eb09 0506 	add.w	r5, r9, r6
c0de0484:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0488:	4628      	mov	r0, r5
c0de048a:	f00a fe4b 	bl	c0deb124 <explicit_bzero>
c0de048e:	2000      	movs	r0, #0
c0de0490:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de0494:	f809 0006 	strb.w	r0, [r9, r6]
c0de0498:	2001      	movs	r0, #1
c0de049a:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de049e:	4620      	mov	r0, r4
c0de04a0:	f007 ff72 	bl	c0de8388 <buffer_read_u8>
c0de04a4:	b148      	cbz	r0, c0de04ba <handler_sign_tx+0x6a>
c0de04a6:	eb09 0006 	add.w	r0, r9, r6
c0de04aa:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de04ae:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de04b2:	4620      	mov	r0, r4
c0de04b4:	f007 ffbb 	bl	c0de842e <buffer_read_bip32_path>
c0de04b8:	b9b8      	cbnz	r0, c0de04ea <handler_sign_tx+0x9a>
c0de04ba:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de04be:	e019      	b.n	c0de04f4 <handler_sign_tx+0xa4>
c0de04c0:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de04c4:	e016      	b.n	c0de04f4 <handler_sign_tx+0xa4>
c0de04c6:	eb09 0106 	add.w	r1, r9, r6
c0de04ca:	4408      	add	r0, r1
c0de04cc:	f100 0108 	add.w	r1, r0, #8
c0de04d0:	4620      	mov	r0, r4
c0de04d2:	f007 ffd6 	bl	c0de8482 <buffer_move>
c0de04d6:	b158      	cbz	r0, c0de04f0 <handler_sign_tx+0xa0>
c0de04d8:	eb09 0106 	add.w	r1, r9, r6
c0de04dc:	6862      	ldr	r2, [r4, #4]
c0de04de:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de04e2:	4410      	add	r0, r2
c0de04e4:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de04e8:	b14d      	cbz	r5, c0de04fe <handler_sign_tx+0xae>
c0de04ea:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de04ee:	e001      	b.n	c0de04f4 <handler_sign_tx+0xa4>
c0de04f0:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de04f4:	b006      	add	sp, #24
c0de04f6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de04fa:	f000 b85d 	b.w	c0de05b8 <io_send_sw>
c0de04fe:	2100      	movs	r1, #0
c0de0500:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de0504:	eb09 0006 	add.w	r0, r9, r6
c0de0508:	f100 0108 	add.w	r1, r0, #8
c0de050c:	9101      	str	r1, [sp, #4]
c0de050e:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de0512:	a801      	add	r0, sp, #4
c0de0514:	f001 f802 	bl	c0de151c <transaction_deserialize>
c0de0518:	2801      	cmp	r0, #1
c0de051a:	d114      	bne.n	c0de0546 <handler_sign_tx+0xf6>
c0de051c:	2001      	movs	r0, #1
c0de051e:	f809 0006 	strb.w	r0, [r9, r6]
c0de0522:	eb09 0006 	add.w	r0, r9, r6
c0de0526:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de052a:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de052e:	9105      	str	r1, [sp, #20]
c0de0530:	f100 0108 	add.w	r1, r0, #8
c0de0534:	9104      	str	r1, [sp, #16]
c0de0536:	a804      	add	r0, sp, #16
c0de0538:	2101      	movs	r1, #1
c0de053a:	f009 fb63 	bl	c0de9c04 <cx_keccak_256_hash_iovec>
c0de053e:	b140      	cbz	r0, c0de0552 <handler_sign_tx+0x102>
c0de0540:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de0544:	e001      	b.n	c0de054a <handler_sign_tx+0xfa>
c0de0546:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de054a:	f000 f835 	bl	c0de05b8 <io_send_sw>
c0de054e:	b006      	add	sp, #24
c0de0550:	bd70      	pop	{r4, r5, r6, pc}
c0de0552:	4816      	ldr	r0, [pc, #88]	@ (c0de05ac <handler_sign_tx+0x15c>)
c0de0554:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0558:	b1a0      	cbz	r0, c0de0584 <handler_sign_tx+0x134>
c0de055a:	4815      	ldr	r0, [pc, #84]	@ (c0de05b0 <handler_sign_tx+0x160>)
c0de055c:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de0560:	b9f9      	cbnz	r1, c0de05a2 <handler_sign_tx+0x152>
c0de0562:	eb09 0406 	add.w	r4, r9, r6
c0de0566:	2101      	movs	r1, #1
c0de0568:	f809 1000 	strb.w	r1, [r9, r0]
c0de056c:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de0570:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de0572:	9400      	str	r4, [sp, #0]
c0de0574:	f000 ff92 	bl	c0de149c <swap_check_validity>
c0de0578:	b110      	cbz	r0, c0de0580 <handler_sign_tx+0x130>
c0de057a:	2001      	movs	r0, #1
c0de057c:	f001 f856 	bl	c0de162c <validate_transaction>
c0de0580:	2000      	movs	r0, #0
c0de0582:	e7e4      	b.n	c0de054e <handler_sign_tx+0xfe>
c0de0584:	eb09 0006 	add.w	r0, r9, r6
c0de0588:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de058c:	4909      	ldr	r1, [pc, #36]	@ (c0de05b4 <handler_sign_tx+0x164>)
c0de058e:	4479      	add	r1, pc
c0de0590:	f00a fe0c 	bl	c0deb1ac <strcmp>
c0de0594:	b110      	cbz	r0, c0de059c <handler_sign_tx+0x14c>
c0de0596:	f001 faa0 	bl	c0de1ada <ui_display_transaction>
c0de059a:	e7d8      	b.n	c0de054e <handler_sign_tx+0xfe>
c0de059c:	f001 fa9a 	bl	c0de1ad4 <ui_display_blind_signed_transaction>
c0de05a0:	e7d5      	b.n	c0de054e <handler_sign_tx+0xfe>
c0de05a2:	20ff      	movs	r0, #255	@ 0xff
c0de05a4:	f00a fbcc 	bl	c0dead40 <os_sched_exit>
c0de05a8:	00000000 	.word	0x00000000
c0de05ac:	000018d4 	.word	0x000018d4
c0de05b0:	000018d5 	.word	0x000018d5
c0de05b4:	0000ae8f 	.word	0x0000ae8f

c0de05b8 <io_send_sw>:
c0de05b8:	4602      	mov	r2, r0
c0de05ba:	2000      	movs	r0, #0
c0de05bc:	2100      	movs	r1, #0
c0de05be:	f008 b977 	b.w	c0de88b0 <io_send_response_buffers>

c0de05c2 <handler_cmd_blake2b512>:
c0de05c2:	b510      	push	{r4, lr}
c0de05c4:	b0d0      	sub	sp, #320	@ 0x140
c0de05c6:	4604      	mov	r4, r0
c0de05c8:	6840      	ldr	r0, [r0, #4]
c0de05ca:	2820      	cmp	r0, #32
c0de05cc:	d10b      	bne.n	c0de05e6 <handler_cmd_blake2b512+0x24>
c0de05ce:	6820      	ldr	r0, [r4, #0]
c0de05d0:	a940      	add	r1, sp, #256	@ 0x100
c0de05d2:	2220      	movs	r2, #32
c0de05d4:	f001 fa84 	bl	c0de1ae0 <zkn_prv_hash>
c0de05d8:	b988      	cbnz	r0, c0de05fe <handler_cmd_blake2b512+0x3c>
c0de05da:	a840      	add	r0, sp, #256	@ 0x100
c0de05dc:	2140      	movs	r1, #64	@ 0x40
c0de05de:	f000 f817 	bl	c0de0610 <io_send_response_pointer>
c0de05e2:	2000      	movs	r0, #0
c0de05e4:	e00d      	b.n	c0de0602 <handler_cmd_blake2b512+0x40>
c0de05e6:	4668      	mov	r0, sp
c0de05e8:	2109      	movs	r1, #9
c0de05ea:	2240      	movs	r2, #64	@ 0x40
c0de05ec:	f009 fb38 	bl	c0de9c60 <cx_hash_init_ex>
c0de05f0:	b928      	cbnz	r0, c0de05fe <handler_cmd_blake2b512+0x3c>
c0de05f2:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de05f6:	4668      	mov	r0, sp
c0de05f8:	f009 fb37 	bl	c0de9c6a <cx_hash_update>
c0de05fc:	b118      	cbz	r0, c0de0606 <handler_cmd_blake2b512+0x44>
c0de05fe:	f000 fe19 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de0602:	b050      	add	sp, #320	@ 0x140
c0de0604:	bd10      	pop	{r4, pc}
c0de0606:	4668      	mov	r0, sp
c0de0608:	a940      	add	r1, sp, #256	@ 0x100
c0de060a:	f009 fb24 	bl	c0de9c56 <cx_hash_final>
c0de060e:	e7e3      	b.n	c0de05d8 <handler_cmd_blake2b512+0x16>

c0de0610 <io_send_response_pointer>:
c0de0610:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0612:	2200      	movs	r2, #0
c0de0614:	ab01      	add	r3, sp, #4
c0de0616:	c307      	stmia	r3!, {r0, r1, r2}
c0de0618:	a801      	add	r0, sp, #4
c0de061a:	2101      	movs	r1, #1
c0de061c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0620:	f008 f946 	bl	c0de88b0 <io_send_response_buffers>
c0de0624:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de0626 <io_send_sw>:
c0de0626:	4602      	mov	r2, r0
c0de0628:	2000      	movs	r0, #0
c0de062a:	2100      	movs	r1, #0
c0de062c:	f008 b940 	b.w	c0de88b0 <io_send_response_buffers>

c0de0630 <handler_cmd_keccakH>:
c0de0630:	b510      	push	{r4, lr}
c0de0632:	b0f2      	sub	sp, #456	@ 0x1c8
c0de0634:	4604      	mov	r4, r0
c0de0636:	4668      	mov	r0, sp
c0de0638:	2106      	movs	r1, #6
c0de063a:	2220      	movs	r2, #32
c0de063c:	f009 fb10 	bl	c0de9c60 <cx_hash_init_ex>
c0de0640:	b950      	cbnz	r0, c0de0658 <handler_cmd_keccakH+0x28>
c0de0642:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0646:	4668      	mov	r0, sp
c0de0648:	f009 fb0f 	bl	c0de9c6a <cx_hash_update>
c0de064c:	b920      	cbnz	r0, c0de0658 <handler_cmd_keccakH+0x28>
c0de064e:	4668      	mov	r0, sp
c0de0650:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de0652:	f009 fb00 	bl	c0de9c56 <cx_hash_final>
c0de0656:	b118      	cbz	r0, c0de0660 <handler_cmd_keccakH+0x30>
c0de0658:	f000 fdec 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de065c:	b072      	add	sp, #456	@ 0x1c8
c0de065e:	bd10      	pop	{r4, pc}
c0de0660:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de0662:	f000 fe01 	bl	c0de1268 <OUTLINED_FUNCTION_8>
c0de0666:	2000      	movs	r0, #0
c0de0668:	e7f8      	b.n	c0de065c <handler_cmd_keccakH+0x2c>
	...

c0de066c <handler_cmd_bolos_stretch>:
c0de066c:	b510      	push	{r4, lr}
c0de066e:	b0a4      	sub	sp, #144	@ 0x90
c0de0670:	f000 fddc 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de0674:	bba0      	cbnz	r0, c0de06e0 <handler_cmd_bolos_stretch+0x74>
c0de0676:	ac14      	add	r4, sp, #80	@ 0x50
c0de0678:	491e      	ldr	r1, [pc, #120]	@ (c0de06f4 <handler_cmd_bolos_stretch+0x88>)
c0de067a:	2220      	movs	r2, #32
c0de067c:	4620      	mov	r0, r4
c0de067e:	4479      	add	r1, pc
c0de0680:	f00a fd47 	bl	c0deb112 <__aeabi_memcpy>
c0de0684:	a80c      	add	r0, sp, #48	@ 0x30
c0de0686:	491c      	ldr	r1, [pc, #112]	@ (c0de06f8 <handler_cmd_bolos_stretch+0x8c>)
c0de0688:	2220      	movs	r2, #32
c0de068a:	4479      	add	r1, pc
c0de068c:	f00a fd41 	bl	c0deb112 <__aeabi_memcpy>
c0de0690:	a804      	add	r0, sp, #16
c0de0692:	491a      	ldr	r1, [pc, #104]	@ (c0de06fc <handler_cmd_bolos_stretch+0x90>)
c0de0694:	2220      	movs	r2, #32
c0de0696:	4479      	add	r1, pc
c0de0698:	f00a fd3b 	bl	c0deb112 <__aeabi_memcpy>
c0de069c:	a803      	add	r0, sp, #12
c0de069e:	2120      	movs	r1, #32
c0de06a0:	4622      	mov	r2, r4
c0de06a2:	f000 fddb 	bl	c0de125c <OUTLINED_FUNCTION_6>
c0de06a6:	b9d8      	cbnz	r0, c0de06e0 <handler_cmd_bolos_stretch+0x74>
c0de06a8:	a802      	add	r0, sp, #8
c0de06aa:	aa0c      	add	r2, sp, #48	@ 0x30
c0de06ac:	2120      	movs	r1, #32
c0de06ae:	f000 fdd5 	bl	c0de125c <OUTLINED_FUNCTION_6>
c0de06b2:	b9a8      	cbnz	r0, c0de06e0 <handler_cmd_bolos_stretch+0x74>
c0de06b4:	a801      	add	r0, sp, #4
c0de06b6:	aa04      	add	r2, sp, #16
c0de06b8:	2120      	movs	r1, #32
c0de06ba:	f000 fdcf 	bl	c0de125c <OUTLINED_FUNCTION_6>
c0de06be:	b978      	cbnz	r0, c0de06e0 <handler_cmd_bolos_stretch+0x74>
c0de06c0:	4668      	mov	r0, sp
c0de06c2:	f000 fdbd 	bl	c0de1240 <OUTLINED_FUNCTION_3>
c0de06c6:	b958      	cbnz	r0, c0de06e0 <handler_cmd_bolos_stretch+0x74>
c0de06c8:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de06cc:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de06d0:	f00a fa36 	bl	c0deab40 <cx_bn_mod_add>
c0de06d4:	b920      	cbnz	r0, c0de06e0 <handler_cmd_bolos_stretch+0x74>
c0de06d6:	9800      	ldr	r0, [sp, #0]
c0de06d8:	a91c      	add	r1, sp, #112	@ 0x70
c0de06da:	f000 fdae 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de06de:	b118      	cbz	r0, c0de06e8 <handler_cmd_bolos_stretch+0x7c>
c0de06e0:	f000 fda8 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de06e4:	b024      	add	sp, #144	@ 0x90
c0de06e6:	bd10      	pop	{r4, pc}
c0de06e8:	a81c      	add	r0, sp, #112	@ 0x70
c0de06ea:	f000 fdbd 	bl	c0de1268 <OUTLINED_FUNCTION_8>
c0de06ee:	2000      	movs	r0, #0
c0de06f0:	e7f8      	b.n	c0de06e4 <handler_cmd_bolos_stretch+0x78>
c0de06f2:	bf00      	nop
c0de06f4:	0000b1be 	.word	0x0000b1be
c0de06f8:	0000b132 	.word	0x0000b132
c0de06fc:	0000b266 	.word	0x0000b266

c0de0700 <handler_cmd_Poseidon>:
c0de0700:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0704:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de0708:	4604      	mov	r4, r0
c0de070a:	a860      	add	r0, sp, #384	@ 0x180
c0de070c:	493d      	ldr	r1, [pc, #244]	@ (c0de0804 <handler_cmd_Poseidon+0x104>)
c0de070e:	22a0      	movs	r2, #160	@ 0xa0
c0de0710:	4479      	add	r1, pc
c0de0712:	f00a fcfe 	bl	c0deb112 <__aeabi_memcpy>
c0de0716:	f000 fd89 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de071a:	bb68      	cbnz	r0, c0de0778 <handler_cmd_Poseidon+0x78>
c0de071c:	2000      	movs	r0, #0
c0de071e:	a948      	add	r1, sp, #288	@ 0x120
c0de0720:	22ff      	movs	r2, #255	@ 0xff
c0de0722:	2860      	cmp	r0, #96	@ 0x60
c0de0724:	d002      	beq.n	c0de072c <handler_cmd_Poseidon+0x2c>
c0de0726:	540a      	strb	r2, [r1, r0]
c0de0728:	3001      	adds	r0, #1
c0de072a:	e7fa      	b.n	c0de0722 <handler_cmd_Poseidon+0x22>
c0de072c:	4936      	ldr	r1, [pc, #216]	@ (c0de0808 <handler_cmd_Poseidon+0x108>)
c0de072e:	466d      	mov	r5, sp
c0de0730:	2220      	movs	r2, #32
c0de0732:	4628      	mov	r0, r5
c0de0734:	4479      	add	r1, pc
c0de0736:	f00a fcec 	bl	c0deb112 <__aeabi_memcpy>
c0de073a:	a809      	add	r0, sp, #36	@ 0x24
c0de073c:	2120      	movs	r1, #32
c0de073e:	462a      	mov	r2, r5
c0de0740:	f000 fd8c 	bl	c0de125c <OUTLINED_FUNCTION_6>
c0de0744:	b9c0      	cbnz	r0, c0de0778 <handler_cmd_Poseidon+0x78>
c0de0746:	a808      	add	r0, sp, #32
c0de0748:	466a      	mov	r2, sp
c0de074a:	2120      	movs	r1, #32
c0de074c:	f000 fd86 	bl	c0de125c <OUTLINED_FUNCTION_6>
c0de0750:	b990      	cbnz	r0, c0de0778 <handler_cmd_Poseidon+0x78>
c0de0752:	a80a      	add	r0, sp, #40	@ 0x28
c0de0754:	2120      	movs	r1, #32
c0de0756:	f00a fa39 	bl	c0deabcc <cx_mont_alloc>
c0de075a:	b968      	cbnz	r0, c0de0778 <handler_cmd_Poseidon+0x78>
c0de075c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de075e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0760:	f00a fa3e 	bl	c0deabe0 <cx_mont_init>
c0de0764:	b940      	cbnz	r0, c0de0778 <handler_cmd_Poseidon+0x78>
c0de0766:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de076a:	ab0a      	add	r3, sp, #40	@ 0x28
c0de076c:	2105      	movs	r1, #5
c0de076e:	2205      	movs	r2, #5
c0de0770:	4640      	mov	r0, r8
c0de0772:	f002 fb4d 	bl	c0de2e10 <Poseidon_alloc_init>
c0de0776:	b128      	cbz	r0, c0de0784 <handler_cmd_Poseidon+0x84>
c0de0778:	f000 fd5c 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de077c:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de0780:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0784:	2700      	movs	r7, #0
c0de0786:	ae60      	add	r6, sp, #384	@ 0x180
c0de0788:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de078a:	4287      	cmp	r7, r0
c0de078c:	d212      	bcs.n	c0de07b4 <handler_cmd_Poseidon+0xb4>
c0de078e:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de0792:	4631      	mov	r1, r6
c0de0794:	2220      	movs	r2, #32
c0de0796:	69e8      	ldr	r0, [r5, #28]
c0de0798:	f00a f982 	bl	c0deaaa0 <cx_bn_init>
c0de079c:	2800      	cmp	r0, #0
c0de079e:	d1eb      	bne.n	c0de0778 <handler_cmd_Poseidon+0x78>
c0de07a0:	69e8      	ldr	r0, [r5, #28]
c0de07a2:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de07a4:	4601      	mov	r1, r0
c0de07a6:	f00a fa25 	bl	c0deabf4 <cx_mont_to_montgomery>
c0de07aa:	3701      	adds	r7, #1
c0de07ac:	3620      	adds	r6, #32
c0de07ae:	2800      	cmp	r0, #0
c0de07b0:	d0ea      	beq.n	c0de0788 <handler_cmd_Poseidon+0x88>
c0de07b2:	e7e1      	b.n	c0de0778 <handler_cmd_Poseidon+0x78>
c0de07b4:	aa08      	add	r2, sp, #32
c0de07b6:	4640      	mov	r0, r8
c0de07b8:	2100      	movs	r1, #0
c0de07ba:	2301      	movs	r3, #1
c0de07bc:	f002 fb8e 	bl	c0de2edc <Poseidon>
c0de07c0:	6820      	ldr	r0, [r4, #0]
c0de07c2:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de07c4:	7800      	ldrb	r0, [r0, #0]
c0de07c6:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de07ca:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de07ce:	4601      	mov	r1, r0
c0de07d0:	f00a fa1c 	bl	c0deac0c <cx_mont_from_montgomery>
c0de07d4:	2800      	cmp	r0, #0
c0de07d6:	d1cf      	bne.n	c0de0778 <handler_cmd_Poseidon+0x78>
c0de07d8:	6820      	ldr	r0, [r4, #0]
c0de07da:	a948      	add	r1, sp, #288	@ 0x120
c0de07dc:	f000 fd2d 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de07e0:	2800      	cmp	r0, #0
c0de07e2:	d1c9      	bne.n	c0de0778 <handler_cmd_Poseidon+0x78>
c0de07e4:	a848      	add	r0, sp, #288	@ 0x120
c0de07e6:	2160      	movs	r1, #96	@ 0x60
c0de07e8:	f7ff ff12 	bl	c0de0610 <io_send_response_pointer>
c0de07ec:	a808      	add	r0, sp, #32
c0de07ee:	f00a f943 	bl	c0deaa78 <cx_bn_destroy>
c0de07f2:	2800      	cmp	r0, #0
c0de07f4:	d1c0      	bne.n	c0de0778 <handler_cmd_Poseidon+0x78>
c0de07f6:	f00a f921 	bl	c0deaa3c <cx_bn_unlock>
c0de07fa:	2800      	cmp	r0, #0
c0de07fc:	d1bc      	bne.n	c0de0778 <handler_cmd_Poseidon+0x78>
c0de07fe:	2000      	movs	r0, #0
c0de0800:	e7bc      	b.n	c0de077c <handler_cmd_Poseidon+0x7c>
c0de0802:	bf00      	nop
c0de0804:	0000b2ac 	.word	0x0000b2ac
c0de0808:	0000b228 	.word	0x0000b228

c0de080c <handler_cmd_Poseidon_ithRC>:
c0de080c:	b570      	push	{r4, r5, r6, lr}
c0de080e:	b0d0      	sub	sp, #320	@ 0x140
c0de0810:	4604      	mov	r4, r0
c0de0812:	f000 fd0b 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de0816:	bba0      	cbnz	r0, c0de0882 <handler_cmd_Poseidon_ithRC+0x76>
c0de0818:	a848      	add	r0, sp, #288	@ 0x120
c0de081a:	491d      	ldr	r1, [pc, #116]	@ (c0de0890 <handler_cmd_Poseidon_ithRC+0x84>)
c0de081c:	2220      	movs	r2, #32
c0de081e:	4479      	add	r1, pc
c0de0820:	f00a fc77 	bl	c0deb112 <__aeabi_memcpy>
c0de0824:	ad01      	add	r5, sp, #4
c0de0826:	491b      	ldr	r1, [pc, #108]	@ (c0de0894 <handler_cmd_Poseidon_ithRC+0x88>)
c0de0828:	2220      	movs	r2, #32
c0de082a:	4628      	mov	r0, r5
c0de082c:	4479      	add	r1, pc
c0de082e:	f00a fc70 	bl	c0deb112 <__aeabi_memcpy>
c0de0832:	a809      	add	r0, sp, #36	@ 0x24
c0de0834:	2120      	movs	r1, #32
c0de0836:	462a      	mov	r2, r5
c0de0838:	f000 fd10 	bl	c0de125c <OUTLINED_FUNCTION_6>
c0de083c:	bb08      	cbnz	r0, c0de0882 <handler_cmd_Poseidon_ithRC+0x76>
c0de083e:	a80a      	add	r0, sp, #40	@ 0x28
c0de0840:	2120      	movs	r1, #32
c0de0842:	f00a f9c3 	bl	c0deabcc <cx_mont_alloc>
c0de0846:	b9e0      	cbnz	r0, c0de0882 <handler_cmd_Poseidon_ithRC+0x76>
c0de0848:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de084a:	a80a      	add	r0, sp, #40	@ 0x28
c0de084c:	f00a f9c8 	bl	c0deabe0 <cx_mont_init>
c0de0850:	b9b8      	cbnz	r0, c0de0882 <handler_cmd_Poseidon_ithRC+0x76>
c0de0852:	a80c      	add	r0, sp, #48	@ 0x30
c0de0854:	ab0a      	add	r3, sp, #40	@ 0x28
c0de0856:	2105      	movs	r1, #5
c0de0858:	2205      	movs	r2, #5
c0de085a:	f002 fad9 	bl	c0de2e10 <Poseidon_alloc_init>
c0de085e:	b980      	cbnz	r0, c0de0882 <handler_cmd_Poseidon_ithRC+0x76>
c0de0860:	6820      	ldr	r0, [r4, #0]
c0de0862:	7806      	ldrb	r6, [r0, #0]
c0de0864:	ac0c      	add	r4, sp, #48	@ 0x30
c0de0866:	ad48      	add	r5, sp, #288	@ 0x120
c0de0868:	b12e      	cbz	r6, c0de0876 <handler_cmd_Poseidon_ithRC+0x6a>
c0de086a:	4620      	mov	r0, r4
c0de086c:	4629      	mov	r1, r5
c0de086e:	f002 facb 	bl	c0de2e08 <Poseidon_getNext_RC>
c0de0872:	3e01      	subs	r6, #1
c0de0874:	e7f8      	b.n	c0de0868 <handler_cmd_Poseidon_ithRC+0x5c>
c0de0876:	a848      	add	r0, sp, #288	@ 0x120
c0de0878:	f000 fcf6 	bl	c0de1268 <OUTLINED_FUNCTION_8>
c0de087c:	f00a f8de 	bl	c0deaa3c <cx_bn_unlock>
c0de0880:	b118      	cbz	r0, c0de088a <handler_cmd_Poseidon_ithRC+0x7e>
c0de0882:	f000 fcd7 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de0886:	b050      	add	sp, #320	@ 0x140
c0de0888:	bd70      	pop	{r4, r5, r6, pc}
c0de088a:	2000      	movs	r0, #0
c0de088c:	e7fb      	b.n	c0de0886 <handler_cmd_Poseidon_ithRC+0x7a>
c0de088e:	bf00      	nop
c0de0890:	0000af7e 	.word	0x0000af7e
c0de0894:	0000b130 	.word	0x0000b130

c0de0898 <handler_cmd_tEddsaPoseidon_Kpub>:
c0de0898:	b5b0      	push	{r4, r5, r7, lr}
c0de089a:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de089e:	6801      	ldr	r1, [r0, #0]
c0de08a0:	2200      	movs	r2, #0
c0de08a2:	23ff      	movs	r3, #255	@ 0xff
c0de08a4:	780d      	ldrb	r5, [r1, #0]
c0de08a6:	ac5a      	add	r4, sp, #360	@ 0x168
c0de08a8:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de08ac:	d002      	beq.n	c0de08b4 <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de08ae:	54a3      	strb	r3, [r4, r2]
c0de08b0:	3201      	adds	r2, #1
c0de08b2:	e7f9      	b.n	c0de08a8 <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de08b4:	6840      	ldr	r0, [r0, #4]
c0de08b6:	3101      	adds	r1, #1
c0de08b8:	aa1a      	add	r2, sp, #104	@ 0x68
c0de08ba:	3801      	subs	r0, #1
c0de08bc:	b128      	cbz	r0, c0de08ca <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de08be:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de08c2:	3801      	subs	r0, #1
c0de08c4:	f802 3b01 	strb.w	r3, [r2], #1
c0de08c8:	e7f8      	b.n	c0de08bc <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de08ca:	f000 fcaf 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de08ce:	b9f0      	cbnz	r0, c0de090e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de08d0:	a804      	add	r0, sp, #16
c0de08d2:	4629      	mov	r1, r5
c0de08d4:	f001 ff00 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de08d8:	b9c8      	cbnz	r0, c0de090e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de08da:	a804      	add	r0, sp, #16
c0de08dc:	a901      	add	r1, sp, #4
c0de08de:	f001 fd7b 	bl	c0de23d8 <tEdwards_alloc>
c0de08e2:	b9a0      	cbnz	r0, c0de090e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de08e4:	a804      	add	r0, sp, #16
c0de08e6:	a91a      	add	r1, sp, #104	@ 0x68
c0de08e8:	aa01      	add	r2, sp, #4
c0de08ea:	f001 f92f 	bl	c0de1b4c <zkn_prv2pub>
c0de08ee:	b970      	cbnz	r0, c0de090e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de08f0:	a804      	add	r0, sp, #16
c0de08f2:	f104 0320 	add.w	r3, r4, #32
c0de08f6:	a901      	add	r1, sp, #4
c0de08f8:	f000 fcb3 	bl	c0de1262 <OUTLINED_FUNCTION_7>
c0de08fc:	b938      	cbnz	r0, c0de090e <handler_cmd_tEddsaPoseidon_Kpub+0x76>
c0de08fe:	9804      	ldr	r0, [sp, #16]
c0de0900:	0041      	lsls	r1, r0, #1
c0de0902:	a85a      	add	r0, sp, #360	@ 0x168
c0de0904:	f7ff fe84 	bl	c0de0610 <io_send_response_pointer>
c0de0908:	f00a f898 	bl	c0deaa3c <cx_bn_unlock>
c0de090c:	b120      	cbz	r0, c0de0918 <handler_cmd_tEddsaPoseidon_Kpub+0x80>
c0de090e:	f000 fc91 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de0912:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de0916:	bdb0      	pop	{r4, r5, r7, pc}
c0de0918:	2000      	movs	r0, #0
c0de091a:	e7fa      	b.n	c0de0912 <handler_cmd_tEddsaPoseidon_Kpub+0x7a>

c0de091c <handler_cmd_tEddsaPoseidon_Sign>:
c0de091c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de091e:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de0922:	4606      	mov	r6, r0
c0de0924:	6800      	ldr	r0, [r0, #0]
c0de0926:	2100      	movs	r1, #0
c0de0928:	22ff      	movs	r2, #255	@ 0xff
c0de092a:	7805      	ldrb	r5, [r0, #0]
c0de092c:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de092e:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de0932:	d002      	beq.n	c0de093a <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de0934:	5462      	strb	r2, [r4, r1]
c0de0936:	3101      	adds	r1, #1
c0de0938:	e7f9      	b.n	c0de092e <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de093a:	6871      	ldr	r1, [r6, #4]
c0de093c:	3001      	adds	r0, #1
c0de093e:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0940:	3901      	subs	r1, #1
c0de0942:	b129      	cbz	r1, c0de0950 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de0944:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de0948:	3901      	subs	r1, #1
c0de094a:	f802 3b01 	strb.w	r3, [r2], #1
c0de094e:	e7f8      	b.n	c0de0942 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de0950:	f000 fc6c 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de0954:	bba8      	cbnz	r0, c0de09c2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0956:	6830      	ldr	r0, [r6, #0]
c0de0958:	aa0a      	add	r2, sp, #40	@ 0x28
c0de095a:	2100      	movs	r1, #0
c0de095c:	ab02      	add	r3, sp, #8
c0de095e:	2920      	cmp	r1, #32
c0de0960:	d007      	beq.n	c0de0972 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de0962:	1846      	adds	r6, r0, r1
c0de0964:	7877      	ldrb	r7, [r6, #1]
c0de0966:	5457      	strb	r7, [r2, r1]
c0de0968:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de096c:	545e      	strb	r6, [r3, r1]
c0de096e:	3101      	adds	r1, #1
c0de0970:	e7f5      	b.n	c0de095e <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de0972:	a815      	add	r0, sp, #84	@ 0x54
c0de0974:	4629      	mov	r1, r5
c0de0976:	f001 feaf 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de097a:	bb10      	cbnz	r0, c0de09c2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de097c:	a815      	add	r0, sp, #84	@ 0x54
c0de097e:	a912      	add	r1, sp, #72	@ 0x48
c0de0980:	f001 fd2a 	bl	c0de23d8 <tEdwards_alloc>
c0de0984:	b9e8      	cbnz	r0, c0de09c2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0986:	a815      	add	r0, sp, #84	@ 0x54
c0de0988:	a92b      	add	r1, sp, #172	@ 0xac
c0de098a:	aa12      	add	r2, sp, #72	@ 0x48
c0de098c:	f001 f8de 	bl	c0de1b4c <zkn_prv2pub>
c0de0990:	b9b8      	cbnz	r0, c0de09c2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de0992:	a815      	add	r0, sp, #84	@ 0x54
c0de0994:	f104 0320 	add.w	r3, r4, #32
c0de0998:	a912      	add	r1, sp, #72	@ 0x48
c0de099a:	f000 fc62 	bl	c0de1262 <OUTLINED_FUNCTION_7>
c0de099e:	b980      	cbnz	r0, c0de09c2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de09a0:	2020      	movs	r0, #32
c0de09a2:	e9cd 0400 	strd	r0, r4, [sp]
c0de09a6:	a815      	add	r0, sp, #84	@ 0x54
c0de09a8:	a90a      	add	r1, sp, #40	@ 0x28
c0de09aa:	aa12      	add	r2, sp, #72	@ 0x48
c0de09ac:	ab02      	add	r3, sp, #8
c0de09ae:	f001 f8f5 	bl	c0de1b9c <EddsaPoseidon_Sign_final>
c0de09b2:	b930      	cbnz	r0, c0de09c2 <handler_cmd_tEddsaPoseidon_Sign+0xa6>
c0de09b4:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de09b6:	2160      	movs	r1, #96	@ 0x60
c0de09b8:	f7ff fe2a 	bl	c0de0610 <io_send_response_pointer>
c0de09bc:	f00a f83e 	bl	c0deaa3c <cx_bn_unlock>
c0de09c0:	b120      	cbz	r0, c0de09cc <handler_cmd_tEddsaPoseidon_Sign+0xb0>
c0de09c2:	f000 fc37 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de09c6:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de09ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de09cc:	2000      	movs	r0, #0
c0de09ce:	e7fa      	b.n	c0de09c6 <handler_cmd_tEddsaPoseidon_Sign+0xaa>

c0de09d0 <handler_cmd_tEddsaPoseidon>:
c0de09d0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de09d4:	b0eb      	sub	sp, #428	@ 0x1ac
c0de09d6:	4605      	mov	r5, r0
c0de09d8:	6800      	ldr	r0, [r0, #0]
c0de09da:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de09de:	21ff      	movs	r1, #255	@ 0xff
c0de09e0:	7806      	ldrb	r6, [r0, #0]
c0de09e2:	2000      	movs	r0, #0
c0de09e4:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de09e8:	d002      	beq.n	c0de09f0 <handler_cmd_tEddsaPoseidon+0x20>
c0de09ea:	5421      	strb	r1, [r4, r0]
c0de09ec:	3001      	adds	r0, #1
c0de09ee:	e7f9      	b.n	c0de09e4 <handler_cmd_tEddsaPoseidon+0x14>
c0de09f0:	f000 fc1c 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de09f4:	2800      	cmp	r0, #0
c0de09f6:	d154      	bne.n	c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de09f8:	af14      	add	r7, sp, #80	@ 0x50
c0de09fa:	4631      	mov	r1, r6
c0de09fc:	4638      	mov	r0, r7
c0de09fe:	f001 fe6b 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de0a02:	2800      	cmp	r0, #0
c0de0a04:	d14d      	bne.n	c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a06:	f107 060c 	add.w	r6, r7, #12
c0de0a0a:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a0e:	4638      	mov	r0, r7
c0de0a10:	4631      	mov	r1, r6
c0de0a12:	f001 fe0a 	bl	c0de262a <tEdwards_IsOnCurve>
c0de0a16:	2800      	cmp	r0, #0
c0de0a18:	d143      	bne.n	c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a1a:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0a1e:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0a22:	2901      	cmp	r1, #1
c0de0a24:	d13d      	bne.n	c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a26:	4922      	ldr	r1, [pc, #136]	@ (c0de0ab0 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0a28:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0a2c:	2220      	movs	r2, #32
c0de0a2e:	4650      	mov	r0, sl
c0de0a30:	4479      	add	r1, pc
c0de0a32:	f00a fb6e 	bl	c0deb112 <__aeabi_memcpy>
c0de0a36:	af01      	add	r7, sp, #4
c0de0a38:	491e      	ldr	r1, [pc, #120]	@ (c0de0ab4 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0a3a:	2220      	movs	r2, #32
c0de0a3c:	4638      	mov	r0, r7
c0de0a3e:	4479      	add	r1, pc
c0de0a40:	f00a fb67 	bl	c0deb112 <__aeabi_memcpy>
c0de0a44:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0a48:	a814      	add	r0, sp, #80	@ 0x50
c0de0a4a:	4651      	mov	r1, sl
c0de0a4c:	463a      	mov	r2, r7
c0de0a4e:	4643      	mov	r3, r8
c0de0a50:	f002 f833 	bl	c0de2aba <tEdwards_alloc_init>
c0de0a54:	bb28      	cbnz	r0, c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a56:	a814      	add	r0, sp, #80	@ 0x50
c0de0a58:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a5c:	4631      	mov	r1, r6
c0de0a5e:	f001 fde4 	bl	c0de262a <tEdwards_IsOnCurve>
c0de0a62:	b9f0      	cbnz	r0, c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a64:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0a68:	2801      	cmp	r0, #1
c0de0a6a:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0a6e:	d118      	bne.n	c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a70:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0a74:	f8cd 8000 	str.w	r8, [sp]
c0de0a78:	1c42      	adds	r2, r0, #1
c0de0a7a:	1e4b      	subs	r3, r1, #1
c0de0a7c:	a814      	add	r0, sp, #80	@ 0x50
c0de0a7e:	4631      	mov	r1, r6
c0de0a80:	f002 f8a0 	bl	c0de2bc4 <tEdwards_scalarMul>
c0de0a84:	b968      	cbnz	r0, c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a86:	a814      	add	r0, sp, #80	@ 0x50
c0de0a88:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0a8c:	a911      	add	r1, sp, #68	@ 0x44
c0de0a8e:	f000 fbe8 	bl	c0de1262 <OUTLINED_FUNCTION_7>
c0de0a92:	b930      	cbnz	r0, c0de0aa2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a94:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0a98:	f000 fbdc 	bl	c0de1254 <OUTLINED_FUNCTION_5>
c0de0a9c:	f009 ffce 	bl	c0deaa3c <cx_bn_unlock>
c0de0aa0:	b120      	cbz	r0, c0de0aac <handler_cmd_tEddsaPoseidon+0xdc>
c0de0aa2:	f000 fbc7 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de0aa6:	b06b      	add	sp, #428	@ 0x1ac
c0de0aa8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0aac:	2000      	movs	r0, #0
c0de0aae:	e7fa      	b.n	c0de0aa6 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0ab0:	0000af4c 	.word	0x0000af4c
c0de0ab4:	0000af5e 	.word	0x0000af5e

c0de0ab8 <handler_cmd_tEdwards>:
c0de0ab8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0aba:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0abc:	4605      	mov	r5, r0
c0de0abe:	6840      	ldr	r0, [r0, #4]
c0de0ac0:	2841      	cmp	r0, #65	@ 0x41
c0de0ac2:	d801      	bhi.n	c0de0ac8 <handler_cmd_tEdwards+0x10>
c0de0ac4:	2802      	cmp	r0, #2
c0de0ac6:	d202      	bcs.n	c0de0ace <handler_cmd_tEdwards+0x16>
c0de0ac8:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0acc:	e015      	b.n	c0de0afa <handler_cmd_tEdwards+0x42>
c0de0ace:	6828      	ldr	r0, [r5, #0]
c0de0ad0:	21ff      	movs	r1, #255	@ 0xff
c0de0ad2:	7806      	ldrb	r6, [r0, #0]
c0de0ad4:	2000      	movs	r0, #0
c0de0ad6:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0ad8:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0adc:	d002      	beq.n	c0de0ae4 <handler_cmd_tEdwards+0x2c>
c0de0ade:	5421      	strb	r1, [r4, r0]
c0de0ae0:	3001      	adds	r0, #1
c0de0ae2:	e7f9      	b.n	c0de0ad8 <handler_cmd_tEdwards+0x20>
c0de0ae4:	f000 fba2 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de0ae8:	b920      	cbnz	r0, c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0aea:	a819      	add	r0, sp, #100	@ 0x64
c0de0aec:	4631      	mov	r1, r6
c0de0aee:	f001 fdf3 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de0af2:	b120      	cbz	r0, c0de0afe <handler_cmd_tEdwards+0x46>
c0de0af4:	b280      	uxth	r0, r0
c0de0af6:	f7ff fd96 	bl	c0de0626 <io_send_sw>
c0de0afa:	b06f      	add	sp, #444	@ 0x1bc
c0de0afc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0afe:	2e02      	cmp	r6, #2
c0de0b00:	d00c      	beq.n	c0de0b1c <handler_cmd_tEdwards+0x64>
c0de0b02:	2e01      	cmp	r6, #1
c0de0b04:	d128      	bne.n	c0de0b58 <handler_cmd_tEdwards+0xa0>
c0de0b06:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b08:	4942      	ldr	r1, [pc, #264]	@ (c0de0c14 <handler_cmd_tEdwards+0x15c>)
c0de0b0a:	2220      	movs	r2, #32
c0de0b0c:	4630      	mov	r0, r6
c0de0b0e:	4479      	add	r1, pc
c0de0b10:	f00a faff 	bl	c0deb112 <__aeabi_memcpy>
c0de0b14:	af03      	add	r7, sp, #12
c0de0b16:	4940      	ldr	r1, [pc, #256]	@ (c0de0c18 <handler_cmd_tEdwards+0x160>)
c0de0b18:	4479      	add	r1, pc
c0de0b1a:	e009      	b.n	c0de0b30 <handler_cmd_tEdwards+0x78>
c0de0b1c:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b1e:	493f      	ldr	r1, [pc, #252]	@ (c0de0c1c <handler_cmd_tEdwards+0x164>)
c0de0b20:	2220      	movs	r2, #32
c0de0b22:	4630      	mov	r0, r6
c0de0b24:	4479      	add	r1, pc
c0de0b26:	f00a faf4 	bl	c0deb112 <__aeabi_memcpy>
c0de0b2a:	af03      	add	r7, sp, #12
c0de0b2c:	493c      	ldr	r1, [pc, #240]	@ (c0de0c20 <handler_cmd_tEdwards+0x168>)
c0de0b2e:	4479      	add	r1, pc
c0de0b30:	4638      	mov	r0, r7
c0de0b32:	2220      	movs	r2, #32
c0de0b34:	f00a faed 	bl	c0deb112 <__aeabi_memcpy>
c0de0b38:	a819      	add	r0, sp, #100	@ 0x64
c0de0b3a:	ab16      	add	r3, sp, #88	@ 0x58
c0de0b3c:	4631      	mov	r1, r6
c0de0b3e:	463a      	mov	r2, r7
c0de0b40:	f001 ffbb 	bl	c0de2aba <tEdwards_alloc_init>
c0de0b44:	2800      	cmp	r0, #0
c0de0b46:	d1d5      	bne.n	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0b48:	a819      	add	r0, sp, #100	@ 0x64
c0de0b4a:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0b4c:	aa03      	add	r2, sp, #12
c0de0b4e:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0b50:	f001 ffb3 	bl	c0de2aba <tEdwards_alloc_init>
c0de0b54:	2800      	cmp	r0, #0
c0de0b56:	d1cd      	bne.n	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0b58:	2000      	movs	r0, #0
c0de0b5a:	f10d 020b 	add.w	r2, sp, #11
c0de0b5e:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0b62:	a819      	add	r0, sp, #100	@ 0x64
c0de0b64:	a916      	add	r1, sp, #88	@ 0x58
c0de0b66:	f001 fd60 	bl	c0de262a <tEdwards_IsOnCurve>
c0de0b6a:	2800      	cmp	r0, #0
c0de0b6c:	d1c2      	bne.n	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0b6e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0b72:	2801      	cmp	r0, #1
c0de0b74:	d142      	bne.n	c0de0bfc <handler_cmd_tEdwards+0x144>
c0de0b76:	a819      	add	r0, sp, #100	@ 0x64
c0de0b78:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0b7a:	f10d 020b 	add.w	r2, sp, #11
c0de0b7e:	4631      	mov	r1, r6
c0de0b80:	f001 fd53 	bl	c0de262a <tEdwards_IsOnCurve>
c0de0b84:	2800      	cmp	r0, #0
c0de0b86:	d1b5      	bne.n	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0b88:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0b8c:	2801      	cmp	r0, #1
c0de0b8e:	d138      	bne.n	c0de0c02 <handler_cmd_tEdwards+0x14a>
c0de0b90:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0b92:	f10d 010b 	add.w	r1, sp, #11
c0de0b96:	f00a f80f 	bl	c0deabb8 <cx_bn_is_prime>
c0de0b9a:	2800      	cmp	r0, #0
c0de0b9c:	d1aa      	bne.n	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0b9e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0ba2:	2801      	cmp	r0, #1
c0de0ba4:	d130      	bne.n	c0de0c08 <handler_cmd_tEdwards+0x150>
c0de0ba6:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0ba8:	f10d 010b 	add.w	r1, sp, #11
c0de0bac:	f00a f804 	bl	c0deabb8 <cx_bn_is_prime>
c0de0bb0:	2800      	cmp	r0, #0
c0de0bb2:	d19f      	bne.n	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0bb4:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bb8:	2801      	cmp	r0, #1
c0de0bba:	d128      	bne.n	c0de0c0e <handler_cmd_tEdwards+0x156>
c0de0bbc:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0bc0:	9600      	str	r6, [sp, #0]
c0de0bc2:	1c42      	adds	r2, r0, #1
c0de0bc4:	1e4b      	subs	r3, r1, #1
c0de0bc6:	a819      	add	r0, sp, #100	@ 0x64
c0de0bc8:	a916      	add	r1, sp, #88	@ 0x58
c0de0bca:	f001 fffb 	bl	c0de2bc4 <tEdwards_scalarMul>
c0de0bce:	2800      	cmp	r0, #0
c0de0bd0:	d190      	bne.n	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0bd2:	a819      	add	r0, sp, #100	@ 0x64
c0de0bd4:	f104 0320 	add.w	r3, r4, #32
c0de0bd8:	a913      	add	r1, sp, #76	@ 0x4c
c0de0bda:	f000 fb42 	bl	c0de1262 <OUTLINED_FUNCTION_7>
c0de0bde:	2800      	cmp	r0, #0
c0de0be0:	f47f af88 	bne.w	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0be4:	f009 ff2a 	bl	c0deaa3c <cx_bn_unlock>
c0de0be8:	2800      	cmp	r0, #0
c0de0bea:	f47f af83 	bne.w	c0de0af4 <handler_cmd_tEdwards+0x3c>
c0de0bee:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0bf0:	0041      	lsls	r1, r0, #1
c0de0bf2:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0bf4:	f7ff fd0c 	bl	c0de0610 <io_send_response_pointer>
c0de0bf8:	2000      	movs	r0, #0
c0de0bfa:	e77e      	b.n	c0de0afa <handler_cmd_tEdwards+0x42>
c0de0bfc:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0c00:	e779      	b.n	c0de0af6 <handler_cmd_tEdwards+0x3e>
c0de0c02:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0c06:	e776      	b.n	c0de0af6 <handler_cmd_tEdwards+0x3e>
c0de0c08:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0c0c:	e773      	b.n	c0de0af6 <handler_cmd_tEdwards+0x3e>
c0de0c0e:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0c12:	e770      	b.n	c0de0af6 <handler_cmd_tEdwards+0x3e>
c0de0c14:	0000acce 	.word	0x0000acce
c0de0c18:	0000ad44 	.word	0x0000ad44
c0de0c1c:	0000acd8 	.word	0x0000acd8
c0de0c20:	0000ac4e 	.word	0x0000ac4e

c0de0c24 <handler_cmd_Interpolate>:
c0de0c24:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0c28:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0c2c:	4605      	mov	r5, r0
c0de0c2e:	6800      	ldr	r0, [r0, #0]
c0de0c30:	22ff      	movs	r2, #255	@ 0xff
c0de0c32:	7804      	ldrb	r4, [r0, #0]
c0de0c34:	2000      	movs	r0, #0
c0de0c36:	a944      	add	r1, sp, #272	@ 0x110
c0de0c38:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0c3c:	d002      	beq.n	c0de0c44 <handler_cmd_Interpolate+0x20>
c0de0c3e:	540a      	strb	r2, [r1, r0]
c0de0c40:	3001      	adds	r0, #1
c0de0c42:	e7f9      	b.n	c0de0c38 <handler_cmd_Interpolate+0x14>
c0de0c44:	f000 faf2 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de0c48:	bb28      	cbnz	r0, c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0c4a:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0c4e:	4621      	mov	r1, r4
c0de0c50:	4640      	mov	r0, r8
c0de0c52:	f001 fd41 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de0c56:	b9f0      	cbnz	r0, c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0c58:	a827      	add	r0, sp, #156	@ 0x9c
c0de0c5a:	f000 faf1 	bl	c0de1240 <OUTLINED_FUNCTION_3>
c0de0c5e:	b9d0      	cbnz	r0, c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0c60:	6828      	ldr	r0, [r5, #0]
c0de0c62:	2100      	movs	r1, #0
c0de0c64:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0c66:	3001      	adds	r0, #1
c0de0c68:	2960      	cmp	r1, #96	@ 0x60
c0de0c6a:	d003      	beq.n	c0de0c74 <handler_cmd_Interpolate+0x50>
c0de0c6c:	5c43      	ldrb	r3, [r0, r1]
c0de0c6e:	5453      	strb	r3, [r2, r1]
c0de0c70:	3101      	adds	r1, #1
c0de0c72:	e7f9      	b.n	c0de0c68 <handler_cmd_Interpolate+0x44>
c0de0c74:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0c76:	2100      	movs	r1, #0
c0de0c78:	af2b      	add	r7, sp, #172	@ 0xac
c0de0c7a:	1d0c      	adds	r4, r1, #4
c0de0c7c:	2c10      	cmp	r4, #16
c0de0c7e:	d010      	beq.n	c0de0ca2 <handler_cmd_Interpolate+0x7e>
c0de0c80:	1878      	adds	r0, r7, r1
c0de0c82:	2120      	movs	r1, #32
c0de0c84:	2320      	movs	r3, #32
c0de0c86:	f102 0520 	add.w	r5, r2, #32
c0de0c8a:	f009 fee9 	bl	c0deaa60 <cx_bn_alloc_init>
c0de0c8e:	2800      	cmp	r0, #0
c0de0c90:	462a      	mov	r2, r5
c0de0c92:	4621      	mov	r1, r4
c0de0c94:	d0f1      	beq.n	c0de0c7a <handler_cmd_Interpolate+0x56>
c0de0c96:	f000 facd 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de0c9a:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0c9e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0ca2:	f108 000c 	add.w	r0, r8, #12
c0de0ca6:	f04f 0a00 	mov.w	sl, #0
c0de0caa:	2601      	movs	r6, #1
c0de0cac:	f10d 0b0c 	add.w	fp, sp, #12
c0de0cb0:	9001      	str	r0, [sp, #4]
c0de0cb2:	ad44      	add	r5, sp, #272	@ 0x110
c0de0cb4:	f1ba 0f0c 	cmp.w	sl, #12
c0de0cb8:	d03b      	beq.n	c0de0d32 <handler_cmd_Interpolate+0x10e>
c0de0cba:	a828      	add	r0, sp, #160	@ 0xa0
c0de0cbc:	2120      	movs	r1, #32
c0de0cbe:	eb00 040a 	add.w	r4, r0, sl
c0de0cc2:	4620      	mov	r0, r4
c0de0cc4:	f009 fec2 	bl	c0deaa4c <cx_bn_alloc>
c0de0cc8:	2800      	cmp	r0, #0
c0de0cca:	d1e4      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0ccc:	6820      	ldr	r0, [r4, #0]
c0de0cce:	4631      	mov	r1, r6
c0de0cd0:	f009 fefc 	bl	c0deaacc <cx_bn_set_u32>
c0de0cd4:	2800      	cmp	r0, #0
c0de0cd6:	d1de      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0cd8:	4640      	mov	r0, r8
c0de0cda:	4659      	mov	r1, fp
c0de0cdc:	f001 fb7c 	bl	c0de23d8 <tEdwards_alloc>
c0de0ce0:	2800      	cmp	r0, #0
c0de0ce2:	d1d8      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0ce4:	9602      	str	r6, [sp, #8]
c0de0ce6:	eb07 060a 	add.w	r6, r7, sl
c0de0cea:	9901      	ldr	r1, [sp, #4]
c0de0cec:	4640      	mov	r0, r8
c0de0cee:	465b      	mov	r3, fp
c0de0cf0:	4632      	mov	r2, r6
c0de0cf2:	f001 ff01 	bl	c0de2af8 <tEdwards_scalarMul_bn>
c0de0cf6:	2800      	cmp	r0, #0
c0de0cf8:	d1cd      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0cfa:	6820      	ldr	r0, [r4, #0]
c0de0cfc:	4629      	mov	r1, r5
c0de0cfe:	f000 fa9c 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de0d02:	2800      	cmp	r0, #0
c0de0d04:	d1c7      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0d06:	6830      	ldr	r0, [r6, #0]
c0de0d08:	f105 0120 	add.w	r1, r5, #32
c0de0d0c:	f000 fa95 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de0d10:	2800      	cmp	r0, #0
c0de0d12:	d1c0      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0d14:	4640      	mov	r0, r8
c0de0d16:	4659      	mov	r1, fp
c0de0d18:	f001 fe8f 	bl	c0de2a3a <tEdwards_normalize>
c0de0d1c:	9e02      	ldr	r6, [sp, #8]
c0de0d1e:	3540      	adds	r5, #64	@ 0x40
c0de0d20:	f10b 0b0c 	add.w	fp, fp, #12
c0de0d24:	f10a 0a04 	add.w	sl, sl, #4
c0de0d28:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d2a:	3601      	adds	r6, #1
c0de0d2c:	2800      	cmp	r0, #0
c0de0d2e:	d0c1      	beq.n	c0de0cb4 <handler_cmd_Interpolate+0x90>
c0de0d30:	e7b1      	b.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0d32:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0d34:	2303      	movs	r3, #3
c0de0d36:	9000      	str	r0, [sp, #0]
c0de0d38:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0d3a:	a928      	add	r1, sp, #160	@ 0xa0
c0de0d3c:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0d3e:	f001 f8e6 	bl	c0de1f0e <zkn_frost_interpolate_secrets>
c0de0d42:	2800      	cmp	r0, #0
c0de0d44:	d1a7      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0d46:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0d48:	a944      	add	r1, sp, #272	@ 0x110
c0de0d4a:	2220      	movs	r2, #32
c0de0d4c:	31c0      	adds	r1, #192	@ 0xc0
c0de0d4e:	f009 fec7 	bl	c0deaae0 <cx_bn_export>
c0de0d52:	2800      	cmp	r0, #0
c0de0d54:	d19f      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0d56:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0d58:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0d5a:	ab03      	add	r3, sp, #12
c0de0d5c:	9901      	ldr	r1, [sp, #4]
c0de0d5e:	f001 fecb 	bl	c0de2af8 <tEdwards_scalarMul_bn>
c0de0d62:	2800      	cmp	r0, #0
c0de0d64:	d197      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0d66:	a844      	add	r0, sp, #272	@ 0x110
c0de0d68:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0d6c:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0d6e:	a903      	add	r1, sp, #12
c0de0d70:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0d72:	f001 fe3c 	bl	c0de29ee <tEdwards_export>
c0de0d76:	2800      	cmp	r0, #0
c0de0d78:	d18d      	bne.n	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0d7a:	a844      	add	r0, sp, #272	@ 0x110
c0de0d7c:	f000 fa6a 	bl	c0de1254 <OUTLINED_FUNCTION_5>
c0de0d80:	f009 fe5c 	bl	c0deaa3c <cx_bn_unlock>
c0de0d84:	2800      	cmp	r0, #0
c0de0d86:	f47f af86 	bne.w	c0de0c96 <handler_cmd_Interpolate+0x72>
c0de0d8a:	2000      	movs	r0, #0
c0de0d8c:	e785      	b.n	c0de0c9a <handler_cmd_Interpolate+0x76>

c0de0d8e <handler_cmd_Split>:
c0de0d8e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0d92:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0d96:	4604      	mov	r4, r0
c0de0d98:	6800      	ldr	r0, [r0, #0]
c0de0d9a:	22ff      	movs	r2, #255	@ 0xff
c0de0d9c:	7805      	ldrb	r5, [r0, #0]
c0de0d9e:	2000      	movs	r0, #0
c0de0da0:	a948      	add	r1, sp, #288	@ 0x120
c0de0da2:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0da6:	d002      	beq.n	c0de0dae <handler_cmd_Split+0x20>
c0de0da8:	540a      	strb	r2, [r1, r0]
c0de0daa:	3001      	adds	r0, #1
c0de0dac:	e7f9      	b.n	c0de0da2 <handler_cmd_Split+0x14>
c0de0dae:	f000 fa3d 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de0db2:	bb98      	cbnz	r0, c0de0e1c <handler_cmd_Split+0x8e>
c0de0db4:	a832      	add	r0, sp, #200	@ 0xc8
c0de0db6:	4629      	mov	r1, r5
c0de0db8:	f001 fc8e 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de0dbc:	bb70      	cbnz	r0, c0de0e1c <handler_cmd_Split+0x8e>
c0de0dbe:	6820      	ldr	r0, [r4, #0]
c0de0dc0:	2200      	movs	r2, #0
c0de0dc2:	a91a      	add	r1, sp, #104	@ 0x68
c0de0dc4:	3002      	adds	r0, #2
c0de0dc6:	2a20      	cmp	r2, #32
c0de0dc8:	d003      	beq.n	c0de0dd2 <handler_cmd_Split+0x44>
c0de0dca:	5c83      	ldrb	r3, [r0, r2]
c0de0dcc:	548b      	strb	r3, [r1, r2]
c0de0dce:	3201      	adds	r2, #1
c0de0dd0:	e7f9      	b.n	c0de0dc6 <handler_cmd_Split+0x38>
c0de0dd2:	6862      	ldr	r2, [r4, #4]
c0de0dd4:	3a02      	subs	r2, #2
c0de0dd6:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0dda:	f101 0220 	add.w	r2, r1, #32
c0de0dde:	a888      	add	r0, sp, #544	@ 0x220
c0de0de0:	2101      	movs	r1, #1
c0de0de2:	f008 ff1c 	bl	c0de9c1e <cx_blake2b_512_hash_iovec>
c0de0de6:	b9c8      	cbnz	r0, c0de0e1c <handler_cmd_Split+0x8e>
c0de0de8:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0dea:	2100      	movs	r1, #0
c0de0dec:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0dee:	1d0d      	adds	r5, r1, #4
c0de0df0:	2d10      	cmp	r5, #16
c0de0df2:	d00b      	beq.n	c0de0e0c <handler_cmd_Split+0x7e>
c0de0df4:	1860      	adds	r0, r4, r1
c0de0df6:	2120      	movs	r1, #32
c0de0df8:	2320      	movs	r3, #32
c0de0dfa:	f102 0620 	add.w	r6, r2, #32
c0de0dfe:	f009 fe2f 	bl	c0deaa60 <cx_bn_alloc_init>
c0de0e02:	2800      	cmp	r0, #0
c0de0e04:	4632      	mov	r2, r6
c0de0e06:	4629      	mov	r1, r5
c0de0e08:	d0f1      	beq.n	c0de0dee <handler_cmd_Split+0x60>
c0de0e0a:	e007      	b.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0e0c:	a80a      	add	r0, sp, #40	@ 0x28
c0de0e0e:	f000 fa17 	bl	c0de1240 <OUTLINED_FUNCTION_3>
c0de0e12:	b918      	cbnz	r0, c0de0e1c <handler_cmd_Split+0x8e>
c0de0e14:	a809      	add	r0, sp, #36	@ 0x24
c0de0e16:	f000 fa13 	bl	c0de1240 <OUTLINED_FUNCTION_3>
c0de0e1a:	b128      	cbz	r0, c0de0e28 <handler_cmd_Split+0x9a>
c0de0e1c:	f000 fa0a 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de0e20:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0e24:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0e28:	f04f 0800 	mov.w	r8, #0
c0de0e2c:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0e30:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0e32:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0e36:	2400      	movs	r4, #0
c0de0e38:	f1b8 0f10 	cmp.w	r8, #16
c0de0e3c:	d04d      	beq.n	c0de0eda <handler_cmd_Split+0x14c>
c0de0e3e:	a805      	add	r0, sp, #20
c0de0e40:	2120      	movs	r1, #32
c0de0e42:	eb00 0708 	add.w	r7, r0, r8
c0de0e46:	4638      	mov	r0, r7
c0de0e48:	f009 fe00 	bl	c0deaa4c <cx_bn_alloc>
c0de0e4c:	2800      	cmp	r0, #0
c0de0e4e:	d1e5      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0e50:	a801      	add	r0, sp, #4
c0de0e52:	2120      	movs	r1, #32
c0de0e54:	eb00 0508 	add.w	r5, r0, r8
c0de0e58:	4628      	mov	r0, r5
c0de0e5a:	f009 fdf7 	bl	c0deaa4c <cx_bn_alloc>
c0de0e5e:	2800      	cmp	r0, #0
c0de0e60:	d1dc      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0e62:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0e64:	4621      	mov	r1, r4
c0de0e66:	f009 fe31 	bl	c0deaacc <cx_bn_set_u32>
c0de0e6a:	2800      	cmp	r0, #0
c0de0e6c:	d1d6      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0e6e:	6828      	ldr	r0, [r5, #0]
c0de0e70:	4621      	mov	r1, r4
c0de0e72:	f009 fe2b 	bl	c0deaacc <cx_bn_set_u32>
c0de0e76:	2800      	cmp	r0, #0
c0de0e78:	d1d0      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0e7a:	4650      	mov	r0, sl
c0de0e7c:	4631      	mov	r1, r6
c0de0e7e:	f001 faab 	bl	c0de23d8 <tEdwards_alloc>
c0de0e82:	2800      	cmp	r0, #0
c0de0e84:	d1ca      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0e86:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0e8a:	2202      	movs	r2, #2
c0de0e8c:	9000      	str	r0, [sp, #0]
c0de0e8e:	4650      	mov	r0, sl
c0de0e90:	a917      	add	r1, sp, #92	@ 0x5c
c0de0e92:	f001 f87f 	bl	c0de1f94 <zkn_evalshare>
c0de0e96:	2800      	cmp	r0, #0
c0de0e98:	d1c0      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0e9a:	6838      	ldr	r0, [r7, #0]
c0de0e9c:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0e9e:	f009 fe0b 	bl	c0deaab8 <cx_bn_copy>
c0de0ea2:	2800      	cmp	r0, #0
c0de0ea4:	d1ba      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0ea6:	4650      	mov	r0, sl
c0de0ea8:	4631      	mov	r1, r6
c0de0eaa:	f001 fdc6 	bl	c0de2a3a <tEdwards_normalize>
c0de0eae:	2800      	cmp	r0, #0
c0de0eb0:	d1b4      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0eb2:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0eb4:	4659      	mov	r1, fp
c0de0eb6:	f000 f9c0 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de0eba:	2800      	cmp	r0, #0
c0de0ebc:	d1ae      	bne.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0ebe:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0ec0:	f10b 0120 	add.w	r1, fp, #32
c0de0ec4:	f000 f9b9 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de0ec8:	360c      	adds	r6, #12
c0de0eca:	3401      	adds	r4, #1
c0de0ecc:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0ed0:	f108 0804 	add.w	r8, r8, #4
c0de0ed4:	2800      	cmp	r0, #0
c0de0ed6:	d0af      	beq.n	c0de0e38 <handler_cmd_Split+0xaa>
c0de0ed8:	e7a0      	b.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0eda:	2100      	movs	r1, #0
c0de0edc:	1d0c      	adds	r4, r1, #4
c0de0ede:	2c10      	cmp	r4, #16
c0de0ee0:	d007      	beq.n	c0de0ef2 <handler_cmd_Split+0x164>
c0de0ee2:	a817      	add	r0, sp, #92	@ 0x5c
c0de0ee4:	4408      	add	r0, r1
c0de0ee6:	f009 fdc7 	bl	c0deaa78 <cx_bn_destroy>
c0de0eea:	2800      	cmp	r0, #0
c0de0eec:	4621      	mov	r1, r4
c0de0eee:	d0f5      	beq.n	c0de0edc <handler_cmd_Split+0x14e>
c0de0ef0:	e794      	b.n	c0de0e1c <handler_cmd_Split+0x8e>
c0de0ef2:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0ef4:	2303      	movs	r3, #3
c0de0ef6:	9000      	str	r0, [sp, #0]
c0de0ef8:	a801      	add	r0, sp, #4
c0de0efa:	1d01      	adds	r1, r0, #4
c0de0efc:	a805      	add	r0, sp, #20
c0de0efe:	1d02      	adds	r2, r0, #4
c0de0f00:	a832      	add	r0, sp, #200	@ 0xc8
c0de0f02:	f001 f804 	bl	c0de1f0e <zkn_frost_interpolate_secrets>
c0de0f06:	2800      	cmp	r0, #0
c0de0f08:	f47f af88 	bne.w	c0de0e1c <handler_cmd_Split+0x8e>
c0de0f0c:	a848      	add	r0, sp, #288	@ 0x120
c0de0f0e:	f000 f9a1 	bl	c0de1254 <OUTLINED_FUNCTION_5>
c0de0f12:	f009 fd93 	bl	c0deaa3c <cx_bn_unlock>
c0de0f16:	2800      	cmp	r0, #0
c0de0f18:	f47f af80 	bne.w	c0de0e1c <handler_cmd_Split+0x8e>
c0de0f1c:	2000      	movs	r0, #0
c0de0f1e:	e77f      	b.n	c0de0e20 <handler_cmd_Split+0x92>

c0de0f20 <handler_cmd_frostH>:
c0de0f20:	b5b0      	push	{r4, r5, r7, lr}
c0de0f22:	b0d8      	sub	sp, #352	@ 0x160
c0de0f24:	4604      	mov	r4, r0
c0de0f26:	f000 f981 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de0f2a:	2800      	cmp	r0, #0
c0de0f2c:	d142      	bne.n	c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f2e:	6820      	ldr	r0, [r4, #0]
c0de0f30:	7801      	ldrb	r1, [r0, #0]
c0de0f32:	a802      	add	r0, sp, #8
c0de0f34:	f001 fbd0 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de0f38:	bbe0      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f3a:	a801      	add	r0, sp, #4
c0de0f3c:	f000 f980 	bl	c0de1240 <OUTLINED_FUNCTION_3>
c0de0f40:	bbc0      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f42:	f000 f980 	bl	c0de1246 <OUTLINED_FUNCTION_4>
c0de0f46:	f002 f8e5 	bl	c0de3114 <Babyfrost_H1>
c0de0f4a:	bb98      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f4c:	9801      	ldr	r0, [sp, #4]
c0de0f4e:	ad18      	add	r5, sp, #96	@ 0x60
c0de0f50:	2220      	movs	r2, #32
c0de0f52:	4629      	mov	r1, r5
c0de0f54:	f009 fdc4 	bl	c0deaae0 <cx_bn_export>
c0de0f58:	bb60      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f5a:	f000 f974 	bl	c0de1246 <OUTLINED_FUNCTION_4>
c0de0f5e:	f002 f8e7 	bl	c0de3130 <Babyfrost_H3>
c0de0f62:	bb38      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f64:	9801      	ldr	r0, [sp, #4]
c0de0f66:	f105 0120 	add.w	r1, r5, #32
c0de0f6a:	f000 f966 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de0f6e:	bb08      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f70:	f000 f969 	bl	c0de1246 <OUTLINED_FUNCTION_4>
c0de0f74:	f002 f8f0 	bl	c0de3158 <Babyfrost_H4>
c0de0f78:	b9e0      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f7a:	9801      	ldr	r0, [sp, #4]
c0de0f7c:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de0f80:	f000 f95b 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de0f84:	b9b0      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f86:	f000 f95e 	bl	c0de1246 <OUTLINED_FUNCTION_4>
c0de0f8a:	f002 f8f3 	bl	c0de3174 <Babyfrost_H5>
c0de0f8e:	b988      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f90:	9801      	ldr	r0, [sp, #4]
c0de0f92:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de0f96:	f000 f950 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de0f9a:	b958      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0f9c:	9804      	ldr	r0, [sp, #16]
c0de0f9e:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de0fa2:	f000 f94a 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de0fa6:	b928      	cbnz	r0, c0de0fb4 <handler_cmd_frostH+0x94>
c0de0fa8:	a818      	add	r0, sp, #96	@ 0x60
c0de0faa:	f000 f953 	bl	c0de1254 <OUTLINED_FUNCTION_5>
c0de0fae:	f009 fd45 	bl	c0deaa3c <cx_bn_unlock>
c0de0fb2:	b118      	cbz	r0, c0de0fbc <handler_cmd_frostH+0x9c>
c0de0fb4:	f000 f93e 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de0fb8:	b058      	add	sp, #352	@ 0x160
c0de0fba:	bdb0      	pop	{r4, r5, r7, pc}
c0de0fbc:	2000      	movs	r0, #0
c0de0fbe:	e7fb      	b.n	c0de0fb8 <handler_cmd_frostH+0x98>

c0de0fc0 <handler_cmd_encodeCommitment>:
c0de0fc0:	b510      	push	{r4, lr}
c0de0fc2:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de0fc6:	4604      	mov	r4, r0
c0de0fc8:	f000 f930 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de0fcc:	bb10      	cbnz	r0, c0de1014 <handler_cmd_encodeCommitment+0x54>
c0de0fce:	6820      	ldr	r0, [r4, #0]
c0de0fd0:	7801      	ldrb	r1, [r0, #0]
c0de0fd2:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de0fd4:	f001 fb80 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de0fd8:	b9e0      	cbnz	r0, c0de1014 <handler_cmd_encodeCommitment+0x54>
c0de0fda:	a879      	add	r0, sp, #484	@ 0x1e4
c0de0fdc:	f000 f930 	bl	c0de1240 <OUTLINED_FUNCTION_3>
c0de0fe0:	b9c0      	cbnz	r0, c0de1014 <handler_cmd_encodeCommitment+0x54>
c0de0fe2:	ac01      	add	r4, sp, #4
c0de0fe4:	4910      	ldr	r1, [pc, #64]	@ (c0de1028 <handler_cmd_encodeCommitment+0x68>)
c0de0fe6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de0fea:	4620      	mov	r0, r4
c0de0fec:	4479      	add	r1, pc
c0de0fee:	f00a f890 	bl	c0deb112 <__aeabi_memcpy>
c0de0ff2:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de0ff4:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de0ff6:	4621      	mov	r1, r4
c0de0ff8:	2203      	movs	r2, #3
c0de0ffa:	f001 f804 	bl	c0de2006 <zkn_encode_group_commitmentHash>
c0de0ffe:	b948      	cbnz	r0, c0de1014 <handler_cmd_encodeCommitment+0x54>
c0de1000:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de1002:	a990      	add	r1, sp, #576	@ 0x240
c0de1004:	2220      	movs	r2, #32
c0de1006:	3120      	adds	r1, #32
c0de1008:	f009 fd6a 	bl	c0deaae0 <cx_bn_export>
c0de100c:	b910      	cbnz	r0, c0de1014 <handler_cmd_encodeCommitment+0x54>
c0de100e:	f009 fd15 	bl	c0deaa3c <cx_bn_unlock>
c0de1012:	b120      	cbz	r0, c0de101e <handler_cmd_encodeCommitment+0x5e>
c0de1014:	f000 f90e 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de1018:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de101c:	bd10      	pop	{r4, pc}
c0de101e:	a890      	add	r0, sp, #576	@ 0x240
c0de1020:	f000 f922 	bl	c0de1268 <OUTLINED_FUNCTION_8>
c0de1024:	2000      	movs	r0, #0
c0de1026:	e7f7      	b.n	c0de1018 <handler_cmd_encodeCommitment+0x58>
c0de1028:	0000aa70 	.word	0x0000aa70

c0de102c <handler_cmd_GroupCommitment>:
c0de102c:	b570      	push	{r4, r5, r6, lr}
c0de102e:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de1032:	4604      	mov	r4, r0
c0de1034:	f000 f8fa 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de1038:	bb68      	cbnz	r0, c0de1096 <handler_cmd_GroupCommitment+0x6a>
c0de103a:	6820      	ldr	r0, [r4, #0]
c0de103c:	7801      	ldrb	r1, [r0, #0]
c0de103e:	a894      	add	r0, sp, #592	@ 0x250
c0de1040:	f001 fb4a 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de1044:	bb38      	cbnz	r0, c0de1096 <handler_cmd_GroupCommitment+0x6a>
c0de1046:	a894      	add	r0, sp, #592	@ 0x250
c0de1048:	ac91      	add	r4, sp, #580	@ 0x244
c0de104a:	4621      	mov	r1, r4
c0de104c:	f001 f9c4 	bl	c0de23d8 <tEdwards_alloc>
c0de1050:	bb08      	cbnz	r0, c0de1096 <handler_cmd_GroupCommitment+0x6a>
c0de1052:	ad19      	add	r5, sp, #100	@ 0x64
c0de1054:	4915      	ldr	r1, [pc, #84]	@ (c0de10ac <handler_cmd_GroupCommitment+0x80>)
c0de1056:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de105a:	4628      	mov	r0, r5
c0de105c:	4479      	add	r1, pc
c0de105e:	f00a f858 	bl	c0deb112 <__aeabi_memcpy>
c0de1062:	ae01      	add	r6, sp, #4
c0de1064:	4912      	ldr	r1, [pc, #72]	@ (c0de10b0 <handler_cmd_GroupCommitment+0x84>)
c0de1066:	2260      	movs	r2, #96	@ 0x60
c0de1068:	4630      	mov	r0, r6
c0de106a:	4479      	add	r1, pc
c0de106c:	f00a f851 	bl	c0deb112 <__aeabi_memcpy>
c0de1070:	9400      	str	r4, [sp, #0]
c0de1072:	a894      	add	r0, sp, #592	@ 0x250
c0de1074:	4629      	mov	r1, r5
c0de1076:	4632      	mov	r2, r6
c0de1078:	2303      	movs	r3, #3
c0de107a:	f001 f841 	bl	c0de2100 <zkn_compute_group_commitment>
c0de107e:	b950      	cbnz	r0, c0de1096 <handler_cmd_GroupCommitment+0x6a>
c0de1080:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de1082:	a894      	add	r0, sp, #592	@ 0x250
c0de1084:	a991      	add	r1, sp, #580	@ 0x244
c0de1086:	f102 0320 	add.w	r3, r2, #32
c0de108a:	f001 fcb0 	bl	c0de29ee <tEdwards_export>
c0de108e:	b910      	cbnz	r0, c0de1096 <handler_cmd_GroupCommitment+0x6a>
c0de1090:	f009 fcd4 	bl	c0deaa3c <cx_bn_unlock>
c0de1094:	b120      	cbz	r0, c0de10a0 <handler_cmd_GroupCommitment+0x74>
c0de1096:	f000 f8cd 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de109a:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de109e:	bd70      	pop	{r4, r5, r6, pc}
c0de10a0:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de10a2:	2140      	movs	r1, #64	@ 0x40
c0de10a4:	f7ff fab4 	bl	c0de0610 <io_send_response_pointer>
c0de10a8:	2000      	movs	r0, #0
c0de10aa:	e7f6      	b.n	c0de109a <handler_cmd_GroupCommitment+0x6e>
c0de10ac:	0000abe0 	.word	0x0000abe0
c0de10b0:	0000adb2 	.word	0x0000adb2

c0de10b4 <handler_cmd_BindingFactors>:
c0de10b4:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de10b8:	f2ad 4d1c 	subw	sp, sp, #1052	@ 0x41c
c0de10bc:	4604      	mov	r4, r0
c0de10be:	f000 f8b5 	bl	c0de122c <OUTLINED_FUNCTION_0>
c0de10c2:	2800      	cmp	r0, #0
c0de10c4:	f040 809d 	bne.w	c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de10c8:	6820      	ldr	r0, [r4, #0]
c0de10ca:	7801      	ldrb	r1, [r0, #0]
c0de10cc:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de10ce:	f001 fb03 	bl	c0de26d8 <tEdwards_Curve_alloc_init>
c0de10d2:	2800      	cmp	r0, #0
c0de10d4:	f040 8095 	bne.w	c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de10d8:	a8b0      	add	r0, sp, #704	@ 0x2c0
c0de10da:	f000 f8b1 	bl	c0de1240 <OUTLINED_FUNCTION_3>
c0de10de:	2800      	cmp	r0, #0
c0de10e0:	f040 808f 	bne.w	c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de10e4:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de10e6:	adad      	add	r5, sp, #692	@ 0x2b4
c0de10e8:	4629      	mov	r1, r5
c0de10ea:	f001 f975 	bl	c0de23d8 <tEdwards_alloc>
c0de10ee:	2800      	cmp	r0, #0
c0de10f0:	f040 8087 	bne.w	c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de10f4:	ac35      	add	r4, sp, #212	@ 0xd4
c0de10f6:	4947      	ldr	r1, [pc, #284]	@ (c0de1214 <handler_cmd_BindingFactors+0x160>)
c0de10f8:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10fc:	4620      	mov	r0, r4
c0de10fe:	4479      	add	r1, pc
c0de1100:	f00a f807 	bl	c0deb112 <__aeabi_memcpy>
c0de1104:	9bb0      	ldr	r3, [sp, #704]	@ 0x2c0
c0de1106:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de1108:	4621      	mov	r1, r4
c0de110a:	2203      	movs	r2, #3
c0de110c:	f000 ff7b 	bl	c0de2006 <zkn_encode_group_commitmentHash>
c0de1110:	2800      	cmp	r0, #0
c0de1112:	d176      	bne.n	c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de1114:	f50d 7847 	add.w	r8, sp, #796	@ 0x31c
c0de1118:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de111a:	2220      	movs	r2, #32
c0de111c:	2620      	movs	r6, #32
c0de111e:	4641      	mov	r1, r8
c0de1120:	f009 fcde 	bl	c0deaae0 <cx_bn_export>
c0de1124:	2800      	cmp	r0, #0
c0de1126:	d16c      	bne.n	c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de1128:	493b      	ldr	r1, [pc, #236]	@ (c0de1218 <handler_cmd_BindingFactors+0x164>)
c0de112a:	f10d 0ab4 	add.w	sl, sp, #180	@ 0xb4
c0de112e:	2220      	movs	r2, #32
c0de1130:	4650      	mov	r0, sl
c0de1132:	4479      	add	r1, pc
c0de1134:	f009 ffed 	bl	c0deb112 <__aeabi_memcpy>
c0de1138:	a825      	add	r0, sp, #148	@ 0x94
c0de113a:	4938      	ldr	r1, [pc, #224]	@ (c0de121c <handler_cmd_BindingFactors+0x168>)
c0de113c:	2220      	movs	r2, #32
c0de113e:	4479      	add	r1, pc
c0de1140:	f009 ffe7 	bl	c0deb112 <__aeabi_memcpy>
c0de1144:	ac1d      	add	r4, sp, #116	@ 0x74
c0de1146:	4936      	ldr	r1, [pc, #216]	@ (c0de1220 <handler_cmd_BindingFactors+0x16c>)
c0de1148:	2220      	movs	r2, #32
c0de114a:	4620      	mov	r0, r4
c0de114c:	4479      	add	r1, pc
c0de114e:	f009 ffe0 	bl	c0deb112 <__aeabi_memcpy>
c0de1152:	f108 0720 	add.w	r7, r8, #32
c0de1156:	e88d 00d0 	stmia.w	sp, {r4, r6, r7}
c0de115a:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de115c:	aa35      	add	r2, sp, #212	@ 0xd4
c0de115e:	4651      	mov	r1, sl
c0de1160:	2303      	movs	r3, #3
c0de1162:	f001 f83e 	bl	c0de21e2 <zkn_compute_binding_factors>
c0de1166:	2800      	cmp	r0, #0
c0de1168:	d14b      	bne.n	c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de116a:	9500      	str	r5, [sp, #0]
c0de116c:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de116e:	a935      	add	r1, sp, #212	@ 0xd4
c0de1170:	463a      	mov	r2, r7
c0de1172:	2303      	movs	r3, #3
c0de1174:	f000 ffc4 	bl	c0de2100 <zkn_compute_group_commitment>
c0de1178:	2800      	cmp	r0, #0
c0de117a:	d142      	bne.n	c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de117c:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de117e:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de1182:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de1186:	a9ad      	add	r1, sp, #692	@ 0x2b4
c0de1188:	f001 fc31 	bl	c0de29ee <tEdwards_export>
c0de118c:	bbc8      	cbnz	r0, c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de118e:	ac0d      	add	r4, sp, #52	@ 0x34
c0de1190:	4924      	ldr	r1, [pc, #144]	@ (c0de1224 <handler_cmd_BindingFactors+0x170>)
c0de1192:	2240      	movs	r2, #64	@ 0x40
c0de1194:	4620      	mov	r0, r4
c0de1196:	4479      	add	r1, pc
c0de1198:	f009 ffbb 	bl	c0deb112 <__aeabi_memcpy>
c0de119c:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de119e:	2120      	movs	r1, #32
c0de11a0:	4622      	mov	r2, r4
c0de11a2:	e9cd 1000 	strd	r1, r0, [sp]
c0de11a6:	a8b1      	add	r0, sp, #708	@ 0x2c4
c0de11a8:	a9ad      	add	r1, sp, #692	@ 0x2b4
c0de11aa:	ab25      	add	r3, sp, #148	@ 0x94
c0de11ac:	f001 f8a4 	bl	c0de22f8 <compute_challenge>
c0de11b0:	bb38      	cbnz	r0, c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de11b2:	98b0      	ldr	r0, [sp, #704]	@ 0x2c0
c0de11b4:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de11b8:	f000 f83f 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de11bc:	bb08      	cbnz	r0, c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de11be:	a803      	add	r0, sp, #12
c0de11c0:	4919      	ldr	r1, [pc, #100]	@ (c0de1228 <handler_cmd_BindingFactors+0x174>)
c0de11c2:	2220      	movs	r2, #32
c0de11c4:	4479      	add	r1, pc
c0de11c6:	f009 ffa4 	bl	c0deb112 <__aeabi_memcpy>
c0de11ca:	a80c      	add	r0, sp, #48	@ 0x30
c0de11cc:	f000 f838 	bl	c0de1240 <OUTLINED_FUNCTION_3>
c0de11d0:	b9b8      	cbnz	r0, c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de11d2:	a80b      	add	r0, sp, #44	@ 0x2c
c0de11d4:	aa03      	add	r2, sp, #12
c0de11d6:	2120      	movs	r1, #32
c0de11d8:	f000 f840 	bl	c0de125c <OUTLINED_FUNCTION_6>
c0de11dc:	b988      	cbnz	r0, c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de11de:	99b0      	ldr	r1, [sp, #704]	@ 0x2c0
c0de11e0:	e9dd 200b 	ldrd	r2, r0, [sp, #44]	@ 0x2c
c0de11e4:	f009 fcd0 	bl	c0deab88 <cx_bn_reduce>
c0de11e8:	b958      	cbnz	r0, c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de11ea:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de11ec:	f108 01e0 	add.w	r1, r8, #224	@ 0xe0
c0de11f0:	f000 f823 	bl	c0de123a <OUTLINED_FUNCTION_2>
c0de11f4:	b928      	cbnz	r0, c0de1202 <handler_cmd_BindingFactors+0x14e>
c0de11f6:	a8c7      	add	r0, sp, #796	@ 0x31c
c0de11f8:	f000 f82c 	bl	c0de1254 <OUTLINED_FUNCTION_5>
c0de11fc:	f009 fc1e 	bl	c0deaa3c <cx_bn_unlock>
c0de1200:	b128      	cbz	r0, c0de120e <handler_cmd_BindingFactors+0x15a>
c0de1202:	f000 f817 	bl	c0de1234 <OUTLINED_FUNCTION_1>
c0de1206:	f20d 4d1c 	addw	sp, sp, #1052	@ 0x41c
c0de120a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de120e:	2000      	movs	r0, #0
c0de1210:	e7f9      	b.n	c0de1206 <handler_cmd_BindingFactors+0x152>
c0de1212:	bf00      	nop
c0de1214:	0000ad7e 	.word	0x0000ad7e
c0de1218:	0000a74a 	.word	0x0000a74a
c0de121c:	0000a5fe 	.word	0x0000a5fe
c0de1220:	0000a750 	.word	0x0000a750
c0de1224:	0000aec6 	.word	0x0000aec6
c0de1228:	0000a678 	.word	0x0000a678

c0de122c <OUTLINED_FUNCTION_0>:
c0de122c:	2020      	movs	r0, #32
c0de122e:	2100      	movs	r1, #0
c0de1230:	f009 bbfa 	b.w	c0deaa28 <cx_bn_lock>

c0de1234 <OUTLINED_FUNCTION_1>:
c0de1234:	b280      	uxth	r0, r0
c0de1236:	f7ff b9f6 	b.w	c0de0626 <io_send_sw>

c0de123a <OUTLINED_FUNCTION_2>:
c0de123a:	2220      	movs	r2, #32
c0de123c:	f009 bc50 	b.w	c0deaae0 <cx_bn_export>

c0de1240 <OUTLINED_FUNCTION_3>:
c0de1240:	2120      	movs	r1, #32
c0de1242:	f009 bc03 	b.w	c0deaa4c <cx_bn_alloc>

c0de1246 <OUTLINED_FUNCTION_4>:
c0de1246:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de124a:	9b01      	ldr	r3, [sp, #4]
c0de124c:	9a04      	ldr	r2, [sp, #16]
c0de124e:	3001      	adds	r0, #1
c0de1250:	3901      	subs	r1, #1
c0de1252:	4770      	bx	lr

c0de1254 <OUTLINED_FUNCTION_5>:
c0de1254:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de1258:	f7ff b9da 	b.w	c0de0610 <io_send_response_pointer>

c0de125c <OUTLINED_FUNCTION_6>:
c0de125c:	2320      	movs	r3, #32
c0de125e:	f009 bbff 	b.w	c0deaa60 <cx_bn_alloc_init>

c0de1262 <OUTLINED_FUNCTION_7>:
c0de1262:	4622      	mov	r2, r4
c0de1264:	f001 bbc3 	b.w	c0de29ee <tEdwards_export>

c0de1268 <OUTLINED_FUNCTION_8>:
c0de1268:	2120      	movs	r1, #32
c0de126a:	f7ff b9d1 	b.w	c0de0610 <io_send_response_pointer>
	...

c0de1270 <helper_send_response_pubkey>:
c0de1270:	b5b0      	push	{r4, r5, r7, lr}
c0de1272:	b09a      	sub	sp, #104	@ 0x68
c0de1274:	2041      	movs	r0, #65	@ 0x41
c0de1276:	f10d 0405 	add.w	r4, sp, #5
c0de127a:	2241      	movs	r2, #65	@ 0x41
c0de127c:	f88d 0005 	strb.w	r0, [sp, #5]
c0de1280:	480b      	ldr	r0, [pc, #44]	@ (c0de12b0 <helper_send_response_pubkey+0x40>)
c0de1282:	eb09 0500 	add.w	r5, r9, r0
c0de1286:	1c60      	adds	r0, r4, #1
c0de1288:	f105 0108 	add.w	r1, r5, #8
c0de128c:	f009 ff41 	bl	c0deb112 <__aeabi_memcpy>
c0de1290:	2020      	movs	r0, #32
c0de1292:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de1296:	2220      	movs	r2, #32
c0de1298:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de129c:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de12a0:	f009 ff37 	bl	c0deb112 <__aeabi_memcpy>
c0de12a4:	4620      	mov	r0, r4
c0de12a6:	2163      	movs	r1, #99	@ 0x63
c0de12a8:	f000 f804 	bl	c0de12b4 <io_send_response_pointer>
c0de12ac:	b01a      	add	sp, #104	@ 0x68
c0de12ae:	bdb0      	pop	{r4, r5, r7, pc}
c0de12b0:	00000000 	.word	0x00000000

c0de12b4 <io_send_response_pointer>:
c0de12b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de12b6:	2200      	movs	r2, #0
c0de12b8:	ab01      	add	r3, sp, #4
c0de12ba:	c307      	stmia	r3!, {r0, r1, r2}
c0de12bc:	a801      	add	r0, sp, #4
c0de12be:	2101      	movs	r1, #1
c0de12c0:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de12c4:	f007 faf4 	bl	c0de88b0 <io_send_response_buffers>
c0de12c8:	b004      	add	sp, #16
c0de12ca:	bd80      	pop	{r7, pc}

c0de12cc <helper_send_response_sig>:
c0de12cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de12ce:	b093      	sub	sp, #76	@ 0x4c
c0de12d0:	f10d 0402 	add.w	r4, sp, #2
c0de12d4:	2149      	movs	r1, #73	@ 0x49
c0de12d6:	1c65      	adds	r5, r4, #1
c0de12d8:	4628      	mov	r0, r5
c0de12da:	f009 ff17 	bl	c0deb10c <__aeabi_memclr>
c0de12de:	480b      	ldr	r0, [pc, #44]	@ (c0de130c <helper_send_response_sig+0x40>)
c0de12e0:	eb09 0700 	add.w	r7, r9, r0
c0de12e4:	4628      	mov	r0, r5
c0de12e6:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de12ea:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de12ee:	4632      	mov	r2, r6
c0de12f0:	f88d 6002 	strb.w	r6, [sp, #2]
c0de12f4:	f009 ff0d 	bl	c0deb112 <__aeabi_memcpy>
c0de12f8:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de12fc:	1930      	adds	r0, r6, r4
c0de12fe:	7041      	strb	r1, [r0, #1]
c0de1300:	1cb1      	adds	r1, r6, #2
c0de1302:	4620      	mov	r0, r4
c0de1304:	f7ff ffd6 	bl	c0de12b4 <io_send_response_pointer>
c0de1308:	b013      	add	sp, #76	@ 0x4c
c0de130a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de130c:	00000000 	.word	0x00000000

c0de1310 <swap_handle_check_address>:
c0de1310:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1314:	b0bc      	sub	sp, #240	@ 0xf0
c0de1316:	4604      	mov	r4, r0
c0de1318:	2000      	movs	r0, #0
c0de131a:	68a5      	ldr	r5, [r4, #8]
c0de131c:	61a0      	str	r0, [r4, #24]
c0de131e:	2d00      	cmp	r5, #0
c0de1320:	d04d      	beq.n	c0de13be <swap_handle_check_address+0xae>
c0de1322:	6920      	ldr	r0, [r4, #16]
c0de1324:	2800      	cmp	r0, #0
c0de1326:	d04a      	beq.n	c0de13be <swap_handle_check_address+0xae>
c0de1328:	f009 ff4a 	bl	c0deb1c0 <strlen>
c0de132c:	2828      	cmp	r0, #40	@ 0x28
c0de132e:	d146      	bne.n	c0de13be <swap_handle_check_address+0xae>
c0de1330:	7b20      	ldrb	r0, [r4, #12]
c0de1332:	f04f 0800 	mov.w	r8, #0
c0de1336:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de1338:	2161      	movs	r1, #97	@ 0x61
c0de133a:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de133e:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de1340:	ad15      	add	r5, sp, #84	@ 0x54
c0de1342:	4628      	mov	r0, r5
c0de1344:	f009 fee2 	bl	c0deb10c <__aeabi_memclr>
c0de1348:	ae39      	add	r6, sp, #228	@ 0xe4
c0de134a:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de134e:	4630      	mov	r0, r6
c0de1350:	f007 f81a 	bl	c0de8388 <buffer_read_u8>
c0de1354:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de1358:	af2e      	add	r7, sp, #184	@ 0xb8
c0de135a:	4630      	mov	r0, r6
c0de135c:	4639      	mov	r1, r7
c0de135e:	f007 f866 	bl	c0de842e <buffer_read_bip32_path>
c0de1362:	2005      	movs	r0, #5
c0de1364:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de1368:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de136c:	463a      	mov	r2, r7
c0de136e:	f8cd 8010 	str.w	r8, [sp, #16]
c0de1372:	e9cd 5100 	strd	r5, r1, [sp]
c0de1376:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de137a:	2000      	movs	r0, #0
c0de137c:	2121      	movs	r1, #33	@ 0x21
c0de137e:	f007 f917 	bl	c0de85b0 <bip32_derive_with_seed_get_pubkey_256>
c0de1382:	b9e0      	cbnz	r0, c0de13be <swap_handle_check_address+0xae>
c0de1384:	ad10      	add	r5, sp, #64	@ 0x40
c0de1386:	2114      	movs	r1, #20
c0de1388:	4628      	mov	r0, r5
c0de138a:	f009 febf 	bl	c0deb10c <__aeabi_memclr>
c0de138e:	a815      	add	r0, sp, #84	@ 0x54
c0de1390:	4629      	mov	r1, r5
c0de1392:	2214      	movs	r2, #20
c0de1394:	f7fe fe48 	bl	c0de0028 <address_from_pubkey>
c0de1398:	ae05      	add	r6, sp, #20
c0de139a:	2129      	movs	r1, #41	@ 0x29
c0de139c:	4630      	mov	r0, r6
c0de139e:	f009 feb5 	bl	c0deb10c <__aeabi_memclr>
c0de13a2:	4628      	mov	r0, r5
c0de13a4:	2114      	movs	r1, #20
c0de13a6:	4632      	mov	r2, r6
c0de13a8:	2329      	movs	r3, #41	@ 0x29
c0de13aa:	f007 f9df 	bl	c0de876c <format_hex>
c0de13ae:	6921      	ldr	r1, [r4, #16]
c0de13b0:	4630      	mov	r0, r6
c0de13b2:	2229      	movs	r2, #41	@ 0x29
c0de13b4:	f009 ff0c 	bl	c0deb1d0 <strncmp>
c0de13b8:	b908      	cbnz	r0, c0de13be <swap_handle_check_address+0xae>
c0de13ba:	2001      	movs	r0, #1
c0de13bc:	61a0      	str	r0, [r4, #24]
c0de13be:	b03c      	add	sp, #240	@ 0xf0
c0de13c0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de13c4 <swap_handle_get_printable_amount>:
c0de13c4:	b570      	push	{r4, r5, r6, lr}
c0de13c6:	b08c      	sub	sp, #48	@ 0x30
c0de13c8:	ac04      	add	r4, sp, #16
c0de13ca:	4606      	mov	r6, r0
c0de13cc:	211e      	movs	r1, #30
c0de13ce:	4620      	mov	r0, r4
c0de13d0:	f009 fe9c 	bl	c0deb10c <__aeabi_memclr>
c0de13d4:	f106 050e 	add.w	r5, r6, #14
c0de13d8:	2132      	movs	r1, #50	@ 0x32
c0de13da:	4628      	mov	r0, r5
c0de13dc:	f009 fe96 	bl	c0deb10c <__aeabi_memclr>
c0de13e0:	2000      	movs	r0, #0
c0de13e2:	7b31      	ldrb	r1, [r6, #12]
c0de13e4:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de13e8:	68b0      	ldr	r0, [r6, #8]
c0de13ea:	aa02      	add	r2, sp, #8
c0de13ec:	f007 fc08 	bl	c0de8c00 <swap_str_to_u64>
c0de13f0:	b178      	cbz	r0, c0de1412 <swap_handle_get_printable_amount+0x4e>
c0de13f2:	2003      	movs	r0, #3
c0de13f4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de13f8:	211e      	movs	r1, #30
c0de13fa:	9000      	str	r0, [sp, #0]
c0de13fc:	4620      	mov	r0, r4
c0de13fe:	f007 f96e 	bl	c0de86de <format_fpu64>
c0de1402:	9400      	str	r4, [sp, #0]
c0de1404:	4628      	mov	r0, r5
c0de1406:	2132      	movs	r1, #50	@ 0x32
c0de1408:	231e      	movs	r3, #30
c0de140a:	4a03      	ldr	r2, [pc, #12]	@ (c0de1418 <swap_handle_get_printable_amount+0x54>)
c0de140c:	447a      	add	r2, pc
c0de140e:	f009 f8e3 	bl	c0dea5d8 <snprintf>
c0de1412:	b00c      	add	sp, #48	@ 0x30
c0de1414:	bd70      	pop	{r4, r5, r6, pc}
c0de1416:	bf00      	nop
c0de1418:	0000a268 	.word	0x0000a268

c0de141c <swap_copy_transaction_parameters>:
c0de141c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de141e:	b093      	sub	sp, #76	@ 0x4c
c0de1420:	6985      	ldr	r5, [r0, #24]
c0de1422:	b3ad      	cbz	r5, c0de1490 <swap_copy_transaction_parameters+0x74>
c0de1424:	4604      	mov	r4, r0
c0de1426:	4628      	mov	r0, r5
c0de1428:	f009 feca 	bl	c0deb1c0 <strlen>
c0de142c:	2828      	cmp	r0, #40	@ 0x28
c0de142e:	d12f      	bne.n	c0de1490 <swap_copy_transaction_parameters+0x74>
c0de1430:	68a7      	ldr	r7, [r4, #8]
c0de1432:	b36f      	cbz	r7, c0de1490 <swap_copy_transaction_parameters+0x74>
c0de1434:	466e      	mov	r6, sp
c0de1436:	2148      	movs	r1, #72	@ 0x48
c0de1438:	4630      	mov	r0, r6
c0de143a:	f009 fe67 	bl	c0deb10c <__aeabi_memclr>
c0de143e:	f106 0018 	add.w	r0, r6, #24
c0de1442:	2100      	movs	r1, #0
c0de1444:	2928      	cmp	r1, #40	@ 0x28
c0de1446:	d009      	beq.n	c0de145c <swap_copy_transaction_parameters+0x40>
c0de1448:	5c6a      	ldrb	r2, [r5, r1]
c0de144a:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de144e:	b2db      	uxtb	r3, r3
c0de1450:	2b1a      	cmp	r3, #26
c0de1452:	bf38      	it	cc
c0de1454:	3a20      	subcc	r2, #32
c0de1456:	5442      	strb	r2, [r0, r1]
c0de1458:	3101      	adds	r1, #1
c0de145a:	e7f3      	b.n	c0de1444 <swap_copy_transaction_parameters+0x28>
c0de145c:	7b21      	ldrb	r1, [r4, #12]
c0de145e:	f106 0208 	add.w	r2, r6, #8
c0de1462:	4638      	mov	r0, r7
c0de1464:	f007 fbcc 	bl	c0de8c00 <swap_str_to_u64>
c0de1468:	b190      	cbz	r0, c0de1490 <swap_copy_transaction_parameters+0x74>
c0de146a:	7d21      	ldrb	r1, [r4, #20]
c0de146c:	6920      	ldr	r0, [r4, #16]
c0de146e:	f106 0210 	add.w	r2, r6, #16
c0de1472:	f007 fbc5 	bl	c0de8c00 <swap_str_to_u64>
c0de1476:	b158      	cbz	r0, c0de1490 <swap_copy_transaction_parameters+0x74>
c0de1478:	2401      	movs	r4, #1
c0de147a:	f88d 4000 	strb.w	r4, [sp]
c0de147e:	f008 fc13 	bl	c0de9ca8 <os_explicit_zero_BSS_segment>
c0de1482:	4805      	ldr	r0, [pc, #20]	@ (c0de1498 <swap_copy_transaction_parameters+0x7c>)
c0de1484:	4669      	mov	r1, sp
c0de1486:	2248      	movs	r2, #72	@ 0x48
c0de1488:	4448      	add	r0, r9
c0de148a:	f009 fe42 	bl	c0deb112 <__aeabi_memcpy>
c0de148e:	e000      	b.n	c0de1492 <swap_copy_transaction_parameters+0x76>
c0de1490:	2400      	movs	r4, #0
c0de1492:	4620      	mov	r0, r4
c0de1494:	b013      	add	sp, #76	@ 0x4c
c0de1496:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1498:	000002d8 	.word	0x000002d8

c0de149c <swap_check_validity>:
c0de149c:	b570      	push	{r4, r5, r6, lr}
c0de149e:	b08c      	sub	sp, #48	@ 0x30
c0de14a0:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1518 <swap_check_validity+0x7c>)
c0de14a2:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de14a6:	b32c      	cbz	r4, c0de14f4 <swap_check_validity+0x58>
c0de14a8:	eb09 0406 	add.w	r4, r9, r6
c0de14ac:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de14b0:	4069      	eors	r1, r5
c0de14b2:	4060      	eors	r0, r4
c0de14b4:	4308      	orrs	r0, r1
c0de14b6:	d121      	bne.n	c0de14fc <swap_check_validity+0x60>
c0de14b8:	eb09 0006 	add.w	r0, r9, r6
c0de14bc:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de14c0:	4059      	eors	r1, r3
c0de14c2:	4050      	eors	r0, r2
c0de14c4:	4308      	orrs	r0, r1
c0de14c6:	d11d      	bne.n	c0de1504 <swap_check_validity+0x68>
c0de14c8:	ad01      	add	r5, sp, #4
c0de14ca:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de14cc:	2129      	movs	r1, #41	@ 0x29
c0de14ce:	4628      	mov	r0, r5
c0de14d0:	f009 fe1c 	bl	c0deb10c <__aeabi_memclr>
c0de14d4:	4620      	mov	r0, r4
c0de14d6:	2114      	movs	r1, #20
c0de14d8:	462a      	mov	r2, r5
c0de14da:	2329      	movs	r3, #41	@ 0x29
c0de14dc:	f007 f946 	bl	c0de876c <format_hex>
c0de14e0:	eb09 0006 	add.w	r0, r9, r6
c0de14e4:	4629      	mov	r1, r5
c0de14e6:	3018      	adds	r0, #24
c0de14e8:	f009 fe60 	bl	c0deb1ac <strcmp>
c0de14ec:	b970      	cbnz	r0, c0de150c <swap_check_validity+0x70>
c0de14ee:	2001      	movs	r0, #1
c0de14f0:	b00c      	add	sp, #48	@ 0x30
c0de14f2:	bd70      	pop	{r4, r5, r6, pc}
c0de14f4:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de14f8:	21ff      	movs	r1, #255	@ 0xff
c0de14fa:	e00a      	b.n	c0de1512 <swap_check_validity+0x76>
c0de14fc:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1500:	2101      	movs	r1, #1
c0de1502:	e006      	b.n	c0de1512 <swap_check_validity+0x76>
c0de1504:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1508:	2103      	movs	r1, #3
c0de150a:	e002      	b.n	c0de1512 <swap_check_validity+0x76>
c0de150c:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de1510:	2102      	movs	r1, #2
c0de1512:	2200      	movs	r2, #0
c0de1514:	f007 fb3b 	bl	c0de8b8e <send_swap_error_simple>
c0de1518:	000002d8 	.word	0x000002d8

c0de151c <transaction_deserialize>:
c0de151c:	b570      	push	{r4, r5, r6, lr}
c0de151e:	460d      	mov	r5, r1
c0de1520:	4604      	mov	r4, r0
c0de1522:	b910      	cbnz	r0, c0de152a <transaction_deserialize+0xe>
c0de1524:	2001      	movs	r0, #1
c0de1526:	f008 fbb3 	bl	c0de9c90 <assert_exit>
c0de152a:	b915      	cbnz	r5, c0de1532 <transaction_deserialize+0x16>
c0de152c:	2001      	movs	r0, #1
c0de152e:	f008 fbaf 	bl	c0de9c90 <assert_exit>
c0de1532:	6860      	ldr	r0, [r4, #4]
c0de1534:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de1538:	d901      	bls.n	c0de153e <transaction_deserialize+0x22>
c0de153a:	20f9      	movs	r0, #249	@ 0xf9
c0de153c:	e04b      	b.n	c0de15d6 <transaction_deserialize+0xba>
c0de153e:	4620      	mov	r0, r4
c0de1540:	4629      	mov	r1, r5
c0de1542:	2200      	movs	r2, #0
c0de1544:	f006 ff36 	bl	c0de83b4 <buffer_read_u64>
c0de1548:	b330      	cbz	r0, c0de1598 <transaction_deserialize+0x7c>
c0de154a:	6820      	ldr	r0, [r4, #0]
c0de154c:	68a1      	ldr	r1, [r4, #8]
c0de154e:	4408      	add	r0, r1
c0de1550:	2114      	movs	r1, #20
c0de1552:	61a8      	str	r0, [r5, #24]
c0de1554:	4620      	mov	r0, r4
c0de1556:	f006 ff0c 	bl	c0de8372 <buffer_seek_cur>
c0de155a:	b1f8      	cbz	r0, c0de159c <transaction_deserialize+0x80>
c0de155c:	f105 0108 	add.w	r1, r5, #8
c0de1560:	4620      	mov	r0, r4
c0de1562:	2200      	movs	r2, #0
c0de1564:	2600      	movs	r6, #0
c0de1566:	f006 ff25 	bl	c0de83b4 <buffer_read_u64>
c0de156a:	b1c8      	cbz	r0, c0de15a0 <transaction_deserialize+0x84>
c0de156c:	f105 0120 	add.w	r1, r5, #32
c0de1570:	4620      	mov	r0, r4
c0de1572:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1576:	f006 ff3d 	bl	c0de83f4 <buffer_read_varint>
c0de157a:	6a29      	ldr	r1, [r5, #32]
c0de157c:	b990      	cbnz	r0, c0de15a4 <transaction_deserialize+0x88>
c0de157e:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de1580:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1584:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1588:	2300      	movs	r3, #0
c0de158a:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de158e:	eb73 0000 	sbcs.w	r0, r3, r0
c0de1592:	d207      	bcs.n	c0de15a4 <transaction_deserialize+0x88>
c0de1594:	20fc      	movs	r0, #252	@ 0xfc
c0de1596:	e01e      	b.n	c0de15d6 <transaction_deserialize+0xba>
c0de1598:	20ff      	movs	r0, #255	@ 0xff
c0de159a:	e01c      	b.n	c0de15d6 <transaction_deserialize+0xba>
c0de159c:	20fe      	movs	r0, #254	@ 0xfe
c0de159e:	e01a      	b.n	c0de15d6 <transaction_deserialize+0xba>
c0de15a0:	20fd      	movs	r0, #253	@ 0xfd
c0de15a2:	e018      	b.n	c0de15d6 <transaction_deserialize+0xba>
c0de15a4:	6820      	ldr	r0, [r4, #0]
c0de15a6:	68a2      	ldr	r2, [r4, #8]
c0de15a8:	4410      	add	r0, r2
c0de15aa:	61e8      	str	r0, [r5, #28]
c0de15ac:	4620      	mov	r0, r4
c0de15ae:	f006 fee0 	bl	c0de8372 <buffer_seek_cur>
c0de15b2:	b168      	cbz	r0, c0de15d0 <transaction_deserialize+0xb4>
c0de15b4:	f105 031c 	add.w	r3, r5, #28
c0de15b8:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de15ba:	f000 f80e 	bl	c0de15da <transaction_utils_check_encoding>
c0de15be:	b148      	cbz	r0, c0de15d4 <transaction_deserialize+0xb8>
c0de15c0:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de15c4:	f06f 0006 	mvn.w	r0, #6
c0de15c8:	428a      	cmp	r2, r1
c0de15ca:	bf08      	it	eq
c0de15cc:	2001      	moveq	r0, #1
c0de15ce:	e002      	b.n	c0de15d6 <transaction_deserialize+0xba>
c0de15d0:	20fb      	movs	r0, #251	@ 0xfb
c0de15d2:	e000      	b.n	c0de15d6 <transaction_deserialize+0xba>
c0de15d4:	20fa      	movs	r0, #250	@ 0xfa
c0de15d6:	b240      	sxtb	r0, r0
c0de15d8:	bd70      	pop	{r4, r5, r6, pc}

c0de15da <transaction_utils_check_encoding>:
c0de15da:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de15dc:	461c      	mov	r4, r3
c0de15de:	4615      	mov	r5, r2
c0de15e0:	4606      	mov	r6, r0
c0de15e2:	b910      	cbnz	r0, c0de15ea <transaction_utils_check_encoding+0x10>
c0de15e4:	2001      	movs	r0, #1
c0de15e6:	f008 fb53 	bl	c0de9c90 <assert_exit>
c0de15ea:	2000      	movs	r0, #0
c0de15ec:	2300      	movs	r3, #0
c0de15ee:	4602      	mov	r2, r0
c0de15f0:	1b40      	subs	r0, r0, r5
c0de15f2:	4619      	mov	r1, r3
c0de15f4:	eb73 0004 	sbcs.w	r0, r3, r4
c0de15f8:	d206      	bcs.n	c0de1608 <transaction_utils_check_encoding+0x2e>
c0de15fa:	56b7      	ldrsb	r7, [r6, r2]
c0de15fc:	1c50      	adds	r0, r2, #1
c0de15fe:	f141 0300 	adc.w	r3, r1, #0
c0de1602:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de1606:	dcf2      	bgt.n	c0de15ee <transaction_utils_check_encoding+0x14>
c0de1608:	2000      	movs	r0, #0
c0de160a:	1b52      	subs	r2, r2, r5
c0de160c:	41a1      	sbcs	r1, r4
c0de160e:	bf28      	it	cs
c0de1610:	2001      	movcs	r0, #1
c0de1612:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1614 <validate_pubkey>:
c0de1614:	b108      	cbz	r0, c0de161a <validate_pubkey+0x6>
c0de1616:	f7ff be2b 	b.w	c0de1270 <helper_send_response_pubkey>
c0de161a:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de161e:	f000 b800 	b.w	c0de1622 <io_send_sw>

c0de1622 <io_send_sw>:
c0de1622:	4602      	mov	r2, r0
c0de1624:	2000      	movs	r0, #0
c0de1626:	2100      	movs	r1, #0
c0de1628:	f007 b942 	b.w	c0de88b0 <io_send_response_buffers>

c0de162c <validate_transaction>:
c0de162c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1630:	b08c      	sub	sp, #48	@ 0x30
c0de1632:	b378      	cbz	r0, c0de1694 <validate_transaction+0x68>
c0de1634:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de16cc <validate_transaction+0xa0>
c0de1638:	2002      	movs	r0, #2
c0de163a:	2500      	movs	r5, #0
c0de163c:	2720      	movs	r7, #32
c0de163e:	2203      	movs	r2, #3
c0de1640:	f240 6401 	movw	r4, #1537	@ 0x601
c0de1644:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de1648:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de164c:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de164e:	f809 0008 	strb.w	r0, [r9, r8]
c0de1652:	2048      	movs	r0, #72	@ 0x48
c0de1654:	900a      	str	r0, [sp, #40]	@ 0x28
c0de1656:	eb09 0008 	add.w	r0, r9, r8
c0de165a:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de165e:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1662:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1666:	e9cd 4200 	strd	r4, r2, [sp]
c0de166a:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de166e:	2000      	movs	r0, #0
c0de1670:	9508      	str	r5, [sp, #32]
c0de1672:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1676:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de167a:	2121      	movs	r1, #33	@ 0x21
c0de167c:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1680:	f006 ffca 	bl	c0de8618 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1684:	b188      	cbz	r0, c0de16aa <validate_transaction+0x7e>
c0de1686:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de168a:	f809 5008 	strb.w	r5, [r9, r8]
c0de168e:	f7ff ffc8 	bl	c0de1622 <io_send_sw>
c0de1692:	e017      	b.n	c0de16c4 <validate_transaction+0x98>
c0de1694:	480d      	ldr	r0, [pc, #52]	@ (c0de16cc <validate_transaction+0xa0>)
c0de1696:	2100      	movs	r1, #0
c0de1698:	f809 1000 	strb.w	r1, [r9, r0]
c0de169c:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de16a0:	b00c      	add	sp, #48	@ 0x30
c0de16a2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de16a6:	f7ff bfbc 	b.w	c0de1622 <io_send_sw>
c0de16aa:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de16ac:	eb09 0008 	add.w	r0, r9, r8
c0de16b0:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de16b4:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de16b8:	f001 0101 	and.w	r1, r1, #1
c0de16bc:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de16c0:	f7ff fe04 	bl	c0de12cc <helper_send_response_sig>
c0de16c4:	b00c      	add	sp, #48	@ 0x30
c0de16c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de16ca:	bf00      	nop
c0de16cc:	00000000 	.word	0x00000000

c0de16d0 <app_quit>:
c0de16d0:	20ff      	movs	r0, #255	@ 0xff
c0de16d2:	f009 fb35 	bl	c0dead40 <os_sched_exit>
	...

c0de16d8 <ui_menu_main>:
c0de16d8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de16da:	4c19      	ldr	r4, [pc, #100]	@ (c0de1740 <ui_menu_main+0x68>)
c0de16dc:	4817      	ldr	r0, [pc, #92]	@ (c0de173c <ui_menu_main+0x64>)
c0de16de:	447c      	add	r4, pc
c0de16e0:	eb09 0500 	add.w	r5, r9, r0
c0de16e4:	f000 f8d8 	bl	c0de1898 <OUTLINED_FUNCTION_0>
c0de16e8:	2114      	movs	r1, #20
c0de16ea:	7369      	strb	r1, [r5, #13]
c0de16ec:	4915      	ldr	r1, [pc, #84]	@ (c0de1744 <ui_menu_main+0x6c>)
c0de16ee:	4a16      	ldr	r2, [pc, #88]	@ (c0de1748 <ui_menu_main+0x70>)
c0de16f0:	4479      	add	r1, pc
c0de16f2:	447a      	add	r2, pc
c0de16f4:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de16f8:	7800      	ldrb	r0, [r0, #0]
c0de16fa:	7328      	strb	r0, [r5, #12]
c0de16fc:	f000 f8cc 	bl	c0de1898 <OUTLINED_FUNCTION_0>
c0de1700:	2115      	movs	r1, #21
c0de1702:	7669      	strb	r1, [r5, #25]
c0de1704:	4911      	ldr	r1, [pc, #68]	@ (c0de174c <ui_menu_main+0x74>)
c0de1706:	4a12      	ldr	r2, [pc, #72]	@ (c0de1750 <ui_menu_main+0x78>)
c0de1708:	4479      	add	r1, pc
c0de170a:	447a      	add	r2, pc
c0de170c:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1710:	2100      	movs	r1, #0
c0de1712:	7840      	ldrb	r0, [r0, #1]
c0de1714:	7628      	strb	r0, [r5, #24]
c0de1716:	480f      	ldr	r0, [pc, #60]	@ (c0de1754 <ui_menu_main+0x7c>)
c0de1718:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1758 <ui_menu_main+0x80>)
c0de171a:	4b10      	ldr	r3, [pc, #64]	@ (c0de175c <ui_menu_main+0x84>)
c0de171c:	4478      	add	r0, pc
c0de171e:	447a      	add	r2, pc
c0de1720:	447b      	add	r3, pc
c0de1722:	e9cd 3200 	strd	r3, r2, [sp]
c0de1726:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de172a:	2200      	movs	r2, #0
c0de172c:	23ff      	movs	r3, #255	@ 0xff
c0de172e:	480c      	ldr	r0, [pc, #48]	@ (c0de1760 <ui_menu_main+0x88>)
c0de1730:	490c      	ldr	r1, [pc, #48]	@ (c0de1764 <ui_menu_main+0x8c>)
c0de1732:	4478      	add	r0, pc
c0de1734:	4479      	add	r1, pc
c0de1736:	f005 f9e7 	bl	c0de6b08 <nbgl_useCaseHomeAndSettings>
c0de173a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de173c:	00000320 	.word	0x00000320
c0de1740:	0000b31e 	.word	0x0000b31e
c0de1744:	00009e27 	.word	0x00009e27
c0de1748:	00009f98 	.word	0x00009f98
c0de174c:	00009e8a 	.word	0x00009e8a
c0de1750:	00009cd0 	.word	0x00009cd0
c0de1754:	ffffffb1 	.word	0xffffffb1
c0de1758:	0000a98a 	.word	0x0000a98a
c0de175c:	0000a97c 	.word	0x0000a97c
c0de1760:	00009fdf 	.word	0x00009fdf
c0de1764:	00009aff 	.word	0x00009aff

c0de1768 <controls_callback>:
c0de1768:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de176a:	4c22      	ldr	r4, [pc, #136]	@ (c0de17f4 <controls_callback+0x8c>)
c0de176c:	2815      	cmp	r0, #21
c0de176e:	f809 2004 	strb.w	r2, [r9, r4]
c0de1772:	d011      	beq.n	c0de1798 <controls_callback+0x30>
c0de1774:	2814      	cmp	r0, #20
c0de1776:	d12a      	bne.n	c0de17ce <controls_callback+0x66>
c0de1778:	eb09 0504 	add.w	r5, r9, r4
c0de177c:	4c1e      	ldr	r4, [pc, #120]	@ (c0de17f8 <controls_callback+0x90>)
c0de177e:	447c      	add	r4, pc
c0de1780:	f000 f88a 	bl	c0de1898 <OUTLINED_FUNCTION_0>
c0de1784:	7800      	ldrb	r0, [r0, #0]
c0de1786:	fab0 f080 	clz	r0, r0
c0de178a:	0940      	lsrs	r0, r0, #5
c0de178c:	7328      	strb	r0, [r5, #12]
c0de178e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1792:	f000 f881 	bl	c0de1898 <OUTLINED_FUNCTION_0>
c0de1796:	e015      	b.n	c0de17c4 <controls_callback+0x5c>
c0de1798:	4818      	ldr	r0, [pc, #96]	@ (c0de17fc <controls_callback+0x94>)
c0de179a:	4478      	add	r0, pc
c0de179c:	f009 f8b6 	bl	c0dea90c <pic>
c0de17a0:	7840      	ldrb	r0, [r0, #1]
c0de17a2:	b1a8      	cbz	r0, c0de17d0 <controls_callback+0x68>
c0de17a4:	eb09 0504 	add.w	r5, r9, r4
c0de17a8:	4c15      	ldr	r4, [pc, #84]	@ (c0de1800 <controls_callback+0x98>)
c0de17aa:	447c      	add	r4, pc
c0de17ac:	f000 f874 	bl	c0de1898 <OUTLINED_FUNCTION_0>
c0de17b0:	7840      	ldrb	r0, [r0, #1]
c0de17b2:	fab0 f080 	clz	r0, r0
c0de17b6:	0940      	lsrs	r0, r0, #5
c0de17b8:	7628      	strb	r0, [r5, #24]
c0de17ba:	f88d 000f 	strb.w	r0, [sp, #15]
c0de17be:	f000 f86b 	bl	c0de1898 <OUTLINED_FUNCTION_0>
c0de17c2:	3001      	adds	r0, #1
c0de17c4:	f10d 010f 	add.w	r1, sp, #15
c0de17c8:	2201      	movs	r2, #1
c0de17ca:	f009 f923 	bl	c0deaa14 <nvm_write>
c0de17ce:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de17d0:	480c      	ldr	r0, [pc, #48]	@ (c0de1804 <controls_callback+0x9c>)
c0de17d2:	490d      	ldr	r1, [pc, #52]	@ (c0de1808 <controls_callback+0xa0>)
c0de17d4:	4478      	add	r0, pc
c0de17d6:	4479      	add	r1, pc
c0de17d8:	e9cd 1000 	strd	r1, r0, [sp]
c0de17dc:	480b      	ldr	r0, [pc, #44]	@ (c0de180c <controls_callback+0xa4>)
c0de17de:	490c      	ldr	r1, [pc, #48]	@ (c0de1810 <controls_callback+0xa8>)
c0de17e0:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1814 <controls_callback+0xac>)
c0de17e2:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1818 <controls_callback+0xb0>)
c0de17e4:	4478      	add	r0, pc
c0de17e6:	4479      	add	r1, pc
c0de17e8:	447a      	add	r2, pc
c0de17ea:	447b      	add	r3, pc
c0de17ec:	f005 fdb8 	bl	c0de7360 <nbgl_useCaseChoice>
c0de17f0:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de17f2:	bf00      	nop
c0de17f4:	00000320 	.word	0x00000320
c0de17f8:	0000b27e 	.word	0x0000b27e
c0de17fc:	0000b262 	.word	0x0000b262
c0de1800:	0000b252 	.word	0x0000b252
c0de1804:	00000045 	.word	0x00000045
c0de1808:	00009de2 	.word	0x00009de2
c0de180c:	00009bc9 	.word	0x00009bc9
c0de1810:	00009bf4 	.word	0x00009bf4
c0de1814:	00009cb8 	.word	0x00009cb8
c0de1818:	00009ea8 	.word	0x00009ea8

c0de181c <review_warning_choice>:
c0de181c:	b5b0      	push	{r4, r5, r7, lr}
c0de181e:	b086      	sub	sp, #24
c0de1820:	b1a8      	cbz	r0, c0de184e <review_warning_choice+0x32>
c0de1822:	4c17      	ldr	r4, [pc, #92]	@ (c0de1880 <review_warning_choice+0x64>)
c0de1824:	4815      	ldr	r0, [pc, #84]	@ (c0de187c <review_warning_choice+0x60>)
c0de1826:	447c      	add	r4, pc
c0de1828:	eb09 0500 	add.w	r5, r9, r0
c0de182c:	f000 f834 	bl	c0de1898 <OUTLINED_FUNCTION_0>
c0de1830:	7840      	ldrb	r0, [r0, #1]
c0de1832:	fab0 f080 	clz	r0, r0
c0de1836:	0940      	lsrs	r0, r0, #5
c0de1838:	7628      	strb	r0, [r5, #24]
c0de183a:	f88d 0017 	strb.w	r0, [sp, #23]
c0de183e:	f000 f82b 	bl	c0de1898 <OUTLINED_FUNCTION_0>
c0de1842:	3001      	adds	r0, #1
c0de1844:	f10d 0117 	add.w	r1, sp, #23
c0de1848:	2201      	movs	r2, #1
c0de184a:	f009 f8e3 	bl	c0deaa14 <nvm_write>
c0de184e:	480b      	ldr	r0, [pc, #44]	@ (c0de187c <review_warning_choice+0x60>)
c0de1850:	2100      	movs	r1, #0
c0de1852:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1856:	480b      	ldr	r0, [pc, #44]	@ (c0de1884 <review_warning_choice+0x68>)
c0de1858:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1888 <review_warning_choice+0x6c>)
c0de185a:	4c0c      	ldr	r4, [pc, #48]	@ (c0de188c <review_warning_choice+0x70>)
c0de185c:	4478      	add	r0, pc
c0de185e:	447a      	add	r2, pc
c0de1860:	447c      	add	r4, pc
c0de1862:	e9cd 4200 	strd	r4, r2, [sp]
c0de1866:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de186a:	2200      	movs	r2, #0
c0de186c:	4808      	ldr	r0, [pc, #32]	@ (c0de1890 <review_warning_choice+0x74>)
c0de186e:	4909      	ldr	r1, [pc, #36]	@ (c0de1894 <review_warning_choice+0x78>)
c0de1870:	4478      	add	r0, pc
c0de1872:	4479      	add	r1, pc
c0de1874:	f005 f948 	bl	c0de6b08 <nbgl_useCaseHomeAndSettings>
c0de1878:	b006      	add	sp, #24
c0de187a:	bdb0      	pop	{r4, r5, r7, pc}
c0de187c:	00000320 	.word	0x00000320
c0de1880:	0000b1d6 	.word	0x0000b1d6
c0de1884:	fffffe71 	.word	0xfffffe71
c0de1888:	0000a84a 	.word	0x0000a84a
c0de188c:	0000a83c 	.word	0x0000a83c
c0de1890:	00009ea1 	.word	0x00009ea1
c0de1894:	000099c1 	.word	0x000099c1

c0de1898 <OUTLINED_FUNCTION_0>:
c0de1898:	4620      	mov	r0, r4
c0de189a:	f009 b837 	b.w	c0dea90c <pic>
	...

c0de18a0 <ui_display_address>:
c0de18a0:	b570      	push	{r4, r5, r6, lr}
c0de18a2:	b088      	sub	sp, #32
c0de18a4:	4e22      	ldr	r6, [pc, #136]	@ (c0de1930 <ui_display_address+0x90>)
c0de18a6:	eb09 0106 	add.w	r1, r9, r6
c0de18aa:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de18ae:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de18b2:	4308      	orrs	r0, r1
c0de18b4:	d12a      	bne.n	c0de190c <ui_display_address+0x6c>
c0de18b6:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1934 <ui_display_address+0x94>)
c0de18b8:	212b      	movs	r1, #43	@ 0x2b
c0de18ba:	eb09 0005 	add.w	r0, r9, r5
c0de18be:	f009 fc25 	bl	c0deb10c <__aeabi_memclr>
c0de18c2:	ac03      	add	r4, sp, #12
c0de18c4:	2114      	movs	r1, #20
c0de18c6:	4620      	mov	r0, r4
c0de18c8:	f009 fc20 	bl	c0deb10c <__aeabi_memclr>
c0de18cc:	eb09 0006 	add.w	r0, r9, r6
c0de18d0:	4621      	mov	r1, r4
c0de18d2:	2214      	movs	r2, #20
c0de18d4:	3008      	adds	r0, #8
c0de18d6:	f7fe fba7 	bl	c0de0028 <address_from_pubkey>
c0de18da:	b308      	cbz	r0, c0de1920 <ui_display_address+0x80>
c0de18dc:	eb09 0205 	add.w	r2, r9, r5
c0de18e0:	a803      	add	r0, sp, #12
c0de18e2:	2114      	movs	r1, #20
c0de18e4:	232b      	movs	r3, #43	@ 0x2b
c0de18e6:	f006 ff41 	bl	c0de876c <format_hex>
c0de18ea:	3001      	adds	r0, #1
c0de18ec:	d018      	beq.n	c0de1920 <ui_display_address+0x80>
c0de18ee:	4812      	ldr	r0, [pc, #72]	@ (c0de1938 <ui_display_address+0x98>)
c0de18f0:	2400      	movs	r4, #0
c0de18f2:	2100      	movs	r1, #0
c0de18f4:	4478      	add	r0, pc
c0de18f6:	e9cd 4000 	strd	r4, r0, [sp]
c0de18fa:	eb09 0005 	add.w	r0, r9, r5
c0de18fe:	4a0f      	ldr	r2, [pc, #60]	@ (c0de193c <ui_display_address+0x9c>)
c0de1900:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1940 <ui_display_address+0xa0>)
c0de1902:	447a      	add	r2, pc
c0de1904:	447b      	add	r3, pc
c0de1906:	f005 fa53 	bl	c0de6db0 <nbgl_useCaseAddressReview>
c0de190a:	e00e      	b.n	c0de192a <ui_display_address+0x8a>
c0de190c:	2000      	movs	r0, #0
c0de190e:	f809 0006 	strb.w	r0, [r9, r6]
c0de1912:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1916:	b008      	add	sp, #32
c0de1918:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de191c:	f000 b812 	b.w	c0de1944 <io_send_sw>
c0de1920:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1924:	f000 f80e 	bl	c0de1944 <io_send_sw>
c0de1928:	4604      	mov	r4, r0
c0de192a:	4620      	mov	r0, r4
c0de192c:	b008      	add	sp, #32
c0de192e:	bd70      	pop	{r4, r5, r6, pc}
c0de1930:	00000000 	.word	0x00000000
c0de1934:	0000033c 	.word	0x0000033c
c0de1938:	00000059 	.word	0x00000059
c0de193c:	00009ace 	.word	0x00009ace
c0de1940:	00009dfa 	.word	0x00009dfa

c0de1944 <io_send_sw>:
c0de1944:	4602      	mov	r2, r0
c0de1946:	2000      	movs	r0, #0
c0de1948:	2100      	movs	r1, #0
c0de194a:	f006 bfb1 	b.w	c0de88b0 <io_send_response_buffers>
	...

c0de1950 <review_choice>:
c0de1950:	b510      	push	{r4, lr}
c0de1952:	4604      	mov	r4, r0
c0de1954:	f7ff fe5e 	bl	c0de1614 <validate_pubkey>
c0de1958:	2007      	movs	r0, #7
c0de195a:	2c00      	cmp	r4, #0
c0de195c:	bf18      	it	ne
c0de195e:	2006      	movne	r0, #6
c0de1960:	4902      	ldr	r1, [pc, #8]	@ (c0de196c <review_choice+0x1c>)
c0de1962:	4479      	add	r1, pc
c0de1964:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1968:	f005 bbd0 	b.w	c0de710c <nbgl_useCaseReviewStatus>
c0de196c:	fffffd73 	.word	0xfffffd73

c0de1970 <ui_display_transaction_bs_choice>:
c0de1970:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1972:	b08d      	sub	sp, #52	@ 0x34
c0de1974:	4f43      	ldr	r7, [pc, #268]	@ (c0de1a84 <ui_display_transaction_bs_choice+0x114>)
c0de1976:	4604      	mov	r4, r0
c0de1978:	eb09 0007 	add.w	r0, r9, r7
c0de197c:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de1980:	2801      	cmp	r0, #1
c0de1982:	d15d      	bne.n	c0de1a40 <ui_display_transaction_bs_choice+0xd0>
c0de1984:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1988:	2801      	cmp	r0, #1
c0de198a:	d159      	bne.n	c0de1a40 <ui_display_transaction_bs_choice+0xd0>
c0de198c:	4e3e      	ldr	r6, [pc, #248]	@ (c0de1a88 <ui_display_transaction_bs_choice+0x118>)
c0de198e:	211e      	movs	r1, #30
c0de1990:	eb09 0006 	add.w	r0, r9, r6
c0de1994:	3014      	adds	r0, #20
c0de1996:	f009 fbb9 	bl	c0deb10c <__aeabi_memclr>
c0de199a:	ad05      	add	r5, sp, #20
c0de199c:	211e      	movs	r1, #30
c0de199e:	4628      	mov	r0, r5
c0de19a0:	f009 fbb4 	bl	c0deb10c <__aeabi_memclr>
c0de19a4:	eb09 0007 	add.w	r0, r9, r7
c0de19a8:	211e      	movs	r1, #30
c0de19aa:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de19ae:	2003      	movs	r0, #3
c0de19b0:	9000      	str	r0, [sp, #0]
c0de19b2:	4628      	mov	r0, r5
c0de19b4:	f006 fe93 	bl	c0de86de <format_fpu64>
c0de19b8:	2800      	cmp	r0, #0
c0de19ba:	d04b      	beq.n	c0de1a54 <ui_display_transaction_bs_choice+0xe4>
c0de19bc:	9500      	str	r5, [sp, #0]
c0de19be:	eb09 0506 	add.w	r5, r9, r6
c0de19c2:	211e      	movs	r1, #30
c0de19c4:	231e      	movs	r3, #30
c0de19c6:	4a31      	ldr	r2, [pc, #196]	@ (c0de1a8c <ui_display_transaction_bs_choice+0x11c>)
c0de19c8:	f105 0014 	add.w	r0, r5, #20
c0de19cc:	447a      	add	r2, pc
c0de19ce:	f008 fe03 	bl	c0dea5d8 <snprintf>
c0de19d2:	3554      	adds	r5, #84	@ 0x54
c0de19d4:	212b      	movs	r1, #43	@ 0x2b
c0de19d6:	4628      	mov	r0, r5
c0de19d8:	f009 fb98 	bl	c0deb10c <__aeabi_memclr>
c0de19dc:	eb09 0007 	add.w	r0, r9, r7
c0de19e0:	2114      	movs	r1, #20
c0de19e2:	462a      	mov	r2, r5
c0de19e4:	232b      	movs	r3, #43	@ 0x2b
c0de19e6:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de19ea:	f006 febf 	bl	c0de876c <format_hex>
c0de19ee:	3001      	adds	r0, #1
c0de19f0:	d033      	beq.n	c0de1a5a <ui_display_transaction_bs_choice+0xea>
c0de19f2:	4927      	ldr	r1, [pc, #156]	@ (c0de1a90 <ui_display_transaction_bs_choice+0x120>)
c0de19f4:	eb09 0006 	add.w	r0, r9, r6
c0de19f8:	2500      	movs	r5, #0
c0de19fa:	4602      	mov	r2, r0
c0de19fc:	4479      	add	r1, pc
c0de19fe:	f842 1f34 	str.w	r1, [r2, #52]!
c0de1a02:	f849 2006 	str.w	r2, [r9, r6]
c0de1a06:	2202      	movs	r2, #2
c0de1a08:	4922      	ldr	r1, [pc, #136]	@ (c0de1a94 <ui_display_transaction_bs_choice+0x124>)
c0de1a0a:	7202      	strb	r2, [r0, #8]
c0de1a0c:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de1a10:	7285      	strb	r5, [r0, #10]
c0de1a12:	4479      	add	r1, pc
c0de1a14:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de1a18:	f100 0114 	add.w	r1, r0, #20
c0de1a1c:	6381      	str	r1, [r0, #56]	@ 0x38
c0de1a1e:	481e      	ldr	r0, [pc, #120]	@ (c0de1a98 <ui_display_transaction_bs_choice+0x128>)
c0de1a20:	4478      	add	r0, pc
c0de1a22:	b314      	cbz	r4, c0de1a6a <ui_display_transaction_bs_choice+0xfa>
c0de1a24:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de1a28:	e9cd 5500 	strd	r5, r5, [sp]
c0de1a2c:	eb09 0106 	add.w	r1, r9, r6
c0de1a30:	2000      	movs	r0, #0
c0de1a32:	4a1a      	ldr	r2, [pc, #104]	@ (c0de1a9c <ui_display_transaction_bs_choice+0x12c>)
c0de1a34:	4b1a      	ldr	r3, [pc, #104]	@ (c0de1aa0 <ui_display_transaction_bs_choice+0x130>)
c0de1a36:	447a      	add	r2, pc
c0de1a38:	447b      	add	r3, pc
c0de1a3a:	f005 f9a7 	bl	c0de6d8c <nbgl_useCaseReviewBlindSigning>
c0de1a3e:	e011      	b.n	c0de1a64 <ui_display_transaction_bs_choice+0xf4>
c0de1a40:	2000      	movs	r0, #0
c0de1a42:	f809 0007 	strb.w	r0, [r9, r7]
c0de1a46:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1a4a:	b00d      	add	sp, #52	@ 0x34
c0de1a4c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1a50:	f000 b82c 	b.w	c0de1aac <io_send_sw>
c0de1a54:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de1a58:	e001      	b.n	c0de1a5e <ui_display_transaction_bs_choice+0xee>
c0de1a5a:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1a5e:	f000 f825 	bl	c0de1aac <io_send_sw>
c0de1a62:	4605      	mov	r5, r0
c0de1a64:	4628      	mov	r0, r5
c0de1a66:	b00d      	add	sp, #52	@ 0x34
c0de1a68:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1a6a:	9002      	str	r0, [sp, #8]
c0de1a6c:	e9cd 5500 	strd	r5, r5, [sp]
c0de1a70:	eb09 0106 	add.w	r1, r9, r6
c0de1a74:	2000      	movs	r0, #0
c0de1a76:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1aa4 <ui_display_transaction_bs_choice+0x134>)
c0de1a78:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1aa8 <ui_display_transaction_bs_choice+0x138>)
c0de1a7a:	447a      	add	r2, pc
c0de1a7c:	447b      	add	r3, pc
c0de1a7e:	f005 f8eb 	bl	c0de6c58 <nbgl_useCaseReview>
c0de1a82:	e7ef      	b.n	c0de1a64 <ui_display_transaction_bs_choice+0xf4>
c0de1a84:	00000000 	.word	0x00000000
c0de1a88:	00000368 	.word	0x00000368
c0de1a8c:	00009ca8 	.word	0x00009ca8
c0de1a90:	00009a8c 	.word	0x00009a8c
c0de1a94:	00009c6b 	.word	0x00009c6b
c0de1a98:	00000095 	.word	0x00000095
c0de1a9c:	0000999a 	.word	0x0000999a
c0de1aa0:	000099aa 	.word	0x000099aa
c0de1aa4:	00009956 	.word	0x00009956
c0de1aa8:	00009966 	.word	0x00009966

c0de1aac <io_send_sw>:
c0de1aac:	4602      	mov	r2, r0
c0de1aae:	2000      	movs	r0, #0
c0de1ab0:	2100      	movs	r1, #0
c0de1ab2:	f006 befd 	b.w	c0de88b0 <io_send_response_buffers>
	...

c0de1ab8 <review_choice>:
c0de1ab8:	b510      	push	{r4, lr}
c0de1aba:	4604      	mov	r4, r0
c0de1abc:	f7ff fdb6 	bl	c0de162c <validate_transaction>
c0de1ac0:	4903      	ldr	r1, [pc, #12]	@ (c0de1ad0 <review_choice+0x18>)
c0de1ac2:	f084 0001 	eor.w	r0, r4, #1
c0de1ac6:	4479      	add	r1, pc
c0de1ac8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1acc:	f005 bb1e 	b.w	c0de710c <nbgl_useCaseReviewStatus>
c0de1ad0:	fffffc0f 	.word	0xfffffc0f

c0de1ad4 <ui_display_blind_signed_transaction>:
c0de1ad4:	2001      	movs	r0, #1
c0de1ad6:	f7ff bf4b 	b.w	c0de1970 <ui_display_transaction_bs_choice>

c0de1ada <ui_display_transaction>:
c0de1ada:	2000      	movs	r0, #0
c0de1adc:	f7ff bf48 	b.w	c0de1970 <ui_display_transaction_bs_choice>

c0de1ae0 <zkn_prv_hash>:
c0de1ae0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1ae4:	460c      	mov	r4, r1
c0de1ae6:	e9cd 0200 	strd	r0, r2, [sp]
c0de1aea:	4668      	mov	r0, sp
c0de1aec:	2101      	movs	r1, #1
c0de1aee:	2601      	movs	r6, #1
c0de1af0:	4622      	mov	r2, r4
c0de1af2:	f008 f894 	bl	c0de9c1e <cx_blake2b_512_hash_iovec>
c0de1af6:	4605      	mov	r5, r0
c0de1af8:	bb18      	cbnz	r0, c0de1b42 <zkn_prv_hash+0x62>
c0de1afa:	7820      	ldrb	r0, [r4, #0]
c0de1afc:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1b00:	7020      	strb	r0, [r4, #0]
c0de1b02:	7fe0      	ldrb	r0, [r4, #31]
c0de1b04:	f366 109f 	bfi	r0, r6, #6, #26
c0de1b08:	77e0      	strb	r0, [r4, #31]
c0de1b0a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1b0e:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1b48 <zkn_prv_hash+0x68>)
c0de1b10:	447e      	add	r6, pc
c0de1b12:	47b0      	blx	r6
c0de1b14:	4680      	mov	r8, r0
c0de1b16:	468a      	mov	sl, r1
c0de1b18:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1b1c:	47b0      	blx	r6
c0de1b1e:	4683      	mov	fp, r0
c0de1b20:	460f      	mov	r7, r1
c0de1b22:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1b26:	47b0      	blx	r6
c0de1b28:	e9c4 0100 	strd	r0, r1, [r4]
c0de1b2c:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1b30:	47b0      	blx	r6
c0de1b32:	f104 0208 	add.w	r2, r4, #8
c0de1b36:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1b3a:	f104 0014 	add.w	r0, r4, #20
c0de1b3e:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1b42:	4628      	mov	r0, r5
c0de1b44:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1b48:	00000325 	.word	0x00000325

c0de1b4c <zkn_prv2pub>:
c0de1b4c:	b570      	push	{r4, r5, r6, lr}
c0de1b4e:	b092      	sub	sp, #72	@ 0x48
c0de1b50:	4614      	mov	r4, r2
c0de1b52:	6802      	ldr	r2, [r0, #0]
c0de1b54:	ae02      	add	r6, sp, #8
c0de1b56:	4605      	mov	r5, r0
c0de1b58:	4608      	mov	r0, r1
c0de1b5a:	4631      	mov	r1, r6
c0de1b5c:	f7ff ffc0 	bl	c0de1ae0 <zkn_prv_hash>
c0de1b60:	2000      	movs	r0, #0
c0de1b62:	2100      	movs	r1, #0
c0de1b64:	2820      	cmp	r0, #32
c0de1b66:	d009      	beq.n	c0de1b7c <zkn_prv2pub+0x30>
c0de1b68:	5c32      	ldrb	r2, [r6, r0]
c0de1b6a:	0149      	lsls	r1, r1, #5
c0de1b6c:	0613      	lsls	r3, r2, #24
c0de1b6e:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1b72:	5431      	strb	r1, [r6, r0]
c0de1b74:	f002 0107 	and.w	r1, r2, #7
c0de1b78:	3001      	adds	r0, #1
c0de1b7a:	e7f3      	b.n	c0de1b64 <zkn_prv2pub+0x18>
c0de1b7c:	4629      	mov	r1, r5
c0de1b7e:	4628      	mov	r0, r5
c0de1b80:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1b84:	9400      	str	r4, [sp, #0]
c0de1b86:	aa02      	add	r2, sp, #8
c0de1b88:	f001 f81c 	bl	c0de2bc4 <tEdwards_scalarMul>
c0de1b8c:	b918      	cbnz	r0, c0de1b96 <zkn_prv2pub+0x4a>
c0de1b8e:	4628      	mov	r0, r5
c0de1b90:	4621      	mov	r1, r4
c0de1b92:	f000 ff52 	bl	c0de2a3a <tEdwards_normalize>
c0de1b96:	b012      	add	sp, #72	@ 0x48
c0de1b98:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1b9c <EddsaPoseidon_Sign_final>:
c0de1b9c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1ba0:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1ba4:	4605      	mov	r5, r0
c0de1ba6:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1ba8:	2820      	cmp	r0, #32
c0de1baa:	d118      	bne.n	c0de1bde <EddsaPoseidon_Sign_final+0x42>
c0de1bac:	460e      	mov	r6, r1
c0de1bae:	a982      	add	r1, sp, #520	@ 0x208
c0de1bb0:	4628      	mov	r0, r5
c0de1bb2:	461f      	mov	r7, r3
c0de1bb4:	4692      	mov	sl, r2
c0de1bb6:	f000 fc0f 	bl	c0de23d8 <tEdwards_alloc>
c0de1bba:	b988      	cbnz	r0, c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1bbc:	682a      	ldr	r2, [r5, #0]
c0de1bbe:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1bc0:	4630      	mov	r0, r6
c0de1bc2:	4621      	mov	r1, r4
c0de1bc4:	f7ff ff8c 	bl	c0de1ae0 <zkn_prv_hash>
c0de1bc8:	b950      	cbnz	r0, c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1bca:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1bce:	2000      	movs	r0, #0
c0de1bd0:	a95a      	add	r1, sp, #360	@ 0x168
c0de1bd2:	2820      	cmp	r0, #32
c0de1bd4:	d008      	beq.n	c0de1be8 <EddsaPoseidon_Sign_final+0x4c>
c0de1bd6:	5c22      	ldrb	r2, [r4, r0]
c0de1bd8:	540a      	strb	r2, [r1, r0]
c0de1bda:	3001      	adds	r0, #1
c0de1bdc:	e7f9      	b.n	c0de1bd2 <EddsaPoseidon_Sign_final+0x36>
c0de1bde:	4894      	ldr	r0, [pc, #592]	@ (c0de1e30 <EddsaPoseidon_Sign_final+0x294>)
c0de1be0:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1be4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1be8:	a812      	add	r0, sp, #72	@ 0x48
c0de1bea:	2109      	movs	r1, #9
c0de1bec:	2240      	movs	r2, #64	@ 0x40
c0de1bee:	f008 f837 	bl	c0de9c60 <cx_hash_init_ex>
c0de1bf2:	2800      	cmp	r0, #0
c0de1bf4:	d1f4      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1bf6:	f104 0120 	add.w	r1, r4, #32
c0de1bfa:	a812      	add	r0, sp, #72	@ 0x48
c0de1bfc:	2220      	movs	r2, #32
c0de1bfe:	f008 f834 	bl	c0de9c6a <cx_hash_update>
c0de1c02:	2800      	cmp	r0, #0
c0de1c04:	d1ec      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c06:	a812      	add	r0, sp, #72	@ 0x48
c0de1c08:	4639      	mov	r1, r7
c0de1c0a:	2220      	movs	r2, #32
c0de1c0c:	f008 f82d 	bl	c0de9c6a <cx_hash_update>
c0de1c10:	2800      	cmp	r0, #0
c0de1c12:	d1e5      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c14:	a812      	add	r0, sp, #72	@ 0x48
c0de1c16:	ac62      	add	r4, sp, #392	@ 0x188
c0de1c18:	4621      	mov	r1, r4
c0de1c1a:	f008 f81c 	bl	c0de9c56 <cx_hash_final>
c0de1c1e:	2800      	cmp	r0, #0
c0de1c20:	d1de      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c22:	203f      	movs	r0, #63	@ 0x3f
c0de1c24:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1c26:	1c42      	adds	r2, r0, #1
c0de1c28:	d004      	beq.n	c0de1c34 <EddsaPoseidon_Sign_final+0x98>
c0de1c2a:	5c22      	ldrb	r2, [r4, r0]
c0de1c2c:	3801      	subs	r0, #1
c0de1c2e:	f801 2b01 	strb.w	r2, [r1], #1
c0de1c32:	e7f8      	b.n	c0de1c26 <EddsaPoseidon_Sign_final+0x8a>
c0de1c34:	a889      	add	r0, sp, #548	@ 0x224
c0de1c36:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1c38:	2140      	movs	r1, #64	@ 0x40
c0de1c3a:	2340      	movs	r3, #64	@ 0x40
c0de1c3c:	f008 ff10 	bl	c0deaa60 <cx_bn_alloc_init>
c0de1c40:	2800      	cmp	r0, #0
c0de1c42:	d1cd      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c44:	a887      	add	r0, sp, #540	@ 0x21c
c0de1c46:	2140      	movs	r1, #64	@ 0x40
c0de1c48:	f008 ff00 	bl	c0deaa4c <cx_bn_alloc>
c0de1c4c:	2800      	cmp	r0, #0
c0de1c4e:	d1c7      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c50:	4978      	ldr	r1, [pc, #480]	@ (c0de1e34 <EddsaPoseidon_Sign_final+0x298>)
c0de1c52:	f10d 0808 	add.w	r8, sp, #8
c0de1c56:	2240      	movs	r2, #64	@ 0x40
c0de1c58:	4640      	mov	r0, r8
c0de1c5a:	4479      	add	r1, pc
c0de1c5c:	f009 fa59 	bl	c0deb112 <__aeabi_memcpy>
c0de1c60:	a888      	add	r0, sp, #544	@ 0x220
c0de1c62:	2140      	movs	r1, #64	@ 0x40
c0de1c64:	4642      	mov	r2, r8
c0de1c66:	2340      	movs	r3, #64	@ 0x40
c0de1c68:	f008 fefa 	bl	c0deaa60 <cx_bn_alloc_init>
c0de1c6c:	2800      	cmp	r0, #0
c0de1c6e:	d1b7      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c70:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1c72:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1c76:	f008 ff87 	bl	c0deab88 <cx_bn_reduce>
c0de1c7a:	2800      	cmp	r0, #0
c0de1c7c:	d1b0      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c7e:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1c80:	f105 010c 	add.w	r1, r5, #12
c0de1c84:	ab82      	add	r3, sp, #520	@ 0x208
c0de1c86:	4628      	mov	r0, r5
c0de1c88:	f000 ff36 	bl	c0de2af8 <tEdwards_scalarMul_bn>
c0de1c8c:	2800      	cmp	r0, #0
c0de1c8e:	d1a7      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c90:	a982      	add	r1, sp, #520	@ 0x208
c0de1c92:	4628      	mov	r0, r5
c0de1c94:	f000 fed1 	bl	c0de2a3a <tEdwards_normalize>
c0de1c98:	2800      	cmp	r0, #0
c0de1c9a:	d1a1      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1c9c:	f10b 0320 	add.w	r3, fp, #32
c0de1ca0:	a982      	add	r1, sp, #520	@ 0x208
c0de1ca2:	4628      	mov	r0, r5
c0de1ca4:	465a      	mov	r2, fp
c0de1ca6:	f000 fea2 	bl	c0de29ee <tEdwards_export>
c0de1caa:	2800      	cmp	r0, #0
c0de1cac:	d198      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1cae:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1cb0:	a952      	add	r1, sp, #328	@ 0x148
c0de1cb2:	2220      	movs	r2, #32
c0de1cb4:	f008 ff14 	bl	c0deaae0 <cx_bn_export>
c0de1cb8:	2800      	cmp	r0, #0
c0de1cba:	d191      	bne.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1cbc:	a888      	add	r0, sp, #544	@ 0x220
c0de1cbe:	f008 fedb 	bl	c0deaa78 <cx_bn_destroy>
c0de1cc2:	2800      	cmp	r0, #0
c0de1cc4:	f47f af8c 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1cc8:	a889      	add	r0, sp, #548	@ 0x224
c0de1cca:	f008 fed5 	bl	c0deaa78 <cx_bn_destroy>
c0de1cce:	2800      	cmp	r0, #0
c0de1cd0:	f47f af86 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1cd4:	a887      	add	r0, sp, #540	@ 0x21c
c0de1cd6:	f008 fecf 	bl	c0deaa78 <cx_bn_destroy>
c0de1cda:	2800      	cmp	r0, #0
c0de1cdc:	f47f af80 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1ce0:	4628      	mov	r0, r5
c0de1ce2:	f000 fe28 	bl	c0de2936 <tEdwards_Curve_partial_destroy>
c0de1ce6:	2800      	cmp	r0, #0
c0de1ce8:	f47f af7a 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1cec:	f105 0420 	add.w	r4, r5, #32
c0de1cf0:	a88a      	add	r0, sp, #552	@ 0x228
c0de1cf2:	f000 f8a5 	bl	c0de1e40 <OUTLINED_FUNCTION_0>
c0de1cf6:	2800      	cmp	r0, #0
c0de1cf8:	f47f af72 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1cfc:	201f      	movs	r0, #31
c0de1cfe:	a962      	add	r1, sp, #392	@ 0x188
c0de1d00:	1c42      	adds	r2, r0, #1
c0de1d02:	d004      	beq.n	c0de1d0e <EddsaPoseidon_Sign_final+0x172>
c0de1d04:	5c3a      	ldrb	r2, [r7, r0]
c0de1d06:	3801      	subs	r0, #1
c0de1d08:	f801 2b01 	strb.w	r2, [r1], #1
c0de1d0c:	e7f8      	b.n	c0de1d00 <EddsaPoseidon_Sign_final+0x164>
c0de1d0e:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de1d10:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de1d12:	f008 fed1 	bl	c0deaab8 <cx_bn_copy>
c0de1d16:	2800      	cmp	r0, #0
c0de1d18:	f47f af62 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d1c:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1d1e:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de1d20:	f008 feca 	bl	c0deaab8 <cx_bn_copy>
c0de1d24:	2800      	cmp	r0, #0
c0de1d26:	f47f af5b 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d2a:	f8da 1000 	ldr.w	r1, [sl]
c0de1d2e:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de1d30:	f008 fec2 	bl	c0deaab8 <cx_bn_copy>
c0de1d34:	2800      	cmp	r0, #0
c0de1d36:	f47f af53 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d3a:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1d3e:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de1d40:	f008 feba 	bl	c0deaab8 <cx_bn_copy>
c0de1d44:	2800      	cmp	r0, #0
c0de1d46:	f47f af4b 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d4a:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1d4c:	a962      	add	r1, sp, #392	@ 0x188
c0de1d4e:	2220      	movs	r2, #32
c0de1d50:	f008 fea6 	bl	c0deaaa0 <cx_bn_init>
c0de1d54:	2800      	cmp	r0, #0
c0de1d56:	f47f af43 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d5a:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1d5c:	4622      	mov	r2, r4
c0de1d5e:	4601      	mov	r1, r0
c0de1d60:	f008 ff48 	bl	c0deabf4 <cx_mont_to_montgomery>
c0de1d64:	2800      	cmp	r0, #0
c0de1d66:	f47f af3b 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d6a:	a982      	add	r1, sp, #520	@ 0x208
c0de1d6c:	4628      	mov	r0, r5
c0de1d6e:	f000 fb48 	bl	c0de2402 <tEdwards_destroy>
c0de1d72:	2800      	cmp	r0, #0
c0de1d74:	f47f af34 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d78:	a885      	add	r0, sp, #532	@ 0x214
c0de1d7a:	2120      	movs	r1, #32
c0de1d7c:	f008 fe66 	bl	c0deaa4c <cx_bn_alloc>
c0de1d80:	2800      	cmp	r0, #0
c0de1d82:	f47f af2d 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d86:	a88a      	add	r0, sp, #552	@ 0x228
c0de1d88:	aa85      	add	r2, sp, #532	@ 0x214
c0de1d8a:	2100      	movs	r1, #0
c0de1d8c:	2301      	movs	r3, #1
c0de1d8e:	f001 f8a5 	bl	c0de2edc <Poseidon>
c0de1d92:	2800      	cmp	r0, #0
c0de1d94:	f47f af24 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1d98:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1d9a:	4622      	mov	r2, r4
c0de1d9c:	4601      	mov	r1, r0
c0de1d9e:	f008 ff35 	bl	c0deac0c <cx_mont_from_montgomery>
c0de1da2:	2800      	cmp	r0, #0
c0de1da4:	f47f af1c 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1da8:	a886      	add	r0, sp, #536	@ 0x218
c0de1daa:	aa5a      	add	r2, sp, #360	@ 0x168
c0de1dac:	2120      	movs	r1, #32
c0de1dae:	2320      	movs	r3, #32
c0de1db0:	f008 fe56 	bl	c0deaa60 <cx_bn_alloc_init>
c0de1db4:	2800      	cmp	r0, #0
c0de1db6:	f47f af13 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1dba:	a801      	add	r0, sp, #4
c0de1dbc:	2120      	movs	r1, #32
c0de1dbe:	f008 fe45 	bl	c0deaa4c <cx_bn_alloc>
c0de1dc2:	2800      	cmp	r0, #0
c0de1dc4:	f47f af0c 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1dc8:	f108 0220 	add.w	r2, r8, #32
c0de1dcc:	a888      	add	r0, sp, #544	@ 0x220
c0de1dce:	2120      	movs	r1, #32
c0de1dd0:	2320      	movs	r3, #32
c0de1dd2:	f008 fe45 	bl	c0deaa60 <cx_bn_alloc_init>
c0de1dd6:	2800      	cmp	r0, #0
c0de1dd8:	f47f af02 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1ddc:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1dde:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de1de2:	9801      	ldr	r0, [sp, #4]
c0de1de4:	f008 fec4 	bl	c0deab70 <cx_bn_mod_mul>
c0de1de8:	2800      	cmp	r0, #0
c0de1dea:	f47f aef9 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1dee:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1df0:	a952      	add	r1, sp, #328	@ 0x148
c0de1df2:	2220      	movs	r2, #32
c0de1df4:	f008 fe54 	bl	c0deaaa0 <cx_bn_init>
c0de1df8:	2800      	cmp	r0, #0
c0de1dfa:	f47f aef1 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1dfe:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1e00:	9a01      	ldr	r2, [sp, #4]
c0de1e02:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de1e06:	f008 fe9b 	bl	c0deab40 <cx_bn_mod_add>
c0de1e0a:	2800      	cmp	r0, #0
c0de1e0c:	f47f aee8 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1e10:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de1e12:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de1e16:	f008 feb7 	bl	c0deab88 <cx_bn_reduce>
c0de1e1a:	2800      	cmp	r0, #0
c0de1e1c:	f47f aee0 	bne.w	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1e20:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1e22:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de1e26:	2220      	movs	r2, #32
c0de1e28:	f008 fe5a 	bl	c0deaae0 <cx_bn_export>
c0de1e2c:	e6d8      	b.n	c0de1be0 <EddsaPoseidon_Sign_final+0x44>
c0de1e2e:	bf00      	nop
c0de1e30:	5a4b4e03 	.word	0x5a4b4e03
c0de1e34:	0000a4a2 	.word	0x0000a4a2

c0de1e38 <rev64>:
c0de1e38:	ba0a      	rev	r2, r1
c0de1e3a:	ba01      	rev	r1, r0
c0de1e3c:	4610      	mov	r0, r2
c0de1e3e:	4770      	bx	lr

c0de1e40 <OUTLINED_FUNCTION_0>:
c0de1e40:	2105      	movs	r1, #5
c0de1e42:	2205      	movs	r2, #5
c0de1e44:	4623      	mov	r3, r4
c0de1e46:	f000 bfe3 	b.w	c0de2e10 <Poseidon_alloc_init>

c0de1e4a <zkn_frost_interpolate>:
c0de1e4a:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1e4e:	b085      	sub	sp, #20
c0de1e50:	460e      	mov	r6, r1
c0de1e52:	4607      	mov	r7, r0
c0de1e54:	a803      	add	r0, sp, #12
c0de1e56:	2120      	movs	r1, #32
c0de1e58:	f000 fab7 	bl	c0de23ca <OUTLINED_FUNCTION_2>
c0de1e5c:	b998      	cbnz	r0, c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1e5e:	a802      	add	r0, sp, #8
c0de1e60:	2120      	movs	r1, #32
c0de1e62:	f008 fdf3 	bl	c0deaa4c <cx_bn_alloc>
c0de1e66:	b970      	cbnz	r0, c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1e68:	a801      	add	r0, sp, #4
c0de1e6a:	2120      	movs	r1, #32
c0de1e6c:	f008 fdee 	bl	c0deaa4c <cx_bn_alloc>
c0de1e70:	b948      	cbnz	r0, c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1e72:	9803      	ldr	r0, [sp, #12]
c0de1e74:	2101      	movs	r1, #1
c0de1e76:	f008 fe29 	bl	c0deaacc <cx_bn_set_u32>
c0de1e7a:	b920      	cbnz	r0, c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1e7c:	9802      	ldr	r0, [sp, #8]
c0de1e7e:	2101      	movs	r1, #1
c0de1e80:	f008 fe24 	bl	c0deaacc <cx_bn_set_u32>
c0de1e84:	b110      	cbz	r0, c0de1e8c <zkn_frost_interpolate+0x42>
c0de1e86:	b005      	add	sp, #20
c0de1e88:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1e8c:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de1e90:	f10d 0a10 	add.w	sl, sp, #16
c0de1e94:	b31e      	cbz	r6, c0de1ede <zkn_frost_interpolate+0x94>
c0de1e96:	6838      	ldr	r0, [r7, #0]
c0de1e98:	4629      	mov	r1, r5
c0de1e9a:	4652      	mov	r2, sl
c0de1e9c:	f008 fe2c 	bl	c0deaaf8 <cx_bn_cmp>
c0de1ea0:	2800      	cmp	r0, #0
c0de1ea2:	d1f0      	bne.n	c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1ea4:	9804      	ldr	r0, [sp, #16]
c0de1ea6:	b1b8      	cbz	r0, c0de1ed8 <zkn_frost_interpolate+0x8e>
c0de1ea8:	9802      	ldr	r0, [sp, #8]
c0de1eaa:	683a      	ldr	r2, [r7, #0]
c0de1eac:	4623      	mov	r3, r4
c0de1eae:	4601      	mov	r1, r0
c0de1eb0:	f008 fe5e 	bl	c0deab70 <cx_bn_mod_mul>
c0de1eb4:	2800      	cmp	r0, #0
c0de1eb6:	d1e6      	bne.n	c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1eb8:	6839      	ldr	r1, [r7, #0]
c0de1eba:	9801      	ldr	r0, [sp, #4]
c0de1ebc:	462a      	mov	r2, r5
c0de1ebe:	4623      	mov	r3, r4
c0de1ec0:	f008 fe4a 	bl	c0deab58 <cx_bn_mod_sub>
c0de1ec4:	2800      	cmp	r0, #0
c0de1ec6:	d1de      	bne.n	c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1ec8:	9803      	ldr	r0, [sp, #12]
c0de1eca:	9a01      	ldr	r2, [sp, #4]
c0de1ecc:	4623      	mov	r3, r4
c0de1ece:	4601      	mov	r1, r0
c0de1ed0:	f008 fe4e 	bl	c0deab70 <cx_bn_mod_mul>
c0de1ed4:	2800      	cmp	r0, #0
c0de1ed6:	d1d6      	bne.n	c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1ed8:	3704      	adds	r7, #4
c0de1eda:	3e01      	subs	r6, #1
c0de1edc:	e7da      	b.n	c0de1e94 <zkn_frost_interpolate+0x4a>
c0de1ede:	9903      	ldr	r1, [sp, #12]
c0de1ee0:	4640      	mov	r0, r8
c0de1ee2:	4622      	mov	r2, r4
c0de1ee4:	f008 fe5c 	bl	c0deaba0 <cx_bn_mod_invert_nprime>
c0de1ee8:	2800      	cmp	r0, #0
c0de1eea:	d1cc      	bne.n	c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1eec:	9a02      	ldr	r2, [sp, #8]
c0de1eee:	4640      	mov	r0, r8
c0de1ef0:	4641      	mov	r1, r8
c0de1ef2:	4623      	mov	r3, r4
c0de1ef4:	f008 fe3c 	bl	c0deab70 <cx_bn_mod_mul>
c0de1ef8:	2800      	cmp	r0, #0
c0de1efa:	d1c4      	bne.n	c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1efc:	a803      	add	r0, sp, #12
c0de1efe:	f008 fdbb 	bl	c0deaa78 <cx_bn_destroy>
c0de1f02:	2800      	cmp	r0, #0
c0de1f04:	d1bf      	bne.n	c0de1e86 <zkn_frost_interpolate+0x3c>
c0de1f06:	a802      	add	r0, sp, #8
c0de1f08:	f008 fdb6 	bl	c0deaa78 <cx_bn_destroy>
c0de1f0c:	e7bb      	b.n	c0de1e86 <zkn_frost_interpolate+0x3c>

c0de1f0e <zkn_frost_interpolate_secrets>:
c0de1f0e:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de1f12:	460f      	mov	r7, r1
c0de1f14:	4606      	mov	r6, r0
c0de1f16:	a802      	add	r0, sp, #8
c0de1f18:	2120      	movs	r1, #32
c0de1f1a:	461c      	mov	r4, r3
c0de1f1c:	4692      	mov	sl, r2
c0de1f1e:	f008 fd95 	bl	c0deaa4c <cx_bn_alloc>
c0de1f22:	b108      	cbz	r0, c0de1f28 <zkn_frost_interpolate_secrets+0x1a>
c0de1f24:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de1f28:	a801      	add	r0, sp, #4
c0de1f2a:	2120      	movs	r1, #32
c0de1f2c:	f008 fd8e 	bl	c0deaa4c <cx_bn_alloc>
c0de1f30:	2800      	cmp	r0, #0
c0de1f32:	d1f7      	bne.n	c0de1f24 <zkn_frost_interpolate_secrets+0x16>
c0de1f34:	9802      	ldr	r0, [sp, #8]
c0de1f36:	2100      	movs	r1, #0
c0de1f38:	f008 fdc8 	bl	c0deaacc <cx_bn_set_u32>
c0de1f3c:	2800      	cmp	r0, #0
c0de1f3e:	d1f1      	bne.n	c0de1f24 <zkn_frost_interpolate_secrets+0x16>
c0de1f40:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de1f44:	2500      	movs	r5, #0
c0de1f46:	42ac      	cmp	r4, r5
c0de1f48:	d01d      	beq.n	c0de1f86 <zkn_frost_interpolate_secrets+0x78>
c0de1f4a:	9801      	ldr	r0, [sp, #4]
c0de1f4c:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de1f50:	68b3      	ldr	r3, [r6, #8]
c0de1f52:	4621      	mov	r1, r4
c0de1f54:	9000      	str	r0, [sp, #0]
c0de1f56:	4638      	mov	r0, r7
c0de1f58:	f7ff ff77 	bl	c0de1e4a <zkn_frost_interpolate>
c0de1f5c:	2800      	cmp	r0, #0
c0de1f5e:	d1e1      	bne.n	c0de1f24 <zkn_frost_interpolate_secrets+0x16>
c0de1f60:	9801      	ldr	r0, [sp, #4]
c0de1f62:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de1f66:	68b3      	ldr	r3, [r6, #8]
c0de1f68:	4601      	mov	r1, r0
c0de1f6a:	f008 fe01 	bl	c0deab70 <cx_bn_mod_mul>
c0de1f6e:	2800      	cmp	r0, #0
c0de1f70:	d1d8      	bne.n	c0de1f24 <zkn_frost_interpolate_secrets+0x16>
c0de1f72:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de1f76:	68b3      	ldr	r3, [r6, #8]
c0de1f78:	4601      	mov	r1, r0
c0de1f7a:	f008 fde1 	bl	c0deab40 <cx_bn_mod_add>
c0de1f7e:	3501      	adds	r5, #1
c0de1f80:	2800      	cmp	r0, #0
c0de1f82:	d0e0      	beq.n	c0de1f46 <zkn_frost_interpolate_secrets+0x38>
c0de1f84:	e7ce      	b.n	c0de1f24 <zkn_frost_interpolate_secrets+0x16>
c0de1f86:	68b2      	ldr	r2, [r6, #8]
c0de1f88:	9902      	ldr	r1, [sp, #8]
c0de1f8a:	4640      	mov	r0, r8
c0de1f8c:	f008 fdfc 	bl	c0deab88 <cx_bn_reduce>
c0de1f90:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de1f94 <zkn_evalshare>:
c0de1f94:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de1f98:	460e      	mov	r6, r1
c0de1f9a:	6801      	ldr	r1, [r0, #0]
c0de1f9c:	4607      	mov	r7, r0
c0de1f9e:	a801      	add	r0, sp, #4
c0de1fa0:	f000 fa13 	bl	c0de23ca <OUTLINED_FUNCTION_2>
c0de1fa4:	b108      	cbz	r0, c0de1faa <zkn_evalshare+0x16>
c0de1fa6:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de1faa:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de1fae:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de1fb2:	4640      	mov	r0, r8
c0de1fb4:	f008 fd80 	bl	c0deaab8 <cx_bn_copy>
c0de1fb8:	2800      	cmp	r0, #0
c0de1fba:	d1f4      	bne.n	c0de1fa6 <zkn_evalshare+0x12>
c0de1fbc:	3e04      	subs	r6, #4
c0de1fbe:	68bb      	ldr	r3, [r7, #8]
c0de1fc0:	9801      	ldr	r0, [sp, #4]
c0de1fc2:	4641      	mov	r1, r8
c0de1fc4:	b17d      	cbz	r5, c0de1fe6 <zkn_evalshare+0x52>
c0de1fc6:	4622      	mov	r2, r4
c0de1fc8:	f008 fdd2 	bl	c0deab70 <cx_bn_mod_mul>
c0de1fcc:	2800      	cmp	r0, #0
c0de1fce:	d1ea      	bne.n	c0de1fa6 <zkn_evalshare+0x12>
c0de1fd0:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de1fd4:	68bb      	ldr	r3, [r7, #8]
c0de1fd6:	9901      	ldr	r1, [sp, #4]
c0de1fd8:	4640      	mov	r0, r8
c0de1fda:	f008 fdb1 	bl	c0deab40 <cx_bn_mod_add>
c0de1fde:	3d01      	subs	r5, #1
c0de1fe0:	2800      	cmp	r0, #0
c0de1fe2:	d0ec      	beq.n	c0de1fbe <zkn_evalshare+0x2a>
c0de1fe4:	e7df      	b.n	c0de1fa6 <zkn_evalshare+0x12>
c0de1fe6:	461a      	mov	r2, r3
c0de1fe8:	f008 fdce 	bl	c0deab88 <cx_bn_reduce>
c0de1fec:	2800      	cmp	r0, #0
c0de1fee:	d1da      	bne.n	c0de1fa6 <zkn_evalshare+0x12>
c0de1ff0:	9901      	ldr	r1, [sp, #4]
c0de1ff2:	4640      	mov	r0, r8
c0de1ff4:	f008 fd60 	bl	c0deaab8 <cx_bn_copy>
c0de1ff8:	2800      	cmp	r0, #0
c0de1ffa:	d1d4      	bne.n	c0de1fa6 <zkn_evalshare+0x12>
c0de1ffc:	a801      	add	r0, sp, #4
c0de1ffe:	f008 fd3b 	bl	c0deaa78 <cx_bn_destroy>
c0de2002:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de2006 <zkn_encode_group_commitmentHash>:
c0de2006:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de200a:	b0d6      	sub	sp, #344	@ 0x158
c0de200c:	4606      	mov	r6, r0
c0de200e:	a816      	add	r0, sp, #88	@ 0x58
c0de2010:	461c      	mov	r4, r3
c0de2012:	4615      	mov	r5, r2
c0de2014:	460f      	mov	r7, r1
c0de2016:	f001 f8eb 	bl	c0de31f0 <zkn_frost_H5_init>
c0de201a:	b110      	cbz	r0, c0de2022 <zkn_encode_group_commitmentHash+0x1c>
c0de201c:	b056      	add	sp, #344	@ 0x158
c0de201e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2022:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de2026:	9401      	str	r4, [sp, #4]
c0de2028:	a806      	add	r0, sp, #24
c0de202a:	f04f 0a00 	mov.w	sl, #0
c0de202e:	f04f 0b02 	mov.w	fp, #2
c0de2032:	2604      	movs	r6, #4
c0de2034:	2400      	movs	r4, #0
c0de2036:	9502      	str	r5, [sp, #8]
c0de2038:	f1a0 0801 	sub.w	r8, r0, #1
c0de203c:	42ac      	cmp	r4, r5
c0de203e:	d058      	beq.n	c0de20f2 <zkn_encode_group_commitmentHash+0xec>
c0de2040:	9805      	ldr	r0, [sp, #20]
c0de2042:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de2046:	9103      	str	r1, [sp, #12]
c0de2048:	6805      	ldr	r5, [r0, #0]
c0de204a:	9804      	ldr	r0, [sp, #16]
c0de204c:	fb05 000a 	mla	r0, r5, sl, r0
c0de2050:	4629      	mov	r1, r5
c0de2052:	b129      	cbz	r1, c0de2060 <zkn_encode_group_commitmentHash+0x5a>
c0de2054:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de2058:	f808 2001 	strb.w	r2, [r8, r1]
c0de205c:	3901      	subs	r1, #1
c0de205e:	e7f8      	b.n	c0de2052 <zkn_encode_group_commitmentHash+0x4c>
c0de2060:	a816      	add	r0, sp, #88	@ 0x58
c0de2062:	a906      	add	r1, sp, #24
c0de2064:	462a      	mov	r2, r5
c0de2066:	f001 f8dd 	bl	c0de3224 <zkn_frost_hash_update>
c0de206a:	2800      	cmp	r0, #0
c0de206c:	d1d6      	bne.n	c0de201c <zkn_encode_group_commitmentHash+0x16>
c0de206e:	9803      	ldr	r0, [sp, #12]
c0de2070:	9f04      	ldr	r7, [sp, #16]
c0de2072:	1c43      	adds	r3, r0, #1
c0de2074:	9805      	ldr	r0, [sp, #20]
c0de2076:	fb05 710b 	mla	r1, r5, fp, r7
c0de207a:	6802      	ldr	r2, [r0, #0]
c0de207c:	1e50      	subs	r0, r2, #1
c0de207e:	4615      	mov	r5, r2
c0de2080:	fb02 0303 	mla	r3, r2, r3, r0
c0de2084:	5cfb      	ldrb	r3, [r7, r3]
c0de2086:	b12d      	cbz	r5, c0de2094 <zkn_encode_group_commitmentHash+0x8e>
c0de2088:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de208c:	f808 7005 	strb.w	r7, [r8, r5]
c0de2090:	3d01      	subs	r5, #1
c0de2092:	e7f8      	b.n	c0de2086 <zkn_encode_group_commitmentHash+0x80>
c0de2094:	a906      	add	r1, sp, #24
c0de2096:	5c0d      	ldrb	r5, [r1, r0]
c0de2098:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de209c:	540b      	strb	r3, [r1, r0]
c0de209e:	a816      	add	r0, sp, #88	@ 0x58
c0de20a0:	f001 f8c0 	bl	c0de3224 <zkn_frost_hash_update>
c0de20a4:	2800      	cmp	r0, #0
c0de20a6:	d1b9      	bne.n	c0de201c <zkn_encode_group_commitmentHash+0x16>
c0de20a8:	9805      	ldr	r0, [sp, #20]
c0de20aa:	9d04      	ldr	r5, [sp, #16]
c0de20ac:	6802      	ldr	r2, [r0, #0]
c0de20ae:	9803      	ldr	r0, [sp, #12]
c0de20b0:	1cc3      	adds	r3, r0, #3
c0de20b2:	1e50      	subs	r0, r2, #1
c0de20b4:	fb02 5106 	mla	r1, r2, r6, r5
c0de20b8:	fb02 0303 	mla	r3, r2, r3, r0
c0de20bc:	5ceb      	ldrb	r3, [r5, r3]
c0de20be:	4615      	mov	r5, r2
c0de20c0:	b12d      	cbz	r5, c0de20ce <zkn_encode_group_commitmentHash+0xc8>
c0de20c2:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de20c6:	f808 7005 	strb.w	r7, [r8, r5]
c0de20ca:	3d01      	subs	r5, #1
c0de20cc:	e7f8      	b.n	c0de20c0 <zkn_encode_group_commitmentHash+0xba>
c0de20ce:	a906      	add	r1, sp, #24
c0de20d0:	5c0d      	ldrb	r5, [r1, r0]
c0de20d2:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de20d6:	540b      	strb	r3, [r1, r0]
c0de20d8:	a816      	add	r0, sp, #88	@ 0x58
c0de20da:	f001 f8a3 	bl	c0de3224 <zkn_frost_hash_update>
c0de20de:	3605      	adds	r6, #5
c0de20e0:	3401      	adds	r4, #1
c0de20e2:	9d02      	ldr	r5, [sp, #8]
c0de20e4:	f10b 0b05 	add.w	fp, fp, #5
c0de20e8:	f10a 0a05 	add.w	sl, sl, #5
c0de20ec:	2800      	cmp	r0, #0
c0de20ee:	d0a5      	beq.n	c0de203c <zkn_encode_group_commitmentHash+0x36>
c0de20f0:	e794      	b.n	c0de201c <zkn_encode_group_commitmentHash+0x16>
c0de20f2:	9805      	ldr	r0, [sp, #20]
c0de20f4:	6881      	ldr	r1, [r0, #8]
c0de20f6:	a816      	add	r0, sp, #88	@ 0x58
c0de20f8:	9a01      	ldr	r2, [sp, #4]
c0de20fa:	f001 f895 	bl	c0de3228 <zkn_frost_hash_final>
c0de20fe:	e78d      	b.n	c0de201c <zkn_encode_group_commitmentHash+0x16>

c0de2100 <zkn_compute_group_commitment>:
c0de2100:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2104:	b088      	sub	sp, #32
c0de2106:	460d      	mov	r5, r1
c0de2108:	a905      	add	r1, sp, #20
c0de210a:	461f      	mov	r7, r3
c0de210c:	4693      	mov	fp, r2
c0de210e:	4604      	mov	r4, r0
c0de2110:	f000 f962 	bl	c0de23d8 <tEdwards_alloc>
c0de2114:	b948      	cbnz	r0, c0de212a <zkn_compute_group_commitment+0x2a>
c0de2116:	a902      	add	r1, sp, #8
c0de2118:	4620      	mov	r0, r4
c0de211a:	f000 f95d 	bl	c0de23d8 <tEdwards_alloc>
c0de211e:	b920      	cbnz	r0, c0de212a <zkn_compute_group_commitment+0x2a>
c0de2120:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2122:	4620      	mov	r0, r4
c0de2124:	f000 fc50 	bl	c0de29c8 <tEdwards_SetNeutral>
c0de2128:	b110      	cbz	r0, c0de2130 <zkn_compute_group_commitment+0x30>
c0de212a:	b008      	add	sp, #32
c0de212c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2130:	ae05      	add	r6, sp, #20
c0de2132:	f04f 0800 	mov.w	r8, #0
c0de2136:	f04f 0a04 	mov.w	sl, #4
c0de213a:	9501      	str	r5, [sp, #4]
c0de213c:	4547      	cmp	r7, r8
c0de213e:	d041      	beq.n	c0de21c4 <zkn_compute_group_commitment+0xc4>
c0de2140:	6822      	ldr	r2, [r4, #0]
c0de2142:	f1aa 0003 	sub.w	r0, sl, #3
c0de2146:	4633      	mov	r3, r6
c0de2148:	fb02 5100 	mla	r1, r2, r0, r5
c0de214c:	f1aa 0002 	sub.w	r0, sl, #2
c0de2150:	fb02 5200 	mla	r2, r2, r0, r5
c0de2154:	4620      	mov	r0, r4
c0de2156:	f000 fbaf 	bl	c0de28b8 <tEdwards_init>
c0de215a:	2800      	cmp	r0, #0
c0de215c:	d1e5      	bne.n	c0de212a <zkn_compute_group_commitment+0x2a>
c0de215e:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2160:	4620      	mov	r0, r4
c0de2162:	4632      	mov	r2, r6
c0de2164:	460b      	mov	r3, r1
c0de2166:	f000 f9c8 	bl	c0de24fa <tEdwards_add>
c0de216a:	2800      	cmp	r0, #0
c0de216c:	d1dd      	bne.n	c0de212a <zkn_compute_group_commitment+0x2a>
c0de216e:	6822      	ldr	r2, [r4, #0]
c0de2170:	f1aa 0001 	sub.w	r0, sl, #1
c0de2174:	4633      	mov	r3, r6
c0de2176:	fb02 5100 	mla	r1, r2, r0, r5
c0de217a:	fb02 520a 	mla	r2, r2, sl, r5
c0de217e:	4620      	mov	r0, r4
c0de2180:	f000 fb9a 	bl	c0de28b8 <tEdwards_init>
c0de2184:	2800      	cmp	r0, #0
c0de2186:	d1d0      	bne.n	c0de212a <zkn_compute_group_commitment+0x2a>
c0de2188:	6823      	ldr	r3, [r4, #0]
c0de218a:	4658      	mov	r0, fp
c0de218c:	f10d 0b08 	add.w	fp, sp, #8
c0de2190:	4631      	mov	r1, r6
c0de2192:	4605      	mov	r5, r0
c0de2194:	f8cd b000 	str.w	fp, [sp]
c0de2198:	fb03 0208 	mla	r2, r3, r8, r0
c0de219c:	4620      	mov	r0, r4
c0de219e:	f000 fd11 	bl	c0de2bc4 <tEdwards_scalarMul>
c0de21a2:	2800      	cmp	r0, #0
c0de21a4:	d1c1      	bne.n	c0de212a <zkn_compute_group_commitment+0x2a>
c0de21a6:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de21a8:	4620      	mov	r0, r4
c0de21aa:	465a      	mov	r2, fp
c0de21ac:	460b      	mov	r3, r1
c0de21ae:	f000 f9a4 	bl	c0de24fa <tEdwards_add>
c0de21b2:	46ab      	mov	fp, r5
c0de21b4:	9d01      	ldr	r5, [sp, #4]
c0de21b6:	f10a 0a05 	add.w	sl, sl, #5
c0de21ba:	f108 0801 	add.w	r8, r8, #1
c0de21be:	2800      	cmp	r0, #0
c0de21c0:	d0bc      	beq.n	c0de213c <zkn_compute_group_commitment+0x3c>
c0de21c2:	e7b2      	b.n	c0de212a <zkn_compute_group_commitment+0x2a>
c0de21c4:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de21c6:	4620      	mov	r0, r4
c0de21c8:	f000 fc37 	bl	c0de2a3a <tEdwards_normalize>
c0de21cc:	2800      	cmp	r0, #0
c0de21ce:	d1ac      	bne.n	c0de212a <zkn_compute_group_commitment+0x2a>
c0de21d0:	a905      	add	r1, sp, #20
c0de21d2:	f000 f8fe 	bl	c0de23d2 <OUTLINED_FUNCTION_3>
c0de21d6:	2800      	cmp	r0, #0
c0de21d8:	d1a7      	bne.n	c0de212a <zkn_compute_group_commitment+0x2a>
c0de21da:	a902      	add	r1, sp, #8
c0de21dc:	f000 f8f9 	bl	c0de23d2 <OUTLINED_FUNCTION_3>
c0de21e0:	e7a3      	b.n	c0de212a <zkn_compute_group_commitment+0x2a>

c0de21e2 <zkn_compute_binding_factors>:
c0de21e2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de21e6:	b0f4      	sub	sp, #464	@ 0x1d0
c0de21e8:	460e      	mov	r6, r1
c0de21ea:	6801      	ldr	r1, [r0, #0]
c0de21ec:	4607      	mov	r7, r0
c0de21ee:	a873      	add	r0, sp, #460	@ 0x1cc
c0de21f0:	f000 f8eb 	bl	c0de23ca <OUTLINED_FUNCTION_2>
c0de21f4:	b9f0      	cbnz	r0, c0de2234 <zkn_compute_binding_factors+0x52>
c0de21f6:	6839      	ldr	r1, [r7, #0]
c0de21f8:	a872      	add	r0, sp, #456	@ 0x1c8
c0de21fa:	f008 fc27 	bl	c0deaa4c <cx_bn_alloc>
c0de21fe:	b9c8      	cbnz	r0, c0de2234 <zkn_compute_binding_factors+0x52>
c0de2200:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de2204:	68ba      	ldr	r2, [r7, #8]
c0de2206:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de2208:	f000 ffa6 	bl	c0de3158 <Babyfrost_H4>
c0de220c:	b990      	cbnz	r0, c0de2234 <zkn_compute_binding_factors+0x52>
c0de220e:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de2210:	4638      	mov	r0, r7
c0de2212:	4629      	mov	r1, r5
c0de2214:	4622      	mov	r2, r4
c0de2216:	f7ff fef6 	bl	c0de2006 <zkn_encode_group_commitmentHash>
c0de221a:	b958      	cbnz	r0, c0de2234 <zkn_compute_binding_factors+0x52>
c0de221c:	683a      	ldr	r2, [r7, #0]
c0de221e:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de2220:	a912      	add	r1, sp, #72	@ 0x48
c0de2222:	f008 fc5d 	bl	c0deaae0 <cx_bn_export>
c0de2226:	b928      	cbnz	r0, c0de2234 <zkn_compute_binding_factors+0x52>
c0de2228:	683a      	ldr	r2, [r7, #0]
c0de222a:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de222c:	a902      	add	r1, sp, #8
c0de222e:	f008 fc57 	bl	c0deaae0 <cx_bn_export>
c0de2232:	b110      	cbz	r0, c0de223a <zkn_compute_binding_factors+0x58>
c0de2234:	b074      	add	sp, #464	@ 0x1d0
c0de2236:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de223a:	2000      	movs	r0, #0
c0de223c:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de2240:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de2244:	f04f 0800 	mov.w	r8, #0
c0de2248:	9000      	str	r0, [sp, #0]
c0de224a:	4544      	cmp	r4, r8
c0de224c:	d043      	beq.n	c0de22d6 <zkn_compute_binding_factors+0xf4>
c0de224e:	6839      	ldr	r1, [r7, #0]
c0de2250:	a801      	add	r0, sp, #4
c0de2252:	f008 fbfb 	bl	c0deaa4c <cx_bn_alloc>
c0de2256:	2800      	cmp	r0, #0
c0de2258:	d1ec      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de225a:	4650      	mov	r0, sl
c0de225c:	f000 ffae 	bl	c0de31bc <zkn_frost_H1_init>
c0de2260:	2800      	cmp	r0, #0
c0de2262:	d1e7      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de2264:	6839      	ldr	r1, [r7, #0]
c0de2266:	4630      	mov	r0, r6
c0de2268:	465a      	mov	r2, fp
c0de226a:	f000 f89f 	bl	c0de23ac <OUTLINED_FUNCTION_0>
c0de226e:	2800      	cmp	r0, #0
c0de2270:	d1e0      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de2272:	6839      	ldr	r1, [r7, #0]
c0de2274:	a812      	add	r0, sp, #72	@ 0x48
c0de2276:	465a      	mov	r2, fp
c0de2278:	f000 f898 	bl	c0de23ac <OUTLINED_FUNCTION_0>
c0de227c:	2800      	cmp	r0, #0
c0de227e:	d1d9      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de2280:	6839      	ldr	r1, [r7, #0]
c0de2282:	a802      	add	r0, sp, #8
c0de2284:	465a      	mov	r2, fp
c0de2286:	f000 f891 	bl	c0de23ac <OUTLINED_FUNCTION_0>
c0de228a:	2800      	cmp	r0, #0
c0de228c:	d1d2      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de228e:	6839      	ldr	r1, [r7, #0]
c0de2290:	9800      	ldr	r0, [sp, #0]
c0de2292:	465a      	mov	r2, fp
c0de2294:	fb00 5001 	mla	r0, r0, r1, r5
c0de2298:	f000 f888 	bl	c0de23ac <OUTLINED_FUNCTION_0>
c0de229c:	2800      	cmp	r0, #0
c0de229e:	d1c9      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de22a0:	68b9      	ldr	r1, [r7, #8]
c0de22a2:	9a01      	ldr	r2, [sp, #4]
c0de22a4:	4650      	mov	r0, sl
c0de22a6:	f000 ffbf 	bl	c0de3228 <zkn_frost_hash_final>
c0de22aa:	2800      	cmp	r0, #0
c0de22ac:	d1c2      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de22ae:	683a      	ldr	r2, [r7, #0]
c0de22b0:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de22b2:	fb02 0108 	mla	r1, r2, r8, r0
c0de22b6:	9801      	ldr	r0, [sp, #4]
c0de22b8:	f008 fc12 	bl	c0deaae0 <cx_bn_export>
c0de22bc:	2800      	cmp	r0, #0
c0de22be:	d1b9      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de22c0:	a801      	add	r0, sp, #4
c0de22c2:	f008 fbd9 	bl	c0deaa78 <cx_bn_destroy>
c0de22c6:	2800      	cmp	r0, #0
c0de22c8:	d1b4      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de22ca:	9800      	ldr	r0, [sp, #0]
c0de22cc:	f108 0801 	add.w	r8, r8, #1
c0de22d0:	3005      	adds	r0, #5
c0de22d2:	9000      	str	r0, [sp, #0]
c0de22d4:	e7b9      	b.n	c0de224a <zkn_compute_binding_factors+0x68>
c0de22d6:	a873      	add	r0, sp, #460	@ 0x1cc
c0de22d8:	f008 fbce 	bl	c0deaa78 <cx_bn_destroy>
c0de22dc:	2800      	cmp	r0, #0
c0de22de:	d1a9      	bne.n	c0de2234 <zkn_compute_binding_factors+0x52>
c0de22e0:	a872      	add	r0, sp, #456	@ 0x1c8
c0de22e2:	f008 fbc9 	bl	c0deaa78 <cx_bn_destroy>
c0de22e6:	e7a5      	b.n	c0de2234 <zkn_compute_binding_factors+0x52>

c0de22e8 <zkn_serialize_scalar_for_hash>:
c0de22e8:	3a01      	subs	r2, #1
c0de22ea:	b121      	cbz	r1, c0de22f6 <zkn_serialize_scalar_for_hash+0xe>
c0de22ec:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de22f0:	5453      	strb	r3, [r2, r1]
c0de22f2:	3901      	subs	r1, #1
c0de22f4:	e7f9      	b.n	c0de22ea <zkn_serialize_scalar_for_hash+0x2>
c0de22f6:	4770      	bx	lr

c0de22f8 <compute_challenge>:
c0de22f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de22fc:	b0bc      	sub	sp, #240	@ 0xf0
c0de22fe:	4606      	mov	r6, r0
c0de2300:	9842      	ldr	r0, [sp, #264]	@ 0x108
c0de2302:	2820      	cmp	r0, #32
c0de2304:	d14b      	bne.n	c0de239e <compute_challenge+0xa6>
c0de2306:	4630      	mov	r0, r6
c0de2308:	461f      	mov	r7, r3
c0de230a:	4614      	mov	r4, r2
c0de230c:	460d      	mov	r5, r1
c0de230e:	f000 fb12 	bl	c0de2936 <tEdwards_Curve_partial_destroy>
c0de2312:	2800      	cmp	r0, #0
c0de2314:	d144      	bne.n	c0de23a0 <compute_challenge+0xa8>
c0de2316:	f106 0820 	add.w	r8, r6, #32
c0de231a:	4668      	mov	r0, sp
c0de231c:	2105      	movs	r1, #5
c0de231e:	2205      	movs	r2, #5
c0de2320:	4643      	mov	r3, r8
c0de2322:	f000 fd75 	bl	c0de2e10 <Poseidon_alloc_init>
c0de2326:	bbd8      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de2328:	6829      	ldr	r1, [r5, #0]
c0de232a:	9807      	ldr	r0, [sp, #28]
c0de232c:	f008 fbc4 	bl	c0deaab8 <cx_bn_copy>
c0de2330:	bbb0      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de2332:	6869      	ldr	r1, [r5, #4]
c0de2334:	9808      	ldr	r0, [sp, #32]
c0de2336:	f008 fbbf 	bl	c0deaab8 <cx_bn_copy>
c0de233a:	bb88      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de233c:	6832      	ldr	r2, [r6, #0]
c0de233e:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de2340:	4621      	mov	r1, r4
c0de2342:	f008 fbad 	bl	c0deaaa0 <cx_bn_init>
c0de2346:	bb58      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de2348:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de234a:	f000 f83a 	bl	c0de23c2 <OUTLINED_FUNCTION_1>
c0de234e:	bb38      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de2350:	6832      	ldr	r2, [r6, #0]
c0de2352:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2354:	f104 0120 	add.w	r1, r4, #32
c0de2358:	f008 fba2 	bl	c0deaaa0 <cx_bn_init>
c0de235c:	bb00      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de235e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2360:	f000 f82f 	bl	c0de23c2 <OUTLINED_FUNCTION_1>
c0de2364:	b9e0      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de2366:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2368:	4639      	mov	r1, r7
c0de236a:	2220      	movs	r2, #32
c0de236c:	f008 fb98 	bl	c0deaaa0 <cx_bn_init>
c0de2370:	b9b0      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de2372:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2374:	f000 f825 	bl	c0de23c2 <OUTLINED_FUNCTION_1>
c0de2378:	b990      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de237a:	4630      	mov	r0, r6
c0de237c:	4629      	mov	r1, r5
c0de237e:	f000 f840 	bl	c0de2402 <tEdwards_destroy>
c0de2382:	b968      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de2384:	4668      	mov	r0, sp
c0de2386:	aa43      	add	r2, sp, #268	@ 0x10c
c0de2388:	2100      	movs	r1, #0
c0de238a:	2301      	movs	r3, #1
c0de238c:	f000 fda6 	bl	c0de2edc <Poseidon>
c0de2390:	b930      	cbnz	r0, c0de23a0 <compute_challenge+0xa8>
c0de2392:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de2394:	4642      	mov	r2, r8
c0de2396:	4601      	mov	r1, r0
c0de2398:	f008 fc38 	bl	c0deac0c <cx_mont_from_montgomery>
c0de239c:	e000      	b.n	c0de23a0 <compute_challenge+0xa8>
c0de239e:	4802      	ldr	r0, [pc, #8]	@ (c0de23a8 <compute_challenge+0xb0>)
c0de23a0:	b03c      	add	sp, #240	@ 0xf0
c0de23a2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de23a6:	bf00      	nop
c0de23a8:	5a4b4e03 	.word	0x5a4b4e03

c0de23ac <OUTLINED_FUNCTION_0>:
c0de23ac:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de23b0:	f7ff ff9a 	bl	c0de22e8 <zkn_serialize_scalar_for_hash>
c0de23b4:	683a      	ldr	r2, [r7, #0]
c0de23b6:	4650      	mov	r0, sl
c0de23b8:	4659      	mov	r1, fp
c0de23ba:	f85d eb08 	ldr.w	lr, [sp], #8
c0de23be:	f000 bf31 	b.w	c0de3224 <zkn_frost_hash_update>

c0de23c2 <OUTLINED_FUNCTION_1>:
c0de23c2:	4642      	mov	r2, r8
c0de23c4:	4601      	mov	r1, r0
c0de23c6:	f008 bc15 	b.w	c0deabf4 <cx_mont_to_montgomery>

c0de23ca <OUTLINED_FUNCTION_2>:
c0de23ca:	461c      	mov	r4, r3
c0de23cc:	4615      	mov	r5, r2
c0de23ce:	f008 bb3d 	b.w	c0deaa4c <cx_bn_alloc>

c0de23d2 <OUTLINED_FUNCTION_3>:
c0de23d2:	4620      	mov	r0, r4
c0de23d4:	f000 b815 	b.w	c0de2402 <tEdwards_destroy>

c0de23d8 <tEdwards_alloc>:
c0de23d8:	b5b0      	push	{r4, r5, r7, lr}
c0de23da:	460d      	mov	r5, r1
c0de23dc:	6801      	ldr	r1, [r0, #0]
c0de23de:	4604      	mov	r4, r0
c0de23e0:	4628      	mov	r0, r5
c0de23e2:	f008 fb33 	bl	c0deaa4c <cx_bn_alloc>
c0de23e6:	b920      	cbnz	r0, c0de23f2 <tEdwards_alloc+0x1a>
c0de23e8:	6821      	ldr	r1, [r4, #0]
c0de23ea:	1d28      	adds	r0, r5, #4
c0de23ec:	f008 fb2e 	bl	c0deaa4c <cx_bn_alloc>
c0de23f0:	b100      	cbz	r0, c0de23f4 <tEdwards_alloc+0x1c>
c0de23f2:	bdb0      	pop	{r4, r5, r7, pc}
c0de23f4:	6821      	ldr	r1, [r4, #0]
c0de23f6:	f105 0008 	add.w	r0, r5, #8
c0de23fa:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de23fe:	f008 bb25 	b.w	c0deaa4c <cx_bn_alloc>

c0de2402 <tEdwards_destroy>:
c0de2402:	b510      	push	{r4, lr}
c0de2404:	4608      	mov	r0, r1
c0de2406:	460c      	mov	r4, r1
c0de2408:	f008 fb36 	bl	c0deaa78 <cx_bn_destroy>
c0de240c:	b918      	cbnz	r0, c0de2416 <tEdwards_destroy+0x14>
c0de240e:	1d20      	adds	r0, r4, #4
c0de2410:	f008 fb32 	bl	c0deaa78 <cx_bn_destroy>
c0de2414:	b100      	cbz	r0, c0de2418 <tEdwards_destroy+0x16>
c0de2416:	bd10      	pop	{r4, pc}
c0de2418:	f104 0008 	add.w	r0, r4, #8
c0de241c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2420:	f008 bb2a 	b.w	c0deaa78 <cx_bn_destroy>

c0de2424 <tEdwards_double>:
c0de2424:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2426:	460f      	mov	r7, r1
c0de2428:	4614      	mov	r4, r2
c0de242a:	4605      	mov	r5, r0
c0de242c:	6843      	ldr	r3, [r0, #4]
c0de242e:	6809      	ldr	r1, [r1, #0]
c0de2430:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2432:	687a      	ldr	r2, [r7, #4]
c0de2434:	f008 fb84 	bl	c0deab40 <cx_bn_mod_add>
c0de2438:	2800      	cmp	r0, #0
c0de243a:	d154      	bne.n	c0de24e6 <tEdwards_double+0xc2>
c0de243c:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2440:	f105 0620 	add.w	r6, r5, #32
c0de2444:	f000 fbe4 	bl	c0de2c10 <OUTLINED_FUNCTION_2>
c0de2448:	2800      	cmp	r0, #0
c0de244a:	d14c      	bne.n	c0de24e6 <tEdwards_double+0xc2>
c0de244c:	6839      	ldr	r1, [r7, #0]
c0de244e:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2450:	f000 fbde 	bl	c0de2c10 <OUTLINED_FUNCTION_2>
c0de2454:	2800      	cmp	r0, #0
c0de2456:	d146      	bne.n	c0de24e6 <tEdwards_double+0xc2>
c0de2458:	6879      	ldr	r1, [r7, #4]
c0de245a:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de245c:	f000 fbd8 	bl	c0de2c10 <OUTLINED_FUNCTION_2>
c0de2460:	2800      	cmp	r0, #0
c0de2462:	d140      	bne.n	c0de24e6 <tEdwards_double+0xc2>
c0de2464:	69a9      	ldr	r1, [r5, #24]
c0de2466:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2468:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de246a:	f000 fbcb 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de246e:	bbd0      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de2470:	686b      	ldr	r3, [r5, #4]
c0de2472:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2476:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2478:	f008 fb62 	bl	c0deab40 <cx_bn_mod_add>
c0de247c:	bb98      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de247e:	68b9      	ldr	r1, [r7, #8]
c0de2480:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2482:	f000 fbc5 	bl	c0de2c10 <OUTLINED_FUNCTION_2>
c0de2486:	bb70      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de2488:	686b      	ldr	r3, [r5, #4]
c0de248a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de248c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de248e:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2490:	f008 fb62 	bl	c0deab58 <cx_bn_mod_sub>
c0de2494:	bb38      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de2496:	686b      	ldr	r3, [r5, #4]
c0de2498:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de249a:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de249e:	f008 fb5b 	bl	c0deab58 <cx_bn_mod_sub>
c0de24a2:	bb00      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de24a4:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de24a8:	686b      	ldr	r3, [r5, #4]
c0de24aa:	ca07      	ldmia	r2, {r0, r1, r2}
c0de24ac:	f008 fb54 	bl	c0deab58 <cx_bn_mod_sub>
c0de24b0:	b9c8      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de24b2:	686b      	ldr	r3, [r5, #4]
c0de24b4:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de24b8:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de24ba:	f008 fb4d 	bl	c0deab58 <cx_bn_mod_sub>
c0de24be:	b990      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de24c0:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de24c2:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de24c4:	6820      	ldr	r0, [r4, #0]
c0de24c6:	f000 fb9d 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de24ca:	b960      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de24cc:	686b      	ldr	r3, [r5, #4]
c0de24ce:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de24d2:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de24d4:	f008 fb40 	bl	c0deab58 <cx_bn_mod_sub>
c0de24d8:	b928      	cbnz	r0, c0de24e6 <tEdwards_double+0xc2>
c0de24da:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de24dc:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de24de:	6860      	ldr	r0, [r4, #4]
c0de24e0:	f000 fb90 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de24e4:	b100      	cbz	r0, c0de24e8 <tEdwards_double+0xc4>
c0de24e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de24e8:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de24ea:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de24ec:	68a0      	ldr	r0, [r4, #8]
c0de24ee:	4633      	mov	r3, r6
c0de24f0:	b001      	add	sp, #4
c0de24f2:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de24f6:	f008 bb95 	b.w	c0deac24 <cx_mont_mul>

c0de24fa <tEdwards_add>:
c0de24fa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de24fe:	4606      	mov	r6, r0
c0de2500:	4617      	mov	r7, r2
c0de2502:	460c      	mov	r4, r1
c0de2504:	6892      	ldr	r2, [r2, #8]
c0de2506:	6889      	ldr	r1, [r1, #8]
c0de2508:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de250a:	4698      	mov	r8, r3
c0de250c:	f106 0520 	add.w	r5, r6, #32
c0de2510:	f000 fb7b 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de2514:	2800      	cmp	r0, #0
c0de2516:	d17d      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2518:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de251c:	462b      	mov	r3, r5
c0de251e:	460a      	mov	r2, r1
c0de2520:	f008 fb80 	bl	c0deac24 <cx_mont_mul>
c0de2524:	2800      	cmp	r0, #0
c0de2526:	d175      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2528:	683a      	ldr	r2, [r7, #0]
c0de252a:	6821      	ldr	r1, [r4, #0]
c0de252c:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de252e:	f000 fb6c 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de2532:	2800      	cmp	r0, #0
c0de2534:	d16e      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2536:	687a      	ldr	r2, [r7, #4]
c0de2538:	6861      	ldr	r1, [r4, #4]
c0de253a:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de253c:	f000 fb65 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de2540:	2800      	cmp	r0, #0
c0de2542:	d167      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2544:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2548:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de254a:	f000 fb5e 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de254e:	2800      	cmp	r0, #0
c0de2550:	d160      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2552:	69f2      	ldr	r2, [r6, #28]
c0de2554:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2556:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2558:	f000 fb57 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de255c:	2800      	cmp	r0, #0
c0de255e:	d159      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2560:	6873      	ldr	r3, [r6, #4]
c0de2562:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2564:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2568:	f008 faf6 	bl	c0deab58 <cx_bn_mod_sub>
c0de256c:	2800      	cmp	r0, #0
c0de256e:	d151      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2570:	6873      	ldr	r3, [r6, #4]
c0de2572:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2574:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2576:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2578:	f008 fae2 	bl	c0deab40 <cx_bn_mod_add>
c0de257c:	2800      	cmp	r0, #0
c0de257e:	d149      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2580:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2584:	6873      	ldr	r3, [r6, #4]
c0de2586:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2588:	f008 fada 	bl	c0deab40 <cx_bn_mod_add>
c0de258c:	2800      	cmp	r0, #0
c0de258e:	d141      	bne.n	c0de2614 <tEdwards_add+0x11a>
c0de2590:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2594:	6873      	ldr	r3, [r6, #4]
c0de2596:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2598:	f008 fad2 	bl	c0deab40 <cx_bn_mod_add>
c0de259c:	bbd0      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de259e:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de25a0:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de25a4:	f000 fb31 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de25a8:	bba0      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de25aa:	6873      	ldr	r3, [r6, #4]
c0de25ac:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de25b0:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de25b2:	f008 fad1 	bl	c0deab58 <cx_bn_mod_sub>
c0de25b6:	bb68      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de25b8:	6873      	ldr	r3, [r6, #4]
c0de25ba:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de25bc:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de25c0:	f008 faca 	bl	c0deab58 <cx_bn_mod_sub>
c0de25c4:	bb30      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de25c6:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de25ca:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de25cc:	f000 fb1d 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de25d0:	bb00      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de25d2:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de25d4:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de25d6:	f8d8 0000 	ldr.w	r0, [r8]
c0de25da:	f000 fb16 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de25de:	b9c8      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de25e0:	69b1      	ldr	r1, [r6, #24]
c0de25e2:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de25e6:	f000 fb10 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de25ea:	b998      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de25ec:	6873      	ldr	r3, [r6, #4]
c0de25ee:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de25f0:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de25f2:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de25f4:	f008 fab0 	bl	c0deab58 <cx_bn_mod_sub>
c0de25f8:	b960      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de25fa:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de25fc:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de25fe:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2600:	f000 fb03 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de2604:	b930      	cbnz	r0, c0de2614 <tEdwards_add+0x11a>
c0de2606:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de260a:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de260e:	f000 fafc 	bl	c0de2c0a <OUTLINED_FUNCTION_1>
c0de2612:	b108      	cbz	r0, c0de2618 <tEdwards_add+0x11e>
c0de2614:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2618:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de261c:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2620:	462b      	mov	r3, r5
c0de2622:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2626:	f008 bafd 	b.w	c0deac24 <cx_mont_mul>

c0de262a <tEdwards_IsOnCurve>:
c0de262a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de262c:	4605      	mov	r5, r0
c0de262e:	460f      	mov	r7, r1
c0de2630:	2005      	movs	r0, #5
c0de2632:	6809      	ldr	r1, [r1, #0]
c0de2634:	4614      	mov	r4, r2
c0de2636:	9000      	str	r0, [sp, #0]
c0de2638:	f105 0620 	add.w	r6, r5, #32
c0de263c:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de263e:	460a      	mov	r2, r1
c0de2640:	f000 fae0 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de2644:	b100      	cbz	r0, c0de2648 <tEdwards_IsOnCurve+0x1e>
c0de2646:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2648:	6879      	ldr	r1, [r7, #4]
c0de264a:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de264c:	f000 fae0 	bl	c0de2c10 <OUTLINED_FUNCTION_2>
c0de2650:	2800      	cmp	r0, #0
c0de2652:	d1f8      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de2654:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de2658:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de265a:	f000 fad3 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de265e:	2800      	cmp	r0, #0
c0de2660:	d1f1      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de2662:	69a9      	ldr	r1, [r5, #24]
c0de2664:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de2666:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2668:	f000 facc 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de266c:	2800      	cmp	r0, #0
c0de266e:	d1ea      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de2670:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2672:	686b      	ldr	r3, [r5, #4]
c0de2674:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2676:	4601      	mov	r1, r0
c0de2678:	f008 fa62 	bl	c0deab40 <cx_bn_mod_add>
c0de267c:	2800      	cmp	r0, #0
c0de267e:	d1e2      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de2680:	69e9      	ldr	r1, [r5, #28]
c0de2682:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2684:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2686:	f000 fabd 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de268a:	2800      	cmp	r0, #0
c0de268c:	d1db      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de268e:	686b      	ldr	r3, [r5, #4]
c0de2690:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de2692:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2694:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2696:	f008 fa53 	bl	c0deab40 <cx_bn_mod_add>
c0de269a:	2800      	cmp	r0, #0
c0de269c:	d1d3      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de269e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de26a0:	4632      	mov	r2, r6
c0de26a2:	4601      	mov	r1, r0
c0de26a4:	f008 fab2 	bl	c0deac0c <cx_mont_from_montgomery>
c0de26a8:	2800      	cmp	r0, #0
c0de26aa:	d1cc      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de26ac:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de26ae:	4632      	mov	r2, r6
c0de26b0:	4601      	mov	r1, r0
c0de26b2:	f008 faab 	bl	c0deac0c <cx_mont_from_montgomery>
c0de26b6:	2800      	cmp	r0, #0
c0de26b8:	d1c5      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de26ba:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de26be:	466a      	mov	r2, sp
c0de26c0:	f008 fa1a 	bl	c0deaaf8 <cx_bn_cmp>
c0de26c4:	2800      	cmp	r0, #0
c0de26c6:	d1be      	bne.n	c0de2646 <tEdwards_IsOnCurve+0x1c>
c0de26c8:	9800      	ldr	r0, [sp, #0]
c0de26ca:	fab0 f080 	clz	r0, r0
c0de26ce:	0940      	lsrs	r0, r0, #5
c0de26d0:	7020      	strb	r0, [r4, #0]
c0de26d2:	2000      	movs	r0, #0
c0de26d4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de26d8 <tEdwards_Curve_alloc_init>:
c0de26d8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de26dc:	b0d2      	sub	sp, #328	@ 0x148
c0de26de:	4604      	mov	r4, r0
c0de26e0:	2902      	cmp	r1, #2
c0de26e2:	d022      	beq.n	c0de272a <tEdwards_Curve_alloc_init+0x52>
c0de26e4:	2901      	cmp	r1, #1
c0de26e6:	f040 80cd 	bne.w	c0de2884 <tEdwards_Curve_alloc_init+0x1ac>
c0de26ea:	2020      	movs	r0, #32
c0de26ec:	2220      	movs	r2, #32
c0de26ee:	6020      	str	r0, [r4, #0]
c0de26f0:	af4a      	add	r7, sp, #296	@ 0x128
c0de26f2:	4967      	ldr	r1, [pc, #412]	@ (c0de2890 <tEdwards_Curve_alloc_init+0x1b8>)
c0de26f4:	4638      	mov	r0, r7
c0de26f6:	4479      	add	r1, pc
c0de26f8:	f008 fd0b 	bl	c0deb112 <__aeabi_memcpy>
c0de26fc:	ae42      	add	r6, sp, #264	@ 0x108
c0de26fe:	4965      	ldr	r1, [pc, #404]	@ (c0de2894 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2700:	2220      	movs	r2, #32
c0de2702:	4630      	mov	r0, r6
c0de2704:	4479      	add	r1, pc
c0de2706:	f008 fd04 	bl	c0deb112 <__aeabi_memcpy>
c0de270a:	4963      	ldr	r1, [pc, #396]	@ (c0de2898 <tEdwards_Curve_alloc_init+0x1c0>)
c0de270c:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2710:	2220      	movs	r2, #32
c0de2712:	4650      	mov	r0, sl
c0de2714:	4479      	add	r1, pc
c0de2716:	f008 fcfc 	bl	c0deb112 <__aeabi_memcpy>
c0de271a:	ad32      	add	r5, sp, #200	@ 0xc8
c0de271c:	495f      	ldr	r1, [pc, #380]	@ (c0de289c <tEdwards_Curve_alloc_init+0x1c4>)
c0de271e:	2220      	movs	r2, #32
c0de2720:	4628      	mov	r0, r5
c0de2722:	4479      	add	r1, pc
c0de2724:	f008 fcf5 	bl	c0deb112 <__aeabi_memcpy>
c0de2728:	e02d      	b.n	c0de2786 <tEdwards_Curve_alloc_init+0xae>
c0de272a:	2020      	movs	r0, #32
c0de272c:	2220      	movs	r2, #32
c0de272e:	6020      	str	r0, [r4, #0]
c0de2730:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2732:	495b      	ldr	r1, [pc, #364]	@ (c0de28a0 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2734:	4638      	mov	r0, r7
c0de2736:	4479      	add	r1, pc
c0de2738:	f008 fceb 	bl	c0deb112 <__aeabi_memcpy>
c0de273c:	ae22      	add	r6, sp, #136	@ 0x88
c0de273e:	4959      	ldr	r1, [pc, #356]	@ (c0de28a4 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2740:	2220      	movs	r2, #32
c0de2742:	4630      	mov	r0, r6
c0de2744:	4479      	add	r1, pc
c0de2746:	f008 fce4 	bl	c0deb112 <__aeabi_memcpy>
c0de274a:	4957      	ldr	r1, [pc, #348]	@ (c0de28a8 <tEdwards_Curve_alloc_init+0x1d0>)
c0de274c:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de2750:	2220      	movs	r2, #32
c0de2752:	4650      	mov	r0, sl
c0de2754:	4479      	add	r1, pc
c0de2756:	f008 fcdc 	bl	c0deb112 <__aeabi_memcpy>
c0de275a:	a812      	add	r0, sp, #72	@ 0x48
c0de275c:	4953      	ldr	r1, [pc, #332]	@ (c0de28ac <tEdwards_Curve_alloc_init+0x1d4>)
c0de275e:	2220      	movs	r2, #32
c0de2760:	9001      	str	r0, [sp, #4]
c0de2762:	4479      	add	r1, pc
c0de2764:	f008 fcd5 	bl	c0deb112 <__aeabi_memcpy>
c0de2768:	4951      	ldr	r1, [pc, #324]	@ (c0de28b0 <tEdwards_Curve_alloc_init+0x1d8>)
c0de276a:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de276e:	2220      	movs	r2, #32
c0de2770:	4658      	mov	r0, fp
c0de2772:	4479      	add	r1, pc
c0de2774:	f008 fccd 	bl	c0deb112 <__aeabi_memcpy>
c0de2778:	ad02      	add	r5, sp, #8
c0de277a:	494e      	ldr	r1, [pc, #312]	@ (c0de28b4 <tEdwards_Curve_alloc_init+0x1dc>)
c0de277c:	2220      	movs	r2, #32
c0de277e:	4628      	mov	r0, r5
c0de2780:	4479      	add	r1, pc
c0de2782:	f008 fcc6 	bl	c0deb112 <__aeabi_memcpy>
c0de2786:	f104 0804 	add.w	r8, r4, #4
c0de278a:	2120      	movs	r1, #32
c0de278c:	463a      	mov	r2, r7
c0de278e:	2320      	movs	r3, #32
c0de2790:	4640      	mov	r0, r8
c0de2792:	f008 f965 	bl	c0deaa60 <cx_bn_alloc_init>
c0de2796:	2800      	cmp	r0, #0
c0de2798:	d175      	bne.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de279a:	4620      	mov	r0, r4
c0de279c:	462a      	mov	r2, r5
c0de279e:	f850 1b08 	ldr.w	r1, [r0], #8
c0de27a2:	460b      	mov	r3, r1
c0de27a4:	f008 f95c 	bl	c0deaa60 <cx_bn_alloc_init>
c0de27a8:	2800      	cmp	r0, #0
c0de27aa:	d16c      	bne.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de27ac:	f104 0520 	add.w	r5, r4, #32
c0de27b0:	2120      	movs	r1, #32
c0de27b2:	4628      	mov	r0, r5
c0de27b4:	f008 fa0a 	bl	c0deabcc <cx_mont_alloc>
c0de27b8:	2800      	cmp	r0, #0
c0de27ba:	d164      	bne.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de27bc:	f8d8 1000 	ldr.w	r1, [r8]
c0de27c0:	4628      	mov	r0, r5
c0de27c2:	f008 fa0d 	bl	c0deabe0 <cx_mont_init>
c0de27c6:	2800      	cmp	r0, #0
c0de27c8:	d15d      	bne.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de27ca:	4627      	mov	r7, r4
c0de27cc:	f857 1b28 	ldr.w	r1, [r7], #40
c0de27d0:	4638      	mov	r0, r7
c0de27d2:	f008 f93b 	bl	c0deaa4c <cx_bn_alloc>
c0de27d6:	2800      	cmp	r0, #0
c0de27d8:	d155      	bne.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de27da:	6838      	ldr	r0, [r7, #0]
c0de27dc:	2101      	movs	r1, #1
c0de27de:	f008 f975 	bl	c0deaacc <cx_bn_set_u32>
c0de27e2:	2800      	cmp	r0, #0
c0de27e4:	d14f      	bne.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de27e6:	6838      	ldr	r0, [r7, #0]
c0de27e8:	f000 fa16 	bl	c0de2c18 <OUTLINED_FUNCTION_3>
c0de27ec:	2800      	cmp	r0, #0
c0de27ee:	d14a      	bne.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de27f0:	f104 070c 	add.w	r7, r4, #12
c0de27f4:	4620      	mov	r0, r4
c0de27f6:	4639      	mov	r1, r7
c0de27f8:	f7ff fdee 	bl	c0de23d8 <tEdwards_alloc>
c0de27fc:	2800      	cmp	r0, #0
c0de27fe:	d142      	bne.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2800:	9901      	ldr	r1, [sp, #4]
c0de2802:	4620      	mov	r0, r4
c0de2804:	465a      	mov	r2, fp
c0de2806:	463b      	mov	r3, r7
c0de2808:	f000 f856 	bl	c0de28b8 <tEdwards_init>
c0de280c:	bbd8      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de280e:	4627      	mov	r7, r4
c0de2810:	4632      	mov	r2, r6
c0de2812:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2816:	4638      	mov	r0, r7
c0de2818:	460b      	mov	r3, r1
c0de281a:	f008 f921 	bl	c0deaa60 <cx_bn_alloc_init>
c0de281e:	bb90      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2820:	6838      	ldr	r0, [r7, #0]
c0de2822:	f000 f9f9 	bl	c0de2c18 <OUTLINED_FUNCTION_3>
c0de2826:	bb70      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2828:	4626      	mov	r6, r4
c0de282a:	4652      	mov	r2, sl
c0de282c:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2830:	4630      	mov	r0, r6
c0de2832:	460b      	mov	r3, r1
c0de2834:	f008 f914 	bl	c0deaa60 <cx_bn_alloc_init>
c0de2838:	bb28      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de283a:	6830      	ldr	r0, [r6, #0]
c0de283c:	f000 f9ec 	bl	c0de2c18 <OUTLINED_FUNCTION_3>
c0de2840:	bb08      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2842:	4620      	mov	r0, r4
c0de2844:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2848:	f008 f900 	bl	c0deaa4c <cx_bn_alloc>
c0de284c:	b9d8      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de284e:	f000 f9fb 	bl	c0de2c48 <OUTLINED_FUNCTION_8>
c0de2852:	b9c0      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2854:	f000 f9e4 	bl	c0de2c20 <OUTLINED_FUNCTION_4>
c0de2858:	b9a8      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de285a:	f000 f9f0 	bl	c0de2c3e <OUTLINED_FUNCTION_7>
c0de285e:	b990      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2860:	f000 f9fc 	bl	c0de2c5c <OUTLINED_FUNCTION_10>
c0de2864:	b978      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2866:	f000 f9e5 	bl	c0de2c34 <OUTLINED_FUNCTION_6>
c0de286a:	b960      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de286c:	f000 f9f1 	bl	c0de2c52 <OUTLINED_FUNCTION_9>
c0de2870:	b948      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2872:	f000 f9da 	bl	c0de2c2a <OUTLINED_FUNCTION_5>
c0de2876:	b930      	cbnz	r0, c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2878:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de287c:	4620      	mov	r0, r4
c0de287e:	f008 f8e5 	bl	c0deaa4c <cx_bn_alloc>
c0de2882:	e000      	b.n	c0de2886 <tEdwards_Curve_alloc_init+0x1ae>
c0de2884:	4801      	ldr	r0, [pc, #4]	@ (c0de288c <tEdwards_Curve_alloc_init+0x1b4>)
c0de2886:	b052      	add	sp, #328	@ 0x148
c0de2888:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de288c:	5a4b4e01 	.word	0x5a4b4e01
c0de2890:	00009066 	.word	0x00009066
c0de2894:	00009218 	.word	0x00009218
c0de2898:	000091c8 	.word	0x000091c8
c0de289c:	000090fa 	.word	0x000090fa
c0de28a0:	00009226 	.word	0x00009226
c0de28a4:	00009178 	.word	0x00009178
c0de28a8:	000091e8 	.word	0x000091e8
c0de28ac:	0000921a 	.word	0x0000921a
c0de28b0:	0000922a 	.word	0x0000922a
c0de28b4:	000090bc 	.word	0x000090bc

c0de28b8 <tEdwards_init>:
c0de28b8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de28ba:	6806      	ldr	r6, [r0, #0]
c0de28bc:	461c      	mov	r4, r3
c0de28be:	4617      	mov	r7, r2
c0de28c0:	460a      	mov	r2, r1
c0de28c2:	4605      	mov	r5, r0
c0de28c4:	a802      	add	r0, sp, #8
c0de28c6:	4631      	mov	r1, r6
c0de28c8:	4633      	mov	r3, r6
c0de28ca:	f008 f8c9 	bl	c0deaa60 <cx_bn_alloc_init>
c0de28ce:	b100      	cbz	r0, c0de28d2 <tEdwards_init+0x1a>
c0de28d0:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de28d2:	a801      	add	r0, sp, #4
c0de28d4:	4631      	mov	r1, r6
c0de28d6:	463a      	mov	r2, r7
c0de28d8:	4633      	mov	r3, r6
c0de28da:	f008 f8c1 	bl	c0deaa60 <cx_bn_alloc_init>
c0de28de:	2800      	cmp	r0, #0
c0de28e0:	d1f6      	bne.n	c0de28d0 <tEdwards_init+0x18>
c0de28e2:	4668      	mov	r0, sp
c0de28e4:	4631      	mov	r1, r6
c0de28e6:	f008 f8b1 	bl	c0deaa4c <cx_bn_alloc>
c0de28ea:	2800      	cmp	r0, #0
c0de28ec:	d1f0      	bne.n	c0de28d0 <tEdwards_init+0x18>
c0de28ee:	f105 0620 	add.w	r6, r5, #32
c0de28f2:	6820      	ldr	r0, [r4, #0]
c0de28f4:	9902      	ldr	r1, [sp, #8]
c0de28f6:	4632      	mov	r2, r6
c0de28f8:	f008 f97c 	bl	c0deabf4 <cx_mont_to_montgomery>
c0de28fc:	2800      	cmp	r0, #0
c0de28fe:	d1e7      	bne.n	c0de28d0 <tEdwards_init+0x18>
c0de2900:	6860      	ldr	r0, [r4, #4]
c0de2902:	9901      	ldr	r1, [sp, #4]
c0de2904:	4632      	mov	r2, r6
c0de2906:	f008 f975 	bl	c0deabf4 <cx_mont_to_montgomery>
c0de290a:	2800      	cmp	r0, #0
c0de290c:	d1e0      	bne.n	c0de28d0 <tEdwards_init+0x18>
c0de290e:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2910:	68a0      	ldr	r0, [r4, #8]
c0de2912:	f008 f8d1 	bl	c0deaab8 <cx_bn_copy>
c0de2916:	2800      	cmp	r0, #0
c0de2918:	d1da      	bne.n	c0de28d0 <tEdwards_init+0x18>
c0de291a:	a802      	add	r0, sp, #8
c0de291c:	f008 f8ac 	bl	c0deaa78 <cx_bn_destroy>
c0de2920:	2800      	cmp	r0, #0
c0de2922:	d1d5      	bne.n	c0de28d0 <tEdwards_init+0x18>
c0de2924:	a801      	add	r0, sp, #4
c0de2926:	f008 f8a7 	bl	c0deaa78 <cx_bn_destroy>
c0de292a:	2800      	cmp	r0, #0
c0de292c:	d1d0      	bne.n	c0de28d0 <tEdwards_init+0x18>
c0de292e:	4668      	mov	r0, sp
c0de2930:	f008 f8a2 	bl	c0deaa78 <cx_bn_destroy>
c0de2934:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2936 <tEdwards_Curve_partial_destroy>:
c0de2936:	b510      	push	{r4, lr}
c0de2938:	4604      	mov	r4, r0
c0de293a:	302c      	adds	r0, #44	@ 0x2c
c0de293c:	f008 f89c 	bl	c0deaa78 <cx_bn_destroy>
c0de2940:	bbd8      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de2942:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2946:	f008 f897 	bl	c0deaa78 <cx_bn_destroy>
c0de294a:	bbb0      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de294c:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de2950:	f008 f892 	bl	c0deaa78 <cx_bn_destroy>
c0de2954:	bb88      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de2956:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de295a:	f008 f88d 	bl	c0deaa78 <cx_bn_destroy>
c0de295e:	bb60      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de2960:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de2964:	f008 f888 	bl	c0deaa78 <cx_bn_destroy>
c0de2968:	bb38      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de296a:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de296e:	f008 f883 	bl	c0deaa78 <cx_bn_destroy>
c0de2972:	bb10      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de2974:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de2978:	f008 f87e 	bl	c0deaa78 <cx_bn_destroy>
c0de297c:	b9e8      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de297e:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de2982:	f008 f879 	bl	c0deaa78 <cx_bn_destroy>
c0de2986:	b9c0      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de2988:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de298c:	f008 f874 	bl	c0deaa78 <cx_bn_destroy>
c0de2990:	b998      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de2992:	f104 010c 	add.w	r1, r4, #12
c0de2996:	f7ff fd34 	bl	c0de2402 <tEdwards_destroy>
c0de299a:	b970      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de299c:	f104 0018 	add.w	r0, r4, #24
c0de29a0:	f008 f86a 	bl	c0deaa78 <cx_bn_destroy>
c0de29a4:	b948      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de29a6:	f104 001c 	add.w	r0, r4, #28
c0de29aa:	f008 f865 	bl	c0deaa78 <cx_bn_destroy>
c0de29ae:	b920      	cbnz	r0, c0de29ba <tEdwards_Curve_partial_destroy+0x84>
c0de29b0:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de29b4:	f008 f860 	bl	c0deaa78 <cx_bn_destroy>
c0de29b8:	b100      	cbz	r0, c0de29bc <tEdwards_Curve_partial_destroy+0x86>
c0de29ba:	bd10      	pop	{r4, pc}
c0de29bc:	f104 0008 	add.w	r0, r4, #8
c0de29c0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de29c4:	f008 b858 	b.w	c0deaa78 <cx_bn_destroy>

c0de29c8 <tEdwards_SetNeutral>:
c0de29c8:	b5b0      	push	{r4, r5, r7, lr}
c0de29ca:	4605      	mov	r5, r0
c0de29cc:	6808      	ldr	r0, [r1, #0]
c0de29ce:	460c      	mov	r4, r1
c0de29d0:	2100      	movs	r1, #0
c0de29d2:	f008 f87b 	bl	c0deaacc <cx_bn_set_u32>
c0de29d6:	b918      	cbnz	r0, c0de29e0 <tEdwards_SetNeutral+0x18>
c0de29d8:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de29da:	f000 f944 	bl	c0de2c66 <OUTLINED_FUNCTION_11>
c0de29de:	b100      	cbz	r0, c0de29e2 <tEdwards_SetNeutral+0x1a>
c0de29e0:	bdb0      	pop	{r4, r5, r7, pc}
c0de29e2:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de29e4:	68a0      	ldr	r0, [r4, #8]
c0de29e6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de29ea:	f008 b865 	b.w	c0deaab8 <cx_bn_copy>

c0de29ee <tEdwards_export>:
c0de29ee:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de29f2:	4698      	mov	r8, r3
c0de29f4:	4616      	mov	r6, r2
c0de29f6:	460f      	mov	r7, r1
c0de29f8:	4605      	mov	r5, r0
c0de29fa:	f000 f81e 	bl	c0de2a3a <tEdwards_normalize>
c0de29fe:	b998      	cbnz	r0, c0de2a28 <tEdwards_export+0x3a>
c0de2a00:	f105 0420 	add.w	r4, r5, #32
c0de2a04:	6839      	ldr	r1, [r7, #0]
c0de2a06:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2a08:	4622      	mov	r2, r4
c0de2a0a:	f008 f8ff 	bl	c0deac0c <cx_mont_from_montgomery>
c0de2a0e:	b958      	cbnz	r0, c0de2a28 <tEdwards_export+0x3a>
c0de2a10:	6879      	ldr	r1, [r7, #4]
c0de2a12:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2a14:	4622      	mov	r2, r4
c0de2a16:	f008 f8f9 	bl	c0deac0c <cx_mont_from_montgomery>
c0de2a1a:	b928      	cbnz	r0, c0de2a28 <tEdwards_export+0x3a>
c0de2a1c:	682a      	ldr	r2, [r5, #0]
c0de2a1e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2a20:	4631      	mov	r1, r6
c0de2a22:	f008 f85d 	bl	c0deaae0 <cx_bn_export>
c0de2a26:	b108      	cbz	r0, c0de2a2c <tEdwards_export+0x3e>
c0de2a28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2a2c:	682a      	ldr	r2, [r5, #0]
c0de2a2e:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2a30:	4641      	mov	r1, r8
c0de2a32:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2a36:	f008 b853 	b.w	c0deaae0 <cx_bn_export>

c0de2a3a <tEdwards_normalize>:
c0de2a3a:	b570      	push	{r4, r5, r6, lr}
c0de2a3c:	4605      	mov	r5, r0
c0de2a3e:	460c      	mov	r4, r1
c0de2a40:	6889      	ldr	r1, [r1, #8]
c0de2a42:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2a44:	f105 0620 	add.w	r6, r5, #32
c0de2a48:	4632      	mov	r2, r6
c0de2a4a:	f008 f907 	bl	c0deac5c <cx_mont_invert_nprime>
c0de2a4e:	b9d0      	cbnz	r0, c0de2a86 <tEdwards_normalize+0x4c>
c0de2a50:	6822      	ldr	r2, [r4, #0]
c0de2a52:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2a56:	f000 f8d5 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de2a5a:	b9a0      	cbnz	r0, c0de2a86 <tEdwards_normalize+0x4c>
c0de2a5c:	6862      	ldr	r2, [r4, #4]
c0de2a5e:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2a60:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2a62:	f000 f8cf 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de2a66:	b970      	cbnz	r0, c0de2a86 <tEdwards_normalize+0x4c>
c0de2a68:	68a2      	ldr	r2, [r4, #8]
c0de2a6a:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2a6c:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2a6e:	f000 f8c9 	bl	c0de2c04 <OUTLINED_FUNCTION_0>
c0de2a72:	b940      	cbnz	r0, c0de2a86 <tEdwards_normalize+0x4c>
c0de2a74:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2a76:	6820      	ldr	r0, [r4, #0]
c0de2a78:	f008 f81e 	bl	c0deaab8 <cx_bn_copy>
c0de2a7c:	b918      	cbnz	r0, c0de2a86 <tEdwards_normalize+0x4c>
c0de2a7e:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2a80:	f000 f8f1 	bl	c0de2c66 <OUTLINED_FUNCTION_11>
c0de2a84:	b100      	cbz	r0, c0de2a88 <tEdwards_normalize+0x4e>
c0de2a86:	bd70      	pop	{r4, r5, r6, pc}
c0de2a88:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2a8a:	68a0      	ldr	r0, [r4, #8]
c0de2a8c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2a90:	f008 b812 	b.w	c0deaab8 <cx_bn_copy>

c0de2a94 <tEdwards_copy>:
c0de2a94:	b5b0      	push	{r4, r5, r7, lr}
c0de2a96:	460c      	mov	r4, r1
c0de2a98:	4605      	mov	r5, r0
c0de2a9a:	6801      	ldr	r1, [r0, #0]
c0de2a9c:	6820      	ldr	r0, [r4, #0]
c0de2a9e:	f008 f80b 	bl	c0deaab8 <cx_bn_copy>
c0de2aa2:	b918      	cbnz	r0, c0de2aac <tEdwards_copy+0x18>
c0de2aa4:	6869      	ldr	r1, [r5, #4]
c0de2aa6:	f000 f8de 	bl	c0de2c66 <OUTLINED_FUNCTION_11>
c0de2aaa:	b100      	cbz	r0, c0de2aae <tEdwards_copy+0x1a>
c0de2aac:	bdb0      	pop	{r4, r5, r7, pc}
c0de2aae:	68a9      	ldr	r1, [r5, #8]
c0de2ab0:	68a0      	ldr	r0, [r4, #8]
c0de2ab2:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2ab6:	f007 bfff 	b.w	c0deaab8 <cx_bn_copy>

c0de2aba <tEdwards_alloc_init>:
c0de2aba:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2abc:	460e      	mov	r6, r1
c0de2abe:	6801      	ldr	r1, [r0, #0]
c0de2ac0:	4607      	mov	r7, r0
c0de2ac2:	4618      	mov	r0, r3
c0de2ac4:	461c      	mov	r4, r3
c0de2ac6:	4615      	mov	r5, r2
c0de2ac8:	f007 ffc0 	bl	c0deaa4c <cx_bn_alloc>
c0de2acc:	b950      	cbnz	r0, c0de2ae4 <tEdwards_alloc_init+0x2a>
c0de2ace:	6839      	ldr	r1, [r7, #0]
c0de2ad0:	1d20      	adds	r0, r4, #4
c0de2ad2:	f007 ffbb 	bl	c0deaa4c <cx_bn_alloc>
c0de2ad6:	b928      	cbnz	r0, c0de2ae4 <tEdwards_alloc_init+0x2a>
c0de2ad8:	6839      	ldr	r1, [r7, #0]
c0de2ada:	f104 0008 	add.w	r0, r4, #8
c0de2ade:	f007 ffb5 	bl	c0deaa4c <cx_bn_alloc>
c0de2ae2:	b100      	cbz	r0, c0de2ae6 <tEdwards_alloc_init+0x2c>
c0de2ae4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2ae6:	4638      	mov	r0, r7
c0de2ae8:	4631      	mov	r1, r6
c0de2aea:	462a      	mov	r2, r5
c0de2aec:	4623      	mov	r3, r4
c0de2aee:	b001      	add	sp, #4
c0de2af0:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2af4:	f7ff bee0 	b.w	c0de28b8 <tEdwards_init>

c0de2af8 <tEdwards_scalarMul_bn>:
c0de2af8:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2afc:	4607      	mov	r7, r0
c0de2afe:	2000      	movs	r0, #0
c0de2b00:	4688      	mov	r8, r1
c0de2b02:	4615      	mov	r5, r2
c0de2b04:	2100      	movs	r1, #0
c0de2b06:	469b      	mov	fp, r3
c0de2b08:	9003      	str	r0, [sp, #12]
c0de2b0a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2b0e:	6810      	ldr	r0, [r2, #0]
c0de2b10:	aa03      	add	r2, sp, #12
c0de2b12:	f007 fffd 	bl	c0deab10 <cx_bn_cmp_u32>
c0de2b16:	bb38      	cbnz	r0, c0de2b68 <tEdwards_scalarMul_bn+0x70>
c0de2b18:	9803      	ldr	r0, [sp, #12]
c0de2b1a:	b1d0      	cbz	r0, c0de2b52 <tEdwards_scalarMul_bn+0x5a>
c0de2b1c:	6828      	ldr	r0, [r5, #0]
c0de2b1e:	a901      	add	r1, sp, #4
c0de2b20:	f007 ffb4 	bl	c0deaa8c <cx_bn_nbytes>
c0de2b24:	bb00      	cbnz	r0, c0de2b68 <tEdwards_scalarMul_bn+0x70>
c0de2b26:	2002      	movs	r0, #2
c0de2b28:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2b2c:	f10d 040b 	add.w	r4, sp, #11
c0de2b30:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2b32:	9801      	ldr	r0, [sp, #4]
c0de2b34:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2b38:	2000      	movs	r0, #0
c0de2b3a:	2801      	cmp	r0, #1
c0de2b3c:	d00f      	beq.n	c0de2b5e <tEdwards_scalarMul_bn+0x66>
c0de2b3e:	6828      	ldr	r0, [r5, #0]
c0de2b40:	4631      	mov	r1, r6
c0de2b42:	4622      	mov	r2, r4
c0de2b44:	f007 fff0 	bl	c0deab28 <cx_bn_tst_bit>
c0de2b48:	b970      	cbnz	r0, c0de2b68 <tEdwards_scalarMul_bn+0x70>
c0de2b4a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2b4e:	3e01      	subs	r6, #1
c0de2b50:	e7f3      	b.n	c0de2b3a <tEdwards_scalarMul_bn+0x42>
c0de2b52:	4638      	mov	r0, r7
c0de2b54:	4659      	mov	r1, fp
c0de2b56:	f7ff ff37 	bl	c0de29c8 <tEdwards_SetNeutral>
c0de2b5a:	b928      	cbnz	r0, c0de2b68 <tEdwards_scalarMul_bn+0x70>
c0de2b5c:	e7de      	b.n	c0de2b1c <tEdwards_scalarMul_bn+0x24>
c0de2b5e:	4640      	mov	r0, r8
c0de2b60:	4659      	mov	r1, fp
c0de2b62:	f7ff ff97 	bl	c0de2a94 <tEdwards_copy>
c0de2b66:	b110      	cbz	r0, c0de2b6e <tEdwards_scalarMul_bn+0x76>
c0de2b68:	b004      	add	sp, #16
c0de2b6a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2b6e:	2001      	movs	r0, #1
c0de2b70:	f10d 0a0b 	add.w	sl, sp, #11
c0de2b74:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2b78:	2e00      	cmp	r6, #0
c0de2b7a:	d420      	bmi.n	c0de2bbe <tEdwards_scalarMul_bn+0xc6>
c0de2b7c:	4638      	mov	r0, r7
c0de2b7e:	4659      	mov	r1, fp
c0de2b80:	465a      	mov	r2, fp
c0de2b82:	f7ff fc4f 	bl	c0de2424 <tEdwards_double>
c0de2b86:	2800      	cmp	r0, #0
c0de2b88:	d1ee      	bne.n	c0de2b68 <tEdwards_scalarMul_bn+0x70>
c0de2b8a:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2b8c:	4631      	mov	r1, r6
c0de2b8e:	4652      	mov	r2, sl
c0de2b90:	0040      	lsls	r0, r0, #1
c0de2b92:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2b94:	6828      	ldr	r0, [r5, #0]
c0de2b96:	f007 ffc7 	bl	c0deab28 <cx_bn_tst_bit>
c0de2b9a:	2800      	cmp	r0, #0
c0de2b9c:	d1e4      	bne.n	c0de2b68 <tEdwards_scalarMul_bn+0x70>
c0de2b9e:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2ba2:	b150      	cbz	r0, c0de2bba <tEdwards_scalarMul_bn+0xc2>
c0de2ba4:	4638      	mov	r0, r7
c0de2ba6:	4659      	mov	r1, fp
c0de2ba8:	4642      	mov	r2, r8
c0de2baa:	465b      	mov	r3, fp
c0de2bac:	f7ff fca5 	bl	c0de24fa <tEdwards_add>
c0de2bb0:	2800      	cmp	r0, #0
c0de2bb2:	d1d9      	bne.n	c0de2b68 <tEdwards_scalarMul_bn+0x70>
c0de2bb4:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2bb6:	3001      	adds	r0, #1
c0de2bb8:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2bba:	3e01      	subs	r6, #1
c0de2bbc:	e7dc      	b.n	c0de2b78 <tEdwards_scalarMul_bn+0x80>
c0de2bbe:	2000      	movs	r0, #0
c0de2bc0:	e7d2      	b.n	c0de2b68 <tEdwards_scalarMul_bn+0x70>
	...

c0de2bc4 <tEdwards_scalarMul>:
c0de2bc4:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2bc6:	460c      	mov	r4, r1
c0de2bc8:	6801      	ldr	r1, [r0, #0]
c0de2bca:	4299      	cmp	r1, r3
c0de2bcc:	bf3c      	itt	cc
c0de2bce:	480c      	ldrcc	r0, [pc, #48]	@ (c0de2c00 <tEdwards_scalarMul+0x3c>)
c0de2bd0:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de2bd2:	4605      	mov	r5, r0
c0de2bd4:	20ca      	movs	r0, #202	@ 0xca
c0de2bd6:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2bd8:	a801      	add	r0, sp, #4
c0de2bda:	f007 ff41 	bl	c0deaa60 <cx_bn_alloc_init>
c0de2bde:	b100      	cbz	r0, c0de2be2 <tEdwards_scalarMul+0x1e>
c0de2be0:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2be2:	20b3      	movs	r0, #179	@ 0xb3
c0de2be4:	9b06      	ldr	r3, [sp, #24]
c0de2be6:	4621      	mov	r1, r4
c0de2be8:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2bea:	aa01      	add	r2, sp, #4
c0de2bec:	4628      	mov	r0, r5
c0de2bee:	f7ff ff83 	bl	c0de2af8 <tEdwards_scalarMul_bn>
c0de2bf2:	2800      	cmp	r0, #0
c0de2bf4:	d1f4      	bne.n	c0de2be0 <tEdwards_scalarMul+0x1c>
c0de2bf6:	a801      	add	r0, sp, #4
c0de2bf8:	f007 ff3e 	bl	c0deaa78 <cx_bn_destroy>
c0de2bfc:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2bfe:	bf00      	nop
c0de2c00:	5a4b4e01 	.word	0x5a4b4e01

c0de2c04 <OUTLINED_FUNCTION_0>:
c0de2c04:	4633      	mov	r3, r6
c0de2c06:	f008 b80d 	b.w	c0deac24 <cx_mont_mul>

c0de2c0a <OUTLINED_FUNCTION_1>:
c0de2c0a:	462b      	mov	r3, r5
c0de2c0c:	f008 b80a 	b.w	c0deac24 <cx_mont_mul>

c0de2c10 <OUTLINED_FUNCTION_2>:
c0de2c10:	4633      	mov	r3, r6
c0de2c12:	460a      	mov	r2, r1
c0de2c14:	f008 b806 	b.w	c0deac24 <cx_mont_mul>

c0de2c18 <OUTLINED_FUNCTION_3>:
c0de2c18:	462a      	mov	r2, r5
c0de2c1a:	4601      	mov	r1, r0
c0de2c1c:	f007 bfea 	b.w	c0deabf4 <cx_mont_to_montgomery>

c0de2c20 <OUTLINED_FUNCTION_4>:
c0de2c20:	4620      	mov	r0, r4
c0de2c22:	f850 1b34 	ldr.w	r1, [r0], #52
c0de2c26:	f007 bf11 	b.w	c0deaa4c <cx_bn_alloc>

c0de2c2a <OUTLINED_FUNCTION_5>:
c0de2c2a:	4620      	mov	r0, r4
c0de2c2c:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2c30:	f007 bf0c 	b.w	c0deaa4c <cx_bn_alloc>

c0de2c34 <OUTLINED_FUNCTION_6>:
c0de2c34:	4620      	mov	r0, r4
c0de2c36:	f850 1b40 	ldr.w	r1, [r0], #64
c0de2c3a:	f007 bf07 	b.w	c0deaa4c <cx_bn_alloc>

c0de2c3e <OUTLINED_FUNCTION_7>:
c0de2c3e:	4620      	mov	r0, r4
c0de2c40:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2c44:	f007 bf02 	b.w	c0deaa4c <cx_bn_alloc>

c0de2c48 <OUTLINED_FUNCTION_8>:
c0de2c48:	4620      	mov	r0, r4
c0de2c4a:	f850 1b30 	ldr.w	r1, [r0], #48
c0de2c4e:	f007 befd 	b.w	c0deaa4c <cx_bn_alloc>

c0de2c52 <OUTLINED_FUNCTION_9>:
c0de2c52:	4620      	mov	r0, r4
c0de2c54:	f850 1b44 	ldr.w	r1, [r0], #68
c0de2c58:	f007 bef8 	b.w	c0deaa4c <cx_bn_alloc>

c0de2c5c <OUTLINED_FUNCTION_10>:
c0de2c5c:	4620      	mov	r0, r4
c0de2c5e:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2c62:	f007 bef3 	b.w	c0deaa4c <cx_bn_alloc>

c0de2c66 <OUTLINED_FUNCTION_11>:
c0de2c66:	6860      	ldr	r0, [r4, #4]
c0de2c68:	f007 bf26 	b.w	c0deaab8 <cx_bn_copy>

c0de2c6c <grain_lfsr_advance>:
c0de2c6c:	b5b0      	push	{r4, r5, r7, lr}
c0de2c6e:	68c2      	ldr	r2, [r0, #12]
c0de2c70:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2c74:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2c78:	ea4f 0234 	mov.w	r2, r4, rrx
c0de2c7c:	07e4      	lsls	r4, r4, #31
c0de2c7e:	60c5      	str	r5, [r0, #12]
c0de2c80:	07dd      	lsls	r5, r3, #31
c0de2c82:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2c86:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de2c8a:	6044      	str	r4, [r0, #4]
c0de2c8c:	4c15      	ldr	r4, [pc, #84]	@ (c0de2ce4 <grain_lfsr_advance+0x78>)
c0de2c8e:	6005      	str	r5, [r0, #0]
c0de2c90:	4021      	ands	r1, r4
c0de2c92:	4c15      	ldr	r4, [pc, #84]	@ (c0de2ce8 <grain_lfsr_advance+0x7c>)
c0de2c94:	4023      	ands	r3, r4
c0de2c96:	4419      	add	r1, r3
c0de2c98:	0c0c      	lsrs	r4, r1, #16
c0de2c9a:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de2c9e:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2ca2:	4421      	add	r1, r4
c0de2ca4:	0a0c      	lsrs	r4, r1, #8
c0de2ca6:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de2caa:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de2cae:	4061      	eors	r1, r4
c0de2cb0:	090c      	lsrs	r4, r1, #4
c0de2cb2:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2cb6:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de2cba:	4061      	eors	r1, r4
c0de2cbc:	088c      	lsrs	r4, r1, #2
c0de2cbe:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2cc2:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2cc6:	4061      	eors	r1, r4
c0de2cc8:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de2ccc:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2cd0:	4059      	eors	r1, r3
c0de2cd2:	f001 0101 	and.w	r1, r1, #1
c0de2cd6:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de2cda:	6082      	str	r2, [r0, #8]
c0de2cdc:	4608      	mov	r0, r1
c0de2cde:	2100      	movs	r1, #0
c0de2ce0:	bdb0      	pop	{r4, r5, r7, pc}
c0de2ce2:	bf00      	nop
c0de2ce4:	00802001 	.word	0x00802001
c0de2ce8:	40080040 	.word	0x40080040

c0de2cec <next64_graingen>:
c0de2cec:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2cf0:	460c      	mov	r4, r1
c0de2cf2:	4605      	mov	r5, r0
c0de2cf4:	f04f 0a00 	mov.w	sl, #0
c0de2cf8:	f04f 0800 	mov.w	r8, #0
c0de2cfc:	2700      	movs	r7, #0
c0de2cfe:	42a7      	cmp	r7, r4
c0de2d00:	d215      	bcs.n	c0de2d2e <next64_graingen+0x42>
c0de2d02:	4628      	mov	r0, r5
c0de2d04:	f7ff ffb2 	bl	c0de2c6c <grain_lfsr_advance>
c0de2d08:	4606      	mov	r6, r0
c0de2d0a:	4628      	mov	r0, r5
c0de2d0c:	f7ff ffae 	bl	c0de2c6c <grain_lfsr_advance>
c0de2d10:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de2d14:	0781      	lsls	r1, r0, #30
c0de2d16:	d5f2      	bpl.n	c0de2cfe <next64_graingen+0x12>
c0de2d18:	f000 0001 	and.w	r0, r0, #1
c0de2d1c:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de2d20:	3701      	adds	r7, #1
c0de2d22:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de2d26:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de2d2a:	4682      	mov	sl, r0
c0de2d2c:	e7e7      	b.n	c0de2cfe <next64_graingen+0x12>
c0de2d2e:	4650      	mov	r0, sl
c0de2d30:	4641      	mov	r1, r8
c0de2d32:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de2d38 <init_generator>:
c0de2d38:	b5b0      	push	{r4, r5, r7, lr}
c0de2d3a:	4a09      	ldr	r2, [pc, #36]	@ (c0de2d60 <init_generator+0x28>)
c0de2d3c:	4b09      	ldr	r3, [pc, #36]	@ (c0de2d64 <init_generator+0x2c>)
c0de2d3e:	4604      	mov	r4, r0
c0de2d40:	25a0      	movs	r5, #160	@ 0xa0
c0de2d42:	2000      	movs	r0, #0
c0de2d44:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de2d48:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de2d4c:	e9c4 3200 	strd	r3, r2, [r4]
c0de2d50:	b125      	cbz	r5, c0de2d5c <init_generator+0x24>
c0de2d52:	4620      	mov	r0, r4
c0de2d54:	f7ff ff8a 	bl	c0de2c6c <grain_lfsr_advance>
c0de2d58:	3d01      	subs	r5, #1
c0de2d5a:	e7f9      	b.n	c0de2d50 <init_generator+0x18>
c0de2d5c:	bdb0      	pop	{r4, r5, r7, pc}
c0de2d5e:	bf00      	nop
c0de2d60:	fffcf010 	.word	0xfffcf010
c0de2d64:	1801fc02 	.word	0x1801fc02

c0de2d68 <gen_integer>:
c0de2d68:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2d6c:	4f20      	ldr	r7, [pc, #128]	@ (c0de2df0 <gen_integer+0x88>)
c0de2d6e:	4e22      	ldr	r6, [pc, #136]	@ (c0de2df8 <gen_integer+0x90>)
c0de2d70:	4605      	mov	r5, r0
c0de2d72:	460c      	mov	r4, r1
c0de2d74:	2000      	movs	r0, #0
c0de2d76:	46b8      	mov	r8, r7
c0de2d78:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2df4 <gen_integer+0x8c>)
c0de2d7a:	447e      	add	r6, pc
c0de2d7c:	b9f8      	cbnz	r0, c0de2dbe <gen_integer+0x56>
c0de2d7e:	4628      	mov	r0, r5
c0de2d80:	213e      	movs	r1, #62	@ 0x3e
c0de2d82:	47b0      	blx	r6
c0de2d84:	e9c4 0100 	strd	r0, r1, [r4]
c0de2d88:	4628      	mov	r0, r5
c0de2d8a:	2140      	movs	r1, #64	@ 0x40
c0de2d8c:	47b0      	blx	r6
c0de2d8e:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2d92:	4628      	mov	r0, r5
c0de2d94:	2140      	movs	r1, #64	@ 0x40
c0de2d96:	47b0      	blx	r6
c0de2d98:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2d9c:	4628      	mov	r0, r5
c0de2d9e:	2140      	movs	r1, #64	@ 0x40
c0de2da0:	47b0      	blx	r6
c0de2da2:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2da6:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2daa:	463a      	mov	r2, r7
c0de2dac:	1bc0      	subs	r0, r0, r7
c0de2dae:	4640      	mov	r0, r8
c0de2db0:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2db4:	f04f 0000 	mov.w	r0, #0
c0de2db8:	bf38      	it	cc
c0de2dba:	2001      	movcc	r0, #1
c0de2dbc:	e7de      	b.n	c0de2d7c <gen_integer+0x14>
c0de2dbe:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2dc2:	4d0e      	ldr	r5, [pc, #56]	@ (c0de2dfc <gen_integer+0x94>)
c0de2dc4:	447d      	add	r5, pc
c0de2dc6:	47a8      	blx	r5
c0de2dc8:	e9c4 0100 	strd	r0, r1, [r4]
c0de2dcc:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2dd0:	47a8      	blx	r5
c0de2dd2:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2dd6:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de2dda:	47a8      	blx	r5
c0de2ddc:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2de0:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2de4:	47a8      	blx	r5
c0de2de6:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2dea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2dee:	bf00      	nop
c0de2df0:	305a4b4e 	.word	0x305a4b4e
c0de2df4:	4f582122 	.word	0x4f582122
c0de2df8:	ffffff6f 	.word	0xffffff6f
c0de2dfc:	00000039 	.word	0x00000039

c0de2e00 <rev64>:
c0de2e00:	ba0a      	rev	r2, r1
c0de2e02:	ba01      	rev	r1, r0
c0de2e04:	4610      	mov	r0, r2
c0de2e06:	4770      	bx	lr

c0de2e08 <Poseidon_getNext_RC>:
c0de2e08:	30c0      	adds	r0, #192	@ 0xc0
c0de2e0a:	f7ff bfad 	b.w	c0de2d68 <gen_integer>
	...

c0de2e10 <Poseidon_alloc_init>:
c0de2e10:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e14:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de2e18:	4604      	mov	r4, r0
c0de2e1a:	30c0      	adds	r0, #192	@ 0xc0
c0de2e1c:	461e      	mov	r6, r3
c0de2e1e:	4617      	mov	r7, r2
c0de2e20:	460d      	mov	r5, r1
c0de2e22:	f7ff ff89 	bl	c0de2d38 <init_generator>
c0de2e26:	492c      	ldr	r1, [pc, #176]	@ (c0de2ed8 <Poseidon_alloc_init+0xc8>)
c0de2e28:	46e8      	mov	r8, sp
c0de2e2a:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de2e2e:	4640      	mov	r0, r8
c0de2e30:	4479      	add	r1, pc
c0de2e32:	f008 f96e 	bl	c0deb112 <__aeabi_memcpy>
c0de2e36:	2000      	movs	r0, #0
c0de2e38:	7325      	strb	r5, [r4, #12]
c0de2e3a:	6166      	str	r6, [r4, #20]
c0de2e3c:	4621      	mov	r1, r4
c0de2e3e:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de2e42:	1c78      	adds	r0, r7, #1
c0de2e44:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de2e48:	6830      	ldr	r0, [r6, #0]
c0de2e4a:	f007 fe1f 	bl	c0deaa8c <cx_bn_nbytes>
c0de2e4e:	b930      	cbnz	r0, c0de2e5e <Poseidon_alloc_init+0x4e>
c0de2e50:	4620      	mov	r0, r4
c0de2e52:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de2e56:	4631      	mov	r1, r6
c0de2e58:	f007 fdf8 	bl	c0deaa4c <cx_bn_alloc>
c0de2e5c:	b118      	cbz	r0, c0de2e66 <Poseidon_alloc_init+0x56>
c0de2e5e:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2e62:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2e66:	68a0      	ldr	r0, [r4, #8]
c0de2e68:	2500      	movs	r5, #0
c0de2e6a:	4285      	cmp	r5, r0
c0de2e6c:	d230      	bcs.n	c0de2ed0 <Poseidon_alloc_init+0xc0>
c0de2e6e:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de2e72:	4631      	mov	r1, r6
c0de2e74:	f107 0018 	add.w	r0, r7, #24
c0de2e78:	f007 fde8 	bl	c0deaa4c <cx_bn_alloc>
c0de2e7c:	2800      	cmp	r0, #0
c0de2e7e:	d1ee      	bne.n	c0de2e5e <Poseidon_alloc_init+0x4e>
c0de2e80:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de2e84:	4631      	mov	r1, r6
c0de2e86:	f007 fde1 	bl	c0deaa4c <cx_bn_alloc>
c0de2e8a:	2800      	cmp	r0, #0
c0de2e8c:	d1e7      	bne.n	c0de2e5e <Poseidon_alloc_init+0x4e>
c0de2e8e:	2700      	movs	r7, #0
c0de2e90:	68a0      	ldr	r0, [r4, #8]
c0de2e92:	4287      	cmp	r7, r0
c0de2e94:	d21a      	bcs.n	c0de2ecc <Poseidon_alloc_init+0xbc>
c0de2e96:	fb05 7000 	mla	r0, r5, r0, r7
c0de2e9a:	4631      	mov	r1, r6
c0de2e9c:	4633      	mov	r3, r6
c0de2e9e:	fb00 8206 	mla	r2, r0, r6, r8
c0de2ea2:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2ea6:	3030      	adds	r0, #48	@ 0x30
c0de2ea8:	f007 fdda 	bl	c0deaa60 <cx_bn_alloc_init>
c0de2eac:	2800      	cmp	r0, #0
c0de2eae:	d1d6      	bne.n	c0de2e5e <Poseidon_alloc_init+0x4e>
c0de2eb0:	68a0      	ldr	r0, [r4, #8]
c0de2eb2:	6962      	ldr	r2, [r4, #20]
c0de2eb4:	fb05 7000 	mla	r0, r5, r0, r7
c0de2eb8:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2ebc:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de2ebe:	4601      	mov	r1, r0
c0de2ec0:	f007 fe98 	bl	c0deabf4 <cx_mont_to_montgomery>
c0de2ec4:	3701      	adds	r7, #1
c0de2ec6:	2800      	cmp	r0, #0
c0de2ec8:	d0e2      	beq.n	c0de2e90 <Poseidon_alloc_init+0x80>
c0de2eca:	e7c8      	b.n	c0de2e5e <Poseidon_alloc_init+0x4e>
c0de2ecc:	3501      	adds	r5, #1
c0de2ece:	e7cc      	b.n	c0de2e6a <Poseidon_alloc_init+0x5a>
c0de2ed0:	2001      	movs	r0, #1
c0de2ed2:	6120      	str	r0, [r4, #16]
c0de2ed4:	2000      	movs	r0, #0
c0de2ed6:	e7c2      	b.n	c0de2e5e <Poseidon_alloc_init+0x4e>
c0de2ed8:	0000930c 	.word	0x0000930c

c0de2edc <Poseidon>:
c0de2edc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ee0:	b08c      	sub	sp, #48	@ 0x30
c0de2ee2:	4606      	mov	r6, r0
c0de2ee4:	6900      	ldr	r0, [r0, #16]
c0de2ee6:	2801      	cmp	r0, #1
c0de2ee8:	f040 80b4 	bne.w	c0de3054 <Poseidon+0x178>
c0de2eec:	69b0      	ldr	r0, [r6, #24]
c0de2eee:	461f      	mov	r7, r3
c0de2ef0:	4692      	mov	sl, r2
c0de2ef2:	f007 fdeb 	bl	c0deaacc <cx_bn_set_u32>
c0de2ef6:	2800      	cmp	r0, #0
c0de2ef8:	f040 80ad 	bne.w	c0de3056 <Poseidon+0x17a>
c0de2efc:	f106 000c 	add.w	r0, r6, #12
c0de2f00:	f106 0818 	add.w	r8, r6, #24
c0de2f04:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de2f08:	9001      	str	r0, [sp, #4]
c0de2f0a:	2000      	movs	r0, #0
c0de2f0c:	2844      	cmp	r0, #68	@ 0x44
c0de2f0e:	f000 80ae 	beq.w	c0de306e <Poseidon+0x192>
c0de2f12:	6834      	ldr	r4, [r6, #0]
c0de2f14:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de2f18:	f04f 0a00 	mov.w	sl, #0
c0de2f1c:	68b0      	ldr	r0, [r6, #8]
c0de2f1e:	4582      	cmp	sl, r0
c0de2f20:	d224      	bcs.n	c0de2f6c <Poseidon+0x90>
c0de2f22:	ad04      	add	r5, sp, #16
c0de2f24:	4658      	mov	r0, fp
c0de2f26:	4629      	mov	r1, r5
c0de2f28:	f7ff ff1e 	bl	c0de2d68 <gen_integer>
c0de2f2c:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2f30:	4629      	mov	r1, r5
c0de2f32:	4622      	mov	r2, r4
c0de2f34:	f007 fdb4 	bl	c0deaaa0 <cx_bn_init>
c0de2f38:	2800      	cmp	r0, #0
c0de2f3a:	f040 808c 	bne.w	c0de3056 <Poseidon+0x17a>
c0de2f3e:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2f42:	6972      	ldr	r2, [r6, #20]
c0de2f44:	4601      	mov	r1, r0
c0de2f46:	f007 fe55 	bl	c0deabf4 <cx_mont_to_montgomery>
c0de2f4a:	2800      	cmp	r0, #0
c0de2f4c:	f040 8083 	bne.w	c0de3056 <Poseidon+0x17a>
c0de2f50:	6972      	ldr	r2, [r6, #20]
c0de2f52:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de2f56:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de2f5a:	6813      	ldr	r3, [r2, #0]
c0de2f5c:	4602      	mov	r2, r0
c0de2f5e:	f007 fdef 	bl	c0deab40 <cx_bn_mod_add>
c0de2f62:	f10a 0a01 	add.w	sl, sl, #1
c0de2f66:	2800      	cmp	r0, #0
c0de2f68:	d0d8      	beq.n	c0de2f1c <Poseidon+0x40>
c0de2f6a:	e074      	b.n	c0de3056 <Poseidon+0x17a>
c0de2f6c:	9902      	ldr	r1, [sp, #8]
c0de2f6e:	2904      	cmp	r1, #4
c0de2f70:	d301      	bcc.n	c0de2f76 <Poseidon+0x9a>
c0de2f72:	2940      	cmp	r1, #64	@ 0x40
c0de2f74:	d323      	bcc.n	c0de2fbe <Poseidon+0xe2>
c0de2f76:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de2f7a:	2400      	movs	r4, #0
c0de2f7c:	4284      	cmp	r4, r0
c0de2f7e:	d22b      	bcs.n	c0de2fd8 <Poseidon+0xfc>
c0de2f80:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de2f84:	6973      	ldr	r3, [r6, #20]
c0de2f86:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2f8a:	460a      	mov	r2, r1
c0de2f8c:	f007 fe4a 	bl	c0deac24 <cx_mont_mul>
c0de2f90:	2800      	cmp	r0, #0
c0de2f92:	d160      	bne.n	c0de3056 <Poseidon+0x17a>
c0de2f94:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de2f98:	6973      	ldr	r3, [r6, #20]
c0de2f9a:	460a      	mov	r2, r1
c0de2f9c:	f007 fe42 	bl	c0deac24 <cx_mont_mul>
c0de2fa0:	2800      	cmp	r0, #0
c0de2fa2:	d158      	bne.n	c0de3056 <Poseidon+0x17a>
c0de2fa4:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de2fa8:	6973      	ldr	r3, [r6, #20]
c0de2faa:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de2fae:	4601      	mov	r1, r0
c0de2fb0:	f007 fe38 	bl	c0deac24 <cx_mont_mul>
c0de2fb4:	2800      	cmp	r0, #0
c0de2fb6:	d14e      	bne.n	c0de3056 <Poseidon+0x17a>
c0de2fb8:	68b0      	ldr	r0, [r6, #8]
c0de2fba:	3401      	adds	r4, #1
c0de2fbc:	e7de      	b.n	c0de2f7c <Poseidon+0xa0>
c0de2fbe:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de2fc2:	9a01      	ldr	r2, [sp, #4]
c0de2fc4:	2301      	movs	r3, #1
c0de2fc6:	9100      	str	r1, [sp, #0]
c0de2fc8:	4601      	mov	r1, r0
c0de2fca:	f007 fe37 	bl	c0deac3c <cx_mont_pow>
c0de2fce:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de2fd2:	2800      	cmp	r0, #0
c0de2fd4:	d13f      	bne.n	c0de3056 <Poseidon+0x17a>
c0de2fd6:	68b0      	ldr	r0, [r6, #8]
c0de2fd8:	2500      	movs	r5, #0
c0de2fda:	4285      	cmp	r5, r0
c0de2fdc:	d229      	bcs.n	c0de3032 <Poseidon+0x156>
c0de2fde:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de2fe2:	2100      	movs	r1, #0
c0de2fe4:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de2fe8:	f007 fd70 	bl	c0deaacc <cx_bn_set_u32>
c0de2fec:	bb98      	cbnz	r0, c0de3056 <Poseidon+0x17a>
c0de2fee:	9503      	str	r5, [sp, #12]
c0de2ff0:	2500      	movs	r5, #0
c0de2ff2:	68b0      	ldr	r0, [r6, #8]
c0de2ff4:	4285      	cmp	r5, r0
c0de2ff6:	d219      	bcs.n	c0de302c <Poseidon+0x150>
c0de2ff8:	9903      	ldr	r1, [sp, #12]
c0de2ffa:	6973      	ldr	r3, [r6, #20]
c0de2ffc:	fb01 5000 	mla	r0, r1, r0, r5
c0de3000:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3004:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de3008:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de300a:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de300e:	f007 fe09 	bl	c0deac24 <cx_mont_mul>
c0de3012:	bb00      	cbnz	r0, c0de3056 <Poseidon+0x17a>
c0de3014:	6971      	ldr	r1, [r6, #20]
c0de3016:	6820      	ldr	r0, [r4, #0]
c0de3018:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de301c:	680b      	ldr	r3, [r1, #0]
c0de301e:	4601      	mov	r1, r0
c0de3020:	f007 fd8e 	bl	c0deab40 <cx_bn_mod_add>
c0de3024:	3501      	adds	r5, #1
c0de3026:	2800      	cmp	r0, #0
c0de3028:	d0e3      	beq.n	c0de2ff2 <Poseidon+0x116>
c0de302a:	e014      	b.n	c0de3056 <Poseidon+0x17a>
c0de302c:	9d03      	ldr	r5, [sp, #12]
c0de302e:	3501      	adds	r5, #1
c0de3030:	e7d3      	b.n	c0de2fda <Poseidon+0xfe>
c0de3032:	2400      	movs	r4, #0
c0de3034:	4284      	cmp	r4, r0
c0de3036:	d20a      	bcs.n	c0de304e <Poseidon+0x172>
c0de3038:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de303c:	6988      	ldr	r0, [r1, #24]
c0de303e:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de3042:	f007 fd39 	bl	c0deaab8 <cx_bn_copy>
c0de3046:	b930      	cbnz	r0, c0de3056 <Poseidon+0x17a>
c0de3048:	68b0      	ldr	r0, [r6, #8]
c0de304a:	3401      	adds	r4, #1
c0de304c:	e7f2      	b.n	c0de3034 <Poseidon+0x158>
c0de304e:	9802      	ldr	r0, [sp, #8]
c0de3050:	3001      	adds	r0, #1
c0de3052:	e75b      	b.n	c0de2f0c <Poseidon+0x30>
c0de3054:	4808      	ldr	r0, [pc, #32]	@ (c0de3078 <Poseidon+0x19c>)
c0de3056:	b00c      	add	sp, #48	@ 0x30
c0de3058:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de305c:	f858 1b04 	ldr.w	r1, [r8], #4
c0de3060:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de3064:	f007 fd28 	bl	c0deaab8 <cx_bn_copy>
c0de3068:	3f01      	subs	r7, #1
c0de306a:	2800      	cmp	r0, #0
c0de306c:	d1f3      	bne.n	c0de3056 <Poseidon+0x17a>
c0de306e:	2f00      	cmp	r7, #0
c0de3070:	d1f4      	bne.n	c0de305c <Poseidon+0x180>
c0de3072:	2000      	movs	r0, #0
c0de3074:	e7ef      	b.n	c0de3056 <Poseidon+0x17a>
c0de3076:	bf00      	nop
c0de3078:	5a4b4e02 	.word	0x5a4b4e02

c0de307c <RFC9591_taggedHash>:
c0de307c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de307e:	b0d9      	sub	sp, #356	@ 0x164
c0de3080:	460e      	mov	r6, r1
c0de3082:	4607      	mov	r7, r0
c0de3084:	a858      	add	r0, sp, #352	@ 0x160
c0de3086:	2140      	movs	r1, #64	@ 0x40
c0de3088:	461c      	mov	r4, r3
c0de308a:	4615      	mov	r5, r2
c0de308c:	f007 fcde 	bl	c0deaa4c <cx_bn_alloc>
c0de3090:	bbd8      	cbnz	r0, c0de310a <RFC9591_taggedHash+0x8e>
c0de3092:	491f      	ldr	r1, [pc, #124]	@ (c0de3110 <RFC9591_taggedHash+0x94>)
c0de3094:	4668      	mov	r0, sp
c0de3096:	221d      	movs	r2, #29
c0de3098:	4479      	add	r1, pc
c0de309a:	f008 f83a 	bl	c0deb112 <__aeabi_memcpy>
c0de309e:	a808      	add	r0, sp, #32
c0de30a0:	2109      	movs	r1, #9
c0de30a2:	2240      	movs	r2, #64	@ 0x40
c0de30a4:	f006 fddc 	bl	c0de9c60 <cx_hash_init_ex>
c0de30a8:	bb78      	cbnz	r0, c0de310a <RFC9591_taggedHash+0x8e>
c0de30aa:	a808      	add	r0, sp, #32
c0de30ac:	4669      	mov	r1, sp
c0de30ae:	221d      	movs	r2, #29
c0de30b0:	f006 fddb 	bl	c0de9c6a <cx_hash_update>
c0de30b4:	bb48      	cbnz	r0, c0de310a <RFC9591_taggedHash+0x8e>
c0de30b6:	a808      	add	r0, sp, #32
c0de30b8:	4639      	mov	r1, r7
c0de30ba:	4632      	mov	r2, r6
c0de30bc:	f006 fdd5 	bl	c0de9c6a <cx_hash_update>
c0de30c0:	bb18      	cbnz	r0, c0de310a <RFC9591_taggedHash+0x8e>
c0de30c2:	a808      	add	r0, sp, #32
c0de30c4:	4629      	mov	r1, r5
c0de30c6:	4622      	mov	r2, r4
c0de30c8:	f006 fdcf 	bl	c0de9c6a <cx_hash_update>
c0de30cc:	b9e8      	cbnz	r0, c0de310a <RFC9591_taggedHash+0x8e>
c0de30ce:	a808      	add	r0, sp, #32
c0de30d0:	ae48      	add	r6, sp, #288	@ 0x120
c0de30d2:	4631      	mov	r1, r6
c0de30d4:	f006 fdbf 	bl	c0de9c56 <cx_hash_final>
c0de30d8:	b9b8      	cbnz	r0, c0de310a <RFC9591_taggedHash+0x8e>
c0de30da:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de30de:	2000      	movs	r0, #0
c0de30e0:	213f      	movs	r1, #63	@ 0x3f
c0de30e2:	2820      	cmp	r0, #32
c0de30e4:	d002      	beq.n	c0de30ec <RFC9591_taggedHash+0x70>
c0de30e6:	f000 f8dd 	bl	c0de32a4 <OUTLINED_FUNCTION_3>
c0de30ea:	e7fa      	b.n	c0de30e2 <RFC9591_taggedHash+0x66>
c0de30ec:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de30ee:	a948      	add	r1, sp, #288	@ 0x120
c0de30f0:	2240      	movs	r2, #64	@ 0x40
c0de30f2:	f007 fcd5 	bl	c0deaaa0 <cx_bn_init>
c0de30f6:	b940      	cbnz	r0, c0de310a <RFC9591_taggedHash+0x8e>
c0de30f8:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de30fa:	4628      	mov	r0, r5
c0de30fc:	4622      	mov	r2, r4
c0de30fe:	f007 fd43 	bl	c0deab88 <cx_bn_reduce>
c0de3102:	b910      	cbnz	r0, c0de310a <RFC9591_taggedHash+0x8e>
c0de3104:	a858      	add	r0, sp, #352	@ 0x160
c0de3106:	f007 fcb7 	bl	c0deaa78 <cx_bn_destroy>
c0de310a:	b059      	add	sp, #356	@ 0x164
c0de310c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de310e:	bf00      	nop
c0de3110:	00009524 	.word	0x00009524

c0de3114 <Babyfrost_H1>:
c0de3114:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3116:	4605      	mov	r5, r0
c0de3118:	206f      	movs	r0, #111	@ 0x6f
c0de311a:	f000 f8b7 	bl	c0de328c <OUTLINED_FUNCTION_1>
c0de311e:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3122:	f000 f8ba 	bl	c0de329a <OUTLINED_FUNCTION_2>
c0de3126:	a803      	add	r0, sp, #12
c0de3128:	f7ff ffa8 	bl	c0de307c <RFC9591_taggedHash>
c0de312c:	b004      	add	sp, #16
c0de312e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3130 <Babyfrost_H3>:
c0de3130:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3132:	4605      	mov	r5, r0
c0de3134:	2065      	movs	r0, #101	@ 0x65
c0de3136:	460c      	mov	r4, r1
c0de3138:	e9cd 2300 	strd	r2, r3, [sp]
c0de313c:	2105      	movs	r1, #5
c0de313e:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3142:	4804      	ldr	r0, [pc, #16]	@ (c0de3154 <Babyfrost_H3+0x24>)
c0de3144:	462a      	mov	r2, r5
c0de3146:	4623      	mov	r3, r4
c0de3148:	9002      	str	r0, [sp, #8]
c0de314a:	a802      	add	r0, sp, #8
c0de314c:	f7ff ff96 	bl	c0de307c <RFC9591_taggedHash>
c0de3150:	b004      	add	sp, #16
c0de3152:	bdb0      	pop	{r4, r5, r7, pc}
c0de3154:	636e6f6e 	.word	0x636e6f6e

c0de3158 <Babyfrost_H4>:
c0de3158:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de315a:	4605      	mov	r5, r0
c0de315c:	2067      	movs	r0, #103	@ 0x67
c0de315e:	f000 f895 	bl	c0de328c <OUTLINED_FUNCTION_1>
c0de3162:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de3166:	f000 f898 	bl	c0de329a <OUTLINED_FUNCTION_2>
c0de316a:	a803      	add	r0, sp, #12
c0de316c:	f7ff ff86 	bl	c0de307c <RFC9591_taggedHash>
c0de3170:	b004      	add	sp, #16
c0de3172:	bdb0      	pop	{r4, r5, r7, pc}

c0de3174 <Babyfrost_H5>:
c0de3174:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3176:	4605      	mov	r5, r0
c0de3178:	206d      	movs	r0, #109	@ 0x6d
c0de317a:	f000 f887 	bl	c0de328c <OUTLINED_FUNCTION_1>
c0de317e:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3182:	f000 f88a 	bl	c0de329a <OUTLINED_FUNCTION_2>
c0de3186:	a803      	add	r0, sp, #12
c0de3188:	f7ff ff78 	bl	c0de307c <RFC9591_taggedHash>
c0de318c:	b004      	add	sp, #16
c0de318e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3190 <zkn_frost_hash_init>:
c0de3190:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de3192:	461d      	mov	r5, r3
c0de3194:	4604      	mov	r4, r0
c0de3196:	f006 fd63 	bl	c0de9c60 <cx_hash_init_ex>
c0de319a:	b938      	cbnz	r0, c0de31ac <zkn_frost_hash_init+0x1c>
c0de319c:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de31a0:	9e08      	ldr	r6, [sp, #32]
c0de31a2:	4620      	mov	r0, r4
c0de31a4:	4629      	mov	r1, r5
c0de31a6:	f006 fd60 	bl	c0de9c6a <cx_hash_update>
c0de31aa:	b100      	cbz	r0, c0de31ae <zkn_frost_hash_init+0x1e>
c0de31ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de31ae:	4620      	mov	r0, r4
c0de31b0:	4639      	mov	r1, r7
c0de31b2:	4632      	mov	r2, r6
c0de31b4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de31b8:	f006 bd57 	b.w	c0de9c6a <cx_hash_update>

c0de31bc <zkn_frost_H1_init>:
c0de31bc:	b570      	push	{r4, r5, r6, lr}
c0de31be:	b08c      	sub	sp, #48	@ 0x30
c0de31c0:	4604      	mov	r4, r0
c0de31c2:	206f      	movs	r0, #111	@ 0x6f
c0de31c4:	221d      	movs	r2, #29
c0de31c6:	261d      	movs	r6, #29
c0de31c8:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de31cc:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de31d0:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de31d4:	ad03      	add	r5, sp, #12
c0de31d6:	4905      	ldr	r1, [pc, #20]	@ (c0de31ec <zkn_frost_H1_init+0x30>)
c0de31d8:	4628      	mov	r0, r5
c0de31da:	4479      	add	r1, pc
c0de31dc:	f007 ff99 	bl	c0deb112 <__aeabi_memcpy>
c0de31e0:	a90b      	add	r1, sp, #44	@ 0x2c
c0de31e2:	f000 f849 	bl	c0de3278 <OUTLINED_FUNCTION_0>
c0de31e6:	b00c      	add	sp, #48	@ 0x30
c0de31e8:	bd70      	pop	{r4, r5, r6, pc}
c0de31ea:	bf00      	nop
c0de31ec:	000093e2 	.word	0x000093e2

c0de31f0 <zkn_frost_H5_init>:
c0de31f0:	b570      	push	{r4, r5, r6, lr}
c0de31f2:	b08c      	sub	sp, #48	@ 0x30
c0de31f4:	4604      	mov	r4, r0
c0de31f6:	206d      	movs	r0, #109	@ 0x6d
c0de31f8:	221d      	movs	r2, #29
c0de31fa:	261d      	movs	r6, #29
c0de31fc:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3200:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3204:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3208:	ad03      	add	r5, sp, #12
c0de320a:	4905      	ldr	r1, [pc, #20]	@ (c0de3220 <zkn_frost_H5_init+0x30>)
c0de320c:	4628      	mov	r0, r5
c0de320e:	4479      	add	r1, pc
c0de3210:	f007 ff7f 	bl	c0deb112 <__aeabi_memcpy>
c0de3214:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3216:	f000 f82f 	bl	c0de3278 <OUTLINED_FUNCTION_0>
c0de321a:	b00c      	add	sp, #48	@ 0x30
c0de321c:	bd70      	pop	{r4, r5, r6, pc}
c0de321e:	bf00      	nop
c0de3220:	000093ae 	.word	0x000093ae

c0de3224 <zkn_frost_hash_update>:
c0de3224:	f006 bd21 	b.w	c0de9c6a <cx_hash_update>

c0de3228 <zkn_frost_hash_final>:
c0de3228:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de322a:	b091      	sub	sp, #68	@ 0x44
c0de322c:	460c      	mov	r4, r1
c0de322e:	4607      	mov	r7, r0
c0de3230:	a810      	add	r0, sp, #64	@ 0x40
c0de3232:	2140      	movs	r1, #64	@ 0x40
c0de3234:	4615      	mov	r5, r2
c0de3236:	f007 fc09 	bl	c0deaa4c <cx_bn_alloc>
c0de323a:	b9d8      	cbnz	r0, c0de3274 <zkn_frost_hash_final+0x4c>
c0de323c:	466e      	mov	r6, sp
c0de323e:	4638      	mov	r0, r7
c0de3240:	4631      	mov	r1, r6
c0de3242:	f006 fd08 	bl	c0de9c56 <cx_hash_final>
c0de3246:	b9a8      	cbnz	r0, c0de3274 <zkn_frost_hash_final+0x4c>
c0de3248:	2000      	movs	r0, #0
c0de324a:	213f      	movs	r1, #63	@ 0x3f
c0de324c:	2820      	cmp	r0, #32
c0de324e:	d002      	beq.n	c0de3256 <zkn_frost_hash_final+0x2e>
c0de3250:	f000 f828 	bl	c0de32a4 <OUTLINED_FUNCTION_3>
c0de3254:	e7fa      	b.n	c0de324c <zkn_frost_hash_final+0x24>
c0de3256:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de3258:	4669      	mov	r1, sp
c0de325a:	2240      	movs	r2, #64	@ 0x40
c0de325c:	f007 fc20 	bl	c0deaaa0 <cx_bn_init>
c0de3260:	b940      	cbnz	r0, c0de3274 <zkn_frost_hash_final+0x4c>
c0de3262:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de3264:	4628      	mov	r0, r5
c0de3266:	4622      	mov	r2, r4
c0de3268:	f007 fc8e 	bl	c0deab88 <cx_bn_reduce>
c0de326c:	b910      	cbnz	r0, c0de3274 <zkn_frost_hash_final+0x4c>
c0de326e:	a810      	add	r0, sp, #64	@ 0x40
c0de3270:	f007 fc02 	bl	c0deaa78 <cx_bn_destroy>
c0de3274:	b011      	add	sp, #68	@ 0x44
c0de3276:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3278 <OUTLINED_FUNCTION_0>:
c0de3278:	2003      	movs	r0, #3
c0de327a:	2240      	movs	r2, #64	@ 0x40
c0de327c:	462b      	mov	r3, r5
c0de327e:	e9cd 6100 	strd	r6, r1, [sp]
c0de3282:	9002      	str	r0, [sp, #8]
c0de3284:	4620      	mov	r0, r4
c0de3286:	2109      	movs	r1, #9
c0de3288:	f7ff bf82 	b.w	c0de3190 <zkn_frost_hash_init>

c0de328c <OUTLINED_FUNCTION_1>:
c0de328c:	460c      	mov	r4, r1
c0de328e:	e9cd 2300 	strd	r2, r3, [sp]
c0de3292:	2103      	movs	r1, #3
c0de3294:	f88d 000e 	strb.w	r0, [sp, #14]
c0de3298:	4770      	bx	lr

c0de329a <OUTLINED_FUNCTION_2>:
c0de329a:	462a      	mov	r2, r5
c0de329c:	4623      	mov	r3, r4
c0de329e:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de32a2:	4770      	bx	lr

c0de32a4 <OUTLINED_FUNCTION_3>:
c0de32a4:	5c32      	ldrb	r2, [r6, r0]
c0de32a6:	5c73      	ldrb	r3, [r6, r1]
c0de32a8:	5433      	strb	r3, [r6, r0]
c0de32aa:	5472      	strb	r2, [r6, r1]
c0de32ac:	3901      	subs	r1, #1
c0de32ae:	3001      	adds	r0, #1
c0de32b0:	4770      	bx	lr
	...

c0de32b4 <nbgl_buttonsHandler>:
c0de32b4:	b5b0      	push	{r4, r5, r7, lr}
c0de32b6:	4930      	ldr	r1, [pc, #192]	@ (c0de3378 <nbgl_buttonsHandler+0xc4>)
c0de32b8:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de32bc:	4282      	cmp	r2, r0
c0de32be:	d108      	bne.n	c0de32d2 <nbgl_buttonsHandler+0x1e>
c0de32c0:	2800      	cmp	r0, #0
c0de32c2:	d04b      	beq.n	c0de335c <nbgl_buttonsHandler+0xa8>
c0de32c4:	eb09 0301 	add.w	r3, r9, r1
c0de32c8:	685a      	ldr	r2, [r3, #4]
c0de32ca:	3201      	adds	r2, #1
c0de32cc:	605a      	str	r2, [r3, #4]
c0de32ce:	4603      	mov	r3, r0
c0de32d0:	e006      	b.n	c0de32e0 <nbgl_buttonsHandler+0x2c>
c0de32d2:	ea42 0400 	orr.w	r4, r2, r0
c0de32d6:	eb09 0201 	add.w	r2, r9, r1
c0de32da:	6852      	ldr	r2, [r2, #4]
c0de32dc:	b120      	cbz	r0, c0de32e8 <nbgl_buttonsHandler+0x34>
c0de32de:	4623      	mov	r3, r4
c0de32e0:	461c      	mov	r4, r3
c0de32e2:	f809 3001 	strb.w	r3, [r9, r1]
c0de32e6:	e007      	b.n	c0de32f8 <nbgl_buttonsHandler+0x44>
c0de32e8:	2300      	movs	r3, #0
c0de32ea:	eb09 0501 	add.w	r5, r9, r1
c0de32ee:	f064 047f 	orn	r4, r4, #127	@ 0x7f
c0de32f2:	f809 3001 	strb.w	r3, [r9, r1]
c0de32f6:	606b      	str	r3, [r5, #4]
c0de32f8:	4283      	cmp	r3, r0
c0de32fa:	bf1e      	ittt	ne
c0de32fc:	eb09 0001 	addne.w	r0, r9, r1
c0de3300:	2100      	movne	r1, #0
c0de3302:	6041      	strne	r1, [r0, #4]
c0de3304:	2a08      	cmp	r2, #8
c0de3306:	d30a      	bcc.n	c0de331e <nbgl_buttonsHandler+0x6a>
c0de3308:	2003      	movs	r0, #3
c0de330a:	fbb2 f0f0 	udiv	r0, r2, r0
c0de330e:	eb00 0040 	add.w	r0, r0, r0, lsl #1
c0de3312:	1a10      	subs	r0, r2, r0
c0de3314:	bf08      	it	eq
c0de3316:	f044 0440 	orreq.w	r4, r4, #64	@ 0x40
c0de331a:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
c0de331e:	f002 fe9f 	bl	c0de6060 <nbgl_screenGetTop>
c0de3322:	b1d8      	cbz	r0, c0de335c <nbgl_buttonsHandler+0xa8>
c0de3324:	4601      	mov	r1, r0
c0de3326:	f811 2f32 	ldrb.w	r2, [r1, #50]!
c0de332a:	784b      	ldrb	r3, [r1, #1]
c0de332c:	788d      	ldrb	r5, [r1, #2]
c0de332e:	78c9      	ldrb	r1, [r1, #3]
c0de3330:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3334:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de3338:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de333c:	b172      	cbz	r2, c0de335c <nbgl_buttonsHandler+0xa8>
c0de333e:	b2e1      	uxtb	r1, r4
c0de3340:	2983      	cmp	r1, #131	@ 0x83
c0de3342:	d00c      	beq.n	c0de335e <nbgl_buttonsHandler+0xaa>
c0de3344:	2941      	cmp	r1, #65	@ 0x41
c0de3346:	d00c      	beq.n	c0de3362 <nbgl_buttonsHandler+0xae>
c0de3348:	2942      	cmp	r1, #66	@ 0x42
c0de334a:	d00c      	beq.n	c0de3366 <nbgl_buttonsHandler+0xb2>
c0de334c:	2981      	cmp	r1, #129	@ 0x81
c0de334e:	d00c      	beq.n	c0de336a <nbgl_buttonsHandler+0xb6>
c0de3350:	2982      	cmp	r1, #130	@ 0x82
c0de3352:	d00c      	beq.n	c0de336e <nbgl_buttonsHandler+0xba>
c0de3354:	2903      	cmp	r1, #3
c0de3356:	d101      	bne.n	c0de335c <nbgl_buttonsHandler+0xa8>
c0de3358:	2105      	movs	r1, #5
c0de335a:	e009      	b.n	c0de3370 <nbgl_buttonsHandler+0xbc>
c0de335c:	bdb0      	pop	{r4, r5, r7, pc}
c0de335e:	2104      	movs	r1, #4
c0de3360:	e006      	b.n	c0de3370 <nbgl_buttonsHandler+0xbc>
c0de3362:	2102      	movs	r1, #2
c0de3364:	e004      	b.n	c0de3370 <nbgl_buttonsHandler+0xbc>
c0de3366:	2103      	movs	r1, #3
c0de3368:	e002      	b.n	c0de3370 <nbgl_buttonsHandler+0xbc>
c0de336a:	2100      	movs	r1, #0
c0de336c:	e000      	b.n	c0de3370 <nbgl_buttonsHandler+0xbc>
c0de336e:	2101      	movs	r1, #1
c0de3370:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3374:	4710      	bx	r2
c0de3376:	bf00      	nop
c0de3378:	000003e8 	.word	0x000003e8

c0de337c <nbgl_drawRoundedRect>:
c0de337c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3380:	b08a      	sub	sp, #40	@ 0x28
c0de3382:	468b      	mov	fp, r1
c0de3384:	4606      	mov	r6, r0
c0de3386:	2901      	cmp	r1, #1
c0de3388:	9206      	str	r2, [sp, #24]
c0de338a:	d804      	bhi.n	c0de3396 <nbgl_drawRoundedRect+0x1a>
c0de338c:	4872      	ldr	r0, [pc, #456]	@ (c0de3558 <nbgl_drawRoundedRect+0x1dc>)
c0de338e:	4478      	add	r0, pc
c0de3390:	f810 700b 	ldrb.w	r7, [r0, fp]
c0de3394:	e004      	b.n	c0de33a0 <nbgl_drawRoundedRect+0x24>
c0de3396:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de339a:	f040 80da 	bne.w	c0de3552 <nbgl_drawRoundedRect+0x1d6>
c0de339e:	2700      	movs	r7, #0
c0de33a0:	9806      	ldr	r0, [sp, #24]
c0de33a2:	7871      	ldrb	r1, [r6, #1]
c0de33a4:	78b2      	ldrb	r2, [r6, #2]
c0de33a6:	78f3      	ldrb	r3, [r6, #3]
c0de33a8:	f88d 0024 	strb.w	r0, [sp, #36]	@ 0x24
c0de33ac:	7830      	ldrb	r0, [r6, #0]
c0de33ae:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de33b2:	79b3      	ldrb	r3, [r6, #6]
c0de33b4:	f8ad 201e 	strh.w	r2, [sp, #30]
c0de33b8:	79f2      	ldrb	r2, [r6, #7]
c0de33ba:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de33be:	7931      	ldrb	r1, [r6, #4]
c0de33c0:	4438      	add	r0, r7
c0de33c2:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de33c6:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de33ca:	7970      	ldrb	r0, [r6, #5]
c0de33cc:	f8ad 2022 	strh.w	r2, [sp, #34]	@ 0x22
c0de33d0:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de33d4:	eba0 0047 	sub.w	r0, r0, r7, lsl #1
c0de33d8:	f8ad 0020 	strh.w	r0, [sp, #32]
c0de33dc:	a807      	add	r0, sp, #28
c0de33de:	f007 fac5 	bl	c0dea96c <nbgl_frontDrawRect>
c0de33e2:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de33e6:	f000 80b4 	beq.w	c0de3552 <nbgl_drawRoundedRect+0x1d6>
c0de33ea:	7830      	ldrb	r0, [r6, #0]
c0de33ec:	7871      	ldrb	r1, [r6, #1]
c0de33ee:	4635      	mov	r5, r6
c0de33f0:	46b0      	mov	r8, r6
c0de33f2:	007c      	lsls	r4, r7, #1
c0de33f4:	f10d 0a1c 	add.w	sl, sp, #28
c0de33f8:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de33fc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3400:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3404:	f815 0f02 	ldrb.w	r0, [r5, #2]!
c0de3408:	7869      	ldrb	r1, [r5, #1]
c0de340a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de340e:	4438      	add	r0, r7
c0de3410:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de3414:	f818 0f06 	ldrb.w	r0, [r8, #6]!
c0de3418:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de341c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3420:	1b00      	subs	r0, r0, r4
c0de3422:	f8ad 0022 	strh.w	r0, [sp, #34]	@ 0x22
c0de3426:	4650      	mov	r0, sl
c0de3428:	f007 faa0 	bl	c0dea96c <nbgl_frontDrawRect>
c0de342c:	7828      	ldrb	r0, [r5, #0]
c0de342e:	7869      	ldrb	r1, [r5, #1]
c0de3430:	7932      	ldrb	r2, [r6, #4]
c0de3432:	7973      	ldrb	r3, [r6, #5]
c0de3434:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de3438:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de343c:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de3440:	4438      	add	r0, r7
c0de3442:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de3446:	f898 0000 	ldrb.w	r0, [r8]
c0de344a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de344e:	7871      	ldrb	r1, [r6, #1]
c0de3450:	1b00      	subs	r0, r0, r4
c0de3452:	f8ad 0022 	strh.w	r0, [sp, #34]	@ 0x22
c0de3456:	f000 fb5f 	bl	c0de3b18 <OUTLINED_FUNCTION_1>
c0de345a:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de345e:	4650      	mov	r0, sl
c0de3460:	f007 fa84 	bl	c0dea96c <nbgl_frontDrawRect>
c0de3464:	f1bb 0f00 	cmp.w	fp, #0
c0de3468:	d073      	beq.n	c0de3552 <nbgl_drawRoundedRect+0x1d6>
c0de346a:	46b2      	mov	sl, r6
c0de346c:	7a31      	ldrb	r1, [r6, #8]
c0de346e:	f8dd 8018 	ldr.w	r8, [sp, #24]
c0de3472:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de3476:	7833      	ldrb	r3, [r6, #0]
c0de3478:	f81a cf02 	ldrb.w	ip, [sl, #2]!
c0de347c:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3480:	2301      	movs	r3, #1
c0de3482:	f99a 2001 	ldrsb.w	r2, [sl, #1]
c0de3486:	9102      	str	r1, [sp, #8]
c0de3488:	e9cd 8800 	strd	r8, r8, [sp]
c0de348c:	4438      	add	r0, r7
c0de348e:	4c33      	ldr	r4, [pc, #204]	@ (c0de355c <nbgl_drawRoundedRect+0x1e0>)
c0de3490:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3494:	465a      	mov	r2, fp
c0de3496:	4439      	add	r1, r7
c0de3498:	447c      	add	r4, pc
c0de349a:	47a0      	blx	r4
c0de349c:	4630      	mov	r0, r6
c0de349e:	f996 c001 	ldrsb.w	ip, [r6, #1]
c0de34a2:	7832      	ldrb	r2, [r6, #0]
c0de34a4:	f99a 5001 	ldrsb.w	r5, [sl, #1]
c0de34a8:	f89a e000 	ldrb.w	lr, [sl]
c0de34ac:	9405      	str	r4, [sp, #20]
c0de34ae:	f810 3f04 	ldrb.w	r3, [r0, #4]!
c0de34b2:	9004      	str	r0, [sp, #16]
c0de34b4:	7841      	ldrb	r1, [r0, #1]
c0de34b6:	7a30      	ldrb	r0, [r6, #8]
c0de34b8:	e9cd 8800 	strd	r8, r8, [sp]
c0de34bc:	9002      	str	r0, [sp, #8]
c0de34be:	ea43 2001 	orr.w	r0, r3, r1, lsl #8
c0de34c2:	ea42 210c 	orr.w	r1, r2, ip, lsl #8
c0de34c6:	465a      	mov	r2, fp
c0de34c8:	2300      	movs	r3, #0
c0de34ca:	1bc9      	subs	r1, r1, r7
c0de34cc:	4408      	add	r0, r1
c0de34ce:	ea4e 2105 	orr.w	r1, lr, r5, lsl #8
c0de34d2:	4439      	add	r1, r7
c0de34d4:	47a0      	blx	r4
c0de34d6:	4634      	mov	r4, r6
c0de34d8:	f99a e001 	ldrsb.w	lr, [sl, #1]
c0de34dc:	f89a c000 	ldrb.w	ip, [sl]
c0de34e0:	7a31      	ldrb	r1, [r6, #8]
c0de34e2:	f996 5001 	ldrsb.w	r5, [r6, #1]
c0de34e6:	7832      	ldrb	r2, [r6, #0]
c0de34e8:	f814 3f06 	ldrb.w	r3, [r4, #6]!
c0de34ec:	7860      	ldrb	r0, [r4, #1]
c0de34ee:	9102      	str	r1, [sp, #8]
c0de34f0:	ea4c 210e 	orr.w	r1, ip, lr, lsl #8
c0de34f4:	e9cd 8800 	strd	r8, r8, [sp]
c0de34f8:	1bc9      	subs	r1, r1, r7
c0de34fa:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de34fe:	2302      	movs	r3, #2
c0de3500:	4401      	add	r1, r0
c0de3502:	ea42 2005 	orr.w	r0, r2, r5, lsl #8
c0de3506:	9d05      	ldr	r5, [sp, #20]
c0de3508:	465a      	mov	r2, fp
c0de350a:	4438      	add	r0, r7
c0de350c:	47a8      	blx	r5
c0de350e:	9904      	ldr	r1, [sp, #16]
c0de3510:	7832      	ldrb	r2, [r6, #0]
c0de3512:	f894 c000 	ldrb.w	ip, [r4]
c0de3516:	f894 e001 	ldrb.w	lr, [r4, #1]
c0de351a:	f99a 3001 	ldrsb.w	r3, [sl, #1]
c0de351e:	f89a 4000 	ldrb.w	r4, [sl]
c0de3522:	7808      	ldrb	r0, [r1, #0]
c0de3524:	784d      	ldrb	r5, [r1, #1]
c0de3526:	f996 1001 	ldrsb.w	r1, [r6, #1]
c0de352a:	7a36      	ldrb	r6, [r6, #8]
c0de352c:	e9cd 8800 	strd	r8, r8, [sp]
c0de3530:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de3534:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de3538:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de353c:	9602      	str	r6, [sp, #8]
c0de353e:	1bc9      	subs	r1, r1, r7
c0de3540:	4408      	add	r0, r1
c0de3542:	ea44 2103 	orr.w	r1, r4, r3, lsl #8
c0de3546:	9c05      	ldr	r4, [sp, #20]
c0de3548:	2303      	movs	r3, #3
c0de354a:	1bc9      	subs	r1, r1, r7
c0de354c:	4411      	add	r1, r2
c0de354e:	465a      	mov	r2, fp
c0de3550:	47a0      	blx	r4
c0de3552:	b00a      	add	sp, #40	@ 0x28
c0de3554:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3558:	0000924b 	.word	0x0000924b
c0de355c:	000000c5 	.word	0x000000c5

c0de3560 <draw_circle_helper>:
c0de3560:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de3562:	461c      	mov	r4, r3
c0de3564:	2300      	movs	r3, #0
c0de3566:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de3568:	2a01      	cmp	r2, #1
c0de356a:	f88d 300d 	strb.w	r3, [sp, #13]
c0de356e:	9301      	str	r3, [sp, #4]
c0de3570:	f88d 500c 	strb.w	r5, [sp, #12]
c0de3574:	d837      	bhi.n	c0de35e6 <draw_circle_helper+0x86>
c0de3576:	4e1d      	ldr	r6, [pc, #116]	@ (c0de35ec <draw_circle_helper+0x8c>)
c0de3578:	e9dd 3508 	ldrd	r3, r5, [sp, #32]
c0de357c:	447e      	add	r6, pc
c0de357e:	5cb2      	ldrb	r2, [r6, r2]
c0de3580:	f8ad 2008 	strh.w	r2, [sp, #8]
c0de3584:	f8ad 200a 	strh.w	r2, [sp, #10]
c0de3588:	b164      	cbz	r4, c0de35a4 <draw_circle_helper+0x44>
c0de358a:	2c01      	cmp	r4, #1
c0de358c:	d014      	beq.n	c0de35b8 <draw_circle_helper+0x58>
c0de358e:	2c02      	cmp	r4, #2
c0de3590:	d01b      	beq.n	c0de35ca <draw_circle_helper+0x6a>
c0de3592:	2c03      	cmp	r4, #3
c0de3594:	d128      	bne.n	c0de35e8 <draw_circle_helper+0x88>
c0de3596:	f000 fac7 	bl	c0de3b28 <OUTLINED_FUNCTION_2>
c0de359a:	4815      	ldr	r0, [pc, #84]	@ (c0de35f0 <draw_circle_helper+0x90>)
c0de359c:	4915      	ldr	r1, [pc, #84]	@ (c0de35f4 <draw_circle_helper+0x94>)
c0de359e:	4478      	add	r0, pc
c0de35a0:	4479      	add	r1, pc
c0de35a2:	e019      	b.n	c0de35d8 <draw_circle_helper+0x78>
c0de35a4:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de35a8:	1a88      	subs	r0, r1, r2
c0de35aa:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de35ae:	4814      	ldr	r0, [pc, #80]	@ (c0de3600 <draw_circle_helper+0xa0>)
c0de35b0:	4914      	ldr	r1, [pc, #80]	@ (c0de3604 <draw_circle_helper+0xa4>)
c0de35b2:	4478      	add	r0, pc
c0de35b4:	4479      	add	r1, pc
c0de35b6:	e00f      	b.n	c0de35d8 <draw_circle_helper+0x78>
c0de35b8:	1a89      	subs	r1, r1, r2
c0de35ba:	1a80      	subs	r0, r0, r2
c0de35bc:	f000 fab4 	bl	c0de3b28 <OUTLINED_FUNCTION_2>
c0de35c0:	4811      	ldr	r0, [pc, #68]	@ (c0de3608 <draw_circle_helper+0xa8>)
c0de35c2:	4912      	ldr	r1, [pc, #72]	@ (c0de360c <draw_circle_helper+0xac>)
c0de35c4:	4478      	add	r0, pc
c0de35c6:	4479      	add	r1, pc
c0de35c8:	e006      	b.n	c0de35d8 <draw_circle_helper+0x78>
c0de35ca:	1a80      	subs	r0, r0, r2
c0de35cc:	f000 faac 	bl	c0de3b28 <OUTLINED_FUNCTION_2>
c0de35d0:	4809      	ldr	r0, [pc, #36]	@ (c0de35f8 <draw_circle_helper+0x98>)
c0de35d2:	490a      	ldr	r1, [pc, #40]	@ (c0de35fc <draw_circle_helper+0x9c>)
c0de35d4:	4478      	add	r0, pc
c0de35d6:	4479      	add	r1, pc
c0de35d8:	42ab      	cmp	r3, r5
c0de35da:	bf08      	it	eq
c0de35dc:	4601      	moveq	r1, r0
c0de35de:	a801      	add	r0, sp, #4
c0de35e0:	2200      	movs	r2, #0
c0de35e2:	f007 f9cb 	bl	c0dea97c <nbgl_frontDrawImage>
c0de35e6:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de35e8:	2100      	movs	r1, #0
c0de35ea:	e7f8      	b.n	c0de35de <draw_circle_helper+0x7e>
c0de35ec:	0000905d 	.word	0x0000905d
c0de35f0:	0000903d 	.word	0x0000903d
c0de35f4:	0000903d 	.word	0x0000903d
c0de35f8:	0000900b 	.word	0x0000900b
c0de35fc:	0000900b 	.word	0x0000900b
c0de3600:	00009031 	.word	0x00009031
c0de3604:	00009031 	.word	0x00009031
c0de3608:	00009023 	.word	0x00009023
c0de360c:	00009023 	.word	0x00009023

c0de3610 <nbgl_drawRoundedBorderedRect>:
c0de3610:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3614:	b08c      	sub	sp, #48	@ 0x30
c0de3616:	4606      	mov	r6, r0
c0de3618:	4690      	mov	r8, r2
c0de361a:	2901      	cmp	r1, #1
c0de361c:	4608      	mov	r0, r1
c0de361e:	9108      	str	r1, [sp, #32]
c0de3620:	d804      	bhi.n	c0de362c <nbgl_drawRoundedBorderedRect+0x1c>
c0de3622:	48b5      	ldr	r0, [pc, #724]	@ (c0de38f8 <nbgl_drawRoundedBorderedRect+0x2e8>)
c0de3624:	9908      	ldr	r1, [sp, #32]
c0de3626:	4478      	add	r0, pc
c0de3628:	5c47      	ldrb	r7, [r0, r1]
c0de362a:	e004      	b.n	c0de3636 <nbgl_drawRoundedBorderedRect+0x26>
c0de362c:	9808      	ldr	r0, [sp, #32]
c0de362e:	28ff      	cmp	r0, #255	@ 0xff
c0de3630:	f040 815e 	bne.w	c0de38f0 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de3634:	2700      	movs	r7, #0
c0de3636:	f8dd b050 	ldr.w	fp, [sp, #80]	@ 0x50
c0de363a:	f88d 302c 	strb.w	r3, [sp, #44]	@ 0x2c
c0de363e:	455b      	cmp	r3, fp
c0de3640:	d11e      	bne.n	c0de3680 <nbgl_drawRoundedBorderedRect+0x70>
c0de3642:	7a30      	ldrb	r0, [r6, #8]
c0de3644:	4298      	cmp	r0, r3
c0de3646:	d11b      	bne.n	c0de3680 <nbgl_drawRoundedBorderedRect+0x70>
c0de3648:	7830      	ldrb	r0, [r6, #0]
c0de364a:	7871      	ldrb	r1, [r6, #1]
c0de364c:	78b2      	ldrb	r2, [r6, #2]
c0de364e:	78f3      	ldrb	r3, [r6, #3]
c0de3650:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3654:	7931      	ldrb	r1, [r6, #4]
c0de3656:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de365a:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de365e:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3662:	7970      	ldrb	r0, [r6, #5]
c0de3664:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3668:	79b1      	ldrb	r1, [r6, #6]
c0de366a:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de366e:	79f0      	ldrb	r0, [r6, #7]
c0de3670:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3674:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de3678:	a809      	add	r0, sp, #36	@ 0x24
c0de367a:	f007 f977 	bl	c0dea96c <nbgl_frontDrawRect>
c0de367e:	e137      	b.n	c0de38f0 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de3680:	7930      	ldrb	r0, [r6, #4]
c0de3682:	7971      	ldrb	r1, [r6, #5]
c0de3684:	007d      	lsls	r5, r7, #1
c0de3686:	9306      	str	r3, [sp, #24]
c0de3688:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de368c:	ebb0 0f47 	cmp.w	r0, r7, lsl #1
c0de3690:	d918      	bls.n	c0de36c4 <nbgl_drawRoundedBorderedRect+0xb4>
c0de3692:	78b2      	ldrb	r2, [r6, #2]
c0de3694:	78f3      	ldrb	r3, [r6, #3]
c0de3696:	1b40      	subs	r0, r0, r5
c0de3698:	7871      	ldrb	r1, [r6, #1]
c0de369a:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de369e:	7830      	ldrb	r0, [r6, #0]
c0de36a0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de36a4:	79b3      	ldrb	r3, [r6, #6]
c0de36a6:	f8ad 2026 	strh.w	r2, [sp, #38]	@ 0x26
c0de36aa:	79f2      	ldrb	r2, [r6, #7]
c0de36ac:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de36b0:	4438      	add	r0, r7
c0de36b2:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de36b6:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de36ba:	f8ad 202a 	strh.w	r2, [sp, #42]	@ 0x2a
c0de36be:	a809      	add	r0, sp, #36	@ 0x24
c0de36c0:	f007 f954 	bl	c0dea96c <nbgl_frontDrawRect>
c0de36c4:	9808      	ldr	r0, [sp, #32]
c0de36c6:	9507      	str	r5, [sp, #28]
c0de36c8:	2801      	cmp	r0, #1
c0de36ca:	d82a      	bhi.n	c0de3722 <nbgl_drawRoundedBorderedRect+0x112>
c0de36cc:	79b0      	ldrb	r0, [r6, #6]
c0de36ce:	79f1      	ldrb	r1, [r6, #7]
c0de36d0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de36d4:	4285      	cmp	r5, r0
c0de36d6:	d224      	bcs.n	c0de3722 <nbgl_drawRoundedBorderedRect+0x112>
c0de36d8:	1b40      	subs	r0, r0, r5
c0de36da:	7871      	ldrb	r1, [r6, #1]
c0de36dc:	4634      	mov	r4, r6
c0de36de:	f8ad 7028 	strh.w	r7, [sp, #40]	@ 0x28
c0de36e2:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de36e6:	7830      	ldrb	r0, [r6, #0]
c0de36e8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de36ec:	f000 fa0c 	bl	c0de3b08 <OUTLINED_FUNCTION_0>
c0de36f0:	4438      	add	r0, r7
c0de36f2:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de36f6:	ad09      	add	r5, sp, #36	@ 0x24
c0de36f8:	4628      	mov	r0, r5
c0de36fa:	f007 f937 	bl	c0dea96c <nbgl_frontDrawRect>
c0de36fe:	7820      	ldrb	r0, [r4, #0]
c0de3700:	7861      	ldrb	r1, [r4, #1]
c0de3702:	7932      	ldrb	r2, [r6, #4]
c0de3704:	7973      	ldrb	r3, [r6, #5]
c0de3706:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de370a:	7871      	ldrb	r1, [r6, #1]
c0de370c:	4438      	add	r0, r7
c0de370e:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3712:	f000 fa01 	bl	c0de3b18 <OUTLINED_FUNCTION_1>
c0de3716:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de371a:	4628      	mov	r0, r5
c0de371c:	9d07      	ldr	r5, [sp, #28]
c0de371e:	f007 f925 	bl	c0dea96c <nbgl_frontDrawRect>
c0de3722:	7830      	ldrb	r0, [r6, #0]
c0de3724:	7871      	ldrb	r1, [r6, #1]
c0de3726:	4634      	mov	r4, r6
c0de3728:	7932      	ldrb	r2, [r6, #4]
c0de372a:	7973      	ldrb	r3, [r6, #5]
c0de372c:	f88d b02c 	strb.w	fp, [sp, #44]	@ 0x2c
c0de3730:	f10d 0b24 	add.w	fp, sp, #36	@ 0x24
c0de3734:	f8ad 802a 	strh.w	r8, [sp, #42]	@ 0x2a
c0de3738:	9705      	str	r7, [sp, #20]
c0de373a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de373e:	4438      	add	r0, r7
c0de3740:	f000 f9e2 	bl	c0de3b08 <OUTLINED_FUNCTION_0>
c0de3744:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3748:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de374c:	1b40      	subs	r0, r0, r5
c0de374e:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de3752:	4658      	mov	r0, fp
c0de3754:	f007 f90a 	bl	c0dea96c <nbgl_frontDrawRect>
c0de3758:	4635      	mov	r5, r6
c0de375a:	7862      	ldrb	r2, [r4, #1]
c0de375c:	9f07      	ldr	r7, [sp, #28]
c0de375e:	f815 0f06 	ldrb.w	r0, [r5, #6]!
c0de3762:	7869      	ldrb	r1, [r5, #1]
c0de3764:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3768:	7821      	ldrb	r1, [r4, #0]
c0de376a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de376e:	eba1 0108 	sub.w	r1, r1, r8
c0de3772:	4408      	add	r0, r1
c0de3774:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3778:	4658      	mov	r0, fp
c0de377a:	f007 f8f7 	bl	c0dea96c <nbgl_frontDrawRect>
c0de377e:	7828      	ldrb	r0, [r5, #0]
c0de3780:	7869      	ldrb	r1, [r5, #1]
c0de3782:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3786:	4287      	cmp	r7, r0
c0de3788:	d229      	bcs.n	c0de37de <nbgl_drawRoundedBorderedRect+0x1ce>
c0de378a:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de378c:	1bc0      	subs	r0, r0, r7
c0de378e:	78b2      	ldrb	r2, [r6, #2]
c0de3790:	78f3      	ldrb	r3, [r6, #3]
c0de3792:	f8ad 8028 	strh.w	r8, [sp, #40]	@ 0x28
c0de3796:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de379a:	7830      	ldrb	r0, [r6, #0]
c0de379c:	f88d 102c 	strb.w	r1, [sp, #44]	@ 0x2c
c0de37a0:	7871      	ldrb	r1, [r6, #1]
c0de37a2:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de37a6:	9905      	ldr	r1, [sp, #20]
c0de37a8:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de37ac:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de37b0:	4408      	add	r0, r1
c0de37b2:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de37b6:	ac09      	add	r4, sp, #36	@ 0x24
c0de37b8:	4620      	mov	r0, r4
c0de37ba:	f007 f8d7 	bl	c0dea96c <nbgl_frontDrawRect>
c0de37be:	7830      	ldrb	r0, [r6, #0]
c0de37c0:	7871      	ldrb	r1, [r6, #1]
c0de37c2:	7932      	ldrb	r2, [r6, #4]
c0de37c4:	7973      	ldrb	r3, [r6, #5]
c0de37c6:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de37ca:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de37ce:	eba0 0008 	sub.w	r0, r0, r8
c0de37d2:	4408      	add	r0, r1
c0de37d4:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de37d8:	4620      	mov	r0, r4
c0de37da:	f007 f8c7 	bl	c0dea96c <nbgl_frontDrawRect>
c0de37de:	9808      	ldr	r0, [sp, #32]
c0de37e0:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de37e4:	2801      	cmp	r0, #1
c0de37e6:	f200 8083 	bhi.w	c0de38f0 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de37ea:	4635      	mov	r5, r6
c0de37ec:	7a34      	ldrb	r4, [r6, #8]
c0de37ee:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de37f0:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de37f4:	7833      	ldrb	r3, [r6, #0]
c0de37f6:	f8dd a014 	ldr.w	sl, [sp, #20]
c0de37fa:	f815 cf02 	ldrb.w	ip, [r5, #2]!
c0de37fe:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3802:	2301      	movs	r3, #1
c0de3804:	f995 2001 	ldrsb.w	r2, [r5, #1]
c0de3808:	e9cd 1b00 	strd	r1, fp, [sp]
c0de380c:	9402      	str	r4, [sp, #8]
c0de380e:	4450      	add	r0, sl
c0de3810:	4c3a      	ldr	r4, [pc, #232]	@ (c0de38fc <nbgl_drawRoundedBorderedRect+0x2ec>)
c0de3812:	9f08      	ldr	r7, [sp, #32]
c0de3814:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3818:	4451      	add	r1, sl
c0de381a:	447c      	add	r4, pc
c0de381c:	463a      	mov	r2, r7
c0de381e:	47a0      	blx	r4
c0de3820:	f995 0001 	ldrsb.w	r0, [r5, #1]
c0de3824:	46a0      	mov	r8, r4
c0de3826:	9407      	str	r4, [sp, #28]
c0de3828:	4634      	mov	r4, r6
c0de382a:	f996 e001 	ldrsb.w	lr, [r6, #1]
c0de382e:	7832      	ldrb	r2, [r6, #0]
c0de3830:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de3832:	f814 cf04 	ldrb.w	ip, [r4, #4]!
c0de3836:	9004      	str	r0, [sp, #16]
c0de3838:	7828      	ldrb	r0, [r5, #0]
c0de383a:	7861      	ldrb	r1, [r4, #1]
c0de383c:	9003      	str	r0, [sp, #12]
c0de383e:	7a30      	ldrb	r0, [r6, #8]
c0de3840:	e9cd 3b00 	strd	r3, fp, [sp]
c0de3844:	2300      	movs	r3, #0
c0de3846:	9002      	str	r0, [sp, #8]
c0de3848:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
c0de384c:	ea42 210e 	orr.w	r1, r2, lr, lsl #8
c0de3850:	eba1 010a 	sub.w	r1, r1, sl
c0de3854:	4408      	add	r0, r1
c0de3856:	e9dd 2103 	ldrd	r2, r1, [sp, #12]
c0de385a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de385e:	463a      	mov	r2, r7
c0de3860:	4451      	add	r1, sl
c0de3862:	47c0      	blx	r8
c0de3864:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de3868:	463a      	mov	r2, r7
c0de386a:	4637      	mov	r7, r6
c0de386c:	7a31      	ldrb	r1, [r6, #8]
c0de386e:	f895 8000 	ldrb.w	r8, [r5]
c0de3872:	f896 e000 	ldrb.w	lr, [r6]
c0de3876:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de3878:	f817 cf06 	ldrb.w	ip, [r7, #6]!
c0de387c:	9004      	str	r0, [sp, #16]
c0de387e:	f995 0001 	ldrsb.w	r0, [r5, #1]
c0de3882:	9003      	str	r0, [sp, #12]
c0de3884:	7878      	ldrb	r0, [r7, #1]
c0de3886:	9102      	str	r1, [sp, #8]
c0de3888:	e9cd 3b00 	strd	r3, fp, [sp]
c0de388c:	2302      	movs	r3, #2
c0de388e:	9903      	ldr	r1, [sp, #12]
c0de3890:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
c0de3894:	ea48 2101 	orr.w	r1, r8, r1, lsl #8
c0de3898:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de389c:	eba1 010a 	sub.w	r1, r1, sl
c0de38a0:	4401      	add	r1, r0
c0de38a2:	9804      	ldr	r0, [sp, #16]
c0de38a4:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
c0de38a8:	4450      	add	r0, sl
c0de38aa:	47c0      	blx	r8
c0de38ac:	f897 c000 	ldrb.w	ip, [r7]
c0de38b0:	f897 e001 	ldrb.w	lr, [r7, #1]
c0de38b4:	f996 7001 	ldrsb.w	r7, [r6, #1]
c0de38b8:	7831      	ldrb	r1, [r6, #0]
c0de38ba:	7820      	ldrb	r0, [r4, #0]
c0de38bc:	7864      	ldrb	r4, [r4, #1]
c0de38be:	f995 3001 	ldrsb.w	r3, [r5, #1]
c0de38c2:	782d      	ldrb	r5, [r5, #0]
c0de38c4:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de38c6:	7a36      	ldrb	r6, [r6, #8]
c0de38c8:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de38cc:	ea40 2004 	orr.w	r0, r0, r4, lsl #8
c0de38d0:	e9cd 2b00 	strd	r2, fp, [sp]
c0de38d4:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de38d8:	9602      	str	r6, [sp, #8]
c0de38da:	eba1 010a 	sub.w	r1, r1, sl
c0de38de:	4408      	add	r0, r1
c0de38e0:	ea45 2103 	orr.w	r1, r5, r3, lsl #8
c0de38e4:	2303      	movs	r3, #3
c0de38e6:	eba1 010a 	sub.w	r1, r1, sl
c0de38ea:	4411      	add	r1, r2
c0de38ec:	9a08      	ldr	r2, [sp, #32]
c0de38ee:	47c0      	blx	r8
c0de38f0:	b00c      	add	sp, #48	@ 0x30
c0de38f2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de38f6:	bf00      	nop
c0de38f8:	00008fb3 	.word	0x00008fb3
c0de38fc:	fffffd43 	.word	0xfffffd43

c0de3900 <nbgl_drawIcon>:
c0de3900:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3902:	4614      	mov	r4, r2
c0de3904:	460a      	mov	r2, r1
c0de3906:	f813 1f06 	ldrb.w	r1, [r3, #6]!
c0de390a:	f813 5c01 	ldrb.w	r5, [r3, #-1]
c0de390e:	785e      	ldrb	r6, [r3, #1]
c0de3910:	789f      	ldrb	r7, [r3, #2]
c0de3912:	78db      	ldrb	r3, [r3, #3]
c0de3914:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de3918:	ea47 2303 	orr.w	r3, r7, r3, lsl #8
c0de391c:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de3920:	b13d      	cbz	r5, c0de3932 <nbgl_drawIcon+0x32>
c0de3922:	4a06      	ldr	r2, [pc, #24]	@ (c0de393c <nbgl_drawIcon+0x3c>)
c0de3924:	eb09 0302 	add.w	r3, r9, r2
c0de3928:	4622      	mov	r2, r4
c0de392a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de392e:	f007 b845 	b.w	c0dea9bc <nbgl_frontDrawImageFile>
c0de3932:	4623      	mov	r3, r4
c0de3934:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3938:	f007 b820 	b.w	c0dea97c <nbgl_frontDrawImage>
c0de393c:	00000434 	.word	0x00000434

c0de3940 <nbgl_drawText>:
c0de3940:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3944:	b090      	sub	sp, #64	@ 0x40
c0de3946:	4604      	mov	r4, r0
c0de3948:	f890 8000 	ldrb.w	r8, [r0]
c0de394c:	7846      	ldrb	r6, [r0, #1]
c0de394e:	4618      	mov	r0, r3
c0de3950:	469b      	mov	fp, r3
c0de3952:	4617      	mov	r7, r2
c0de3954:	f8ad 203a 	strh.w	r2, [sp, #58]	@ 0x3a
c0de3958:	910f      	str	r1, [sp, #60]	@ 0x3c
c0de395a:	f000 f8ea 	bl	c0de3b32 <nbgl_getFont>
c0de395e:	4605      	mov	r5, r0
c0de3960:	7a20      	ldrb	r0, [r4, #8]
c0de3962:	9405      	str	r4, [sp, #20]
c0de3964:	f10d 0a3c 	add.w	sl, sp, #60	@ 0x3c
c0de3968:	f10d 042f 	add.w	r4, sp, #47	@ 0x2f
c0de396c:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de3970:	7968      	ldrb	r0, [r5, #5]
c0de3972:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de3976:	ea48 2006 	orr.w	r0, r8, r6, lsl #8
c0de397a:	f10d 063a 	add.w	r6, sp, #58	@ 0x3a
c0de397e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de3980:	2f00      	cmp	r7, #0
c0de3982:	f000 80bc 	beq.w	c0de3afe <nbgl_drawText+0x1be>
c0de3986:	4650      	mov	r0, sl
c0de3988:	4631      	mov	r1, r6
c0de398a:	4622      	mov	r2, r4
c0de398c:	f000 f8d3 	bl	c0de3b36 <nbgl_popUnicodeChar>
c0de3990:	4680      	mov	r8, r0
c0de3992:	f89d 002f 	ldrb.w	r0, [sp, #47]	@ 0x2f
c0de3996:	b110      	cbz	r0, c0de399e <nbgl_drawText+0x5e>
c0de3998:	f8bd 703a 	ldrh.w	r7, [sp, #58]	@ 0x3a
c0de399c:	e7f0      	b.n	c0de3980 <nbgl_drawText+0x40>
c0de399e:	f1b8 0f08 	cmp.w	r8, #8
c0de39a2:	d030      	beq.n	c0de3a06 <nbgl_drawText+0xc6>
c0de39a4:	f1b8 0f0c 	cmp.w	r8, #12
c0de39a8:	f000 80a9 	beq.w	c0de3afe <nbgl_drawText+0x1be>
c0de39ac:	7ae8      	ldrb	r0, [r5, #11]
c0de39ae:	4580      	cmp	r8, r0
c0de39b0:	d3f2      	bcc.n	c0de3998 <nbgl_drawText+0x58>
c0de39b2:	7b29      	ldrb	r1, [r5, #12]
c0de39b4:	4588      	cmp	r8, r1
c0de39b6:	d8ef      	bhi.n	c0de3998 <nbgl_drawText+0x58>
c0de39b8:	6929      	ldr	r1, [r5, #16]
c0de39ba:	eba8 0000 	sub.w	r0, r8, r0
c0de39be:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de39c2:	f006 ffa3 	bl	c0dea90c <pic>
c0de39c6:	4607      	mov	r7, r0
c0de39c8:	6800      	ldr	r0, [r0, #0]
c0de39ca:	6969      	ldr	r1, [r5, #20]
c0de39cc:	4408      	add	r0, r1
c0de39ce:	f006 ff9d 	bl	c0dea90c <pic>
c0de39d2:	9009      	str	r0, [sp, #36]	@ 0x24
c0de39d4:	687f      	ldr	r7, [r7, #4]
c0de39d6:	7a68      	ldrb	r0, [r5, #9]
c0de39d8:	f895 c006 	ldrb.w	ip, [r5, #6]
c0de39dc:	f3c7 0245 	ubfx	r2, r7, #1, #6
c0de39e0:	b310      	cbz	r0, c0de3a28 <nbgl_drawText+0xe8>
c0de39e2:	f3c7 5045 	ubfx	r0, r7, #21, #6
c0de39e6:	f3c7 21c5 	ubfx	r1, r7, #11, #6
c0de39ea:	ebac 0c00 	sub.w	ip, ip, r0
c0de39ee:	f3c7 4043 	ubfx	r0, r7, #17, #4
c0de39f2:	1a13      	subs	r3, r2, r0
c0de39f4:	7aa8      	ldrb	r0, [r5, #10]
c0de39f6:	4408      	add	r0, r1
c0de39f8:	9007      	str	r0, [sp, #28]
c0de39fa:	f3c7 10c3 	ubfx	r0, r7, #7, #4
c0de39fe:	9006      	str	r0, [sp, #24]
c0de3a00:	2000      	movs	r0, #0
c0de3a02:	9004      	str	r0, [sp, #16]
c0de3a04:	e01c      	b.n	c0de3a40 <nbgl_drawText+0x100>
c0de3a06:	fa5f f08b 	uxtb.w	r0, fp
c0de3a0a:	2808      	cmp	r0, #8
c0de3a0c:	d005      	beq.n	c0de3a1a <nbgl_drawText+0xda>
c0de3a0e:	280a      	cmp	r0, #10
c0de3a10:	d1c2      	bne.n	c0de3998 <nbgl_drawText+0x58>
c0de3a12:	f04f 0b08 	mov.w	fp, #8
c0de3a16:	2008      	movs	r0, #8
c0de3a18:	e002      	b.n	c0de3a20 <nbgl_drawText+0xe0>
c0de3a1a:	f04f 0b0a 	mov.w	fp, #10
c0de3a1e:	200a      	movs	r0, #10
c0de3a20:	f000 f887 	bl	c0de3b32 <nbgl_getFont>
c0de3a24:	4605      	mov	r5, r0
c0de3a26:	e7b7      	b.n	c0de3998 <nbgl_drawText+0x58>
c0de3a28:	2038      	movs	r0, #56	@ 0x38
c0de3a2a:	f3c7 21c2 	ubfx	r1, r7, #11, #3
c0de3a2e:	4613      	mov	r3, r2
c0de3a30:	ea00 1017 	and.w	r0, r0, r7, lsr #4
c0de3a34:	4408      	add	r0, r1
c0de3a36:	9004      	str	r0, [sp, #16]
c0de3a38:	2000      	movs	r0, #0
c0de3a3a:	9006      	str	r0, [sp, #24]
c0de3a3c:	2000      	movs	r0, #0
c0de3a3e:	9007      	str	r0, [sp, #28]
c0de3a40:	7ae9      	ldrb	r1, [r5, #11]
c0de3a42:	fa5f f088 	uxtb.w	r0, r8
c0de3a46:	9208      	str	r2, [sp, #32]
c0de3a48:	4281      	cmp	r1, r0
c0de3a4a:	d802      	bhi.n	c0de3a52 <nbgl_drawText+0x112>
c0de3a4c:	7b2a      	ldrb	r2, [r5, #12]
c0de3a4e:	4282      	cmp	r2, r0
c0de3a50:	d231      	bcs.n	c0de3ab6 <nbgl_drawText+0x176>
c0de3a52:	4698      	mov	r8, r3
c0de3a54:	2200      	movs	r2, #0
c0de3a56:	9906      	ldr	r1, [sp, #24]
c0de3a58:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de3a5a:	f8dd e01c 	ldr.w	lr, [sp, #28]
c0de3a5e:	4408      	add	r0, r1
c0de3a60:	f8ad 0030 	strh.w	r0, [sp, #48]	@ 0x30
c0de3a64:	ebac 000e 	sub.w	r0, ip, lr
c0de3a68:	f8ad 0036 	strh.w	r0, [sp, #54]	@ 0x36
c0de3a6c:	eba8 0001 	sub.w	r0, r8, r1
c0de3a70:	9905      	ldr	r1, [sp, #20]
c0de3a72:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de3a76:	7888      	ldrb	r0, [r1, #2]
c0de3a78:	78c9      	ldrb	r1, [r1, #3]
c0de3a7a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3a7e:	4470      	add	r0, lr
c0de3a80:	f8ad 0032 	strh.w	r0, [sp, #50]	@ 0x32
c0de3a84:	b14a      	cbz	r2, c0de3a9a <nbgl_drawText+0x15a>
c0de3a86:	f017 0001 	ands.w	r0, r7, #1
c0de3a8a:	d106      	bne.n	c0de3a9a <nbgl_drawText+0x15a>
c0de3a8c:	a80c      	add	r0, sp, #48	@ 0x30
c0de3a8e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de3a90:	9b18      	ldr	r3, [sp, #96]	@ 0x60
c0de3a92:	2200      	movs	r2, #0
c0de3a94:	f006 ff72 	bl	c0dea97c <nbgl_frontDrawImage>
c0de3a98:	e006      	b.n	c0de3aa8 <nbgl_drawText+0x168>
c0de3a9a:	9804      	ldr	r0, [sp, #16]
c0de3a9c:	9b18      	ldr	r3, [sp, #96]	@ 0x60
c0de3a9e:	9000      	str	r0, [sp, #0]
c0de3aa0:	a80c      	add	r0, sp, #48	@ 0x30
c0de3aa2:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de3aa4:	f006 ff78 	bl	c0dea998 <nbgl_frontDrawImageRle>
c0de3aa8:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de3aaa:	9908      	ldr	r1, [sp, #32]
c0de3aac:	4408      	add	r0, r1
c0de3aae:	7a29      	ldrb	r1, [r5, #8]
c0de3ab0:	1a40      	subs	r0, r0, r1
c0de3ab2:	900a      	str	r0, [sp, #40]	@ 0x28
c0de3ab4:	e770      	b.n	c0de3998 <nbgl_drawText+0x58>
c0de3ab6:	eba0 0101 	sub.w	r1, r0, r1
c0de3aba:	4698      	mov	r8, r3
c0de3abc:	d913      	bls.n	c0de3ae6 <nbgl_drawText+0x1a6>
c0de3abe:	6928      	ldr	r0, [r5, #16]
c0de3ac0:	b289      	uxth	r1, r1
c0de3ac2:	f8cd c00c 	str.w	ip, [sp, #12]
c0de3ac6:	9101      	str	r1, [sp, #4]
c0de3ac8:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de3acc:	f006 ff1e 	bl	c0dea90c <pic>
c0de3ad0:	9002      	str	r0, [sp, #8]
c0de3ad2:	6928      	ldr	r0, [r5, #16]
c0de3ad4:	9901      	ldr	r1, [sp, #4]
c0de3ad6:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de3ada:	3008      	adds	r0, #8
c0de3adc:	f006 ff16 	bl	c0dea90c <pic>
c0de3ae0:	e9dd 1c02 	ldrd	r1, ip, [sp, #8]
c0de3ae4:	e006      	b.n	c0de3af4 <nbgl_drawText+0x1b4>
c0de3ae6:	4282      	cmp	r2, r0
c0de3ae8:	d1b4      	bne.n	c0de3a54 <nbgl_drawText+0x114>
c0de3aea:	b288      	uxth	r0, r1
c0de3aec:	6929      	ldr	r1, [r5, #16]
c0de3aee:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de3af2:	4628      	mov	r0, r5
c0de3af4:	6809      	ldr	r1, [r1, #0]
c0de3af6:	6800      	ldr	r0, [r0, #0]
c0de3af8:	1a40      	subs	r0, r0, r1
c0de3afa:	b282      	uxth	r2, r0
c0de3afc:	e7ab      	b.n	c0de3a56 <nbgl_drawText+0x116>
c0de3afe:	fa5f f08b 	uxtb.w	r0, fp
c0de3b02:	b010      	add	sp, #64	@ 0x40
c0de3b04:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3b08 <OUTLINED_FUNCTION_0>:
c0de3b08:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de3b0c:	f814 0f02 	ldrb.w	r0, [r4, #2]!
c0de3b10:	7861      	ldrb	r1, [r4, #1]
c0de3b12:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3b16:	4770      	bx	lr

c0de3b18 <OUTLINED_FUNCTION_1>:
c0de3b18:	7830      	ldrb	r0, [r6, #0]
c0de3b1a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3b1e:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3b22:	1bc0      	subs	r0, r0, r7
c0de3b24:	4408      	add	r0, r1
c0de3b26:	4770      	bx	lr

c0de3b28 <OUTLINED_FUNCTION_2>:
c0de3b28:	f8ad 1006 	strh.w	r1, [sp, #6]
c0de3b2c:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de3b30:	4770      	bx	lr

c0de3b32 <nbgl_getFont>:
c0de3b32:	f006 bf5b 	b.w	c0dea9ec <nbgl_font_getFont>

c0de3b36 <nbgl_popUnicodeChar>:
c0de3b36:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3b38:	6804      	ldr	r4, [r0, #0]
c0de3b3a:	2501      	movs	r5, #1
c0de3b3c:	4626      	mov	r6, r4
c0de3b3e:	f816 3b01 	ldrb.w	r3, [r6], #1
c0de3b42:	7015      	strb	r5, [r2, #0]
c0de3b44:	2bf0      	cmp	r3, #240	@ 0xf0
c0de3b46:	d315      	bcc.n	c0de3b74 <nbgl_popUnicodeChar+0x3e>
c0de3b48:	880d      	ldrh	r5, [r1, #0]
c0de3b4a:	2d04      	cmp	r5, #4
c0de3b4c:	d315      	bcc.n	c0de3b7a <nbgl_popUnicodeChar+0x44>
c0de3b4e:	f44f 12e0 	mov.w	r2, #1835008	@ 0x1c0000
c0de3b52:	78a6      	ldrb	r6, [r4, #2]
c0de3b54:	78e7      	ldrb	r7, [r4, #3]
c0de3b56:	ea02 4283 	and.w	r2, r2, r3, lsl #18
c0de3b5a:	7863      	ldrb	r3, [r4, #1]
c0de3b5c:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
c0de3b60:	ea42 3203 	orr.w	r2, r2, r3, lsl #12
c0de3b64:	f006 033f 	and.w	r3, r6, #63	@ 0x3f
c0de3b68:	1d26      	adds	r6, r4, #4
c0de3b6a:	ea42 1283 	orr.w	r2, r2, r3, lsl #6
c0de3b6e:	f007 033f 	and.w	r3, r7, #63	@ 0x3f
c0de3b72:	e00f      	b.n	c0de3b94 <nbgl_popUnicodeChar+0x5e>
c0de3b74:	2be0      	cmp	r3, #224	@ 0xe0
c0de3b76:	d30f      	bcc.n	c0de3b98 <nbgl_popUnicodeChar+0x62>
c0de3b78:	880d      	ldrh	r5, [r1, #0]
c0de3b7a:	2d03      	cmp	r5, #3
c0de3b7c:	d30f      	bcc.n	c0de3b9e <nbgl_popUnicodeChar+0x68>
c0de3b7e:	7862      	ldrb	r2, [r4, #1]
c0de3b80:	031b      	lsls	r3, r3, #12
c0de3b82:	78a6      	ldrb	r6, [r4, #2]
c0de3b84:	b29b      	uxth	r3, r3
c0de3b86:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
c0de3b8a:	ea43 1282 	orr.w	r2, r3, r2, lsl #6
c0de3b8e:	f006 033f 	and.w	r3, r6, #63	@ 0x3f
c0de3b92:	1ce6      	adds	r6, r4, #3
c0de3b94:	4413      	add	r3, r2
c0de3b96:	e00e      	b.n	c0de3bb6 <nbgl_popUnicodeChar+0x80>
c0de3b98:	880d      	ldrh	r5, [r1, #0]
c0de3b9a:	2bc2      	cmp	r3, #194	@ 0xc2
c0de3b9c:	d309      	bcc.n	c0de3bb2 <nbgl_popUnicodeChar+0x7c>
c0de3b9e:	2d02      	cmp	r5, #2
c0de3ba0:	d307      	bcc.n	c0de3bb2 <nbgl_popUnicodeChar+0x7c>
c0de3ba2:	7862      	ldrb	r2, [r4, #1]
c0de3ba4:	1ca6      	adds	r6, r4, #2
c0de3ba6:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
c0de3baa:	f363 128a 	bfi	r2, r3, #6, #5
c0de3bae:	4613      	mov	r3, r2
c0de3bb0:	e001      	b.n	c0de3bb6 <nbgl_popUnicodeChar+0x80>
c0de3bb2:	2700      	movs	r7, #0
c0de3bb4:	7017      	strb	r7, [r2, #0]
c0de3bb6:	6006      	str	r6, [r0, #0]
c0de3bb8:	1ba0      	subs	r0, r4, r6
c0de3bba:	4428      	add	r0, r5
c0de3bbc:	8008      	strh	r0, [r1, #0]
c0de3bbe:	4618      	mov	r0, r3
c0de3bc0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3bc2 <nbgl_getSingleLineTextWidth>:
c0de3bc2:	2201      	movs	r2, #1
c0de3bc4:	f64f 73ff 	movw	r3, #65535	@ 0xffff
c0de3bc8:	f000 b800 	b.w	c0de3bcc <getTextWidth>

c0de3bcc <getTextWidth>:
c0de3bcc:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3bd0:	461c      	mov	r4, r3
c0de3bd2:	9201      	str	r2, [sp, #4]
c0de3bd4:	460f      	mov	r7, r1
c0de3bd6:	4605      	mov	r5, r0
c0de3bd8:	9103      	str	r1, [sp, #12]
c0de3bda:	f7ff ffaa 	bl	c0de3b32 <nbgl_getFont>
c0de3bde:	4606      	mov	r6, r0
c0de3be0:	4638      	mov	r0, r7
c0de3be2:	f007 faed 	bl	c0deb1c0 <strlen>
c0de3be6:	42a0      	cmp	r0, r4
c0de3be8:	bf38      	it	cc
c0de3bea:	4604      	movcc	r4, r0
c0de3bec:	f8ad 400a 	strh.w	r4, [sp, #10]
c0de3bf0:	b2a0      	uxth	r0, r4
c0de3bf2:	f10d 0a0c 	add.w	sl, sp, #12
c0de3bf6:	f10d 0b0a 	add.w	fp, sp, #10
c0de3bfa:	f10d 0709 	add.w	r7, sp, #9
c0de3bfe:	f04f 0800 	mov.w	r8, #0
c0de3c02:	2400      	movs	r4, #0
c0de3c04:	b358      	cbz	r0, c0de3c5e <getTextWidth+0x92>
c0de3c06:	4650      	mov	r0, sl
c0de3c08:	4659      	mov	r1, fp
c0de3c0a:	463a      	mov	r2, r7
c0de3c0c:	f7ff ff93 	bl	c0de3b36 <nbgl_popUnicodeChar>
c0de3c10:	280a      	cmp	r0, #10
c0de3c12:	d00a      	beq.n	c0de3c2a <getTextWidth+0x5e>
c0de3c14:	4601      	mov	r1, r0
c0de3c16:	2808      	cmp	r0, #8
c0de3c18:	d10c      	bne.n	c0de3c34 <getTextWidth+0x68>
c0de3c1a:	b2e8      	uxtb	r0, r5
c0de3c1c:	2808      	cmp	r0, #8
c0de3c1e:	d016      	beq.n	c0de3c4e <getTextWidth+0x82>
c0de3c20:	280a      	cmp	r0, #10
c0de3c22:	d119      	bne.n	c0de3c58 <getTextWidth+0x8c>
c0de3c24:	2508      	movs	r5, #8
c0de3c26:	2008      	movs	r0, #8
c0de3c28:	e013      	b.n	c0de3c52 <getTextWidth+0x86>
c0de3c2a:	9801      	ldr	r0, [sp, #4]
c0de3c2c:	b9b8      	cbnz	r0, c0de3c5e <getTextWidth+0x92>
c0de3c2e:	f04f 0800 	mov.w	r8, #0
c0de3c32:	e011      	b.n	c0de3c58 <getTextWidth+0x8c>
c0de3c34:	f89d 2009 	ldrb.w	r2, [sp, #9]
c0de3c38:	4630      	mov	r0, r6
c0de3c3a:	f000 f819 	bl	c0de3c70 <getCharWidth>
c0de3c3e:	4480      	add	r8, r0
c0de3c40:	b2a1      	uxth	r1, r4
c0de3c42:	fa1f f088 	uxth.w	r0, r8
c0de3c46:	4288      	cmp	r0, r1
c0de3c48:	bf88      	it	hi
c0de3c4a:	4644      	movhi	r4, r8
c0de3c4c:	e004      	b.n	c0de3c58 <getTextWidth+0x8c>
c0de3c4e:	250a      	movs	r5, #10
c0de3c50:	200a      	movs	r0, #10
c0de3c52:	f006 fecb 	bl	c0dea9ec <nbgl_font_getFont>
c0de3c56:	4606      	mov	r6, r0
c0de3c58:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de3c5c:	e7d2      	b.n	c0de3c04 <getTextWidth+0x38>
c0de3c5e:	b2a0      	uxth	r0, r4
c0de3c60:	b004      	add	sp, #16
c0de3c62:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3c66 <nbgl_getTextWidth>:
c0de3c66:	2200      	movs	r2, #0
c0de3c68:	f64f 73ff 	movw	r3, #65535	@ 0xffff
c0de3c6c:	f7ff bfae 	b.w	c0de3bcc <getTextWidth>

c0de3c70 <getCharWidth>:
c0de3c70:	b510      	push	{r4, lr}
c0de3c72:	b932      	cbnz	r2, c0de3c82 <getCharWidth+0x12>
c0de3c74:	4604      	mov	r4, r0
c0de3c76:	7ac0      	ldrb	r0, [r0, #11]
c0de3c78:	4288      	cmp	r0, r1
c0de3c7a:	d802      	bhi.n	c0de3c82 <getCharWidth+0x12>
c0de3c7c:	7b22      	ldrb	r2, [r4, #12]
c0de3c7e:	428a      	cmp	r2, r1
c0de3c80:	d202      	bcs.n	c0de3c88 <getCharWidth+0x18>
c0de3c82:	2000      	movs	r0, #0
c0de3c84:	b2c0      	uxtb	r0, r0
c0de3c86:	bd10      	pop	{r4, pc}
c0de3c88:	1a08      	subs	r0, r1, r0
c0de3c8a:	6921      	ldr	r1, [r4, #16]
c0de3c8c:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de3c90:	f006 fe3c 	bl	c0dea90c <pic>
c0de3c94:	7900      	ldrb	r0, [r0, #4]
c0de3c96:	7a21      	ldrb	r1, [r4, #8]
c0de3c98:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de3c9c:	1a40      	subs	r0, r0, r1
c0de3c9e:	e7f1      	b.n	c0de3c84 <getCharWidth+0x14>

c0de3ca0 <nbgl_getFontHeight>:
c0de3ca0:	b580      	push	{r7, lr}
c0de3ca2:	f7ff ff46 	bl	c0de3b32 <nbgl_getFont>
c0de3ca6:	7980      	ldrb	r0, [r0, #6]
c0de3ca8:	bd80      	pop	{r7, pc}

c0de3caa <nbgl_getFontLineHeight>:
c0de3caa:	b580      	push	{r7, lr}
c0de3cac:	f7ff ff41 	bl	c0de3b32 <nbgl_getFont>
c0de3cb0:	79c0      	ldrb	r0, [r0, #7]
c0de3cb2:	bd80      	pop	{r7, pc}

c0de3cb4 <nbgl_getTextLength>:
c0de3cb4:	b510      	push	{r4, lr}
c0de3cb6:	2100      	movs	r1, #0
c0de3cb8:	2201      	movs	r2, #1
c0de3cba:	f241 4301 	movw	r3, #5121	@ 0x1401
c0de3cbe:	5c44      	ldrb	r4, [r0, r1]
c0de3cc0:	2c0c      	cmp	r4, #12
c0de3cc2:	d805      	bhi.n	c0de3cd0 <nbgl_getTextLength+0x1c>
c0de3cc4:	fa02 f404 	lsl.w	r4, r2, r4
c0de3cc8:	421c      	tst	r4, r3
c0de3cca:	bf1c      	itt	ne
c0de3ccc:	b288      	uxthne	r0, r1
c0de3cce:	bd10      	popne	{r4, pc}
c0de3cd0:	3101      	adds	r1, #1
c0de3cd2:	e7f4      	b.n	c0de3cbe <nbgl_getTextLength+0xa>

c0de3cd4 <nbgl_getTextMaxLenAndWidth>:
c0de3cd4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3cd8:	b086      	sub	sp, #24
c0de3cda:	461c      	mov	r4, r3
c0de3cdc:	9203      	str	r2, [sp, #12]
c0de3cde:	460f      	mov	r7, r1
c0de3ce0:	4606      	mov	r6, r0
c0de3ce2:	9105      	str	r1, [sp, #20]
c0de3ce4:	f7ff ff25 	bl	c0de3b32 <nbgl_getFont>
c0de3ce8:	4605      	mov	r5, r0
c0de3cea:	4638      	mov	r0, r7
c0de3cec:	f7ff ffe2 	bl	c0de3cb4 <nbgl_getTextLength>
c0de3cf0:	4680      	mov	r8, r0
c0de3cf2:	2000      	movs	r0, #0
c0de3cf4:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
c0de3cf6:	2100      	movs	r1, #0
c0de3cf8:	f10d 0b11 	add.w	fp, sp, #17
c0de3cfc:	9002      	str	r0, [sp, #8]
c0de3cfe:	2000      	movs	r0, #0
c0de3d00:	f8ad 8012 	strh.w	r8, [sp, #18]
c0de3d04:	8039      	strh	r1, [r7, #0]
c0de3d06:	8021      	strh	r1, [r4, #0]
c0de3d08:	9001      	str	r0, [sp, #4]
c0de3d0a:	ea5f 4008 	movs.w	r0, r8, lsl #16
c0de3d0e:	d051      	beq.n	c0de3db4 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de3d10:	a805      	add	r0, sp, #20
c0de3d12:	f10d 0112 	add.w	r1, sp, #18
c0de3d16:	465a      	mov	r2, fp
c0de3d18:	f7ff ff0d 	bl	c0de3b36 <nbgl_popUnicodeChar>
c0de3d1c:	2808      	cmp	r0, #8
c0de3d1e:	d029      	beq.n	c0de3d74 <nbgl_getTextMaxLenAndWidth+0xa0>
c0de3d20:	4682      	mov	sl, r0
c0de3d22:	280c      	cmp	r0, #12
c0de3d24:	d03f      	beq.n	c0de3da6 <nbgl_getTextMaxLenAndWidth+0xd2>
c0de3d26:	f1ba 0f0a 	cmp.w	sl, #10
c0de3d2a:	d03c      	beq.n	c0de3da6 <nbgl_getTextMaxLenAndWidth+0xd2>
c0de3d2c:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de3d30:	4628      	mov	r0, r5
c0de3d32:	4651      	mov	r1, sl
c0de3d34:	f7ff ff9c 	bl	c0de3c70 <getCharWidth>
c0de3d38:	b340      	cbz	r0, c0de3d8c <nbgl_getTextMaxLenAndWidth+0xb8>
c0de3d3a:	990f      	ldr	r1, [sp, #60]	@ 0x3c
c0de3d3c:	b149      	cbz	r1, c0de3d52 <nbgl_getTextMaxLenAndWidth+0x7e>
c0de3d3e:	f1ba 0f20 	cmp.w	sl, #32
c0de3d42:	bf18      	it	ne
c0de3d44:	f1ba 0f5f 	cmpne.w	sl, #95	@ 0x5f
c0de3d48:	d129      	bne.n	c0de3d9e <nbgl_getTextMaxLenAndWidth+0xca>
c0de3d4a:	8839      	ldrh	r1, [r7, #0]
c0de3d4c:	9102      	str	r1, [sp, #8]
c0de3d4e:	8821      	ldrh	r1, [r4, #0]
c0de3d50:	9101      	str	r1, [sp, #4]
c0de3d52:	8839      	ldrh	r1, [r7, #0]
c0de3d54:	9a03      	ldr	r2, [sp, #12]
c0de3d56:	4401      	add	r1, r0
c0de3d58:	4291      	cmp	r1, r2
c0de3d5a:	d82e      	bhi.n	c0de3dba <nbgl_getTextMaxLenAndWidth+0xe6>
c0de3d5c:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de3d60:	8823      	ldrh	r3, [r4, #0]
c0de3d62:	eba8 0201 	sub.w	r2, r8, r1
c0de3d66:	4688      	mov	r8, r1
c0de3d68:	441a      	add	r2, r3
c0de3d6a:	8022      	strh	r2, [r4, #0]
c0de3d6c:	883a      	ldrh	r2, [r7, #0]
c0de3d6e:	4410      	add	r0, r2
c0de3d70:	8038      	strh	r0, [r7, #0]
c0de3d72:	e7ca      	b.n	c0de3d0a <nbgl_getTextMaxLenAndWidth+0x36>
c0de3d74:	b2f0      	uxtb	r0, r6
c0de3d76:	280a      	cmp	r0, #10
c0de3d78:	d003      	beq.n	c0de3d82 <nbgl_getTextMaxLenAndWidth+0xae>
c0de3d7a:	2808      	cmp	r0, #8
c0de3d7c:	d106      	bne.n	c0de3d8c <nbgl_getTextMaxLenAndWidth+0xb8>
c0de3d7e:	260a      	movs	r6, #10
c0de3d80:	e000      	b.n	c0de3d84 <nbgl_getTextMaxLenAndWidth+0xb0>
c0de3d82:	2608      	movs	r6, #8
c0de3d84:	4630      	mov	r0, r6
c0de3d86:	f006 fe31 	bl	c0dea9ec <nbgl_font_getFont>
c0de3d8a:	4605      	mov	r5, r0
c0de3d8c:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de3d90:	8822      	ldrh	r2, [r4, #0]
c0de3d92:	eba8 0100 	sub.w	r1, r8, r0
c0de3d96:	4680      	mov	r8, r0
c0de3d98:	4411      	add	r1, r2
c0de3d9a:	8021      	strh	r1, [r4, #0]
c0de3d9c:	e7b5      	b.n	c0de3d0a <nbgl_getTextMaxLenAndWidth+0x36>
c0de3d9e:	f1ba 0f2d 	cmp.w	sl, #45	@ 0x2d
c0de3da2:	d0d2      	beq.n	c0de3d4a <nbgl_getTextMaxLenAndWidth+0x76>
c0de3da4:	e7d5      	b.n	c0de3d52 <nbgl_getTextMaxLenAndWidth+0x7e>
c0de3da6:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de3daa:	8821      	ldrh	r1, [r4, #0]
c0de3dac:	eba8 0000 	sub.w	r0, r8, r0
c0de3db0:	4408      	add	r0, r1
c0de3db2:	8020      	strh	r0, [r4, #0]
c0de3db4:	b006      	add	sp, #24
c0de3db6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3dba:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de3dbc:	9902      	ldr	r1, [sp, #8]
c0de3dbe:	2800      	cmp	r0, #0
c0de3dc0:	d0f8      	beq.n	c0de3db4 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de3dc2:	2900      	cmp	r1, #0
c0de3dc4:	d0f6      	beq.n	c0de3db4 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de3dc6:	9801      	ldr	r0, [sp, #4]
c0de3dc8:	3001      	adds	r0, #1
c0de3dca:	8020      	strh	r0, [r4, #0]
c0de3dcc:	8039      	strh	r1, [r7, #0]
c0de3dce:	e7f1      	b.n	c0de3db4 <nbgl_getTextMaxLenAndWidth+0xe0>

c0de3dd0 <nbgl_getTextMaxLenInNbLines>:
c0de3dd0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3dd4:	b086      	sub	sp, #24
c0de3dd6:	461d      	mov	r5, r3
c0de3dd8:	9202      	str	r2, [sp, #8]
c0de3dda:	460e      	mov	r6, r1
c0de3ddc:	4607      	mov	r7, r0
c0de3dde:	9105      	str	r1, [sp, #20]
c0de3de0:	f7ff fea7 	bl	c0de3b32 <nbgl_getFont>
c0de3de4:	4604      	mov	r4, r0
c0de3de6:	4630      	mov	r0, r6
c0de3de8:	9601      	str	r6, [sp, #4]
c0de3dea:	f007 f9e9 	bl	c0deb1c0 <strlen>
c0de3dee:	f8dd a03c 	ldr.w	sl, [sp, #60]	@ 0x3c
c0de3df2:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de3df6:	2100      	movs	r1, #0
c0de3df8:	b280      	uxth	r0, r0
c0de3dfa:	f04f 0b00 	mov.w	fp, #0
c0de3dfe:	f04f 0800 	mov.w	r8, #0
c0de3e02:	9103      	str	r1, [sp, #12]
c0de3e04:	2800      	cmp	r0, #0
c0de3e06:	d066      	beq.n	c0de3ed6 <nbgl_getTextMaxLenInNbLines+0x106>
c0de3e08:	0428      	lsls	r0, r5, #16
c0de3e0a:	d064      	beq.n	c0de3ed6 <nbgl_getTextMaxLenInNbLines+0x106>
c0de3e0c:	9e05      	ldr	r6, [sp, #20]
c0de3e0e:	a805      	add	r0, sp, #20
c0de3e10:	f10d 0112 	add.w	r1, sp, #18
c0de3e14:	f10d 0211 	add.w	r2, sp, #17
c0de3e18:	f7ff fe8d 	bl	c0de3b36 <nbgl_popUnicodeChar>
c0de3e1c:	4601      	mov	r1, r0
c0de3e1e:	f1ba 0f00 	cmp.w	sl, #0
c0de3e22:	d012      	beq.n	c0de3e4a <nbgl_getTextMaxLenInNbLines+0x7a>
c0de3e24:	f1a1 0008 	sub.w	r0, r1, #8
c0de3e28:	2818      	cmp	r0, #24
c0de3e2a:	d805      	bhi.n	c0de3e38 <nbgl_getTextMaxLenInNbLines+0x68>
c0de3e2c:	2201      	movs	r2, #1
c0de3e2e:	fa02 f000 	lsl.w	r0, r2, r0
c0de3e32:	4a2f      	ldr	r2, [pc, #188]	@ (c0de3ef0 <nbgl_getTextMaxLenInNbLines+0x120>)
c0de3e34:	4210      	tst	r0, r2
c0de3e36:	d103      	bne.n	c0de3e40 <nbgl_getTextMaxLenInNbLines+0x70>
c0de3e38:	295f      	cmp	r1, #95	@ 0x5f
c0de3e3a:	d001      	beq.n	c0de3e40 <nbgl_getTextMaxLenInNbLines+0x70>
c0de3e3c:	292d      	cmp	r1, #45	@ 0x2d
c0de3e3e:	d104      	bne.n	c0de3e4a <nbgl_getTextMaxLenInNbLines+0x7a>
c0de3e40:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de3e44:	f8dd b014 	ldr.w	fp, [sp, #20]
c0de3e48:	9003      	str	r0, [sp, #12]
c0de3e4a:	2908      	cmp	r1, #8
c0de3e4c:	d01d      	beq.n	c0de3e8a <nbgl_getTextMaxLenInNbLines+0xba>
c0de3e4e:	290a      	cmp	r1, #10
c0de3e50:	d023      	beq.n	c0de3e9a <nbgl_getTextMaxLenInNbLines+0xca>
c0de3e52:	290c      	cmp	r1, #12
c0de3e54:	d03e      	beq.n	c0de3ed4 <nbgl_getTextMaxLenInNbLines+0x104>
c0de3e56:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de3e5a:	4620      	mov	r0, r4
c0de3e5c:	f7ff ff08 	bl	c0de3c70 <getCharWidth>
c0de3e60:	b3a8      	cbz	r0, c0de3ece <nbgl_getTextMaxLenInNbLines+0xfe>
c0de3e62:	fa1f f188 	uxth.w	r1, r8
c0de3e66:	eb00 0801 	add.w	r8, r0, r1
c0de3e6a:	9802      	ldr	r0, [sp, #8]
c0de3e6c:	4580      	cmp	r8, r0
c0de3e6e:	d92e      	bls.n	c0de3ece <nbgl_getTextMaxLenInNbLines+0xfe>
c0de3e70:	f1ba 0f00 	cmp.w	sl, #0
c0de3e74:	bf18      	it	ne
c0de3e76:	f1bb 0f00 	cmpne.w	fp, #0
c0de3e7a:	d11e      	bne.n	c0de3eba <nbgl_getTextMaxLenInNbLines+0xea>
c0de3e7c:	9805      	ldr	r0, [sp, #20]
c0de3e7e:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de3e82:	9605      	str	r6, [sp, #20]
c0de3e84:	1b80      	subs	r0, r0, r6
c0de3e86:	4408      	add	r0, r1
c0de3e88:	e01c      	b.n	c0de3ec4 <nbgl_getTextMaxLenInNbLines+0xf4>
c0de3e8a:	b2f8      	uxtb	r0, r7
c0de3e8c:	2808      	cmp	r0, #8
c0de3e8e:	d00e      	beq.n	c0de3eae <nbgl_getTextMaxLenInNbLines+0xde>
c0de3e90:	280a      	cmp	r0, #10
c0de3e92:	d11c      	bne.n	c0de3ece <nbgl_getTextMaxLenInNbLines+0xfe>
c0de3e94:	2708      	movs	r7, #8
c0de3e96:	2008      	movs	r0, #8
c0de3e98:	e00b      	b.n	c0de3eb2 <nbgl_getTextMaxLenInNbLines+0xe2>
c0de3e9a:	3d01      	subs	r5, #1
c0de3e9c:	0428      	lsls	r0, r5, #16
c0de3e9e:	d114      	bne.n	c0de3eca <nbgl_getTextMaxLenInNbLines+0xfa>
c0de3ea0:	9805      	ldr	r0, [sp, #20]
c0de3ea2:	f04f 0800 	mov.w	r8, #0
c0de3ea6:	2500      	movs	r5, #0
c0de3ea8:	3801      	subs	r0, #1
c0de3eaa:	9005      	str	r0, [sp, #20]
c0de3eac:	e00f      	b.n	c0de3ece <nbgl_getTextMaxLenInNbLines+0xfe>
c0de3eae:	270a      	movs	r7, #10
c0de3eb0:	200a      	movs	r0, #10
c0de3eb2:	f006 fd9b 	bl	c0dea9ec <nbgl_font_getFont>
c0de3eb6:	4604      	mov	r4, r0
c0de3eb8:	e009      	b.n	c0de3ece <nbgl_getTextMaxLenInNbLines+0xfe>
c0de3eba:	9803      	ldr	r0, [sp, #12]
c0de3ebc:	f8cd b014 	str.w	fp, [sp, #20]
c0de3ec0:	f04f 0b00 	mov.w	fp, #0
c0de3ec4:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de3ec8:	3d01      	subs	r5, #1
c0de3eca:	f04f 0800 	mov.w	r8, #0
c0de3ece:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de3ed2:	e797      	b.n	c0de3e04 <nbgl_getTextMaxLenInNbLines+0x34>
c0de3ed4:	2500      	movs	r5, #0
c0de3ed6:	9805      	ldr	r0, [sp, #20]
c0de3ed8:	9901      	ldr	r1, [sp, #4]
c0de3eda:	1a40      	subs	r0, r0, r1
c0de3edc:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de3ede:	8008      	strh	r0, [r1, #0]
c0de3ee0:	b2a8      	uxth	r0, r5
c0de3ee2:	fab0 f080 	clz	r0, r0
c0de3ee6:	0940      	lsrs	r0, r0, #5
c0de3ee8:	b006      	add	sp, #24
c0de3eea:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3eee:	bf00      	nop
c0de3ef0:	01000015 	.word	0x01000015

c0de3ef4 <nbgl_getTextMaxLenAndWidthFromEnd>:
c0de3ef4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ef8:	461c      	mov	r4, r3
c0de3efa:	4690      	mov	r8, r2
c0de3efc:	460e      	mov	r6, r1
c0de3efe:	f7ff fe18 	bl	c0de3b32 <nbgl_getFont>
c0de3f02:	4682      	mov	sl, r0
c0de3f04:	4630      	mov	r0, r6
c0de3f06:	f7ff fed5 	bl	c0de3cb4 <nbgl_getTextLength>
c0de3f0a:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de3f0e:	4607      	mov	r7, r0
c0de3f10:	2000      	movs	r0, #0
c0de3f12:	f8ab 0000 	strh.w	r0, [fp]
c0de3f16:	8020      	strh	r0, [r4, #0]
c0de3f18:	463d      	mov	r5, r7
c0de3f1a:	b33f      	cbz	r7, c0de3f6c <nbgl_getTextMaxLenAndWidthFromEnd+0x78>
c0de3f1c:	1e6f      	subs	r7, r5, #1
c0de3f1e:	b2b8      	uxth	r0, r7
c0de3f20:	5c30      	ldrb	r0, [r6, r0]
c0de3f22:	280a      	cmp	r0, #10
c0de3f24:	d01f      	beq.n	c0de3f66 <nbgl_getTextMaxLenAndWidthFromEnd+0x72>
c0de3f26:	f89a 100b 	ldrb.w	r1, [sl, #11]
c0de3f2a:	4288      	cmp	r0, r1
c0de3f2c:	d3f4      	bcc.n	c0de3f18 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de3f2e:	f89a 200c 	ldrb.w	r2, [sl, #12]
c0de3f32:	4290      	cmp	r0, r2
c0de3f34:	d8f0      	bhi.n	c0de3f18 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de3f36:	1a40      	subs	r0, r0, r1
c0de3f38:	f8da 1010 	ldr.w	r1, [sl, #16]
c0de3f3c:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de3f40:	f006 fce4 	bl	c0dea90c <pic>
c0de3f44:	6840      	ldr	r0, [r0, #4]
c0de3f46:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3f4a:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de3f4e:	4401      	add	r1, r0
c0de3f50:	4541      	cmp	r1, r8
c0de3f52:	d80b      	bhi.n	c0de3f6c <nbgl_getTextMaxLenAndWidthFromEnd+0x78>
c0de3f54:	8821      	ldrh	r1, [r4, #0]
c0de3f56:	3101      	adds	r1, #1
c0de3f58:	8021      	strh	r1, [r4, #0]
c0de3f5a:	f8bb 1000 	ldrh.w	r1, [fp]
c0de3f5e:	4408      	add	r0, r1
c0de3f60:	f8ab 0000 	strh.w	r0, [fp]
c0de3f64:	e7d8      	b.n	c0de3f18 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de3f66:	8820      	ldrh	r0, [r4, #0]
c0de3f68:	3001      	adds	r0, #1
c0de3f6a:	e7d4      	b.n	c0de3f16 <nbgl_getTextMaxLenAndWidthFromEnd+0x22>
c0de3f6c:	2d00      	cmp	r5, #0
c0de3f6e:	bf18      	it	ne
c0de3f70:	2501      	movne	r5, #1
c0de3f72:	4628      	mov	r0, r5
c0de3f74:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3f78 <nbgl_getTextNbLinesInWidth>:
c0de3f78:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f7c:	461c      	mov	r4, r3
c0de3f7e:	9200      	str	r2, [sp, #0]
c0de3f80:	460d      	mov	r5, r1
c0de3f82:	4606      	mov	r6, r0
c0de3f84:	9103      	str	r1, [sp, #12]
c0de3f86:	f7ff fdd4 	bl	c0de3b32 <nbgl_getFont>
c0de3f8a:	4607      	mov	r7, r0
c0de3f8c:	4628      	mov	r0, r5
c0de3f8e:	f007 f917 	bl	c0deb1c0 <strlen>
c0de3f92:	2100      	movs	r1, #0
c0de3f94:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de3f98:	b280      	uxth	r0, r0
c0de3f9a:	f04f 0b00 	mov.w	fp, #0
c0de3f9e:	f04f 0800 	mov.w	r8, #0
c0de3fa2:	f04f 0a00 	mov.w	sl, #0
c0de3fa6:	9101      	str	r1, [sp, #4]
c0de3fa8:	2800      	cmp	r0, #0
c0de3faa:	d056      	beq.n	c0de405a <nbgl_getTextNbLinesInWidth+0xe2>
c0de3fac:	9d03      	ldr	r5, [sp, #12]
c0de3fae:	a803      	add	r0, sp, #12
c0de3fb0:	f10d 010a 	add.w	r1, sp, #10
c0de3fb4:	f10d 0209 	add.w	r2, sp, #9
c0de3fb8:	f7ff fdbd 	bl	c0de3b36 <nbgl_popUnicodeChar>
c0de3fbc:	4601      	mov	r1, r0
c0de3fbe:	b18c      	cbz	r4, c0de3fe4 <nbgl_getTextNbLinesInWidth+0x6c>
c0de3fc0:	f1a1 0008 	sub.w	r0, r1, #8
c0de3fc4:	2818      	cmp	r0, #24
c0de3fc6:	d805      	bhi.n	c0de3fd4 <nbgl_getTextNbLinesInWidth+0x5c>
c0de3fc8:	2201      	movs	r2, #1
c0de3fca:	fa02 f000 	lsl.w	r0, r2, r0
c0de3fce:	4a28      	ldr	r2, [pc, #160]	@ (c0de4070 <nbgl_getTextNbLinesInWidth+0xf8>)
c0de3fd0:	4210      	tst	r0, r2
c0de3fd2:	d103      	bne.n	c0de3fdc <nbgl_getTextNbLinesInWidth+0x64>
c0de3fd4:	295f      	cmp	r1, #95	@ 0x5f
c0de3fd6:	d001      	beq.n	c0de3fdc <nbgl_getTextNbLinesInWidth+0x64>
c0de3fd8:	292d      	cmp	r1, #45	@ 0x2d
c0de3fda:	d103      	bne.n	c0de3fe4 <nbgl_getTextNbLinesInWidth+0x6c>
c0de3fdc:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de3fe0:	46aa      	mov	sl, r5
c0de3fe2:	9001      	str	r0, [sp, #4]
c0de3fe4:	2908      	cmp	r1, #8
c0de3fe6:	d021      	beq.n	c0de402c <nbgl_getTextNbLinesInWidth+0xb4>
c0de3fe8:	290a      	cmp	r1, #10
c0de3fea:	d027      	beq.n	c0de403c <nbgl_getTextNbLinesInWidth+0xc4>
c0de3fec:	290c      	cmp	r1, #12
c0de3fee:	d034      	beq.n	c0de405a <nbgl_getTextNbLinesInWidth+0xe2>
c0de3ff0:	f89d 2009 	ldrb.w	r2, [sp, #9]
c0de3ff4:	4638      	mov	r0, r7
c0de3ff6:	f7ff fe3b 	bl	c0de3c70 <getCharWidth>
c0de3ffa:	b358      	cbz	r0, c0de4054 <nbgl_getTextNbLinesInWidth+0xdc>
c0de3ffc:	fa1f f18b 	uxth.w	r1, fp
c0de4000:	eb00 0b01 	add.w	fp, r0, r1
c0de4004:	9900      	ldr	r1, [sp, #0]
c0de4006:	458b      	cmp	fp, r1
c0de4008:	d924      	bls.n	c0de4054 <nbgl_getTextNbLinesInWidth+0xdc>
c0de400a:	b15c      	cbz	r4, c0de4024 <nbgl_getTextNbLinesInWidth+0xac>
c0de400c:	f1ba 0f00 	cmp.w	sl, #0
c0de4010:	d008      	beq.n	c0de4024 <nbgl_getTextNbLinesInWidth+0xac>
c0de4012:	9801      	ldr	r0, [sp, #4]
c0de4014:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de4018:	f10a 0001 	add.w	r0, sl, #1
c0de401c:	f04f 0a00 	mov.w	sl, #0
c0de4020:	9003      	str	r0, [sp, #12]
c0de4022:	2000      	movs	r0, #0
c0de4024:	f108 0801 	add.w	r8, r8, #1
c0de4028:	4683      	mov	fp, r0
c0de402a:	e013      	b.n	c0de4054 <nbgl_getTextNbLinesInWidth+0xdc>
c0de402c:	b2f0      	uxtb	r0, r6
c0de402e:	2808      	cmp	r0, #8
c0de4030:	d00b      	beq.n	c0de404a <nbgl_getTextNbLinesInWidth+0xd2>
c0de4032:	280a      	cmp	r0, #10
c0de4034:	d10e      	bne.n	c0de4054 <nbgl_getTextNbLinesInWidth+0xdc>
c0de4036:	2608      	movs	r6, #8
c0de4038:	2008      	movs	r0, #8
c0de403a:	e008      	b.n	c0de404e <nbgl_getTextNbLinesInWidth+0xd6>
c0de403c:	f108 0801 	add.w	r8, r8, #1
c0de4040:	f04f 0b00 	mov.w	fp, #0
c0de4044:	f04f 0a00 	mov.w	sl, #0
c0de4048:	e004      	b.n	c0de4054 <nbgl_getTextNbLinesInWidth+0xdc>
c0de404a:	260a      	movs	r6, #10
c0de404c:	200a      	movs	r0, #10
c0de404e:	f006 fccd 	bl	c0dea9ec <nbgl_font_getFont>
c0de4052:	4607      	mov	r7, r0
c0de4054:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de4058:	e7a6      	b.n	c0de3fa8 <nbgl_getTextNbLinesInWidth+0x30>
c0de405a:	ea5f 400b 	movs.w	r0, fp, lsl #16
c0de405e:	bf18      	it	ne
c0de4060:	f108 0801 	addne.w	r8, r8, #1
c0de4064:	fa1f f088 	uxth.w	r0, r8
c0de4068:	b004      	add	sp, #16
c0de406a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de406e:	bf00      	nop
c0de4070:	01000015 	.word	0x01000015

c0de4074 <nbgl_getTextNbPagesInWidth>:
c0de4074:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4078:	b086      	sub	sp, #24
c0de407a:	e9cd 3200 	strd	r3, r2, [sp]
c0de407e:	460c      	mov	r4, r1
c0de4080:	9105      	str	r1, [sp, #20]
c0de4082:	9003      	str	r0, [sp, #12]
c0de4084:	f7ff fd55 	bl	c0de3b32 <nbgl_getFont>
c0de4088:	9002      	str	r0, [sp, #8]
c0de408a:	4620      	mov	r0, r4
c0de408c:	f007 f898 	bl	c0deb1c0 <strlen>
c0de4090:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de4094:	b280      	uxth	r0, r0
c0de4096:	2600      	movs	r6, #0
c0de4098:	f10d 0711 	add.w	r7, sp, #17
c0de409c:	f04f 0b00 	mov.w	fp, #0
c0de40a0:	f04f 0801 	mov.w	r8, #1
c0de40a4:	2500      	movs	r5, #0
c0de40a6:	f04f 0a00 	mov.w	sl, #0
c0de40aa:	2800      	cmp	r0, #0
c0de40ac:	d06e      	beq.n	c0de418c <nbgl_getTextNbPagesInWidth+0x118>
c0de40ae:	9c05      	ldr	r4, [sp, #20]
c0de40b0:	a805      	add	r0, sp, #20
c0de40b2:	f10d 0112 	add.w	r1, sp, #18
c0de40b6:	463a      	mov	r2, r7
c0de40b8:	f7ff fd3d 	bl	c0de3b36 <nbgl_popUnicodeChar>
c0de40bc:	4601      	mov	r1, r0
c0de40be:	3808      	subs	r0, #8
c0de40c0:	2818      	cmp	r0, #24
c0de40c2:	d814      	bhi.n	c0de40ee <nbgl_getTextNbPagesInWidth+0x7a>
c0de40c4:	2201      	movs	r2, #1
c0de40c6:	fa02 f000 	lsl.w	r0, r2, r0
c0de40ca:	4a33      	ldr	r2, [pc, #204]	@ (c0de4198 <nbgl_getTextNbPagesInWidth+0x124>)
c0de40cc:	4210      	tst	r0, r2
c0de40ce:	d00e      	beq.n	c0de40ee <nbgl_getTextNbPagesInWidth+0x7a>
c0de40d0:	f8bd a012 	ldrh.w	sl, [sp, #18]
c0de40d4:	4625      	mov	r5, r4
c0de40d6:	2908      	cmp	r1, #8
c0de40d8:	d024      	beq.n	c0de4124 <nbgl_getTextNbPagesInWidth+0xb0>
c0de40da:	290a      	cmp	r1, #10
c0de40dc:	d00c      	beq.n	c0de40f8 <nbgl_getTextNbPagesInWidth+0x84>
c0de40de:	290c      	cmp	r1, #12
c0de40e0:	d12a      	bne.n	c0de4138 <nbgl_getTextNbPagesInWidth+0xc4>
c0de40e2:	f108 0801 	add.w	r8, r8, #1
c0de40e6:	2600      	movs	r6, #0
c0de40e8:	f04f 0b00 	mov.w	fp, #0
c0de40ec:	e048      	b.n	c0de4180 <nbgl_getTextNbPagesInWidth+0x10c>
c0de40ee:	295f      	cmp	r1, #95	@ 0x5f
c0de40f0:	d0ee      	beq.n	c0de40d0 <nbgl_getTextNbPagesInWidth+0x5c>
c0de40f2:	292d      	cmp	r1, #45	@ 0x2d
c0de40f4:	d0ec      	beq.n	c0de40d0 <nbgl_getTextNbPagesInWidth+0x5c>
c0de40f6:	e7ee      	b.n	c0de40d6 <nbgl_getTextNbPagesInWidth+0x62>
c0de40f8:	f10b 0b01 	add.w	fp, fp, #1
c0de40fc:	9901      	ldr	r1, [sp, #4]
c0de40fe:	fa1f f08b 	uxth.w	r0, fp
c0de4102:	1a40      	subs	r0, r0, r1
c0de4104:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de4108:	fab0 f080 	clz	r0, r0
c0de410c:	0940      	lsrs	r0, r0, #5
c0de410e:	2900      	cmp	r1, #0
c0de4110:	bf18      	it	ne
c0de4112:	2101      	movne	r1, #1
c0de4114:	4008      	ands	r0, r1
c0de4116:	bf18      	it	ne
c0de4118:	f04f 0b00 	movne.w	fp, #0
c0de411c:	4480      	add	r8, r0
c0de411e:	2600      	movs	r6, #0
c0de4120:	2500      	movs	r5, #0
c0de4122:	e02d      	b.n	c0de4180 <nbgl_getTextNbPagesInWidth+0x10c>
c0de4124:	9803      	ldr	r0, [sp, #12]
c0de4126:	b2c0      	uxtb	r0, r0
c0de4128:	2808      	cmp	r0, #8
c0de412a:	d023      	beq.n	c0de4174 <nbgl_getTextNbPagesInWidth+0x100>
c0de412c:	280a      	cmp	r0, #10
c0de412e:	d127      	bne.n	c0de4180 <nbgl_getTextNbPagesInWidth+0x10c>
c0de4130:	2008      	movs	r0, #8
c0de4132:	9003      	str	r0, [sp, #12]
c0de4134:	2008      	movs	r0, #8
c0de4136:	e020      	b.n	c0de417a <nbgl_getTextNbPagesInWidth+0x106>
c0de4138:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de413c:	9802      	ldr	r0, [sp, #8]
c0de413e:	f7ff fd97 	bl	c0de3c70 <getCharWidth>
c0de4142:	b1e8      	cbz	r0, c0de4180 <nbgl_getTextNbPagesInWidth+0x10c>
c0de4144:	b2b1      	uxth	r1, r6
c0de4146:	1846      	adds	r6, r0, r1
c0de4148:	9900      	ldr	r1, [sp, #0]
c0de414a:	428e      	cmp	r6, r1
c0de414c:	d918      	bls.n	c0de4180 <nbgl_getTextNbPagesInWidth+0x10c>
c0de414e:	b125      	cbz	r5, c0de415a <nbgl_getTextNbPagesInWidth+0xe6>
c0de4150:	1c68      	adds	r0, r5, #1
c0de4152:	f8ad a012 	strh.w	sl, [sp, #18]
c0de4156:	9005      	str	r0, [sp, #20]
c0de4158:	2000      	movs	r0, #0
c0de415a:	f10b 0b01 	add.w	fp, fp, #1
c0de415e:	9a01      	ldr	r2, [sp, #4]
c0de4160:	fa1f f18b 	uxth.w	r1, fp
c0de4164:	4291      	cmp	r1, r2
c0de4166:	d10e      	bne.n	c0de4186 <nbgl_getTextNbPagesInWidth+0x112>
c0de4168:	f108 0801 	add.w	r8, r8, #1
c0de416c:	f04f 0b00 	mov.w	fp, #0
c0de4170:	4606      	mov	r6, r0
c0de4172:	e7d5      	b.n	c0de4120 <nbgl_getTextNbPagesInWidth+0xac>
c0de4174:	200a      	movs	r0, #10
c0de4176:	9003      	str	r0, [sp, #12]
c0de4178:	200a      	movs	r0, #10
c0de417a:	f006 fc37 	bl	c0dea9ec <nbgl_font_getFont>
c0de417e:	9002      	str	r0, [sp, #8]
c0de4180:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de4184:	e791      	b.n	c0de40aa <nbgl_getTextNbPagesInWidth+0x36>
c0de4186:	2500      	movs	r5, #0
c0de4188:	4606      	mov	r6, r0
c0de418a:	e7f9      	b.n	c0de4180 <nbgl_getTextNbPagesInWidth+0x10c>
c0de418c:	fa5f f088 	uxtb.w	r0, r8
c0de4190:	b006      	add	sp, #24
c0de4192:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4196:	bf00      	nop
c0de4198:	01000015 	.word	0x01000015

c0de419c <nbgl_textReduceOnNbLines>:
c0de419c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de41a0:	b088      	sub	sp, #32
c0de41a2:	469a      	mov	sl, r3
c0de41a4:	4614      	mov	r4, r2
c0de41a6:	460e      	mov	r6, r1
c0de41a8:	4607      	mov	r7, r0
c0de41aa:	f7ff fcc2 	bl	c0de3b32 <nbgl_getFont>
c0de41ae:	4683      	mov	fp, r0
c0de41b0:	4630      	mov	r0, r6
c0de41b2:	f007 f805 	bl	c0deb1c0 <strlen>
c0de41b6:	4945      	ldr	r1, [pc, #276]	@ (c0de42cc <nbgl_textReduceOnNbLines+0x130>)
c0de41b8:	4680      	mov	r8, r0
c0de41ba:	4638      	mov	r0, r7
c0de41bc:	4479      	add	r1, pc
c0de41be:	f7ff fd52 	bl	c0de3c66 <nbgl_getTextWidth>
c0de41c2:	ea5f 71ca 	movs.w	r1, sl, lsl #31
c0de41c6:	d050      	beq.n	c0de426a <nbgl_textReduceOnNbLines+0xce>
c0de41c8:	f8cd b01c 	str.w	fp, [sp, #28]
c0de41cc:	f04f 0b01 	mov.w	fp, #1
c0de41d0:	1a20      	subs	r0, r4, r0
c0de41d2:	4625      	mov	r5, r4
c0de41d4:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	@ 0x40
c0de41d8:	9106      	str	r1, [sp, #24]
c0de41da:	eb0b 015a 	add.w	r1, fp, sl, lsr #1
c0de41de:	9103      	str	r1, [sp, #12]
c0de41e0:	2102      	movs	r1, #2
c0de41e2:	fb90 f0f1 	sdiv	r0, r0, r1
c0de41e6:	ea4f 015a 	mov.w	r1, sl, lsr #1
c0de41ea:	f04f 0a00 	mov.w	sl, #0
c0de41ee:	b280      	uxth	r0, r0
c0de41f0:	9002      	str	r0, [sp, #8]
c0de41f2:	9101      	str	r1, [sp, #4]
c0de41f4:	fa1f f188 	uxth.w	r1, r8
c0de41f8:	4610      	mov	r0, r2
c0de41fa:	f04f 0800 	mov.w	r8, #0
c0de41fe:	e9cd 2104 	strd	r2, r1, [sp, #16]
c0de4202:	4582      	cmp	sl, r0
c0de4204:	f04f 0000 	mov.w	r0, #0
c0de4208:	bf38      	it	cc
c0de420a:	2001      	movcc	r0, #1
c0de420c:	458a      	cmp	sl, r1
c0de420e:	f04f 0100 	mov.w	r1, #0
c0de4212:	bf38      	it	cc
c0de4214:	2101      	movcc	r1, #1
c0de4216:	ea01 0400 	and.w	r4, r1, r0
c0de421a:	b314      	cbz	r4, c0de4262 <nbgl_textReduceOnNbLines+0xc6>
c0de421c:	f816 700a 	ldrb.w	r7, [r6, sl]
c0de4220:	9807      	ldr	r0, [sp, #28]
c0de4222:	2200      	movs	r2, #0
c0de4224:	4639      	mov	r1, r7
c0de4226:	f7ff fd23 	bl	c0de3c70 <getCharWidth>
c0de422a:	b190      	cbz	r0, c0de4252 <nbgl_textReduceOnNbLines+0xb6>
c0de422c:	fa1f f188 	uxth.w	r1, r8
c0de4230:	eb00 0801 	add.w	r8, r0, r1
c0de4234:	45a8      	cmp	r8, r5
c0de4236:	d904      	bls.n	c0de4242 <nbgl_textReduceOnNbLines+0xa6>
c0de4238:	f10b 0b01 	add.w	fp, fp, #1
c0de423c:	f04f 0800 	mov.w	r8, #0
c0de4240:	e7eb      	b.n	c0de421a <nbgl_textReduceOnNbLines+0x7e>
c0de4242:	9903      	ldr	r1, [sp, #12]
c0de4244:	fa5f f08b 	uxtb.w	r0, fp
c0de4248:	4281      	cmp	r1, r0
c0de424a:	d102      	bne.n	c0de4252 <nbgl_textReduceOnNbLines+0xb6>
c0de424c:	9802      	ldr	r0, [sp, #8]
c0de424e:	4580      	cmp	r8, r0
c0de4250:	d80e      	bhi.n	c0de4270 <nbgl_textReduceOnNbLines+0xd4>
c0de4252:	9806      	ldr	r0, [sp, #24]
c0de4254:	f800 700a 	strb.w	r7, [r0, sl]
c0de4258:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
c0de425c:	f10a 0a01 	add.w	sl, sl, #1
c0de4260:	e7cf      	b.n	c0de4202 <nbgl_textReduceOnNbLines+0x66>
c0de4262:	9906      	ldr	r1, [sp, #24]
c0de4264:	2000      	movs	r0, #0
c0de4266:	f801 000a 	strb.w	r0, [r1, sl]
c0de426a:	b008      	add	sp, #32
c0de426c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4270:	9906      	ldr	r1, [sp, #24]
c0de4272:	202e      	movs	r0, #46	@ 0x2e
c0de4274:	2400      	movs	r4, #0
c0de4276:	eb01 080a 	add.w	r8, r1, sl
c0de427a:	f801 000a 	strb.w	r0, [r1, sl]
c0de427e:	f888 0001 	strb.w	r0, [r8, #1]
c0de4282:	f808 0c01 	strb.w	r0, [r8, #-1]
c0de4286:	e9dd 1001 	ldrd	r1, r0, [sp, #4]
c0de428a:	fb01 0705 	mla	r7, r1, r5, r0
c0de428e:	9805      	ldr	r0, [sp, #20]
c0de4290:	2500      	movs	r5, #0
c0de4292:	eb06 0a00 	add.w	sl, r6, r0
c0de4296:	9e07      	ldr	r6, [sp, #28]
c0de4298:	b2a0      	uxth	r0, r4
c0de429a:	4287      	cmp	r7, r0
c0de429c:	d90a      	bls.n	c0de42b4 <nbgl_textReduceOnNbLines+0x118>
c0de429e:	eb0a 0005 	add.w	r0, sl, r5
c0de42a2:	2200      	movs	r2, #0
c0de42a4:	f810 1c01 	ldrb.w	r1, [r0, #-1]
c0de42a8:	4630      	mov	r0, r6
c0de42aa:	f7ff fce1 	bl	c0de3c70 <getCharWidth>
c0de42ae:	4404      	add	r4, r0
c0de42b0:	3d01      	subs	r5, #1
c0de42b2:	e7f1      	b.n	c0de4298 <nbgl_textReduceOnNbLines+0xfc>
c0de42b4:	eb0a 0105 	add.w	r1, sl, r5
c0de42b8:	f108 0002 	add.w	r0, r8, #2
c0de42bc:	f1c5 0201 	rsb	r2, r5, #1
c0de42c0:	3101      	adds	r1, #1
c0de42c2:	b008      	add	sp, #32
c0de42c4:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de42c8:	f006 bf23 	b.w	c0deb112 <__aeabi_memcpy>
c0de42cc:	00007403 	.word	0x00007403

c0de42d0 <nbgl_layoutGet>:
c0de42d0:	b570      	push	{r4, r5, r6, lr}
c0de42d2:	4605      	mov	r5, r0
c0de42d4:	7800      	ldrb	r0, [r0, #0]
c0de42d6:	b148      	cbz	r0, c0de42ec <nbgl_layoutGet+0x1c>
c0de42d8:	4819      	ldr	r0, [pc, #100]	@ (c0de4340 <nbgl_layoutGet+0x70>)
c0de42da:	eb09 0100 	add.w	r1, r9, r0
c0de42de:	7b8a      	ldrb	r2, [r1, #14]
c0de42e0:	b152      	cbz	r2, c0de42f8 <nbgl_layoutGet+0x28>
c0de42e2:	4448      	add	r0, r9
c0de42e4:	7e81      	ldrb	r1, [r0, #26]
c0de42e6:	b151      	cbz	r1, c0de42fe <nbgl_layoutGet+0x2e>
c0de42e8:	2400      	movs	r4, #0
c0de42ea:	e026      	b.n	c0de433a <nbgl_layoutGet+0x6a>
c0de42ec:	4814      	ldr	r0, [pc, #80]	@ (c0de4340 <nbgl_layoutGet+0x70>)
c0de42ee:	eb09 0400 	add.w	r4, r9, r0
c0de42f2:	2000      	movs	r0, #0
c0de42f4:	70a0      	strb	r0, [r4, #2]
c0de42f6:	e004      	b.n	c0de4302 <nbgl_layoutGet+0x32>
c0de42f8:	f101 040c 	add.w	r4, r1, #12
c0de42fc:	e001      	b.n	c0de4302 <nbgl_layoutGet+0x32>
c0de42fe:	f100 0418 	add.w	r4, r0, #24
c0de4302:	2000      	movs	r0, #0
c0de4304:	4626      	mov	r6, r4
c0de4306:	60a0      	str	r0, [r4, #8]
c0de4308:	6020      	str	r0, [r4, #0]
c0de430a:	f846 0f04 	str.w	r0, [r6, #4]!
c0de430e:	6868      	ldr	r0, [r5, #4]
c0de4310:	f006 fafc 	bl	c0dea90c <pic>
c0de4314:	60a0      	str	r0, [r4, #8]
c0de4316:	7828      	ldrb	r0, [r5, #0]
c0de4318:	f105 0208 	add.w	r2, r5, #8
c0de431c:	7020      	strb	r0, [r4, #0]
c0de431e:	4b09      	ldr	r3, [pc, #36]	@ (c0de4344 <nbgl_layoutGet+0x74>)
c0de4320:	447b      	add	r3, pc
c0de4322:	b120      	cbz	r0, c0de432e <nbgl_layoutGet+0x5e>
c0de4324:	4630      	mov	r0, r6
c0de4326:	2107      	movs	r1, #7
c0de4328:	f001 ff5e 	bl	c0de61e8 <nbgl_screenPush>
c0de432c:	e004      	b.n	c0de4338 <nbgl_layoutGet+0x68>
c0de432e:	4630      	mov	r0, r6
c0de4330:	2107      	movs	r1, #7
c0de4332:	f001 fea1 	bl	c0de6078 <nbgl_screenSet>
c0de4336:	2000      	movs	r0, #0
c0de4338:	7060      	strb	r0, [r4, #1]
c0de433a:	4620      	mov	r0, r4
c0de433c:	bd70      	pop	{r4, r5, r6, pc}
c0de433e:	bf00      	nop
c0de4340:	000003f0 	.word	0x000003f0
c0de4344:	00000025 	.word	0x00000025

c0de4348 <buttonCallback>:
c0de4348:	b5b0      	push	{r4, r5, r7, lr}
c0de434a:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de434e:	4811      	ldr	r0, [pc, #68]	@ (c0de4394 <buttonCallback+0x4c>)
c0de4350:	2302      	movs	r3, #2
c0de4352:	1c5c      	adds	r4, r3, #1
c0de4354:	d01d      	beq.n	c0de4392 <buttonCallback+0x4a>
c0de4356:	b2dc      	uxtb	r4, r3
c0de4358:	eb09 0500 	add.w	r5, r9, r0
c0de435c:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de4360:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de4364:	786d      	ldrb	r5, [r5, #1]
c0de4366:	42aa      	cmp	r2, r5
c0de4368:	d105      	bne.n	c0de4376 <buttonCallback+0x2e>
c0de436a:	eb09 0500 	add.w	r5, r9, r0
c0de436e:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de4372:	78ad      	ldrb	r5, [r5, #2]
c0de4374:	b90d      	cbnz	r5, c0de437a <buttonCallback+0x32>
c0de4376:	3b01      	subs	r3, #1
c0de4378:	e7eb      	b.n	c0de4352 <buttonCallback+0xa>
c0de437a:	eb09 0200 	add.w	r2, r9, r0
c0de437e:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de4382:	6892      	ldr	r2, [r2, #8]
c0de4384:	b12a      	cbz	r2, c0de4392 <buttonCallback+0x4a>
c0de4386:	4448      	add	r0, r9
c0de4388:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de438c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4390:	4710      	bx	r2
c0de4392:	bdb0      	pop	{r4, r5, r7, pc}
c0de4394:	000003f0 	.word	0x000003f0

c0de4398 <nbgl_layoutAddNavigation>:
c0de4398:	b570      	push	{r4, r5, r6, lr}
c0de439a:	2800      	cmp	r0, #0
c0de439c:	d04d      	beq.n	c0de443a <nbgl_layoutAddNavigation+0xa2>
c0de439e:	460d      	mov	r5, r1
c0de43a0:	7849      	ldrb	r1, [r1, #1]
c0de43a2:	4604      	mov	r4, r0
c0de43a4:	07c8      	lsls	r0, r1, #31
c0de43a6:	d022      	beq.n	c0de43ee <nbgl_layoutAddNavigation+0x56>
c0de43a8:	7861      	ldrb	r1, [r4, #1]
c0de43aa:	2002      	movs	r0, #2
c0de43ac:	f001 fd90 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de43b0:	782a      	ldrb	r2, [r5, #0]
c0de43b2:	7869      	ldrb	r1, [r5, #1]
c0de43b4:	4b23      	ldr	r3, [pc, #140]	@ (c0de4444 <nbgl_layoutAddNavigation+0xac>)
c0de43b6:	4e24      	ldr	r6, [pc, #144]	@ (c0de4448 <nbgl_layoutAddNavigation+0xb0>)
c0de43b8:	2a00      	cmp	r2, #0
c0de43ba:	447b      	add	r3, pc
c0de43bc:	447e      	add	r6, pc
c0de43be:	4602      	mov	r2, r0
c0de43c0:	bf08      	it	eq
c0de43c2:	461e      	moveq	r6, r3
c0de43c4:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de43c8:	0e33      	lsrs	r3, r6, #24
c0de43ca:	70d3      	strb	r3, [r2, #3]
c0de43cc:	0c33      	lsrs	r3, r6, #16
c0de43ce:	7093      	strb	r3, [r2, #2]
c0de43d0:	0a32      	lsrs	r2, r6, #8
c0de43d2:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de43d6:	6862      	ldr	r2, [r4, #4]
c0de43d8:	78a3      	ldrb	r3, [r4, #2]
c0de43da:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de43de:	2203      	movs	r2, #3
c0de43e0:	77c2      	strb	r2, [r0, #31]
c0de43e2:	2204      	movs	r2, #4
c0de43e4:	7582      	strb	r2, [r0, #22]
c0de43e6:	2200      	movs	r2, #0
c0de43e8:	7242      	strb	r2, [r0, #9]
c0de43ea:	1c58      	adds	r0, r3, #1
c0de43ec:	70a0      	strb	r0, [r4, #2]
c0de43ee:	0788      	lsls	r0, r1, #30
c0de43f0:	f04f 0600 	mov.w	r6, #0
c0de43f4:	d523      	bpl.n	c0de443e <nbgl_layoutAddNavigation+0xa6>
c0de43f6:	7861      	ldrb	r1, [r4, #1]
c0de43f8:	2002      	movs	r0, #2
c0de43fa:	f001 fd69 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de43fe:	7829      	ldrb	r1, [r5, #0]
c0de4400:	4a12      	ldr	r2, [pc, #72]	@ (c0de444c <nbgl_layoutAddNavigation+0xb4>)
c0de4402:	4b13      	ldr	r3, [pc, #76]	@ (c0de4450 <nbgl_layoutAddNavigation+0xb8>)
c0de4404:	2900      	cmp	r1, #0
c0de4406:	447a      	add	r2, pc
c0de4408:	447b      	add	r3, pc
c0de440a:	4601      	mov	r1, r0
c0de440c:	bf08      	it	eq
c0de440e:	4613      	moveq	r3, r2
c0de4410:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de4414:	0e1a      	lsrs	r2, r3, #24
c0de4416:	7246      	strb	r6, [r0, #9]
c0de4418:	70ca      	strb	r2, [r1, #3]
c0de441a:	0c1a      	lsrs	r2, r3, #16
c0de441c:	708a      	strb	r2, [r1, #2]
c0de441e:	0a19      	lsrs	r1, r3, #8
c0de4420:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de4424:	6861      	ldr	r1, [r4, #4]
c0de4426:	78a2      	ldrb	r2, [r4, #2]
c0de4428:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de442c:	2103      	movs	r1, #3
c0de442e:	77c1      	strb	r1, [r0, #31]
c0de4430:	2106      	movs	r1, #6
c0de4432:	7581      	strb	r1, [r0, #22]
c0de4434:	1c50      	adds	r0, r2, #1
c0de4436:	70a0      	strb	r0, [r4, #2]
c0de4438:	e001      	b.n	c0de443e <nbgl_layoutAddNavigation+0xa6>
c0de443a:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de443e:	4630      	mov	r0, r6
c0de4440:	bd70      	pop	{r4, r5, r6, pc}
c0de4442:	bf00      	nop
c0de4444:	00006f70 	.word	0x00006f70
c0de4448:	00006fad 	.word	0x00006fad
c0de444c:	00006f55 	.word	0x00006f55
c0de4450:	00006f14 	.word	0x00006f14

c0de4454 <nbgl_layoutAddText>:
c0de4454:	2800      	cmp	r0, #0
c0de4456:	f000 8135 	beq.w	c0de46c4 <nbgl_layoutAddText+0x270>
c0de445a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de445e:	b088      	sub	sp, #32
c0de4460:	460e      	mov	r6, r1
c0de4462:	7841      	ldrb	r1, [r0, #1]
c0de4464:	4605      	mov	r5, r0
c0de4466:	2001      	movs	r0, #1
c0de4468:	4617      	mov	r7, r2
c0de446a:	461c      	mov	r4, r3
c0de446c:	f001 fd30 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de4470:	4680      	mov	r8, r0
c0de4472:	2003      	movs	r0, #3
c0de4474:	2f00      	cmp	r7, #0
c0de4476:	bf08      	it	eq
c0de4478:	2001      	moveq	r0, #1
c0de447a:	7869      	ldrb	r1, [r5, #1]
c0de447c:	f888 0020 	strb.w	r0, [r8, #32]
c0de4480:	f001 fd88 	bl	c0de5f94 <nbgl_containerPoolGet>
c0de4484:	4641      	mov	r1, r8
c0de4486:	0e02      	lsrs	r2, r0, #24
c0de4488:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de448c:	f04f 0b00 	mov.w	fp, #0
c0de4490:	9704      	str	r7, [sp, #16]
c0de4492:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4496:	f888 a004 	strb.w	sl, [r8, #4]
c0de449a:	f888 b005 	strb.w	fp, [r8, #5]
c0de449e:	70ca      	strb	r2, [r1, #3]
c0de44a0:	0c02      	lsrs	r2, r0, #16
c0de44a2:	0a00      	lsrs	r0, r0, #8
c0de44a4:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de44a8:	708a      	strb	r2, [r1, #2]
c0de44aa:	2004      	movs	r0, #4
c0de44ac:	7869      	ldrb	r1, [r5, #1]
c0de44ae:	f001 fd0f 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de44b2:	4607      	mov	r7, r0
c0de44b4:	2003      	movs	r0, #3
c0de44b6:	77f8      	strb	r0, [r7, #31]
c0de44b8:	4630      	mov	r0, r6
c0de44ba:	f006 fa27 	bl	c0dea90c <pic>
c0de44be:	4601      	mov	r1, r0
c0de44c0:	2008      	movs	r0, #8
c0de44c2:	f887 a004 	strb.w	sl, [r7, #4]
c0de44c6:	f887 b005 	strb.w	fp, [r7, #5]
c0de44ca:	9403      	str	r4, [sp, #12]
c0de44cc:	f04f 0a01 	mov.w	sl, #1
c0de44d0:	2c00      	cmp	r4, #0
c0de44d2:	bf08      	it	eq
c0de44d4:	200a      	moveq	r0, #10
c0de44d6:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de44da:	2205      	movs	r2, #5
c0de44dc:	0e0b      	lsrs	r3, r1, #24
c0de44de:	f887 2020 	strb.w	r2, [r7, #32]
c0de44e2:	463a      	mov	r2, r7
c0de44e4:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de44e8:	70d3      	strb	r3, [r2, #3]
c0de44ea:	0c0b      	lsrs	r3, r1, #16
c0de44ec:	7093      	strb	r3, [r2, #2]
c0de44ee:	0a0a      	lsrs	r2, r1, #8
c0de44f0:	2301      	movs	r3, #1
c0de44f2:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de44f6:	2272      	movs	r2, #114	@ 0x72
c0de44f8:	f7ff fd3e 	bl	c0de3f78 <nbgl_getTextNbLinesInWidth>
c0de44fc:	4606      	mov	r6, r0
c0de44fe:	2805      	cmp	r0, #5
c0de4500:	9505      	str	r5, [sp, #20]
c0de4502:	d31d      	bcc.n	c0de4540 <nbgl_layoutAddText+0xec>
c0de4504:	463e      	mov	r6, r7
c0de4506:	2004      	movs	r0, #4
c0de4508:	f10d 051e 	add.w	r5, sp, #30
c0de450c:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de4510:	7872      	ldrb	r2, [r6, #1]
c0de4512:	78b3      	ldrb	r3, [r6, #2]
c0de4514:	78f4      	ldrb	r4, [r6, #3]
c0de4516:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de451a:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de451e:	9500      	str	r5, [sp, #0]
c0de4520:	9d05      	ldr	r5, [sp, #20]
c0de4522:	f8cd a004 	str.w	sl, [sp, #4]
c0de4526:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de452a:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de452e:	2304      	movs	r3, #4
c0de4530:	f000 fc60 	bl	c0de4df4 <OUTLINED_FUNCTION_4>
c0de4534:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de4538:	7130      	strb	r0, [r6, #4]
c0de453a:	0a00      	lsrs	r0, r0, #8
c0de453c:	7170      	strb	r0, [r6, #5]
c0de453e:	2604      	movs	r6, #4
c0de4540:	f000 fc60 	bl	c0de4e04 <OUTLINED_FUNCTION_6>
c0de4544:	4683      	mov	fp, r0
c0de4546:	2002      	movs	r0, #2
c0de4548:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de454c:	9c04      	ldr	r4, [sp, #16]
c0de454e:	75b8      	strb	r0, [r7, #22]
c0de4550:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de4554:	2c00      	cmp	r4, #0
c0de4556:	fb06 fa00 	mul.w	sl, r6, r0
c0de455a:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de455e:	f887 a006 	strb.w	sl, [r7, #6]
c0de4562:	71f8      	strb	r0, [r7, #7]
c0de4564:	4640      	mov	r0, r8
c0de4566:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de456a:	7842      	ldrb	r2, [r0, #1]
c0de456c:	7883      	ldrb	r3, [r0, #2]
c0de456e:	78c0      	ldrb	r0, [r0, #3]
c0de4570:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4574:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4578:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de457c:	6007      	str	r7, [r0, #0]
c0de457e:	f000 8106 	beq.w	c0de478e <nbgl_layoutAddText+0x33a>
c0de4582:	9803      	ldr	r0, [sp, #12]
c0de4584:	7869      	ldrb	r1, [r5, #1]
c0de4586:	2802      	cmp	r0, #2
c0de4588:	f040 809e 	bne.w	c0de46c8 <nbgl_layoutAddText+0x274>
c0de458c:	2005      	movs	r0, #5
c0de458e:	2505      	movs	r5, #5
c0de4590:	f001 fc9e 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de4594:	2600      	movs	r6, #0
c0de4596:	4607      	mov	r7, r0
c0de4598:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de459c:	2001      	movs	r0, #1
c0de459e:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de45a2:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de45a6:	f000 fc3c 	bl	c0de4e22 <OUTLINED_FUNCTION_9>
c0de45aa:	4620      	mov	r0, r4
c0de45ac:	f006 f9ae 	bl	c0dea90c <pic>
c0de45b0:	4601      	mov	r1, r0
c0de45b2:	200e      	movs	r0, #14
c0de45b4:	71fe      	strb	r6, [r7, #7]
c0de45b6:	75bd      	strb	r5, [r7, #22]
c0de45b8:	f000 fbf1 	bl	c0de4d9e <OUTLINED_FUNCTION_1>
c0de45bc:	2865      	cmp	r0, #101	@ 0x65
c0de45be:	f240 80d6 	bls.w	c0de476e <nbgl_layoutAddText+0x31a>
c0de45c2:	46bb      	mov	fp, r7
c0de45c4:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de45c8:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de45cc:	2401      	movs	r4, #1
c0de45ce:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de45d2:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de45d6:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de45da:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de45de:	ae06      	add	r6, sp, #24
c0de45e0:	e9cd 6400 	strd	r6, r4, [sp]
c0de45e4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de45e8:	f10d 031a 	add.w	r3, sp, #26
c0de45ec:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de45f0:	2266      	movs	r2, #102	@ 0x66
c0de45f2:	f7ff fb6f 	bl	c0de3cd4 <nbgl_getTextMaxLenAndWidth>
c0de45f6:	f8bd 4018 	ldrh.w	r4, [sp, #24]
c0de45fa:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de45fe:	4655      	mov	r5, sl
c0de4600:	f104 000c 	add.w	r0, r4, #12
c0de4604:	7138      	strb	r0, [r7, #4]
c0de4606:	0a00      	lsrs	r0, r0, #8
c0de4608:	7178      	strb	r0, [r7, #5]
c0de460a:	486b      	ldr	r0, [pc, #428]	@ (c0de47b8 <nbgl_layoutAddText+0x364>)
c0de460c:	2e13      	cmp	r6, #19
c0de460e:	bf28      	it	cs
c0de4610:	2613      	movcs	r6, #19
c0de4612:	f89b 1000 	ldrb.w	r1, [fp]
c0de4616:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de461a:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de461e:	eb09 0a00 	add.w	sl, r9, r0
c0de4622:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de4626:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de462a:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de462e:	4632      	mov	r2, r6
c0de4630:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de4634:	4650      	mov	r0, sl
c0de4636:	f006 fd6c 	bl	c0deb112 <__aeabi_memcpy>
c0de463a:	2000      	movs	r0, #0
c0de463c:	f80a 0006 	strb.w	r0, [sl, r6]
c0de4640:	76b8      	strb	r0, [r7, #26]
c0de4642:	2001      	movs	r0, #1
c0de4644:	f88b a000 	strb.w	sl, [fp]
c0de4648:	7678      	strb	r0, [r7, #25]
c0de464a:	ea4f 601a 	mov.w	r0, sl, lsr #24
c0de464e:	2c00      	cmp	r4, #0
c0de4650:	f88b 0003 	strb.w	r0, [fp, #3]
c0de4654:	ea4f 401a 	mov.w	r0, sl, lsr #16
c0de4658:	f88b 0002 	strb.w	r0, [fp, #2]
c0de465c:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de4660:	46aa      	mov	sl, r5
c0de4662:	9d05      	ldr	r5, [sp, #20]
c0de4664:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4668:	4640      	mov	r0, r8
c0de466a:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de466e:	7842      	ldrb	r2, [r0, #1]
c0de4670:	7883      	ldrb	r3, [r0, #2]
c0de4672:	78c0      	ldrb	r0, [r0, #3]
c0de4674:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4678:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de467c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4680:	6047      	str	r7, [r0, #4]
c0de4682:	f000 8082 	beq.w	c0de478a <nbgl_layoutAddText+0x336>
c0de4686:	7869      	ldrb	r1, [r5, #1]
c0de4688:	2005      	movs	r0, #5
c0de468a:	2605      	movs	r6, #5
c0de468c:	f001 fc20 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de4690:	2500      	movs	r5, #0
c0de4692:	4607      	mov	r7, r0
c0de4694:	9904      	ldr	r1, [sp, #16]
c0de4696:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de469a:	2001      	movs	r0, #1
c0de469c:	f000 fbc1 	bl	c0de4e22 <OUTLINED_FUNCTION_9>
c0de46a0:	f8bd 001a 	ldrh.w	r0, [sp, #26]
c0de46a4:	4408      	add	r0, r1
c0de46a6:	f006 f931 	bl	c0dea90c <pic>
c0de46aa:	4601      	mov	r1, r0
c0de46ac:	200e      	movs	r0, #14
c0de46ae:	71fd      	strb	r5, [r7, #7]
c0de46b0:	f000 fb75 	bl	c0de4d9e <OUTLINED_FUNCTION_1>
c0de46b4:	300c      	adds	r0, #12
c0de46b6:	210f      	movs	r1, #15
c0de46b8:	75be      	strb	r6, [r7, #22]
c0de46ba:	7138      	strb	r0, [r7, #4]
c0de46bc:	0a00      	lsrs	r0, r0, #8
c0de46be:	7178      	strb	r0, [r7, #5]
c0de46c0:	2002      	movs	r0, #2
c0de46c2:	e05a      	b.n	c0de477a <nbgl_layoutAddText+0x326>
c0de46c4:	f000 bbaa 	b.w	c0de4e1c <OUTLINED_FUNCTION_8>
c0de46c8:	f000 fb99 	bl	c0de4dfe <OUTLINED_FUNCTION_5>
c0de46cc:	2603      	movs	r6, #3
c0de46ce:	4607      	mov	r7, r0
c0de46d0:	77c6      	strb	r6, [r0, #31]
c0de46d2:	4620      	mov	r0, r4
c0de46d4:	f006 f91a 	bl	c0dea90c <pic>
c0de46d8:	4601      	mov	r1, r0
c0de46da:	2072      	movs	r0, #114	@ 0x72
c0de46dc:	2400      	movs	r4, #0
c0de46de:	2301      	movs	r3, #1
c0de46e0:	7138      	strb	r0, [r7, #4]
c0de46e2:	2001      	movs	r0, #1
c0de46e4:	0e0a      	lsrs	r2, r1, #24
c0de46e6:	717c      	strb	r4, [r7, #5]
c0de46e8:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de46ec:	200a      	movs	r0, #10
c0de46ee:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de46f2:	f000 fb65 	bl	c0de4dc0 <OUTLINED_FUNCTION_2>
c0de46f6:	2804      	cmp	r0, #4
c0de46f8:	d31e      	bcc.n	c0de4738 <nbgl_layoutAddText+0x2e4>
c0de46fa:	463d      	mov	r5, r7
c0de46fc:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4700:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de4704:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4708:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de470c:	78ab      	ldrb	r3, [r5, #2]
c0de470e:	78e9      	ldrb	r1, [r5, #3]
c0de4710:	aa07      	add	r2, sp, #28
c0de4712:	9200      	str	r2, [sp, #0]
c0de4714:	2201      	movs	r2, #1
c0de4716:	9201      	str	r2, [sp, #4]
c0de4718:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de471c:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de4720:	2303      	movs	r3, #3
c0de4722:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4726:	2272      	movs	r2, #114	@ 0x72
c0de4728:	f7ff fb52 	bl	c0de3dd0 <nbgl_getTextMaxLenInNbLines>
c0de472c:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de4730:	7128      	strb	r0, [r5, #4]
c0de4732:	0a00      	lsrs	r0, r0, #8
c0de4734:	7168      	strb	r0, [r5, #5]
c0de4736:	2003      	movs	r0, #3
c0de4738:	9903      	ldr	r1, [sp, #12]
c0de473a:	2900      	cmp	r1, #0
c0de473c:	bf08      	it	eq
c0de473e:	4606      	moveq	r6, r0
c0de4740:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de4744:	76bc      	strb	r4, [r7, #26]
c0de4746:	75bc      	strb	r4, [r7, #22]
c0de4748:	fb06 f100 	mul.w	r1, r6, r0
c0de474c:	fb06 a000 	mla	r0, r6, r0, sl
c0de4750:	71b9      	strb	r1, [r7, #6]
c0de4752:	0a09      	lsrs	r1, r1, #8
c0de4754:	71f9      	strb	r1, [r7, #7]
c0de4756:	2102      	movs	r1, #2
c0de4758:	f100 0a02 	add.w	sl, r0, #2
c0de475c:	7679      	strb	r1, [r7, #25]
c0de475e:	2105      	movs	r1, #5
c0de4760:	f887 1020 	strb.w	r1, [r7, #32]
c0de4764:	4641      	mov	r1, r8
c0de4766:	f000 fb38 	bl	c0de4dda <OUTLINED_FUNCTION_3>
c0de476a:	604f      	str	r7, [r1, #4]
c0de476c:	e00f      	b.n	c0de478e <nbgl_layoutAddText+0x33a>
c0de476e:	300c      	adds	r0, #12
c0de4770:	2108      	movs	r1, #8
c0de4772:	7138      	strb	r0, [r7, #4]
c0de4774:	0a00      	lsrs	r0, r0, #8
c0de4776:	7178      	strb	r0, [r7, #5]
c0de4778:	2001      	movs	r0, #1
c0de477a:	2200      	movs	r2, #0
c0de477c:	7679      	strb	r1, [r7, #25]
c0de477e:	4641      	mov	r1, r8
c0de4780:	76ba      	strb	r2, [r7, #26]
c0de4782:	f000 fb2a 	bl	c0de4dda <OUTLINED_FUNCTION_3>
c0de4786:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de478a:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de478e:	6868      	ldr	r0, [r5, #4]
c0de4790:	78a9      	ldrb	r1, [r5, #2]
c0de4792:	2205      	movs	r2, #5
c0de4794:	f888 2016 	strb.w	r2, [r8, #22]
c0de4798:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de479c:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de47a0:	2000      	movs	r0, #0
c0de47a2:	3101      	adds	r1, #1
c0de47a4:	f888 a006 	strb.w	sl, [r8, #6]
c0de47a8:	f888 2007 	strb.w	r2, [r8, #7]
c0de47ac:	f888 001f 	strb.w	r0, [r8, #31]
c0de47b0:	70a9      	strb	r1, [r5, #2]
c0de47b2:	b008      	add	sp, #32
c0de47b4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de47b8:	00000414 	.word	0x00000414

c0de47bc <nbgl_layoutAddMenuList>:
c0de47bc:	2800      	cmp	r0, #0
c0de47be:	d04f      	beq.n	c0de4860 <nbgl_layoutAddMenuList+0xa4>
c0de47c0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de47c4:	460c      	mov	r4, r1
c0de47c6:	4605      	mov	r5, r0
c0de47c8:	2700      	movs	r7, #0
c0de47ca:	f04f 0b05 	mov.w	fp, #5
c0de47ce:	f04f 0803 	mov.w	r8, #3
c0de47d2:	f04f 0a00 	mov.w	sl, #0
c0de47d6:	7920      	ldrb	r0, [r4, #4]
c0de47d8:	4582      	cmp	sl, r0
c0de47da:	d23e      	bcs.n	c0de485a <nbgl_layoutAddMenuList+0x9e>
c0de47dc:	7960      	ldrb	r0, [r4, #5]
c0de47de:	2803      	cmp	r0, #3
c0de47e0:	d302      	bcc.n	c0de47e8 <nbgl_layoutAddMenuList+0x2c>
c0de47e2:	1e81      	subs	r1, r0, #2
c0de47e4:	4551      	cmp	r1, sl
c0de47e6:	dc35      	bgt.n	c0de4854 <nbgl_layoutAddMenuList+0x98>
c0de47e8:	3002      	adds	r0, #2
c0de47ea:	4550      	cmp	r0, sl
c0de47ec:	d332      	bcc.n	c0de4854 <nbgl_layoutAddMenuList+0x98>
c0de47ee:	7869      	ldrb	r1, [r5, #1]
c0de47f0:	f000 fb05 	bl	c0de4dfe <OUTLINED_FUNCTION_5>
c0de47f4:	6821      	ldr	r1, [r4, #0]
c0de47f6:	4606      	mov	r6, r0
c0de47f8:	fa5f f08a 	uxtb.w	r0, sl
c0de47fc:	4788      	blx	r1
c0de47fe:	7961      	ldrb	r1, [r4, #5]
c0de4800:	220a      	movs	r2, #10
c0de4802:	458a      	cmp	sl, r1
c0de4804:	bf08      	it	eq
c0de4806:	2208      	moveq	r2, #8
c0de4808:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de480c:	71f7      	strb	r7, [r6, #7]
c0de480e:	7177      	strb	r7, [r6, #5]
c0de4810:	f886 b020 	strb.w	fp, [r6, #32]
c0de4814:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de4818:	f886 b016 	strb.w	fp, [r6, #22]
c0de481c:	f886 801f 	strb.w	r8, [r6, #31]
c0de4820:	4632      	mov	r2, r6
c0de4822:	0e03      	lsrs	r3, r0, #24
c0de4824:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de4828:	70d3      	strb	r3, [r2, #3]
c0de482a:	0c03      	lsrs	r3, r0, #16
c0de482c:	0a00      	lsrs	r0, r0, #8
c0de482e:	7093      	strb	r3, [r2, #2]
c0de4830:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4834:	6868      	ldr	r0, [r5, #4]
c0de4836:	78aa      	ldrb	r2, [r5, #2]
c0de4838:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de483c:	200c      	movs	r0, #12
c0de483e:	71b0      	strb	r0, [r6, #6]
c0de4840:	2072      	movs	r0, #114	@ 0x72
c0de4842:	7130      	strb	r0, [r6, #4]
c0de4844:	ebaa 0001 	sub.w	r0, sl, r1
c0de4848:	0901      	lsrs	r1, r0, #4
c0de484a:	0100      	lsls	r0, r0, #4
c0de484c:	7670      	strb	r0, [r6, #25]
c0de484e:	1c50      	adds	r0, r2, #1
c0de4850:	76b1      	strb	r1, [r6, #26]
c0de4852:	70a8      	strb	r0, [r5, #2]
c0de4854:	f10a 0a01 	add.w	sl, sl, #1
c0de4858:	e7bd      	b.n	c0de47d6 <nbgl_layoutAddMenuList+0x1a>
c0de485a:	2000      	movs	r0, #0
c0de485c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4860:	f000 badc 	b.w	c0de4e1c <OUTLINED_FUNCTION_8>

c0de4864 <nbgl_layoutAddCenteredInfo>:
c0de4864:	2800      	cmp	r0, #0
c0de4866:	f000 80d9 	beq.w	c0de4a1c <nbgl_layoutAddCenteredInfo+0x1b8>
c0de486a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de486e:	b086      	sub	sp, #24
c0de4870:	460c      	mov	r4, r1
c0de4872:	7841      	ldrb	r1, [r0, #1]
c0de4874:	4682      	mov	sl, r0
c0de4876:	2001      	movs	r0, #1
c0de4878:	f001 fb2a 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de487c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4880:	4680      	mov	r8, r0
c0de4882:	2003      	movs	r0, #3
c0de4884:	2703      	movs	r7, #3
c0de4886:	f001 fb85 	bl	c0de5f94 <nbgl_containerPoolGet>
c0de488a:	4641      	mov	r1, r8
c0de488c:	0e02      	lsrs	r2, r0, #24
c0de488e:	f04f 0b00 	mov.w	fp, #0
c0de4892:	9404      	str	r4, [sp, #16]
c0de4894:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4898:	f888 b020 	strb.w	fp, [r8, #32]
c0de489c:	70ca      	strb	r2, [r1, #3]
c0de489e:	0c02      	lsrs	r2, r0, #16
c0de48a0:	0a00      	lsrs	r0, r0, #8
c0de48a2:	708a      	strb	r2, [r1, #2]
c0de48a4:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de48a8:	68a0      	ldr	r0, [r4, #8]
c0de48aa:	b3c0      	cbz	r0, c0de491e <nbgl_layoutAddCenteredInfo+0xba>
c0de48ac:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de48b0:	2002      	movs	r0, #2
c0de48b2:	f001 fb0d 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de48b6:	4606      	mov	r6, r0
c0de48b8:	77c7      	strb	r7, [r0, #31]
c0de48ba:	68a0      	ldr	r0, [r4, #8]
c0de48bc:	f006 f826 	bl	c0dea90c <pic>
c0de48c0:	4631      	mov	r1, r6
c0de48c2:	0e02      	lsrs	r2, r0, #24
c0de48c4:	f886 b013 	strb.w	fp, [r6, #19]
c0de48c8:	f886 b009 	strb.w	fp, [r6, #9]
c0de48cc:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de48d0:	70ca      	strb	r2, [r1, #3]
c0de48d2:	0c02      	lsrs	r2, r0, #16
c0de48d4:	708a      	strb	r2, [r1, #2]
c0de48d6:	0a01      	lsrs	r1, r0, #8
c0de48d8:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de48dc:	4631      	mov	r1, r6
c0de48de:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de48e2:	f881 b003 	strb.w	fp, [r1, #3]
c0de48e6:	f881 b002 	strb.w	fp, [r1, #2]
c0de48ea:	4641      	mov	r1, r8
c0de48ec:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de48f0:	784f      	ldrb	r7, [r1, #1]
c0de48f2:	788c      	ldrb	r4, [r1, #2]
c0de48f4:	78cd      	ldrb	r5, [r1, #3]
c0de48f6:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de48fa:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de48fe:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4902:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4906:	9c04      	ldr	r4, [sp, #16]
c0de4908:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de490c:	2202      	movs	r2, #2
c0de490e:	75b2      	strb	r2, [r6, #22]
c0de4910:	1c5a      	adds	r2, r3, #1
c0de4912:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4916:	7881      	ldrb	r1, [r0, #2]
c0de4918:	78c0      	ldrb	r0, [r0, #3]
c0de491a:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de491e:	6820      	ldr	r0, [r4, #0]
c0de4920:	2800      	cmp	r0, #0
c0de4922:	f000 80a2 	beq.w	c0de4a6a <nbgl_layoutAddCenteredInfo+0x206>
c0de4926:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de492a:	f000 fa68 	bl	c0de4dfe <OUTLINED_FUNCTION_5>
c0de492e:	4607      	mov	r7, r0
c0de4930:	2003      	movs	r0, #3
c0de4932:	77f8      	strb	r0, [r7, #31]
c0de4934:	6820      	ldr	r0, [r4, #0]
c0de4936:	f005 ffe9 	bl	c0dea90c <pic>
c0de493a:	4601      	mov	r1, r0
c0de493c:	2072      	movs	r0, #114	@ 0x72
c0de493e:	2500      	movs	r5, #0
c0de4940:	7138      	strb	r0, [r7, #4]
c0de4942:	2005      	movs	r0, #5
c0de4944:	0e0a      	lsrs	r2, r1, #24
c0de4946:	717d      	strb	r5, [r7, #5]
c0de4948:	f887 0020 	strb.w	r0, [r7, #32]
c0de494c:	2001      	movs	r0, #1
c0de494e:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4952:	4638      	mov	r0, r7
c0de4954:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4958:	70c2      	strb	r2, [r0, #3]
c0de495a:	0c0a      	lsrs	r2, r1, #16
c0de495c:	7082      	strb	r2, [r0, #2]
c0de495e:	0a08      	lsrs	r0, r1, #8
c0de4960:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de4964:	2008      	movs	r0, #8
c0de4966:	7b62      	ldrb	r2, [r4, #13]
c0de4968:	2a00      	cmp	r2, #0
c0de496a:	bf08      	it	eq
c0de496c:	200a      	moveq	r0, #10
c0de496e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4972:	2272      	movs	r2, #114	@ 0x72
c0de4974:	2301      	movs	r3, #1
c0de4976:	f7ff faff 	bl	c0de3f78 <nbgl_getTextNbLinesInWidth>
c0de497a:	4606      	mov	r6, r0
c0de497c:	2805      	cmp	r0, #5
c0de497e:	d31e      	bcc.n	c0de49be <nbgl_layoutAddCenteredInfo+0x15a>
c0de4980:	463d      	mov	r5, r7
c0de4982:	2004      	movs	r0, #4
c0de4984:	2101      	movs	r1, #1
c0de4986:	f10d 0416 	add.w	r4, sp, #22
c0de498a:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de498e:	786a      	ldrb	r2, [r5, #1]
c0de4990:	78ab      	ldrb	r3, [r5, #2]
c0de4992:	78ee      	ldrb	r6, [r5, #3]
c0de4994:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de4998:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de499c:	9101      	str	r1, [sp, #4]
c0de499e:	9400      	str	r4, [sp, #0]
c0de49a0:	9c04      	ldr	r4, [sp, #16]
c0de49a2:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de49a6:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de49aa:	2304      	movs	r3, #4
c0de49ac:	f000 fa22 	bl	c0de4df4 <OUTLINED_FUNCTION_4>
c0de49b0:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de49b4:	2604      	movs	r6, #4
c0de49b6:	7128      	strb	r0, [r5, #4]
c0de49b8:	0a00      	lsrs	r0, r0, #8
c0de49ba:	7168      	strb	r0, [r5, #5]
c0de49bc:	2500      	movs	r5, #0
c0de49be:	f000 fa21 	bl	c0de4e04 <OUTLINED_FUNCTION_6>
c0de49c2:	79c0      	ldrb	r0, [r0, #7]
c0de49c4:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de49c8:	4370      	muls	r0, r6
c0de49ca:	0a01      	lsrs	r1, r0, #8
c0de49cc:	71b8      	strb	r0, [r7, #6]
c0de49ce:	71f9      	strb	r1, [r7, #7]
c0de49d0:	68a1      	ldr	r1, [r4, #8]
c0de49d2:	b329      	cbz	r1, c0de4a20 <nbgl_layoutAddCenteredInfo+0x1bc>
c0de49d4:	4641      	mov	r1, r8
c0de49d6:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de49da:	784c      	ldrb	r4, [r1, #1]
c0de49dc:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de49e0:	788d      	ldrb	r5, [r1, #2]
c0de49e2:	78c9      	ldrb	r1, [r1, #3]
c0de49e4:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de49e8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de49ec:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de49f0:	463a      	mov	r2, r7
c0de49f2:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de49f6:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de49fa:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de49fe:	0e0b      	lsrs	r3, r1, #24
c0de4a00:	70d3      	strb	r3, [r2, #3]
c0de4a02:	0c0b      	lsrs	r3, r1, #16
c0de4a04:	0a09      	lsrs	r1, r1, #8
c0de4a06:	7051      	strb	r1, [r2, #1]
c0de4a08:	2100      	movs	r1, #0
c0de4a0a:	7093      	strb	r3, [r2, #2]
c0de4a0c:	7211      	strb	r1, [r2, #8]
c0de4a0e:	2e03      	cmp	r6, #3
c0de4a10:	bf38      	it	cc
c0de4a12:	2101      	movcc	r1, #1
c0de4a14:	0089      	lsls	r1, r1, #2
c0de4a16:	71d1      	strb	r1, [r2, #7]
c0de4a18:	2108      	movs	r1, #8
c0de4a1a:	e00a      	b.n	c0de4a32 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4a1c:	f000 b9fe 	b.w	c0de4e1c <OUTLINED_FUNCTION_8>
c0de4a20:	6861      	ldr	r1, [r4, #4]
c0de4a22:	b119      	cbz	r1, c0de4a2c <nbgl_layoutAddCenteredInfo+0x1c8>
c0de4a24:	f000 f9f2 	bl	c0de4e0c <OUTLINED_FUNCTION_7>
c0de4a28:	2102      	movs	r1, #2
c0de4a2a:	e002      	b.n	c0de4a32 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4a2c:	f000 f9ee 	bl	c0de4e0c <OUTLINED_FUNCTION_7>
c0de4a30:	2105      	movs	r1, #5
c0de4a32:	7111      	strb	r1, [r2, #4]
c0de4a34:	4641      	mov	r1, r8
c0de4a36:	4458      	add	r0, fp
c0de4a38:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4a3c:	784c      	ldrb	r4, [r1, #1]
c0de4a3e:	788d      	ldrb	r5, [r1, #2]
c0de4a40:	78ce      	ldrb	r6, [r1, #3]
c0de4a42:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4a46:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4a4a:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4a4e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4a52:	9c04      	ldr	r4, [sp, #16]
c0de4a54:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de4a58:	1c5a      	adds	r2, r3, #1
c0de4a5a:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4a5e:	7e79      	ldrb	r1, [r7, #25]
c0de4a60:	7eba      	ldrb	r2, [r7, #26]
c0de4a62:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4a66:	eb00 0b01 	add.w	fp, r0, r1
c0de4a6a:	6860      	ldr	r0, [r4, #4]
c0de4a6c:	2800      	cmp	r0, #0
c0de4a6e:	d074      	beq.n	c0de4b5a <nbgl_layoutAddCenteredInfo+0x2f6>
c0de4a70:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4a74:	2004      	movs	r0, #4
c0de4a76:	f8cd a00c 	str.w	sl, [sp, #12]
c0de4a7a:	f001 fa29 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de4a7e:	2603      	movs	r6, #3
c0de4a80:	4607      	mov	r7, r0
c0de4a82:	77c6      	strb	r6, [r0, #31]
c0de4a84:	6860      	ldr	r0, [r4, #4]
c0de4a86:	f005 ff41 	bl	c0dea90c <pic>
c0de4a8a:	4601      	mov	r1, r0
c0de4a8c:	2000      	movs	r0, #0
c0de4a8e:	2301      	movs	r3, #1
c0de4a90:	7178      	strb	r0, [r7, #5]
c0de4a92:	2072      	movs	r0, #114	@ 0x72
c0de4a94:	0e0a      	lsrs	r2, r1, #24
c0de4a96:	7138      	strb	r0, [r7, #4]
c0de4a98:	200a      	movs	r0, #10
c0de4a9a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4a9e:	2005      	movs	r0, #5
c0de4aa0:	f887 0020 	strb.w	r0, [r7, #32]
c0de4aa4:	2001      	movs	r0, #1
c0de4aa6:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4aaa:	f000 f989 	bl	c0de4dc0 <OUTLINED_FUNCTION_2>
c0de4aae:	4682      	mov	sl, r0
c0de4ab0:	2804      	cmp	r0, #4
c0de4ab2:	d31c      	bcc.n	c0de4aee <nbgl_layoutAddCenteredInfo+0x28a>
c0de4ab4:	463d      	mov	r5, r7
c0de4ab6:	f04f 0c01 	mov.w	ip, #1
c0de4aba:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de4abe:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de4ac2:	786a      	ldrb	r2, [r5, #1]
c0de4ac4:	78ab      	ldrb	r3, [r5, #2]
c0de4ac6:	78ee      	ldrb	r6, [r5, #3]
c0de4ac8:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4acc:	ac05      	add	r4, sp, #20
c0de4ace:	e9cd 4c00 	strd	r4, ip, [sp]
c0de4ad2:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4ad6:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4ada:	2303      	movs	r3, #3
c0de4adc:	f000 f98a 	bl	c0de4df4 <OUTLINED_FUNCTION_4>
c0de4ae0:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de4ae4:	f04f 0a03 	mov.w	sl, #3
c0de4ae8:	7128      	strb	r0, [r5, #4]
c0de4aea:	0a00      	lsrs	r0, r0, #8
c0de4aec:	7168      	strb	r0, [r5, #5]
c0de4aee:	f000 f989 	bl	c0de4e04 <OUTLINED_FUNCTION_6>
c0de4af2:	4641      	mov	r1, r8
c0de4af4:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de4af8:	784c      	ldrb	r4, [r1, #1]
c0de4afa:	788d      	ldrb	r5, [r1, #2]
c0de4afc:	78ce      	ldrb	r6, [r1, #3]
c0de4afe:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de4b02:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4b06:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4b0a:	463d      	mov	r5, r7
c0de4b0c:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de4b10:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de4b14:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4b18:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4b1c:	0e26      	lsrs	r6, r4, #24
c0de4b1e:	70ee      	strb	r6, [r5, #3]
c0de4b20:	0c26      	lsrs	r6, r4, #16
c0de4b22:	0a24      	lsrs	r4, r4, #8
c0de4b24:	74fc      	strb	r4, [r7, #19]
c0de4b26:	70ae      	strb	r6, [r5, #2]
c0de4b28:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4b2c:	2302      	movs	r3, #2
c0de4b2e:	2400      	movs	r4, #0
c0de4b30:	3201      	adds	r2, #1
c0de4b32:	767b      	strb	r3, [r7, #25]
c0de4b34:	2308      	movs	r3, #8
c0de4b36:	76bc      	strb	r4, [r7, #26]
c0de4b38:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4b3c:	79c0      	ldrb	r0, [r0, #7]
c0de4b3e:	75bb      	strb	r3, [r7, #22]
c0de4b40:	fb0a f300 	mul.w	r3, sl, r0
c0de4b44:	fb0a b000 	mla	r0, sl, r0, fp
c0de4b48:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de4b4c:	71bb      	strb	r3, [r7, #6]
c0de4b4e:	0a1b      	lsrs	r3, r3, #8
c0de4b50:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4b54:	f100 0b02 	add.w	fp, r0, #2
c0de4b58:	71fb      	strb	r3, [r7, #7]
c0de4b5a:	7b20      	ldrb	r0, [r4, #12]
c0de4b5c:	2102      	movs	r1, #2
c0de4b5e:	2800      	cmp	r0, #0
c0de4b60:	bf08      	it	eq
c0de4b62:	2105      	moveq	r1, #5
c0de4b64:	f888 1016 	strb.w	r1, [r8, #22]
c0de4b68:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de4b6c:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de4b70:	2272      	movs	r2, #114	@ 0x72
c0de4b72:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4b76:	2000      	movs	r0, #0
c0de4b78:	f888 2004 	strb.w	r2, [r8, #4]
c0de4b7c:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de4b80:	3101      	adds	r1, #1
c0de4b82:	f888 b006 	strb.w	fp, [r8, #6]
c0de4b86:	f888 0019 	strb.w	r0, [r8, #25]
c0de4b8a:	f888 001a 	strb.w	r0, [r8, #26]
c0de4b8e:	f888 0005 	strb.w	r0, [r8, #5]
c0de4b92:	f888 001f 	strb.w	r0, [r8, #31]
c0de4b96:	f888 2007 	strb.w	r2, [r8, #7]
c0de4b9a:	f88a 1002 	strb.w	r1, [sl, #2]
c0de4b9e:	b006      	add	sp, #24
c0de4ba0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4ba4 <nbgl_layoutAddSwitch>:
c0de4ba4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4ba8:	2800      	cmp	r0, #0
c0de4baa:	d077      	beq.n	c0de4c9c <nbgl_layoutAddSwitch+0xf8>
c0de4bac:	468b      	mov	fp, r1
c0de4bae:	7841      	ldrb	r1, [r0, #1]
c0de4bb0:	4604      	mov	r4, r0
c0de4bb2:	f000 f924 	bl	c0de4dfe <OUTLINED_FUNCTION_5>
c0de4bb6:	f04f 0a03 	mov.w	sl, #3
c0de4bba:	4606      	mov	r6, r0
c0de4bbc:	f880 a01f 	strb.w	sl, [r0, #31]
c0de4bc0:	f8db 0000 	ldr.w	r0, [fp]
c0de4bc4:	f005 fea2 	bl	c0dea90c <pic>
c0de4bc8:	4601      	mov	r1, r0
c0de4bca:	2072      	movs	r0, #114	@ 0x72
c0de4bcc:	2500      	movs	r5, #0
c0de4bce:	f04f 0805 	mov.w	r8, #5
c0de4bd2:	2301      	movs	r3, #1
c0de4bd4:	7130      	strb	r0, [r6, #4]
c0de4bd6:	2008      	movs	r0, #8
c0de4bd8:	0e0a      	lsrs	r2, r1, #24
c0de4bda:	7175      	strb	r5, [r6, #5]
c0de4bdc:	f886 8020 	strb.w	r8, [r6, #32]
c0de4be0:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de4be4:	2001      	movs	r0, #1
c0de4be6:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de4bea:	4630      	mov	r0, r6
c0de4bec:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4bf0:	70c2      	strb	r2, [r0, #3]
c0de4bf2:	0c0a      	lsrs	r2, r1, #16
c0de4bf4:	7082      	strb	r2, [r0, #2]
c0de4bf6:	0a08      	lsrs	r0, r1, #8
c0de4bf8:	2272      	movs	r2, #114	@ 0x72
c0de4bfa:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4bfe:	2008      	movs	r0, #8
c0de4c00:	f7ff f9ba 	bl	c0de3f78 <nbgl_getTextNbLinesInWidth>
c0de4c04:	2801      	cmp	r0, #1
c0de4c06:	d849      	bhi.n	c0de4c9c <nbgl_layoutAddSwitch+0xf8>
c0de4c08:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4c0c:	f7ff f84d 	bl	c0de3caa <nbgl_getFontLineHeight>
c0de4c10:	6862      	ldr	r2, [r4, #4]
c0de4c12:	78a3      	ldrb	r3, [r4, #2]
c0de4c14:	7861      	ldrb	r1, [r4, #1]
c0de4c16:	76b5      	strb	r5, [r6, #26]
c0de4c18:	71f5      	strb	r5, [r6, #7]
c0de4c1a:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4c1e:	71b0      	strb	r0, [r6, #6]
c0de4c20:	2002      	movs	r0, #2
c0de4c22:	f886 a019 	strb.w	sl, [r6, #25]
c0de4c26:	75b0      	strb	r0, [r6, #22]
c0de4c28:	1c58      	adds	r0, r3, #1
c0de4c2a:	70a0      	strb	r0, [r4, #2]
c0de4c2c:	f000 f8e7 	bl	c0de4dfe <OUTLINED_FUNCTION_5>
c0de4c30:	4607      	mov	r7, r0
c0de4c32:	f880 a01f 	strb.w	sl, [r0, #31]
c0de4c36:	f8db 0004 	ldr.w	r0, [fp, #4]
c0de4c3a:	2672      	movs	r6, #114	@ 0x72
c0de4c3c:	f005 fe66 	bl	c0dea90c <pic>
c0de4c40:	717d      	strb	r5, [r7, #5]
c0de4c42:	463d      	mov	r5, r7
c0de4c44:	210a      	movs	r1, #10
c0de4c46:	713e      	strb	r6, [r7, #4]
c0de4c48:	f887 8020 	strb.w	r8, [r7, #32]
c0de4c4c:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de4c50:	f805 0f26 	strb.w	r0, [r5, #38]!
c0de4c54:	0e01      	lsrs	r1, r0, #24
c0de4c56:	70e9      	strb	r1, [r5, #3]
c0de4c58:	0c01      	lsrs	r1, r0, #16
c0de4c5a:	0a00      	lsrs	r0, r0, #8
c0de4c5c:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de4c60:	200a      	movs	r0, #10
c0de4c62:	70a9      	strb	r1, [r5, #2]
c0de4c64:	f7ff f821 	bl	c0de3caa <nbgl_getFontLineHeight>
c0de4c68:	2101      	movs	r1, #1
c0de4c6a:	782a      	ldrb	r2, [r5, #0]
c0de4c6c:	78ab      	ldrb	r3, [r5, #2]
c0de4c6e:	78ed      	ldrb	r5, [r5, #3]
c0de4c70:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de4c74:	09c1      	lsrs	r1, r0, #7
c0de4c76:	0040      	lsls	r0, r0, #1
c0de4c78:	71f9      	strb	r1, [r7, #7]
c0de4c7a:	f897 1027 	ldrb.w	r1, [r7, #39]	@ 0x27
c0de4c7e:	71b8      	strb	r0, [r7, #6]
c0de4c80:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4c84:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4c88:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de4c8c:	2301      	movs	r3, #1
c0de4c8e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4c92:	2272      	movs	r2, #114	@ 0x72
c0de4c94:	f7ff f970 	bl	c0de3f78 <nbgl_getTextNbLinesInWidth>
c0de4c98:	2802      	cmp	r0, #2
c0de4c9a:	d904      	bls.n	c0de4ca6 <nbgl_layoutAddSwitch+0x102>
c0de4c9c:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de4ca0:	4630      	mov	r0, r6
c0de4ca2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4ca6:	6860      	ldr	r0, [r4, #4]
c0de4ca8:	78a2      	ldrb	r2, [r4, #2]
c0de4caa:	7861      	ldrb	r1, [r4, #1]
c0de4cac:	2501      	movs	r5, #1
c0de4cae:	2600      	movs	r6, #0
c0de4cb0:	76be      	strb	r6, [r7, #26]
c0de4cb2:	f840 7022 	str.w	r7, [r0, r2, lsl #2]
c0de4cb6:	2005      	movs	r0, #5
c0de4cb8:	767d      	strb	r5, [r7, #25]
c0de4cba:	75b8      	strb	r0, [r7, #22]
c0de4cbc:	1c50      	adds	r0, r2, #1
c0de4cbe:	70a0      	strb	r0, [r4, #2]
c0de4cc0:	2005      	movs	r0, #5
c0de4cc2:	f001 f905 	bl	c0de5ed0 <nbgl_objPoolGet>
c0de4cc6:	f04f 0a03 	mov.w	sl, #3
c0de4cca:	f04f 0808 	mov.w	r8, #8
c0de4cce:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de4cd2:	f880 5022 	strb.w	r5, [r0, #34]	@ 0x22
c0de4cd6:	4607      	mov	r7, r0
c0de4cd8:	f880 a020 	strb.w	sl, [r0, #32]
c0de4cdc:	f880 a01f 	strb.w	sl, [r0, #31]
c0de4ce0:	f880 8023 	strb.w	r8, [r0, #35]	@ 0x23
c0de4ce4:	f89b 0008 	ldrb.w	r0, [fp, #8]
c0de4ce8:	4a1e      	ldr	r2, [pc, #120]	@ (c0de4d64 <nbgl_layoutAddSwitch+0x1c0>)
c0de4cea:	491f      	ldr	r1, [pc, #124]	@ (c0de4d68 <nbgl_layoutAddSwitch+0x1c4>)
c0de4cec:	2801      	cmp	r0, #1
c0de4cee:	447a      	add	r2, pc
c0de4cf0:	4479      	add	r1, pc
c0de4cf2:	bf08      	it	eq
c0de4cf4:	4611      	moveq	r1, r2
c0de4cf6:	463a      	mov	r2, r7
c0de4cf8:	0e0b      	lsrs	r3, r1, #24
c0de4cfa:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de4cfe:	70d3      	strb	r3, [r2, #3]
c0de4d00:	0c0b      	lsrs	r3, r1, #16
c0de4d02:	7093      	strb	r3, [r2, #2]
c0de4d04:	0a0a      	lsrs	r2, r1, #8
c0de4d06:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4d0a:	2801      	cmp	r0, #1
c0de4d0c:	4638      	mov	r0, r7
c0de4d0e:	4a17      	ldr	r2, [pc, #92]	@ (c0de4d6c <nbgl_layoutAddSwitch+0x1c8>)
c0de4d10:	4d17      	ldr	r5, [pc, #92]	@ (c0de4d70 <nbgl_layoutAddSwitch+0x1cc>)
c0de4d12:	447a      	add	r2, pc
c0de4d14:	447d      	add	r5, pc
c0de4d16:	bf18      	it	ne
c0de4d18:	462a      	movne	r2, r5
c0de4d1a:	f800 2f2d 	strb.w	r2, [r0, #45]!
c0de4d1e:	0e13      	lsrs	r3, r2, #24
c0de4d20:	70c3      	strb	r3, [r0, #3]
c0de4d22:	0c13      	lsrs	r3, r2, #16
c0de4d24:	7083      	strb	r3, [r0, #2]
c0de4d26:	0a10      	lsrs	r0, r2, #8
c0de4d28:	f887 002e 	strb.w	r0, [r7, #46]	@ 0x2e
c0de4d2c:	2008      	movs	r0, #8
c0de4d2e:	f7fe ff9a 	bl	c0de3c66 <nbgl_getTextWidth>
c0de4d32:	6861      	ldr	r1, [r4, #4]
c0de4d34:	78a2      	ldrb	r2, [r4, #2]
c0de4d36:	786b      	ldrb	r3, [r5, #1]
c0de4d38:	76be      	strb	r6, [r7, #26]
c0de4d3a:	71fe      	strb	r6, [r7, #7]
c0de4d3c:	f887 8016 	strb.w	r8, [r7, #22]
c0de4d40:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de4d44:	210c      	movs	r1, #12
c0de4d46:	f887 a019 	strb.w	sl, [r7, #25]
c0de4d4a:	71b9      	strb	r1, [r7, #6]
c0de4d4c:	7829      	ldrb	r1, [r5, #0]
c0de4d4e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4d52:	4408      	add	r0, r1
c0de4d54:	1c51      	adds	r1, r2, #1
c0de4d56:	300a      	adds	r0, #10
c0de4d58:	7138      	strb	r0, [r7, #4]
c0de4d5a:	0a00      	lsrs	r0, r0, #8
c0de4d5c:	70a1      	strb	r1, [r4, #2]
c0de4d5e:	7178      	strb	r0, [r7, #5]
c0de4d60:	e79e      	b.n	c0de4ca0 <nbgl_layoutAddSwitch+0xfc>
c0de4d62:	bf00      	nop
c0de4d64:	00006821 	.word	0x00006821
c0de4d68:	000068f4 	.word	0x000068f4
c0de4d6c:	00006593 	.word	0x00006593
c0de4d70:	0000657b 	.word	0x0000657b

c0de4d74 <nbgl_layoutDraw>:
c0de4d74:	b120      	cbz	r0, c0de4d80 <nbgl_layoutDraw+0xc>
c0de4d76:	b580      	push	{r7, lr}
c0de4d78:	f001 f960 	bl	c0de603c <nbgl_screenRedraw>
c0de4d7c:	2000      	movs	r0, #0
c0de4d7e:	bd80      	pop	{r7, pc}
c0de4d80:	f000 b84c 	b.w	c0de4e1c <OUTLINED_FUNCTION_8>

c0de4d84 <nbgl_layoutRelease>:
c0de4d84:	b148      	cbz	r0, c0de4d9a <nbgl_layoutRelease+0x16>
c0de4d86:	b510      	push	{r4, lr}
c0de4d88:	4604      	mov	r4, r0
c0de4d8a:	7800      	ldrb	r0, [r0, #0]
c0de4d8c:	b110      	cbz	r0, c0de4d94 <nbgl_layoutRelease+0x10>
c0de4d8e:	7860      	ldrb	r0, [r4, #1]
c0de4d90:	f001 faae 	bl	c0de62f0 <nbgl_screenPop>
c0de4d94:	2000      	movs	r0, #0
c0de4d96:	70a0      	strb	r0, [r4, #2]
c0de4d98:	bd10      	pop	{r4, pc}
c0de4d9a:	f000 b83f 	b.w	c0de4e1c <OUTLINED_FUNCTION_8>

c0de4d9e <OUTLINED_FUNCTION_1>:
c0de4d9e:	71b8      	strb	r0, [r7, #6]
c0de4da0:	2008      	movs	r0, #8
c0de4da2:	0e0a      	lsrs	r2, r1, #24
c0de4da4:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de4da8:	4638      	mov	r0, r7
c0de4daa:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de4dae:	70c2      	strb	r2, [r0, #3]
c0de4db0:	0c0a      	lsrs	r2, r1, #16
c0de4db2:	7082      	strb	r2, [r0, #2]
c0de4db4:	0a08      	lsrs	r0, r1, #8
c0de4db6:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4dba:	2008      	movs	r0, #8
c0de4dbc:	f7fe bf53 	b.w	c0de3c66 <nbgl_getTextWidth>

c0de4dc0 <OUTLINED_FUNCTION_2>:
c0de4dc0:	4638      	mov	r0, r7
c0de4dc2:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4dc6:	70c2      	strb	r2, [r0, #3]
c0de4dc8:	0c0a      	lsrs	r2, r1, #16
c0de4dca:	7082      	strb	r2, [r0, #2]
c0de4dcc:	0a08      	lsrs	r0, r1, #8
c0de4dce:	2272      	movs	r2, #114	@ 0x72
c0de4dd0:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de4dd4:	200a      	movs	r0, #10
c0de4dd6:	f7ff b8cf 	b.w	c0de3f78 <nbgl_getTextNbLinesInWidth>

c0de4dda <OUTLINED_FUNCTION_3>:
c0de4dda:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4dde:	784b      	ldrb	r3, [r1, #1]
c0de4de0:	788d      	ldrb	r5, [r1, #2]
c0de4de2:	78c9      	ldrb	r1, [r1, #3]
c0de4de4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4de8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4dec:	9d05      	ldr	r5, [sp, #20]
c0de4dee:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4df2:	4770      	bx	lr

c0de4df4 <OUTLINED_FUNCTION_4>:
c0de4df4:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4df8:	2272      	movs	r2, #114	@ 0x72
c0de4dfa:	f7fe bfe9 	b.w	c0de3dd0 <nbgl_getTextMaxLenInNbLines>

c0de4dfe <OUTLINED_FUNCTION_5>:
c0de4dfe:	2004      	movs	r0, #4
c0de4e00:	f001 b866 	b.w	c0de5ed0 <nbgl_objPoolGet>

c0de4e04 <OUTLINED_FUNCTION_6>:
c0de4e04:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4e08:	f7fe be93 	b.w	c0de3b32 <nbgl_getFont>

c0de4e0c <OUTLINED_FUNCTION_7>:
c0de4e0c:	2100      	movs	r1, #0
c0de4e0e:	463a      	mov	r2, r7
c0de4e10:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4e14:	70d1      	strb	r1, [r2, #3]
c0de4e16:	7091      	strb	r1, [r2, #2]
c0de4e18:	7051      	strb	r1, [r2, #1]
c0de4e1a:	4770      	bx	lr

c0de4e1c <OUTLINED_FUNCTION_8>:
c0de4e1c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4e20:	4770      	bx	lr

c0de4e22 <OUTLINED_FUNCTION_9>:
c0de4e22:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4e26:	2003      	movs	r0, #3
c0de4e28:	f887 0020 	strb.w	r0, [r7, #32]
c0de4e2c:	77f8      	strb	r0, [r7, #31]
c0de4e2e:	4770      	bx	lr

c0de4e30 <nbgl_objDraw>:
c0de4e30:	b570      	push	{r4, r5, r6, lr}
c0de4e32:	7ec1      	ldrb	r1, [r0, #27]
c0de4e34:	4602      	mov	r2, r0
c0de4e36:	b191      	cbz	r1, c0de4e5e <nbgl_objDraw+0x2e>
c0de4e38:	4603      	mov	r3, r0
c0de4e3a:	461a      	mov	r2, r3
c0de4e3c:	f813 4f0e 	ldrb.w	r4, [r3, #14]!
c0de4e40:	785d      	ldrb	r5, [r3, #1]
c0de4e42:	789e      	ldrb	r6, [r3, #2]
c0de4e44:	78db      	ldrb	r3, [r3, #3]
c0de4e46:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4e4a:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de4e4e:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de4e52:	2b00      	cmp	r3, #0
c0de4e54:	d1f1      	bne.n	c0de4e3a <nbgl_objDraw+0xa>
c0de4e56:	7ed3      	ldrb	r3, [r2, #27]
c0de4e58:	b10b      	cbz	r3, c0de4e5e <nbgl_objDraw+0x2e>
c0de4e5a:	2201      	movs	r2, #1
c0de4e5c:	e004      	b.n	c0de4e68 <nbgl_objDraw+0x38>
c0de4e5e:	f892 203f 	ldrb.w	r2, [r2, #63]	@ 0x3f
c0de4e62:	2a00      	cmp	r2, #0
c0de4e64:	bf18      	it	ne
c0de4e66:	2201      	movne	r2, #1
c0de4e68:	4b06      	ldr	r3, [pc, #24]	@ (c0de4e84 <nbgl_objDraw+0x54>)
c0de4e6a:	f819 3003 	ldrb.w	r3, [r9, r3]
c0de4e6e:	b10b      	cbz	r3, c0de4e74 <nbgl_objDraw+0x44>
c0de4e70:	b902      	cbnz	r2, c0de4e74 <nbgl_objDraw+0x44>
c0de4e72:	bd70      	pop	{r4, r5, r6, pc}
c0de4e74:	fab1 f181 	clz	r1, r1
c0de4e78:	094a      	lsrs	r2, r1, #5
c0de4e7a:	2100      	movs	r1, #0
c0de4e7c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4e80:	f000 b802 	b.w	c0de4e88 <draw_obj_and_chidren>
c0de4e84:	00000428 	.word	0x00000428

c0de4e88 <draw_obj_and_chidren>:
c0de4e88:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e8c:	4604      	mov	r4, r0
c0de4e8e:	7ec0      	ldrb	r0, [r0, #27]
c0de4e90:	2810      	cmp	r0, #16
c0de4e92:	f200 80a9 	bhi.w	c0de4fe8 <draw_obj_and_chidren+0x160>
c0de4e96:	460e      	mov	r6, r1
c0de4e98:	4954      	ldr	r1, [pc, #336]	@ (c0de4fec <draw_obj_and_chidren+0x164>)
c0de4e9a:	40c1      	lsrs	r1, r0
c0de4e9c:	07c9      	lsls	r1, r1, #31
c0de4e9e:	d167      	bne.n	c0de4f70 <draw_obj_and_chidren+0xe8>
c0de4ea0:	4954      	ldr	r1, [pc, #336]	@ (c0de4ff4 <draw_obj_and_chidren+0x16c>)
c0de4ea2:	4615      	mov	r5, r2
c0de4ea4:	4479      	add	r1, pc
c0de4ea6:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de4eaa:	f005 fd2f 	bl	c0dea90c <pic>
c0de4eae:	4603      	mov	r3, r0
c0de4eb0:	4620      	mov	r0, r4
c0de4eb2:	4631      	mov	r1, r6
c0de4eb4:	462a      	mov	r2, r5
c0de4eb6:	4798      	blx	r3
c0de4eb8:	f8df c134 	ldr.w	ip, [pc, #308]	@ c0de4ff0 <draw_obj_and_chidren+0x168>
c0de4ebc:	f994 3001 	ldrsb.w	r3, [r4, #1]
c0de4ec0:	7827      	ldrb	r7, [r4, #0]
c0de4ec2:	eb09 050c 	add.w	r5, r9, ip
c0de4ec6:	f939 100c 	ldrsh.w	r1, [r9, ip]
c0de4eca:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
c0de4ece:	88ae      	ldrh	r6, [r5, #4]
c0de4ed0:	1872      	adds	r2, r6, r1
c0de4ed2:	428f      	cmp	r7, r1
c0de4ed4:	da07      	bge.n	c0de4ee6 <draw_obj_and_chidren+0x5e>
c0de4ed6:	ea27 71e7 	bic.w	r1, r7, r7, asr #31
c0de4eda:	f829 100c 	strh.w	r1, [r9, ip]
c0de4ede:	7823      	ldrb	r3, [r4, #0]
c0de4ee0:	7867      	ldrb	r7, [r4, #1]
c0de4ee2:	ea43 2707 	orr.w	r7, r3, r7, lsl #8
c0de4ee6:	f9b5 3002 	ldrsh.w	r3, [r5, #2]
c0de4eea:	f8b5 e006 	ldrh.w	lr, [r5, #6]
c0de4eee:	7920      	ldrb	r0, [r4, #4]
c0de4ef0:	7965      	ldrb	r5, [r4, #5]
c0de4ef2:	b23f      	sxth	r7, r7
c0de4ef4:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de4ef8:	4407      	add	r7, r0
c0de4efa:	b210      	sxth	r0, r2
c0de4efc:	4287      	cmp	r7, r0
c0de4efe:	dc00      	bgt.n	c0de4f02 <draw_obj_and_chidren+0x7a>
c0de4f00:	b91e      	cbnz	r6, c0de4f0a <draw_obj_and_chidren+0x82>
c0de4f02:	2f80      	cmp	r7, #128	@ 0x80
c0de4f04:	bfa8      	it	ge
c0de4f06:	2780      	movge	r7, #128	@ 0x80
c0de4f08:	463a      	mov	r2, r7
c0de4f0a:	f994 0003 	ldrsb.w	r0, [r4, #3]
c0de4f0e:	78a5      	ldrb	r5, [r4, #2]
c0de4f10:	eb0e 0603 	add.w	r6, lr, r3
c0de4f14:	ea45 2700 	orr.w	r7, r5, r0, lsl #8
c0de4f18:	429f      	cmp	r7, r3
c0de4f1a:	da08      	bge.n	c0de4f2e <draw_obj_and_chidren+0xa6>
c0de4f1c:	eb09 000c 	add.w	r0, r9, ip
c0de4f20:	ea27 73e7 	bic.w	r3, r7, r7, asr #31
c0de4f24:	8043      	strh	r3, [r0, #2]
c0de4f26:	78a0      	ldrb	r0, [r4, #2]
c0de4f28:	78e5      	ldrb	r5, [r4, #3]
c0de4f2a:	ea40 2705 	orr.w	r7, r0, r5, lsl #8
c0de4f2e:	b238      	sxth	r0, r7
c0de4f30:	79a5      	ldrb	r5, [r4, #6]
c0de4f32:	79e7      	ldrb	r7, [r4, #7]
c0de4f34:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
c0de4f38:	182f      	adds	r7, r5, r0
c0de4f3a:	b230      	sxth	r0, r6
c0de4f3c:	4287      	cmp	r7, r0
c0de4f3e:	dc02      	bgt.n	c0de4f46 <draw_obj_and_chidren+0xbe>
c0de4f40:	f1be 0f00 	cmp.w	lr, #0
c0de4f44:	d103      	bne.n	c0de4f4e <draw_obj_and_chidren+0xc6>
c0de4f46:	2f40      	cmp	r7, #64	@ 0x40
c0de4f48:	bfa8      	it	ge
c0de4f4a:	2740      	movge	r7, #64	@ 0x40
c0de4f4c:	463e      	mov	r6, r7
c0de4f4e:	eb09 000c 	add.w	r0, r9, ip
c0de4f52:	1a51      	subs	r1, r2, r1
c0de4f54:	8081      	strh	r1, [r0, #4]
c0de4f56:	b231      	sxth	r1, r6
c0de4f58:	2940      	cmp	r1, #64	@ 0x40
c0de4f5a:	bfa8      	it	ge
c0de4f5c:	2640      	movge	r6, #64	@ 0x40
c0de4f5e:	1af1      	subs	r1, r6, r3
c0de4f60:	80c1      	strh	r1, [r0, #6]
c0de4f62:	7a40      	ldrb	r0, [r0, #9]
c0de4f64:	7a61      	ldrb	r1, [r4, #9]
c0de4f66:	4281      	cmp	r1, r0
c0de4f68:	bf84      	itt	hi
c0de4f6a:	eb09 000c 	addhi.w	r0, r9, ip
c0de4f6e:	7241      	strbhi	r1, [r0, #9]
c0de4f70:	7ee0      	ldrb	r0, [r4, #27]
c0de4f72:	2801      	cmp	r0, #1
c0de4f74:	d838      	bhi.n	c0de4fe8 <draw_obj_and_chidren+0x160>
c0de4f76:	4620      	mov	r0, r4
c0de4f78:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4f7c:	f000 ff05 	bl	c0de5d8a <OUTLINED_FUNCTION_1>
c0de4f80:	b390      	cbz	r0, c0de4fe8 <draw_obj_and_chidren+0x160>
c0de4f82:	2700      	movs	r7, #0
c0de4f84:	ea4f 6814 	mov.w	r8, r4, lsr #24
c0de4f88:	ea4f 4a14 	mov.w	sl, r4, lsr #16
c0de4f8c:	ea4f 2b14 	mov.w	fp, r4, lsr #8
c0de4f90:	2500      	movs	r5, #0
c0de4f92:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de4f96:	4287      	cmp	r7, r0
c0de4f98:	d226      	bcs.n	c0de4fe8 <draw_obj_and_chidren+0x160>
c0de4f9a:	4620      	mov	r0, r4
c0de4f9c:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4fa0:	f000 fef3 	bl	c0de5d8a <OUTLINED_FUNCTION_1>
c0de4fa4:	f850 6027 	ldr.w	r6, [r0, r7, lsl #2]
c0de4fa8:	b1e6      	cbz	r6, c0de4fe4 <draw_obj_and_chidren+0x15c>
c0de4faa:	4630      	mov	r0, r6
c0de4fac:	4629      	mov	r1, r5
c0de4fae:	2201      	movs	r2, #1
c0de4fb0:	f886 b00f 	strb.w	fp, [r6, #15]
c0de4fb4:	f800 4f0e 	strb.w	r4, [r0, #14]!
c0de4fb8:	f880 8003 	strb.w	r8, [r0, #3]
c0de4fbc:	f880 a002 	strb.w	sl, [r0, #2]
c0de4fc0:	4630      	mov	r0, r6
c0de4fc2:	f7ff ff61 	bl	c0de4e88 <draw_obj_and_chidren>
c0de4fc6:	4631      	mov	r1, r6
c0de4fc8:	7cf0      	ldrb	r0, [r6, #19]
c0de4fca:	f811 2f12 	ldrb.w	r2, [r1, #18]!
c0de4fce:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4fd2:	788a      	ldrb	r2, [r1, #2]
c0de4fd4:	78c9      	ldrb	r1, [r1, #3]
c0de4fd6:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4fda:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4fde:	2800      	cmp	r0, #0
c0de4fe0:	bf08      	it	eq
c0de4fe2:	4635      	moveq	r5, r6
c0de4fe4:	3701      	adds	r7, #1
c0de4fe6:	e7d4      	b.n	c0de4f92 <draw_obj_and_chidren+0x10a>
c0de4fe8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4fec:	00013ec8 	.word	0x00013ec8
c0de4ff0:	0000042a 	.word	0x0000042a
c0de4ff4:	00007748 	.word	0x00007748

c0de4ff8 <nbgl_refresh>:
c0de4ff8:	2002      	movs	r0, #2
c0de4ffa:	f000 b801 	b.w	c0de5000 <nbgl_refreshSpecial>
	...

c0de5000 <nbgl_refreshSpecial>:
c0de5000:	b570      	push	{r4, r5, r6, lr}
c0de5002:	4d0d      	ldr	r5, [pc, #52]	@ (c0de5038 <nbgl_refreshSpecial+0x38>)
c0de5004:	4601      	mov	r1, r0
c0de5006:	eb09 0005 	add.w	r0, r9, r5
c0de500a:	8880      	ldrh	r0, [r0, #4]
c0de500c:	b198      	cbz	r0, c0de5036 <nbgl_refreshSpecial+0x36>
c0de500e:	eb09 0005 	add.w	r0, r9, r5
c0de5012:	88c0      	ldrh	r0, [r0, #6]
c0de5014:	b178      	cbz	r0, c0de5036 <nbgl_refreshSpecial+0x36>
c0de5016:	eb09 0405 	add.w	r4, r9, r5
c0de501a:	2200      	movs	r2, #0
c0de501c:	2600      	movs	r6, #0
c0de501e:	4620      	mov	r0, r4
c0de5020:	f005 fcda 	bl	c0dea9d8 <nbgl_frontRefreshArea>
c0de5024:	207f      	movs	r0, #127	@ 0x7f
c0de5026:	80a6      	strh	r6, [r4, #4]
c0de5028:	80e6      	strh	r6, [r4, #6]
c0de502a:	f829 0005 	strh.w	r0, [r9, r5]
c0de502e:	2001      	movs	r0, #1
c0de5030:	7260      	strb	r0, [r4, #9]
c0de5032:	203f      	movs	r0, #63	@ 0x3f
c0de5034:	8060      	strh	r0, [r4, #2]
c0de5036:	bd70      	pop	{r4, r5, r6, pc}
c0de5038:	0000042a 	.word	0x0000042a

c0de503c <nbgl_objInit>:
c0de503c:	4801      	ldr	r0, [pc, #4]	@ (c0de5044 <nbgl_objInit+0x8>)
c0de503e:	f000 bee8 	b.w	c0de5e12 <OUTLINED_FUNCTION_6>
c0de5042:	bf00      	nop
c0de5044:	0000042a 	.word	0x0000042a

c0de5048 <nbgl_objAllowDrawing>:
c0de5048:	4902      	ldr	r1, [pc, #8]	@ (c0de5054 <nbgl_objAllowDrawing+0xc>)
c0de504a:	f080 0001 	eor.w	r0, r0, #1
c0de504e:	f809 0001 	strb.w	r0, [r9, r1]
c0de5052:	4770      	bx	lr
c0de5054:	00000428 	.word	0x00000428

c0de5058 <draw_screen>:
c0de5058:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de505a:	7a01      	ldrb	r1, [r0, #8]
c0de505c:	7842      	ldrb	r2, [r0, #1]
c0de505e:	7883      	ldrb	r3, [r0, #2]
c0de5060:	78c4      	ldrb	r4, [r0, #3]
c0de5062:	f88d 100c 	strb.w	r1, [sp, #12]
c0de5066:	7801      	ldrb	r1, [r0, #0]
c0de5068:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de506c:	7902      	ldrb	r2, [r0, #4]
c0de506e:	f8ad 1004 	strh.w	r1, [sp, #4]
c0de5072:	ea43 2104 	orr.w	r1, r3, r4, lsl #8
c0de5076:	f8ad 1006 	strh.w	r1, [sp, #6]
c0de507a:	7941      	ldrb	r1, [r0, #5]
c0de507c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de5080:	f8ad 1008 	strh.w	r1, [sp, #8]
c0de5084:	79c1      	ldrb	r1, [r0, #7]
c0de5086:	7980      	ldrb	r0, [r0, #6]
c0de5088:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de508c:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de5090:	a801      	add	r0, sp, #4
c0de5092:	f005 fc6b 	bl	c0dea96c <nbgl_frontDrawRect>
c0de5096:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de5098 <draw_container>:
c0de5098:	b570      	push	{r4, r5, r6, lr}
c0de509a:	4604      	mov	r4, r0
c0de509c:	b10a      	cbz	r2, c0de50a2 <draw_container+0xa>
c0de509e:	f000 fed5 	bl	c0de5e4c <OUTLINED_FUNCTION_9>
c0de50a2:	f000 fee6 	bl	c0de5e72 <OUTLINED_FUNCTION_12>
c0de50a6:	7cc6      	ldrb	r6, [r0, #19]
c0de50a8:	f000 fedb 	bl	c0de5e62 <OUTLINED_FUNCTION_11>
c0de50ac:	7a09      	ldrb	r1, [r1, #8]
c0de50ae:	f800 1c06 	strb.w	r1, [r0, #-6]
c0de50b2:	d004      	beq.n	c0de50be <draw_container+0x26>
c0de50b4:	4620      	mov	r0, r4
c0de50b6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de50ba:	f005 bc57 	b.w	c0dea96c <nbgl_frontDrawRect>
c0de50be:	bd70      	pop	{r4, r5, r6, pc}

c0de50c0 <draw_image>:
c0de50c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de50c2:	460e      	mov	r6, r1
c0de50c4:	4604      	mov	r4, r0
c0de50c6:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de50ca:	4617      	mov	r7, r2
c0de50cc:	f000 fe53 	bl	c0de5d76 <OUTLINED_FUNCTION_0>
c0de50d0:	b35d      	cbz	r5, c0de512a <draw_image+0x6a>
c0de50d2:	7828      	ldrb	r0, [r5, #0]
c0de50d4:	78aa      	ldrb	r2, [r5, #2]
c0de50d6:	7869      	ldrb	r1, [r5, #1]
c0de50d8:	78eb      	ldrb	r3, [r5, #3]
c0de50da:	7120      	strb	r0, [r4, #4]
c0de50dc:	71a2      	strb	r2, [r4, #6]
c0de50de:	7161      	strb	r1, [r4, #5]
c0de50e0:	71e3      	strb	r3, [r4, #7]
c0de50e2:	7928      	ldrb	r0, [r5, #4]
c0de50e4:	7260      	strb	r0, [r4, #9]
c0de50e6:	b127      	cbz	r7, c0de50f2 <draw_image+0x32>
c0de50e8:	4620      	mov	r0, r4
c0de50ea:	4631      	mov	r1, r6
c0de50ec:	f000 fb8c 	bl	c0de5808 <compute_position>
c0de50f0:	7a60      	ldrb	r0, [r4, #9]
c0de50f2:	4621      	mov	r1, r4
c0de50f4:	2801      	cmp	r0, #1
c0de50f6:	4620      	mov	r0, r4
c0de50f8:	f811 2f0e 	ldrb.w	r2, [r1, #14]!
c0de50fc:	784b      	ldrb	r3, [r1, #1]
c0de50fe:	788e      	ldrb	r6, [r1, #2]
c0de5100:	78cf      	ldrb	r7, [r1, #3]
c0de5102:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5106:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de510a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de510e:	462b      	mov	r3, r5
c0de5110:	7a12      	ldrb	r2, [r2, #8]
c0de5112:	f801 2c06 	strb.w	r2, [r1, #-6]
c0de5116:	bf14      	ite	ne
c0de5118:	7fe2      	ldrbne	r2, [r4, #31]
c0de511a:	22e4      	moveq	r2, #228	@ 0xe4
c0de511c:	f894 1020 	ldrb.w	r1, [r4, #32]
c0de5120:	b001      	add	sp, #4
c0de5122:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5126:	f7fe bbeb 	b.w	c0de3900 <nbgl_drawIcon>
c0de512a:	4620      	mov	r0, r4
c0de512c:	f810 1f25 	ldrb.w	r1, [r0, #37]!
c0de5130:	f000 fe48 	bl	c0de5dc4 <OUTLINED_FUNCTION_3>
c0de5134:	d005      	beq.n	c0de5142 <draw_image+0x82>
c0de5136:	f894 0029 	ldrb.w	r0, [r4, #41]	@ 0x29
c0de513a:	4788      	blx	r1
c0de513c:	4605      	mov	r5, r0
c0de513e:	2800      	cmp	r0, #0
c0de5140:	d1c7      	bne.n	c0de50d2 <draw_image+0x12>
c0de5142:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de5144 <draw_textArea>:
c0de5144:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5148:	b086      	sub	sp, #24
c0de514a:	f890 6022 	ldrb.w	r6, [r0, #34]	@ 0x22
c0de514e:	4604      	mov	r4, r0
c0de5150:	b10a      	cbz	r2, c0de5156 <draw_textArea+0x12>
c0de5152:	f000 fe7b 	bl	c0de5e4c <OUTLINED_FUNCTION_9>
c0de5156:	4620      	mov	r0, r4
c0de5158:	f810 1f2c 	ldrb.w	r1, [r0, #44]!
c0de515c:	f000 fe32 	bl	c0de5dc4 <OUTLINED_FUNCTION_3>
c0de5160:	d009      	beq.n	c0de5176 <draw_textArea+0x32>
c0de5162:	f894 0030 	ldrb.w	r0, [r4, #48]	@ 0x30
c0de5166:	4788      	blx	r1
c0de5168:	4605      	mov	r5, r0
c0de516a:	4620      	mov	r0, r4
c0de516c:	f800 5f26 	strb.w	r5, [r0, #38]!
c0de5170:	f000 fe86 	bl	c0de5e80 <OUTLINED_FUNCTION_13>
c0de5174:	e004      	b.n	c0de5180 <draw_textArea+0x3c>
c0de5176:	4620      	mov	r0, r4
c0de5178:	f810 1f26 	ldrb.w	r1, [r0, #38]!
c0de517c:	f000 fdfb 	bl	c0de5d76 <OUTLINED_FUNCTION_0>
c0de5180:	2d00      	cmp	r5, #0
c0de5182:	f000 8138 	beq.w	c0de53f6 <draw_textArea+0x2b2>
c0de5186:	4622      	mov	r2, r4
c0de5188:	f812 1f0e 	ldrb.w	r1, [r2, #14]!
c0de518c:	7853      	ldrb	r3, [r2, #1]
c0de518e:	7897      	ldrb	r7, [r2, #2]
c0de5190:	78d0      	ldrb	r0, [r2, #3]
c0de5192:	f892 c013 	ldrb.w	ip, [r2, #19]
c0de5196:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de519a:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de519e:	f1bc 0f01 	cmp.w	ip, #1
c0de51a2:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de51a6:	7a08      	ldrb	r0, [r1, #8]
c0de51a8:	f802 0c06 	strb.w	r0, [r2, #-6]
c0de51ac:	bf19      	ittee	ne
c0de51ae:	7a09      	ldrbne	r1, [r1, #8]
c0de51b0:	460a      	movne	r2, r1
c0de51b2:	2200      	moveq	r2, #0
c0de51b4:	2103      	moveq	r1, #3
c0de51b6:	7221      	strb	r1, [r4, #8]
c0de51b8:	7820      	ldrb	r0, [r4, #0]
c0de51ba:	f88d 2014 	strb.w	r2, [sp, #20]
c0de51be:	78e3      	ldrb	r3, [r4, #3]
c0de51c0:	f1bc 0f01 	cmp.w	ip, #1
c0de51c4:	7861      	ldrb	r1, [r4, #1]
c0de51c6:	78a2      	ldrb	r2, [r4, #2]
c0de51c8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de51cc:	7921      	ldrb	r1, [r4, #4]
c0de51ce:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de51d2:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de51d6:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de51da:	7960      	ldrb	r0, [r4, #5]
c0de51dc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de51e0:	79a1      	ldrb	r1, [r4, #6]
c0de51e2:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de51e6:	79e0      	ldrb	r0, [r4, #7]
c0de51e8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de51ec:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de51f0:	a803      	add	r0, sp, #12
c0de51f2:	d104      	bne.n	c0de51fe <draw_textArea+0xba>
c0de51f4:	2100      	movs	r1, #0
c0de51f6:	2203      	movs	r2, #3
c0de51f8:	f7fe f8c0 	bl	c0de337c <nbgl_drawRoundedRect>
c0de51fc:	e001      	b.n	c0de5202 <draw_textArea+0xbe>
c0de51fe:	f005 fbb5 	bl	c0dea96c <nbgl_frontDrawRect>
c0de5202:	4630      	mov	r0, r6
c0de5204:	f7fe fd4c 	bl	c0de3ca0 <nbgl_getFontHeight>
c0de5208:	4680      	mov	r8, r0
c0de520a:	4630      	mov	r0, r6
c0de520c:	f7fe fd4d 	bl	c0de3caa <nbgl_getFontLineHeight>
c0de5210:	4683      	mov	fp, r0
c0de5212:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de5216:	2800      	cmp	r0, #0
c0de5218:	d057      	beq.n	c0de52ca <draw_textArea+0x186>
c0de521a:	4630      	mov	r0, r6
c0de521c:	4629      	mov	r1, r5
c0de521e:	f7fe fcd0 	bl	c0de3bc2 <nbgl_getSingleLineTextWidth>
c0de5222:	7921      	ldrb	r1, [r4, #4]
c0de5224:	7962      	ldrb	r2, [r4, #5]
c0de5226:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de522a:	4290      	cmp	r0, r2
c0de522c:	d951      	bls.n	c0de52d2 <draw_textArea+0x18e>
c0de522e:	4f73      	ldr	r7, [pc, #460]	@ (c0de53fc <draw_textArea+0x2b8>)
c0de5230:	4630      	mov	r0, r6
c0de5232:	447f      	add	r7, pc
c0de5234:	4639      	mov	r1, r7
c0de5236:	f7fe fd16 	bl	c0de3c66 <nbgl_getTextWidth>
c0de523a:	4682      	mov	sl, r0
c0de523c:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de5240:	7820      	ldrb	r0, [r4, #0]
c0de5242:	7861      	ldrb	r1, [r4, #1]
c0de5244:	78a2      	ldrb	r2, [r4, #2]
c0de5246:	78e3      	ldrb	r3, [r4, #3]
c0de5248:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de524c:	79a1      	ldrb	r1, [r4, #6]
c0de524e:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de5252:	79e0      	ldrb	r0, [r4, #7]
c0de5254:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5258:	2102      	movs	r1, #2
c0de525a:	eba0 0008 	sub.w	r0, r0, r8
c0de525e:	f10d 080c 	add.w	r8, sp, #12
c0de5262:	fb90 f0f1 	sdiv	r0, r0, r1
c0de5266:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de526a:	2203      	movs	r2, #3
c0de526c:	4633      	mov	r3, r6
c0de526e:	4408      	add	r0, r1
c0de5270:	4639      	mov	r1, r7
c0de5272:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de5276:	7fe0      	ldrb	r0, [r4, #31]
c0de5278:	9000      	str	r0, [sp, #0]
c0de527a:	4640      	mov	r0, r8
c0de527c:	f7fe fb60 	bl	c0de3940 <nbgl_drawText>
c0de5280:	7920      	ldrb	r0, [r4, #4]
c0de5282:	7961      	ldrb	r1, [r4, #5]
c0de5284:	f10d 020a 	add.w	r2, sp, #10
c0de5288:	9200      	str	r2, [sp, #0]
c0de528a:	ab02      	add	r3, sp, #8
c0de528c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5290:	4629      	mov	r1, r5
c0de5292:	eba0 000a 	sub.w	r0, r0, sl
c0de5296:	b282      	uxth	r2, r0
c0de5298:	4630      	mov	r0, r6
c0de529a:	f7fe fe2b 	bl	c0de3ef4 <nbgl_getTextMaxLenAndWidthFromEnd>
c0de529e:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de52a2:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de52a6:	f8bd 000c 	ldrh.w	r0, [sp, #12]
c0de52aa:	4450      	add	r0, sl
c0de52ac:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de52b0:	4628      	mov	r0, r5
c0de52b2:	f7fe fcff 	bl	c0de3cb4 <nbgl_getTextLength>
c0de52b6:	f8bd 2008 	ldrh.w	r2, [sp, #8]
c0de52ba:	7fe1      	ldrb	r1, [r4, #31]
c0de52bc:	f894 3022 	ldrb.w	r3, [r4, #34]	@ 0x22
c0de52c0:	1a80      	subs	r0, r0, r2
c0de52c2:	9100      	str	r1, [sp, #0]
c0de52c4:	1829      	adds	r1, r5, r0
c0de52c6:	4640      	mov	r0, r8
c0de52c8:	e093      	b.n	c0de53f2 <draw_textArea+0x2ae>
c0de52ca:	7920      	ldrb	r0, [r4, #4]
c0de52cc:	7961      	ldrb	r1, [r4, #5]
c0de52ce:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de52d2:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
c0de52d6:	4630      	mov	r0, r6
c0de52d8:	4629      	mov	r1, r5
c0de52da:	f7fe fe4d 	bl	c0de3f78 <nbgl_getTextNbLinesInWidth>
c0de52de:	7a23      	ldrb	r3, [r4, #8]
c0de52e0:	f894 7025 	ldrb.w	r7, [r4, #37]	@ 0x25
c0de52e4:	f8ad 8012 	strh.w	r8, [sp, #18]
c0de52e8:	79a1      	ldrb	r1, [r4, #6]
c0de52ea:	79e2      	ldrb	r2, [r4, #7]
c0de52ec:	f894 c021 	ldrb.w	ip, [r4, #33]	@ 0x21
c0de52f0:	f88d 3014 	strb.w	r3, [sp, #20]
c0de52f4:	b2c3      	uxtb	r3, r0
c0de52f6:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de52fa:	42bb      	cmp	r3, r7
c0de52fc:	4603      	mov	r3, r0
c0de52fe:	bf88      	it	hi
c0de5300:	463b      	movhi	r3, r7
c0de5302:	2f00      	cmp	r7, #0
c0de5304:	bf08      	it	eq
c0de5306:	4603      	moveq	r3, r0
c0de5308:	b2df      	uxtb	r7, r3
c0de530a:	1e78      	subs	r0, r7, #1
c0de530c:	fb00 800b 	mla	r0, r0, fp, r8
c0de5310:	f04f 0800 	mov.w	r8, #0
c0de5314:	b280      	uxth	r0, r0
c0de5316:	1a08      	subs	r0, r1, r0
c0de5318:	2102      	movs	r1, #2
c0de531a:	fb90 faf1 	sdiv	sl, r0, r1
c0de531e:	f64f 70ff 	movw	r0, #65535	@ 0xffff
c0de5322:	f1bc 0f01 	cmp.w	ip, #1
c0de5326:	bf08      	it	eq
c0de5328:	4482      	addeq	sl, r0
c0de532a:	4547      	cmp	r7, r8
c0de532c:	d063      	beq.n	c0de53f6 <draw_textArea+0x2b2>
c0de532e:	7920      	ldrb	r0, [r4, #4]
c0de5330:	7961      	ldrb	r1, [r4, #5]
c0de5332:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
c0de5336:	f10d 030a 	add.w	r3, sp, #10
c0de533a:	b2f6      	uxtb	r6, r6
c0de533c:	e9cd 3200 	strd	r3, r2, [sp]
c0de5340:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de5344:	4630      	mov	r0, r6
c0de5346:	4629      	mov	r1, r5
c0de5348:	ab02      	add	r3, sp, #8
c0de534a:	f7fe fcc3 	bl	c0de3cd4 <nbgl_getTextMaxLenAndWidth>
c0de534e:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de5352:	2806      	cmp	r0, #6
c0de5354:	d008      	beq.n	c0de5368 <draw_textArea+0x224>
c0de5356:	2805      	cmp	r0, #5
c0de5358:	d013      	beq.n	c0de5382 <draw_textArea+0x23e>
c0de535a:	2804      	cmp	r0, #4
c0de535c:	d122      	bne.n	c0de53a4 <draw_textArea+0x260>
c0de535e:	7820      	ldrb	r0, [r4, #0]
c0de5360:	7861      	ldrb	r1, [r4, #1]
c0de5362:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5366:	e01b      	b.n	c0de53a0 <draw_textArea+0x25c>
c0de5368:	7820      	ldrb	r0, [r4, #0]
c0de536a:	7861      	ldrb	r1, [r4, #1]
c0de536c:	7922      	ldrb	r2, [r4, #4]
c0de536e:	7963      	ldrb	r3, [r4, #5]
c0de5370:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5374:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de5378:	4408      	add	r0, r1
c0de537a:	f8bd 100a 	ldrh.w	r1, [sp, #10]
c0de537e:	1a40      	subs	r0, r0, r1
c0de5380:	e00e      	b.n	c0de53a0 <draw_textArea+0x25c>
c0de5382:	7922      	ldrb	r2, [r4, #4]
c0de5384:	7963      	ldrb	r3, [r4, #5]
c0de5386:	7820      	ldrb	r0, [r4, #0]
c0de5388:	7861      	ldrb	r1, [r4, #1]
c0de538a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de538e:	f8bd 300a 	ldrh.w	r3, [sp, #10]
c0de5392:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5396:	1ad2      	subs	r2, r2, r3
c0de5398:	2302      	movs	r3, #2
c0de539a:	fb92 f2f3 	sdiv	r2, r2, r3
c0de539e:	4410      	add	r0, r2
c0de53a0:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de53a4:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de53a8:	78a1      	ldrb	r1, [r4, #2]
c0de53aa:	78e2      	ldrb	r2, [r4, #3]
c0de53ac:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de53b0:	f894 0025 	ldrb.w	r0, [r4, #37]	@ 0x25
c0de53b4:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de53b8:	4451      	add	r1, sl
c0de53ba:	f8ad 100e 	strh.w	r1, [sp, #14]
c0de53be:	b110      	cbz	r0, c0de53c6 <draw_textArea+0x282>
c0de53c0:	3801      	subs	r0, #1
c0de53c2:	4540      	cmp	r0, r8
c0de53c4:	d912      	bls.n	c0de53ec <draw_textArea+0x2a8>
c0de53c6:	f000 fd62 	bl	c0de5e8e <OUTLINED_FUNCTION_14>
c0de53ca:	a803      	add	r0, sp, #12
c0de53cc:	f7fe fab8 	bl	c0de3940 <nbgl_drawText>
c0de53d0:	4606      	mov	r6, r0
c0de53d2:	f8bd 0008 	ldrh.w	r0, [sp, #8]
c0de53d6:	44da      	add	sl, fp
c0de53d8:	f108 0801 	add.w	r8, r8, #1
c0de53dc:	4428      	add	r0, r5
c0de53de:	4605      	mov	r5, r0
c0de53e0:	f815 1b01 	ldrb.w	r1, [r5], #1
c0de53e4:	290a      	cmp	r1, #10
c0de53e6:	bf18      	it	ne
c0de53e8:	4605      	movne	r5, r0
c0de53ea:	e79e      	b.n	c0de532a <draw_textArea+0x1e6>
c0de53ec:	f000 fd4f 	bl	c0de5e8e <OUTLINED_FUNCTION_14>
c0de53f0:	a803      	add	r0, sp, #12
c0de53f2:	f7fe faa5 	bl	c0de3940 <nbgl_drawText>
c0de53f6:	b006      	add	sp, #24
c0de53f8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de53fc:	000063e9 	.word	0x000063e9

c0de5400 <draw_button>:
c0de5400:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5404:	b086      	sub	sp, #24
c0de5406:	4604      	mov	r4, r0
c0de5408:	2000      	movs	r0, #0
c0de540a:	f8ad 0016 	strh.w	r0, [sp, #22]
c0de540e:	b10a      	cbz	r2, c0de5414 <draw_button+0x14>
c0de5410:	f000 fd1c 	bl	c0de5e4c <OUTLINED_FUNCTION_9>
c0de5414:	4623      	mov	r3, r4
c0de5416:	7be0      	ldrb	r0, [r4, #15]
c0de5418:	7fe2      	ldrb	r2, [r4, #31]
c0de541a:	f894 1022 	ldrb.w	r1, [r4, #34]	@ 0x22
c0de541e:	f813 5f0e 	ldrb.w	r5, [r3, #14]!
c0de5422:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de5426:	789d      	ldrb	r5, [r3, #2]
c0de5428:	78db      	ldrb	r3, [r3, #3]
c0de542a:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
c0de542e:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de5432:	7a00      	ldrb	r0, [r0, #8]
c0de5434:	7220      	strb	r0, [r4, #8]
c0de5436:	4620      	mov	r0, r4
c0de5438:	f7fd ffa0 	bl	c0de337c <nbgl_drawRoundedRect>
c0de543c:	4620      	mov	r0, r4
c0de543e:	f810 1f29 	ldrb.w	r1, [r0, #41]!
c0de5442:	f000 fcbf 	bl	c0de5dc4 <OUTLINED_FUNCTION_3>
c0de5446:	d009      	beq.n	c0de545c <draw_button+0x5c>
c0de5448:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de544c:	4788      	blx	r1
c0de544e:	4605      	mov	r5, r0
c0de5450:	4620      	mov	r0, r4
c0de5452:	f800 5f25 	strb.w	r5, [r0, #37]!
c0de5456:	f000 fd13 	bl	c0de5e80 <OUTLINED_FUNCTION_13>
c0de545a:	e004      	b.n	c0de5466 <draw_button+0x66>
c0de545c:	4620      	mov	r0, r4
c0de545e:	f810 1f25 	ldrb.w	r1, [r0, #37]!
c0de5462:	f000 fc88 	bl	c0de5d76 <OUTLINED_FUNCTION_0>
c0de5466:	2d00      	cmp	r5, #0
c0de5468:	d076      	beq.n	c0de5558 <draw_button+0x158>
c0de546a:	7820      	ldrb	r0, [r4, #0]
c0de546c:	7861      	ldrb	r1, [r4, #1]
c0de546e:	f894 8002 	ldrb.w	r8, [r4, #2]
c0de5472:	f894 b003 	ldrb.w	fp, [r4, #3]
c0de5476:	ea40 2a01 	orr.w	sl, r0, r1, lsl #8
c0de547a:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de547e:	f8ad a00c 	strh.w	sl, [sp, #12]
c0de5482:	f7fe fc0d 	bl	c0de3ca0 <nbgl_getFontHeight>
c0de5486:	4622      	mov	r2, r4
c0de5488:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de548c:	f812 cf2d 	ldrb.w	ip, [r2, #45]!
c0de5490:	f812 6c27 	ldrb.w	r6, [r2, #-39]
c0de5494:	f812 3c26 	ldrb.w	r3, [r2, #-38]
c0de5498:	f812 1c29 	ldrb.w	r1, [r2, #-41]
c0de549c:	f812 7c28 	ldrb.w	r7, [r2, #-40]
c0de54a0:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de54a4:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de54a8:	1a18      	subs	r0, r3, r0
c0de54aa:	2302      	movs	r3, #2
c0de54ac:	f8ad 1010 	strh.w	r1, [sp, #16]
c0de54b0:	fb90 f0f3 	sdiv	r0, r0, r3
c0de54b4:	ea48 230b 	orr.w	r3, r8, fp, lsl #8
c0de54b8:	4418      	add	r0, r3
c0de54ba:	7893      	ldrb	r3, [r2, #2]
c0de54bc:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de54c0:	78d0      	ldrb	r0, [r2, #3]
c0de54c2:	7852      	ldrb	r2, [r2, #1]
c0de54c4:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de54c8:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
c0de54cc:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de54d0:	b150      	cbz	r0, c0de54e8 <draw_button+0xe8>
c0de54d2:	7802      	ldrb	r2, [r0, #0]
c0de54d4:	7840      	ldrb	r0, [r0, #1]
c0de54d6:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de54da:	3002      	adds	r0, #2
c0de54dc:	1a09      	subs	r1, r1, r0
c0de54de:	4482      	add	sl, r0
c0de54e0:	f8ad 1010 	strh.w	r1, [sp, #16]
c0de54e4:	f8ad a00c 	strh.w	sl, [sp, #12]
c0de54e8:	b28e      	uxth	r6, r1
c0de54ea:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de54ee:	2201      	movs	r2, #1
c0de54f0:	f10d 0316 	add.w	r3, sp, #22
c0de54f4:	4629      	mov	r1, r5
c0de54f6:	e9cd 3200 	strd	r3, r2, [sp]
c0de54fa:	f10d 030a 	add.w	r3, sp, #10
c0de54fe:	4632      	mov	r2, r6
c0de5500:	f7fe fbe8 	bl	c0de3cd4 <nbgl_getTextMaxLenAndWidth>
c0de5504:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de5508:	4286      	cmp	r6, r0
c0de550a:	d906      	bls.n	c0de551a <draw_button+0x11a>
c0de550c:	1a30      	subs	r0, r6, r0
c0de550e:	2102      	movs	r1, #2
c0de5510:	fb90 f0f1 	sdiv	r0, r0, r1
c0de5514:	4450      	add	r0, sl
c0de5516:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de551a:	7fe0      	ldrb	r0, [r4, #31]
c0de551c:	f894 1021 	ldrb.w	r1, [r4, #33]	@ 0x21
c0de5520:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
c0de5524:	f8bd 200a 	ldrh.w	r2, [sp, #10]
c0de5528:	9100      	str	r1, [sp, #0]
c0de552a:	f88d 0014 	strb.w	r0, [sp, #20]
c0de552e:	a803      	add	r0, sp, #12
c0de5530:	4629      	mov	r1, r5
c0de5532:	f7fe fa05 	bl	c0de3940 <nbgl_drawText>
c0de5536:	f000 fc5e 	bl	c0de5df6 <OUTLINED_FUNCTION_5>
c0de553a:	d047      	beq.n	c0de55cc <draw_button+0x1cc>
c0de553c:	7818      	ldrb	r0, [r3, #0]
c0de553e:	7859      	ldrb	r1, [r3, #1]
c0de5540:	7922      	ldrb	r2, [r4, #4]
c0de5542:	7965      	ldrb	r5, [r4, #5]
c0de5544:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5548:	f8bd 1016 	ldrh.w	r1, [sp, #22]
c0de554c:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
c0de5550:	4401      	add	r1, r0
c0de5552:	1a51      	subs	r1, r2, r1
c0de5554:	3902      	subs	r1, #2
c0de5556:	e00b      	b.n	c0de5570 <draw_button+0x170>
c0de5558:	f000 fc4d 	bl	c0de5df6 <OUTLINED_FUNCTION_5>
c0de555c:	d036      	beq.n	c0de55cc <draw_button+0x1cc>
c0de555e:	7818      	ldrb	r0, [r3, #0]
c0de5560:	7859      	ldrb	r1, [r3, #1]
c0de5562:	7962      	ldrb	r2, [r4, #5]
c0de5564:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5568:	7921      	ldrb	r1, [r4, #4]
c0de556a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de556e:	1a09      	subs	r1, r1, r0
c0de5570:	f04f 0c02 	mov.w	ip, #2
c0de5574:	7826      	ldrb	r6, [r4, #0]
c0de5576:	7867      	ldrb	r7, [r4, #1]
c0de5578:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de557c:	7fe0      	ldrb	r0, [r4, #31]
c0de557e:	fb91 f1fc 	sdiv	r1, r1, ip
c0de5582:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5586:	f88d 0014 	strb.w	r0, [sp, #20]
c0de558a:	78e0      	ldrb	r0, [r4, #3]
c0de558c:	4431      	add	r1, r6
c0de558e:	f893 e002 	ldrb.w	lr, [r3, #2]
c0de5592:	78da      	ldrb	r2, [r3, #3]
c0de5594:	79a6      	ldrb	r6, [r4, #6]
c0de5596:	791d      	ldrb	r5, [r3, #4]
c0de5598:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de559c:	79e1      	ldrb	r1, [r4, #7]
c0de559e:	ea4e 2202 	orr.w	r2, lr, r2, lsl #8
c0de55a2:	f88d 5015 	strb.w	r5, [sp, #21]
c0de55a6:	78a5      	ldrb	r5, [r4, #2]
c0de55a8:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de55ac:	f8ad 2012 	strh.w	r2, [sp, #18]
c0de55b0:	1a89      	subs	r1, r1, r2
c0de55b2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de55b6:	f894 2021 	ldrb.w	r2, [r4, #33]	@ 0x21
c0de55ba:	fb91 f1fc 	sdiv	r1, r1, ip
c0de55be:	4408      	add	r0, r1
c0de55c0:	2100      	movs	r1, #0
c0de55c2:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de55c6:	a803      	add	r0, sp, #12
c0de55c8:	f7fe f99a 	bl	c0de3900 <nbgl_drawIcon>
c0de55cc:	b006      	add	sp, #24
c0de55ce:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de55d2 <draw_progressBar>:
c0de55d2:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de55d4:	4604      	mov	r4, r0
c0de55d6:	b10a      	cbz	r2, c0de55dc <draw_progressBar+0xa>
c0de55d8:	f000 fc38 	bl	c0de5e4c <OUTLINED_FUNCTION_9>
c0de55dc:	f000 fc49 	bl	c0de5e72 <OUTLINED_FUNCTION_12>
c0de55e0:	7c46      	ldrb	r6, [r0, #17]
c0de55e2:	f000 fc3e 	bl	c0de5e62 <OUTLINED_FUNCTION_11>
c0de55e6:	7a0b      	ldrb	r3, [r1, #8]
c0de55e8:	f800 3c06 	strb.w	r3, [r0, #-6]
c0de55ec:	d008      	beq.n	c0de5600 <draw_progressBar+0x2e>
c0de55ee:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de55f2:	2101      	movs	r1, #1
c0de55f4:	2201      	movs	r2, #1
c0de55f6:	9000      	str	r0, [sp, #0]
c0de55f8:	4620      	mov	r0, r4
c0de55fa:	f7fe f809 	bl	c0de3610 <nbgl_drawRoundedBorderedRect>
c0de55fe:	e004      	b.n	c0de560a <draw_progressBar+0x38>
c0de5600:	4620      	mov	r0, r4
c0de5602:	2101      	movs	r1, #1
c0de5604:	461a      	mov	r2, r3
c0de5606:	f7fd feb9 	bl	c0de337c <nbgl_drawRoundedRect>
c0de560a:	7920      	ldrb	r0, [r4, #4]
c0de560c:	7961      	ldrb	r1, [r4, #5]
c0de560e:	f894 2020 	ldrb.w	r2, [r4, #32]
c0de5612:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5616:	3802      	subs	r0, #2
c0de5618:	fb00 f102 	mul.w	r1, r0, r2
c0de561c:	2264      	movs	r2, #100	@ 0x64
c0de561e:	fb91 f1f2 	sdiv	r1, r1, r2
c0de5622:	4281      	cmp	r1, r0
c0de5624:	bfb8      	it	lt
c0de5626:	4608      	movlt	r0, r1
c0de5628:	0401      	lsls	r1, r0, #16
c0de562a:	d020      	beq.n	c0de566e <draw_progressBar+0x9c>
c0de562c:	f8ad 0008 	strh.w	r0, [sp, #8]
c0de5630:	2000      	movs	r0, #0
c0de5632:	79a1      	ldrb	r1, [r4, #6]
c0de5634:	78a2      	ldrb	r2, [r4, #2]
c0de5636:	78e3      	ldrb	r3, [r4, #3]
c0de5638:	f88d 000d 	strb.w	r0, [sp, #13]
c0de563c:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de5640:	f88d 000c 	strb.w	r0, [sp, #12]
c0de5644:	79e0      	ldrb	r0, [r4, #7]
c0de5646:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de564a:	7861      	ldrb	r1, [r4, #1]
c0de564c:	3802      	subs	r0, #2
c0de564e:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de5652:	7820      	ldrb	r0, [r4, #0]
c0de5654:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5658:	3001      	adds	r0, #1
c0de565a:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de565e:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de5662:	3001      	adds	r0, #1
c0de5664:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de5668:	a801      	add	r0, sp, #4
c0de566a:	f005 f97f 	bl	c0dea96c <nbgl_frontDrawRect>
c0de566e:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}

c0de5670 <draw_image_file>:
c0de5670:	b570      	push	{r4, r5, r6, lr}
c0de5672:	4604      	mov	r4, r0
c0de5674:	f810 3f1f 	ldrb.w	r3, [r0, #31]!
c0de5678:	7845      	ldrb	r5, [r0, #1]
c0de567a:	7886      	ldrb	r6, [r0, #2]
c0de567c:	78c0      	ldrb	r0, [r0, #3]
c0de567e:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de5682:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de5686:	ea43 4500 	orr.w	r5, r3, r0, lsl #16
c0de568a:	b19d      	cbz	r5, c0de56b4 <draw_image_file+0x44>
c0de568c:	b132      	cbz	r2, c0de569c <draw_image_file+0x2c>
c0de568e:	f000 fbdd 	bl	c0de5e4c <OUTLINED_FUNCTION_9>
c0de5692:	4620      	mov	r0, r4
c0de5694:	f810 1f1f 	ldrb.w	r1, [r0, #31]!
c0de5698:	f000 fb6d 	bl	c0de5d76 <OUTLINED_FUNCTION_0>
c0de569c:	2003      	movs	r0, #3
c0de569e:	4629      	mov	r1, r5
c0de56a0:	2200      	movs	r2, #0
c0de56a2:	7220      	strb	r0, [r4, #8]
c0de56a4:	4804      	ldr	r0, [pc, #16]	@ (c0de56b8 <draw_image_file+0x48>)
c0de56a6:	eb09 0300 	add.w	r3, r9, r0
c0de56aa:	4620      	mov	r0, r4
c0de56ac:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de56b0:	f005 b984 	b.w	c0dea9bc <nbgl_frontDrawImageFile>
c0de56b4:	bd70      	pop	{r4, r5, r6, pc}
c0de56b6:	bf00      	nop
c0de56b8:	00000434 	.word	0x00000434

c0de56bc <draw_textEntry>:
c0de56bc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de56c0:	b086      	sub	sp, #24
c0de56c2:	460e      	mov	r6, r1
c0de56c4:	4604      	mov	r4, r0
c0de56c6:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de56ca:	4617      	mov	r7, r2
c0de56cc:	f000 fb5d 	bl	c0de5d8a <OUTLINED_FUNCTION_1>
c0de56d0:	f005 fd76 	bl	c0deb1c0 <strlen>
c0de56d4:	4605      	mov	r5, r0
c0de56d6:	b11f      	cbz	r7, c0de56e0 <draw_textEntry+0x24>
c0de56d8:	4620      	mov	r0, r4
c0de56da:	4631      	mov	r1, r6
c0de56dc:	f000 f894 	bl	c0de5808 <compute_position>
c0de56e0:	2003      	movs	r0, #3
c0de56e2:	7861      	ldrb	r1, [r4, #1]
c0de56e4:	78a2      	ldrb	r2, [r4, #2]
c0de56e6:	78e3      	ldrb	r3, [r4, #3]
c0de56e8:	7220      	strb	r0, [r4, #8]
c0de56ea:	2000      	movs	r0, #0
c0de56ec:	f8ad 0014 	strh.w	r0, [sp, #20]
c0de56f0:	7820      	ldrb	r0, [r4, #0]
c0de56f2:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de56f6:	7921      	ldrb	r1, [r4, #4]
c0de56f8:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de56fc:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de5700:	2203      	movs	r2, #3
c0de5702:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de5706:	7960      	ldrb	r0, [r4, #5]
c0de5708:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de570c:	79a1      	ldrb	r1, [r4, #6]
c0de570e:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de5712:	79e0      	ldrb	r0, [r4, #7]
c0de5714:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5718:	2101      	movs	r1, #1
c0de571a:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de571e:	a803      	add	r0, sp, #12
c0de5720:	f7fd fe2c 	bl	c0de337c <nbgl_drawRoundedRect>
c0de5724:	7a21      	ldrb	r1, [r4, #8]
c0de5726:	7fe0      	ldrb	r0, [r4, #31]
c0de5728:	f88d 1014 	strb.w	r1, [sp, #20]
c0de572c:	f7fe fab8 	bl	c0de3ca0 <nbgl_getFontHeight>
c0de5730:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de5734:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de5738:	2809      	cmp	r0, #9
c0de573a:	d902      	bls.n	c0de5742 <draw_textEntry+0x86>
c0de573c:	b006      	add	sp, #24
c0de573e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5742:	7922      	ldrb	r2, [r4, #4]
c0de5744:	7963      	ldrb	r3, [r4, #5]
c0de5746:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de574a:	f04f 0b08 	mov.w	fp, #8
c0de574e:	f10d 0a0c 	add.w	sl, sp, #12
c0de5752:	f04f 0800 	mov.w	r8, #0
c0de5756:	4249      	negs	r1, r1
c0de5758:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de575c:	eb02 0141 	add.w	r1, r2, r1, lsl #1
c0de5760:	2202      	movs	r2, #2
c0de5762:	fb91 f7f2 	sdiv	r7, r1, r2
c0de5766:	4927      	ldr	r1, [pc, #156]	@ (c0de5804 <draw_textEntry+0x148>)
c0de5768:	4479      	add	r1, pc
c0de576a:	9101      	str	r1, [sp, #4]
c0de576c:	4580      	cmp	r8, r0
c0de576e:	d2e5      	bcs.n	c0de573c <draw_textEntry+0x80>
c0de5770:	7821      	ldrb	r1, [r4, #0]
c0de5772:	7862      	ldrb	r2, [r4, #1]
c0de5774:	78a3      	ldrb	r3, [r4, #2]
c0de5776:	78e6      	ldrb	r6, [r4, #3]
c0de5778:	f8ad b010 	strh.w	fp, [sp, #16]
c0de577c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5780:	4439      	add	r1, r7
c0de5782:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de5786:	ea43 2106 	orr.w	r1, r3, r6, lsl #8
c0de578a:	3902      	subs	r1, #2
c0de578c:	4285      	cmp	r5, r0
c0de578e:	f8ad 100e 	strh.w	r1, [sp, #14]
c0de5792:	da09      	bge.n	c0de57a8 <draw_textEntry+0xec>
c0de5794:	45a8      	cmp	r8, r5
c0de5796:	da1e      	bge.n	c0de57d6 <draw_textEntry+0x11a>
c0de5798:	4620      	mov	r0, r4
c0de579a:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de579e:	f000 faf4 	bl	c0de5d8a <OUTLINED_FUNCTION_1>
c0de57a2:	f810 0008 	ldrb.w	r0, [r0, r8]
c0de57a6:	e017      	b.n	c0de57d8 <draw_textEntry+0x11c>
c0de57a8:	f1b8 0f00 	cmp.w	r8, #0
c0de57ac:	d025      	beq.n	c0de57fa <draw_textEntry+0x13e>
c0de57ae:	1e41      	subs	r1, r0, #1
c0de57b0:	4588      	cmp	r8, r1
c0de57b2:	da10      	bge.n	c0de57d6 <draw_textEntry+0x11a>
c0de57b4:	4621      	mov	r1, r4
c0de57b6:	f811 2f21 	ldrb.w	r2, [r1, #33]!
c0de57ba:	784b      	ldrb	r3, [r1, #1]
c0de57bc:	788e      	ldrb	r6, [r1, #2]
c0de57be:	78c9      	ldrb	r1, [r1, #3]
c0de57c0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de57c4:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de57c8:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de57cc:	1a08      	subs	r0, r1, r0
c0de57ce:	4428      	add	r0, r5
c0de57d0:	4440      	add	r0, r8
c0de57d2:	7840      	ldrb	r0, [r0, #1]
c0de57d4:	e000      	b.n	c0de57d8 <draw_textEntry+0x11c>
c0de57d6:	205f      	movs	r0, #95	@ 0x5f
c0de57d8:	f88d 000b 	strb.w	r0, [sp, #11]
c0de57dc:	2000      	movs	r0, #0
c0de57de:	f10d 010b 	add.w	r1, sp, #11
c0de57e2:	2201      	movs	r2, #1
c0de57e4:	9000      	str	r0, [sp, #0]
c0de57e6:	4650      	mov	r0, sl
c0de57e8:	2308      	movs	r3, #8
c0de57ea:	f7fe f8a9 	bl	c0de3940 <nbgl_drawText>
c0de57ee:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de57f2:	370a      	adds	r7, #10
c0de57f4:	f108 0801 	add.w	r8, r8, #1
c0de57f8:	e7b8      	b.n	c0de576c <draw_textEntry+0xb0>
c0de57fa:	2000      	movs	r0, #0
c0de57fc:	9901      	ldr	r1, [sp, #4]
c0de57fe:	2202      	movs	r2, #2
c0de5800:	e7f0      	b.n	c0de57e4 <draw_textEntry+0x128>
c0de5802:	bf00      	nop
c0de5804:	00005f6d 	.word	0x00005f6d

c0de5808 <compute_position>:
c0de5808:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de580a:	4602      	mov	r2, r0
c0de580c:	f812 4f0e 	ldrb.w	r4, [r2, #14]!
c0de5810:	7855      	ldrb	r5, [r2, #1]
c0de5812:	7896      	ldrb	r6, [r2, #2]
c0de5814:	78d7      	ldrb	r7, [r2, #3]
c0de5816:	7a13      	ldrb	r3, [r2, #8]
c0de5818:	ea44 2205 	orr.w	r2, r4, r5, lsl #8
c0de581c:	ea46 2407 	orr.w	r4, r6, r7, lsl #8
c0de5820:	2b00      	cmp	r3, #0
c0de5822:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de5826:	d04e      	beq.n	c0de58c6 <compute_position+0xbe>
c0de5828:	4601      	mov	r1, r0
c0de582a:	f811 4f12 	ldrb.w	r4, [r1, #18]!
c0de582e:	784d      	ldrb	r5, [r1, #1]
c0de5830:	788e      	ldrb	r6, [r1, #2]
c0de5832:	78c9      	ldrb	r1, [r1, #3]
c0de5834:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5838:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de583c:	ea44 4101 	orr.w	r1, r4, r1, lsl #16
c0de5840:	2900      	cmp	r1, #0
c0de5842:	bf08      	it	eq
c0de5844:	4611      	moveq	r1, r2
c0de5846:	4291      	cmp	r1, r2
c0de5848:	d050      	beq.n	c0de58ec <compute_position+0xe4>
c0de584a:	2b0d      	cmp	r3, #13
c0de584c:	f000 808f 	beq.w	c0de596e <compute_position+0x166>
c0de5850:	2b02      	cmp	r3, #2
c0de5852:	f000 80ac 	beq.w	c0de59ae <compute_position+0x1a6>
c0de5856:	2b03      	cmp	r3, #3
c0de5858:	f000 80c4 	beq.w	c0de59e4 <compute_position+0x1dc>
c0de585c:	2b04      	cmp	r3, #4
c0de585e:	f000 80e3 	beq.w	c0de5a28 <compute_position+0x220>
c0de5862:	2b06      	cmp	r3, #6
c0de5864:	f000 8100 	beq.w	c0de5a68 <compute_position+0x260>
c0de5868:	2b07      	cmp	r3, #7
c0de586a:	f000 811d 	beq.w	c0de5aa8 <compute_position+0x2a0>
c0de586e:	2b08      	cmp	r3, #8
c0de5870:	f000 8136 	beq.w	c0de5ae0 <compute_position+0x2d8>
c0de5874:	2b09      	cmp	r3, #9
c0de5876:	f000 814d 	beq.w	c0de5b14 <compute_position+0x30c>
c0de587a:	2b0a      	cmp	r3, #10
c0de587c:	f000 816f 	beq.w	c0de5b5e <compute_position+0x356>
c0de5880:	2b0b      	cmp	r3, #11
c0de5882:	f000 8186 	beq.w	c0de5b92 <compute_position+0x38a>
c0de5886:	2b0c      	cmp	r3, #12
c0de5888:	f000 81a4 	beq.w	c0de5bd4 <compute_position+0x3cc>
c0de588c:	2b01      	cmp	r3, #1
c0de588e:	f040 8232 	bne.w	c0de5cf6 <compute_position+0x4ee>
c0de5892:	7a8b      	ldrb	r3, [r1, #10]
c0de5894:	7acc      	ldrb	r4, [r1, #11]
c0de5896:	7dc7      	ldrb	r7, [r0, #23]
c0de5898:	7e05      	ldrb	r5, [r0, #24]
c0de589a:	f891 c00c 	ldrb.w	ip, [r1, #12]
c0de589e:	7b49      	ldrb	r1, [r1, #13]
c0de58a0:	79c6      	ldrb	r6, [r0, #7]
c0de58a2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de58a6:	ea47 2505 	orr.w	r5, r7, r5, lsl #8
c0de58aa:	7984      	ldrb	r4, [r0, #6]
c0de58ac:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
c0de58b0:	442b      	add	r3, r5
c0de58b2:	7e45      	ldrb	r5, [r0, #25]
c0de58b4:	7283      	strb	r3, [r0, #10]
c0de58b6:	0a1b      	lsrs	r3, r3, #8
c0de58b8:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de58bc:	72c3      	strb	r3, [r0, #11]
c0de58be:	7e83      	ldrb	r3, [r0, #26]
c0de58c0:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
c0de58c4:	e0ad      	b.n	c0de5a22 <compute_position+0x21a>
c0de58c6:	7fd3      	ldrb	r3, [r2, #31]
c0de58c8:	b3a3      	cbz	r3, c0de5934 <compute_position+0x12c>
c0de58ca:	2900      	cmp	r1, #0
c0de58cc:	d043      	beq.n	c0de5956 <compute_position+0x14e>
c0de58ce:	790b      	ldrb	r3, [r1, #4]
c0de58d0:	794c      	ldrb	r4, [r1, #5]
c0de58d2:	7a8d      	ldrb	r5, [r1, #10]
c0de58d4:	7ac9      	ldrb	r1, [r1, #11]
c0de58d6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de58da:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de58de:	7e04      	ldrb	r4, [r0, #24]
c0de58e0:	4419      	add	r1, r3
c0de58e2:	7dc3      	ldrb	r3, [r0, #23]
c0de58e4:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de58e8:	4419      	add	r1, r3
c0de58ea:	e038      	b.n	c0de595e <compute_position+0x156>
c0de58ec:	2b09      	cmp	r3, #9
c0de58ee:	f000 818b 	beq.w	c0de5c08 <compute_position+0x400>
c0de58f2:	2b02      	cmp	r3, #2
c0de58f4:	f000 8198 	beq.w	c0de5c28 <compute_position+0x420>
c0de58f8:	2b03      	cmp	r3, #3
c0de58fa:	f000 81a7 	beq.w	c0de5c4c <compute_position+0x444>
c0de58fe:	2b04      	cmp	r3, #4
c0de5900:	f000 81ba 	beq.w	c0de5c78 <compute_position+0x470>
c0de5904:	2b05      	cmp	r3, #5
c0de5906:	f000 81c2 	beq.w	c0de5c8e <compute_position+0x486>
c0de590a:	2b06      	cmp	r3, #6
c0de590c:	f000 81dd 	beq.w	c0de5cca <compute_position+0x4c2>
c0de5910:	2b07      	cmp	r3, #7
c0de5912:	f000 820a 	beq.w	c0de5d2a <compute_position+0x522>
c0de5916:	2b08      	cmp	r3, #8
c0de5918:	f000 820e 	beq.w	c0de5d38 <compute_position+0x530>
c0de591c:	2b01      	cmp	r3, #1
c0de591e:	f040 81ea 	bne.w	c0de5cf6 <compute_position+0x4ee>
c0de5922:	7dc1      	ldrb	r1, [r0, #23]
c0de5924:	7e03      	ldrb	r3, [r0, #24]
c0de5926:	7e44      	ldrb	r4, [r0, #25]
c0de5928:	7e85      	ldrb	r5, [r0, #26]
c0de592a:	7281      	strb	r1, [r0, #10]
c0de592c:	72c3      	strb	r3, [r0, #11]
c0de592e:	ea44 2105 	orr.w	r1, r4, r5, lsl #8
c0de5932:	e1dd      	b.n	c0de5cf0 <compute_position+0x4e8>
c0de5934:	7dc3      	ldrb	r3, [r0, #23]
c0de5936:	7e04      	ldrb	r4, [r0, #24]
c0de5938:	72c4      	strb	r4, [r0, #11]
c0de593a:	7283      	strb	r3, [r0, #10]
c0de593c:	b191      	cbz	r1, c0de5964 <compute_position+0x15c>
c0de593e:	798b      	ldrb	r3, [r1, #6]
c0de5940:	79cc      	ldrb	r4, [r1, #7]
c0de5942:	7b0d      	ldrb	r5, [r1, #12]
c0de5944:	7b49      	ldrb	r1, [r1, #13]
c0de5946:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de594a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de594e:	7e84      	ldrb	r4, [r0, #26]
c0de5950:	4419      	add	r1, r3
c0de5952:	7e43      	ldrb	r3, [r0, #25]
c0de5954:	e0c1      	b.n	c0de5ada <compute_position+0x2d2>
c0de5956:	7dc1      	ldrb	r1, [r0, #23]
c0de5958:	7e03      	ldrb	r3, [r0, #24]
c0de595a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de595e:	7281      	strb	r1, [r0, #10]
c0de5960:	0a09      	lsrs	r1, r1, #8
c0de5962:	72c1      	strb	r1, [r0, #11]
c0de5964:	7e41      	ldrb	r1, [r0, #25]
c0de5966:	7e83      	ldrb	r3, [r0, #26]
c0de5968:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de596c:	e1c0      	b.n	c0de5cf0 <compute_position+0x4e8>
c0de596e:	f000 fa70 	bl	c0de5e52 <OUTLINED_FUNCTION_10>
c0de5972:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de5976:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de597a:	790c      	ldrb	r4, [r1, #4]
c0de597c:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5980:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5984:	79c5      	ldrb	r5, [r0, #7]
c0de5986:	4423      	add	r3, r4
c0de5988:	7984      	ldrb	r4, [r0, #6]
c0de598a:	4433      	add	r3, r6
c0de598c:	7e46      	ldrb	r6, [r0, #25]
c0de598e:	7283      	strb	r3, [r0, #10]
c0de5990:	0a1b      	lsrs	r3, r3, #8
c0de5992:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5996:	72c3      	strb	r3, [r0, #11]
c0de5998:	7e83      	ldrb	r3, [r0, #26]
c0de599a:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de599e:	7b4e      	ldrb	r6, [r1, #13]
c0de59a0:	7b09      	ldrb	r1, [r1, #12]
c0de59a2:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de59a6:	ea4c 260e 	orr.w	r6, ip, lr, lsl #8
c0de59aa:	4431      	add	r1, r6
c0de59ac:	e110      	b.n	c0de5bd0 <compute_position+0x3c8>
c0de59ae:	7e03      	ldrb	r3, [r0, #24]
c0de59b0:	7dc4      	ldrb	r4, [r0, #23]
c0de59b2:	7a8e      	ldrb	r6, [r1, #10]
c0de59b4:	7acf      	ldrb	r7, [r1, #11]
c0de59b6:	794d      	ldrb	r5, [r1, #5]
c0de59b8:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de59bc:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de59c0:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de59c4:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de59c8:	790c      	ldrb	r4, [r1, #4]
c0de59ca:	7947      	ldrb	r7, [r0, #5]
c0de59cc:	4433      	add	r3, r6
c0de59ce:	7906      	ldrb	r6, [r0, #4]
c0de59d0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de59d4:	2502      	movs	r5, #2
c0de59d6:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de59da:	1ba4      	subs	r4, r4, r6
c0de59dc:	fb94 f4f5 	sdiv	r4, r4, r5
c0de59e0:	4423      	add	r3, r4
c0de59e2:	e011      	b.n	c0de5a08 <compute_position+0x200>
c0de59e4:	f000 fa21 	bl	c0de5e2a <OUTLINED_FUNCTION_7>
c0de59e8:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de59ec:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de59f0:	7904      	ldrb	r4, [r0, #4]
c0de59f2:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de59f6:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de59fa:	794d      	ldrb	r5, [r1, #5]
c0de59fc:	4423      	add	r3, r4
c0de59fe:	790c      	ldrb	r4, [r1, #4]
c0de5a00:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5a04:	4434      	add	r4, r6
c0de5a06:	1ae3      	subs	r3, r4, r3
c0de5a08:	7283      	strb	r3, [r0, #10]
c0de5a0a:	0a1b      	lsrs	r3, r3, #8
c0de5a0c:	7e44      	ldrb	r4, [r0, #25]
c0de5a0e:	72c3      	strb	r3, [r0, #11]
c0de5a10:	7b4b      	ldrb	r3, [r1, #13]
c0de5a12:	7b09      	ldrb	r1, [r1, #12]
c0de5a14:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5a18:	7e83      	ldrb	r3, [r0, #26]
c0de5a1a:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5a1e:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de5a22:	4423      	add	r3, r4
c0de5a24:	1ac9      	subs	r1, r1, r3
c0de5a26:	e163      	b.n	c0de5cf0 <compute_position+0x4e8>
c0de5a28:	f000 f9ff 	bl	c0de5e2a <OUTLINED_FUNCTION_7>
c0de5a2c:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5a30:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5a34:	7904      	ldrb	r4, [r0, #4]
c0de5a36:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5a3a:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5a3e:	79cd      	ldrb	r5, [r1, #7]
c0de5a40:	4423      	add	r3, r4
c0de5a42:	798c      	ldrb	r4, [r1, #6]
c0de5a44:	1af3      	subs	r3, r6, r3
c0de5a46:	7e46      	ldrb	r6, [r0, #25]
c0de5a48:	7283      	strb	r3, [r0, #10]
c0de5a4a:	0a1b      	lsrs	r3, r3, #8
c0de5a4c:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5a50:	72c3      	strb	r3, [r0, #11]
c0de5a52:	7b4b      	ldrb	r3, [r1, #13]
c0de5a54:	7b09      	ldrb	r1, [r1, #12]
c0de5a56:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5a5a:	7e83      	ldrb	r3, [r0, #26]
c0de5a5c:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5a60:	4419      	add	r1, r3
c0de5a62:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de5a66:	e13e      	b.n	c0de5ce6 <compute_position+0x4de>
c0de5a68:	f000 f9f3 	bl	c0de5e52 <OUTLINED_FUNCTION_10>
c0de5a6c:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de5a70:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5a74:	790c      	ldrb	r4, [r1, #4]
c0de5a76:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5a7a:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5a7e:	79c5      	ldrb	r5, [r0, #7]
c0de5a80:	4423      	add	r3, r4
c0de5a82:	7984      	ldrb	r4, [r0, #6]
c0de5a84:	4433      	add	r3, r6
c0de5a86:	7e46      	ldrb	r6, [r0, #25]
c0de5a88:	7283      	strb	r3, [r0, #10]
c0de5a8a:	0a1b      	lsrs	r3, r3, #8
c0de5a8c:	72c3      	strb	r3, [r0, #11]
c0de5a8e:	7b4b      	ldrb	r3, [r1, #13]
c0de5a90:	7b09      	ldrb	r1, [r1, #12]
c0de5a92:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5a96:	7e83      	ldrb	r3, [r0, #26]
c0de5a98:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5a9c:	4419      	add	r1, r3
c0de5a9e:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
c0de5aa2:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de5aa6:	e11e      	b.n	c0de5ce6 <compute_position+0x4de>
c0de5aa8:	7a8d      	ldrb	r5, [r1, #10]
c0de5aaa:	7ace      	ldrb	r6, [r1, #11]
c0de5aac:	7e07      	ldrb	r7, [r0, #24]
c0de5aae:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5ab2:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de5ab6:	7e43      	ldrb	r3, [r0, #25]
c0de5ab8:	7e84      	ldrb	r4, [r0, #26]
c0de5aba:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5abe:	7dc6      	ldrb	r6, [r0, #23]
c0de5ac0:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5ac4:	4435      	add	r5, r6
c0de5ac6:	7285      	strb	r5, [r0, #10]
c0de5ac8:	0a2d      	lsrs	r5, r5, #8
c0de5aca:	72c5      	strb	r5, [r0, #11]
c0de5acc:	7b4d      	ldrb	r5, [r1, #13]
c0de5ace:	7b09      	ldrb	r1, [r1, #12]
c0de5ad0:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de5ad4:	ea4c 250e 	orr.w	r5, ip, lr, lsl #8
c0de5ad8:	4429      	add	r1, r5
c0de5ada:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5ade:	e106      	b.n	c0de5cee <compute_position+0x4e6>
c0de5ae0:	7acb      	ldrb	r3, [r1, #11]
c0de5ae2:	7a8c      	ldrb	r4, [r1, #10]
c0de5ae4:	7dc6      	ldrb	r6, [r0, #23]
c0de5ae6:	7e07      	ldrb	r7, [r0, #24]
c0de5ae8:	7945      	ldrb	r5, [r0, #5]
c0de5aea:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5aee:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5af2:	7904      	ldrb	r4, [r0, #4]
c0de5af4:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5af8:	79cf      	ldrb	r7, [r1, #7]
c0de5afa:	4433      	add	r3, r6
c0de5afc:	794e      	ldrb	r6, [r1, #5]
c0de5afe:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5b02:	790d      	ldrb	r5, [r1, #4]
c0de5b04:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5b08:	1b2c      	subs	r4, r5, r4
c0de5b0a:	2502      	movs	r5, #2
c0de5b0c:	fb94 f4f5 	sdiv	r4, r4, r5
c0de5b10:	4423      	add	r3, r4
c0de5b12:	e015      	b.n	c0de5b40 <compute_position+0x338>
c0de5b14:	7903      	ldrb	r3, [r0, #4]
c0de5b16:	7944      	ldrb	r4, [r0, #5]
c0de5b18:	7dc5      	ldrb	r5, [r0, #23]
c0de5b1a:	7e06      	ldrb	r6, [r0, #24]
c0de5b1c:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5b20:	79cf      	ldrb	r7, [r1, #7]
c0de5b22:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5b26:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5b2a:	7acc      	ldrb	r4, [r1, #11]
c0de5b2c:	794e      	ldrb	r6, [r1, #5]
c0de5b2e:	442b      	add	r3, r5
c0de5b30:	7a8d      	ldrb	r5, [r1, #10]
c0de5b32:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de5b36:	790d      	ldrb	r5, [r1, #4]
c0de5b38:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5b3c:	442c      	add	r4, r5
c0de5b3e:	1ae3      	subs	r3, r4, r3
c0de5b40:	7283      	strb	r3, [r0, #10]
c0de5b42:	0a1b      	lsrs	r3, r3, #8
c0de5b44:	7e44      	ldrb	r4, [r0, #25]
c0de5b46:	72c3      	strb	r3, [r0, #11]
c0de5b48:	7e83      	ldrb	r3, [r0, #26]
c0de5b4a:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5b4e:	7b4c      	ldrb	r4, [r1, #13]
c0de5b50:	7b09      	ldrb	r1, [r1, #12]
c0de5b52:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
c0de5b56:	ea4c 2407 	orr.w	r4, ip, r7, lsl #8
c0de5b5a:	4421      	add	r1, r4
c0de5b5c:	e0c7      	b.n	c0de5cee <compute_position+0x4e6>
c0de5b5e:	7903      	ldrb	r3, [r0, #4]
c0de5b60:	7944      	ldrb	r4, [r0, #5]
c0de5b62:	7dc5      	ldrb	r5, [r0, #23]
c0de5b64:	7e06      	ldrb	r6, [r0, #24]
c0de5b66:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5b6a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5b6e:	7a8c      	ldrb	r4, [r1, #10]
c0de5b70:	7b0e      	ldrb	r6, [r1, #12]
c0de5b72:	442b      	add	r3, r5
c0de5b74:	7acd      	ldrb	r5, [r1, #11]
c0de5b76:	7b49      	ldrb	r1, [r1, #13]
c0de5b78:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5b7c:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de5b80:	1ae3      	subs	r3, r4, r3
c0de5b82:	7e44      	ldrb	r4, [r0, #25]
c0de5b84:	7283      	strb	r3, [r0, #10]
c0de5b86:	0a1b      	lsrs	r3, r3, #8
c0de5b88:	72c3      	strb	r3, [r0, #11]
c0de5b8a:	7e83      	ldrb	r3, [r0, #26]
c0de5b8c:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5b90:	e0ad      	b.n	c0de5cee <compute_position+0x4e6>
c0de5b92:	f000 f94a 	bl	c0de5e2a <OUTLINED_FUNCTION_7>
c0de5b96:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5b9a:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5b9e:	7904      	ldrb	r4, [r0, #4]
c0de5ba0:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5ba4:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5ba8:	79cd      	ldrb	r5, [r1, #7]
c0de5baa:	4423      	add	r3, r4
c0de5bac:	798c      	ldrb	r4, [r1, #6]
c0de5bae:	1af3      	subs	r3, r6, r3
c0de5bb0:	7e46      	ldrb	r6, [r0, #25]
c0de5bb2:	7283      	strb	r3, [r0, #10]
c0de5bb4:	0a1b      	lsrs	r3, r3, #8
c0de5bb6:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5bba:	72c3      	strb	r3, [r0, #11]
c0de5bbc:	7e83      	ldrb	r3, [r0, #26]
c0de5bbe:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5bc2:	7b4e      	ldrb	r6, [r1, #13]
c0de5bc4:	7b09      	ldrb	r1, [r1, #12]
c0de5bc6:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de5bca:	4421      	add	r1, r4
c0de5bcc:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de5bd0:	1b09      	subs	r1, r1, r4
c0de5bd2:	e08c      	b.n	c0de5cee <compute_position+0x4e6>
c0de5bd4:	790b      	ldrb	r3, [r1, #4]
c0de5bd6:	794c      	ldrb	r4, [r1, #5]
c0de5bd8:	7a8d      	ldrb	r5, [r1, #10]
c0de5bda:	7ace      	ldrb	r6, [r1, #11]
c0de5bdc:	7e87      	ldrb	r7, [r0, #26]
c0de5bde:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5be2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5be6:	7dc4      	ldrb	r4, [r0, #23]
c0de5be8:	7e46      	ldrb	r6, [r0, #25]
c0de5bea:	442b      	add	r3, r5
c0de5bec:	7e05      	ldrb	r5, [r0, #24]
c0de5bee:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5bf2:	4423      	add	r3, r4
c0de5bf4:	7283      	strb	r3, [r0, #10]
c0de5bf6:	0a1b      	lsrs	r3, r3, #8
c0de5bf8:	72c3      	strb	r3, [r0, #11]
c0de5bfa:	7b4b      	ldrb	r3, [r1, #13]
c0de5bfc:	7b09      	ldrb	r1, [r1, #12]
c0de5bfe:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5c02:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de5c06:	e072      	b.n	c0de5cee <compute_position+0x4e6>
c0de5c08:	f000 f8c9 	bl	c0de5d9e <OUTLINED_FUNCTION_2>
c0de5c0c:	1a59      	subs	r1, r3, r1
c0de5c0e:	7e43      	ldrb	r3, [r0, #25]
c0de5c10:	7281      	strb	r1, [r0, #10]
c0de5c12:	0a09      	lsrs	r1, r1, #8
c0de5c14:	72c1      	strb	r1, [r0, #11]
c0de5c16:	7e81      	ldrb	r1, [r0, #26]
c0de5c18:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5c1c:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de5c20:	4419      	add	r1, r3
c0de5c22:	ea47 2305 	orr.w	r3, r7, r5, lsl #8
c0de5c26:	e0a4      	b.n	c0de5d72 <compute_position+0x56a>
c0de5c28:	7901      	ldrb	r1, [r0, #4]
c0de5c2a:	7943      	ldrb	r3, [r0, #5]
c0de5c2c:	7956      	ldrb	r6, [r2, #5]
c0de5c2e:	7dc4      	ldrb	r4, [r0, #23]
c0de5c30:	7e05      	ldrb	r5, [r0, #24]
c0de5c32:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5c36:	7913      	ldrb	r3, [r2, #4]
c0de5c38:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de5c3c:	1a59      	subs	r1, r3, r1
c0de5c3e:	2302      	movs	r3, #2
c0de5c40:	fb91 f1f3 	sdiv	r1, r1, r3
c0de5c44:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
c0de5c48:	4419      	add	r1, r3
c0de5c4a:	e00d      	b.n	c0de5c68 <compute_position+0x460>
c0de5c4c:	7901      	ldrb	r1, [r0, #4]
c0de5c4e:	7943      	ldrb	r3, [r0, #5]
c0de5c50:	7dc4      	ldrb	r4, [r0, #23]
c0de5c52:	7e05      	ldrb	r5, [r0, #24]
c0de5c54:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5c58:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5c5c:	7913      	ldrb	r3, [r2, #4]
c0de5c5e:	4421      	add	r1, r4
c0de5c60:	7954      	ldrb	r4, [r2, #5]
c0de5c62:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5c66:	1a59      	subs	r1, r3, r1
c0de5c68:	7281      	strb	r1, [r0, #10]
c0de5c6a:	0a09      	lsrs	r1, r1, #8
c0de5c6c:	7e43      	ldrb	r3, [r0, #25]
c0de5c6e:	72c1      	strb	r1, [r0, #11]
c0de5c70:	7e81      	ldrb	r1, [r0, #26]
c0de5c72:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5c76:	e03b      	b.n	c0de5cf0 <compute_position+0x4e8>
c0de5c78:	f000 f8af 	bl	c0de5dda <OUTLINED_FUNCTION_4>
c0de5c7c:	79d5      	ldrb	r5, [r2, #7]
c0de5c7e:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de5c82:	1a59      	subs	r1, r3, r1
c0de5c84:	2302      	movs	r3, #2
c0de5c86:	fb91 f1f3 	sdiv	r1, r1, r3
c0de5c8a:	4421      	add	r1, r4
c0de5c8c:	e030      	b.n	c0de5cf0 <compute_position+0x4e8>
c0de5c8e:	f000 f8d4 	bl	c0de5e3a <OUTLINED_FUNCTION_8>
c0de5c92:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5c96:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5c9a:	7903      	ldrb	r3, [r0, #4]
c0de5c9c:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5ca0:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5ca4:	7914      	ldrb	r4, [r2, #4]
c0de5ca6:	ea44 2407 	orr.w	r4, r4, r7, lsl #8
c0de5caa:	1ae3      	subs	r3, r4, r3
c0de5cac:	2402      	movs	r4, #2
c0de5cae:	fb93 f3f4 	sdiv	r3, r3, r4
c0de5cb2:	4419      	add	r1, r3
c0de5cb4:	7e43      	ldrb	r3, [r0, #25]
c0de5cb6:	7281      	strb	r1, [r0, #10]
c0de5cb8:	0a09      	lsrs	r1, r1, #8
c0de5cba:	72c1      	strb	r1, [r0, #11]
c0de5cbc:	7e81      	ldrb	r1, [r0, #26]
c0de5cbe:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5cc2:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de5cc6:	1aeb      	subs	r3, r5, r3
c0de5cc8:	e00f      	b.n	c0de5cea <compute_position+0x4e2>
c0de5cca:	f000 f868 	bl	c0de5d9e <OUTLINED_FUNCTION_2>
c0de5cce:	ea47 2405 	orr.w	r4, r7, r5, lsl #8
c0de5cd2:	1a59      	subs	r1, r3, r1
c0de5cd4:	7e43      	ldrb	r3, [r0, #25]
c0de5cd6:	7281      	strb	r1, [r0, #10]
c0de5cd8:	0a09      	lsrs	r1, r1, #8
c0de5cda:	72c1      	strb	r1, [r0, #11]
c0de5cdc:	7e81      	ldrb	r1, [r0, #26]
c0de5cde:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5ce2:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de5ce6:	1ae3      	subs	r3, r4, r3
c0de5ce8:	2402      	movs	r4, #2
c0de5cea:	fb93 f3f4 	sdiv	r3, r3, r4
c0de5cee:	4419      	add	r1, r3
c0de5cf0:	7301      	strb	r1, [r0, #12]
c0de5cf2:	0a09      	lsrs	r1, r1, #8
c0de5cf4:	7341      	strb	r1, [r0, #13]
c0de5cf6:	b1ba      	cbz	r2, c0de5d28 <compute_position+0x520>
c0de5cf8:	7811      	ldrb	r1, [r2, #0]
c0de5cfa:	7853      	ldrb	r3, [r2, #1]
c0de5cfc:	7ac5      	ldrb	r5, [r0, #11]
c0de5cfe:	7894      	ldrb	r4, [r2, #2]
c0de5d00:	78d2      	ldrb	r2, [r2, #3]
c0de5d02:	7b06      	ldrb	r6, [r0, #12]
c0de5d04:	7b47      	ldrb	r7, [r0, #13]
c0de5d06:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5d0a:	7a83      	ldrb	r3, [r0, #10]
c0de5d0c:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de5d10:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de5d14:	4419      	add	r1, r3
c0de5d16:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de5d1a:	7001      	strb	r1, [r0, #0]
c0de5d1c:	441a      	add	r2, r3
c0de5d1e:	0a09      	lsrs	r1, r1, #8
c0de5d20:	7041      	strb	r1, [r0, #1]
c0de5d22:	0a11      	lsrs	r1, r2, #8
c0de5d24:	7082      	strb	r2, [r0, #2]
c0de5d26:	70c1      	strb	r1, [r0, #3]
c0de5d28:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5d2a:	f000 f856 	bl	c0de5dda <OUTLINED_FUNCTION_4>
c0de5d2e:	4421      	add	r1, r4
c0de5d30:	79d4      	ldrb	r4, [r2, #7]
c0de5d32:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5d36:	e01c      	b.n	c0de5d72 <compute_position+0x56a>
c0de5d38:	f000 f87f 	bl	c0de5e3a <OUTLINED_FUNCTION_8>
c0de5d3c:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5d40:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5d44:	7903      	ldrb	r3, [r0, #4]
c0de5d46:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5d4a:	7914      	ldrb	r4, [r2, #4]
c0de5d4c:	ea44 2407 	orr.w	r4, r4, r7, lsl #8
c0de5d50:	1ae3      	subs	r3, r4, r3
c0de5d52:	2402      	movs	r4, #2
c0de5d54:	fb93 f3f4 	sdiv	r3, r3, r4
c0de5d58:	4419      	add	r1, r3
c0de5d5a:	7e43      	ldrb	r3, [r0, #25]
c0de5d5c:	7281      	strb	r1, [r0, #10]
c0de5d5e:	0a09      	lsrs	r1, r1, #8
c0de5d60:	72c1      	strb	r1, [r0, #11]
c0de5d62:	7e81      	ldrb	r1, [r0, #26]
c0de5d64:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5d68:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de5d6c:	4419      	add	r1, r3
c0de5d6e:	ea45 2306 	orr.w	r3, r5, r6, lsl #8
c0de5d72:	1a59      	subs	r1, r3, r1
c0de5d74:	e7bc      	b.n	c0de5cf0 <compute_position+0x4e8>

c0de5d76 <OUTLINED_FUNCTION_0>:
c0de5d76:	7842      	ldrb	r2, [r0, #1]
c0de5d78:	7883      	ldrb	r3, [r0, #2]
c0de5d7a:	78c0      	ldrb	r0, [r0, #3]
c0de5d7c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5d80:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5d84:	ea41 4500 	orr.w	r5, r1, r0, lsl #16
c0de5d88:	4770      	bx	lr

c0de5d8a <OUTLINED_FUNCTION_1>:
c0de5d8a:	7842      	ldrb	r2, [r0, #1]
c0de5d8c:	7883      	ldrb	r3, [r0, #2]
c0de5d8e:	78c0      	ldrb	r0, [r0, #3]
c0de5d90:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5d94:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5d98:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de5d9c:	4770      	bx	lr

c0de5d9e <OUTLINED_FUNCTION_2>:
c0de5d9e:	7e01      	ldrb	r1, [r0, #24]
c0de5da0:	7dc3      	ldrb	r3, [r0, #23]
c0de5da2:	7944      	ldrb	r4, [r0, #5]
c0de5da4:	7997      	ldrb	r7, [r2, #6]
c0de5da6:	79d5      	ldrb	r5, [r2, #7]
c0de5da8:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de5dac:	79c6      	ldrb	r6, [r0, #7]
c0de5dae:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5db2:	7903      	ldrb	r3, [r0, #4]
c0de5db4:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5db8:	7954      	ldrb	r4, [r2, #5]
c0de5dba:	4419      	add	r1, r3
c0de5dbc:	7913      	ldrb	r3, [r2, #4]
c0de5dbe:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5dc2:	4770      	bx	lr

c0de5dc4 <OUTLINED_FUNCTION_3>:
c0de5dc4:	7842      	ldrb	r2, [r0, #1]
c0de5dc6:	7883      	ldrb	r3, [r0, #2]
c0de5dc8:	78c0      	ldrb	r0, [r0, #3]
c0de5dca:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5dce:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5dd2:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de5dd6:	2900      	cmp	r1, #0
c0de5dd8:	4770      	bx	lr

c0de5dda <OUTLINED_FUNCTION_4>:
c0de5dda:	7dc4      	ldrb	r4, [r0, #23]
c0de5ddc:	7e05      	ldrb	r5, [r0, #24]
c0de5dde:	7981      	ldrb	r1, [r0, #6]
c0de5de0:	79c3      	ldrb	r3, [r0, #7]
c0de5de2:	72c5      	strb	r5, [r0, #11]
c0de5de4:	7284      	strb	r4, [r0, #10]
c0de5de6:	7e84      	ldrb	r4, [r0, #26]
c0de5de8:	7e45      	ldrb	r5, [r0, #25]
c0de5dea:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5dee:	7993      	ldrb	r3, [r2, #6]
c0de5df0:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de5df4:	4770      	bx	lr

c0de5df6 <OUTLINED_FUNCTION_5>:
c0de5df6:	4620      	mov	r0, r4
c0de5df8:	f810 1f2d 	ldrb.w	r1, [r0, #45]!
c0de5dfc:	7842      	ldrb	r2, [r0, #1]
c0de5dfe:	7883      	ldrb	r3, [r0, #2]
c0de5e00:	78c0      	ldrb	r0, [r0, #3]
c0de5e02:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5e06:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5e0a:	ea41 4300 	orr.w	r3, r1, r0, lsl #16
c0de5e0e:	2b00      	cmp	r3, #0
c0de5e10:	4770      	bx	lr

c0de5e12 <OUTLINED_FUNCTION_6>:
c0de5e12:	217f      	movs	r1, #127	@ 0x7f
c0de5e14:	2201      	movs	r2, #1
c0de5e16:	f829 1000 	strh.w	r1, [r9, r0]
c0de5e1a:	4448      	add	r0, r9
c0de5e1c:	2100      	movs	r1, #0
c0de5e1e:	8081      	strh	r1, [r0, #4]
c0de5e20:	80c1      	strh	r1, [r0, #6]
c0de5e22:	213f      	movs	r1, #63	@ 0x3f
c0de5e24:	7242      	strb	r2, [r0, #9]
c0de5e26:	8041      	strh	r1, [r0, #2]
c0de5e28:	4770      	bx	lr

c0de5e2a <OUTLINED_FUNCTION_7>:
c0de5e2a:	7e03      	ldrb	r3, [r0, #24]
c0de5e2c:	7dc4      	ldrb	r4, [r0, #23]
c0de5e2e:	7945      	ldrb	r5, [r0, #5]
c0de5e30:	7a8e      	ldrb	r6, [r1, #10]
c0de5e32:	7acf      	ldrb	r7, [r1, #11]
c0de5e34:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de5e38:	4770      	bx	lr

c0de5e3a <OUTLINED_FUNCTION_8>:
c0de5e3a:	7e01      	ldrb	r1, [r0, #24]
c0de5e3c:	7dc3      	ldrb	r3, [r0, #23]
c0de5e3e:	7944      	ldrb	r4, [r0, #5]
c0de5e40:	7957      	ldrb	r7, [r2, #5]
c0de5e42:	7995      	ldrb	r5, [r2, #6]
c0de5e44:	79d6      	ldrb	r6, [r2, #7]
c0de5e46:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de5e4a:	4770      	bx	lr

c0de5e4c <OUTLINED_FUNCTION_9>:
c0de5e4c:	4620      	mov	r0, r4
c0de5e4e:	f7ff bcdb 	b.w	c0de5808 <compute_position>

c0de5e52 <OUTLINED_FUNCTION_10>:
c0de5e52:	7acb      	ldrb	r3, [r1, #11]
c0de5e54:	7a8c      	ldrb	r4, [r1, #10]
c0de5e56:	794d      	ldrb	r5, [r1, #5]
c0de5e58:	7dc6      	ldrb	r6, [r0, #23]
c0de5e5a:	7e07      	ldrb	r7, [r0, #24]
c0de5e5c:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5e60:	4770      	bx	lr

c0de5e62 <OUTLINED_FUNCTION_11>:
c0de5e62:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5e66:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de5e6a:	2e00      	cmp	r6, #0
c0de5e6c:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5e70:	4770      	bx	lr

c0de5e72 <OUTLINED_FUNCTION_12>:
c0de5e72:	4620      	mov	r0, r4
c0de5e74:	f810 1f0e 	ldrb.w	r1, [r0, #14]!
c0de5e78:	7842      	ldrb	r2, [r0, #1]
c0de5e7a:	7883      	ldrb	r3, [r0, #2]
c0de5e7c:	78c5      	ldrb	r5, [r0, #3]
c0de5e7e:	4770      	bx	lr

c0de5e80 <OUTLINED_FUNCTION_13>:
c0de5e80:	0e29      	lsrs	r1, r5, #24
c0de5e82:	70c1      	strb	r1, [r0, #3]
c0de5e84:	0c29      	lsrs	r1, r5, #16
c0de5e86:	7081      	strb	r1, [r0, #2]
c0de5e88:	0a29      	lsrs	r1, r5, #8
c0de5e8a:	7041      	strb	r1, [r0, #1]
c0de5e8c:	4770      	bx	lr

c0de5e8e <OUTLINED_FUNCTION_14>:
c0de5e8e:	7fe0      	ldrb	r0, [r4, #31]
c0de5e90:	f8bd 2008 	ldrh.w	r2, [sp, #8]
c0de5e94:	4629      	mov	r1, r5
c0de5e96:	4633      	mov	r3, r6
c0de5e98:	9000      	str	r0, [sp, #0]
c0de5e9a:	4770      	bx	lr

c0de5e9c <nbgl_objPoolRelease>:
c0de5e9c:	b5b0      	push	{r4, r5, r7, lr}
c0de5e9e:	490b      	ldr	r1, [pc, #44]	@ (c0de5ecc <nbgl_objPoolRelease+0x30>)
c0de5ea0:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de5ea4:	b182      	cbz	r2, c0de5ec8 <nbgl_objPoolRelease+0x2c>
c0de5ea6:	2303      	movs	r3, #3
c0de5ea8:	24ff      	movs	r4, #255	@ 0xff
c0de5eaa:	2b2b      	cmp	r3, #43	@ 0x2b
c0de5eac:	d00c      	beq.n	c0de5ec8 <nbgl_objPoolRelease+0x2c>
c0de5eae:	eb09 0501 	add.w	r5, r9, r1
c0de5eb2:	5ced      	ldrb	r5, [r5, r3]
c0de5eb4:	4285      	cmp	r5, r0
c0de5eb6:	d105      	bne.n	c0de5ec4 <nbgl_objPoolRelease+0x28>
c0de5eb8:	3a01      	subs	r2, #1
c0de5eba:	eb09 0501 	add.w	r5, r9, r1
c0de5ebe:	f809 2001 	strb.w	r2, [r9, r1]
c0de5ec2:	54ec      	strb	r4, [r5, r3]
c0de5ec4:	3301      	adds	r3, #1
c0de5ec6:	e7f0      	b.n	c0de5eaa <nbgl_objPoolRelease+0xe>
c0de5ec8:	bdb0      	pop	{r4, r5, r7, pc}
c0de5eca:	bf00      	nop
c0de5ecc:	000014e0 	.word	0x000014e0

c0de5ed0 <nbgl_objPoolGet>:
c0de5ed0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5ed4:	4f1a      	ldr	r7, [pc, #104]	@ (c0de5f40 <nbgl_objPoolGet+0x70>)
c0de5ed6:	4680      	mov	r8, r0
c0de5ed8:	468a      	mov	sl, r1
c0de5eda:	eb09 0007 	add.w	r0, r9, r7
c0de5ede:	7840      	ldrb	r0, [r0, #1]
c0de5ee0:	b938      	cbnz	r0, c0de5ef2 <nbgl_objPoolGet+0x22>
c0de5ee2:	eb09 0407 	add.w	r4, r9, r7
c0de5ee6:	f000 f8a3 	bl	c0de6030 <OUTLINED_FUNCTION_1>
c0de5eea:	f000 f89b 	bl	c0de6024 <OUTLINED_FUNCTION_0>
c0de5eee:	2001      	movs	r0, #1
c0de5ef0:	7060      	strb	r0, [r4, #1]
c0de5ef2:	f819 4007 	ldrb.w	r4, [r9, r7]
c0de5ef6:	2c27      	cmp	r4, #39	@ 0x27
c0de5ef8:	d101      	bne.n	c0de5efe <nbgl_objPoolGet+0x2e>
c0de5efa:	2600      	movs	r6, #0
c0de5efc:	e01c      	b.n	c0de5f38 <nbgl_objPoolGet+0x68>
c0de5efe:	eb09 0007 	add.w	r0, r9, r7
c0de5f02:	1c85      	adds	r5, r0, #2
c0de5f04:	2000      	movs	r0, #0
c0de5f06:	f5b0 6ff5 	cmp.w	r0, #1960	@ 0x7a8
c0de5f0a:	d0f6      	beq.n	c0de5efa <nbgl_objPoolGet+0x2a>
c0de5f0c:	f815 1f01 	ldrb.w	r1, [r5, #1]!
c0de5f10:	3031      	adds	r0, #49	@ 0x31
c0de5f12:	29ff      	cmp	r1, #255	@ 0xff
c0de5f14:	d1f7      	bne.n	c0de5f06 <nbgl_objPoolGet+0x36>
c0de5f16:	490b      	ldr	r1, [pc, #44]	@ (c0de5f44 <nbgl_objPoolGet+0x74>)
c0de5f18:	4449      	add	r1, r9
c0de5f1a:	eb01 0b00 	add.w	fp, r1, r0
c0de5f1e:	2131      	movs	r1, #49	@ 0x31
c0de5f20:	f1ab 0631 	sub.w	r6, fp, #49	@ 0x31
c0de5f24:	4630      	mov	r0, r6
c0de5f26:	f005 f8f1 	bl	c0deb10c <__aeabi_memclr>
c0de5f2a:	1c60      	adds	r0, r4, #1
c0de5f2c:	f885 a000 	strb.w	sl, [r5]
c0de5f30:	f80b 8c16 	strb.w	r8, [fp, #-22]
c0de5f34:	f809 0007 	strb.w	r0, [r9, r7]
c0de5f38:	4630      	mov	r0, r6
c0de5f3a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5f3e:	bf00      	nop
c0de5f40:	000014e0 	.word	0x000014e0
c0de5f44:	00000c35 	.word	0x00000c35

c0de5f48 <nbgl_containerPoolRelease>:
c0de5f48:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5f4a:	4910      	ldr	r1, [pc, #64]	@ (c0de5f8c <nbgl_containerPoolRelease+0x44>)
c0de5f4c:	eb09 0201 	add.w	r2, r9, r1
c0de5f50:	7892      	ldrb	r2, [r2, #2]
c0de5f52:	b1ca      	cbz	r2, c0de5f88 <nbgl_containerPoolRelease+0x40>
c0de5f54:	4c0e      	ldr	r4, [pc, #56]	@ (c0de5f90 <nbgl_containerPoolRelease+0x48>)
c0de5f56:	2300      	movs	r3, #0
c0de5f58:	25ff      	movs	r5, #255	@ 0xff
c0de5f5a:	2600      	movs	r6, #0
c0de5f5c:	2e40      	cmp	r6, #64	@ 0x40
c0de5f5e:	d013      	beq.n	c0de5f88 <nbgl_containerPoolRelease+0x40>
c0de5f60:	eb09 0701 	add.w	r7, r9, r1
c0de5f64:	4437      	add	r7, r6
c0de5f66:	f897 702b 	ldrb.w	r7, [r7, #43]	@ 0x2b
c0de5f6a:	4287      	cmp	r7, r0
c0de5f6c:	d10a      	bne.n	c0de5f84 <nbgl_containerPoolRelease+0x3c>
c0de5f6e:	eb09 0704 	add.w	r7, r9, r4
c0de5f72:	3a01      	subs	r2, #1
c0de5f74:	f847 3026 	str.w	r3, [r7, r6, lsl #2]
c0de5f78:	eb09 0701 	add.w	r7, r9, r1
c0de5f7c:	70ba      	strb	r2, [r7, #2]
c0de5f7e:	4437      	add	r7, r6
c0de5f80:	f887 502b 	strb.w	r5, [r7, #43]	@ 0x2b
c0de5f84:	3601      	adds	r6, #1
c0de5f86:	e7e9      	b.n	c0de5f5c <nbgl_containerPoolRelease+0x14>
c0de5f88:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5f8a:	bf00      	nop
c0de5f8c:	000014e0 	.word	0x000014e0
c0de5f90:	000013e0 	.word	0x000013e0

c0de5f94 <nbgl_containerPoolGet>:
c0de5f94:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5f98:	f8df a080 	ldr.w	sl, [pc, #128]	@ c0de601c <nbgl_containerPoolGet+0x88>
c0de5f9c:	4605      	mov	r5, r0
c0de5f9e:	4688      	mov	r8, r1
c0de5fa0:	eb09 000a 	add.w	r0, r9, sl
c0de5fa4:	7840      	ldrb	r0, [r0, #1]
c0de5fa6:	b938      	cbnz	r0, c0de5fb8 <nbgl_containerPoolGet+0x24>
c0de5fa8:	eb09 040a 	add.w	r4, r9, sl
c0de5fac:	f000 f840 	bl	c0de6030 <OUTLINED_FUNCTION_1>
c0de5fb0:	f000 f838 	bl	c0de6024 <OUTLINED_FUNCTION_0>
c0de5fb4:	2001      	movs	r0, #1
c0de5fb6:	7060      	strb	r0, [r4, #1]
c0de5fb8:	eb09 000a 	add.w	r0, r9, sl
c0de5fbc:	2600      	movs	r6, #0
c0de5fbe:	7880      	ldrb	r0, [r0, #2]
c0de5fc0:	1944      	adds	r4, r0, r5
c0de5fc2:	2c3e      	cmp	r4, #62	@ 0x3e
c0de5fc4:	d826      	bhi.n	c0de6014 <nbgl_containerPoolGet+0x80>
c0de5fc6:	eb09 000a 	add.w	r0, r9, sl
c0de5fca:	f100 072b 	add.w	r7, r0, #43	@ 0x2b
c0de5fce:	2000      	movs	r0, #0
c0de5fd0:	f5b6 7f80 	cmp.w	r6, #256	@ 0x100
c0de5fd4:	d01d      	beq.n	c0de6012 <nbgl_containerPoolGet+0x7e>
c0de5fd6:	f817 1b01 	ldrb.w	r1, [r7], #1
c0de5fda:	29ff      	cmp	r1, #255	@ 0xff
c0de5fdc:	f04f 0100 	mov.w	r1, #0
c0de5fe0:	bf08      	it	eq
c0de5fe2:	1c41      	addeq	r1, r0, #1
c0de5fe4:	b2c8      	uxtb	r0, r1
c0de5fe6:	3604      	adds	r6, #4
c0de5fe8:	42a8      	cmp	r0, r5
c0de5fea:	4608      	mov	r0, r1
c0de5fec:	d1f0      	bne.n	c0de5fd0 <nbgl_containerPoolGet+0x3c>
c0de5fee:	480c      	ldr	r0, [pc, #48]	@ (c0de6020 <nbgl_containerPoolGet+0x8c>)
c0de5ff0:	00a9      	lsls	r1, r5, #2
c0de5ff2:	4448      	add	r0, r9
c0de5ff4:	eba0 0085 	sub.w	r0, r0, r5, lsl #2
c0de5ff8:	4406      	add	r6, r0
c0de5ffa:	4630      	mov	r0, r6
c0de5ffc:	f005 f886 	bl	c0deb10c <__aeabi_memclr>
c0de6000:	1b78      	subs	r0, r7, r5
c0de6002:	4629      	mov	r1, r5
c0de6004:	4642      	mov	r2, r8
c0de6006:	f005 f888 	bl	c0deb11a <__aeabi_memset>
c0de600a:	eb09 000a 	add.w	r0, r9, sl
c0de600e:	7084      	strb	r4, [r0, #2]
c0de6010:	e000      	b.n	c0de6014 <nbgl_containerPoolGet+0x80>
c0de6012:	2600      	movs	r6, #0
c0de6014:	4630      	mov	r0, r6
c0de6016:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de601a:	bf00      	nop
c0de601c:	000014e0 	.word	0x000014e0
c0de6020:	000013e0 	.word	0x000013e0

c0de6024 <OUTLINED_FUNCTION_0>:
c0de6024:	f104 002b 	add.w	r0, r4, #43	@ 0x2b
c0de6028:	2140      	movs	r1, #64	@ 0x40
c0de602a:	22ff      	movs	r2, #255	@ 0xff
c0de602c:	f005 b875 	b.w	c0deb11a <__aeabi_memset>

c0de6030 <OUTLINED_FUNCTION_1>:
c0de6030:	2128      	movs	r1, #40	@ 0x28
c0de6032:	22ff      	movs	r2, #255	@ 0xff
c0de6034:	1ce0      	adds	r0, r4, #3
c0de6036:	f005 b870 	b.w	c0deb11a <__aeabi_memset>
	...

c0de603c <nbgl_screenRedraw>:
c0de603c:	b510      	push	{r4, lr}
c0de603e:	4807      	ldr	r0, [pc, #28]	@ (c0de605c <nbgl_screenRedraw+0x20>)
c0de6040:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6044:	b141      	cbz	r1, c0de6058 <nbgl_screenRedraw+0x1c>
c0de6046:	eb09 0400 	add.w	r4, r9, r0
c0de604a:	f004 fcd9 	bl	c0deaa00 <nbgl_screen_reinit>
c0de604e:	6860      	ldr	r0, [r4, #4]
c0de6050:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6054:	f7fe beec 	b.w	c0de4e30 <nbgl_objDraw>
c0de6058:	bd10      	pop	{r4, pc}
c0de605a:	bf00      	nop
c0de605c:	0000164c 	.word	0x0000164c

c0de6060 <nbgl_screenGetTop>:
c0de6060:	4804      	ldr	r0, [pc, #16]	@ (c0de6074 <nbgl_screenGetTop+0x14>)
c0de6062:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6066:	4448      	add	r0, r9
c0de6068:	6840      	ldr	r0, [r0, #4]
c0de606a:	2900      	cmp	r1, #0
c0de606c:	bf08      	it	eq
c0de606e:	4608      	moveq	r0, r1
c0de6070:	4770      	bx	lr
c0de6072:	bf00      	nop
c0de6074:	0000164c 	.word	0x0000164c

c0de6078 <nbgl_screenSet>:
c0de6078:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de607a:	4607      	mov	r7, r0
c0de607c:	480d      	ldr	r0, [pc, #52]	@ (c0de60b4 <nbgl_screenSet+0x3c>)
c0de607e:	460d      	mov	r5, r1
c0de6080:	461e      	mov	r6, r3
c0de6082:	4614      	mov	r4, r2
c0de6084:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6088:	b931      	cbnz	r1, c0de6098 <nbgl_screenSet+0x20>
c0de608a:	2101      	movs	r1, #1
c0de608c:	f809 1000 	strb.w	r1, [r9, r0]
c0de6090:	4909      	ldr	r1, [pc, #36]	@ (c0de60b8 <nbgl_screenSet+0x40>)
c0de6092:	4448      	add	r0, r9
c0de6094:	4449      	add	r1, r9
c0de6096:	6041      	str	r1, [r0, #4]
c0de6098:	2000      	movs	r0, #0
c0de609a:	f7ff feff 	bl	c0de5e9c <nbgl_objPoolRelease>
c0de609e:	2000      	movs	r0, #0
c0de60a0:	f7ff ff52 	bl	c0de5f48 <nbgl_containerPoolRelease>
c0de60a4:	2000      	movs	r0, #0
c0de60a6:	4639      	mov	r1, r7
c0de60a8:	462a      	mov	r2, r5
c0de60aa:	4623      	mov	r3, r4
c0de60ac:	9600      	str	r6, [sp, #0]
c0de60ae:	f000 f805 	bl	c0de60bc <nbgl_screenSetAt>
c0de60b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de60b4:	0000164c 	.word	0x0000164c
c0de60b8:	0000154b 	.word	0x0000154b

c0de60bc <nbgl_screenSetAt>:
c0de60bc:	2803      	cmp	r0, #3
c0de60be:	bf84      	itt	hi
c0de60c0:	f04f 30ff 	movhi.w	r0, #4294967295	@ 0xffffffff
c0de60c4:	4770      	bxhi	lr
c0de60c6:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de60ca:	4604      	mov	r4, r0
c0de60cc:	460f      	mov	r7, r1
c0de60ce:	f8dd a020 	ldr.w	sl, [sp, #32]
c0de60d2:	4610      	mov	r0, r2
c0de60d4:	461d      	mov	r5, r3
c0de60d6:	4616      	mov	r6, r2
c0de60d8:	4621      	mov	r1, r4
c0de60da:	f7ff ff5b 	bl	c0de5f94 <nbgl_containerPoolGet>
c0de60de:	f8df 8104 	ldr.w	r8, [pc, #260]	@ c0de61e4 <nbgl_screenSetAt+0x128>
c0de60e2:	01a3      	lsls	r3, r4, #6
c0de60e4:	2100      	movs	r1, #0
c0de60e6:	eb09 0208 	add.w	r2, r9, r8
c0de60ea:	54d1      	strb	r1, [r2, r3]
c0de60ec:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de60f0:	ea4f 231a 	mov.w	r3, sl, lsr #8
c0de60f4:	6038      	str	r0, [r7, #0]
c0de60f6:	f882 3033 	strb.w	r3, [r2, #51]	@ 0x33
c0de60fa:	0a03      	lsrs	r3, r0, #8
c0de60fc:	f882 6020 	strb.w	r6, [r2, #32]
c0de6100:	ea4f 661a 	mov.w	r6, sl, lsr #24
c0de6104:	71d1      	strb	r1, [r2, #7]
c0de6106:	7151      	strb	r1, [r2, #5]
c0de6108:	7351      	strb	r1, [r2, #13]
c0de610a:	7311      	strb	r1, [r2, #12]
c0de610c:	72d1      	strb	r1, [r2, #11]
c0de610e:	7291      	strb	r1, [r2, #10]
c0de6110:	70d1      	strb	r1, [r2, #3]
c0de6112:	7091      	strb	r1, [r2, #2]
c0de6114:	7051      	strb	r1, [r2, #1]
c0de6116:	76d1      	strb	r1, [r2, #27]
c0de6118:	7211      	strb	r1, [r2, #8]
c0de611a:	f882 403e 	strb.w	r4, [r2, #62]	@ 0x3e
c0de611e:	77d1      	strb	r1, [r2, #31]
c0de6120:	f882 3023 	strb.w	r3, [r2, #35]	@ 0x23
c0de6124:	2340      	movs	r3, #64	@ 0x40
c0de6126:	7193      	strb	r3, [r2, #6]
c0de6128:	2380      	movs	r3, #128	@ 0x80
c0de612a:	7113      	strb	r3, [r2, #4]
c0de612c:	4613      	mov	r3, r2
c0de612e:	f802 0f22 	strb.w	r0, [r2, #34]!
c0de6132:	f803 af32 	strb.w	sl, [r3, #50]!
c0de6136:	70de      	strb	r6, [r3, #3]
c0de6138:	ea4f 461a 	mov.w	r6, sl, lsr #16
c0de613c:	709e      	strb	r6, [r3, #2]
c0de613e:	0e03      	lsrs	r3, r0, #24
c0de6140:	0c00      	lsrs	r0, r0, #16
c0de6142:	70d3      	strb	r3, [r2, #3]
c0de6144:	7090      	strb	r0, [r2, #2]
c0de6146:	b3ad      	cbz	r5, c0de61b4 <nbgl_screenSetAt+0xf8>
c0de6148:	7828      	ldrb	r0, [r5, #0]
c0de614a:	7869      	ldrb	r1, [r5, #1]
c0de614c:	78aa      	ldrb	r2, [r5, #2]
c0de614e:	78eb      	ldrb	r3, [r5, #3]
c0de6150:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6154:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6158:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de615c:	f004 fbd6 	bl	c0dea90c <pic>
c0de6160:	eb09 0108 	add.w	r1, r9, r8
c0de6164:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de6168:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de616c:	f815 2f04 	ldrb.w	r2, [r5, #4]!
c0de6170:	f815 3f04 	ldrb.w	r3, [r5, #4]!
c0de6174:	f815 cc03 	ldrb.w	ip, [r5, #-3]
c0de6178:	f815 7c02 	ldrb.w	r7, [r5, #-2]
c0de617c:	f815 ec01 	ldrb.w	lr, [r5, #-1]
c0de6180:	786e      	ldrb	r6, [r5, #1]
c0de6182:	f801 2f04 	strb.w	r2, [r1, #4]!
c0de6186:	78ea      	ldrb	r2, [r5, #3]
c0de6188:	78ad      	ldrb	r5, [r5, #2]
c0de618a:	f801 3f04 	strb.w	r3, [r1, #4]!
c0de618e:	0e03      	lsrs	r3, r0, #24
c0de6190:	f801 3c05 	strb.w	r3, [r1, #-5]
c0de6194:	0c03      	lsrs	r3, r0, #16
c0de6196:	0a00      	lsrs	r0, r0, #8
c0de6198:	704e      	strb	r6, [r1, #1]
c0de619a:	f801 7c02 	strb.w	r7, [r1, #-2]
c0de619e:	f801 ec01 	strb.w	lr, [r1, #-1]
c0de61a2:	f801 cc03 	strb.w	ip, [r1, #-3]
c0de61a6:	f801 3c06 	strb.w	r3, [r1, #-6]
c0de61aa:	f801 0c07 	strb.w	r0, [r1, #-7]
c0de61ae:	708d      	strb	r5, [r1, #2]
c0de61b0:	70ca      	strb	r2, [r1, #3]
c0de61b2:	e008      	b.n	c0de61c6 <nbgl_screenSetAt+0x10a>
c0de61b4:	eb09 0008 	add.w	r0, r9, r8
c0de61b8:	eb00 1084 	add.w	r0, r0, r4, lsl #6
c0de61bc:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de61c0:	70c1      	strb	r1, [r0, #3]
c0de61c2:	7081      	strb	r1, [r0, #2]
c0de61c4:	7041      	strb	r1, [r0, #1]
c0de61c6:	eb09 0008 	add.w	r0, r9, r8
c0de61ca:	eb00 1484 	add.w	r4, r0, r4, lsl #6
c0de61ce:	f004 fdfd 	bl	c0deadcc <os_sched_current_task>
c0de61d2:	3804      	subs	r0, #4
c0de61d4:	fab0 f080 	clz	r0, r0
c0de61d8:	0940      	lsrs	r0, r0, #5
c0de61da:	f884 003f 	strb.w	r0, [r4, #63]	@ 0x3f
c0de61de:	2000      	movs	r0, #0
c0de61e0:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de61e4:	0000154b 	.word	0x0000154b

c0de61e8 <nbgl_screenPush>:
c0de61e8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de61ec:	f8df 80f8 	ldr.w	r8, [pc, #248]	@ c0de62e8 <nbgl_screenPush+0x100>
c0de61f0:	4682      	mov	sl, r0
c0de61f2:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de61f6:	2803      	cmp	r0, #3
c0de61f8:	d871      	bhi.n	c0de62de <nbgl_screenPush+0xf6>
c0de61fa:	4694      	mov	ip, r2
c0de61fc:	468e      	mov	lr, r1
c0de61fe:	b1a0      	cbz	r0, c0de622a <nbgl_screenPush+0x42>
c0de6200:	483a      	ldr	r0, [pc, #232]	@ (c0de62ec <nbgl_screenPush+0x104>)
c0de6202:	4448      	add	r0, r9
c0de6204:	f100 057a 	add.w	r5, r0, #122	@ 0x7a
c0de6208:	2001      	movs	r0, #1
c0de620a:	2804      	cmp	r0, #4
c0de620c:	d037      	beq.n	c0de627e <nbgl_screenPush+0x96>
c0de620e:	782c      	ldrb	r4, [r5, #0]
c0de6210:	786e      	ldrb	r6, [r5, #1]
c0de6212:	78af      	ldrb	r7, [r5, #2]
c0de6214:	78ea      	ldrb	r2, [r5, #3]
c0de6216:	ea47 2202 	orr.w	r2, r7, r2, lsl #8
c0de621a:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de621e:	ea44 4202 	orr.w	r2, r4, r2, lsl #16
c0de6222:	b372      	cbz	r2, c0de6282 <nbgl_screenPush+0x9a>
c0de6224:	3540      	adds	r5, #64	@ 0x40
c0de6226:	3001      	adds	r0, #1
c0de6228:	e7ef      	b.n	c0de620a <nbgl_screenPush+0x22>
c0de622a:	4d30      	ldr	r5, [pc, #192]	@ (c0de62ec <nbgl_screenPush+0x104>)
c0de622c:	2700      	movs	r7, #0
c0de622e:	2001      	movs	r0, #1
c0de6230:	f809 0008 	strb.w	r0, [r9, r8]
c0de6234:	444d      	add	r5, r9
c0de6236:	0e2e      	lsrs	r6, r5, #24
c0de6238:	f885 7077 	strb.w	r7, [r5, #119]	@ 0x77
c0de623c:	f885 7020 	strb.w	r7, [r5, #32]
c0de6240:	f885 507a 	strb.w	r5, [r5, #122]	@ 0x7a
c0de6244:	f885 607d 	strb.w	r6, [r5, #125]	@ 0x7d
c0de6248:	0c2e      	lsrs	r6, r5, #16
c0de624a:	f885 607c 	strb.w	r6, [r5, #124]	@ 0x7c
c0de624e:	0a2e      	lsrs	r6, r5, #8
c0de6250:	f885 607b 	strb.w	r6, [r5, #123]	@ 0x7b
c0de6254:	462e      	mov	r6, r5
c0de6256:	f806 7f76 	strb.w	r7, [r6, #118]!
c0de625a:	70f7      	strb	r7, [r6, #3]
c0de625c:	70b7      	strb	r7, [r6, #2]
c0de625e:	f105 0740 	add.w	r7, r5, #64	@ 0x40
c0de6262:	eb09 0608 	add.w	r6, r9, r8
c0de6266:	6077      	str	r7, [r6, #4]
c0de6268:	462e      	mov	r6, r5
c0de626a:	0e3c      	lsrs	r4, r7, #24
c0de626c:	f806 7f36 	strb.w	r7, [r6, #54]!
c0de6270:	70f4      	strb	r4, [r6, #3]
c0de6272:	0c3c      	lsrs	r4, r7, #16
c0de6274:	70b4      	strb	r4, [r6, #2]
c0de6276:	0a3c      	lsrs	r4, r7, #8
c0de6278:	f885 4037 	strb.w	r4, [r5, #55]	@ 0x37
c0de627c:	e01f      	b.n	c0de62be <nbgl_screenPush+0xd6>
c0de627e:	2004      	movs	r0, #4
c0de6280:	e01d      	b.n	c0de62be <nbgl_screenPush+0xd6>
c0de6282:	eb09 0208 	add.w	r2, r9, r8
c0de6286:	f1a5 063a 	sub.w	r6, r5, #58	@ 0x3a
c0de628a:	6854      	ldr	r4, [r2, #4]
c0de628c:	0a37      	lsrs	r7, r6, #8
c0de628e:	0e31      	lsrs	r1, r6, #24
c0de6290:	6056      	str	r6, [r2, #4]
c0de6292:	f884 7037 	strb.w	r7, [r4, #55]	@ 0x37
c0de6296:	4627      	mov	r7, r4
c0de6298:	f807 6f36 	strb.w	r6, [r7, #54]!
c0de629c:	70f9      	strb	r1, [r7, #3]
c0de629e:	0c31      	lsrs	r1, r6, #16
c0de62a0:	70b9      	strb	r1, [r7, #2]
c0de62a2:	0e21      	lsrs	r1, r4, #24
c0de62a4:	702c      	strb	r4, [r5, #0]
c0de62a6:	70e9      	strb	r1, [r5, #3]
c0de62a8:	0c21      	lsrs	r1, r4, #16
c0de62aa:	70a9      	strb	r1, [r5, #2]
c0de62ac:	0a21      	lsrs	r1, r4, #8
c0de62ae:	7069      	strb	r1, [r5, #1]
c0de62b0:	2100      	movs	r1, #0
c0de62b2:	f805 1c03 	strb.w	r1, [r5, #-3]
c0de62b6:	f805 1d04 	strb.w	r1, [r5, #-4]!
c0de62ba:	70a9      	strb	r1, [r5, #2]
c0de62bc:	70e9      	strb	r1, [r5, #3]
c0de62be:	b2c5      	uxtb	r5, r0
c0de62c0:	9300      	str	r3, [sp, #0]
c0de62c2:	4651      	mov	r1, sl
c0de62c4:	4672      	mov	r2, lr
c0de62c6:	4663      	mov	r3, ip
c0de62c8:	4628      	mov	r0, r5
c0de62ca:	f7ff fef7 	bl	c0de60bc <nbgl_screenSetAt>
c0de62ce:	2800      	cmp	r0, #0
c0de62d0:	d405      	bmi.n	c0de62de <nbgl_screenPush+0xf6>
c0de62d2:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de62d6:	3001      	adds	r0, #1
c0de62d8:	f809 0008 	strb.w	r0, [r9, r8]
c0de62dc:	e001      	b.n	c0de62e2 <nbgl_screenPush+0xfa>
c0de62de:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
c0de62e2:	4628      	mov	r0, r5
c0de62e4:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de62e8:	0000164c 	.word	0x0000164c
c0de62ec:	0000154b 	.word	0x0000154b

c0de62f0 <nbgl_screenPop>:
c0de62f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de62f2:	4e49      	ldr	r6, [pc, #292]	@ (c0de6418 <nbgl_screenPop+0x128>)
c0de62f4:	4604      	mov	r4, r0
c0de62f6:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de62fa:	2800      	cmp	r0, #0
c0de62fc:	d045      	beq.n	c0de638a <nbgl_screenPop+0x9a>
c0de62fe:	f8df c11c 	ldr.w	ip, [pc, #284]	@ c0de641c <nbgl_screenPop+0x12c>
c0de6302:	eb09 0306 	add.w	r3, r9, r6
c0de6306:	1e41      	subs	r1, r0, #1
c0de6308:	685b      	ldr	r3, [r3, #4]
c0de630a:	f809 1006 	strb.w	r1, [r9, r6]
c0de630e:	eb09 020c 	add.w	r2, r9, ip
c0de6312:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de6316:	429a      	cmp	r2, r3
c0de6318:	d03a      	beq.n	c0de6390 <nbgl_screenPop+0xa0>
c0de631a:	eb09 010c 	add.w	r1, r9, ip
c0de631e:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de6322:	f811 2f3a 	ldrb.w	r2, [r1, #58]!
c0de6326:	784b      	ldrb	r3, [r1, #1]
c0de6328:	788d      	ldrb	r5, [r1, #2]
c0de632a:	78c9      	ldrb	r1, [r1, #3]
c0de632c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6330:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de6334:	ea42 4001 	orr.w	r0, r2, r1, lsl #16
c0de6338:	b170      	cbz	r0, c0de6358 <nbgl_screenPop+0x68>
c0de633a:	eb09 020c 	add.w	r2, r9, ip
c0de633e:	4601      	mov	r1, r0
c0de6340:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de6344:	f812 3f36 	ldrb.w	r3, [r2, #54]!
c0de6348:	7855      	ldrb	r5, [r2, #1]
c0de634a:	7897      	ldrb	r7, [r2, #2]
c0de634c:	78d2      	ldrb	r2, [r2, #3]
c0de634e:	f801 3f36 	strb.w	r3, [r1, #54]!
c0de6352:	708f      	strb	r7, [r1, #2]
c0de6354:	70ca      	strb	r2, [r1, #3]
c0de6356:	704d      	strb	r5, [r1, #1]
c0de6358:	eb09 010c 	add.w	r1, r9, ip
c0de635c:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de6360:	f811 2f36 	ldrb.w	r2, [r1, #54]!
c0de6364:	784b      	ldrb	r3, [r1, #1]
c0de6366:	788d      	ldrb	r5, [r1, #2]
c0de6368:	78c9      	ldrb	r1, [r1, #3]
c0de636a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de636e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de6372:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de6376:	b322      	cbz	r2, c0de63c2 <nbgl_screenPop+0xd2>
c0de6378:	f802 0f3a 	strb.w	r0, [r2, #58]!
c0de637c:	0e01      	lsrs	r1, r0, #24
c0de637e:	70d1      	strb	r1, [r2, #3]
c0de6380:	0c01      	lsrs	r1, r0, #16
c0de6382:	0a00      	lsrs	r0, r0, #8
c0de6384:	7091      	strb	r1, [r2, #2]
c0de6386:	7050      	strb	r0, [r2, #1]
c0de6388:	e01b      	b.n	c0de63c2 <nbgl_screenPop+0xd2>
c0de638a:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
c0de638e:	e041      	b.n	c0de6414 <nbgl_screenPop+0x124>
c0de6390:	0609      	lsls	r1, r1, #24
c0de6392:	d012      	beq.n	c0de63ba <nbgl_screenPop+0xca>
c0de6394:	eb09 010c 	add.w	r1, r9, ip
c0de6398:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de639c:	f811 2f3a 	ldrb.w	r2, [r1, #58]!
c0de63a0:	784b      	ldrb	r3, [r1, #1]
c0de63a2:	788d      	ldrb	r5, [r1, #2]
c0de63a4:	78c9      	ldrb	r1, [r1, #3]
c0de63a6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de63aa:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de63ae:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de63b2:	eb09 0206 	add.w	r2, r9, r6
c0de63b6:	6051      	str	r1, [r2, #4]
c0de63b8:	e003      	b.n	c0de63c2 <nbgl_screenPop+0xd2>
c0de63ba:	eb09 0106 	add.w	r1, r9, r6
c0de63be:	2200      	movs	r2, #0
c0de63c0:	604a      	str	r2, [r1, #4]
c0de63c2:	eb09 070c 	add.w	r7, r9, ip
c0de63c6:	2500      	movs	r5, #0
c0de63c8:	eb07 1084 	add.w	r0, r7, r4, lsl #6
c0de63cc:	f800 5f3a 	strb.w	r5, [r0, #58]!
c0de63d0:	f800 5d04 	strb.w	r5, [r0, #-4]!
c0de63d4:	f800 5d14 	strb.w	r5, [r0, #-20]!
c0de63d8:	75c5      	strb	r5, [r0, #23]
c0de63da:	7585      	strb	r5, [r0, #22]
c0de63dc:	7545      	strb	r5, [r0, #21]
c0de63de:	76c5      	strb	r5, [r0, #27]
c0de63e0:	7685      	strb	r5, [r0, #26]
c0de63e2:	7645      	strb	r5, [r0, #25]
c0de63e4:	70c5      	strb	r5, [r0, #3]
c0de63e6:	7085      	strb	r5, [r0, #2]
c0de63e8:	7045      	strb	r5, [r0, #1]
c0de63ea:	f800 5c02 	strb.w	r5, [r0, #-2]
c0de63ee:	4620      	mov	r0, r4
c0de63f0:	f7ff fd54 	bl	c0de5e9c <nbgl_objPoolRelease>
c0de63f4:	4620      	mov	r0, r4
c0de63f6:	f7ff fda7 	bl	c0de5f48 <nbgl_containerPoolRelease>
c0de63fa:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de63fe:	2801      	cmp	r0, #1
c0de6400:	d108      	bne.n	c0de6414 <nbgl_screenPop+0x124>
c0de6402:	f897 0020 	ldrb.w	r0, [r7, #32]
c0de6406:	b928      	cbnz	r0, c0de6414 <nbgl_screenPop+0x124>
c0de6408:	2500      	movs	r5, #0
c0de640a:	eb09 0006 	add.w	r0, r9, r6
c0de640e:	f809 5006 	strb.w	r5, [r9, r6]
c0de6412:	6045      	str	r5, [r0, #4]
c0de6414:	4628      	mov	r0, r5
c0de6416:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de6418:	0000164c 	.word	0x0000164c
c0de641c:	0000154b 	.word	0x0000154b

c0de6420 <nbgl_screenHandler>:
c0de6420:	b570      	push	{r4, r5, r6, lr}
c0de6422:	4920      	ldr	r1, [pc, #128]	@ (c0de64a4 <nbgl_screenHandler+0x84>)
c0de6424:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de6428:	b352      	cbz	r2, c0de6480 <nbgl_screenHandler+0x60>
c0de642a:	4449      	add	r1, r9
c0de642c:	6849      	ldr	r1, [r1, #4]
c0de642e:	460b      	mov	r3, r1
c0de6430:	f891 2027 	ldrb.w	r2, [r1, #39]	@ 0x27
c0de6434:	f813 4f26 	ldrb.w	r4, [r3, #38]!
c0de6438:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de643c:	789c      	ldrb	r4, [r3, #2]
c0de643e:	78db      	ldrb	r3, [r3, #3]
c0de6440:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de6444:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6448:	b1d2      	cbz	r2, c0de6480 <nbgl_screenHandler+0x60>
c0de644a:	460b      	mov	r3, r1
c0de644c:	f813 4f2a 	ldrb.w	r4, [r3, #42]!
c0de6450:	785d      	ldrb	r5, [r3, #1]
c0de6452:	789e      	ldrb	r6, [r3, #2]
c0de6454:	78db      	ldrb	r3, [r3, #3]
c0de6456:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de645a:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de645e:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de6462:	b16b      	cbz	r3, c0de6480 <nbgl_screenHandler+0x60>
c0de6464:	1a1c      	subs	r4, r3, r0
c0de6466:	460d      	mov	r5, r1
c0de6468:	bf38      	it	cc
c0de646a:	2400      	movcc	r4, #0
c0de646c:	f805 4f2a 	strb.w	r4, [r5, #42]!
c0de6470:	0e26      	lsrs	r6, r4, #24
c0de6472:	70ee      	strb	r6, [r5, #3]
c0de6474:	0c26      	lsrs	r6, r4, #16
c0de6476:	0a24      	lsrs	r4, r4, #8
c0de6478:	4283      	cmp	r3, r0
c0de647a:	70ae      	strb	r6, [r5, #2]
c0de647c:	706c      	strb	r4, [r5, #1]
c0de647e:	d900      	bls.n	c0de6482 <nbgl_screenHandler+0x62>
c0de6480:	bd70      	pop	{r4, r5, r6, pc}
c0de6482:	4608      	mov	r0, r1
c0de6484:	460c      	mov	r4, r1
c0de6486:	f810 3f2e 	ldrb.w	r3, [r0, #46]!
c0de648a:	f804 3f2a 	strb.w	r3, [r4, #42]!
c0de648e:	7883      	ldrb	r3, [r0, #2]
c0de6490:	78c0      	ldrb	r0, [r0, #3]
c0de6492:	70e0      	strb	r0, [r4, #3]
c0de6494:	f891 002f 	ldrb.w	r0, [r1, #47]	@ 0x2f
c0de6498:	70a3      	strb	r3, [r4, #2]
c0de649a:	7060      	strb	r0, [r4, #1]
c0de649c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de64a0:	4710      	bx	r2
c0de64a2:	bf00      	nop
c0de64a4:	0000164c 	.word	0x0000164c

c0de64a8 <nbgl_stepDrawText>:
c0de64a8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de64ac:	460e      	mov	r6, r1
c0de64ae:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de64b0:	4605      	mov	r5, r0
c0de64b2:	2000      	movs	r0, #0
c0de64b4:	469a      	mov	sl, r3
c0de64b6:	4617      	mov	r7, r2
c0de64b8:	f000 f830 	bl	c0de651c <getFreeContext>
c0de64bc:	b348      	cbz	r0, c0de6512 <nbgl_stepDrawText+0x6a>
c0de64be:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de64c2:	4604      	mov	r4, r0
c0de64c4:	6146      	str	r6, [r0, #20]
c0de64c6:	b10f      	cbz	r7, c0de64cc <nbgl_stepDrawText+0x24>
c0de64c8:	f000 fae1 	bl	c0de6a8e <OUTLINED_FUNCTION_1>
c0de64cc:	200a      	movs	r0, #10
c0de64ce:	f1b8 0f00 	cmp.w	r8, #0
c0de64d2:	bf19      	ittee	ne
c0de64d4:	4641      	movne	r1, r8
c0de64d6:	2203      	movne	r2, #3
c0de64d8:	4651      	moveq	r1, sl
c0de64da:	2204      	moveq	r2, #4
c0de64dc:	2372      	movs	r3, #114	@ 0x72
c0de64de:	f7fd fdc9 	bl	c0de4074 <nbgl_getTextNbPagesInWidth>
c0de64e2:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de64e4:	7020      	strb	r0, [r4, #0]
c0de64e6:	072a      	lsls	r2, r5, #28
c0de64e8:	bf46      	itte	mi
c0de64ea:	3801      	submi	r0, #1
c0de64ec:	7060      	strbmi	r0, [r4, #1]
c0de64ee:	7860      	ldrbpl	r0, [r4, #1]
c0de64f0:	f8c4 800c 	str.w	r8, [r4, #12]
c0de64f4:	f8c4 a004 	str.w	sl, [r4, #4]
c0de64f8:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de64fc:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de6500:	7461      	strb	r1, [r4, #17]
c0de6502:	f005 0103 	and.w	r1, r5, #3
c0de6506:	7421      	strb	r1, [r4, #16]
c0de6508:	b2c1      	uxtb	r1, r0
c0de650a:	4620      	mov	r0, r4
c0de650c:	f000 f82c 	bl	c0de6568 <displayTextPage>
c0de6510:	e000      	b.n	c0de6514 <nbgl_stepDrawText+0x6c>
c0de6512:	2400      	movs	r4, #0
c0de6514:	4620      	mov	r0, r4
c0de6516:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de651c <getFreeContext>:
c0de651c:	b570      	push	{r4, r5, r6, lr}
c0de651e:	4604      	mov	r4, r0
c0de6520:	4810      	ldr	r0, [pc, #64]	@ (c0de6564 <getFreeContext+0x48>)
c0de6522:	460d      	mov	r5, r1
c0de6524:	b151      	cbz	r1, c0de653c <getFreeContext+0x20>
c0de6526:	2100      	movs	r1, #0
c0de6528:	2990      	cmp	r1, #144	@ 0x90
c0de652a:	d00a      	beq.n	c0de6542 <getFreeContext+0x26>
c0de652c:	eb09 0200 	add.w	r2, r9, r0
c0de6530:	440a      	add	r2, r1
c0de6532:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de6536:	b132      	cbz	r2, c0de6546 <getFreeContext+0x2a>
c0de6538:	3148      	adds	r1, #72	@ 0x48
c0de653a:	e7f5      	b.n	c0de6528 <getFreeContext+0xc>
c0de653c:	eb09 0600 	add.w	r6, r9, r0
c0de6540:	e005      	b.n	c0de654e <getFreeContext+0x32>
c0de6542:	2600      	movs	r6, #0
c0de6544:	e00b      	b.n	c0de655e <getFreeContext+0x42>
c0de6546:	4448      	add	r0, r9
c0de6548:	4408      	add	r0, r1
c0de654a:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de654e:	4630      	mov	r0, r6
c0de6550:	2148      	movs	r1, #72	@ 0x48
c0de6552:	f004 fddb 	bl	c0deb10c <__aeabi_memclr>
c0de6556:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de655a:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de655e:	4630      	mov	r0, r6
c0de6560:	bd70      	pop	{r4, r5, r6, pc}
c0de6562:	bf00      	nop
c0de6564:	00001654 	.word	0x00001654

c0de6568 <displayTextPage>:
c0de6568:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de656c:	b091      	sub	sp, #68	@ 0x44
c0de656e:	4604      	mov	r4, r0
c0de6570:	7840      	ldrb	r0, [r0, #1]
c0de6572:	460e      	mov	r6, r1
c0de6574:	4288      	cmp	r0, r1
c0de6576:	d21c      	bcs.n	c0de65b2 <displayTextPage+0x4a>
c0de6578:	68a5      	ldr	r5, [r4, #8]
c0de657a:	7820      	ldrb	r0, [r4, #0]
c0de657c:	7066      	strb	r6, [r4, #1]
c0de657e:	3801      	subs	r0, #1
c0de6580:	42b0      	cmp	r0, r6
c0de6582:	dd31      	ble.n	c0de65e8 <displayTextPage+0x80>
c0de6584:	68e0      	ldr	r0, [r4, #12]
c0de6586:	2101      	movs	r1, #1
c0de6588:	2303      	movs	r3, #3
c0de658a:	aa08      	add	r2, sp, #32
c0de658c:	e9cd 2100 	strd	r2, r1, [sp]
c0de6590:	4629      	mov	r1, r5
c0de6592:	2800      	cmp	r0, #0
c0de6594:	bf08      	it	eq
c0de6596:	2304      	moveq	r3, #4
c0de6598:	200a      	movs	r0, #10
c0de659a:	2272      	movs	r2, #114	@ 0x72
c0de659c:	f7fd fc18 	bl	c0de3dd0 <nbgl_getTextMaxLenInNbLines>
c0de65a0:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de65a4:	1868      	adds	r0, r5, r1
c0de65a6:	60a0      	str	r0, [r4, #8]
c0de65a8:	5c69      	ldrb	r1, [r5, r1]
c0de65aa:	290a      	cmp	r1, #10
c0de65ac:	d11e      	bne.n	c0de65ec <displayTextPage+0x84>
c0de65ae:	3001      	adds	r0, #1
c0de65b0:	e01b      	b.n	c0de65ea <displayTextPage+0x82>
c0de65b2:	68e5      	ldr	r5, [r4, #12]
c0de65b4:	2d00      	cmp	r5, #0
c0de65b6:	d074      	beq.n	c0de66a2 <displayTextPage+0x13a>
c0de65b8:	2700      	movs	r7, #0
c0de65ba:	f04f 0801 	mov.w	r8, #1
c0de65be:	f10d 0a20 	add.w	sl, sp, #32
c0de65c2:	42be      	cmp	r6, r7
c0de65c4:	d0d9      	beq.n	c0de657a <displayTextPage+0x12>
c0de65c6:	7820      	ldrb	r0, [r4, #0]
c0de65c8:	3801      	subs	r0, #1
c0de65ca:	42b8      	cmp	r0, r7
c0de65cc:	dd0a      	ble.n	c0de65e4 <displayTextPage+0x7c>
c0de65ce:	200a      	movs	r0, #10
c0de65d0:	4629      	mov	r1, r5
c0de65d2:	2272      	movs	r2, #114	@ 0x72
c0de65d4:	2303      	movs	r3, #3
c0de65d6:	e9cd a800 	strd	sl, r8, [sp]
c0de65da:	f7fd fbf9 	bl	c0de3dd0 <nbgl_getTextMaxLenInNbLines>
c0de65de:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de65e2:	4405      	add	r5, r0
c0de65e4:	3701      	adds	r7, #1
c0de65e6:	e7ec      	b.n	c0de65c2 <displayTextPage+0x5a>
c0de65e8:	2000      	movs	r0, #0
c0de65ea:	60a0      	str	r0, [r4, #8]
c0de65ec:	484f      	ldr	r0, [pc, #316]	@ (c0de672c <displayTextPage+0x1c4>)
c0de65ee:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de65f2:	4478      	add	r0, pc
c0de65f4:	9004      	str	r0, [sp, #16]
c0de65f6:	2000      	movs	r0, #0
c0de65f8:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de65fc:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de6600:	f88d 000c 	strb.w	r0, [sp, #12]
c0de6604:	ca07      	ldmia	r2, {r0, r1, r2}
c0de6606:	ab05      	add	r3, sp, #20
c0de6608:	c307      	stmia	r3!, {r0, r1, r2}
c0de660a:	a803      	add	r0, sp, #12
c0de660c:	f7fd fe60 	bl	c0de42d0 <nbgl_layoutGet>
c0de6610:	7827      	ldrb	r7, [r4, #0]
c0de6612:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de6616:	4606      	mov	r6, r0
c0de6618:	6420      	str	r0, [r4, #64]	@ 0x40
c0de661a:	7c20      	ldrb	r0, [r4, #16]
c0de661c:	4639      	mov	r1, r7
c0de661e:	4652      	mov	r2, sl
c0de6620:	f000 f8fc 	bl	c0de681c <getNavigationInfo>
c0de6624:	4680      	mov	r8, r0
c0de6626:	f88d 000b 	strb.w	r0, [sp, #11]
c0de662a:	68e0      	ldr	r0, [r4, #12]
c0de662c:	b188      	cbz	r0, c0de6652 <displayTextPage+0xea>
c0de662e:	2f01      	cmp	r7, #1
c0de6630:	d115      	bne.n	c0de665e <displayTextPage+0xf6>
c0de6632:	6861      	ldr	r1, [r4, #4]
c0de6634:	2008      	movs	r0, #8
c0de6636:	2272      	movs	r2, #114	@ 0x72
c0de6638:	2300      	movs	r3, #0
c0de663a:	2600      	movs	r6, #0
c0de663c:	f7fd fc9c 	bl	c0de3f78 <nbgl_getTextNbLinesInWidth>
c0de6640:	2802      	cmp	r0, #2
c0de6642:	d348      	bcc.n	c0de66d6 <displayTextPage+0x16e>
c0de6644:	6861      	ldr	r1, [r4, #4]
c0de6646:	2018      	movs	r0, #24
c0de6648:	f104 0218 	add.w	r2, r4, #24
c0de664c:	e9cd 2000 	strd	r2, r0, [sp]
c0de6650:	e021      	b.n	c0de6696 <displayTextPage+0x12e>
c0de6652:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de6656:	4630      	mov	r0, r6
c0de6658:	4629      	mov	r1, r5
c0de665a:	2200      	movs	r2, #0
c0de665c:	e055      	b.n	c0de670a <displayTextPage+0x1a2>
c0de665e:	f10a 0001 	add.w	r0, sl, #1
c0de6662:	6863      	ldr	r3, [r4, #4]
c0de6664:	2124      	movs	r1, #36	@ 0x24
c0de6666:	e9cd 0700 	strd	r0, r7, [sp]
c0de666a:	af08      	add	r7, sp, #32
c0de666c:	4a30      	ldr	r2, [pc, #192]	@ (c0de6730 <displayTextPage+0x1c8>)
c0de666e:	4638      	mov	r0, r7
c0de6670:	447a      	add	r2, pc
c0de6672:	f003 ffb1 	bl	c0dea5d8 <snprintf>
c0de6676:	2008      	movs	r0, #8
c0de6678:	4639      	mov	r1, r7
c0de667a:	2272      	movs	r2, #114	@ 0x72
c0de667c:	2300      	movs	r3, #0
c0de667e:	f04f 0a00 	mov.w	sl, #0
c0de6682:	f7fd fc79 	bl	c0de3f78 <nbgl_getTextNbLinesInWidth>
c0de6686:	f104 0c18 	add.w	ip, r4, #24
c0de668a:	2802      	cmp	r0, #2
c0de668c:	d32c      	bcc.n	c0de66e8 <displayTextPage+0x180>
c0de668e:	2018      	movs	r0, #24
c0de6690:	e9cd c000 	strd	ip, r0, [sp]
c0de6694:	a908      	add	r1, sp, #32
c0de6696:	2008      	movs	r0, #8
c0de6698:	2272      	movs	r2, #114	@ 0x72
c0de669a:	2301      	movs	r3, #1
c0de669c:	f7fd fd7e 	bl	c0de419c <nbgl_textReduceOnNbLines>
c0de66a0:	e02d      	b.n	c0de66fe <displayTextPage+0x196>
c0de66a2:	6865      	ldr	r5, [r4, #4]
c0de66a4:	2700      	movs	r7, #0
c0de66a6:	f04f 0801 	mov.w	r8, #1
c0de66aa:	f10d 0a20 	add.w	sl, sp, #32
c0de66ae:	42be      	cmp	r6, r7
c0de66b0:	f43f af63 	beq.w	c0de657a <displayTextPage+0x12>
c0de66b4:	7820      	ldrb	r0, [r4, #0]
c0de66b6:	3801      	subs	r0, #1
c0de66b8:	42b8      	cmp	r0, r7
c0de66ba:	dd0a      	ble.n	c0de66d2 <displayTextPage+0x16a>
c0de66bc:	200a      	movs	r0, #10
c0de66be:	4629      	mov	r1, r5
c0de66c0:	2272      	movs	r2, #114	@ 0x72
c0de66c2:	2304      	movs	r3, #4
c0de66c4:	e9cd a800 	strd	sl, r8, [sp]
c0de66c8:	f7fd fb82 	bl	c0de3dd0 <nbgl_getTextMaxLenInNbLines>
c0de66cc:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de66d0:	4405      	add	r5, r0
c0de66d2:	3701      	adds	r7, #1
c0de66d4:	e7eb      	b.n	c0de66ae <displayTextPage+0x146>
c0de66d6:	6861      	ldr	r1, [r4, #4]
c0de66d8:	f104 0018 	add.w	r0, r4, #24
c0de66dc:	2217      	movs	r2, #23
c0de66de:	f004 fd18 	bl	c0deb112 <__aeabi_memcpy>
c0de66e2:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de66e6:	e00a      	b.n	c0de66fe <displayTextPage+0x196>
c0de66e8:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de66ea:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de66ee:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de66f2:	8838      	ldrh	r0, [r7, #0]
c0de66f4:	f8ac 0000 	strh.w	r0, [ip]
c0de66f8:	78b8      	ldrb	r0, [r7, #2]
c0de66fa:	f88c 0002 	strb.w	r0, [ip, #2]
c0de66fe:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de6702:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6704:	f104 0118 	add.w	r1, r4, #24
c0de6708:	462a      	mov	r2, r5
c0de670a:	f7fd fea3 	bl	c0de4454 <nbgl_layoutAddText>
c0de670e:	f1b8 0f00 	cmp.w	r8, #0
c0de6712:	d004      	beq.n	c0de671e <displayTextPage+0x1b6>
c0de6714:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6716:	f10d 010a 	add.w	r1, sp, #10
c0de671a:	f7fd fe3d 	bl	c0de4398 <nbgl_layoutAddNavigation>
c0de671e:	f000 f9e9 	bl	c0de6af4 <OUTLINED_FUNCTION_4>
c0de6722:	f7fe fc69 	bl	c0de4ff8 <nbgl_refresh>
c0de6726:	b011      	add	sp, #68	@ 0x44
c0de6728:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de672c:	000001bb 	.word	0x000001bb
c0de6730:	00004d91 	.word	0x00004d91

c0de6734 <nbgl_stepDrawCenteredInfo>:
c0de6734:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6738:	b087      	sub	sp, #28
c0de673a:	460d      	mov	r5, r1
c0de673c:	4682      	mov	sl, r0
c0de673e:	a802      	add	r0, sp, #8
c0de6740:	f000 f9d3 	bl	c0de6aea <OUTLINED_FUNCTION_3>
c0de6744:	4819      	ldr	r0, [pc, #100]	@ (c0de67ac <nbgl_stepDrawCenteredInfo+0x78>)
c0de6746:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de6748:	4478      	add	r0, pc
c0de674a:	f000 f9c5 	bl	c0de6ad8 <OUTLINED_FUNCTION_2>
c0de674e:	b168      	cbz	r0, c0de676c <nbgl_stepDrawCenteredInfo+0x38>
c0de6750:	4604      	mov	r4, r0
c0de6752:	6145      	str	r5, [r0, #20]
c0de6754:	b10f      	cbz	r7, c0de675a <nbgl_stepDrawCenteredInfo+0x26>
c0de6756:	f000 f953 	bl	c0de6a00 <OUTLINED_FUNCTION_0>
c0de675a:	f000 f9ce 	bl	c0de6afa <OUTLINED_FUNCTION_5>
c0de675e:	d007      	beq.n	c0de6770 <nbgl_stepDrawCenteredInfo+0x3c>
c0de6760:	2802      	cmp	r0, #2
c0de6762:	d007      	beq.n	c0de6774 <nbgl_stepDrawCenteredInfo+0x40>
c0de6764:	2801      	cmp	r0, #1
c0de6766:	d108      	bne.n	c0de677a <nbgl_stepDrawCenteredInfo+0x46>
c0de6768:	2002      	movs	r0, #2
c0de676a:	e004      	b.n	c0de6776 <nbgl_stepDrawCenteredInfo+0x42>
c0de676c:	2400      	movs	r4, #0
c0de676e:	e018      	b.n	c0de67a2 <nbgl_stepDrawCenteredInfo+0x6e>
c0de6770:	2003      	movs	r0, #3
c0de6772:	e000      	b.n	c0de6776 <nbgl_stepDrawCenteredInfo+0x42>
c0de6774:	2001      	movs	r0, #1
c0de6776:	2500      	movs	r5, #0
c0de6778:	e000      	b.n	c0de677c <nbgl_stepDrawCenteredInfo+0x48>
c0de677a:	2000      	movs	r0, #0
c0de677c:	f88d 0007 	strb.w	r0, [sp, #7]
c0de6780:	a802      	add	r0, sp, #8
c0de6782:	f7fd fda5 	bl	c0de42d0 <nbgl_layoutGet>
c0de6786:	4641      	mov	r1, r8
c0de6788:	6420      	str	r0, [r4, #64]	@ 0x40
c0de678a:	f7fe f86b 	bl	c0de4864 <nbgl_layoutAddCenteredInfo>
c0de678e:	b925      	cbnz	r5, c0de679a <nbgl_stepDrawCenteredInfo+0x66>
c0de6790:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6792:	f10d 0106 	add.w	r1, sp, #6
c0de6796:	f7fd fdff 	bl	c0de4398 <nbgl_layoutAddNavigation>
c0de679a:	f000 f9ab 	bl	c0de6af4 <OUTLINED_FUNCTION_4>
c0de679e:	f7fe fc2b 	bl	c0de4ff8 <nbgl_refresh>
c0de67a2:	4620      	mov	r0, r4
c0de67a4:	b007      	add	sp, #28
c0de67a6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de67aa:	bf00      	nop
c0de67ac:	00000065 	.word	0x00000065

c0de67b0 <actionCallback>:
c0de67b0:	b510      	push	{r4, lr}
c0de67b2:	460c      	mov	r4, r1
c0de67b4:	f000 f8f0 	bl	c0de6998 <getContextFromLayout>
c0de67b8:	b378      	cbz	r0, c0de681a <actionCallback+0x6a>
c0de67ba:	2c04      	cmp	r4, #4
c0de67bc:	d006      	beq.n	c0de67cc <actionCallback+0x1c>
c0de67be:	2c01      	cmp	r4, #1
c0de67c0:	d008      	beq.n	c0de67d4 <actionCallback+0x24>
c0de67c2:	bb54      	cbnz	r4, c0de681a <actionCallback+0x6a>
c0de67c4:	7841      	ldrb	r1, [r0, #1]
c0de67c6:	b1d9      	cbz	r1, c0de6800 <actionCallback+0x50>
c0de67c8:	3901      	subs	r1, #1
c0de67ca:	e009      	b.n	c0de67e0 <actionCallback+0x30>
c0de67cc:	6942      	ldr	r2, [r0, #20]
c0de67ce:	b322      	cbz	r2, c0de681a <actionCallback+0x6a>
c0de67d0:	2104      	movs	r1, #4
c0de67d2:	e01f      	b.n	c0de6814 <actionCallback+0x64>
c0de67d4:	7802      	ldrb	r2, [r0, #0]
c0de67d6:	7841      	ldrb	r1, [r0, #1]
c0de67d8:	3a01      	subs	r2, #1
c0de67da:	428a      	cmp	r2, r1
c0de67dc:	dd05      	ble.n	c0de67ea <actionCallback+0x3a>
c0de67de:	3101      	adds	r1, #1
c0de67e0:	b2c9      	uxtb	r1, r1
c0de67e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de67e6:	f7ff bebf 	b.w	c0de6568 <displayTextPage>
c0de67ea:	7c01      	ldrb	r1, [r0, #16]
c0de67ec:	f041 0102 	orr.w	r1, r1, #2
c0de67f0:	2903      	cmp	r1, #3
c0de67f2:	d001      	beq.n	c0de67f8 <actionCallback+0x48>
c0de67f4:	7c41      	ldrb	r1, [r0, #17]
c0de67f6:	b181      	cbz	r1, c0de681a <actionCallback+0x6a>
c0de67f8:	6942      	ldr	r2, [r0, #20]
c0de67fa:	b172      	cbz	r2, c0de681a <actionCallback+0x6a>
c0de67fc:	2101      	movs	r1, #1
c0de67fe:	e009      	b.n	c0de6814 <actionCallback+0x64>
c0de6800:	7c01      	ldrb	r1, [r0, #16]
c0de6802:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de6806:	2902      	cmp	r1, #2
c0de6808:	d001      	beq.n	c0de680e <actionCallback+0x5e>
c0de680a:	7c41      	ldrb	r1, [r0, #17]
c0de680c:	b129      	cbz	r1, c0de681a <actionCallback+0x6a>
c0de680e:	6942      	ldr	r2, [r0, #20]
c0de6810:	b11a      	cbz	r2, c0de681a <actionCallback+0x6a>
c0de6812:	2100      	movs	r1, #0
c0de6814:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6818:	4710      	bx	r2
c0de681a:	bd10      	pop	{r4, pc}

c0de681c <getNavigationInfo>:
c0de681c:	4603      	mov	r3, r0
c0de681e:	2902      	cmp	r1, #2
c0de6820:	d308      	bcc.n	c0de6834 <getNavigationInfo+0x18>
c0de6822:	3901      	subs	r1, #1
c0de6824:	4610      	mov	r0, r2
c0de6826:	2a00      	cmp	r2, #0
c0de6828:	bf18      	it	ne
c0de682a:	2001      	movne	r0, #1
c0de682c:	4291      	cmp	r1, r2
c0de682e:	bf88      	it	hi
c0de6830:	3002      	addhi	r0, #2
c0de6832:	e000      	b.n	c0de6836 <getNavigationInfo+0x1a>
c0de6834:	2000      	movs	r0, #0
c0de6836:	2b03      	cmp	r3, #3
c0de6838:	d00a      	beq.n	c0de6850 <getNavigationInfo+0x34>
c0de683a:	2b02      	cmp	r3, #2
c0de683c:	bf04      	itt	eq
c0de683e:	f040 0001 	orreq.w	r0, r0, #1
c0de6842:	4770      	bxeq	lr
c0de6844:	2b01      	cmp	r3, #1
c0de6846:	bf04      	itt	eq
c0de6848:	f040 0002 	orreq.w	r0, r0, #2
c0de684c:	4770      	bxeq	lr
c0de684e:	4770      	bx	lr
c0de6850:	2003      	movs	r0, #3
c0de6852:	4770      	bx	lr

c0de6854 <nbgl_stepDrawMenuList>:
c0de6854:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de6856:	460f      	mov	r7, r1
c0de6858:	4606      	mov	r6, r0
c0de685a:	2002      	movs	r0, #2
c0de685c:	4619      	mov	r1, r3
c0de685e:	4615      	mov	r5, r2
c0de6860:	f7ff fe5c 	bl	c0de651c <getFreeContext>
c0de6864:	b170      	cbz	r0, c0de6884 <nbgl_stepDrawMenuList+0x30>
c0de6866:	4604      	mov	r4, r0
c0de6868:	b10f      	cbz	r7, c0de686e <nbgl_stepDrawMenuList+0x1a>
c0de686a:	f000 f910 	bl	c0de6a8e <OUTLINED_FUNCTION_1>
c0de686e:	7928      	ldrb	r0, [r5, #4]
c0de6870:	7220      	strb	r0, [r4, #8]
c0de6872:	7968      	ldrb	r0, [r5, #5]
c0de6874:	7260      	strb	r0, [r4, #9]
c0de6876:	6828      	ldr	r0, [r5, #0]
c0de6878:	e9c4 6000 	strd	r6, r0, [r4]
c0de687c:	4620      	mov	r0, r4
c0de687e:	f000 f805 	bl	c0de688c <displayMenuList>
c0de6882:	e000      	b.n	c0de6886 <nbgl_stepDrawMenuList+0x32>
c0de6884:	2400      	movs	r4, #0
c0de6886:	4620      	mov	r0, r4
c0de6888:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de688c <displayMenuList>:
c0de688c:	b5b0      	push	{r4, r5, r7, lr}
c0de688e:	b086      	sub	sp, #24
c0de6890:	4604      	mov	r4, r0
c0de6892:	2000      	movs	r0, #0
c0de6894:	9001      	str	r0, [sp, #4]
c0de6896:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de689a:	4819      	ldr	r0, [pc, #100]	@ (c0de6900 <displayMenuList+0x74>)
c0de689c:	4478      	add	r0, pc
c0de689e:	9002      	str	r0, [sp, #8]
c0de68a0:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de68a4:	f88d 0004 	strb.w	r0, [sp, #4]
c0de68a8:	ca07      	ldmia	r2, {r0, r1, r2}
c0de68aa:	ab03      	add	r3, sp, #12
c0de68ac:	c307      	stmia	r3!, {r0, r1, r2}
c0de68ae:	a801      	add	r0, sp, #4
c0de68b0:	f7fd fd0e 	bl	c0de42d0 <nbgl_layoutGet>
c0de68b4:	1d25      	adds	r5, r4, #4
c0de68b6:	6420      	str	r0, [r4, #64]	@ 0x40
c0de68b8:	4629      	mov	r1, r5
c0de68ba:	f7fd ff7f 	bl	c0de47bc <nbgl_layoutAddMenuList>
c0de68be:	7a20      	ldrb	r0, [r4, #8]
c0de68c0:	2802      	cmp	r0, #2
c0de68c2:	d316      	bcc.n	c0de68f2 <displayMenuList+0x66>
c0de68c4:	2101      	movs	r1, #1
c0de68c6:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de68ca:	7969      	ldrb	r1, [r5, #5]
c0de68cc:	2900      	cmp	r1, #0
c0de68ce:	460a      	mov	r2, r1
c0de68d0:	bf18      	it	ne
c0de68d2:	2201      	movne	r2, #1
c0de68d4:	3801      	subs	r0, #1
c0de68d6:	f88d 2003 	strb.w	r2, [sp, #3]
c0de68da:	4288      	cmp	r0, r1
c0de68dc:	d903      	bls.n	c0de68e6 <displayMenuList+0x5a>
c0de68de:	1c90      	adds	r0, r2, #2
c0de68e0:	f88d 0003 	strb.w	r0, [sp, #3]
c0de68e4:	e000      	b.n	c0de68e8 <displayMenuList+0x5c>
c0de68e6:	b121      	cbz	r1, c0de68f2 <displayMenuList+0x66>
c0de68e8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de68ea:	f10d 0102 	add.w	r1, sp, #2
c0de68ee:	f7fd fd53 	bl	c0de4398 <nbgl_layoutAddNavigation>
c0de68f2:	f000 f8ff 	bl	c0de6af4 <OUTLINED_FUNCTION_4>
c0de68f6:	f7fe fb7f 	bl	c0de4ff8 <nbgl_refresh>
c0de68fa:	b006      	add	sp, #24
c0de68fc:	bdb0      	pop	{r4, r5, r7, pc}
c0de68fe:	bf00      	nop
c0de6900:	00000121 	.word	0x00000121

c0de6904 <nbgl_stepDrawSwitch>:
c0de6904:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6908:	b087      	sub	sp, #28
c0de690a:	460d      	mov	r5, r1
c0de690c:	4682      	mov	sl, r0
c0de690e:	a802      	add	r0, sp, #8
c0de6910:	f000 f8eb 	bl	c0de6aea <OUTLINED_FUNCTION_3>
c0de6914:	4819      	ldr	r0, [pc, #100]	@ (c0de697c <nbgl_stepDrawSwitch+0x78>)
c0de6916:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de6918:	4478      	add	r0, pc
c0de691a:	f000 f8dd 	bl	c0de6ad8 <OUTLINED_FUNCTION_2>
c0de691e:	b168      	cbz	r0, c0de693c <nbgl_stepDrawSwitch+0x38>
c0de6920:	4604      	mov	r4, r0
c0de6922:	6145      	str	r5, [r0, #20]
c0de6924:	b10f      	cbz	r7, c0de692a <nbgl_stepDrawSwitch+0x26>
c0de6926:	f000 f86b 	bl	c0de6a00 <OUTLINED_FUNCTION_0>
c0de692a:	f000 f8e6 	bl	c0de6afa <OUTLINED_FUNCTION_5>
c0de692e:	d007      	beq.n	c0de6940 <nbgl_stepDrawSwitch+0x3c>
c0de6930:	2802      	cmp	r0, #2
c0de6932:	d007      	beq.n	c0de6944 <nbgl_stepDrawSwitch+0x40>
c0de6934:	2801      	cmp	r0, #1
c0de6936:	d108      	bne.n	c0de694a <nbgl_stepDrawSwitch+0x46>
c0de6938:	2002      	movs	r0, #2
c0de693a:	e004      	b.n	c0de6946 <nbgl_stepDrawSwitch+0x42>
c0de693c:	2400      	movs	r4, #0
c0de693e:	e018      	b.n	c0de6972 <nbgl_stepDrawSwitch+0x6e>
c0de6940:	2003      	movs	r0, #3
c0de6942:	e000      	b.n	c0de6946 <nbgl_stepDrawSwitch+0x42>
c0de6944:	2001      	movs	r0, #1
c0de6946:	2500      	movs	r5, #0
c0de6948:	e000      	b.n	c0de694c <nbgl_stepDrawSwitch+0x48>
c0de694a:	2000      	movs	r0, #0
c0de694c:	f88d 0007 	strb.w	r0, [sp, #7]
c0de6950:	a802      	add	r0, sp, #8
c0de6952:	f7fd fcbd 	bl	c0de42d0 <nbgl_layoutGet>
c0de6956:	4641      	mov	r1, r8
c0de6958:	6420      	str	r0, [r4, #64]	@ 0x40
c0de695a:	f7fe f923 	bl	c0de4ba4 <nbgl_layoutAddSwitch>
c0de695e:	b925      	cbnz	r5, c0de696a <nbgl_stepDrawSwitch+0x66>
c0de6960:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6962:	f10d 0106 	add.w	r1, sp, #6
c0de6966:	f7fd fd17 	bl	c0de4398 <nbgl_layoutAddNavigation>
c0de696a:	f000 f8c3 	bl	c0de6af4 <OUTLINED_FUNCTION_4>
c0de696e:	f7fe fb43 	bl	c0de4ff8 <nbgl_refresh>
c0de6972:	4620      	mov	r0, r4
c0de6974:	b007      	add	sp, #28
c0de6976:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de697a:	bf00      	nop
c0de697c:	fffffe95 	.word	0xfffffe95

c0de6980 <nbgl_stepRelease>:
c0de6980:	b138      	cbz	r0, c0de6992 <nbgl_stepRelease+0x12>
c0de6982:	b510      	push	{r4, lr}
c0de6984:	4604      	mov	r4, r0
c0de6986:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de6988:	f7fe f9fc 	bl	c0de4d84 <nbgl_layoutRelease>
c0de698c:	2100      	movs	r1, #0
c0de698e:	6421      	str	r1, [r4, #64]	@ 0x40
c0de6990:	bd10      	pop	{r4, pc}
c0de6992:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de6996:	4770      	bx	lr

c0de6998 <getContextFromLayout>:
c0de6998:	4a08      	ldr	r2, [pc, #32]	@ (c0de69bc <getContextFromLayout+0x24>)
c0de699a:	2100      	movs	r1, #0
c0de699c:	29d8      	cmp	r1, #216	@ 0xd8
c0de699e:	bf04      	itt	eq
c0de69a0:	2000      	moveq	r0, #0
c0de69a2:	4770      	bxeq	lr
c0de69a4:	eb09 0302 	add.w	r3, r9, r2
c0de69a8:	440b      	add	r3, r1
c0de69aa:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de69ac:	4283      	cmp	r3, r0
c0de69ae:	d001      	beq.n	c0de69b4 <getContextFromLayout+0x1c>
c0de69b0:	3148      	adds	r1, #72	@ 0x48
c0de69b2:	e7f3      	b.n	c0de699c <getContextFromLayout+0x4>
c0de69b4:	eb09 0002 	add.w	r0, r9, r2
c0de69b8:	4408      	add	r0, r1
c0de69ba:	4770      	bx	lr
c0de69bc:	00001654 	.word	0x00001654

c0de69c0 <menuListActionCallback>:
c0de69c0:	b510      	push	{r4, lr}
c0de69c2:	460c      	mov	r4, r1
c0de69c4:	f7ff ffe8 	bl	c0de6998 <getContextFromLayout>
c0de69c8:	b1c8      	cbz	r0, c0de69fe <menuListActionCallback+0x3e>
c0de69ca:	2c04      	cmp	r4, #4
c0de69cc:	d006      	beq.n	c0de69dc <menuListActionCallback+0x1c>
c0de69ce:	2c01      	cmp	r4, #1
c0de69d0:	d00a      	beq.n	c0de69e8 <menuListActionCallback+0x28>
c0de69d2:	b9a4      	cbnz	r4, c0de69fe <menuListActionCallback+0x3e>
c0de69d4:	7a41      	ldrb	r1, [r0, #9]
c0de69d6:	b191      	cbz	r1, c0de69fe <menuListActionCallback+0x3e>
c0de69d8:	3901      	subs	r1, #1
c0de69da:	e00b      	b.n	c0de69f4 <menuListActionCallback+0x34>
c0de69dc:	7a41      	ldrb	r1, [r0, #9]
c0de69de:	6802      	ldr	r2, [r0, #0]
c0de69e0:	4608      	mov	r0, r1
c0de69e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de69e6:	4710      	bx	r2
c0de69e8:	7a02      	ldrb	r2, [r0, #8]
c0de69ea:	7a41      	ldrb	r1, [r0, #9]
c0de69ec:	3a01      	subs	r2, #1
c0de69ee:	428a      	cmp	r2, r1
c0de69f0:	dd05      	ble.n	c0de69fe <menuListActionCallback+0x3e>
c0de69f2:	3101      	adds	r1, #1
c0de69f4:	7241      	strb	r1, [r0, #9]
c0de69f6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de69fa:	f7ff bf47 	b.w	c0de688c <displayMenuList>
c0de69fe:	bd10      	pop	{r4, pc}

c0de6a00 <OUTLINED_FUNCTION_0>:
c0de6a00:	7838      	ldrb	r0, [r7, #0]
c0de6a02:	7879      	ldrb	r1, [r7, #1]
c0de6a04:	78ba      	ldrb	r2, [r7, #2]
c0de6a06:	78fb      	ldrb	r3, [r7, #3]
c0de6a08:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6a0c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6a10:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de6a14:	6360      	str	r0, [r4, #52]	@ 0x34
c0de6a16:	4638      	mov	r0, r7
c0de6a18:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de6a1c:	7a79      	ldrb	r1, [r7, #9]
c0de6a1e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6a22:	7882      	ldrb	r2, [r0, #2]
c0de6a24:	78c3      	ldrb	r3, [r0, #3]
c0de6a26:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6a2a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de6a2e:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de6a30:	4639      	mov	r1, r7
c0de6a32:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de6a36:	797a      	ldrb	r2, [r7, #5]
c0de6a38:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de6a3c:	788b      	ldrb	r3, [r1, #2]
c0de6a3e:	78cd      	ldrb	r5, [r1, #3]
c0de6a40:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de6a44:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6a48:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de6a4a:	783a      	ldrb	r2, [r7, #0]
c0de6a4c:	787b      	ldrb	r3, [r7, #1]
c0de6a4e:	78bd      	ldrb	r5, [r7, #2]
c0de6a50:	78fe      	ldrb	r6, [r7, #3]
c0de6a52:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6a56:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de6a5a:	7803      	ldrb	r3, [r0, #0]
c0de6a5c:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de6a60:	7885      	ldrb	r5, [r0, #2]
c0de6a62:	78c0      	ldrb	r0, [r0, #3]
c0de6a64:	9204      	str	r2, [sp, #16]
c0de6a66:	7a7a      	ldrb	r2, [r7, #9]
c0de6a68:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de6a6c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de6a70:	788b      	ldrb	r3, [r1, #2]
c0de6a72:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de6a76:	780a      	ldrb	r2, [r1, #0]
c0de6a78:	78c9      	ldrb	r1, [r1, #3]
c0de6a7a:	9006      	str	r0, [sp, #24]
c0de6a7c:	7978      	ldrb	r0, [r7, #5]
c0de6a7e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de6a82:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6a86:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6a8a:	9005      	str	r0, [sp, #20]
c0de6a8c:	4770      	bx	lr

c0de6a8e <OUTLINED_FUNCTION_1>:
c0de6a8e:	7838      	ldrb	r0, [r7, #0]
c0de6a90:	7879      	ldrb	r1, [r7, #1]
c0de6a92:	78ba      	ldrb	r2, [r7, #2]
c0de6a94:	78fb      	ldrb	r3, [r7, #3]
c0de6a96:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6a9a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6a9e:	4639      	mov	r1, r7
c0de6aa0:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de6aa4:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de6aa8:	6360      	str	r0, [r4, #52]	@ 0x34
c0de6aaa:	7a78      	ldrb	r0, [r7, #9]
c0de6aac:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6ab0:	788a      	ldrb	r2, [r1, #2]
c0de6ab2:	78c9      	ldrb	r1, [r1, #3]
c0de6ab4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6ab8:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6abc:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de6abe:	7978      	ldrb	r0, [r7, #5]
c0de6ac0:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de6ac4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de6ac8:	78b9      	ldrb	r1, [r7, #2]
c0de6aca:	78fa      	ldrb	r2, [r7, #3]
c0de6acc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6ad0:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6ad4:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de6ad6:	4770      	bx	lr

c0de6ad8 <OUTLINED_FUNCTION_2>:
c0de6ad8:	f88d 1008 	strb.w	r1, [sp, #8]
c0de6adc:	9003      	str	r0, [sp, #12]
c0de6ade:	2000      	movs	r0, #0
c0de6ae0:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de6ae4:	2001      	movs	r0, #1
c0de6ae6:	f7ff bd19 	b.w	c0de651c <getFreeContext>

c0de6aea <OUTLINED_FUNCTION_3>:
c0de6aea:	2114      	movs	r1, #20
c0de6aec:	4698      	mov	r8, r3
c0de6aee:	4617      	mov	r7, r2
c0de6af0:	f004 bb0c 	b.w	c0deb10c <__aeabi_memclr>

c0de6af4 <OUTLINED_FUNCTION_4>:
c0de6af4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6af6:	f7fe b93d 	b.w	c0de4d74 <nbgl_layoutDraw>

c0de6afa <OUTLINED_FUNCTION_5>:
c0de6afa:	2501      	movs	r5, #1
c0de6afc:	f00a 0003 	and.w	r0, sl, #3
c0de6b00:	2803      	cmp	r0, #3
c0de6b02:	7025      	strb	r5, [r4, #0]
c0de6b04:	7420      	strb	r0, [r4, #16]
c0de6b06:	4770      	bx	lr

c0de6b08 <nbgl_useCaseHomeAndSettings>:
c0de6b08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6b0c:	4607      	mov	r7, r0
c0de6b0e:	4810      	ldr	r0, [pc, #64]	@ (c0de6b50 <nbgl_useCaseHomeAndSettings+0x48>)
c0de6b10:	f001 fbd2 	bl	c0de82b8 <OUTLINED_FUNCTION_0>
c0de6b14:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de6b18:	6425      	str	r5, [r4, #64]	@ 0x40
c0de6b1a:	9d06      	ldr	r5, [sp, #24]
c0de6b1c:	4628      	mov	r0, r5
c0de6b1e:	f003 fef5 	bl	c0dea90c <pic>
c0de6b22:	6460      	str	r0, [r4, #68]	@ 0x44
c0de6b24:	9807      	ldr	r0, [sp, #28]
c0de6b26:	f003 fef1 	bl	c0dea90c <pic>
c0de6b2a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de6b2c:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de6b30:	6521      	str	r1, [r4, #80]	@ 0x50
c0de6b32:	9908      	ldr	r1, [sp, #32]
c0de6b34:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de6b38:	bf18      	it	ne
c0de6b3a:	2d00      	cmpne	r5, #0
c0de6b3c:	d103      	bne.n	c0de6b46 <nbgl_useCaseHomeAndSettings+0x3e>
c0de6b3e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6b42:	f000 b843 	b.w	c0de6bcc <startUseCaseHome>
c0de6b46:	4640      	mov	r0, r8
c0de6b48:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6b4c:	f000 b802 	b.w	c0de6b54 <startUseCaseSettingsAtPage>
c0de6b50:	0000172c 	.word	0x0000172c

c0de6b54 <startUseCaseSettingsAtPage>:
c0de6b54:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6b56:	b08d      	sub	sp, #52	@ 0x34
c0de6b58:	4604      	mov	r4, r0
c0de6b5a:	4668      	mov	r0, sp
c0de6b5c:	2134      	movs	r1, #52	@ 0x34
c0de6b5e:	f004 fad5 	bl	c0deb10c <__aeabi_memclr>
c0de6b62:	4e19      	ldr	r6, [pc, #100]	@ (c0de6bc8 <startUseCaseSettingsAtPage+0x74>)
c0de6b64:	466d      	mov	r5, sp
c0de6b66:	eb09 0006 	add.w	r0, r9, r6
c0de6b6a:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de6b6e:	280f      	cmp	r0, #15
c0de6b70:	bf1e      	ittt	ne
c0de6b72:	eb09 0006 	addne.w	r0, r9, r6
c0de6b76:	210e      	movne	r1, #14
c0de6b78:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de6b7c:	2700      	movs	r7, #0
c0de6b7e:	eb09 0006 	add.w	r0, r9, r6
c0de6b82:	2101      	movs	r1, #1
c0de6b84:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de6b88:	eb09 0006 	add.w	r0, r9, r6
c0de6b8c:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de6b8e:	7a01      	ldrb	r1, [r0, #8]
c0de6b90:	428f      	cmp	r7, r1
c0de6b92:	d20e      	bcs.n	c0de6bb2 <startUseCaseSettingsAtPage+0x5e>
c0de6b94:	b279      	sxtb	r1, r7
c0de6b96:	462a      	mov	r2, r5
c0de6b98:	f000 fc5c 	bl	c0de7454 <getContentAtIdx>
c0de6b9c:	f000 fcb4 	bl	c0de7508 <getContentNbElement>
c0de6ba0:	eb09 0106 	add.w	r1, r9, r6
c0de6ba4:	3701      	adds	r7, #1
c0de6ba6:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de6baa:	4410      	add	r0, r2
c0de6bac:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de6bb0:	e7ea      	b.n	c0de6b88 <startUseCaseSettingsAtPage+0x34>
c0de6bb2:	eb09 0006 	add.w	r0, r9, r6
c0de6bb6:	2100      	movs	r1, #0
c0de6bb8:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de6bbc:	2000      	movs	r0, #0
c0de6bbe:	f000 fead 	bl	c0de791c <displaySettingsPage>
c0de6bc2:	b00d      	add	sp, #52	@ 0x34
c0de6bc4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6bc6:	bf00      	nop
c0de6bc8:	0000172c 	.word	0x0000172c

c0de6bcc <startUseCaseHome>:
c0de6bcc:	b510      	push	{r4, lr}
c0de6bce:	4821      	ldr	r0, [pc, #132]	@ (c0de6c54 <startUseCaseHome+0x88>)
c0de6bd0:	eb09 0100 	add.w	r1, r9, r0
c0de6bd4:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de6bd8:	290d      	cmp	r1, #13
c0de6bda:	d009      	beq.n	c0de6bf0 <startUseCaseHome+0x24>
c0de6bdc:	290e      	cmp	r1, #14
c0de6bde:	d114      	bne.n	c0de6c0a <startUseCaseHome+0x3e>
c0de6be0:	eb09 0100 	add.w	r1, r9, r0
c0de6be4:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de6be6:	2102      	movs	r1, #2
c0de6be8:	2a00      	cmp	r2, #0
c0de6bea:	bf08      	it	eq
c0de6bec:	2101      	moveq	r1, #1
c0de6bee:	e00d      	b.n	c0de6c0c <startUseCaseHome+0x40>
c0de6bf0:	eb09 0200 	add.w	r2, r9, r0
c0de6bf4:	2102      	movs	r1, #2
c0de6bf6:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de6bf8:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de6bfa:	2c00      	cmp	r4, #0
c0de6bfc:	bf08      	it	eq
c0de6bfe:	2101      	moveq	r1, #1
c0de6c00:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de6c04:	b133      	cbz	r3, c0de6c14 <startUseCaseHome+0x48>
c0de6c06:	3101      	adds	r1, #1
c0de6c08:	e000      	b.n	c0de6c0c <startUseCaseHome+0x40>
c0de6c0a:	2100      	movs	r1, #0
c0de6c0c:	eb09 0200 	add.w	r2, r9, r0
c0de6c10:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de6c14:	eb09 0200 	add.w	r2, r9, r0
c0de6c18:	210c      	movs	r1, #12
c0de6c1a:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de6c1e:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de6c22:	2103      	movs	r1, #3
c0de6c24:	2b00      	cmp	r3, #0
c0de6c26:	bf08      	it	eq
c0de6c28:	2102      	moveq	r1, #2
c0de6c2a:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de6c2e:	b124      	cbz	r4, c0de6c3a <startUseCaseHome+0x6e>
c0de6c30:	3101      	adds	r1, #1
c0de6c32:	eb09 0200 	add.w	r2, r9, r0
c0de6c36:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de6c3a:	eb09 0200 	add.w	r2, r9, r0
c0de6c3e:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de6c40:	b11a      	cbz	r2, c0de6c4a <startUseCaseHome+0x7e>
c0de6c42:	4448      	add	r0, r9
c0de6c44:	3101      	adds	r1, #1
c0de6c46:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de6c4a:	2000      	movs	r0, #0
c0de6c4c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6c50:	f000 bf52 	b.w	c0de7af8 <displayHomePage>
c0de6c54:	0000172c 	.word	0x0000172c

c0de6c58 <nbgl_useCaseReview>:
c0de6c58:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de6c5a:	4614      	mov	r4, r2
c0de6c5c:	460a      	mov	r2, r1
c0de6c5e:	4601      	mov	r1, r0
c0de6c60:	9808      	ldr	r0, [sp, #32]
c0de6c62:	9003      	str	r0, [sp, #12]
c0de6c64:	9807      	ldr	r0, [sp, #28]
c0de6c66:	9002      	str	r0, [sp, #8]
c0de6c68:	9806      	ldr	r0, [sp, #24]
c0de6c6a:	e9cd 3000 	strd	r3, r0, [sp]
c0de6c6e:	2002      	movs	r0, #2
c0de6c70:	4623      	mov	r3, r4
c0de6c72:	f000 f801 	bl	c0de6c78 <useCaseReview>
c0de6c76:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de6c78 <useCaseReview>:
c0de6c78:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6c7c:	4607      	mov	r7, r0
c0de6c7e:	4811      	ldr	r0, [pc, #68]	@ (c0de6cc4 <useCaseReview+0x4c>)
c0de6c80:	4688      	mov	r8, r1
c0de6c82:	2140      	movs	r1, #64	@ 0x40
c0de6c84:	461d      	mov	r5, r3
c0de6c86:	4614      	mov	r4, r2
c0de6c88:	f001 fb35 	bl	c0de82f6 <OUTLINED_FUNCTION_5>
c0de6c8c:	9808      	ldr	r0, [sp, #32]
c0de6c8e:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de6c90:	9807      	ldr	r0, [sp, #28]
c0de6c92:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de6c94:	9906      	ldr	r1, [sp, #24]
c0de6c96:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de6c9a:	6471      	str	r1, [r6, #68]	@ 0x44
c0de6c9c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de6c9e:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de6ca2:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de6ca6:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de6ca8:	2104      	movs	r1, #4
c0de6caa:	2800      	cmp	r0, #0
c0de6cac:	bf08      	it	eq
c0de6cae:	2103      	moveq	r1, #3
c0de6cb0:	7a20      	ldrb	r0, [r4, #8]
c0de6cb2:	4408      	add	r0, r1
c0de6cb4:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de6cb8:	2000      	movs	r0, #0
c0de6cba:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6cbe:	f000 b8a7 	b.w	c0de6e10 <displayReviewPage>
c0de6cc2:	bf00      	nop
c0de6cc4:	0000172c 	.word	0x0000172c

c0de6cc8 <nbgl_useCaseAdvancedReview>:
c0de6cc8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6ccc:	b088      	sub	sp, #32
c0de6cce:	468c      	mov	ip, r1
c0de6cd0:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de6cd4:	e9dd 8b10 	ldrd	r8, fp, [sp, #64]	@ 0x40
c0de6cd8:	4616      	mov	r6, r2
c0de6cda:	4604      	mov	r4, r0
c0de6cdc:	f1ba 0f00 	cmp.w	sl, #0
c0de6ce0:	d034      	beq.n	c0de6d4c <nbgl_useCaseAdvancedReview+0x84>
c0de6ce2:	f8da 7000 	ldr.w	r7, [sl]
c0de6ce6:	b92f      	cbnz	r7, c0de6cf4 <nbgl_useCaseAdvancedReview+0x2c>
c0de6ce8:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de6cec:	b910      	cbnz	r0, c0de6cf4 <nbgl_useCaseAdvancedReview+0x2c>
c0de6cee:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de6cf2:	b358      	cbz	r0, c0de6d4c <nbgl_useCaseAdvancedReview+0x84>
c0de6cf4:	481f      	ldr	r0, [pc, #124]	@ (c0de6d74 <nbgl_useCaseAdvancedReview+0xac>)
c0de6cf6:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de6cfa:	2128      	movs	r1, #40	@ 0x28
c0de6cfc:	9705      	str	r7, [sp, #20]
c0de6cfe:	461f      	mov	r7, r3
c0de6d00:	4665      	mov	r5, ip
c0de6d02:	eb09 0400 	add.w	r4, r9, r0
c0de6d06:	4620      	mov	r0, r4
c0de6d08:	f004 fa00 	bl	c0deb10c <__aeabi_memclr>
c0de6d0c:	4919      	ldr	r1, [pc, #100]	@ (c0de6d74 <nbgl_useCaseAdvancedReview+0xac>)
c0de6d0e:	2002      	movs	r0, #2
c0de6d10:	46c4      	mov	ip, r8
c0de6d12:	462a      	mov	r2, r5
c0de6d14:	f809 0001 	strb.w	r0, [r9, r1]
c0de6d18:	9905      	ldr	r1, [sp, #20]
c0de6d1a:	2040      	movs	r0, #64	@ 0x40
c0de6d1c:	2908      	cmp	r1, #8
c0de6d1e:	bf08      	it	eq
c0de6d20:	2080      	moveq	r0, #128	@ 0x80
c0de6d22:	9906      	ldr	r1, [sp, #24]
c0de6d24:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de6d28:	4301      	orrs	r1, r0
c0de6d2a:	1d20      	adds	r0, r4, #4
c0de6d2c:	e880 09e2 	stmia.w	r0, {r1, r5, r6, r7, r8, fp}
c0de6d30:	9807      	ldr	r0, [sp, #28]
c0de6d32:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de6d36:	6220      	str	r0, [r4, #32]
c0de6d38:	f89a 0000 	ldrb.w	r0, [sl]
c0de6d3c:	f010 0f16 	tst.w	r0, #22
c0de6d40:	d00b      	beq.n	c0de6d5a <nbgl_useCaseAdvancedReview+0x92>
c0de6d42:	b008      	add	sp, #32
c0de6d44:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6d48:	f000 b816 	b.w	c0de6d78 <displayInitialWarning>
c0de6d4c:	9103      	str	r1, [sp, #12]
c0de6d4e:	e88d 0908 	stmia.w	sp, {r3, r8, fp}
c0de6d52:	2002      	movs	r0, #2
c0de6d54:	4621      	mov	r1, r4
c0de6d56:	4662      	mov	r2, ip
c0de6d58:	e005      	b.n	c0de6d66 <nbgl_useCaseAdvancedReview+0x9e>
c0de6d5a:	2002      	movs	r0, #2
c0de6d5c:	463d      	mov	r5, r7
c0de6d5e:	e9cd 7c00 	strd	r7, ip, [sp]
c0de6d62:	e9cd b802 	strd	fp, r8, [sp, #8]
c0de6d66:	4633      	mov	r3, r6
c0de6d68:	f7ff ff86 	bl	c0de6c78 <useCaseReview>
c0de6d6c:	b008      	add	sp, #32
c0de6d6e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6d72:	bf00      	nop
c0de6d74:	0000172c 	.word	0x0000172c

c0de6d78 <displayInitialWarning>:
c0de6d78:	4803      	ldr	r0, [pc, #12]	@ (c0de6d88 <displayInitialWarning+0x10>)
c0de6d7a:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de6d7e:	4448      	add	r0, r9
c0de6d80:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de6d82:	f000 bfa5 	b.w	c0de7cd0 <displayWarningStep>
c0de6d86:	bf00      	nop
c0de6d88:	0000172c 	.word	0x0000172c

c0de6d8c <nbgl_useCaseReviewBlindSigning>:
c0de6d8c:	b5b0      	push	{r4, r5, r7, lr}
c0de6d8e:	b086      	sub	sp, #24
c0de6d90:	4d06      	ldr	r5, [pc, #24]	@ (c0de6dac <nbgl_useCaseReviewBlindSigning+0x20>)
c0de6d92:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de6d94:	447d      	add	r5, pc
c0de6d96:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de6d9a:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de6d9c:	9401      	str	r4, [sp, #4]
c0de6d9e:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de6da0:	9400      	str	r4, [sp, #0]
c0de6da2:	f7ff ff91 	bl	c0de6cc8 <nbgl_useCaseAdvancedReview>
c0de6da6:	b006      	add	sp, #24
c0de6da8:	bdb0      	pop	{r4, r5, r7, pc}
c0de6daa:	bf00      	nop
c0de6dac:	0000589c 	.word	0x0000589c

c0de6db0 <nbgl_useCaseAddressReview>:
c0de6db0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6db4:	f8df 8054 	ldr.w	r8, [pc, #84]	@ c0de6e0c <nbgl_useCaseAddressReview+0x5c>
c0de6db8:	460c      	mov	r4, r1
c0de6dba:	4607      	mov	r7, r0
c0de6dbc:	2140      	movs	r1, #64	@ 0x40
c0de6dbe:	469a      	mov	sl, r3
c0de6dc0:	4616      	mov	r6, r2
c0de6dc2:	eb09 0508 	add.w	r5, r9, r8
c0de6dc6:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de6dca:	f004 f99f 	bl	c0deb10c <__aeabi_memclr>
c0de6dce:	2004      	movs	r0, #4
c0de6dd0:	652f      	str	r7, [r5, #80]	@ 0x50
c0de6dd2:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de6dd6:	9908      	ldr	r1, [sp, #32]
c0de6dd8:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de6ddc:	64a9      	str	r1, [r5, #72]	@ 0x48
c0de6dde:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de6de0:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de6de4:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de6de6:	b15c      	cbz	r4, c0de6e00 <nbgl_useCaseAddressReview+0x50>
c0de6de8:	4620      	mov	r0, r4
c0de6dea:	eb09 0508 	add.w	r5, r9, r8
c0de6dee:	f003 fd8d 	bl	c0dea90c <pic>
c0de6df2:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de6df4:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de6df8:	7a21      	ldrb	r1, [r4, #8]
c0de6dfa:	4408      	add	r0, r1
c0de6dfc:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de6e00:	2000      	movs	r0, #0
c0de6e02:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6e06:	f000 b803 	b.w	c0de6e10 <displayReviewPage>
c0de6e0a:	bf00      	nop
c0de6e0c:	0000172c 	.word	0x0000172c

c0de6e10 <displayReviewPage>:
c0de6e10:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6e14:	b088      	sub	sp, #32
c0de6e16:	4e40      	ldr	r6, [pc, #256]	@ (c0de6f18 <displayReviewPage+0x108>)
c0de6e18:	4680      	mov	r8, r0
c0de6e1a:	2100      	movs	r1, #0
c0de6e1c:	2501      	movs	r5, #1
c0de6e1e:	e9cd 1106 	strd	r1, r1, [sp, #24]
c0de6e22:	e9cd 1104 	strd	r1, r1, [sp, #16]
c0de6e26:	eb09 0006 	add.w	r0, r9, r6
c0de6e2a:	6c83      	ldr	r3, [r0, #72]	@ 0x48
c0de6e2c:	6341      	str	r1, [r0, #52]	@ 0x34
c0de6e2e:	2102      	movs	r1, #2
c0de6e30:	2b00      	cmp	r3, #0
c0de6e32:	bf08      	it	eq
c0de6e34:	25ff      	moveq	r5, #255	@ 0xff
c0de6e36:	bf08      	it	eq
c0de6e38:	2101      	moveq	r1, #1
c0de6e3a:	f890 7030 	ldrb.w	r7, [r0, #48]	@ 0x30
c0de6e3e:	f890 2031 	ldrb.w	r2, [r0, #49]	@ 0x31
c0de6e42:	1ebc      	subs	r4, r7, #2
c0de6e44:	b250      	sxtb	r0, r2
c0de6e46:	b2e4      	uxtb	r4, r4
c0de6e48:	42a0      	cmp	r0, r4
c0de6e4a:	da07      	bge.n	c0de6e5c <displayReviewPage+0x4c>
c0de6e4c:	4281      	cmp	r1, r0
c0de6e4e:	dd0c      	ble.n	c0de6e6a <displayReviewPage+0x5a>
c0de6e50:	2a00      	cmp	r2, #0
c0de6e52:	d041      	beq.n	c0de6ed8 <displayReviewPage+0xc8>
c0de6e54:	4285      	cmp	r5, r0
c0de6e56:	bf08      	it	eq
c0de6e58:	9307      	streq	r3, [sp, #28]
c0de6e5a:	e043      	b.n	c0de6ee4 <displayReviewPage+0xd4>
c0de6e5c:	d110      	bne.n	c0de6e80 <displayReviewPage+0x70>
c0de6e5e:	a905      	add	r1, sp, #20
c0de6e60:	aa07      	add	r2, sp, #28
c0de6e62:	2001      	movs	r0, #1
c0de6e64:	f000 ff74 	bl	c0de7d50 <getLastPageInfo>
c0de6e68:	e03c      	b.n	c0de6ee4 <displayReviewPage+0xd4>
c0de6e6a:	eb09 0306 	add.w	r3, r9, r6
c0de6e6e:	6d1d      	ldr	r5, [r3, #80]	@ 0x50
c0de6e70:	b18d      	cbz	r5, c0de6e96 <displayReviewPage+0x86>
c0de6e72:	4281      	cmp	r1, r0
c0de6e74:	d10f      	bne.n	c0de6e96 <displayReviewPage+0x86>
c0de6e76:	9506      	str	r5, [sp, #24]
c0de6e78:	4828      	ldr	r0, [pc, #160]	@ (c0de6f1c <displayReviewPage+0x10c>)
c0de6e7a:	4478      	add	r0, pc
c0de6e7c:	9007      	str	r0, [sp, #28]
c0de6e7e:	e032      	b.n	c0de6ee6 <displayReviewPage+0xd6>
c0de6e80:	1e79      	subs	r1, r7, #1
c0de6e82:	b2c9      	uxtb	r1, r1
c0de6e84:	4288      	cmp	r0, r1
c0de6e86:	d12d      	bne.n	c0de6ee4 <displayReviewPage+0xd4>
c0de6e88:	a905      	add	r1, sp, #20
c0de6e8a:	aa07      	add	r2, sp, #28
c0de6e8c:	2000      	movs	r0, #0
c0de6e8e:	2500      	movs	r5, #0
c0de6e90:	f000 ff5e 	bl	c0de7d50 <getLastPageInfo>
c0de6e94:	e027      	b.n	c0de6ee6 <displayReviewPage+0xd6>
c0de6e96:	2000      	movs	r0, #0
c0de6e98:	f10d 030f 	add.w	r3, sp, #15
c0de6e9c:	f88d 000f 	strb.w	r0, [sp, #15]
c0de6ea0:	eb09 0006 	add.w	r0, r9, r6
c0de6ea4:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de6ea6:	ac05      	add	r4, sp, #20
c0de6ea8:	af04      	add	r7, sp, #16
c0de6eaa:	9302      	str	r3, [sp, #8]
c0de6eac:	e9cd 7400 	strd	r7, r4, [sp]
c0de6eb0:	1a57      	subs	r7, r2, r1
c0de6eb2:	2d00      	cmp	r5, #0
c0de6eb4:	bf18      	it	ne
c0de6eb6:	3f01      	subne	r7, #1
c0de6eb8:	aa07      	add	r2, sp, #28
c0de6eba:	b2f9      	uxtb	r1, r7
c0de6ebc:	ab06      	add	r3, sp, #24
c0de6ebe:	f000 fcb1 	bl	c0de7824 <getPairData>
c0de6ec2:	9804      	ldr	r0, [sp, #16]
c0de6ec4:	b310      	cbz	r0, c0de6f0c <displayReviewPage+0xfc>
c0de6ec6:	eb09 0006 	add.w	r0, r9, r6
c0de6eca:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de6ece:	4914      	ldr	r1, [pc, #80]	@ (c0de6f20 <displayReviewPage+0x110>)
c0de6ed0:	4479      	add	r1, pc
c0de6ed2:	6341      	str	r1, [r0, #52]	@ 0x34
c0de6ed4:	2001      	movs	r0, #1
c0de6ed6:	e01c      	b.n	c0de6f12 <displayReviewPage+0x102>
c0de6ed8:	eb09 0006 	add.w	r0, r9, r6
c0de6edc:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de6ee0:	9105      	str	r1, [sp, #20]
c0de6ee2:	9007      	str	r0, [sp, #28]
c0de6ee4:	2500      	movs	r5, #0
c0de6ee6:	2000      	movs	r0, #0
c0de6ee8:	9a07      	ldr	r2, [sp, #28]
c0de6eea:	9905      	ldr	r1, [sp, #20]
c0de6eec:	4c0d      	ldr	r4, [pc, #52]	@ (c0de6f24 <displayReviewPage+0x114>)
c0de6eee:	b2c0      	uxtb	r0, r0
c0de6ef0:	2300      	movs	r3, #0
c0de6ef2:	9002      	str	r0, [sp, #8]
c0de6ef4:	4640      	mov	r0, r8
c0de6ef6:	447c      	add	r4, pc
c0de6ef8:	e9cd 4300 	strd	r4, r3, [sp]
c0de6efc:	462b      	mov	r3, r5
c0de6efe:	f000 f833 	bl	c0de6f68 <drawStep>
c0de6f02:	b008      	add	sp, #32
c0de6f04:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6f08:	f7fe b876 	b.w	c0de4ff8 <nbgl_refresh>
c0de6f0c:	f89d 000f 	ldrb.w	r0, [sp, #15]
c0de6f10:	0040      	lsls	r0, r0, #1
c0de6f12:	9d06      	ldr	r5, [sp, #24]
c0de6f14:	e7e8      	b.n	c0de6ee8 <displayReviewPage+0xd8>
c0de6f16:	bf00      	nop
c0de6f18:	0000172c 	.word	0x0000172c
c0de6f1c:	00004803 	.word	0x00004803
c0de6f20:	00001069 	.word	0x00001069
c0de6f24:	000010ab 	.word	0x000010ab

c0de6f28 <nbgl_useCaseStatus>:
c0de6f28:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de6f2a:	4605      	mov	r5, r0
c0de6f2c:	480c      	ldr	r0, [pc, #48]	@ (c0de6f60 <nbgl_useCaseStatus+0x38>)
c0de6f2e:	2140      	movs	r1, #64	@ 0x40
c0de6f30:	4614      	mov	r4, r2
c0de6f32:	f001 f9e0 	bl	c0de82f6 <OUTLINED_FUNCTION_5>
c0de6f36:	2009      	movs	r0, #9
c0de6f38:	6374      	str	r4, [r6, #52]	@ 0x34
c0de6f3a:	462a      	mov	r2, r5
c0de6f3c:	2300      	movs	r3, #0
c0de6f3e:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de6f42:	2001      	movs	r0, #1
c0de6f44:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de6f48:	2000      	movs	r0, #0
c0de6f4a:	4906      	ldr	r1, [pc, #24]	@ (c0de6f64 <nbgl_useCaseStatus+0x3c>)
c0de6f4c:	9002      	str	r0, [sp, #8]
c0de6f4e:	4479      	add	r1, pc
c0de6f50:	e9cd 1000 	strd	r1, r0, [sp]
c0de6f54:	2040      	movs	r0, #64	@ 0x40
c0de6f56:	2100      	movs	r1, #0
c0de6f58:	f000 f806 	bl	c0de6f68 <drawStep>
c0de6f5c:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de6f5e:	bf00      	nop
c0de6f60:	0000172c 	.word	0x0000172c
c0de6f64:	0000019f 	.word	0x0000019f

c0de6f68 <drawStep>:
c0de6f68:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6f6c:	b09a      	sub	sp, #104	@ 0x68
c0de6f6e:	4688      	mov	r8, r1
c0de6f70:	4604      	mov	r4, r0
c0de6f72:	a80d      	add	r0, sp, #52	@ 0x34
c0de6f74:	2134      	movs	r1, #52	@ 0x34
c0de6f76:	461d      	mov	r5, r3
c0de6f78:	4616      	mov	r6, r2
c0de6f7a:	f004 f8c7 	bl	c0deb10c <__aeabi_memclr>
c0de6f7e:	2700      	movs	r7, #0
c0de6f80:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de6f84:	4856      	ldr	r0, [pc, #344]	@ (c0de70e0 <drawStep+0x178>)
c0de6f86:	4478      	add	r0, pc
c0de6f88:	f003 fcc0 	bl	c0dea90c <pic>
c0de6f8c:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de70dc <drawStep+0x174>
c0de6f90:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de6f94:	9709      	str	r7, [sp, #36]	@ 0x24
c0de6f96:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de6f9a:	eb09 000b 	add.w	r0, r9, fp
c0de6f9e:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de6fa2:	2802      	cmp	r0, #2
c0de6fa4:	d30b      	bcc.n	c0de6fbe <drawStep+0x56>
c0de6fa6:	eb09 010b 	add.w	r1, r9, fp
c0de6faa:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de6fae:	b129      	cbz	r1, c0de6fbc <drawStep+0x54>
c0de6fb0:	3801      	subs	r0, #1
c0de6fb2:	2703      	movs	r7, #3
c0de6fb4:	4288      	cmp	r0, r1
c0de6fb6:	bf08      	it	eq
c0de6fb8:	2702      	moveq	r7, #2
c0de6fba:	e000      	b.n	c0de6fbe <drawStep+0x56>
c0de6fbc:	2701      	movs	r7, #1
c0de6fbe:	eb09 000b 	add.w	r0, r9, fp
c0de6fc2:	ea47 0204 	orr.w	r2, r7, r4
c0de6fc6:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de6fca:	4614      	mov	r4, r2
c0de6fcc:	2901      	cmp	r1, #1
c0de6fce:	bf88      	it	hi
c0de6fd0:	f044 0402 	orrhi.w	r4, r4, #2
c0de6fd4:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de6fd6:	2900      	cmp	r1, #0
c0de6fd8:	bf08      	it	eq
c0de6fda:	4614      	moveq	r4, r2
c0de6fdc:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de6fe0:	2806      	cmp	r0, #6
c0de6fe2:	f040 0108 	orr.w	r1, r0, #8
c0de6fe6:	bf18      	it	ne
c0de6fe8:	4614      	movne	r4, r2
c0de6fea:	2909      	cmp	r1, #9
c0de6fec:	bf0c      	ite	eq
c0de6fee:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de6ff2:	f04f 0a00 	movne.w	sl, #0
c0de6ff6:	280a      	cmp	r0, #10
c0de6ff8:	d105      	bne.n	c0de7006 <drawStep+0x9e>
c0de6ffa:	eb09 000b 	add.w	r0, r9, fp
c0de6ffe:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de7000:	b108      	cbz	r0, c0de7006 <drawStep+0x9e>
c0de7002:	f7ff fcbd 	bl	c0de6980 <nbgl_stepRelease>
c0de7006:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de7008:	b1b6      	cbz	r6, c0de7038 <drawStep+0xd0>
c0de700a:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de700c:	f1b8 0f00 	cmp.w	r8, #0
c0de7010:	d12c      	bne.n	c0de706c <drawStep+0x104>
c0de7012:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de7014:	2802      	cmp	r0, #2
c0de7016:	d029      	beq.n	c0de706c <drawStep+0x104>
c0de7018:	2201      	movs	r2, #1
c0de701a:	4633      	mov	r3, r6
c0de701c:	2801      	cmp	r0, #1
c0de701e:	bf08      	it	eq
c0de7020:	2202      	moveq	r2, #2
c0de7022:	4620      	mov	r0, r4
c0de7024:	2d00      	cmp	r5, #0
c0de7026:	bf08      	it	eq
c0de7028:	462a      	moveq	r2, r5
c0de702a:	e9cd 5200 	strd	r5, r2, [sp]
c0de702e:	9702      	str	r7, [sp, #8]
c0de7030:	4652      	mov	r2, sl
c0de7032:	f7ff fa39 	bl	c0de64a8 <nbgl_stepDrawText>
c0de7036:	e043      	b.n	c0de70c0 <drawStep+0x158>
c0de7038:	eb09 000b 	add.w	r0, r9, fp
c0de703c:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de7040:	a903      	add	r1, sp, #12
c0de7042:	aa0d      	add	r2, sp, #52	@ 0x34
c0de7044:	f000 fbaa 	bl	c0de779c <getContentElemAtIdx>
c0de7048:	b330      	cbz	r0, c0de7098 <drawStep+0x130>
c0de704a:	7801      	ldrb	r1, [r0, #0]
c0de704c:	2400      	movs	r4, #0
c0de704e:	290a      	cmp	r1, #10
c0de7050:	d024      	beq.n	c0de709c <drawStep+0x134>
c0de7052:	2909      	cmp	r1, #9
c0de7054:	d135      	bne.n	c0de70c2 <drawStep+0x15a>
c0de7056:	f001 f954 	bl	c0de8302 <OUTLINED_FUNCTION_6>
c0de705a:	4922      	ldr	r1, [pc, #136]	@ (c0de70e4 <drawStep+0x17c>)
c0de705c:	4479      	add	r1, pc
c0de705e:	910a      	str	r1, [sp, #40]	@ 0x28
c0de7060:	7941      	ldrb	r1, [r0, #5]
c0de7062:	7980      	ldrb	r0, [r0, #6]
c0de7064:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de7068:	1c48      	adds	r0, r1, #1
c0de706a:	e020      	b.n	c0de70ae <drawStep+0x146>
c0de706c:	2000      	movs	r0, #0
c0de706e:	9603      	str	r6, [sp, #12]
c0de7070:	f8cd 8014 	str.w	r8, [sp, #20]
c0de7074:	9504      	str	r5, [sp, #16]
c0de7076:	4652      	mov	r2, sl
c0de7078:	f88d 0018 	strb.w	r0, [sp, #24]
c0de707c:	eb09 000b 	add.w	r0, r9, fp
c0de7080:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de7082:	4328      	orrs	r0, r5
c0de7084:	bf18      	it	ne
c0de7086:	2001      	movne	r0, #1
c0de7088:	f88d 0019 	strb.w	r0, [sp, #25]
c0de708c:	9700      	str	r7, [sp, #0]
c0de708e:	ab03      	add	r3, sp, #12
c0de7090:	4620      	mov	r0, r4
c0de7092:	f7ff fb4f 	bl	c0de6734 <nbgl_stepDrawCenteredInfo>
c0de7096:	e013      	b.n	c0de70c0 <drawStep+0x158>
c0de7098:	2400      	movs	r4, #0
c0de709a:	e012      	b.n	c0de70c2 <drawStep+0x15a>
c0de709c:	f001 f931 	bl	c0de8302 <OUTLINED_FUNCTION_6>
c0de70a0:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de70a4:	4910      	ldr	r1, [pc, #64]	@ (c0de70e8 <drawStep+0x180>)
c0de70a6:	7a00      	ldrb	r0, [r0, #8]
c0de70a8:	4479      	add	r1, pc
c0de70aa:	3001      	adds	r0, #1
c0de70ac:	910a      	str	r1, [sp, #40]	@ 0x28
c0de70ae:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de70b2:	4651      	mov	r1, sl
c0de70b4:	463b      	mov	r3, r7
c0de70b6:	480d      	ldr	r0, [pc, #52]	@ (c0de70ec <drawStep+0x184>)
c0de70b8:	aa0a      	add	r2, sp, #40	@ 0x28
c0de70ba:	4478      	add	r0, pc
c0de70bc:	f7ff fbca 	bl	c0de6854 <nbgl_stepDrawMenuList>
c0de70c0:	4604      	mov	r4, r0
c0de70c2:	eb09 000b 	add.w	r0, r9, fp
c0de70c6:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de70ca:	280a      	cmp	r0, #10
c0de70cc:	bf04      	itt	eq
c0de70ce:	eb09 000b 	addeq.w	r0, r9, fp
c0de70d2:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de70d4:	b01a      	add	sp, #104	@ 0x68
c0de70d6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de70da:	bf00      	nop
c0de70dc:	0000172c 	.word	0x0000172c
c0de70e0:	0000116f 	.word	0x0000116f
c0de70e4:	000010a9 	.word	0x000010a9
c0de70e8:	0000105d 	.word	0x0000105d
c0de70ec:	000010af 	.word	0x000010af

c0de70f0 <statusButtonCallback>:
c0de70f0:	f041 0004 	orr.w	r0, r1, #4
c0de70f4:	2804      	cmp	r0, #4
c0de70f6:	d001      	beq.n	c0de70fc <statusButtonCallback+0xc>
c0de70f8:	2901      	cmp	r1, #1
c0de70fa:	d104      	bne.n	c0de7106 <statusButtonCallback+0x16>
c0de70fc:	4802      	ldr	r0, [pc, #8]	@ (c0de7108 <statusButtonCallback+0x18>)
c0de70fe:	4448      	add	r0, r9
c0de7100:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de7102:	b100      	cbz	r0, c0de7106 <statusButtonCallback+0x16>
c0de7104:	4700      	bx	r0
c0de7106:	4770      	bx	lr
c0de7108:	0000172c 	.word	0x0000172c

c0de710c <nbgl_useCaseReviewStatus>:
c0de710c:	460a      	mov	r2, r1
c0de710e:	b198      	cbz	r0, c0de7138 <nbgl_useCaseReviewStatus+0x2c>
c0de7110:	2801      	cmp	r0, #1
c0de7112:	d016      	beq.n	c0de7142 <nbgl_useCaseReviewStatus+0x36>
c0de7114:	2802      	cmp	r0, #2
c0de7116:	d019      	beq.n	c0de714c <nbgl_useCaseReviewStatus+0x40>
c0de7118:	2803      	cmp	r0, #3
c0de711a:	d01c      	beq.n	c0de7156 <nbgl_useCaseReviewStatus+0x4a>
c0de711c:	2804      	cmp	r0, #4
c0de711e:	d01f      	beq.n	c0de7160 <nbgl_useCaseReviewStatus+0x54>
c0de7120:	2807      	cmp	r0, #7
c0de7122:	d022      	beq.n	c0de716a <nbgl_useCaseReviewStatus+0x5e>
c0de7124:	2806      	cmp	r0, #6
c0de7126:	d025      	beq.n	c0de7174 <nbgl_useCaseReviewStatus+0x68>
c0de7128:	2805      	cmp	r0, #5
c0de712a:	bf18      	it	ne
c0de712c:	4770      	bxne	lr
c0de712e:	4815      	ldr	r0, [pc, #84]	@ (c0de7184 <nbgl_useCaseReviewStatus+0x78>)
c0de7130:	2100      	movs	r1, #0
c0de7132:	4478      	add	r0, pc
c0de7134:	f7ff bef8 	b.w	c0de6f28 <nbgl_useCaseStatus>
c0de7138:	4813      	ldr	r0, [pc, #76]	@ (c0de7188 <nbgl_useCaseReviewStatus+0x7c>)
c0de713a:	2101      	movs	r1, #1
c0de713c:	4478      	add	r0, pc
c0de713e:	f7ff bef3 	b.w	c0de6f28 <nbgl_useCaseStatus>
c0de7142:	4812      	ldr	r0, [pc, #72]	@ (c0de718c <nbgl_useCaseReviewStatus+0x80>)
c0de7144:	2100      	movs	r1, #0
c0de7146:	4478      	add	r0, pc
c0de7148:	f7ff beee 	b.w	c0de6f28 <nbgl_useCaseStatus>
c0de714c:	4810      	ldr	r0, [pc, #64]	@ (c0de7190 <nbgl_useCaseReviewStatus+0x84>)
c0de714e:	2101      	movs	r1, #1
c0de7150:	4478      	add	r0, pc
c0de7152:	f7ff bee9 	b.w	c0de6f28 <nbgl_useCaseStatus>
c0de7156:	480f      	ldr	r0, [pc, #60]	@ (c0de7194 <nbgl_useCaseReviewStatus+0x88>)
c0de7158:	2100      	movs	r1, #0
c0de715a:	4478      	add	r0, pc
c0de715c:	f7ff bee4 	b.w	c0de6f28 <nbgl_useCaseStatus>
c0de7160:	4807      	ldr	r0, [pc, #28]	@ (c0de7180 <nbgl_useCaseReviewStatus+0x74>)
c0de7162:	2101      	movs	r1, #1
c0de7164:	4478      	add	r0, pc
c0de7166:	f7ff bedf 	b.w	c0de6f28 <nbgl_useCaseStatus>
c0de716a:	480c      	ldr	r0, [pc, #48]	@ (c0de719c <nbgl_useCaseReviewStatus+0x90>)
c0de716c:	2100      	movs	r1, #0
c0de716e:	4478      	add	r0, pc
c0de7170:	f7ff beda 	b.w	c0de6f28 <nbgl_useCaseStatus>
c0de7174:	4808      	ldr	r0, [pc, #32]	@ (c0de7198 <nbgl_useCaseReviewStatus+0x8c>)
c0de7176:	2101      	movs	r1, #1
c0de7178:	4478      	add	r0, pc
c0de717a:	f7ff bed5 	b.w	c0de6f28 <nbgl_useCaseStatus>
c0de717e:	bf00      	nop
c0de7180:	000042a8 	.word	0x000042a8
c0de7184:	000042fc 	.word	0x000042fc
c0de7188:	00004393 	.word	0x00004393
c0de718c:	00004562 	.word	0x00004562
c0de7190:	000043f2 	.word	0x000043f2
c0de7194:	000044f8 	.word	0x000044f8
c0de7198:	00004317 	.word	0x00004317
c0de719c:	00004457 	.word	0x00004457

c0de71a0 <displayStreamingReviewPage>:
c0de71a0:	b570      	push	{r4, r5, r6, lr}
c0de71a2:	b08c      	sub	sp, #48	@ 0x30
c0de71a4:	4d5a      	ldr	r5, [pc, #360]	@ (c0de7310 <displayStreamingReviewPage+0x170>)
c0de71a6:	2100      	movs	r1, #0
c0de71a8:	4604      	mov	r4, r0
c0de71aa:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de71ae:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de71b2:	eb09 0005 	add.w	r0, r9, r5
c0de71b6:	6341      	str	r1, [r0, #52]	@ 0x34
c0de71b8:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de71bc:	2806      	cmp	r0, #6
c0de71be:	d015      	beq.n	c0de71ec <displayStreamingReviewPage+0x4c>
c0de71c0:	2805      	cmp	r0, #5
c0de71c2:	d13d      	bne.n	c0de7240 <displayStreamingReviewPage+0xa0>
c0de71c4:	eb09 0205 	add.w	r2, r9, r5
c0de71c8:	2101      	movs	r1, #1
c0de71ca:	2302      	movs	r3, #2
c0de71cc:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de71ce:	2800      	cmp	r0, #0
c0de71d0:	bf08      	it	eq
c0de71d2:	21ff      	moveq	r1, #255	@ 0xff
c0de71d4:	bf08      	it	eq
c0de71d6:	2301      	moveq	r3, #1
c0de71d8:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de71dc:	4293      	cmp	r3, r2
c0de71de:	dd3b      	ble.n	c0de7258 <displayStreamingReviewPage+0xb8>
c0de71e0:	b2d3      	uxtb	r3, r2
c0de71e2:	2b00      	cmp	r3, #0
c0de71e4:	d063      	beq.n	c0de72ae <displayStreamingReviewPage+0x10e>
c0de71e6:	4291      	cmp	r1, r2
c0de71e8:	d066      	beq.n	c0de72b8 <displayStreamingReviewPage+0x118>
c0de71ea:	e066      	b.n	c0de72ba <displayStreamingReviewPage+0x11a>
c0de71ec:	eb09 0005 	add.w	r0, r9, r5
c0de71f0:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de71f4:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de71f6:	7a02      	ldrb	r2, [r0, #8]
c0de71f8:	4291      	cmp	r1, r2
c0de71fa:	da2d      	bge.n	c0de7258 <displayStreamingReviewPage+0xb8>
c0de71fc:	eb09 0205 	add.w	r2, r9, r5
c0de7200:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de7202:	b3cb      	cbz	r3, c0de7278 <displayStreamingReviewPage+0xd8>
c0de7204:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de7208:	bbb2      	cbnz	r2, c0de7278 <displayStreamingReviewPage+0xd8>
c0de720a:	eb09 0205 	add.w	r2, r9, r5
c0de720e:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de7212:	2a01      	cmp	r2, #1
c0de7214:	d807      	bhi.n	c0de7226 <displayStreamingReviewPage+0x86>
c0de7216:	2900      	cmp	r1, #0
c0de7218:	dc05      	bgt.n	c0de7226 <displayStreamingReviewPage+0x86>
c0de721a:	eb09 0305 	add.w	r3, r9, r5
c0de721e:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de7222:	2b08      	cmp	r3, #8
c0de7224:	d128      	bne.n	c0de7278 <displayStreamingReviewPage+0xd8>
c0de7226:	2000      	movs	r0, #0
c0de7228:	9007      	str	r0, [sp, #28]
c0de722a:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de722e:	f004 0008 	and.w	r0, r4, #8
c0de7232:	2a01      	cmp	r2, #1
c0de7234:	d001      	beq.n	c0de723a <displayStreamingReviewPage+0x9a>
c0de7236:	2901      	cmp	r1, #1
c0de7238:	db50      	blt.n	c0de72dc <displayStreamingReviewPage+0x13c>
c0de723a:	f040 0003 	orr.w	r0, r0, #3
c0de723e:	e04f      	b.n	c0de72e0 <displayStreamingReviewPage+0x140>
c0de7240:	eb09 0005 	add.w	r0, r9, r5
c0de7244:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de7248:	b180      	cbz	r0, c0de726c <displayStreamingReviewPage+0xcc>
c0de724a:	a909      	add	r1, sp, #36	@ 0x24
c0de724c:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de724e:	2000      	movs	r0, #0
c0de7250:	2500      	movs	r5, #0
c0de7252:	f000 fd7d 	bl	c0de7d50 <getLastPageInfo>
c0de7256:	e031      	b.n	c0de72bc <displayStreamingReviewPage+0x11c>
c0de7258:	eb09 0005 	add.w	r0, r9, r5
c0de725c:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de725e:	2900      	cmp	r1, #0
c0de7260:	d053      	beq.n	c0de730a <displayStreamingReviewPage+0x16a>
c0de7262:	2001      	movs	r0, #1
c0de7264:	b00c      	add	sp, #48	@ 0x30
c0de7266:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de726a:	4708      	bx	r1
c0de726c:	a909      	add	r1, sp, #36	@ 0x24
c0de726e:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de7270:	2001      	movs	r0, #1
c0de7272:	f000 fd6d 	bl	c0de7d50 <getLastPageInfo>
c0de7276:	e020      	b.n	c0de72ba <displayStreamingReviewPage+0x11a>
c0de7278:	2300      	movs	r3, #0
c0de727a:	eb09 0205 	add.w	r2, r9, r5
c0de727e:	b2c9      	uxtb	r1, r1
c0de7280:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de7284:	f88d 300f 	strb.w	r3, [sp, #15]
c0de7288:	ab09      	add	r3, sp, #36	@ 0x24
c0de728a:	ad08      	add	r5, sp, #32
c0de728c:	f10d 020f 	add.w	r2, sp, #15
c0de7290:	e9cd 5300 	strd	r5, r3, [sp]
c0de7294:	9202      	str	r2, [sp, #8]
c0de7296:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de7298:	ab0a      	add	r3, sp, #40	@ 0x28
c0de729a:	f000 fac3 	bl	c0de7824 <getPairData>
c0de729e:	9808      	ldr	r0, [sp, #32]
c0de72a0:	2800      	cmp	r0, #0
c0de72a2:	bf12      	itee	ne
c0de72a4:	2501      	movne	r5, #1
c0de72a6:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de72aa:	0045      	lsleq	r5, r0, #1
c0de72ac:	e006      	b.n	c0de72bc <displayStreamingReviewPage+0x11c>
c0de72ae:	eb09 0005 	add.w	r0, r9, r5
c0de72b2:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de72b6:	9109      	str	r1, [sp, #36]	@ 0x24
c0de72b8:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de72ba:	2500      	movs	r5, #0
c0de72bc:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de72be:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de72c2:	4e17      	ldr	r6, [pc, #92]	@ (c0de7320 <displayStreamingReviewPage+0x180>)
c0de72c4:	b2e8      	uxtb	r0, r5
c0de72c6:	2500      	movs	r5, #0
c0de72c8:	9002      	str	r0, [sp, #8]
c0de72ca:	4620      	mov	r0, r4
c0de72cc:	447e      	add	r6, pc
c0de72ce:	f001 f81b 	bl	c0de8308 <OUTLINED_FUNCTION_7>
c0de72d2:	b00c      	add	sp, #48	@ 0x30
c0de72d4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de72d8:	f7fd be8e 	b.w	c0de4ff8 <nbgl_refresh>
c0de72dc:	f040 0001 	orr.w	r0, r0, #1
c0de72e0:	490c      	ldr	r1, [pc, #48]	@ (c0de7314 <displayStreamingReviewPage+0x174>)
c0de72e2:	2200      	movs	r2, #0
c0de72e4:	4479      	add	r1, pc
c0de72e6:	9104      	str	r1, [sp, #16]
c0de72e8:	490b      	ldr	r1, [pc, #44]	@ (c0de7318 <displayStreamingReviewPage+0x178>)
c0de72ea:	4479      	add	r1, pc
c0de72ec:	9106      	str	r1, [sp, #24]
c0de72ee:	2100      	movs	r1, #0
c0de72f0:	9100      	str	r1, [sp, #0]
c0de72f2:	490a      	ldr	r1, [pc, #40]	@ (c0de731c <displayStreamingReviewPage+0x17c>)
c0de72f4:	ab04      	add	r3, sp, #16
c0de72f6:	4479      	add	r1, pc
c0de72f8:	f7ff fa1c 	bl	c0de6734 <nbgl_stepDrawCenteredInfo>
c0de72fc:	eb09 0405 	add.w	r4, r9, r5
c0de7300:	f7fd fe7a 	bl	c0de4ff8 <nbgl_refresh>
c0de7304:	2001      	movs	r0, #1
c0de7306:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de730a:	b00c      	add	sp, #48	@ 0x30
c0de730c:	bd70      	pop	{r4, r5, r6, pc}
c0de730e:	bf00      	nop
c0de7310:	0000172c 	.word	0x0000172c
c0de7314:	0000415d 	.word	0x0000415d
c0de7318:	00003f6c 	.word	0x00003f6c
c0de731c:	00000edf 	.word	0x00000edf
c0de7320:	00000f79 	.word	0x00000f79

c0de7324 <nbgl_useCaseSpinner>:
c0de7324:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de7326:	4604      	mov	r4, r0
c0de7328:	480b      	ldr	r0, [pc, #44]	@ (c0de7358 <nbgl_useCaseSpinner+0x34>)
c0de732a:	2140      	movs	r1, #64	@ 0x40
c0de732c:	f000 ffd9 	bl	c0de82e2 <OUTLINED_FUNCTION_3>
c0de7330:	2001      	movs	r0, #1
c0de7332:	4622      	mov	r2, r4
c0de7334:	2300      	movs	r3, #0
c0de7336:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de733a:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de733e:	2000      	movs	r0, #0
c0de7340:	e9cd 0000 	strd	r0, r0, [sp]
c0de7344:	9002      	str	r0, [sp, #8]
c0de7346:	2000      	movs	r0, #0
c0de7348:	4904      	ldr	r1, [pc, #16]	@ (c0de735c <nbgl_useCaseSpinner+0x38>)
c0de734a:	4479      	add	r1, pc
c0de734c:	f7ff fe0c 	bl	c0de6f68 <drawStep>
c0de7350:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de7354:	f7fd be50 	b.w	c0de4ff8 <nbgl_refresh>
c0de7358:	0000172c 	.word	0x0000172c
c0de735c:	00004003 	.word	0x00004003

c0de7360 <nbgl_useCaseChoice>:
c0de7360:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7364:	4607      	mov	r7, r0
c0de7366:	480b      	ldr	r0, [pc, #44]	@ (c0de7394 <nbgl_useCaseChoice+0x34>)
c0de7368:	f000 ffa6 	bl	c0de82b8 <OUTLINED_FUNCTION_0>
c0de736c:	9807      	ldr	r0, [sp, #28]
c0de736e:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de7370:	9806      	ldr	r0, [sp, #24]
c0de7372:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de7376:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de737a:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de737c:	2008      	movs	r0, #8
c0de737e:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de7382:	2004      	movs	r0, #4
c0de7384:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de7388:	2000      	movs	r0, #0
c0de738a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de738e:	f000 b803 	b.w	c0de7398 <displayChoicePage>
c0de7392:	bf00      	nop
c0de7394:	0000172c 	.word	0x0000172c

c0de7398 <displayChoicePage>:
c0de7398:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de739a:	4b28      	ldr	r3, [pc, #160]	@ (c0de743c <displayChoicePage+0xa4>)
c0de739c:	2200      	movs	r2, #0
c0de739e:	eb09 0103 	add.w	r1, r9, r3
c0de73a2:	634a      	str	r2, [r1, #52]	@ 0x34
c0de73a4:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de73a8:	b179      	cbz	r1, c0de73ca <displayChoicePage+0x32>
c0de73aa:	2902      	cmp	r1, #2
c0de73ac:	d021      	beq.n	c0de73f2 <displayChoicePage+0x5a>
c0de73ae:	2901      	cmp	r1, #1
c0de73b0:	d10f      	bne.n	c0de73d2 <displayChoicePage+0x3a>
c0de73b2:	eb09 0103 	add.w	r1, r9, r3
c0de73b6:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de73b8:	b1a1      	cbz	r1, c0de73e4 <displayChoicePage+0x4c>
c0de73ba:	eb09 0203 	add.w	r2, r9, r3
c0de73be:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de73c0:	b182      	cbz	r2, c0de73e4 <displayChoicePage+0x4c>
c0de73c2:	eb09 0103 	add.w	r1, r9, r3
c0de73c6:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de73c8:	e029      	b.n	c0de741e <displayChoicePage+0x86>
c0de73ca:	eb09 0103 	add.w	r1, r9, r3
c0de73ce:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de73d0:	e01d      	b.n	c0de740e <displayChoicePage+0x76>
c0de73d2:	4a1d      	ldr	r2, [pc, #116]	@ (c0de7448 <displayChoicePage+0xb0>)
c0de73d4:	eb09 0103 	add.w	r1, r9, r3
c0de73d8:	447a      	add	r2, pc
c0de73da:	634a      	str	r2, [r1, #52]	@ 0x34
c0de73dc:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de73de:	491b      	ldr	r1, [pc, #108]	@ (c0de744c <displayChoicePage+0xb4>)
c0de73e0:	4479      	add	r1, pc
c0de73e2:	e018      	b.n	c0de7416 <displayChoicePage+0x7e>
c0de73e4:	0702      	lsls	r2, r0, #28
c0de73e6:	d40d      	bmi.n	c0de7404 <displayChoicePage+0x6c>
c0de73e8:	eb09 0103 	add.w	r1, r9, r3
c0de73ec:	2202      	movs	r2, #2
c0de73ee:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de73f2:	4a13      	ldr	r2, [pc, #76]	@ (c0de7440 <displayChoicePage+0xa8>)
c0de73f4:	eb09 0103 	add.w	r1, r9, r3
c0de73f8:	447a      	add	r2, pc
c0de73fa:	634a      	str	r2, [r1, #52]	@ 0x34
c0de73fc:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de73fe:	4911      	ldr	r1, [pc, #68]	@ (c0de7444 <displayChoicePage+0xac>)
c0de7400:	4479      	add	r1, pc
c0de7402:	e008      	b.n	c0de7416 <displayChoicePage+0x7e>
c0de7404:	eb09 0203 	add.w	r2, r9, r3
c0de7408:	2400      	movs	r4, #0
c0de740a:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de740e:	eb09 0203 	add.w	r2, r9, r3
c0de7412:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de7414:	b109      	cbz	r1, c0de741a <displayChoicePage+0x82>
c0de7416:	2300      	movs	r3, #0
c0de7418:	e003      	b.n	c0de7422 <displayChoicePage+0x8a>
c0de741a:	eb09 0103 	add.w	r1, r9, r3
c0de741e:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de7420:	2100      	movs	r1, #0
c0de7422:	4d0b      	ldr	r5, [pc, #44]	@ (c0de7450 <displayChoicePage+0xb8>)
c0de7424:	2400      	movs	r4, #0
c0de7426:	9402      	str	r4, [sp, #8]
c0de7428:	447d      	add	r5, pc
c0de742a:	e9cd 5400 	strd	r5, r4, [sp]
c0de742e:	f7ff fd9b 	bl	c0de6f68 <drawStep>
c0de7432:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de7436:	f7fd bddf 	b.w	c0de4ff8 <nbgl_refresh>
c0de743a:	bf00      	nop
c0de743c:	0000172c 	.word	0x0000172c
c0de7440:	00000e79 	.word	0x00000e79
c0de7444:	00003f8a 	.word	0x00003f8a
c0de7448:	00000ead 	.word	0x00000ead
c0de744c:	00003f2e 	.word	0x00003f2e
c0de7450:	00000e71 	.word	0x00000e71

c0de7454 <getContentAtIdx>:
c0de7454:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7456:	b087      	sub	sp, #28
c0de7458:	460d      	mov	r5, r1
c0de745a:	4606      	mov	r6, r0
c0de745c:	a801      	add	r0, sp, #4
c0de745e:	2118      	movs	r1, #24
c0de7460:	4614      	mov	r4, r2
c0de7462:	f003 fe53 	bl	c0deb10c <__aeabi_memclr>
c0de7466:	2d00      	cmp	r5, #0
c0de7468:	d428      	bmi.n	c0de74bc <getContentAtIdx+0x68>
c0de746a:	7a30      	ldrb	r0, [r6, #8]
c0de746c:	4285      	cmp	r5, r0
c0de746e:	da25      	bge.n	c0de74bc <getContentAtIdx+0x68>
c0de7470:	7830      	ldrb	r0, [r6, #0]
c0de7472:	b338      	cbz	r0, c0de74c4 <getContentAtIdx+0x70>
c0de7474:	b314      	cbz	r4, c0de74bc <getContentAtIdx+0x68>
c0de7476:	4620      	mov	r0, r4
c0de7478:	2134      	movs	r1, #52	@ 0x34
c0de747a:	f003 fe47 	bl	c0deb10c <__aeabi_memclr>
c0de747e:	4821      	ldr	r0, [pc, #132]	@ (c0de7504 <getContentAtIdx+0xb0>)
c0de7480:	4448      	add	r0, r9
c0de7482:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de7484:	b33a      	cbz	r2, c0de74d6 <getContentAtIdx+0x82>
c0de7486:	b2e8      	uxtb	r0, r5
c0de7488:	ad01      	add	r5, sp, #4
c0de748a:	4629      	mov	r1, r5
c0de748c:	4790      	blx	r2
c0de748e:	b1a8      	cbz	r0, c0de74bc <getContentAtIdx+0x68>
c0de7490:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de7494:	280a      	cmp	r0, #10
c0de7496:	7020      	strb	r0, [r4, #0]
c0de7498:	d027      	beq.n	c0de74ea <getContentAtIdx+0x96>
c0de749a:	2803      	cmp	r0, #3
c0de749c:	d008      	beq.n	c0de74b0 <getContentAtIdx+0x5c>
c0de749e:	2804      	cmp	r0, #4
c0de74a0:	d029      	beq.n	c0de74f6 <getContentAtIdx+0xa2>
c0de74a2:	2807      	cmp	r0, #7
c0de74a4:	d01c      	beq.n	c0de74e0 <getContentAtIdx+0x8c>
c0de74a6:	2808      	cmp	r0, #8
c0de74a8:	d002      	beq.n	c0de74b0 <getContentAtIdx+0x5c>
c0de74aa:	2809      	cmp	r0, #9
c0de74ac:	d018      	beq.n	c0de74e0 <getContentAtIdx+0x8c>
c0de74ae:	b928      	cbnz	r0, c0de74bc <getContentAtIdx+0x68>
c0de74b0:	1d28      	adds	r0, r5, #4
c0de74b2:	1d21      	adds	r1, r4, #4
c0de74b4:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de74b8:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de74ba:	e000      	b.n	c0de74be <getContentAtIdx+0x6a>
c0de74bc:	2400      	movs	r4, #0
c0de74be:	4620      	mov	r0, r4
c0de74c0:	b007      	add	sp, #28
c0de74c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de74c4:	6870      	ldr	r0, [r6, #4]
c0de74c6:	2134      	movs	r1, #52	@ 0x34
c0de74c8:	fb05 0001 	mla	r0, r5, r1, r0
c0de74cc:	b007      	add	sp, #28
c0de74ce:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de74d2:	f003 ba1b 	b.w	c0dea90c <pic>
c0de74d6:	6872      	ldr	r2, [r6, #4]
c0de74d8:	b2e8      	uxtb	r0, r5
c0de74da:	4621      	mov	r1, r4
c0de74dc:	4790      	blx	r2
c0de74de:	e7ee      	b.n	c0de74be <getContentAtIdx+0x6a>
c0de74e0:	9802      	ldr	r0, [sp, #8]
c0de74e2:	9903      	ldr	r1, [sp, #12]
c0de74e4:	6060      	str	r0, [r4, #4]
c0de74e6:	60a1      	str	r1, [r4, #8]
c0de74e8:	e7e9      	b.n	c0de74be <getContentAtIdx+0x6a>
c0de74ea:	1d28      	adds	r0, r5, #4
c0de74ec:	1d21      	adds	r1, r4, #4
c0de74ee:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de74f2:	c12c      	stmia	r1!, {r2, r3, r5}
c0de74f4:	e7e3      	b.n	c0de74be <getContentAtIdx+0x6a>
c0de74f6:	1d28      	adds	r0, r5, #4
c0de74f8:	1d21      	adds	r1, r4, #4
c0de74fa:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de74fe:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de7500:	e7dd      	b.n	c0de74be <getContentAtIdx+0x6a>
c0de7502:	bf00      	nop
c0de7504:	0000172c 	.word	0x0000172c

c0de7508 <getContentNbElement>:
c0de7508:	7802      	ldrb	r2, [r0, #0]
c0de750a:	2101      	movs	r1, #1
c0de750c:	b1a2      	cbz	r2, c0de7538 <getContentNbElement+0x30>
c0de750e:	2a03      	cmp	r2, #3
c0de7510:	d012      	beq.n	c0de7538 <getContentNbElement+0x30>
c0de7512:	2a0a      	cmp	r2, #10
c0de7514:	d007      	beq.n	c0de7526 <getContentNbElement+0x1e>
c0de7516:	2a07      	cmp	r2, #7
c0de7518:	d007      	beq.n	c0de752a <getContentNbElement+0x22>
c0de751a:	2a08      	cmp	r2, #8
c0de751c:	d007      	beq.n	c0de752e <getContentNbElement+0x26>
c0de751e:	2a09      	cmp	r2, #9
c0de7520:	d007      	beq.n	c0de7532 <getContentNbElement+0x2a>
c0de7522:	2a04      	cmp	r2, #4
c0de7524:	d107      	bne.n	c0de7536 <getContentNbElement+0x2e>
c0de7526:	7b01      	ldrb	r1, [r0, #12]
c0de7528:	e006      	b.n	c0de7538 <getContentNbElement+0x30>
c0de752a:	7a01      	ldrb	r1, [r0, #8]
c0de752c:	e004      	b.n	c0de7538 <getContentNbElement+0x30>
c0de752e:	7c01      	ldrb	r1, [r0, #16]
c0de7530:	e002      	b.n	c0de7538 <getContentNbElement+0x30>
c0de7532:	7a41      	ldrb	r1, [r0, #9]
c0de7534:	e000      	b.n	c0de7538 <getContentNbElement+0x30>
c0de7536:	2100      	movs	r1, #0
c0de7538:	4608      	mov	r0, r1
c0de753a:	4770      	bx	lr

c0de753c <displayContent>:
c0de753c:	b570      	push	{r4, r5, r6, lr}
c0de753e:	b08a      	sub	sp, #40	@ 0x28
c0de7540:	460d      	mov	r5, r1
c0de7542:	4604      	mov	r4, r0
c0de7544:	a804      	add	r0, sp, #16
c0de7546:	2118      	movs	r1, #24
c0de7548:	f003 fde0 	bl	c0deb10c <__aeabi_memclr>
c0de754c:	4820      	ldr	r0, [pc, #128]	@ (c0de75d0 <displayContent+0x94>)
c0de754e:	f000 febd 	bl	c0de82cc <OUTLINED_FUNCTION_2>
c0de7552:	dd14      	ble.n	c0de757e <displayContent+0x42>
c0de7554:	a904      	add	r1, sp, #16
c0de7556:	4628      	mov	r0, r5
c0de7558:	f000 f846 	bl	c0de75e8 <getContentPage>
c0de755c:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de7560:	b318      	cbz	r0, c0de75aa <displayContent+0x6e>
c0de7562:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de7566:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de756a:	481e      	ldr	r0, [pc, #120]	@ (c0de75e4 <displayContent+0xa8>)
c0de756c:	4478      	add	r0, pc
c0de756e:	2b00      	cmp	r3, #0
c0de7570:	9000      	str	r0, [sp, #0]
c0de7572:	4620      	mov	r0, r4
c0de7574:	bf18      	it	ne
c0de7576:	2301      	movne	r3, #1
c0de7578:	f000 f8d8 	bl	c0de772c <drawSwitchStep>
c0de757c:	e023      	b.n	c0de75c6 <displayContent+0x8a>
c0de757e:	4448      	add	r0, r9
c0de7580:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de7582:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7584:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de7586:	4a13      	ldr	r2, [pc, #76]	@ (c0de75d4 <displayContent+0x98>)
c0de7588:	2900      	cmp	r1, #0
c0de758a:	447a      	add	r2, pc
c0de758c:	bf18      	it	ne
c0de758e:	460a      	movne	r2, r1
c0de7590:	9205      	str	r2, [sp, #20]
c0de7592:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de7596:	4910      	ldr	r1, [pc, #64]	@ (c0de75d8 <displayContent+0x9c>)
c0de7598:	4a10      	ldr	r2, [pc, #64]	@ (c0de75dc <displayContent+0xa0>)
c0de759a:	2803      	cmp	r0, #3
c0de759c:	447a      	add	r2, pc
c0de759e:	4479      	add	r1, pc
c0de75a0:	bf08      	it	eq
c0de75a2:	460a      	moveq	r2, r1
c0de75a4:	9207      	str	r2, [sp, #28]
c0de75a6:	2000      	movs	r0, #0
c0de75a8:	e002      	b.n	c0de75b0 <displayContent+0x74>
c0de75aa:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de75ae:	0040      	lsls	r0, r0, #1
c0de75b0:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de75b4:	9907      	ldr	r1, [sp, #28]
c0de75b6:	4e0a      	ldr	r6, [pc, #40]	@ (c0de75e0 <displayContent+0xa4>)
c0de75b8:	b2c0      	uxtb	r0, r0
c0de75ba:	2500      	movs	r5, #0
c0de75bc:	9002      	str	r0, [sp, #8]
c0de75be:	4620      	mov	r0, r4
c0de75c0:	447e      	add	r6, pc
c0de75c2:	f000 fea1 	bl	c0de8308 <OUTLINED_FUNCTION_7>
c0de75c6:	f7fd fd17 	bl	c0de4ff8 <nbgl_refresh>
c0de75ca:	b00a      	add	sp, #40	@ 0x28
c0de75cc:	bd70      	pop	{r4, r5, r6, pc}
c0de75ce:	bf00      	nop
c0de75d0:	0000172c 	.word	0x0000172c
c0de75d4:	000040fb 	.word	0x000040fb
c0de75d8:	00003d70 	.word	0x00003d70
c0de75dc:	00003d2c 	.word	0x00003d2c
c0de75e0:	000001b9 	.word	0x000001b9
c0de75e4:	0000020d 	.word	0x0000020d

c0de75e8 <getContentPage>:
c0de75e8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de75ea:	b091      	sub	sp, #68	@ 0x44
c0de75ec:	4606      	mov	r6, r0
c0de75ee:	2000      	movs	r0, #0
c0de75f0:	460c      	mov	r4, r1
c0de75f2:	2134      	movs	r1, #52	@ 0x34
c0de75f4:	f88d 0043 	strb.w	r0, [sp, #67]	@ 0x43
c0de75f8:	ad03      	add	r5, sp, #12
c0de75fa:	4628      	mov	r0, r5
c0de75fc:	f003 fd86 	bl	c0deb10c <__aeabi_memclr>
c0de7600:	4f47      	ldr	r7, [pc, #284]	@ (c0de7720 <getContentPage+0x138>)
c0de7602:	f10d 0143 	add.w	r1, sp, #67	@ 0x43
c0de7606:	462a      	mov	r2, r5
c0de7608:	eb09 0007 	add.w	r0, r9, r7
c0de760c:	f000 fe6f 	bl	c0de82ee <OUTLINED_FUNCTION_4>
c0de7610:	2800      	cmp	r0, #0
c0de7612:	d07a      	beq.n	c0de770a <getContentPage+0x122>
c0de7614:	4605      	mov	r5, r0
c0de7616:	7800      	ldrb	r0, [r0, #0]
c0de7618:	280a      	cmp	r0, #10
c0de761a:	d011      	beq.n	c0de7640 <getContentPage+0x58>
c0de761c:	2803      	cmp	r0, #3
c0de761e:	d02c      	beq.n	c0de767a <getContentPage+0x92>
c0de7620:	2804      	cmp	r0, #4
c0de7622:	d035      	beq.n	c0de7690 <getContentPage+0xa8>
c0de7624:	2807      	cmp	r0, #7
c0de7626:	d045      	beq.n	c0de76b4 <getContentPage+0xcc>
c0de7628:	2808      	cmp	r0, #8
c0de762a:	d060      	beq.n	c0de76ee <getContentPage+0x106>
c0de762c:	2809      	cmp	r0, #9
c0de762e:	d007      	beq.n	c0de7640 <getContentPage+0x58>
c0de7630:	2800      	cmp	r0, #0
c0de7632:	d16a      	bne.n	c0de770a <getContentPage+0x122>
c0de7634:	6868      	ldr	r0, [r5, #4]
c0de7636:	f003 f969 	bl	c0dea90c <pic>
c0de763a:	6060      	str	r0, [r4, #4]
c0de763c:	68a8      	ldr	r0, [r5, #8]
c0de763e:	e019      	b.n	c0de7674 <getContentPage+0x8c>
c0de7640:	1d28      	adds	r0, r5, #4
c0de7642:	eb09 0607 	add.w	r6, r9, r7
c0de7646:	f003 f961 	bl	c0dea90c <pic>
c0de764a:	6800      	ldr	r0, [r0, #0]
c0de764c:	f003 f95e 	bl	c0dea90c <pic>
c0de7650:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de7654:	4605      	mov	r5, r0
c0de7656:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de7658:	2910      	cmp	r1, #16
c0de765a:	d100      	bne.n	c0de765e <getContentPage+0x76>
c0de765c:	b918      	cbnz	r0, c0de7666 <getContentPage+0x7e>
c0de765e:	290f      	cmp	r1, #15
c0de7660:	d155      	bne.n	c0de770e <getContentPage+0x126>
c0de7662:	2800      	cmp	r0, #0
c0de7664:	d053      	beq.n	c0de770e <getContentPage+0x126>
c0de7666:	f003 f951 	bl	c0dea90c <pic>
c0de766a:	6060      	str	r0, [r4, #4]
c0de766c:	f89d 0043 	ldrb.w	r0, [sp, #67]	@ 0x43
c0de7670:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de7674:	f003 f94a 	bl	c0dea90c <pic>
c0de7678:	e046      	b.n	c0de7708 <getContentPage+0x120>
c0de767a:	68a8      	ldr	r0, [r5, #8]
c0de767c:	4e29      	ldr	r6, [pc, #164]	@ (c0de7724 <getContentPage+0x13c>)
c0de767e:	447e      	add	r6, pc
c0de7680:	47b0      	blx	r6
c0de7682:	60e0      	str	r0, [r4, #12]
c0de7684:	6868      	ldr	r0, [r5, #4]
c0de7686:	47b0      	blx	r6
c0de7688:	6060      	str	r0, [r4, #4]
c0de768a:	68e8      	ldr	r0, [r5, #12]
c0de768c:	47b0      	blx	r6
c0de768e:	e03b      	b.n	c0de7708 <getContentPage+0x120>
c0de7690:	f104 0015 	add.w	r0, r4, #21
c0de7694:	f89d 1043 	ldrb.w	r1, [sp, #67]	@ 0x43
c0de7698:	f104 020c 	add.w	r2, r4, #12
c0de769c:	f104 0310 	add.w	r3, r4, #16
c0de76a0:	e9cd 3200 	strd	r3, r2, [sp]
c0de76a4:	9002      	str	r0, [sp, #8]
c0de76a6:	1d28      	adds	r0, r5, #4
c0de76a8:	1d22      	adds	r2, r4, #4
c0de76aa:	f104 0308 	add.w	r3, r4, #8
c0de76ae:	f000 f8b9 	bl	c0de7824 <getPairData>
c0de76b2:	e02a      	b.n	c0de770a <getContentPage+0x122>
c0de76b4:	2001      	movs	r0, #1
c0de76b6:	444f      	add	r7, r9
c0de76b8:	7020      	strb	r0, [r4, #0]
c0de76ba:	6868      	ldr	r0, [r5, #4]
c0de76bc:	f003 f926 	bl	c0dea90c <pic>
c0de76c0:	4919      	ldr	r1, [pc, #100]	@ (c0de7728 <getContentPage+0x140>)
c0de76c2:	4479      	add	r1, pc
c0de76c4:	6379      	str	r1, [r7, #52]	@ 0x34
c0de76c6:	f89d 1043 	ldrb.w	r1, [sp, #67]	@ 0x43
c0de76ca:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de76ce:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de76d2:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de76d6:	6062      	str	r2, [r4, #4]
c0de76d8:	6841      	ldr	r1, [r0, #4]
c0de76da:	60a1      	str	r1, [r4, #8]
c0de76dc:	7a00      	ldrb	r0, [r0, #8]
c0de76de:	1e41      	subs	r1, r0, #1
c0de76e0:	bf18      	it	ne
c0de76e2:	2101      	movne	r1, #1
c0de76e4:	2e00      	cmp	r6, #0
c0de76e6:	bf08      	it	eq
c0de76e8:	4601      	moveq	r1, r0
c0de76ea:	7521      	strb	r1, [r4, #20]
c0de76ec:	e00d      	b.n	c0de770a <getContentPage+0x122>
c0de76ee:	6868      	ldr	r0, [r5, #4]
c0de76f0:	f003 f90c 	bl	c0dea90c <pic>
c0de76f4:	f89d 6043 	ldrb.w	r6, [sp, #67]	@ 0x43
c0de76f8:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de76fc:	6060      	str	r0, [r4, #4]
c0de76fe:	68a8      	ldr	r0, [r5, #8]
c0de7700:	f003 f904 	bl	c0dea90c <pic>
c0de7704:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de7708:	60a0      	str	r0, [r4, #8]
c0de770a:	b011      	add	sp, #68	@ 0x44
c0de770c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de770e:	f89d 0043 	ldrb.w	r0, [sp, #67]	@ 0x43
c0de7712:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de7716:	f003 f8f9 	bl	c0dea90c <pic>
c0de771a:	6060      	str	r0, [r4, #4]
c0de771c:	e7f5      	b.n	c0de770a <getContentPage+0x122>
c0de771e:	bf00      	nop
c0de7720:	0000172c 	.word	0x0000172c
c0de7724:	0000328b 	.word	0x0000328b
c0de7728:	000001a7 	.word	0x000001a7

c0de772c <drawSwitchStep>:
c0de772c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de772e:	b085      	sub	sp, #20
c0de7730:	4c11      	ldr	r4, [pc, #68]	@ (c0de7778 <drawSwitchStep+0x4c>)
c0de7732:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de7736:	2600      	movs	r6, #0
c0de7738:	eb09 0504 	add.w	r5, r9, r4
c0de773c:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de7740:	2500      	movs	r5, #0
c0de7742:	2f02      	cmp	r7, #2
c0de7744:	d30a      	bcc.n	c0de775c <drawSwitchStep+0x30>
c0de7746:	444c      	add	r4, r9
c0de7748:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de774c:	b12c      	cbz	r4, c0de775a <drawSwitchStep+0x2e>
c0de774e:	3f01      	subs	r7, #1
c0de7750:	2603      	movs	r6, #3
c0de7752:	42a7      	cmp	r7, r4
c0de7754:	bf08      	it	eq
c0de7756:	2602      	moveq	r6, #2
c0de7758:	e000      	b.n	c0de775c <drawSwitchStep+0x30>
c0de775a:	2601      	movs	r6, #1
c0de775c:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de7760:	f88d 3010 	strb.w	r3, [sp, #16]
c0de7764:	9500      	str	r5, [sp, #0]
c0de7766:	4330      	orrs	r0, r6
c0de7768:	ab02      	add	r3, sp, #8
c0de776a:	4661      	mov	r1, ip
c0de776c:	2200      	movs	r2, #0
c0de776e:	f7ff f8c9 	bl	c0de6904 <nbgl_stepDrawSwitch>
c0de7772:	b005      	add	sp, #20
c0de7774:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7776:	bf00      	nop
c0de7778:	0000172c 	.word	0x0000172c

c0de777c <contentCallback>:
c0de777c:	b5e0      	push	{r5, r6, r7, lr}
c0de777e:	4608      	mov	r0, r1
c0de7780:	f10d 0107 	add.w	r1, sp, #7
c0de7784:	f000 f928 	bl	c0de79d8 <buttonGenericCallback>
c0de7788:	b130      	cbz	r0, c0de7798 <contentCallback+0x1c>
c0de778a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de778e:	2100      	movs	r1, #0
c0de7790:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7794:	f7ff bed2 	b.w	c0de753c <displayContent>
c0de7798:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de779c <getContentElemAtIdx>:
c0de779c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de77a0:	4c1e      	ldr	r4, [pc, #120]	@ (c0de781c <getContentElemAtIdx+0x80>)
c0de77a2:	4606      	mov	r6, r0
c0de77a4:	2700      	movs	r7, #0
c0de77a6:	eb09 0004 	add.w	r0, r9, r4
c0de77aa:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de77ae:	2b10      	cmp	r3, #16
c0de77b0:	d830      	bhi.n	c0de7814 <getContentElemAtIdx+0x78>
c0de77b2:	4693      	mov	fp, r2
c0de77b4:	2201      	movs	r2, #1
c0de77b6:	9101      	str	r1, [sp, #4]
c0de77b8:	fa02 f303 	lsl.w	r3, r2, r3
c0de77bc:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de77c0:	d004      	beq.n	c0de77cc <getContentElemAtIdx+0x30>
c0de77c2:	eb09 0004 	add.w	r0, r9, r4
c0de77c6:	46a2      	mov	sl, r4
c0de77c8:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de77ca:	e005      	b.n	c0de77d8 <getContentElemAtIdx+0x3c>
c0de77cc:	4a14      	ldr	r2, [pc, #80]	@ (c0de7820 <getContentElemAtIdx+0x84>)
c0de77ce:	4213      	tst	r3, r2
c0de77d0:	d020      	beq.n	c0de7814 <getContentElemAtIdx+0x78>
c0de77d2:	46a2      	mov	sl, r4
c0de77d4:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de77d8:	2700      	movs	r7, #0
c0de77da:	2000      	movs	r0, #0
c0de77dc:	f04f 0800 	mov.w	r8, #0
c0de77e0:	4605      	mov	r5, r0
c0de77e2:	7a20      	ldrb	r0, [r4, #8]
c0de77e4:	4580      	cmp	r8, r0
c0de77e6:	d215      	bcs.n	c0de7814 <getContentElemAtIdx+0x78>
c0de77e8:	fa4f f188 	sxtb.w	r1, r8
c0de77ec:	4620      	mov	r0, r4
c0de77ee:	465a      	mov	r2, fp
c0de77f0:	f7ff fe30 	bl	c0de7454 <getContentAtIdx>
c0de77f4:	4607      	mov	r7, r0
c0de77f6:	f7ff fe87 	bl	c0de7508 <getContentNbElement>
c0de77fa:	b2e9      	uxtb	r1, r5
c0de77fc:	f108 0801 	add.w	r8, r8, #1
c0de7800:	4408      	add	r0, r1
c0de7802:	42b0      	cmp	r0, r6
c0de7804:	d9ec      	bls.n	c0de77e0 <getContentElemAtIdx+0x44>
c0de7806:	eb09 000a 	add.w	r0, r9, sl
c0de780a:	9901      	ldr	r1, [sp, #4]
c0de780c:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de7810:	1b40      	subs	r0, r0, r5
c0de7812:	7008      	strb	r0, [r1, #0]
c0de7814:	4638      	mov	r0, r7
c0de7816:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de781a:	bf00      	nop
c0de781c:	0000172c 	.word	0x0000172c
c0de7820:	00010008 	.word	0x00010008

c0de7824 <getPairData>:
c0de7824:	b5b0      	push	{r4, r5, r7, lr}
c0de7826:	4615      	mov	r5, r2
c0de7828:	6802      	ldr	r2, [r0, #0]
c0de782a:	461c      	mov	r4, r3
c0de782c:	b112      	cbz	r2, c0de7834 <getPairData+0x10>
c0de782e:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de7832:	e002      	b.n	c0de783a <getPairData+0x16>
c0de7834:	6842      	ldr	r2, [r0, #4]
c0de7836:	4608      	mov	r0, r1
c0de7838:	4790      	blx	r2
c0de783a:	f003 f867 	bl	c0dea90c <pic>
c0de783e:	6802      	ldr	r2, [r0, #0]
c0de7840:	9904      	ldr	r1, [sp, #16]
c0de7842:	602a      	str	r2, [r5, #0]
c0de7844:	6842      	ldr	r2, [r0, #4]
c0de7846:	6022      	str	r2, [r4, #0]
c0de7848:	7b02      	ldrb	r2, [r0, #12]
c0de784a:	0753      	lsls	r3, r2, #29
c0de784c:	d403      	bmi.n	c0de7856 <getPairData+0x32>
c0de784e:	0792      	lsls	r2, r2, #30
c0de7850:	d404      	bmi.n	c0de785c <getPairData+0x38>
c0de7852:	2000      	movs	r0, #0
c0de7854:	e000      	b.n	c0de7858 <getPairData+0x34>
c0de7856:	6880      	ldr	r0, [r0, #8]
c0de7858:	6008      	str	r0, [r1, #0]
c0de785a:	bdb0      	pop	{r4, r5, r7, pc}
c0de785c:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de7860:	2301      	movs	r3, #1
c0de7862:	700b      	strb	r3, [r1, #0]
c0de7864:	6880      	ldr	r0, [r0, #8]
c0de7866:	6010      	str	r0, [r2, #0]
c0de7868:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de786c <onSwitchAction>:
c0de786c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de786e:	b08f      	sub	sp, #60	@ 0x3c
c0de7870:	ac02      	add	r4, sp, #8
c0de7872:	2134      	movs	r1, #52	@ 0x34
c0de7874:	4620      	mov	r0, r4
c0de7876:	f003 fc49 	bl	c0deb10c <__aeabi_memclr>
c0de787a:	4e26      	ldr	r6, [pc, #152]	@ (c0de7914 <onSwitchAction+0xa8>)
c0de787c:	f10d 0107 	add.w	r1, sp, #7
c0de7880:	4622      	mov	r2, r4
c0de7882:	eb09 0006 	add.w	r0, r9, r6
c0de7886:	f000 fd32 	bl	c0de82ee <OUTLINED_FUNCTION_4>
c0de788a:	2800      	cmp	r0, #0
c0de788c:	d040      	beq.n	c0de7910 <onSwitchAction+0xa4>
c0de788e:	4604      	mov	r4, r0
c0de7890:	7800      	ldrb	r0, [r0, #0]
c0de7892:	2807      	cmp	r0, #7
c0de7894:	d13c      	bne.n	c0de7910 <onSwitchAction+0xa4>
c0de7896:	6860      	ldr	r0, [r4, #4]
c0de7898:	eb09 0706 	add.w	r7, r9, r6
c0de789c:	f003 f836 	bl	c0dea90c <pic>
c0de78a0:	4605      	mov	r5, r0
c0de78a2:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de78a6:	f89d 7007 	ldrb.w	r7, [sp, #7]
c0de78aa:	2810      	cmp	r0, #16
c0de78ac:	d811      	bhi.n	c0de78d2 <onSwitchAction+0x66>
c0de78ae:	2101      	movs	r1, #1
c0de78b0:	fa01 f000 	lsl.w	r0, r1, r0
c0de78b4:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de78b8:	d004      	beq.n	c0de78c4 <onSwitchAction+0x58>
c0de78ba:	2000      	movs	r0, #0
c0de78bc:	2101      	movs	r1, #1
c0de78be:	f000 f82d 	bl	c0de791c <displaySettingsPage>
c0de78c2:	e006      	b.n	c0de78d2 <onSwitchAction+0x66>
c0de78c4:	4914      	ldr	r1, [pc, #80]	@ (c0de7918 <onSwitchAction+0xac>)
c0de78c6:	4208      	tst	r0, r1
c0de78c8:	d003      	beq.n	c0de78d2 <onSwitchAction+0x66>
c0de78ca:	2000      	movs	r0, #0
c0de78cc:	2101      	movs	r1, #1
c0de78ce:	f7ff fe35 	bl	c0de753c <displayContent>
c0de78d2:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de78d4:	b188      	cbz	r0, c0de78fa <onSwitchAction+0x8e>
c0de78d6:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de78da:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de78de:	f003 f815 	bl	c0dea90c <pic>
c0de78e2:	7a21      	ldrb	r1, [r4, #8]
c0de78e4:	eb09 0206 	add.w	r2, r9, r6
c0de78e8:	4603      	mov	r3, r0
c0de78ea:	7a60      	ldrb	r0, [r4, #9]
c0de78ec:	3901      	subs	r1, #1
c0de78ee:	bf18      	it	ne
c0de78f0:	2101      	movne	r1, #1
c0de78f2:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de78f6:	4798      	blx	r3
c0de78f8:	e00a      	b.n	c0de7910 <onSwitchAction+0xa4>
c0de78fa:	eb09 0006 	add.w	r0, r9, r6
c0de78fe:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de7900:	b132      	cbz	r2, c0de7910 <onSwitchAction+0xa4>
c0de7902:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de7906:	2100      	movs	r1, #0
c0de7908:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de790c:	7a40      	ldrb	r0, [r0, #9]
c0de790e:	4790      	blx	r2
c0de7910:	b00f      	add	sp, #60	@ 0x3c
c0de7912:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7914:	0000172c 	.word	0x0000172c
c0de7918:	00010008 	.word	0x00010008

c0de791c <displaySettingsPage>:
c0de791c:	b5b0      	push	{r4, r5, r7, lr}
c0de791e:	b08a      	sub	sp, #40	@ 0x28
c0de7920:	460d      	mov	r5, r1
c0de7922:	4604      	mov	r4, r0
c0de7924:	a804      	add	r0, sp, #16
c0de7926:	2118      	movs	r1, #24
c0de7928:	f003 fbf0 	bl	c0deb10c <__aeabi_memclr>
c0de792c:	481c      	ldr	r0, [pc, #112]	@ (c0de79a0 <displaySettingsPage+0x84>)
c0de792e:	f000 fccd 	bl	c0de82cc <OUTLINED_FUNCTION_2>
c0de7932:	dd14      	ble.n	c0de795e <displaySettingsPage+0x42>
c0de7934:	a904      	add	r1, sp, #16
c0de7936:	4628      	mov	r0, r5
c0de7938:	f7ff fe56 	bl	c0de75e8 <getContentPage>
c0de793c:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de7940:	b1e8      	cbz	r0, c0de797e <displaySettingsPage+0x62>
c0de7942:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de7946:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de794a:	481a      	ldr	r0, [pc, #104]	@ (c0de79b4 <displaySettingsPage+0x98>)
c0de794c:	4478      	add	r0, pc
c0de794e:	2b00      	cmp	r3, #0
c0de7950:	9000      	str	r0, [sp, #0]
c0de7952:	4620      	mov	r0, r4
c0de7954:	bf18      	it	ne
c0de7956:	2301      	movne	r3, #1
c0de7958:	f7ff fee8 	bl	c0de772c <drawSwitchStep>
c0de795c:	e01b      	b.n	c0de7996 <displaySettingsPage+0x7a>
c0de795e:	4448      	add	r0, r9
c0de7960:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de7964:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de7966:	4b0f      	ldr	r3, [pc, #60]	@ (c0de79a4 <displaySettingsPage+0x88>)
c0de7968:	447b      	add	r3, pc
c0de796a:	290f      	cmp	r1, #15
c0de796c:	bf08      	it	eq
c0de796e:	4613      	moveq	r3, r2
c0de7970:	6343      	str	r3, [r0, #52]	@ 0x34
c0de7972:	480d      	ldr	r0, [pc, #52]	@ (c0de79a8 <displaySettingsPage+0x8c>)
c0de7974:	4478      	add	r0, pc
c0de7976:	9005      	str	r0, [sp, #20]
c0de7978:	480c      	ldr	r0, [pc, #48]	@ (c0de79ac <displaySettingsPage+0x90>)
c0de797a:	4478      	add	r0, pc
c0de797c:	9007      	str	r0, [sp, #28]
c0de797e:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de7982:	9907      	ldr	r1, [sp, #28]
c0de7984:	4d0a      	ldr	r5, [pc, #40]	@ (c0de79b0 <displaySettingsPage+0x94>)
c0de7986:	2000      	movs	r0, #0
c0de7988:	9002      	str	r0, [sp, #8]
c0de798a:	447d      	add	r5, pc
c0de798c:	e9cd 5000 	strd	r5, r0, [sp]
c0de7990:	4620      	mov	r0, r4
c0de7992:	f7ff fae9 	bl	c0de6f68 <drawStep>
c0de7996:	f7fd fb2f 	bl	c0de4ff8 <nbgl_refresh>
c0de799a:	b00a      	add	sp, #40	@ 0x28
c0de799c:	bdb0      	pop	{r4, r5, r7, pc}
c0de799e:	bf00      	nop
c0de79a0:	0000172c 	.word	0x0000172c
c0de79a4:	fffff261 	.word	0xfffff261
c0de79a8:	00003d11 	.word	0x00003d11
c0de79ac:	0000394e 	.word	0x0000394e
c0de79b0:	0000002b 	.word	0x0000002b
c0de79b4:	00000069 	.word	0x00000069

c0de79b8 <settingsCallback>:
c0de79b8:	b5e0      	push	{r5, r6, r7, lr}
c0de79ba:	4608      	mov	r0, r1
c0de79bc:	f10d 0107 	add.w	r1, sp, #7
c0de79c0:	f000 f80a 	bl	c0de79d8 <buttonGenericCallback>
c0de79c4:	b130      	cbz	r0, c0de79d4 <settingsCallback+0x1c>
c0de79c6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de79ca:	2100      	movs	r1, #0
c0de79cc:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de79d0:	f7ff bfa4 	b.w	c0de791c <displaySettingsPage>
c0de79d4:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de79d8 <buttonGenericCallback>:
c0de79d8:	b5b0      	push	{r4, r5, r7, lr}
c0de79da:	b08e      	sub	sp, #56	@ 0x38
c0de79dc:	460c      	mov	r4, r1
c0de79de:	4605      	mov	r5, r0
c0de79e0:	4668      	mov	r0, sp
c0de79e2:	2134      	movs	r1, #52	@ 0x34
c0de79e4:	f003 fb92 	bl	c0deb10c <__aeabi_memclr>
c0de79e8:	2d04      	cmp	r5, #4
c0de79ea:	d00d      	beq.n	c0de7a08 <buttonGenericCallback+0x30>
c0de79ec:	2d01      	cmp	r5, #1
c0de79ee:	d012      	beq.n	c0de7a16 <buttonGenericCallback+0x3e>
c0de79f0:	2d00      	cmp	r5, #0
c0de79f2:	d17a      	bne.n	c0de7aea <buttonGenericCallback+0x112>
c0de79f4:	483e      	ldr	r0, [pc, #248]	@ (c0de7af0 <buttonGenericCallback+0x118>)
c0de79f6:	eb09 0100 	add.w	r1, r9, r0
c0de79fa:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de79fe:	2901      	cmp	r1, #1
c0de7a00:	db1d      	blt.n	c0de7a3e <buttonGenericCallback+0x66>
c0de7a02:	3901      	subs	r1, #1
c0de7a04:	2008      	movs	r0, #8
c0de7a06:	e013      	b.n	c0de7a30 <buttonGenericCallback+0x58>
c0de7a08:	4c39      	ldr	r4, [pc, #228]	@ (c0de7af0 <buttonGenericCallback+0x118>)
c0de7a0a:	eb09 0004 	add.w	r0, r9, r4
c0de7a0e:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de7a10:	b338      	cbz	r0, c0de7a62 <buttonGenericCallback+0x8a>
c0de7a12:	4780      	blx	r0
c0de7a14:	e069      	b.n	c0de7aea <buttonGenericCallback+0x112>
c0de7a16:	4836      	ldr	r0, [pc, #216]	@ (c0de7af0 <buttonGenericCallback+0x118>)
c0de7a18:	eb09 0100 	add.w	r1, r9, r0
c0de7a1c:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de7a20:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de7a24:	3901      	subs	r1, #1
c0de7a26:	4281      	cmp	r1, r0
c0de7a28:	dd5f      	ble.n	c0de7aea <buttonGenericCallback+0x112>
c0de7a2a:	b2c0      	uxtb	r0, r0
c0de7a2c:	1c41      	adds	r1, r0, #1
c0de7a2e:	2000      	movs	r0, #0
c0de7a30:	4a2f      	ldr	r2, [pc, #188]	@ (c0de7af0 <buttonGenericCallback+0x118>)
c0de7a32:	444a      	add	r2, r9
c0de7a34:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de7a38:	7020      	strb	r0, [r4, #0]
c0de7a3a:	2001      	movs	r0, #1
c0de7a3c:	e056      	b.n	c0de7aec <buttonGenericCallback+0x114>
c0de7a3e:	eb09 0100 	add.w	r1, r9, r0
c0de7a42:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de7a46:	2906      	cmp	r1, #6
c0de7a48:	d14f      	bne.n	c0de7aea <buttonGenericCallback+0x112>
c0de7a4a:	eb09 0100 	add.w	r1, r9, r0
c0de7a4e:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de7a50:	2900      	cmp	r1, #0
c0de7a52:	d04a      	beq.n	c0de7aea <buttonGenericCallback+0x112>
c0de7a54:	4448      	add	r0, r9
c0de7a56:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de7a5a:	2801      	cmp	r0, #1
c0de7a5c:	d045      	beq.n	c0de7aea <buttonGenericCallback+0x112>
c0de7a5e:	2008      	movs	r0, #8
c0de7a60:	e7ea      	b.n	c0de7a38 <buttonGenericCallback+0x60>
c0de7a62:	eb09 0004 	add.w	r0, r9, r4
c0de7a66:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de7a6a:	2000      	movs	r0, #0
c0de7a6c:	2910      	cmp	r1, #16
c0de7a6e:	d83d      	bhi.n	c0de7aec <buttonGenericCallback+0x114>
c0de7a70:	2201      	movs	r2, #1
c0de7a72:	fa02 f101 	lsl.w	r1, r2, r1
c0de7a76:	4a1f      	ldr	r2, [pc, #124]	@ (c0de7af4 <buttonGenericCallback+0x11c>)
c0de7a78:	4211      	tst	r1, r2
c0de7a7a:	d037      	beq.n	c0de7aec <buttonGenericCallback+0x114>
c0de7a7c:	eb09 0004 	add.w	r0, r9, r4
c0de7a80:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de7a84:	466a      	mov	r2, sp
c0de7a86:	f000 fc32 	bl	c0de82ee <OUTLINED_FUNCTION_4>
c0de7a8a:	b370      	cbz	r0, c0de7aea <buttonGenericCallback+0x112>
c0de7a8c:	7801      	ldrb	r1, [r0, #0]
c0de7a8e:	4602      	mov	r2, r0
c0de7a90:	2000      	movs	r0, #0
c0de7a92:	b359      	cbz	r1, c0de7aec <buttonGenericCallback+0x114>
c0de7a94:	290a      	cmp	r1, #10
c0de7a96:	d009      	beq.n	c0de7aac <buttonGenericCallback+0xd4>
c0de7a98:	2907      	cmp	r1, #7
c0de7a9a:	d00f      	beq.n	c0de7abc <buttonGenericCallback+0xe4>
c0de7a9c:	2909      	cmp	r1, #9
c0de7a9e:	d011      	beq.n	c0de7ac4 <buttonGenericCallback+0xec>
c0de7aa0:	2903      	cmp	r1, #3
c0de7aa2:	f04f 0100 	mov.w	r1, #0
c0de7aa6:	d112      	bne.n	c0de7ace <buttonGenericCallback+0xf6>
c0de7aa8:	7c10      	ldrb	r0, [r2, #16]
c0de7aaa:	e005      	b.n	c0de7ab8 <buttonGenericCallback+0xe0>
c0de7aac:	eb09 0004 	add.w	r0, r9, r4
c0de7ab0:	6891      	ldr	r1, [r2, #8]
c0de7ab2:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de7ab6:	5c08      	ldrb	r0, [r1, r0]
c0de7ab8:	2100      	movs	r1, #0
c0de7aba:	e008      	b.n	c0de7ace <buttonGenericCallback+0xf6>
c0de7abc:	6850      	ldr	r0, [r2, #4]
c0de7abe:	2100      	movs	r1, #0
c0de7ac0:	7a40      	ldrb	r0, [r0, #9]
c0de7ac2:	e004      	b.n	c0de7ace <buttonGenericCallback+0xf6>
c0de7ac4:	eb09 0004 	add.w	r0, r9, r4
c0de7ac8:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de7acc:	7ad0      	ldrb	r0, [r2, #11]
c0de7ace:	6b13      	ldr	r3, [r2, #48]	@ 0x30
c0de7ad0:	b133      	cbz	r3, c0de7ae0 <buttonGenericCallback+0x108>
c0de7ad2:	eb09 0104 	add.w	r1, r9, r4
c0de7ad6:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de7ada:	2100      	movs	r1, #0
c0de7adc:	4798      	blx	r3
c0de7ade:	e004      	b.n	c0de7aea <buttonGenericCallback+0x112>
c0de7ae0:	eb09 0204 	add.w	r2, r9, r4
c0de7ae4:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de7ae6:	b102      	cbz	r2, c0de7aea <buttonGenericCallback+0x112>
c0de7ae8:	4790      	blx	r2
c0de7aea:	2000      	movs	r0, #0
c0de7aec:	b00e      	add	sp, #56	@ 0x38
c0de7aee:	bdb0      	pop	{r4, r5, r7, pc}
c0de7af0:	0000172c 	.word	0x0000172c
c0de7af4:	0001c008 	.word	0x0001c008

c0de7af8 <displayHomePage>:
c0de7af8:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de7afc:	4680      	mov	r8, r0
c0de7afe:	4832      	ldr	r0, [pc, #200]	@ (c0de7bc8 <displayHomePage+0xd0>)
c0de7b00:	2200      	movs	r2, #0
c0de7b02:	eb09 0100 	add.w	r1, r9, r0
c0de7b06:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de7b08:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de7b0a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de7b0c:	2202      	movs	r2, #2
c0de7b0e:	2d00      	cmp	r5, #0
c0de7b10:	463e      	mov	r6, r7
c0de7b12:	bf08      	it	eq
c0de7b14:	2201      	moveq	r2, #1
c0de7b16:	2f00      	cmp	r7, #0
c0de7b18:	bf18      	it	ne
c0de7b1a:	2601      	movne	r6, #1
c0de7b1c:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de7b20:	b183      	cbz	r3, c0de7b44 <displayHomePage+0x4c>
c0de7b22:	2401      	movs	r4, #1
c0de7b24:	2d00      	cmp	r5, #0
c0de7b26:	bf08      	it	eq
c0de7b28:	24ff      	moveq	r4, #255	@ 0xff
c0de7b2a:	429c      	cmp	r4, r3
c0de7b2c:	d111      	bne.n	c0de7b52 <displayHomePage+0x5a>
c0de7b2e:	eb09 0400 	add.w	r4, r9, r0
c0de7b32:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de7b36:	f002 fee9 	bl	c0dea90c <pic>
c0de7b3a:	4602      	mov	r2, r0
c0de7b3c:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de7b3e:	6880      	ldr	r0, [r0, #8]
c0de7b40:	6360      	str	r0, [r4, #52]	@ 0x34
c0de7b42:	e004      	b.n	c0de7b4e <displayHomePage+0x56>
c0de7b44:	eb09 0100 	add.w	r1, r9, r0
c0de7b48:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de7b4c:	b312      	cbz	r2, c0de7b94 <displayHomePage+0x9c>
c0de7b4e:	2300      	movs	r3, #0
c0de7b50:	e02c      	b.n	c0de7bac <displayHomePage+0xb4>
c0de7b52:	2f00      	cmp	r7, #0
c0de7b54:	4614      	mov	r4, r2
c0de7b56:	bf08      	it	eq
c0de7b58:	24ff      	moveq	r4, #255	@ 0xff
c0de7b5a:	429c      	cmp	r4, r3
c0de7b5c:	d109      	bne.n	c0de7b72 <displayHomePage+0x7a>
c0de7b5e:	491c      	ldr	r1, [pc, #112]	@ (c0de7bd0 <displayHomePage+0xd8>)
c0de7b60:	4448      	add	r0, r9
c0de7b62:	2300      	movs	r3, #0
c0de7b64:	4479      	add	r1, pc
c0de7b66:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7b68:	4d1a      	ldr	r5, [pc, #104]	@ (c0de7bd4 <displayHomePage+0xdc>)
c0de7b6a:	4a1b      	ldr	r2, [pc, #108]	@ (c0de7bd8 <displayHomePage+0xe0>)
c0de7b6c:	447d      	add	r5, pc
c0de7b6e:	447a      	add	r2, pc
c0de7b70:	e01c      	b.n	c0de7bac <displayHomePage+0xb4>
c0de7b72:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de7b74:	4432      	add	r2, r6
c0de7b76:	4448      	add	r0, r9
c0de7b78:	2900      	cmp	r1, #0
c0de7b7a:	bf08      	it	eq
c0de7b7c:	22ff      	moveq	r2, #255	@ 0xff
c0de7b7e:	429a      	cmp	r2, r3
c0de7b80:	d10d      	bne.n	c0de7b9e <displayHomePage+0xa6>
c0de7b82:	4916      	ldr	r1, [pc, #88]	@ (c0de7bdc <displayHomePage+0xe4>)
c0de7b84:	2300      	movs	r3, #0
c0de7b86:	4479      	add	r1, pc
c0de7b88:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7b8a:	4d15      	ldr	r5, [pc, #84]	@ (c0de7be0 <displayHomePage+0xe8>)
c0de7b8c:	4a15      	ldr	r2, [pc, #84]	@ (c0de7be4 <displayHomePage+0xec>)
c0de7b8e:	447d      	add	r5, pc
c0de7b90:	447a      	add	r2, pc
c0de7b92:	e00b      	b.n	c0de7bac <displayHomePage+0xb4>
c0de7b94:	4448      	add	r0, r9
c0de7b96:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de7b98:	4b0c      	ldr	r3, [pc, #48]	@ (c0de7bcc <displayHomePage+0xd4>)
c0de7b9a:	447b      	add	r3, pc
c0de7b9c:	e006      	b.n	c0de7bac <displayHomePage+0xb4>
c0de7b9e:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de7ba0:	2300      	movs	r3, #0
c0de7ba2:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7ba4:	4d10      	ldr	r5, [pc, #64]	@ (c0de7be8 <displayHomePage+0xf0>)
c0de7ba6:	4a11      	ldr	r2, [pc, #68]	@ (c0de7bec <displayHomePage+0xf4>)
c0de7ba8:	447d      	add	r5, pc
c0de7baa:	447a      	add	r2, pc
c0de7bac:	4910      	ldr	r1, [pc, #64]	@ (c0de7bf0 <displayHomePage+0xf8>)
c0de7bae:	2000      	movs	r0, #0
c0de7bb0:	9002      	str	r0, [sp, #8]
c0de7bb2:	4479      	add	r1, pc
c0de7bb4:	e9cd 1000 	strd	r1, r0, [sp]
c0de7bb8:	4640      	mov	r0, r8
c0de7bba:	4629      	mov	r1, r5
c0de7bbc:	f7ff f9d4 	bl	c0de6f68 <drawStep>
c0de7bc0:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de7bc4:	f7fd ba18 	b.w	c0de4ff8 <nbgl_refresh>
c0de7bc8:	0000172c 	.word	0x0000172c
c0de7bcc:	00003b7f 	.word	0x00003b7f
c0de7bd0:	0000008d 	.word	0x0000008d
c0de7bd4:	0000377f 	.word	0x0000377f
c0de7bd8:	00003a7f 	.word	0x00003a7f
c0de7bdc:	00000073 	.word	0x00000073
c0de7be0:	000036c8 	.word	0x000036c8
c0de7be4:	00003b2d 	.word	0x00003b2d
c0de7be8:	000036d1 	.word	0x000036d1
c0de7bec:	00003b7c 	.word	0x00003b7c
c0de7bf0:	0000006b 	.word	0x0000006b

c0de7bf4 <startUseCaseSettings>:
c0de7bf4:	2000      	movs	r0, #0
c0de7bf6:	f7fe bfad 	b.w	c0de6b54 <startUseCaseSettingsAtPage>
	...

c0de7bfc <startUseCaseInfo>:
c0de7bfc:	4807      	ldr	r0, [pc, #28]	@ (c0de7c1c <startUseCaseInfo+0x20>)
c0de7bfe:	210d      	movs	r1, #13
c0de7c00:	4448      	add	r0, r9
c0de7c02:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de7c06:	2100      	movs	r1, #0
c0de7c08:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de7c0c:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de7c0e:	7b09      	ldrb	r1, [r1, #12]
c0de7c10:	3101      	adds	r1, #1
c0de7c12:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de7c16:	2000      	movs	r0, #0
c0de7c18:	f000 b810 	b.w	c0de7c3c <displayInfoPage>
c0de7c1c:	0000172c 	.word	0x0000172c

c0de7c20 <homeCallback>:
c0de7c20:	b5e0      	push	{r5, r6, r7, lr}
c0de7c22:	4608      	mov	r0, r1
c0de7c24:	f10d 0107 	add.w	r1, sp, #7
c0de7c28:	f7ff fed6 	bl	c0de79d8 <buttonGenericCallback>
c0de7c2c:	b128      	cbz	r0, c0de7c3a <homeCallback+0x1a>
c0de7c2e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de7c32:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7c36:	f7ff bf5f 	b.w	c0de7af8 <displayHomePage>
c0de7c3a:	bd8c      	pop	{r2, r3, r7, pc}

c0de7c3c <displayInfoPage>:
c0de7c3c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de7c3e:	4604      	mov	r4, r0
c0de7c40:	4816      	ldr	r0, [pc, #88]	@ (c0de7c9c <displayInfoPage+0x60>)
c0de7c42:	f000 fb43 	bl	c0de82cc <OUTLINED_FUNCTION_2>
c0de7c46:	dd11      	ble.n	c0de7c6c <displayInfoPage+0x30>
c0de7c48:	eb09 0700 	add.w	r7, r9, r0
c0de7c4c:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de7c4e:	6800      	ldr	r0, [r0, #0]
c0de7c50:	4e13      	ldr	r6, [pc, #76]	@ (c0de7ca0 <displayInfoPage+0x64>)
c0de7c52:	447e      	add	r6, pc
c0de7c54:	47b0      	blx	r6
c0de7c56:	f000 fb5b 	bl	c0de8310 <OUTLINED_FUNCTION_8>
c0de7c5a:	4605      	mov	r5, r0
c0de7c5c:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de7c5e:	6840      	ldr	r0, [r0, #4]
c0de7c60:	47b0      	blx	r6
c0de7c62:	f000 fb55 	bl	c0de8310 <OUTLINED_FUNCTION_8>
c0de7c66:	4603      	mov	r3, r0
c0de7c68:	2100      	movs	r1, #0
c0de7c6a:	e008      	b.n	c0de7c7e <displayInfoPage+0x42>
c0de7c6c:	490d      	ldr	r1, [pc, #52]	@ (c0de7ca4 <displayInfoPage+0x68>)
c0de7c6e:	4448      	add	r0, r9
c0de7c70:	2300      	movs	r3, #0
c0de7c72:	4479      	add	r1, pc
c0de7c74:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7c76:	490c      	ldr	r1, [pc, #48]	@ (c0de7ca8 <displayInfoPage+0x6c>)
c0de7c78:	4d0c      	ldr	r5, [pc, #48]	@ (c0de7cac <displayInfoPage+0x70>)
c0de7c7a:	4479      	add	r1, pc
c0de7c7c:	447d      	add	r5, pc
c0de7c7e:	4e0c      	ldr	r6, [pc, #48]	@ (c0de7cb0 <displayInfoPage+0x74>)
c0de7c80:	2002      	movs	r0, #2
c0de7c82:	2200      	movs	r2, #0
c0de7c84:	9002      	str	r0, [sp, #8]
c0de7c86:	4620      	mov	r0, r4
c0de7c88:	447e      	add	r6, pc
c0de7c8a:	e9cd 6200 	strd	r6, r2, [sp]
c0de7c8e:	462a      	mov	r2, r5
c0de7c90:	f7ff f96a 	bl	c0de6f68 <drawStep>
c0de7c94:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de7c98:	f7fd b9ae 	b.w	c0de4ff8 <nbgl_refresh>
c0de7c9c:	0000172c 	.word	0x0000172c
c0de7ca0:	00002cb7 	.word	0x00002cb7
c0de7ca4:	ffffef57 	.word	0xffffef57
c0de7ca8:	0000364e 	.word	0x0000364e
c0de7cac:	00003a09 	.word	0x00003a09
c0de7cb0:	00000029 	.word	0x00000029

c0de7cb4 <infoCallback>:
c0de7cb4:	b5e0      	push	{r5, r6, r7, lr}
c0de7cb6:	4608      	mov	r0, r1
c0de7cb8:	f10d 0107 	add.w	r1, sp, #7
c0de7cbc:	f7ff fe8c 	bl	c0de79d8 <buttonGenericCallback>
c0de7cc0:	b128      	cbz	r0, c0de7cce <infoCallback+0x1a>
c0de7cc2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de7cc6:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7cca:	f7ff bfb7 	b.w	c0de7c3c <displayInfoPage>
c0de7cce:	bd8c      	pop	{r2, r3, r7, pc}

c0de7cd0 <displayWarningStep>:
c0de7cd0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de7cd2:	2000      	movs	r0, #0
c0de7cd4:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de7cd8:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de7cdc:	4817      	ldr	r0, [pc, #92]	@ (c0de7d3c <displayWarningStep+0x6c>)
c0de7cde:	eb09 0100 	add.w	r1, r9, r0
c0de7ce2:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de7ce6:	b169      	cbz	r1, c0de7d04 <displayWarningStep+0x34>
c0de7ce8:	4448      	add	r0, r9
c0de7cea:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de7cee:	3801      	subs	r0, #1
c0de7cf0:	4288      	cmp	r0, r1
c0de7cf2:	d112      	bne.n	c0de7d1a <displayWarningStep+0x4a>
c0de7cf4:	aa02      	add	r2, sp, #8
c0de7cf6:	2000      	movs	r0, #0
c0de7cf8:	f102 0108 	add.w	r1, r2, #8
c0de7cfc:	f000 f828 	bl	c0de7d50 <getLastPageInfo>
c0de7d00:	200a      	movs	r0, #10
c0de7d02:	e00b      	b.n	c0de7d1c <displayWarningStep+0x4c>
c0de7d04:	480e      	ldr	r0, [pc, #56]	@ (c0de7d40 <displayWarningStep+0x70>)
c0de7d06:	4478      	add	r0, pc
c0de7d08:	9003      	str	r0, [sp, #12]
c0de7d0a:	480e      	ldr	r0, [pc, #56]	@ (c0de7d44 <displayWarningStep+0x74>)
c0de7d0c:	4478      	add	r0, pc
c0de7d0e:	9002      	str	r0, [sp, #8]
c0de7d10:	480d      	ldr	r0, [pc, #52]	@ (c0de7d48 <displayWarningStep+0x78>)
c0de7d12:	4478      	add	r0, pc
c0de7d14:	9004      	str	r0, [sp, #16]
c0de7d16:	2001      	movs	r0, #1
c0de7d18:	e000      	b.n	c0de7d1c <displayWarningStep+0x4c>
c0de7d1a:	2000      	movs	r0, #0
c0de7d1c:	2101      	movs	r1, #1
c0de7d1e:	2200      	movs	r2, #0
c0de7d20:	f88d 1015 	strb.w	r1, [sp, #21]
c0de7d24:	2100      	movs	r1, #0
c0de7d26:	9100      	str	r1, [sp, #0]
c0de7d28:	4908      	ldr	r1, [pc, #32]	@ (c0de7d4c <displayWarningStep+0x7c>)
c0de7d2a:	ab02      	add	r3, sp, #8
c0de7d2c:	4479      	add	r1, pc
c0de7d2e:	f7fe fd01 	bl	c0de6734 <nbgl_stepDrawCenteredInfo>
c0de7d32:	f7fd f961 	bl	c0de4ff8 <nbgl_refresh>
c0de7d36:	b006      	add	sp, #24
c0de7d38:	bd80      	pop	{r7, pc}
c0de7d3a:	bf00      	nop
c0de7d3c:	0000172c 	.word	0x0000172c
c0de7d40:	000037dc 	.word	0x000037dc
c0de7d44:	00003913 	.word	0x00003913
c0de7d48:	0000369b 	.word	0x0000369b
c0de7d4c:	00000149 	.word	0x00000149

c0de7d50 <getLastPageInfo>:
c0de7d50:	b170      	cbz	r0, c0de7d70 <getLastPageInfo+0x20>
c0de7d52:	4833      	ldr	r0, [pc, #204]	@ (c0de7e20 <getLastPageInfo+0xd0>)
c0de7d54:	4478      	add	r0, pc
c0de7d56:	6008      	str	r0, [r1, #0]
c0de7d58:	4830      	ldr	r0, [pc, #192]	@ (c0de7e1c <getLastPageInfo+0xcc>)
c0de7d5a:	eb09 0100 	add.w	r1, r9, r0
c0de7d5e:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de7d62:	2904      	cmp	r1, #4
c0de7d64:	d113      	bne.n	c0de7d8e <getLastPageInfo+0x3e>
c0de7d66:	482f      	ldr	r0, [pc, #188]	@ (c0de7e24 <getLastPageInfo+0xd4>)
c0de7d68:	492f      	ldr	r1, [pc, #188]	@ (c0de7e28 <getLastPageInfo+0xd8>)
c0de7d6a:	4478      	add	r0, pc
c0de7d6c:	4479      	add	r1, pc
c0de7d6e:	e04f      	b.n	c0de7e10 <getLastPageInfo+0xc0>
c0de7d70:	4838      	ldr	r0, [pc, #224]	@ (c0de7e54 <getLastPageInfo+0x104>)
c0de7d72:	4478      	add	r0, pc
c0de7d74:	6008      	str	r0, [r1, #0]
c0de7d76:	4829      	ldr	r0, [pc, #164]	@ (c0de7e1c <getLastPageInfo+0xcc>)
c0de7d78:	eb09 0100 	add.w	r1, r9, r0
c0de7d7c:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de7d80:	2904      	cmp	r1, #4
c0de7d82:	d10b      	bne.n	c0de7d9c <getLastPageInfo+0x4c>
c0de7d84:	4834      	ldr	r0, [pc, #208]	@ (c0de7e58 <getLastPageInfo+0x108>)
c0de7d86:	4935      	ldr	r1, [pc, #212]	@ (c0de7e5c <getLastPageInfo+0x10c>)
c0de7d88:	4478      	add	r0, pc
c0de7d8a:	4479      	add	r1, pc
c0de7d8c:	e040      	b.n	c0de7e10 <getLastPageInfo+0xc0>
c0de7d8e:	eb09 0100 	add.w	r1, r9, r0
c0de7d92:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de7d94:	b171      	cbz	r1, c0de7db4 <getLastPageInfo+0x64>
c0de7d96:	4825      	ldr	r0, [pc, #148]	@ (c0de7e2c <getLastPageInfo+0xdc>)
c0de7d98:	4478      	add	r0, pc
c0de7d9a:	e039      	b.n	c0de7e10 <getLastPageInfo+0xc0>
c0de7d9c:	4448      	add	r0, r9
c0de7d9e:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de7da0:	f010 0007 	ands.w	r0, r0, #7
c0de7da4:	d017      	beq.n	c0de7dd6 <getLastPageInfo+0x86>
c0de7da6:	2801      	cmp	r0, #1
c0de7da8:	d11a      	bne.n	c0de7de0 <getLastPageInfo+0x90>
c0de7daa:	482f      	ldr	r0, [pc, #188]	@ (c0de7e68 <getLastPageInfo+0x118>)
c0de7dac:	492f      	ldr	r1, [pc, #188]	@ (c0de7e6c <getLastPageInfo+0x11c>)
c0de7dae:	4478      	add	r0, pc
c0de7db0:	4479      	add	r1, pc
c0de7db2:	e02d      	b.n	c0de7e10 <getLastPageInfo+0xc0>
c0de7db4:	4448      	add	r0, r9
c0de7db6:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de7db8:	f000 0107 	and.w	r1, r0, #7
c0de7dbc:	2901      	cmp	r1, #1
c0de7dbe:	d014      	beq.n	c0de7dea <getLastPageInfo+0x9a>
c0de7dc0:	b9e9      	cbnz	r1, c0de7dfe <getLastPageInfo+0xae>
c0de7dc2:	0640      	lsls	r0, r0, #25
c0de7dc4:	481a      	ldr	r0, [pc, #104]	@ (c0de7e30 <getLastPageInfo+0xe0>)
c0de7dc6:	491b      	ldr	r1, [pc, #108]	@ (c0de7e34 <getLastPageInfo+0xe4>)
c0de7dc8:	4478      	add	r0, pc
c0de7dca:	4479      	add	r1, pc
c0de7dcc:	bf58      	it	pl
c0de7dce:	4601      	movpl	r1, r0
c0de7dd0:	4819      	ldr	r0, [pc, #100]	@ (c0de7e38 <getLastPageInfo+0xe8>)
c0de7dd2:	4478      	add	r0, pc
c0de7dd4:	e01c      	b.n	c0de7e10 <getLastPageInfo+0xc0>
c0de7dd6:	4822      	ldr	r0, [pc, #136]	@ (c0de7e60 <getLastPageInfo+0x110>)
c0de7dd8:	4922      	ldr	r1, [pc, #136]	@ (c0de7e64 <getLastPageInfo+0x114>)
c0de7dda:	4478      	add	r0, pc
c0de7ddc:	4479      	add	r1, pc
c0de7dde:	e017      	b.n	c0de7e10 <getLastPageInfo+0xc0>
c0de7de0:	4823      	ldr	r0, [pc, #140]	@ (c0de7e70 <getLastPageInfo+0x120>)
c0de7de2:	4924      	ldr	r1, [pc, #144]	@ (c0de7e74 <getLastPageInfo+0x124>)
c0de7de4:	4478      	add	r0, pc
c0de7de6:	4479      	add	r1, pc
c0de7de8:	e012      	b.n	c0de7e10 <getLastPageInfo+0xc0>
c0de7dea:	0640      	lsls	r0, r0, #25
c0de7dec:	4813      	ldr	r0, [pc, #76]	@ (c0de7e3c <getLastPageInfo+0xec>)
c0de7dee:	4914      	ldr	r1, [pc, #80]	@ (c0de7e40 <getLastPageInfo+0xf0>)
c0de7df0:	4478      	add	r0, pc
c0de7df2:	4479      	add	r1, pc
c0de7df4:	bf58      	it	pl
c0de7df6:	4601      	movpl	r1, r0
c0de7df8:	4812      	ldr	r0, [pc, #72]	@ (c0de7e44 <getLastPageInfo+0xf4>)
c0de7dfa:	4478      	add	r0, pc
c0de7dfc:	e008      	b.n	c0de7e10 <getLastPageInfo+0xc0>
c0de7dfe:	0640      	lsls	r0, r0, #25
c0de7e00:	4811      	ldr	r0, [pc, #68]	@ (c0de7e48 <getLastPageInfo+0xf8>)
c0de7e02:	4912      	ldr	r1, [pc, #72]	@ (c0de7e4c <getLastPageInfo+0xfc>)
c0de7e04:	4478      	add	r0, pc
c0de7e06:	4479      	add	r1, pc
c0de7e08:	bf58      	it	pl
c0de7e0a:	4601      	movpl	r1, r0
c0de7e0c:	4810      	ldr	r0, [pc, #64]	@ (c0de7e50 <getLastPageInfo+0x100>)
c0de7e0e:	4478      	add	r0, pc
c0de7e10:	6011      	str	r1, [r2, #0]
c0de7e12:	4902      	ldr	r1, [pc, #8]	@ (c0de7e1c <getLastPageInfo+0xcc>)
c0de7e14:	4449      	add	r1, r9
c0de7e16:	6348      	str	r0, [r1, #52]	@ 0x34
c0de7e18:	4770      	bx	lr
c0de7e1a:	bf00      	nop
c0de7e1c:	0000172c 	.word	0x0000172c
c0de7e20:	00003636 	.word	0x00003636
c0de7e24:	000001a7 	.word	0x000001a7
c0de7e28:	000039c3 	.word	0x000039c3
c0de7e2c:	00000179 	.word	0x00000179
c0de7e30:	00003789 	.word	0x00003789
c0de7e34:	00003830 	.word	0x00003830
c0de7e38:	0000013f 	.word	0x0000013f
c0de7e3c:	00003745 	.word	0x00003745
c0de7e40:	00003783 	.word	0x00003783
c0de7e44:	00000117 	.word	0x00000117
c0de7e48:	000038c2 	.word	0x000038c2
c0de7e4c:	0000382d 	.word	0x0000382d
c0de7e50:	00000103 	.word	0x00000103
c0de7e54:	0000359c 	.word	0x0000359c
c0de7e58:	0000019d 	.word	0x0000019d
c0de7e5c:	0000382e 	.word	0x0000382e
c0de7e60:	0000014b 	.word	0x0000014b
c0de7e64:	00003786 	.word	0x00003786
c0de7e68:	00000177 	.word	0x00000177
c0de7e6c:	00003928 	.word	0x00003928
c0de7e70:	00000141 	.word	0x00000141
c0de7e74:	00003901 	.word	0x00003901

c0de7e78 <warningNavigate>:
c0de7e78:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de7e7a:	2904      	cmp	r1, #4
c0de7e7c:	d00a      	beq.n	c0de7e94 <warningNavigate+0x1c>
c0de7e7e:	2901      	cmp	r1, #1
c0de7e80:	d01c      	beq.n	c0de7ebc <warningNavigate+0x44>
c0de7e82:	2900      	cmp	r1, #0
c0de7e84:	d13d      	bne.n	c0de7f02 <warningNavigate+0x8a>
c0de7e86:	4822      	ldr	r0, [pc, #136]	@ (c0de7f10 <warningNavigate+0x98>)
c0de7e88:	4448      	add	r0, r9
c0de7e8a:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de7e8e:	b320      	cbz	r0, c0de7eda <warningNavigate+0x62>
c0de7e90:	3801      	subs	r0, #1
c0de7e92:	e01e      	b.n	c0de7ed2 <warningNavigate+0x5a>
c0de7e94:	481e      	ldr	r0, [pc, #120]	@ (c0de7f10 <warningNavigate+0x98>)
c0de7e96:	eb09 0100 	add.w	r1, r9, r0
c0de7e9a:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de7e9e:	b301      	cbz	r1, c0de7ee2 <warningNavigate+0x6a>
c0de7ea0:	eb09 0200 	add.w	r2, r9, r0
c0de7ea4:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de7ea8:	3a01      	subs	r2, #1
c0de7eaa:	428a      	cmp	r2, r1
c0de7eac:	d129      	bne.n	c0de7f02 <warningNavigate+0x8a>
c0de7eae:	4448      	add	r0, r9
c0de7eb0:	6a01      	ldr	r1, [r0, #32]
c0de7eb2:	2000      	movs	r0, #0
c0de7eb4:	b004      	add	sp, #16
c0de7eb6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7eba:	4708      	bx	r1
c0de7ebc:	4814      	ldr	r0, [pc, #80]	@ (c0de7f10 <warningNavigate+0x98>)
c0de7ebe:	eb09 0100 	add.w	r1, r9, r0
c0de7ec2:	f891 0026 	ldrb.w	r0, [r1, #38]	@ 0x26
c0de7ec6:	f891 1027 	ldrb.w	r1, [r1, #39]	@ 0x27
c0de7eca:	3901      	subs	r1, #1
c0de7ecc:	4281      	cmp	r1, r0
c0de7ece:	dd04      	ble.n	c0de7eda <warningNavigate+0x62>
c0de7ed0:	3001      	adds	r0, #1
c0de7ed2:	490f      	ldr	r1, [pc, #60]	@ (c0de7f10 <warningNavigate+0x98>)
c0de7ed4:	4449      	add	r1, r9
c0de7ed6:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de7eda:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de7ede:	f7ff bef7 	b.w	c0de7cd0 <displayWarningStep>
c0de7ee2:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de7ee6:	2905      	cmp	r1, #5
c0de7ee8:	d00c      	beq.n	c0de7f04 <warningNavigate+0x8c>
c0de7eea:	2902      	cmp	r1, #2
c0de7eec:	d109      	bne.n	c0de7f02 <warningNavigate+0x8a>
c0de7eee:	4448      	add	r0, r9
c0de7ef0:	1d06      	adds	r6, r0, #4
c0de7ef2:	6a00      	ldr	r0, [r0, #32]
c0de7ef4:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de7ef6:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de7efa:	9003      	str	r0, [sp, #12]
c0de7efc:	2002      	movs	r0, #2
c0de7efe:	f7fe febb 	bl	c0de6c78 <useCaseReview>
c0de7f02:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de7f04:	2000      	movs	r0, #0
c0de7f06:	b004      	add	sp, #16
c0de7f08:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7f0c:	f7ff b948 	b.w	c0de71a0 <displayStreamingReviewPage>
c0de7f10:	0000172c 	.word	0x0000172c

c0de7f14 <onReviewAccept>:
c0de7f14:	4803      	ldr	r0, [pc, #12]	@ (c0de7f24 <onReviewAccept+0x10>)
c0de7f16:	4448      	add	r0, r9
c0de7f18:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de7f1a:	b109      	cbz	r1, c0de7f20 <onReviewAccept+0xc>
c0de7f1c:	2001      	movs	r0, #1
c0de7f1e:	4708      	bx	r1
c0de7f20:	4770      	bx	lr
c0de7f22:	bf00      	nop
c0de7f24:	0000172c 	.word	0x0000172c

c0de7f28 <onReviewReject>:
c0de7f28:	4803      	ldr	r0, [pc, #12]	@ (c0de7f38 <onReviewReject+0x10>)
c0de7f2a:	4448      	add	r0, r9
c0de7f2c:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de7f2e:	b109      	cbz	r1, c0de7f34 <onReviewReject+0xc>
c0de7f30:	2000      	movs	r0, #0
c0de7f32:	4708      	bx	r1
c0de7f34:	4770      	bx	lr
c0de7f36:	bf00      	nop
c0de7f38:	0000172c 	.word	0x0000172c

c0de7f3c <displayAliasFullValue>:
c0de7f3c:	b570      	push	{r4, r5, r6, lr}
c0de7f3e:	b088      	sub	sp, #32
c0de7f40:	4c17      	ldr	r4, [pc, #92]	@ (c0de7fa0 <displayAliasFullValue+0x64>)
c0de7f42:	f10d 0213 	add.w	r2, sp, #19
c0de7f46:	eb09 0504 	add.w	r5, r9, r4
c0de7f4a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de7f4c:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de7f50:	ab05      	add	r3, sp, #20
c0de7f52:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de7f56:	9202      	str	r2, [sp, #8]
c0de7f58:	e9cd 6300 	strd	r6, r3, [sp]
c0de7f5c:	aa07      	add	r2, sp, #28
c0de7f5e:	ab06      	add	r3, sp, #24
c0de7f60:	f7ff fc60 	bl	c0de7824 <getPairData>
c0de7f64:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de7f66:	b170      	cbz	r0, c0de7f86 <displayAliasFullValue+0x4a>
c0de7f68:	eb09 0104 	add.w	r1, r9, r4
c0de7f6c:	2200      	movs	r2, #0
c0de7f6e:	664a      	str	r2, [r1, #100]	@ 0x64
c0de7f70:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de7f74:	7d01      	ldrb	r1, [r0, #20]
c0de7f76:	2901      	cmp	r1, #1
c0de7f78:	d007      	beq.n	c0de7f8a <displayAliasFullValue+0x4e>
c0de7f7a:	2904      	cmp	r1, #4
c0de7f7c:	d103      	bne.n	c0de7f86 <displayAliasFullValue+0x4a>
c0de7f7e:	6900      	ldr	r0, [r0, #16]
c0de7f80:	7b00      	ldrb	r0, [r0, #12]
c0de7f82:	3001      	adds	r0, #1
c0de7f84:	e002      	b.n	c0de7f8c <displayAliasFullValue+0x50>
c0de7f86:	b008      	add	sp, #32
c0de7f88:	bd70      	pop	{r4, r5, r6, pc}
c0de7f8a:	2002      	movs	r0, #2
c0de7f8c:	eb09 0104 	add.w	r1, r9, r4
c0de7f90:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de7f94:	2000      	movs	r0, #0
c0de7f96:	b008      	add	sp, #32
c0de7f98:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7f9c:	f000 b810 	b.w	c0de7fc0 <displayExtensionStep>
c0de7fa0:	0000172c 	.word	0x0000172c

c0de7fa4 <reviewCallback>:
c0de7fa4:	b5e0      	push	{r5, r6, r7, lr}
c0de7fa6:	4608      	mov	r0, r1
c0de7fa8:	f10d 0107 	add.w	r1, sp, #7
c0de7fac:	f7ff fd14 	bl	c0de79d8 <buttonGenericCallback>
c0de7fb0:	b128      	cbz	r0, c0de7fbe <reviewCallback+0x1a>
c0de7fb2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de7fb6:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7fba:	f7fe bf29 	b.w	c0de6e10 <displayReviewPage>
c0de7fbe:	bd8c      	pop	{r2, r3, r7, pc}

c0de7fc0 <displayExtensionStep>:
c0de7fc0:	b5b0      	push	{r4, r5, r7, lr}
c0de7fc2:	b088      	sub	sp, #32
c0de7fc4:	4d28      	ldr	r5, [pc, #160]	@ (c0de8068 <displayExtensionStep+0xa8>)
c0de7fc6:	4604      	mov	r4, r0
c0de7fc8:	2000      	movs	r0, #0
c0de7fca:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de7fce:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de7fd2:	eb09 0005 	add.w	r0, r9, r5
c0de7fd6:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de7fd8:	b108      	cbz	r0, c0de7fde <displayExtensionStep+0x1e>
c0de7fda:	f7fe fcd1 	bl	c0de6980 <nbgl_stepRelease>
c0de7fde:	eb09 0005 	add.w	r0, r9, r5
c0de7fe2:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de7fe6:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de7fea:	3801      	subs	r0, #1
c0de7fec:	4288      	cmp	r0, r1
c0de7fee:	dd0f      	ble.n	c0de8010 <displayExtensionStep+0x50>
c0de7ff0:	2003      	movs	r0, #3
c0de7ff2:	eb09 0205 	add.w	r2, r9, r5
c0de7ff6:	2900      	cmp	r1, #0
c0de7ff8:	bf08      	it	eq
c0de7ffa:	2001      	moveq	r0, #1
c0de7ffc:	6e12      	ldr	r2, [r2, #96]	@ 0x60
c0de7ffe:	4320      	orrs	r0, r4
c0de8000:	7d13      	ldrb	r3, [r2, #20]
c0de8002:	2b04      	cmp	r3, #4
c0de8004:	d018      	beq.n	c0de8038 <displayExtensionStep+0x78>
c0de8006:	2b01      	cmp	r3, #1
c0de8008:	d129      	bne.n	c0de805e <displayExtensionStep+0x9e>
c0de800a:	6811      	ldr	r1, [r2, #0]
c0de800c:	6893      	ldr	r3, [r2, #8]
c0de800e:	e01a      	b.n	c0de8046 <displayExtensionStep+0x86>
c0de8010:	d125      	bne.n	c0de805e <displayExtensionStep+0x9e>
c0de8012:	2001      	movs	r0, #1
c0de8014:	2200      	movs	r2, #0
c0de8016:	f88d 001d 	strb.w	r0, [sp, #29]
c0de801a:	4915      	ldr	r1, [pc, #84]	@ (c0de8070 <displayExtensionStep+0xb0>)
c0de801c:	4479      	add	r1, pc
c0de801e:	9104      	str	r1, [sp, #16]
c0de8020:	4914      	ldr	r1, [pc, #80]	@ (c0de8074 <displayExtensionStep+0xb4>)
c0de8022:	9000      	str	r0, [sp, #0]
c0de8024:	f044 0002 	orr.w	r0, r4, #2
c0de8028:	4479      	add	r1, pc
c0de802a:	9106      	str	r1, [sp, #24]
c0de802c:	4912      	ldr	r1, [pc, #72]	@ (c0de8078 <displayExtensionStep+0xb8>)
c0de802e:	ab04      	add	r3, sp, #16
c0de8030:	4479      	add	r1, pc
c0de8032:	f7fe fb7f 	bl	c0de6734 <nbgl_stepDrawCenteredInfo>
c0de8036:	e00f      	b.n	c0de8058 <displayExtensionStep+0x98>
c0de8038:	6912      	ldr	r2, [r2, #16]
c0de803a:	e9d2 3200 	ldrd	r3, r2, [r2]
c0de803e:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
c0de8042:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de8046:	2201      	movs	r2, #1
c0de8048:	e9cd 1200 	strd	r1, r2, [sp]
c0de804c:	9202      	str	r2, [sp, #8]
c0de804e:	2200      	movs	r2, #0
c0de8050:	4906      	ldr	r1, [pc, #24]	@ (c0de806c <displayExtensionStep+0xac>)
c0de8052:	4479      	add	r1, pc
c0de8054:	f7fe fa28 	bl	c0de64a8 <nbgl_stepDrawText>
c0de8058:	eb09 0105 	add.w	r1, r9, r5
c0de805c:	6648      	str	r0, [r1, #100]	@ 0x64
c0de805e:	f7fc ffcb 	bl	c0de4ff8 <nbgl_refresh>
c0de8062:	b008      	add	sp, #32
c0de8064:	bdb0      	pop	{r4, r5, r7, pc}
c0de8066:	bf00      	nop
c0de8068:	0000172c 	.word	0x0000172c
c0de806c:	00000027 	.word	0x00000027
c0de8070:	00003669 	.word	0x00003669
c0de8074:	000032a0 	.word	0x000032a0
c0de8078:	00000049 	.word	0x00000049

c0de807c <extensionNavigate>:
c0de807c:	b580      	push	{r7, lr}
c0de807e:	2904      	cmp	r1, #4
c0de8080:	d00a      	beq.n	c0de8098 <extensionNavigate+0x1c>
c0de8082:	2901      	cmp	r1, #1
c0de8084:	d01d      	beq.n	c0de80c2 <extensionNavigate+0x46>
c0de8086:	b9d9      	cbnz	r1, c0de80c0 <extensionNavigate+0x44>
c0de8088:	481a      	ldr	r0, [pc, #104]	@ (c0de80f4 <extensionNavigate+0x78>)
c0de808a:	4448      	add	r0, r9
c0de808c:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de8090:	b350      	cbz	r0, c0de80e8 <extensionNavigate+0x6c>
c0de8092:	1e41      	subs	r1, r0, #1
c0de8094:	2008      	movs	r0, #8
c0de8096:	e020      	b.n	c0de80da <extensionNavigate+0x5e>
c0de8098:	4816      	ldr	r0, [pc, #88]	@ (c0de80f4 <extensionNavigate+0x78>)
c0de809a:	eb09 0100 	add.w	r1, r9, r0
c0de809e:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de80a2:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de80a6:	3901      	subs	r1, #1
c0de80a8:	4291      	cmp	r1, r2
c0de80aa:	d109      	bne.n	c0de80c0 <extensionNavigate+0x44>
c0de80ac:	4448      	add	r0, r9
c0de80ae:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de80b0:	f7fe fc66 	bl	c0de6980 <nbgl_stepRelease>
c0de80b4:	f7fd ffc2 	bl	c0de603c <nbgl_screenRedraw>
c0de80b8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de80bc:	f7fc bf9c 	b.w	c0de4ff8 <nbgl_refresh>
c0de80c0:	bd80      	pop	{r7, pc}
c0de80c2:	480c      	ldr	r0, [pc, #48]	@ (c0de80f4 <extensionNavigate+0x78>)
c0de80c4:	eb09 0100 	add.w	r1, r9, r0
c0de80c8:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de80cc:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de80d0:	3901      	subs	r1, #1
c0de80d2:	4281      	cmp	r1, r0
c0de80d4:	dd06      	ble.n	c0de80e4 <extensionNavigate+0x68>
c0de80d6:	1c41      	adds	r1, r0, #1
c0de80d8:	2000      	movs	r0, #0
c0de80da:	4a06      	ldr	r2, [pc, #24]	@ (c0de80f4 <extensionNavigate+0x78>)
c0de80dc:	444a      	add	r2, r9
c0de80de:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de80e2:	e002      	b.n	c0de80ea <extensionNavigate+0x6e>
c0de80e4:	2000      	movs	r0, #0
c0de80e6:	e000      	b.n	c0de80ea <extensionNavigate+0x6e>
c0de80e8:	2008      	movs	r0, #8
c0de80ea:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de80ee:	f7ff bf67 	b.w	c0de7fc0 <displayExtensionStep>
c0de80f2:	bf00      	nop
c0de80f4:	0000172c 	.word	0x0000172c

c0de80f8 <statusTickerCallback>:
c0de80f8:	4802      	ldr	r0, [pc, #8]	@ (c0de8104 <statusTickerCallback+0xc>)
c0de80fa:	4448      	add	r0, r9
c0de80fc:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de80fe:	b100      	cbz	r0, c0de8102 <statusTickerCallback+0xa>
c0de8100:	4700      	bx	r0
c0de8102:	4770      	bx	lr
c0de8104:	0000172c 	.word	0x0000172c

c0de8108 <getChoiceName>:
c0de8108:	b5b0      	push	{r4, r5, r7, lr}
c0de810a:	b08e      	sub	sp, #56	@ 0x38
c0de810c:	466d      	mov	r5, sp
c0de810e:	f000 f904 	bl	c0de831a <OUTLINED_FUNCTION_9>
c0de8112:	4814      	ldr	r0, [pc, #80]	@ (c0de8164 <getChoiceName+0x5c>)
c0de8114:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de8118:	462a      	mov	r2, r5
c0de811a:	4448      	add	r0, r9
c0de811c:	f000 f8e7 	bl	c0de82ee <OUTLINED_FUNCTION_4>
c0de8120:	b150      	cbz	r0, c0de8138 <getChoiceName+0x30>
c0de8122:	7801      	ldrb	r1, [r0, #0]
c0de8124:	290a      	cmp	r1, #10
c0de8126:	d009      	beq.n	c0de813c <getChoiceName+0x34>
c0de8128:	2909      	cmp	r1, #9
c0de812a:	d105      	bne.n	c0de8138 <getChoiceName+0x30>
c0de812c:	f000 f8e9 	bl	c0de8302 <OUTLINED_FUNCTION_6>
c0de8130:	4605      	mov	r5, r0
c0de8132:	f855 0b05 	ldr.w	r0, [r5], #5
c0de8136:	e006      	b.n	c0de8146 <getChoiceName+0x3e>
c0de8138:	2000      	movs	r0, #0
c0de813a:	e010      	b.n	c0de815e <getChoiceName+0x56>
c0de813c:	f000 f8e1 	bl	c0de8302 <OUTLINED_FUNCTION_6>
c0de8140:	4605      	mov	r5, r0
c0de8142:	f855 0b08 	ldr.w	r0, [r5], #8
c0de8146:	f002 fbe1 	bl	c0dea90c <pic>
c0de814a:	7829      	ldrb	r1, [r5, #0]
c0de814c:	42a1      	cmp	r1, r4
c0de814e:	d904      	bls.n	c0de815a <getChoiceName+0x52>
c0de8150:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de8154:	f002 fbda 	bl	c0dea90c <pic>
c0de8158:	e001      	b.n	c0de815e <getChoiceName+0x56>
c0de815a:	4803      	ldr	r0, [pc, #12]	@ (c0de8168 <getChoiceName+0x60>)
c0de815c:	4478      	add	r0, pc
c0de815e:	b00e      	add	sp, #56	@ 0x38
c0de8160:	bdb0      	pop	{r4, r5, r7, pc}
c0de8162:	bf00      	nop
c0de8164:	0000172c 	.word	0x0000172c
c0de8168:	00003529 	.word	0x00003529

c0de816c <onChoiceSelected>:
c0de816c:	b570      	push	{r4, r5, r6, lr}
c0de816e:	b08e      	sub	sp, #56	@ 0x38
c0de8170:	466d      	mov	r5, sp
c0de8172:	f000 f8d2 	bl	c0de831a <OUTLINED_FUNCTION_9>
c0de8176:	4e17      	ldr	r6, [pc, #92]	@ (c0de81d4 <onChoiceSelected+0x68>)
c0de8178:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de817c:	462a      	mov	r2, r5
c0de817e:	eb09 0006 	add.w	r0, r9, r6
c0de8182:	f000 f8b4 	bl	c0de82ee <OUTLINED_FUNCTION_4>
c0de8186:	b318      	cbz	r0, c0de81d0 <onChoiceSelected+0x64>
c0de8188:	7801      	ldrb	r1, [r0, #0]
c0de818a:	290a      	cmp	r1, #10
c0de818c:	d008      	beq.n	c0de81a0 <onChoiceSelected+0x34>
c0de818e:	2909      	cmp	r1, #9
c0de8190:	d10f      	bne.n	c0de81b2 <onChoiceSelected+0x46>
c0de8192:	f000 f8b6 	bl	c0de8302 <OUTLINED_FUNCTION_6>
c0de8196:	7941      	ldrb	r1, [r0, #5]
c0de8198:	42a1      	cmp	r1, r4
c0de819a:	d90a      	bls.n	c0de81b2 <onChoiceSelected+0x46>
c0de819c:	3007      	adds	r0, #7
c0de819e:	e006      	b.n	c0de81ae <onChoiceSelected+0x42>
c0de81a0:	f000 f8af 	bl	c0de8302 <OUTLINED_FUNCTION_6>
c0de81a4:	7a01      	ldrb	r1, [r0, #8]
c0de81a6:	42a1      	cmp	r1, r4
c0de81a8:	d903      	bls.n	c0de81b2 <onChoiceSelected+0x46>
c0de81aa:	6840      	ldr	r0, [r0, #4]
c0de81ac:	4420      	add	r0, r4
c0de81ae:	7800      	ldrb	r0, [r0, #0]
c0de81b0:	e000      	b.n	c0de81b4 <onChoiceSelected+0x48>
c0de81b2:	20ff      	movs	r0, #255	@ 0xff
c0de81b4:	28ff      	cmp	r0, #255	@ 0xff
c0de81b6:	d006      	beq.n	c0de81c6 <onChoiceSelected+0x5a>
c0de81b8:	eb09 0106 	add.w	r1, r9, r6
c0de81bc:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de81be:	b112      	cbz	r2, c0de81c6 <onChoiceSelected+0x5a>
c0de81c0:	2100      	movs	r1, #0
c0de81c2:	4790      	blx	r2
c0de81c4:	e004      	b.n	c0de81d0 <onChoiceSelected+0x64>
c0de81c6:	eb09 0006 	add.w	r0, r9, r6
c0de81ca:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de81cc:	b100      	cbz	r0, c0de81d0 <onChoiceSelected+0x64>
c0de81ce:	4780      	blx	r0
c0de81d0:	b00e      	add	sp, #56	@ 0x38
c0de81d2:	bd70      	pop	{r4, r5, r6, pc}
c0de81d4:	0000172c 	.word	0x0000172c

c0de81d8 <buttonSkipCallback>:
c0de81d8:	2904      	cmp	r1, #4
c0de81da:	d02b      	beq.n	c0de8234 <buttonSkipCallback+0x5c>
c0de81dc:	2901      	cmp	r1, #1
c0de81de:	d00e      	beq.n	c0de81fe <buttonSkipCallback+0x26>
c0de81e0:	bb61      	cbnz	r1, c0de823c <buttonSkipCallback+0x64>
c0de81e2:	4818      	ldr	r0, [pc, #96]	@ (c0de8244 <buttonSkipCallback+0x6c>)
c0de81e4:	eb09 0100 	add.w	r1, r9, r0
c0de81e8:	2008      	movs	r0, #8
c0de81ea:	f891 205a 	ldrb.w	r2, [r1, #90]	@ 0x5a
c0de81ee:	b9fa      	cbnz	r2, c0de8230 <buttonSkipCallback+0x58>
c0de81f0:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de81f4:	2901      	cmp	r1, #1
c0de81f6:	db1b      	blt.n	c0de8230 <buttonSkipCallback+0x58>
c0de81f8:	3901      	subs	r1, #1
c0de81fa:	2008      	movs	r0, #8
c0de81fc:	e014      	b.n	c0de8228 <buttonSkipCallback+0x50>
c0de81fe:	4811      	ldr	r0, [pc, #68]	@ (c0de8244 <buttonSkipCallback+0x6c>)
c0de8200:	eb09 0100 	add.w	r1, r9, r0
c0de8204:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de8208:	2908      	cmp	r1, #8
c0de820a:	d118      	bne.n	c0de823e <buttonSkipCallback+0x66>
c0de820c:	eb09 0200 	add.w	r2, r9, r0
c0de8210:	2000      	movs	r0, #0
c0de8212:	f992 1031 	ldrsb.w	r1, [r2, #49]	@ 0x31
c0de8216:	2901      	cmp	r1, #1
c0de8218:	db0a      	blt.n	c0de8230 <buttonSkipCallback+0x58>
c0de821a:	f892 2030 	ldrb.w	r2, [r2, #48]	@ 0x30
c0de821e:	3a01      	subs	r2, #1
c0de8220:	428a      	cmp	r2, r1
c0de8222:	dd05      	ble.n	c0de8230 <buttonSkipCallback+0x58>
c0de8224:	3101      	adds	r1, #1
c0de8226:	2000      	movs	r0, #0
c0de8228:	4a06      	ldr	r2, [pc, #24]	@ (c0de8244 <buttonSkipCallback+0x6c>)
c0de822a:	444a      	add	r2, r9
c0de822c:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de8230:	f7fe bfb6 	b.w	c0de71a0 <displayStreamingReviewPage>
c0de8234:	4803      	ldr	r0, [pc, #12]	@ (c0de8244 <buttonSkipCallback+0x6c>)
c0de8236:	4448      	add	r0, r9
c0de8238:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de823a:	4700      	bx	r0
c0de823c:	4770      	bx	lr
c0de823e:	2000      	movs	r0, #0
c0de8240:	f7fe bfae 	b.w	c0de71a0 <displayStreamingReviewPage>
c0de8244:	0000172c 	.word	0x0000172c

c0de8248 <streamingReviewCallback>:
c0de8248:	b5e0      	push	{r5, r6, r7, lr}
c0de824a:	4608      	mov	r0, r1
c0de824c:	f10d 0107 	add.w	r1, sp, #7
c0de8250:	f7ff fbc2 	bl	c0de79d8 <buttonGenericCallback>
c0de8254:	b150      	cbz	r0, c0de826c <streamingReviewCallback+0x24>
c0de8256:	4806      	ldr	r0, [pc, #24]	@ (c0de8270 <streamingReviewCallback+0x28>)
c0de8258:	eb09 0100 	add.w	r1, r9, r0
c0de825c:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de8260:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de8264:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de8268:	f7fe bf9a 	b.w	c0de71a0 <displayStreamingReviewPage>
c0de826c:	bd8c      	pop	{r2, r3, r7, pc}
c0de826e:	bf00      	nop
c0de8270:	0000172c 	.word	0x0000172c

c0de8274 <onChoiceAccept>:
c0de8274:	4803      	ldr	r0, [pc, #12]	@ (c0de8284 <onChoiceAccept+0x10>)
c0de8276:	4448      	add	r0, r9
c0de8278:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de827a:	b109      	cbz	r1, c0de8280 <onChoiceAccept+0xc>
c0de827c:	2001      	movs	r0, #1
c0de827e:	4708      	bx	r1
c0de8280:	4770      	bx	lr
c0de8282:	bf00      	nop
c0de8284:	0000172c 	.word	0x0000172c

c0de8288 <onChoiceReject>:
c0de8288:	4803      	ldr	r0, [pc, #12]	@ (c0de8298 <onChoiceReject+0x10>)
c0de828a:	4448      	add	r0, r9
c0de828c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de828e:	b109      	cbz	r1, c0de8294 <onChoiceReject+0xc>
c0de8290:	2000      	movs	r0, #0
c0de8292:	4708      	bx	r1
c0de8294:	4770      	bx	lr
c0de8296:	bf00      	nop
c0de8298:	0000172c 	.word	0x0000172c

c0de829c <genericChoiceCallback>:
c0de829c:	b5e0      	push	{r5, r6, r7, lr}
c0de829e:	4608      	mov	r0, r1
c0de82a0:	f10d 0107 	add.w	r1, sp, #7
c0de82a4:	f7ff fb98 	bl	c0de79d8 <buttonGenericCallback>
c0de82a8:	b128      	cbz	r0, c0de82b6 <genericChoiceCallback+0x1a>
c0de82aa:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de82ae:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de82b2:	f7ff b871 	b.w	c0de7398 <displayChoicePage>
c0de82b6:	bd8c      	pop	{r2, r3, r7, pc}

c0de82b8 <OUTLINED_FUNCTION_0>:
c0de82b8:	460e      	mov	r6, r1
c0de82ba:	2140      	movs	r1, #64	@ 0x40
c0de82bc:	4698      	mov	r8, r3
c0de82be:	4615      	mov	r5, r2
c0de82c0:	eb09 0400 	add.w	r4, r9, r0
c0de82c4:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de82c8:	f002 bf20 	b.w	c0deb10c <__aeabi_memclr>

c0de82cc <OUTLINED_FUNCTION_2>:
c0de82cc:	2200      	movs	r2, #0
c0de82ce:	eb09 0100 	add.w	r1, r9, r0
c0de82d2:	634a      	str	r2, [r1, #52]	@ 0x34
c0de82d4:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de82d8:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de82dc:	3901      	subs	r1, #1
c0de82de:	4291      	cmp	r1, r2
c0de82e0:	4770      	bx	lr

c0de82e2 <OUTLINED_FUNCTION_3>:
c0de82e2:	eb09 0500 	add.w	r5, r9, r0
c0de82e6:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de82ea:	f002 bf0f 	b.w	c0deb10c <__aeabi_memclr>

c0de82ee <OUTLINED_FUNCTION_4>:
c0de82ee:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de82f2:	f7ff ba53 	b.w	c0de779c <getContentElemAtIdx>

c0de82f6 <OUTLINED_FUNCTION_5>:
c0de82f6:	eb09 0600 	add.w	r6, r9, r0
c0de82fa:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de82fe:	f002 bf05 	b.w	c0deb10c <__aeabi_memclr>

c0de8302 <OUTLINED_FUNCTION_6>:
c0de8302:	3004      	adds	r0, #4
c0de8304:	f002 bb02 	b.w	c0dea90c <pic>

c0de8308 <OUTLINED_FUNCTION_7>:
c0de8308:	e9cd 6500 	strd	r6, r5, [sp]
c0de830c:	f7fe be2c 	b.w	c0de6f68 <drawStep>

c0de8310 <OUTLINED_FUNCTION_8>:
c0de8310:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de8314:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de8318:	4730      	bx	r6

c0de831a <OUTLINED_FUNCTION_9>:
c0de831a:	4604      	mov	r4, r0
c0de831c:	2134      	movs	r1, #52	@ 0x34
c0de831e:	4628      	mov	r0, r5
c0de8320:	f002 bef4 	b.w	c0deb10c <__aeabi_memclr>

c0de8324 <bip32_path_read>:
c0de8324:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de8328:	b10b      	cbz	r3, c0de832e <bip32_path_read+0xa>
c0de832a:	2b0a      	cmp	r3, #10
c0de832c:	d902      	bls.n	c0de8334 <bip32_path_read+0x10>
c0de832e:	2000      	movs	r0, #0
c0de8330:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de8334:	4692      	mov	sl, r2
c0de8336:	460e      	mov	r6, r1
c0de8338:	4683      	mov	fp, r0
c0de833a:	425f      	negs	r7, r3
c0de833c:	2500      	movs	r5, #0
c0de833e:	f04f 0800 	mov.w	r8, #0
c0de8342:	9301      	str	r3, [sp, #4]
c0de8344:	42af      	cmp	r7, r5
c0de8346:	d00c      	beq.n	c0de8362 <bip32_path_read+0x3e>
c0de8348:	f108 0404 	add.w	r4, r8, #4
c0de834c:	42b4      	cmp	r4, r6
c0de834e:	d808      	bhi.n	c0de8362 <bip32_path_read+0x3e>
c0de8350:	4658      	mov	r0, fp
c0de8352:	4641      	mov	r1, r8
c0de8354:	f000 fbcd 	bl	c0de8af2 <read_u32_be>
c0de8358:	f84a 0008 	str.w	r0, [sl, r8]
c0de835c:	3d01      	subs	r5, #1
c0de835e:	46a0      	mov	r8, r4
c0de8360:	e7f0      	b.n	c0de8344 <bip32_path_read+0x20>
c0de8362:	9a01      	ldr	r2, [sp, #4]
c0de8364:	4269      	negs	r1, r5
c0de8366:	2000      	movs	r0, #0
c0de8368:	4291      	cmp	r1, r2
c0de836a:	bf28      	it	cs
c0de836c:	2001      	movcs	r0, #1
c0de836e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de8372 <buffer_seek_cur>:
c0de8372:	6882      	ldr	r2, [r0, #8]
c0de8374:	1889      	adds	r1, r1, r2
c0de8376:	d205      	bcs.n	c0de8384 <buffer_seek_cur+0x12>
c0de8378:	6842      	ldr	r2, [r0, #4]
c0de837a:	4291      	cmp	r1, r2
c0de837c:	bf9e      	ittt	ls
c0de837e:	6081      	strls	r1, [r0, #8]
c0de8380:	2001      	movls	r0, #1
c0de8382:	4770      	bxls	lr
c0de8384:	2000      	movs	r0, #0
c0de8386:	4770      	bx	lr

c0de8388 <buffer_read_u8>:
c0de8388:	b510      	push	{r4, lr}
c0de838a:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de838e:	429a      	cmp	r2, r3
c0de8390:	d00a      	beq.n	c0de83a8 <buffer_read_u8+0x20>
c0de8392:	6804      	ldr	r4, [r0, #0]
c0de8394:	5ce4      	ldrb	r4, [r4, r3]
c0de8396:	700c      	strb	r4, [r1, #0]
c0de8398:	6881      	ldr	r1, [r0, #8]
c0de839a:	3101      	adds	r1, #1
c0de839c:	d206      	bcs.n	c0de83ac <buffer_read_u8+0x24>
c0de839e:	6844      	ldr	r4, [r0, #4]
c0de83a0:	42a1      	cmp	r1, r4
c0de83a2:	bf98      	it	ls
c0de83a4:	6081      	strls	r1, [r0, #8]
c0de83a6:	e001      	b.n	c0de83ac <buffer_read_u8+0x24>
c0de83a8:	2000      	movs	r0, #0
c0de83aa:	7008      	strb	r0, [r1, #0]
c0de83ac:	1ad0      	subs	r0, r2, r3
c0de83ae:	bf18      	it	ne
c0de83b0:	2001      	movne	r0, #1
c0de83b2:	bd10      	pop	{r4, pc}

c0de83b4 <buffer_read_u64>:
c0de83b4:	b570      	push	{r4, r5, r6, lr}
c0de83b6:	f000 f87d 	bl	c0de84b4 <OUTLINED_FUNCTION_0>
c0de83ba:	2e07      	cmp	r6, #7
c0de83bc:	d904      	bls.n	c0de83c8 <buffer_read_u64+0x14>
c0de83be:	6820      	ldr	r0, [r4, #0]
c0de83c0:	b132      	cbz	r2, c0de83d0 <buffer_read_u64+0x1c>
c0de83c2:	f000 fbcd 	bl	c0de8b60 <read_u64_le>
c0de83c6:	e005      	b.n	c0de83d4 <buffer_read_u64+0x20>
c0de83c8:	2000      	movs	r0, #0
c0de83ca:	e9c5 0000 	strd	r0, r0, [r5]
c0de83ce:	e00c      	b.n	c0de83ea <buffer_read_u64+0x36>
c0de83d0:	f000 fb9b 	bl	c0de8b0a <read_u64_be>
c0de83d4:	e9c5 0100 	strd	r0, r1, [r5]
c0de83d8:	68a0      	ldr	r0, [r4, #8]
c0de83da:	f110 0f09 	cmn.w	r0, #9
c0de83de:	d804      	bhi.n	c0de83ea <buffer_read_u64+0x36>
c0de83e0:	6861      	ldr	r1, [r4, #4]
c0de83e2:	3008      	adds	r0, #8
c0de83e4:	4288      	cmp	r0, r1
c0de83e6:	bf98      	it	ls
c0de83e8:	60a0      	strls	r0, [r4, #8]
c0de83ea:	2000      	movs	r0, #0
c0de83ec:	2e07      	cmp	r6, #7
c0de83ee:	bf88      	it	hi
c0de83f0:	2001      	movhi	r0, #1
c0de83f2:	bd70      	pop	{r4, r5, r6, pc}

c0de83f4 <buffer_read_varint>:
c0de83f4:	b5b0      	push	{r4, r5, r7, lr}
c0de83f6:	4604      	mov	r4, r0
c0de83f8:	460d      	mov	r5, r1
c0de83fa:	6800      	ldr	r0, [r0, #0]
c0de83fc:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de8400:	4410      	add	r0, r2
c0de8402:	1a89      	subs	r1, r1, r2
c0de8404:	462a      	mov	r2, r5
c0de8406:	f000 fc15 	bl	c0de8c34 <varint_read>
c0de840a:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de840e:	dd0a      	ble.n	c0de8426 <buffer_read_varint+0x32>
c0de8410:	68a1      	ldr	r1, [r4, #8]
c0de8412:	1840      	adds	r0, r0, r1
c0de8414:	d205      	bcs.n	c0de8422 <buffer_read_varint+0x2e>
c0de8416:	6861      	ldr	r1, [r4, #4]
c0de8418:	4288      	cmp	r0, r1
c0de841a:	bf9e      	ittt	ls
c0de841c:	60a0      	strls	r0, [r4, #8]
c0de841e:	2001      	movls	r0, #1
c0de8420:	bdb0      	popls	{r4, r5, r7, pc}
c0de8422:	2000      	movs	r0, #0
c0de8424:	bdb0      	pop	{r4, r5, r7, pc}
c0de8426:	2000      	movs	r0, #0
c0de8428:	e9c5 0000 	strd	r0, r0, [r5]
c0de842c:	bdb0      	pop	{r4, r5, r7, pc}

c0de842e <buffer_read_bip32_path>:
c0de842e:	b5b0      	push	{r4, r5, r7, lr}
c0de8430:	4604      	mov	r4, r0
c0de8432:	4615      	mov	r5, r2
c0de8434:	460a      	mov	r2, r1
c0de8436:	6800      	ldr	r0, [r0, #0]
c0de8438:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de843c:	4418      	add	r0, r3
c0de843e:	1ac9      	subs	r1, r1, r3
c0de8440:	462b      	mov	r3, r5
c0de8442:	f7ff ff6f 	bl	c0de8324 <bip32_path_read>
c0de8446:	b140      	cbz	r0, c0de845a <buffer_read_bip32_path+0x2c>
c0de8448:	68a2      	ldr	r2, [r4, #8]
c0de844a:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de844e:	4291      	cmp	r1, r2
c0de8450:	d303      	bcc.n	c0de845a <buffer_read_bip32_path+0x2c>
c0de8452:	6862      	ldr	r2, [r4, #4]
c0de8454:	4291      	cmp	r1, r2
c0de8456:	bf98      	it	ls
c0de8458:	60a1      	strls	r1, [r4, #8]
c0de845a:	bdb0      	pop	{r4, r5, r7, pc}

c0de845c <buffer_copy>:
c0de845c:	b5b0      	push	{r4, r5, r7, lr}
c0de845e:	4614      	mov	r4, r2
c0de8460:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de8464:	1a9d      	subs	r5, r3, r2
c0de8466:	42a5      	cmp	r5, r4
c0de8468:	d806      	bhi.n	c0de8478 <buffer_copy+0x1c>
c0de846a:	6800      	ldr	r0, [r0, #0]
c0de846c:	4402      	add	r2, r0
c0de846e:	4608      	mov	r0, r1
c0de8470:	4611      	mov	r1, r2
c0de8472:	462a      	mov	r2, r5
c0de8474:	f002 fe4f 	bl	c0deb116 <__aeabi_memmove>
c0de8478:	2000      	movs	r0, #0
c0de847a:	42a5      	cmp	r5, r4
c0de847c:	bf98      	it	ls
c0de847e:	2001      	movls	r0, #1
c0de8480:	bdb0      	pop	{r4, r5, r7, pc}

c0de8482 <buffer_move>:
c0de8482:	b5b0      	push	{r4, r5, r7, lr}
c0de8484:	4615      	mov	r5, r2
c0de8486:	4604      	mov	r4, r0
c0de8488:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de848c:	1a12      	subs	r2, r2, r0
c0de848e:	42aa      	cmp	r2, r5
c0de8490:	bf84      	itt	hi
c0de8492:	2000      	movhi	r0, #0
c0de8494:	bdb0      	pophi	{r4, r5, r7, pc}
c0de8496:	6823      	ldr	r3, [r4, #0]
c0de8498:	4403      	add	r3, r0
c0de849a:	4608      	mov	r0, r1
c0de849c:	4619      	mov	r1, r3
c0de849e:	f002 fe3a 	bl	c0deb116 <__aeabi_memmove>
c0de84a2:	68a0      	ldr	r0, [r4, #8]
c0de84a4:	1940      	adds	r0, r0, r5
c0de84a6:	d203      	bcs.n	c0de84b0 <buffer_move+0x2e>
c0de84a8:	6861      	ldr	r1, [r4, #4]
c0de84aa:	4288      	cmp	r0, r1
c0de84ac:	bf98      	it	ls
c0de84ae:	60a0      	strls	r0, [r4, #8]
c0de84b0:	2001      	movs	r0, #1
c0de84b2:	bdb0      	pop	{r4, r5, r7, pc}

c0de84b4 <OUTLINED_FUNCTION_0>:
c0de84b4:	4604      	mov	r4, r0
c0de84b6:	460d      	mov	r5, r1
c0de84b8:	6840      	ldr	r0, [r0, #4]
c0de84ba:	68a1      	ldr	r1, [r4, #8]
c0de84bc:	1a46      	subs	r6, r0, r1
c0de84be:	4770      	bx	lr

c0de84c0 <bip32_derive_with_seed_init_privkey_256>:
c0de84c0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de84c4:	b095      	sub	sp, #84	@ 0x54
c0de84c6:	460d      	mov	r5, r1
c0de84c8:	4607      	mov	r7, r0
c0de84ca:	a904      	add	r1, sp, #16
c0de84cc:	469a      	mov	sl, r3
c0de84ce:	4614      	mov	r4, r2
c0de84d0:	4628      	mov	r0, r5
c0de84d2:	f002 fbcf 	bl	c0deac74 <cx_ecdomain_parameters_length>
c0de84d6:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de84da:	4606      	mov	r6, r0
c0de84dc:	b9e0      	cbnz	r0, c0de8518 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de84de:	9804      	ldr	r0, [sp, #16]
c0de84e0:	2820      	cmp	r0, #32
c0de84e2:	d117      	bne.n	c0de8514 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de84e4:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de84e6:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de84ea:	ab05      	add	r3, sp, #20
c0de84ec:	e9cd 3200 	strd	r3, r2, [sp]
c0de84f0:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de84f4:	4638      	mov	r0, r7
c0de84f6:	4629      	mov	r1, r5
c0de84f8:	4622      	mov	r2, r4
c0de84fa:	4653      	mov	r3, sl
c0de84fc:	f000 f818 	bl	c0de8530 <os_derive_bip32_with_seed_no_throw>
c0de8500:	4606      	mov	r6, r0
c0de8502:	b948      	cbnz	r0, c0de8518 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de8504:	9a04      	ldr	r2, [sp, #16]
c0de8506:	a905      	add	r1, sp, #20
c0de8508:	4628      	mov	r0, r5
c0de850a:	4643      	mov	r3, r8
c0de850c:	f001 fb9e 	bl	c0de9c4c <cx_ecfp_init_private_key_no_throw>
c0de8510:	4606      	mov	r6, r0
c0de8512:	e001      	b.n	c0de8518 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de8514:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de8518:	a805      	add	r0, sp, #20
c0de851a:	2140      	movs	r1, #64	@ 0x40
c0de851c:	f002 fe02 	bl	c0deb124 <explicit_bzero>
c0de8520:	b116      	cbz	r6, c0de8528 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de8522:	4640      	mov	r0, r8
c0de8524:	f000 f89f 	bl	c0de8666 <OUTLINED_FUNCTION_0>
c0de8528:	4630      	mov	r0, r6
c0de852a:	b015      	add	sp, #84	@ 0x54
c0de852c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de8530 <os_derive_bip32_with_seed_no_throw>:
c0de8530:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8534:	b090      	sub	sp, #64	@ 0x40
c0de8536:	f10d 0810 	add.w	r8, sp, #16
c0de853a:	4607      	mov	r7, r0
c0de853c:	469b      	mov	fp, r3
c0de853e:	4616      	mov	r6, r2
c0de8540:	460c      	mov	r4, r1
c0de8542:	4640      	mov	r0, r8
c0de8544:	f002 fe24 	bl	c0deb190 <setjmp>
c0de8548:	b285      	uxth	r5, r0
c0de854a:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de854e:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de8552:	b155      	cbz	r5, c0de856a <os_derive_bip32_with_seed_no_throw+0x3a>
c0de8554:	2000      	movs	r0, #0
c0de8556:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de855a:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de855c:	f002 fc20 	bl	c0deada0 <try_context_set>
c0de8560:	2140      	movs	r1, #64	@ 0x40
c0de8562:	4650      	mov	r0, sl
c0de8564:	f002 fdde 	bl	c0deb124 <explicit_bzero>
c0de8568:	e012      	b.n	c0de8590 <os_derive_bip32_with_seed_no_throw+0x60>
c0de856a:	a804      	add	r0, sp, #16
c0de856c:	f002 fc18 	bl	c0deada0 <try_context_set>
c0de8570:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de8572:	900e      	str	r0, [sp, #56]	@ 0x38
c0de8574:	4668      	mov	r0, sp
c0de8576:	4632      	mov	r2, r6
c0de8578:	465b      	mov	r3, fp
c0de857a:	f8c0 a000 	str.w	sl, [r0]
c0de857e:	6041      	str	r1, [r0, #4]
c0de8580:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de8582:	6081      	str	r1, [r0, #8]
c0de8584:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de8586:	60c1      	str	r1, [r0, #12]
c0de8588:	4638      	mov	r0, r7
c0de858a:	4621      	mov	r1, r4
c0de858c:	f002 fb7c 	bl	c0deac88 <os_perso_derive_node_with_seed_key>
c0de8590:	f002 fbfe 	bl	c0dead90 <try_context_get>
c0de8594:	4540      	cmp	r0, r8
c0de8596:	d102      	bne.n	c0de859e <os_derive_bip32_with_seed_no_throw+0x6e>
c0de8598:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de859a:	f002 fc01 	bl	c0deada0 <try_context_set>
c0de859e:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de85a2:	b918      	cbnz	r0, c0de85ac <os_derive_bip32_with_seed_no_throw+0x7c>
c0de85a4:	4628      	mov	r0, r5
c0de85a6:	b010      	add	sp, #64	@ 0x40
c0de85a8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de85ac:	f001 fb76 	bl	c0de9c9c <os_longjmp>

c0de85b0 <bip32_derive_with_seed_get_pubkey_256>:
c0de85b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de85b2:	b0a1      	sub	sp, #132	@ 0x84
c0de85b4:	460e      	mov	r6, r1
c0de85b6:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de85b8:	9103      	str	r1, [sp, #12]
c0de85ba:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de85bc:	9102      	str	r1, [sp, #8]
c0de85be:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de85c0:	9101      	str	r1, [sp, #4]
c0de85c2:	a917      	add	r1, sp, #92	@ 0x5c
c0de85c4:	9100      	str	r1, [sp, #0]
c0de85c6:	4631      	mov	r1, r6
c0de85c8:	f7ff ff7a 	bl	c0de84c0 <bip32_derive_with_seed_init_privkey_256>
c0de85cc:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de85ce:	4605      	mov	r5, r0
c0de85d0:	b9b8      	cbnz	r0, c0de8602 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de85d2:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de85d4:	2301      	movs	r3, #1
c0de85d6:	9000      	str	r0, [sp, #0]
c0de85d8:	af04      	add	r7, sp, #16
c0de85da:	aa17      	add	r2, sp, #92	@ 0x5c
c0de85dc:	4630      	mov	r0, r6
c0de85de:	4639      	mov	r1, r7
c0de85e0:	f001 fb2f 	bl	c0de9c42 <cx_ecfp_generate_pair2_no_throw>
c0de85e4:	4605      	mov	r5, r0
c0de85e6:	b960      	cbnz	r0, c0de8602 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de85e8:	9805      	ldr	r0, [sp, #20]
c0de85ea:	2841      	cmp	r0, #65	@ 0x41
c0de85ec:	d107      	bne.n	c0de85fe <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de85ee:	f107 0108 	add.w	r1, r7, #8
c0de85f2:	4620      	mov	r0, r4
c0de85f4:	2241      	movs	r2, #65	@ 0x41
c0de85f6:	f002 fd8c 	bl	c0deb112 <__aeabi_memcpy>
c0de85fa:	2500      	movs	r5, #0
c0de85fc:	e001      	b.n	c0de8602 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de85fe:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de8602:	a817      	add	r0, sp, #92	@ 0x5c
c0de8604:	f000 f82f 	bl	c0de8666 <OUTLINED_FUNCTION_0>
c0de8608:	b11d      	cbz	r5, c0de8612 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de860a:	4620      	mov	r0, r4
c0de860c:	2141      	movs	r1, #65	@ 0x41
c0de860e:	f002 fd89 	bl	c0deb124 <explicit_bzero>
c0de8612:	4628      	mov	r0, r5
c0de8614:	b021      	add	sp, #132	@ 0x84
c0de8616:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de8618 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de8618:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de861a:	b08f      	sub	sp, #60	@ 0x3c
c0de861c:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de861e:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de8620:	683c      	ldr	r4, [r7, #0]
c0de8622:	9503      	str	r5, [sp, #12]
c0de8624:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de8626:	9502      	str	r5, [sp, #8]
c0de8628:	2500      	movs	r5, #0
c0de862a:	9501      	str	r5, [sp, #4]
c0de862c:	ad05      	add	r5, sp, #20
c0de862e:	9500      	str	r5, [sp, #0]
c0de8630:	f7ff ff46 	bl	c0de84c0 <bip32_derive_with_seed_init_privkey_256>
c0de8634:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de8636:	4606      	mov	r6, r0
c0de8638:	b950      	cbnz	r0, c0de8650 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de863a:	ae14      	add	r6, sp, #80	@ 0x50
c0de863c:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de863e:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de8640:	e9cd 6500 	strd	r6, r5, [sp]
c0de8644:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de8648:	a805      	add	r0, sp, #20
c0de864a:	f001 faf5 	bl	c0de9c38 <cx_ecdsa_sign_no_throw>
c0de864e:	4606      	mov	r6, r0
c0de8650:	a805      	add	r0, sp, #20
c0de8652:	f000 f808 	bl	c0de8666 <OUTLINED_FUNCTION_0>
c0de8656:	b11e      	cbz	r6, c0de8660 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de8658:	4628      	mov	r0, r5
c0de865a:	4621      	mov	r1, r4
c0de865c:	f002 fd62 	bl	c0deb124 <explicit_bzero>
c0de8660:	4630      	mov	r0, r6
c0de8662:	b00f      	add	sp, #60	@ 0x3c
c0de8664:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de8666 <OUTLINED_FUNCTION_0>:
c0de8666:	2128      	movs	r1, #40	@ 0x28
c0de8668:	f002 bd5c 	b.w	c0deb124 <explicit_bzero>

c0de866c <format_u64>:
c0de866c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8670:	b1f9      	cbz	r1, c0de86b2 <format_u64+0x46>
c0de8672:	4615      	mov	r5, r2
c0de8674:	4604      	mov	r4, r0
c0de8676:	f1a1 0801 	sub.w	r8, r1, #1
c0de867a:	2700      	movs	r7, #0
c0de867c:	2600      	movs	r6, #0
c0de867e:	f1b5 000a 	subs.w	r0, r5, #10
c0de8682:	f173 0000 	sbcs.w	r0, r3, #0
c0de8686:	d316      	bcc.n	c0de86b6 <format_u64+0x4a>
c0de8688:	4619      	mov	r1, r3
c0de868a:	4628      	mov	r0, r5
c0de868c:	220a      	movs	r2, #10
c0de868e:	2300      	movs	r3, #0
c0de8690:	f002 fbb0 	bl	c0deadf4 <__aeabi_uldivmod>
c0de8694:	460b      	mov	r3, r1
c0de8696:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de869a:	1cba      	adds	r2, r7, #2
c0de869c:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de86a0:	4605      	mov	r5, r0
c0de86a2:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de86a6:	55e1      	strb	r1, [r4, r7]
c0de86a8:	1c79      	adds	r1, r7, #1
c0de86aa:	4542      	cmp	r2, r8
c0de86ac:	460f      	mov	r7, r1
c0de86ae:	d9e6      	bls.n	c0de867e <format_u64+0x12>
c0de86b0:	e012      	b.n	c0de86d8 <format_u64+0x6c>
c0de86b2:	2600      	movs	r6, #0
c0de86b4:	e010      	b.n	c0de86d8 <format_u64+0x6c>
c0de86b6:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de86ba:	19e1      	adds	r1, r4, r7
c0de86bc:	55e0      	strb	r0, [r4, r7]
c0de86be:	2000      	movs	r0, #0
c0de86c0:	7048      	strb	r0, [r1, #1]
c0de86c2:	b2c1      	uxtb	r1, r0
c0de86c4:	428f      	cmp	r7, r1
c0de86c6:	d906      	bls.n	c0de86d6 <format_u64+0x6a>
c0de86c8:	5c62      	ldrb	r2, [r4, r1]
c0de86ca:	5de3      	ldrb	r3, [r4, r7]
c0de86cc:	3001      	adds	r0, #1
c0de86ce:	5463      	strb	r3, [r4, r1]
c0de86d0:	55e2      	strb	r2, [r4, r7]
c0de86d2:	3f01      	subs	r7, #1
c0de86d4:	e7f5      	b.n	c0de86c2 <format_u64+0x56>
c0de86d6:	2601      	movs	r6, #1
c0de86d8:	4630      	mov	r0, r6
c0de86da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de86de <format_fpu64>:
c0de86de:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de86e2:	b086      	sub	sp, #24
c0de86e4:	466c      	mov	r4, sp
c0de86e6:	4688      	mov	r8, r1
c0de86e8:	4605      	mov	r5, r0
c0de86ea:	2115      	movs	r1, #21
c0de86ec:	461e      	mov	r6, r3
c0de86ee:	4617      	mov	r7, r2
c0de86f0:	4620      	mov	r0, r4
c0de86f2:	f002 fd0b 	bl	c0deb10c <__aeabi_memclr>
c0de86f6:	4620      	mov	r0, r4
c0de86f8:	2115      	movs	r1, #21
c0de86fa:	463a      	mov	r2, r7
c0de86fc:	4633      	mov	r3, r6
c0de86fe:	f7ff ffb5 	bl	c0de866c <format_u64>
c0de8702:	b340      	cbz	r0, c0de8756 <format_fpu64+0x78>
c0de8704:	466f      	mov	r7, sp
c0de8706:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de8708:	4638      	mov	r0, r7
c0de870a:	f002 fd59 	bl	c0deb1c0 <strlen>
c0de870e:	42b0      	cmp	r0, r6
c0de8710:	d910      	bls.n	c0de8734 <format_fpu64+0x56>
c0de8712:	1831      	adds	r1, r6, r0
c0de8714:	3101      	adds	r1, #1
c0de8716:	4541      	cmp	r1, r8
c0de8718:	d21d      	bcs.n	c0de8756 <format_fpu64+0x78>
c0de871a:	1b84      	subs	r4, r0, r6
c0de871c:	4628      	mov	r0, r5
c0de871e:	4639      	mov	r1, r7
c0de8720:	4622      	mov	r2, r4
c0de8722:	f002 fcf6 	bl	c0deb112 <__aeabi_memcpy>
c0de8726:	1928      	adds	r0, r5, r4
c0de8728:	212e      	movs	r1, #46	@ 0x2e
c0de872a:	4632      	mov	r2, r6
c0de872c:	f800 1b01 	strb.w	r1, [r0], #1
c0de8730:	1939      	adds	r1, r7, r4
c0de8732:	e015      	b.n	c0de8760 <format_fpu64+0x82>
c0de8734:	1a32      	subs	r2, r6, r0
c0de8736:	1c91      	adds	r1, r2, #2
c0de8738:	4541      	cmp	r1, r8
c0de873a:	d20c      	bcs.n	c0de8756 <format_fpu64+0x78>
c0de873c:	202e      	movs	r0, #46	@ 0x2e
c0de873e:	2330      	movs	r3, #48	@ 0x30
c0de8740:	2400      	movs	r4, #0
c0de8742:	7068      	strb	r0, [r5, #1]
c0de8744:	1ca8      	adds	r0, r5, #2
c0de8746:	702b      	strb	r3, [r5, #0]
c0de8748:	b2a5      	uxth	r5, r4
c0de874a:	42aa      	cmp	r2, r5
c0de874c:	d905      	bls.n	c0de875a <format_fpu64+0x7c>
c0de874e:	f800 3b01 	strb.w	r3, [r0], #1
c0de8752:	3401      	adds	r4, #1
c0de8754:	e7f8      	b.n	c0de8748 <format_fpu64+0x6a>
c0de8756:	2000      	movs	r0, #0
c0de8758:	e005      	b.n	c0de8766 <format_fpu64+0x88>
c0de875a:	eba8 0201 	sub.w	r2, r8, r1
c0de875e:	4669      	mov	r1, sp
c0de8760:	f002 fd4a 	bl	c0deb1f8 <strncpy>
c0de8764:	2001      	movs	r0, #1
c0de8766:	b006      	add	sp, #24
c0de8768:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de876c <format_hex>:
c0de876c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de876e:	4604      	mov	r4, r0
c0de8770:	0048      	lsls	r0, r1, #1
c0de8772:	f100 0c01 	add.w	ip, r0, #1
c0de8776:	459c      	cmp	ip, r3
c0de8778:	d902      	bls.n	c0de8780 <format_hex+0x14>
c0de877a:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de877e:	e018      	b.n	c0de87b2 <format_hex+0x46>
c0de8780:	480d      	ldr	r0, [pc, #52]	@ (c0de87b8 <format_hex+0x4c>)
c0de8782:	2500      	movs	r5, #0
c0de8784:	4478      	add	r0, pc
c0de8786:	b191      	cbz	r1, c0de87ae <format_hex+0x42>
c0de8788:	1cef      	adds	r7, r5, #3
c0de878a:	429f      	cmp	r7, r3
c0de878c:	d80d      	bhi.n	c0de87aa <format_hex+0x3e>
c0de878e:	7827      	ldrb	r7, [r4, #0]
c0de8790:	3901      	subs	r1, #1
c0de8792:	093f      	lsrs	r7, r7, #4
c0de8794:	5dc7      	ldrb	r7, [r0, r7]
c0de8796:	5557      	strb	r7, [r2, r5]
c0de8798:	1957      	adds	r7, r2, r5
c0de879a:	3502      	adds	r5, #2
c0de879c:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de87a0:	f006 060f 	and.w	r6, r6, #15
c0de87a4:	5d86      	ldrb	r6, [r0, r6]
c0de87a6:	707e      	strb	r6, [r7, #1]
c0de87a8:	e7ed      	b.n	c0de8786 <format_hex+0x1a>
c0de87aa:	f105 0c01 	add.w	ip, r5, #1
c0de87ae:	2000      	movs	r0, #0
c0de87b0:	5550      	strb	r0, [r2, r5]
c0de87b2:	4660      	mov	r0, ip
c0de87b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de87b6:	bf00      	nop
c0de87b8:	00002edf 	.word	0x00002edf

c0de87bc <app_ticker_event_callback>:
c0de87bc:	4770      	bx	lr
	...

c0de87c0 <io_event>:
c0de87c0:	b580      	push	{r7, lr}
c0de87c2:	4815      	ldr	r0, [pc, #84]	@ (c0de8818 <io_event+0x58>)
c0de87c4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de87c8:	2915      	cmp	r1, #21
c0de87ca:	d010      	beq.n	c0de87ee <io_event+0x2e>
c0de87cc:	290c      	cmp	r1, #12
c0de87ce:	d019      	beq.n	c0de8804 <io_event+0x44>
c0de87d0:	290d      	cmp	r1, #13
c0de87d2:	d015      	beq.n	c0de8800 <io_event+0x40>
c0de87d4:	290e      	cmp	r1, #14
c0de87d6:	d005      	beq.n	c0de87e4 <io_event+0x24>
c0de87d8:	2905      	cmp	r1, #5
c0de87da:	d111      	bne.n	c0de8800 <io_event+0x40>
c0de87dc:	4448      	add	r0, r9
c0de87de:	f001 f98b 	bl	c0de9af8 <ux_process_button_event>
c0de87e2:	e00f      	b.n	c0de8804 <io_event+0x44>
c0de87e4:	f7ff ffea 	bl	c0de87bc <app_ticker_event_callback>
c0de87e8:	f001 f9ca 	bl	c0de9b80 <ux_process_ticker_event>
c0de87ec:	e00a      	b.n	c0de8804 <io_event+0x44>
c0de87ee:	490b      	ldr	r1, [pc, #44]	@ (c0de881c <io_event+0x5c>)
c0de87f0:	4449      	add	r1, r9
c0de87f2:	7989      	ldrb	r1, [r1, #6]
c0de87f4:	2901      	cmp	r1, #1
c0de87f6:	d103      	bne.n	c0de8800 <io_event+0x40>
c0de87f8:	4448      	add	r0, r9
c0de87fa:	7980      	ldrb	r0, [r0, #6]
c0de87fc:	0700      	lsls	r0, r0, #28
c0de87fe:	d508      	bpl.n	c0de8812 <io_event+0x52>
c0de8800:	f001 f9d6 	bl	c0de9bb0 <ux_process_default_event>
c0de8804:	f002 fab0 	bl	c0dead68 <io_seph_is_status_sent>
c0de8808:	b908      	cbnz	r0, c0de880e <io_event+0x4e>
c0de880a:	f001 fa59 	bl	c0de9cc0 <io_seproxyhal_general_status>
c0de880e:	2001      	movs	r0, #1
c0de8810:	bd80      	pop	{r7, pc}
c0de8812:	2005      	movs	r0, #5
c0de8814:	f001 fa42 	bl	c0de9c9c <os_longjmp>
c0de8818:	00001794 	.word	0x00001794
c0de881c:	00001ac0 	.word	0x00001ac0

c0de8820 <io_exchange_al>:
c0de8820:	b510      	push	{r4, lr}
c0de8822:	4604      	mov	r4, r0
c0de8824:	f000 0003 	and.w	r0, r0, #3
c0de8828:	2801      	cmp	r0, #1
c0de882a:	d00a      	beq.n	c0de8842 <io_exchange_al+0x22>
c0de882c:	2802      	cmp	r0, #2
c0de882e:	d111      	bne.n	c0de8854 <io_exchange_al+0x34>
c0de8830:	480a      	ldr	r0, [pc, #40]	@ (c0de885c <io_exchange_al+0x3c>)
c0de8832:	4448      	add	r0, r9
c0de8834:	b139      	cbz	r1, c0de8846 <io_exchange_al+0x26>
c0de8836:	f002 fa8d 	bl	c0dead54 <io_seph_send>
c0de883a:	0620      	lsls	r0, r4, #24
c0de883c:	bf48      	it	mi
c0de883e:	f002 f88d 	blmi	c0dea95c <halt>
c0de8842:	2000      	movs	r0, #0
c0de8844:	bd10      	pop	{r4, pc}
c0de8846:	f44f 7182 	mov.w	r1, #260	@ 0x104
c0de884a:	2200      	movs	r2, #0
c0de884c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8850:	f002 ba92 	b.w	c0dead78 <io_seph_recv>
c0de8854:	2002      	movs	r0, #2
c0de8856:	f001 fa21 	bl	c0de9c9c <os_longjmp>
c0de885a:	bf00      	nop
c0de885c:	000019bc 	.word	0x000019bc

c0de8860 <io_init>:
c0de8860:	4803      	ldr	r0, [pc, #12]	@ (c0de8870 <io_init+0x10>)
c0de8862:	2100      	movs	r1, #0
c0de8864:	f809 1000 	strb.w	r1, [r9, r0]
c0de8868:	4448      	add	r0, r9
c0de886a:	6041      	str	r1, [r0, #4]
c0de886c:	4770      	bx	lr
c0de886e:	bf00      	nop
c0de8870:	000018c0 	.word	0x000018c0

c0de8874 <io_recv_command>:
c0de8874:	b510      	push	{r4, lr}
c0de8876:	4c0d      	ldr	r4, [pc, #52]	@ (c0de88ac <io_recv_command+0x38>)
c0de8878:	f819 1004 	ldrb.w	r1, [r9, r4]
c0de887c:	b151      	cbz	r1, c0de8894 <io_recv_command+0x20>
c0de887e:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de8882:	2902      	cmp	r1, #2
c0de8884:	d00e      	beq.n	c0de88a4 <io_recv_command+0x30>
c0de8886:	2901      	cmp	r1, #1
c0de8888:	d10f      	bne.n	c0de88aa <io_recv_command+0x36>
c0de888a:	2002      	movs	r0, #2
c0de888c:	f809 0004 	strb.w	r0, [r9, r4]
c0de8890:	2010      	movs	r0, #16
c0de8892:	e000      	b.n	c0de8896 <io_recv_command+0x22>
c0de8894:	2004      	movs	r0, #4
c0de8896:	eb09 0104 	add.w	r1, r9, r4
c0de889a:	8889      	ldrh	r1, [r1, #4]
c0de889c:	f001 fb82 	bl	c0de9fa4 <io_exchange>
c0de88a0:	2101      	movs	r1, #1
c0de88a2:	e000      	b.n	c0de88a6 <io_recv_command+0x32>
c0de88a4:	2100      	movs	r1, #0
c0de88a6:	f809 1004 	strb.w	r1, [r9, r4]
c0de88aa:	bd10      	pop	{r4, pc}
c0de88ac:	000018c0 	.word	0x000018c0

c0de88b0 <io_send_response_buffers>:
c0de88b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de88b4:	4f31      	ldr	r7, [pc, #196]	@ (c0de897c <io_send_response_buffers+0xcc>)
c0de88b6:	4c32      	ldr	r4, [pc, #200]	@ (c0de8980 <io_send_response_buffers+0xd0>)
c0de88b8:	4690      	mov	r8, r2
c0de88ba:	460e      	mov	r6, r1
c0de88bc:	4605      	mov	r5, r0
c0de88be:	2100      	movs	r1, #0
c0de88c0:	eb09 0007 	add.w	r0, r9, r7
c0de88c4:	6041      	str	r1, [r0, #4]
c0de88c6:	b1e5      	cbz	r5, c0de8902 <io_send_response_buffers+0x52>
c0de88c8:	b1de      	cbz	r6, c0de8902 <io_send_response_buffers+0x52>
c0de88ca:	2100      	movs	r1, #0
c0de88cc:	b1ce      	cbz	r6, c0de8902 <io_send_response_buffers+0x52>
c0de88ce:	eb09 0004 	add.w	r0, r9, r4
c0de88d2:	f5c1 7281 	rsb	r2, r1, #258	@ 0x102
c0de88d6:	1843      	adds	r3, r0, r1
c0de88d8:	4628      	mov	r0, r5
c0de88da:	4619      	mov	r1, r3
c0de88dc:	f7ff fdbe 	bl	c0de845c <buffer_copy>
c0de88e0:	b150      	cbz	r0, c0de88f8 <io_send_response_buffers+0x48>
c0de88e2:	e9d5 2301 	ldrd	r2, r3, [r5, #4]
c0de88e6:	eb09 0007 	add.w	r0, r9, r7
c0de88ea:	350c      	adds	r5, #12
c0de88ec:	3e01      	subs	r6, #1
c0de88ee:	6841      	ldr	r1, [r0, #4]
c0de88f0:	1ad2      	subs	r2, r2, r3
c0de88f2:	4411      	add	r1, r2
c0de88f4:	6041      	str	r1, [r0, #4]
c0de88f6:	e7e9      	b.n	c0de88cc <io_send_response_buffers+0x1c>
c0de88f8:	f44f 4830 	mov.w	r8, #45056	@ 0xb000
c0de88fc:	2500      	movs	r5, #0
c0de88fe:	2600      	movs	r6, #0
c0de8900:	e7dd      	b.n	c0de88be <io_send_response_buffers+0xe>
c0de8902:	eb09 0004 	add.w	r0, r9, r4
c0de8906:	fa1f f488 	uxth.w	r4, r8
c0de890a:	4622      	mov	r2, r4
c0de890c:	f000 f9c0 	bl	c0de8c90 <write_u16_be>
c0de8910:	eb09 0107 	add.w	r1, r9, r7
c0de8914:	6848      	ldr	r0, [r1, #4]
c0de8916:	3002      	adds	r0, #2
c0de8918:	6048      	str	r0, [r1, #4]
c0de891a:	491a      	ldr	r1, [pc, #104]	@ (c0de8984 <io_send_response_buffers+0xd4>)
c0de891c:	f819 1001 	ldrb.w	r1, [r9, r1]
c0de8920:	b119      	cbz	r1, c0de892a <io_send_response_buffers+0x7a>
c0de8922:	4919      	ldr	r1, [pc, #100]	@ (c0de8988 <io_send_response_buffers+0xd8>)
c0de8924:	f819 1001 	ldrb.w	r1, [r9, r1]
c0de8928:	b9a1      	cbnz	r1, c0de8954 <io_send_response_buffers+0xa4>
c0de892a:	f819 1007 	ldrb.w	r1, [r9, r7]
c0de892e:	3901      	subs	r1, #1
c0de8930:	2901      	cmp	r1, #1
c0de8932:	bf84      	itt	hi
c0de8934:	f04f 30ff 	movhi.w	r0, #4294967295	@ 0xffffffff
c0de8938:	e8bd 81f0 	ldmiahi.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de893c:	b281      	uxth	r1, r0
c0de893e:	2020      	movs	r0, #32
c0de8940:	f001 fb30 	bl	c0de9fa4 <io_exchange>
c0de8944:	2100      	movs	r1, #0
c0de8946:	eb09 0207 	add.w	r2, r9, r7
c0de894a:	f809 1007 	strb.w	r1, [r9, r7]
c0de894e:	6051      	str	r1, [r2, #4]
c0de8950:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de8954:	b281      	uxth	r1, r0
c0de8956:	2020      	movs	r0, #32
c0de8958:	f001 fb24 	bl	c0de9fa4 <io_exchange>
c0de895c:	b950      	cbnz	r0, c0de8974 <io_send_response_buffers+0xc4>
c0de895e:	480b      	ldr	r0, [pc, #44]	@ (c0de898c <io_send_response_buffers+0xdc>)
c0de8960:	f5a4 4110 	sub.w	r1, r4, #36864	@ 0x9000
c0de8964:	fab1 f181 	clz	r1, r1
c0de8968:	f859 0000 	ldr.w	r0, [r9, r0]
c0de896c:	0949      	lsrs	r1, r1, #5
c0de896e:	7001      	strb	r1, [r0, #0]
c0de8970:	f002 f9ca 	bl	c0dead08 <os_lib_end>
c0de8974:	20ff      	movs	r0, #255	@ 0xff
c0de8976:	f002 f9e3 	bl	c0dead40 <os_sched_exit>
c0de897a:	bf00      	nop
c0de897c:	000018c0 	.word	0x000018c0
c0de8980:	000019bc 	.word	0x000019bc
c0de8984:	000018d4 	.word	0x000018d4
c0de8988:	000018d5 	.word	0x000018d5
c0de898c:	000018d8 	.word	0x000018d8

c0de8990 <app_exit>:
c0de8990:	20ff      	movs	r0, #255	@ 0xff
c0de8992:	f002 f9d5 	bl	c0dead40 <os_sched_exit>

c0de8996 <common_app_init>:
c0de8996:	b580      	push	{r7, lr}
c0de8998:	f7fc fb50 	bl	c0de503c <nbgl_objInit>
c0de899c:	f001 fa94 	bl	c0de9ec8 <io_seproxyhal_init>
c0de89a0:	2000      	movs	r0, #0
c0de89a2:	f001 f861 	bl	c0de9a68 <USB_power>
c0de89a6:	2001      	movs	r0, #1
c0de89a8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de89ac:	f001 b85c 	b.w	c0de9a68 <USB_power>

c0de89b0 <standalone_app_main>:
c0de89b0:	b5b0      	push	{r4, r5, r7, lr}
c0de89b2:	b08c      	sub	sp, #48	@ 0x30
c0de89b4:	4816      	ldr	r0, [pc, #88]	@ (c0de8a10 <standalone_app_main+0x60>)
c0de89b6:	2500      	movs	r5, #0
c0de89b8:	466c      	mov	r4, sp
c0de89ba:	f809 5000 	strb.w	r5, [r9, r0]
c0de89be:	4815      	ldr	r0, [pc, #84]	@ (c0de8a14 <standalone_app_main+0x64>)
c0de89c0:	f849 5000 	str.w	r5, [r9, r0]
c0de89c4:	4814      	ldr	r0, [pc, #80]	@ (c0de8a18 <standalone_app_main+0x68>)
c0de89c6:	f809 5000 	strb.w	r5, [r9, r0]
c0de89ca:	4620      	mov	r0, r4
c0de89cc:	f002 fbe0 	bl	c0deb190 <setjmp>
c0de89d0:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de89d4:	0400      	lsls	r0, r0, #16
c0de89d6:	d108      	bne.n	c0de89ea <standalone_app_main+0x3a>
c0de89d8:	4668      	mov	r0, sp
c0de89da:	f002 f9e1 	bl	c0deada0 <try_context_set>
c0de89de:	900a      	str	r0, [sp, #40]	@ 0x28
c0de89e0:	f7ff ffd9 	bl	c0de8996 <common_app_init>
c0de89e4:	f7f7 fc6e 	bl	c0de02c4 <app_main>
c0de89e8:	e004      	b.n	c0de89f4 <standalone_app_main+0x44>
c0de89ea:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de89ec:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de89f0:	f002 f9d6 	bl	c0deada0 <try_context_set>
c0de89f4:	f002 f9cc 	bl	c0dead90 <try_context_get>
c0de89f8:	42a0      	cmp	r0, r4
c0de89fa:	d102      	bne.n	c0de8a02 <standalone_app_main+0x52>
c0de89fc:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de89fe:	f002 f9cf 	bl	c0deada0 <try_context_set>
c0de8a02:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de8a06:	b908      	cbnz	r0, c0de8a0c <standalone_app_main+0x5c>
c0de8a08:	f7ff ffc2 	bl	c0de8990 <app_exit>
c0de8a0c:	f001 f946 	bl	c0de9c9c <os_longjmp>
c0de8a10:	000018d4 	.word	0x000018d4
c0de8a14:	000018d8 	.word	0x000018d8
c0de8a18:	000018d5 	.word	0x000018d5

c0de8a1c <library_app_main>:
c0de8a1c:	b5b0      	push	{r4, r5, r7, lr}
c0de8a1e:	b08c      	sub	sp, #48	@ 0x30
c0de8a20:	466c      	mov	r4, sp
c0de8a22:	4605      	mov	r5, r0
c0de8a24:	4620      	mov	r0, r4
c0de8a26:	f002 fbb3 	bl	c0deb190 <setjmp>
c0de8a2a:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de8a2e:	0400      	lsls	r0, r0, #16
c0de8a30:	d124      	bne.n	c0de8a7c <library_app_main+0x60>
c0de8a32:	4668      	mov	r0, sp
c0de8a34:	f002 f9b4 	bl	c0deada0 <try_context_set>
c0de8a38:	900a      	str	r0, [sp, #40]	@ 0x28
c0de8a3a:	6868      	ldr	r0, [r5, #4]
c0de8a3c:	2804      	cmp	r0, #4
c0de8a3e:	d024      	beq.n	c0de8a8a <library_app_main+0x6e>
c0de8a40:	2803      	cmp	r0, #3
c0de8a42:	d026      	beq.n	c0de8a92 <library_app_main+0x76>
c0de8a44:	2802      	cmp	r0, #2
c0de8a46:	d127      	bne.n	c0de8a98 <library_app_main+0x7c>
c0de8a48:	68e8      	ldr	r0, [r5, #12]
c0de8a4a:	f7f8 fce7 	bl	c0de141c <swap_copy_transaction_parameters>
c0de8a4e:	b318      	cbz	r0, c0de8a98 <library_app_main+0x7c>
c0de8a50:	4816      	ldr	r0, [pc, #88]	@ (c0de8aac <library_app_main+0x90>)
c0de8a52:	2201      	movs	r2, #1
c0de8a54:	f809 2000 	strb.w	r2, [r9, r0]
c0de8a58:	4815      	ldr	r0, [pc, #84]	@ (c0de8ab0 <library_app_main+0x94>)
c0de8a5a:	2200      	movs	r2, #0
c0de8a5c:	f809 2000 	strb.w	r2, [r9, r0]
c0de8a60:	4a14      	ldr	r2, [pc, #80]	@ (c0de8ab4 <library_app_main+0x98>)
c0de8a62:	68e8      	ldr	r0, [r5, #12]
c0de8a64:	3020      	adds	r0, #32
c0de8a66:	f849 0002 	str.w	r0, [r9, r2]
c0de8a6a:	f7ff ff94 	bl	c0de8996 <common_app_init>
c0de8a6e:	4812      	ldr	r0, [pc, #72]	@ (c0de8ab8 <library_app_main+0x9c>)
c0de8a70:	4478      	add	r0, pc
c0de8a72:	f7fe fc57 	bl	c0de7324 <nbgl_useCaseSpinner>
c0de8a76:	f7f7 fc25 	bl	c0de02c4 <app_main>
c0de8a7a:	e00d      	b.n	c0de8a98 <library_app_main+0x7c>
c0de8a7c:	2000      	movs	r0, #0
c0de8a7e:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de8a82:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de8a84:	f002 f98c 	bl	c0deada0 <try_context_set>
c0de8a88:	e006      	b.n	c0de8a98 <library_app_main+0x7c>
c0de8a8a:	68e8      	ldr	r0, [r5, #12]
c0de8a8c:	f7f8 fc9a 	bl	c0de13c4 <swap_handle_get_printable_amount>
c0de8a90:	e002      	b.n	c0de8a98 <library_app_main+0x7c>
c0de8a92:	68e8      	ldr	r0, [r5, #12]
c0de8a94:	f7f8 fc3c 	bl	c0de1310 <swap_handle_check_address>
c0de8a98:	f002 f97a 	bl	c0dead90 <try_context_get>
c0de8a9c:	42a0      	cmp	r0, r4
c0de8a9e:	d102      	bne.n	c0de8aa6 <library_app_main+0x8a>
c0de8aa0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de8aa2:	f002 f97d 	bl	c0deada0 <try_context_set>
c0de8aa6:	f002 f92f 	bl	c0dead08 <os_lib_end>
c0de8aaa:	bf00      	nop
c0de8aac:	000018d4 	.word	0x000018d4
c0de8ab0:	000018d5 	.word	0x000018d5
c0de8ab4:	000018d8 	.word	0x000018d8
c0de8ab8:	00002a10 	.word	0x00002a10

c0de8abc <apdu_parser>:
c0de8abc:	2a04      	cmp	r2, #4
c0de8abe:	d316      	bcc.n	c0de8aee <apdu_parser+0x32>
c0de8ac0:	d102      	bne.n	c0de8ac8 <apdu_parser+0xc>
c0de8ac2:	2300      	movs	r3, #0
c0de8ac4:	7103      	strb	r3, [r0, #4]
c0de8ac6:	e004      	b.n	c0de8ad2 <apdu_parser+0x16>
c0de8ac8:	790b      	ldrb	r3, [r1, #4]
c0de8aca:	3a05      	subs	r2, #5
c0de8acc:	429a      	cmp	r2, r3
c0de8ace:	7103      	strb	r3, [r0, #4]
c0de8ad0:	d10d      	bne.n	c0de8aee <apdu_parser+0x32>
c0de8ad2:	780a      	ldrb	r2, [r1, #0]
c0de8ad4:	2b00      	cmp	r3, #0
c0de8ad6:	7002      	strb	r2, [r0, #0]
c0de8ad8:	784a      	ldrb	r2, [r1, #1]
c0de8ada:	7042      	strb	r2, [r0, #1]
c0de8adc:	788a      	ldrb	r2, [r1, #2]
c0de8ade:	7082      	strb	r2, [r0, #2]
c0de8ae0:	bf18      	it	ne
c0de8ae2:	1d4b      	addne	r3, r1, #5
c0de8ae4:	78c9      	ldrb	r1, [r1, #3]
c0de8ae6:	6083      	str	r3, [r0, #8]
c0de8ae8:	70c1      	strb	r1, [r0, #3]
c0de8aea:	2001      	movs	r0, #1
c0de8aec:	4770      	bx	lr
c0de8aee:	2000      	movs	r0, #0
c0de8af0:	4770      	bx	lr

c0de8af2 <read_u32_be>:
c0de8af2:	5c42      	ldrb	r2, [r0, r1]
c0de8af4:	4408      	add	r0, r1
c0de8af6:	7841      	ldrb	r1, [r0, #1]
c0de8af8:	7883      	ldrb	r3, [r0, #2]
c0de8afa:	78c0      	ldrb	r0, [r0, #3]
c0de8afc:	0409      	lsls	r1, r1, #16
c0de8afe:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de8b02:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de8b06:	4408      	add	r0, r1
c0de8b08:	4770      	bx	lr

c0de8b0a <read_u64_be>:
c0de8b0a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8b0c:	1842      	adds	r2, r0, r1
c0de8b0e:	5c40      	ldrb	r0, [r0, r1]
c0de8b10:	7917      	ldrb	r7, [r2, #4]
c0de8b12:	7953      	ldrb	r3, [r2, #5]
c0de8b14:	7854      	ldrb	r4, [r2, #1]
c0de8b16:	7895      	ldrb	r5, [r2, #2]
c0de8b18:	78d6      	ldrb	r6, [r2, #3]
c0de8b1a:	063f      	lsls	r7, r7, #24
c0de8b1c:	0421      	lsls	r1, r4, #16
c0de8b1e:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de8b22:	7997      	ldrb	r7, [r2, #6]
c0de8b24:	79d2      	ldrb	r2, [r2, #7]
c0de8b26:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de8b2a:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de8b2e:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de8b32:	1981      	adds	r1, r0, r6
c0de8b34:	441a      	add	r2, r3
c0de8b36:	4610      	mov	r0, r2
c0de8b38:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de8b3a <read_u16_le>:
c0de8b3a:	5c42      	ldrb	r2, [r0, r1]
c0de8b3c:	4408      	add	r0, r1
c0de8b3e:	7840      	ldrb	r0, [r0, #1]
c0de8b40:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de8b44:	b280      	uxth	r0, r0
c0de8b46:	4770      	bx	lr

c0de8b48 <read_u32_le>:
c0de8b48:	5c42      	ldrb	r2, [r0, r1]
c0de8b4a:	4408      	add	r0, r1
c0de8b4c:	7841      	ldrb	r1, [r0, #1]
c0de8b4e:	7883      	ldrb	r3, [r0, #2]
c0de8b50:	78c0      	ldrb	r0, [r0, #3]
c0de8b52:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de8b56:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de8b5a:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de8b5e:	4770      	bx	lr

c0de8b60 <read_u64_le>:
c0de8b60:	b5b0      	push	{r4, r5, r7, lr}
c0de8b62:	5c42      	ldrb	r2, [r0, r1]
c0de8b64:	4401      	add	r1, r0
c0de8b66:	7848      	ldrb	r0, [r1, #1]
c0de8b68:	788b      	ldrb	r3, [r1, #2]
c0de8b6a:	790d      	ldrb	r5, [r1, #4]
c0de8b6c:	78cc      	ldrb	r4, [r1, #3]
c0de8b6e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de8b72:	794a      	ldrb	r2, [r1, #5]
c0de8b74:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de8b78:	798b      	ldrb	r3, [r1, #6]
c0de8b7a:	79c9      	ldrb	r1, [r1, #7]
c0de8b7c:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de8b80:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de8b84:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de8b88:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de8b8c:	bdb0      	pop	{r4, r5, r7, pc}

c0de8b8e <send_swap_error_simple>:
c0de8b8e:	b082      	sub	sp, #8
c0de8b90:	2300      	movs	r3, #0
c0de8b92:	9300      	str	r3, [sp, #0]
c0de8b94:	2300      	movs	r3, #0
c0de8b96:	f000 f801 	bl	c0de8b9c <send_swap_error_with_buffers>
	...

c0de8b9c <send_swap_error_with_buffers>:
c0de8b9c:	b09c      	sub	sp, #112	@ 0x70
c0de8b9e:	4604      	mov	r4, r0
c0de8ba0:	4815      	ldr	r0, [pc, #84]	@ (c0de8bf8 <send_swap_error_with_buffers+0x5c>)
c0de8ba2:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de8ba6:	b320      	cbz	r0, c0de8bf2 <send_swap_error_with_buffers+0x56>
c0de8ba8:	4814      	ldr	r0, [pc, #80]	@ (c0de8bfc <send_swap_error_with_buffers+0x60>)
c0de8baa:	461d      	mov	r5, r3
c0de8bac:	2301      	movs	r3, #1
c0de8bae:	466e      	mov	r6, sp
c0de8bb0:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de8bb2:	f809 3000 	strb.w	r3, [r9, r0]
c0de8bb6:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de8bba:	f106 0008 	add.w	r0, r6, #8
c0de8bbe:	2164      	movs	r1, #100	@ 0x64
c0de8bc0:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de8bc4:	f002 faa2 	bl	c0deb10c <__aeabi_memclr>
c0de8bc8:	2002      	movs	r0, #2
c0de8bca:	4629      	mov	r1, r5
c0de8bcc:	9001      	str	r0, [sp, #4]
c0de8bce:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de8bd2:	2f08      	cmp	r7, #8
c0de8bd4:	9000      	str	r0, [sp, #0]
c0de8bd6:	bf28      	it	cs
c0de8bd8:	2708      	movcs	r7, #8
c0de8bda:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de8bde:	0082      	lsls	r2, r0, #2
c0de8be0:	f106 000c 	add.w	r0, r6, #12
c0de8be4:	f002 fa95 	bl	c0deb112 <__aeabi_memcpy>
c0de8be8:	1c79      	adds	r1, r7, #1
c0de8bea:	4630      	mov	r0, r6
c0de8bec:	4622      	mov	r2, r4
c0de8bee:	f7ff fe5f 	bl	c0de88b0 <io_send_response_buffers>
c0de8bf2:	2000      	movs	r0, #0
c0de8bf4:	f002 f8a4 	bl	c0dead40 <os_sched_exit>
c0de8bf8:	000018d4 	.word	0x000018d4
c0de8bfc:	000018d5 	.word	0x000018d5

c0de8c00 <swap_str_to_u64>:
c0de8c00:	2908      	cmp	r1, #8
c0de8c02:	d812      	bhi.n	c0de8c2a <swap_str_to_u64+0x2a>
c0de8c04:	b570      	push	{r4, r5, r6, lr}
c0de8c06:	2500      	movs	r5, #0
c0de8c08:	460b      	mov	r3, r1
c0de8c0a:	2400      	movs	r4, #0
c0de8c0c:	b14b      	cbz	r3, c0de8c22 <swap_str_to_u64+0x22>
c0de8c0e:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de8c12:	0224      	lsls	r4, r4, #8
c0de8c14:	3b01      	subs	r3, #1
c0de8c16:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de8c1a:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de8c1e:	4635      	mov	r5, r6
c0de8c20:	e7f4      	b.n	c0de8c0c <swap_str_to_u64+0xc>
c0de8c22:	e9c2 5400 	strd	r5, r4, [r2]
c0de8c26:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8c2a:	2000      	movs	r0, #0
c0de8c2c:	2909      	cmp	r1, #9
c0de8c2e:	bf38      	it	cc
c0de8c30:	2001      	movcc	r0, #1
c0de8c32:	4770      	bx	lr

c0de8c34 <varint_read>:
c0de8c34:	b510      	push	{r4, lr}
c0de8c36:	b1d9      	cbz	r1, c0de8c70 <varint_read+0x3c>
c0de8c38:	4614      	mov	r4, r2
c0de8c3a:	4602      	mov	r2, r0
c0de8c3c:	7800      	ldrb	r0, [r0, #0]
c0de8c3e:	28ff      	cmp	r0, #255	@ 0xff
c0de8c40:	d00c      	beq.n	c0de8c5c <varint_read+0x28>
c0de8c42:	28fe      	cmp	r0, #254	@ 0xfe
c0de8c44:	d012      	beq.n	c0de8c6c <varint_read+0x38>
c0de8c46:	28fd      	cmp	r0, #253	@ 0xfd
c0de8c48:	d115      	bne.n	c0de8c76 <varint_read+0x42>
c0de8c4a:	2903      	cmp	r1, #3
c0de8c4c:	d310      	bcc.n	c0de8c70 <varint_read+0x3c>
c0de8c4e:	4610      	mov	r0, r2
c0de8c50:	2101      	movs	r1, #1
c0de8c52:	f7ff ff72 	bl	c0de8b3a <read_u16_le>
c0de8c56:	2100      	movs	r1, #0
c0de8c58:	2203      	movs	r2, #3
c0de8c5a:	e015      	b.n	c0de8c88 <varint_read+0x54>
c0de8c5c:	2909      	cmp	r1, #9
c0de8c5e:	d307      	bcc.n	c0de8c70 <varint_read+0x3c>
c0de8c60:	4610      	mov	r0, r2
c0de8c62:	2101      	movs	r1, #1
c0de8c64:	f7ff ff7c 	bl	c0de8b60 <read_u64_le>
c0de8c68:	2209      	movs	r2, #9
c0de8c6a:	e00d      	b.n	c0de8c88 <varint_read+0x54>
c0de8c6c:	2905      	cmp	r1, #5
c0de8c6e:	d205      	bcs.n	c0de8c7c <varint_read+0x48>
c0de8c70:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de8c74:	e00a      	b.n	c0de8c8c <varint_read+0x58>
c0de8c76:	2100      	movs	r1, #0
c0de8c78:	2201      	movs	r2, #1
c0de8c7a:	e005      	b.n	c0de8c88 <varint_read+0x54>
c0de8c7c:	4610      	mov	r0, r2
c0de8c7e:	2101      	movs	r1, #1
c0de8c80:	f7ff ff62 	bl	c0de8b48 <read_u32_le>
c0de8c84:	2100      	movs	r1, #0
c0de8c86:	2205      	movs	r2, #5
c0de8c88:	e9c4 0100 	strd	r0, r1, [r4]
c0de8c8c:	4610      	mov	r0, r2
c0de8c8e:	bd10      	pop	{r4, pc}

c0de8c90 <write_u16_be>:
c0de8c90:	0a13      	lsrs	r3, r2, #8
c0de8c92:	5443      	strb	r3, [r0, r1]
c0de8c94:	4408      	add	r0, r1
c0de8c96:	7042      	strb	r2, [r0, #1]
c0de8c98:	4770      	bx	lr

c0de8c9a <USBD_HID_Setup>:
c0de8c9a:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de8c9c:	460d      	mov	r5, r1
c0de8c9e:	7809      	ldrb	r1, [r1, #0]
c0de8ca0:	4604      	mov	r4, r0
c0de8ca2:	2000      	movs	r0, #0
c0de8ca4:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de8ca8:	f88d 0005 	strb.w	r0, [sp, #5]
c0de8cac:	f011 0160 	ands.w	r1, r1, #96	@ 0x60
c0de8cb0:	d010      	beq.n	c0de8cd4 <USBD_HID_Setup+0x3a>
c0de8cb2:	2920      	cmp	r1, #32
c0de8cb4:	d13c      	bne.n	c0de8d30 <USBD_HID_Setup+0x96>
c0de8cb6:	7868      	ldrb	r0, [r5, #1]
c0de8cb8:	f1a0 010a 	sub.w	r1, r0, #10
c0de8cbc:	2902      	cmp	r1, #2
c0de8cbe:	d336      	bcc.n	c0de8d2e <USBD_HID_Setup+0x94>
c0de8cc0:	2802      	cmp	r0, #2
c0de8cc2:	d018      	beq.n	c0de8cf6 <USBD_HID_Setup+0x5c>
c0de8cc4:	2803      	cmp	r0, #3
c0de8cc6:	d016      	beq.n	c0de8cf6 <USBD_HID_Setup+0x5c>
c0de8cc8:	4620      	mov	r0, r4
c0de8cca:	4629      	mov	r1, r5
c0de8ccc:	f000 fe88 	bl	c0de99e0 <USBD_CtlError>
c0de8cd0:	2002      	movs	r0, #2
c0de8cd2:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de8cd4:	7868      	ldrb	r0, [r5, #1]
c0de8cd6:	280b      	cmp	r0, #11
c0de8cd8:	d012      	beq.n	c0de8d00 <USBD_HID_Setup+0x66>
c0de8cda:	280a      	cmp	r0, #10
c0de8cdc:	d00b      	beq.n	c0de8cf6 <USBD_HID_Setup+0x5c>
c0de8cde:	2806      	cmp	r0, #6
c0de8ce0:	d125      	bne.n	c0de8d2e <USBD_HID_Setup+0x94>
c0de8ce2:	78e8      	ldrb	r0, [r5, #3]
c0de8ce4:	2821      	cmp	r0, #33	@ 0x21
c0de8ce6:	d00f      	beq.n	c0de8d08 <USBD_HID_Setup+0x6e>
c0de8ce8:	2822      	cmp	r0, #34	@ 0x22
c0de8cea:	d11b      	bne.n	c0de8d24 <USBD_HID_Setup+0x8a>
c0de8cec:	f10d 0006 	add.w	r0, sp, #6
c0de8cf0:	f000 fd92 	bl	c0de9818 <USBD_HID_GetReportDescriptor_impl>
c0de8cf4:	e00c      	b.n	c0de8d10 <USBD_HID_Setup+0x76>
c0de8cf6:	f10d 0105 	add.w	r1, sp, #5
c0de8cfa:	4620      	mov	r0, r4
c0de8cfc:	2201      	movs	r2, #1
c0de8cfe:	e014      	b.n	c0de8d2a <USBD_HID_Setup+0x90>
c0de8d00:	4620      	mov	r0, r4
c0de8d02:	f000 fc26 	bl	c0de9552 <USBD_CtlSendStatus>
c0de8d06:	e012      	b.n	c0de8d2e <USBD_HID_Setup+0x94>
c0de8d08:	f10d 0006 	add.w	r0, sp, #6
c0de8d0c:	f000 fd70 	bl	c0de97f0 <USBD_HID_GetHidDescriptor_impl>
c0de8d10:	4601      	mov	r1, r0
c0de8d12:	88ea      	ldrh	r2, [r5, #6]
c0de8d14:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de8d18:	4290      	cmp	r0, r2
c0de8d1a:	bf38      	it	cc
c0de8d1c:	4602      	movcc	r2, r0
c0de8d1e:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de8d22:	e001      	b.n	c0de8d28 <USBD_HID_Setup+0x8e>
c0de8d24:	2200      	movs	r2, #0
c0de8d26:	2100      	movs	r1, #0
c0de8d28:	4620      	mov	r0, r4
c0de8d2a:	f000 fbf1 	bl	c0de9510 <USBD_CtlSendData>
c0de8d2e:	2000      	movs	r0, #0
c0de8d30:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de8d32 <USBD_HID_Init>:
c0de8d32:	b510      	push	{r4, lr}
c0de8d34:	2182      	movs	r1, #130	@ 0x82
c0de8d36:	2203      	movs	r2, #3
c0de8d38:	2340      	movs	r3, #64	@ 0x40
c0de8d3a:	4604      	mov	r4, r0
c0de8d3c:	f000 fc62 	bl	c0de9604 <USBD_LL_OpenEP>
c0de8d40:	4620      	mov	r0, r4
c0de8d42:	2102      	movs	r1, #2
c0de8d44:	2203      	movs	r2, #3
c0de8d46:	2340      	movs	r3, #64	@ 0x40
c0de8d48:	f000 fc5c 	bl	c0de9604 <USBD_LL_OpenEP>
c0de8d4c:	4620      	mov	r0, r4
c0de8d4e:	2102      	movs	r1, #2
c0de8d50:	2240      	movs	r2, #64	@ 0x40
c0de8d52:	f000 fd13 	bl	c0de977c <USBD_LL_PrepareReceive>
c0de8d56:	2000      	movs	r0, #0
c0de8d58:	bd10      	pop	{r4, pc}

c0de8d5a <USBD_HID_DeInit>:
c0de8d5a:	2000      	movs	r0, #0
c0de8d5c:	4770      	bx	lr

c0de8d5e <USBD_Init>:
c0de8d5e:	b190      	cbz	r0, c0de8d86 <USBD_Init+0x28>
c0de8d60:	b570      	push	{r4, r5, r6, lr}
c0de8d62:	460e      	mov	r6, r1
c0de8d64:	21d4      	movs	r1, #212	@ 0xd4
c0de8d66:	4615      	mov	r5, r2
c0de8d68:	4604      	mov	r4, r0
c0de8d6a:	f002 f9cf 	bl	c0deb10c <__aeabi_memclr>
c0de8d6e:	b10e      	cbz	r6, c0de8d74 <USBD_Init+0x16>
c0de8d70:	f8c4 60b0 	str.w	r6, [r4, #176]	@ 0xb0
c0de8d74:	2001      	movs	r0, #1
c0de8d76:	7025      	strb	r5, [r4, #0]
c0de8d78:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de8d7c:	4620      	mov	r0, r4
c0de8d7e:	f000 fc05 	bl	c0de958c <USBD_LL_Init>
c0de8d82:	2000      	movs	r0, #0
c0de8d84:	bd70      	pop	{r4, r5, r6, pc}
c0de8d86:	2002      	movs	r0, #2
c0de8d88:	4770      	bx	lr

c0de8d8a <USBD_DeInit>:
c0de8d8a:	b5b0      	push	{r4, r5, r7, lr}
c0de8d8c:	4604      	mov	r4, r0
c0de8d8e:	2001      	movs	r0, #1
c0de8d90:	25b4      	movs	r5, #180	@ 0xb4
c0de8d92:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de8d96:	2dcc      	cmp	r5, #204	@ 0xcc
c0de8d98:	d008      	beq.n	c0de8dac <USBD_DeInit+0x22>
c0de8d9a:	5960      	ldr	r0, [r4, r5]
c0de8d9c:	b120      	cbz	r0, c0de8da8 <USBD_DeInit+0x1e>
c0de8d9e:	6840      	ldr	r0, [r0, #4]
c0de8da0:	f001 fdb4 	bl	c0dea90c <pic>
c0de8da4:	f000 f973 	bl	c0de908e <OUTLINED_FUNCTION_3>
c0de8da8:	3508      	adds	r5, #8
c0de8daa:	e7f4      	b.n	c0de8d96 <USBD_DeInit+0xc>
c0de8dac:	4620      	mov	r0, r4
c0de8dae:	f000 fc21 	bl	c0de95f4 <USBD_LL_Stop>
c0de8db2:	4620      	mov	r0, r4
c0de8db4:	f000 fbf8 	bl	c0de95a8 <USBD_LL_DeInit>
c0de8db8:	2000      	movs	r0, #0
c0de8dba:	bdb0      	pop	{r4, r5, r7, pc}

c0de8dbc <USBD_RegisterClassForInterface>:
c0de8dbc:	b13a      	cbz	r2, c0de8dce <USBD_RegisterClassForInterface+0x12>
c0de8dbe:	2802      	cmp	r0, #2
c0de8dc0:	bf9c      	itt	ls
c0de8dc2:	eb01 00c0 	addls.w	r0, r1, r0, lsl #3
c0de8dc6:	f8c0 20b4 	strls.w	r2, [r0, #180]	@ 0xb4
c0de8dca:	2000      	movs	r0, #0
c0de8dcc:	4770      	bx	lr
c0de8dce:	2002      	movs	r0, #2
c0de8dd0:	4770      	bx	lr

c0de8dd2 <USBD_Start>:
c0de8dd2:	b580      	push	{r7, lr}
c0de8dd4:	f000 fbf0 	bl	c0de95b8 <USBD_LL_Start>
c0de8dd8:	2000      	movs	r0, #0
c0de8dda:	bd80      	pop	{r7, pc}

c0de8ddc <USBD_SetClassConfig>:
c0de8ddc:	b570      	push	{r4, r5, r6, lr}
c0de8dde:	460c      	mov	r4, r1
c0de8de0:	4605      	mov	r5, r0
c0de8de2:	2600      	movs	r6, #0
c0de8de4:	2e03      	cmp	r6, #3
c0de8de6:	bf04      	itt	eq
c0de8de8:	2000      	moveq	r0, #0
c0de8dea:	bd70      	popeq	{r4, r5, r6, pc}
c0de8dec:	4628      	mov	r0, r5
c0de8dee:	4631      	mov	r1, r6
c0de8df0:	f000 f951 	bl	c0de9096 <usbd_is_valid_intf>
c0de8df4:	b150      	cbz	r0, c0de8e0c <USBD_SetClassConfig+0x30>
c0de8df6:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de8dfa:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de8dfe:	6800      	ldr	r0, [r0, #0]
c0de8e00:	f001 fd84 	bl	c0dea90c <pic>
c0de8e04:	4602      	mov	r2, r0
c0de8e06:	4628      	mov	r0, r5
c0de8e08:	4621      	mov	r1, r4
c0de8e0a:	4790      	blx	r2
c0de8e0c:	3601      	adds	r6, #1
c0de8e0e:	e7e9      	b.n	c0de8de4 <USBD_SetClassConfig+0x8>

c0de8e10 <USBD_ClrClassConfig>:
c0de8e10:	b570      	push	{r4, r5, r6, lr}
c0de8e12:	460c      	mov	r4, r1
c0de8e14:	4605      	mov	r5, r0
c0de8e16:	2600      	movs	r6, #0
c0de8e18:	2e03      	cmp	r6, #3
c0de8e1a:	bf04      	itt	eq
c0de8e1c:	2000      	moveq	r0, #0
c0de8e1e:	bd70      	popeq	{r4, r5, r6, pc}
c0de8e20:	4628      	mov	r0, r5
c0de8e22:	4631      	mov	r1, r6
c0de8e24:	f000 f937 	bl	c0de9096 <usbd_is_valid_intf>
c0de8e28:	b138      	cbz	r0, c0de8e3a <USBD_ClrClassConfig+0x2a>
c0de8e2a:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de8e2e:	f000 f924 	bl	c0de907a <OUTLINED_FUNCTION_1>
c0de8e32:	4602      	mov	r2, r0
c0de8e34:	4628      	mov	r0, r5
c0de8e36:	4621      	mov	r1, r4
c0de8e38:	4790      	blx	r2
c0de8e3a:	3601      	adds	r6, #1
c0de8e3c:	e7ec      	b.n	c0de8e18 <USBD_ClrClassConfig+0x8>

c0de8e3e <USBD_LL_SetupStage>:
c0de8e3e:	b5b0      	push	{r4, r5, r7, lr}
c0de8e40:	f100 05a8 	add.w	r5, r0, #168	@ 0xa8
c0de8e44:	4604      	mov	r4, r0
c0de8e46:	4628      	mov	r0, r5
c0de8e48:	f000 fb33 	bl	c0de94b2 <USBD_ParseSetupRequest>
c0de8e4c:	f8b4 10ae 	ldrh.w	r1, [r4, #174]	@ 0xae
c0de8e50:	2001      	movs	r0, #1
c0de8e52:	e9c4 0125 	strd	r0, r1, [r4, #148]	@ 0x94
c0de8e56:	f894 00a8 	ldrb.w	r0, [r4, #168]	@ 0xa8
c0de8e5a:	f000 011f 	and.w	r1, r0, #31
c0de8e5e:	2902      	cmp	r1, #2
c0de8e60:	d007      	beq.n	c0de8e72 <USBD_LL_SetupStage+0x34>
c0de8e62:	2901      	cmp	r1, #1
c0de8e64:	d00a      	beq.n	c0de8e7c <USBD_LL_SetupStage+0x3e>
c0de8e66:	b971      	cbnz	r1, c0de8e86 <USBD_LL_SetupStage+0x48>
c0de8e68:	4620      	mov	r0, r4
c0de8e6a:	4629      	mov	r1, r5
c0de8e6c:	f000 f91f 	bl	c0de90ae <USBD_StdDevReq>
c0de8e70:	e00e      	b.n	c0de8e90 <USBD_LL_SetupStage+0x52>
c0de8e72:	4620      	mov	r0, r4
c0de8e74:	4629      	mov	r1, r5
c0de8e76:	f000 faa9 	bl	c0de93cc <USBD_StdEPReq>
c0de8e7a:	e009      	b.n	c0de8e90 <USBD_LL_SetupStage+0x52>
c0de8e7c:	4620      	mov	r0, r4
c0de8e7e:	4629      	mov	r1, r5
c0de8e80:	f000 fa88 	bl	c0de9394 <USBD_StdItfReq>
c0de8e84:	e004      	b.n	c0de8e90 <USBD_LL_SetupStage+0x52>
c0de8e86:	f000 0180 	and.w	r1, r0, #128	@ 0x80
c0de8e8a:	4620      	mov	r0, r4
c0de8e8c:	f000 fbee 	bl	c0de966c <USBD_LL_StallEP>
c0de8e90:	2000      	movs	r0, #0
c0de8e92:	bdb0      	pop	{r4, r5, r7, pc}

c0de8e94 <USBD_LL_DataOutStage>:
c0de8e94:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de8e98:	4690      	mov	r8, r2
c0de8e9a:	4604      	mov	r4, r0
c0de8e9c:	b1c9      	cbz	r1, c0de8ed2 <USBD_LL_DataOutStage+0x3e>
c0de8e9e:	469a      	mov	sl, r3
c0de8ea0:	460f      	mov	r7, r1
c0de8ea2:	2500      	movs	r5, #0
c0de8ea4:	2d03      	cmp	r5, #3
c0de8ea6:	d03f      	beq.n	c0de8f28 <USBD_LL_DataOutStage+0x94>
c0de8ea8:	f000 f8e3 	bl	c0de9072 <OUTLINED_FUNCTION_0>
c0de8eac:	b178      	cbz	r0, c0de8ece <USBD_LL_DataOutStage+0x3a>
c0de8eae:	f000 f8e9 	bl	c0de9084 <OUTLINED_FUNCTION_2>
c0de8eb2:	6980      	ldr	r0, [r0, #24]
c0de8eb4:	b158      	cbz	r0, c0de8ece <USBD_LL_DataOutStage+0x3a>
c0de8eb6:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de8eba:	2903      	cmp	r1, #3
c0de8ebc:	d107      	bne.n	c0de8ece <USBD_LL_DataOutStage+0x3a>
c0de8ebe:	f001 fd25 	bl	c0dea90c <pic>
c0de8ec2:	4606      	mov	r6, r0
c0de8ec4:	4620      	mov	r0, r4
c0de8ec6:	4639      	mov	r1, r7
c0de8ec8:	4642      	mov	r2, r8
c0de8eca:	4653      	mov	r3, sl
c0de8ecc:	47b0      	blx	r6
c0de8ece:	3501      	adds	r5, #1
c0de8ed0:	e7e8      	b.n	c0de8ea4 <USBD_LL_DataOutStage+0x10>
c0de8ed2:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
c0de8ed6:	2803      	cmp	r0, #3
c0de8ed8:	d126      	bne.n	c0de8f28 <USBD_LL_DataOutStage+0x94>
c0de8eda:	e9d4 1017 	ldrd	r1, r0, [r4, #92]	@ 0x5c
c0de8ede:	4281      	cmp	r1, r0
c0de8ee0:	d90a      	bls.n	c0de8ef8 <USBD_LL_DataOutStage+0x64>
c0de8ee2:	1a09      	subs	r1, r1, r0
c0de8ee4:	65e1      	str	r1, [r4, #92]	@ 0x5c
c0de8ee6:	4281      	cmp	r1, r0
c0de8ee8:	bf38      	it	cc
c0de8eea:	4608      	movcc	r0, r1
c0de8eec:	b282      	uxth	r2, r0
c0de8eee:	4641      	mov	r1, r8
c0de8ef0:	4620      	mov	r0, r4
c0de8ef2:	f000 fb28 	bl	c0de9546 <USBD_CtlContinueRx>
c0de8ef6:	e017      	b.n	c0de8f28 <USBD_LL_DataOutStage+0x94>
c0de8ef8:	2500      	movs	r5, #0
c0de8efa:	2d03      	cmp	r5, #3
c0de8efc:	d011      	beq.n	c0de8f22 <USBD_LL_DataOutStage+0x8e>
c0de8efe:	f000 f8b8 	bl	c0de9072 <OUTLINED_FUNCTION_0>
c0de8f02:	b160      	cbz	r0, c0de8f1e <USBD_LL_DataOutStage+0x8a>
c0de8f04:	f000 f8be 	bl	c0de9084 <OUTLINED_FUNCTION_2>
c0de8f08:	6900      	ldr	r0, [r0, #16]
c0de8f0a:	b140      	cbz	r0, c0de8f1e <USBD_LL_DataOutStage+0x8a>
c0de8f0c:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de8f10:	2903      	cmp	r1, #3
c0de8f12:	d104      	bne.n	c0de8f1e <USBD_LL_DataOutStage+0x8a>
c0de8f14:	f001 fcfa 	bl	c0dea90c <pic>
c0de8f18:	4601      	mov	r1, r0
c0de8f1a:	4620      	mov	r0, r4
c0de8f1c:	4788      	blx	r1
c0de8f1e:	3501      	adds	r5, #1
c0de8f20:	e7eb      	b.n	c0de8efa <USBD_LL_DataOutStage+0x66>
c0de8f22:	4620      	mov	r0, r4
c0de8f24:	f000 fb15 	bl	c0de9552 <USBD_CtlSendStatus>
c0de8f28:	2000      	movs	r0, #0
c0de8f2a:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de8f2e <USBD_LL_DataInStage>:
c0de8f2e:	b570      	push	{r4, r5, r6, lr}
c0de8f30:	4604      	mov	r4, r0
c0de8f32:	b1d1      	cbz	r1, c0de8f6a <USBD_LL_DataInStage+0x3c>
c0de8f34:	460d      	mov	r5, r1
c0de8f36:	2600      	movs	r6, #0
c0de8f38:	2e03      	cmp	r6, #3
c0de8f3a:	d060      	beq.n	c0de8ffe <USBD_LL_DataInStage+0xd0>
c0de8f3c:	4620      	mov	r0, r4
c0de8f3e:	4631      	mov	r1, r6
c0de8f40:	f000 f8a9 	bl	c0de9096 <usbd_is_valid_intf>
c0de8f44:	b178      	cbz	r0, c0de8f66 <USBD_LL_DataInStage+0x38>
c0de8f46:	eb04 00c6 	add.w	r0, r4, r6, lsl #3
c0de8f4a:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de8f4e:	6940      	ldr	r0, [r0, #20]
c0de8f50:	b148      	cbz	r0, c0de8f66 <USBD_LL_DataInStage+0x38>
c0de8f52:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de8f56:	2903      	cmp	r1, #3
c0de8f58:	d105      	bne.n	c0de8f66 <USBD_LL_DataInStage+0x38>
c0de8f5a:	f001 fcd7 	bl	c0dea90c <pic>
c0de8f5e:	4602      	mov	r2, r0
c0de8f60:	4620      	mov	r0, r4
c0de8f62:	4629      	mov	r1, r5
c0de8f64:	4790      	blx	r2
c0de8f66:	3601      	adds	r6, #1
c0de8f68:	e7e6      	b.n	c0de8f38 <USBD_LL_DataInStage+0xa>
c0de8f6a:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
c0de8f6e:	2802      	cmp	r0, #2
c0de8f70:	d13e      	bne.n	c0de8ff0 <USBD_LL_DataInStage+0xc2>
c0de8f72:	e9d4 1007 	ldrd	r1, r0, [r4, #28]
c0de8f76:	4281      	cmp	r1, r0
c0de8f78:	d90b      	bls.n	c0de8f92 <USBD_LL_DataInStage+0x64>
c0de8f7a:	1a0a      	subs	r2, r1, r0
c0de8f7c:	f8d4 10d0 	ldr.w	r1, [r4, #208]	@ 0xd0
c0de8f80:	61e2      	str	r2, [r4, #28]
c0de8f82:	b292      	uxth	r2, r2
c0de8f84:	4401      	add	r1, r0
c0de8f86:	4620      	mov	r0, r4
c0de8f88:	f8c4 10d0 	str.w	r1, [r4, #208]	@ 0xd0
c0de8f8c:	f000 fad1 	bl	c0de9532 <USBD_CtlContinueSendData>
c0de8f90:	e02e      	b.n	c0de8ff0 <USBD_LL_DataInStage+0xc2>
c0de8f92:	b1a0      	cbz	r0, c0de8fbe <USBD_LL_DataInStage+0x90>
c0de8f94:	69a1      	ldr	r1, [r4, #24]
c0de8f96:	fbb1 f2f0 	udiv	r2, r1, r0
c0de8f9a:	fb02 1210 	mls	r2, r2, r0, r1
c0de8f9e:	b972      	cbnz	r2, c0de8fbe <USBD_LL_DataInStage+0x90>
c0de8fa0:	4281      	cmp	r1, r0
c0de8fa2:	d30c      	bcc.n	c0de8fbe <USBD_LL_DataInStage+0x90>
c0de8fa4:	f8d4 0098 	ldr.w	r0, [r4, #152]	@ 0x98
c0de8fa8:	4281      	cmp	r1, r0
c0de8faa:	d208      	bcs.n	c0de8fbe <USBD_LL_DataInStage+0x90>
c0de8fac:	4620      	mov	r0, r4
c0de8fae:	2100      	movs	r1, #0
c0de8fb0:	2200      	movs	r2, #0
c0de8fb2:	2500      	movs	r5, #0
c0de8fb4:	f000 fabd 	bl	c0de9532 <USBD_CtlContinueSendData>
c0de8fb8:	f8c4 5098 	str.w	r5, [r4, #152]	@ 0x98
c0de8fbc:	e018      	b.n	c0de8ff0 <USBD_LL_DataInStage+0xc2>
c0de8fbe:	2500      	movs	r5, #0
c0de8fc0:	4620      	mov	r0, r4
c0de8fc2:	2d03      	cmp	r5, #3
c0de8fc4:	d012      	beq.n	c0de8fec <USBD_LL_DataInStage+0xbe>
c0de8fc6:	4629      	mov	r1, r5
c0de8fc8:	f000 f865 	bl	c0de9096 <usbd_is_valid_intf>
c0de8fcc:	b160      	cbz	r0, c0de8fe8 <USBD_LL_DataInStage+0xba>
c0de8fce:	f000 f859 	bl	c0de9084 <OUTLINED_FUNCTION_2>
c0de8fd2:	68c0      	ldr	r0, [r0, #12]
c0de8fd4:	b140      	cbz	r0, c0de8fe8 <USBD_LL_DataInStage+0xba>
c0de8fd6:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de8fda:	2903      	cmp	r1, #3
c0de8fdc:	d104      	bne.n	c0de8fe8 <USBD_LL_DataInStage+0xba>
c0de8fde:	f001 fc95 	bl	c0dea90c <pic>
c0de8fe2:	4601      	mov	r1, r0
c0de8fe4:	4620      	mov	r0, r4
c0de8fe6:	4788      	blx	r1
c0de8fe8:	3501      	adds	r5, #1
c0de8fea:	e7e9      	b.n	c0de8fc0 <USBD_LL_DataInStage+0x92>
c0de8fec:	f000 fabc 	bl	c0de9568 <USBD_CtlReceiveStatus>
c0de8ff0:	f894 00a0 	ldrb.w	r0, [r4, #160]	@ 0xa0
c0de8ff4:	2801      	cmp	r0, #1
c0de8ff6:	bf04      	itt	eq
c0de8ff8:	2000      	moveq	r0, #0
c0de8ffa:	f884 00a0 	strbeq.w	r0, [r4, #160]	@ 0xa0
c0de8ffe:	2000      	movs	r0, #0
c0de9000:	bd70      	pop	{r4, r5, r6, pc}

c0de9002 <USBD_LL_Reset>:
c0de9002:	b5b0      	push	{r4, r5, r7, lr}
c0de9004:	4604      	mov	r4, r0
c0de9006:	2001      	movs	r0, #1
c0de9008:	2500      	movs	r5, #0
c0de900a:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de900e:	2040      	movs	r0, #64	@ 0x40
c0de9010:	6220      	str	r0, [r4, #32]
c0de9012:	6620      	str	r0, [r4, #96]	@ 0x60
c0de9014:	2d03      	cmp	r5, #3
c0de9016:	bf04      	itt	eq
c0de9018:	2000      	moveq	r0, #0
c0de901a:	bdb0      	popeq	{r4, r5, r7, pc}
c0de901c:	f000 f829 	bl	c0de9072 <OUTLINED_FUNCTION_0>
c0de9020:	b128      	cbz	r0, c0de902e <USBD_LL_Reset+0x2c>
c0de9022:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de9026:	f000 f828 	bl	c0de907a <OUTLINED_FUNCTION_1>
c0de902a:	f000 f830 	bl	c0de908e <OUTLINED_FUNCTION_3>
c0de902e:	3501      	adds	r5, #1
c0de9030:	e7f0      	b.n	c0de9014 <USBD_LL_Reset+0x12>

c0de9032 <USBD_LL_SetSpeed>:
c0de9032:	7401      	strb	r1, [r0, #16]
c0de9034:	2000      	movs	r0, #0
c0de9036:	4770      	bx	lr

c0de9038 <USBD_LL_Suspend>:
c0de9038:	2000      	movs	r0, #0
c0de903a:	4770      	bx	lr

c0de903c <USBD_LL_Resume>:
c0de903c:	2000      	movs	r0, #0
c0de903e:	4770      	bx	lr

c0de9040 <USBD_LL_SOF>:
c0de9040:	b5b0      	push	{r4, r5, r7, lr}
c0de9042:	4604      	mov	r4, r0
c0de9044:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de9048:	2803      	cmp	r0, #3
c0de904a:	d110      	bne.n	c0de906e <USBD_LL_SOF+0x2e>
c0de904c:	2500      	movs	r5, #0
c0de904e:	2d03      	cmp	r5, #3
c0de9050:	d00d      	beq.n	c0de906e <USBD_LL_SOF+0x2e>
c0de9052:	f000 f80e 	bl	c0de9072 <OUTLINED_FUNCTION_0>
c0de9056:	b140      	cbz	r0, c0de906a <USBD_LL_SOF+0x2a>
c0de9058:	f000 f814 	bl	c0de9084 <OUTLINED_FUNCTION_2>
c0de905c:	69c0      	ldr	r0, [r0, #28]
c0de905e:	b120      	cbz	r0, c0de906a <USBD_LL_SOF+0x2a>
c0de9060:	f001 fc54 	bl	c0dea90c <pic>
c0de9064:	4601      	mov	r1, r0
c0de9066:	4620      	mov	r0, r4
c0de9068:	4788      	blx	r1
c0de906a:	3501      	adds	r5, #1
c0de906c:	e7ef      	b.n	c0de904e <USBD_LL_SOF+0xe>
c0de906e:	2000      	movs	r0, #0
c0de9070:	bdb0      	pop	{r4, r5, r7, pc}

c0de9072 <OUTLINED_FUNCTION_0>:
c0de9072:	4620      	mov	r0, r4
c0de9074:	4629      	mov	r1, r5
c0de9076:	f000 b80e 	b.w	c0de9096 <usbd_is_valid_intf>

c0de907a <OUTLINED_FUNCTION_1>:
c0de907a:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de907e:	6840      	ldr	r0, [r0, #4]
c0de9080:	f001 bc44 	b.w	c0dea90c <pic>

c0de9084 <OUTLINED_FUNCTION_2>:
c0de9084:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de9088:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de908c:	4770      	bx	lr

c0de908e <OUTLINED_FUNCTION_3>:
c0de908e:	7921      	ldrb	r1, [r4, #4]
c0de9090:	4602      	mov	r2, r0
c0de9092:	4620      	mov	r0, r4
c0de9094:	4710      	bx	r2

c0de9096 <usbd_is_valid_intf>:
c0de9096:	2902      	cmp	r1, #2
c0de9098:	bf84      	itt	hi
c0de909a:	2000      	movhi	r0, #0
c0de909c:	4770      	bxhi	lr
c0de909e:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de90a2:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de90a6:	2800      	cmp	r0, #0
c0de90a8:	bf18      	it	ne
c0de90aa:	2001      	movne	r0, #1
c0de90ac:	4770      	bx	lr

c0de90ae <USBD_StdDevReq>:
c0de90ae:	b580      	push	{r7, lr}
c0de90b0:	784a      	ldrb	r2, [r1, #1]
c0de90b2:	b172      	cbz	r2, c0de90d2 <USBD_StdDevReq+0x24>
c0de90b4:	2a01      	cmp	r2, #1
c0de90b6:	d00f      	beq.n	c0de90d8 <USBD_StdDevReq+0x2a>
c0de90b8:	2a03      	cmp	r2, #3
c0de90ba:	d010      	beq.n	c0de90de <USBD_StdDevReq+0x30>
c0de90bc:	2a05      	cmp	r2, #5
c0de90be:	d011      	beq.n	c0de90e4 <USBD_StdDevReq+0x36>
c0de90c0:	2a09      	cmp	r2, #9
c0de90c2:	d012      	beq.n	c0de90ea <USBD_StdDevReq+0x3c>
c0de90c4:	2a08      	cmp	r2, #8
c0de90c6:	d013      	beq.n	c0de90f0 <USBD_StdDevReq+0x42>
c0de90c8:	2a06      	cmp	r2, #6
c0de90ca:	d114      	bne.n	c0de90f6 <USBD_StdDevReq+0x48>
c0de90cc:	f000 f817 	bl	c0de90fe <USBD_GetDescriptor>
c0de90d0:	e013      	b.n	c0de90fa <USBD_StdDevReq+0x4c>
c0de90d2:	f000 f8fd 	bl	c0de92d0 <USBD_GetStatus>
c0de90d6:	e010      	b.n	c0de90fa <USBD_StdDevReq+0x4c>
c0de90d8:	f000 f937 	bl	c0de934a <USBD_ClrFeature>
c0de90dc:	e00d      	b.n	c0de90fa <USBD_StdDevReq+0x4c>
c0de90de:	f000 f91b 	bl	c0de9318 <USBD_SetFeature>
c0de90e2:	e00a      	b.n	c0de90fa <USBD_StdDevReq+0x4c>
c0de90e4:	f000 f887 	bl	c0de91f6 <USBD_SetAddress>
c0de90e8:	e007      	b.n	c0de90fa <USBD_StdDevReq+0x4c>
c0de90ea:	f000 f8a5 	bl	c0de9238 <USBD_SetConfig>
c0de90ee:	e004      	b.n	c0de90fa <USBD_StdDevReq+0x4c>
c0de90f0:	f000 f8da 	bl	c0de92a8 <USBD_GetConfig>
c0de90f4:	e001      	b.n	c0de90fa <USBD_StdDevReq+0x4c>
c0de90f6:	f000 fc73 	bl	c0de99e0 <USBD_CtlError>
c0de90fa:	2000      	movs	r0, #0
c0de90fc:	bd80      	pop	{r7, pc}

c0de90fe <USBD_GetDescriptor>:
c0de90fe:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de9100:	460d      	mov	r5, r1
c0de9102:	8849      	ldrh	r1, [r1, #2]
c0de9104:	4604      	mov	r4, r0
c0de9106:	2000      	movs	r0, #0
c0de9108:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de910c:	0a08      	lsrs	r0, r1, #8
c0de910e:	2801      	cmp	r0, #1
c0de9110:	d025      	beq.n	c0de915e <USBD_GetDescriptor+0x60>
c0de9112:	2802      	cmp	r0, #2
c0de9114:	d02e      	beq.n	c0de9174 <USBD_GetDescriptor+0x76>
c0de9116:	2803      	cmp	r0, #3
c0de9118:	d00a      	beq.n	c0de9130 <USBD_GetDescriptor+0x32>
c0de911a:	2806      	cmp	r0, #6
c0de911c:	d031      	beq.n	c0de9182 <USBD_GetDescriptor+0x84>
c0de911e:	2807      	cmp	r0, #7
c0de9120:	d016      	beq.n	c0de9150 <USBD_GetDescriptor+0x52>
c0de9122:	280f      	cmp	r0, #15
c0de9124:	d12f      	bne.n	c0de9186 <USBD_GetDescriptor+0x88>
c0de9126:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de912a:	69c0      	ldr	r0, [r0, #28]
c0de912c:	b9d0      	cbnz	r0, c0de9164 <USBD_GetDescriptor+0x66>
c0de912e:	e02a      	b.n	c0de9186 <USBD_GetDescriptor+0x88>
c0de9130:	b2c8      	uxtb	r0, r1
c0de9132:	2805      	cmp	r0, #5
c0de9134:	d04b      	beq.n	c0de91ce <USBD_GetDescriptor+0xd0>
c0de9136:	2801      	cmp	r0, #1
c0de9138:	d04d      	beq.n	c0de91d6 <USBD_GetDescriptor+0xd8>
c0de913a:	2802      	cmp	r0, #2
c0de913c:	d04f      	beq.n	c0de91de <USBD_GetDescriptor+0xe0>
c0de913e:	2803      	cmp	r0, #3
c0de9140:	d051      	beq.n	c0de91e6 <USBD_GetDescriptor+0xe8>
c0de9142:	2804      	cmp	r0, #4
c0de9144:	d053      	beq.n	c0de91ee <USBD_GetDescriptor+0xf0>
c0de9146:	b9f0      	cbnz	r0, c0de9186 <USBD_GetDescriptor+0x88>
c0de9148:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de914c:	6840      	ldr	r0, [r0, #4]
c0de914e:	e009      	b.n	c0de9164 <USBD_GetDescriptor+0x66>
c0de9150:	7c20      	ldrb	r0, [r4, #16]
c0de9152:	b9c0      	cbnz	r0, c0de9186 <USBD_GetDescriptor+0x88>
c0de9154:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de9158:	b1a8      	cbz	r0, c0de9186 <USBD_GetDescriptor+0x88>
c0de915a:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de915c:	e022      	b.n	c0de91a4 <USBD_GetDescriptor+0xa6>
c0de915e:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de9162:	6800      	ldr	r0, [r0, #0]
c0de9164:	f001 fbd2 	bl	c0dea90c <pic>
c0de9168:	4602      	mov	r2, r0
c0de916a:	7c20      	ldrb	r0, [r4, #16]
c0de916c:	f10d 0106 	add.w	r1, sp, #6
c0de9170:	4790      	blx	r2
c0de9172:	e01d      	b.n	c0de91b0 <USBD_GetDescriptor+0xb2>
c0de9174:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de9178:	b158      	cbz	r0, c0de9192 <USBD_GetDescriptor+0x94>
c0de917a:	7c21      	ldrb	r1, [r4, #16]
c0de917c:	b189      	cbz	r1, c0de91a2 <USBD_GetDescriptor+0xa4>
c0de917e:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de9180:	e010      	b.n	c0de91a4 <USBD_GetDescriptor+0xa6>
c0de9182:	7c20      	ldrb	r0, [r4, #16]
c0de9184:	b138      	cbz	r0, c0de9196 <USBD_GetDescriptor+0x98>
c0de9186:	4620      	mov	r0, r4
c0de9188:	4629      	mov	r1, r5
c0de918a:	e8bd 40bc 	ldmia.w	sp!, {r2, r3, r4, r5, r7, lr}
c0de918e:	f000 bc27 	b.w	c0de99e0 <USBD_CtlError>
c0de9192:	2100      	movs	r1, #0
c0de9194:	e00d      	b.n	c0de91b2 <USBD_GetDescriptor+0xb4>
c0de9196:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de919a:	2800      	cmp	r0, #0
c0de919c:	d0f3      	beq.n	c0de9186 <USBD_GetDescriptor+0x88>
c0de919e:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de91a0:	e000      	b.n	c0de91a4 <USBD_GetDescriptor+0xa6>
c0de91a2:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de91a4:	f001 fbb2 	bl	c0dea90c <pic>
c0de91a8:	4601      	mov	r1, r0
c0de91aa:	f10d 0006 	add.w	r0, sp, #6
c0de91ae:	4788      	blx	r1
c0de91b0:	4601      	mov	r1, r0
c0de91b2:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de91b6:	b148      	cbz	r0, c0de91cc <USBD_GetDescriptor+0xce>
c0de91b8:	88ea      	ldrh	r2, [r5, #6]
c0de91ba:	b13a      	cbz	r2, c0de91cc <USBD_GetDescriptor+0xce>
c0de91bc:	4290      	cmp	r0, r2
c0de91be:	bf38      	it	cc
c0de91c0:	4602      	movcc	r2, r0
c0de91c2:	4620      	mov	r0, r4
c0de91c4:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de91c8:	f000 f9a2 	bl	c0de9510 <USBD_CtlSendData>
c0de91cc:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de91ce:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de91d2:	6980      	ldr	r0, [r0, #24]
c0de91d4:	e7c6      	b.n	c0de9164 <USBD_GetDescriptor+0x66>
c0de91d6:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de91da:	6880      	ldr	r0, [r0, #8]
c0de91dc:	e7c2      	b.n	c0de9164 <USBD_GetDescriptor+0x66>
c0de91de:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de91e2:	68c0      	ldr	r0, [r0, #12]
c0de91e4:	e7be      	b.n	c0de9164 <USBD_GetDescriptor+0x66>
c0de91e6:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de91ea:	6900      	ldr	r0, [r0, #16]
c0de91ec:	e7ba      	b.n	c0de9164 <USBD_GetDescriptor+0x66>
c0de91ee:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de91f2:	6940      	ldr	r0, [r0, #20]
c0de91f4:	e7b6      	b.n	c0de9164 <USBD_GetDescriptor+0x66>

c0de91f6 <USBD_SetAddress>:
c0de91f6:	b5b0      	push	{r4, r5, r7, lr}
c0de91f8:	4604      	mov	r4, r0
c0de91fa:	8888      	ldrh	r0, [r1, #4]
c0de91fc:	b928      	cbnz	r0, c0de920a <USBD_SetAddress+0x14>
c0de91fe:	88c8      	ldrh	r0, [r1, #6]
c0de9200:	b918      	cbnz	r0, c0de920a <USBD_SetAddress+0x14>
c0de9202:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de9206:	2803      	cmp	r0, #3
c0de9208:	d104      	bne.n	c0de9214 <USBD_SetAddress+0x1e>
c0de920a:	4620      	mov	r0, r4
c0de920c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9210:	f000 bbe6 	b.w	c0de99e0 <USBD_CtlError>
c0de9214:	7888      	ldrb	r0, [r1, #2]
c0de9216:	f000 057f 	and.w	r5, r0, #127	@ 0x7f
c0de921a:	4620      	mov	r0, r4
c0de921c:	4629      	mov	r1, r5
c0de921e:	f884 509e 	strb.w	r5, [r4, #158]	@ 0x9e
c0de9222:	f000 fa77 	bl	c0de9714 <USBD_LL_SetUSBAddress>
c0de9226:	f000 f96d 	bl	c0de9504 <OUTLINED_FUNCTION_2>
c0de922a:	b10d      	cbz	r5, c0de9230 <USBD_SetAddress+0x3a>
c0de922c:	2002      	movs	r0, #2
c0de922e:	e000      	b.n	c0de9232 <USBD_SetAddress+0x3c>
c0de9230:	2001      	movs	r0, #1
c0de9232:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de9236:	bdb0      	pop	{r4, r5, r7, pc}

c0de9238 <USBD_SetConfig>:
c0de9238:	b570      	push	{r4, r5, r6, lr}
c0de923a:	788e      	ldrb	r6, [r1, #2]
c0de923c:	460d      	mov	r5, r1
c0de923e:	4604      	mov	r4, r0
c0de9240:	2e02      	cmp	r6, #2
c0de9242:	d21b      	bcs.n	c0de927c <USBD_SetConfig+0x44>
c0de9244:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de9248:	2803      	cmp	r0, #3
c0de924a:	d007      	beq.n	c0de925c <USBD_SetConfig+0x24>
c0de924c:	2802      	cmp	r0, #2
c0de924e:	d115      	bne.n	c0de927c <USBD_SetConfig+0x44>
c0de9250:	b32e      	cbz	r6, c0de929e <USBD_SetConfig+0x66>
c0de9252:	2003      	movs	r0, #3
c0de9254:	6066      	str	r6, [r4, #4]
c0de9256:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de925a:	e009      	b.n	c0de9270 <USBD_SetConfig+0x38>
c0de925c:	b1a6      	cbz	r6, c0de9288 <USBD_SetConfig+0x50>
c0de925e:	6860      	ldr	r0, [r4, #4]
c0de9260:	2801      	cmp	r0, #1
c0de9262:	d01c      	beq.n	c0de929e <USBD_SetConfig+0x66>
c0de9264:	b2c1      	uxtb	r1, r0
c0de9266:	4620      	mov	r0, r4
c0de9268:	f7ff fdd2 	bl	c0de8e10 <USBD_ClrClassConfig>
c0de926c:	2001      	movs	r0, #1
c0de926e:	6060      	str	r0, [r4, #4]
c0de9270:	4620      	mov	r0, r4
c0de9272:	4631      	mov	r1, r6
c0de9274:	f7ff fdb2 	bl	c0de8ddc <USBD_SetClassConfig>
c0de9278:	2802      	cmp	r0, #2
c0de927a:	d110      	bne.n	c0de929e <USBD_SetConfig+0x66>
c0de927c:	4620      	mov	r0, r4
c0de927e:	4629      	mov	r1, r5
c0de9280:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de9284:	f000 bbac 	b.w	c0de99e0 <USBD_CtlError>
c0de9288:	2000      	movs	r0, #0
c0de928a:	4631      	mov	r1, r6
c0de928c:	6060      	str	r0, [r4, #4]
c0de928e:	2002      	movs	r0, #2
c0de9290:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de9294:	4620      	mov	r0, r4
c0de9296:	f7ff fdbb 	bl	c0de8e10 <USBD_ClrClassConfig>
c0de929a:	f000 f933 	bl	c0de9504 <OUTLINED_FUNCTION_2>
c0de929e:	4620      	mov	r0, r4
c0de92a0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de92a4:	f000 b955 	b.w	c0de9552 <USBD_CtlSendStatus>

c0de92a8 <USBD_GetConfig>:
c0de92a8:	88ca      	ldrh	r2, [r1, #6]
c0de92aa:	2a01      	cmp	r2, #1
c0de92ac:	d10a      	bne.n	c0de92c4 <USBD_GetConfig+0x1c>
c0de92ae:	f890 209c 	ldrb.w	r2, [r0, #156]	@ 0x9c
c0de92b2:	2a03      	cmp	r2, #3
c0de92b4:	d008      	beq.n	c0de92c8 <USBD_GetConfig+0x20>
c0de92b6:	2a02      	cmp	r2, #2
c0de92b8:	d104      	bne.n	c0de92c4 <USBD_GetConfig+0x1c>
c0de92ba:	2200      	movs	r2, #0
c0de92bc:	4601      	mov	r1, r0
c0de92be:	f841 2f08 	str.w	r2, [r1, #8]!
c0de92c2:	e002      	b.n	c0de92ca <USBD_GetConfig+0x22>
c0de92c4:	f000 bb8c 	b.w	c0de99e0 <USBD_CtlError>
c0de92c8:	1d01      	adds	r1, r0, #4
c0de92ca:	2201      	movs	r2, #1
c0de92cc:	f000 b920 	b.w	c0de9510 <USBD_CtlSendData>

c0de92d0 <USBD_GetStatus>:
c0de92d0:	b5b0      	push	{r4, r5, r7, lr}
c0de92d2:	4604      	mov	r4, r0
c0de92d4:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de92d8:	f000 00fe 	and.w	r0, r0, #254	@ 0xfe
c0de92dc:	2802      	cmp	r0, #2
c0de92de:	d10d      	bne.n	c0de92fc <USBD_GetStatus+0x2c>
c0de92e0:	2001      	movs	r0, #1
c0de92e2:	4625      	mov	r5, r4
c0de92e4:	f845 0f0c 	str.w	r0, [r5, #12]!
c0de92e8:	f8d5 0098 	ldr.w	r0, [r5, #152]	@ 0x98
c0de92ec:	b158      	cbz	r0, c0de9306 <USBD_GetStatus+0x36>
c0de92ee:	4620      	mov	r0, r4
c0de92f0:	f000 f93a 	bl	c0de9568 <USBD_CtlReceiveStatus>
c0de92f4:	68e0      	ldr	r0, [r4, #12]
c0de92f6:	f040 0002 	orr.w	r0, r0, #2
c0de92fa:	e005      	b.n	c0de9308 <USBD_GetStatus+0x38>
c0de92fc:	4620      	mov	r0, r4
c0de92fe:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9302:	f000 bb6d 	b.w	c0de99e0 <USBD_CtlError>
c0de9306:	2003      	movs	r0, #3
c0de9308:	60e0      	str	r0, [r4, #12]
c0de930a:	4620      	mov	r0, r4
c0de930c:	4629      	mov	r1, r5
c0de930e:	2202      	movs	r2, #2
c0de9310:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9314:	f000 b8fc 	b.w	c0de9510 <USBD_CtlSendData>

c0de9318 <USBD_SetFeature>:
c0de9318:	b5b0      	push	{r4, r5, r7, lr}
c0de931a:	4604      	mov	r4, r0
c0de931c:	8848      	ldrh	r0, [r1, #2]
c0de931e:	2801      	cmp	r0, #1
c0de9320:	bf18      	it	ne
c0de9322:	bdb0      	popne	{r4, r5, r7, pc}
c0de9324:	2001      	movs	r0, #1
c0de9326:	460d      	mov	r5, r1
c0de9328:	f8c4 00a4 	str.w	r0, [r4, #164]	@ 0xa4
c0de932c:	7908      	ldrb	r0, [r1, #4]
c0de932e:	2802      	cmp	r0, #2
c0de9330:	d806      	bhi.n	c0de9340 <USBD_SetFeature+0x28>
c0de9332:	f000 f8e1 	bl	c0de94f8 <OUTLINED_FUNCTION_1>
c0de9336:	d003      	beq.n	c0de9340 <USBD_SetFeature+0x28>
c0de9338:	f000 f8e7 	bl	c0de950a <OUTLINED_FUNCTION_3>
c0de933c:	f000 f8d8 	bl	c0de94f0 <OUTLINED_FUNCTION_0>
c0de9340:	4620      	mov	r0, r4
c0de9342:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9346:	f000 b904 	b.w	c0de9552 <USBD_CtlSendStatus>

c0de934a <USBD_ClrFeature>:
c0de934a:	b5b0      	push	{r4, r5, r7, lr}
c0de934c:	4604      	mov	r4, r0
c0de934e:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de9352:	460d      	mov	r5, r1
c0de9354:	f000 00fe 	and.w	r0, r0, #254	@ 0xfe
c0de9358:	2802      	cmp	r0, #2
c0de935a:	d115      	bne.n	c0de9388 <USBD_ClrFeature+0x3e>
c0de935c:	8868      	ldrh	r0, [r5, #2]
c0de935e:	2801      	cmp	r0, #1
c0de9360:	bf18      	it	ne
c0de9362:	bdb0      	popne	{r4, r5, r7, pc}
c0de9364:	2000      	movs	r0, #0
c0de9366:	f8c4 00a4 	str.w	r0, [r4, #164]	@ 0xa4
c0de936a:	7928      	ldrb	r0, [r5, #4]
c0de936c:	2802      	cmp	r0, #2
c0de936e:	d806      	bhi.n	c0de937e <USBD_ClrFeature+0x34>
c0de9370:	f000 f8c2 	bl	c0de94f8 <OUTLINED_FUNCTION_1>
c0de9374:	d003      	beq.n	c0de937e <USBD_ClrFeature+0x34>
c0de9376:	f000 f8c8 	bl	c0de950a <OUTLINED_FUNCTION_3>
c0de937a:	f000 f8b9 	bl	c0de94f0 <OUTLINED_FUNCTION_0>
c0de937e:	4620      	mov	r0, r4
c0de9380:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9384:	f000 b8e5 	b.w	c0de9552 <USBD_CtlSendStatus>
c0de9388:	4620      	mov	r0, r4
c0de938a:	4629      	mov	r1, r5
c0de938c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9390:	f000 bb26 	b.w	c0de99e0 <USBD_CtlError>

c0de9394 <USBD_StdItfReq>:
c0de9394:	b5b0      	push	{r4, r5, r7, lr}
c0de9396:	4604      	mov	r4, r0
c0de9398:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de939c:	460d      	mov	r5, r1
c0de939e:	2803      	cmp	r0, #3
c0de93a0:	d10e      	bne.n	c0de93c0 <USBD_StdItfReq+0x2c>
c0de93a2:	7928      	ldrb	r0, [r5, #4]
c0de93a4:	2802      	cmp	r0, #2
c0de93a6:	d80b      	bhi.n	c0de93c0 <USBD_StdItfReq+0x2c>
c0de93a8:	f000 f8a6 	bl	c0de94f8 <OUTLINED_FUNCTION_1>
c0de93ac:	d008      	beq.n	c0de93c0 <USBD_StdItfReq+0x2c>
c0de93ae:	f000 f8ac 	bl	c0de950a <OUTLINED_FUNCTION_3>
c0de93b2:	f000 f89d 	bl	c0de94f0 <OUTLINED_FUNCTION_0>
c0de93b6:	88e8      	ldrh	r0, [r5, #6]
c0de93b8:	b930      	cbnz	r0, c0de93c8 <USBD_StdItfReq+0x34>
c0de93ba:	f000 f8a3 	bl	c0de9504 <OUTLINED_FUNCTION_2>
c0de93be:	e003      	b.n	c0de93c8 <USBD_StdItfReq+0x34>
c0de93c0:	4620      	mov	r0, r4
c0de93c2:	4629      	mov	r1, r5
c0de93c4:	f000 fb0c 	bl	c0de99e0 <USBD_CtlError>
c0de93c8:	2000      	movs	r0, #0
c0de93ca:	bdb0      	pop	{r4, r5, r7, pc}

c0de93cc <USBD_StdEPReq>:
c0de93cc:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de93ce:	460d      	mov	r5, r1
c0de93d0:	7909      	ldrb	r1, [r1, #4]
c0de93d2:	4604      	mov	r4, r0
c0de93d4:	f001 007f 	and.w	r0, r1, #127	@ 0x7f
c0de93d8:	2805      	cmp	r0, #5
c0de93da:	d304      	bcc.n	c0de93e6 <USBD_StdEPReq+0x1a>
c0de93dc:	4620      	mov	r0, r4
c0de93de:	4629      	mov	r1, r5
c0de93e0:	f000 fafe 	bl	c0de99e0 <USBD_CtlError>
c0de93e4:	e063      	b.n	c0de94ae <USBD_StdEPReq+0xe2>
c0de93e6:	782a      	ldrb	r2, [r5, #0]
c0de93e8:	f002 0260 	and.w	r2, r2, #96	@ 0x60
c0de93ec:	2a20      	cmp	r2, #32
c0de93ee:	d10c      	bne.n	c0de940a <USBD_StdEPReq+0x3e>
c0de93f0:	2902      	cmp	r1, #2
c0de93f2:	d80a      	bhi.n	c0de940a <USBD_StdEPReq+0x3e>
c0de93f4:	eb04 02c1 	add.w	r2, r4, r1, lsl #3
c0de93f8:	f8d2 20b4 	ldr.w	r2, [r2, #180]	@ 0xb4
c0de93fc:	b12a      	cbz	r2, c0de940a <USBD_StdEPReq+0x3e>
c0de93fe:	6890      	ldr	r0, [r2, #8]
c0de9400:	f001 fa84 	bl	c0dea90c <pic>
c0de9404:	f000 f874 	bl	c0de94f0 <OUTLINED_FUNCTION_0>
c0de9408:	e051      	b.n	c0de94ae <USBD_StdEPReq+0xe2>
c0de940a:	786a      	ldrb	r2, [r5, #1]
c0de940c:	b152      	cbz	r2, c0de9424 <USBD_StdEPReq+0x58>
c0de940e:	2a01      	cmp	r2, #1
c0de9410:	d010      	beq.n	c0de9434 <USBD_StdEPReq+0x68>
c0de9412:	2a03      	cmp	r2, #3
c0de9414:	d14b      	bne.n	c0de94ae <USBD_StdEPReq+0xe2>
c0de9416:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de941a:	2803      	cmp	r0, #3
c0de941c:	d016      	beq.n	c0de944c <USBD_StdEPReq+0x80>
c0de941e:	2802      	cmp	r0, #2
c0de9420:	d00e      	beq.n	c0de9440 <USBD_StdEPReq+0x74>
c0de9422:	e7db      	b.n	c0de93dc <USBD_StdEPReq+0x10>
c0de9424:	f894 209c 	ldrb.w	r2, [r4, #156]	@ 0x9c
c0de9428:	2a03      	cmp	r2, #3
c0de942a:	d023      	beq.n	c0de9474 <USBD_StdEPReq+0xa8>
c0de942c:	2a02      	cmp	r2, #2
c0de942e:	d1d5      	bne.n	c0de93dc <USBD_StdEPReq+0x10>
c0de9430:	b940      	cbnz	r0, c0de9444 <USBD_StdEPReq+0x78>
c0de9432:	e03c      	b.n	c0de94ae <USBD_StdEPReq+0xe2>
c0de9434:	f894 209c 	ldrb.w	r2, [r4, #156]	@ 0x9c
c0de9438:	2a03      	cmp	r2, #3
c0de943a:	d02a      	beq.n	c0de9492 <USBD_StdEPReq+0xc6>
c0de943c:	2a02      	cmp	r2, #2
c0de943e:	d1cd      	bne.n	c0de93dc <USBD_StdEPReq+0x10>
c0de9440:	0648      	lsls	r0, r1, #25
c0de9442:	d034      	beq.n	c0de94ae <USBD_StdEPReq+0xe2>
c0de9444:	4620      	mov	r0, r4
c0de9446:	f000 f911 	bl	c0de966c <USBD_LL_StallEP>
c0de944a:	e030      	b.n	c0de94ae <USBD_StdEPReq+0xe2>
c0de944c:	8868      	ldrh	r0, [r5, #2]
c0de944e:	b928      	cbnz	r0, c0de945c <USBD_StdEPReq+0x90>
c0de9450:	0648      	lsls	r0, r1, #25
c0de9452:	d003      	beq.n	c0de945c <USBD_StdEPReq+0x90>
c0de9454:	4620      	mov	r0, r4
c0de9456:	f000 f909 	bl	c0de966c <USBD_LL_StallEP>
c0de945a:	7929      	ldrb	r1, [r5, #4]
c0de945c:	2902      	cmp	r1, #2
c0de945e:	d824      	bhi.n	c0de94aa <USBD_StdEPReq+0xde>
c0de9460:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0de9464:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de9468:	b1f8      	cbz	r0, c0de94aa <USBD_StdEPReq+0xde>
c0de946a:	f000 f84e 	bl	c0de950a <OUTLINED_FUNCTION_3>
c0de946e:	f000 f83f 	bl	c0de94f0 <OUTLINED_FUNCTION_0>
c0de9472:	e01a      	b.n	c0de94aa <USBD_StdEPReq+0xde>
c0de9474:	4620      	mov	r0, r4
c0de9476:	f000 f939 	bl	c0de96ec <USBD_LL_IsStallEP>
c0de947a:	2800      	cmp	r0, #0
c0de947c:	bf18      	it	ne
c0de947e:	2001      	movne	r0, #1
c0de9480:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de9484:	f10d 0106 	add.w	r1, sp, #6
c0de9488:	4620      	mov	r0, r4
c0de948a:	2202      	movs	r2, #2
c0de948c:	f000 f840 	bl	c0de9510 <USBD_CtlSendData>
c0de9490:	e00d      	b.n	c0de94ae <USBD_StdEPReq+0xe2>
c0de9492:	886a      	ldrh	r2, [r5, #2]
c0de9494:	b95a      	cbnz	r2, c0de94ae <USBD_StdEPReq+0xe2>
c0de9496:	b140      	cbz	r0, c0de94aa <USBD_StdEPReq+0xde>
c0de9498:	4620      	mov	r0, r4
c0de949a:	f000 f907 	bl	c0de96ac <USBD_LL_ClearStallEP>
c0de949e:	7928      	ldrb	r0, [r5, #4]
c0de94a0:	2802      	cmp	r0, #2
c0de94a2:	d802      	bhi.n	c0de94aa <USBD_StdEPReq+0xde>
c0de94a4:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de94a8:	e7dc      	b.n	c0de9464 <USBD_StdEPReq+0x98>
c0de94aa:	f000 f82b 	bl	c0de9504 <OUTLINED_FUNCTION_2>
c0de94ae:	2000      	movs	r0, #0
c0de94b0:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de94b2 <USBD_ParseSetupRequest>:
c0de94b2:	780a      	ldrb	r2, [r1, #0]
c0de94b4:	7002      	strb	r2, [r0, #0]
c0de94b6:	784a      	ldrb	r2, [r1, #1]
c0de94b8:	7042      	strb	r2, [r0, #1]
c0de94ba:	788a      	ldrb	r2, [r1, #2]
c0de94bc:	78cb      	ldrb	r3, [r1, #3]
c0de94be:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de94c2:	8042      	strh	r2, [r0, #2]
c0de94c4:	790a      	ldrb	r2, [r1, #4]
c0de94c6:	794b      	ldrb	r3, [r1, #5]
c0de94c8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de94cc:	8082      	strh	r2, [r0, #4]
c0de94ce:	798a      	ldrb	r2, [r1, #6]
c0de94d0:	79c9      	ldrb	r1, [r1, #7]
c0de94d2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de94d6:	80c1      	strh	r1, [r0, #6]
c0de94d8:	4770      	bx	lr

c0de94da <USBD_CtlStall>:
c0de94da:	b510      	push	{r4, lr}
c0de94dc:	2180      	movs	r1, #128	@ 0x80
c0de94de:	4604      	mov	r4, r0
c0de94e0:	f000 f8c4 	bl	c0de966c <USBD_LL_StallEP>
c0de94e4:	4620      	mov	r0, r4
c0de94e6:	2100      	movs	r1, #0
c0de94e8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de94ec:	f000 b8be 	b.w	c0de966c <USBD_LL_StallEP>

c0de94f0 <OUTLINED_FUNCTION_0>:
c0de94f0:	4602      	mov	r2, r0
c0de94f2:	4620      	mov	r0, r4
c0de94f4:	4629      	mov	r1, r5
c0de94f6:	4710      	bx	r2

c0de94f8 <OUTLINED_FUNCTION_1>:
c0de94f8:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de94fc:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de9500:	2800      	cmp	r0, #0
c0de9502:	4770      	bx	lr

c0de9504 <OUTLINED_FUNCTION_2>:
c0de9504:	4620      	mov	r0, r4
c0de9506:	f000 b824 	b.w	c0de9552 <USBD_CtlSendStatus>

c0de950a <OUTLINED_FUNCTION_3>:
c0de950a:	6880      	ldr	r0, [r0, #8]
c0de950c:	f001 b9fe 	b.w	c0dea90c <pic>

c0de9510 <USBD_CtlSendData>:
c0de9510:	b510      	push	{r4, lr}
c0de9512:	460c      	mov	r4, r1
c0de9514:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
c0de9518:	2102      	movs	r1, #2
c0de951a:	e9c0 2206 	strd	r2, r2, [r0, #24]
c0de951e:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de9522:	6a01      	ldr	r1, [r0, #32]
c0de9524:	4291      	cmp	r1, r2
c0de9526:	bf88      	it	hi
c0de9528:	4611      	movhi	r1, r2
c0de952a:	f000 f829 	bl	c0de9580 <OUTLINED_FUNCTION_1>
c0de952e:	2000      	movs	r0, #0
c0de9530:	bd10      	pop	{r4, pc}

c0de9532 <USBD_CtlContinueSendData>:
c0de9532:	b510      	push	{r4, lr}
c0de9534:	460c      	mov	r4, r1
c0de9536:	6a01      	ldr	r1, [r0, #32]
c0de9538:	4291      	cmp	r1, r2
c0de953a:	bf88      	it	hi
c0de953c:	4611      	movhi	r1, r2
c0de953e:	f000 f81f 	bl	c0de9580 <OUTLINED_FUNCTION_1>
c0de9542:	2000      	movs	r0, #0
c0de9544:	bd10      	pop	{r4, pc}

c0de9546 <USBD_CtlContinueRx>:
c0de9546:	b580      	push	{r7, lr}
c0de9548:	2100      	movs	r1, #0
c0de954a:	f000 f917 	bl	c0de977c <USBD_LL_PrepareReceive>
c0de954e:	2000      	movs	r0, #0
c0de9550:	bd80      	pop	{r7, pc}

c0de9552 <USBD_CtlSendStatus>:
c0de9552:	b580      	push	{r7, lr}
c0de9554:	2104      	movs	r1, #4
c0de9556:	2200      	movs	r2, #0
c0de9558:	2300      	movs	r3, #0
c0de955a:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de955e:	2100      	movs	r1, #0
c0de9560:	f000 f8ee 	bl	c0de9740 <USBD_LL_Transmit>
c0de9564:	2000      	movs	r0, #0
c0de9566:	bd80      	pop	{r7, pc}

c0de9568 <USBD_CtlReceiveStatus>:
c0de9568:	b580      	push	{r7, lr}
c0de956a:	2105      	movs	r1, #5
c0de956c:	2200      	movs	r2, #0
c0de956e:	f000 f802 	bl	c0de9576 <OUTLINED_FUNCTION_0>
c0de9572:	2000      	movs	r0, #0
c0de9574:	bd80      	pop	{r7, pc}

c0de9576 <OUTLINED_FUNCTION_0>:
c0de9576:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de957a:	2100      	movs	r1, #0
c0de957c:	f000 b8fe 	b.w	c0de977c <USBD_LL_PrepareReceive>

c0de9580 <OUTLINED_FUNCTION_1>:
c0de9580:	b28b      	uxth	r3, r1
c0de9582:	4622      	mov	r2, r4
c0de9584:	2100      	movs	r1, #0
c0de9586:	f000 b8db 	b.w	c0de9740 <USBD_LL_Transmit>
	...

c0de958c <USBD_LL_Init>:
c0de958c:	4804      	ldr	r0, [pc, #16]	@ (c0de95a0 <USBD_LL_Init+0x14>)
c0de958e:	2100      	movs	r1, #0
c0de9590:	f849 1000 	str.w	r1, [r9, r0]
c0de9594:	4803      	ldr	r0, [pc, #12]	@ (c0de95a4 <USBD_LL_Init+0x18>)
c0de9596:	f849 1000 	str.w	r1, [r9, r0]
c0de959a:	2000      	movs	r0, #0
c0de959c:	4770      	bx	lr
c0de959e:	bf00      	nop
c0de95a0:	000019b4 	.word	0x000019b4
c0de95a4:	000019b0 	.word	0x000019b0

c0de95a8 <USBD_LL_DeInit>:
c0de95a8:	b5e0      	push	{r5, r6, r7, lr}
c0de95aa:	f000 f90e 	bl	c0de97ca <OUTLINED_FUNCTION_1>
c0de95ae:	a801      	add	r0, sp, #4
c0de95b0:	f001 fbd0 	bl	c0dead54 <io_seph_send>
c0de95b4:	2000      	movs	r0, #0
c0de95b6:	bd8c      	pop	{r2, r3, r7, pc}

c0de95b8 <USBD_LL_Start>:
c0de95b8:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0de95ba:	2003      	movs	r0, #3
c0de95bc:	f10d 0403 	add.w	r4, sp, #3
c0de95c0:	2500      	movs	r5, #0
c0de95c2:	264f      	movs	r6, #79	@ 0x4f
c0de95c4:	2105      	movs	r1, #5
c0de95c6:	f88d 0006 	strb.w	r0, [sp, #6]
c0de95ca:	2002      	movs	r0, #2
c0de95cc:	f88d 5007 	strb.w	r5, [sp, #7]
c0de95d0:	f88d 5004 	strb.w	r5, [sp, #4]
c0de95d4:	f88d 6003 	strb.w	r6, [sp, #3]
c0de95d8:	f000 f905 	bl	c0de97e6 <OUTLINED_FUNCTION_2>
c0de95dc:	2001      	movs	r0, #1
c0de95de:	2104      	movs	r1, #4
c0de95e0:	f88d 5004 	strb.w	r5, [sp, #4]
c0de95e4:	f88d 6003 	strb.w	r6, [sp, #3]
c0de95e8:	f88d 0006 	strb.w	r0, [sp, #6]
c0de95ec:	f000 f8fb 	bl	c0de97e6 <OUTLINED_FUNCTION_2>
c0de95f0:	2000      	movs	r0, #0
c0de95f2:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}

c0de95f4 <USBD_LL_Stop>:
c0de95f4:	b5e0      	push	{r5, r6, r7, lr}
c0de95f6:	f000 f8e8 	bl	c0de97ca <OUTLINED_FUNCTION_1>
c0de95fa:	a801      	add	r0, sp, #4
c0de95fc:	f001 fbaa 	bl	c0dead54 <io_seph_send>
c0de9600:	2000      	movs	r0, #0
c0de9602:	bd8c      	pop	{r2, r3, r7, pc}

c0de9604 <USBD_LL_OpenEP>:
c0de9604:	b51c      	push	{r2, r3, r4, lr}
c0de9606:	4817      	ldr	r0, [pc, #92]	@ (c0de9664 <USBD_LL_OpenEP+0x60>)
c0de9608:	2400      	movs	r4, #0
c0de960a:	f88d 1005 	strb.w	r1, [sp, #5]
c0de960e:	2104      	movs	r1, #4
c0de9610:	f88d 1003 	strb.w	r1, [sp, #3]
c0de9614:	2105      	movs	r1, #5
c0de9616:	f88d 4006 	strb.w	r4, [sp, #6]
c0de961a:	f88d 4001 	strb.w	r4, [sp, #1]
c0de961e:	f849 4000 	str.w	r4, [r9, r0]
c0de9622:	4811      	ldr	r0, [pc, #68]	@ (c0de9668 <USBD_LL_OpenEP+0x64>)
c0de9624:	f88d 1002 	strb.w	r1, [sp, #2]
c0de9628:	214f      	movs	r1, #79	@ 0x4f
c0de962a:	f88d 1000 	strb.w	r1, [sp]
c0de962e:	f849 4000 	str.w	r4, [r9, r0]
c0de9632:	2001      	movs	r0, #1
c0de9634:	f88d 0004 	strb.w	r0, [sp, #4]
c0de9638:	b152      	cbz	r2, c0de9650 <USBD_LL_OpenEP+0x4c>
c0de963a:	2a03      	cmp	r2, #3
c0de963c:	d005      	beq.n	c0de964a <USBD_LL_OpenEP+0x46>
c0de963e:	2a02      	cmp	r2, #2
c0de9640:	d005      	beq.n	c0de964e <USBD_LL_OpenEP+0x4a>
c0de9642:	2a01      	cmp	r2, #1
c0de9644:	d106      	bne.n	c0de9654 <USBD_LL_OpenEP+0x50>
c0de9646:	2004      	movs	r0, #4
c0de9648:	e002      	b.n	c0de9650 <USBD_LL_OpenEP+0x4c>
c0de964a:	2002      	movs	r0, #2
c0de964c:	e000      	b.n	c0de9650 <USBD_LL_OpenEP+0x4c>
c0de964e:	2003      	movs	r0, #3
c0de9650:	f88d 0006 	strb.w	r0, [sp, #6]
c0de9654:	4668      	mov	r0, sp
c0de9656:	2108      	movs	r1, #8
c0de9658:	f88d 3007 	strb.w	r3, [sp, #7]
c0de965c:	f001 fb7a 	bl	c0dead54 <io_seph_send>
c0de9660:	2000      	movs	r0, #0
c0de9662:	bd1c      	pop	{r2, r3, r4, pc}
c0de9664:	000019b0 	.word	0x000019b0
c0de9668:	000019b4 	.word	0x000019b4

c0de966c <USBD_LL_StallEP>:
c0de966c:	b51c      	push	{r2, r3, r4, lr}
c0de966e:	460c      	mov	r4, r1
c0de9670:	2000      	movs	r0, #0
c0de9672:	2140      	movs	r1, #64	@ 0x40
c0de9674:	f000 f89a 	bl	c0de97ac <OUTLINED_FUNCTION_0>
c0de9678:	f10d 0002 	add.w	r0, sp, #2
c0de967c:	2106      	movs	r1, #6
c0de967e:	f001 fb69 	bl	c0dead54 <io_seph_send>
c0de9682:	4909      	ldr	r1, [pc, #36]	@ (c0de96a8 <USBD_LL_StallEP+0x3c>)
c0de9684:	0622      	lsls	r2, r4, #24
c0de9686:	4807      	ldr	r0, [pc, #28]	@ (c0de96a4 <USBD_LL_StallEP+0x38>)
c0de9688:	f004 027f 	and.w	r2, r4, #127	@ 0x7f
c0de968c:	4449      	add	r1, r9
c0de968e:	bf58      	it	pl
c0de9690:	eb09 0100 	addpl.w	r1, r9, r0
c0de9694:	2301      	movs	r3, #1
c0de9696:	6808      	ldr	r0, [r1, #0]
c0de9698:	fa03 f202 	lsl.w	r2, r3, r2
c0de969c:	4310      	orrs	r0, r2
c0de969e:	6008      	str	r0, [r1, #0]
c0de96a0:	2000      	movs	r0, #0
c0de96a2:	bd1c      	pop	{r2, r3, r4, pc}
c0de96a4:	000019b4 	.word	0x000019b4
c0de96a8:	000019b0 	.word	0x000019b0

c0de96ac <USBD_LL_ClearStallEP>:
c0de96ac:	b51c      	push	{r2, r3, r4, lr}
c0de96ae:	460c      	mov	r4, r1
c0de96b0:	2000      	movs	r0, #0
c0de96b2:	2180      	movs	r1, #128	@ 0x80
c0de96b4:	f000 f87a 	bl	c0de97ac <OUTLINED_FUNCTION_0>
c0de96b8:	f10d 0002 	add.w	r0, sp, #2
c0de96bc:	2106      	movs	r1, #6
c0de96be:	f001 fb49 	bl	c0dead54 <io_seph_send>
c0de96c2:	4909      	ldr	r1, [pc, #36]	@ (c0de96e8 <USBD_LL_ClearStallEP+0x3c>)
c0de96c4:	0622      	lsls	r2, r4, #24
c0de96c6:	4807      	ldr	r0, [pc, #28]	@ (c0de96e4 <USBD_LL_ClearStallEP+0x38>)
c0de96c8:	f004 027f 	and.w	r2, r4, #127	@ 0x7f
c0de96cc:	4449      	add	r1, r9
c0de96ce:	bf58      	it	pl
c0de96d0:	eb09 0100 	addpl.w	r1, r9, r0
c0de96d4:	2301      	movs	r3, #1
c0de96d6:	6808      	ldr	r0, [r1, #0]
c0de96d8:	fa03 f202 	lsl.w	r2, r3, r2
c0de96dc:	4390      	bics	r0, r2
c0de96de:	6008      	str	r0, [r1, #0]
c0de96e0:	2000      	movs	r0, #0
c0de96e2:	bd1c      	pop	{r2, r3, r4, pc}
c0de96e4:	000019b4 	.word	0x000019b4
c0de96e8:	000019b0 	.word	0x000019b0

c0de96ec <USBD_LL_IsStallEP>:
c0de96ec:	4a08      	ldr	r2, [pc, #32]	@ (c0de9710 <USBD_LL_IsStallEP+0x24>)
c0de96ee:	060b      	lsls	r3, r1, #24
c0de96f0:	4806      	ldr	r0, [pc, #24]	@ (c0de970c <USBD_LL_IsStallEP+0x20>)
c0de96f2:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0de96f6:	444a      	add	r2, r9
c0de96f8:	bf58      	it	pl
c0de96fa:	eb09 0200 	addpl.w	r2, r9, r0
c0de96fe:	7810      	ldrb	r0, [r2, #0]
c0de9700:	2201      	movs	r2, #1
c0de9702:	fa02 f101 	lsl.w	r1, r2, r1
c0de9706:	4008      	ands	r0, r1
c0de9708:	4770      	bx	lr
c0de970a:	bf00      	nop
c0de970c:	000019b4 	.word	0x000019b4
c0de9710:	000019b0 	.word	0x000019b0

c0de9714 <USBD_LL_SetUSBAddress>:
c0de9714:	b5e0      	push	{r5, r6, r7, lr}
c0de9716:	2003      	movs	r0, #3
c0de9718:	f88d 1007 	strb.w	r1, [sp, #7]
c0de971c:	2105      	movs	r1, #5
c0de971e:	f88d 0006 	strb.w	r0, [sp, #6]
c0de9722:	2002      	movs	r0, #2
c0de9724:	f88d 0005 	strb.w	r0, [sp, #5]
c0de9728:	2000      	movs	r0, #0
c0de972a:	f88d 0004 	strb.w	r0, [sp, #4]
c0de972e:	204f      	movs	r0, #79	@ 0x4f
c0de9730:	f88d 0003 	strb.w	r0, [sp, #3]
c0de9734:	f10d 0003 	add.w	r0, sp, #3
c0de9738:	f001 fb0c 	bl	c0dead54 <io_seph_send>
c0de973c:	2000      	movs	r0, #0
c0de973e:	bd8c      	pop	{r2, r3, r7, pc}

c0de9740 <USBD_LL_Transmit>:
c0de9740:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de9742:	2020      	movs	r0, #32
c0de9744:	f88d 1005 	strb.w	r1, [sp, #5]
c0de9748:	2106      	movs	r1, #6
c0de974a:	461c      	mov	r4, r3
c0de974c:	4615      	mov	r5, r2
c0de974e:	f88d 3007 	strb.w	r3, [sp, #7]
c0de9752:	f88d 0006 	strb.w	r0, [sp, #6]
c0de9756:	2050      	movs	r0, #80	@ 0x50
c0de9758:	f88d 0002 	strb.w	r0, [sp, #2]
c0de975c:	1cd8      	adds	r0, r3, #3
c0de975e:	f88d 0004 	strb.w	r0, [sp, #4]
c0de9762:	0a00      	lsrs	r0, r0, #8
c0de9764:	f88d 0003 	strb.w	r0, [sp, #3]
c0de9768:	f10d 0002 	add.w	r0, sp, #2
c0de976c:	f001 faf2 	bl	c0dead54 <io_seph_send>
c0de9770:	4628      	mov	r0, r5
c0de9772:	4621      	mov	r1, r4
c0de9774:	f001 faee 	bl	c0dead54 <io_seph_send>
c0de9778:	2000      	movs	r0, #0
c0de977a:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de977c <USBD_LL_PrepareReceive>:
c0de977c:	b5e0      	push	{r5, r6, r7, lr}
c0de977e:	2030      	movs	r0, #48	@ 0x30
c0de9780:	f88d 1005 	strb.w	r1, [sp, #5]
c0de9784:	2106      	movs	r1, #6
c0de9786:	f88d 2007 	strb.w	r2, [sp, #7]
c0de978a:	f88d 0006 	strb.w	r0, [sp, #6]
c0de978e:	2003      	movs	r0, #3
c0de9790:	f88d 0004 	strb.w	r0, [sp, #4]
c0de9794:	2000      	movs	r0, #0
c0de9796:	f88d 0003 	strb.w	r0, [sp, #3]
c0de979a:	2050      	movs	r0, #80	@ 0x50
c0de979c:	f88d 0002 	strb.w	r0, [sp, #2]
c0de97a0:	f10d 0002 	add.w	r0, sp, #2
c0de97a4:	f001 fad6 	bl	c0dead54 <io_seph_send>
c0de97a8:	2000      	movs	r0, #0
c0de97aa:	bd8c      	pop	{r2, r3, r7, pc}

c0de97ac <OUTLINED_FUNCTION_0>:
c0de97ac:	f88d 1006 	strb.w	r1, [sp, #6]
c0de97b0:	2103      	movs	r1, #3
c0de97b2:	f88d 0007 	strb.w	r0, [sp, #7]
c0de97b6:	f88d 0003 	strb.w	r0, [sp, #3]
c0de97ba:	2050      	movs	r0, #80	@ 0x50
c0de97bc:	f88d 4005 	strb.w	r4, [sp, #5]
c0de97c0:	f88d 1004 	strb.w	r1, [sp, #4]
c0de97c4:	f88d 0002 	strb.w	r0, [sp, #2]
c0de97c8:	4770      	bx	lr

c0de97ca <OUTLINED_FUNCTION_1>:
c0de97ca:	2002      	movs	r0, #2
c0de97cc:	2104      	movs	r1, #4
c0de97ce:	f88d 0007 	strb.w	r0, [sp, #7]
c0de97d2:	2001      	movs	r0, #1
c0de97d4:	f88d 0006 	strb.w	r0, [sp, #6]
c0de97d8:	2000      	movs	r0, #0
c0de97da:	f88d 0005 	strb.w	r0, [sp, #5]
c0de97de:	204f      	movs	r0, #79	@ 0x4f
c0de97e0:	f88d 0004 	strb.w	r0, [sp, #4]
c0de97e4:	4770      	bx	lr

c0de97e6 <OUTLINED_FUNCTION_2>:
c0de97e6:	f88d 0005 	strb.w	r0, [sp, #5]
c0de97ea:	4620      	mov	r0, r4
c0de97ec:	f001 bab2 	b.w	c0dead54 <io_seph_send>

c0de97f0 <USBD_HID_GetHidDescriptor_impl>:
c0de97f0:	4907      	ldr	r1, [pc, #28]	@ (c0de9810 <USBD_HID_GetHidDescriptor_impl+0x20>)
c0de97f2:	2200      	movs	r2, #0
c0de97f4:	4449      	add	r1, r9
c0de97f6:	f891 10ac 	ldrb.w	r1, [r1, #172]	@ 0xac
c0de97fa:	2900      	cmp	r1, #0
c0de97fc:	f04f 0100 	mov.w	r1, #0
c0de9800:	bf08      	it	eq
c0de9802:	2109      	moveq	r1, #9
c0de9804:	8001      	strh	r1, [r0, #0]
c0de9806:	4803      	ldr	r0, [pc, #12]	@ (c0de9814 <USBD_HID_GetHidDescriptor_impl+0x24>)
c0de9808:	4478      	add	r0, pc
c0de980a:	bf18      	it	ne
c0de980c:	4610      	movne	r0, r2
c0de980e:	4770      	bx	lr
c0de9810:	000018dc 	.word	0x000018dc
c0de9814:	00002e50 	.word	0x00002e50

c0de9818 <USBD_HID_GetReportDescriptor_impl>:
c0de9818:	4907      	ldr	r1, [pc, #28]	@ (c0de9838 <USBD_HID_GetReportDescriptor_impl+0x20>)
c0de981a:	2200      	movs	r2, #0
c0de981c:	4449      	add	r1, r9
c0de981e:	f891 10ac 	ldrb.w	r1, [r1, #172]	@ 0xac
c0de9822:	2900      	cmp	r1, #0
c0de9824:	f04f 0100 	mov.w	r1, #0
c0de9828:	bf08      	it	eq
c0de982a:	2122      	moveq	r1, #34	@ 0x22
c0de982c:	8001      	strh	r1, [r0, #0]
c0de982e:	4803      	ldr	r0, [pc, #12]	@ (c0de983c <USBD_HID_GetReportDescriptor_impl+0x24>)
c0de9830:	4478      	add	r0, pc
c0de9832:	bf18      	it	ne
c0de9834:	4610      	movne	r0, r2
c0de9836:	4770      	bx	lr
c0de9838:	000018dc 	.word	0x000018dc
c0de983c:	00002e31 	.word	0x00002e31

c0de9840 <USBD_HID_DataIn_impl>:
c0de9840:	2902      	cmp	r1, #2
c0de9842:	d106      	bne.n	c0de9852 <USBD_HID_DataIn_impl+0x12>
c0de9844:	b580      	push	{r7, lr}
c0de9846:	4804      	ldr	r0, [pc, #16]	@ (c0de9858 <USBD_HID_DataIn_impl+0x18>)
c0de9848:	4478      	add	r0, pc
c0de984a:	f000 fe33 	bl	c0dea4b4 <io_usb_hid_sent>
c0de984e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9852:	2000      	movs	r0, #0
c0de9854:	4770      	bx	lr
c0de9856:	bf00      	nop
c0de9858:	00000aa5 	.word	0x00000aa5

c0de985c <USBD_HID_DataOut_impl>:
c0de985c:	b570      	push	{r4, r5, r6, lr}
c0de985e:	2902      	cmp	r1, #2
c0de9860:	d121      	bne.n	c0de98a6 <USBD_HID_DataOut_impl+0x4a>
c0de9862:	4615      	mov	r5, r2
c0de9864:	2102      	movs	r1, #2
c0de9866:	2240      	movs	r2, #64	@ 0x40
c0de9868:	461c      	mov	r4, r3
c0de986a:	f7ff ff87 	bl	c0de977c <USBD_LL_PrepareReceive>
c0de986e:	4e0f      	ldr	r6, [pc, #60]	@ (c0de98ac <USBD_HID_DataOut_impl+0x50>)
c0de9870:	eb09 0006 	add.w	r0, r9, r6
c0de9874:	7980      	ldrb	r0, [r0, #6]
c0de9876:	b9b0      	cbnz	r0, c0de98a6 <USBD_HID_DataOut_impl+0x4a>
c0de9878:	2002      	movs	r0, #2
c0de987a:	f000 fcfb 	bl	c0dea274 <io_seproxyhal_get_ep_rx_size>
c0de987e:	4602      	mov	r2, r0
c0de9880:	480c      	ldr	r0, [pc, #48]	@ (c0de98b4 <USBD_HID_DataOut_impl+0x58>)
c0de9882:	4629      	mov	r1, r5
c0de9884:	4623      	mov	r3, r4
c0de9886:	4478      	add	r0, pc
c0de9888:	f000 fd38 	bl	c0dea2fc <io_usb_hid_receive>
c0de988c:	2802      	cmp	r0, #2
c0de988e:	d10a      	bne.n	c0de98a6 <USBD_HID_DataOut_impl+0x4a>
c0de9890:	2007      	movs	r0, #7
c0de9892:	2101      	movs	r1, #1
c0de9894:	f809 0006 	strb.w	r0, [r9, r6]
c0de9898:	eb09 0006 	add.w	r0, r9, r6
c0de989c:	7181      	strb	r1, [r0, #6]
c0de989e:	4904      	ldr	r1, [pc, #16]	@ (c0de98b0 <USBD_HID_DataOut_impl+0x54>)
c0de98a0:	f859 1001 	ldr.w	r1, [r9, r1]
c0de98a4:	8041      	strh	r1, [r0, #2]
c0de98a6:	2000      	movs	r0, #0
c0de98a8:	bd70      	pop	{r4, r5, r6, pc}
c0de98aa:	bf00      	nop
c0de98ac:	00001ac0 	.word	0x00001ac0
c0de98b0:	00001b20 	.word	0x00001b20
c0de98b4:	00000a67 	.word	0x00000a67

c0de98b8 <USBD_WEBUSB_Init>:
c0de98b8:	b510      	push	{r4, lr}
c0de98ba:	2183      	movs	r1, #131	@ 0x83
c0de98bc:	2203      	movs	r2, #3
c0de98be:	2340      	movs	r3, #64	@ 0x40
c0de98c0:	4604      	mov	r4, r0
c0de98c2:	f7ff fe9f 	bl	c0de9604 <USBD_LL_OpenEP>
c0de98c6:	4620      	mov	r0, r4
c0de98c8:	2103      	movs	r1, #3
c0de98ca:	2203      	movs	r2, #3
c0de98cc:	2340      	movs	r3, #64	@ 0x40
c0de98ce:	f7ff fe99 	bl	c0de9604 <USBD_LL_OpenEP>
c0de98d2:	4620      	mov	r0, r4
c0de98d4:	2103      	movs	r1, #3
c0de98d6:	2240      	movs	r2, #64	@ 0x40
c0de98d8:	f7ff ff50 	bl	c0de977c <USBD_LL_PrepareReceive>
c0de98dc:	2000      	movs	r0, #0
c0de98de:	bd10      	pop	{r4, pc}

c0de98e0 <USBD_WEBUSB_DeInit>:
c0de98e0:	2000      	movs	r0, #0
c0de98e2:	4770      	bx	lr

c0de98e4 <USBD_WEBUSB_Setup>:
c0de98e4:	2000      	movs	r0, #0
c0de98e6:	4770      	bx	lr

c0de98e8 <USBD_WEBUSB_DataIn>:
c0de98e8:	2903      	cmp	r1, #3
c0de98ea:	d106      	bne.n	c0de98fa <USBD_WEBUSB_DataIn+0x12>
c0de98ec:	b580      	push	{r7, lr}
c0de98ee:	4804      	ldr	r0, [pc, #16]	@ (c0de9900 <USBD_WEBUSB_DataIn+0x18>)
c0de98f0:	4478      	add	r0, pc
c0de98f2:	f000 fddf 	bl	c0dea4b4 <io_usb_hid_sent>
c0de98f6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de98fa:	2000      	movs	r0, #0
c0de98fc:	4770      	bx	lr
c0de98fe:	bf00      	nop
c0de9900:	000004cd 	.word	0x000004cd

c0de9904 <USBD_WEBUSB_DataOut>:
c0de9904:	b570      	push	{r4, r5, r6, lr}
c0de9906:	2903      	cmp	r1, #3
c0de9908:	d121      	bne.n	c0de994e <USBD_WEBUSB_DataOut+0x4a>
c0de990a:	4615      	mov	r5, r2
c0de990c:	2103      	movs	r1, #3
c0de990e:	2240      	movs	r2, #64	@ 0x40
c0de9910:	461c      	mov	r4, r3
c0de9912:	f7ff ff33 	bl	c0de977c <USBD_LL_PrepareReceive>
c0de9916:	4e0f      	ldr	r6, [pc, #60]	@ (c0de9954 <USBD_WEBUSB_DataOut+0x50>)
c0de9918:	eb09 0006 	add.w	r0, r9, r6
c0de991c:	7980      	ldrb	r0, [r0, #6]
c0de991e:	b9b0      	cbnz	r0, c0de994e <USBD_WEBUSB_DataOut+0x4a>
c0de9920:	2003      	movs	r0, #3
c0de9922:	f000 fca7 	bl	c0dea274 <io_seproxyhal_get_ep_rx_size>
c0de9926:	4602      	mov	r2, r0
c0de9928:	480c      	ldr	r0, [pc, #48]	@ (c0de995c <USBD_WEBUSB_DataOut+0x58>)
c0de992a:	4629      	mov	r1, r5
c0de992c:	4623      	mov	r3, r4
c0de992e:	4478      	add	r0, pc
c0de9930:	f000 fce4 	bl	c0dea2fc <io_usb_hid_receive>
c0de9934:	2802      	cmp	r0, #2
c0de9936:	d10a      	bne.n	c0de994e <USBD_WEBUSB_DataOut+0x4a>
c0de9938:	200b      	movs	r0, #11
c0de993a:	2105      	movs	r1, #5
c0de993c:	f809 0006 	strb.w	r0, [r9, r6]
c0de9940:	eb09 0006 	add.w	r0, r9, r6
c0de9944:	7181      	strb	r1, [r0, #6]
c0de9946:	4904      	ldr	r1, [pc, #16]	@ (c0de9958 <USBD_WEBUSB_DataOut+0x54>)
c0de9948:	f859 1001 	ldr.w	r1, [r9, r1]
c0de994c:	8041      	strh	r1, [r0, #2]
c0de994e:	2000      	movs	r0, #0
c0de9950:	bd70      	pop	{r4, r5, r6, pc}
c0de9952:	bf00      	nop
c0de9954:	00001ac0 	.word	0x00001ac0
c0de9958:	00001b20 	.word	0x00001b20
c0de995c:	0000048f 	.word	0x0000048f

c0de9960 <USBD_DeviceDescriptor>:
c0de9960:	2012      	movs	r0, #18
c0de9962:	8008      	strh	r0, [r1, #0]
c0de9964:	4801      	ldr	r0, [pc, #4]	@ (c0de996c <USBD_DeviceDescriptor+0xc>)
c0de9966:	4478      	add	r0, pc
c0de9968:	4770      	bx	lr
c0de996a:	bf00      	nop
c0de996c:	00002f3e 	.word	0x00002f3e

c0de9970 <USBD_LangIDStrDescriptor>:
c0de9970:	2004      	movs	r0, #4
c0de9972:	8008      	strh	r0, [r1, #0]
c0de9974:	4801      	ldr	r0, [pc, #4]	@ (c0de997c <USBD_LangIDStrDescriptor+0xc>)
c0de9976:	4478      	add	r0, pc
c0de9978:	4770      	bx	lr
c0de997a:	bf00      	nop
c0de997c:	00002f40 	.word	0x00002f40

c0de9980 <USBD_ManufacturerStrDescriptor>:
c0de9980:	200e      	movs	r0, #14
c0de9982:	8008      	strh	r0, [r1, #0]
c0de9984:	4801      	ldr	r0, [pc, #4]	@ (c0de998c <USBD_ManufacturerStrDescriptor+0xc>)
c0de9986:	4478      	add	r0, pc
c0de9988:	4770      	bx	lr
c0de998a:	bf00      	nop
c0de998c:	00002f34 	.word	0x00002f34

c0de9990 <USBD_ProductStrDescriptor>:
c0de9990:	2018      	movs	r0, #24
c0de9992:	8008      	strh	r0, [r1, #0]
c0de9994:	4801      	ldr	r0, [pc, #4]	@ (c0de999c <USBD_ProductStrDescriptor+0xc>)
c0de9996:	4478      	add	r0, pc
c0de9998:	4770      	bx	lr
c0de999a:	bf00      	nop
c0de999c:	00002f32 	.word	0x00002f32

c0de99a0 <USBD_SerialStrDescriptor>:
c0de99a0:	200a      	movs	r0, #10
c0de99a2:	8008      	strh	r0, [r1, #0]
c0de99a4:	4801      	ldr	r0, [pc, #4]	@ (c0de99ac <USBD_SerialStrDescriptor+0xc>)
c0de99a6:	4478      	add	r0, pc
c0de99a8:	4770      	bx	lr
c0de99aa:	bf00      	nop
c0de99ac:	00002f3a 	.word	0x00002f3a

c0de99b0 <USBD_ConfigStrDescriptor>:
c0de99b0:	2018      	movs	r0, #24
c0de99b2:	8008      	strh	r0, [r1, #0]
c0de99b4:	4801      	ldr	r0, [pc, #4]	@ (c0de99bc <USBD_ConfigStrDescriptor+0xc>)
c0de99b6:	4478      	add	r0, pc
c0de99b8:	4770      	bx	lr
c0de99ba:	bf00      	nop
c0de99bc:	00002f12 	.word	0x00002f12

c0de99c0 <USBD_InterfaceStrDescriptor>:
c0de99c0:	2018      	movs	r0, #24
c0de99c2:	8008      	strh	r0, [r1, #0]
c0de99c4:	4801      	ldr	r0, [pc, #4]	@ (c0de99cc <USBD_InterfaceStrDescriptor+0xc>)
c0de99c6:	4478      	add	r0, pc
c0de99c8:	4770      	bx	lr
c0de99ca:	bf00      	nop
c0de99cc:	00002f02 	.word	0x00002f02

c0de99d0 <USBD_BOSDescriptor>:
c0de99d0:	2039      	movs	r0, #57	@ 0x39
c0de99d2:	8008      	strh	r0, [r1, #0]
c0de99d4:	4801      	ldr	r0, [pc, #4]	@ (c0de99dc <USBD_BOSDescriptor+0xc>)
c0de99d6:	4478      	add	r0, pc
c0de99d8:	4770      	bx	lr
c0de99da:	bf00      	nop
c0de99dc:	00002cad 	.word	0x00002cad

c0de99e0 <USBD_CtlError>:
c0de99e0:	b580      	push	{r7, lr}
c0de99e2:	f991 2000 	ldrsb.w	r2, [r1]
c0de99e6:	f1b2 3fff 	cmp.w	r2, #4294967295	@ 0xffffffff
c0de99ea:	dd03      	ble.n	c0de99f4 <USBD_CtlError+0x14>
c0de99ec:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de99f0:	f7ff bd73 	b.w	c0de94da <USBD_CtlStall>
c0de99f4:	784a      	ldrb	r2, [r1, #1]
c0de99f6:	2a77      	cmp	r2, #119	@ 0x77
c0de99f8:	d00d      	beq.n	c0de9a16 <USBD_CtlError+0x36>
c0de99fa:	2a06      	cmp	r2, #6
c0de99fc:	d1f6      	bne.n	c0de99ec <USBD_CtlError+0xc>
c0de99fe:	884a      	ldrh	r2, [r1, #2]
c0de9a00:	f240 33ee 	movw	r3, #1006	@ 0x3ee
c0de9a04:	429a      	cmp	r2, r3
c0de9a06:	d1f1      	bne.n	c0de99ec <USBD_CtlError+0xc>
c0de9a08:	88ca      	ldrh	r2, [r1, #6]
c0de9a0a:	2a12      	cmp	r2, #18
c0de9a0c:	bf28      	it	cs
c0de9a0e:	2212      	movcs	r2, #18
c0de9a10:	4911      	ldr	r1, [pc, #68]	@ (c0de9a58 <USBD_CtlError+0x78>)
c0de9a12:	4479      	add	r1, pc
c0de9a14:	e01c      	b.n	c0de9a50 <USBD_CtlError+0x70>
c0de9a16:	888a      	ldrh	r2, [r1, #4]
c0de9a18:	2a04      	cmp	r2, #4
c0de9a1a:	d106      	bne.n	c0de9a2a <USBD_CtlError+0x4a>
c0de9a1c:	88ca      	ldrh	r2, [r1, #6]
c0de9a1e:	2a28      	cmp	r2, #40	@ 0x28
c0de9a20:	bf28      	it	cs
c0de9a22:	2228      	movcs	r2, #40	@ 0x28
c0de9a24:	490d      	ldr	r1, [pc, #52]	@ (c0de9a5c <USBD_CtlError+0x7c>)
c0de9a26:	4479      	add	r1, pc
c0de9a28:	e012      	b.n	c0de9a50 <USBD_CtlError+0x70>
c0de9a2a:	888a      	ldrh	r2, [r1, #4]
c0de9a2c:	2a05      	cmp	r2, #5
c0de9a2e:	d106      	bne.n	c0de9a3e <USBD_CtlError+0x5e>
c0de9a30:	88ca      	ldrh	r2, [r1, #6]
c0de9a32:	2a92      	cmp	r2, #146	@ 0x92
c0de9a34:	bf28      	it	cs
c0de9a36:	2292      	movcs	r2, #146	@ 0x92
c0de9a38:	4909      	ldr	r1, [pc, #36]	@ (c0de9a60 <USBD_CtlError+0x80>)
c0de9a3a:	4479      	add	r1, pc
c0de9a3c:	e008      	b.n	c0de9a50 <USBD_CtlError+0x70>
c0de9a3e:	888a      	ldrh	r2, [r1, #4]
c0de9a40:	2a07      	cmp	r2, #7
c0de9a42:	d1d3      	bne.n	c0de99ec <USBD_CtlError+0xc>
c0de9a44:	88ca      	ldrh	r2, [r1, #6]
c0de9a46:	2ab2      	cmp	r2, #178	@ 0xb2
c0de9a48:	bf28      	it	cs
c0de9a4a:	22b2      	movcs	r2, #178	@ 0xb2
c0de9a4c:	4905      	ldr	r1, [pc, #20]	@ (c0de9a64 <USBD_CtlError+0x84>)
c0de9a4e:	4479      	add	r1, pc
c0de9a50:	f7ff fd5e 	bl	c0de9510 <USBD_CtlSendData>
c0de9a54:	bd80      	pop	{r7, pc}
c0de9a56:	bf00      	nop
c0de9a58:	00002cca 	.word	0x00002cca
c0de9a5c:	00002ec4 	.word	0x00002ec4
c0de9a60:	00002cb4 	.word	0x00002cb4
c0de9a64:	00002d32 	.word	0x00002d32

c0de9a68 <USB_power>:
c0de9a68:	b5b0      	push	{r4, r5, r7, lr}
c0de9a6a:	4d16      	ldr	r5, [pc, #88]	@ (c0de9ac4 <USB_power+0x5c>)
c0de9a6c:	4604      	mov	r4, r0
c0de9a6e:	21d4      	movs	r1, #212	@ 0xd4
c0de9a70:	eb09 0005 	add.w	r0, r9, r5
c0de9a74:	f001 fb4a 	bl	c0deb10c <__aeabi_memclr>
c0de9a78:	4813      	ldr	r0, [pc, #76]	@ (c0de9ac8 <USB_power+0x60>)
c0de9a7a:	2100      	movs	r1, #0
c0de9a7c:	4448      	add	r0, r9
c0de9a7e:	e9c0 1103 	strd	r1, r1, [r0, #12]
c0de9a82:	6141      	str	r1, [r0, #20]
c0de9a84:	b1c4      	cbz	r4, c0de9ab8 <USB_power+0x50>
c0de9a86:	4911      	ldr	r1, [pc, #68]	@ (c0de9acc <USB_power+0x64>)
c0de9a88:	eb09 0405 	add.w	r4, r9, r5
c0de9a8c:	2200      	movs	r2, #0
c0de9a8e:	4620      	mov	r0, r4
c0de9a90:	4479      	add	r1, pc
c0de9a92:	f7ff f964 	bl	c0de8d5e <USBD_Init>
c0de9a96:	4a0e      	ldr	r2, [pc, #56]	@ (c0de9ad0 <USB_power+0x68>)
c0de9a98:	2000      	movs	r0, #0
c0de9a9a:	4621      	mov	r1, r4
c0de9a9c:	447a      	add	r2, pc
c0de9a9e:	f7ff f98d 	bl	c0de8dbc <USBD_RegisterClassForInterface>
c0de9aa2:	4a0c      	ldr	r2, [pc, #48]	@ (c0de9ad4 <USB_power+0x6c>)
c0de9aa4:	2001      	movs	r0, #1
c0de9aa6:	4621      	mov	r1, r4
c0de9aa8:	447a      	add	r2, pc
c0de9aaa:	f7ff f987 	bl	c0de8dbc <USBD_RegisterClassForInterface>
c0de9aae:	4620      	mov	r0, r4
c0de9ab0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9ab4:	f7ff b98d 	b.w	c0de8dd2 <USBD_Start>
c0de9ab8:	eb09 0005 	add.w	r0, r9, r5
c0de9abc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9ac0:	f7ff b963 	b.w	c0de8d8a <USBD_DeInit>
c0de9ac4:	000018dc 	.word	0x000018dc
c0de9ac8:	00001ac0 	.word	0x00001ac0
c0de9acc:	00002c2c 	.word	0x00002c2c
c0de9ad0:	00002d98 	.word	0x00002d98
c0de9ad4:	00002dc4 	.word	0x00002dc4

c0de9ad8 <USBD_GetCfgDesc_impl>:
c0de9ad8:	2140      	movs	r1, #64	@ 0x40
c0de9ada:	8001      	strh	r1, [r0, #0]
c0de9adc:	4801      	ldr	r0, [pc, #4]	@ (c0de9ae4 <USBD_GetCfgDesc_impl+0xc>)
c0de9ade:	4478      	add	r0, pc
c0de9ae0:	4770      	bx	lr
c0de9ae2:	bf00      	nop
c0de9ae4:	00002e36 	.word	0x00002e36

c0de9ae8 <USBD_GetDeviceQualifierDesc_impl>:
c0de9ae8:	210a      	movs	r1, #10
c0de9aea:	8001      	strh	r1, [r0, #0]
c0de9aec:	4801      	ldr	r0, [pc, #4]	@ (c0de9af4 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0de9aee:	4478      	add	r0, pc
c0de9af0:	4770      	bx	lr
c0de9af2:	bf00      	nop
c0de9af4:	00002e66 	.word	0x00002e66

c0de9af8 <ux_process_button_event>:
c0de9af8:	b5b0      	push	{r4, r5, r7, lr}
c0de9afa:	4604      	mov	r4, r0
c0de9afc:	2001      	movs	r0, #1
c0de9afe:	f000 f815 	bl	c0de9b2c <ux_forward_event>
c0de9b02:	4605      	mov	r5, r0
c0de9b04:	f7fb faa0 	bl	c0de5048 <nbgl_objAllowDrawing>
c0de9b08:	b165      	cbz	r5, c0de9b24 <ux_process_button_event+0x2c>
c0de9b0a:	4807      	ldr	r0, [pc, #28]	@ (c0de9b28 <ux_process_button_event+0x30>)
c0de9b0c:	2164      	movs	r1, #100	@ 0x64
c0de9b0e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de9b12:	4341      	muls	r1, r0
c0de9b14:	78e0      	ldrb	r0, [r4, #3]
c0de9b16:	0840      	lsrs	r0, r0, #1
c0de9b18:	f7f9 fbcc 	bl	c0de32b4 <nbgl_buttonsHandler>
c0de9b1c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9b20:	f7fb ba6a 	b.w	c0de4ff8 <nbgl_refresh>
c0de9b24:	bdb0      	pop	{r4, r5, r7, pc}
c0de9b26:	bf00      	nop
c0de9b28:	000019b8 	.word	0x000019b8

c0de9b2c <ux_forward_event>:
c0de9b2c:	b5b0      	push	{r4, r5, r7, lr}
c0de9b2e:	4604      	mov	r4, r0
c0de9b30:	4812      	ldr	r0, [pc, #72]	@ (c0de9b7c <ux_forward_event+0x50>)
c0de9b32:	2101      	movs	r1, #1
c0de9b34:	f809 1000 	strb.w	r1, [r9, r0]
c0de9b38:	eb09 0500 	add.w	r5, r9, r0
c0de9b3c:	2000      	movs	r0, #0
c0de9b3e:	6068      	str	r0, [r5, #4]
c0de9b40:	4628      	mov	r0, r5
c0de9b42:	f001 f8d7 	bl	c0deacf4 <os_ux>
c0de9b46:	2004      	movs	r0, #4
c0de9b48:	f001 f934 	bl	c0deadb4 <os_sched_last_status>
c0de9b4c:	2869      	cmp	r0, #105	@ 0x69
c0de9b4e:	6068      	str	r0, [r5, #4]
c0de9b50:	d108      	bne.n	c0de9b64 <ux_forward_event+0x38>
c0de9b52:	2001      	movs	r0, #1
c0de9b54:	f7fb fa78 	bl	c0de5048 <nbgl_objAllowDrawing>
c0de9b58:	f7fc fa70 	bl	c0de603c <nbgl_screenRedraw>
c0de9b5c:	f7fb fa4c 	bl	c0de4ff8 <nbgl_refresh>
c0de9b60:	2000      	movs	r0, #0
c0de9b62:	bdb0      	pop	{r4, r5, r7, pc}
c0de9b64:	b144      	cbz	r4, c0de9b78 <ux_forward_event+0x4c>
c0de9b66:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de9b6a:	bf18      	it	ne
c0de9b6c:	2101      	movne	r1, #1
c0de9b6e:	2800      	cmp	r0, #0
c0de9b70:	bf18      	it	ne
c0de9b72:	2001      	movne	r0, #1
c0de9b74:	4008      	ands	r0, r1
c0de9b76:	bdb0      	pop	{r4, r5, r7, pc}
c0de9b78:	2001      	movs	r0, #1
c0de9b7a:	bdb0      	pop	{r4, r5, r7, pc}
c0de9b7c:	000018c8 	.word	0x000018c8

c0de9b80 <ux_process_ticker_event>:
c0de9b80:	b510      	push	{r4, lr}
c0de9b82:	480a      	ldr	r0, [pc, #40]	@ (c0de9bac <ux_process_ticker_event+0x2c>)
c0de9b84:	f859 1000 	ldr.w	r1, [r9, r0]
c0de9b88:	3101      	adds	r1, #1
c0de9b8a:	f849 1000 	str.w	r1, [r9, r0]
c0de9b8e:	2001      	movs	r0, #1
c0de9b90:	f7ff ffcc 	bl	c0de9b2c <ux_forward_event>
c0de9b94:	4604      	mov	r4, r0
c0de9b96:	f7fb fa57 	bl	c0de5048 <nbgl_objAllowDrawing>
c0de9b9a:	2064      	movs	r0, #100	@ 0x64
c0de9b9c:	f7fc fc40 	bl	c0de6420 <nbgl_screenHandler>
c0de9ba0:	b11c      	cbz	r4, c0de9baa <ux_process_ticker_event+0x2a>
c0de9ba2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9ba6:	f7fb ba27 	b.w	c0de4ff8 <nbgl_refresh>
c0de9baa:	bd10      	pop	{r4, pc}
c0de9bac:	000019b8 	.word	0x000019b8

c0de9bb0 <ux_process_default_event>:
c0de9bb0:	2000      	movs	r0, #0
c0de9bb2:	f7ff bfbb 	b.w	c0de9b2c <ux_forward_event>

c0de9bb6 <hash_iovec_ex>:
c0de9bb6:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de9bba:	468a      	mov	sl, r1
c0de9bbc:	4611      	mov	r1, r2
c0de9bbe:	461a      	mov	r2, r3
c0de9bc0:	4605      	mov	r5, r0
c0de9bc2:	f000 f84d 	bl	c0de9c60 <cx_hash_init_ex>
c0de9bc6:	4607      	mov	r7, r0
c0de9bc8:	b9a8      	cbnz	r0, c0de9bf6 <hash_iovec_ex+0x40>
c0de9bca:	f10d 0820 	add.w	r8, sp, #32
c0de9bce:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de9bd2:	1d04      	adds	r4, r0, #4
c0de9bd4:	b156      	cbz	r6, c0de9bec <hash_iovec_ex+0x36>
c0de9bd6:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de9bda:	f854 2b08 	ldr.w	r2, [r4], #8
c0de9bde:	4628      	mov	r0, r5
c0de9be0:	f000 f843 	bl	c0de9c6a <cx_hash_update>
c0de9be4:	3e01      	subs	r6, #1
c0de9be6:	2800      	cmp	r0, #0
c0de9be8:	d0f4      	beq.n	c0de9bd4 <hash_iovec_ex+0x1e>
c0de9bea:	e003      	b.n	c0de9bf4 <hash_iovec_ex+0x3e>
c0de9bec:	4628      	mov	r0, r5
c0de9bee:	4641      	mov	r1, r8
c0de9bf0:	f000 f831 	bl	c0de9c56 <cx_hash_final>
c0de9bf4:	4607      	mov	r7, r0
c0de9bf6:	4628      	mov	r0, r5
c0de9bf8:	4651      	mov	r1, sl
c0de9bfa:	f001 fa93 	bl	c0deb124 <explicit_bzero>
c0de9bfe:	4638      	mov	r0, r7
c0de9c00:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de9c04 <cx_keccak_256_hash_iovec>:
c0de9c04:	b580      	push	{r7, lr}
c0de9c06:	b0ee      	sub	sp, #440	@ 0x1b8
c0de9c08:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de9c0c:	a804      	add	r0, sp, #16
c0de9c0e:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de9c12:	2206      	movs	r2, #6
c0de9c14:	2320      	movs	r3, #32
c0de9c16:	f7ff ffce 	bl	c0de9bb6 <hash_iovec_ex>
c0de9c1a:	b06e      	add	sp, #440	@ 0x1b8
c0de9c1c:	bd80      	pop	{r7, pc}

c0de9c1e <cx_blake2b_512_hash_iovec>:
c0de9c1e:	b580      	push	{r7, lr}
c0de9c20:	b0c4      	sub	sp, #272	@ 0x110
c0de9c22:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de9c26:	a804      	add	r0, sp, #16
c0de9c28:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de9c2c:	2209      	movs	r2, #9
c0de9c2e:	2340      	movs	r3, #64	@ 0x40
c0de9c30:	f7ff ffc1 	bl	c0de9bb6 <hash_iovec_ex>
c0de9c34:	b044      	add	sp, #272	@ 0x110
c0de9c36:	bd80      	pop	{r7, pc}

c0de9c38 <cx_ecdsa_sign_no_throw>:
c0de9c38:	b403      	push	{r0, r1}
c0de9c3a:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de9c3e:	f000 b823 	b.w	c0de9c88 <cx_trampoline_helper>

c0de9c42 <cx_ecfp_generate_pair2_no_throw>:
c0de9c42:	b403      	push	{r0, r1}
c0de9c44:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de9c48:	f000 b81e 	b.w	c0de9c88 <cx_trampoline_helper>

c0de9c4c <cx_ecfp_init_private_key_no_throw>:
c0de9c4c:	b403      	push	{r0, r1}
c0de9c4e:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de9c52:	f000 b819 	b.w	c0de9c88 <cx_trampoline_helper>

c0de9c56 <cx_hash_final>:
c0de9c56:	b403      	push	{r0, r1}
c0de9c58:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de9c5c:	f000 b814 	b.w	c0de9c88 <cx_trampoline_helper>

c0de9c60 <cx_hash_init_ex>:
c0de9c60:	b403      	push	{r0, r1}
c0de9c62:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de9c66:	f000 b80f 	b.w	c0de9c88 <cx_trampoline_helper>

c0de9c6a <cx_hash_update>:
c0de9c6a:	b403      	push	{r0, r1}
c0de9c6c:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de9c70:	f000 b80a 	b.w	c0de9c88 <cx_trampoline_helper>

c0de9c74 <cx_rng_no_throw>:
c0de9c74:	b403      	push	{r0, r1}
c0de9c76:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de9c7a:	f000 b805 	b.w	c0de9c88 <cx_trampoline_helper>
	...

c0de9c80 <cx_aes_siv_reset>:
c0de9c80:	b403      	push	{r0, r1}
c0de9c82:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de9c86:	e7ff      	b.n	c0de9c88 <cx_trampoline_helper>

c0de9c88 <cx_trampoline_helper>:
c0de9c88:	4900      	ldr	r1, [pc, #0]	@ (c0de9c8c <cx_trampoline_helper+0x4>)
c0de9c8a:	4708      	bx	r1
c0de9c8c:	00810001 	.word	0x00810001

c0de9c90 <assert_exit>:
c0de9c90:	20ff      	movs	r0, #255	@ 0xff
c0de9c92:	f001 f855 	bl	c0dead40 <os_sched_exit>

c0de9c96 <os_boot>:
c0de9c96:	2000      	movs	r0, #0
c0de9c98:	f001 b882 	b.w	c0deada0 <try_context_set>

c0de9c9c <os_longjmp>:
c0de9c9c:	4604      	mov	r4, r0
c0de9c9e:	f001 f877 	bl	c0dead90 <try_context_get>
c0de9ca2:	4621      	mov	r1, r4
c0de9ca4:	f001 fa7a 	bl	c0deb19c <longjmp>

c0de9ca8 <os_explicit_zero_BSS_segment>:
c0de9ca8:	4803      	ldr	r0, [pc, #12]	@ (c0de9cb8 <os_explicit_zero_BSS_segment+0x10>)
c0de9caa:	4904      	ldr	r1, [pc, #16]	@ (c0de9cbc <os_explicit_zero_BSS_segment+0x14>)
c0de9cac:	4448      	add	r0, r9
c0de9cae:	4449      	add	r1, r9
c0de9cb0:	1a09      	subs	r1, r1, r0
c0de9cb2:	f001 ba37 	b.w	c0deb124 <explicit_bzero>
c0de9cb6:	bf00      	nop
c0de9cb8:	00000000 	.word	0x00000000
c0de9cbc:	00001b30 	.word	0x00001b30

c0de9cc0 <io_seproxyhal_general_status>:
c0de9cc0:	4802      	ldr	r0, [pc, #8]	@ (c0de9ccc <io_seproxyhal_general_status+0xc>)
c0de9cc2:	2105      	movs	r1, #5
c0de9cc4:	4478      	add	r0, pc
c0de9cc6:	f001 b845 	b.w	c0dead54 <io_seph_send>
c0de9cca:	bf00      	nop
c0de9ccc:	00002c9a 	.word	0x00002c9a

c0de9cd0 <io_seproxyhal_handle_usb_event>:
c0de9cd0:	b510      	push	{r4, lr}
c0de9cd2:	481a      	ldr	r0, [pc, #104]	@ (c0de9d3c <io_seproxyhal_handle_usb_event+0x6c>)
c0de9cd4:	4448      	add	r0, r9
c0de9cd6:	78c0      	ldrb	r0, [r0, #3]
c0de9cd8:	2808      	cmp	r0, #8
c0de9cda:	d020      	beq.n	c0de9d1e <io_seproxyhal_handle_usb_event+0x4e>
c0de9cdc:	2802      	cmp	r0, #2
c0de9cde:	d018      	beq.n	c0de9d12 <io_seproxyhal_handle_usb_event+0x42>
c0de9ce0:	2804      	cmp	r0, #4
c0de9ce2:	d022      	beq.n	c0de9d2a <io_seproxyhal_handle_usb_event+0x5a>
c0de9ce4:	2801      	cmp	r0, #1
c0de9ce6:	d113      	bne.n	c0de9d10 <io_seproxyhal_handle_usb_event+0x40>
c0de9ce8:	4815      	ldr	r0, [pc, #84]	@ (c0de9d40 <io_seproxyhal_handle_usb_event+0x70>)
c0de9cea:	2101      	movs	r1, #1
c0de9cec:	eb09 0400 	add.w	r4, r9, r0
c0de9cf0:	4620      	mov	r0, r4
c0de9cf2:	f7ff f99e 	bl	c0de9032 <USBD_LL_SetSpeed>
c0de9cf6:	4620      	mov	r0, r4
c0de9cf8:	f7ff f983 	bl	c0de9002 <USBD_LL_Reset>
c0de9cfc:	4811      	ldr	r0, [pc, #68]	@ (c0de9d44 <io_seproxyhal_handle_usb_event+0x74>)
c0de9cfe:	eb09 0100 	add.w	r1, r9, r0
c0de9d02:	7989      	ldrb	r1, [r1, #6]
c0de9d04:	b9b9      	cbnz	r1, c0de9d36 <io_seproxyhal_handle_usb_event+0x66>
c0de9d06:	4448      	add	r0, r9
c0de9d08:	2100      	movs	r1, #0
c0de9d0a:	e9c0 1103 	strd	r1, r1, [r0, #12]
c0de9d0e:	6141      	str	r1, [r0, #20]
c0de9d10:	bd10      	pop	{r4, pc}
c0de9d12:	480b      	ldr	r0, [pc, #44]	@ (c0de9d40 <io_seproxyhal_handle_usb_event+0x70>)
c0de9d14:	4448      	add	r0, r9
c0de9d16:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9d1a:	f7ff b991 	b.w	c0de9040 <USBD_LL_SOF>
c0de9d1e:	4808      	ldr	r0, [pc, #32]	@ (c0de9d40 <io_seproxyhal_handle_usb_event+0x70>)
c0de9d20:	4448      	add	r0, r9
c0de9d22:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9d26:	f7ff b989 	b.w	c0de903c <USBD_LL_Resume>
c0de9d2a:	4805      	ldr	r0, [pc, #20]	@ (c0de9d40 <io_seproxyhal_handle_usb_event+0x70>)
c0de9d2c:	4448      	add	r0, r9
c0de9d2e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9d32:	f7ff b981 	b.w	c0de9038 <USBD_LL_Suspend>
c0de9d36:	2005      	movs	r0, #5
c0de9d38:	f7ff ffb0 	bl	c0de9c9c <os_longjmp>
c0de9d3c:	00001794 	.word	0x00001794
c0de9d40:	000018dc 	.word	0x000018dc
c0de9d44:	00001ac0 	.word	0x00001ac0

c0de9d48 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0de9d48:	b580      	push	{r7, lr}
c0de9d4a:	4a1a      	ldr	r2, [pc, #104]	@ (c0de9db4 <io_seproxyhal_handle_usb_ep_xfer_event+0x6c>)
c0de9d4c:	eb09 0002 	add.w	r0, r9, r2
c0de9d50:	78c1      	ldrb	r1, [r0, #3]
c0de9d52:	7900      	ldrb	r0, [r0, #4]
c0de9d54:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0de9d58:	2804      	cmp	r0, #4
c0de9d5a:	d01b      	beq.n	c0de9d94 <io_seproxyhal_handle_usb_ep_xfer_event+0x4c>
c0de9d5c:	2802      	cmp	r0, #2
c0de9d5e:	d00a      	beq.n	c0de9d76 <io_seproxyhal_handle_usb_ep_xfer_event+0x2e>
c0de9d60:	2801      	cmp	r0, #1
c0de9d62:	d125      	bne.n	c0de9db0 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de9d64:	4815      	ldr	r0, [pc, #84]	@ (c0de9dbc <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de9d66:	eb09 0102 	add.w	r1, r9, r2
c0de9d6a:	3106      	adds	r1, #6
c0de9d6c:	4448      	add	r0, r9
c0de9d6e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9d72:	f7ff b864 	b.w	c0de8e3e <USBD_LL_SetupStage>
c0de9d76:	2903      	cmp	r1, #3
c0de9d78:	d81a      	bhi.n	c0de9db0 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de9d7a:	480f      	ldr	r0, [pc, #60]	@ (c0de9db8 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de9d7c:	2300      	movs	r3, #0
c0de9d7e:	444a      	add	r2, r9
c0de9d80:	3206      	adds	r2, #6
c0de9d82:	4448      	add	r0, r9
c0de9d84:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de9d88:	8203      	strh	r3, [r0, #16]
c0de9d8a:	480c      	ldr	r0, [pc, #48]	@ (c0de9dbc <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de9d8c:	4448      	add	r0, r9
c0de9d8e:	f7ff f8ce 	bl	c0de8f2e <USBD_LL_DataInStage>
c0de9d92:	bd80      	pop	{r7, pc}
c0de9d94:	2903      	cmp	r1, #3
c0de9d96:	d80b      	bhi.n	c0de9db0 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de9d98:	4807      	ldr	r0, [pc, #28]	@ (c0de9db8 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de9d9a:	444a      	add	r2, r9
c0de9d9c:	7953      	ldrb	r3, [r2, #5]
c0de9d9e:	3206      	adds	r2, #6
c0de9da0:	4448      	add	r0, r9
c0de9da2:	4408      	add	r0, r1
c0de9da4:	7303      	strb	r3, [r0, #12]
c0de9da6:	4805      	ldr	r0, [pc, #20]	@ (c0de9dbc <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de9da8:	2300      	movs	r3, #0
c0de9daa:	4448      	add	r0, r9
c0de9dac:	f7ff f872 	bl	c0de8e94 <USBD_LL_DataOutStage>
c0de9db0:	bd80      	pop	{r7, pc}
c0de9db2:	bf00      	nop
c0de9db4:	00001794 	.word	0x00001794
c0de9db8:	00001ac0 	.word	0x00001ac0
c0de9dbc:	000018dc 	.word	0x000018dc

c0de9dc0 <io_usb_send_apdu_data_ep0x83>:
c0de9dc0:	460a      	mov	r2, r1
c0de9dc2:	4601      	mov	r1, r0
c0de9dc4:	2083      	movs	r0, #131	@ 0x83
c0de9dc6:	2314      	movs	r3, #20
c0de9dc8:	f000 ba62 	b.w	c0dea290 <io_usb_send_ep>

c0de9dcc <io_seproxyhal_handle_capdu_event>:
c0de9dcc:	480d      	ldr	r0, [pc, #52]	@ (c0de9e04 <io_seproxyhal_handle_capdu_event+0x38>)
c0de9dce:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de9dd2:	b101      	cbz	r1, c0de9dd6 <io_seproxyhal_handle_capdu_event+0xa>
c0de9dd4:	4770      	bx	lr
c0de9dd6:	210a      	movs	r1, #10
c0de9dd8:	f809 1000 	strb.w	r1, [r9, r0]
c0de9ddc:	4448      	add	r0, r9
c0de9dde:	2106      	movs	r1, #6
c0de9de0:	7181      	strb	r1, [r0, #6]
c0de9de2:	4909      	ldr	r1, [pc, #36]	@ (c0de9e08 <io_seproxyhal_handle_capdu_event+0x3c>)
c0de9de4:	4449      	add	r1, r9
c0de9de6:	784a      	ldrb	r2, [r1, #1]
c0de9de8:	788b      	ldrb	r3, [r1, #2]
c0de9dea:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de9dee:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de9df2:	bf88      	it	hi
c0de9df4:	f240 1201 	movwhi	r2, #257	@ 0x101
c0de9df8:	8042      	strh	r2, [r0, #2]
c0de9dfa:	4804      	ldr	r0, [pc, #16]	@ (c0de9e0c <io_seproxyhal_handle_capdu_event+0x40>)
c0de9dfc:	3103      	adds	r1, #3
c0de9dfe:	4448      	add	r0, r9
c0de9e00:	f001 b987 	b.w	c0deb112 <__aeabi_memcpy>
c0de9e04:	00001ac0 	.word	0x00001ac0
c0de9e08:	00001794 	.word	0x00001794
c0de9e0c:	000019bc 	.word	0x000019bc

c0de9e10 <io_seproxyhal_handle_event>:
c0de9e10:	b510      	push	{r4, lr}
c0de9e12:	492b      	ldr	r1, [pc, #172]	@ (c0de9ec0 <io_seproxyhal_handle_event+0xb0>)
c0de9e14:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de9e18:	280e      	cmp	r0, #14
c0de9e1a:	d011      	beq.n	c0de9e40 <io_seproxyhal_handle_event+0x30>
c0de9e1c:	281a      	cmp	r0, #26
c0de9e1e:	d029      	beq.n	c0de9e74 <io_seproxyhal_handle_event+0x64>
c0de9e20:	4449      	add	r1, r9
c0de9e22:	2810      	cmp	r0, #16
c0de9e24:	784a      	ldrb	r2, [r1, #1]
c0de9e26:	7889      	ldrb	r1, [r1, #2]
c0de9e28:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de9e2c:	d035      	beq.n	c0de9e9a <io_seproxyhal_handle_event+0x8a>
c0de9e2e:	2816      	cmp	r0, #22
c0de9e30:	d037      	beq.n	c0de9ea2 <io_seproxyhal_handle_event+0x92>
c0de9e32:	280f      	cmp	r0, #15
c0de9e34:	d12c      	bne.n	c0de9e90 <io_seproxyhal_handle_event+0x80>
c0de9e36:	2901      	cmp	r1, #1
c0de9e38:	d131      	bne.n	c0de9e9e <io_seproxyhal_handle_event+0x8e>
c0de9e3a:	f7ff ff49 	bl	c0de9cd0 <io_seproxyhal_handle_usb_event>
c0de9e3e:	e035      	b.n	c0de9eac <io_seproxyhal_handle_event+0x9c>
c0de9e40:	4820      	ldr	r0, [pc, #128]	@ (c0de9ec4 <io_seproxyhal_handle_event+0xb4>)
c0de9e42:	eb09 0100 	add.w	r1, r9, r0
c0de9e46:	688a      	ldr	r2, [r1, #8]
c0de9e48:	3264      	adds	r2, #100	@ 0x64
c0de9e4a:	608a      	str	r2, [r1, #8]
c0de9e4c:	210b      	movs	r1, #11
c0de9e4e:	2907      	cmp	r1, #7
c0de9e50:	d01e      	beq.n	c0de9e90 <io_seproxyhal_handle_event+0x80>
c0de9e52:	eb09 0200 	add.w	r2, r9, r0
c0de9e56:	f832 2011 	ldrh.w	r2, [r2, r1, lsl #1]
c0de9e5a:	b14a      	cbz	r2, c0de9e70 <io_seproxyhal_handle_event+0x60>
c0de9e5c:	f1b2 0364 	subs.w	r3, r2, #100	@ 0x64
c0de9e60:	eb09 0400 	add.w	r4, r9, r0
c0de9e64:	bf38      	it	cc
c0de9e66:	2300      	movcc	r3, #0
c0de9e68:	2a65      	cmp	r2, #101	@ 0x65
c0de9e6a:	f824 3011 	strh.w	r3, [r4, r1, lsl #1]
c0de9e6e:	d320      	bcc.n	c0de9eb2 <io_seproxyhal_handle_event+0xa2>
c0de9e70:	3901      	subs	r1, #1
c0de9e72:	e7ec      	b.n	c0de9e4e <io_seproxyhal_handle_event+0x3e>
c0de9e74:	eb09 0001 	add.w	r0, r9, r1
c0de9e78:	78c0      	ldrb	r0, [r0, #3]
c0de9e7a:	2803      	cmp	r0, #3
c0de9e7c:	d108      	bne.n	c0de9e90 <io_seproxyhal_handle_event+0x80>
c0de9e7e:	2001      	movs	r0, #1
c0de9e80:	2401      	movs	r4, #1
c0de9e82:	f7fb f8e1 	bl	c0de5048 <nbgl_objAllowDrawing>
c0de9e86:	f7fc f8d9 	bl	c0de603c <nbgl_screenRedraw>
c0de9e8a:	f7fb f8b5 	bl	c0de4ff8 <nbgl_refresh>
c0de9e8e:	e00e      	b.n	c0de9eae <io_seproxyhal_handle_event+0x9e>
c0de9e90:	2002      	movs	r0, #2
c0de9e92:	f7fe fc95 	bl	c0de87c0 <io_event>
c0de9e96:	4604      	mov	r4, r0
c0de9e98:	e009      	b.n	c0de9eae <io_seproxyhal_handle_event+0x9e>
c0de9e9a:	2903      	cmp	r1, #3
c0de9e9c:	d204      	bcs.n	c0de9ea8 <io_seproxyhal_handle_event+0x98>
c0de9e9e:	2400      	movs	r4, #0
c0de9ea0:	e005      	b.n	c0de9eae <io_seproxyhal_handle_event+0x9e>
c0de9ea2:	f7ff ff93 	bl	c0de9dcc <io_seproxyhal_handle_capdu_event>
c0de9ea6:	e001      	b.n	c0de9eac <io_seproxyhal_handle_event+0x9c>
c0de9ea8:	f7ff ff4e 	bl	c0de9d48 <io_seproxyhal_handle_usb_ep_xfer_event>
c0de9eac:	2401      	movs	r4, #1
c0de9eae:	4620      	mov	r0, r4
c0de9eb0:	bd10      	pop	{r4, pc}
c0de9eb2:	2100      	movs	r1, #0
c0de9eb4:	f809 1000 	strb.w	r1, [r9, r0]
c0de9eb8:	2005      	movs	r0, #5
c0de9eba:	f7ff feef 	bl	c0de9c9c <os_longjmp>
c0de9ebe:	bf00      	nop
c0de9ec0:	00001794 	.word	0x00001794
c0de9ec4:	00001ac0 	.word	0x00001ac0

c0de9ec8 <io_seproxyhal_init>:
c0de9ec8:	b5b0      	push	{r4, r5, r7, lr}
c0de9eca:	4c10      	ldr	r4, [pc, #64]	@ (c0de9f0c <io_seproxyhal_init+0x44>)
c0de9ecc:	2500      	movs	r5, #0
c0de9ece:	2008      	movs	r0, #8
c0de9ed0:	f849 5004 	str.w	r5, [r9, r4]
c0de9ed4:	f809 0004 	strb.w	r0, [r9, r4]
c0de9ed8:	eb09 0004 	add.w	r0, r9, r4
c0de9edc:	e9c0 5501 	strd	r5, r5, [r0, #4]
c0de9ee0:	2d01      	cmp	r5, #1
c0de9ee2:	d809      	bhi.n	c0de9ef8 <io_seproxyhal_init+0x30>
c0de9ee4:	eb09 0004 	add.w	r0, r9, r4
c0de9ee8:	f000 ff04 	bl	c0deacf4 <os_ux>
c0de9eec:	2004      	movs	r0, #4
c0de9eee:	f000 ff61 	bl	c0deadb4 <os_sched_last_status>
c0de9ef2:	3501      	adds	r5, #1
c0de9ef4:	28aa      	cmp	r0, #170	@ 0xaa
c0de9ef6:	d1f3      	bne.n	c0de9ee0 <io_seproxyhal_init+0x18>
c0de9ef8:	4805      	ldr	r0, [pc, #20]	@ (c0de9f10 <io_seproxyhal_init+0x48>)
c0de9efa:	211c      	movs	r1, #28
c0de9efc:	4448      	add	r0, r9
c0de9efe:	f001 f905 	bl	c0deb10c <__aeabi_memclr>
c0de9f02:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9f06:	f000 bac3 	b.w	c0dea490 <io_usb_hid_init>
c0de9f0a:	bf00      	nop
c0de9f0c:	000018c8 	.word	0x000018c8
c0de9f10:	00001ac0 	.word	0x00001ac0

c0de9f14 <os_io_seproxyhal_get_app_name_and_version>:
c0de9f14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de9f16:	4811      	ldr	r0, [pc, #68]	@ (c0de9f5c <os_io_seproxyhal_get_app_name_and_version+0x48>)
c0de9f18:	2501      	movs	r5, #1
c0de9f1a:	f44f 7281 	mov.w	r2, #258	@ 0x102
c0de9f1e:	eb09 0600 	add.w	r6, r9, r0
c0de9f22:	f809 5000 	strb.w	r5, [r9, r0]
c0de9f26:	2001      	movs	r0, #1
c0de9f28:	1cb1      	adds	r1, r6, #2
c0de9f2a:	f000 fefd 	bl	c0dead28 <os_registry_get_current_app_tag>
c0de9f2e:	1987      	adds	r7, r0, r6
c0de9f30:	4604      	mov	r4, r0
c0de9f32:	7070      	strb	r0, [r6, #1]
c0de9f34:	f240 1001 	movw	r0, #257	@ 0x101
c0de9f38:	1b02      	subs	r2, r0, r4
c0de9f3a:	1cf9      	adds	r1, r7, #3
c0de9f3c:	2002      	movs	r0, #2
c0de9f3e:	f000 fef3 	bl	c0dead28 <os_registry_get_current_app_tag>
c0de9f42:	4404      	add	r4, r0
c0de9f44:	70b8      	strb	r0, [r7, #2]
c0de9f46:	4426      	add	r6, r4
c0de9f48:	70f5      	strb	r5, [r6, #3]
c0de9f4a:	f000 fee5 	bl	c0dead18 <os_flags>
c0de9f4e:	2100      	movs	r1, #0
c0de9f50:	7130      	strb	r0, [r6, #4]
c0de9f52:	1de0      	adds	r0, r4, #7
c0de9f54:	71b1      	strb	r1, [r6, #6]
c0de9f56:	2190      	movs	r1, #144	@ 0x90
c0de9f58:	7171      	strb	r1, [r6, #5]
c0de9f5a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de9f5c:	000019bc 	.word	0x000019bc

c0de9f60 <os_io_seproxyhal_pki_load_certificate>:
c0de9f60:	b5b0      	push	{r4, r5, r7, lr}
c0de9f62:	b09e      	sub	sp, #120	@ 0x78
c0de9f64:	460b      	mov	r3, r1
c0de9f66:	4601      	mov	r1, r0
c0de9f68:	ac03      	add	r4, sp, #12
c0de9f6a:	2000      	movs	r0, #0
c0de9f6c:	e9cd 0400 	strd	r0, r4, [sp]
c0de9f70:	4610      	mov	r0, r2
c0de9f72:	461a      	mov	r2, r3
c0de9f74:	2300      	movs	r3, #0
c0de9f76:	f000 fe9b 	bl	c0deacb0 <os_pki_load_certificate>
c0de9f7a:	4605      	mov	r5, r0
c0de9f7c:	4620      	mov	r0, r4
c0de9f7e:	216c      	movs	r1, #108	@ 0x6c
c0de9f80:	f001 f8d0 	bl	c0deb124 <explicit_bzero>
c0de9f84:	2d00      	cmp	r5, #0
c0de9f86:	4906      	ldr	r1, [pc, #24]	@ (c0de9fa0 <os_io_seproxyhal_pki_load_certificate+0x40>)
c0de9f88:	bf08      	it	eq
c0de9f8a:	f44f 4510 	moveq.w	r5, #36864	@ 0x9000
c0de9f8e:	0a28      	lsrs	r0, r5, #8
c0de9f90:	f809 0001 	strb.w	r0, [r9, r1]
c0de9f94:	eb09 0001 	add.w	r0, r9, r1
c0de9f98:	7045      	strb	r5, [r0, #1]
c0de9f9a:	2002      	movs	r0, #2
c0de9f9c:	b01e      	add	sp, #120	@ 0x78
c0de9f9e:	bdb0      	pop	{r4, r5, r7, pc}
c0de9fa0:	000019bc 	.word	0x000019bc

c0de9fa4 <io_exchange>:
c0de9fa4:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de9fa8:	4680      	mov	r8, r0
c0de9faa:	489b      	ldr	r0, [pc, #620]	@ (c0dea218 <io_exchange+0x274>)
c0de9fac:	4c97      	ldr	r4, [pc, #604]	@ (c0dea20c <io_exchange+0x268>)
c0de9fae:	f8df b260 	ldr.w	fp, [pc, #608]	@ c0dea210 <io_exchange+0x26c>
c0de9fb2:	4d95      	ldr	r5, [pc, #596]	@ (c0dea208 <io_exchange+0x264>)
c0de9fb4:	460f      	mov	r7, r1
c0de9fb6:	f04f 0a00 	mov.w	sl, #0
c0de9fba:	4478      	add	r0, pc
c0de9fbc:	9001      	str	r0, [sp, #4]
c0de9fbe:	fa5f f688 	uxtb.w	r6, r8
c0de9fc2:	ea5f 7088 	movs.w	r0, r8, lsl #30
c0de9fc6:	f040 8106 	bne.w	c0dea1d6 <io_exchange+0x232>
c0de9fca:	f006 0110 	and.w	r1, r6, #16
c0de9fce:	0438      	lsls	r0, r7, #16
c0de9fd0:	d07b      	beq.n	c0dea0ca <io_exchange+0x126>
c0de9fd2:	2900      	cmp	r1, #0
c0de9fd4:	d179      	bne.n	c0dea0ca <io_exchange+0x126>
c0de9fd6:	9102      	str	r1, [sp, #8]
c0de9fd8:	f000 fec6 	bl	c0dead68 <io_seph_is_status_sent>
c0de9fdc:	b138      	cbz	r0, c0de9fee <io_exchange+0x4a>
c0de9fde:	eb09 0005 	add.w	r0, r9, r5
c0de9fe2:	f000 f941 	bl	c0dea268 <OUTLINED_FUNCTION_0>
c0de9fe6:	2001      	movs	r0, #1
c0de9fe8:	f000 f91a 	bl	c0dea220 <os_io_seph_recv_and_process>
c0de9fec:	e7f4      	b.n	c0de9fd8 <io_exchange+0x34>
c0de9fee:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de9ff2:	eb09 0104 	add.w	r1, r9, r4
c0de9ff6:	f8cd 800c 	str.w	r8, [sp, #12]
c0de9ffa:	f8d1 8008 	ldr.w	r8, [r1, #8]
c0de9ffe:	2807      	cmp	r0, #7
c0dea000:	d00c      	beq.n	c0dea01c <io_exchange+0x78>
c0dea002:	280a      	cmp	r0, #10
c0dea004:	d00f      	beq.n	c0dea026 <io_exchange+0x82>
c0dea006:	280b      	cmp	r0, #11
c0dea008:	d02a      	beq.n	c0dea060 <io_exchange+0xbc>
c0dea00a:	2800      	cmp	r0, #0
c0dea00c:	f000 80f5 	beq.w	c0dea1fa <io_exchange+0x256>
c0dea010:	b2b9      	uxth	r1, r7
c0dea012:	4630      	mov	r0, r6
c0dea014:	f7fe fc04 	bl	c0de8820 <io_exchange_al>
c0dea018:	b348      	cbz	r0, c0dea06e <io_exchange+0xca>
c0dea01a:	e0ee      	b.n	c0dea1fa <io_exchange+0x256>
c0dea01c:	9801      	ldr	r0, [sp, #4]
c0dea01e:	eb09 020b 	add.w	r2, r9, fp
c0dea022:	b2b9      	uxth	r1, r7
c0dea024:	e021      	b.n	c0dea06a <io_exchange+0xc6>
c0dea026:	46da      	mov	sl, fp
c0dea028:	fa1f fb87 	uxth.w	fp, r7
c0dea02c:	f5bb 7f82 	cmp.w	fp, #260	@ 0x104
c0dea030:	f200 80e6 	bhi.w	c0dea200 <io_exchange+0x25c>
c0dea034:	2053      	movs	r0, #83	@ 0x53
c0dea036:	0a39      	lsrs	r1, r7, #8
c0dea038:	f809 0005 	strb.w	r0, [r9, r5]
c0dea03c:	eb09 0005 	add.w	r0, r9, r5
c0dea040:	7041      	strb	r1, [r0, #1]
c0dea042:	2103      	movs	r1, #3
c0dea044:	7087      	strb	r7, [r0, #2]
c0dea046:	f000 fe85 	bl	c0dead54 <io_seph_send>
c0dea04a:	4659      	mov	r1, fp
c0dea04c:	eb09 000a 	add.w	r0, r9, sl
c0dea050:	46d3      	mov	fp, sl
c0dea052:	f000 fe7f 	bl	c0dead54 <io_seph_send>
c0dea056:	f04f 0a00 	mov.w	sl, #0
c0dea05a:	f809 a004 	strb.w	sl, [r9, r4]
c0dea05e:	e006      	b.n	c0dea06e <io_exchange+0xca>
c0dea060:	486e      	ldr	r0, [pc, #440]	@ (c0dea21c <io_exchange+0x278>)
c0dea062:	eb09 020b 	add.w	r2, r9, fp
c0dea066:	b2b9      	uxth	r1, r7
c0dea068:	4478      	add	r0, pc
c0dea06a:	f000 fa99 	bl	c0dea5a0 <io_usb_hid_send>
c0dea06e:	f508 67fa 	add.w	r7, r8, #2000	@ 0x7d0
c0dea072:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0dea076:	f819 0004 	ldrb.w	r0, [r9, r4]
c0dea07a:	b190      	cbz	r0, c0dea0a2 <io_exchange+0xfe>
c0dea07c:	f7ff fe20 	bl	c0de9cc0 <io_seproxyhal_general_status>
c0dea080:	eb09 0005 	add.w	r0, r9, r5
c0dea084:	f000 f8f0 	bl	c0dea268 <OUTLINED_FUNCTION_0>
c0dea088:	eb09 0004 	add.w	r0, r9, r4
c0dea08c:	6880      	ldr	r0, [r0, #8]
c0dea08e:	42b8      	cmp	r0, r7
c0dea090:	f080 80ad 	bcs.w	c0dea1ee <io_exchange+0x24a>
c0dea094:	f7ff febc 	bl	c0de9e10 <io_seproxyhal_handle_event>
c0dea098:	f000 fe66 	bl	c0dead68 <io_seph_is_status_sent>
c0dea09c:	2800      	cmp	r0, #0
c0dea09e:	d1ef      	bne.n	c0dea080 <io_exchange+0xdc>
c0dea0a0:	e7e9      	b.n	c0dea076 <io_exchange+0xd2>
c0dea0a2:	2000      	movs	r0, #0
c0dea0a4:	eb09 0104 	add.w	r1, r9, r4
c0dea0a8:	7188      	strb	r0, [r1, #6]
c0dea0aa:	8048      	strh	r0, [r1, #2]
c0dea0ac:	ea5f 6188 	movs.w	r1, r8, lsl #26
c0dea0b0:	f809 0004 	strb.w	r0, [r9, r4]
c0dea0b4:	f100 808b 	bmi.w	c0dea1ce <io_exchange+0x22a>
c0dea0b8:	f7ff fe02 	bl	c0de9cc0 <io_seproxyhal_general_status>
c0dea0bc:	fa4f f088 	sxtb.w	r0, r8
c0dea0c0:	9902      	ldr	r1, [sp, #8]
c0dea0c2:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0dea0c6:	f340 8095 	ble.w	c0dea1f4 <io_exchange+0x250>
c0dea0ca:	0770      	lsls	r0, r6, #29
c0dea0cc:	d40e      	bmi.n	c0dea0ec <io_exchange+0x148>
c0dea0ce:	b941      	cbnz	r1, c0dea0e2 <io_exchange+0x13e>
c0dea0d0:	0670      	lsls	r0, r6, #25
c0dea0d2:	f100 8087 	bmi.w	c0dea1e4 <io_exchange+0x240>
c0dea0d6:	eb09 0004 	add.w	r0, r9, r4
c0dea0da:	f809 a004 	strb.w	sl, [r9, r4]
c0dea0de:	f880 a006 	strb.w	sl, [r0, #6]
c0dea0e2:	2000      	movs	r0, #0
c0dea0e4:	eb09 0104 	add.w	r1, r9, r4
c0dea0e8:	8048      	strh	r0, [r1, #2]
c0dea0ea:	e002      	b.n	c0dea0f2 <io_exchange+0x14e>
c0dea0ec:	eb09 0004 	add.w	r0, r9, r4
c0dea0f0:	8840      	ldrh	r0, [r0, #2]
c0dea0f2:	f819 1004 	ldrb.w	r1, [r9, r4]
c0dea0f6:	b101      	cbz	r1, c0dea0fa <io_exchange+0x156>
c0dea0f8:	bb00      	cbnz	r0, c0dea13c <io_exchange+0x198>
c0dea0fa:	f7ff fde1 	bl	c0de9cc0 <io_seproxyhal_general_status>
c0dea0fe:	eb09 0005 	add.w	r0, r9, r5
c0dea102:	f000 f8b1 	bl	c0dea268 <OUTLINED_FUNCTION_0>
c0dea106:	2803      	cmp	r0, #3
c0dea108:	d310      	bcc.n	c0dea12c <io_exchange+0x188>
c0dea10a:	eb09 0105 	add.w	r1, r9, r5
c0dea10e:	784a      	ldrb	r2, [r1, #1]
c0dea110:	7889      	ldrb	r1, [r1, #2]
c0dea112:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0dea116:	3103      	adds	r1, #3
c0dea118:	4281      	cmp	r1, r0
c0dea11a:	d107      	bne.n	c0dea12c <io_exchange+0x188>
c0dea11c:	f7ff fe78 	bl	c0de9e10 <io_seproxyhal_handle_event>
c0dea120:	eb09 0004 	add.w	r0, r9, r4
c0dea124:	f819 1004 	ldrb.w	r1, [r9, r4]
c0dea128:	8840      	ldrh	r0, [r0, #2]
c0dea12a:	e7e4      	b.n	c0dea0f6 <io_exchange+0x152>
c0dea12c:	2000      	movs	r0, #0
c0dea12e:	eb09 0104 	add.w	r1, r9, r4
c0dea132:	8048      	strh	r0, [r1, #2]
c0dea134:	f809 0004 	strb.w	r0, [r9, r4]
c0dea138:	2100      	movs	r1, #0
c0dea13a:	e7dc      	b.n	c0dea0f6 <io_exchange+0x152>
c0dea13c:	f000 fdc8 	bl	c0deacd0 <os_perso_is_pin_set>
c0dea140:	28aa      	cmp	r0, #170	@ 0xaa
c0dea142:	d103      	bne.n	c0dea14c <io_exchange+0x1a8>
c0dea144:	f000 fdcd 	bl	c0deace2 <os_global_pin_is_validated>
c0dea148:	28aa      	cmp	r0, #170	@ 0xaa
c0dea14a:	d118      	bne.n	c0dea17e <io_exchange+0x1da>
c0dea14c:	f819 000b 	ldrb.w	r0, [r9, fp]
c0dea150:	28b0      	cmp	r0, #176	@ 0xb0
c0dea152:	d139      	bne.n	c0dea1c8 <io_exchange+0x224>
c0dea154:	eb09 000b 	add.w	r0, r9, fp
c0dea158:	7840      	ldrb	r0, [r0, #1]
c0dea15a:	28a7      	cmp	r0, #167	@ 0xa7
c0dea15c:	d017      	beq.n	c0dea18e <io_exchange+0x1ea>
c0dea15e:	2806      	cmp	r0, #6
c0dea160:	d027      	beq.n	c0dea1b2 <io_exchange+0x20e>
c0dea162:	2801      	cmp	r0, #1
c0dea164:	d130      	bne.n	c0dea1c8 <io_exchange+0x224>
c0dea166:	eb09 000b 	add.w	r0, r9, fp
c0dea16a:	7881      	ldrb	r1, [r0, #2]
c0dea16c:	78c0      	ldrb	r0, [r0, #3]
c0dea16e:	4308      	orrs	r0, r1
c0dea170:	d12a      	bne.n	c0dea1c8 <io_exchange+0x224>
c0dea172:	f008 0803 	and.w	r8, r8, #3
c0dea176:	f7ff fecd 	bl	c0de9f14 <os_io_seproxyhal_get_app_name_and_version>
c0dea17a:	4607      	mov	r7, r0
c0dea17c:	e71f      	b.n	c0de9fbe <io_exchange+0x1a>
c0dea17e:	2055      	movs	r0, #85	@ 0x55
c0dea180:	2115      	movs	r1, #21
c0dea182:	f809 000b 	strb.w	r0, [r9, fp]
c0dea186:	eb09 000b 	add.w	r0, r9, fp
c0dea18a:	7041      	strb	r1, [r0, #1]
c0dea18c:	e018      	b.n	c0dea1c0 <io_exchange+0x21c>
c0dea18e:	eb09 000b 	add.w	r0, r9, fp
c0dea192:	7881      	ldrb	r1, [r0, #2]
c0dea194:	78c0      	ldrb	r0, [r0, #3]
c0dea196:	4308      	orrs	r0, r1
c0dea198:	d116      	bne.n	c0dea1c8 <io_exchange+0x224>
c0dea19a:	2090      	movs	r0, #144	@ 0x90
c0dea19c:	2702      	movs	r7, #2
c0dea19e:	f809 000b 	strb.w	r0, [r9, fp]
c0dea1a2:	eb09 000b 	add.w	r0, r9, fp
c0dea1a6:	f880 a001 	strb.w	sl, [r0, #1]
c0dea1aa:	481a      	ldr	r0, [pc, #104]	@ (c0dea214 <io_exchange+0x270>)
c0dea1ac:	f360 089f 	bfi	r8, r0, #2, #30
c0dea1b0:	e705      	b.n	c0de9fbe <io_exchange+0x1a>
c0dea1b2:	eb09 000b 	add.w	r0, r9, fp
c0dea1b6:	7882      	ldrb	r2, [r0, #2]
c0dea1b8:	7901      	ldrb	r1, [r0, #4]
c0dea1ba:	3005      	adds	r0, #5
c0dea1bc:	f7ff fed0 	bl	c0de9f60 <os_io_seproxyhal_pki_load_certificate>
c0dea1c0:	f008 0803 	and.w	r8, r8, #3
c0dea1c4:	2702      	movs	r7, #2
c0dea1c6:	e6fa      	b.n	c0de9fbe <io_exchange+0x1a>
c0dea1c8:	eb09 0004 	add.w	r0, r9, r4
c0dea1cc:	8840      	ldrh	r0, [r0, #2]
c0dea1ce:	b280      	uxth	r0, r0
c0dea1d0:	b004      	add	sp, #16
c0dea1d2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea1d6:	b2b9      	uxth	r1, r7
c0dea1d8:	4630      	mov	r0, r6
c0dea1da:	b004      	add	sp, #16
c0dea1dc:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea1e0:	f7fe bb1e 	b.w	c0de8820 <io_exchange_al>
c0dea1e4:	eb09 0004 	add.w	r0, r9, r4
c0dea1e8:	8840      	ldrh	r0, [r0, #2]
c0dea1ea:	3805      	subs	r0, #5
c0dea1ec:	e7ef      	b.n	c0dea1ce <io_exchange+0x22a>
c0dea1ee:	2005      	movs	r0, #5
c0dea1f0:	f7ff fd54 	bl	c0de9c9c <os_longjmp>
c0dea1f4:	2005      	movs	r0, #5
c0dea1f6:	f000 fda3 	bl	c0dead40 <os_sched_exit>
c0dea1fa:	2004      	movs	r0, #4
c0dea1fc:	f7ff fd4e 	bl	c0de9c9c <os_longjmp>
c0dea200:	2002      	movs	r0, #2
c0dea202:	f7ff fd4b 	bl	c0de9c9c <os_longjmp>
c0dea206:	bf00      	nop
c0dea208:	00001794 	.word	0x00001794
c0dea20c:	00001ac0 	.word	0x00001ac0
c0dea210:	000019bc 	.word	0x000019bc
c0dea214:	3fffffe0 	.word	0x3fffffe0
c0dea218:	00000333 	.word	0x00000333
c0dea21c:	fffffd55 	.word	0xfffffd55

c0dea220 <os_io_seph_recv_and_process>:
c0dea220:	b5b0      	push	{r4, r5, r7, lr}
c0dea222:	4604      	mov	r4, r0
c0dea224:	f7ff fd4c 	bl	c0de9cc0 <io_seproxyhal_general_status>
c0dea228:	4d0d      	ldr	r5, [pc, #52]	@ (c0dea260 <os_io_seph_recv_and_process+0x40>)
c0dea22a:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0dea22e:	2200      	movs	r2, #0
c0dea230:	eb09 0005 	add.w	r0, r9, r5
c0dea234:	f000 fda0 	bl	c0dead78 <io_seph_recv>
c0dea238:	f819 0005 	ldrb.w	r0, [r9, r5]
c0dea23c:	2815      	cmp	r0, #21
c0dea23e:	d808      	bhi.n	c0dea252 <os_io_seph_recv_and_process+0x32>
c0dea240:	2101      	movs	r1, #1
c0dea242:	fa01 f000 	lsl.w	r0, r1, r0
c0dea246:	4907      	ldr	r1, [pc, #28]	@ (c0dea264 <os_io_seph_recv_and_process+0x44>)
c0dea248:	4208      	tst	r0, r1
c0dea24a:	d002      	beq.n	c0dea252 <os_io_seph_recv_and_process+0x32>
c0dea24c:	b10c      	cbz	r4, c0dea252 <os_io_seph_recv_and_process+0x32>
c0dea24e:	2000      	movs	r0, #0
c0dea250:	bdb0      	pop	{r4, r5, r7, pc}
c0dea252:	f7ff fddd 	bl	c0de9e10 <io_seproxyhal_handle_event>
c0dea256:	2800      	cmp	r0, #0
c0dea258:	bf18      	it	ne
c0dea25a:	2001      	movne	r0, #1
c0dea25c:	bdb0      	pop	{r4, r5, r7, pc}
c0dea25e:	bf00      	nop
c0dea260:	00001794 	.word	0x00001794
c0dea264:	00207020 	.word	0x00207020

c0dea268 <OUTLINED_FUNCTION_0>:
c0dea268:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0dea26c:	2200      	movs	r2, #0
c0dea26e:	f000 bd83 	b.w	c0dead78 <io_seph_recv>
	...

c0dea274 <io_seproxyhal_get_ep_rx_size>:
c0dea274:	f000 007f 	and.w	r0, r0, #127	@ 0x7f
c0dea278:	2803      	cmp	r0, #3
c0dea27a:	bf84      	itt	hi
c0dea27c:	2000      	movhi	r0, #0
c0dea27e:	4770      	bxhi	lr
c0dea280:	4902      	ldr	r1, [pc, #8]	@ (c0dea28c <io_seproxyhal_get_ep_rx_size+0x18>)
c0dea282:	4449      	add	r1, r9
c0dea284:	4408      	add	r0, r1
c0dea286:	7b00      	ldrb	r0, [r0, #12]
c0dea288:	4770      	bx	lr
c0dea28a:	bf00      	nop
c0dea28c:	00001ac0 	.word	0x00001ac0

c0dea290 <io_usb_send_ep>:
c0dea290:	2aff      	cmp	r2, #255	@ 0xff
c0dea292:	d829      	bhi.n	c0dea2e8 <io_usb_send_ep+0x58>
c0dea294:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0dea296:	4604      	mov	r4, r0
c0dea298:	2020      	movs	r0, #32
c0dea29a:	460e      	mov	r6, r1
c0dea29c:	2106      	movs	r1, #6
c0dea29e:	4615      	mov	r5, r2
c0dea2a0:	f88d 2007 	strb.w	r2, [sp, #7]
c0dea2a4:	f88d 0006 	strb.w	r0, [sp, #6]
c0dea2a8:	2050      	movs	r0, #80	@ 0x50
c0dea2aa:	f88d 0002 	strb.w	r0, [sp, #2]
c0dea2ae:	f044 0080 	orr.w	r0, r4, #128	@ 0x80
c0dea2b2:	f88d 0005 	strb.w	r0, [sp, #5]
c0dea2b6:	1cd0      	adds	r0, r2, #3
c0dea2b8:	f88d 0004 	strb.w	r0, [sp, #4]
c0dea2bc:	0a00      	lsrs	r0, r0, #8
c0dea2be:	f88d 0003 	strb.w	r0, [sp, #3]
c0dea2c2:	f10d 0002 	add.w	r0, sp, #2
c0dea2c6:	f000 fd45 	bl	c0dead54 <io_seph_send>
c0dea2ca:	4630      	mov	r0, r6
c0dea2cc:	4629      	mov	r1, r5
c0dea2ce:	f000 fd41 	bl	c0dead54 <io_seph_send>
c0dea2d2:	4806      	ldr	r0, [pc, #24]	@ (c0dea2ec <io_usb_send_ep+0x5c>)
c0dea2d4:	f004 017f 	and.w	r1, r4, #127	@ 0x7f
c0dea2d8:	4448      	add	r0, r9
c0dea2da:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0dea2de:	f44f 61fa 	mov.w	r1, #2000	@ 0x7d0
c0dea2e2:	8201      	strh	r1, [r0, #16]
c0dea2e4:	e8bd 407c 	ldmia.w	sp!, {r2, r3, r4, r5, r6, lr}
c0dea2e8:	4770      	bx	lr
c0dea2ea:	bf00      	nop
c0dea2ec:	00001ac0 	.word	0x00001ac0

c0dea2f0 <io_usb_send_apdu_data>:
c0dea2f0:	460a      	mov	r2, r1
c0dea2f2:	4601      	mov	r1, r0
c0dea2f4:	2082      	movs	r0, #130	@ 0x82
c0dea2f6:	f7ff bfcb 	b.w	c0dea290 <io_usb_send_ep>
	...

c0dea2fc <io_usb_hid_receive>:
c0dea2fc:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0dea300:	4615      	mov	r5, r2
c0dea302:	460f      	mov	r7, r1
c0dea304:	4682      	mov	sl, r0
c0dea306:	b11b      	cbz	r3, c0dea310 <io_usb_hid_receive+0x14>
c0dea308:	f8b3 8004 	ldrh.w	r8, [r3, #4]
c0dea30c:	6818      	ldr	r0, [r3, #0]
c0dea30e:	e003      	b.n	c0dea318 <io_usb_hid_receive+0x1c>
c0dea310:	4858      	ldr	r0, [pc, #352]	@ (c0dea474 <io_usb_hid_receive+0x178>)
c0dea312:	f44f 7882 	mov.w	r8, #260	@ 0x104
c0dea316:	4448      	add	r0, r9
c0dea318:	9001      	str	r0, [sp, #4]
c0dea31a:	f8df b15c 	ldr.w	fp, [pc, #348]	@ c0dea478 <io_usb_hid_receive+0x17c>
c0dea31e:	eb09 000b 	add.w	r0, r9, fp
c0dea322:	4287      	cmp	r7, r0
c0dea324:	d00e      	beq.n	c0dea344 <io_usb_hid_receive+0x48>
c0dea326:	eb09 040b 	add.w	r4, r9, fp
c0dea32a:	2140      	movs	r1, #64	@ 0x40
c0dea32c:	2640      	movs	r6, #64	@ 0x40
c0dea32e:	4620      	mov	r0, r4
c0dea330:	f000 feec 	bl	c0deb10c <__aeabi_memclr>
c0dea334:	2d40      	cmp	r5, #64	@ 0x40
c0dea336:	bf38      	it	cc
c0dea338:	462e      	movcc	r6, r5
c0dea33a:	4620      	mov	r0, r4
c0dea33c:	4639      	mov	r1, r7
c0dea33e:	4632      	mov	r2, r6
c0dea340:	f000 fee9 	bl	c0deb116 <__aeabi_memmove>
c0dea344:	eb09 000b 	add.w	r0, r9, fp
c0dea348:	7880      	ldrb	r0, [r0, #2]
c0dea34a:	b348      	cbz	r0, c0dea3a0 <io_usb_hid_receive+0xa4>
c0dea34c:	2801      	cmp	r0, #1
c0dea34e:	d030      	beq.n	c0dea3b2 <io_usb_hid_receive+0xb6>
c0dea350:	2802      	cmp	r0, #2
c0dea352:	d034      	beq.n	c0dea3be <io_usb_hid_receive+0xc2>
c0dea354:	2805      	cmp	r0, #5
c0dea356:	f040 8083 	bne.w	c0dea460 <io_usb_hid_receive+0x164>
c0dea35a:	4c48      	ldr	r4, [pc, #288]	@ (c0dea47c <io_usb_hid_receive+0x180>)
c0dea35c:	eb09 010b 	add.w	r1, r9, fp
c0dea360:	f859 0004 	ldr.w	r0, [r9, r4]
c0dea364:	78ca      	ldrb	r2, [r1, #3]
c0dea366:	7909      	ldrb	r1, [r1, #4]
c0dea368:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0dea36c:	4288      	cmp	r0, r1
c0dea36e:	d12a      	bne.n	c0dea3c6 <io_usb_hid_receive+0xca>
c0dea370:	f859 0004 	ldr.w	r0, [r9, r4]
c0dea374:	b3a0      	cbz	r0, c0dea3e0 <io_usb_hid_receive+0xe4>
c0dea376:	4942      	ldr	r1, [pc, #264]	@ (c0dea480 <io_usb_hid_receive+0x184>)
c0dea378:	1f68      	subs	r0, r5, #5
c0dea37a:	b283      	uxth	r3, r0
c0dea37c:	f859 2001 	ldr.w	r2, [r9, r1]
c0dea380:	429a      	cmp	r2, r3
c0dea382:	bf38      	it	cc
c0dea384:	f859 0001 	ldrcc.w	r0, [r9, r1]
c0dea388:	b281      	uxth	r1, r0
c0dea38a:	293b      	cmp	r1, #59	@ 0x3b
c0dea38c:	bf28      	it	cs
c0dea38e:	203b      	movcs	r0, #59	@ 0x3b
c0dea390:	b285      	uxth	r5, r0
c0dea392:	483c      	ldr	r0, [pc, #240]	@ (c0dea484 <io_usb_hid_receive+0x188>)
c0dea394:	f859 6000 	ldr.w	r6, [r9, r0]
c0dea398:	eb09 000b 	add.w	r0, r9, fp
c0dea39c:	1d41      	adds	r1, r0, #5
c0dea39e:	e04c      	b.n	c0dea43a <io_usb_hid_receive+0x13e>
c0dea3a0:	eb09 000b 	add.w	r0, r9, fp
c0dea3a4:	2100      	movs	r1, #0
c0dea3a6:	f800 1f03 	strb.w	r1, [r0, #3]!
c0dea3aa:	70c1      	strb	r1, [r0, #3]
c0dea3ac:	7081      	strb	r1, [r0, #2]
c0dea3ae:	7041      	strb	r1, [r0, #1]
c0dea3b0:	e005      	b.n	c0dea3be <io_usb_hid_receive+0xc2>
c0dea3b2:	eb09 000b 	add.w	r0, r9, fp
c0dea3b6:	2104      	movs	r1, #4
c0dea3b8:	3003      	adds	r0, #3
c0dea3ba:	f7ff fc5b 	bl	c0de9c74 <cx_rng_no_throw>
c0dea3be:	eb09 000b 	add.w	r0, r9, fp
c0dea3c2:	2140      	movs	r1, #64	@ 0x40
c0dea3c4:	47d0      	blx	sl
c0dea3c6:	2000      	movs	r0, #0
c0dea3c8:	492c      	ldr	r1, [pc, #176]	@ (c0dea47c <io_usb_hid_receive+0x180>)
c0dea3ca:	2200      	movs	r2, #0
c0dea3cc:	f849 2001 	str.w	r2, [r9, r1]
c0dea3d0:	492c      	ldr	r1, [pc, #176]	@ (c0dea484 <io_usb_hid_receive+0x188>)
c0dea3d2:	f849 2001 	str.w	r2, [r9, r1]
c0dea3d6:	492a      	ldr	r1, [pc, #168]	@ (c0dea480 <io_usb_hid_receive+0x184>)
c0dea3d8:	f849 2001 	str.w	r2, [r9, r1]
c0dea3dc:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0dea3e0:	eb09 000b 	add.w	r0, r9, fp
c0dea3e4:	7941      	ldrb	r1, [r0, #5]
c0dea3e6:	7980      	ldrb	r0, [r0, #6]
c0dea3e8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
c0dea3ec:	4826      	ldr	r0, [pc, #152]	@ (c0dea488 <io_usb_hid_receive+0x18c>)
c0dea3ee:	f849 1000 	str.w	r1, [r9, r0]
c0dea3f2:	f859 1000 	ldr.w	r1, [r9, r0]
c0dea3f6:	4541      	cmp	r1, r8
c0dea3f8:	d8e5      	bhi.n	c0dea3c6 <io_usb_hid_receive+0xca>
c0dea3fa:	f859 1000 	ldr.w	r1, [r9, r0]
c0dea3fe:	4820      	ldr	r0, [pc, #128]	@ (c0dea480 <io_usb_hid_receive+0x184>)
c0dea400:	eb09 020b 	add.w	r2, r9, fp
c0dea404:	f849 1000 	str.w	r1, [r9, r0]
c0dea408:	f819 100b 	ldrb.w	r1, [r9, fp]
c0dea40c:	7852      	ldrb	r2, [r2, #1]
c0dea40e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0dea412:	4a1e      	ldr	r2, [pc, #120]	@ (c0dea48c <io_usb_hid_receive+0x190>)
c0dea414:	f849 1002 	str.w	r1, [r9, r2]
c0dea418:	1fe9      	subs	r1, r5, #7
c0dea41a:	f859 2000 	ldr.w	r2, [r9, r0]
c0dea41e:	b28b      	uxth	r3, r1
c0dea420:	429a      	cmp	r2, r3
c0dea422:	bf38      	it	cc
c0dea424:	f859 1000 	ldrcc.w	r1, [r9, r0]
c0dea428:	b288      	uxth	r0, r1
c0dea42a:	2839      	cmp	r0, #57	@ 0x39
c0dea42c:	bf28      	it	cs
c0dea42e:	2139      	movcs	r1, #57	@ 0x39
c0dea430:	9e01      	ldr	r6, [sp, #4]
c0dea432:	eb09 000b 	add.w	r0, r9, fp
c0dea436:	b28d      	uxth	r5, r1
c0dea438:	1dc1      	adds	r1, r0, #7
c0dea43a:	4630      	mov	r0, r6
c0dea43c:	462a      	mov	r2, r5
c0dea43e:	f000 fe6a 	bl	c0deb116 <__aeabi_memmove>
c0dea442:	480f      	ldr	r0, [pc, #60]	@ (c0dea480 <io_usb_hid_receive+0x184>)
c0dea444:	f859 1000 	ldr.w	r1, [r9, r0]
c0dea448:	1b49      	subs	r1, r1, r5
c0dea44a:	f849 1000 	str.w	r1, [r9, r0]
c0dea44e:	490d      	ldr	r1, [pc, #52]	@ (c0dea484 <io_usb_hid_receive+0x188>)
c0dea450:	1970      	adds	r0, r6, r5
c0dea452:	f849 0001 	str.w	r0, [r9, r1]
c0dea456:	f859 0004 	ldr.w	r0, [r9, r4]
c0dea45a:	3001      	adds	r0, #1
c0dea45c:	f849 0004 	str.w	r0, [r9, r4]
c0dea460:	4807      	ldr	r0, [pc, #28]	@ (c0dea480 <io_usb_hid_receive+0x184>)
c0dea462:	f859 0000 	ldr.w	r0, [r9, r0]
c0dea466:	b110      	cbz	r0, c0dea46e <io_usb_hid_receive+0x172>
c0dea468:	2001      	movs	r0, #1
c0dea46a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0dea46e:	2002      	movs	r0, #2
c0dea470:	e7aa      	b.n	c0dea3c8 <io_usb_hid_receive+0xcc>
c0dea472:	bf00      	nop
c0dea474:	000019bc 	.word	0x000019bc
c0dea478:	00001adc 	.word	0x00001adc
c0dea47c:	00001b1c 	.word	0x00001b1c
c0dea480:	00001b24 	.word	0x00001b24
c0dea484:	00001b28 	.word	0x00001b28
c0dea488:	00001b20 	.word	0x00001b20
c0dea48c:	00001b2c 	.word	0x00001b2c

c0dea490 <io_usb_hid_init>:
c0dea490:	4805      	ldr	r0, [pc, #20]	@ (c0dea4a8 <io_usb_hid_init+0x18>)
c0dea492:	2100      	movs	r1, #0
c0dea494:	f849 1000 	str.w	r1, [r9, r0]
c0dea498:	4804      	ldr	r0, [pc, #16]	@ (c0dea4ac <io_usb_hid_init+0x1c>)
c0dea49a:	f849 1000 	str.w	r1, [r9, r0]
c0dea49e:	4804      	ldr	r0, [pc, #16]	@ (c0dea4b0 <io_usb_hid_init+0x20>)
c0dea4a0:	f849 1000 	str.w	r1, [r9, r0]
c0dea4a4:	4770      	bx	lr
c0dea4a6:	bf00      	nop
c0dea4a8:	00001b1c 	.word	0x00001b1c
c0dea4ac:	00001b28 	.word	0x00001b28
c0dea4b0:	00001b24 	.word	0x00001b24

c0dea4b4 <io_usb_hid_sent>:
c0dea4b4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea4b8:	f8df a0cc 	ldr.w	sl, [pc, #204]	@ c0dea588 <io_usb_hid_sent+0xd4>
c0dea4bc:	4f33      	ldr	r7, [pc, #204]	@ (c0dea58c <io_usb_hid_sent+0xd8>)
c0dea4be:	f859 400a 	ldr.w	r4, [r9, sl]
c0dea4c2:	f859 1007 	ldr.w	r1, [r9, r7]
c0dea4c6:	b351      	cbz	r1, c0dea51e <io_usb_hid_sent+0x6a>
c0dea4c8:	b34c      	cbz	r4, c0dea51e <io_usb_hid_sent+0x6a>
c0dea4ca:	f8df 80cc 	ldr.w	r8, [pc, #204]	@ c0dea598 <io_usb_hid_sent+0xe4>
c0dea4ce:	4683      	mov	fp, r0
c0dea4d0:	213b      	movs	r1, #59	@ 0x3b
c0dea4d2:	eb09 0508 	add.w	r5, r9, r8
c0dea4d6:	1d68      	adds	r0, r5, #5
c0dea4d8:	f000 fe18 	bl	c0deb10c <__aeabi_memclr>
c0dea4dc:	482f      	ldr	r0, [pc, #188]	@ (c0dea59c <io_usb_hid_sent+0xe8>)
c0dea4de:	4e2c      	ldr	r6, [pc, #176]	@ (c0dea590 <io_usb_hid_sent+0xdc>)
c0dea4e0:	f859 1000 	ldr.w	r1, [r9, r0]
c0dea4e4:	0a09      	lsrs	r1, r1, #8
c0dea4e6:	f809 1008 	strb.w	r1, [r9, r8]
c0dea4ea:	2105      	movs	r1, #5
c0dea4ec:	70a9      	strb	r1, [r5, #2]
c0dea4ee:	f859 0000 	ldr.w	r0, [r9, r0]
c0dea4f2:	7068      	strb	r0, [r5, #1]
c0dea4f4:	f859 0006 	ldr.w	r0, [r9, r6]
c0dea4f8:	0a00      	lsrs	r0, r0, #8
c0dea4fa:	70e8      	strb	r0, [r5, #3]
c0dea4fc:	f859 0006 	ldr.w	r0, [r9, r6]
c0dea500:	7128      	strb	r0, [r5, #4]
c0dea502:	f859 1006 	ldr.w	r1, [r9, r6]
c0dea506:	f859 0007 	ldr.w	r0, [r9, r7]
c0dea50a:	b1a9      	cbz	r1, c0dea538 <io_usb_hid_sent+0x84>
c0dea50c:	283b      	cmp	r0, #59	@ 0x3b
c0dea50e:	eb09 0008 	add.w	r0, r9, r8
c0dea512:	bf94      	ite	ls
c0dea514:	f859 5007 	ldrls.w	r5, [r9, r7]
c0dea518:	253b      	movhi	r5, #59	@ 0x3b
c0dea51a:	3005      	adds	r0, #5
c0dea51c:	e01b      	b.n	c0dea556 <io_usb_hid_sent+0xa2>
c0dea51e:	481c      	ldr	r0, [pc, #112]	@ (c0dea590 <io_usb_hid_sent+0xdc>)
c0dea520:	2100      	movs	r1, #0
c0dea522:	f849 1000 	str.w	r1, [r9, r0]
c0dea526:	481b      	ldr	r0, [pc, #108]	@ (c0dea594 <io_usb_hid_sent+0xe0>)
c0dea528:	f849 100a 	str.w	r1, [r9, sl]
c0dea52c:	f809 1000 	strb.w	r1, [r9, r0]
c0dea530:	f849 1007 	str.w	r1, [r9, r7]
c0dea534:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea538:	2839      	cmp	r0, #57	@ 0x39
c0dea53a:	bf94      	ite	ls
c0dea53c:	f859 5007 	ldrls.w	r5, [r9, r7]
c0dea540:	2539      	movhi	r5, #57	@ 0x39
c0dea542:	f859 1007 	ldr.w	r1, [r9, r7]
c0dea546:	eb09 0008 	add.w	r0, r9, r8
c0dea54a:	0a09      	lsrs	r1, r1, #8
c0dea54c:	7141      	strb	r1, [r0, #5]
c0dea54e:	f859 1007 	ldr.w	r1, [r9, r7]
c0dea552:	7181      	strb	r1, [r0, #6]
c0dea554:	3007      	adds	r0, #7
c0dea556:	4621      	mov	r1, r4
c0dea558:	462a      	mov	r2, r5
c0dea55a:	f000 fddc 	bl	c0deb116 <__aeabi_memmove>
c0dea55e:	f859 0007 	ldr.w	r0, [r9, r7]
c0dea562:	465a      	mov	r2, fp
c0dea564:	2140      	movs	r1, #64	@ 0x40
c0dea566:	1b40      	subs	r0, r0, r5
c0dea568:	f849 0007 	str.w	r0, [r9, r7]
c0dea56c:	1960      	adds	r0, r4, r5
c0dea56e:	f849 000a 	str.w	r0, [r9, sl]
c0dea572:	f859 0006 	ldr.w	r0, [r9, r6]
c0dea576:	3001      	adds	r0, #1
c0dea578:	f849 0006 	str.w	r0, [r9, r6]
c0dea57c:	eb09 0008 	add.w	r0, r9, r8
c0dea580:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea584:	4710      	bx	r2
c0dea586:	bf00      	nop
c0dea588:	00001b28 	.word	0x00001b28
c0dea58c:	00001b24 	.word	0x00001b24
c0dea590:	00001b1c 	.word	0x00001b1c
c0dea594:	00001ac0 	.word	0x00001ac0
c0dea598:	00001adc 	.word	0x00001adc
c0dea59c:	00001b2c 	.word	0x00001b2c

c0dea5a0 <io_usb_hid_send>:
c0dea5a0:	b189      	cbz	r1, c0dea5c6 <io_usb_hid_send+0x26>
c0dea5a2:	b510      	push	{r4, lr}
c0dea5a4:	4b08      	ldr	r3, [pc, #32]	@ (c0dea5c8 <io_usb_hid_send+0x28>)
c0dea5a6:	2400      	movs	r4, #0
c0dea5a8:	f849 4003 	str.w	r4, [r9, r3]
c0dea5ac:	4b07      	ldr	r3, [pc, #28]	@ (c0dea5cc <io_usb_hid_send+0x2c>)
c0dea5ae:	f849 1003 	str.w	r1, [r9, r3]
c0dea5b2:	4b07      	ldr	r3, [pc, #28]	@ (c0dea5d0 <io_usb_hid_send+0x30>)
c0dea5b4:	f849 2003 	str.w	r2, [r9, r3]
c0dea5b8:	4a06      	ldr	r2, [pc, #24]	@ (c0dea5d4 <io_usb_hid_send+0x34>)
c0dea5ba:	f849 1002 	str.w	r1, [r9, r2]
c0dea5be:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0dea5c2:	f7ff bf77 	b.w	c0dea4b4 <io_usb_hid_sent>
c0dea5c6:	4770      	bx	lr
c0dea5c8:	00001b1c 	.word	0x00001b1c
c0dea5cc:	00001b24 	.word	0x00001b24
c0dea5d0:	00001b28 	.word	0x00001b28
c0dea5d4:	00001b20 	.word	0x00001b20

c0dea5d8 <snprintf>:
c0dea5d8:	b081      	sub	sp, #4
c0dea5da:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea5de:	b087      	sub	sp, #28
c0dea5e0:	2800      	cmp	r0, #0
c0dea5e2:	930f      	str	r3, [sp, #60]	@ 0x3c
c0dea5e4:	f000 817a 	beq.w	c0dea8dc <snprintf+0x304>
c0dea5e8:	460d      	mov	r5, r1
c0dea5ea:	2900      	cmp	r1, #0
c0dea5ec:	f000 8176 	beq.w	c0dea8dc <snprintf+0x304>
c0dea5f0:	4629      	mov	r1, r5
c0dea5f2:	4616      	mov	r6, r2
c0dea5f4:	4604      	mov	r4, r0
c0dea5f6:	f000 fd89 	bl	c0deb10c <__aeabi_memclr>
c0dea5fa:	f1b5 0801 	subs.w	r8, r5, #1
c0dea5fe:	f000 816d 	beq.w	c0dea8dc <snprintf+0x304>
c0dea602:	a80f      	add	r0, sp, #60	@ 0x3c
c0dea604:	9002      	str	r0, [sp, #8]
c0dea606:	7830      	ldrb	r0, [r6, #0]
c0dea608:	2800      	cmp	r0, #0
c0dea60a:	f000 8167 	beq.w	c0dea8dc <snprintf+0x304>
c0dea60e:	2700      	movs	r7, #0
c0dea610:	b128      	cbz	r0, c0dea61e <snprintf+0x46>
c0dea612:	2825      	cmp	r0, #37	@ 0x25
c0dea614:	d003      	beq.n	c0dea61e <snprintf+0x46>
c0dea616:	19f0      	adds	r0, r6, r7
c0dea618:	3701      	adds	r7, #1
c0dea61a:	7840      	ldrb	r0, [r0, #1]
c0dea61c:	e7f8      	b.n	c0dea610 <snprintf+0x38>
c0dea61e:	4547      	cmp	r7, r8
c0dea620:	bf28      	it	cs
c0dea622:	4647      	movcs	r7, r8
c0dea624:	4620      	mov	r0, r4
c0dea626:	4631      	mov	r1, r6
c0dea628:	463a      	mov	r2, r7
c0dea62a:	f000 fd74 	bl	c0deb116 <__aeabi_memmove>
c0dea62e:	ebb8 0807 	subs.w	r8, r8, r7
c0dea632:	f000 8153 	beq.w	c0dea8dc <snprintf+0x304>
c0dea636:	5df1      	ldrb	r1, [r6, r7]
c0dea638:	19f0      	adds	r0, r6, r7
c0dea63a:	443c      	add	r4, r7
c0dea63c:	4606      	mov	r6, r0
c0dea63e:	2925      	cmp	r1, #37	@ 0x25
c0dea640:	d1e1      	bne.n	c0dea606 <snprintf+0x2e>
c0dea642:	1c41      	adds	r1, r0, #1
c0dea644:	f04f 0b00 	mov.w	fp, #0
c0dea648:	f04f 0e20 	mov.w	lr, #32
c0dea64c:	2500      	movs	r5, #0
c0dea64e:	2600      	movs	r6, #0
c0dea650:	3101      	adds	r1, #1
c0dea652:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0dea656:	4632      	mov	r2, r6
c0dea658:	3101      	adds	r1, #1
c0dea65a:	2600      	movs	r6, #0
c0dea65c:	2b2d      	cmp	r3, #45	@ 0x2d
c0dea65e:	d0f8      	beq.n	c0dea652 <snprintf+0x7a>
c0dea660:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0dea664:	2e0a      	cmp	r6, #10
c0dea666:	d313      	bcc.n	c0dea690 <snprintf+0xb8>
c0dea668:	2b25      	cmp	r3, #37	@ 0x25
c0dea66a:	d046      	beq.n	c0dea6fa <snprintf+0x122>
c0dea66c:	2b2a      	cmp	r3, #42	@ 0x2a
c0dea66e:	d01f      	beq.n	c0dea6b0 <snprintf+0xd8>
c0dea670:	2b2e      	cmp	r3, #46	@ 0x2e
c0dea672:	d129      	bne.n	c0dea6c8 <snprintf+0xf0>
c0dea674:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0dea678:	2a2a      	cmp	r2, #42	@ 0x2a
c0dea67a:	d13c      	bne.n	c0dea6f6 <snprintf+0x11e>
c0dea67c:	780a      	ldrb	r2, [r1, #0]
c0dea67e:	2a48      	cmp	r2, #72	@ 0x48
c0dea680:	d003      	beq.n	c0dea68a <snprintf+0xb2>
c0dea682:	2a73      	cmp	r2, #115	@ 0x73
c0dea684:	d001      	beq.n	c0dea68a <snprintf+0xb2>
c0dea686:	2a68      	cmp	r2, #104	@ 0x68
c0dea688:	d135      	bne.n	c0dea6f6 <snprintf+0x11e>
c0dea68a:	9a02      	ldr	r2, [sp, #8]
c0dea68c:	2601      	movs	r6, #1
c0dea68e:	e017      	b.n	c0dea6c0 <snprintf+0xe8>
c0dea690:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0dea694:	ea56 060b 	orrs.w	r6, r6, fp
c0dea698:	bf08      	it	eq
c0dea69a:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0dea69e:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0dea6a2:	3901      	subs	r1, #1
c0dea6a4:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0dea6a8:	4616      	mov	r6, r2
c0dea6aa:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0dea6ae:	e7cf      	b.n	c0dea650 <snprintf+0x78>
c0dea6b0:	460b      	mov	r3, r1
c0dea6b2:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0dea6b6:	2a73      	cmp	r2, #115	@ 0x73
c0dea6b8:	d11d      	bne.n	c0dea6f6 <snprintf+0x11e>
c0dea6ba:	9a02      	ldr	r2, [sp, #8]
c0dea6bc:	2602      	movs	r6, #2
c0dea6be:	4619      	mov	r1, r3
c0dea6c0:	1d13      	adds	r3, r2, #4
c0dea6c2:	9302      	str	r3, [sp, #8]
c0dea6c4:	6815      	ldr	r5, [r2, #0]
c0dea6c6:	e7c3      	b.n	c0dea650 <snprintf+0x78>
c0dea6c8:	2b48      	cmp	r3, #72	@ 0x48
c0dea6ca:	d018      	beq.n	c0dea6fe <snprintf+0x126>
c0dea6cc:	2b58      	cmp	r3, #88	@ 0x58
c0dea6ce:	d019      	beq.n	c0dea704 <snprintf+0x12c>
c0dea6d0:	2b63      	cmp	r3, #99	@ 0x63
c0dea6d2:	d020      	beq.n	c0dea716 <snprintf+0x13e>
c0dea6d4:	2b64      	cmp	r3, #100	@ 0x64
c0dea6d6:	d02a      	beq.n	c0dea72e <snprintf+0x156>
c0dea6d8:	2b68      	cmp	r3, #104	@ 0x68
c0dea6da:	d036      	beq.n	c0dea74a <snprintf+0x172>
c0dea6dc:	2b70      	cmp	r3, #112	@ 0x70
c0dea6de:	d006      	beq.n	c0dea6ee <snprintf+0x116>
c0dea6e0:	2b73      	cmp	r3, #115	@ 0x73
c0dea6e2:	d037      	beq.n	c0dea754 <snprintf+0x17c>
c0dea6e4:	2b75      	cmp	r3, #117	@ 0x75
c0dea6e6:	f000 8081 	beq.w	c0dea7ec <snprintf+0x214>
c0dea6ea:	2b78      	cmp	r3, #120	@ 0x78
c0dea6ec:	d103      	bne.n	c0dea6f6 <snprintf+0x11e>
c0dea6ee:	9400      	str	r4, [sp, #0]
c0dea6f0:	f04f 0c00 	mov.w	ip, #0
c0dea6f4:	e009      	b.n	c0dea70a <snprintf+0x132>
c0dea6f6:	1e4e      	subs	r6, r1, #1
c0dea6f8:	e785      	b.n	c0dea606 <snprintf+0x2e>
c0dea6fa:	2025      	movs	r0, #37	@ 0x25
c0dea6fc:	e00f      	b.n	c0dea71e <snprintf+0x146>
c0dea6fe:	487b      	ldr	r0, [pc, #492]	@ (c0dea8ec <snprintf+0x314>)
c0dea700:	4478      	add	r0, pc
c0dea702:	e024      	b.n	c0dea74e <snprintf+0x176>
c0dea704:	f04f 0c01 	mov.w	ip, #1
c0dea708:	9400      	str	r4, [sp, #0]
c0dea70a:	9a02      	ldr	r2, [sp, #8]
c0dea70c:	2400      	movs	r4, #0
c0dea70e:	1d13      	adds	r3, r2, #4
c0dea710:	9302      	str	r3, [sp, #8]
c0dea712:	2310      	movs	r3, #16
c0dea714:	e072      	b.n	c0dea7fc <snprintf+0x224>
c0dea716:	9802      	ldr	r0, [sp, #8]
c0dea718:	1d02      	adds	r2, r0, #4
c0dea71a:	9202      	str	r2, [sp, #8]
c0dea71c:	6800      	ldr	r0, [r0, #0]
c0dea71e:	1e4e      	subs	r6, r1, #1
c0dea720:	f804 0b01 	strb.w	r0, [r4], #1
c0dea724:	f1b8 0801 	subs.w	r8, r8, #1
c0dea728:	f47f af6d 	bne.w	c0dea606 <snprintf+0x2e>
c0dea72c:	e0d6      	b.n	c0dea8dc <snprintf+0x304>
c0dea72e:	9a02      	ldr	r2, [sp, #8]
c0dea730:	9400      	str	r4, [sp, #0]
c0dea732:	1d13      	adds	r3, r2, #4
c0dea734:	9302      	str	r3, [sp, #8]
c0dea736:	6813      	ldr	r3, [r2, #0]
c0dea738:	2b00      	cmp	r3, #0
c0dea73a:	461a      	mov	r2, r3
c0dea73c:	d500      	bpl.n	c0dea740 <snprintf+0x168>
c0dea73e:	425a      	negs	r2, r3
c0dea740:	0fdc      	lsrs	r4, r3, #31
c0dea742:	f04f 0c00 	mov.w	ip, #0
c0dea746:	230a      	movs	r3, #10
c0dea748:	e059      	b.n	c0dea7fe <snprintf+0x226>
c0dea74a:	4869      	ldr	r0, [pc, #420]	@ (c0dea8f0 <snprintf+0x318>)
c0dea74c:	4478      	add	r0, pc
c0dea74e:	f04f 0c01 	mov.w	ip, #1
c0dea752:	e003      	b.n	c0dea75c <snprintf+0x184>
c0dea754:	4864      	ldr	r0, [pc, #400]	@ (c0dea8e8 <snprintf+0x310>)
c0dea756:	f04f 0c00 	mov.w	ip, #0
c0dea75a:	4478      	add	r0, pc
c0dea75c:	9b02      	ldr	r3, [sp, #8]
c0dea75e:	b2d2      	uxtb	r2, r2
c0dea760:	1d1e      	adds	r6, r3, #4
c0dea762:	9602      	str	r6, [sp, #8]
c0dea764:	1e4e      	subs	r6, r1, #1
c0dea766:	6819      	ldr	r1, [r3, #0]
c0dea768:	2a02      	cmp	r2, #2
c0dea76a:	f000 80a7 	beq.w	c0dea8bc <snprintf+0x2e4>
c0dea76e:	2a01      	cmp	r2, #1
c0dea770:	d007      	beq.n	c0dea782 <snprintf+0x1aa>
c0dea772:	463d      	mov	r5, r7
c0dea774:	b92a      	cbnz	r2, c0dea782 <snprintf+0x1aa>
c0dea776:	2200      	movs	r2, #0
c0dea778:	5c8b      	ldrb	r3, [r1, r2]
c0dea77a:	3201      	adds	r2, #1
c0dea77c:	2b00      	cmp	r3, #0
c0dea77e:	d1fb      	bne.n	c0dea778 <snprintf+0x1a0>
c0dea780:	1e55      	subs	r5, r2, #1
c0dea782:	f1bc 0f00 	cmp.w	ip, #0
c0dea786:	d016      	beq.n	c0dea7b6 <snprintf+0x1de>
c0dea788:	2d00      	cmp	r5, #0
c0dea78a:	f43f af3c 	beq.w	c0dea606 <snprintf+0x2e>
c0dea78e:	f1b8 0f02 	cmp.w	r8, #2
c0dea792:	f0c0 80a3 	bcc.w	c0dea8dc <snprintf+0x304>
c0dea796:	780a      	ldrb	r2, [r1, #0]
c0dea798:	0913      	lsrs	r3, r2, #4
c0dea79a:	f002 020f 	and.w	r2, r2, #15
c0dea79e:	5cc3      	ldrb	r3, [r0, r3]
c0dea7a0:	f1b8 0802 	subs.w	r8, r8, #2
c0dea7a4:	7023      	strb	r3, [r4, #0]
c0dea7a6:	5c82      	ldrb	r2, [r0, r2]
c0dea7a8:	7062      	strb	r2, [r4, #1]
c0dea7aa:	f000 8097 	beq.w	c0dea8dc <snprintf+0x304>
c0dea7ae:	3101      	adds	r1, #1
c0dea7b0:	3d01      	subs	r5, #1
c0dea7b2:	3402      	adds	r4, #2
c0dea7b4:	e7e8      	b.n	c0dea788 <snprintf+0x1b0>
c0dea7b6:	4545      	cmp	r5, r8
c0dea7b8:	bf28      	it	cs
c0dea7ba:	4645      	movcs	r5, r8
c0dea7bc:	4620      	mov	r0, r4
c0dea7be:	462a      	mov	r2, r5
c0dea7c0:	f000 fca9 	bl	c0deb116 <__aeabi_memmove>
c0dea7c4:	ebb8 0805 	subs.w	r8, r8, r5
c0dea7c8:	f000 8088 	beq.w	c0dea8dc <snprintf+0x304>
c0dea7cc:	462f      	mov	r7, r5
c0dea7ce:	442c      	add	r4, r5
c0dea7d0:	45bb      	cmp	fp, r7
c0dea7d2:	f67f af18 	bls.w	c0dea606 <snprintf+0x2e>
c0dea7d6:	ebab 0507 	sub.w	r5, fp, r7
c0dea7da:	4620      	mov	r0, r4
c0dea7dc:	4545      	cmp	r5, r8
c0dea7de:	bf28      	it	cs
c0dea7e0:	4645      	movcs	r5, r8
c0dea7e2:	4629      	mov	r1, r5
c0dea7e4:	2220      	movs	r2, #32
c0dea7e6:	f000 fc98 	bl	c0deb11a <__aeabi_memset>
c0dea7ea:	e061      	b.n	c0dea8b0 <snprintf+0x2d8>
c0dea7ec:	9a02      	ldr	r2, [sp, #8]
c0dea7ee:	9400      	str	r4, [sp, #0]
c0dea7f0:	2400      	movs	r4, #0
c0dea7f2:	f04f 0c00 	mov.w	ip, #0
c0dea7f6:	1d13      	adds	r3, r2, #4
c0dea7f8:	9302      	str	r3, [sp, #8]
c0dea7fa:	230a      	movs	r3, #10
c0dea7fc:	6812      	ldr	r2, [r2, #0]
c0dea7fe:	483d      	ldr	r0, [pc, #244]	@ (c0dea8f4 <snprintf+0x31c>)
c0dea800:	1e4e      	subs	r6, r1, #1
c0dea802:	f04f 0a01 	mov.w	sl, #1
c0dea806:	4478      	add	r0, pc
c0dea808:	9001      	str	r0, [sp, #4]
c0dea80a:	fba3 570a 	umull	r5, r7, r3, sl
c0dea80e:	2f00      	cmp	r7, #0
c0dea810:	bf18      	it	ne
c0dea812:	2701      	movne	r7, #1
c0dea814:	4295      	cmp	r5, r2
c0dea816:	d804      	bhi.n	c0dea822 <snprintf+0x24a>
c0dea818:	b91f      	cbnz	r7, c0dea822 <snprintf+0x24a>
c0dea81a:	f1ab 0b01 	sub.w	fp, fp, #1
c0dea81e:	46aa      	mov	sl, r5
c0dea820:	e7f3      	b.n	c0dea80a <snprintf+0x232>
c0dea822:	2c00      	cmp	r4, #0
c0dea824:	4627      	mov	r7, r4
c0dea826:	f04f 0500 	mov.w	r5, #0
c0dea82a:	bf18      	it	ne
c0dea82c:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0dea830:	d00d      	beq.n	c0dea84e <snprintf+0x276>
c0dea832:	4660      	mov	r0, ip
c0dea834:	fa5f fc8e 	uxtb.w	ip, lr
c0dea838:	a903      	add	r1, sp, #12
c0dea83a:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0dea83e:	4684      	mov	ip, r0
c0dea840:	d106      	bne.n	c0dea850 <snprintf+0x278>
c0dea842:	202d      	movs	r0, #45	@ 0x2d
c0dea844:	2400      	movs	r4, #0
c0dea846:	2501      	movs	r5, #1
c0dea848:	f88d 000c 	strb.w	r0, [sp, #12]
c0dea84c:	e000      	b.n	c0dea850 <snprintf+0x278>
c0dea84e:	a903      	add	r1, sp, #12
c0dea850:	eb07 000b 	add.w	r0, r7, fp
c0dea854:	3802      	subs	r0, #2
c0dea856:	280d      	cmp	r0, #13
c0dea858:	d808      	bhi.n	c0dea86c <snprintf+0x294>
c0dea85a:	f1c7 0701 	rsb	r7, r7, #1
c0dea85e:	45bb      	cmp	fp, r7
c0dea860:	d004      	beq.n	c0dea86c <snprintf+0x294>
c0dea862:	f801 e005 	strb.w	lr, [r1, r5]
c0dea866:	3701      	adds	r7, #1
c0dea868:	3501      	adds	r5, #1
c0dea86a:	e7f8      	b.n	c0dea85e <snprintf+0x286>
c0dea86c:	9f01      	ldr	r7, [sp, #4]
c0dea86e:	b114      	cbz	r4, c0dea876 <snprintf+0x29e>
c0dea870:	202d      	movs	r0, #45	@ 0x2d
c0dea872:	5548      	strb	r0, [r1, r5]
c0dea874:	3501      	adds	r5, #1
c0dea876:	4820      	ldr	r0, [pc, #128]	@ (c0dea8f8 <snprintf+0x320>)
c0dea878:	f1bc 0f00 	cmp.w	ip, #0
c0dea87c:	4478      	add	r0, pc
c0dea87e:	bf08      	it	eq
c0dea880:	4638      	moveq	r0, r7
c0dea882:	f1ba 0f00 	cmp.w	sl, #0
c0dea886:	d00b      	beq.n	c0dea8a0 <snprintf+0x2c8>
c0dea888:	fbb2 f7fa 	udiv	r7, r2, sl
c0dea88c:	fbba faf3 	udiv	sl, sl, r3
c0dea890:	fbb7 f4f3 	udiv	r4, r7, r3
c0dea894:	fb04 7413 	mls	r4, r4, r3, r7
c0dea898:	5d04      	ldrb	r4, [r0, r4]
c0dea89a:	554c      	strb	r4, [r1, r5]
c0dea89c:	3501      	adds	r5, #1
c0dea89e:	e7f0      	b.n	c0dea882 <snprintf+0x2aa>
c0dea8a0:	4545      	cmp	r5, r8
c0dea8a2:	bf28      	it	cs
c0dea8a4:	4645      	movcs	r5, r8
c0dea8a6:	9c00      	ldr	r4, [sp, #0]
c0dea8a8:	462a      	mov	r2, r5
c0dea8aa:	4620      	mov	r0, r4
c0dea8ac:	f000 fc33 	bl	c0deb116 <__aeabi_memmove>
c0dea8b0:	ebb8 0805 	subs.w	r8, r8, r5
c0dea8b4:	442c      	add	r4, r5
c0dea8b6:	f47f aea6 	bne.w	c0dea606 <snprintf+0x2e>
c0dea8ba:	e00f      	b.n	c0dea8dc <snprintf+0x304>
c0dea8bc:	7808      	ldrb	r0, [r1, #0]
c0dea8be:	2800      	cmp	r0, #0
c0dea8c0:	f47f aea1 	bne.w	c0dea606 <snprintf+0x2e>
c0dea8c4:	4545      	cmp	r5, r8
c0dea8c6:	bf28      	it	cs
c0dea8c8:	4645      	movcs	r5, r8
c0dea8ca:	4620      	mov	r0, r4
c0dea8cc:	4629      	mov	r1, r5
c0dea8ce:	2220      	movs	r2, #32
c0dea8d0:	f000 fc23 	bl	c0deb11a <__aeabi_memset>
c0dea8d4:	ebb8 0805 	subs.w	r8, r8, r5
c0dea8d8:	f47f af79 	bne.w	c0dea7ce <snprintf+0x1f6>
c0dea8dc:	2000      	movs	r0, #0
c0dea8de:	b007      	add	sp, #28
c0dea8e0:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea8e4:	b001      	add	sp, #4
c0dea8e6:	4770      	bx	lr
c0dea8e8:	00002209 	.word	0x00002209
c0dea8ec:	00002273 	.word	0x00002273
c0dea8f0:	00002217 	.word	0x00002217
c0dea8f4:	0000215d 	.word	0x0000215d
c0dea8f8:	000020f7 	.word	0x000020f7

c0dea8fc <pic_internal>:
c0dea8fc:	467a      	mov	r2, pc
c0dea8fe:	4902      	ldr	r1, [pc, #8]	@ (c0dea908 <pic_internal+0xc>)
c0dea900:	1cc9      	adds	r1, r1, #3
c0dea902:	1a89      	subs	r1, r1, r2
c0dea904:	1a40      	subs	r0, r0, r1
c0dea906:	4770      	bx	lr
c0dea908:	c0dea8fd 	.word	0xc0dea8fd

c0dea90c <pic>:
c0dea90c:	4a0a      	ldr	r2, [pc, #40]	@ (c0dea938 <pic+0x2c>)
c0dea90e:	4282      	cmp	r2, r0
c0dea910:	490a      	ldr	r1, [pc, #40]	@ (c0dea93c <pic+0x30>)
c0dea912:	d806      	bhi.n	c0dea922 <pic+0x16>
c0dea914:	4281      	cmp	r1, r0
c0dea916:	d304      	bcc.n	c0dea922 <pic+0x16>
c0dea918:	b580      	push	{r7, lr}
c0dea91a:	f7ff ffef 	bl	c0dea8fc <pic_internal>
c0dea91e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0dea922:	4907      	ldr	r1, [pc, #28]	@ (c0dea940 <pic+0x34>)
c0dea924:	4288      	cmp	r0, r1
c0dea926:	4a07      	ldr	r2, [pc, #28]	@ (c0dea944 <pic+0x38>)
c0dea928:	d304      	bcc.n	c0dea934 <pic+0x28>
c0dea92a:	4290      	cmp	r0, r2
c0dea92c:	d802      	bhi.n	c0dea934 <pic+0x28>
c0dea92e:	1a40      	subs	r0, r0, r1
c0dea930:	4649      	mov	r1, r9
c0dea932:	4408      	add	r0, r1
c0dea934:	4770      	bx	lr
c0dea936:	0000      	movs	r0, r0
c0dea938:	c0de0000 	.word	0xc0de0000
c0dea93c:	c0decc3f 	.word	0xc0decc3f
c0dea940:	da7a0000 	.word	0xda7a0000
c0dea944:	da7ab000 	.word	0xda7ab000

c0dea948 <SVC_Call>:
c0dea948:	df01      	svc	1
c0dea94a:	2900      	cmp	r1, #0
c0dea94c:	d100      	bne.n	c0dea950 <exception>
c0dea94e:	4770      	bx	lr

c0dea950 <exception>:
c0dea950:	4608      	mov	r0, r1
c0dea952:	f7ff f9a3 	bl	c0de9c9c <os_longjmp>
	...

c0dea958 <SVC_cx_call>:
c0dea958:	df01      	svc	1
c0dea95a:	4770      	bx	lr

c0dea95c <halt>:
c0dea95c:	b5e0      	push	{r5, r6, r7, lr}
c0dea95e:	2000      	movs	r0, #0
c0dea960:	4669      	mov	r1, sp
c0dea962:	9001      	str	r0, [sp, #4]
c0dea964:	2002      	movs	r0, #2
c0dea966:	f7ff ffef 	bl	c0dea948 <SVC_Call>
c0dea96a:	bd8c      	pop	{r2, r3, r7, pc}

c0dea96c <nbgl_frontDrawRect>:
c0dea96c:	b5e0      	push	{r5, r6, r7, lr}
c0dea96e:	9001      	str	r0, [sp, #4]
c0dea970:	a901      	add	r1, sp, #4
c0dea972:	f04f 70fd 	mov.w	r0, #33161216	@ 0x1fa0000
c0dea976:	f7ff ffe7 	bl	c0dea948 <SVC_Call>
c0dea97a:	bd8c      	pop	{r2, r3, r7, pc}

c0dea97c <nbgl_frontDrawImage>:
c0dea97c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0dea97e:	9000      	str	r0, [sp, #0]
c0dea980:	f000 fa30 	bl	c0deade4 <OUTLINED_FUNCTION_1>
c0dea984:	e9cd 0501 	strd	r0, r5, [sp, #4]
c0dea988:	4802      	ldr	r0, [pc, #8]	@ (c0dea994 <nbgl_frontDrawImage+0x18>)
c0dea98a:	4669      	mov	r1, sp
c0dea98c:	9403      	str	r4, [sp, #12]
c0dea98e:	f7ff ffdb 	bl	c0dea948 <SVC_Call>
c0dea992:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0dea994:	04fa0002 	.word	0x04fa0002

c0dea998 <nbgl_frontDrawImageRle>:
c0dea998:	b5b0      	push	{r4, r5, r7, lr}
c0dea99a:	b086      	sub	sp, #24
c0dea99c:	9001      	str	r0, [sp, #4]
c0dea99e:	f000 fa21 	bl	c0deade4 <OUTLINED_FUNCTION_1>
c0dea9a2:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0dea9a4:	e9cd 0502 	strd	r0, r5, [sp, #8]
c0dea9a8:	4803      	ldr	r0, [pc, #12]	@ (c0dea9b8 <nbgl_frontDrawImageRle+0x20>)
c0dea9aa:	e9cd 4104 	strd	r4, r1, [sp, #16]
c0dea9ae:	a901      	add	r1, sp, #4
c0dea9b0:	f7ff ffca 	bl	c0dea948 <SVC_Call>
c0dea9b4:	b006      	add	sp, #24
c0dea9b6:	bdb0      	pop	{r4, r5, r7, pc}
c0dea9b8:	05fa0010 	.word	0x05fa0010

c0dea9bc <nbgl_frontDrawImageFile>:
c0dea9bc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0dea9be:	9000      	str	r0, [sp, #0]
c0dea9c0:	f000 fa10 	bl	c0deade4 <OUTLINED_FUNCTION_1>
c0dea9c4:	e9cd 0501 	strd	r0, r5, [sp, #4]
c0dea9c8:	4802      	ldr	r0, [pc, #8]	@ (c0dea9d4 <nbgl_frontDrawImageFile+0x18>)
c0dea9ca:	4669      	mov	r1, sp
c0dea9cc:	9403      	str	r4, [sp, #12]
c0dea9ce:	f7ff ffbb 	bl	c0dea948 <SVC_Call>
c0dea9d2:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0dea9d4:	05fa0004 	.word	0x05fa0004

c0dea9d8 <nbgl_frontRefreshArea>:
c0dea9d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea9da:	ab01      	add	r3, sp, #4
c0dea9dc:	c307      	stmia	r3!, {r0, r1, r2}
c0dea9de:	4802      	ldr	r0, [pc, #8]	@ (c0dea9e8 <nbgl_frontRefreshArea+0x10>)
c0dea9e0:	a901      	add	r1, sp, #4
c0dea9e2:	f7ff ffb1 	bl	c0dea948 <SVC_Call>
c0dea9e6:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0dea9e8:	03fa0003 	.word	0x03fa0003

c0dea9ec <nbgl_font_getFont>:
c0dea9ec:	b5e0      	push	{r5, r6, r7, lr}
c0dea9ee:	9001      	str	r0, [sp, #4]
c0dea9f0:	4802      	ldr	r0, [pc, #8]	@ (c0dea9fc <nbgl_font_getFont+0x10>)
c0dea9f2:	a901      	add	r1, sp, #4
c0dea9f4:	f7ff ffa8 	bl	c0dea948 <SVC_Call>
c0dea9f8:	bd8c      	pop	{r2, r3, r7, pc}
c0dea9fa:	bf00      	nop
c0dea9fc:	01fa000c 	.word	0x01fa000c

c0deaa00 <nbgl_screen_reinit>:
c0deaa00:	b5e0      	push	{r5, r6, r7, lr}
c0deaa02:	2000      	movs	r0, #0
c0deaa04:	9001      	str	r0, [sp, #4]
c0deaa06:	4802      	ldr	r0, [pc, #8]	@ (c0deaa10 <nbgl_screen_reinit+0x10>)
c0deaa08:	a901      	add	r1, sp, #4
c0deaa0a:	f7ff ff9d 	bl	c0dea948 <SVC_Call>
c0deaa0e:	bd8c      	pop	{r2, r3, r7, pc}
c0deaa10:	00fa000d 	.word	0x00fa000d

c0deaa14 <nvm_write>:
c0deaa14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deaa16:	ab01      	add	r3, sp, #4
c0deaa18:	c307      	stmia	r3!, {r0, r1, r2}
c0deaa1a:	4802      	ldr	r0, [pc, #8]	@ (c0deaa24 <nvm_write+0x10>)
c0deaa1c:	a901      	add	r1, sp, #4
c0deaa1e:	f7ff ff93 	bl	c0dea948 <SVC_Call>
c0deaa22:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0deaa24:	03000003 	.word	0x03000003

c0deaa28 <cx_bn_lock>:
c0deaa28:	b5e0      	push	{r5, r6, r7, lr}
c0deaa2a:	e9cd 0100 	strd	r0, r1, [sp]
c0deaa2e:	4802      	ldr	r0, [pc, #8]	@ (c0deaa38 <cx_bn_lock+0x10>)
c0deaa30:	4669      	mov	r1, sp
c0deaa32:	f7ff ff91 	bl	c0dea958 <SVC_cx_call>
c0deaa36:	bd8c      	pop	{r2, r3, r7, pc}
c0deaa38:	02000112 	.word	0x02000112

c0deaa3c <cx_bn_unlock>:
c0deaa3c:	b5e0      	push	{r5, r6, r7, lr}
c0deaa3e:	2000      	movs	r0, #0
c0deaa40:	4669      	mov	r1, sp
c0deaa42:	9001      	str	r0, [sp, #4]
c0deaa44:	20b6      	movs	r0, #182	@ 0xb6
c0deaa46:	f7ff ff87 	bl	c0dea958 <SVC_cx_call>
c0deaa4a:	bd8c      	pop	{r2, r3, r7, pc}

c0deaa4c <cx_bn_alloc>:
c0deaa4c:	b5e0      	push	{r5, r6, r7, lr}
c0deaa4e:	e9cd 0100 	strd	r0, r1, [sp]
c0deaa52:	4802      	ldr	r0, [pc, #8]	@ (c0deaa5c <cx_bn_alloc+0x10>)
c0deaa54:	4669      	mov	r1, sp
c0deaa56:	f7ff ff7f 	bl	c0dea958 <SVC_cx_call>
c0deaa5a:	bd8c      	pop	{r2, r3, r7, pc}
c0deaa5c:	02000113 	.word	0x02000113

c0deaa60 <cx_bn_alloc_init>:
c0deaa60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deaa62:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deaa66:	4803      	ldr	r0, [pc, #12]	@ (c0deaa74 <cx_bn_alloc_init+0x14>)
c0deaa68:	4669      	mov	r1, sp
c0deaa6a:	f7ff ff75 	bl	c0dea958 <SVC_cx_call>
c0deaa6e:	b004      	add	sp, #16
c0deaa70:	bd80      	pop	{r7, pc}
c0deaa72:	bf00      	nop
c0deaa74:	04000114 	.word	0x04000114

c0deaa78 <cx_bn_destroy>:
c0deaa78:	b5e0      	push	{r5, r6, r7, lr}
c0deaa7a:	f000 f9af 	bl	c0deaddc <OUTLINED_FUNCTION_0>
c0deaa7e:	4802      	ldr	r0, [pc, #8]	@ (c0deaa88 <cx_bn_destroy+0x10>)
c0deaa80:	4669      	mov	r1, sp
c0deaa82:	f7ff ff69 	bl	c0dea958 <SVC_cx_call>
c0deaa86:	bd8c      	pop	{r2, r3, r7, pc}
c0deaa88:	010000bc 	.word	0x010000bc

c0deaa8c <cx_bn_nbytes>:
c0deaa8c:	b5e0      	push	{r5, r6, r7, lr}
c0deaa8e:	e9cd 0100 	strd	r0, r1, [sp]
c0deaa92:	4802      	ldr	r0, [pc, #8]	@ (c0deaa9c <cx_bn_nbytes+0x10>)
c0deaa94:	4669      	mov	r1, sp
c0deaa96:	f7ff ff5f 	bl	c0dea958 <SVC_cx_call>
c0deaa9a:	bd8c      	pop	{r2, r3, r7, pc}
c0deaa9c:	0200010d 	.word	0x0200010d

c0deaaa0 <cx_bn_init>:
c0deaaa0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deaaa2:	ab01      	add	r3, sp, #4
c0deaaa4:	c307      	stmia	r3!, {r0, r1, r2}
c0deaaa6:	4803      	ldr	r0, [pc, #12]	@ (c0deaab4 <cx_bn_init+0x14>)
c0deaaa8:	a901      	add	r1, sp, #4
c0deaaaa:	f7ff ff55 	bl	c0dea958 <SVC_cx_call>
c0deaaae:	b004      	add	sp, #16
c0deaab0:	bd80      	pop	{r7, pc}
c0deaab2:	bf00      	nop
c0deaab4:	03000115 	.word	0x03000115

c0deaab8 <cx_bn_copy>:
c0deaab8:	b5e0      	push	{r5, r6, r7, lr}
c0deaaba:	e9cd 0100 	strd	r0, r1, [sp]
c0deaabe:	4802      	ldr	r0, [pc, #8]	@ (c0deaac8 <cx_bn_copy+0x10>)
c0deaac0:	4669      	mov	r1, sp
c0deaac2:	f7ff ff49 	bl	c0dea958 <SVC_cx_call>
c0deaac6:	bd8c      	pop	{r2, r3, r7, pc}
c0deaac8:	020000c0 	.word	0x020000c0

c0deaacc <cx_bn_set_u32>:
c0deaacc:	b5e0      	push	{r5, r6, r7, lr}
c0deaace:	e9cd 0100 	strd	r0, r1, [sp]
c0deaad2:	4802      	ldr	r0, [pc, #8]	@ (c0deaadc <cx_bn_set_u32+0x10>)
c0deaad4:	4669      	mov	r1, sp
c0deaad6:	f7ff ff3f 	bl	c0dea958 <SVC_cx_call>
c0deaada:	bd8c      	pop	{r2, r3, r7, pc}
c0deaadc:	020000c1 	.word	0x020000c1

c0deaae0 <cx_bn_export>:
c0deaae0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deaae2:	ab01      	add	r3, sp, #4
c0deaae4:	c307      	stmia	r3!, {r0, r1, r2}
c0deaae6:	4803      	ldr	r0, [pc, #12]	@ (c0deaaf4 <cx_bn_export+0x14>)
c0deaae8:	a901      	add	r1, sp, #4
c0deaaea:	f7ff ff35 	bl	c0dea958 <SVC_cx_call>
c0deaaee:	b004      	add	sp, #16
c0deaaf0:	bd80      	pop	{r7, pc}
c0deaaf2:	bf00      	nop
c0deaaf4:	030000c3 	.word	0x030000c3

c0deaaf8 <cx_bn_cmp>:
c0deaaf8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deaafa:	ab01      	add	r3, sp, #4
c0deaafc:	c307      	stmia	r3!, {r0, r1, r2}
c0deaafe:	4803      	ldr	r0, [pc, #12]	@ (c0deab0c <cx_bn_cmp+0x14>)
c0deab00:	a901      	add	r1, sp, #4
c0deab02:	f7ff ff29 	bl	c0dea958 <SVC_cx_call>
c0deab06:	b004      	add	sp, #16
c0deab08:	bd80      	pop	{r7, pc}
c0deab0a:	bf00      	nop
c0deab0c:	030000c4 	.word	0x030000c4

c0deab10 <cx_bn_cmp_u32>:
c0deab10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deab12:	ab01      	add	r3, sp, #4
c0deab14:	c307      	stmia	r3!, {r0, r1, r2}
c0deab16:	4803      	ldr	r0, [pc, #12]	@ (c0deab24 <cx_bn_cmp_u32+0x14>)
c0deab18:	a901      	add	r1, sp, #4
c0deab1a:	f7ff ff1d 	bl	c0dea958 <SVC_cx_call>
c0deab1e:	b004      	add	sp, #16
c0deab20:	bd80      	pop	{r7, pc}
c0deab22:	bf00      	nop
c0deab24:	030000c5 	.word	0x030000c5

c0deab28 <cx_bn_tst_bit>:
c0deab28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deab2a:	ab01      	add	r3, sp, #4
c0deab2c:	c307      	stmia	r3!, {r0, r1, r2}
c0deab2e:	4803      	ldr	r0, [pc, #12]	@ (c0deab3c <cx_bn_tst_bit+0x14>)
c0deab30:	a901      	add	r1, sp, #4
c0deab32:	f7ff ff11 	bl	c0dea958 <SVC_cx_call>
c0deab36:	b004      	add	sp, #16
c0deab38:	bd80      	pop	{r7, pc}
c0deab3a:	bf00      	nop
c0deab3c:	030000cb 	.word	0x030000cb

c0deab40 <cx_bn_mod_add>:
c0deab40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deab42:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deab46:	4803      	ldr	r0, [pc, #12]	@ (c0deab54 <cx_bn_mod_add+0x14>)
c0deab48:	4669      	mov	r1, sp
c0deab4a:	f7ff ff05 	bl	c0dea958 <SVC_cx_call>
c0deab4e:	b004      	add	sp, #16
c0deab50:	bd80      	pop	{r7, pc}
c0deab52:	bf00      	nop
c0deab54:	040000d3 	.word	0x040000d3

c0deab58 <cx_bn_mod_sub>:
c0deab58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deab5a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deab5e:	4803      	ldr	r0, [pc, #12]	@ (c0deab6c <cx_bn_mod_sub+0x14>)
c0deab60:	4669      	mov	r1, sp
c0deab62:	f7ff fef9 	bl	c0dea958 <SVC_cx_call>
c0deab66:	b004      	add	sp, #16
c0deab68:	bd80      	pop	{r7, pc}
c0deab6a:	bf00      	nop
c0deab6c:	040000d4 	.word	0x040000d4

c0deab70 <cx_bn_mod_mul>:
c0deab70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deab72:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deab76:	4803      	ldr	r0, [pc, #12]	@ (c0deab84 <cx_bn_mod_mul+0x14>)
c0deab78:	4669      	mov	r1, sp
c0deab7a:	f7ff feed 	bl	c0dea958 <SVC_cx_call>
c0deab7e:	b004      	add	sp, #16
c0deab80:	bd80      	pop	{r7, pc}
c0deab82:	bf00      	nop
c0deab84:	040000d5 	.word	0x040000d5

c0deab88 <cx_bn_reduce>:
c0deab88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deab8a:	ab01      	add	r3, sp, #4
c0deab8c:	c307      	stmia	r3!, {r0, r1, r2}
c0deab8e:	4803      	ldr	r0, [pc, #12]	@ (c0deab9c <cx_bn_reduce+0x14>)
c0deab90:	a901      	add	r1, sp, #4
c0deab92:	f7ff fee1 	bl	c0dea958 <SVC_cx_call>
c0deab96:	b004      	add	sp, #16
c0deab98:	bd80      	pop	{r7, pc}
c0deab9a:	bf00      	nop
c0deab9c:	030000d6 	.word	0x030000d6

c0deaba0 <cx_bn_mod_invert_nprime>:
c0deaba0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deaba2:	ab01      	add	r3, sp, #4
c0deaba4:	c307      	stmia	r3!, {r0, r1, r2}
c0deaba6:	4803      	ldr	r0, [pc, #12]	@ (c0deabb4 <cx_bn_mod_invert_nprime+0x14>)
c0deaba8:	a901      	add	r1, sp, #4
c0deabaa:	f7ff fed5 	bl	c0dea958 <SVC_cx_call>
c0deabae:	b004      	add	sp, #16
c0deabb0:	bd80      	pop	{r7, pc}
c0deabb2:	bf00      	nop
c0deabb4:	030000da 	.word	0x030000da

c0deabb8 <cx_bn_is_prime>:
c0deabb8:	b5e0      	push	{r5, r6, r7, lr}
c0deabba:	e9cd 0100 	strd	r0, r1, [sp]
c0deabbe:	4802      	ldr	r0, [pc, #8]	@ (c0deabc8 <cx_bn_is_prime+0x10>)
c0deabc0:	4669      	mov	r1, sp
c0deabc2:	f7ff fec9 	bl	c0dea958 <SVC_cx_call>
c0deabc6:	bd8c      	pop	{r2, r3, r7, pc}
c0deabc8:	020000ef 	.word	0x020000ef

c0deabcc <cx_mont_alloc>:
c0deabcc:	b5e0      	push	{r5, r6, r7, lr}
c0deabce:	e9cd 0100 	strd	r0, r1, [sp]
c0deabd2:	4802      	ldr	r0, [pc, #8]	@ (c0deabdc <cx_mont_alloc+0x10>)
c0deabd4:	4669      	mov	r1, sp
c0deabd6:	f7ff febf 	bl	c0dea958 <SVC_cx_call>
c0deabda:	bd8c      	pop	{r2, r3, r7, pc}
c0deabdc:	020000dc 	.word	0x020000dc

c0deabe0 <cx_mont_init>:
c0deabe0:	b5e0      	push	{r5, r6, r7, lr}
c0deabe2:	e9cd 0100 	strd	r0, r1, [sp]
c0deabe6:	4802      	ldr	r0, [pc, #8]	@ (c0deabf0 <cx_mont_init+0x10>)
c0deabe8:	4669      	mov	r1, sp
c0deabea:	f7ff feb5 	bl	c0dea958 <SVC_cx_call>
c0deabee:	bd8c      	pop	{r2, r3, r7, pc}
c0deabf0:	020000dd 	.word	0x020000dd

c0deabf4 <cx_mont_to_montgomery>:
c0deabf4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deabf6:	ab01      	add	r3, sp, #4
c0deabf8:	c307      	stmia	r3!, {r0, r1, r2}
c0deabfa:	4803      	ldr	r0, [pc, #12]	@ (c0deac08 <cx_mont_to_montgomery+0x14>)
c0deabfc:	a901      	add	r1, sp, #4
c0deabfe:	f7ff feab 	bl	c0dea958 <SVC_cx_call>
c0deac02:	b004      	add	sp, #16
c0deac04:	bd80      	pop	{r7, pc}
c0deac06:	bf00      	nop
c0deac08:	030000df 	.word	0x030000df

c0deac0c <cx_mont_from_montgomery>:
c0deac0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deac0e:	ab01      	add	r3, sp, #4
c0deac10:	c307      	stmia	r3!, {r0, r1, r2}
c0deac12:	4803      	ldr	r0, [pc, #12]	@ (c0deac20 <cx_mont_from_montgomery+0x14>)
c0deac14:	a901      	add	r1, sp, #4
c0deac16:	f7ff fe9f 	bl	c0dea958 <SVC_cx_call>
c0deac1a:	b004      	add	sp, #16
c0deac1c:	bd80      	pop	{r7, pc}
c0deac1e:	bf00      	nop
c0deac20:	030000e0 	.word	0x030000e0

c0deac24 <cx_mont_mul>:
c0deac24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deac26:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deac2a:	4803      	ldr	r0, [pc, #12]	@ (c0deac38 <cx_mont_mul+0x14>)
c0deac2c:	4669      	mov	r1, sp
c0deac2e:	f7ff fe93 	bl	c0dea958 <SVC_cx_call>
c0deac32:	b004      	add	sp, #16
c0deac34:	bd80      	pop	{r7, pc}
c0deac36:	bf00      	nop
c0deac38:	040000e1 	.word	0x040000e1

c0deac3c <cx_mont_pow>:
c0deac3c:	b510      	push	{r4, lr}
c0deac3e:	b086      	sub	sp, #24
c0deac40:	f10d 0c04 	add.w	ip, sp, #4
c0deac44:	9c08      	ldr	r4, [sp, #32]
c0deac46:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0deac4a:	4803      	ldr	r0, [pc, #12]	@ (c0deac58 <cx_mont_pow+0x1c>)
c0deac4c:	a901      	add	r1, sp, #4
c0deac4e:	f7ff fe83 	bl	c0dea958 <SVC_cx_call>
c0deac52:	b006      	add	sp, #24
c0deac54:	bd10      	pop	{r4, pc}
c0deac56:	bf00      	nop
c0deac58:	050000e2 	.word	0x050000e2

c0deac5c <cx_mont_invert_nprime>:
c0deac5c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deac5e:	ab01      	add	r3, sp, #4
c0deac60:	c307      	stmia	r3!, {r0, r1, r2}
c0deac62:	4803      	ldr	r0, [pc, #12]	@ (c0deac70 <cx_mont_invert_nprime+0x14>)
c0deac64:	a901      	add	r1, sp, #4
c0deac66:	f7ff fe77 	bl	c0dea958 <SVC_cx_call>
c0deac6a:	b004      	add	sp, #16
c0deac6c:	bd80      	pop	{r7, pc}
c0deac6e:	bf00      	nop
c0deac70:	030000e4 	.word	0x030000e4

c0deac74 <cx_ecdomain_parameters_length>:
c0deac74:	b5e0      	push	{r5, r6, r7, lr}
c0deac76:	e9cd 0100 	strd	r0, r1, [sp]
c0deac7a:	4802      	ldr	r0, [pc, #8]	@ (c0deac84 <cx_ecdomain_parameters_length+0x10>)
c0deac7c:	4669      	mov	r1, sp
c0deac7e:	f7ff fe6b 	bl	c0dea958 <SVC_cx_call>
c0deac82:	bd8c      	pop	{r2, r3, r7, pc}
c0deac84:	0200012f 	.word	0x0200012f

c0deac88 <os_perso_derive_node_with_seed_key>:
c0deac88:	b510      	push	{r4, lr}
c0deac8a:	b088      	sub	sp, #32
c0deac8c:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0deac8e:	9407      	str	r4, [sp, #28]
c0deac90:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0deac92:	9406      	str	r4, [sp, #24]
c0deac94:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0deac96:	9405      	str	r4, [sp, #20]
c0deac98:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0deac9a:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0deac9e:	4803      	ldr	r0, [pc, #12]	@ (c0deacac <os_perso_derive_node_with_seed_key+0x24>)
c0deaca0:	4669      	mov	r1, sp
c0deaca2:	f7ff fe51 	bl	c0dea948 <SVC_Call>
c0deaca6:	b008      	add	sp, #32
c0deaca8:	bd10      	pop	{r4, pc}
c0deacaa:	bf00      	nop
c0deacac:	080000a6 	.word	0x080000a6

c0deacb0 <os_pki_load_certificate>:
c0deacb0:	b510      	push	{r4, lr}
c0deacb2:	b086      	sub	sp, #24
c0deacb4:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0deacb6:	9405      	str	r4, [sp, #20]
c0deacb8:	9c08      	ldr	r4, [sp, #32]
c0deacba:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0deacbe:	4803      	ldr	r0, [pc, #12]	@ (c0deaccc <os_pki_load_certificate+0x1c>)
c0deacc0:	4669      	mov	r1, sp
c0deacc2:	f7ff fe41 	bl	c0dea948 <SVC_Call>
c0deacc6:	b006      	add	sp, #24
c0deacc8:	bd10      	pop	{r4, pc}
c0deacca:	bf00      	nop
c0deaccc:	060000aa 	.word	0x060000aa

c0deacd0 <os_perso_is_pin_set>:
c0deacd0:	b5e0      	push	{r5, r6, r7, lr}
c0deacd2:	2000      	movs	r0, #0
c0deacd4:	4669      	mov	r1, sp
c0deacd6:	9001      	str	r0, [sp, #4]
c0deacd8:	209e      	movs	r0, #158	@ 0x9e
c0deacda:	f7ff fe35 	bl	c0dea948 <SVC_Call>
c0deacde:	b2c0      	uxtb	r0, r0
c0deace0:	bd8c      	pop	{r2, r3, r7, pc}

c0deace2 <os_global_pin_is_validated>:
c0deace2:	b5e0      	push	{r5, r6, r7, lr}
c0deace4:	2000      	movs	r0, #0
c0deace6:	4669      	mov	r1, sp
c0deace8:	9001      	str	r0, [sp, #4]
c0deacea:	20a0      	movs	r0, #160	@ 0xa0
c0deacec:	f7ff fe2c 	bl	c0dea948 <SVC_Call>
c0deacf0:	b2c0      	uxtb	r0, r0
c0deacf2:	bd8c      	pop	{r2, r3, r7, pc}

c0deacf4 <os_ux>:
c0deacf4:	b5e0      	push	{r5, r6, r7, lr}
c0deacf6:	f000 f871 	bl	c0deaddc <OUTLINED_FUNCTION_0>
c0deacfa:	4802      	ldr	r0, [pc, #8]	@ (c0dead04 <os_ux+0x10>)
c0deacfc:	4669      	mov	r1, sp
c0deacfe:	f7ff fe23 	bl	c0dea948 <SVC_Call>
c0dead02:	bd8c      	pop	{r2, r3, r7, pc}
c0dead04:	01000064 	.word	0x01000064

c0dead08 <os_lib_end>:
c0dead08:	b082      	sub	sp, #8
c0dead0a:	2000      	movs	r0, #0
c0dead0c:	4669      	mov	r1, sp
c0dead0e:	9001      	str	r0, [sp, #4]
c0dead10:	2068      	movs	r0, #104	@ 0x68
c0dead12:	f7ff fe19 	bl	c0dea948 <SVC_Call>
c0dead16:	deff      	udf	#255	@ 0xff

c0dead18 <os_flags>:
c0dead18:	b5e0      	push	{r5, r6, r7, lr}
c0dead1a:	2000      	movs	r0, #0
c0dead1c:	4669      	mov	r1, sp
c0dead1e:	9001      	str	r0, [sp, #4]
c0dead20:	206a      	movs	r0, #106	@ 0x6a
c0dead22:	f7ff fe11 	bl	c0dea948 <SVC_Call>
c0dead26:	bd8c      	pop	{r2, r3, r7, pc}

c0dead28 <os_registry_get_current_app_tag>:
c0dead28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dead2a:	ab01      	add	r3, sp, #4
c0dead2c:	c307      	stmia	r3!, {r0, r1, r2}
c0dead2e:	4803      	ldr	r0, [pc, #12]	@ (c0dead3c <os_registry_get_current_app_tag+0x14>)
c0dead30:	a901      	add	r1, sp, #4
c0dead32:	f7ff fe09 	bl	c0dea948 <SVC_Call>
c0dead36:	b004      	add	sp, #16
c0dead38:	bd80      	pop	{r7, pc}
c0dead3a:	bf00      	nop
c0dead3c:	03000074 	.word	0x03000074

c0dead40 <os_sched_exit>:
c0dead40:	b082      	sub	sp, #8
c0dead42:	f000 f84b 	bl	c0deaddc <OUTLINED_FUNCTION_0>
c0dead46:	4802      	ldr	r0, [pc, #8]	@ (c0dead50 <os_sched_exit+0x10>)
c0dead48:	4669      	mov	r1, sp
c0dead4a:	f7ff fdfd 	bl	c0dea948 <SVC_Call>
c0dead4e:	deff      	udf	#255	@ 0xff
c0dead50:	0100009a 	.word	0x0100009a

c0dead54 <io_seph_send>:
c0dead54:	b5e0      	push	{r5, r6, r7, lr}
c0dead56:	e9cd 0100 	strd	r0, r1, [sp]
c0dead5a:	4802      	ldr	r0, [pc, #8]	@ (c0dead64 <io_seph_send+0x10>)
c0dead5c:	4669      	mov	r1, sp
c0dead5e:	f7ff fdf3 	bl	c0dea948 <SVC_Call>
c0dead62:	bd8c      	pop	{r2, r3, r7, pc}
c0dead64:	02000083 	.word	0x02000083

c0dead68 <io_seph_is_status_sent>:
c0dead68:	b5e0      	push	{r5, r6, r7, lr}
c0dead6a:	2000      	movs	r0, #0
c0dead6c:	4669      	mov	r1, sp
c0dead6e:	9001      	str	r0, [sp, #4]
c0dead70:	2084      	movs	r0, #132	@ 0x84
c0dead72:	f7ff fde9 	bl	c0dea948 <SVC_Call>
c0dead76:	bd8c      	pop	{r2, r3, r7, pc}

c0dead78 <io_seph_recv>:
c0dead78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dead7a:	ab01      	add	r3, sp, #4
c0dead7c:	c307      	stmia	r3!, {r0, r1, r2}
c0dead7e:	4803      	ldr	r0, [pc, #12]	@ (c0dead8c <io_seph_recv+0x14>)
c0dead80:	a901      	add	r1, sp, #4
c0dead82:	f7ff fde1 	bl	c0dea948 <SVC_Call>
c0dead86:	b280      	uxth	r0, r0
c0dead88:	b004      	add	sp, #16
c0dead8a:	bd80      	pop	{r7, pc}
c0dead8c:	03000085 	.word	0x03000085

c0dead90 <try_context_get>:
c0dead90:	b5e0      	push	{r5, r6, r7, lr}
c0dead92:	2000      	movs	r0, #0
c0dead94:	4669      	mov	r1, sp
c0dead96:	9001      	str	r0, [sp, #4]
c0dead98:	2087      	movs	r0, #135	@ 0x87
c0dead9a:	f7ff fdd5 	bl	c0dea948 <SVC_Call>
c0dead9e:	bd8c      	pop	{r2, r3, r7, pc}

c0deada0 <try_context_set>:
c0deada0:	b5e0      	push	{r5, r6, r7, lr}
c0deada2:	f000 f81b 	bl	c0deaddc <OUTLINED_FUNCTION_0>
c0deada6:	4802      	ldr	r0, [pc, #8]	@ (c0deadb0 <try_context_set+0x10>)
c0deada8:	4669      	mov	r1, sp
c0deadaa:	f7ff fdcd 	bl	c0dea948 <SVC_Call>
c0deadae:	bd8c      	pop	{r2, r3, r7, pc}
c0deadb0:	0100010b 	.word	0x0100010b

c0deadb4 <os_sched_last_status>:
c0deadb4:	b5e0      	push	{r5, r6, r7, lr}
c0deadb6:	f000 f811 	bl	c0deaddc <OUTLINED_FUNCTION_0>
c0deadba:	4803      	ldr	r0, [pc, #12]	@ (c0deadc8 <os_sched_last_status+0x14>)
c0deadbc:	4669      	mov	r1, sp
c0deadbe:	f7ff fdc3 	bl	c0dea948 <SVC_Call>
c0deadc2:	b2c0      	uxtb	r0, r0
c0deadc4:	bd8c      	pop	{r2, r3, r7, pc}
c0deadc6:	bf00      	nop
c0deadc8:	0100009c 	.word	0x0100009c

c0deadcc <os_sched_current_task>:
c0deadcc:	b5e0      	push	{r5, r6, r7, lr}
c0deadce:	2000      	movs	r0, #0
c0deadd0:	4669      	mov	r1, sp
c0deadd2:	9001      	str	r0, [sp, #4]
c0deadd4:	208b      	movs	r0, #139	@ 0x8b
c0deadd6:	f7ff fdb7 	bl	c0dea948 <SVC_Call>
c0deadda:	bd8c      	pop	{r2, r3, r7, pc}

c0deaddc <OUTLINED_FUNCTION_0>:
c0deaddc:	2100      	movs	r1, #0
c0deadde:	e9cd 0100 	strd	r0, r1, [sp]
c0deade2:	4770      	bx	lr

c0deade4 <OUTLINED_FUNCTION_1>:
c0deade4:	4608      	mov	r0, r1
c0deade6:	461c      	mov	r4, r3
c0deade8:	4615      	mov	r5, r2
c0deadea:	f7ff bd8f 	b.w	c0dea90c <pic>
	...

c0deadf0 <__aeabi_idiv0>:
c0deadf0:	4770      	bx	lr
c0deadf2:	bf00      	nop

c0deadf4 <__aeabi_uldivmod>:
c0deadf4:	b953      	cbnz	r3, c0deae0c <__aeabi_uldivmod+0x18>
c0deadf6:	b94a      	cbnz	r2, c0deae0c <__aeabi_uldivmod+0x18>
c0deadf8:	2900      	cmp	r1, #0
c0deadfa:	bf08      	it	eq
c0deadfc:	2800      	cmpeq	r0, #0
c0deadfe:	bf1c      	itt	ne
c0deae00:	f04f 31ff 	movne.w	r1, #4294967295	@ 0xffffffff
c0deae04:	f04f 30ff 	movne.w	r0, #4294967295	@ 0xffffffff
c0deae08:	f7ff bff2 	b.w	c0deadf0 <__aeabi_idiv0>
c0deae0c:	f1ad 0c08 	sub.w	ip, sp, #8
c0deae10:	e96d ce04 	strd	ip, lr, [sp, #-16]!
c0deae14:	f000 f806 	bl	c0deae24 <__udivmoddi4>
c0deae18:	f8dd e004 	ldr.w	lr, [sp, #4]
c0deae1c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0deae20:	b004      	add	sp, #16
c0deae22:	4770      	bx	lr

c0deae24 <__udivmoddi4>:
c0deae24:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
c0deae28:	9e09      	ldr	r6, [sp, #36]	@ 0x24
c0deae2a:	460d      	mov	r5, r1
c0deae2c:	4604      	mov	r4, r0
c0deae2e:	460f      	mov	r7, r1
c0deae30:	2b00      	cmp	r3, #0
c0deae32:	d147      	bne.n	c0deaec4 <__udivmoddi4+0xa0>
c0deae34:	428a      	cmp	r2, r1
c0deae36:	4694      	mov	ip, r2
c0deae38:	d95f      	bls.n	c0deaefa <__udivmoddi4+0xd6>
c0deae3a:	fab2 f382 	clz	r3, r2
c0deae3e:	b143      	cbz	r3, c0deae52 <__udivmoddi4+0x2e>
c0deae40:	f1c3 0120 	rsb	r1, r3, #32
c0deae44:	409f      	lsls	r7, r3
c0deae46:	fa02 fc03 	lsl.w	ip, r2, r3
c0deae4a:	409c      	lsls	r4, r3
c0deae4c:	fa20 f101 	lsr.w	r1, r0, r1
c0deae50:	430f      	orrs	r7, r1
c0deae52:	ea4f 451c 	mov.w	r5, ip, lsr #16
c0deae56:	fa1f fe8c 	uxth.w	lr, ip
c0deae5a:	0c22      	lsrs	r2, r4, #16
c0deae5c:	fbb7 f1f5 	udiv	r1, r7, r5
c0deae60:	fb05 7711 	mls	r7, r5, r1, r7
c0deae64:	fb01 f00e 	mul.w	r0, r1, lr
c0deae68:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
c0deae6c:	4290      	cmp	r0, r2
c0deae6e:	d908      	bls.n	c0deae82 <__udivmoddi4+0x5e>
c0deae70:	eb1c 0202 	adds.w	r2, ip, r2
c0deae74:	f101 37ff 	add.w	r7, r1, #4294967295	@ 0xffffffff
c0deae78:	d202      	bcs.n	c0deae80 <__udivmoddi4+0x5c>
c0deae7a:	4290      	cmp	r0, r2
c0deae7c:	f200 8134 	bhi.w	c0deb0e8 <__udivmoddi4+0x2c4>
c0deae80:	4639      	mov	r1, r7
c0deae82:	1a12      	subs	r2, r2, r0
c0deae84:	b2a4      	uxth	r4, r4
c0deae86:	fbb2 f0f5 	udiv	r0, r2, r5
c0deae8a:	fb05 2210 	mls	r2, r5, r0, r2
c0deae8e:	fb00 fe0e 	mul.w	lr, r0, lr
c0deae92:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
c0deae96:	45a6      	cmp	lr, r4
c0deae98:	d908      	bls.n	c0deaeac <__udivmoddi4+0x88>
c0deae9a:	eb1c 0404 	adds.w	r4, ip, r4
c0deae9e:	f100 32ff 	add.w	r2, r0, #4294967295	@ 0xffffffff
c0deaea2:	d202      	bcs.n	c0deaeaa <__udivmoddi4+0x86>
c0deaea4:	45a6      	cmp	lr, r4
c0deaea6:	f200 8119 	bhi.w	c0deb0dc <__udivmoddi4+0x2b8>
c0deaeaa:	4610      	mov	r0, r2
c0deaeac:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0deaeb0:	eba4 040e 	sub.w	r4, r4, lr
c0deaeb4:	2100      	movs	r1, #0
c0deaeb6:	b11e      	cbz	r6, c0deaec0 <__udivmoddi4+0x9c>
c0deaeb8:	40dc      	lsrs	r4, r3
c0deaeba:	2300      	movs	r3, #0
c0deaebc:	e9c6 4300 	strd	r4, r3, [r6]
c0deaec0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0deaec4:	428b      	cmp	r3, r1
c0deaec6:	d908      	bls.n	c0deaeda <__udivmoddi4+0xb6>
c0deaec8:	2e00      	cmp	r6, #0
c0deaeca:	f000 80fb 	beq.w	c0deb0c4 <__udivmoddi4+0x2a0>
c0deaece:	2100      	movs	r1, #0
c0deaed0:	e9c6 0500 	strd	r0, r5, [r6]
c0deaed4:	4608      	mov	r0, r1
c0deaed6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0deaeda:	fab3 f183 	clz	r1, r3
c0deaede:	2900      	cmp	r1, #0
c0deaee0:	d14b      	bne.n	c0deaf7a <__udivmoddi4+0x156>
c0deaee2:	42ab      	cmp	r3, r5
c0deaee4:	f0c0 80f1 	bcc.w	c0deb0ca <__udivmoddi4+0x2a6>
c0deaee8:	4282      	cmp	r2, r0
c0deaeea:	f240 80ee 	bls.w	c0deb0ca <__udivmoddi4+0x2a6>
c0deaeee:	4608      	mov	r0, r1
c0deaef0:	2e00      	cmp	r6, #0
c0deaef2:	d0e5      	beq.n	c0deaec0 <__udivmoddi4+0x9c>
c0deaef4:	e9c6 4700 	strd	r4, r7, [r6]
c0deaef8:	e7e2      	b.n	c0deaec0 <__udivmoddi4+0x9c>
c0deaefa:	b902      	cbnz	r2, c0deaefe <__udivmoddi4+0xda>
c0deaefc:	deff      	udf	#255	@ 0xff
c0deaefe:	fab2 f382 	clz	r3, r2
c0deaf02:	2b00      	cmp	r3, #0
c0deaf04:	f040 809d 	bne.w	c0deb042 <__udivmoddi4+0x21e>
c0deaf08:	1a8d      	subs	r5, r1, r2
c0deaf0a:	ea4f 4e12 	mov.w	lr, r2, lsr #16
c0deaf0e:	b297      	uxth	r7, r2
c0deaf10:	2101      	movs	r1, #1
c0deaf12:	fbb5 f2fe 	udiv	r2, r5, lr
c0deaf16:	fb0e 5012 	mls	r0, lr, r2, r5
c0deaf1a:	0c25      	lsrs	r5, r4, #16
c0deaf1c:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
c0deaf20:	fb07 f002 	mul.w	r0, r7, r2
c0deaf24:	42a8      	cmp	r0, r5
c0deaf26:	d90f      	bls.n	c0deaf48 <__udivmoddi4+0x124>
c0deaf28:	eb1c 0505 	adds.w	r5, ip, r5
c0deaf2c:	f102 38ff 	add.w	r8, r2, #4294967295	@ 0xffffffff
c0deaf30:	bf2c      	ite	cs
c0deaf32:	f04f 0901 	movcs.w	r9, #1
c0deaf36:	f04f 0900 	movcc.w	r9, #0
c0deaf3a:	42a8      	cmp	r0, r5
c0deaf3c:	d903      	bls.n	c0deaf46 <__udivmoddi4+0x122>
c0deaf3e:	f1b9 0f00 	cmp.w	r9, #0
c0deaf42:	f000 80ce 	beq.w	c0deb0e2 <__udivmoddi4+0x2be>
c0deaf46:	4642      	mov	r2, r8
c0deaf48:	1a2d      	subs	r5, r5, r0
c0deaf4a:	b2a4      	uxth	r4, r4
c0deaf4c:	fbb5 f0fe 	udiv	r0, r5, lr
c0deaf50:	fb0e 5510 	mls	r5, lr, r0, r5
c0deaf54:	fb00 f707 	mul.w	r7, r0, r7
c0deaf58:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0deaf5c:	42a7      	cmp	r7, r4
c0deaf5e:	d908      	bls.n	c0deaf72 <__udivmoddi4+0x14e>
c0deaf60:	eb1c 0404 	adds.w	r4, ip, r4
c0deaf64:	f100 35ff 	add.w	r5, r0, #4294967295	@ 0xffffffff
c0deaf68:	d202      	bcs.n	c0deaf70 <__udivmoddi4+0x14c>
c0deaf6a:	42a7      	cmp	r7, r4
c0deaf6c:	f200 80b3 	bhi.w	c0deb0d6 <__udivmoddi4+0x2b2>
c0deaf70:	4628      	mov	r0, r5
c0deaf72:	1be4      	subs	r4, r4, r7
c0deaf74:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0deaf78:	e79d      	b.n	c0deaeb6 <__udivmoddi4+0x92>
c0deaf7a:	f1c1 0720 	rsb	r7, r1, #32
c0deaf7e:	408b      	lsls	r3, r1
c0deaf80:	fa05 f401 	lsl.w	r4, r5, r1
c0deaf84:	fa22 fc07 	lsr.w	ip, r2, r7
c0deaf88:	40fd      	lsrs	r5, r7
c0deaf8a:	408a      	lsls	r2, r1
c0deaf8c:	ea4c 0c03 	orr.w	ip, ip, r3
c0deaf90:	fa20 f307 	lsr.w	r3, r0, r7
c0deaf94:	ea4f 491c 	mov.w	r9, ip, lsr #16
c0deaf98:	431c      	orrs	r4, r3
c0deaf9a:	fa1f fe8c 	uxth.w	lr, ip
c0deaf9e:	fa00 f301 	lsl.w	r3, r0, r1
c0deafa2:	0c20      	lsrs	r0, r4, #16
c0deafa4:	fbb5 f8f9 	udiv	r8, r5, r9
c0deafa8:	fb09 5518 	mls	r5, r9, r8, r5
c0deafac:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
c0deafb0:	fb08 f00e 	mul.w	r0, r8, lr
c0deafb4:	42a8      	cmp	r0, r5
c0deafb6:	d90f      	bls.n	c0deafd8 <__udivmoddi4+0x1b4>
c0deafb8:	eb1c 0505 	adds.w	r5, ip, r5
c0deafbc:	f108 3aff 	add.w	sl, r8, #4294967295	@ 0xffffffff
c0deafc0:	bf2c      	ite	cs
c0deafc2:	f04f 0b01 	movcs.w	fp, #1
c0deafc6:	f04f 0b00 	movcc.w	fp, #0
c0deafca:	42a8      	cmp	r0, r5
c0deafcc:	d903      	bls.n	c0deafd6 <__udivmoddi4+0x1b2>
c0deafce:	f1bb 0f00 	cmp.w	fp, #0
c0deafd2:	f000 808c 	beq.w	c0deb0ee <__udivmoddi4+0x2ca>
c0deafd6:	46d0      	mov	r8, sl
c0deafd8:	1a2d      	subs	r5, r5, r0
c0deafda:	b2a4      	uxth	r4, r4
c0deafdc:	fbb5 f0f9 	udiv	r0, r5, r9
c0deafe0:	fb09 5510 	mls	r5, r9, r0, r5
c0deafe4:	fb00 fe0e 	mul.w	lr, r0, lr
c0deafe8:	ea44 4505 	orr.w	r5, r4, r5, lsl #16
c0deafec:	45ae      	cmp	lr, r5
c0deafee:	d907      	bls.n	c0deb000 <__udivmoddi4+0x1dc>
c0deaff0:	eb1c 0505 	adds.w	r5, ip, r5
c0deaff4:	f100 34ff 	add.w	r4, r0, #4294967295	@ 0xffffffff
c0deaff8:	d201      	bcs.n	c0deaffe <__udivmoddi4+0x1da>
c0deaffa:	45ae      	cmp	lr, r5
c0deaffc:	d87e      	bhi.n	c0deb0fc <__udivmoddi4+0x2d8>
c0deaffe:	4620      	mov	r0, r4
c0deb000:	ea40 4008 	orr.w	r0, r0, r8, lsl #16
c0deb004:	eba5 050e 	sub.w	r5, r5, lr
c0deb008:	fba0 9802 	umull	r9, r8, r0, r2
c0deb00c:	4545      	cmp	r5, r8
c0deb00e:	464c      	mov	r4, r9
c0deb010:	46c6      	mov	lr, r8
c0deb012:	d302      	bcc.n	c0deb01a <__udivmoddi4+0x1f6>
c0deb014:	d106      	bne.n	c0deb024 <__udivmoddi4+0x200>
c0deb016:	454b      	cmp	r3, r9
c0deb018:	d204      	bcs.n	c0deb024 <__udivmoddi4+0x200>
c0deb01a:	3801      	subs	r0, #1
c0deb01c:	ebb9 0402 	subs.w	r4, r9, r2
c0deb020:	eb68 0e0c 	sbc.w	lr, r8, ip
c0deb024:	2e00      	cmp	r6, #0
c0deb026:	d06f      	beq.n	c0deb108 <__udivmoddi4+0x2e4>
c0deb028:	1b1a      	subs	r2, r3, r4
c0deb02a:	eb65 050e 	sbc.w	r5, r5, lr
c0deb02e:	fa22 f301 	lsr.w	r3, r2, r1
c0deb032:	fa05 f707 	lsl.w	r7, r5, r7
c0deb036:	40cd      	lsrs	r5, r1
c0deb038:	2100      	movs	r1, #0
c0deb03a:	431f      	orrs	r7, r3
c0deb03c:	e9c6 7500 	strd	r7, r5, [r6]
c0deb040:	e73e      	b.n	c0deaec0 <__udivmoddi4+0x9c>
c0deb042:	fa02 fc03 	lsl.w	ip, r2, r3
c0deb046:	f1c3 0020 	rsb	r0, r3, #32
c0deb04a:	fa01 f203 	lsl.w	r2, r1, r3
c0deb04e:	ea4f 4e1c 	mov.w	lr, ip, lsr #16
c0deb052:	40c1      	lsrs	r1, r0
c0deb054:	fa24 f500 	lsr.w	r5, r4, r0
c0deb058:	fa1f f78c 	uxth.w	r7, ip
c0deb05c:	409c      	lsls	r4, r3
c0deb05e:	4315      	orrs	r5, r2
c0deb060:	fbb1 f0fe 	udiv	r0, r1, lr
c0deb064:	0c2a      	lsrs	r2, r5, #16
c0deb066:	fb0e 1110 	mls	r1, lr, r0, r1
c0deb06a:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0deb06e:	fb00 f107 	mul.w	r1, r0, r7
c0deb072:	4291      	cmp	r1, r2
c0deb074:	d90e      	bls.n	c0deb094 <__udivmoddi4+0x270>
c0deb076:	eb1c 0202 	adds.w	r2, ip, r2
c0deb07a:	f100 38ff 	add.w	r8, r0, #4294967295	@ 0xffffffff
c0deb07e:	bf2c      	ite	cs
c0deb080:	f04f 0901 	movcs.w	r9, #1
c0deb084:	f04f 0900 	movcc.w	r9, #0
c0deb088:	4291      	cmp	r1, r2
c0deb08a:	d902      	bls.n	c0deb092 <__udivmoddi4+0x26e>
c0deb08c:	f1b9 0f00 	cmp.w	r9, #0
c0deb090:	d031      	beq.n	c0deb0f6 <__udivmoddi4+0x2d2>
c0deb092:	4640      	mov	r0, r8
c0deb094:	1a52      	subs	r2, r2, r1
c0deb096:	b2ad      	uxth	r5, r5
c0deb098:	fbb2 f1fe 	udiv	r1, r2, lr
c0deb09c:	fb0e 2211 	mls	r2, lr, r1, r2
c0deb0a0:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
c0deb0a4:	fb01 f207 	mul.w	r2, r1, r7
c0deb0a8:	42aa      	cmp	r2, r5
c0deb0aa:	d907      	bls.n	c0deb0bc <__udivmoddi4+0x298>
c0deb0ac:	eb1c 0505 	adds.w	r5, ip, r5
c0deb0b0:	f101 38ff 	add.w	r8, r1, #4294967295	@ 0xffffffff
c0deb0b4:	d201      	bcs.n	c0deb0ba <__udivmoddi4+0x296>
c0deb0b6:	42aa      	cmp	r2, r5
c0deb0b8:	d823      	bhi.n	c0deb102 <__udivmoddi4+0x2de>
c0deb0ba:	4641      	mov	r1, r8
c0deb0bc:	1aad      	subs	r5, r5, r2
c0deb0be:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0deb0c2:	e726      	b.n	c0deaf12 <__udivmoddi4+0xee>
c0deb0c4:	4631      	mov	r1, r6
c0deb0c6:	4630      	mov	r0, r6
c0deb0c8:	e6fa      	b.n	c0deaec0 <__udivmoddi4+0x9c>
c0deb0ca:	1a84      	subs	r4, r0, r2
c0deb0cc:	eb65 0303 	sbc.w	r3, r5, r3
c0deb0d0:	2001      	movs	r0, #1
c0deb0d2:	461f      	mov	r7, r3
c0deb0d4:	e70c      	b.n	c0deaef0 <__udivmoddi4+0xcc>
c0deb0d6:	4464      	add	r4, ip
c0deb0d8:	3802      	subs	r0, #2
c0deb0da:	e74a      	b.n	c0deaf72 <__udivmoddi4+0x14e>
c0deb0dc:	4464      	add	r4, ip
c0deb0de:	3802      	subs	r0, #2
c0deb0e0:	e6e4      	b.n	c0deaeac <__udivmoddi4+0x88>
c0deb0e2:	3a02      	subs	r2, #2
c0deb0e4:	4465      	add	r5, ip
c0deb0e6:	e72f      	b.n	c0deaf48 <__udivmoddi4+0x124>
c0deb0e8:	3902      	subs	r1, #2
c0deb0ea:	4462      	add	r2, ip
c0deb0ec:	e6c9      	b.n	c0deae82 <__udivmoddi4+0x5e>
c0deb0ee:	f1a8 0802 	sub.w	r8, r8, #2
c0deb0f2:	4465      	add	r5, ip
c0deb0f4:	e770      	b.n	c0deafd8 <__udivmoddi4+0x1b4>
c0deb0f6:	3802      	subs	r0, #2
c0deb0f8:	4462      	add	r2, ip
c0deb0fa:	e7cb      	b.n	c0deb094 <__udivmoddi4+0x270>
c0deb0fc:	3802      	subs	r0, #2
c0deb0fe:	4465      	add	r5, ip
c0deb100:	e77e      	b.n	c0deb000 <__udivmoddi4+0x1dc>
c0deb102:	3902      	subs	r1, #2
c0deb104:	4465      	add	r5, ip
c0deb106:	e7d9      	b.n	c0deb0bc <__udivmoddi4+0x298>
c0deb108:	4631      	mov	r1, r6
c0deb10a:	e6d9      	b.n	c0deaec0 <__udivmoddi4+0x9c>

c0deb10c <__aeabi_memclr>:
c0deb10c:	2200      	movs	r2, #0
c0deb10e:	f000 b804 	b.w	c0deb11a <__aeabi_memset>

c0deb112 <__aeabi_memcpy>:
c0deb112:	f000 b80d 	b.w	c0deb130 <memcpy>

c0deb116 <__aeabi_memmove>:
c0deb116:	f000 b818 	b.w	c0deb14a <memmove>

c0deb11a <__aeabi_memset>:
c0deb11a:	4613      	mov	r3, r2
c0deb11c:	460a      	mov	r2, r1
c0deb11e:	4619      	mov	r1, r3
c0deb120:	f000 b82d 	b.w	c0deb17e <memset>

c0deb124 <explicit_bzero>:
c0deb124:	f000 b800 	b.w	c0deb128 <bzero>

c0deb128 <bzero>:
c0deb128:	460a      	mov	r2, r1
c0deb12a:	2100      	movs	r1, #0
c0deb12c:	f000 b827 	b.w	c0deb17e <memset>

c0deb130 <memcpy>:
c0deb130:	440a      	add	r2, r1
c0deb132:	1e43      	subs	r3, r0, #1
c0deb134:	4291      	cmp	r1, r2
c0deb136:	d100      	bne.n	c0deb13a <memcpy+0xa>
c0deb138:	4770      	bx	lr
c0deb13a:	b510      	push	{r4, lr}
c0deb13c:	f811 4b01 	ldrb.w	r4, [r1], #1
c0deb140:	4291      	cmp	r1, r2
c0deb142:	f803 4f01 	strb.w	r4, [r3, #1]!
c0deb146:	d1f9      	bne.n	c0deb13c <memcpy+0xc>
c0deb148:	bd10      	pop	{r4, pc}

c0deb14a <memmove>:
c0deb14a:	4288      	cmp	r0, r1
c0deb14c:	b510      	push	{r4, lr}
c0deb14e:	eb01 0402 	add.w	r4, r1, r2
c0deb152:	d902      	bls.n	c0deb15a <memmove+0x10>
c0deb154:	4284      	cmp	r4, r0
c0deb156:	4623      	mov	r3, r4
c0deb158:	d807      	bhi.n	c0deb16a <memmove+0x20>
c0deb15a:	1e43      	subs	r3, r0, #1
c0deb15c:	42a1      	cmp	r1, r4
c0deb15e:	d008      	beq.n	c0deb172 <memmove+0x28>
c0deb160:	f811 2b01 	ldrb.w	r2, [r1], #1
c0deb164:	f803 2f01 	strb.w	r2, [r3, #1]!
c0deb168:	e7f8      	b.n	c0deb15c <memmove+0x12>
c0deb16a:	4402      	add	r2, r0
c0deb16c:	4601      	mov	r1, r0
c0deb16e:	428a      	cmp	r2, r1
c0deb170:	d100      	bne.n	c0deb174 <memmove+0x2a>
c0deb172:	bd10      	pop	{r4, pc}
c0deb174:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0deb178:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0deb17c:	e7f7      	b.n	c0deb16e <memmove+0x24>

c0deb17e <memset>:
c0deb17e:	4402      	add	r2, r0
c0deb180:	4603      	mov	r3, r0
c0deb182:	4293      	cmp	r3, r2
c0deb184:	d100      	bne.n	c0deb188 <memset+0xa>
c0deb186:	4770      	bx	lr
c0deb188:	f803 1b01 	strb.w	r1, [r3], #1
c0deb18c:	e7f9      	b.n	c0deb182 <memset+0x4>
	...

c0deb190 <setjmp>:
c0deb190:	46ec      	mov	ip, sp
c0deb192:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0deb196:	f04f 0000 	mov.w	r0, #0
c0deb19a:	4770      	bx	lr

c0deb19c <longjmp>:
c0deb19c:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0deb1a0:	46e5      	mov	sp, ip
c0deb1a2:	0008      	movs	r0, r1
c0deb1a4:	bf08      	it	eq
c0deb1a6:	2001      	moveq	r0, #1
c0deb1a8:	4770      	bx	lr
c0deb1aa:	bf00      	nop

c0deb1ac <strcmp>:
c0deb1ac:	f810 2b01 	ldrb.w	r2, [r0], #1
c0deb1b0:	f811 3b01 	ldrb.w	r3, [r1], #1
c0deb1b4:	2a01      	cmp	r2, #1
c0deb1b6:	bf28      	it	cs
c0deb1b8:	429a      	cmpcs	r2, r3
c0deb1ba:	d0f7      	beq.n	c0deb1ac <strcmp>
c0deb1bc:	1ad0      	subs	r0, r2, r3
c0deb1be:	4770      	bx	lr

c0deb1c0 <strlen>:
c0deb1c0:	4603      	mov	r3, r0
c0deb1c2:	f813 2b01 	ldrb.w	r2, [r3], #1
c0deb1c6:	2a00      	cmp	r2, #0
c0deb1c8:	d1fb      	bne.n	c0deb1c2 <strlen+0x2>
c0deb1ca:	1a18      	subs	r0, r3, r0
c0deb1cc:	3801      	subs	r0, #1
c0deb1ce:	4770      	bx	lr

c0deb1d0 <strncmp>:
c0deb1d0:	4603      	mov	r3, r0
c0deb1d2:	b510      	push	{r4, lr}
c0deb1d4:	b172      	cbz	r2, c0deb1f4 <strncmp+0x24>
c0deb1d6:	3901      	subs	r1, #1
c0deb1d8:	1884      	adds	r4, r0, r2
c0deb1da:	f813 0b01 	ldrb.w	r0, [r3], #1
c0deb1de:	f811 2f01 	ldrb.w	r2, [r1, #1]!
c0deb1e2:	4290      	cmp	r0, r2
c0deb1e4:	d101      	bne.n	c0deb1ea <strncmp+0x1a>
c0deb1e6:	42a3      	cmp	r3, r4
c0deb1e8:	d101      	bne.n	c0deb1ee <strncmp+0x1e>
c0deb1ea:	1a80      	subs	r0, r0, r2
c0deb1ec:	bd10      	pop	{r4, pc}
c0deb1ee:	2800      	cmp	r0, #0
c0deb1f0:	d1f3      	bne.n	c0deb1da <strncmp+0xa>
c0deb1f2:	e7fa      	b.n	c0deb1ea <strncmp+0x1a>
c0deb1f4:	4610      	mov	r0, r2
c0deb1f6:	e7f9      	b.n	c0deb1ec <strncmp+0x1c>

c0deb1f8 <strncpy>:
c0deb1f8:	3901      	subs	r1, #1
c0deb1fa:	4603      	mov	r3, r0
c0deb1fc:	b510      	push	{r4, lr}
c0deb1fe:	b132      	cbz	r2, c0deb20e <strncpy+0x16>
c0deb200:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0deb204:	3a01      	subs	r2, #1
c0deb206:	f803 4b01 	strb.w	r4, [r3], #1
c0deb20a:	2c00      	cmp	r4, #0
c0deb20c:	d1f7      	bne.n	c0deb1fe <strncpy+0x6>
c0deb20e:	441a      	add	r2, r3
c0deb210:	2100      	movs	r1, #0
c0deb212:	4293      	cmp	r3, r2
c0deb214:	d100      	bne.n	c0deb218 <strncpy+0x20>
c0deb216:	bd10      	pop	{r4, pc}
c0deb218:	f803 1b01 	strb.w	r1, [r3], #1
c0deb21c:	e7f9      	b.n	c0deb212 <strncpy+0x1a>

c0deb21e <C_home_boilerplate_14px_bitmap>:
c0deb21e:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0deb22e:	fc7b df0f 7ffe 7ff8                          {........

c0deb237 <C_home_boilerplate_14px>:
c0deb237:	000e 000e 0000 b21e c0de                    ..........

c0deb241 <C_Information_circle_14px_bitmap>:
c0deb241:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0deb251:	e7ff 8fff 1ffc 1ee0                          .........

c0deb25a <C_Information_circle_14px>:
c0deb25a:	000e 000e 0000 b241 c0de                    ......A...

c0deb264 <C_Quit_14px_bitmap>:
c0deb264:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0deb274:	6680 9801 7f06 fff9                          .f.......

c0deb27d <C_Quit_14px>:
c0deb27d:	000e 000e 0000 b264 c0de                    ......d...

c0deb287 <C_Switch_Off_8px_bitmap>:
c0deb287:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0deb293 <C_Switch_Off_8px>:
c0deb293:	000c 0008 0000 b287 c0de                    ..........

c0deb29d <C_Switch_On_8px_bitmap>:
c0deb29d:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0deb2a9 <C_Switch_On_8px>:
c0deb2a9:	000c 0008 0000 b29d c0de                    ..........

c0deb2b3 <C_icon_back_x_bitmap>:
c0deb2b3:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0deb2c3:	003f 0078 00c0 0000                          ?.x......

c0deb2cc <C_icon_back_x>:
c0deb2cc:	000e 000e 0000 b2b3 c0de                    ..........

c0deb2d6 <C_icon_coggle_bitmap>:
c0deb2d6:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0deb2e6:	807f 00b4 00c0 0000                          .........

c0deb2ef <C_icon_coggle>:
c0deb2ef:	000e 000e 0000 b2d6 c0de                    ..........

c0deb2f9 <C_icon_crossmark_bitmap>:
c0deb2f9:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0deb309:	8373 1c87 600e 0018                          s....`...

c0deb312 <C_icon_crossmark>:
c0deb312:	000e 000e 0000 b2f9 c0de                    ..........

c0deb31c <C_icon_down_bitmap>:
c0deb31c:	2184 8024                                   .!$.

c0deb320 <C_icon_down>:
c0deb320:	0007 0004 0000 b31c c0de                    ..........

c0deb32a <C_icon_left_bitmap>:
c0deb32a:	8882 80a0                                   ....

c0deb32e <C_icon_left>:
c0deb32e:	0004 0007 0000 b32a c0de                    ......*...

c0deb338 <C_icon_processing_bitmap>:
c0deb338:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0deb348:	8361 04b7 03c8 0000                          a........

c0deb351 <C_icon_processing>:
c0deb351:	000e 000e 0000 b338 c0de                    ......8...

c0deb35b <C_icon_right_bitmap>:
c0deb35b:	5110 1014                                   .Q..

c0deb35f <C_icon_right>:
c0deb35f:	0004 0007 0000 b35b c0de                    ......[...

c0deb369 <C_icon_up_bitmap>:
c0deb369:	4812 1042                                   .HB.

c0deb36d <C_icon_up>:
c0deb36d:	0007 0004 0000 b369 c0de                    ......i...

c0deb377 <C_icon_validate_14_bitmap>:
c0deb377:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0deb387:	a3b3 a3a3 f0b2                               ......P

c0deb38e <C_icon_validate_14>:
c0deb38e:	000e 000e 0100 b377 c0de                    ......w...

c0deb398 <C_icon_warning_bitmap>:
c0deb398:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0deb3a8:	e01f 801f 001e 0018                          .........

c0deb3b1 <C_icon_warning>:
c0deb3b1:	000e 000e 0000 b398 c0de                    ..........

c0deb3bb <C_app_boilerplate_14px_bitmap>:
c0deb3bb:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0deb3cb:	0384 00f0 0000 0000                          .........

c0deb3d4 <C_app_boilerplate_14px>:
c0deb3d4:	000e 000e 0000 b3bb c0de 7544 6d6d 2079     ..........Dummy 
c0deb3e4:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0deb3f4:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0deb404:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0deb414:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0deb424:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0deb434:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0deb444:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0deb454:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0deb464:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0deb474:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0deb484:	6953 6e67 6e69 0067 6d41 756f 746e 4100     Signing.Amount.A
c0deb494:	6464 6572 7373 7620 7265 6669 6569 0064     ddress verified.
c0deb4a4:	7241 2065 6f79 2075 7573 6572 7420 0a6f     Are you sure to.
c0deb4b4:	6c61 6f6c 2077 7564 6d6d 2079 0a32 6e69     allow dummy 2.in
c0deb4c4:	7420 6172 736e 6361 6974 6e6f 3f73 5400      transactions?.T
c0deb4d4:	6172 736e 6361 6974 6e6f 7320 6769 656e     ransaction signe
c0deb4e4:	0064 6f54 6120 6363 7065 2074 6972 6b73     d.To accept risk
c0deb4f4:	202c 7270 7365 2073 6f62 6874 6220 7475     , press both but
c0deb504:	6f74 736e 4400 7665 6c65 706f 7265 4500     tons.Developer.E
c0deb514:	616e 6c62 6465 4100 6c6c 776f 6420 6d75     nabled.Allow dum
c0deb524:	796d 3120 690a 206e 7274 6e61 6173 7463     my 1.in transact
c0deb534:	6f69 736e 5300 6769 206e 656d 7373 6761     ions.Sign messag
c0deb544:	0065 654d 7373 6761 2065 6973 6e67 6465     e.Message signed
c0deb554:	5300 6769 206e 7274 6e61 6173 7463 6f69     .Sign transactio
c0deb564:	006e 6552 656a 7463 7420 6172 736e 6361     n.Reject transac
c0deb574:	6974 6e6f 4100 6363 7065 2074 6972 6b73     tion.Accept risk
c0deb584:	6120 646e 7320 6769 206e 656d 7373 6761      and sign messag
c0deb594:	0065 6c41 6f6c 2077 7564 6d6d 2079 0a32     e.Allow dummy 2.
c0deb5a4:	6e69 7420 6172 736e 6361 6974 6e6f 0073     in transactions.
c0deb5b4:	6556 7372 6f69 006e 6143 636e 6c65 2000     Version.Cancel. 
c0deb5c4:	2e2e 202e 4100 6464 6572 7373 7620 7265     ... .Address ver
c0deb5d4:	6669 6369 7461 6f69 206e 6163 636e 6c65     ification cancel
c0deb5e4:	656c 0064 6944 6173 6c62 6465 4100 7070     led.Disabled.App
c0deb5f4:	7320 7465 6974 676e 0073 6341 6563 7470      settings.Accept
c0deb604:	7220 7369 206b 6e61 2064 6973 6e67 7420      risk and sign t
c0deb614:	6172 736e 6361 6974 6e6f 2e00 2e2e 4200     ransaction.....B
c0deb624:	696c 646e 7320 6769 696e 676e 6120 6568     lind signing ahe
c0deb634:	6461 4100 6363 7065 2074 6972 6b73 6120     ad.Accept risk a
c0deb644:	646e 7320 6769 206e 706f 7265 7461 6f69     nd sign operatio
c0deb654:	006e 654d 7373 6761 2065 6572 656a 7463     n.Message reject
c0deb664:	6465 3000 3231 3433 3635 3837 4139 4342     ed.0123456789ABC
c0deb674:	4544 0046 4f42 204c 2e25 732a 4100 6464     DEF.BOL %.*s.Add
c0deb684:	6572 7373 4200 6361 006b 7544 6d6d 2079     ress.Back.Dummy 
c0deb694:	0031 2049 6e75 6564 7372 6174 646e 202c     1.I understand, 
c0deb6a4:	6f63 666e 7269 006d 7254 6e61 6173 7463     confirm.Transact
c0deb6b4:	6f69 206e 6572 656a 7463 6465 4100 7070     ion rejected.App
c0deb6c4:	6920 666e 006f 6953 6e67 6f20 6570 6172      info.Sign opera
c0deb6d4:	6974 6e6f 2e00 002e 6552 656a 7463 6d20     tion....Reject m
c0deb6e4:	7365 6173 6567 5200 6a65 6365 2074 706f     essage.Reject op
c0deb6f4:	7265 7461 6f69 006e 4b5a 4f4e 0058 6556     eration.ZKNOX.Ve
c0deb704:	6972 7966 4220 4c4f 6120 6464 6572 7373     rify BOL address
c0deb714:	5a00 4e4b 584f 5748 6100 7070 6920 2073     .ZKNOXHW.app is 
c0deb724:	6572 6461 0079 7551 7469 6120 7070 4300     ready.Quit app.C
c0deb734:	6e6f 6966 6d72 0000 0000 0000 6501 d5c4     onfirm.......e..
c0deb744:	445f b317 e968 545a 1a00 3230 b03c e84f     _D..h.ZT..02<.O.
c0deb754:	3e34 d45a 4584 6323 98a5 59d0 ed73 53a7     4>Z..E#c...Ys..S
c0deb764:	9d29 487d 3933 08d8 a109 05d8 bd53 02a4     ).}H39......S...
c0deb774:	feff fe5b ffff ffff 0000 0100 ce05 c698     ..[.............
c0deb784:	051b 7ff4 eae2 a5e9 bd42 f699 e7b2 4682     ........B......F
c0deb794:	1623 b540 9545 bffe 1ed5 53b8 0001 0000     #.@.E......S....
c0deb7a4:	0000 0000 0002 0000 0000 0000 0003 0000     ................
c0deb7b4:	0000 0000 0004 0000 0000 0000 a005 91c0     ................
c0deb7c4:	8356 988b af28 123f e167 e675 84e2 9dc7     V...(.?.g.u.....
c0deb7d4:	6d1b d08a 0acd d9e0 9057 6e33 c61c 38ee     .m......W.3n...8
c0deb7e4:	9c13 111c 2302 7a53 e78c 069d 587e 10cc     .....#Sz....~X..
c0deb7f4:	c667 b7fb b3d8 b0a1 fc8d 088f 4d27 e8bc     g...........'M..
c0deb804:	51d1 9679 c09b 9fd4 25a7 dfbd e59d e055     .Qy......%....U.
c0deb814:	6aba 3c69 db6a fc52 e79e 2ca8 fb1c d469     .ji<j.R....,..i.
c0deb824:	67ca 525f ce0c 0276 6802 0076 8fff 0087     .g_R..v..hv.....
c0deb834:	1974 7104 fd74 b506 7628 e1e7 0c06 ce89     t..qt...(v......
c0deb844:	265c 0534 0a37 b608 30d0 0b2b 3eab b8ed     \&4.7....0+..>..
c0deb854:	2039 0aee 7267 dc97 2139 f126 a570 4a89     9 ..gr..9!&.p..J
c0deb864:	4464 3854 15d0 32ac 36ba 090f de2c ba44     dDT8...2.6..,.D.
c0deb874:	1fb1 b7c2 b5d4 d2c0 2216 ce8c 820b 39b7     .........".....9
c0deb884:	8de7 57da 5ae7 80c6 68ef f19d 8f15 eee3     ...W.Z...h......
c0deb894:	09d8 6d5c d14b c7b2 66c1 fdee d059 a598     ..\mK....f..Y...
c0deb8a4:	2363 8445 5ad4 343e 4fe8 3cb0 3032 001a     c#E..Z>4.O.<20..
c0deb8b4:	5a54 68e9 17b3 5f44 c4d5 0165 0000 0000     TZ.h..D_..e.....
	...
c0deb8dc:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0deb8ec:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0deb8fc:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0deb90c:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0deb91c:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0deb92c:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0deb93c:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0deb95c:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0deb96c:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0deb97c:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0deb98c:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0deb99c:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0deb9ac:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0deb9bc:	2d87 8b7d                                   .-}.

c0deb9c0 <.L__const.handler_cmd_Poseidon.input>:
c0deb9c0:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0deb9d0:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0deb9e0:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0deb9f0:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0deba00:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0deba10:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0deba20:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0deba30:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0deba40:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0deba50:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0deba60 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0deba7c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0deba8c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0deba9c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0debaac:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0debabc:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0debacc:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0debadc:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0debaec:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0debafc:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0debb1c:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0debb2c:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0debb3c:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0debb4c:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0debb5c:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0debb6c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0debb7c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0debb8c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0debb9c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0debbbc:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0debbcc:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0debbdc:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0debbec:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0debbfc:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0debc0c:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0debc1c:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0debc2c:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0debc3c:	9b44 9ffb                                   D...

c0debc40 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0debc5c:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0debc6c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0debc7c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0debc8c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0debc9c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0debcac:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0debcbc:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0debccc:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0debcdc:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0debcfc:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0debd0c:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0debd1c:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0debd2c:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0debd3c:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0debd4c:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0debd5c:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0debd6c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0debd7c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0debd9c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0debdac:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0debdbc:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0debdcc:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0debddc:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0debdec:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0debdfc:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0debe0c:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0debe1c:	8132 74b1                                   2..t

c0debe20 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0debe20:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0debe30:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0debe40:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0debe50:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0debe60:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0debe70:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0debe80 <.L__const.handler_cmd_BindingFactors.commitmentlist_be>:
	...
c0debe9c:	0000 0100 652f cdde b3d6 0f79 6386 d999     ..../e....y..c..
c0debeac:	3b10 21da 2741 11d8 b4db 4119 57bf 23c0     .;.!A'.....A.W.#
c0debebc:	ff62 5f72 8c19 e99e 56b3 16a2 d604 1f4d     b.r_.....V....M.
c0debecc:	263d 9e2c 9ed6 4ab6 634f 4540 5fec 04e1     =&,....JOc@E._..
c0debedc:	3cb5 0c60 3114 da5f 735a 76b9 bc27 199e     .<`..1_.Zs.v'...
c0debeec:	3921 81f1 cd0b 4271 8951 4490 67a1 1899     !9....qBQ..D.g..
c0debefc:	1bcf 7cfd c913 793e 471d 86e6 3b7c 9879     ...|..>y.G..|;y.
c0debf0c:	c32c 1562 ef21 aed6 b86e 5822 b0aa be8a     ,.b.!...n."X....
c0debf1c:	6124 8876 0000 0000 0000 0000 0000 0000     $av.............
	...
c0debf3c:	0000 0200 ea22 ef78 2cd9 7069 6fb2 23fa     ....".x..,ip.o.#
c0debf4c:	041f 7740 d145 6a3c 18ff 8373 f538 bbf6     ..@wE.<j..s.8...
c0debf5c:	0579 dbe2 1f1b c681 8320 0d0d def3 cecc     y....... .......
c0debf6c:	172d c473 c4e8 d8e6 40a3 0c8a 82de 20ef     -.s......@..... 
c0debf7c:	245c 3ced 0c10 9adc ba71 8fe3 de77 5303     \$.<....q...w..S
c0debf8c:	ba4d dbf7 6f65 58f6 09b7 92c7 c6a7 2e21     M...eo.X......!.
c0debf9c:	7c20 0523 6d06 e6cb f57c a41e bcec 1e38      |#..m..|.....8.
c0debfac:	42c7 6760 6bfa 4363 1d3e dfbb 7dc8 cbd9     .B`g.kcC>....}..
c0debfbc:	7ca0 815f 0000 0000 0000 0000 0000 0000     .|_.............
	...
c0debfdc:	0000 0300 2b08 9a77 32c9 9107 a06a 7b73     .....+w..2..j.s{
c0debfec:	8848 6b96 0299 9d2f dec3 b958 8439 7f4a     H..k../...X.9.J.
c0debffc:	2bdd 11e5 1d03 986b e970 e885 9456 028d     .+....k.p...V...
c0dec00c:	22c3 2478 60b4 a720 1a2c 61bb 24d4 8b1a     ."x$.` .,..a.$..
c0dec01c:	1780 64c1 181f bed4 6217 07fc 970d 4e28     ...d.....b....(N
c0dec02c:	a2e6 8edd 00d4 0da6 7e61 683e 8b76 30cf     ........a~>hv..0
c0dec03c:	99b6 7d1c eb15 cb5f 8c5a c194 3d3d b0e3     ...}.._.Z...==..
c0dec04c:	e4d4 b948 9e28 f2bc 3e98 e7ed 6966 7d23     ..H.(....>..fi#}
c0dec05c:	b87c 6a30                                   |.0j

c0dec060 <.L__const.handler_cmd_BindingFactors.groupkey_be>:
c0dec060:	071e d662 0a61 470b b5f3 f2e3 5f3f 8f74     ..b.a..G....?_t.
c0dec070:	5ade 88bb f343 f03c c084 bdda c88d e613     .Z..C.<.........
c0dec080:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0dec090:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..

c0dec0a0 <settingContents>:
c0dec0a0:	0000 0000 c0bc c0de 0001 0000               ............

c0dec0ac <infoList>:
c0dec0ac:	c0f0 c0de c0f8 c0de 0000 0000 0002 0000     ................

c0dec0bc <contents>:
c0dec0bc:	0007 0000 0324 da7a 0002 0000 0000 0000     ....$.z.........
	...
c0dec0ec:	1769 c0de                                   i...

c0dec0f0 <INFO_TYPES>:
c0dec0f0:	b5b4 c0de b509 c0de                         ........

c0dec0f8 <INFO_CONTENTS>:
c0dec0f8:	b42c c0de b6fc c0de                         ,.......

c0dec100 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0dec120:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0dec130:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0dec140 <.L__const.Poseidon_alloc_init.MixColumn>:
c0dec140:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0dec150:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0dec160:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0dec170:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0dec180:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0dec190:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0dec1a0:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0dec1b0:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0dec1c0:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0dec1d0:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0dec1e0:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0dec1f0:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0dec200:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0dec210:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0dec220:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0dec230:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0dec240:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0dec250:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0dec260:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0dec270:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0dec280:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0dec290:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0dec2a0:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0dec2b0:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0dec2c0:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0dec2d0:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0dec2e0:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0dec2f0:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0dec300:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0dec310:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0dec320:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0dec330:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0dec340:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0dec350:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0dec360:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0dec370:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0dec380:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0dec390:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0dec3a0:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0dec3b0:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0dec3c0:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0dec3d0:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0dec3e0:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0dec3f0:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0dec400:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0dec410:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0dec420:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0dec430:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0dec440:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0dec450:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0dec460:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0dec470:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0dec480:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0dec490:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0dec4a0:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0dec4b0:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0dec4c0:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0dec4d0:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0dec4e0:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0dec4f0:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0dec500:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0dec510:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0dec520:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0dec530:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0dec540:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0dec550:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0dec560:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0dec570:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0dec580:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0dec590:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0dec5a0:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0dec5b0:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0dec5c0 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0dec5c0:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0dec5d0:	2d42 4c42 4b41 3545 3231 762d                B-BLAKE512-v1

c0dec5dd <radiusValues>:
c0dec5dd:	0301                                        ..

c0dec5df <quarter_disc_3px_180_1bpp>:
c0dec5df:	ff9b                                        ..

c0dec5e1 <quarter_circle_3px_180_1bpp>:
c0dec5e1:	0019                                        ..

c0dec5e3 <quarter_disc_3px_270_1bpp>:
c0dec5e3:	00fa                                        ..

c0dec5e5 <quarter_circle_3px_270_1bpp>:
c0dec5e5:	0058                                        X.

c0dec5e7 <quarter_disc_3px_90_1bpp>:
c0dec5e7:	ff2f                                        /.

c0dec5e9 <quarter_circle_3px_90_1bpp>:
c0dec5e9:	000d                                        ..

c0dec5eb <quarter_disc_3px_1bpp>:
c0dec5eb:	ffec                                        ..

c0dec5ed <quarter_circle_3px_1bpp>:
c0dec5ed:	004c                                         L..

c0dec5f0 <draw_functions>:
c0dec5f0:	5059 c0de 5099 c0de 50c1 c0de 0000 0000     YP...P...P......
c0dec600:	5145 c0de 5401 c0de 0000 0000 0000 0000     EQ...T..........
c0dec610:	55d3 c0de 0000 0000 0000 0000 0000 0000     .U..............
	...
c0dec628:	5671 c0de 56bd c0de 0000 0000               qV...V......

c0dec634 <blindSigningWarning>:
c0dec634:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0dec65c <USBD_HID_Desc>:
c0dec65c:	2109 0111 0100 2222                          .!...."".

c0dec665 <HID_ReportDesc>:
c0dec665:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0dec675:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0dec685:	c008                                        ..

c0dec687 <C_usb_bos>:
c0dec687:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0dec697:	8b47 a0fd 8876 b615 0065 1e01 1c00 0510     G...v...e.......
c0dec6a7:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0dec6b7:	009f 0300 b206 7700                          .......w.

c0dec6c0 <HID_Desc>:
c0dec6c0:	9961 c0de 9971 c0de 9981 c0de 9991 c0de     a...q...........
c0dec6d0:	99a1 c0de 99b1 c0de 99c1 c0de 99d1 c0de     ................

c0dec6e0 <C_winusb_string_descriptor>:
c0dec6e0:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0dec6f0:	0077                                        w.

c0dec6f2 <C_winusb_guid>:
c0dec6f2:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0dec702:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0dec712:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0dec722:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0dec732:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0dec742:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0dec752:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0dec762:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0dec772:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0dec784 <C_winusb_request_descriptor>:
c0dec784:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0dec794:	00a8 0008 0002 0001 00a0 0014 0003 4957     ..............WI
c0dec7a4:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0dec7b4:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0dec7c4:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0dec7d4:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0dec7e4:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0dec7f4:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0dec804:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0dec814:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0dec824:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0dec834:	0000 0000                                   ....

c0dec838 <USBD_HID>:
c0dec838:	8d33 c0de 8d5b c0de 8c9b c0de 0000 0000     3...[...........
c0dec848:	0000 0000 9841 c0de 985d c0de 0000 0000     ....A...].......
	...
c0dec860:	9ad9 c0de 9ad9 c0de 9ad9 c0de 9ae9 c0de     ................

c0dec870 <USBD_WEBUSB>:
c0dec870:	98b9 c0de 98e1 c0de 98e5 c0de 0000 0000     ................
c0dec880:	0000 0000 98e9 c0de 9905 c0de 0000 0000     ................
	...
c0dec898:	9ad9 c0de 9ad9 c0de 9ad9 c0de 9ae9 c0de     ................

c0dec8a8 <USBD_DeviceDesc>:
c0dec8a8:	0112 0210 0000 4000 2c97 5000 0201 0201     .......@.,.P....
c0dec8b8:	0103                                        ..

c0dec8ba <USBD_LangIDDesc>:
c0dec8ba:	0304 0409                                   ....

c0dec8be <USBD_MANUFACTURER_STRING>:
c0dec8be:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0dec8cc <USBD_PRODUCT_FS_STRING>:
c0dec8cc:	0318 004e 0061 006e 006f 0020 0053 0020     ..N.a.n.o. .S. .
c0dec8dc:	0050 006c 0075 0073                         P.l.u.s.

c0dec8e4 <USB_SERIAL_STRING>:
c0dec8e4:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0dec8ee <C_winusb_wcid>:
c0dec8ee:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0dec8fe:	0101 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0dec918 <USBD_CfgDesc>:
c0dec918:	0209 0040 0102 c002 0932 0004 0200 0003     ..@.....2.......
c0dec928:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0dec938:	0100 0507 0302 0040 0901 0104 0200 ffff     ......@.........
c0dec948:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0dec958 <USBD_DeviceQualifierDesc>:
c0dec958:	060a 0200 0000 4000 0001                    .......@..

c0dec962 <seph_io_general_status>:
c0dec962:	0060 0002                                    `....

c0dec967 <g_pcHex>:
c0dec967:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0dec977 <g_pcHex_cap>:
c0dec977:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

c0dec988 <_etext>:
	...

c0deca00 <N_storage_real>:
	...

c0decc00 <install_parameters>:
c0decc00:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0decc10:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0decc20:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0decc30:	0000 0400 010a 8002 0000 802c 0000           ..........,....
