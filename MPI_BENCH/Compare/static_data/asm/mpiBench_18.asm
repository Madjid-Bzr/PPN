address;source_location;insn;indent
0x3c29;:0;MOV	0x6715(%RIP),%EAX;
0x3c2f;:0;TEST	%EAX,%EAX;
0x3c31;:0;JNE	3c4c <time_allgatherv+0x136>;
0x3c33;:0;MOV	0x6713(%RIP),%EAX;
0x3c39;:0;TEST	%EAX,%EAX;
0x3c3b;:0;JE	3c53 <time_allgatherv+0x13d>;
0x3c3d;:0;MOV	-0x38(%RBP),%RAX;
0x3c41;:0;MOV	0x8(%RAX),%EAX;
0x3c44;:0;SUB	$0x1,%EAX;
0x3c47;:0;CMP	%EAX,-0x24(%RBP);
0x3c4a;:0;JNE	3c53 <time_allgatherv+0x13d>;
0x3c4c;:0;MOV	$0x1,%EAX;
0x3c51;:0;JMP	3c58 <time_allgatherv+0x142>;
0x3c53;:0;MOV	$0,%EAX;
0x3c58;:0;MOV	%EAX,-0x10(%RBP);
0x3c5b;:0;CMPL	$0,-0x10(%RBP);
0x3c5f;:0;JE	3c7d <time_allgatherv+0x167>;
0x3c61;:0;MOV	-0x38(%RBP),%RAX;
0x3c65;:0;MOV	0x18(%RAX),%EAX;
0x3c68;:0;MOV	%EAX,%EDI;
0x3c6a;:0;CALL	307e <init_sbuffer>;
0x3c6f;:0;MOV	-0x38(%RBP),%RAX;
0x3c73;:0;MOV	0x18(%RAX),%EAX;
0x3c76;:0;MOV	%EAX,%EDI;
0x3c78;:0;CALL	30df <init_rbuffer>;
0x3c7d;:0;MOV	-0x38(%RBP),%RAX;
0x3c81;:0;MOV	0x10(%RAX),%R8;
0x3c85;:0;MOV	-0x38(%RBP),%RAX;
0x3c89;:0;MOV	0x28(%RAX),%RDI;
0x3c8d;:0;MOV	0x66a4(%RIP),%R9;
0x3c94;:0;MOV	0x668d(%RIP),%R10;
0x3c9b;:0;MOV	0x667e(%RIP),%RCX;
0x3ca2;:0;MOV	-0x38(%RBP),%RAX;
0x3ca6;:0;MOV	0x28(%RAX),%RDX;
0x3caa;:0;MOV	0x669f(%RIP),%RAX;
0x3cb1;:0;MOV	-0x14(%RBP),%ESI;
0x3cb4;:0;PUSH	%R8;
0x3cb6;:0;PUSH	%RDI;
0x3cb7;:0;MOV	%R10,%R8;
0x3cba;:0;MOV	%RAX,%RDI;
0x3cbd;:0;CALL	2510 <.plt.sec@start+0x250>;
0x3cc2;:0;ADD	$0x10,%RSP;
0x3cc6;:0;MOV	-0x38(%RBP),%RAX;
0x3cca;:0;MOV	0x10(%RAX),%RAX;
0x3cce;:0;MOV	%RAX,%RDI;
0x3cd1;:0;CALL	22c0 <.plt.sec@start>;
0x3cd6;:0;CMPL	$0,-0x10(%RBP);
0x3cda;:0;JE	3d61 <time_allgatherv+0x24b>;
0x3ce0;:0;MOV	-0x38(%RBP),%RAX;
0x3ce4;:0;MOV	0x18(%RAX),%EAX;
0x3ce7;:0;MOV	%EAX,%EDI;
0x3ce9;:0;CALL	310c <check_sbuffer>;
0x3cee;:0;MOVL	$0,-0x20(%RBP);
0x3cf5;:0;JMP	3d55 <time_allgatherv+0x23f>;
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
0x3d61;:0;ADDL	$0x1,-0x24(%RBP);
0x3d65;:0;MOV	-0x38(%RBP),%RAX;
0x3d69;:0;MOV	0x8(%RAX),%EAX;
0x3d6c;:0;CMP	%EAX,-0x24(%RBP);
0x3d6f;:0;JL	3c29 <time_allgatherv+0x113>;
