-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per() ::
    #{ 'account' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per_account:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per_account()
     }.

encode(#{ 'account' := Account
        }) ->
    #{ 'account' => Account
     }.
