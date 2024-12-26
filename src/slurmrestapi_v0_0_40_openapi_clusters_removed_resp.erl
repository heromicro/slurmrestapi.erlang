-module(slurmrestapi_v0_0_40_openapi_clusters_removed_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_clusters_removed_resp/0]).

-type slurmrestapi_v0_0_40_openapi_clusters_removed_resp() ::
    #{ 'deleted_clusters' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'deleted_clusters' := DeletedClusters,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'deleted_clusters' => DeletedClusters,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
