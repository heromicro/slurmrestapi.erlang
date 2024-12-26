-module(slurmrestapi_v0_0_40_kill_jobs_resp_job).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_kill_jobs_resp_job/0]).

-type slurmrestapi_v0_0_40_kill_jobs_resp_job() ::
    #{ 'error' => slurmrestapi_v0_0_40_kill_jobs_resp_job_error:slurmrestapi_v0_0_40_kill_jobs_resp_job_error(),
       'step_id' := binary(),
       'job_id' := slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'federation' => slurmrestapi_v0_0_40_kill_jobs_resp_job_federation:slurmrestapi_v0_0_40_kill_jobs_resp_job_federation()
     }.

encode(#{ 'error' := Error,
          'step_id' := StepId,
          'job_id' := JobId,
          'federation' := Federation
        }) ->
    #{ 'error' => Error,
       'step_id' => StepId,
       'job_id' => JobId,
       'federation' => Federation
     }.
