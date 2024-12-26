-module(slurmrestapi_v0_0_40_assoc_max_tres_minutes).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_assoc_max_tres_minutes/0]).

-type slurmrestapi_v0_0_40_assoc_max_tres_minutes() ::
    #{ 'total' => list(),
       'per' => slurmrestapi_v0_0_40_qos_limits_min_tres_per:slurmrestapi_v0_0_40_qos_limits_min_tres_per()
     }.

encode(#{ 'total' := Total,
          'per' := Per
        }) ->
    #{ 'total' => Total,
       'per' => Per
     }.
