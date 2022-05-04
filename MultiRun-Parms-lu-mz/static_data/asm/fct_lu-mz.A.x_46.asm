address;source_location;insn;indent
0x2d470;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;MOV	%FS:-0xc,%EAX;
0x2d478;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;TEST	%EAX,%EAX;
0x2d47a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;JLE	2d486 <sync_left_+0x16>;
0x2d47c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;CMP	%FS:-0x10,%EAX;
0x2d484;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:73;JLE	2d490 <sync_left_+0x20>;
0x2d486;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:84;MFENCE;
0x2d489;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:88;RET;
0x2d48a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:88;NOPW	(%RAX,%RAX,1);
0x2d490;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:74;LEA	-0x1(%RAX),%EAX;
0x2d493;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:75;LEA	0x23866(%RIP),%RDX;
0x2d49a;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:75;CLTQ;
0x2d49c;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:75;LEA	(%RDX,%RAX,4),%RCX;
0x2d4a0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:75;MOV	(%RCX),%ESI;(192) 
0x2d4a2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:77;TEST	%ESI,%ESI;(192) 
0x2d4a4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:77;JE	2d4a0 <sync_left_+0x30>;(192) 
0x2d4a6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:81;MOVL	$0,(%RCX);
0x2d4ac;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:84;MFENCE;
0x2d4af;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:88;RET;
