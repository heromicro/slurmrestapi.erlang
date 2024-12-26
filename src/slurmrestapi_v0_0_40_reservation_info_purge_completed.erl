-module(slurmrestapi_v0_0_40_reservation_info_purge_completed).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_reservation_info_purge_completed/0]).

-type slurmrestapi_v0_0_40_reservation_info_purge_completed() ::
    #{ 'time' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val()
     }.

encode(#{ 'time' := Time
        }) ->
    #{ 'time' => Time
     }.
