-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner() ::
    #{ 'nodes' => slurmrestapi_v0_0_40_partition_info_nodes:slurmrestapi_v0_0_40_partition_info_nodes(),
       'accounts' => slurmrestapi_v0_0_40_partition_info_accounts:slurmrestapi_v0_0_40_partition_info_accounts(),
       'groups' => slurmrestapi_v0_0_40_partition_info_groups:slurmrestapi_v0_0_40_partition_info_groups(),
       'qos' => slurmrestapi_v0_0_40_partition_info_qos:slurmrestapi_v0_0_40_partition_info_qos(),
       'alternate' => binary(),
       'tres' => slurmrestapi_v0_0_40_partition_info_tres:slurmrestapi_v0_0_40_partition_info_tres(),
       'cluster' => binary(),
       'select_type' => list(),
       'cpus' => slurmrestapi_v0_0_40_partition_info_cpus:slurmrestapi_v0_0_40_partition_info_cpus(),
       'defaults' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults(),
       'grace_time' => integer(),
       'maximums' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums(),
       'minimums' => slurmrestapi_v0_0_40_partition_info_minimums:slurmrestapi_v0_0_40_partition_info_minimums(),
       'name' => binary(),
       'node_sets' => binary(),
       'priority' => slurmrestapi_v0_0_40_partition_info_priority:slurmrestapi_v0_0_40_partition_info_priority(),
       'timeouts' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts(),
       'partition' => slurmrestapi_v0_0_40_partition_info_partition:slurmrestapi_v0_0_40_partition_info_partition(),
       'suspend_time' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_suspend_time:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_suspend_time()
     }.

encode(#{ 'nodes' := Nodes,
          'accounts' := Accounts,
          'groups' := Groups,
          'qos' := Qos,
          'alternate' := Alternate,
          'tres' := Tres,
          'cluster' := Cluster,
          'select_type' := SelectType,
          'cpus' := Cpus,
          'defaults' := Defaults,
          'grace_time' := GraceTime,
          'maximums' := Maximums,
          'minimums' := Minimums,
          'name' := Name,
          'node_sets' := NodeSets,
          'priority' := Priority,
          'timeouts' := Timeouts,
          'partition' := Partition,
          'suspend_time' := SuspendTime
        }) ->
    #{ 'nodes' => Nodes,
       'accounts' => Accounts,
       'groups' => Groups,
       'qos' => Qos,
       'alternate' => Alternate,
       'tres' => Tres,
       'cluster' => Cluster,
       'select_type' => SelectType,
       'cpus' => Cpus,
       'defaults' => Defaults,
       'grace_time' => GraceTime,
       'maximums' => Maximums,
       'minimums' => Minimums,
       'name' => Name,
       'node_sets' => NodeSets,
       'priority' => Priority,
       'timeouts' => Timeouts,
       'partition' => Partition,
       'suspend_time' => SuspendTime
     }.
