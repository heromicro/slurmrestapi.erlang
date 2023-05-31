-module(slurmrestapi_v0_0_37_node_allocation).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_node_allocation/0]).

-type slurmrestapi_v0_0_37_node_allocation() ::
    #{ 'memory' => integer(),
       'cpus' => maps:map(),
       'sockets' => maps:map(),
       'cores' => maps:map()
     }.

encode(#{ 'memory' := Memory,
          'cpus' := Cpus,
          'sockets' := Sockets,
          'cores' := Cores
        }) ->
    #{ 'memory' => Memory,
       'cpus' => Cpus,
       'sockets' => Sockets,
       'cores' => Cores
     }.
