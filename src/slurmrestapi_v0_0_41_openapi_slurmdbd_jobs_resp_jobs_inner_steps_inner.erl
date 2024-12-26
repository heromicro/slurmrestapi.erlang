-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner() ::
    #{ 'time' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time(),
       'exit_code' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code(),
       'nodes' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_nodes:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_nodes(),
       'tasks' => slurmrestapi_v0_0_40_step_tasks:slurmrestapi_v0_0_40_step_tasks(),
       'pid' => binary(),
       'CPU' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu(),
       'kill_request_user' => binary(),
       'state' => list(),
       'statistics' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_statistics:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_statistics(),
       'step' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_step:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_step(),
       'task' => slurmrestapi_v0_0_40_step_task:slurmrestapi_v0_0_40_step_task(),
       'tres' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres()
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
