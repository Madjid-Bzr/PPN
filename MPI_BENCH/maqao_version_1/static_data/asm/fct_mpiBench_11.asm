address;source_location;insn;indent
0x307e;:0;ENDBR64;
0x3082;:0;PUSH	%RBP;
0x3083;:0;MOV	%RSP,%RBP;
0x3086;:0;MOV	%EDI,-0x14(%RBP);
0x3089;:0;MOVQ	$0,-0x8(%RBP);
0x3091;:0;JMP	30ce <init_sbuffer+0x50>;
0x3093;:0;MOV	-0x8(%RBP),%RAX;(4) 
0x3097;:0;ADD	$0x1,%RAX;(4) 
0x309b;:0;MOV	%EAX,%ECX;(4) 
0x309d;:0;MOV	-0x14(%RBP),%EAX;(4) 
0x30a0;:0;ADD	$0x1,%EAX;(4) 
0x30a3;:0;CLTQ;(4) 
0x30a5;:0;MOV	%EAX,%EDX;(4) 
0x30a7;:0;MOV	%ECX,%EAX;(4) 
0x30a9;:0;IMUL	%EDX,%EAX;(4) 
0x30ac;:0;MOV	-0x8(%RBP),%RDX;(4) 
0x30b0;:0;ADD	%EDX,%EAX;(4) 
0x30b2;:0;MOV	%AL,-0x9(%RBP);(4) 
0x30b5;:0;MOV	0x7294(%RIP),%RDX;(4) 
0x30bc;:0;MOV	-0x8(%RBP),%RAX;(4) 
0x30c0;:0;ADD	%RAX,%RDX;(4) 
0x30c3;:0;MOVZX	-0x9(%RBP),%EAX;(4) 
0x30c7;:0;MOV	%AL,(%RDX);(4) 
0x30c9;:0;ADDQ	$0x1,-0x8(%RBP);(4) 
0x30ce;:0;MOV	0x7223(%RIP),%RAX;(4) 
0x30d5;:0;CMP	%RAX,-0x8(%RBP);(4) 
0x30d9;:0;JB	3093 <init_sbuffer+0x15>;(4) 
0x30db;:0;NOP;
0x30dc;:0;NOP;
0x30dd;:0;POP	%RBP;
0x30de;:0;RET;
