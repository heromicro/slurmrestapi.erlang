-module(slurmrestapi_v0_0_40_kill_jobs_resp_job_error).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_kill_jobs_resp_job_error/0]).

-type slurmrestapi_v0_0_40_kill_jobs_resp_job_error() ::
    #{ 'string' => binary(),
       'code' => integer(),
       'message' => binary()
     }.

encode(#{ 'string' := String,
          'code' := Code,
          'message' := Message
        }) ->
    #{ 'string' => String,
       'code' => Code,
       'message' => Message
     }.
