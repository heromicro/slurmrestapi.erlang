-module(slurmrestapi_v0_0_41_openapi_shares_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp() ::
    #{ 'shares' := slurmrestapi_v0_0_41_openapi_shares_resp_shares:slurmrestapi_v0_0_41_openapi_shares_resp_shares(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'shares' := Shares,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'shares' => Shares,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
