.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x13, 0x40001104
                  csrw 0x301, x13
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  li x13, 0x0
                  csrw 0x304, x13 # MIE
                  mret
init:             
                  li x0, 0xfd0f4b17
                  li x1, 0x6
                  li x2, 0x2
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0xf508724d
                  li x6, 0xf801e96c
                  li x7, 0x2
                  li x8, 0x80000000
                  li x9, 0x3
                  li x10, 0xfa1c20e9
                  li x11, 0xfeed1615
                  li x12, 0x3
                  li x13, 0x0
                  li x14, 0x8
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x2
                  li x18, 0xa
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xe
                  li x23, 0x0
                  li x24, 0xf0a849be
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x5
                  li x28, 0x80000000
                  li x30, 0xf53291ee
                  la x29, user_stack_end
main:             li         t1, 0x0 #start riscv_int_numeric_corner_stream_14
                  li         t3, 0x1
                  li         s11, 0x29cad1d9
                  li         s9, 0x1
                  li         a1, 0x0
                  li         ra, 0x1
                  li         t0, 0x1d5e6375
                  li         s8, 0x1
                  li         s1, 0x1
                  li         s10, 0x0
                  c.addi4spn  a3, sp, 576
                  addi        a4, a2, 1506
                  add         zero, s5, s3
                  add         a0, s0, s8
                  c.mv        sp, t0
                  c.sub       a3, a3
                  c.mv        s4, s1
                  c.mv        s1, s5
                  divu        a0, a0, s2
                  c.nop
                  nop
                  c.addi16sp  sp, -16
                  div         s2, t1, a7
                  c.add       ra, s8
                  mulh        s0, a6, s7
                  c.nop
                  c.addi      s5, -1
                  c.addi      s4, -1
                  c.mv        sp, a6
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 336
                  divu        a0, t3, t4 #end riscv_int_numeric_corner_stream_14
                  li         s1, 0x0 #start riscv_int_numeric_corner_stream_4
                  li         t3, 0x2bc8f884
                  li         s11, 0x3da2d8a4
                  li         s10, 0x6ab157af
                  li         s9, 0x1
                  li         tp, 0x0
                  li         a3, 0x0
                  li         t1, 0x0
                  li         ra, 0x0
                  li         t0, 0x0
                  c.nop
                  c.add       a7, a5
                  div         s4, t5, s7
                  c.lui       s9, 14
                  mul         a4, sp, t3
                  c.lui       tp, 14
                  c.nop
                  mulhu       zero, a4, s3
                  c.addi4spn  a3, sp, 640
                  nop
                  c.addi      a2, 26
                  addi        s9, s1, -1779
                  add         s10, a1, a1
                  c.lui       ra, 21
                  c.mv        s9, s3
                  div         ra, s4, s3
                  mulh        t0, a5, t3
                  div         s4, t5, a7
                  lui         a1, 927042
                  c.nop
                  mulh        s8, sp, gp
                  c.add       s6, t4
                  addi        t2, t1, 655
                  c.addi16sp  sp, 384
                  addi        s8, a6, 290
                  sub         s2, s11, zero
                  c.sub       a3, a3
                  addi        s9, a0, -1937
                  rem         zero, t4, t1
                  c.addi4spn  a3, sp, 640
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_9
                  li         s11, 0x0
                  li         s10, 0x1
                  li         s0, 0x0
                  li         s5, 0x1
                  li         a0, 0x1
                  li         t2, 0x35d7c013
                  li         s8, 0x0
                  li         a4, 0x1
                  li         s3, 0x1
                  c.li        t0, -1
                  addi        a1, s3, -1305
                  c.addi      ra, -1
                  mulhu       s5, a4, s0
                  rem         s9, zero, t3
                  addi        a2, gp, -1768
                  add         t1, t2, s1
                  addi        gp, s1, 954
                  c.mv        a4, s1
                  c.nop
                  mul         s3, t2, t2
                  div         s5, a0, s1
                  auipc       s11, 1045045
                  mulhsu      zero, s9, s9
                  c.li        s11, 19
                  add         t2, s6, a4
                  rem         s3, a7, t6
                  mul         s8, a4, s10
                  div         s9, a0, t2
                  lui         s5, 849210
                  divu        sp, t3, gp
                  c.lui       ra, 27
                  divu        gp, a5, t2
                  c.lui       ra, 13
                  c.addi16sp  sp, 16
                  c.lui       s10, 9
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_20
                  li         s3, 0x0
                  li         t2, 0x1
                  li         s11, 0x1
                  li         s6, 0x2020d5bf
                  li         s10, 0x67682f5f
                  li         s9, 0x0
                  li         a3, 0x1
                  li         s1, 0x77c8b289
                  li         s8, 0x0
                  c.addi16sp  sp, 448
                  c.nop
                  mulh        a2, sp, t4
                  rem         ra, s8, a2
                  auipc       s2, 926436
                  mulhsu      s0, a6, s0
                  rem         sp, t5, zero
                  sub         t0, t2, t2
                  c.lui       a7, 27
                  auipc       sp, 254826
                  c.addi16sp  sp, -16
                  rem         a4, a3, s2
                  c.addi      a3, 1
                  sub         s4, t6, s8
                  c.addi4spn  a3, sp, 576
                  addi        s10, sp, 1443
                  c.sub       s1, a5
                  divu        tp, s10, s0
                  c.addi      sp, 29
                  nop
                  auipc       s3, 94024
                  c.add       a2, s3
                  c.nop
                  sub         a4, ra, s3
                  sub         a4, a4, s3
                  mul         s3, s1, s0
                  lui         a7, 814786
                  sub         s4, t1, s9
                  addi        a1, s9, 1739
                  c.addi16sp  sp, 16
                  li         s4, 0x4b477c9a #start riscv_int_numeric_corner_stream_15
                  li         gp, 0x0
                  li         t0, 0x0
                  li         s11, 0x1
                  li         a3, 0x0
                  li         a2, 0x227408aa
                  li         s6, 0x0
                  li         t3, 0x0
                  li         tp, 0x0
                  li         s10, 0x0
                  mulh        s5, t3, s10
                  c.add       ra, gp
                  add         t2, s6, s2
                  addi        t0, s9, 1506
                  auipc       s6, 349308
                  c.add       s4, s2
                  auipc       a4, 166507
                  mulhu       s5, t0, gp
                  div         t2, a7, s4
                  addi        zero, a3, 72
                  mulhsu      s6, t5, t0
                  div         s11, t5, a5
                  div         a5, s8, zero
                  auipc       gp, 807245
                  add         a2, t1, s10
                  c.addi      s2, -1
                  mul         a5, a4, a7
                  c.addi4spn  a3, sp, 640
                  addi        t2, a2, 80
                  c.nop
                  c.sub       a3, a3
                  divu        a1, s4, t3
                  c.addi16sp  sp, 96
                  nop
                  div         a2, t5, gp #end riscv_int_numeric_corner_stream_15
                  li         a3, 0x1c89c3c6 #start riscv_int_numeric_corner_stream_11
                  li         t3, 0x0
                  li         a5, 0x0
                  li         s11, 0x1
                  li         s7, 0x0
                  li         s10, 0x0
                  li         s0, 0x1
                  li         s9, 0x1c33c9c3
                  li         s8, 0x6bc99af2
                  li         a0, 0x0
                  c.li        s1, 12
                  rem         a4, a3, t1
                  c.addi16sp  sp, -16
                  c.nop
                  c.nop
                  c.addi4spn  a5, sp, 384
                  nop
                  c.lui       a1, 1
                  divu        s6, s10, sp
                  c.sub       a2, a3
                  c.mv        s2, a5
                  rem         a1, s2, t1
                  addi        s6, s7, 242
                  c.sub       a3, a3
                  divu        a3, t5, s6
                  c.addi16sp  sp, 256
                  c.add       s9, t6
                  c.addi16sp  sp, 48
                  nop
                  mulhsu      a4, s9, a7
                  c.addi      a5, -1
                  sub         sp, tp, a5
                  c.addi      s11, 2
                  c.lui       s0, 6
                  mulhu       zero, t0, a7
                  addi        gp, s5, 904 #end riscv_int_numeric_corner_stream_11
                  li         s11, 0x0 #start riscv_int_numeric_corner_stream_12
                  li         s8, 0x0
                  li         s4, 0x1
                  li         t0, 0x0
                  li         s10, 0x3fe3f774
                  li         a2, 0x1
                  li         s6, 0x0
                  li         t3, 0x2bb9d3c1
                  li         a1, 0x1
                  li         a5, 0x0
                  c.nop
                  c.lui       a2, 23
                  c.nop
                  div         zero, a1, t5
                  c.li        a5, -1
                  c.nop
                  c.addi16sp  sp, 128
                  c.sub       a3, a5
                  add         s11, a5, a5
                  div         s8, t1, a1
                  auipc       s1, 907563
                  c.add       s7, s7
                  c.addi4spn  a3, sp, 704
                  div         s0, sp, sp
                  rem         s7, t5, s2
                  c.sub       a3, a3
                  c.li        a4, -1
                  c.sub       a3, a3
                  mulh        s0, t2, s3
                  mulh        a0, s11, sp
                  mulh        t2, s3, s11
                  sub         s0, t6, a4
                  c.lui       tp, 13
                  div         a2, s11, t6
                  auipc       a2, 97766
                  c.lui       ra, 29
                  li         s10, 0x6ef25d10 #start riscv_int_numeric_corner_stream_13
                  li         tp, 0x0
                  li         t3, 0x79e160a
                  li         s11, 0x1
                  li         sp, 0x1
                  li         s8, 0x1
                  li         s1, 0x1
                  li         a0, 0x1
                  li         a4, 0x4c1b560
                  li         s0, 0x4b1b2b06
                  mulh        a0, s7, tp
                  c.add       ra, a3
                  c.addi4spn  a3, sp, 832
                  c.lui       tp, 3
                  rem         t2, t4, a5
                  c.addi4spn  a3, sp, 896
                  c.addi16sp  sp, 128
                  nop
                  c.nop
                  c.add       s3, t4
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 496
                  c.addi16sp  sp, -16
                  c.nop
                  divu        a7, s10, a3
                  c.add       ra, sp
                  mul         zero, sp, s1
                  mulh        a3, s7, tp
                  c.sub       a3, a0
                  divu        s0, s6, a2
                  c.addi      s3, 12
                  sub         a3, s2, a6
                  mul         s2, t3, s0
                  c.addi4spn  a3, sp, 320
                  mulhsu      s11, s8, a2
                  div         sp, gp, s9
                  auipc       a1, 375732
                  add         s10, s1, a1 #end riscv_int_numeric_corner_stream_13
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_6
                  li         s11, 0x0
                  li         s0, 0x0
                  li         a5, 0x0
                  li         s1, 0x0
                  li         gp, 0x1
                  li         s10, 0x0
                  li         s9, 0x0
                  li         a0, 0x560fcbf2
                  li         a1, 0x2e60dcec
                  add         gp, tp, a1
                  c.addi4spn  a3, sp, 320
                  rem         zero, t2, s2
                  rem         s2, s10, sp
                  c.addi16sp  sp, 112
                  mulhsu      s1, s0, t4
                  c.addi16sp  sp, 144
                  add         ra, s10, s5
                  c.lui       a0, 6
                  mulhsu      s10, t1, s1
                  c.lui       s1, 31
                  div         t2, zero, tp
                  c.addi4spn  a3, sp, 64
                  lui         ra, 310336
                  c.addi      s9, 29
                  c.addi16sp  sp, 32
                  nop
                  c.addi4spn  a3, sp, 608
                  c.sub       a3, a3
                  c.mv        t1, s11
                  c.addi4spn  a3, sp, 320
                  c.sub       a4, a2
                  c.addi4spn  a3, sp, 384
                  c.sub       a3, a3
                  c.addi16sp  sp, 448
                  mul         ra, ra, ra #end riscv_int_numeric_corner_stream_6
                  li         s11, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         sp, 0x0
                  li         s10, 0x1
                  li         s1, 0x0
                  li         s4, 0x0
                  li         t3, 0x439b9205
                  li         s0, 0x0
                  li         s9, 0x0
                  li         s2, 0x0
                  li         s8, 0x0
                  c.nop
                  c.mv        t2, a1
                  auipc       s0, 732689
                  c.addi4spn  a3, sp, 384
                  addi        a1, zero, -165
                  c.addi4spn  a3, sp, 384
                  mul         zero, s3, s9
                  mulhsu      s10, a0, t4
                  c.addi      sp, 20
                  lui         s7, 92909
                  c.addi4spn  s0, sp, 96
                  mulhu       a4, tp, t2
                  add         s1, sp, gp
                  c.li        s1, 3
                  mulhu       s9, sp, a4
                  sub         s4, s0, s0
                  c.sub       a3, a3
                  rem         s0, a4, a4
                  c.addi4spn  a3, sp, 272
                  rem         a7, s9, ra
                  c.addi4spn  a3, sp, 128
                  c.nop
                  divu        s10, t3, a6
                  c.sub       s0, a3
                  c.sub       a3, a3
                  c.mv        s9, s4
                  c.add       gp, s0
                  sub         tp, s0, a7 #end riscv_int_numeric_corner_stream_1
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_3
                  li         a1, 0x5c9186fc
                  li         s11, 0x0
                  li         s10, 0x1
                  li         s0, 0x284ae550
                  li         sp, 0x0
                  li         a0, 0x0
                  li         a6, 0x0
                  li         a2, 0x0
                  li         s8, 0x99456c3
                  c.li        ra, 11
                  lui         zero, 415478
                  add         s0, s4, s8
                  auipc       a3, 670875
                  c.addi4spn  a0, sp, 592
                  lui         a5, 633242
                  lui         t0, 687049
                  c.li        s6, -1
                  sub         t0, sp, zero
                  addi        s5, a2, 909
                  c.addi      a3, -1
                  mulhu       s6, t5, s3
                  c.nop
                  c.add       s11, gp
                  div         a4, t2, t0
                  c.mv        ra, s11
                  div         s6, t0, a7
                  rem         s11, t0, a6
                  div         a2, s4, s0
                  c.addi16sp  sp, -16
                  c.mv        sp, s10
                  c.mv        sp, s1
                  mulhsu      tp, zero, s11
                  c.addi4spn  a3, sp, 384
                  divu        s9, s11, s3
                  mulh        a2, s6, zero
                  c.add       s6, ra
                  lui         zero, 63296
                  sub         a4, t5, s5
                  c.sub       a3, a3
                  li         a5, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         a6, 0x4e9866a9
                  li         t3, 0x0
                  li         s11, 0x1
                  li         s10, 0x1
                  li         sp, 0x1
                  li         s6, 0x0
                  li         s2, 0x4239cf27
                  li         a0, 0x33d78cfa
                  li         s0, 0x75e0d175
                  divu        t2, sp, a3
                  mulh        a1, s8, s2
                  c.addi      t1, -1
                  mul         s1, t3, t0
                  c.nop
                  c.sub       a2, a3
                  sub         a5, a3, gp
                  c.sub       a3, a3
                  c.mv        s6, s4
                  c.addi16sp  sp, 96
                  sub         s11, t5, s6
                  c.mv        s9, gp
                  rem         t2, a7, a5
                  c.li        s0, 21
                  mulhu       a3, zero, t1
                  nop #end riscv_int_numeric_corner_stream_7
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_5
                  li         s11, 0x1
                  li         s10, 0x1
                  li         s9, 0x0
                  li         ra, 0x2779a1a4
                  li         s1, 0x7b4ee9d5
                  li         s4, 0x0
                  li         a7, 0x0
                  li         a2, 0x1
                  li         s3, 0x1
                  lui         a0, 160818
                  div         a7, s5, zero
                  c.li        ra, 7
                  c.li        t1, -1
                  add         s11, a6, a4
                  c.addi4spn  a3, sp, 864
                  sub         s3, a2, t6
                  c.nop
                  c.nop
                  c.mv        a3, s6
                  add         s3, ra, a7
                  nop
                  div         tp, t0, t0
                  c.lui       s6, 26
                  auipc       s6, 352090
                  c.mv        a4, ra
                  c.addi16sp  sp, 224
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_18
                  li         s11, 0x0
                  li         s10, 0x0
                  li         s8, 0x42d4e4b8
                  li         s9, 0x573c4d92
                  li         s0, 0x1
                  li         s3, 0x0
                  li         a7, 0x496c0ba1
                  li         s4, 0x0
                  li         a0, 0x1
                  c.sub       a3, a2
                  lui         zero, 835546
                  sub         a5, a0, gp
                  add         s8, s5, t6
                  mul         a2, s9, t2
                  rem         zero, a3, s6
                  c.li        a3, 12
                  div         s4, t5, t3
                  lui         a1, 469393
                  lui         a2, 577252
                  divu        a3, ra, t1
                  lui         s1, 88835
                  rem         s7, a4, s1
                  auipc       s11, 856467
                  rem         tp, s2, s11 #end riscv_int_numeric_corner_stream_18
                  xori        a7, a1, 1793
                  xori        t0, t1, -294
                  c.xor       s1, a3
                  c.sub       a0, a3
                  nop
                  mulhu       s10, t4, ra
                  c.add       a4, ra
                  c.li        t0, 26
                  or          sp, gp, a5
                  add         s0, t6, s9
                  xor         t0, a6, s3
                  c.andi      a0, -1
                  xori        s7, s3, 1585
                  and         t0, s10, a1
                  c.or        a5, a3
                  c.nop
                  c.add       s9, a2
                  rem         a2, s2, ra
                  xor         s8, t4, a7
                  ori         s9, a5, 1566
                  c.slli      ra, 11
                  c.li        ra, -1
                  srl         a3, s0, t2
                  c.addi      a3, -1
                  srai        s10, a4, 16
                  c.sub       a3, a3
                  c.nop
                  sub         t2, t5, zero
                  mulh        s4, t1, a4
                  add         t1, s3, t0
                  xori        a2, s9, 841
                  c.andi      a3, 6
                  sltiu       s7, t5, 470
                  lui         t1, 536872
                  auipc       t1, 210632
                  nop
                  sub         s6, a4, sp
                  sub         s9, s10, t4
                  div         t1, a0, a2
                  c.sub       a3, a3
                  c.mv        a7, gp
                  nop
                  c.addi16sp  sp, -16
                  c.li        ra, 23
                  or          s0, tp, sp
                  mul         gp, a7, s0
                  div         t2, s2, t4
                  c.nop
                  srli        s1, s4, 27
                  ori         a7, sp, 780
                  and         s3, s10, t4
                  rem         s2, s10, gp
                  lui         zero, 500301
                  c.nop
                  div         s9, t3, a5
                  div         gp, zero, s9
                  auipc       s2, 883902
                  ori         a3, a1, 1056
                  sltiu       a3, s6, 256
                  c.or        a3, a3
                  c.nop
                  lui         a0, 191759
                  auipc       s9, 299015
                  c.slli      s0, 23
                  c.and       a3, a3
                  c.addi4spn  a3, sp, 192
                  srl         t1, s10, s8
                  c.srai      a3, 25
                  mulh        t0, s11, a7
                  srl         tp, s10, a3
                  c.xor       a3, a3
                  or          s6, zero, a3
                  xori        t2, a6, -1399
                  srai        a5, a7, 5
                  c.slli      t1, 25
                  rem         a0, s7, t1
                  c.addi      s9, -1
                  mulhsu      a0, s10, a2
                  rem         a5, s5, a2
                  c.addi16sp  sp, 448
                  c.or        a3, a2
                  andi        zero, s11, -1995
                  c.slli      a0, 12
                  c.mv        s5, s4
                  c.sub       a3, a3
                  mul         sp, s10, t3
                  mul         a2, a3, s6
                  xor         s10, a1, t5
                  c.lui       s5, 25
                  c.srai      a3, 1
                  add         s6, s1, zero
                  mulh        t3, sp, a5
                  xor         s5, t5, t5
                  nop
                  c.lui       a1, 10
                  srai        s8, s7, 14
                  rem         s9, tp, s4
                  xor         s9, a4, s3
                  c.slli      s2, 9
                  lui         t0, 440109
                  sll         a6, s5, a4
                  sra         a3, tp, t4
                  c.addi4spn  a2, sp, 64
                  c.li        ra, -1
                  slti        t0, sp, 1073
                  c.nop
                  sll         gp, a1, a6
                  c.slli      s11, 23
                  divu        s1, s7, t2
                  c.lui       a0, 28
                  c.srli      a3, 11
                  c.and       a3, a3
                  auipc       s5, 1028004
                  slti        s9, s7, 1441
                  add         a6, s3, s4
                  lui         s3, 652732
                  srai        sp, s10, 7
                  mulhu       t0, t6, s5
                  c.li        gp, 13
                  auipc       t3, 475743
                  and         s1, s6, s5
                  slli        a5, tp, 26
                  c.li        ra, -1
                  c.or        a3, a3
                  sltiu       t1, s9, -1556
                  srai        a1, gp, 25
                  xor         t3, a1, zero
                  auipc       s6, 421595
                  srai        s7, s2, 18
                  xori        t3, a7, 411
                  c.or        a2, a3
                  auipc       a5, 44794
                  nop
                  c.lui       a0, 1
                  andi        a2, sp, 312
                  add         s11, t1, s10
                  c.li        a5, -1
                  c.and       a3, a3
                  srl         t0, a3, zero
                  srai        sp, s9, 3
                  andi        t0, s8, -150
                  c.addi4spn  a3, sp, 576
                  c.mv        ra, s0
                  auipc       sp, 514081
                  nop
                  c.add       ra, s9
                  c.xor       s0, a3
                  xor         a2, tp, t0
                  and         s5, s3, s0
                  or          s5, s8, t2
                  c.slli      a3, 14
                  c.andi      a0, -1
                  c.srai      a3, 7
                  sll         a6, s7, sp
                  c.nop
                  c.nop
                  ori         a4, a6, -1701
                  slli        zero, t2, 3
                  divu        a2, s10, s11
                  xori        zero, tp, 1757
                  and         zero, sp, ra
                  div         t1, t4, gp
                  xori        a1, t0, -1967
                  mulhu       a3, tp, gp
                  and         t0, a3, s11
                  c.andi      a1, -1
                  c.mv        a6, s0
                  mulhsu      zero, a5, s0
                  divu        zero, t4, s9
                  c.nop
                  c.nop
                  c.addi4spn  a3, sp, 128
                  c.and       a3, a2
                  andi        zero, t6, -1144
                  andi        s4, a1, 639
                  c.and       a3, a3
                  mulh        s2, t6, t0
                  c.andi      a3, -1
                  c.add       s1, t4
                  xor         t3, s2, s11
                  sub         zero, t2, a3
                  ori         sp, a5, -1916
                  slt         s11, a0, s7
                  xori        t0, t0, -1611
                  slti        ra, ra, -1092
                  srli        s3, s8, 27
                  or          zero, sp, s2
                  ori         t3, tp, 1487
                  mulhu       t2, s5, tp
                  c.and       a3, a5
                  or          a5, s2, t1
                  mul         a0, tp, a1
                  addi        a5, a0, 272
                  mul         s0, s0, a3
                  xori        t2, a4, 439
                  mul         a1, s8, s7
                  or          s9, a1, t5
                  c.sub       a3, s0
                  divu        s3, s11, a7
                  and         s7, sp, s4
                  c.slli      s3, 28
                  c.nop
                  c.addi      s3, -1
                  sra         a3, s10, s5
                  c.andi      a3, 31
                  sltu        s3, ra, t0
                  rem         s0, t1, s11
                  c.li        s8, 7
                  slti        t3, sp, 1914
                  add         a5, a2, a3
                  c.xor       a3, a3
                  c.lui       s3, 27
                  c.mv        t3, a6
                  c.mv        ra, a5
                  c.addi      tp, 20
                  and         sp, a4, gp
                  add         a0, s9, a1
                  mulh        s11, t1, a7
                  nop
                  c.andi      a3, -1
                  sra         t0, a0, s4
                  xor         zero, zero, s6
                  nop
                  divu        tp, t0, s7
                  nop
                  sll         zero, t2, s4
                  lui         gp, 472924
                  lui         s6, 474112
                  c.and       a1, a3
                  slli        a4, s6, 1
                  sltiu       zero, a0, -716
                  addi        a2, s11, -1010
                  mul         t1, a3, s2
                  c.lui       s5, 13
                  addi        s9, sp, 1393
                  or          a3, s3, s10
                  slli        s4, a3, 27
                  mulhu       s5, s8, s6
                  c.srli      a2, 25
                  c.sub       a3, a3
                  rem         t1, a0, s7
                  divu        t0, s0, s0
                  slli        zero, s2, 17
                  c.lui       t1, 30
                  c.addi16sp  sp, -16
                  sltu        s0, t3, s0
                  lui         s6, 673100
                  slli        s10, t0, 0
                  slli        s4, t4, 3
                  c.li        s9, 30
                  mul         a3, t6, t2
                  auipc       s11, 215630
                  c.sub       a3, a3
                  andi        s1, a0, -1939
                  ori         s10, s3, 605
                  mul         a6, t4, s0
                  sltiu       s7, s11, 1407
                  nop
                  c.or        a3, a3
                  c.and       a3, a3
                  c.slli      t0, 13
                  mulhu       a3, s1, ra
                  addi        s0, zero, 1403
                  lui         zero, 917828
                  slli        s9, a3, 5
                  c.addi16sp  sp, 288
                  sub         s11, ra, gp
                  c.addi      s1, 24
                  c.addi4spn  a1, sp, 192
                  mulhu       a2, t6, s3
                  c.addi      s3, -1
                  divu        a5, t1, gp
                  c.addi4spn  a3, sp, 704
                  srl         s8, t6, s10
                  c.xor       a3, a3
                  slt         s4, sp, t5
                  or          s9, s0, ra
                  xori        a1, s7, 1979
                  andi        s9, t5, 2021
                  slti        s10, s10, 676
                  c.addi16sp  sp, -16
                  c.li        ra, 25
                  c.addi      s6, -1
                  div         a7, a5, s11
                  c.and       a1, a5
                  andi        t0, zero, -112
                  c.xor       a3, a3
                  xor         t3, a0, s7
                  c.sub       a3, a3
                  c.addi16sp  sp, -16
                  slt         ra, a4, t4
                  add         t2, sp, a0
                  slli        a7, gp, 21
                  nop
                  auipc       t1, 98208
                  ori         t3, t5, -602
                  srl         s6, s6, t2
                  div         s4, a7, t0
                  xori        a1, a2, 614
                  sra         a5, s8, a7
                  slt         a1, a5, t6
                  c.srai      a5, 21
                  xor         s11, a4, s3
                  c.add       s8, a5
                  sll         s0, s2, s2
                  auipc       s7, 89228
                  c.addi16sp  sp, 96
                  c.addi4spn  a3, sp, 448
                  c.andi      a3, -1
                  mulhu       a3, t4, t0
                  divu        tp, t6, a2
                  lui         s3, 632327
                  lui         a5, 324655
                  mulh        gp, t1, a0
                  lui         t1, 539054
                  mul         s2, gp, s11
                  c.addi16sp  sp, 480
                  xor         gp, a5, s5
                  c.addi4spn  a3, sp, 640
                  c.xor       a3, a3
                  c.and       a3, a3
                  c.nop
                  c.slli      s1, 7
                  addi        zero, sp, -488
                  sra         a7, a7, a2
                  xor         sp, gp, gp
                  c.srai      a3, 4
                  andi        s11, ra, 378
                  div         zero, a6, t0
                  sltu        tp, s7, s5
                  c.nop
                  nop
                  srli        a1, s4, 7
                  c.addi4spn  a3, sp, 640
                  addi        ra, t3, 1782
                  add         t2, s9, s3
                  c.slli      a4, 15
                  c.or        a3, a3
                  c.or        a3, a3
                  c.srai      a3, 9
                  c.addi16sp  sp, 112
                  or          s5, t5, s6
                  xor         s7, a4, s6
                  mulh        zero, t3, t4
                  mul         s10, gp, s1
                  div         a0, s8, t1
                  c.addi4spn  a3, sp, 704
                  lui         s7, 1037352
                  c.srai      a3, 4
                  c.andi      a3, -1
                  c.li        ra, 18
                  sltu        s8, s4, a1
                  sra         zero, sp, a1
                  c.xor       a3, a3
                  c.or        s1, a3
                  andi        a7, s4, 1924
                  srl         s9, t4, a3
                  and         a2, s9, a1
                  addi        s7, a2, 1610
                  and         a6, s0, s5
                  c.addi4spn  a3, sp, 352
                  srl         zero, s8, a5
                  mulhu       zero, s4, s4
                  div         s6, s10, tp
                  or          s0, s3, s2
                  andi        s9, t2, 916
                  c.srli      a3, 21
                  addi        a5, s5, 967
                  c.mv        s11, t3
                  add         a1, s3, s0
                  c.nop
                  add         s4, a5, t0
                  c.add       s5, a5
                  slt         tp, s5, a1
                  c.xor       a3, a3
                  slli        t3, s2, 20
                  div         s11, s2, s9
                  xori        ra, s5, 1339
                  slli        t1, s7, 6
                  andi        zero, t2, 235
                  c.addi4spn  a3, sp, 480
                  slt         s1, a4, tp
                  c.sub       a3, a3
                  c.slli      a5, 23
                  c.andi      a3, -1
                  div         tp, gp, a0
                  rem         a5, a5, a0
                  slti        gp, s4, -353
                  mulhsu      s4, a3, s5
                  c.srai      a3, 16
                  c.andi      a3, -1
                  sltu        a3, s0, s6
                  srl         sp, t4, a7
                  andi        s1, a7, 968
                  andi        a7, a0, -1403
                  nop
                  slli        zero, a7, 29
                  c.mv        s8, t1
                  auipc       a6, 323700
                  srl         a1, t0, s3
                  c.sub       a3, a3
                  slti        a5, sp, -2006
                  slti        zero, ra, 1658
                  c.addi4spn  a3, sp, 832
                  c.mv        ra, s10
                  mulhsu      t1, s7, t1
                  or          tp, zero, s4
                  c.li        ra, 27
                  or          a7, a6, s10
                  xor         sp, t1, tp
                  srli        s3, s9, 19
                  srl         zero, s2, t1
                  rem         zero, t4, a0
                  srai        zero, s1, 6
                  c.add       a1, a1
                  c.srai      a3, 15
                  or          ra, gp, sp
                  rem         s11, s9, s2
                  ori         tp, t1, 1711
                  c.addi4spn  a3, sp, 128
                  c.mv        a7, s7
                  c.li        gp, 28
                  c.sub       a3, a3
                  and         sp, gp, a3
                  c.andi      a3, 16
                  c.add       s1, sp
                  sra         a7, s3, t4
                  c.sub       a3, a3
                  sub         tp, sp, a2
                  sltiu       s11, s6, 1764
                  c.add       s8, s1
                  c.or        a3, a3
                  xor         s4, s5, s6
                  nop
                  or          a0, s0, s2
                  c.mv        a6, a3
                  ori         tp, s11, 874
                  sra         zero, s7, t4
                  c.mv        s10, ra
                  mulhsu      t0, t1, s5
                  or          a3, a7, a4
                  c.slli      a7, 10
                  c.andi      a3, -1
                  c.or        a3, a3
                  c.li        s5, 7
                  c.li        a3, -1
                  c.nop
                  ori         s11, gp, -1269
                  ori         zero, t6, -889
                  lui         s0, 908448
                  mul         s7, a3, s4
                  xor         sp, s1, s4
                  lui         a5, 300935
                  c.slli      gp, 19
                  xor         a7, t5, a1
                  c.li        s6, -1
                  sll         s1, t6, t6
                  mulhsu      s1, ra, tp
                  c.or        a3, a3
                  andi        a6, s6, -1075
                  sll         s7, t5, tp
                  c.xor       a3, a0
                  srli        s4, a6, 12
                  c.lui       s6, 16
                  ori         a3, t4, 719
                  andi        t1, s11, 497
                  c.andi      a3, 2
                  c.or        a3, a3
                  c.srli      a3, 14
                  mul         a7, a6, a5
                  mulh        s11, s10, a0
                  mulh        zero, a6, tp
                  xori        a1, zero, -1017
                  c.lui       s4, 2
                  c.mv        a4, ra
                  auipc       zero, 652865
                  srli        s11, a4, 22
                  or          s7, t1, t5
                  or          s7, t3, zero
                  mulhu       a5, t1, a1
                  mulhu       t0, t5, s11
                  mulhsu      tp, ra, t0
                  c.nop
                  sra         t2, t0, t3
                  c.mv        s1, a2
                  div         t0, s9, sp
                  slli        gp, a6, 18
                  slti        s8, a6, 1931
                  ori         gp, s6, -496
                  mulhsu      t2, s11, s6
                  mulhu       a3, zero, t3
                  slti        a2, s10, 956
                  c.andi      a3, -1
                  c.mv        t3, a3
                  c.addi      s7, 21
                  or          a3, t3, s7
                  c.xor       a3, a3
                  slti        gp, t0, -891
                  sltu        s1, s8, a7
                  c.slli      a5, 16
                  c.sub       a3, a3
                  lui         a2, 223942
                  rem         a4, a5, a0
                  xor         s9, s0, gp
                  srli        a6, s6, 21
                  c.srai      a3, 22
                  xori        s1, a1, 6
                  c.mv        s9, a4
                  add         gp, ra, t2
                  andi        s2, a3, 995
                  auipc       ra, 644234
                  c.nop
                  srai        s3, s3, 7
                  c.add       s3, s3
                  c.add       s8, s0
                  and         t2, a4, a6
                  srai        sp, t6, 27
                  c.srli      a5, 31
                  addi        a7, zero, 749
                  c.addi16sp  sp, 496
                  c.andi      a3, 18
                  ori         t3, a2, 462
                  slt         s1, s8, ra
                  rem         s9, tp, ra
                  ori         s5, a2, 632
                  lui         tp, 462106
                  addi        s8, t4, -1158
                  lui         s8, 134545
                  or          sp, a5, t5
                  c.li        a6, 24
                  add         s2, a6, s4
                  sltu        zero, s2, t1
                  c.nop
                  sltu        a4, s4, s4
                  mulhsu      s0, t2, gp
                  nop
                  lui         s2, 210677
                  c.and       a0, a3
                  sltu        a5, s2, s2
                  c.srai      a3, 19
                  rem         t3, tp, s0
                  c.or        a3, a3
                  lui         t1, 198840
                  sub         zero, s6, t6
                  andi        a7, a7, -718
                  c.or        a3, a3
                  c.srli      a3, 26
                  c.srli      a3, 5
                  divu        s8, a5, t5
                  srl         s3, gp, s9
                  divu        s9, t2, s4
                  c.li        s0, -1
                  lui         zero, 407925
                  mulhu       s6, tp, gp
                  sra         t2, s8, a2
                  divu        s1, gp, t5
                  c.xor       a3, a3
                  mul         s7, t0, s2
                  c.sub       a3, a3
                  slt         s2, a3, a6
                  andi        s3, s9, 1170
                  sub         zero, sp, s5
                  c.li        ra, 9
                  slli        s10, s7, 7
                  sra         s1, ra, a5
                  sltiu       s0, s11, -257
                  srai        a2, s6, 14
                  and         zero, sp, s5
                  c.addi16sp  sp, 192
                  c.srai      a3, 14
                  slti        tp, t6, 679
                  sra         t0, s9, s8
                  c.nop
                  sub         t2, a4, a1
                  ori         a5, s7, -1939
                  auipc       s1, 231221
                  c.addi4spn  a3, sp, 864
                  mulh        s6, s11, a5
                  xor         zero, a3, a6
                  c.srai      a3, 4
                  rem         t0, gp, s6
                  c.srai      a0, 1
                  sltiu       s7, s11, 993
                  slt         s7, s11, s0
                  xor         s2, s1, a6
                  c.addi      s0, 23
                  slli        s3, s7, 11
                  mulhu       a2, a2, t4
                  c.li        t2, 10
                  or          s2, a0, gp
                  mulhu       a3, s7, s9
                  rem         s7, s8, t5
                  c.and       a3, a3
                  c.and       a3, a0
                  c.or        a3, a2
                  lui         a7, 799547
                  and         ra, t5, t0
                  mulhu       s8, s10, t5
                  srai        zero, s10, 8
                  slti        s5, t3, 366
                  or          zero, s2, t4
                  mulhu       a6, s9, zero
                  or          t0, t4, t1
                  div         t1, t2, a3
                  lui         s1, 584280
                  or          zero, a6, a5
                  sltiu       zero, ra, 51
                  divu        s8, t1, sp
                  c.mv        ra, a1
                  srai        s2, gp, 14
                  add         s8, t3, a5
                  c.andi      a3, -1
                  srl         a7, a3, t4
                  c.slli      s1, 15
                  rem         t2, a3, t2
                  auipc       a3, 364736
                  ori         s4, s1, -1963
                  addi        s10, t5, -853
                  c.add       t2, s1
                  sltu        a1, a5, s2
                  andi        s7, a6, -2019
                  div         s6, t5, s9
                  add         zero, s7, a4
                  slt         t0, s2, s0
                  c.addi16sp  sp, -16
                  slli        a1, s1, 0
                  and         s4, s1, t0
                  xor         a5, s5, s10
                  srl         s5, s0, t5
                  c.addi16sp  sp, 288
                  mulh        s5, a5, s4
                  mulhu       s2, t5, t6
                  and         t2, t4, gp
                  c.and       a3, a3
                  sub         zero, s1, a3
                  c.or        a3, a3
                  c.li        s3, 29
                  or          a4, s8, s10
                  addi        s5, a6, -1034
                  c.nop
                  slt         a7, s11, t6
                  mul         sp, t6, a7
                  or          a6, s2, a7
                  c.or        a1, a3
                  divu        a7, s5, s1
                  mulh        a4, a5, t6
                  sltiu       a4, t0, 307
                  c.addi      s4, -1
                  c.addi4spn  a3, sp, 1008
                  c.or        a3, a3
                  mulhsu      zero, t6, zero
                  srli        a1, s0, 23
                  and         s9, s11, s1
                  mul         s7, tp, s3
                  slli        s1, s2, 1
                  nop
                  c.addi16sp  sp, -16
                  srli        a7, s2, 28
                  addi        s11, s9, 1335
                  add         zero, s5, s10
                  c.srli      a3, 18
                  or          s6, s9, a2
                  srai        tp, a7, 22
                  srli        s0, t6, 27
                  divu        a5, a6, a6
                  srai        s6, s2, 19
                  mulhsu      a0, s0, a2
                  c.li        s7, 8
                  rem         a2, t6, s5
                  c.srai      a3, 16
                  add         s7, a3, t3
                  c.li        s6, -1
                  c.or        a3, a3
                  c.xor       a3, a3
                  c.addi4spn  a3, sp, 832
                  c.add       a3, t6
                  auipc       s6, 967907
                  srli        a0, s3, 3
                  c.srli      a3, 27
                  c.add       gp, t3
                  slti        s6, s1, -1969
                  c.and       a3, a3
                  slt         s5, s10, gp
                  mulh        s6, s4, sp
                  c.mv        a1, s11
                  sltiu       zero, s0, 244
                  and         s10, t3, s5
                  slli        zero, s11, 6
                  mulhsu      a1, s7, a1
                  divu        a6, s6, s8
                  mulhsu      t0, t1, a1
                  c.addi      a5, 6
                  c.addi      s9, -1
                  c.lui       a3, 15
                  divu        t3, t0, t4
                  sll         a5, a2, s5
                  andi        zero, t3, -1860
                  sll         s3, s0, a2
                  sltu        sp, zero, a6
                  c.or        a3, a1
                  ori         zero, t0, -1425
                  c.srai      a3, 15
                  mul         t1, s3, s10
                  c.mv        ra, s6
                  and         s8, a5, t0
                  sltu        a6, s1, t0
                  mulhu       a0, zero, s1
                  slli        gp, s4, 29
                  c.xor       a3, a3
                  xor         s7, s0, t0
                  c.add       ra, s7
                  c.nop
                  auipc       zero, 623617
                  addi        a2, s9, -1371
                  srai        s10, t2, 22
                  ori         a1, tp, 768
                  c.lui       a1, 1
                  c.add       t2, a1
                  c.srli      a3, 28
                  xori        ra, a3, 110
                  sll         s0, t0, t3
                  or          a4, t6, s3
                  c.srai      a3, 12
                  c.sub       a3, s1
                  c.add       s6, a3
                  addi        s8, s6, -853
                  srl         a7, s5, t2
                  c.slli      ra, 18
                  sll         s10, sp, s4
                  c.andi      a3, -1
                  mulh        s6, s10, s11
                  c.li        a1, 22
                  ori         zero, s2, -71
                  c.addi16sp  sp, -16
                  ori         a3, t4, -812
                  slti        zero, s0, 1999
                  addi        ra, t3, 233
                  mulhsu      gp, s0, a3
                  and         sp, s9, s2
                  c.mv        a7, t2
                  lui         gp, 872579
                  sll         gp, t1, t0
                  c.xor       a3, a3
                  c.mv        s2, s9
                  c.addi      t3, -1
                  add         t1, t1, a3
                  mul         tp, a0, t0
                  slli        s3, s7, 16
                  srli        a1, s7, 19
                  c.andi      a3, -1
                  c.addi16sp  sp, 64
                  andi        a7, s4, -1308
                  c.slli      s8, 21
                  div         gp, s5, s5
                  c.addi4spn  a3, sp, 832
                  c.sub       a3, a0
                  slli        a5, s4, 7
                  c.nop
                  c.addi4spn  a3, sp, 704
                  andi        s5, s9, 12
                  c.slli      a1, 3
                  sll         a7, zero, s3
                  mulhsu      gp, s10, a3
                  c.nop
                  c.lui       s9, 2
                  srli        tp, a7, 8
                  c.nop
                  sub         s9, a6, a1
                  c.li        a0, -1
                  slt         zero, t6, t4
                  nop
                  or          a5, s11, s3
                  nop
                  c.nop
                  sltu        s1, t5, a1
                  addi        s2, s5, -1880
                  c.sub       s1, a3
                  mul         a6, s4, s8
                  srli        zero, a2, 7
                  sll         s8, t2, s8
                  or          a1, t4, s4
                  auipc       a2, 195284
                  c.mv        a3, s5
                  div         a5, t4, t5
                  c.and       a3, s0
                  srai        s6, s11, 7
                  mul         s9, tp, a6
                  mulhsu      a0, t5, a6
                  mulhsu      a7, a0, a0
                  add         a3, a4, s0
                  xor         t1, s6, tp
                  c.srai      a2, 26
                  c.addi16sp  sp, -16
                  slli        s0, zero, 29
                  xori        a5, s3, -1620
                  lui         a1, 717644
                  xori        a6, a4, 1768
                  c.mv        t2, s0
                  lui         t3, 381044
                  c.li        sp, 20
                  c.addi4spn  a1, sp, 896
                  srli        gp, s6, 29
                  xor         zero, s2, t1
                  c.addi4spn  a0, sp, 896
                  mulhsu      s7, s3, s10
                  addi        a0, t2, 1428
                  srai        s9, sp, 11
                  c.li        ra, -1
                  c.or        a1, s0
                  c.add       tp, a1
                  mulhsu      s2, t6, s6
                  c.addi16sp  sp, 48
                  srai        t3, a4, 15
                  slt         s10, s9, t2
                  srl         a5, a3, t6
                  c.and       a3, a3
                  rem         a0, a2, s10
                  mulh        s1, t2, tp
                  c.add       ra, t0
                  c.or        a3, a1
                  c.mv        s1, ra
                  lui         t2, 667296
                  c.srai      a0, 10
                  lui         sp, 845181
                  sltu        gp, a5, a2
                  srai        a0, t1, 6
                  srli        a0, a4, 24
                  nop
                  sll         sp, a4, a5
                  mulhsu      s7, zero, a5
                  mulhu       zero, a4, s3
                  sltiu       a4, s0, 1473
                  c.or        a3, a3
                  sub         a1, t0, s10
                  slt         s9, t5, a7
                  addi        a6, a7, -511
                  mulh        s7, s3, t0
                  mulhu       a4, s2, a3
                  c.sub       s0, a3
                  c.xor       a3, a3
                  xori        t3, s3, 1690
                  mulhsu      s5, s4, s0
                  xor         t1, s3, a3
                  xor         t2, s2, sp
                  rem         gp, s8, s5
                  or          sp, s1, ra
                  sra         t0, tp, s8
                  and         zero, t5, s4
                  or          a3, t0, a7
                  c.srai      a3, 31
                  c.addi      sp, 2
                  and         s7, ra, a4
                  andi        a1, s3, -1912
                  sll         t2, s5, zero
                  c.addi4spn  a3, sp, 592
                  lui         sp, 459378
                  mulhsu      a3, a3, s10
                  c.mv        ra, s3
                  or          tp, s8, a6
                  lui         a0, 207956
                  sltiu       s1, tp, 1217
                  sltiu       t3, s10, 1774
                  sltiu       zero, t3, 1191
                  sltu        t3, ra, s0
                  c.andi      a5, 22
                  slt         zero, s7, t4
                  c.li        s4, -1
                  c.mv        ra, s4
                  c.sub       a3, a3
                  divu        sp, s11, s5
                  auipc       a1, 736876
                  sra         zero, s7, a4
                  srai        t1, s4, 31
                  c.slli      a1, 17
                  ori         a0, s8, -164
                  sll         t1, a3, s1
                  c.mv        s6, s9
                  addi        s7, a7, 1135
                  c.addi      s8, -1
                  add         t0, a0, t5
                  srl         a2, ra, a4
                  mulh        t2, t6, s7
                  mulh        s3, t1, gp
                  slli        zero, s8, 10
                  sra         a6, s3, s10
                  addi        zero, s1, -891
                  mulhu       zero, s11, t5
                  c.li        s9, 0
                  nop
                  andi        s0, gp, 1755
                  c.or        a3, a3
                  or          s4, s6, s3
                  c.addi4spn  a5, sp, 864
                  rem         s7, s8, s5
                  c.srai      a3, 11
                  sub         zero, s6, s4
                  sra         sp, s1, s6
                  add         s11, t5, a4
                  srli        a7, s5, 4
                  slti        tp, s4, -1505
                  mulh        a4, t2, s6
                  sltiu       s1, a7, 1044
                  sltu        s10, s11, a0
                  mul         a5, a1, zero
                  c.nop
                  sltiu       a5, a0, 11
                  and         zero, s5, a5
                  c.srai      a3, 29
                  sll         t3, t1, s8
                  slti        t2, a2, 150
                  mulh        t1, s4, t1
                  c.addi16sp  sp, -16
                  c.nop
                  xori        a2, s11, 827
                  c.srai      a4, 24
                  c.nop
                  ori         s1, zero, -1683
                  add         ra, a7, a7
                  andi        a1, a6, 1542
                  slli        zero, s5, 16
                  nop
                  add         a4, s4, s4
                  c.xor       a3, s1
                  lui         zero, 402508
                  addi        t3, s3, -390
                  mulh        a2, s8, t3
                  sltiu       s9, a6, 1760
                  lui         s9, 232247
                  li         t3, 0x5e643ed2 #start riscv_int_numeric_corner_stream_8
                  li         s3, 0xa82d342
                  li         s11, 0x1
                  li         s10, 0x3b035616
                  li         s4, 0x0
                  li         a0, 0x1
                  li         s2, 0x1
                  li         s0, 0x68d1959f
                  li         sp, 0x0
                  li         s9, 0x0
                  c.addi16sp  sp, 416
                  auipc       zero, 71249
                  sub         a6, zero, s9
                  mul         s10, t1, t1
                  auipc       s0, 243417
                  mul         tp, s4, s2
                  sub         s2, tp, a1
                  c.addi      s2, -1
                  c.nop
                  c.li        s9, -1
                  c.lui       ra, 27
                  c.sub       a3, a3
                  mulhsu      ra, s6, ra
                  rem         s3, t5, t5
                  c.mv        t1, t5
                  mulhsu      s0, s7, s6
                  lui         s10, 777692
                  div         t3, a3, sp
                  c.addi      sp, -1
                  c.addi16sp  sp, 304
                  c.addi4spn  a3, sp, 96
                  c.nop
                  addi        a2, t2, -868
                  c.addi4spn  a3, sp, 576
                  c.lui       a5, 3
                  mulhu       s11, gp, a3
                  c.add       a0, s3
                  c.sub       a3, a4
                  slti        t2, a2, -282
                  sll         t3, t4, s11
                  c.xor       a3, a3
                  ori         s5, s0, 1492
                  sll         s0, s8, sp
                  c.slli      s8, 4
                  c.slli      t1, 27
                  mulhu       t2, s5, a6
                  c.nop
                  or          a1, sp, a4
                  sltiu       t2, ra, -959
                  c.lui       s1, 21
                  slti        gp, a0, 1731
                  srli        s7, s11, 27
                  nop
                  div         s2, a1, gp
                  xor         s9, s8, t2
                  c.or        a3, a3
                  srli        s11, s3, 21
                  slli        s4, sp, 30
                  srai        s5, t4, 22
                  c.add       tp, s4
                  c.xor       a3, a3
                  sltiu       s2, s3, 1557
                  c.or        a3, a3
                  c.or        a3, a3
                  rem         tp, s7, s0
                  mul         t1, ra, zero
                  c.mv        s8, s10
                  add         s7, s7, s8
                  c.addi16sp  sp, -16
                  sra         t1, s0, a5
                  c.and       a4, a3
                  mulhu       zero, t2, s1
                  xori        a2, a1, 1487
                  and         a5, s2, s2
                  c.mv        gp, ra
                  c.srai      a3, 26
                  c.mv        ra, ra
                  andi        ra, a1, 953
                  c.mv        ra, s11
                  nop
                  c.lui       ra, 12
                  c.nop
                  c.sub       a3, a3
                  c.srai      a3, 13
                  c.addi4spn  a3, sp, 960
                  c.or        a3, a4
                  c.xor       a3, a3
                  lui         s9, 655159
                  slti        s9, a0, 867
                  srai        zero, a5, 7
                  slti        s7, a2, -1735
                  div         t2, a0, t2
                  srli        s5, s11, 29
                  addi        a3, s4, -1099
                  slti        s8, s10, -1852
                  c.addi4spn  a3, sp, 640
                  c.lui       a3, 9
                  c.srai      a0, 23
                  mulhsu      s9, a7, a5
                  div         a4, s8, s11
                  c.mv        s2, s6
                  or          tp, a7, gp
                  c.xor       a1, a3
                  c.srli      a3, 27
                  c.slli      t1, 4
                  srl         s8, zero, s9
                  c.addi      s9, -1
                  c.nop
                  mul         s5, a7, a6
                  c.mv        a0, s7
                  li         a5, 0x1 #start riscv_int_numeric_corner_stream_10
                  li         s0, 0x0
                  li         s9, 0x0
                  li         t3, 0x0
                  li         t0, 0x1
                  li         s11, 0x38d1c969
                  li         s10, 0x0
                  li         s8, 0x0
                  li         a1, 0x0
                  li         a0, 0x0
                  divu        s3, zero, zero
                  c.add       s10, s7
                  mulh        s1, s1, t1
                  mulhsu      s2, s11, a1
                  mul         s11, t4, t1
                  nop
                  mulhsu      s1, s11, t0
                  divu        s9, s1, a1
                  c.nop
                  sub         s5, t4, s4
                  add         zero, gp, t0
                  rem         a0, a3, a5
                  c.addi      ra, -1
                  lui         a5, 157359
                  c.addi16sp  sp, 336
                  divu        ra, t3, a3
                  mulhu       a6, a0, t0
                  c.sub       a4, a3
                  mulhu       gp, s5, a2
                  mul         s8, a0, s5
                  c.sub       a2, a1
                  lui         s11, 679767
                  c.li        s2, 0
                  sub         sp, s4, s1
                  c.mv        t1, t2
                  andi        s10, s9, -82
                  mulhu       tp, s11, s9
                  c.add       s7, ra
                  c.addi4spn  a3, sp, 384
                  rem         a7, s3, t4
                  lui         zero, 1005752
                  c.or        a3, a3
                  c.li        s4, -1
                  xori        a3, s0, 1171
                  sll         a1, t1, s7
                  andi        zero, a4, 1173
                  addi        s1, ra, 488
                  andi        gp, s11, 738
                  slli        zero, s10, 3
                  andi        a5, t3, 1367
                  nop
                  c.slli      t0, 15
                  lui         ra, 690374
                  mulh        t2, s6, s0
                  srai        zero, sp, 27
                  c.mv        tp, a7
                  lui         zero, 349259
                  mul         s11, s0, a4
                  c.srai      a2, 30
                  sltiu       zero, a1, 1041
                  sll         t0, s10, s5
                  c.nop
                  add         a4, zero, ra
                  mulh        t3, a5, tp
                  c.slli      ra, 16
                  or          ra, t4, t4
                  c.addi16sp  sp, 160
                  slti        tp, t6, 385
                  c.srli      a2, 17
                  or          s7, s10, s11
                  c.sub       a5, a3
                  and         t0, s0, a3
                  divu        s4, s11, s4
                  slt         t2, t4, a1
                  srli        a0, s6, 0
                  c.addi      s10, -1
                  or          zero, gp, zero
                  slti        gp, a4, 165
                  c.and       a3, a3
                  xor         a5, ra, s6
                  c.addi16sp  sp, -16
                  c.li        a7, -1
                  c.addi4spn  a3, sp, 624
                  c.or        a3, a3
                  c.nop
                  slli        t3, t1, 23
                  addi        s1, t3, 664
                  slt         t2, s5, s11
                  c.nop
                  c.or        a0, a3
                  andi        a3, a4, 406
                  and         a3, sp, a0
                  c.addi      gp, 13
                  lui         a1, 1032086
                  mulh        s11, s11, a6
                  c.andi      a3, 3
                  nop
                  slti        s8, t2, 107
                  andi        t2, t6, 144
                  mulhu       a7, t3, s10
                  nop
                  mulhsu      s6, a4, s3
                  ori         a0, zero, 1192
                  addi        a4, s8, -53
                  slti        zero, a6, 773
                  srai        s7, s6, 30
                  slt         s6, a6, gp
                  xori        s6, s1, 1186
                  add         s10, s8, zero
                  slli        s5, a7, 23
                  lui         tp, 381858
                  c.sub       a3, a3
                  and         t1, ra, s0
                  ori         s7, t1, -1562
                  c.sub       a3, a3
                  slt         t0, ra, a2
                  sltiu       s11, s11, 1890
                  mul         s7, s2, a6
                  sra         t3, t4, s6
                  rem         t3, t3, a7
                  c.nop
                  sub         a4, s1, s6
                  mulhsu      tp, s9, a0
                  c.addi      s9, 25
                  c.xor       a3, a3
                  c.addi      ra, -1
                  or          zero, t2, gp
                  or          zero, tp, s1
                  mulhu       tp, t0, ra
                  c.and       a3, a3
                  c.addi4spn  a3, sp, 848
                  c.addi16sp  sp, 16
                  c.or        a3, a3
                  div         sp, t2, a1
                  srl         s6, s2, t2
                  rem         s5, s5, s2
                  lui         s1, 125013
                  c.add       t3, ra
                  slli        a1, t2, 27
                  c.addi4spn  a3, sp, 320
                  slt         gp, s11, s7
                  and         s11, t2, t0
                  mulhu       s10, a7, a3
                  sltiu       a5, t4, 1296
                  mulhsu      tp, s7, a1
                  mul         a1, s8, t2
                  c.addi4spn  a3, sp, 576
                  add         a4, a4, t4
                  c.and       a3, a3
                  c.srai      a3, 31
                  c.or        a3, a3
                  div         a6, s2, t3
                  c.or        a4, a3
                  ori         zero, tp, -145
                  c.and       s0, a3
                  c.mv        ra, s6
                  add         s4, t0, s10
                  slli        a6, a3, 8
                  srli        a1, s7, 31
                  c.addi16sp  sp, 416
                  auipc       s0, 490549
                  c.and       a3, a3
                  xor         a5, s5, a5
                  mulhsu      zero, s2, a1
                  ori         a6, a0, -61
                  or          zero, s8, t2
                  mulh        s4, sp, s8
                  rem         gp, a0, t5
                  sub         zero, s3, s10
                  c.addi4spn  a3, sp, 128
                  c.and       a3, a3
                  sll         gp, a5, t2
                  c.and       a3, a1
                  c.or        a3, a3
                  c.or        a3, a3
                  c.srai      a1, 24
                  c.srli      a3, 28
                  nop
                  sltiu       zero, ra, 198
                  c.addi4spn  a3, sp, 352
                  add         zero, s11, s8
                  add         s11, t4, s2
                  add         t1, s11, a0
                  c.lui       s0, 31
                  andi        s1, ra, -582
                  mulhu       a0, t1, s6
                  sub         zero, gp, ra
                  c.add       t0, a1
                  slli        ra, a4, 21
                  c.xor       a5, s1
                  slti        zero, s6, -1207
                  div         s6, ra, s2
                  c.or        a3, a3
                  lui         t3, 1029935
                  c.or        s0, a3
                  srai        zero, s8, 19
                  divu        gp, gp, tp
                  c.or        a3, a3
                  auipc       zero, 477428
                  c.or        a4, a3
                  xor         s6, s5, t6
                  c.addi16sp  sp, 256
                  mulhu       a6, ra, gp
                  c.sub       a2, a3
                  c.addi16sp  sp, -16
                  mul         a2, sp, s7
                  slt         a1, a3, s2
                  slli        a1, a2, 4
                  c.addi4spn  a3, sp, 128
                  c.add       tp, s5
                  mulhsu      s8, t1, sp
                  sra         a2, t6, s2
                  mulhsu      a5, s10, t4
                  ori         s11, a1, 367
                  mul         t0, s10, s8
                  c.lui       s9, 31
                  and         a1, t0, a7
                  slli        s8, t4, 7
                  mulhu       sp, s3, t6
                  sub         a5, s2, gp
                  sltiu       zero, s0, -1796
                  sub         s5, t0, s8
                  nop
                  addi        a6, t2, 1095
                  slti        s11, t2, -1976
                  c.and       a3, a3
                  srai        a4, t3, 9
                  rem         a0, s10, s2
                  c.lui       a6, 4
                  sra         t0, s0, t5
                  c.srli      a3, 7
                  mulhsu      a3, a3, t6
                  c.addi4spn  a3, sp, 64
                  c.and       a3, a3
                  c.xor       a2, a3
                  c.li        s2, -1
                  c.nop
                  c.xor       a3, a3
                  div         a2, a1, s5
                  mul         t1, a6, a0
                  divu        sp, t6, s9
                  sltiu       ra, a7, 389
                  nop
                  srl         s7, s6, sp
                  c.mv        s1, s7
                  rem         t2, a7, s3
                  c.srai      a3, 16
                  addi        a6, a0, -487
                  c.srai      a3, 30
                  c.li        t2, 28
                  div         s7, sp, a1
                  c.slli      t3, 24
                  andi        a6, s7, 1353
                  c.sub       a3, a3
                  sltiu       s9, s3, -1540
                  sll         a0, a4, a4
                  mulhsu      t0, s8, s10
                  srl         s11, a5, zero
                  sra         s5, zero, zero
                  c.slli      s10, 23
                  divu        t1, gp, a0
                  c.lui       t0, 10
                  sltiu       a4, zero, -1551
                  c.mv        a6, s3
                  mulhu       s7, s5, a3
                  or          s5, t2, t5
                  c.addi16sp  sp, 208
                  mul         a5, a6, sp
                  mulhsu      s1, a3, s5
                  c.addi4spn  a3, sp, 576
                  srli        a4, tp, 30
                  mulh        a2, s5, s11
                  andi        s11, sp, -878
                  c.add       tp, s6
                  slti        s10, s10, 1596
                  sll         a1, s7, t2
                  sltiu       s3, s4, 204
                  or          a4, s9, a3
                  srai        s6, a2, 13
                  c.addi      tp, -1
                  c.slli      ra, 13
                  c.sub       a3, a3
                  xor         s10, a1, s1
                  srai        a2, t5, 31
                  sltiu       s9, s11, 648
                  slli        t3, t5, 23
                  c.xor       a3, a5
                  and         s8, s2, a2
                  xori        s8, s3, 2027
                  nop
                  mulh        ra, gp, s11
                  mulh        sp, a0, a6
                  sll         gp, a5, s3
                  c.addi4spn  a3, sp, 320
                  andi        zero, a6, 167
                  c.sub       a3, a3
                  c.add       ra, tp
                  c.li        s1, -1
                  srl         gp, a7, s7
                  xor         s4, a5, tp
                  div         sp, s11, t1
                  rem         tp, t2, a7
                  c.or        a3, a3
                  div         zero, t5, s8
                  c.srai      a3, 26
                  and         s2, s11, t5
                  and         zero, t1, a5
                  xori        a2, a7, 1039
                  sll         t3, s8, a3
                  mulh        zero, t0, t0
                  c.andi      a3, -1
                  c.xor       a3, a3
                  or          t3, t5, t5
                  mulhu       a3, a0, s3
                  sll         t0, ra, t1
                  slti        s11, s4, -1826
                  divu        a6, s7, s8
                  mulh        a1, s5, s2
                  c.addi      ra, -1
                  srl         gp, s10, s7
                  add         a5, t1, t4
                  c.mv        s3, a6
                  lui         s4, 862607
                  srli        t3, tp, 19
                  slt         zero, a0, t0
                  add         a6, t6, s5
                  c.andi      a3, 2
                  srai        s6, a2, 23
                  slli        a2, ra, 17
                  or          sp, zero, t6
                  xor         s1, tp, t2
                  auipc       a6, 187489
                  c.li        s4, 10
                  nop
                  sub         s1, t2, t4
                  andi        sp, a5, 907
                  rem         s8, s9, t3
                  c.addi16sp  sp, 128
                  c.xor       s1, a3
                  c.nop
                  c.slli      ra, 29
                  c.srai      a3, 20
                  lui         a7, 496673
                  div         s11, s8, s3
                  sra         a0, s11, s7
                  c.mv        t2, s2
                  and         s5, a5, a3
                  nop
                  xori        s7, tp, -903
                  c.andi      a3, -1
                  sra         a7, tp, t4
                  div         ra, s9, t1
                  slti        a2, s1, 1945
                  slti        ra, s5, 2031
                  rem         s7, ra, s5
                  auipc       s5, 694857
                  c.srai      a3, 13
                  c.srli      a3, 13
                  mulhsu      t3, t3, sp
                  xori        zero, s10, -808
                  c.andi      a0, 9
                  ori         s5, s5, 1735
                  nop
                  c.addi4spn  s0, sp, 608
                  slt         s0, a0, a7
                  auipc       zero, 732974
                  c.mv        sp, s10
                  and         zero, s2, a1
                  andi        a1, a0, -1342
                  c.lui       t1, 19
                  c.and       a3, a3
                  c.addi      ra, -1
                  slt         zero, t4, s2
                  c.addi      sp, 7
                  divu        a4, s2, a5
                  c.addi4spn  a3, sp, 640
                  ori         t0, zero, 428
                  srli        t1, gp, 13
                  c.or        a3, a0
                  c.addi16sp  sp, -16
                  c.nop
                  c.addi      sp, -1
                  sltu        s5, a2, tp
                  andi        zero, s10, -1952
                  srl         t0, s5, a6
                  mulhsu      ra, s6, tp
                  mulhsu      a4, s1, t0
                  mulh        t3, s8, a7
                  c.andi      a3, -1
                  c.li        s4, -1
                  c.mv        ra, s6
                  sltiu       a4, s4, -914
                  mulh        s7, s4, s1
                  xor         zero, a1, t4
                  srai        t1, s11, 28
                  srai        tp, s1, 16
                  c.sub       a3, a3
                  srl         a3, s5, a1
                  sll         a7, a2, s11
                  rem         t3, a1, tp
                  srli        gp, s9, 28
                  rem         a3, s11, gp
                  slti        a4, a0, 367
                  or          tp, tp, s10
                  xori        s8, a4, -1957
                  c.mv        sp, a7
                  c.andi      a3, 15
                  c.lui       s9, 2
                  nop
                  slti        s2, t2, -661
                  c.or        a4, a3
                  or          a0, s11, a7
                  lui         s11, 107760
                  add         s2, t4, a6
                  srli        s6, a5, 9
                  and         s7, s9, s11
                  c.addi16sp  sp, 336
                  add         s7, s9, s10
                  slti        s10, t0, 1314
                  slt         t3, s7, s7
                  mul         t2, s1, s8
                  c.srai      s0, 13
                  c.li        s6, -1
                  lui         ra, 197359
                  divu        s4, s3, a6
                  sltu        s1, s10, a3
                  div         s8, a4, s5
                  xor         s3, s0, t1
                  c.mv        t3, t4
                  c.or        a3, s0
                  sub         tp, t2, ra
                  lui         a0, 5292
                  sltu        t2, s2, a6
                  srai        zero, a5, 14
                  c.srli      a3, 11
                  c.addi4spn  a3, sp, 896
                  mulhu       s9, a6, tp
                  c.addi16sp  sp, 112
                  c.slli      gp, 6
                  c.lui       s3, 23
                  c.or        a0, a3
                  lui         tp, 581177
                  srli        tp, s2, 31
                  c.srli      a3, 21
                  sub         s1, s11, s3
                  mulhsu      gp, t1, s0
                  slt         a0, sp, a0
                  slli        gp, a6, 22
                  srai        a6, s10, 12
                  slli        s6, s10, 11
                  rem         a3, s8, sp
                  xori        s6, t3, -540
                  sub         sp, s6, ra
                  slt         s11, a3, s9
                  srl         s2, gp, t1
                  divu        a2, s7, a3
                  c.addi4spn  a3, sp, 192
                  mul         zero, s11, a5
                  xor         gp, s7, t5
                  rem         a4, s4, t3
                  div         s3, s6, t5
                  nop
                  srai        a2, a0, 24
                  rem         s1, s11, s9
                  or          s4, ra, s4
                  c.xor       a5, a3
                  c.lui       a2, 2
                  auipc       zero, 137774
                  c.lui       a2, 31
                  c.andi      a3, 28
                  auipc       t0, 551920
                  c.addi16sp  sp, 112
                  c.and       a3, a3
                  div         s0, a4, a7
                  andi        zero, s2, -604
                  sltiu       a1, t2, -535
                  andi        t2, a7, 682
                  sltu        a6, ra, a3
                  andi        t2, a7, -750
                  slti        tp, t2, -641
                  div         s9, a7, s8
                  c.srai      a3, 6
                  c.or        a3, a0
                  c.sub       a3, a3
                  sltiu       t1, sp, 354
                  ori         a0, t1, -1129
                  div         a5, a2, a3
                  slli        tp, s6, 18
                  mulhu       s0, tp, s8
                  c.nop
                  c.add       ra, s5
                  sra         s0, t2, s8
                  addi        t3, sp, -1571
                  c.or        a3, a3
                  c.slli      a6, 9
                  slli        s3, t5, 8
                  c.addi      a3, -1
                  srl         a2, s7, a3
                  srli        s10, a2, 5
                  mulhu       a4, s9, sp
                  srli        s4, t4, 6
                  auipc       a6, 464568
                  c.nop
                  srli        t2, s4, 27
                  nop
                  xor         t1, sp, t5
                  srl         s0, t1, tp
                  c.srai      a3, 20
                  slli        s11, s5, 14
                  c.addi16sp  sp, -16
                  or          zero, t0, a3
                  c.addi16sp  sp, 64
                  div         s4, a0, a0
                  c.lui       a6, 4
                  andi        s2, t2, -1812
                  mul         t0, gp, s0
                  xor         a7, s6, t0
                  c.mv        ra, s10
                  c.add       a7, s9
                  lui         zero, 210147
                  c.nop
                  slti        a0, s0, 219
                  sltu        s9, s2, zero
                  mulhu       s3, a1, t4
                  c.and       a3, a3
                  mulh        a6, sp, t0
                  c.andi      a4, -1
                  slli        t2, a6, 29
                  and         s8, s5, s4
                  slti        tp, t6, 1454
                  add         s6, s6, s3
                  srai        gp, a7, 13
                  slti        s6, a6, 167
                  slli        s8, a3, 26
                  nop
                  sltiu       a3, s2, -272
                  c.addi4spn  a4, sp, 608
                  c.addi4spn  a3, sp, 480
                  nop
                  add         zero, s7, t3
                  c.xor       a3, s1
                  nop
                  sltiu       t3, a4, -1000
                  c.lui       a7, 2
                  c.mv        s4, t1
                  xor         s2, s7, s8
                  xori        zero, t6, -1844
                  sltu        t1, a7, t4
                  addi        a1, s6, -243
                  c.and       a3, a3
                  or          gp, s2, t6
                  add         t3, s0, s6
                  xor         s10, s7, a5
                  sltiu       s8, a1, -2038
                  mulhu       zero, s7, zero
                  c.sub       a3, a3
                  c.lui       ra, 10
                  c.or        a3, a3
                  c.slli      a1, 22
                  c.add       s7, tp
                  srl         s2, s11, s6
                  mulhu       s9, s5, a2
                  addi        zero, a7, -1435
                  c.addi4spn  a3, sp, 832
                  c.sub       a3, a3
                  ori         s9, ra, -1688
                  and         s4, s0, s10
                  andi        s3, a3, 894
                  sub         s8, a5, s2
                  xor         t3, tp, a4
                  mulhsu      zero, t5, t0
                  or          a1, s2, a5
                  slti        s9, t3, -1564
                  c.srli      a3, 29
                  srli        a6, s6, 28
                  c.mv        ra, a4
                  c.nop
                  srl         t2, s3, a7
                  c.add       t2, s2
                  div         s9, tp, s10
                  c.sub       a3, a3
                  nop
                  sltu        zero, s11, t0
                  addi        s10, a5, -247
                  addi        sp, s10, -1359
                  c.addi      gp, -1
                  mul         s11, s1, s3
                  div         t0, zero, t1
                  or          tp, s7, a6
                  add         s10, s7, t3
                  mulhsu      s1, a3, a2
                  c.srai      a3, 21
                  c.xor       a3, a3
                  mulhu       s5, s11, s2
                  mulh        s4, a6, s1
                  sub         tp, ra, s4
                  mulhsu      s2, s9, a3
                  srli        s9, t6, 13
                  sltiu       s3, s4, 1065
                  mul         a2, t0, a3
                  mulh        a4, tp, s8
                  c.addi16sp  sp, -16
                  mulhsu      s7, a5, t4
                  srai        tp, a2, 18
                  c.slli      s11, 1
                  mulh        s10, t1, a0
                  rem         tp, a1, s4
                  mul         a5, t0, t2
                  c.sub       a3, a3
                  c.nop
                  slt         s6, a4, s8
                  xori        gp, a7, 1572
                  lui         s5, 680626
                  mulhu       sp, sp, s4
                  mulhu       t3, s9, a1
                  c.or        a0, a3
                  c.addi      s0, -1
                  sltu        s3, t6, a2
                  slti        a6, zero, 941
                  c.li        a0, -1
                  c.addi4spn  a3, sp, 128
                  c.addi16sp  sp, -16
                  mulh        zero, s3, s10
                  sll         s2, s10, zero
                  mulh        s0, s3, s1
                  c.andi      a3, 26
                  rem         t1, a3, s9
                  addi        s2, s7, 923
                  mulh        s4, a5, t5
                  c.addi16sp  sp, 288
                  xor         s1, s11, s10
                  slli        a7, a0, 1
                  c.xor       a3, a3
                  c.add       a5, ra
                  c.li        s1, -1
                  xori        gp, sp, -615
                  c.srli      a3, 14
                  c.xor       s1, a3
                  addi        zero, t0, -173
                  auipc       gp, 895013
                  slt         a7, a3, tp
                  nop
                  c.addi4spn  a3, sp, 64
                  slt         t0, a1, s8
                  divu        s2, s3, tp
                  mulhsu      a4, s11, t5
                  c.slli      s5, 17
                  c.xor       a3, a3
                  ori         t0, s2, 97
                  addi        sp, a0, 1399
                  c.nop
                  c.srai      a5, 4
                  mulhsu      tp, a4, s5
                  c.lui       tp, 10
                  c.andi      s0, 6
                  c.and       a3, a3
                  c.xor       a2, s1
                  and         ra, t4, t3
                  c.mv        tp, t5
                  andi        a6, t3, 1668
                  c.srai      a4, 16
                  c.srli      a3, 23
                  ori         t0, s0, 350
                  andi        s0, t4, 111
                  c.li        s0, -1
                  c.slli      s11, 25
                  slti        a5, a6, 1033
                  c.or        s0, a3
                  slli        s4, s11, 3
                  c.addi4spn  a3, sp, 992
                  div         ra, t1, a7
                  rem         zero, t0, s1
                  c.lui       a1, 3
                  c.srli      a3, 16
                  srai        a3, a4, 4
                  nop
                  mulhu       ra, s9, s11
                  srai        s5, s1, 22
                  srl         s10, s5, a4
                  c.addi4spn  a3, sp, 576
                  div         s6, a5, a4
                  rem         sp, a7, t1
                  mulh        s9, gp, t4
                  c.or        a3, a3
                  c.addi4spn  a3, sp, 352
                  div         t3, a4, s6
                  and         a7, s10, sp
                  xori        sp, s10, -277
                  or          zero, a7, s3
                  c.nop
                  c.nop
                  c.or        a0, a5
                  c.xor       a3, a3
                  mulhsu      s11, t6, s3
                  c.addi      ra, -1
                  mul         s5, a6, ra
                  c.nop
                  sltiu       sp, zero, 542
                  nop
                  mulh        zero, t0, t2
                  c.add       tp, s10
                  c.lui       a1, 19
                  c.lui       a1, 18
                  mul         t1, a2, a2
                  c.or        a3, a3
                  srli        s2, s1, 15
                  c.sub       a3, a3
                  c.slli      t1, 4
                  mulh        zero, s3, t6
                  and         t3, t3, tp
                  c.or        a2, a5
                  xor         sp, s6, gp
                  c.li        ra, 26
                  lui         zero, 564977
                  auipc       a3, 356711
                  c.lui       a7, 28
                  slli        s5, s1, 30
                  xor         s11, s5, a1
                  mulhsu      t0, s11, s11
                  xori        s3, zero, 1044
                  ori         t1, s7, -1078
                  c.add       s7, a0
                  slli        tp, t5, 6
                  c.add       ra, s9
                  c.nop
                  srli        t2, s0, 25
                  c.mv        ra, t6
                  mulhsu      zero, a6, gp
                  c.lui       a1, 13
                  c.andi      s1, -1
                  c.srai      a3, 23
                  c.addi4spn  s1, sp, 640
                  c.li        t3, -1
                  c.xor       a3, a3
                  divu        tp, a5, s6
                  mul         ra, s4, s9
                  ori         ra, a7, 1025
                  c.addi4spn  a3, sp, 896
                  srli        gp, t6, 29
                  c.addi      gp, -1
                  c.mv        a1, s7
                  sra         a4, a3, s1
                  c.srai      a3, 31
                  c.addi4spn  a3, sp, 352
                  xori        s3, s4, 382
                  sra         s5, t4, a3
                  srl         t1, s2, t3
                  sub         s5, t6, a1
                  or          s6, t2, a1
                  c.mv        ra, gp
                  srl         a1, s0, s2
                  c.and       a3, a3
                  nop
                  add         a6, t4, t6
                  slti        s11, a1, -1931
                  srai        zero, t2, 22
                  lui         s8, 392172
                  rem         a7, s11, s9
                  sltu        sp, s2, t2
                  andi        s6, t6, -1602
                  ori         gp, s4, -652
                  lui         a6, 257458
                  c.and       a2, a3
                  xori        s0, s4, -232
                  slli        gp, ra, 2
                  sltu        t0, a4, s1
                  mulhsu      ra, t5, s1
                  c.lui       s0, 27
                  andi        tp, t0, 80
                  xor         s2, a6, s5
                  c.xor       a3, a3
                  sra         s8, s0, t6
                  div         s5, s2, s5
                  c.and       a3, a3
                  and         a0, zero, t1
                  or          zero, a2, t2
                  sub         t1, s7, s7
                  c.srli      a3, 5
                  mulh        s0, s2, t3
                  c.addi16sp  sp, 48
                  sltu        s0, t1, s6
                  c.mv        s7, s5
                  div         gp, s6, s7
                  sra         s2, tp, s10
                  c.and       a3, a1
                  auipc       s7, 420808
                  slti        s2, a6, -871
                  lui         s1, 7785
                  mulhu       t1, s11, t1
                  mulhu       a5, t4, s6
                  slt         t0, t4, a5
                  and         s8, a4, tp
                  addi        zero, a6, -1166
                  sltu        s10, s10, s7
                  div         a1, t3, s5
                  c.addi4spn  a3, sp, 320
                  sub         a3, s1, a1
                  mulhu       a3, a5, a6
                  and         s3, t2, a4
                  c.and       s0, s0
                  srli        t3, zero, 13
                  c.sub       a5, a1
                  nop
                  srl         zero, gp, a6
                  andi        s7, a5, 1590
                  c.andi      a3, 26
                  nop
                  c.slli      s1, 11
                  sra         s6, s10, s10
                  auipc       zero, 225659
                  addi        t3, s2, -269
                  slli        zero, a1, 24
                  addi        a7, zero, -191
                  ori         a3, s1, 691
                  c.andi      a3, 20
                  srli        t3, s1, 9
                  c.addi4spn  a3, sp, 896
                  or          s0, tp, s7
                  c.nop
                  c.li        s8, -1
                  nop
                  sll         s7, s8, sp
                  c.add       s9, t4
                  srl         t3, a1, a7
                  c.srli      a3, 9
                  c.addi4spn  a3, sp, 384
                  c.nop
                  xor         t1, t0, a0
                  xori        s0, a7, -1470
                  mul         s3, t3, t0
                  div         s2, s1, a2
                  c.mv        s1, s8
                  c.and       a3, a3
                  or          zero, a6, s3
                  c.mv        a4, t1
                  c.slli      t2, 19
                  c.addi4spn  a3, sp, 576
                  addi        zero, a3, -1823
                  c.add       a1, t1
                  c.sub       a3, a3
                  c.add       s4, s6
                  c.mv        s9, t1
                  mulhsu      t2, t2, s3
                  ori         s6, s3, 1943
                  mulhu       s7, a6, a7
                  c.add       ra, s3
                  slti        a3, s10, -649
                  c.slli      a1, 24
                  sra         t2, s11, a1
                  slt         s3, s4, s7
                  c.lui       ra, 14
                  c.xor       a3, s0
                  srl         a2, s6, tp
                  lui         sp, 57906
                  srl         s10, s0, a1
                  c.andi      a2, -1
                  slti        s3, a4, -1647
                  c.xor       s0, s1
                  add         s0, t2, tp
                  sub         s10, sp, a6
                  sltu        zero, t4, tp
                  rem         s0, a0, a5
                  sltu        zero, s2, a3
                  sll         s4, gp, s1
                  sltiu       a0, gp, 1779
                  divu        gp, s0, t1
                  sll         zero, s7, a7
                  sub         zero, s3, s4
                  c.nop
                  lui         ra, 180725
                  c.slli      ra, 17
                  c.slli      s10, 19
                  slli        s5, a5, 19
                  c.add       s10, ra
                  mulh        a7, s2, s0
                  sra         sp, s6, t4
                  sll         a3, zero, ra
                  c.add       ra, ra
                  lui         ra, 624917
                  slli        s10, t1, 29
                  nop
                  c.xor       a3, a3
                  c.li        ra, -1
                  sltiu       gp, gp, 563
                  mulhu       t0, a1, ra
                  sra         zero, a0, a2
                  sub         ra, a6, a5
                  c.addi16sp  sp, 288
                  c.li        a6, -1
                  andi        zero, s11, 1637
                  ori         a0, s8, -823
                  srli        s7, t6, 19
                  c.xor       a3, a3
                  or          a5, t2, s3
                  slli        a2, t5, 11
                  c.nop
                  rem         a5, s3, a4
                  ori         s3, s11, -1929
                  ori         gp, s1, 483
                  c.nop
                  c.mv        s7, sp
                  c.slli      s6, 24
                  mulh        a3, s0, s7
                  srl         zero, s1, s0
                  c.li        t1, 3
                  c.srli      a3, 14
                  c.sub       a3, a4
                  rem         s7, a5, s0
                  c.mv        s9, s7
                  srai        zero, s6, 30
                  srai        s1, tp, 17
                  div         zero, s1, a7
                  mulhu       s6, s2, a0
                  c.addi16sp  sp, 480
                  auipc       s4, 126502
                  c.slli      ra, 4
                  c.andi      a3, -1
                  divu        zero, t0, s10
                  andi        a7, tp, 920
                  slt         zero, s11, s7
                  c.addi      a4, -1
                  c.add       t3, s0
                  slli        t0, a0, 19
                  nop
                  sll         a3, t5, t5
                  mulhu       tp, t2, a5
                  xori        s9, s1, -2020
                  and         a3, t0, tp
                  sll         a7, tp, a6
                  divu        zero, a1, a5
                  sltu        zero, t1, a6
                  c.add       ra, s0
                  sll         ra, s2, s8
                  slti        t0, a5, 1905
                  srli        gp, s4, 9
                  srli        s4, t3, 29
                  divu        s2, s2, s1
                  slti        s8, s3, -1631
                  srai        s6, t2, 19
                  c.srli      a0, 13
                  rem         a0, a7, a3
                  c.andi      a5, -1
                  c.add       ra, a5
                  c.or        a3, a2
                  div         s1, s4, s4
                  andi        a0, s1, 1149
                  sll         zero, a4, t2
                  c.addi      a2, 31
                  c.addi16sp  sp, 368
                  addi        s5, s4, 472
                  addi        s10, s10, -1708
                  mul         s4, t1, s1
                  c.add       s4, ra
                  slli        a2, t3, 27
                  srl         s1, gp, sp
                  sltiu       s2, a4, -1149
                  lui         ra, 518934
                  rem         t1, s6, a6
                  auipc       s9, 876589
                  c.lui       s3, 29
                  c.addi16sp  sp, 64
                  mulh        s2, gp, ra
                  andi        a3, s5, 147
                  mul         s5, a7, t0
                  c.li        t3, 20
                  c.xor       a3, a3
                  mulhu       sp, s6, s6
                  c.addi4spn  a3, sp, 64
                  div         a7, a3, t1
                  c.and       a3, s1
                  srli        zero, s6, 19
                  srl         a2, zero, a6
                  c.addi4spn  a3, sp, 864
                  and         s1, zero, s4
                  mulhsu      s3, t3, t1
                  c.slli      a0, 10
                  xori        s5, s7, -2032
                  c.addi      gp, 24
                  c.and       s0, a3
                  xori        s3, t6, 723
                  and         s4, t4, s9
                  c.addi16sp  sp, -16
                  auipc       a5, 166885
                  ori         s6, zero, -830
                  mulhsu      a3, t6, s3
                  mulh        s4, s1, s0
                  mulhu       a4, a4, s4
                  c.li        t2, 10
                  c.and       a1, a3
                  mulh        t3, gp, s4
                  divu        a6, s2, t0
                  c.andi      a3, -1
                  sltiu       s2, s6, 1285
                  mulhsu      s2, zero, t2
                  c.addi      s6, 15
                  c.addi      s10, 30
                  slli        zero, s7, 23
                  sltu        zero, a4, tp
                  c.lui       tp, 2
                  xor         s0, t1, a1
                  sra         zero, a4, t4
                  mulhsu      a5, tp, gp
                  and         tp, s0, s2
                  c.add       tp, a4
                  add         a1, gp, s8
                  c.and       a3, a3
                  c.lui       s3, 9
                  c.nop
                  nop
                  nop
                  c.srli      s0, 6
                  c.and       a3, a3
                  sltiu       a5, t4, 1621
                  c.addi16sp  sp, -16
                  sub         zero, s8, a4
                  slt         a0, t1, sp
                  c.nop
                  c.nop
                  slti        a2, s10, -580
                  add         s2, s0, t6
                  srli        s3, s0, 1
                  c.addi16sp  sp, -16
                  sll         s4, s4, s10
                  srai        s9, zero, 18
                  c.mv        sp, gp
                  c.sub       a0, a3
                  c.addi4spn  a3, sp, 896
                  srli        s10, t4, 13
                  rem         a7, t0, a7
                  auipc       s5, 935115
                  c.or        a3, a3
                  div         tp, t2, gp
                  c.addi4spn  a3, sp, 832
                  slt         s4, a3, a4
                  ori         s3, s10, -1272
                  c.slli      t1, 24
                  c.andi      a3, 10
                  xori        s8, t5, 1725
                  srli        s0, gp, 4
                  ori         s11, s8, 661
                  c.add       ra, s4
                  c.add       a2, s5
                  srai        s6, t2, 15
                  slli        s8, s11, 26
                  slli        a7, s9, 18
                  ori         s10, t1, 519
                  c.and       a3, a3
                  sra         sp, s9, t0
                  sltu        tp, t2, zero
                  sra         a5, a2, s9
                  c.slli      t3, 4
                  c.nop
                  srli        a1, s9, 9
                  c.srai      a3, 20
                  srli        a1, a1, 12
                  c.sub       a3, a5
                  sltiu       t1, a2, -344
                  and         t2, s8, s3
                  addi        a0, a4, -1421
                  div         zero, t5, ra
                  c.srai      a3, 9
                  xori        s11, t0, 79
                  c.add       s9, s4
                  lui         s4, 171199
                  c.or        a3, a3
                  divu        zero, a1, s3
                  mul         a4, gp, a0
                  c.slli      s6, 1
                  c.srai      a3, 16
                  add         gp, a3, s5
                  c.nop
                  mulhsu      sp, ra, t1
                  c.or        a3, a0
                  c.andi      a3, -1
                  mul         a3, s3, s3
                  srli        s0, t0, 9
                  mulhsu      s7, s4, ra
                  rem         a6, t6, t5
                  xor         s9, s3, a7
                  xori        s6, s1, 744
                  c.nop
                  c.addi      t3, -1
                  c.srli      a3, 3
                  c.and       a3, a0
                  rem         a3, s4, zero
                  xor         tp, s9, a4
                  srl         s8, gp, a1
                  c.srai      a3, 1
                  c.lui       s6, 31
                  c.addi      s8, -1
                  addi        s6, s5, 1404
                  c.add       s8, t0
                  c.addi      t1, -1
                  add         s5, s1, sp
                  auipc       t3, 364368
                  mulhsu      s1, sp, ra
                  lui         s2, 840455
                  add         t3, s0, a6
                  mulh        tp, s4, a0
                  xori        t3, a3, 451
                  sll         zero, s10, a0
                  sra         a4, s2, s10
                  or          t0, t4, s6
                  sltu        zero, a3, s11
                  c.srai      a3, 29
                  mulhsu      s0, t2, s3
                  c.or        s0, a3
                  srl         t1, s11, s11
                  c.sub       a3, a3
                  divu        a0, s9, s3
                  nop
                  mulhsu      s4, a6, s3
                  or          t0, s5, s5
                  xori        a0, tp, -1163
                  c.li        s10, -1
                  mulhu       s9, t5, s5
                  slli        zero, sp, 27
                  c.mv        tp, a7
                  or          zero, s10, s3
                  divu        s2, s7, t5
                  rem         a6, gp, a5
                  c.addi      a7, 4
                  sltu        zero, a5, a6
                  srli        zero, a3, 6
                  c.addi      s7, -1
                  mulh        s6, ra, t6
                  mulhu       s0, s9, ra
                  sltu        s10, t2, s11
                  c.sub       a3, a3
                  srli        a3, s8, 5
                  div         zero, s3, s7
                  xori        s2, t3, 964
                  c.lui       s4, 3
                  c.lui       a1, 29
                  xor         sp, t4, s8
                  mul         zero, ra, s10
                  andi        a6, sp, -1802
                  c.and       a5, s1
                  auipc       t0, 458166
                  or          a0, s2, a0
                  c.add       a4, ra
                  sra         sp, s7, zero
                  mulh        zero, s9, t0
                  mulhsu      a0, s3, s2
                  sra         a0, s5, tp
                  c.xor       a3, a3
                  mulhu       t2, s8, s5
                  rem         ra, s10, a3
                  c.sub       a3, a0
                  sra         a7, s2, ra
                  srai        s7, s8, 26
                  c.andi      a3, -1
                  xor         t1, s4, gp
                  nop
                  sub         ra, s4, t2
                  c.nop
                  xor         sp, t3, s6
                  c.addi16sp  sp, -16
                  srai        s5, t1, 25
                  mulhsu      s6, t6, s3
                  c.li        a0, 7
                  mulh        s5, a0, t0
                  c.and       a5, a3
                  or          a7, a3, gp
                  mul         s8, s10, zero
                  sub         s1, tp, s5
                  c.srai      a3, 25
                  nop
                  mulh        a5, s9, a4
                  mulhsu      s2, s3, t2
                  xor         t3, a2, ra
                  nop
                  addi        s5, t4, -1535
                  mul         s10, s9, tp
                  c.srai      a3, 16
                  c.add       s8, a2
                  c.and       a3, a3
                  c.nop
                  or          t3, a6, a5
                  mulhu       s6, s6, t6
                  mulhsu      s6, s3, a7
                  and         s8, a1, s3
                  c.li        a4, 22
                  mul         s7, a5, a0
                  xori        a7, t0, 191
                  and         zero, a1, s1
                  nop
                  mulhu       gp, s2, t0
                  sra         s2, s2, t2
                  c.addi16sp  sp, -16
                  div         a1, a7, t4
                  andi        s1, s5, -1913
                  c.or        a3, a3
                  or          t3, t0, t6
                  sll         t2, t2, a1
                  sra         s1, s3, t6
                  and         s10, s7, zero
                  auipc       t2, 198685
                  slt         zero, t2, a7
                  c.and       a2, a2
                  mulhsu      s6, t3, a2
                  c.nop
                  mulh        a7, a6, s4
                  c.xor       a3, a3
                  sub         zero, a1, a2
                  mul         a1, a2, s3
                  slli        zero, s4, 6
                  add         s9, ra, gp
                  add         zero, a2, a3
                  c.sub       a3, s1
                  c.or        a3, a3
                  c.add       s0, a4
                  rem         s10, s6, sp
                  mulhu       s6, tp, a6
                  srli        zero, tp, 6
                  c.addi      a3, 7
                  c.and       a3, a3
                  addi        s0, a7, 979
                  rem         t3, a1, a0
                  c.lui       t2, 11
                  xor         s5, ra, a0
                  srli        a2, a5, 14
                  sltiu       gp, ra, -548
                  c.lui       a6, 1
                  c.addi4spn  a3, sp, 464
                  xor         zero, sp, s7
                  xori        s1, t0, -1881
                  sll         s2, tp, a7
                  c.mv        s2, a6
                  c.srli      a3, 6
                  sltiu       gp, s3, -2021
                  nop
                  nop
                  c.andi      a3, -1
                  c.lui       tp, 6
                  div         a4, a1, t1
                  addi        s7, t6, 987
                  c.or        a3, s0
                  rem         t2, t0, s2
                  mul         s4, t6, a7
                  lui         a3, 970405
                  c.xor       s1, a3
                  divu        a0, a4, t4
                  andi        sp, s8, -681
                  divu        s11, s6, zero
                  lui         a5, 245420
                  or          a2, a6, s0
                  lui         s3, 992593
                  divu        s9, t6, s2
                  c.addi      a5, -1
                  mul         a6, a4, s1
                  rem         zero, s0, t2
                  nop
                  c.lui       s7, 25
                  ori         t3, gp, -1703
                  c.sub       a3, a3
                  c.andi      a4, -1
                  andi        t2, a4, 671
                  lui         s9, 722352
                  c.li        gp, -1
                  mulhu       s9, t4, s1
                  c.srai      a3, 8
                  sltiu       s3, a2, -1122
                  sll         s0, a3, s7
                  rem         ra, s6, t2
                  addi        t0, s5, -1358
                  slt         zero, t0, t5
                  c.addi      tp, -1
                  divu        zero, zero, s11
                  add         gp, s5, a1
                  srl         a0, ra, t6
                  mulh        a1, s11, s4
                  div         s8, a5, a5
                  slti        zero, s1, 960
                  c.slli      a3, 18
                  c.nop
                  c.or        a5, a3
                  mulh        s8, a5, t1
                  auipc       s0, 639725
                  c.slli      s2, 14
                  nop
                  ori         s4, a5, -1089
                  div         ra, t1, a4
                  ori         s5, s4, -1773
                  lui         s1, 178432
                  mulhsu      s7, s7, s3
                  auipc       a0, 295264
                  c.slli      s1, 4
                  srli        s9, s10, 6
                  lui         zero, 883786
                  slt         a1, a3, t0
                  c.add       sp, s10
                  c.lui       ra, 1
                  mulhu       a2, a0, t4
                  c.li        s7, 7
                  sra         t0, gp, a0
                  c.xor       a3, a3
                  sra         a3, a3, tp
                  ori         a2, tp, -377
                  divu        t3, s1, t5
                  divu        a2, ra, t0
                  c.xor       a3, a3
                  c.xor       a3, a3
                  c.lui       ra, 18
                  c.and       a3, a3
                  ori         ra, zero, -1025
                  rem         s8, a1, gp
                  c.srli      a3, 5
                  c.andi      a3, -1
                  sltiu       sp, t6, -323
                  slti        s1, t4, -73
                  sll         t3, s0, a6
                  c.and       a3, a3
                  add         s3, t5, t1
                  divu        s8, a5, s10
                  auipc       a5, 356339
                  slti        t1, t0, 1893
                  srl         s6, t4, s1
                  c.addi4spn  a3, sp, 832
                  c.sub       a3, a3
                  c.andi      a3, 8
                  and         sp, s4, sp
                  c.or        a3, s1
                  srli        s4, s4, 0
                  slti        gp, a6, -721
                  auipc       zero, 493608
                  sltu        a7, s11, s4
                  srli        s1, t2, 11
                  c.lui       ra, 11
                  c.nop
                  li         s0, 0x51c85677 #start riscv_int_numeric_corner_stream_16
                  li         t3, 0x21192fac
                  li         s11, 0x0
                  li         a7, 0x0
                  li         gp, 0x7da1e773
                  li         s9, 0x0
                  li         s1, 0x0
                  li         s10, 0x1
                  li         s8, 0x118c8118
                  li         a1, 0x0
                  c.addi4spn  s1, sp, 320
                  c.lui       t1, 12
                  c.lui       s10, 30
                  nop
                  addi        s4, s9, 1686
                  mulhu       a2, a7, t6
                  div         t3, t2, s10
                  c.addi      s7, 28
                  auipc       s10, 561619
                  div         s3, t3, sp
                  nop
                  mulhsu      a1, zero, t5
                  c.addi4spn  a3, sp, 64
                  lui         t1, 318665
                  sub         a0, s6, a4
                  mul         s10, a0, s4
                  mulh        t0, a5, s7
                  c.lui       s7, 2
                  sub         a7, t1, s10
                  mul         s4, a6, t4
                  divu        s4, s4, a4
                  rem         a3, s9, zero
                  mulhu       a0, s5, a6
                  divu        s7, a0, a2
                  div         gp, a3, sp
                  c.lui       t1, 16
                  add         s7, a1, t4
                  mul         a1, a5, a7
                  c.addi16sp  sp, -16
                  mul         s4, s7, s4
                  c.srli      a3, 20
                  sub         s1, s3, a3
                  c.srai      a3, 17
                  addi        s6, t0, 1441
                  sltu        s11, tp, s1
                  or          s9, ra, t5
                  or          a3, a3, a7
                  or          zero, t2, t2
                  sltiu       s1, s2, -550
                  c.slli      a2, 29
                  c.addi16sp  sp, 480
                  sltu        s10, a0, s1
                  auipc       gp, 572310
                  c.add       gp, t5
                  or          s1, s11, s4
                  c.nop
                  auipc       gp, 691118
                  sltiu       s0, s9, 1098
                  srli        s10, a7, 22
                  slt         s6, s5, t4
                  mulhsu      s10, s8, t0
                  c.mv        s6, s5
                  or          s4, tp, s8
                  sltiu       s10, a2, 638
                  slt         zero, t0, a7
                  div         s8, t1, tp
                  mulhsu      s1, a3, s5
                  and         t2, t1, a7
                  add         a3, a1, t4
                  c.addi      a2, -1
                  addi        sp, t5, 439
                  c.addi      ra, -1
                  slli        a7, t5, 14
                  sll         sp, t2, s9
                  sll         sp, t2, a1
                  c.addi      s6, -1
                  nop
                  xor         t3, t0, s9
                  sltiu       s9, s0, 82
                  c.xor       a0, a3
                  c.or        a2, a3
                  c.mv        a7, s7
                  c.srai      a3, 3
                  c.addi      a2, -1
                  mulhsu      zero, s11, s11
                  addi        a1, a0, 532
                  srl         a1, a3, s9
                  sra         s2, a3, a0
                  xori        t0, t4, -706
                  c.mv        s10, a7
                  srai        s8, s5, 29
                  divu        sp, t6, t6
                  c.xor       a3, a3
                  c.srli      a3, 23
                  c.xor       s0, a3
                  slti        a5, s1, 1062
                  nop
                  mul         tp, a5, s1
                  c.lui       s4, 14
                  c.andi      a3, 0
                  c.sub       a3, a3
                  c.srli      a3, 7
                  slli        a3, s4, 17
                  c.slli      s7, 4
                  ori         s0, s6, -925
                  slt         a4, t6, s5
                  c.add       a3, a2
                  rem         a4, t6, s10
                  c.xor       a3, a0
                  mulhsu      s10, t5, s10
                  div         s9, t0, zero
                  sub         s2, a2, t3
                  andi        s0, t0, -511
                  sltiu       ra, tp, 2040
                  xori        zero, s9, 1542
                  or          a0, s5, s0
                  auipc       ra, 353954
                  c.srli      a3, 18
                  c.xor       a2, a3
                  mulh        sp, zero, s11
                  slti        zero, a1, 1240
                  c.slli      tp, 11
                  sll         s4, s3, a2
                  sra         s3, gp, s4
                  c.sub       a4, a3
                  and         zero, t0, t0
                  sltiu       s0, t5, -1437
                  c.addi      a6, -1
                  c.lui       a6, 17
                  c.li        ra, 17
                  addi        gp, s9, -815
                  c.andi      a3, -1
                  c.addi16sp  sp, 336
                  xori        s11, ra, 548
                  sltiu       zero, a4, -1122
                  divu        zero, s8, s10
                  sub         tp, a7, a2
                  sltiu       t1, a2, 1531
                  lui         s1, 782980
                  sra         s11, s6, t4
                  c.addi16sp  sp, 496
                  srli        zero, sp, 5
                  c.srai      a3, 28
                  c.andi      a3, -1
                  ori         zero, s2, 1737
                  ori         tp, sp, -459
                  srai        s5, s5, 29
                  slti        s5, t0, 445
                  lui         a1, 157763
                  c.srai      a3, 30
                  sltu        s8, a6, s6
                  c.mv        t0, t0
                  mulhsu      s3, s9, a0
                  srli        s7, zero, 15
                  slli        s6, tp, 5
                  mulhu       s10, s7, s3
                  ori         s1, t6, -284
                  c.add       s8, t4
                  c.add       s5, ra
                  c.add       a6, s10
                  c.add       ra, a6
                  c.addi16sp  sp, -16
                  srai        sp, a5, 30
                  mulhsu      t1, s5, a2
                  c.li        a4, 2
                  xori        tp, t0, -1384
                  mulhsu      s11, s6, a0
                  c.or        a3, a3
                  or          sp, a2, s5
                  sltiu       gp, a5, -1615
                  mul         zero, t0, a4
                  sll         s7, t5, a1
                  mulhsu      a6, t3, a6
                  rem         ra, t3, s0
                  add         ra, s6, sp
                  c.xor       a3, a3
                  divu        a1, a6, s7
                  c.addi4spn  a3, sp, 640
                  mulh        s0, a2, s5
                  sll         a1, t4, s5
                  c.nop
                  mulh        a3, a3, s6
                  addi        s8, zero, -1846
                  ori         s0, s2, 1041
                  c.sub       a3, a3
                  c.and       a3, a3
                  sltiu       t2, a5, 983
                  c.mv        s4, s4
                  c.addi      sp, 4
                  mulhsu      s6, a4, a5
                  c.sub       a0, a3
                  c.addi16sp  sp, 432
                  c.li        tp, -1
                  c.xor       a1, a0
                  auipc       s9, 933018
                  c.xor       a3, a3
                  c.srai      a3, 18
                  c.and       a3, a3
                  mulh        a7, s7, gp
                  c.li        s3, -1
                  and         s6, a6, a3
                  mulhu       t3, t1, s2
                  sub         a7, s9, tp
                  sltu        s7, s1, s1
                  or          t0, zero, t1
                  srai        s0, t2, 30
                  slli        zero, a6, 5
                  andi        s2, a4, -912
                  slt         a6, a3, t5
                  sltu        s5, a3, t5
                  c.slli      s5, 14
                  sra         tp, s8, s4
                  slti        a4, s11, 633
                  c.and       a3, s1
                  auipc       t0, 884987
                  sra         a1, s10, a7
                  divu        a7, s10, s7
                  c.li        a2, 12
                  or          a5, a7, s7
                  sll         s8, s9, s2
                  xori        s2, ra, -1044
                  c.li        ra, -1
                  srli        s6, a4, 3
                  and         s3, s11, gp
                  c.addi16sp  sp, -16
                  c.srai      a3, 31
                  c.sub       a3, a3
                  sltu        s4, zero, s1
                  sra         zero, a3, s6
                  srli        a5, s7, 6
                  c.add       gp, a7
                  slti        sp, gp, -439
                  sltiu       s4, s4, -360
                  xor         a3, sp, s2
                  srl         a3, t0, zero
                  slli        s9, a3, 29
                  c.nop
                  mul         zero, gp, a6
                  slli        s8, t3, 6
                  div         a7, a4, gp
                  xori        a2, s9, 1079
                  divu        a1, s3, a4
                  c.srli      a3, 15
                  sra         a4, a1, t6
                  sltu        ra, a0, a2
                  c.nop
                  c.or        a3, a4
                  xori        a5, a3, -1259
                  c.mv        a4, s2
                  slt         gp, s3, a7
                  c.srli      a3, 26
                  c.li        a1, 31
                  slti        s11, s6, 1646
                  or          s1, zero, a3
                  c.mv        a5, t0
                  or          zero, s7, a0
                  srl         ra, t0, t6
                  addi        t2, zero, -1095
                  and         s0, a0, s10
                  c.xor       a0, a3
                  c.mv        a3, s0
                  c.andi      a3, 25
                  c.addi16sp  sp, -16
                  c.srli      a3, 9
                  c.andi      s0, 24
                  srai        s6, s9, 30
                  slti        zero, s3, -2003
                  c.srli      a3, 19
                  c.lui       a2, 14
                  c.li        s0, -1
                  srl         a3, s6, s3
                  divu        zero, a4, gp
                  c.lui       ra, 31
                  sltiu       sp, a3, 106
                  xor         tp, t5, t3
                  sra         a6, gp, a5
                  c.addi16sp  sp, 384
                  auipc       a5, 851471
                  sltiu       s1, s4, -1860
                  lui         s9, 989968
                  c.addi16sp  sp, -16
                  or          zero, t1, a7
                  slli        a5, gp, 0
                  mulhu       a5, a2, tp
                  c.nop
                  auipc       t2, 755890
                  and         s8, a2, s6
                  c.srai      s1, 2
                  mul         t3, tp, gp
                  c.srli      a5, 16
                  c.li        s5, 31
                  srli        zero, t0, 19
                  xor         t0, s0, t6
                  addi        a5, tp, -1258
                  c.addi      s3, 23
                  auipc       s3, 601518
                  xor         s10, tp, a0
                  andi        s6, zero, -512
                  xor         s7, a1, s7
                  mulhsu      t0, a1, s10
                  c.slli      s2, 6
                  c.sub       a0, a3
                  c.or        a3, a2
                  c.andi      a3, -1
                  mulhu       a6, a6, a4
                  andi        a7, gp, 456
                  addi        s7, s3, -1864
                  c.addi      a6, -1
                  mulh        s3, s2, gp
                  slti        t2, gp, 303
                  c.add       gp, s10
                  srai        a1, a3, 14
                  or          ra, s10, a0
                  c.addi16sp  sp, 16
                  sll         s6, s6, t1
                  c.addi      ra, 19
                  xor         s11, a4, tp
                  c.or        a3, a3
                  mul         s0, t6, s8
                  sra         a5, zero, s8
                  c.lui       s2, 31
                  mulh        ra, t1, s8
                  mulhu       s1, s1, tp
                  mulhsu      zero, a4, s0
                  div         s5, s3, s7
                  mulhsu      a1, zero, s9
                  srai        s1, s6, 30
                  mulhsu      a6, s3, a6
                  sra         s0, s2, a7
                  nop
                  add         zero, s5, t4
                  ori         zero, a4, -416
                  c.addi4spn  a4, sp, 128
                  c.addi16sp  sp, -16
                  c.srai      a3, 19
                  sra         s1, zero, s5
                  div         a0, s1, t0
                  c.nop
                  slt         a4, s8, s9
                  sra         a7, tp, s9
                  c.addi      s5, 8
                  and         a4, s11, a2
                  rem         a7, t0, ra
                  add         s11, a1, t1
                  sub         s4, a3, a1
                  mul         zero, gp, zero
                  mulhsu      s7, a1, sp
                  slt         sp, s7, s7
                  c.srai      a2, 2
                  c.addi16sp  sp, -16
                  c.srai      a3, 17
                  add         t3, tp, t4
                  c.addi      s2, 17
                  c.or        s0, a2
                  c.addi4spn  a3, sp, 128
                  mul         s0, t4, t1
                  c.addi16sp  sp, 176
                  sltu        zero, a4, s3
                  c.and       a4, a3
                  sub         s3, s7, a5
                  ori         s10, a3, -1026
                  rem         a4, t5, zero
                  srli        a5, t5, 23
                  mulhu       s2, s9, t1
                  auipc       s11, 264450
                  srli        gp, s10, 15
                  sra         zero, t3, t3
                  sra         t2, s9, t2
                  xori        tp, t1, -703
                  c.slli      a3, 19
                  sltiu       t0, s9, -1405
                  c.addi16sp  sp, 272
                  c.slli      a0, 10
                  sltu        a6, t0, s6
                  c.mv        s10, ra
                  slti        a5, t1, 1850
                  sra         s6, a2, t4
                  andi        a7, zero, -1932
                  div         s1, a2, zero
                  andi        t1, a6, -1718
                  c.or        a3, a3
                  c.lui       ra, 13
                  sra         a0, a0, s8
                  c.addi16sp  sp, 176
                  addi        tp, a6, 532
                  mulh        a5, s9, a0
                  c.srai      a3, 27
                  srl         s5, s0, s2
                  mulhsu      s10, a4, s10
                  mul         s6, s8, s9
                  addi        a6, s0, 613
                  c.addi4spn  a3, sp, 384
                  slti        s9, s10, -1993
                  mul         sp, t6, a6
                  add         t3, s3, a7
                  lui         t2, 337970
                  srai        zero, a1, 9
                  sub         s10, a6, s4
                  c.sub       a3, a3
                  nop
                  and         tp, s0, s3
                  mulhu       s8, tp, t6
                  slli        zero, a4, 21
                  slt         a7, ra, s10
                  slti        zero, tp, 1149
                  sltu        a2, t5, s2
                  c.or        a3, a3
                  c.or        a3, s1
                  auipc       a6, 516980
                  or          s1, s7, a4
                  c.srli      a3, 3
                  ori         s1, s0, 558
                  c.andi      a3, 12
                  c.add       s8, t4
                  sltiu       a2, ra, 720
                  c.add       s3, ra
                  xori        a6, ra, 1273
                  c.srai      a3, 27
                  slli        t3, t2, 30
                  sra         s3, a7, a6
                  xori        a0, t5, 368
                  c.sub       a3, a3
                  xori        gp, s8, 135
                  mulhu       s6, a0, ra
                  slti        s6, a3, 353
                  lui         t3, 292774
                  div         a3, gp, ra
                  c.add       s5, gp
                  c.andi      a3, -1
                  sltu        t2, a6, s4
                  c.addi4spn  a3, sp, 32
                  auipc       a6, 935372
                  srl         ra, zero, tp
                  c.srli      a3, 28
                  and         s3, a4, s5
                  and         a6, tp, s11
                  div         a3, tp, ra
                  sltu        s5, s10, s6
                  c.sub       a3, a3
                  c.addi4spn  a3, sp, 640
                  srli        t0, s6, 9
                  mulhu       gp, s0, a4
                  sll         a1, zero, a5
                  c.and       a5, a3
                  srli        t0, tp, 31
                  mul         zero, t1, sp
                  c.addi16sp  sp, -16
                  slt         a3, t0, s0
                  sltiu       t1, a2, 1007
                  c.addi      s10, -1
                  c.nop
                  rem         zero, sp, s0
                  slli        s7, s0, 16
                  sub         zero, t1, s0
                  lui         s0, 1026179
                  div         s3, a6, a6
                  c.slli      s8, 12
                  c.srli      a3, 24
                  c.slli      s0, 9
                  slt         a0, ra, zero
                  c.nop
                  srai        s5, gp, 15
                  lui         zero, 205060
                  srl         zero, t5, s9
                  xori        t2, a6, -2034
                  c.or        a3, a0
                  srli        a2, tp, 18
                  andi        ra, t6, -1485
                  mulhu       a6, a5, t4
                  mul         a2, tp, s9
                  c.xor       a3, a3
                  c.add       a0, s9
                  ori         a7, s7, -700
                  mulh        t0, s3, a5
                  sltu        a6, a7, a2
                  sub         s1, s1, s2
                  sll         s9, zero, a4
                  c.xor       a3, a3
                  div         t1, t5, a3
                  div         s1, s11, a6
                  addi        t2, a6, -554
                  mul         zero, t2, s9
                  c.xor       a3, a3
                  or          s10, s10, s3
                  c.add       ra, s4
                  c.mv        s1, s3
                  auipc       s8, 339568
                  c.sub       a4, a3
                  c.xor       a1, a3
                  sll         t2, s4, s5
                  c.srai      a3, 16
                  ori         s7, s7, -1941
                  xor         s6, s1, t5
                  c.and       a3, s0
                  c.lui       s3, 3
                  c.addi16sp  sp, 368
                  c.srai      a3, 10
                  slli        zero, a5, 31
                  mulhsu      t1, s9, gp
                  lui         a6, 247333
                  mulhu       s1, s4, tp
                  c.add       a3, s6
                  c.sub       a2, a3
                  mul         zero, t5, s7
                  slt         tp, a0, t2
                  srli        zero, t6, 9
                  srai        a6, tp, 22
                  srl         s8, s5, s7
                  mul         s0, t5, t6
                  c.srai      s1, 20
                  and         t2, s4, s9
                  c.lui       ra, 5
                  div         gp, t2, s5
                  c.mv        s2, a0
                  auipc       s7, 594006
                  addi        a2, t3, -399
                  slli        t2, s8, 28
                  srl         s1, t0, s4
                  c.slli      a4, 17
                  add         s3, s10, t2
                  mulhsu      ra, s1, t1
                  c.lui       s0, 15
                  ori         s4, zero, 252
                  mulhsu      sp, s0, a6
                  c.nop
                  c.sub       a3, a3
                  slli        s9, t3, 1
                  slti        a7, s0, 1809
                  c.addi16sp  sp, 112
                  lui         s4, 504582
                  c.srai      a3, 6
                  andi        zero, t5, 1993
                  c.andi      a3, -1
                  divu        s7, s9, s6
                  sltiu       a2, t2, -376
                  div         ra, zero, a5
                  xor         a1, ra, ra
                  srl         gp, s6, a5
                  c.addi4spn  a3, sp, 384
                  mulhsu      t0, a7, t0
                  c.addi4spn  a1, sp, 320
                  c.sub       a3, a3
                  c.lui       gp, 2
                  ori         a0, t6, 649
                  slt         ra, ra, a3
                  c.or        a3, a5
                  add         a6, a2, s4
                  sub         tp, t3, t3
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 576
                  c.xor       a3, a3
                  c.addi16sp  sp, -16
                  mulhsu      a5, a5, t3
                  c.mv        a6, a1
                  auipc       s1, 924542
                  add         a1, s2, a5
                  mulh        s2, a1, a0
                  divu        s9, s5, s9
                  sltu        s8, s0, ra
                  c.li        t2, -1
                  sltiu       s5, sp, -716
                  xor         a5, s4, s4
                  auipc       tp, 234554
                  c.and       a3, a3
                  ori         t2, a7, 1087
                  nop
                  srai        a4, s10, 26
                  c.xor       a3, a3
                  sra         s11, t5, t6
                  mul         t1, s5, a1
                  mulhu       t3, sp, s8
                  c.srai      a3, 10
                  lui         tp, 1047824
                  c.slli      sp, 9
                  lui         t1, 743431
                  slt         tp, t4, s1
                  sltu        s9, a4, s6
                  sltu        s0, s11, s11
                  or          s6, a7, s9
                  mulh        s7, s3, a2
                  sll         zero, sp, a6
                  xor         s11, s4, s8
                  sltu        s3, t1, s0
                  c.andi      a3, 5
                  c.srli      a4, 19
                  c.sub       a3, a3
                  mulh        ra, a3, a3
                  slli        s7, a7, 2
                  c.xor       a4, a3
                  c.lui       s1, 24
                  auipc       s6, 694263
                  add         gp, s9, a5
                  sll         t2, a2, t3
                  sltiu       zero, s4, 509
                  c.lui       s5, 11
                  slt         a5, s2, a7
                  add         s3, s4, s8
                  sra         s7, a1, a0
                  c.addi4spn  a3, sp, 112
                  srl         gp, a1, t4
                  sltiu       gp, t5, -481
                  sltu        a6, s5, s9
                  slt         t1, sp, s2
                  sltiu       s2, s6, 454
                  c.srli      a4, 8
                  c.lui       s1, 17
                  xori        zero, t1, -990
                  c.sub       a3, a3
                  c.addi4spn  a3, sp, 448
                  srl         s9, a1, t5
                  c.andi      a3, 16
                  c.xor       s1, a3
                  c.andi      a3, 8
                  c.li        t0, -1
                  c.nop
                  slti        a0, ra, -2023
                  sll         a0, s5, s7
                  c.sub       a3, a5
                  srli        a5, s2, 14
                  srai        zero, t5, 30
                  sltu        s2, a6, s8
                  c.lui       a3, 2
                  srli        a3, s11, 8
                  sra         s11, t4, a3
                  slt         zero, a4, a2
                  xori        s4, s5, -1002
                  c.sub       a1, s0
                  mulhsu      s9, ra, s2
                  mul         gp, s3, t4
                  srli        s8, a7, 10
                  rem         a6, a0, tp
                  slli        t0, t3, 18
                  andi        t0, t0, -1283
                  auipc       s0, 487281
                  ori         a7, t4, -1557
                  c.add       s4, tp
                  mul         s3, a6, s11
                  c.addi4spn  a3, sp, 128
                  xor         a2, sp, s0
                  add         s1, a3, ra
                  c.or        a3, a1
                  c.li        ra, -1
                  sll         t1, a6, s9
                  c.andi      a3, -1
                  c.addi4spn  a3, sp, 608
                  or          s8, ra, s7
                  sra         zero, t1, a7
                  c.sub       a3, a3
                  nop
                  c.slli      gp, 20
                  mulhu       a1, t2, s0
                  c.addi16sp  sp, -16
                  add         s11, sp, s4
                  mulh        sp, t5, sp
                  sltiu       t3, s7, -1007
                  mulhu       zero, s0, a7
                  addi        s0, s2, -1320
                  c.srli      a3, 16
                  and         t0, a3, s5
                  mul         ra, a2, s11
                  rem         zero, a4, sp
                  lui         t1, 420517
                  divu        s2, t2, t4
                  c.sub       a3, a3
                  c.li        s4, 27
                  slt         a7, t6, a4
                  sltiu       a6, s8, 1994
                  c.addi4spn  a3, sp, 832
                  c.xor       a0, a3
                  mul         s6, ra, s6
                  c.addi      s10, -1
                  c.andi      a3, 15
                  srai        a2, t5, 27
                  c.slli      s6, 11
                  divu        a4, t3, ra
                  sll         s11, s8, tp
                  sltiu       a7, s2, 23
                  lui         s10, 1004387
                  srli        s10, s0, 30
                  c.mv        ra, s0
                  xori        s3, sp, -312
                  lui         s5, 886
                  andi        t2, t1, -454
                  auipc       a1, 568931
                  c.xor       a3, a3
                  srli        s6, t0, 25
                  slt         zero, t0, s11
                  sll         s10, a6, t6
                  c.slli      s0, 5
                  slli        s6, t1, 25
                  sll         s6, s1, s9
                  c.and       a3, a3
                  auipc       a1, 981026
                  add         zero, s11, s1
                  c.srai      a3, 12
                  c.or        a3, a1
                  c.slli      sp, 15
                  c.srai      a3, 16
                  c.add       t1, s9
                  sltiu       a1, t6, -1965
                  add         a2, tp, a5
                  c.slli      s11, 22
                  slti        s1, a0, 1767
                  c.addi4spn  s1, sp, 128
                  mulhsu      s10, a7, s2
                  c.andi      a3, -1
                  lui         s10, 76218
                  c.addi4spn  a3, sp, 128
                  rem         zero, t5, sp
                  c.addi4spn  a3, sp, 704
                  c.mv        s8, a2
                  mulhsu      s4, t6, s2
                  c.mv        s4, s0
                  sll         a6, a6, s9
                  xori        t2, s9, 1910
                  or          a0, s10, s5
                  c.li        a2, -1
                  c.mv        t1, a6
                  rem         s4, s2, a7
                  add         zero, t6, a0
                  c.srai      a3, 4
                  c.add       s5, s4
                  sra         a0, a4, s9
                  c.and       a3, a3
                  c.andi      a3, 0
                  c.srli      a2, 16
                  mulhu       a0, s5, zero
                  c.andi      a3, -1
                  c.or        a2, a3
                  sub         a5, s1, s0
                  c.and       a4, a3
                  c.mv        a0, ra
                  c.srai      a3, 18
                  c.andi      a2, -1
                  srai        s6, t0, 25
                  c.addi4spn  a3, sp, 576
                  c.and       s0, a5
                  mulhsu      t1, gp, s2
                  srl         t2, a4, t6
                  addi        s0, t2, 438
                  c.sub       a3, a3
                  ori         a4, s1, 14
                  c.addi      s11, 31
                  sub         s1, s10, s0
                  c.slli      t3, 12
                  c.mv        ra, tp
                  ori         s5, s5, -1327
                  srli        s2, s6, 26
                  srli        zero, s7, 31
                  c.srai      a4, 12
                  srl         s1, a3, s8
                  sltiu       t0, t2, 1511
                  sra         a3, a3, s6
                  c.lui       t3, 27
                  nop
                  srli        s1, s3, 17
                  divu        s5, t6, ra
                  sll         a0, a4, a1
                  c.mv        a4, s9
                  slli        a0, s1, 26
                  c.add       ra, s9
                  c.or        a3, a3
                  sltiu       s2, a0, 452
                  lui         s7, 116030
                  c.srli      s0, 24
                  andi        zero, a5, -644
                  c.srli      a3, 14
                  rem         s5, t3, t1
                  c.andi      s0, -1
                  mulh        zero, a6, t3
                  sub         s9, a6, a3
                  c.mv        ra, sp
                  c.addi4spn  s1, sp, 576
                  lui         a7, 358323
                  xor         s10, sp, t3
                  xor         s6, s4, a6
                  andi        s6, tp, 1188
                  srl         s11, a3, s0
                  sll         s0, s11, a4
                  c.mv        ra, s4
                  c.addi      s0, 8
                  c.srli      a3, 31
                  c.addi16sp  sp, -16
                  andi        a4, t1, -1421
                  c.add       sp, a3
                  divu        s4, s4, a6
                  c.addi4spn  a3, sp, 576
                  ori         t3, a2, 1551
                  c.addi16sp  sp, -16
                  xori        a2, t1, 462
                  auipc       s6, 832375
                  srai        s0, a6, 3
                  mulhsu      zero, tp, t5
                  ori         tp, a0, -161
                  mulhsu      gp, a2, t6
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_19
                  li         s11, 0x4e1a84af
                  li         s3, 0x1
                  li         s5, 0x1
                  li         a1, 0x0
                  li         s9, 0x0
                  li         s1, 0x0
                  li         s10, 0x6e06f04b
                  li         a5, 0x0
                  li         a6, 0x1
                  mul         zero, s8, s3
                  divu        s5, s7, t2
                  addi        s7, s1, -1002
                  lui         s10, 802694
                  div         zero, s7, s6
                  lui         s7, 43569
                  divu        s7, tp, a6
                  mulhu       zero, t0, t5
                  add         s10, s1, a6
                  mulhsu      t0, a2, ra
                  div         sp, t1, a2
                  c.add       t3, ra
                  addi        s9, t3, -1500
                  auipc       a2, 777568
                  c.addi      gp, 3
                  div         gp, t6, s9
                  addi        t1, gp, -202
                  c.li        s9, -1
                  c.li        t2, 10
                  nop
                  add         a3, zero, t0 #end riscv_int_numeric_corner_stream_19
                  srl         s2, t4, a0
                  srai        s5, s0, 15
                  c.lui       a3, 26
                  andi        s3, a4, 1011
                  c.andi      a3, -1
                  mulhsu      s0, s3, s6
                  slt         ra, gp, zero
                  srai        t2, gp, 9
                  slt         t2, t1, a4
                  div         zero, s8, s11
                  divu        a6, sp, s1
                  xor         s11, zero, gp
                  c.add       ra, a5
                  sltiu       t0, a5, 709
                  xori        a3, tp, -445
                  sra         a7, t4, s10
                  rem         s0, t5, zero
                  srli        tp, t0, 3
                  c.sub       a4, a3
                  c.or        a3, a3
                  slt         t3, ra, a5
                  slti        s2, a1, 164
                  sll         a6, s9, ra
                  c.add       a5, a6
                  sra         a4, s7, s5
                  slti        s11, t4, -460
                  mul         sp, t0, s0
                  andi        a6, s4, 15
                  c.addi16sp  sp, 96
                  c.andi      s0, -1
                  andi        a3, a1, 1593
                  ori         zero, s0, -417
                  c.slli      s4, 13
                  c.slli      t3, 2
                  c.mv        a2, s5
                  div         s8, t1, t3
                  divu        zero, a2, a6
                  c.xor       a3, a3
                  xor         s5, a1, t2
                  srai        s11, t4, 21
                  slti        t1, a2, 1029
                  srl         a2, gp, t3
                  sltu        s11, sp, a6
                  c.srli      a3, 7
                  c.or        a3, a3
                  c.add       a4, a1
                  nop
                  auipc       t3, 15754
                  addi        s1, s10, -1380
                  sub         ra, t0, s4
                  mul         s0, s4, gp
                  lui         s10, 95260
                  c.lui       t2, 1
                  c.addi4spn  a3, sp, 576
                  and         s10, s11, s0
                  ori         zero, s7, -1678
                  c.mv        a1, t0
                  srl         a6, s10, s10
                  c.sub       a3, a3
                  sltu        t1, s10, t6
                  sltiu       s1, s1, -1324
                  rem         a1, s3, t1
                  c.srli      a3, 6
                  srli        s8, a7, 0
                  andi        s5, t1, -1507
                  addi        zero, s11, -460
                  sltiu       s11, a0, 2028
                  c.addi4spn  s0, sp, 576
                  slli        zero, a5, 6
                  addi        s5, s11, -1951
                  or          s6, s7, t2
                  c.xor       a3, a3
                  divu        zero, t3, a6
                  c.slli      s6, 24
                  divu        zero, a4, s9
                  sll         zero, s10, t1
                  mulhu       zero, a4, s2
                  c.li        gp, -1
                  ori         gp, a7, 457
                  rem         a3, s8, t6
                  nop
                  c.slli      s11, 26
                  andi        s3, s11, -367
                  ori         s2, s1, -930
                  mul         s10, a2, a2
                  auipc       a0, 47727
                  srl         a1, t6, s0
                  c.addi16sp  sp, -16
                  xor         s2, sp, t3
                  slt         s6, t1, a0
                  c.xor       a3, a3
                  xor         s10, a7, t1
                  andi        gp, s6, 894
                  sltu        gp, a4, gp
                  c.nop
                  sra         s10, t2, tp
                  sltiu       a1, a4, -1933
                  c.slli      s10, 29
                  c.li        s2, 20
                  andi        t0, a5, -668
                  and         s11, s1, gp
                  addi        tp, s3, -465
                  c.lui       s5, 16
                  srai        s2, t2, 1
                  c.andi      a3, -1
                  c.addi      ra, 10
                  rem         s2, s5, a5
                  c.andi      a3, 31
                  c.and       a3, a3
                  c.sub       a3, a2
                  c.andi      a3, -1
                  c.addi4spn  a3, sp, 960
                  and         t3, s2, a6
                  nop
                  auipc       t0, 840690
                  c.xor       a3, a1
                  srli        a6, a5, 27
                  lui         s0, 110948
                  mulh        t2, ra, zero
                  c.and       a3, a2
                  slli        ra, a3, 14
                  c.slli      s0, 20
                  ori         s7, s0, 1690
                  slli        t3, s10, 9
                  c.nop
                  c.addi16sp  sp, -16
                  or          a0, tp, t6
                  c.and       a3, a3
                  xori        s7, t0, 1857
                  c.sub       a3, a3
                  divu        sp, a0, s8
                  c.addi      s7, 15
                  nop
                  srl         s3, s3, s2
                  c.or        a0, a3
                  slli        s4, s7, 8
                  sll         s5, tp, t5
                  c.sub       a3, a3
                  c.and       a3, a3
                  mulhsu      s6, t0, a4
                  mulhu       zero, a6, t2
                  andi        zero, t6, -117
                  div         s7, a7, s10
                  auipc       s3, 649094
                  c.addi      gp, -1
                  slt         t2, s10, a1
                  add         s2, t1, s5
                  c.or        a3, a3
                  c.li        gp, -1
                  srl         s6, tp, t3
                  mulh        s9, sp, a7
                  c.srai      a3, 17
                  srli        t1, s5, 24
                  addi        tp, a7, 894
                  c.and       a3, a3
                  c.nop
                  c.lui       a7, 1
                  ori         s7, a6, 879
                  mulhsu      s7, t1, s2
                  divu        t1, a0, a3
                  c.addi16sp  sp, 160
                  andi        s11, t1, 1193
                  c.or        a3, a3
                  srl         t3, tp, t2
                  c.srli      a3, 16
                  c.and       a3, s1
                  sltu        t3, t1, s10
                  c.sub       a3, a3
                  c.and       a3, a3
                  divu        s2, s0, t1
                  c.add       a6, s8
                  c.srli      a3, 2
                  c.sub       a3, a3
                  xor         t0, tp, t0
                  xori        s0, a4, 326
                  xori        gp, s5, 1031
                  mulhu       s11, s11, a1
                  ori         s8, t3, -1327
                  slli        a4, a7, 25
                  andi        s11, s10, -554
                  c.sub       a3, a3
                  div         zero, a7, a6
                  c.lui       ra, 7
                  sub         t2, a6, s0
                  c.addi      gp, -1
                  slt         a0, tp, a0
                  auipc       s2, 251913
                  rem         a2, t0, s6
                  lui         s9, 999112
                  sltu        a2, t5, s4
                  mul         s3, s4, s6
                  c.addi4spn  a3, sp, 896
                  c.addi16sp  sp, -16
                  add         a0, t5, a2
                  c.srai      a3, 22
                  xor         a6, s2, s5
                  xor         s2, s5, a5
                  mulhu       a4, s5, a5
                  sra         a2, t1, a0
                  c.addi      t0, -1
                  c.addi16sp  sp, -16
                  sltiu       zero, s11, 647
                  srli        s5, zero, 30
                  srl         a0, s7, a3
                  mul         tp, a0, a7
                  sltiu       a4, zero, 1954
                  mulhsu      zero, s2, a7
                  rem         a1, a5, sp
                  c.li        s2, -1
                  ori         a2, a7, 1706
                  or          s10, t0, s2
                  mulh        s11, t5, t5
                  sll         a4, t4, s2
                  sltiu       s1, a5, -408
                  sra         s10, s8, s4
                  c.andi      a2, -1
                  ori         s4, s3, -1089
                  c.sub       a3, a3
                  nop
                  lui         zero, 920233
                  add         s3, s7, s9
                  rem         t0, t2, t6
                  or          sp, a1, s11
                  mulhu       zero, t3, t4
                  srli        a1, a1, 16
                  c.srai      a3, 6
                  c.mv        s8, t1
                  c.andi      a3, 12
                  mulh        a5, t4, t3
                  c.li        t2, -1
                  div         a3, s0, t3
                  c.and       a3, a3
                  or          t3, s8, s11
                  sub         a5, s0, zero
                  nop
                  ori         s2, s10, -888
                  divu        s10, t4, t6
                  c.srli      a3, 22
                  divu        s8, a2, s7
                  or          a0, a6, s7
                  mul         s7, s5, s2
                  xor         s8, t4, t0
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_17
                  li         tp, 0x679a2775
                  li         s11, 0x0
                  li         s10, 0x1
                  li         sp, 0x0
                  li         s9, 0x0
                  li         a0, 0x1
                  li         s2, 0x0
                  li         s8, 0x0
                  li         t0, 0x14995124
                  auipc       s9, 249414
                  divu        s8, a7, a6
                  c.nop
                  c.addi      a4, 21
                  nop
                  c.li        s11, 23
                  mulhsu      t0, s9, ra
                  auipc       s8, 944319
                  div         zero, t1, t2
                  add         s4, s10, t1
                  sub         s0, s1, s11
                  lui         t1, 717940
                  divu        s4, s1, gp
                  mulhu       s9, a6, s2
                  sub         a5, a1, s5 #end riscv_int_numeric_corner_stream_17
                  c.addi16sp  sp, -16
                  c.xor       a3, a3
                  c.slli      a0, 20
                  slli        s2, s6, 29
                  c.srai      a3, 2
                  andi        a2, sp, -1766
                  rem         a3, a3, a0
                  divu        zero, t2, a1
                  xor         a1, a7, tp
                  sltiu       zero, t5, -1910
                  c.mv        s11, s1
                  c.addi      ra, -1
                  andi        s0, a1, -1860
                  sub         t3, a2, t2
                  srai        sp, s1, 16
                  add         zero, a5, a4
                  c.addi      ra, 15
                  nop
                  c.addi16sp  sp, 32
                  divu        tp, s1, gp
                  c.addi16sp  sp, -16
                  nop
                  c.and       a3, a3
                  c.li        a3, -1
                  sra         s8, a7, s4
                  srl         s2, s2, t4
                  c.andi      a3, -1
                  c.nop
                  c.nop
                  mulh        t0, s9, s4
                  slti        s7, a1, 24
                  mulhu       t1, s0, t3
                  slli        t3, gp, 10
                  c.and       a3, a3
                  c.xor       s1, a3
                  c.andi      a3, -1
                  srl         sp, s4, s7
                  c.or        a3, a3
                  or          zero, s8, s3
                  slli        t1, s1, 14
                  or          s7, t1, s7
                  sub         a5, s8, a0
                  sltiu       a3, gp, 1154
                  srl         zero, a5, a1
                  slli        zero, t4, 9
                  c.or        a2, a1
                  xor         s10, a5, gp
                  nop
                  divu        s2, s4, s8
                  nop
                  nop
                  c.mv        s11, t1
                  c.srli      a3, 15
                  mul         s10, tp, gp
                  sub         a0, a2, t1
                  c.li        s5, -1
                  c.add       sp, a2
                  c.li        a7, -1
                  slt         a3, a1, t1
                  c.addi4spn  a3, sp, 448
                  c.mv        ra, s3
                  lui         s4, 952987
                  slti        zero, a1, 145
                  c.li        ra, 28
                  div         s4, a5, s11
                  mulhu       s0, ra, a0
                  sra         gp, t6, a0
                  slti        a6, t1, 1656
                  srai        s5, s10, 26
                  sltiu       zero, t1, -1375
                  sll         s7, sp, a3
                  sltu        t1, t6, t3
                  auipc       a1, 957028
                  c.addi4spn  a3, sp, 608
                  c.andi      a0, 1
                  c.addi16sp  sp, 320
                  sll         s1, a1, ra
                  addi        zero, ra, -1530
                  andi        s5, a1, 1919
                  c.andi      a3, -1
                  rem         s5, t3, s9
                  c.xor       a3, a3
                  mulhsu      s10, t2, t6
                  or          a3, a6, t3
                  slli        s2, a5, 14
                  lui         a2, 921265
                  c.add       s6, t3
                  c.addi      ra, 12
                  c.sub       a3, a3
                  c.addi      s10, 1
                  rem         a4, t2, t6
                  c.addi16sp  sp, 320
                  lui         s0, 565360
                  nop
                  c.slli      ra, 21
                  ori         zero, t2, -1408
                  sra         a3, a5, a3
                  mulhu       t1, s1, a4
                  mulhu       s6, a2, t1
                  sub         zero, s6, a2
                  c.lui       a0, 20
                  add         zero, a5, s9
                  add         a3, a4, s9
                  c.add       ra, s2
                  c.addi4spn  a0, sp, 128
                  slli        s2, s7, 15
                  c.or        a3, a3
                  c.lui       ra, 14
                  sltu        t1, s9, a0
                  or          sp, a7, a6
                  c.li        s1, 25
                  srli        ra, s0, 8
                  slli        a5, t4, 15
                  slt         s2, s0, s1
                  add         gp, t3, a4
                  sll         s11, t6, a2
                  c.and       a3, a3
                  mulhu       s1, s2, s11
                  c.andi      a3, 29
                  c.addi16sp  sp, 352
                  c.and       a3, a3
                  add         a6, a0, s2
                  add         sp, a6, s0
                  c.addi4spn  a3, sp, 416
                  lui         ra, 104002
                  c.addi4spn  a3, sp, 464
                  divu        a0, t3, t4
                  sltu        a1, s7, tp
                  c.addi16sp  sp, -16
                  sub         s0, a5, a0
                  xori        s4, t4, 1602
                  c.sub       a4, a3
                  and         t0, zero, t4
                  ori         t0, tp, 1856
                  c.andi      a3, -1
                  divu        zero, zero, s7
                  c.li        ra, -1
                  mulhsu      s3, s2, t1
                  srli        tp, s5, 10
                  mulh        s3, t2, s10
                  add         t3, s7, gp
                  sltiu       s3, s2, -154
                  ori         a6, t5, 1061
                  or          ra, gp, tp
                  auipc       s11, 733643
                  c.slli      a1, 20
                  c.sub       a3, a3
                  sub         gp, t0, s4
                  c.li        t3, -1
                  c.srai      a4, 7
                  div         ra, t3, s3
                  ori         a3, t5, -15
                  c.nop
                  andi        a6, a0, 469
                  mulhsu      a2, a0, t0
                  mul         s9, s6, s1
                  c.or        a0, a0
                  c.addi16sp  sp, 128
                  c.lui       s3, 30
                  sra         s4, ra, a3
                  mulh        sp, a7, t1
                  c.srli      a3, 10
                  mul         s8, t2, a2
                  or          s3, t5, gp
                  c.srli      a3, 12
                  c.li        a2, -1
                  slt         gp, a6, ra
                  auipc       zero, 536274
                  slti        s1, t6, -1609
                  c.and       a3, a0
                  c.slli      s3, 16
                  c.addi      s5, -1
                  mulhsu      zero, a1, a0
                  c.srli      a3, 1
                  sub         t0, s11, sp
                  c.or        a3, s0
                  mul         a6, s11, s2
                  sltiu       a1, a7, -1552
                  slt         a7, a6, s11
                  srl         zero, a4, s1
                  nop
                  sra         a0, s3, gp
                  c.srli      s1, 17
                  c.xor       a3, a3
                  c.sub       a4, s0
                  sll         a0, t4, s8
                  c.lui       tp, 14
                  c.slli      ra, 16
                  slt         a4, s7, t0
                  c.sub       a3, a1
                  auipc       s4, 279580
                  sub         a6, s1, s4
                  auipc       a0, 226260
                  c.addi      a5, 26
                  c.and       s0, a3
                  or          s7, t2, a1
                  srl         ra, s8, s3
                  c.mv        ra, tp
                  lui         a6, 340798
                  and         gp, t0, s0
                  or          zero, t6, a5
                  mul         tp, s11, s9
                  nop
                  lui         a7, 748490
                  c.li        t1, -1
                  divu        a2, a5, a7
                  xor         s11, t2, s8
                  srl         gp, a0, zero
                  srai        a6, zero, 29
                  divu        s8, s4, s9
                  mulhsu      zero, zero, t3
                  xori        s6, t6, -1600
                  mul         zero, zero, t4
                  sra         t0, s10, tp
                  c.li        a7, 2
                  c.add       t3, sp
                  srai        gp, s0, 4
                  c.li        ra, -1
                  xori        zero, t5, -1784
                  c.addi4spn  a3, sp, 896
                  sll         s1, t0, t2
                  slt         t0, t6, s7
                  sltu        zero, s11, s3
                  sub         s1, t1, a1
                  addi        s6, s0, -1270
                  auipc       zero, 1035620
                  c.and       a3, a3
                  c.nop
                  c.andi      a3, -1
                  c.or        a5, a3
                  add         tp, a1, s4
                  and         s10, a3, gp
                  divu        s5, t4, tp
                  ori         t0, a6, 1223
                  mulhsu      a3, s4, a0
                  slt         zero, zero, t4
                  c.slli      gp, 14
                  xori        s10, s11, -469
                  slt         a4, s2, s11
                  c.li        s1, 22
                  srli        s11, s2, 16
                  c.li        t1, -1
                  srli        zero, s2, 20
                  mul         t2, tp, sp
                  sra         s4, a5, a3
                  c.add       s3, s8
                  sra         zero, t5, s8
                  andi        sp, a3, -1811
                  addi        s7, s1, -331
                  divu        ra, a2, s1
                  divu        t0, t6, t5
                  add         t1, t3, t5
                  c.addi4spn  a5, sp, 912
                  c.xor       a3, a0
                  mulhsu      t1, a4, a3
                  slt         s9, a6, a7
                  c.srli      a3, 10
                  srl         a0, sp, t0
                  slt         s4, a5, s8
                  c.sub       a3, a0
                  mul         tp, s4, s5
                  c.addi4spn  a3, sp, 128
                  c.addi4spn  a3, sp, 928
                  lui         s0, 37318
                  or          a3, a2, a7
                  xor         s4, a6, t4
                  c.addi      a7, -1
                  nop
                  add         a3, t6, t4
                  nop
                  c.and       a3, a3
                  slti        sp, s4, 675
                  srl         s1, t4, s11
                  rem         s9, s9, t6
                  c.addi      t2, -1
                  addi        zero, t1, 1366
                  nop
                  sra         s8, gp, s6
                  srli        gp, a2, 3
                  div         a4, a1, s4
                  and         t3, a2, s3
                  addi        t3, gp, 1492
                  c.mv        s5, s5
                  c.and       a3, a3
                  slt         s2, s0, a4
                  xori        a2, a6, -1715
                  srli        s7, a1, 12
                  c.and       a3, a3
                  add         s0, s3, s8
                  rem         s1, s0, a0
                  div         s11, t3, t2
                  c.srai      a3, 15
                  c.lui       ra, 26
                  auipc       t2, 202366
                  c.andi      a3, -1
                  c.add       a4, t0
                  nop
                  rem         s6, a7, s11
                  lui         zero, 81743
                  c.srai      a1, 25
                  c.sub       a3, a3
                  c.lui       tp, 1
                  sltu        s1, t5, s5
                  or          s5, a6, t3
                  sub         a5, a6, s11
                  xor         s8, s8, s10
                  sltiu       zero, t1, 375
                  c.andi      a3, 5
                  c.or        a3, a3
                  sra         s1, t3, s8
                  c.nop
                  srl         zero, sp, t0
                  c.srai      a3, 15
                  ori         s1, gp, 684
                  srli        s2, a2, 28
                  c.srai      a3, 21
                  add         t2, t2, t5
                  slt         s0, a5, t6
                  c.addi16sp  sp, 16
                  c.and       a3, a3
                  c.mv        ra, t4
                  srli        s0, ra, 27
                  slti        s10, a1, -370
                  sra         a5, a2, s4
                  c.sub       a3, a3
                  sra         s8, a1, a6
                  xor         s3, s0, s2
                  sub         a3, t2, s4
                  slli        a5, gp, 8
                  c.srli      a3, 15
                  c.add       a1, gp
                  c.xor       a3, a3
                  c.addi      t2, -1
                  c.or        a0, a3
                  auipc       a3, 487188
                  sltu        tp, s1, a1
                  c.li        s9, -1
                  sll         s1, s1, s10
                  slti        a5, ra, -1510
                  xori        a5, s2, -1013
                  lui         t0, 492805
                  c.srli      a3, 8
                  slli        s7, a3, 24
                  c.add       a4, t3
                  c.srai      a3, 1
                  c.sub       a3, a3
                  divu        a1, a2, t6
                  addi        s1, tp, -226
                  ori         gp, sp, 1582
                  rem         zero, zero, s3
                  mulhu       s8, s7, zero
                  andi        s11, s1, -264
                  lui         s3, 86859
                  sll         t2, a5, a5
                  mulhu       a0, a6, s2
                  sll         s1, a0, s3
                  sltu        a2, t3, a5
                  sltu        s2, s11, a5
                  slli        zero, t4, 0
                  divu        s8, s5, a3
                  and         s0, a4, a7
                  or          t2, a5, a2
                  mul         s5, a4, gp
                  c.and       a3, a3
                  nop
                  xor         s6, sp, t4
                  c.andi      a3, -1
                  mulhsu      s3, t2, a0
                  slti        a5, s10, -422
                  c.addi      s3, -1
                  mulh        s11, a1, sp
                  mulhsu      s10, a0, a3
                  srl         a3, a1, t0
                  c.or        a3, s1
                  c.and       a0, a3
                  slli        ra, t6, 1
                  divu        a5, a7, s7
                  c.slli      s4, 1
                  ori         tp, t5, -849
                  c.sub       s0, a1
                  addi        a0, s3, -1021
                  c.mv        s8, ra
                  mulhsu      t1, a0, a1
                  c.sub       a3, s0
                  srl         a5, a3, a6
                  mulhsu      a3, t1, s3
                  mul         s9, s8, tp
                  xori        t1, s1, -856
                  sll         a0, t3, s4
                  mul         a2, t1, s3
                  c.add       s7, a0
                  xori        a4, tp, 1196
                  c.li        a7, 16
                  srli        a4, t2, 26
                  c.xor       a3, a3
                  div         t2, ra, t0
                  sra         gp, s7, s2
                  mul         s10, a0, s2
                  auipc       s4, 399556
                  sltu        t0, s7, t6
                  mulhu       zero, zero, gp
                  srl         sp, a5, s8
                  nop
                  divu        a4, s7, s10
                  c.slli      t0, 21
                  c.and       a3, a3
                  c.add       s8, a2
                  and         s10, s8, s4
                  c.addi4spn  a3, sp, 320
                  c.mv        a4, s10
                  srl         a6, s11, t4
                  sra         s10, a4, ra
                  c.slli      s7, 13
                  addi        a2, s8, -148
                  sra         s7, a0, s5
                  auipc       s0, 1009807
                  mul         a1, s8, tp
                  c.and       a5, a3
                  mulhu       a0, s4, s9
                  srl         s2, t6, s1
                  mul         a5, s7, s0
                  addi        zero, s1, -890
                  mulh        sp, s6, s10
                  srl         s3, t2, s7
                  c.slli      a2, 13
                  div         sp, s10, a3
                  mulhsu      s2, sp, s0
                  c.mv        a5, s4
                  or          a3, s1, s2
                  xor         t1, s0, t6
                  c.addi4spn  a3, sp, 352
                  c.mv        ra, s3
                  c.mv        sp, sp
                  mulhsu      t0, a5, a1
                  sll         zero, t5, zero
                  c.and       s0, a3
                  mulhu       t3, t4, a0
                  mulh        zero, s11, a7
                  c.addi      s9, -1
                  srli        tp, t6, 15
                  mulhu       a4, s9, a0
                  xori        zero, s11, 789
                  rem         a1, a7, a3
                  ori         s0, s11, -1195
                  srai        a2, s8, 10
                  add         t1, a3, a3
                  c.add       a3, t3
                  c.or        a3, a3
                  lui         a3, 132159
                  c.or        a3, a3
                  divu        t0, gp, s3
                  c.or        a3, a3
                  srl         t3, s4, t4
                  sra         a4, a0, a7
                  or          s11, s2, t0
                  c.sub       a3, a3
                  slli        a7, a4, 16
                  c.andi      a3, -1
                  sll         a0, s11, a3
                  c.addi16sp  sp, 416
                  andi        a6, s6, -1542
                  srl         a7, s6, tp
                  sll         zero, s8, t0
                  c.andi      s1, 22
                  div         gp, s7, a4
                  xor         a3, t6, a1
                  divu        s5, s11, a0
                  slli        ra, s4, 29
                  c.sub       a3, a3
                  auipc       s11, 238525
                  addi        a6, sp, -391
                  c.lui       s8, 29
                  c.add       ra, a6
                  c.lui       s0, 6
                  sltu        ra, gp, a4
                  c.addi16sp  sp, -16
                  c.mv        s1, ra
                  c.li        a5, 15
                  c.srai      s0, 22
                  xor         s2, a2, tp
                  mul         zero, s0, t1
                  srl         t3, s4, a2
                  c.slli      s10, 13
                  slti        s8, a1, -884
                  srl         s10, gp, sp
                  nop
                  mulhsu      t0, s3, a3
                  c.add       s2, a1
                  c.addi      s3, 21
                  c.slli      t3, 29
                  xori        s11, s6, -564
                  divu        a0, s6, s9
                  c.mv        a5, s3
                  or          t2, t6, t1
                  c.or        a3, a3
                  divu        s6, gp, sp
                  andi        s7, a6, 927
                  c.xor       a3, a3
                  c.xor       a3, a3
                  srli        t0, t1, 18
                  c.nop
                  auipc       s10, 669533
                  c.addi4spn  a3, sp, 128
                  div         s0, tp, a3
                  mulhsu      sp, t0, zero
                  and         s11, s2, s11
                  rem         s8, s0, s10
                  xor         s3, s8, s5
                  c.srai      a3, 20
                  c.lui       tp, 25
                  auipc       s7, 94568
                  sub         s2, s5, t3
                  c.slli      a0, 23
                  c.add       s3, s3
                  add         s10, s4, a7
                  c.and       a3, s0
                  c.nop
                  auipc       a3, 49735
                  and         a7, a5, t2
                  xor         a3, t4, t1
                  sltiu       t3, t1, 1812
                  nop
                  or          s5, s6, t3
                  auipc       t1, 376462
                  c.srli      a3, 2
                  and         s8, a1, sp
                  lui         s5, 817325
                  sltu        s3, t5, a6
                  c.andi      a3, -1
                  or          s7, a7, a4
                  xor         tp, sp, s2
                  c.slli      t1, 20
                  mulh        a2, s6, ra
                  mul         a7, a3, a4
                  sra         s4, tp, s10
                  andi        s1, a0, 1580
                  div         a7, t2, s9
                  divu        a5, s6, gp
                  c.addi16sp  sp, 464
                  divu        gp, t0, gp
                  srl         zero, a3, a2
                  mulhsu      zero, a5, t3
                  ori         a0, t3, 1876
                  c.add       s8, s11
                  mulhu       t0, s2, t1
                  divu        ra, t6, t3
                  slli        a0, t5, 9
                  srli        a7, s6, 23
                  c.andi      a3, 12
                  xor         ra, s3, s9
                  sltu        zero, a1, t1
                  auipc       s1, 77658
                  divu        zero, a3, a2
                  xori        s4, t3, -466
                  ori         s10, t6, -1549
                  sra         s1, s8, zero
                  c.lui       a3, 25
                  c.or        a3, s1
                  c.nop
                  rem         t3, t0, s10
                  slt         sp, s4, s5
                  sll         a5, sp, a2
                  c.addi      s0, 31
                  sltiu       s11, a2, 816
                  c.mv        a0, s0
                  slt         sp, s7, s3
                  div         ra, s3, s2
                  divu        a1, t6, t0
                  c.and       a3, a3
                  slt         s1, s8, s3
                  c.nop
                  lui         s7, 989130
                  c.mv        t3, s6
                  ori         a0, tp, -443
                  mulh        s2, a6, gp
                  c.addi16sp  sp, 224
                  mulh        zero, t0, gp
                  mulhsu      a1, a2, t0
                  mul         s6, s1, s10
                  or          a7, t6, t3
                  div         t2, a2, s1
                  mulhsu      zero, s6, t2
                  slti        s0, a6, -456
                  c.addi4spn  a3, sp, 384
                  srai        s1, t6, 11
                  c.add       s9, ra
                  c.nop
                  andi        ra, a1, -1509
                  xor         s2, s10, zero
                  sltiu       a4, t0, 1304
                  andi        s2, s10, 170
                  c.addi4spn  a3, sp, 80
                  c.add       s6, s2
                  sll         gp, a2, a5
                  c.mv        s4, s8
                  sltiu       s11, a2, -1267
                  mulhu       a4, t4, a4
                  c.mv        t3, a5
                  c.lui       a3, 1
                  mulh        s8, a0, s6
                  c.nop
                  srl         sp, t0, sp
                  mulhu       s7, s2, zero
                  c.addi16sp  sp, -16
                  nop
                  c.andi      a3, 11
                  c.andi      a3, 18
                  sltu        sp, a7, t5
                  xori        a1, t0, -907
                  c.addi16sp  sp, -16
                  c.nop
                  c.li        a3, 9
                  c.srli      a1, 31
                  srl         zero, s9, s10
                  c.mv        s7, s10
                  and         s0, sp, s4
                  c.add       gp, s3
                  c.sub       a3, a3
                  sltiu       zero, t0, 1320
                  c.lui       s4, 28
                  add         s1, t5, s10
                  auipc       s7, 848761
                  sub         a4, zero, s4
                  c.and       a3, a3
                  mulhsu      zero, s2, a3
                  c.mv        a0, s8
                  c.and       a3, a3
                  mul         s6, s4, s3
                  sltu        zero, t3, t2
                  or          s1, s7, s9
                  xor         s1, s9, a2
                  xor         s9, s0, t0
                  slli        a1, a1, 25
                  srai        s11, sp, 2
                  nop
                  c.sub       a3, a3
                  or          t2, t4, sp
                  sra         a7, a3, t5
                  and         a6, s1, t3
                  srl         t3, s9, a0
                  c.slli      s7, 9
                  sll         tp, t6, gp
                  ori         t3, s2, 387
                  srli        s6, sp, 19
                  mulhu       s11, a3, a0
                  c.sub       a3, a1
                  div         t2, s7, a6
                  c.xor       a3, a3
                  rem         s8, ra, a4
                  mulhu       sp, sp, s1
                  sll         s4, s7, zero
                  c.li        a6, 22
                  c.addi16sp  sp, 80
                  c.srai      a3, 27
                  srl         zero, tp, tp
                  c.mv        s8, a2
                  addi        a3, a3, 762
                  c.slli      ra, 7
                  nop
                  sra         tp, s5, t4
                  auipc       s1, 382215
                  c.slli      a2, 11
                  c.sub       a3, s0
                  nop
                  add         zero, a1, t2
                  c.add       ra, a0
                  sra         s0, tp, t2
                  mulhu       zero, t2, zero
                  c.sub       s0, a3
                  add         s1, s8, s7
                  sltiu       t2, zero, 1683
                  c.andi      a3, 6
                  divu        s2, a7, s3
                  c.sub       s1, a3
                  c.nop
                  auipc       s5, 623112
                  slti        s10, a0, 1971
                  sra         t2, t6, t3
                  ori         t0, s7, 282
                  and         a4, a4, t0
                  c.sub       a3, a3
                  c.sub       a3, a3
                  mul         t2, s4, t5
                  andi        sp, a7, 173
                  add         a2, gp, a0
                  c.srli      a3, 22
                  c.addi4spn  a1, sp, 576
                  sra         s3, s4, t3
                  div         s0, t0, s5
                  mulhsu      s10, s6, a2
                  c.slli      s3, 8
                  xor         t2, t6, s8
                  mul         s6, sp, s3
                  srai        s2, s11, 3
                  auipc       a3, 889259
                  c.nop
                  c.addi4spn  a3, sp, 320
                  sll         t3, s3, a4
                  c.nop
                  c.srli      a3, 14
                  xori        a7, t1, -1903
                  c.add       s5, a2
                  c.addi16sp  sp, -16
                  c.xor       a3, a3
                  c.or        a3, a3
                  xor         s0, s3, a6
                  addi        a7, t2, -101
                  c.or        a1, a3
                  srl         s7, s6, t3
                  c.slli      s6, 23
                  add         a0, tp, s3
                  srai        a3, a2, 22
                  slti        a6, t2, -1672
                  andi        zero, t1, -209
                  c.srli      a3, 9
                  srli        s8, gp, 12
                  c.srai      a3, 24
                  lui         a0, 1004159
                  c.mv        s2, t3
                  nop
                  sll         s0, gp, gp
                  mulhsu      tp, t4, a3
                  nop
                  sltiu       zero, t2, -1571
                  c.and       a4, a3
                  slli        tp, a0, 31
                  c.mv        t0, s5
                  slli        zero, s0, 13
                  addi        s2, s10, 441
                  or          s8, s8, sp
                  c.srli      a3, 8
                  c.addi      s3, 15
                  srai        a2, a5, 23
                  ori         s10, gp, 1932
                  srai        a1, s11, 20
                  slti        s7, a3, 1596
                  c.addi16sp  sp, -16
                  srl         s7, zero, s10
                  c.addi      s8, 18
                  slt         t1, s1, t0
                  andi        a1, s3, 1654
                  ori         a4, s6, -931
                  sltiu       zero, sp, -248
                  sltiu       sp, a0, 579
                  mulh        a2, a1, s11
                  c.and       a3, a3
                  c.addi16sp  sp, 320
                  auipc       a4, 916261
                  c.li        a1, -1
                  c.xor       a3, a3
                  lui         a6, 756580
                  mul         a7, s1, s0
                  sra         zero, s9, s8
                  add         a0, s8, s8
                  slli        a0, a3, 23
                  c.nop
                  nop
                  slli        sp, t6, 7
                  or          s0, s2, s6
                  mul         a1, a0, t3
                  c.add       s1, s2
                  srl         zero, t6, s8
                  mul         t3, tp, sp
                  ori         t3, s4, 788
                  mulhu       zero, a1, t1
                  sll         t3, t1, s7
                  c.li        s11, 5
                  add         s6, t4, s4
                  xori        ra, t1, 1251
                  divu        ra, gp, s10
                  and         s1, s1, s5
                  c.sub       a3, a3
                  slli        t1, t6, 26
                  xori        s11, s5, 1168
                  addi        s0, s8, 1685
                  c.li        s9, -1
                  rem         zero, a7, t4
                  xori        t2, a6, 1088
                  slli        s10, a7, 14
                  srli        zero, sp, 5
                  srli        zero, t4, 23
                  c.and       s1, a3
                  mulh        s7, a6, s4
                  nop
                  sltiu       s4, t0, 90
                  srli        s6, s0, 2
                  or          ra, s2, a5
                  c.srai      a3, 8
                  c.or        a3, a3
                  c.sub       a4, a3
                  mulhsu      s8, t1, tp
                  c.mv        s9, sp
                  divu        zero, s11, s1
                  c.nop
                  auipc       s4, 603641
                  srli        s7, t6, 28
                  c.lui       s8, 24
                  and         s10, ra, t1
                  srai        gp, t1, 13
                  or          tp, a2, tp
                  c.mv        ra, s4
                  srai        s0, s1, 12
                  mulh        ra, a0, s5
                  divu        a1, s8, s7
                  c.li        t3, 28
                  c.sub       a3, a0
                  mulh        s1, t0, t2
                  c.lui       s11, 21
                  c.li        s6, 17
                  srai        t0, ra, 9
                  srai        t1, ra, 13
                  c.addi      a4, -1
                  srai        a0, s9, 29
                  sltiu       s7, a5, 1634
                  mulhu       a5, a5, s1
                  c.slli      sp, 6
                  div         zero, t1, t0
                  c.addi      tp, -1
                  slti        t1, a3, 1780
                  sltiu       a6, s1, -1775
                  sltu        t3, t3, t2
                  slli        a7, a5, 18
                  c.and       a3, a3
                  c.mv        ra, s0
                  sll         zero, t3, s11
                  c.sub       a3, a3
                  ori         t3, t5, 1347
                  c.nop
                  mulhu       a5, zero, tp
                  c.slli      sp, 9
                  c.andi      a3, -1
                  sltiu       a6, t6, 1236
                  c.and       a3, a3
                  c.and       a3, a3
                  mulhu       gp, a3, tp
                  xori        s6, s9, 61
                  srai        a6, a3, 19
                  mulh        a1, zero, s5
                  rem         t0, t6, a7
                  ori         a0, zero, -1130
                  mulhu       zero, s7, a0
                  mulhsu      a0, s8, a3
                  c.xor       a3, a3
                  mulh        gp, t4, ra
                  c.andi      a3, 0
                  ori         a7, s1, -1090
                  c.addi16sp  sp, 208
                  lui         s4, 741211
                  nop
                  sra         s7, t0, a2
                  sltu        a3, t1, t2
                  c.slli      s0, 6
                  c.mv        ra, s10
                  srli        zero, s6, 10
                  divu        s7, s3, a2
                  xori        s6, t4, 659
                  sltiu       s9, s4, 1988
                  sra         t0, tp, zero
                  c.li        a0, 14
                  mulhsu      gp, s11, a2
                  mulhsu      gp, gp, t0
                  lui         s8, 818023
                  slt         t2, a4, t3
                  sub         sp, s10, a4
                  slti        s2, s4, -771
                  sra         s11, t3, ra
                  c.srai      a3, 28
                  or          t3, s9, a0
                  c.sub       a3, a5
                  srl         s7, s10, s2
                  sra         a6, a3, gp
                  ori         zero, s7, 2040
                  lui         s11, 381507
                  c.slli      a3, 11
                  sll         s2, gp, t6
                  c.addi16sp  sp, -16
                  sub         a0, a1, s5
                  andi        a3, s2, -727
                  rem         a0, t1, s1
                  c.and       a3, a3
                  c.add       a4, s9
                  add         a6, a7, t6
                  addi        a2, s6, -1109
                  c.andi      a3, -1
                  divu        t0, a5, a7
                  or          s6, s6, s0
                  slti        zero, t0, -1264
                  nop
                  rem         a0, s11, a0
                  auipc       s9, 227153
                  sll         tp, t1, s7
                  rem         s2, s1, zero
                  divu        t1, sp, s11
                  or          s5, zero, a7
                  slli        gp, sp, 26
                  xori        s7, zero, 1919
                  mulhsu      s1, t3, s6
                  c.addi16sp  sp, -16
                  sltu        t1, s7, t0
                  mulhsu      t3, s5, s4
                  ori         s7, t1, -1555
                  add         s11, t1, t5
                  xori        a7, s11, 2047
                  slti        s7, t0, -1042
                  mulhu       s0, a1, a3
                  c.srli      a4, 23
                  lui         s5, 807163
                  mulhu       zero, s11, s6
                  c.and       a3, a3
                  c.or        a3, a4
                  andi        a5, tp, 524
                  srli        s2, t2, 11
                  slt         s9, s0, a6
                  ori         a5, s4, -388
                  and         s6, s0, a6
                  addi        s8, zero, -1201
                  c.addi      a0, 17
                  rem         zero, s9, s11
                  c.slli      ra, 31
                  auipc       s9, 13592
                  sltu        a1, s8, t5
                  xori        a2, sp, 697
                  c.li        a3, 24
                  mulhsu      s0, ra, s10
                  mul         s8, a7, ra
                  mulh        s3, s0, s6
                  add         t0, a2, a7
                  nop
                  c.add       a3, s7
                  or          s10, t0, t1
                  c.srai      a3, 3
                  mulhsu      a3, a1, a7
                  c.nop
                  mulh        a3, a6, a0
                  c.slli      ra, 23
                  lui         zero, 482406
                  srl         a5, a2, s8
                  or          s3, a4, sp
                  srl         s10, tp, a1
                  div         a3, s7, ra
                  xor         s3, s2, sp
                  auipc       t1, 867457
                  addi        s8, s8, 483
                  auipc       s7, 260841
                  sltiu       s0, s0, 1401
                  sra         s8, a0, s10
                  sltu        s5, a7, s9
                  slt         s1, t6, s10
                  c.sub       s0, a3
                  xor         sp, s4, s2
                  lui         tp, 401830
                  add         zero, ra, s1
                  slli        s1, s8, 5
                  c.or        a3, a3
                  xor         s11, s5, t1
                  sra         a1, t2, a2
                  andi        s1, s9, 560
                  lui         s11, 570740
                  sltiu       s0, t3, -1833
                  slti        s10, t5, -605
                  mulh        s2, s2, t2
                  mulhsu      s9, s6, s0
                  sltu        gp, gp, s3
                  c.or        a3, a3
                  ori         s0, s1, -309
                  srai        sp, t6, 10
                  c.addi16sp  sp, 272
                  c.add       s7, s3
                  sub         s11, t1, a3
                  c.nop
                  and         a3, a2, a3
                  mulh        t2, a1, a4
                  ori         s9, ra, 296
                  sltu        s9, t1, a6
                  ori         t1, s1, -816
                  c.addi4spn  a3, sp, 688
                  c.slli      a6, 25
                  sub         s1, s0, tp
                  slt         sp, zero, s2
                  sltu        s2, s2, ra
                  c.andi      a1, 24
                  srl         s10, s11, s10
                  srli        a2, t6, 7
                  mulhu       a7, s11, gp
                  rem         a7, s7, a1
                  divu        sp, t5, a7
                  nop
                  divu        zero, t5, t6
                  c.lui       a4, 18
                  sub         a3, t0, t0
                  auipc       s1, 654397
                  c.nop
                  sub         a1, a5, tp
                  ori         s11, s10, -592
                  c.nop
                  slti        a3, zero, 562
                  xori        sp, sp, 1991
                  c.sub       a3, a3
                  c.mv        tp, s0
                  ori         s1, a1, -220
                  c.nop
                  c.andi      a3, 11
                  c.li        ra, 10
                  mulhu       s4, a3, s1
                  sub         t0, t3, a5
                  c.nop
                  c.nop
                  div         s7, a3, s3
                  mulh        s5, s8, s0
                  c.nop
                  c.srli      a3, 5
                  divu        a6, s4, s11
                  xori        t1, sp, 1590
                  c.sub       a3, a1
                  c.srli      a3, 16
                  srl         a1, a3, t5
                  c.andi      a3, 9
                  ori         t2, a2, -1265
                  c.mv        a1, a2
                  add         t3, s4, sp
                  c.sub       a3, a3
                  slti        s11, s7, -461
                  sra         s8, t0, t0
                  c.and       a2, s1
                  c.mv        s2, t3
                  srl         t1, a1, t6
                  or          a6, tp, tp
                  c.or        a3, a2
                  andi        ra, sp, 1639
                  c.addi      s4, -1
                  xor         s1, s2, s0
                  addi        s11, s1, 86
                  nop
                  lui         gp, 579824
                  slli        t1, t2, 20
                  addi        s0, a7, -297
                  c.sub       s0, a3
                  slti        zero, tp, 588
                  c.addi      s5, 27
                  addi        sp, s4, 729
                  mulhsu      ra, ra, s6
                  slli        zero, s9, 18
                  addi        s3, s0, -1532
                  rem         s8, s6, s8
                  srai        t3, sp, 24
                  slli        sp, s7, 16
                  or          s3, s9, s7
                  and         t0, ra, a0
                  c.addi      ra, -1
                  and         s2, sp, a3
                  add         tp, s0, zero
                  andi        a4, s5, 1168
                  slt         a3, a1, a2
                  mulhu       t3, s7, zero
                  mulhsu      s6, s9, sp
                  c.addi4spn  a3, sp, 128
                  divu        a6, t4, ra
                  c.li        ra, 1
                  c.addi      s3, 3
                  c.xor       a3, a5
                  c.xor       s1, a3
                  or          t0, s8, t5
                  lui         s4, 725946
                  mulhu       t3, a5, a6
                  c.srai      a3, 20
                  c.li        s3, 23
                  auipc       s1, 129955
                  c.sub       a3, a3
                  sll         s6, ra, t4
                  add         s4, a6, t0
                  slt         t1, s1, s0
                  c.addi4spn  s0, sp, 208
                  c.addi      gp, 16
                  xori        s5, s0, 1264
                  c.addi16sp  sp, 480
                  c.or        a3, a3
                  c.and       a3, a3
                  srl         a1, a5, s10
                  ori         a0, s9, 628
                  lui         s4, 982
                  c.and       a3, s1
                  divu        s7, ra, s11
                  ori         s11, a1, -472
                  xor         a5, s11, t5
                  c.srli      a3, 29
                  mul         zero, a0, a6
                  c.xor       a3, a0
                  sra         s6, s1, sp
                  sll         t0, a7, s6
                  sub         a7, s7, t0
                  c.xor       a3, a3
                  c.li        s4, -1
                  xor         ra, t4, s7
                  c.nop
                  mulh        a4, a3, a2
                  c.nop
                  c.nop
                  sll         a4, sp, s11
                  c.andi      a3, -1
                  lui         t0, 74819
                  c.and       a1, a3
                  c.nop
                  slti        a6, t4, 1771
                  c.mv        ra, s1
                  divu        t0, t3, a3
                  or          tp, t2, a4
                  li         s4, 0x1 #start riscv_int_numeric_corner_stream_2
                  li         tp, 0x0
                  li         a2, 0x0
                  li         s8, 0x0
                  li         s0, 0x0
                  li         a6, 0x1
                  li         t3, 0x0
                  li         a5, 0x0
                  li         a7, 0x0
                  li         s11, 0x48b17796
                  c.li        a7, -1
                  rem         t3, gp, t0
                  mulhsu      s2, a5, a7
                  lui         a0, 984371
                  c.addi4spn  a3, sp, 96
                  c.add       sp, s5
                  div         s2, t1, s10
                  c.addi4spn  a3, sp, 128
                  mulhu       t3, s9, t2
                  addi        s8, zero, 1904
                  c.li        s7, -1
                  c.lui       t0, 11
                  c.li        ra, -1
                  add         ra, s5, s5
                  add         s9, s2, s0
                  c.mv        ra, s9
                  add         s8, s8, gp
                  mulhsu      s9, a2, s1
                  nop
                  c.addi      s1, -1
                  c.nop
                  rem         s0, s5, s2 #end riscv_int_numeric_corner_stream_2
                  slt         a4, s10, s8
                  nop
                  ori         zero, a7, 1295
                  c.mv        a0, ra
                  lui         sp, 456891
                  c.or        s0, a3
                  addi        a4, t1, -1554
                  c.andi      a3, 8
                  c.nop
                  sub         gp, sp, s9
                  c.li        s8, 15
                  c.srai      a3, 31
                  c.and       a3, a3
                  c.li        sp, -1
                  lui         s2, 390190
                  mul         s10, a3, s8
                  slli        zero, ra, 28
                  c.slli      s1, 27
                  mulh        s2, s7, t6
                  sltu        sp, s0, zero
                  c.nop
                  nop
                  mulhu       a7, s5, s2
                  auipc       a5, 889820
                  lui         ra, 12138
                  mulhu       s2, t0, t5
                  div         s2, s7, a5
                  c.addi      sp, -1
                  c.xor       a3, a3
                  c.addi16sp  sp, -16
                  c.or        a3, a3
                  xor         a5, s7, a4
                  srai        a5, a6, 11
                  c.addi      s10, -1
                  srai        t1, ra, 11
                  sra         a6, a3, s11
                  c.lui       ra, 17
                  sra         s10, a3, t3
                  c.andi      a1, -1
                  c.srli      a3, 30
                  c.addi      ra, 8
                  lui         gp, 567115
                  mulhu       zero, s7, a0
                  c.and       a3, a3
                  srl         a1, s3, s6
                  mulhsu      zero, a1, t4
                  mulh        zero, s2, s4
                  c.or        a2, a3
                  c.mv        ra, a6
                  c.or        a3, a3
                  sll         s3, a4, a5
                  slli        s7, t5, 7
                  c.slli      a3, 16
                  mulh        s10, s4, s6
                  divu        sp, t2, t6
                  c.li        tp, 22
                  ori         zero, a6, -113
                  c.xor       a0, a3
                  c.addi4spn  a3, sp, 896
                  srli        a0, a6, 12
                  div         s9, t5, t4
                  div         sp, s8, a0
                  sltiu       tp, a6, 44
                  sltiu       s10, a5, -430
                  c.mv        ra, ra
                  c.nop
                  c.and       a3, a3
                  c.slli      s6, 25
                  xori        s1, s8, -927
                  lui         t0, 352949
                  mul         t3, t4, a6
                  xori        s9, a6, -1875
                  add         s7, a6, ra
                  add         s1, t6, a4
                  xori        s6, gp, -653
                  c.nop
                  andi        a1, a6, -383
                  slli        s2, a1, 29
                  c.addi      s4, 22
                  srai        a1, s6, 22
                  c.addi4spn  a3, sp, 128
                  ori         s0, t1, -1870
                  xor         s6, s11, a3
                  divu        ra, t5, t2
                  srli        tp, a3, 23
                  nop
                  srli        t1, a2, 15
                  rem         zero, a1, t1
                  andi        t1, t1, -672
                  andi        a7, a5, 33
                  srli        zero, ra, 3
                  c.addi4spn  a3, sp, 944
                  mulh        sp, s5, t0
                  sub         a7, s8, s5
                  c.mv        s9, s5
                  c.add       a1, sp
                  c.or        a2, a3
                  slli        s0, s9, 7
                  ori         a6, t3, -212
                  c.or        a3, a3
                  add         s11, t3, gp
                  nop
                  c.srai      a0, 7
                  mul         zero, a3, t0
                  or          a2, a6, ra
                  slt         s9, t4, s0
                  sra         sp, gp, s10
                  c.srli      a3, 7
                  c.addi16sp  sp, -16
                  srl         t1, a1, a0
                  c.sub       a3, a3
                  c.lui       ra, 22
                  c.mv        a1, a1
                  slti        zero, a0, -1694
                  add         gp, a6, a3
                  c.sub       a3, a3
                  slt         a2, t1, zero
                  c.srli      a3, 27
                  slti        a5, tp, 783
                  c.andi      a1, -1
                  slt         sp, a6, zero
                  c.xor       a3, a4
                  lui         t1, 479358
                  sltiu       s7, a6, 1318
                  c.nop
                  srai        t0, s3, 30
                  mulh        a7, a7, a5
                  nop
                  sltu        s8, s6, s1
                  c.addi16sp  sp, -16
                  xori        s4, a6, -1431
                  srli        s5, s10, 27
                  and         a7, t2, s10
                  and         a7, a3, s2
                  add         t2, a2, s6
                  c.addi4spn  a3, sp, 576
                  c.xor       a3, a3
                  mulh        a4, sp, t3
                  rem         a1, t2, t3
                  mulh        zero, s3, a1
                  slli        t2, tp, 30
                  addi        t2, tp, 453
                  sll         zero, s11, t6
                  nop
                  ori         s4, s3, 931
                  slt         zero, s1, t2
                  auipc       zero, 417972
                  and         t3, s1, t4
                  nop
                  c.add       t3, a5
                  c.addi16sp  sp, 384
                  c.nop
                  c.or        a3, a5
                  lui         a0, 307377
                  sra         t2, t1, a0
                  srl         a4, s2, a7
                  c.or        a3, s0
                  c.lui       s0, 1
                  c.or        a3, a2
                  mul         a2, s10, s1
                  nop
                  slli        a6, a0, 24
                  c.and       a1, s1
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         s11, 0x0
                  li         s9, 0x6722fd01
                  li         s8, 0x280adaf7
                  li         a0, 0x5bf80799
                  li         s2, 0x0
                  li         s10, 0x1
                  li         s0, 0x1
                  li         a2, 0x1
                  li         a6, 0x0
                  c.li        a6, -1
                  auipc       zero, 382539
                  nop
                  mulhsu      s1, s2, ra
                  addi        s3, s7, 948
                  c.lui       s7, 25
                  sub         zero, zero, s3
                  mulh        zero, s1, gp
                  mulhsu      t2, ra, sp
                  divu        sp, s5, a6
                  sub         a4, a7, t2
                  c.addi16sp  sp, 480
                  sub         zero, a1, s2
                  c.sub       a3, a3
                  mulhu       gp, sp, t0
                  auipc       t2, 85205
                  mulh        s7, a5, a5
                  c.sub       a4, a3
                  c.addi      s1, 31
                  auipc       a5, 461063
                  rem         t2, s9, s2
                  c.add       t3, s10
                  mul         zero, a1, t4
                  mulh        s11, a3, t6
                  rem         s6, s4, s10
                  nop
                  c.add       t1, t2
                  mul         s4, a3, tp
                  mulhsu      s7, s6, a0 #end riscv_int_numeric_corner_stream_0
                  andi        s7, s2, 456
                  srai        s2, a6, 18
                  sltiu       s3, s1, 224
                  sll         s6, s0, sp
                  c.andi      s1, -1
                  c.xor       a3, a3
                  andi        s4, t4, -1475
                  slli        s1, a2, 16
                  and         s4, t2, a1
                  xori        t1, s8, 2000
                  div         s0, a7, t6
                  c.sub       a3, a3
                  lui         s0, 174065
                  or          ra, t1, a4
                  c.sub       s0, a1
                  divu        a6, s2, tp
                  auipc       s0, 387296
                  c.mv        a4, t0
                  c.nop
                  lui         a5, 770037
                  div         s9, s10, s0
                  slti        zero, s5, -1382
                  c.addi4spn  a3, sp, 880
                  addi        t1, t4, 267
                  addi        a0, zero, -711
                  c.srli      a0, 14
                  srl         s2, s7, s11
                  c.addi4spn  a3, sp, 64
                  addi        a3, t4, 1476
                  slt         zero, t5, s6
                  mulhu       ra, zero, t6
                  and         a7, t5, s9
                  c.xor       a3, a1
                  c.or        a3, a3
                  mul         a6, a3, s7
                  srli        ra, t0, 12
                  srli        a5, t0, 30
                  srli        t1, zero, 3
                  div         a6, t5, t3
                  or          zero, a1, t4
                  sltiu       t0, a4, -1106
                  c.addi16sp  sp, -16
                  c.nop
                  div         s2, s6, s11
                  xori        s6, s9, -208
                  c.addi      s3, 27
                  sll         sp, t6, t3
                  c.addi16sp  sp, -16
                  lui         s8, 6214
                  slti        t3, s5, 940
                  auipc       zero, 458148
                  srl         a7, a2, a3
                  xori        a6, s11, -3
                  auipc       tp, 629606
                  ori         a4, s0, 3
                  c.add       t1, s1
                  c.addi      ra, -1
                  or          s4, t6, t0
                  add         tp, t6, s2
                  sra         ra, t5, a5
                  c.srai      a3, 24
                  c.and       a4, a3
                  ori         sp, tp, -1445
                  xori        a4, a4, -842
                  c.andi      s1, -1
                  xori        a0, gp, 1872
                  sll         s6, tp, s5
                  or          sp, t4, sp
                  c.or        a3, a3
                  addi        s0, t6, -280
                  c.and       a3, a3
                  c.slli      a3, 29
                  div         s10, t0, s0
                  slli        t0, t6, 27
                  add         s1, sp, a1
                  c.lui       gp, 12
                  sub         s5, s9, a3
                  c.slli      s7, 18
                  c.addi16sp  sp, 400
                  c.srai      a3, 17
                  c.and       a3, a3
                  sra         zero, tp, t6
                  c.andi      a3, 27
                  auipc       s5, 1008273
                  mulh        s9, s0, a0
                  c.mv        t1, t2
                  nop
                  divu        sp, t6, a7
                  c.nop
                  rem         s11, zero, t0
                  addi        s11, a7, -195
                  c.mv        a4, a0
                  mulhsu      zero, s3, s1
                  xor         a4, s1, a5
                  sra         t2, s3, t1
                  sub         t3, gp, a6
                  c.and       a3, a3
                  div         a3, ra, a0
                  sub         zero, s0, tp
                  c.addi4spn  a3, sp, 112
                  c.addi      ra, 16
                  sltiu       s4, s0, 841
                  ori         zero, s6, 515
                  add         zero, s10, sp
                  mul         t3, s11, a3
                  c.slli      ra, 23
                  sll         s10, s3, sp
                  c.srli      a3, 7
                  lui         t3, 663426
                  ori         a2, s10, -564
                  c.and       a1, a3
                  addi        t2, s9, 298
                  c.addi      tp, -1
                  nop
                  sra         zero, s9, s6
                  auipc       s0, 286306
                  c.sub       a3, a3
                  or          a4, a1, s9
                  divu        s9, s10, s9
                  and         gp, s6, s9
                  srli        s4, a4, 7
                  lui         s8, 277145
                  ori         a5, s6, 121
                  c.sub       a0, a0
                  div         sp, a1, t4
                  addi        s5, s5, -924
                  slli        a3, ra, 29
                  andi        s10, t0, -180
                  c.lui       a4, 7
                  c.srai      a3, 14
                  sll         t2, t3, t6
                  c.sub       a3, a3
                  ori         s9, s11, -474
                  divu        a5, zero, a5
                  sll         s6, a3, s5
                  c.add       a2, t2
                  c.mv        s4, a6
                  nop
                  sll         s4, gp, s11
                  c.addi      t0, -1
                  mul         sp, tp, s5
                  mul         s11, t3, s6
                  sra         s0, t2, a4
                  nop
                  sltu        zero, a3, s0
                  c.srli      a3, 9
                  c.or        a3, a3
                  divu        t2, t1, s1
                  c.li        a5, 3
                  sll         sp, s4, s0
                  slt         s9, s5, a4
                  c.sub       a3, a3
                  xor         ra, a3, a0
                  divu        tp, a4, a2
                  c.addi      a4, -1
                  slli        sp, t5, 13
                  c.slli      s8, 22
                  andi        s4, t3, -1059
                  nop
                  c.slli      sp, 12
                  sltiu       a7, a0, 642
                  srli        ra, a2, 22
                  nop
                  andi        t3, t2, -429
                  c.addi16sp  sp, 400
                  lui         s7, 531049
                  auipc       a2, 230202
                  ori         s0, a3, 817
                  c.slli      s8, 30
                  lui         a1, 749607
                  c.andi      a3, -1
                  ori         s4, a3, 1937
                  srai        ra, sp, 13
                  rem         s5, sp, s1
                  c.add       tp, a0
                  c.xor       a3, a2
                  add         s6, s8, t2
                  mul         s8, a0, s4
                  sltu        a6, s11, t0
                  mulhsu      t1, a1, a5
                  srli        s3, a1, 21
                  xori        a3, s10, 951
                  sra         a1, a5, s4
                  mulhsu      s9, s1, s1
                  and         s11, a3, s7
                  sub         a3, zero, s1
                  sra         a3, a5, sp
                  c.addi4spn  a3, sp, 832
                  or          zero, t3, t0
                  xor         a7, t2, t3
                  sub         gp, t1, t5
                  c.srai      a2, 8
                  add         a0, s11, s11
                  divu        zero, s1, a0
                  srai        zero, s11, 20
                  nop
                  mulhsu      s9, t5, s0
                  c.srai      a3, 23
                  c.or        s1, a5
                  c.lui       t1, 12
                  srai        zero, s9, 17
                  mulhu       s10, a0, s6
                  c.slli      ra, 10
                  xori        a3, s9, -601
                  auipc       gp, 882348
                  rem         sp, a1, sp
                  sub         s9, ra, tp
                  divu        s5, s8, a3
                  c.srli      a0, 26
                  mulh        s9, s10, a4
                  addi        t1, s7, -163
                  c.add       t0, s5
                  c.addi      a2, 6
                  nop
                  c.addi4spn  a3, sp, 320
                  rem         a3, s4, ra
                  addi        s3, a4, 185
                  lui         a6, 672869
                  or          ra, t6, tp
                  addi        sp, t3, 1879
                  mulhu       s4, t1, s5
                  c.addi      tp, -1
                  andi        sp, a0, -150
                  c.andi      a3, -1
                  c.addi16sp  sp, 80
                  c.add       tp, s9
                  div         a0, a5, s5
                  c.andi      a3, -1
                  c.sub       a3, a3
                  slli        t1, a3, 4
                  nop
                  and         zero, s9, a2
                  xor         s6, s7, a0
                  c.or        a3, a3
                  sub         s8, sp, a4
                  c.srli      a3, 27
                  addi        zero, ra, -876
                  c.mv        s3, a4
                  c.nop
                  rem         zero, t4, t4
                  divu        gp, t6, t1
                  xori        s0, s3, -1147
                  div         s6, t2, t5
                  srai        s11, s0, 21
                  c.mv        ra, t4
                  sltiu       zero, s3, 355
                  sltiu       s3, s6, -1718
                  c.addi16sp  sp, -16
                  xor         a0, a4, t1
                  divu        t3, t6, a4
                  c.or        a3, a3
                  mulhsu      s1, a2, s7
                  xori        s6, a4, -1065
                  c.addi16sp  sp, 304
                  c.andi      a2, -1
                  sltu        a5, sp, t2
                  xor         gp, a7, t6
                  xor         zero, s10, a4
                  div         t3, s3, a2
                  sub         s0, s9, s1
                  and         s5, s5, ra
                  c.and       a3, a1
                  sub         sp, a4, s4
                  sll         zero, sp, s0
                  c.nop
                  sltiu       s7, a5, 1188
                  c.srai      a1, 10
                  c.addi16sp  sp, 384
                  c.add       s0, tp
                  mulhu       a7, t0, tp
                  sltiu       s11, a0, -1290
                  c.addi16sp  sp, -16
                  srai        zero, sp, 4
                  xori        a1, t3, -1437
                  c.mv        t2, ra
                  slt         a2, a7, t0
                  mulhsu      a6, a3, s11
                  c.addi4spn  s1, sp, 640
                  c.nop
                  divu        t1, s0, s0
                  sra         sp, s11, s1
                  slt         a3, zero, s6
                  c.or        a5, a3
                  c.or        a4, a0
                  c.mv        t3, tp
                  c.sub       a3, a3
                  mulh        tp, tp, a0
                  and         s0, t5, a0
                  c.addi      a5, 12
                  c.srai      a3, 11
                  addi        zero, s5, -361
                  div         s8, t0, a7
                  c.xor       a2, a3
                  or          a0, s6, tp
                  xori        a2, s4, -679
                  div         a2, a3, a5
                  sltiu       zero, s8, 203
                  c.mv        a7, s0
                  ori         zero, s3, -1269
                  andi        a0, s7, 1264
                  sltu        s2, t6, a3
                  xor         s9, s2, t0
                  c.addi      a2, -1
                  mul         s7, t6, s11
                  c.and       a3, s0
                  slti        s1, a7, -1804
                  c.mv        a2, s0
                  c.slli      s8, 29
                  mulh        s8, s2, s4
                  sub         s10, s2, a7
                  sltu        a1, gp, t0
                  addi        t0, s10, 1870
                  c.mv        s7, a0
                  mulh        sp, a2, t0
                  srl         ra, a2, s0
                  mul         s3, t6, t3
                  c.addi      ra, -1
                  sll         s10, s2, s11
                  srli        s7, s4, 19
                  c.addi16sp  sp, 160
                  auipc       t0, 605994
                  slt         s6, t5, t2
                  nop
                  add         a4, s7, tp
                  ori         zero, s1, -761
                  srli        s7, a7, 0
                  andi        sp, a7, -836
                  c.sub       a3, a3
                  c.xor       a3, a2
                  or          s1, t0, t2
                  srl         zero, t2, t5
                  c.and       a3, a3
                  c.srai      a3, 17
                  c.nop
                  xori        t3, s0, 447
                  c.li        sp, 5
                  c.or        a3, a3
                  mul         s3, s3, a6
                  rem         s0, s1, a7
                  c.srai      a3, 14
                  mulhu       gp, t0, s5
                  andi        ra, s6, 1274
                  c.slli      t3, 7
                  slli        a5, a2, 26
                  c.srli      a4, 30
                  c.nop
                  slli        s5, a5, 12
                  sltu        a7, s3, a3
                  slli        zero, s10, 20
                  srli        s1, a7, 21
                  c.srai      a3, 27
                  add         s4, t3, s5
                  addi        s6, s1, -1675
                  c.nop
                  srl         sp, s11, s2
                  sltiu       t3, s0, -720
                  c.li        s11, 2
                  mulhu       ra, t2, a0
                  sub         s4, a2, a1
                  sll         s10, s6, ra
                  divu        a5, t4, zero
                  or          zero, ra, t2
                  c.xor       a3, a3
                  c.li        a7, 16
                  nop
                  andi        tp, t0, 1140
                  nop
                  c.lui       s10, 10
                  sltiu       s2, a6, 135
                  divu        s6, s4, s9
                  c.li        a1, 10
                  and         a0, gp, s10
                  mulhsu      s5, t1, gp
                  slt         s0, a4, s4
                  mulhu       a1, gp, a4
                  c.addi      s9, 11
                  c.srai      a3, 20
                  divu        zero, s11, s6
                  addi        t1, s3, -1453
                  divu        s10, s6, t3
                  and         a4, t5, s0
                  slli        a7, t5, 6
                  srl         s2, t3, t1
                  c.and       a3, a3
                  andi        zero, s10, 1656
                  c.srai      a2, 13
                  srl         t0, a5, s4
                  sltiu       zero, s6, 114
                  srai        ra, s3, 6
                  sll         zero, t0, s6
                  c.slli      a1, 2
                  c.addi16sp  sp, 272
                  ori         sp, zero, 1645
                  srli        s8, ra, 3
                  addi        a2, tp, 365
                  lui         a2, 957972
                  rem         s9, s7, s5
                  and         s2, s2, gp
                  sltu        t2, t6, s0
                  c.addi16sp  sp, -16
                  nop
                  srli        t0, tp, 14
                  c.and       a3, a3
                  sltiu       s9, t3, 1129
                  rem         a4, s2, tp
                  andi        ra, s9, 576
                  c.sub       a3, a0
                  auipc       s4, 550461
                  lui         a5, 342677
                  sltiu       s8, a3, 812
                  xor         t1, tp, t4
                  add         s3, sp, a0
                  c.add       ra, s9
                  sra         a5, a1, a2
                  c.addi      ra, -1
                  divu        zero, t1, t0
                  mulh        sp, sp, t5
                  c.lui       a6, 18
                  c.addi      ra, -1
                  c.addi      s2, 22
                  sub         s1, s11, a2
                  c.li        s8, -1
                  srai        zero, t2, 8
                  c.addi4spn  s1, sp, 576
                  and         s11, s4, s0
                  div         a0, a5, s10
                  div         a3, s8, a1
                  c.addi4spn  a3, sp, 896
                  slli        s0, s9, 18
                  mul         a2, s0, sp
                  slli        tp, t6, 11
                  and         s7, t1, s7
                  mulhu       zero, t6, s6
                  sltu        a3, s5, s4
                  xor         s4, a3, a4
                  c.srai      a3, 19
                  add         ra, s0, s3
                  div         a6, s6, s6
                  and         s0, t6, s9
                  c.and       a3, a3
                  srl         a0, a1, a0
                  sll         a4, a2, s4
                  ori         sp, t6, 940
                  ori         s7, a7, 1898
                  addi        t2, a1, -1558
                  slt         zero, t6, ra
                  slli        s4, gp, 24
                  slt         sp, s6, a5
                  sltu        t2, s1, a5
                  srai        zero, s8, 22
                  c.addi      ra, 8
                  div         zero, ra, t3
                  rem         zero, sp, gp
                  slli        zero, s4, 29
                  srl         gp, t2, t6
                  c.li        s7, 3
                  rem         a5, sp, s6
                  mulh        a4, a0, t6
                  andi        zero, s6, -720
                  mulhsu      gp, a2, t4
                  sub         tp, t2, s6
                  c.addi      a3, -1
                  mul         s5, s10, t4
                  c.add       t2, s9
                  c.addi16sp  sp, -16
                  mulhsu      zero, zero, s5
                  lui         s4, 538925
                  c.li        a6, -1
                  c.or        a3, s0
                  c.srai      a3, 24
                  lui         s9, 35302
                  xor         a2, a0, t0
                  c.lui       tp, 10
                  mulhu       s8, s10, s5
                  c.andi      a4, 25
                  c.lui       ra, 24
                  lui         s5, 275605
                  c.srli      a3, 24
                  c.addi      t0, 26
                  c.and       s0, a3
                  andi        s1, t4, -1103
                  c.li        a5, -1
                  div         s1, zero, a0
                  srai        s10, a2, 9
                  mul         a7, tp, s4
                  srl         s3, s2, s9
                  c.lui       t0, 10
                  nop
                  c.or        a3, a3
                  c.nop
                  c.li        ra, 18
                  sltiu       s1, t1, 1042
                  c.andi      a2, 4
                  or          s6, s9, t6
                  xori        zero, a7, 203
                  addi        t2, a2, -1881
                  c.sub       a5, s1
                  c.andi      a3, 22
                  sub         s4, t2, t2
                  auipc       s1, 918547
                  c.and       a3, a3
                  c.addi      a4, 31
                  c.slli      a7, 20
                  c.xor       a3, a4
                  c.or        a3, a3
                  mul         a6, zero, t4
                  nop
                  slti        a4, t1, 1277
                  c.addi4spn  a3, sp, 640
                  add         gp, s4, gp
                  and         t2, ra, s4
                  mulhu       s6, t0, s0
                  slt         a4, sp, t0
                  rem         s3, a0, ra
                  c.addi16sp  sp, 128
                  srli        a7, t6, 20
                  sra         a0, a5, s9
                  srai        tp, s5, 21
                  c.srai      a3, 16
                  c.xor       s0, a3
                  c.addi4spn  a3, sp, 576
                  xori        a3, a0, -393
                  srl         s5, t6, s10
                  slti        a6, gp, -1005
                  ori         s8, a0, 716
                  c.addi      s2, 1
                  slli        t2, a6, 22
                  c.and       a3, a3
                  sll         s10, s9, t4
                  slli        a4, a1, 17
                  c.addi      ra, -1
                  sltiu       a5, sp, 1179
                  xori        zero, gp, -1290
                  sra         s10, s7, s5
                  add         zero, zero, s9
                  c.lui       a7, 17
                  srai        zero, zero, 21
                  sll         s2, ra, ra
                  mulhsu      ra, a1, ra
                  c.andi      a3, 4
                  div         s9, s11, s0
                  c.lui       a2, 17
                  ori         s6, t3, 1368
                  lui         a0, 5203
                  srai        sp, a3, 16
                  slti        s9, s3, 1590
                  addi        t1, ra, 339
                  c.slli      a3, 2
                  div         a6, t2, sp
                  addi        sp, s4, -298
                  slt         a0, tp, t0
                  sll         ra, s3, s5
                  c.slli      s3, 17
                  rem         tp, t4, a0
                  rem         t0, s3, s2
                  mulhsu      gp, t3, s0
                  or          s11, s7, t5
                  c.mv        t1, a2
                  c.nop
                  mul         a1, a3, t4
                  nop
                  slt         zero, t1, a4
                  c.li        tp, 2
                  c.sub       a2, a3
                  c.slli      t2, 29
                  c.andi      a3, -1
                  c.slli      s3, 16
                  c.srli      a5, 30
                  srai        s3, t0, 22
                  srli        a2, t1, 21
                  and         s9, s11, t4
                  xor         s7, a4, t4
                  slli        a0, t3, 31
                  c.addi      a7, 30
                  nop
                  srli        zero, tp, 22
                  c.slli      s4, 11
                  div         a7, s3, s0
                  c.addi      gp, -1
                  xor         s8, zero, s0
                  mulhsu      a0, s8, a1
                  c.addi      a0, -1
                  or          t3, a5, t0
                  c.nop
                  or          s9, t0, s5
                  srl         a1, s1, s4
                  sll         s2, tp, s8
                  xori        a7, s6, 1962
                  addi        s1, s3, 1888
                  c.xor       a3, a3
                  ori         tp, s1, -88
                  sll         s5, a2, a2
                  xor         t1, t2, s7
                  rem         a4, tp, s1
                  ori         zero, a4, 1915
                  c.mv        sp, s9
                  c.xor       a3, a3
                  c.slli      s4, 24
                  c.add       a2, t5
                  c.and       a3, s1
                  c.li        t2, 29
                  slti        zero, s8, 444
                  srai        s10, t5, 7
                  c.addi4spn  a3, sp, 832
                  c.slli      a6, 8
                  add         s6, t3, s0
                  c.mv        s0, gp
                  c.lui       s6, 16
                  and         zero, a5, zero
                  and         gp, s1, a0
                  srl         a6, t5, zero
                  mulhsu      t1, t4, tp
                  slt         t0, a0, s1
                  xor         a6, s0, s11
                  c.lui       a5, 1
                  xori        zero, s4, 1515
                  c.and       a3, a3
                  c.li        ra, 7
                  c.lui       gp, 22
                  c.lui       ra, 1
                  rem         a7, s1, t4
                  sltiu       a3, zero, 1462
                  add         s11, a1, s3
                  c.addi      t0, 9
                  and         gp, t0, s1
                  lui         s6, 700234
                  auipc       s10, 632591
                  xori        t1, s10, -295
                  auipc       s5, 741816
                  xori        zero, a2, 1577
                  addi        a5, t3, -180
                  sra         a6, t1, s9
                  c.mv        s4, t2
                  add         t0, t1, tp
                  lui         s7, 224689
                  xor         sp, a7, s5
                  ori         gp, a5, 897
                  srl         a3, t0, tp
                  sltiu       s9, s4, -786
                  auipc       t2, 407604
                  xor         a5, a5, t3
                  c.addi16sp  sp, -16
                  nop
                  c.mv        s2, s11
                  c.srai      a3, 21
                  addi        t1, a4, -1356
                  c.nop
                  rem         s9, t5, a7
                  sltu        s9, s8, s1
                  srli        t2, t6, 29
                  srli        a1, s2, 13
                  or          a3, ra, a6
                  or          a1, a3, zero
                  c.addi      ra, 11
                  and         s8, t3, s2
                  c.addi16sp  sp, 464
                  c.andi      a2, 19
                  sltu        a5, s5, s2
                  sltu        a2, t6, s11
                  c.srli      a3, 13
                  add         a5, t1, a2
                  xor         a2, t6, t4
                  c.addi4spn  a4, sp, 864
                  auipc       s2, 817486
                  mulhu       t1, tp, a7
                  xor         zero, s1, s11
                  c.andi      a3, 26
                  nop
                  xor         a5, a2, gp
                  c.nop
                  c.srli      a3, 10
                  mulh        s11, t0, s9
                  sltiu       a3, a7, -678
                  rem         s10, t5, a3
                  c.and       a3, a3
                  or          s4, s5, s5
                  slti        s4, tp, 17
                  c.and       a3, a3
                  c.li        s9, -1
                  mulhu       a3, a1, a5
                  c.srli      a2, 26
                  addi        zero, s2, -1046
                  addi        zero, a0, 1670
                  or          a5, a5, s6
                  sll         zero, s2, a2
                  c.li        s5, -1
                  slt         a0, s0, s1
                  sub         s11, tp, a5
                  sra         zero, t6, t0
                  c.and       a3, a3
                  slli        a2, t5, 13
                  srai        zero, t4, 21
                  c.addi      a0, 27
                  div         s2, s10, t0
                  sra         sp, s8, a1
                  c.xor       a3, a2
                  mul         a4, t2, a3
                  sltiu       s7, t5, -58
                  slti        zero, tp, 1735
                  rem         s6, t2, t6
                  c.addi      s3, -1
                  sra         s8, s7, a2
                  slti        a0, s10, -74
                  c.srli      a3, 13
                  sltu        t2, s9, a0
                  c.add       ra, s6
                  div         s7, s1, ra
                  add         a5, s3, sp
                  slti        s5, t1, 1975
                  sub         ra, s9, tp
                  slt         s4, s1, a6
                  nop
                  c.nop
                  nop
                  c.addi      ra, 15
                  divu        s4, t1, a0
                  c.sub       a3, a3
                  ori         s3, gp, 1585
                  sltu        s7, s8, zero
                  sra         s5, a6, s0
                  andi        a4, s6, -106
                  rem         a6, gp, a5
                  and         a4, t3, a7
                  add         s1, a6, a1
                  srl         a1, a6, tp
                  or          a3, a3, s8
                  srli        a5, s0, 2
                  c.addi      a0, -1
                  c.addi4spn  s1, sp, 384
                  xor         s1, s9, t2
                  srl         a0, t2, s10
                  c.sub       a0, a3
                  c.slli      sp, 19
                  c.addi      ra, 23
                  c.nop
                  lui         s5, 697687
                  add         s3, a0, s5
                  c.srai      a3, 30
                  sra         s2, a4, a2
                  mulhsu      zero, t0, s9
                  srli        s3, zero, 4
                  rem         a2, ra, sp
                  c.lui       s10, 27
                  ori         s10, t6, -1221
                  add         a3, t5, a5
                  c.and       a1, a3
                  c.addi      s1, -1
                  c.or        a0, a4
                  c.addi4spn  s1, sp, 576
                  srai        s10, a1, 0
                  and         s8, zero, a4
                  andi        a0, t5, -1688
                  xori        s8, a3, -1750
                  sltu        s6, a3, s7
                  c.add       a0, s4
                  srli        s1, t0, 22
                  sra         s8, a1, a3
                  c.addi      s3, -1
                  c.mv        a0, t4
                  add         t3, t6, s10
                  mulh        a7, a7, a2
                  xor         s9, a2, s8
                  c.or        a3, a3
                  or          s4, t2, a5
                  lui         s10, 688261
                  c.addi      a3, 15
                  c.and       a3, s0
                  ori         a6, s5, 560
                  c.sub       a3, a3
                  and         s5, s8, a2
                  mulhsu      zero, gp, s5
                  slt         s4, s11, a5
                  c.li        ra, -1
                  xor         s2, s11, ra
                  divu        gp, a0, s10
                  c.addi      ra, 26
                  c.andi      a0, 18
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

.align 4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15
                  .option rvc;

mmode_exception_handler:
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x28, 0xb # ECALL_MMODE
                  beq x13, x28, ecall_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x30, write_tohost
                  jalr x0, x30, 0

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  lw x1, 4(x29)
                  lw x2, 8(x29)
                  lw x3, 12(x29)
                  lw x4, 16(x29)
                  lw x5, 20(x29)
                  lw x6, 24(x29)
                  lw x7, 28(x29)
                  lw x8, 32(x29)
                  lw x9, 36(x29)
                  lw x10, 40(x29)
                  lw x11, 44(x29)
                  lw x12, 48(x29)
                  lw x13, 52(x29)
                  lw x14, 56(x29)
                  lw x15, 60(x29)
                  lw x16, 64(x29)
                  lw x17, 68(x29)
                  lw x18, 72(x29)
                  lw x19, 76(x29)
                  lw x20, 80(x29)
                  lw x21, 84(x29)
                  lw x22, 88(x29)
                  lw x23, 92(x29)
                  lw x24, 96(x29)
                  lw x25, 100(x29)
                  lw x26, 104(x29)
                  lw x27, 108(x29)
                  lw x28, 112(x29)
                  lw x29, 116(x29)
                  lw x30, 120(x29)
                  lw x31, 124(x29)
                  addi x29, x29, 124
                  add x31, x29, zero
                  csrrw x29, 0x340, x29
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  lw x1, 4(x29)
                  lw x2, 8(x29)
                  lw x3, 12(x29)
                  lw x4, 16(x29)
                  lw x5, 20(x29)
                  lw x6, 24(x29)
                  lw x7, 28(x29)
                  lw x8, 32(x29)
                  lw x9, 36(x29)
                  lw x10, 40(x29)
                  lw x11, 44(x29)
                  lw x12, 48(x29)
                  lw x13, 52(x29)
                  lw x14, 56(x29)
                  lw x15, 60(x29)
                  lw x16, 64(x29)
                  lw x17, 68(x29)
                  lw x18, 72(x29)
                  lw x19, 76(x29)
                  lw x20, 80(x29)
                  lw x21, 84(x29)
                  lw x22, 88(x29)
                  lw x23, 92(x29)
                  lw x24, 96(x29)
                  lw x25, 100(x29)
                  lw x26, 104(x29)
                  lw x27, 108(x29)
                  lw x28, 112(x29)
                  lw x29, 116(x29)
                  lw x30, 120(x29)
                  lw x31, 124(x29)
                  addi x29, x29, 124
                  add x31, x29, zero
                  csrrw x29, 0x340, x29
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
