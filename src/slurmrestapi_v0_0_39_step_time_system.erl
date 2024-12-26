-module(slurmrestapi_v0_0_39_step_time_system).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_time_system/0]).

-type slurmrestapi_v0_0_39_step_time_system() ::
    #{ 'seconds' => integer(),
       'microseconds' => integer()
     }.

encode(#{ 'seconds' := Seconds,
          'microseconds' := Microseconds
        }) ->
    #{ 'seconds' => Seconds,
       'microseconds' => Microseconds
     }.
