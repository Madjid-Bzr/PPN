address;source_location;insn;indent
0x181c0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;PUSH	%R15;
0x181c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;PUSH	%R14;
0x181c4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;PUSH	%R13;
0x181c6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;PUSH	%R12;
0x181c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;PUSH	%RBP;
0x181c9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;PUSH	%RBX;
0x181ca;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;SUB	$0x18,%RSP;
0x181ce;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	0x18(%RDI),%RAX;
0x181d2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	0x10(%RDI),%RDX;
0x181d6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	(%RAX),%ECX;
0x181d8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	(%RDX),%R15D;
0x181db;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;CMP	$0x2,%ECX;
0x181de;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;JLE	18410 <copy_x_face_._omp_fn.0+0x250>;
0x181e4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;CMP	$0x2,%R15D;
0x181e8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;JLE	18410 <copy_x_face_._omp_fn.0+0x250>;
0x181ee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;LEA	-0x2(%RCX),%R14D;
0x181f2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	%RDI,%R13;
0x181f5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;CALL	2300 <@plt_start@+0x2e0>;
0x181fa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;LEA	-0x2(%R15),%R12D;
0x181fe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;IMUL	%R12D,%R14D;
0x18202;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	%EAX,%EBX;
0x18204;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;CALL	22a0 <@plt_start@+0x280>;
0x18209;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;XOR	%EDX,%EDX;
0x1820b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	%EAX,%ESI;
0x1820d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	%R14D,%EAX;
0x18210;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;DIV	%EBX;
0x18212;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	%EAX,%R14D;
0x18215;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;CMP	%EDX,%ESI;
0x18217;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;JB	18433 <copy_x_face_._omp_fn.0+0x273>;
0x1821d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;IMUL	%R14D,%ESI;
0x18221;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;LEA	(%RSI,%RDX,1),%EAX;
0x18224;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;LEA	(%R14,%RAX,1),%EDI;
0x18228;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;CMP	%EDI,%EAX;
0x1822a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;JAE	18410 <copy_x_face_._omp_fn.0+0x250>;
0x18230;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:249;LEA	-0x1(%R15),%R8D;
0x18234;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:249;XOR	%EDX,%EDX;
0x18236;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOVSXD	0x48(%R13),%R15;
0x1823a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;DIV	%R12D;
0x1823d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	0x40(%R13),%R9;
0x18241;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	0x38(%R13),%R10;
0x18245;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	0x30(%R13),%R11;
0x18249;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	0x28(%R13),%RBX;
0x1824d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;LEA	-0x1(%R14),%ESI;
0x18251;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	0x20(%R13),%RBP;
0x18255;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;MOV	%ESI,0x8(%RSP);
0x18259;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	0x8(%R13),%R12;
0x1825d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%R15,%R15,4),%R15;
0x18261;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;XOR	%ESI,%ESI;
0x18263;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;AND	$0x1,%R14D;
0x18267;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	(%R13),%R13;
0x1826b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	0x1(%RAX),%EDI;
0x1826e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	%EDI,0xc(%RSP);
0x18272;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	0x1(%RDX),%ECX;
0x18275;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOVSXD	%EDI,%RDI;
0x18278;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JNE	1837a <copy_x_face_._omp_fn.0+0x1ba>;
0x1827e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	%RBP,%RSI;
0x18281;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOVSXD	%ECX,%RCX;
0x18284;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%RDI,%RSI;
0x18288;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%RCX,%RCX,4),%R14;
0x1828c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%R11,%RCX;
0x18290;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%RBX,%RSI;
0x18293;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%R14,%RSI;
0x18296;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%R12,%RSI,8),%R14;
0x1829a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	%R10,%RSI;
0x1829d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%RDI,%RSI;
0x182a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x8(%R14),%XMM0;
0x182a7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%R9,%RSI;
0x182aa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%RSI,%RCX;
0x182ad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%R15,%RCX;
0x182b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%R13,%RCX,8),%RCX;
0x182b5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM0,0x8(%RCX);
0x182ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x10(%R14),%XMM1;
0x182c0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM1,0x10(%RCX);
0x182c5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x18(%R14),%XMM2;
0x182cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM2,0x18(%RCX);
0x182d0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x20(%R14),%XMM3;
0x182d6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM3,0x20(%RCX);
0x182db;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x28(%R14),%XMM4;
0x182e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM4,0x28(%RCX);
0x182e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	0x2(%RDX),%ECX;
0x182e9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;CMP	%ECX,%R8D;
0x182ec;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JLE	1843e <copy_x_face_._omp_fn.0+0x27e>;
0x182f2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	$0x1,%ESI;
0x182f7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JMP	1837a <copy_x_face_._omp_fn.0+0x1ba>;
0x182fc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;NOPL	(%RAX);
0x18300;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	%RBP,%RAX;(104) 
0x18303;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOVSXD	%ECX,%R14;(104) 
0x18306;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	$0x1,%ECX;(104) 
0x18309;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%RDI,%RAX;(104) 
0x1830d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	$0x1,%ESI;(104) 
0x18310;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%R14,%R14,4),%RDX;(104) 
0x18314;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%R11,%R14;(104) 
0x18318;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%RBX,%RAX;(104) 
0x1831b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%RDX,%RAX;(104) 
0x1831e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%R12,%RAX,8),%RDX;(104) 
0x18322;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	%R10,%RAX;(104) 
0x18325;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%RDI,%RAX;(104) 
0x18329;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x8(%RDX),%XMM10;(104) 
0x1832e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%R9,%RAX;(104) 
0x18331;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%RAX,%R14;(104) 
0x18334;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%R15,%R14;(104) 
0x18337;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%R13,%R14,8),%R14;(104) 
0x1833c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM10,0x8(%R14);(104) 
0x18342;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x10(%RDX),%XMM11;(104) 
0x18347;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM11,0x10(%R14);(104) 
0x1834d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x18(%RDX),%XMM12;(104) 
0x18352;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM12,0x18(%R14);(104) 
0x18358;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x20(%RDX),%XMM13;(104) 
0x1835d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM13,0x20(%R14);(104) 
0x18363;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x28(%RDX),%XMM14;(104) 
0x18368;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM14,0x28(%R14);(104) 
0x1836e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;CMP	%ECX,%R8D;(104) 
0x18371;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JLE	1841f <copy_x_face_._omp_fn.0+0x25f>;(104) 
0x18377;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	$0x1,%ESI;(104) 
0x1837a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	%RBP,%R14;(104) 
0x1837d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOVSXD	%ECX,%RDX;(104) 
0x18380;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%RDI,%R14;(104) 
0x18384;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%RDX,%RDX,4),%RAX;(104) 
0x18388;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%R11,%RDX;(104) 
0x1838c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%RBX,%R14;(104) 
0x1838f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%RAX,%R14;(104) 
0x18392;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	%R10,%RAX;(104) 
0x18395;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;IMUL	%RDI,%RAX;(104) 
0x18399;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%R12,%R14,8),%R14;(104) 
0x1839d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x8(%R14),%XMM5;(104) 
0x183a3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%R9,%RAX;(104) 
0x183a6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%RAX,%RDX;(104) 
0x183a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	%R15,%RDX;(104) 
0x183ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;LEA	(%R13,%RDX,8),%RDX;(104) 
0x183b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM5,0x8(%RDX);(104) 
0x183b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x10(%R14),%XMM6;(104) 
0x183bc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM6,0x10(%RDX);(104) 
0x183c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x18(%R14),%XMM7;(104) 
0x183c7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM7,0x18(%RDX);(104) 
0x183cc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x20(%R14),%XMM8;(104) 
0x183d2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM8,0x20(%RDX);(104) 
0x183d7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	0x28(%R14),%XMM9;(104) 
0x183dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;VMOVSD	%XMM9,0x28(%RDX);(104) 
0x183e2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;CMP	0x8(%RSP),%ESI;(104) 
0x183e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JE	18410 <copy_x_face_._omp_fn.0+0x250>;(104) 
0x183e8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	$0x1,%ECX;(104) 
0x183eb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;CMP	%ECX,%R8D;(104) 
0x183ee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JG	18300 <copy_x_face_._omp_fn.0+0x140>;(104) 
0x183f4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADDL	$0x1,0xc(%RSP);(104) 
0x183f9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	$0x1,%ECX;(104) 
0x183fe;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOVSXD	0xc(%RSP),%RDI;(104) 
0x18403;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JMP	18300 <copy_x_face_._omp_fn.0+0x140>;(104) 
0x18408;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;NOPL	(%RAX,%RAX,1);
0x18410;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;ADD	$0x18,%RSP;
0x18414;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;POP	%RBX;
0x18415;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;POP	%RBP;
0x18416;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;POP	%R12;
0x18418;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;POP	%R13;
0x1841a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;POP	%R14;
0x1841c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;POP	%R15;
0x1841e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;RET;
0x1841f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;ADDL	$0x1,0xc(%RSP);(104) 
0x18424;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	$0x1,%ECX;(104) 
0x18429;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOVSXD	0xc(%RSP),%RDI;(104) 
0x1842e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JMP	18377 <copy_x_face_._omp_fn.0+0x1b7>;(104) 
0x18433;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;ADD	$0x1,%R14D;
0x18437;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;XOR	%EDX,%EDX;
0x18439;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;JMP	1821d <copy_x_face_._omp_fn.0+0x5d>;
0x1843e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:246;ADD	$0x2,%EAX;
0x18441;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	$0x1,%ECX;
0x18446;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOV	%EAX,0xc(%RSP);
0x1844a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;MOVSXD	%EAX,%RDI;
0x1844d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:250;JMP	182f2 <copy_x_face_._omp_fn.0+0x132>;
0x18452;:0;NOPW	%CS:(%RAX,%RAX,1);
0x1845d;:0;NOPL	(%RAX);
