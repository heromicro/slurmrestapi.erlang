-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle() ::
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
