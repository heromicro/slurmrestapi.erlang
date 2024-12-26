-module(slurmrestapi_v0_0_40_assoc).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc/0]).

-type slurmrestapi_v0_0_40_assoc() ::
    #{ 'accounting' => list(),
       'account' => binary(),
       'cluster' => binary(),
       'comment' => binary(),
       'default' => slurmrestapi_v0_0_40_assoc_default:slurmrestapi_v0_0_40_assoc_default(),
       'flags' => list(),
       'max' => slurmrestapi_v0_0_40_assoc_max:slurmrestapi_v0_0_40_assoc_max(),
       'id' => slurmrestapi_v0_0_40_assoc_short:slurmrestapi_v0_0_40_assoc_short(),
       'is_default' => boolean(),
       'lineage' => binary(),
       'min' => slurmrestapi_v0_0_40_assoc_min:slurmrestapi_v0_0_40_assoc_min(),
       'parent_account' => binary(),
       'partition' => binary(),
       'priority' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'qos' => list(),
       'shares_raw' => integer(),
       'user' := binary()
     }.

encode(#{ 'accounting' := Accounting,
          'account' := Account,
          'cluster' := Cluster,
          'comment' := Comment,
          'default' := Default,
          'flags' := Flags,
          'max' := Max,
          'id' := Id,
          'is_default' := IsDefault,
          'lineage' := Lineage,
          'min' := Min,
          'parent_account' := ParentAccount,
          'partition' := Partition,
          'priority' := Priority,
          'qos' := Qos,
          'shares_raw' := SharesRaw,
          'user' := User
        }) ->
    #{ 'accounting' => Accounting,
       'account' => Account,
       'cluster' => Cluster,
       'comment' => Comment,
       'default' => Default,
       'flags' => Flags,
       'max' => Max,
       'id' => Id,
       'is_default' => IsDefault,
       'lineage' => Lineage,
       'min' => Min,
       'parent_account' => ParentAccount,
       'partition' => Partition,
       'priority' => Priority,
       'qos' => Qos,
       'shares_raw' => SharesRaw,
       'user' => User
     }.
