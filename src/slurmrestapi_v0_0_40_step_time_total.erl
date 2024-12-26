-module(slurmrestapi_v0_0_40_step_time_total).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_step_time_total/0]).

-type slurmrestapi_v0_0_40_step_time_total() ::
    #{ 'seconds' => integer(),
       'microseconds' => integer()
     }.

encode(#{ 'seconds' := Seconds,
          'microseconds' := Microseconds
        }) ->
    #{ 'seconds' => Seconds,
       'microseconds' => Microseconds
     }.
