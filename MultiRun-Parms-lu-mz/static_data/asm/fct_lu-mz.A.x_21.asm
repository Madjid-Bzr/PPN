address;source_location;insn;indent
0xedc0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:4;PUSH	%RBP;
0xedc1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VMOVUPD	0x2dea7(%RIP),%YMM12;
0xedc9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:30;MOV	(%RDI),%EAX;
0xedcb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:4;LEA	(%RSP),%RBP;
0xedcf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:30;MOV	(%R8),%EDI;
0xedd2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:31;MOV	(%R9),%R8D;
0xedd5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;MOV	0x10(%RBP),%R9;
0xedd9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:30;SUB	$0x1,%EAX;
0xeddc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:31;MOV	(%RSI),%ESI;
0xedde;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:30;SUB	$0x1,%EDI;
0xede1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;MOV	(%RDX),%EDX;
0xede3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:31;SUB	$0x1,%R8D;
0xede7;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;MOV	(%R9),%R10D;
0xedea;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:30;VCVTSI2SD	%EAX,%XMM2,%XMM2;
0xedee;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:31;SUB	$0x1,%ESI;
0xedf1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:30;VCVTSI2SD	%EDI,%XMM1,%XMM1;
0xedf5;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;SUB	$0x1,%EDX;
0xedf8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:31;VCVTSI2SD	%ESI,%XMM3,%XMM3;
0xedfc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;SUB	$0x1,%R10D;
0xee00;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:31;VCVTSI2SD	%R8D,%XMM0,%XMM0;
0xee05;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;VCVTSI2SD	%EDX,%XMM4,%XMM4;
0xee09;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;VCVTSI2SD	%R10D,%XMM5,%XMM5;
0xee0e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:30;VDIVSD	%XMM1,%XMM2,%XMM7;
0xee12;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VMOVUPD	0x2de7e(%RIP),%YMM13;
0xee1a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VMOVUPD	0x2de9e(%RIP),%YMM14;
0xee22;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VMOVSD	0x2de66(%RIP),%XMM15;
0xee2a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VMOVSD	0x2de86(%RIP),%XMM2;
0xee32;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VMOVSD	0x2dea6(%RIP),%XMM1;
0xee3a;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:31;VDIVSD	%XMM0,%XMM3,%XMM8;
0xee3e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:31;VBROADCASTSD	%XMM7,%YMM10;
0xee43;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2ddcc(%RIP),%XMM7,%XMM15;
0xee4c;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dda3(%RIP),%YMM10,%YMM12;
0xee55;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dd42(%RIP),%XMM7,%XMM15;
0xee5e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dd19(%RIP),%YMM10,%YMM12;
0xee67;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dcb8(%RIP),%XMM7,%XMM15;
0xee70;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dc8f(%RIP),%YMM10,%YMM12;
0xee79;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dc7e(%RIP),%XMM15,%XMM7;
0xee82;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dc55(%RIP),%YMM10,%YMM12;
0xee8b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;VDIVSD	%XMM5,%XMM4,%XMM9;
0xee8f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:32;VBROADCASTSD	%XMM8,%YMM6;
0xee94;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dda3(%RIP),%XMM8,%XMM2;
0xee9d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dd7a(%RIP),%YMM6,%YMM13;
0xeea6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dd19(%RIP),%XMM8,%XMM2;
0xeeaf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dcf0(%RIP),%YMM6,%YMM13;
0xeeb8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dc8f(%RIP),%XMM8,%XMM2;
0xeec1;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dc66(%RIP),%YMM6,%YMM13;
0xeeca;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD132SD	%XMM2,%XMM7,%XMM8;
0xeecf;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD132PD	%YMM6,%YMM12,%YMM13;
0xeed4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VBROADCASTSD	%XMM9,%YMM11;
0xeed9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dd66(%RIP),%YMM11,%YMM14;
0xeee2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dce5(%RIP),%YMM11,%YMM14;
0xeeeb;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213PD	0x2dc64(%RIP),%YMM11,%YMM14;
0xeef4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD231PD	%YMM14,%YMM11,%YMM13;
0xeef9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VMOVUPD	%YMM13,(%RCX);
0xeefd;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dd62(%RIP),%XMM9,%XMM1;
0xef06;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:52;POP	%RBP;
0xef07;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dce0(%RIP),%XMM9,%XMM1;
0xef10;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD213SD	0x2dc5f(%RIP),%XMM9,%XMM1;
0xef19;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VFMADD132SD	%XMM1,%XMM8,%XMM9;
0xef1e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:48;VMOVSD	%XMM9,0x20(%RCX);
0xef23;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exact.f90:52;RET;
0xef24;:0;NOPW	%CS:(%RAX,%RAX,1);
0xef2e;:0;XCHG	%AX,%AX;
