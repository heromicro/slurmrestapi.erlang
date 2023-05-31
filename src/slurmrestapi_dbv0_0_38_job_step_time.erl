-module(slurmrestapi_dbv0_0_38_job_step_time).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_step_time/0]).

-type slurmrestapi_dbv0_0_38_job_step_time() ::
    #{ 'elapsed' => integer(),
       'End_' => integer(),
       'start' => integer(),
       'suspended' => integer(),
       'system' => slurmrestapi_dbv0_0_38_job_time_system:slurmrestapi_dbv0_0_38_job_time_system(),
       'total' => slurmrestapi_dbv0_0_38_job_time_total:slurmrestapi_dbv0_0_38_job_time_total(),
       'user' => slurmrestapi_dbv0_0_38_job_time_user:slurmrestapi_dbv0_0_38_job_time_user()
     }.

encode(#{ 'elapsed' := Elapsed,
          'End_' := End,
          'start' := Start,
          'suspended' := Suspended,
          'system' := System,
          'total' := Total,
          'user' := User
        }) ->
    #{ 'elapsed' => Elapsed,
       'end' => End,
       'start' => Start,
       'suspended' => Suspended,
       'system' => System,
       'total' => Total,
       'user' => User
     }.
