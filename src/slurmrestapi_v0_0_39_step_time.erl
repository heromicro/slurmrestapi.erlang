-module(slurmrestapi_v0_0_39_step_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_time/0]).

-type slurmrestapi_v0_0_39_step_time() ::
    #{ 'user' => slurmrestapi_v0_0_39_step_time_user:slurmrestapi_v0_0_39_step_time_user()
     }.

encode(#{ 'user' := User
        }) ->
    #{ 'user' => User
     }.
