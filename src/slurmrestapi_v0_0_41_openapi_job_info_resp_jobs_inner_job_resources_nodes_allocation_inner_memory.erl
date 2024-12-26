-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_memory).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_memory/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_memory() ::
    #{ 'used' => integer(),
       'allocated' => integer()
     }.

encode(#{ 'used' := Used,
          'allocated' := Allocated
        }) ->
    #{ 'used' => Used,
       'allocated' => Allocated
     }.
