-module(slurmrestapi_dbv0_0_38_account_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_account_info/0]).

-type slurmrestapi_dbv0_0_38_account_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list(),
       'accounts' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'accounts' := Accounts
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'accounts' => Accounts
     }.
