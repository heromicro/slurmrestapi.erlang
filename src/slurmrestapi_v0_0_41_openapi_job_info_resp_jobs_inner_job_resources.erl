-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources() ::
    #{ 'select_type' := list(),
       'nodes' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_nodes(),
       'cpus' := integer(),
       'threads_per_core' := slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_threads_per_core:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources_threads_per_core()
     }.

encode(#{ 'select_type' := SelectType,
          'nodes' := Nodes,
          'cpus' := Cpus,
          'threads_per_core' := ThreadsPerCore
        }) ->
    #{ 'select_type' => SelectType,
       'nodes' => Nodes,
       'cpus' => Cpus,
       'threads_per_core' => ThreadsPerCore
     }.
