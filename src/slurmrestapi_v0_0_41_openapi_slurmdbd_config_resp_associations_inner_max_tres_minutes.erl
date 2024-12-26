-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes() ::
    #{ 'total' => list(),
       'per' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes_per()
     }.

encode(#{ 'total' := Total,
          'per' := Per
        }) ->
    #{ 'total' => Total,
       'per' => Per
     }.
