-module(slurmrestapi_v0_0_39_qos_limits_min).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits_min/0]).

-type slurmrestapi_v0_0_39_qos_limits_min() ::
    #{ 'tres' => slurmrestapi_v0_0_39_qos_limits_min_tres:slurmrestapi_v0_0_39_qos_limits_min_tres()
     }.

encode(#{ 'tres' := Tres
        }) ->
    #{ 'tres' => Tres
     }.
