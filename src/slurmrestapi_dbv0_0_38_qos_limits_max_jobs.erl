-module(slurmrestapi_dbv0_0_38_qos_limits_max_jobs).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_qos_limits_max_jobs/0]).

-type slurmrestapi_dbv0_0_38_qos_limits_max_jobs() ::
    #{ 'active_jobs' => slurmrestapi_dbv0_0_38_qos_limits_max_jobs_active_jobs:slurmrestapi_dbv0_0_38_qos_limits_max_jobs_active_jobs()
     }.

encode(#{ 'active_jobs' := ActiveJobs
        }) ->
    #{ 'active_jobs' => ActiveJobs
     }.
