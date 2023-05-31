-module(slurmrestapi_dbv0_0_38_job_time).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_time/0]).

-type slurmrestapi_dbv0_0_38_job_time() ::
    #{ 'elapsed' => integer(),
       'eligible' => integer(),
       'End_' => integer(),
       'start' => integer(),
       'submission' => integer(),
       'suspended' => integer(),
       'system' => slurmrestapi_dbv0_0_38_job_time_system:slurmrestapi_dbv0_0_38_job_time_system(),
       'total' => slurmrestapi_dbv0_0_38_job_time_total:slurmrestapi_dbv0_0_38_job_time_total(),
       'user' => slurmrestapi_dbv0_0_38_job_time_user:slurmrestapi_dbv0_0_38_job_time_user(),
       'limit' => integer()
     }.

encode(#{ 'elapsed' := Elapsed,
          'eligible' := Eligible,
          'End_' := End,
          'start' := Start,
          'submission' := Submission,
          'suspended' := Suspended,
          'system' := System,
          'total' := Total,
          'user' := User,
          'limit' := Limit
        }) ->
    #{ 'elapsed' => Elapsed,
       'eligible' => Eligible,
       'end' => End,
       'start' => Start,
       'submission' => Submission,
       'suspended' => Suspended,
       'system' => System,
       'total' => Total,
       'user' => User,
       'limit' => Limit
     }.
