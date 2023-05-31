-module(slurmrestapi_dbv0_0_37_qos_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_info/0]).

-type slurmrestapi_dbv0_0_37_qos_info() ::
    #{ 'errors' => list(),
       'qos' => list()
     }.

encode(#{ 'errors' := Errors,
          'qos' := Qos
        }) ->
    #{ 'errors' => Errors,
       'qos' => Qos
     }.
