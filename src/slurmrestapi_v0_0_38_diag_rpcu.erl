-module(slurmrestapi_v0_0_38_diag_rpcu).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_diag_rpcu/0]).

-type slurmrestapi_v0_0_38_diag_rpcu() ::
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
