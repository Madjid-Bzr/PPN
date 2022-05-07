address;source_location;insn;indent
0x4ef0;/users/user2207/lbm_init/src/main.c:77;ENDBR64;
0x4ef4;/users/user2207/lbm_init/src/main.c:77;PUSH	%R15;
0x4ef6;/users/user2207/lbm_init/src/main.c:77;PUSH	%R14;
0x4ef8;/users/user2207/lbm_init/src/main.c:77;PUSH	%R13;
0x4efa;/users/user2207/lbm_init/src/main.c:77;PUSH	%R12;
0x4efc;/users/user2207/lbm_init/src/main.c:77;PUSH	%RBP;
0x4efd;/users/user2207/lbm_init/src/main.c:77;PUSH	%RBX;
0x4efe;/users/user2207/lbm_init/src/main.c:77;LEA	-0x8000(%RSP),%R11;
0x4f06;/users/user2207/lbm_init/src/main.c:77;SUB	$0x1000,%RSP;(49) 
0x4f0d;/users/user2207/lbm_init/src/main.c:77;ORQ	$0,(%RSP);(49) 
0x4f12;/users/user2207/lbm_init/src/main.c:77;CMP	%R11,%RSP;(49) 
0x4f15;/users/user2207/lbm_init/src/main.c:77;JNE	4f06 <save_frame+0x16>;(49) 
0x4f17;/users/user2207/lbm_init/src/main.c:77;LEA	-0x48(%RSP),%RSP;
0x4f1c;/users/user2207/lbm_init/src/main.c:77;LEA	(%RSI),%R14;
0x4f1f;/users/user2207/lbm_init/src/main.c:83;MOV	0x8(%RSI),%ESI;
0x4f22;/users/user2207/lbm_init/src/main.c:77;MOV	%FS:0x28,%RAX;
0x4f2b;/users/user2207/lbm_init/src/main.c:77;MOV	%RAX,0x8038(%RSP);
0x4f33;/users/user2207/lbm_init/src/main.c:77;XOR	%EAX,%EAX;
0x4f35;/users/user2207/lbm_init/src/main.c:83;SUB	$0x1,%ESI;
0x4f38;/users/user2207/lbm_init/src/main.c:83;CMP	$0x1,%ESI;
0x4f3b;/users/user2207/lbm_init/src/main.c:83;JBE	506c <save_frame+0x17c>;
0x4f41;/users/user2207/lbm_init/src/main.c:83;MOV	0xc(%R14),%EAX;
0x4f45;/users/user2207/lbm_init/src/main.c:99;LEA	0x30(%RSP),%RDX;
0x4f4a;/users/user2207/lbm_init/src/main.c:99;LEA	(%RDI),%R13;
0x4f4d;/users/user2207/lbm_init/src/main.c:82;XOR	%R12D,%R12D;
0x4f50;/users/user2207/lbm_init/src/main.c:83;MOVQ	$0x1,0x10(%RSP);
0x4f59;/users/user2207/lbm_init/src/main.c:83;LEA	0x20(%RSP),%RBX;
0x4f5e;/users/user2207/lbm_init/src/main.c:99;MOV	%RDX,0x18(%RSP);
0x4f63;/users/user2207/lbm_init/src/main.c:99;LEA	(%RAX),%ECX;
0x4f65;/users/user2207/lbm_init/src/main.c:99;SUB	$0x1,%ECX;
0x4f68;/users/user2207/lbm_init/src/main.c:99;NOPL	(%RAX,%RAX,1);
0x4f70;/users/user2207/lbm_init/src/main.c:84;CMP	$0x1,%ECX;(50) 
0x4f73;/users/user2207/lbm_init/src/main.c:84;MOV	$0x1,%R15D;(50) 
0x4f79;/users/user2207/lbm_init/src/main.c:84;MOV	0x10(%RSP),%EBP;(50) 
0x4f7d;/users/user2207/lbm_init/src/main.c:84;JBE	503a <save_frame+0x14a>;(50) 
0x4f83;/users/user2207/lbm_init/src/main.c:84;NOPW	%CS:(%RAX,%RAX,1);(50) 
0x4f8e;/users/user2207/lbm_init/src/main.c:84;XCHG	%AX,%AX;(50) 
0x4f90;/users/user2207/lbm_init/include/lbm_struct.h:130;IMUL	%EBP,%EAX;  (51) 
0x4f93;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%R15D,%EAX;  (51) 
0x4f96;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	%EAX,%ECX;  (51) 
0x4f98;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%ECX;  (51) 
0x4f9b;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%EAX,%ECX;  (51) 
0x4f9d;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	(%R14),%RAX;  (51) 
0x4fa0;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	%RCX,%RDI;  (51) 
0x4fa3;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%RDI;  (51) 
0x4fa7;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%RAX,%RDI;  (51) 
0x4faa;/users/user2207/lbm_init/src/main.c:86;CALL	3ca0 <get_cell_density>;  (51) 
0x4faf;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	0xc(%R14),%EAX;  (51) 
0x4fb3;/users/user2207/lbm_init/src/main.c:88;LEA	(%RBX),%RDI;  (51) 
0x4fb6;/users/user2207/lbm_init/src/main.c:88;VMOVSD	%XMM0,0x8(%RSP);  (51) 
0x4fbc;/users/user2207/lbm_init/include/lbm_struct.h:130;IMUL	%EBP,%EAX;  (51) 
0x4fbf;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%R15D,%EAX;  (51) 
0x4fc2;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	%EAX,%ECX;  (51) 
0x4fc4;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%ECX;  (51) 
0x4fc7;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%EAX,%ECX;  (51) 
0x4fc9;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	(%R14),%RAX;  (51) 
0x4fcc;/users/user2207/lbm_init/include/lbm_struct.h:130;MOV	%RCX,%RSI;  (51) 
0x4fcf;/users/user2207/lbm_init/include/lbm_struct.h:130;SAL	$0x3,%RSI;  (51) 
0x4fd3;/users/user2207/lbm_init/include/lbm_struct.h:130;ADD	%RAX,%RSI;  (51) 
0x4fd6;/users/user2207/lbm_init/src/main.c:88;CALL	3ce0 <get_cell_velocity>;  (51) 
0x4fdb;/users/user2207/lbm_init/src/main.c:89;LEA	(%RBX),%RSI;  (51) 
0x4fde;/users/user2207/lbm_init/src/main.c:89;LEA	(%RBX),%RDI;  (51) 
0x4fe1;/users/user2207/lbm_init/src/main.c:89;CALL	3c80 <get_vect_norm_2>;  (51) 
0x4fe6;/users/user2207/lbm_init/src/main.c:89;VSQRTSD	%XMM0,%XMM0,%XMM0;  (51) 
0x4fea;/users/user2207/lbm_init/src/main.c:92;VMOVSD	0x8(%RSP),%XMM1;  (51) 
0x4ff0;/users/user2207/lbm_init/src/main.c:92;VCVTSD2SS	%XMM1,%XMM1,%XMM1;  (51) 
0x4ff4;/users/user2207/lbm_init/src/main.c:93;VCVTSD2SS	%XMM0,%XMM0,%XMM0;  (51) 
0x4ff8;/users/user2207/lbm_init/src/main.c:92;VMOVSS	%XMM1,0x34(%RSP,%R12,8);  (51) 
0x4fff;/users/user2207/lbm_init/src/main.c:93;VMOVSS	%XMM0,0x30(%RSP,%R12,8);  (51) 
0x5006;/users/user2207/lbm_init/src/main.c:94;LEA	0x1(%R12),%R12;  (51) 
0x500b;/users/user2207/lbm_init/src/main.c:95;CMP	$0x1000,%R12;  (51) 
0x5012;/users/user2207/lbm_init/src/main.c:95;JA	50d1 <save_frame+0x1e1>;  (51) 
0x5018;/users/user2207/lbm_init/src/main.c:98;JE	5098 <save_frame+0x1a8>;  (51) 
0x501a;/users/user2207/lbm_init/src/main.c:84;MOV	0xc(%R14),%EAX;  (51) 
0x501e;/users/user2207/lbm_init/src/main.c:84;LEA	0x1(%R15),%R15;  (51) 
0x5022;/users/user2207/lbm_init/src/main.c:84;MOV	%EAX,%ESI;  (51) 
0x5024;/users/user2207/lbm_init/src/main.c:84;SUB	$0x1,%ESI;  (51) 
0x5027;/users/user2207/lbm_init/src/main.c:84;CMP	%R15,%RSI;  (51) 
0x502a;/users/user2207/lbm_init/src/main.c:84;MOV	%RSI,%RCX;  (51) 
0x502d;/users/user2207/lbm_init/src/main.c:84;JA	4f90 <save_frame+0xa0>;  (51) 
0x5033;/users/user2207/lbm_init/src/main.c:84;MOV	0x8(%R14),%ESI;(50) 
0x5037;/users/user2207/lbm_init/src/main.c:84;SUB	$0x1,%ESI;(50) 
0x503a;/users/user2207/lbm_init/src/main.c:83;ADDQ	$0x1,0x10(%RSP);(50) 
0x5040;/users/user2207/lbm_init/src/main.c:83;MOV	%ESI,%EDI;(50) 
0x5042;/users/user2207/lbm_init/src/main.c:83;MOV	0x10(%RSP),%RDX;(50) 
0x5047;/users/user2207/lbm_init/src/main.c:83;CMP	%RDX,%RDI;(50) 
0x504a;/users/user2207/lbm_init/src/main.c:83;JA	4f70 <save_frame+0x80>;(50) 
0x5050;/users/user2207/lbm_init/src/main.c:106;TEST	%R12,%R12;
0x5053;/users/user2207/lbm_init/src/main.c:106;JE	506c <save_frame+0x17c>;
0x5055;/users/user2207/lbm_init/src/main.c:107;LEA	0x30(%RSP),%RDI;
0x505a;/users/user2207/lbm_init/src/main.c:107;LEA	(%R13),%RCX;
0x505e;/users/user2207/lbm_init/src/main.c:107;LEA	(%R12),%RDX;
0x5062;/users/user2207/lbm_init/src/main.c:107;MOV	$0x8,%ESI;
0x5067;/users/user2207/lbm_init/src/main.c:107;CALL	1310 <.plt.sec@start+0x140>;
0x506c;/users/user2207/lbm_init/src/main.c:109;MOV	0x8038(%RSP),%RAX;
0x5074;/users/user2207/lbm_init/src/main.c:109;XOR	%FS:0x28,%RAX;
0x507d;/users/user2207/lbm_init/src/main.c:109;JNE	50f0 <save_frame+0x200>;
0x507f;/users/user2207/lbm_init/src/main.c:109;LEA	0x8048(%RSP),%RSP;
0x5087;/users/user2207/lbm_init/src/main.c:109;POP	%RBX;
0x5088;/users/user2207/lbm_init/src/main.c:109;POP	%RBP;
0x5089;/users/user2207/lbm_init/src/main.c:109;POP	%R12;
0x508b;/users/user2207/lbm_init/src/main.c:109;POP	%R13;
0x508d;/users/user2207/lbm_init/src/main.c:109;POP	%R14;
0x508f;/users/user2207/lbm_init/src/main.c:109;POP	%R15;
0x5091;/users/user2207/lbm_init/src/main.c:109;RET;
0x5092;/users/user2207/lbm_init/src/main.c:109;NOPW	(%RAX,%RAX,1);
0x5098;/users/user2207/lbm_init/src/main.c:99;MOV	0x18(%RSP),%RDI;  (51) 
0x509d;/users/user2207/lbm_init/src/main.c:99;LEA	(%R13),%RCX;  (51) 
0x50a1;/users/user2207/lbm_init/src/main.c:99;MOV	$0x1000,%EDX;  (51) 
0x50a6;/users/user2207/lbm_init/src/main.c:99;MOV	$0x8,%ESI;  (51) 
0x50ab;/users/user2207/lbm_init/src/main.c:84;LEA	0x1(%R15),%R15;  (51) 
0x50af;/users/user2207/lbm_init/src/main.c:100;XOR	%R12D,%R12D;  (51) 
0x50b2;/users/user2207/lbm_init/src/main.c:99;CALL	1310 <.plt.sec@start+0x140>;  (51) 
0x50b7;/users/user2207/lbm_init/src/main.c:84;MOV	0xc(%R14),%EAX;  (51) 
0x50bb;/users/user2207/lbm_init/src/main.c:84;MOV	%EAX,%EDX;  (51) 
0x50bd;/users/user2207/lbm_init/src/main.c:84;SUB	$0x1,%EDX;  (51) 
0x50c0;/users/user2207/lbm_init/src/main.c:84;CMP	%R15,%RDX;  (51) 
0x50c3;/users/user2207/lbm_init/src/main.c:84;MOV	%RDX,%RCX;  (51) 
0x50c6;/users/user2207/lbm_init/src/main.c:84;JA	4f90 <save_frame+0xa0>;  (51) 
0x50cc;/users/user2207/lbm_init/src/main.c:84;JMP	5033 <save_frame+0x143>;(50) 
0x50d1;/users/user2207/lbm_init/src/main.c:95;LEA	0x18e8(%RIP),%RCX;
0x50d8;/users/user2207/lbm_init/src/main.c:95;MOV	$0x5f,%EDX;
0x50dd;/users/user2207/lbm_init/src/main.c:95;LEA	0x17b5(%RIP),%RSI;
0x50e4;/users/user2207/lbm_init/src/main.c:95;LEA	0x17b9(%RIP),%RDI;
0x50eb;/users/user2207/lbm_init/src/main.c:95;CALL	1240 <.plt.sec@start+0x70>;
0x50f0;/users/user2207/lbm_init/src/main.c:109;CALL	1230 <.plt.sec@start+0x60>;
0x50f5;:0;NOPW	%CS:(%RAX,%RAX,1);
0x50ff;:0;NOP;
