-module(slurmrestapi_v0_0_38_nodes_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_nodes_response/0]).

-type slurmrestapi_v0_0_38_nodes_response() ::
    #{ 'meta' => slurmrestapi_v0_0_38_meta:slurmrestapi_v0_0_38_meta(),
       'errors' => list(),
       'nodes' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'nodes' := Nodes
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'nodes' => Nodes
     }.
