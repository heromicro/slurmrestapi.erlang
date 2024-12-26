-module(slurmrestapi_v0_0_39_step_tasks).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_tasks/0]).

-type slurmrestapi_v0_0_39_step_tasks() ::
    #{ 'count' => integer()
     }.

encode(#{ 'count' := Count
        }) ->
    #{ 'count' => Count
     }.
