-module(slurmrestapi_dbv0_0_38_clusters_properties).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_clusters_properties/0]).

-type slurmrestapi_dbv0_0_38_clusters_properties() ::
    #{ 'clusters' => slurmrestapi_dbv0_0_38_cluster_info:slurmrestapi_dbv0_0_38_cluster_info()
     }.

encode(#{ 'clusters' := Clusters
        }) ->
    #{ 'clusters' => Clusters
     }.
