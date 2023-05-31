-module(slurmrestapi_v0_0_39_stats_user).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_stats_user/0]).

-type slurmrestapi_v0_0_39_stats_user() ::
    #{ 'user' => binary(),
       'count' => integer(),
       'time' => slurmrestapi_v0_0_39_stats_rpc_time:slurmrestapi_v0_0_39_stats_rpc_time()
     }.

encode(#{ 'user' := User,
          'count' := Count,
          'time' := Time
        }) ->
    #{ 'user' => User,
       'count' => Count,
       'time' => Time
     }.
