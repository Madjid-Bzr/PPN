address;source_location;insn;indent
0x1e940;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;PUSH	%R15;
0x1e942;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;PUSH	%R14;
0x1e944;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;PUSH	%R13;
0x1e946;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;PUSH	%R12;
0x1e948;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOV	%RDI,%R12;
0x1e94b;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;PUSH	%RBP;
0x1e94c;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;PUSH	%RBX;
0x1e94d;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:33;PXOR	%XMM0,%XMM0;
0x1e951;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;SUB	$0x58,%RSP;
0x1e955;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;MOV	0x20(%RDI),%RAX;
0x1e959;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOV	0x38(%RDI),%R15;
0x1e95d;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOV	0x30(%RDI),%R13;
0x1e961;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOV	0x28(%RDI),%RBP;
0x1e965;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:33;MOVAPS	%XMM0,0x20(%RSP);
0x1e96a;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;MOV	(%RAX),%R14D;
0x1e96d;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:33;MOVQ	$0,0x40(%RSP);
0x1e976;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:33;MOVAPS	%XMM0,0x30(%RSP);
0x1e97b;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;CMP	$0x2,%R14D;
0x1e97f;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;JLE	1eadb <l2norm_._omp_fn.0+0x19b>;
0x1e985;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;CALL	2060 <@plt_start@+0x40>;
0x1e98a;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;MOV	%EAX,%EBX;
0x1e98c;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;CALL	2120 <@plt_start@+0x100>;
0x1e991;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;MOV	%EAX,%ECX;
0x1e993;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:36;MOV	0x18(%R12),%RAX;
0x1e998;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:36;LEA	(%R15,%R13,2),%R10;
0x1e99c;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:36;LEA	(,%RBP,8),%R11;
0x1e9a4;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;PXOR	%XMM1,%XMM1;
0x1e9a8;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;PXOR	%XMM4,%XMM4;
0x1e9ac;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOV	(%RAX),%EAX;
0x1e9ae;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;PXOR	%XMM3,%XMM3;
0x1e9b2;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;PXOR	%XMM2,%XMM2;
0x1e9b6;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;PXOR	%XMM5,%XMM5;
0x1e9ba;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;SUB	$0x2,%EAX;
0x1e9bd;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;CLTD;
0x1e9be;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;IDIV	%EBX;
0x1e9c0;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	0x10(%R12),%RBX;
0x1e9c5;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	%RBX,0x8(%RSP);
0x1e9ca;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;LEA	0x1(%RAX),%R8D;
0x1e9ce;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;CMP	%EDX,%ECX;
0x1e9d0;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;CMOVL	%R8D,%EAX;
0x1e9d4;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	%EAX,%EDI;
0x1e9d6;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;IMUL	%ECX,%EDI;
0x1e9d9;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;CMP	%EDX,%ECX;
0x1e9db;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	(%R12),%RCX;
0x1e9df;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;LEA	(%RDX,%RDI,1),%ESI;
0x1e9e2;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;CMOVGE	%ESI,%EDI;
0x1e9e5;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;SUB	$-0x80,%RCX;
0x1e9e9;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;MOV	$0x2,%ESI;
0x1e9ee;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;LEA	0x2(%RDI),%R15D;
0x1e9f2;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;LEA	(%RAX,%RDI,1),%R8D;
0x1e9f6;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;MOV	%RCX,0x18(%RSP);
0x1e9fb;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;MOVSXD	%R15D,%RAX;
0x1e9fe;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;LEA	0x2(%R8),%EBX;
0x1ea02;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;IMUL	%RBP,%RAX;
0x1ea06;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;MOV	%RAX,0x10(%RSP);
0x1ea0b;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;XOR	%EAX,%EAX;
0x1ea0d;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;JMP	1ea1f <l2norm_._omp_fn.0+0xdf>;
0x1ea0f;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;NOP;
0x1ea10;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;ADD	$0x1,%ESI;(149) 
0x1ea13;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;ADD	%R13,%R10;(149) 
0x1ea16;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;CMP	%ESI,%R14D;(149) 
0x1ea19;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;JE	1ead7 <l2norm_._omp_fn.0+0x197>;(149) 
0x1ea1f;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;CMP	%EDI,%R8D;(149) 
0x1ea22;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;JLE	1ea10 <l2norm_._omp_fn.0+0xd0>;(149) 
0x1ea24;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	0x8(%RSP),%RCX;(149) 
0x1ea29;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	0x18(%RSP),%RBP;(149) 
0x1ea2e;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	(%RCX),%R9D;(149) 
0x1ea31;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;LEA	-0x3(%R9),%ECX;(149) 
0x1ea35;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;LEA	(%RCX,%RCX,4),%RDX;(149) 
0x1ea39;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;ADD	0x10(%RSP),%RDX;(149) 
0x1ea3e;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;ADD	%R10,%RDX;(149) 
0x1ea41;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;LEA	(%RBP,%RDX,8),%RDX;(149) 
0x1ea46;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	%RCX,%RBP;(149) 
0x1ea49;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;NEG	%RBP;(149) 
0x1ea4c;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;SAL	$0x2,%RBP;(149) 
0x1ea50;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;SUB	%RCX,%RBP;(149) 
0x1ea53;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;MOV	%R15D,%ECX;(149) 
0x1ea56;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;LEA	-0x28(,%RBP,8),%RBP;(149) 
0x1ea5e;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;XCHG	%AX,%AX;(149) 
0x1ea60;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;CMP	$0x2,%R9D;  (150) 
0x1ea64;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;JLE	1eabe <l2norm_._omp_fn.0+0x17e>;  (150) 
0x1ea66;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;LEA	(%RBP,%RDX,1),%RAX;  (150) 
0x1ea6b;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;NOPL	(%RAX,%RAX,1);  (150) 
0x1ea70;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	(%RAX),%XMM0;    (151) 
0x1ea74;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADD	$0x28,%RAX;    (151) 
0x1ea78;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;    (151) 
0x1ea7c;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM5;    (151) 
0x1ea80;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	-0x20(%RAX),%XMM0;    (151) 
0x1ea85;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;    (151) 
0x1ea89;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM2;    (151) 
0x1ea8d;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	-0x18(%RAX),%XMM0;    (151) 
0x1ea92;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;    (151) 
0x1ea96;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM3;    (151) 
0x1ea9a;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	-0x10(%RAX),%XMM0;    (151) 
0x1ea9f;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;    (151) 
0x1eaa3;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM4;    (151) 
0x1eaa7;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	-0x8(%RAX),%XMM0;    (151) 
0x1eaac;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;CMP	%RDX,%RAX;    (151) 
0x1eaaf;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;    (151) 
0x1eab3;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM1;    (151) 
0x1eab7;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;JNE	1ea70 <l2norm_._omp_fn.0+0x130>;    (151) 
0x1eab9;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;MOV	$0x1,%EAX;  (150) 
0x1eabe;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;ADD	$0x1,%ECX;  (150) 
0x1eac1;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;ADD	%R11,%RDX;  (150) 
0x1eac4;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;CMP	%ECX,%EBX;  (150) 
0x1eac6;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;JNE	1ea60 <l2norm_._omp_fn.0+0x120>;  (150) 
0x1eac8;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;ADD	$0x1,%ESI;(149) 
0x1eacb;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;ADD	%R13,%R10;(149) 
0x1eace;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;CMP	%ESI,%R14D;(149) 
0x1ead1;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;JNE	1ea1f <l2norm_._omp_fn.0+0xdf>;(149) 
0x1ead7;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;TEST	%AL,%AL;
0x1ead9;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;JNE	1eb35 <l2norm_._omp_fn.0+0x1f5>;
0x1eadb;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:35;LEA	0x20(%RSP),%R8;
0x1eae0;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;XOR	%EDI,%EDI;
0x1eae2;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;MOV	0x8(%R12),%RCX;(148) 
0x1eae7;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;MOVSD	(%R8,%RDI,1),%XMM0;(148) 
0x1eaed;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;ADD	%RDI,%RCX;(148) 
0x1eaf0;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;MOV	(%RCX),%RDX;(148) 
0x1eaf3;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;JMP	1eafb <l2norm_._omp_fn.0+0x1bb>;(148) 
0x1eaf5;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;NOPL	(%RAX);
0x1eaf8;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;MOV	%RAX,%RDX;  (147) 
0x1eafb;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;MOV	%RDX,0x8(%RSP);  (147) 
0x1eb00;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;MOV	%RDX,%RAX;  (147) 
0x1eb03;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;MOVSD	0x8(%RSP),%XMM6;  (147) 
0x1eb09;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;ADDSD	%XMM0,%XMM6;  (147) 
0x1eb0d;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;MOVQ	%XMM6,%RSI;  (147) 
0x1eb12;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;LOCK CMPXCHG	%RSI,(%RCX);  (147) 
0x1eb17;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;CMP	%RAX,%RDX;  (147) 
0x1eb1a;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;JNE	1eaf8 <l2norm_._omp_fn.0+0x1b8>;  (147) 
0x1eb1c;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:47;ADD	$0x8,%RDI;(148) 
0x1eb20;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:46;CMP	$0x28,%RDI;(148) 
0x1eb24;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:46;JNE	1eae2 <l2norm_._omp_fn.0+0x1a2>;(148) 
0x1eb26;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;ADD	$0x58,%RSP;
0x1eb2a;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;POP	%RBX;
0x1eb2b;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;POP	%RBP;
0x1eb2c;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;POP	%R12;
0x1eb2e;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;POP	%R13;
0x1eb30;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;POP	%R14;
0x1eb32;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;POP	%R15;
0x1eb34;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;RET;
0x1eb35;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOVSD	%XMM5,0x20(%RSP);
0x1eb3b;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOVSD	%XMM2,0x28(%RSP);
0x1eb41;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOVSD	%XMM3,0x30(%RSP);
0x1eb47;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOVSD	%XMM4,0x38(%RSP);
0x1eb4d;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;MOVSD	%XMM1,0x40(%RSP);
0x1eb53;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31;JMP	1eadb <l2norm_._omp_fn.0+0x19b>;
0x1eb55;:0;NOP;
0x1eb56;:0;NOPW	%CS:(%RAX,%RAX,1);
