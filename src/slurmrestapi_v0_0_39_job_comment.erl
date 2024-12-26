-module(slurmrestapi_v0_0_39_job_comment).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_comment/0]).

-type slurmrestapi_v0_0_39_job_comment() ::
    #{ 'administrator' => binary(),
       'job' => binary(),
       'system' => binary()
     }.

encode(#{ 'administrator' := Administrator,
          'job' := Job,
          'system' := System
        }) ->
    #{ 'administrator' => Administrator,
       'job' => Job,
       'system' => System
     }.
