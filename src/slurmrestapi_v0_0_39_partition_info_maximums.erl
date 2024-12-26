-module(slurmrestapi_v0_0_39_partition_info_maximums).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_maximums/0]).

-type slurmrestapi_v0_0_39_partition_info_maximums() ::
    #{ 'cpus_per_node' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'cpus_per_socket' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'memory_per_cpu' => integer(),
       'nodes' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'shares' => integer(),
       'time' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'over_time_limit' => slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val()
     }.

encode(#{ 'cpus_per_node' := CpusPerNode,
          'cpus_per_socket' := CpusPerSocket,
          'memory_per_cpu' := MemoryPerCpu,
          'nodes' := Nodes,
          'shares' := Shares,
          'time' := Time,
          'over_time_limit' := OverTimeLimit
        }) ->
    #{ 'cpus_per_node' => CpusPerNode,
       'cpus_per_socket' => CpusPerSocket,
       'memory_per_cpu' => MemoryPerCpu,
       'nodes' => Nodes,
       'shares' => Shares,
       'time' => Time,
       'over_time_limit' => OverTimeLimit
     }.
