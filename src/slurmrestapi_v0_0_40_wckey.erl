-module(slurmrestapi_v0_0_40_wckey).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_wckey/0]).

-type slurmrestapi_v0_0_40_wckey() ::
    #{ 'accounting' => list(),
       'cluster' := binary(),
       'id' => integer(),
       'name' := binary(),
       'user' := binary(),
       'flags' => list()
     }.

encode(#{ 'accounting' := Accounting,
          'cluster' := Cluster,
          'id' := Id,
          'name' := Name,
          'user' := User,
          'flags' := Flags
        }) ->
    #{ 'accounting' => Accounting,
       'cluster' => Cluster,
       'id' => Id,
       'name' => Name,
       'user' => User,
       'flags' => Flags
     }.
