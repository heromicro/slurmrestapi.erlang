-module(slurmrestapi_dbv0_0_37_job_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_info/0]).

-type slurmrestapi_dbv0_0_37_job_info() ::
    #{ 'errors' => list(),
       'jobs' => list()
     }.

encode(#{ 'errors' := Errors,
          'jobs' := Jobs
        }) ->
    #{ 'errors' => Errors,
       'jobs' => Jobs
     }.
