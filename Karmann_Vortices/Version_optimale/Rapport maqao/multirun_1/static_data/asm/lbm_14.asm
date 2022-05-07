address;source_location;insn;indent
0x3400;/users/user2207/lbm_opt/src/lbm_phys.c:233;LEA	0x1(%RDX),%RDX;
0x3404;/users/user2207/lbm_opt/src/lbm_phys.c:233;CMP	$0x9,%RDX;
0x3408;/users/user2207/lbm_opt/src/lbm_phys.c:233;JE	3980 <propagation._omp_fn.0+0x610>;
0x340e;/users/user2207/lbm_opt/src/lbm_phys.c:234;VMOVSD	(%R8,%RDX,8),%XMM0;
0x3414;/users/user2207/lbm_opt/src/lbm_phys.c:236;TEST	%RCX,%RCX;
0x3417;/users/user2207/lbm_opt/src/lbm_phys.c:235;VMOVSD	(%RDI,%RDX,8),%XMM1;
0x341c;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	3400 <propagation._omp_fn.0+0x90>;
0x341e;/users/user2207/lbm_opt/src/lbm_phys.c:238;VADDSD	%XMM0,%XMM2,%XMM3;
0x3422;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R9),%R13D;
0x3425;/users/user2207/lbm_opt/src/lbm_phys.c:238;VCVTTSD2SI	%XMM3,%RSI;
0x342a;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%ESI,%R13D;
0x342e;/users/user2207/lbm_opt/include/lbm_struct.h:130;CMP	%RSI,%RBX;
0x3431;/users/user2207/lbm_opt/include/lbm_struct.h:130;JBE	3400 <propagation._omp_fn.0+0x90>;
0x3433;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RCX),%R14;
0x3436;/users/user2207/lbm_opt/src/lbm_phys.c:236;XOR	%EAX,%EAX;
0x3438;/users/user2207/lbm_opt/src/lbm_phys.c:236;AND	$0x7,%R14D;
0x343c;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	36cd <propagation._omp_fn.0+0x35d>;
0x3442;/users/user2207/lbm_opt/src/lbm_phys.c:236;CMP	$0x1,%R14;
0x3446;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	3664 <propagation._omp_fn.0+0x2f4>;
0x344c;/users/user2207/lbm_opt/src/lbm_phys.c:236;CMP	$0x2,%R14;
0x3450;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	3604 <propagation._omp_fn.0+0x294>;
0x3456;/users/user2207/lbm_opt/src/lbm_phys.c:236;CMP	$0x3,%R14;
0x345a;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	35b2 <propagation._omp_fn.0+0x242>;
0x3460;/users/user2207/lbm_opt/src/lbm_phys.c:236;CMP	$0x4,%R14;
0x3464;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	3560 <propagation._omp_fn.0+0x1f0>;
0x346a;/users/user2207/lbm_opt/src/lbm_phys.c:236;CMP	$0x5,%R14;
0x346e;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	350e <propagation._omp_fn.0+0x19e>;
0x3474;/users/user2207/lbm_opt/src/lbm_phys.c:236;CMP	$0x6,%R14;
0x3478;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	34bd <propagation._omp_fn.0+0x14d>;
0x347a;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM1,%R15;
0x347f;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%R15,%RCX;
0x3482;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	34b8 <propagation._omp_fn.0+0x148>;
0x3484;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%EAX;
0x3488;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R15,%R13,1),%R15D;
0x348c;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R14;
0x348f;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%EAX;
0x3493;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%EAX,%ESI;
0x3495;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%ESI;
0x3498;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%ESI;
0x349a;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%ESI,%ESI;
0x349c;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%RSI,%RDX,1),%RAX;
0x34a0;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R15,%R15,8),%ESI;
0x34a4;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R14,%RAX,8),%XMM4;
0x34aa;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%RSI,%RDX,1),%RAX;
0x34ae;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%R14;
0x34b2;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM4,(%R14,%RAX,8);
0x34b8;/users/user2207/lbm_opt/src/lbm_phys.c:236;MOV	$0x1,%EAX;
0x34bd;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%RAX,%XMM5,%XMM5;
0x34c2;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM5,%XMM6;
0x34c6;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM6,%RSI;
0x34cb;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;
0x34ce;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	350a <propagation._omp_fn.0+0x19a>;
0x34d0;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R15D;
0x34d4;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;
0x34d8;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R15D;
0x34dc;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%R15D;
0x34df;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R15D,%R14D;
0x34e2;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R14D;
0x34e6;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R15D,%R14D;
0x34e9;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;
0x34ec;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R14D,%R14D;
0x34ef;/users/user2207/lbm_opt/src/lbm_phys.c:242;ADD	%RDX,%R14;
0x34f2;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM7;
0x34f8;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;
0x34fc;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;
0x3500;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;
0x3504;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM7,(%RSI,%R15,8);
0x350a;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x1(%RAX),%RAX;
0x350e;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%RAX,%XMM8,%XMM8;
0x3513;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM8,%XMM9;
0x3517;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM9,%RSI;
0x351c;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;
0x351f;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	355c <propagation._omp_fn.0+0x1ec>;
0x3521;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R14D;
0x3525;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;
0x3529;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R14D;
0x352d;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%R14D;
0x3530;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R14D,%R15D;
0x3533;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R15D;
0x3537;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R14D,%R15D;
0x353a;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R15D,%R15D;
0x353d;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R15,%RDX,1),%R14;
0x3541;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;
0x3544;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM10;
0x354a;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;
0x354e;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;
0x3552;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;
0x3556;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM10,(%RSI,%R15,8);
0x355c;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x1(%RAX),%RAX;
0x3560;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%RAX,%XMM11,%XMM11;
0x3565;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM11,%XMM12;
0x3569;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM12,%RSI;
0x356e;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;
0x3571;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	35ae <propagation._omp_fn.0+0x23e>;
0x3573;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R14D;
0x3577;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;
0x357b;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R14D;
0x357f;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%R14D;
0x3582;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R14D,%R15D;
0x3585;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R15D;
0x3589;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R14D,%R15D;
0x358c;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R15D,%R15D;
0x358f;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R15,%RDX,1),%R14;
0x3593;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;
0x3596;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM13;
0x359c;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;
0x35a0;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;
0x35a4;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;
0x35a8;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM13,(%RSI,%R15,8);
0x35ae;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x1(%RAX),%RAX;
0x35b2;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%RAX,%XMM14,%XMM14;
0x35b7;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM14,%XMM15;
0x35bb;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM15,%RSI;
0x35c0;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;
0x35c3;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	3600 <propagation._omp_fn.0+0x290>;
0x35c5;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R14D;
0x35c9;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;
0x35cd;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R14D;
0x35d1;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%R14D;
0x35d4;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R14D,%R15D;
0x35d7;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R15D;
0x35db;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R14D,%R15D;
0x35de;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R15D,%R15D;
0x35e1;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R15,%RDX,1),%R14;
0x35e5;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;
0x35e8;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM0;
0x35ee;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;
0x35f2;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;
0x35f6;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;
0x35fa;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM0,(%RSI,%R15,8);
0x3600;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x1(%RAX),%RAX;
0x3604;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%RAX,%XMM3,%XMM3;
0x3609;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM3,%XMM4;
0x360d;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM4,%RSI;
0x3612;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;
0x3615;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	3660 <propagation._omp_fn.0+0x2f0>;
0x3617;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R14D;
0x361b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;
0x361f;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R14D;
0x3623;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%R14D;
0x3626;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R14D,%R15D;
0x3629;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R15D;
0x362d;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R14D,%R15D;
0x3630;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R15D,%R15D;
0x3633;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R15,%RDX,1),%R14;
0x3637;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;
0x363a;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM5;
0x3640;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;
0x3644;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;
0x3648;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;
0x364c;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM5,(%RSI,%R15,8);
0x3652;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPW	%CS:(%RAX,%RAX,1);
0x365d;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);
0x3660;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x1(%RAX),%RAX;
0x3664;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%RAX,%XMM6,%XMM6;
0x3669;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM6,%XMM7;
0x366d;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM7,%RSI;
0x3672;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;
0x3675;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	36c0 <propagation._omp_fn.0+0x350>;
0x3677;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R14D;
0x367b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;
0x367f;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R14D;
0x3683;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%R14D;
0x3686;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R14D,%R15D;
0x3689;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R15D;
0x368d;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R14D,%R15D;
0x3690;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R15D,%R15D;
0x3693;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R15,%RDX,1),%R14;
0x3697;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;
0x369a;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM8;
0x36a0;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;
0x36a4;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;
0x36a8;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;
0x36ac;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM8,(%RSI,%R15,8);
0x36b2;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPW	%CS:(%RAX,%RAX,1);
0x36bd;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);
0x36c0;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x1(%RAX),%RAX;
0x36c4;/users/user2207/lbm_opt/src/lbm_phys.c:236;CMP	%RAX,%RCX;
0x36c7;/users/user2207/lbm_opt/src/lbm_phys.c:236;JE	3400 <propagation._omp_fn.0+0x90>;
0x36cd;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%RAX,%XMM9,%XMM9;  (15) 
0x36d2;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM9,%XMM10;  (15) 
0x36d6;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM10,%RSI;  (15) 
0x36db;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;  (15) 
0x36de;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	3720 <propagation._omp_fn.0+0x3b0>;  (15) 
0x36e0;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R14D;  (15) 
0x36e4;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;  (15) 
0x36e8;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R14D;  (15) 
0x36ec;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%R14D;  (15) 
0x36ef;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R14D,%R15D;  (15) 
0x36f2;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R15D;  (15) 
0x36f6;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R14D,%R15D;  (15) 
0x36f9;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R15D,%R15D;  (15) 
0x36fc;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R15,%RDX,1),%R14;  (15) 
0x3700;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;  (15) 
0x3703;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM11;  (15) 
0x3709;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;  (15) 
0x370d;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;  (15) 
0x3711;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;  (15) 
0x3715;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM11,(%RSI,%R15,8);  (15) 
0x371b;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX,%RAX,1);  (15) 
0x3720;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x1(%RAX),%RAX;  (15) 
0x3724;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%RAX,%XMM12,%XMM12;  (15) 
0x3729;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM12,%XMM13;  (15) 
0x372d;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM13,%RSI;  (15) 
0x3732;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;  (15) 
0x3735;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	3780 <propagation._omp_fn.0+0x410>;  (15) 
0x3737;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R14D;  (15) 
0x373b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;  (15) 
0x373f;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R14D;  (15) 
0x3743;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%EAX,%R14D;  (15) 
0x3746;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R14D,%R15D;  (15) 
0x3749;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%R15D;  (15) 
0x374d;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R14D,%R15D;  (15) 
0x3750;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	%R15D,%R15D;  (15) 
0x3753;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R15,%RDX,1),%R14;  (15) 
0x3757;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;  (15) 
0x375a;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM14;  (15) 
0x3760;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;  (15) 
0x3764;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;  (15) 
0x3768;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;  (15) 
0x376c;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM14,(%RSI,%R15,8);  (15) 
0x3772;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPW	%CS:(%RAX,%RAX,1);  (15) 
0x377d;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);  (15) 
0x3780;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x1(%RAX),%R14;  (15) 
0x3784;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%R14,%XMM15,%XMM15;  (15) 
0x3789;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM15,%XMM0;  (15) 
0x378d;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM0,%RSI;  (15) 
0x3792;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;  (15) 
0x3795;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	37d0 <propagation._omp_fn.0+0x460>;  (15) 
0x3797;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R15D;  (15) 
0x379b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;  (15) 
0x379f;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R15D;  (15) 
0x37a3;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R15D,%R14D;  (15) 
0x37a6;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;  (15) 
0x37a9;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R14,%R14,8),%R14D;  (15) 
0x37ad;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R14;  (15) 
0x37b1;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM3;  (15) 
0x37b7;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;  (15) 
0x37bb;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;  (15) 
0x37bf;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;  (15) 
0x37c3;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM3,(%RSI,%R15,8);  (15) 
0x37c9;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);  (15) 
0x37d0;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x2(%RAX),%R14;  (15) 
0x37d4;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%R14,%XMM4,%XMM4;  (15) 
0x37d9;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM4,%XMM5;  (15) 
0x37dd;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM5,%RSI;  (15) 
0x37e2;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;  (15) 
0x37e5;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	3820 <propagation._omp_fn.0+0x4b0>;  (15) 
0x37e7;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R15D;  (15) 
0x37eb;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;  (15) 
0x37ef;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R15D;  (15) 
0x37f3;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R15D,%R14D;  (15) 
0x37f6;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;  (15) 
0x37f9;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R14,%R14,8),%R14D;  (15) 
0x37fd;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R14;  (15) 
0x3801;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM6;  (15) 
0x3807;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;  (15) 
0x380b;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;  (15) 
0x380f;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;  (15) 
0x3813;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM6,(%RSI,%R15,8);  (15) 
0x3819;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);  (15) 
0x3820;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x3(%RAX),%R14;  (15) 
0x3824;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%R14,%XMM7,%XMM7;  (15) 
0x3829;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM7,%XMM8;  (15) 
0x382d;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM8,%RSI;  (15) 
0x3832;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;  (15) 
0x3835;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	3870 <propagation._omp_fn.0+0x500>;  (15) 
0x3837;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R15D;  (15) 
0x383b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;  (15) 
0x383f;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R15D;  (15) 
0x3843;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R15D,%R14D;  (15) 
0x3846;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;  (15) 
0x3849;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R14,%R14,8),%R14D;  (15) 
0x384d;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R14;  (15) 
0x3851;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM9;  (15) 
0x3857;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;  (15) 
0x385b;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;  (15) 
0x385f;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;  (15) 
0x3863;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM9,(%RSI,%R15,8);  (15) 
0x3869;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);  (15) 
0x3870;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x4(%RAX),%R14;  (15) 
0x3874;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%R14,%XMM10,%XMM10;  (15) 
0x3879;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM10,%XMM11;  (15) 
0x387d;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM11,%RSI;  (15) 
0x3882;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;  (15) 
0x3885;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	38c0 <propagation._omp_fn.0+0x550>;  (15) 
0x3887;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R15D;  (15) 
0x388b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;  (15) 
0x388f;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R15D;  (15) 
0x3893;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R15D,%R14D;  (15) 
0x3896;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;  (15) 
0x3899;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R14,%R14,8),%R14D;  (15) 
0x389d;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R14;  (15) 
0x38a1;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM12;  (15) 
0x38a7;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;  (15) 
0x38ab;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;  (15) 
0x38af;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;  (15) 
0x38b3;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM12,(%RSI,%R15,8);  (15) 
0x38b9;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);  (15) 
0x38c0;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x5(%RAX),%R14;  (15) 
0x38c4;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%R14,%XMM13,%XMM13;  (15) 
0x38c9;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM13,%XMM14;  (15) 
0x38cd;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM14,%RSI;  (15) 
0x38d2;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;  (15) 
0x38d5;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	3910 <propagation._omp_fn.0+0x5a0>;  (15) 
0x38d7;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R15D;  (15) 
0x38db;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;  (15) 
0x38df;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R15D;  (15) 
0x38e3;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R15D,%R14D;  (15) 
0x38e6;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;  (15) 
0x38e9;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R14,%R14,8),%R14D;  (15) 
0x38ed;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R14;  (15) 
0x38f1;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM15;  (15) 
0x38f7;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;  (15) 
0x38fb;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;  (15) 
0x38ff;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;  (15) 
0x3903;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM15,(%RSI,%R15,8);  (15) 
0x3909;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);  (15) 
0x3910;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x6(%RAX),%R14;  (15) 
0x3914;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTSI2SD	%R14,%XMM0,%XMM0;  (15) 
0x3919;/users/user2207/lbm_opt/src/lbm_phys.c:239;VADDSD	%XMM1,%XMM0,%XMM3;  (15) 
0x391d;/users/user2207/lbm_opt/src/lbm_phys.c:239;VCVTTSD2SI	%XMM3,%RSI;  (15) 
0x3922;/users/user2207/lbm_opt/src/lbm_phys.c:241;CMP	%RSI,%RCX;  (15) 
0x3925;/users/user2207/lbm_opt/src/lbm_phys.c:241;JBE	3960 <propagation._omp_fn.0+0x5f0>;  (15) 
0x3927;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	0xc(%R11),%R15D;  (15) 
0x392b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%R13,1),%ESI;  (15) 
0x392f;/users/user2207/lbm_opt/include/lbm_struct.h:130;IMUL	%R10D,%R15D;  (15) 
0x3933;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R15D,%R14D;  (15) 
0x3936;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%R11),%R15;  (15) 
0x3939;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R14,%R14,8),%R14D;  (15) 
0x393d;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R14;  (15) 
0x3941;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	(%R15,%R14,8),%XMM4;  (15) 
0x3947;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%R14D;  (15) 
0x394b;/users/user2207/lbm_opt/src/lbm_phys.c:242;MOV	(%RBP),%RSI;  (15) 
0x394f;/users/user2207/lbm_opt/src/lbm_phys.c:242;LEA	(%R14,%RDX,1),%R15;  (15) 
0x3953;/users/user2207/lbm_opt/src/lbm_phys.c:242;VMOVSD	%XMM4,(%RSI,%R15,8);  (15) 
0x3959;/users/user2207/lbm_opt/src/lbm_phys.c:242;NOPL	(%RAX);  (15) 
0x3960;/users/user2207/lbm_opt/src/lbm_phys.c:236;LEA	0x7(%RAX),%RAX;  (15) 
0x3964;/users/user2207/lbm_opt/src/lbm_phys.c:236;CMP	%RAX,%RCX;  (15) 
0x3967;/users/user2207/lbm_opt/src/lbm_phys.c:236;JNE	36cd <propagation._omp_fn.0+0x35d>;  (15) 
0x396d;/users/user2207/lbm_opt/src/lbm_phys.c:233;LEA	0x1(%RDX),%RDX;
0x3971;/users/user2207/lbm_opt/src/lbm_phys.c:233;CMP	$0x9,%RDX;
0x3975;/users/user2207/lbm_opt/src/lbm_phys.c:233;JNE	340e <propagation._omp_fn.0+0x9e>;
