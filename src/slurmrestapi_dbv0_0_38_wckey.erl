-module(slurmrestapi_dbv0_0_38_wckey).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_wckey/0]).

-type slurmrestapi_dbv0_0_38_wckey() ::
    #{ 'cluster' => binary(),
       'id' => integer(),
       'name' => binary(),
       'user' => binary(),
       'flags' => list(),
       'accounting' => list()
     }.

encode(#{ 'cluster' := Cluster,
          'id' := Id,
          'name' := Name,
          'user' := User,
          'flags' := Flags,
          'accounting' := Accounting
        }) ->
    #{ 'cluster' => Cluster,
       'id' => Id,
       'name' => Name,
       'user' => User,
       'flags' => Flags,
       'accounting' => Accounting
     }.
