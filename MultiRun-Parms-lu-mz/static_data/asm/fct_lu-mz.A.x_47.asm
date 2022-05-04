address;source_location;insn;indent
0x2d4b0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:111;MFENCE;
0x2d4b3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:112;MOVSXD	%FS:-0xc,%RSI;
0x2d4bc;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:112;CMP	%FS:-0x10,%ESI;
0x2d4c4;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:112;JL	2d4c8 <sync_right_+0x18>;
0x2d4c6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:125;RET;
0x2d4c7;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:125;NOP;
0x2d4c8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;MOVSXD	%ESI,%RDX;
0x2d4cb;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;LEA	0x2382e(%RIP),%RCX;
0x2d4d2;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;NOPW	%CS:(%RAX,%RAX,1);
0x2d4dd;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;NOPL	(%RAX);
0x2d4e0;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113;MOV	(%RCX,%RDX,4),%EAX;(193) 
0x2d4e3;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:115;CMP	$0x1,%EAX;(193) 
0x2d4e6;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:115;JE	2d4e0 <sync_right_+0x30>;(193) 
0x2d4e8;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:119;MOVL	$0x1,(%RCX,%RSI,4);
0x2d4ef;/users/user2210/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:125;RET;
