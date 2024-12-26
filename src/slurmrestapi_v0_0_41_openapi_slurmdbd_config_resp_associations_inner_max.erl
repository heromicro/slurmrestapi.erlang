-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max() ::
    #{ 'jobs' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_jobs(),
       'tres' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres(),
       'per' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_per()
     }.

encode(#{ 'jobs' := Jobs,
          'tres' := Tres,
          'per' := Per
        }) ->
    #{ 'jobs' => Jobs,
       'tres' => Tres,
       'per' => Per
     }.
