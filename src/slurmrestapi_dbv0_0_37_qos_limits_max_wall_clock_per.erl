-module(slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock_per).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock_per/0]).

-type slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock_per() ::
    #{ 'qos' => integer(),
       'job' => integer()
     }.

encode(#{ 'qos' := Qos,
          'job' := Job
        }) ->
    #{ 'qos' => Qos,
       'job' => Job
     }.
