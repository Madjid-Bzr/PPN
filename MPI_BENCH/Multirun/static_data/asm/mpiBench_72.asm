address;source_location;insn;indent
0x75c0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;MOV	0x5d66(%RIP),%EDI;
0x75c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;TEST	%EDI,%EDI;
0x75c8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;JE	75d1 <time_gather+0x61>;
0x75ca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;DEC	%ECX;
0x75cc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;CMP	-0x34(%RBP),%ECX;
0x75cf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;JE	7624 <time_gather+0xb4>;
0x75d1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0x28(%R15),%RDX;
0x75d5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0x20(%R15),%ESI;
0x75d9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;PUSHQ	0x10(%R15);
0x75dd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0xc(%R15),%EAX;
0x75e1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0x5d18(%RIP),%RCX;
0x75e8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;PUSH	%RAX;
0x75e9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0x5d40(%RIP),%RDI;
0x75f0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	%RDX,%R9;
0x75f3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	%ESI,%R8D;
0x75f6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;CALL	2430 <.plt.sec@start+0x150>;
0x75fb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:701;MOV	0x10(%R15),%RDI;
0x75ff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:701;CALL	22e0 <.plt.sec@start>;
0x7604;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:701;POP	%RAX;
0x7605;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:701;POP	%RDX;
0x7606;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;INCL	-0x34(%RBP);
0x7609;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;MOV	0x8(%R15),%ECX;
0x760d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;MOV	-0x34(%RBP),%EDI;
0x7610;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;CMP	%EDI,%ECX;
0x7612;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;JLE	7994 <time_gather+0x424>;
0x7618;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;MOV	0x5d05(%RIP),%R8D;
0x761f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;TEST	%R8D,%R8D;
0x7622;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:694;JE	75c0 <time_gather+0x50>;
0x7624;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x5ca5(%RIP),%R10;
0x762b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:696;MOV	0x18(%R15),%EBX;
0x762f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%R10,%R10;
0x7632;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	765e <time_gather+0xee>;
0x7634;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EBX;
0x7636;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EBX,%EDX;
0x7638;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R9D,%R9D;
0x763b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EBX;
0x763d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX);
0x7640;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x5ce9(%RIP),%RSI;  (76) 
0x7647;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R9,%RCX;  (76) 
0x764a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%DL,(%RSI,%RCX,1);  (76) 
0x764d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R9;  (76) 
0x7650;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%EBX,%EDX;  (76) 
0x7652;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x5c77(%RIP),%R10;  (76) 
0x7659;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%R10,%R9;  (76) 
0x765c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	7640 <time_gather+0xd0>;  (76) 
0x765e;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x5c9b(%RIP),%RDI;
0x7665;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%R10,%RDX;
0x7668;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;
0x766a;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;
0x766f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0x20(%R15),%ESI;
0x7673;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0x28(%R15),%RDX;
0x7677;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;PUSHQ	0x10(%R15);
0x767b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0xc(%R15),%R11D;
0x767f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0x5c7a(%RIP),%RCX;
0x7686;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;PUSH	%R11;
0x7688;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	0x5ca1(%RIP),%RDI;
0x768f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	%ESI,%R8D;
0x7692;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;MOV	%RDX,%R9;
0x7695;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:700;CALL	2430 <.plt.sec@start+0x150>;
0x769a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:701;MOV	0x10(%R15),%RDI;
0x769e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:701;CALL	22e0 <.plt.sec@start>;
0x76a3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	0x5c26(%RIP),%R8;
0x76aa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;POP	%RCX;
0x76ab;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:704;MOV	0x18(%R15),%R14D;
0x76af;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;POP	%RSI;
0x76b0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;TEST	%R8,%R8;
0x76b3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;JE	7725 <time_gather+0x1b5>;
0x76b5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;LEA	0x1(%R14),%R12D;
0x76b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	%R12D,%EBX;
0x76bc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	0x5c6d(%RIP),%RDI;
0x76c3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;INC	%R12D;
0x76c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;XOR	%ECX,%ECX;
0x76c8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;JMP	7710 <time_gather+0x1a0>;
0x76d0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R14D,%EDX;  (75) 
0x76d3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1dd6(%RIP),%RSI;  (75) 
0x76da;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (75) 
0x76df;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (75) 
0x76e1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;  (75) 
0x76e6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:477;MOV	$0x1,%ESI;  (75) 
0x76eb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:477;LEA	0x4fce(%RIP),%RDI;  (75) 
0x76f2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:477;CALL	2420 <.plt.sec@start+0x140>;  (75) 
0x76f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:477;MOV	0x5bd2(%RIP),%R8;  (75) 
0x76fe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;ADD	%R12D,%EBX;  (75) 
0x7701;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;CMP	%R8,%R13;  (75) 
0x7704;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;JAE	7721 <time_gather+0x1b1>;  (75) 
0x7706;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	0x5c23(%RIP),%RDI;  (75) 
0x770d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:474;MOV	%R13,%RCX;  (75) 
0x7710;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:474;LEA	0x1(%RCX),%R13;  (75) 
0x7714;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:475;CMP	%BL,(%RDI,%RCX,1);  (75) 
0x7717;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:475;JNE	76d0 <time_gather+0x160>;  (75) 
0x7719;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;ADD	%R12D,%EBX;  (75) 
0x771c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;CMP	%R8,%R13;  (75) 
0x771f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;JB	770d <time_gather+0x19d>;  (75) 
0x7721;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:473;MOV	0x18(%R15),%R14D;
0x7725;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:705;CMP	%R14D,0xc(%R15);
0x7729;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:705;JNE	7606 <time_gather+0x96>;
0x772f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;MOV	0x1c(%R15),%R11D;
0x7733;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;TEST	%R11D,%R11D;
0x7736;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;JLE	7606 <time_gather+0x96>;
0x773c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;MOVQ	$0,-0x40(%RBP);
0x7744;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;MOV	%R15,-0x50(%RBP);
0x7748;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;NOPL	(%RAX,%RAX,1);
0x7750;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:707;MOV	-0x50(%RBP),%R15;  (73) 
0x7754;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:707;MOV	-0x40(%RBP),%RCX;  (73) 
0x7758;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:707;MOV	(%R15),%RAX;  (73) 
0x775b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:707;MOV	%RCX,%R15;  (73) 
0x775e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:707;IMUL	%RAX,%R15;  (73) 
0x7762;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:707;MOV	0x5b97(%RIP),%R12;  (73) 
0x7769;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:707;MOV	%ECX,%R13D;  (73) 
0x776c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;TEST	%RAX,%RAX;  (73) 
0x776f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	796d <time_gather+0x3fd>;  (73) 
0x7775;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%ECX,%EDX;  (73) 
0x7777;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%ECX,%ESI;  (73) 
0x7779;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	(%RAX,%R15,1),%R9;  (73) 
0x777d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%R9,-0x48(%RBP);  (73) 
0x7781;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x1(%RDX),%R14D;  (73) 
0x7785;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x2(%RSI),%EBX;  (73) 
0x7788;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;AND	$0x3,%EAX;  (73) 
0x778b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	785c <time_gather+0x2ec>;  (73) 
0x7791;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;CMP	$0x1,%RAX;  (73) 
0x7795;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	7816 <time_gather+0x2a6>;  (73) 
0x7797;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;CMP	$0x2,%RAX;  (73) 
0x779b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	77da <time_gather+0x26a>;  (73) 
0x779d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%R14B,(%R12,%R15,1);  (73) 
0x77a1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	77d4 <time_gather+0x264>;  (73) 
0x77a3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	-0x40(%RBP),%R8D;  (73) 
0x77a7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5b3b(%RIP),%EDX;  (73) 
0x77ad;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1d3c(%RIP),%RSI;  (73) 
0x77b4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (73) 
0x77b9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R15,%RCX;  (73) 
0x77bc;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (73) 
0x77be;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;  (73) 
0x77c3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;  (73) 
0x77c8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4ef1(%RIP),%RDI;  (73) 
0x77cf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;  (73) 
0x77d4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%EBX,%R14D;  (73) 
0x77d7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;INC	%R15;  (73) 
0x77da;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%R14B,(%R12,%R15,1);  (73) 
0x77de;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7810 <time_gather+0x2a0>;  (73) 
0x77e0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5b02(%RIP),%EDX;  (73) 
0x77e6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1d03(%RIP),%RSI;  (73) 
0x77ed;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (73) 
0x77f2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13D,%R8D;  (73) 
0x77f5;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R15,%RCX;  (73) 
0x77f8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (73) 
0x77fa;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;  (73) 
0x77ff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;  (73) 
0x7804;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4eb5(%RIP),%RDI;  (73) 
0x780b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;  (73) 
0x7810;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%EBX,%R14D;  (73) 
0x7813;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;INC	%R15;  (73) 
0x7816;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%R14B,(%R12,%R15,1);  (73) 
0x781a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	784c <time_gather+0x2dc>;  (73) 
0x781c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5ac6(%RIP),%EDX;  (73) 
0x7822;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1cc7(%RIP),%RSI;  (73) 
0x7829;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (73) 
0x782e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13D,%R8D;  (73) 
0x7831;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R15,%RCX;  (73) 
0x7834;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (73) 
0x7836;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;  (73) 
0x783b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;  (73) 
0x7840;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4e79(%RIP),%RDI;  (73) 
0x7847;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;  (73) 
0x784c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;INC	%R15;  (73) 
0x784f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%EBX,%R14D;  (73) 
0x7852;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;CMP	%R15,-0x48(%RBP);  (73) 
0x7856;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JE	7965 <time_gather+0x3f5>;  (73) 
0x785c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%R15,%RCX;  (73) 
0x785f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%R12,%R15;  (73) 
0x7862;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	%R13D,%R12D;  (73) 
0x7865;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%R14B,(%R15,%RCX,1);    (74) 
0x7869;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	78a0 <time_gather+0x330>;    (74) 
0x786b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5a77(%RIP),%EDX;    (74) 
0x7871;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R12D,%R8D;    (74) 
0x7874;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1c75(%RIP),%RSI;    (74) 
0x787b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;    (74) 
0x7880;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;    (74) 
0x7882;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RCX,-0x58(%RBP);    (74) 
0x7886;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;    (74) 
0x788b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;    (74) 
0x7890;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4e29(%RIP),%RDI;    (74) 
0x7897;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;    (74) 
0x789c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	-0x58(%RBP),%RCX;    (74) 
0x78a0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%EBX,%R14D;    (74) 
0x78a3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x1(%RCX),%R13;    (74) 
0x78a7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%R14B,0x1(%R15,%RCX,1);    (74) 
0x78ac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	78de <time_gather+0x36e>;    (74) 
0x78ae;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5a34(%RIP),%EDX;    (74) 
0x78b4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1c35(%RIP),%RSI;    (74) 
0x78bb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;    (74) 
0x78c0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R12D,%R8D;    (74) 
0x78c3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RCX;    (74) 
0x78c6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;    (74) 
0x78c8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;    (74) 
0x78cd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;    (74) 
0x78d2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4de7(%RIP),%RDI;    (74) 
0x78d9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;    (74) 
0x78de;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%EBX,%R14D;    (74) 
0x78e1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x1(%R13),%RCX;    (74) 
0x78e5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%R14B,0x1(%R15,%R13,1);    (74) 
0x78ea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7919 <time_gather+0x3a9>;    (74) 
0x78ec;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x59f6(%RIP),%EDX;    (74) 
0x78f2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1bf7(%RIP),%RSI;    (74) 
0x78f9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;    (74) 
0x78fe;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R12D,%R8D;    (74) 
0x7901;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;    (74) 
0x7903;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;    (74) 
0x7908;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;    (74) 
0x790d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4dac(%RIP),%RDI;    (74) 
0x7914;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;    (74) 
0x7919;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%EBX,%R14D;    (74) 
0x791c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x2(%R13),%RCX;    (74) 
0x7920;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;CMP	%R14B,0x2(%R15,%R13,1);    (74) 
0x7925;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:490;JE	7954 <time_gather+0x3e4>;    (74) 
0x7927;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x59bb(%RIP),%EDX;    (74) 
0x792d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1bbc(%RIP),%RSI;    (74) 
0x7934;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;    (74) 
0x7939;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R12D,%R8D;    (74) 
0x793c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;    (74) 
0x793e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;    (74) 
0x7943;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;MOV	$0x1,%ESI;    (74) 
0x7948;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;LEA	0x4d71(%RIP),%RDI;    (74) 
0x794f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:492;CALL	2420 <.plt.sec@start+0x140>;    (74) 
0x7954;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;LEA	0x3(%R13),%RCX;    (74) 
0x7958;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;ADD	%EBX,%R14D;    (74) 
0x795b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;CMP	%RCX,-0x48(%RBP);    (74) 
0x795f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;JNE	7865 <time_gather+0x2f5>;    (74) 
0x7965;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	-0x50(%RBP),%R10;  (73) 
0x7969;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:488;MOV	0x1c(%R10),%R11D;  (73) 
0x796d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;INCQ	-0x40(%RBP);  (73) 
0x7971;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;MOV	-0x40(%RBP),%R8;  (73) 
0x7975;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;CMP	%R8D,%R11D;  (73) 
0x7978;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:706;JG	7750 <time_gather+0x1e0>;  (73) 
0x797e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;INCL	-0x34(%RBP);
0x7981;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;MOV	-0x50(%RBP),%R15;
0x7985;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;MOV	0x8(%R15),%ECX;
0x7989;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;MOV	-0x34(%RBP),%EDI;
0x798c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;CMP	%EDI,%ECX;
0x798e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:693;JG	7618 <time_gather+0xa8>;
