-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp() ::
    #{ 'association_condition' := slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition(),
       'user' := slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
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
