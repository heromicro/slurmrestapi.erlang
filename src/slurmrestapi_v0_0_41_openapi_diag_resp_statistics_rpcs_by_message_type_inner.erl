-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner() ::
    #{ 'type_id' := integer(),
       'message_type' := binary(),
       'count' := integer(),
       'queued' := integer(),
       'dropped' := integer(),
       'cycle_last' := integer(),
       'cycle_max' := integer(),
       'total_time' := integer(),
       'average_time' := slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time()
     }.

encode(#{ 'type_id' := TypeId,
          'message_type' := MessageType,
          'count' := Count,
          'queued' := Queued,
          'dropped' := Dropped,
          'cycle_last' := CycleLast,
          'cycle_max' := CycleMax,
          'total_time' := TotalTime,
          'average_time' := AverageTime
        }) ->
    #{ 'type_id' => TypeId,
       'message_type' => MessageType,
       'count' => Count,
       'queued' => Queued,
       'dropped' => Dropped,
       'cycle_last' => CycleLast,
       'cycle_max' => CycleMax,
       'total_time' => TotalTime,
       'average_time' => AverageTime
     }.
