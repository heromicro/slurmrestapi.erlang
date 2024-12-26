-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics() ::
    #{ 'time_start' => integer(),
       'rollups' => slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups(),
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
