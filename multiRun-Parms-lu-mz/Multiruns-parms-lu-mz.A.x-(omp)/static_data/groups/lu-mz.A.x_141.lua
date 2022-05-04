_group = {
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVSD,VMOVSD,",
    offsets = "-8,0,",
    addresses = "0x19274,0x19280,",
    stride_status = "Success",
    stride = 16,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 16,
    unroll_factor = 2,
  },
  {
    group_size = 8,
    pattern = "SSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-80,-72,-64,-56,-40,-32,-24,-16,",
    addresses = "0x19334,0x1933f,0x19346,0x1934d,0x19401,0x1940c,0x19413,0x1941a,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 72,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "VMULSD,VMOVSD,VMULSD,",
    offsets = "0,64,48,",
    addresses = "0x1928a,0x19293,0x1929e,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 24,
    accessed_memory_overlap = 0,
    span = 72,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 13,
    pattern = "LLLLLLLLLLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-72,-64,-40,-56,-24,-40,24,-32,8,-24,0,-16,16,",
    addresses = "0x192a7,0x192ae,0x192b5,0x192d0,0x192dd,0x19360,0x19367,0x1936e,0x19375,0x1937c,0x19383,0x1939f,0x193aa,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 104,
    accessed_memory_nooverlap = 88,
    accessed_memory_overlap = 16,
    span = 104,
    head = 88,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVSD,VMOVSD,",
    offsets = "0,-8,",
    addresses = "0x19352,0x19359,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 2,
  },
}
