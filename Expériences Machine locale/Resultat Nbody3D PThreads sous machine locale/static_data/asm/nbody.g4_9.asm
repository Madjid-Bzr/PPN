address;source_location;insn;indent
0x2600;/home/anism/VersionFinaleNbody3D/nbody4.c:101;CMPQ	$0xe,0x28(%RSP);
0x2606;/home/anism/VersionFinaleNbody3D/nbody4.c:104;VMOVSS	(%R10,%R9,4),%XMM13;
0x260c;/home/anism/VersionFinaleNbody3D/nbody4.c:105;VMOVSS	(%RBX,%R9,4),%XMM14;
0x2612;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VMOVSS	(%R12,%R9,4),%XMM15;
0x2618;/home/anism/VersionFinaleNbody3D/nbody4.c:106;JBE	2ee0 <move_particles+0x9f0>;
0x261e;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VXORPS	%XMM0,%XMM0,%XMM0;
0x2622;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VBROADCASTSS	%XMM13,%ZMM30;
0x2628;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VBROADCASTSS	%XMM14,%ZMM20;
0x262e;/home/anism/VersionFinaleNbody3D/nbody4.c:106;XOR	%ECX,%ECX;
0x2630;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VBROADCASTSS	%XMM15,%ZMM19;
0x2636;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VMOVAPS	%ZMM0,%ZMM5;
0x263c;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VMOVAPS	%ZMM0,%ZMM10;
0x2642;/home/anism/VersionFinaleNbody3D/nbody4.c:106;TEST	$0x40,%R13B;
0x2646;/home/anism/VersionFinaleNbody3D/nbody4.c:106;JE	2702 <move_particles+0x212>;
0x264c;/home/anism/VersionFinaleNbody3D/nbody4.c:104;VMOVUPS	(%RDI),%ZMM5;
0x2652;/home/anism/VersionFinaleNbody3D/nbody4.c:106;MOV	0x30(%RSP),%R8;
0x2657;/home/anism/VersionFinaleNbody3D/nbody4.c:106;MOV	$0x40,%ECX;
0x265c;/home/anism/VersionFinaleNbody3D/nbody4.c:105;VMOVUPS	(%RSI),%ZMM4;
0x2662;/home/anism/VersionFinaleNbody3D/nbody4.c:104;VSUBPS	%ZMM30,%ZMM5,%ZMM10;
0x2668;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VMOVUPS	(%R8),%ZMM7;
0x266e;/home/anism/VersionFinaleNbody3D/nbody4.c:105;VSUBPS	%ZMM20,%ZMM4,%ZMM5;
0x2674;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VSUBPS	%ZMM19,%ZMM7,%ZMM9;
0x267a;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VMULPS	%ZMM10,%ZMM10,%ZMM1;
0x2680;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VMOVAPS	%ZMM5,%ZMM6;
0x2686;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VFMADD132PS	%ZMM5,%ZMM24,%ZMM6;
0x268c;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VFMADD231PS	%ZMM9,%ZMM9,%ZMM1;
0x2692;/home/anism/VersionFinaleNbody3D/nbody4.c:109;VADDPS	%ZMM6,%ZMM1,%ZMM4;
0x2698;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VCMPPS	$0x4,%ZMM4,%ZMM21,%K1;
0x269f;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VRSQRT14PS	%ZMM4,%ZMM2{%K1}{z};
0x26a5;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM4,%ZMM2,%ZMM7;
0x26ab;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM2,%ZMM7,%ZMM1;
0x26b1;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM22,%ZMM7,%ZMM2;
0x26b7;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VADDPS	%ZMM23,%ZMM1,%ZMM6;
0x26bd;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM2,%ZMM6,%ZMM7;
0x26c3;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM4,%ZMM7,%ZMM4;
0x26c9;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VRCP14PS	%ZMM4,%ZMM6;
0x26cf;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM4,%ZMM6,%ZMM1;
0x26d5;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VADDPS	%ZMM6,%ZMM6,%ZMM2;
0x26db;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM1,%ZMM6,%ZMM7;
0x26e1;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VSUBPS	%ZMM7,%ZMM2,%ZMM4;
0x26e7;/home/anism/VersionFinaleNbody3D/nbody4.c:114;VFMADD132PS	%ZMM4,%ZMM0,%ZMM10;
0x26ed;/home/anism/VersionFinaleNbody3D/nbody4.c:115;VFMADD132PS	%ZMM4,%ZMM0,%ZMM5;
0x26f3;/home/anism/VersionFinaleNbody3D/nbody4.c:116;VFMADD231PS	%ZMM9,%ZMM4,%ZMM0;
0x26f9;/home/anism/VersionFinaleNbody3D/nbody4.c:101;CMP	%R13,%RCX;
0x26fc;/home/anism/VersionFinaleNbody3D/nbody4.c:101;JE	2868 <move_particles+0x378>;
0x2702;/home/anism/VersionFinaleNbody3D/nbody4.c:101;MOV	0x30(%RSP),%RDX;
0x2707;/home/anism/VersionFinaleNbody3D/nbody4.c:104;VMOVUPS	(%RDI,%RCX,1),%ZMM9;  (8) 
0x270e;/home/anism/VersionFinaleNbody3D/nbody4.c:105;VMOVUPS	(%RSI,%RCX,1),%ZMM6;  (8) 
0x2715;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VMOVUPS	(%RDX,%RCX,1),%ZMM1;  (8) 
0x271c;/home/anism/VersionFinaleNbody3D/nbody4.c:104;VSUBPS	%ZMM30,%ZMM9,%ZMM7;  (8) 
0x2722;/home/anism/VersionFinaleNbody3D/nbody4.c:105;VSUBPS	%ZMM20,%ZMM6,%ZMM6;  (8) 
0x2728;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VSUBPS	%ZMM19,%ZMM1,%ZMM4;  (8) 
0x272e;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VMULPS	%ZMM7,%ZMM7,%ZMM9;  (8) 
0x2734;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VMOVAPS	%ZMM6,%ZMM2;  (8) 
0x273a;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VFMADD132PS	%ZMM6,%ZMM24,%ZMM2;  (8) 
0x2740;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VFMADD231PS	%ZMM4,%ZMM4,%ZMM9;  (8) 
0x2746;/home/anism/VersionFinaleNbody3D/nbody4.c:109;VADDPS	%ZMM2,%ZMM9,%ZMM9;  (8) 
0x274c;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VCMPPS	$0x4,%ZMM9,%ZMM21,%K2;  (8) 
0x2753;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VRSQRT14PS	%ZMM9,%ZMM1{%K2}{z};  (8) 
0x2759;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM9,%ZMM1,%ZMM31;  (8) 
0x275f;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM1,%ZMM31,%ZMM2;  (8) 
0x2765;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM22,%ZMM31,%ZMM16;  (8) 
0x276b;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VADDPS	%ZMM23,%ZMM2,%ZMM1;  (8) 
0x2771;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM16,%ZMM1,%ZMM2;  (8) 
0x2777;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM9,%ZMM2,%ZMM9;  (8) 
0x277d;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VRCP14PS	%ZMM9,%ZMM2;  (8) 
0x2783;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM9,%ZMM2,%ZMM1;  (8) 
0x2789;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM1,%ZMM2,%ZMM9;  (8) 
0x278f;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VADDPS	%ZMM2,%ZMM2,%ZMM2;  (8) 
0x2795;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VSUBPS	%ZMM9,%ZMM2,%ZMM2;  (8) 
0x279b;/home/anism/VersionFinaleNbody3D/nbody4.c:114;VFMADD132PS	%ZMM2,%ZMM10,%ZMM7;  (8) 
0x27a1;/home/anism/VersionFinaleNbody3D/nbody4.c:115;VFMADD132PS	%ZMM2,%ZMM5,%ZMM6;  (8) 
0x27a7;/home/anism/VersionFinaleNbody3D/nbody4.c:105;VMOVUPS	0x40(%RSI,%RCX,1),%ZMM5;  (8) 
0x27af;/home/anism/VersionFinaleNbody3D/nbody4.c:116;VFMADD132PS	%ZMM4,%ZMM0,%ZMM2;  (8) 
0x27b5;/home/anism/VersionFinaleNbody3D/nbody4.c:104;VMOVUPS	0x40(%RDI,%RCX,1),%ZMM0;  (8) 
0x27bd;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VMOVUPS	0x40(%RDX,%RCX,1),%ZMM4;  (8) 
0x27c5;/home/anism/VersionFinaleNbody3D/nbody4.c:106;SUB	$-0x80,%RCX;  (8) 
0x27c9;/home/anism/VersionFinaleNbody3D/nbody4.c:105;VSUBPS	%ZMM20,%ZMM5,%ZMM5;  (8) 
0x27cf;/home/anism/VersionFinaleNbody3D/nbody4.c:104;VSUBPS	%ZMM30,%ZMM0,%ZMM10;  (8) 
0x27d5;/home/anism/VersionFinaleNbody3D/nbody4.c:106;VSUBPS	%ZMM19,%ZMM4,%ZMM9;  (8) 
0x27db;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VMOVAPS	%ZMM5,%ZMM0;  (8) 
0x27e1;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VMULPS	%ZMM10,%ZMM10,%ZMM1;  (8) 
0x27e7;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VFMADD132PS	%ZMM5,%ZMM24,%ZMM0;  (8) 
0x27ed;/home/anism/VersionFinaleNbody3D/nbody4.c:108;VFMADD231PS	%ZMM9,%ZMM9,%ZMM1;  (8) 
0x27f3;/home/anism/VersionFinaleNbody3D/nbody4.c:109;VADDPS	%ZMM0,%ZMM1,%ZMM4;  (8) 
0x27f9;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VCMPPS	$0x4,%ZMM4,%ZMM21,%K3;  (8) 
0x2800;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VRSQRT14PS	%ZMM4,%ZMM1{%K3}{z};  (8) 
0x2806;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM4,%ZMM1,%ZMM17;  (8) 
0x280c;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM1,%ZMM17,%ZMM0;  (8) 
0x2812;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM22,%ZMM17,%ZMM18;  (8) 
0x2818;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VADDPS	%ZMM23,%ZMM0,%ZMM1;  (8) 
0x281e;/home/anism/VersionFinaleNbody3D/nbody4.c:110;VMULPS	%ZMM18,%ZMM1,%ZMM0;  (8) 
0x2824;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM4,%ZMM0,%ZMM4;  (8) 
0x282a;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VRCP14PS	%ZMM4,%ZMM0;  (8) 
0x2830;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM4,%ZMM0,%ZMM1;  (8) 
0x2836;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VMULPS	%ZMM1,%ZMM0,%ZMM4;  (8) 
0x283c;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VADDPS	%ZMM0,%ZMM0,%ZMM0;  (8) 
0x2842;/home/anism/VersionFinaleNbody3D/nbody4.c:111;VSUBPS	%ZMM4,%ZMM0,%ZMM0;  (8) 
0x2848;/home/anism/VersionFinaleNbody3D/nbody4.c:114;VFMADD132PS	%ZMM0,%ZMM7,%ZMM10;  (8) 
0x284e;/home/anism/VersionFinaleNbody3D/nbody4.c:115;VFMADD132PS	%ZMM0,%ZMM6,%ZMM5;  (8) 
0x2854;/home/anism/VersionFinaleNbody3D/nbody4.c:116;VFMADD132PS	%ZMM9,%ZMM2,%ZMM0;  (8) 
0x285a;/home/anism/VersionFinaleNbody3D/nbody4.c:101;CMP	%R13,%RCX;  (8) 
0x285d;/home/anism/VersionFinaleNbody3D/nbody4.c:101;JNE	2707 <move_particles+0x217>;  (8) 
0x2863;/home/anism/VersionFinaleNbody3D/nbody4.c:101;MOV	%RDX,0x30(%RSP);
0x2868;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VEXTRACTF32X8	$0x1,%ZMM0,%YMM7;
0x286f;/home/anism/VersionFinaleNbody3D/nbody4.c:101;MOV	0x20(%RSP),%RAX;
0x2874;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%YMM0,%YMM7,%YMM6;
0x2878;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VEXTRACTF32X8	$0x1,%ZMM5,%YMM7;
0x287f;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%YMM5,%YMM7,%YMM5;
0x2883;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VEXTRACTF32X8	$0x1,%ZMM10,%YMM7;
0x288a;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%YMM10,%YMM7,%YMM10;
0x288f;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VEXTRACTF128	$0x1,%YMM6,%XMM2;
0x2895;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM6,%XMM2,%XMM9;
0x2899;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VEXTRACTF128	$0x1,%YMM5,%XMM6;
0x289f;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VMOVHLPS	%XMM9,%XMM9,%XMM1;
0x28a4;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM9,%XMM1,%XMM4;
0x28a9;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM5,%XMM6,%XMM9;
0x28ad;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VEXTRACTF128	$0x1,%YMM10,%XMM5;
0x28b3;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM10,%XMM5,%XMM6;
0x28b8;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VMOVHLPS	%XMM9,%XMM9,%XMM1;
0x28bd;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VSHUFPS	$0x55,%XMM4,%XMM4,%XMM0;
0x28c2;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM4,%XMM0,%XMM2;
0x28c6;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM9,%XMM1,%XMM4;
0x28cb;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VMOVHLPS	%XMM6,%XMM6,%XMM9;
0x28cf;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM6,%XMM9,%XMM1;
0x28d3;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VSHUFPS	$0x55,%XMM4,%XMM4,%XMM0;
0x28d8;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM4,%XMM0,%XMM4;
0x28dc;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VSHUFPS	$0x55,%XMM1,%XMM1,%XMM0;
0x28e1;/home/anism/VersionFinaleNbody3D/nbody4.c:101;VADDPS	%XMM1,%XMM0,%XMM5;
0x28e5;/home/anism/VersionFinaleNbody3D/nbody4.c:101;CMP	%RAX,0x38(%RSP);
0x28ea;/home/anism/VersionFinaleNbody3D/nbody4.c:101;JE	2cf8 <move_particles+0x808>;
0x2cf8;/home/anism/VersionFinaleNbody3D/nbody4.c:120;VCVTSS2SD	(%R15,%R9,4),%XMM3,%XMM13;
0x2cfe;/home/anism/VersionFinaleNbody3D/nbody4.c:120;VCVTSS2SD	%XMM5,%XMM5,%XMM5;
0x2d02;/home/anism/VersionFinaleNbody3D/nbody4.c:120;VFMADD231SD	%XMM8,%XMM5,%XMM13;
0x2d07;/home/anism/VersionFinaleNbody3D/nbody4.c:121;VMOVQ	%XMM11,%RCX;
0x2d0c;/home/anism/VersionFinaleNbody3D/nbody4.c:121;VCVTSS2SD	%XMM4,%XMM4,%XMM4;
0x2d10;/home/anism/VersionFinaleNbody3D/nbody4.c:122;VMOVQ	%XMM12,%R8;
0x2d15;/home/anism/VersionFinaleNbody3D/nbody4.c:122;VCVTSS2SD	%XMM2,%XMM2,%XMM2;
0x2d19;/home/anism/VersionFinaleNbody3D/nbody4.c:120;VCVTSD2SS	%XMM13,%XMM13,%XMM14;
0x2d1e;/home/anism/VersionFinaleNbody3D/nbody4.c:120;VMOVSS	%XMM14,(%R15,%R9,4);
0x2d24;/home/anism/VersionFinaleNbody3D/nbody4.c:121;VCVTSS2SD	(%RCX,%R9,4),%XMM3,%XMM15;
0x2d2a;/home/anism/VersionFinaleNbody3D/nbody4.c:121;VFMADD231SD	%XMM8,%XMM4,%XMM15;
0x2d2f;/home/anism/VersionFinaleNbody3D/nbody4.c:121;VCVTSD2SS	%XMM15,%XMM15,%XMM9;
0x2d34;/home/anism/VersionFinaleNbody3D/nbody4.c:121;VMOVSS	%XMM9,(%RCX,%R9,4);
0x2d3a;/home/anism/VersionFinaleNbody3D/nbody4.c:122;VCVTSS2SD	(%R8,%R9,4),%XMM3,%XMM1;
0x2d40;/home/anism/VersionFinaleNbody3D/nbody4.c:122;VFMADD231SD	%XMM8,%XMM2,%XMM1;
0x2d45;/home/anism/VersionFinaleNbody3D/nbody4.c:122;VCVTSD2SS	%XMM1,%XMM1,%XMM7;
0x2d49;/home/anism/VersionFinaleNbody3D/nbody4.c:122;VMOVSS	%XMM7,(%R8,%R9,4);
0x2d4f;/home/anism/VersionFinaleNbody3D/nbody4.c:93;ADD	$0x1,%R9;
0x2d53;/home/anism/VersionFinaleNbody3D/nbody4.c:93;CMP	%R11,%R9;
0x2d56;/home/anism/VersionFinaleNbody3D/nbody4.c:93;JNE	2600 <move_particles+0x110>;
