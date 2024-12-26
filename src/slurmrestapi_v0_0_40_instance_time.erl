-module(slurmrestapi_v0_0_40_instance_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_instance_time/0]).

-type slurmrestapi_v0_0_40_instance_time() ::
    #{ 'time_end' => integer(),
       'time_start' => integer()
     }.

encode(#{ 'time_end' := TimeEnd,
          'time_start' := TimeStart
        }) ->
    #{ 'time_end' => TimeEnd,
       'time_start' => TimeStart
     }.
