address;source_location;insn;indent
0x4630;/users/user2207/lbm_init/src/lbm_phys.c:211;ENDBR64;
0x4634;/users/user2207/lbm_init/src/lbm_phys.c:211;PUSH	%R15;
0x4636;/users/user2207/lbm_init/src/lbm_phys.c:211;PUSH	%R14;
0x4638;/users/user2207/lbm_init/src/lbm_phys.c:211;PUSH	%R13;
0x463a;/users/user2207/lbm_init/src/lbm_phys.c:211;PUSH	%R12;
0x463c;/users/user2207/lbm_init/src/lbm_phys.c:211;PUSH	%RBP;
0x463d;/users/user2207/lbm_init/src/lbm_phys.c:211;PUSH	%RBX;
0x463e;/users/user2207/lbm_init/src/lbm_phys.c:211;LEA	-0x18(%RSP),%RSP;
0x4643;/users/user2207/lbm_init/src/lbm_phys.c:212;MOV	0x8(%RSI),%EDX;
0x4646;/users/user2207/lbm_init/src/lbm_phys.c:212;CMP	0x8(%RDI),%EDX;
0x4649;/users/user2207/lbm_init/src/lbm_phys.c:212;JNE	4a3a <collision+0x40a>;
0x464f;/users/user2207/lbm_init/src/lbm_phys.c:213;MOV	0xc(%RSI),%EAX;
0x4652;/users/user2207/lbm_init/src/lbm_phys.c:213;LEA	(%RDI),%R13;
0x4655;/users/user2207/lbm_init/src/lbm_phys.c:213;LEA	(%RSI),%R14;
0x4658;/users/user2207/lbm_init/src/lbm_phys.c:213;CMP	0xc(%RDI),%EAX;
0x465b;/users/user2207/lbm_init/src/lbm_phys.c:213;JNE	4a59 <collision+0x429>;
0x4661;/users/user2207/lbm_init/src/lbm_phys.c:216;MOV	%EAX,%EBX;
0x4663;/users/user2207/lbm_init/src/lbm_phys.c:216;SUB	$0x1,%EBX;
0x4666;/users/user2207/lbm_init/src/lbm_phys.c:216;MOV	%RBX,0x8(%RSP);
0x466b;/users/user2207/lbm_init/src/lbm_phys.c:216;CMP	$0x1,%RBX;
0x466f;/users/user2207/lbm_init/src/lbm_phys.c:216;JBE	4a0b <collision+0x3db>;
0x4675;/users/user2207/lbm_init/src/lbm_phys.c:216;LEA	0x9(%RAX,%RAX,8),%EBP;
0x4679;/users/user2207/lbm_init/src/lbm_phys.c:216;LEA	(%RAX,%RAX,8),%EBX;
0x467c;/users/user2207/lbm_init/src/lbm_phys.c:216;LEA	-0x9(%RBP),%R11D;
0x4680;/users/user2207/lbm_init/src/lbm_phys.c:216;LEA	(%RBX,%RBX,1),%R15D;
0x4684;/users/user2207/lbm_init/src/lbm_phys.c:217;LEA	-0x1(%RDX),%R9D;
0x4688;/users/user2207/lbm_init/src/lbm_phys.c:217;SUB	%R11D,%R15D;
0x468b;/users/user2207/lbm_init/src/lbm_phys.c:217;VMOVSD	0x1d95(%RIP),%XMM7;
0x4693;/users/user2207/lbm_init/src/lbm_phys.c:216;MOV	$0x1,%R12D;
0x4699;/users/user2207/lbm_init/src/lbm_phys.c:216;VMOVSD	0x2167(%RIP),%XMM11;
0x46a1;/users/user2207/lbm_init/src/lbm_phys.c:216;VMOVSD	0x216f(%RIP),%XMM15;
0x46a9;/users/user2207/lbm_init/src/lbm_phys.c:216;VMOVSD	0x1d67(%RIP),%XMM9;
0x46b1;/users/user2207/lbm_init/src/lbm_phys.c:216;VMOVSD	0x2147(%RIP),%XMM10;
0x46b9;/users/user2207/lbm_init/src/lbm_phys.c:216;VMOVSD	0x215f(%RIP),%XMM14;
0x46c1;/users/user2207/lbm_init/src/lbm_phys.c:216;VMOVSD	0x217f(%RIP),%XMM13;
0x46c9;/users/user2207/lbm_init/src/lbm_phys.c:216;VMOVSD	0x213f(%RIP),%XMM12;
0x46d1;/users/user2207/lbm_init/src/lbm_phys.c:216;VMOVQ	0x2177(%RIP),%XMM3;
0x46d9;/users/user2207/lbm_init/src/lbm_phys.c:216;NOPL	(%RAX);
0x46e0;/users/user2207/lbm_init/src/lbm_phys.c:217;CMP	$0x1,%R9;(45) 
0x46e4;/users/user2207/lbm_init/src/lbm_phys.c:217;JBE	49f8 <collision+0x3c8>;(45) 
0x46ea;/users/user2207/lbm_init/src/lbm_phys.c:218;MOV	(%R13),%R10;(45) 
0x46ee;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%RBP),%EAX;(45) 
0x46f1;/users/user2207/lbm_init/src/lbm_phys.c:218;MOV	(%R14),%R8;(45) 
0x46f4;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%RAX;(45) 
0x46f8;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	%R10,%RDX;(45) 
0x46fb;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%RAX,%RDX;(45) 
0x46fe;/users/user2207/lbm_init/src/lbm_phys.c:53;ADD	%R8,%RAX;(45) 
0x4701;/users/user2207/lbm_init/src/lbm_phys.c:53;JE	4a1b <collision+0x3eb>;(45) 
0x4707;/users/user2207/lbm_init/src/lbm_phys.c:53;LEA	(%R11,%RBP,1),%EDI;(45) 
0x470b;/users/user2207/lbm_init/src/lbm_phys.c:53;LEA	(%R15,%RBP,1),%ESI;(45) 
0x470f;/users/user2207/lbm_init/src/lbm_phys.c:217;MOV	$0x1,%ECX;(45) 
0x4714;/users/user2207/lbm_init/src/lbm_phys.c:217;JMP	473a <collision+0x10a>;(45) 
0x4716;/users/user2207/lbm_init/src/lbm_phys.c:217;XCHG	%AX,%AX;
0x4718;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%RDI),%EAX;  (46) 
0x471a;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%RSI),%EDX;  (46) 
0x471c;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%RAX;  (46) 
0x4720;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%RDI,%R11,1),%EDI;  (46) 
0x4724;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%RDX;  (46) 
0x4728;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%R8,%RAX;  (46) 
0x472b;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%R10,%RDX;  (46) 
0x472e;/users/user2207/lbm_init/src/lbm_phys.c:53;TEST	%RAX,%RAX;  (46) 
0x4731;/users/user2207/lbm_init/src/lbm_phys.c:53;LEA	(%RSI,%RBX,1),%ESI;  (46) 
0x4734;/users/user2207/lbm_init/src/lbm_phys.c:53;JE	4a1b <collision+0x3eb>;  (46) 
0x473a;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	(%RAX),%XMM26;  (46) 
0x4740;/users/user2207/lbm_init/src/lbm_phys.c:217;LEA	0x1(%RCX),%RCX;  (46) 
0x4744;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	0x18(%RAX),%XMM4;  (46) 
0x4749;/users/user2207/lbm_init/src/lbm_phys.c:217;CMP	%R9,%RCX;  (46) 
0x474c;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	0x30(%RAX),%XMM8;  (46) 
0x4751;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	0x8(%RAX),%XMM23;  (46) 
0x4758;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM8,%XMM4,%XMM22;  (46) 
0x475e;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	0x10(%RAX),%XMM6;  (46) 
0x4763;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM4,%XMM6,%XMM0;  (46) 
0x4767;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	0x28(%RAX),%XMM18;  (46) 
0x476e;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM23,%XMM26,%XMM4;  (46) 
0x4774;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	0x38(%RAX),%XMM1;  (46) 
0x4779;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	0x20(%RAX),%XMM5;  (46) 
0x477e;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM18,%XMM6,%XMM6;  (46) 
0x4784;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM1,%XMM5,%XMM19;  (46) 
0x478a;/users/user2207/lbm_init/src/lbm_phys.c:57;VMOVSD	0x40(%RAX),%XMM2;  (46) 
0x478f;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM18,%XMM5,%XMM5;  (46) 
0x4795;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM4,%XMM0,%XMM0;  (46) 
0x4799;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM1,%XMM8,%XMM4;  (46) 
0x479d;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM18,%XMM23,%XMM23;  (46) 
0x47a3;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM5,%XMM0,%XMM0;  (46) 
0x47a7;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM8,%XMM6,%XMM8;  (46) 
0x47ac;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM2,%XMM23,%XMM23;  (46) 
0x47b2;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM4,%XMM0,%XMM0;  (46) 
0x47b6;/users/user2207/lbm_init/src/lbm_phys.c:57;VSUBSD	%XMM2,%XMM8,%XMM21;  (46) 
0x47bc;/users/user2207/lbm_init/src/lbm_phys.c:75;VSUBSD	%XMM1,%XMM23,%XMM17;  (46) 
0x47c2;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	%XMM2,%XMM0,%XMM0;  (46) 
0x47c6;/users/user2207/lbm_init/src/lbm_phys.c:75;VSUBSD	%XMM19,%XMM21,%XMM21;  (46) 
0x47cc;/users/user2207/lbm_init/src/lbm_phys.c:75;VSUBSD	%XMM22,%XMM17,%XMM17;  (46) 
0x47d2;/users/user2207/lbm_init/src/lbm_phys.c:79;VDIVSD	%XMM0,%XMM7,%XMM16;  (46) 
0x47d8;/users/user2207/lbm_init/src/lbm_phys.c:79;VSUBSD	%XMM23,%XMM1,%XMM1;  (46) 
0x47de;/users/user2207/lbm_init/src/lbm_phys.c:79;VSUBSD	%XMM8,%XMM2,%XMM2;  (46) 
0x47e3;/users/user2207/lbm_init/src/lbm_phys.c:79;VADDSD	%XMM22,%XMM1,%XMM1;  (46) 
0x47e9;/users/user2207/lbm_init/src/lbm_phys.c:79;VADDSD	%XMM19,%XMM2,%XMM2;  (46) 
0x47ef;/users/user2207/lbm_init/src/lbm_phys.c:79;VADDSD	%XMM21,%XMM1,%XMM1;  (46) 
0x47f5;/users/user2207/lbm_init/src/lbm_phys.c:79;VADDSD	%XMM17,%XMM2,%XMM2;  (46) 
0x47fb;/users/user2207/lbm_init/src/lbm_phys.c:96;VMULSD	%XMM15,%XMM0,%XMM25;  (46) 
0x4801;/users/user2207/lbm_init/src/lbm_phys.c:79;VMULSD	%XMM17,%XMM16,%XMM5;  (46) 
0x4807;/users/user2207/lbm_init/src/lbm_phys.c:79;VMULSD	%XMM21,%XMM16,%XMM18;  (46) 
0x480d;/users/user2207/lbm_init/src/lbm_phys.c:45;VMULSD	%XMM16,%XMM1,%XMM1;  (46) 
0x4813;/users/user2207/lbm_init/src/lbm_phys.c:45;VMOVAPD	%ZMM5,%ZMM28;  (46) 
0x4819;/users/user2207/lbm_init/src/lbm_phys.c:45;VMULSD	%XMM5,%XMM5,%XMM4;  (46) 
0x481d;/users/user2207/lbm_init/src/lbm_phys.c:45;VFMADD132SD	%XMM9,%XMM7,%XMM28;  (46) 
0x4823;/users/user2207/lbm_init/src/lbm_phys.c:45;VMULSD	%XMM18,%XMM18,%XMM24;  (46) 
0x4829;/users/user2207/lbm_init/src/lbm_phys.c:45;VMULSD	%XMM16,%XMM2,%XMM2;  (46) 
0x482f;/users/user2207/lbm_init/src/lbm_phys.c:45;VADDSD	%XMM24,%XMM4,%XMM6;  (46) 
0x4835;/users/user2207/lbm_init/src/lbm_phys.c:93;VMULSD	%XMM10,%XMM4,%XMM4;  (46) 
0x483a;/users/user2207/lbm_init/src/lbm_phys.c:93;VMULSD	%XMM10,%XMM24,%XMM24;  (46) 
0x4840;/users/user2207/lbm_init/src/lbm_phys.c:93;VMOVAPD	%ZMM6,%ZMM20;  (46) 
0x4846;/users/user2207/lbm_init/src/lbm_phys.c:93;VFNMADD132SD	%XMM11,%XMM7,%XMM20;  (46) 
0x484c;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM20,%XMM26,%XMM25;  (46) 
0x4852;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	0x4844(%RIP),%XMM26,%XMM25;  (46) 
0x485c;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM25,(%RDX);  (46) 
0x4862;/users/user2207/lbm_init/src/lbm_phys.c:96;VMULSD	%XMM14,%XMM0,%XMM25;  (46) 
0x4868;/users/user2207/lbm_init/src/lbm_phys.c:96;VMOVAPD	%ZMM6,%ZMM26;  (46) 
0x486e;/users/user2207/lbm_init/src/lbm_phys.c:96;VFNMADD132SD	%XMM11,%XMM4,%XMM26;  (46) 
0x4874;/users/user2207/lbm_init/src/lbm_phys.c:93;VADDSD	%XMM28,%XMM26,%XMM26;  (46) 
0x487a;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	0x8(%RAX),%XMM27;  (46) 
0x4881;/users/user2207/lbm_init/src/lbm_phys.c:114;VFNMADD231SD	%XMM11,%XMM6,%XMM24;  (46) 
0x4887;/users/user2207/lbm_init/src/lbm_phys.c:114;VFNMADD231SD	%XMM9,%XMM5,%XMM4;  (46) 
0x488c;/users/user2207/lbm_init/src/lbm_phys.c:93;VADDSD	%XMM4,%XMM20,%XMM4;  (46) 
0x4892;/users/user2207/lbm_init/src/lbm_phys.c:96;VMULSD	%XMM12,%XMM0,%XMM0;  (46) 
0x4897;/users/user2207/lbm_init/src/lbm_phys.c:45;VXORPD	%XMM3,%XMM5,%XMM5;  (46) 
0x489b;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM25,%XMM27,%XMM26;  (46) 
0x48a1;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	0x47f5(%RIP),%XMM27,%XMM26;  (46) 
0x48ab;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM26,0x8(%RDX);  (46) 
0x48b2;/users/user2207/lbm_init/src/lbm_phys.c:93;VMOVAPD	%ZMM18,%ZMM26;  (46) 
0x48b8;/users/user2207/lbm_init/src/lbm_phys.c:93;VFMADD132SD	%XMM9,%XMM7,%XMM26;  (46) 
0x48be;/users/user2207/lbm_init/src/lbm_phys.c:93;VADDSD	%XMM26,%XMM24,%XMM26;  (46) 
0x48c4;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	0x10(%RAX),%XMM27;  (46) 
0x48cb;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM25,%XMM27,%XMM26;  (46) 
0x48d1;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	0x47c5(%RIP),%XMM27,%XMM26;  (46) 
0x48db;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM26,0x10(%RDX);  (46) 
0x48e2;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	0x18(%RAX),%XMM26;  (46) 
0x48e9;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM25,%XMM26,%XMM4;  (46) 
0x48ef;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	0x47a7(%RIP),%XMM26,%XMM4;  (46) 
0x48f9;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM4,0x18(%RDX);  (46) 
0x48fe;/users/user2207/lbm_init/src/lbm_phys.c:93;VMOVAPD	%ZMM18,%ZMM26;  (46) 
0x4904;/users/user2207/lbm_init/src/lbm_phys.c:93;VFMADD132SD	%XMM13,%XMM7,%XMM26;  (46) 
0x490a;/users/user2207/lbm_init/src/lbm_phys.c:93;VADDSD	%XMM26,%XMM24,%XMM24;  (46) 
0x4910;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	0x20(%RAX),%XMM4;  (46) 
0x4915;/users/user2207/lbm_init/src/lbm_phys.c:114;VSUBSD	%XMM18,%XMM5,%XMM18;  (46) 
0x491b;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM25,%XMM4,%XMM24;  (46) 
0x4921;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	0x4775(%RIP),%XMM4,%XMM24;  (46) 
0x492b;/users/user2207/lbm_init/src/lbm_phys.c:45;VADDSD	%XMM17,%XMM21,%XMM4;  (46) 
0x4931;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM24,0x20(%RDX);  (46) 
0x4938;/users/user2207/lbm_init/src/lbm_phys.c:45;VMOVAPD	%ZMM18,%ZMM5;  (46) 
0x493e;/users/user2207/lbm_init/src/lbm_phys.c:45;VFMADD132SD	%XMM10,%XMM9,%XMM5;  (46) 
0x4943;/users/user2207/lbm_init/src/lbm_phys.c:93;VFMADD132SD	%XMM5,%XMM20,%XMM18;  (46) 
0x4949;/users/user2207/lbm_init/src/lbm_phys.c:45;VMULSD	%XMM16,%XMM4,%XMM4;  (46) 
0x494f;/users/user2207/lbm_init/src/lbm_phys.c:93;VMOVAPD	%ZMM4,%ZMM24;  (46) 
0x4955;/users/user2207/lbm_init/src/lbm_phys.c:93;VFMADD132SD	%XMM10,%XMM9,%XMM24;  (46) 
0x495b;/users/user2207/lbm_init/src/lbm_phys.c:93;VFMADD132SD	%XMM24,%XMM7,%XMM4;  (46) 
0x4961;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	0x28(%RAX),%XMM24;  (46) 
0x4968;/users/user2207/lbm_init/src/lbm_phys.c:93;VFNMADD231SD	%XMM11,%XMM6,%XMM4;  (46) 
0x496d;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM0,%XMM24,%XMM4;  (46) 
0x4973;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	0x4723(%RIP),%XMM24,%XMM4;  (46) 
0x497d;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM4,0x28(%RDX);  (46) 
0x4982;/users/user2207/lbm_init/src/lbm_phys.c:93;VMOVSD	%XMM1,%XMM1,%XMM4;  (46) 
0x4986;/users/user2207/lbm_init/src/lbm_phys.c:93;VFMADD132SD	%XMM10,%XMM9,%XMM4;  (46) 
0x498b;/users/user2207/lbm_init/src/lbm_phys.c:93;VFMADD132SD	%XMM4,%XMM7,%XMM1;  (46) 
0x4990;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	0x30(%RAX),%XMM4;  (46) 
0x4995;/users/user2207/lbm_init/src/lbm_phys.c:93;VFNMADD231SD	%XMM11,%XMM6,%XMM1;  (46) 
0x499a;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM0,%XMM4,%XMM1;  (46) 
0x499f;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	0x46f8(%RIP),%XMM4,%XMM1;  (46) 
0x49a8;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM1,0x30(%RDX);  (46) 
0x49ad;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM2,%XMM2,%XMM1;  (46) 
0x49b1;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	0x38(%RAX),%XMM5;  (46) 
0x49b6;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	%XMM10,%XMM9,%XMM1;  (46) 
0x49bb;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM0,%XMM5,%XMM18;  (46) 
0x49c1;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD231SD	0x46d5(%RIP),%XMM18,%XMM5;  (46) 
0x49cb;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM5,0x38(%RDX);  (46) 
0x49d0;/users/user2207/lbm_init/src/lbm_phys.c:93;VFMADD132SD	%XMM1,%XMM7,%XMM2;  (46) 
0x49d5;/users/user2207/lbm_init/src/lbm_phys.c:93;VFNMADD231SD	%XMM11,%XMM6,%XMM2;  (46) 
0x49da;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	0x40(%RAX),%XMM6;  (46) 
0x49df;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMSUB132SD	%XMM2,%XMM6,%XMM0;  (46) 
0x49e4;/users/user2207/lbm_init/src/lbm_phys.c:114;VFMADD132SD	0x46b3(%RIP),%XMM6,%XMM0;  (46) 
0x49ed;/users/user2207/lbm_init/src/lbm_phys.c:114;VMOVSD	%XMM0,0x40(%RDX);  (46) 
0x49f2;/users/user2207/lbm_init/src/lbm_phys.c:217;JNE	4718 <collision+0xe8>;  (46) 
0x49f8;/users/user2207/lbm_init/src/lbm_phys.c:216;LEA	0x1(%R12),%R12;(45) 
0x49fd;/users/user2207/lbm_init/src/lbm_phys.c:216;LEA	0x9(%RBP),%EBP;(45) 
0x4a00;/users/user2207/lbm_init/src/lbm_phys.c:216;CMP	0x8(%RSP),%R12;(45) 
0x4a05;/users/user2207/lbm_init/src/lbm_phys.c:216;JNE	46e0 <collision+0xb0>;(45) 
0x4a0b;/users/user2207/lbm_init/src/lbm_phys.c:222;LEA	0x18(%RSP),%RSP;
0x4a10;/users/user2207/lbm_init/src/lbm_phys.c:222;POP	%RBX;
0x4a11;/users/user2207/lbm_init/src/lbm_phys.c:222;POP	%RBP;
0x4a12;/users/user2207/lbm_init/src/lbm_phys.c:222;POP	%R12;
0x4a14;/users/user2207/lbm_init/src/lbm_phys.c:222;POP	%R13;
0x4a16;/users/user2207/lbm_init/src/lbm_phys.c:222;POP	%R14;
0x4a18;/users/user2207/lbm_init/src/lbm_phys.c:222;POP	%R15;
0x4a1a;/users/user2207/lbm_init/src/lbm_phys.c:222;RET;
0x4a1b;/users/user2207/lbm_init/src/lbm_phys.c:53;LEA	0x1b0e(%RIP),%RCX;
0x4a22;/users/user2207/lbm_init/src/lbm_phys.c:53;MOV	$0x35,%EDX;
0x4a27;/users/user2207/lbm_init/src/lbm_phys.c:53;LEA	0x1a51(%RIP),%RSI;
0x4a2e;/users/user2207/lbm_init/src/lbm_phys.c:53;LEA	0x1a59(%RIP),%RDI;
0x4a35;/users/user2207/lbm_init/src/lbm_phys.c:53;CALL	1240 <.plt.sec@start+0x70>;
0x4a3a;/users/user2207/lbm_init/src/lbm_phys.c:212;LEA	0x1abf(%RIP),%RCX;
0x4a41;/users/user2207/lbm_init/src/lbm_phys.c:212;MOV	$0xd4,%EDX;
0x4a46;/users/user2207/lbm_init/src/lbm_phys.c:212;LEA	0x1a32(%RIP),%RSI;
0x4a4d;/users/user2207/lbm_init/src/lbm_phys.c:212;LEA	0x1a54(%RIP),%RDI;
0x4a54;/users/user2207/lbm_init/src/lbm_phys.c:212;CALL	1240 <.plt.sec@start+0x70>;
0x4a59;/users/user2207/lbm_init/src/lbm_phys.c:213;LEA	0x1aa0(%RIP),%RCX;
0x4a60;/users/user2207/lbm_init/src/lbm_phys.c:213;MOV	$0xd5,%EDX;
0x4a65;/users/user2207/lbm_init/src/lbm_phys.c:213;LEA	0x1a13(%RIP),%RSI;
0x4a6c;/users/user2207/lbm_init/src/lbm_phys.c:213;LEA	0x1a5d(%RIP),%RDI;
0x4a73;/users/user2207/lbm_init/src/lbm_phys.c:213;CALL	1240 <.plt.sec@start+0x70>;
0x4a78;:0;NOPL	(%RAX,%RAX,1);
