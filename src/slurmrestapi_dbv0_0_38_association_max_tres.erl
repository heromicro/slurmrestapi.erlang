-module(slurmrestapi_dbv0_0_38_association_max_tres).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_association_max_tres/0]).

-type slurmrestapi_dbv0_0_38_association_max_tres() ::
    #{ 'per' => slurmrestapi_dbv0_0_38_association_max_tres_per:slurmrestapi_dbv0_0_38_association_max_tres_per(),
       'total' => list(),
       'minutes' => slurmrestapi_dbv0_0_38_association_max_tres_minutes:slurmrestapi_dbv0_0_38_association_max_tres_minutes()
     }.

encode(#{ 'per' := Per,
          'total' := Total,
          'minutes' := Minutes
        }) ->
    #{ 'per' => Per,
       'total' => Total,
       'minutes' => Minutes
     }.
