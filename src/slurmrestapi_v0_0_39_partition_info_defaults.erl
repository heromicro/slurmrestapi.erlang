-module(slurmrestapi_v0_0_39_partition_info_defaults).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_defaults/0]).

-type slurmrestapi_v0_0_39_partition_info_defaults() ::
    #{ 'job' => binary()
     }.

encode(#{ 'job' := Job
        }) ->
    #{ 'job' => Job
     }.
