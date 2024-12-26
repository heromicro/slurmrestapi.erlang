-module(slurmrestapi_v0_0_40_assoc_max_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max_per/0]).

-type slurmrestapi_v0_0_40_assoc_max_per() ::
    #{ 'account' => slurmrestapi_v0_0_40_assoc_max_per_account:slurmrestapi_v0_0_40_assoc_max_per_account()
     }.

encode(#{ 'account' := Account
        }) ->
    #{ 'account' => Account
     }.
