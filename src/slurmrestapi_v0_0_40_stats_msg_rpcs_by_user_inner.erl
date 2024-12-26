-module(slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner/0]).

-type slurmrestapi_v0_0_40_stats_msg_rpcs_by_user_inner() ::
    #{ 'user' => binary(),
       'user_id' => integer(),
       'count' => integer(),
       'average_time' => integer(),
       'total_time' => integer()
     }.

encode(#{ 'user' := User,
          'user_id' := UserId,
          'count' := Count,
          'average_time' := AverageTime,
          'total_time' := TotalTime
        }) ->
    #{ 'user' => User,
       'user_id' => UserId,
       'count' => Count,
       'average_time' => AverageTime,
       'total_time' => TotalTime
     }.
