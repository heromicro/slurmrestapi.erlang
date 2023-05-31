-module(slurmrestapi_v0_0_39_partitions_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partitions_response/0]).

-type slurmrestapi_v0_0_39_partitions_response() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'partitions' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'partitions' := Partitions
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'partitions' => Partitions
     }.
