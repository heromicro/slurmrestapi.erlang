-module(slurmrestapi_v0_0_40_assoc_default).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc_default/0]).

-type slurmrestapi_v0_0_40_assoc_default() ::
    #{ 'qos' => binary()
     }.

encode(#{ 'qos' := Qos
        }) ->
    #{ 'qos' => Qos
     }.
