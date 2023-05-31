-module(slurmrestapi_dbv0_0_37_account_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_account_info/0]).

-type slurmrestapi_dbv0_0_37_account_info() ::
    #{ 'errors' => list(),
       'accounts' => list()
     }.

encode(#{ 'errors' := Errors,
          'accounts' := Accounts
        }) ->
    #{ 'errors' => Errors,
       'accounts' => Accounts
     }.
