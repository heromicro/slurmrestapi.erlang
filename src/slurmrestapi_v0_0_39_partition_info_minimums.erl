-module(slurmrestapi_v0_0_39_partition_info_minimums).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_minimums/0]).

-type slurmrestapi_v0_0_39_partition_info_minimums() ::
    #{ 'nodes' => integer()
     }.

encode(#{ 'nodes' := Nodes
        }) ->
    #{ 'nodes' => Nodes
     }.
