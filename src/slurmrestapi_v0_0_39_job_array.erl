-module(slurmrestapi_v0_0_39_job_array).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_array/0]).

-type slurmrestapi_v0_0_39_job_array() ::
    #{ 'task' => binary()
     }.

encode(#{ 'task' := Task
        }) ->
    #{ 'task' => Task
     }.
