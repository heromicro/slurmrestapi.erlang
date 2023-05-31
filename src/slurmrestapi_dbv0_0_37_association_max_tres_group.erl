-module(slurmrestapi_dbv0_0_37_association_max_tres_group).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_max_tres_group/0]).

-type slurmrestapi_dbv0_0_37_association_max_tres_group() ::
    #{ 'minutes' => list(),
       'active' => list()
     }.

encode(#{ 'minutes' := Minutes,
          'active' := Active
        }) ->
    #{ 'minutes' => Minutes,
       'active' => Active
     }.
