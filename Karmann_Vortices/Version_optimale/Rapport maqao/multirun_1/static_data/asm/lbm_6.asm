address;source_location;insn;indent
0x2ee0;/users/user2207/lbm_opt/src/lbm_init.c:27;VCVTSI2SD	%R10,%XMM1,%XMM1;
0x2ee5;/users/user2207/lbm_opt/src/lbm_init.c:27;VSUBSD	%XMM8,%XMM1,%XMM9;
0x2eea;/users/user2207/lbm_opt/src/lbm_init.c:27;VFMADD132SD	%XMM9,%XMM2,%XMM9;
0x2eef;/users/user2207/lbm_opt/src/lbm_init.c:27;VCOMISD	%XMM9,%XMM10;
0x2ef4;/users/user2207/lbm_opt/src/lbm_init.c:27;JB	2f68 <setup_init_state+0x5a8>;
0x2ef6;/users/user2207/lbm_opt/src/../include/lbm_struct.h:148;MOV	0xc(%RBP),%R8D;
0x2efa;/users/user2207/lbm_opt/src/lbm_init.c:30;LEA	(%RSI),%R9D;
0x2efd;/users/user2207/lbm_opt/src/lbm_init.c:30;SUB	%EDX,%R9D;
0x2f00;/users/user2207/lbm_opt/src/../include/lbm_struct.h:148;LEA	(%R10),%EDI;
0x2f03;/users/user2207/lbm_opt/src/lbm_init.c:30;MOV	(%RBP),%RDX;
0x2f07;/users/user2207/lbm_opt/src/../include/lbm_struct.h:148;SUB	%ECX,%EDI;
0x2f09;/users/user2207/lbm_opt/src/../include/lbm_struct.h:148;IMUL	%R9D,%R8D;
0x2f0d;/users/user2207/lbm_opt/src/lbm_init.c:26;LEA	0x1(%R10),%R10;
0x2f11;/users/user2207/lbm_opt/src/../include/lbm_struct.h:148;ADD	%R8D,%EDI;
0x2f14;/users/user2207/lbm_opt/src/lbm_init.c:30;MOVL	$0x1,(%RDX,%RDI,4);
0x2f1b;/users/user2207/lbm_opt/src/lbm_init.c:30;MOV	0x4(%R12),%ECX;
0x2f20;/users/user2207/lbm_opt/src/lbm_init.c:26;MOV	0xc(%RBX),%R9D;
0x2f24;/users/user2207/lbm_opt/src/lbm_init.c:26;MOV	(%R12),%EDX;
0x2f28;/users/user2207/lbm_opt/src/lbm_init.c:26;ADD	%ECX,%R9D;
0x2f2b;/users/user2207/lbm_opt/src/lbm_init.c:26;MOV	%R9D,%EAX;
0x2f2e;/users/user2207/lbm_opt/src/lbm_init.c:26;CMP	%RAX,%R10;
0x2f31;/users/user2207/lbm_opt/src/lbm_init.c:26;JB	2ee0 <setup_init_state+0x520>;
0x2f68;/users/user2207/lbm_opt/src/lbm_init.c:26;LEA	0x1(%R10),%R10;
0x2f6c;/users/user2207/lbm_opt/src/lbm_init.c:26;LEA	(%R9),%R11D;
0x2f6f;/users/user2207/lbm_opt/src/lbm_init.c:26;CMP	%R10,%R11;
0x2f72;/users/user2207/lbm_opt/src/lbm_init.c:26;JA	2ee0 <setup_init_state+0x520>;