-module(slurmrestapi_v0_0_37_jobs_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_jobs_response/0]).

-type slurmrestapi_v0_0_37_jobs_response() ::
    #{ 'errors' => list(),
       'jobs' => list()
     }.

encode(#{ 'errors' := Errors,
          'jobs' := Jobs
        }) ->
    #{ 'errors' => Errors,
       'jobs' => Jobs
     }.
