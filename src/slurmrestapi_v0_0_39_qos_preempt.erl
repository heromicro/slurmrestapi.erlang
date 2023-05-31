-module(slurmrestapi_v0_0_39_qos_preempt).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_qos_preempt/0]).

-type slurmrestapi_v0_0_39_qos_preempt() ::
    #{ 'exempt_time' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'exempt_time' := ExemptTime
        }) ->
    #{ 'exempt_time' => ExemptTime
     }.
