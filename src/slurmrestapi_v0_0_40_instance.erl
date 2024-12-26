-module(slurmrestapi_v0_0_40_instance).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_instance/0]).

-type slurmrestapi_v0_0_40_instance() ::
    #{ 'cluster' => binary(),
       'extra' => binary(),
       'instance_id' => binary(),
       'instance_type' => binary(),
       'node_name' => binary(),
       'time' => slurmrestapi_v0_0_40_instance_time:slurmrestapi_v0_0_40_instance_time()
     }.

encode(#{ 'cluster' := Cluster,
          'extra' := Extra,
          'instance_id' := InstanceId,
          'instance_type' := InstanceType,
          'node_name' := NodeName,
          'time' := Time
        }) ->
    #{ 'cluster' => Cluster,
       'extra' => Extra,
       'instance_id' => InstanceId,
       'instance_type' => InstanceType,
       'node_name' => NodeName,
       'time' => Time
     }.
