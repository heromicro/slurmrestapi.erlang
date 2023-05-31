-module(slurmrestapi_v0_0_39_licenses_info).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_licenses_info/0]).

-type slurmrestapi_v0_0_39_licenses_info() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'licenses' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'licenses' := Licenses
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'licenses' => Licenses
     }.
