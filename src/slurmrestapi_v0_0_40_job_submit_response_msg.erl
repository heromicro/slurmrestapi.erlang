-module(slurmrestapi_v0_0_40_job_submit_response_msg).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_job_submit_response_msg/0]).

-type slurmrestapi_v0_0_40_job_submit_response_msg() ::
    #{ 'job_id' => integer(),
       'step_id' => binary(),
       'error_code' => integer(),
       'error' => binary(),
       'job_submit_user_msg' => binary()
     }.

encode(#{ 'job_id' := JobId,
          'step_id' := StepId,
          'error_code' := ErrorCode,
          'error' := Error,
          'job_submit_user_msg' := JobSubmitUserMsg
        }) ->
    #{ 'job_id' => JobId,
       'step_id' => StepId,
       'error_code' => ErrorCode,
       'error' => Error,
       'job_submit_user_msg' => JobSubmitUserMsg
     }.
