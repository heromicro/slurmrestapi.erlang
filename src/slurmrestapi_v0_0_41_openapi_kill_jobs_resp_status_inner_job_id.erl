-module(slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id/0]).

-type slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id() ::
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
