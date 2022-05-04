address;source_location;insn;indent
0x1b3d0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;PUSH	%R12;
0x1b3d2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;PUSH	%RBP;
0x1b3d3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%RDI),%RBP;
0x1b3d6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;PUSH	%RBX;
0x1b3d7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CALL	2080 <@plt_start@+0x60>;
0x1b3dc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%RAX),%EBX;
0x1b3de;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CALL	2190 <@plt_start@+0x170>;
0x1b3e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%RAX),%R8D;
0x1b3e6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x44(%RBP),%EAX;
0x1b3e9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	%EAX,%EDX;
0x1b3eb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;SAR	$0x1f,%EDX;
0x1b3ee;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;IDIV	%EBX;
0x1b3f0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%EDX,%R8D;
0x1b3f3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JL	1b67e <copy_y_face_._omp_fn.0+0x2ae>;
0x1b3f9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;IMUL	%EAX,%R8D;
0x1b3fd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;ADD	%EDX,%R8D;
0x1b400;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;ADD	%R8D,%EAX;
0x1b403;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%EAX,%R8D;
0x1b406;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JGE	1b679 <copy_y_face_._omp_fn.0+0x2a9>;
0x1b40c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x10(%RBP),%RSI;
0x1b410;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	0x1(%R8),%R8D;
0x1b414;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOVSXD	0x40(%RBP),%R9;
0x1b418;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x38(%RBP),%R12;
0x1b41c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	(%RSI),%EDX;
0x1b41e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	0x28(%RBP),%RSI;
0x1b422;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x30(%RBP),%RBX;
0x1b426;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x20(%RBP),%R10;
0x1b42a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;IMUL	%R9,%RSI;
0x1b42e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;TEST	%EDX,%EDX;
0x1b430;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;MOV	0x18(%RBP),%RCX;
0x1b434;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	0x8(%RBP),%RDI;
0x1b438;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	(%RBP),%RBP;
0x1b43c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;JLE	1b679 <copy_y_face_._omp_fn.0+0x2a9>;
0x1b442;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOVSXD	%R8D,%R11;
0x1b445;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(%RBX),%R9;
0x1b448;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;IMUL	%R11,%R9;
0x1b44c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x30(%RBP),%RBP;
0x1b450;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	%R12,%R9;
0x1b453;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(,%RCX,8),%R12;
0x1b45b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;IMUL	%R11,%RCX;
0x1b45f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	%RSI,%R9;
0x1b462;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	-0x1(%RDX),%ESI;
0x1b465;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(%RSI,%RSI,4),%RDX;
0x1b469;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(%RDX,%R10,1),%R10;
0x1b46d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	%RCX,%R10;
0x1b470;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x58(%RDI,%R10,8),%RDI;
0x1b475;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x1(%RAX),%R10D;
0x1b479;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x1(%RSI),%RAX;
0x1b47d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;IMUL	$-0x28,%RAX,%R11;
0x1b481;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;NOPW	%CS:(%RAX,%RAX,1);
0x1b48c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;NOPL	(%RAX);
0x1b490;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	%R11,%RCX;(128) 
0x1b493;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;MOV	%R11,%RSI;(128) 
0x1b496;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;NEG	%RCX;(128) 
0x1b499;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	%RDI,%RSI;(128) 
0x1b49c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;SUB	$0x28,%RCX;(128) 
0x1b4a0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	(%RBP,%R9,8),%RDX;(128) 
0x1b4a5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;SHR	$0x3,%RCX;(128) 
0x1b4a9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;ADD	$0x1,%RCX;(128) 
0x1b4ad;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;AND	$0x3,%ECX;(128) 
0x1b4b0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;JE	1b575 <copy_y_face_._omp_fn.0+0x1a5>;(128) 
0x1b4b6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;CMP	$0x1,%RCX;(128) 
0x1b4ba;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;JE	1b534 <copy_y_face_._omp_fn.0+0x164>;(128) 
0x1b4bc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;CMP	$0x2,%RCX;(128) 
0x1b4c0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;JE	1b4fb <copy_y_face_._omp_fn.0+0x12b>;(128) 
0x1b4c2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	(%RSI),%XMM0;(128) 
0x1b4c6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RDX),%RDX;(128) 
0x1b4ca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM0,-0x28(%RDX);(128) 
0x1b4cf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RSI),%RSI;(128) 
0x1b4d3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x20(%RSI),%XMM1;(128) 
0x1b4d8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM1,-0x20(%RDX);(128) 
0x1b4dd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x18(%RSI),%XMM2;(128) 
0x1b4e2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM2,-0x18(%RDX);(128) 
0x1b4e7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x10(%RSI),%XMM3;(128) 
0x1b4ec;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM3,-0x10(%RDX);(128) 
0x1b4f1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x8(%RSI),%XMM4;(128) 
0x1b4f6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM4,-0x8(%RDX);(128) 
0x1b4fb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	(%RSI),%XMM5;(128) 
0x1b4ff;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RDX),%RDX;(128) 
0x1b503;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM5,-0x28(%RDX);(128) 
0x1b508;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RSI),%RSI;(128) 
0x1b50c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x20(%RSI),%XMM6;(128) 
0x1b511;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM6,-0x20(%RDX);(128) 
0x1b516;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x18(%RSI),%XMM7;(128) 
0x1b51b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM7,-0x18(%RDX);(128) 
0x1b520;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x10(%RSI),%XMM8;(128) 
0x1b525;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM8,-0x10(%RDX);(128) 
0x1b52a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x8(%RSI),%XMM9;(128) 
0x1b52f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM9,-0x8(%RDX);(128) 
0x1b534;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	(%RSI),%XMM10;(128) 
0x1b538;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RSI),%RSI;(128) 
0x1b53c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM10,(%RDX);(128) 
0x1b540;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0x28(%RDX),%RDX;(128) 
0x1b544;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x20(%RSI),%XMM11;(128) 
0x1b549;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM11,-0x20(%RDX);(128) 
0x1b54e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x18(%RSI),%XMM12;(128) 
0x1b553;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM12,-0x18(%RDX);(128) 
0x1b558;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x10(%RSI),%XMM13;(128) 
0x1b55d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM13,-0x10(%RDX);(128) 
0x1b562;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x8(%RSI),%XMM14;(128) 
0x1b567;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%RDI,%RSI;(128) 
0x1b56a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM14,-0x8(%RDX);(128) 
0x1b56f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JE	1b664 <copy_y_face_._omp_fn.0+0x294>;(128) 
0x1b575;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	(%RSI),%XMM15;  (127) 
0x1b579;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0xa0(%RSI),%RSI;  (127) 
0x1b580;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM15,(%RDX);  (127) 
0x1b584;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;LEA	0xa0(%RDX),%RDX;  (127) 
0x1b58b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x98(%RSI),%XMM0;  (127) 
0x1b593;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM0,-0x98(%RDX);  (127) 
0x1b59b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x90(%RSI),%XMM1;  (127) 
0x1b5a3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM1,-0x90(%RDX);  (127) 
0x1b5ab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x88(%RSI),%XMM2;  (127) 
0x1b5b3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM2,-0x88(%RDX);  (127) 
0x1b5bb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x80(%RSI),%XMM3;  (127) 
0x1b5c0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM3,-0x80(%RDX);  (127) 
0x1b5c5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x78(%RSI),%XMM4;  (127) 
0x1b5ca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM4,-0x78(%RDX);  (127) 
0x1b5cf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x70(%RSI),%XMM5;  (127) 
0x1b5d4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM5,-0x70(%RDX);  (127) 
0x1b5d9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x68(%RSI),%XMM6;  (127) 
0x1b5de;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM6,-0x68(%RDX);  (127) 
0x1b5e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x60(%RSI),%XMM7;  (127) 
0x1b5e8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM7,-0x60(%RDX);  (127) 
0x1b5ed;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x58(%RSI),%XMM8;  (127) 
0x1b5f2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM8,-0x58(%RDX);  (127) 
0x1b5f7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x50(%RSI),%XMM9;  (127) 
0x1b5fc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM9,-0x50(%RDX);  (127) 
0x1b601;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x48(%RSI),%XMM10;  (127) 
0x1b606;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM10,-0x48(%RDX);  (127) 
0x1b60b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x40(%RSI),%XMM11;  (127) 
0x1b610;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM11,-0x40(%RDX);  (127) 
0x1b615;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x38(%RSI),%XMM12;  (127) 
0x1b61a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM12,-0x38(%RDX);  (127) 
0x1b61f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x30(%RSI),%XMM13;  (127) 
0x1b624;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM13,-0x30(%RDX);  (127) 
0x1b629;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x28(%RSI),%XMM14;  (127) 
0x1b62e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM14,-0x28(%RDX);  (127) 
0x1b633;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x20(%RSI),%XMM15;  (127) 
0x1b638;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM15,-0x20(%RDX);  (127) 
0x1b63d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x18(%RSI),%XMM0;  (127) 
0x1b642;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM0,-0x18(%RDX);  (127) 
0x1b647;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x10(%RSI),%XMM1;  (127) 
0x1b64c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM1,-0x10(%RDX);  (127) 
0x1b651;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	-0x8(%RSI),%XMM2;  (127) 
0x1b656;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%RDI,%RSI;  (127) 
0x1b659;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:218;VMOVSD	%XMM2,-0x8(%RDX);  (127) 
0x1b65e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JNE	1b575 <copy_y_face_._omp_fn.0+0x1a5>;  (127) 
0x1b664;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	0x1(%R8),%R8D;(128) 
0x1b668;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%R9,%RBX,1),%R9;(128) 
0x1b66c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;CMP	%R10D,%R8D;(128) 
0x1b66f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;LEA	(%RDI,%R12,1),%RDI;(128) 
0x1b673;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JNE	1b490 <copy_y_face_._omp_fn.0+0xc0>;(128) 
0x1b679;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;POP	%RBX;
0x1b67a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;POP	%RBP;
0x1b67b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;POP	%R12;
0x1b67d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;RET;
0x1b67e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;ADD	$0x1,%EAX;
0x1b681;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;XOR	%EDX,%EDX;
0x1b683;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:216;JMP	1b3f9 <copy_y_face_._omp_fn.0+0x29>;
0x1b688;:0;NOPL	(%RAX,%RAX,1);
