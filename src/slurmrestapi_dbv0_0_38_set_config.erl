-module(slurmrestapi_dbv0_0_38_set_config).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_set_config/0]).

-type slurmrestapi_dbv0_0_38_set_config() ::
    #{ 'clusters' => list(),
       'TRES' => list(),
       'accounts' => list(),
       'users' => list(),
       'qos' => list(),
       'wckeys' => list(),
       'associations' => list()
     }.

encode(#{ 'clusters' := Clusters,
          'TRES' := TRES,
          'accounts' := Accounts,
          'users' := Users,
          'qos' := Qos,
          'wckeys' := Wckeys,
          'associations' := Associations
        }) ->
    #{ 'clusters' => Clusters,
       'TRES' => TRES,
       'accounts' => Accounts,
       'users' => Users,
       'qos' => Qos,
       'wckeys' => Wckeys,
       'associations' => Associations
     }.
