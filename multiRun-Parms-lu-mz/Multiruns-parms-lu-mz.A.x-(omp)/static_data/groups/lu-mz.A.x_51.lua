_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSXD,",
    offsets = "0,",
    addresses = "0xd6f5,",
    stride_status = "Not mono block loop",
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
    group_size = 20,
    pattern = "SSLLLLLLLLLLLLLLLLLS",
    opcodes = "MOV,MOV,MOVSXD,MOVSXD,IMUL,MOV,IMUL,VMOVSD,VMOVSD,VMOVSD,ADD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,CMP,VMOVSD,VMOVSD,VMOVSD,MOV,",
    offsets = "0,0,92,96,48,56,32,112,160,120,24,168,128,176,136,40,184,144,192,96,",
    addresses = "0xd6b4,0xd6de,0xd6eb,0xd6f0,0xd6f8,0xd6fe,0xd70a,0xd713,0xd71c,0xd728,0xd731,0xd73a,0xd743,0xd74c,0xd758,0xd764,0xd76c,0xd775,0xd77e,0xd78c,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 144,
    accessed_memory_nooverlap = 132,
    accessed_memory_overlap = 12,
    span = 200,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "SSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "8,16,24,32,40,",
    addresses = "0xd787,0xd795,0xd79f,0xd7a9,0xd7b3,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 7,
    pattern = "LLLLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "16,24,16,8,24,0,8,",
    addresses = "0xd6ac,0xd6c8,0xd6cf,0xd6d6,0xd6e7,0xd710,0xd6a8,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 56,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 24,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "SSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "8,16,24,32,40,",
    addresses = "0xd790,0xd79a,0xd7a4,0xd7ae,0xd7b8,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 5,
  },
}