address;source_location;insn;indent
0x3b16;:0;ENDBR64;
0x3b1a;:0;PUSH	%RBP;
0x3b1b;:0;MOV	%RSP,%RBP;
0x3b1e;:0;SUB	$0x40,%RSP;
0x3b22;:0;MOV	%RDI,-0x38(%RBP);
0x3b26;:0;MOVL	$0,-0x1c(%RBP);
0x3b2d;:0;MOV	-0x38(%RBP),%RAX;
0x3b31;:0;MOV	0x20(%RAX),%EAX;
0x3b34;:0;MOV	-0x38(%RBP),%RDX;
0x3b38;:0;MOV	0x1c(%RDX),%ESI;
0x3b3b;:0;CLTD;
0x3b3c;:0;IDIV	%ESI;
0x3b3e;:0;MOV	%EAX,-0x18(%RBP);
0x3b41;:0;CMPL	$0,-0x18(%RBP);
0x3b45;:0;JNE	3b4e <time_allgatherv+0x38>;
0x3b47;:0;MOVL	$0x1,-0x18(%RBP);
0x3b4e;:0;MOVL	$0,-0x24(%RBP);
0x3b55;:0;JMP	3baa <time_allgatherv+0x94>;
0x3b57;:0;MOV	-0x24(%RBP),%EAX;(17) 
0x3b5a;:0;IMUL	-0x18(%RBP),%EAX;(17) 
0x3b5e;:0;MOV	-0x38(%RBP),%RDX;(17) 
0x3b62;:0;MOV	0x20(%RDX),%EDX;(17) 
0x3b65;:0;LEA	0x1(%RDX),%ECX;(17) 
0x3b68;:0;CLTD;(17) 
0x3b69;:0;IDIV	%ECX;(17) 
0x3b6b;:0;MOV	%EDX,-0xc(%RBP);(17) 
0x3b6e;:0;MOV	0x67b3(%RIP),%RAX;(17) 
0x3b75;:0;MOV	-0x24(%RBP),%EDX;(17) 
0x3b78;:0;MOVSXD	%EDX,%RDX;(17) 
0x3b7b;:0;SAL	$0x2,%RDX;(17) 
0x3b7f;:0;ADD	%RAX,%RDX;(17) 
0x3b82;:0;MOV	-0xc(%RBP),%EAX;(17) 
0x3b85;:0;MOV	%EAX,(%RDX);(17) 
0x3b87;:0;MOV	0x67aa(%RIP),%RAX;(17) 
0x3b8e;:0;MOV	-0x24(%RBP),%EDX;(17) 
0x3b91;:0;MOVSXD	%EDX,%RDX;(17) 
0x3b94;:0;SAL	$0x2,%RDX;(17) 
0x3b98;:0;ADD	%RAX,%RDX;(17) 
0x3b9b;:0;MOV	-0x1c(%RBP),%EAX;(17) 
0x3b9e;:0;MOV	%EAX,(%RDX);(17) 
0x3ba0;:0;MOV	-0xc(%RBP),%EAX;(17) 
0x3ba3;:0;ADD	%EAX,-0x1c(%RBP);(17) 
0x3ba6;:0;ADDL	$0x1,-0x24(%RBP);(17) 
0x3baa;:0;MOV	-0x38(%RBP),%RAX;(17) 
0x3bae;:0;MOV	0x1c(%RAX),%EAX;(17) 
0x3bb1;:0;CMP	%EAX,-0x24(%RBP);(17) 
0x3bb4;:0;JL	3b57 <time_allgatherv+0x41>;(17) 
0x3bb6;:0;MOV	-0x38(%RBP),%RAX;
0x3bba;:0;MOV	0x20(%RAX),%EAX;
0x3bbd;:0;TEST	%EAX,%EAX;
0x3bbf;:0;JLE	3bdc <time_allgatherv+0xc6>;
0x3bc1;:0;MOV	-0x38(%RBP),%RAX;
0x3bc5;:0;MOV	(%RAX),%RAX;
0x3bc8;:0;MOV	-0x38(%RBP),%RDX;
0x3bcc;:0;MOV	0x20(%RDX),%EDX;
0x3bcf;:0;MOVSXD	%EDX,%RSI;
0x3bd2;:0;MOV	$0,%EDX;
0x3bd7;:0;DIV	%RSI;
0x3bda;:0;JMP	3be1 <time_allgatherv+0xcb>;
0x3bdc;:0;MOV	$0,%EAX;
0x3be1;:0;MOV	%RAX,-0x8(%RBP);
0x3be5;:0;LEA	0x5af4(%RIP),%RDI;
0x3bec;:0;CALL	22c0 <.plt.sec@start>;
0x3bf1;:0;MOV	-0x38(%RBP),%RAX;
0x3bf5;:0;MOV	0x18(%RAX),%EAX;
0x3bf8;:0;IMUL	-0x18(%RBP),%EAX;
0x3bfc;:0;MOV	-0x38(%RBP),%RDX;
0x3c00;:0;MOV	0x20(%RDX),%EDX;
0x3c03;:0;LEA	0x1(%RDX),%ECX;
0x3c06;:0;CLTD;
0x3c07;:0;IDIV	%ECX;
0x3c09;:0;MOV	%EDX,-0x14(%RBP);
0x3c0c;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x3c11;:0;MOVQ	%XMM0,%RAX;
0x3c16;:0;MOV	%RAX,0x66fb(%RIP);
0x3c1d;:0;MOVL	$0,-0x24(%RBP);
0x3c24;:0;JMP	3d65 <time_allgatherv+0x24f>;
0x3c29;:0;MOV	0x6715(%RIP),%EAX;(18) 
0x3c2f;:0;TEST	%EAX,%EAX;(18) 
0x3c31;:0;JNE	3c4c <time_allgatherv+0x136>;(18) 
0x3c33;:0;MOV	0x6713(%RIP),%EAX;(18) 
0x3c39;:0;TEST	%EAX,%EAX;(18) 
0x3c3b;:0;JE	3c53 <time_allgatherv+0x13d>;(18) 
0x3c3d;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3c41;:0;MOV	0x8(%RAX),%EAX;(18) 
0x3c44;:0;SUB	$0x1,%EAX;(18) 
0x3c47;:0;CMP	%EAX,-0x24(%RBP);(18) 
0x3c4a;:0;JNE	3c53 <time_allgatherv+0x13d>;(18) 
0x3c4c;:0;MOV	$0x1,%EAX;(18) 
0x3c51;:0;JMP	3c58 <time_allgatherv+0x142>;(18) 
0x3c53;:0;MOV	$0,%EAX;(18) 
0x3c58;:0;MOV	%EAX,-0x10(%RBP);(18) 
0x3c5b;:0;CMPL	$0,-0x10(%RBP);(18) 
0x3c5f;:0;JE	3c7d <time_allgatherv+0x167>;(18) 
0x3c61;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3c65;:0;MOV	0x18(%RAX),%EAX;(18) 
0x3c68;:0;MOV	%EAX,%EDI;(18) 
0x3c6a;:0;CALL	307e <init_sbuffer>;(18) 
0x3c6f;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3c73;:0;MOV	0x18(%RAX),%EAX;(18) 
0x3c76;:0;MOV	%EAX,%EDI;(18) 
0x3c78;:0;CALL	30df <init_rbuffer>;(18) 
0x3c7d;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3c81;:0;MOV	0x10(%RAX),%R8;(18) 
0x3c85;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3c89;:0;MOV	0x28(%RAX),%RDI;(18) 
0x3c8d;:0;MOV	0x66a4(%RIP),%R9;(18) 
0x3c94;:0;MOV	0x668d(%RIP),%R10;(18) 
0x3c9b;:0;MOV	0x667e(%RIP),%RCX;(18) 
0x3ca2;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3ca6;:0;MOV	0x28(%RAX),%RDX;(18) 
0x3caa;:0;MOV	0x669f(%RIP),%RAX;(18) 
0x3cb1;:0;MOV	-0x14(%RBP),%ESI;(18) 
0x3cb4;:0;PUSH	%R8;(18) 
0x3cb6;:0;PUSH	%RDI;(18) 
0x3cb7;:0;MOV	%R10,%R8;(18) 
0x3cba;:0;MOV	%RAX,%RDI;(18) 
0x3cbd;:0;CALL	2510 <.plt.sec@start+0x250>;(18) 
0x3cc2;:0;ADD	$0x10,%RSP;(18) 
0x3cc6;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3cca;:0;MOV	0x10(%RAX),%RAX;(18) 
0x3cce;:0;MOV	%RAX,%RDI;(18) 
0x3cd1;:0;CALL	22c0 <.plt.sec@start>;(18) 
0x3cd6;:0;CMPL	$0,-0x10(%RBP);(18) 
0x3cda;:0;JE	3d61 <time_allgatherv+0x24b>;(18) 
0x3ce0;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3ce4;:0;MOV	0x18(%RAX),%EAX;(18) 
0x3ce7;:0;MOV	%EAX,%EDI;(18) 
0x3ce9;:0;CALL	310c <check_sbuffer>;(18) 
0x3cee;:0;MOVL	$0,-0x20(%RBP);(18) 
0x3cf5;:0;JMP	3d55 <time_allgatherv+0x23f>;(18) 
0x3cf7;:0;MOV	0x662a(%RIP),%RAX;  (19) 
0x3cfe;:0;MOV	-0x20(%RBP),%EDX;  (19) 
0x3d01;:0;MOVSXD	%EDX,%RDX;  (19) 
0x3d04;:0;SAL	$0x2,%RDX;  (19) 
0x3d08;:0;ADD	%RDX,%RAX;  (19) 
0x3d0b;:0;MOV	(%RAX),%EAX;  (19) 
0x3d0d;:0;CLTQ;  (19) 
0x3d0f;:0;IMUL	-0x8(%RBP),%RAX;  (19) 
0x3d14;:0;MOV	%RAX,%RCX;  (19) 
0x3d17;:0;MOV	0x661a(%RIP),%RAX;  (19) 
0x3d1e;:0;MOV	-0x20(%RBP),%EDX;  (19) 
0x3d21;:0;MOVSXD	%EDX,%RDX;  (19) 
0x3d24;:0;SAL	$0x2,%RDX;  (19) 
0x3d28;:0;ADD	%RDX,%RAX;  (19) 
0x3d2b;:0;MOV	(%RAX),%EAX;  (19) 
0x3d2d;:0;CLTQ;  (19) 
0x3d2f;:0;IMUL	-0x8(%RBP),%RAX;  (19) 
0x3d34;:0;MOV	%RAX,%RSI;  (19) 
0x3d37;:0;MOV	0x65e2(%RIP),%RAX;  (19) 
0x3d3e;:0;MOV	-0x20(%RBP),%EDX;  (19) 
0x3d41;:0;MOV	%RCX,%R8;  (19) 
0x3d44;:0;MOV	$0,%ECX;  (19) 
0x3d49;:0;MOV	%RAX,%RDI;  (19) 
0x3d4c;:0;CALL	319e <check_rbuffer>;  (19) 
0x3d51;:0;ADDL	$0x1,-0x20(%RBP);  (19) 
0x3d55;:0;MOV	-0x38(%RBP),%RAX;  (19) 
0x3d59;:0;MOV	0x1c(%RAX),%EAX;  (19) 
0x3d5c;:0;CMP	%EAX,-0x20(%RBP);  (19) 
0x3d5f;:0;JL	3cf7 <time_allgatherv+0x1e1>;  (19) 
0x3d61;:0;ADDL	$0x1,-0x24(%RBP);(18) 
0x3d65;:0;MOV	-0x38(%RBP),%RAX;(18) 
0x3d69;:0;MOV	0x8(%RAX),%EAX;(18) 
0x3d6c;:0;CMP	%EAX,-0x24(%RBP);(18) 
0x3d6f;:0;JL	3c29 <time_allgatherv+0x113>;(18) 
0x3d75;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x3d7a;:0;MOVQ	%XMM0,%RAX;
0x3d7f;:0;MOV	%RAX,0x658a(%RIP);
0x3d86;:0;MOVSD	0x6582(%RIP),%XMM0;
0x3d8e;:0;MOVSD	0x6582(%RIP),%XMM1;
0x3d96;:0;SUBSD	%XMM1,%XMM0;
0x3d9a;:0;MOVAPD	%XMM0,%XMM1;
0x3d9e;:0;MOVSD	0x2b12(%RIP),%XMM0;
0x3da6;:0;MULSD	%XMM1,%XMM0;
0x3daa;:0;MOV	-0x38(%RBP),%RAX;
0x3dae;:0;MOV	0x8(%RAX),%EAX;
0x3db1;:0;CVTSI2SD	%EAX,%XMM1;
0x3db5;:0;DIVSD	%XMM1,%XMM0;
0x3db9;:0;LEAVE;
0x3dba;:0;RET;
