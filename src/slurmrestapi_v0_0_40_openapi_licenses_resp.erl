-module(slurmrestapi_v0_0_40_openapi_licenses_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_licenses_resp/0]).

-type slurmrestapi_v0_0_40_openapi_licenses_resp() ::
    #{ 'licenses' := list(),
       'last_update' := slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'licenses' := Licenses,
          'last_update' := LastUpdate,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'licenses' => Licenses,
       'last_update' => LastUpdate,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
