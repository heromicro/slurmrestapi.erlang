-module(slurmrestapi_dbv0_0_38_tres_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_tres_info/0]).

-type slurmrestapi_dbv0_0_38_tres_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list(),
       'tres' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'tres' := Tres
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'tres' => Tres
     }.
