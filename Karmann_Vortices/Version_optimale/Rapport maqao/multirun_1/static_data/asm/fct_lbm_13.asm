address;source_location;insn;indent
0x3f60;/users/user2207/lbm_opt/src/main.c:77;PUSH	%RBP;
0x3f61;/users/user2207/lbm_opt/src/main.c:77;MOV	%RSP,%RBP;
0x3f64;/users/user2207/lbm_opt/src/main.c:77;PUSH	%R15;
0x3f66;/users/user2207/lbm_opt/src/main.c:77;PUSH	%R14;
0x3f68;/users/user2207/lbm_opt/src/main.c:77;PUSH	%R13;
0x3f6a;/users/user2207/lbm_opt/src/main.c:77;PUSH	%R12;
0x3f6c;/users/user2207/lbm_opt/src/main.c:77;PUSH	%RBX;
0x3f6d;/users/user2207/lbm_opt/src/main.c:77;AND	$-0x40,%RSP;
0x3f71;/users/user2207/lbm_opt/src/main.c:77;MOV	%RSP,%R11;
0x3f74;/users/user2207/lbm_opt/src/main.c:77;SUB	$0x8000,%R11;
0x3f7b;/users/user2207/lbm_opt/src/main.c:77;SUB	$0x1000,%RSP;(18) 
0x3f82;/users/user2207/lbm_opt/src/main.c:77;ORQ	$0,(%RSP);(18) 
0x3f87;/users/user2207/lbm_opt/src/main.c:77;CMP	%R11,%RSP;(18) 
0x3f8a;/users/user2207/lbm_opt/src/main.c:77;JNE	3f7b <save_frame+0x1b>;(18) 
0x3f8c;/users/user2207/lbm_opt/src/main.c:77;LEA	-0x40(%RSP),%RSP;
0x3f91;/users/user2207/lbm_opt/src/main.c:77;LEA	(%RSI),%R14;
0x3f94;/users/user2207/lbm_opt/src/main.c:83;MOV	0x8(%RSI),%ESI;
0x3f97;/users/user2207/lbm_opt/src/main.c:77;MOV	%FS:0x28,%RAX;
0x3fa0;/users/user2207/lbm_opt/src/main.c:77;MOV	%RAX,0x8038(%RSP);
0x3fa8;/users/user2207/lbm_opt/src/main.c:77;XOR	%EAX,%EAX;
0x3faa;/users/user2207/lbm_opt/src/main.c:83;SUB	$0x1,%ESI;
0x3fad;/users/user2207/lbm_opt/src/main.c:83;CMP	$0x1,%ESI;
0x3fb0;/users/user2207/lbm_opt/src/main.c:83;JBE	410a <save_frame+0x1aa>;
0x3fb6;/users/user2207/lbm_opt/src/main.c:83;MOV	0xc(%R14),%EAX;
0x3fba;/users/user2207/lbm_opt/src/main.c:83;LEA	(%RDI),%R15;
0x3fbd;/users/user2207/lbm_opt/src/main.c:83;MOVQ	$0x1,0x28(%RSP);
0x3fc6;/users/user2207/lbm_opt/src/main.c:82;XOR	%EDX,%EDX;
0x3fc8;/users/user2207/lbm_opt/src/main.c:82;VMOVUPD	0x15b6(%RIP),%ZMM5;
0x3fd2;/users/user2207/lbm_opt/src/main.c:99;LEA	0x30(%RSP),%RBX;
0x3fd7;/users/user2207/lbm_opt/src/main.c:99;VMOVUPD	0x1547(%RIP),%ZMM4;
0x3fe1;/users/user2207/lbm_opt/src/main.c:99;LEA	(%RAX),%ECX;
0x3fe3;/users/user2207/lbm_opt/src/main.c:99;SUB	$0x1,%ECX;
0x3fe6;/users/user2207/lbm_opt/src/main.c:99;NOPW	%CS:(%RAX,%RAX,1);
0x3ff0;/users/user2207/lbm_opt/src/main.c:84;CMP	$0x1,%ECX;(19) 
0x3ff3;/users/user2207/lbm_opt/src/main.c:84;MOV	$0x1,%R12D;(19) 
0x3ff9;/users/user2207/lbm_opt/src/main.c:84;MOV	0x28(%RSP),%R13D;(19) 
0x3ffe;/users/user2207/lbm_opt/src/main.c:84;JBE	40eb <save_frame+0x18b>;(19) 
0x4004;/users/user2207/lbm_opt/src/main.c:84;MOV	(%R14),%RDI;  (20) 
0x4007;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX),%R8D;    (21) 
0x400a;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R13D,%R8D;    (21) 
0x400e;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R12D,%R8D;    (21) 
0x4011;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R8D,%R9D;    (21) 
0x4014;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R9D;    (21) 
0x4018;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R8D,%R9D;    (21) 
0x401b;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R9D,%R9D;    (21) 
0x401e;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDI,%R9,8),%R10;    (21) 
0x4022;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852;VMOVUPD	(%R10),%ZMM1;    (21) 
0x4028;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852;VEXTRACTF64X4	$0x1,%ZMM1,%YMM0;    (21) 
0x402f;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%YMM1,%YMM0,%YMM3;    (21) 
0x4033;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:6198;VMOVUPD	0x8(%R10),%ZMM10;    (21) 
0x403d;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:12478;VMULPD	%ZMM5,%ZMM10,%ZMM11;    (21) 
0x4043;/usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513;VEXTRACTF128	$0x1,%YMM3,%XMM6;    (21) 
0x4049;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%XMM3,%XMM6,%XMM7;    (21) 
0x404d;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:12478;VMULPD	%ZMM4,%ZMM10,%ZMM3;    (21) 
0x4053;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852;VEXTRACTF64X4	$0x1,%ZMM11,%YMM12;    (21) 
0x405a;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%YMM11,%YMM12,%YMM13;    (21) 
0x405f;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VHADDPD	%XMM7,%XMM7,%XMM8;    (21) 
0x4063;/users/user2207/lbm_opt/src/lbm_phys.c:47;VADDSD	0x40(%R10),%XMM8,%XMM9;    (21) 
0x4069;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852;VEXTRACTF64X4	$0x1,%ZMM3,%YMM2;    (21) 
0x4070;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%YMM3,%YMM2,%YMM6;    (21) 
0x4074;/usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513;VEXTRACTF128	$0x1,%YMM13,%XMM14;    (21) 
0x407a;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%XMM13,%XMM14,%XMM15;    (21) 
0x407f;/usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513;VEXTRACTF128	$0x1,%YMM6,%XMM7;    (21) 
0x4085;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%XMM6,%XMM7,%XMM8;    (21) 
0x4089;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VHADDPD	%XMM15,%XMM15,%XMM1;    (21) 
0x408e;/users/user2207/lbm_opt/src/lbm_phys.c:58;VDIVSD	%XMM9,%XMM1,%XMM0;    (21) 
0x4093;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VHADDPD	%XMM8,%XMM8,%XMM10;    (21) 
0x4098;/users/user2207/lbm_opt/src/lbm_phys.c:59;VDIVSD	%XMM9,%XMM10,%XMM11;    (21) 
0x409d;/users/user2207/lbm_opt/src/main.c:92;VCVTSD2SS	%XMM9,%XMM9,%XMM9;    (21) 
0x40a2;/users/user2207/lbm_opt/src/lbm_phys.c:39;VMULSD	%XMM11,%XMM11,%XMM12;    (21) 
0x40a7;/users/user2207/lbm_opt/src/main.c:92;VMOVSS	%XMM9,0x34(%RSP,%RDX,8);    (21) 
0x40ad;/users/user2207/lbm_opt/src/lbm_phys.c:39;VFMADD132SD	%XMM0,%XMM12,%XMM0;    (21) 
0x40b2;/users/user2207/lbm_opt/src/main.c:89;VSQRTSD	%XMM0,%XMM0,%XMM0;    (21) 
0x40b6;/users/user2207/lbm_opt/src/main.c:93;VCVTSD2SS	%XMM0,%XMM0,%XMM13;    (21) 
0x40ba;/users/user2207/lbm_opt/src/main.c:93;VMOVSS	%XMM13,0x30(%RSP,%RDX,8);    (21) 
0x40c0;/users/user2207/lbm_opt/src/main.c:94;LEA	0x1(%RDX),%RDX;    (21) 
0x40c4;/users/user2207/lbm_opt/src/main.c:95;CMP	$0x1000,%RDX;    (21) 
0x40cb;/users/user2207/lbm_opt/src/main.c:95;JA	419a <save_frame+0x23a>;    (21) 
0x40d1;/users/user2207/lbm_opt/src/main.c:98;JE	4130 <save_frame+0x1d0>;    (21) 
0x40d3;/users/user2207/lbm_opt/src/main.c:84;LEA	0x1(%R12),%R12;    (21) 
0x40d8;/users/user2207/lbm_opt/src/main.c:84;LEA	(%RCX),%R11D;    (21) 
0x40db;/users/user2207/lbm_opt/src/main.c:84;CMP	%R12,%R11;    (21) 
0x40de;/users/user2207/lbm_opt/src/main.c:84;JA	4007 <save_frame+0xa7>;    (21) 
0x40e4;/users/user2207/lbm_opt/src/main.c:84;MOV	0x8(%R14),%ESI;(19) 
0x40e8;/users/user2207/lbm_opt/src/main.c:84;SUB	$0x1,%ESI;(19) 
0x40eb;/users/user2207/lbm_opt/src/main.c:83;ADDQ	$0x1,0x28(%RSP);(19) 
0x40f1;/users/user2207/lbm_opt/src/main.c:83;MOV	%ESI,%R12D;(19) 
0x40f4;/users/user2207/lbm_opt/src/main.c:83;MOV	0x28(%RSP),%R13;(19) 
0x40f9;/users/user2207/lbm_opt/src/main.c:83;CMP	%R13,%R12;(19) 
0x40fc;/users/user2207/lbm_opt/src/main.c:83;JA	3ff0 <save_frame+0x90>;(19) 
0x4102;/users/user2207/lbm_opt/src/main.c:106;TEST	%RDX,%RDX;
0x4105;/users/user2207/lbm_opt/src/main.c:106;JNE	4180 <save_frame+0x220>;
0x4107;/users/user2207/lbm_opt/src/main.c:106;VZEROUPPER;
0x410a;/users/user2207/lbm_opt/src/main.c:109;MOV	0x8038(%RSP),%RAX;
0x4112;/users/user2207/lbm_opt/src/main.c:109;XOR	%FS:0x28,%RAX;
0x411b;/users/user2207/lbm_opt/src/main.c:109;JNE	41bc <save_frame+0x25c>;
0x4121;/users/user2207/lbm_opt/src/main.c:109;LEA	-0x28(%RBP),%RSP;
0x4125;/users/user2207/lbm_opt/src/main.c:109;POP	%RBX;
0x4126;/users/user2207/lbm_opt/src/main.c:109;POP	%R12;
0x4128;/users/user2207/lbm_opt/src/main.c:109;POP	%R13;
0x412a;/users/user2207/lbm_opt/src/main.c:109;POP	%R14;
0x412c;/users/user2207/lbm_opt/src/main.c:109;POP	%R15;
0x412e;/users/user2207/lbm_opt/src/main.c:109;POP	%RBP;
0x412f;/users/user2207/lbm_opt/src/main.c:109;RET;
0x4130;/users/user2207/lbm_opt/src/main.c:99;LEA	(%R15),%RCX;  (20) 
0x4133;/users/user2207/lbm_opt/src/main.c:99;MOV	$0x1000,%EDX;  (20) 
0x4138;/users/user2207/lbm_opt/src/main.c:99;MOV	$0x8,%ESI;  (20) 
0x413d;/users/user2207/lbm_opt/src/main.c:99;LEA	(%RBX),%RDI;  (20) 
0x4140;/users/user2207/lbm_opt/src/main.c:99;VZEROUPPER;  (20) 
0x4143;/users/user2207/lbm_opt/src/main.c:99;CALL	1380 <.plt.sec@start+0x190>;  (20) 
0x4148;/users/user2207/lbm_opt/src/main.c:100;MOV	0xc(%R14),%EAX;  (20) 
0x414c;/users/user2207/lbm_opt/src/main.c:84;LEA	0x1(%R12),%R12;  (20) 
0x4151;/users/user2207/lbm_opt/src/main.c:84;VMOVUPD	0x142d(%RIP),%ZMM5;  (20) 
0x415b;/users/user2207/lbm_opt/src/main.c:84;VMOVUPD	0x13c3(%RIP),%ZMM4;  (20) 
0x4165;/users/user2207/lbm_opt/src/main.c:84;MOV	%EAX,%EDX;  (20) 
0x4167;/users/user2207/lbm_opt/src/main.c:84;SUB	$0x1,%EDX;  (20) 
0x416a;/users/user2207/lbm_opt/src/main.c:84;CMP	%R12,%RDX;  (20) 
0x416d;/users/user2207/lbm_opt/src/main.c:84;MOV	%RDX,%RCX;  (20) 
0x4170;/users/user2207/lbm_opt/src/main.c:100;MOV	$0,%EDX;  (20) 
0x4175;/users/user2207/lbm_opt/src/main.c:84;JA	4004 <save_frame+0xa4>;  (20) 
0x417b;/users/user2207/lbm_opt/src/main.c:84;JMP	40e4 <save_frame+0x184>;(19) 
0x4180;/users/user2207/lbm_opt/src/main.c:107;LEA	0x30(%RSP),%RDI;
0x4185;/users/user2207/lbm_opt/src/main.c:107;LEA	(%R15),%RCX;
0x4188;/users/user2207/lbm_opt/src/main.c:107;MOV	$0x8,%ESI;
0x418d;/users/user2207/lbm_opt/src/main.c:107;VZEROUPPER;
0x4190;/users/user2207/lbm_opt/src/main.c:107;CALL	1380 <.plt.sec@start+0x190>;
0x4195;/users/user2207/lbm_opt/src/main.c:107;JMP	410a <save_frame+0x1aa>;
0x419a;/users/user2207/lbm_opt/src/main.c:95;LEA	0x1427(%RIP),%RCX;
0x41a1;/users/user2207/lbm_opt/src/main.c:95;MOV	$0x5f,%EDX;
0x41a6;/users/user2207/lbm_opt/src/main.c:95;LEA	0xe70(%RIP),%RSI;
0x41ad;/users/user2207/lbm_opt/src/main.c:95;LEA	0xe74(%RIP),%RDI;
0x41b4;/users/user2207/lbm_opt/src/main.c:95;VZEROUPPER;
0x41b7;/users/user2207/lbm_opt/src/main.c:95;CALL	1260 <.plt.sec@start+0x70>;
0x41bc;/users/user2207/lbm_opt/src/main.c:109;CALL	1340 <.plt.sec@start+0x150>;
0x41c1;:0;NOPW	%CS:(%RAX,%RAX,1);
0x41cc;:0;NOPL	(%RAX);
