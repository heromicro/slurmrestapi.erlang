-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power() ::
    #{ 'flags' => list()
     }.

encode(#{ 'flags' := Flags
        }) ->
    #{ 'flags' => Flags
     }.
