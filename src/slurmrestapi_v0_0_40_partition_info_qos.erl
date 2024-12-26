-module(slurmrestapi_v0_0_40_partition_info_qos).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_qos/0]).

-type slurmrestapi_v0_0_40_partition_info_qos() ::
    #{ 'allowed' => binary(),
       'deny' => binary(),
       'assigned' => binary()
     }.

encode(#{ 'allowed' := Allowed,
          'deny' := Deny,
          'assigned' := Assigned
        }) ->
    #{ 'allowed' => Allowed,
       'deny' => Deny,
       'assigned' => Assigned
     }.
