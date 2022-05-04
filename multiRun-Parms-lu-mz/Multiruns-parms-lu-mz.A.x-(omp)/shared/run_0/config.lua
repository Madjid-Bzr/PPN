experiment_name = "Scalability analysis on class A lu-mz on cluster (OMP)"
executable     = "./bin/lu-mz.A.x"
run_command    = "<executable>"
batch_script    = ""
batch_command   = ""
number_processes = 1
number_nodes = 1
mpi_command    = ""
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
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "2",},},name = "R2",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "3",},},name = "R3",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "4",},},name = "R4",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "5",},},name = "R5",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "6",},},name = "R6",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "7",},},name = "R7",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "8",},},name = "R8",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "9",},},name = "R9",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "10",},},name = "R10",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "11",},},name = "R11",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "12",},},name = "R12",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "13",},},name = "R13",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "14",},},name = "R14",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "15",},},name = "R15",},
  {number_processes = 1,environment_variables = {{name = "OMP_NUM_THREADS", value = "16",},},name = "R16",},
}
scalability_reference = "main"
base_run_name = ""
environment_variables = {}
script_variables = {
}
qplot_script = nil
thread_filter_threshold = "0%"
object_coverage_threshold = 0.01
