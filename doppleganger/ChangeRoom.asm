;Change room after going through a door
;======================================
ORG #1910
; HL=Current player position
; C=Cardinal direction (N1 E2 S3 W4)
; N/\E
; W\/S
DEC HL
DEC HL
; HL now points to current room
PUSH BC
PUSH DE
; North
LD A,#01
CP C ; F=A-C
JR NZ,East
INC (HL)
LD C,#67
LD DE,#C626
EX DE,HL
CALL #BC29 ; SCR_PREV_LINE, get byte above (HL) in HL
EX DE,HL
LD B,#26
LD A,#45
JR Finish

.East
INC A
CP C
JR NZ,South
LD A,(HL)
ADD #05
LD (HL),A
LD C,#67
LD DE,#C605
EX DE,HL
CALL #BC29
EX DE,HL
LD B,#05
LD A,#24
JR Finish

.South
INC A
CP C
JR NZ,West
DEC (HL)
LD C,#2A
LD DE,#CB84
EX DE,HL
CALL #BC26
EX DE,HL
LD B,#23
LD A,#06
JR Finish

.West
LD A,(HL)
SUB #05
LD (HL),A
LD C,#29
LD DE,#C3A7
EX DE,HL
CALL #BC26
EX DE,HL
LD A,#27
LD B,#45

.Finish
DEC HL
LD (HL),C
INC HL
INC HL
; Set new onscreen sprite position
LD (HL),D
INC HL
LD (HL),E
INC HL
LD (HL),#00
INC HL
INC HL
INC HL
INC HL
INC HL
INC HL
INC HL
INC HL
INC HL
LD (HL),B
INC HL
LD (HL),A
POP BC
POP DE
RET
