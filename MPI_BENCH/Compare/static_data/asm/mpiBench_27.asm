address;source_location;insn;indent
0x44df;:0;MOV	-0x18(%RBP),%RAX;
0x44e3;:0;MOV	0x10(%RAX),%RDI;
0x44e7;:0;MOV	-0x18(%RBP),%RAX;
0x44eb;:0;MOV	0xc(%RAX),%R9D;
0x44ef;:0;MOV	-0x18(%RBP),%RAX;
0x44f3;:0;MOV	0x30(%RAX),%R8;
0x44f7;:0;MOV	-0x18(%RBP),%RAX;
0x44fb;:0;MOV	0x28(%RAX),%RCX;
0x44ff;:0;MOV	-0x18(%RBP),%RAX;
0x4503;:0;MOV	0x20(%RAX),%EDX;
0x4506;:0;MOV	0x5e13(%RIP),%RSI;
0x450d;:0;MOV	0x5e3c(%RIP),%RAX;
0x4514;:0;SUB	$0x8,%RSP;
0x4518;:0;PUSH	%RDI;
0x4519;:0;MOV	%RAX,%RDI;
0x451c;:0;CALL	2480 <.plt.sec@start+0x1c0>;
0x4521;:0;ADD	$0x10,%RSP;
0x4525;:0;MOV	-0x18(%RBP),%RAX;
0x4529;:0;MOV	0x10(%RAX),%RAX;
0x452d;:0;MOV	%RAX,%RDI;
0x4530;:0;CALL	22c0 <.plt.sec@start>;
0x4535;:0;ADDL	$0x1,-0x4(%RBP);
0x4539;:0;MOV	-0x18(%RBP),%RAX;
0x453d;:0;MOV	0x8(%RAX),%EAX;
0x4540;:0;CMP	%EAX,-0x4(%RBP);
0x4543;:0;JL	44df <time_reduce+0x36>;
