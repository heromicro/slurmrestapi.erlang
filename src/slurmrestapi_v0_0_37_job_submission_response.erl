-module(slurmrestapi_v0_0_37_job_submission_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_job_submission_response/0]).

-type slurmrestapi_v0_0_37_job_submission_response() ::
    #{ 'errors' => list(),
       'job_id' => integer(),
       'step_id' => binary(),
       'job_submit_user_msg' => binary()
     }.

encode(#{ 'errors' := Errors,
          'job_id' := JobId,
          'step_id' := StepId,
          'job_submit_user_msg' := JobSubmitUserMsg
        }) ->
    #{ 'errors' => Errors,
       'job_id' => JobId,
       'step_id' => StepId,
       'job_submit_user_msg' => JobSubmitUserMsg
     }.
