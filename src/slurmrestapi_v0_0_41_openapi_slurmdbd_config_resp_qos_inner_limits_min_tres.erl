-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres() ::
    #{ 'per' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
