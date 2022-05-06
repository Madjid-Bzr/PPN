address;source_location;insn;indent
0x3487;:0;ENDBR64;
0x348b;:0;PUSH	%RBP;
0x348c;:0;MOV	%RSP,%RBP;
0x348f;:0;SUB	$0x20,%RSP;
0x3493;:0;MOV	%RDI,-0x18(%RBP);
0x3497;:0;LEA	0x6242(%RIP),%RDI;
0x349e;:0;CALL	22c0 <.plt.sec@start>;
0x34a3;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x34a8;:0;MOVQ	%XMM0,%RAX;
0x34ad;:0;MOV	%RAX,0x6e64(%RIP);
0x34b4;:0;MOVL	$0,-0xc(%RBP);
0x34bb;:0;JMP	35eb <time_alltoall+0x164>;
0x34c0;:0;MOV	0x6e7e(%RIP),%EAX;(9) 
0x34c6;:0;TEST	%EAX,%EAX;(9) 
0x34c8;:0;JNE	34e3 <time_alltoall+0x5c>;(9) 
0x34ca;:0;MOV	0x6e7c(%RIP),%EAX;(9) 
0x34d0;:0;TEST	%EAX,%EAX;(9) 
0x34d2;:0;JE	34ea <time_alltoall+0x63>;(9) 
0x34d4;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x34d8;:0;MOV	0x8(%RAX),%EAX;(9) 
0x34db;:0;SUB	$0x1,%EAX;(9) 
0x34de;:0;CMP	%EAX,-0xc(%RBP);(9) 
0x34e1;:0;JNE	34ea <time_alltoall+0x63>;(9) 
0x34e3;:0;MOV	$0x1,%EAX;(9) 
0x34e8;:0;JMP	34ef <time_alltoall+0x68>;(9) 
0x34ea;:0;MOV	$0,%EAX;(9) 
0x34ef;:0;MOV	%EAX,-0x4(%RBP);(9) 
0x34f2;:0;CMPL	$0,-0x4(%RBP);(9) 
0x34f6;:0;JE	3514 <time_alltoall+0x8d>;(9) 
0x34f8;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x34fc;:0;MOV	0x18(%RAX),%EAX;(9) 
0x34ff;:0;MOV	%EAX,%EDI;(9) 
0x3501;:0;CALL	307e <init_sbuffer>;(9) 
0x3506;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x350a;:0;MOV	0x18(%RAX),%EAX;(9) 
0x350d;:0;MOV	%EAX,%EDI;(9) 
0x350f;:0;CALL	30df <init_rbuffer>;(9) 
0x3514;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x3518;:0;MOV	0x10(%RAX),%RDI;(9) 
0x351c;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x3520;:0;MOV	0x28(%RAX),%R8;(9) 
0x3524;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x3528;:0;MOV	(%RAX),%RAX;(9) 
0x352b;:0;MOV	%EAX,%R10D;(9) 
0x352e;:0;MOV	0x6deb(%RIP),%RCX;(9) 
0x3535;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x3539;:0;MOV	0x28(%RAX),%RDX;(9) 
0x353d;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x3541;:0;MOV	0x20(%RAX),%ESI;(9) 
0x3544;:0;MOV	0x6e05(%RIP),%RAX;(9) 
0x354b;:0;SUB	$0x8,%RSP;(9) 
0x354f;:0;PUSH	%RDI;(9) 
0x3550;:0;MOV	%R8,%R9;(9) 
0x3553;:0;MOV	%R10D,%R8D;(9) 
0x3556;:0;MOV	%RAX,%RDI;(9) 
0x3559;:0;CALL	2300 <.plt.sec@start+0x40>;(9) 
0x355e;:0;ADD	$0x10,%RSP;(9) 
0x3562;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x3566;:0;MOV	0x10(%RAX),%RAX;(9) 
0x356a;:0;MOV	%RAX,%RDI;(9) 
0x356d;:0;CALL	22c0 <.plt.sec@start>;(9) 
0x3572;:0;CMPL	$0,-0x4(%RBP);(9) 
0x3576;:0;JE	35e7 <time_alltoall+0x160>;(9) 
0x3578;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x357c;:0;MOV	0x18(%RAX),%EAX;(9) 
0x357f;:0;MOV	%EAX,%EDI;(9) 
0x3581;:0;CALL	310c <check_sbuffer>;(9) 
0x3586;:0;MOVL	$0,-0x8(%RBP);(9) 
0x358d;:0;JMP	35db <time_alltoall+0x154>;(9) 
0x358f;:0;MOV	-0x18(%RBP),%RAX;  (10) 
0x3593;:0;MOV	(%RAX),%RDI;  (10) 
0x3596;:0;MOV	-0x18(%RBP),%RAX;  (10) 
0x359a;:0;MOV	0x18(%RAX),%EAX;  (10) 
0x359d;:0;MOVSXD	%EAX,%RDX;  (10) 
0x35a0;:0;MOV	-0x18(%RBP),%RAX;  (10) 
0x35a4;:0;MOV	(%RAX),%RAX;  (10) 
0x35a7;:0;MOV	%RDX,%RCX;  (10) 
0x35aa;:0;IMUL	%RAX,%RCX;  (10) 
0x35ae;:0;MOV	-0x8(%RBP),%EAX;  (10) 
0x35b1;:0;MOVSXD	%EAX,%RDX;  (10) 
0x35b4;:0;MOV	-0x18(%RBP),%RAX;  (10) 
0x35b8;:0;MOV	(%RAX),%RAX;  (10) 
0x35bb;:0;MOV	%RDX,%RSI;  (10) 
0x35be;:0;IMUL	%RAX,%RSI;  (10) 
0x35c2;:0;MOV	0x6d57(%RIP),%RAX;  (10) 
0x35c9;:0;MOV	-0x8(%RBP),%EDX;  (10) 
0x35cc;:0;MOV	%RDI,%R8;  (10) 
0x35cf;:0;MOV	%RAX,%RDI;  (10) 
0x35d2;:0;CALL	319e <check_rbuffer>;  (10) 
0x35d7;:0;ADDL	$0x1,-0x8(%RBP);  (10) 
0x35db;:0;MOV	-0x18(%RBP),%RAX;  (10) 
0x35df;:0;MOV	0x1c(%RAX),%EAX;  (10) 
0x35e2;:0;CMP	%EAX,-0x8(%RBP);  (10) 
0x35e5;:0;JL	358f <time_alltoall+0x108>;  (10) 
0x35e7;:0;ADDL	$0x1,-0xc(%RBP);(9) 
0x35eb;:0;MOV	-0x18(%RBP),%RAX;(9) 
0x35ef;:0;MOV	0x8(%RAX),%EAX;(9) 
0x35f2;:0;CMP	%EAX,-0xc(%RBP);(9) 
0x35f5;:0;JL	34c0 <time_alltoall+0x39>;(9) 
0x35fb;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x3600;:0;MOVQ	%XMM0,%RAX;
0x3605;:0;MOV	%RAX,0x6d04(%RIP);
0x360c;:0;MOVSD	0x6cfc(%RIP),%XMM0;
0x3614;:0;MOVSD	0x6cfc(%RIP),%XMM1;
0x361c;:0;SUBSD	%XMM1,%XMM0;
0x3620;:0;MOVAPD	%XMM0,%XMM1;
0x3624;:0;MOVSD	0x328c(%RIP),%XMM0;
0x362c;:0;MULSD	%XMM1,%XMM0;
0x3630;:0;MOV	-0x18(%RBP),%RAX;
0x3634;:0;MOV	0x8(%RAX),%EAX;
0x3637;:0;CVTSI2SD	%EAX,%XMM1;
0x363b;:0;DIVSD	%XMM1,%XMM0;
0x363f;:0;LEAVE;
0x3640;:0;RET;
