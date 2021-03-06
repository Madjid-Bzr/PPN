_group = {
  {
    group_size = 18,
    pattern = "LLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,VMOVSD,VSUBSD,",
    offsets = "-72,8,-64,16,-56,24,-48,32,-40,40,-32,48,-24,56,-16,64,-8,72,",
    addresses = "0x18f59,0x18f5e,0x18f76,0x18f7b,0x18f93,0x18f98,0x18fb0,0x18fb5,0x18fcd,0x18fd2,0x18fe5,0x18fea,0x19007,0x1900c,0x19024,0x19029,0x19041,0x19046,",
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
  {
    group_size = 20,
    pattern = "LLSLSLSLSLSSLLSLSLSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-80,-72,-80,-64,-72,-56,-64,-48,-56,-40,-48,-40,-32,-24,-32,-16,-24,-8,-16,-8,",
    addresses = "0x18f3d,0x18f42,0x18f54,0x18f63,0x18f71,0x18f80,0x18f8e,0x18f9d,0x18fab,0x18fba,0x18fc8,0x18fe0,0x18fef,0x18ff4,0x19002,0x19011,0x1901f,0x1902e,0x1903c,0x19054,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 160,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 80,
    span = 80,
    head = 80,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVSD,VSUBSD,",
    offsets = "0,80,",
    addresses = "0x18f30,0x18f38,",
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
    pattern = "LLLLLLLLLL",
    opcodes = "VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,VFMADD132SD,",
    offsets = "100292,100263,100234,100205,100176,100152,100118,100089,100060,100036,",
    addresses = "0x18f4b,0x18f68,0x18f85,0x18fa2,0x18fbf,0x18fd7,0x18ff9,0x19016,0x19033,0x1904b,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 264,
    head = 0,
    unroll_factor = 1,
  },
}
