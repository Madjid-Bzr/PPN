_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VDIVSD,",
    offsets = "0,",
    addresses = "0x1dcbc,",
    stride_status = "Success",
    stride = 160,
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
    pattern = "S",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x1dccf,",
    stride_status = "Success",
    stride = 32,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,0,0,",
    addresses = "0x1dd0e,0x1dd4e,0x1dd86,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 16,
    span = 8,
    head = 0,
    unroll_factor = 3,
  },
  {
    group_size = 15,
    pattern = "LLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VDIVSD,VMOVSD,VMOVSD,VMOVSD,VDIVSD,VMOVSD,VMOVSD,VMOVSD,VDIVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-144,-152,-136,-120,-104,-112,-96,-80,-64,-72,-56,-40,-24,-32,-16,",
    addresses = "0x1dcd4,0x1dce0,0x1dce8,0x1dd09,0x1dd13,0x1dd1c,0x1dd21,0x1dd42,0x1dd54,0x1dd5d,0x1dd62,0x1dd81,0x1dd8b,0x1dd95,0x1dd9a,",
    stride_status = "Success",
    stride = 160,
    memory_status = "Success",
    accessed_memory = 120,
    accessed_memory_nooverlap = 120,
    accessed_memory_overlap = 0,
    span = 144,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,0,0,",
    addresses = "0x1dd39,0x1dd7b,0x1ddb3,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 16,
    span = 8,
    head = 0,
    unroll_factor = 3,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x1dd04,",
    stride_status = "Success",
    stride = 32,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}
