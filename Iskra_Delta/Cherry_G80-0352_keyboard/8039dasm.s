jmp  $000A
jmp  $0121
nop
jmp  $0141
jtf  $0005
retr
clr  a
mov  r0,a
anl  p2,#$6F
mov  @r0,a
inc  r0
mov  a,r0
jb6  $0016
clr  a
jmp  $000E
sel  rb1
mov  r0,#$38
mov  r1,#$32
mov  r3,#$32
mov  r2,#$B
mov  r6,#$A
sel  rb0
mov  r5,#$3
mov  r0,#$20
mov  a,#$E
outl p1,a
orl  p2,#$10
mov  a,#$F8
mov  t,a
strt t
dis  i
en   tcnti
cpl  f0
mov  r1,#$2C
inc  @r1
mov  r1,#$2F
inc  @r1
mov  r1,#$2C
mov  a,@r1
cpl  a
jb0  $0049
orl  a,#$1
cpl  a
mov  @r1,a
mov  r1,#$2F
mov  a,@r1
mov  r1,#$2C
jmp  $03C9
inc  r0
mov  a,r0
xrl  a,#$2C
jnz  $0051
mov  r0,#$20
call $007E
xrl  a,@r0
jz   $0038
call $00AF
mov  r1,a
anl  a,@r0
jnz  $0065
call $007E
xrl  a,@r0
xrl  a,r1
jnz  $0038
mov  a,r1
jmp  $00B8
mov  r1,a
mov  a,#$F
outl p1,a
anl  p2,#$EF
orl  p2,#$10
call $007E
anl  a,r1
xch  a,r3
mov  a,#$E
outl p1,a
anl  p2,#$EF
orl  p2,#$10
xch  a,r3
jnz  $0038
mov  a,r1
jmp  $0102
mov  a,r0
outl p1,a
anl  p2,#$EF
orl  p2,#$10
orl  p1,#$FF
in   a,p1
jmp  $07C0
mov  a,r4
sel  rb1
inc  r7
mov  @r0,a
inc  r0
mov  a,r0
jb6  $0092
retr
mov  r0,#$38
retr
mov  r1,#$0
jb0  $009D
rr   a
inc  r1
jmp  $0097
mov  a,r0
anl  a,#$1F
rl   a
rl   a
rl   a
orl  a,r1
mov  r4,a
mov  a,#$1
inc  r1
jmp  $00AB
rl   a
djnz r1,$00AA
mov  r3,a
retr
mov  r1,#$1E
djnz r1,$00B1
retr
mov  a,@r0
xrl  a,r3
mov  @r0,a
retr
call $0095
mov  a,r0
xrl  a,#$20
jnz  $00C8
mov  a,r3
jb6  $00F9
jb5  $00F7
jb4  $00F9
jb7  $00F9
sel  rb1
mov  a,r1
sel  rb0
jz   $0038
mov  a,r4
mov  r1,#$2D
mov  @r1,a
call $0384
call $00EE
call $0089
mov  a,r1
sel  rb1
call $0130
sel  rb0
call $00B4
mov  r1,#$20
mov  a,@r1
jb4  $0002
call $02EF
anl  a,r3
jnz  $0002
sel  rb1
mov  r4,#$32
sel  rb0
jmp  $0038
mov  a,t
add  a,#$2
jb7  $00F6
cpl  f1
jf1  $00F4
retr
orl  p2,#$80
call $00B4
call $00EE
call $0089
jmp  $0038
nop
call $0095
mov  r1,#$40
dec  r1
mov  a,#$37
xrl  a,r1
jz   $0114
mov  a,@r1
xrl  a,r4
jz   $0112
jmp  $0106
jmp  $0038
call $00B4
mov  a,r4
xrl  a,#$5
jz   $0127
mov  r1,#$2D
mov  a,@r1
xrl  a,r4
jnz  $0125
sel  rb1
mov  r4,#$0
sel  rb0
jmp  $0038
cpl  f0
jf0  $012C
jmp  $0038
anl  p2,#$7F
jmp  $0038
mov  @r1,a
mov  a,r1
call $013A
mov  r1,a
xrl  a,r3
jnz  $0139
mov  r1,a
retr
inc  a
jb3  $013E
retr
mov  a,#$32
retr
sel  rb0
mov  r7,a
stop tcnt
strt t
mov  a,#$2E
xch  a,r0
mov  @r0,a
mov  a,#$F8
mov  t,a
mov  a,r2
jz   $019F
djnz r5,$019F
mov  r5,#$3
djnz r2,$0157
jmp  $0168
xrl  a,#$A
jz   $016C
mov  a,r6
jb0  $0162
anl  p2,#$DF
jmp  $0164
orl  p2,#$20
rr   a
mov  r6,a
jmp  $019F
orl  p2,#$20
jmp  $019F
anl  p2,#$DF
jmp  $019F
sel  rb1
mov  a,r3
xrl  a,r1
jz   $01E7
mov  a,r3
xch  a,r1
jnz  $0180
mov  a,@r1
xch  a,r3
call $013A
xch  a,r3
jmp  $0187
xch  a,r3
mov  a,@r1
xch  a,r1
call $013A
xch  a,r3
xch  a,r1
sel  rb0
mov  r6,a
mov  r2,#$A
movx @r1,a
jt0  $018F
outl bus,a
movd p4,a
mov  r0,#$2C
mov  a,@r0
jb3  $01E7
mov  r0,#$31
mov  a,@r0
jnz  $01E7
mov  a,#$A
mov  @r0,a
jmp  $01E7
sel  rb1
mov  a,r2
dec  a
jz   $01C1
xrl  a,#$A
jz   $01B8
mov  a,r2
xrl  a,#$A
jnz  $01D0
jni  $01B3
mov  r2,#$B
jmp  $01E3
mov  r5,#$3
dec  r2
jmp  $01E3
jni  $01BC
jmp  $01E3
mov  r5,#$1
dec  r2
jmp  $01E3
djnz r5,$01E3
mov  r2,#$B
jni  $01E3
sel  rb0
mov  r0,#$2C
mov  a,@r0
orl  a,#$1
mov  @r0,a
jmp  $01E3
djnz r5,$01E3
mov  r5,#$3
dec  r2
sel  rb0
mov  r0,#$2F
mov  a,@r0
rr   a
jni  $01E0
orl  a,#$80
jmp  $01E2
anl  a,#$7F
mov  @r0,a
sel  rb0
mov  a,r2
jz   $0170
sel  rb0
mov  r0,#$31
mov  a,@r0
jz   $01F1
dec  a
mov  @r0,a
jmp  $01F5
orl  p2,#$40
jmp  $01F9
in   a,p2
xrl  a,#$40
outl p2,a
sel  rb1
djnz r6,$01FE
jmp  $0200
jmp  $0227
mov  r6,#$9
mov  a,r7
jz   $0207
djnz r7,$020A
clr  a
call $008C
mov  a,r4
jz   $0227
djnz r4,$0227
mov  r4,#$5
sel  rb0
mov  a,r6
movx @r1,a
jt0  $0217
outl bus,a
movd p4,a
mov  r2,#$A
mov  r0,#$2C
mov  a,@r0
jb3  $0227
mov  r0,#$31
mov  a,@r0
jnz  $0227
mov  a,#$A
mov  @r0,a
sel  rb0
mov  r0,#$2E
mov  a,@r0
mov  r0,a
mov  a,r7
clr  f1
retr
movp a,@a
retr
mov  a,@r1
orl  a,#$8
mov  @r1,a
jmp  $0049
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
anl  bus,#$0
nop
nop
nop
nop
nop
inc  r3
xchd a,@r1
in   a,p1
addc a,@r1
add  a,@r1
.db   0x73
retr
mov  @r0,a
jb1  $0233
rr   a
stop tcnt
jmp  $0366
addc a,r1
addc a,r0
call $0135
jb3  $0274
rrc  a
add  a,r0
.db   0x63
jf1  $0236
cpl  a
addc a,r2
ent0 clk
add  a,r2
add  a,r3
mov  t,a
add  a,r6
.db   0x38
outl p1,a
add  a,r1
add  a,r7
add  a,r4
addc a,r6
add  a,r5
xch  a,r4
xchd a,@r0
xch  a,r5
addc a,@r0
addc a,r3
addc a,r5
movd a,p5
xch  a,r6
add  a,@r0
movd p5,a
xch  a,r7
addc a,r4
call $063C
mov  @r1,#$B0
in   a,p2
ins  a,bus
movx a,@r0
addc a,r7
call $05B2
jmpp @a
nop
mov  r6,a
.db   0xb7
mov  r0,#$B5
jf0  $0285
jmp  $0488
orl  p2,#$B9
mov  r5,a
mov  r4,a
.db   0x87
jni  $02F5
orld p4,a
.db   0x8b
mov  a,@r0
jmp  $05A3
.db   0xa2
mov  @r1,a
orld p5,a
clr  f1
xch  a,@r0
nop
anl  bus,#$0
nop
nop
nop
nop
nop
inc  r3
xch  a,@r1
in   a,p1
anl  a,@r1
orl  a,@r1
anl  a,#$93
mov  @r0,a
.db   0x22
mov  a,#$57
strt cnt
jmp  $0246
anl  a,r1
anl  a,r0
jmp  $0125
jb2  $0254
swap a
orl  a,r0
orl  a,#$56
clr  a
jnt0 $025A
strt t
orl  a,r2
orl  a,r3
mov  a,t
orl  a,r6
xch  a,r2
xch  a,r0
orl  a,r1
orl  a,r7
orl  a,r4
anl  a,r6
orl  a,r5
.db   0x3b
xch  a,r1
anl  a,r7
anl  a,@r0
anl  a,r3
anl  a,r5
movd a,p5
outl p2,a
orl  a,@r0
xch  a,r3
movd p7,a
anl  a,r4
.db   0xd6
movd p6,a
mov  @r1,#$B0
in   a,p2
ins  a,bus
movx a,@r0
addc a,r7
nop
.db   0x38
mov  a,r4
mov  a,r4
mov  a,r4
addc a,r4
anld p4,a
jmp  $0000
nop
nop
nop
mov  a,r0
add  a,#$D4
movp a,@a
ret
outl bus,a
strt cnt
nop
nop
nop
nop
xch  a,@r0
nop
outl bus,a
nop
nop
nop
nop
anl  bus,#$0
nop
nop
nop
nop
nop
inc  r3
xchd a,@r1
in   a,p1
inc  @r1
.db   0x01
addc a,#$93
mov  @r0,a
jb1  $0333
inc  a
en   i
jmp  $0006
inc  r1
inc  r0
call $0135
jb0  $0314
dec  a
ins  a,bus
add  a,#$16
jt0  $0337
inc  r2
dis  i
in   a,p2
.db   0x0b
outl bus,a
movd a,p6
.db   0x38
outl p1,a
in   a,p1
movd a,p7
movd a,p4
inc  r6
movd a,p5
xch  a,r4
xchd a,@r0
xch  a,r5
inc  @r0
inc  r3
inc  r5
movd a,p5
xch  a,r6
nop
movd p5,a
xch  a,r7
inc  r4
call $063C
mov  @r1,#$B0
in   a,p2
ins  a,bus
movx a,@r0
nop
anl  bus,#$0
nop
nop
nop
nop
nop
inc  r3
xch  a,@r1
in   a,p1
inc  @r1
.db   0x01
addc a,#$93
mov  @r0,a
.db   0x22
mov  a,#$17
en   i
jmp  $0006
inc  r1
inc  r0
jmp  $0125
jb0  $0314
dec  a
ins  a,bus
add  a,#$16
clr  a
jnt0 $031A
dis  i
in   a,p2
.db   0x0b
outl bus,a
movd a,p6
xch  a,r2
xch  a,r0
in   a,p1
movd a,p7
movd a,p4
inc  r6
movd a,p5
.db   0x3b
xch  a,r1
anl  a,r7
inc  @r0
inc  r3
inc  r5
movd a,p5
outl p2,a
nop
xch  a,r3
movd p7,a
inc  r4
.db   0xd6
movd p6,a
mov  @r1,#$B0
in   a,p2
ins  a,bus
movx a,@r0
mov  r1,#$20
mov  a,@r1
jb4  $03A2
jb6  $0397
jb7  $0397
in   a,p2
jb7  $03BA
mov  a,r4
add  a,#$40
call $022F
jmp  $03C4
mov  a,r4
add  a,#$3E
jb7  $0390
add  a,#$62
call $022F
jmp  $03C4
jb6  $03AF
jb7  $03AF
mov  a,r4
add  a,#$3E
jb7  $0390
mov  a,r4
movp3 a,@a
jmp  $03C4
mov  a,r4
add  a,#$3E
jb7  $0390
mov  a,r4
add  a,#$42
movp3 a,@a
jmp  $03C4
mov  a,r0
add  a,#$C3
call $022F
anl  a,r3
jz   $0390
jmp  $0397
jnt1 $03C7
cpl  a
mov  r1,a
retr
jb0  $03D9
jb1  $03E2
jb2  $03E9
jb3  $03ED
jb4  $03EF
mov  a,@r1
anl  a,#$F7
mov  @r1,a
jmp  $0049
mov  r1,#$30
mov  @r1,a
anl  p2,#$EF
outl p1,a
movx a,@r1
jmp  $0049
mov  a,#$64
mov  r1,#$31
mov  @r1,a
jmp  $0049
mov  a,#$FF
jmp  $03E4
jmp  $0231
sel  rb1
mov  a,r1
sel  rb0
jnz  $03F6
jmp  $0049
call $00EE
mov  a,#$AA
sel  rb1
call $0130
sel  rb0
jmp  $0049
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
rlc  a
jnc  $07DA
rlc  a
jnc  $07DD
rlc  a
jnc  $07E0
rlc  a
jnc  $07E3
rlc  a
jnc  $07E6
rlc  a
jnc  $07E9
rlc  a
jnc  $07EC
rlc  a
rlc  a
cpl  a
ret
mov  a,r7
rlc  a
jnc  $07EF
rlc  a
jnc  $07EF
rlc  a
jnc  $07EF
rlc  a
jnc  $07EF
rlc  a
jnc  $07EF
rlc  a
jnc  $07EF
rlc  a
jc   $07D6
mov  a,#$FF
jmp  $07D7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
mov  a,r7
