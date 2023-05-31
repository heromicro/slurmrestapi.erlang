-module(slurmrestapi_v0_0_39_cluster_rec_controller).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_cluster_rec_controller/0]).

-type slurmrestapi_v0_0_39_cluster_rec_controller() ::
    #{ 'port' => integer()
     }.

encode(#{ 'port' := Port
        }) ->
    #{ 'port' => Port
     }.
