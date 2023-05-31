-module(slurmrestapi_dbv0_0_37_association_max_tres).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_max_tres/0]).

-type slurmrestapi_dbv0_0_37_association_max_tres() ::
    #{ 'group' => slurmrestapi_dbv0_0_37_association_max_tres_group:slurmrestapi_dbv0_0_37_association_max_tres_group(),
       'per' => slurmrestapi_dbv0_0_37_association_max_tres_per:slurmrestapi_dbv0_0_37_association_max_tres_per(),
       'total' => list(),
       'minutes' => slurmrestapi_dbv0_0_37_association_max_tres_minutes:slurmrestapi_dbv0_0_37_association_max_tres_minutes()
     }.

encode(#{ 'group' := Group,
          'per' := Per,
          'total' := Total,
          'minutes' := Minutes
        }) ->
    #{ 'group' => Group,
       'per' => Per,
       'total' => Total,
       'minutes' => Minutes
     }.
