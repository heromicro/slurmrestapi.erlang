-module(slurmrestapi_dbv0_0_37_response_cluster_add).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_response_cluster_add/0]).

-type slurmrestapi_dbv0_0_37_response_cluster_add() ::
    #{ 'errors' => list()
     }.

encode(#{ 'errors' := Errors
        }) ->
    #{ 'errors' => Errors
     }.
