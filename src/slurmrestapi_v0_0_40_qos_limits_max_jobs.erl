-module(slurmrestapi_v0_0_40_qos_limits_max_jobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max_jobs/0]).

-type slurmrestapi_v0_0_40_qos_limits_max_jobs() ::
    #{ 'active_jobs' => slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs:slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs(),
       'per' => slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs_per:slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs_per()
     }.

encode(#{ 'active_jobs' := ActiveJobs,
          'per' := Per
        }) ->
    #{ 'active_jobs' => ActiveJobs,
       'per' => Per
     }.
