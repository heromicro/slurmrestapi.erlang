-module(slurmrestapi_dbv0_0_38_association_max_jobs_per).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_association_max_jobs_per/0]).

-type slurmrestapi_dbv0_0_38_association_max_jobs_per() ::
    #{ 'wall_clock' => integer()
     }.

encode(#{ 'wall_clock' := WallClock
        }) ->
    #{ 'wall_clock' => WallClock
     }.
