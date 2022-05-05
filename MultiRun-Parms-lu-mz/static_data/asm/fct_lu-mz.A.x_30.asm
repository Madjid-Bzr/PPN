address;source_location;insn;indent
0x1b3c0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;PUSH	%R12;
0x1b3c2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;PUSH	%RBP;
0x1b3c3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%RDI),%RBP;
0x1b3c6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;PUSH	%RBX;
0x1b3c7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CALL	2080 <@plt_start@+0x60>;
0x1b3cc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%RAX),%EBX;
0x1b3ce;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CALL	2190 <@plt_start@+0x170>;
0x1b3d3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%RAX),%R8D;
0x1b3d6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x44(%RBP),%EAX;
0x1b3d9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	%EAX,%EDX;
0x1b3db;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;SAR	$0x1f,%EDX;
0x1b3de;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;IDIV	%EBX;
0x1b3e0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%EDX,%R8D;
0x1b3e3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JL	1b66e <copy_y_face_._omp_fn.0+0x2ae>;
0x1b3e9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;IMUL	%EAX,%R8D;
0x1b3ed;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;ADD	%EDX,%R8D;
0x1b3f0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;ADD	%R8D,%EAX;
0x1b3f3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%EAX,%R8D;
0x1b3f6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JGE	1b669 <copy_y_face_._omp_fn.0+0x2a9>;
0x1b3fc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x10(%RBP),%RSI;
0x1b400;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	0x1(%R8),%R8D;
0x1b404;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOVSXD	0x40(%RBP),%R9;
0x1b408;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x38(%RBP),%R12;
0x1b40c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	(%RSI),%EDX;
0x1b40e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	0x28(%RBP),%RSI;
0x1b412;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x30(%RBP),%RBX;
0x1b416;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x20(%RBP),%R10;
0x1b41a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;IMUL	%R9,%RSI;
0x1b41e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;TEST	%EDX,%EDX;
0x1b420;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x18(%RBP),%RCX;
0x1b424;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	0x8(%RBP),%RDI;
0x1b428;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	(%RBP),%RBP;
0x1b42c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;JLE	1b669 <copy_y_face_._omp_fn.0+0x2a9>;
0x1b432;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOVSXD	%R8D,%R11;
0x1b435;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(%RBX),%R9;
0x1b438;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;IMUL	%R11,%R9;
0x1b43c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x30(%RBP),%RBP;
0x1b440;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	%R12,%R9;
0x1b443;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(,%RCX,8),%R12;
0x1b44b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;IMUL	%R11,%RCX;
0x1b44f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	%RSI,%R9;
0x1b452;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	-0x1(%RDX),%ESI;
0x1b455;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(%RSI,%RSI,4),%RDX;
0x1b459;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(%RDX,%R10,1),%R10;
0x1b45d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	%RCX,%R10;
0x1b460;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x58(%RDI,%R10,8),%RDI;
0x1b465;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x1(%RAX),%R10D;
0x1b469;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x1(%RSI),%RAX;
0x1b46d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;IMUL	$-0x28,%RAX,%R11;
0x1b471;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;NOPW	%CS:(%RAX,%RAX,1);
0x1b47c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;NOPL	(%RAX);
0x1b480;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	%R11,%RCX;(128) 
0x1b483;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	%R11,%RSI;(128) 
0x1b486;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;NEG	%RCX;(128) 
0x1b489;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	%RDI,%RSI;(128) 
0x1b48c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;SUB	$0x28,%RCX;(128) 
0x1b490;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(%RBP,%R9,8),%RDX;(128) 
0x1b495;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;SHR	$0x3,%RCX;(128) 
0x1b499;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	$0x1,%RCX;(128) 
0x1b49d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;AND	$0x3,%ECX;(128) 
0x1b4a0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;JE	1b565 <copy_y_face_._omp_fn.0+0x1a5>;(128) 
0x1b4a6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;CMP	$0x1,%RCX;(128) 
0x1b4aa;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;JE	1b524 <copy_y_face_._omp_fn.0+0x164>;(128) 
0x1b4ac;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;CMP	$0x2,%RCX;(128) 
0x1b4b0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;JE	1b4eb <copy_y_face_._omp_fn.0+0x12b>;(128) 
0x1b4b2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	(%RSI),%XMM0;(128) 
0x1b4b6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RDX),%RDX;(128) 
0x1b4ba;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM0,-0x28(%RDX);(128) 
0x1b4bf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RSI),%RSI;(128) 
0x1b4c3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x20(%RSI),%XMM1;(128) 
0x1b4c8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM1,-0x20(%RDX);(128) 
0x1b4cd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x18(%RSI),%XMM2;(128) 
0x1b4d2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM2,-0x18(%RDX);(128) 
0x1b4d7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x10(%RSI),%XMM3;(128) 
0x1b4dc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM3,-0x10(%RDX);(128) 
0x1b4e1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x8(%RSI),%XMM4;(128) 
0x1b4e6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM4,-0x8(%RDX);(128) 
0x1b4eb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	(%RSI),%XMM5;(128) 
0x1b4ef;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RDX),%RDX;(128) 
0x1b4f3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM5,-0x28(%RDX);(128) 
0x1b4f8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RSI),%RSI;(128) 
0x1b4fc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x20(%RSI),%XMM6;(128) 
0x1b501;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM6,-0x20(%RDX);(128) 
0x1b506;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x18(%RSI),%XMM7;(128) 
0x1b50b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM7,-0x18(%RDX);(128) 
0x1b510;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x10(%RSI),%XMM8;(128) 
0x1b515;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM8,-0x10(%RDX);(128) 
0x1b51a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x8(%RSI),%XMM9;(128) 
0x1b51f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM9,-0x8(%RDX);(128) 
0x1b524;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	(%RSI),%XMM10;(128) 
0x1b528;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RSI),%RSI;(128) 
0x1b52c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM10,(%RDX);(128) 
0x1b530;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RDX),%RDX;(128) 
0x1b534;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x20(%RSI),%XMM11;(128) 
0x1b539;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM11,-0x20(%RDX);(128) 
0x1b53e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x18(%RSI),%XMM12;(128) 
0x1b543;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM12,-0x18(%RDX);(128) 
0x1b548;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x10(%RSI),%XMM13;(128) 
0x1b54d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM13,-0x10(%RDX);(128) 
0x1b552;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x8(%RSI),%XMM14;(128) 
0x1b557;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%RDI,%RSI;(128) 
0x1b55a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM14,-0x8(%RDX);(128) 
0x1b55f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JE	1b654 <copy_y_face_._omp_fn.0+0x294>;(128) 
0x1b565;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	(%RSI),%XMM15;  (127) 
0x1b569;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0xa0(%RSI),%RSI;  (127) 
0x1b570;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM15,(%RDX);  (127) 
0x1b574;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0xa0(%RDX),%RDX;  (127) 
0x1b57b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x98(%RSI),%XMM0;  (127) 
0x1b583;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM0,-0x98(%RDX);  (127) 
0x1b58b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x90(%RSI),%XMM1;  (127) 
0x1b593;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM1,-0x90(%RDX);  (127) 
0x1b59b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x88(%RSI),%XMM2;  (127) 
0x1b5a3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM2,-0x88(%RDX);  (127) 
0x1b5ab;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x80(%RSI),%XMM3;  (127) 
0x1b5b0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM3,-0x80(%RDX);  (127) 
0x1b5b5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x78(%RSI),%XMM4;  (127) 
0x1b5ba;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM4,-0x78(%RDX);  (127) 
0x1b5bf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x70(%RSI),%XMM5;  (127) 
0x1b5c4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM5,-0x70(%RDX);  (127) 
0x1b5c9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x68(%RSI),%XMM6;  (127) 
0x1b5ce;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM6,-0x68(%RDX);  (127) 
0x1b5d3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x60(%RSI),%XMM7;  (127) 
0x1b5d8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM7,-0x60(%RDX);  (127) 
0x1b5dd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x58(%RSI),%XMM8;  (127) 
0x1b5e2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM8,-0x58(%RDX);  (127) 
0x1b5e7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x50(%RSI),%XMM9;  (127) 
0x1b5ec;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM9,-0x50(%RDX);  (127) 
0x1b5f1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x48(%RSI),%XMM10;  (127) 
0x1b5f6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM10,-0x48(%RDX);  (127) 
0x1b5fb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x40(%RSI),%XMM11;  (127) 
0x1b600;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM11,-0x40(%RDX);  (127) 
0x1b605;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x38(%RSI),%XMM12;  (127) 
0x1b60a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM12,-0x38(%RDX);  (127) 
0x1b60f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x30(%RSI),%XMM13;  (127) 
0x1b614;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM13,-0x30(%RDX);  (127) 
0x1b619;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x28(%RSI),%XMM14;  (127) 
0x1b61e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM14,-0x28(%RDX);  (127) 
0x1b623;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x20(%RSI),%XMM15;  (127) 
0x1b628;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM15,-0x20(%RDX);  (127) 
0x1b62d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x18(%RSI),%XMM0;  (127) 
0x1b632;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM0,-0x18(%RDX);  (127) 
0x1b637;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x10(%RSI),%XMM1;  (127) 
0x1b63c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM1,-0x10(%RDX);  (127) 
0x1b641;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x8(%RSI),%XMM2;  (127) 
0x1b646;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%RDI,%RSI;  (127) 
0x1b649;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM2,-0x8(%RDX);  (127) 
0x1b64e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JNE	1b565 <copy_y_face_._omp_fn.0+0x1a5>;  (127) 
0x1b654;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	0x1(%R8),%R8D;(128) 
0x1b658;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%R9,%RBX,1),%R9;(128) 
0x1b65c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%R10D,%R8D;(128) 
0x1b65f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%RDI,%R12,1),%RDI;(128) 
0x1b663;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JNE	1b480 <copy_y_face_._omp_fn.0+0xc0>;(128) 
0x1b669;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;POP	%RBX;
0x1b66a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;POP	%RBP;
0x1b66b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;POP	%R12;
0x1b66d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;RET;
0x1b66e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;ADD	$0x1,%EAX;
0x1b671;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;XOR	%EDX,%EDX;
0x1b673;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JMP	1b3e9 <copy_y_face_._omp_fn.0+0x29>;
0x1b678;:0;NOPL	(%RAX,%RAX,1);
