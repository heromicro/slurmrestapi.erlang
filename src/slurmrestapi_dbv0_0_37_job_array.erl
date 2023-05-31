-module(slurmrestapi_dbv0_0_37_job_array).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_array/0]).

-type slurmrestapi_dbv0_0_37_job_array() ::
    #{ 'job_id' => integer(),
       'limits' => slurmrestapi_dbv0_0_37_job_array_limits:slurmrestapi_dbv0_0_37_job_array_limits(),
       'task' => binary(),
       'task_id' => integer()
     }.

encode(#{ 'job_id' := JobId,
          'limits' := Limits,
          'task' := Task,
          'task_id' := TaskId
        }) ->
    #{ 'job_id' => JobId,
       'limits' => Limits,
       'task' => Task,
       'task_id' => TaskId
     }.
