-module(slurmrestapi_v0_0_40_partition_info_partition).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_partition/0]).

-type slurmrestapi_v0_0_40_partition_info_partition() ::
    #{ 'state' => list()
     }.

encode(#{ 'state' := State
        }) ->
    #{ 'state' => State
     }.
