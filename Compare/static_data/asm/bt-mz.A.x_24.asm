address;source_location;insn;indent
0x4b70;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOV	%R13,%RSI;
0x4b73;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOVSXD	%EDI,%RDX;
0x4b76;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;IMUL	%R15,%RSI;
0x4b7a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;IMUL	0x48(%RSP),%RDX;
0x4b80;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%RSI,%R11,1),%RAX;
0x4b84;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	%RAX,%RDX;
0x4b87;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	$0x2,%R14D;
0x4b8b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JBE	688c <initialize_._omp_fn.0+0x215c>;
0x4b91;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	-0xa0(%RBX),%RSI;
0x4b98;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	0x8(%RCX,%RDX,8),%RAX;
0x4b9d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;SHR	$0x5,%RSI;
0x4ba1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%RBX,%RAX,1),%R10;
0x4ba5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0x1,%RSI;
0x4ba9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;AND	$0x3,%ESI;
0x4bac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	4c72 <initialize_._omp_fn.0+0x542>;
0x4bb2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	$0x1,%RSI;
0x4bb6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	4c30 <initialize_._omp_fn.0+0x500>;
0x4bb8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	$0x2,%RSI;
0x4bbc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	4bf7 <initialize_._omp_fn.0+0x4c7>;
0x4bbe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,(%RAX);
0x4bc2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x10(%RAX);
0x4bc9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0xa0,%RAX;
0x4bcf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x80(%RAX);
0x4bd4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x70(%RAX);
0x4bd9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x60(%RAX);
0x4bde;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x50(%RAX);
0x4be3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x40(%RAX);
0x4be8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x30(%RAX);
0x4bed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x20(%RAX);
0x4bf2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x10(%RAX);
0x4bf7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,(%RAX);
0x4bfb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x10(%RAX);
0x4c02;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0xa0,%RAX;
0x4c08;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x80(%RAX);
0x4c0d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x70(%RAX);
0x4c12;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x60(%RAX);
0x4c17;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x50(%RAX);
0x4c1c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x40(%RAX);
0x4c21;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x30(%RAX);
0x4c26;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x20(%RAX);
0x4c2b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x10(%RAX);
0x4c30;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,(%RAX);
0x4c34;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x10(%RAX);
0x4c3b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0xa0,%RAX;
0x4c41;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x80(%RAX);
0x4c46;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x70(%RAX);
0x4c4b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x60(%RAX);
0x4c50;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x50(%RAX);
0x4c55;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x40(%RAX);
0x4c5a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x30(%RAX);
0x4c5f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x20(%RAX);
0x4c64;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x10(%RAX);
0x4c69;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	%RAX,%R10;
0x4c6c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	4da7 <initialize_._omp_fn.0+0x677>;
0x4c72;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,(%RAX);  (25) 
0x4c76;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x10(%RAX);  (25) 
0x4c7d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0xb0(%RAX);  (25) 
0x4c87;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x150(%RAX);  (25) 
0x4c91;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x20(%RAX);  (25) 
0x4c96;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0x280,%RAX;  (25) 
0x4c9c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,-0x90(%RAX);  (25) 
0x4ca6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x250(%RAX);  (25) 
0x4cae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x240(%RAX);  (25) 
0x4cb6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x230(%RAX);  (25) 
0x4cbe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x220(%RAX);  (25) 
0x4cc6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x210(%RAX);  (25) 
0x4cce;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x200(%RAX);  (25) 
0x4cd6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x1f0(%RAX);  (25) 
0x4cde;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x1e0(%RAX);  (25) 
0x4ce6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x1c0(%RAX);  (25) 
0x4cee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x1b0(%RAX);  (25) 
0x4cf6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x1a0(%RAX);  (25) 
0x4cfe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x190(%RAX);  (25) 
0x4d06;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x180(%RAX);  (25) 
0x4d0e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x170(%RAX);  (25) 
0x4d16;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x160(%RAX);  (25) 
0x4d1e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x150(%RAX);  (25) 
0x4d26;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x140(%RAX);  (25) 
0x4d2e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x120(%RAX);  (25) 
0x4d36;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x110(%RAX);  (25) 
0x4d3e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x100(%RAX);  (25) 
0x4d46;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0xf0(%RAX);  (25) 
0x4d4e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0xe0(%RAX);  (25) 
0x4d56;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0xd0(%RAX);  (25) 
0x4d5e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0xc0(%RAX);  (25) 
0x4d66;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0xb0(%RAX);  (25) 
0x4d6e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0xa0(%RAX);  (25) 
0x4d76;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x80(%RAX);  (25) 
0x4d7b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x70(%RAX);  (25) 
0x4d80;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x60(%RAX);  (25) 
0x4d85;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x50(%RAX);  (25) 
0x4d8a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x40(%RAX);  (25) 
0x4d8f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x30(%RAX);  (25) 
0x4d94;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x20(%RAX);  (25) 
0x4d99;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x10(%RAX);  (25) 
0x4d9e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	%RAX,%R10;  (25) 
0x4da1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JNE	4c72 <initialize_._omp_fn.0+0x542>;  (25) 
0x4da7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%R12D,%EAX;
0x4daa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;CMP	%R12D,%R9D;
0x4dad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JE	4e15 <initialize_._omp_fn.0+0x6e5>;
0x4daf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	0x98(%RSP),%XMM3;
0x4db8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOVSXD	%EAX,%R10;
0x4dbb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%R10,%R10,4),%R10;
0x4dbf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%RDX,%R10,1),%RSI;
0x4dc3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x8(%RCX,%RSI,8);
0x4dc9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x18(%RCX,%RSI,8);
0x4dd1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	%XMM3,0x28(%RCX,%RSI,8);
0x4dd7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;LEA	0x1(%RAX),%ESI;
0x4dda;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;CMP	%ESI,%R9D;
0x4ddd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JLE	4e15 <initialize_._omp_fn.0+0x6e5>;
0x4ddf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	0x5(%RDX,%R10,1),%RSI;
0x4de4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;ADD	$0x2,%EAX;
0x4de7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x8(%RCX,%RSI,8);
0x4ded;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x18(%RCX,%RSI,8);
0x4df3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	%XMM3,0x28(%RCX,%RSI,8);
0x4df9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;CMP	%EAX,%R9D;
0x4dfc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JLE	4e15 <initialize_._omp_fn.0+0x6e5>;
0x4dfe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	0xa(%RDX,%R10,1),%RDX;
0x4e03;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x8(%RCX,%RDX,8);
0x4e09;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x18(%RCX,%RDX,8);
0x4e0f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	%XMM3,0x28(%RCX,%RDX,8);
0x4e15;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	%R8D,0x28(%RSP);
0x4e1a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	63da <initialize_._omp_fn.0+0x1caa>;
0x4e20;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0x1,%EDI;
0x4e23;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	%EDI,0x3c(%RSP);
0x4e27;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JLE	63c3 <initialize_._omp_fn.0+0x1c93>;
0x4e2d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0x1,%R8D;
0x4e31;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JMP	4b70 <initialize_._omp_fn.0+0x440>;
0x63c3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;ADDL	$0x1,0x90(%RSP);
0x63cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;XOR	%EDI,%EDI;
0x63cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOVSXD	0x90(%RSP),%R13;
0x63d5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;JMP	4e2d <initialize_._omp_fn.0+0x6fd>;
0x688c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;XOR	%EAX,%EAX;
0x688e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JMP	4daf <initialize_._omp_fn.0+0x67f>;
