-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_over_time_limit).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_over_time_limit/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_maximums_over_time_limit() ::
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
