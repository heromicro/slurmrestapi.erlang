-module(slurmrestapi_v0_0_40_openapi_wckey_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_wckey_resp/0]).

-type slurmrestapi_v0_0_40_openapi_wckey_resp() ::
    #{ 'wckeys' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'wckeys' := Wckeys,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'wckeys' => Wckeys,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
