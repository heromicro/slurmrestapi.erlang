-module(slurmrestapi_dbv0_0_38_cluster_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_cluster_info/0]).

-type slurmrestapi_dbv0_0_38_cluster_info() ::
    #{ 'controller' => slurmrestapi_dbv0_0_38_cluster_info_controller:slurmrestapi_dbv0_0_38_cluster_info_controller(),
       'flags' => list(),
       'name' => binary(),
       'nodes' => binary(),
       'select_plugin' => binary(),
       'associations' => slurmrestapi_dbv0_0_38_cluster_info_associations:slurmrestapi_dbv0_0_38_cluster_info_associations(),
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
