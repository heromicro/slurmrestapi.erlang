-module(slurmrestapi_v0_0_39_cluster_rec_associations).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_cluster_rec_associations/0]).

-type slurmrestapi_v0_0_39_cluster_rec_associations() ::
    #{ 'root' => slurmrestapi_v0_0_39_assoc_short:slurmrestapi_v0_0_39_assoc_short()
     }.

encode(#{ 'root' := Root
        }) ->
    #{ 'root' => Root
     }.
