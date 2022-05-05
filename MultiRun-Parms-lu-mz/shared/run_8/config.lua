experiment_name = "Analyse de code lu-mz CLASS=A en mode scalabilité sur le cluster FOB1"
executable     = "./bin/lu-mz.A.x"
run_command    = "<executable>"
batch_script    = ""
batch_command   = ""
number_processes = 10
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
--  {},
}
scalability_reference = "main"
base_run_name = "R10x8"
environment_variables = {
  {name = "OMP_NUM_THREADS", value = "8"},
}
script_variables = {
}
qplot_script = nil
thread_filter_threshold = "0%"
object_coverage_threshold = 0.01
