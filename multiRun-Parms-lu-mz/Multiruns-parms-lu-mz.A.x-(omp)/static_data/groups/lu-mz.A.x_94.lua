_group = {
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,",
    offsets = "0,64,128,192,256,",
    addresses = "0x15670,0x1567d,0x1568b,0x15699,0x156a7,",
    stride_status = "Success",
    stride = 640,
    memory_status = "Success",
    accessed_memory = 320,
    accessed_memory_nooverlap = 320,
    accessed_memory_overlap = 0,
    span = 320,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 20,
    pattern = "LLLLSLSSSSLLLLLSSSSS",
    opcodes = "VFMADD213PD,VFMADD213PD,VFMADD213PD,VFMADD213PD,VMOVUPD,VFMADD213PD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VFMADD213PD,VFMADD213PD,VFMADD213PD,VFMADD213PD,VFMADD213PD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,",
    offsets = "-640,-576,-512,-448,-640,-384,-576,-512,-448,-384,-320,-256,-192,-128,-64,-320,-256,-192,-128,-64,",
    addresses = "0x15684,0x15692,0x156a0,0x156ae,0x156b5,0x156bc,0x156c3,0x156d1,0x156d8,0x156df,0x156f4,0x15702,0x15710,0x1571e,0x15725,0x1572c,0x15733,0x1573a,0x15741,0x15748,",
    stride_status = "Success",
    stride = 640,
    memory_status = "Success",
    accessed_memory = 1280,
    accessed_memory_nooverlap = 640,
    accessed_memory_overlap = 640,
    span = 640,
    head = 640,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,",
    offsets = "-320,-256,-192,-128,-64,",
    addresses = "0x156e6,0x156ed,0x156fb,0x15709,0x15717,",
    stride_status = "Success",
    stride = 640,
    memory_status = "Success",
    accessed_memory = 320,
    accessed_memory_nooverlap = 320,
    accessed_memory_overlap = 0,
    span = 320,
    head = 0,
    unroll_factor = 5,
  },
}