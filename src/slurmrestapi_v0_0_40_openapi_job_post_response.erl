-module(slurmrestapi_v0_0_40_openapi_job_post_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_job_post_response/0]).

-type slurmrestapi_v0_0_40_openapi_job_post_response() ::
    #{ 'results' => list(),
       'job_id' => binary(),
       'step_id' => binary(),
       'job_submit_user_msg' => binary(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'results' := Results,
          'job_id' := JobId,
          'step_id' := StepId,
          'job_submit_user_msg' := JobSubmitUserMsg,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'results' => Results,
       'job_id' => JobId,
       'step_id' => StepId,
       'job_submit_user_msg' => JobSubmitUserMsg,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
