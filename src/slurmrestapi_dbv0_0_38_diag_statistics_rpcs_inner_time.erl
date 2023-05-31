-module(slurmrestapi_dbv0_0_38_diag_statistics_rpcs_inner_time).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_diag_statistics_rpcs_inner_time/0]).

-type slurmrestapi_dbv0_0_38_diag_statistics_rpcs_inner_time() ::
    #{ 'average' => integer(),
       'total' => integer()
     }.

encode(#{ 'average' := Average,
          'total' := Total
        }) ->
    #{ 'average' => Average,
       'total' => Total
     }.
