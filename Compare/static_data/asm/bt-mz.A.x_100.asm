address;source_location;insn;indent
0x1761c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;MOV	(%RSP),%RCX;
0x17620;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;LEA	0xc8(%RBX),%R13;
0x17627;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;MOV	%RBX,%RDI;
0x1762a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;MOV	0x20(%RBP),%R12;
0x1762e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;LEA	0x258(%RBX),%R15;
0x17635;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;LEA	(%R14,%RCX,1),%RSI;
0x17639;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;LEA	(%R12,%R14,1),%RDX;
0x1763d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;ADD	%R12,%RSI;
0x17640;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;CALL	19680 <matvec_sub_>;
0x17645;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:351;LEA	-0xc8(%RBX),%RSI;
0x1764c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:351;MOV	%R13,%RDX;
0x1764f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:351;MOV	%RBX,%RDI;
0x17652;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:351;CALL	197e0 <matmul_sub_>;
0x17657;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;MOV	0x20(%RBP),%RDX;
0x1765b;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;LEA	0x190(%RBX),%R12;
0x17662;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;MOV	%R13,%RDI;
0x17665;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;LEA	0x320(%RBX),%R13;
0x1766c;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;MOV	%R12,%RSI;
0x1766f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;ADD	%R14,%RDX;
0x17672;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;CALL	19f90 <binvcrhs_>;
0x17677;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;ADD	0x4a8(%RSP),%R14;
0x1767f;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;MOV	%R15,%RDI;
0x17682;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;MOV	(%RSP),%RAX;
0x17686;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;MOV	0x20(%RBP),%R9;
0x1768a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;LEA	(%R14,%RAX,1),%RSI;
0x1768e;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;LEA	(%R9,%R14,1),%RDX;
0x17692;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;ADD	%R9,%RSI;
0x17695;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:344;CALL	19680 <matvec_sub_>;
0x1769a;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:351;MOV	%R13,%RDX;
0x1769d;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:351;MOV	%R12,%RSI;
0x176a0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:351;MOV	%R15,%RDI;
0x176a3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:351;CALL	197e0 <matmul_sub_>;
0x176a8;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;MOV	0x20(%RBP),%RDX;
0x176ac;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;LEA	0x3e8(%RBX),%RSI;
0x176b3;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;MOV	%R13,%RDI;
0x176b6;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;ADD	$0x4b0,%RBX;
0x176bd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;ADD	%R14,%RDX;
0x176c0;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;CALL	19f90 <binvcrhs_>;
0x176c5;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:359;ADD	0x4a8(%RSP),%R14;
0x176cd;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:336;CMP	0x8(%RSP),%RBX;
0x176d2;/users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:336;JNE	1761c <y_solve_._omp_fn.0+0x1ffc>;
