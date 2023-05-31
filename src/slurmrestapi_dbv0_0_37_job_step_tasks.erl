-module(slurmrestapi_dbv0_0_37_job_step_tasks).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step_tasks/0]).

-type slurmrestapi_dbv0_0_37_job_step_tasks() ::
    #{ 'count' => integer()
     }.

encode(#{ 'count' := Count
        }) ->
    #{ 'count' => Count
     }.
