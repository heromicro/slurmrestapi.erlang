-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_priority() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
