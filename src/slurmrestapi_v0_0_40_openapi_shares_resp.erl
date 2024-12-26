-module(slurmrestapi_v0_0_40_openapi_shares_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_shares_resp/0]).

-type slurmrestapi_v0_0_40_openapi_shares_resp() ::
    #{ 'shares' := slurmrestapi_v0_0_40_shares_resp_msg:slurmrestapi_v0_0_40_shares_resp_msg(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
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
