-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_shares() ::
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
