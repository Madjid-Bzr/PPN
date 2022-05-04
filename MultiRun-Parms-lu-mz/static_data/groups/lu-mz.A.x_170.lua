_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VDIVSD,",
    offsets = "0,",
    addresses = "0x1dccc,",
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
    addresses = "0x1dcdf,",
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
    addresses = "0x1dd1e,0x1dd5e,0x1dd96,",
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
    addresses = "0x1dce4,0x1dcf0,0x1dcf8,0x1dd19,0x1dd23,0x1dd2c,0x1dd31,0x1dd52,0x1dd64,0x1dd6d,0x1dd72,0x1dd91,0x1dd9b,0x1dda5,0x1ddaa,",
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
    addresses = "0x1dd49,0x1dd8b,0x1ddc3,",
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
    addresses = "0x1dd14,",
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
