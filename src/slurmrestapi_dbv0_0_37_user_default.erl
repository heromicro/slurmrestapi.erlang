-module(slurmrestapi_dbv0_0_37_user_default).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_user_default/0]).

-type slurmrestapi_dbv0_0_37_user_default() ::
    #{ 'account' => binary(),
       'wckey' => binary()
     }.

encode(#{ 'account' := Account,
          'wckey' := Wckey
        }) ->
    #{ 'account' => Account,
       'wckey' => Wckey
     }.
