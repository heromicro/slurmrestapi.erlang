-module(slurmrestapi_dbv0_0_37_diag_statistics_rpcs_inner).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_diag_statistics_rpcs_inner/0]).

-type slurmrestapi_dbv0_0_37_diag_statistics_rpcs_inner() ::
    #{ 'rpc' => binary(),
       'count' => integer(),
       'time' => slurmrestapi_dbv0_0_37_diag_statistics_rpcs_inner_time:slurmrestapi_dbv0_0_37_diag_statistics_rpcs_inner_time()
     }.

encode(#{ 'rpc' := Rpc,
          'count' := Count,
          'time' := Time
        }) ->
    #{ 'rpc' => Rpc,
       'count' => Count,
       'time' => Time
     }.
