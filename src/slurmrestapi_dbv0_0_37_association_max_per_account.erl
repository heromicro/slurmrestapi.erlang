-module(slurmrestapi_dbv0_0_37_association_max_per_account).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_max_per_account/0]).

-type slurmrestapi_dbv0_0_37_association_max_per_account() ::
    #{ 'wall_clock' => integer()
     }.

encode(#{ 'wall_clock' := WallClock
        }) ->
    #{ 'wall_clock' => WallClock
     }.
