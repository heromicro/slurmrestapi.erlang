-module(slurmrestapi_v0_0_40_step).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_step/0]).

-type slurmrestapi_v0_0_40_step() ::
    #{ 'time' => slurmrestapi_v0_0_40_step_time:slurmrestapi_v0_0_40_step_time(),
       'exit_code' => slurmrestapi_v0_0_40_process_exit_code_verbose:slurmrestapi_v0_0_40_process_exit_code_verbose(),
       'nodes' => slurmrestapi_v0_0_40_step_nodes:slurmrestapi_v0_0_40_step_nodes(),
       'tasks' => slurmrestapi_v0_0_40_step_tasks:slurmrestapi_v0_0_40_step_tasks(),
       'pid' => binary(),
       'CPU' => slurmrestapi_v0_0_40_step_cpu:slurmrestapi_v0_0_40_step_cpu(),
       'kill_request_user' => binary(),
       'state' => list(),
       'statistics' => slurmrestapi_v0_0_40_step_statistics:slurmrestapi_v0_0_40_step_statistics(),
       'step' => slurmrestapi_v0_0_40_step_step:slurmrestapi_v0_0_40_step_step(),
       'task' => slurmrestapi_v0_0_40_step_task:slurmrestapi_v0_0_40_step_task(),
       'tres' => slurmrestapi_v0_0_40_step_tres:slurmrestapi_v0_0_40_step_tres()
     }.

encode(#{ 'time' := Time,
          'exit_code' := ExitCode,
          'nodes' := Nodes,
          'tasks' := Tasks,
          'pid' := Pid,
          'CPU' := CPU,
          'kill_request_user' := KillRequestUser,
          'state' := State,
          'statistics' := Statistics,
          'step' := Step,
          'task' := Task,
          'tres' := Tres
        }) ->
    #{ 'time' => Time,
       'exit_code' => ExitCode,
       'nodes' => Nodes,
       'tasks' => Tasks,
       'pid' => Pid,
       'CPU' => CPU,
       'kill_request_user' => KillRequestUser,
       'state' => State,
       'statistics' => Statistics,
       'step' => Step,
       'task' => Task,
       'tres' => Tres
     }.
