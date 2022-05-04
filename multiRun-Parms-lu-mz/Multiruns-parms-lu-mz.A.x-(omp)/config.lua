experiment_name = "Scalability analysis on class A lu-mz on cluster (OMP)"
executable  = "./bin/lu-mz.A.x"

number_processes = 1
number_processes_nodes = 1
omp_num_threads= 1

multiruns_params = {
{name="R2",envv_OMP_NUM_THREADS="2",number_processes = 1,number_processes_nodes = 1},
{name="R3",envv_OMP_NUM_THREADS="3",number_processes = 1,number_processes_nodes = 1},
{name="R4",envv_OMP_NUM_THREADS="4",number_processes = 1,number_processes_nodes = 1},
{name="R5",envv_OMP_NUM_THREADS="5",number_processes = 1,number_processes_nodes = 1},
{name="R6",envv_OMP_NUM_THREADS="6",number_processes = 1,number_processes_nodes = 1},
{name="R7",envv_OMP_NUM_THREADS="7",number_processes = 1,number_processes_nodes = 1},
{name="R8",envv_OMP_NUM_THREADS="8",number_processes = 1,number_processes_nodes = 1},
{name="R9",envv_OMP_NUM_THREADS="9",number_processes = 1,number_processes_nodes = 1},
{name="R10",envv_OMP_NUM_THREADS="10",number_processes = 1,number_processes_nodes = 1},
{name="R11",envv_OMP_NUM_THREADS="11",number_processes = 1,number_processes_nodes = 1},
{name="R12",envv_OMP_NUM_THREADS="12",number_processes = 1,number_processes_nodes = 1},
{name="R13",envv_OMP_NUM_THREADS="13",number_processes = 1,number_processes_nodes = 1},
{name="R14",envv_OMP_NUM_THREADS="14",number_processes = 1,number_processes_nodes = 1},
{name="R15",envv_OMP_NUM_THREADS="15",number_processes = 1,number_processes_nodes = 1},
{name="R16",envv_OMP_NUM_THREADS="16",number_processes = 1,number_processes_nodes = 1},
}


