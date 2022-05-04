address;source_location;insn;indent
0x1b960;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%R14;
0x1b962;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%R13;
0x1b964;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%R12;
0x1b966;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%RBP;
0x1b967;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%RDI),%RBP;
0x1b96a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;PUSH	%RBX;
0x1b96b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CALL	2080 <@plt_start@+0x60>;
0x1b970;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%RAX),%EBX;
0x1b972;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CALL	2190 <@plt_start@+0x170>;
0x1b977;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%RAX),%R8D;
0x1b97a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x44(%RBP),%EAX;
0x1b97d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	%EAX,%EDX;
0x1b97f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;SAR	$0x1f,%EDX;
0x1b982;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;IDIV	%EBX;
0x1b984;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%EDX,%R8D;
0x1b987;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JL	1bc37 <copy_x_face_._omp_fn.0+0x2d7>;
0x1b98d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;IMUL	%EAX,%R8D;
0x1b991;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;ADD	%EDX,%R8D;
0x1b994;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;ADD	%R8D,%EAX;
0x1b997;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%EAX,%R8D;
0x1b99a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JGE	1bc2e <copy_x_face_._omp_fn.0+0x2ce>;
0x1b9a0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x10(%RBP),%RCX;
0x1b9a4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	0x1(%R8),%R8D;
0x1b9a8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOVSXD	0x40(%RBP),%RDI;
0x1b9ac;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x38(%RBP),%R9;
0x1b9b0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	(%RCX),%EDX;
0x1b9b2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x30(%RBP),%RBX;
0x1b9b6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	%RDI,%RCX;
0x1b9b9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;SAL	$0x2,%RCX;
0x1b9bd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x28(%RBP),%R11;
0x1b9c1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	%RDI,%RCX;
0x1b9c4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x20(%RBP),%R10;
0x1b9c8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	$0x2,%EDX;
0x1b9cb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;MOV	0x18(%RBP),%RSI;
0x1b9cf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	0x8(%RBP),%RDI;
0x1b9d3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	(%RBP),%R13;
0x1b9d7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;JLE	1bc2e <copy_x_face_._omp_fn.0+0x2ce>;
0x1b9dd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOVSXD	%R8D,%R14;
0x1b9e0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RBX),%R12;
0x1b9e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;IMUL	%R14,%R12;
0x1b9e7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	-0x3(%RDX),%EBP;
0x1b9ea;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RBP,%RBP,4),%RDX;
0x1b9ef;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RDX,%R10,1),%R10;
0x1b9f3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	%R12,%R9;
0x1b9f6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(,%RSI,8),%R12;
0x1b9fe;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;IMUL	%R14,%RSI;
0x1ba02;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x1(%RAX),%R14D;
0x1ba06;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RCX,%R11,1),%RAX;
0x1ba0a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x8(%R13,%RAX,8),%R13;
0x1ba0f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	%RSI,%R10;
0x1ba12;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(,%R11,8),%RSI;
0x1ba1a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x1(%RBP),%R11;
0x1ba1e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x58(%RDI,%R10,8),%RDI;
0x1ba23;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;IMUL	$-0x28,%R11,%RBP;
0x1ba27;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;NOPW	(%RAX,%RAX,1);
0x1ba30;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	%RBP,%RCX;(132) 
0x1ba33;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;MOV	%RBP,%RDX;(132) 
0x1ba36;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;NEG	%RCX;(132) 
0x1ba39;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	%RDI,%RDX;(132) 
0x1ba3c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;SUB	$0x28,%RCX;(132) 
0x1ba40;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R13,%R9,8),%R10;(132) 
0x1ba45;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;SHR	$0x3,%RCX;(132) 
0x1ba49;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;ADD	$0x1,%RCX;(132) 
0x1ba4d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;AND	$0x3,%ECX;(132) 
0x1ba50;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;JE	1bb26 <copy_x_face_._omp_fn.0+0x1c6>;(132) 
0x1ba56;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;CMP	$0x1,%RCX;(132) 
0x1ba5a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;JE	1bae0 <copy_x_face_._omp_fn.0+0x180>;(132) 
0x1ba60;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;CMP	$0x2,%RCX;(132) 
0x1ba64;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;JE	1baa3 <copy_x_face_._omp_fn.0+0x143>;(132) 
0x1ba66;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	(%RDX),%XMM0;(132) 
0x1ba6a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x28(%RDX),%RDX;(132) 
0x1ba6e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM0,(%R10);(132) 
0x1ba73;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x20(%RDX),%XMM1;(132) 
0x1ba78;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM1,0x8(%R10);(132) 
0x1ba7e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x18(%RDX),%XMM2;(132) 
0x1ba83;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM2,0x10(%R10);(132) 
0x1ba89;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x10(%RDX),%XMM3;(132) 
0x1ba8e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM3,0x18(%R10);(132) 
0x1ba94;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x8(%RDX),%XMM4;(132) 
0x1ba99;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM4,0x20(%R10);(132) 
0x1ba9f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R10,%RSI,1),%R10;(132) 
0x1baa3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	(%RDX),%XMM5;(132) 
0x1baa7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x28(%RDX),%RDX;(132) 
0x1baab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM5,(%R10);(132) 
0x1bab0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x20(%RDX),%XMM6;(132) 
0x1bab5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM6,0x8(%R10);(132) 
0x1babb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x18(%RDX),%XMM7;(132) 
0x1bac0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM7,0x10(%R10);(132) 
0x1bac6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x10(%RDX),%XMM8;(132) 
0x1bacb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM8,0x18(%R10);(132) 
0x1bad1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x8(%RDX),%XMM9;(132) 
0x1bad6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM9,0x20(%R10);(132) 
0x1badc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R10,%RSI,1),%R10;(132) 
0x1bae0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	(%RDX),%XMM10;(132) 
0x1bae4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0x28(%RDX),%RDX;(132) 
0x1bae8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM10,(%R10);(132) 
0x1baed;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x20(%RDX),%XMM11;(132) 
0x1baf2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM11,0x8(%R10);(132) 
0x1baf8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x18(%RDX),%XMM12;(132) 
0x1bafd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM12,0x10(%R10);(132) 
0x1bb03;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x10(%RDX),%XMM13;(132) 
0x1bb08;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM13,0x18(%R10);(132) 
0x1bb0e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x8(%RDX),%XMM14;(132) 
0x1bb13;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%RDI,%RDX;(132) 
0x1bb16;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM14,0x20(%R10);(132) 
0x1bb1c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R10,%RSI,1),%R10;(132) 
0x1bb20;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JE	1bc19 <copy_x_face_._omp_fn.0+0x2b9>;(132) 
0x1bb26;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	(%RDX),%XMM15;  (131) 
0x1bb2a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R10,%RSI,1),%RAX;  (131) 
0x1bb2e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM15,(%R10);  (131) 
0x1bb33;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RAX,%RSI,1),%R11;  (131) 
0x1bb37;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	0x8(%RDX),%XMM0;  (131) 
0x1bb3c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%R11,%RSI,1),%RCX;  (131) 
0x1bb40;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM0,0x8(%R10);  (131) 
0x1bb46;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	0xa0(%RDX),%RDX;  (131) 
0x1bb4d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x90(%RDX),%XMM1;  (131) 
0x1bb55;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM1,0x10(%R10);  (131) 
0x1bb5b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x88(%RDX),%XMM2;  (131) 
0x1bb63;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM2,0x18(%R10);  (131) 
0x1bb69;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x80(%RDX),%XMM3;  (131) 
0x1bb6e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM3,0x20(%R10);  (131) 
0x1bb74;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;LEA	(%RCX,%RSI,1),%R10;  (131) 
0x1bb78;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x78(%RDX),%XMM4;  (131) 
0x1bb7d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM4,(%RAX);  (131) 
0x1bb81;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x70(%RDX),%XMM5;  (131) 
0x1bb86;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM5,0x8(%RAX);  (131) 
0x1bb8b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x68(%RDX),%XMM6;  (131) 
0x1bb90;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM6,0x10(%RAX);  (131) 
0x1bb95;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x60(%RDX),%XMM7;  (131) 
0x1bb9a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM7,0x18(%RAX);  (131) 
0x1bb9f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x58(%RDX),%XMM8;  (131) 
0x1bba4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM8,0x20(%RAX);  (131) 
0x1bba9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x50(%RDX),%XMM9;  (131) 
0x1bbae;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM9,(%R11);  (131) 
0x1bbb3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x48(%RDX),%XMM10;  (131) 
0x1bbb8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM10,0x8(%R11);  (131) 
0x1bbbe;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x40(%RDX),%XMM11;  (131) 
0x1bbc3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM11,0x10(%R11);  (131) 
0x1bbc9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x38(%RDX),%XMM12;  (131) 
0x1bbce;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM12,0x18(%R11);  (131) 
0x1bbd4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x30(%RDX),%XMM13;  (131) 
0x1bbd9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM13,0x20(%R11);  (131) 
0x1bbdf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x28(%RDX),%XMM14;  (131) 
0x1bbe4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM14,(%RCX);  (131) 
0x1bbe8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x20(%RDX),%XMM15;  (131) 
0x1bbed;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM15,0x8(%RCX);  (131) 
0x1bbf2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x18(%RDX),%XMM0;  (131) 
0x1bbf7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM0,0x10(%RCX);  (131) 
0x1bbfc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x10(%RDX),%XMM1;  (131) 
0x1bc01;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM1,0x18(%RCX);  (131) 
0x1bc06;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	-0x8(%RDX),%XMM2;  (131) 
0x1bc0b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%RDI,%RDX;  (131) 
0x1bc0e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:255;VMOVSD	%XMM2,0x20(%RCX);  (131) 
0x1bc13;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JNE	1bb26 <copy_x_face_._omp_fn.0+0x1c6>;  (131) 
0x1bc19;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	0x1(%R8),%R8D;(132) 
0x1bc1d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%R9,%RBX,1),%R9;(132) 
0x1bc21;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;CMP	%R14D,%R8D;(132) 
0x1bc24;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;LEA	(%RDI,%R12,1),%RDI;(132) 
0x1bc28;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JNE	1ba30 <copy_x_face_._omp_fn.0+0xd0>;(132) 
0x1bc2e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%RBX;
0x1bc2f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%RBP;
0x1bc30;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%R12;
0x1bc32;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%R13;
0x1bc34;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;POP	%R14;
0x1bc36;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;RET;
0x1bc37;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;ADD	$0x1,%EAX;
0x1bc3a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;XOR	%EDX,%EDX;
0x1bc3c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253;JMP	1b98d <copy_x_face_._omp_fn.0+0x2d>;
0x1bc41;:0;NOPW	%CS:(%RAX,%RAX,1);
0x1bc4c;:0;NOPL	(%RAX);
