-module(slurmrestapi_v0_0_39_job_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_time/0]).

-type slurmrestapi_v0_0_39_job_time() ::
    #{ 'user' => slurmrestapi_v0_0_39_job_time_user:slurmrestapi_v0_0_39_job_time_user()
     }.

encode(#{ 'user' := User
        }) ->
    #{ 'user' => User
     }.
