-module(slurmrestapi_v0_0_40_user_short).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_user_short/0]).

-type slurmrestapi_v0_0_40_user_short() ::
    #{ 'adminlevel' => list(),
       'defaultaccount' => binary(),
       'defaultwckey' => binary()
     }.

encode(#{ 'adminlevel' := Adminlevel,
          'defaultaccount' := Defaultaccount,
          'defaultwckey' := Defaultwckey
        }) ->
    #{ 'adminlevel' => Adminlevel,
       'defaultaccount' => Defaultaccount,
       'defaultwckey' => Defaultwckey
     }.
