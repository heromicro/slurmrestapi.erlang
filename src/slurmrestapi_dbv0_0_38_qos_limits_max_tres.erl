-module(slurmrestapi_dbv0_0_38_qos_limits_max_tres).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_qos_limits_max_tres/0]).

-type slurmrestapi_dbv0_0_38_qos_limits_max_tres() ::
    #{ 'minutes' => slurmrestapi_dbv0_0_38_qos_limits_max_tres_minutes:slurmrestapi_dbv0_0_38_qos_limits_max_tres_minutes(),
       'per' => slurmrestapi_dbv0_0_38_qos_limits_max_tres_per:slurmrestapi_dbv0_0_38_qos_limits_max_tres_per()
     }.

encode(#{ 'minutes' := Minutes,
          'per' := Per
        }) ->
    #{ 'minutes' => Minutes,
       'per' => Per
     }.
