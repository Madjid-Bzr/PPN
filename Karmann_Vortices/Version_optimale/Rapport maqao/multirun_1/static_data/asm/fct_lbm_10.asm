address;source_location;insn;indent
0x39b0;/users/user2207/lbm_opt/src/lbm_phys.c:187;ENDBR64;
0x39b4;/users/user2207/lbm_opt/src/lbm_phys.c:187;PUSH	%R13;
0x39b6;/users/user2207/lbm_opt/src/lbm_phys.c:187;PUSH	%R12;
0x39b8;/users/user2207/lbm_opt/src/lbm_phys.c:187;PUSH	%RBP;
0x39b9;/users/user2207/lbm_opt/src/lbm_phys.c:187;PUSH	%RBX;
0x39ba;/users/user2207/lbm_opt/src/lbm_phys.c:187;LEA	-0x8(%RSP),%RSP;
0x39bf;/users/user2207/lbm_opt/src/lbm_phys.c:187;MOV	(%RDI),%RBX;
0x39c2;/users/user2207/lbm_opt/src/lbm_phys.c:190;MOV	0x8(%RBX),%EAX;
0x39c5;/users/user2207/lbm_opt/src/lbm_phys.c:190;MOV	%EAX,%EBP;
0x39c7;/users/user2207/lbm_opt/src/lbm_phys.c:190;SUB	$0x1,%EBP;
0x39ca;/users/user2207/lbm_opt/src/lbm_phys.c:190;CMP	$0x1,%EBP;
0x39cd;/users/user2207/lbm_opt/src/lbm_phys.c:190;JBE	3c37 <special_cells._omp_fn.0+0x287>;
0x39d3;/users/user2207/lbm_opt/src/lbm_phys.c:190;LEA	(%RDI),%R13;
0x39d6;/users/user2207/lbm_opt/src/lbm_phys.c:190;CALL	1210 <.plt.sec@start+0x20>;
0x39db;/users/user2207/lbm_opt/src/lbm_phys.c:190;MOVSXD	%EAX,%R12;
0x39de;/users/user2207/lbm_opt/src/lbm_phys.c:190;CALL	12b0 <.plt.sec@start+0xc0>;
0x39e3;/users/user2207/lbm_opt/src/lbm_phys.c:190;MOVSXD	%EAX,%R8;
0x39e6;/users/user2207/lbm_opt/src/lbm_phys.c:190;XOR	%EDX,%EDX;
0x39e8;/users/user2207/lbm_opt/src/lbm_phys.c:190;LEA	-0x1(%RBP),%RAX;
0x39ec;/users/user2207/lbm_opt/src/lbm_phys.c:190;DIV	%R12;
0x39ef;/users/user2207/lbm_opt/src/lbm_phys.c:190;CMP	%RDX,%R8;
0x39f2;/users/user2207/lbm_opt/src/lbm_phys.c:190;JB	3ee2 <special_cells._omp_fn.0+0x532>;
0x39f8;/users/user2207/lbm_opt/src/lbm_phys.c:190;IMUL	%RAX,%R8;
0x39fc;/users/user2207/lbm_opt/src/lbm_phys.c:190;ADD	%RDX,%R8;
0x39ff;/users/user2207/lbm_opt/src/lbm_phys.c:190;ADD	%R8,%RAX;
0x3a02;/users/user2207/lbm_opt/src/lbm_phys.c:190;CMP	%RAX,%R8;
0x3a05;/users/user2207/lbm_opt/src/lbm_phys.c:190;JAE	3c37 <special_cells._omp_fn.0+0x287>;
0x3a0b;/users/user2207/lbm_opt/src/lbm_phys.c:191;MOV	0xc(%RBX),%ESI;
0x3a0e;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%R8),%R8;
0x3a12;/users/user2207/lbm_opt/src/lbm_phys.c:191;VMOVSD	0x1bce(%RIP),%XMM6;
0x3a1a;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%R10;
0x3a1e;/users/user2207/lbm_opt/src/lbm_phys.c:187;MOV	0x10(%R13),%R11;
0x3a22;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	(%RSI),%R9D;
0x3a25;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	(%RSI),%RDI;
0x3a28;/users/user2207/lbm_opt/src/lbm_phys.c:142;LEA	-0x1(%RSI),%RSI;
0x3a2c;/users/user2207/lbm_opt/src/lbm_phys.c:191;SUB	$0x1,%R9D;
0x3a30;/users/user2207/lbm_opt/src/lbm_phys.c:142;VCVTUSI2SD	%RSI,%XMM5,%XMM5;
0x3a36;/users/user2207/lbm_opt/src/lbm_phys.c:142;CMP	$0x1,%R9D;
0x3a3a;/users/user2207/lbm_opt/src/lbm_phys.c:187;MOV	0x8(%R13),%R13;
0x3a3e;/users/user2207/lbm_opt/src/lbm_phys.c:144;VMULSD	%XMM5,%XMM5,%XMM0;
0x3a42;/users/user2207/lbm_opt/src/lbm_phys.c:144;VDIVSD	%XMM0,%XMM6,%XMM6;
0x3a46;/users/user2207/lbm_opt/src/lbm_phys.c:144;JBE	3c37 <special_cells._omp_fn.0+0x287>;
0x3a4c;/users/user2207/lbm_opt/src/lbm_phys.c:167;VMOVSD	0x1bd4(%RIP),%XMM3;
0x3a54;/users/user2207/lbm_opt/src/lbm_phys.c:167;LEA	(%RDI,%RDI,8),%EBP;
0x3a57;/users/user2207/lbm_opt/src/lbm_phys.c:167;LEA	(%RBP),%EDI;
0x3a5a;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	%XMM3,%XMM3,%XMM4;
0x3a5e;/users/user2207/lbm_opt/src/lbm_phys.c:179;IMUL	%R8D,%EDI;
0x3a62;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	(%R13),%RSI;
0x3a66;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	0xc(%R13),%R12D;
0x3a6a;/users/user2207/lbm_opt/src/lbm_phys.c:192;VMOVSD	0x1bbe(%RIP),%XMM9;
0x3a72;/users/user2207/lbm_opt/src/lbm_phys.c:163;VMOVSD	0x1b7e(%RIP),%XMM8;
0x3a7a;/users/user2207/lbm_opt/src/lbm_phys.c:163;VMOVSD	0x1bb6(%RIP),%XMM7;
0x3a82;/users/user2207/lbm_opt/src/lbm_phys.c:163;NOPW	%CS:(%RAX,%RAX,1);
0x3a8d;/users/user2207/lbm_opt/src/lbm_phys.c:163;NOPL	(%RAX);
0x3a90;/users/user2207/lbm_opt/include/lbm_struct.h:148;MOV	%R12D,%ECX;(17) 
0x3a93;/users/user2207/lbm_opt/src/lbm_phys.c:191;MOV	$0x1,%EAX;(17) 
0x3a98;/users/user2207/lbm_opt/include/lbm_struct.h:148;IMUL	%R8D,%ECX;(17) 
0x3a9c;/users/user2207/lbm_opt/include/lbm_struct.h:148;TEST	$0x1,%R9B;(17) 
0x3aa0;/users/user2207/lbm_opt/include/lbm_struct.h:148;JNE	3b13 <special_cells._omp_fn.0+0x163>;(17) 
0x3aa2;/users/user2207/lbm_opt/include/lbm_struct.h:148;LEA	0x1(%RCX),%EAX;(17) 
0x3aa5;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	(%RSI,%RAX,4),%EDX;(17) 
0x3aa8;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x2,%EDX;(17) 
0x3aab;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3e50 <special_cells._omp_fn.0+0x4a0>;(17) 
0x3ab1;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x3,%EDX;(17) 
0x3ab4;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3e08 <special_cells._omp_fn.0+0x458>;(17) 
0x3aba;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x1,%EDX;(17) 
0x3abd;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3dc8 <special_cells._omp_fn.0+0x418>;(17) 
0x3ac3;/users/user2207/lbm_opt/src/lbm_phys.c:191;MOV	$0x2,%EAX;(17) 
0x3ac8;/users/user2207/lbm_opt/src/lbm_phys.c:191;CMP	%R9,%RAX;(17) 
0x3acb;/users/user2207/lbm_opt/src/lbm_phys.c:191;JNE	3b13 <special_cells._omp_fn.0+0x163>;(17) 
0x3acd;/users/user2207/lbm_opt/src/lbm_phys.c:191;JMP	3c27 <special_cells._omp_fn.0+0x277>;(17) 
0x3ad2;/users/user2207/lbm_opt/src/lbm_phys.c:191;NOPW	(%RAX,%RAX,1);
0x3ad8;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x1,%EDX;  (16) 
0x3adb;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3d80 <special_cells._omp_fn.0+0x3d0>;  (16) 
0x3ae1;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%RAX;  (16) 
0x3ae5;/users/user2207/lbm_opt/include/lbm_struct.h:148;LEA	(%RCX,%RAX,1),%EDX;  (16) 
0x3ae8;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	(%RSI,%RDX,4),%EDX;  (16) 
0x3aeb;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x2,%EDX;  (16) 
0x3aee;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3b82 <special_cells._omp_fn.0+0x1d2>;  (16) 
0x3af4;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x3,%EDX;  (16) 
0x3af7;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3d30 <special_cells._omp_fn.0+0x380>;  (16) 
0x3afd;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x1,%EDX;  (16) 
0x3b00;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3ce8 <special_cells._omp_fn.0+0x338>;  (16) 
0x3b06;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%RAX;  (16) 
0x3b0a;/users/user2207/lbm_opt/src/lbm_phys.c:191;CMP	%R9,%RAX;  (16) 
0x3b0d;/users/user2207/lbm_opt/src/lbm_phys.c:191;JE	3c27 <special_cells._omp_fn.0+0x277>;  (16) 
0x3b13;/users/user2207/lbm_opt/include/lbm_struct.h:148;LEA	(%RCX,%RAX,1),%EDX;  (16) 
0x3b16;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	(%RSI,%RDX,4),%EDX;  (16) 
0x3b19;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x2,%EDX;  (16) 
0x3b1c;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3c48 <special_cells._omp_fn.0+0x298>;  (16) 
0x3b22;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x3,%EDX;  (16) 
0x3b25;/users/user2207/lbm_opt/src/lbm_phys.c:192;JNE	3ad8 <special_cells._omp_fn.0+0x128>;  (16) 
0x3b27;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%EDX;  (16) 
0x3b2a;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%RAX;  (16) 
0x3b2e;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RDI,1),%R13D;  (16) 
0x3b32;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;  (16) 
0x3b35;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%R13;  (16) 
0x3b39;/users/user2207/lbm_opt/include/lbm_struct.h:148;LEA	(%RCX,%RAX,1),%EDX;  (16) 
0x3b3c;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x20(%R13),%XMM12;  (16) 
0x3b42;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x10(%R13),%XMM13;  (16) 
0x3b48;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	(%RSI,%RDX,4),%EDX;  (16) 
0x3b4b;/users/user2207/lbm_opt/src/lbm_phys.c:179;VSUBSD	%XMM13,%XMM12,%XMM0;  (16) 
0x3b50;/users/user2207/lbm_opt/src/lbm_phys.c:180;VSUBSD	%XMM12,%XMM13,%XMM14;  (16) 
0x3b55;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	0x8(%R13),%XMM11;  (16) 
0x3b5b;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	%XMM11,0x18(%R13);  (16) 
0x3b61;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x2,%EDX;  (16) 
0x3b64;/users/user2207/lbm_opt/src/lbm_phys.c:179;VFMADD213SD	0x40(%R13),%XMM4,%XMM0;  (16) 
0x3b6a;/users/user2207/lbm_opt/src/lbm_phys.c:180;VFMADD213SD	0x28(%R13),%XMM4,%XMM14;  (16) 
0x3b70;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	%XMM0,0x30(%R13);  (16) 
0x3b76;/users/user2207/lbm_opt/src/lbm_phys.c:180;VMOVSD	%XMM14,0x38(%R13);  (16) 
0x3b7c;/users/user2207/lbm_opt/src/lbm_phys.c:192;JNE	3af4 <special_cells._omp_fn.0+0x144>;  (16) 
0x3b82;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;  (16) 
0x3b85;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%R13D;  (16) 
0x3b89;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R13,%RDI,1),%R13D;  (16) 
0x3b8e;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%RDX;  (16) 
0x3b92;/users/user2207/lbm_opt/src/lbm_phys.c:200;MOV	0x4(%R11),%R13D;  (16) 
0x3b96;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x18(%RDX),%XMM10;  (16) 
0x3b9b;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x10(%RDX),%XMM15;  (16) 
0x3ba0;/users/user2207/lbm_opt/src/lbm_phys.c:141;ADD	%RAX,%R13;  (16) 
0x3ba3;/users/user2207/lbm_opt/src/lbm_phys.c:141;VADDSD	(%RDX),%XMM15,%XMM14;  (16) 
0x3ba7;/users/user2207/lbm_opt/src/lbm_phys.c:141;SUB	$0x1,%R13;  (16) 
0x3bab;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%RAX;  (16) 
0x3baf;/users/user2207/lbm_opt/src/lbm_phys.c:141;VCVTSI2SD	%R13,%XMM11,%XMM11;  (16) 
0x3bb4;/users/user2207/lbm_opt/src/lbm_phys.c:191;CMP	%R9,%RAX;  (16) 
0x3bb7;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x20(%RDX),%XMM2;  (16) 
0x3bbc;/users/user2207/lbm_opt/src/lbm_phys.c:166;VMOVSD	%XMM10,0x8(%RDX);  (16) 
0x3bc1;/users/user2207/lbm_opt/src/lbm_phys.c:143;VSUBSD	%XMM11,%XMM5,%XMM12;  (16) 
0x3bc6;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM11,%XMM12,%XMM13;  (16) 
0x3bcb;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x30(%RDX),%XMM11;  (16) 
0x3bd0;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM11,%XMM10,%XMM1;  (16) 
0x3bd5;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x38(%RDX),%XMM12;  (16) 
0x3bda;/users/user2207/lbm_opt/src/lbm_phys.c:167;VSUBSD	%XMM15,%XMM2,%XMM10;  (16) 
0x3bdf;/users/user2207/lbm_opt/src/lbm_phys.c:168;VSUBSD	%XMM2,%XMM15,%XMM15;  (16) 
0x3be3;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM6,%XMM13,%XMM0;  (16) 
0x3be7;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM12,%XMM1,%XMM13;  (16) 
0x3bec;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD132SD	%XMM3,%XMM12,%XMM10;  (16) 
0x3bf1;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM3,%XMM11,%XMM15;  (16) 
0x3bf6;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM9,%XMM2,%XMM13;  (16) 
0x3bfb;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM14,%XMM13,%XMM1;  (16) 
0x3c00;/users/user2207/lbm_opt/src/lbm_phys.c:163;VSUBSD	%XMM0,%XMM8,%XMM14;  (16) 
0x3c04;/users/user2207/lbm_opt/src/lbm_phys.c:163;VMULSD	%XMM7,%XMM0,%XMM0;  (16) 
0x3c08;/users/user2207/lbm_opt/src/lbm_phys.c:161;VDIVSD	%XMM14,%XMM1,%XMM13;  (16) 
0x3c0d;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD231SD	%XMM13,%XMM0,%XMM10;  (16) 
0x3c12;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM13,%XMM15,%XMM0;  (16) 
0x3c17;/users/user2207/lbm_opt/src/lbm_phys.c:167;VMOVSD	%XMM10,0x28(%RDX);  (16) 
0x3c1c;/users/user2207/lbm_opt/src/lbm_phys.c:168;VMOVSD	%XMM0,0x40(%RDX);  (16) 
0x3c21;/users/user2207/lbm_opt/src/lbm_phys.c:191;JNE	3b13 <special_cells._omp_fn.0+0x163>;  (16) 
0x3c27;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%R8),%R8;(17) 
0x3c2b;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	(%RDI,%RBP,1),%EDI;(17) 
0x3c2e;/users/user2207/lbm_opt/src/lbm_phys.c:191;CMP	%R8,%R10;(17) 
0x3c31;/users/user2207/lbm_opt/src/lbm_phys.c:191;JA	3a90 <special_cells._omp_fn.0+0xe0>;(17) 
0x3c37;/users/user2207/lbm_opt/src/lbm_phys.c:187;LEA	0x8(%RSP),%RSP;
0x3c3c;/users/user2207/lbm_opt/src/lbm_phys.c:187;POP	%RBX;
0x3c3d;/users/user2207/lbm_opt/src/lbm_phys.c:187;POP	%RBP;
0x3c3e;/users/user2207/lbm_opt/src/lbm_phys.c:187;POP	%R12;
0x3c40;/users/user2207/lbm_opt/src/lbm_phys.c:187;POP	%R13;
0x3c42;/users/user2207/lbm_opt/src/lbm_phys.c:187;RET;
0x3c43;/users/user2207/lbm_opt/src/lbm_phys.c:187;NOPL	(%RAX,%RAX,1);
0x3c48;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;  (16) 
0x3c4b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%R13D;  (16) 
0x3c4f;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R13,%RDI,1),%R13D;  (16) 
0x3c54;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%RDX;  (16) 
0x3c58;/users/user2207/lbm_opt/src/lbm_phys.c:200;MOV	0x4(%R11),%R13D;  (16) 
0x3c5c;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x18(%RDX),%XMM10;  (16) 
0x3c61;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x10(%RDX),%XMM2;  (16) 
0x3c66;/users/user2207/lbm_opt/src/lbm_phys.c:141;ADD	%RAX,%R13;  (16) 
0x3c69;/users/user2207/lbm_opt/src/lbm_phys.c:141;VADDSD	(%RDX),%XMM2,%XMM14;  (16) 
0x3c6d;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x38(%RDX),%XMM13;  (16) 
0x3c72;/users/user2207/lbm_opt/src/lbm_phys.c:141;SUB	$0x1,%R13;  (16) 
0x3c76;/users/user2207/lbm_opt/src/lbm_phys.c:141;VCVTSI2SD	%R13,%XMM11,%XMM11;  (16) 
0x3c7b;/users/user2207/lbm_opt/src/lbm_phys.c:166;VMOVSD	%XMM10,0x8(%RDX);  (16) 
0x3c80;/users/user2207/lbm_opt/src/lbm_phys.c:143;VSUBSD	%XMM11,%XMM5,%XMM12;  (16) 
0x3c85;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM11,%XMM12,%XMM0;  (16) 
0x3c8a;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x30(%RDX),%XMM12;  (16) 
0x3c8f;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM12,%XMM10,%XMM1;  (16) 
0x3c94;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x20(%RDX),%XMM11;  (16) 
0x3c99;/users/user2207/lbm_opt/src/lbm_phys.c:167;VSUBSD	%XMM2,%XMM11,%XMM10;  (16) 
0x3c9d;/users/user2207/lbm_opt/src/lbm_phys.c:168;VSUBSD	%XMM11,%XMM2,%XMM2;  (16) 
0x3ca2;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM6,%XMM0,%XMM15;  (16) 
0x3ca6;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM13,%XMM1,%XMM0;  (16) 
0x3cab;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD132SD	%XMM3,%XMM13,%XMM10;  (16) 
0x3cb0;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM3,%XMM12,%XMM2;  (16) 
0x3cb5;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM9,%XMM11,%XMM0;  (16) 
0x3cba;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM14,%XMM0,%XMM1;  (16) 
0x3cbf;/users/user2207/lbm_opt/src/lbm_phys.c:163;VSUBSD	%XMM15,%XMM8,%XMM14;  (16) 
0x3cc4;/users/user2207/lbm_opt/src/lbm_phys.c:163;VMULSD	%XMM7,%XMM15,%XMM15;  (16) 
0x3cc8;/users/user2207/lbm_opt/src/lbm_phys.c:161;VDIVSD	%XMM14,%XMM1,%XMM1;  (16) 
0x3ccd;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD231SD	%XMM1,%XMM15,%XMM10;  (16) 
0x3cd2;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM1,%XMM2,%XMM15;  (16) 
0x3cd7;/users/user2207/lbm_opt/src/lbm_phys.c:167;VMOVSD	%XMM10,0x28(%RDX);  (16) 
0x3cdc;/users/user2207/lbm_opt/src/lbm_phys.c:168;VMOVSD	%XMM15,0x40(%RDX);  (16) 
0x3ce1;/users/user2207/lbm_opt/src/lbm_phys.c:168;JMP	3ae1 <special_cells._omp_fn.0+0x131>;  (16) 
0x3ce6;/users/user2207/lbm_opt/src/lbm_phys.c:168;XCHG	%AX,%AX;
0x3ce8;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%EDX;  (16) 
0x3ceb;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RDI,1),%R13D;  (16) 
0x3cef;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;  (16) 
0x3cf2;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%R13;  (16) 
0x3cf6;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x8(%R13),%XMM13;  (16) 
0x3cfc;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x28(%R13),%XMM10;  (16) 
0x3d02;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x18(%R13),%XMM0;  (16) 
0x3d08;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x38(%R13),%XMM15;  (16) 
0x3d0e;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM0,0x8(%R13);  (16) 
0x3d14;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM13,0x18(%R13);  (16) 
0x3d1a;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM15,0x28(%R13);  (16) 
0x3d20;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM10,0x38(%R13);  (16) 
0x3d26;/users/user2207/lbm_opt/src/lbm_phys.c:129;JMP	3b06 <special_cells._omp_fn.0+0x156>;  (16) 
0x3d2b;/users/user2207/lbm_opt/src/lbm_phys.c:129;NOPL	(%RAX,%RAX,1);
0x3d30;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%EDX;  (16) 
0x3d33;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RDI,1),%R13D;  (16) 
0x3d37;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;  (16) 
0x3d3a;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%R13;  (16) 
0x3d3e;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x20(%R13),%XMM11;  (16) 
0x3d44;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x10(%R13),%XMM12;  (16) 
0x3d4a;/users/user2207/lbm_opt/src/lbm_phys.c:179;VSUBSD	%XMM12,%XMM11,%XMM1;  (16) 
0x3d4f;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	0x8(%R13),%XMM2;  (16) 
0x3d55;/users/user2207/lbm_opt/src/lbm_phys.c:180;VSUBSD	%XMM11,%XMM12,%XMM14;  (16) 
0x3d5a;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	%XMM2,0x18(%R13);  (16) 
0x3d60;/users/user2207/lbm_opt/src/lbm_phys.c:179;VFMADD213SD	0x40(%R13),%XMM4,%XMM1;  (16) 
0x3d66;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	%XMM1,0x30(%R13);  (16) 
0x3d6c;/users/user2207/lbm_opt/src/lbm_phys.c:180;VFMADD213SD	0x28(%R13),%XMM4,%XMM14;  (16) 
0x3d72;/users/user2207/lbm_opt/src/lbm_phys.c:180;VMOVSD	%XMM14,0x38(%R13);  (16) 
0x3d78;/users/user2207/lbm_opt/src/lbm_phys.c:180;JMP	3b06 <special_cells._omp_fn.0+0x156>;  (16) 
0x3d7d;/users/user2207/lbm_opt/src/lbm_phys.c:180;NOPL	(%RAX);
0x3d80;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%EDX;  (16) 
0x3d83;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RDI,1),%R13D;  (16) 
0x3d87;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;  (16) 
0x3d8a;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%R13;  (16) 
0x3d8e;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x8(%R13),%XMM1;  (16) 
0x3d94;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x28(%R13),%XMM10;  (16) 
0x3d9a;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x18(%R13),%XMM15;  (16) 
0x3da0;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x38(%R13),%XMM2;  (16) 
0x3da6;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM15,0x8(%R13);  (16) 
0x3dac;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM1,0x18(%R13);  (16) 
0x3db2;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM2,0x28(%R13);  (16) 
0x3db8;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM10,0x38(%R13);  (16) 
0x3dbe;/users/user2207/lbm_opt/src/lbm_phys.c:129;JMP	3ae1 <special_cells._omp_fn.0+0x131>;  (16) 
0x3dc3;/users/user2207/lbm_opt/src/lbm_phys.c:129;NOPL	(%RAX,%RAX,1);
0x3dc8;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;(17) 
0x3dcb;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	0x9(%RDI),%EAX;(17) 
0x3dce;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RAX,8),%R13;(17) 
0x3dd2;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x8(%R13),%XMM1;(17) 
0x3dd8;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x28(%R13),%XMM10;(17) 
0x3dde;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x18(%R13),%XMM15;(17) 
0x3de4;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x38(%R13),%XMM2;(17) 
0x3dea;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM15,0x8(%R13);(17) 
0x3df0;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM1,0x18(%R13);(17) 
0x3df6;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM2,0x28(%R13);(17) 
0x3dfc;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM10,0x38(%R13);(17) 
0x3e02;/users/user2207/lbm_opt/src/lbm_phys.c:129;JMP	3ac3 <special_cells._omp_fn.0+0x113>;(17) 
0x3e07;/users/user2207/lbm_opt/src/lbm_phys.c:129;NOP;
0x3e08;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;(17) 
0x3e0b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	0x9(%RDI),%EAX;(17) 
0x3e0e;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RAX,8),%R13;(17) 
0x3e12;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x20(%R13),%XMM12;(17) 
0x3e18;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x10(%R13),%XMM0;(17) 
0x3e1e;/users/user2207/lbm_opt/src/lbm_phys.c:179;VSUBSD	%XMM0,%XMM12,%XMM13;(17) 
0x3e22;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	0x8(%R13),%XMM11;(17) 
0x3e28;/users/user2207/lbm_opt/src/lbm_phys.c:180;VSUBSD	%XMM12,%XMM0,%XMM14;(17) 
0x3e2d;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	%XMM11,0x18(%R13);(17) 
0x3e33;/users/user2207/lbm_opt/src/lbm_phys.c:179;VFMADD213SD	0x40(%R13),%XMM4,%XMM13;(17) 
0x3e39;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	%XMM13,0x30(%R13);(17) 
0x3e3f;/users/user2207/lbm_opt/src/lbm_phys.c:180;VFMADD213SD	0x28(%R13),%XMM4,%XMM14;(17) 
0x3e45;/users/user2207/lbm_opt/src/lbm_phys.c:180;VMOVSD	%XMM14,0x38(%R13);(17) 
0x3e4b;/users/user2207/lbm_opt/src/lbm_phys.c:180;JMP	3ac3 <special_cells._omp_fn.0+0x113>;(17) 
0x3e50;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%R13;(17) 
0x3e53;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	0x9(%RDI),%EAX;(17) 
0x3e56;/users/user2207/lbm_opt/include/lbm_struct.h:130;SAL	$0x3,%RAX;(17) 
0x3e5a;/users/user2207/lbm_opt/include/lbm_struct.h:130;ADD	%R13,%RAX;(17) 
0x3e5d;/users/user2207/lbm_opt/src/lbm_phys.c:200;MOV	0x4(%R11),%R13D;(17) 
0x3e61;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x18(%RAX),%XMM0;(17) 
0x3e66;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x30(%RAX),%XMM12;(17) 
0x3e6b;/users/user2207/lbm_opt/src/lbm_phys.c:141;VCVTSI2SD	%R13,%XMM1,%XMM1;(17) 
0x3e70;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x38(%RAX),%XMM13;(17) 
0x3e75;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x20(%RAX),%XMM11;(17) 
0x3e7a;/users/user2207/lbm_opt/src/lbm_phys.c:166;VMOVSD	%XMM0,0x8(%RAX);(17) 
0x3e7f;/users/user2207/lbm_opt/src/lbm_phys.c:143;VSUBSD	%XMM1,%XMM5,%XMM2;(17) 
0x3e83;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM1,%XMM2,%XMM10;(17) 
0x3e87;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM12,%XMM0,%XMM1;(17) 
0x3e8c;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x10(%RAX),%XMM2;(17) 
0x3e91;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	(%RAX),%XMM2,%XMM14;(17) 
0x3e95;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM6,%XMM10,%XMM15;(17) 
0x3e99;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM13,%XMM1,%XMM10;(17) 
0x3e9e;/users/user2207/lbm_opt/src/lbm_phys.c:162;VFMADD132SD	%XMM9,%XMM11,%XMM10;(17) 
0x3ea3;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM14,%XMM10,%XMM1;(17) 
0x3ea8;/users/user2207/lbm_opt/src/lbm_phys.c:167;VSUBSD	%XMM2,%XMM11,%XMM10;(17) 
0x3eac;/users/user2207/lbm_opt/src/lbm_phys.c:163;VSUBSD	%XMM15,%XMM8,%XMM14;(17) 
0x3eb1;/users/user2207/lbm_opt/src/lbm_phys.c:163;VMULSD	%XMM7,%XMM15,%XMM15;(17) 
0x3eb5;/users/user2207/lbm_opt/src/lbm_phys.c:168;VSUBSD	%XMM11,%XMM2,%XMM2;(17) 
0x3eba;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD132SD	%XMM3,%XMM13,%XMM10;(17) 
0x3ebf;/users/user2207/lbm_opt/src/lbm_phys.c:161;VDIVSD	%XMM14,%XMM1,%XMM1;(17) 
0x3ec4;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM3,%XMM12,%XMM2;(17) 
0x3ec9;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD231SD	%XMM1,%XMM15,%XMM10;(17) 
0x3ece;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM1,%XMM2,%XMM15;(17) 
0x3ed3;/users/user2207/lbm_opt/src/lbm_phys.c:167;VMOVSD	%XMM10,0x28(%RAX);(17) 
0x3ed8;/users/user2207/lbm_opt/src/lbm_phys.c:168;VMOVSD	%XMM15,0x40(%RAX);(17) 
0x3edd;/users/user2207/lbm_opt/src/lbm_phys.c:168;JMP	3ac3 <special_cells._omp_fn.0+0x113>;(17) 
0x3ee2;/users/user2207/lbm_opt/src/lbm_phys.c:168;ADD	$0x1,%RAX;
0x3ee6;/users/user2207/lbm_opt/src/lbm_phys.c:190;XOR	%EDX,%EDX;
0x3ee8;/users/user2207/lbm_opt/src/lbm_phys.c:190;JMP	39f8 <special_cells._omp_fn.0+0x48>;
0x3eed;:0;NOPL	(%RAX);
