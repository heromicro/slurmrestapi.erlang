-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time() ::
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
