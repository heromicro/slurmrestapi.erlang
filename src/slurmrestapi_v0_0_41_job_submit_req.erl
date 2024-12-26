-module(slurmrestapi_v0_0_41_job_submit_req).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_job_submit_req/0]).

-type slurmrestapi_v0_0_41_job_submit_req() ::
    #{ 'script' => binary(),
       'jobs' => list(),
       'job' => slurmrestapi_v0_0_41_job_desc_msg:slurmrestapi_v0_0_41_job_desc_msg()
     }.

encode(#{ 'script' := Script,
          'jobs' := Jobs,
          'job' := Job
        }) ->
    #{ 'script' => Script,
       'jobs' => Jobs,
       'job' => Job
     }.
