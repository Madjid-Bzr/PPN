address;source_location;insn;indent
0x82d8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0x140(%RSP),%RAX;
0x82e0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	%R9,%RAX;
0x82e3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;CMP	%RAX,%R12;
0x82e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;SETAE	%R8B;
0x82ea;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;CMP	%R9,%R13;
0x82ed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;SETBE	%SIL;
0x82f1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;OR	%SIL,%R8B;
0x82f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;JE	b540 <exact_rhs_._omp_fn.0+0x41f0>;
0x82fa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	0x2462f(%RIP),%RCX;
0x8301;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;CMP	%RCX,%R13;
0x8304;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;SETBE	%DIL;
0x8308;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x8,%RCX;
0x830c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;CMP	%RCX,%R12;
0x830f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;SETAE	%R11B;
0x8313;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;OR	%EDI,%R11D;
0x8316;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;CMPL	$0x2,0x138(%RSP);
0x831e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;SETA	%DL;
0x8321;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;TEST	%DL,%R11B;
0x8324;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;JE	b540 <exact_rhs_._omp_fn.0+0x41f0>;
0x832a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xf8(%RSP),%RAX;
0x8332;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	0x20(%R9),%RDX;
0x8336;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	%R9,%RCX;
0x8339;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VBROADCASTSD	0x245ee(%RIP),%YMM10;
0x8342;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	0x8(%R9),%R8;
0x8346;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	0x10(%R9),%RDI;
0x834a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	0x18(%R9),%RSI;
0x834e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	(%RAX,%RDX,1),%R11;
0x8352;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	%R12,%RAX;
0x8355;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;NOPL	(%RAX);
0x8358;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVUPD	(%RCX),%XMM2;  (43) 
0x835c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x20,%RDX;  (43) 
0x8360;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x20,%RSI;  (43) 
0x8364;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x20,%RDI;  (43) 
0x8368;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VINSERTF128	$0x1,0x10(%RCX),%YMM2,%YMM8;  (43) 
0x836f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	(%RAX),%XMM11;  (43) 
0x8373;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x20,%R8;  (43) 
0x8377;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0xa0,%RAX;  (43) 
0x837d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVUPD	-0x20(%R8),%XMM6;  (43) 
0x8383;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VINSERTF128	$0x1,-0x10(%R8),%YMM6,%YMM12;  (43) 
0x838a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULPD	%YMM4,%YMM12,%YMM9;  (43) 
0x838e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBPD	%YMM9,%YMM8,%YMM14;  (43) 
0x8393;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x50(%RAX),%XMM0;  (43) 
0x8398;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVHPD	-0x78(%RAX),%XMM11,%XMM15;  (43) 
0x839d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x20,%RCX;  (43) 
0x83a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVUPD	-0x20(%RSI),%XMM2;  (43) 
0x83a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VINSERTF128	$0x1,-0x10(%RSI),%YMM2,%YMM8;  (43) 
0x83ad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULPD	%YMM4,%YMM8,%YMM6;  (43) 
0x83b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVHPD	-0x28(%RAX),%XMM0,%XMM1;  (43) 
0x83b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVUPD	-0x20(%RDI),%XMM0;  (43) 
0x83bb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VINSERTF128	$0x1,%XMM1,%YMM15,%YMM13;  (43) 
0x83c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VINSERTF128	$0x1,-0x10(%RDI),%YMM0,%YMM1;  (43) 
0x83c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULPD	%YMM7,%YMM1,%YMM11;  (43) 
0x83cc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDPD	%YMM11,%YMM14,%YMM15;  (43) 
0x83d1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVUPD	-0x20(%RDX),%XMM9;  (43) 
0x83d6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VINSERTF128	$0x1,-0x10(%RDX),%YMM9,%YMM14;  (43) 
0x83dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBPD	%YMM6,%YMM15,%YMM12;  (43) 
0x83e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDPD	%YMM14,%YMM12,%YMM0;  (43) 
0x83e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULPD	%YMM10,%YMM0,%YMM1;  (43) 
0x83eb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBPD	%YMM1,%YMM13,%YMM13;  (43) 
0x83ef;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VEXTRACTF128	$0x1,%YMM13,%XMM15;  (43) 
0x83f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVLPD	%XMM13,-0xa0(%RAX);  (43) 
0x83fd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVHPD	%XMM13,-0x78(%RAX);  (43) 
0x8402;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVLPD	%XMM15,-0x50(%RAX);  (43) 
0x8407;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVHPD	%XMM15,-0x28(%RAX);  (43) 
0x840c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;CMP	%RDX,%R11;  (43) 
0x840f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;JNE	8358 <exact_rhs_._omp_fn.0+0x1008>;  (43) 
0x8415;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xf4(%RSP),%R8D;
0x841d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;CMP	%R8D,0x128(%RSP);
0x8425;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;JE	85ae <exact_rhs_._omp_fn.0+0x125e>;
0x842b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xb0(%RSP),%RDI;
0x8433;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xe8(%RSP),%R11;
0x843b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xa8(%RSP),%RAX;
0x8443;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xb8(%RSP),%RDX;
0x844b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	%RBX,%RDI;
0x844e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xd0(%RSP),%RCX;
0x8456;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	(%R11,%RDI,8),%RSI;
0x845a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xc0(%RSP),%RDI;
0x8462;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	-0x3b(%RAX,%R10,1),%R8;
0x8467;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xd8(%RSP),%RAX;
0x846f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	-0x3b(%RDX,%R10,1),%RDX;
0x8474;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%FS:(%R15,%R8,8),%XMM2;
0x847b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	-0x3b(%RCX,%R10,1),%RCX;
0x8480;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	(%RSI),%XMM1;
0x8484;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	-0x3b(%RDI,%R10,1),%RDI;
0x8489;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;MOV	0x130(%RSP),%R8D;
0x8491;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RDI,8),%XMM3,%XMM10;
0x8498;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RDX,8),%XMM5,%XMM6;
0x849f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RCX,8),%XMM3,%XMM9;
0x84a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	-0x3b(%RAX,%R10,1),%RAX;
0x84ab;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM10,%XMM2,%XMM8;
0x84b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM6,%XMM8,%XMM12;
0x84b4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM9,%XMM12,%XMM14;
0x84b9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%FS:(%R15,%RAX,8),%XMM14,%XMM0;
0x84c0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x24468(%RIP),%XMM0,%XMM13;
0x84c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM13,%XMM1,%XMM11;
0x84cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM11,(%RSI);
0x84d1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;CMP	%R8D,0xc8(%RSP);
0x84d9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;JG	85ae <exact_rhs_._omp_fn.0+0x125e>;
0x84df;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%FS:(%R15,%RDI,8),%XMM10;
0x84e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RDX,8),%XMM3,%XMM15;
0x84ed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RCX,8),%XMM5,%XMM8;
0x84f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RAX,8),%XMM3,%XMM12;
0x84fb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0xa0(%RSP),%RDI;
0x8503;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0x98(%RSP),%RSI;
0x850b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM15,%XMM10,%XMM2;
0x8510;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	-0x3b(%RDI,%R10,1),%RDI;
0x8515;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM8,%XMM2,%XMM6;
0x851a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	%RBX,%RSI;
0x851d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	(%R11,%RSI,8),%RSI;
0x8521;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	(%RSI),%XMM13;
0x8525;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM12,%XMM6,%XMM9;
0x852a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%FS:(%R15,%RDI,8),%XMM9,%XMM14;
0x8531;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x243f7(%RIP),%XMM14,%XMM0;
0x8539;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM0,%XMM13,%XMM1;
0x853d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM1,(%RSI);
0x8541;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;CMP	%R8D,0xf0(%RSP);
0x8549;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;JG	85ae <exact_rhs_._omp_fn.0+0x125e>;
0x854b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%FS:(%R15,%RDX,8),%XMM15;
0x8552;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RCX,8),%XMM3,%XMM11;
0x8559;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RAX,8),%XMM5,%XMM2;
0x8560;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	%FS:(%R15,%RDI,8),%XMM3,%XMM6;
0x8567;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0x90(%RSP),%RDX;
0x856f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;MOV	0x88(%RSP),%R8;
0x8577;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM11,%XMM15,%XMM10;
0x857c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	-0x3b(%RDX,%R10,1),%RCX;
0x8581;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM2,%XMM10,%XMM8;
0x8585;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	%RBX,%R8;
0x8588;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	(%R11,%R8,8),%R11;
0x858c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	(%R11),%XMM0;
0x8591;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM6,%XMM8,%XMM12;
0x8595;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%FS:(%R15,%RCX,8),%XMM12,%XMM9;
0x859c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x2438c(%RIP),%XMM9,%XMM14;
0x85a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM14,%XMM0,%XMM13;
0x85a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM13,(%R11);
0x85ae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x1,%RBX;
0x85b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x8,%R12;
0x85b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x8,%R13;
0x85ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x1d8,%R9;
0x85c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x3b,%R10;
0x85c5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x8,%R14;
0x85c9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:118;CMP	$0x6,%RBX;
0x85cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:118;JNE	82d8 <exact_rhs_._omp_fn.0+0xf88>;
0xb540;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;MOV	0x68(%RSP),%RAX;
0xb545;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;LEA	0x1d0(%R9),%R8;
0xb54c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;MOV	%R14,%RDI;
0xb54f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;LEA	(%RAX,%RBX,8),%RSI;
0xb553;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;SUB	%RSI,%RDI;
0xb556;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;SUB	$0x28,%RDI;
0xb55a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;SHR	$0x3,%RDI;
0xb55e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;ADD	$0x1,%RDI;
0xb562;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;AND	$0x3,%EDI;
0xb565;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;JE	b694 <exact_rhs_._omp_fn.0+0x4344>;
0xb56b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;CMP	$0x1,%RDI;
0xb56f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;JE	b632 <exact_rhs_._omp_fn.0+0x42e2>;
0xb575;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;CMP	$0x2,%RDI;
0xb579;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:218;JE	b5d8 <exact_rhs_._omp_fn.0+0x4288>;
0xb57b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c8(%R8),%XMM3,%XMM1;
0xb584;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x28,%RSI;
0xb588;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c0(%R8),%XMM5,%XMM10;
0xb591;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x1d0(%R8),%XMM11;
0xb59a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1b8(%R8),%XMM3,%XMM8;
0xb5a3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x28(%RSI),%XMM14;
0xb5a8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM1,%XMM11,%XMM15;
0xb5ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM10,%XMM15,%XMM2;
0xb5b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM8,%XMM2,%XMM6;
0xb5b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	-0x1b0(%R8),%XMM6,%XMM12;
0xb5bf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;LEA	0x1d8(%R9),%R8;
0xb5c6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x21362(%RIP),%XMM12,%XMM9;
0xb5ce;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM9,%XMM14,%XMM0;
0xb5d3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM0,-0x28(%RSI);
0xb5d8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c8(%R8),%XMM3,%XMM13;
0xb5e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x28,%RSI;
0xb5e5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x8,%R8;
0xb5e9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x1d8(%R8),%XMM1;
0xb5f2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c8(%R8),%XMM5,%XMM15;
0xb5fb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c0(%R8),%XMM3,%XMM2;
0xb604;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x28(%RSI),%XMM9;
0xb609;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM13,%XMM1,%XMM11;
0xb60e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM15,%XMM11,%XMM10;
0xb613;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM2,%XMM10,%XMM8;
0xb617;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	-0x1b8(%R8),%XMM8,%XMM6;
0xb620;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x21308(%RIP),%XMM6,%XMM12;
0xb628;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM12,%XMM9,%XMM14;
0xb62d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM14,-0x28(%RSI);
0xb632;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c8(%R8),%XMM3,%XMM13;
0xb63b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x28,%RSI;
0xb63f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x8,%R8;
0xb643;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x1d8(%R8),%XMM0;
0xb64c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c8(%R8),%XMM5,%XMM1;
0xb655;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c0(%R8),%XMM3,%XMM10;
0xb65e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x28(%RSI),%XMM12;
0xb663;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM13,%XMM0,%XMM11;
0xb668;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM1,%XMM11,%XMM15;
0xb66c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM10,%XMM15,%XMM2;
0xb671;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	-0x1b8(%R8),%XMM2,%XMM8;
0xb67a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x212ae(%RIP),%XMM8,%XMM6;
0xb682;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM6,%XMM12,%XMM9;
0xb686;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM9,-0x28(%RSI);
0xb68b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;CMP	%R14,%RSI;
0xb68e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;JE	85ae <exact_rhs_._omp_fn.0+0x125e>;
0xb694;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c8(%R8),%XMM3,%XMM14;  (41) 
0xb69d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0xa0,%RSI;  (41) 
0xb6a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;ADD	$0x20,%R8;  (41) 
0xb6a8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x1f0(%R8),%XMM13;  (41) 
0xb6b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1e0(%R8),%XMM5,%XMM11;  (41) 
0xb6ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1d8(%R8),%XMM3,%XMM1;  (41) 
0xb6c3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0xa0(%RSI),%XMM6;  (41) 
0xb6cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM14,%XMM13,%XMM0;  (41) 
0xb6d0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM11,%XMM0,%XMM15;  (41) 
0xb6d5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM1,%XMM15,%XMM10;  (41) 
0xb6d9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	-0x1d0(%R8),%XMM10,%XMM2;  (41) 
0xb6e2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x21246(%RIP),%XMM2,%XMM8;  (41) 
0xb6ea;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM8,%XMM6,%XMM12;  (41) 
0xb6ef;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x78(%RSI),%XMM8;  (41) 
0xb6f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM12,-0xa0(%RSI);  (41) 
0xb6fc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1e0(%R8),%XMM3,%XMM9;  (41) 
0xb705;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x1e8(%R8),%XMM14;  (41) 
0xb70e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1d8(%R8),%XMM5,%XMM0;  (41) 
0xb717;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1d0(%R8),%XMM3,%XMM15;  (41) 
0xb720;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM9,%XMM14,%XMM13;  (41) 
0xb725;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM0,%XMM13,%XMM11;  (41) 
0xb729;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM15,%XMM11,%XMM1;  (41) 
0xb72e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	-0x1c8(%R8),%XMM1,%XMM10;  (41) 
0xb737;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x211f1(%RIP),%XMM10,%XMM2;  (41) 
0xb73f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM2,%XMM8,%XMM6;  (41) 
0xb743;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x50(%RSI),%XMM2;  (41) 
0xb748;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM6,-0x78(%RSI);  (41) 
0xb74d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1d8(%R8),%XMM3,%XMM12;  (41) 
0xb756;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x1e0(%R8),%XMM9;  (41) 
0xb75f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1d0(%R8),%XMM5,%XMM13;  (41) 
0xb768;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c8(%R8),%XMM3,%XMM11;  (41) 
0xb771;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM12,%XMM9,%XMM14;  (41) 
0xb776;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM13,%XMM14,%XMM0;  (41) 
0xb77b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM11,%XMM0,%XMM15;  (41) 
0xb780;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	-0x1c0(%R8),%XMM15,%XMM1;  (41) 
0xb789;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x2119f(%RIP),%XMM1,%XMM10;  (41) 
0xb791;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x28(%RSI),%XMM1;  (41) 
0xb796;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM10,%XMM2,%XMM8;  (41) 
0xb79b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM8,-0x50(%RSI);  (41) 
0xb7a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1d0(%R8),%XMM3,%XMM6;  (41) 
0xb7a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	-0x1d8(%R8),%XMM12;  (41) 
0xb7b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c8(%R8),%XMM5,%XMM14;  (41) 
0xb7bb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	-0x1c0(%R8),%XMM3,%XMM0;  (41) 
0xb7c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM6,%XMM12,%XMM9;  (41) 
0xb7c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	%XMM14,%XMM9,%XMM13;  (41) 
0xb7cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM0,%XMM13,%XMM11;  (41) 
0xb7d1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VADDSD	-0x1b8(%R8),%XMM11,%XMM15;  (41) 
0xb7da;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMULSD	0x2114e(%RIP),%XMM15,%XMM10;  (41) 
0xb7e2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VSUBSD	%XMM10,%XMM1,%XMM2;  (41) 
0xb7e7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:122;VMOVSD	%XMM2,-0x28(%RSI);  (41) 
0xb7ec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;CMP	%R14,%RSI;  (41) 
0xb7ef;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;JNE	b694 <exact_rhs_._omp_fn.0+0x4344>;  (41) 
0xb7f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:119;JMP	85ae <exact_rhs_._omp_fn.0+0x125e>;
