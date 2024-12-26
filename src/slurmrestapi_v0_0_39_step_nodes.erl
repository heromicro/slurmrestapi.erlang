-module(slurmrestapi_v0_0_39_step_nodes).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_nodes/0]).

-type slurmrestapi_v0_0_39_step_nodes() ::
    #{ 'count' => integer(),
       'range' => binary(),
       'list' => list()
     }.

encode(#{ 'count' := Count,
          'range' := Range,
          'list' := List
        }) ->
    #{ 'count' => Count,
       'range' => Range,
       'list' => List
     }.
