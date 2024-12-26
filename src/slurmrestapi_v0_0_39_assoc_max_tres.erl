-module(slurmrestapi_v0_0_39_assoc_max_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_tres/0]).

-type slurmrestapi_v0_0_39_assoc_max_tres() ::
    #{ 'total' => list(),
       'minutes' => slurmrestapi_v0_0_39_assoc_max_tres_minutes:slurmrestapi_v0_0_39_assoc_max_tres_minutes(),
       'group' => slurmrestapi_v0_0_39_assoc_max_tres_group:slurmrestapi_v0_0_39_assoc_max_tres_group(),
       'per' => slurmrestapi_v0_0_39_assoc_max_tres_per:slurmrestapi_v0_0_39_assoc_max_tres_per()
     }.

encode(#{ 'total' := Total,
          'minutes' := Minutes,
          'group' := Group,
          'per' := Per
        }) ->
    #{ 'total' => Total,
       'minutes' => Minutes,
       'group' => Group,
       'per' => Per
     }.
