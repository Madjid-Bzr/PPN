address;source_location;insn;indent
0x3df4;:0;MOV	0x654a(%RIP),%EAX;
0x3dfa;:0;TEST	%EAX,%EAX;
0x3dfc;:0;JNE	3e17 <time_gather+0x5c>;
0x3dfe;:0;MOV	0x6548(%RIP),%EAX;
0x3e04;:0;TEST	%EAX,%EAX;
0x3e06;:0;JE	3e1e <time_gather+0x63>;
0x3e08;:0;MOV	-0x18(%RBP),%RAX;
0x3e0c;:0;MOV	0x8(%RAX),%EAX;
0x3e0f;:0;SUB	$0x1,%EAX;
0x3e12;:0;CMP	%EAX,-0xc(%RBP);
0x3e15;:0;JNE	3e1e <time_gather+0x63>;
0x3e17;:0;MOV	$0x1,%EAX;
0x3e1c;:0;JMP	3e23 <time_gather+0x68>;
0x3e1e;:0;MOV	$0,%EAX;
0x3e23;:0;MOV	%EAX,-0x4(%RBP);
0x3e26;:0;CMPL	$0,-0x4(%RBP);
0x3e2a;:0;JE	3e48 <time_gather+0x8d>;
0x3e2c;:0;MOV	-0x18(%RBP),%RAX;
0x3e30;:0;MOV	0x18(%RAX),%EAX;
0x3e33;:0;MOV	%EAX,%EDI;
0x3e35;:0;CALL	307e <init_sbuffer>;
0x3e3a;:0;MOV	-0x18(%RBP),%RAX;
0x3e3e;:0;MOV	0x18(%RAX),%EAX;
0x3e41;:0;MOV	%EAX,%EDI;
0x3e43;:0;CALL	30df <init_rbuffer>;
0x3e48;:0;MOV	-0x18(%RBP),%RAX;
0x3e4c;:0;MOV	0x10(%RAX),%R8;
0x3e50;:0;MOV	-0x18(%RBP),%RAX;
0x3e54;:0;MOV	0xc(%RAX),%EDI;
0x3e57;:0;MOV	-0x18(%RBP),%RAX;
0x3e5b;:0;MOV	0x28(%RAX),%R9;
0x3e5f;:0;MOV	-0x18(%RBP),%RAX;
0x3e63;:0;MOV	0x20(%RAX),%R10D;
0x3e67;:0;MOV	0x64b2(%RIP),%RCX;
0x3e6e;:0;MOV	-0x18(%RBP),%RAX;
0x3e72;:0;MOV	0x28(%RAX),%RDX;
0x3e76;:0;MOV	-0x18(%RBP),%RAX;
0x3e7a;:0;MOV	0x20(%RAX),%ESI;
0x3e7d;:0;MOV	0x64cc(%RIP),%RAX;
0x3e84;:0;PUSH	%R8;
0x3e86;:0;PUSH	%RDI;
0x3e87;:0;MOV	%R10D,%R8D;
0x3e8a;:0;MOV	%RAX,%RDI;
0x3e8d;:0;CALL	2420 <.plt.sec@start+0x160>;
0x3e92;:0;ADD	$0x10,%RSP;
0x3e96;:0;MOV	-0x18(%RBP),%RAX;
0x3e9a;:0;MOV	0x10(%RAX),%RAX;
0x3e9e;:0;MOV	%RAX,%RDI;
0x3ea1;:0;CALL	22c0 <.plt.sec@start>;
0x3ea6;:0;CMPL	$0,-0x4(%RBP);
0x3eaa;:0;JE	3f1a <time_gather+0x15f>;
0x3eac;:0;MOV	-0x18(%RBP),%RAX;
0x3eb0;:0;MOV	0x18(%RAX),%EAX;
0x3eb3;:0;MOV	%EAX,%EDI;
0x3eb5;:0;CALL	310c <check_sbuffer>;
0x3eba;:0;MOV	-0x18(%RBP),%RAX;
0x3ebe;:0;MOV	0x18(%RAX),%EDX;
0x3ec1;:0;MOV	-0x18(%RBP),%RAX;
0x3ec5;:0;MOV	0xc(%RAX),%EAX;
0x3ec8;:0;CMP	%EAX,%EDX;
0x3eca;:0;JNE	3f1a <time_gather+0x15f>;
0x3ecc;:0;MOVL	$0,-0x8(%RBP);
0x3ed3;:0;JMP	3f0e <time_gather+0x153>;
0x3ed5;:0;MOV	-0x18(%RBP),%RAX;  (21) 
0x3ed9;:0;MOV	(%RAX),%RCX;  (21) 
0x3edc;:0;MOV	-0x8(%RBP),%EAX;  (21) 
0x3edf;:0;MOVSXD	%EAX,%RDX;  (21) 
0x3ee2;:0;MOV	-0x18(%RBP),%RAX;  (21) 
0x3ee6;:0;MOV	(%RAX),%RAX;  (21) 
0x3ee9;:0;MOV	%RDX,%RSI;  (21) 
0x3eec;:0;IMUL	%RAX,%RSI;  (21) 
0x3ef0;:0;MOV	0x6429(%RIP),%RAX;  (21) 
0x3ef7;:0;MOV	-0x8(%RBP),%EDX;  (21) 
0x3efa;:0;MOV	%RCX,%R8;  (21) 
0x3efd;:0;MOV	$0,%ECX;  (21) 
0x3f02;:0;MOV	%RAX,%RDI;  (21) 
0x3f05;:0;CALL	319e <check_rbuffer>;  (21) 
0x3f0a;:0;ADDL	$0x1,-0x8(%RBP);  (21) 
0x3f0e;:0;MOV	-0x18(%RBP),%RAX;  (21) 
0x3f12;:0;MOV	0x1c(%RAX),%EAX;  (21) 
0x3f15;:0;CMP	%EAX,-0x8(%RBP);  (21) 
0x3f18;:0;JL	3ed5 <time_gather+0x11a>;  (21) 
0x3f1a;:0;ADDL	$0x1,-0xc(%RBP);
0x3f1e;:0;MOV	-0x18(%RBP),%RAX;
0x3f22;:0;MOV	0x8(%RAX),%EAX;
0x3f25;:0;CMP	%EAX,-0xc(%RBP);
0x3f28;:0;JL	3df4 <time_gather+0x39>;
