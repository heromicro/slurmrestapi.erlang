-module(slurmrestapi_v0_0_38_pings).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_pings/0]).

-type slurmrestapi_v0_0_38_pings() ::
    #{ 'meta' => slurmrestapi_v0_0_38_meta:slurmrestapi_v0_0_38_meta(),
       'errors' => list(),
       'pings' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'pings' := Pings
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'pings' => Pings
     }.
