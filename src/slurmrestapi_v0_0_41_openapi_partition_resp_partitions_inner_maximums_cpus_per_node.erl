-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_cpus_per_node() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
