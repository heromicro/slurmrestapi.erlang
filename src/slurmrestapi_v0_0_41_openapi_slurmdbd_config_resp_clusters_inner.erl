-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner() ::
    #{ 'controller' => slurmrestapi_v0_0_40_cluster_rec_controller:slurmrestapi_v0_0_40_cluster_rec_controller(),
       'flags' => list(),
       'name' => binary(),
       'nodes' => binary(),
       'select_plugin' => binary(),
       'associations' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations(),
       'rpc_version' => integer(),
       'tres' => list()
     }.

encode(#{ 'controller' := Controller,
          'flags' := Flags,
          'name' := Name,
          'nodes' := Nodes,
          'select_plugin' := SelectPlugin,
          'associations' := Associations,
          'rpc_version' := RpcVersion,
          'tres' := Tres
        }) ->
    #{ 'controller' => Controller,
       'flags' => Flags,
       'name' => Name,
       'nodes' => Nodes,
       'select_plugin' => SelectPlugin,
       'associations' => Associations,
       'rpc_version' => RpcVersion,
       'tres' => Tres
     }.
