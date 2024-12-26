-module(slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per/0]).

-type slurmrestapi_v0_0_39_qos_limits_max_wall_clock_per() ::
    #{ 'qos' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'job' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'qos' := Qos,
          'job' := Job
        }) ->
    #{ 'qos' => Qos,
       'job' => Job
     }.
