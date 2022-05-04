address;source_location;insn;indent
0x1b950;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%R14;
0x1b952;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%R13;
0x1b954;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%R12;
0x1b956;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%RBP;
0x1b957;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%RDI),%RBP;
0x1b95a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%RBX;
0x1b95b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CALL	2080 <@plt_start@+0x60>;
0x1b960;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%RAX),%EBX;
0x1b962;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CALL	2190 <@plt_start@+0x170>;
0x1b967;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%RAX),%R8D;
0x1b96a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x44(%RBP),%EAX;
0x1b96d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	%EAX,%EDX;
0x1b96f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;SAR	$0x1f,%EDX;
0x1b972;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;IDIV	%EBX;
0x1b974;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%EDX,%R8D;
0x1b977;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JL	1bc27 <copy_x_face_._omp_fn.0+0x2d7>;
0x1b97d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;IMUL	%EAX,%R8D;
0x1b981;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;ADD	%EDX,%R8D;
0x1b984;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;ADD	%R8D,%EAX;
0x1b987;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%EAX,%R8D;
0x1b98a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JGE	1bc1e <copy_x_face_._omp_fn.0+0x2ce>;
0x1b990;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x10(%RBP),%RCX;
0x1b994;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	0x1(%R8),%R8D;
0x1b998;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOVSXD	0x40(%RBP),%RDI;
0x1b99c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x38(%RBP),%R9;
0x1b9a0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	(%RCX),%EDX;
0x1b9a2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x30(%RBP),%RBX;
0x1b9a6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	%RDI,%RCX;
0x1b9a9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;SAL	$0x2,%RCX;
0x1b9ad;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x28(%RBP),%R11;
0x1b9b1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	%RDI,%RCX;
0x1b9b4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x20(%RBP),%R10;
0x1b9b8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	$0x2,%EDX;
0x1b9bb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x18(%RBP),%RSI;
0x1b9bf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	0x8(%RBP),%RDI;
0x1b9c3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	(%RBP),%R13;
0x1b9c7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;JLE	1bc1e <copy_x_face_._omp_fn.0+0x2ce>;
0x1b9cd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOVSXD	%R8D,%R14;
0x1b9d0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RBX),%R12;
0x1b9d3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;IMUL	%R14,%R12;
0x1b9d7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	-0x3(%RDX),%EBP;
0x1b9da;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RBP,%RBP,4),%RDX;
0x1b9df;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RDX,%R10,1),%R10;
0x1b9e3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	%R12,%R9;
0x1b9e6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(,%RSI,8),%R12;
0x1b9ee;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;IMUL	%R14,%RSI;
0x1b9f2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x1(%RAX),%R14D;
0x1b9f6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RCX,%R11,1),%RAX;
0x1b9fa;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x8(%R13,%RAX,8),%R13;
0x1b9ff;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	%RSI,%R10;
0x1ba02;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(,%R11,8),%RSI;
0x1ba0a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x1(%RBP),%R11;
0x1ba0e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x58(%RDI,%R10,8),%RDI;
0x1ba13;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;IMUL	$-0x28,%R11,%RBP;
0x1ba17;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;NOPW	(%RAX,%RAX,1);
0x1ba20;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	%RBP,%RCX;(132) 
0x1ba23;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	%RBP,%RDX;(132) 
0x1ba26;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;NEG	%RCX;(132) 
0x1ba29;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	%RDI,%RDX;(132) 
0x1ba2c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;SUB	$0x28,%RCX;(132) 
0x1ba30;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R13,%R9,8),%R10;(132) 
0x1ba35;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;SHR	$0x3,%RCX;(132) 
0x1ba39;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	$0x1,%RCX;(132) 
0x1ba3d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;AND	$0x3,%ECX;(132) 
0x1ba40;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;JE	1bb16 <copy_x_face_._omp_fn.0+0x1c6>;(132) 
0x1ba46;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;CMP	$0x1,%RCX;(132) 
0x1ba4a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;JE	1bad0 <copy_x_face_._omp_fn.0+0x180>;(132) 
0x1ba50;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;CMP	$0x2,%RCX;(132) 
0x1ba54;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;JE	1ba93 <copy_x_face_._omp_fn.0+0x143>;(132) 
0x1ba56;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	(%RDX),%XMM0;(132) 
0x1ba5a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x28(%RDX),%RDX;(132) 
0x1ba5e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM0,(%R10);(132) 
0x1ba63;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x20(%RDX),%XMM1;(132) 
0x1ba68;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM1,0x8(%R10);(132) 
0x1ba6e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x18(%RDX),%XMM2;(132) 
0x1ba73;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM2,0x10(%R10);(132) 
0x1ba79;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x10(%RDX),%XMM3;(132) 
0x1ba7e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM3,0x18(%R10);(132) 
0x1ba84;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x8(%RDX),%XMM4;(132) 
0x1ba89;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM4,0x20(%R10);(132) 
0x1ba8f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R10,%RSI,1),%R10;(132) 
0x1ba93;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	(%RDX),%XMM5;(132) 
0x1ba97;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x28(%RDX),%RDX;(132) 
0x1ba9b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM5,(%R10);(132) 
0x1baa0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x20(%RDX),%XMM6;(132) 
0x1baa5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM6,0x8(%R10);(132) 
0x1baab;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x18(%RDX),%XMM7;(132) 
0x1bab0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM7,0x10(%R10);(132) 
0x1bab6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x10(%RDX),%XMM8;(132) 
0x1babb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM8,0x18(%R10);(132) 
0x1bac1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x8(%RDX),%XMM9;(132) 
0x1bac6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM9,0x20(%R10);(132) 
0x1bacc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R10,%RSI,1),%R10;(132) 
0x1bad0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	(%RDX),%XMM10;(132) 
0x1bad4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x28(%RDX),%RDX;(132) 
0x1bad8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM10,(%R10);(132) 
0x1badd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x20(%RDX),%XMM11;(132) 
0x1bae2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM11,0x8(%R10);(132) 
0x1bae8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x18(%RDX),%XMM12;(132) 
0x1baed;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM12,0x10(%R10);(132) 
0x1baf3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x10(%RDX),%XMM13;(132) 
0x1baf8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM13,0x18(%R10);(132) 
0x1bafe;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x8(%RDX),%XMM14;(132) 
0x1bb03;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%RDI,%RDX;(132) 
0x1bb06;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM14,0x20(%R10);(132) 
0x1bb0c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R10,%RSI,1),%R10;(132) 
0x1bb10;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JE	1bc09 <copy_x_face_._omp_fn.0+0x2b9>;(132) 
0x1bb16;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	(%RDX),%XMM15;  (131) 
0x1bb1a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R10,%RSI,1),%RAX;  (131) 
0x1bb1e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM15,(%R10);  (131) 
0x1bb23;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RAX,%RSI,1),%R11;  (131) 
0x1bb27;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	0x8(%RDX),%XMM0;  (131) 
0x1bb2c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R11,%RSI,1),%RCX;  (131) 
0x1bb30;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM0,0x8(%R10);  (131) 
0x1bb36;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0xa0(%RDX),%RDX;  (131) 
0x1bb3d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x90(%RDX),%XMM1;  (131) 
0x1bb45;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM1,0x10(%R10);  (131) 
0x1bb4b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x88(%RDX),%XMM2;  (131) 
0x1bb53;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM2,0x18(%R10);  (131) 
0x1bb59;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x80(%RDX),%XMM3;  (131) 
0x1bb5e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM3,0x20(%R10);  (131) 
0x1bb64;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RCX,%RSI,1),%R10;  (131) 
0x1bb68;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x78(%RDX),%XMM4;  (131) 
0x1bb6d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM4,(%RAX);  (131) 
0x1bb71;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x70(%RDX),%XMM5;  (131) 
0x1bb76;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM5,0x8(%RAX);  (131) 
0x1bb7b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x68(%RDX),%XMM6;  (131) 
0x1bb80;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM6,0x10(%RAX);  (131) 
0x1bb85;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x60(%RDX),%XMM7;  (131) 
0x1bb8a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM7,0x18(%RAX);  (131) 
0x1bb8f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x58(%RDX),%XMM8;  (131) 
0x1bb94;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM8,0x20(%RAX);  (131) 
0x1bb99;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x50(%RDX),%XMM9;  (131) 
0x1bb9e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM9,(%R11);  (131) 
0x1bba3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x48(%RDX),%XMM10;  (131) 
0x1bba8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM10,0x8(%R11);  (131) 
0x1bbae;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x40(%RDX),%XMM11;  (131) 
0x1bbb3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM11,0x10(%R11);  (131) 
0x1bbb9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x38(%RDX),%XMM12;  (131) 
0x1bbbe;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM12,0x18(%R11);  (131) 
0x1bbc4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x30(%RDX),%XMM13;  (131) 
0x1bbc9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM13,0x20(%R11);  (131) 
0x1bbcf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x28(%RDX),%XMM14;  (131) 
0x1bbd4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM14,(%RCX);  (131) 
0x1bbd8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x20(%RDX),%XMM15;  (131) 
0x1bbdd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM15,0x8(%RCX);  (131) 
0x1bbe2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x18(%RDX),%XMM0;  (131) 
0x1bbe7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM0,0x10(%RCX);  (131) 
0x1bbec;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x10(%RDX),%XMM1;  (131) 
0x1bbf1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM1,0x18(%RCX);  (131) 
0x1bbf6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x8(%RDX),%XMM2;  (131) 
0x1bbfb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%RDI,%RDX;  (131) 
0x1bbfe;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM2,0x20(%RCX);  (131) 
0x1bc03;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JNE	1bb16 <copy_x_face_._omp_fn.0+0x1c6>;  (131) 
0x1bc09;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	0x1(%R8),%R8D;(132) 
0x1bc0d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%R9,%RBX,1),%R9;(132) 
0x1bc11;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%R14D,%R8D;(132) 
0x1bc14;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%RDI,%R12,1),%RDI;(132) 
0x1bc18;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JNE	1ba20 <copy_x_face_._omp_fn.0+0xd0>;(132) 
0x1bc1e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%RBX;
0x1bc1f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%RBP;
0x1bc20;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%R12;
0x1bc22;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%R13;
0x1bc24;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%R14;
0x1bc26;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;RET;
0x1bc27;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;ADD	$0x1,%EAX;
0x1bc2a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;XOR	%EDX,%EDX;
0x1bc2c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JMP	1b97d <copy_x_face_._omp_fn.0+0x2d>;
0x1bc31;:0;NOPW	%CS:(%RAX,%RAX,1);
0x1bc3c;:0;NOPL	(%RAX);
