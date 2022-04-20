-- ================================================================================================ --
--                                         Basic parameters                                         --
-- ================================================================================================ --
-- Template of configuration file for oneview module

-- Name of the experiment specified in report main pages
experiment_name = nil

-- Name of the executable to analyze
executable     = "./bt-mz.A.x"

-- List of external libraries to analyze
external_libraries = {
-- "lib.so", "lib.so"
}


run_command    = "<executable> "




-- Number of MPI processes.

 number_processes = 4

-- Number of nodes to uses in an MPI application.
-- The variable can be referred as <number_nodes> in field 'mpi_command' and
-- in the batch script.
-- number_nodes = 1

-- Number of processes per node to uses in an MPI application.
-- The variable can be referred as <number_processes_per_node> in field 'mpi_command' and
-- in the batch script.
-- number_processes_per_node = 1

-- Part of the command used to run the binary.
-- It will be added at the beginning of the final command. It is used to specify
-- a launcher for the application, such as mpirun for MPI applications
--   example: "mpirun -n <number_processes>"
-- Use an empty string or remove the declaration if no 
-- specific command prefix is required to run the application
mpi_command    = "mpirun -n <number_processes>"

-- /!\ omp_num_threads variable is not handled anymore to set up OpenMP environment variable OMP_NUM_THREADS.
-- To setup the number of processes, you have to either:
--   * set up the environment variable before running MAQAO. In the terminal / script, export OMP_NUM_THREADS=<val>,
--   * or use the ONE-View configuration option called environment_variables to define the value.

-- Part of the command used to run the binary.
-- It will be added at the begining of the final command, before mpi_command.
-- It is used to specify how to pin the binary and is added untouched in the command.
-- pinning_command    = ""

-- ================================================================================================ --
--                            Filter used to select loops to analyze                                --
-- ================================================================================================ --
-- !! Uncomment the filter you want to use !!
-- !! If no filter is specified, the ten hottest loops are dynamically analyzed !!

-- This filter uses the first <value> loops, ordered by coverage
filter = {
   type = "number",
   value = 10,
}





dataset        = ""

-- How dataset is handled. "link" (default) to create a symbolic link
-- from the experiment directory to the specified dataset, "copy" to
-- duplicate the dataset directory into the experiment directory
dataset_handler= "link"


-- If a loop has more paths, it will not be analyzed by ONEVIEW. To analyze loops regardless of
-- the number of paths, the value must be 0. Default value is 4.
maximal_path_number = 4

-- Specify if sudo mode can be used during experiments.
-- Sudo mode is needed to analyze some hardware counters in report THREE or change the frequency
-- in reports TWO and THREE.
is_sudo_available = false

-- Specify additional options for LPROF.
-- If not empty, everything specified in this field is passed to LPROF through the command line
lprof_params = ""

-- Specify additional options for LPROF post processing phase.
-- If not empty, everything specified in this field is passed to LPROF through the lprof_opts table
lprof_post_process_params = {
}

-- Specify additional options for VPROF.
-- If not empty, everything specified in this field is passed to VPROF through the command line
vprof_params = ""

-- Specify additional options for DECAN.
-- If not empty, everything specified in this field is passed to DECAN through the command line
decan_params = ""

-- Specify additional options for CQA.
-- If not empty, everything specified in this field is passed to CQA through the CQA context
cqa_params = {}

-- If true, it specify that the executable should not be copied into the experiment directory but keep in place
-- keep_executable_location = true

-- Specify runs parameters to use when the scalability report or the compare report must be generated.
-- Each entry in the table describes values to override for a run:
--   + number_processes - its number of processes (default is 1),
--   + number_nodes - its number of nodes (default is 1),
--   + number_processes_per_node - its number of processes per node (default is 1),
--   + run_command - a command specific for the run (default is general value),
--   + run_directory - a directory where the application must be run (default is general value),
--   + mpi_command - a mpi command specific for the run (default is general value),
--   + dataset - a specific dataset (default is general value),
--   + script_variables - some user defined variables used for batch-script,
--   + environment_variables - some user defined environment variables set before running the application.
--     As for the base run, the alternative syntax envv_<ENV VAR NAME> = "<value>" can be used.
--     If an environment variable set in the base run must be unset, use the entry {name = <ENV VAR NAME>, value = nil}
--     or the shorcut field unset_envv (see below)
--   + unset_envv - Shortcut to unset some environment variables defined by base run. The value can be a string
--      with the name of a single environment variable to unset, or a table filled with several environment variables names
--   + profile_start - when the profiling should start,
--   + name - the run name (default is 'run_<index>', with <index> the index of the entry in the table.
multiruns_params = {
 {number_processes=6},{number_processes=10},
}

-- Specify which run will be used as reference when scalability reports are generated.
-- If two entries match the filter, the first one described is used as refences (main entry, then
-- the entry with the lowest index in multirun-params table). Availables values are:
--   + main (default) - Uses the run specified by main parameters (and not in multirun-params) as reference
--   + lowest-time - Uses the shortest run in time as reference
--   + highest-time - Uses the longest run in time as reference
--   + lowest-threads - Uses the run with the lowest number of threads analyzed using LPROF as reference
--   + highest-threads - Uses the run with the highest number of threads analyzed using LPROF as reference
--   + lowest-efficiency - Uses the run with the worst efficiency as reference
--   + highest-efficiency - Uses the run with the better efficiency as reference
--   + <number> - Uses the entry at index <number> in the multirun-param table as reference.
 --scalability_reference = "lowest-time"

-- When --with-scalability or --with-compare is used, specify the name of the run described
-- by experiment configuration, similar the name option in multirun_params entries
-- base_run_name = "base"

-- Specify environment variables to set before running the application.
-- It exists an alternative syntax to setup some environment variables by declaring an option as
-- envv_<ENV VAR NAME> = "<value>". For example
--envv_OMP_NUM_THREADS="4"
environment_variables = {
--  {name = <name>, value = <value>},
}

-- Specify user defined variables that are replaced in the batch_script file.
script_variables = {
--  <name> = <value>,
}

-- Specify the path of QPlot directory containing the file parse.js. Qplot is run with the command
-- $ nodejs <dir>/parse.js <oneview-report.xlsx>
qplot_script = nil

-- Specify a threshold to apply to threads to consider them as valid threads and
-- use them in reports. Value is a string composed of a number and an unit: s for seconds
-- and % for percentage of the total walltime (default unit). For example "5s" or "20%" or 10 (="10%").
thread_filter_threshold = nil

-- Specify a threshold to apply to objects coverages (loops anf functions) to include them in static analysis.
-- All objects whose coverage is lower than the given value will not be statically and dynamically analized
object_coverage_threshold = nil

