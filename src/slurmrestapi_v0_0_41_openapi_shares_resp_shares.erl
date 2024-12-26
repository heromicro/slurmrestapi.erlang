-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares() ::
    #{ 'shares' => list(),
       'total_shares' => integer()
     }.

encode(#{ 'shares' := Shares,
          'total_shares' := TotalShares
        }) ->
    #{ 'shares' => Shares,
       'total_shares' => TotalShares
     }.
