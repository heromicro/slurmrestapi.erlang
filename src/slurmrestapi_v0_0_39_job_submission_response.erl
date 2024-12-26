-module(slurmrestapi_v0_0_39_job_submission_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_submission_response/0]).

-type slurmrestapi_v0_0_39_job_submission_response() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'job_id' => integer(),
       'step_id' => binary(),
       'job_submit_user_msg' => binary()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'job_id' := JobId,
          'step_id' := StepId,
          'job_submit_user_msg' := JobSubmitUserMsg
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'job_id' => JobId,
       'step_id' => StepId,
       'job_submit_user_msg' => JobSubmitUserMsg
     }.
