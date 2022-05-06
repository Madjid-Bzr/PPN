address;source_location;insn;indent
0x2580;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;ENDBR64;
0x2584;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;LEA	0x8(%RSP),%R10;
0x2589;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;AND	$-0x20,%RSP;
0x258d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;PUSHQ	-0x8(%R10);
0x2591;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;PUSH	%RBP;
0x2592;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;MOV	%RSP,%RBP;
0x2595;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;PUSH	%R15;
0x2597;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;PUSH	%R14;
0x2599;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;PUSH	%R13;
0x259b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;PUSH	%R12;
0x259d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;PUSH	%R10;
0x259f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;PUSH	%RBX;
0x25a0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;SUB	$0x240,%RSP;
0x25a7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;CALLQ	0x9a43(%RIP);
0x25ad;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;MOV	%EDI,-0x1d4(%RBP);
0x25b3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;MOV	%RSI,-0x1e0(%RBP);
0x25ba;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:874;LEA	-0x180(%RBP),%RDX;
0x25c1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;MOV	%FS:0x28,%RAX;
0x25ca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;MOV	%RAX,-0x38(%RBP);
0x25ce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:858;XOR	%EAX,%EAX;
0x25d0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:874;CALL	5370 <processArgs>;
0x25d5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:874;TEST	%EAX,%EAX;
0x25d7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:874;JE	4a47 <main+0x24c7>;
0x25dd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:882;MOV	-0x150(%RBP),%ESI;
0x25e3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:883;MOV	-0x14c(%RBP),%EDI;
0x25e9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:876;MOV	-0x178(%RBP),%RAX;
0x25f0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:879;VMOVSD	-0x160(%RBP),%XMM7;
0x25f8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:880;MOV	-0x158(%RBP),%EDX;
0x25fe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:881;MOV	-0x154(%RBP),%ECX;
0x2604;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:884;MOV	-0x148(%RBP),%R8D;
0x260b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:882;MOV	%ESI,0xad13(%RIP);
0x2611;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:883;MOV	%EDI,-0x1f0(%RBP);
0x2617;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:887;LEA	-0x1e0(%RBP),%RSI;
0x261e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:887;LEA	-0x1d4(%RBP),%RDI;
0x2625;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:876;MOV	%RAX,-0x1e8(%RBP);
0x262c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:880;MOV	%EDX,-0x218(%RBP);
0x2632;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:881;MOV	%ECX,0xacf4(%RIP);
0x2638;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:884;MOV	%R8D,-0x200(%RBP);
0x263f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:875;MOV	-0x180(%RBP),%EBX;
0x2645;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:877;MOV	-0x170(%RBP),%R15;
0x264c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:878;MOV	-0x168(%RBP),%R12;
0x2653;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:879;VMOVSD	%XMM7,-0x210(%RBP);
0x265b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:887;CALL	23a0 <.plt.sec@start+0xc0>;
0x2660;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:888;TEST	%EAX,%EAX;
0x2662;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:888;JNE	4a31 <main+0x24b1>;
0x2668;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:891;LEA	0xac79(%RIP),%RSI;
0x266f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:891;LEA	0xa04a(%RIP),%RDI;
0x2676;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:891;CALL	2470 <.plt.sec@start+0x190>;
0x267b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:892;LEA	0xaca6(%RIP),%RSI;
0x2682;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:892;LEA	0xa037(%RIP),%RDI;
0x2689;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:892;CALL	2400 <.plt.sec@start+0x120>;
0x268e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:895;MOV	0xac53(%RIP),%R9D;
0x2695;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:895;TEST	%R9D,%R9D;
0x2698;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:895;JE	4996 <main+0x2416>;
0x269e;/usr/include/x86_64-linux-gnu/bits/unistd.h:354;LEA	-0x140(%RBP),%R14;
0x26a5;/usr/include/x86_64-linux-gnu/bits/unistd.h:354;MOV	%R14,%RDI;
0x26a8;/usr/include/x86_64-linux-gnu/bits/unistd.h:354;MOV	$0x100,%ESI;
0x26ad;/usr/include/x86_64-linux-gnu/bits/unistd.h:354;CALL	2450 <.plt.sec@start+0x170>;
0x26b2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:899;MOVSXD	0xac6f(%RIP),%RDI;
0x26b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:899;LEA	0x6fb3(%RIP),%RSI;
0x26c0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:899;SAL	$0x8,%RDI;
0x26c4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:899;CALL	4d30 <_ALLOC_MAIN_>;
0x26c9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;LEA	0x9ff0(%RIP),%R11;
0x26d0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;PUSH	%R11;
0x26d2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;LEA	0x99e7(%RIP),%R9;
0x26d9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;MOV	%R14,%RDI;
0x26dc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;PUSH	$0;
0x26de;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;MOV	$0x100,%R8D;
0x26e4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;MOV	%RAX,%RCX;
0x26e7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;MOV	%R9,%RDX;
0x26ea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;MOV	$0x100,%ESI;
0x26ef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:899;MOV	%RAX,-0x260(%RBP);
0x26f6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:900;CALL	2430 <.plt.sec@start+0x150>;
0x26fb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:901;MOV	0xabe6(%RIP),%R14D;
0x2702;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:901;POP	%R13;
0x2704;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:901;POP	%RAX;
0x2705;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:901;TEST	%R14D,%R14D;
0x2708;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:901;JNE	274c <main+0x1cc>;
0x270a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:902;CMPL	$0,0xac17(%RIP);
0x2711;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:902;JLE	274c <main+0x1cc>;
0x2713;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:902;MOV	-0x260(%RBP),%R13;
0x271a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:902;NOPW	(%RAX,%RAX,1);
0x2720;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RCX;(35) 
0x2723;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R14D,%EDX;(35) 
0x2726;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;(35) 
0x2728;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x6f53(%RIP),%RSI;(35) 
0x272f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(35) 
0x2734;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:902;INC	%R14D;(35) 
0x2737;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;(35) 
0x273c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:902;ADD	$0x100,%R13;(35) 
0x2743;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:902;CMP	%R14D,0xabde(%RIP);(35) 
0x274a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:902;JG	2720 <main+0x1a0>;(35) 
0x274c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;MOVSXD	0xabd5(%RIP),%R10;
0x2753;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;MOV	%R15,%RDI;
0x2756;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;IMUL	%R10,%RDI;
0x275a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;LEA	(%RDI,%RDI,1),%RAX;
0x275e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;CMP	%RAX,%R12;
0x2761;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;JB	277b <main+0x1fb>;
0x2763;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;JMP	2780 <main+0x200>;
0x2765;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;NOPL	(%RAX);
0x2768;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;SHR	$0x1,%R15;(34) 
0x276b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;MOV	%R15,%RDI;(34) 
0x276e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;IMUL	%R10,%RDI;(34) 
0x2772;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;LEA	(%RDI,%RDI,1),%RDX;(34) 
0x2776;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;CMP	%R12,%RDX;(34) 
0x2779;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;JBE	2780 <main+0x200>;(34) 
0x277b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;TEST	%R15,%R15;(34) 
0x277e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:908;JNE	2768 <main+0x1e8>;(34) 
0x2780;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:910;LEA	0x6f04(%RIP),%RSI;
0x2787;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:909;MOV	%RDI,0xab42(%RIP);
0x278e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:910;CALL	4d30 <_ALLOC_MAIN_>;
0x2793;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:911;MOVSXD	0xab8e(%RIP),%RDI;
0x279a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:911;LEA	0x6ef6(%RIP),%RSI;
0x27a1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:911;IMUL	%R15,%RDI;
0x27a5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:910;MOV	%RAX,0xab84(%RIP);
0x27ac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:921;XOR	%R12D,%R12D;
0x27af;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:911;CALL	4d30 <_ALLOC_MAIN_>;
0x27b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:912;MOVSXD	0xab6d(%RIP),%RDI;
0x27bb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:912;LEA	0x6ee4(%RIP),%RSI;
0x27c2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:912;SAL	$0x2,%RDI;
0x27c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:911;MOV	%RAX,0xab33(%RIP);
0x27cd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:912;CALL	4d30 <_ALLOC_MAIN_>;
0x27d2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:913;MOVSXD	0xab4f(%RIP),%RDI;
0x27d9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:913;LEA	0x6ed2(%RIP),%RSI;
0x27e0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:913;SAL	$0x2,%RDI;
0x27e4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:912;MOV	%RAX,0xab25(%RIP);
0x27eb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:913;CALL	4d30 <_ALLOC_MAIN_>;
0x27f0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:914;MOVSXD	0xab31(%RIP),%RDI;
0x27f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:914;LEA	0x6ec7(%RIP),%RSI;
0x27fe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:914;SAL	$0x2,%RDI;
0x2802;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:913;MOV	%RAX,0xaad7(%RIP);
0x2809;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:914;CALL	4d30 <_ALLOC_MAIN_>;
0x280e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:915;MOVSXD	0xab13(%RIP),%RDI;
0x2815;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:915;LEA	0x6eb5(%RIP),%RSI;
0x281c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:915;SAL	$0x2,%RDI;
0x2820;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:914;MOV	%RAX,0xaae1(%RIP);
0x2827;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:915;CALL	4d30 <_ALLOC_MAIN_>;
0x282c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:922;MOV	-0x200(%RBP),%ECX;
0x2832;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:915;MOV	%RAX,0xaadf(%RIP);
0x2839;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:921;MOV	%R12D,-0x1f8(%RBP);
0x2840;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:922;TEST	%ECX,%ECX;
0x2842;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:922;JLE	2860 <main+0x2e0>;
0x2844;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:924;MOV	0xaade(%RIP),%ESI;
0x284a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:925;CMP	%ESI,%ECX;
0x284c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:925;JG	2860 <main+0x2e0>;
0x284e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:925;XCHG	%AX,%AX;
0x2850;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:927;SAR	$0x1,%ESI;(33) 
0x2852;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:926;INC	%R12D;(33) 
0x2855;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:925;CMP	%ESI,%ECX;(33) 
0x2857;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:925;JLE	2850 <main+0x2d0>;(33) 
0x2859;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:925;MOV	%R12D,-0x1f8(%RBP);
0x2860;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:932;MOV	-0x1f0(%RBP),%R12D;
0x2867;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:935;MOV	0x9752(%RIP),%RSI;
0x286e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:935;MOV	0x9783(%RIP),%RDI;
0x2875;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:932;LEA	0x1(%R12),%R14D;
0x287a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:935;LEA	-0x1d0(%RBP),%RCX;
0x2881;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:935;LEA	0xaa98(%RIP),%RDX;
0x2888;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:932;MOV	%R14D,-0x21c(%RBP);
0x288f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:932;ADD	-0x1f8(%RBP),%R14D;
0x2896;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:932;MOV	%R14D,-0x208(%RBP);
0x289d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:935;CALL	2500 <.plt.sec@start+0x220>;
0x28a2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:936;MOVSXD	%R14D,%RDI;
0x28a5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:936;SAL	$0x3,%RDI;
0x28a9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:936;LEA	0x6e34(%RIP),%RSI;
0x28b0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:937;SAL	$0x8,%R14D;
0x28b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:936;CALL	4d30 <_ALLOC_MAIN_>;
0x28b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:937;MOVSXD	%R14D,%RDI;
0x28bc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:937;LEA	0x6c7d(%RIP),%RSI;
0x28c3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:936;MOV	%RAX,%R13;
0x28c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:937;CALL	4d30 <_ALLOC_MAIN_>;
0x28cb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:940;LEA	0x9dee(%RIP),%RDI;
0x28d2;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:90;MOV	$0x4d4d4f435f49504d,%R8;
0x28dc;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:90;MOV	$0x444c,%R9D;
0x28e2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:940;MOV	%RDI,(%R13);
0x28e6;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:90;MOV	%R8,(%RAX);
0x28e9;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:90;MOVL	$0x524f575f,0x8(%RAX);
0x28f0;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:90;MOV	%R9W,0xc(%RAX);
0x28f5;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:90;MOVB	$0,0xe(%RAX);
0x28f9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:942;MOV	0xaa21(%RIP),%ESI;
0x28ff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:942;MOV	%RAX,%RDX;
0x2902;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:942;LEA	0x9db7(%RIP),%RDI;
0x2909;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:940;MOV	%R13,-0x250(%RBP);
0x2910;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:942;MOV	%RAX,-0x258(%RBP);
0x2917;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:943;MOV	$0x1,%R13D;
0x291d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:942;CALL	2530 <.plt.sec@start+0x250>;
0x2922;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:947;TEST	%R12D,%R12D;
0x2925;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:947;JG	4513 <main+0x1f93>;
0x292b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOV	-0x1f8(%RBP),%R12D;
0x2932;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:989;MOV	0xa9ef(%RIP),%R14D;
0x2939;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;TEST	%R12D,%R12D;
0x293c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;JE	2a6e <main+0x4ee>;
0x2942;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOV	-0x1f8(%RBP),%R9D;
0x2949;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOVSXD	%R13D,%RDX;
0x294c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOV	-0x250(%RBP),%R8;
0x2953;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;DEC	%R9D;
0x2956;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;ADD	%RDX,%R9;
0x2959;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;LEA	0x8(%R8,%R9,8),%RAX;
0x295e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;LEA	(%R8,%RDX,8),%R12;
0x2962;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;SAL	$0x8,%R13D;
0x2966;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOV	%RAX,-0x1f0(%RBP);
0x296d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOVSXD	%R13D,%R13;
0x2970;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;SUB	%R12,%RAX;
0x2973;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;ADD	-0x258(%RBP),%R13;
0x297a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;TEST	$0x8,%AL;
0x297c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;JNE	44a1 <main+0x1f21>;
0x2982;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOV	%EBX,-0x1f8(%RBP);
0x2988;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOV	%R15,-0x200(%RBP);
0x298f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	0xa952(%RIP),%R15D;(31) 
0x2996;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;MOV	%R12,%RCX;(31) 
0x2999;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	%R15D,%EAX;(31) 
0x299c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;CLTD;(31) 
0x299d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;IDIV	%R14D;(31) 
0x29a0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;LEA	0x9d19(%RIP),%RDI;(31) 
0x29a7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;MOV	%R15D,%EDX;(31) 
0x29aa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:997;MOV	%R14D,%EBX;(31) 
0x29ad;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:997;SAR	$0x1,%EBX;(31) 
0x29af;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:997;LEA	0x100(%R13),%R15;(31) 
0x29b6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	%EAX,%ESI;(31) 
0x29b8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;CALL	24b0 <.plt.sec@start+0x1d0>;(31) 
0x29bd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%R14D,%R8D;(31) 
0x29c0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;LEA	0x6d5c(%RIP),%RCX;(31) 
0x29c7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%R13,%RDI;(31) 
0x29ca;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	$-0x1,%RDX;(31) 
0x29d1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	$0x1,%ESI;(31) 
0x29d6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;XOR	%EAX,%EAX;(31) 
0x29d8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;CALL	2510 <.plt.sec@start+0x230>;(31) 
0x29dd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	(%R12),%RDI;(31) 
0x29e1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	0xa939(%RIP),%ESI;(31) 
0x29e7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	%R13,%RDX;(31) 
0x29ea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;CALL	2530 <.plt.sec@start+0x250>;(31) 
0x29ef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	0xa8f2(%RIP),%R11D;(31) 
0x29f6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;LEA	0x8(%R12),%RCX;(31) 
0x29fb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	%R11D,%EAX;(31) 
0x29fe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;CLTD;(31) 
0x29ff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;IDIV	%EBX;(31) 
0x2a01;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;LEA	0x9cb8(%RIP),%RDI;(31) 
0x2a08;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;MOV	%R11D,%EDX;(31) 
0x2a0b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;ADD	$0x10,%R12;(31) 
0x2a0f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:997;SAR	$0x2,%R14D;(31) 
0x2a13;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:997;ADD	$0x200,%R13;(31) 
0x2a1a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	%EAX,%ESI;(31) 
0x2a1c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;CALL	24b0 <.plt.sec@start+0x1d0>;(31) 
0x2a21;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%EBX,%R8D;(31) 
0x2a24;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;LEA	0x6cf8(%RIP),%RCX;(31) 
0x2a2b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	$-0x1,%RDX;(31) 
0x2a32;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	$0x1,%ESI;(31) 
0x2a37;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%R15,%RDI;(31) 
0x2a3a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;XOR	%EAX,%EAX;(31) 
0x2a3c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;CALL	2510 <.plt.sec@start+0x230>;(31) 
0x2a41;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	-0x8(%R12),%RDI;(31) 
0x2a46;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	0xa8d4(%RIP),%ESI;(31) 
0x2a4c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	%R15,%RDX;(31) 
0x2a4f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;CALL	2530 <.plt.sec@start+0x250>;(31) 
0x2a54;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;CMP	%R12,-0x1f0(%RBP);(31) 
0x2a5b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;JNE	298f <main+0x40f>;(31) 
0x2a61;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOV	-0x1f8(%RBP),%EBX;
0x2a67;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;MOV	-0x200(%RBP),%R15;
0x2a6e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1002;MOV	-0x208(%RBP),%ECX;
0x2a74;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1002;TEST	%ECX,%ECX;
0x2a76;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1002;JLE	4368 <main+0x1de8>;
0x2a7c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1018;MOV	-0x218(%RBP),%EDI;
0x2a82;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1021;VCVTTSD2SI	-0x210(%RBP),%R13D;
0x2a8a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1018;MOV	%EDI,%ESI;
0x2a8c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1018;AND	$0x1,%ESI;
0x2a8f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;MOV	%EDI,%R14D;
0x2a92;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;MOV	%EDI,%R8D;
0x2a95;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;MOV	%EDI,%R12D;
0x2a98;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;MOV	%EDI,%R9D;
0x2a9b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;MOV	%EDI,%R10D;
0x2a9e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;MOV	%EDI,%R11D;
0x2aa1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;MOV	%EDI,%EAX;
0x2aa3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;MOV	%EDI,%EDX;
0x2aa5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;MOV	%EDI,%ECX;
0x2aa7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1018;MOV	%ESI,-0x200(%RBP);
0x2aad;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;AND	$0x80,%EDI;
0x2ab3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;MOV	-0x208(%RBP),%ESI;
0x2ab9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;MOV	%EDI,-0x21c(%RBP);
0x2abf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;MOV	-0x250(%RBP),%RDI;
0x2ac6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;AND	$0x2,%R14D;
0x2aca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;AND	$0x4,%R8D;
0x2ace;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;AND	$0x100,%R12D;
0x2ad5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;DEC	%ESI;
0x2ad7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;MOV	%R14D,-0x1d8(%RBP);
0x2ade;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;MOV	%R8D,-0x240(%RBP);
0x2ae5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;MOV	%R12D,-0x228(%RBP);
0x2aec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;AND	$0x8,%R9D;
0x2af0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;AND	$0x200,%R10D;
0x2af7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;AND	$0x10,%R11D;
0x2afb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;AND	$0x400,%EAX;
0x2b00;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;AND	$0x20,%EDX;
0x2b03;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;AND	$0x40,%ECX;
0x2b06;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;LEA	0x8(%RDI,%RSI,8),%R14;
0x2b0b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;LEA	-0x1cc(%RBP),%R8;
0x2b12;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;LEA	-0x1c8(%RBP),%R12;
0x2b19;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;MOV	%R9D,-0x220(%RBP);
0x2b20;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;MOV	%R10D,-0x230(%RBP);
0x2b27;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;MOV	%R11D,-0x234(%RBP);
0x2b2e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;MOV	%EAX,-0x238(%RBP);
0x2b34;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;MOV	%EDX,-0x23c(%RBP);
0x2b3a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;MOV	%ECX,-0x244(%RBP);
0x2b40;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;MOV	%RDI,-0x1f8(%RBP);
0x2b47;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;MOV	%R14,-0x208(%RBP);
0x2b4e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;MOV	%R8,-0x210(%RBP);
0x2b55;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;MOV	%R12,-0x218(%RBP);
0x2b5c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;JMP	2c38 <main+0x6b8>;
0x2b61;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;NOPL	(%RAX);
0x2b68;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;MOV	-0x1d8(%RBP),%EDX;(1) 
0x2b6e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;TEST	%EDX,%EDX;(1) 
0x2b70;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;JNE	2eed <main+0x96d>;(1) 
0x2b76;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;MOV	-0x240(%RBP),%ESI;(1) 
0x2b7c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;TEST	%ESI,%ESI;(1) 
0x2b7e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;JNE	41a8 <main+0x1c28>;(1) 
0x2b84;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;MOV	-0x228(%RBP),%R12D;(1) 
0x2b8b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;TEST	%R12D,%R12D;(1) 
0x2b8e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;JNE	3fe8 <main+0x1a68>;(1) 
0x2b94;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;MOV	-0x220(%RBP),%R14D;(1) 
0x2b9b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;TEST	%R14D,%R14D;(1) 
0x2b9e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;JNE	33a8 <main+0xe28>;(1) 
0x2ba4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;MOV	-0x230(%RBP),%R12D;(1) 
0x2bab;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;TEST	%R12D,%R12D;(1) 
0x2bae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;JNE	3e28 <main+0x18a8>;(1) 
0x2bb4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;MOV	-0x234(%RBP),%R14D;(1) 
0x2bbb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;TEST	%R14D,%R14D;(1) 
0x2bbe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;JNE	3c68 <main+0x16e8>;(1) 
0x2bc4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;MOV	-0x238(%RBP),%R12D;(1) 
0x2bcb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;TEST	%R12D,%R12D;(1) 
0x2bce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;JNE	3aa8 <main+0x1528>;(1) 
0x2bd4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;MOV	-0x23c(%RBP),%R14D;(1) 
0x2bdb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;TEST	%R14D,%R14D;(1) 
0x2bde;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;JNE	38c8 <main+0x1348>;(1) 
0x2be4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;MOV	-0x244(%RBP),%EDX;(1) 
0x2bea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1081;LEA	0x98cf(%RIP),%R14;(1) 
0x2bf1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1082;LEA	0x9cc8(%RIP),%R12;(1) 
0x2bf8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1081;MOV	%R14,-0x198(%RBP);(1) 
0x2bff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1082;MOV	%R12,-0x190(%RBP);(1) 
0x2c06;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;TEST	%EDX,%EDX;(1) 
0x2c08;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;JNE	3568 <main+0xfe8>;(1) 
0x2c0e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;MOV	-0x21c(%RBP),%EDX;(1) 
0x2c14;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;TEST	%EDX,%EDX;(1) 
0x2c16;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;JNE	30b8 <main+0xb38>;(1) 
0x2c1c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1002;ADDQ	$0x8,-0x1f8(%RBP);(1) 
0x2c24;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1002;MOV	-0x1f8(%RBP),%RDX;(1) 
0x2c2b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1002;CMP	%RDX,-0x208(%RBP);(1) 
0x2c32;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1002;JE	4368 <main+0x1de8>;(1) 
0x2c38;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1003;MOV	-0x1f8(%RBP),%R9;(1) 
0x2c3f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1007;MOV	-0x210(%RBP),%RSI;(1) 
0x2c46;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1003;MOV	(%R9),%R14;(1) 
0x2c49;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1007;MOV	%R14,%RDI;(1) 
0x2c4c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1007;CALL	2470 <.plt.sec@start+0x190>;(1) 
0x2c51;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1008;MOV	-0x218(%RBP),%RSI;(1) 
0x2c58;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1008;MOV	%R14,%RDI;(1) 
0x2c5b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1008;CALL	2400 <.plt.sec@start+0x120>;(1) 
0x2c60;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1013;MOV	-0x1cc(%RBP),%ECX;(1) 
0x2c66;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1014;MOV	-0x1c8(%RBP),%R10D;(1) 
0x2c6d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1018;MOV	-0x200(%RBP),%EAX;(1) 
0x2c73;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1015;LEA	0xa446(%RIP),%R11;(1) 
0x2c7a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1011;MOVL	$0,-0x1b4(%RBP);(1) 
0x2c84;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1012;MOV	%R14,-0x1b0(%RBP);(1) 
0x2c8b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1013;MOV	%ECX,-0x1a8(%RBP);(1) 
0x2c91;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1014;MOV	%R10D,-0x1a4(%RBP);(1) 
0x2c98;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1015;MOV	%R11,-0x198(%RBP);(1) 
0x2c9f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1018;TEST	%EAX,%EAX;(1) 
0x2ca1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1018;JE	2b68 <main+0x5e8>;(1) 
0x2ca7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0xa622(%RIP),%R8;(1) 
0x2cae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1019;MOVQ	$0,-0x1c0(%RBP);(1) 
0x2cb9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1020;MOVL	$0,-0x1a0(%RBP);(1) 
0x2cc3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%R8,%R8;(1) 
0x2cc6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	2cf6 <main+0x776>;(1) 
0x2cc8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%ECX;(1) 
0x2cca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%ECX,%EDX;(1) 
0x2ccc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R12D,%R12D;(1) 
0x2ccf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%ECX;(1) 
0x2cd1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX);(1) 
0x2cd8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0xa651(%RIP),%RDI;  (30) 
0x2cdf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R12,%RSI;  (30) 
0x2ce2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%DL,(%RDI,%RSI,1);  (30) 
0x2ce5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R12;  (30) 
0x2ce8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%ECX,%EDX;  (30) 
0x2cea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0xa5df(%RIP),%R8;  (30) 
0x2cf1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%R8,%R12;  (30) 
0x2cf4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	2cd8 <main+0x758>;  (30) 
0x2cf6;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0xa603(%RIP),%RDI;(1) 
0x2cfd;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%R8,%RDX;(1) 
0x2d00;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;(1) 
0x2d02;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;(1) 
0x2d07;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:512;LEA	0x99b2(%RIP),%RDI;(1) 
0x2d0e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);(1) 
0x2d18;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:512;CALL	22e0 <.plt.sec@start>;(1) 
0x2d1d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:514;CALL	2520 <.plt.sec@start+0x240>;(1) 
0x2d22;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;MOV	-0x1b8(%RBP),%R9D;(1) 
0x2d29;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:514;VMOVSD	%XMM0,0xa5c7(%RIP);(1) 
0x2d31;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;XOR	%R14D,%R14D;(1) 
0x2d34;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;TEST	%R9D,%R9D;(1) 
0x2d37;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;JLE	2d58 <main+0x7d8>;(1) 
0x2d39;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;NOPL	(%RAX);(1) 
0x2d40;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:516;MOV	-0x1b0(%RBP),%RDI;  (29) 
0x2d47;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;INC	%R14D;  (29) 
0x2d4a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:516;CALL	22e0 <.plt.sec@start>;  (29) 
0x2d4f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;CMP	-0x1b8(%RBP),%R14D;  (29) 
0x2d56;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;JL	2d40 <main+0x7c0>;  (29) 
0x2d58;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:518;CALL	2520 <.plt.sec@start+0x240>;(1) 
0x2d5d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:512;LEA	0x995c(%RIP),%RDI;(1) 
0x2d64;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:518;VMOVSD	%XMM0,0xa584(%RIP);(1) 
0x2d6c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);(1) 
0x2d76;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:512;CALL	22e0 <.plt.sec@start>;(1) 
0x2d7b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:514;CALL	2520 <.plt.sec@start+0x240>;(1) 
0x2d80;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;MOV	-0x1b8(%RBP),%ECX;(1) 
0x2d86;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:514;VMOVSD	%XMM0,0xa56a(%RIP);(1) 
0x2d8e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;XOR	%R12D,%R12D;(1) 
0x2d91;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;TEST	%ECX,%ECX;(1) 
0x2d93;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;JLE	2db0 <main+0x830>;(1) 
0x2d95;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;NOPL	(%RAX);(1) 
0x2d98;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:516;MOV	-0x1b0(%RBP),%RDI;  (28) 
0x2d9f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;INC	%R12D;  (28) 
0x2da2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:516;CALL	22e0 <.plt.sec@start>;  (28) 
0x2da7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;CMP	-0x1b8(%RBP),%R12D;  (28) 
0x2dae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;JL	2d98 <main+0x818>;  (28) 
0x2db0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:518;CALL	2520 <.plt.sec@start+0x240>;(1) 
0x2db5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VSUBSD	0xa53b(%RIP),%XMM0,%XMM5;(1) 
0x2dbd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:518;VMOVSD	%XMM0,0xa52b(%RIP);(1) 
0x2dc5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VXORPD	%XMM0,%XMM0,%XMM0;(1) 
0x2dc9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VMULSD	0x6acf(%RIP),%XMM5,%XMM13;(1) 
0x2dd1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VCVTSI2SDL	-0x1b8(%RBP),%XMM0,%XMM14;(1) 
0x2dd9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;MOV	%EBX,%R10D;(1) 
0x2ddc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VDIVSD	%XMM14,%XMM13,%XMM15;(1) 
0x2de1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;(1) 
0x2de4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	2dff <main+0x87f>;(1) 
0x2de6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM7,%XMM7,%XMM7;(1) 
0x2dea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM7,%XMM1;(1) 
0x2def;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM15,%XMM1,%XMM6;(1) 
0x2df4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM6,%R10D;(1) 
0x2df8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%R10D;(1) 
0x2dfb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%R10D;(1) 
0x2dff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;(1) 
0x2e01;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	-0x1c4(%RBP),%RDI;(1) 
0x2e08;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x98b1(%RIP),%R8;(1) 
0x2e0f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x94aa(%RIP),%RDX;(1) 
0x2e16;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;(1) 
0x2e1b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%R10D,-0x1c4(%RBP);(1) 
0x2e22;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;VMOVSD	%XMM15,-0x1f0(%RBP);(1) 
0x2e2a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;(1) 
0x2e2f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%R11D;(1) 
0x2e36;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM0;(1) 
0x2e3e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%R11D;(1) 
0x2e42;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	4350 <main+0x1dd0>;(1) 
0x2e48;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:512;LEA	0x9871(%RIP),%RDI;(1) 
0x2e4f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%R11D,-0x1b8(%RBP);(1) 
0x2e56;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:512;CALL	22e0 <.plt.sec@start>;(1) 
0x2e5b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:514;CALL	2520 <.plt.sec@start+0x240>;(1) 
0x2e60;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;MOV	-0x1b8(%RBP),%EAX;(1) 
0x2e66;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:514;VMOVSD	%XMM0,0xa48a(%RIP);(1) 
0x2e6e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;XOR	%R14D,%R14D;(1) 
0x2e71;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;TEST	%EAX,%EAX;(1) 
0x2e73;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;JLE	2e90 <main+0x910>;(1) 
0x2e75;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;NOPL	(%RAX);(1) 
0x2e78;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:516;MOV	-0x1b0(%RBP),%RDI;  (27) 
0x2e7f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;INC	%R14D;  (27) 
0x2e82;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:516;CALL	22e0 <.plt.sec@start>;  (27) 
0x2e87;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;CMP	-0x1b8(%RBP),%R14D;  (27) 
0x2e8e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:515;JL	2e78 <main+0x8f8>;  (27) 
0x2e90;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:518;CALL	2520 <.plt.sec@start+0x240>;(1) 
0x2e95;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VSUBSD	0xa45b(%RIP),%XMM0,%XMM4;(1) 
0x2e9d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VXORPD	%XMM9,%XMM9,%XMM9;(1) 
0x2ea2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VCVTSI2SDL	-0x1b8(%RBP),%XMM9,%XMM10;(1) 
0x2eaa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VMULSD	0x69ee(%RIP),%XMM4,%XMM8;(1) 
0x2eb2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:518;VMOVSD	%XMM0,0xa436(%RIP);(1) 
0x2eba;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;MOV	-0x1c4(%RBP),%EDX;(1) 
0x2ec0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:520;VDIVSD	%XMM10,%XMM8,%XMM0;(1) 
0x2ec5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;(1) 
0x2ecc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;(1) 
0x2ed3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x66a2(%RIP),%RDI;(1) 
0x2eda;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;(1) 
0x2edf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;MOV	-0x1d8(%RBP),%EDX;(1) 
0x2ee5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;TEST	%EDX,%EDX;(1) 
0x2ee7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1024;JE	2b76 <main+0x5f6>;(1) 
0x2eed;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;MOV	-0x1e8(%RBP),%RCX;(1) 
0x2ef4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;MOV	%RCX,-0x1c0(%RBP);(1) 
0x2efb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;CMP	%RCX,%R15;(1) 
0x2efe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;JB	49b5 <main+0x2435>;(1) 
0x2f04;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;LEA	-0x1c0(%RBP),%R12;(1) 
0x2f0b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;LEA	-0x1c4(%RBP),%R14;(1) 
0x2f12;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;NOPW	(%RAX,%RAX,1);(1) 
0x2f18;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0xa3b1(%RIP),%R11;  (25) 
0x2f1f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1026;MOV	%ECX,-0x1a0(%RBP);  (25) 
0x2f25;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%EAX;  (25) 
0x2f2b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%R11,%R11;  (25) 
0x2f2e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	2f60 <main+0x9e0>;  (25) 
0x2f30;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EAX;  (25) 
0x2f32;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EAX,%ECX;  (25) 
0x2f34;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;LEA	0x1(%RAX),%R9D;  (25) 
0x2f38;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R10D,%R10D;  (25) 
0x2f3b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX,%RAX,1);  (25) 
0x2f40;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0xa3e9(%RIP),%RDI;    (26) 
0x2f47;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R10,%R8;    (26) 
0x2f4a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%CL,(%RDI,%R8,1);    (26) 
0x2f4e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R10;    (26) 
0x2f51;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%R9D,%ECX;    (26) 
0x2f54;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0xa375(%RIP),%R11;    (26) 
0x2f5b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%R11,%R10;    (26) 
0x2f5e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	2f40 <main+0x9c0>;    (26) 
0x2f60;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0xa399(%RIP),%RDI;  (25) 
0x2f67;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%R11,%RDX;  (25) 
0x2f6a;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (25) 
0x2f6c;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (25) 
0x2f71;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;MOV	%R12,%RDI;  (25) 
0x2f74;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (25) 
0x2f7e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	5c30 <time_bcast>;  (25) 
0x2f83;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;MOV	%R12,%RDI;  (25) 
0x2f86;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (25) 
0x2f90;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;CALL	5c30 <time_bcast>;  (25) 
0x2f95;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;VMOVAPD	%XMM0,%XMM11;  (25) 
0x2f99;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;MOV	%EBX,%EDX;  (25) 
0x2f9b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (25) 
0x2f9e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	2fb7 <main+0xa37>;  (25) 
0x2fa0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM12,%XMM12,%XMM12;  (25) 
0x2fa5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM12,%XMM3;  (25) 
0x2faa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM0,%XMM3,%XMM2;  (25) 
0x2fae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM2,%EDX;  (25) 
0x2fb2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%EDX;  (25) 
0x2fb4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%EDX;  (25) 
0x2fb7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%EDX,-0x1c4(%RBP);  (25) 
0x2fbd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (25) 
0x2fbf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (25) 
0x2fc4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x96f5(%RIP),%R8;  (25) 
0x2fcb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x92ee(%RIP),%RDX;  (25) 
0x2fd2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	%R14,%RDI;  (25) 
0x2fd5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;VMOVSD	%XMM11,-0x1f0(%RBP);  (25) 
0x2fdd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (25) 
0x2fe2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%ESI;  (25) 
0x2fe8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM5;  (25) 
0x2ff0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%ESI;  (25) 
0x2ff3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	30a0 <main+0xb20>;  (25) 
0x2ff9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	%R12,%RDI;  (25) 
0x2ffc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%ESI,-0x1b8(%RBP);  (25) 
0x3002;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;CALL	5c30 <time_bcast>;  (25) 
0x3007;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	-0x1c4(%RBP),%EDX;  (25) 
0x300d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;VMOVAPD	%XMM0,%XMM5;  (25) 
0x3011;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (25) 
0x3018;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (25) 
0x301f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x6562(%RIP),%RDI;  (25) 
0x3026;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;VMOVAPD	%XMM5,%XMM0;  (25) 
0x302a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (25) 
0x302f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;MOV	-0x1c0(%RBP),%RCX;  (25) 
0x3036;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;TEST	%RCX,%RCX;  (25) 
0x3039;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;JE	3080 <main+0xb00>;  (25) 
0x303b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;ADD	%RCX,%RCX;  (25) 
0x303e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;MOV	%RCX,-0x1c0(%RBP);  (25) 
0x3045;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;CMP	%RCX,%R15;  (25) 
0x3048;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;JAE	2f18 <main+0x998>;  (25) 
0x304e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;MOV	-0x240(%RBP),%R9D;(1) 
0x3055;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;TEST	%R9D,%R9D;(1) 
0x3058;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;JNE	448e <main+0x1f0e>;(1) 
0x305e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;MOV	-0x228(%RBP),%EDX;(1) 
0x3064;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;TEST	%EDX,%EDX;(1) 
0x3066;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;JE	2b94 <main+0x614>;(1) 
0x306c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;MOV	-0x1e8(%RBP),%RCX;(1) 
0x3073;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;MOV	%RCX,-0x1c0(%RBP);(1) 
0x307a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;JMP	4010 <main+0x1a90>;(1) 
0x307f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;NOP;
0x3080;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;MOVQ	$0x1,-0x1c0(%RBP);  (25) 
0x308b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;TEST	%R15,%R15;  (25) 
0x308e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;JE	4480 <main+0x1f00>;  (25) 
0x3094;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;MOV	$0x1,%ECX;  (25) 
0x3099;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;JMP	2f18 <main+0x998>;  (25) 
0x309e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1025;XCHG	%AX,%AX;
0x30a0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (25) 
0x30aa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (25) 
0x30af;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	3011 <main+0xa91>;  (25) 
0x30b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x30b8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;MOV	-0x1e8(%RBP),%RAX;(1) 
0x30bf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;MOV	%RAX,-0x1c0(%RBP);(1) 
0x30c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;CMP	%RAX,%R15;(1) 
0x30c9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;JB	2c1c <main+0x69c>;(1) 
0x30cf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;MOV	-0x1e8(%RBP),%RCX;(1) 
0x30d6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;NOPW	%CS:(%RAX,%RAX,1);(1) 
0x30e0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1094;CMP	$0x7,%RCX;  (2) 
0x30e4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1094;JBE	3351 <main+0xdd1>;  (2) 
0x30ea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0xa1df(%RIP),%RDI;  (2) 
0x30f1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1095;SHR	$0x3,%RCX;  (2) 
0x30f5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1095;MOV	%ECX,-0x1a0(%RBP);  (2) 
0x30fb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%ECX;  (2) 
0x3101;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%RDI,%RDI;  (2) 
0x3104;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	312f <main+0xbaf>;  (2) 
0x3106;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%ECX;  (2) 
0x3108;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%ECX,%EDX;  (2) 
0x310a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R14D,%R14D;  (2) 
0x310d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%ECX;  (2) 
0x310f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOP;  (2) 
0x3110;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0xa219(%RIP),%R8;    (5) 
0x3117;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R14,%R10;    (5) 
0x311a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%DL,(%R8,%R10,1);    (5) 
0x311e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R14;    (5) 
0x3121;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%ECX,%EDX;    (5) 
0x3123;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0xa1a6(%RIP),%RDI;    (5) 
0x312a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%RDI,%R14;    (5) 
0x312d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	3110 <main+0xb90>;    (5) 
0x312f;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%RDI,%RDX;  (2) 
0x3132;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0xa1c7(%RIP),%RDI;  (2) 
0x3139;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (2) 
0x313b;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (2) 
0x3140;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;LEA	-0x1c0(%RBP),%RDI;  (2) 
0x3147;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (2) 
0x3151;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	8430 <time_reduce>;  (2) 
0x3156;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:802;LEA	0x9563(%RIP),%RDI;  (2) 
0x315d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (2) 
0x3167;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:802;CALL	22e0 <.plt.sec@start>;  (2) 
0x316c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:804;CALL	2520 <.plt.sec@start+0x240>;  (2) 
0x3171;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;MOV	-0x1b8(%RBP),%EAX;  (2) 
0x3177;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:804;VMOVSD	%XMM0,0xa179(%RIP);  (2) 
0x317f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;XOR	%R12D,%R12D;  (2) 
0x3182;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;TEST	%EAX,%EAX;  (2) 
0x3184;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;JLE	31e2 <main+0xc62>;  (2) 
0x3186;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;NOPW	%CS:(%RAX,%RAX,1);  (2) 
0x3190;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;SUB	$0x8,%RSP;    (4) 
0x3194;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;PUSHQ	-0x1b0(%RBP);    (4) 
0x319a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	-0x1a0(%RBP),%EDX;    (4) 
0x31a0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	-0x1b4(%RBP),%R9D;    (4) 
0x31a7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	-0x190(%RBP),%R8;    (4) 
0x31ae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	-0x198(%RBP),%RCX;    (4) 
0x31b5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	0xa144(%RIP),%RSI;    (4) 
0x31bc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	0xa16d(%RIP),%RDI;    (4) 
0x31c3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;INC	%R12D;    (4) 
0x31c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;CALL	2490 <.plt.sec@start+0x1b0>;    (4) 
0x31cb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:807;MOV	-0x1b0(%RBP),%RDI;    (4) 
0x31d2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:807;CALL	22e0 <.plt.sec@start>;    (4) 
0x31d7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;POP	%RAX;    (4) 
0x31d8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;POP	%RDX;    (4) 
0x31d9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;CMP	-0x1b8(%RBP),%R12D;    (4) 
0x31e0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;JL	3190 <main+0xc10>;    (4) 
0x31e2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:809;CALL	2520 <.plt.sec@start+0x240>;  (2) 
0x31e7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VSUBSD	0xa109(%RIP),%XMM0,%XMM5;  (2) 
0x31ef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:809;VMOVSD	%XMM0,0xa0f9(%RIP);  (2) 
0x31f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VXORPD	%XMM0,%XMM0,%XMM0;  (2) 
0x31fb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VMULSD	0x669d(%RIP),%XMM5,%XMM13;  (2) 
0x3203;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VCVTSI2SDL	-0x1b8(%RBP),%XMM0,%XMM14;  (2) 
0x320b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;MOV	%EBX,%ESI;  (2) 
0x320d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VDIVSD	%XMM14,%XMM13,%XMM15;  (2) 
0x3212;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (2) 
0x3215;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	322e <main+0xcae>;  (2) 
0x3217;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM1,%XMM1,%XMM1;  (2) 
0x321b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM1,%XMM7;  (2) 
0x3220;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM15,%XMM7,%XMM6;  (2) 
0x3225;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM6,%ESI;  (2) 
0x3229;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%ESI;  (2) 
0x322b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%ESI;  (2) 
0x322e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%ESI,-0x1c4(%RBP);  (2) 
0x3234;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (2) 
0x3236;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	-0x1c4(%RBP),%RDI;  (2) 
0x323d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x947c(%RIP),%R8;  (2) 
0x3244;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x9075(%RIP),%RDX;  (2) 
0x324b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (2) 
0x3250;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;VMOVSD	%XMM15,-0x1f0(%RBP);  (2) 
0x3258;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (2) 
0x325d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%R11D;  (2) 
0x3264;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM0;  (2) 
0x326c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%R11D;  (2) 
0x3270;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	3390 <main+0xe10>;  (2) 
0x3276;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:802;LEA	0x9443(%RIP),%RDI;  (2) 
0x327d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%R11D,-0x1b8(%RBP);  (2) 
0x3284;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:802;CALL	22e0 <.plt.sec@start>;  (2) 
0x3289;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:804;CALL	2520 <.plt.sec@start+0x240>;  (2) 
0x328e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;MOV	-0x1b8(%RBP),%R9D;  (2) 
0x3295;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:804;VMOVSD	%XMM0,0xa05b(%RIP);  (2) 
0x329d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;XOR	%R12D,%R12D;  (2) 
0x32a0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;TEST	%R9D,%R9D;  (2) 
0x32a3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;JLE	32fb <main+0xd7b>;  (2) 
0x32a5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;NOPL	(%RAX);  (2) 
0x32a8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;SUB	$0x8,%RSP;    (3) 
0x32ac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;PUSHQ	-0x1b0(%RBP);    (3) 
0x32b2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	-0x1b4(%RBP),%R9D;    (3) 
0x32b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	-0x190(%RBP),%R8;    (3) 
0x32c0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	-0x198(%RBP),%RCX;    (3) 
0x32c7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	-0x1a0(%RBP),%EDX;    (3) 
0x32cd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	0xa02c(%RIP),%RSI;    (3) 
0x32d4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;MOV	0xa055(%RIP),%RDI;    (3) 
0x32db;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;INC	%R12D;    (3) 
0x32de;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:806;CALL	2490 <.plt.sec@start+0x1b0>;    (3) 
0x32e3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:807;MOV	-0x1b0(%RBP),%RDI;    (3) 
0x32ea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:807;CALL	22e0 <.plt.sec@start>;    (3) 
0x32ef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;POP	%R14;    (3) 
0x32f1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;POP	%RAX;    (3) 
0x32f2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;CMP	-0x1b8(%RBP),%R12D;    (3) 
0x32f9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:805;JL	32a8 <main+0xd28>;    (3) 
0x32fb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:809;CALL	2520 <.plt.sec@start+0x240>;  (2) 
0x3300;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VSUBSD	0x9ff0(%RIP),%XMM0,%XMM4;  (2) 
0x3308;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VXORPD	%XMM9,%XMM9,%XMM9;  (2) 
0x330d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VCVTSI2SDL	-0x1b8(%RBP),%XMM9,%XMM10;  (2) 
0x3315;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VMULSD	0x6583(%RIP),%XMM4,%XMM8;  (2) 
0x331d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:809;VMOVSD	%XMM0,0x9fcb(%RIP);  (2) 
0x3325;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;MOV	-0x1c4(%RBP),%EDX;  (2) 
0x332b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:811;VDIVSD	%XMM10,%XMM8,%XMM0;  (2) 
0x3330;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (2) 
0x3337;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (2) 
0x333e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x62ad(%RIP),%RDI;  (2) 
0x3345;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (2) 
0x334a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:854;MOV	-0x1c0(%RBP),%RCX;  (2) 
0x3351;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;TEST	%RCX,%RCX;  (2) 
0x3354;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;JNE	336f <main+0xdef>;  (2) 
0x3356;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;MOVQ	$0x1,-0x1c0(%RBP);  (2) 
0x3361;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;TEST	%R15,%R15;  (2) 
0x3364;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;JE	2c1c <main+0x69c>;  (2) 
0x336a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;MOV	$0x1,%ECX;  (2) 
0x336f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;ADD	%RCX,%RCX;  (2) 
0x3372;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;MOV	%RCX,-0x1c0(%RBP);  (2) 
0x3379;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;CMP	%RCX,%R15;  (2) 
0x337c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;JAE	30e0 <main+0xb60>;  (2) 
0x3382;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;JMP	2c1c <main+0x69c>;(1) 
0x3387;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;NOPW	(%RAX,%RAX,1);
0x3390;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (2) 
0x339a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (2) 
0x339f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	3330 <main+0xdb0>;  (2) 
0x33a1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x33a8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;MOV	-0x1e8(%RBP),%RCX;(1) 
0x33af;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;MOV	%RCX,-0x1c0(%RBP);(1) 
0x33b6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;CMP	%RCX,%R15;(1) 
0x33b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;JB	49dc <main+0x245c>;(1) 
0x33bf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;LEA	-0x1c0(%RBP),%R12;(1) 
0x33c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;LEA	-0x1c4(%RBP),%R14;(1) 
0x33cd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;NOPL	(%RAX);(1) 
0x33d0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x9ef9(%RIP),%RSI;  (19) 
0x33d7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1047;MOV	%ECX,-0x1a0(%RBP);  (19) 
0x33dd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%EDX;  (19) 
0x33e3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%RSI,%RSI;  (19) 
0x33e6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	3418 <main+0xe98>;  (19) 
0x33e8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EDX;  (19) 
0x33ea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EDX,%ECX;  (19) 
0x33ec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;LEA	0x1(%RDX),%R11D;  (19) 
0x33f0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R9D,%R9D;  (19) 
0x33f3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX,%RAX,1);  (19) 
0x33f8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x9f31(%RIP),%RDI;    (20) 
0x33ff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R9,%R8;    (20) 
0x3402;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%CL,(%RDI,%R8,1);    (20) 
0x3406;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R9;    (20) 
0x3409;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%R11D,%ECX;    (20) 
0x340c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x9ebd(%RIP),%RSI;    (20) 
0x3413;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%RSI,%R9;    (20) 
0x3416;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	33f8 <main+0xe78>;    (20) 
0x3418;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x9ee1(%RIP),%RDI;  (19) 
0x341f;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%RSI,%RDX;  (19) 
0x3422;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (19) 
0x3424;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (19) 
0x3429;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;MOV	%R12,%RDI;  (19) 
0x342c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (19) 
0x3436;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	6bd0 <time_allgather>;  (19) 
0x343b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;MOV	%R12,%RDI;  (19) 
0x343e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (19) 
0x3448;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;CALL	6bd0 <time_allgather>;  (19) 
0x344d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;VMOVAPD	%XMM0,%XMM10;  (19) 
0x3451;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;MOV	%EBX,%R10D;  (19) 
0x3454;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (19) 
0x3457;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	3472 <main+0xef2>;  (19) 
0x3459;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM11,%XMM11,%XMM11;  (19) 
0x345e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM11,%XMM12;  (19) 
0x3463;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM0,%XMM12,%XMM3;  (19) 
0x3467;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM3,%R10D;  (19) 
0x346b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%R10D;  (19) 
0x346e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%R10D;  (19) 
0x3472;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (19) 
0x3474;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x9245(%RIP),%R8;  (19) 
0x347b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8e3e(%RIP),%RDX;  (19) 
0x3482;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (19) 
0x3487;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	%R14,%RDI;  (19) 
0x348a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%R10D,-0x1c4(%RBP);  (19) 
0x3491;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;VMOVSD	%XMM10,-0x1f0(%RBP);  (19) 
0x3499;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (19) 
0x349e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%EAX;  (19) 
0x34a4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM2;  (19) 
0x34ac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%EAX;  (19) 
0x34af;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	3550 <main+0xfd0>;  (19) 
0x34b5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	%R12,%RDI;  (19) 
0x34b8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%EAX,-0x1b8(%RBP);  (19) 
0x34be;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;CALL	6bd0 <time_allgather>;  (19) 
0x34c3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	-0x1c4(%RBP),%EDX;  (19) 
0x34c9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;VMOVAPD	%XMM0,%XMM2;  (19) 
0x34cd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (19) 
0x34d4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (19) 
0x34db;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x6256(%RIP),%RDI;  (19) 
0x34e2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;VMOVAPD	%XMM2,%XMM0;  (19) 
0x34e6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (19) 
0x34eb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;MOV	-0x1c0(%RBP),%RCX;  (19) 
0x34f2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;TEST	%RCX,%RCX;  (19) 
0x34f5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;JE	3530 <main+0xfb0>;  (19) 
0x34f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;ADD	%RCX,%RCX;  (19) 
0x34fa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;MOV	%RCX,-0x1c0(%RBP);  (19) 
0x3501;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;CMP	%RCX,%R15;  (19) 
0x3504;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;JAE	33d0 <main+0xe50>;  (19) 
0x350a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;MOV	-0x230(%RBP),%EDX;(1) 
0x3510;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;TEST	%EDX,%EDX;(1) 
0x3512;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;JE	2bb4 <main+0x634>;(1) 
0x3518;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;MOV	-0x1e8(%RBP),%RCX;(1) 
0x351f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;MOV	%RCX,-0x1c0(%RBP);(1) 
0x3526;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;JMP	3e50 <main+0x18d0>;(1) 
0x352b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;NOPL	(%RAX,%RAX,1);
0x3530;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;MOVQ	$0x1,-0x1c0(%RBP);  (19) 
0x353b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;TEST	%R15,%R15;  (19) 
0x353e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;JE	2ba4 <main+0x624>;  (19) 
0x3544;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;MOV	$0x1,%ECX;  (19) 
0x3549;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;JMP	33d0 <main+0xe50>;  (19) 
0x354e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;XCHG	%AX,%AX;
0x3550;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (19) 
0x355a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (19) 
0x355f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	34cd <main+0xf4d>;  (19) 
0x3564;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x3568;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;MOV	-0x1e8(%RBP),%RCX;(1) 
0x356f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;MOV	%RCX,-0x1c0(%RBP);(1) 
0x3576;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;CMP	%RCX,%R15;(1) 
0x3579;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;JB	2c0e <main+0x68e>;(1) 
0x357f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOV	-0x1e8(%RBP),%RSI;(1) 
0x3586;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;NOPW	%CS:(%RAX,%RAX,1);(1) 
0x3590;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1086;CMP	$0x7,%RSI;  (6) 
0x3594;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1086;JBE	385a <main+0x12da>;  (6) 
0x359a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x9d2f(%RIP),%R14;  (6) 
0x35a1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1087;SHR	$0x3,%RSI;  (6) 
0x35a5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1087;MOV	%ESI,-0x1a0(%RBP);  (6) 
0x35ab;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%ECX;  (6) 
0x35b1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%R14,%R14;  (6) 
0x35b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	35df <main+0x105f>;  (6) 
0x35b6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%ECX;  (6) 
0x35b8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%ECX,%EDX;  (6) 
0x35ba;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%EAX,%EAX;  (6) 
0x35bc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%ECX;  (6) 
0x35be;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XCHG	%AX,%AX;  (6) 
0x35c0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x9d69(%RIP),%R11;    (10) 
0x35c7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%RAX,%RSI;    (10) 
0x35ca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%DL,(%R11,%RSI,1);    (10) 
0x35ce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%RAX;    (10) 
0x35d1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%ECX,%EDX;    (10) 
0x35d3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x9cf6(%RIP),%R14;    (10) 
0x35da;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%R14,%RAX;    (10) 
0x35dd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	35c0 <main+0x1040>;    (10) 
0x35df;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x9d1a(%RIP),%RDI;  (6) 
0x35e6;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%R14,%RDX;  (6) 
0x35e9;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (6) 
0x35eb;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (6) 
0x35f0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:787;LEA	0x90c9(%RIP),%RDI;  (6) 
0x35f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (6) 
0x3601;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:787;CALL	22e0 <.plt.sec@start>;  (6) 
0x3606;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:789;CALL	2520 <.plt.sec@start+0x240>;  (6) 
0x360b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;MOV	-0x1b8(%RBP),%R9D;  (6) 
0x3612;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:789;VMOVSD	%XMM0,0x9cde(%RIP);  (6) 
0x361a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;XOR	%R12D,%R12D;  (6) 
0x361d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;TEST	%R9D,%R9D;  (6) 
0x3620;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;JLE	366e <main+0x10ee>;  (6) 
0x3622;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;NOPW	(%RAX,%RAX,1);  (6) 
0x3628;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x1b0(%RBP),%R9;    (9) 
0x362f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x190(%RBP),%R8;    (9) 
0x3636;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x198(%RBP),%RCX;    (9) 
0x363d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x1a0(%RBP),%EDX;    (9) 
0x3643;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	0x9cb6(%RIP),%RSI;    (9) 
0x364a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	0x9cdf(%RIP),%RDI;    (9) 
0x3651;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;INC	%R12D;    (9) 
0x3654;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;CALL	23b0 <.plt.sec@start+0xd0>;    (9) 
0x3659;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:792;MOV	-0x1b0(%RBP),%RDI;    (9) 
0x3660;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:792;CALL	22e0 <.plt.sec@start>;    (9) 
0x3665;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;CMP	-0x1b8(%RBP),%R12D;    (9) 
0x366c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;JL	3628 <main+0x10a8>;    (9) 
0x366e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:794;CALL	2520 <.plt.sec@start+0x240>;  (6) 
0x3673;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:787;LEA	0x9046(%RIP),%RDI;  (6) 
0x367a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:794;VMOVSD	%XMM0,0x9c6e(%RIP);  (6) 
0x3682;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (6) 
0x368c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:787;CALL	22e0 <.plt.sec@start>;  (6) 
0x3691;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:789;CALL	2520 <.plt.sec@start+0x240>;  (6) 
0x3696;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;MOV	-0x1b8(%RBP),%R10D;  (6) 
0x369d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:789;VMOVSD	%XMM0,0x9c53(%RIP);  (6) 
0x36a5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;XOR	%R14D,%R14D;  (6) 
0x36a8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;TEST	%R10D,%R10D;  (6) 
0x36ab;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;JLE	36f6 <main+0x1176>;  (6) 
0x36ad;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;NOPL	(%RAX);  (6) 
0x36b0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x1b0(%RBP),%R9;    (8) 
0x36b7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x190(%RBP),%R8;    (8) 
0x36be;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x198(%RBP),%RCX;    (8) 
0x36c5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x1a0(%RBP),%EDX;    (8) 
0x36cb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	0x9c2e(%RIP),%RSI;    (8) 
0x36d2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	0x9c57(%RIP),%RDI;    (8) 
0x36d9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;INC	%R14D;    (8) 
0x36dc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;CALL	23b0 <.plt.sec@start+0xd0>;    (8) 
0x36e1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:792;MOV	-0x1b0(%RBP),%RDI;    (8) 
0x36e8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:792;CALL	22e0 <.plt.sec@start>;    (8) 
0x36ed;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;CMP	-0x1b8(%RBP),%R14D;    (8) 
0x36f4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;JL	36b0 <main+0x1130>;    (8) 
0x36f6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:794;CALL	2520 <.plt.sec@start+0x240>;  (6) 
0x36fb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VSUBSD	0x9bf5(%RIP),%XMM0,%XMM15;  (6) 
0x3703;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VXORPD	%XMM7,%XMM7,%XMM7;  (6) 
0x3707;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VCVTSI2SDL	-0x1b8(%RBP),%XMM7,%XMM6;  (6) 
0x370f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VMULSD	0x6189(%RIP),%XMM15,%XMM1;  (6) 
0x3717;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:794;VMOVSD	%XMM0,0x9bd1(%RIP);  (6) 
0x371f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;MOV	%EBX,%R8D;  (6) 
0x3722;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VDIVSD	%XMM6,%XMM1,%XMM4;  (6) 
0x3726;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (6) 
0x3729;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	3745 <main+0x11c5>;  (6) 
0x372b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM8,%XMM8,%XMM8;  (6) 
0x3730;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM8,%XMM9;  (6) 
0x3735;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM4,%XMM9,%XMM10;  (6) 
0x3739;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM10,%R8D;  (6) 
0x373e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%R8D;  (6) 
0x3741;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%R8D;  (6) 
0x3745;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%R8D,-0x1c4(%RBP);  (6) 
0x374c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	-0x1c4(%RBP),%RDI;  (6) 
0x3753;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (6) 
0x3755;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8f64(%RIP),%R8;  (6) 
0x375c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8b5d(%RIP),%RDX;  (6) 
0x3763;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (6) 
0x3768;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;VMOVSD	%XMM4,-0x1f0(%RBP);  (6) 
0x3770;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (6) 
0x3775;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%EDI;  (6) 
0x377b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM0;  (6) 
0x3783;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%EDI;  (6) 
0x3786;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	38b0 <main+0x1330>;  (6) 
0x378c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%EDI,-0x1b8(%RBP);  (6) 
0x3792;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:787;LEA	0x8f27(%RIP),%RDI;  (6) 
0x3799;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:787;CALL	22e0 <.plt.sec@start>;  (6) 
0x379e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:789;CALL	2520 <.plt.sec@start+0x240>;  (6) 
0x37a3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;MOV	-0x1b8(%RBP),%ECX;  (6) 
0x37a9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:789;VMOVSD	%XMM0,0x9b47(%RIP);  (6) 
0x37b1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;XOR	%R12D,%R12D;  (6) 
0x37b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;TEST	%ECX,%ECX;  (6) 
0x37b6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;JLE	3806 <main+0x1286>;  (6) 
0x37b8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;NOPL	(%RAX,%RAX,1);  (6) 
0x37c0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x1b0(%RBP),%R9;    (7) 
0x37c7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x190(%RBP),%R8;    (7) 
0x37ce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x198(%RBP),%RCX;    (7) 
0x37d5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	-0x1a0(%RBP),%EDX;    (7) 
0x37db;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	0x9b1e(%RIP),%RSI;    (7) 
0x37e2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;MOV	0x9b47(%RIP),%RDI;    (7) 
0x37e9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;INC	%R12D;    (7) 
0x37ec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:791;CALL	23b0 <.plt.sec@start+0xd0>;    (7) 
0x37f1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:792;MOV	-0x1b0(%RBP),%RDI;    (7) 
0x37f8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:792;CALL	22e0 <.plt.sec@start>;    (7) 
0x37fd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;CMP	-0x1b8(%RBP),%R12D;    (7) 
0x3804;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:790;JL	37c0 <main+0x1240>;    (7) 
0x3806;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:794;CALL	2520 <.plt.sec@start+0x240>;  (6) 
0x380b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VSUBSD	0x9ae5(%RIP),%XMM0,%XMM11;  (6) 
0x3813;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VXORPD	%XMM3,%XMM3,%XMM3;  (6) 
0x3817;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VCVTSI2SDL	-0x1b8(%RBP),%XMM3,%XMM2;  (6) 
0x381f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VMULSD	0x6079(%RIP),%XMM11,%XMM12;  (6) 
0x3827;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:794;VMOVSD	%XMM0,0x9ac1(%RIP);  (6) 
0x382f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;MOV	-0x1c4(%RBP),%EDX;  (6) 
0x3835;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:796;VDIVSD	%XMM2,%XMM12,%XMM0;  (6) 
0x3839;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (6) 
0x3840;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (6) 
0x3847;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x5d96(%RIP),%RDI;  (6) 
0x384e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (6) 
0x3853;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:854;MOV	-0x1c0(%RBP),%RSI;  (6) 
0x385a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;TEST	%RSI,%RSI;  (6) 
0x385d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;JNE	3878 <main+0x12f8>;  (6) 
0x385f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;MOVQ	$0x1,-0x1c0(%RBP);  (6) 
0x386a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;TEST	%R15,%R15;  (6) 
0x386d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;JE	2c0e <main+0x68e>;  (6) 
0x3873;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;MOV	$0x1,%ESI;  (6) 
0x3878;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;ADD	%RSI,%RSI;  (6) 
0x387b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;MOV	%RSI,-0x1c0(%RBP);  (6) 
0x3882;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;CMP	%RSI,%R15;  (6) 
0x3885;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;JAE	3590 <main+0x1010>;  (6) 
0x388b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;MOV	-0x21c(%RBP),%R11D;(1) 
0x3892;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;TEST	%R11D,%R11D;(1) 
0x3895;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1092;JE	2c1c <main+0x69c>;(1) 
0x389b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;MOV	-0x1e8(%RBP),%R9;(1) 
0x38a2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;MOV	%R9,-0x1c0(%RBP);(1) 
0x38a9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;JMP	30cf <main+0xb4f>;(1) 
0x38ae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1093;XCHG	%AX,%AX;
0x38b0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (6) 
0x38ba;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (6) 
0x38bf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	3839 <main+0x12b9>;  (6) 
0x38c4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x38c8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOV	-0x1e8(%RBP),%R11;(1) 
0x38cf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOV	%R11,-0x1c0(%RBP);(1) 
0x38d6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;CMP	%R11,%R15;(1) 
0x38d9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;JB	4a10 <main+0x2490>;(1) 
0x38df;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;LEA	-0x1c0(%RBP),%R12;(1) 
0x38e6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;LEA	-0x1c4(%RBP),%R14;(1) 
0x38ed;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;NOPL	(%RAX);(1) 
0x38f0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x99d9(%RIP),%RSI;  (11) 
0x38f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1075;MOV	%R11D,-0x1a0(%RBP);  (11) 
0x38fe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%EDX;  (11) 
0x3904;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%RSI,%RSI;  (11) 
0x3907;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	3938 <main+0x13b8>;  (11) 
0x3909;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EDX;  (11) 
0x390b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EDX,%ECX;  (11) 
0x390d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;LEA	0x1(%RDX),%R9D;  (11) 
0x3911;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R10D,%R10D;  (11) 
0x3914;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX);  (11) 
0x3918;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x9a11(%RIP),%RDI;    (12) 
0x391f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R10,%R8;    (12) 
0x3922;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%CL,(%RDI,%R8,1);    (12) 
0x3926;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R10;    (12) 
0x3929;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%R9D,%ECX;    (12) 
0x392c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x999d(%RIP),%RSI;    (12) 
0x3933;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%RSI,%R10;    (12) 
0x3936;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	3918 <main+0x1398>;    (12) 
0x3938;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x99c1(%RIP),%RDI;  (11) 
0x393f;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%RSI,%RDX;  (11) 
0x3942;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (11) 
0x3944;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (11) 
0x3949;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;MOV	%R12,%RDI;  (11) 
0x394c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (11) 
0x3956;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	7f40 <time_scatter>;  (11) 
0x395b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;MOV	%R12,%RDI;  (11) 
0x395e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (11) 
0x3968;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;CALL	7f40 <time_scatter>;  (11) 
0x396d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;VMOVAPD	%XMM0,%XMM2;  (11) 
0x3971;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;MOV	%EBX,%EAX;  (11) 
0x3973;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (11) 
0x3976;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	398e <main+0x140e>;  (11) 
0x3978;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM5,%XMM5,%XMM5;  (11) 
0x397c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM5,%XMM13;  (11) 
0x3981;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM0,%XMM13,%XMM0;  (11) 
0x3985;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM0,%EAX;  (11) 
0x3989;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%EAX;  (11) 
0x398b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%EAX;  (11) 
0x398e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (11) 
0x3990;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8d29(%RIP),%R8;  (11) 
0x3997;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8922(%RIP),%RDX;  (11) 
0x399e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (11) 
0x39a3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	%R14,%RDI;  (11) 
0x39a6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%EAX,-0x1c4(%RBP);  (11) 
0x39ac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;VMOVSD	%XMM2,-0x1f0(%RBP);  (11) 
0x39b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (11) 
0x39b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%R11D;  (11) 
0x39c0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM14;  (11) 
0x39c8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%R11D;  (11) 
0x39cc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	3a90 <main+0x1510>;  (11) 
0x39d2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	%R12,%RDI;  (11) 
0x39d5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%R11D,-0x1b8(%RBP);  (11) 
0x39dc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;CALL	7f40 <time_scatter>;  (11) 
0x39e1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	-0x1c4(%RBP),%EDX;  (11) 
0x39e7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;VMOVAPD	%XMM0,%XMM14;  (11) 
0x39eb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (11) 
0x39f2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (11) 
0x39f9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x5bd8(%RIP),%RDI;  (11) 
0x3a00;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;VMOVAPD	%XMM14,%XMM0;  (11) 
0x3a04;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (11) 
0x3a09;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOV	-0x1c0(%RBP),%R11;  (11) 
0x3a10;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;TEST	%R11,%R11;  (11) 
0x3a13;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;JE	3a70 <main+0x14f0>;  (11) 
0x3a15;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;ADD	%R11,%R11;  (11) 
0x3a18;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOV	%R11,-0x1c0(%RBP);  (11) 
0x3a1f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;CMP	%R11,%R15;  (11) 
0x3a22;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;JAE	38f0 <main+0x1370>;  (11) 
0x3a28;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;MOV	-0x244(%RBP),%R8D;(1) 
0x3a2f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1081;LEA	0x8a8a(%RIP),%R9;(1) 
0x3a36;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1082;LEA	0x8e83(%RIP),%R10;(1) 
0x3a3d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1081;MOV	%R9,-0x198(%RBP);(1) 
0x3a44;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1082;MOV	%R10,-0x190(%RBP);(1) 
0x3a4b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;TEST	%R8D,%R8D;(1) 
0x3a4e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;JE	2c0e <main+0x68e>;(1) 
0x3a54;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;MOV	-0x1e8(%RBP),%RDI;(1) 
0x3a5b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;MOV	%RDI,-0x1c0(%RBP);(1) 
0x3a62;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;JMP	357f <main+0xfff>;(1) 
0x3a67;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1085;NOPW	(%RAX,%RAX,1);
0x3a70;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOVQ	$0x1,-0x1c0(%RBP);  (11) 
0x3a7b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;TEST	%R15,%R15;  (11) 
0x3a7e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;JE	2be4 <main+0x664>;  (11) 
0x3a84;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOV	$0x1,%R11D;  (11) 
0x3a8a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;JMP	38f0 <main+0x1370>;  (11) 
0x3a8f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;NOP;
0x3a90;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (11) 
0x3a9a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (11) 
0x3a9f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	39eb <main+0x146b>;  (11) 
0x3aa4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x3aa8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;MOV	-0x1e8(%RBP),%RCX;(1) 
0x3aaf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;MOV	%RCX,-0x1c0(%RBP);(1) 
0x3ab6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;CMP	%RCX,%R15;(1) 
0x3ab9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;JB	4a03 <main+0x2483>;(1) 
0x3abf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;LEA	-0x1c0(%RBP),%R12;(1) 
0x3ac6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;LEA	-0x1c4(%RBP),%R14;(1) 
0x3acd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;NOPL	(%RAX);(1) 
0x3ad0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x97f9(%RIP),%RSI;  (13) 
0x3ad7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1068;MOV	%ECX,-0x1a0(%RBP);  (13) 
0x3add;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%EAX;  (13) 
0x3ae3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%RSI,%RSI;  (13) 
0x3ae6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	3b18 <main+0x1598>;  (13) 
0x3ae8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EAX;  (13) 
0x3aea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EAX,%ECX;  (13) 
0x3aec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;LEA	0x1(%RAX),%R11D;  (13) 
0x3af0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R9D,%R9D;  (13) 
0x3af3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX,%RAX,1);  (13) 
0x3af8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x9831(%RIP),%RDI;    (14) 
0x3aff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R9,%R8;    (14) 
0x3b02;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%CL,(%RDI,%R8,1);    (14) 
0x3b06;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R9;    (14) 
0x3b09;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%R11D,%ECX;    (14) 
0x3b0c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x97bd(%RIP),%RSI;    (14) 
0x3b13;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%RSI,%R9;    (14) 
0x3b16;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	3af8 <main+0x1578>;    (14) 
0x3b18;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x97e1(%RIP),%RDI;  (13) 
0x3b1f;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%RSI,%RDX;  (13) 
0x3b22;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (13) 
0x3b24;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (13) 
0x3b29;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;MOV	%R12,%RDI;  (13) 
0x3b2c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (13) 
0x3b36;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	79d0 <time_gatherv>;  (13) 
0x3b3b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;MOV	%R12,%RDI;  (13) 
0x3b3e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (13) 
0x3b48;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;CALL	79d0 <time_gatherv>;  (13) 
0x3b4d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;VMOVAPD	%XMM0,%XMM9;  (13) 
0x3b51;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;MOV	%EBX,%R10D;  (13) 
0x3b54;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (13) 
0x3b57;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	3b73 <main+0x15f3>;  (13) 
0x3b59;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM10,%XMM10,%XMM10;  (13) 
0x3b5e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM10,%XMM11;  (13) 
0x3b63;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM0,%XMM11,%XMM12;  (13) 
0x3b67;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM12,%R10D;  (13) 
0x3b6c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%R10D;  (13) 
0x3b6f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%R10D;  (13) 
0x3b73;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (13) 
0x3b75;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8744(%RIP),%RDX;  (13) 
0x3b7c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8b3d(%RIP),%R8;  (13) 
0x3b83;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (13) 
0x3b88;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	%R14,%RDI;  (13) 
0x3b8b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%R10D,-0x1c4(%RBP);  (13) 
0x3b92;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;VMOVSD	%XMM9,-0x1f0(%RBP);  (13) 
0x3b9a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (13) 
0x3b9f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%EDX;  (13) 
0x3ba5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM3;  (13) 
0x3bad;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%EDX;  (13) 
0x3bb0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	3c50 <main+0x16d0>;  (13) 
0x3bb6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	%R12,%RDI;  (13) 
0x3bb9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%EDX,-0x1b8(%RBP);  (13) 
0x3bbf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;CALL	79d0 <time_gatherv>;  (13) 
0x3bc4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	-0x1c4(%RBP),%EDX;  (13) 
0x3bca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;VMOVAPD	%XMM0,%XMM3;  (13) 
0x3bce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (13) 
0x3bd5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (13) 
0x3bdc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x59e9(%RIP),%RDI;  (13) 
0x3be3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;VMOVAPD	%XMM3,%XMM0;  (13) 
0x3be7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (13) 
0x3bec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;MOV	-0x1c0(%RBP),%RCX;  (13) 
0x3bf3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;TEST	%RCX,%RCX;  (13) 
0x3bf6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;JE	3c30 <main+0x16b0>;  (13) 
0x3bf8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;ADD	%RCX,%RCX;  (13) 
0x3bfb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;MOV	%RCX,-0x1c0(%RBP);  (13) 
0x3c02;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;CMP	%RCX,%R15;  (13) 
0x3c05;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;JAE	3ad0 <main+0x1550>;  (13) 
0x3c0b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;MOV	-0x23c(%RBP),%ECX;(1) 
0x3c11;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;TEST	%ECX,%ECX;(1) 
0x3c13;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;JE	2be4 <main+0x664>;(1) 
0x3c19;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOV	-0x1e8(%RBP),%R11;(1) 
0x3c20;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;MOV	%R11,-0x1c0(%RBP);(1) 
0x3c27;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;JMP	38f0 <main+0x1370>;(1) 
0x3c2c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1074;NOPL	(%RAX);
0x3c30;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;MOVQ	$0x1,-0x1c0(%RBP);  (13) 
0x3c3b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;TEST	%R15,%R15;  (13) 
0x3c3e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;JE	2bd4 <main+0x654>;  (13) 
0x3c44;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;MOV	$0x1,%ECX;  (13) 
0x3c49;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;JMP	3ad0 <main+0x1550>;  (13) 
0x3c4e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;XCHG	%AX,%AX;
0x3c50;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (13) 
0x3c5a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (13) 
0x3c5f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	3bce <main+0x164e>;  (13) 
0x3c64;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x3c68;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;MOV	-0x1e8(%RBP),%RCX;(1) 
0x3c6f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;MOV	%RCX,-0x1c0(%RBP);(1) 
0x3c76;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;CMP	%RCX,%R15;(1) 
0x3c79;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;JB	49f6 <main+0x2476>;(1) 
0x3c7f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;LEA	-0x1c0(%RBP),%R12;(1) 
0x3c86;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;LEA	-0x1c4(%RBP),%R14;(1) 
0x3c8d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;NOPL	(%RAX);(1) 
0x3c90;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x9639(%RIP),%RSI;  (15) 
0x3c97;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1061;MOV	%ECX,-0x1a0(%RBP);  (15) 
0x3c9d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%EDX;  (15) 
0x3ca3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%RSI,%RSI;  (15) 
0x3ca6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	3cd8 <main+0x1758>;  (15) 
0x3ca8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EDX;  (15) 
0x3caa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EDX,%ECX;  (15) 
0x3cac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;LEA	0x1(%RDX),%R11D;  (15) 
0x3cb0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R9D,%R9D;  (15) 
0x3cb3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX,%RAX,1);  (15) 
0x3cb8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x9671(%RIP),%RDI;    (16) 
0x3cbf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R9,%R8;    (16) 
0x3cc2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%CL,(%RDI,%R8,1);    (16) 
0x3cc6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R9;    (16) 
0x3cc9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%R11D,%ECX;    (16) 
0x3ccc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x95fd(%RIP),%RSI;    (16) 
0x3cd3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%RSI,%R9;    (16) 
0x3cd6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	3cb8 <main+0x1738>;    (16) 
0x3cd8;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x9621(%RIP),%RDI;  (15) 
0x3cdf;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%RSI,%RDX;  (15) 
0x3ce2;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (15) 
0x3ce4;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (15) 
0x3ce9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;MOV	%R12,%RDI;  (15) 
0x3cec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (15) 
0x3cf6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	7570 <time_gather>;  (15) 
0x3cfb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;MOV	%R12,%RDI;  (15) 
0x3cfe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (15) 
0x3d08;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;CALL	7570 <time_gather>;  (15) 
0x3d0d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;VMOVAPD	%XMM0,%XMM1;  (15) 
0x3d11;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;MOV	%EBX,%R10D;  (15) 
0x3d14;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (15) 
0x3d17;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	3d31 <main+0x17b1>;  (15) 
0x3d19;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM7,%XMM7,%XMM7;  (15) 
0x3d1d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM7,%XMM6;  (15) 
0x3d22;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM0,%XMM6,%XMM4;  (15) 
0x3d26;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM4,%R10D;  (15) 
0x3d2a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%R10D;  (15) 
0x3d2d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%R10D;  (15) 
0x3d31;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (15) 
0x3d33;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8986(%RIP),%R8;  (15) 
0x3d3a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x857f(%RIP),%RDX;  (15) 
0x3d41;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (15) 
0x3d46;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	%R14,%RDI;  (15) 
0x3d49;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%R10D,-0x1c4(%RBP);  (15) 
0x3d50;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;VMOVSD	%XMM1,-0x1f0(%RBP);  (15) 
0x3d58;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (15) 
0x3d5d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%EAX;  (15) 
0x3d63;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM8;  (15) 
0x3d6b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%EAX;  (15) 
0x3d6e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	3e10 <main+0x1890>;  (15) 
0x3d74;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	%R12,%RDI;  (15) 
0x3d77;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%EAX,-0x1b8(%RBP);  (15) 
0x3d7d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;CALL	7570 <time_gather>;  (15) 
0x3d82;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	-0x1c4(%RBP),%EDX;  (15) 
0x3d88;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;VMOVAPD	%XMM0,%XMM8;  (15) 
0x3d8c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (15) 
0x3d93;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (15) 
0x3d9a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x59a1(%RIP),%RDI;  (15) 
0x3da1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;VMOVAPD	%XMM8,%XMM0;  (15) 
0x3da5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (15) 
0x3daa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;MOV	-0x1c0(%RBP),%RCX;  (15) 
0x3db1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;TEST	%RCX,%RCX;  (15) 
0x3db4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;JE	3df0 <main+0x1870>;  (15) 
0x3db6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;ADD	%RCX,%RCX;  (15) 
0x3db9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;MOV	%RCX,-0x1c0(%RBP);  (15) 
0x3dc0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;CMP	%RCX,%R15;  (15) 
0x3dc3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;JAE	3c90 <main+0x1710>;  (15) 
0x3dc9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;MOV	-0x238(%RBP),%EDX;(1) 
0x3dcf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;TEST	%EDX,%EDX;(1) 
0x3dd1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;JE	2bd4 <main+0x654>;(1) 
0x3dd7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;MOV	-0x1e8(%RBP),%RCX;(1) 
0x3dde;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;MOV	%RCX,-0x1c0(%RBP);(1) 
0x3de5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;JMP	3ad0 <main+0x1550>;(1) 
0x3dea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1067;NOPW	(%RAX,%RAX,1);
0x3df0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;MOVQ	$0x1,-0x1c0(%RBP);  (15) 
0x3dfb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;TEST	%R15,%R15;  (15) 
0x3dfe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;JE	2bc4 <main+0x644>;  (15) 
0x3e04;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;MOV	$0x1,%ECX;  (15) 
0x3e09;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;JMP	3c90 <main+0x1710>;  (15) 
0x3e0e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;XCHG	%AX,%AX;
0x3e10;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (15) 
0x3e1a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (15) 
0x3e1f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	3d8c <main+0x180c>;  (15) 
0x3e24;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x3e28;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;MOV	-0x1e8(%RBP),%RCX;(1) 
0x3e2f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;MOV	%RCX,-0x1c0(%RBP);(1) 
0x3e36;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;CMP	%RCX,%R15;(1) 
0x3e39;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;JB	49e9 <main+0x2469>;(1) 
0x3e3f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;LEA	-0x1c0(%RBP),%R12;(1) 
0x3e46;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;LEA	-0x1c4(%RBP),%R14;(1) 
0x3e4d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;NOPL	(%RAX);(1) 
0x3e50;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x9479(%RIP),%RSI;  (17) 
0x3e57;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1054;MOV	%ECX,-0x1a0(%RBP);  (17) 
0x3e5d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%EAX;  (17) 
0x3e63;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%RSI,%RSI;  (17) 
0x3e66;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	3e98 <main+0x1918>;  (17) 
0x3e68;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EAX;  (17) 
0x3e6a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EAX,%ECX;  (17) 
0x3e6c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;LEA	0x1(%RAX),%R11D;  (17) 
0x3e70;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R9D,%R9D;  (17) 
0x3e73;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX,%RAX,1);  (17) 
0x3e78;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x94b1(%RIP),%RDI;    (18) 
0x3e7f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R9,%R8;    (18) 
0x3e82;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%CL,(%RDI,%R8,1);    (18) 
0x3e86;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R9;    (18) 
0x3e89;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%R11D,%ECX;    (18) 
0x3e8c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x943d(%RIP),%RSI;    (18) 
0x3e93;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%RSI,%R9;    (18) 
0x3e96;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	3e78 <main+0x18f8>;    (18) 
0x3e98;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x9461(%RIP),%RDI;  (17) 
0x3e9f;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%RSI,%RDX;  (17) 
0x3ea2;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (17) 
0x3ea4;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (17) 
0x3ea9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;MOV	%R12,%RDI;  (17) 
0x3eac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (17) 
0x3eb6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	7030 <time_allgatherv>;  (17) 
0x3ebb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;MOV	%R12,%RDI;  (17) 
0x3ebe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (17) 
0x3ec8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;CALL	7030 <time_allgatherv>;  (17) 
0x3ecd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;VMOVAPD	%XMM0,%XMM5;  (17) 
0x3ed1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;MOV	%EBX,%R10D;  (17) 
0x3ed4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (17) 
0x3ed7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	3ef3 <main+0x1973>;  (17) 
0x3ed9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM13,%XMM13,%XMM13;  (17) 
0x3ede;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM13,%XMM0;  (17) 
0x3ee3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM5,%XMM0,%XMM14;  (17) 
0x3ee7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM14,%R10D;  (17) 
0x3eec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%R10D;  (17) 
0x3eef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%R10D;  (17) 
0x3ef3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (17) 
0x3ef5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x83c4(%RIP),%RDX;  (17) 
0x3efc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x87bd(%RIP),%R8;  (17) 
0x3f03;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (17) 
0x3f08;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	%R14,%RDI;  (17) 
0x3f0b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%R10D,-0x1c4(%RBP);  (17) 
0x3f12;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;VMOVSD	%XMM5,-0x1f0(%RBP);  (17) 
0x3f1a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (17) 
0x3f1f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%EDX;  (17) 
0x3f25;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM15;  (17) 
0x3f2d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%EDX;  (17) 
0x3f30;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	3fd0 <main+0x1a50>;  (17) 
0x3f36;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	%R12,%RDI;  (17) 
0x3f39;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%EDX,-0x1b8(%RBP);  (17) 
0x3f3f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;CALL	7030 <time_allgatherv>;  (17) 
0x3f44;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	-0x1c4(%RBP),%EDX;  (17) 
0x3f4a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;VMOVAPD	%XMM0,%XMM15;  (17) 
0x3f4e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (17) 
0x3f55;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (17) 
0x3f5c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x5652(%RIP),%RDI;  (17) 
0x3f63;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;VMOVAPD	%XMM15,%XMM0;  (17) 
0x3f67;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (17) 
0x3f6c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;MOV	-0x1c0(%RBP),%RCX;  (17) 
0x3f73;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;TEST	%RCX,%RCX;  (17) 
0x3f76;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;JE	3fb0 <main+0x1a30>;  (17) 
0x3f78;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;ADD	%RCX,%RCX;  (17) 
0x3f7b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;MOV	%RCX,-0x1c0(%RBP);  (17) 
0x3f82;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;CMP	%RCX,%R15;  (17) 
0x3f85;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;JAE	3e50 <main+0x18d0>;  (17) 
0x3f8b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;MOV	-0x234(%RBP),%EAX;(1) 
0x3f91;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;TEST	%EAX,%EAX;(1) 
0x3f93;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;JE	2bc4 <main+0x644>;(1) 
0x3f99;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;MOV	-0x1e8(%RBP),%RCX;(1) 
0x3fa0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;MOV	%RCX,-0x1c0(%RBP);(1) 
0x3fa7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;JMP	3c90 <main+0x1710>;(1) 
0x3fac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1060;NOPL	(%RAX);
0x3fb0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;MOVQ	$0x1,-0x1c0(%RBP);  (17) 
0x3fbb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;TEST	%R15,%R15;  (17) 
0x3fbe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;JE	2bb4 <main+0x634>;  (17) 
0x3fc4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;MOV	$0x1,%ECX;  (17) 
0x3fc9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;JMP	3e50 <main+0x18d0>;  (17) 
0x3fce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1053;XCHG	%AX,%AX;
0x3fd0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (17) 
0x3fda;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (17) 
0x3fdf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	3f4e <main+0x19ce>;  (17) 
0x3fe4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x3fe8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;MOV	-0x1e8(%RBP),%RCX;(1) 
0x3fef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;MOV	%RCX,-0x1c0(%RBP);(1) 
0x3ff6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;CMP	%RCX,%R15;(1) 
0x3ff9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;JB	49cf <main+0x244f>;(1) 
0x3fff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;LEA	-0x1c0(%RBP),%R12;(1) 
0x4006;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;LEA	-0x1c4(%RBP),%R14;(1) 
0x400d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;NOPL	(%RAX);(1) 
0x4010;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x92b9(%RIP),%RSI;  (21) 
0x4017;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1040;MOV	%ECX,-0x1a0(%RBP);  (21) 
0x401d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%EAX;  (21) 
0x4023;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%RSI,%RSI;  (21) 
0x4026;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	4058 <main+0x1ad8>;  (21) 
0x4028;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EAX;  (21) 
0x402a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EAX,%ECX;  (21) 
0x402c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;LEA	0x1(%RAX),%R11D;  (21) 
0x4030;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%R9D,%R9D;  (21) 
0x4033;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX,%RAX,1);  (21) 
0x4038;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x92f1(%RIP),%RDI;    (22) 
0x403f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%R9,%R8;    (22) 
0x4042;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%CL,(%RDI,%R8,1);    (22) 
0x4046;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%R9;    (22) 
0x4049;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%R11D,%ECX;    (22) 
0x404c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x927d(%RIP),%RSI;    (22) 
0x4053;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%RSI,%R9;    (22) 
0x4056;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	4038 <main+0x1ab8>;    (22) 
0x4058;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x92a1(%RIP),%RDI;  (21) 
0x405f;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%RSI,%RDX;  (21) 
0x4062;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (21) 
0x4064;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (21) 
0x4069;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;MOV	%R12,%RDI;  (21) 
0x406c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (21) 
0x4076;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	6510 <time_alltoallv>;  (21) 
0x407b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;MOV	%R12,%RDI;  (21) 
0x407e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (21) 
0x4088;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;CALL	6510 <time_alltoallv>;  (21) 
0x408d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;VMOVAPD	%XMM0,%XMM1;  (21) 
0x4091;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;MOV	%EBX,%R10D;  (21) 
0x4094;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (21) 
0x4097;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	40b2 <main+0x1b32>;  (21) 
0x4099;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM6,%XMM6,%XMM6;  (21) 
0x409d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM6,%XMM4;  (21) 
0x40a2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM0,%XMM4,%XMM8;  (21) 
0x40a6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM8,%R10D;  (21) 
0x40ab;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%R10D;  (21) 
0x40ae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%R10D;  (21) 
0x40b2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (21) 
0x40b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8205(%RIP),%RDX;  (21) 
0x40bb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x85fe(%RIP),%R8;  (21) 
0x40c2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (21) 
0x40c7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	%R14,%RDI;  (21) 
0x40ca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%R10D,-0x1c4(%RBP);  (21) 
0x40d1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;VMOVSD	%XMM1,-0x1f0(%RBP);  (21) 
0x40d9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (21) 
0x40de;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%EDX;  (21) 
0x40e4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM9;  (21) 
0x40ec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%EDX;  (21) 
0x40ef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	4190 <main+0x1c10>;  (21) 
0x40f5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	%R12,%RDI;  (21) 
0x40f8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%EDX,-0x1b8(%RBP);  (21) 
0x40fe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;CALL	6510 <time_alltoallv>;  (21) 
0x4103;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	-0x1c4(%RBP),%EDX;  (21) 
0x4109;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;VMOVAPD	%XMM0,%XMM9;  (21) 
0x410d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (21) 
0x4114;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (21) 
0x411b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x547a(%RIP),%RDI;  (21) 
0x4122;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;VMOVAPD	%XMM9,%XMM0;  (21) 
0x4126;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (21) 
0x412b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;MOV	-0x1c0(%RBP),%RCX;  (21) 
0x4132;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;TEST	%RCX,%RCX;  (21) 
0x4135;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;JE	4170 <main+0x1bf0>;  (21) 
0x4137;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;ADD	%RCX,%RCX;  (21) 
0x413a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;MOV	%RCX,-0x1c0(%RBP);  (21) 
0x4141;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;CMP	%RCX,%R15;  (21) 
0x4144;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;JAE	4010 <main+0x1a90>;  (21) 
0x414a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;MOV	-0x220(%RBP),%EAX;(1) 
0x4150;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;TEST	%EAX,%EAX;(1) 
0x4152;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;JE	2ba4 <main+0x624>;(1) 
0x4158;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;MOV	-0x1e8(%RBP),%RCX;(1) 
0x415f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;MOV	%RCX,-0x1c0(%RBP);(1) 
0x4166;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;JMP	33d0 <main+0xe50>;(1) 
0x416b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1046;NOPL	(%RAX,%RAX,1);
0x4170;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;MOVQ	$0x1,-0x1c0(%RBP);  (21) 
0x417b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;TEST	%R15,%R15;  (21) 
0x417e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;JE	2b94 <main+0x614>;  (21) 
0x4184;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;MOV	$0x1,%ECX;  (21) 
0x4189;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;JMP	4010 <main+0x1a90>;  (21) 
0x418e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1039;XCHG	%AX,%AX;
0x4190;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (21) 
0x419a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (21) 
0x419f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	410d <main+0x1b8d>;  (21) 
0x41a4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x41a8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;MOV	-0x1e8(%RBP),%R10;(1) 
0x41af;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;MOV	%R10,-0x1c0(%RBP);(1) 
0x41b6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;CMP	%R10,%R15;(1) 
0x41b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;JB	49c2 <main+0x2442>;(1) 
0x41bf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;LEA	-0x1c0(%RBP),%R12;(1) 
0x41c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;LEA	-0x1c4(%RBP),%R14;(1) 
0x41cd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;NOPL	(%RAX);(1) 
0x41d0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x90f9(%RIP),%RSI;  (23) 
0x41d7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1033;MOV	%R10D,-0x1a0(%RBP);  (23) 
0x41de;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:825;MOV	-0x1a8(%RBP),%EDX;  (23) 
0x41e4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;TEST	%RSI,%RSI;  (23) 
0x41e7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JE	4218 <main+0x1c98>;  (23) 
0x41e9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;INC	%EDX;  (23) 
0x41eb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	%EDX,%ECX;  (23) 
0x41ed;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;LEA	0x1(%RDX),%R11D;  (23) 
0x41f1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;XOR	%EAX,%EAX;  (23) 
0x41f3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;NOPL	(%RAX,%RAX,1);  (23) 
0x41f8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	0x9131(%RIP),%RDI;    (24) 
0x41ff;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%RAX,%R8;    (24) 
0x4202;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:457;MOV	%CL,(%RDI,%R8,1);    (24) 
0x4206;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:456;INC	%RAX;    (24) 
0x4209;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;ADD	%R11D,%ECX;    (24) 
0x420c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;MOV	0x90bd(%RIP),%RSI;    (24) 
0x4213;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;CMP	%RSI,%RAX;    (24) 
0x4216;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455;JB	41f8 <main+0x1c78>;    (24) 
0x4218;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	0x90e1(%RIP),%RDI;  (23) 
0x421f;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;MOV	%RSI,%RDX;  (23) 
0x4222;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;XOR	%ESI,%ESI;  (23) 
0x4224;/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71;CALL	22f0 <.plt.sec@start+0x10>;  (23) 
0x4229;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;MOV	%R12,%RDI;  (23) 
0x422c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:829;MOVL	$0x1,-0x1b8(%RBP);  (23) 
0x4236;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:830;CALL	6090 <time_alltoall>;  (23) 
0x423b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;MOV	%R12,%RDI;  (23) 
0x423e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:833;MOVL	$0x32,-0x1b8(%RBP);  (23) 
0x4248;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;CALL	6090 <time_alltoall>;  (23) 
0x424d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:834;VMOVAPD	%XMM0,%XMM13;  (23) 
0x4251;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;MOV	%EBX,%R9D;  (23) 
0x4254;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;TEST	%R13D,%R13D;  (23) 
0x4257;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;JLE	4273 <main+0x1cf3>;  (23) 
0x4259;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VXORPD	%XMM0,%XMM0,%XMM0;  (23) 
0x425d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTSI2SD	%R13D,%XMM0,%XMM14;  (23) 
0x4262;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VDIVSD	%XMM13,%XMM14,%XMM15;  (23) 
0x4267;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;VCVTTSD2SI	%XMM15,%R9D;  (23) 
0x426c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMP	%EBX,%R9D;  (23) 
0x426f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:837;CMOVG	%EBX,%R9D;  (23) 
0x4273;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;XOR	%ECX,%ECX;  (23) 
0x4275;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x8444(%RIP),%R8;  (23) 
0x427c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;LEA	0x803d(%RIP),%RDX;  (23) 
0x4283;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	$0x1,%ESI;  (23) 
0x4288;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;MOV	%R14,%RDI;  (23) 
0x428b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;MOV	%R9D,-0x1c4(%RBP);  (23) 
0x4292;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:838;VMOVSD	%XMM13,-0x1f0(%RBP);  (23) 
0x429a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:841;CALL	2480 <.plt.sec@start+0x1a0>;  (23) 
0x429f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;MOV	-0x1c4(%RBP),%R10D;  (23) 
0x42a6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;VMOVSD	-0x1f0(%RBP),%XMM7;  (23) 
0x42ae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;CMP	$0x32,%R10D;  (23) 
0x42b2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:844;JLE	4310 <main+0x1d90>;  (23) 
0x42b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	%R12,%RDI;  (23) 
0x42b7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:845;MOV	%R10D,-0x1b8(%RBP);  (23) 
0x42be;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;CALL	6090 <time_alltoall>;  (23) 
0x42c3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;MOV	-0x1c4(%RBP),%EDX;  (23) 
0x42c9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:846;VMOVAPD	%XMM0,%XMM7;  (23) 
0x42cd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1b0(%RBP),%RCX;  (23) 
0x42d4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;MOV	-0x1c0(%RBP),%RSI;  (23) 
0x42db;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;LEA	0x544d(%RIP),%RDI;  (23) 
0x42e2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;VMOVAPD	%XMM7,%XMM0;  (23) 
0x42e6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:852;CALL	4f00 <Print_Timings>;  (23) 
0x42eb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;MOV	-0x1c0(%RBP),%R10;  (23) 
0x42f2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;TEST	%R10,%R10;  (23) 
0x42f5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;JE	4328 <main+0x1da8>;  (23) 
0x42f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;ADD	%R10,%R10;  (23) 
0x42fa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;MOV	%R10,-0x1c0(%RBP);  (23) 
0x4301;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;CMP	%R10,%R15;  (23) 
0x4304;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;JAE	41d0 <main+0x1c50>;  (23) 
0x430a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;JMP	305e <main+0xade>;(1) 
0x430f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;NOP;
0x4310;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);  (23) 
0x431a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;  (23) 
0x431f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	42cd <main+0x1d4d>;  (23) 
0x4321;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x4328;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;MOVQ	$0x1,-0x1c0(%RBP);  (23) 
0x4333;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;TEST	%R15,%R15;  (23) 
0x4336;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;JE	2b84 <main+0x604>;  (23) 
0x433c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;MOV	$0x1,%R10D;  (23) 
0x4342;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;JMP	41d0 <main+0x1c50>;  (23) 
0x4347;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;NOPW	(%RAX,%RAX,1);
0x4350;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOVL	$0x32,-0x1c4(%RBP);(1) 
0x435a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;MOV	$0x32,%EDX;(1) 
0x435f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;JMP	2ec5 <main+0x945>;(1) 
0x4364;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:848;NOPL	(%RAX);
0x4368;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1102;MOV	0x8f7a(%RIP),%EBX;
0x436e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1102;TEST	%EBX,%EBX;
0x4370;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1102;JE	4956 <main+0x23d6>;
0x4376;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1116;MOV	-0x260(%RBP),%R15;
0x437d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1116;TEST	%R15,%R15;
0x4380;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1116;JE	438a <main+0x1e0a>;
0x4382;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1116;MOV	%R15,%RDI;
0x4385;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1116;CALL	23e0 <.plt.sec@start+0x100>;
0x438a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1118;MOV	0x8f9f(%RIP),%RDI;
0x4391;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1118;TEST	%RDI,%RDI;
0x4394;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1118;JE	43a6 <main+0x1e26>;
0x4396;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1118;CALL	23e0 <.plt.sec@start+0x100>;
0x439b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1118;MOVQ	$0,0x8f8a(%RIP);
0x43a6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1119;MOV	0x8f53(%RIP),%RDI;
0x43ad;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1119;TEST	%RDI,%RDI;
0x43b0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1119;JE	43c2 <main+0x1e42>;
0x43b2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1119;CALL	23e0 <.plt.sec@start+0x100>;
0x43b7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1119;MOVQ	$0,0x8f3e(%RIP);
0x43c2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1120;MOV	0x8f47(%RIP),%RDI;
0x43c9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1120;TEST	%RDI,%RDI;
0x43cc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1120;JE	43de <main+0x1e5e>;
0x43ce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1120;CALL	23e0 <.plt.sec@start+0x100>;
0x43d3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1120;MOVQ	$0,0x8f32(%RIP);
0x43de;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1121;MOV	0x8efb(%RIP),%RDI;
0x43e5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1121;TEST	%RDI,%RDI;
0x43e8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1121;JE	43fa <main+0x1e7a>;
0x43ea;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1121;CALL	23e0 <.plt.sec@start+0x100>;
0x43ef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1121;MOVQ	$0,0x8ee6(%RIP);
0x43fa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1122;MOV	0x8f07(%RIP),%RDI;
0x4401;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1122;TEST	%RDI,%RDI;
0x4404;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1122;JE	4416 <main+0x1e96>;
0x4406;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1122;CALL	23e0 <.plt.sec@start+0x100>;
0x440b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1122;MOVQ	$0,0x8ef2(%RIP);
0x4416;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1123;MOV	0x8efb(%RIP),%RDI;
0x441d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1123;TEST	%RDI,%RDI;
0x4420;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1123;JE	4432 <main+0x1eb2>;
0x4422;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1123;CALL	23e0 <.plt.sec@start+0x100>;
0x4427;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1123;MOVQ	$0,0x8ee6(%RIP);
0x4432;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1125;MOV	-0x250(%RBP),%RDI;
0x4439;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1125;CALL	23e0 <.plt.sec@start+0x100>;
0x443e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1126;MOV	-0x258(%RBP),%RDI;
0x4445;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1126;CALL	23e0 <.plt.sec@start+0x100>;
0x444a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1129;CALL	24c0 <.plt.sec@start+0x1e0>;
0x444f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;MOV	-0x38(%RBP),%RAX;
0x4453;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;XOR	%FS:0x28,%RAX;
0x445c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;JNE	4a4c <main+0x24cc>;
0x4462;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;LEA	-0x30(%RBP),%RSP;
0x4466;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;POP	%RBX;
0x4467;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;POP	%R10;
0x4469;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;POP	%R12;
0x446b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;POP	%R13;
0x446d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;POP	%R14;
0x446f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;POP	%R15;
0x4471;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;XOR	%EAX,%EAX;
0x4473;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;POP	%RBP;
0x4474;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;LEA	-0x8(%R10),%RSP;
0x4478;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;RET;
0x4479;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;NOPL	(%RAX);
0x4480;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;MOV	-0x240(%RBP),%EAX;(1) 
0x4486;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;TEST	%EAX,%EAX;(1) 
0x4488;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;JE	2b84 <main+0x604>;(1) 
0x448e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;MOV	-0x1e8(%RBP),%R10;(1) 
0x4495;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;MOV	%R10,-0x1c0(%RBP);(1) 
0x449c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1032;JMP	41d0 <main+0x1c50>;(1) 
0x44a1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	0x8e40(%RIP),%R10D;
0x44a8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;MOV	%R12,%RCX;
0x44ab;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	%R10D,%EAX;
0x44ae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;CLTD;
0x44af;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;IDIV	%R14D;
0x44b2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;LEA	0x8207(%RIP),%RDI;
0x44b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;MOV	%R10D,%EDX;
0x44bc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;ADD	$0x8,%R12;
0x44c0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:992;MOV	%EAX,%ESI;
0x44c2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:993;CALL	24b0 <.plt.sec@start+0x1d0>;
0x44c7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%R14D,%R8D;
0x44ca;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%R13,%RDI;
0x44cd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;LEA	0x524f(%RIP),%RCX;
0x44d4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;OR	$-0x1,%RDX;
0x44d8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	$0x1,%ESI;
0x44dd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;XOR	%EAX,%EAX;
0x44df;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;CALL	2510 <.plt.sec@start+0x230>;
0x44e4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	-0x8(%R12),%RDI;
0x44e9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	0x8e31(%RIP),%ESI;
0x44ef;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;MOV	%R13,%RDX;
0x44f2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:995;CALL	2530 <.plt.sec@start+0x250>;
0x44f7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:997;SAR	$0x1,%R14D;
0x44fa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;ADD	$0x100,%R13;
0x4501;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;CMP	%R12,-0x1f0(%RBP);
0x4508;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;JNE	2982 <main+0x402>;
0x450e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:991;JMP	2a6e <main+0x4ee>;
0x4513;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:949;MOVSXD	%R12D,%R12;
0x4516;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:949;MOV	%R12,%R13;
0x4519;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:949;SAL	$0x2,%R12;
0x451d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:949;MOV	%R12,%RDI;
0x4520;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:949;LEA	0x51d0(%RIP),%RSI;
0x4527;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:949;CALL	4d30 <_ALLOC_MAIN_>;
0x452c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;MOV	%R12,%RDI;
0x452f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;LEA	0x51d1(%RIP),%RSI;
0x4536;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:949;MOV	%RAX,%R14;
0x4539;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;CALL	4d30 <_ALLOC_MAIN_>;
0x453e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:952;LEA	-0x1(%R13),%R11D;
0x4542;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:952;LEA	0x4(,%R11,4),%R12;
0x454a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:952;MOV	%R12,%RDX;
0x454d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:952;MOV	%R14,%RDI;
0x4550;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:952;XOR	%ESI,%ESI;
0x4552;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:952;MOV	%R11D,-0x200(%RBP);
0x4559;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;MOV	%RAX,-0x228(%RBP);
0x4560;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;CALL	22f0 <.plt.sec@start+0x10>;
0x4565;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;MOV	%R12,%RDX;
0x4568;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;MOV	-0x228(%RBP),%R12;
0x456f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;XOR	%ESI,%ESI;
0x4571;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;MOV	%R12,%RDI;
0x4574;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:950;CALL	22f0 <.plt.sec@start+0x10>;
0x4579;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:960;MOV	0x8da9(%RIP),%EDI;
0x457f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:960;MOV	%R14,%RDX;
0x4582;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:960;MOV	%R13D,%ESI;
0x4585;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:960;CALL	2300 <.plt.sec@start+0x20>;
0x458a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:966;MOV	%R12,%RCX;
0x458d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:966;MOV	%R14,%RDX;
0x4590;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:966;MOV	%R13D,%ESI;
0x4593;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:966;LEA	-0x1c0(%RBP),%R9;
0x459a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:966;XOR	%R8D,%R8D;
0x459d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:966;LEA	0x811c(%RIP),%RDI;
0x45a4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:966;CALL	23d0 <.plt.sec@start+0xf0>;
0x45a9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%R13D,%EDI;
0x45ac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;SHR	$0x3,%R13D;
0x45b0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;SAL	$0x5,%R13;
0x45b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%EDI,%R8D;
0x45b7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;LEA	(%R13,%R14,1),%RSI;
0x45bc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	-0x250(%RBP),%RAX;
0x45c3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;AND	$-0x8,%R8D;
0x45c7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	-0x258(%RBP),%RCX;
0x45ce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%RSI,-0x1f0(%RBP);
0x45d5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%R8D,-0x1d8(%RBP);
0x45dc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;LEA	0x8(%RAX),%RDX;
0x45e0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;XOR	%R9D,%R9D;
0x45e3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;VMOVDQA	0x5335(%RIP),%YMM3;
0x45eb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;VMOVDQA	0x534d(%RIP),%YMM2;
0x45f3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%EBX,-0x220(%RBP);
0x45f9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%R15,-0x230(%RBP);
0x4600;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%R14,%R13;
0x4603;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;LEA	0x100(%RCX),%R12;
0x460a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%R9D,%R15D;
0x460d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%EDI,%R14D;
0x4610;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%RDX,%RBX;
0x4613;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;NOPL	(%RAX,%RAX,1);
0x4618;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMPL	$0x6,-0x200(%RBP);(0) 
0x461f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JBE	494e <main+0x23ce>;(0) 
0x4625;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;MOV	-0x1f0(%RBP),%R10;(0) 
0x462c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;VMOVD	%R15D,%XMM1;(0) 
0x4631;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;SUB	%R13,%R10;(0) 
0x4634;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;SUB	$0x20,%R10;(0) 
0x4638;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;SHR	$0x5,%R10;(0) 
0x463c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;INC	%R10;(0) 
0x463f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;VMOVDQA	0x52b9(%RIP),%YMM0;(0) 
0x4647;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;VPBROADCASTD	%XMM1,%YMM5;(0) 
0x464c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%R13,%RAX;(0) 
0x464f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;AND	$0x7,%R10D;(0) 
0x4653;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;JE	4747 <main+0x21c7>;(0) 
0x4659;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;CMP	$0x1,%R10;(0) 
0x465d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;JE	4720 <main+0x21a0>;(0) 
0x4663;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;CMP	$0x2,%R10;(0) 
0x4667;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;JE	4706 <main+0x2186>;(0) 
0x466d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;CMP	$0x3,%R10;(0) 
0x4671;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;JE	46ed <main+0x216d>;(0) 
0x4673;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;CMP	$0x4,%R10;(0) 
0x4677;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;JE	46d3 <main+0x2153>;(0) 
0x4679;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;CMP	$0x5,%R10;(0) 
0x467d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;JE	46b9 <main+0x2139>;(0) 
0x467f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;CMP	$0x6,%R10;(0) 
0x4683;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;JE	469f <main+0x211f>;(0) 
0x4685;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;VMOVDQA	%YMM0,%YMM4;(0) 
0x4689;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM4,%YMM5,%YMM6;(0) 
0x468d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM0,%YMM0;(0) 
0x4691;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;LEA	0x20(%R13),%RAX;(0) 
0x4695;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM6,%YMM8;(0) 
0x4699;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM8,(%R13);(0) 
0x469f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;VMOVDQA	%YMM0,%YMM9;(0) 
0x46a3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM9,%YMM5,%YMM10;(0) 
0x46a8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM0,%YMM0;(0) 
0x46ac;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;ADD	$0x20,%RAX;(0) 
0x46b0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM10,%YMM11;(0) 
0x46b4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM11,-0x20(%RAX);(0) 
0x46b9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;VMOVDQA	%YMM0,%YMM12;(0) 
0x46bd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM12,%YMM5,%YMM13;(0) 
0x46c2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM0,%YMM0;(0) 
0x46c6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;ADD	$0x20,%RAX;(0) 
0x46ca;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM13,%YMM14;(0) 
0x46ce;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM14,-0x20(%RAX);(0) 
0x46d3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;VMOVDQA	%YMM0,%YMM15;(0) 
0x46d7;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM15,%YMM5,%YMM7;(0) 
0x46dc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM0,%YMM0;(0) 
0x46e0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;ADD	$0x20,%RAX;(0) 
0x46e4;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM7,%YMM1;(0) 
0x46e8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM1,-0x20(%RAX);(0) 
0x46ed;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;VMOVDQA	%YMM0,%YMM4;(0) 
0x46f1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM4,%YMM5,%YMM6;(0) 
0x46f5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM0,%YMM0;(0) 
0x46f9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;ADD	$0x20,%RAX;(0) 
0x46fd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM6,%YMM8;(0) 
0x4701;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM8,-0x20(%RAX);(0) 
0x4706;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;VMOVDQA	%YMM0,%YMM9;(0) 
0x470a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM9,%YMM5,%YMM10;(0) 
0x470f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM0,%YMM0;(0) 
0x4713;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;ADD	$0x20,%RAX;(0) 
0x4717;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM10,%YMM11;(0) 
0x471b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM11,-0x20(%RAX);(0) 
0x4720;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;VMOVDQA	%YMM0,%YMM12;(0) 
0x4724;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM12,%YMM5,%YMM13;(0) 
0x4729;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;ADD	$0x20,%RAX;(0) 
0x472d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM0,%YMM0;(0) 
0x4731;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM13,%YMM14;(0) 
0x4735;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM14,-0x20(%RAX);(0) 
0x473a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%RAX,-0x1f0(%RBP);(0) 
0x4741;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JE	47f2 <main+0x2272>;(0) 
0x4747;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;VPADDD	%YMM3,%YMM0,%YMM15;  (32) 
0x474b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM15,%YMM6;  (32) 
0x474f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM0,%YMM5,%YMM7;  (32) 
0x4753;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM6,%YMM9;  (32) 
0x4757;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM15,%YMM5,%YMM4;  (32) 
0x475c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM9,%YMM12;  (32) 
0x4760;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM6,%YMM5,%YMM10;  (32) 
0x4764;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM7,%YMM1;  (32) 
0x4768;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM12,%YMM14;  (32) 
0x476c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM4,%YMM8;  (32) 
0x4770;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM1,(%RAX);  (32) 
0x4774;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM14,%YMM1;  (32) 
0x4778;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM10,%YMM11;  (32) 
0x477c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM8,0x20(%RAX);  (32) 
0x4781;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM1,%YMM8;  (32) 
0x4785;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM9,%YMM5,%YMM0;  (32) 
0x478a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM12,%YMM5,%YMM15;  (32) 
0x478f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM11,0x40(%RAX);  (32) 
0x4794;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM14,%YMM5,%YMM6;  (32) 
0x4799;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM1,%YMM5,%YMM9;  (32) 
0x479d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPCMPEQD	%YMM8,%YMM5,%YMM11;  (32) 
0x47a2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM0,%YMM13;  (32) 
0x47a6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM15,%YMM7;  (32) 
0x47aa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM6,%YMM4;  (32) 
0x47ae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM9,%YMM10;  (32) 
0x47b2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPAND	%YMM2,%YMM11,%YMM12;  (32) 
0x47b6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM13,0x60(%RAX);  (32) 
0x47bb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM7,0x80(%RAX);  (32) 
0x47c3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM4,0xa0(%RAX);  (32) 
0x47cb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM10,0xc0(%RAX);  (32) 
0x47d3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VMOVDQU	%YMM12,0xe0(%RAX);  (32) 
0x47db;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;ADD	$0x100,%RAX;  (32) 
0x47e1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;VPADDD	%YMM3,%YMM8,%YMM0;  (32) 
0x47e5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%RAX,-0x1f0(%RBP);  (32) 
0x47ec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JNE	4747 <main+0x21c7>;  (32) 
0x47f2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;MOV	-0x1d8(%RBP),%R11D;(0) 
0x47f9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%R11D,%R14D;(0) 
0x47fc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JE	48ae <main+0x232e>;(0) 
0x4802;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:975;MOVSXD	%R11D,%RDX;(0) 
0x4805;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:975;SAL	$0x2,%RDX;(0) 
0x4809;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;XOR	%ECX,%ECX;(0) 
0x480b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;CMP	%R11D,%R15D;(0) 
0x480e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;SETE	%CL;(0) 
0x4811;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;LEA	0x1(%R11),%EDI;(0) 
0x4815;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOV	%ECX,(%R13,%RDX,1);(0) 
0x481a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%EDI,%R14D;(0) 
0x481d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JLE	48ae <main+0x232e>;(0) 
0x4823;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;CMP	%EDI,%R15D;(0) 
0x4826;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;SETE	%SIL;(0) 
0x482a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOVZX	%SIL,%R8D;(0) 
0x482e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;LEA	0x2(%R11),%R9D;(0) 
0x4832;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOV	%R8D,0x4(%R13,%RDX,1);(0) 
0x4837;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%R9D,%R14D;(0) 
0x483a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JLE	48ae <main+0x232e>;(0) 
0x483c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;CMP	%R9D,%R15D;(0) 
0x483f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;SETE	%R10B;(0) 
0x4843;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOVZX	%R10B,%EAX;(0) 
0x4847;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;LEA	0x3(%R11),%ECX;(0) 
0x484b;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOV	%EAX,0x8(%R13,%RDX,1);(0) 
0x4850;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%ECX,%R14D;(0) 
0x4853;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JLE	48ae <main+0x232e>;(0) 
0x4855;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;CMP	%ECX,%R15D;(0) 
0x4858;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;SETE	%DIL;(0) 
0x485c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOVZX	%DIL,%ESI;(0) 
0x4860;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;LEA	0x4(%R11),%R8D;(0) 
0x4864;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOV	%ESI,0xc(%R13,%RDX,1);(0) 
0x4869;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%R14D,%R8D;(0) 
0x486c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JGE	48ae <main+0x232e>;(0) 
0x486e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;CMP	%R8D,%R15D;(0) 
0x4871;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;SETE	%R9B;(0) 
0x4875;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOVZX	%R9B,%R10D;(0) 
0x4879;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;LEA	0x5(%R11),%EAX;(0) 
0x487d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOV	%R10D,0x10(%R13,%RDX,1);(0) 
0x4882;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%EAX,%R14D;(0) 
0x4885;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JLE	48ae <main+0x232e>;(0) 
0x4887;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;CMP	%EAX,%R15D;(0) 
0x488a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;SETE	%CL;(0) 
0x488d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOVZX	%CL,%EDI;(0) 
0x4890;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;ADD	$0x6,%R11D;(0) 
0x4894;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOV	%EDI,0x14(%R13,%RDX,1);(0) 
0x4899;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;CMP	%R11D,%R14D;(0) 
0x489c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JLE	48ae <main+0x232e>;(0) 
0x489e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;CMP	%R11D,%R15D;(0) 
0x48a1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;SETE	%R11B;(0) 
0x48a5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOVZX	%R11B,%ESI;(0) 
0x48a9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:976;MOV	%ESI,0x18(%R13,%RDX,1);(0) 
0x48ae;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:978;MOV	-0x1c0(%RBP),%RDI;(0) 
0x48b5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:978;MOV	%RBX,%RDX;(0) 
0x48b8;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:978;MOV	%R13,%RSI;(0) 
0x48bb;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:978;VZEROUPPER;(0) 
0x48be;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:979;INC	%R15D;(0) 
0x48c1;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:978;CALL	2340 <.plt.sec@start+0x60>;(0) 
0x48c6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%R12,%RDI;(0) 
0x48c9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%R14D,%R9D;(0) 
0x48cc;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	%R15D,%R8D;(0) 
0x48cf;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;LEA	0x4e3e(%RIP),%RCX;(0) 
0x48d6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	$-0x1,%RDX;(0) 
0x48dd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;MOV	$0x1,%ESI;(0) 
0x48e2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;XOR	%EAX,%EAX;(0) 
0x48e4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:36;CALL	2510 <.plt.sec@start+0x230>;(0) 
0x48e9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:980;MOV	(%RBX),%RDI;(0) 
0x48ec;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:980;MOV	0x8a2e(%RIP),%ESI;(0) 
0x48f2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:980;MOV	%R12,%RDX;(0) 
0x48f5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:980;CALL	2530 <.plt.sec@start+0x250>;(0) 
0x48fa;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;ADD	$0x8,%RBX;(0) 
0x48fe;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;ADD	$0x100,%R12;(0) 
0x4905;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;CMP	%R14D,%R15D;(0) 
0x4908;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;VMOVDQA	0x5010(%RIP),%YMM3;(0) 
0x4910;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;VMOVDQA	0x5028(%RIP),%YMM2;(0) 
0x4918;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;JNE	4618 <main+0x2098>;(0) 
0x491e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	%R13,%RDI;
0x4921;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	-0x220(%RBP),%EBX;
0x4927;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	-0x230(%RBP),%R15;
0x492e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:973;MOV	-0x21c(%RBP),%R13D;
0x4935;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:984;VZEROUPPER;
0x4938;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:984;CALL	23e0 <.plt.sec@start+0x100>;
0x493d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:985;MOV	-0x228(%RBP),%RDI;
0x4944;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:985;CALL	23e0 <.plt.sec@start+0x100>;
0x4949;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:985;JMP	292b <main+0x3ab>;
0x494e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;XOR	%R11D,%R11D;(0) 
0x4951;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:974;JMP	4802 <main+0x2282>;(0) 
0x4956;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;
0x4958;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1103;MOV	$0xa,%R13D;
0x495e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x4de4(%RIP),%RSI;
0x4965;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x496a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1103;SHRX	%R13,0x8965(%RIP),%RDX;
0x4973;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;
0x4978;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1113;CMPL	$0,0x8969(%RIP);
0x497f;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1113;JNE	4376 <main+0x1df6>;
0x4985;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x4dd8(%RIP),%RDI;
0x498c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2320 <.plt.sec@start+0x40>;
0x4991;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;JMP	4376 <main+0x1df6>;
0x4996;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x76af(%RIP),%RDX;
0x499d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x4cbb(%RIP),%RSI;
0x49a4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x49a9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;
0x49ab;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2360 <.plt.sec@start+0x80>;
0x49b0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;JMP	269e <main+0x11e>;
0x49b5;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;CMPL	$0,-0x240(%RBP);(1) 
0x49bc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1031;JE	2b84 <main+0x604>;(1) 
0x49c2;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;CMPL	$0,-0x228(%RBP);(1) 
0x49c9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1038;JE	2b94 <main+0x614>;(1) 
0x49cf;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;CMPL	$0,-0x220(%RBP);(1) 
0x49d6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1045;JE	2ba4 <main+0x624>;(1) 
0x49dc;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;CMPL	$0,-0x230(%RBP);(1) 
0x49e3;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1052;JE	2bb4 <main+0x634>;(1) 
0x49e9;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;CMPL	$0,-0x234(%RBP);(1) 
0x49f0;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1059;JE	2bc4 <main+0x644>;(1) 
0x49f6;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;CMPL	$0,-0x238(%RBP);(1) 
0x49fd;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1066;JE	2bd4 <main+0x654>;(1) 
0x4a03;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;CMPL	$0,-0x23c(%RBP);(1) 
0x4a0a;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1073;JE	2be4 <main+0x664>;(1) 
0x4a10;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1081;LEA	0x7aa9(%RIP),%R12;(1) 
0x4a17;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1082;LEA	0x7ea2(%RIP),%RAX;(1) 
0x4a1e;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1081;MOV	%R12,-0x198(%RBP);(1) 
0x4a25;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1082;MOV	%RAX,-0x190(%RBP);(1) 
0x4a2c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1084;JMP	2c0e <main+0x68e>;(1) 
0x4a31;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x4c15(%RIP),%RDI;
0x4a38;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	2320 <.plt.sec@start+0x40>;
0x4a3d;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:888;MOV	$0x1,%EDI;
0x4a42;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:888;CALL	2350 <.plt.sec@start+0x70>;
0x4a47;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:874;CALL	4bd0 <usage>;
0x4a4c;/home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:1132;CALL	24a0 <.plt.sec@start+0x1c0>;
0x4a51;:0;NOPW	%CS:(%RAX,%RAX,1);
0x4a5b;:0;NOPL	(%RAX,%RAX,1);
