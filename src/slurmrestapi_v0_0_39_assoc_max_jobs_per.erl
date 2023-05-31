-module(slurmrestapi_v0_0_39_assoc_max_jobs_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_jobs_per/0]).

-type slurmrestapi_v0_0_39_assoc_max_jobs_per() ::
    #{ 'wall_clock' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'wall_clock' := WallClock
        }) ->
    #{ 'wall_clock' => WallClock
     }.
