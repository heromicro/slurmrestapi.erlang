-module(slurmrestapi_dbv0_0_37_wckey).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_wckey/0]).

-type slurmrestapi_dbv0_0_37_wckey() ::
    #{ 'accounts' => list(),
       'cluster' => binary(),
       'id' => integer(),
       'name' => binary(),
       'user' => binary(),
       'flags' => list()
     }.

encode(#{ 'accounts' := Accounts,
          'cluster' := Cluster,
          'id' := Id,
          'name' := Name,
          'user' := User,
          'flags' := Flags
        }) ->
    #{ 'accounts' => Accounts,
       'cluster' => Cluster,
       'id' => Id,
       'name' => Name,
       'user' => User,
       'flags' => Flags
     }.
