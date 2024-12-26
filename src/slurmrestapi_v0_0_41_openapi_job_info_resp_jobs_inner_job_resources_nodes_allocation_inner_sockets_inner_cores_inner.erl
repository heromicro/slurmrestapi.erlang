-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_sockets_inner_cores_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_sockets_inner_cores_inner/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_sockets_inner_cores_inner() ::
    #{ 'index' := integer(),
       'status' := list()
     }.

encode(#{ 'index' := Index,
          'status' := Status
        }) ->
    #{ 'index' => Index,
       'status' => Status
     }.
