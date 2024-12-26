-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time() ::
    #{ 'elapsed' => integer(),
       'eligible' => integer(),
       'End_' => integer(),
       'planned' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time_planned:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_time_planned(),
       'start' => integer(),
       'submission' => integer(),
       'suspended' => integer(),
       'system' => slurmrestapi_v0_0_40_job_time_system:slurmrestapi_v0_0_40_job_time_system(),
       'limit' => slurmrestapi_v0_0_41_job_desc_msg_time_limit:slurmrestapi_v0_0_41_job_desc_msg_time_limit(),
       'total' => slurmrestapi_v0_0_40_job_time_total:slurmrestapi_v0_0_40_job_time_total(),
       'user' => slurmrestapi_v0_0_40_job_time_user:slurmrestapi_v0_0_40_job_time_user()
     }.

encode(#{ 'elapsed' := Elapsed,
          'eligible' := Eligible,
          'End_' := End,
          'planned' := Planned,
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
       'planned' => Planned,
       'start' => Start,
       'submission' => Submission,
       'suspended' => Suspended,
       'system' => System,
       'limit' => Limit,
       'total' => Total,
       'user' => User
     }.
