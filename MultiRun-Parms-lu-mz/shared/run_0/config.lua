experiment_name = "Analyse de code lu-mz CLASS=A en mode scalabilité sur le cluster FOB1"
executable     = "./bin/lu-mz.A.x"
run_command    = "<executable>"
batch_script    = ""
batch_command   = ""
number_processes = 1
number_nodes = 1
mpi_command    = "mpirun -n <number_processes>"
filter = {
   type = "number",
   value = 10,
}
profile_start = {
   unit = "none",
   value = 0,
}
run_directory  = "."
dataset        = ""
dataset_handler= "link"
-- frequencies    = {1500000, 1000000, }
decan_multi_variant = true
decan_all_variants = true
maximal_path_number = 4
is_sudo_available = false
lprof_params = ''
lprof_post_process_params = {
}
vprof_params = ""
decan_params = ""
cqa_params = {}
keep_executable_location = false
multiruns_params = {
  {number_processes = 2,number_processes_per_node = 2,environment_variables = {{name = "OMP_NUM_THREADS", value = "4",},},name = "R2x4",},
  {number_processes = 3,number_processes_per_node = 3,environment_variables = {{name = "OMP_NUM_THREADS", value = "4",},},name = "R3x4",},
  {number_processes = 4,number_processes_per_node = 4,environment_variables = {{name = "OMP_NUM_THREADS", value = "2",},},name = "R4x2",},
  {number_processes = 4,number_processes_per_node = 4,environment_variables = {{name = "OMP_NUM_THREADS", value = "4",},},name = "R4x4",},
  {number_processes = 6,number_processes_per_node = 6,environment_variables = {{name = "OMP_NUM_THREADS", value = "2",},},name = "R6x2",},
  {number_processes = 8,number_processes_per_node = 8,environment_variables = {{name = "OMP_NUM_THREADS", value = "2",},},name = "R8x2",},
  {number_processes = 16,number_processes_per_node = 16,environment_variables = {{name = "OMP_NUM_THREADS", value = "16",},},name = "R16x16",},
  {number_processes = 10,number_processes_per_node = 16,environment_variables = {{name = "OMP_NUM_THREADS", value = "8",},},name = "R10x8",},
  {number_processes = 16,number_processes_per_node = 16,environment_variables = {{name = "OMP_NUM_THREADS", value = "1",},},name = "R16x1",},
}
scalability_reference = "main"
base_run_name = ""
environment_variables = {}
script_variables = {
}
qplot_script = nil
thread_filter_threshold = "0%"
object_coverage_threshold = 0.01
