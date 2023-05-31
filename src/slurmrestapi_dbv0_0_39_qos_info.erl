-module(slurmrestapi_dbv0_0_39_qos_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_qos_info/0]).

-type slurmrestapi_dbv0_0_39_qos_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'warnings' => list(),
       'errors' => list(),
       'qos' => list()
     }.

encode(#{ 'meta' := Meta,
          'warnings' := Warnings,
          'errors' := Errors,
          'qos' := Qos
        }) ->
    #{ 'meta' => Meta,
       'warnings' => Warnings,
       'errors' => Errors,
       'qos' => Qos
     }.
