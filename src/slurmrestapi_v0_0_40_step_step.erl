-module(slurmrestapi_v0_0_40_step_step).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_step_step/0]).

-type slurmrestapi_v0_0_40_step_step() ::
    #{ 'id' => binary(),
       'name' => binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
