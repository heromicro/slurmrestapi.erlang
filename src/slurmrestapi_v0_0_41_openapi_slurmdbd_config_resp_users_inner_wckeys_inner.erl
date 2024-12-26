-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner_wckeys_inner() ::
    #{ 'accounting' => list(),
       'cluster' := binary(),
       'id' => integer(),
       'name' := binary(),
       'user' := binary(),
       'flags' => list()
     }.

encode(#{ 'accounting' := Accounting,
          'cluster' := Cluster,
          'id' := Id,
          'name' := Name,
          'user' := User,
          'flags' := Flags
        }) ->
    #{ 'accounting' => Accounting,
       'cluster' => Cluster,
       'id' => Id,
       'name' => Name,
       'user' => User,
       'flags' => Flags
     }.
