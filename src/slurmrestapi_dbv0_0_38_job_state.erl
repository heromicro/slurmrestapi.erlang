-module(slurmrestapi_dbv0_0_38_job_state).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_state/0]).

-type slurmrestapi_dbv0_0_38_job_state() ::
    #{ 'current' => binary(),
       'reason' => binary()
     }.

encode(#{ 'current' := Current,
          'reason' := Reason
        }) ->
    #{ 'current' => Current,
       'reason' => Reason
     }.
