-module(slurmrestapi_dbv0_0_37_user).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_user/0]).

-type slurmrestapi_dbv0_0_37_user() ::
    #{ 'administrator_level' => binary(),
       'associations' => slurmrestapi_dbv0_0_37_user_associations:slurmrestapi_dbv0_0_37_user_associations(),
       'coordinators' => list(),
       'default' => slurmrestapi_dbv0_0_37_user_default:slurmrestapi_dbv0_0_37_user_default(),
       'name' => binary()
     }.

encode(#{ 'administrator_level' := AdministratorLevel,
          'associations' := Associations,
          'coordinators' := Coordinators,
          'default' := Default,
          'name' := Name
        }) ->
    #{ 'administrator_level' => AdministratorLevel,
       'associations' => Associations,
       'coordinators' => Coordinators,
       'default' => Default,
       'name' => Name
     }.
