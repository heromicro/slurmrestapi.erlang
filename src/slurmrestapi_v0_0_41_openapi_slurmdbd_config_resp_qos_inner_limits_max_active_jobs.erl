-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs() ::
    #{ 'accruing' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_accruing:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_accruing(),
       'count' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_count:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_active_jobs_count()
     }.

encode(#{ 'accruing' := Accruing,
          'count' := Count
        }) ->
    #{ 'accruing' => Accruing,
       'count' => Count
     }.
