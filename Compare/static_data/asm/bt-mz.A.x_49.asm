address;source_location;insn;indent
0xefa0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;MOV	%RBX,%RCX;
0xefa3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;MOVSXD	%ESI,%RDX;
0xefa6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;MOV	0x1c8(%RSP),%RAX;
0xefae;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;IMUL	%R14,%RCX;
0xefb2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;IMUL	%R15,%RDX;
0xefb6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;ADD	%RCX,%RAX;
0xefb9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;ADD	%RAX,%RDX;
0xefbc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;LEA	0x30(%R11,%RDX,8),%RAX;
0xefc1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;ADD	%R13,%RDX;
0xefc4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;LEA	(%R12,%RDX,8),%RCX;
0xefc8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;MOV	%RCX,%RDX;
0xefcb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;SUB	%RAX,%RDX;
0xefce;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;SUB	$0x28,%RDX;
0xefd2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;SHR	$0x3,%RDX;
0xefd6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;ADD	$0x1,%RDX;
0xefda;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;AND	$0x3,%EDX;
0xefdd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;JE	f113 <compute_rhs_._omp_fn.0+0x2dc3>;
0xefe3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;CMP	$0x1,%RDX;
0xefe7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;JE	f0ad <compute_rhs_._omp_fn.0+0x2d5d>;
0xefed;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;CMP	$0x2,%RDX;
0xeff1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;JE	f050 <compute_rhs_._omp_fn.0+0x2d00>;
0xeff3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	(%RAX),%XMM4;
0xeff7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;ADD	$0x28,%RAX;
0xeffb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d925(%RIP),%XMM4,%XMM5;
0xf003;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x20(%RAX),%XMM6;
0xf008;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x18(%RAX),%XMM9;
0xf00d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x10(%RAX),%XMM10;
0xf012;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x8(%RAX),%XMM1;
0xf017;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM5,-0x28(%RAX);
0xf01c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d904(%RIP),%XMM6,%XMM13;
0xf024;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM13,-0x20(%RAX);
0xf029;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d8f7(%RIP),%XMM9,%XMM2;
0xf031;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM2,-0x18(%RAX);
0xf036;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d8ea(%RIP),%XMM10,%XMM15;
0xf03e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM15,-0x10(%RAX);
0xf043;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d8dd(%RIP),%XMM1,%XMM12;
0xf04b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM12,-0x8(%RAX);
0xf050;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	(%RAX),%XMM8;
0xf054;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;ADD	$0x28,%RAX;
0xf058;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d8c8(%RIP),%XMM8,%XMM7;
0xf060;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x20(%RAX),%XMM0;
0xf065;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x18(%RAX),%XMM14;
0xf06a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x10(%RAX),%XMM4;
0xf06f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x8(%RAX),%XMM6;
0xf074;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM7,-0x28(%RAX);
0xf079;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d8a7(%RIP),%XMM0,%XMM11;
0xf081;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM11,-0x20(%RAX);
0xf086;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d89a(%RIP),%XMM14,%XMM3;
0xf08e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM3,-0x18(%RAX);
0xf093;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d88d(%RIP),%XMM4,%XMM5;
0xf09b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM5,-0x10(%RAX);
0xf0a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d880(%RIP),%XMM6,%XMM13;
0xf0a8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM13,-0x8(%RAX);
0xf0ad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	(%RAX),%XMM9;
0xf0b1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;ADD	$0x28,%RAX;
0xf0b5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d86b(%RIP),%XMM9,%XMM2;
0xf0bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x20(%RAX),%XMM10;
0xf0c2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x18(%RAX),%XMM1;
0xf0c7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x10(%RAX),%XMM8;
0xf0cc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x8(%RAX),%XMM0;
0xf0d1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM2,-0x28(%RAX);
0xf0d6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d84a(%RIP),%XMM10,%XMM15;
0xf0de;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM15,-0x20(%RAX);
0xf0e3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d83d(%RIP),%XMM1,%XMM12;
0xf0eb;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM12,-0x18(%RAX);
0xf0f0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d830(%RIP),%XMM8,%XMM7;
0xf0f8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM7,-0x10(%RAX);
0xf0fd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d823(%RIP),%XMM0,%XMM11;
0xf105;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM11,-0x8(%RAX);
0xf10a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;CMP	%RCX,%RAX;
0xf10d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;JE	f29e <compute_rhs_._omp_fn.0+0x2f4e>;
0xf113;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	(%RAX),%XMM14;  (48) 
0xf117;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;ADD	$0xa0,%RAX;  (48) 
0xf11d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d803(%RIP),%XMM14,%XMM3;  (48) 
0xf125;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x98(%RAX),%XMM4;  (48) 
0xf12d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x90(%RAX),%XMM6;  (48) 
0xf135;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x88(%RAX),%XMM9;  (48) 
0xf13d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x80(%RAX),%XMM10;  (48) 
0xf142;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM3,-0xa0(%RAX);  (48) 
0xf14a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d7d6(%RIP),%XMM4,%XMM5;  (48) 
0xf152;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x78(%RAX),%XMM1;  (48) 
0xf157;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x70(%RAX),%XMM8;  (48) 
0xf15c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x68(%RAX),%XMM0;  (48) 
0xf161;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x60(%RAX),%XMM14;  (48) 
0xf166;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM5,-0x98(%RAX);  (48) 
0xf16e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d7b2(%RIP),%XMM6,%XMM13;  (48) 
0xf176;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x58(%RAX),%XMM4;  (48) 
0xf17b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x50(%RAX),%XMM6;  (48) 
0xf180;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM13,-0x90(%RAX);  (48) 
0xf188;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d798(%RIP),%XMM9,%XMM2;  (48) 
0xf190;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM2,-0x88(%RAX);  (48) 
0xf198;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d788(%RIP),%XMM10,%XMM15;  (48) 
0xf1a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM15,-0x80(%RAX);  (48) 
0xf1a5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d77b(%RIP),%XMM1,%XMM12;  (48) 
0xf1ad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM12,-0x78(%RAX);  (48) 
0xf1b2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d76e(%RIP),%XMM8,%XMM7;  (48) 
0xf1ba;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM7,-0x70(%RAX);  (48) 
0xf1bf;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d761(%RIP),%XMM0,%XMM11;  (48) 
0xf1c7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM11,-0x68(%RAX);  (48) 
0xf1cc;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d754(%RIP),%XMM14,%XMM3;  (48) 
0xf1d4;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM3,-0x60(%RAX);  (48) 
0xf1d9;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d747(%RIP),%XMM4,%XMM5;  (48) 
0xf1e1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM5,-0x58(%RAX);  (48) 
0xf1e6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d73a(%RIP),%XMM6,%XMM13;  (48) 
0xf1ee;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM13,-0x50(%RAX);  (48) 
0xf1f3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x48(%RAX),%XMM9;  (48) 
0xf1f8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d728(%RIP),%XMM9,%XMM2;  (48) 
0xf200;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x40(%RAX),%XMM10;  (48) 
0xf205;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x38(%RAX),%XMM1;  (48) 
0xf20a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x30(%RAX),%XMM8;  (48) 
0xf20f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x28(%RAX),%XMM0;  (48) 
0xf214;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM2,-0x48(%RAX);  (48) 
0xf219;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d707(%RIP),%XMM10,%XMM15;  (48) 
0xf221;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x20(%RAX),%XMM14;  (48) 
0xf226;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x18(%RAX),%XMM4;  (48) 
0xf22b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x10(%RAX),%XMM6;  (48) 
0xf230;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	-0x8(%RAX),%XMM9;  (48) 
0xf235;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM15,-0x40(%RAX);  (48) 
0xf23a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d6e6(%RIP),%XMM1,%XMM12;  (48) 
0xf242;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM12,-0x38(%RAX);  (48) 
0xf247;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d6d9(%RIP),%XMM8,%XMM7;  (48) 
0xf24f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM7,-0x30(%RAX);  (48) 
0xf254;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d6cc(%RIP),%XMM0,%XMM11;  (48) 
0xf25c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM11,-0x28(%RAX);  (48) 
0xf261;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d6bf(%RIP),%XMM14,%XMM3;  (48) 
0xf269;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM3,-0x20(%RAX);  (48) 
0xf26e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d6b2(%RIP),%XMM4,%XMM5;  (48) 
0xf276;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM5,-0x18(%RAX);  (48) 
0xf27b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d6a5(%RIP),%XMM6,%XMM13;  (48) 
0xf283;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM13,-0x10(%RAX);  (48) 
0xf288;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMULSD	0x1d698(%RIP),%XMM9,%XMM2;  (48) 
0xf290;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:404;VMOVSD	%XMM2,-0x8(%RAX);  (48) 
0xf295;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;CMP	%RCX,%RAX;  (48) 
0xf298;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;JNE	f113 <compute_rhs_._omp_fn.0+0x2dc3>;  (48) 
0xf29e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;CMP	%EDI,%R9D;
0xf2a1;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;JE	d6be <compute_rhs_._omp_fn.0+0x136e>;
0xf2a7;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;ADD	$0x1,%ESI;
0xf2aa;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;CMP	%ESI,%R10D;
0xf2ad;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;JLE	10a10 <compute_rhs_._omp_fn.0+0x46c0>;
0xf2b3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;ADD	$0x1,%EDI;
0xf2b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;JMP	efa0 <compute_rhs_._omp_fn.0+0x2c50>;
0x10a10;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:162;ADD	$0x1,%R8D;
0x10a14;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;MOV	$0x1,%ESI;
0x10a19;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;MOVSXD	%R8D,%RBX;
0x10a1c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402;JMP	f2b3 <compute_rhs_._omp_fn.0+0x2f63>;
