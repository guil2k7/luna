	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"main.cc"
	.globl	CreateBar                       @ -- Begin function CreateBar
	.p2align	2
	.type	CreateBar,%function
	.code	32                              @ @CreateBar
CreateBar:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	movw	r0, #4
	bl	_Znwj
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #0
	movw	r2, #4
	and	r1, r1, #255
	bl	memset
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	_ZN3BarC2Ev
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	CreateBar, .Lfunc_end0-CreateBar
	.fnend
                                        @ -- End function
	.section	.text._ZN3BarC2Ev,"axG",%progbits,_ZN3BarC2Ev,comdat
	.weak	_ZN3BarC2Ev                     @ -- Begin function _ZN3BarC2Ev
	.p2align	2
	.type	_ZN3BarC2Ev,%function
	.code	32                              @ @_ZN3BarC2Ev
_ZN3BarC2Ev:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
	bl	_ZN3FooC2Ev
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, .LCPI1_0
.LPC1_0:
	add	r1, pc, r1
	add	r1, r1, #8
	str	r1, [r0]
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	_ZTV3Bar-(.LPC1_0+8)
.Lfunc_end1:
	.size	_ZN3BarC2Ev, .Lfunc_end1-_ZN3BarC2Ev
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._ZN3FooC2Ev,"axG",%progbits,_ZN3FooC2Ev,comdat
	.weak	_ZN3FooC2Ev                     @ -- Begin function _ZN3FooC2Ev
	.p2align	2
	.type	_ZN3FooC2Ev,%function
	.code	32                              @ @_ZN3FooC2Ev
_ZN3FooC2Ev:
	.fnstart
@ %bb.0:
	.pad	#4
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, .LCPI2_0
.LPC2_0:
	add	r1, pc, r1
	add	r1, r1, #8
	str	r1, [r0]
	add	sp, sp, #4
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI2_0:
	.long	_ZTV3Foo-(.LPC2_0+8)
.Lfunc_end2:
	.size	_ZN3FooC2Ev, .Lfunc_end2-_ZN3FooC2Ev
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._ZN3Bar13_getBoundRectEPv,"axG",%progbits,_ZN3Bar13_getBoundRectEPv,comdat
	.weak	_ZN3Bar13_getBoundRectEPv       @ -- Begin function _ZN3Bar13_getBoundRectEPv
	.p2align	2
	.type	_ZN3Bar13_getBoundRectEPv,%function
	.code	32                              @ @_ZN3Bar13_getBoundRectEPv
_ZN3Bar13_getBoundRectEPv:
	.fnstart
@ %bb.0:
	@APP
	push	{lr}
	ldr	r2, .Ltmp1
	ldr	r3, g_gameAddress
	add	r2, r2, r3
	blx	r2
	pop	{pc}
.Ltmp0:
	.long	4247017

	@NO_APP
	.inst	0xe7ffdefe
.Lfunc_end3:                            @ trap
	.size	_ZN3Bar13_getBoundRectEPv, .Lfunc_end3-_ZN3Bar13_getBoundRectEPv
	.cantunwind
	.fnend
                                        @ -- End function
	.type	g_gameAddress,%object           @ @g_gameAddress
	.bss
	.globl	g_gameAddress
	.p2align	2, 0x0
g_gameAddress:
	.long	0
	.size	g_gameAddress, 4

	.type	_ZTV3Bar,%object                @ @_ZTV3Bar
	.section	.data.rel.ro._ZTV3Bar,"aGw",%progbits,_ZTV3Bar,comdat
	.weak	_ZTV3Bar
	.p2align	2, 0x0
_ZTV3Bar:
	.long	0
	.long	_ZTI3Bar
	.long	_ZN3Bar13_getBoundRectEPv
	.size	_ZTV3Bar, 12

	.type	_ZTS3Bar,%object                @ @_ZTS3Bar
	.section	.rodata._ZTS3Bar,"aG",%progbits,_ZTS3Bar,comdat
	.weak	_ZTS3Bar
_ZTS3Bar:
	.asciz	"3Bar"
	.size	_ZTS3Bar, 5

	.type	_ZTS3Foo,%object                @ @_ZTS3Foo
	.section	.rodata._ZTS3Foo,"aG",%progbits,_ZTS3Foo,comdat
	.weak	_ZTS3Foo
_ZTS3Foo:
	.asciz	"3Foo"
	.size	_ZTS3Foo, 5

	.type	_ZTI3Foo,%object                @ @_ZTI3Foo
	.section	.data.rel.ro._ZTI3Foo,"aGw",%progbits,_ZTI3Foo,comdat
	.weak	_ZTI3Foo
	.p2align	2, 0x0
_ZTI3Foo:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS3Foo
	.size	_ZTI3Foo, 8

	.type	_ZTI3Bar,%object                @ @_ZTI3Bar
	.section	.data.rel.ro._ZTI3Bar,"aGw",%progbits,_ZTI3Bar,comdat
	.weak	_ZTI3Bar
	.p2align	2, 0x0
_ZTI3Bar:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS3Bar
	.long	_ZTI3Foo
	.size	_ZTI3Bar, 12

	.type	_ZTV3Foo,%object                @ @_ZTV3Foo
	.section	.data.rel.ro._ZTV3Foo,"aGw",%progbits,_ZTV3Foo,comdat
	.weak	_ZTV3Foo
	.p2align	2, 0x0
_ZTV3Foo:
	.long	0
	.long	_ZTI3Foo
	.long	__cxa_pure_virtual
	.size	_ZTV3Foo, 12

	.section	.text._ZN3Bar13_getBoundRectEPv,"axG",%progbits,_ZN3Bar13_getBoundRectEPv,comdat
	.p2align	2, 0x0
.Ltmp1:
	.long	.Ltmp0
	.ident	"Android (12027248, +pgo, +bolt, +lto, +mlgo, based on r522817) clang version 18.0.1 (https://android.googlesource.com/toolchain/llvm-project d8003a456d14a3deb8054cdaa529ffbf02d9b262)"
	.section	".note.GNU-stack","",%progbits
