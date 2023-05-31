-module(slurmrestapi_dbv0_0_38_response_qos).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_response_qos/0]).

-type slurmrestapi_dbv0_0_38_response_qos() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors
     }.
