_report = {
  metrics = {
    experiment_type = "OpenMP; ",
    user_time = 98.34,
    iterations_count = "Not Available",
    compilation_flags = "nbody.g4: GNU 9.4.0 -march=knl -mmmx -mno-3dnow -msse -msse2 -msse3 -mssse3 -mno-sse4a -mcx16 -msahf -mmovbe -maes -mno-sha -mpclmul -mpopcnt -mabm -mno-lwp -mfma -mno-fma4 -mno-xop -mbmi -mno-sgx -mbmi2 -mno-pconfig -mno-wbnoinvd -mno-tbm -mavx -mavx2 -msse4.2 -msse4.1 -mlzcnt -mno-rtm -mno-hle -mrdrnd -mf16c -mfsgsbase -mrdseed -mprfchw -madx -mfxsr -mxsave -mxsaveopt -mavx512f -mavx512er -mavx512cd -mavx512pf -mprefetchwt1 -mno-clflushopt -mno-xsavec -mno-xsaves -mno-avx512dq -mno-avx512bw -mno-avx512vl -mno-avx512ifma -mno-avx512vbmi -mno-avx5124fmaps -mno-avx5124vnniw -mno-clwb -mno-mwaitx -mno-clzero -mno-pku -mno-rdpid -mno-gfni -mno-shstk -mno-avx512vbmi2 -mno-avx512vnni -mno-vaes -mno-vpclmulqdq -mno-avx512bitalg -mno-avx512vpopcntdq -mno-movdiri -mno-movdir64b -mno-waitpkg -mno-cldemote -mno-ptwrite -mtune=generic -g -Ofast -funroll-loops -finline-functions -fno-omit-frame-pointer -ftree-vectorize -fopt-info-all=nbody.gcc.optrpt -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection \n",
    speedup_if_perfect_openmp = "Not Available",
    __name = "run_0",
    nb_loops_80_if_L1 = "Not Available",
    loops_time = 98.5,
    speedup_if_fp_vect = 1.0015,
    speedup_if_perfect_MPI_OMP_PTHREAD_LOAD_DISTRIBUTION = 1.1251120974368,
    speedup_if_perfect_MPI_OMP_PTHREAD = 1,
    nb_loops_80_if_FP_only = 1,
    GFlops = "Not Implemented Yet",
    speedup_if_L1 = "Not Available",
    GBs = "Not Implemented Yet",
    nb_loops_80_if_fully_vect = 3,
    nb_loops_80_if_perfect_openmp = "Not Available",
    nb_loops_80_if_clean = 2,
    speedup_if_fully_vectorised = 1.0042,
    nb_loops_80_if_fp_vect = 2,
    flow_complexity = 1,
    speedup_if_clean = 1.0014,
    profiled_time = 0.73,
    array_access_efficiency = 99.936381574471,
    crest_performance = "Not Implemented Yet",
    number_processes = 1,
    speedup_if_FP_only = 1.2665,
    nb_threads = 88,
    application_time = 8.3217821121216,
    compilation_options = "OK",
    innerloops_time = 97.98,
  },
  help = {
    user_time = "Percentage of the application time spent in user code (meaning the time spent in the binary and external libraries specified in custom_categories).",
    iterations_count = "Optimistic speedup available by increasing the number of iterations in loops. Having low iteration count loops can decrease\nperformances.\nLower is better.",
    speedup_if_perfect_openmp = "Optimistic speedup if OpenMP is perfectly balanced.\nLower is better.",
    nb_loops_80_if_L1 = "Number of loops to optimize to get 80% of the speedup.\nLower is better.",
    loops_time = "Percentage of the application time spent in loops (excluding loops present in modules not analyzed by the profiler). It represents 0.72 seconds.",
    speedup_if_fp_vect = "Optimistic speedup if all floating point instructions are vectorized in all analyzed loops. Memory instructions are not considered as vectorized.\nLower is better.",
    speedup_if_perfect_MPI_OMP_PTHREAD_LOAD_DISTRIBUTION = "Optimistic speedup if OpenMP, MPI and Pthread runtimes are perfect and the load distribution if perfect.\nLower is better.\nThis metric presents an estimation of the speed-up at application level if most common parallel bottelnecks are perfect.\nspeedup = MAX (time) / AVG (time without OpenMP, MPI and Pthread)",
    speedup_if_perfect_MPI_OMP_PTHREAD = "Optimistic speedup if OpenMP, MPI and Pthread runtimes are perfect.\nLower is better.\nThis metric presents an estimation of the speed-up at application level if the MPI/OpenMP/Pthread behaviour is perfect.\nspeedup = MAX (time) / MAX (time without OpenMP, MPI and Pthread)",
    nb_loops_80_if_FP_only = "Number of loops to optimize to get 80% of the speedup.\nLower is better.",
    GFlops = "<TBD>.\n",
    speedup_if_L1 = "Optimistic speedup if all memory accesses are located in the L1 cache for all analyzed loops.\nLower is better.",
    GBs = "<TBD>.\n",
    nb_loops_80_if_fully_vect = "Number of loops to optimize to get 80% of the speedup.\nLower is better.",
    nb_loops_80_if_perfect_openmp = "Number of loops to optimize to get 80% of the speedup.\nLower is better.",
    nb_loops_80_if_clean = "Number of loops to optimize to get 80% of the speedup.\nLower is better.",
    speedup_if_fully_vectorised = "Optimistic speedup if all instructions are vectorized in all analyzed loops.\nLower is better.",
    nb_loops_80_if_fp_vect = "Number of loops to optimize to get 80% of the speedup.\nLower is better.",
    flow_complexity = "Optimistic speedup available by reducing the number of paths in loops. Having multiple paths in a loop can prevent\nthe compiler to vectorize the code, decreasing performances. The metric provides an estimation of a global speedup that\ncan be achieved if all loops with more than two paths were fully vectorized.\nLower is better.",
    speedup_if_clean = "Optimistic speedup if all instructions performing addresses computations and scalar integer computations have been deleted. \nLower is better.",
    profiled_time = "Application profiling duration in seconds",
    array_access_efficiency = "Processor friendly data layout. Accessing contiguous data is faster.\nHigher is better.",
    crest_performance = "<TBD>.\n",
    speedup_if_FP_only = "Optimistic speedup if only arithmetic floating point instructions are kept.\nLower is better.",
    application_time = "Time spent by the application in seconds",
    compilation_options = "Basic options to use with the compiler to have good performance.",
    innerloops_time = "Percentage of the application time spent in innermost loops (excluding loops present in modules not analyzed by the profiler). It represents 0.72 seconds.",
  },
  colors = {
    iterations_count = "00FF3333",
    speedup_if_perfect_openmp = "00FF3333",
    nb_loops_80_if_L1 = "00FF3333",
    speedup_if_fp_vect = "0066cc00",
    speedup_if_perfect_MPI_OMP_PTHREAD_LOAD_DISTRIBUTION = "00FFCC99",
    speedup_if_perfect_MPI_OMP_PTHREAD = "0066cc00",
    speedup_if_L1 = "00FF3333",
    nb_loops_80_if_perfect_openmp = "00FF3333",
    speedup_if_fully_vectorised = "0066cc00",
    flow_complexity = "0066cc00",
    speedup_if_clean = "0066cc00",
    profiled_time = "0066cc00",
    array_access_efficiency = "0066cc00",
    speedup_if_FP_only = "00FFCC99",
    compilation_options = "0066cc00",
  },
}
