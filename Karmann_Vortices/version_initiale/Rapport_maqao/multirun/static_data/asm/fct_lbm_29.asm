address;source_location;insn;indent
0x3c80;/users/user2207/lbm_init/src/lbm_phys.c:42;ENDBR64;
0x3c84;/users/user2207/lbm_init/src/lbm_phys.c:45;VMOVSD	0x8(%RDI),%XMM0;
0x3c89;/users/user2207/lbm_init/src/lbm_phys.c:45;VMULSD	0x8(%RSI),%XMM0,%XMM0;
0x3c8e;/users/user2207/lbm_init/src/lbm_phys.c:45;VMOVSD	(%RDI),%XMM1;
0x3c92;/users/user2207/lbm_init/src/lbm_phys.c:45;VFMADD231SD	(%RSI),%XMM1,%XMM0;
0x3c97;/users/user2207/lbm_init/src/lbm_phys.c:49;RET;
0x3c98;:0;NOPL	(%RAX,%RAX,1);
