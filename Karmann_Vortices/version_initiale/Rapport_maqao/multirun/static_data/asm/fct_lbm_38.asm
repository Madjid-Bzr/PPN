address;source_location;insn;indent
0x4460;/users/user2207/lbm_init/src/lbm_phys.c:187;ENDBR64;
0x4464;/users/user2207/lbm_init/src/lbm_phys.c:189;MOV	0x8(%RDI),%EAX;
0x4467;/users/user2207/lbm_init/src/lbm_phys.c:189;SUB	$0x1,%EAX;
0x446a;/users/user2207/lbm_init/src/lbm_phys.c:189;CMP	$0x1,%EAX;
0x446d;/users/user2207/lbm_init/src/lbm_phys.c:189;JBE	462b <special_cells+0x1cb>;
0x4473;/users/user2207/lbm_init/src/lbm_phys.c:187;PUSH	%RBP;
0x4474;/users/user2207/lbm_init/src/lbm_phys.c:187;LEA	(%RSI),%R8;
0x4477;/users/user2207/lbm_init/src/lbm_phys.c:187;LEA	(%RDX),%R10;
0x447a;/users/user2207/lbm_init/src/lbm_phys.c:187;PUSH	%RBX;
0x447b;/users/user2207/lbm_init/src/lbm_phys.c:189;MOV	$0x1,%R9D;
0x4481;/users/user2207/lbm_init/src/lbm_phys.c:187;LEA	-0x8(%RSP),%RSP;
0x4486;/users/user2207/lbm_init/src/lbm_phys.c:187;MOV	0xc(%RDI),%ESI;
0x4489;/users/user2207/lbm_init/src/lbm_phys.c:173;VMOVSD	0x1f97(%RIP),%XMM12;
0x4491;/users/user2207/lbm_init/src/lbm_phys.c:173;VMOVSD	0x2397(%RIP),%XMM11;
0x4499;/users/user2207/lbm_init/src/lbm_phys.c:177;VMOVSD	0x239f(%RIP),%XMM10;
0x44a1;/users/user2207/lbm_init/src/lbm_phys.c:177;MOV	%ESI,%EBX;
0x44a3;/users/user2207/lbm_init/src/lbm_phys.c:177;SUB	$0x1,%EBX;
0x44a6;/users/user2207/lbm_init/src/lbm_phys.c:177;NOPW	%CS:(%RAX,%RAX,1);
0x44b0;/users/user2207/lbm_init/src/lbm_phys.c:190;CMP	$0x1,%EBX;(43) 
0x44b3;/users/user2207/lbm_init/src/lbm_phys.c:190;LEA	(%R9),%R11D;(43) 
0x44b6;/users/user2207/lbm_init/src/lbm_phys.c:178;VMOVSD	0x1f62(%RIP),%XMM9;(43) 
0x44be;/users/user2207/lbm_init/src/lbm_phys.c:190;MOV	$0x1,%ECX;(43) 
0x44c3;/users/user2207/lbm_init/src/lbm_phys.c:190;JA	44e8 <special_cells+0x88>;(43) 
0x44c5;/users/user2207/lbm_init/src/lbm_phys.c:190;JMP	459f <special_cells+0x13f>;(43) 
0x44ca;/users/user2207/lbm_init/src/lbm_phys.c:190;NOPW	(%RAX,%RAX,1);
0x44d0;/users/user2207/lbm_init/src/lbm_phys.c:191;CMP	$0x1,%EAX;  (44) 
0x44d3;/users/user2207/lbm_init/src/lbm_phys.c:191;JE	45e8 <special_cells+0x188>;  (44) 
0x44d9;/users/user2207/lbm_init/src/lbm_phys.c:190;LEA	0x1(%RCX),%RCX;  (44) 
0x44dd;/users/user2207/lbm_init/src/lbm_phys.c:190;MOV	%EBX,%EAX;  (44) 
0x44df;/users/user2207/lbm_init/src/lbm_phys.c:190;CMP	%RCX,%RAX;  (44) 
0x44e2;/users/user2207/lbm_init/src/lbm_phys.c:190;JBE	4599 <special_cells+0x139>;  (44) 
0x44e8;/users/user2207/lbm_init/include/lbm_struct.h:148;MOV	0xc(%R8),%EAX;  (44) 
0x44ec;/users/user2207/lbm_init/include/lbm_struct.h:148;MOV	%ECX,%EBP;  (44) 
0x44ee;/users/user2207/lbm_init/include/lbm_struct.h:148;IMUL	%R11D,%EAX;  (44) 
0x44f2;/users/user2207/lbm_init/include/lbm_struct.h:148;LEA	(%RAX,%RCX,1),%EDX;  (44) 
0x44f5;/users/user2207/lbm_init/src/lbm_phys.c:191;MOV	(%R8),%RAX;  (44) 
0x44f8;/users/user2207/lbm_init/src/lbm_phys.c:191;MOV	(%RAX,%RDX,4),%EAX;  (44) 
0x44fb;/users/user2207/lbm_init/src/lbm_phys.c:191;CMP	$0x2,%EAX;  (44) 
0x44fe;/users/user2207/lbm_init/src/lbm_phys.c:191;JE	45b8 <special_cells+0x158>;  (44) 
0x4504;/users/user2207/lbm_init/src/lbm_phys.c:191;CMP	$0x3,%EAX;  (44) 
0x4507;/users/user2207/lbm_init/src/lbm_phys.c:191;JNE	44d0 <special_cells+0x70>;  (44) 
0x4509;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%R11),%EAX;  (44) 
0x450c;/users/user2207/lbm_init/src/lbm_phys.c:190;LEA	0x1(%RCX),%RCX;  (44) 
0x4510;/users/user2207/lbm_init/include/lbm_struct.h:130;IMUL	%ESI,%EAX;  (44) 
0x4513;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%EAX,%EBP;  (44) 
0x4515;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	(%RDI),%RAX;  (44) 
0x4518;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	%EBP,%EDX;  (44) 
0x451a;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%EDX;  (44) 
0x451d;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%EBP,%EDX;  (44) 
0x451f;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%RAX,%RDX,8),%RAX;  (44) 
0x4523;/users/user2207/lbm_init/src/lbm_phys.c:173;VMOVSD	0x10(%RAX),%XMM4;  (44) 
0x4528;/users/user2207/lbm_init/src/lbm_phys.c:173;VMOVSD	0x20(%RAX),%XMM1;  (44) 
0x452d;/users/user2207/lbm_init/src/lbm_phys.c:173;VADDSD	(%RAX),%XMM4,%XMM5;  (44) 
0x4531;/users/user2207/lbm_init/src/lbm_phys.c:174;VMOVSD	0x8(%RAX),%XMM3;  (44) 
0x4536;/users/user2207/lbm_init/src/lbm_phys.c:173;VSUBSD	%XMM12,%XMM1,%XMM2;  (44) 
0x453b;/users/user2207/lbm_init/src/lbm_phys.c:174;VMOVSD	0x28(%RAX),%XMM7;  (44) 
0x4540;/users/user2207/lbm_init/src/lbm_phys.c:174;VADDSD	%XMM7,%XMM3,%XMM0;  (44) 
0x4544;/users/user2207/lbm_init/src/lbm_phys.c:174;VMOVSD	0x40(%RAX),%XMM6;  (44) 
0x4549;/users/user2207/lbm_init/src/lbm_phys.c:173;VADDSD	%XMM2,%XMM5,%XMM5;  (44) 
0x454d;/users/user2207/lbm_init/src/lbm_phys.c:178;VSUBSD	%XMM1,%XMM4,%XMM2;  (44) 
0x4551;/users/user2207/lbm_init/src/lbm_phys.c:174;VADDSD	%XMM6,%XMM0,%XMM0;  (44) 
0x4555;/users/user2207/lbm_init/src/lbm_phys.c:181;VSUBSD	%XMM4,%XMM1,%XMM1;  (44) 
0x4559;/users/user2207/lbm_init/src/lbm_phys.c:178;VFMADD132SD	%XMM9,%XMM7,%XMM2;  (44) 
0x455e;/users/user2207/lbm_init/src/lbm_phys.c:173;VFMADD132SD	%XMM11,%XMM5,%XMM0;  (44) 
0x4563;/users/user2207/lbm_init/src/lbm_phys.c:177;VFNMADD231SD	%XMM10,%XMM0,%XMM3;  (44) 
0x4568;/users/user2207/lbm_init/src/lbm_phys.c:177;VMOVSD	%XMM3,0x18(%RAX);  (44) 
0x456d;/users/user2207/lbm_init/src/lbm_phys.c:181;VFMADD132SD	%XMM9,%XMM6,%XMM1;  (44) 
0x4572;/users/user2207/lbm_init/src/lbm_phys.c:178;VMOVSD	0x22be(%RIP),%XMM3;  (44) 
0x457a;/users/user2207/lbm_init/src/lbm_phys.c:178;VFNMADD231SD	%XMM3,%XMM0,%XMM2;  (44) 
0x457f;/users/user2207/lbm_init/src/lbm_phys.c:181;VFNMADD132SD	%XMM3,%XMM1,%XMM0;  (44) 
0x4584;/users/user2207/lbm_init/src/lbm_phys.c:178;VMOVSD	%XMM2,0x38(%RAX);  (44) 
0x4589;/users/user2207/lbm_init/src/lbm_phys.c:181;VMOVSD	%XMM0,0x30(%RAX);  (44) 
0x458e;/users/user2207/lbm_init/src/lbm_phys.c:190;LEA	(%RBX),%EAX;  (44) 
0x4590;/users/user2207/lbm_init/src/lbm_phys.c:190;CMP	%RCX,%RAX;  (44) 
0x4593;/users/user2207/lbm_init/src/lbm_phys.c:190;JA	44e8 <special_cells+0x88>;  (44) 
0x4599;/users/user2207/lbm_init/src/lbm_phys.c:190;MOV	0x8(%RDI),%EAX;(43) 
0x459c;/users/user2207/lbm_init/src/lbm_phys.c:190;SUB	$0x1,%EAX;(43) 
0x459f;/users/user2207/lbm_init/src/lbm_phys.c:189;LEA	0x1(%R9),%R9;(43) 
0x45a3;/users/user2207/lbm_init/src/lbm_phys.c:189;MOV	%EAX,%EDX;(43) 
0x45a5;/users/user2207/lbm_init/src/lbm_phys.c:189;CMP	%R9,%RDX;(43) 
0x45a8;/users/user2207/lbm_init/src/lbm_phys.c:189;JA	44b0 <special_cells+0x50>;(43) 
0x45ae;/users/user2207/lbm_init/src/lbm_phys.c:208;LEA	0x8(%RSP),%RSP;
0x45b3;/users/user2207/lbm_init/src/lbm_phys.c:208;POP	%RBX;
0x45b4;/users/user2207/lbm_init/src/lbm_phys.c:208;POP	%RBP;
0x45b5;/users/user2207/lbm_init/src/lbm_phys.c:208;RET;
0x45b6;/users/user2207/lbm_init/src/lbm_phys.c:208;XCHG	%AX,%AX;
0x45b8;/users/user2207/lbm_init/include/lbm_struct.h:130;IMUL	%R11D,%ESI;  (44) 
0x45bc;/users/user2207/lbm_init/src/lbm_phys.c:199;MOV	0x4(%R10),%EDX;  (44) 
0x45c0;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	(%RDI),%RAX;  (44) 
0x45c3;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%ECX,%ESI;  (44) 
0x45c5;/users/user2207/lbm_init/src/lbm_phys.c:198;ADD	%RCX,%RDX;  (44) 
0x45c8;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%RSI,%RSI,8),%ESI;  (44) 
0x45cb;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%RSI;  (44) 
0x45cf;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%RAX,%RSI;  (44) 
0x45d2;/users/user2207/lbm_init/src/lbm_phys.c:198;CALL	4310 <compute_inflow_zou_he_poiseuille_distr>;  (44) 
0x45d7;/users/user2207/lbm_init/src/lbm_phys.c:200;MOV	0xc(%RDI),%ESI;  (44) 
0x45da;/users/user2207/lbm_init/src/lbm_phys.c:200;MOV	%ESI,%EBX;  (44) 
0x45dc;/users/user2207/lbm_init/src/lbm_phys.c:200;SUB	$0x1,%EBX;  (44) 
0x45df;/users/user2207/lbm_init/src/lbm_phys.c:200;JMP	44d9 <special_cells+0x79>;  (44) 
0x45e4;/users/user2207/lbm_init/src/lbm_phys.c:200;NOPL	(%RAX);
0x45e8;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%R11),%EAX;  (44) 
0x45eb;/users/user2207/lbm_init/include/lbm_struct.h:130;IMUL	%ESI,%EAX;  (44) 
0x45ee;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%EAX,%EBP;  (44) 
0x45f0;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	(%RDI),%RAX;  (44) 
0x45f3;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	%EBP,%EDX;  (44) 
0x45f5;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%EDX;  (44) 
0x45f8;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%EBP,%EDX;  (44) 
0x45fa;/users/user2207/lbm_init/include/lbm_struct.h:130;LEA	(%RAX,%RDX,8),%RAX;  (44) 
0x45fe;/users/user2207/lbm_init/src/lbm_phys.c:122;VMOVUPD	0x8(%RAX),%XMM1;  (44) 
0x4603;/users/user2207/lbm_init/src/lbm_phys.c:122;VMOVUPD	0x28(%RAX),%XMM0;  (44) 
0x4608;/users/user2207/lbm_init/src/lbm_phys.c:126;VMOVUPD	0x18(%RAX),%XMM6;  (44) 
0x460d;/users/user2207/lbm_init/src/lbm_phys.c:126;VMOVUPD	0x38(%RAX),%XMM7;  (44) 
0x4612;/users/user2207/lbm_init/src/lbm_phys.c:126;VMOVUPD	%XMM6,0x8(%RAX);  (44) 
0x4617;/users/user2207/lbm_init/src/lbm_phys.c:126;VMOVUPD	%XMM1,0x18(%RAX);  (44) 
0x461c;/users/user2207/lbm_init/src/lbm_phys.c:126;VMOVUPD	%XMM7,0x28(%RAX);  (44) 
0x4621;/users/user2207/lbm_init/src/lbm_phys.c:126;VMOVUPD	%XMM0,0x38(%RAX);  (44) 
0x4626;/users/user2207/lbm_init/src/lbm_phys.c:128;JMP	44d9 <special_cells+0x79>;  (44) 
0x462b;/users/user2207/lbm_init/src/lbm_phys.c:128;RET;
0x462c;:0;NOPL	(%RAX);
