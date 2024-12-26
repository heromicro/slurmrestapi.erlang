-module(slurmrestapi_v0_0_41_openapi_job_submit_response_result).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_submit_response_result/0]).

-type slurmrestapi_v0_0_41_openapi_job_submit_response_result() ::
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
