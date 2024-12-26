-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_array).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_array/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_array() ::
    #{ 'job_id' => integer(),
       'limits' => slurmrestapi_v0_0_40_job_array_limits:slurmrestapi_v0_0_40_job_array_limits(),
       'task_id' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_task_id:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_task_id(),
       'task' => binary()
     }.

encode(#{ 'job_id' := JobId,
          'limits' := Limits,
          'task_id' := TaskId,
          'task' := Task
        }) ->
    #{ 'job_id' => JobId,
       'limits' => Limits,
       'task_id' => TaskId,
       'task' => Task
     }.
