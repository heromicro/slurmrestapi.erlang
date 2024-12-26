-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres() ::
    #{ 'total' => list(),
       'group' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_group(),
       'minutes' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_minutes(),
       'per' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_per:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max_tres_per()
     }.

encode(#{ 'total' := Total,
          'group' := Group,
          'minutes' := Minutes,
          'per' := Per
        }) ->
    #{ 'total' => Total,
       'group' => Group,
       'minutes' => Minutes,
       'per' => Per
     }.
