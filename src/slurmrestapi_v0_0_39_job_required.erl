-module(slurmrestapi_v0_0_39_job_required).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_required/0]).

-type slurmrestapi_v0_0_39_job_required() ::
    #{ 'CPUs' => integer(),
       'memory_per_cpu' => slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val(),
       'memory_per_node' => slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val(),
       'memory' => integer()
     }.

encode(#{ 'CPUs' := CPUs,
          'memory_per_cpu' := MemoryPerCpu,
          'memory_per_node' := MemoryPerNode,
          'memory' := Memory
        }) ->
    #{ 'CPUs' => CPUs,
       'memory_per_cpu' => MemoryPerCpu,
       'memory_per_node' => MemoryPerNode,
       'memory' => Memory
     }.
