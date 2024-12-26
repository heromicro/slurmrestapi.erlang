-module(slurmrestapi_v0_0_40_job_array_limits).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_job_array_limits/0]).

-type slurmrestapi_v0_0_40_job_array_limits() ::
    #{ 'max' => slurmrestapi_v0_0_40_job_array_limits_max:slurmrestapi_v0_0_40_job_array_limits_max()
     }.

encode(#{ 'max' := Max
        }) ->
    #{ 'max' => Max
     }.
