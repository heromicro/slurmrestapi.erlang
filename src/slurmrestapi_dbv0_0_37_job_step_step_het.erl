-module(slurmrestapi_dbv0_0_37_job_step_step_het).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step_step_het/0]).

-type slurmrestapi_dbv0_0_37_job_step_step_het() ::
    #{ 'component' => integer()
     }.

encode(#{ 'component' := Component
        }) ->
    #{ 'component' => Component
     }.
