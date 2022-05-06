experiment_name = nil
executable     = "./mpiBench"
run_command    = "<executable>"
batch_script    = ""
batch_command   = ""
number_processes = 1
number_nodes = 1
mpi_command    = "mpirun -np 4"
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
-- frequencies    = {3400000, 400000, }
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
}
scalability_reference = "main"
base_run_name = ""
environment_variables = {}
script_variables = {
}
qplot_script = nil
thread_filter_threshold = "0%"
object_coverage_threshold = 0.01
