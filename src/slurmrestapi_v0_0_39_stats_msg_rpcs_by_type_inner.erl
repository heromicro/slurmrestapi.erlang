-module(slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner/0]).

-type slurmrestapi_v0_0_39_stats_msg_rpcs_by_type_inner() ::
    #{ 'message_type' => binary(),
       'type_id' => integer(),
       'count' => integer(),
       'average_time' => integer(),
       'total_time' => integer()
     }.

encode(#{ 'message_type' := MessageType,
          'type_id' := TypeId,
          'count' := Count,
          'average_time' := AverageTime,
          'total_time' := TotalTime
        }) ->
    #{ 'message_type' => MessageType,
       'type_id' => TypeId,
       'count' => Count,
       'average_time' => AverageTime,
       'total_time' => TotalTime
     }.
