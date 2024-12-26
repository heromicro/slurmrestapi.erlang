-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres() ::
    #{ 'requested' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested(),
       'consumed' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_consumed:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_consumed(),
       'allocated' => list()
     }.

encode(#{ 'requested' := Requested,
          'consumed' := Consumed,
          'allocated' := Allocated
        }) ->
    #{ 'requested' => Requested,
       'consumed' => Consumed,
       'allocated' => Allocated
     }.
