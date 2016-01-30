org #1838
ld de,#9b4b
ld a,(#9bec)
ld b,a
.l183f
inc de
inc de
inc de
inc de
djnz l183f
ld hl,#8c8f
ld b,#02
.l184a
push bc
push hl
ld a,(hl)
cp #02
jr nz,l1855
ld c,#04
jr l186e
.l1855
cp #48
jr nz,l185d
ld c,#02
jr l186e
.l185d
inc hl
ld a,(hl)
dec hl
cp #03
jr nz,l1868
ld c,#01
jr l186e
.l1868
cp #47
jr nz,l1880
ld c,#03
.l186e
ld a,e
add c
ld e,a
ld a,(de)
ld b,a
dec hl
dec hl
dec hl
dec hl
dec hl
dec hl
dec hl
dec hl
dec hl
dec hl
call l1889
.l1880
pop hl
ld bc,#0091
add hl,bc
pop bc
djnz l184a
ret
.l1889
ld a,b
cp #80
jr nz,l1892
call #1910
ret
.l1892
jr c,l18ab
push hl
inc hl
inc hl
inc hl
inc hl
inc hl
inc hl
inc hl
inc hl
ld a,(hl)
cp b
jr nz,l18a9
call #18c1
pop hl
push hl
call #1910
.l18a9
pop hl
ret
.l18ab
push hl
inc hl
inc hl
inc hl
inc hl
inc hl
inc hl
inc hl
inc hl
inc hl
ld a,(hl)
pop hl
cp #ff
jr z,l18bd
cp b
ret nz
.l18bd
call #1910
ret
