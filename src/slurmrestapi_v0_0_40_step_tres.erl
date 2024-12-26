-module(slurmrestapi_v0_0_40_step_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_step_tres/0]).

-type slurmrestapi_v0_0_40_step_tres() ::
    #{ 'requested' => slurmrestapi_v0_0_40_step_tres_requested:slurmrestapi_v0_0_40_step_tres_requested(),
       'consumed' => slurmrestapi_v0_0_40_step_tres_consumed:slurmrestapi_v0_0_40_step_tres_consumed(),
       'allocated' => list()
     }.

encode(#{ 'requested' := Requested,
          'consumed' := Consumed,
          'allocated' := Allocated
        }) ->
    #{ 'requested' => Requested,
       'consumed' => Consumed,
       'allocated' => Allocated
     }.
