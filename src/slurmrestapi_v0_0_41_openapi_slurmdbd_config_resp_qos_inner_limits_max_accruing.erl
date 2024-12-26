-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing() ::
    #{ 'per' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
