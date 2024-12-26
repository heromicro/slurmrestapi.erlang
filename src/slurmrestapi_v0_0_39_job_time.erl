-module(slurmrestapi_v0_0_39_job_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_time/0]).

-type slurmrestapi_v0_0_39_job_time() ::
    #{ 'elapsed' => integer(),
       'eligible' => integer(),
       'End_' => integer(),
       'start' => integer(),
       'submission' => integer(),
       'suspended' => integer(),
       'system' => slurmrestapi_v0_0_39_job_time_system:slurmrestapi_v0_0_39_job_time_system(),
       'limit' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'total' => slurmrestapi_v0_0_39_job_time_system:slurmrestapi_v0_0_39_job_time_system(),
       'user' => slurmrestapi_v0_0_39_job_time_system:slurmrestapi_v0_0_39_job_time_system()
     }.

encode(#{ 'elapsed' := Elapsed,
          'eligible' := Eligible,
          'End_' := End,
          'start' := Start,
          'submission' := Submission,
          'suspended' := Suspended,
          'system' := System,
          'limit' := Limit,
          'total' := Total,
          'user' := User
        }) ->
    #{ 'elapsed' => Elapsed,
       'eligible' => Eligible,
       'end' => End,
       'start' => Start,
       'submission' => Submission,
       'suspended' => Suspended,
       'system' => System,
       'limit' => Limit,
       'total' => Total,
       'user' => User
     }.
