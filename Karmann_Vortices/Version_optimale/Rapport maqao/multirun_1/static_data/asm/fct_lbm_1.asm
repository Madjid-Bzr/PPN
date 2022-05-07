address;source_location;insn;indent
0x13a0;/users/user2207/lbm_opt/src/main.c:119;ENDBR64;
0x13a4;/users/user2207/lbm_opt/src/main.c:119;PUSH	%RBP;
0x13a5;/users/user2207/lbm_opt/src/main.c:122;MOV	$0x3,%EDX;
0x13aa;/users/user2207/lbm_opt/src/main.c:119;MOV	%RSP,%RBP;
0x13ad;/users/user2207/lbm_opt/src/main.c:119;PUSH	%R15;
0x13af;/users/user2207/lbm_opt/src/main.c:119;PUSH	%R14;
0x13b1;/users/user2207/lbm_opt/src/main.c:119;PUSH	%R13;
0x13b3;/users/user2207/lbm_opt/src/main.c:119;PUSH	%R12;
0x13b5;/users/user2207/lbm_opt/src/main.c:119;PUSH	%RBX;
0x13b6;/users/user2207/lbm_opt/src/main.c:119;AND	$-0x40,%RSP;
0x13ba;/users/user2207/lbm_opt/src/main.c:119;LEA	-0x9b0(%RSP),%RSP;
0x13c2;/users/user2207/lbm_opt/src/main.c:119;MOV	%EDI,0xdc(%RSP);
0x13c9;/users/user2207/lbm_opt/src/main.c:122;LEA	0xec(%RSP),%RCX;
0x13d1;/users/user2207/lbm_opt/src/main.c:119;MOV	%RSI,0xd0(%RSP);
0x13d9;/users/user2207/lbm_opt/src/main.c:122;LEA	0xdc(%RSP),%RDI;
0x13e1;/users/user2207/lbm_opt/src/main.c:122;LEA	0xd0(%RSP),%RSI;
0x13e9;/users/user2207/lbm_opt/src/main.c:119;MOV	%FS:0x28,%RAX;
0x13f2;/users/user2207/lbm_opt/src/main.c:119;MOV	%RAX,0x9a8(%RSP);
0x13fa;/users/user2207/lbm_opt/src/main.c:119;XOR	%EAX,%EAX;
0x13fc;/users/user2207/lbm_opt/src/main.c:122;CALL	12e0 <.plt.sec@start+0xf0>;
0x1401;/users/user2207/lbm_opt/src/main.c:124;LEA	0xe8(%RSP),%RSI;
0x1409;/users/user2207/lbm_opt/src/main.c:124;MOV	$0x44000000,%EDI;
0x140e;/users/user2207/lbm_opt/src/main.c:124;CALL	1310 <.plt.sec@start+0x120>;
0x1413;/users/user2207/lbm_opt/src/main.c:126;LEA	0xe4(%RSP),%RSI;
0x141b;/users/user2207/lbm_opt/src/main.c:126;MOV	$0x44000000,%EDI;
0x1420;/users/user2207/lbm_opt/src/main.c:126;CALL	12d0 <.plt.sec@start+0xe0>;
0x1425;/users/user2207/lbm_opt/src/main.c:130;CMPL	$0x1,0xdc(%RSP);
0x142d;/users/user2207/lbm_opt/src/main.c:133;LEA	0x3c10(%RIP),%RAX;
0x1434;/users/user2207/lbm_opt/src/main.c:133;MOV	%RAX,0xc8(%RSP);
0x143c;/users/user2207/lbm_opt/src/main.c:130;JLE	1452 <main+0xb2>;
0x143e;/users/user2207/lbm_opt/src/main.c:131;MOV	0xd0(%RSP),%RDX;
0x1446;/users/user2207/lbm_opt/src/main.c:131;MOV	0x8(%RDX),%RCX;
0x144a;/users/user2207/lbm_opt/src/main.c:131;MOV	%RCX,0xc8(%RSP);
0x1452;/users/user2207/lbm_opt/src/lbm_config.c:58;MOV	0xc8(%RSP),%RDI;
0x145a;/users/user2207/lbm_opt/src/lbm_config.c:58;LEA	0x3d48(%RIP),%RSI;
0x1461;/users/user2207/lbm_opt/src/lbm_config.c:58;CALL	1290 <.plt.sec@start+0xa0>;
0x1466;/users/user2207/lbm_opt/src/lbm_config.c:59;TEST	%RAX,%RAX;
0x1469;/users/user2207/lbm_opt/src/lbm_config.c:58;LEA	(%RAX),%R14;
0x146c;/users/user2207/lbm_opt/src/lbm_config.c:59;JE	2808 <main+0x1468>;
0x1472;/users/user2207/lbm_opt/src/lbm_config.c:25;MOV	0x41cf(%RIP),%RSI;
0x1479;/users/user2207/lbm_opt/src/lbm_config.c:16;MOV	$0x32000002710,%RBX;
0x1483;/users/user2207/lbm_opt/src/lbm_config.c:20;VXORPD	%XMM0,%XMM0,%XMM0;
0x1487;/users/user2207/lbm_opt/src/lbm_config.c:55;XOR	%R13D,%R13D;
0x148a;/users/user2207/lbm_opt/src/lbm_config.c:20;VMOVAPD	0x41ee(%RIP),%XMM1;
0x1492;/users/user2207/lbm_opt/src/lbm_config.c:16;MOV	%RBX,0x5b87(%RIP);
0x1499;/users/user2207/lbm_opt/src/lbm_config.c:16;LEA	0x1a0(%RSP),%RBX;
0x14a1;/users/user2207/lbm_opt/src/lbm_config.c:18;MOVL	$0x64,0x5b7d(%RIP);
0x14ab;/users/user2207/lbm_opt/src/lbm_config.c:20;VMOVAPD	%XMM0,0x5b7d(%RIP);
0x14b3;/users/user2207/lbm_opt/src/lbm_config.c:20;VMOVAPD	%XMM1,0x5b85(%RIP);
0x14bb;/users/user2207/lbm_opt/src/lbm_config.c:25;MOV	%RSI,0x5b8e(%RIP);
0x14c2;/users/user2207/lbm_opt/src/lbm_config.c:27;MOVQ	$0,0x5b9b(%RIP);
0x14cd;/users/user2207/lbm_opt/src/lbm_config.c:28;MOVL	$0x32,0x5b99(%RIP);
0x14d7;/users/user2207/lbm_opt/src/lbm_config.c:28;NOPW	(%RAX,%RAX,1);
0x14e0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:265;LEA	(%R14),%RDX;(4) 
0x14e3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:265;MOV	$0x400,%ESI;(4) 
0x14e8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:265;LEA	(%RBX),%RDI;(4) 
0x14eb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:265;CALL	12a0 <.plt.sec@start+0xb0>;(4) 
0x14f0;/users/user2207/lbm_opt/src/lbm_config.c:68;TEST	%RAX,%RAX;(4) 
0x14f3;/users/user2207/lbm_opt/src/lbm_config.c:68;JE	1618 <main+0x278>;(4) 
0x14f9;/users/user2207/lbm_opt/src/lbm_config.c:70;CMPB	$0x23,0x1a0(%RSP);(4) 
0x1501;/users/user2207/lbm_opt/src/lbm_config.c:69;LEA	0x1(%R13),%R13D;(4) 
0x1505;/users/user2207/lbm_opt/src/lbm_config.c:70;JE	14e0 <main+0x140>;(4) 
0x1507;/users/user2207/lbm_opt/src/lbm_config.c:72;LEA	0x170(%RSP),%R12;(4) 
0x150f;/users/user2207/lbm_opt/src/lbm_config.c:72;XOR	%EAX,%EAX;(4) 
0x1511;/users/user2207/lbm_opt/src/lbm_config.c:72;LEA	(%R12),%RDX;(4) 
0x1515;/users/user2207/lbm_opt/src/lbm_config.c:72;LEA	0x3b33(%RIP),%RSI;(4) 
0x151c;/users/user2207/lbm_opt/src/lbm_config.c:72;LEA	(%RBX),%RDI;(4) 
0x151f;/users/user2207/lbm_opt/src/lbm_config.c:72;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x1524;/users/user2207/lbm_opt/src/lbm_config.c:72;CMP	$0x1,%EAX;(4) 
0x1527;/users/user2207/lbm_opt/src/lbm_config.c:72;JNE	1538 <main+0x198>;(4) 
0x1529;/users/user2207/lbm_opt/src/lbm_config.c:73;MOV	0x170(%RSP),%EDX;(4) 
0x1530;/users/user2207/lbm_opt/src/lbm_config.c:73;MOV	%EDX,0x5aea(%RIP);(4) 
0x1536;/users/user2207/lbm_opt/src/lbm_config.c:73;JMP	14e0 <main+0x140>;(4) 
0x1538;/users/user2207/lbm_opt/src/lbm_config.c:74;XOR	%EAX,%EAX;(4) 
0x153a;/users/user2207/lbm_opt/src/lbm_config.c:74;LEA	(%R12),%RDX;(4) 
0x153e;/users/user2207/lbm_opt/src/lbm_config.c:74;LEA	0x3b1b(%RIP),%RSI;(4) 
0x1545;/users/user2207/lbm_opt/src/lbm_config.c:74;LEA	(%RBX),%RDI;(4) 
0x1548;/users/user2207/lbm_opt/src/lbm_config.c:74;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x154d;/users/user2207/lbm_opt/src/lbm_config.c:74;CMP	$0x1,%EAX;(4) 
0x1550;/users/user2207/lbm_opt/src/lbm_config.c:74;JNE	1598 <main+0x1f8>;(4) 
0x1552;/users/user2207/lbm_opt/src/lbm_config.c:75;MOV	0x170(%RSP),%EAX;(4) 
0x1559;/users/user2207/lbm_opt/src/lbm_config.c:76;VPXOR	%XMM10,%XMM10,%XMM10;(4) 
0x155e;/users/user2207/lbm_opt/src/lbm_config.c:76;VCOMISD	0x5aca(%RIP),%XMM10;(4) 
0x1566;/users/user2207/lbm_opt/src/lbm_config.c:75;MOV	%EAX,0x5ab8(%RIP);(4) 
0x156c;/users/user2207/lbm_opt/src/lbm_config.c:76;JNE	14e0 <main+0x140>;(4) 
0x1572;/users/user2207/lbm_opt/src/lbm_config.c:77;VCVTUSI2SD	%EAX,%XMM11,%XMM11;(4) 
0x1578;/users/user2207/lbm_opt/src/lbm_config.c:77;VMOVSD	0x4078(%RIP),%XMM12;(4) 
0x1580;/users/user2207/lbm_opt/src/lbm_config.c:77;VFMADD132SD	0x40c7(%RIP),%XMM12,%XMM11;(4) 
0x1589;/users/user2207/lbm_opt/src/lbm_config.c:77;VMOVSD	%XMM11,0x5a9f(%RIP);(4) 
0x1591;/users/user2207/lbm_opt/src/lbm_config.c:77;JMP	14e0 <main+0x140>;(4) 
0x1596;/users/user2207/lbm_opt/src/lbm_config.c:77;XCHG	%AX,%AX;
0x1598;/users/user2207/lbm_opt/src/lbm_config.c:79;XOR	%EAX,%EAX;(4) 
0x159a;/users/user2207/lbm_opt/src/lbm_config.c:79;LEA	(%R12),%RDX;(4) 
0x159e;/users/user2207/lbm_opt/src/lbm_config.c:79;LEA	0x3ac7(%RIP),%RSI;(4) 
0x15a5;/users/user2207/lbm_opt/src/lbm_config.c:79;LEA	(%RBX),%RDI;(4) 
0x15a8;/users/user2207/lbm_opt/src/lbm_config.c:79;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x15ad;/users/user2207/lbm_opt/src/lbm_config.c:79;CMP	$0x1,%EAX;(4) 
0x15b0;/users/user2207/lbm_opt/src/lbm_config.c:79;JNE	2260 <main+0xec0>;(4) 
0x15b6;/users/user2207/lbm_opt/src/lbm_config.c:80;MOV	0x170(%RSP),%R8D;(4) 
0x15be;/users/user2207/lbm_opt/src/lbm_config.c:81;VPXOR	%XMM2,%XMM2,%XMM2;(4) 
0x15c2;/users/user2207/lbm_opt/src/lbm_config.c:81;VCOMISD	0x5a6e(%RIP),%XMM2;(4) 
0x15ca;/users/user2207/lbm_opt/src/lbm_config.c:80;MOV	%R8D,0x5a57(%RIP);(4) 
0x15d1;/users/user2207/lbm_opt/src/lbm_config.c:81;JNE	14e0 <main+0x140>;(4) 
0x15d7;/users/user2207/lbm_opt/src/lbm_config.c:82;VCVTUSI2SD	%R8D,%XMM3,%XMM3;(4) 
0x15dd;/users/user2207/lbm_opt/src/lbm_config.c:82;VMOVSD	0x4043(%RIP),%XMM4;(4) 
0x15e5;/users/user2207/lbm_opt/src/lbm_config.c:84;VMOVSD	0x400b(%RIP),%XMM9;(4) 
0x15ed;/users/user2207/lbm_opt/src/lbm_config.c:82;VFMADD213SD	0x401a(%RIP),%XMM3,%XMM4;(4) 
0x15f6;/users/user2207/lbm_opt/src/lbm_config.c:84;VFMADD132SD	0x4059(%RIP),%XMM9,%XMM3;(4) 
0x15ff;/users/user2207/lbm_opt/src/lbm_config.c:82;VMOVSD	%XMM4,0x5a31(%RIP);(4) 
0x1607;/users/user2207/lbm_opt/src/lbm_config.c:83;VMOVSD	%XMM3,0x5a31(%RIP);(4) 
0x160f;/users/user2207/lbm_opt/src/lbm_config.c:83;JMP	14e0 <main+0x140>;(4) 
0x1614;/users/user2207/lbm_opt/src/lbm_config.c:83;NOPL	(%RAX);
0x1618;/users/user2207/lbm_opt/src/lbm_config.c:117;LEA	(%R14),%RDI;(4) 
0x161b;/users/user2207/lbm_opt/src/lbm_config.c:117;LEA	(%RAX),%R12;(4) 
0x161e;/users/user2207/lbm_opt/src/lbm_config.c:117;CALL	1360 <.plt.sec@start+0x170>;(4) 
0x1623;/users/user2207/lbm_opt/src/lbm_config.c:117;TEST	%EAX,%EAX;(4) 
0x1625;/users/user2207/lbm_opt/src/lbm_config.c:117;JE	2808 <main+0x1468>;(4) 
0x162b;/users/user2207/lbm_opt/src/lbm_config.c:38;VMOVSD	0x5a15(%RIP),%XMM4;(4) 
0x1633;/users/user2207/lbm_opt/src/lbm_config.c:38;VMOVSD	0x5a05(%RIP),%XMM2;(4) 
0x163b;/users/user2207/lbm_opt/src/lbm_config.c:38;VMULSD	%XMM2,%XMM4,%XMM5;(4) 
0x163f;/users/user2207/lbm_opt/src/lbm_config.c:39;VMOVSD	0x5a09(%RIP),%XMM3;(4) 
0x1647;/users/user2207/lbm_opt/src/lbm_config.c:41;VMOVSD	0x3fc1(%RIP),%XMM7;(4) 
0x164f;/users/user2207/lbm_opt/src/lbm_config.c:41;VMOVSD	0x3fa1(%RIP),%XMM8;(4) 
0x1657;/users/user2207/lbm_opt/src/main.c:138;MOV	0xe8(%RSP),%R11D;(4) 
0x165f;/users/user2207/lbm_opt/src/lbm_config.c:38;VADDSD	%XMM5,%XMM5,%XMM6;(4) 
0x1663;/users/user2207/lbm_opt/src/lbm_config.c:38;MOV	0x59be(%RIP),%R10D;(4) 
0x166a;/users/user2207/lbm_opt/src/lbm_config.c:38;MOV	0x59b3(%RIP),%R9D;(4) 
0x1671;/users/user2207/lbm_opt/src/main.c:138;TEST	%R11D,%R11D;(4) 
0x1674;/users/user2207/lbm_opt/src/lbm_config.c:38;VDIVSD	%XMM3,%XMM6,%XMM5;(4) 
0x1678;/users/user2207/lbm_opt/src/lbm_config.c:41;VFMADD213SD	0x3fa7(%RIP),%XMM5,%XMM7;(4) 
0x1681;/users/user2207/lbm_opt/src/lbm_config.c:41;VDIVSD	%XMM7,%XMM8,%XMM6;(4) 
0x1685;/users/user2207/lbm_opt/src/lbm_config.c:37;VMOVSD	%XMM5,0x59cb(%RIP);(4) 
0x168d;/users/user2207/lbm_opt/src/lbm_config.c:40;VMOVSD	%XMM6,0x59cb(%RIP);(4) 
0x1695;/users/user2207/lbm_opt/src/main.c:138;JE	2309 <main+0xf69>;(4) 
0x169b;/users/user2207/lbm_opt/src/lbm_comm.c:14;TEST	%R10D,%R10D;(4) 
0x169e;/users/user2207/lbm_opt/src/lbm_comm.c:67;LEA	(%R10),%EDX;(4) 
0x16a1;/users/user2207/lbm_opt/src/main.c:144;MOV	0xe4(%RSP),%EDI;(4) 
0x16a8;/users/user2207/lbm_opt/src/lbm_comm.c:14;JE	2565 <main+0x11c5>;(4) 
0x16ae;/users/user2207/lbm_opt/src/lbm_comm.c:14;MOV	%EDI,%EAX;(4) 
0x16b0;/users/user2207/lbm_opt/src/lbm_comm.c:15;MOVSXD	%EDX,%RSI;  (3) 
0x16b3;/users/user2207/lbm_opt/src/lbm_comm.c:15;LEA	(%RDX),%R14D;  (3) 
0x16b6;/users/user2207/lbm_opt/src/lbm_comm.c:15;LEA	(%RAX),%EDX;  (3) 
0x16b8;/users/user2207/lbm_opt/src/lbm_comm.c:15;SAR	$0x1f,%EDX;  (3) 
0x16bb;/users/user2207/lbm_opt/src/lbm_comm.c:15;IDIV	%R14D;  (3) 
0x16be;/users/user2207/lbm_opt/src/lbm_comm.c:14;LEA	(%RSI),%EAX;  (3) 
0x16c0;/users/user2207/lbm_opt/src/lbm_comm.c:14;TEST	%EDX,%EDX;  (3) 
0x16c2;/users/user2207/lbm_opt/src/lbm_comm.c:14;JNE	16b0 <main+0x310>;  (3) 
0x16c4;/users/user2207/lbm_opt/src/lbm_comm.c:68;LEA	(%RDI),%EDX;(4) 
0x16c6;/users/user2207/lbm_opt/src/lbm_comm.c:68;LEA	(%RDI),%EAX;(4) 
0x16c8;/users/user2207/lbm_opt/src/lbm_comm.c:68;SAR	$0x1f,%EDX;(4) 
0x16cb;/users/user2207/lbm_opt/src/lbm_comm.c:68;IDIV	%R14D;(4) 
0x16ce;/users/user2207/lbm_opt/src/lbm_comm.c:70;IMUL	%EAX,%R14D;(4) 
0x16d2;/users/user2207/lbm_opt/src/lbm_comm.c:68;MOV	%EAX,%R8D;(4) 
0x16d5;/users/user2207/lbm_opt/src/lbm_comm.c:70;CMP	%R14D,%EDI;(4) 
0x16d8;/users/user2207/lbm_opt/src/lbm_comm.c:70;JNE	2851 <main+0x14b1>;(4) 
0x16de;/users/user2207/lbm_opt/src/lbm_comm.c:71;XOR	%EDX,%EDX;(4) 
0x16e0;/users/user2207/lbm_opt/src/lbm_comm.c:71;LEA	(%RAX),%R13D;(4) 
0x16e3;/users/user2207/lbm_opt/src/lbm_comm.c:71;LEA	(%R10),%EAX;(4) 
0x16e6;/users/user2207/lbm_opt/src/lbm_comm.c:71;DIV	%R8D;(4) 
0x16e9;/users/user2207/lbm_opt/src/lbm_comm.c:71;TEST	%EDX,%EDX;(4) 
0x16eb;/users/user2207/lbm_opt/src/lbm_comm.c:71;JNE	23f2 <main+0x1052>;(4) 
0x16f1;/users/user2207/lbm_opt/src/lbm_comm.c:77;LEA	(%R11),%EDX;
0x16f4;/users/user2207/lbm_opt/src/lbm_comm.c:77;LEA	(%R11),%EAX;
0x16f7;/users/user2207/lbm_opt/src/lbm_comm.c:77;SAR	$0x1f,%EDX;
0x16fa;/users/user2207/lbm_opt/src/lbm_comm.c:77;IDIV	%ESI;
0x16fc;/users/user2207/lbm_opt/src/lbm_comm.c:81;MOV	%ESI,0x5b0(%RSP);
0x1703;/users/user2207/lbm_opt/src/lbm_comm.c:82;MOV	%R8D,0x5b4(%RSP);
0x170b;/users/user2207/lbm_opt/src/lbm_comm.c:82;MOV	%EDX,%R15D;
0x170e;/users/user2207/lbm_opt/src/lbm_comm.c:82;MOV	%EAX,%ECX;
0x1710;/users/user2207/lbm_opt/src/lbm_comm.c:85;XOR	%EDX,%EDX;
0x1712;/users/user2207/lbm_opt/src/lbm_comm.c:85;LEA	(%R9),%EAX;
0x1715;/users/user2207/lbm_opt/src/lbm_comm.c:85;DIV	%ESI;
0x1717;/users/user2207/lbm_opt/src/lbm_comm.c:86;XOR	%EDX,%EDX;
0x1719;/users/user2207/lbm_opt/src/lbm_comm.c:86;LEA	0x1(%R15),%R14D;
0x171d;/users/user2207/lbm_opt/src/lbm_comm.c:85;ADD	$0x2,%EAX;
0x1720;/users/user2207/lbm_opt/src/lbm_comm.c:85;MOV	%EAX,0x5a8(%RSP);
0x1727;/users/user2207/lbm_opt/src/lbm_comm.c:86;LEA	(%R10),%EAX;
0x172a;/users/user2207/lbm_opt/src/lbm_comm.c:86;DIV	%R13D;
0x172d;/users/user2207/lbm_opt/src/lbm_comm.c:89;XOR	%EDX,%EDX;
0x172f;/users/user2207/lbm_opt/src/lbm_comm.c:86;ADD	$0x2,%EAX;
0x1732;/users/user2207/lbm_opt/src/lbm_comm.c:86;MOV	%EAX,0x5ac(%RSP);
0x1739;/users/user2207/lbm_opt/src/lbm_comm.c:89;LEA	(%R15),%EAX;
0x173c;/users/user2207/lbm_opt/src/lbm_comm.c:89;IMUL	%R9D,%EAX;
0x1740;/users/user2207/lbm_opt/src/lbm_comm.c:89;DIV	%ESI;
0x1742;/users/user2207/lbm_opt/src/lbm_comm.c:90;XOR	%EDX,%EDX;
0x1744;/users/user2207/lbm_opt/src/lbm_comm.c:89;MOV	%EAX,0x5a0(%RSP);
0x174b;/users/user2207/lbm_opt/src/lbm_comm.c:90;LEA	(%R10),%EAX;
0x174e;/users/user2207/lbm_opt/src/lbm_comm.c:90;IMUL	%ECX,%EAX;
0x1751;/users/user2207/lbm_opt/src/lbm_comm.c:93;LEA	-0x1(%R15),%R10D;
0x1755;/users/user2207/lbm_opt/src/lbm_comm.c:43;LEA	(%R10),%R11D;
0x1758;/users/user2207/lbm_opt/src/lbm_comm.c:43;SHR	$0x1f,%R11D;
0x175c;/users/user2207/lbm_opt/src/lbm_comm.c:90;DIV	%R13D;
0x175f;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%ESI,%R10D;
0x1762;/users/user2207/lbm_opt/src/lbm_comm.c:43;SETGE	%BL;
0x1765;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%ESI,%R14D;
0x1768;/users/user2207/lbm_opt/src/lbm_comm.c:43;SETGE	%R13B;
0x176c;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	$-0x1,%R15D;
0x1770;/users/user2207/lbm_opt/src/lbm_comm.c:43;SETL	%DIL;
0x1774;/users/user2207/lbm_opt/src/lbm_comm.c:43;OR	%EDI,%R13D;
0x1777;/users/user2207/lbm_opt/src/lbm_comm.c:43;OR	%R11B,%BL;
0x177a;/users/user2207/lbm_opt/src/lbm_comm.c:90;MOV	%EAX,0x5a4(%RSP);
0x1781;/users/user2207/lbm_opt/src/lbm_comm.c:43;JNE	26f1 <main+0x1351>;
0x1787;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%ECX,%ECX;
0x1789;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	26b9 <main+0x1319>;
0x178f;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%ECX;
0x1792;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	26b9 <main+0x1319>;
0x1798;/users/user2207/lbm_opt/src/lbm_comm.c:46;LEA	(%RCX),%EAX;
0x179a;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%EAX;
0x179d;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%R10D,%EAX;
0x17a0;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R13B,%R13B;
0x17a3;/users/user2207/lbm_opt/src/lbm_comm.c:46;MOV	%EAX,0x5bc(%RSP);
0x17aa;/users/user2207/lbm_opt/src/lbm_comm.c:43;JNE	26c4 <main+0x1324>;
0x17b0;/users/user2207/lbm_opt/src/lbm_comm.c:46;LEA	(%RCX),%EDX;
0x17b2;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%EDX;
0x17b5;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%R14D,%EDX;
0x17b8;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R15D,%R15D;
0x17bb;/users/user2207/lbm_opt/src/lbm_comm.c:95;LEA	-0x1(%RCX),%R11D;
0x17bf;/users/user2207/lbm_opt/src/lbm_comm.c:94;MOV	%EDX,0x5b8(%RSP);
0x17c6;/users/user2207/lbm_opt/src/lbm_comm.c:43;LEA	0x1(%RCX),%ECX;
0x17c9;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	26dd <main+0x133d>;
0x17cf;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%ESI,%R15D;
0x17d2;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	26dd <main+0x133d>;
0x17d8;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R11D,%R11D;
0x17db;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	26d5 <main+0x1335>;
0x17e1;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%R11D;
0x17e4;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	26d5 <main+0x1335>;
0x17ea;/users/user2207/lbm_opt/src/lbm_comm.c:46;LEA	(%R11),%EDI;
0x17ed;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%EDI;
0x17f0;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%R15D,%EDI;
0x17f3;/users/user2207/lbm_opt/src/lbm_comm.c:95;MOV	%EDI,0x5c0(%RSP);
0x17fa;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%ECX,%ECX;
0x17fc;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	26cc <main+0x132c>;
0x1802;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%ECX;
0x1805;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	26cc <main+0x132c>;
0x180b;/users/user2207/lbm_opt/src/lbm_comm.c:46;LEA	(%RCX),%EAX;
0x180d;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%EAX;
0x1810;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%EAX,%R15D;
0x1813;/users/user2207/lbm_opt/src/lbm_comm.c:96;MOV	%R15D,0x5c4(%RSP);
0x181b;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%BL,%BL;
0x181d;/users/user2207/lbm_opt/src/lbm_comm.c:43;JNE	274a <main+0x13aa>;
0x1823;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R11D,%R11D;
0x1826;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	2741 <main+0x13a1>;
0x182c;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%R11D;
0x182f;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	2741 <main+0x13a1>;
0x1835;/users/user2207/lbm_opt/src/lbm_comm.c:46;LEA	(%R11),%R15D;
0x1838;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%R15D;
0x183c;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%R10D,%R15D;
0x183f;/users/user2207/lbm_opt/src/lbm_comm.c:97;MOV	%R15D,0x5c8(%RSP);
0x1847;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R13B,%R13B;
0x184a;/users/user2207/lbm_opt/src/lbm_comm.c:43;JNE	2712 <main+0x1372>;
0x1850;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R11D,%R11D;
0x1853;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	2660 <main+0x12c0>;
0x1859;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%R11D;
0x185c;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	2660 <main+0x12c0>;
0x1862;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%R11D;
0x1866;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%R14D,%R11D;
0x1869;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%ECX,%ECX;
0x186b;/users/user2207/lbm_opt/src/lbm_comm.c:46;MOV	%R11D,0x5cc(%RSP);
0x1873;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	2673 <main+0x12d3>;
0x1879;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%ECX;
0x187c;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	2673 <main+0x12d3>;
0x1882;/users/user2207/lbm_opt/src/lbm_comm.c:46;LEA	(%RCX),%EBX;
0x1884;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%EBX;
0x1887;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%EBX,%R10D;
0x188a;/users/user2207/lbm_opt/src/lbm_comm.c:46;MOV	%R10D,0x5d0(%RSP);
0x1892;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%ECX;(0) 
0x1895;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%R14D,%ECX;(0) 
0x1898;/users/user2207/lbm_opt/src/lbm_comm.c:103;MOV	%ECX,0x5d4(%RSP);(0) 
0x189f;/users/user2207/lbm_opt/src/lbm_comm.c:107;CMP	$0x1,%R8D;(0) 
0x18a3;/users/user2207/lbm_opt/src/lbm_comm.c:107;JG	22a7 <main+0xf07>;(0) 
0x18a9;/users/user2207/lbm_opt/src/lbm_comm.c:110;MOVQ	$0,0x658(%RSP);(0) 
0x18b5;/users/user2207/lbm_opt/src/lbm_comm.c:30;LEA	0x180(%RSP),%R13;(0) 
0x18bd;/users/user2207/lbm_opt/src/lbm_comm.c:30;MOV	$0x44000000,%EDI;(0) 
0x18c2;/users/user2207/lbm_opt/src/lbm_comm.c:30;LEA	(%R13),%RSI;(0) 
0x18c6;/users/user2207/lbm_opt/src/lbm_comm.c:30;CALL	1310 <.plt.sec@start+0x120>;(0) 
0x18cb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5a0(%RSP),%ECX;(0) 
0x18d2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;(0) 
0x18d4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5cc(%RSP),%R8D;(0) 
0x18dc;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5ac(%RSP),%R10D;(0) 
0x18e4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5a4(%RSP),%R11D;(0) 
0x18ec;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5d0(%RSP),%ESI;(0) 
0x18f3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5c4(%RSP),%EDI;(0) 
0x18fa;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5a8(%RSP),%R14D;(0) 
0x1902;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5d4(%RSP),%R15D;(0) 
0x190a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5c8(%RSP),%EBX;(0) 
0x1911;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5c0(%RSP),%R9D;(0) 
0x1919;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%ECX,0x28(%RSP);(0) 
0x191d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R8D,0x10(%RSP);(0) 
0x1922;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5bc(%RSP),%ECX;(0) 
0x1929;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x5b8(%RSP),%R8D;(0) 
0x1931;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x180(%RSP),%EDX;(0) 
0x1938;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R10D,0x40(%RSP);(0) 
0x193d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R11D,0x30(%RSP);(0) 
0x1942;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%ESI,0x18(%RSP);(0) 
0x1946;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x3a53(%RIP),%RSI;(0) 
0x194d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%EDI,(%RSP);(0) 
0x1950;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(0) 
0x1955;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R14D,0x38(%RSP);(0) 
0x195a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R15D,0x20(%RSP);(0) 
0x195f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%EBX,0x8(%RSP);(0) 
0x1963;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1270 <.plt.sec@start+0x80>;(0) 
0x1968;/users/user2207/lbm_opt/src/main.c:147;MOV	0x5ac(%RSP),%EDX;(0) 
0x196f;/users/user2207/lbm_opt/src/main.c:147;LEA	0x170(%RSP),%RDI;(0) 
0x1977;/users/user2207/lbm_opt/src/main.c:147;MOV	0x5a8(%RSP),%ESI;(0) 
0x197e;/users/user2207/lbm_opt/src/main.c:147;MOV	%RDI,0xc8(%RSP);(0) 
0x1986;/users/user2207/lbm_opt/src/main.c:147;CALL	3ef0 <Mesh_init>;(0) 
0x198b;/users/user2207/lbm_opt/src/main.c:150;MOV	0x5ac(%RSP),%EDX;(0) 
0x1992;/users/user2207/lbm_opt/src/main.c:150;LEA	0x160(%RSP),%RDI;(0) 
0x199a;/users/user2207/lbm_opt/src/main.c:150;MOV	0x5a8(%RSP),%ESI;(0) 
0x19a1;/users/user2207/lbm_opt/src/main.c:150;MOV	%RDI,0xc0(%RSP);(0) 
0x19a9;/users/user2207/lbm_opt/src/main.c:150;CALL	3ef0 <Mesh_init>;(0) 
0x19ae;/users/user2207/lbm_opt/src/main.c:153;MOV	0x5ac(%RSP),%EDX;(0) 
0x19b5;/users/user2207/lbm_opt/src/main.c:153;LEA	0x150(%RSP),%RDI;(0) 
0x19bd;/users/user2207/lbm_opt/src/main.c:153;MOV	0x5a8(%RSP),%ESI;(0) 
0x19c4;/users/user2207/lbm_opt/src/main.c:153;MOV	%RDI,0x80(%RSP);(0) 
0x19cc;/users/user2207/lbm_opt/src/main.c:153;CALL	3ef0 <Mesh_init>;(0) 
0x19d1;/users/user2207/lbm_opt/src/main.c:157;MOV	0x5a8(%RSP),%EAX;(0) 
0x19d8;/users/user2207/lbm_opt/src/main.c:158;MOV	0x5ac(%RSP),%R9D;(0) 
0x19e0;/users/user2207/lbm_opt/src/lbm_struct.c:30;MOV	%EAX,0x148(%RSP);(0) 
0x19e7;/users/user2207/lbm_opt/src/lbm_struct.c:34;LEA	0x2(%RAX),%EAX;(0) 
0x19ea;/users/user2207/lbm_opt/src/lbm_struct.c:31;MOV	%R9D,0x14c(%RSP);(0) 
0x19f2;/users/user2207/lbm_opt/src/lbm_struct.c:34;LEA	(%RAX),%EDI;(0) 
0x19f4;/users/user2207/lbm_opt/src/lbm_struct.c:34;IMUL	%R9D,%EDI;(0) 
0x19f8;/users/user2207/lbm_opt/src/lbm_struct.c:34;SAL	$0x2,%RDI;(0) 
0x19fc;/users/user2207/lbm_opt/src/lbm_struct.c:34;CALL	1280 <.plt.sec@start+0x90>;(0) 
0x1a01;/users/user2207/lbm_opt/src/lbm_struct.c:34;MOV	%RAX,0x140(%RSP);(0) 
0x1a09;/users/user2207/lbm_opt/src/lbm_struct.c:35;TEST	%RAX,%RAX;(0) 
0x1a0c;/users/user2207/lbm_opt/src/lbm_struct.c:35;JE	2870 <main+0x14d0>;(0) 
0x1a12;/users/user2207/lbm_opt/src/main.c:162;MOV	0xe8(%RSP),%EDX;(0) 
0x1a19;/users/user2207/lbm_opt/src/main.c:162;TEST	%EDX,%EDX;(0) 
0x1a1b;/users/user2207/lbm_opt/src/main.c:162;JE	243f <main+0x109f>;(0) 
0x1a21;/users/user2207/lbm_opt/src/main.c:169;MOV	0xc8(%RSP),%RDI;(0) 
0x1a29;/users/user2207/lbm_opt/src/main.c:169;LEA	0x5a0(%RSP),%RBX;(0) 
0x1a31;/users/user2207/lbm_opt/src/main.c:169;LEA	0x140(%RSP),%R15;(0) 
0x1a39;/users/user2207/lbm_opt/src/main.c:169;LEA	(%RBX),%RDX;(0) 
0x1a3c;/users/user2207/lbm_opt/src/main.c:169;MOV	%RBX,0xa0(%RSP);(0) 
0x1a44;/users/user2207/lbm_opt/src/main.c:169;LEA	(%R15),%RSI;(0) 
0x1a47;/users/user2207/lbm_opt/src/main.c:169;MOV	%R15,0xa8(%RSP);(0) 
0x1a4f;/users/user2207/lbm_opt/src/main.c:169;CALL	29c0 <setup_init_state>;(0) 
0x1a54;/users/user2207/lbm_opt/src/main.c:170;MOV	0xc0(%RSP),%RDI;(0) 
0x1a5c;/users/user2207/lbm_opt/src/main.c:170;LEA	(%RBX),%RDX;(0) 
0x1a5f;/users/user2207/lbm_opt/src/main.c:170;LEA	(%R15),%RSI;(0) 
0x1a62;/users/user2207/lbm_opt/src/main.c:170;CALL	29c0 <setup_init_state>;(0) 
0x1a67;/users/user2207/lbm_opt/src/main.c:173;CMPQ	$0,0x55f9(%RIP);(0) 
0x1a6f;/users/user2207/lbm_opt/src/main.c:173;JE	1a8a <main+0x6ea>;(0) 
0x1a71;/users/user2207/lbm_opt/src/main.c:174;MOV	0x80(%RSP),%RDX;(0) 
0x1a79;/users/user2207/lbm_opt/src/main.c:174;LEA	(%R12),%RDI;(0) 
0x1a7d;/users/user2207/lbm_opt/src/main.c:174;MOV	0xc8(%RSP),%RSI;(0) 
0x1a85;/users/user2207/lbm_opt/src/main.c:174;CALL	41d0 <save_frame_all_domain>;(0) 
0x1a8a;/users/user2207/lbm_opt/src/main.c:179;MOV	0x5590(%RIP),%EDI;(0) 
0x1a90;/users/user2207/lbm_opt/src/main.c:179;MOV	%RDI,%RBX;(0) 
0x1a93;/users/user2207/lbm_opt/src/main.c:179;SAL	$0x3,%RDI;(0) 
0x1a97;/users/user2207/lbm_opt/src/main.c:179;CALL	1280 <.plt.sec@start+0x90>;(0) 
0x1a9c;/users/user2207/lbm_opt/src/main.c:181;LEA	0x130(%RSP),%RSI;(0) 
0x1aa4;/users/user2207/lbm_opt/src/main.c:181;MOV	$0x4,%EDI;(0) 
0x1aa9;/users/user2207/lbm_opt/src/main.c:179;LEA	(%RAX),%R14;(0) 
0x1aac;/users/user2207/lbm_opt/src/main.c:181;CALL	1230 <.plt.sec@start+0x40>;(0) 
0x1ab1;/users/user2207/lbm_opt/src/main.c:183;CMP	$0x1,%EBX;(0) 
0x1ab4;/users/user2207/lbm_opt/src/main.c:183;JBE	258a <main+0x11ea>;(0) 
0x1aba;/users/user2207/lbm_opt/src/main.c:183;VMOVQ	0xc0(%RSP),%XMM4;(0) 
0x1ac3;/users/user2207/lbm_opt/src/main.c:183;LEA	0x120(%RSP),%R11;(0) 
0x1acb;/users/user2207/lbm_opt/src/main.c:183;VMOVSD	0x3b8d(%RIP),%XMM3;(0) 
0x1ad3;/users/user2207/lbm_opt/src/main.c:183;LEA	0x110(%RSP),%RCX;(0) 
0x1adb;/users/user2207/lbm_opt/src/main.c:183;VPINSRQ	$0x1,0xc8(%RSP),%XMM4,%XMM9;(0) 
0x1ae6;/users/user2207/lbm_opt/src/main.c:183;MOV	$0x1,%EBX;(0) 
0x1aeb;/users/user2207/lbm_opt/src/main.c:183;MOV	%R14,0xb0(%RSP);(0) 
0x1af3;/users/user2207/lbm_opt/src/main.c:183;LEA	0x108(%RSP),%R15;(0) 
0x1afb;/users/user2207/lbm_opt/src/main.c:183;MOV	%R12,0x88(%RSP);(0) 
0x1b03;/users/user2207/lbm_opt/src/main.c:183;LEA	(%R11),%R14;(0) 
0x1b06;/users/user2207/lbm_opt/src/main.c:183;VMOVSD	%XMM3,0xb8(%RSP);(0) 
0x1b0f;/users/user2207/lbm_opt/src/main.c:183;LEA	(%RCX),%R12;(0) 
0x1b12;/users/user2207/lbm_opt/src/main.c:183;VMOVDQA	%XMM9,0x90(%RSP);(0) 
0x1b1b;/users/user2207/lbm_opt/src/main.c:183;NOPL	(%RAX,%RAX,1);(0) 
0x1b20;/users/user2207/lbm_opt/src/main.c:184;MOV	%R14,%RSI;  (2) 
0x1b23;/users/user2207/lbm_opt/src/main.c:184;MOV	$0x4,%EDI;  (2) 
0x1b28;/users/user2207/lbm_opt/src/main.c:184;CALL	1230 <.plt.sec@start+0x40>;  (2) 
0x1b2d;/users/user2207/lbm_opt/src/lbm_phys.c:187;MOV	0xa0(%RSP),%RSI;  (2) 
0x1b35;/users/user2207/lbm_opt/src/lbm_phys.c:187;XOR	%ECX,%ECX;  (2) 
0x1b37;/users/user2207/lbm_opt/src/lbm_phys.c:187;VMOVQ	0xc8(%RSP),%XMM10;  (2) 
0x1b40;/users/user2207/lbm_opt/src/lbm_phys.c:187;XOR	%EDX,%EDX;  (2) 
0x1b42;/users/user2207/lbm_opt/src/lbm_phys.c:187;VPINSRQ	$0x1,0xa8(%RSP),%XMM10,%XMM11;  (2) 
0x1b4d;/users/user2207/lbm_opt/src/lbm_phys.c:187;LEA	0x1e5c(%RIP),%RDI;  (2) 
0x1b54;/users/user2207/lbm_opt/src/lbm_phys.c:187;MOV	%RSI,0x190(%RSP);  (2) 
0x1b5c;/users/user2207/lbm_opt/src/lbm_phys.c:187;LEA	(%R13),%RSI;  (2) 
0x1b60;/users/user2207/lbm_opt/src/lbm_phys.c:187;VMOVDQA	%XMM11,0x180(%RSP);  (2) 
0x1b69;/users/user2207/lbm_opt/src/lbm_phys.c:187;CALL	1300 <.plt.sec@start+0x110>;  (2) 
0x1b6e;/users/user2207/lbm_opt/src/lbm_phys.c:212;XOR	%ECX,%ECX;  (2) 
0x1b70;/users/user2207/lbm_opt/src/lbm_phys.c:212;XOR	%EDX,%EDX;  (2) 
0x1b72;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVDQA	0x90(%RSP),%XMM12;  (2) 
0x1b7b;/users/user2207/lbm_opt/src/lbm_phys.c:215;LEA	(%R13),%RSI;  (2) 
0x1b7f;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVDQA	%XMM12,0x180(%RSP);  (2) 
0x1b88;/users/user2207/lbm_opt/src/lbm_phys.c:215;LEA	0x2781(%RIP),%RDI;  (2) 
0x1b8f;/users/user2207/lbm_opt/src/lbm_phys.c:215;CALL	1300 <.plt.sec@start+0x110>;  (2) 
0x1b94;/users/user2207/lbm_opt/src/lbm_comm.c:253;LEA	(%R15),%RSI;  (2) 
0x1b97;/users/user2207/lbm_opt/src/lbm_comm.c:253;MOV	$0x44000000,%EDI;  (2) 
0x1b9c;/users/user2207/lbm_opt/src/lbm_comm.c:253;CALL	1310 <.plt.sec@start+0x120>;  (2) 
0x1ba1;/users/user2207/lbm_opt/src/lbm_comm.c:256;MOV	0x5a8(%RSP),%R8D;  (2) 
0x1ba9;/users/user2207/lbm_opt/src/lbm_comm.c:256;MOV	0x5b8(%RSP),%ECX;  (2) 
0x1bb0;/users/user2207/lbm_opt/src/lbm_comm.c:256;SUB	$0x2,%R8D;  (2) 
0x1bb4;/users/user2207/lbm_opt/src/lbm_comm.c:150;CMP	$-0x1,%ECX;  (2) 
0x1bb7;/users/user2207/lbm_opt/src/lbm_comm.c:150;JE	1bf1 <main+0x851>;  (2) 
0x1bb9;/users/user2207/lbm_opt/src/lbm_comm.c:158;MOV	0x16c(%RSP),%R9D;  (2) 
0x1bc1;/users/user2207/lbm_opt/src/lbm_comm.c:157;MOV	$0x4c00080b,%EDX;  (2) 
0x1bc6;/users/user2207/lbm_opt/include/lbm_struct.h:139;IMUL	%R9D,%R8D;  (2) 
0x1bca;/users/user2207/lbm_opt/src/lbm_comm.c:158;LEA	-0x12(%R9,%R9,8),%ESI;  (2) 
0x1bcf;/users/user2207/lbm_opt/include/lbm_struct.h:139;MOV	0x160(%RSP),%R9;  (2) 
0x1bd7;/users/user2207/lbm_opt/include/lbm_struct.h:139;LEA	0x9(%R8,%R8,8),%EDI;  (2) 
0x1bdc;/users/user2207/lbm_opt/src/lbm_comm.c:157;XOR	%R8D,%R8D;  (2) 
0x1bdf;/users/user2207/lbm_opt/include/lbm_struct.h:139;SAL	$0x3,%RDI;  (2) 
0x1be3;/users/user2207/lbm_opt/include/lbm_struct.h:139;ADD	%R9,%RDI;  (2) 
0x1be6;/users/user2207/lbm_opt/src/lbm_comm.c:157;MOV	$0x44000000,%R9D;  (2) 
0x1bec;/users/user2207/lbm_opt/src/lbm_comm.c:157;CALL	1200 <.plt.sec@start+0x10>;  (2) 
0x1bf1;/users/user2207/lbm_opt/src/lbm_comm.c:258;MOV	0x5bc(%RSP),%ECX;  (2) 
0x1bf8;/users/user2207/lbm_opt/src/lbm_comm.c:150;CMP	$-0x1,%ECX;  (2) 
0x1bfb;/users/user2207/lbm_opt/src/lbm_comm.c:150;JE	1c77 <main+0x8d7>;  (2) 
0x1bfd;/users/user2207/lbm_opt/src/lbm_comm.c:163;MOV	0x16c(%RSP),%R10D;  (2) 
0x1c05;/users/user2207/lbm_opt/src/lbm_comm.c:162;XOR	%R8D,%R8D;  (2) 
0x1c08;/users/user2207/lbm_opt/include/lbm_struct.h:139;MOV	0x160(%RSP),%RDI;  (2) 
0x1c10;/users/user2207/lbm_opt/src/lbm_comm.c:162;MOV	$0x44000000,%R9D;  (2) 
0x1c16;/users/user2207/lbm_opt/src/lbm_comm.c:162;MOV	%R13,(%RSP);  (2) 
0x1c1a;/users/user2207/lbm_opt/src/lbm_comm.c:162;MOV	$0x4c00080b,%EDX;  (2) 
0x1c1f;/users/user2207/lbm_opt/src/lbm_comm.c:163;LEA	-0x12(%R10,%R10,8),%ESI;  (2) 
0x1c24;/users/user2207/lbm_opt/include/lbm_struct.h:139;ADD	$0x48,%RDI;  (2) 
0x1c28;/users/user2207/lbm_opt/src/lbm_comm.c:162;CALL	12f0 <.plt.sec@start+0x100>;  (2) 
0x1c2d;/users/user2207/lbm_opt/src/lbm_comm.c:262;MOV	0x5bc(%RSP),%ECX;  (2) 
0x1c34;/users/user2207/lbm_opt/src/lbm_comm.c:150;CMP	$-0x1,%ECX;  (2) 
0x1c37;/users/user2207/lbm_opt/src/lbm_comm.c:150;JE	1c77 <main+0x8d7>;  (2) 
0x1c39;/users/user2207/lbm_opt/src/lbm_comm.c:158;MOV	0x16c(%RSP),%R11D;  (2) 
0x1c41;/users/user2207/lbm_opt/src/lbm_comm.c:157;MOV	$0x44000000,%R9D;  (2) 
0x1c47;/users/user2207/lbm_opt/src/lbm_comm.c:157;MOV	$0x4c00080b,%EDX;  (2) 
0x1c4c;/users/user2207/lbm_opt/src/lbm_comm.c:158;MOV	%R11D,%R8D;  (2) 
0x1c4f;/users/user2207/lbm_opt/src/lbm_comm.c:158;SAL	$0x3,%R8D;  (2) 
0x1c53;/users/user2207/lbm_opt/src/lbm_comm.c:158;ADD	%R11D,%R8D;  (2) 
0x1c56;/users/user2207/lbm_opt/src/lbm_comm.c:158;MOV	%R8D,%ESI;  (2) 
0x1c59;/users/user2207/lbm_opt/include/lbm_struct.h:139;LEA	0x9(%R8),%EDI;  (2) 
0x1c5d;/users/user2207/lbm_opt/include/lbm_struct.h:139;MOV	0x160(%RSP),%R8;  (2) 
0x1c65;/users/user2207/lbm_opt/src/lbm_comm.c:158;SUB	$0x12,%ESI;  (2) 
0x1c68;/users/user2207/lbm_opt/include/lbm_struct.h:139;SAL	$0x3,%RDI;  (2) 
0x1c6c;/users/user2207/lbm_opt/include/lbm_struct.h:139;ADD	%R8,%RDI;  (2) 
0x1c6f;/users/user2207/lbm_opt/src/lbm_comm.c:157;XOR	%R8D,%R8D;  (2) 
0x1c72;/users/user2207/lbm_opt/src/lbm_comm.c:157;CALL	1200 <.plt.sec@start+0x10>;  (2) 
0x1c77;/users/user2207/lbm_opt/src/lbm_comm.c:264;MOV	0x5a8(%RSP),%R10D;  (2) 
0x1c7f;/users/user2207/lbm_opt/src/lbm_comm.c:264;MOV	0x5b8(%RSP),%ECX;  (2) 
0x1c86;/users/user2207/lbm_opt/src/lbm_comm.c:264;SUB	$0x1,%R10D;  (2) 
0x1c8a;/users/user2207/lbm_opt/src/lbm_comm.c:150;CMP	$-0x1,%ECX;  (2) 
0x1c8d;/users/user2207/lbm_opt/src/lbm_comm.c:150;JE	1cc9 <main+0x929>;  (2) 
0x1c8f;/users/user2207/lbm_opt/src/lbm_comm.c:163;MOV	0x16c(%RSP),%EDX;  (2) 
0x1c96;/users/user2207/lbm_opt/src/lbm_comm.c:162;MOV	$0x44000000,%R9D;  (2) 
0x1c9c;/users/user2207/lbm_opt/src/lbm_comm.c:162;MOV	%R13,(%RSP);  (2) 
0x1ca0;/users/user2207/lbm_opt/src/lbm_comm.c:162;XOR	%R8D,%R8D;  (2) 
0x1ca3;/users/user2207/lbm_opt/include/lbm_struct.h:139;IMUL	%EDX,%R10D;  (2) 
0x1ca7;/users/user2207/lbm_opt/src/lbm_comm.c:163;LEA	-0x12(%RDX,%RDX,8),%ESI;  (2) 
0x1cab;/users/user2207/lbm_opt/include/lbm_struct.h:139;MOV	0x160(%RSP),%RDX;  (2) 
0x1cb3;/users/user2207/lbm_opt/include/lbm_struct.h:139;LEA	0x9(%R10,%R10,8),%EDI;  (2) 
0x1cb8;/users/user2207/lbm_opt/include/lbm_struct.h:139;SAL	$0x3,%RDI;  (2) 
0x1cbc;/users/user2207/lbm_opt/include/lbm_struct.h:139;ADD	%RDX,%RDI;  (2) 
0x1cbf;/users/user2207/lbm_opt/src/lbm_comm.c:162;MOV	$0x4c00080b,%EDX;  (2) 
0x1cc4;/users/user2207/lbm_opt/src/lbm_comm.c:162;CALL	12f0 <.plt.sec@start+0x100>;  (2) 
0x1cc9;/users/user2207/lbm_opt/src/lbm_phys.c:229;VMOVQ	0xc8(%RSP),%XMM13;  (2) 
0x1cd2;/users/user2207/lbm_opt/src/lbm_phys.c:229;XOR	%ECX,%ECX;  (2) 
0x1cd4;/users/user2207/lbm_opt/src/lbm_phys.c:229;XOR	%EDX,%EDX;  (2) 
0x1cd6;/users/user2207/lbm_opt/src/lbm_phys.c:229;VPINSRQ	$0x1,0xc0(%RSP),%XMM13,%XMM14;  (2) 
0x1ce1;/users/user2207/lbm_opt/src/lbm_phys.c:229;LEA	(%R13),%RSI;  (2) 
0x1ce5;/users/user2207/lbm_opt/src/lbm_phys.c:229;LEA	0x1684(%RIP),%RDI;  (2) 
0x1cec;/users/user2207/lbm_opt/src/lbm_phys.c:229;VMOVDQA	%XMM14,0x180(%RSP);  (2) 
0x1cf5;/users/user2207/lbm_opt/src/lbm_phys.c:229;CALL	1300 <.plt.sec@start+0x110>;  (2) 
0x1cfa;/users/user2207/lbm_opt/src/main.c:203;MOV	0x5370(%RIP),%ECX;  (2) 
0x1d00;/users/user2207/lbm_opt/src/main.c:203;LEA	(%RBX),%RDX;  (2) 
0x1d03;/users/user2207/lbm_opt/src/main.c:203;SAR	$0x3f,%RDX;  (2) 
0x1d07;/users/user2207/lbm_opt/src/main.c:203;LEA	(%RBX),%RAX;  (2) 
0x1d0a;/users/user2207/lbm_opt/src/main.c:203;IDIV	%RCX;  (2) 
0x1d0d;/users/user2207/lbm_opt/src/main.c:203;TEST	%RDX,%RDX;  (2) 
0x1d10;/users/user2207/lbm_opt/src/main.c:203;JNE	1d39 <main+0x999>;  (2) 
0x1d12;/users/user2207/lbm_opt/src/main.c:203;CMPQ	$0,0x534e(%RIP);  (2) 
0x1d1a;/users/user2207/lbm_opt/src/main.c:203;JE	1d39 <main+0x999>;  (2) 
0x1d1c;/users/user2207/lbm_opt/src/main.c:205;MOV	0x80(%RSP),%RDX;  (2) 
0x1d24;/users/user2207/lbm_opt/src/main.c:205;MOV	0xc8(%RSP),%RSI;  (2) 
0x1d2c;/users/user2207/lbm_opt/src/main.c:205;MOV	0x88(%RSP),%RDI;  (2) 
0x1d34;/users/user2207/lbm_opt/src/main.c:205;CALL	41d0 <save_frame_all_domain>;  (2) 
0x1d39;/users/user2207/lbm_opt/src/main.c:210;LEA	(%R12),%RSI;  (2) 
0x1d3d;/users/user2207/lbm_opt/src/main.c:210;MOV	$0x4,%EDI;  (2) 
0x1d42;/users/user2207/lbm_opt/src/main.c:210;CALL	1230 <.plt.sec@start+0x40>;  (2) 
0x1d47;/users/user2207/lbm_opt/src/main.c:115;MOV	0x118(%RSP),%RSI;  (2) 
0x1d4f;/users/user2207/lbm_opt/src/main.c:183;LEA	0x52ca(%RIP),%RDI;  (2) 
0x1d56;/users/user2207/lbm_opt/src/main.c:114;MOV	0x110(%RSP),%R9;  (2) 
0x1d5e;/users/user2207/lbm_opt/src/main.c:211;MOV	0xb0(%RSP),%R10;  (2) 
0x1d66;/users/user2207/lbm_opt/src/main.c:183;MOV	(%RDI),%R11D;  (2) 
0x1d69;/users/user2207/lbm_opt/src/main.c:115;SUB	0x128(%RSP),%RSI;  (2) 
0x1d71;/users/user2207/lbm_opt/src/main.c:114;SUB	0x120(%RSP),%R9;  (2) 
0x1d79;/users/user2207/lbm_opt/src/main.c:115;VCVTSI2SD	%RSI,%XMM15,%XMM15;  (2) 
0x1d7e;/users/user2207/lbm_opt/src/main.c:114;VCVTSI2SD	%R9,%XMM0,%XMM0;  (2) 
0x1d83;/users/user2207/lbm_opt/src/main.c:114;VFMADD132SD	0xb8(%RSP),%XMM0,%XMM15;  (2) 
0x1d8d;/users/user2207/lbm_opt/src/main.c:211;VMOVSD	%XMM15,(%R10,%RBX,8);  (2) 
0x1d93;/users/user2207/lbm_opt/src/main.c:183;LEA	0x1(%RBX),%RBX;  (2) 
0x1d97;/users/user2207/lbm_opt/src/main.c:183;CMP	%RBX,%R11;  (2) 
0x1d9a;/users/user2207/lbm_opt/src/main.c:183;JG	1b20 <main+0x780>;  (2) 
0x1da0;/users/user2207/lbm_opt/src/main.c:183;MOV	0xb0(%RSP),%R14;(0) 
0x1da8;/users/user2207/lbm_opt/src/main.c:183;MOV	0x88(%RSP),%R12;(0) 
0x1db0;/users/user2207/lbm_opt/src/main.c:214;LEA	(%R13),%RSI;(0) 
0x1db4;/users/user2207/lbm_opt/src/main.c:214;MOV	$0x4,%EDI;(0) 
0x1db9;/users/user2207/lbm_opt/src/main.c:214;CALL	1230 <.plt.sec@start+0x40>;(0) 
0x1dbe;/users/user2207/lbm_opt/src/main.c:115;MOV	0x188(%RSP),%R13;(0) 
0x1dc6;/users/user2207/lbm_opt/src/main.c:217;MOV	$0x44000000,%EDI;(0) 
0x1dcb;/users/user2207/lbm_opt/src/main.c:114;MOV	0x180(%RSP),%R8;(0) 
0x1dd3;/users/user2207/lbm_opt/src/main.c:115;SUB	0x138(%RSP),%R13;(0) 
0x1ddb;/users/user2207/lbm_opt/src/main.c:114;SUB	0x130(%RSP),%R8;(0) 
0x1de3;/users/user2207/lbm_opt/src/main.c:115;VCVTSI2SD	%R13,%XMM5,%XMM5;(0) 
0x1de8;/users/user2207/lbm_opt/src/main.c:114;VCVTSI2SD	%R8,%XMM1,%XMM1;(0) 
0x1ded;/users/user2207/lbm_opt/src/main.c:114;VFMADD132SD	0xb8(%RSP),%XMM1,%XMM5;(0) 
0x1df7;/users/user2207/lbm_opt/src/main.c:215;VMOVSD	%XMM5,0x108(%RSP);(0) 
0x1e00;/users/user2207/lbm_opt/src/main.c:217;CALL	11f0 <.plt.sec@start>;(0) 
0x1e05;/users/user2207/lbm_opt/src/main.c:219;MOV	0x5215(%RIP),%ESI;(0) 
0x1e0b;/users/user2207/lbm_opt/src/main.c:218;MOVQ	$0,0x100(%RSP);(0) 
0x1e17;/users/user2207/lbm_opt/src/main.c:219;TEST	%RSI,%RSI;(0) 
0x1e1a;/users/user2207/lbm_opt/src/main.c:219;MOV	%RSI,%R10;(0) 
0x1e1d;/users/user2207/lbm_opt/src/main.c:219;JE	2579 <main+0x11d9>;(0) 
0x1e23;/users/user2207/lbm_opt/src/main.c:219;LEA	(%R14),%RAX;(0) 
0x1e26;/users/user2207/lbm_opt/src/main.c:219;MOV	$0xb,%ECX;(0) 
0x1e2b;/users/user2207/lbm_opt/src/main.c:219;SHR	$0x3,%RAX;(0) 
0x1e2f;/users/user2207/lbm_opt/src/main.c:219;LEA	-0x1(%RSI),%R9;(0) 
0x1e33;/users/user2207/lbm_opt/src/main.c:219;NEG	%RAX;(0) 
0x1e36;/users/user2207/lbm_opt/src/main.c:219;AND	$0x7,%EAX;(0) 
0x1e39;/users/user2207/lbm_opt/src/main.c:219;MOV	%RAX,%RDX;(0) 
0x1e3c;/users/user2207/lbm_opt/src/main.c:219;ADD	$0x7,%RDX;(0) 
0x1e40;/users/user2207/lbm_opt/src/main.c:219;CMP	$0xb,%RDX;(0) 
0x1e44;/users/user2207/lbm_opt/src/main.c:219;CMOVB	%RCX,%RDX;(0) 
0x1e48;/users/user2207/lbm_opt/src/main.c:219;CMP	%R9,%RDX;(0) 
0x1e4b;/users/user2207/lbm_opt/src/main.c:219;JA	25c5 <main+0x1225>;(0) 
0x1e51;/users/user2207/lbm_opt/src/main.c:219;TEST	%RAX,%RAX;(0) 
0x1e54;/users/user2207/lbm_opt/src/main.c:219;JE	25b2 <main+0x1212>;(0) 
0x1e5a;/users/user2207/lbm_opt/src/main.c:220;VMOVSD	(%R14),%XMM6;(0) 
0x1e5f;/users/user2207/lbm_opt/src/main.c:219;CMP	$0x1,%RAX;(0) 
0x1e63;/users/user2207/lbm_opt/src/main.c:219;JE	25a8 <main+0x1208>;(0) 
0x1e69;/users/user2207/lbm_opt/src/main.c:220;CMP	$0x2,%RAX;(0) 
0x1e6d;/users/user2207/lbm_opt/src/main.c:220;VADDSD	0x8(%R14),%XMM6,%XMM6;(0) 
0x1e73;/users/user2207/lbm_opt/src/main.c:219;JE	25d0 <main+0x1230>;(0) 
0x1e79;/users/user2207/lbm_opt/src/main.c:220;CMP	$0x3,%RAX;(0) 
0x1e7d;/users/user2207/lbm_opt/src/main.c:220;VADDSD	0x10(%R14),%XMM6,%XMM6;(0) 
0x1e83;/users/user2207/lbm_opt/src/main.c:219;JE	2642 <main+0x12a2>;(0) 
0x1e89;/users/user2207/lbm_opt/src/main.c:220;CMP	$0x4,%RAX;(0) 
0x1e8d;/users/user2207/lbm_opt/src/main.c:220;VADDSD	0x18(%R14),%XMM6,%XMM6;(0) 
0x1e93;/users/user2207/lbm_opt/src/main.c:219;JE	264c <main+0x12ac>;(0) 
0x1e99;/users/user2207/lbm_opt/src/main.c:220;CMP	$0x5,%RAX;(0) 
0x1e9d;/users/user2207/lbm_opt/src/main.c:220;VADDSD	0x20(%R14),%XMM6,%XMM6;(0) 
0x1ea3;/users/user2207/lbm_opt/src/main.c:219;JE	2656 <main+0x12b6>;(0) 
0x1ea9;/users/user2207/lbm_opt/src/main.c:220;CMP	$0x7,%RAX;(0) 
0x1ead;/users/user2207/lbm_opt/src/main.c:220;VADDSD	0x28(%R14),%XMM6,%XMM6;(0) 
0x1eb3;/users/user2207/lbm_opt/src/main.c:219;JNE	2609 <main+0x1269>;(0) 
0x1eb9;/users/user2207/lbm_opt/src/main.c:220;VADDSD	0x30(%R14),%XMM6,%XMM6;(0) 
0x1ebf;/users/user2207/lbm_opt/src/main.c:219;MOV	$0x7,%EBX;(0) 
0x1ec4;/users/user2207/lbm_opt/src/main.c:219;VXORPD	%XMM7,%XMM7,%XMM7;(0) 
0x1ec8;/users/user2207/lbm_opt/src/main.c:219;LEA	(%RSI),%RDI;(0) 
0x1ecb;/users/user2207/lbm_opt/src/main.c:219;SUB	%RAX,%RDI;(0) 
0x1ece;/users/user2207/lbm_opt/src/main.c:219;LEA	(%R14,%RAX,8),%RAX;(0) 
0x1ed2;/users/user2207/lbm_opt/src/main.c:219;MOV	%RDI,%R11;(0) 
0x1ed5;/users/user2207/lbm_opt/src/main.c:219;LEA	(%RAX),%R13;(0) 
0x1ed8;/users/user2207/lbm_opt/src/main.c:219;SHR	$0x3,%R11;(0) 
0x1edc;/users/user2207/lbm_opt/src/main.c:219;SAL	$0x6,%R11;(0) 
0x1ee0;/users/user2207/lbm_opt/src/main.c:219;LEA	-0x40(%R11),%R8;(0) 
0x1ee4;/users/user2207/lbm_opt/src/main.c:219;ADD	%R11,%R13;(0) 
0x1ee7;/users/user2207/lbm_opt/src/main.c:219;SHR	$0x6,%R8;(0) 
0x1eeb;/users/user2207/lbm_opt/src/main.c:219;ADD	$0x1,%R8;(0) 
0x1eef;/users/user2207/lbm_opt/src/main.c:219;AND	$0x7,%R8D;(0) 
0x1ef3;/users/user2207/lbm_opt/src/main.c:219;JE	1f64 <main+0xbc4>;(0) 
0x1ef5;/users/user2207/lbm_opt/src/main.c:219;CMP	$0x1,%R8;(0) 
0x1ef9;/users/user2207/lbm_opt/src/main.c:219;JE	1f55 <main+0xbb5>;(0) 
0x1efb;/users/user2207/lbm_opt/src/main.c:219;CMP	$0x2,%R8;(0) 
0x1eff;/users/user2207/lbm_opt/src/main.c:219;JE	1f4b <main+0xbab>;(0) 
0x1f01;/users/user2207/lbm_opt/src/main.c:219;CMP	$0x3,%R8;(0) 
0x1f05;/users/user2207/lbm_opt/src/main.c:219;JE	1f41 <main+0xba1>;(0) 
0x1f07;/users/user2207/lbm_opt/src/main.c:219;CMP	$0x4,%R8;(0) 
0x1f0b;/users/user2207/lbm_opt/src/main.c:219;JE	1f37 <main+0xb97>;(0) 
0x1f0d;/users/user2207/lbm_opt/src/main.c:219;CMP	$0x5,%R8;(0) 
0x1f11;/users/user2207/lbm_opt/src/main.c:219;JE	1f2d <main+0xb8d>;(0) 
0x1f13;/users/user2207/lbm_opt/src/main.c:219;CMP	$0x6,%R8;(0) 
0x1f17;/users/user2207/lbm_opt/src/main.c:219;JE	1f23 <main+0xb83>;(0) 
0x1f19;/users/user2207/lbm_opt/src/main.c:220;VMOVAPD	(%RAX),%ZMM7;(0) 
0x1f1f;/users/user2207/lbm_opt/src/main.c:219;LEA	0x40(%RAX),%RAX;(0) 
0x1f23;/users/user2207/lbm_opt/src/main.c:220;VADDPD	(%RAX),%ZMM7,%ZMM7;(0) 
0x1f29;/users/user2207/lbm_opt/src/main.c:219;LEA	0x40(%RAX),%RAX;(0) 
0x1f2d;/users/user2207/lbm_opt/src/main.c:220;VADDPD	(%RAX),%ZMM7,%ZMM7;(0) 
0x1f33;/users/user2207/lbm_opt/src/main.c:219;LEA	0x40(%RAX),%RAX;(0) 
0x1f37;/users/user2207/lbm_opt/src/main.c:220;VADDPD	(%RAX),%ZMM7,%ZMM7;(0) 
0x1f3d;/users/user2207/lbm_opt/src/main.c:219;LEA	0x40(%RAX),%RAX;(0) 
0x1f41;/users/user2207/lbm_opt/src/main.c:220;VADDPD	(%RAX),%ZMM7,%ZMM7;(0) 
0x1f47;/users/user2207/lbm_opt/src/main.c:219;LEA	0x40(%RAX),%RAX;(0) 
0x1f4b;/users/user2207/lbm_opt/src/main.c:220;VADDPD	(%RAX),%ZMM7,%ZMM7;(0) 
0x1f51;/users/user2207/lbm_opt/src/main.c:219;LEA	0x40(%RAX),%RAX;(0) 
0x1f55;/users/user2207/lbm_opt/src/main.c:220;VADDPD	(%RAX),%ZMM7,%ZMM7;(0) 
0x1f5b;/users/user2207/lbm_opt/src/main.c:219;LEA	0x40(%RAX),%RAX;(0) 
0x1f5f;/users/user2207/lbm_opt/src/main.c:219;CMP	%R13,%RAX;(0) 
0x1f62;/users/user2207/lbm_opt/src/main.c:219;JE	1fa7 <main+0xc07>;(0) 
0x1f64;/users/user2207/lbm_opt/src/main.c:220;VADDPD	(%RAX),%ZMM7,%ZMM8;  (1) 
0x1f6a;/users/user2207/lbm_opt/src/main.c:220;LEA	0x200(%RAX),%RAX;  (1) 
0x1f71;/users/user2207/lbm_opt/src/main.c:220;VADDPD	-0x1c0(%RAX),%ZMM8,%ZMM2;  (1) 
0x1f78;/users/user2207/lbm_opt/src/main.c:220;VADDPD	-0x180(%RAX),%ZMM2,%ZMM3;  (1) 
0x1f7f;/users/user2207/lbm_opt/src/main.c:220;VADDPD	-0x140(%RAX),%ZMM3,%ZMM4;  (1) 
0x1f86;/users/user2207/lbm_opt/src/main.c:220;VADDPD	-0x100(%RAX),%ZMM4,%ZMM9;  (1) 
0x1f8d;/users/user2207/lbm_opt/src/main.c:220;VADDPD	-0xc0(%RAX),%ZMM9,%ZMM10;  (1) 
0x1f94;/users/user2207/lbm_opt/src/main.c:220;VADDPD	-0x80(%RAX),%ZMM10,%ZMM11;  (1) 
0x1f9b;/users/user2207/lbm_opt/src/main.c:220;VADDPD	-0x40(%RAX),%ZMM11,%ZMM7;  (1) 
0x1fa2;/users/user2207/lbm_opt/src/main.c:219;CMP	%R13,%RAX;  (1) 
0x1fa5;/users/user2207/lbm_opt/src/main.c:219;JNE	1f64 <main+0xbc4>;  (1) 
0x1fa7;/users/user2207/lbm_opt/src/main.c:219;VEXTRACTF64X4	$0x1,%ZMM7,%YMM12;(0) 
0x1fae;/users/user2207/lbm_opt/src/main.c:219;LEA	(%RDI),%RDX;(0) 
0x1fb1;/users/user2207/lbm_opt/src/main.c:219;VADDPD	%YMM7,%YMM12,%YMM13;(0) 
0x1fb5;/users/user2207/lbm_opt/src/main.c:219;AND	$-0x8,%RDX;(0) 
0x1fb9;/users/user2207/lbm_opt/src/main.c:219;ADD	%RDX,%RBX;(0) 
0x1fbc;/users/user2207/lbm_opt/src/main.c:219;CMP	%RDI,%RDX;(0) 
0x1fbf;/users/user2207/lbm_opt/src/main.c:219;VEXTRACTF128	$0x1,%YMM13,%XMM14;(0) 
0x1fc5;/users/user2207/lbm_opt/src/main.c:219;VADDPD	%XMM13,%XMM14,%XMM15;(0) 
0x1fca;/users/user2207/lbm_opt/src/main.c:219;VUNPCKHPD	%XMM15,%XMM15,%XMM0;(0) 
0x1fcf;/users/user2207/lbm_opt/src/main.c:219;VADDPD	%XMM15,%XMM0,%XMM5;(0) 
0x1fd4;/users/user2207/lbm_opt/src/main.c:219;VADDSD	%XMM6,%XMM5,%XMM6;(0) 
0x1fd8;/users/user2207/lbm_opt/src/main.c:219;JE	25bd <main+0x121d>;(0) 
0x1fde;/users/user2207/lbm_opt/src/main.c:219;VZEROUPPER;(0) 
0x1fe1;/users/user2207/lbm_opt/src/main.c:219;LEA	0x1(%RBX),%RCX;(0) 
0x1fe5;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%RBX,8),%XMM6,%XMM6;(0) 
0x1feb;/users/user2207/lbm_opt/src/main.c:219;CMP	%RCX,%RSI;(0) 
0x1fee;/users/user2207/lbm_opt/src/main.c:219;JBE	20ba <main+0xd1a>;(0) 
0x1ff4;/users/user2207/lbm_opt/src/main.c:219;LEA	0x2(%RBX),%R9;(0) 
0x1ff8;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%RCX,8),%XMM6,%XMM6;(0) 
0x1ffe;/users/user2207/lbm_opt/src/main.c:219;CMP	%R9,%RSI;(0) 
0x2001;/users/user2207/lbm_opt/src/main.c:219;JBE	20ba <main+0xd1a>;(0) 
0x2007;/users/user2207/lbm_opt/src/main.c:219;LEA	0x3(%RBX),%RDI;(0) 
0x200b;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%R9,8),%XMM6,%XMM6;(0) 
0x2011;/users/user2207/lbm_opt/src/main.c:219;CMP	%RDI,%RSI;(0) 
0x2014;/users/user2207/lbm_opt/src/main.c:219;JBE	20ba <main+0xd1a>;(0) 
0x201a;/users/user2207/lbm_opt/src/main.c:219;LEA	0x4(%RBX),%R11;(0) 
0x201e;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%RDI,8),%XMM6,%XMM6;(0) 
0x2024;/users/user2207/lbm_opt/src/main.c:219;CMP	%RSI,%R11;(0) 
0x2027;/users/user2207/lbm_opt/src/main.c:219;JAE	20ba <main+0xd1a>;(0) 
0x202d;/users/user2207/lbm_opt/src/main.c:219;LEA	0x5(%RBX),%R13;(0) 
0x2031;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%R11,8),%XMM6,%XMM6;(0) 
0x2037;/users/user2207/lbm_opt/src/main.c:219;CMP	%RSI,%R13;(0) 
0x203a;/users/user2207/lbm_opt/src/main.c:219;JAE	20ba <main+0xd1a>;(0) 
0x203c;/users/user2207/lbm_opt/src/main.c:219;LEA	0x6(%RBX),%R8;(0) 
0x2040;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%R13,8),%XMM6,%XMM6;(0) 
0x2046;/users/user2207/lbm_opt/src/main.c:219;CMP	%RSI,%R8;(0) 
0x2049;/users/user2207/lbm_opt/src/main.c:219;JAE	20ba <main+0xd1a>;(0) 
0x204b;/users/user2207/lbm_opt/src/main.c:219;LEA	0x7(%RBX),%RAX;(0) 
0x204f;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%R8,8),%XMM6,%XMM6;(0) 
0x2055;/users/user2207/lbm_opt/src/main.c:219;CMP	%RSI,%RAX;(0) 
0x2058;/users/user2207/lbm_opt/src/main.c:219;JAE	20ba <main+0xd1a>;(0) 
0x205a;/users/user2207/lbm_opt/src/main.c:219;LEA	0x8(%RBX),%RDX;(0) 
0x205e;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%RAX,8),%XMM6,%XMM6;(0) 
0x2064;/users/user2207/lbm_opt/src/main.c:219;CMP	%RSI,%RDX;(0) 
0x2067;/users/user2207/lbm_opt/src/main.c:219;JAE	20ba <main+0xd1a>;(0) 
0x2069;/users/user2207/lbm_opt/src/main.c:219;LEA	0x9(%RBX),%RCX;(0) 
0x206d;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%RDX,8),%XMM6,%XMM6;(0) 
0x2073;/users/user2207/lbm_opt/src/main.c:219;CMP	%RSI,%RCX;(0) 
0x2076;/users/user2207/lbm_opt/src/main.c:219;JAE	20ba <main+0xd1a>;(0) 
0x2078;/users/user2207/lbm_opt/src/main.c:219;LEA	0xa(%RBX),%R9;(0) 
0x207c;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%RCX,8),%XMM6,%XMM6;(0) 
0x2082;/users/user2207/lbm_opt/src/main.c:219;CMP	%RSI,%R9;(0) 
0x2085;/users/user2207/lbm_opt/src/main.c:219;JAE	20ba <main+0xd1a>;(0) 
0x2087;/users/user2207/lbm_opt/src/main.c:219;LEA	0xb(%RBX),%RDI;(0) 
0x208b;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%R9,8),%XMM6,%XMM6;(0) 
0x2091;/users/user2207/lbm_opt/src/main.c:219;CMP	%RSI,%RDI;(0) 
0x2094;/users/user2207/lbm_opt/src/main.c:219;JAE	20ba <main+0xd1a>;(0) 
0x2096;/users/user2207/lbm_opt/src/main.c:219;LEA	0xc(%RBX),%R11;(0) 
0x209a;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%RDI,8),%XMM6,%XMM6;(0) 
0x20a0;/users/user2207/lbm_opt/src/main.c:219;CMP	%R11,%RSI;(0) 
0x20a3;/users/user2207/lbm_opt/src/main.c:219;JBE	20ba <main+0xd1a>;(0) 
0x20a5;/users/user2207/lbm_opt/src/main.c:219;LEA	0xd(%RBX),%RBX;(0) 
0x20a9;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%R11,8),%XMM6,%XMM6;(0) 
0x20af;/users/user2207/lbm_opt/src/main.c:219;CMP	%RBX,%RSI;(0) 
0x20b2;/users/user2207/lbm_opt/src/main.c:219;JBE	20ba <main+0xd1a>;(0) 
0x20b4;/users/user2207/lbm_opt/src/main.c:220;VADDSD	(%R14,%RBX,8),%XMM6,%XMM6;(0) 
0x20ba;/users/user2207/lbm_opt/src/main.c:219;VMOVSD	%XMM6,0x100(%RSP);(0) 
0x20c3;/users/user2207/lbm_opt/src/main.c:222;VCVTUSI2SD	%R10D,%XMM1,%XMM1;(0) 
0x20c9;/users/user2207/lbm_opt/src/main.c:225;XOR	%R9D,%R9D;(0) 
0x20cc;/users/user2207/lbm_opt/src/main.c:225;LEA	0xf8(%RSP),%RSI;(0) 
0x20d4;/users/user2207/lbm_opt/src/main.c:225;LEA	0x100(%RSP),%RDI;(0) 
0x20dc;/users/user2207/lbm_opt/src/main.c:225;MOV	$0x58000003,%R8D;(0) 
0x20e2;/users/user2207/lbm_opt/src/main.c:225;MOV	$0x4c00080b,%ECX;(0) 
0x20e7;/users/user2207/lbm_opt/src/main.c:225;MOVL	$0x44000000,(%RSP);(0) 
0x20ee;/users/user2207/lbm_opt/src/main.c:225;MOV	$0x1,%EDX;(0) 
0x20f3;/users/user2207/lbm_opt/src/main.c:222;VDIVSD	%XMM1,%XMM6,%XMM7;(0) 
0x20f7;/users/user2207/lbm_opt/src/main.c:222;VMOVSD	%XMM7,0x100(%RSP);(0) 
0x2100;/users/user2207/lbm_opt/src/main.c:225;CALL	1330 <.plt.sec@start+0x140>;(0) 
0x2105;/users/user2207/lbm_opt/src/main.c:227;XOR	%R9D,%R9D;(0) 
0x2108;/users/user2207/lbm_opt/src/main.c:227;MOV	$0x58000003,%R8D;(0) 
0x210e;/users/user2207/lbm_opt/src/main.c:227;MOV	$0x4c00080b,%ECX;(0) 
0x2113;/users/user2207/lbm_opt/src/main.c:227;LEA	(%R15),%RDI;(0) 
0x2116;/users/user2207/lbm_opt/src/main.c:227;LEA	0xf0(%RSP),%RSI;(0) 
0x211e;/users/user2207/lbm_opt/src/main.c:227;MOV	$0x1,%EDX;(0) 
0x2123;/users/user2207/lbm_opt/src/main.c:227;MOVL	$0x44000000,(%RSP);(0) 
0x212a;/users/user2207/lbm_opt/src/main.c:227;CALL	1330 <.plt.sec@start+0x140>;(0) 
0x212f;/users/user2207/lbm_opt/src/main.c:235;VMOVSD	0x3531(%RIP),%XMM8;(0) 
0x2137;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x32e2(%RIP),%RSI;(0) 
0x213e;/users/user2207/lbm_opt/src/main.c:235;VMULSD	0x100(%RSP),%XMM8,%XMM0;(0) 
0x2147;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(0) 
0x214c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0xe8(%RSP),%EDX;(0) 
0x2153;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;(0) 
0x2158;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1270 <.plt.sec@start+0x80>;(0) 
0x215d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0xe8(%RSP),%EDX;(0) 
0x2164;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x32fd(%RIP),%RSI;(0) 
0x216b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	0x108(%RSP),%XMM0;(0) 
0x2174;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(0) 
0x2179;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;(0) 
0x217e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1270 <.plt.sec@start+0x80>;(0) 
0x2183;/users/user2207/lbm_opt/src/main.c:242;MOV	0xe8(%RSP),%R15D;(0) 
0x218b;/users/user2207/lbm_opt/src/main.c:242;TEST	%R15D,%R15D;(0) 
0x218e;/users/user2207/lbm_opt/src/main.c:242;JE	24de <main+0x113e>;(0) 
0x2194;/users/user2207/lbm_opt/src/main.c:259;LEA	(%R14),%RDI;(0) 
0x2197;/users/user2207/lbm_opt/src/main.c:259;CALL	12c0 <.plt.sec@start+0xd0>;(0) 
0x219c;/users/user2207/lbm_opt/src/lbm_comm.c:132;MOV	0x658(%RSP),%RDI;(0) 
0x21a4;/users/user2207/lbm_opt/src/lbm_comm.c:126;VPXOR	%XMM11,%XMM11,%XMM11;(0) 
0x21a9;/users/user2207/lbm_opt/src/lbm_comm.c:126;VMOVDQA	%XMM11,0x5a0(%RSP);(0) 
0x21b2;/users/user2207/lbm_opt/src/lbm_comm.c:130;MOVQ	$-0x1,0x5b8(%RSP);(0) 
0x21be;/users/user2207/lbm_opt/src/lbm_comm.c:132;TEST	%RDI,%RDI;(0) 
0x21c1;/users/user2207/lbm_opt/src/lbm_comm.c:132;JE	21c8 <main+0xe28>;(0) 
0x21c3;/users/user2207/lbm_opt/src/lbm_comm.c:133;CALL	12c0 <.plt.sec@start+0xd0>;(0) 
0x21c8;/users/user2207/lbm_opt/src/lbm_struct.c:23;MOV	0x170(%RSP),%RDI;(0) 
0x21d0;/users/user2207/lbm_opt/src/lbm_struct.c:21;MOVQ	$0,0x178(%RSP);(0) 
0x21dc;/users/user2207/lbm_opt/src/lbm_struct.c:23;CALL	12c0 <.plt.sec@start+0xd0>;(0) 
0x21e1;/users/user2207/lbm_opt/src/lbm_struct.c:23;MOV	0x160(%RSP),%RDI;(0) 
0x21e9;/users/user2207/lbm_opt/src/lbm_struct.c:21;MOVQ	$0,0x168(%RSP);(0) 
0x21f5;/users/user2207/lbm_opt/src/lbm_struct.c:23;CALL	12c0 <.plt.sec@start+0xd0>;(0) 
0x21fa;/users/user2207/lbm_opt/src/lbm_struct.c:23;MOV	0x150(%RSP),%RDI;(0) 
0x2202;/users/user2207/lbm_opt/src/lbm_struct.c:21;MOVQ	$0,0x158(%RSP);(0) 
0x220e;/users/user2207/lbm_opt/src/lbm_struct.c:23;CALL	12c0 <.plt.sec@start+0xd0>;(0) 
0x2213;/users/user2207/lbm_opt/src/lbm_struct.c:45;MOV	0x140(%RSP),%RDI;(0) 
0x221b;/users/user2207/lbm_opt/src/lbm_struct.c:43;MOVQ	$0,0x148(%RSP);(0) 
0x2227;/users/user2207/lbm_opt/src/lbm_struct.c:45;CALL	12c0 <.plt.sec@start+0xd0>;(0) 
0x222c;/users/user2207/lbm_opt/src/main.c:267;CALL	1350 <.plt.sec@start+0x160>;(0) 
0x2231;/users/user2207/lbm_opt/src/main.c:270;MOV	0x9a8(%RSP),%RAX;(0) 
0x2239;/users/user2207/lbm_opt/src/main.c:270;XOR	%FS:0x28,%RAX;(0) 
0x2242;/users/user2207/lbm_opt/src/main.c:270;JNE	281a <main+0x147a>;(0) 
0x2248;/users/user2207/lbm_opt/src/main.c:270;LEA	-0x28(%RBP),%RSP;
0x224c;/users/user2207/lbm_opt/src/main.c:270;XOR	%EAX,%EAX;
0x224e;/users/user2207/lbm_opt/src/main.c:270;POP	%RBX;
0x224f;/users/user2207/lbm_opt/src/main.c:270;POP	%R12;
0x2251;/users/user2207/lbm_opt/src/main.c:270;POP	%R13;
0x2253;/users/user2207/lbm_opt/src/main.c:270;POP	%R14;
0x2255;/users/user2207/lbm_opt/src/main.c:270;POP	%R15;
0x2257;/users/user2207/lbm_opt/src/main.c:270;POP	%RBP;
0x2258;/users/user2207/lbm_opt/src/main.c:270;RET;
0x2259;/users/user2207/lbm_opt/src/main.c:270;NOPL	(%RAX);
0x2260;/users/user2207/lbm_opt/src/lbm_config.c:86;LEA	0x180(%RSP),%R15;(4) 
0x2268;/users/user2207/lbm_opt/src/lbm_config.c:86;XOR	%EAX,%EAX;(4) 
0x226a;/users/user2207/lbm_opt/src/lbm_config.c:86;LEA	(%R15),%RDX;(4) 
0x226d;/users/user2207/lbm_opt/src/lbm_config.c:86;LEA	0x2e05(%RIP),%RSI;(4) 
0x2274;/users/user2207/lbm_opt/src/lbm_config.c:86;LEA	(%RBX),%RDI;(4) 
0x2277;/users/user2207/lbm_opt/src/lbm_config.c:86;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x227c;/users/user2207/lbm_opt/src/lbm_config.c:86;CMP	$0x1,%EAX;(4) 
0x227f;/users/user2207/lbm_opt/src/lbm_config.c:86;JNE	22c8 <main+0xf28>;(4) 
0x2281;/users/user2207/lbm_opt/src/lbm_config.c:87;VMOVSD	0x180(%RSP),%XMM7;(4) 
0x228a;/users/user2207/lbm_opt/src/lbm_config.c:87;VPXOR	%XMM8,%XMM8,%XMM8;(4) 
0x228f;/users/user2207/lbm_opt/src/lbm_config.c:87;VCOMISD	%XMM8,%XMM7;(4) 
0x2294;/users/user2207/lbm_opt/src/lbm_config.c:87;JE	14e0 <main+0x140>;(4) 
0x229a;/users/user2207/lbm_opt/src/lbm_config.c:88;VMOVSD	%XMM7,0x4d8e(%RIP);(4) 
0x22a2;/users/user2207/lbm_opt/src/lbm_config.c:88;JMP	14e0 <main+0x140>;(4) 
0x22a7;/users/user2207/lbm_opt/src/lbm_comm.c:108;LEA	(%R9),%R9D;(0) 
0x22aa;/users/user2207/lbm_opt/src/lbm_comm.c:108;XOR	%EDX,%EDX;(0) 
0x22ac;/users/user2207/lbm_opt/src/lbm_comm.c:108;IMUL	$0x48,%R9,%RAX;(0) 
0x22b0;/users/user2207/lbm_opt/src/lbm_comm.c:108;DIV	%RSI;(0) 
0x22b3;/users/user2207/lbm_opt/src/lbm_comm.c:108;MOV	%RAX,%RDI;(0) 
0x22b6;/users/user2207/lbm_opt/src/lbm_comm.c:108;CALL	1280 <.plt.sec@start+0x90>;(0) 
0x22bb;/users/user2207/lbm_opt/src/lbm_comm.c:108;MOV	%RAX,0x658(%RSP);(0) 
0x22c3;/users/user2207/lbm_opt/src/lbm_comm.c:108;JMP	18b5 <main+0x515>;(0) 
0x22c8;/users/user2207/lbm_opt/src/lbm_config.c:90;XOR	%EAX,%EAX;(4) 
0x22ca;/users/user2207/lbm_opt/src/lbm_config.c:90;LEA	(%R15),%RDX;(4) 
0x22cd;/users/user2207/lbm_opt/src/lbm_config.c:90;LEA	0x2db7(%RIP),%RSI;(4) 
0x22d4;/users/user2207/lbm_opt/src/lbm_config.c:90;LEA	(%RBX),%RDI;(4) 
0x22d7;/users/user2207/lbm_opt/src/lbm_config.c:90;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x22dc;/users/user2207/lbm_opt/src/lbm_config.c:90;SUB	$0x1,%EAX;(4) 
0x22df;/users/user2207/lbm_opt/src/lbm_config.c:90;JNE	23fe <main+0x105e>;(4) 
0x22e5;/users/user2207/lbm_opt/src/lbm_config.c:91;VMOVSD	0x180(%RSP),%XMM6;(4) 
0x22ee;/users/user2207/lbm_opt/src/lbm_config.c:91;VPXOR	%XMM1,%XMM1,%XMM1;(4) 
0x22f2;/users/user2207/lbm_opt/src/lbm_config.c:91;VCOMISD	%XMM1,%XMM6;(4) 
0x22f6;/users/user2207/lbm_opt/src/lbm_config.c:91;JE	14e0 <main+0x140>;(4) 
0x22fc;/users/user2207/lbm_opt/src/lbm_config.c:92;VMOVSD	%XMM6,0x4d34(%RIP);(4) 
0x2304;/users/user2207/lbm_opt/src/lbm_config.c:92;JMP	14e0 <main+0x140>;(4) 
0x2309;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x4d60(%RIP),%R11D;(4) 
0x2310;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e94(%RIP),%RCX;(4) 
0x2317;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x4d4a(%RIP),%R14;(4) 
0x231e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e21(%RIP),%RDI;(4) 
0x2325;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RCX,0x20(%RSP);(4) 
0x232a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e25(%RIP),%R8;(4) 
0x2331;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x4ce9(%RIP),%ECX;(4) 
0x2337;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e49(%RIP),%RAX;(4) 
0x233e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e56(%RIP),%RDX;(4) 
0x2345;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e80(%RIP),%RSI;(4) 
0x234c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R10D,0x8(%RSP);(4) 
0x2351;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e10(%RIP),%R13;(4) 
0x2358;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e7e(%RIP),%R10;(4) 
0x235f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e11(%RIP),%R15;(4) 
0x2366;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RDI,0x60(%RSP);(4) 
0x236b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e49(%RIP),%RBX;(4) 
0x2372;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R8,0x58(%RSP);(4) 
0x2377;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(4) 
0x237c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R11D,0x50(%RSP);(4) 
0x2381;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2dad(%RIP),%R8;(4) 
0x2388;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RAX,0x30(%RSP);(4) 
0x238d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x7,%EAX;(4) 
0x2392;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RDX,0x28(%RSP);(4) 
0x2397;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2d9d(%RIP),%RDX;(4) 
0x239e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RSI,0x10(%RSP);(4) 
0x23a3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2e8e(%RIP),%RSI;(4) 
0x23aa;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R10,(%RSP);(4) 
0x23ae;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,0x48(%RSP);(4) 
0x23b3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R14,0x40(%RSP);(4) 
0x23b8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R15,0x38(%RSP);(4) 
0x23bd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RBX,0x18(%RSP);(4) 
0x23c2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	0x4c6e(%RIP),%XMM1;(4) 
0x23ca;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	0x4c5e(%RIP),%XMM0;(4) 
0x23d2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1270 <.plt.sec@start+0x80>;(4) 
0x23d7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x4c4a(%RIP),%R10D;(4) 
0x23de;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x4c3f(%RIP),%R9D;(4) 
0x23e5;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0xe8(%RSP),%R11D;(4) 
0x23ed;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;JMP	169b <main+0x2fb>;(4) 
0x23f2;/users/user2207/lbm_opt/src/lbm_comm.c:72;LEA	0x2f5f(%RIP),%RDI;(4) 
0x23f9;/users/user2207/lbm_opt/src/lbm_comm.c:72;CALL	3f30 <fatal>;(4) 
0x23fe;/users/user2207/lbm_opt/src/lbm_config.c:94;XOR	%EAX,%EAX;(4) 
0x2400;/users/user2207/lbm_opt/src/lbm_config.c:94;LEA	(%R15),%RDX;(4) 
0x2403;/users/user2207/lbm_opt/src/lbm_config.c:94;LEA	0x2c93(%RIP),%RSI;(4) 
0x240a;/users/user2207/lbm_opt/src/lbm_config.c:94;LEA	(%RBX),%RDI;(4) 
0x240d;/users/user2207/lbm_opt/src/lbm_config.c:94;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x2412;/users/user2207/lbm_opt/src/lbm_config.c:94;SUB	$0x1,%EAX;(4) 
0x2415;/users/user2207/lbm_opt/src/lbm_config.c:94;JNE	24ab <main+0x110b>;(4) 
0x241b;/users/user2207/lbm_opt/src/lbm_config.c:95;VMOVSD	0x180(%RSP),%XMM0;(4) 
0x2424;/users/user2207/lbm_opt/src/lbm_config.c:95;VPXOR	%XMM5,%XMM5,%XMM5;(4) 
0x2428;/users/user2207/lbm_opt/src/lbm_config.c:95;VCOMISD	%XMM5,%XMM0;(4) 
0x242c;/users/user2207/lbm_opt/src/lbm_config.c:95;JE	14e0 <main+0x140>;(4) 
0x2432;/users/user2207/lbm_opt/src/lbm_config.c:96;VMOVSD	%XMM0,0x4c06(%RIP);(4) 
0x243a;/users/user2207/lbm_opt/src/lbm_config.c:96;JMP	14e0 <main+0x140>;(4) 
0x243f;/users/user2207/lbm_opt/src/main.c:46;MOV	0x4c22(%RIP),%R12;(0) 
0x2446;/users/user2207/lbm_opt/src/main.c:46;TEST	%R12,%R12;(0) 
0x2449;/users/user2207/lbm_opt/src/main.c:46;JE	2466 <main+0x10c6>;(0) 
0x244b;/users/user2207/lbm_opt/src/main.c:51;MOV	%R12,%RDI;(0) 
0x244e;/users/user2207/lbm_opt/src/main.c:51;LEA	0x2db7(%RIP),%RSI;(0) 
0x2455;/users/user2207/lbm_opt/src/main.c:51;CALL	1290 <.plt.sec@start+0xa0>;(0) 
0x245a;/users/user2207/lbm_opt/src/main.c:52;TEST	%RAX,%RAX;(0) 
0x245d;/users/user2207/lbm_opt/src/main.c:51;LEA	(%RAX),%R12;(0) 
0x2460;/users/user2207/lbm_opt/src/main.c:52;JE	2840 <main+0x14a0>;(0) 
0x2466;/users/user2207/lbm_opt/src/main.c:27;MOV	0x4bb7(%RIP),%R10;(0) 
0x246d;/users/user2207/lbm_opt/src/main.c:35;MOV	%R12,%RCX;(0) 
0x2470;/users/user2207/lbm_opt/src/main.c:27;MOV	0x5b4(%RSP),%R14D;(0) 
0x2478;/users/user2207/lbm_opt/src/main.c:35;MOV	$0x1,%EDX;(0) 
0x247d;/users/user2207/lbm_opt/src/main.c:35;MOV	$0x10,%ESI;(0) 
0x2482;/users/user2207/lbm_opt/src/main.c:35;LEA	(%R13),%RDI;(0) 
0x2486;/users/user2207/lbm_opt/src/main.c:27;MOVL	$0x12345,0x180(%RSP);(0) 
0x2491;/users/user2207/lbm_opt/src/main.c:27;MOV	%R10,0x184(%RSP);(0) 
0x2499;/users/user2207/lbm_opt/src/main.c:27;MOV	%R14D,0x18c(%RSP);(0) 
0x24a1;/users/user2207/lbm_opt/src/main.c:35;CALL	1380 <.plt.sec@start+0x190>;(0) 
0x24a6;/users/user2207/lbm_opt/src/main.c:35;JMP	1a21 <main+0x681>;(0) 
0x24ab;/users/user2207/lbm_opt/src/lbm_config.c:98;XOR	%EAX,%EAX;(4) 
0x24ad;/users/user2207/lbm_opt/src/lbm_config.c:98;LEA	(%R15),%RDX;(4) 
0x24b0;/users/user2207/lbm_opt/src/lbm_config.c:98;LEA	0x2bf8(%RIP),%RSI;(4) 
0x24b7;/users/user2207/lbm_opt/src/lbm_config.c:98;LEA	(%RBX),%RDI;(4) 
0x24ba;/users/user2207/lbm_opt/src/lbm_config.c:98;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x24bf;/users/user2207/lbm_opt/src/lbm_config.c:98;SUB	$0x1,%EAX;(4) 
0x24c2;/users/user2207/lbm_opt/src/lbm_config.c:98;JNE	25da <main+0x123a>;(4) 
0x24c8;/users/user2207/lbm_opt/src/lbm_config.c:99;VMOVSD	0x180(%RSP),%XMM15;(4) 
0x24d1;/users/user2207/lbm_opt/src/lbm_config.c:99;VMOVSD	%XMM15,0x4b6f(%RIP);(4) 
0x24d9;/users/user2207/lbm_opt/src/lbm_config.c:99;JMP	14e0 <main+0x140>;(4) 
0x24de;/users/user2207/lbm_opt/src/main.c:248;VCVTSI2SDL	0xe4(%RSP),%XMM2,%XMM2;(0) 
0x24e7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2fc2(%RIP),%RSI;(0) 
0x24ee;/users/user2207/lbm_opt/src/main.c:248;VMOVSD	0xf8(%RSP),%XMM3;(0) 
0x24f7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(0) 
0x24fc;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;(0) 
0x2501;/users/user2207/lbm_opt/src/main.c:248;VDIVSD	%XMM2,%XMM3,%XMM4;(0) 
0x2505;/users/user2207/lbm_opt/src/main.c:247;VMULSD	0x315b(%RIP),%XMM4,%XMM0;(0) 
0x250d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1270 <.plt.sec@start+0x80>;(0) 
0x2512;/users/user2207/lbm_opt/src/main.c:250;VCVTSI2SDL	0xe4(%RSP),%XMM9,%XMM9;(0) 
0x251b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2fbe(%RIP),%RSI;(0) 
0x2522;/users/user2207/lbm_opt/src/main.c:250;VMOVSD	0xf0(%RSP),%XMM10;(0) 
0x252b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(0) 
0x2530;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;(0) 
0x2535;/users/user2207/lbm_opt/src/main.c:250;VDIVSD	%XMM9,%XMM10,%XMM0;(0) 
0x253a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1270 <.plt.sec@start+0x80>;(0) 
0x253f;/users/user2207/lbm_opt/src/main.c:254;CMPL	$0,0xe8(%RSP);(0) 
0x2547;/users/user2207/lbm_opt/src/main.c:254;JNE	2194 <main+0xdf4>;(0) 
0x254d;/users/user2207/lbm_opt/src/main.c:254;TEST	%R12,%R12;(0) 
0x2550;/users/user2207/lbm_opt/src/main.c:254;JE	2194 <main+0xdf4>;(0) 
0x2556;/users/user2207/lbm_opt/src/main.c:62;LEA	(%R12),%RDI;(0) 
0x255a;/users/user2207/lbm_opt/src/main.c:62;CALL	1370 <.plt.sec@start+0x180>;(0) 
0x255f;/users/user2207/lbm_opt/src/main.c:62;NOP;(0) 
0x2560;/users/user2207/lbm_opt/src/main.c:62;JMP	2194 <main+0xdf4>;(0) 
0x2565;/users/user2207/lbm_opt/src/lbm_comm.c:14;MOVSXD	%EDI,%RSI;
0x2568;/users/user2207/lbm_opt/src/lbm_comm.c:68;MOV	$0x1,%R8D;
0x256e;/users/user2207/lbm_opt/src/lbm_comm.c:71;MOV	$0x1,%R13D;
0x2574;/users/user2207/lbm_opt/src/lbm_comm.c:71;JMP	16f1 <main+0x351>;
0x2579;/users/user2207/lbm_opt/src/lbm_comm.c:71;VMOVSD	0x100(%RSP),%XMM6;(0) 
0x2582;/users/user2207/lbm_opt/src/main.c:219;XOR	%R10D,%R10D;(0) 
0x2585;/users/user2207/lbm_opt/src/main.c:219;JMP	20c3 <main+0xd23>;(0) 
0x258a;/users/user2207/lbm_opt/src/main.c:219;VMOVSD	0x30ce(%RIP),%XMM2;(0) 
0x2592;/users/user2207/lbm_opt/src/main.c:219;LEA	0x108(%RSP),%R15;(0) 
0x259a;/users/user2207/lbm_opt/src/main.c:219;VMOVSD	%XMM2,0xb8(%RSP);(0) 
0x25a3;/users/user2207/lbm_opt/src/main.c:219;JMP	1db0 <main+0xa10>;(0) 
0x25a8;/users/user2207/lbm_opt/src/main.c:219;MOV	$0x1,%EBX;(0) 
0x25ad;/users/user2207/lbm_opt/src/main.c:219;JMP	1ec4 <main+0xb24>;(0) 
0x25b2;/users/user2207/lbm_opt/src/main.c:219;VPXOR	%XMM6,%XMM6,%XMM6;(0) 
0x25b6;/users/user2207/lbm_opt/src/main.c:219;XOR	%EBX,%EBX;(0) 
0x25b8;/users/user2207/lbm_opt/src/main.c:219;JMP	1ec4 <main+0xb24>;(0) 
0x25bd;/users/user2207/lbm_opt/src/main.c:219;VZEROUPPER;(0) 
0x25c0;/users/user2207/lbm_opt/src/main.c:219;JMP	20ba <main+0xd1a>;(0) 
0x25c5;/users/user2207/lbm_opt/src/main.c:219;VPXOR	%XMM6,%XMM6,%XMM6;(0) 
0x25c9;/users/user2207/lbm_opt/src/main.c:219;XOR	%EBX,%EBX;(0) 
0x25cb;/users/user2207/lbm_opt/src/main.c:219;JMP	1fe1 <main+0xc41>;(0) 
0x25d0;/users/user2207/lbm_opt/src/main.c:219;MOV	$0x2,%EBX;(0) 
0x25d5;/users/user2207/lbm_opt/src/main.c:219;JMP	1ec4 <main+0xb24>;(0) 
0x25da;/users/user2207/lbm_opt/src/lbm_config.c:100;XOR	%EAX,%EAX;(4) 
0x25dc;/users/user2207/lbm_opt/src/lbm_config.c:100;LEA	(%R15),%RDX;(4) 
0x25df;/users/user2207/lbm_opt/src/lbm_config.c:100;LEA	0x2ae4(%RIP),%RSI;(4) 
0x25e6;/users/user2207/lbm_opt/src/lbm_config.c:100;LEA	(%RBX),%RDI;(4) 
0x25e9;/users/user2207/lbm_opt/src/lbm_config.c:100;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x25ee;/users/user2207/lbm_opt/src/lbm_config.c:100;SUB	$0x1,%EAX;(4) 
0x25f1;/users/user2207/lbm_opt/src/lbm_config.c:100;JNE	2613 <main+0x1273>;(4) 
0x25f3;/users/user2207/lbm_opt/src/lbm_config.c:101;VMOVSD	0x180(%RSP),%XMM14;(4) 
0x25fc;/users/user2207/lbm_opt/src/lbm_config.c:101;VMOVSD	%XMM14,0x4a4c(%RIP);(4) 
0x2604;/users/user2207/lbm_opt/src/lbm_config.c:101;JMP	14e0 <main+0x140>;(4) 
0x2609;/users/user2207/lbm_opt/src/main.c:219;MOV	$0x6,%EBX;(0) 
0x260e;/users/user2207/lbm_opt/src/main.c:219;JMP	1ec4 <main+0xb24>;(0) 
0x2613;/users/user2207/lbm_opt/src/lbm_config.c:102;XOR	%EAX,%EAX;(4) 
0x2615;/users/user2207/lbm_opt/src/lbm_config.c:102;LEA	(%R15),%RDX;(4) 
0x2618;/users/user2207/lbm_opt/src/lbm_config.c:102;LEA	0x2abb(%RIP),%RSI;(4) 
0x261f;/users/user2207/lbm_opt/src/lbm_config.c:102;LEA	(%RBX),%RDI;(4) 
0x2622;/users/user2207/lbm_opt/src/lbm_config.c:102;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x2627;/users/user2207/lbm_opt/src/lbm_config.c:102;SUB	$0x1,%EAX;(4) 
0x262a;/users/user2207/lbm_opt/src/lbm_config.c:102;JNE	2686 <main+0x12e6>;(4) 
0x262c;/users/user2207/lbm_opt/src/lbm_config.c:103;VMOVSD	0x180(%RSP),%XMM13;(4) 
0x2635;/users/user2207/lbm_opt/src/lbm_config.c:103;VMOVSD	%XMM13,0x4a1b(%RIP);(4) 
0x263d;/users/user2207/lbm_opt/src/lbm_config.c:103;JMP	14e0 <main+0x140>;(4) 
0x2642;/users/user2207/lbm_opt/src/main.c:219;MOV	$0x3,%EBX;(0) 
0x2647;/users/user2207/lbm_opt/src/main.c:219;JMP	1ec4 <main+0xb24>;(0) 
0x264c;/users/user2207/lbm_opt/src/main.c:219;MOV	$0x4,%EBX;(0) 
0x2651;/users/user2207/lbm_opt/src/main.c:219;JMP	1ec4 <main+0xb24>;(0) 
0x2656;/users/user2207/lbm_opt/src/main.c:219;MOV	$0x5,%EBX;(0) 
0x265b;/users/user2207/lbm_opt/src/main.c:219;JMP	1ec4 <main+0xb24>;(0) 
0x2660;/users/user2207/lbm_opt/src/lbm_comm.c:99;MOVL	$-0x1,0x5cc(%RSP);
0x266b;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%ECX,%ECX;
0x266d;/users/user2207/lbm_opt/src/lbm_comm.c:43;JNS	1879 <main+0x4d9>;
0x2673;/users/user2207/lbm_opt/src/lbm_comm.c:101;MOVL	$-0x1,0x5d0(%RSP);
0x267e;/users/user2207/lbm_opt/src/lbm_comm.c:44;OR	$-0x1,%ECX;(0) 
0x2681;/users/user2207/lbm_opt/src/lbm_comm.c:44;JMP	1898 <main+0x4f8>;(0) 
0x2686;/users/user2207/lbm_opt/src/lbm_config.c:104;XOR	%EAX,%EAX;(4) 
0x2688;/users/user2207/lbm_opt/src/lbm_config.c:104;LEA	(%R15),%RDX;(4) 
0x268b;/users/user2207/lbm_opt/src/lbm_config.c:104;LEA	0x2a61(%RIP),%RSI;(4) 
0x2692;/users/user2207/lbm_opt/src/lbm_config.c:104;LEA	(%RBX),%RDI;(4) 
0x2695;/users/user2207/lbm_opt/src/lbm_config.c:104;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x269a;/users/user2207/lbm_opt/src/lbm_config.c:104;SUB	$0x1,%EAX;(4) 
0x269d;/users/user2207/lbm_opt/src/lbm_config.c:104;JNE	27a1 <main+0x1401>;(4) 
0x26a3;/users/user2207/lbm_opt/src/lbm_config.c:105;VMOVSD	0x180(%RSP),%XMM12;(4) 
0x26ac;/users/user2207/lbm_opt/src/lbm_config.c:105;VMOVSD	%XMM12,0x49ac(%RIP);(4) 
0x26b4;/users/user2207/lbm_opt/src/lbm_config.c:105;JMP	14e0 <main+0x140>;(4) 
0x26b9;/users/user2207/lbm_opt/src/lbm_comm.c:93;MOVL	$-0x1,0x5bc(%RSP);
0x26c4;/users/user2207/lbm_opt/src/lbm_comm.c:44;OR	$-0x1,%EDX;
0x26c7;/users/user2207/lbm_opt/src/lbm_comm.c:44;JMP	17b8 <main+0x418>;
0x26cc;/users/user2207/lbm_opt/src/lbm_comm.c:44;OR	$-0x1,%R15D;
0x26d0;/users/user2207/lbm_opt/src/lbm_comm.c:44;JMP	1813 <main+0x473>;
0x26d5;/users/user2207/lbm_opt/src/lbm_comm.c:44;OR	$-0x1,%EDI;
0x26d8;/users/user2207/lbm_opt/src/lbm_comm.c:44;JMP	17f3 <main+0x453>;
0x26dd;/users/user2207/lbm_opt/src/lbm_comm.c:95;MOVL	$-0x1,0x5c0(%RSP);
0x26e8;/users/user2207/lbm_opt/src/lbm_comm.c:44;OR	$-0x1,%R15D;
0x26ec;/users/user2207/lbm_opt/src/lbm_comm.c:44;JMP	1813 <main+0x473>;
0x26f1;/users/user2207/lbm_opt/src/lbm_comm.c:93;MOVL	$-0x1,0x5bc(%RSP);
0x26fc;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R13B,%R13B;
0x26ff;/users/user2207/lbm_opt/src/lbm_comm.c:43;JNE	26c4 <main+0x1324>;
0x2701;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%ECX,%ECX;
0x2703;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	26c4 <main+0x1324>;
0x2705;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%ECX;
0x2708;/users/user2207/lbm_opt/src/lbm_comm.c:43;JL	17b0 <main+0x410>;
0x270e;/users/user2207/lbm_opt/src/lbm_comm.c:43;XCHG	%AX,%AX;
0x2710;/users/user2207/lbm_opt/src/lbm_comm.c:43;JMP	26c4 <main+0x1324>;
0x2712;/users/user2207/lbm_opt/src/lbm_comm.c:99;MOVL	$-0x1,0x5cc(%RSP);
0x271d;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%ECX;
0x2720;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	2673 <main+0x12d3>;
0x2726;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%ECX,%ECX;
0x2728;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	2673 <main+0x12d3>;
0x272e;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%ECX;
0x2731;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%ECX,%R10D;
0x2734;/users/user2207/lbm_opt/src/lbm_comm.c:46;MOV	%R10D,0x5d0(%RSP);
0x273c;/users/user2207/lbm_opt/src/lbm_comm.c:43;JMP	267e <main+0x12de>;
0x2741;/users/user2207/lbm_opt/src/lbm_comm.c:44;OR	$-0x1,%R15D;
0x2745;/users/user2207/lbm_opt/src/lbm_comm.c:44;JMP	183f <main+0x49f>;
0x274a;/users/user2207/lbm_opt/src/lbm_comm.c:97;MOVL	$-0x1,0x5c8(%RSP);
0x2755;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R13B,%R13B;
0x2758;/users/user2207/lbm_opt/src/lbm_comm.c:43;JNE	282f <main+0x148f>;
0x275e;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%R11D;
0x2761;/users/user2207/lbm_opt/src/lbm_comm.c:43;JGE	281f <main+0x147f>;
0x2767;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%R11D,%R11D;
0x276a;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	281f <main+0x147f>;
0x2770;/users/user2207/lbm_opt/src/lbm_comm.c:46;LEA	(%R11),%EDI;
0x2773;/users/user2207/lbm_opt/src/lbm_comm.c:46;IMUL	%ESI,%EDI;
0x2776;/users/user2207/lbm_opt/src/lbm_comm.c:46;ADD	%R14D,%EDI;
0x2779;/users/user2207/lbm_opt/src/lbm_comm.c:46;MOV	%EDI,0x5cc(%RSP);
0x2780;/users/user2207/lbm_opt/src/lbm_comm.c:101;MOVL	$-0x1,0x5d0(%RSP);(0) 
0x278b;/users/user2207/lbm_opt/src/lbm_comm.c:43;TEST	%ECX,%ECX;(0) 
0x278d;/users/user2207/lbm_opt/src/lbm_comm.c:43;JS	267e <main+0x12de>;(0) 
0x2793;/users/user2207/lbm_opt/src/lbm_comm.c:43;CMP	%R8D,%ECX;(0) 
0x2796;/users/user2207/lbm_opt/src/lbm_comm.c:43;JL	1892 <main+0x4f2>;(0) 
0x279c;/users/user2207/lbm_opt/src/lbm_comm.c:43;JMP	267e <main+0x12de>;(0) 
0x27a1;/users/user2207/lbm_opt/src/lbm_config.c:106;XOR	%EAX,%EAX;(4) 
0x27a3;/users/user2207/lbm_opt/src/lbm_config.c:106;LEA	(%R12),%RDX;(4) 
0x27a7;/users/user2207/lbm_opt/src/lbm_config.c:106;LEA	0x295c(%RIP),%RSI;(4) 
0x27ae;/users/user2207/lbm_opt/src/lbm_config.c:106;LEA	(%RBX),%RDI;(4) 
0x27b1;/users/user2207/lbm_opt/src/lbm_config.c:106;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x27b6;/users/user2207/lbm_opt/src/lbm_config.c:106;SUB	$0x1,%EAX;(4) 
0x27b9;/users/user2207/lbm_opt/src/lbm_config.c:106;JNE	27cd <main+0x142d>;(4) 
0x27bb;/users/user2207/lbm_opt/src/lbm_config.c:107;MOV	0x170(%RSP),%ESI;(4) 
0x27c2;/users/user2207/lbm_opt/src/lbm_config.c:107;MOV	%ESI,0x48a8(%RIP);(4) 
0x27c8;/users/user2207/lbm_opt/src/lbm_config.c:107;JMP	14e0 <main+0x140>;(4) 
0x27cd;/users/user2207/lbm_opt/src/lbm_config.c:108;LEA	0x5a0(%RSP),%R12;(4) 
0x27d5;/users/user2207/lbm_opt/src/lbm_config.c:108;XOR	%EAX,%EAX;(4) 
0x27d7;/users/user2207/lbm_opt/src/lbm_config.c:108;LEA	(%R12),%RDX;(4) 
0x27db;/users/user2207/lbm_opt/src/lbm_config.c:108;LEA	0x293d(%RIP),%RSI;(4) 
0x27e2;/users/user2207/lbm_opt/src/lbm_config.c:108;LEA	(%RBX),%RDI;(4) 
0x27e5;/users/user2207/lbm_opt/src/lbm_config.c:108;CALL	1250 <.plt.sec@start+0x60>;(4) 
0x27ea;/users/user2207/lbm_opt/src/lbm_config.c:108;SUB	$0x1,%EAX;(4) 
0x27ed;/users/user2207/lbm_opt/src/lbm_config.c:108;JNE	2881 <main+0x14e1>;(4) 
0x27f3;/users/user2207/lbm_opt/src/lbm_config.c:109;LEA	(%R12),%RDI;(4) 
0x27f7;/users/user2207/lbm_opt/src/lbm_config.c:109;CALL	1320 <.plt.sec@start+0x130>;(4) 
0x27fc;/users/user2207/lbm_opt/src/lbm_config.c:109;MOV	%RAX,0x4865(%RIP);(4) 
0x2803;/users/user2207/lbm_opt/src/lbm_config.c:109;JMP	14e0 <main+0x140>;(4) 
0x2808;/users/user2207/lbm_opt/src/lbm_config.c:118;MOV	0xc8(%RSP),%RDI;
0x2810;/users/user2207/lbm_opt/src/lbm_config.c:118;CALL	1390 <.plt.sec@start+0x1a0>;
0x2815;/users/user2207/lbm_opt/src/lbm_config.c:119;CALL	1220 <.plt.sec@start+0x30>;
0x281a;/users/user2207/lbm_opt/src/main.c:270;CALL	1340 <.plt.sec@start+0x150>;(0) 
0x281f;/users/user2207/lbm_opt/src/lbm_comm.c:99;MOVL	$-0x1,0x5cc(%RSP);(0) 
0x282a;/users/user2207/lbm_opt/src/lbm_comm.c:43;JMP	2780 <main+0x13e0>;(0) 
0x282f;/users/user2207/lbm_opt/src/lbm_comm.c:99;MOVQ	$-0x1,0x5cc(%RSP);
0x283b;/users/user2207/lbm_opt/src/lbm_comm.c:99;JMP	267e <main+0x12de>;
0x2840;/users/user2207/lbm_opt/src/main.c:53;MOV	0x4821(%RIP),%RDI;
0x2847;/users/user2207/lbm_opt/src/main.c:53;CALL	1390 <.plt.sec@start+0x1a0>;
0x284c;/users/user2207/lbm_opt/src/main.c:54;CALL	1220 <.plt.sec@start+0x30>;
0x2851;/users/user2207/lbm_opt/src/lbm_comm.c:70;LEA	0x2d80(%RIP),%RCX;
0x2858;/users/user2207/lbm_opt/src/lbm_comm.c:70;MOV	$0x46,%EDX;
0x285d;/users/user2207/lbm_opt/src/lbm_comm.c:70;LEA	0x2980(%RIP),%RSI;
0x2864;/users/user2207/lbm_opt/src/lbm_comm.c:70;LEA	0x2988(%RIP),%RDI;
0x286b;/users/user2207/lbm_opt/src/lbm_comm.c:70;CALL	1260 <.plt.sec@start+0x70>;
0x2870;/users/user2207/lbm_opt/src/lbm_struct.c:14;LEA	0x278d(%RIP),%RDI;
0x2877;/users/user2207/lbm_opt/src/lbm_struct.c:14;CALL	1390 <.plt.sec@start+0x1a0>;
0x287c;/users/user2207/lbm_opt/src/lbm_struct.c:15;CALL	1220 <.plt.sec@start+0x30>;
0x2881;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	0x4770(%RIP),%R10;
0x2888;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;LEA	(%RBX),%R8;
0x288b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;LEA	(%R13),%ECX;
0x288f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;LEA	0x297a(%RIP),%RDX;
0x2896;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	$0x1,%ESI;
0x289b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;XOR	%EAX,%EAX;
0x289d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;MOV	(%R10),%RDI;
0x28a0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:100;CALL	1240 <.plt.sec@start+0x50>;
0x28a5;/users/user2207/lbm_opt/src/lbm_config.c:112;CALL	1220 <.plt.sec@start+0x30>;
0x28aa;:0;NOPW	(%RAX,%RAX,1);
