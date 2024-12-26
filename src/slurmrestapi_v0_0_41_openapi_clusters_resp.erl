-module(slurmrestapi_v0_0_41_openapi_clusters_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_clusters_resp/0]).

-type slurmrestapi_v0_0_41_openapi_clusters_resp() ::
    #{ 'clusters' := list(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'clusters' := Clusters,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'clusters' => Clusters,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
