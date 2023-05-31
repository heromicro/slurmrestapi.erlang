-module(slurmrestapi_v0_0_39_assoc_min).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_min/0]).

-type slurmrestapi_v0_0_39_assoc_min() ::
    #{ 'priority_threshold' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'priority_threshold' := PriorityThreshold
        }) ->
    #{ 'priority_threshold' => PriorityThreshold
     }.
