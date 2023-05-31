-module(slurmrestapi_dbv0_0_38_update_account).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_update_account/0]).

-type slurmrestapi_dbv0_0_38_update_account() ::
    #{ 'accounts' => list()
     }.

encode(#{ 'accounts' := Accounts
        }) ->
    #{ 'accounts' => Accounts
     }.
