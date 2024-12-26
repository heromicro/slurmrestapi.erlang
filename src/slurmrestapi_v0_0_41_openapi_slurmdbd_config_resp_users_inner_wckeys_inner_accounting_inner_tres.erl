-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner_tres/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner_accounting_inner_tres() ::
    #{ 'type' := binary(),
       'name' => binary(),
       'id' => integer(),
       'count' => integer()
     }.

encode(#{ 'type' := Type,
          'name' := Name,
          'id' := Id,
          'count' := Count
        }) ->
    #{ 'type' => Type,
       'name' => Name,
       'id' => Id,
       'count' => Count
     }.
