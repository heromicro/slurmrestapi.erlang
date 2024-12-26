-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition() ::
    #{ 'accounts' => list(),
       'association' => slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association(),
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
