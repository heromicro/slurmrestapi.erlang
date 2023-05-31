-module(slurmrestapi_dbv0_0_39_associations_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_associations_info/0]).

-type slurmrestapi_dbv0_0_39_associations_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'associations' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'associations' := Associations
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'associations' => Associations
     }.
