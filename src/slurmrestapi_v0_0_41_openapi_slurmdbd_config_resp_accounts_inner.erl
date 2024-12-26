-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_accounts_inner() ::
    #{ 'associations' => list(),
       'coordinators' => list(),
       'description' := binary(),
       'name' := binary(),
       'organization' := binary(),
       'flags' => list()
     }.

encode(#{ 'associations' := Associations,
          'coordinators' := Coordinators,
          'description' := Description,
          'name' := Name,
          'organization' := Organization,
          'flags' := Flags
        }) ->
    #{ 'associations' => Associations,
       'coordinators' => Coordinators,
       'description' => Description,
       'name' => Name,
       'organization' => Organization,
       'flags' => Flags
     }.
