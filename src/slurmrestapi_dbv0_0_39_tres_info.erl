-module(slurmrestapi_dbv0_0_39_tres_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_tres_info/0]).

-type slurmrestapi_dbv0_0_39_tres_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'tres' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'tres' := Tres
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'tres' => Tres
     }.
