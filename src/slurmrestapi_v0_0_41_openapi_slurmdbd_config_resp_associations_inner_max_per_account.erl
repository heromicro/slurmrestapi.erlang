-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per_account).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per_account/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per_account() ::
    #{ 'wall_clock' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_qos:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_qos()
     }.

encode(#{ 'wall_clock' := WallClock
        }) ->
    #{ 'wall_clock' => WallClock
     }.
