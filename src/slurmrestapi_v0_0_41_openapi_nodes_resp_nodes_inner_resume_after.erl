-module(slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_resume_after).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_resume_after/0]).

-type slurmrestapi_v0_0_41_openapi_nodes_resp_nodes_inner_resume_after() ::
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
