-module(slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe/0]).

-type slurmrestapi_v0_0_40_partition_info_maximums_oversubscribe() ::
    #{ 'jobs' => integer(),
       'flags' => list()
     }.

encode(#{ 'jobs' := Jobs,
          'flags' := Flags
        }) ->
    #{ 'jobs' => Jobs,
       'flags' => Flags
     }.
