_group = {
  {
    group_size = 24,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VADDSD,VADDSD,VMULSD,VMOVSD,VMOVSD,VADDSD,VADDSD,VMULSD,VMOVSD,VMOVSD,VADDSD,VADDSD,VMULSD,VMOVSD,VMOVSD,VADDSD,VADDSD,VMOVSD,VMULSD,VADDSD,VMOVSD,VADDSD,",
    offsets = "80,-40,0,120,48,88,-32,8,128,56,96,-24,16,136,64,104,-16,24,144,112,72,32,-8,152,",
    addresses = "0x1980a,0x19814,0x1981a,0x1981f,0x19842,0x19848,0x1984e,0x19854,0x1985a,0x19880,0x19886,0x1988c,0x19892,0x19898,0x198be,0x198c4,0x198ca,0x198d0,0x198d6,0x198fc,0x19902,0x19908,0x1990e,0x19914,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 192,
    accessed_memory_nooverlap = 192,
    accessed_memory_overlap = 0,
    span = 200,
    head = 192,
    unroll_factor = 1,
  },
  {
    group_size = 10,
    pattern = "LSLSLSLSLS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-40,-40,-32,-32,-24,-24,-16,-16,-8,-8,",
    addresses = "0x1982f,0x1983d,0x1986d,0x1987b,0x198a1,0x198b9,0x198df,0x198f7,0x1992a,0x19938,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 40,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,",
    offsets = "98947,98885,98823,98761,98696,",
    addresses = "0x19834,0x19872,0x198b0,0x198ee,0x1992f,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 259,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMULSD,",
    offsets = "80,",
    addresses = "0x19800,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}
