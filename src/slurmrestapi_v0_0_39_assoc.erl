-module(slurmrestapi_v0_0_39_assoc).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc/0]).

-type slurmrestapi_v0_0_39_assoc() ::
    #{ 'account' => binary(),
       'cluster' => binary(),
       'default' => slurmrestapi_v0_0_39_assoc_default:slurmrestapi_v0_0_39_assoc_default(),
       'flags' => list(),
       'max' => slurmrestapi_v0_0_39_assoc_max:slurmrestapi_v0_0_39_assoc_max(),
       'is_default' => boolean(),
       'min' => slurmrestapi_v0_0_39_assoc_min:slurmrestapi_v0_0_39_assoc_min(),
       'parent_account' => binary(),
       'partition' => binary(),
       'priority' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'qos' => list(),
       'shares_raw' => integer(),
       'usage' => slurmrestapi_v0_0_39_assoc_usage:slurmrestapi_v0_0_39_assoc_usage(),
       'user' := binary()
     }.

encode(#{ 'account' := Account,
          'cluster' := Cluster,
          'default' := Default,
          'flags' := Flags,
          'max' := Max,
          'is_default' := IsDefault,
          'min' := Min,
          'parent_account' := ParentAccount,
          'partition' := Partition,
          'priority' := Priority,
          'qos' := Qos,
          'shares_raw' := SharesRaw,
          'usage' := Usage,
          'user' := User
        }) ->
    #{ 'account' => Account,
       'cluster' => Cluster,
       'default' => Default,
       'flags' => Flags,
       'max' => Max,
       'is_default' => IsDefault,
       'min' => Min,
       'parent_account' => ParentAccount,
       'partition' => Partition,
       'priority' => Priority,
       'qos' => Qos,
       'shares_raw' => SharesRaw,
       'usage' => Usage,
       'user' => User
     }.
