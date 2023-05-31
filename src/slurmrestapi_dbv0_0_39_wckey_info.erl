-module(slurmrestapi_dbv0_0_39_wckey_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_wckey_info/0]).

-type slurmrestapi_dbv0_0_39_wckey_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'errors' => list(),
       'wckeys' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'wckeys' := Wckeys
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'wckeys' => Wckeys
     }.
