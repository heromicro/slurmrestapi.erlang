-module(slurmrestapi_dbv0_0_38_update_qos).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_update_qos/0]).

-type slurmrestapi_dbv0_0_38_update_qos() ::
    #{ 'qos' => list()
     }.

encode(#{ 'qos' := Qos
        }) ->
    #{ 'qos' => Qos
     }.
