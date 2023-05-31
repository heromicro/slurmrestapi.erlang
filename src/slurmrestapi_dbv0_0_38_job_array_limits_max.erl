-module(slurmrestapi_dbv0_0_38_job_array_limits_max).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_array_limits_max/0]).

-type slurmrestapi_dbv0_0_38_job_array_limits_max() ::
    #{ 'running' => slurmrestapi_dbv0_0_38_job_array_limits_max_running:slurmrestapi_dbv0_0_38_job_array_limits_max_running()
     }.

encode(#{ 'running' := Running
        }) ->
    #{ 'running' => Running
     }.
