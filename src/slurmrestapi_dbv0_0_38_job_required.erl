-module(slurmrestapi_dbv0_0_38_job_required).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_required/0]).

-type slurmrestapi_dbv0_0_38_job_required() ::
    #{ 'CPUs' => integer(),
       'memory' => integer()
     }.

encode(#{ 'CPUs' := CPUs,
          'memory' := Memory
        }) ->
    #{ 'CPUs' => CPUs,
       'memory' => Memory
     }.
