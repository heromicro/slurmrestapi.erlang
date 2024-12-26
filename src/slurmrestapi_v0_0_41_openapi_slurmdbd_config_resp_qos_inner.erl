-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner() ::
    #{ 'description' => binary(),
       'flags' => list(),
       'id' => integer(),
       'limits' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits(),
       'name' => binary(),
       'preempt' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt(),
       'priority' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority(),
       'usage_factor' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor(),
       'usage_threshold' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_threshold()
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
