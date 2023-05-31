-module(slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock/0]).

-type slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock() ::
    #{ 'per' => slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock_per:slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
