_group = {
  {
    group_size = 10,
    pattern = "LSLSLSLSLS",
    opcodes = "VFNMADD213SD,VMOVSD,VFNMADD213SD,VMOVSD,VFNMADD213SD,VMOVSD,VFNMADD213SD,VMOVSD,VFNMADD213SD,VMOVSD,",
    offsets = "-40,-40,-32,-32,-24,-24,-16,-16,-8,-8,",
    addresses = "0x25cd0,0x25cd7,0x25d18,0x25d1f,0x25d60,0x25d67,0x25da5,0x25dac,0x25de5,0x25dec,",
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
    group_size = 24,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-200,-120,-80,-40,-152,-192,-112,-72,-32,-144,-184,-104,-64,-24,-136,-176,-96,-56,-16,-128,-168,-88,-48,-8,",
    addresses = "0x25c95,0x25ca1,0x25ca6,0x25cab,0x25cb6,0x25ce1,0x25ce9,0x25cee,0x25cf3,0x25cfe,0x25d29,0x25d31,0x25d36,0x25d4d,0x25d58,0x25d71,0x25d79,0x25d7e,0x25d83,0x25d8e,0x25db6,0x25dbe,0x25dc3,0x25dc8,",
    stride_status = "Success",
    stride = 200,
    memory_status = "Success",
    accessed_memory = 192,
    accessed_memory_nooverlap = 192,
    accessed_memory_overlap = 0,
    span = 200,
    head = 192,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMULSD,",
    offsets = "8,",
    addresses = "0x25c89,",
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
  {
    group_size = 24,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VFMADD231SD,VFMADD231SD,VFMADD231SD,VFMADD231SD,VMULSD,VFMADD231SD,VFMADD231SD,VFMADD231SD,VFMADD231SD,VMULSD,VFMADD231SD,VFMADD231SD,VFMADD231SD,VFMADD231SD,VMULSD,VFMADD231SD,VFMADD231SD,VFMADD231SD,VFMADD231SD,VMULSD,VFMADD231SD,VFMADD231SD,VFMADD231SD,VFMADD231SD,",
    offsets = "-40,-24,-16,-8,-32,-40,-24,-16,-8,-32,-40,-24,-16,-8,-32,-40,-24,-16,-8,-32,-40,-24,-16,-8,",
    addresses = "0x25cb0,0x25cbe,0x25cc4,0x25cca,0x25cdc,0x25cf8,0x25d06,0x25d0c,0x25d12,0x25d24,0x25d3b,0x25d41,0x25d47,0x25d52,0x25d6c,0x25d88,0x25d93,0x25d99,0x25d9f,0x25db1,0x25dcd,0x25dd3,0x25dd9,0x25ddf,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 192,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 152,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "40,",
    addresses = "0x25c80,",
    stride_status = "Success",
    stride = 200,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}
