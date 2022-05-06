address;source_location;insn;indent
0x3977;:0;ENDBR64;
0x397b;:0;PUSH	%RBP;
0x397c;:0;MOV	%RSP,%RBP;
0x397f;:0;SUB	$0x20,%RSP;
0x3983;:0;MOV	%RDI,-0x18(%RBP);
0x3987;:0;LEA	0x5d52(%RIP),%RDI;
0x398e;:0;CALL	22c0 <.plt.sec@start>;
0x3993;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x3998;:0;MOVQ	%XMM0,%RAX;
0x399d;:0;MOV	%RAX,0x6974(%RIP);
0x39a4;:0;MOVL	$0,-0xc(%RBP);
0x39ab;:0;JMP	3ac0 <time_allgather+0x149>;
0x39b0;:0;MOV	0x698e(%RIP),%EAX;(15) 
0x39b6;:0;TEST	%EAX,%EAX;(15) 
0x39b8;:0;JNE	39d3 <time_allgather+0x5c>;(15) 
0x39ba;:0;MOV	0x698c(%RIP),%EAX;(15) 
0x39c0;:0;TEST	%EAX,%EAX;(15) 
0x39c2;:0;JE	39da <time_allgather+0x63>;(15) 
0x39c4;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x39c8;:0;MOV	0x8(%RAX),%EAX;(15) 
0x39cb;:0;SUB	$0x1,%EAX;(15) 
0x39ce;:0;CMP	%EAX,-0xc(%RBP);(15) 
0x39d1;:0;JNE	39da <time_allgather+0x63>;(15) 
0x39d3;:0;MOV	$0x1,%EAX;(15) 
0x39d8;:0;JMP	39df <time_allgather+0x68>;(15) 
0x39da;:0;MOV	$0,%EAX;(15) 
0x39df;:0;MOV	%EAX,-0x4(%RBP);(15) 
0x39e2;:0;CMPL	$0,-0x4(%RBP);(15) 
0x39e6;:0;JE	3a04 <time_allgather+0x8d>;(15) 
0x39e8;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x39ec;:0;MOV	0x18(%RAX),%EAX;(15) 
0x39ef;:0;MOV	%EAX,%EDI;(15) 
0x39f1;:0;CALL	307e <init_sbuffer>;(15) 
0x39f6;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x39fa;:0;MOV	0x18(%RAX),%EAX;(15) 
0x39fd;:0;MOV	%EAX,%EDI;(15) 
0x39ff;:0;CALL	30df <init_rbuffer>;(15) 
0x3a04;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x3a08;:0;MOV	0x10(%RAX),%RDI;(15) 
0x3a0c;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x3a10;:0;MOV	0x28(%RAX),%R9;(15) 
0x3a14;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x3a18;:0;MOV	0x20(%RAX),%R8D;(15) 
0x3a1c;:0;MOV	0x68fd(%RIP),%RCX;(15) 
0x3a23;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x3a27;:0;MOV	0x28(%RAX),%RDX;(15) 
0x3a2b;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x3a2f;:0;MOV	0x20(%RAX),%ESI;(15) 
0x3a32;:0;MOV	0x6917(%RIP),%RAX;(15) 
0x3a39;:0;SUB	$0x8,%RSP;(15) 
0x3a3d;:0;PUSH	%RDI;(15) 
0x3a3e;:0;MOV	%RAX,%RDI;(15) 
0x3a41;:0;CALL	23c0 <.plt.sec@start+0x100>;(15) 
0x3a46;:0;ADD	$0x10,%RSP;(15) 
0x3a4a;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x3a4e;:0;MOV	0x10(%RAX),%RAX;(15) 
0x3a52;:0;MOV	%RAX,%RDI;(15) 
0x3a55;:0;CALL	22c0 <.plt.sec@start>;(15) 
0x3a5a;:0;CMPL	$0,-0x4(%RBP);(15) 
0x3a5e;:0;JE	3abc <time_allgather+0x145>;(15) 
0x3a60;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x3a64;:0;MOV	0x18(%RAX),%EAX;(15) 
0x3a67;:0;MOV	%EAX,%EDI;(15) 
0x3a69;:0;CALL	310c <check_sbuffer>;(15) 
0x3a6e;:0;MOVL	$0,-0x8(%RBP);(15) 
0x3a75;:0;JMP	3ab0 <time_allgather+0x139>;(15) 
0x3a77;:0;MOV	-0x18(%RBP),%RAX;  (16) 
0x3a7b;:0;MOV	(%RAX),%RCX;  (16) 
0x3a7e;:0;MOV	-0x8(%RBP),%EAX;  (16) 
0x3a81;:0;MOVSXD	%EAX,%RDX;  (16) 
0x3a84;:0;MOV	-0x18(%RBP),%RAX;  (16) 
0x3a88;:0;MOV	(%RAX),%RAX;  (16) 
0x3a8b;:0;MOV	%RDX,%RSI;  (16) 
0x3a8e;:0;IMUL	%RAX,%RSI;  (16) 
0x3a92;:0;MOV	0x6887(%RIP),%RAX;  (16) 
0x3a99;:0;MOV	-0x8(%RBP),%EDX;  (16) 
0x3a9c;:0;MOV	%RCX,%R8;  (16) 
0x3a9f;:0;MOV	$0,%ECX;  (16) 
0x3aa4;:0;MOV	%RAX,%RDI;  (16) 
0x3aa7;:0;CALL	319e <check_rbuffer>;  (16) 
0x3aac;:0;ADDL	$0x1,-0x8(%RBP);  (16) 
0x3ab0;:0;MOV	-0x18(%RBP),%RAX;  (16) 
0x3ab4;:0;MOV	0x1c(%RAX),%EAX;  (16) 
0x3ab7;:0;CMP	%EAX,-0x8(%RBP);  (16) 
0x3aba;:0;JL	3a77 <time_allgather+0x100>;  (16) 
0x3abc;:0;ADDL	$0x1,-0xc(%RBP);(15) 
0x3ac0;:0;MOV	-0x18(%RBP),%RAX;(15) 
0x3ac4;:0;MOV	0x8(%RAX),%EAX;(15) 
0x3ac7;:0;CMP	%EAX,-0xc(%RBP);(15) 
0x3aca;:0;JL	39b0 <time_allgather+0x39>;(15) 
0x3ad0;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x3ad5;:0;MOVQ	%XMM0,%RAX;
0x3ada;:0;MOV	%RAX,0x682f(%RIP);
0x3ae1;:0;MOVSD	0x6827(%RIP),%XMM0;
0x3ae9;:0;MOVSD	0x6827(%RIP),%XMM1;
0x3af1;:0;SUBSD	%XMM1,%XMM0;
0x3af5;:0;MOVAPD	%XMM0,%XMM1;
0x3af9;:0;MOVSD	0x2db7(%RIP),%XMM0;
0x3b01;:0;MULSD	%XMM1,%XMM0;
0x3b05;:0;MOV	-0x18(%RBP),%RAX;
0x3b09;:0;MOV	0x8(%RAX),%EAX;
0x3b0c;:0;CVTSI2SD	%EAX,%XMM1;
0x3b10;:0;DIVSD	%XMM1,%XMM0;
0x3b14;:0;LEAVE;
0x3b15;:0;RET;
