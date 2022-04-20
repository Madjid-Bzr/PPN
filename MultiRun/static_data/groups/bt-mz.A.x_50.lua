_group = {
  {
    group_size = 7,
    pattern = "LLLLLLL",
    opcodes = "VSUBSD,VADDSD,VMOVSD,VMOVSD,VMOVSD,VSUBSD,VMOVSD,",
    offsets = "-16,-40,-32,-24,-16,-8,-8,",
    addresses = "0xe8cb,0xe8eb,0xe947,0xe9a5,0xea32,0xea85,0xead2,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 56,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 16,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VADDSD,",
    offsets = "0,",
    addresses = "0xe960,",
    stride_status = "Success",
    stride = 8,
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
    addresses = "0xe910,",
    stride_status = "Success",
    stride = 8,
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
    opcodes = "VMULSD,",
    offsets = "0,",
    addresses = "0xeb5d,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 10,
    pattern = "LSLSLSLSLS",
    opcodes = "VADDSD,VMOVSD,VADDSD,VMOVSD,VADDSD,VMOVSD,VADDSD,VMOVSD,VADDSD,VMOVSD,",
    offsets = "-40,-40,-32,-32,-24,-24,-16,-16,-8,-8,",
    addresses = "0xe8f8,0xe916,0xe976,0xe992,0xe9c0,0xea1f,0xea6b,0xeaaf,0xeb0c,0xebb1,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 40,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VADDSD,VMULSD,",
    offsets = "0,0,",
    addresses = "0xea8a,0xeb73,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 8,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VADDSD,",
    offsets = "0,",
    addresses = "0xeaf1,",
    stride_status = "Success",
    stride = 8,
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
    opcodes = "VADDSD,",
    offsets = "0,",
    addresses = "0xe9e9,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VSUBSD,VMULSD,",
    offsets = "0,0,",
    addresses = "0xea7f,0xeb6d,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 8,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0xe8d0,",
    stride_status = "Success",
    stride = 8,
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
    addresses = "0xeab4,",
    stride_status = "Success",
    stride = 8,
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
    addresses = "0xe8a0,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0xe920,",
    stride_status = "Success",
    stride = 8,
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
    opcodes = "VMULSD,",
    offsets = "0,",
    addresses = "0xeb4a,",
    stride_status = "Success",
    stride = 8,
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
    opcodes = "VMULSD,",
    offsets = "0,",
    addresses = "0xeb2a,",
    stride_status = "Success",
    stride = 8,
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
    offsets = "-32,-24,-16,-8,",
    addresses = "0xe91b,0xe997,0xea24,0xeaba,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 20,
    pattern = "LLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "121861,122680,122546,121506,121691,122448,121377,121559,121305,122641,122270,123256,121406,123212,123167,121105,122084,121022,120950,121148,",
    addresses = "0xe8db,0xe8f0,0xe966,0xe96e,0xe985,0xe9b8,0xe9ef,0xea09,0xea37,0xea3f,0xea5a,0xea90,0xeaa2,0xeadc,0xeae9,0xeaf7,0xeb04,0xeb42,0xeb82,0xeba4,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 160,
    accessed_memory_nooverlap = 160,
    accessed_memory_overlap = 0,
    span = 2314,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 7,
    pattern = "LLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-40,-16,-32,-24,-16,-8,-8,",
    addresses = "0xe8c1,0xe8c6,0xe92b,0xe99c,0xea29,0xea7a,0xeac4,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 56,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 16,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0xe93d,",
    stride_status = "Success",
    stride = 8,
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
    addresses = "0xeacd,",
    stride_status = "Success",
    stride = 8,
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
    addresses = "0xe9dd,",
    stride_status = "Success",
    stride = 8,
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
    addresses = "0xe8fd,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 10,
    pattern = "LLLLLLLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,CMP,",
    offsets = "504,512,520,528,536,544,552,560,496,568,",
    addresses = "0xe8b0,0xe8e3,0xe903,0xe930,0xe9d0,0xe9f7,0xeb15,0xeb30,0xeb50,0xebb6,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0xe9ca,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
}
