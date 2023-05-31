-module(slurmrestapi_dbv0_0_37_job_het).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_het/0]).

-type slurmrestapi_dbv0_0_37_job_het() ::
    #{ 'job_id' => maps:map(),
       'job_offset' => maps:map()
     }.

encode(#{ 'job_id' := JobId,
          'job_offset' := JobOffset
        }) ->
    #{ 'job_id' => JobId,
       'job_offset' => JobOffset
     }.
