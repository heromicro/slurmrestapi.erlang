-module(slurmrestapi_v0_0_40_assoc_short).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc_short/0]).

-type slurmrestapi_v0_0_40_assoc_short() ::
    #{ 'account' => binary(),
       'cluster' => binary(),
       'partition' => binary(),
       'user' := binary(),
       'id' => integer()
     }.

encode(#{ 'account' := Account,
          'cluster' := Cluster,
          'partition' := Partition,
          'user' := User,
          'id' := Id
        }) ->
    #{ 'account' => Account,
       'cluster' => Cluster,
       'partition' => Partition,
       'user' => User,
       'id' => Id
     }.
