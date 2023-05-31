-module(slurmrestapi_dbv0_0_38_account).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_account/0]).

-type slurmrestapi_dbv0_0_38_account() ::
    #{ 'associations' => list(),
       'coordinators' => list(),
       'description' => binary(),
       'name' => binary(),
       'organization' => binary(),
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
