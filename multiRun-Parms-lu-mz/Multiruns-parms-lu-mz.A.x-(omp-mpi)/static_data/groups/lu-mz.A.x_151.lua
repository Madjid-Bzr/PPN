_group = {
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,",
    offsets = "8,16,24,32,40,",
    addresses = "0x224f2,0x22527,0x2253c,0x22547,0x22552,",
    stride_status = "Not Analyzed",
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
    group_size = 1,
    pattern = "L",
    opcodes = "CMP,",
    offsets = "672,",
    addresses = "0x22502,",
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
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,",
    offsets = "8,16,24,32,40,",
    addresses = "0x224ae,0x224b9,0x224ce,0x224d9,0x224e4,",
    stride_status = "Not Analyzed",
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
    group_size = 13,
    pattern = "SSSSSSSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-104,-96,-88,-80,-72,-64,-56,-48,-40,-32,-24,-16,-8,",
    addresses = "0x2247c,0x2248c,0x224a2,0x224b4,0x224c4,0x224d4,0x224df,0x224eb,0x224f8,0x22533,0x22542,0x2254d,0x2255c,",
    stride_status = "Success",
    stride = 120,
    memory_status = "Success",
    accessed_memory = 104,
    accessed_memory_nooverlap = 104,
    accessed_memory_overlap = 0,
    span = 104,
    head = 0,
    unroll_factor = 13,
  },
  {
    group_size = 7,
    pattern = "LLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-64,-56,-40,-32,-24,-16,-8,",
    addresses = "0x22487,0x2249d,0x224bf,0x224fd,0x2250a,0x22513,0x2251c,",
    stride_status = "Success",
    stride = 120,
    memory_status = "Success",
    accessed_memory = 56,
    accessed_memory_nooverlap = 56,
    accessed_memory_overlap = 0,
    span = 64,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "SS",
    opcodes = "VMOVSD,VMOVSD,",
    offsets = "0,8,",
    addresses = "0x22428,0x2245b,",
    stride_status = "Success",
    stride = 120,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 8,
    pattern = "LLLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,24,32,40,8,48,72,16,",
    addresses = "0x223fb,0x22408,0x2240d,0x2241d,0x2242c,0x2243a,0x22444,0x22460,",
    stride_status = "Success",
    stride = 120,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,",
    offsets = "8,16,24,32,40,",
    addresses = "0x22422,0x22455,0x22476,0x22481,0x22496,",
    stride_status = "Not Analyzed",
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
