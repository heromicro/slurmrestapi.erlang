-module(slurmrestapi_dbv0_0_37_wckey_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_wckey_info/0]).

-type slurmrestapi_dbv0_0_37_wckey_info() ::
    #{ 'errors' => list(),
       'wckeys' => list()
     }.

encode(#{ 'errors' := Errors,
          'wckeys' := Wckeys
        }) ->
    #{ 'errors' => Errors,
       'wckeys' => Wckeys
     }.
