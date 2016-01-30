org #0405
ld a,(#1ad6)
and a
jr z,l0424
ld h,#4a
ld l,#04
ld (#8c87),hl
ld (#8d18),hl
xor a
ld (#8c89),a
ld (#8d1a),a
ld a,#01
ld (#8c86),a
ld (#8d17),a
.l0424
xor a
ld (#9d33),a
ld (#9d3e),a
ld a,#c9
ld (#07d0),a
ld (#1afc),a
ld b,#64
.l0435
push bc
;call #a256
pop bc
djnz l0435
ld a,#cd
ld (#07d0),a
ld a,#35
ld (#1afc),a
call #04cb
ret
