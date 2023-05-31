-module(slurmrestapi_dbv0_0_37_account_response).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_account_response/0]).

-type slurmrestapi_dbv0_0_37_account_response() ::
    #{ 'errors' => list()
     }.

encode(#{ 'errors' := Errors
        }) ->
    #{ 'errors' => Errors
     }.
