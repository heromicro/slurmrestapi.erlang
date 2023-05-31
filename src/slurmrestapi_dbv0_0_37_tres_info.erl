-module(slurmrestapi_dbv0_0_37_tres_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_tres_info/0]).

-type slurmrestapi_dbv0_0_37_tres_info() ::
    #{ 'errors' => list(),
       'tres' => list()
     }.

encode(#{ 'errors' := Errors,
          'tres' := Tres
        }) ->
    #{ 'errors' => Errors,
       'tres' => Tres
     }.
