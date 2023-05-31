-module(slurmrestapi_dbv0_0_38_association_max_jobs).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_association_max_jobs/0]).

-type slurmrestapi_dbv0_0_38_association_max_jobs() ::
    #{ 'per' => slurmrestapi_dbv0_0_38_association_max_jobs_per:slurmrestapi_dbv0_0_38_association_max_jobs_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
