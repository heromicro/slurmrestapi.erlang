-module(slurmrestapi_dbv0_0_38_diag).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_diag/0]).

-type slurmrestapi_dbv0_0_38_diag() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list(),
       'statistics' => slurmrestapi_dbv0_0_38_diag_statistics:slurmrestapi_dbv0_0_38_diag_statistics()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'statistics' := Statistics
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'statistics' => Statistics
     }.
