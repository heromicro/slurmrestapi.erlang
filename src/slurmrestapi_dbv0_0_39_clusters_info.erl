-module(slurmrestapi_dbv0_0_39_clusters_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_clusters_info/0]).

-type slurmrestapi_dbv0_0_39_clusters_info() ::
    #{ 'meta' => slurmrestapi_dbv0_0_39_meta:slurmrestapi_dbv0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'clusters' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'clusters' := Clusters
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'clusters' => Clusters
     }.
