-module(slurmrestapi_dbv0_0_39_account_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_account_info/0]).

-type slurmrestapi_dbv0_0_39_account_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'accounts' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'accounts' := Accounts
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'accounts' => Accounts
     }.
