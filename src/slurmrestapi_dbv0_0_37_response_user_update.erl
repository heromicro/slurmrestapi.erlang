-module(slurmrestapi_dbv0_0_37_response_user_update).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_response_user_update/0]).

-type slurmrestapi_dbv0_0_37_response_user_update() ::
    #{ 'errors' => list()
     }.

encode(#{ 'errors' := Errors
        }) ->
    #{ 'errors' => Errors
     }.
