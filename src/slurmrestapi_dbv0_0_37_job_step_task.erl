-module(slurmrestapi_dbv0_0_37_job_step_task).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step_task/0]).

-type slurmrestapi_dbv0_0_37_job_step_task() ::
    #{ 'distribution' => binary()
     }.

encode(#{ 'distribution' := Distribution
        }) ->
    #{ 'distribution' => Distribution
     }.
