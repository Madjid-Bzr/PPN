_group = {
  {
    group_size = 8,
    pattern = "SSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-32,-24,-16,-8,8,16,24,32,",
    addresses = "0x1eb9f,0x1ebab,0x1ebb2,0x1ebc3,0x1ec63,0x1ec6f,0x1ec76,0x1ec87,",
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
    group_size = 13,
    pattern = "LLLLLLLLLLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-64,-48,-96,-88,-80,-16,0,-64,-24,-8,-56,-48,-40,",
    addresses = "0x1eb26,0x1eb2b,0x1eb30,0x1eb3d,0x1eb5c,0x1ebd6,0x1ebdd,0x1ebe3,0x1ebea,0x1ebef,0x1ebf4,0x1ec01,0x1ec20,",
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
    addresses = "0x1ebc8,0x1ebce,",
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
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVSD,VMOVSD,",
    offsets = "-8,0,",
    addresses = "0x1eaf0,0x1eafc,",
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
    group_size = 3,
    pattern = "LLL",
    opcodes = "VMULSD,VMOVSD,VMULSD,",
    offsets = "24,40,-24,",
    addresses = "0x1eb06,0x1eb10,0x1eb1b,",
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
}
