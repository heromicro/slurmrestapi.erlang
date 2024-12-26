-module(slurmrestapi_v0_0_40_assoc_max).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max/0]).

-type slurmrestapi_v0_0_40_assoc_max() ::
    #{ 'jobs' => slurmrestapi_v0_0_40_assoc_max_jobs:slurmrestapi_v0_0_40_assoc_max_jobs(),
       'tres' => slurmrestapi_v0_0_40_assoc_max_tres:slurmrestapi_v0_0_40_assoc_max_tres(),
       'per' => slurmrestapi_v0_0_40_assoc_max_per:slurmrestapi_v0_0_40_assoc_max_per()
     }.

encode(#{ 'jobs' := Jobs,
          'tres' := Tres,
          'per' := Per
        }) ->
    #{ 'jobs' => Jobs,
       'tres' => Tres,
       'per' => Per
     }.
