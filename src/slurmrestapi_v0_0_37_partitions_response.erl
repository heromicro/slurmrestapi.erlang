-module(slurmrestapi_v0_0_37_partitions_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_partitions_response/0]).

-type slurmrestapi_v0_0_37_partitions_response() ::
    #{ 'errors' => list(),
       'partitions' => list()
     }.

encode(#{ 'errors' := Errors,
          'partitions' := Partitions
        }) ->
    #{ 'errors' => Errors,
       'partitions' => Partitions
     }.
