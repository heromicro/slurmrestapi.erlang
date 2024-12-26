-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres_per/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min_tres_per() ::
    #{ 'job' => list()
     }.

encode(#{ 'job' := Job
        }) ->
    #{ 'job' => Job
     }.
