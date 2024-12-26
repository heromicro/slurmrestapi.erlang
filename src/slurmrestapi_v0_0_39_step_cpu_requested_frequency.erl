-module(slurmrestapi_v0_0_39_step_cpu_requested_frequency).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_cpu_requested_frequency/0]).

-type slurmrestapi_v0_0_39_step_cpu_requested_frequency() ::
    #{ 'min' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'max' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'min' := Min,
          'max' := Max
        }) ->
    #{ 'min' => Min,
       'max' => Max
     }.
