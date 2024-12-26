-module(slurmrestapi_v0_0_39_job_het).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_het/0]).

-type slurmrestapi_v0_0_39_job_het() ::
    #{ 'job_id' => integer(),
       'job_offset' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'job_id' := JobId,
          'job_offset' := JobOffset
        }) ->
    #{ 'job_id' => JobId,
       'job_offset' => JobOffset
     }.
