address;source_location;insn;indent
0x3740;/users/user2207/lbm_init/src/lbm_init.c:42;ENDBR64;
0x3744;/users/user2207/lbm_init/src/lbm_init.c:42;PUSH	%R15;
0x3746;/users/user2207/lbm_init/src/lbm_init.c:43;VXORPD	%XMM0,%XMM0,%XMM0;
0x374a;/users/user2207/lbm_init/src/lbm_init.c:42;LEA	(%RSI),%R15;
0x374d;/users/user2207/lbm_init/src/lbm_init.c:42;PUSH	%R14;
0x374f;/users/user2207/lbm_init/src/lbm_init.c:42;PUSH	%R13;
0x3751;/users/user2207/lbm_init/src/lbm_init.c:42;PUSH	%R12;
0x3753;/users/user2207/lbm_init/src/lbm_init.c:42;PUSH	%RBP;
0x3754;/users/user2207/lbm_init/src/lbm_init.c:42;PUSH	%RBX;
0x3755;/users/user2207/lbm_init/src/lbm_init.c:42;LEA	(%RDI),%RBX;
0x3758;/users/user2207/lbm_init/src/lbm_init.c:47;MOV	$0x44000000,%EDI;
0x375d;/users/user2207/lbm_init/src/lbm_init.c:42;LEA	-0x58(%RSP),%RSP;
0x3762;/users/user2207/lbm_init/src/lbm_init.c:42;MOV	%RDX,0x10(%RSP);
0x3767;/users/user2207/lbm_init/src/lbm_init.c:47;LEA	0x2c(%RSP),%RSI;
0x376c;/users/user2207/lbm_init/src/lbm_init.c:42;MOV	%FS:0x28,%RAX;
0x3775;/users/user2207/lbm_init/src/lbm_init.c:42;MOV	%RAX,0x48(%RSP);
0x377a;/users/user2207/lbm_init/src/lbm_init.c:42;XOR	%EAX,%EAX;
0x377c;/users/user2207/lbm_init/src/lbm_init.c:43;VMOVAPD	%XMM0,0x30(%RSP);
0x3782;/users/user2207/lbm_init/src/lbm_init.c:47;CALL	1220 <.plt.sec@start+0x50>;
0x3787;/users/user2207/lbm_init/src/lbm_init.c:50;MOV	0x8(%RBX),%EDX;
0x378a;/users/user2207/lbm_init/src/lbm_init.c:50;TEST	%EDX,%EDX;
0x378c;/users/user2207/lbm_init/src/lbm_init.c:50;JE	387e <setup_init_state_global_poiseuille_profile+0x13e>;
0x3792;/users/user2207/lbm_init/src/lbm_init.c:50;MOV	0xc(%RBX),%EAX;
0x3795;/users/user2207/lbm_init/src/lbm_init.c:50;MOVQ	$0,0x18(%RSP);
0x379e;/users/user2207/lbm_init/src/lbm_init.c:50;XCHG	%AX,%AX;
0x37a0;/users/user2207/lbm_init/src/lbm_init.c:51;TEST	%EAX,%EAX;(32) 
0x37a2;/users/user2207/lbm_init/src/lbm_init.c:51;JE	389e <setup_init_state_global_poiseuille_profile+0x15e>;(32) 
0x37a8;/users/user2207/lbm_init/src/lbm_init.c:51;MOV	0x18(%RSP),%R12D;(32) 
0x37ad;/users/user2207/lbm_init/src/lbm_init.c:51;LEA	0x30(%RSP),%R14;(32) 
0x37b2;/users/user2207/lbm_init/src/lbm_init.c:51;MOVQ	$0,0x8(%RSP);(32) 
0x37bb;/users/user2207/lbm_init/src/lbm_init.c:51;NOPL	(%RAX,%RAX,1);(32) 
0x37c0;/users/user2207/lbm_init/src/lbm_init.c:51;MOV	0x8(%RSP),%EBP;  (34) 
0x37c4;/users/user2207/lbm_init/src/lbm_init.c:52;XOR	%R13D,%R13D;  (34) 
0x37c7;/users/user2207/lbm_init/src/lbm_init.c:52;NOPW	(%RAX,%RAX,1);  (34) 
0x37d0;/users/user2207/lbm_init/src/lbm_init.c:54;MOV	0x10(%RSP),%RAX;    (33) 
0x37d5;/users/user2207/lbm_init/src/lbm_init.c:54;MOV	0x588d(%RIP),%ESI;    (33) 
0x37db;/users/user2207/lbm_init/src/lbm_init.c:54;MOV	0x4(%RAX),%EDI;    (33) 
0x37de;/users/user2207/lbm_init/src/lbm_init.c:54;ADD	0x8(%RSP),%RDI;    (33) 
0x37e3;/users/user2207/lbm_init/src/lbm_init.c:54;CALL	42d0 <helper_compute_poiseuille>;    (33) 
0x37e8;/users/user2207/lbm_init/src/../include/lbm_struct.h:130;MOV	0xc(%RBX),%EDX;    (33) 
0x37eb;/users/user2207/lbm_init/src/lbm_init.c:56;LEA	(%R14),%RDI;    (33) 
0x37ee;/users/user2207/lbm_init/src/lbm_init.c:56;MOV	(%RBX),%RSI;    (33) 
0x37f1;/users/user2207/lbm_init/src/lbm_init.c:56;MOV	0x2c30(%RIP),%RAX;    (33) 
0x37f8;/users/user2207/lbm_init/src/../include/lbm_struct.h:130;IMUL	%R12D,%EDX;    (33) 
0x37fc;/users/user2207/lbm_init/src/lbm_init.c:54;VMOVSD	%XMM0,0x30(%RSP);    (33) 
0x3802;/users/user2207/lbm_init/src/lbm_init.c:56;VMOVQ	%RAX,%XMM0;    (33) 
0x3807;/users/user2207/lbm_init/src/../include/lbm_struct.h:130;ADD	%EBP,%EDX;    (33) 
0x3809;/users/user2207/lbm_init/src/../include/lbm_struct.h:130;LEA	(%RDX,%RDX,8),%EDX;    (33) 
0x380c;/users/user2207/lbm_init/src/lbm_init.c:56;ADD	%R13,%RDX;    (33) 
0x380f;/users/user2207/lbm_init/src/lbm_init.c:56;SAL	$0x3,%RDX;    (33) 
0x3813;/users/user2207/lbm_init/src/lbm_init.c:56;ADD	%RSI,%RDX;    (33) 
0x3816;/users/user2207/lbm_init/src/lbm_init.c:56;LEA	(%R13),%ESI;    (33) 
0x381a;/users/user2207/lbm_init/src/lbm_init.c:56;MOV	%RDX,(%RSP);    (33) 
0x381e;/users/user2207/lbm_init/src/lbm_init.c:52;LEA	0x1(%R13),%R13;    (33) 
0x3822;/users/user2207/lbm_init/src/lbm_init.c:56;CALL	3e80 <compute_equilibrium_profile>;    (33) 
0x3827;/users/user2207/lbm_init/src/lbm_init.c:56;MOV	(%RSP),%RDX;    (33) 
0x382b;/users/user2207/lbm_init/src/lbm_init.c:56;VMOVSD	%XMM0,(%RDX);    (33) 
0x382f;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;MOV	0xc(%R15),%EDX;    (33) 
0x3833;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;IMUL	%R12D,%EDX;    (33) 
0x3837;/users/user2207/lbm_init/src/lbm_init.c:52;CMP	$0x9,%R13;    (33) 
0x383b;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;LEA	(%RDX,%RBP,1),%ESI;    (33) 
0x383e;/users/user2207/lbm_init/src/lbm_init.c:58;MOV	(%R15),%RDX;    (33) 
0x3841;/users/user2207/lbm_init/src/lbm_init.c:58;MOVL	$0,(%RDX,%RSI,4);    (33) 
0x3848;/users/user2207/lbm_init/src/lbm_init.c:52;JNE	37d0 <setup_init_state_global_poiseuille_profile+0x90>;    (33) 
0x384a;/users/user2207/lbm_init/src/lbm_init.c:51;MOV	0xc(%RBX),%EDX;  (34) 
0x384d;/users/user2207/lbm_init/src/lbm_init.c:51;ADDQ	$0x1,0x8(%RSP);  (34) 
0x3853;/users/user2207/lbm_init/src/lbm_init.c:51;MOV	0x8(%RSP),%RCX;  (34) 
0x3858;/users/user2207/lbm_init/src/lbm_init.c:51;MOV	%RDX,%RAX;  (34) 
0x385b;/users/user2207/lbm_init/src/lbm_init.c:51;CMP	%RCX,%RDX;  (34) 
0x385e;/users/user2207/lbm_init/src/lbm_init.c:51;JA	37c0 <setup_init_state_global_poiseuille_profile+0x80>;  (34) 
0x3864;/users/user2207/lbm_init/src/lbm_init.c:51;MOV	0x8(%RBX),%ESI;(32) 
0x3867;/users/user2207/lbm_init/src/lbm_init.c:51;MOV	%RSI,%RDX;(32) 
0x386a;/users/user2207/lbm_init/src/lbm_init.c:50;ADDQ	$0x1,0x18(%RSP);(32) 
0x3870;/users/user2207/lbm_init/src/lbm_init.c:50;MOV	0x18(%RSP),%RCX;(32) 
0x3875;/users/user2207/lbm_init/src/lbm_init.c:50;CMP	%RCX,%RSI;(32) 
0x3878;/users/user2207/lbm_init/src/lbm_init.c:50;JA	37a0 <setup_init_state_global_poiseuille_profile+0x60>;(32) 
0x387e;/users/user2207/lbm_init/src/lbm_init.c:67;MOV	0x48(%RSP),%RAX;
0x3883;/users/user2207/lbm_init/src/lbm_init.c:67;XOR	%FS:0x28,%RAX;
0x388c;/users/user2207/lbm_init/src/lbm_init.c:67;JNE	38b2 <setup_init_state_global_poiseuille_profile+0x172>;
0x388e;/users/user2207/lbm_init/src/lbm_init.c:67;LEA	0x58(%RSP),%RSP;
0x3893;/users/user2207/lbm_init/src/lbm_init.c:67;POP	%RBX;
0x3894;/users/user2207/lbm_init/src/lbm_init.c:67;POP	%RBP;
0x3895;/users/user2207/lbm_init/src/lbm_init.c:67;POP	%R12;
0x3897;/users/user2207/lbm_init/src/lbm_init.c:67;POP	%R13;
0x3899;/users/user2207/lbm_init/src/lbm_init.c:67;POP	%R14;
0x389b;/users/user2207/lbm_init/src/lbm_init.c:67;POP	%R15;
0x389d;/users/user2207/lbm_init/src/lbm_init.c:67;RET;
0x389e;/users/user2207/lbm_init/src/lbm_init.c:50;ADDQ	$0x1,0x18(%RSP);(32) 
0x38a4;/users/user2207/lbm_init/src/lbm_init.c:50;LEA	(%RDX),%ESI;(32) 
0x38a6;/users/user2207/lbm_init/src/lbm_init.c:50;MOV	0x18(%RSP),%RCX;(32) 
0x38ab;/users/user2207/lbm_init/src/lbm_init.c:50;CMP	%RCX,%RSI;(32) 
0x38ae;/users/user2207/lbm_init/src/lbm_init.c:50;JA	386a <setup_init_state_global_poiseuille_profile+0x12a>;(32) 
0x38b0;/users/user2207/lbm_init/src/lbm_init.c:50;JMP	387e <setup_init_state_global_poiseuille_profile+0x13e>;
0x38b2;/users/user2207/lbm_init/src/lbm_init.c:67;CALL	1230 <.plt.sec@start+0x60>;
0x38b7;:0;NOPW	(%RAX,%RAX,1);
