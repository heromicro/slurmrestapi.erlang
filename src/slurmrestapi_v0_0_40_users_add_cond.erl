-module(slurmrestapi_v0_0_40_users_add_cond).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_users_add_cond/0]).

-type slurmrestapi_v0_0_40_users_add_cond() ::
    #{ 'accounts' => list(),
       'association' => slurmrestapi_v0_0_40_assoc_rec_set:slurmrestapi_v0_0_40_assoc_rec_set(),
       'clusters' => list(),
       'partitions' => list(),
       'users' := list(),
       'wckeys' => list()
     }.

encode(#{ 'accounts' := Accounts,
          'association' := Association,
          'clusters' := Clusters,
          'partitions' := Partitions,
          'users' := Users,
          'wckeys' := Wckeys
        }) ->
    #{ 'accounts' => Accounts,
       'association' => Association,
       'clusters' => Clusters,
       'partitions' => Partitions,
       'users' => Users,
       'wckeys' => Wckeys
     }.
