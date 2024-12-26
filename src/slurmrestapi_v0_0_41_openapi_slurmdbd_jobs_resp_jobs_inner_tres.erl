-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_tres/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_tres() ::
    #{ 'allocated' => list(),
       'requested' => list()
     }.

encode(#{ 'allocated' := Allocated,
          'requested' := Requested
        }) ->
    #{ 'allocated' => Allocated,
       'requested' => Requested
     }.
