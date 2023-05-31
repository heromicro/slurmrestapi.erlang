-module(slurmrestapi_dbv0_0_39_response_associations_delete).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_response_associations_delete/0]).

-type slurmrestapi_dbv0_0_39_response_associations_delete() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'removed_associations' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'removed_associations' := RemovedAssociations
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'removed_associations' => RemovedAssociations
     }.
