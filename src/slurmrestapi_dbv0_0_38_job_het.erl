-module(slurmrestapi_dbv0_0_38_job_het).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_het/0]).

-type slurmrestapi_dbv0_0_38_job_het() ::
    #{ 'job_id' => integer(),
       'job_offset' => integer()
     }.

encode(#{ 'job_id' := JobId,
          'job_offset' := JobOffset
        }) ->
    #{ 'job_id' => JobId,
       'job_offset' => JobOffset
     }.
