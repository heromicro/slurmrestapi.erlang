-module(slurmrestapi_dbv0_0_38_response_user_delete).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_response_user_delete/0]).

-type slurmrestapi_dbv0_0_38_response_user_delete() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors
     }.
