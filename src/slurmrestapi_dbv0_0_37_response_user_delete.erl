-module(slurmrestapi_dbv0_0_37_response_user_delete).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_response_user_delete/0]).

-type slurmrestapi_dbv0_0_37_response_user_delete() ::
    #{ 'errors' => list()
     }.

encode(#{ 'errors' := Errors
        }) ->
    #{ 'errors' => Errors
     }.
