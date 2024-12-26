-module(slurmrestapi_v0_0_40_openapi_slurmdbd_qos_removed_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_slurmdbd_qos_removed_resp/0]).

-type slurmrestapi_v0_0_40_openapi_slurmdbd_qos_removed_resp() ::
    #{ 'removed_qos' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'removed_qos' := RemovedQos,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'removed_qos' => RemovedQos,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
