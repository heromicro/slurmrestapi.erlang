-module(slurmrestapi_dbv0_0_37_association).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association/0]).

-type slurmrestapi_dbv0_0_37_association() ::
    #{ 'is_default' => integer(),
       'account' => binary(),
       'cluster' => binary(),
       'default' => slurmrestapi_dbv0_0_37_association_default:slurmrestapi_dbv0_0_37_association_default(),
       'flags' => list(),
       'max' => slurmrestapi_dbv0_0_37_association_max:slurmrestapi_dbv0_0_37_association_max(),
       'min' => slurmrestapi_dbv0_0_37_association_min:slurmrestapi_dbv0_0_37_association_min(),
       'parent_account' => binary(),
       'partition' => binary(),
       'priority' => integer(),
       'qos' => list(),
       'shares_raw' => integer(),
       'usage' => slurmrestapi_dbv0_0_37_association_usage:slurmrestapi_dbv0_0_37_association_usage(),
       'user' => binary()
     }.

encode(#{ 'is_default' := IsDefault,
          'account' := Account,
          'cluster' := Cluster,
          'default' := Default,
          'flags' := Flags,
          'max' := Max,
          'min' := Min,
          'parent_account' := ParentAccount,
          'partition' := Partition,
          'priority' := Priority,
          'qos' := Qos,
          'shares_raw' := SharesRaw,
          'usage' := Usage,
          'user' := User
        }) ->
    #{ 'is_default' => IsDefault,
       'account' => Account,
       'cluster' => Cluster,
       'default' => Default,
       'flags' => Flags,
       'max' => Max,
       'min' => Min,
       'parent_account' => ParentAccount,
       'partition' => Partition,
       'priority' => Priority,
       'qos' => Qos,
       'shares_raw' => SharesRaw,
       'usage' => Usage,
       'user' => User
     }.
