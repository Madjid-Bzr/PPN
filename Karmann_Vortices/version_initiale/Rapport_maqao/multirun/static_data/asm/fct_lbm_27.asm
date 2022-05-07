address;source_location;insn;indent
0x3b50;/users/user2207/lbm_init/src/lbm_init.c:118;ENDBR64;
0x3b54;/users/user2207/lbm_init/src/lbm_init.c:118;PUSH	%R12;
0x3b56;/users/user2207/lbm_init/src/lbm_init.c:118;LEA	(%RSI),%R12;
0x3b59;/users/user2207/lbm_init/src/lbm_init.c:118;PUSH	%RBP;
0x3b5a;/users/user2207/lbm_init/src/lbm_init.c:118;LEA	(%RDX),%RBP;
0x3b5d;/users/user2207/lbm_init/src/lbm_init.c:118;PUSH	%RBX;
0x3b5e;/users/user2207/lbm_init/src/lbm_init.c:118;LEA	(%RDI),%RBX;
0x3b61;/users/user2207/lbm_init/src/lbm_init.c:119;CALL	3740 <setup_init_state_global_poiseuille_profile>;
0x3b66;/users/user2207/lbm_init/src/lbm_init.c:120;LEA	(%R12),%RSI;
0x3b6a;/users/user2207/lbm_init/src/lbm_init.c:120;MOV	%RBP,%RDX;
0x3b6d;/users/user2207/lbm_init/src/lbm_init.c:120;MOV	%RBX,%RDI;
0x3b70;/users/user2207/lbm_init/src/lbm_init.c:120;CALL	38c0 <setup_init_state_border>;
0x3b75;/users/user2207/lbm_init/src/lbm_init.c:25;MOV	(%RBP),%ESI;
0x3b78;/users/user2207/lbm_init/src/lbm_init.c:25;MOV	0x8(%RBX),%R8D;
0x3b7c;/users/user2207/lbm_init/src/lbm_init.c:25;ADD	%ESI,%R8D;
0x3b7f;/users/user2207/lbm_init/src/lbm_init.c:25;CMP	%ESI,%R8D;
0x3b82;/users/user2207/lbm_init/src/lbm_init.c:25;JBE	3c2d <setup_init_state+0xdd>;
0x3b88;/users/user2207/lbm_init/src/lbm_init.c:28;VMOVSD	0x54f0(%RIP),%XMM0;
0x3b90;/users/user2207/lbm_init/src/lbm_init.c:28;LEA	(%RSI),%RDX;
0x3b93;/users/user2207/lbm_init/src/lbm_init.c:28;VMULSD	%XMM0,%XMM0,%XMM2;
0x3b97;/users/user2207/lbm_init/src/lbm_init.c:28;MOV	0x4(%RBP),%ECX;
0x3b9a;/users/user2207/lbm_init/src/lbm_init.c:28;MOV	0xc(%RBX),%EDI;
0x3b9d;/users/user2207/lbm_init/src/lbm_init.c:27;VMOVSD	0x54cb(%RIP),%XMM4;
0x3ba5;/users/user2207/lbm_init/src/lbm_init.c:27;VMOVSD	0x54cb(%RIP),%XMM3;
0x3bad;/users/user2207/lbm_init/src/lbm_init.c:27;ADD	%ECX,%EDI;
0x3baf;/users/user2207/lbm_init/src/lbm_init.c:27;NOP;
0x3bb0;/users/user2207/lbm_init/src/lbm_init.c:26;CMP	%ECX,%EDI;(41) 
0x3bb2;/users/user2207/lbm_init/src/lbm_init.c:26;LEA	(%RCX),%EAX;(41) 
0x3bb4;/users/user2207/lbm_init/src/lbm_init.c:26;JBE	3c21 <setup_init_state+0xd1>;(41) 
0x3bb6;/users/user2207/lbm_init/src/lbm_init.c:27;VCVTSI2SD	%RSI,%XMM0,%XMM0;(41) 
0x3bbb;/users/user2207/lbm_init/src/lbm_init.c:27;VSUBSD	%XMM4,%XMM0,%XMM0;(41) 
0x3bbf;/users/user2207/lbm_init/src/lbm_init.c:27;VMULSD	%XMM0,%XMM0,%XMM0;(41) 
0x3bc3;/users/user2207/lbm_init/src/lbm_init.c:27;NOPW	%CS:(%RAX,%RAX,1);(41) 
0x3bce;/users/user2207/lbm_init/src/lbm_init.c:27;XCHG	%AX,%AX;(41) 
0x3bd0;/users/user2207/lbm_init/src/lbm_init.c:27;VCVTSI2SD	%RAX,%XMM1,%XMM1;  (42) 
0x3bd5;/users/user2207/lbm_init/src/lbm_init.c:27;VSUBSD	%XMM3,%XMM1,%XMM1;  (42) 
0x3bd9;/users/user2207/lbm_init/src/lbm_init.c:27;VFMADD132SD	%XMM1,%XMM0,%XMM1;  (42) 
0x3bde;/users/user2207/lbm_init/src/lbm_init.c:27;VCOMISD	%XMM1,%XMM2;  (42) 
0x3be2;/users/user2207/lbm_init/src/lbm_init.c:27;JB	3c38 <setup_init_state+0xe8>;  (42) 
0x3be4;/users/user2207/lbm_init/src/lbm_init.c:30;LEA	(%RSI),%EDI;  (42) 
0x3be6;/users/user2207/lbm_init/src/lbm_init.c:30;SUB	%EDX,%EDI;  (42) 
0x3be8;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;MOV	0xc(%R12),%EDX;  (42) 
0x3bed;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;IMUL	%EDI,%EDX;  (42) 
0x3bf0;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;LEA	(%RAX),%EDI;  (42) 
0x3bf2;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;SUB	%ECX,%EDI;  (42) 
0x3bf4;/users/user2207/lbm_init/src/lbm_init.c:26;LEA	0x1(%RAX),%RAX;  (42) 
0x3bf8;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;MOV	%EDI,%ECX;  (42) 
0x3bfa;/users/user2207/lbm_init/src/../include/lbm_struct.h:148;ADD	%EDX,%ECX;  (42) 
0x3bfc;/users/user2207/lbm_init/src/lbm_init.c:30;MOV	(%R12),%RDX;  (42) 
0x3c00;/users/user2207/lbm_init/src/lbm_init.c:30;MOVL	$0x1,(%RDX,%RCX,4);  (42) 
0x3c07;/users/user2207/lbm_init/src/lbm_init.c:30;MOV	0x4(%RBP),%ECX;  (42) 
0x3c0a;/users/user2207/lbm_init/src/lbm_init.c:26;MOV	0xc(%RBX),%EDI;  (42) 
0x3c0d;/users/user2207/lbm_init/src/lbm_init.c:26;MOV	(%RBP),%EDX;  (42) 
0x3c10;/users/user2207/lbm_init/src/lbm_init.c:26;ADD	%ECX,%EDI;  (42) 
0x3c12;/users/user2207/lbm_init/src/lbm_init.c:26;MOV	%EDI,%R8D;  (42) 
0x3c15;/users/user2207/lbm_init/src/lbm_init.c:26;CMP	%R8,%RAX;  (42) 
0x3c18;/users/user2207/lbm_init/src/lbm_init.c:26;JB	3bd0 <setup_init_state+0x80>;  (42) 
0x3c1a;/users/user2207/lbm_init/src/lbm_init.c:26;MOV	0x8(%RBX),%R8D;(41) 
0x3c1e;/users/user2207/lbm_init/src/lbm_init.c:26;ADD	%EDX,%R8D;(41) 
0x3c21;/users/user2207/lbm_init/src/lbm_init.c:25;LEA	0x1(%RSI),%RSI;(41) 
0x3c25;/users/user2207/lbm_init/src/lbm_init.c:25;MOV	%R8D,%EAX;(41) 
0x3c28;/users/user2207/lbm_init/src/lbm_init.c:25;CMP	%RAX,%RSI;(41) 
0x3c2b;/users/user2207/lbm_init/src/lbm_init.c:25;JB	3bb0 <setup_init_state+0x60>;(41) 
0x3c2d;/users/user2207/lbm_init/src/lbm_init.c:122;POP	%RBX;
0x3c2e;/users/user2207/lbm_init/src/lbm_init.c:122;POP	%RBP;
0x3c2f;/users/user2207/lbm_init/src/lbm_init.c:122;POP	%R12;
0x3c31;/users/user2207/lbm_init/src/lbm_init.c:122;RET;
0x3c32;/users/user2207/lbm_init/src/lbm_init.c:122;NOPW	(%RAX,%RAX,1);
0x3c38;/users/user2207/lbm_init/src/lbm_init.c:26;LEA	0x1(%RAX),%RAX;  (42) 
0x3c3c;/users/user2207/lbm_init/src/lbm_init.c:26;LEA	(%RDI),%R8D;  (42) 
0x3c3f;/users/user2207/lbm_init/src/lbm_init.c:26;CMP	%RAX,%R8;  (42) 
0x3c42;/users/user2207/lbm_init/src/lbm_init.c:26;JA	3bd0 <setup_init_state+0x80>;  (42) 
0x3c44;/users/user2207/lbm_init/src/lbm_init.c:26;JMP	3c1a <setup_init_state+0xca>;(41) 
0x3c46;:0;NOPW	%CS:(%RAX,%RAX,1);
