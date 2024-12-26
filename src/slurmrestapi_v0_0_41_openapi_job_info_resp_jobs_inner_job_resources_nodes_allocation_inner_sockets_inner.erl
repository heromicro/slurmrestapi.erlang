-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_sockets_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_sockets_inner/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_sockets_inner() ::
    #{ 'index' := integer(),
       'cores' := list()
     }.

encode(#{ 'index' := Index,
          'cores' := Cores
        }) ->
    #{ 'index' => Index,
       'cores' => Cores
     }.
