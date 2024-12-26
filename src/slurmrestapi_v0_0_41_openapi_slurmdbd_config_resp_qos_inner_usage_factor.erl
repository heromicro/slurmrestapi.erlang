-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_usage_factor() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => float()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
