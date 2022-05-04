_group = {
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVSD,VSUBSD,",
    offsets = "0,80,",
    addresses = "0x1a770,0x1a778,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 88,
    head = 16,
    unroll_factor = 1,
  },
  {
    group_size = 10,
    pattern = "LLLSLSLSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,8,16,0,24,8,32,16,24,32,",
    addresses = "0x1a77d,0x1a781,0x1a78a,0x1a798,0x1a7a6,0x1a7b4,0x1a7c3,0x1a7d1,0x1a7e9,0x1a801,",
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
  {
    group_size = 10,
    pattern = "LSLLLSLSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,0,8,16,24,8,32,16,24,32,",
    addresses = "0x1a815,0x1a824,0x1a834,0x1a83a,0x1a840,0x1a84f,0x1a85f,0x1a86e,0x1a887,0x1a8a3,",
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
  {
    group_size = 10,
    pattern = "LLLLLLLLLL",
    opcodes = "VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,",
    offsets = "94056,94028,93999,93975,93951,93916,93873,93842,93817,93789,",
    addresses = "0x1a78f,0x1a7ab,0x1a7c8,0x1a7e0,0x1a7f8,0x1a81b,0x1a846,0x1a865,0x1a87e,0x1a89a,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 275,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 18,
    pattern = "LLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,",
    offsets = "-72,8,-64,16,-56,24,-48,32,-40,40,-32,48,-24,56,-16,64,-8,72,",
    addresses = "0x1a79c,0x1a7a1,0x1a7b9,0x1a7be,0x1a7d6,0x1a7db,0x1a7ee,0x1a7f3,0x1a806,0x1a810,0x1a82a,0x1a82f,0x1a855,0x1a85a,0x1a874,0x1a879,0x1a88d,0x1a892,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 144,
    accessed_memory_nooverlap = 144,
    accessed_memory_overlap = 0,
    span = 152,
    head = 144,
    unroll_factor = 1,
  },
}
