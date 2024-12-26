-module(slurmrestapi_v0_0_40_qos_limits_max_active_jobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max_active_jobs/0]).

-type slurmrestapi_v0_0_40_qos_limits_max_active_jobs() ::
    #{ 'accruing' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'count' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val()
     }.

encode(#{ 'accruing' := Accruing,
          'count' := Count
        }) ->
    #{ 'accruing' => Accruing,
       'count' => Count
     }.
