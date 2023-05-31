-module(slurmrestapi_dbv0_0_38_association_short_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_association_short_info/0]).

-type slurmrestapi_dbv0_0_38_association_short_info() ::
    #{ 'account' => binary(),
       'cluster' => binary(),
       'partition' => binary(),
       'user' => binary()
     }.

encode(#{ 'account' := Account,
          'cluster' := Cluster,
          'partition' := Partition,
          'user' := User
        }) ->
    #{ 'account' => Account,
       'cluster' => Cluster,
       'partition' => Partition,
       'user' => User
     }.
