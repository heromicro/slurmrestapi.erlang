-module(slurmrestapi_v0_0_41_openapi_users_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_resp/0]).

-type slurmrestapi_v0_0_41_openapi_users_resp() ::
    #{ 'users' := list(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'users' := Users,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'users' => Users,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
