-module(slurmrestapi_v0_0_37_pings).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_pings/0]).

-type slurmrestapi_v0_0_37_pings() ::
    #{ 'errors' => list(),
       'pings' => list()
     }.

encode(#{ 'errors' := Errors,
          'pings' := Pings
        }) ->
    #{ 'errors' => Errors,
       'pings' => Pings
     }.
