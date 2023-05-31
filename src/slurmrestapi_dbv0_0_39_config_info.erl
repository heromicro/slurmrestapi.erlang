-module(slurmrestapi_dbv0_0_39_config_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_config_info/0]).

-type slurmrestapi_dbv0_0_39_config_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'tres' => list(),
       'accounts' => list(),
       'associations' => list(),
       'users' => list(),
       'qos' => list(),
       'wckeys' => list(),
       'clusters' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'tres' := Tres,
          'accounts' := Accounts,
          'associations' := Associations,
          'users' := Users,
          'qos' := Qos,
          'wckeys' := Wckeys,
          'clusters' := Clusters
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'tres' => Tres,
       'accounts' => Accounts,
       'associations' => Associations,
       'users' => Users,
       'qos' => Qos,
       'wckeys' => Wckeys,
       'clusters' => Clusters
     }.
