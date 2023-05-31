-module(slurmrestapi_v0_0_39_job_comment).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_comment/0]).

-type slurmrestapi_v0_0_39_job_comment() ::
    #{ 'system' => binary()
     }.

encode(#{ 'system' := System
        }) ->
    #{ 'system' => System
     }.
