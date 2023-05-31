-module(slurmrestapi_v0_0_39_partition_info_timeouts).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_timeouts/0]).

-type slurmrestapi_v0_0_39_partition_info_timeouts() ::
    #{ 'suspend' => slurmrestapi_v0_0_39_uint16_no_val:slurmrestapi_v0_0_39_uint16_no_val()
     }.

encode(#{ 'suspend' := Suspend
        }) ->
    #{ 'suspend' => Suspend
     }.
