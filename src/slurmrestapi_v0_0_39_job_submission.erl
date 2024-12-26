-module(slurmrestapi_v0_0_39_job_submission).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_submission/0]).

-type slurmrestapi_v0_0_39_job_submission() ::
    #{ 'script' => binary(),
       'job' => slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg(),
       'jobs' => list()
     }.

encode(#{ 'script' := Script,
          'job' := Job,
          'jobs' := Jobs
        }) ->
    #{ 'script' => Script,
       'job' => Job,
       'jobs' => Jobs
     }.
