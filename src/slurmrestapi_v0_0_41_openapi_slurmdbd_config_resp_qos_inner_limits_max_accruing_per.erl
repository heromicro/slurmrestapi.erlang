-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per() ::
    #{ 'account' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_account:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_account(),
       'user' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_accruing_per_user()
     }.

encode(#{ 'account' := Account,
          'user' := User
        }) ->
    #{ 'account' => Account,
       'user' => User
     }.
