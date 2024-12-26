-module(slurmrestapi_v0_0_39_pings).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_pings/0]).

-type slurmrestapi_v0_0_39_pings() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'pings' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'pings' := Pings
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'pings' => Pings
     }.
