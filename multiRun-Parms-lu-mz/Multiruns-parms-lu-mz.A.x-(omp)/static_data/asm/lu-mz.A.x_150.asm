address;source_location;insn;indent
0x1ea60;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;CMP	$0x2,%R9D;
0x1ea64;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;JLE	1eabe <l2norm_._omp_fn.0+0x17e>;
0x1ea66;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;LEA	(%RBP,%RDX,1),%RAX;
0x1ea6b;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;NOPL	(%RAX,%RAX,1);
0x1ea70;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	(%RAX),%XMM0;  (151) 
0x1ea74;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADD	$0x28,%RAX;  (151) 
0x1ea78;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;  (151) 
0x1ea7c;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM5;  (151) 
0x1ea80;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	-0x20(%RAX),%XMM0;  (151) 
0x1ea85;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;  (151) 
0x1ea89;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM2;  (151) 
0x1ea8d;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	-0x18(%RAX),%XMM0;  (151) 
0x1ea92;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;  (151) 
0x1ea96;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM3;  (151) 
0x1ea9a;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	-0x10(%RAX),%XMM0;  (151) 
0x1ea9f;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;  (151) 
0x1eaa3;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM4;  (151) 
0x1eaa7;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MOVSD	-0x8(%RAX),%XMM0;  (151) 
0x1eaac;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;CMP	%RDX,%RAX;  (151) 
0x1eaaf;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;MULSD	%XMM0,%XMM0;  (151) 
0x1eab3;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:40;ADDSD	%XMM0,%XMM1;  (151) 
0x1eab7;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:38;JNE	1ea70 <l2norm_._omp_fn.0+0x130>;  (151) 
0x1eab9;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;MOV	$0x1,%EAX;
0x1eabe;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;ADD	$0x1,%ECX;
0x1eac1;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;ADD	%R11,%RDX;
0x1eac4;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;CMP	%ECX,%EBX;
0x1eac6;/home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:39;JNE	1ea60 <l2norm_._omp_fn.0+0x120>;
