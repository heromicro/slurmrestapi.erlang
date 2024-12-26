-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner() ::
    #{ 'accounting' => list(),
       'account' => binary(),
       'cluster' => binary(),
       'comment' => binary(),
       'default' => slurmrestapi_v0_0_40_assoc_default:slurmrestapi_v0_0_40_assoc_default(),
       'flags' => list(),
       'max' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_max(),
       'id' => integer(),
       'is_default' => boolean(),
       'lineage' => binary(),
       'min' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_min(),
       'parent_account' => binary(),
       'partition' => binary(),
       'priority' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_associations_inner_priority(),
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
