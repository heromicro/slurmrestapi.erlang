-module(slurmrestapi_dbv0_0_37_response_associations).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_response_associations/0]).

-type slurmrestapi_dbv0_0_37_response_associations() ::
    #{ 'errors' => list()
     }.

encode(#{ 'errors' := Errors
        }) ->
    #{ 'errors' => Errors
     }.
