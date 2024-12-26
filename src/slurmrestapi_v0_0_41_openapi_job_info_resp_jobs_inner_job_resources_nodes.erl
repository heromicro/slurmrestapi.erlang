-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes() ::
    #{ 'count' => integer(),
       'select_type' => list(),
       'list' => binary(),
       'whole' => boolean(),
       'allocation' => list()
     }.

encode(#{ 'count' := Count,
          'select_type' := SelectType,
          'list' := List,
          'whole' := Whole,
          'allocation' := Allocation
        }) ->
    #{ 'count' => Count,
       'select_type' => SelectType,
       'list' => List,
       'whole' => Whole,
       'allocation' => Allocation
     }.
