-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults() ::
    #{ 'memory_per_cpu' => integer(),
       'partition_memory_per_cpu' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_cpu:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_cpu(),
       'partition_memory_per_node' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_node:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_partition_memory_per_node(),
       'time' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_time:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_defaults_time(),
       'job' => binary()
     }.

encode(#{ 'memory_per_cpu' := MemoryPerCpu,
          'partition_memory_per_cpu' := PartitionMemoryPerCpu,
          'partition_memory_per_node' := PartitionMemoryPerNode,
          'time' := Time,
          'job' := Job
        }) ->
    #{ 'memory_per_cpu' => MemoryPerCpu,
       'partition_memory_per_cpu' => PartitionMemoryPerCpu,
       'partition_memory_per_node' => PartitionMemoryPerNode,
       'time' => Time,
       'job' => Job
     }.
