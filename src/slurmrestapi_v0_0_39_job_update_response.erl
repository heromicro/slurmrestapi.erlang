-module(slurmrestapi_v0_0_39_job_update_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_update_response/0]).

-type slurmrestapi_v0_0_39_job_update_response() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'results' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'results' := Results
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'results' => Results
     }.
