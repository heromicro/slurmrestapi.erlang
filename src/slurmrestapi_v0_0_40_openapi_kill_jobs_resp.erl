-module(slurmrestapi_v0_0_40_openapi_kill_jobs_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_kill_jobs_resp/0]).

-type slurmrestapi_v0_0_40_openapi_kill_jobs_resp() ::
    #{ 'status' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'status' := Status,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'status' => Status,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
