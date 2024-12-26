-module(slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare/0]).

-type slurmrestapi_v0_0_40_assoc_shares_obj_wrap_fairshare() ::
    #{ 'factor' => float(),
       'level' => float()
     }.

encode(#{ 'factor' := Factor,
          'level' := Level
        }) ->
    #{ 'factor' => Factor,
       'level' => Level
     }.
