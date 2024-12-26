-module(slurmrestapi_v0_0_40_qos_limits_max_tres_minutes).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max_tres_minutes/0]).

-type slurmrestapi_v0_0_40_qos_limits_max_tres_minutes() ::
    #{ 'per' => slurmrestapi_v0_0_40_qos_limits_max_tres_minutes_per:slurmrestapi_v0_0_40_qos_limits_max_tres_minutes_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
