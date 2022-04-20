address;source_location;insn;indent
0x4730;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;PUSH	%RBP;
0x4731;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;MOV	%RSP,%RBP;
0x4734;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;PUSH	%R15;
0x4736;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;MOV	%RDI,%R15;
0x4739;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;PUSH	%R14;
0x473b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;PUSH	%R13;
0x473d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;PUSH	%R12;
0x473f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;PUSH	%RBX;
0x4740;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;AND	$-0x20,%RSP;
0x4744;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;SUB	$0x200,%RSP;
0x474b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	0x10(%RDI),%RSI;
0x474f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	0x18(%RDI),%RBX;
0x4753;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;MOV	0x28(%RDI),%RDX;
0x4757;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;MOV	0x20(%RDI),%RCX;
0x475b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;MOV	0x30(%RDI),%RAX;
0x475f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	(%RSI),%EDI;
0x4761;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	(%RBX),%R12D;
0x4764;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;MOV	%RDX,0x40(%RSP);
0x4769;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;MOV	%RCX,0x48(%RSP);
0x476e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;MOV	%RAX,0x30(%RSP);
0x4773;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	%EDI,0x3c(%RSP);
0x4777;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;CALL	2300 <@plt_start@+0x2e0>;
0x477c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	%EAX,0x20(%RSP);
0x4780;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;CALL	22a0 <@plt_start@+0x280>;
0x4785;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	%EAX,0x2c(%RSP);
0x4789;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;TEST	%R12D,%R12D;
0x478c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;JLE	5198 <initialize_._omp_fn.0+0xa68>;
0x4792;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	0x3c(%RSP),%EAX;
0x4796;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;TEST	%EAX,%EAX;
0x4798;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;JLE	47c8 <initialize_._omp_fn.0+0x98>;
0x479a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;IMUL	%R12D,%EAX;
0x479e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;XOR	%EDX,%EDX;
0x47a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;DIVL	0x20(%RSP);
0x47a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	%EAX,%R8D;
0x47a7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;CMP	%EDX,0x2c(%RSP);
0x47ab;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;JB	68fd <initialize_._omp_fn.0+0x21cd>;
0x47b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	0x2c(%RSP),%EAX;
0x47b5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;IMUL	%R8D,%EAX;
0x47b9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;ADD	%EDX,%EAX;
0x47bb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;LEA	(%R8,%RAX,1),%R9D;
0x47bf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;CMP	%R9D,%EAX;
0x47c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;JB	4ae5 <initialize_._omp_fn.0+0x3b5>;
0x47c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;VMOVSD	0x23be8(%RIP),%XMM0;
0x47d0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOVQ	$0,0xa8(%RSP);
0x47dc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;VMOVSD	%XMM0,0x98(%RSP);
0x47e5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOV	0x3c(%RSP),%EAX;
0x47e9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;TEST	%EAX,%EAX;
0x47eb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;JLE	63a5 <initialize_._omp_fn.0+0x1c75>;
0x47f1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;IMUL	%R12D,%EAX;
0x47f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;XOR	%EDX,%EDX;
0x47f7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;DIVL	0x20(%RSP);
0x47fb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOV	%EAX,%ECX;
0x47fd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;CMP	%EDX,0x2c(%RSP);
0x4801;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;JB	6928 <initialize_._omp_fn.0+0x21f8>;
0x4807;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOV	0x2c(%RSP),%EAX;
0x480b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;IMUL	%ECX,%EAX;
0x480e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;ADD	%EDX,%EAX;
0x4810;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;LEA	(%RCX,%RAX,1),%EDI;
0x4813;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;CMP	%EDI,%EAX;
0x4815;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;JAE	63a5 <initialize_._omp_fn.0+0x1c75>;
0x481b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;VXORPD	%XMM5,%XMM5,%XMM5;
0x481f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;LEA	-0x1(%RCX),%R12D;
0x4823;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;XOR	%EDX,%EDX;
0x4825;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;XOR	%EBX,%EBX;
0x4827;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;DIVL	0x3c(%RSP);
0x482b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;AND	$0x1,%ECX;
0x482e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%R12D,0x70(%RSP);
0x4833;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;LEA	0xc0(%RSP),%R9;
0x483b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%R9,0x80(%RSP);
0x4843;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;LEA	0xb8(%RSP),%R14;
0x484b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;LEA	0xb0(%RSP),%R13;
0x4853;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;LEA	0xa8(%RSP),%R12;
0x485b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VCVTSI2SD	%EAX,%XMM5,%XMM11;
0x485f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%EAX,0x68(%RSP);
0x4863;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;CLTQ;
0x4865;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%EDX,%R8D;
0x4868;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%RAX,0x90(%RSP);
0x4870;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM11,0x88(%RSP);
0x4879;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JNE	49f7 <initialize_._omp_fn.0+0x2c7>;
0x487f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VXORPD	%XMM14,%XMM14,%XMM14;
0x4884;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;MOV	%EDX,0x78(%RSP);
0x4888;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R13,%RSI;
0x488b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R9,%RCX;
0x488e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VCVTSI2SD	%EDX,%XMM14,%XMM9;
0x4892;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R12,%RDI;
0x4895;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:104;VMULSD	0x2809b(%RIP),%XMM11,%XMM4;
0x489d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R14,%RDX;
0x48a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VMULSD	0x28098(%RIP),%XMM9,%XMM15;
0x48a8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:104;VMOVSD	%XMM4,0xb8(%RSP);
0x48b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VMOVSD	%XMM15,0xb0(%RSP);
0x48ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;CALL	7120 <exact_solution_>;
0x48bf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOVSXD	0x78(%RSP),%RSI;
0x48c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	0x90(%RSP),%R11;
0x48cc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;IMUL	0x40(%RSP),%R11;
0x48d2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	0x30(%RSP),%R11;
0x48d7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%RSI,%R8;
0x48da;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	(%R15),%R10;
0x48dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;IMUL	0x48(%RSP),%RSI;
0x48e3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	$0x1,%R8D;
0x48e7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVAPD	0xc0(%RSP),%XMM10;
0x48f0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVAPD	0xc0(%RSP),%YMM3;
0x48f9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	0xe0(%RSP),%XMM2;
0x4902;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	%RSI,%R11;
0x4905;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVUPS	%XMM10,0x8(%R10,%R11,8);
0x490c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VEXTRACTF128	$0x1,%YMM3,0x18(%R10,%R11,8);
0x4914;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM2,0x28(%R10,%R11,8);
0x491b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;CMP	0x3c(%RSP),%R8D;
0x4920;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JGE	693e <initialize_._omp_fn.0+0x220e>;
0x4926;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	$0x1,%EBX;
0x492b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VZEROUPPER;
0x492e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JMP	49f7 <initialize_._omp_fn.0+0x2c7>;
0x4933;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VXORPD	%XMM3,%XMM3,%XMM3;(21) 
0x4937;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VCVTSI2SD	%ESI,%XMM3,%XMM2;(21) 
0x493b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;MOV	%ESI,0x78(%RSP);(21) 
0x493f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;ADD	$0x1,%EBX;(21) 
0x4942;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VMULSD	0x27ff6(%RIP),%XMM2,%XMM8;(21) 
0x494a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R14,%RDX;(21) 
0x494d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R13,%RSI;(21) 
0x4950;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:104;VMOVSD	0x88(%RSP),%XMM15;(21) 
0x4959;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R12,%RDI;(21) 
0x495c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:104;VMULSD	0x27fd4(%RIP),%XMM15,%XMM10;(21) 
0x4964;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	0x80(%RSP),%RCX;(21) 
0x496c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VMOVSD	%XMM8,0xb0(%RSP);(21) 
0x4975;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:104;VMOVSD	%XMM10,0xb8(%RSP);(21) 
0x497e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;VZEROUPPER;(21) 
0x4981;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;CALL	7120 <exact_solution_>;(21) 
0x4986;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOVSXD	0x78(%RSP),%RAX;(21) 
0x498b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	0x90(%RSP),%R10;(21) 
0x4993;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;IMUL	0x40(%RSP),%R10;(21) 
0x4999;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	0x30(%RSP),%RCX;(21) 
0x499e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%RAX,%R8;(21) 
0x49a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	(%R15),%R9;(21) 
0x49a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;IMUL	0x48(%RSP),%RAX;(21) 
0x49aa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	$0x1,%R8D;(21) 
0x49ae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVAPD	0xc0(%RSP),%XMM6;(21) 
0x49b7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVAPD	0xc0(%RSP),%YMM12;(21) 
0x49c0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;LEA	(%R10,%RCX,1),%RDI;(21) 
0x49c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	0xe0(%RSP),%XMM7;(21) 
0x49cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	%RDI,%RAX;(21) 
0x49d0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVUPS	%XMM6,0x8(%R9,%RAX,8);(21) 
0x49d7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VEXTRACTF128	$0x1,%YMM12,0x18(%R9,%RAX,8);(21) 
0x49df;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM7,0x28(%R9,%RAX,8);(21) 
0x49e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;CMP	0x3c(%RSP),%R8D;(21) 
0x49eb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JGE	68c7 <initialize_._omp_fn.0+0x2197>;(21) 
0x49f1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	$0x1,%EBX;(21) 
0x49f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VZEROUPPER;(21) 
0x49f7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VXORPD	%XMM1,%XMM1,%XMM1;(21) 
0x49fb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VCVTSI2SD	%R8D,%XMM1,%XMM13;(21) 
0x4a00;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R14,%RDX;(21) 
0x4a03;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;MOV	%R8D,0x78(%RSP);(21) 
0x4a08;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VMULSD	0x27f30(%RIP),%XMM13,%XMM5;(21) 
0x4a10;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R13,%RSI;(21) 
0x4a13;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	%R12,%RDI;(21) 
0x4a16;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:104;VMOVSD	0x88(%RSP),%XMM12;(21) 
0x4a1f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:104;VMULSD	0x27f11(%RIP),%XMM12,%XMM7;(21) 
0x4a27;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;MOV	0x80(%RSP),%RCX;(21) 
0x4a2f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:105;VMOVSD	%XMM5,0xb0(%RSP);(21) 
0x4a38;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:104;VMOVSD	%XMM7,0xb8(%RSP);(21) 
0x4a41;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:106;CALL	7120 <exact_solution_>;(21) 
0x4a46;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOVSXD	0x78(%RSP),%R9;(21) 
0x4a4b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	0x90(%RSP),%R8;(21) 
0x4a53;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;IMUL	0x40(%RSP),%R8;(21) 
0x4a59;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	0x30(%RSP),%RAX;(21) 
0x4a5e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%R9,%RSI;(21) 
0x4a61;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	(%R15),%RDX;(21) 
0x4a64;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;IMUL	0x48(%RSP),%R9;(21) 
0x4a6a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVAPD	0xc0(%RSP),%XMM11;(21) 
0x4a73;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVAPD	0xc0(%RSP),%YMM0;(21) 
0x4a7c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;LEA	(%R8,%RAX,1),%RDI;(21) 
0x4a80;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	0xe0(%RSP),%XMM4;(21) 
0x4a89;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	%RDI,%R9;(21) 
0x4a8c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVUPS	%XMM11,0x8(%RDX,%R9,8);(21) 
0x4a93;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VEXTRACTF128	$0x1,%YMM0,0x18(%RDX,%R9,8);(21) 
0x4a9b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM4,0x28(%RDX,%R9,8);(21) 
0x4aa2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;CMP	%EBX,0x70(%RSP);(21) 
0x4aa6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JE	4e36 <initialize_._omp_fn.0+0x706>;(21) 
0x4aac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	$0x1,%ESI;(21) 
0x4aaf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;CMP	0x3c(%RSP),%ESI;(21) 
0x4ab3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JL	4933 <initialize_._omp_fn.0+0x203>;(21) 
0x4ab9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADDL	$0x1,0x68(%RSP);(21) 
0x4abe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VXORPD	%XMM14,%XMM14,%XMM14;(21) 
0x4ac3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;XOR	%ESI,%ESI;(21) 
0x4ac5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOVSXD	0x68(%RSP),%R11;(21) 
0x4aca;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VCVTSI2SD	%R11D,%XMM14,%XMM9;(21) 
0x4acf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%R11,0x90(%RSP);(21) 
0x4ad7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM9,0x88(%RSP);(21) 
0x4ae0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JMP	4933 <initialize_._omp_fn.0+0x203>;(21) 
0x4ae5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;XOR	%EDX,%EDX;
0x4ae7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	0x8(%R15),%RSI;
0x4aeb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;DIVL	0x3c(%RSP);
0x4aef;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOV	(%R15),%RCX;
0x4af2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	(%RSI),%R9D;
0x4af5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%EDX,0x80(%RSP);
0x4afc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%EDX,%EDI;
0x4afe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%EAX,0x88(%RSP);
0x4b05;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%EAX,0x90(%RSP);
0x4b0c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;TEST	%R9D,%R9D;
0x4b0f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JLE	6996 <initialize_._omp_fn.0+0x2266>;
0x4b15;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;LEA	-0x1(%R8),%R13D;
0x4b19;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%R9D,%EBX;
0x4b1c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%R15,0x78(%RSP);
0x4b21;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%R9D,%R12D;
0x4b24;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%R13D,0x28(%RSP);
0x4b29;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	0x40(%RSP),%R15;
0x4b2e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;SHR	$0x2,%EBX;
0x4b31;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;XOR	%R8D,%R8D;
0x4b34;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOVSXD	0x88(%RSP),%R13;
0x4b3c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%RBX,%RBX,4),%RBX;
0x4b40;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;AND	$-0x4,%R12D;
0x4b44;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOV	%RSI,0x70(%RSP);
0x4b49;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOV	0x30(%RSP),%R11;
0x4b4e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	-0x1(%R9),%R14D;
0x4b52;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;SAL	$0x5,%RBX;
0x4b56;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	0x2385a(%RIP),%XMM2;
0x4b5e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVAPD	0x238da(%RIP),%YMM4;
0x4b66;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	%XMM2,0x98(%RSP);
0x4b6f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;NOP;
0x4b70;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOV	%R13,%RSI;(24) 
0x4b73;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOVSXD	%EDI,%RDX;(24) 
0x4b76;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;IMUL	%R15,%RSI;(24) 
0x4b7a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;IMUL	0x48(%RSP),%RDX;(24) 
0x4b80;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%RSI,%R11,1),%RAX;(24) 
0x4b84;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	%RAX,%RDX;(24) 
0x4b87;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	$0x2,%R14D;(24) 
0x4b8b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JBE	688c <initialize_._omp_fn.0+0x215c>;(24) 
0x4b91;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	-0xa0(%RBX),%RSI;(24) 
0x4b98;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	0x8(%RCX,%RDX,8),%RAX;(24) 
0x4b9d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;SHR	$0x5,%RSI;(24) 
0x4ba1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%RBX,%RAX,1),%R10;(24) 
0x4ba5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0x1,%RSI;(24) 
0x4ba9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;AND	$0x3,%ESI;(24) 
0x4bac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	4c72 <initialize_._omp_fn.0+0x542>;(24) 
0x4bb2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	$0x1,%RSI;(24) 
0x4bb6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	4c30 <initialize_._omp_fn.0+0x500>;(24) 
0x4bb8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	$0x2,%RSI;(24) 
0x4bbc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	4bf7 <initialize_._omp_fn.0+0x4c7>;(24) 
0x4bbe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,(%RAX);(24) 
0x4bc2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x10(%RAX);(24) 
0x4bc9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0xa0,%RAX;(24) 
0x4bcf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x80(%RAX);(24) 
0x4bd4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x70(%RAX);(24) 
0x4bd9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x60(%RAX);(24) 
0x4bde;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x50(%RAX);(24) 
0x4be3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x40(%RAX);(24) 
0x4be8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x30(%RAX);(24) 
0x4bed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x20(%RAX);(24) 
0x4bf2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x10(%RAX);(24) 
0x4bf7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,(%RAX);(24) 
0x4bfb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x10(%RAX);(24) 
0x4c02;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0xa0,%RAX;(24) 
0x4c08;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x80(%RAX);(24) 
0x4c0d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x70(%RAX);(24) 
0x4c12;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x60(%RAX);(24) 
0x4c17;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x50(%RAX);(24) 
0x4c1c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x40(%RAX);(24) 
0x4c21;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x30(%RAX);(24) 
0x4c26;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x20(%RAX);(24) 
0x4c2b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x10(%RAX);(24) 
0x4c30;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,(%RAX);(24) 
0x4c34;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x10(%RAX);(24) 
0x4c3b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0xa0,%RAX;(24) 
0x4c41;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x80(%RAX);(24) 
0x4c46;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x70(%RAX);(24) 
0x4c4b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x60(%RAX);(24) 
0x4c50;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x50(%RAX);(24) 
0x4c55;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x40(%RAX);(24) 
0x4c5a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x30(%RAX);(24) 
0x4c5f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x20(%RAX);(24) 
0x4c64;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,-0x10(%RAX);(24) 
0x4c69;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	%RAX,%R10;(24) 
0x4c6c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	4da7 <initialize_._omp_fn.0+0x677>;(24) 
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
0x4da7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;MOV	%R12D,%EAX;(24) 
0x4daa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;CMP	%R12D,%R9D;(24) 
0x4dad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JE	4e15 <initialize_._omp_fn.0+0x6e5>;(24) 
0x4daf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	0x98(%RSP),%XMM3;(24) 
0x4db8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOVSXD	%EAX,%R10;(24) 
0x4dbb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%R10,%R10,4),%R10;(24) 
0x4dbf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	(%RDX,%R10,1),%RSI;(24) 
0x4dc3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x8(%RCX,%RSI,8);(24) 
0x4dc9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VEXTRACTF128	$0x1,%YMM4,0x18(%RCX,%RSI,8);(24) 
0x4dd1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	%XMM3,0x28(%RCX,%RSI,8);(24) 
0x4dd7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;LEA	0x1(%RAX),%ESI;(24) 
0x4dda;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;CMP	%ESI,%R9D;(24) 
0x4ddd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JLE	4e15 <initialize_._omp_fn.0+0x6e5>;(24) 
0x4ddf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	0x5(%RDX,%R10,1),%RSI;(24) 
0x4de4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;ADD	$0x2,%EAX;(24) 
0x4de7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x8(%RCX,%RSI,8);(24) 
0x4ded;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x18(%RCX,%RSI,8);(24) 
0x4df3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	%XMM3,0x28(%RCX,%RSI,8);(24) 
0x4df9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;CMP	%EAX,%R9D;(24) 
0x4dfc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JLE	4e15 <initialize_._omp_fn.0+0x6e5>;(24) 
0x4dfe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;LEA	0xa(%RDX,%R10,1),%RDX;(24) 
0x4e03;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x8(%RCX,%RDX,8);(24) 
0x4e09;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVUPS	%XMM4,0x18(%RCX,%RDX,8);(24) 
0x4e0f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;VMOVSD	%XMM3,0x28(%RCX,%RDX,8);(24) 
0x4e15;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	%R8D,0x28(%RSP);(24) 
0x4e1a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JE	63da <initialize_._omp_fn.0+0x1caa>;(24) 
0x4e20;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0x1,%EDI;(24) 
0x4e23;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;CMP	%EDI,0x3c(%RSP);(24) 
0x4e27;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JLE	63c3 <initialize_._omp_fn.0+0x1c93>;(24) 
0x4e2d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;ADD	$0x1,%R8D;(24) 
0x4e31;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;JMP	4b70 <initialize_._omp_fn.0+0x440>;(24) 
0x4e36;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOV	0x10(%R15),%R13;
0x4e3a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:37;MOV	0x18(%R15),%R14;
0x4e3e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	0x8(%R15),%R11;
0x4e42;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;VMOVSD	0x98(%RSP),%XMM5;
0x4e4b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;MOV	(%R13),%EBX;
0x4e4f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;VMOVSD	%XMM5,0xa8(%RSP);
0x4e58;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;MOV	(%R14),%R12D;
0x4e5b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	(%R11),%R13D;
0x4e5e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	%EBX,0x3c(%RSP);
0x4e62;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;TEST	%R12D,%R12D;
0x4e65;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;JLE	6893 <initialize_._omp_fn.0+0x2163>;
0x4e6b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;VZEROUPPER;
0x4e6e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	0x3c(%RSP),%ESI;
0x4e72;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;TEST	%ESI,%ESI;
0x4e74;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;JLE	51bb <initialize_._omp_fn.0+0xa8b>;
0x4e7a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	%R12D,%EAX;
0x4e7d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;XOR	%EDX,%EDX;
0x4e7f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;IMUL	%ESI,%EAX;
0x4e82;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;DIVL	0x20(%RSP);
0x4e86;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	%EAX,%R10D;
0x4e89;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;CMP	%EDX,0x2c(%RSP);
0x4e8d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;JB	68f2 <initialize_._omp_fn.0+0x21c2>;
0x4e93;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	0x2c(%RSP),%EAX;
0x4e97;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;IMUL	%R10D,%EAX;
0x4e9b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;ADD	%EDX,%EAX;
0x4e9d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;LEA	(%R10,%RAX,1),%R12D;
0x4ea1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;CMP	%R12D,%EAX;
0x4ea4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;JAE	51bb <initialize_._omp_fn.0+0xa8b>;
0x4eaa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;VXORPD	%XMM11,%XMM11,%XMM11;
0x4eaf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;LEA	-0x1(%R10),%EDI;
0x4eb3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;XOR	%EDX,%EDX;
0x4eb5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;XOR	%EBX,%EBX;
0x4eb7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;DIVL	0x3c(%RSP);
0x4ebb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;AND	$0x1,%R10D;
0x4ebf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%EDI,0x60(%RSP);
0x4ec3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;LEA	0xc0(%RSP),%R9;
0x4ecb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%R9,0x78(%RSP);
0x4ed0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;LEA	0xb8(%RSP),%R14;
0x4ed8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;LEA	0xa8(%RSP),%R12;
0x4ee0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%EAX,0x68(%RSP);
0x4ee4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOVSXD	0x68(%RSP),%R11;
0x4ee9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;LEA	-0x1(%R13),%EAX;
0x4eed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	%EDX,%R8D;
0x4ef0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;LEA	0xb0(%RSP),%R13;
0x4ef8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;CLTQ;
0x4efa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;LEA	(%RAX,%RAX,4),%RCX;
0x4efe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%RCX,0x80(%RSP);
0x4f06;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VCVTSI2SD	%R11D,%XMM11,%XMM0;
0x4f0b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%R11,0x90(%RSP);
0x4f13;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM0,0x88(%RSP);
0x4f1c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JNE	50a5 <initialize_._omp_fn.0+0x975>;
0x4f22;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VXORPD	%XMM14,%XMM14,%XMM14;
0x4f27;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;MOV	%EDX,0x70(%RSP);
0x4f2b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R13,%RSI;
0x4f2e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R9,%RCX;
0x4f31;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VCVTSI2SD	%EDX,%XMM14,%XMM9;
0x4f35;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R12,%RDI;
0x4f38;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:123;VMULSD	0x279f8(%RIP),%XMM0,%XMM4;
0x4f40;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R14,%RDX;
0x4f43;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VMULSD	0x279f5(%RIP),%XMM9,%XMM15;
0x4f4b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:123;VMOVSD	%XMM4,0xb8(%RSP);
0x4f54;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VMOVSD	%XMM15,0xb0(%RSP);
0x4f5d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;CALL	7120 <exact_solution_>;
0x4f62;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOVSXD	0x70(%RSP),%RSI;
0x4f67;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	0x90(%RSP),%RBX;
0x4f6f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;IMUL	0x40(%RSP),%RBX;
0x4f75;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	0x30(%RSP),%RBX;
0x4f7a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%RSI,%R8;
0x4f7d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	(%R15),%R10;
0x4f80;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;IMUL	0x48(%RSP),%RSI;
0x4f86;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	$0x1,%R8D;
0x4f8a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVAPD	0xc0(%RSP),%XMM10;
0x4f93;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVAPD	0xc0(%RSP),%YMM3;
0x4f9c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	0xe0(%RSP),%XMM2;
0x4fa5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	%RSI,%RBX;
0x4fa8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	0x80(%RSP),%RBX;
0x4fb0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVUPS	%XMM10,0x8(%R10,%RBX,8);
0x4fb7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VEXTRACTF128	$0x1,%YMM3,0x18(%R10,%RBX,8);
0x4fbf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM2,0x28(%R10,%RBX,8);
0x4fc6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;CMP	0x3c(%RSP),%R8D;
0x4fcb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JGE	696a <initialize_._omp_fn.0+0x223a>;
0x4fd1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	$0x1,%EBX;
0x4fd6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VZEROUPPER;
0x4fd9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JMP	50a5 <initialize_._omp_fn.0+0x975>;
0x4fde;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VXORPD	%XMM3,%XMM3,%XMM3;(20) 
0x4fe2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VCVTSI2SD	%ESI,%XMM3,%XMM2;(20) 
0x4fe6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	0x78(%RSP),%RCX;(20) 
0x4feb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;MOV	%ESI,0x70(%RSP);(20) 
0x4fef;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VMULSD	0x27949(%RIP),%XMM2,%XMM8;(20) 
0x4ff7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;ADD	$0x1,%EBX;(20) 
0x4ffa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R14,%RDX;(20) 
0x4ffd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:123;VMOVSD	0x88(%RSP),%XMM15;(20) 
0x5006;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R13,%RSI;(20) 
0x5009;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R12,%RDI;(20) 
0x500c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:123;VMULSD	0x27924(%RIP),%XMM15,%XMM10;(20) 
0x5014;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VMOVSD	%XMM8,0xb0(%RSP);(20) 
0x501d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:123;VMOVSD	%XMM10,0xb8(%RSP);(20) 
0x5026;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;VZEROUPPER;(20) 
0x5029;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;CALL	7120 <exact_solution_>;(20) 
0x502e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOVSXD	0x70(%RSP),%RAX;(20) 
0x5033;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	0x90(%RSP),%R10;(20) 
0x503b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;IMUL	0x40(%RSP),%R10;(20) 
0x5041;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	0x30(%RSP),%RDX;(20) 
0x5046;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%RAX,%R8;(20) 
0x5049;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	(%R15),%RDI;(20) 
0x504c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;IMUL	0x48(%RSP),%RAX;(20) 
0x5052;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	$0x1,%R8D;(20) 
0x5056;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVAPD	0xc0(%RSP),%XMM6;(20) 
0x505f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVAPD	0xc0(%RSP),%YMM12;(20) 
0x5068;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;LEA	(%R10,%RDX,1),%RCX;(20) 
0x506c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	0xe0(%RSP),%XMM7;(20) 
0x5075;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	%RCX,%RAX;(20) 
0x5078;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	0x80(%RSP),%RAX;(20) 
0x5080;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVUPS	%XMM6,0x8(%RDI,%RAX,8);(20) 
0x5086;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VEXTRACTF128	$0x1,%YMM12,0x18(%RDI,%RAX,8);(20) 
0x508e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM7,0x28(%RDI,%RAX,8);(20) 
0x5094;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;CMP	0x3c(%RSP),%R8D;(20) 
0x5099;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JGE	689b <initialize_._omp_fn.0+0x216b>;(20) 
0x509f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	$0x1,%EBX;(20) 
0x50a2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VZEROUPPER;(20) 
0x50a5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VXORPD	%XMM1,%XMM1,%XMM1;(20) 
0x50a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VCVTSI2SD	%R8D,%XMM1,%XMM13;(20) 
0x50ae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	0x78(%RSP),%RCX;(20) 
0x50b3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R13,%RSI;(20) 
0x50b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VMULSD	0x27882(%RIP),%XMM13,%XMM5;(20) 
0x50be;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R12,%RDI;(20) 
0x50c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;MOV	%R14,%RDX;(20) 
0x50c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;MOV	%R8D,0x70(%RSP);(20) 
0x50c9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:123;VMOVSD	0x88(%RSP),%XMM12;(20) 
0x50d2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:123;VMULSD	0x2785e(%RIP),%XMM12,%XMM7;(20) 
0x50da;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:124;VMOVSD	%XMM5,0xb0(%RSP);(20) 
0x50e3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:123;VMOVSD	%XMM7,0xb8(%RSP);(20) 
0x50ec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:125;CALL	7120 <exact_solution_>;(20) 
0x50f1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOVSXD	0x70(%RSP),%RDI;(20) 
0x50f6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	0x90(%RSP),%R8;(20) 
0x50fe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;IMUL	0x40(%RSP),%R8;(20) 
0x5104;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	0x30(%RSP),%RAX;(20) 
0x5109;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%RDI,%RSI;(20) 
0x510c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	(%R15),%R9;(20) 
0x510f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;IMUL	0x48(%RSP),%RDI;(20) 
0x5115;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVAPD	0xc0(%RSP),%XMM11;(20) 
0x511e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVAPD	0xc0(%RSP),%YMM0;(20) 
0x5127;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;LEA	(%R8,%RAX,1),%RCX;(20) 
0x512b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	0xe0(%RSP),%XMM4;(20) 
0x5134;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	%RCX,%RDI;(20) 
0x5137;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	0x80(%RSP),%RDI;(20) 
0x513f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVUPS	%XMM11,0x8(%R9,%RDI,8);(20) 
0x5146;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VEXTRACTF128	$0x1,%YMM0,0x18(%R9,%RDI,8);(20) 
0x514e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM4,0x28(%R9,%RDI,8);(20) 
0x5155;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;CMP	%EBX,0x60(%RSP);(20) 
0x5159;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JE	6893 <initialize_._omp_fn.0+0x2163>;(20) 
0x515f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADD	$0x1,%ESI;(20) 
0x5162;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;CMP	0x3c(%RSP),%ESI;(20) 
0x5166;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JL	4fde <initialize_._omp_fn.0+0x8ae>;(20) 
0x516c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADDL	$0x1,0x68(%RSP);(20) 
0x5171;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VXORPD	%XMM14,%XMM14,%XMM14;(20) 
0x5176;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;XOR	%ESI,%ESI;(20) 
0x5178;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOVSXD	0x68(%RSP),%R11;(20) 
0x517d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VCVTSI2SD	%R11D,%XMM14,%XMM9;(20) 
0x5182;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%R11,0x90(%RSP);(20) 
0x518a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM9,0x88(%RSP);(20) 
0x5193;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JMP	4fde <initialize_._omp_fn.0+0x8ae>;(20) 
0x5198;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	0x23218(%RIP),%XMM6;
0x51a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM6,0x98(%RSP);
0x51a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;VMOVSD	0x98(%RSP),%XMM1;
0x51b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;VMOVSD	%XMM1,0xa8(%RSP);
0x51bb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;CALL	22f0 <@plt_start@+0x2d0>;
0x51c0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	0x18(%R15),%R14;
0x51c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:137;MOVQ	$0,0xb0(%RSP);
0x51d0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:137;MOV	(%R14),%EAX;
0x51d3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:137;CLTD;
0x51d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:137;IDIVL	0x20(%RSP);
0x51d8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:137;CMP	0x2c(%RSP),%EDX;
0x51dc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:137;JG	6932 <initialize_._omp_fn.0+0x2202>;
0x51e2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	%EDX,%R12D;
0x51e5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	%EAX,%R13D;
0x51e8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	0x2c(%RSP),%EBX;
0x51ec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;IMUL	%R13D,%EBX;
0x51f0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;LEA	(%RBX,%R12,1),%R11D;
0x51f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;ADD	%R11D,%R13D;
0x51f7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	%R11D,0x78(%RSP);
0x51fc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	%R13D,0x60(%RSP);
0x5201;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;CMP	%R13D,%R11D;
0x5204;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;JGE	5632 <initialize_._omp_fn.0+0xf02>;
0x520a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	0x30(%RSP),%R10;
0x520f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;LEA	0xc0(%RSP),%RCX;
0x5217;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOVSXD	%R11D,%RSI;
0x521a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;IMUL	0x40(%RSP),%RSI;
0x5220;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	%RCX,0x88(%RSP);
0x5228;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;LEA	0x1(%R10,%RSI,1),%RDX;
0x522d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;MOV	%RDX,0x68(%RSP);
0x5232;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;NOPW	(%RAX,%RAX,1);
0x5238;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	0x8(%R15),%RAX;(18) 
0x523c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:140;VXORPD	%XMM5,%XMM5,%XMM5;(18) 
0x5240;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:140;VCVTSI2SDL	0x78(%RSP),%XMM5,%XMM11;(18) 
0x5246;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:140;VMULSD	0x276ea(%RIP),%XMM11,%XMM0;(18) 
0x524e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	(%RAX),%EDI;(18) 
0x5250;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:140;VMOVSD	%XMM0,0xb8(%RSP);(18) 
0x5259;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	%EDI,0x80(%RSP);(18) 
0x5260;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;TEST	%EDI,%EDI;(18) 
0x5262;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;JLE	5608 <initialize_._omp_fn.0+0xed8>;(18) 
0x5268;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;LEA	0xa8(%RSP),%R8;(18) 
0x5270;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	%EDI,%R9D;(18) 
0x5273;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	0x68(%RSP),%R12;(18) 
0x5278;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;XOR	%EBX,%EBX;(18) 
0x527a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;LEA	0xb8(%RSP),%R14;(18) 
0x5282;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	%R8,0x90(%RSP);(18) 
0x528a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;LEA	0xb0(%RSP),%R13;(18) 
0x5292;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;AND	$0x3,%R9D;(18) 
0x5296;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;JE	540f <initialize_._omp_fn.0+0xcdf>;(18) 
0x529c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;CMP	$0x1,%R9D;(18) 
0x52a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;JE	5390 <initialize_._omp_fn.0+0xc60>;(18) 
0x52a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;CMP	$0x2,%R9D;(18) 
0x52aa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;JE	531f <initialize_._omp_fn.0+0xbef>;(18) 
0x52ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VXORPD	%XMM4,%XMM4,%XMM4;(18) 
0x52b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VCVTSI2SD	%EBX,%XMM4,%XMM14;(18) 
0x52b4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x88(%RSP),%RCX;(18) 
0x52bc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R8,%RDI;(18) 
0x52bf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMULSD	0x27681(%RIP),%XMM14,%XMM9;(18) 
0x52c7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R14,%RDX;(18) 
0x52ca;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R13,%RSI;(18) 
0x52cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	$0x1,%EBX;(18) 
0x52d2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMOVSD	%XMM9,0xa8(%RSP);(18) 
0x52db;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;CALL	7120 <exact_solution_>;(18) 
0x52e0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	(%R15),%R12;(18) 
0x52e3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	0x68(%RSP),%R11;(18) 
0x52e8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%XMM15;(18) 
0x52f1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%YMM10;(18) 
0x52fa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	0xe0(%RSP),%XMM3;(18) 
0x5303;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVUPS	%XMM15,(%R12,%R11,8);(18) 
0x5309;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VEXTRACTF128	$0x1,%YMM10,0x10(%R12,%R11,8);(18) 
0x5311;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	%XMM3,0x20(%R12,%R11,8);(18) 
0x5318;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;LEA	0x5(%R11),%R12;(18) 
0x531c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VZEROUPPER;(18) 
0x531f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VXORPD	%XMM2,%XMM2,%XMM2;(18) 
0x5323;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VCVTSI2SD	%EBX,%XMM2,%XMM8;(18) 
0x5327;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x88(%RSP),%RCX;(18) 
0x532f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R13,%RSI;(18) 
0x5332;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMULSD	0x2760e(%RIP),%XMM8,%XMM6;(18) 
0x533a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R14,%RDX;(18) 
0x533d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;ADD	$0x1,%EBX;(18) 
0x5340;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x90(%RSP),%RDI;(18) 
0x5348;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMOVSD	%XMM6,0xa8(%RSP);(18) 
0x5351;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;CALL	7120 <exact_solution_>;(18) 
0x5356;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	(%R15),%RSI;(18) 
0x5359;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%XMM12;(18) 
0x5362;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%YMM7;(18) 
0x536b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	0xe0(%RSP),%XMM1;(18) 
0x5374;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVUPS	%XMM12,(%RSI,%R12,8);(18) 
0x537a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VEXTRACTF128	$0x1,%YMM7,0x10(%RSI,%R12,8);(18) 
0x5382;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	%XMM1,0x20(%RSI,%R12,8);(18) 
0x5389;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;ADD	$0x5,%R12;(18) 
0x538d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VZEROUPPER;(18) 
0x5390;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VXORPD	%XMM13,%XMM13,%XMM13;(18) 
0x5395;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VCVTSI2SD	%EBX,%XMM13,%XMM5;(18) 
0x5399;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x88(%RSP),%RCX;(18) 
0x53a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R14,%RDX;(18) 
0x53a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMULSD	0x2759c(%RIP),%XMM5,%XMM11;(18) 
0x53ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R13,%RSI;(18) 
0x53af;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;ADD	$0x1,%EBX;(18) 
0x53b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x90(%RSP),%RDI;(18) 
0x53ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMOVSD	%XMM11,0xa8(%RSP);(18) 
0x53c3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;CALL	7120 <exact_solution_>;(18) 
0x53c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	(%R15),%R10;(18) 
0x53cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%XMM0;(18) 
0x53d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%YMM4;(18) 
0x53dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	0xe0(%RSP),%XMM14;(18) 
0x53e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVUPS	%XMM0,(%R10,%R12,8);(18) 
0x53ec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VEXTRACTF128	$0x1,%YMM4,0x10(%R10,%R12,8);(18) 
0x53f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	%XMM14,0x20(%R10,%R12,8);(18) 
0x53fb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;ADD	$0x5,%R12;(18) 
0x53ff;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;CMP	%EBX,0x80(%RSP);(18) 
0x5406;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;JE	5605 <initialize_._omp_fn.0+0xed5>;(18) 
0x540c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;VZEROUPPER;  (19) 
0x540f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VXORPD	%XMM9,%XMM9,%XMM9;  (19) 
0x5414;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VCVTSI2SD	%EBX,%XMM9,%XMM15;  (19) 
0x5418;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x88(%RSP),%RCX;  (19) 
0x5420;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R14,%RDX;  (19) 
0x5423;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMULSD	0x2751d(%RIP),%XMM15,%XMM10;  (19) 
0x542b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R13,%RSI;  (19) 
0x542e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x90(%RSP),%RDI;  (19) 
0x5436;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMOVSD	%XMM10,0xa8(%RSP);  (19) 
0x543f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;CALL	7120 <exact_solution_>;  (19) 
0x5444;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	(%R15),%RDX;  (19) 
0x5447;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;LEA	0x1(%RBX),%ECX;  (19) 
0x544a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VXORPD	%XMM6,%XMM6,%XMM6;  (19) 
0x544e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VCVTSI2SD	%ECX,%XMM6,%XMM12;  (19) 
0x5452;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x90(%RSP),%RDI;  (19) 
0x545a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R13,%RSI;  (19) 
0x545d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%XMM3;  (19) 
0x5466;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;LEA	0x5(%R12),%RAX;  (19) 
0x546b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	0xe0(%RSP),%XMM8;  (19) 
0x5474;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	%RAX,0x70(%RSP);  (19) 
0x5479;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVUPS	%XMM3,(%RDX,%R12,8);  (19) 
0x547f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x88(%RSP),%RCX;  (19) 
0x5487;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%YMM2;  (19) 
0x5490;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	%XMM8,0x20(%RDX,%R12,8);  (19) 
0x5497;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMULSD	0x274a9(%RIP),%XMM12,%XMM7;  (19) 
0x549f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VEXTRACTF128	$0x1,%YMM2,0x10(%RDX,%R12,8);  (19) 
0x54a7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R14,%RDX;  (19) 
0x54aa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMOVSD	%XMM7,0xa8(%RSP);  (19) 
0x54b3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;VZEROUPPER;  (19) 
0x54b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;CALL	7120 <exact_solution_>;  (19) 
0x54bb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	(%R15),%RDI;  (19) 
0x54be;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;LEA	0x2(%RBX),%R11D;  (19) 
0x54c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R14,%RDX;  (19) 
0x54c5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	0x70(%RSP),%R9;  (19) 
0x54ca;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VXORPD	%XMM11,%XMM11,%XMM11;  (19) 
0x54cf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R13,%RSI;  (19) 
0x54d2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%XMM1;  (19) 
0x54db;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;LEA	0xa(%R12),%R8;  (19) 
0x54e0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%YMM13;  (19) 
0x54e9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	%R8,0x70(%RSP);  (19) 
0x54ee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VCVTSI2SD	%R11D,%XMM11,%XMM0;  (19) 
0x54f3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x88(%RSP),%RCX;  (19) 
0x54fb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	0xe0(%RSP),%XMM5;  (19) 
0x5504;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVUPS	%XMM1,(%RDI,%R9,8);  (19) 
0x550a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VEXTRACTF128	$0x1,%YMM13,0x10(%RDI,%R9,8);  (19) 
0x5512;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	%XMM5,0x48(%RDI,%R12,8);  (19) 
0x5519;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMULSD	0x27427(%RIP),%XMM0,%XMM4;  (19) 
0x5521;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x90(%RSP),%RDI;  (19) 
0x5529;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMOVSD	%XMM4,0xa8(%RSP);  (19) 
0x5532;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;VZEROUPPER;  (19) 
0x5535;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;CALL	7120 <exact_solution_>;  (19) 
0x553a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	(%R15),%RSI;  (19) 
0x553d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;LEA	0x3(%RBX),%EDX;  (19) 
0x5540;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VXORPD	%XMM10,%XMM10,%XMM10;  (19) 
0x5545;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	0x70(%RSP),%R10;  (19) 
0x554a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;LEA	0xf(%R12),%RCX;  (19) 
0x554f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%XMM14;  (19) 
0x5558;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	%RCX,0x70(%RSP);  (19) 
0x555d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VCVTSI2SD	%EDX,%XMM10,%XMM3;  (19) 
0x5561;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x88(%RSP),%RCX;  (19) 
0x5569;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R14,%RDX;  (19) 
0x556c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%YMM9;  (19) 
0x5575;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	0xe0(%RSP),%XMM15;  (19) 
0x557e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVUPS	%XMM14,(%RSI,%R10,8);  (19) 
0x5584;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VEXTRACTF128	$0x1,%YMM9,0x10(%RSI,%R10,8);  (19) 
0x558c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	0x90(%RSP),%RDI;  (19) 
0x5594;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	%XMM15,0x70(%RSI,%R12,8);  (19) 
0x559b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMULSD	0x273a5(%RIP),%XMM3,%XMM2;  (19) 
0x55a3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;MOV	%R13,%RSI;  (19) 
0x55a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:142;VMOVSD	%XMM2,0xa8(%RSP);  (19) 
0x55af;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;VZEROUPPER;  (19) 
0x55b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;ADD	$0x4,%EBX;  (19) 
0x55b5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:143;CALL	7120 <exact_solution_>;  (19) 
0x55ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	(%R15),%RAX;  (19) 
0x55bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;MOV	0x70(%RSP),%RDI;  (19) 
0x55c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%XMM8;  (19) 
0x55cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVAPD	0xc0(%RSP),%YMM6;  (19) 
0x55d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	0xe0(%RSP),%XMM12;  (19) 
0x55dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVUPS	%XMM8,(%RAX,%RDI,8);  (19) 
0x55e2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VEXTRACTF128	$0x1,%YMM6,0x10(%RAX,%RDI,8);  (19) 
0x55ea;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;VMOVSD	%XMM12,0x98(%RAX,%R12,8);  (19) 
0x55f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:145;ADD	$0x14,%R12;  (19) 
0x55f8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;CMP	%EBX,0x80(%RSP);  (19) 
0x55ff;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;JNE	540c <initialize_._omp_fn.0+0xcdc>;  (19) 
0x5605;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;VZEROUPPER;(18) 
0x5608;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;ADDL	$0x1,0x78(%RSP);(18) 
0x560d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	0x40(%RSP),%R12;(18) 
0x5612;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	0x78(%RSP),%EBX;(18) 
0x5616;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;ADD	%R12,0x68(%RSP);(18) 
0x561b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;CMP	%EBX,0x60(%RSP);(18) 
0x561f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;JNE	5238 <initialize_._omp_fn.0+0xb08>;(18) 
0x5625;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	0x18(%R15),%R13;
0x5629;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;MOV	(%R13),%EAX;
0x562d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;CLTD;
0x562e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:141;IDIVL	0x20(%RSP);
0x5632;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;MOV	0x10(%R15),%R14;
0x5636;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:156;VMOVSD	0x98(%RSP),%XMM7;
0x563f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:156;VMOVSD	%XMM7,0xb0(%RSP);
0x5648;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;MOV	(%R14),%R9D;
0x564b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;CMP	0x2c(%RSP),%EDX;
0x564f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;JG	6914 <initialize_._omp_fn.0+0x21e4>;
0x5655;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;MOV	0x2c(%RSP),%R11D;
0x565a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;IMUL	%EAX,%R11D;
0x565e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;LEA	(%R11,%RDX,1),%R8D;
0x5662;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;ADD	%R8D,%EAX;
0x5665;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;MOV	%R8D,0x78(%RSP);
0x566a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;MOV	%EAX,0x60(%RSP);
0x566e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;CMP	%EAX,%R8D;
0x5671;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;JGE	5aa2 <initialize_._omp_fn.0+0x1372>;
0x5677;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;LEA	-0x1(%R9),%EAX;
0x567b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;MOVSXD	%R8D,%RSI;
0x567e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:155;IMUL	0x40(%RSP),%RSI;
0x5684;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;CLTQ;
0x5686;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;IMUL	0x48(%RSP),%RAX;
0x568c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;ADD	0x30(%RSP),%RAX;
0x5691;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;LEA	0xc0(%RSP),%R10;
0x5699;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	%R10,0x88(%RSP);
0x56a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;ADD	%RSI,%RAX;
0x56a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	%RAX,0x68(%RSP);
0x56a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;NOPL	(%RAX);
0x56b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	0x8(%R15),%RCX;(16) 
0x56b4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:159;VXORPD	%XMM1,%XMM1,%XMM1;(16) 
0x56b8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:159;VCVTSI2SDL	0x78(%RSP),%XMM1,%XMM13;(16) 
0x56be;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:159;VMULSD	0x27272(%RIP),%XMM13,%XMM5;(16) 
0x56c6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	(%RCX),%EDI;(16) 
0x56c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:159;VMOVSD	%XMM5,0xb8(%RSP);(16) 
0x56d1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	%EDI,0x80(%RSP);(16) 
0x56d8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;TEST	%EDI,%EDI;(16) 
0x56da;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;JLE	5a85 <initialize_._omp_fn.0+0x1355>;(16) 
0x56e0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	0x68(%RSP),%RBX;(16) 
0x56e5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;LEA	0xa8(%RSP),%RDX;(16) 
0x56ed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	%EDI,%R9D;(16) 
0x56f0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;LEA	0xb8(%RSP),%R14;(16) 
0x56f8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	%RDX,0x90(%RSP);(16) 
0x5700;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;LEA	0xb0(%RSP),%R13;(16) 
0x5708;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;LEA	0x1(%RBX),%R12;(16) 
0x570c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;XOR	%EBX,%EBX;(16) 
0x570e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;AND	$0x3,%R9D;(16) 
0x5712;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;JE	588d <initialize_._omp_fn.0+0x115d>;(16) 
0x5718;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;CMP	$0x1,%R9D;(16) 
0x571c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;JE	580f <initialize_._omp_fn.0+0x10df>;(16) 
0x5722;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;CMP	$0x2,%R9D;(16) 
0x5726;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;JE	579d <initialize_._omp_fn.0+0x106d>;(16) 
0x5728;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VXORPD	%XMM11,%XMM11,%XMM11;(16) 
0x572d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VCVTSI2SD	%EBX,%XMM11,%XMM0;(16) 
0x5731;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x88(%RSP),%RCX;(16) 
0x5739;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%RDX,%RDI;(16) 
0x573c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMULSD	0x27204(%RIP),%XMM0,%XMM4;(16) 
0x5744;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R14,%RDX;(16) 
0x5747;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R13,%RSI;(16) 
0x574a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	$0x1,%EBX;(16) 
0x574f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMOVSD	%XMM4,0xa8(%RSP);(16) 
0x5758;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;CALL	7120 <exact_solution_>;(16) 
0x575d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	(%R15),%R11;(16) 
0x5760;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%XMM14;(16) 
0x5769;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%YMM9;(16) 
0x5772;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	0xe0(%RSP),%XMM15;(16) 
0x577b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVUPS	%XMM14,(%R11,%R12,8);(16) 
0x5781;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VEXTRACTF128	$0x1,%YMM9,0x10(%R11,%R12,8);(16) 
0x5789;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	0x68(%RSP),%R12;(16) 
0x578e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	%XMM15,0x28(%R11,%R12,8);(16) 
0x5795;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;LEA	0x6(%R12),%R12;(16) 
0x579a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VZEROUPPER;(16) 
0x579d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VXORPD	%XMM10,%XMM10,%XMM10;(16) 
0x57a2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VCVTSI2SD	%EBX,%XMM10,%XMM3;(16) 
0x57a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x88(%RSP),%RCX;(16) 
0x57ae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R14,%RDX;(16) 
0x57b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMULSD	0x2718f(%RIP),%XMM3,%XMM2;(16) 
0x57b9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R13,%RSI;(16) 
0x57bc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;ADD	$0x1,%EBX;(16) 
0x57bf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x90(%RSP),%RDI;(16) 
0x57c7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMOVSD	%XMM2,0xa8(%RSP);(16) 
0x57d0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;CALL	7120 <exact_solution_>;(16) 
0x57d5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	(%R15),%R8;(16) 
0x57d8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%XMM8;(16) 
0x57e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%YMM6;(16) 
0x57ea;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	0xe0(%RSP),%XMM12;(16) 
0x57f3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVUPS	%XMM8,(%R8,%R12,8);(16) 
0x57f9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VEXTRACTF128	$0x1,%YMM6,0x10(%R8,%R12,8);(16) 
0x5801;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	%XMM12,0x20(%R8,%R12,8);(16) 
0x5808;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;ADD	$0x5,%R12;(16) 
0x580c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VZEROUPPER;(16) 
0x580f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VXORPD	%XMM7,%XMM7,%XMM7;(16) 
0x5813;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VCVTSI2SD	%EBX,%XMM7,%XMM1;(16) 
0x5817;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x88(%RSP),%RCX;(16) 
0x581f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R14,%RDX;(16) 
0x5822;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMULSD	0x2711e(%RIP),%XMM1,%XMM13;(16) 
0x582a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R13,%RSI;(16) 
0x582d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;ADD	$0x1,%EBX;(16) 
0x5830;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x90(%RSP),%RDI;(16) 
0x5838;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMOVSD	%XMM13,0xa8(%RSP);(16) 
0x5841;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;CALL	7120 <exact_solution_>;(16) 
0x5846;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	(%R15),%RAX;(16) 
0x5849;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%XMM5;(16) 
0x5852;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%YMM11;(16) 
0x585b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	0xe0(%RSP),%XMM0;(16) 
0x5864;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVUPS	%XMM5,(%RAX,%R12,8);(16) 
0x586a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VEXTRACTF128	$0x1,%YMM11,0x10(%RAX,%R12,8);(16) 
0x5872;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	%XMM0,0x20(%RAX,%R12,8);(16) 
0x5879;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;ADD	$0x5,%R12;(16) 
0x587d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;CMP	%EBX,0x80(%RSP);(16) 
0x5884;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;JE	5a82 <initialize_._omp_fn.0+0x1352>;(16) 
0x588a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;VZEROUPPER;  (17) 
0x588d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VXORPD	%XMM4,%XMM4,%XMM4;  (17) 
0x5891;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VCVTSI2SD	%EBX,%XMM4,%XMM14;  (17) 
0x5895;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x88(%RSP),%RCX;  (17) 
0x589d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R14,%RDX;  (17) 
0x58a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMULSD	0x270a0(%RIP),%XMM14,%XMM9;  (17) 
0x58a8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R13,%RSI;  (17) 
0x58ab;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x90(%RSP),%RDI;  (17) 
0x58b3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMOVSD	%XMM9,0xa8(%RSP);  (17) 
0x58bc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;CALL	7120 <exact_solution_>;  (17) 
0x58c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	(%R15),%RSI;  (17) 
0x58c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;LEA	0x1(%RBX),%R10D;  (17) 
0x58c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R14,%RDX;  (17) 
0x58cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%XMM15;  (17) 
0x58d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;LEA	0x5(%R12),%RCX;  (17) 
0x58d9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VXORPD	%XMM2,%XMM2,%XMM2;  (17) 
0x58dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	0xe0(%RSP),%XMM3;  (17) 
0x58e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	%RCX,0x70(%RSP);  (17) 
0x58eb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VCVTSI2SD	%R10D,%XMM2,%XMM8;  (17) 
0x58f0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x88(%RSP),%RCX;  (17) 
0x58f8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVUPS	%XMM15,(%RSI,%R12,8);  (17) 
0x58fe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x90(%RSP),%RDI;  (17) 
0x5906;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%YMM10;  (17) 
0x590f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	%XMM3,0x20(%RSI,%R12,8);  (17) 
0x5916;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMULSD	0x2702a(%RIP),%XMM8,%XMM6;  (17) 
0x591e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VEXTRACTF128	$0x1,%YMM10,0x10(%RSI,%R12,8);  (17) 
0x5926;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R13,%RSI;  (17) 
0x5929;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMOVSD	%XMM6,0xa8(%RSP);  (17) 
0x5932;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;VZEROUPPER;  (17) 
0x5935;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;CALL	7120 <exact_solution_>;  (17) 
0x593a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	(%R15),%RDI;  (17) 
0x593d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;LEA	0x2(%RBX),%EDX;  (17) 
0x5940;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VXORPD	%XMM13,%XMM13,%XMM13;  (17) 
0x5945;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	0x70(%RSP),%R9;  (17) 
0x594a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;LEA	0xa(%R12),%R11;  (17) 
0x594f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R13,%RSI;  (17) 
0x5952;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%XMM12;  (17) 
0x595b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	%R11,0x70(%RSP);  (17) 
0x5960;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VCVTSI2SD	%EDX,%XMM13,%XMM5;  (17) 
0x5964;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x88(%RSP),%RCX;  (17) 
0x596c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R14,%RDX;  (17) 
0x596f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%YMM7;  (17) 
0x5978;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	0xe0(%RSP),%XMM1;  (17) 
0x5981;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVUPS	%XMM12,(%RDI,%R9,8);  (17) 
0x5987;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VEXTRACTF128	$0x1,%YMM7,0x10(%RDI,%R9,8);  (17) 
0x598f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	%XMM1,0x48(%RDI,%R12,8);  (17) 
0x5996;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMULSD	0x26faa(%RIP),%XMM5,%XMM11;  (17) 
0x599e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x90(%RSP),%RDI;  (17) 
0x59a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMOVSD	%XMM11,0xa8(%RSP);  (17) 
0x59af;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;VZEROUPPER;  (17) 
0x59b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;CALL	7120 <exact_solution_>;  (17) 
0x59b7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	(%R15),%RAX;  (17) 
0x59ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;LEA	0x3(%RBX),%ESI;  (17) 
0x59bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VXORPD	%XMM9,%XMM9,%XMM9;  (17) 
0x59c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	0x70(%RSP),%R8;  (17) 
0x59c7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;LEA	0xf(%R12),%R10;  (17) 
0x59cc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R14,%RDX;  (17) 
0x59cf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%XMM0;  (17) 
0x59d8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	%R10,0x70(%RSP);  (17) 
0x59dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VCVTSI2SD	%ESI,%XMM9,%XMM15;  (17) 
0x59e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x88(%RSP),%RCX;  (17) 
0x59e9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	%R13,%RSI;  (17) 
0x59ec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%YMM4;  (17) 
0x59f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	0xe0(%RSP),%XMM14;  (17) 
0x59fe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVUPS	%XMM0,(%RAX,%R8,8);  (17) 
0x5a04;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VEXTRACTF128	$0x1,%YMM4,0x10(%RAX,%R8,8);  (17) 
0x5a0c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;MOV	0x90(%RSP),%RDI;  (17) 
0x5a14;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	%XMM14,0x70(%RAX,%R12,8);  (17) 
0x5a1b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMULSD	0x26f25(%RIP),%XMM15,%XMM10;  (17) 
0x5a23;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:161;VMOVSD	%XMM10,0xa8(%RSP);  (17) 
0x5a2c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;VZEROUPPER;  (17) 
0x5a2f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;ADD	$0x4,%EBX;  (17) 
0x5a32;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:162;CALL	7120 <exact_solution_>;  (17) 
0x5a37;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	(%R15),%RCX;  (17) 
0x5a3a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;MOV	0x70(%RSP),%RDI;  (17) 
0x5a3f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%XMM3;  (17) 
0x5a48;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVAPD	0xc0(%RSP),%YMM2;  (17) 
0x5a51;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	0xe0(%RSP),%XMM8;  (17) 
0x5a5a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVUPS	%XMM3,(%RCX,%RDI,8);  (17) 
0x5a5f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VEXTRACTF128	$0x1,%YMM2,0x10(%RCX,%RDI,8);  (17) 
0x5a67;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;VMOVSD	%XMM8,0x98(%RCX,%R12,8);  (17) 
0x5a71;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:164;ADD	$0x14,%R12;  (17) 
0x5a75;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;CMP	%EBX,0x80(%RSP);  (17) 
0x5a7c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;JNE	588a <initialize_._omp_fn.0+0x115a>;  (17) 
0x5a82;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;VZEROUPPER;(16) 
0x5a85;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;ADDL	$0x1,0x78(%RSP);(16) 
0x5a8a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	0x40(%RSP),%R12;(16) 
0x5a8f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;MOV	0x78(%RSP),%EBX;(16) 
0x5a93;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;ADD	%R12,0x68(%RSP);(16) 
0x5a98;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;CMP	%EBX,0x60(%RSP);(16) 
0x5a9c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;JNE	56b0 <initialize_._omp_fn.0+0xf80>;(16) 
0x5aa2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:160;CALL	22f0 <@plt_start@+0x2d0>;
0x5aa7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	0x10(%R15),%R13;
0x5aab;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:174;MOVQ	$0,0xb8(%RSP);
0x5ab7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:174;MOV	(%R13),%EAX;
0x5abb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:174;CLTD;
0x5abc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:174;IDIVL	0x20(%RSP);
0x5ac0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:174;CMP	0x2c(%RSP),%EDX;
0x5ac4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:174;JG	6908 <initialize_._omp_fn.0+0x21d8>;
0x5aca;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	%EDX,%R9D;
0x5acd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	%EAX,%R14D;
0x5ad0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	0x2c(%RSP),%R11D;
0x5ad5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;IMUL	%R14D,%R11D;
0x5ad9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;LEA	(%R11,%R9,1),%R8D;
0x5add;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;ADD	%R8D,%R14D;
0x5ae0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	%R8D,0x78(%RSP);
0x5ae5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	%R14D,0x60(%RSP);
0x5aea;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;CMP	%R14D,%R8D;
0x5aed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;JGE	5f1b <initialize_._omp_fn.0+0x17eb>;
0x5af3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	0x30(%RSP),%RAX;
0x5af8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;LEA	0xc0(%RSP),%R10;
0x5b00;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOVSXD	%R8D,%RDX;
0x5b03;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;IMUL	0x48(%RSP),%RDX;
0x5b09;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	%R10,0x88(%RSP);
0x5b11;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;LEA	0x1(%RAX,%RDX,1),%RSI;
0x5b16;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;MOV	%RSI,0x68(%RSP);
0x5b1b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;NOPL	(%RAX,%RAX,1);
0x5b20;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	0x8(%R15),%RCX;(14) 
0x5b24;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:177;VXORPD	%XMM6,%XMM6,%XMM6;(14) 
0x5b28;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:177;VCVTSI2SDL	0x78(%RSP),%XMM6,%XMM12;(14) 
0x5b2e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:177;VMULSD	0x26e0a(%RIP),%XMM12,%XMM7;(14) 
0x5b36;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	(%RCX),%EDI;(14) 
0x5b38;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:177;VMOVSD	%XMM7,0xb0(%RSP);(14) 
0x5b41;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	%EDI,0x80(%RSP);(14) 
0x5b48;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;TEST	%EDI,%EDI;(14) 
0x5b4a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;JLE	5ef1 <initialize_._omp_fn.0+0x17c1>;(14) 
0x5b50;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;LEA	0xa8(%RSP),%R11;(14) 
0x5b58;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	%EDI,%R9D;(14) 
0x5b5b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	0x68(%RSP),%R12;(14) 
0x5b60;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;XOR	%EBX,%EBX;(14) 
0x5b62;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;LEA	0xb8(%RSP),%R14;(14) 
0x5b6a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	%R11,0x90(%RSP);(14) 
0x5b72;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;LEA	0xb0(%RSP),%R13;(14) 
0x5b7a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;AND	$0x3,%R9D;(14) 
0x5b7e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;JE	5cf9 <initialize_._omp_fn.0+0x15c9>;(14) 
0x5b84;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;CMP	$0x1,%R9D;(14) 
0x5b88;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;JE	5c7a <initialize_._omp_fn.0+0x154a>;(14) 
0x5b8e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;CMP	$0x2,%R9D;(14) 
0x5b92;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;JE	5c08 <initialize_._omp_fn.0+0x14d8>;(14) 
0x5b94;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VXORPD	%XMM1,%XMM1,%XMM1;(14) 
0x5b98;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VCVTSI2SD	%EBX,%XMM1,%XMM13;(14) 
0x5b9c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x88(%RSP),%RCX;(14) 
0x5ba4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R11,%RDI;(14) 
0x5ba7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMULSD	0x26d99(%RIP),%XMM13,%XMM5;(14) 
0x5baf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R14,%RDX;(14) 
0x5bb2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R13,%RSI;(14) 
0x5bb5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMOVSD	%XMM5,0xa8(%RSP);(14) 
0x5bbe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;CALL	7120 <exact_solution_>;(14) 
0x5bc3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	(%R15),%RBX;(14) 
0x5bc6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	0x68(%RSP),%R12;(14) 
0x5bcb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%XMM11;(14) 
0x5bd4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%YMM0;(14) 
0x5bdd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	0xe0(%RSP),%XMM4;(14) 
0x5be6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVUPS	%XMM11,(%RBX,%R12,8);(14) 
0x5bec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VEXTRACTF128	$0x1,%YMM0,0x10(%RBX,%R12,8);(14) 
0x5bf4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	%XMM4,0x20(%RBX,%R12,8);(14) 
0x5bfb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	$0x1,%EBX;(14) 
0x5c00;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;LEA	0x5(%R12),%R12;(14) 
0x5c05;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;VZEROUPPER;(14) 
0x5c08;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VXORPD	%XMM14,%XMM14,%XMM14;(14) 
0x5c0d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VCVTSI2SD	%EBX,%XMM14,%XMM9;(14) 
0x5c11;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x88(%RSP),%RCX;(14) 
0x5c19;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R14,%RDX;(14) 
0x5c1c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMULSD	0x26d24(%RIP),%XMM9,%XMM15;(14) 
0x5c24;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R13,%RSI;(14) 
0x5c27;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;ADD	$0x1,%EBX;(14) 
0x5c2a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x90(%RSP),%RDI;(14) 
0x5c32;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMOVSD	%XMM15,0xa8(%RSP);(14) 
0x5c3b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;CALL	7120 <exact_solution_>;(14) 
0x5c40;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	(%R15),%R8;(14) 
0x5c43;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%XMM10;(14) 
0x5c4c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%YMM3;(14) 
0x5c55;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	0xe0(%RSP),%XMM2;(14) 
0x5c5e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVUPS	%XMM10,(%R8,%R12,8);(14) 
0x5c64;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VEXTRACTF128	$0x1,%YMM3,0x10(%R8,%R12,8);(14) 
0x5c6c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	%XMM2,0x20(%R8,%R12,8);(14) 
0x5c73;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;ADD	$0x5,%R12;(14) 
0x5c77;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VZEROUPPER;(14) 
0x5c7a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VXORPD	%XMM8,%XMM8,%XMM8;(14) 
0x5c7f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VCVTSI2SD	%EBX,%XMM8,%XMM6;(14) 
0x5c83;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x88(%RSP),%RCX;(14) 
0x5c8b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R14,%RDX;(14) 
0x5c8e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMULSD	0x26cb2(%RIP),%XMM6,%XMM12;(14) 
0x5c96;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R13,%RSI;(14) 
0x5c99;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;ADD	$0x1,%EBX;(14) 
0x5c9c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x90(%RSP),%RDI;(14) 
0x5ca4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMOVSD	%XMM12,0xa8(%RSP);(14) 
0x5cad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;CALL	7120 <exact_solution_>;(14) 
0x5cb2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	(%R15),%RDX;(14) 
0x5cb5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%XMM7;(14) 
0x5cbe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%YMM1;(14) 
0x5cc7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	0xe0(%RSP),%XMM13;(14) 
0x5cd0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVUPS	%XMM7,(%RDX,%R12,8);(14) 
0x5cd6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VEXTRACTF128	$0x1,%YMM1,0x10(%RDX,%R12,8);(14) 
0x5cde;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	%XMM13,0x20(%RDX,%R12,8);(14) 
0x5ce5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;ADD	$0x5,%R12;(14) 
0x5ce9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;CMP	%EBX,0x80(%RSP);(14) 
0x5cf0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;JE	5eee <initialize_._omp_fn.0+0x17be>;(14) 
0x5cf6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;VZEROUPPER;  (15) 
0x5cf9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VXORPD	%XMM5,%XMM5,%XMM5;  (15) 
0x5cfd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VCVTSI2SD	%EBX,%XMM5,%XMM11;  (15) 
0x5d01;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x88(%RSP),%RCX;  (15) 
0x5d09;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R14,%RDX;  (15) 
0x5d0c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMULSD	0x26c34(%RIP),%XMM11,%XMM0;  (15) 
0x5d14;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R13,%RSI;  (15) 
0x5d17;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x90(%RSP),%RDI;  (15) 
0x5d1f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMOVSD	%XMM0,0xa8(%RSP);  (15) 
0x5d28;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;CALL	7120 <exact_solution_>;  (15) 
0x5d2d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	(%R15),%RAX;  (15) 
0x5d30;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;LEA	0x1(%RBX),%ESI;  (15) 
0x5d33;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VXORPD	%XMM15,%XMM15,%XMM15;  (15) 
0x5d38;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VCVTSI2SD	%ESI,%XMM15,%XMM10;  (15) 
0x5d3c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x88(%RSP),%RCX;  (15) 
0x5d44;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R14,%RDX;  (15) 
0x5d47;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x90(%RSP),%RDI;  (15) 
0x5d4f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;LEA	0x5(%R12),%R10;  (15) 
0x5d54;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R13,%RSI;  (15) 
0x5d57;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%XMM4;  (15) 
0x5d60;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	%R10,0x70(%RSP);  (15) 
0x5d65;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	0xe0(%RSP),%XMM9;  (15) 
0x5d6e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%YMM14;  (15) 
0x5d77;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVUPS	%XMM4,(%RAX,%R12,8);  (15) 
0x5d7d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	%XMM9,0x20(%RAX,%R12,8);  (15) 
0x5d84;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMULSD	0x26bbc(%RIP),%XMM10,%XMM3;  (15) 
0x5d8c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VEXTRACTF128	$0x1,%YMM14,0x10(%RAX,%R12,8);  (15) 
0x5d94;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMOVSD	%XMM3,0xa8(%RSP);  (15) 
0x5d9d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;VZEROUPPER;  (15) 
0x5da0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;CALL	7120 <exact_solution_>;  (15) 
0x5da5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	(%R15),%RCX;  (15) 
0x5da8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;LEA	0x2(%RBX),%R9D;  (15) 
0x5dac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R14,%RDX;  (15) 
0x5daf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	0x70(%RSP),%RDI;  (15) 
0x5db4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VXORPD	%XMM12,%XMM12,%XMM12;  (15) 
0x5db9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R13,%RSI;  (15) 
0x5dbc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%XMM2;  (15) 
0x5dc5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;LEA	0xa(%R12),%R11;  (15) 
0x5dca;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%YMM8;  (15) 
0x5dd3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	%R11,0x70(%RSP);  (15) 
0x5dd8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	0xe0(%RSP),%XMM6;  (15) 
0x5de1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVUPS	%XMM2,(%RCX,%RDI,8);  (15) 
0x5de6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VEXTRACTF128	$0x1,%YMM8,0x10(%RCX,%RDI,8);  (15) 
0x5dee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x90(%RSP),%RDI;  (15) 
0x5df6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VCVTSI2SD	%R9D,%XMM12,%XMM7;  (15) 
0x5dfb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	%XMM6,0x48(%RCX,%R12,8);  (15) 
0x5e02;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x88(%RSP),%RCX;  (15) 
0x5e0a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMULSD	0x26b36(%RIP),%XMM7,%XMM1;  (15) 
0x5e12;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMOVSD	%XMM1,0xa8(%RSP);  (15) 
0x5e1b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;VZEROUPPER;  (15) 
0x5e1e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;CALL	7120 <exact_solution_>;  (15) 
0x5e23;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	(%R15),%RDX;  (15) 
0x5e26;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;LEA	0x3(%RBX),%EAX;  (15) 
0x5e29;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VXORPD	%XMM0,%XMM0,%XMM0;  (15) 
0x5e2d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	0x70(%RSP),%R8;  (15) 
0x5e32;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;LEA	0xf(%R12),%RSI;  (15) 
0x5e37;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%XMM13;  (15) 
0x5e40;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	%RSI,0x70(%RSP);  (15) 
0x5e45;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R13,%RSI;  (15) 
0x5e48;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VCVTSI2SD	%EAX,%XMM0,%XMM4;  (15) 
0x5e4c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x88(%RSP),%RCX;  (15) 
0x5e54;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%YMM5;  (15) 
0x5e5d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	0xe0(%RSP),%XMM11;  (15) 
0x5e66;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVUPS	%XMM13,(%RDX,%R8,8);  (15) 
0x5e6c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VEXTRACTF128	$0x1,%YMM5,0x10(%RDX,%R8,8);  (15) 
0x5e74;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	0x90(%RSP),%RDI;  (15) 
0x5e7c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	%XMM11,0x70(%RDX,%R12,8);  (15) 
0x5e83;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMULSD	0x26abd(%RIP),%XMM4,%XMM14;  (15) 
0x5e8b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;MOV	%R14,%RDX;  (15) 
0x5e8e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:179;VMOVSD	%XMM14,0xa8(%RSP);  (15) 
0x5e97;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;VZEROUPPER;  (15) 
0x5e9a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;ADD	$0x4,%EBX;  (15) 
0x5e9d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:180;CALL	7120 <exact_solution_>;  (15) 
0x5ea2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	(%R15),%R10;  (15) 
0x5ea5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;MOV	0x70(%RSP),%RCX;  (15) 
0x5eaa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%XMM9;  (15) 
0x5eb3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVAPD	0xc0(%RSP),%YMM15;  (15) 
0x5ebc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	0xe0(%RSP),%XMM10;  (15) 
0x5ec5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVUPS	%XMM9,(%R10,%RCX,8);  (15) 
0x5ecb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VEXTRACTF128	$0x1,%YMM15,0x10(%R10,%RCX,8);  (15) 
0x5ed3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;VMOVSD	%XMM10,0x98(%R10,%R12,8);  (15) 
0x5edd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:182;ADD	$0x14,%R12;  (15) 
0x5ee1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;CMP	%EBX,0x80(%RSP);  (15) 
0x5ee8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;JNE	5cf6 <initialize_._omp_fn.0+0x15c6>;  (15) 
0x5eee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;VZEROUPPER;(14) 
0x5ef1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;ADDL	$0x1,0x78(%RSP);(14) 
0x5ef6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	0x48(%RSP),%R12;(14) 
0x5efb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	0x78(%RSP),%EBX;(14) 
0x5eff;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;ADD	%R12,0x68(%RSP);(14) 
0x5f04;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;CMP	%EBX,0x60(%RSP);(14) 
0x5f08;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;JNE	5b20 <initialize_._omp_fn.0+0x13f0>;(14) 
0x5f0e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	0x10(%R15),%R13;
0x5f12;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;MOV	(%R13),%EAX;
0x5f16;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;CLTD;
0x5f17;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:178;IDIVL	0x20(%RSP);
0x5f1b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;MOV	0x18(%R15),%R14;
0x5f1f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:192;VMOVSD	0x98(%RSP),%XMM3;
0x5f28;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:192;VMOVSD	%XMM3,0xb8(%RSP);
0x5f31;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;MOV	(%R14),%EDI;
0x5f34;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;CMP	0x2c(%RSP),%EDX;
0x5f38;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;JG	691e <initialize_._omp_fn.0+0x21ee>;
0x5f3e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;MOV	0x2c(%RSP),%R9D;
0x5f43;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;IMUL	%EAX,%R9D;
0x5f47;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;LEA	(%R9,%RDX,1),%R11D;
0x5f4b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;ADD	%R11D,%EAX;
0x5f4e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;MOV	%R11D,0x80(%RSP);
0x5f56;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;MOV	%EAX,0x68(%RSP);
0x5f5a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;CMP	%EAX,%R11D;
0x5f5d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;JGE	6396 <initialize_._omp_fn.0+0x1c66>;
0x5f63;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;LEA	-0x1(%RDI),%EAX;
0x5f66;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;MOV	0x30(%RSP),%R8;
0x5f6b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;MOVSXD	%R11D,%R10;
0x5f6e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:191;IMUL	0x48(%RSP),%R10;
0x5f74;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;CLTQ;
0x5f76;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;IMUL	0x40(%RSP),%RAX;
0x5f7c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;LEA	0xc0(%RSP),%RCX;
0x5f84;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	%RCX,0x90(%RSP);
0x5f8c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;LEA	0x1(%R8,%RAX,1),%RSI;
0x5f91;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;ADD	%RSI,%R10;
0x5f94;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	%R10,0x70(%RSP);
0x5f99;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;NOPL	(%RAX);
0x5fa0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	0x8(%R15),%RBX;(12) 
0x5fa4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:195;VXORPD	%XMM2,%XMM2,%XMM2;(12) 
0x5fa8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:195;VCVTSI2SDL	0x80(%RSP),%XMM2,%XMM8;(12) 
0x5fb1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:195;VMULSD	0x26987(%RIP),%XMM8,%XMM6;(12) 
0x5fb9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	(%RBX),%R12D;(12) 
0x5fbc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:195;VMOVSD	%XMM6,0xb0(%RSP);(12) 
0x5fc5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	%R12D,0x88(%RSP);(12) 
0x5fcd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;TEST	%R12D,%R12D;(12) 
0x5fd0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;JLE	6373 <initialize_._omp_fn.0+0x1c43>;(12) 
0x5fd6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;LEA	0xa8(%RSP),%RDX;(12) 
0x5fde;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	%R12D,%EDI;(12) 
0x5fe1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;XOR	%EBX,%EBX;(12) 
0x5fe3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	0x70(%RSP),%R12;(12) 
0x5fe8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;LEA	0xb8(%RSP),%R14;(12) 
0x5ff0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	%RDX,0x98(%RSP);(12) 
0x5ff8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;LEA	0xb0(%RSP),%R13;(12) 
0x6000;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;AND	$0x3,%EDI;(12) 
0x6003;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;JE	617a <initialize_._omp_fn.0+0x1a4a>;(12) 
0x6009;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;CMP	$0x1,%EDI;(12) 
0x600c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;JE	60fc <initialize_._omp_fn.0+0x19cc>;(12) 
0x6012;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;CMP	$0x2,%EDI;(12) 
0x6015;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;JE	608b <initialize_._omp_fn.0+0x195b>;(12) 
0x6017;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VXORPD	%XMM12,%XMM12,%XMM12;(12) 
0x601c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VCVTSI2SD	%EBX,%XMM12,%XMM7;(12) 
0x6020;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x90(%RSP),%RCX;(12) 
0x6028;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%RDX,%RDI;(12) 
0x602b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMULSD	0x26915(%RIP),%XMM7,%XMM1;(12) 
0x6033;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R14,%RDX;(12) 
0x6036;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R13,%RSI;(12) 
0x6039;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	$0x1,%EBX;(12) 
0x603e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMOVSD	%XMM1,0xa8(%RSP);(12) 
0x6047;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;CALL	7120 <exact_solution_>;(12) 
0x604c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	0x70(%RSP),%R11;(12) 
0x6051;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	(%R15),%R9;(12) 
0x6054;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%XMM13;(12) 
0x605d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%YMM5;(12) 
0x6066;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	0xe0(%RSP),%XMM11;(12) 
0x606f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;LEA	0x5(%R11),%R12;(12) 
0x6073;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVUPS	%XMM13,(%R9,%R11,8);(12) 
0x6079;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VEXTRACTF128	$0x1,%YMM5,0x10(%R9,%R11,8);(12) 
0x6081;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	%XMM11,0x20(%R9,%R11,8);(12) 
0x6088;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VZEROUPPER;(12) 
0x608b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VXORPD	%XMM0,%XMM0,%XMM0;(12) 
0x608f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VCVTSI2SD	%EBX,%XMM0,%XMM4;(12) 
0x6093;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x90(%RSP),%RCX;(12) 
0x609b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R14,%RDX;(12) 
0x609e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMULSD	0x268a2(%RIP),%XMM4,%XMM14;(12) 
0x60a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R13,%RSI;(12) 
0x60a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;ADD	$0x1,%EBX;(12) 
0x60ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x98(%RSP),%RDI;(12) 
0x60b4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMOVSD	%XMM14,0xa8(%RSP);(12) 
0x60bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;CALL	7120 <exact_solution_>;(12) 
0x60c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	(%R15),%RAX;(12) 
0x60c5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%XMM9;(12) 
0x60ce;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%YMM15;(12) 
0x60d7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	0xe0(%RSP),%XMM10;(12) 
0x60e0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVUPS	%XMM9,(%RAX,%R12,8);(12) 
0x60e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VEXTRACTF128	$0x1,%YMM15,0x10(%RAX,%R12,8);(12) 
0x60ee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	%XMM10,0x20(%RAX,%R12,8);(12) 
0x60f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;ADD	$0x5,%R12;(12) 
0x60f9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VZEROUPPER;(12) 
0x60fc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VXORPD	%XMM3,%XMM3,%XMM3;(12) 
0x6100;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VCVTSI2SD	%EBX,%XMM3,%XMM2;(12) 
0x6104;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x90(%RSP),%RCX;(12) 
0x610c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R14,%RDX;(12) 
0x610f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMULSD	0x26831(%RIP),%XMM2,%XMM8;(12) 
0x6117;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R13,%RSI;(12) 
0x611a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;ADD	$0x1,%EBX;(12) 
0x611d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x98(%RSP),%RDI;(12) 
0x6125;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMOVSD	%XMM8,0xa8(%RSP);(12) 
0x612e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;CALL	7120 <exact_solution_>;(12) 
0x6133;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	(%R15),%R8;(12) 
0x6136;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%XMM6;(12) 
0x613f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%YMM12;(12) 
0x6148;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	0xe0(%RSP),%XMM7;(12) 
0x6151;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVUPS	%XMM6,(%R8,%R12,8);(12) 
0x6157;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VEXTRACTF128	$0x1,%YMM12,0x10(%R8,%R12,8);(12) 
0x615f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	%XMM7,0x20(%R8,%R12,8);(12) 
0x6166;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;ADD	$0x5,%R12;(12) 
0x616a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;CMP	%EBX,0x88(%RSP);(12) 
0x6171;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;JE	6370 <initialize_._omp_fn.0+0x1c40>;(12) 
0x6177;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;VZEROUPPER;  (13) 
0x617a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VXORPD	%XMM1,%XMM1,%XMM1;  (13) 
0x617e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VCVTSI2SD	%EBX,%XMM1,%XMM13;  (13) 
0x6182;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x90(%RSP),%RCX;  (13) 
0x618a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R14,%RDX;  (13) 
0x618d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMULSD	0x267b3(%RIP),%XMM13,%XMM5;  (13) 
0x6195;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R13,%RSI;  (13) 
0x6198;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x98(%RSP),%RDI;  (13) 
0x61a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMOVSD	%XMM5,0xa8(%RSP);  (13) 
0x61a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;CALL	7120 <exact_solution_>;  (13) 
0x61ae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	(%R15),%RSI;  (13) 
0x61b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;LEA	0x1(%RBX),%R10D;  (13) 
0x61b5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R14,%RDX;  (13) 
0x61b8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%XMM11;  (13) 
0x61c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;LEA	0x5(%R12),%RCX;  (13) 
0x61c6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VXORPD	%XMM14,%XMM14,%XMM14;  (13) 
0x61cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	0xe0(%RSP),%XMM4;  (13) 
0x61d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	%RCX,0x78(%RSP);  (13) 
0x61d9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VCVTSI2SD	%R10D,%XMM14,%XMM9;  (13) 
0x61de;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x90(%RSP),%RCX;  (13) 
0x61e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVUPS	%XMM11,(%RSI,%R12,8);  (13) 
0x61ec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x98(%RSP),%RDI;  (13) 
0x61f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%YMM0;  (13) 
0x61fd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	%XMM4,0x20(%RSI,%R12,8);  (13) 
0x6204;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMULSD	0x2673c(%RIP),%XMM9,%XMM15;  (13) 
0x620c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VEXTRACTF128	$0x1,%YMM0,0x10(%RSI,%R12,8);  (13) 
0x6214;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R13,%RSI;  (13) 
0x6217;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMOVSD	%XMM15,0xa8(%RSP);  (13) 
0x6220;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;VZEROUPPER;  (13) 
0x6223;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;CALL	7120 <exact_solution_>;  (13) 
0x6228;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	(%R15),%RDI;  (13) 
0x622b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;LEA	0x2(%RBX),%R9D;  (13) 
0x622f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R13,%RSI;  (13) 
0x6232;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	0x78(%RSP),%RDX;  (13) 
0x6237;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VXORPD	%XMM8,%XMM8,%XMM8;  (13) 
0x623c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;LEA	0xa(%R12),%R11;  (13) 
0x6241;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%XMM10;  (13) 
0x624a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	%R11,0x78(%RSP);  (13) 
0x624f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VCVTSI2SD	%R9D,%XMM8,%XMM6;  (13) 
0x6254;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x90(%RSP),%RCX;  (13) 
0x625c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%YMM3;  (13) 
0x6265;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	0xe0(%RSP),%XMM2;  (13) 
0x626e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVUPS	%XMM10,(%RDI,%RDX,8);  (13) 
0x6273;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VEXTRACTF128	$0x1,%YMM3,0x10(%RDI,%RDX,8);  (13) 
0x627b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R14,%RDX;  (13) 
0x627e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	%XMM2,0x48(%RDI,%R12,8);  (13) 
0x6285;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMULSD	0x266bb(%RIP),%XMM6,%XMM12;  (13) 
0x628d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x98(%RSP),%RDI;  (13) 
0x6295;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMOVSD	%XMM12,0xa8(%RSP);  (13) 
0x629e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;VZEROUPPER;  (13) 
0x62a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;CALL	7120 <exact_solution_>;  (13) 
0x62a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	(%R15),%RAX;  (13) 
0x62a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;LEA	0x3(%RBX),%ESI;  (13) 
0x62ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VXORPD	%XMM5,%XMM5,%XMM5;  (13) 
0x62b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	0x78(%RSP),%R8;  (13) 
0x62b5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;LEA	0xf(%R12),%R10;  (13) 
0x62ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R14,%RDX;  (13) 
0x62bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%XMM7;  (13) 
0x62c6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	%R10,0x78(%RSP);  (13) 
0x62cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VCVTSI2SD	%ESI,%XMM5,%XMM11;  (13) 
0x62cf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x90(%RSP),%RCX;  (13) 
0x62d7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	%R13,%RSI;  (13) 
0x62da;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%YMM1;  (13) 
0x62e3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	0xe0(%RSP),%XMM13;  (13) 
0x62ec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVUPS	%XMM7,(%RAX,%R8,8);  (13) 
0x62f2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VEXTRACTF128	$0x1,%YMM1,0x10(%RAX,%R8,8);  (13) 
0x62fa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;MOV	0x98(%RSP),%RDI;  (13) 
0x6302;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	%XMM13,0x70(%RAX,%R12,8);  (13) 
0x6309;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMULSD	0x26637(%RIP),%XMM11,%XMM0;  (13) 
0x6311;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:197;VMOVSD	%XMM0,0xa8(%RSP);  (13) 
0x631a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;VZEROUPPER;  (13) 
0x631d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;ADD	$0x4,%EBX;  (13) 
0x6320;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:198;CALL	7120 <exact_solution_>;  (13) 
0x6325;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	(%R15),%RCX;  (13) 
0x6328;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;MOV	0x78(%RSP),%RDI;  (13) 
0x632d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%XMM4;  (13) 
0x6336;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVAPD	0xc0(%RSP),%YMM14;  (13) 
0x633f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	0xe0(%RSP),%XMM9;  (13) 
0x6348;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVUPS	%XMM4,(%RCX,%RDI,8);  (13) 
0x634d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VEXTRACTF128	$0x1,%YMM14,0x10(%RCX,%RDI,8);  (13) 
0x6355;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;VMOVSD	%XMM9,0x98(%RCX,%R12,8);  (13) 
0x635f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:200;ADD	$0x14,%R12;  (13) 
0x6363;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;CMP	%EBX,0x88(%RSP);  (13) 
0x636a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;JNE	6177 <initialize_._omp_fn.0+0x1a47>;  (13) 
0x6370;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;VZEROUPPER;(12) 
0x6373;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;ADDL	$0x1,0x80(%RSP);(12) 
0x637b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	0x48(%RSP),%R12;(12) 
0x6380;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;MOV	0x80(%RSP),%EBX;(12) 
0x6387;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;ADD	%R12,0x70(%RSP);(12) 
0x638c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;CMP	%EBX,0x68(%RSP);(12) 
0x6390;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;JNE	5fa0 <initialize_._omp_fn.0+0x1870>;(12) 
0x6396;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;LEA	-0x28(%RBP),%RSP;
0x639a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;POP	%RBX;
0x639b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;POP	%R12;
0x639d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;POP	%R13;
0x639f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;POP	%R14;
0x63a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;POP	%R15;
0x63a3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;POP	%RBP;
0x63a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:24;RET;
0x63a5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	0x8(%R15),%RBX;
0x63a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;VMOVSD	0x98(%RSP),%XMM13;
0x63b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:119;VMOVSD	%XMM13,0xa8(%RSP);
0x63bb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;MOV	(%RBX),%R13D;
0x63be;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;JMP	4e6e <initialize_._omp_fn.0+0x73e>;
0x63c3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:118;ADDL	$0x1,0x90(%RSP);(24) 
0x63cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;XOR	%EDI,%EDI;(24) 
0x63cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOVSXD	0x90(%RSP),%R13;(24) 
0x63d5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;JMP	4e2d <initialize_._omp_fn.0+0x6fd>;(24) 
0x63da;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	0x78(%RSP),%R15;
0x63df;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	0x70(%RSP),%RSI;
0x63e4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;VZEROUPPER;
0x63e7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;MOV	0x88(%RSP),%R10D;
0x63ef;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;VXORPD	%XMM7,%XMM7,%XMM7;
0x63f3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOVL	$0,0x24(%RSP);
0x63fb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;LEA	0xc0(%RSP),%R14;
0x6403;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	0x80(%RSP),%EAX;
0x640a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%R15,0x88(%RSP);
0x6412;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VCVTSI2SD	%R10D,%XMM7,%XMM5;
0x6417;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%R10D,0x1c(%RSP);
0x641c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%EAX,0x38(%RSP);
0x6420;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM5,0x10(%RSP);
0x6426;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;NOPW	%CS:(%RAX,%RAX,1);
0x6430;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:54;VMOVSD	0x10(%RSP),%XMM8;(22) 
0x6436;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:55;VXORPD	%XMM10,%XMM10,%XMM10;(22) 
0x643b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:54;VMULSD	0x264f5(%RIP),%XMM8,%XMM9;(22) 
0x6443;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:55;VCVTSI2SDL	0x38(%RSP),%XMM10,%XMM11;(22) 
0x6449;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;MOV	(%RSI),%EDX;(22) 
0x644b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:55;VMULSD	0x264ed(%RIP),%XMM11,%XMM12;(22) 
0x6453;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:54;VMOVSD	%XMM9,0xb8(%RSP);(22) 
0x645c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;MOV	%EDX,0x80(%RSP);(22) 
0x6463;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:55;VMOVSD	%XMM12,0xb0(%RSP);(22) 
0x646c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;TEST	%EDX,%EDX;(22) 
0x646e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;JLE	67ff <initialize_._omp_fn.0+0x20cf>;(22) 
0x6474;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOVSXD	0x1c(%RSP),%R13;(22) 
0x6479;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0x100(%RSP),%RCX;(22) 
0x6481;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;XOR	%R15D,%R15D;(22) 
0x6484;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;IMUL	0x40(%RSP),%R13;(22) 
0x648a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	%RCX,0x70(%RSP);(22) 
0x648f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOVSXD	0x38(%RSP),%RDI;(22) 
0x6494;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0x178(%RSP),%R8;(22) 
0x649c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;IMUL	0x48(%RSP),%RDI;(22) 
0x64a2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	%R8,0x58(%RSP);(22) 
0x64a7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;ADD	0x30(%RSP),%R13;(22) 
0x64ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0x128(%RSP),%R9;(22) 
0x64b4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	%R9,0x68(%RSP);(22) 
0x64b9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0x1a0(%RSP),%R11;(22) 
0x64c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0x150(%RSP),%RSI;(22) 
0x64c9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	%R11,0x50(%RSP);(22) 
0x64ce;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0x1c8(%RSP),%R10;(22) 
0x64d6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	%RSI,0x60(%RSP);(22) 
0x64db;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0x1(%R13,%RDI,1),%RDI;(22) 
0x64e0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	%R10,0x78(%RSP);(22) 
0x64e5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0xb8(%RSP),%R13;(22) 
0x64ed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0xb0(%RSP),%R12;(22) 
0x64f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;LEA	0xa8(%RSP),%RBX;(22) 
0x64fd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;JMP	6503 <initialize_._omp_fn.0+0x1dd3>;(22) 
0x64ff;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;NOP;
0x6500;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VZEROUPPER;  (23) 
0x6503;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:57;VXORPD	%XMM13,%XMM13,%XMM13;  (23) 
0x6508;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:57;VCVTSI2SD	%R15D,%XMM13,%XMM14;  (23) 
0x650d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	0x70(%RSP),%RCX;  (23) 
0x6512;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	%R13,%RDX;  (23) 
0x6515;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:57;VMULSD	0x2642b(%RIP),%XMM14,%XMM15;  (23) 
0x651d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	%R12,%RSI;  (23) 
0x6520;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	%RDI,0x90(%RSP);  (23) 
0x6528;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	%R14,%RDI;  (23) 
0x652b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOVQ	$0,0xc0(%RSP);  (23) 
0x6537;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;ADD	$0x1,%R15D;  (23) 
0x653b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:57;VMOVSD	%XMM15,0xa8(%RSP);  (23) 
0x6544;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;CALL	7120 <exact_solution_>;  (23) 
0x6549;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	0x58(%RSP),%RCX;  (23) 
0x654e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	%R13,%RDX;  (23) 
0x6551;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	%R12,%RSI;  (23) 
0x6554;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;VMOVSD	0x98(%RSP),%XMM6;  (23) 
0x655d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;MOV	%R14,%RDI;  (23) 
0x6560;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;VMOVSD	%XMM6,0xc0(%RSP);  (23) 
0x6569;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:61;CALL	7120 <exact_solution_>;  (23) 
0x656e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOV	0x68(%RSP),%RCX;  (23) 
0x6573;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOV	%R13,%RDX;  (23) 
0x6576;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOV	%R14,%RSI;  (23) 
0x6579;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOVQ	$0,0xc0(%RSP);  (23) 
0x6585;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOV	%RBX,%RDI;  (23) 
0x6588;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;CALL	7120 <exact_solution_>;  (23) 
0x658d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOV	0x50(%RSP),%RCX;  (23) 
0x6592;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOV	%R13,%RDX;  (23) 
0x6595;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOV	%R14,%RSI;  (23) 
0x6598;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;VMOVSD	0x98(%RSP),%XMM0;  (23) 
0x65a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;MOV	%RBX,%RDI;  (23) 
0x65a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;VMOVSD	%XMM0,0xc0(%RSP);  (23) 
0x65ad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:66;CALL	7120 <exact_solution_>;  (23) 
0x65b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOV	0x60(%RSP),%RCX;  (23) 
0x65b7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOV	%R14,%RDX;  (23) 
0x65ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOV	%R12,%RSI;  (23) 
0x65bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOVQ	$0,0xc0(%RSP);  (23) 
0x65c9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOV	%RBX,%RDI;  (23) 
0x65cc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;CALL	7120 <exact_solution_>;  (23) 
0x65d1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOV	0x78(%RSP),%RCX;  (23) 
0x65d6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOV	%R14,%RDX;  (23) 
0x65d9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOV	%RBX,%RDI;  (23) 
0x65dc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;VMOVSD	0x98(%RSP),%XMM1;  (23) 
0x65e5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;MOV	%R12,%RSI;  (23) 
0x65e8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;VMOVSD	%XMM1,0xc0(%RSP);  (23) 
0x65f1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:71;CALL	7120 <exact_solution_>;  (23) 
0x65f6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	0x88(%RSP),%RAX;  (23) 
0x65fe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMOVSD	0xa8(%RSP),%XMM2;  (23) 
0x6607;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMULSD	0x178(%RSP),%XMM2,%XMM10;  (23) 
0x6610;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMULSD	0x180(%RSP),%XMM2,%XMM4;  (23) 
0x6619;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMULSD	0x188(%RSP),%XMM2,%XMM11;  (23) 
0x6622;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMULSD	0x190(%RSP),%XMM2,%XMM9;  (23) 
0x662b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMOVSD	0xb0(%RSP),%XMM12;  (23) 
0x6634;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMOVSD	0xb8(%RSP),%XMM13;  (23) 
0x663d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMOVSD	0x98(%RSP),%XMM3;  (23) 
0x6646;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VUNPCKLPD	%XMM4,%XMM10,%XMM15;  (23) 
0x664a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMULSD	0x1a0(%RSP),%XMM12,%XMM4;  (23) 
0x6653;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VSUBSD	%XMM2,%XMM3,%XMM8;  (23) 
0x6657;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VUNPCKLPD	%XMM9,%XMM11,%XMM14;  (23) 
0x665c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VINSERTF128	$0x1,%XMM14,%YMM15,%YMM6;  (23) 
0x6662;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	(%RAX),%RDX;  (23) 
0x6665;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMULSD	0x1a8(%RSP),%XMM12,%XMM11;  (23) 
0x666e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VSUBSD	%XMM12,%XMM3,%XMM7;  (23) 
0x6673;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMULSD	0x1b8(%RSP),%XMM12,%XMM10;  (23) 
0x667c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VSUBSD	%XMM13,%XMM3,%XMM5;  (23) 
0x6681;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMULSD	0x1b0(%RSP),%XMM12,%XMM3;  (23) 
0x668a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMOVDDUP	%XMM8,%XMM0;  (23) 
0x668f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VINSERTF128	$0x1,%XMM0,%YMM0,%YMM0;  (23) 
0x6695;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMULPD	0x100(%RSP),%YMM0,%YMM1;  (23) 
0x669e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMOVUPD	0x128(%RSP),%XMM0;  (23) 
0x66a7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VADDPD	%YMM1,%YMM6,%YMM14;  (23) 
0x66ab;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VINSERTF128	$0x1,0x138(%RSP),%YMM0,%YMM1;  (23) 
0x66b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMULSD	0x198(%RSP),%XMM2,%XMM2;  (23) 
0x66bf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VUNPCKLPD	%XMM11,%XMM4,%XMM15;  (23) 
0x66c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMOVDDUP	%XMM7,%XMM4;  (23) 
0x66c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VINSERTF128	$0x1,%XMM4,%YMM4,%YMM4;  (23) 
0x66ce;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMULPD	%YMM4,%YMM1,%YMM11;  (23) 
0x66d2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VMULSD	0x120(%RSP),%XMM8,%XMM8;  (23) 
0x66db;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VUNPCKLPD	%XMM10,%XMM3,%XMM9;  (23) 
0x66e0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VINSERTF128	$0x1,%XMM9,%YMM15,%YMM6;  (23) 
0x66e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMULSD	0x1d0(%RSP),%XMM13,%XMM10;  (23) 
0x66ef;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VADDPD	%YMM11,%YMM6,%YMM15;  (23) 
0x66f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMULSD	0x1c8(%RSP),%XMM13,%XMM9;  (23) 
0x66fd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMULSD	0x1d8(%RSP),%XMM13,%XMM3;  (23) 
0x6706;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMULSD	0x1e0(%RSP),%XMM13,%XMM6;  (23) 
0x670f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMOVAPD	0x150(%RSP),%XMM11;  (23) 
0x6718;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMULSD	0x1c0(%RSP),%XMM12,%XMM12;  (23) 
0x6721;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VUNPCKLPD	%XMM10,%XMM9,%XMM1;  (23) 
0x6726;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMOVDDUP	%XMM5,%XMM10;  (23) 
0x672a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VINSERTF128	$0x1,0x160(%RSP),%YMM11,%YMM9;  (23) 
0x6735;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VINSERTF128	$0x1,%XMM10,%YMM10,%YMM10;  (23) 
0x673b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VMULSD	0x148(%RSP),%XMM7,%XMM7;  (23) 
0x6744;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VUNPCKLPD	%XMM6,%XMM3,%XMM0;  (23) 
0x6748;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VADDPD	%YMM14,%YMM15,%YMM6;  (23) 
0x674d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMULPD	%YMM10,%YMM9,%YMM3;  (23) 
0x6752;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VINSERTF128	$0x1,%XMM0,%YMM1,%YMM4;  (23) 
0x6758;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VADDPD	%YMM3,%YMM4,%YMM0;  (23) 
0x675c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMULPD	%YMM14,%YMM15,%YMM1;  (23) 
0x6761;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;MOV	0x90(%RSP),%RDI;  (23) 
0x6769;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMULSD	0x1e8(%RSP),%XMM13,%XMM13;  (23) 
0x6772;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VMULSD	0x170(%RSP),%XMM5,%XMM5;  (23) 
0x677b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VADDPD	%YMM0,%YMM6,%YMM4;  (23) 
0x677f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMULPD	%YMM0,%YMM1,%YMM3;  (23) 
0x6783;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMULPD	%YMM0,%YMM14,%YMM14;  (23) 
0x6787;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMULPD	%YMM0,%YMM15,%YMM15;  (23) 
0x678b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:76;VADDSD	%XMM8,%XMM2,%XMM6;  (23) 
0x6790;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VSUBPD	%YMM1,%YMM4,%YMM11;  (23) 
0x6794;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:78;VADDSD	%XMM7,%XMM12,%XMM1;  (23) 
0x6798;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VSUBPD	%YMM14,%YMM11,%YMM9;  (23) 
0x679d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:80;VADDSD	%XMM5,%XMM13,%XMM11;  (23) 
0x67a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMULSD	%XMM1,%XMM6,%XMM4;  (23) 
0x67a5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VADDSD	%XMM1,%XMM6,%XMM14;  (23) 
0x67a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VSUBPD	%YMM15,%YMM9,%YMM10;  (23) 
0x67ae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VADDSD	%XMM11,%XMM14,%XMM9;  (23) 
0x67b3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VADDPD	%YMM3,%YMM10,%YMM0;  (23) 
0x67b7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMULSD	%XMM11,%XMM6,%XMM10;  (23) 
0x67bc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMULSD	%XMM4,%XMM11,%XMM8;  (23) 
0x67c0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VSUBSD	%XMM4,%XMM9,%XMM15;  (23) 
0x67c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMOVUPS	%XMM0,(%RDX,%RDI,8);  (23) 
0x67c9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VEXTRACTF128	$0x1,%YMM0,0x10(%RDX,%RDI,8);  (23) 
0x67d1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMULSD	%XMM11,%XMM1,%XMM0;  (23) 
0x67d6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VSUBSD	%XMM10,%XMM15,%XMM3;  (23) 
0x67db;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VSUBSD	%XMM0,%XMM3,%XMM2;  (23) 
0x67df;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VADDSD	%XMM8,%XMM2,%XMM6;  (23) 
0x67e4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;VMOVSD	%XMM6,0x20(%RDX,%RDI,8);  (23) 
0x67ea;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:84;ADD	$0x5,%RDI;  (23) 
0x67ee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;CMP	%R15D,0x80(%RSP);  (23) 
0x67f6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;JNE	6500 <initialize_._omp_fn.0+0x1dd0>;  (23) 
0x67fc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;VZEROUPPER;(22) 
0x67ff;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;MOV	0x24(%RSP),%ECX;(22) 
0x6803;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;CMP	%ECX,0x28(%RSP);(22) 
0x6807;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;JE	6830 <initialize_._omp_fn.0+0x2100>;(22) 
0x6809;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;ADDL	$0x1,0x38(%RSP);(22) 
0x680e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;MOV	0x38(%RSP),%R8D;(22) 
0x6813;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;CMP	%R8D,0x3c(%RSP);(22) 
0x6818;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;JLE	6868 <initialize_._omp_fn.0+0x2138>;(22) 
0x681a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;MOV	0x88(%RSP),%R11;(22) 
0x6822;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;ADDL	$0x1,0x24(%RSP);(22) 
0x6827;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;MOV	0x8(%R11),%RSI;(22) 
0x682b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;JMP	6430 <initialize_._omp_fn.0+0x1d00>;(22) 
0x6830;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:56;MOV	0x88(%RSP),%R15;
0x6838;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOVQ	$0,0xa8(%RSP);
0x6844;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOV	0x18(%R15),%R14;
0x6848;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOV	0x10(%R15),%RSI;
0x684c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOV	(%R14),%R12D;
0x684f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOV	(%RSI),%R10D;
0x6852;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;MOV	%R10D,0x3c(%RSP);
0x6857;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;TEST	%R12D,%R12D;
0x685a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;JG	47e5 <initialize_._omp_fn.0+0xb5>;
0x6860;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;JMP	51a9 <initialize_._omp_fn.0+0xa79>;
0x6865;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;NOPL	(%RAX);
0x6868;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;ADDL	$0x1,0x1c(%RSP);(22) 
0x686d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:100;VXORPD	%XMM12,%XMM12,%XMM12;(22) 
0x6872;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOVL	$0,0x38(%RSP);(22) 
0x687a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	0x1c(%RSP),%R9D;(22) 
0x687f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VCVTSI2SD	%R9D,%XMM12,%XMM7;(22) 
0x6884;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM7,0x10(%RSP);(22) 
0x688a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JMP	681a <initialize_._omp_fn.0+0x20ea>;(22) 
0x688c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;XOR	%EAX,%EAX;(24) 
0x688e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JMP	4daf <initialize_._omp_fn.0+0x67f>;(24) 
0x6893;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;VZEROUPPER;
0x6896;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;JMP	51bb <initialize_._omp_fn.0+0xa8b>;
0x689b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;ADDL	$0x1,0x68(%RSP);(20) 
0x68a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:35;VXORPD	%XMM1,%XMM1,%XMM1;(20) 
0x68a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;XOR	%R8D,%R8D;(20) 
0x68a7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOVSXD	0x68(%RSP),%R9;(20) 
0x68ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VCVTSI2SD	%R9D,%XMM1,%XMM13;(20) 
0x68b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%R9,0x90(%RSP);(20) 
0x68b9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM13,0x88(%RSP);(20) 
0x68c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JMP	509f <initialize_._omp_fn.0+0x96f>;(20) 
0x68c7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;ADDL	$0x1,0x68(%RSP);(21) 
0x68cc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VXORPD	%XMM1,%XMM1,%XMM1;(21) 
0x68d0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;XOR	%R8D,%R8D;(21) 
0x68d3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOVSXD	0x68(%RSP),%RDX;(21) 
0x68d8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VCVTSI2SD	%EDX,%XMM1,%XMM13;(21) 
0x68dc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%RDX,0x90(%RSP);(21) 
0x68e4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM13,0x88(%RSP);(21) 
0x68ed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JMP	49f1 <initialize_._omp_fn.0+0x2c1>;(21) 
0x68f2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADD	$0x1,%R10D;
0x68f6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;XOR	%EDX,%EDX;
0x68f8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;JMP	4e93 <initialize_._omp_fn.0+0x763>;
0x68fd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:196;ADD	$0x1,%R8D;
0x6901;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;XOR	%EDX,%EDX;
0x6903;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;JMP	47b1 <initialize_._omp_fn.0+0x81>;
0x6908;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32;LEA	0x1(%RAX),%R14D;
0x690c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;XOR	%R9D,%R9D;
0x690f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;JMP	5ad0 <initialize_._omp_fn.0+0x13a0>;
0x6914;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:175;ADD	$0x1,%EAX;
0x6917;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:156;XOR	%EDX,%EDX;
0x6919;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:156;JMP	5655 <initialize_._omp_fn.0+0xf25>;
0x691e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:156;ADD	$0x1,%EAX;
0x6921;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:192;XOR	%EDX,%EDX;
0x6923;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:192;JMP	5f3e <initialize_._omp_fn.0+0x180e>;
0x6928;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:192;ADD	$0x1,%ECX;
0x692b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;XOR	%EDX,%EDX;
0x692d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JMP	4807 <initialize_._omp_fn.0+0xd7>;
0x6932;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;LEA	0x1(%RAX),%R13D;
0x6936;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;XOR	%R12D,%R12D;
0x6939;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;JMP	51e8 <initialize_._omp_fn.0+0xab8>;
0x693e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;ADDL	$0x1,0x68(%RSP);
0x6943;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:138;VXORPD	%XMM8,%XMM8,%XMM8;
0x6948;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;XOR	%R8D,%R8D;
0x694b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOVSXD	0x68(%RSP),%RCX;
0x6950;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VCVTSI2SD	%ECX,%XMM8,%XMM6;
0x6954;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;MOV	%RCX,0x90(%RSP);
0x695c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VMOVSD	%XMM6,0x88(%RSP);
0x6965;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;JMP	4926 <initialize_._omp_fn.0+0x1f6>;
0x696a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;ADDL	$0x1,0x68(%RSP);
0x696f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:108;VXORPD	%XMM8,%XMM8,%XMM8;
0x6974;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;XOR	%R8D,%R8D;
0x6977;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOVSXD	0x68(%RSP),%RDX;
0x697c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VCVTSI2SD	%EDX,%XMM8,%XMM6;
0x6980;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%RDX,0x90(%RSP);
0x6988;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM6,0x88(%RSP);
0x6991;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JMP	4fd1 <initialize_._omp_fn.0+0x8a1>;
0x6996;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	0x21a1a(%RIP),%XMM1;
0x699e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;LEA	-0x1(%R8),%R10D;
0x69a2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;MOV	%R10D,0x28(%RSP);
0x69a7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;VMOVSD	%XMM1,0x98(%RSP);
0x69b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:127;JMP	63e7 <initialize_._omp_fn.0+0x1cb7>;
0x69b5;:0;NOPW	%CS:(%RAX,%RAX,1);
