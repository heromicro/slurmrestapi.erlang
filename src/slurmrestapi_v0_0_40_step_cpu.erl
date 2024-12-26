-module(slurmrestapi_v0_0_40_step_cpu).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_step_cpu/0]).

-type slurmrestapi_v0_0_40_step_cpu() ::
    #{ 'requested_frequency' => slurmrestapi_v0_0_40_step_cpu_requested_frequency:slurmrestapi_v0_0_40_step_cpu_requested_frequency(),
       'governor' => binary()
     }.

encode(#{ 'requested_frequency' := RequestedFrequency,
          'governor' := Governor
        }) ->
    #{ 'requested_frequency' => RequestedFrequency,
       'governor' => Governor
     }.
