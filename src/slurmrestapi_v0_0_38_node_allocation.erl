-module(slurmrestapi_v0_0_38_node_allocation).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_node_allocation/0]).

-type slurmrestapi_v0_0_38_node_allocation() ::
    #{ 'memory' => integer(),
       'cpus' => integer(),
       'sockets' => slurmrestapi_v0_0_38_node_allocation_sockets:slurmrestapi_v0_0_38_node_allocation_sockets(),
       'nodename' => binary()
     }.

encode(#{ 'memory' := Memory,
          'cpus' := Cpus,
          'sockets' := Sockets,
          'nodename' := Nodename
        }) ->
    #{ 'memory' => Memory,
       'cpus' => Cpus,
       'sockets' => Sockets,
       'nodename' => Nodename
     }.
