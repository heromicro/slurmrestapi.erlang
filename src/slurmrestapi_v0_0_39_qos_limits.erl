-module(slurmrestapi_v0_0_39_qos_limits).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits/0]).

-type slurmrestapi_v0_0_39_qos_limits() ::
    #{ 'min' => slurmrestapi_v0_0_39_qos_limits_min:slurmrestapi_v0_0_39_qos_limits_min()
     }.

encode(#{ 'min' := Min
        }) ->
    #{ 'min' => Min
     }.
