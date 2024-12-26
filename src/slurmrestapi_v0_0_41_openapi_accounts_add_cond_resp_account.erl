-module(slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account/0]).

-type slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_account() ::
    #{ 'description' => binary(),
       'organization' => binary()
     }.

encode(#{ 'description' := Description,
          'organization' := Organization
        }) ->
    #{ 'description' => Description,
       'organization' => Organization
     }.
