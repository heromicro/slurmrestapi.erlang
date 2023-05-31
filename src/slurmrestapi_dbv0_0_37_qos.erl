-module(slurmrestapi_dbv0_0_37_qos).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos/0]).

-type slurmrestapi_dbv0_0_37_qos() ::
    #{ 'description' => binary(),
       'flags' => list(),
       'id' => binary(),
       'limits' => slurmrestapi_dbv0_0_37_qos_limits:slurmrestapi_dbv0_0_37_qos_limits(),
       'preempt' => slurmrestapi_dbv0_0_37_qos_preempt:slurmrestapi_dbv0_0_37_qos_preempt(),
       'priority' => integer(),
       'usage_factor' => integer(),
       'usage_threshold' => integer()
     }.

encode(#{ 'description' := Description,
          'flags' := Flags,
          'id' := Id,
          'limits' := Limits,
          'preempt' := Preempt,
          'priority' := Priority,
          'usage_factor' := UsageFactor,
          'usage_threshold' := UsageThreshold
        }) ->
    #{ 'description' => Description,
       'flags' => Flags,
       'id' => Id,
       'limits' => Limits,
       'preempt' => Preempt,
       'priority' => Priority,
       'usage_factor' => UsageFactor,
       'usage_threshold' => UsageThreshold
     }.
