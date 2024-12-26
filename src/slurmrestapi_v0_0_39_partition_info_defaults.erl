-module(slurmrestapi_v0_0_39_partition_info_defaults).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_defaults/0]).

-type slurmrestapi_v0_0_39_partition_info_defaults() ::
    #{ 'memory_per_cpu' => integer(),
       'time' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'job' => binary()
     }.

encode(#{ 'memory_per_cpu' := MemoryPerCpu,
          'time' := Time,
          'job' := Job
        }) ->
    #{ 'memory_per_cpu' => MemoryPerCpu,
       'time' => Time,
       'job' => Job
     }.
