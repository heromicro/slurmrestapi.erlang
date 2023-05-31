-module(slurmrestapi_dbv0_0_37_association_max_jobs).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_max_jobs/0]).

-type slurmrestapi_dbv0_0_37_association_max_jobs() ::
    #{ 'active' => integer(),
       'accruing' => integer(),
       'total' => integer(),
       'per' => slurmrestapi_dbv0_0_37_association_max_jobs_per:slurmrestapi_dbv0_0_37_association_max_jobs_per()
     }.

encode(#{ 'active' := Active,
          'accruing' := Accruing,
          'total' := Total,
          'per' := Per
        }) ->
    #{ 'active' => Active,
       'accruing' => Accruing,
       'total' => Total,
       'per' => Per
     }.
