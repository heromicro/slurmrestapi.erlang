-module(slurmrestapi_v0_0_41_openapi_partition_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp() ::
    #{ 'partitions' := list(),
       'last_update' := slurmrestapi_v0_0_41_openapi_partition_resp_last_update:slurmrestapi_v0_0_41_openapi_partition_resp_last_update(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'partitions' := Partitions,
          'last_update' := LastUpdate,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'partitions' => Partitions,
       'last_update' => LastUpdate,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
