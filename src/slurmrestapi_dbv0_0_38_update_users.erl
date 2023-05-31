-module(slurmrestapi_dbv0_0_38_update_users).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_update_users/0]).

-type slurmrestapi_dbv0_0_38_update_users() ::
    #{ 'users' => list()
     }.

encode(#{ 'users' := Users
        }) ->
    #{ 'users' => Users
     }.
