_group = {
  {
    group_size = 6,
    pattern = "LLLLLL",
    opcodes = "VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-80,-16,-48,-40,-24,-32,",
    addresses = "0x1d2d5,0x1d335,0x1d33b,0x1d350,0x1d35c,0x1d367,",
    stride_status = "Success",
    stride = 96,
    memory_status = "Success",
    accessed_memory = 48,
    accessed_memory_nooverlap = 48,
    accessed_memory_overlap = 0,
    span = 72,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "CMP,",
    offsets = "388,",
    addresses = "0x1d2b3,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 8,
    pattern = "SSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-80,-72,-64,-56,-40,-32,-24,-16,",
    addresses = "0x1d2f1,0x1d30f,0x1d326,0x1d362,0x1d387,0x1d391,0x1d39f,0x1d3cd,",
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
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMOVSD,VMULSD,VMOVSD,VMULSD,",
    offsets = "32,0,24,8,",
    addresses = "0x1d2a5,0x1d2ae,0x1d2ba,0x1d2c5,",
    stride_status = "Success",
    stride = 96,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
}