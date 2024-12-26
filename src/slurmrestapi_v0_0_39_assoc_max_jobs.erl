-module(slurmrestapi_v0_0_39_assoc_max_jobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_jobs/0]).

-type slurmrestapi_v0_0_39_assoc_max_jobs() ::
    #{ 'per' => slurmrestapi_v0_0_39_assoc_max_jobs_per:slurmrestapi_v0_0_39_assoc_max_jobs_per(),
       'active' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'accruing' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'total' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'per' := Per,
          'active' := Active,
          'accruing' := Accruing,
          'total' := Total
        }) ->
    #{ 'per' => Per,
       'active' => Active,
       'accruing' => Accruing,
       'total' => Total
     }.
