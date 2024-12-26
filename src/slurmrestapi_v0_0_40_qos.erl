-module(slurmrestapi_v0_0_40_qos).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos/0]).

-type slurmrestapi_v0_0_40_qos() ::
    #{ 'description' => binary(),
       'flags' => list(),
       'id' => integer(),
       'limits' => slurmrestapi_v0_0_40_qos_limits:slurmrestapi_v0_0_40_qos_limits(),
       'name' => binary(),
       'preempt' => slurmrestapi_v0_0_40_qos_preempt:slurmrestapi_v0_0_40_qos_preempt(),
       'priority' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'usage_factor' => slurmrestapi_v0_0_40_float64_no_val:slurmrestapi_v0_0_40_float64_no_val(),
       'usage_threshold' => slurmrestapi_v0_0_40_float64_no_val:slurmrestapi_v0_0_40_float64_no_val()
     }.

encode(#{ 'description' := Description,
          'flags' := Flags,
          'id' := Id,
          'limits' := Limits,
          'name' := Name,
          'preempt' := Preempt,
          'priority' := Priority,
          'usage_factor' := UsageFactor,
          'usage_threshold' := UsageThreshold
        }) ->
    #{ 'description' => Description,
       'flags' => Flags,
       'id' => Id,
       'limits' => Limits,
       'name' => Name,
       'preempt' => Preempt,
       'priority' => Priority,
       'usage_factor' => UsageFactor,
       'usage_threshold' => UsageThreshold
     }.
