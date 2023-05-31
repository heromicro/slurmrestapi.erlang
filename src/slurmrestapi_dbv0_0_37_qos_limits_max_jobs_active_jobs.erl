-module(slurmrestapi_dbv0_0_37_qos_limits_max_jobs_active_jobs).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_limits_max_jobs_active_jobs/0]).

-type slurmrestapi_dbv0_0_37_qos_limits_max_jobs_active_jobs() ::
    #{ 'per' => slurmrestapi_dbv0_0_37_qos_limits_max_jobs_active_jobs_per:slurmrestapi_dbv0_0_37_qos_limits_max_jobs_active_jobs_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
