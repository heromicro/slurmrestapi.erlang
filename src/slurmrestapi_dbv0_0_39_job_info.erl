-module(slurmrestapi_dbv0_0_39_job_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_job_info/0]).

-type slurmrestapi_dbv0_0_39_job_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
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
