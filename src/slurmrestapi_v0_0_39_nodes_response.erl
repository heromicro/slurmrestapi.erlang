-module(slurmrestapi_v0_0_39_nodes_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_nodes_response/0]).

-type slurmrestapi_v0_0_39_nodes_response() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'nodes' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'nodes' := Nodes
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'nodes' => Nodes
     }.
