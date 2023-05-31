-module(slurmrestapi_dbv0_0_37_association_min).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_min/0]).

-type slurmrestapi_dbv0_0_37_association_min() ::
    #{ 'priority_threshold' => integer()
     }.

encode(#{ 'priority_threshold' := PriorityThreshold
        }) ->
    #{ 'priority_threshold' => PriorityThreshold
     }.
