-module(slurmrestapi_status).

-export([encode/1]).

-export_type([slurmrestapi_status/0]).

-type slurmrestapi_status() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
