address;source_location;insn;indent
0xc800;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:38;VDIVSD	(%RAX),%XMM4,%XMM2;
0xc804;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:39;VMOVSD	%XMM2,(%RBX,%RDX,8);
0xc809;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:39;LEA	0x1(%RDX),%RCX;
0xc80d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:39;ADD	$0x50,%RAX;
0xc811;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:40;VMULSD	-0x48(%RAX),%XMM2,%XMM0;
0xc816;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:40;VMOVSD	%XMM0,(%R11,%RDX,8);
0xc81c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:41;VMULSD	-0x40(%RAX),%XMM2,%XMM5;
0xc821;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:41;VMOVSD	%XMM5,(%R10,%RDX,8);
0xc827;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:42;VMULSD	-0x38(%RAX),%XMM2,%XMM6;
0xc82c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:42;VMOVSD	%XMM6,(%R9,%RDX,8);
0xc832;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMOVSD	-0x48(%RAX),%XMM7;
0xc837;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMOVSD	-0x40(%RAX),%XMM8;
0xc83c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM7,%XMM7,%XMM10;
0xc840;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMOVSD	-0x38(%RAX),%XMM9;
0xc845;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM8,%XMM8,%XMM11;
0xc84a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM9,%XMM9,%XMM13;
0xc84f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VADDSD	%XMM11,%XMM10,%XMM12;
0xc854;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VADDSD	%XMM13,%XMM12,%XMM14;
0xc859;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM3,%XMM14,%XMM15;
0xc85d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM2,%XMM15,%XMM1;
0xc861;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:47;VMULSD	%XMM1,%XMM2,%XMM2;
0xc865;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMOVSD	%XMM1,(%R8,%RDX,8);
0xc86b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:47;VMOVSD	%XMM2,(%RSI,%RDX,8);
0xc870;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:38;VDIVSD	-0x28(%RAX),%XMM4,%XMM6;
0xc875;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:38;ADD	$0x2,%RDX;
0xc879;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:39;VMOVSD	%XMM6,(%RBX,%RCX,8);
0xc87e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:40;VMULSD	-0x20(%RAX),%XMM6,%XMM0;
0xc883;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:40;VMOVSD	%XMM0,(%R11,%RCX,8);
0xc889;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:41;VMULSD	-0x18(%RAX),%XMM6,%XMM5;
0xc88e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:41;VMOVSD	%XMM5,(%R10,%RCX,8);
0xc894;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:42;VMULSD	-0x10(%RAX),%XMM6,%XMM7;
0xc899;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:42;VMOVSD	%XMM7,(%R9,%RCX,8);
0xc89f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMOVSD	-0x20(%RAX),%XMM8;
0xc8a4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMOVSD	-0x18(%RAX),%XMM9;
0xc8a9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM8,%XMM8,%XMM11;
0xc8ae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMOVSD	-0x10(%RAX),%XMM10;
0xc8b3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM9,%XMM9,%XMM12;
0xc8b8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM10,%XMM10,%XMM14;
0xc8bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VADDSD	%XMM12,%XMM11,%XMM13;
0xc8c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VADDSD	%XMM14,%XMM13,%XMM15;
0xc8c7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM3,%XMM15,%XMM1;
0xc8cb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMULSD	%XMM6,%XMM1,%XMM2;
0xc8cf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:47;VMULSD	%XMM2,%XMM6,%XMM6;
0xc8d3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:46;VMOVSD	%XMM2,(%R8,%RCX,8);
0xc8d9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:47;VMOVSD	%XMM6,(%RSI,%RCX,8);
0xc8de;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:37;CMP	%RCX,%R13;
0xc8e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:37;JNE	c800 <compute_rhs_._omp_fn.0+0x4b0>;