-module(slurmrestapi_v0_0_40_partition_info_groups).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_groups/0]).

-type slurmrestapi_v0_0_40_partition_info_groups() ::
    #{ 'allowed' => binary()
     }.

encode(#{ 'allowed' := Allowed
        }) ->
    #{ 'allowed' => Allowed
     }.
