-module(slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner/0]).

-type slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner() ::
    #{ 'error' => slurmrestapi_v0_0_40_kill_jobs_resp_job_error:slurmrestapi_v0_0_40_kill_jobs_resp_job_error(),
       'step_id' := binary(),
       'job_id' := slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id:slurmrestapi_v0_0_41_openapi_kill_jobs_resp_status_inner_job_id(),
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
