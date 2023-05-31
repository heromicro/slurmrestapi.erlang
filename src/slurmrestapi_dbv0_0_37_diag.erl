-module(slurmrestapi_dbv0_0_37_diag).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_diag/0]).

-type slurmrestapi_dbv0_0_37_diag() ::
    #{ 'errors' => list(),
       'statistics' => slurmrestapi_dbv0_0_37_diag_statistics:slurmrestapi_dbv0_0_37_diag_statistics()
     }.

encode(#{ 'errors' := Errors,
          'statistics' := Statistics
        }) ->
    #{ 'errors' => Errors,
       'statistics' => Statistics
     }.
