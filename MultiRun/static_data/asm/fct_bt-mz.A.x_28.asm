address;source_location;insn;indent
0x18460;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;PUSH	%R15;
0x18462;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;PUSH	%R14;
0x18464;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;PUSH	%R13;
0x18466;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;PUSH	%R12;
0x18468;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;PUSH	%RBP;
0x18469;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;PUSH	%RBX;
0x1846a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;SUB	$0x18,%RSP;
0x1846e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	0x18(%RDI),%RAX;
0x18472;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	0x10(%RDI),%RDX;
0x18476;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	(%RAX),%ECX;
0x18478;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	(%RDX),%R15D;
0x1847b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;CMP	$0x2,%ECX;
0x1847e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;JLE	186b0 <copy_x_face_._omp_fn.1+0x250>;
0x18484;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;CMP	$0x2,%R15D;
0x18488;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;JLE	186b0 <copy_x_face_._omp_fn.1+0x250>;
0x1848e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;LEA	-0x2(%RCX),%R14D;
0x18492;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	%RDI,%R13;
0x18495;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;CALL	2300 <@plt_start@+0x2e0>;
0x1849a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;LEA	-0x2(%R15),%R12D;
0x1849e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;IMUL	%R12D,%R14D;
0x184a2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	%EAX,%EBX;
0x184a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;CALL	22a0 <@plt_start@+0x280>;
0x184a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;XOR	%EDX,%EDX;
0x184ab;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	%EAX,%ESI;
0x184ad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	%R14D,%EAX;
0x184b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;DIV	%EBX;
0x184b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	%EAX,%R14D;
0x184b5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;CMP	%EDX,%ESI;
0x184b7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;JB	186d3 <copy_x_face_._omp_fn.1+0x273>;
0x184bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;IMUL	%R14D,%ESI;
0x184c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;LEA	(%RSI,%RDX,1),%EAX;
0x184c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;LEA	(%R14,%RAX,1),%EDI;
0x184c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;CMP	%EDI,%EAX;
0x184ca;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;JAE	186b0 <copy_x_face_._omp_fn.1+0x250>;
0x184d0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:260;LEA	-0x1(%R15),%R8D;
0x184d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:260;XOR	%EDX,%EDX;
0x184d6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOVSXD	0x48(%R13),%R15;
0x184da;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;DIV	%R12D;
0x184dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	0x40(%R13),%R9;
0x184e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	0x38(%R13),%R10;
0x184e5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	0x30(%R13),%R11;
0x184e9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	0x28(%R13),%RBX;
0x184ed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;LEA	-0x1(%R14),%ESI;
0x184f1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	0x20(%R13),%RBP;
0x184f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;MOV	%ESI,0x8(%RSP);
0x184f9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	(%R13),%R12;
0x184fd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%R15,%R15,4),%R15;
0x18501;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;XOR	%ESI,%ESI;
0x18503;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;AND	$0x1,%R14D;
0x18507;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	0x8(%R13),%R13;
0x1850b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	0x1(%RAX),%EDI;
0x1850e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%EDI,0xc(%RSP);
0x18512;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	0x1(%RDX),%ECX;
0x18515;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOVSXD	%EDI,%RDI;
0x18518;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JNE	1861d <copy_x_face_._omp_fn.1+0x1bd>;
0x1851e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%R10,%RSI;
0x18521;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOVSXD	%ECX,%RCX;
0x18524;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%R11,%R14;
0x18527;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RDI,%RSI;
0x1852b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RCX,%R14;
0x1852f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%RCX,%RCX,4),%RCX;
0x18533;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R9,%RSI;
0x18536;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R14,%RSI;
0x18539;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%RBP,%R14;
0x1853c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RDI,%R14;
0x18540;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R15,%RSI;
0x18543;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%R12,%RSI,8),%RSI;
0x18547;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x8(%RSI),%XMM0;
0x1854c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%RBX,%R14;
0x1854f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%RCX,%R14;
0x18552;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%R13,%R14,8),%R14;
0x18557;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM0,0x8(%R14);
0x1855d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x10(%RSI),%XMM1;
0x18562;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	0x2(%RDX),%ECX;
0x18565;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM1,0x10(%R14);
0x1856b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x18(%RSI),%XMM2;
0x18570;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM2,0x18(%R14);
0x18576;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x20(%RSI),%XMM3;
0x1857b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM3,0x20(%R14);
0x18581;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x28(%RSI),%XMM4;
0x18586;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM4,0x28(%R14);
0x1858c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;CMP	%ECX,%R8D;
0x1858f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JLE	186de <copy_x_face_._omp_fn.1+0x27e>;
0x18595;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	$0x1,%ESI;
0x1859a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JMP	1861d <copy_x_face_._omp_fn.1+0x1bd>;
0x1859f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;NOP;
0x185a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%R10,%RAX;(105) 
0x185a3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOVSXD	%ECX,%RDX;(105) 
0x185a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%R11,%R14;(105) 
0x185a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RDI,%RAX;(105) 
0x185ad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	$0x1,%ECX;(105) 
0x185b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	$0x1,%ESI;(105) 
0x185b3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RDX,%R14;(105) 
0x185b7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%RDX,%RDX,4),%RDX;(105) 
0x185bb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R9,%RAX;(105) 
0x185be;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R14,%RAX;(105) 
0x185c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%RBP,%R14;(105) 
0x185c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RDI,%R14;(105) 
0x185c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R15,%RAX;(105) 
0x185cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%R12,%RAX,8),%RAX;(105) 
0x185cf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x8(%RAX),%XMM10;(105) 
0x185d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%RBX,%R14;(105) 
0x185d7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%RDX,%R14;(105) 
0x185da;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%R13,%R14,8),%R14;(105) 
0x185df;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM10,0x8(%R14);(105) 
0x185e5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x10(%RAX),%XMM11;(105) 
0x185ea;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM11,0x10(%R14);(105) 
0x185f0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x18(%RAX),%XMM12;(105) 
0x185f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM12,0x18(%R14);(105) 
0x185fb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x20(%RAX),%XMM13;(105) 
0x18600;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM13,0x20(%R14);(105) 
0x18606;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x28(%RAX),%XMM14;(105) 
0x1860b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM14,0x28(%R14);(105) 
0x18611;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;CMP	%ECX,%R8D;(105) 
0x18614;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JLE	186bf <copy_x_face_._omp_fn.1+0x25f>;(105) 
0x1861a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	$0x1,%ESI;(105) 
0x1861d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%R10,%RAX;(105) 
0x18620;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOVSXD	%ECX,%RDX;(105) 
0x18623;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%R11,%R14;(105) 
0x18626;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RDI,%RAX;(105) 
0x1862a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RDX,%R14;(105) 
0x1862e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%RDX,%RDX,4),%RDX;(105) 
0x18632;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R9,%RAX;(105) 
0x18635;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R14,%RAX;(105) 
0x18638;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%RBP,%R14;(105) 
0x1863b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;IMUL	%RDI,%R14;(105) 
0x1863f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%R15,%RAX;(105) 
0x18642;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%R12,%RAX,8),%RAX;(105) 
0x18646;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x8(%RAX),%XMM5;(105) 
0x1864b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%RBX,%R14;(105) 
0x1864e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	%RDX,%R14;(105) 
0x18651;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;LEA	(%R13,%R14,8),%R14;(105) 
0x18656;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM5,0x8(%R14);(105) 
0x1865c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x10(%RAX),%XMM6;(105) 
0x18661;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM6,0x10(%R14);(105) 
0x18667;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x18(%RAX),%XMM7;(105) 
0x1866c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM7,0x18(%R14);(105) 
0x18672;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x20(%RAX),%XMM8;(105) 
0x18677;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM8,0x20(%R14);(105) 
0x1867d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	0x28(%RAX),%XMM9;(105) 
0x18682;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;VMOVSD	%XMM9,0x28(%R14);(105) 
0x18688;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;CMP	0x8(%RSP),%ESI;(105) 
0x1868c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JE	186b0 <copy_x_face_._omp_fn.1+0x250>;(105) 
0x1868e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	$0x1,%ECX;(105) 
0x18691;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;CMP	%ECX,%R8D;(105) 
0x18694;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JG	185a0 <copy_x_face_._omp_fn.1+0x140>;(105) 
0x1869a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADDL	$0x1,0xc(%RSP);(105) 
0x1869f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	$0x1,%ECX;(105) 
0x186a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOVSXD	0xc(%RSP),%RDI;(105) 
0x186a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JMP	185a0 <copy_x_face_._omp_fn.1+0x140>;(105) 
0x186ae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;XCHG	%AX,%AX;
0x186b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;ADD	$0x18,%RSP;
0x186b4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;POP	%RBX;
0x186b5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;POP	%RBP;
0x186b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;POP	%R12;
0x186b8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;POP	%R13;
0x186ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;POP	%R14;
0x186bc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;POP	%R15;
0x186be;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;RET;
0x186bf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;ADDL	$0x1,0xc(%RSP);(105) 
0x186c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	$0x1,%ECX;(105) 
0x186c9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOVSXD	0xc(%RSP),%RDI;(105) 
0x186ce;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JMP	1861a <copy_x_face_._omp_fn.1+0x1ba>;(105) 
0x186d3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;ADD	$0x1,%R14D;
0x186d7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;XOR	%EDX,%EDX;
0x186d9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;JMP	184bd <copy_x_face_._omp_fn.1+0x5d>;
0x186de;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257;ADD	$0x2,%EAX;
0x186e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	$0x1,%ECX;
0x186e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOV	%EAX,0xc(%RSP);
0x186ea;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;MOVSXD	%EAX,%RDI;
0x186ed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:261;JMP	18595 <copy_x_face_._omp_fn.1+0x135>;
0x186f2;:0;NOPW	%CS:(%RAX,%RAX,1);
0x186fd;:0;NOPL	(%RAX);
