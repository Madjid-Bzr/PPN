address;source_location;insn;indent
0x79d0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;ENDBR64;
0x79d4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;PUSH	%RBP;
0x79d5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;MOV	%RSP,%RBP;
0x79d8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;PUSH	%R15;
0x79da;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;PUSH	%R14;
0x79dc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;PUSH	%R13;
0x79de;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;PUSH	%R12;
0x79e0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;PUSH	%RBX;
0x79e1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;SUB	$0x38,%RSP;
0x79e5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;CALLQ	0x4605(%RIP);
0x79eb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:722;MOV	$0x1,%EBX;
0x79f0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:721;MOVSXD	0x20(%RDI),%R14;
0x79f4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:721;MOV	0x1c(%RDI),%ESI;
0x79f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:721;MOV	%R14D,%EAX;
0x79fa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:721;CLTD;
0x79fb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:721;IDIV	%ESI;
0x79fd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:718;MOV	%RDI,%R12;
0x7a00;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:722;TEST	%EAX,%EAX;
0x7a02;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:722;CMOVNE	%EAX,%EBX;
0x7a05;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;TEST	%ESI,%ESI;
0x7a07;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;JLE	7a6b <time_gatherv+0x9b>;
0x7a09;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:725;MOV	0x58f8(%RIP),%R10;
0x7a10;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:726;MOV	0x5901(%RIP),%R9;
0x7a17;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:725;MOVL	$0,(%R10);
0x7a1e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:726;MOVL	$0,(%R9);
0x7a25;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:727;XOR	%R8D,%R8D;
0x7a28;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;MOV	%EBX,%EDI;
0x7a2a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;CMPL	$0x1,0x1c(%R12);
0x7a30;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;MOV	$0x1,%ECX;
0x7a35;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;JLE	7a66 <time_gatherv+0x96>;
0x7a37;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;NOPW	(%RAX,%RAX,1);
0x7a40;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:724;MOV	0x20(%R12),%R11D;(82) 
0x7a45;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:724;MOV	%EDI,%EAX;(82) 
0x7a47;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:724;LEA	0x1(%R11),%R13D;(82) 
0x7a4b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:724;CLTD;(82) 
0x7a4c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:724;IDIV	%R13D;(82) 
0x7a4f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:725;ADD	%EBX,%EDI;(82) 
0x7a51;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:725;MOV	%EDX,(%R10,%RCX,4);(82) 
0x7a55;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:726;MOV	%R8D,(%R9,%RCX,4);(82) 
0x7a59;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:727;INC	%RCX;(82) 
0x7a5c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:727;ADD	%EDX,%R8D;(82) 
0x7a5f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;CMP	%ECX,0x1c(%R12);(82) 
0x7a64;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;JG	7a40 <time_gatherv+0x70>;(82) 
0x7a66;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:723;MOVSXD	0x20(%R12),%R14;
0x7a6b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:729;MOVQ	$0,-0x50(%RBP);
0x7a73;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:729;TEST	%R14D,%R14D;
0x7a76;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:729;JLE	7a85 <time_gatherv+0xb5>;
0x7a78;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:729;MOV	(%R12),%RAX;
0x7a7c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:729;XOR	%EDX,%EDX;
0x7a7e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:729;DIV	%R14;
0x7a81;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:729;MOV	%RAX,-0x50(%RBP);
0x7a85;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:730;LEA	0x4c34(%RIP),%RDI;
0x7a8c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:730;CALL	22e0 <.plt.sec@start>;
0x7a91;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:732;MOV	0x18(%R12),%EAX;
0x7a96;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:732;MOV	0x20(%R12),%R15D;
0x7a9b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:732;IMUL	%EBX,%EAX;
0x7a9e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:732;INC	%R15D;
0x7aa1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:732;CLTD;
0x7aa2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:732;IDIV	%R15D;
0x7aa5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:732;MOV	%EDX,-0x38(%RBP);
0x7aa8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:733;CALL	2520 <.plt.sec@start+0x240>;
0x7aad;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;MOV	0x8(%R12),%R10D;
0x7ab2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;MOVL	$0,-0x34(%RBP);
0x7ab9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:733;VMOVSD	%XMM0,0x5837(%RIP);
0x7ac1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;TEST	%R10D,%R10D;
0x7ac4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;JG	7b3f <time_gatherv+0x16f>;
0x7ac6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;JMP	7f03 <time_gatherv+0x533>;
0x7acb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;NOPL	(%RAX,%RAX,1);
0x7ad0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;MOV	0x5856(%RIP),%EBX;(77) 
0x7ad6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;TEST	%EBX,%EBX;(77) 
0x7ad8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;JE	7ae3 <time_gatherv+0x113>;(77) 
0x7ada;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;DEC	%R10D;(77) 
0x7add;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;CMP	-0x34(%RBP),%R10D;(77) 
0x7ae1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;JE	7b49 <time_gatherv+0x179>;(77) 
0x7ae3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;SUB	$0x8,%RSP;(77) 
0x7ae7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x28(%R12),%RDX;(77) 
0x7aec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;PUSHQ	0x10(%R12);(77) 
0x7af1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0xc(%R12),%R10D;(77) 
0x7af6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x5833(%RIP),%RDI;(77) 
0x7afd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;PUSH	%R10;(77) 
0x7aff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x5812(%RIP),%R9;(77) 
0x7b06;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x57fb(%RIP),%R8;(77) 
0x7b0d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;PUSH	%RDX;(77) 
0x7b0e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x57eb(%RIP),%RCX;(77) 
0x7b15;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	-0x38(%RBP),%ESI;(77) 
0x7b18;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;CALL	2540 <.plt.sec@start+0x260>;(77) 
0x7b1d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:742;MOV	0x10(%R12),%RDI;(77) 
0x7b22;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:742;ADD	$0x20,%RSP;(77) 
0x7b26;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:742;CALL	22e0 <.plt.sec@start>;(77) 
0x7b2b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;INCL	-0x34(%RBP);(77) 
0x7b2e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;MOV	0x8(%R12),%R10D;(77) 
0x7b33;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;MOV	-0x34(%RBP),%ESI;(77) 
0x7b36;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;CMP	%ESI,%R10D;(77) 
0x7b39;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;JLE	7f03 <time_gatherv+0x533>;(77) 
0x7b3f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;MOV	0x57df(%RIP),%ESI;(77) 
0x7b45;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;TEST	%ESI,%ESI;(77) 
0x7b47;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:735;JE	7ad0 <time_gatherv+0x100>;(77) 
0x7b49;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x5780(%RIP),%R11;(77) 
0x7b50;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:737;MOV	0x18(%R12),%EDI;(77) 
0x7b55;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%R11,%R11;(77) 
0x7b58;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	7b87 <time_gatherv+0x1b7>;(77) 
0x7b5a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EDI;(77) 
0x7b5c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EDI,%EDX;(77) 
0x7b5e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R9D,%R9D;(77) 
0x7b61;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EDI;(77) 
0x7b63;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX,%RAX,1);(77) 
0x7b68;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x57c1(%RIP),%R8;  (81) 
0x7b6f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R9,%RCX;  (81) 
0x7b72;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%DL,(%R8,%RCX,1);  (81) 
0x7b76;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R9;  (81) 
0x7b79;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%EDI,%EDX;  (81) 
0x7b7b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x574e(%RIP),%R11;  (81) 
0x7b82;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%R11,%R9;  (81) 
0x7b85;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	7b68 <time_gatherv+0x198>;  (81) 
0x7b87;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x5772(%RIP),%RDI;(77) 
0x7b8e;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%R11,%RDX;(77) 
0x7b91;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;(77) 
0x7b93;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;(77) 
0x7b98;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;SUB	$0x8,%RSP;(77) 
0x7b9c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x28(%R12),%RDX;(77) 
0x7ba1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;PUSHQ	0x10(%R12);(77) 
0x7ba6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0xc(%R12),%R13D;(77) 
0x7bab;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x5766(%RIP),%R9;(77) 
0x7bb2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;PUSH	%R13;(77) 
0x7bb4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x574d(%RIP),%R8;(77) 
0x7bbb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x573e(%RIP),%RCX;(77) 
0x7bc2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;PUSH	%RDX;(77) 
0x7bc3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	-0x38(%RBP),%ESI;(77) 
0x7bc6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;MOV	0x5763(%RIP),%RDI;(77) 
0x7bcd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:741;CALL	2540 <.plt.sec@start+0x260>;(77) 
0x7bd2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:742;MOV	0x10(%R12),%RDI;(77) 
0x7bd7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:742;ADD	$0x20,%RSP;(77) 
0x7bdb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:742;CALL	22e0 <.plt.sec@start>;(77) 
0x7be0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	0x56e9(%RIP),%RAX;(77) 
0x7be7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:745;MOV	0x18(%R12),%R15D;(77) 
0x7bec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;TEST	%RAX,%RAX;(77) 
0x7bef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;JE	7c5f <time_gatherv+0x28f>;(77) 
0x7bf1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;LEA	0x1(%R15),%EBX;(77) 
0x7bf5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	%EBX,%R13D;(77) 
0x7bf8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	0x5731(%RIP),%RSI;(77) 
0x7bff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;INC	%EBX;(77) 
0x7c01;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;XOR	%ECX,%ECX;(77) 
0x7c03;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;JMP	7c48 <time_gatherv+0x278>;(77) 
0x7c05;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;NOPL	(%RAX);
0x7c08;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R15D,%EDX;  (80) 
0x7c0b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x189e(%RIP),%RSI;  (80) 
0x7c12;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (80) 
0x7c17;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (80) 
0x7c19;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;  (80) 
0x7c1e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:477;MOV	$0x1,%ESI;  (80) 
0x7c23;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:477;LEA	0x4a96(%RIP),%RDI;  (80) 
0x7c2a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:477;CALL	2420 <.plt.sec@start+0x140>;  (80) 
0x7c2f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:477;MOV	0x569a(%RIP),%RAX;  (80) 
0x7c36;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;ADD	%EBX,%R13D;  (80) 
0x7c39;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;CMP	%RAX,%R14;  (80) 
0x7c3c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;JAE	7c5a <time_gatherv+0x28a>;  (80) 
0x7c3e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	0x56eb(%RIP),%RSI;  (80) 
0x7c45;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:474;MOV	%R14,%RCX;  (80) 
0x7c48;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:474;LEA	0x1(%RCX),%R14;  (80) 
0x7c4c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:475;CMP	%R13B,(%RSI,%RCX,1);  (80) 
0x7c50;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:475;JNE	7c08 <time_gatherv+0x238>;  (80) 
0x7c52;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;ADD	%EBX,%R13D;  (80) 
0x7c55;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;CMP	%RAX,%R14;  (80) 
0x7c58;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;JB	7c45 <time_gatherv+0x275>;  (80) 
0x7c5a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	0x18(%R12),%R15D;(77) 
0x7c5f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:746;CMP	%R15D,0xc(%R12);(77) 
0x7c64;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:746;JNE	7b2b <time_gatherv+0x15b>;(77) 
0x7c6a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;MOV	0x1c(%R12),%EAX;(77) 
0x7c6f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;TEST	%EAX,%EAX;(77) 
0x7c71;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;JLE	7b2b <time_gatherv+0x15b>;(77) 
0x7c77;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;XOR	%R10D,%R10D;(77) 
0x7c7a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;MOV	%R12,-0x58(%RBP);(77) 
0x7c7e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;MOV	%R10,%R12;(77) 
0x7c81;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;NOPL	(%RAX);(77) 
0x7c88;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;MOV	0x5679(%RIP),%RDI;  (78) 
0x7c8f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;MOV	-0x50(%RBP),%R8;  (78) 
0x7c93;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;MOVSXD	(%RDI,%R12,4),%R9;  (78) 
0x7c97;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;MOV	0x567a(%RIP),%RCX;  (78) 
0x7c9e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;IMUL	%R8,%R9;  (78) 
0x7ca2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;MOVSXD	(%RCX,%R12,4),%RCX;  (78) 
0x7ca6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;MOV	0x5653(%RIP),%R15;  (78) 
0x7cad;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;IMUL	%R8,%RCX;  (78) 
0x7cb1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:748;MOV	%R12D,%R14D;  (78) 
0x7cb4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;TEST	%R9,%R9;  (78) 
0x7cb7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	7edf <time_gatherv+0x50f>;  (78) 
0x7cbd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	(%R9,%RCX,1),%RDX;  (78) 
0x7cc1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%RDX,-0x40(%RBP);  (78) 
0x7cc5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x1(%R12),%EBX;  (78) 
0x7cca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x2(%R12),%R13D;  (78) 
0x7ccf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;AND	$0x3,%R9D;  (78) 
0x7cd3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	7db6 <time_gatherv+0x3e6>;  (78) 
0x7cd9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;CMP	$0x1,%R9;  (78) 
0x7cdd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	7d6b <time_gatherv+0x39b>;  (78) 
0x7ce3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;CMP	$0x2,%R9;  (78) 
0x7ce7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	7d2a <time_gatherv+0x35a>;  (78) 
0x7ce9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%BL,(%R15,%RCX,1);  (78) 
0x7ced;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7d24 <time_gatherv+0x354>;  (78) 
0x7cef;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x55f3(%RIP),%EDX;  (78) 
0x7cf5;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R12D,%R8D;  (78) 
0x7cf8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x17f1(%RIP),%RSI;  (78) 
0x7cff;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (78) 
0x7d04;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (78) 
0x7d06;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RCX,-0x48(%RBP);  (78) 
0x7d0a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;  (78) 
0x7d0f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;  (78) 
0x7d14;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x49a5(%RIP),%RDI;  (78) 
0x7d1b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;  (78) 
0x7d20;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	-0x48(%RBP),%RCX;  (78) 
0x7d24;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%R13D,%EBX;  (78) 
0x7d27;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;INC	%RCX;  (78) 
0x7d2a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%BL,(%R15,%RCX,1);  (78) 
0x7d2e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7d65 <time_gatherv+0x395>;  (78) 
0x7d30;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x55b2(%RIP),%EDX;  (78) 
0x7d36;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R14D,%R8D;  (78) 
0x7d39;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x17b0(%RIP),%RSI;  (78) 
0x7d40;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (78) 
0x7d45;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (78) 
0x7d47;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RCX,-0x48(%RBP);  (78) 
0x7d4b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;  (78) 
0x7d50;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;  (78) 
0x7d55;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4964(%RIP),%RDI;  (78) 
0x7d5c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;  (78) 
0x7d61;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	-0x48(%RBP),%RCX;  (78) 
0x7d65;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%R13D,%EBX;  (78) 
0x7d68;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;INC	%RCX;  (78) 
0x7d6b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%BL,(%R15,%RCX,1);  (78) 
0x7d6f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7da6 <time_gatherv+0x3d6>;  (78) 
0x7d71;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5571(%RIP),%EDX;  (78) 
0x7d77;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R14D,%R8D;  (78) 
0x7d7a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x176f(%RIP),%RSI;  (78) 
0x7d81;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (78) 
0x7d86;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (78) 
0x7d88;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RCX,-0x48(%RBP);  (78) 
0x7d8c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;  (78) 
0x7d91;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;  (78) 
0x7d96;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4923(%RIP),%RDI;  (78) 
0x7d9d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;  (78) 
0x7da2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	-0x48(%RBP),%RCX;  (78) 
0x7da6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;INC	%RCX;  (78) 
0x7da9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%R13D,%EBX;  (78) 
0x7dac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;CMP	-0x40(%RBP),%RCX;  (78) 
0x7db0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	7ed7 <time_gatherv+0x507>;  (78) 
0x7db6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%R12,-0x60(%RBP);  (78) 
0x7dba;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%R14D,%R8D;  (78) 
0x7dbd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%RCX,%R12;  (78) 
0x7dc0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%R15,%R14;  (78) 
0x7dc3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%BL,(%R14,%R12,1);    (79) 
0x7dc7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7dfe <time_gatherv+0x42e>;    (79) 
0x7dc9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5519(%RIP),%EDX;    (79) 
0x7dcf;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R12,%RCX;    (79) 
0x7dd2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1717(%RIP),%RSI;    (79) 
0x7dd9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;    (79) 
0x7dde;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;    (79) 
0x7de0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R8D,-0x48(%RBP);    (79) 
0x7de4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;    (79) 
0x7de9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;    (79) 
0x7dee;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x48cb(%RIP),%RDI;    (79) 
0x7df5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;    (79) 
0x7dfa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	-0x48(%RBP),%R8D;    (79) 
0x7dfe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%R13D,%EBX;    (79) 
0x7e01;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x1(%R12),%R15;    (79) 
0x7e06;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%BL,0x1(%R14,%R12,1);    (79) 
0x7e0b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7e42 <time_gatherv+0x472>;    (79) 
0x7e0d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x54d5(%RIP),%EDX;    (79) 
0x7e13;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R15,%RCX;    (79) 
0x7e16;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x16d3(%RIP),%RSI;    (79) 
0x7e1d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;    (79) 
0x7e22;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;    (79) 
0x7e24;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R8D,-0x48(%RBP);    (79) 
0x7e28;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;    (79) 
0x7e2d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;    (79) 
0x7e32;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4887(%RIP),%RDI;    (79) 
0x7e39;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;    (79) 
0x7e3e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	-0x48(%RBP),%R8D;    (79) 
0x7e42;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%R13D,%EBX;    (79) 
0x7e45;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x1(%R15),%RCX;    (79) 
0x7e49;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%BL,0x1(%R14,%R15,1);    (79) 
0x7e4e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7e82 <time_gatherv+0x4b2>;    (79) 
0x7e50;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5492(%RIP),%EDX;    (79) 
0x7e56;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1693(%RIP),%RSI;    (79) 
0x7e5d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;    (79) 
0x7e62;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;    (79) 
0x7e64;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R8D,-0x48(%RBP);    (79) 
0x7e68;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;    (79) 
0x7e6d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;    (79) 
0x7e72;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4847(%RIP),%RDI;    (79) 
0x7e79;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;    (79) 
0x7e7e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	-0x48(%RBP),%R8D;    (79) 
0x7e82;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%R13D,%EBX;    (79) 
0x7e85;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x2(%R15),%RCX;    (79) 
0x7e89;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%BL,0x2(%R14,%R15,1);    (79) 
0x7e8e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7ec2 <time_gatherv+0x4f2>;    (79) 
0x7e90;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5452(%RIP),%EDX;    (79) 
0x7e96;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1653(%RIP),%RSI;    (79) 
0x7e9d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;    (79) 
0x7ea2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;    (79) 
0x7ea4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R8D,-0x48(%RBP);    (79) 
0x7ea8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;    (79) 
0x7ead;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;    (79) 
0x7eb2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4807(%RIP),%RDI;    (79) 
0x7eb9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;    (79) 
0x7ebe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	-0x48(%RBP),%R8D;    (79) 
0x7ec2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x3(%R15),%R12;    (79) 
0x7ec6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%R13D,%EBX;    (79) 
0x7ec9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;CMP	-0x40(%RBP),%R12;    (79) 
0x7ecd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JNE	7dc3 <time_gatherv+0x3f3>;    (79) 
0x7ed3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	-0x60(%RBP),%R12;  (78) 
0x7ed7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	-0x58(%RBP),%R11;  (78) 
0x7edb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	0x1c(%R11),%EAX;  (78) 
0x7edf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;INC	%R12;  (78) 
0x7ee2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;CMP	%R12D,%EAX;  (78) 
0x7ee5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:747;JG	7c88 <time_gatherv+0x2b8>;  (78) 
0x7eeb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;INCL	-0x34(%RBP);(77) 
0x7eee;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;MOV	-0x58(%RBP),%R12;(77) 
0x7ef2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;MOV	0x8(%R12),%R10D;(77) 
0x7ef7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;MOV	-0x34(%RBP),%ESI;(77) 
0x7efa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;CMP	%ESI,%R10D;(77) 
0x7efd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:734;JG	7b3f <time_gatherv+0x16f>;(77) 
0x7f03;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:753;CALL	2520 <.plt.sec@start+0x240>;
0x7f08;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:753;VMOVSD	%XMM0,0x53e0(%RIP);
0x7f10;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:755;VSUBSD	0x53e0(%RIP),%XMM0,%XMM0;
0x7f18;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:755;VXORPS	%XMM2,%XMM2,%XMM2;
0x7f1c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:755;VCVTSI2SDL	0x8(%R12),%XMM2,%XMM3;
0x7f23;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:755;VMULSD	0x1975(%RIP),%XMM0,%XMM1;
0x7f2b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:756;LEA	-0x28(%RBP),%RSP;
0x7f2f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:756;POP	%RBX;
0x7f30;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:756;POP	%R12;
0x7f32;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:756;POP	%R13;
0x7f34;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:756;POP	%R14;
0x7f36;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:756;POP	%R15;
0x7f38;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:755;VDIVSD	%XMM3,%XMM1,%XMM0;
0x7f3c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:756;POP	%RBP;
0x7f3d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:756;RET;
0x7f3e;:0;XCHG	%AX,%AX;
