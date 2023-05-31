-module(slurmrestapi_v0_0_39_assoc_short).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_short/0]).

-type slurmrestapi_v0_0_39_assoc_short() ::
    #{ 'account' => binary(),
       'cluster' => binary(),
       'partition' => binary(),
       'user' := binary()
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
