-module(slurmrestapi_v0_0_40_job_res).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_job_res/0]).

-type slurmrestapi_v0_0_40_job_res() ::
    #{ 'nodes' => binary(),
       'allocated_cores' => integer(),
       'allocated_cpus' => integer(),
       'allocated_hosts' => integer(),
       'allocated_nodes' => list()
     }.

encode(#{ 'nodes' := Nodes,
          'allocated_cores' := AllocatedCores,
          'allocated_cpus' := AllocatedCpus,
          'allocated_hosts' := AllocatedHosts,
          'allocated_nodes' := AllocatedNodes
        }) ->
    #{ 'nodes' => Nodes,
       'allocated_cores' => AllocatedCores,
       'allocated_cpus' => AllocatedCpus,
       'allocated_hosts' => AllocatedHosts,
       'allocated_nodes' => AllocatedNodes
     }.
