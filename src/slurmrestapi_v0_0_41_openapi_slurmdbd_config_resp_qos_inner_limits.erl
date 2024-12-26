-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits() ::
    #{ 'grace_time' => integer(),
       'max' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max(),
       'factor' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_factor:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_factor(),
       'min' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_min()
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
