-module(slurmrestapi_dbv0_0_37_associations_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_associations_info/0]).

-type slurmrestapi_dbv0_0_37_associations_info() ::
    #{ 'errors' => list(),
       'associations' => list()
     }.

encode(#{ 'errors' := Errors,
          'associations' := Associations
        }) ->
    #{ 'errors' => Errors,
       'associations' => Associations
     }.
