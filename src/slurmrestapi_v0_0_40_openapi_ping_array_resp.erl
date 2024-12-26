-module(slurmrestapi_v0_0_40_openapi_ping_array_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_ping_array_resp/0]).

-type slurmrestapi_v0_0_40_openapi_ping_array_resp() ::
    #{ 'pings' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'pings' := Pings,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'pings' => Pings,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
