-module(slurmrestapi_dbv0_0_37_job_step_step).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step_step/0]).

-type slurmrestapi_dbv0_0_37_job_step_step() ::
    #{ 'job_id' => integer(),
       'het' => slurmrestapi_dbv0_0_37_job_step_step_het:slurmrestapi_dbv0_0_37_job_step_step_het(),
       'id' => binary(),
       'name' => binary()
     }.

encode(#{ 'job_id' := JobId,
          'het' := Het,
          'id' := Id,
          'name' := Name
        }) ->
    #{ 'job_id' => JobId,
       'het' => Het,
       'id' => Id,
       'name' => Name
     }.
