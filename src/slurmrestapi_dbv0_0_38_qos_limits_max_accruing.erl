-module(slurmrestapi_dbv0_0_38_qos_limits_max_accruing).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_qos_limits_max_accruing/0]).

-type slurmrestapi_dbv0_0_38_qos_limits_max_accruing() ::
    #{ 'per' => slurmrestapi_dbv0_0_38_qos_limits_max_accruing_per:slurmrestapi_dbv0_0_38_qos_limits_max_accruing_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
