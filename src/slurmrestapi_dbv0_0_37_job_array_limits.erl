-module(slurmrestapi_dbv0_0_37_job_array_limits).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_array_limits/0]).

-type slurmrestapi_dbv0_0_37_job_array_limits() ::
    #{ 'max' => slurmrestapi_dbv0_0_37_job_array_limits_max:slurmrestapi_dbv0_0_37_job_array_limits_max()
     }.

encode(#{ 'max' := Max
        }) ->
    #{ 'max' => Max
     }.
