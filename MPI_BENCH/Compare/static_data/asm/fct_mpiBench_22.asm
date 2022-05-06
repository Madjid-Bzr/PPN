address;source_location;insn;indent
0x3f74;:0;ENDBR64;
0x3f78;:0;PUSH	%RBP;
0x3f79;:0;MOV	%RSP,%RBP;
0x3f7c;:0;SUB	$0x40,%RSP;
0x3f80;:0;MOV	%RDI,-0x38(%RBP);
0x3f84;:0;MOVL	$0,-0x1c(%RBP);
0x3f8b;:0;MOV	-0x38(%RBP),%RAX;
0x3f8f;:0;MOV	0x20(%RAX),%EAX;
0x3f92;:0;MOV	-0x38(%RBP),%RDX;
0x3f96;:0;MOV	0x1c(%RDX),%ESI;
0x3f99;:0;CLTD;
0x3f9a;:0;IDIV	%ESI;
0x3f9c;:0;MOV	%EAX,-0x18(%RBP);
0x3f9f;:0;CMPL	$0,-0x18(%RBP);
0x3fa3;:0;JNE	3fac <time_gatherv+0x38>;
0x3fa5;:0;MOVL	$0x1,-0x18(%RBP);
0x3fac;:0;MOVL	$0,-0x24(%RBP);
0x3fb3;:0;JMP	4008 <time_gatherv+0x94>;
0x3fb5;:0;MOV	-0x24(%RBP),%EAX;(22) 
0x3fb8;:0;IMUL	-0x18(%RBP),%EAX;(22) 
0x3fbc;:0;MOV	-0x38(%RBP),%RDX;(22) 
0x3fc0;:0;MOV	0x20(%RDX),%EDX;(22) 
0x3fc3;:0;LEA	0x1(%RDX),%ECX;(22) 
0x3fc6;:0;CLTD;(22) 
0x3fc7;:0;IDIV	%ECX;(22) 
0x3fc9;:0;MOV	%EDX,-0xc(%RBP);(22) 
0x3fcc;:0;MOV	0x6355(%RIP),%RAX;(22) 
0x3fd3;:0;MOV	-0x24(%RBP),%EDX;(22) 
0x3fd6;:0;MOVSXD	%EDX,%RDX;(22) 
0x3fd9;:0;SAL	$0x2,%RDX;(22) 
0x3fdd;:0;ADD	%RAX,%RDX;(22) 
0x3fe0;:0;MOV	-0xc(%RBP),%EAX;(22) 
0x3fe3;:0;MOV	%EAX,(%RDX);(22) 
0x3fe5;:0;MOV	0x634c(%RIP),%RAX;(22) 
0x3fec;:0;MOV	-0x24(%RBP),%EDX;(22) 
0x3fef;:0;MOVSXD	%EDX,%RDX;(22) 
0x3ff2;:0;SAL	$0x2,%RDX;(22) 
0x3ff6;:0;ADD	%RAX,%RDX;(22) 
0x3ff9;:0;MOV	-0x1c(%RBP),%EAX;(22) 
0x3ffc;:0;MOV	%EAX,(%RDX);(22) 
0x3ffe;:0;MOV	-0xc(%RBP),%EAX;(22) 
0x4001;:0;ADD	%EAX,-0x1c(%RBP);(22) 
0x4004;:0;ADDL	$0x1,-0x24(%RBP);(22) 
0x4008;:0;MOV	-0x38(%RBP),%RAX;(22) 
0x400c;:0;MOV	0x1c(%RAX),%EAX;(22) 
0x400f;:0;CMP	%EAX,-0x24(%RBP);(22) 
0x4012;:0;JL	3fb5 <time_gatherv+0x41>;(22) 
0x4014;:0;MOV	-0x38(%RBP),%RAX;
0x4018;:0;MOV	0x20(%RAX),%EAX;
0x401b;:0;TEST	%EAX,%EAX;
0x401d;:0;JLE	403a <time_gatherv+0xc6>;
0x401f;:0;MOV	-0x38(%RBP),%RAX;
0x4023;:0;MOV	(%RAX),%RAX;
0x4026;:0;MOV	-0x38(%RBP),%RDX;
0x402a;:0;MOV	0x20(%RDX),%EDX;
0x402d;:0;MOVSXD	%EDX,%RSI;
0x4030;:0;MOV	$0,%EDX;
0x4035;:0;DIV	%RSI;
0x4038;:0;JMP	403f <time_gatherv+0xcb>;
0x403a;:0;MOV	$0,%EAX;
0x403f;:0;MOV	%RAX,-0x8(%RBP);
0x4043;:0;LEA	0x5696(%RIP),%RDI;
0x404a;:0;CALL	22c0 <.plt.sec@start>;
0x404f;:0;MOV	-0x38(%RBP),%RAX;
0x4053;:0;MOV	0x18(%RAX),%EAX;
0x4056;:0;IMUL	-0x18(%RBP),%EAX;
0x405a;:0;MOV	-0x38(%RBP),%RDX;
0x405e;:0;MOV	0x20(%RDX),%EDX;
0x4061;:0;LEA	0x1(%RDX),%ECX;
0x4064;:0;CLTD;
0x4065;:0;IDIV	%ECX;
0x4067;:0;MOV	%EDX,-0x14(%RBP);
0x406a;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x406f;:0;MOVQ	%XMM0,%RAX;
0x4074;:0;MOV	%RAX,0x629d(%RIP);
0x407b;:0;MOVL	$0,-0x24(%RBP);
0x4082;:0;JMP	41e6 <time_gatherv+0x272>;
0x4087;:0;MOV	0x62b7(%RIP),%EAX;(23) 
0x408d;:0;TEST	%EAX,%EAX;(23) 
0x408f;:0;JNE	40aa <time_gatherv+0x136>;(23) 
0x4091;:0;MOV	0x62b5(%RIP),%EAX;(23) 
0x4097;:0;TEST	%EAX,%EAX;(23) 
0x4099;:0;JE	40b1 <time_gatherv+0x13d>;(23) 
0x409b;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x409f;:0;MOV	0x8(%RAX),%EAX;(23) 
0x40a2;:0;SUB	$0x1,%EAX;(23) 
0x40a5;:0;CMP	%EAX,-0x24(%RBP);(23) 
0x40a8;:0;JNE	40b1 <time_gatherv+0x13d>;(23) 
0x40aa;:0;MOV	$0x1,%EAX;(23) 
0x40af;:0;JMP	40b6 <time_gatherv+0x142>;(23) 
0x40b1;:0;MOV	$0,%EAX;(23) 
0x40b6;:0;MOV	%EAX,-0x10(%RBP);(23) 
0x40b9;:0;CMPL	$0,-0x10(%RBP);(23) 
0x40bd;:0;JE	40db <time_gatherv+0x167>;(23) 
0x40bf;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x40c3;:0;MOV	0x18(%RAX),%EAX;(23) 
0x40c6;:0;MOV	%EAX,%EDI;(23) 
0x40c8;:0;CALL	307e <init_sbuffer>;(23) 
0x40cd;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x40d1;:0;MOV	0x18(%RAX),%EAX;(23) 
0x40d4;:0;MOV	%EAX,%EDI;(23) 
0x40d6;:0;CALL	30df <init_rbuffer>;(23) 
0x40db;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x40df;:0;MOV	0x10(%RAX),%R9;(23) 
0x40e3;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x40e7;:0;MOV	0xc(%RAX),%R8D;(23) 
0x40eb;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x40ef;:0;MOV	0x28(%RAX),%RDI;(23) 
0x40f3;:0;MOV	0x623e(%RIP),%R11;(23) 
0x40fa;:0;MOV	0x6227(%RIP),%R10;(23) 
0x4101;:0;MOV	0x6218(%RIP),%RCX;(23) 
0x4108;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x410c;:0;MOV	0x28(%RAX),%RDX;(23) 
0x4110;:0;MOV	0x6239(%RIP),%RAX;(23) 
0x4117;:0;MOV	-0x14(%RBP),%ESI;(23) 
0x411a;:0;SUB	$0x8,%RSP;(23) 
0x411e;:0;PUSH	%R9;(23) 
0x4120;:0;PUSH	%R8;(23) 
0x4122;:0;PUSH	%RDI;(23) 
0x4123;:0;MOV	%R11,%R9;(23) 
0x4126;:0;MOV	%R10,%R8;(23) 
0x4129;:0;MOV	%RAX,%RDI;(23) 
0x412c;:0;CALL	2500 <.plt.sec@start+0x240>;(23) 
0x4131;:0;ADD	$0x20,%RSP;(23) 
0x4135;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x4139;:0;MOV	0x10(%RAX),%RAX;(23) 
0x413d;:0;MOV	%RAX,%RDI;(23) 
0x4140;:0;CALL	22c0 <.plt.sec@start>;(23) 
0x4145;:0;CMPL	$0,-0x10(%RBP);(23) 
0x4149;:0;JE	41e2 <time_gatherv+0x26e>;(23) 
0x414f;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x4153;:0;MOV	0x18(%RAX),%EAX;(23) 
0x4156;:0;MOV	%EAX,%EDI;(23) 
0x4158;:0;CALL	310c <check_sbuffer>;(23) 
0x415d;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x4161;:0;MOV	0x18(%RAX),%EDX;(23) 
0x4164;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x4168;:0;MOV	0xc(%RAX),%EAX;(23) 
0x416b;:0;CMP	%EAX,%EDX;(23) 
0x416d;:0;JNE	41e2 <time_gatherv+0x26e>;(23) 
0x416f;:0;MOVL	$0,-0x20(%RBP);(23) 
0x4176;:0;JMP	41d6 <time_gatherv+0x262>;(23) 
0x4178;:0;MOV	0x61a9(%RIP),%RAX;  (24) 
0x417f;:0;MOV	-0x20(%RBP),%EDX;  (24) 
0x4182;:0;MOVSXD	%EDX,%RDX;  (24) 
0x4185;:0;SAL	$0x2,%RDX;  (24) 
0x4189;:0;ADD	%RDX,%RAX;  (24) 
0x418c;:0;MOV	(%RAX),%EAX;  (24) 
0x418e;:0;CLTQ;  (24) 
0x4190;:0;IMUL	-0x8(%RBP),%RAX;  (24) 
0x4195;:0;MOV	%RAX,%RCX;  (24) 
0x4198;:0;MOV	0x6199(%RIP),%RAX;  (24) 
0x419f;:0;MOV	-0x20(%RBP),%EDX;  (24) 
0x41a2;:0;MOVSXD	%EDX,%RDX;  (24) 
0x41a5;:0;SAL	$0x2,%RDX;  (24) 
0x41a9;:0;ADD	%RDX,%RAX;  (24) 
0x41ac;:0;MOV	(%RAX),%EAX;  (24) 
0x41ae;:0;CLTQ;  (24) 
0x41b0;:0;IMUL	-0x8(%RBP),%RAX;  (24) 
0x41b5;:0;MOV	%RAX,%RSI;  (24) 
0x41b8;:0;MOV	0x6161(%RIP),%RAX;  (24) 
0x41bf;:0;MOV	-0x20(%RBP),%EDX;  (24) 
0x41c2;:0;MOV	%RCX,%R8;  (24) 
0x41c5;:0;MOV	$0,%ECX;  (24) 
0x41ca;:0;MOV	%RAX,%RDI;  (24) 
0x41cd;:0;CALL	319e <check_rbuffer>;  (24) 
0x41d2;:0;ADDL	$0x1,-0x20(%RBP);  (24) 
0x41d6;:0;MOV	-0x38(%RBP),%RAX;  (24) 
0x41da;:0;MOV	0x1c(%RAX),%EAX;  (24) 
0x41dd;:0;CMP	%EAX,-0x20(%RBP);  (24) 
0x41e0;:0;JL	4178 <time_gatherv+0x204>;  (24) 
0x41e2;:0;ADDL	$0x1,-0x24(%RBP);(23) 
0x41e6;:0;MOV	-0x38(%RBP),%RAX;(23) 
0x41ea;:0;MOV	0x8(%RAX),%EAX;(23) 
0x41ed;:0;CMP	%EAX,-0x24(%RBP);(23) 
0x41f0;:0;JL	4087 <time_gatherv+0x113>;(23) 
0x41f6;:0;CALL	24e0 <.plt.sec@start+0x220>;
0x41fb;:0;MOVQ	%XMM0,%RAX;
0x4200;:0;MOV	%RAX,0x6109(%RIP);
0x4207;:0;MOVSD	0x6101(%RIP),%XMM0;
0x420f;:0;MOVSD	0x6101(%RIP),%XMM1;
0x4217;:0;SUBSD	%XMM1,%XMM0;
0x421b;:0;MOVAPD	%XMM0,%XMM1;
0x421f;:0;MOVSD	0x2691(%RIP),%XMM0;
0x4227;:0;MULSD	%XMM1,%XMM0;
0x422b;:0;MOV	-0x38(%RBP),%RAX;
0x422f;:0;MOV	0x8(%RAX),%EAX;
0x4232;:0;CVTSI2SD	%EAX,%XMM1;
0x4236;:0;DIVSD	%XMM1,%XMM0;
0x423a;:0;LEAVE;
0x423b;:0;RET;
