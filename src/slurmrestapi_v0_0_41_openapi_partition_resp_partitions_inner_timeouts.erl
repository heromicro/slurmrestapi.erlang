-module(slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts/0]).

-type slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts() ::
    #{ 'resume' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_resume(),
       'suspend' => slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend:slurmrestapi_v0_0_41_openapi_partition_resp_partitions_inner_timeouts_suspend()
     }.

encode(#{ 'resume' := Resume,
          'suspend' := Suspend
        }) ->
    #{ 'resume' => Resume,
       'suspend' => Suspend
     }.
