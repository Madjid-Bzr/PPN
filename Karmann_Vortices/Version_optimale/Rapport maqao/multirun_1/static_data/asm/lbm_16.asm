address;source_location;insn;indent
0x3ad8;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x1,%EDX;
0x3adb;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3d80 <special_cells._omp_fn.0+0x3d0>;
0x3ae1;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%RAX;
0x3ae5;/users/user2207/lbm_opt/include/lbm_struct.h:148;LEA	(%RCX,%RAX,1),%EDX;
0x3ae8;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	(%RSI,%RDX,4),%EDX;
0x3aeb;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x2,%EDX;
0x3aee;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3b82 <special_cells._omp_fn.0+0x1d2>;
0x3af4;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x3,%EDX;
0x3af7;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3d30 <special_cells._omp_fn.0+0x380>;
0x3afd;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x1,%EDX;
0x3b00;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3ce8 <special_cells._omp_fn.0+0x338>;
0x3b06;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%RAX;
0x3b0a;/users/user2207/lbm_opt/src/lbm_phys.c:191;CMP	%R9,%RAX;
0x3b0d;/users/user2207/lbm_opt/src/lbm_phys.c:191;JE	3c27 <special_cells._omp_fn.0+0x277>;
0x3b13;/users/user2207/lbm_opt/include/lbm_struct.h:148;LEA	(%RCX,%RAX,1),%EDX;
0x3b16;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	(%RSI,%RDX,4),%EDX;
0x3b19;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x2,%EDX;
0x3b1c;/users/user2207/lbm_opt/src/lbm_phys.c:192;JE	3c48 <special_cells._omp_fn.0+0x298>;
0x3b22;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x3,%EDX;
0x3b25;/users/user2207/lbm_opt/src/lbm_phys.c:192;JNE	3ad8 <special_cells._omp_fn.0+0x128>;
0x3b27;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%EDX;
0x3b2a;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%RAX;
0x3b2e;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RDI,1),%R13D;
0x3b32;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;
0x3b35;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%R13;
0x3b39;/users/user2207/lbm_opt/include/lbm_struct.h:148;LEA	(%RCX,%RAX,1),%EDX;
0x3b3c;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x20(%R13),%XMM12;
0x3b42;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x10(%R13),%XMM13;
0x3b48;/users/user2207/lbm_opt/src/lbm_phys.c:192;MOV	(%RSI,%RDX,4),%EDX;
0x3b4b;/users/user2207/lbm_opt/src/lbm_phys.c:179;VSUBSD	%XMM13,%XMM12,%XMM0;
0x3b50;/users/user2207/lbm_opt/src/lbm_phys.c:180;VSUBSD	%XMM12,%XMM13,%XMM14;
0x3b55;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	0x8(%R13),%XMM11;
0x3b5b;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	%XMM11,0x18(%R13);
0x3b61;/users/user2207/lbm_opt/src/lbm_phys.c:192;CMP	$0x2,%EDX;
0x3b64;/users/user2207/lbm_opt/src/lbm_phys.c:179;VFMADD213SD	0x40(%R13),%XMM4,%XMM0;
0x3b6a;/users/user2207/lbm_opt/src/lbm_phys.c:180;VFMADD213SD	0x28(%R13),%XMM4,%XMM14;
0x3b70;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	%XMM0,0x30(%R13);
0x3b76;/users/user2207/lbm_opt/src/lbm_phys.c:180;VMOVSD	%XMM14,0x38(%R13);
0x3b7c;/users/user2207/lbm_opt/src/lbm_phys.c:192;JNE	3af4 <special_cells._omp_fn.0+0x144>;
0x3b82;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;
0x3b85;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%R13D;
0x3b89;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R13,%RDI,1),%R13D;
0x3b8e;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%RDX;
0x3b92;/users/user2207/lbm_opt/src/lbm_phys.c:200;MOV	0x4(%R11),%R13D;
0x3b96;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x18(%RDX),%XMM10;
0x3b9b;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x10(%RDX),%XMM15;
0x3ba0;/users/user2207/lbm_opt/src/lbm_phys.c:141;ADD	%RAX,%R13;
0x3ba3;/users/user2207/lbm_opt/src/lbm_phys.c:141;VADDSD	(%RDX),%XMM15,%XMM14;
0x3ba7;/users/user2207/lbm_opt/src/lbm_phys.c:141;SUB	$0x1,%R13;
0x3bab;/users/user2207/lbm_opt/src/lbm_phys.c:191;LEA	0x1(%RAX),%RAX;
0x3baf;/users/user2207/lbm_opt/src/lbm_phys.c:141;VCVTSI2SD	%R13,%XMM11,%XMM11;
0x3bb4;/users/user2207/lbm_opt/src/lbm_phys.c:191;CMP	%R9,%RAX;
0x3bb7;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x20(%RDX),%XMM2;
0x3bbc;/users/user2207/lbm_opt/src/lbm_phys.c:166;VMOVSD	%XMM10,0x8(%RDX);
0x3bc1;/users/user2207/lbm_opt/src/lbm_phys.c:143;VSUBSD	%XMM11,%XMM5,%XMM12;
0x3bc6;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM11,%XMM12,%XMM13;
0x3bcb;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x30(%RDX),%XMM11;
0x3bd0;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM11,%XMM10,%XMM1;
0x3bd5;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x38(%RDX),%XMM12;
0x3bda;/users/user2207/lbm_opt/src/lbm_phys.c:167;VSUBSD	%XMM15,%XMM2,%XMM10;
0x3bdf;/users/user2207/lbm_opt/src/lbm_phys.c:168;VSUBSD	%XMM2,%XMM15,%XMM15;
0x3be3;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM6,%XMM13,%XMM0;
0x3be7;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM12,%XMM1,%XMM13;
0x3bec;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD132SD	%XMM3,%XMM12,%XMM10;
0x3bf1;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM3,%XMM11,%XMM15;
0x3bf6;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM9,%XMM2,%XMM13;
0x3bfb;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM14,%XMM13,%XMM1;
0x3c00;/users/user2207/lbm_opt/src/lbm_phys.c:163;VSUBSD	%XMM0,%XMM8,%XMM14;
0x3c04;/users/user2207/lbm_opt/src/lbm_phys.c:163;VMULSD	%XMM7,%XMM0,%XMM0;
0x3c08;/users/user2207/lbm_opt/src/lbm_phys.c:161;VDIVSD	%XMM14,%XMM1,%XMM13;
0x3c0d;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD231SD	%XMM13,%XMM0,%XMM10;
0x3c12;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM13,%XMM15,%XMM0;
0x3c17;/users/user2207/lbm_opt/src/lbm_phys.c:167;VMOVSD	%XMM10,0x28(%RDX);
0x3c1c;/users/user2207/lbm_opt/src/lbm_phys.c:168;VMOVSD	%XMM0,0x40(%RDX);
0x3c21;/users/user2207/lbm_opt/src/lbm_phys.c:191;JNE	3b13 <special_cells._omp_fn.0+0x163>;
0x3c48;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;
0x3c4b;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%R13D;
0x3c4f;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R13,%RDI,1),%R13D;
0x3c54;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%RDX;
0x3c58;/users/user2207/lbm_opt/src/lbm_phys.c:200;MOV	0x4(%R11),%R13D;
0x3c5c;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x18(%RDX),%XMM10;
0x3c61;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x10(%RDX),%XMM2;
0x3c66;/users/user2207/lbm_opt/src/lbm_phys.c:141;ADD	%RAX,%R13;
0x3c69;/users/user2207/lbm_opt/src/lbm_phys.c:141;VADDSD	(%RDX),%XMM2,%XMM14;
0x3c6d;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x38(%RDX),%XMM13;
0x3c72;/users/user2207/lbm_opt/src/lbm_phys.c:141;SUB	$0x1,%R13;
0x3c76;/users/user2207/lbm_opt/src/lbm_phys.c:141;VCVTSI2SD	%R13,%XMM11,%XMM11;
0x3c7b;/users/user2207/lbm_opt/src/lbm_phys.c:166;VMOVSD	%XMM10,0x8(%RDX);
0x3c80;/users/user2207/lbm_opt/src/lbm_phys.c:143;VSUBSD	%XMM11,%XMM5,%XMM12;
0x3c85;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM11,%XMM12,%XMM0;
0x3c8a;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x30(%RDX),%XMM12;
0x3c8f;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM12,%XMM10,%XMM1;
0x3c94;/users/user2207/lbm_opt/src/lbm_phys.c:162;VMOVSD	0x20(%RDX),%XMM11;
0x3c99;/users/user2207/lbm_opt/src/lbm_phys.c:167;VSUBSD	%XMM2,%XMM11,%XMM10;
0x3c9d;/users/user2207/lbm_opt/src/lbm_phys.c:168;VSUBSD	%XMM11,%XMM2,%XMM2;
0x3ca2;/users/user2207/lbm_opt/src/lbm_phys.c:145;VMULSD	%XMM6,%XMM0,%XMM15;
0x3ca6;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM13,%XMM1,%XMM0;
0x3cab;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD132SD	%XMM3,%XMM13,%XMM10;
0x3cb0;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM3,%XMM12,%XMM2;
0x3cb5;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM9,%XMM11,%XMM0;
0x3cba;/users/user2207/lbm_opt/src/lbm_phys.c:162;VADDSD	%XMM14,%XMM0,%XMM1;
0x3cbf;/users/user2207/lbm_opt/src/lbm_phys.c:163;VSUBSD	%XMM15,%XMM8,%XMM14;
0x3cc4;/users/user2207/lbm_opt/src/lbm_phys.c:163;VMULSD	%XMM7,%XMM15,%XMM15;
0x3cc8;/users/user2207/lbm_opt/src/lbm_phys.c:161;VDIVSD	%XMM14,%XMM1,%XMM1;
0x3ccd;/users/user2207/lbm_opt/src/lbm_phys.c:167;VFMADD231SD	%XMM1,%XMM15,%XMM10;
0x3cd2;/users/user2207/lbm_opt/src/lbm_phys.c:168;VFMADD132SD	%XMM1,%XMM2,%XMM15;
0x3cd7;/users/user2207/lbm_opt/src/lbm_phys.c:167;VMOVSD	%XMM10,0x28(%RDX);
0x3cdc;/users/user2207/lbm_opt/src/lbm_phys.c:168;VMOVSD	%XMM15,0x40(%RDX);
0x3ce1;/users/user2207/lbm_opt/src/lbm_phys.c:168;JMP	3ae1 <special_cells._omp_fn.0+0x131>;
0x3ce8;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%EDX;
0x3ceb;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RDI,1),%R13D;
0x3cef;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;
0x3cf2;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%R13;
0x3cf6;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x8(%R13),%XMM13;
0x3cfc;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x28(%R13),%XMM10;
0x3d02;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x18(%R13),%XMM0;
0x3d08;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x38(%R13),%XMM15;
0x3d0e;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM0,0x8(%R13);
0x3d14;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM13,0x18(%R13);
0x3d1a;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM15,0x28(%R13);
0x3d20;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM10,0x38(%R13);
0x3d26;/users/user2207/lbm_opt/src/lbm_phys.c:129;JMP	3b06 <special_cells._omp_fn.0+0x156>;
0x3d30;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%EDX;
0x3d33;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RDI,1),%R13D;
0x3d37;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;
0x3d3a;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%R13;
0x3d3e;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x20(%R13),%XMM11;
0x3d44;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	0x10(%R13),%XMM12;
0x3d4a;/users/user2207/lbm_opt/src/lbm_phys.c:179;VSUBSD	%XMM12,%XMM11,%XMM1;
0x3d4f;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	0x8(%R13),%XMM2;
0x3d55;/users/user2207/lbm_opt/src/lbm_phys.c:180;VSUBSD	%XMM11,%XMM12,%XMM14;
0x3d5a;/users/user2207/lbm_opt/src/lbm_phys.c:178;VMOVSD	%XMM2,0x18(%R13);
0x3d60;/users/user2207/lbm_opt/src/lbm_phys.c:179;VFMADD213SD	0x40(%R13),%XMM4,%XMM1;
0x3d66;/users/user2207/lbm_opt/src/lbm_phys.c:179;VMOVSD	%XMM1,0x30(%R13);
0x3d6c;/users/user2207/lbm_opt/src/lbm_phys.c:180;VFMADD213SD	0x28(%R13),%XMM4,%XMM14;
0x3d72;/users/user2207/lbm_opt/src/lbm_phys.c:180;VMOVSD	%XMM14,0x38(%R13);
0x3d78;/users/user2207/lbm_opt/src/lbm_phys.c:180;JMP	3b06 <special_cells._omp_fn.0+0x156>;
0x3d80;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RAX,%RAX,8),%EDX;
0x3d83;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%RDI,1),%R13D;
0x3d87;/users/user2207/lbm_opt/include/lbm_struct.h:130;MOV	(%RBX),%RDX;
0x3d8a;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDX,%R13,8),%R13;
0x3d8e;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x8(%R13),%XMM1;
0x3d94;/users/user2207/lbm_opt/src/lbm_phys.c:123;VMOVUPD	0x28(%R13),%XMM10;
0x3d9a;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x18(%R13),%XMM15;
0x3da0;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	0x38(%R13),%XMM2;
0x3da6;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM15,0x8(%R13);
0x3dac;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM1,0x18(%R13);
0x3db2;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM2,0x28(%R13);
0x3db8;/users/user2207/lbm_opt/src/lbm_phys.c:129;VMOVUPD	%XMM10,0x38(%R13);
0x3dbe;/users/user2207/lbm_opt/src/lbm_phys.c:129;JMP	3ae1 <special_cells._omp_fn.0+0x131>;
