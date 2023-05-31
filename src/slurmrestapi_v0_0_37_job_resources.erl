-module(slurmrestapi_v0_0_37_job_resources).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_job_resources/0]).

-type slurmrestapi_v0_0_37_job_resources() ::
    #{ 'nodes' => binary(),
       'allocated_cpus' => integer(),
       'allocated_hosts' => integer(),
       'allocated_nodes' => list()
     }.

encode(#{ 'nodes' := Nodes,
          'allocated_cpus' := AllocatedCpus,
          'allocated_hosts' := AllocatedHosts,
          'allocated_nodes' := AllocatedNodes
        }) ->
    #{ 'nodes' => Nodes,
       'allocated_cpus' => AllocatedCpus,
       'allocated_hosts' => AllocatedHosts,
       'allocated_nodes' => AllocatedNodes
     }.
