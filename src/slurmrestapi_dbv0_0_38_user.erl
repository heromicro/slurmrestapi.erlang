-module(slurmrestapi_dbv0_0_38_user).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_user/0]).

-type slurmrestapi_dbv0_0_38_user() ::
    #{ 'administrator_level' => binary(),
       'associations' => list(),
       'coordinators' => list(),
       'default' => slurmrestapi_dbv0_0_38_user_default:slurmrestapi_dbv0_0_38_user_default(),
       'flags' => list(),
       'name' => binary()
     }.

encode(#{ 'administrator_level' := AdministratorLevel,
          'associations' := Associations,
          'coordinators' := Coordinators,
          'default' := Default,
          'flags' := Flags,
          'name' := Name
        }) ->
    #{ 'administrator_level' => AdministratorLevel,
       'associations' => Associations,
       'coordinators' => Coordinators,
       'default' => Default,
       'flags' => Flags,
       'name' => Name
     }.
