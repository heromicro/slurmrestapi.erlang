-module(slurmrestapi_v0_0_39_qos_limits_min_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_qos_limits_min_tres/0]).

-type slurmrestapi_v0_0_39_qos_limits_min_tres() ::
    #{ 'per' => slurmrestapi_v0_0_39_assoc_max_tres_minutes_per:slurmrestapi_v0_0_39_assoc_max_tres_minutes_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
