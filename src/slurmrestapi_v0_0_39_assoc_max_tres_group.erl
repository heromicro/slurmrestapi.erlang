-module(slurmrestapi_v0_0_39_assoc_max_tres_group).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_tres_group/0]).

-type slurmrestapi_v0_0_39_assoc_max_tres_group() ::
    #{ 'minutes' => list(),
       'active' => list()
     }.

encode(#{ 'minutes' := Minutes,
          'active' := Active
        }) ->
    #{ 'minutes' => Minutes,
       'active' => Active
     }.