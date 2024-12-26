-module(slurmrestapi_v0_0_39_cluster_rec_controller).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_cluster_rec_controller/0]).

-type slurmrestapi_v0_0_39_cluster_rec_controller() ::
    #{ 'host' => binary(),
       'port' => integer()
     }.

encode(#{ 'host' := Host,
          'port' := Port
        }) ->
    #{ 'host' => Host,
       'port' => Port
     }.
