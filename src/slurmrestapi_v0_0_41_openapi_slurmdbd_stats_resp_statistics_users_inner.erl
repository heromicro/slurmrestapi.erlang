-module(slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_users_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_users_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp_statistics_users_inner() ::
    #{ 'user' => binary(),
       'count' => integer(),
       'time' => slurmrestapi_v0_0_40_stats_rpc_time:slurmrestapi_v0_0_40_stats_rpc_time()
     }.

encode(#{ 'user' := User,
          'count' := Count,
          'time' := Time
        }) ->
    #{ 'user' => User,
       'count' => Count,
       'time' => Time
     }.
