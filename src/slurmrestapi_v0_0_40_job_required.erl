-module(slurmrestapi_v0_0_40_job_required).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_job_required/0]).

-type slurmrestapi_v0_0_40_job_required() ::
    #{ 'CPUs' => integer(),
       'memory_per_cpu' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'memory_per_node' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val()
     }.

encode(#{ 'CPUs' := CPUs,
          'memory_per_cpu' := MemoryPerCpu,
          'memory_per_node' := MemoryPerNode
        }) ->
    #{ 'CPUs' => CPUs,
       'memory_per_cpu' => MemoryPerCpu,
       'memory_per_node' => MemoryPerNode
     }.
