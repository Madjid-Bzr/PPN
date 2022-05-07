address;source_location;insn;indent
0x4310;/users/user2207/lbm_opt/src/lbm_phys.c:215;ENDBR64;
0x4314;/users/user2207/lbm_opt/src/lbm_phys.c:215;PUSH	%RBP;
0x4315;/users/user2207/lbm_opt/src/lbm_phys.c:215;MOV	%RSP,%RBP;
0x4318;/users/user2207/lbm_opt/src/lbm_phys.c:215;PUSH	%R14;
0x431a;/users/user2207/lbm_opt/src/lbm_phys.c:215;PUSH	%R13;
0x431c;/users/user2207/lbm_opt/src/lbm_phys.c:215;PUSH	%R12;
0x431e;/users/user2207/lbm_opt/src/lbm_phys.c:215;PUSH	%RBX;
0x431f;/users/user2207/lbm_opt/src/lbm_phys.c:215;MOV	0x8(%RDI),%R14;
0x4323;/users/user2207/lbm_opt/src/lbm_phys.c:215;AND	$-0x40,%RSP;
0x4327;/users/user2207/lbm_opt/src/lbm_phys.c:218;MOV	0x8(%R14),%EAX;
0x432b;/users/user2207/lbm_opt/src/lbm_phys.c:218;MOV	%EAX,%EBX;
0x432d;/users/user2207/lbm_opt/src/lbm_phys.c:218;SUB	$0x1,%EBX;
0x4330;/users/user2207/lbm_opt/src/lbm_phys.c:218;CMP	$0x1,%EBX;
0x4333;/users/user2207/lbm_opt/src/lbm_phys.c:218;JBE	46af <collision._omp_fn.0+0x39f>;
0x4339;/users/user2207/lbm_opt/src/lbm_phys.c:218;LEA	(%RDI),%R13;
0x433c;/users/user2207/lbm_opt/src/lbm_phys.c:218;CALL	1210 <.plt.sec@start+0x20>;
0x4341;/users/user2207/lbm_opt/src/lbm_phys.c:218;MOVSXD	%EAX,%R12;
0x4344;/users/user2207/lbm_opt/src/lbm_phys.c:218;CALL	12b0 <.plt.sec@start+0xc0>;
0x4349;/users/user2207/lbm_opt/src/lbm_phys.c:218;MOVSXD	%EAX,%R11;
0x434c;/users/user2207/lbm_opt/src/lbm_phys.c:218;XOR	%EDX,%EDX;
0x434e;/users/user2207/lbm_opt/src/lbm_phys.c:218;LEA	-0x1(%RBX),%RAX;
0x4352;/users/user2207/lbm_opt/src/lbm_phys.c:218;DIV	%R12;
0x4355;/users/user2207/lbm_opt/src/lbm_phys.c:218;CMP	%RDX,%R11;
0x4358;/users/user2207/lbm_opt/src/lbm_phys.c:218;JB	46bc <collision._omp_fn.0+0x3ac>;
0x435e;/users/user2207/lbm_opt/src/lbm_phys.c:218;IMUL	%RAX,%R11;
0x4362;/users/user2207/lbm_opt/src/lbm_phys.c:218;ADD	%RDX,%R11;
0x4365;/users/user2207/lbm_opt/src/lbm_phys.c:218;ADD	%R11,%RAX;
0x4368;/users/user2207/lbm_opt/src/lbm_phys.c:218;CMP	%RAX,%R11;
0x436b;/users/user2207/lbm_opt/src/lbm_phys.c:218;JAE	46af <collision._omp_fn.0+0x39f>;
0x4371;/users/user2207/lbm_opt/src/lbm_phys.c:215;MOV	(%R13),%RCX;
0x4375;/users/user2207/lbm_opt/src/lbm_phys.c:215;LEA	0x1(%R11),%R11;
0x4379;/users/user2207/lbm_opt/src/lbm_phys.c:215;MOV	0xc(%R14),%R13D;
0x437d;/users/user2207/lbm_opt/src/lbm_phys.c:215;LEA	0x1(%RAX),%R12;
0x4381;/users/user2207/lbm_opt/src/lbm_phys.c:215;MOV	%R13D,%R8D;
0x4384;/users/user2207/lbm_opt/src/lbm_phys.c:215;SUB	$0x1,%R8D;
0x4388;/users/user2207/lbm_opt/src/lbm_phys.c:215;CMP	$0x1,%R8D;
0x438c;/users/user2207/lbm_opt/src/lbm_phys.c:215;JBE	46af <collision._omp_fn.0+0x39f>;
0x4392;/users/user2207/lbm_opt/src/lbm_phys.c:215;MOV	(%R14),%R10;
0x4395;/users/user2207/lbm_opt/src/lbm_phys.c:215;LEA	(%R13),%EBX;
0x4399;/users/user2207/lbm_opt/src/lbm_phys.c:215;IMUL	%R11D,%EBX;
0x439d;/users/user2207/lbm_opt/src/lbm_phys.c:215;MOV	(%RCX),%R9;
0x43a0;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVUPD	0x11de(%RIP),%ZMM16;
0x43aa;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVUPD	0x1174(%RIP),%ZMM15;
0x43b4;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x2ca4(%RIP),%XMM5;
0x43bc;/users/user2207/lbm_opt/src/lbm_phys.c:215;MOV	0xc(%RCX),%R14D;
0x43c0;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x1230(%RIP),%XMM7;
0x43c8;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x1220(%RIP),%XMM10;
0x43d0;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x1228(%RIP),%XMM14;
0x43d8;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x1230(%RIP),%XMM8;
0x43e0;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x1220(%RIP),%XMM9;
0x43e8;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x1228(%RIP),%XMM13;
0x43f0;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x1248(%RIP),%XMM12;
0x43f8;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVSD	0x1220(%RIP),%XMM11;
0x4400;/users/user2207/lbm_opt/src/lbm_phys.c:215;VMOVQ	0x1268(%RIP),%XMM6;
0x4408;/users/user2207/lbm_opt/src/lbm_phys.c:215;NOPL	(%RAX,%RAX,1);
0x4410;/users/user2207/lbm_opt/src/lbm_phys.c:219;LEA	(%R14),%EDX;(24) 
0x4413;/users/user2207/lbm_opt/src/lbm_phys.c:219;LEA	0x9(%RBX,%RBX,8),%ECX;(24) 
0x4417;/users/user2207/lbm_opt/src/lbm_phys.c:219;IMUL	%R11D,%EDX;(24) 
0x441b;/users/user2207/lbm_opt/src/lbm_phys.c:219;SUB	%EBX,%EDX;(24) 
0x441d;/users/user2207/lbm_opt/src/lbm_phys.c:219;MOV	%EDX,%EAX;(24) 
0x441f;/users/user2207/lbm_opt/src/lbm_phys.c:219;MOV	%EDX,%ESI;(24) 
0x4421;/users/user2207/lbm_opt/src/lbm_phys.c:219;MOV	%EAX,%EDI;(24) 
0x4423;/users/user2207/lbm_opt/src/lbm_phys.c:219;SAL	$0x3,%EDI;(24) 
0x4426;/users/user2207/lbm_opt/src/lbm_phys.c:219;ADD	%ESI,%EDI;(24) 
0x4428;/users/user2207/lbm_opt/src/lbm_phys.c:219;MOV	$0x1,%ESI;(24) 
0x442d;/users/user2207/lbm_opt/src/lbm_phys.c:219;NOPL	(%RAX);(24) 
0x4430;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RCX),%EDX;  (23) 
0x4432;/users/user2207/lbm_opt/src/lbm_phys.c:219;LEA	0x1(%RSI),%RSI;  (23) 
0x4436;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R10,%RDX,8),%RAX;  (23) 
0x443a;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%RDI,%RCX,1),%EDX;  (23) 
0x443d;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852;VMOVUPD	(%RAX),%ZMM0;  (23) 
0x4443;/users/user2207/lbm_opt/include/lbm_struct.h:130;LEA	(%R9,%RDX,8),%RDX;  (23) 
0x4447;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852;VEXTRACTF64X4	$0x1,%ZMM0,%YMM1;  (23) 
0x444e;/users/user2207/lbm_opt/src/lbm_phys.c:219;CMP	%R8,%RSI;  (23) 
0x4451;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%YMM0,%YMM1,%YMM3;  (23) 
0x4455;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	(%RAX),%XMM23;  (23) 
0x445b;/users/user2207/lbm_opt/src/lbm_phys.c:117;LEA	0x9(%RCX),%ECX;  (23) 
0x445e;/usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513;VEXTRACTF128	$0x1,%YMM3,%XMM4;  (23) 
0x4464;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%XMM3,%XMM4,%XMM0;  (23) 
0x4468;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:12478;VMULPD	0x8(%RAX),%ZMM16,%ZMM3;  (23) 
0x4472;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VHADDPD	%XMM0,%XMM0,%XMM1;  (23) 
0x4476;/users/user2207/lbm_opt/src/lbm_phys.c:47;VADDSD	0x40(%RAX),%XMM1,%XMM0;  (23) 
0x447b;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852;VEXTRACTF64X4	$0x1,%ZMM3,%YMM2;  (23) 
0x4482;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%YMM3,%YMM2,%YMM4;  (23) 
0x4486;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:12478;VMULPD	0x8(%RAX),%ZMM15,%ZMM2;  (23) 
0x4490;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:12478;VDIVSD	%XMM0,%XMM7,%XMM17;  (23) 
0x4496;/usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513;VEXTRACTF128	$0x1,%YMM4,%XMM1;  (23) 
0x449c;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%XMM4,%XMM1,%XMM3;  (23) 
0x44a0;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VHADDPD	%XMM3,%XMM3,%XMM1;  (23) 
0x44a4;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852;VEXTRACTF64X4	$0x1,%ZMM2,%YMM3;  (23) 
0x44ab;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%YMM2,%YMM3,%YMM2;  (23) 
0x44af;/usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513;VEXTRACTF128	$0x1,%YMM2,%XMM3;  (23) 
0x44b5;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VADDPD	%XMM2,%XMM3,%XMM2;  (23) 
0x44b9;/users/user2207/lbm_opt/src/lbm_phys.c:100;VMULSD	%XMM13,%XMM0,%XMM26;  (23) 
0x44bf;/users/user2207/lbm_opt/src/lbm_phys.c:58;VMULSD	%XMM1,%XMM17,%XMM4;  (23) 
0x44c5;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VHADDPD	%XMM2,%XMM2,%XMM3;  (23) 
0x44c9;/users/user2207/lbm_opt/src/lbm_phys.c:59;VMULSD	%XMM3,%XMM17,%XMM21;  (23) 
0x44cf;/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:15884;VMOVAPD	%ZMM3,%ZMM19;  (23) 
0x44d5;/users/user2207/lbm_opt/src/lbm_phys.c:100;VMULSD	%XMM14,%XMM0,%XMM3;  (23) 
0x44da;/users/user2207/lbm_opt/src/lbm_phys.c:100;VMOVAPD	%ZMM4,%ZMM25;  (23) 
0x44e0;/users/user2207/lbm_opt/src/lbm_phys.c:92;VMULSD	%XMM4,%XMM4,%XMM2;  (23) 
0x44e4;/users/user2207/lbm_opt/src/lbm_phys.c:92;VFMADD132SD	%XMM8,%XMM7,%XMM25;  (23) 
0x44ea;/users/user2207/lbm_opt/src/lbm_phys.c:92;VMULSD	%XMM21,%XMM21,%XMM22;  (23) 
0x44f0;/users/user2207/lbm_opt/src/lbm_phys.c:100;VMULSD	%XMM11,%XMM0,%XMM0;  (23) 
0x44f5;/users/user2207/lbm_opt/src/lbm_phys.c:92;VADDSD	%XMM22,%XMM2,%XMM18;  (23) 
0x44fb;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMULSD	%XMM9,%XMM2,%XMM2;  (23) 
0x4500;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMULSD	%XMM9,%XMM22,%XMM27;  (23) 
0x4506;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMOVAPD	%ZMM18,%ZMM20;  (23) 
0x450c;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFNMADD132SD	%XMM10,%XMM7,%XMM20;  (23) 
0x4512;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM20,%XMM23,%XMM3;  (23) 
0x4518;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM23,%XMM3;  (23) 
0x451e;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM3,(%RDX);  (23) 
0x4522;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	0x8(%RAX),%XMM24;  (23) 
0x4529;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVAPD	%ZMM18,%ZMM3;  (23) 
0x452f;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFNMADD132SD	%XMM10,%XMM2,%XMM3;  (23) 
0x4534;/users/user2207/lbm_opt/src/lbm_phys.c:98;VADDSD	%XMM25,%XMM3,%XMM3;  (23) 
0x453a;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFNMADD231SD	%XMM10,%XMM18,%XMM27;  (23) 
0x4540;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFNMADD231SD	%XMM8,%XMM4,%XMM2;  (23) 
0x4545;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM26,%XMM24,%XMM3;  (23) 
0x454b;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM24,%XMM3;  (23) 
0x4551;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM3,0x8(%RDX);  (23) 
0x4556;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMOVAPD	%ZMM21,%ZMM3;  (23) 
0x455c;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFMADD132SD	%XMM8,%XMM7,%XMM3;  (23) 
0x4561;/users/user2207/lbm_opt/src/lbm_phys.c:98;VADDSD	%XMM3,%XMM27,%XMM3;  (23) 
0x4567;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	0x10(%RAX),%XMM28;  (23) 
0x456e;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM26,%XMM28,%XMM3;  (23) 
0x4574;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM28,%XMM3;  (23) 
0x457a;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM3,0x10(%RDX);  (23) 
0x457f;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMOVSD	%XMM2,%XMM2,%XMM3;  (23) 
0x4583;/users/user2207/lbm_opt/src/lbm_phys.c:98;VADDSD	%XMM3,%XMM20,%XMM3;  (23) 
0x4589;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	0x18(%RAX),%XMM2;  (23) 
0x458e;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM26,%XMM2,%XMM3;  (23) 
0x4594;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM2,%XMM3;  (23) 
0x4599;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM3,0x18(%RDX);  (23) 
0x459e;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMOVAPD	%ZMM21,%ZMM3;  (23) 
0x45a4;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFMADD132SD	%XMM12,%XMM7,%XMM3;  (23) 
0x45a9;/users/user2207/lbm_opt/src/lbm_phys.c:98;VADDSD	%XMM3,%XMM27,%XMM29;  (23) 
0x45af;/users/user2207/lbm_opt/src/lbm_phys.c:94;VADDSD	%XMM19,%XMM1,%XMM3;  (23) 
0x45b5;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	0x20(%RAX),%XMM2;  (23) 
0x45ba;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM29,%XMM2,%XMM26;  (23) 
0x45c0;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM2,%XMM26;  (23) 
0x45c6;/users/user2207/lbm_opt/src/lbm_phys.c:94;VMULSD	%XMM17,%XMM3,%XMM2;  (23) 
0x45cc;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM26,0x20(%RDX);  (23) 
0x45d3;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMOVSD	%XMM2,%XMM2,%XMM3;  (23) 
0x45d7;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFMADD132SD	%XMM9,%XMM8,%XMM3;  (23) 
0x45dc;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFMADD132SD	%XMM2,%XMM7,%XMM3;  (23) 
0x45e1;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	0x28(%RAX),%XMM2;  (23) 
0x45e6;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFNMADD231SD	%XMM10,%XMM18,%XMM3;  (23) 
0x45ec;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM0,%XMM2,%XMM3;  (23) 
0x45f1;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM2,%XMM3;  (23) 
0x45f6;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM3,0x28(%RDX);  (23) 
0x45fb;/users/user2207/lbm_opt/src/lbm_phys.c:94;VSUBSD	%XMM1,%XMM19,%XMM3;  (23) 
0x4601;/users/user2207/lbm_opt/src/lbm_phys.c:94;VSUBSD	%XMM19,%XMM1,%XMM1;  (23) 
0x4607;/users/user2207/lbm_opt/src/lbm_phys.c:94;VMULSD	%XMM17,%XMM3,%XMM2;  (23) 
0x460d;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMOVSD	%XMM2,%XMM2,%XMM3;  (23) 
0x4611;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFMADD132SD	%XMM9,%XMM8,%XMM3;  (23) 
0x4616;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFMADD132SD	%XMM2,%XMM7,%XMM3;  (23) 
0x461b;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	0x30(%RAX),%XMM2;  (23) 
0x4620;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFNMADD231SD	%XMM10,%XMM18,%XMM3;  (23) 
0x4626;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM0,%XMM2,%XMM3;  (23) 
0x462b;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM2,%XMM3;  (23) 
0x4630;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM3,0x30(%RDX);  (23) 
0x4635;/users/user2207/lbm_opt/src/lbm_phys.c:94;VXORPD	%XMM6,%XMM4,%XMM2;  (23) 
0x4639;/users/user2207/lbm_opt/src/lbm_phys.c:94;VSUBSD	%XMM21,%XMM2,%XMM2;  (23) 
0x463f;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMULSD	%XMM17,%XMM1,%XMM4;  (23) 
0x4645;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	0x38(%RAX),%XMM30;  (23) 
0x464c;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM2,%XMM2,%XMM3;  (23) 
0x4650;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM9,%XMM8,%XMM3;  (23) 
0x4655;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFMADD132SD	%XMM3,%XMM20,%XMM2;  (23) 
0x465b;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM0,%XMM30,%XMM2;  (23) 
0x4661;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM30,%XMM2;  (23) 
0x4667;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM2,0x38(%RDX);  (23) 
0x466c;/users/user2207/lbm_opt/src/lbm_phys.c:98;VMOVSD	%XMM4,%XMM4,%XMM2;  (23) 
0x4670;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	0x40(%RAX),%XMM3;  (23) 
0x4675;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM9,%XMM8,%XMM2;  (23) 
0x467a;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM2,%XMM7,%XMM4;  (23) 
0x467f;/users/user2207/lbm_opt/src/lbm_phys.c:98;VFNMADD132SD	%XMM10,%XMM4,%XMM18;  (23) 
0x4685;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMSUB132SD	%XMM18,%XMM3,%XMM0;  (23) 
0x468b;/users/user2207/lbm_opt/src/lbm_phys.c:117;VFMADD132SD	%XMM5,%XMM3,%XMM0;  (23) 
0x4690;/users/user2207/lbm_opt/src/lbm_phys.c:117;VMOVSD	%XMM0,0x40(%RDX);  (23) 
0x4695;/users/user2207/lbm_opt/src/lbm_phys.c:219;JNE	4430 <collision._omp_fn.0+0x120>;  (23) 
0x469b;/users/user2207/lbm_opt/src/lbm_phys.c:219;LEA	0x1(%R11),%R11;(24) 
0x469f;/users/user2207/lbm_opt/src/lbm_phys.c:219;LEA	(%RBX,%R13,1),%EBX;(24) 
0x46a3;/users/user2207/lbm_opt/src/lbm_phys.c:219;CMP	%R11,%R12;(24) 
0x46a6;/users/user2207/lbm_opt/src/lbm_phys.c:219;JA	4410 <collision._omp_fn.0+0x100>;(24) 
0x46ac;/users/user2207/lbm_opt/src/lbm_phys.c:219;VZEROUPPER;
0x46af;/users/user2207/lbm_opt/src/lbm_phys.c:215;LEA	-0x20(%RBP),%RSP;
0x46b3;/users/user2207/lbm_opt/src/lbm_phys.c:215;POP	%RBX;
0x46b4;/users/user2207/lbm_opt/src/lbm_phys.c:215;POP	%R12;
0x46b6;/users/user2207/lbm_opt/src/lbm_phys.c:215;POP	%R13;
0x46b8;/users/user2207/lbm_opt/src/lbm_phys.c:215;POP	%R14;
0x46ba;/users/user2207/lbm_opt/src/lbm_phys.c:215;POP	%RBP;
0x46bb;/users/user2207/lbm_opt/src/lbm_phys.c:215;RET;
0x46bc;/users/user2207/lbm_opt/src/lbm_phys.c:215;ADD	$0x1,%RAX;
0x46c0;/users/user2207/lbm_opt/src/lbm_phys.c:218;XOR	%EDX,%EDX;
0x46c2;/users/user2207/lbm_opt/src/lbm_phys.c:218;JMP	435e <collision._omp_fn.0+0x4e>;
0x46c7;:0;NOPW	(%RAX,%RAX,1);
