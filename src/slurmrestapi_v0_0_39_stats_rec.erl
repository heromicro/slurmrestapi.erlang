-module(slurmrestapi_v0_0_39_stats_rec).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_stats_rec/0]).

-type slurmrestapi_v0_0_39_stats_rec() ::
    #{ 'time_start' => integer(),
       'rollups' => list(),
       'RPCs' => list(),
       'users' => list()
     }.

encode(#{ 'time_start' := TimeStart,
          'rollups' := Rollups,
          'RPCs' := RPCs,
          'users' := Users
        }) ->
    #{ 'time_start' => TimeStart,
       'rollups' => Rollups,
       'RPCs' => RPCs,
       'users' => Users
     }.
