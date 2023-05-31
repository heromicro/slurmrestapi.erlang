-module(slurmrestapi_dbv0_0_37_user_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_user_info/0]).

-type slurmrestapi_dbv0_0_37_user_info() ::
    #{ 'errors' => list(),
       'users' => list()
     }.

encode(#{ 'errors' := Errors,
          'users' := Users
        }) ->
    #{ 'errors' => Errors,
       'users' => Users
     }.
