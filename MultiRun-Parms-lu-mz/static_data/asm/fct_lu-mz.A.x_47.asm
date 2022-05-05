address;source_location;insn;indent
0x2ccf0;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:111;MFENCE;
0x2ccf3;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:112;MOVSXD	%FS:-0xc,%RSI;
0x2ccfc;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:112;CMP	%FS:-0x10,%ESI;
0x2cd04;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:112;JL	2cd08 <sync_right_+0x18>;
0x2cd06;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:125;RET;
0x2cd07;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:125;NOP;
0x2cd08;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;MOVSXD	%ESI,%RDX;
0x2cd0b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;LEA	0x23fee(%RIP),%RCX;
0x2cd12;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;NOPW	%CS:(%RAX,%RAX,1);
0x2cd1d;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;NOPL	(%RAX);
0x2cd20;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;MOV	(%RCX,%RDX,4),%EAX;(192) 
0x2cd23;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:115;CMP	$0x1,%EAX;(192) 
0x2cd26;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:115;JE	2cd20 <sync_right_+0x30>;(192) 
0x2cd28;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:119;MOVL	$0x1,(%RCX,%RSI,4);
0x2cd2f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:125;RET;
