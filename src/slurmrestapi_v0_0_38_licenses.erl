-module(slurmrestapi_v0_0_38_licenses).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_licenses/0]).

-type slurmrestapi_v0_0_38_licenses() ::
    #{ 'errors' => list(),
       'licenses' => list()
     }.

encode(#{ 'errors' := Errors,
          'licenses' := Licenses
        }) ->
    #{ 'errors' => Errors,
       'licenses' => Licenses
     }.
