-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal() ::
    #{ 'id' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code_signal_id(),
       'name' => binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
