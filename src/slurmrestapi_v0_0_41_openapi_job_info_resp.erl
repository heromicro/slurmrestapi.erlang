-module(slurmrestapi_v0_0_41_openapi_job_info_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp() ::
    #{ 'jobs' := list(),
       'last_backfill' := slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill:slurmrestapi_v0_0_41_openapi_job_info_resp_last_backfill(),
       'last_update' := slurmrestapi_v0_0_41_openapi_job_info_resp_last_update:slurmrestapi_v0_0_41_openapi_job_info_resp_last_update(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
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
