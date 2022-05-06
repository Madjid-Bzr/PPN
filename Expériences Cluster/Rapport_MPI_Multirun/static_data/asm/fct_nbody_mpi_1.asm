address;source_location;insn;indent
0x1240;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;ENDBR64;
0x1244;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;LEA	0x8(%RSP),%R10;
0x1249;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;AND	$-0x40,%RSP;
0x124d;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;PUSHQ	-0x8(%R10);
0x1251;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;PUSH	%RBP;
0x1252;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;MOV	%RSP,%RBP;
0x1255;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;PUSH	%R15;
0x1257;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;PUSH	%R14;
0x1259;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;PUSH	%R13;
0x125b;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;PUSH	%R12;
0x125d;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;PUSH	%R10;
0x125f;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;PUSH	%RBX;
0x1260;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;SUB	$0x140,%RSP;
0x1267;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;MOV	%EDI,-0x84(%RBP);
0x126d;/users/user2234/Code_Nbody3D/nbody_mpi.c:92;LEA	-0x84(%RBP),%RDI;
0x1274;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;MOV	%RSI,-0x90(%RBP);
0x127b;/users/user2234/Code_Nbody3D/nbody_mpi.c:92;LEA	-0x90(%RBP),%RSI;
0x1282;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;MOV	%FS:0x28,%RAX;
0x128b;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;MOV	%RAX,-0x38(%RBP);
0x128f;/users/user2234/Code_Nbody3D/nbody_mpi.c:90;XOR	%EAX,%EAX;
0x1291;/users/user2234/Code_Nbody3D/nbody_mpi.c:92;CALL	1170 <.plt.sec@start+0x30>;
0x1296;/users/user2234/Code_Nbody3D/nbody_mpi.c:96;LEA	-0x78(%RBP),%RSI;
0x129a;/users/user2234/Code_Nbody3D/nbody_mpi.c:96;MOV	$0x44000000,%EDI;
0x129f;/users/user2234/Code_Nbody3D/nbody_mpi.c:96;CALL	11b0 <.plt.sec@start+0x70>;
0x12a4;/users/user2234/Code_Nbody3D/nbody_mpi.c:97;LEA	-0x74(%RBP),%RSI;
0x12a8;/users/user2234/Code_Nbody3D/nbody_mpi.c:97;MOV	$0x44000000,%EDI;
0x12ad;/users/user2234/Code_Nbody3D/nbody_mpi.c:97;CALL	11c0 <.plt.sec@start+0x80>;
0x12b2;/users/user2234/Code_Nbody3D/nbody_mpi.c:99;CMPL	$0x1,-0x84(%RBP);
0x12b9;/users/user2234/Code_Nbody3D/nbody_mpi.c:99;JG	1814 <main+0x5d4>;
0x12bf;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;MOVSXD	-0x78(%RBP),%RCX;
0x12c3;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;MOV	$0x186a0,%EAX;
0x12c8;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;XOR	%EDX,%EDX;
0x12ca;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;MOV	$0x61a80,%ESI;
0x12cf;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;MOV	$0x40,%EDI;
0x12d4;/users/user2234/Code_Nbody3D/nbody_mpi.c:99;MOV	$0x186a0,%R14D;
0x12da;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;DIV	%RCX;
0x12dd;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;MOV	%RAX,%R15;
0x12e0;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;CALL	1180 <.plt.sec@start+0x40>;
0x12e5;/users/user2234/Code_Nbody3D/nbody_mpi.c:114;MOV	$0x61a80,%ESI;
0x12ea;/users/user2234/Code_Nbody3D/nbody_mpi.c:114;MOV	$0x40,%EDI;
0x12ef;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;MOV	%RAX,-0xf8(%RBP);
0x12f6;/users/user2234/Code_Nbody3D/nbody_mpi.c:114;CALL	1180 <.plt.sec@start+0x40>;
0x12fb;/users/user2234/Code_Nbody3D/nbody_mpi.c:115;MOV	$0x61a80,%ESI;
0x1300;/users/user2234/Code_Nbody3D/nbody_mpi.c:115;MOV	$0x40,%EDI;
0x1305;/users/user2234/Code_Nbody3D/nbody_mpi.c:114;MOV	%RAX,-0x100(%RBP);
0x130c;/users/user2234/Code_Nbody3D/nbody_mpi.c:115;CALL	1180 <.plt.sec@start+0x40>;
0x1311;/users/user2234/Code_Nbody3D/nbody_mpi.c:116;MOV	$0x61a80,%ESI;
0x1316;/users/user2234/Code_Nbody3D/nbody_mpi.c:116;MOV	$0x40,%EDI;
0x131b;/users/user2234/Code_Nbody3D/nbody_mpi.c:115;MOV	%RAX,-0x108(%RBP);
0x1322;/users/user2234/Code_Nbody3D/nbody_mpi.c:116;CALL	1180 <.plt.sec@start+0x40>;
0x1327;/users/user2234/Code_Nbody3D/nbody_mpi.c:117;MOV	$0x61a80,%ESI;
0x132c;/users/user2234/Code_Nbody3D/nbody_mpi.c:117;MOV	$0x40,%EDI;
0x1331;/users/user2234/Code_Nbody3D/nbody_mpi.c:116;MOV	%RAX,-0x110(%RBP);
0x1338;/users/user2234/Code_Nbody3D/nbody_mpi.c:117;CALL	1180 <.plt.sec@start+0x40>;
0x133d;/users/user2234/Code_Nbody3D/nbody_mpi.c:118;MOV	$0x61a80,%ESI;
0x1342;/users/user2234/Code_Nbody3D/nbody_mpi.c:118;MOV	$0x40,%EDI;
0x1347;/users/user2234/Code_Nbody3D/nbody_mpi.c:117;MOV	%RAX,-0xa8(%RBP);
0x134e;/users/user2234/Code_Nbody3D/nbody_mpi.c:118;CALL	1180 <.plt.sec@start+0x40>;
0x1353;/users/user2234/Code_Nbody3D/nbody_mpi.c:121;XOR	%EDI,%EDI;
0x1355;/users/user2234/Code_Nbody3D/nbody_mpi.c:118;MOV	%RAX,%R13;
0x1358;/users/user2234/Code_Nbody3D/nbody_mpi.c:121;CALL	11f0 <.plt.sec@start+0xb0>;
0x135d;/users/user2234/Code_Nbody3D/nbody_mpi.c:127;MOV	%R15D,-0x98(%RBP);
0x1364;/users/user2234/Code_Nbody3D/nbody_mpi.c:127;MOV	-0xa8(%RBP),%R15;
0x136b;/users/user2234/Code_Nbody3D/nbody_mpi.c:99;XOR	%EBX,%EBX;
0x136d;/users/user2234/Code_Nbody3D/nbody_mpi.c:99;NOPL	(%RAX);
0x1370;/users/user2234/Code_Nbody3D/nbody_mpi.c:125;CALL	1210 <.plt.sec@start+0xd0>;(0) 
0x1375;/users/user2234/Code_Nbody3D/nbody_mpi.c:125;MOVSXD	%EAX,%R12;(0) 
0x1378;/users/user2234/Code_Nbody3D/nbody_mpi.c:126;CALL	1210 <.plt.sec@start+0xd0>;(0) 
0x137d;/users/user2234/Code_Nbody3D/nbody_mpi.c:127;MOVL	$0x30000000,-0xf0(%RBP);(0) 
0x1387;/users/user2234/Code_Nbody3D/nbody_mpi.c:126;MOVSXD	%EAX,%RDI;(0) 
0x138a;/users/user2234/Code_Nbody3D/nbody_mpi.c:127;CMP	%RDI,%R12;(0) 
0x138d;/users/user2234/Code_Nbody3D/nbody_mpi.c:127;JA	1399 <main+0x159>;(0) 
0x138f;/users/user2234/Code_Nbody3D/nbody_mpi.c:127;MOVL	$-0x50000000,-0xf0(%RBP);(0) 
0x1399;/users/user2234/Code_Nbody3D/nbody_mpi.c:130;CALL	1210 <.plt.sec@start+0xd0>;(0) 
0x139e;/users/user2234/Code_Nbody3D/nbody_mpi.c:130;VXORPS	%XMM6,%XMM6,%XMM6;(0) 
0x13a2;/users/user2234/Code_Nbody3D/nbody_mpi.c:130;MOV	-0xf8(%RBP),%R8;(0) 
0x13a9;/users/user2234/Code_Nbody3D/nbody_mpi.c:130;VCVTSI2SS	%EAX,%XMM6,%XMM0;(0) 
0x13ad;/users/user2234/Code_Nbody3D/nbody_mpi.c:130;VMULSS	-0xf0(%RBP),%XMM0,%XMM1;(0) 
0x13b5;/users/user2234/Code_Nbody3D/nbody_mpi.c:130;VMOVSS	%XMM1,(%R8,%RBX,4);(0) 
0x13bb;/users/user2234/Code_Nbody3D/nbody_mpi.c:131;CALL	1210 <.plt.sec@start+0xd0>;(0) 
0x13c0;/users/user2234/Code_Nbody3D/nbody_mpi.c:131;VXORPS	%XMM2,%XMM2,%XMM2;(0) 
0x13c4;/users/user2234/Code_Nbody3D/nbody_mpi.c:131;MOV	-0x100(%RBP),%R9;(0) 
0x13cb;/users/user2234/Code_Nbody3D/nbody_mpi.c:131;VCVTSI2SS	%EAX,%XMM2,%XMM3;(0) 
0x13cf;/users/user2234/Code_Nbody3D/nbody_mpi.c:131;VMULSS	0x2e31(%RIP),%XMM3,%XMM4;(0) 
0x13d7;/users/user2234/Code_Nbody3D/nbody_mpi.c:131;VMOVSS	%XMM4,(%R9,%RBX,4);(0) 
0x13dd;/users/user2234/Code_Nbody3D/nbody_mpi.c:132;CALL	1210 <.plt.sec@start+0xd0>;(0) 
0x13e2;/users/user2234/Code_Nbody3D/nbody_mpi.c:132;VXORPS	%XMM5,%XMM5,%XMM5;(0) 
0x13e6;/users/user2234/Code_Nbody3D/nbody_mpi.c:132;MOV	-0x108(%RBP),%R11;(0) 
0x13ed;/users/user2234/Code_Nbody3D/nbody_mpi.c:132;VCVTSI2SS	%EAX,%XMM5,%XMM7;(0) 
0x13f1;/users/user2234/Code_Nbody3D/nbody_mpi.c:132;VMULSS	-0xf0(%RBP),%XMM7,%XMM8;(0) 
0x13f9;/users/user2234/Code_Nbody3D/nbody_mpi.c:132;VMOVSS	%XMM8,(%R11,%RBX,4);(0) 
0x13ff;/users/user2234/Code_Nbody3D/nbody_mpi.c:135;CALL	1210 <.plt.sec@start+0xd0>;(0) 
0x1404;/users/user2234/Code_Nbody3D/nbody_mpi.c:135;VXORPS	%XMM9,%XMM9,%XMM9;(0) 
0x1409;/users/user2234/Code_Nbody3D/nbody_mpi.c:135;MOV	-0x110(%RBP),%R10;(0) 
0x1410;/users/user2234/Code_Nbody3D/nbody_mpi.c:135;VCVTSI2SS	%EAX,%XMM9,%XMM10;(0) 
0x1414;/users/user2234/Code_Nbody3D/nbody_mpi.c:135;VMULSS	0x2dec(%RIP),%XMM10,%XMM11;(0) 
0x141c;/users/user2234/Code_Nbody3D/nbody_mpi.c:135;VMOVSS	%XMM11,(%R10,%RBX,4);(0) 
0x1422;/users/user2234/Code_Nbody3D/nbody_mpi.c:136;CALL	1210 <.plt.sec@start+0xd0>;(0) 
0x1427;/users/user2234/Code_Nbody3D/nbody_mpi.c:136;VXORPS	%XMM12,%XMM12,%XMM12;(0) 
0x142c;/users/user2234/Code_Nbody3D/nbody_mpi.c:136;VCVTSI2SS	%EAX,%XMM12,%XMM13;(0) 
0x1430;/users/user2234/Code_Nbody3D/nbody_mpi.c:136;VMULSS	-0xf0(%RBP),%XMM13,%XMM14;(0) 
0x1438;/users/user2234/Code_Nbody3D/nbody_mpi.c:136;VMOVSS	%XMM14,(%R15,%RBX,4);(0) 
0x143e;/users/user2234/Code_Nbody3D/nbody_mpi.c:137;CALL	1210 <.plt.sec@start+0xd0>;(0) 
0x1443;/users/user2234/Code_Nbody3D/nbody_mpi.c:137;VXORPS	%XMM15,%XMM15,%XMM15;(0) 
0x1448;/users/user2234/Code_Nbody3D/nbody_mpi.c:137;VCVTSI2SS	%EAX,%XMM15,%XMM6;(0) 
0x144c;/users/user2234/Code_Nbody3D/nbody_mpi.c:137;VMULSS	0x2db4(%RIP),%XMM6,%XMM0;(0) 
0x1454;/users/user2234/Code_Nbody3D/nbody_mpi.c:137;VMOVSS	%XMM0,(%R13,%RBX,4);(0) 
0x145b;/users/user2234/Code_Nbody3D/nbody_mpi.c:122;ADD	$0x1,%RBX;(0) 
0x145f;/users/user2234/Code_Nbody3D/nbody_mpi.c:122;CMP	%R14,%RBX;(0) 
0x1462;/users/user2234/Code_Nbody3D/nbody_mpi.c:122;JB	1370 <main+0x130>;(0) 
0x1468;/users/user2234/Code_Nbody3D/nbody_mpi.c:122;MOV	-0x98(%RBP),%R15D;
0x146f;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;SUB	$0x8,%RSP;
0x1473;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;MOV	-0xf8(%RBP),%RCX;
0x147a;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;MOV	%R15D,%R8D;
0x147d;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;XOR	%ESI,%ESI;
0x147f;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;PUSH	$0x44000000;
0x1484;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;MOV	$0x4c00040a,%R9D;
0x148a;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;MOV	$0xc000000,%EDX;
0x148f;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;MOV	$-0x1,%RDI;
0x1496;/users/user2234/Code_Nbody3D/nbody_mpi.c:140;CALL	11a0 <.plt.sec@start+0x60>;
0x149b;/users/user2234/Code_Nbody3D/nbody_mpi.c:141;MOV	$0x4c00040a,%R9D;
0x14a1;/users/user2234/Code_Nbody3D/nbody_mpi.c:141;MOV	%R15D,%R8D;
0x14a4;/users/user2234/Code_Nbody3D/nbody_mpi.c:141;XOR	%ESI,%ESI;
0x14a6;/users/user2234/Code_Nbody3D/nbody_mpi.c:141;MOV	-0x100(%RBP),%RCX;
0x14ad;/users/user2234/Code_Nbody3D/nbody_mpi.c:141;MOV	$0xc000000,%EDX;
0x14b2;/users/user2234/Code_Nbody3D/nbody_mpi.c:141;MOV	$-0x1,%RDI;
0x14b9;/users/user2234/Code_Nbody3D/nbody_mpi.c:141;MOVL	$0x44000000,(%RSP);
0x14c0;/users/user2234/Code_Nbody3D/nbody_mpi.c:141;CALL	11a0 <.plt.sec@start+0x60>;
0x14c5;/users/user2234/Code_Nbody3D/nbody_mpi.c:142;MOV	$0x4c00040a,%R9D;
0x14cb;/users/user2234/Code_Nbody3D/nbody_mpi.c:142;MOV	%R15D,%R8D;
0x14ce;/users/user2234/Code_Nbody3D/nbody_mpi.c:142;XOR	%ESI,%ESI;
0x14d0;/users/user2234/Code_Nbody3D/nbody_mpi.c:142;MOV	-0x108(%RBP),%RCX;
0x14d7;/users/user2234/Code_Nbody3D/nbody_mpi.c:142;MOV	$0xc000000,%EDX;
0x14dc;/users/user2234/Code_Nbody3D/nbody_mpi.c:142;MOV	$-0x1,%RDI;
0x14e3;/users/user2234/Code_Nbody3D/nbody_mpi.c:142;MOVL	$0x44000000,(%RSP);
0x14ea;/users/user2234/Code_Nbody3D/nbody_mpi.c:142;CALL	11a0 <.plt.sec@start+0x60>;
0x14ef;/users/user2234/Code_Nbody3D/nbody_mpi.c:143;MOV	$0x4c00040a,%R9D;
0x14f5;/users/user2234/Code_Nbody3D/nbody_mpi.c:143;MOV	%R15D,%R8D;
0x14f8;/users/user2234/Code_Nbody3D/nbody_mpi.c:143;XOR	%ESI,%ESI;
0x14fa;/users/user2234/Code_Nbody3D/nbody_mpi.c:143;MOV	-0x110(%RBP),%RCX;
0x1501;/users/user2234/Code_Nbody3D/nbody_mpi.c:143;MOV	$0xc000000,%EDX;
0x1506;/users/user2234/Code_Nbody3D/nbody_mpi.c:143;MOV	$-0x1,%RDI;
0x150d;/users/user2234/Code_Nbody3D/nbody_mpi.c:143;MOVL	$0x44000000,(%RSP);
0x1514;/users/user2234/Code_Nbody3D/nbody_mpi.c:143;CALL	11a0 <.plt.sec@start+0x60>;
0x1519;/users/user2234/Code_Nbody3D/nbody_mpi.c:144;MOV	$0x4c00040a,%R9D;
0x151f;/users/user2234/Code_Nbody3D/nbody_mpi.c:144;MOV	%R15D,%R8D;
0x1522;/users/user2234/Code_Nbody3D/nbody_mpi.c:144;XOR	%ESI,%ESI;
0x1524;/users/user2234/Code_Nbody3D/nbody_mpi.c:144;MOV	-0xa8(%RBP),%RCX;
0x152b;/users/user2234/Code_Nbody3D/nbody_mpi.c:144;MOV	$0xc000000,%EDX;
0x1530;/users/user2234/Code_Nbody3D/nbody_mpi.c:144;MOV	$-0x1,%RDI;
0x1537;/users/user2234/Code_Nbody3D/nbody_mpi.c:144;MOVL	$0x44000000,(%RSP);
0x153e;/users/user2234/Code_Nbody3D/nbody_mpi.c:144;CALL	11a0 <.plt.sec@start+0x60>;
0x1543;/users/user2234/Code_Nbody3D/nbody_mpi.c:145;MOV	%R13,%RCX;
0x1546;/users/user2234/Code_Nbody3D/nbody_mpi.c:145;XOR	%ESI,%ESI;
0x1548;/users/user2234/Code_Nbody3D/nbody_mpi.c:145;MOV	$0x4c00040a,%R9D;
0x154e;/users/user2234/Code_Nbody3D/nbody_mpi.c:145;MOV	%R15D,%R8D;
0x1551;/users/user2234/Code_Nbody3D/nbody_mpi.c:145;MOV	$0xc000000,%EDX;
0x1556;/users/user2234/Code_Nbody3D/nbody_mpi.c:145;MOV	$-0x1,%RDI;
0x155d;/users/user2234/Code_Nbody3D/nbody_mpi.c:145;MOVL	$0x44000000,(%RSP);
0x1564;/users/user2234/Code_Nbody3D/nbody_mpi.c:145;CALL	11a0 <.plt.sec@start+0x60>;
0x1569;/users/user2234/Code_Nbody3D/nbody_mpi.c:147;POP	%RCX;
0x156a;/users/user2234/Code_Nbody3D/nbody_mpi.c:147;MOV	-0x74(%RBP),%ECX;
0x156d;/users/user2234/Code_Nbody3D/nbody_mpi.c:147;POP	%RSI;
0x156e;/users/user2234/Code_Nbody3D/nbody_mpi.c:147;TEST	%ECX,%ECX;
0x1570;/users/user2234/Code_Nbody3D/nbody_mpi.c:147;JE	2093 <main+0xe53>;
0x1576;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;LEA	-0x1(%R14),%RSI;
0x157a;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;VXORPS	%XMM1,%XMM1,%XMM1;
0x157e;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;MOVSXD	%R15D,%R15;
0x1581;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;XOR	%EBX,%EBX;
0x1583;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;VCVTSI2SS	%R14,%XMM1,%XMM2;
0x1588;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;VMOVQ	-0xf8(%RBP),%XMM14;
0x1590;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;VMOVQ	-0x108(%RBP),%XMM6;
0x1598;/users/user2234/Code_Nbody3D/nbody_mpi.c:181;LEA	0x2aed(%RIP),%R12;
0x159f;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;VCVTUSI2SS	%RSI,%XMM3,%XMM3;
0x15a5;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;MOV	%RSI,-0x148(%RBP);
0x15ac;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;VPINSRQ	$0x1,-0x100(%RBP),%XMM14,%XMM15;
0x15b6;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;VPINSRQ	$0x1,-0x110(%RBP),%XMM6,%XMM0;
0x15c0;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;MOVQ	$0,-0xa0(%RBP);
0x15cb;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;MOVQ	$0,-0x98(%RBP);
0x15d6;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VCVTSS2SD	%XMM2,%XMM2,%XMM7;
0x15da;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VMULSD	0x2c2e(%RIP),%XMM7,%XMM8;
0x15e2;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VINSERTI128	$0x1,%XMM0,%YMM15,%YMM1;
0x15e8;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VMOVDQA	%YMM1,-0x130(%RBP);
0x15f0;/users/user2234/Code_Nbody3D/nbody_mpi.c:168;VMULSS	%XMM2,%XMM3,%XMM4;
0x15f4;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VCVTSS2SD	%XMM4,%XMM4,%XMM5;
0x15f8;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VFMADD231SD	0x2c17(%RIP),%XMM5,%XMM8;
0x1601;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VMOVSD	%XMM5,-0x140(%RBP);
0x1609;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VMULSD	0x2c0f(%RIP),%XMM8,%XMM9;
0x1611;/users/user2234/Code_Nbody3D/nbody_mpi.c:171;VCVTSD2SS	%XMM9,%XMM9,%XMM10;
0x1616;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VMULSS	%XMM10,%XMM10,%XMM12;
0x161b;/users/user2234/Code_Nbody3D/nbody_mpi.c:175;VCVTSS2SD	%XMM10,%XMM10,%XMM11;
0x1620;/users/user2234/Code_Nbody3D/nbody_mpi.c:175;VMOVSD	%XMM11,-0xb0(%RBP);
0x1628;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VCVTSS2SD	%XMM12,%XMM12,%XMM13;
0x162d;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VMOVSD	%XMM13,-0x138(%RBP);
0x1635;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VZEROUPPER;
0x1638;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;JMP	165a <main+0x41a>;
0x163a;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;NOPW	(%RAX,%RAX,1);
0x1640;/users/user2234/Code_Nbody3D/nbody_mpi.c:188;MOV	0x49c9(%RIP),%RDI;(1) 
0x1647;/users/user2234/Code_Nbody3D/nbody_mpi.c:158;ADD	$0x1,%RBX;(1) 
0x164b;/users/user2234/Code_Nbody3D/nbody_mpi.c:188;CALL	1230 <.plt.sec@start+0xf0>;(1) 
0x1650;/users/user2234/Code_Nbody3D/nbody_mpi.c:158;CMP	$0xa,%RBX;(1) 
0x1654;/users/user2234/Code_Nbody3D/nbody_mpi.c:158;JE	1780 <main+0x540>;(1) 
0x165a;/users/user2234/Code_Nbody3D/nbody_mpi.c:161;CALL	1140 <.plt.sec@start>;(1) 
0x165f;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;MOV	%R13,-0x48(%RBP);(1) 
0x1663;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;MOV	-0x78(%RBP),%EDX;(1) 
0x1666;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;MOV	%R15,%RCX;(1) 
0x1669;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;MOV	-0xa8(%RBP),%RAX;(1) 
0x1670;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;MOV	-0x74(%RBP),%ESI;(1) 
0x1673;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;PUSHQ	-0x48(%RBP);(1) 
0x1676;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;MOV	%R14,%RDI;(1) 
0x1679;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;VMOVDQA	-0x130(%RBP),%YMM2;(1) 
0x1681;/users/user2234/Code_Nbody3D/nbody_mpi.c:161;VMOVSD	%XMM0,-0xf0(%RBP);(1) 
0x1689;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;VMOVSS	0x2b7b(%RIP),%XMM0;(1) 
0x1691;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;MOV	%RAX,-0x50(%RBP);(1) 
0x1695;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;VMOVDQA	%YMM2,-0x70(%RBP);(1) 
0x169a;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;PUSHQ	-0x50(%RBP);(1) 
0x169d;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;PUSHQ	-0x58(%RBP);(1) 
0x16a0;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;PUSHQ	-0x60(%RBP);(1) 
0x16a3;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;PUSHQ	-0x68(%RBP);(1) 
0x16a6;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;PUSHQ	-0x70(%RBP);(1) 
0x16a9;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;VZEROUPPER;(1) 
0x16ac;/users/user2234/Code_Nbody3D/nbody_mpi.c:163;CALL	2380 <move_particles>;(1) 
0x16b1;/users/user2234/Code_Nbody3D/nbody_mpi.c:165;ADD	$0x30,%RSP;(1) 
0x16b5;/users/user2234/Code_Nbody3D/nbody_mpi.c:165;CALL	1140 <.plt.sec@start>;(1) 
0x16ba;/users/user2234/Code_Nbody3D/nbody_mpi.c:173;CMP	$0x2,%RBX;(1) 
0x16be;/users/user2234/Code_Nbody3D/nbody_mpi.c:173;JBE	1760 <main+0x520>;(1) 
0x16c4;/users/user2234/Code_Nbody3D/nbody_mpi.c:175;VSUBSD	-0xf0(%RBP),%XMM0,%XMM0;(1) 
0x16cc;/users/user2234/Code_Nbody3D/nbody_mpi.c:178;MOV	-0x74(%RBP),%EDI;(1) 
0x16cf;/users/user2234/Code_Nbody3D/nbody_mpi.c:181;MOV	%R12,%RCX;(1) 
0x16d2;/users/user2234/Code_Nbody3D/nbody_mpi.c:175;VMOVSD	0x2b4e(%RIP),%XMM3;(1) 
0x16da;/users/user2234/Code_Nbody3D/nbody_mpi.c:175;VMOVSD	-0x98(%RBP),%XMM5;(1) 
0x16e2;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VMOVSD	-0xa0(%RBP),%XMM10;(1) 
0x16ea;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VMULSD	%XMM0,%XMM0,%XMM7;(1) 
0x16ee;/users/user2234/Code_Nbody3D/nbody_mpi.c:175;VDIVSD	%XMM0,%XMM3,%XMM4;(1) 
0x16f2;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VDIVSD	%XMM7,%XMM3,%XMM9;(1) 
0x16f6;/users/user2234/Code_Nbody3D/nbody_mpi.c:175;VFMADD231SD	-0xb0(%RBP),%XMM4,%XMM5;(1) 
0x16ff;/users/user2234/Code_Nbody3D/nbody_mpi.c:175;VMOVSD	%XMM5,-0x98(%RBP);(1) 
0x1707;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VFMADD231SD	-0x138(%RBP),%XMM9,%XMM10;(1) 
0x1710;/users/user2234/Code_Nbody3D/nbody_mpi.c:176;VMOVSD	%XMM10,-0xa0(%RBP);(1) 
0x1718;/users/user2234/Code_Nbody3D/nbody_mpi.c:178;TEST	%EDI,%EDI;(1) 
0x171a;/users/user2234/Code_Nbody3D/nbody_mpi.c:178;JNE	1640 <main+0x400>;(1) 
0x1720;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RBX,%RDX;(1) 
0x1723;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(1) 
0x1728;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x3,%EAX;(1) 
0x172d;/users/user2234/Code_Nbody3D/nbody_mpi.c:185;VMOVSD	0x2af3(%RIP),%XMM11;(1) 
0x1735;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x290f(%RIP),%RSI;(1) 
0x173c;/users/user2234/Code_Nbody3D/nbody_mpi.c:185;VDIVSD	%XMM0,%XMM11,%XMM12;(1) 
0x1740;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMULSD	-0xb0(%RBP),%XMM12,%XMM2;(1) 
0x1748;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMULSD	-0x140(%RBP),%XMM12,%XMM1;(1) 
0x1750;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;(1) 
0x1755;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;JMP	1640 <main+0x400>;(1) 
0x175a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;NOPW	(%RAX,%RAX,1);
0x1760;/users/user2234/Code_Nbody3D/nbody_mpi.c:178;MOV	-0x74(%RBP),%EDX;(1) 
0x1763;/users/user2234/Code_Nbody3D/nbody_mpi.c:178;TEST	%EDX,%EDX;(1) 
0x1765;/users/user2234/Code_Nbody3D/nbody_mpi.c:178;JNE	17ff <main+0x5bf>;(1) 
0x176b;/users/user2234/Code_Nbody3D/nbody_mpi.c:178;VSUBSD	-0xf0(%RBP),%XMM0,%XMM0;(1) 
0x1773;/users/user2234/Code_Nbody3D/nbody_mpi.c:181;LEA	0x288a(%RIP),%RCX;(1) 
0x177a;/users/user2234/Code_Nbody3D/nbody_mpi.c:181;JMP	1720 <main+0x4e0>;(1) 
0x177c;/users/user2234/Code_Nbody3D/nbody_mpi.c:181;NOPL	(%RAX);
0x1780;/users/user2234/Code_Nbody3D/nbody_mpi.c:194;MOVSXD	-0x74(%RBP),%RBX;
0x1784;/users/user2234/Code_Nbody3D/nbody_mpi.c:194;TEST	%EBX,%EBX;
0x1786;/users/user2234/Code_Nbody3D/nbody_mpi.c:194;JE	18cb <main+0x68b>;
0x178c;/users/user2234/Code_Nbody3D/nbody_mpi.c:220;MOV	-0xf8(%RBP),%RDI;
0x1793;/users/user2234/Code_Nbody3D/nbody_mpi.c:220;CALL	1190 <.plt.sec@start+0x50>;
0x1798;/users/user2234/Code_Nbody3D/nbody_mpi.c:221;MOV	-0x100(%RBP),%RDI;
0x179f;/users/user2234/Code_Nbody3D/nbody_mpi.c:221;CALL	1190 <.plt.sec@start+0x50>;
0x17a4;/users/user2234/Code_Nbody3D/nbody_mpi.c:222;MOV	-0x108(%RBP),%RDI;
0x17ab;/users/user2234/Code_Nbody3D/nbody_mpi.c:222;CALL	1190 <.plt.sec@start+0x50>;
0x17b0;/users/user2234/Code_Nbody3D/nbody_mpi.c:223;MOV	-0x110(%RBP),%RDI;
0x17b7;/users/user2234/Code_Nbody3D/nbody_mpi.c:223;CALL	1190 <.plt.sec@start+0x50>;
0x17bc;/users/user2234/Code_Nbody3D/nbody_mpi.c:224;MOV	-0xa8(%RBP),%RDI;
0x17c3;/users/user2234/Code_Nbody3D/nbody_mpi.c:224;CALL	1190 <.plt.sec@start+0x50>;
0x17c8;/users/user2234/Code_Nbody3D/nbody_mpi.c:225;MOV	%R13,%RDI;
0x17cb;/users/user2234/Code_Nbody3D/nbody_mpi.c:225;CALL	1190 <.plt.sec@start+0x50>;
0x17d0;/users/user2234/Code_Nbody3D/nbody_mpi.c:228;CALL	11e0 <.plt.sec@start+0xa0>;
0x17d5;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;MOV	-0x38(%RBP),%RAX;
0x17d9;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;XOR	%FS:0x28,%RAX;
0x17e2;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;JNE	2269 <main+0x1029>;
0x17e8;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;LEA	-0x30(%RBP),%RSP;
0x17ec;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;XOR	%EAX,%EAX;
0x17ee;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;POP	%RBX;
0x17ef;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;POP	%R10;
0x17f1;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;POP	%R12;
0x17f3;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;POP	%R13;
0x17f5;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;POP	%R14;
0x17f7;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;POP	%R15;
0x17f9;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;POP	%RBP;
0x17fa;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;LEA	-0x8(%R10),%RSP;
0x17fe;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;RET;
0x17ff;/users/user2234/Code_Nbody3D/nbody_mpi.c:188;MOV	0x480a(%RIP),%RDI;(1) 
0x1806;/users/user2234/Code_Nbody3D/nbody_mpi.c:158;ADD	$0x1,%RBX;(1) 
0x180a;/users/user2234/Code_Nbody3D/nbody_mpi.c:188;CALL	1230 <.plt.sec@start+0xf0>;(1) 
0x180f;/users/user2234/Code_Nbody3D/nbody_mpi.c:158;JMP	165a <main+0x41a>;(1) 
0x1814;/users/user2234/Code_Nbody3D/nbody_mpi.c:99;MOV	-0x90(%RBP),%RBX;
0x181b;/usr/include/stdlib.h:375;XOR	%ESI,%ESI;
0x181d;/usr/include/stdlib.h:375;MOV	$0xa,%EDX;
0x1822;/usr/include/stdlib.h:375;MOV	0x8(%RBX),%RDI;
0x1826;/usr/include/stdlib.h:375;CALL	1200 <.plt.sec@start+0xc0>;
0x182b;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;MOVSXD	-0x78(%RBP),%RSI;
0x182f;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;XOR	%EDX,%EDX;
0x1831;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;MOV	$0x40,%EDI;
0x1836;/usr/include/stdlib.h:375;MOV	%RAX,%R14;
0x1839;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;DIV	%RSI;
0x183c;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;LEA	(,%R14,4),%R12;
0x1844;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;MOV	%R12,%RSI;
0x1847;/users/user2234/Code_Nbody3D/nbody_mpi.c:101;MOV	%RAX,%R15;
0x184a;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;CALL	1180 <.plt.sec@start+0x40>;
0x184f;/users/user2234/Code_Nbody3D/nbody_mpi.c:114;MOV	%R12,%RSI;
0x1852;/users/user2234/Code_Nbody3D/nbody_mpi.c:114;MOV	$0x40,%EDI;
0x1857;/users/user2234/Code_Nbody3D/nbody_mpi.c:113;MOV	%RAX,-0xf8(%RBP);
0x185e;/users/user2234/Code_Nbody3D/nbody_mpi.c:114;CALL	1180 <.plt.sec@start+0x40>;
0x1863;/users/user2234/Code_Nbody3D/nbody_mpi.c:115;MOV	%R12,%RSI;
0x1866;/users/user2234/Code_Nbody3D/nbody_mpi.c:115;MOV	$0x40,%EDI;
0x186b;/users/user2234/Code_Nbody3D/nbody_mpi.c:114;MOV	%RAX,-0x100(%RBP);
0x1872;/users/user2234/Code_Nbody3D/nbody_mpi.c:115;CALL	1180 <.plt.sec@start+0x40>;
0x1877;/users/user2234/Code_Nbody3D/nbody_mpi.c:116;MOV	%R12,%RSI;
0x187a;/users/user2234/Code_Nbody3D/nbody_mpi.c:116;MOV	$0x40,%EDI;
0x187f;/users/user2234/Code_Nbody3D/nbody_mpi.c:115;MOV	%RAX,-0x108(%RBP);
0x1886;/users/user2234/Code_Nbody3D/nbody_mpi.c:116;CALL	1180 <.plt.sec@start+0x40>;
0x188b;/users/user2234/Code_Nbody3D/nbody_mpi.c:117;MOV	%R12,%RSI;
0x188e;/users/user2234/Code_Nbody3D/nbody_mpi.c:117;MOV	$0x40,%EDI;
0x1893;/users/user2234/Code_Nbody3D/nbody_mpi.c:116;MOV	%RAX,-0x110(%RBP);
0x189a;/users/user2234/Code_Nbody3D/nbody_mpi.c:117;CALL	1180 <.plt.sec@start+0x40>;
0x189f;/users/user2234/Code_Nbody3D/nbody_mpi.c:118;MOV	$0x40,%EDI;
0x18a4;/users/user2234/Code_Nbody3D/nbody_mpi.c:118;MOV	%R12,%RSI;
0x18a7;/users/user2234/Code_Nbody3D/nbody_mpi.c:117;MOV	%RAX,-0xa8(%RBP);
0x18ae;/users/user2234/Code_Nbody3D/nbody_mpi.c:118;CALL	1180 <.plt.sec@start+0x40>;
0x18b3;/users/user2234/Code_Nbody3D/nbody_mpi.c:121;XOR	%EDI,%EDI;
0x18b5;/users/user2234/Code_Nbody3D/nbody_mpi.c:118;MOV	%RAX,%R13;
0x18b8;/users/user2234/Code_Nbody3D/nbody_mpi.c:121;CALL	11f0 <.plt.sec@start+0xb0>;
0x18bd;/users/user2234/Code_Nbody3D/nbody_mpi.c:122;TEST	%R14,%R14;
0x18c0;/users/user2234/Code_Nbody3D/nbody_mpi.c:122;JNE	135d <main+0x11d>;
0x18c6;/users/user2234/Code_Nbody3D/nbody_mpi.c:122;JMP	146f <main+0x22f>;
0x18cb;/users/user2234/Code_Nbody3D/nbody_mpi.c:192;VMOVSD	0x295d(%RIP),%XMM13;
0x18d3;/users/user2234/Code_Nbody3D/nbody_mpi.c:192;VMULSD	-0x98(%RBP),%XMM13,%XMM14;
0x18db;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x283e(%RIP),%RDI;
0x18e2;/users/user2234/Code_Nbody3D/nbody_mpi.c:192;VMOVSD	%XMM14,-0xf0(%RBP);
0x18ea;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1150 <.plt.sec@start+0x10>;
0x18ef;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x18f4;/users/user2234/Code_Nbody3D/nbody_mpi.c:193;VMOVSD	0x2934(%RIP),%XMM15;
0x18fc;/users/user2234/Code_Nbody3D/nbody_mpi.c:193;VMOVSD	-0xf0(%RBP),%XMM0;
0x1904;/users/user2234/Code_Nbody3D/nbody_mpi.c:193;VMULSD	-0xa0(%RBP),%XMM15,%XMM6;
0x190c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2779(%RIP),%RCX;
0x1913;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x274f(%RIP),%RDX;
0x191a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x2,%EAX;
0x191f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2832(%RIP),%RSI;
0x1926;/users/user2234/Code_Nbody3D/nbody_mpi.c:193;VFNMADD231SD	%XMM0,%XMM0,%XMM6;
0x192b;/users/user2234/Code_Nbody3D/nbody_mpi.c:193;VCVTSD2SS	%XMM6,%XMM6,%XMM1;
0x192f;/users/user2234/Code_Nbody3D/nbody_mpi.c:193;VSQRTSS	%XMM1,%XMM1,%XMM1;
0x1933;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VCVTSS2SD	%XMM1,%XMM1,%XMM1;
0x1937;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x193c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x27dd(%RIP),%RDI;
0x1943;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1150 <.plt.sec@start+0x10>;
0x1948;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;TEST	%R14,%R14;
0x194b;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JE	2224 <main+0xfe4>;
0x1951;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMPQ	$0xe,-0x148(%RBP);
0x1959;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JBE	2241 <main+0x1001>;
0x195f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	%R14,%R8;
0x1962;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VXORPD	%XMM1,%XMM1,%XMM1;
0x1966;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;XOR	%EDX,%EDX;
0x1968;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;SHR	$0x4,%R8;
0x196c;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VMOVAPD	%ZMM1,%ZMM11;
0x1972;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VMOVAPD	%ZMM1,%ZMM7;
0x1978;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	%R8,%R11;
0x197b;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VMOVAPD	%ZMM1,%ZMM6;
0x1981;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VMOVAPD	%ZMM1,%ZMM13;
0x1987;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;SAL	$0x6,%R11;
0x198b;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;AND	$0x1,%R8B;
0x198f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VMOVAPD	%ZMM1,%ZMM9;
0x1995;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JNE	2116 <main+0xed6>;
0x199b;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0xf8(%RBP),%RBX;
0x19a2;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0x100(%RBP),%R12;
0x19a9;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0x108(%RBP),%R15;
0x19b0;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0x110(%RBP),%RDI;
0x19b7;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0xa8(%RBP),%R8;
0x19be;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VMOVAPS	(%RBX,%RDX,1),%ZMM0;(3) 
0x19c5;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTPS2PD	(%RBX,%RDX,1),%ZMM5;(3) 
0x19cc;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VMOVAPS	(%R12,%RDX,1),%ZMM10;(3) 
0x19d3;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTPS2PD	(%R12,%RDX,1),%ZMM15;(3) 
0x19da;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VEXTRACTI64X4	$0x1,%ZMM0,%YMM3;(3) 
0x19e1;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VMOVAPS	(%R15,%RDX,1),%ZMM0;(3) 
0x19e8;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VEXTRACTI64X4	$0x1,%ZMM10,%YMM12;(3) 
0x19ef;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTPS2PD	%YMM3,%ZMM4;(3) 
0x19f5;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDPD	%ZMM5,%ZMM4,%ZMM8;(3) 
0x19fb;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTPS2PD	%YMM12,%ZMM14;(3) 
0x1a01;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTPS2PD	(%R15,%RDX,1),%ZMM5;(3) 
0x1a08;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VEXTRACTI64X4	$0x1,%ZMM0,%YMM3;(3) 
0x1a0f;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDPD	%ZMM15,%ZMM14,%ZMM2;(3) 
0x1a15;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VMOVAPS	(%R8,%RDX,1),%ZMM0;(3) 
0x1a1c;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTPS2PD	%YMM3,%ZMM4;(3) 
0x1a22;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDPD	%ZMM8,%ZMM9,%ZMM9;(3) 
0x1a28;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDPD	%ZMM5,%ZMM4,%ZMM8;(3) 
0x1a2e;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VEXTRACTI64X4	$0x1,%ZMM0,%YMM3;(3) 
0x1a35;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTPS2PD	%YMM0,%ZMM4;(3) 
0x1a3b;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDPD	%ZMM2,%ZMM13,%ZMM13;(3) 
0x1a41;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTPS2PD	%YMM3,%ZMM5;(3) 
0x1a47;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDPD	%ZMM8,%ZMM6,%ZMM10;(3) 
0x1a4d;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VMOVAPS	(%RDI,%RDX,1),%ZMM6;(3) 
0x1a54;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDPD	%ZMM4,%ZMM5,%ZMM8;(3) 
0x1a5a;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VEXTRACTI64X4	$0x1,%ZMM6,%YMM12;(3) 
0x1a61;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTPS2PD	%YMM6,%ZMM15;(3) 
0x1a67;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTPS2PD	(%R13,%RDX,1),%ZMM6;(3) 
0x1a6f;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTPS2PD	%YMM12,%ZMM14;(3) 
0x1a75;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDPD	%ZMM15,%ZMM14,%ZMM2;(3) 
0x1a7b;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDPD	%ZMM8,%ZMM11,%ZMM11;(3) 
0x1a81;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VMOVAPS	(%R13,%RDX,1),%ZMM12;(3) 
0x1a89;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VEXTRACTI64X4	$0x1,%ZMM12,%YMM14;(3) 
0x1a90;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VMOVAPS	0x40(%R12,%RDX,1),%ZMM12;(3) 
0x1a98;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTPS2PD	%YMM14,%ZMM15;(3) 
0x1a9e;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDPD	%ZMM2,%ZMM7,%ZMM7;(3) 
0x1aa4;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDPD	%ZMM15,%ZMM6,%ZMM2;(3) 
0x1aaa;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VEXTRACTI64X4	$0x1,%ZMM12,%YMM6;(3) 
0x1ab1;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTPS2PD	%YMM12,%ZMM15;(3) 
0x1ab7;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTPS2PD	%YMM6,%ZMM14;(3) 
0x1abd;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDPD	%ZMM2,%ZMM1,%ZMM0;(3) 
0x1ac3;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VMOVAPS	0x40(%RBX,%RDX,1),%ZMM1;(3) 
0x1acb;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDPD	%ZMM15,%ZMM14,%ZMM2;(3) 
0x1ad1;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTPS2PD	0x40(%RDI,%RDX,1),%ZMM15;(3) 
0x1ad9;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VEXTRACTI64X4	$0x1,%ZMM1,%YMM3;(3) 
0x1ae0;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTPS2PD	%YMM1,%ZMM4;(3) 
0x1ae6;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VMOVAPS	0x40(%R15,%RDX,1),%ZMM1;(3) 
0x1aee;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTPS2PD	%YMM3,%ZMM5;(3) 
0x1af4;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDPD	%ZMM4,%ZMM5,%ZMM8;(3) 
0x1afa;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDPD	%ZMM2,%ZMM13,%ZMM13;(3) 
0x1b00;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VEXTRACTI64X4	$0x1,%ZMM1,%YMM3;(3) 
0x1b07;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTPS2PD	%YMM1,%ZMM4;(3) 
0x1b0d;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VMOVAPS	0x40(%R8,%RDX,1),%ZMM1;(3) 
0x1b15;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTPS2PD	%YMM3,%ZMM5;(3) 
0x1b1b;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDPD	%ZMM8,%ZMM9,%ZMM9;(3) 
0x1b21;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDPD	%ZMM4,%ZMM5,%ZMM8;(3) 
0x1b27;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VEXTRACTI64X4	$0x1,%ZMM1,%YMM3;(3) 
0x1b2e;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTPS2PD	0x40(%R8,%RDX,1),%ZMM4;(3) 
0x1b36;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTPS2PD	%YMM3,%ZMM5;(3) 
0x1b3c;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDPD	%ZMM8,%ZMM10,%ZMM6;(3) 
0x1b42;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VMOVAPS	0x40(%RDI,%RDX,1),%ZMM10;(3) 
0x1b4a;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDPD	%ZMM4,%ZMM5,%ZMM8;(3) 
0x1b50;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VEXTRACTI64X4	$0x1,%ZMM10,%YMM12;(3) 
0x1b57;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTPS2PD	0x40(%R13,%RDX,1),%ZMM10;(3) 
0x1b5f;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTPS2PD	%YMM12,%ZMM14;(3) 
0x1b65;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDPD	%ZMM15,%ZMM14,%ZMM2;(3) 
0x1b6b;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDPD	%ZMM8,%ZMM11,%ZMM11;(3) 
0x1b71;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VMOVAPS	0x40(%R13,%RDX,1),%ZMM12;(3) 
0x1b79;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;SUB	$-0x80,%RDX;(3) 
0x1b7d;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VEXTRACTI64X4	$0x1,%ZMM12,%YMM14;(3) 
0x1b84;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDPD	%ZMM2,%ZMM7,%ZMM7;(3) 
0x1b8a;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTPS2PD	%YMM14,%ZMM15;(3) 
0x1b90;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDPD	%ZMM15,%ZMM10,%ZMM2;(3) 
0x1b96;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDPD	%ZMM2,%ZMM0,%ZMM1;(3) 
0x1b9c;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMP	%R11,%RDX;(3) 
0x1b9f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JNE	19be <main+0x77e>;(3) 
0x1ba5;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF64X4	$0x1,%ZMM1,%YMM0;
0x1bac;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF64X4	$0x1,%ZMM7,%YMM15;
0x1bb3;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF64X4	$0x1,%ZMM11,%YMM8;
0x1bba;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	%R14,%R11;
0x1bbd;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%YMM1,%YMM0,%YMM3;
0x1bc1;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%YMM11,%YMM8,%YMM11;
0x1bc6;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;AND	$-0x10,%R11;
0x1bca;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%YMM7,%YMM15,%YMM2;
0x1bce;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOVSXD	%R11D,%RBX;
0x1bd1;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF128	$0x1,%YMM3,%XMM1;
0x1bd7;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF128	$0x1,%YMM11,%XMM10;
0x1bdd;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF128	$0x1,%YMM2,%XMM7;
0x1be3;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM11,%XMM10,%XMM12;
0x1be8;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM3,%XMM1,%XMM5;
0x1bec;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM2,%XMM7,%XMM0;
0x1bf0;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VUNPCKHPD	%XMM5,%XMM5,%XMM4;
0x1bf4;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VUNPCKHPD	%XMM12,%XMM12,%XMM14;
0x1bf9;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VUNPCKHPD	%XMM0,%XMM0,%XMM3;
0x1bfd;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM5,%XMM4,%XMM1;
0x1c01;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM12,%XMM14,%XMM4;
0x1c06;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM0,%XMM3,%XMM8;
0x1c0a;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF64X4	$0x1,%ZMM6,%YMM5;
0x1c11;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF64X4	$0x1,%ZMM9,%YMM0;
0x1c18;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF64X4	$0x1,%ZMM13,%YMM14;
0x1c1f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%YMM6,%YMM5,%YMM6;
0x1c23;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%YMM9,%YMM0,%YMM9;
0x1c28;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%YMM13,%YMM14,%YMM13;
0x1c2d;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF128	$0x1,%YMM6,%XMM11;
0x1c33;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF128	$0x1,%YMM9,%XMM3;
0x1c39;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VEXTRACTF128	$0x1,%YMM13,%XMM15;
0x1c3f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM6,%XMM11,%XMM10;
0x1c43;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM9,%XMM3,%XMM5;
0x1c48;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM13,%XMM15,%XMM7;
0x1c4d;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VUNPCKHPD	%XMM10,%XMM10,%XMM12;
0x1c52;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VUNPCKHPD	%XMM5,%XMM5,%XMM6;
0x1c56;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VUNPCKHPD	%XMM7,%XMM7,%XMM2;
0x1c5a;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM10,%XMM12,%XMM11;
0x1c5f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM5,%XMM6,%XMM0;
0x1c63;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VADDPD	%XMM7,%XMM2,%XMM2;
0x1c67;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMP	%R11,%R14;
0x1c6a;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JE	2261 <main+0x1021>;
0x1c70;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;VZEROUPPER;
0x1c73;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;MOV	-0xf8(%RBP),%R10;
0x1c7a;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;MOV	-0x100(%RBP),%RCX;
0x1c81;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;LEA	0x1(%RBX),%RDX;
0x1c85;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;MOV	%R14,%R9;
0x1c88;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;MOV	-0x108(%RBP),%RSI;
0x1c8f;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;MOV	-0x110(%RBP),%RAX;
0x1c96;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;SAL	$0x2,%R11;
0x1c9a;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;SUB	%RDX,%R9;
0x1c9d;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;MOV	-0xa8(%RBP),%R12;
0x1ca4;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VXORPD	%XMM10,%XMM10,%XMM10;
0x1ca9;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;AND	$0x3,%R9D;
0x1cad;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTSS2SD	(%R10,%R11,1),%XMM10,%XMM12;
0x1cb3;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTSS2SD	(%RCX,%R11,1),%XMM10,%XMM14;
0x1cb9;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTSS2SD	(%RSI,%R11,1),%XMM10,%XMM13;
0x1cbf;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTSS2SD	(%RAX,%R11,1),%XMM10,%XMM15;
0x1cc5;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTSS2SD	(%R12,%R11,1),%XMM10,%XMM7;
0x1ccb;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTSS2SD	(%R13,%R11,1),%XMM10,%XMM9;
0x1cd2;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDSD	%XMM12,%XMM0,%XMM0;
0x1cd7;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDSD	%XMM14,%XMM2,%XMM2;
0x1cdc;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDSD	%XMM13,%XMM11,%XMM11;
0x1ce1;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDSD	%XMM15,%XMM8,%XMM8;
0x1ce6;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDSD	%XMM7,%XMM4,%XMM4;
0x1cea;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDSD	%XMM9,%XMM1,%XMM1;
0x1cef;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;LEA	0x2(%RBX),%R10;
0x1cf3;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMP	%R14,%RDX;
0x1cf6;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JAE	1fba <main+0xd7a>;
0x1cfc;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;TEST	%R9,%R9;
0x1cff;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JE	1e71 <main+0xc31>;
0x1d05;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMP	$0x1,%R9;
0x1d09;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JE	1df5 <main+0xbb5>;
0x1d0f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMP	$0x2,%R9;
0x1d13;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JE	1d87 <main+0xb47>;
0x1d15;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;MOV	-0xf8(%RBP),%R15;
0x1d1c;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;MOV	-0x100(%RBP),%RDI;
0x1d23;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;SAL	$0x2,%RDX;
0x1d27;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VXORPD	%XMM5,%XMM5,%XMM5;
0x1d2b;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;MOV	-0x108(%RBP),%R8;
0x1d32;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;MOV	-0x110(%RBP),%R11;
0x1d39;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTSS2SD	(%R13,%RDX,1),%XMM5,%XMM13;
0x1d40;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDSD	%XMM13,%XMM1,%XMM1;
0x1d45;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;MOV	-0xa8(%RBP),%R9;
0x1d4c;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTSS2SD	(%R15,%RDX,1),%XMM5,%XMM3;
0x1d52;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTSS2SD	(%RDI,%RDX,1),%XMM5,%XMM6;
0x1d57;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDSD	%XMM3,%XMM0,%XMM0;
0x1d5b;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTSS2SD	(%R8,%RDX,1),%XMM5,%XMM10;
0x1d61;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTSS2SD	(%R11,%RDX,1),%XMM5,%XMM12;
0x1d67;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDSD	%XMM6,%XMM2,%XMM2;
0x1d6b;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDSD	%XMM10,%XMM11,%XMM11;
0x1d70;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTSS2SD	(%R9,%RDX,1),%XMM5,%XMM14;
0x1d76;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDSD	%XMM12,%XMM8,%XMM8;
0x1d7b;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDSD	%XMM14,%XMM4,%XMM4;
0x1d80;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	%R10,%RDX;
0x1d83;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;LEA	0x3(%RBX),%R10;
0x1d87;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;MOV	-0xf8(%RBP),%RBX;
0x1d8e;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;MOV	-0x100(%RBP),%RCX;
0x1d95;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;SAL	$0x2,%RDX;
0x1d99;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VXORPD	%XMM15,%XMM15,%XMM15;
0x1d9e;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;MOV	-0x108(%RBP),%RSI;
0x1da5;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;MOV	-0x110(%RBP),%RAX;
0x1dac;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTSS2SD	(%R13,%RDX,1),%XMM15,%XMM10;
0x1db3;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDSD	%XMM10,%XMM1,%XMM1;
0x1db8;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;MOV	-0xa8(%RBP),%R12;
0x1dbf;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTSS2SD	(%RBX,%RDX,1),%XMM15,%XMM7;
0x1dc4;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTSS2SD	(%RCX,%RDX,1),%XMM15,%XMM9;
0x1dc9;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDSD	%XMM7,%XMM0,%XMM0;
0x1dcd;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTSS2SD	(%RSI,%RDX,1),%XMM15,%XMM5;
0x1dd2;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTSS2SD	(%RAX,%RDX,1),%XMM15,%XMM3;
0x1dd7;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDSD	%XMM9,%XMM2,%XMM2;
0x1ddc;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDSD	%XMM5,%XMM11,%XMM11;
0x1de0;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTSS2SD	(%R12,%RDX,1),%XMM15,%XMM6;
0x1de6;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDSD	%XMM3,%XMM8,%XMM8;
0x1dea;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDSD	%XMM6,%XMM4,%XMM4;
0x1dee;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	%R10,%RDX;
0x1df1;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;ADD	$0x1,%R10;
0x1df5;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;MOV	-0xf8(%RBP),%R15;
0x1dfc;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;MOV	-0x100(%RBP),%RDI;
0x1e03;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;SAL	$0x2,%RDX;
0x1e07;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VXORPD	%XMM12,%XMM12,%XMM12;
0x1e0c;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;MOV	-0x108(%RBP),%R8;
0x1e13;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;MOV	-0x110(%RBP),%R11;
0x1e1a;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTSS2SD	(%R13,%RDX,1),%XMM12,%XMM5;
0x1e21;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDSD	%XMM5,%XMM1,%XMM1;
0x1e25;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;MOV	-0xa8(%RBP),%R9;
0x1e2c;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTSS2SD	(%R15,%RDX,1),%XMM12,%XMM14;
0x1e32;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTSS2SD	(%RDI,%RDX,1),%XMM12,%XMM13;
0x1e37;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDSD	%XMM14,%XMM0,%XMM0;
0x1e3c;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTSS2SD	(%R8,%RDX,1),%XMM12,%XMM15;
0x1e42;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTSS2SD	(%R11,%RDX,1),%XMM12,%XMM7;
0x1e48;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDSD	%XMM13,%XMM2,%XMM2;
0x1e4d;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDSD	%XMM15,%XMM11,%XMM11;
0x1e52;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTSS2SD	(%R9,%RDX,1),%XMM12,%XMM9;
0x1e58;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;MOV	%R10,%RDX;
0x1e5b;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDSD	%XMM7,%XMM8,%XMM8;
0x1e5f;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDSD	%XMM9,%XMM4,%XMM4;
0x1e64;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;ADD	$0x1,%R10;
0x1e68;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMP	%R14,%RDX;
0x1e6b;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JAE	1fba <main+0xd7a>;
0x1e71;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0xf8(%RBP),%RBX;
0x1e78;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0x100(%RBP),%RCX;
0x1e7f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0x108(%RBP),%RSI;
0x1e86;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0x110(%RBP),%RAX;
0x1e8d;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;MOV	-0xa8(%RBP),%R12;
0x1e94;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VXORPD	%XMM6,%XMM6,%XMM6;(2) 
0x1e98;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTSS2SD	(%RBX,%RDX,4),%XMM6,%XMM3;(2) 
0x1e9d;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDSD	%XMM3,%XMM0,%XMM0;(2) 
0x1ea1;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTSS2SD	(%RCX,%RDX,4),%XMM6,%XMM10;(2) 
0x1ea6;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTSS2SD	(%RSI,%RDX,4),%XMM6,%XMM12;(2) 
0x1eab;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTSS2SD	(%RAX,%RDX,4),%XMM6,%XMM14;(2) 
0x1eb0;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDSD	%XMM12,%XMM11,%XMM15;(2) 
0x1eb5;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTSS2SD	(%R12,%RDX,4),%XMM6,%XMM13;(2) 
0x1ebb;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDSD	%XMM14,%XMM8,%XMM11;(2) 
0x1ec0;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDSD	%XMM13,%XMM4,%XMM9;(2) 
0x1ec5;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDSD	%XMM10,%XMM2,%XMM2;(2) 
0x1eca;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTSS2SD	(%R13,%RDX,4),%XMM6,%XMM7;(2) 
0x1ed1;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VMOVAPD	%XMM6,%XMM8;(2) 
0x1ed5;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDSD	%XMM7,%XMM1,%XMM4;(2) 
0x1ed9;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTSS2SD	(%RBX,%R10,4),%XMM6,%XMM5;(2) 
0x1edf;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDSD	%XMM5,%XMM0,%XMM1;(2) 
0x1ee3;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VMOVAPD	%XMM8,%XMM0;(2) 
0x1ee7;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTSS2SD	(%RSI,%R10,4),%XMM8,%XMM3;(2) 
0x1eed;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDSD	%XMM3,%XMM15,%XMM10;(2) 
0x1ef1;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTSS2SD	(%RCX,%R10,4),%XMM6,%XMM6;(2) 
0x1ef7;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTSS2SD	(%R12,%R10,4),%XMM8,%XMM14;(2) 
0x1efd;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDSD	%XMM6,%XMM2,%XMM12;(2) 
0x1f01;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTSS2SD	(%RAX,%R10,4),%XMM8,%XMM2;(2) 
0x1f07;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDSD	%XMM14,%XMM9,%XMM8;(2) 
0x1f0c;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTSS2SD	0x4(%RBX,%R10,4),%XMM0,%XMM13;(2) 
0x1f13;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDSD	%XMM2,%XMM11,%XMM15;(2) 
0x1f17;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTSS2SD	(%R13,%R10,4),%XMM0,%XMM11;(2) 
0x1f1e;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDSD	%XMM11,%XMM4,%XMM4;(2) 
0x1f23;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTSS2SD	0x4(%RCX,%R10,4),%XMM0,%XMM7;(2) 
0x1f2a;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTSS2SD	0x4(%RSI,%R10,4),%XMM0,%XMM5;(2) 
0x1f31;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDSD	%XMM13,%XMM1,%XMM6;(2) 
0x1f36;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDSD	%XMM5,%XMM10,%XMM10;(2) 
0x1f3a;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTSS2SD	0x4(%RAX,%R10,4),%XMM0,%XMM1;(2) 
0x1f41;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTSS2SD	0x4(%R13,%R10,4),%XMM0,%XMM2;(2) 
0x1f48;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDSD	%XMM7,%XMM12,%XMM12;(2) 
0x1f4c;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTSS2SD	0x4(%R12,%R10,4),%XMM0,%XMM3;(2) 
0x1f53;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDSD	%XMM3,%XMM8,%XMM14;(2) 
0x1f57;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDSD	%XMM2,%XMM4,%XMM9;(2) 
0x1f5b;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDSD	%XMM1,%XMM15,%XMM15;(2) 
0x1f5f;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VMOVAPD	%XMM0,%XMM7;(2) 
0x1f63;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTSS2SD	0x8(%RBX,%R10,4),%XMM0,%XMM8;(2) 
0x1f6a;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;LEA	0x3(%R10),%RDX;(2) 
0x1f6e;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTSS2SD	0x8(%RCX,%R10,4),%XMM7,%XMM11;(2) 
0x1f75;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTSS2SD	0x8(%RSI,%R10,4),%XMM7,%XMM4;(2) 
0x1f7c;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTSS2SD	0x8(%RAX,%R10,4),%XMM7,%XMM13;(2) 
0x1f83;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDSD	%XMM11,%XMM12,%XMM2;(2) 
0x1f88;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTSS2SD	0x8(%R13,%R10,4),%XMM7,%XMM5;(2) 
0x1f8f;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTSS2SD	0x8(%R12,%R10,4),%XMM7,%XMM12;(2) 
0x1f96;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDSD	%XMM8,%XMM6,%XMM0;(2) 
0x1f9b;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDSD	%XMM4,%XMM10,%XMM11;(2) 
0x1f9f;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDSD	%XMM13,%XMM15,%XMM8;(2) 
0x1fa4;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;ADD	$0x4,%R10;(2) 
0x1fa8;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDSD	%XMM12,%XMM14,%XMM4;(2) 
0x1fad;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDSD	%XMM5,%XMM9,%XMM1;(2) 
0x1fb1;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMP	%R14,%RDX;(2) 
0x1fb4;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JB	1e94 <main+0xc54>;(2) 
0x1fba;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x20bd(%RIP),%RSI;
0x1fc1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x1fc6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;
0x1fcb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	%XMM11,-0x130(%RBP);
0x1fd3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	%XMM8,-0xb0(%RBP);
0x1fdb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	%XMM4,-0xa0(%RBP);
0x1fe3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	%XMM1,-0x98(%RBP);
0x1feb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	%XMM2,-0xf0(%RBP);
0x1ff3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x1ff8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x1ffd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;
0x2002;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	-0xf0(%RBP),%XMM0;
0x200a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x207c(%RIP),%RSI;
0x2011;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x2016;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x201b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;
0x2020;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	-0x130(%RBP),%XMM0;
0x2028;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x206d(%RIP),%RSI;
0x202f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x2034;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x2039;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;
0x203e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	-0xb0(%RBP),%XMM0;
0x2046;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x205e(%RIP),%RSI;
0x204d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x2052;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x2057;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;
0x205c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	-0xa0(%RBP),%XMM0;
0x2064;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2050(%RIP),%RSI;
0x206b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x2070;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x2075;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EAX;
0x207a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VMOVSD	-0x98(%RBP),%XMM0;
0x2082;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2042(%RIP),%RSI;
0x2089;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x208e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;JMP	178c <main+0x54c>;
0x2093;/users/user2234/Code_Nbody3D/nbody_mpi.c:149;CALL	1220 <.plt.sec@start+0xe0>;
0x2098;/users/user2234/Code_Nbody3D/nbody_mpi.c:146;IMUL	$0x30,%R14,%RBX;
0x209c;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x20a1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;
0x20a3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x2036(%RIP),%RSI;
0x20aa;/users/user2234/Code_Nbody3D/nbody_mpi.c:150;MOV	%RBX,%RCX;
0x20ad;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RBX,%R8;
0x20b0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%RBX,%RDX;
0x20b3;/users/user2234/Code_Nbody3D/nbody_mpi.c:150;SHR	$0xa,%RCX;
0x20b7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;SHR	$0x14,%R8;
0x20bb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x20c0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R14,%RDX;
0x20c3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x20c8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;
0x20ca;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1f35(%RIP),%RSI;
0x20d1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x20d6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1f33(%RIP),%R9;
0x20dd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;
0x20df;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1f32(%RIP),%R8;
0x20e6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1f36(%RIP),%RCX;
0x20ed;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1f37(%RIP),%RDX;
0x20f4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x20f9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x1f30(%RIP),%RSI;
0x2100;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1160 <.plt.sec@start+0x20>;
0x2105;/users/user2234/Code_Nbody3D/nbody_mpi.c:154;MOV	0x3f04(%RIP),%RDI;
0x210c;/users/user2234/Code_Nbody3D/nbody_mpi.c:154;CALL	1230 <.plt.sec@start+0xf0>;
0x2111;/users/user2234/Code_Nbody3D/nbody_mpi.c:154;JMP	1576 <main+0x336>;
0x2116;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;MOV	-0xf8(%RBP),%R9;
0x211d;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;MOV	-0x108(%RBP),%RCX;
0x2124;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;MOV	$0x40,%EDX;
0x2129;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;MOV	-0x100(%RBP),%R10;
0x2130;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;MOV	-0x110(%RBP),%RSI;
0x2137;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VMOVAPS	(%R9),%ZMM2;
0x213d;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VMOVAPS	(%RCX),%ZMM11;
0x2143;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;MOV	-0xa8(%RBP),%RAX;
0x214a;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VMOVAPS	(%R10),%ZMM5;
0x2150;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VEXTRACTI64X4	$0x1,%ZMM2,%YMM0;
0x2157;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VEXTRACTI64X4	$0x1,%ZMM11,%YMM12;
0x215e;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTPS2PD	%YMM2,%ZMM4;
0x2164;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTPS2PD	%YMM11,%ZMM15;
0x216a;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VMOVAPS	(%RSI),%ZMM2;
0x2170;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VCVTPS2PD	%YMM0,%ZMM3;
0x2176;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VCVTPS2PD	%YMM12,%ZMM14;
0x217c;/users/user2234/Code_Nbody3D/nbody_mpi.c:203;VADDPD	%ZMM4,%ZMM3,%ZMM9;
0x2182;/users/user2234/Code_Nbody3D/nbody_mpi.c:205;VADDPD	%ZMM15,%ZMM14,%ZMM6;
0x2188;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VMOVAPS	(%RAX),%ZMM4;
0x218e;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VMOVAPS	(%R13),%ZMM14;
0x2195;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VMOVAPS	%ZMM5,-0xf0(%RBP);
0x219f;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VEXTRACTI64X4	$0x1,%ZMM5,%YMM7;
0x21a6;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VEXTRACTI64X4	$0x1,%ZMM2,%YMM1;
0x21ad;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTPS2PD	-0xf0(%RBP),%ZMM10;
0x21b7;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTPS2PD	%YMM2,%ZMM3;
0x21bd;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VEXTRACTI64X4	$0x1,%ZMM4,%YMM5;
0x21c4;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VEXTRACTI64X4	$0x1,%ZMM14,%YMM15;
0x21cb;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VCVTPS2PD	%YMM7,%ZMM8;
0x21d1;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VCVTPS2PD	%YMM1,%ZMM0;
0x21d7;/users/user2234/Code_Nbody3D/nbody_mpi.c:204;VADDPD	%ZMM10,%ZMM8,%ZMM13;
0x21dd;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTPS2PD	%YMM15,%ZMM2;
0x21e3;/users/user2234/Code_Nbody3D/nbody_mpi.c:206;VADDPD	%ZMM3,%ZMM0,%ZMM7;
0x21e9;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VMOVAPS	%ZMM4,-0xf0(%RBP);
0x21f3;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTPS2PD	%YMM5,%ZMM8;
0x21f9;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VCVTPS2PD	-0xf0(%RBP),%ZMM10;
0x2203;/users/user2234/Code_Nbody3D/nbody_mpi.c:207;VADDPD	%ZMM10,%ZMM8,%ZMM11;
0x2209;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VCVTPS2PD	(%R13),%ZMM12;
0x2210;/users/user2234/Code_Nbody3D/nbody_mpi.c:208;VADDPD	%ZMM2,%ZMM12,%ZMM1;
0x2216;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;CMP	%R11,%RDX;
0x2219;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JNE	199b <main+0x75b>;
0x221f;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;JMP	1ba5 <main+0x965>;
0x2224;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VPXOR	%XMM1,%XMM1,%XMM1;
0x2228;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM4;
0x222c;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM8;
0x2230;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM11;
0x2234;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM2;
0x2238;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM0;
0x223c;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;JMP	1fba <main+0xd7a>;
0x2241;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VPXOR	%XMM1,%XMM1,%XMM1;
0x2245;/users/user2234/Code_Nbody3D/nbody_mpi.c:202;XOR	%R11D,%R11D;
0x2248;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM4;
0x224c;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM8;
0x2250;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM11;
0x2254;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM2;
0x2258;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VMOVAPD	%XMM1,%XMM0;
0x225c;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;JMP	1c73 <main+0xa33>;
0x2261;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;VZEROUPPER;
0x2264;/users/user2234/Code_Nbody3D/nbody_mpi.c:201;JMP	1fba <main+0xd7a>;
0x2269;/users/user2234/Code_Nbody3D/nbody_mpi.c:230;CALL	11d0 <.plt.sec@start+0x90>;
0x226e;:0;XCHG	%AX,%AX;
