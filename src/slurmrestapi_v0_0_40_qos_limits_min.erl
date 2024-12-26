-module(slurmrestapi_v0_0_40_qos_limits_min).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_min/0]).

-type slurmrestapi_v0_0_40_qos_limits_min() ::
    #{ 'priority_threshold' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'tres' => slurmrestapi_v0_0_40_qos_limits_min_tres:slurmrestapi_v0_0_40_qos_limits_min_tres()
     }.

encode(#{ 'priority_threshold' := PriorityThreshold,
          'tres' := Tres
        }) ->
    #{ 'priority_threshold' => PriorityThreshold,
       'tres' => Tres
     }.
