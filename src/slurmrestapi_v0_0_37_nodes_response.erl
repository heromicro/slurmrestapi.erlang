-module(slurmrestapi_v0_0_37_nodes_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_nodes_response/0]).

-type slurmrestapi_v0_0_37_nodes_response() ::
    #{ 'errors' => list(),
       'nodes' => list()
     }.

encode(#{ 'errors' := Errors,
          'nodes' := Nodes
        }) ->
    #{ 'errors' => Errors,
       'nodes' => Nodes
     }.
