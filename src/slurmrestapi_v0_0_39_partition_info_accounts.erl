-module(slurmrestapi_v0_0_39_partition_info_accounts).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_accounts/0]).

-type slurmrestapi_v0_0_39_partition_info_accounts() ::
    #{ 'deny' => binary()
     }.

encode(#{ 'deny' := Deny
        }) ->
    #{ 'deny' => Deny
     }.
