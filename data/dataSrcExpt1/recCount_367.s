;
; File generated by cc65 v 2.14.0
;
	.fopt		compiler,"cc65 v 2.14.0"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.export		_i
	.export		_r
	.export		_main

.segment	"DATA"

_i:
	.word	$016F

; ---------------------------------------------------------------
; void __near__ r (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_r: near

.segment	"CODE"

	lda     _i
	ldx     _i+1
	cpx     #$01
	bne     L0005
	cmp     #$79
L0005:	jsr     booleq
	jeq     L0003
	jmp     L0002
L0003:	lda     _i
	ldx     _i+1
	sta     regsave
	stx     regsave+1
	jsr     incax1
	sta     _i
	stx     _i+1
	lda     regsave
	ldx     regsave+1
	jsr     _r
L0002:	rts

.endproc

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

	jsr     _r
	ldx     #$00
	lda     #$00
	jmp     L0008
L0008:	rts

.endproc
