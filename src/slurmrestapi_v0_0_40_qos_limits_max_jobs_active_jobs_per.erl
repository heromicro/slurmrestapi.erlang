-module(slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs_per/0]).

-type slurmrestapi_v0_0_40_qos_limits_max_jobs_active_jobs_per() ::
    #{ 'account' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'user' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val()
     }.

encode(#{ 'account' := Account,
          'user' := User
        }) ->
    #{ 'account' => Account,
       'user' => User
     }.
