-module(slurmrestapi_v0_0_40_partition_info_timeouts).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_timeouts/0]).

-type slurmrestapi_v0_0_40_partition_info_timeouts() ::
    #{ 'resume' => slurmrestapi_v0_0_40_uint16_no_val:slurmrestapi_v0_0_40_uint16_no_val(),
       'suspend' => slurmrestapi_v0_0_40_uint16_no_val:slurmrestapi_v0_0_40_uint16_no_val()
     }.

encode(#{ 'resume' := Resume,
          'suspend' := Suspend
        }) ->
    #{ 'resume' => Resume,
       'suspend' => Suspend
     }.
