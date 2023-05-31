-module(slurmrestapi_dbv0_0_38_cluster_info_associations).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_cluster_info_associations/0]).

-type slurmrestapi_dbv0_0_38_cluster_info_associations() ::
    #{ 'root' => slurmrestapi_dbv0_0_38_association_short_info:slurmrestapi_dbv0_0_38_association_short_info()
     }.

encode(#{ 'root' := Root
        }) ->
    #{ 'root' => Root
     }.
