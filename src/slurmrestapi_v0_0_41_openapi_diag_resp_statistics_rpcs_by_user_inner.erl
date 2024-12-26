-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_user_inner() ::
    #{ 'user_id' := integer(),
       'user' := binary(),
       'count' := integer(),
       'total_time' := integer(),
       'average_time' := slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time()
     }.

encode(#{ 'user_id' := UserId,
          'user' := User,
          'count' := Count,
          'total_time' := TotalTime,
          'average_time' := AverageTime
        }) ->
    #{ 'user_id' => UserId,
       'user' => User,
       'count' => Count,
       'total_time' => TotalTime,
       'average_time' => AverageTime
     }.
