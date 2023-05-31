-module(slurmrestapi_dbv0_0_38_job_array_limits_max_running).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_array_limits_max_running/0]).

-type slurmrestapi_dbv0_0_38_job_array_limits_max_running() ::
    #{ 'tasks' => integer()
     }.

encode(#{ 'tasks' := Tasks
        }) ->
    #{ 'tasks' => Tasks
     }.
