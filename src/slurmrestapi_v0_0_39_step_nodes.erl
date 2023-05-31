-module(slurmrestapi_v0_0_39_step_nodes).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_nodes/0]).

-type slurmrestapi_v0_0_39_step_nodes() ::
    #{ 'list' => list()
     }.

encode(#{ 'list' := List
        }) ->
    #{ 'list' => List
     }.
