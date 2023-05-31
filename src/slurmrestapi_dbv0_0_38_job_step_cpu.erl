-module(slurmrestapi_dbv0_0_38_job_step_cpu).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_step_cpu/0]).

-type slurmrestapi_dbv0_0_38_job_step_cpu() ::
    #{ 'requested_frequency' => slurmrestapi_dbv0_0_38_job_step_cpu_requested_frequency:slurmrestapi_dbv0_0_38_job_step_cpu_requested_frequency(),
       'governor' => list()
     }.

encode(#{ 'requested_frequency' := RequestedFrequency,
          'governor' := Governor
        }) ->
    #{ 'requested_frequency' => RequestedFrequency,
       'governor' => Governor
     }.
