-module(slurmrestapi_v0_0_39_stats_rpc_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_stats_rpc_time/0]).

-type slurmrestapi_v0_0_39_stats_rpc_time() ::
    #{ 'total' => integer()
     }.

encode(#{ 'total' := Total
        }) ->
    #{ 'total' => Total
     }.
