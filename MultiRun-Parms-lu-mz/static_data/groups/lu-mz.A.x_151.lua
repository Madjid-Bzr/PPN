_group = {
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,VFNMADD213SD,",
    offsets = "8,16,24,32,40,",
    addresses = "0x22502,0x22537,0x2254c,0x22557,0x22562,",
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
    addresses = "0x22512,",
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
    addresses = "0x224be,0x224c9,0x224de,0x224e9,0x224f4,",
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
    addresses = "0x2248c,0x2249c,0x224b2,0x224c4,0x224d4,0x224e4,0x224ef,0x224fb,0x22508,0x22543,0x22552,0x2255d,0x2256c,",
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
    addresses = "0x22497,0x224ad,0x224cf,0x2250d,0x2251a,0x22523,0x2252c,",
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
    addresses = "0x22438,0x2246b,",
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
    addresses = "0x2240b,0x22418,0x2241d,0x2242d,0x2243c,0x2244a,0x22454,0x22470,",
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
    addresses = "0x22432,0x22465,0x22486,0x22491,0x224a6,",
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