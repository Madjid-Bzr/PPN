_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x259d4,",
    stride_status = "Success",
    stride = -8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "MOV,VMOVSD,MOV,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,MOV,VMOVSD,MOV,VMOVSD,MOV,VMOVSD,VMOVSD,VMOVSD,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "288,328,368,408,248,256,296,392,376,336,416,424,312,264,304,344,432,384,272,352,280,320,400,360,440,",
    addresses = "0x2583b,0x2584b,0x25852,0x25874,0x2598d,0x259a5,0x259c3,0x259f0,0x259fe,0x25a0d,0x25a1f,0x25a30,0x25a38,0x25a4f,0x25a5f,0x25a8c,0x25aa5,0x25ac3,0x25af3,0x25b05,0x25b4e,0x25b6b,0x25b87,0x25be5,0x25c08,",
    stride_status = "Success",
    stride = -200,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 200,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x25b7b,",
    stride_status = "Success",
    stride = -8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 57,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMULSD,VMOVSD,VMULSD,VMOVSD,VMULSD,VFMADD213SD,VMOVSD,VFMADD213SD,VMULSD,VMOVSD,VFMADD132SD,VMOVSD,VMULSD,VFMADD132SD,VFMADD231SD,VFMADD213SD,VMOVSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMOVSD,VMOVSD,VFMSUB213SD,VSUBSD,VMULSD,VSUBSD,VMOVSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VFMSUB213SD,VMOVSD,VFNMADD231SD,VMOVSD,VMOVSD,VSUBSD,VSUBSD,VMOVSD,VFMADD213SD,VMULSD,VMOVSD,VFMADD132SD,VMULSD,VMOVSD,VMOVSD,VFMADD213SD,VMOVSD,VFMADD213SD,VMOVSD,VFMADD213SD,VMULSD,VMULSD,VMOVSD,VFMADD132SD,",
    offsets = "4384,5016,4744,4368,4392,4736,4728,4720,4400,4704,4712,4672,4688,4696,4680,4664,4376,4408,4416,4424,5008,4432,4440,4656,4648,5048,4640,5040,5048,5040,4624,5048,4632,4608,4600,4616,5000,4448,4592,4576,4456,4584,4568,4544,4552,4560,4536,4528,4520,4992,4512,4464,4504,4496,4488,4472,4480,",
    addresses = "0x253da,0x253ea,0x2541a,0x25423,0x25446,0x2544f,0x2547a,0x25492,0x25518,0x25521,0x25532,0x25557,0x2558c,0x255bd,0x255c7,0x255fa,0x25614,0x25622,0x25645,0x25656,0x25664,0x2569e,0x256ad,0x25730,0x2576d,0x25780,0x257a3,0x257d9,0x257ee,0x2586b,0x258a1,0x258aa,0x258e2,0x25916,0x2592c,0x25937,0x25971,0x2597e,0x259b6,0x259cb,0x259df,0x25a73,0x25b45,0x25b93,0x25b9c,0x25bb5,0x25bce,0x25bf3,0x25c10,0x25c22,0x25cdf,0x25d39,0x25d69,0x25e22,0x25e2b,0x25e5b,0x25e64,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 456,
    accessed_memory_nooverlap = 432,
    accessed_memory_overlap = 24,
    span = 688,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "8,",
    addresses = "0x25691,",
    stride_status = "Success",
    stride = -8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x253b8,",
    stride_status = "Success",
    stride = -8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "40,48,56,64,",
    addresses = "0x253cd,0x25440,0x2548c,0x255e2,",
    stride_status = "Success",
    stride = -40,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "VMOVSD,MOV,MOV,VMOVSD,MOV,VMOVSD,MOV,MOV,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "248,288,328,368,408,256,336,416,304,296,376,264,344,384,424,312,392,352,432,272,280,320,440,360,400,",
    addresses = "0x25c2b,0x25c37,0x25c47,0x25c56,0x25c5d,0x25c6e,0x25c7c,0x25c87,0x25c92,0x25cac,0x25cba,0x25cef,0x25cfb,0x25d13,0x25d1b,0x25d4d,0x25d7c,0x25d89,0x25da1,0x25dc1,0x25e1a,0x25e4b,0x25e7d,0x25e85,0x25e98,",
    stride_status = "Success",
    stride = -200,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 200,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x258ed,",
    stride_status = "Success",
    stride = -8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "VMOVSD,MOV,MOV,MOV,VMOVSD,VMOVSD,MOV,MOV,MOV,VMOVSD,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "288,328,368,408,248,312,384,424,352,256,432,296,304,344,336,392,376,416,264,272,280,400,360,320,440,",
    addresses = "0x255a0,0x255a7,0x255b2,0x255d1,0x25679,0x256bc,0x256cd,0x256de,0x256f8,0x2570f,0x25725,0x25749,0x25765,0x25778,0x25791,0x257b8,0x257cd,0x257e2,0x25809,0x25825,0x258c3,0x258da,0x2590e,0x2594b,0x25957,",
    stride_status = "Success",
    stride = -200,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 200,
    unroll_factor = 1,
  },
  {
    group_size = 49,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMULSD,VMOVSD,VFMADD132SD,VMOVSD,VFMADD132SD,VMOVSD,VFMADD132SD,VMOVSD,VMULSD,VMULSD,VMOVSD,VMULSD,VXORPD,VMULSD,VMULSD,VXORPD,VFMSUB132SD,VMULSD,VFMADD132SD,VMULSD,VMULSD,VMOVSD,VFMSUB132SD,VMULSD,VMULSD,VXORPD,VFMSUB231SD,VXORPD,VMULSD,VMULSD,VFMADD132SD,VFMSUB132SD,VFMADD231SD,VMULSD,VMULSD,VFMSUB231SD,VMULSD,VXORPD,VXORPD,VFMSUB231SD,VMULSD,VMULSD,VMOVSD,VMULSD,VFMADD231SD,VFMSUB132SD,VMULSD,VMULSD,VFMSUB231SD,",
    offsets = "34650,32430,32870,32350,32792,32150,32638,31858,33915,33909,34657,33763,34479,33701,33808,34419,34381,34315,34271,34255,33395,33476,33466,33309,33065,33761,33780,33661,33673,32963,33618,33635,33574,32874,32717,32787,32582,33042,32995,33028,32173,32947,32926,32218,32872,32896,32140,31981,32081,",
    addresses = "0x25406,0x25412,0x25459,0x25462,0x254a7,0x2552a,0x25541,0x2564e,0x256c3,0x256e9,0x25717,0x2575d,0x25789,0x25799,0x257ae,0x257c5,0x25831,0x2585d,0x2587f,0x25889,0x258cb,0x258fc,0x25904,0x25941,0x25a15,0x25a57,0x25a83,0x25abb,0x25add,0x25afb,0x25b0c,0x25b1c,0x25b31,0x25b56,0x25b73,0x25bac,0x25c1a,0x25d26,0x25d55,0x25d73,0x25d91,0x25dad,0x25dc8,0x25de4,0x25dee,0x25dfe,0x25e34,0x25e53,0x25e6e,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 440,
    accessed_memory_nooverlap = 410,
    accessed_memory_overlap = 30,
    span = 2807,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "VMOVSD,MOV,VMOVSD,VMOVSD,MOV,MOV,VMOVSD,MOV,MOV,MOV,MOV,VMOVSD,MOV,MOV,MOV,VMOVSD,MOV,VMOVSD,MOV,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "248,288,296,256,328,368,344,408,336,376,416,264,304,384,424,392,312,272,352,432,280,320,360,400,440,",
    addresses = "0x253f7,0x2542c,0x2546a,0x25472,0x2549c,0x254b0,0x254bb,0x254c3,0x254ce,0x254d9,0x254e4,0x254ef,0x254f7,0x25502,0x2550d,0x2554a,0x25565,0x25575,0x25581,0x25595,0x2562b,0x25638,0x25671,0x25681,0x25689,",
    stride_status = "Success",
    stride = -200,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 200,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x25d2e,",
    stride_status = "Success",
    stride = -8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "40,56,48,64,",
    addresses = "0x25ba6,0x25bbe,0x25cc2,0x25d9b,",
    stride_status = "Success",
    stride = -40,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "40,48,56,64,",
    addresses = "0x25920,0x25965,0x25a6d,0x25a9a,",
    stride_status = "Success",
    stride = -40,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 4,
  },
}
