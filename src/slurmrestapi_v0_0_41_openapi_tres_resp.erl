-module(slurmrestapi_v0_0_41_openapi_tres_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_tres_resp/0]).

-type slurmrestapi_v0_0_41_openapi_tres_resp() ::
    #{ 'TRES' := list(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'TRES' := TRES,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'TRES' => TRES,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
