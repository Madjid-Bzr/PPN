_group = {
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x2ac8,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 9,
    pattern = "SSSSSSSSS",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "0,0,0,0,0,0,0,0,0,",
    addresses = "0x2ace,0x2b3d,0x2b99,0x2c07,0x2c68,0x2cd7,0x2d3f,0x2dad,0x2e23,",
    stride_status = "Success",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 36,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 32,
    span = 4,
    head = 0,
    unroll_factor = 9,
  },
  {
    group_size = 9,
    pattern = "LLLLLLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "4,4,4,4,4,4,4,4,4,",
    addresses = "0x2a80,0x2ad6,0x2b45,0x2ba1,0x2c0f,0x2c70,0x2cdf,0x2d47,0x2db5,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 36,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 32,
    span = 4,
    head = 0,
    unroll_factor = 9,
  },
  {
    group_size = 9,
    pattern = "LLLLLLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "12,12,12,12,12,12,12,12,12,",
    addresses = "0x2adb,0x2b4a,0x2ba6,0x2c14,0x2c75,0x2ce4,0x2d4c,0x2dba,0x2e2b,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 36,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 32,
    span = 4,
    head = 0,
    unroll_factor = 9,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMULSD,",
    offsets = "11064,",
    addresses = "0x2ac0,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 9,
    pattern = "LLLLLLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "12,12,12,12,12,12,12,12,12,",
    addresses = "0x2a89,0x2adf,0x2b4d,0x2ba9,0x2c18,0x2c79,0x2d33,0x2d4f,0x2dbe,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 36,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 32,
    span = 4,
    head = 0,
    unroll_factor = 9,
  },
  {
    group_size = 8,
    pattern = "SSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "8,16,24,32,40,48,56,64,",
    addresses = "0x2b37,0x2b93,0x2c00,0x2c61,0x2cd1,0x2d2d,0x2da6,0x2e1c,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 64,
    head = 0,
    unroll_factor = 8,
  },
}
