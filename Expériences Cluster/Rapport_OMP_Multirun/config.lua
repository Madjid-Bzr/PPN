experiment_name = "Analyse de code Nbody3D OMP  en mode scalabilité sur le cluster FOB1"
executable = "./nbody_omp"
number_processes = 1
number_processes_nodes = 1
envv_OMP_NUM_THREADS= 1

multiruns_params = {
{name="R2", envv_OMP_NUM_THREADS= 2, number_processes=1},
{name="R3", envv_OMP_NUM_THREADS= 3, number_processes=1},
{name="R4", envv_OMP_NUM_THREADS= 4, number_processes=1},
{name="R8", envv_OMP_NUM_THREADS= 8, number_processes=1},
{name="R12",envv_OMP_NUM_THREADS= 12, number_processes=1},
{name="R16",envv_OMP_NUM_THREADS= 16, number_processes=1},
{name="R20",envv_OMP_NUM_THREADS= 20, number_processes=1},
{name="R32",envv_OMP_NUM_THREADS= 32, number_processes=1},
}
