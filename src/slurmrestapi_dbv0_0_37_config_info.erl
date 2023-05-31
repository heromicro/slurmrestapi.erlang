-module(slurmrestapi_dbv0_0_37_config_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_config_info/0]).

-type slurmrestapi_dbv0_0_37_config_info() ::
    #{ 'errors' => list(),
       'tres' => list(),
       'accounts' => list(),
       'associations' => list(),
       'users' => list(),
       'qos' => list(),
       'wckeys' => list()
     }.

encode(#{ 'errors' := Errors,
          'tres' := Tres,
          'accounts' := Accounts,
          'associations' := Associations,
          'users' := Users,
          'qos' := Qos,
          'wckeys' := Wckeys
        }) ->
    #{ 'errors' => Errors,
       'tres' => Tres,
       'accounts' => Accounts,
       'associations' => Associations,
       'users' => Users,
       'qos' => Qos,
       'wckeys' => Wckeys
     }.
