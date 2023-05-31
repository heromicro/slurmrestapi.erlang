-module(slurmrestapi_v0_0_39_partition_info_qos).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_qos/0]).

-type slurmrestapi_v0_0_39_partition_info_qos() ::
    #{ 'assigned' => binary()
     }.

encode(#{ 'assigned' := Assigned
        }) ->
    #{ 'assigned' => Assigned
     }.
