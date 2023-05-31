-module(slurmrestapi_v0_0_38_jobs_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_jobs_response/0]).

-type slurmrestapi_v0_0_38_jobs_response() ::
    #{ 'meta' => slurmrestapi_v0_0_38_meta:slurmrestapi_v0_0_38_meta(),
       'errors' => list(),
       'jobs' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'jobs' := Jobs
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'jobs' => Jobs
     }.
