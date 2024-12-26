-module(slurmrestapi_v0_0_40_partition_info_maximums).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_maximums/0]).

-type slurmrestapi_v0_0_40_partition_info_maximums() ::
    #{ 'cpus_per_node' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'cpus_per_socket' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'memory_per_cpu' => integer(),
       'partition_memory_per_cpu' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'partition_memory_per_node' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'nodes' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'shares' => integer(),
       'oversubscribe' => slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe:slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe(),
       'time' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'over_time_limit' => slurmrestapi_v0_0_40_uint16_no_val:slurmrestapi_v0_0_40_uint16_no_val()
     }.

encode(#{ 'cpus_per_node' := CpusPerNode,
          'cpus_per_socket' := CpusPerSocket,
          'memory_per_cpu' := MemoryPerCpu,
          'partition_memory_per_cpu' := PartitionMemoryPerCpu,
          'partition_memory_per_node' := PartitionMemoryPerNode,
          'nodes' := Nodes,
          'shares' := Shares,
          'oversubscribe' := Oversubscribe,
          'time' := Time,
          'over_time_limit' := OverTimeLimit
        }) ->
    #{ 'cpus_per_node' => CpusPerNode,
       'cpus_per_socket' => CpusPerSocket,
       'memory_per_cpu' => MemoryPerCpu,
       'partition_memory_per_cpu' => PartitionMemoryPerCpu,
       'partition_memory_per_node' => PartitionMemoryPerNode,
       'nodes' => Nodes,
       'shares' => Shares,
       'oversubscribe' => Oversubscribe,
       'time' => Time,
       'over_time_limit' => OverTimeLimit
     }.
