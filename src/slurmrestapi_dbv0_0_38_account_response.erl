-module(slurmrestapi_dbv0_0_38_account_response).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_account_response/0]).

-type slurmrestapi_dbv0_0_38_account_response() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors
     }.
