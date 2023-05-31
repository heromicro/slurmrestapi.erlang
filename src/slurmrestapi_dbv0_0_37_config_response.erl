-module(slurmrestapi_dbv0_0_37_config_response).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_config_response/0]).

-type slurmrestapi_dbv0_0_37_config_response() ::
    #{ 'errors' => list()
     }.

encode(#{ 'errors' := Errors
        }) ->
    #{ 'errors' => Errors
     }.
