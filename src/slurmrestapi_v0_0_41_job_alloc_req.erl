-module(slurmrestapi_v0_0_41_job_alloc_req).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_job_alloc_req/0]).

-type slurmrestapi_v0_0_41_job_alloc_req() ::
    #{ 'hetjob' => list(),
       'job' => slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg()
     }.

encode(#{ 'hetjob' := Hetjob,
          'job' := Job
        }) ->
    #{ 'hetjob' => Hetjob,
       'job' => Job
     }.
