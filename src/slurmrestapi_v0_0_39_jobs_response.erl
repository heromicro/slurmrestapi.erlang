-module(slurmrestapi_v0_0_39_jobs_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_jobs_response/0]).

-type slurmrestapi_v0_0_39_jobs_response() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'jobs' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'jobs' := Jobs
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'jobs' => Jobs
     }.
