-module(slurmrestapi_v0_0_40_stats_rpc_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_stats_rpc_time/0]).

-type slurmrestapi_v0_0_40_stats_rpc_time() ::
    #{ 'average' => integer(),
       'total' => integer()
     }.

encode(#{ 'average' := Average,
          'total' := Total
        }) ->
    #{ 'average' => Average,
       'total' => Total
     }.
