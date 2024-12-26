-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min() ::
    #{ 'priority_threshold' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_priority_threshold:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_priority_threshold(),
       'tres' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres()
     }.

encode(#{ 'priority_threshold' := PriorityThreshold,
          'tres' := Tres
        }) ->
    #{ 'priority_threshold' => PriorityThreshold,
       'tres' => Tres
     }.
