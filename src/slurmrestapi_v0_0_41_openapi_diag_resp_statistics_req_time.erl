-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time() ::
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
