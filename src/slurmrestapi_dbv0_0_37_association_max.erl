-module(slurmrestapi_dbv0_0_37_association_max).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_max/0]).

-type slurmrestapi_dbv0_0_37_association_max() ::
    #{ 'jobs' => slurmrestapi_dbv0_0_37_association_max_jobs:slurmrestapi_dbv0_0_37_association_max_jobs(),
       'per' => slurmrestapi_dbv0_0_37_association_max_per:slurmrestapi_dbv0_0_37_association_max_per(),
       'tres' => slurmrestapi_dbv0_0_37_association_max_tres:slurmrestapi_dbv0_0_37_association_max_tres()
     }.

encode(#{ 'jobs' := Jobs,
          'per' := Per,
          'tres' := Tres
        }) ->
    #{ 'jobs' => Jobs,
       'per' => Per,
       'tres' => Tres
     }.
