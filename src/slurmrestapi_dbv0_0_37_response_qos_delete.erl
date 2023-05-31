-module(slurmrestapi_dbv0_0_37_response_qos_delete).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_response_qos_delete/0]).

-type slurmrestapi_dbv0_0_37_response_qos_delete() ::
    #{ 'errors' => list()
     }.

encode(#{ 'errors' := Errors
        }) ->
    #{ 'errors' => Errors
     }.
