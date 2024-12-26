-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_rollups_monthly_duration() ::
    #{ 'last' => integer(),
       'max' => integer(),
       'time' => integer()
     }.

encode(#{ 'last' := Last,
          'max' := Max,
          'time' := Time
        }) ->
    #{ 'last' => Last,
       'max' => Max,
       'time' => Time
     }.
