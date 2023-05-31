-module(slurmrestapi_dbv0_0_38_association).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_association/0]).

-type slurmrestapi_dbv0_0_38_association() ::
    #{ 'account' => binary(),
       'cluster' => binary(),
       'default' => slurmrestapi_dbv0_0_38_association_default:slurmrestapi_dbv0_0_38_association_default(),
       'flags' => list(),
       'max' => slurmrestapi_dbv0_0_38_association_max:slurmrestapi_dbv0_0_38_association_max(),
       'min' => slurmrestapi_dbv0_0_38_association_min:slurmrestapi_dbv0_0_38_association_min(),
       'parent_account' => binary(),
       'partition' => binary(),
       'priority' => integer(),
       'shares_raw' => integer(),
       'usage' => slurmrestapi_dbv0_0_38_association_usage:slurmrestapi_dbv0_0_38_association_usage(),
       'user' => binary(),
       'QOS' => list()
     }.

encode(#{ 'account' := Account,
          'cluster' := Cluster,
          'default' := Default,
          'flags' := Flags,
          'max' := Max,
          'min' := Min,
          'parent_account' := ParentAccount,
          'partition' := Partition,
          'priority' := Priority,
          'shares_raw' := SharesRaw,
          'usage' := Usage,
          'user' := User,
          'QOS' := QOS
        }) ->
    #{ 'account' => Account,
       'cluster' => Cluster,
       'default' => Default,
       'flags' => Flags,
       'max' => Max,
       'min' => Min,
       'parent_account' => ParentAccount,
       'partition' => Partition,
       'priority' => Priority,
       'shares_raw' => SharesRaw,
       'usage' => Usage,
       'user' => User,
       'QOS' => QOS
     }.
