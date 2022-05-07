experiment_name = "lbm analyzis on FOB1"
executable     = "./lbm"
run_command    = "<executable>"
batch_script    = ""
batch_command   = ""
number_processes = 1
number_nodes = 1
mpi_command    = "mpirun -np <number_processes>"
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
-- frequencies    = {1300000, 1000000, }
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
  {number_processes = 2,environment_variables = {{name = "OMP_NUM_THREADS", value = "1",},},name = "R2",},
  {number_processes = 4,environment_variables = {{name = "OMP_NUM_THREADS", value = "1",},},name = "R4",},
  {number_processes = 8,environment_variables = {{name = "OMP_NUM_THREADS", value = "1",},},name = "R8",},
  {number_processes = 16,environment_variables = {{name = "OMP_NUM_THREADS", value = "1",},},name = "R16",},
  {number_processes = 20,environment_variables = {{name = "OMP_NUM_THREADS", value = "1",},},name = "R20",},
  {number_processes = 32,environment_variables = {{name = "OMP_NUM_THREADS", value = "1",},},name = "R32",},
}
scalability_reference = "main"
base_run_name = ""
environment_variables = {
  {name = "OMP_NUM_THREADS", value = "1"},
}
script_variables = {
}
qplot_script = nil
thread_filter_threshold = "0%"
object_coverage_threshold = 0.01
