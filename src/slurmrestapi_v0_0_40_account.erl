-module(slurmrestapi_v0_0_40_account).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_account/0]).

-type slurmrestapi_v0_0_40_account() ::
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
