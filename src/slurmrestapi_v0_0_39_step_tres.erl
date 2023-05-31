-module(slurmrestapi_v0_0_39_step_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_tres/0]).

-type slurmrestapi_v0_0_39_step_tres() ::
    #{ 'allocated' => list()
     }.

encode(#{ 'allocated' := Allocated
        }) ->
    #{ 'allocated' => Allocated
     }.
