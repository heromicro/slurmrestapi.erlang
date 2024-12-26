-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations() ::
    #{ 'root' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_clusters_inner_associations_root()
     }.

encode(#{ 'root' := Root
        }) ->
    #{ 'root' => Root
     }.
