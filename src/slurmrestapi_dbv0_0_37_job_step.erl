-module(slurmrestapi_dbv0_0_37_job_step).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step/0]).

-type slurmrestapi_dbv0_0_37_job_step() ::
    #{ 'time' => slurmrestapi_dbv0_0_37_job_step_time:slurmrestapi_dbv0_0_37_job_step_time(),
       'exit_code' => slurmrestapi_dbv0_0_37_job_exit_code:slurmrestapi_dbv0_0_37_job_exit_code(),
       'nodes' => slurmrestapi_dbv0_0_37_job_step_nodes:slurmrestapi_dbv0_0_37_job_step_nodes(),
       'tasks' => slurmrestapi_dbv0_0_37_job_step_tasks:slurmrestapi_dbv0_0_37_job_step_tasks(),
       'pid' => binary(),
       'CPU' => slurmrestapi_dbv0_0_37_job_step_cpu:slurmrestapi_dbv0_0_37_job_step_cpu(),
       'kill_request_user' => binary(),
       'state' => binary(),
       'statistics' => slurmrestapi_dbv0_0_37_job_step_statistics:slurmrestapi_dbv0_0_37_job_step_statistics(),
       'step' => slurmrestapi_dbv0_0_37_job_step_step:slurmrestapi_dbv0_0_37_job_step_step(),
       'task' => slurmrestapi_dbv0_0_37_job_step_task:slurmrestapi_dbv0_0_37_job_step_task(),
       'tres' => slurmrestapi_dbv0_0_37_job_step_tres:slurmrestapi_dbv0_0_37_job_step_tres()
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
