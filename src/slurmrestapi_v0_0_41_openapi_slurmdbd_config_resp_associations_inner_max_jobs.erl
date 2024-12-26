-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs() ::
    #{ 'per' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_per(),
       'active' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_active:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_active(),
       'accruing' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_accruing:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_accruing(),
       'total' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_total:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs_total()
     }.

encode(#{ 'per' := Per,
          'active' := Active,
          'accruing' := Accruing,
          'total' := Total
        }) ->
    #{ 'per' => Per,
       'active' => Active,
       'accruing' => Accruing,
       'total' => Total
     }.
