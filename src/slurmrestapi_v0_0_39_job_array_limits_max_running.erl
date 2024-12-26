-module(slurmrestapi_v0_0_39_job_array_limits_max_running).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_array_limits_max_running/0]).

-type slurmrestapi_v0_0_39_job_array_limits_max_running() ::
    #{ 'tasks' => integer()
     }.

encode(#{ 'tasks' := Tasks
        }) ->
    #{ 'tasks' => Tasks
     }.
