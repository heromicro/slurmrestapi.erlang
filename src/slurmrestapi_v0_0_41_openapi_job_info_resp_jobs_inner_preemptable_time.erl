-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_preemptable_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_preemptable_time/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_preemptable_time() ::
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
