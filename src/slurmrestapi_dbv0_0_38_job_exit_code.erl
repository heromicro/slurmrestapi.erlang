-module(slurmrestapi_dbv0_0_38_job_exit_code).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_exit_code/0]).

-type slurmrestapi_dbv0_0_38_job_exit_code() ::
    #{ 'status' => binary(),
       'return_code' => integer(),
       'signal' => slurmrestapi_dbv0_0_38_job_exit_code_signal:slurmrestapi_dbv0_0_38_job_exit_code_signal()
     }.

encode(#{ 'status' := Status,
          'return_code' := ReturnCode,
          'signal' := Signal
        }) ->
    #{ 'status' => Status,
       'return_code' => ReturnCode,
       'signal' => Signal
     }.
