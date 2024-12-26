-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_usage_normalized() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => float()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
