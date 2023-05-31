-module(slurmrestapi_v0_0_38_node_allocation_sockets).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_node_allocation_sockets/0]).

-type slurmrestapi_v0_0_38_node_allocation_sockets() ::
    #{ 'cores' => maps:map()
     }.

encode(#{ 'cores' := Cores
        }) ->
    #{ 'cores' => Cores
     }.
