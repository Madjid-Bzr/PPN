address;source_location;insn;indent
0x2ccb0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;MOV	%FS:-0xc,%EAX;
0x2ccb8;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;TEST	%EAX,%EAX;
0x2ccba;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;JLE	2ccc6 <sync_left_+0x16>;
0x2ccbc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;CMP	%FS:-0x10,%EAX;
0x2ccc4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;JLE	2ccd0 <sync_left_+0x20>;
0x2ccc6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:84;MFENCE;
0x2ccc9;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:88;RET;
0x2ccca;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:88;NOPW	(%RAX,%RAX,1);
0x2ccd0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:74;LEA	-0x1(%RAX),%EAX;
0x2ccd3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:75;LEA	0x24026(%RIP),%RDX;
0x2ccda;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:75;CLTQ;
0x2ccdc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:75;LEA	(%RDX,%RAX,4),%RCX;
0x2cce0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:75;MOV	(%RCX),%ESI;(191) 
0x2cce2;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:77;TEST	%ESI,%ESI;(191) 
0x2cce4;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:77;JE	2cce0 <sync_left_+0x30>;(191) 
0x2cce6;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:81;MOVL	$0,(%RCX);
0x2ccec;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:84;MFENCE;
0x2ccef;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:88;RET;
