address;source_location;insn;indent
0x27070;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:74;MOV	0x8(%RSP),%RDX;
0x27075;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:94;MFENCE;
0x27078;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:95;MOVSXD	(%R8),%RSI;
0x2707b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:95;CMP	(%R9),%ESI;
0x2707e;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:95;JL	27088 <sync_right_+0x18>;
0x27080;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:108;RET;
0x27081;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:108;NOPL	(%RAX);
0x27088;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:96;MOVSXD	%ESI,%RCX;
0x2708b;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:96;NOPL	(%RAX,%RAX,1);
0x27090;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:96;MOV	(%RDX,%RCX,4),%EAX;(166) 
0x27093;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:98;CMP	$0x1,%EAX;(166) 
0x27096;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:98;JE	27090 <sync_right_+0x20>;(166) 
0x27098;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:102;MOVL	$0x1,(%RDX,%RSI,4);
0x2709f;/users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/syncs.f90:108;RET;