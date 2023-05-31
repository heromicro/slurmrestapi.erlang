-module(slurmrestapi_dbv0_0_38_user_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_user_info/0]).

-type slurmrestapi_dbv0_0_38_user_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list(),
       'users' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'users' := Users
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'users' => Users
     }.
