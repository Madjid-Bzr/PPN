experiment_name = "lbm analyzis on FOB1"
executable = "./lbm"
number_processes = 1
number_processes_nodes = 1
mpi_command = "mpirun -np <number_processes>"
envv_OMP_NUM_THREADS= 1

multiruns_params = {
{name="R2", number_processes=2,envv_OMP_NUM_THREADS= 1},
{name="R4", number_processes=4,envv_OMP_NUM_THREADS= 1},
{name="R8", number_processes=8,envv_OMP_NUM_THREADS= 1},
{name="R16", number_processes=16,envv_OMP_NUM_THREADS= 1},
{name="R20", number_processes=20,envv_OMP_NUM_THREADS= 1},
{name="R32", number_processes=32,envv_OMP_NUM_THREADS= 1},
}
