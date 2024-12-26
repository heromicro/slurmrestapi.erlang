-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min() ::
    #{ 'priority_threshold' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_priority_threshold:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_priority_threshold()
     }.

encode(#{ 'priority_threshold' := PriorityThreshold
        }) ->
    #{ 'priority_threshold' => PriorityThreshold
     }.
