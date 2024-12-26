-module(slurmrestapi_v0_0_39_job_array).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_array/0]).

-type slurmrestapi_v0_0_39_job_array() ::
    #{ 'job_id' => integer(),
       'limits' => slurmrestapi_v0_0_39_job_array_limits:slurmrestapi_v0_0_39_job_array_limits(),
       'task_id' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
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
