-module(slurmrestapi_v0_0_40_job_array_response_msg_entry).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_job_array_response_msg_entry/0]).

-type slurmrestapi_v0_0_40_job_array_response_msg_entry() ::
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
