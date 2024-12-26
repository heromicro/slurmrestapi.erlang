-module(slurmrestapi_v0_0_40_qos_limits_max).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max/0]).

-type slurmrestapi_v0_0_40_qos_limits_max() ::
    #{ 'active_jobs' => slurmrestapi_v0_0_40_qos_limits_max_active_jobs:slurmrestapi_v0_0_40_qos_limits_max_active_jobs(),
       'tres' => slurmrestapi_v0_0_40_qos_limits_max_tres:slurmrestapi_v0_0_40_qos_limits_max_tres(),
       'wall_clock' => slurmrestapi_v0_0_40_qos_limits_max_wall_clock:slurmrestapi_v0_0_40_qos_limits_max_wall_clock(),
       'jobs' => slurmrestapi_v0_0_40_qos_limits_max_jobs:slurmrestapi_v0_0_40_qos_limits_max_jobs(),
       'accruing' => slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs:slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs()
     }.

encode(#{ 'active_jobs' := ActiveJobs,
          'tres' := Tres,
          'wall_clock' := WallClock,
          'jobs' := Jobs,
          'accruing' := Accruing
        }) ->
    #{ 'active_jobs' => ActiveJobs,
       'tres' => Tres,
       'wall_clock' => WallClock,
       'jobs' => Jobs,
       'accruing' => Accruing
     }.
