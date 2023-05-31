-module(slurmrestapi_dbv0_0_38_response_user_update).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_response_user_update/0]).

-type slurmrestapi_dbv0_0_38_response_user_update() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors
     }.
