-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value() ::
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
