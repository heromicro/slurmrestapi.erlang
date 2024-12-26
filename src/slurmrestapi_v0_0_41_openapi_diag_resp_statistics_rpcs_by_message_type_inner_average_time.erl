-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_rpcs_by_message_type_inner_average_time() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
