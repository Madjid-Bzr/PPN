address;source_location;insn;indent
0x3302;:0;ENDBR64;
0x3306;:0;PUSH	%RBP;
0x3307;:0;MOV	%RSP,%RBP;
0x330a;:0;SUB	$0x20,%RSP;
0x330e;:0;MOV	%RDI,-0x18(%RBP);
0x3312;:0;MOV	-0x18(%RBP),%RAX;
0x3316;:0;MOV	0x18(%RAX),%EDX;
0x3319;:0;MOV	-0x18(%RBP),%RAX;
0x331d;:0;MOV	0xc(%RAX),%EAX;
0x3320;:0;CMP	%EAX,%EDX;
0x3322;:0;JNE	332d <time_bcast+0x2b>;
0x3324;:0;MOV	0x7025(%RIP),%RAX;
0x332b;:0;JMP	3334 <time_bcast+0x32>;
0x332d;:0;MOV	0x6fec(%RIP),%RAX;
0x3334;:0;MOV	%RAX,-0x8(%RBP);
0x3338;:0;LEA	0x63a1(%RIP),%RDI;
0x333f;:0;CALL	22c0 <.plt.sec@start>;
0x3344;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x3349;:0;MOVQ	%XMM0,%RAX;
0x334e;:0;MOV	%RAX,0x6fc3(%RIP);
0x3355;:0;MOVL	$0,-0x10(%RBP);
0x335c;:0;JMP	3431 <time_bcast+0x12f>;
0x3361;:0;MOV	0x6fdd(%RIP),%EAX;(8) 
0x3367;:0;TEST	%EAX,%EAX;(8) 
0x3369;:0;JNE	3384 <time_bcast+0x82>;(8) 
0x336b;:0;MOV	0x6fdb(%RIP),%EAX;(8) 
0x3371;:0;TEST	%EAX,%EAX;(8) 
0x3373;:0;JE	338b <time_bcast+0x89>;(8) 
0x3375;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x3379;:0;MOV	0x8(%RAX),%EAX;(8) 
0x337c;:0;SUB	$0x1,%EAX;(8) 
0x337f;:0;CMP	%EAX,-0x10(%RBP);(8) 
0x3382;:0;JNE	338b <time_bcast+0x89>;(8) 
0x3384;:0;MOV	$0x1,%EAX;(8) 
0x3389;:0;JMP	3390 <time_bcast+0x8e>;(8) 
0x338b;:0;MOV	$0,%EAX;(8) 
0x3390;:0;MOV	%EAX,-0xc(%RBP);(8) 
0x3393;:0;CMPL	$0,-0xc(%RBP);(8) 
0x3397;:0;JE	33b5 <time_bcast+0xb3>;(8) 
0x3399;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x339d;:0;MOV	0x18(%RAX),%EAX;(8) 
0x33a0;:0;MOV	%EAX,%EDI;(8) 
0x33a2;:0;CALL	307e <init_sbuffer>;(8) 
0x33a7;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x33ab;:0;MOV	0x18(%RAX),%EAX;(8) 
0x33ae;:0;MOV	%EAX,%EDI;(8) 
0x33b0;:0;CALL	30df <init_rbuffer>;(8) 
0x33b5;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x33b9;:0;MOV	0x10(%RAX),%RDI;(8) 
0x33bd;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x33c1;:0;MOV	0xc(%RAX),%ECX;(8) 
0x33c4;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x33c8;:0;MOV	0x28(%RAX),%RDX;(8) 
0x33cc;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x33d0;:0;MOV	0x20(%RAX),%ESI;(8) 
0x33d3;:0;MOV	-0x8(%RBP),%RAX;(8) 
0x33d7;:0;MOV	%RDI,%R8;(8) 
0x33da;:0;MOV	%RAX,%RDI;(8) 
0x33dd;:0;CALL	2470 <.plt.sec@start+0x1b0>;(8) 
0x33e2;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x33e6;:0;MOV	0x10(%RAX),%RAX;(8) 
0x33ea;:0;MOV	%RAX,%RDI;(8) 
0x33ed;:0;CALL	22c0 <.plt.sec@start>;(8) 
0x33f2;:0;CMPL	$0,-0xc(%RBP);(8) 
0x33f6;:0;JE	342d <time_bcast+0x12b>;(8) 
0x33f8;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x33fc;:0;MOV	0x18(%RAX),%EAX;(8) 
0x33ff;:0;MOV	%EAX,%EDI;(8) 
0x3401;:0;CALL	310c <check_sbuffer>;(8) 
0x3406;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x340a;:0;MOV	(%RAX),%RCX;(8) 
0x340d;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x3411;:0;MOV	0xc(%RAX),%EDX;(8) 
0x3414;:0;MOV	-0x8(%RBP),%RAX;(8) 
0x3418;:0;MOV	%RCX,%R8;(8) 
0x341b;:0;MOV	$0,%ECX;(8) 
0x3420;:0;MOV	$0,%ESI;(8) 
0x3425;:0;MOV	%RAX,%RDI;(8) 
0x3428;:0;CALL	319e <check_rbuffer>;(8) 
0x342d;:0;ADDL	$0x1,-0x10(%RBP);(8) 
0x3431;:0;MOV	-0x18(%RBP),%RAX;(8) 
0x3435;:0;MOV	0x8(%RAX),%EAX;(8) 
0x3438;:0;CMP	%EAX,-0x10(%RBP);(8) 
0x343b;:0;JL	3361 <time_bcast+0x5f>;(8) 
0x3441;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x3446;:0;MOVQ	%XMM0,%RAX;
0x344b;:0;MOV	%RAX,0x6ebe(%RIP);
0x3452;:0;MOVSD	0x6eb6(%RIP),%XMM0;
0x345a;:0;MOVSD	0x6eb6(%RIP),%XMM1;
0x3462;:0;SUBSD	%XMM1,%XMM0;
0x3466;:0;MOVAPD	%XMM0,%XMM1;
0x346a;:0;MOVSD	0x3446(%RIP),%XMM0;
0x3472;:0;MULSD	%XMM1,%XMM0;
0x3476;:0;MOV	-0x18(%RBP),%RAX;
0x347a;:0;MOV	0x8(%RAX),%EAX;
0x347d;:0;CVTSI2SD	%EAX,%XMM1;
0x3481;:0;DIVSD	%XMM1,%XMM0;
0x3485;:0;LEAVE;
0x3486;:0;RET;
