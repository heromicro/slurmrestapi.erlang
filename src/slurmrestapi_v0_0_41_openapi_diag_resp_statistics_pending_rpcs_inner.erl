-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_inner/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_pending_rpcs_inner() ::
    #{ 'type_id' := integer(),
       'message_type' := binary(),
       'count' := integer()
     }.

encode(#{ 'type_id' := TypeId,
          'message_type' := MessageType,
          'count' := Count
        }) ->
    #{ 'type_id' => TypeId,
       'message_type' => MessageType,
       'count' => Count
     }.
