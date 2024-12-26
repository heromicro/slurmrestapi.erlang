-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_socket).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_socket/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_socket() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
