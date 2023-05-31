-module(slurmrestapi_dbv0_0_38_qos_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_qos_info/0]).

-type slurmrestapi_dbv0_0_38_qos_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_38_meta:slurmrestapi_dbv0_0_38_meta(),
       'errors' => list(),
       'qos' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'qos' := Qos
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'qos' => Qos
     }.
