-module(slurmrestapi_v0_0_40_openapi_job_info_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_job_info_resp/0]).

-type slurmrestapi_v0_0_40_openapi_job_info_resp() ::
    #{ 'jobs' := list(),
       'last_backfill' := slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'last_update' := slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'jobs' := Jobs,
          'last_backfill' := LastBackfill,
          'last_update' := LastUpdate,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'jobs' => Jobs,
       'last_backfill' => LastBackfill,
       'last_update' => LastUpdate,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
