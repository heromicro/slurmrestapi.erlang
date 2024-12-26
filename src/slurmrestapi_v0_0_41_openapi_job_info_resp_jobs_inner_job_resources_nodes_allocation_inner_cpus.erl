-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_cpus).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_cpus/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_cpus() ::
    #{ 'count' => integer(),
       'used' => integer()
     }.

encode(#{ 'count' := Count,
          'used' := Used
        }) ->
    #{ 'count' => Count,
       'used' => Used
     }.
