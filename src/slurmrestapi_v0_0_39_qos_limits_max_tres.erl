-module(slurmrestapi_v0_0_39_qos_limits_max_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits_max_tres/0]).

-type slurmrestapi_v0_0_39_qos_limits_max_tres() ::
    #{ 'total' => list(),
       'minutes' => slurmrestapi_v0_0_39_qos_limits_max_tres_minutes:slurmrestapi_v0_0_39_qos_limits_max_tres_minutes(),
       'per' => slurmrestapi_v0_0_39_qos_limits_max_tres_per:slurmrestapi_v0_0_39_qos_limits_max_tres_per()
     }.

encode(#{ 'total' := Total,
          'minutes' := Minutes,
          'per' := Per
        }) ->
    #{ 'total' => Total,
       'minutes' => Minutes,
       'per' => Per
     }.
