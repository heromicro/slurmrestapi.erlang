-module(slurmrestapi_v0_0_40_user_default).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_user_default/0]).

-type slurmrestapi_v0_0_40_user_default() ::
    #{ 'account' => binary(),
       'wckey' => binary()
     }.

encode(#{ 'account' := Account,
          'wckey' := Wckey
        }) ->
    #{ 'account' => Account,
       'wckey' => Wckey
     }.
