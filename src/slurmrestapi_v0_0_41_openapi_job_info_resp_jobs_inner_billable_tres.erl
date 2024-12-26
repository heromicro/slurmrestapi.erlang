-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => float()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
