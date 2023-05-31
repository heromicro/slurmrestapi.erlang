-module(slurmrestapi_dbv0_0_38_job_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_info/0]).

-type slurmrestapi_dbv0_0_38_job_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
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
