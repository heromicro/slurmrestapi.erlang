-module(slurmrestapi_dbv0_0_38_cluster_info_controller).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_cluster_info_controller/0]).

-type slurmrestapi_dbv0_0_38_cluster_info_controller() ::
    #{ 'host' => binary(),
       'port' => integer()
     }.

encode(#{ 'host' := Host,
          'port' := Port
        }) ->
    #{ 'host' => Host,
       'port' => Port
     }.
