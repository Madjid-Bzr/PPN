_group = {
  {
    group_size = 8,
    pattern = "LLLLLLLL",
    opcodes = "VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,",
    offsets = "0,-40,8,-32,16,-24,24,-16,",
    addresses = "0x209c0,0x209cd,0x20a03,0x20a11,0x20a3f,0x20a45,0x20a9e,0x20aa9,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 72,
    head = 64,
    unroll_factor = 1,
  },
  {
    group_size = 15,
    pattern = "LLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VFNMADD213SD,VADDSD,VMOVSD,VFNMADD213SD,VADDSD,VMOVSD,VFNMADD213SD,VADDSD,VMOVSD,VFNMADD213SD,VADDSD,VMOVSD,VFNMADD213SD,VADDSD,",
    offsets = "0,-48,48,8,-40,56,16,-32,64,24,-24,72,32,-16,80,",
    addresses = "0x20998,0x2099c,0x209a2,0x209d3,0x209d8,0x209de,0x20a17,0x20a1c,0x20a22,0x20a61,0x20a66,0x20a6c,0x20a8b,0x20a98,0x20aa4,",
    stride_status = "Success",
    stride = 48,
    memory_status = "Success",
    accessed_memory = 120,
    accessed_memory_nooverlap = 120,
    accessed_memory_overlap = 0,
    span = 136,
    head = 120,
    unroll_factor = 1,
  },
  {
    group_size = 14,
    pattern = "LLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMOVSD,VMULSD,VMULSD,",
    offsets = "114920,113916,114864,113856,113859,114789,113789,113791,113729,114693,113711,114637,113653,113656,",
    addresses = "0x20980,0x2098c,0x209b0,0x209b8,0x209c5,0x209f3,0x209fb,0x20a09,0x20a37,0x20a4b,0x20a59,0x20a7b,0x20a83,0x20a90,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 112,
    accessed_memory_nooverlap = 96,
    accessed_memory_overlap = 16,
    span = 1275,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 10,
    pattern = "LSLSLSLSLS",
    opcodes = "VFMADD213SD,VMOVSD,VFMADD213SD,VMOVSD,VFMADD213SD,VMOVSD,VFMADD213SD,VMOVSD,VFMADD213SD,VMOVSD,",
    offsets = "0,0,8,8,16,16,24,24,32,32,",
    addresses = "0x209a7,0x209ac,0x209e3,0x209ee,0x20a27,0x20a32,0x20a53,0x20a76,0x20ab2,0x20abd,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 40,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
}