-module(slurmrestapi_v0_0_39_step_task).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_task/0]).

-type slurmrestapi_v0_0_39_step_task() ::
    #{ 'distribution' => binary()
     }.

encode(#{ 'distribution' := Distribution
        }) ->
    #{ 'distribution' => Distribution
     }.
