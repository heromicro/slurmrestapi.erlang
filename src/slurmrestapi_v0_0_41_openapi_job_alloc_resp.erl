-module(slurmrestapi_v0_0_41_openapi_job_alloc_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_alloc_resp/0]).

-type slurmrestapi_v0_0_41_openapi_job_alloc_resp() ::
    #{ 'job_id' => integer(),
       'job_submit_user_msg' => binary(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'job_id' := JobId,
          'job_submit_user_msg' := JobSubmitUserMsg,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'job_id' => JobId,
       'job_submit_user_msg' => JobSubmitUserMsg,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
