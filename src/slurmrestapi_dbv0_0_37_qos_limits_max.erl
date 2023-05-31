-module(slurmrestapi_dbv0_0_37_qos_limits_max).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_limits_max/0]).

-type slurmrestapi_dbv0_0_37_qos_limits_max() ::
    #{ 'wall_clock' => slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock:slurmrestapi_dbv0_0_37_qos_limits_max_wall_clock(),
       'jobs' => slurmrestapi_dbv0_0_37_qos_limits_max_jobs:slurmrestapi_dbv0_0_37_qos_limits_max_jobs(),
       'accruing' => slurmrestapi_dbv0_0_37_qos_limits_max_accruing:slurmrestapi_dbv0_0_37_qos_limits_max_accruing(),
       'tres' => slurmrestapi_dbv0_0_37_qos_limits_max_tres:slurmrestapi_dbv0_0_37_qos_limits_max_tres()
     }.

encode(#{ 'wall_clock' := WallClock,
          'jobs' := Jobs,
          'accruing' := Accruing,
          'tres' := Tres
        }) ->
    #{ 'wall_clock' => WallClock,
       'jobs' => Jobs,
       'accruing' => Accruing,
       'tres' => Tres
     }.
