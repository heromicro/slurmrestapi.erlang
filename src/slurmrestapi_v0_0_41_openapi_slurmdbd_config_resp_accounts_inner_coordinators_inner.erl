-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner_coordinators_inner() ::
    #{ 'name' := binary(),
       'direct' => boolean()
     }.

encode(#{ 'name' := Name,
          'direct' := Direct
        }) ->
    #{ 'name' => Name,
       'direct' => Direct
     }.
