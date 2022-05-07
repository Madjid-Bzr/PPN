address;source_location;insn;indent
0x3ca0;/users/user2207/lbm_init/src/lbm_phys.c:52;ENDBR64;
0x3ca4;/users/user2207/lbm_init/src/lbm_phys.c:53;TEST	%RDI,%RDI;
0x3ca7;/users/user2207/lbm_init/src/lbm_phys.c:53;JE	3cd2 <get_cell_density+0x32>;
0x3ca9;/users/user2207/lbm_init/src/lbm_phys.c:56;VMOVUPD	(%RDI),%ZMM2;
0x3caf;/users/user2207/lbm_init/src/lbm_phys.c:56;VEXTRACTF64X4	$0x1,%ZMM2,%YMM1;
0x3cb6;/users/user2207/lbm_init/src/lbm_phys.c:56;VADDPD	(%RDI),%YMM1,%YMM1;
0x3cba;/users/user2207/lbm_init/src/lbm_phys.c:56;VEXTRACTF128	$0x1,%YMM1,%XMM0;
0x3cc0;/users/user2207/lbm_init/src/lbm_phys.c:56;VADDPD	%XMM1,%XMM0,%XMM1;
0x3cc4;/users/user2207/lbm_init/src/lbm_phys.c:56;VUNPCKHPD	%XMM1,%XMM1,%XMM0;
0x3cc8;/users/user2207/lbm_init/src/lbm_phys.c:56;VADDPD	%XMM1,%XMM0,%XMM0;
0x3ccc;/users/user2207/lbm_init/src/lbm_phys.c:57;VADDSD	0x40(%RDI),%XMM0,%XMM0;
0x3cd1;/users/user2207/lbm_init/src/lbm_phys.c:61;RET;
0x3cd2;/users/user2207/lbm_init/src/lbm_phys.c:52;PUSH	%RBP;
0x3cd3;/users/user2207/lbm_init/src/lbm_phys.c:52;MOV	%RSP,%RBP;
0x3cd6;/users/user2207/lbm_init/src/lbm_phys.c:52;AND	$-0x40,%RSP;
0x3cda;/users/user2207/lbm_init/src/lbm_phys.c:52;CALL	3c50 <get_cell_density.part.0>;
0x3cdf;:0;NOP;
