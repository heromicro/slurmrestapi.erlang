-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups() ::
    #{ 'hourly' => slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_hourly(),
       'daily' => slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_daily(),
       'monthly' => slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly()
     }.

encode(#{ 'hourly' := Hourly,
          'daily' := Daily,
          'monthly' := Monthly
        }) ->
    #{ 'hourly' => Hourly,
       'daily' => Daily,
       'monthly' => Monthly
     }.
