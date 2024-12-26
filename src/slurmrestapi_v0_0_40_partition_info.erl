-module(slurmrestapi_v0_0_40_partition_info).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info/0]).

-type slurmrestapi_v0_0_40_partition_info() ::
    #{ 'nodes' => slurmrestapi_v0_0_40_partition_info_nodes:slurmrestapi_v0_0_40_partition_info_nodes(),
       'accounts' => slurmrestapi_v0_0_40_partition_info_accounts:slurmrestapi_v0_0_40_partition_info_accounts(),
       'groups' => slurmrestapi_v0_0_40_partition_info_groups:slurmrestapi_v0_0_40_partition_info_groups(),
       'qos' => slurmrestapi_v0_0_40_partition_info_qos:slurmrestapi_v0_0_40_partition_info_qos(),
       'alternate' => binary(),
       'tres' => slurmrestapi_v0_0_40_partition_info_tres:slurmrestapi_v0_0_40_partition_info_tres(),
       'cluster' => binary(),
       'cpus' => slurmrestapi_v0_0_40_partition_info_cpus:slurmrestapi_v0_0_40_partition_info_cpus(),
       'defaults' => slurmrestapi_v0_0_40_partition_info_defaults:slurmrestapi_v0_0_40_partition_info_defaults(),
       'grace_time' => integer(),
       'maximums' => slurmrestapi_v0_0_40_partition_info_maximums:slurmrestapi_v0_0_40_partition_info_maximums(),
       'minimums' => slurmrestapi_v0_0_40_partition_info_minimums:slurmrestapi_v0_0_40_partition_info_minimums(),
       'name' => binary(),
       'node_sets' => binary(),
       'priority' => slurmrestapi_v0_0_40_partition_info_priority:slurmrestapi_v0_0_40_partition_info_priority(),
       'timeouts' => slurmrestapi_v0_0_40_partition_info_timeouts:slurmrestapi_v0_0_40_partition_info_timeouts(),
       'partition' => slurmrestapi_v0_0_40_partition_info_partition:slurmrestapi_v0_0_40_partition_info_partition(),
       'suspend_time' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val()
     }.

encode(#{ 'nodes' := Nodes,
          'accounts' := Accounts,
          'groups' := Groups,
          'qos' := Qos,
          'alternate' := Alternate,
          'tres' := Tres,
          'cluster' := Cluster,
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