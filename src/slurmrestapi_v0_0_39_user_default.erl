-module(slurmrestapi_v0_0_39_user_default).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_user_default/0]).

-type slurmrestapi_v0_0_39_user_default() ::
    #{ 'wckey' => binary()
     }.

encode(#{ 'wckey' := Wckey
        }) ->
    #{ 'wckey' => Wckey
     }.
