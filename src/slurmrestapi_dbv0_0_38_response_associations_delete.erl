-module(slurmrestapi_dbv0_0_38_response_associations_delete).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_response_associations_delete/0]).

-type slurmrestapi_dbv0_0_38_response_associations_delete() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list(),
       'removed_associations' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'removed_associations' := RemovedAssociations
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'removed_associations' => RemovedAssociations
     }.
