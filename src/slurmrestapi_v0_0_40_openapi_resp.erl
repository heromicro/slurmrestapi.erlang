-module(slurmrestapi_v0_0_40_openapi_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_resp/0]).

-type slurmrestapi_v0_0_40_openapi_resp() ::
    #{ 'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
