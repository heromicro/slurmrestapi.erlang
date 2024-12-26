-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_slurmd_start_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_slurmd_start_time/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_slurmd_start_time() ::
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
