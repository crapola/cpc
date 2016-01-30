org #04cb
.statistics
nop
add b ;B=1
;Count rooms visited
;25 bytes are set to 01 at 0B65 onwards when
;room was visited
ld hl,#0b65
ld b,#19 ; 25 rooms
xor a
ld c,a
.loop1
ld a,(hl)
and a
jr z,l04db
inc c
ld (hl),#00
.l04db
inc hl
djnz loop1

ld b,c
ld c,#80
ld a,(#9b79)
cp c
jr nz,l0508
inc b
inc b
inc b
ld a,(#9bac)
cp c
jr nz,l0508
ld a,#05
add b
ld b,a
ld a,(#9b96)
cp c
jr nz,l0508
ld a,#08
add b
ld b,a
ld a,(#9b6f)
cp c
jr nz,l0508
ld a,#0d
add b
ld b,a
.l0508
ld d,#60
ld hl,#3b39
call #0b7e
ld a,e
and a
jr z,l051f
ld hl,#19d6
.l0517
inc (hl)
dec a
jr nz,l0517
ld a,e
add a
add b
ld b,a
.l051f
ld d,#61
ld hl,#3b33
call #0b7e
ld a,e
and a
jr z,l053a
ld hl,#19e3
.l052e
inc (hl)
dec a
jr nz,l052e
ld a,b
ld c,#05
.l0535
add c
dec e
jr nz,l0535
ld b,a
.l053a
ld d,#62
ld hl,#3b2d
call #0b7e
ld a,e
and a
jr z,l0555
ld hl,#19ee
.l0549
inc (hl)
dec a
jr nz,l0549
ld a,b
ld c,#09
.l0550
add c
dec e
jr nz,l0550
ld b,a
.l0555
ld a,b
ld c,#0a
ld e,#00
.l055a
sub c
jr c,l0560
inc e
jr l055a
.l0560
ld a,#30
add e
ld (#19c8),a
xor a
ld c,#0a
.l0569
add c
dec e
jr nz,l0569
ld c,a
ld a,b
sub c
add #30
ld (#19c9),a
ret
