-module(slurmrestapi_v0_0_40_assoc_max_per_account).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max_per_account/0]).

-type slurmrestapi_v0_0_40_assoc_max_per_account() ::
    #{ 'wall_clock' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val()
     }.

encode(#{ 'wall_clock' := WallClock
        }) ->
    #{ 'wall_clock' => WallClock
     }.
