-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_exit_code() ::
    #{ 'status' => list(),
       'return_code' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_return_code:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_return_code(),
       'signal' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal()
     }.

encode(#{ 'status' := Status,
          'return_code' := ReturnCode,
          'signal' := Signal
        }) ->
    #{ 'status' => Status,
       'return_code' => ReturnCode,
       'signal' => Signal
     }.
