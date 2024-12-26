-module(slurmrestapi_v0_0_40_openapi_users_add_cond_resp_str).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_users_add_cond_resp_str/0]).

-type slurmrestapi_v0_0_40_openapi_users_add_cond_resp_str() ::
    #{ 'added_users' := binary(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'added_users' := AddedUsers,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'added_users' => AddedUsers,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
