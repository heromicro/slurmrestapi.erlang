-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_nodes).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_nodes/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_nodes() ::
    #{ 'count' => integer(),
       'range' => binary(),
       'list' => list()
     }.

encode(#{ 'count' := Count,
          'range' := Range,
          'list' := List
        }) ->
    #{ 'count' => Count,
       'range' => Range,
       'list' => List
     }.
