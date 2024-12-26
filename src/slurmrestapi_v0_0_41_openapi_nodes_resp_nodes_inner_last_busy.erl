-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_last_busy() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
