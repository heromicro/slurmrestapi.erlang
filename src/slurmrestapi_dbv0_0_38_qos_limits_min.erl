-module(slurmrestapi_dbv0_0_38_qos_limits_min).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_qos_limits_min/0]).

-type slurmrestapi_dbv0_0_38_qos_limits_min() ::
    #{ 'priority_threshold' => integer(),
       'tres' => slurmrestapi_dbv0_0_38_qos_limits_min_tres:slurmrestapi_dbv0_0_38_qos_limits_min_tres()
     }.

encode(#{ 'priority_threshold' := PriorityThreshold,
          'tres' := Tres
        }) ->
    #{ 'priority_threshold' => PriorityThreshold,
       'tres' => Tres
     }.
