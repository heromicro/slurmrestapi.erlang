-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner() ::
    #{ 'index' := integer(),
       'name' := binary(),
       'cpus' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_cpus:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_cpus(),
       'memory' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_memory:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes_allocation_inner_memory(),
       'sockets' := list()
     }.

encode(#{ 'index' := Index,
          'name' := Name,
          'cpus' := Cpus,
          'memory' := Memory,
          'sockets' := Sockets
        }) ->
    #{ 'index' => Index,
       'name' => Name,
       'cpus' => Cpus,
       'memory' => Memory,
       'sockets' => Sockets
     }.
