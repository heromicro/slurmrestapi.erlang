-module(slurmrestapi_v0_0_39_partition_info_nodes).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_nodes/0]).

-type slurmrestapi_v0_0_39_partition_info_nodes() ::
    #{ 'total' => integer()
     }.

encode(#{ 'total' := Total
        }) ->
    #{ 'total' => Total
     }.
