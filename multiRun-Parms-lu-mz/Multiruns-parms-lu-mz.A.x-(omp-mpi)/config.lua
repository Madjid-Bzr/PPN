xperiment_name = "Scalability analysis on class A lu-mz on cluster fob1  (MPI-OMP)"
executable = "./bin/lu-mz.A.x"
number_processes = 1
number_processes_nodes = 1
mpi_command = "mpirun -n <number_processes>"
OMP_NUM_THREADS= 1
multiruns_params = {
{name="R2x1",envv_OMP_NUM_THREADS="1", number_processes=2, number_processes_per_node = 2},
{name="R2x2",envv_OMP_NUM_THREADS="2", number_processes=2, number_processes_per_node = 2},
{name="R2x3",envv_OMP_NUM_THREADS="3", number_processes=2, number_processes_per_node = 2},
{name="R2x4",envv_OMP_NUM_THREADS="4", number_processes=2, number_processes_per_node = 2},
{name="R2x5",envv_OMP_NUM_THREADS="5", number_processes=2, number_processes_per_node = 2},
{name="R2x6",envv_OMP_NUM_THREADS="6", number_processes=2, number_processes_per_node = 2},
{name="R2x7",envv_OMP_NUM_THREADS="7", number_processes=2, number_processes_per_node = 2},
{name="R2x8",envv_OMP_NUM_THREADS="8", number_processes=2, number_processes_per_node = 2},
{name="R3x1",envv_OMP_NUM_THREADS="1", number_processes=3, number_processes_per_node = 3},
{name="R3x2",envv_OMP_NUM_THREADS="2", number_processes=3, number_processes_per_node = 3},
{name="R3x3",envv_OMP_NUM_THREADS="3", number_processes=3, number_processes_per_node = 3},
{name="R3x4",envv_OMP_NUM_THREADS="4", number_processes=3, number_processes_per_node = 3},
{name="R3x5",envv_OMP_NUM_THREADS="5", number_processes=3, number_processes_per_node = 3},
{name="R4x1",envv_OMP_NUM_THREADS="1", number_processes=4, number_processes_per_node = 4},
{name="R4x2",envv_OMP_NUM_THREADS="2", number_processes=4, number_processes_per_node = 4},
{name="R4x3",envv_OMP_NUM_THREADS="3", number_processes=4, number_processes_per_node = 4},
{name="R4x4",envv_OMP_NUM_THREADS="4", number_processes=4, number_processes_per_node = 4},
{name="R5x1",envv_OMP_NUM_THREADS="1", number_processes=5, number_processes_per_node = 5},
{name="R5x2",envv_OMP_NUM_THREADS="2", number_processes=5, number_processes_per_node = 5},
{name="R5x3",envv_OMP_NUM_THREADS="3", number_processes=5, number_processes_per_node = 5},
{name="R6x1",envv_OMP_NUM_THREADS="1", number_processes=6, number_processes_per_node = 6},
{name="R6x2",envv_OMP_NUM_THREADS="2", number_processes=6, number_processes_per_node = 6},
{name="R8x1",envv_OMP_NUM_THREADS="1", number_processes=8, number_processes_per_node = 8},
{name="R8x2",envv_OMP_NUM_THREADS="2", number_processes=8, number_processes_per_node = 8},
{name="R9x1",envv_OMP_NUM_THREADS="10", number_processes=9, number_processes_per_node = 9},
{name="R10x16",envv_OMP_NUM_THREADS="16", number_processes=10, number_processes_per_node = 10},
{name="R12x1",envv_OMP_NUM_THREADS="1", number_processes=12, number_processes_per_node = 12},
{name="R16x16",envv_OMP_NUM_THREADS="16", number_processes=16, number_processes_per_node = 16},
{name="R16x1",envv_OMP_NUM_THREADS="1", number_processes=16, number_processes_per_node = 16},
}
