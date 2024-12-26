-module(slurmrestapi_v0_0_40_openapi_job_submit_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_job_submit_response/0]).

-type slurmrestapi_v0_0_40_openapi_job_submit_response() ::
    #{ 'result' => slurmrestapi_v0_0_40_job_submit_response_msg:slurmrestapi_v0_0_40_job_submit_response_msg(),
       'job_id' => integer(),
       'step_id' => binary(),
       'job_submit_user_msg' => binary(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'result' := Result,
          'job_id' := JobId,
          'step_id' := StepId,
          'job_submit_user_msg' := JobSubmitUserMsg,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'result' => Result,
       'job_id' => JobId,
       'step_id' => StepId,
       'job_submit_user_msg' => JobSubmitUserMsg,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
