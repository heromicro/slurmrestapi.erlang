-module(slurmrestapi_dbv0_0_37_qos_limits_max_tres_minutes).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_limits_max_tres_minutes/0]).

-type slurmrestapi_dbv0_0_37_qos_limits_max_tres_minutes() ::
    #{ 'per' => slurmrestapi_dbv0_0_37_qos_limits_max_tres_minutes_per:slurmrestapi_dbv0_0_37_qos_limits_max_tres_minutes_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
