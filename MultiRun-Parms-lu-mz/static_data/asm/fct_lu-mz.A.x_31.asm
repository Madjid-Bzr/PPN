address;source_location;insn;indent
0x1b690;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;PUSH	%R12;
0x1b692;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;PUSH	%RBP;
0x1b693;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%RDI),%RBP;
0x1b696;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;PUSH	%RBX;
0x1b697;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CALL	2080 <@plt_start@+0x60>;
0x1b69c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%RAX),%EBX;
0x1b69e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CALL	2190 <@plt_start@+0x170>;
0x1b6a3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%RAX),%R8D;
0x1b6a6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x44(%RBP),%EAX;
0x1b6a9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	%EAX,%EDX;
0x1b6ab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;SAR	$0x1f,%EDX;
0x1b6ae;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;IDIV	%EBX;
0x1b6b0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%EDX,%R8D;
0x1b6b3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JL	1b955 <copy_y_face_._omp_fn.1+0x2c5>;
0x1b6b9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;IMUL	%EAX,%R8D;
0x1b6bd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;ADD	%EDX,%R8D;
0x1b6c0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;ADD	%R8D,%EAX;
0x1b6c3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%EAX,%R8D;
0x1b6c6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JGE	1b950 <copy_y_face_._omp_fn.1+0x2c0>;
0x1b6cc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x10(%RBP),%RCX;
0x1b6d0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	0x1(%R8),%R8D;
0x1b6d4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOVSXD	0x40(%RBP),%RSI;
0x1b6d8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x38(%RBP),%R11;
0x1b6dc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	(%RCX),%ECX;
0x1b6de;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;IMUL	0x28(%RBP),%RSI;
0x1b6e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x30(%RBP),%RDX;
0x1b6e7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x20(%RBP),%R9;
0x1b6eb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;MOV	0x18(%RBP),%RBX;
0x1b6ef;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;TEST	%ECX,%ECX;
0x1b6f1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOV	(%RBP),%RDI;
0x1b6f5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOV	0x8(%RBP),%RBP;
0x1b6f9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;JLE	1b950 <copy_y_face_._omp_fn.1+0x2c0>;
0x1b6ff;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOVSXD	%R8D,%R10;
0x1b702;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	(%RBX),%R12;
0x1b705;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;IMUL	%R10,%R12;
0x1b709;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	-0x1(%RCX),%ECX;
0x1b70c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x30(%RBP),%RBP;
0x1b710;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%R12,%R9;
0x1b713;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	(,%RDX,8),%R12;
0x1b71b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;IMUL	%R10,%RDX;
0x1b71f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%R11,%RDX;
0x1b722;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	(%RCX,%RCX,4),%R11;
0x1b726;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%RSI,%RDX;
0x1b729;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x1(%RAX),%ESI;
0x1b72c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x1(%RCX),%RAX;
0x1b730;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%R11,%RDX;
0x1b733;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;IMUL	$-0x28,%RAX,%R10;
0x1b737;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x58(%RDI,%RDX,8),%RDI;
0x1b73c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;NOPL	(%RAX);
0x1b740;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOV	%R10,%RCX;(130) 
0x1b743;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;MOV	%R10,%R11;(130) 
0x1b746;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;NEG	%RCX;(130) 
0x1b749;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	%RDI,%R11;(130) 
0x1b74c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;SUB	$0x28,%RCX;(130) 
0x1b750;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	(%RBP,%R9,8),%RDX;(130) 
0x1b755;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;SHR	$0x3,%RCX;(130) 
0x1b759;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;ADD	$0x1,%RCX;(130) 
0x1b75d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;AND	$0x3,%ECX;(130) 
0x1b760;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;JE	1b838 <copy_y_face_._omp_fn.1+0x1a8>;(130) 
0x1b766;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;CMP	$0x1,%RCX;(130) 
0x1b76a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;JE	1b7f2 <copy_y_face_._omp_fn.1+0x162>;(130) 
0x1b770;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;CMP	$0x2,%RCX;(130) 
0x1b774;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;JE	1b7b4 <copy_y_face_._omp_fn.1+0x124>;(130) 
0x1b776;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	(%R11),%XMM0;(130) 
0x1b77b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%RDX),%RDX;(130) 
0x1b77f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM0,-0x28(%RDX);(130) 
0x1b784;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%R11),%R11;(130) 
0x1b788;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x20(%R11),%XMM1;(130) 
0x1b78e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM1,-0x20(%RDX);(130) 
0x1b793;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x18(%R11),%XMM2;(130) 
0x1b799;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM2,-0x18(%RDX);(130) 
0x1b79e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x10(%R11),%XMM3;(130) 
0x1b7a4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM3,-0x10(%RDX);(130) 
0x1b7a9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x8(%R11),%XMM4;(130) 
0x1b7af;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM4,-0x8(%RDX);(130) 
0x1b7b4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	(%R11),%XMM5;(130) 
0x1b7b9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%RDX),%RDX;(130) 
0x1b7bd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM5,-0x28(%RDX);(130) 
0x1b7c2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%R11),%R11;(130) 
0x1b7c6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x20(%R11),%XMM6;(130) 
0x1b7cc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM6,-0x20(%RDX);(130) 
0x1b7d1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x18(%R11),%XMM7;(130) 
0x1b7d7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM7,-0x18(%RDX);(130) 
0x1b7dc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x10(%R11),%XMM8;(130) 
0x1b7e2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM8,-0x10(%RDX);(130) 
0x1b7e7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x8(%R11),%XMM9;(130) 
0x1b7ed;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM9,-0x8(%RDX);(130) 
0x1b7f2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	(%R11),%XMM10;(130) 
0x1b7f7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%R11),%R11;(130) 
0x1b7fb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM10,(%RDX);(130) 
0x1b7ff;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0x28(%RDX),%RDX;(130) 
0x1b803;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x20(%R11),%XMM11;(130) 
0x1b809;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM11,-0x20(%RDX);(130) 
0x1b80e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x18(%R11),%XMM12;(130) 
0x1b814;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM12,-0x18(%RDX);(130) 
0x1b819;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x10(%R11),%XMM13;(130) 
0x1b81f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM13,-0x10(%RDX);(130) 
0x1b824;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x8(%R11),%XMM14;(130) 
0x1b82a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%RDI,%R11;(130) 
0x1b82d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM14,-0x8(%RDX);(130) 
0x1b832;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JE	1b93b <copy_y_face_._omp_fn.1+0x2ab>;(130) 
0x1b838;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	(%R11),%XMM15;  (129) 
0x1b83d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0xa0(%R11),%R11;  (129) 
0x1b844;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM15,(%RDX);  (129) 
0x1b848;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;LEA	0xa0(%RDX),%RDX;  (129) 
0x1b84f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x98(%R11),%XMM0;  (129) 
0x1b858;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM0,-0x98(%RDX);  (129) 
0x1b860;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x90(%R11),%XMM1;  (129) 
0x1b869;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM1,-0x90(%RDX);  (129) 
0x1b871;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x88(%R11),%XMM2;  (129) 
0x1b87a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM2,-0x88(%RDX);  (129) 
0x1b882;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x80(%R11),%XMM3;  (129) 
0x1b888;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM3,-0x80(%RDX);  (129) 
0x1b88d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x78(%R11),%XMM4;  (129) 
0x1b893;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM4,-0x78(%RDX);  (129) 
0x1b898;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x70(%R11),%XMM5;  (129) 
0x1b89e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM5,-0x70(%RDX);  (129) 
0x1b8a3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x68(%R11),%XMM6;  (129) 
0x1b8a9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM6,-0x68(%RDX);  (129) 
0x1b8ae;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x60(%R11),%XMM7;  (129) 
0x1b8b4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM7,-0x60(%RDX);  (129) 
0x1b8b9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x58(%R11),%XMM8;  (129) 
0x1b8bf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM8,-0x58(%RDX);  (129) 
0x1b8c4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x50(%R11),%XMM9;  (129) 
0x1b8ca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM9,-0x50(%RDX);  (129) 
0x1b8cf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x48(%R11),%XMM10;  (129) 
0x1b8d5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM10,-0x48(%RDX);  (129) 
0x1b8da;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x40(%R11),%XMM11;  (129) 
0x1b8e0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM11,-0x40(%RDX);  (129) 
0x1b8e5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x38(%R11),%XMM12;  (129) 
0x1b8eb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM12,-0x38(%RDX);  (129) 
0x1b8f0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x30(%R11),%XMM13;  (129) 
0x1b8f6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM13,-0x30(%RDX);  (129) 
0x1b8fb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x28(%R11),%XMM14;  (129) 
0x1b901;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM14,-0x28(%RDX);  (129) 
0x1b906;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x20(%R11),%XMM15;  (129) 
0x1b90c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM15,-0x20(%RDX);  (129) 
0x1b911;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x18(%R11),%XMM0;  (129) 
0x1b917;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM0,-0x18(%RDX);  (129) 
0x1b91c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x10(%R11),%XMM1;  (129) 
0x1b922;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM1,-0x10(%RDX);  (129) 
0x1b927;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	-0x8(%R11),%XMM2;  (129) 
0x1b92d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%RDI,%R11;  (129) 
0x1b930;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:228;VMOVSD	%XMM2,-0x8(%RDX);  (129) 
0x1b935;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JNE	1b838 <copy_y_face_._omp_fn.1+0x1a8>;  (129) 
0x1b93b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	0x1(%R8),%R8D;(130) 
0x1b93f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%R9,%RBX,1),%R9;(130) 
0x1b943;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;CMP	%ESI,%R8D;(130) 
0x1b946;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;LEA	(%RDI,%R12,1),%RDI;(130) 
0x1b94a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JNE	1b740 <copy_y_face_._omp_fn.1+0xb0>;(130) 
0x1b950;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;POP	%RBX;
0x1b951;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;POP	%RBP;
0x1b952;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;POP	%R12;
0x1b954;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;RET;
0x1b955;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;ADD	$0x1,%EAX;
0x1b958;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;XOR	%EDX,%EDX;
0x1b95a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:226;JMP	1b6b9 <copy_y_face_._omp_fn.1+0x29>;
0x1b95f;:0;NOP;
