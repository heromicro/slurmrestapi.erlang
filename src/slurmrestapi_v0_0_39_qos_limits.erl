-module(slurmrestapi_v0_0_39_qos_limits).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits/0]).

-type slurmrestapi_v0_0_39_qos_limits() ::
    #{ 'grace_time' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'max' => slurmrestapi_v0_0_39_qos_limits_max:slurmrestapi_v0_0_39_qos_limits_max(),
       'factor' => float(),
       'min' => slurmrestapi_v0_0_39_qos_limits_min:slurmrestapi_v0_0_39_qos_limits_min()
     }.

encode(#{ 'grace_time' := GraceTime,
          'max' := Max,
          'factor' := Factor,
          'min' := Min
        }) ->
    #{ 'grace_time' => GraceTime,
       'max' => Max,
       'factor' => Factor,
       'min' => Min
     }.
