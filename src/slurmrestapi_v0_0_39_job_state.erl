-module(slurmrestapi_v0_0_39_job_state).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_state/0]).

-type slurmrestapi_v0_0_39_job_state() ::
    #{ 'reason' => binary()
     }.

encode(#{ 'reason' := Reason
        }) ->
    #{ 'reason' => Reason
     }.
