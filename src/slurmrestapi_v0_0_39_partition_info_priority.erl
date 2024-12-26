-module(slurmrestapi_v0_0_39_partition_info_priority).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_priority/0]).

-type slurmrestapi_v0_0_39_partition_info_priority() ::
    #{ 'job_factor' => integer(),
       'tier' => integer()
     }.

encode(#{ 'job_factor' := JobFactor,
          'tier' := Tier
        }) ->
    #{ 'job_factor' => JobFactor,
       'tier' => Tier
     }.
