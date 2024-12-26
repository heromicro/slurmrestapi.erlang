-module(slurmrestapi_v0_0_39_stats_rpc).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_stats_rpc/0]).

-type slurmrestapi_v0_0_39_stats_rpc() ::
    #{ 'rpc' => binary(),
       'count' => integer(),
       'time' => slurmrestapi_v0_0_39_stats_rpc_time:slurmrestapi_v0_0_39_stats_rpc_time()
     }.

encode(#{ 'rpc' := Rpc,
          'count' := Count,
          'time' := Time
        }) ->
    #{ 'rpc' => Rpc,
       'count' => Count,
       'time' => Time
     }.
