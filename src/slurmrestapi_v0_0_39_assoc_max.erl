-module(slurmrestapi_v0_0_39_assoc_max).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max/0]).

-type slurmrestapi_v0_0_39_assoc_max() ::
    #{ 'jobs' => slurmrestapi_v0_0_39_assoc_max_jobs:slurmrestapi_v0_0_39_assoc_max_jobs()
     }.

encode(#{ 'jobs' := Jobs
        }) ->
    #{ 'jobs' => Jobs
     }.
