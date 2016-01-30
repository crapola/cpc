org #a1bd
ld b,#02
ld hl,#a15a
ld de,#8c82
.la1c5
push bc
push hl
push de
ld bc,#000f
ldir
pop hl
ld de,#0091
add hl,de
ex de,hl
pop hl
pop bc
djnz la1c5
ld hl,#8d18
ld (hl),#93
inc hl
ld (hl),#26
ld hl,#8d1f
ld (hl),#02
ld b,#02
ld hl,#8c91
.la1e9
push bc
push hl
ld b,#82
xor a
.la1ee
ld (hl),a
inc hl
djnz la1ee
pop hl
ld bc,#0091
add hl,bc
pop bc
djnz la1e9
ld hl,#8da5
ld b,#03
.la1ff
push bc
ld (hl),#18
ld bc,#0091
add hl,bc
pop bc
djnz la1ff
ld hl,#a169
ld de,#3af7
ld bc,#0054
ldir ; Repeats LDI (LD (DE),(HL), then increments DE, HL, and decrements BC) until BC=0. Note that if BC=0 before this instruction is called, it will loop around until BC=0 again.
ld hl,#9b5a
ld (hl),#82
ld hl,#9b79
ld (hl),#ff
ld hl,#9b96
ld (hl),#84
ld hl,#9ba6
ld (hl),#84
ld hl,#9bac
ld (hl),#83
ld hl,#26dc
ld (hl),#2a
ld hl,#26ed
ld (hl),#2b
ld hl,#26ff
ld (hl),#2b
ld hl,#2711
ld (hl),#3d
ld hl,#3573
ld (hl),#5a
ld hl,#3584
ld (hl),#5b
ld hl,#3596
ld (hl),#5b
ld hl,#35a8
ld (hl),#5c
ret