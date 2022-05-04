experiment_name = "Scalability analysis on class A lu-mz on cluster fob1  (MPI-OMP)"
executable = "./lu-mz.A.x"
number_processes = 1
number_processes_nodes = 1
mpi_command = "mpirun -n <number_processes>"
envv_OMP_NUM_THREADS= 1

multiruns_params = {
{name="R2x4",envv_OMP_NUM_THREADS="4", number_processes=2, number_processes_per_node = 2},
{name="R3x4",envv_OMP_NUM_THREADS="4", number_processes=3, number_processes_per_node = 3},
{name="R4x2",envv_OMP_NUM_THREADS="2", number_processes=4, number_processes_per_node = 4},
{name="R4x4",envv_OMP_NUM_THREADS="4", number_processes=4, number_processes_per_node = 4},
{name="R6x2",envv_OMP_NUM_THREADS="2", number_processes=6, number_processes_per_node = 6},
{name="R8x2",envv_OMP_NUM_THREADS="2", number_processes=8, number_processes_per_node = 8},
{name="R16x16",envv_OMP_NUM_THREADS="16", number_processes=16, number_processes_per_node = 16},
{name="R16x1",envv_OMP_NUM_THREADS="1", number_processes=16, number_processes_per_node = 16},
}
