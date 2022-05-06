address;source_location;insn;indent
0x2cb0;/users/user2234/Code_Nbody3D/nbody_omp.c:23;ENDBR64;
0x2cb4;/users/user2234/Code_Nbody3D/nbody_omp.c:23;PUSH	%RBP;
0x2cb5;/users/user2234/Code_Nbody3D/nbody_omp.c:23;MOV	%RSP,%RBP;
0x2cb8;/users/user2234/Code_Nbody3D/nbody_omp.c:23;PUSH	%R15;
0x2cba;/users/user2234/Code_Nbody3D/nbody_omp.c:23;PUSH	%R14;
0x2cbc;/users/user2234/Code_Nbody3D/nbody_omp.c:23;PUSH	%R13;
0x2cbe;/users/user2234/Code_Nbody3D/nbody_omp.c:23;PUSH	%R12;
0x2cc0;/users/user2234/Code_Nbody3D/nbody_omp.c:23;PUSH	%RBX;
0x2cc1;/users/user2234/Code_Nbody3D/nbody_omp.c:23;SUB	$0x38,%RSP;
0x2cc5;/users/user2234/Code_Nbody3D/nbody_omp.c:23;MOV	%RDI,-0x40(%RBP);
0x2cc9;/users/user2234/Code_Nbody3D/nbody_omp.c:25;TEST	%RDI,%RDI;
0x2ccc;/users/user2234/Code_Nbody3D/nbody_omp.c:25;JE	2dd9 <init+0x129>;
0x2cd2;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	0x28(%RBP),%RAX;
0x2cd6;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	0x30(%RBP),%RDX;
0x2cda;/users/user2234/Code_Nbody3D/nbody_omp.c:25;XOR	%EBX,%EBX;
0x2cdc;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	0x38(%RBP),%RCX;
0x2ce0;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	0x10(%RBP),%R15;
0x2ce4;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	0x18(%RBP),%R14;
0x2ce8;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	0x20(%RBP),%R13;
0x2cec;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	%RAX,-0x48(%RBP);
0x2cf0;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	%RDX,-0x50(%RBP);
0x2cf4;/users/user2234/Code_Nbody3D/nbody_omp.c:25;MOV	%RCX,-0x58(%RBP);
0x2cf8;/users/user2234/Code_Nbody3D/nbody_omp.c:25;NOPL	(%RAX,%RAX,1);
0x2d00;/users/user2234/Code_Nbody3D/nbody_omp.c:28;CALL	11d0 <.plt.sec@start+0xc0>;(7) 
0x2d05;/users/user2234/Code_Nbody3D/nbody_omp.c:28;MOVSXD	%EAX,%R12;(7) 
0x2d08;/users/user2234/Code_Nbody3D/nbody_omp.c:29;CALL	11d0 <.plt.sec@start+0xc0>;(7) 
0x2d0d;/users/user2234/Code_Nbody3D/nbody_omp.c:30;MOVL	$0x30000000,-0x34(%RBP);(7) 
0x2d14;/users/user2234/Code_Nbody3D/nbody_omp.c:29;MOVSXD	%EAX,%RSI;(7) 
0x2d17;/users/user2234/Code_Nbody3D/nbody_omp.c:30;CMP	%RSI,%R12;(7) 
0x2d1a;/users/user2234/Code_Nbody3D/nbody_omp.c:30;JA	2d23 <init+0x73>;(7) 
0x2d1c;/users/user2234/Code_Nbody3D/nbody_omp.c:30;MOVL	$-0x50000000,-0x34(%RBP);(7) 
0x2d23;/users/user2234/Code_Nbody3D/nbody_omp.c:33;CALL	11d0 <.plt.sec@start+0xc0>;(7) 
0x2d28;/users/user2234/Code_Nbody3D/nbody_omp.c:33;VXORPS	%XMM1,%XMM1,%XMM1;(7) 
0x2d2c;/users/user2234/Code_Nbody3D/nbody_omp.c:33;VCVTSI2SS	%EAX,%XMM1,%XMM0;(7) 
0x2d30;/users/user2234/Code_Nbody3D/nbody_omp.c:33;VMULSS	-0x34(%RBP),%XMM0,%XMM2;(7) 
0x2d35;/users/user2234/Code_Nbody3D/nbody_omp.c:33;VMOVSS	%XMM2,(%R15,%RBX,4);(7) 
0x2d3b;/users/user2234/Code_Nbody3D/nbody_omp.c:34;CALL	11d0 <.plt.sec@start+0xc0>;(7) 
0x2d40;/users/user2234/Code_Nbody3D/nbody_omp.c:34;VXORPS	%XMM3,%XMM3,%XMM3;(7) 
0x2d44;/users/user2234/Code_Nbody3D/nbody_omp.c:34;VCVTSI2SS	%EAX,%XMM3,%XMM4;(7) 
0x2d48;/users/user2234/Code_Nbody3D/nbody_omp.c:34;VMULSS	0x440(%RIP),%XMM4,%XMM5;(7) 
0x2d50;/users/user2234/Code_Nbody3D/nbody_omp.c:34;VMOVSS	%XMM5,(%R14,%RBX,4);(7) 
0x2d56;/users/user2234/Code_Nbody3D/nbody_omp.c:35;CALL	11d0 <.plt.sec@start+0xc0>;(7) 
0x2d5b;/users/user2234/Code_Nbody3D/nbody_omp.c:35;VXORPS	%XMM6,%XMM6,%XMM6;(7) 
0x2d5f;/users/user2234/Code_Nbody3D/nbody_omp.c:35;VCVTSI2SS	%EAX,%XMM6,%XMM7;(7) 
0x2d63;/users/user2234/Code_Nbody3D/nbody_omp.c:35;VMULSS	-0x34(%RBP),%XMM7,%XMM8;(7) 
0x2d68;/users/user2234/Code_Nbody3D/nbody_omp.c:35;VMOVSS	%XMM8,(%R13,%RBX,4);(7) 
0x2d6f;/users/user2234/Code_Nbody3D/nbody_omp.c:38;CALL	11d0 <.plt.sec@start+0xc0>;(7) 
0x2d74;/users/user2234/Code_Nbody3D/nbody_omp.c:38;VXORPS	%XMM9,%XMM9,%XMM9;(7) 
0x2d79;/users/user2234/Code_Nbody3D/nbody_omp.c:38;MOV	-0x48(%RBP),%RDI;(7) 
0x2d7d;/users/user2234/Code_Nbody3D/nbody_omp.c:38;VCVTSI2SS	%EAX,%XMM9,%XMM10;(7) 
0x2d81;/users/user2234/Code_Nbody3D/nbody_omp.c:38;VMULSS	0x407(%RIP),%XMM10,%XMM11;(7) 
0x2d89;/users/user2234/Code_Nbody3D/nbody_omp.c:38;VMOVSS	%XMM11,(%RDI,%RBX,4);(7) 
0x2d8e;/users/user2234/Code_Nbody3D/nbody_omp.c:39;CALL	11d0 <.plt.sec@start+0xc0>;(7) 
0x2d93;/users/user2234/Code_Nbody3D/nbody_omp.c:39;VXORPS	%XMM12,%XMM12,%XMM12;(7) 
0x2d98;/users/user2234/Code_Nbody3D/nbody_omp.c:39;MOV	-0x50(%RBP),%R8;(7) 
0x2d9c;/users/user2234/Code_Nbody3D/nbody_omp.c:39;VCVTSI2SS	%EAX,%XMM12,%XMM13;(7) 
0x2da0;/users/user2234/Code_Nbody3D/nbody_omp.c:39;VMULSS	-0x34(%RBP),%XMM13,%XMM14;(7) 
0x2da5;/users/user2234/Code_Nbody3D/nbody_omp.c:39;VMOVSS	%XMM14,(%R8,%RBX,4);(7) 
0x2dab;/users/user2234/Code_Nbody3D/nbody_omp.c:40;CALL	11d0 <.plt.sec@start+0xc0>;(7) 
0x2db0;/users/user2234/Code_Nbody3D/nbody_omp.c:40;VXORPS	%XMM15,%XMM15,%XMM15;(7) 
0x2db5;/users/user2234/Code_Nbody3D/nbody_omp.c:40;MOV	-0x58(%RBP),%R9;(7) 
0x2db9;/users/user2234/Code_Nbody3D/nbody_omp.c:40;VCVTSI2SS	%EAX,%XMM15,%XMM1;(7) 
0x2dbd;/users/user2234/Code_Nbody3D/nbody_omp.c:40;VMULSS	0x3cb(%RIP),%XMM1,%XMM0;(7) 
0x2dc5;/users/user2234/Code_Nbody3D/nbody_omp.c:40;VMOVSS	%XMM0,(%R9,%RBX,4);(7) 
0x2dcb;/users/user2234/Code_Nbody3D/nbody_omp.c:25;ADD	$0x1,%RBX;(7) 
0x2dcf;/users/user2234/Code_Nbody3D/nbody_omp.c:25;CMP	%RBX,-0x40(%RBP);(7) 
0x2dd3;/users/user2234/Code_Nbody3D/nbody_omp.c:25;JNE	2d00 <init+0x50>;(7) 
0x2dd9;/users/user2234/Code_Nbody3D/nbody_omp.c:45;ADD	$0x38,%RSP;
0x2ddd;/users/user2234/Code_Nbody3D/nbody_omp.c:45;POP	%RBX;
0x2dde;/users/user2234/Code_Nbody3D/nbody_omp.c:45;POP	%R12;
0x2de0;/users/user2234/Code_Nbody3D/nbody_omp.c:45;POP	%R13;
0x2de2;/users/user2234/Code_Nbody3D/nbody_omp.c:45;POP	%R14;
0x2de4;/users/user2234/Code_Nbody3D/nbody_omp.c:45;POP	%R15;
0x2de6;/users/user2234/Code_Nbody3D/nbody_omp.c:45;POP	%RBP;
0x2de7;/users/user2234/Code_Nbody3D/nbody_omp.c:45;RET;
0x2de8;:0;NOPL	(%RAX,%RAX,1);
