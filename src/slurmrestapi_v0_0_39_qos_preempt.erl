-module(slurmrestapi_v0_0_39_qos_preempt).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_qos_preempt/0]).

-type slurmrestapi_v0_0_39_qos_preempt() ::
    #{ 'list' => list(),
       'mode' => list(),
       'exempt_time' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'list' := List,
          'mode' := Mode,
          'exempt_time' := ExemptTime
        }) ->
    #{ 'list' => List,
       'mode' => Mode,
       'exempt_time' => ExemptTime
     }.
