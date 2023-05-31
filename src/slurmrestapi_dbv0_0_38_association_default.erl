-module(slurmrestapi_dbv0_0_38_association_default).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_association_default/0]).

-type slurmrestapi_dbv0_0_38_association_default() ::
    #{ 'qos' => binary()
     }.

encode(#{ 'qos' := Qos
        }) ->
    #{ 'qos' => Qos
     }.
