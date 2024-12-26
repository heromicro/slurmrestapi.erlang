-module(slurmrestapi_v0_0_39_diag).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_diag/0]).

-type slurmrestapi_v0_0_39_diag() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'statistics' => slurmrestapi_v0_0_39_stats_msg:slurmrestapi_v0_0_39_stats_msg()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'statistics' := Statistics
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'statistics' => Statistics
     }.
