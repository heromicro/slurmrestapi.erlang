-module(slurmrestapi_v0_0_40_shares_resp_msg).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_shares_resp_msg/0]).

-type slurmrestapi_v0_0_40_shares_resp_msg() ::
    #{ 'shares' => list(),
       'total_shares' => integer()
     }.

encode(#{ 'shares' := Shares,
          'total_shares' := TotalShares
        }) ->
    #{ 'shares' => Shares,
       'total_shares' => TotalShares
     }.
