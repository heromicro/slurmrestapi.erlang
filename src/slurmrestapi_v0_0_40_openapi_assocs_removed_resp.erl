-module(slurmrestapi_v0_0_40_openapi_assocs_removed_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_assocs_removed_resp/0]).

-type slurmrestapi_v0_0_40_openapi_assocs_removed_resp() ::
    #{ 'removed_associations' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'removed_associations' := RemovedAssociations,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'removed_associations' => RemovedAssociations,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
