-module(slurmrestapi_v0_0_39_job_time_user).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_time_user/0]).

-type slurmrestapi_v0_0_39_job_time_user() ::
    #{ 'microseconds' => integer()
     }.

encode(#{ 'microseconds' := Microseconds
        }) ->
    #{ 'microseconds' => Microseconds
     }.
