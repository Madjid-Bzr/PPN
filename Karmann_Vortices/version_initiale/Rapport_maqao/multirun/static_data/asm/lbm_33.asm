address;source_location;insn;indent
0x37d0;/users/user2207/lbm_init/src/lbm_init.c:54;MOV	0x10(%RSP),%RAX;
0x37d5;/users/user2207/lbm_init/src/lbm_init.c:54;MOV	0x588d(%RIP),%ESI;
0x37db;/users/user2207/lbm_init/src/lbm_init.c:54;MOV	0x4(%RAX),%EDI;
0x37de;/users/user2207/lbm_init/src/lbm_init.c:54;ADD	0x8(%RSP),%RDI;
0x37e3;/users/user2207/lbm_init/src/lbm_init.c:54;CALL	42d0 <helper_compute_poiseuille>;
0x37e8;/users/user2207/lbm_init/src/../include/lbm_struct.h:130;MOV	0xc(%RBX),%EDX;
0x37eb;/users/user2207/lbm_init/src/lbm_init.c:56;LEA	(%R14),%RDI;
0x37ee;/users/user2207/lbm_init/src/lbm_init.c:56;MOV	(%RBX),%RSI;
0x37f1;/users/user2207/lbm_init/src/lbm_init.c:56;MOV	0x2c30(%RIP),%RAX;
0x37f8;/users/user2207/lbm_init/src/../include/lbm_struct.h:130;IMUL	%R12D,%EDX;
0x37fc;/users/user2207/lbm_init/src/lbm_init.c:54;VMOVSD	%XMM0,0x30(%RSP);
0x3802;/users/user2207/lbm_init/src/lbm_init.c:56;VMOVQ	%RAX,%XMM0;
0x3807;/users/user2207/lbm_init/src/../include/lbm_struct.h:130;ADD	%EBP,%EDX;
0x3809;/users/user2207/lbm_init/src/../include/lbm_struct.h:130;LEA	(%RDX,%RDX,8),%EDX;
0x380c;/users/user2207/lbm_init/src/lbm_init.c:56;ADD	%R13,%RDX;
0x380f;/users/user2207/lbm_init/src/lbm_init.c:56;SAL	$0x3,%RDX;
0x3813;/users/user2207/lbm_init/src/lbm_init.c:56;ADD	%RSI,%RDX;
0x3816;/users/user2207/lbm_init/src/lbm_init.c:56;LEA	(%R13),%ESI;
0x381a;/users/user2207/lbm_init/src/lbm_init.c:56;MOV	%RDX,(%RSP);
0x381e;/users/user2207/lbm_init/src/lbm_init.c:52;LEA	0x1(%R13),%R13;
0x3822;/users/user2207/lbm_init/src/lbm_init.c:56;CALL	3e80 <compute_equilibrium_profile>;
0x3827;/users/user2207/lbm_init/src/lbm_init.c:56;MOV	(%RSP),%RDX;
0x382b;/users/user2207/lbm_init/src/lbm_init.c:56;VMOVSD	%XMM0,(%RDX);
0x382f;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;MOV	0xc(%R15),%EDX;
0x3833;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;IMUL	%R12D,%EDX;
0x3837;/users/user2207/lbm_init/src/lbm_init.c:52;CMP	$0x9,%R13;
0x383b;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;LEA	(%RDX,%RBP,1),%ESI;
0x383e;/users/user2207/lbm_init/src/lbm_init.c:58;MOV	(%R15),%RDX;
0x3841;/users/user2207/lbm_init/src/lbm_init.c:58;MOVL	$0,(%RDX,%RSI,4);
0x3848;/users/user2207/lbm_init/src/lbm_init.c:52;JNE	37d0 <setup_init_state_global_poiseuille_profile+0x90>;