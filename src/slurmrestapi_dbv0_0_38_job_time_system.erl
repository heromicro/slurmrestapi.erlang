-module(slurmrestapi_dbv0_0_38_job_time_system).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_time_system/0]).

-type slurmrestapi_dbv0_0_38_job_time_system() ::
    #{ 'seconds' => integer(),
       'microseconds' => integer()
     }.

encode(#{ 'seconds' := Seconds,
          'microseconds' := Microseconds
        }) ->
    #{ 'seconds' => Seconds,
       'microseconds' => Microseconds
     }.
