address;source_location;insn;indent
0x1b680;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;PUSH	%R12;
0x1b682;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;PUSH	%RBP;
0x1b683;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%RDI),%RBP;
0x1b686;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;PUSH	%RBX;
0x1b687;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CALL	2080 <@plt_start@+0x60>;
0x1b68c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%RAX),%EBX;
0x1b68e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CALL	2190 <@plt_start@+0x170>;
0x1b693;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%RAX),%R8D;
0x1b696;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x44(%RBP),%EAX;
0x1b699;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	%EAX,%EDX;
0x1b69b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;SAR	$0x1f,%EDX;
0x1b69e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;IDIV	%EBX;
0x1b6a0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%EDX,%R8D;
0x1b6a3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JL	1b945 <copy_y_face_._omp_fn.1+0x2c5>;
0x1b6a9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;IMUL	%EAX,%R8D;
0x1b6ad;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;ADD	%EDX,%R8D;
0x1b6b0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;ADD	%R8D,%EAX;
0x1b6b3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%EAX,%R8D;
0x1b6b6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JGE	1b940 <copy_y_face_._omp_fn.1+0x2c0>;
0x1b6bc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x10(%RBP),%RCX;
0x1b6c0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	0x1(%R8),%R8D;
0x1b6c4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOVSXD	0x40(%RBP),%RSI;
0x1b6c8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x38(%RBP),%R11;
0x1b6cc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	(%RCX),%ECX;
0x1b6ce;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;IMUL	0x28(%RBP),%RSI;
0x1b6d3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x30(%RBP),%RDX;
0x1b6d7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x20(%RBP),%R9;
0x1b6db;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x18(%RBP),%RBX;
0x1b6df;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;TEST	%ECX,%ECX;
0x1b6e1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOV	(%RBP),%RDI;
0x1b6e5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOV	0x8(%RBP),%RBP;
0x1b6e9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;JLE	1b940 <copy_y_face_._omp_fn.1+0x2c0>;
0x1b6ef;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOVSXD	%R8D,%R10;
0x1b6f2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	(%RBX),%R12;
0x1b6f5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;IMUL	%R10,%R12;
0x1b6f9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	-0x1(%RCX),%ECX;
0x1b6fc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x30(%RBP),%RBP;
0x1b700;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%R12,%R9;
0x1b703;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	(,%RDX,8),%R12;
0x1b70b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;IMUL	%R10,%RDX;
0x1b70f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%R11,%RDX;
0x1b712;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	(%RCX,%RCX,4),%R11;
0x1b716;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%RSI,%RDX;
0x1b719;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x1(%RAX),%ESI;
0x1b71c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x1(%RCX),%RAX;
0x1b720;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%R11,%RDX;
0x1b723;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;IMUL	$-0x28,%RAX,%R10;
0x1b727;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x58(%RDI,%RDX,8),%RDI;
0x1b72c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;NOPL	(%RAX);
0x1b730;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOV	%R10,%RCX;(130) 
0x1b733;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOV	%R10,%R11;(130) 
0x1b736;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;NEG	%RCX;(130) 
0x1b739;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%RDI,%R11;(130) 
0x1b73c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;SUB	$0x28,%RCX;(130) 
0x1b740;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	(%RBP,%R9,8),%RDX;(130) 
0x1b745;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;SHR	$0x3,%RCX;(130) 
0x1b749;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	$0x1,%RCX;(130) 
0x1b74d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;AND	$0x3,%ECX;(130) 
0x1b750;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;JE	1b828 <copy_y_face_._omp_fn.1+0x1a8>;(130) 
0x1b756;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;CMP	$0x1,%RCX;(130) 
0x1b75a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;JE	1b7e2 <copy_y_face_._omp_fn.1+0x162>;(130) 
0x1b760;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;CMP	$0x2,%RCX;(130) 
0x1b764;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;JE	1b7a4 <copy_y_face_._omp_fn.1+0x124>;(130) 
0x1b766;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	(%R11),%XMM0;(130) 
0x1b76b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%RDX),%RDX;(130) 
0x1b76f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM0,-0x28(%RDX);(130) 
0x1b774;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%R11),%R11;(130) 
0x1b778;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x20(%R11),%XMM1;(130) 
0x1b77e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM1,-0x20(%RDX);(130) 
0x1b783;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x18(%R11),%XMM2;(130) 
0x1b789;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM2,-0x18(%RDX);(130) 
0x1b78e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x10(%R11),%XMM3;(130) 
0x1b794;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM3,-0x10(%RDX);(130) 
0x1b799;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x8(%R11),%XMM4;(130) 
0x1b79f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM4,-0x8(%RDX);(130) 
0x1b7a4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	(%R11),%XMM5;(130) 
0x1b7a9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%RDX),%RDX;(130) 
0x1b7ad;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM5,-0x28(%RDX);(130) 
0x1b7b2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%R11),%R11;(130) 
0x1b7b6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x20(%R11),%XMM6;(130) 
0x1b7bc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM6,-0x20(%RDX);(130) 
0x1b7c1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x18(%R11),%XMM7;(130) 
0x1b7c7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM7,-0x18(%RDX);(130) 
0x1b7cc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x10(%R11),%XMM8;(130) 
0x1b7d2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM8,-0x10(%RDX);(130) 
0x1b7d7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x8(%R11),%XMM9;(130) 
0x1b7dd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM9,-0x8(%RDX);(130) 
0x1b7e2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	(%R11),%XMM10;(130) 
0x1b7e7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%R11),%R11;(130) 
0x1b7eb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM10,(%RDX);(130) 
0x1b7ef;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%RDX),%RDX;(130) 
0x1b7f3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x20(%R11),%XMM11;(130) 
0x1b7f9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM11,-0x20(%RDX);(130) 
0x1b7fe;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x18(%R11),%XMM12;(130) 
0x1b804;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM12,-0x18(%RDX);(130) 
0x1b809;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x10(%R11),%XMM13;(130) 
0x1b80f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM13,-0x10(%RDX);(130) 
0x1b814;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x8(%R11),%XMM14;(130) 
0x1b81a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%RDI,%R11;(130) 
0x1b81d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM14,-0x8(%RDX);(130) 
0x1b822;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JE	1b92b <copy_y_face_._omp_fn.1+0x2ab>;(130) 
0x1b828;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	(%R11),%XMM15;  (129) 
0x1b82d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0xa0(%R11),%R11;  (129) 
0x1b834;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM15,(%RDX);  (129) 
0x1b838;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0xa0(%RDX),%RDX;  (129) 
0x1b83f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x98(%R11),%XMM0;  (129) 
0x1b848;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM0,-0x98(%RDX);  (129) 
0x1b850;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x90(%R11),%XMM1;  (129) 
0x1b859;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM1,-0x90(%RDX);  (129) 
0x1b861;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x88(%R11),%XMM2;  (129) 
0x1b86a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM2,-0x88(%RDX);  (129) 
0x1b872;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x80(%R11),%XMM3;  (129) 
0x1b878;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM3,-0x80(%RDX);  (129) 
0x1b87d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x78(%R11),%XMM4;  (129) 
0x1b883;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM4,-0x78(%RDX);  (129) 
0x1b888;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x70(%R11),%XMM5;  (129) 
0x1b88e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM5,-0x70(%RDX);  (129) 
0x1b893;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x68(%R11),%XMM6;  (129) 
0x1b899;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM6,-0x68(%RDX);  (129) 
0x1b89e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x60(%R11),%XMM7;  (129) 
0x1b8a4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM7,-0x60(%RDX);  (129) 
0x1b8a9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x58(%R11),%XMM8;  (129) 
0x1b8af;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM8,-0x58(%RDX);  (129) 
0x1b8b4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x50(%R11),%XMM9;  (129) 
0x1b8ba;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM9,-0x50(%RDX);  (129) 
0x1b8bf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x48(%R11),%XMM10;  (129) 
0x1b8c5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM10,-0x48(%RDX);  (129) 
0x1b8ca;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x40(%R11),%XMM11;  (129) 
0x1b8d0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM11,-0x40(%RDX);  (129) 
0x1b8d5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x38(%R11),%XMM12;  (129) 
0x1b8db;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM12,-0x38(%RDX);  (129) 
0x1b8e0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x30(%R11),%XMM13;  (129) 
0x1b8e6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM13,-0x30(%RDX);  (129) 
0x1b8eb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x28(%R11),%XMM14;  (129) 
0x1b8f1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM14,-0x28(%RDX);  (129) 
0x1b8f6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x20(%R11),%XMM15;  (129) 
0x1b8fc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM15,-0x20(%RDX);  (129) 
0x1b901;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x18(%R11),%XMM0;  (129) 
0x1b907;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM0,-0x18(%RDX);  (129) 
0x1b90c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x10(%R11),%XMM1;  (129) 
0x1b912;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM1,-0x10(%RDX);  (129) 
0x1b917;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x8(%R11),%XMM2;  (129) 
0x1b91d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%RDI,%R11;  (129) 
0x1b920;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM2,-0x8(%RDX);  (129) 
0x1b925;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JNE	1b828 <copy_y_face_._omp_fn.1+0x1a8>;  (129) 
0x1b92b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	0x1(%R8),%R8D;(130) 
0x1b92f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%R9,%RBX,1),%R9;(130) 
0x1b933;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%ESI,%R8D;(130) 
0x1b936;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%RDI,%R12,1),%RDI;(130) 
0x1b93a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JNE	1b730 <copy_y_face_._omp_fn.1+0xb0>;(130) 
0x1b940;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;POP	%RBX;
0x1b941;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;POP	%RBP;
0x1b942;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;POP	%R12;
0x1b944;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;RET;
0x1b945;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;ADD	$0x1,%EAX;
0x1b948;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;XOR	%EDX,%EDX;
0x1b94a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JMP	1b6a9 <copy_y_face_._omp_fn.1+0x29>;
0x1b94f;:0;NOP;
