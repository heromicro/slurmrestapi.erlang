-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_jobs_active_jobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_jobs_active_jobs/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_jobs_active_jobs() ::
    #{ 'per' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_jobs_active_jobs_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_jobs_active_jobs_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.