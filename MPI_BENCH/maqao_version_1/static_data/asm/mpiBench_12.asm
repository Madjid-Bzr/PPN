address;source_location;insn;indent
0x377b;:0;MOV	0x6bc3(%RIP),%EAX;
0x3781;:0;TEST	%EAX,%EAX;
0x3783;:0;JNE	379e <time_alltoallv+0x15d>;
0x3785;:0;MOV	0x6bc1(%RIP),%EAX;
0x378b;:0;TEST	%EAX,%EAX;
0x378d;:0;JE	37a5 <time_alltoallv+0x164>;
0x378f;:0;MOV	-0x38(%RBP),%RAX;
0x3793;:0;MOV	0x8(%RAX),%EAX;
0x3796;:0;SUB	$0x1,%EAX;
0x3799;:0;CMP	%EAX,-0x24(%RBP);
0x379c;:0;JNE	37a5 <time_alltoallv+0x164>;
0x379e;:0;MOV	$0x1,%EAX;
0x37a3;:0;JMP	37aa <time_alltoallv+0x169>;
0x37a5;:0;MOV	$0,%EAX;
0x37aa;:0;MOV	%EAX,-0x10(%RBP);
0x37ad;:0;CMPL	$0,-0x10(%RBP);
0x37b1;:0;JE	37cf <time_alltoallv+0x18e>;
0x37b3;:0;MOV	-0x38(%RBP),%RAX;
0x37b7;:0;MOV	0x18(%RAX),%EAX;
0x37ba;:0;MOV	%EAX,%EDI;
0x37bc;:0;CALL	307e <init_sbuffer>;
0x37c1;:0;MOV	-0x38(%RBP),%RAX;
0x37c5;:0;MOV	0x18(%RAX),%EAX;
0x37c8;:0;MOV	%EAX,%EDI;
0x37ca;:0;CALL	30df <init_rbuffer>;
0x37cf;:0;MOV	-0x38(%RBP),%RAX;
0x37d3;:0;MOV	0x10(%RAX),%R9;
0x37d7;:0;MOV	-0x38(%RBP),%RAX;
0x37db;:0;MOV	0x28(%RAX),%R8;
0x37df;:0;MOV	0x6b52(%RIP),%RDI;
0x37e6;:0;MOV	0x6b3b(%RIP),%R11;
0x37ed;:0;MOV	0x6b2c(%RIP),%R10;
0x37f4;:0;MOV	-0x38(%RBP),%RAX;
0x37f8;:0;MOV	0x28(%RAX),%RCX;
0x37fc;:0;MOV	0x6afd(%RIP),%RDX;
0x3803;:0;MOV	0x6b26(%RIP),%RSI;
0x380a;:0;MOV	0x6b3f(%RIP),%RAX;
0x3811;:0;SUB	$0x8,%RSP;
0x3815;:0;PUSH	%R9;
0x3817;:0;PUSH	%R8;
0x3819;:0;PUSH	%RDI;
0x381a;:0;MOV	%R11,%R9;
0x381d;:0;MOV	%R10,%R8;
0x3820;:0;MOV	%RAX,%RDI;
0x3823;:0;CALL	2320 <.plt.sec@start+0x60>;
0x3828;:0;ADD	$0x20,%RSP;
0x382c;:0;MOV	-0x38(%RBP),%RAX;
0x3830;:0;MOV	0x10(%RAX),%RAX;
0x3834;:0;MOV	%RAX,%RDI;
0x3837;:0;CALL	22c0 <.plt.sec@start>;
0x383c;:0;CMPL	$0,-0x10(%RBP);
0x3840;:0;JE	391d <time_alltoallv+0x2dc>;
0x3846;:0;MOV	-0x38(%RBP),%RAX;
0x384a;:0;MOV	0x18(%RAX),%EAX;
0x384d;:0;MOV	%EAX,%EDI;
0x384f;:0;CALL	310c <check_sbuffer>;
0x3854;:0;MOVL	$0,-0x1c(%RBP);
0x385b;:0;JMP	390d <time_alltoallv+0x2cc>;
0x3860;:0;MOVL	$0,-0x18(%RBP);  (14) 
0x3867;:0;MOVL	$0,-0x20(%RBP);  (14) 
0x386e;:0;JMP	38a2 <time_alltoallv+0x261>;  (14) 
0x3870;:0;MOV	-0x20(%RBP),%EDX;    (13) 
0x3873;:0;MOV	-0x1c(%RBP),%EAX;    (13) 
0x3876;:0;ADD	%EDX,%EAX;    (13) 
0x3878;:0;IMUL	-0x14(%RBP),%EAX;    (13) 
0x387c;:0;CLTQ;    (13) 
0x387e;:0;MOV	-0x38(%RBP),%RDX;    (13) 
0x3882;:0;MOV	(%RDX),%RDX;    (13) 
0x3885;:0;LEA	0x1(%RDX),%RCX;    (13) 
0x3889;:0;MOV	$0,%EDX;    (13) 
0x388e;:0;DIV	%RCX;    (13) 
0x3891;:0;MOV	%RDX,%RAX;    (13) 
0x3894;:0;MOV	%EAX,%EDX;    (13) 
0x3896;:0;MOV	-0x18(%RBP),%EAX;    (13) 
0x3899;:0;ADD	%EDX,%EAX;    (13) 
0x389b;:0;MOV	%EAX,-0x18(%RBP);    (13) 
0x389e;:0;ADDL	$0x1,-0x20(%RBP);    (13) 
0x38a2;:0;MOV	-0x38(%RBP),%RAX;    (13) 
0x38a6;:0;MOV	0x18(%RAX),%EAX;    (13) 
0x38a9;:0;CMP	%EAX,-0x20(%RBP);    (13) 
0x38ac;:0;JL	3870 <time_alltoallv+0x22f>;    (13) 
0x38ae;:0;MOV	0x6a73(%RIP),%RAX;  (14) 
0x38b5;:0;MOV	-0x1c(%RBP),%EDX;  (14) 
0x38b8;:0;MOVSXD	%EDX,%RDX;  (14) 
0x38bb;:0;SAL	$0x2,%RDX;  (14) 
0x38bf;:0;ADD	%RDX,%RAX;  (14) 
0x38c2;:0;MOV	(%RAX),%EAX;  (14) 
0x38c4;:0;CLTQ;  (14) 
0x38c6;:0;IMUL	-0x8(%RBP),%RAX;  (14) 
0x38cb;:0;MOV	%RAX,%RDI;  (14) 
0x38ce;:0;MOV	-0x18(%RBP),%EAX;  (14) 
0x38d1;:0;MOVSXD	%EAX,%RCX;  (14) 
0x38d4;:0;MOV	0x6a5d(%RIP),%RAX;  (14) 
0x38db;:0;MOV	-0x1c(%RBP),%EDX;  (14) 
0x38de;:0;MOVSXD	%EDX,%RDX;  (14) 
0x38e1;:0;SAL	$0x2,%RDX;  (14) 
0x38e5;:0;ADD	%RDX,%RAX;  (14) 
0x38e8;:0;MOV	(%RAX),%EAX;  (14) 
0x38ea;:0;CLTQ;  (14) 
0x38ec;:0;IMUL	-0x8(%RBP),%RAX;  (14) 
0x38f1;:0;MOV	%RAX,%RSI;  (14) 
0x38f4;:0;MOV	0x6a25(%RIP),%RAX;  (14) 
0x38fb;:0;MOV	-0x1c(%RBP),%EDX;  (14) 
0x38fe;:0;MOV	%RDI,%R8;  (14) 
0x3901;:0;MOV	%RAX,%RDI;  (14) 
0x3904;:0;CALL	319e <check_rbuffer>;  (14) 
0x3909;:0;ADDL	$0x1,-0x1c(%RBP);  (14) 
0x390d;:0;MOV	-0x38(%RBP),%RAX;  (14) 
0x3911;:0;MOV	0x1c(%RAX),%EAX;  (14) 
0x3914;:0;CMP	%EAX,-0x1c(%RBP);  (14) 
0x3917;:0;JL	3860 <time_alltoallv+0x21f>;  (14) 
0x391d;:0;ADDL	$0x1,-0x24(%RBP);
0x3921;:0;MOV	-0x38(%RBP),%RAX;
0x3925;:0;MOV	0x8(%RAX),%EAX;
0x3928;:0;CMP	%EAX,-0x24(%RBP);
0x392b;:0;JL	377b <time_alltoallv+0x13a>;
