-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_tres_requested_max_inner() ::
    #{ 'type' := binary(),
       'name' => binary(),
       'id' => integer(),
       'count' => integer()
     }.

encode(#{ 'type' := Type,
          'name' := Name,
          'id' := Id,
          'count' := Count
        }) ->
    #{ 'type' => Type,
       'name' => Name,
       'id' => Id,
       'count' => Count
     }.
