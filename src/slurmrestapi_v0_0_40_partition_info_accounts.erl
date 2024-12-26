-module(slurmrestapi_v0_0_40_partition_info_accounts).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_accounts/0]).

-type slurmrestapi_v0_0_40_partition_info_accounts() ::
    #{ 'allowed' => binary(),
       'deny' => binary()
     }.

encode(#{ 'allowed' := Allowed,
          'deny' := Deny
        }) ->
    #{ 'allowed' => Allowed,
       'deny' => Deny
     }.
