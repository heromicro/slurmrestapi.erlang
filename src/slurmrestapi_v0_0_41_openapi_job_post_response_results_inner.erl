-module(slurmrestapi_v0_0_41_openapi_job_post_response_results_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_post_response_results_inner/0]).

-type slurmrestapi_v0_0_41_openapi_job_post_response_results_inner() ::
    #{ 'job_id' => integer(),
       'step_id' => binary(),
       'error' => binary(),
       'error_code' => integer(),
       'why' => binary()
     }.

encode(#{ 'job_id' := JobId,
          'step_id' := StepId,
          'error' := Error,
          'error_code' := ErrorCode,
          'why' := Why
        }) ->
    #{ 'job_id' => JobId,
       'step_id' => StepId,
       'error' => Error,
       'error_code' => ErrorCode,
       'why' => Why
     }.
