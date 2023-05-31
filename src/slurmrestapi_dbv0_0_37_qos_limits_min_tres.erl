-module(slurmrestapi_dbv0_0_37_qos_limits_min_tres).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_limits_min_tres/0]).

-type slurmrestapi_dbv0_0_37_qos_limits_min_tres() ::
    #{ 'per' => slurmrestapi_dbv0_0_37_qos_limits_min_tres_per:slurmrestapi_dbv0_0_37_qos_limits_min_tres_per()
     }.

encode(#{ 'per' := Per
        }) ->
    #{ 'per' => Per
     }.
