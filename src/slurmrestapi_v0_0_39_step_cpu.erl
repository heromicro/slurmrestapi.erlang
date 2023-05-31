-module(slurmrestapi_v0_0_39_step_cpu).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_cpu/0]).

-type slurmrestapi_v0_0_39_step_cpu() ::
    #{ 'governor' => binary()
     }.

encode(#{ 'governor' := Governor
        }) ->
    #{ 'governor' => Governor
     }.
