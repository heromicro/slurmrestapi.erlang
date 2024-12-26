-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_users_inner() ::
    #{ 'administrator_level' => list(),
       'associations' => list(),
       'coordinators' => list(),
       'default' => slurmrestapi_v0_0_40_user_default:slurmrestapi_v0_0_40_user_default(),
       'flags' => list(),
       'name' := binary(),
       'old_name' => binary(),
       'wckeys' => list()
     }.

encode(#{ 'administrator_level' := AdministratorLevel,
          'associations' := Associations,
          'coordinators' := Coordinators,
          'default' := Default,
          'flags' := Flags,
          'name' := Name,
          'old_name' := OldName,
          'wckeys' := Wckeys
        }) ->
    #{ 'administrator_level' => AdministratorLevel,
       'associations' => Associations,
       'coordinators' => Coordinators,
       'default' => Default,
       'flags' => Flags,
       'name' => Name,
       'old_name' => OldName,
       'wckeys' => Wckeys
     }.
