-module(slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres/0]).

-type slurmrestapi_v0_0_40_assoc_shares_obj_wrap_tres() ::
    #{ 'run_seconds' => list(),
       'group_minutes' => list(),
       'usage' => list()
     }.

encode(#{ 'run_seconds' := RunSeconds,
          'group_minutes' := GroupMinutes,
          'usage' := Usage
        }) ->
    #{ 'run_seconds' => RunSeconds,
       'group_minutes' => GroupMinutes,
       'usage' => Usage
     }.
