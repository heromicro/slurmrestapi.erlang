-module(slurmrestapi_v0_0_40_openapi_slurmdbd_stats_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_slurmdbd_stats_resp/0]).

-type slurmrestapi_v0_0_40_openapi_slurmdbd_stats_resp() ::
    #{ 'statistics' := slurmrestapi_v0_0_40_stats_rec:slurmrestapi_v0_0_40_stats_rec(),
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
