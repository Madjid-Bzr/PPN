address;source_location;insn;indent
0x4275;:0;MOV	0x60c9(%RIP),%EAX;
0x427b;:0;TEST	%EAX,%EAX;
0x427d;:0;JNE	4298 <time_scatter+0x5c>;
0x427f;:0;MOV	0x60c7(%RIP),%EAX;
0x4285;:0;TEST	%EAX,%EAX;
0x4287;:0;JE	429f <time_scatter+0x63>;
0x4289;:0;MOV	-0x18(%RBP),%RAX;
0x428d;:0;MOV	0x8(%RAX),%EAX;
0x4290;:0;SUB	$0x1,%EAX;
0x4293;:0;CMP	%EAX,-0x8(%RBP);
0x4296;:0;JNE	429f <time_scatter+0x63>;
0x4298;:0;MOV	$0x1,%EAX;
0x429d;:0;JMP	42a4 <time_scatter+0x68>;
0x429f;:0;MOV	$0,%EAX;
0x42a4;:0;MOV	%EAX,-0x4(%RBP);
0x42a7;:0;CMPL	$0,-0x4(%RBP);
0x42ab;:0;JE	42c9 <time_scatter+0x8d>;
0x42ad;:0;MOV	-0x18(%RBP),%RAX;
0x42b1;:0;MOV	0x18(%RAX),%EAX;
0x42b4;:0;MOV	%EAX,%EDI;
0x42b6;:0;CALL	307e <init_sbuffer>;
0x42bb;:0;MOV	-0x18(%RBP),%RAX;
0x42bf;:0;MOV	0x18(%RAX),%EAX;
0x42c2;:0;MOV	%EAX,%EDI;
0x42c4;:0;CALL	30df <init_rbuffer>;
0x42c9;:0;MOV	-0x18(%RBP),%RAX;
0x42cd;:0;MOV	0x10(%RAX),%R8;
0x42d1;:0;MOV	-0x18(%RBP),%RAX;
0x42d5;:0;MOV	0xc(%RAX),%EDI;
0x42d8;:0;MOV	-0x18(%RBP),%RAX;
0x42dc;:0;MOV	0x28(%RAX),%R9;
0x42e0;:0;MOV	-0x18(%RBP),%RAX;
0x42e4;:0;MOV	0x20(%RAX),%R10D;
0x42e8;:0;MOV	0x6031(%RIP),%RCX;
0x42ef;:0;MOV	-0x18(%RBP),%RAX;
0x42f3;:0;MOV	0x28(%RAX),%RDX;
0x42f7;:0;MOV	-0x18(%RBP),%RAX;
0x42fb;:0;MOV	0x20(%RAX),%ESI;
0x42fe;:0;MOV	0x604b(%RIP),%RAX;
0x4305;:0;PUSH	%R8;
0x4307;:0;PUSH	%RDI;
0x4308;:0;MOV	%R10D,%R8D;
0x430b;:0;MOV	%RAX,%RDI;
0x430e;:0;CALL	24c0 <.plt.sec@start+0x200>;
0x4313;:0;ADD	$0x10,%RSP;
0x4317;:0;MOV	-0x18(%RBP),%RAX;
0x431b;:0;MOV	0x10(%RAX),%RAX;
0x431f;:0;MOV	%RAX,%RDI;
0x4322;:0;CALL	22c0 <.plt.sec@start>;
0x4327;:0;CMPL	$0,-0x4(%RBP);
0x432b;:0;JE	4378 <time_scatter+0x13c>;
0x432d;:0;MOV	-0x18(%RBP),%RAX;
0x4331;:0;MOV	0x18(%RAX),%EAX;
0x4334;:0;MOV	%EAX,%EDI;
0x4336;:0;CALL	310c <check_sbuffer>;
0x433b;:0;MOV	-0x18(%RBP),%RAX;
0x433f;:0;MOV	(%RAX),%RSI;
0x4342;:0;MOV	-0x18(%RBP),%RAX;
0x4346;:0;MOV	0x18(%RAX),%EAX;
0x4349;:0;MOVSXD	%EAX,%RDX;
0x434c;:0;MOV	-0x18(%RBP),%RAX;
0x4350;:0;MOV	(%RAX),%RAX;
0x4353;:0;MOV	%RDX,%RCX;
0x4356;:0;IMUL	%RAX,%RCX;
0x435a;:0;MOV	-0x18(%RBP),%RAX;
0x435e;:0;MOV	0xc(%RAX),%EDX;
0x4361;:0;MOV	0x5fb8(%RIP),%RAX;
0x4368;:0;MOV	%RSI,%R8;
0x436b;:0;MOV	$0,%ESI;
0x4370;:0;MOV	%RAX,%RDI;
0x4373;:0;CALL	319e <check_rbuffer>;
0x4378;:0;ADDL	$0x1,-0x8(%RBP);
0x437c;:0;MOV	-0x18(%RBP),%RAX;
0x4380;:0;MOV	0x8(%RAX),%EAX;
0x4383;:0;CMP	%EAX,-0x8(%RBP);
0x4386;:0;JL	4275 <time_scatter+0x39>;
