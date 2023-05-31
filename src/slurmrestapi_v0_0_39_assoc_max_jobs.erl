-module(slurmrestapi_v0_0_39_assoc_max_jobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_jobs/0]).

-type slurmrestapi_v0_0_39_assoc_max_jobs() ::
    #{ 'per' => slurmrestapi_v0_0_39_assoc_max_jobs_per:slurmrestapi_v0_0_39_assoc_max_jobs_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
