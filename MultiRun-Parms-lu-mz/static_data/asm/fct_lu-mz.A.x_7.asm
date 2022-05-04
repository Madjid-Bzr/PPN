address;source_location;insn;indent
0x24b0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;PUSH	%R15;
0x24b2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;PUSH	%R14;
0x24b4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;PUSH	%R13;
0x24b6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;PUSH	%R12;
0x24b8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;PUSH	%RBP;
0x24b9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;PUSH	%RBX;
0x24ba;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;LEA	-0x128(%RSP),%RSP;
0x24c2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x8(%RDI),%RAX;
0x24c6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%RDI,0xc0(%RSP);
0x24ce;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	(%RAX),%R15D;
0x24d1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R15D,0x10c(%RSP);
0x24d9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CALL	2080 <@plt_start@+0x60>;
0x24de;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RAX),%EBX;
0x24e0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CALL	2190 <@plt_start@+0x170>;
0x24e5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RAX),%ECX;
0x24e7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	-0x2(%R15),%EAX;
0x24eb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RAX),%EDX;
0x24ed;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAR	$0x1f,%EDX;
0x24f0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;IDIV	%EBX;
0x24f2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%EDX,%ECX;
0x24f4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JL	3357 <init_workarray_._omp_fn.0+0xea7>;
0x24fa;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;IMUL	%EAX,%ECX;
0x24fd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%EDX,%ECX;
0x24ff;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%ECX,0x110(%RSP);
0x2506;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%ECX,%EAX;
0x2508;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%EAX,%ECX;
0x250a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%EAX,%R10D;
0x250d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%EAX,0x114(%RSP);
0x2514;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JGE	2e97 <init_workarray_._omp_fn.0+0x9e7>;
0x251a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0xc0(%RSP),%R11;
0x2522;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0xc8(%R11),%RSI;
0x2529;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0xc0(%R11),%RDI;
0x2530;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0xa8(%R11),%R8;
0x2537;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0xa0(%R11),%R12;
0x253e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x80(%R11),%R14;
0x2545;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x88(%R11),%R13;
0x254c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x68(%R11),%RBX;
0x2550;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x60(%R11),%RAX;
0x2554;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0xb0(%R11),%RBP;
0x255b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x90(%R11),%R15;
0x2562;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%RSI,0xc8(%RSP);
0x256a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%RDI,0xd0(%RSP);
0x2572;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0xb8(%R11),%R9;
0x2579;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%R8,0xd8(%RSP);
0x2581;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%R12,0xe0(%RSP);
0x2589;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;LEA	0x2(%RCX),%R12D;
0x258d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x98(%R11),%R8;
0x2594;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;LEA	(%R11),%RCX;
0x2597;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%R14,0xf0(%RSP);
0x259f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x78(%R11),%RDI;
0x25a3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x70(%R11),%R14;
0x25a7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x58(%R11),%RSI;
0x25ab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	0x50(%R11),%RDX;
0x25af;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;MOV	(%R11),%R11;
0x25b2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%RAX,0x100(%RSP);
0x25ba;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;LEA	(%RCX),%RAX;
0x25bd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%R13,0xe8(%RSP);
0x25c5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;MOV	(%R11),%R11D;
0x25c8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%RBX,0xf8(%RSP);
0x25d0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%RBP,0x80(%RSP);
0x25d8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%R15,0x88(%RSP);
0x25e0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;TEST	%R11D,%R11D;
0x25e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%R14,0x90(%RSP);
0x25eb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;MOV	%R12D,0x28(%RSP);
0x25f0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;MOV	%R11D,0x118(%RSP);
0x25f8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOV	0x10(%RCX),%RCX;
0x25fc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOV	0x20(%RAX),%RBX;
0x2600;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOV	0x18(%RAX),%R13;
0x2604;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	0x28(%RAX),%RAX;
0x2608;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOV	%RBX,0x70(%RSP);
0x260d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;LEA	(%R11),%EBX;
0x2610;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOV	%R13,0x98(%RSP);
0x2618;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%RAX,0x78(%RSP);
0x261d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;JLE	2e97 <init_workarray_._omp_fn.0+0x9e7>;
0x2623;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVSXD	%R12D,%R12;
0x2626;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	(,%RDX,8),%R11;
0x262e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;IMUL	%R12,%RDX;
0x2632;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x2(%R10),%R10D;
0x2636;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%R11,0xa0(%RSP);
0x263e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0xd0(%R13),%R13;
0x2645;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;IMUL	%R12,%R15;
0x2649;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%R10D,0x108(%RSP);
0x2651;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%R13,0xa8(%RSP);
0x2659;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;ADD	%RSI,%RDX;
0x265c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%RDX,%RSI;
0x265f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;SAL	$0x3,%RSI;
0x2663;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;ADD	%R8,%R15;
0x2666;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%R15,0x40(%RSP);
0x266b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;ADD	%RCX,%RSI;
0x266e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%RSI,0x30(%RSP);
0x2673;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	(%R14),%RSI;
0x2676;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;IMUL	%R12,%RSI;
0x267a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;IMUL	%RBP,%R12;
0x267e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%RSI,%R14;
0x2681;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	0x70(%RSP),%RSI;
0x2686;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;ADD	%RDI,%R14;
0x2689;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%R14,0x38(%RSP);
0x268e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	(%R12),%RBP;
0x2692;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;ADD	%R9,%RBP;
0x2695;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	-0x1(%RBX),%R9D;
0x2699;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	0x78(%RSP),%RBX;
0x269e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x5(%R9,%R9,4),%RDI;
0x26a3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	(%RSI),%RAX;
0x26a6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	(%RDI,%RDI,4),%RDX;
0x26aa;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;ADD	$0xd0,%RAX;
0x26b0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;XOR	%R12D,%R12D;
0x26b3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%RBP,0x48(%RSP);
0x26b8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;ADD	$0xd0,%RBX;
0x26bf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%R9D,0x11c(%RSP);
0x26c7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%RDX,0x8(%RSP);
0x26cc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%RAX,0xb0(%RSP);
0x26d4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	%RBX,0xb8(%RSP);
0x26dc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOV	0x40(%RSP),%RCX;(2) 
0x26e1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;XOR	%EBX,%EBX;(2) 
0x26e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x48(%RSP),%RDI;(2) 
0x26e8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;XOR	%R10D,%R10D;(2) 
0x26eb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x38(%RSP),%R11;(2) 
0x26f0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0xa8(%RSP),%RSI;(2) 
0x26f8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RCX),%R13;(2) 
0x26fb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0xb0(%RSP),%R9;(2) 
0x2703;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RDI),%RAX;(2) 
0x2706;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0xb8(%RSP),%R8;(2) 
0x270e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%R11;(2) 
0x2712;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%R13;(2) 
0x2716;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R11,%RSI;(2) 
0x2719;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%RAX;(2) 
0x271d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	0x98(%RSP),%R11;(2) 
0x2725;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R13,%R9;(2) 
0x2728;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	0x70(%RSP),%R13;(2) 
0x272d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x30(%RSP),%R15;(2) 
0x2732;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%RAX,%R8;(2) 
0x2735;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	0x78(%RSP),%RAX;(2) 
0x273a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R11),%R14;(2) 
0x273d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%R13),%RBP;(2) 
0x2744;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0xc8,%R14;(2) 
0x274b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%RDX;(2) 
0x274e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%R15),%RDI;(2) 
0x2755;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RBP,0x58(%RSP);(2) 
0x275a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%RAX),%RCX;(2) 
0x2761;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xd0(%R15),%RBP;(2) 
0x2768;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xd0(%R13),%R13;(2) 
0x276f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xd0(%RAX),%R15;(2) 
0x2776;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xd0(%R11),%R11;(2) 
0x277d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R14,0x50(%RSP);(2) 
0x2782;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x198,%RDX;(2) 
0x2789;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RCX,0x60(%RSP);(2) 
0x278e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RDI,0x68(%RSP);(2) 
0x2793;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R15,0x10(%RSP);(2) 
0x2798;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R13,0x18(%RSP);(2) 
0x279d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R11,0x20(%RSP);(2) 
0x27a2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;NOPW	%CS:(%RAX,%RAX,1);(2) 
0x27ad;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;NOPL	(%RAX);(2) 
0x27b0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	-0xc8(%RDX),%RDI;  (1) 
0x27b7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R9),%R13;  (1) 
0x27ba;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%R9),%R9;  (1) 
0x27c1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RSI),%RCX;  (1) 
0x27c4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R9,%RDI;  (1) 
0x27c7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%RSI),%RSI;  (1) 
0x27ce;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%R11B;  (1) 
0x27d2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R13,%RDX;  (1) 
0x27d5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%AL;  (1) 
0x27d8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R8),%R14;  (1) 
0x27db;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%EAX,%R11D;  (1) 
0x27de;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%RSI,%RDI;  (1) 
0x27e1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%AL;  (1) 
0x27e4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%RDX,%RCX;  (1) 
0x27e7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%R15B;  (1) 
0x27eb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%R8),%R8;  (1) 
0x27f2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%R15D,%EAX;  (1) 
0x27f5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	%EAX,%R11D;  (1) 
0x27f8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R14,%RDX;  (1) 
0x27fb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%AL;  (1) 
0x27fe;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R8,%RDI;  (1) 
0x2801;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%DIL;  (1) 
0x2805;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%EDI,%EAX;  (1) 
0x2807;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	%EAX,%R11D;  (1) 
0x280a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R13,%RSI;  (1) 
0x280d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%R15B;  (1) 
0x2811;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R9,%RCX;  (1) 
0x2814;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%AL;  (1) 
0x2817;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%EAX,%R15D;  (1) 
0x281a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	%R15D,%R11D;  (1) 
0x281d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R14,%RSI;  (1) 
0x2820;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%DIL;  (1) 
0x2824;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R8,%RCX;  (1) 
0x2827;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%CL;  (1) 
0x282a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%ECX,%EDI;  (1) 
0x282c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	%DIL,%R11B;  (1) 
0x282f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2ffe <init_workarray_._omp_fn.0+0xb4e>;  (1) 
0x2835;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R14,%R9;  (1) 
0x2838;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%R14B;  (1) 
0x283c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R8,%R13;  (1) 
0x283f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%R13B;  (1) 
0x2843;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%R13B,%R14B;  (1) 
0x2846;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2ffe <init_workarray_._omp_fn.0+0xb4e>;  (1) 
0x284c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RBP,%R10,1),%R15;  (1) 
0x2851;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	$0xc8,%R14D;  (1) 
0x2857;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x1,%R15B;  (1) 
0x285b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%R11;  (1) 
0x285e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3282 <init_workarray_._omp_fn.0+0xdd2>;  (1) 
0x2864;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R11B;  (1) 
0x2868;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3256 <init_workarray_._omp_fn.0+0xda6>;  (1) 
0x286e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R11B;  (1) 
0x2872;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	326e <init_workarray_._omp_fn.0+0xdbe>;  (1) 
0x2878;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R14),%ECX;  (1) 
0x287b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R11),%RDI;  (1) 
0x287e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SHR	$0x3,%ECX;  (1) 
0x2881;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;  (1) 
0x2885;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R14B;  (1) 
0x2889;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;REP_STOSQ	(%RDI);  (1) 
0x288c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2898 <init_workarray_._omp_fn.0+0x3e8>;  (1) 
0x288e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVL	$0,(%RDI);  (1) 
0x2894;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x4,%RDI;  (1) 
0x2898;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R14B;  (1) 
0x289c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	28a7 <init_workarray_._omp_fn.0+0x3f7>;  (1) 
0x289e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVW	$0,(%RDI);  (1) 
0x28a3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x2(%RDI),%RDI;  (1) 
0x28a7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	$0x1,%R14D;  (1) 
0x28ab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	28b0 <init_workarray_._omp_fn.0+0x400>;  (1) 
0x28ad;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVB	$0,(%RDI);  (1) 
0x28b0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x10(%RSP),%R15;  (1) 
0x28b5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	$0xc8,%R13D;  (1) 
0x28bb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R10,%R15;  (1) 
0x28be;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x1,%R15B;  (1) 
0x28c2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R15,%R11;  (1) 
0x28c5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	32bc <init_workarray_._omp_fn.0+0xe0c>;  (1) 
0x28cb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R11B;  (1) 
0x28cf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	32a9 <init_workarray_._omp_fn.0+0xdf9>;  (1) 
0x28d5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R11B;  (1) 
0x28d9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3295 <init_workarray_._omp_fn.0+0xde5>;  (1) 
0x28df;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R13),%ECX;  (1) 
0x28e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R11),%RDI;  (1) 
0x28e6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SHR	$0x3,%ECX;  (1) 
0x28e9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;  (1) 
0x28ed;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R13B;  (1) 
0x28f1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;REP_STOSQ	(%RDI);  (1) 
0x28f4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2900 <init_workarray_._omp_fn.0+0x450>;  (1) 
0x28f6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVL	$0,(%RDI);  (1) 
0x28fc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x4,%RDI;  (1) 
0x2900;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R13B;  (1) 
0x2904;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	290f <init_workarray_._omp_fn.0+0x45f>;  (1) 
0x2906;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVW	$0,(%RDI);  (1) 
0x290b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x2(%RDI),%RDI;  (1) 
0x290f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	$0x1,%R13D;  (1) 
0x2913;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2918 <init_workarray_._omp_fn.0+0x468>;  (1) 
0x2915;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVB	$0,(%RDI);  (1) 
0x2918;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x18(%RSP),%R14;  (1) 
0x291d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	$0xc8,%R11D;  (1) 
0x2923;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R10,%R14;  (1) 
0x2926;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x1,%R14B;  (1) 
0x292a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R14,%R15;  (1) 
0x292d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3344 <init_workarray_._omp_fn.0+0xe94>;  (1) 
0x2933;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R15B;  (1) 
0x2937;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3331 <init_workarray_._omp_fn.0+0xe81>;  (1) 
0x293d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R15B;  (1) 
0x2941;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	331d <init_workarray_._omp_fn.0+0xe6d>;  (1) 
0x2947;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R11),%ECX;  (1) 
0x294a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%RDI;  (1) 
0x294d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SHR	$0x3,%ECX;  (1) 
0x2950;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;  (1) 
0x2954;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R11B;  (1) 
0x2958;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;REP_STOSQ	(%RDI);  (1) 
0x295b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2967 <init_workarray_._omp_fn.0+0x4b7>;  (1) 
0x295d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVL	$0,(%RDI);  (1) 
0x2963;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x4,%RDI;  (1) 
0x2967;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R11B;  (1) 
0x296b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2976 <init_workarray_._omp_fn.0+0x4c6>;  (1) 
0x296d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVW	$0,(%RDI);  (1) 
0x2972;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x2(%RDI),%RDI;  (1) 
0x2976;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	$0x1,%R11D;  (1) 
0x297a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	297f <init_workarray_._omp_fn.0+0x4cf>;  (1) 
0x297c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVB	$0,(%RDI);  (1) 
0x297f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x20(%RSP),%R14;  (1) 
0x2984;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	$0xc8,%R13D;  (1) 
0x298a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R10,%R14;  (1) 
0x298d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x1,%R14B;  (1) 
0x2991;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R14,%R15;  (1) 
0x2994;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	330a <init_workarray_._omp_fn.0+0xe5a>;  (1) 
0x299a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R15B;  (1) 
0x299e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	32f7 <init_workarray_._omp_fn.0+0xe47>;  (1) 
0x29a4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R15B;  (1) 
0x29a8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	32e3 <init_workarray_._omp_fn.0+0xe33>;  (1) 
0x29ae;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R13),%ECX;  (1) 
0x29b2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%RDI;  (1) 
0x29b5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SHR	$0x3,%ECX;  (1) 
0x29b8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;  (1) 
0x29bc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R13B;  (1) 
0x29c0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;REP_STOSQ	(%RDI);  (1) 
0x29c3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	29cf <init_workarray_._omp_fn.0+0x51f>;  (1) 
0x29c5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVL	$0,(%RDI);  (1) 
0x29cb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x4,%RDI;  (1) 
0x29cf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R13B;  (1) 
0x29d3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	29de <init_workarray_._omp_fn.0+0x52e>;  (1) 
0x29d5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVW	$0,(%RDI);  (1) 
0x29da;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x2(%RDI),%RDI;  (1) 
0x29de;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	$0x1,%R13D;  (1) 
0x29e2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	29e7 <init_workarray_._omp_fn.0+0x537>;  (1) 
0x29e4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVB	$0,(%RDI);  (1) 
0x29e7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x19(%RBX),%RBX;  (1) 
0x29eb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%RDX),%RDX;  (1) 
0x29f2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;CMP	0x8(%RSP),%RBX;  (1) 
0x29f7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;LEA	0xc8(%R10),%R10;  (1) 
0x29fe;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;JNE	27b0 <init_workarray_._omp_fn.0+0x300>;  (1) 
0x2a04;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;MOV	0xa0(%RSP),%RSI;(2) 
0x2a0c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;ADDL	$0x1,0x28(%RSP);(2) 
0x2a11;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;MOV	0x28(%RSP),%R9D;(2) 
0x2a16;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;MOV	0x90(%RSP),%R8;(2) 
0x2a1e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;MOV	0x88(%RSP),%R15;(2) 
0x2a26;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;ADD	%RSI,0x30(%RSP);(2) 
0x2a2b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;MOV	0x80(%RSP),%R11;(2) 
0x2a33;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;ADD	%R8,0x38(%RSP);(2) 
0x2a38;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;ADD	%R15,0x40(%RSP);(2) 
0x2a3d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;ADD	%R11,0x48(%RSP);(2) 
0x2a42;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;CMP	0x108(%RSP),%R9D;(2) 
0x2a4a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:439;JNE	26dc <init_workarray_._omp_fn.0+0x22c>;(2) 
0x2a50;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x10c(%RSP),%EDI;
0x2a57;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x100(%RSP),%R14;
0x2a5f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVSXD	0x118(%RSP),%RAX;
0x2a67;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0xf0(%RSP),%R15;
0x2a6f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	$0x1,%EDI;
0x2a72;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%EDI,%R13D;
0x2a75;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R14),%R10;
0x2a78;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	0x110(%RSP),%R13D;
0x2a80;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RAX),%R12;
0x2a83;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x2,%R12;
0x2a87;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	0x114(%RSP),%EDI;
0x2a8e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%RAX,%R12;
0x2a91;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R14),%RCX;
0x2a94;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVSXD	%R13D,%RBP;
0x2a97;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R12,%RDX;
0x2a9a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;IMUL	%RBP,%R10;
0x2a9e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x2,%RDX;
0x2aa2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R12,%RDX;
0x2aa5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%R11;
0x2aa8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0xe0(%RSP),%R12;
0x2ab0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RDX,%R9;
0x2ab3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x1a,%R9;
0x2ab7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;NEG	%RCX;
0x2aba;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	0xf8(%RSP),%R10;
0x2ac2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;NEG	%R11;
0x2ac5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%EDI,0x48(%RSP);
0x2ac9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%RDI;
0x2acc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;IMUL	%RBP,%RDI;
0x2ad0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0xc0(%RSP),%RBX;
0x2ad8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R10,%R9;
0x2adb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%R10;
0x2adf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;IMUL	%RBP,%R10;
0x2ae3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R9,%R8;
0x2ae6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x30(%RBX),%RSI;
0x2aea;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RDX),%R9;
0x2aed;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	0xe8(%RSP),%RDI;
0x2af5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x1,%R9;
0x2af9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0xd0(%RSP),%R15;
0x2b01;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;
0x2b05;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	0xd8(%RSP),%R10;
0x2b0d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;NEG	%RAX;
0x2b10;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R13D,0x20(%RSP);
0x2b15;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RDX),%R13;
0x2b18;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%R8;
0x2b1c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x1,%R13;
0x2b20;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%RSI,%R8;
0x2b23;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%RDI,%R13;
0x2b26;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%RCX;
0x2b2a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R10,%R9;
0x2b2d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%R11;
0x2b31;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%RDI;
0x2b34;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x38(%RBX),%R14;
0x2b38;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x40(%RBX),%RSI;
0x2b3c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RCX,0x50(%RSP);
0x2b41;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R13),%RCX;
0x2b45;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R8,0x28(%RSP);
0x2b4a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R9),%R8;
0x2b4d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R11,0x58(%RSP);
0x2b52;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%R11;
0x2b55;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%RCX;
0x2b59;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;NEG	%R11;
0x2b5c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%R8;
0x2b60;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%R14,%RCX;
0x2b63;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%RAX;
0x2b67;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%RSI,%R8;
0x2b6a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%R11;
0x2b6e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;IMUL	%RBP,%RDI;
0x2b72;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x48(%RBX),%RBP;
0x2b76;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;XOR	%R12D,%R12D;
0x2b79;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x11c(%RSP),%EBX;
0x2b80;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RCX,0x30(%RSP);
0x2b85;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RAX,0x60(%RSP);
0x2b8a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	0xc8(%RSP),%RDI;
0x2b92;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R8,0x38(%RSP);
0x2b97;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x1,%RBX;
0x2b9b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R11,0x68(%RSP);
0x2ba0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RBX,%R13;
0x2ba3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x2,%R13;
0x2ba7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%RDI,%RDX;
0x2baa;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x1,%RDX;
0x2bae;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%RDX;
0x2bb2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	%RBP,%RDX;
0x2bb5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RDX,0x40(%RSP);
0x2bba;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RBX),%RDX;
0x2bbd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	%R13,%RDX;
0x2bc0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RDX,%R14;
0x2bc3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SAL	$0x3,%R14;
0x2bc7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	%RBX,%R14;
0x2bca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R14,0x18(%RSP);
0x2bcf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x28(%RSP),%RCX;(5) 
0x2bd4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x40(%RSP),%R11;(5) 
0x2bd9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x38(%RSP),%R15;(5) 
0x2bde;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x30(%RSP),%R10;(5) 
0x2be3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%RCX,%R9;(5) 
0x2be6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	%R11,%R8;(5) 
0x2be9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	$0xd0,%R9;(5) 
0x2bf0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R15),%RSI;(5) 
0x2bf3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	$0x8,%R8;(5) 
0x2bf7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R10),%RDX;(5) 
0x2bfa;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	$0x8,%RSI;(5) 
0x2bfe;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVQ	$0,0x8(%RSP);(5) 
0x2c07;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUB	$0x8,%RDX;(5) 
0x2c0b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;NOPL	(%RAX,%RAX,1);(5) 
0x2c10;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%R10),%RDI;  (4) 
0x2c17;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	-0xc8(%RCX),%R14;  (4) 
0x2c1e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R10,%RCX;  (4) 
0x2c21;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%R15),%R13;  (4) 
0x2c28;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%BL;  (4) 
0x2c2b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R14,%RDI;  (4) 
0x2c2e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%AL;  (4) 
0x2c31;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0xc8(%R11),%RBP;  (4) 
0x2c38;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%EAX,%EBX;  (4) 
0x2c3a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R15,%RCX;  (4) 
0x2c3d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%AL;  (4) 
0x2c40;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R13,%R14;  (4) 
0x2c43;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAEB	0x10(%RSP);  (4) 
0x2c48;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	0x10(%RSP),%AL;  (4) 
0x2c4c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	%EAX,%EBX;  (4) 
0x2c4e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R11,%RCX;  (4) 
0x2c51;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%CL;  (4) 
0x2c54;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%RBP,%R14;  (4) 
0x2c57;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%AL;  (4) 
0x2c5a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%EAX,%ECX;  (4) 
0x2c5c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	%ECX,%EBX;  (4) 
0x2c5e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R15,%RDI;  (4) 
0x2c61;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%CL;  (4) 
0x2c64;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R13,%R10;  (4) 
0x2c67;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%AL;  (4) 
0x2c6a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%EAX,%ECX;  (4) 
0x2c6c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	%ECX,%EBX;  (4) 
0x2c6e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R11,%RDI;  (4) 
0x2c71;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%DIL;  (4) 
0x2c75;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%RBP,%R10;  (4) 
0x2c78;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%CL;  (4) 
0x2c7b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%ECX,%EDI;  (4) 
0x2c7d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	%DIL,%BL;  (4) 
0x2c80;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2eaa <init_workarray_._omp_fn.0+0x9fa>;  (4) 
0x2c86;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%R11,%R13;  (4) 
0x2c89;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETBE	%R13B;  (4) 
0x2c8d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;CMP	%RBP,%R15;  (4) 
0x2c90;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SETAE	%BPL;  (4) 
0x2c94;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;OR	%BPL,%R13B;  (4) 
0x2c97;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2eaa <init_workarray_._omp_fn.0+0x9fa>;  (4) 
0x2c9d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x1,%R9B;  (4) 
0x2ca1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x8(%R9),%RBX;  (4) 
0x2ca5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	$0xc8,%R13D;  (4) 
0x2cab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	32cf <init_workarray_._omp_fn.0+0xe1f>;  (4) 
0x2cb1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%BL;  (4) 
0x2cb4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3206 <init_workarray_._omp_fn.0+0xd56>;  (4) 
0x2cba;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%BL;  (4) 
0x2cbd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	31f3 <init_workarray_._omp_fn.0+0xd43>;  (4) 
0x2cc3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R13),%ECX;  (4) 
0x2cc7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RBX),%RDI;  (4) 
0x2cca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SHR	$0x3,%ECX;  (4) 
0x2ccd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;  (4) 
0x2cd1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R13B;  (4) 
0x2cd5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;REP_STOSQ	(%RDI);  (4) 
0x2cd8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2ce4 <init_workarray_._omp_fn.0+0x834>;  (4) 
0x2cda;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVL	$0,(%RDI);  (4) 
0x2ce0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x4,%RDI;  (4) 
0x2ce4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R13B;  (4) 
0x2ce8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2cf3 <init_workarray_._omp_fn.0+0x843>;  (4) 
0x2cea;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVW	$0,(%RDI);  (4) 
0x2cef;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x2(%RDI),%RDI;  (4) 
0x2cf3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	$0x1,%R13D;  (4) 
0x2cf7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2cfc <init_workarray_._omp_fn.0+0x84c>;  (4) 
0x2cf9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVB	$0,(%RDI);  (4) 
0x2cfc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x1,%R8B;  (4) 
0x2d00;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x8(%R8),%RBX;  (4) 
0x2d04;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	$0xc8,%EBP;  (4) 
0x2d09;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	31e0 <init_workarray_._omp_fn.0+0xd30>;  (4) 
0x2d0f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%BL;  (4) 
0x2d12;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	31cf <init_workarray_._omp_fn.0+0xd1f>;  (4) 
0x2d18;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%BL;  (4) 
0x2d1b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	31bd <init_workarray_._omp_fn.0+0xd0d>;  (4) 
0x2d21;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RBP),%ECX;  (4) 
0x2d24;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RBX),%RDI;  (4) 
0x2d27;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SHR	$0x3,%ECX;  (4) 
0x2d2a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;  (4) 
0x2d2e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%BPL;  (4) 
0x2d32;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;REP_STOSQ	(%RDI);  (4) 
0x2d35;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2d41 <init_workarray_._omp_fn.0+0x891>;  (4) 
0x2d37;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVL	$0,(%RDI);  (4) 
0x2d3d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x4,%RDI;  (4) 
0x2d41;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%BPL;  (4) 
0x2d45;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2d50 <init_workarray_._omp_fn.0+0x8a0>;  (4) 
0x2d47;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVW	$0,(%RDI);  (4) 
0x2d4c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x2(%RDI),%RDI;  (4) 
0x2d50;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	$0x1,%EBP;  (4) 
0x2d53;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2d58 <init_workarray_._omp_fn.0+0x8a8>;  (4) 
0x2d55;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVB	$0,(%RDI);  (4) 
0x2d58;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x1,%SIL;  (4) 
0x2d5c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x8(%RSI),%R13;  (4) 
0x2d60;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	$0xc8,%EBX;  (4) 
0x2d65;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	31ab <init_workarray_._omp_fn.0+0xcfb>;  (4) 
0x2d6b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R13B;  (4) 
0x2d6f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3198 <init_workarray_._omp_fn.0+0xce8>;  (4) 
0x2d75;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R13B;  (4) 
0x2d79;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3184 <init_workarray_._omp_fn.0+0xcd4>;  (4) 
0x2d7f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RBX),%ECX;  (4) 
0x2d81;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R13),%RDI;  (4) 
0x2d85;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SHR	$0x3,%ECX;  (4) 
0x2d88;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;  (4) 
0x2d8c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%BL;  (4) 
0x2d8f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;REP_STOSQ	(%RDI);  (4) 
0x2d92;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2d9e <init_workarray_._omp_fn.0+0x8ee>;  (4) 
0x2d94;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVL	$0,(%RDI);  (4) 
0x2d9a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x4,%RDI;  (4) 
0x2d9e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%BL;  (4) 
0x2da1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2dac <init_workarray_._omp_fn.0+0x8fc>;  (4) 
0x2da3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVW	$0,(%RDI);  (4) 
0x2da8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x2(%RDI),%RDI;  (4) 
0x2dac;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	$0x1,%EBX;  (4) 
0x2daf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2db4 <init_workarray_._omp_fn.0+0x904>;  (4) 
0x2db1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVB	$0,(%RDI);  (4) 
0x2db4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x1,%DL;  (4) 
0x2db7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x8(%RDX),%R13;  (4) 
0x2dbb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	$0xc8,%EBP;  (4) 
0x2dc0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3244 <init_workarray_._omp_fn.0+0xd94>;  (4) 
0x2dc6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%R13B;  (4) 
0x2dca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3218 <init_workarray_._omp_fn.0+0xd68>;  (4) 
0x2dd0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%R13B;  (4) 
0x2dd4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JNE	3230 <init_workarray_._omp_fn.0+0xd80>;  (4) 
0x2dda;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%RBP),%ECX;  (4) 
0x2ddd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R13),%RDI;  (4) 
0x2de1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SHR	$0x3,%ECX;  (4) 
0x2de4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R12),%RAX;  (4) 
0x2de8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x4,%BPL;  (4) 
0x2dec;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;REP_STOSQ	(%RDI);  (4) 
0x2def;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2dfb <init_workarray_._omp_fn.0+0x94b>;  (4) 
0x2df1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVL	$0,(%RDI);  (4) 
0x2df7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;ADD	$0x4,%RDI;  (4) 
0x2dfb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;TEST	$0x2,%BPL;  (4) 
0x2dff;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2e0a <init_workarray_._omp_fn.0+0x95a>;  (4) 
0x2e01;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVW	$0,(%RDI);  (4) 
0x2e06;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	0x2(%RDI),%RDI;  (4) 
0x2e0a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;AND	$0x1,%EBP;  (4) 
0x2e0d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JE	2e12 <init_workarray_._omp_fn.0+0x962>;  (4) 
0x2e0f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOVB	$0,(%RDI);  (4) 
0x2e12;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;SUBQ	$0x19,0x8(%RSP);  (4) 
0x2e18;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	(%R14),%RCX;  (4) 
0x2e1b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;MOV	0x8(%RSP),%R14;  (4) 
0x2e20;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	-0xc8(%R10),%R10;  (4) 
0x2e27;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	-0xc8(%R15),%R15;  (4) 
0x2e2e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	-0xc8(%R11),%R11;  (4) 
0x2e35;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	-0xc8(%R9),%R9;  (4) 
0x2e3c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;LEA	-0xc8(%R8),%R8;  (4) 
0x2e43;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;CMP	0x18(%RSP),%R14;  (4) 
0x2e48;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;LEA	-0xc8(%RSI),%RSI;  (4) 
0x2e4f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;LEA	-0xc8(%RDX),%RDX;  (4) 
0x2e56;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;JNE	2c10 <init_workarray_._omp_fn.0+0x760>;  (4) 
0x2e5c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;MOV	0x50(%RSP),%RDI;(5) 
0x2e61;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;SUBL	$0x1,0x20(%RSP);(5) 
0x2e66;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;MOV	0x20(%RSP),%EBP;(5) 
0x2e6a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;MOV	0x58(%RSP),%RBX;(5) 
0x2e6f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;MOV	0x60(%RSP),%R13;(5) 
0x2e74;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;ADD	%RDI,0x28(%RSP);(5) 
0x2e79;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;MOV	0x68(%RSP),%RAX;(5) 
0x2e7e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;ADD	%RBX,0x30(%RSP);(5) 
0x2e83;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;ADD	%R13,0x38(%RSP);(5) 
0x2e88;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;ADD	%RAX,0x40(%RSP);(5) 
0x2e8d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;CMP	0x48(%RSP),%EBP;(5) 
0x2e91;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:451;JG	2bcf <init_workarray_._omp_fn.0+0x71f>;(5) 
0x2e97;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;LEA	0x128(%RSP),%RSP;
0x2e9f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;POP	%RBX;
0x2ea0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;POP	%RBP;
0x2ea1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;POP	%R12;
0x2ea3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;POP	%R13;
0x2ea5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;POP	%R14;
0x2ea7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;POP	%R15;
0x2ea9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:436;RET;
0x2eaa;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,0x8(%R9);  (4) 
0x2eb2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOV	$0x2,%EAX;  (4) 
0x2eb7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,0x8(%RDX);  (4) 
0x2ebf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,0x8(%RSI);  (4) 
0x2ec7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,0x8(%R8);  (4) 
0x2ecf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;LEA	0x1(%RAX),%RBX;    (3) 
0x2ed3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;LEA	0x2(%RAX),%R13;    (3) 
0x2ed7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,(%R9,%RAX,8);    (3) 
0x2edf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;LEA	0x3(%RAX),%RBP;    (3) 
0x2ee3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,(%RDX,%RAX,8);    (3) 
0x2eeb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;LEA	0x4(%RAX),%RCX;    (3) 
0x2eef;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,(%RSI,%RAX,8);    (3) 
0x2ef7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;LEA	0x5(%RAX),%RDI;    (3) 
0x2efb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,(%R8,%RAX,8);    (3) 
0x2f03;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,(%R9,%RBX,8);    (3) 
0x2f0b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,(%RDX,%RBX,8);    (3) 
0x2f13;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,(%RSI,%RBX,8);    (3) 
0x2f1b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,(%R8,%RBX,8);    (3) 
0x2f23;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;LEA	0x6(%RAX),%RBX;    (3) 
0x2f27;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,(%R9,%R13,8);    (3) 
0x2f2f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,(%RDX,%R13,8);    (3) 
0x2f37;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,(%RSI,%R13,8);    (3) 
0x2f3f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,(%R8,%R13,8);    (3) 
0x2f47;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;LEA	0x7(%RAX),%R13;    (3) 
0x2f4b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,(%R9,%RBP,8);    (3) 
0x2f53;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;LEA	0x8(%RAX),%RAX;    (3) 
0x2f57;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,(%RDX,%RBP,8);    (3) 
0x2f5f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:452;CMP	$0x1a,%RAX;    (3) 
0x2f63;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,(%RSI,%RBP,8);    (3) 
0x2f6b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,(%R8,%RBP,8);    (3) 
0x2f73;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,(%R9,%RCX,8);    (3) 
0x2f7b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,(%RDX,%RCX,8);    (3) 
0x2f83;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,(%RSI,%RCX,8);    (3) 
0x2f8b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,(%R8,%RCX,8);    (3) 
0x2f93;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,(%R9,%RDI,8);    (3) 
0x2f9b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,(%RDX,%RDI,8);    (3) 
0x2fa3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,(%RSI,%RDI,8);    (3) 
0x2fab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,(%R8,%RDI,8);    (3) 
0x2fb3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,(%R9,%RBX,8);    (3) 
0x2fbb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,(%RDX,%RBX,8);    (3) 
0x2fc3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,(%RSI,%RBX,8);    (3) 
0x2fcb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,(%R8,%RBX,8);    (3) 
0x2fd3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:453;MOVQ	$0,(%R9,%R13,8);    (3) 
0x2fdb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:454;MOVQ	$0,(%RDX,%R13,8);    (3) 
0x2fe3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:455;MOVQ	$0,(%RSI,%R13,8);    (3) 
0x2feb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:456;MOVQ	$0,(%R8,%R13,8);    (3) 
0x2ff3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:452;JNE	2ecf <init_workarray_._omp_fn.0+0xa1f>;    (3) 
0x2ff9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:452;JMP	2e12 <init_workarray_._omp_fn.0+0x962>;  (4) 
0x2ffe;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:452;MOV	0x50(%RSP),%R11;  (1) 
0x3003;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:452;MOV	$0x2,%EAX;  (1) 
0x3008;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:452;MOV	0x58(%RSP),%RDI;  (1) 
0x300d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:452;MOV	0x60(%RSP),%RCX;  (1) 
0x3012;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOV	0x68(%RSP),%R14;  (1) 
0x3017;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;LEA	(%R11),%R15;  (1) 
0x301a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOV	%RDI,%R11;  (1) 
0x301d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;ADD	%R10,%R15;  (1) 
0x3020;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;LEA	(%RCX),%RDI;  (1) 
0x3023;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;ADD	%R10,%R11;  (1) 
0x3026;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;ADD	%R10,%RDI;  (1) 
0x3029;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;LEA	(%R14,%R10,1),%R13;  (1) 
0x302d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,0x8(%R13);  (1) 
0x3035;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,0x8(%R15);  (1) 
0x303d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,0x8(%R11);  (1) 
0x3045;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,0x8(%RDI);  (1) 
0x304d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x1(%RAX),%RCX;    (0) 
0x3051;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x2(%RAX),%R14;    (0) 
0x3055;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,(%R13,%RAX,8);    (0) 
0x305e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,(%R15,%RAX,8);    (0) 
0x3066;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,(%R11,%RAX,8);    (0) 
0x306e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,(%RDI,%RAX,8);    (0) 
0x3076;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,(%R13,%RCX,8);    (0) 
0x307f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,(%R15,%RCX,8);    (0) 
0x3087;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,(%R11,%RCX,8);    (0) 
0x308f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,(%RDI,%RCX,8);    (0) 
0x3097;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x3(%RAX),%RCX;    (0) 
0x309b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,(%R13,%R14,8);    (0) 
0x30a4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,(%R15,%R14,8);    (0) 
0x30ac;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,(%R11,%R14,8);    (0) 
0x30b4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,(%RDI,%R14,8);    (0) 
0x30bc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x4(%RAX),%R14;    (0) 
0x30c0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,(%R13,%RCX,8);    (0) 
0x30c9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,(%R15,%RCX,8);    (0) 
0x30d1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,(%R11,%RCX,8);    (0) 
0x30d9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,(%RDI,%RCX,8);    (0) 
0x30e1;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x5(%RAX),%RCX;    (0) 
0x30e5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,(%R13,%R14,8);    (0) 
0x30ee;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,(%R15,%R14,8);    (0) 
0x30f6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,(%R11,%R14,8);    (0) 
0x30fe;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,(%RDI,%R14,8);    (0) 
0x3106;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x6(%RAX),%R14;    (0) 
0x310a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,(%R13,%RCX,8);    (0) 
0x3113;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,(%R15,%RCX,8);    (0) 
0x311b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,(%R11,%RCX,8);    (0) 
0x3123;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,(%RDI,%RCX,8);    (0) 
0x312b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;LEA	0x7(%RAX),%RCX;    (0) 
0x312f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,(%R13,%R14,8);    (0) 
0x3138;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;LEA	0x8(%RAX),%RAX;    (0) 
0x313c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,(%R15,%R14,8);    (0) 
0x3144;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;CMP	$0x1a,%RAX;    (0) 
0x3148;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,(%R11,%R14,8);    (0) 
0x3150;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,(%RDI,%R14,8);    (0) 
0x3158;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:441;MOVQ	$0,(%R13,%RCX,8);    (0) 
0x3161;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:442;MOVQ	$0,(%R15,%RCX,8);    (0) 
0x3169;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:443;MOVQ	$0,(%R11,%RCX,8);    (0) 
0x3171;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:444;MOVQ	$0,(%RDI,%RCX,8);    (0) 
0x3179;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JNE	304d <init_workarray_._omp_fn.0+0xb9d>;    (0) 
0x317f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	29e7 <init_workarray_._omp_fn.0+0x537>;  (1) 
0x3184;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVL	$0,(%R13);  (4) 
0x318c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x4(%RBX),%EBX;  (4) 
0x318f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x4(%R13),%R13;  (4) 
0x3193;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2d7f <init_workarray_._omp_fn.0+0x8cf>;  (4) 
0x3198;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVW	$0,(%R13);  (4) 
0x319f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x2(%RBX),%EBX;  (4) 
0x31a2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x2(%R13),%R13;  (4) 
0x31a6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2d75 <init_workarray_._omp_fn.0+0x8c5>;  (4) 
0x31ab;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVB	$0,0x8(%RSI);  (4) 
0x31af;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x9(%RSI),%R13;  (4) 
0x31b3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOV	$0xc7,%EBX;  (4) 
0x31b8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2d6b <init_workarray_._omp_fn.0+0x8bb>;  (4) 
0x31bd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVL	$0,(%RBX);  (4) 
0x31c3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x4(%RBP),%EBP;  (4) 
0x31c6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x4(%RBX),%RBX;  (4) 
0x31ca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2d21 <init_workarray_._omp_fn.0+0x871>;  (4) 
0x31cf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVW	$0,(%RBX);  (4) 
0x31d4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x2(%RBP),%EBP;  (4) 
0x31d7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x2(%RBX),%RBX;  (4) 
0x31db;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2d18 <init_workarray_._omp_fn.0+0x868>;  (4) 
0x31e0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVB	$0,0x8(%R8);  (4) 
0x31e5;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x9(%R8),%RBX;  (4) 
0x31e9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOV	$0xc7,%EBP;  (4) 
0x31ee;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2d0f <init_workarray_._omp_fn.0+0x85f>;  (4) 
0x31f3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVL	$0,(%RBX);  (4) 
0x31f9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x4(%R13),%R13D;  (4) 
0x31fd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x4(%RBX),%RBX;  (4) 
0x3201;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2cc3 <init_workarray_._omp_fn.0+0x813>;  (4) 
0x3206;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVW	$0,(%RBX);  (4) 
0x320b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x2(%R13),%R13D;  (4) 
0x320f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x2(%RBX),%RBX;  (4) 
0x3213;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2cba <init_workarray_._omp_fn.0+0x80a>;  (4) 
0x3218;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVW	$0,(%R13);  (4) 
0x321f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x2(%R13),%R13;  (4) 
0x3223;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;TEST	$0x4,%R13B;  (4) 
0x3227;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x2(%RBP),%EBP;  (4) 
0x322a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JE	2dda <init_workarray_._omp_fn.0+0x92a>;  (4) 
0x3230;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVL	$0,(%R13);  (4) 
0x3238;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x4(%RBP),%EBP;  (4) 
0x323b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x4(%R13),%R13;  (4) 
0x323f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2dda <init_workarray_._omp_fn.0+0x92a>;  (4) 
0x3244;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVB	$0,0x8(%RDX);  (4) 
0x3248;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x9(%RDX),%R13;  (4) 
0x324c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOV	$0xc7,%EBP;  (4) 
0x3251;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2dc6 <init_workarray_._omp_fn.0+0x916>;  (4) 
0x3256;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVW	$0,(%R11);  (1) 
0x325c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x2(%R11),%R11;  (1) 
0x3260;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;TEST	$0x4,%R11B;  (1) 
0x3264;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x2(%R14),%R14D;  (1) 
0x3268;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JE	2878 <init_workarray_._omp_fn.0+0x3c8>;  (1) 
0x326e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVL	$0,(%R11);  (1) 
0x3275;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x4(%R14),%R14D;  (1) 
0x3279;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x4(%R11),%R11;  (1) 
0x327d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2878 <init_workarray_._omp_fn.0+0x3c8>;  (1) 
0x3282;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVB	$0,(%R15);  (1) 
0x3286;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x1(%R15),%R11;  (1) 
0x328a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOV	$0xc7,%R14D;  (1) 
0x3290;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2864 <init_workarray_._omp_fn.0+0x3b4>;  (1) 
0x3295;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVL	$0,(%R11);  (1) 
0x329c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x4(%R13),%R13D;  (1) 
0x32a0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x4(%R11),%R11;  (1) 
0x32a4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	28df <init_workarray_._omp_fn.0+0x42f>;  (1) 
0x32a9;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVW	$0,(%R11);  (1) 
0x32af;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x2(%R13),%R13D;  (1) 
0x32b3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x2(%R11),%R11;  (1) 
0x32b7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	28d5 <init_workarray_._omp_fn.0+0x425>;  (1) 
0x32bc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVB	$0,(%R15);  (1) 
0x32c0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x1(%R15),%R11;  (1) 
0x32c4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOV	$0xc7,%R13D;  (1) 
0x32ca;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	28cb <init_workarray_._omp_fn.0+0x41b>;  (1) 
0x32cf;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVB	$0,0x8(%R9);  (4) 
0x32d4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x9(%R9),%RBX;  (4) 
0x32d8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOV	$0xc7,%R13D;  (4) 
0x32de;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2cb1 <init_workarray_._omp_fn.0+0x801>;  (4) 
0x32e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVL	$0,(%R15);  (1) 
0x32ea;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x4(%R13),%R13D;  (1) 
0x32ee;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x4(%R15),%R15;  (1) 
0x32f2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	29ae <init_workarray_._omp_fn.0+0x4fe>;  (1) 
0x32f7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVW	$0,(%R15);  (1) 
0x32fd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x2(%R13),%R13D;  (1) 
0x3301;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x2(%R15),%R15;  (1) 
0x3305;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	29a4 <init_workarray_._omp_fn.0+0x4f4>;  (1) 
0x330a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVB	$0,(%R14);  (1) 
0x330e;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x1(%R14),%R15;  (1) 
0x3312;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOV	$0xc7,%R13D;  (1) 
0x3318;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	299a <init_workarray_._omp_fn.0+0x4ea>;  (1) 
0x331d;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVL	$0,(%R15);  (1) 
0x3324;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x4(%R11),%R11D;  (1) 
0x3328;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x4(%R15),%R15;  (1) 
0x332c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2947 <init_workarray_._omp_fn.0+0x497>;  (1) 
0x3331;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVW	$0,(%R15);  (1) 
0x3337;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	-0x2(%R11),%R11D;  (1) 
0x333b;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x2(%R15),%R15;  (1) 
0x333f;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	293d <init_workarray_._omp_fn.0+0x48d>;  (1) 
0x3344;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOVB	$0,(%R14);  (1) 
0x3348;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;LEA	0x1(%R14),%R15;  (1) 
0x334c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;MOV	$0xc7,%R11D;  (1) 
0x3352;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;JMP	2933 <init_workarray_._omp_fn.0+0x483>;  (1) 
0x3357;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:440;ADD	$0x1,%EAX;
0x335a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;XOR	%EDX,%EDX;
0x335c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/lu.f90:437;JMP	24fa <init_workarray_._omp_fn.0+0x4a>;
0x3361;:0;NOPW	%CS:(%RAX,%RAX,1);
0x336c;:0;NOPL	(%RAX);
