-module(slurmrestapi_dbv0_0_37_job_step_cpu_requested_frequency).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step_cpu_requested_frequency/0]).

-type slurmrestapi_dbv0_0_37_job_step_cpu_requested_frequency() ::
    #{ 'min' => integer(),
       'max' => integer()
     }.

encode(#{ 'min' := Min,
          'max' := Max
        }) ->
    #{ 'min' => Min,
       'max' => Max
     }.
