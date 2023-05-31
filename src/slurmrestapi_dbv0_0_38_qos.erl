-module(slurmrestapi_dbv0_0_38_qos).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_qos/0]).

-type slurmrestapi_dbv0_0_38_qos() ::
    #{ 'description' => binary(),
       'flags' => list(),
       'id' => binary(),
       'limits' => slurmrestapi_dbv0_0_38_qos_limits:slurmrestapi_dbv0_0_38_qos_limits(),
       'preempt' => slurmrestapi_dbv0_0_38_qos_preempt:slurmrestapi_dbv0_0_38_qos_preempt(),
       'priority' => integer(),
       'usage_factor' => integer(),
       'usage_threshold' => integer(),
       'name' => binary()
     }.

encode(#{ 'description' := Description,
          'flags' := Flags,
          'id' := Id,
          'limits' := Limits,
          'preempt' := Preempt,
          'priority' := Priority,
          'usage_factor' := UsageFactor,
          'usage_threshold' := UsageThreshold,
          'name' := Name
        }) ->
    #{ 'description' => Description,
       'flags' => Flags,
       'id' => Id,
       'limits' => Limits,
       'preempt' => Preempt,
       'priority' => Priority,
       'usage_factor' => UsageFactor,
       'usage_threshold' => UsageThreshold,
       'name' => Name
     }.
