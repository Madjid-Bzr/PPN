address;source_location;insn;indent
0x3ce0;/users/user2207/lbm_init/src/lbm_phys.c:65;ENDBR64;
0x3ce4;/users/user2207/lbm_init/src/lbm_phys.c:65;LEA	-0x8(%RSP),%RSP;
0x3ce9;/users/user2207/lbm_init/src/lbm_phys.c:66;TEST	%RDI,%RDI;
0x3cec;/users/user2207/lbm_init/src/lbm_phys.c:66;JE	3e3a <get_cell_velocity+0x15a>;
0x3cf2;/users/user2207/lbm_init/src/lbm_phys.c:67;TEST	%RSI,%RSI;
0x3cf5;/users/user2207/lbm_init/src/lbm_phys.c:67;JE	3e59 <get_cell_velocity+0x179>;
0x3cfb;/users/user2207/lbm_init/src/lbm_phys.c:67;VMOVSD	0x2725(%RIP),%XMM1;
0x3d03;/users/user2207/lbm_init/src/lbm_phys.c:67;LEA	0x48(%RSI),%RAX;
0x3d07;/users/user2207/lbm_init/src/lbm_phys.c:67;VDIVSD	%XMM0,%XMM1,%XMM0;
0x3d0b;/users/user2207/lbm_init/src/lbm_phys.c:67;CMP	%RAX,%RDI;
0x3d0e;/users/user2207/lbm_init/src/lbm_phys.c:67;JAE	3d1d <get_cell_velocity+0x3d>;
0x3d10;/users/user2207/lbm_init/src/lbm_phys.c:67;LEA	0x10(%RDI),%RAX;
0x3d14;/users/user2207/lbm_init/src/lbm_phys.c:67;CMP	%RAX,%RSI;
0x3d17;/users/user2207/lbm_init/src/lbm_phys.c:67;JB	3dab <get_cell_velocity+0xcb>;
0x3d1d;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	0x8(%RSI),%XMM9;
0x3d22;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	0x10(%RSI),%XMM7;
0x3d27;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	0x18(%RSI),%XMM6;
0x3d2c;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	0x20(%RSI),%XMM5;
0x3d31;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	0x28(%RSI),%XMM4;
0x3d36;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	0x30(%RSI),%XMM3;
0x3d3b;/users/user2207/lbm_init/src/lbm_phys.c:75;VMULPD	0x290d(%RIP),%XMM9,%XMM9;
0x3d43;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	0x38(%RSI),%XMM2;
0x3d48;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	0x40(%RSI),%XMM1;
0x3d4d;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	(%RSI),%XMM8;
0x3d51;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVDDUP	%XMM0,%XMM0;
0x3d55;/users/user2207/lbm_init/src/lbm_phys.c:75;VFMADD132PD	0x28e2(%RIP),%XMM9,%XMM8;
0x3d5e;/users/user2207/lbm_init/src/lbm_phys.c:75;VFMADD132PD	0x28f9(%RIP),%XMM8,%XMM7;
0x3d67;/users/user2207/lbm_init/src/lbm_phys.c:75;VFMADD132PD	0x2900(%RIP),%XMM7,%XMM6;
0x3d70;/users/user2207/lbm_init/src/lbm_phys.c:75;VFMADD132PD	0x2907(%RIP),%XMM6,%XMM5;
0x3d79;/users/user2207/lbm_init/src/lbm_phys.c:75;VFMADD132PD	0x290e(%RIP),%XMM5,%XMM4;
0x3d82;/users/user2207/lbm_init/src/lbm_phys.c:75;VFMADD132PD	0x2915(%RIP),%XMM4,%XMM3;
0x3d8b;/users/user2207/lbm_init/src/lbm_phys.c:75;VFMADD132PD	0x291c(%RIP),%XMM3,%XMM2;
0x3d94;/users/user2207/lbm_init/src/lbm_phys.c:75;VFMADD132PD	0x2923(%RIP),%XMM2,%XMM1;
0x3d9d;/users/user2207/lbm_init/src/lbm_phys.c:79;VMULPD	%XMM0,%XMM1,%XMM0;
0x3da1;/users/user2207/lbm_init/src/lbm_phys.c:79;VMOVUPD	%XMM0,(%RDI);
0x3da5;/users/user2207/lbm_init/src/lbm_phys.c:81;LEA	0x8(%RSP),%RSP;
0x3daa;/users/user2207/lbm_init/src/lbm_phys.c:81;RET;
0x3dab;/users/user2207/lbm_init/src/lbm_phys.c:71;MOVQ	$0,(%RDI);
0x3db2;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	0x8(%RSI),%XMM1;
0x3db7;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,(%RDI);
0x3dbb;/users/user2207/lbm_init/src/lbm_phys.c:75;VSUBSD	0x18(%RSI),%XMM1,%XMM1;
0x3dc0;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,(%RDI);
0x3dc4;/users/user2207/lbm_init/src/lbm_phys.c:75;VADDSD	0x28(%RSI),%XMM1,%XMM1;
0x3dc9;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,(%RDI);
0x3dcd;/users/user2207/lbm_init/src/lbm_phys.c:75;VSUBSD	0x30(%RSI),%XMM1,%XMM1;
0x3dd2;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,(%RDI);
0x3dd6;/users/user2207/lbm_init/src/lbm_phys.c:75;VSUBSD	0x38(%RSI),%XMM1,%XMM1;
0x3ddb;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,(%RDI);
0x3ddf;/users/user2207/lbm_init/src/lbm_phys.c:75;VADDSD	0x40(%RSI),%XMM1,%XMM1;
0x3de4;/users/user2207/lbm_init/src/lbm_phys.c:71;MOVQ	$0,0x8(%RDI);
0x3dec;/users/user2207/lbm_init/src/lbm_phys.c:79;VMULSD	%XMM0,%XMM1,%XMM1;
0x3df0;/users/user2207/lbm_init/src/lbm_phys.c:79;VMOVSD	%XMM1,(%RDI);
0x3df4;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	0x10(%RSI),%XMM1;
0x3df9;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,0x8(%RDI);
0x3dfe;/users/user2207/lbm_init/src/lbm_phys.c:75;VSUBSD	0x20(%RSI),%XMM1,%XMM1;
0x3e03;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,0x8(%RDI);
0x3e08;/users/user2207/lbm_init/src/lbm_phys.c:75;VADDSD	0x28(%RSI),%XMM1,%XMM1;
0x3e0d;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,0x8(%RDI);
0x3e12;/users/user2207/lbm_init/src/lbm_phys.c:75;VADDSD	0x30(%RSI),%XMM1,%XMM1;
0x3e17;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,0x8(%RDI);
0x3e1c;/users/user2207/lbm_init/src/lbm_phys.c:75;VSUBSD	0x38(%RSI),%XMM1,%XMM1;
0x3e21;/users/user2207/lbm_init/src/lbm_phys.c:75;VMOVSD	%XMM1,0x8(%RDI);
0x3e26;/users/user2207/lbm_init/src/lbm_phys.c:79;VSUBSD	0x40(%RSI),%XMM1,%XMM1;
0x3e2b;/users/user2207/lbm_init/src/lbm_phys.c:79;VMULSD	%XMM0,%XMM1,%XMM1;
0x3e2f;/users/user2207/lbm_init/src/lbm_phys.c:79;VMOVSD	%XMM1,0x8(%RDI);
0x3e34;/users/user2207/lbm_init/src/lbm_phys.c:81;LEA	0x8(%RSP),%RSP;
0x3e39;/users/user2207/lbm_init/src/lbm_phys.c:81;RET;
0x3e3a;/users/user2207/lbm_init/src/lbm_phys.c:66;LEA	0x26cf(%RIP),%RCX;
0x3e41;/users/user2207/lbm_init/src/lbm_phys.c:66;MOV	$0x42,%EDX;
0x3e46;/users/user2207/lbm_init/src/lbm_phys.c:66;LEA	0x2632(%RIP),%RSI;
0x3e4d;/users/user2207/lbm_init/src/lbm_phys.c:66;LEA	0x2647(%RIP),%RDI;
0x3e54;/users/user2207/lbm_init/src/lbm_phys.c:66;CALL	1240 <.plt.sec@start+0x70>;
0x3e59;/users/user2207/lbm_init/src/lbm_phys.c:67;LEA	0x26b0(%RIP),%RCX;
0x3e60;/users/user2207/lbm_init/src/lbm_phys.c:67;MOV	$0x43,%EDX;
0x3e65;/users/user2207/lbm_init/src/lbm_phys.c:67;LEA	0x2613(%RIP),%RSI;
0x3e6c;/users/user2207/lbm_init/src/lbm_phys.c:67;LEA	0x261b(%RIP),%RDI;
0x3e73;/users/user2207/lbm_init/src/lbm_phys.c:67;CALL	1240 <.plt.sec@start+0x70>;
0x3e78;:0;NOPL	(%RAX,%RAX,1);