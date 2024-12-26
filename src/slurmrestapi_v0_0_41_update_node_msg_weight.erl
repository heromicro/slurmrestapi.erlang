-module(slurmrestapi_v0_0_41_update_node_msg_weight).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_update_node_msg_weight/0]).

-type slurmrestapi_v0_0_41_update_node_msg_weight() ::
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
