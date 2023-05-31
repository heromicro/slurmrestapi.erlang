-module(slurmrestapi_dbv0_0_38_job_time_user).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_time_user/0]).

-type slurmrestapi_dbv0_0_38_job_time_user() ::
    #{ 'seconds' => integer(),
       'microseconds' => integer()
     }.

encode(#{ 'seconds' := Seconds,
          'microseconds' := Microseconds
        }) ->
    #{ 'seconds' => Seconds,
       'microseconds' => Microseconds
     }.
