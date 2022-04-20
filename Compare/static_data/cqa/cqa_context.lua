_cqa_uarch_const = {
  ["nb simple decoders"] = 3,
  ["FP DIV/SQRT unit native width"] = 16,
  ["vector-unaligned optimal pattern"] = "2x128",
  ["nb complex decoders"] = 1,
  ["NOP 0f 1f decode"] = "slow",
  ["uop cache capacity"] = 1000,
  ["ports"] = {
    ["FP ADD"] = {
      [1] = 1,
    },
    ["load"] = {
      [1] = 2,
      [2] = 3,
    },
    ["store address"] = {
      [1] = 2,
      [2] = 3,
    },
    ["misc"] = {
      [1] = 0,
      [2] = 1,
      [3] = 5,
    },
    ["store data"] = {
      [1] = 4,
    },
    ["DIV/SQRT"] = {
      [1] = 0,
    },
    ["FP MUL"] = {
      [1] = 0,
    },
  },
  ["IQ throughput"] = 4,
  ["vector size in bytes"] = 32,
  ["store unit native width"] = 16,
  ["Max Loop Buffer bytes"] = 256,
  ["nb FP MUL units"] = 1,
  ["load unit native width"] = 16,
  ["predec insns per cycle"] = 6,
  ["UQ throughput"] = 4,
  ["INT vector size in bytes"] = 16,
  ["bytes fetched per cycle"] = 16,
  ["retire throughput"] = 4,
  ["nb execution ports"] = 6,
  ["Max Loop Buffer uops"] = 28,
}
