-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt() ::
    #{ 'list' => list(),
       'mode' => list(),
       'exempt_time' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_preempt_exempt_time()
     }.

encode(#{ 'list' := List,
          'mode' := Mode,
          'exempt_time' := ExemptTime
        }) ->
    #{ 'list' => List,
       'mode' => Mode,
       'exempt_time' => ExemptTime
     }.
