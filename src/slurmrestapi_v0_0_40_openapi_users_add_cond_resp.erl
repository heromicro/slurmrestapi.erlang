-module(slurmrestapi_v0_0_40_openapi_users_add_cond_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_users_add_cond_resp/0]).

-type slurmrestapi_v0_0_40_openapi_users_add_cond_resp() ::
    #{ 'association_condition' := slurmrestapi_v0_0_40_users_add_cond:slurmrestapi_v0_0_40_users_add_cond(),
       'user' := slurmrestapi_v0_0_40_user_short:slurmrestapi_v0_0_40_user_short(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'association_condition' := AssociationCondition,
          'user' := User,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'association_condition' => AssociationCondition,
       'user' => User,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
