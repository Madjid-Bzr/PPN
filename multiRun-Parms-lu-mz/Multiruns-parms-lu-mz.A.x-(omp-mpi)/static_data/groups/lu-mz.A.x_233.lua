_group = {
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VMOVSD,",
    offsets = "0,32,",
    addresses = "0x339ab,0x339d0,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVUPD,",
    offsets = "-40,",
    addresses = "0x3394c,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VMOVSD,",
    offsets = "0,32,",
    addresses = "0x3393c,0x33957,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 6,
    pattern = "SSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-8,32,72,112,152,192,",
    addresses = "0x338fe,0x33923,0x33947,0x3396b,0x3398f,0x339b6,",
    stride_status = "Success",
    stride = 320,
    memory_status = "Success",
    accessed_memory = 48,
    accessed_memory_nooverlap = 48,
    accessed_memory_overlap = 0,
    span = 208,
    head = 0,
    unroll_factor = 6,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVUPD,",
    offsets = "-40,",
    addresses = "0x33907,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VMOVSD,",
    offsets = "0,32,",
    addresses = "0x33960,0x3397b,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VMOVSD,",
    offsets = "0,32,",
    addresses = "0x338da,0x338ed,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVUPD,",
    offsets = "-40,",
    addresses = "0x33997,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVUPD,",
    offsets = "-40,",
    addresses = "0x33928,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVUPD,",
    offsets = "-40,",
    addresses = "0x339e2,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VMOVSD,",
    offsets = "0,32,",
    addresses = "0x33984,0x339a2,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "SS",
    opcodes = "VMOVSD,VMOVSD,",
    offsets = "-88,-48,",
    addresses = "0x339dd,0x339f2,",
    stride_status = "Success",
    stride = 320,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 48,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VMOVSD,",
    offsets = "0,32,",
    addresses = "0x339d9,0x339e9,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVUPD,",
    offsets = "-40,",
    addresses = "0x339c5,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVUPD,",
    offsets = "-40,",
    addresses = "0x338e2,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VMOVSD,",
    offsets = "0,32,",
    addresses = "0x338f6,0x33912,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVUPD,",
    offsets = "-40,",
    addresses = "0x33970,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VMOVSD,",
    offsets = "0,32,",
    addresses = "0x3391b,0x33933,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
}
