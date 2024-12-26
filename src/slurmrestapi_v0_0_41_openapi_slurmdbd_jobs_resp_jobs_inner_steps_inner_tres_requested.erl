-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested() ::
    #{ 'max' => list(),
       'min' => list(),
       'average' => list(),
       'total' => list()
     }.

encode(#{ 'max' := Max,
          'min' := Min,
          'average' := Average,
          'total' := Total
        }) ->
    #{ 'max' => Max,
       'min' => Min,
       'average' => Average,
       'total' => Total
     }.
