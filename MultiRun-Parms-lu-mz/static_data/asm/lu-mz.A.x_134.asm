address;source_location;insn;indent
0x1bd20;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOV	%R14,%RBP;
0x1bd23;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;MOV	%R14,%RDX;
0x1bd26;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;NEG	%RBP;
0x1bd29;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;ADD	%RDI,%RDX;
0x1bd2c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;SUB	$0x28,%RBP;
0x1bd30;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%R13,%R9,8),%RCX;
0x1bd35;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;SHR	$0x3,%RBP;
0x1bd39;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;ADD	$0x1,%RBP;
0x1bd3d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;AND	$0x3,%EBP;
0x1bd40;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;JE	1be06 <copy_x_face_._omp_fn.1+0x1b6>;
0x1bd46;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;CMP	$0x1,%RBP;
0x1bd4a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;JE	1bdc4 <copy_x_face_._omp_fn.1+0x174>;
0x1bd4c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;CMP	$0x2,%RBP;
0x1bd50;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;JE	1bd8b <copy_x_face_._omp_fn.1+0x13b>;
0x1bd52;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RCX),%XMM0;
0x1bd56;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x28(%RDX),%RDX;
0x1bd5a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM0,-0x28(%RDX);
0x1bd5f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RCX),%XMM1;
0x1bd64;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM1,-0x20(%RDX);
0x1bd69;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RCX),%XMM2;
0x1bd6e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM2,-0x18(%RDX);
0x1bd73;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RCX),%XMM3;
0x1bd78;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM3,-0x10(%RDX);
0x1bd7d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RCX),%XMM4;
0x1bd82;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RSI,1),%RCX;
0x1bd86;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM4,-0x8(%RDX);
0x1bd8b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RCX),%XMM5;
0x1bd8f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x28(%RDX),%RDX;
0x1bd93;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM5,-0x28(%RDX);
0x1bd98;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RCX),%XMM6;
0x1bd9d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM6,-0x20(%RDX);
0x1bda2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RCX),%XMM7;
0x1bda7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM7,-0x18(%RDX);
0x1bdac;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RCX),%XMM8;
0x1bdb1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM8,-0x10(%RDX);
0x1bdb6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RCX),%XMM9;
0x1bdbb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RSI,1),%RCX;
0x1bdbf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM9,-0x8(%RDX);
0x1bdc4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RCX),%XMM10;
0x1bdc8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0x28(%RDX),%RDX;
0x1bdcc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM10,-0x28(%RDX);
0x1bdd1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RCX),%XMM11;
0x1bdd6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM11,-0x20(%RDX);
0x1bddb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RCX),%XMM12;
0x1bde0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM12,-0x18(%RDX);
0x1bde5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RCX),%XMM13;
0x1bdea;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM13,-0x10(%RDX);
0x1bdef;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RCX),%XMM14;
0x1bdf4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RSI,1),%RCX;
0x1bdf8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM14,-0x8(%RDX);
0x1bdfd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	%RDI,%RDX;
0x1be00;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JE	1bef6 <copy_x_face_._omp_fn.1+0x2a6>;
0x1be06;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RCX),%XMM15;  (133) 
0x1be0a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RCX,%RSI,1),%RAX;  (133) 
0x1be0e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM15,(%RDX);  (133) 
0x1be12;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RAX,%RSI,1),%R11;  (133) 
0x1be16;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RCX),%XMM0;  (133) 
0x1be1b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%R11,%RSI,1),%RBP;  (133) 
0x1be1f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM0,0x8(%RDX);  (133) 
0x1be24;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	0xa0(%RDX),%RDX;  (133) 
0x1be2b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RCX),%XMM1;  (133) 
0x1be30;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM1,-0x90(%RDX);  (133) 
0x1be38;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RCX),%XMM2;  (133) 
0x1be3d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM2,-0x88(%RDX);  (133) 
0x1be45;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RCX),%XMM3;  (133) 
0x1be4a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;LEA	(%RBP,%RSI,1),%RCX;  (133) 
0x1be4f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM3,-0x80(%RDX);  (133) 
0x1be54;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RAX),%XMM4;  (133) 
0x1be58;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM4,-0x78(%RDX);  (133) 
0x1be5d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RAX),%XMM5;  (133) 
0x1be62;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM5,-0x70(%RDX);  (133) 
0x1be67;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RAX),%XMM6;  (133) 
0x1be6c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM6,-0x68(%RDX);  (133) 
0x1be71;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RAX),%XMM7;  (133) 
0x1be76;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM7,-0x60(%RDX);  (133) 
0x1be7b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RAX),%XMM8;  (133) 
0x1be80;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM8,-0x58(%RDX);  (133) 
0x1be85;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%R11),%XMM9;  (133) 
0x1be8a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM9,-0x50(%RDX);  (133) 
0x1be8f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%R11),%XMM10;  (133) 
0x1be95;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM10,-0x48(%RDX);  (133) 
0x1be9a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%R11),%XMM11;  (133) 
0x1bea0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM11,-0x40(%RDX);  (133) 
0x1bea5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%R11),%XMM12;  (133) 
0x1beab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM12,-0x38(%RDX);  (133) 
0x1beb0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%R11),%XMM13;  (133) 
0x1beb6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM13,-0x30(%RDX);  (133) 
0x1bebb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	(%RBP),%XMM14;  (133) 
0x1bec0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM14,-0x28(%RDX);  (133) 
0x1bec5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x8(%RBP),%XMM15;  (133) 
0x1beca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM15,-0x20(%RDX);  (133) 
0x1becf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x10(%RBP),%XMM0;  (133) 
0x1bed4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM0,-0x18(%RDX);  (133) 
0x1bed9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x18(%RBP),%XMM1;  (133) 
0x1bede;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM1,-0x10(%RDX);  (133) 
0x1bee3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	0x20(%RBP),%XMM2;  (133) 
0x1bee8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:265;VMOVSD	%XMM2,-0x8(%RDX);  (133) 
0x1beed;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	%RDI,%RDX;  (133) 
0x1bef0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JNE	1be06 <copy_x_face_._omp_fn.1+0x1b6>;  (133) 
0x1bef6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	0x1(%R8),%R8D;
0x1befa;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	(%R9,%RBX,1),%R9;
0x1befe;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;CMP	%R10D,%R8D;
0x1bf01;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;LEA	(%RDI,%R12,1),%RDI;
0x1bf05;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:263;JNE	1bd20 <copy_x_face_._omp_fn.1+0xd0>;
