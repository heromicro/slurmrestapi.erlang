-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time() ::
    #{ 'elapsed' => integer(),
       'End_' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time_end:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time_end(),
       'start' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time_start:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_time_start(),
       'suspended' => integer(),
       'system' => slurmrestapi_v0_0_40_step_time_system:slurmrestapi_v0_0_40_step_time_system(),
       'total' => slurmrestapi_v0_0_40_step_time_total:slurmrestapi_v0_0_40_step_time_total(),
       'user' => slurmrestapi_v0_0_40_step_time_user:slurmrestapi_v0_0_40_step_time_user()
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
