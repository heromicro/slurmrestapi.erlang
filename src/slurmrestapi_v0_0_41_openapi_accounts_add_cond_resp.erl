-module(slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp/0]).

-type slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp() ::
    #{ 'association_condition' => slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_association_condition:slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_association_condition(),
       'account' => slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account:slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'association_condition' := AssociationCondition,
          'account' := Account,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'association_condition' => AssociationCondition,
       'account' => Account,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
