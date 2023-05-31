-module(slurmrestapi_dbv0_0_38_tres_update).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_tres_update/0]).

-type slurmrestapi_dbv0_0_38_tres_update() ::
    #{ 'tres' => list()
     }.

encode(#{ 'tres' := Tres
        }) ->
    #{ 'tres' => Tres
     }.
