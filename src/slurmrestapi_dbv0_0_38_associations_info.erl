-module(slurmrestapi_dbv0_0_38_associations_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_associations_info/0]).

-type slurmrestapi_dbv0_0_38_associations_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list(),
       'associations' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'associations' := Associations
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'associations' => Associations
     }.
