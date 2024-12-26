-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly() ::
    #{ 'count' => integer(),
       'last_run' => integer(),
       'duration' => slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration()
     }.

encode(#{ 'count' := Count,
          'last_run' := LastRun,
          'duration' := Duration
        }) ->
    #{ 'count' => Count,
       'last_run' => LastRun,
       'duration' => Duration
     }.
