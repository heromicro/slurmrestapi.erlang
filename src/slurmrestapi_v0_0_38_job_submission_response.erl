-module(slurmrestapi_v0_0_38_job_submission_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_job_submission_response/0]).

-type slurmrestapi_v0_0_38_job_submission_response() ::
    #{ 'meta' => slurmrestapi_v0_0_38_meta:slurmrestapi_v0_0_38_meta(),
       'errors' => list(),
       'job_id' => integer(),
       'step_id' => binary(),
       'job_submit_user_msg' => binary()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'job_id' := JobId,
          'step_id' := StepId,
          'job_submit_user_msg' := JobSubmitUserMsg
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'job_id' => JobId,
       'step_id' => StepId,
       'job_submit_user_msg' => JobSubmitUserMsg
     }.
