-module(slurmrestapi_v0_0_40_step_tres_consumed).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_step_tres_consumed/0]).

-type slurmrestapi_v0_0_40_step_tres_consumed() ::
    #{ 'max' => list(),
       'min' => list(),
       'average' => list(),
       'total' => list()
     }.

encode(#{ 'max' := Max,
          'min' := Min,
          'average' := Average,
          'total' := Total
        }) ->
    #{ 'max' => Max,
       'min' => Min,
       'average' => Average,
       'total' => Total
     }.
