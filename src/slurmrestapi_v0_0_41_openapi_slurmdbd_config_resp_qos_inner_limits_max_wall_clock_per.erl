-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per() ::
    #{ 'qos' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_qos:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_qos(),
       'job' => slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_job:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_wall_clock_per_job()
     }.

encode(#{ 'qos' := Qos,
          'job' := Job
        }) ->
    #{ 'qos' => Qos,
       'job' => Job
     }.
