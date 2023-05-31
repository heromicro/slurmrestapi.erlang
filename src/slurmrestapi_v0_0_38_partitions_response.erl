-module(slurmrestapi_v0_0_38_partitions_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_partitions_response/0]).

-type slurmrestapi_v0_0_38_partitions_response() ::
    #{ 'meta' => slurmrestapi_v0_0_38_meta:slurmrestapi_v0_0_38_meta(),
       'errors' => list(),
       'partitions' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'partitions' := Partitions
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'partitions' => Partitions
     }.
