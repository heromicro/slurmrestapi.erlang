-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root() ::
    #{ 'account' => binary(),
       'cluster' => binary(),
       'partition' => binary(),
       'user' := binary(),
       'id' => integer()
     }.

encode(#{ 'account' := Account,
          'cluster' := Cluster,
          'partition' := Partition,
          'user' := User,
          'id' := Id
        }) ->
    #{ 'account' => Account,
       'cluster' => Cluster,
       'partition' => Partition,
       'user' => User,
       'id' => Id
     }.
