address;source_location;insn;indent
0x1bc40;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;PUSH	%R14;
0x1bc42;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;PUSH	%R13;
0x1bc44;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;PUSH	%R12;
0x1bc46;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;PUSH	%RBP;
0x1bc47;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	(%RDI),%RBP;
0x1bc4a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;PUSH	%RBX;
0x1bc4b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CALL	2080 <@plt_start@+0x60>;
0x1bc50;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	(%RAX),%EBX;
0x1bc52;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CALL	2190 <@plt_start@+0x170>;
0x1bc57;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	(%RAX),%R8D;
0x1bc5a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	0x44(%RBP),%EAX;
0x1bc5d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	%EAX,%EDX;
0x1bc5f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;SAR	$0x1f,%EDX;
0x1bc62;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;IDIV	%EBX;
0x1bc64;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	%EDX,%R8D;
0x1bc67;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JL	1bf04 <copy_x_face_._omp_fn.1+0x2c4>;
0x1bc6d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;IMUL	%EAX,%R8D;
0x1bc71;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;ADD	%EDX,%R8D;
0x1bc74;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;ADD	%R8D,%EAX;
0x1bc77;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	%EAX,%R8D;
0x1bc7a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JGE	1befb <copy_x_face_._omp_fn.1+0x2bb>;
0x1bc80;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	0x10(%RBP),%RCX;
0x1bc84;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	0x1(%R8),%R8D;
0x1bc88;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOVSXD	0x40(%RBP),%RDI;
0x1bc8c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	0x38(%RBP),%R9;
0x1bc90;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	(%RCX),%EDX;
0x1bc92;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	0x30(%RBP),%RBX;
0x1bc96;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOV	%RDI,%R11;
0x1bc99;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;SAL	$0x2,%R11;
0x1bc9d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	0x28(%RBP),%R13;
0x1bca1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;ADD	%RDI,%R11;
0x1bca4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	0x20(%RBP),%R10;
0x1bca8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	$0x2,%EDX;
0x1bcab;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;MOV	0x18(%RBP),%RSI;
0x1bcaf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOV	(%RBP),%R14;
0x1bcb3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOV	0x8(%RBP),%RDI;
0x1bcb7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;JLE	1befb <copy_x_face_._omp_fn.1+0x2bb>;
0x1bcbd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOVSXD	%R8D,%RBP;
0x1bcc0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RBX),%RCX;
0x1bcc3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;IMUL	%RBP,%RCX;
0x1bcc7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(,%RSI,8),%R12;
0x1bccf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;IMUL	%RBP,%RSI;
0x1bcd3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;ADD	%RCX,%R9;
0x1bcd6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	-0x3(%RDX),%ECX;
0x1bcd9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RCX,4),%RDX;
0x1bcdd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RDX,%R10,1),%R10;
0x1bce1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;ADD	%RSI,%R10;
0x1bce4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(,%R13,8),%RSI;
0x1bcec;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x58(%RDI,%R10,8),%RDI;
0x1bcf1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x1(%RAX),%R10D;
0x1bcf5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%R11,%R13,1),%RAX;
0x1bcf9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x1(%RCX),%R11;
0x1bcfd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x8(%R14,%RAX,8),%R13;
0x1bd02;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;IMUL	$-0x28,%R11,%R14;
0x1bd06;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;NOPW	%CS:(%RAX,%RAX,1);
0x1bd10;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOV	%R14,%RBP;(134) 
0x1bd13;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOV	%R14,%RDX;(134) 
0x1bd16;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;NEG	%RBP;(134) 
0x1bd19;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;ADD	%RDI,%RDX;(134) 
0x1bd1c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;SUB	$0x28,%RBP;(134) 
0x1bd20;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%R13,%R9,8),%RCX;(134) 
0x1bd25;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;SHR	$0x3,%RBP;(134) 
0x1bd29;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;ADD	$0x1,%RBP;(134) 
0x1bd2d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;AND	$0x3,%EBP;(134) 
0x1bd30;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;JE	1bdf6 <copy_x_face_._omp_fn.1+0x1b6>;(134) 
0x1bd36;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;CMP	$0x1,%RBP;(134) 
0x1bd3a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;JE	1bdb4 <copy_x_face_._omp_fn.1+0x174>;(134) 
0x1bd3c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;CMP	$0x2,%RBP;(134) 
0x1bd40;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;JE	1bd7b <copy_x_face_._omp_fn.1+0x13b>;(134) 
0x1bd42;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RCX),%XMM0;(134) 
0x1bd46;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x28(%RDX),%RDX;(134) 
0x1bd4a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM0,-0x28(%RDX);(134) 
0x1bd4f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RCX),%XMM1;(134) 
0x1bd54;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM1,-0x20(%RDX);(134) 
0x1bd59;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RCX),%XMM2;(134) 
0x1bd5e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM2,-0x18(%RDX);(134) 
0x1bd63;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RCX),%XMM3;(134) 
0x1bd68;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM3,-0x10(%RDX);(134) 
0x1bd6d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RCX),%XMM4;(134) 
0x1bd72;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RSI,1),%RCX;(134) 
0x1bd76;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM4,-0x8(%RDX);(134) 
0x1bd7b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RCX),%XMM5;(134) 
0x1bd7f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x28(%RDX),%RDX;(134) 
0x1bd83;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM5,-0x28(%RDX);(134) 
0x1bd88;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RCX),%XMM6;(134) 
0x1bd8d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM6,-0x20(%RDX);(134) 
0x1bd92;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RCX),%XMM7;(134) 
0x1bd97;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM7,-0x18(%RDX);(134) 
0x1bd9c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RCX),%XMM8;(134) 
0x1bda1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM8,-0x10(%RDX);(134) 
0x1bda6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RCX),%XMM9;(134) 
0x1bdab;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RSI,1),%RCX;(134) 
0x1bdaf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM9,-0x8(%RDX);(134) 
0x1bdb4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RCX),%XMM10;(134) 
0x1bdb8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x28(%RDX),%RDX;(134) 
0x1bdbc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM10,-0x28(%RDX);(134) 
0x1bdc1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RCX),%XMM11;(134) 
0x1bdc6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM11,-0x20(%RDX);(134) 
0x1bdcb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RCX),%XMM12;(134) 
0x1bdd0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM12,-0x18(%RDX);(134) 
0x1bdd5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RCX),%XMM13;(134) 
0x1bdda;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM13,-0x10(%RDX);(134) 
0x1bddf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RCX),%XMM14;(134) 
0x1bde4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RSI,1),%RCX;(134) 
0x1bde8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM14,-0x8(%RDX);(134) 
0x1bded;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	%RDI,%RDX;(134) 
0x1bdf0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JE	1bee6 <copy_x_face_._omp_fn.1+0x2a6>;(134) 
0x1bdf6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RCX),%XMM15;  (133) 
0x1bdfa;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RSI,1),%RAX;  (133) 
0x1bdfe;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM15,(%RDX);  (133) 
0x1be02;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RAX,%RSI,1),%R11;  (133) 
0x1be06;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RCX),%XMM0;  (133) 
0x1be0b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%R11,%RSI,1),%RBP;  (133) 
0x1be0f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM0,0x8(%RDX);  (133) 
0x1be14;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0xa0(%RDX),%RDX;  (133) 
0x1be1b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RCX),%XMM1;  (133) 
0x1be20;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM1,-0x90(%RDX);  (133) 
0x1be28;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RCX),%XMM2;  (133) 
0x1be2d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM2,-0x88(%RDX);  (133) 
0x1be35;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RCX),%XMM3;  (133) 
0x1be3a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RBP,%RSI,1),%RCX;  (133) 
0x1be3f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM3,-0x80(%RDX);  (133) 
0x1be44;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RAX),%XMM4;  (133) 
0x1be48;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM4,-0x78(%RDX);  (133) 
0x1be4d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RAX),%XMM5;  (133) 
0x1be52;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM5,-0x70(%RDX);  (133) 
0x1be57;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RAX),%XMM6;  (133) 
0x1be5c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM6,-0x68(%RDX);  (133) 
0x1be61;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RAX),%XMM7;  (133) 
0x1be66;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM7,-0x60(%RDX);  (133) 
0x1be6b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RAX),%XMM8;  (133) 
0x1be70;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM8,-0x58(%RDX);  (133) 
0x1be75;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%R11),%XMM9;  (133) 
0x1be7a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM9,-0x50(%RDX);  (133) 
0x1be7f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%R11),%XMM10;  (133) 
0x1be85;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM10,-0x48(%RDX);  (133) 
0x1be8a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%R11),%XMM11;  (133) 
0x1be90;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM11,-0x40(%RDX);  (133) 
0x1be95;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%R11),%XMM12;  (133) 
0x1be9b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM12,-0x38(%RDX);  (133) 
0x1bea0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%R11),%XMM13;  (133) 
0x1bea6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM13,-0x30(%RDX);  (133) 
0x1beab;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RBP),%XMM14;  (133) 
0x1beb0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM14,-0x28(%RDX);  (133) 
0x1beb5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RBP),%XMM15;  (133) 
0x1beba;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM15,-0x20(%RDX);  (133) 
0x1bebf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RBP),%XMM0;  (133) 
0x1bec4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM0,-0x18(%RDX);  (133) 
0x1bec9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RBP),%XMM1;  (133) 
0x1bece;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM1,-0x10(%RDX);  (133) 
0x1bed3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RBP),%XMM2;  (133) 
0x1bed8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM2,-0x8(%RDX);  (133) 
0x1bedd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	%RDI,%RDX;  (133) 
0x1bee0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JNE	1bdf6 <copy_x_face_._omp_fn.1+0x1b6>;  (133) 
0x1bee6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	0x1(%R8),%R8D;(134) 
0x1beea;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	(%R9,%RBX,1),%R9;(134) 
0x1beee;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	%R10D,%R8D;(134) 
0x1bef1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	(%RDI,%R12,1),%RDI;(134) 
0x1bef5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JNE	1bd10 <copy_x_face_._omp_fn.1+0xd0>;(134) 
0x1befb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;POP	%RBX;
0x1befc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;POP	%RBP;
0x1befd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;POP	%R12;
0x1beff;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;POP	%R13;
0x1bf01;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;POP	%R14;
0x1bf03;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;RET;
0x1bf04;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;ADD	$0x1,%EAX;
0x1bf07;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;XOR	%EDX,%EDX;
0x1bf09;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JMP	1bc6d <copy_x_face_._omp_fn.1+0x2d>;
0x1bf0e;:0;XCHG	%AX,%AX;
