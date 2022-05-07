address;source_location;insn;indent
0x42d0;/users/user2207/lbm_init/src/lbm_phys.c:131;ENDBR64;
0x42d4;/users/user2207/lbm_init/src/lbm_phys.c:133;LEA	-0x1(%RSI),%RSI;
0x42d8;/users/user2207/lbm_init/src/lbm_phys.c:132;LEA	-0x1(%RDI),%RDI;
0x42dc;/users/user2207/lbm_init/src/lbm_phys.c:133;VCVTUSI2SD	%RSI,%XMM1,%XMM1;
0x42e2;/users/user2207/lbm_init/src/lbm_phys.c:134;VMOVSD	0x253e(%RIP),%XMM0;
0x42ea;/users/user2207/lbm_init/src/lbm_phys.c:134;VMULSD	0x4d96(%RIP),%XMM0,%XMM0;
0x42f2;/users/user2207/lbm_init/src/lbm_phys.c:134;VMULSD	%XMM1,%XMM1,%XMM3;
0x42f6;/users/user2207/lbm_init/src/lbm_phys.c:132;VCVTUSI2SD	%RDI,%XMM2,%XMM2;
0x42fc;/users/user2207/lbm_init/src/lbm_phys.c:134;VDIVSD	%XMM3,%XMM0,%XMM0;
0x4300;/users/user2207/lbm_init/src/lbm_phys.c:134;VSUBSD	%XMM2,%XMM1,%XMM1;
0x4304;/users/user2207/lbm_init/src/lbm_phys.c:134;VMULSD	%XMM2,%XMM0,%XMM0;
0x4308;/users/user2207/lbm_init/src/lbm_phys.c:134;VMULSD	%XMM1,%XMM0,%XMM0;
0x430c;/users/user2207/lbm_init/src/lbm_phys.c:135;RET;
0x430d;:0;NOPL	(%RAX);
