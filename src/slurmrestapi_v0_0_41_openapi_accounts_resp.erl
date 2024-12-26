-module(slurmrestapi_v0_0_41_openapi_accounts_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_accounts_resp/0]).

-type slurmrestapi_v0_0_41_openapi_accounts_resp() ::
    #{ 'accounts' := list(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'accounts' := Accounts,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'accounts' => Accounts,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
