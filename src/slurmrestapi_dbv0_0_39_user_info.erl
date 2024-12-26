-module(slurmrestapi_dbv0_0_39_user_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_user_info/0]).

-type slurmrestapi_dbv0_0_39_user_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'users' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'users' := Users
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'users' => Users
     }.
