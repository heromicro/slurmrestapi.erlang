-module(slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp() ::
    #{ 'qos' := list(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'qos' := Qos,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'qos' => Qos,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.