-module(slurmrestapi_dbv0_0_37_association_max_tres_minutes).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_max_tres_minutes/0]).

-type slurmrestapi_dbv0_0_37_association_max_tres_minutes() ::
    #{ 'per' => slurmrestapi_dbv0_0_37_association_max_tres_minutes_per:slurmrestapi_dbv0_0_37_association_max_tres_minutes_per(),
       'total' => list()
     }.

encode(#{ 'per' := Per,
          'total' := Total
        }) ->
    #{ 'per' => Per,
       'total' => Total
     }.
