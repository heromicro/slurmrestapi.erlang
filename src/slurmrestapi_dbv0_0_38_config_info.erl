-module(slurmrestapi_dbv0_0_38_config_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_config_info/0]).

-type slurmrestapi_dbv0_0_38_config_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list(),
       'tres' => list(),
       'accounts' => list(),
       'associations' => list(),
       'users' => list(),
       'qos' => list(),
       'wckeys' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'tres' := Tres,
          'accounts' := Accounts,
          'associations' := Associations,
          'users' := Users,
          'qos' := Qos,
          'wckeys' := Wckeys
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'tres' => Tres,
       'accounts' => Accounts,
       'associations' => Associations,
       'users' => Users,
       'qos' => Qos,
       'wckeys' => Wckeys
     }.
