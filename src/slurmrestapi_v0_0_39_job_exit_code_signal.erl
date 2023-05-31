-module(slurmrestapi_v0_0_39_job_exit_code_signal).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_exit_code_signal/0]).

-type slurmrestapi_v0_0_39_job_exit_code_signal() ::
    #{ 'signal_id' => integer(),
       'name' => binary()
     }.

encode(#{ 'signal_id' := SignalId,
          'name' := Name
        }) ->
    #{ 'signal_id' => SignalId,
       'name' => Name
     }.
