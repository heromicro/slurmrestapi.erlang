-module(slurmrestapi_v0_0_39_job_array_response_msg_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_array_response_msg_inner/0]).

-type slurmrestapi_v0_0_39_job_array_response_msg_inner() ::
    #{ 'job_id' => integer(),
       'error_code' => integer(),
       'error' => binary(),
       'why' => binary()
     }.

encode(#{ 'job_id' := JobId,
          'error_code' := ErrorCode,
          'error' := Error,
          'why' := Why
        }) ->
    #{ 'job_id' => JobId,
       'error_code' => ErrorCode,
       'error' => Error,
       'why' => Why
     }.
