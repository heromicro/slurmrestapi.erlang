-module(slurmrestapi_v0_0_39_step_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_time/0]).

-type slurmrestapi_v0_0_39_step_time() ::
    #{ 'elapsed' => integer(),
       'End_' => integer(),
       'start' => integer(),
       'suspended' => integer(),
       'system' => slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system(),
       'total' => slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system(),
       'user' => slurmrestapi_v0_0_39_step_time_system:slurmrestapi_v0_0_39_step_time_system()
     }.

encode(#{ 'elapsed' := Elapsed,
          'End_' := End,
          'start' := Start,
          'suspended' := Suspended,
          'system' := System,
          'total' := Total,
          'user' := User
        }) ->
    #{ 'elapsed' => Elapsed,
       'end' => End,
       'start' => Start,
       'suspended' => Suspended,
       'system' => System,
       'total' => Total,
       'user' => User
     }.
