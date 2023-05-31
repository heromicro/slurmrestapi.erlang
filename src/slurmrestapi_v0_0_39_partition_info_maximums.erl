-module(slurmrestapi_v0_0_39_partition_info_maximums).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_maximums/0]).

-type slurmrestapi_v0_0_39_partition_info_maximums() ::
    #{ 'over_time_limit' => slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val()
     }.

encode(#{ 'over_time_limit' := OverTimeLimit
        }) ->
    #{ 'over_time_limit' => OverTimeLimit
     }.
