address;source_location;insn;indent
0x7960;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:49;VXORPD	%XMM7,%XMM7,%XMM7;
0x7964;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:49;VCVTSI2SD	%EBX,%XMM7,%XMM3;
0x7968;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:51;MOV	0x138(%RSP),%RDX;
0x7970;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:51;MOV	%R14,%RCX;
0x7973;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:49;VMULSD	0x24fcd(%RIP),%XMM3,%XMM5;
0x797b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:51;MOV	0x130(%RSP),%RSI;
0x7983;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:51;MOV	0x128(%RSP),%RDI;
0x798b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:49;VMOVSD	%XMM5,0x160(%RSP);
0x7994;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:51;VZEROUPPER;
0x7997;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:51;CALL	7120 <exact_solution_>;
0x799c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:51;ADD	$0x8,%R12;
0x79a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:51;MOV	%RBX,%R8;
0x79a3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	0x170(%RSP),%XMM12;
0x79ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;ADD	$0x8,%R13;
0x79b0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:56;VMOVSD	0x20a00(%RIP),%XMM0;
0x79b8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	0x178(%RSP),%XMM13;
0x79c1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	%XMM12,-0x8(%R12);
0x79c8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:56;VDIVSD	%XMM12,%XMM0,%XMM4;
0x79cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48;MOV	0x20b04(%RIP),%RSI;
0x79d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	0x180(%RSP),%XMM14;
0x79dd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	%XMM13,0x1d0(%R12);
0x79e7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	0x188(%RSP),%XMM15;
0x79f0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	%XMM14,0x3a8(%R12);
0x79fa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48;MOV	0x20adf(%RIP),%RAX;
0x7a01;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	%XMM15,0x580(%R12);
0x7a0b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	0x190(%RSP),%XMM11;
0x7a14;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:62;MOV	0x140(%RSP),%RDI;
0x7a1c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:53;VMOVSD	%XMM11,0x758(%R12);
0x7a26;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;MOV	%FS:,%RCX;
0x7a2f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;LEA	-0xf390(%RCX),%RCX;
0x7a36;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:59;VMULSD	%XMM13,%XMM4,%XMM8;
0x7a3b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:59;VMULSD	%XMM14,%XMM4,%XMM6;
0x7a40;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:59;VMULSD	%XMM15,%XMM4,%XMM2;
0x7a45;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:59;VMULSD	%XMM11,%XMM4,%XMM1;
0x7a4a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48;VMOVAPD	0x20a2e(%RIP),%YMM4;
0x7a52;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:59;VMOVSD	%XMM8,0x1d0(%R13);
0x7a5b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;VMULSD	%XMM13,%XMM8,%XMM12;
0x7a60;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:59;VMOVSD	%XMM6,0x3a8(%R13);
0x7a69;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;VMULSD	%XMM14,%XMM6,%XMM13;
0x7a6e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:62;VMULSD	%XMM8,%XMM8,%XMM9;
0x7a73;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:59;VMOVSD	%XMM2,0x580(%R13);
0x7a7c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:59;VMOVSD	%XMM1,0x758(%R13);
0x7a85;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:64;VMULSD	%XMM6,%XMM6,%XMM10;
0x7a89;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;VMULSD	%XMM15,%XMM2,%XMM15;
0x7a8e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:64;VMULSD	%XMM2,%XMM2,%XMM3;
0x7a92;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;VADDSD	%XMM13,%XMM12,%XMM14;
0x7a97;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:62;VMOVSD	%XMM9,(%RDI,%RBX,8);
0x7a9c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:64;VADDSD	%XMM9,%XMM10,%XMM7;
0x7aa1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;VADDSD	%XMM15,%XMM14,%XMM11;
0x7aa6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;VMULSD	0x20a3a(%RIP),%XMM11,%XMM0;
0x7aae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:64;VADDSD	%XMM3,%XMM7,%XMM5;
0x7ab2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48;VMOVAPD	0x209e6(%RIP),%YMM7;
0x7aba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48;VMOVQ	%RSI,%XMM3;
0x7abf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:64;VMOVSD	%XMM5,-0x8(%R13);
0x7ac5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48;VMOVQ	%RAX,%XMM5;
0x7aca;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;VMOVSD	%XMM0,(%RCX,%RBX,8);
0x7acf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:66;ADD	$0x1,%RBX;
0x7ad3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48;CMP	0x148(%RSP),%R8;
0x7adb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48;JNE	7960 <exact_rhs_._omp_fn.0+0x610>;