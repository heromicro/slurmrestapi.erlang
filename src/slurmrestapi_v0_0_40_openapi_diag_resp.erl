-module(slurmrestapi_v0_0_40_openapi_diag_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_diag_resp/0]).

-type slurmrestapi_v0_0_40_openapi_diag_resp() ::
    #{ 'statistics' := slurmrestapi_v0_0_40_stats_msg:slurmrestapi_v0_0_40_stats_msg(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'statistics' := Statistics,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'statistics' => Statistics,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
