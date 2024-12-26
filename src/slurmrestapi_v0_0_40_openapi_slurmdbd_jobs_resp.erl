-module(slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp/0]).

-type slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp() ::
    #{ 'jobs' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'jobs' := Jobs,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'jobs' => Jobs,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
