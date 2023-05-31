-module(slurmrestapi_dbv0_0_38_job_time_total).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_time_total/0]).

-type slurmrestapi_dbv0_0_38_job_time_total() ::
    #{ 'seconds' => integer(),
       'microseconds' => integer()
     }.

encode(#{ 'seconds' := Seconds,
          'microseconds' := Microseconds
        }) ->
    #{ 'seconds' => Seconds,
       'microseconds' => Microseconds
     }.
