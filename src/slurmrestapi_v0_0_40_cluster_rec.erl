-module(slurmrestapi_v0_0_40_cluster_rec).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_cluster_rec/0]).

-type slurmrestapi_v0_0_40_cluster_rec() ::
    #{ 'controller' => slurmrestapi_v0_0_40_cluster_rec_controller:slurmrestapi_v0_0_40_cluster_rec_controller(),
       'flags' => list(),
       'name' => binary(),
       'nodes' => binary(),
       'select_plugin' => binary(),
       'associations' => slurmrestapi_v0_0_40_cluster_rec_associations:slurmrestapi_v0_0_40_cluster_rec_associations(),
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
