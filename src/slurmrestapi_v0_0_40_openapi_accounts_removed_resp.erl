-module(slurmrestapi_v0_0_40_openapi_accounts_removed_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_accounts_removed_resp/0]).

-type slurmrestapi_v0_0_40_openapi_accounts_removed_resp() ::
    #{ 'removed_accounts' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'removed_accounts' := RemovedAccounts,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'removed_accounts' => RemovedAccounts,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
